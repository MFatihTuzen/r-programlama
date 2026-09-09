# Değişiklik Günlüğü

Bu dosya, R Programlama kitabının önemli sürümlerini ve bu sürümlerde tamamlanan çalışmaları özetler.

## v0.3.0 — 2026-09-09

### Bölüm III — Veri Ön İşleme

Kitabın üçüncü ana bölümü tamamlandı ve kitap navigasyonuna eklendi.

#### Yeni bölümler

- **Veri Ön İşlemeye Giriş:** Ham veriden analize ve modellemeye hazır veriye geçiş; temizleme, dönüştürme ve modellemeye hazırlama ayrımı.
- **Eksik Veriler ve İmputasyon:** MCAR, MAR ve MNAR mekanizmaları; silme, basit imputasyon, kNN, regresyon, MICE ve Rubin birleştirme kuralları.
- **Aykırı Gözlemler:** IQR, z-puanı, sağlam ölçüler, Mahalanobis ve Cook uzaklıkları ile duyarlılık analizi.
- **Veri Dönüşümleri:** Logaritma, karekök, ters, Box--Cox ve Yeo--Johnson dönüşümleri; katsayı ve geri dönüşüm yorumları.
- **Ölçeklendirme:** Min--max normalizasyonu, z-puanı standardizasyonu ve sağlam ölçeklendirme.
- **Özellik Mühendisliğine Giriş:** Aritmetik, etkileşim, polinom, zaman, kategorik ve toplulaştırılmış özellikler.
- **Veri Sızıntısı ve Doğru Ön İşleme İş Akışı:** Hedef, zaman, grup ve değerlendirme sızıntıları; eğitim/test ayrımı ve kat içi ön işleme.

#### Akademik ve teknik altyapı

- Yöntemlerin kuramsal gerekçeleri, varsayımları ve istatistiksel etkileri genişletildi.
- Matematiksel ifadeler Quarto uyumlu blok denklemler olarak düzenlendi.
- Otomatik bölüm numaralandırmasıyla çakışan elle numaralandırılmış alt başlıklar kaldırıldı.
- Kitap genelinde kullanılmak üzere BibTeX kaynakçası ve metin içi atıf altyapısı eklendi.
- Kitabın sonunda ortak Kaynakça bölümü oluşturuldu.
- Bölüm III örnekleri mevcut World Bank WDI tabanlı proje verileriyle bütünleştirildi.
- Quarto freeze çıktıları Bölüm III için oluşturuldu ve kitabın tamamı R 4.4.2 ile doğrulandı.

## v0.2.0 — 2026-08-11

### Bölüm II — Veri Manipülasyonu ve Dönüştürme

Kitabın ikinci ana kısmı tamamlandı ve kitap navigasyonuna eklendi.

#### Yeni bölümler

- **Veri Manipülasyonu:** `dplyr`, pipe kullanımı, sütun ve satır işlemleri, yeni değişken üretme, gruplama ve özetleme.
- **Veri Dönüştürme:** tidy data yaklaşımı, uzun ve geniş veri yapıları, `pivot_longer()`, `pivot_wider()` ve sütun ayırma/birleştirme işlemleri.
- **Veri Birleştirme:** anahtarlar, tablo ilişkileri, mutating ve filtering join türleri, kardinalite ve birleştirme kalite kontrolleri.

#### Veri altyapısı

- World Bank World Development Indicators (WDI) tabanlı ülke veri koleksiyonu eklendi.
- 217 ülke/ekonomiyi, 1960–2025 dönemini ve 29 seçilmiş göstergeyi kapsayan geniş ve uzun biçimli veri setleri oluşturuldu.
- Göstergelerin ortak kapsamasına göre 2019 referans yılı seçildi.
- Ülke metadatası, gösterge sözlüğü, kapsama, kalite ve üretim özeti dosyaları eklendi.
- Ana veri üretim süreci `R/build_book_data.R` ile belgelenerek yeniden üretilebilir hale getirildi.
- `data-raw/` alanı, yerel ham veri ve WDI önbelleği için tanımlandı.

#### Kitap ve proje yapısı

- `_quarto.yml` içinde Part II etkinleştirildi.
- Bölümlerdeki veri yollarının proje kökünden tutarlı biçimde çözülmesi için `execute-dir: project` eklendi.
- Quarto freeze çıktıları Part II bölümleri için güncellendi.
- Sürüm yönetimi için `CHANGELOG.md` ve `ROADMAP.md` eklendi.

## v0.1.0 — 2026-07-09

### Bölüm I — R Programlamaya Giriş

Kitabın ilk ana kısmı tamamlandı.

- R Programlama Hakkında
- R Çalışma Ortamı
- Temel Kullanım
- Veri Tipleri ve Veri Yapıları
- Fonksiyonlar
- Kontrol Yapıları ve Döngüler
- Tarih ve Saat İşlemleri
- Metin İşlemleri
- Apply Ailesi
- Verilerin İçe ve Dışa Aktarılması

Bu sürümde ayrıca GitHub Pages yayın yapısı, kitap navigasyonu, kapak, favicon ve temel proje varlıkları düzenlendi.
