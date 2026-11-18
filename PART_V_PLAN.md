# PART_V_PLAN.md — Part V İçerik ve Öğretim Taslağı

> **Durum:** 18 Kasım 2026 — Part V teması ve dengeli öğretim yaklaşımı üzerinde mutabakat var. Alt bölüm düzeni bir **tartışma ve geliştirme taslağıdır**, henüz yazılmış/teslim edilmiş kitap içeriği değildir.

## 1. Bölüm kimliği ve amaç

**Part V — Temel İstatistik ve İstatistiksel Çıkarım.** Hedef, okuyucuyu veri özetleme ve görselleştirmeden istatistiksel belirsizlik, tahmin, test ve eleştirel yoruma taşımak. Kitap yalnızca komutların nasıl çalıştığını göstermeyecek; *neden, ne zaman, hangi varsayımla, nasıl ve ne ölçüde güvenle yorumlanabileceğini* açıklayacak. Kod yığını ve istatistik test kataloğu oluşturulmayacak.

**Ön koşullar:** Part I–IV ile temel R, veri manipülasyonu, ön işleme ve görselleştirme; gerekli kavramlar kısa hatırlatma/çapraz referansla verilebilir.

## 2. Kazanımlar

Okuyucu bölüm sonunda (i) örneklem–anakütle–parametre–istatistik ayrımını yapar; (ii) dağılım ve değişkenliği özetler; (iii) örnekleme değişkenliği ve standart hatayı açıklar; (iv) aralık tahmini ve testleri doğru yorumlar; (v) yaygın grup karşılaştırmaları ve ilişkiler için yöntem seçimini gerekçelendirir; (vi) varsayım, belirsizlik, pratik önem ve çıkarım sınırlarını raporlar.

## 3. Alt bölüm taslakları

| No | Başlık | Asgari kavramlar | Öğretici R/görsel fikirleri |
|---|---|---|---|
| 5.1 | İstatistiksel Düşünmeye Giriş | Anakütle/örneklem; parametre/istatistik; betimleme/çıkarım; araştırma sorusu; gözlemsel/deneysel veri | Aynı veriden farklı sorular; çıkarımın kapsamını tartışma |
| 5.2 | Betimsel İstatistikler | Ortalama, medyan, mod; çeyreklikler, IQR, varyans, SS; çarpıklık ve aykırı değer etkisi | Küçük örneklerde hesap ve yorum; farklı dağılımların karşılaştırılması |
| 5.3 | Olasılık ve Olasılık Dağılımları | Olasılık, rassal değişken, beklenen değer; kesikli/sürekli; binom, Poisson, normal | Zar/olay benzetimleri; dağılım parametrelerinin etkisi; R'de d/p/q/r ailesi |
| 5.4 | Örnekleme ve Örnekleme Dağılımları | Rastgele örnekleme; yanlılık; örnekleme dağılımı; standart hata; MLT | Farklı n değerlerinde örneklem ortalamaları simülasyonu; ana kütle–örneklem ayrımı |
| 5.5 | İstatistiksel Tahmin ve Güven Aralıkları | Nokta/aralık tahmini; güven düzeyi ve kapsama; normal/t temelli aralık; bootstrap'a sezgisel giriş | Birden fazla aralığın kapsama simülasyonu; yanlış yorumların açıklanması |
| 5.6 | Hipotez Testlerinin Mantığı | H0/H1; test istatistiği; p-değeri; Tip I/II hata; güç, etki büyüklüğü | Sıfır hipotezi altında örnekleme dağılımı; anlamlılık–önem karşılaştırması |
| 5.7 | Ortalamaların Karşılaştırılması | Tek/iki örneklem; eşleştirilmiş–bağımsız; Welch t; ANOVA'ya giriş; varsayımlar, çoklu karşılaştırma | Test tercihini açıklama; güven aralığı ve etki büyüklüğü raporu |
| 5.8 | Parametrik Olmayan Testler | Sıra temelli karşılaştırmalar; Wilcoxon, Mann–Whitney, Kruskal–Wallis; yorum sınırları | Aynı soruda yöntem seçiminin gerekçesi; dağılım şekline dikkat |
| 5.9 | Kategorik Veriler ve İlişki Analizi | Çapraz tablo; ki-kare/Fisher; Pearson/Spearman korelasyonu; nedensellik ayrımı | Frekans ve ilişki örnekleri; etki ve belirsizlik yorumu |
| 5.10 | Bütünleşik İstatistiksel Analiz | Araştırma sorusu–veri–yöntem–varsayımlar–sonuç–sınırlılıklar | Küçük gerçekçi uygulama; gerekçeli kısa analiz raporu |

