------------------------------------------------------------------------
---- HATALI KAYIT KONTROLLERÝ-------------------------------------------
------------------------------------------------------------------------
SELECT 'POLINE ' TABLENAME,  UINFO1, UINFO2 , UOMREF FROM LG_001_POLINE WHERE UINFO1=0 AND UOMREF >0
UNION
SELECT 'PRODORD' TABLENAME, UINFO1, UINFO2 , UOMREF FROM LG_001_PRODORD WHERE UINFO1=0 AND UOMREF >0
UNION
SELECT 'BOMLINE' TABLENAME, UINFO1, UINFO2 , UOMREF FROM LG_001_BOMLINE WHERE UINFO1=0 AND UOMREF >0
UNION
SELECT 'STLINE ' TABLENAME, UINFO1, UINFO2 , UOMREF FROM LG_001_01_STLINE WHERE UINFO1=0 AND LINETYPE=0 AND UOMREF >0
UNION
SELECT 'ORFLINE' TABLENAME, UINFO1, UINFO2 , UOMREF FROM LG_001_01_ORFLINE WHERE UINFO1=0 AND UOMREF >0
UNION
SELECT 'SLTRANS' TABLENAME, UINFO1, UINFO2 , UOMREF FROM LG_001_01_SLTRANS WHERE UINFO1=0 AND UOMREF >0
UNION
SELECT 'PROCURE' TABLENAME, UINFO1, UINFO2 , UOMREF FROM LG_001_01_PROCUREMENT WHERE UINFO1=0 AND UOMREF >0
UNION
SELECT 'DISTORDL' TABLENAME, UINFO1, UINFO2 , UOMREF FROM LG_001_01_DISTORDLINE WHERE UINFO1=0 AND UOMREF >0
UNION
SELECT 'OFFTRANS' TABLENAME, UINFO1, UINFO2 , UOMREF FROM LG_001_OFFTRNS WHERE UINFO1=0 AND UOMREF >0




