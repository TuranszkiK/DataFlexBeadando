// Munka.sl
// Munka Lookup List

Use DFClient.pkg
Use cDbCJGridPromptList.pkg
Use cDbCJGridColumn.pkg
Use Windows.pkg

Use cMunkaDataDictionary.dd

CD_Popup_Object Munka_sl is a dbModalPanel
    Set Location to 5 5
    Set Size to 134 309
    Set Label To "Munka Lookup List"
    Set Border_Style to Border_Thick
    Set Minimize_Icon to False


    Object oMunka_DD is a cMunkaDataDictionary
    End_Object 

    Set Main_DD To oMunka_DD
    Set Server  To oMunka_DD



    Object oSelList is a cDbCJGridPromptList
        Set Size to 105 299
        Set Location to 5 5
        Set peAnchors to anAll
        Set psLayoutSection to "Munka_sl_oSelList"
        Set Ordering to 1
        Set pbAutoServer to True

        Object oMunka_Id is a cDbCJGridColumn
            Entry_Item Munka.Id
            Set piWidth to 85
            Set psCaption to "Munka azon."
        End_Object 

        Object oMunka_Name is a cDbCJGridColumn
            Entry_Item Munka.Name
            Set piWidth to 210
            Set psCaption to "N‚v"
        End_Object 

        Object oMunka_Leiras is a cDbCJGridColumn
            Entry_Item Munka.Leiras
            Set piWidth to 105
            Set psCaption to "Le¡r s"
        End_Object 

        Object oMunka_Egysegar is a cDbCJGridColumn
            Entry_Item Munka.Egysegar
            Set piWidth to 105
            Set psCaption to "Egys‚g r"
        End_Object 


    End_Object 

    Object oOk_bn is a Button
        Set Label to "&Ok"
        Set Location to 115 146
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send OK of oSelList
        End_Procedure

    End_Object 

    Object oCancel_bn is a Button
        Set Label to "&Cancel"
        Set Location to 115 200
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send Cancel of oSelList
        End_Procedure

    End_Object 

    Object oSearch_bn is a Button
        Set Label to "&Search..."
        Set Location to 115 254
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send Search of oSelList
        End_Procedure

    End_Object 

    On_Key Key_Alt+Key_O Send KeyAction of oOk_bn
    On_Key Key_Alt+Key_C Send KeyAction of oCancel_bn
    On_Key Key_Alt+Key_S Send KeyAction of oSearch_bn


CD_End_Object // Munka_sl
