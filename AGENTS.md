# Codex Çalışma Talimatları — R Programlama Kitabı

Bu dosya, `MFatihTuzen/r-programlama` deposunda çalışan Codex için kalıcı çalışma kurallarını tanımlar. Bu depo Türkçe, açık kaynak bir **Quarto Book** projesidir.

## 1. Önce incele

- İşe başlamadan önce `_quarto.yml`, `README.md`, `BOOK_GUIDE.md`, `ROADMAP.md`, `PROJECT_CONTEXT.md` ve görev Part V ile ilgiliyse `PART_V_PLAN.md` dosyalarını oku.
- İlgili mevcut `.qmd` bölümlerini, `references.bib`, `references.qmd`, veri sözlüğünü, uygun örnek kodları ve Git çalışma durumunu incele.
- `main` dalında bulunan dört ana bölümün mevcut yapısını esas al; varsayımsal dosya adları veya klasörler üretme.
- Önceki bölümlerde açıklanan kavramları yeniden uzun uzun anlatmak yerine uygun Quarto çapraz referansları ver; hedef dosyadaki başlık/etiketi doğrula.

## 2. Kapsam ve dosya düzeni

- Kullanıcının belirlediği görev kapsamıyla sınırlı kal; ilgisiz dosyaları veya tamamlanan Part I–IV içeriğini değiştirme.
- Mevcut klasör ve dosya adlandırma örüntüsünü koru. Yeni Part V bölümlerini, mevcut `chapters/04-veri-gorsellestirme/` vb. örneklerini inceledikten sonra uyumlu bir `chapters/05-temel-istatistik/` dizininde tasarla.
- `_quarto.yml`, yayın iş akışları, CSS, site metadata veya ortak veri dosyalarını gerekçesiz değiştirme.
- `project.execute-dir: project`, `bibliography: references.bib`, `references.qmd` ve `freeze: auto` davranışını dikkate al.
- Part V henüz planlama aşamasındadır. Yazılmamış içerikleri tamamlanmış gibi gösterme; `v0.5.0` sürümü henüz yayımlanmadı.

## 3. Yazım ve pedagojik standart

- Kitap dili Türkçe, bilimsel olarak doğru, açık ve doğal olmalı; kavramları okuyucunun anlayabileceği örneklerle açıkla.
- Bölümün ana örgüsü **araştırma sorusu → sezgisel kavram → gerekli teori/varsayım → küçük örnek → basitten zora R uygulaması → çıktı, grafik veya simülasyon → yorum → sınırlılık → kaynaklar** yaklaşımını izlesin. Her başlığı zorunlu kalıp gibi kullanma.
- Kod kataloğu oluşturma; her R örneğinin öğretici gerekçesini, beklenen/elde edilen çıktıyı ve istatistiksel yorumunu açıkla.
- Gerekli formülleri eksiksiz tanımla, her sembolü açıkla. Teoriyi yüzeysel geçme; gereksiz ileri matematikle metni de boğma.
- Grafik ve simülasyon yalnızca kavramı gerçekten açıklıyorsa kullanılmalı; rastgelelik içeren örneklerde `set.seed()`, tekrar sayısı ve sentetik/gerçek veri ayrımı belirtilmeli.
- Veriyle ilgili çıkarımlarda örnekleme ve varsayımların sınırlarını, belirsizliği, etki büyüklüğünü ve nedensellik sorunlarını dürüstçe belirt.
- Egzersizleri kolaydan zora yaz; çözümlerde yalnızca kod değil, yöntemin gerekçesi ve sonuçların yorumu bulunsun.

## 4. Veri, atıf ve bibliyografya

- Önce mevcut `data/` ve `R/` dizinlerini incele. WDI verilerini kullanırken yıl, birim, eksiklikler ve veri kapsamını açıkla; ülke verilerini otomatik olarak olasılıklı örneklem sayma.
- İddialar için güvenilir akademik kaynaklar, R işlev ve paketleri için resmî teknik belgeler kullan. Yeni kaynakların yazar, tarih, başlık ve DOI/URL bilgilerini doğrula; uydurma referans ekleme.
- Kaynaklar metinde Quarto/Pandoc `[@atıfAnahtarı]` biçiminde gösterilmeli; `references.bib` içinde varsa aynı eser için ikinci kayıt açılmamalı.
- `references.qmd` ve var olan atıf anahtarlarını koru.

## 5. Test ve teslim

- Değişiklikleri tamamladıktan sonra ilgili R kodlarını mümkünse temiz oturumda çalıştır; gerekli Quarto render/testlerini dene ve gerçek sonucu raporla.
- `freeze: auto` nedeniyle başarılı tam kitap render'ını bütün kodların yeniden çalıştığına kanıt sayma.
- Çalıştırılamayan kod, eksik bağımlılık, çözümlenemeyen atıf ve render sorunlarını açıkça belirt; doğrulanmamış testlere "başarılı" deme.
- Sonuç raporunda değişen dosyaları, içerik kararlarını, kaynakları, test sonuçlarını ve açık kalan sorunları belirt.
- Önceden var olan Git değişikliklerini koru; `main` dalına doğrudan commit/push, PR merge, GitHub Release ve yayınlama yapma. Kullanıcıdan açık talimat gelmeden bu işlemlere geçme. Ayrı dalda yapılan değişikliklerin inceleme için sunulması esastır.
- Görev yalnızca **salt-okunur inceleme** ise dosya değiştirme, paket kurma, commit veya push yapma; önce bulguları raporla.

Bu talimatlar `BOOK_GUIDE.md` ve `PART_V_PLAN.md` içindeki daha ayrıntılı içerik ilkeleriyle birlikte okunmalıdır.
