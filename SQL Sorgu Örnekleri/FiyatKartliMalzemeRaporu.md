
SELECT
I.CODE AS [Ürün Stok Kodu], 
I.NAME AS [Ürün Adı], 
M.CODE AS [Markası],
B.BARCODE AS [Barcode],
P.PRICE AS [Fiyat 1],
T.PRICE AS [Fiyat 2],
I.VAT [KDV Oranı],
CASE WHEN 
P.CURRENCY=160 THEN 'TL' WHEN 
P.CURRENCY=1 THEN 'USD' WHEN 
P.CURRENCY=13 THEN 'JPY' WHEN 
P.CURRENCY=20 THEN 'EUR'  ELSE 'DİĞER' END [Ürün Döviz Kuru],
SUM(ST.ONHAND) AS [Stok Miktarı], 
CASE WHEN 
I.CARDTYPE=1 THEN 'Ticari Mal' WHEN 
I.CARDTYPE=2 THEN 'Karma Koli' WHEN 
I.CARDTYPE=4 THEN 'Sabit Kıymet' WHEN 
I.CARDTYPE=20 THEN 'Genel Malzeme Sınıfı' ELSE 'DİĞER' END [Stok Tipi]

FROM dbo.LG_004_ITEMS I

LEFT OUTER JOIN LG_004_PRCLIST P ON I.LOGICALREF = P.CARDREF AND P.DEFINITION_='P'
LEFT OUTER JOIN LG_004_PRCLIST T ON I.LOGICALREF = T.CARDREF AND T.DEFINITION_='T'

LEFT OUTER JOIN LV_004_06_STINVTOT ST ON I.LOGICALREF = ST.STOCKREF AND ST.INVENNO = '0'

LEFT OUTER JOIN LG_004_MARK M ON M.LOGICALREF=I.MARKREF

LEFT OUTER JOIN LG_004_UNITBARCODE B ON B.ITEMREF=I.LOGICALREF WHERE  (P.PTYPE = 2)

GROUP BY I.CODE, I.NAME,B.BARCODE,M.CODE,I.VAT,I.CARDTYPE, P.PRICE,P.CURRENCY,P.CARDREF,P.PRICE,T.PRICE
