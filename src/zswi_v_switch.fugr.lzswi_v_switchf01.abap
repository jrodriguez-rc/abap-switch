*----------------------------------------------------------------------*
***INCLUDE LZSWI_V_SWITCHF01.
*----------------------------------------------------------------------*
*&---------------------------------------------------------------------*
*& Form CHANGED_DATA
*&---------------------------------------------------------------------*
*& text
*&---------------------------------------------------------------------*
*& -->  p1        text
*& <--  p2        text
*&---------------------------------------------------------------------*
FORM changed_data .

  GET TIME STAMP FIELD zswi_v_switch-changed_at.
  zswi_v_switch-changed_by = sy-uname.

ENDFORM.