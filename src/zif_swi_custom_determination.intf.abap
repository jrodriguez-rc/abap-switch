INTERFACE zif_swi_custom_determination
  PUBLIC.

  METHODS get_status
    IMPORTING
      is_switch     TYPE zswi_switch
      ir_data       TYPE REF TO data OPTIONAL
    RETURNING
      VALUE(result) TYPE zwsi_status.

ENDINTERFACE.
