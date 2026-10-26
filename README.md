# R Programlama

**Veri analizi ve istatistiksel düşünmeye uygulamalı giriş.**

[Kitabı çevrim içi okuyun](https://mfatihtuzen.github.io/r-programlama/)

Bu Türkçe, açık kaynak kitap; R programlamayı veriyle düşünme, analiz yapma ve sonuçları yorumlama becerileriyle birlikte öğretir. Amaç yalnızca komutları göstermek değil; yöntemlerin neden ve ne zaman kullanıldığını, çıktıların nasıl değerlendirileceğini ve hangi koşullarda yanıltıcı olabileceğini açıklamaktır.

## İçerik

Depoda dört ana bölüm ve toplam 28 alt bölüm bulunmaktadır:

| Ana bölüm | Kapsam | Alt bölüm sayısı |
|---|---|---:|
| I — R Programlamaya Giriş | Çalışma ortamı, temel kullanım, veri yapıları, fonksiyonlar, kontrol yapıları, tarih, metin, apply ailesi ve dosya işlemleri | 10 |
| II — Veri Manipülasyonu ve Dönüştürme | `dplyr`, uzun/geniş veri dönüşümleri ve tablo birleştirmeleri | 3 |
| III — Veri Ön İşleme | Eksik veri, aykırı gözlemler, dönüşümler, ölçeklendirme, özellik mühendisliği ve veri sızıntısı | 7 |
| IV — Veri Görselleştirme | Grafik seçimi ve yorumlama, `ggplot2`, gruplama ve facet, ölçekler, renkler, temalar, bilimsel sunum ve dışa aktarma | 8 |

Veri görselleştirme bölümleri, fonksiyon ve argüman açıklamalarını kavramsal gerekçelerle birleştirir. Grafiklerin kapsamı, eksik değerleri, ölçü birimleri ve yorum sınırları ele alınır. Part IV'te çözümleriyle birlikte 51 egzersiz bulunmaktadır.

Temel istatistik ve regresyon gibi ileri konular kitabın gelecekte genişletilebilecek alanlarıdır; mevcut kapsamla karıştırılmamalıdır.

## Kimler İçin?

Kitap; R öğrenmeye başlayan öğrenciler, araştırmacılar, akademisyenler ve kamu veya özel sektörde veriyle çalışan kişiler için hazırlanmıştır. Açıklamalı örnekler, kavram kutuları, uygulamalar ve egzersizlerle adım adım ilerler.

## Kaynak Yapısı

| Yol | İçerik |
|---|---|
| `_quarto.yml` | Kitap menüsü, HTML biçimi ve yürütme ayarları |
| `index.qmd` | Önsöz |
| `chapters/` | Dört ana bölümün Quarto kaynakları |
| `data/` | Kitapta kullanılan ortak veri dosyaları ve veri sözlüğü |
| `R/` | Veri hazırlama betikleri |
| `images/` | Kapak ve diğer görseller |
| `references.bib`, `references.qmd` | Akademik ve teknik kaynakça |
| `styles.css`, `custom.scss` | Görünüm düzenlemeleri |
| `_freeze/` | Kitabın yeniden oluşturulmasını destekleyen kayıtlı R yürütme sonuçları |

Yerel çalışma belgeleri, RStudio oturum dosyaları, ham veri önbelleği ve üretilen bağımsız çıktılar Git tarafından izlenmez. `_freeze/` ise Quarto yayın akışında kullanıldığı için depoda tutulur.

## Kitabı Yerel Olarak Oluşturmak

Bilgisayarınızda [R](https://www.r-project.org/) ve [Quarto](https://quarto.org/) bulunmalıdır. RStudio isteğe bağlıdır; projeyi `r-programlama.Rproj` ile açabilirsiniz.

Kitap örneklerinde kullanılan R paketleri:

```r
install.packages(c(
  "knitr", "rmarkdown", "quarto",
  "ggplot2", "dplyr", "tidyr", "readr", "scales",
  "readxl", "lubridate", "stringr", "recipes", "mice"
))
```

Paket kurulumunu yalnızca gerektiğinde kendi R oturumunuzda yapın. Kitabı proje kök dizininden oluşturabilirsiniz:

```bash
quarto render --to html
```

Çıktı `_book/` klasörüne yazılır. Yerel önizleme için:

```bash
quarto preview
```

Tek bir bölümün kodlarını çalıştırıp HTML çıktısını oluşturmak için:

```bash
quarto render chapters/04-veri-gorsellestirme/ggplot2_basics.qmd --to html
```

Projede `freeze: auto` kullanılır. Tam kitap render işleminde değişmeyen bölümlerin kayıtlı sonuçları yeniden kullanılabilir; tek bölüm render işleminde o bölümün kodları yeniden çalıştırılır. Bu nedenle tam kitabın başarıyla oluşması ile bütün kodların yeniden yürütülmesi farklı doğrulamalardır. R kodlarının çalışma dizini proje köküdür.

`main` dalına gönderilen değişiklikler, `.github/workflows/publish.yml` içindeki GitHub Actions iş akışıyla HTML'ye dönüştürülüp GitHub Pages'e yayımlanır.

## Veriler ve Kaynaklar

Gerçek veri örneklerinde Dünya Bankasının World Development Indicators verilerinden hazırlanan ortak dosyalar kullanılır. `data/countries.csv` 2019 kesitini, diğer gösterge dosyaları ülke–yıl panelinin geniş ve uzun biçimlerini içerir. Değişken tanımları ve birimler `data/indicator_dictionary.csv` dosyasında açıklanır; veri üretim betiği `R/build_book_data.R` dosyasındadır.

Gözlem yılı, veri kapsamı, eksikler ve sınıflandırmalar ilgili örneklerde belirtilir. Yapay veriler ve benzetimler gerçek araştırma sonucu olarak sunulmaz. Kullanılan akademik ve teknik kaynaklar kitap içi atıflarla kaynakçaya bağlanır.

## Katkı ve Geri Bildirim

Hataları, anlatım önerilerini ve eksik gördüğünüz konuları [GitHub Issues](https://github.com/MFatihTuzen/r-programlama/issues) üzerinden bildirebilirsiniz. Kod veya içerik değişikliği önerirken ilgili `.qmd` dosyasını ve varsa hatayı yeniden üreten kısa örneği belirtmeniz yararlı olur.

## Lisans

Kitap **Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International (CC BY-NC-SA 4.0)** lisansıyla paylaşılmaktadır. Uygun atıfla, ticari olmayan amaçlarla paylaşılabilir ve uyarlanabilir; uyarlamalar aynı lisansla paylaşılmalıdır. Ayrıntılar için [LICENSE](LICENSE) dosyasına bakın.
