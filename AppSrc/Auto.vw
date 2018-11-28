// C:\Repos\DataFlexBeadando\AppSrc\Auto.vw
// Auto
//

Use DFClient.pkg
Use DFEntry.pkg

Use cAutoDataDictionary.dd

ACTIVATE_VIEW Activate_oAuto FOR oAuto
Object oAuto is a dbView
    Set Location to 5 5
    Set Size to 98 349
    Set Label To "Auto"
    Set Border_Style to Border_Thick


    Object oAuto_DD is a cAutoDataDictionary
    End_Object 

    Set Main_DD To oAuto_DD
    Set Server  To oAuto_DD



    Object oAutoId is a dbForm
        Entry_Item Auto.Id
        Set Size to 13 42
        Set Location to 5 51
        Set peAnchors to anTopLeftRight
        Set Label to "Azonos¡t¢"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 46
        Set Label_row_Offset to 0
    End_Object 

    Object oAutoAlvazszam is a dbForm
        Entry_Item Auto.Alvazszam
        Set Size to 13 126
        Set Location to 20 51
        Set peAnchors to anTopLeftRight
        Set Label to "Alv zsz m"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 46
        Set Label_row_Offset to 0
    End_Object 

    Object oAutoMotorszam is a dbForm
        Entry_Item Auto.Motorszam
        Set Size to 13 126
        Set Location to 20 218
        Set peAnchors to anTopRight
        Set Label to "Motorsz m"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 36
        Set Label_row_Offset to 0
    End_Object 

    Object oAutoMarka is a dbForm
        Entry_Item Auto.Marka
        Set Size to 13 126
        Set Location to 35 51
        Set peAnchors to anTopLeftRight
        Set Label to "M rka"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 46
        Set Label_row_Offset to 0
    End_Object 

    Object oAutoTipus is a dbForm
        Entry_Item Auto.Tipus
        Set Size to 13 126
        Set Location to 35 201
        Set peAnchors to anTopRight
        Set Label to "Tipus"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 19
        Set Label_row_Offset to 0
    End_Object 

    Object oAutoEvjarat is a dbForm
        Entry_Item Auto.Evjarat
        Set Size to 13 34
        Set Location to 50 51
        Set peAnchors to anTopLeftRight
        Set Label to "Evjarat"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 46
        Set Label_row_Offset to 0
    End_Object 

    Object oAutoUtolsoSzerviz is a dbForm
        Entry_Item Auto.UtolsoSzerviz
        Set Size to 13 66
        Set Location to 65 51
        Set peAnchors to anTopLeftRight
        Set Label to "Utols¢ szerv¡z"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 46
        Set Label_row_Offset to 0
    End_Object 

    Object oAutoKmAllas is a dbForm
        Entry_Item Auto.KmAllas
        Set Size to 13 66
        Set Location to 80 51
        Set peAnchors to anTopLeftRight
        Set Label to "Kil¢m‚ter  ll s"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 46
        Set Label_row_Offset to 0
    End_Object 


End_Object 
