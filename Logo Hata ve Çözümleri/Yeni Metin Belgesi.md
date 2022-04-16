Logo E-Defter Hata kodlarının Çözümleri
 

XXXXXXXXXXXXXXX nolu fiş :gl-cor:account elemanı içerisinde gl-cor:accountMainDescription zorunlu bir elemandır.
–          İlgili fiş içerisinde girilen hesabın bağlı bulunduğu ana hesabın açıklamasının boş olmasından yada alt–üst hesap bağlantısının hatalı olmasından kaynaklanıyor olabilir.
XXXXXXXXXXXXXXX nolu fiş :gl-cor:documentType elemanının değeri ‘invoice’ (fatura) olması durumunda gl-cor:documentNumber ve gl-cor:documentDate elemanlarıda olmalıdır.
–          Hata verilen mahsup fişi muhasebeleştirme ile geldi ise ve muhasebe fişi içerisinden belge F9 belge detayına ulaşılamıyor ise ticari sistemde birden fazla fiş ile bağlantısı olabilir.
–          Birden fazla fiş toplu muhasebeleştirme ile bir mahsup fişi oluşturulmuş olabilir.
–          Kaynak fiş kopyalandığında ACCFICHEREF referans bilgisi de kopyalanma sorunu nedeni ile aynı ACCFICHEREF referanslı birden fazla kayıt olabilir.
–          Kaynak fişi olan kayıtlarda e-defter parametrelerinde belge numarası ve tarihi alanları belge yada düzenleme tarihi alanından okunacak parametreleri seçilip olup kaynak fişte bu alanlar boş olabilir.
–          EBOOKDETAILDOC tablosunda hatalı satırı olabilir, aşağıdaki kontrol sorguları ile kontrol edilebilir.
SELECT * FROM  LG_001_07_EBOOKDETAILDOC WHERE DOCUMENTDATE IS NULL AND LEN(DOCUMENTNR)<1 AND (UNDOCUMENTED=0 OR UNDOCUMENTED IS NULL)
SELECT * FROM LG_001_07_EBOOKDETAILDOC WHERE  (DOCUMENTDATE IS NULL AND LEN(DOCUMENTNR)<1)
AND EMFICHEREF>1 AND EMFICHEREF IN (SELECT LOGICALREF FROM LG_001_07_EMFICHE WHERE MODULENR<>0 AND  MONTH(DATE_)=1)
XXXXXXXXXXXXXXX nolu fiş :gl-cor:documentType eleman değerinin ‘other’ olması durumunda gl-cor:documentTypeDescription zorunlu bir elemandır ve değeri boşluk olmamalıdır.
–          Hata verilen mahsup fişi muhasebeleştirme ile geldi ise ve muhasebe fişi içerisinden belge F9 belge detayına ulaşılamıyor ise ticari sistemde birden fazla fiş ile bağlantısı olabilir.
–          Birden fazla fiş toplu muhasebeleştirme ile bir mahsup fişi oluşturulmuş olabilir.
–          Kaynak fiş kopyalandığında ACCFICHEREF referans bilgisi de kopyalanma sorunu nedeni ile aynı ACCFICHEREF referanslı birden fazla kayıt olabilir.
–          Kaynak fişi olan kayıtlarda e-defter parametrelerinde belge numarası ve tarihi alanları belge yada düzenleme tarihi alanından okunacak parametreleri seçilip olup kaynak fişte bu alanlar boş olabilir.
–          EBOOKDETAILDOC tablosunda hatalı satırı olabilir, aşağıdaki kontrol sorguları ile kontrol edilebilir.
SELECT * FROM  LG_001_07_EBOOKDETAILDOC WHERE DOCUMENTDATE IS NULL AND LEN(DOCUMENTNR)<1 AND (UNDOCUMENTED=0 OR UNDOCUMENTED IS NULL)
SELECT * FROM LG_001_07_EBOOKDETAILDOC WHERE  (DOCUMENTDATE IS NULL AND LEN(DOCUMENTNR)<1)
AND EMFICHEREF>1 AND EMFICHEREF IN (SELECT LOGICALREF FROM LG_001_07_EMFICHE WHERE MODULENR<>0 AND  MONTH(DATE_)=1)
XXXXXXXXXXXXXXX nolu fiş : gl-cor:entryHeader elemanı en az iki gl-cor:entryDetail elemanı içermelidir.
–          Muhasebe fişinin içerisi boş olabilir yada borç – alacak tutarı 0,01 altında bir değer olabilir
XXXXXXXXXXXXXXX nolu fiş : gl-bus:totalDebit elemanının değeri gl-bus:totalCredit elemanının değerine eşit olmalıdır.
–          Muhasebe fişinde borç alacak tutarı yani EMFICHE tablosundaki DEBIT – CREDIT toplamı uyuşmuyor olabilir.
XXXXXXXXXXXXXXX nolu fiş : gl-bus:totalCredit değeri, gl-cor:entryDetail elemanı içerisindeki gl-cor:debitCreditCode değeri ‘C’ ve ya ‘credit’ olan gl-cor:amount değerlerinin toplamına eşit olmalıdır.
XXXXXXXXXXXXXXX nolu fiş : gl-bus:totalDebit değeri, gl-cor:entryDetail elemanı içerisindeki gl-cor:debitCreditCode değeri ‘D’ ve ya ‘debit’ olan gl-cor:amount değelerinin toplamına eşit olmalıdır.
–          Muhasebe fişi satırındaki borç tutarı ile fişin toplamındaki borç tutarı yada Muhasebe fişi satırındaki alacak tutarı ile fişin toplamındaki alacak tutarı uyuşmuyor olabilir.
–          E-Defter oluşturan kullanıcının bazı hesaplara yetkisi olmadığı için deftere ilgili hesap satırı yansımamış olabilir, muhakkak defteri Logo yetkisi olan bir kullanıcı ile oluşturulması gerek.
–          Muhasebe fişi içerisindeki ilgili hesapların alt – üst hesap bağlantıları hatalı olabilir, ekteki sorgu ile alt – üst hesap bağlantıları düzeltilebilir. (Özellikle ana hesapta SUBACCOUNTS bilgisi 0 olabilir)
XXXXXXXXXXXXXXX nolu fiş :gl-cor:lineNumber müteselsil bir değere sahip olmalıdır.
–          Muhasebe fiş satırlarındaki GLOBLINENO bilgisi sıralı gitmemiş olabilir, yevmiye madde numarala tekrar yapıldığında sorun düzelecektir. Sorun düzelmemesi durumunda ekteki sorgu ile  GLOBLINENO tekrar sıralanabilir.
Bir üstte yaşanan hataya ek olarak alınıyor ise;
–          Yevmiye yada defteri kebir XML’ine eksik satır (EntryDetail) oluştu ise hataya neden olabilir.
–          E-Defter oluşturan kullanıcının bazı hesaplara yetkisi olmadığı için deftere ilgili hesap satırı yansımamış olabilir, muhakkak defteri Logo yetkisi olan bir kullanıcı ile oluşturulması gerek.
–          Muhasebe fişi içerisindeki ilgili hesapların alt – üst hesap bağlantıları hatalı olabilir, ekteki sorgu ile alt – üst hesap bağlantıları düzeltilebilir. (Özellikle ana hesapta SUBACCOUNTS bilgisi 0 olabilir)
XXXXXXXXXXXXXXX  nolu fiş :gl-cor:amount elemanı 0’dan büyük bir değer almalıdır.
XXXXXXXXXXXXXXX nolu fiş :gl-cor:amount zorunlu bir elemandır.
–          Muhasebe fişi satırındaki ilgili hesaba ait tutar sıfır yada sıfırdan daha küçük bir tutarlı olabilir.
XXXXXXXXXXXXXXX  nolu fiş :gl-cor:account elemanı içerisinde gl-cor:accountMainID zorunlu bir elemandır ve en az 3 karakter olmalıdır.
–          Muhasebe fişi içerisindeki ilgili hesapların bağlı bulunduğu ana hesap 3 karakterden az (10.001.01 gibi) yada 4 karakterden fazla (1000.001.01 gibi)  olabilir.
–          Muhasebe fişi içerisindeki ilgili hesapların bağlı bulunduğu ana hesap bağlantısında sorun ola bilir.
XXXXXXXXXXXXXXX  nolu fiş :gl-cor:lineNumberCounter zorunlu bir elemandır.
–          İlgili fişe ait yevmiye madde numarası bulunmamaktadır.
XXXXXXXXXXXXXXX  nolu fiş : gl-cor:enteredBy zorunlu bir elemandır.
XXXXXXXXXXXXXXX  nolu fiş : gl-cor:enteredBy elemanı en az iki karakter olmamalıdır.
–          Muhasebe fişini ekleyen kullanıcı tanımına ait sistem işletmenindeki kullanıcı tanımı üzerinde Adı, soyadı alanı girilmemiş yada ekleyen kullanıcı (EMFICHE tablosundaki CREATE_BY) ID bilgisi CAPIUSER tablosunda bulunmayabilir.
Aşağıdaki sorgular ile kontrol edilebilir;
–Fişi ekleyen kullanıcının CAPIUSER tablosunda eşitliği var mı kontrol eder;
SELECT LOGICALREF FROM LG_001_07_EMFICHE WHERE CAPIBLOCK_CREATEDBY NOT IN (SELECT NR FROM L_CAPIUSER)
— Fişi ekleyen kullanıcının CAPIUSER tablosunda eşitliği yok ise Logo kullanıcısı ile eşler;
UPDATE LG_001_07_EMFICHE SET  CAPIBLOCK_CREATEDBY=(SELECT NR FROM L_CAPIUSER WHERE NAME LIKE ‘LOGO’)
WHERE LOGICALREF IN (SELECT LOGICALREF FROM LG_001_07_EMFICHE WHERE CAPIBLOCK_CREATEDBY NOT IN (SELECT NR FROM L_CAPIUSER))
— Muhasebe fişlerini ekleyen kullanıcıların sistem işletmeninde Adı – Soyadı girilmemiş olanları listeler
select USERNAME,USERSURNAME,* from L_CAPIUSER WHERE (LEN(USERNAME)<1 OR LEN(USERSURNAME)<1) AND NR IN (SELECT CAPIBLOCK_CREATEDBY FROM LG_002_01_EMFICHE
GROUP BY CAPIBLOCK_CREATEDBY)
gl-cor:periodCoveredEnd elemanı gl-cor:periodCoveredStart elemanından büyük ve ya eşit olmalıdır.
–          Oluşan Yevmiye Ve Büyük Defter dosyaları birden fazla (Parçalı) oluştuğu durumda yaşanan “gl-cor:periodCoveredEnd elemanı gl-cor:periodCoveredStart elemanından büyük ve ya eşit olmalıdır.” Hatası düzeltildi.