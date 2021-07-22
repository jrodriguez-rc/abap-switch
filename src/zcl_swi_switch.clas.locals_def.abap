CLASS lcl_buffer DEFINITION DEFERRED.
CLASS zcl_swi_switch DEFINITION LOCAL FRIENDS lcl_buffer.

CLASS lcl_buffer DEFINITION.

  PUBLIC SECTION.
    METHODS get_switch
      IMPORTING
        iv_code       TYPE zswi_switch_code
      RETURNING
        VALUE(result) TYPE REF TO zif_swi_switch
      RAISING
        zcx_swi_switch.

  PRIVATE SECTION.
    TYPES:
      BEGIN OF ty_switch,
        code   TYPE zswi_switch_code,
        object TYPE REF TO zif_swi_switch,
      END OF ty_switch,
      ty_switches TYPE SORTED TABLE OF ty_switch WITH UNIQUE KEY code.

    DATA:
      mt_switches TYPE ty_switches.

    METHODS initialize_switch
      IMPORTING
        iv_code       TYPE zswi_switch_code
      RETURNING
        VALUE(result) TYPE REF TO zif_swi_switch
      RAISING
        zcx_swi_switch.

ENDCLASS.
