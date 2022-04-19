FONKSİYON LİSTESİ	 
MIN(number, number)
MAX(number, number)
MOD(number, divisor)
DIV(number, divisor)
ABS(number)
VAL(text)
DATE(day, month, year)
AFTER(days, year)
DAYS(firstdate, lastdate)
DAYOF(date)
MONTHOF(date)
YEAROF(date)
WDAYOF(date)
ROUND(number)
TRUNC(number)
ERATE(date,base curr., base rate, dest. curr)
STRPOS(search string, string)
FLOOR(number)
CEIL(number)
FRAC(number)
EXP(number)
LN(number)
POWER(base, exponent)
SQR(number)
SQRT(number)
COS(number)
SIN(number)
TAN(number)
STR(number)
DATESTR(date,format)
MONTHSTR(month)
WDAYSTR(weekday)
NUMSTR(number, decimals, format)
TIMESTR(time, format)
RESXSTR(list resource, tag)
RESSTR(list resource)
CRESSTR(list id., tag)
SUBSTR(text, start, length)
UPCASE(text)
LOWCASE(text)
TRIMSPC(text, option)
JUSTIFY(text,direction, fill, length)
WRNUM(language, numer, part)
IF(expression, value1, value2)
 
FONKSİYONLARIN KULLANIMI

MIN(number, number)

Fonsiyonun içerindeki sayılardan küçük olanı verir.
MIN(5, 6)	=	5


MAX(number, number)
Fonsiyonun içerindeki sayılardan büyük olanı verir.
MAX(5, 6)	=	6

MOD(number, divisor)
Bir sayının diğer bir sayıya bölündüğünde kalanı verir.
MOD(35, 6)	=	5
MOD(42, 7)	=	0

DIV(number, divisor)
Bir sayının diğer bir sayıya bölündüğünde bölümü verir.
DIV(35,6)	=	5
DIV(42, 7)	=	6

ABS(number)
Bir sayının mutlak değerini alır.
ABS(7)	=	7
ABS(-7)	=	7

VAL(text)
Text olarak yazılmış bir sayıyı sayı formatına çevirir.
VAL(“1000”)	=	1000

DATE(day, month, year)
Gün, ay ve yıl bilgisi ne göre tarih formatına çevirir.
DATE(31, 12, 2000)	=	31.12.2000

AFTER(days, date)
Birtarihten verilen gün sayısı kadar sonraki tarihi verir.
AFTER(10, DATE(10,02,2001))	=	20.02.2001
AFTER(10, Günün tarihi)	=	15.02.2055 (Günün tarihi 05.02.2055 ise)

DAYS(firstdate, lastdate)
İki tarih arasındaki gün sayısını verir.
DAYS(DATE(10,10,2000), DATE(20,10,2000))	=	10

DAYOF(date)
Verilen tarihin gününü verir.
DAYOF(DATE(10,12,2000))	=	10

MONTHOF(date)
Verilen tarihin ayını verir.
MONTHOF(DATE(10,12,2000))	=	12

YEAROF(date)
Verilen tarihin yılını verir.
YEAROF (DATE(10,12,2000))	=	2000

WDAYOF(date)
Verilen tarihin haftanın kaçıncı günü olduğunu verir.
WDAYOF (DATE(30,03,2001))	=	5

ROUND(number)
Verilen sayıyı en yakın tamsayıya çevirir.
ROUND(5.25)	=	5
ROUND(5.61)	=	6

TRUNC(number)
Verilen sayının ondalıklı kısmını kaldırarak tamsayıya çevirir.
TRUNC(5.25)		=	  5
TRUNC(26.85)	=	26

FLOOR(number)
Verilen sayıyı ondalık kısmını kaldırarak tamsayıya çevirir.
FLOOR(15,85)	=           15
FLOOR(-15,85)	=	-15

CEIL(number)
Verilen sayının ondalık kısmını 1’e tamamlayarak tamsayıya çevirir.
CEIL(15.25)	=	16
CEIL(15.75)	=	16

FRAC(number)
Verilen sayıdan sayının tamsayı kısmını çıkardıktan sonra kalan sayıyı 0 ve +/-1 den yakın olanına çevirir.
FRAC(3,15)	=	0
FRAC(-3,15)	=	0
FRAC(3,75)	=	1
FRAC(-3,75)	=	-1

EXP(number)
Doğal logaritma(ln) fonksiyonunun tersidir. Doğal logaritma fonksiyonunun tabanının (e) verilen sayı kadar kendisi ile çarpımının en yakın olduğu tamsayıyı verir.
EXP(1)	=	3 (e’nin yaklaşık değeri)
EXP(2)	=	7

LN(number)
Doğal logaritma fonksiyonudur. “e” tabanına göre logartima fonksiyonunu sonucunu en aykın tamsayıya çevirir..
LN(2)	=	1
EXP (LN (5))	=	5

POWER(base, exponent)
Bir sayının belirtilen sayı (exponent)da kendisi ile çarpımını verir.
POWER(10,2)	=	100
POWER(3,2)		=	27

SQR(number)
Bir sayının karesini (kendisi ile çarpımını) verir.
SQR(2)	=	4
SQR(9)	=	81

SQRT(number)
Bir sayının karekökünü verir.
SQRT(81)	=	9
SQRT(225)	=	15

COS(number)
Bir sayının(radyan cinsinden verilen açının) kosinüsünü verir.
COS(0)	=	1

SIN(number)
Bir sayının(radyan cinsinden verilen açının) sinüsünü verir.

TAN(number)
Bir sayının(radyan cinsinden verilen açının) tanjantını verir.

STR(number)
Sayı formatını metin formatına çevirir.
UPCASE(text)
Verilen metindeki  küçük harfleri büyük harfe çevirir.
UPCASE(“text”)	=	TEXT
LOWCASE(text)
Verilen metindeki büyük harfleri küçük harfe çevirir.
LOWCASE(“Text”)	=	text

TRIMSPC(text, option)
JUSTIFY(text,direction, fill, length)
WRNUM(language, number, part)
Bir sayının tamsayı ya da ondalık kısmının belirtilen dilde yazı haline getirir.
WRNUM(1,100,1)		=	Yüz	
WRNUM(2,1000,1)		=	OneThousand
WRNUM(1,100.05,2)	=	Beş
WRNUM(4,100.05,1)	=	Ein(s)Hundert


IF(expression, value1, value2)
Belirtilen koşul (expression) sağlanıyorsa birinci değeri(value1); sağlanmıyorsa ikinci değeri (value2) getirir.
IF(2*2=4, “İki kere iki dört eder”, 1500)	=	İki kere iki dört eder
IF(2*2=100, “İki kere iki dört eder”, 1500)	=	1500
