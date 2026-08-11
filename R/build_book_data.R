# R Programlama Kitabı - ülke düzeyinde WDI eğitim verisi
# Yeniden üretim için: Rscript R/build_book_data.R

required <- c("WDI", "dplyr", "tidyr", "readr", "purrr", "stringr", "tibble")
missing <- required[!vapply(required, requireNamespace, logical(1), quietly = TRUE)]
if (length(missing)) stop("Önce şu paketleri kurun: ", paste(missing, collapse = ", "))

library(dplyr); library(tidyr); library(purrr); library(readr); library(tibble)
dir.create("data-raw/wdi_cache", recursive = TRUE, showWarnings = FALSE)
dir.create("data", recursive = TRUE, showWarnings = FALSE)

candidate_indicators <- tribble(
  ~indicator, ~wdi_code, ~category, ~unit, ~preferred,
  "population_total","SP.POP.TOTL","demography","people",TRUE,
  "population_female","SP.POP.TOTL.FE.IN","demography","people",TRUE,
  "population_male","SP.POP.TOTL.MA.IN","demography","people",TRUE,
  "population_growth_pct","SP.POP.GROW","demography","percent",TRUE,
  "urban_population_pct","SP.URB.TOTL.IN.ZS","demography","percent of population",TRUE,
  "fertility_rate","SP.DYN.TFRT.IN","demography","births per woman",TRUE,
  "age_dependency_ratio_pct","SP.POP.DPND","demography","percent",TRUE,
  "gdp_current_usd","NY.GDP.MKTP.CD","economy","current US$",TRUE,
  "gdp_per_capita_usd","NY.GDP.PCAP.CD","economy","current US$",TRUE,
  "gdp_growth_pct","NY.GDP.MKTP.KD.ZG","economy","annual percent",TRUE,
  "gdp_per_capita_ppp","NY.GDP.PCAP.PP.CD","economy","international $",TRUE,
  "inflation_consumer_pct","FP.CPI.TOTL.ZG","economy","annual percent",TRUE,
  "investment_gdp_pct","NE.GDI.FTOT.ZS","economy","percent of GDP",TRUE,
  "unemployment_total_pct","SL.UEM.TOTL.ZS","labour","percent, ILO modeled",TRUE,
  "unemployment_female_pct","SL.UEM.TOTL.FE.ZS","labour","percent, ILO modeled",TRUE,
  "unemployment_male_pct","SL.UEM.TOTL.MA.ZS","labour","percent, ILO modeled",TRUE,
  "employment_total_pct","SL.EMP.TOTL.SP.ZS","labour","percent, ILO modeled",TRUE,
  "labor_force_participation_pct","SL.TLF.CACT.ZS","labour","percent, ILO modeled",TRUE,
  "life_expectancy_total","SP.DYN.LE00.IN","health","years",TRUE,
  "life_expectancy_female","SP.DYN.LE00.FE.IN","health","years",TRUE,
  "life_expectancy_male","SP.DYN.LE00.MA.IN","health","years",TRUE,
  "infant_mortality_rate","SP.DYN.IMRT.IN","health","per 1,000",TRUE,
  "school_enrollment_primary_pct","SE.PRM.NENR","education","percent net",FALSE,
  "school_enrollment_secondary_pct","SE.SEC.NENR","education","percent net",FALSE,
  "school_enrollment_tertiary_pct","SE.TER.ENRR","education","percent gross",TRUE,
  "literacy_adult_pct","SE.ADT.LITR.ZS","education","percent",FALSE,
  "school_life_expectancy_years","SE.SCH.LIFE","education","years",FALSE,
  "internet_users_pct","IT.NET.USER.ZS","technology","percent",TRUE,
  "mobile_subscriptions_per_100","IT.CEL.SETS.P2","technology","per 100",TRUE,
  "co2_per_capita","EN.GHG.CO2.PC.CE.AR5","environment","metric tons CO2e",TRUE,
  "renewable_energy_pct","EG.FEC.RNEW.ZS","environment","percent",TRUE,
  "energy_use_per_capita","EG.USE.PCAP.KG.OE","environment","kg oil equivalent",FALSE,
  "electric_power_per_capita","EG.USE.ELEC.KH.PC","environment","kWh",FALSE,
  "exports_gdp_pct","NE.EXP.GNFS.ZS","trade","percent of GDP",TRUE,
  "imports_gdp_pct","NE.IMP.GNFS.ZS","trade","percent of GDP",TRUE
)

