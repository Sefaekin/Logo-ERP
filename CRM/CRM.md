#CRM Görünüm Sıfırlama#
Görünüm değerleri X1_ModelDifference ve X1_ModelDifferenceAspect tablolarında tutuluyor. Yedek alarak tabloları sıfırlayabilirsiniz. 
Dilerseniz sadece sorun yaşayan kullanıcıya ait görünümleri de sıfırlayabilirsiniz.

X1_ModelDifference talosundaki "UserId" = ST_User tablosundaki "Oid"
X1_ModelDifference tablosundaki "Oid" = X1_ModelDifferenceAspect tablosundaki "Owner"




SELECT * FROM ST_User -- OİD DEĞERİ ALTTAKİ SORGUDA WHERE KOŞULUNA EKLENİR.
SELECT UserId,* FROM X1_ModelDifference WHERE UserId='1826A614-7466-43D0-AC0D-1DB5E28B3B9D'  -- OİD DEĞERİ ALTTAKİ SORGUDA WHERE KOŞULUNA EKLENİR.
SELECT OWNER,* FROM X1_ModelDifferenceAspect WHERE OWNER='4730CB34-02FE-4891-9AE0-F97A59D7DCFA'

-- SİLME İŞLEMİ YAPILIRKEN SIRASIYLA 2. ARDINDAN 1. SORGU ÇALIŞTIRILIR.
DELETE FROM X1_ModelDifference WHERE UserId='1826A614-7466-43D0-AC0D-1DB5E28B3B9D'
DELETE FROM X1_ModelDifferenceAspect WHERE OWNER='4730CB34-02FE-4891-9AE0-F97A59D7DCFA'


-----------------------------------------------------------------------------------------------------------------------------------------------------------

#CRM Şifre Sıfırlama#
ST_USER Talbosundan PASSWORD temizlenir. Kullanıcıya yeni şifre crm üzerinden belirlenir.
