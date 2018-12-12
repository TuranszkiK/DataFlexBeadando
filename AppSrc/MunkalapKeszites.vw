// C:\Repos\DataFlexBeadando\AppSrc\MunkalapKeszites.vw
// MunkalapKeszites
//

Use DFClient.pkg
Use DFEntry.pkg
Use cDbCJGrid.pkg
Use cDbCJGridColumn.pkg

Use cUgyfelDataDictionary.dd
Use cAutoDataDictionary.dd
Use cMunkalapDataDictionary.dd
Use cMunkaDataDictionary.dd
Use cMunkaMunkalapDataDictionary.dd

ACTIVATE_VIEW Activate_oMunkalapKeszites FOR oMunkalapKeszites
Object oMunkalapKeszites is a dbView
    Set Location to 5 5
    Set Size to 204 309
    Set Label To "MunkalapKeszites"
    Set Border_Style to Border_Thick


    Object oUgyfel_DD is a cUgyfelDataDictionary
    End_Object 

    Object oAuto_DD is a cAutoDataDictionary
    End_Object 

    Object oMunkalap_DD is a cMunkalapDataDictionary
        Set DDO_Server To oAuto_DD
        Set DDO_Server To oUgyfel_DD
        // this lets you save a new parent DD from within child DD
        Set Allow_Foreign_New_Save_State to True
    End_Object 

    Object oMunka_DD is a cMunkaDataDictionary
    End_Object 

    Object oMunkaMunkalap_DD is a cMunkaMunkalapDataDictionary
        Set DDO_Server To oMunkalap_DD
        Set DDO_Server To oMunka_DD
        Set Constrain_File To Munkalap.File_Number
    End_Object 

    Set Main_DD To oMunkalap_DD
    Set Server  To oMunkalap_DD



    Object oMunkalapId is a dbForm
        Entry_Item Munkalap.Id
        Set Size to 13 42
        Set Location to 5 68
        Set peAnchors to anTopLeftRight
        Set Label to "Munkalap azonos¡t¢"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 63
        Set Label_row_Offset to 0
    End_Object 

    Object oUgyfelId is a dbForm
        Entry_Item Ugyfel.Id
        Set Size to 13 42
        Set Location to 20 68
        Set peAnchors to anTopLeftRight
        Set Label to "šgyf‚l azonos¡t¢"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 63
        Set Label_row_Offset to 0
    End_Object 

    Object oAutoId is a dbForm
        Entry_Item Auto.Id
        Set Size to 13 42
        Set Location to 35 68
        Set peAnchors to anTopLeftRight
        Set Label to "Azonos¡t¢"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 63
        Set Label_row_Offset to 0
    End_Object 

    Object oMunkalapBehozatal is a dbForm
        Entry_Item Munkalap.Behozatal
        Set Size to 13 66
        Set Location to 50 68
        Set peAnchors to anTopLeftRight
        Set Label to "Behozatal"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 63
        Set Label_row_Offset to 0
    End_Object 

    Object oMunkalapElvitel is a dbForm
        Entry_Item Munkalap.Elvitel
        Set Size to 13 66
        Set Location to 65 68
        Set peAnchors to anTopLeftRight
        Set Label to "Elvitel"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 63
        Set Label_row_Offset to 0
    End_Object 

    Object oMunkalapAkm is a dbForm
        Entry_Item Munkalap.Akm
        Set Size to 13 66
        Set Location to 80 68
        Set peAnchors to anTopLeftRight
        Set Label to "Kil¢m‚ter el‹tte"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 63
        Set Label_row_Offset to 0
    End_Object 

    Object oMunkalapBkm is a dbForm
        Entry_Item Munkalap.Bkm
        Set Size to 13 66
        Set Location to 95 68
        Set peAnchors to anTopLeftRight
        Set Label to "Kil¢m‚ter ll s ut ns"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 63
        Set Label_row_Offset to 0
    End_Object 

    Object oAutoMarka is a dbForm
        Entry_Item Auto.Marka
        Set Size to 13 126
        Set Location to 110 68
        Set peAnchors to anTopLeftRight
        Set Label to "AutoMarka"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 63
        Set Label_row_Offset to 0
    End_Object 

    Object oDetailGrid is a cDbCJGrid
        Set Size to 66 299
        Set Location to 133 5
        Set Server to oMunkaMunkalap_DD
        Set Ordering to 1
        Set peAnchors to anAll
        Set psLayoutSection to "oMunkalapKeszites_oDetailGrid"
        Set pbAllowInsertRow to False
        Set pbHeaderPrompts to True

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
