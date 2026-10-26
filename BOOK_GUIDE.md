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

# Veri Görselleştirme Bölümleri İçin Ek Standart (Part IV)

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

- İlk görev **salt-okunur depo incelemesi** olmalıdır; izin alınmadan ortam kurulumu, bağımlılık yükleme, dosya düzenleme, commit, push veya yayın yapılmaz.
- Her görevde izin verilen dosyalar, beklenen çıktı, testler ve değiştirilmemesi gereken alanlar belirtilir. Bir seferde bir `.qmd` bölümünün yazılması tercih edilir.
- Gerçek çalışma deposu kullanıcı tarafından seçilir; önceki Windows yolu (`D:\GitHub\r-programlama`) yalnızca yerel makinede geçerli olabilir ve Codex ortamında kendiliğinden erişilebilir sayılmaz.
- Codex mevcut Git değişikliklerini korur; ön incelemeden sonra kullanıcı onayı bekler.

Öneriler, kitabın genel konseptiyle uyumlu olmalıdır.
