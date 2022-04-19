	Temel Metin Değiştirme
Temel metin değiştirme görev konuları, e-posta mesajları ve konuları ve süreç kopya tanımları gibi yerlerde kullanılır. İşlem verileri metin içinde isminin başına ve sonuna yüzde işareti konularak kullanılabilir.
Örnek: Sipariş # %siparis_numarasi% metin değiştirme uygulandığında Sipariş # 10202 olarak görülür.
İleri İfadeler
Diziler
Dizilerin veya harflerden oluşan dizilerin başına ve sonuna tırnak işareti konulmalıdır. Örnek olarak, “ilk isminiz “ + %ilk% + “. Teşekkür ederim”
Karşılaştırma İşlemleri
Karşılaştırma süreçisi esas olarak karar ifadelerinde kullanılır. İki sayının, tarihin veya dizinin eşitliği veya sırası karşılaştırılabilir. “==” eşitliği kontrol eder, “!=” karşılaştırılan öğelerin birbirine eşit olmadığını doğrular. “Küçüktür” (<), “büyüktür” (>), “küçük veya eşittir” (<=) ve “büyük veya eşittir” (>=), mevcut olan karşılaştırma süreçleridir.
Rakamlar değere göre sıralanır, diziler harf sırasına göre ve tarihler de kronolojik olarak sıralanır.
 
Matematiksel İşlemler
Standart matematik süreçler sırasıyla toplama, çıkarma, çarpma ve bölme süreci için “+”, “-“, “*”, ve “/” kullanılarak yapılabilir.
Fonksiyonlar
Bütün fonksiyonlar süreç için gerekli olan değerlerin herhangi birisinin veri öğesiyle değiştirilmesine olanak sağlar. Örneğin; iki değerden büyük olanını getirmek için max(1000,%talep_tutari%) belirleyebilirsiniz.
Ayrıca C#' ta tanımlanmış, Hesapla bileşeni içerisinde kullanabileceğiniz, aşağıdaki fonksiyonları da kullnabilirsiniz.
Now ()
Now() şimdiki eşit olan tarih değerini verir.
 

Length(string)
Parametre olarak gönderilen string değişkenin karakter sayısını döndüren fonksiyondur.
DayDiff(date1, date2)
Parametre olarak gönderilen iki tarih arasındaki gün farkını verir.
initiator()
Süreci başlatan kullanıcının adı ve soyadını döndüren fonksiyondur.
Counter(CounterName)
Counter fonksiyonu bir sayaç görevi üstlenir. Sayaçlar; fatura numaraları, seri numaraları, vs. gibi sıralı numaralar üretmek için kullanılır. Her seri, bir dizi değer parametresi ile belirtilir.
 Bir seri numarası üretmek için sayaç (“seri”) belirleyebilirsiniz. Bu ifadeye her başvurduğunuzda, sonuncusundan bir sayı büyük olan bir rakamı geri verir.
CounterEx(CounterName, IncrementBy, MinValue)
CounterEx fonksiyonu, benzersiz sayılar oluşturmada size biraz daha esneklik sağlar. CounterEx’in ilk parametresi seri ismini (Counter fonksiyonu ile aynı) belirten bir dizidir. İkinci parametre, sayacın ne kadar arttırılacağını belirtir (değeri azaltmak için negatif bir sayı da olabilir). Üçüncü parametre, minimum başlangıç değerini gösterir.    
initiatorID()
Süreci başlatan kullanıcının ID numarasını döndüren fonksiyondur.
instanceID()
Başlamış olan sürece ait ID numarasını döndüren fonksiyondur.
LastTaskCompletedBy()
Görevi son tamamlayan kişinin ID numarasını döndüren fonksiyondur.
   
GetUsername(userid)
Parametre olarak gönderilen userid değerine göre kullanıcının sistemde kayıtlı olan kullanıcı adını döndüren fonksiyondur.
FindSupervisor(userid)
Kullanıcının doğrudan bağlı olduğu amirini arama girişiminde bulunur. userid parametresi, Assignment türünde bir Veri Öğesi olmalıdır. Fonksiyonun geri döndürdüğü değer aynı zamanda Assignment tipi Veri Öğesinde de saklanır.
CloneLineItemTable(table)
Parametre olarak gönderilen LineItemTable türündeki veri elementinin tüm özellikleri ile kopyasını oluşturur. Fonksiyonun geri döndürdüğü değer yine LineItemTable türüne atanmalıdır.
FindPrimaryGroup(userid)
fonksiyonu, bir grup kimlik (ID) numarasını (görevlendirme veri öğesinden alınan) grup veya kullanıcı isminin metin versiyonuna dönüştürür.
 
