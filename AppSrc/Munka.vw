// C:\Repos\DataFlexBeadando\AppSrc\Munka.vw
// Munka
//

Use DFClient.pkg
Use DFEntry.pkg

Use cMunkaDataDictionary.dd

ACTIVATE_VIEW Activate_oMunka FOR oMunka
Object oMunka is a dbView
    Set Location to 5 5
    Set Size to 38 251
    Set Label To "Munka"
    Set Border_Style to Border_Thick


    Object oMunka_DD is a cMunkaDataDictionary
    End_Object 

    Set Main_DD To oMunka_DD
    Set Server  To oMunka_DD



    Object oMunkaId is a dbForm
        Entry_Item Munka.Id
        Set Size to 13 42
        Set Location to 5 59
        Set peAnchors to anTopLeftRight
        Set Label to "Munka azonos¡t¢"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 54
        Set Label_row_Offset to 0
    End_Object 

    Object oMunkaName is a dbForm
        Entry_Item Munka.Name
        Set Size to 13 126
        Set Location to 5 120
        Set peAnchors to anTopRight
        Set Label to "N‚v"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 14
        Set Label_row_Offset to 0
    End_Object 

    Object oMunkaLeiras is a dbForm
        Entry_Item Munka.Leiras
        Set Size to 13 66
        Set Location to 20 59
        Set peAnchors to anTopLeftRight
        Set Label to "Le¡r s"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 54
        Set Label_row_Offset to 0
    End_Object 

    Object oMunkaEgysegar is a dbForm
        Entry_Item Munka.Egysegar
        Set Size to 13 66
        Set Location to 20 159
        Set peAnchors to anTopRight
        Set Label to "Egys‚g r"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 29
        Set Label_row_Offset to 0
    End_Object 


End_Object 
