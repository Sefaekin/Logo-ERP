**e-defter statü değiştirme
UPDATE LG_162_EBOOKINFO SET BOOKSTATUS=0 
WHERE PERMONTH= 12 AY BİLGİSİ
0 STATÜYÜ AÇAR 6 KAPATIR

----------------------------------------------------------------------------------------------------------------
**e-fatura statü değiştirme

UPDATE LG_018_01_INVOICE SET ESTATUS=0 WHERE FICHENO='FYS2018000012181' FATURAYI AÇAR

UPDATE LG_002_05_INVOICE SET ESTATUS=10 WHERE FICHENO='FYS2014000000077' FATURAYI KAPATIR

----------------------------------------------------------------------------------------------------------------

**e-arşiv statü değiştirme	 
 SELECT * FROM LG_219_01_INVOICE  WHERE FICHENO = 'VTY2019000000442'
UPDATE LG_219_01_INVOICE SET EINVOICE ='0'  WHERE FICHENO = 'VTY2019000000442'
SELECT EARCHIVESTATUS,* FROM LG_219_01_EARCHIVEDET WHERE INVOICEREF= '3638'
UPDATE LG_219_01_EARCHIVEDET SET EARCHIVESTATUS= '0' WHERE INVOICEREF= '3638'

0 e-arşiv oluşturulacak	 
1 e-arşiv oluşturuldu.	 
2 rapor dosyasına yazıldı	 iptal için gerekli olan rakam
3 sunucuya iletildi.		 
4 gib’e iletildi		 
5 sunucuda hata alındı	 
6: imzalandı		 
			


SELECT * FROM LG_019_01_INVOICE  WHERE FICHENO = 'AYX2019000000045'
SELECT EARCHIVESTATUS,* FROM LG_019_01_EARCHIVEDET WHERE INVOICEREF= '364'
UPDATE LG_019_01_EARCHIVEDET SET EARCHIVESTATUS= '0' WHERE INVOICEREF= '364'	

-------------------------------------------------------------------------------
**e-irsaliye statü değiştirme	 

SELECT EDESPATCH,* FROM LG_220_01_STFICHE WHERE FICHENO='VTA2020000000069'

UPDATE LG_220_01_STFICHE SET EDESPATCH='0' WHERE FICHENO='VTA2020000000069'

STFICHE de EDESPATCH kolonu 1 ise e irsaliyedir  0 sa kağıt 


