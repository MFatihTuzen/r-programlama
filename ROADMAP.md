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

Her ana bölüm tamamlandıktan sonra:

- GitHub Release oluşturulacak,
- CHANGELOG güncellenecek,
- Git etiketi (Tag) oluşturulacak,
- duyuru paylaşımı yapılacaktır.

Kalite, geliştirme hızından daha önceliklidir.

---

# Tamamlanan Bölümler

## Part I — R Programlamaya Giriş

**Durum:** ✅ Tamamlandı

İçerik:

- R Programlama Hakkında
- R Çalışma Ortamı
- Temel Kullanım
- Veri Tipleri ve Veri Yapıları
- Fonksiyonlar
- Karar Yapıları ve Döngüler
- Tarih ve Saat İşlemleri
- Metin İşlemleri
- Apply Ailesi
- Verilerin İçe ve Dışa Aktarılması

Sürüm:

**v0.1.0**

---

# Planlanan Bölümler

## Part II — Veri Manipülasyonu ve Dönüştürme

**Durum:** 📖 Güncel repo `_quarto.yml` dosyasında etkin; metinlerin tamamlanma düzeyi ayrıca doğrulanacak.

Olası içerik:

- dplyr'e giriş
- select()
- filter()
- arrange()
- mutate()
- transmute()
- summarise()
- group_by()
- across()
- joins
- pivot_longer()
- pivot_wider()
- stringr
- forcats

---

## Part III — Veri Ön İşleme

**Durum:** 📖 Güncel repo `_quarto.yml` dosyasında yedi `.qmd` içerik yolu etkin; metinlerin tamamlanma düzeyi ayrıca doğrulanacak.

Olası içerik:

- Eksik veri
- Aykırı gözlemler
- Veri dönüşümleri
- Normalizasyon
- Standardizasyon
- Özellik mühendisliğine giriş

---

## Part IV — Veri Görselleştirme

**Durum:** 🧭 Kapsam taslağı hazır; depo incelemesi ve içerik onayı bekleniyor.

**Hedef sürüm:** v0.4.0 (henüz yayımlanmadı).

**Temel yaklaşım:** Görselleştirme, yalnızca `ggplot2` fonksiyonlarını kullanmak değildir. Veriyi görsel olarak düşünme, doğru grafik türünü seçme, dağılım ve ilişkileri anlama, belirsizliği ve yanıltıcı sunumları fark etme, bulguları açık ve etik biçimde aktarma becerisi kazandırılacaktır. Her konuda **neden, ne zaman, nasıl ve nasıl yorumlanır** soruları yanıtlanacaktır.

**Önerilen alt bölümler (nihai başlıklar Codex ön incelemesi sonrası onaylanacak):**

1. Veri Görselleştirmeye Giriş — amaç, tarihsel ve kavramsal arka plan, görsel algı, değişken türüne göre grafik seçimi, etik ilkeler.
2. `ggplot2` Temelleri — grafik grameri, veri–eşleme–geometri–katman ilişkisi, `aes()` ve `geom_*()`.
3. Grafik Türleri — dağılım, karşılaştırma, ilişki ve zaman içindeki değişim; histogram, yoğunluk, kutu, sütun, saçılım ve çizgi grafikleri.
4. Gruplandırma ve Facet Yapıları — görsel kanallar, `group`, `facet_wrap()`, `facet_grid()` ve karşılaştırılabilirlik.
5. Ölçekler, Renkler ve Etiketler — eksenler, ölçek dönüşümleri, okunabilir ve erişilebilir renkler, açıklayıcı başlıklar.
6. Grafik Temaları ve Özelleştirme — `theme()`, hazır temalar ve tutarlı tasarım.
7. Etkili ve Yayın Kalitesinde Grafikler — istatistiksel dürüstlük, yanlış yorumlar, görsel hiyerarşi, erişilebilirlik, açıklayıcı grafik anlatısı.
8. Grafiklerin Dışa Aktarılması — `ggsave()`, boyut, çözünürlük, dosya biçimi, yeniden üretilebilirlik.

**Veri yaklaşımı:** İlk kavramlarda küçük ve açıklanabilir örnekler; öğretici katkısı olduğunda ortak ülke düzeyindeki WDI veri seti (`countries.csv`, `country_indicators.csv`, `country_indicators_long.csv`). WDI veri yılının 2019 referans yılı olduğu, gözlem eksiklikleri ve kaynak bilgisi ilgili örneklerde açıklanacaktır. Veriler bölümün ön koşulu haline getirilmeyecektir.

**Bağımlılıklar:** Part II ve III'ün yayımlanma durumu gerçek depoda doğrulanmalı; henüz anlatılmamış `dplyr`, `tidyr` veya veri temizleme adımları sessizce varsayılmamalıdır.

**İş akışı:** (0) Salt-okunur depo incelemesi → (1) bölüm planının onayı → (2) tek `.qmd` dosyası bazında yazım → (3) R/Quarto testleri ve pedagojik denetim → (4) bütünlük kontrolü → (5) ayrıca onaylanmış Git/yayın işlemleri. Teknik ölçütler `BOOK_GUIDE.md` içinde tanımlanır.

**Kaynakça:** `references.bib` ve `references.qmd` mevcut repo altyapısının parçasıdır. Görselleştirmenin kuramsal temeli, grafik grameri, algı ve etik sunum konularında kullanılan güvenilir kaynaklar metinde atıflanacak; yeni kayıtlar mevcut `references.bib` dosyasına, tekrar oluşturulmadan, eklenecektir.

---

## İleri Bölümler

Bu aşamada kapsamı kesinleşmemiştir.

İlerleyen süreçte aşağıdaki konular değerlendirilebilir:

- Temel İstatistik
- Regresyon Analizi
- Tekrarlanabilir Raporlama
- Veri Analizi Uygulamaları

Bu başlıklar kesin içerik taahhüdü değildir.

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

Her ana bölüm tamamlandığında yeni bir sürüm yayımlanacaktır.

Örnek sürüm yapısı:

- v0.1.0 → R Programlamaya Giriş
- v0.2.0 → Veri Manipülasyonu ve Dönüştürme
- v0.3.0 → Veri Ön İşleme
- v0.4.0 → Veri Görselleştirme

İlk tam sürüm (v1.0.0), kitabın planlanan temel kapsamı tamamlandığında yayımlanacaktır.
