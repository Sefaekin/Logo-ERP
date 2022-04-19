sub ProcessEvent(App)
   DETAY  = App.Doc.FieldAsString("ITEXT")
   App.Doc.ModifyData "NOTES3",DETAY
   App.Doc.SaveData
end sub