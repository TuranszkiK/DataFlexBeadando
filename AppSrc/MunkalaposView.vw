// C:\Repos\DataFlexBeadando\AppSrc\MunkalaposView.vw
// MunkalaposView
//

Use DFClient.pkg
Use DFEntry.pkg
Use cDbCJGrid.pkg
Use cDbCJGridColumn.pkg

Use cUgyfelDataDictionary.dd
Use cAutoDataDictionary.dd
Use cMunkalapDataDictionary.dd

ACTIVATE_VIEW Activate_oMunkalaposView FOR oMunkalaposView
Object oMunkalaposView is a dbView
    Set Location to 5 5
    Set Size to 204 610
    Set Label To "MunkalaposView"
    Set Border_Style to Border_Thick


    Object oUgyfel_DD is a cUgyfelDataDictionary
    End_Object 

    Object oAuto_DD is a cAutoDataDictionary
        // this lets you save a new parent DD from within child DD
        Set Allow_Foreign_New_Save_State to True
    End_Object 

    Object oMunkalap_DD is a cMunkalapDataDictionary
        Set DDO_Server To oAuto_DD
        Set DDO_Server To oUgyfel_DD
        Set Constrain_File To Auto.File_Number
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
        Set Location to 35 51
        Set peAnchors to anTopLeftRight
        Set Label to "Motorsz m"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 46
        Set Label_row_Offset to 0
    End_Object 

    Object oAutoMarka is a dbForm
        Entry_Item Auto.Marka
        Set Size to 13 126
        Set Location to 50 51
        Set peAnchors to anTopLeftRight
        Set Label to "M rka"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 46
        Set Label_row_Offset to 0
    End_Object 

    Object oAutoTipus is a dbForm
        Entry_Item Auto.Tipus
        Set Size to 13 126
        Set Location to 65 51
        Set peAnchors to anTopLeftRight
        Set Label to "Tipus"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 46
        Set Label_row_Offset to 0
    End_Object 

    Object oAutoEvjarat is a dbForm
        Entry_Item Auto.Evjarat
        Set Size to 13 34
        Set Location to 80 51
        Set peAnchors to anTopLeftRight
        Set Label to "Evjarat"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 46
        Set Label_row_Offset to 0
    End_Object 

    Object oAutoUtolsoSzerviz is a dbForm
        Entry_Item Auto.UtolsoSzerviz
        Set Size to 13 66
        Set Location to 95 51
        Set peAnchors to anTopLeftRight
        Set Label to "Utols¢ szerv¡z"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 46
        Set Label_row_Offset to 0
    End_Object 

    Object oAutoKmAllas is a dbForm
        Entry_Item Auto.KmAllas
        Set Size to 13 66
        Set Location to 110 51
        Set peAnchors to anTopLeftRight
        Set Label to "Kil¢m‚ter  ll s"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 46
        Set Label_row_Offset to 0
    End_Object 

    Object oDetailGrid is a cDbCJGrid
        Set Size to 66 600
        Set Location to 133 5
        Set Server to oMunkalap_DD
        Set Ordering to 3
        Set peAnchors to anAll
        Set psLayoutSection to "oMunkalaposView_oDetailGrid"
        Set pbAllowInsertRow to False
        Set pbHeaderPrompts to True

        Object oMunkalap_Id is a cDbCJGridColumn
            Entry_Item Munkalap.Id
            Set piWidth to 101
            Set psCaption to "Munkalap azon."
        End_Object 

        Object oUgyfel_Id is a cDbCJGridColumn
            Entry_Item Ugyfel.Id
            Set piWidth to 77
            Set psCaption to "šgyf. azon."
        End_Object 

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

        Object oMunkalap_Rogzites is a cDbCJGridColumn
            Entry_Item Munkalap.Rogzites
            Set piWidth to 105
            Set psCaption to "R”gz."
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

    //-----------------------------------------------------------------------
    // Create custom confirmation messages for save and delete
    // We must create the new functions and assign verify messages
    // to them.
    //-----------------------------------------------------------------------

    Function ConfirmDeleteHeader Returns Boolean
        Boolean bFail
        Get Confirm "Delete Entire Header and all detail?" to bFail
        Function_Return bFail
    End_Function 

    // Only confirm on the saving of new records
    Function ConfirmSaveHeader Returns Boolean
        Boolean bNoSave bHasRecord
        Handle  hoSrvr
        Get Server to hoSrvr
        Get HasRecord of hoSrvr to bHasRecord
        If not bHasRecord Begin
            Get Confirm "Save this NEW header?" to bNoSave
        End
        Function_Return bNoSave
    End_Function 

    // Define alternate confirmation Messages
    Set Verify_Save_MSG       to (RefFunc(ConfirmSaveHeader))
    Set Verify_Delete_MSG     to (RefFunc(ConfirmDeleteHeader))
    // Saves in header should not clear the view
    Set Auto_Clear_Deo_State to False


End_Object 
