> **Arşiv notu — 18 Kasım 2026.** Bu metin Part V yazılmadan **önce** hazırlanmış tarihsel bir değerlendirmedir. Bazı ifadeler (Part V'in henüz planlanması, önceki bölüm sayıları, yayın durumu ve önerilen sonraki adımlar) artık güncel değildir. Güncel kapsam ve yayın durumu için [ROADMAP](../../ROADMAP.md), [Part V planı](../../PART_V_PLAN.md) ve [v0.5.0 Release](https://github.com/MFatihTuzen/r-programlama/releases/tag/v0.5.0) kullanılmalıdır. Veri üretim betiği ve bibliyografya üzerine tespitler sonraki bakım sürecinde ayrıca doğrulanır. Eski içeriğin tamamı tarihsel izlenebilirlik için değiştirilmeden korunmuştur.

# R Programlama Kitabı · Part V öncesi değerlendirme

Part V’in önceliği, okurun **veride gördüğü örüntü ile o veriden hangi koşullarda genelleme yapabileceği arasındaki farkı** öğrenmesi olmalı. Part I–IV, veriyi hazırlamak, özetlemek ve görselleştirmek için yeterli bir temel sağlıyor. Güven aralığı ve standart hata da Part IV’te somut bir örnekle tanıtılmış. Part V’in asıl katkısı, bu kavramları veri üretiminden başlayarak örnekleme dağılımına, tahmine ve yöntemi gerekçelendirilmiş karşılaştırmalara bağlamak olacak.

## 1. Mevcut Kitabın Genel Durumu

İnceleme, `MFatihTuzen/r-programlama` deposunun yerel `b3cebb1` sürümündeki kitap içeriğine ve GitHub `main` dalının `5cb2f04` sürümündeki güncel proje belgelerine dayanıyor. İki sürüm arasındaki değişiklikler aşağıdaki beş proje belgesinin eklenmesinden oluşuyor. `_quarto.yml` içindeki 28 `.qmd` dosyasının anlatımını, R örneklerini, egzersizlerini, özetlerini ve kaynak içi etiketlerini inceledim. Teknik denetim kaynak metin ve kayıtlı veri üzerinden yapıldı. Quarto render işlemi ve R örneklerinin yeniden yürütülmesi bu incelemenin kapsamı dışındaydı. İlk inceleme salt okunur yapıldı.

| Belge | İnceleme sonucu |
|---|---|
| [`_quarto.yml`](_quarto.yml), [`README.md`](README.md) | Güncel kaynaklar. Kitapta I–IV etkin, Part V menüde yer almıyor. Çalışma dizini proje kökü, yürütme ayarı `freeze: auto`, yayın biçimi Türkçe HTML. Kaynakça ortak `references.bib` dosyasına bağlı. |
| `BOOK_GUIDE.md`, `PROJECT_CONTEXT.md`, `ROADMAP.md` | İlk incelemede üçünü Git geçmişindeki `c48f1f3` sürümünden okudum. Güncel [yazım rehberi](BOOK_GUIDE.md), [proje bağlamı](PROJECT_CONTEXT.md) ve [yol haritası](ROADMAP.md) `5cb2f04` sürümünde mevcut. Rehber küçük örnek, gerekçeli R uygulaması, yorum, kolaydan zora egzersiz ve doğrulanmış atıfları öne çıkarıyor. Proje bağlamı ve yol haritasına göre Part IV tamamlandı, Part V planlama aşamasında ve Part VI–VIII öneri niteliğinde. |
| `AGENTS.md`, `PART_V_PLAN.md` | İki belge de ilk incelenen `b3cebb1` çalışma ağacında yoktu. Güncel `main` dalında ikisini de doğruladım ve okudum. [AGENTS.md](AGENTS.md) soru, sezgi, teori, R uygulaması, yorum ve sınırlılık akışını öne çıkarıyor. [PART_V_PLAN.md](PART_V_PLAN.md) görev metnindeki on başlığın yanı sıra kazanımları, yöntem adaylarını, kapsam sınırlarını ve doğrulama adımlarını açıklıyor. |

| Ana bölüm | İçerik ve öğretim yaklaşımı |
|---|---|
| **I · R Programlamaya Giriş — 10 dosya** | `r_about.qmd`, R ekosistemi ve çalışma kültürünü, `R_intro.qmd` ise Console–Script ayrımını ve öğrenci notlarını filtreleyen ilk akışı kuruyor. `basics.qmd` geçme oranını hesaplatıyor. `data_types.qmd`, vektör ve veri çerçevesi uygulamalarında `summary()`, `aggregate()` ve `table()` gibi araçlar kullanıyor ve factor temsilini açıklıyor. `functions.qmd` otomatik sayısal özet, `if_else_for.qmd` prim ve kalite kontrolü, `apply.qmd` sınav sonuçları, `date_time.qmd` aylık sipariş toplulaştırması, `strings.qmd` log ve metin temizleme, `import_export.qmd` ise okuma–özetleme–yazma akışıyla ilerliyor. Egzersizler ağırlıkla işlemi uygulama ve hata tanıma üzerine. Çözüm biçimi değişiyor. Bazı dosyalarda ayrı çözüm başlığı, tarih ve metin bölümlerinde örnek çözüm, veri tiplerinde konu içi egzersiz ve özetler var. |
| **II · Veri Manipülasyonu ve Dönüştürme — 3 dosya** | `data_manipulation.qmd` WDI üzerinde gruplama, geçerli gözlem sayısı ve özet üretimini bir analiz akışına bağlıyor. `data_transformation.qmd` küçük örnekten ülke–yıl tablolarına geçiyor ve eksik kombinasyonu sıfırla doldurmanın anlamını sorgulatıyor. `data_join.qmd` anahtar ve kardinaliteyi öğrenci tablolarından WDI metadatasına taşıyor ve `inner_join()` yoluyla kaybolan gözlemleri görünür kılıyor. Üçünde de egzersiz, çözümler ve özet var. |
| **III · Veri Ön İşleme — 7 dosya** | `data_preprocessing.qmd` analiz birimi, veri profili ve işlem gerekçesini kuruyor. `missing_data_imputation.qmd` MCAR/MAR/MNAR, tam ve ikili gözlemler, imputasyonun varyans ve korelasyona etkisi ile MICE sonuçlarının birleştirilmesine kadar gidiyor. `outliers.qmd` IQR, MAD, Cook uzaklığı ve duyarlılık analizi kullanıyor. `data_transformations.qmd` log ve güç dönüşümlerini grafikler, doğrusal ilişki ve katsayı yorumuna bağlıyor. `scaling.qmd` merkezleme ve ölçeklemeyi, `feature_engineering.qmd` payda, gecikme ve analiz birimini, `data_leakage.qmd` ise ülke ve zaman yapısına göre doğrulamayı inceliyor. Egzersizler kodun yanında işlem gerekçesi ve sonuç yorumu istiyor. |
| **IV · Veri Görselleştirme — 8 dosya** | `data_visualization.qmd` aynı ortalamaya sahip farklı dağılımları ve WDI gelir–yaşam beklentisi ilişkisini gösteriyor. `ggplot2_basics.qmd` grafiği eşleme ve katmanlardan kuruyor. `plot_types.qmd` histogram aralığı, yoğunluk, ham noktalar ve kutu grafiği gibi seçimlerin sonuçlarını açıklıyor. `grouping_facets.qmd` ortak ve serbest ölçekleri, `scales_colors_labels.qmd` log ekseni, yakınlaştırma ve yüzde birimlerini, `themes_customization.qmd` okunabilirliği, `exporting_graphics.qmd` çıktı boyutunu ve doğrulamayı ele alıyor. `effective_graphics.qmd` normal benzetim, t güven aralığı, Simpson paradoksu ve WDI sunumunu bir araya getiriyor. README’nin bildirdiği 51 çözümlü egzersiz, kodun yanı sıra grafik seçimini ve yanlış yorumları sorgulatıyor. |

## 2. Part V ile İlişkili Mevcut İçerikler

Önceki bölümlerde **betimleme güçlü, çıkarım ise birkaç bağlamda tanıtılmış** durumda. `data_types.qmd` ve Part II sayısal ve kategorik özetleri hesaplatıyor. `outliers.qmd` merkez ve yayılım seçimini veri bağlamına bağlıyor. Part IV, tam da Part V’in kullanacağı ham nokta, dağılım ve grup grafikleri için gerekli okuryazarlığı sağlıyor. 5.2 bu birikimi, hangi özetin hangi soruyu yanıtladığı etrafında toplamalı.

Üç önbilgi ayrımı özellikle önemli:

- **Güven aralığına giriş yapılmış.** `effective_graphics.qmd`, bağımsız normal benzetim gözlemlerinden `sd()`, `ss / sqrt(n)` ve `qt()` ile grup ortalamaları için %95 t aralıkları kuruyor. Uzun dönem kapsamasını açıklıyor ve iki grubun ayrı aralıklarının örtüşmesinden fark testi çıkarılmasına karşı uyarıyor. 5.4–5.5’e kalan iş, örnekleme mekanizmasından standart hataya ve aralıkların kapsamasına giden akışı kurmak. `missing_data_imputation.qmd` ise doldurulan veriden gelen belirsizliğin çıkarıma taşınması gerektiğini gösteriyor. [Etkili grafikler](chapters/04-veri-gorsellestirme/effective_graphics.qmd#L53) · [Eksik veri ve çıkarımsal belirsizlik](chapters/03-veri-on-isleme/missing_data_imputation.qmd#L580)
- **Rastgele seçim kodu tanıdık, örnekleme kuramı yeni.** `slice_sample()` hızlı inceleme örneğinde, `sample()` ve `runif()` eğitim/test ayrımında kullanılıyor. 5.4’te hedef anakütle, örnekleme çerçevesi, seçilme mekanizması, tekrarlı örnekleme ve merkezi limit teoremi sistematik olarak tanıtılmalı. Aynı ülkeye ait satırların bağlantısı, bağımsızlık tartışmasına doğrudan taşınabilir. [Rastgele satır seçimi](chapters/02-veri-manipulasyonu/data_manipulation.qmd#L623) · [Veri sızıntısı](chapters/03-veri-on-isleme/data_leakage.qmd)
- **İlişki ve toplulaştırma önceden işlenmiş, test mantığı yeni.** Gelir ve yaşam beklentisi örneği ülke, zaman ve birey düzeyindeki yorumları ayırıyor. Simpson örneği koşullu ve marjinal oranların farklı hareket edebileceğini gösteriyor. Korelasyon, imputasyon ve aykırı değer bağlamlarında kullanılıyor. Formül, varsayım ve sonuç yorumu birlikte verilen bir hipotez testi dizisi ile sıra testleri ve kategorik ilişki testleri Part V’te kurulmalı. [Gözlemsel WDI örneği](chapters/04-veri-gorsellestirme/data_visualization.qmd#L368) · [Simpson örneği](chapters/04-veri-gorsellestirme/effective_graphics.qmd#L135)

## 3. Tekrarları Önleme ve Çapraz Referans Haritası

Tabloda `I`–`IV` sırasıyla `chapters/01-giris/`, `chapters/02-veri-manipulasyonu/`, `chapters/03-veri-on-isleme/` ve `chapters/04-veri-gorsellestirme/` dizinlerini gösteriyor. Verilen `@sec-…` ve `@fig-…` etiketleri kaynakta mevcut.

| Part V | Önceki içerik ve kullanılacak referans | Yeni öğretim ve kapsam sınırı |
|---|---|---|
| **5.1 İstatistiksel Düşünmeye Giriş** | III `feature_engineering.qmd`, “Veri Kaynakları ve Analiz Birimi”, `@sec-feature-engineering`. IV `data_visualization.qmd`, “Önce Soru, Sonra Grafik”, `@sec-data-visualization`. | Soru, hedef grup, ölçüm ve veri üretim mekanizmasını ilişkilendir. Betimleme, genelleme ve nedensel etki için gereken kanıtı ayır. Grafik seçimi ve veri tipi sözdizimini bağlantıyla geç. |
| **5.2 Betimsel İstatistikler** | I `data_types.qmd`, “Data Frame’i Özetleme” ve “Factor ile Özetleme”. II `data_manipulation.qmd`, `@sec-data-manipulation`. III `outliers.qmd`, `@sec-outliers`. IV `plot_types.qmd`, `@sec-plot-types`. | Ortalama/medyan ile SD/IQR seçimini, payda ve ağırlıkla birlikte öğret. Aynı veride bir uç değerle özetlerin nasıl değiştiğini karşılaştır. IQR aykırı değer kuralını ve `ggplot2` geometrilerini yeniden anlatma. |
| **5.3 Olasılık ve Olasılık Dağılımları** | IV `plot_types.qmd`, “Frekans ve yoğunluk aynı dikey eksen değildir”. IV `effective_graphics.qmd`, `@fig-effective-raw-ci` öncesindeki `rnorm()` örneği. | Olay, koşullu olasılık, bağımsızlık ve rastgele değişkeni kur. Bernoulli/binom ve normal üzerinden `d/p/q/r` ailesine anlam ver. Histogram yoğunluğundan teorik yoğunluğa geçişi bir görselle açıkla. |
| **5.4 Örnekleme ve Örnekleme Dağılımları** | II `data_manipulation.qmd`, “Belirli satırları seçmek”, `@sec-data-manipulation`. III `data_leakage.qmd`, “Bölme Stratejisi Problem Yapısını İzlemelidir”, `@sec-data-leakage`. | Çerçeve ve seçilme olasılığı, olasılıklı örnekleme, örnekleme yanlılığı, standart hata ve merkezi limit teoremi yeni. Eğitim/test ayırma örneğinin amacı model değerlendirmesi. Burada hedef, bir istatistiğin örnekten örneğe değişimini açıklamak. |
| **5.5 İstatistiksel Tahmin ve Güven Aralıkları** | IV `effective_graphics.qmd`, `@sec-effective-graphics` ve `@fig-effective-raw-ci`. III `missing_data_imputation.qmd`, `@sec-missing-data-imputation`. | Tahmin edilen niceliği tanımla. Nokta tahmini, standart hata, kapsama ve aralık genişliğini benzetimle bağla. Tek ortalama için t aralığını ve oran için uygun bir aralığı işle. `geom_errorbar()` çizim ayrıntısını Part IV’e bağla. |
| **5.6 Hipotez Testlerinin Mantığı** | IV `plot_types.qmd`, `@fig-types-box`; `effective_graphics.qmd`, “Ham Gözlemi ve Özeti Birlikte Sunmak”. III `missing_data_imputation.qmd` p-değerini çıktı düzeyinde anıyor. | H₀ altında referans dağılımı, test istatistiği, p-değeri, Tip I/II hata, güç ve çoklu test fikri yeni. Örnek bir sıfır dağılımıyla başla ve sonucu etki büyüklüğü ile aralık üzerinden de yorumla. |
| **5.7 Ortalamaların Karşılaştırılması** | IV `effective_graphics.qmd`, `@fig-effective-raw-ci`. III `outliers.qmd`, “Duyarlılık Analizi”, `@sec-outliers`. | Tek örneklem, bağımsız iki grup ve eşleştirilmiş ölçüm ayrımını kur. Bağımsız gruplar için Welch yaklaşımını, eşleştirilmiş veride birim içi farkı göster. Ayrı grup aralıkları yerine ortalama farkının aralığını hesapla. |
| **5.8 Parametrik Olmayan Testler** | III `outliers.qmd`, medyan ve MAD, `@sec-outliers`. IV `plot_types.qmd`, “Grupların Dağılımları”, `@fig-types-box`. | Sıra, bağ, bağımsız ve eşli Wilcoxon testlerinin farklı hedef ve varsayımları yeni. Sağlam özet ölçülerini kısaca anımsat. Sıra testlerini otomatik medyan testi veya normallik testi sonrası otomatik seçim olarak sunma. |
| **5.9 Kategorik Veriler ve İlişki Analizi** | I `data_types.qmd`, “Factor ile Özetleme”. IV `plot_types.qmd`, `@fig-types-count`; `effective_graphics.qmd`, “Payda ve Toplulaştırma”, `@fig-effective-denominator`. | Çapraz tablo, koşullu oran, beklenen sayım, ki-kare bağımsızlık testi ve küçük 2×2 tabloda Fisher yaklaşımını kur. Yüzde puan farkı ve uygun bir ilişki ölçüsüyle yorumu tamamla. |
| **5.10 Bütünleşik İstatistiksel Analiz** | II `data_join.qmd`, `@sec-data-join`; `data_transformation.qmd`, `{#part-datatransformation}` ve “Baştan sona bir dönüşüm örneği”. III `@sec-missing-data-imputation`. IV `@sec-effective-graphics`, `@sec-exporting-graphics`. | Soru, analiz birimi, kapsam, görsel, tahmin veya test, duyarlılık ve raporlamayı tek vakada gerekçelendir. Join, pivot ve dışa aktarma adımlarını birkaç satır ve geri bağlantıyla geç. |

Kaynak taramasında yinelenen açık etiket veya hedefi bulunamayan `@sec-…`/`@fig-…` kullanımı çıkmadı. Part I’de taranan dosyalarda açık `sec-` etiketi yok. Part II’de dönüşüm başlığı `part-datatransformation` kimliğini kullanıyor. Bu iki durumda dosya ve başlık bağlantısı tercih edilebilir. Etiket taraması, render sırasında bağlantıların nasıl çözüldüğünü doğrulamıyor.

## 4. Veri Setlerinin Değerlendirilmesi

`data/` içindeki CSV’leri doğrudan okudum. Panelde 217 ülke/ekonomi kodu ve 1960–2025 arasındaki 66 yıl için 14.322 benzersiz ülke–yıl anahtarı var. Bu düzenli satır yapısı, bütün göstergelerin aynı dönem ve ülkelerde gözlendiği anlamına gelmiyor.

| Dosya | Yapı ve Part V’te kullanım |
|---|---|
| `data/countries.csv` | **217 × 34.** Ülke/ekonomi başına bir satır, yalnızca 2019. Kimlik, bölge, gelir grubu ve yıl ile 29 gösterge. Betimleme, kapsam ve grup karşılaştırması için ana dosya. |
| `data/country_indicators.csv` | **14.322 × 32.** `country_code` ve `year` birlikte anahtar. 29 gösterge ayrı sütunda. Kapsamın zamanla değişmesi, tekrarlı ölçüm ve bağımlılık için uygun. |
| `data/country_indicators_long.csv` | **415.338 × 7.** Ülke–yıl–gösterge başına bir satır. `indicator_label`, `value` ve `unit` içeriyor. Boş `value` alanı **111.444**, yaklaşık **%26,83**. Birimleri farklı göstergeler birlikte çizilecekse ölçek ve facet kararları açıklanmalı. |
| `data/country_metadata.csv` | **295 × 15.** Ülke/ekonomi kayıtları yanında WDI toplamları, ISO kodları, sınıflandırmalar, koordinatlar ve veri başlangıç/bitiş yılları var. Panelde toplam kodları dışlanmış. Metadata birleştirmelerinde analiz birimini ve satır sayısını kontrol etmek gerekli. |
| `data/indicator_dictionary.csv` | **29 × 13.** Kod, kategori, birim, özgün ad, tanım, kaynak kuruluşu ve kapsam bilgileri. `co2_per_capita` alanının birimi kişi başına ton CO₂ eşdeğeri ve kapsamı LULUCF hariç. `school_enrollment_tertiary_pct` brüt orandır. İşsizlik göstergeleri ILO modellemeli serilerdir. |
| Diğer tanı dosyaları | `indicator_selection_report.csv` aday ve seçilen göstergeleri, `reference_year_coverage.csv` dokuz çekirdek göstergenin yıllık kapsamını, `quality_report.csv` üretim kontrollerini, `build_summary.json` kesit ve panel özetini tutuyor. Raporda 2019, **2018 ve sonrası karşılaştırmada** 203,78 ortalama çekirdek kapsamla en yüksek yıl. |

**Öğretim için önerilen göstergeler.** Sayılar kayıtlı 2019 kesitindeki 217 satır ve paneldeki 14.322 satır üzerinden hesaplandı.

| Gösterge | 2019 geçerli / 217 | Panelde eksik | Kullanım |
|---|---:|---:|---|
| `life_expectancy_total` | 217 | %1,75 | Ülke düzeyinde dağılım ve gelir grubu karşılaştırması. Kayıtlı seri 2024’e kadar geliyor. |
| `gdp_per_capita_usd` | 211 | %17,86 | Çarpıklık, ortalama–medyan, log ölçek ve yaşam beklentisiyle gözlemsel ilişki. Cari ABD doları birimini koru. |
| `internet_users_pct` | 189 | %56,54 | 5.1 için kapsam ve payda örneği. Yüksek gelir grubunda 66/86, düşük gelir grubunda 22/25 geçerli değer var. |
| `urban_population_pct` | 217 | %0,00 | Eksiksiz bir ülke düzeyi yüzde örneği. Ülke yüzdelerinin ortalaması ile nüfusa dayalı toplulaştırmayı karşılaştırmaya uygun. |
| `co2_per_capita` | 203 | %22,04 | Çarpıklık ve eksik çiftler. İnternet kullanımıyla birlikte analizde 181 geçerli çift kalıyor. |
| `unemployment_total_pct` | 187 | %54,40 | Modellenmiş göstergeyi ve serinin 1991’de başlamasını tartışmak için uygun. |
| `school_enrollment_tertiary_pct` | 132 | %62,62 | Eksik kapsamı gelir ve bölgeye göre tartışmak için uygun. Brüt oran için %100 doğal üst sınır olarak kullanılamaz. |

**Genelleme sınırı.** WDI kesiti, bilinen seçilme olasılıklarıyla çekilmiş bir ülke örneklemi olarak ele alınmamalı. Sorunun hedefi kayıtlı 2019 ekonomileri ise özet, açıkça belirtilen kapsama ait betimsel bir sonuçtur. Örneğin internet kullanımı iki gelir grubunda farklı düzeyde gözleniyorsa geçerli kayıtların ortalaması, eksik ekonomileri de kapsayan grup ortalamasını kendiliğinden vermez. Eksiklik oranları tek başına eksiklik mekanizmasını da belirlemez. Dünya nüfusuna ilişkin bir hedef için kişi ve ülke paydaları ayrılmalı. Nüfus ağırlıklı ülke göstergesi, ancak gösterge tanımı ve payda uyumluysa hedeflenen niceliği verir. Panelde aynı ülkenin yılları ve bölgesel ortak şoklar bağımsızlık varsayımını ayrıca sınırlar.

Örnekleme dağılımını öğretmek için tanımlı bir yapay anakütle, güven aralığı ve güç için bilinen parametreli benzetimler, eşli ve bağımsız testler için veri üretim mekanizması açık küçük tablolar kullanılmalı. 5.9’da küçük bir 2×2 sayım tablosu, WDI’de sürekli bir göstergeyi keyfî eşiğe göre kategorileştirmekten daha doğrudan bir test örneği sağlar. WDI ise 5.1, 5.2 ve 5.10’da gerçek kapsam ve yorum kararlarını göstermek için güçlü.

**Yeniden üretim açığı.** [`R/build_book_data.R`](R/build_book_data.R) WDI’dan çalıştırıldığı yılın sonuna kadar veri talep ediyor, toplamları çıkarıyor, kapsam eşiği uyguluyor ve kesit yılı seçiyor. Kayıtlı dosyalarla betik arasında şema farkları var. Betik uzun tabloya `indicator_label` eklemiyor. Metadata çıktısında kayıtlı bölge/gelir kodu, konum ve kapsam sütunlarının bir kısmı üretilmiyor. Seçim ve yıllık kapsam raporlarının sütunları da farklı. Sözlük, kalite raporu ve JSON özeti betiğin yazdığı dosyalar arasında yer almıyor. `data-raw/README.md` önbellek klasörünü açıklıyor, betikte ise klasör oluşturma dışında bir önbellek okuma veya yazma adımı görünmüyor. Part V örneklerini mevcut CSV anlık görüntüsüne bağlamak ve veri sürümünü raporda belirtmek bu aşamada yeterli.

## 5. Akademik Kaynakların Değerlendirilmesi

[`references.bib`](references.bib) 29 kayıt içeriyor. [`references.qmd`](references.qmd), `{#refs}` alanıyla kitapta metin içinde atıf verilen eserleri topluyor. Kaynak taramasında yinelenen anahtar, aynı esere işaret eden belirgin bir mükerrer kayıt veya karşılığı bulunmayan atıf saptamadım. `dplyr2023` kaydına `.qmd` dosyalarında anahtarıyla atıf yapılmıyor.

| Mevcut kaynak | Part V’te katkısı |
|---|---|
| `tukey1977`, `wilkeDataviz` | 5.1–5.2’de keşif, dağılımın görünürlüğü ve özetlerin sınırı. |
| `gelmanHillVehtari2020` | 5.1’de araştırma sorusu ve yorum, 5.5–5.7’de belirsizlik ve karşılaştırma, Part VI’ya geçiş. |
| `littleRubin2019`, `rubin1987`, `vanBuuren2018`, `vanBuurenGroothuis2011`, `schaferGraham2002` | 5.2 veya 5.10’da eksiklik ve çıkarım. Uygulama ayrıntıları için Part III yeterli bir başvuru noktası. |
| `barnettLewis1994`, `hampel1986`, `rousseeuwLeroy1987` | 5.2 ve 5.7’de uç değer, sağlam özet ve duyarlılık. 5.8’deki testlerin varsayımları için ayrıca yöntem kaynağı gerekli. |
| `simpson1951`, `worldBankWDI`, `wickhamGrolemund2023` | Koşullu oran ve toplulaştırma, veri kaynağının belgelenmesi ve R iş akışı. |

Üç künye doğrulama önceliği var. `james2023` kaydındaki 2023 yılı, Taylor yazarlığı ve DOI, **Python baskısıyla karışmış görünüyor**. 2023 tarihli `wickhamGrolemund2023` kaydında Grolemund’un ikinci baskı yazar listesinde olup olmadığı yayıncı künyesiyle karşılaştırılmalı. `worldBankWDI` kaydındaki `urldate` **7 Eylül 2026**, `build_summary.json` içindeki veri erişim tarihi **8 Ağustos 2026**. Kaynak sayfasına erişim ve veri anlık görüntüsünün edinim tarihleri farklı olabilir. Kitapta hangi tarihin hangi olayı gösterdiği belirtilmeli.

Yeni kaynak adayları aşağıda. Yayıncı ve kayıt servisi sorguları bu oturumda 403 döndürdüğü için künyeleri bağımsız doğrulanmış olarak sunmuyorum. Yeni DOI eklemedim.

| Kapsam | Kaynak adayı |
|---|---|
| **5.1 öğretim tasarımı** | ASA’nın üniversite düzeyi **GAISE College Report** çalışması. Araştırma sorusu, veri, kavramsal anlama ve aktif öğrenme için. [ASA GAISE](https://www.amstat.org/education/gaise) |
| **5.3–5.7 temel anlatım** | Diez, Barr ve Çetinkaya-Rundel’in *OpenIntro Statistics* kitabı. Dağılım, örnekleme, güven aralığı ve karşılaştırma için. [OpenIntro Statistics](https://www.openintro.org/book/os/) |
| **5.4 örnekleme tasarımı** | William G. Cochran, *Sampling Techniques*. Çerçeve, basit rastgele ve tabakalı örnekleme için. |
| **5.6 p-değeri** | Wasserstein ve Lazar’ın ASA’nın p-değerleri hakkındaki bildirisi. P-değeri, etki büyüklüğü ve kararların yorumlanması için. |
| **5.8–5.9 yöntemler** | Hollander ve çalışma arkadaşlarının *Nonparametric Statistical Methods* kitabı ile Alan Agresti’nin *Categorical Data Analysis* kitabı. Sıra testleri, bağımsızlık ve küçük hücre sayıları için. |

## 6. Part V İçerik Taslağına İlişkin Öneriler

Güncel [PART_V_PLAN.md](PART_V_PLAN.md) dosyasındaki on başlığın genel sırası yerinde. Önce soru ve verinin üretimi, ardından gözlenen dağılım, olasılık modeli, örnekleme dağılımı, tahmin ve test geliyor. **Başlık sayısını koruyup her alt bölümün yanıtlayacağı soruyu daraltmayı** öneriyorum.

1. **5.1–5.2 arasında kapsamı ayır.** 5.1’de bir özetin kime ait olduğunu, 5.2’de hangi özetin hangi özellikleri yakaladığını öğret. Yüzde, yüzde puan ve ağırlıklı ortalama ayrımını ilk kez gerektiği örnekte kullan. Pearson ve Spearman korelasyonuna betimsel bir köprü gerekiyorsa 5.2’nin sonuna kısa bir alt başlık eklenebilir. Böylece 5.9 kategorik ilişkiye odaklanır.
2. **5.3’ü dağılım kataloğuna dönüştürme.** Bernoulli/binom, normal ve küçük bir koşullu olasılık örneği sonraki bölümleri taşır. Taslakta yer alan beklenen değeri binom örneğinde öğret. Poisson dağılımını, sabit bir zaman aralığındaki olay sayısı gibi ayrı bir sayım sorusuyla kısa bir örnek olarak ver. Student t dağılımını 5.5’te standart sapmanın örnekten tahmin edilmesiyle birlikte vermek daha anlaşılır. 5.4’te ham gözlemlerin dağılımı ile tekrarlı örnek ortalamalarının dağılımını ortak ölçekte yan yana çiz. Örneklem büyüklüğüne göre standart hatanın değişimini bu görselden tartış.
3. **5.5–5.6’yı birleştirme.** Tahmin ve test farklı sorularla başlasın. 5.5’te bilinen bir parametre çevresinde aralıkların uzun dönem kapsamasını göster. Normal ve belirgin çarpık bir veri üretim koşulu, yöntemin varsayımlarını görünür kılar. Oran tahmininde küçük veya uç oranlı örnekler için Wilson aralığı öğretilebilir. Taslaktaki bootstrap girişini, kapsama anlatımının ardından tek bir tahmin örneğiyle sınırla. Tekrarlı anakütle örneklemesi ile gözlenen örnekten yerine koyarak yeniden örnekleme arasındaki farkı göster. 5.6’da sıfır dağılımı, uç bölge, p-değeri, hata türleri ve güç sırasıyla gelsin. Önceden belirlenmiş soru ile veri görüldükten sonra seçilmiş soruyu burada yeniden bağla.
4. **5.7–5.8’de yöntem seçimini tasarımla başlat.** 5.7’de bağımsız gruplar için Welch t yaklaşımı ve eşleştirilmiş ölçümlerde birim içi fark ana omurga olabilir. Taslağın ANOVA girişini ayrı bir alt başlıkta ele al. Genel testin hangi soruyu yanıtladığını, sonrasındaki karşılaştırmaları ve hata kontrolünü aynı örnek üzerinde göster. 5.8’de aynı ölçüm tasarımlarını sıra yöntemleriyle karşılaştır. Mann–Whitney türü testin hangi koşullarda konum farkı olarak yorumlanabildiğini, eşli Wilcoxon için farkların simetrisini ve bağların hesaplamaya etkisini açıkça işle. Taslaktaki Kruskal–Wallis’i üç veya daha fazla bağımsız grubun genel karşılaştırması olarak kısa bir örnekle bağla.
5. **5.9’da paydadan teste ilerle.** Aynı tabloyu önce ham sayımlarla, sonra koşullu oranlarla, ardından bağımsızlık altında beklenen sayımlarla göster. Ki-kare ile Fisher yöntemine geçiş, tablonun yapısı ve sayımlar üzerinden gerekçelendirilsin. Etkiyi yüzde puan farkı, risk oranı veya olasılık oranından soruya uygun olanıyla raporla. Simpson örneğini sonuç yorumunda kısa bir geri bağlantı olarak kullan.
6. **5.10’da iki farklı iddia düzeyini uygulat.** Bir WDI vakasında kapsamı tanımlanmış bir betimsel bulgu yazdır. İkinci, kısa bir deney veya olasılıklı örnekleme vakasında tahmin/test ve belirsizlik raporlat. Her vakada veri kaybı, hedef nicelik ve en az bir duyarlılık kontrolü bulunsun. Böylece gerçek veri kullanımı okuru gerekçesiz bir teste yöneltmez.

Kuram ve R dengesi için her ana yöntemde benzer bir sıra işe yarar: araştırma sorusu, veri üretim koşulu, görsel beklenti, kısa hesap, R çıktısı ve bağlama dönük yorum. Formülü sayısal bir örneğe bağlamak yeterli. Benzetimlerde tekrar sayısı, örneklem büyüklüğü ve kullanılan rastgele mekanizma açıkça belirtilmeli. Dört özgün görsel özellikle değerli: 5.1’de hedef grup–çerçeve–gözlenen kayıtlar, 5.4’te gözlem dağılımı–örnekleme dağılımı, 5.5’te kapsayan ve kapsamayan aralıklar, 5.6’da sıfır dağılımı ve gözlenen istatistik.

**Regresyonu Part VI’ya bırakmak uygun.** Part III’te kullanılan `lm()` ve Part IV’teki düzgünleştirme çizgileri okura görsel bir giriş sağlıyor. Katsayı yorumları, artıklar, çok değişkenli ayarlama ve tahmin belirsizliği, örnekleme ve çıkarım kurulduktan sonra birlikte işlenebilir. Part V’te gözlemsel ilişki, karıştırıcılık ve betimsel korelasyon bu geçişi hazırlamaya yeter.

## 7. 5.1 İçin Ayrıntılı Öğretim Tasarımı

**Açılış sorusu.** “2019 WDI kayıtlarında internet kullanım yüzdesi gelir gruplarına göre nasıl değişiyordu ve bu tablo bize hangi ekonomiler hakkında bilgi veriyor?” Soru, ülke düzeyinde somut bir karşılaştırma açıyor. İlk okuyuşta kolay görünen yüzde hesabı, gözlem birimi, payda, kapsam ve genelleme kararlarını aynı örnekte ortaya çıkarıyor.

**Öğrenme hedefleri.** Bölüm sonunda okur:

- Bir veri sorusunu hedef grup, gözlem birimi, dönem, değişken ve özet üzerinden yazabilir.
- Anakütle, örnekleme çerçevesi, seçilen birimler ve geçerli ölçümü bulunan kayıtlar arasındaki ilişkiyi açıklayabilir.
- Bir parametre ile örnekten hesaplanan istatistiği aynı örnek üzerinde ayırt edebilir.
- Değişkenlik, örnekleme belirsizliği, ölçüm hatası ve seçilim yanlılığının farklı kaynaklarını belirleyebilir.
- Rastgele seçimin genellenebilirlikle, rastgele atamanın uygun koşullarda nedensel karşılaştırmayla nasıl ilişkili olduğunu açıklayabilir.
- Bir WDI grafiğinden kapsamı belirtilmiş bir betimsel sonuç yazabilir.

| Sıra | Öğretim adımı | R uygulaması ve kontrol |
|---|---|---|
| **1. Soruyu ölçülebilir hâle getir** | “İnternete erişim” ile sözlükteki `internet_users_pct` ölçümünü karşılaştır. Yılı, ülke/ekonomi birimini ve gelir grubu sınıflandırmasını belirt. “Tipik ekonomi” için ülke medyanı ile “tipik birey” için gerekli paydaları tartış. | `readr::read_csv()` ile 2019 kesiti. `count(year)` ve ülke kodu benzersizliği kontrolü. Sözlükten birim ve tanımı oku. |
| **2. Gözlem kapsamını görünür kıl** | Okura önce toplam ekonomi sayısını, ardından geçerli internet ölçümü olanları göster. Her grupta paydanın neden raporlandığını sordur. | `group_by(income_group)` ve `summarise()` ile toplam, geçerli ve eksik sayısı ile geçerli kayıtlardaki medyanı üret. Beklenen kontrol **189 geçerli, 28 eksik**. Yüksek gelir **66/86**, düşük gelir **22/25**. |
| **3. Verinin söylediğini yaz** | Grup başına ham nokta göster. Örnek sonuç “2019 WDI kesitinde internet kullanımı kaydı bulunan 66 yüksek gelirli ekonomide ülke düzeyi medyan %87,38, kaydı bulunan 22 düşük gelirli ekonomide %12,10’du.” Okurdan bu cümledeki yıl, birim ve kapsamı bulmasını iste. | Gelir gruplarını anlamlı sıraya koy. Noktaları ve medyan işaretini ayrı katmanlarda göster. Her grubun geçerli/toplam sayısını etiketle. Grafik açıklaması ve alternatif metin, yüzde birimini ve kapsamı içersin. |
| **4. Örnekleme değişkenliğini göster** | Sonucu bilinen 20 birimlik yapay bir anakütleden aynı büyüklükte iki rastgele örnek seç. İki farklı örnek ortalamasının aynı anakütle ortalamasına ilişkin bilgi taşımasını tartış. Gönüllü yanıt örneğiyle sistematik seçilim fikrini ekle. | `set.seed()` ve yerine koymadan iki `sample()` çağrısı yeterli. Anakütle ortalamasını ve iki örnek ortalamasını yazdır. Çok sayıdaki tekrar, standart hata ve merkezi limit teoremi 5.4’e kalsın. |
| **5. Araştırma tasarımını karşılaştır** | Bir belediyenin dijital eğitim programı örneğinde rastgele davetli seçme ile katılımcıları program ve kontrol gruplarına rastgele atama arasındaki farkı tartış. İlkinde kimlere genellenebileceği, ikincisinde karşılaştırmanın program etkisini hangi koşullarda yansıtabileceği sorulsun. | Kısa bir şema yeterli. Ölçümün takibi, katılmama ve kayıp gözlem, diyagram üzerinde tartışılabilir. |
| **6. İddiayı denetle** | “Gelir artışı internet kullanımını yükseltti” başlığını ver. Okur bir betimsel başlık yazsın, nedensel iddia için hangi ek tasarım veya kanıtın gerekeceğini açıklasın. | Çözümlerde bir örnek rapor cümlesi ve kabul edilebilir farklı ifadeler yer alsın. |

**Görseller ve geri bağlantılar.** Biri WDI kapsamına, diğeri yapay örneklemeye hizmet eden iki görsel yeterli. İlkinde dağılım, medyan ve geçerli/toplam sayıları birlikte gösterilebilir. İkincisinde tanımlı anakütle, iki seçili örnek ve bunların ortalamaları aynı sayı doğrusu üzerinde görülebilir. Analiz birimi için `@sec-feature-engineering`, grup özeti için `@sec-data-manipulation`, eksik kayıtlar için `@sec-missing-data-imputation`, grafik ve yorum için `@sec-data-visualization`, payda ve toplulaştırma için `@fig-effective-denominator` uygun. Mevcut kaynaklardan Tukey ve WDI, yeni kaynaklardan GAISE, *OpenIntro Statistics* ve örnekleme çerçevesi için Cochran öncelikli adaylar.

**Sık hatalar ve ölçme.** Alıştırmalar, 217 ülke/ekonomi satırını 217 birey gibi okumayı, eksik yüzdeleri sıfır saymayı, ülke medyanını dünya nüfusu oranı gibi aktarmayı, büyük veri hacmini temsil gücüyle karıştırmayı ve iki grup farkına nedensel anlam yüklemeyi görünür kılmalı. Kolay soruda gözlem birimi ve payda belirlenir. Orta soruda toplam ve geçerli kayıt sayıları hesaplanıp uygun bir sonuç cümlesi yazılır. Zor soruda gönüllü katılım, rastgele örnekleme ve rastgele atama senaryolarında hangi iddiaların desteklendiği gerekçelendirilir.

## 8. Riskler, Eksikler ve Açık Kararlar

| Konu | Etkisi ve açık karar |
|---|---|
| **Part V planında kapsam kararları** | Güncel taslak ANOVA ve bootstrap’a giriş, Kruskal–Wallis ve Pearson/Spearman örnekleri öngörüyor. Açık kararlar bu konuların derinliği, hangi örneklerde kullanılacağı ve betimsel korelasyonun 5.2’ye taşınıp taşınmayacağı. |
| **WDI’nin çıkarımsal hedefi** | Varsayılan hedef, belirtilen yılda ve belirtilen kapsamdaki ülke/ekonomilerin betimlenmesi olmalı. Model temelli bir genelleme işlenecekse hedef, bağımlılık yapısı ve varsayımlar ayrıca tanımlanmalı. |
| **Testlerin mekanik seçimi** | Normallik testine dayalı otomatik karar ağacı, örneklemin tasarımını ve hedeflenen niceliği arka plana iter. Yöntem seçimi analiz birimi, bağımsızlık, eşleşme, etki ölçüsü ve olası uç gözlemlerle gerekçelendirilmeli. |
| **Anlık veri görüntüsü ile betik arasındaki fark** | Yıl kapsamı, çıktı şeması ve veri sürümü gelecekte değişebilir. İlk Part V örneklerinde kayıtlı sütun adları ve birimler kullanılmalı. Üretim betiğiyle şema uyumu ayrı bir bakım kararı. |
| **Yayına özgü doğrulama** | Kaynak etiketleri ve atıf anahtarları statik olarak kontrol edildi. Render sırasında çapraz referans çözümü, grafik okunabilirliği ve kodun temiz oturumda yürütülmesi içerik üretimi aşamasında doğrulanmalı. |

## 9. Sonraki Adımlar

1. Part V’in kapsamını görevdeki on başlık üzerinden kesinleştir. İlk kararlar 5.7’de ANOVA, 5.8’de sıra yöntemlerinin kapsamı ve 5.9’da kategorik ilişki odağı olsun.
2. 5.1 için WDI internet kullanımı örneğini ve bilinen anakütleli kısa benzetimi benimse. Kapsam sayıları ile araştırma sorusu, iki görsel ve üç yorum alıştırması için yeterli temel hazır.
3. Yazıma geçildiğinde ilk taslağı 5.1 ile sınırla. Önce seçilen atıf künyelerini doğrula, ardından kayıtlı WDI sayıları, R çıktıları, grafik alternatif metinleri ve kullanılan Quarto bağlantılarını bölüm düzeyinde denetle.
