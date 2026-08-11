# Ham veri alanı

Bu klasör, kitap veri setleri yeniden oluşturulurken kullanılan geçici ham veri ve yerel önbellek dosyaları için ayrılmıştır.

`R/build_book_data.R` çalıştırıldığında `data-raw/wdi_cache/` klasörünü oluşturur. İndirilen veya önbelleğe alınan ham dosyalar sürüm kontrolüne eklenmez; yayımlanmaya hazır, temizlenmiş veri setleri `data/` klasöründe tutulur.

Temel ayrım şöyledir:

- `data-raw/`: geçici ham veri ve yerel önbellek,
- `R/`: veri üretim ve dönüştürme betikleri,
- `data/`: kitap bölümlerinde doğrudan kullanılan yayımlanabilir veri dosyaları.
