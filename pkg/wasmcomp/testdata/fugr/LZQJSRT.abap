" WASM Runtime helpers — included in function group
" Memory load/store (little-endian)

FORM mem_ld_i32 USING iv_addr TYPE i CHANGING rv TYPE i.
  DATA lv_b TYPE x LENGTH 4.
  lv_b = gv_mem+iv_addr(4).
  DATA(lv_r) = lv_b+3(1) && lv_b+2(1) && lv_b+1(1) && lv_b+0(1).
  rv = lv_r.
ENDFORM.

FORM mem_st_i32 USING iv_addr TYPE i iv_val TYPE i.
  DATA lv_b TYPE x LENGTH 4.
  lv_b = iv_val.
  DATA(lv_r) = lv_b+3(1) && lv_b+2(1) && lv_b+1(1) && lv_b+0(1).
  gv_mem+iv_addr(4) = lv_r.
ENDFORM.

FORM mem_ld_i32_8u USING iv_addr TYPE i CHANGING rv TYPE i.
  DATA lv_b TYPE x LENGTH 1.
  lv_b = gv_mem+iv_addr(1).
  rv = lv_b.
ENDFORM.

FORM mem_ld_i32_8s USING iv_addr TYPE i CHANGING rv TYPE i.
  DATA lv_b TYPE x LENGTH 1.
  lv_b = gv_mem+iv_addr(1).
  rv = lv_b.
  IF rv > 127. rv = rv - 256. ENDIF.
ENDFORM.

FORM mem_st_i32_8 USING iv_addr TYPE i iv_val TYPE i.
  DATA lv_b TYPE x LENGTH 1.
  lv_b = iv_val.
  gv_mem+iv_addr(1) = lv_b.
ENDFORM.

FORM mem_ld_i32_16u USING iv_addr TYPE i CHANGING rv TYPE i.
  DATA lv_b TYPE x LENGTH 2.
  lv_b = gv_mem+iv_addr(2).
  DATA(lv_r) = lv_b+1(1) && lv_b+0(1).
  rv = lv_r.
ENDFORM.

FORM mem_st_i32_16 USING iv_addr TYPE i iv_val TYPE i.
  DATA lv_b TYPE x LENGTH 2.
  lv_b = iv_val.
  DATA(lv_r) = lv_b+1(1) && lv_b+0(1).
  gv_mem+iv_addr(2) = lv_r.
ENDFORM.

FORM mem_grow USING iv_pages TYPE i CHANGING rv TYPE i.
  rv = gv_mem_pages.
  DATA lv_zeros TYPE xstring.
  DATA(lv_new_bytes) = iv_pages * 65536.
  DATA lv_chunk TYPE x LENGTH 256.
  DATA(lv_chunks) = lv_new_bytes DIV 256.
  DO lv_chunks TIMES.
    CONCATENATE lv_zeros lv_chunk INTO lv_zeros IN BYTE MODE.
  ENDDO.
  CONCATENATE gv_mem lv_zeros INTO gv_mem IN BYTE MODE.
  gv_mem_pages = gv_mem_pages + iv_pages.
ENDFORM.
