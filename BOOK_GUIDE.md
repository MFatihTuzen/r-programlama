# BOOK_GUIDE.md

# R Programlama Kitabı - Yazım ve Geliştirme Rehberi

Bu doküman, "R Programlama" kitabı üzerinde çalışırken izlenmesi gereken genel prensipleri tanımlar.

Amaç, kitabın bütün bölümlerinde ortak bir dil, yapı ve kalite standardı sağlamaktır.

---

# Kitabın Amacı

Bu kitap;

- R programlama dilini öğretmeyi,
- veri analizi becerisi kazandırmayı,
- istatistiksel düşünmeyi geliştirmeyi

amaçlayan tamamen Türkçe, ücretsiz ve açık kaynak bir kaynaktır.

Kitap yalnızca R fonksiyonlarını anlatan bir doküman değildir.

Her bölümde

"Neden?"
"Ne zaman?"
"Nasıl?"

sorularının cevapları verilmelidir.

---

# Hedef Kitle

Kitap;

- lisans öğrencileri
- lisansüstü öğrencileri
- veri analistleri
- istatistikçiler
- veri bilimi ile ilgilenenler
- akademisyenler
- kamu çalışanları

için hazırlanmıştır.

Okuyucunun temel bilgisayar kullanımı bildiği ancak R bilmediği varsayılır.

---

# Yazım Dili

Dil;

- sade
- doğal
- akıcı
- öğretici

olmalıdır.

Gereksiz akademik dil kullanılmamalıdır.

Kısa cümleler tercih edilmelidir.

Konular ezberletilmemeli, mantığı anlatılmalıdır.

---

# Bölüm Yapısı

Mümkün olduğunca her bölüm aşağıdaki yapıyı takip etmelidir.

1. Giriş
2. Temel Kavramlar
3. Ana Konular
4. Callout Kutuları
5. Örnekler
6. Sık Yapılan Hatalar
7. Egzersizler
8. Egzersiz Çözümleri
9. Bölüm Özeti

Her bölüm aynı standardı korumalıdır.

---

# Kod Yazım Kuralları

Kod örnekleri;

- okunabilir olmalıdır.
- gereksiz uzun olmamalıdır.
- her kod bloğu açıklanmalıdır.
- mümkün olduğunca satır satır yorumlanmalıdır.

Kod gösterildikten sonra

"Neden böyle yaptık?"

sorusu mutlaka cevaplanmalıdır.

---

# Örnek Seçimi

Örnekler;

- küçük,
- anlaşılır,
- öğretici

olmalıdır.

İlk bölümlerde mümkün olduğunca yapay veri kullanılmalıdır.

Gerçek veri yalnızca önemli bir katkı sağlıyorsa tercih edilmelidir.

---

# Callout Kutuları

Uygun yerlerde Quarto callout kutuları kullanılmalıdır.

Örneğin;

- Tip
- Note
- Warning
- Important

Ancak aşırı kullanılmamalıdır.

---

# Egzersizler

Egzersizler;

kolay → orta → zor

şeklinde ilerlemelidir.

Ezber değil düşünmeyi teşvik etmelidir.

---

# Bölüm Özeti

Her bölüm sonunda;

- öğrenilen kavramlar,
- önemli noktalar,
- sonraki bölümle bağlantı

özetlenmelidir.

---

# Anlatım Tarzı

Kitap boyunca;

"Şimdi bunu deneyelim."

"Bu durumda ne olur?"

"Bir örnek üzerinden ilerleyelim."

gibi okuyucuyla konuşan bir anlatım tercih edilmelidir.

---

# Kullanılmaması Gerekenler

- Gereksiz uzun teorik açıklamalar
- Çok büyük veri setleri
- Gereksiz matematiksel gösterimler
- İlk seviyede karmaşık tidy evaluation örnekleri
- Konudan bağımsız istisnalar

---

# Teknik Yapı

Kitap;

- Quarto Book
- GitHub Pages
- GitHub Desktop

altyapısı ile geliştirilmektedir.

Dosya yapısı korunmalıdır.

Yeni dosyalar mevcut klasör yapısına uygun hazırlanmalıdır.

---

# Geliştirme Yaklaşımı

Kitap yaşayan bir projedir.

Her ana bölüm tamamlandığında GitHub üzerinde yeni sürüm yayımlanacaktır.

