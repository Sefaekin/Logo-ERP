--MAHSUP FISINE BA?LI OLMAYAN MUHASEBE FIS SATIRLARI

SELECT * FROM LG_001_01_EMFLINE
WHERE ACCFICHEREF NOT IN(SELECT LOGICALREF FROM LG_001_01_EMFICHE)

