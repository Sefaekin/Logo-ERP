Ödeme tarihi serbest alana getirme

sub ProcessEvent(App)
DETAY = App.Doc.FieldAsString("PAYMENT_LIST.PAYMENT.DISCOUNT_DATE")
App.Doc.WriteStartElement "ADDITIONALDOCUMENTS/ADDITIONALDOCUMENT"
App.Doc.WriteElementString "ID", DETAY
App.Doc.WriteElementString "ISSUEDATE", Year(Date) & "-" & Right("0" & Month(Date), 2) & "-" & Right("0" & Day(Date), 2)
App.Doc.WriteElementString "DOCUMENTTYPE", “ODEMETARIHI”
App.Doc.WriteEndElement
App.Doc.SaveData
end sub

xslt

<xsl:for-each select="//n1:Invoice/cac:AdditionalDocumentReference">   <xsl:if test ="cbc:DocumentType = 'ODEMETARIHI'">      <xsl:value-of select="cbc:ID"/>    </xsl:if>     </xsl:for-each>


e-Faturaya vade tarihi getirme

sub ProcessEvent(App)
    vadeTarihi  = App.Doc.FieldAsString("PAYMENT_LIST.PAYMENT.DATE")
    'sevkiyatAdresi = App.UQUERY_GETFLD(14, "SHPAGNCOD", 200, 52, FALSE, "SHPAGNCOD = '"+tasiyiciKodu+"'" ) 
    App.Doc.WriteStartElement "ADDITIONALDOCUMENTS/ADDITIONALDOCUMENT"                                                                                     
    App.Doc.WriteElementString "ID", vadeTarihi    
    App.Doc.WriteElementString "ISSUEDATE",  Year(Date) & "-" & Right("0" & Month(Date), 2) & "-" & Right("0" & Day(Date), 2)           
    App.Doc.WriteElementString "DOCUMENTTYPE", "VADETARIHI"  
    App.Doc.WriteEndElement  
    App.Doc.SaveData   
end sub
