SELECT
C.CODE AS [CARÝ KODU],
C.DEFINITION_ AS [CARÝ ÜNVAN],
CH.DATE_ AS TARÝH,
CH.TRANNO AS [FÝÞ NO],
CH.DOCODE AS [BELGE NO],


CASE CH.TRCODE 
WHEN 1 THEN 'Nakit Tahsilat'
WHEN 2 THEN 'Nakit Ödeme'
WHEN 3 THEN 'Borç Dekontu'
WHEN 4 THEN 'Alacak Dekontu'
WHEN 5 THEN 'Virman Fiþi'
WHEN 6 THEN 'Kur Farký Ýþlemi'
WHEN 12 THEN 'Özel Fiþ'
WHEN 14 THEN 'Açýlýþ Fiþi'
WHEN 20 THEN 'Gelen Havaleler'
WHEN 21 THEN 'Gönderilen Havaleler'
WHEN 24 THEN 'Döviz Alýþ Belgesi'
WHEN 25 THEN 'Döviz Satýþ Belgesi'
WHEN 28 THEN 'Alýnan Hizmet Faturasý'
WHEN 29 THEN 'Verilen Hizmet Faturasý Havaleler'
WHEN 30 THEN 'Müstahsil Makbuzu'
WHEN 31 THEN 'Satýnalma Faturasý'
WHEN 32 THEN 'Perakende Satýþ Ýade Faturasý'
WHEN 33 THEN 'Toptan satýþ Ýade Faturasý'
WHEN 34 THEN 'Alýnan Hizmet Faturasý'
WHEN 36 THEN 'Satýnalma Ýade Faturasý'
WHEN 37 THEN 'Perakende Satýþ Faturasý'
WHEN 38 THEN 'Toptan Satýþ Faturasý'
WHEN 39 THEN 'Verilen Hizmet Faturasý'
WHEN 41 THEN 'Verilen Vade Farký Faturasý'
WHEN 42 THEN 'Alýnan Vade Farký Faturasý'
WHEN 43 THEN 'Satýnalma Fiyat Farký Faturasý'
WHEN 44 THEN 'Satýþ Fiyat Farký Faturasý'
WHEN 45 THEN 'Verilen Serbest Meslek Makbuzu'
WHEN 46 THEN 'Alýnan Serbest Meslek Makbuzu'
WHEN 61 THEN 'Çek Giriþi'
WHEN 62 THEN 'Senet Giriþi'
WHEN 63 THEN 'Çek Çýkýþ (Cari Hesaba)'
WHEN 64 THEN 'Senet Çýkýþ (Cari Hesaba)'
WHEN 70 THEN 'Kredi Kartý Fiþi'
WHEN 71 THEN 'Kredi Kartý Ýade Fiþi'
WHEN 72 THEN 'Firma Kredi Kartý Fiþi'
WHEN 73 THEN 'Firma Kredi Kartý Ýade Fiþi'
WHEN 75 THEN 'Gider Pusulasý'
ELSE 'DÝÐER' END AS [FÝÞ TÜRÜ],

CH.LINEEXP AS [FÝÞ AÇIKLAMASI],
CH.AMOUNT AS TUTAR,

CASE CH.TRCURR
 WHEN 1 THEN 'USD'
  WHEN 0 THEN 'TL' 
  WHEN 20 THEN 'EURO' 
  ELSE 'DÝÐER' END AS [DÖVÝZ TÜRÜ],

  CASE CH.SIGN 
WHEN 0 THEN 'BORÇ' 
WHEN 1 THEN 'ALACAK'
 ELSE 'DÝÐER' END AS [ÝÞLEM TÜRÜ] 

FROM

LG_002_CLCARD C

LEFT JOIN	

 LG_002_01_CLFLINE CH   ON C.LOGICALREF=CH.CLIENTREF 

