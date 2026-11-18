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

`main` dalına gönderilen değişikliklerde yayın iş akışı tetiklenir. İş akışı elle de başlatılabilir.

---

# Güncel Kitap Kapsamı

Geliştirme dalında **5 ana bölüm ve 38 alt bölüm** bulunur. GitHub Pages sürümü Part I–IV kapsamındadır:

| Ana bölüm | Alt bölüm sayısı |
|---|---:|
| I — R Programlamaya Giriş | 10 |
| II — Veri Manipülasyonu ve Dönüştürme | 3 |
| III — Veri Ön İşleme | 7 |
| IV — Veri Görselleştirme | 8 |
| V — Temel İstatistik ve İstatistiksel Çıkarım | 10 |

Part IV görselleştirmenin önemini, uygun grafik seçimini, `ggplot2` uygulamasını, istatistiksel yorumun sınırlarını ve etik görsel iletişimi birlikte işler. README'ye göre Part IV'te **51 çözümlü egzersiz** bulunmaktadır.

# Tamamlanan Çalışmalar

- GitHub Pages ve GitHub Actions tabanlı yayın düzeni kuruldu.
- Kitap dört ana bölümle GitHub deposuna aktarıldı.
- Kullanıcı kitabı render edip GitHub'a gönderdiğini bildirdi.
- Ortak Quarto kaynakçası `references.bib` ve `references.qmd` üzerinden kuruldu.
- Özel CSS, kapak, favicon ve Google Analytics yapılandırması mevcut.

**Dikkat:** İçeriklerin GitHub'a gönderilmesi ile Git etiketi / GitHub Release oluşturulması ayrı işlemlerdir. `v0.4.0` Release durumu doğrulanmadı.

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

# Güncel Geliştirme Odağı: Kitap Bakımı ve Sonraki Kapsam

Part V’in on alt bölümü yazıldı, bilimsel ve editöryal denetimi tamamlandı ve içerik geliştirme dalındaki Quarto kitap sırasına eklendi. GitHub Pages yayını ayrı onay bekliyor. Öğretim planı `PART_V_PLAN.md` dosyasında, Part VI–VIII için önerilen kapsam `ROADMAP.md` dosyasındadır.

İçerik geliştirmede `BOOK_GUIDE.md` bağlayıcı yazım ve kaynakça standardıdır. Yeni çalışmadan önce gerçek repo durumu, mevcut `.qmd` dosyaları, atıf anahtarları ve çalışma ağacı incelenir. Yapılan işler Codex'te olsa bile kullanıcı onayı olmadan commit/push/Release yapılmaz.

Güncel `_quarto.yml` ayarları: `project.execute-dir: project`, `bibliography: references.bib`, `references.qmd`, beş etkin Part ve `freeze: auto`. Bunlar gerekçesiz değiştirilmez.

Kullanıcının yerel Windows depo yolu `D:\GitHub\r-programlama` olarak bildirilmiştir; bulut ortamlarında bu konumun var olduğu varsayılmaz.

Ortak WDI verileri `data/` altında, üretim betikleri `R/` altında tutulur; referans yıl, eksik değer ve göstergelerin tanımları örneklerde belirtilir.

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