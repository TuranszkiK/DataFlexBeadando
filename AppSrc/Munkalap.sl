// Munkalap.sl
// Munkalap Lookup List

Use DFClient.pkg
Use cDbCJGridPromptList.pkg
Use cDbCJGridColumn.pkg
Use Windows.pkg

Use cUgyfelDataDictionary.dd
Use cAutoDataDictionary.dd
Use cMunkalapDataDictionary.dd

CD_Popup_Object Munkalap_sl is a dbModalPanel
    Set Location to 5 5
    Set Size to 134 450
    Set Label To "Munkalap Lookup List"
    Set Border_Style to Border_Thick
    Set Minimize_Icon to False


    Object oUgyfel_DD is a cUgyfelDataDictionary
    End_Object 

    Object oAuto_DD is a cAutoDataDictionary
    End_Object 

    Object oMunkalap_DD is a cMunkalapDataDictionary
        Set DDO_Server To oAuto_DD
        Set DDO_Server To oUgyfel_DD
    End_Object 

    Set Main_DD To oMunkalap_DD
    Set Server  To oMunkalap_DD



    Object oSelList is a cDbCJGridPromptList
        Set Size to 105 440
        Set Location to 5 5
        Set peAnchors to anAll
        Set psLayoutSection to "Munkalap_sl_oSelList"
        Set Ordering to 1
        Set pbAutoServer to True

        Object oMunkalap_Id is a cDbCJGridColumn
            Entry_Item Munkalap.Id
            Set piWidth to 101
            Set psCaption to "Munkalap azon."
        End_Object 

        Object oMunkalap_Rogzites is a cDbCJGridColumn
            Entry_Item Munkalap.Rogzites
            Set piWidth to 105
            Set psCaption to "R”gz."
        End_Object 

        Object oUgyfel_Id is a cDbCJGridColumn
            Entry_Item Ugyfel.Id
            Set piWidth to 63
            Set psCaption to "UgyfelId"
        End_Object 

        Object oAuto_Id is a cDbCJGridColumn
            Entry_Item Auto.Id
            Set piWidth to 63
            Set psCaption to "AutoId"
        End_Object 

        Object oMunkalap_Behozatal is a cDbCJGridColumn
            Entry_Item Munkalap.Behozatal
            Set piWidth to 105
            Set psCaption to "Behoz."
        End_Object 

        Object oMunkalap_Elvitel is a cDbCJGridColumn
            Entry_Item Munkalap.Elvitel
            Set piWidth to 105
            Set psCaption to "Elvitel"
        End_Object 

        Object oMunkalap_Akm is a cDbCJGridColumn
            Entry_Item Munkalap.Akm
            Set piWidth to 105
            Set psCaption to "Km el‹tte"
        End_Object 

        Object oMunkalap_Bkm is a cDbCJGridColumn
            Entry_Item Munkalap.Bkm
            Set piWidth to 105
            Set psCaption to "Km ut na"
        End_Object 


    End_Object 

    Object oOk_bn is a Button
        Set Label to "&Ok"
        Set Location to 115 287
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send OK of oSelList
        End_Procedure

    End_Object 

    Object oCancel_bn is a Button
        Set Label to "&Cancel"
        Set Location to 115 341
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send Cancel of oSelList
        End_Procedure

    End_Object 

    Object oSearch_bn is a Button
        Set Label to "&Search..."
        Set Location to 115 395
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send Search of oSelList
        End_Procedure

    End_Object 

    On_Key Key_Alt+Key_O Send KeyAction of oOk_bn
    On_Key Key_Alt+Key_C Send KeyAction of oCancel_bn
    On_Key Key_Alt+Key_S Send KeyAction of oSearch_bn


CD_End_Object // Munkalap_sl
