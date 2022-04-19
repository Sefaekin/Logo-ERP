SELECT        STF.DATE_ AS [ÝRSALÝYE TARÝHÝ], STF.FICHENO AS [FÝÞ NO], 
                         CASE STF.TRCODE WHEN 2 THEN 'Perakende Satýþ Ýade Ýrsaliyesi' WHEN 3 THEN 'Toptan Satýþ Ýade Ýrsaliyesi' WHEN 4 THEN 'Konsinye Çýkýþ Ýade Ýrsaliyesi' WHEN 7 THEN 'Perakende Satýþ Ýrsaliyesi' WHEN 8 THEN 'Toptan Satýþ Ýrsaliyesi'
                          WHEN 9 THEN 'Konsinye Çýkýþ Ýrsaliyesi' WHEN 1 THEN 'Satýnalma Ýrsaliyesi' WHEN 5 THEN 'Konsine Giriþ Ýrsaliyesi' WHEN 6 THEN 'Satýnalma Ýade Ýrsaliyesi' WHEN 10 THEN 'Konsinye Giriþ Ýade Ýrsaliyesi' WHEN 26 THEN
                          'Müstahsil Ýrsaliyesi' ELSE 'DÝÐER' END AS [FÝÞ TÜRÜ], CLC.CODE AS [CARÝ KODU], CLC.DEFINITION_ AS [CARÝ ÜNVANI], ITM.CODE AS [MALZEME KODU], ITM.NAME AS [MALZEME AÇIKLAMASI], 
                         STF.NETTOTAL AS [KDV DAHÝL TUTAR], STF.GROSSTOTAL AS [KDV HARÝÇ TUTAR], STF.TOTALVAT AS [KDV TUTARI], STL.AMOUNT AS MÝKTAR, STL.PRICE AS [BÝRÝM FÝYAT], STL.TOTAL AS [SATIR TUTARI], 
                         STL.VAT AS [KDV ORANI], STL.VATAMNT AS [KDV SATIR TUTARI]
FROM            dbo.LG_001_CLCARD AS CLC LEFT OUTER JOIN
                         dbo.LG_001_01_STFICHE AS STF ON CLC.LOGICALREF = STF.CLIENTREF LEFT OUTER JOIN
                         dbo.LG_001_01_STLINE AS STL ON STF.LOGICALREF = STL.STFICHEREF LEFT OUTER JOIN
                         dbo.LG_001_ITEMS AS ITM ON ITM.LOGICALREF = STL.STOCKREF