Öncelik;

kalite

olmalıdır.

Bir bölümü hızlı bitirmek yerine doğru ve uzun yıllar kullanılabilecek şekilde hazırlamak hedeflenmelidir.

---

# ChatGPT'den Beklenenler

Yeni içerik üretirken;

- mevcut kitap dili korunmalıdır.
- önceki bölümlerle çelişilmemelidir.
- tekrar eden anlatımlardan kaçınılmalıdır.
- mümkün olduğunca önceki bölümlere atıf yapılmalıdır.
- gerekli olduğunda yeni öneriler sunulmalıdır.

Ama;

mevcut yapı sebepsiz yere değiştirilmemelidir.

---

# Veri Görselleştirme Bölümleri İçin Ek Standart (Part IV — Tamamlanan Referans Standart)

Bu ilkeler genel yazım standardına **ek** olarak uygulanır.

- Grafik çizmeden önce veri sorusu, grafik seçiminin gerekçesi ve beklenen mesaj açıklanır. Görselleştirmenin bilimsel düşünme, keşif, iletişim ve eleştirel değerlendirme açısından önemi anlatılır.
- Anlatım yalnızca `ggplot2` sözdizimine indirgenmez. Dağılım, ilişki, karşılaştırma, zaman içindeki değişim, görsel algı, etik sunum ve yanlış yorumlama ele alınır.
- Grafik türleri uygun veri türü ve analiz sorusuyla eşleştirilir; hangi koşullarda yanıltıcı olabilecekleri belirtilir. Korelasyon–nedensellik ayrımı ve eksen/ölçek etkisi gibi konular gerektiği yerde işlenir.
- Her öğretici örnekte **soru → veri → grafik tercihi → R kodu → ortaya çıkan grafiğin yorumu → sınırlılık** akışı tercih edilir.
- Grafiklerde başlık, eksen adları, birimler, lejant ve kaynak bilgisi gerektiği kadar verilir. Renk tek başına bilgi taşıyan araç olmamalı; erişilebilirlik ve gri tonlamada okunabilirlik gözetilir.
- Küçük ve basit veriyle kavram öğretilir; ortak WDI veri seti yalnızca pedagojik faydası belirginse kullanılır. Veri kaynağı, gözlem yılı, eksik değer ve ölçü birimleri açıklanır.
- Kod ve grafik aynı veriden üretilir; çıktılar çalıştırılarak doğrulanır. Sabit tohum (`set.seed()`) yalnızca rassallık içeren örneklerde kullanılır.
- Egzersizler yalnızca kod kopyalatmaz; grafik seçimini gerekçelendirme, grafiği yorumlama ve yanıltıcı gösterimleri eleştirme becerilerini ölçer.

## Her `.qmd` Teslimatının Kabul Koşulları

1. Öğrenme hedefleri, ön koşullar ve önceki bölümlerle bağlantı açıktır.
2. Kavramsal açıklamalar, kod örnekleri, grafik yorumları, sık hatalar, egzersizler, çözümler ve özet bulunur (konuya göre ölçülü biçimde).
3. R kodları uygun ortamda çalıştırılmış, oluşturulan grafikler kontrol edilmiş ve ilgili Quarto HTML çıktısı doğrulanmıştır. Test edilemeyen kısım açıkça raporlanır.
4. Görseller istatistiksel bakımdan doğru, okunaklı ve erişilebilir olacak biçimde gözden geçirilmiştir.
5. Gereksiz paketler, büyük veri dosyaları ve mevcut metinlerle tekrar eklenmemiştir.

## Akademik Kaynaklar ve Atıf Düzeni

- Kitabın mevcut atıf altyapısı korunur: kök `_quarto.yml` içindeki `bibliography: references.bib` ve `book.chapters` listesindeki `references.qmd`.
- Kullanılan dış kaynaklar (özellikle grafik grameri, veri görselleştirme kuramı, istatistiksel yorum, görsel algı ve grafik tasarımı hakkında) metnin uygun noktasında Quarto/Pandoc atıf biçimiyle, örneğin `[@kaynakAnahtari]`, gösterilir.
- Her yeni atfın bibliyografik kaydı mevcut `references.bib` dosyasına eklenir. Var olan kayıt ve atıf anahtarları korunur; aynı eser için yinelenen kayıt açılmaz.
- Bibliyografya kaydı güvenilir ve doğrulanabilir bilgilerle oluşturulur: yazar, başlık, yayın yılı, yayıncı/dergi, DOI veya kalıcı URL (varsa). Uydurma kaynak, DOI veya erişim tarihi yazılmaz.
- Paket belgeleri gibi teknik referanslar ile kuramsal/akademik iddiaların kaynakları ayrıştırılır. Her yeni bölümden sonra atıfların çözülmesi ve kaynakça listesinin Quarto çıktısında görünmesi doğrulanır.
- `references.bib` ve `references.qmd` dosyaları görülmeden bunların içeriği, biçemi veya mevcut kayıtları hakkında varsayım yapılmaz.

