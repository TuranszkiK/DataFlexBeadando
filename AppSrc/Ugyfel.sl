// Ugyfel.sl
// Ugyfel Lookup List

Use DFClient.pkg
Use cDbCJGridPromptList.pkg
Use cDbCJGridColumn.pkg
Use Windows.pkg

Use cUgyfelDataDictionary.dd

CD_Popup_Object Ugyfel_sl is a dbModalPanel
    Set Location to 5 5
    Set Size to 134 610
    Set Label To "Ugyfel Lookup List"
    Set Border_Style to Border_Thick
    Set Minimize_Icon to False


    Object oUgyfel_DD is a cUgyfelDataDictionary
    End_Object 

    Set Main_DD To oUgyfel_DD
    Set Server  To oUgyfel_DD



    Object oSelList is a cDbCJGridPromptList
        Set Size to 105 600
        Set Location to 5 5
        Set peAnchors to anAll
        Set psLayoutSection to "Ugyfel_sl_oSelList"
        Set Ordering to 1
        Set pbAutoServer to True

        Object oUgyfel_Id is a cDbCJGridColumn
            Entry_Item Ugyfel.Id
            Set piWidth to 77
            Set psCaption to "šgyf. azon."
        End_Object 

        Object oUgyfel_Nev is a cDbCJGridColumn
            Entry_Item Ugyfel.Nev
            Set piWidth to 262
            Set psCaption to "N‚v"
        End_Object 

        Object oUgyfel_Adoszam is a cDbCJGridColumn
            Entry_Item Ugyfel.Adoszam
            Set piWidth to 136
            Set psCaption to "A.sz."
        End_Object 

        Object oUgyfel_Cim is a cDbCJGridColumn
            Entry_Item Ugyfel.Cim
            Set piWidth to 262
            Set psCaption to "C¡m"
        End_Object 

        Object oUgyfel_Telefon is a cDbCJGridColumn
            Entry_Item Ugyfel.Telefon
            Set piWidth to 126
            Set psCaption to "tel."
        End_Object 

        Object oUgyfel_Bankszamla is a cDbCJGridColumn
            Entry_Item Ugyfel.Bankszamla
            Set piWidth to 262
            Set psCaption to "Bszla."
        End_Object 


    End_Object 

    Object oOk_bn is a Button
        Set Label to "&Ok"
        Set Location to 115 447
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send OK of oSelList
        End_Procedure

    End_Object 

    Object oCancel_bn is a Button
        Set Label to "&Cancel"
        Set Location to 115 501
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send Cancel of oSelList
        End_Procedure

    End_Object 

    Object oSearch_bn is a Button
        Set Label to "&Search..."
        Set Location to 115 555
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send Search of oSelList
        End_Procedure

    End_Object 

    On_Key Key_Alt+Key_O Send KeyAction of oOk_bn
    On_Key Key_Alt+Key_C Send KeyAction of oCancel_bn
    On_Key Key_Alt+Key_S Send KeyAction of oSearch_bn


CD_End_Object // Ugyfel_sl