# WDI::WDI returns ISO3 country-year data; country metadata identify aggregates.
country_metadata <- WDI::WDI_data$country %>%
  transmute(country_code = iso3c, iso2_code = iso2c, country,
            region, income_group = income, lending_type = lending,
            is_country = !is.na(region) & region != "Aggregates")
real_codes <- filter(country_metadata, is_country)$country_code

raw <- WDI::WDI(country = "all", indicator = setNames(candidate_indicators$wdi_code,
  candidate_indicators$indicator), start = 1960, end = as.integer(format(Sys.Date(), "%Y")), extra = FALSE)
panel_all <- raw %>% filter(iso3c %in% real_codes) %>% rename(country_code = iso3c, year = year) %>%
  select(country, country_code, year, all_of(candidate_indicators$indicator))

long_all <- panel_all %>% pivot_longer(-c(country, country_code, year), names_to="indicator", values_to="value")
key_count <- n_distinct(interaction(panel_all$country_code, panel_all$year, drop=TRUE))
coverage <- long_all %>% group_by(indicator) %>% summarise(
  first_year=min(year[!is.na(value)]), last_year=max(year[!is.na(value)]),
  countries_covered=n_distinct(country_code[!is.na(value)]), observations=sum(!is.na(value)),
  missing_pct=100*(1-observations/key_count), .groups="drop") %>%
  left_join(candidate_indicators, by="indicator") %>%
  mutate(selected=preferred & countries_covered >= 120 & observations >= 1500)
selected <- filter(coverage, selected)$indicator

country_indicators <- panel_all %>% select(country, country_code, year, all_of(selected))
country_indicators_long <- country_indicators %>%
  pivot_longer(-c(country,country_code,year),names_to="indicator",values_to="value",values_drop_na=FALSE) %>%
  left_join(select(candidate_indicators,indicator,unit),by="indicator")

core <- intersect(selected,c("population_total","gdp_per_capita_usd","gdp_growth_pct",
  "unemployment_total_pct","inflation_consumer_pct","life_expectancy_total",
  "urban_population_pct","internet_users_pct","co2_per_capita"))
year_coverage <- country_indicators %>% filter(year >= 2018) %>% group_by(year) %>%
  summarise(across(all_of(core),~sum(!is.na(.x)),.names="coverage_{.col}"),
            mean_core_country_coverage=mean(c_across(starts_with("coverage_"))),.groups="drop")
reference_year <- year_coverage %>% arrange(desc(mean_core_country_coverage),desc(year)) %>% slice(1) %>% pull(year)
countries <- country_indicators %>% filter(year==reference_year) %>%
  left_join(select(country_metadata,country_code,region,income_group),by="country_code") %>%
  relocate(region,income_group,.after=country_code)

stopifnot(!anyDuplicated(country_indicators[c("country_code","year")]))
stopifnot(!anyDuplicated(country_indicators_long[c("country_code","year","indicator")]))
stopifnot(all(country_indicators$country_code %in% real_codes))

write_csv(country_metadata,"data/country_metadata.csv",na="")
write_csv(country_indicators,"data/country_indicators.csv",na="")
write_csv(country_indicators_long,"data/country_indicators_long.csv",na="")
write_csv(countries,"data/countries.csv",na="")
write_csv(coverage,"data/indicator_selection_report.csv",na="")
write_csv(year_coverage,"data/reference_year_coverage.csv",na="")