GetLineItemRowCount(table)
Parametre olarak gönderilen LineItemTable veri türündeki tablonun satır sayısını döndüren fonksiyondur. Numeric veri türünde bir değişkene atama yapılmalıdır.
GetLineItemColCount(table)
Parametre olarak gönderilen LineItemTable veri türündeki tablonun kolon sayısını döndüren fonksiyondur. Numeric veri türünde bir değişkene atama yapılmalıdır.
GetLineItemSummary(table)
Parametre olarak gönderilen LineItemTable veri türündeki tablonun özet toplamını döndüren fonksiyondur. Numeric veri türünde bir değişkene atama yapılmalıdır.
 
SetInitiator(userid)
Bu fonksiyon ile süreci başlatan kişi parametre olarak gönderilen userid olarak set edilir.
AddNewLine(table)
Fonksiyonu ile LineItemTable veri türündeki değişkene yeni bir satır ekleyebilirsiniz.
IsUserInGroup(userid, groupid)
Fonksiyonu ile birinci parametre ile belirtilen kullanıcının, ikinci parametredeki grupta olup olmadığının bilgisini kontrol edilir.
 
GetUserEmail(userid)
UserID bilgisi verilen kullanıcının mail adresini getiren fonksiyondur.


GetXmlNodeValue(xmlelement, xpath)
XML değerinin içindeki node alanındaki değerin XPATH metoduyla alınmasını sağlayan fonksiyondur.
GetXmlNodeCount(xmlelement, xpath)
XML değerinin içindeki belirtilen node’ un altındaki node sayısı döndüren fonksiyondur.
SetColumnReadOnly(table, columIndex, bool)
LineItemTable elementinin ilgili sütununu salt okunur yapar. Örnek kullanım şekli; SetColumnReadOnly(%satinalma_tablosu%, 8, true) Bu örnek satınalma tablosunun 9. sütununu salt okunur hale getirir. Süreç içinde aynı fonksiyon ile aynı sütunu istediğimiz yerde false kullanarak tekrar edit edilebilir hale getirebiliriz. Birden fazla kolon saltokunur yapma işlemi için; SetColumnReadOnly(%table_name%, [0,1,2], true)   şeklinde kullanılabilir.
*2.20.00.00 versiyonları sonrası geçerlidir.
HideTableColumn(table, columIndex, bool)
LineItemTable elementinin ilgili sütununu gizler. Örnek kullanım şekli; HideTableColumn(%satinalma_tablosu%, 8, true) Bu örnek satınalma tablosunun 9. sütununu gizli hale getirir. Süreç içinde aynı fonksiyon ile aynı sütunu istediğimiz yerde false kullanarak tekrar açık hale getirebiliriz. Birden fazla kolon gizleme işlemi için; HideTableColumn(%table_name%, [0,1,2], true)   şeklinde kullanılabilir.
*2.20.00.00 versiyonları sonrası geçerlidir.
AddToDynamicGroup (GroupIdList)
Hesapla içinde ayarlanacak veri elementi olarak Dynamic Group tipinde element seçilir. İfade penceresinde ise soldaki fonksiyon kullanılarak parantez içindeki alana çift tırnak içinde yetkilendirilmek istenen grupların listesi eklenir.
Ör: AddToDynamicGroup("1001") veya AddToDynamicGroup ("1001,1002") veya element yardımıyla set etmek için AddToDynamicGroup(%groupID%) şeklinde kullanılır.
SetLineItemTableButtonStates (table, addButton, deleteButton)
LineItemTable da Ekleme ve Silme işlemlerinin yetkilerini kısıtlamak için kullanılır.
"Satır Ekleme" yetkisini kısıtlamak için; SetLineItemTableButtonStates(%talep_detaylari%,true,false),
"Satır Silme" Yetkisini Kısıtlamak için; SetLineItemTableButtonStates(%talep_detaylari%,false,true) şekilde kullanılır.
*2.20.00.00 versiyonları sonrası geçerlidir.
SetLineItemTableFrozenColumns (table,index)

LineItemTable'da istenen kolonun sabit hale getirilmesi sağlanır.
*Indexleme 1 den başlamaktadır.
 
TaskFormToPDF(TID)
Pdf'e dönüştürülmek istenen Görev Formunun, yazdırılabilir formattanın doküman elementine yazdırılması sağlanır. TID değeri yerine ilgili Görev Formunun AID numarası yazılır.
*Bileşen, (AID) numarası , TMPL_ACT_MASTER tablosundan bulunabilir.
ConvertToExcel(table)
LineItemTable veri elementinin içindeki değerlerin doküman veri elementine excel olarak yazdırılması sağlanır.

