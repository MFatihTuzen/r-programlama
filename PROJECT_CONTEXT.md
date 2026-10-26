# PROJECT_CONTEXT.md

# R Programlama Kitabı

## Proje Hakkında

Bu proje, R programlama dili üzerine hazırlanmakta olan tamamen Türkçe, ücretsiz ve açık kaynak bir kitaptır.

Kitap yalnızca R programlama dilini öğretmeyi değil; veri analizi ve istatistiksel düşünmeyi uygulamalı örneklerle aktarmayı amaçlamaktadır.

Yayın adresi:

https://mfatihtuzen.github.io/r-programlama/

GitHub Repository:

https://github.com/MFatihTuzen/r-programlama

---

# Projenin Temel Hedefleri

- Türkçe ve güncel bir R kaynağı oluşturmak.
- Başlangıç seviyesinden ileri seviyeye kadar ilerleyen bir yapı kurmak.
- Teori ile uygulamayı birlikte sunmak.
- Gerçek problemlere yönelik örnekler hazırlamak.
- Sürekli güncellenen yaşayan bir kaynak oluşturmak.

---

# Kullanılan Teknolojiler

- R
- Quarto Book
- GitHub Pages
- GitHub Desktop
- Google Analytics
- CSS ile özelleştirilmiş tema

---

# Yayın Yapısı

Kitap GitHub Pages üzerinden yayınlanmaktadır.

Her değişiklik GitHub repository'sine gönderildikten sonra GitHub Actions tarafından otomatik olarak yayınlanmaktadır.

---

# Bölüm Yapısı

Kitap ana bölümler (Parts) halinde organize edilmektedir.

Her ana bölüm altında birden fazla bölüm bulunmaktadır.

Örnek yapı:

Part I
R Programlamaya Giriş

- R Programlama Hakkında
- R Çalışma Ortamı
- Temel Kullanım
- Veri Tipleri
- Fonksiyonlar
- Kontrol Yapıları
- Tarih ve Saat
- Metin İşlemleri
- Apply Ailesi
- Verilerin İçe ve Dışa Aktarılması

Sonraki ana bölümler de aynı mantıkla ilerleyecektir.

---

# Tamamlanan Çalışmalar

✓ GitHub Pages'e taşındı.

✓ Yeni repo yapısı oluşturuldu.

✓ README yeniden yazıldı.

✓ LICENSE eklendi.

✓ Google Analytics eklendi.

✓ Cookie Consent eklendi.

✓ Yeni favicon oluşturuldu.

✓ Yeni kapak tasarlandı.

✓ Bölümler yeniden organize edildi.

✓ İlk ana bölüm tamamlandı.

---

# Geliştirme Yaklaşımı

Bu kitap yaşayan bir projedir.

Yeni bölümler tamamlandıkça GitHub üzerinden yayınlanacaktır.

Her ana bölüm tamamlandığında yeni bir sürüm (Release) oluşturulacaktır.

---

# Öncelikler

Bu projede öncelik;

- doğruluk,
- açıklık,
- öğreticilik,
- sürdürülebilirlik

olacaktır.

---

# Güncel Geliştirme Odağı: Part IV — Veri Görselleştirme

`ROADMAP.md` Part IV kapsamının güncel planlama kaynağıdır. Görselleştirme, grafik üreten komutlardan ibaret görülmez; istatistiksel düşünme, görsel algı, doğru grafik seçimi, etik ve açıklayıcı iletişim temel öğrenme hedefleridir. Genel yazım ilkelerine ek ölçütler `BOOK_GUIDE.md` içindedir.

Part IV **henüz tamamlanmış veya yayımlanmış değildir**. Önerilen sekiz alt bölüm ve dosya isimleri ön inceleme sonucunda kesinleştirilecektir. Codex ilk aşamada gerçek repoyu salt-okunur inceleyip rapor sunacak; içerik ve teknik değişiklikler ayrı onaya tabi olacaktır.

Kullanıcının güncel repodan sağladığı `_quarto.yml` içinde Part II ve III etkindir; önceki proje kaynağı bu açıdan güncelliğini yitirmiştir. Ayrıca `project.execute-dir: project`, `bibliography: references.bib` ve `references.qmd` korunması gereken mevcut yapılandırmadır. Part II/III'ün içerik ve yayın durumu gerçek `.qmd` dosyaları görülerek doğrulanmalıdır.

Mevcut yerel geliştirme klasörü kullanıcının Windows ortamında `D:\GitHub\r-programlama` olarak bildirilmiştir. Bu yol başka bir Codex çalışma ortamında var sayılmamalı, depo konumu ve erişimi doğrulanmalıdır.

Kitabın içerik için kullanılabilecek ortak WDI veri dosyaları mevcuttur; bunların depodaki konumu ve yeniden üretilebilirliği ilk incelemede teyit edilecektir.

İçerik üretiminde hızdan çok kalite önemlidir.

---

# Hedef Kitle

Bu kitap;

- öğrenciler,
- akademisyenler,
- veri analistleri,
- istatistikçiler,
- veri bilimi ile ilgilenenler,
- kamu ve özel sektörde çalışan R kullanıcıları

için hazırlanmıştır.

---

# Dosya Yapısı

Proje Quarto Book standartlarını kullanmaktadır.

Ana dosyalar:

- _quarto.yml
- index.qmd
- chapters/
- styles.css
- images/
- README.md
- LICENSE

Dosya yapısı mümkün olduğunca korunmalıdır.

---

# Geliştirme İlkeleri

Yeni içerikler mevcut kitap diliyle uyumlu olmalıdır.

Mevcut yapı gereksiz yere değiştirilmemelidir.

Her yeni bölüm mevcut standartlara uygun hazırlanmalıdır.

Bu proje uzun vadeli olarak geliştirilecektir.
