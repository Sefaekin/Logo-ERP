SELECT
C.CODE AS [CAR� KODU],
C.DEFINITION_ AS [CAR� �NVAN],
CH.DATE_ AS TAR�H,
CH.TRANNO AS [F�� NO],
CH.DOCODE AS [BELGE NO],


CASE CH.TRCODE 
WHEN 1 THEN 'Nakit Tahsilat'
WHEN 2 THEN 'Nakit �deme'
WHEN 3 THEN 'Bor� Dekontu'
WHEN 4 THEN 'Alacak Dekontu'
WHEN 5 THEN 'Virman Fi�i'
WHEN 6 THEN 'Kur Fark� ��lemi'
WHEN 12 THEN '�zel Fi�'
WHEN 14 THEN 'A��l�� Fi�i'
WHEN 20 THEN 'Gelen Havaleler'
WHEN 21 THEN 'G�nderilen Havaleler'
WHEN 24 THEN 'D�viz Al�� Belgesi'
WHEN 25 THEN 'D�viz Sat�� Belgesi'
WHEN 28 THEN 'Al�nan Hizmet Faturas�'
WHEN 29 THEN 'Verilen Hizmet Faturas� Havaleler'
WHEN 30 THEN 'M�stahsil Makbuzu'
WHEN 31 THEN 'Sat�nalma Faturas�'
WHEN 32 THEN 'Perakende Sat�� �ade Faturas�'
WHEN 33 THEN 'Toptan sat�� �ade Faturas�'
WHEN 34 THEN 'Al�nan Hizmet Faturas�'
WHEN 36 THEN 'Sat�nalma �ade Faturas�'
WHEN 37 THEN 'Perakende Sat�� Faturas�'
WHEN 38 THEN 'Toptan Sat�� Faturas�'
WHEN 39 THEN 'Verilen Hizmet Faturas�'
WHEN 41 THEN 'Verilen Vade Fark� Faturas�'
WHEN 42 THEN 'Al�nan Vade Fark� Faturas�'
WHEN 43 THEN 'Sat�nalma Fiyat Fark� Faturas�'
WHEN 44 THEN 'Sat�� Fiyat Fark� Faturas�'
WHEN 45 THEN 'Verilen Serbest Meslek Makbuzu'
WHEN 46 THEN 'Al�nan Serbest Meslek Makbuzu'
WHEN 61 THEN '�ek Giri�i'
WHEN 62 THEN 'Senet Giri�i'
WHEN 63 THEN '�ek ��k�� (Cari Hesaba)'
WHEN 64 THEN 'Senet ��k�� (Cari Hesaba)'
WHEN 70 THEN 'Kredi Kart� Fi�i'
WHEN 71 THEN 'Kredi Kart� �ade Fi�i'
WHEN 72 THEN 'Firma Kredi Kart� Fi�i'
WHEN 73 THEN 'Firma Kredi Kart� �ade Fi�i'
WHEN 75 THEN 'Gider Pusulas�'
ELSE 'D��ER' END AS [F�� T�R�],

CH.LINEEXP AS [F�� A�IKLAMASI],
CH.AMOUNT AS TUTAR,

CASE CH.TRCURR
 WHEN 1 THEN 'USD'
  WHEN 0 THEN 'TL' 
  WHEN 20 THEN 'EURO' 
  ELSE 'D��ER' END AS [D�V�Z T�R�],

  CASE CH.SIGN 
WHEN 0 THEN 'BOR�' 
WHEN 1 THEN 'ALACAK'
 ELSE 'D��ER' END AS [��LEM T�R�] 

FROM

LG_002_CLCARD C

LEFT JOIN	

 LG_002_01_CLFLINE CH   ON C.LOGICALREF=CH.CLIENTREF 

