FUNCTION zqjs___main_void.
*"  EXPORTING
*"    EV_RESULT TYPE I

  PERFORM wasm_init.

  PERFORM __main_void CHANGING ev_result.
ENDFUNCTION.