## Codex ile Güvenli Çalışma

- Yeni göreve başlarken **ilgili depo durumunu ve etkilenebilecek dosyaları önce incele**; tek seferlik Part IV hazırlık görevi artık geçerli değildir.
- İlk aşamada salt-okunur inceleme önerilir. Paket kurulumu, kapsamlı değişiklik, commit, push ve yayın için ayrı izin gerekir.
- Her görevde kapsam, dosya listesi, beklenen çıktı, test ve kaynakça kontrolü belirtilir. Mevcut bölüm düzeni ve tamamlanan dört ana bölüm korunur.
- Gerçek çalışma deposu kullanıcı tarafından seçilir; `D:\GitHub\r-programlama` yalnızca kullanıcının Windows ortamında geçerli olabilir.
- Var olan Git değişiklikleri ve atıf anahtarları korunur. Yeni bibliyografik kayıtlar doğrulanır, mükerrer eser eklenmez.
- `quarto render` başarısı ile tüm kodların bağımsız biçimde yeniden çalıştırılmış olması aynı şey değildir; `freeze: auto` kullanımı test raporunda dikkate alınır.

Öneriler kitabın genel konseptiyle uyumlu olmalıdır.


---

## Part V ve Sonrası İçin Anlatım Standardı (18 Kasım 2026)

- Bir alt bölüm, R fonksiyonlarının listesi olarak değil, cevaplanacak istatistiksel sorular ve öğrenme hedefleri etrafında kurulur.
- Terimler önce anlaşılır dille açıklanır; gerekli teori ve matematik sezgisel açıklamayı destekler, onun yerini almaz.
- Öğretim sırası: **soru → kavram → varsayım/teori → küçük örnek → R uygulaması → çıktı/grafik/simülasyon → yorum → sınır ve alternatifler → kaynaklar**. Her başlık için tüm unsurları zorlamak yerine öğretim ihtiyacına göre seç.
- R uygulamaları basitten zora sıralanır. Her kod parçasının açık amacı bulunur; ürettiği çıktı yorumlanmadan bırakılmaz. Tekrarlı veya dekoratif kod eklenmez.
- Özellikle istatistiksel çıkarımda örnekleme tasarımı, varsayımlar, belirsizlik, etki büyüklüğü, çoklu testler ve nedensellik sınırları doğru konumlarda belirtilir.
- Grafikler, simülasyonlar ve gerektiğinde özgün diyagramlar kavramı anlamayı gerçekten kolaylaştırdığı zaman kullanılır; simülasyon tohumları ve gerçek/sentetik veri ayrımı açıklanır.
- WDI ülke verilerinden elde edilen gözlemler otomatik olarak rastgele örneklem sayılmaz. Ülke karşılaştırmalarında gözlem yılı, eksikler, bağımlılık ve genelleme sınırları görünür olmalıdır.
- Akademik iddia için doğrulanabilir yöntemsel kaynak; R sözdizimi ve paket kullanımı için resmî teknik dokümantasyon kullanılır. `references.bib` ve Quarto içi atıflar korunur; doğrulanmayan kayıt eklenmez.
- Önceki Part I–IV kapsamı gereksiz tekrar edilmez; uygun olduğunda çapraz referans verilir. Regresyonun ayrıntılı modellemesi önerilen Part VI kapsamına bırakılır.
- Bölüm sonunda alıştırmaların çözümleri ve yalnız sayısal cevap değil gerekçeli istatistiksel yorum yer alır.
- Part V'in ayrıntılı çalışma taslağı `PART_V_PLAN.md` dosyasındadır. Taslak içerik, yayımlanmış veya test edilmiş bölüm olarak gösterilemez.