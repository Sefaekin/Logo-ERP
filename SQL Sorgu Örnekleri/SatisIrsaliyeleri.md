SELECT        STF.DATE_ AS [�RSAL�YE TAR�H�], STF.FICHENO AS [F�� NO], 
                         CASE STF.TRCODE WHEN 2 THEN 'Perakende Sat�� �ade �rsaliyesi' WHEN 3 THEN 'Toptan Sat�� �ade �rsaliyesi' WHEN 4 THEN 'Konsinye ��k�� �ade �rsaliyesi' WHEN 7 THEN 'Perakende Sat�� �rsaliyesi' WHEN 8 THEN 'Toptan Sat�� �rsaliyesi'
                          WHEN 9 THEN 'Konsinye ��k�� �rsaliyesi' WHEN 1 THEN 'Sat�nalma �rsaliyesi' WHEN 5 THEN 'Konsine Giri� �rsaliyesi' WHEN 6 THEN 'Sat�nalma �ade �rsaliyesi' WHEN 10 THEN 'Konsinye Giri� �ade �rsaliyesi' WHEN 26 THEN
                          'M�stahsil �rsaliyesi' ELSE 'D��ER' END AS [F�� T�R�], CLC.CODE AS [CAR� KODU], CLC.DEFINITION_ AS [CAR� �NVANI], ITM.CODE AS [MALZEME KODU], ITM.NAME AS [MALZEME A�IKLAMASI], 
                         STF.NETTOTAL AS [KDV DAH�L TUTAR], STF.GROSSTOTAL AS [KDV HAR�� TUTAR], STF.TOTALVAT AS [KDV TUTARI], STL.AMOUNT AS M�KTAR, STL.PRICE AS [B�R�M F�YAT], STL.TOTAL AS [SATIR TUTARI], 
                         STL.VAT AS [KDV ORANI], STL.VATAMNT AS [KDV SATIR TUTARI]
FROM            dbo.LG_001_CLCARD AS CLC LEFT OUTER JOIN
                         dbo.LG_001_01_STFICHE AS STF ON CLC.LOGICALREF = STF.CLIENTREF LEFT OUTER JOIN
                         dbo.LG_001_01_STLINE AS STL ON STF.LOGICALREF = STL.STFICHEREF LEFT OUTER JOIN
                         dbo.LG_001_ITEMS AS ITM ON ITM.LOGICALREF = STL.STOCKREF