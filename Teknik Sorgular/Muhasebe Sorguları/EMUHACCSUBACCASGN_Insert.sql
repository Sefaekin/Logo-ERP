DELETE FROM LG_103_EMUHACCSUBACCASGN
DECLARE @accRef INT, @code   VARCHAR(50) 
DECLARE Curs CURSOR FOR 

SELECT 
	LOGICALREF, CODE 
FROM 
	LG_103_EMUHACC 
WHERE SUBACCOUNTS <> 0 

OPEN Curs
FETCH NEXT FROM CurS 
INTO @accRef, @code 
WHILE @@FETCH_STATUS = 0 
BEGIN

INSERT INTO LG_103_EMUHACCSUBACCASGN 
SELECT 
	@accRef, LOGICALREF 
FROM 
	LG_103_EMUHACC
WHERE 
	CODE LIKE @code+'.%' 

FETCH NEXT FROM Curs 
INTO @accRef, @code
END 
CLOSE Curs 
DEALLOCATE Curs; 
INSERT INTO LG_103_EMUHACCSUBACCASGN
SELECT LOGICALREF, LOGICALREF FROM LG_103_EMUHACC

