Sağlam veritabanında çalıştırılan sorgdan dönen alter sorguları hata alınan veritabanıda çalıştırılır.

SELECT 'ALTER TABLE ' + TABLE_NAME +' '+
'ADD'+' ' + COLUMN_NAME + ' ' + DATA_TYPE +
CASE WHEN CHARACTER_MAXIMUM_LENGTH = -1 THEN '(max)'
WHEN DATA_TYPE in ('text','ntext') THEN ''
WHEN CHARACTER_MAXIMUM_LENGTH IS NOT NULL
THEN '('+(CONVERT(VARCHAR,CHARACTER_MAXIMUM_LENGTH)+')' )
ELSE
ISNULL(CONVERT(VARCHAR,CHARACTER_MAXIMUM_LENGTH),' ')
END +' '+
CASE IS_NULLABLE WHEN 'YES' THEN 'NULL' WHEN 'No' THEN 'NOT NULL'
END
FROM INFORMATION_SCHEMA.COLUMNS
WHERE COLUMN_NAME='CPAKDSPASSWORD'-- Bu alana Invalidcolum name hatasında gelen kolon adı yazılmalıdır.

EĞER ÇOK FAZLA HATA ALINIRSA CAPISIGN TABLOSUNDAKİ VERS ALANI 1 E GÜNCELLENEREK YAPILMALIDIR.