**Kapsam sınırları:** Regresyon modellemesi Part VI'ya; ileri olasılık ispatları, karmaşık örnekleme tasarımları, ayrıntılı Bayes çıkarımı ve çok değişkenli ileri testler başka olası kapsamlar olarak ayrılır. t/ki-kare/F dağılımları ilgili çıkarım veya test bağlamında ihtiyaç kadar ele alınabilir.

## 4. Her alt bölümün işlenişi

1. Öğrenme hedefi ve gerçek bir soruyla giriş; önceki Part'larla ilişki.
2. Kavramın günlük dille sezgisel açıklaması; terimlerin net tanımı.
3. Gerekli teori, varsayımlar ve makul ölçüde matematik; açıklanmayan sembol bırakmama.
4. Elle takip edilebilir küçük veri; ardından açıklamalı, basitten zora çalışan R örnekleri.
5. Öğretici katkısı olan grafik/simülasyon ve üretilen çıktıların istatistiksel yorumu.
6. Yanlış yorumlar, hangi durumlarda yöntemin uygun olmadığı, alternatifler ve sınırlılıklar.
7. Metin içi akademik kaynaklar, alıştırmalar (kolay→orta→zor), gerekçeli çözümler, özet.

Kod miktarı değil, kavramın anlaşılabilirliği ve örneklerin bilimsel doğruluğu kalite ölçütüdür.

## 5. Veri ve görselleştirme stratejisi

- İlk aşamada küçük, doğrulanabilir sentetik veriler; simülasyonda tohum ve deneme sayısı açık yazılır.
- Ortak WDI veri seti mevcut: `countries.csv`, `country_indicators.csv`, `country_indicators_long.csv`, `indicator_dictionary.csv`; 2019 kesit ve panel yılları birbirine karıştırılmaz.
- WDI ülke karşılaştırmaları açıklayıcı olabilir; rastgele örnekleme varsayımı yoksa klasik çıkarımın genellenebilirliği iddia edilmez.
- Grafikler istatistiksel mekanizmayı açıklar; önceki ggplot2 öğretiminin tekrarı yapılmaz.

## 6. Kaynakça ve doğrulama

- Önce mevcut `references.bib` ve ilgili `.qmd` atıfları kontrol edilir; yeni eserler mükerrer eklenmez.
- Aday temel kaynaklar (bibliyografik ayrıntıları içerik yazımında doğrulanacak): OpenIntro Statistics; ModernDive / Statistical Inference via Data Science; R'nin `stats` resmî belgeleri; seçilen konular için uygun metodoloji literatürü.
- Kaynak sadece kaynakçada değil, desteklediği iddianın yanında Quarto/Pandoc `[@anahtar]` biçiminde bulunur.
- Simülasyon ve formüller matematiksel/statistiksel bakımdan, kodlar temiz oturumda, ilgili `.qmd` HTML çıktısı Quarto ile test edilir. `freeze: auto` nedeniyle tam render, tüm kodların yeni baştan çalıştırıldığı anlamına gelmez.

## 7. Yazım öncesi karar ve üretim sırası

1. Bu taslaktaki alt başlıkları, gerekirse birleştirme/ayırma ile kesinleştir.
2. 5.1–5.4 için kavram–örnek–görsel–kaynak eşlemesi oluştur.
3. 5.5–5.6 için çıkarım öğretimi ve yanlış yorum kontrol listesini netleştir.
4. 5.7–5.10 için test kapsamı ve bütünleşik veri senaryosunu sınırla.
5. Gerçek depoyu salt-okunur incele; mevcut içerik ve bibliyografyayla çakışma kontrol et.
6. Bölümleri aşamalı yaz, test et, çıktıları yorumla; onay sonrası `_quarto.yml` ve proje belgelerini güncelle.
7. Commit/push/Release gibi işlemler ancak açık kullanıcı onayıyla gerçekleştirilir.

## 8. Sonraki ana bölümler — öneri, kesinleşmiş içerik değil

- **Part VI:** Regresyon Analizi ve İstatistiksel Modelleme.
- **Part VII:** Tekrarlanabilir Analiz ve Raporlama.
- **Part VIII:** Uygulamalı Veri Analizi Projeleri.
- Daha ileri başlıklar: zaman serileri, çok değişkenli yöntemler, makine öğrenmesi, Shiny, R mühendisliği (ileride değerlendirilecek).

**Durum notu:** Bu dosya bir planlama belgesidir. Part V `.qmd` dosyaları henüz üretilmemiştir; `_quarto.yml` yalnızca dört tamamlanmış ana bölümü içerir. `v0.5.0` gelecekteki hedef adı olabilir, yayımlanmış sürüm değildir.