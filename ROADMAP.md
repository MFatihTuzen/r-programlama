# ROADMAP.md

# R Programlama Kitabı Yol Haritası

Bu doküman, kitabın geliştirme planını ve öncelikli çalışma alanlarını göstermektedir.

Yol haritası yaşayan bir dokümandır ve proje ilerledikçe güncellenecektir.

> **Not:** Buradaki başlıklar plan niteliğindedir. Projenin gelişimine, geri bildirimlere ve zaman planlamasına göre değişebilir.

---

# Genel Hedef

R programlama dili üzerine;

- tamamen Türkçe,
- ücretsiz,
- açık kaynak,
- uygulama ağırlıklı,
- güncel

bir başvuru kaynağı oluşturmak.

Kitap yalnızca R sözdizimini anlatmayı değil; veri analizi sürecini baştan sona uygulamalı olarak öğretmeyi amaçlamaktadır.

---

# Geliştirme Stratejisi

Kitap ana bölümler (Parts) halinde geliştirilecektir.

Her ana bölüm tamamlandığında içerik ve mevcut proje belgeleri güncellenir; Git etiketi, GitHub Release ve duyuru ise ayrı, doğrulanan yayın adımlarıdır. Depoda `CHANGELOG.md` bulunmuyorsa varmış gibi gösterilmez.

Kalite, geliştirme hızından daha önceliklidir.

---

# Tamamlanan ve GitHub'a Aktarılan Bölümler

Part I–V (toplam **38 alt bölüm**) kitabın yayımlanan kapsamını oluşturur. `v0.5.0` etiketi ve GitHub Release'i doğrulanmıştır. Önceki sürümlerden `v0.4.0` için GitHub'da etiket veya Release bulunmamaktadır; mevcut olmayan sürümler yayımlanmış gibi gösterilmez.

| Ana bölüm | Alt bölüm | Durum | Sürüm hedefi |
|---|---:|---|---|
| Part I — R Programlamaya Giriş | 10 | Tamamlandı, depoda | v0.1.0 |
| Part II — Veri Manipülasyonu ve Dönüştürme | 3 | Tamamlandı, depoda | v0.2.0 |
| Part III — Veri Ön İşleme | 7 | Tamamlandı, depoda | v0.3.0 |
| Part IV — Veri Görselleştirme | 8 | Tamamlandı, yayımlanan kitapta; ayrı `v0.4.0` etiketi/Release bulunmuyor | v0.4.0 | 
| Part V — Temel İstatistik ve İstatistiksel Çıkarım | 10 | Tamamlandı; GitHub Pages ve Release yayımlandı | v0.5.0 |

## Part IV — Veri Görselleştirme: Tamamlanan kapsam

1. Veri Görselleştirmeye Giriş — görselleştirmenin amacı, görsel algı, grafik seçimi ve etik ilkeler.
2. `ggplot2` Temelleri — grafik grameri, `aes()`, geometriler ve katmanlar.
3. Grafik Türleri — dağılım, karşılaştırma, ilişki ve zaman içindeki değişim.
4. Gruplandırma ve Facet Yapıları — estetik eşlemeler ve karşılaştırılabilirlik.
5. Ölçekler, Renkler ve Etiketler — eksenler, renk ve okunabilirlik.
6. Grafik Temaları ve Özelleştirme — temalar ve tutarlı görünüm.
7. Etkili ve Yayın Kalitesinde Grafikler — istatistiksel dürüstlük, algı ve erişilebilirlik.
8. Grafiklerin Dışa Aktarılması — `ggsave()`, biçim, boyut, çözünürlük ve yeniden üretilebilirlik.

**Temel ilke:** Görselleştirme yalnızca `ggplot2` fonksiyonlarını öğretmek değildir. Veriye doğru soru sormak, uygun görsel temsili seçmek, grafik yorumunu sınırlılıklarıyla açıklamak ve yanıltıcı sunumları ayırt etmek önemlidir. Öğretim akışı: **neden → ne zaman → nasıl → nasıl yorumlanır**.

**Veri yaklaşımı:** Küçük öğretici örnekler ve gerektiğinde Dünya Bankası WDI ülke verileri kullanılır. Gözlem yılı, eksiklikler, payda ve ölçü birimleri açıklanır. 2019 yalnızca ortak kesit veri setinin referans yılıdır; tüm panelin tek yılı değildir.

**Kaynakça:** Metinde yararlanılan kaynaklar Quarto atıflarıyla `references.bib` kaydına bağlanır; `references.qmd` korunur. Yeni eserler yalnızca doğrulandıktan ve tekrar kontrolü yapıldıktan sonra eklenir.

---

## Part V — Temel İstatistik ve İstatistiksel Çıkarım (tamamlandı ve yayımlandı)

**Kapsam ve teslim (18 Kasım 2026):** Dengeli yaklaşım uygulandı: sezgisel teori, basitten zora R uygulamaları, varsayımlar, simülasyonlar, grafikler ve doğrulanmış kaynaklar. On bölüm ve 81 çözümlü egzersiz tamamlandı; bütünleşik bilimsel ve teknik denetimin ardından Quarto kitabına eklendi.

1. 5.1 İstatistiksel Düşünmeye Giriş
2. 5.2 Betimsel İstatistikler
3. 5.3 Olasılık ve Olasılık Dağılımları
4. 5.4 Örnekleme ve Örnekleme Dağılımları
5. 5.5 İstatistiksel Tahmin ve Güven Aralıkları
6. 5.6 Hipotez Testlerinin Mantığı
7. 5.7 Ortalamaların Karşılaştırılması
8. 5.8 Parametrik Olmayan Testler
9. 5.9 Kategorik Veriler ve İlişki Analizi
10. 5.10 Bütünleşik İstatistiksel Analiz

