
*----------------------------------------------------------------------*
*       CLASS zcl_Operaciones_Test DEFINITION
*----------------------------------------------------------------------*
*
*----------------------------------------------------------------------*
CLASS zcl_operaciones_test DEFINITION FOR TESTING
  DURATION SHORT
  RISK LEVEL HARMLESS
.
*?﻿<asx:abap xmlns:asx="http://www.sap.com/abapxml" version="1.0">
*?<asx:values>
*?<TESTCLASS_OPTIONS>
*?<TEST_CLASS>zcl_Operaciones_Test
*?</TEST_CLASS>
*?<TEST_MEMBER>f_Cut
*?</TEST_MEMBER>
*?<OBJECT_UNDER_TEST>ZCL_OPERACIONES
*?</OBJECT_UNDER_TEST>
*?<OBJECT_IS_LOCAL/>
*?<GENERATE_FIXTURE/>
*?<GENERATE_CLASS_FIXTURE/>
*?<GENERATE_INVOCATION/>
*?<GENERATE_ASSERT_EQUAL/>
*?</TESTCLASS_OPTIONS>
*?</asx:values>
*?</asx:abap>
  PRIVATE SECTION.
* ================
    DATA:
      f_cut TYPE REF TO zcl_operaciones.  "class under test

    class-methods: class_Setup.
    class-methods: class_Teardown.
    methods: setup.
    methods: teardown.



    METHODS: mth_resta FOR TESTING.
    METHODS: mth_suma FOR TESTING.
ENDCLASS.       "zcl_Operaciones_Test


*----------------------------------------------------------------------*
*       CLASS zcl_Operaciones_Test IMPLEMENTATION
*----------------------------------------------------------------------*
*
*----------------------------------------------------------------------*
CLASS zcl_operaciones_test IMPLEMENTATION.
* ==========================================

  method class_Setup.



  endmethod.


  method class_Teardown.



  endmethod.


  method setup.


    create object f_Cut.
  endmethod.


  method teardown.



  endmethod.

  METHOD mth_resta.
* =================
    DATA  i_numero1 TYPE num VALUE 2.
    DATA  i_numero2 TYPE num VALUE 1.
    DATA  e_result TYPE  num.

    f_cut->mth_resta(
      EXPORTING
        num1 = i_numero1
        num2 = i_numero2
      IMPORTING
        e_result = e_result
    ).

    cl_abap_unit_assert=>assert_equals(
    act = e_result
    exp = 1
    msg = 'Testing value e_result in method Resta'
    ).

  ENDMETHOD.       "mth_Resta


  METHOD mth_suma.
* ================
    DATA  i_numero1 TYPE num VALUE 2.
    DATA  i_numero2 TYPE num VALUE 2.
    DATA  e_result TYPE  num.

    f_cut->mth_suma(
      EXPORTING
        num1 = i_numero1
        num2 = i_numero2
      IMPORTING
        e_result = e_result
    ).

    cl_abap_unit_assert=>assert_equals(
    act = e_result
    exp = 4
    msg = 'Testing value e_result in method Suma'
    ).

  ENDMETHOD.       "mth_Suma




ENDCLASS.       "zcl_Operaciones_Test
