// Auto.sl
// Auto Lookup List

Use DFClient.pkg
Use cDbCJGridPromptList.pkg
Use cDbCJGridColumn.pkg
Use Windows.pkg

Use cAutoDataDictionary.dd

CD_Popup_Object Auto_sl is a dbModalPanel
    Set Location to 5 5
    Set Size to 134 610
    Set Label To "Auto Lookup List"
    Set Border_Style to Border_Thick
    Set Minimize_Icon to False


    Object oAuto_DD is a cAutoDataDictionary
    End_Object 

    Set Main_DD To oAuto_DD
    Set Server  To oAuto_DD



    Object oSelList is a cDbCJGridPromptList
        Set Size to 105 600
        Set Location to 5 5
        Set peAnchors to anAll
        Set psLayoutSection to "Auto_sl_oSelList"
        Set Ordering to 1
        Set pbAutoServer to True

        Object oAuto_Id is a cDbCJGridColumn
            Entry_Item Auto.Id
            Set piWidth to 63
            Set psCaption to "Azon."
        End_Object 

        Object oAuto_Alvazszam is a cDbCJGridColumn
            Entry_Item Auto.Alvazszam
            Set piWidth to 210
            Set psCaption to "Alv."
        End_Object 

        Object oAuto_Motorszam is a cDbCJGridColumn
            Entry_Item Auto.Motorszam
            Set piWidth to 210
            Set psCaption to "Motorsz."
        End_Object 

        Object oAuto_Marka is a cDbCJGridColumn
            Entry_Item Auto.Marka
            Set piWidth to 210
            Set psCaption to "M rka"
        End_Object 

        Object oAuto_Tipus is a cDbCJGridColumn
            Entry_Item Auto.Tipus
            Set piWidth to 210
            Set psCaption to "Tipus"
        End_Object 

        Object oAuto_Evjarat is a cDbCJGridColumn
            Entry_Item Auto.Evjarat
            Set piWidth to 49
            Set psCaption to "Evj,"
        End_Object 

        Object oAuto_UtolsoSzerviz is a cDbCJGridColumn
            Entry_Item Auto.UtolsoSzerviz
            Set piWidth to 105
            Set psCaption to "Utol. szv."
        End_Object 

        Object oAuto_KmAllas is a cDbCJGridColumn
            Entry_Item Auto.KmAllas
            Set piWidth to 105
            Set psCaption to "Km  ll."
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


CD_End_Object // Auto_sl
