DELETE LG_147_01_EBOOKDETAILDOC WHERE LOGICALREF IN (
SELECT LOGICALREF FROM LG_147_01_EBOOKDETAILDOC WHERE  (DOCUMENTDATE IS NULL AND LEN(DOCUMENTNR)<1)
AND EMFICHEREF IN (SELECT LOGICALREF FROM LG_147_01_EMFICHE WHERE MODULENR<>0 AND MONTH(DATE_)=1))