Ayrıntılı öğretim planı, kapsam sınırları, kontrol listeleri ve kaynak stratejisi: [`PART_V_PLAN.md`](PART_V_PLAN.md).

On alt bölüm `main` dalına entegre edilerek GitHub Actions ile `gh-pages` dalına dağıtıldı. Yayın iş akışı başarılıdır. [`v0.5.0` GitHub Release](https://github.com/MFatihTuzen/r-programlama/releases/tag/v0.5.0) yayımlandı; sürüm etiketi `d26d1efd0cbb3593a71f649c721bee27dea4764b` commit'ini işaret ediyor.

## Part VI–VIII — Önerilen devam planı

Bu başlıkların sıralaması **taslak yol haritasıdır**; kapsamları Part V tamamlandıktan sonra ayrıca onaylanacaktır.

| Bölüm | Önerilen başlık | Ana odak |
|---|---|---|
| Part VI | Regresyon Analizi ve İstatistiksel Modelleme | Basit/çoklu regresyon, varsayımlar, tanılama, tahmin, yorum |
| Part VII | Tekrarlanabilir Analiz ve Raporlama | R proje düzeni, Quarto, parametreli raporlar, sürümleme, otomasyon |
| Part VIII | Uygulamalı Veri Analizi Projeleri | Uçtan uca araştırma sorusu, veri, analiz, kontrol, raporlama |

Zaman serileri, çok değişkenli yöntemler, makine öğrenmesi, Shiny ve daha ileri R mühendisliği gelecekte değerlendirilebilecek alanlardır; şimdilik bölüm numarası veya teslim taahhüdü verilmemiştir.

---

# Teknik Yol Haritası

Planlanan geliştirmeler:

- Bölüm bazlı sürüm yönetimi
- GitHub Releases kullanımı
- İç arama deneyiminin iyileştirilmesi
- SEO geliştirmeleri
- Daha zengin çapraz referanslar
- Daha fazla diyagram ve şema
- Görsellerin standartlaştırılması
- Kod bloklarının gözden geçirilmesi

### Açık veri üretim bakımı — WDI

Part V öncesi teknik inceleme, depodaki kayıtlı WDI CSV anlık görüntüleriyle `R/build_book_data.R` çıktıları arasında **şema ve dosya kapsamı uyumsuzlukları** saptadı. Güncel betik üzerinde kaynak düzeyinde kontrol edildi:

- Uzun tabloda kayıtlı `indicator_label` alanı üretilmiyor.
- `indicator_dictionary.csv`, `quality_report.csv` ve `build_summary.json` dosyaları betik tarafından yazılmıyor.
- Kayıtlı metadata ve seçim/kapsam raporlarındaki bazı alanlar betiğin mevcut çıktı şemasında yok.
- `data-raw/wdi_cache` dizini oluşturuluyor fakat betikte önbellek okuma/yazma uygulanmıyor.
- Yıl üst sınırı `Sys.Date()` ile değişiyor; güncel WDI kaynağı ve paket sürümü de zaman içinde değişebiliyor.

**Önerilen bakım:** Çıktı şemalarını kayıtlı veri ve gösterge sözlüğüyle eşleştir; veri sürümünü, referans yılını, WDI/API erişim tarihini ve paket sürümlerini sabitle veya kayıt altına al; üretim sonrasında kapsam, birim, anahtar benzersizliği ve dosya bütünlüğünü otomatik kontrol et. Mevcut yayımlanmış CSV dosyalarını bu işlem yapılmadan yeniden oluşturup üzerine yazma.

Tarihsel kaynak: [Part V öncesi değerlendirme arşivi](docs/archive/part-v-oncesi-degerlendirme-2026-11.md). Bu, doğrulanmış bir bakım ihtiyacıdır; Part V'in yayımlanmış analizlerinin hatalı olduğu anlamına gelmez.

---

# İçerik İlkeleri

Yeni eklenecek her bölümde mümkün olduğunca şu yapı korunacaktır:

- Giriş
- Kavramsal Açıklamalar
- Uygulamalı Örnekler
- İpuçları
- Sık Yapılan Hatalar
- Egzersizler
- Çözümler
- Bölüm Özeti

---

# Geri Bildirim

Kitap sürekli geliştirilmektedir.

Okuyuculardan gelen;

- hata bildirimleri,
- öneriler,
- eksik görülen konular,
- anlatım geliştirme fikirleri

gelecek sürümlerin planlanmasında dikkate alınacaktır.

---

# Sürüm Politikası

Her ana bölüm için sürüm hedefi bulunur; gerçek etiket ve GitHub Release durumları yayımlama sırasında ayrıca doğrulanır.

Örnek sürüm yapısı:

- v0.1.0 → R Programlamaya Giriş
- v0.2.0 → Veri Manipülasyonu ve Dönüştürme
- v0.3.0 → Veri Ön İşleme
- v0.4.0 → Veri Görselleştirme
- v0.5.0 → Temel İstatistik ve İstatistiksel Çıkarım (**etiket ve GitHub Release yayımlandı**)

İlk tam sürüm (v1.0.0), kitabın planlanan temel kapsamı tamamlandığında yayımlanacaktır.