INTERFACE zif_swi_switch
  PUBLIC.

  CONSTANTS:
    BEGIN OF status,
      inactive    TYPE zwsi_status VALUE ``,
      development TYPE zwsi_status VALUE `D`,
      beta        TYPE zwsi_status VALUE `B`,
      activated   TYPE zwsi_status VALUE `X`,
    END OF status.

  METHODS get_code
    RETURNING
      VALUE(result) TYPE zswi_switch_code.

  METHODS get_status
    IMPORTING
      ir_data       TYPE REF TO data OPTIONAL
    RETURNING
      VALUE(result) TYPE zwsi_status.

  METHODS is_activated
    IMPORTING
      ir_data       TYPE REF TO data OPTIONAL
    RETURNING
      VALUE(result) TYPE abap_bool.

ENDINTERFACE.
