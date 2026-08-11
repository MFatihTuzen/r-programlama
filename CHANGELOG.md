# Değişiklik Günlüğü

Bu dosya, R Programlama kitabının önemli sürümlerini ve bu sürümlerde tamamlanan çalışmaları özetler.

## v0.2.0 — 2026-08-11

### Part II — Veri Manipülasyonu ve Dönüştürme

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

### Part I — R Programlamaya Giriş

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
