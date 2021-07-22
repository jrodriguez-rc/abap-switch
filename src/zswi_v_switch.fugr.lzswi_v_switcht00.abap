*---------------------------------------------------------------------*
*    view related data declarations
*   generation date: 22.07.2021 at 17:13:05
*   view maintenance generator version: #001407#
*---------------------------------------------------------------------*
*...processing: ZSWI_V_SWITCH...................................*
TABLES: ZSWI_V_SWITCH, *ZSWI_V_SWITCH. "view work areas
CONTROLS: TCTRL_ZSWI_V_SWITCH
TYPE TABLEVIEW USING SCREEN '0100'.
DATA: BEGIN OF STATUS_ZSWI_V_SWITCH. "state vector
          INCLUDE STRUCTURE VIMSTATUS.
DATA: END OF STATUS_ZSWI_V_SWITCH.
* Table for entries selected to show on screen
DATA: BEGIN OF ZSWI_V_SWITCH_EXTRACT OCCURS 0010.
INCLUDE STRUCTURE ZSWI_V_SWITCH.
          INCLUDE STRUCTURE VIMFLAGTAB.
DATA: END OF ZSWI_V_SWITCH_EXTRACT.
* Table for all entries loaded from database
DATA: BEGIN OF ZSWI_V_SWITCH_TOTAL OCCURS 0010.
INCLUDE STRUCTURE ZSWI_V_SWITCH.
          INCLUDE STRUCTURE VIMFLAGTAB.
DATA: END OF ZSWI_V_SWITCH_TOTAL.

*.........table declarations:.................................*
TABLES: ZSWI_SWITCH                    .
