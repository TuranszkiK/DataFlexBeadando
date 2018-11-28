// C:\Repos\DataFlexBeadando\AppSrc\Ugyfel.vw
// Ugyfel
//

Use DFClient.pkg
Use DFEntry.pkg

Use cUgyfelDataDictionary.dd

ACTIVATE_VIEW Activate_oUgyfel FOR oUgyfel
Object oUgyfel is a dbView
    Set Location to 5 5
    Set Size to 83 350
    Set Label To "Ugyfel"
    Set Border_Style to Border_Thick


    Object oUgyfel_DD is a cUgyfelDataDictionary
    End_Object 

    Set Main_DD To oUgyfel_DD
    Set Server  To oUgyfel_DD



    Object oUgyfelId is a dbForm
        Entry_Item Ugyfel.Id
        Set Size to 13 42
        Set Location to 5 57
        Set peAnchors to anTopLeftRight
        Set Label to "šgyf‚l azonos¡t¢"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 52
        Set Label_row_Offset to 0
    End_Object 

    Object oUgyfelNev is a dbForm
        Entry_Item Ugyfel.Nev
        Set Size to 13 250
        Set Location to 20 57
        Set peAnchors to anTopLeftRight
        Set Label to "N‚v"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 52
        Set Label_row_Offset to 0
    End_Object 

    Object oUgyfelAdoszam is a dbForm
        Entry_Item Ugyfel.Adoszam
        Set Size to 13 84
        Set Location to 35 57
        Set peAnchors to anTopLeftRight
        Set Label to "Ad¢sz m"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 52
        Set Label_row_Offset to 0
    End_Object 

    Object oUgyfelCim is a dbForm
        Entry_Item Ugyfel.Cim
        Set Size to 13 250
        Set Location to 50 57
        Set peAnchors to anTopLeftRight
        Set Label to "C¡m"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 52
        Set Label_row_Offset to 0
    End_Object 

    Object oUgyfelTelefon is a dbForm
        Entry_Item Ugyfel.Telefon
        Set Size to 13 78
        Set Location to 65 57
        Set peAnchors to anTopLeftRight
        Set Label to "Telefon"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 52
        Set Label_row_Offset to 0
    End_Object 

    Object oUgyfelBankszamla is a dbForm
        Entry_Item Ugyfel.Bankszamla
        Set Size to 13 168
        Set Location to 65 177
        Set peAnchors to anTopRight
        Set Label to "Banksz mla"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 37
        Set Label_row_Offset to 0
    End_Object 


End_Object 
