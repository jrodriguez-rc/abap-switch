CLASS zcl_swi_custom_det_example DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES:
      zif_swi_custom_determination.

  PROTECTED SECTION.

  PRIVATE SECTION.

ENDCLASS.



CLASS zcl_swi_custom_det_example IMPLEMENTATION.


  METHOD zif_swi_custom_determination~get_status.

    IF sy-sysid = `A4H`.
      result = zif_swi_switch=>status-activated.
    ELSE.
      result = zif_swi_switch=>status-inactive.
    ENDIF.

  ENDMETHOD.


ENDCLASS.
