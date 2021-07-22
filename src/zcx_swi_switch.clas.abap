CLASS zcx_swi_switch DEFINITION
  PUBLIC
  INHERITING FROM cx_static_check
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES:
      if_t100_dyn_msg,
      if_t100_message.

    CONSTANTS:
      BEGIN OF switch_not_exists,
        msgid TYPE symsgid VALUE `ZSWI_SWITCH`,
        msgno TYPE symsgno VALUE `001`,
        attr1 TYPE scx_attrname VALUE `TEXT1`,
        attr2 TYPE scx_attrname VALUE ``,
        attr3 TYPE scx_attrname VALUE ``,
        attr4 TYPE scx_attrname VALUE ``,
      END OF switch_not_exists.

    CONSTANTS:
      BEGIN OF det_class_error,
        msgid TYPE symsgid VALUE `ZSWI_SWITCH`,
        msgno TYPE symsgno VALUE `002`,
        attr1 TYPE scx_attrname VALUE `TEXT1`,
        attr2 TYPE scx_attrname VALUE ``,
        attr3 TYPE scx_attrname VALUE ``,
        attr4 TYPE scx_attrname VALUE ``,
      END OF det_class_error.

    DATA:
      text1 TYPE string READ-ONLY,
      text2 TYPE string READ-ONLY,
      text3 TYPE string READ-ONLY,
      text4 TYPE string READ-ONLY.

    METHODS constructor
      IMPORTING
        textid   LIKE if_t100_message=>t100key OPTIONAL
        previous LIKE previous OPTIONAL
        text1    LIKE text1 OPTIONAL
        text2    LIKE text2 OPTIONAL
        text3    LIKE text3 OPTIONAL
        text4    LIKE text4 OPTIONAL.

  PROTECTED SECTION.

  PRIVATE SECTION.

ENDCLASS.



CLASS zcx_swi_switch IMPLEMENTATION.


  METHOD constructor ##ADT_SUPPRESS_GENERATION.

    super->constructor( previous = previous ).

    CLEAR me->textid.

    me->text1 = text1.
    me->text2 = text2.
    me->text3 = text3.
    me->text4 = text4.

    IF textid IS INITIAL.
      if_t100_message~t100key = if_t100_message=>default_textid.
    ELSE.
      if_t100_message~t100key = textid.
    ENDIF.

  ENDMETHOD.


ENDCLASS.
