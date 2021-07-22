CLASS lcl_buffer IMPLEMENTATION.


  METHOD get_switch.

    DATA:
      ls_switch LIKE LINE OF mt_switches.

    READ TABLE mt_switches INTO ls_switch WITH KEY code = iv_code.
    IF sy-subrc = 0.
      result = ls_switch-object.
      RETURN.
    ENDIF.

    result = initialize_switch( iv_code ).

  ENDMETHOD.


  METHOD initialize_switch.

    DATA:
      lv_text1       TYPE string,
      ls_switch      LIKE LINE OF mt_switches,
      ls_switch_data TYPE zswi_switch,
      lo_switch      TYPE REF TO zcl_swi_switch.

    SELECT SINGLE *
      INTO ls_switch_data
      FROM zswi_switch
      WHERE code = iv_code.
    IF sy-subrc <> 0.
      lv_text1 = iv_code.
      RAISE EXCEPTION TYPE zcx_swi_switch
        EXPORTING
          textid = zcx_swi_switch=>switch_not_exists
          text1  = lv_text1.
    ENDIF.

    CREATE OBJECT lo_switch.

    lo_switch->ms_switch_data = ls_switch_data.

    lo_switch->initialize_custom_det_class( ).

    result = lo_switch.

  ENDMETHOD.


ENDCLASS.
