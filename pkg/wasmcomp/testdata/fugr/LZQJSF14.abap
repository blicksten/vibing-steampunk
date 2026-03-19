FORM f1120 USING p0 TYPE i.
  DATA l1 TYPE i. DATA l2 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s0 = mem_ld_i32( s0 + 4 ). l1 = s0. s0 = p0.
  s0 = mem_ld_i32_8u( s0 ). p0 = s0. s1 = 4.
  IF zcl_wasm_rt=>le_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
  s1 = p0. s2 = 3.
  IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
  s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
  IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = l1. s0 = mem_ld_i32( s0 ). p0 = s0. s1 = l1. s2 = 4. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). l2 = s1. s1 = mem_ld_i32( s1 ).
    DATA(lv_ci_func) = mt_tab0[ s1 + 1 ]. " call_indirect
    dispatch_t2( iv_idx = lv_ci_func p0 = s0 ). s0 = l2. s0 = mem_ld_i32( s0 + 4 ).
    IF s0 <> 0.
      s0 = p0. PERFORM f125 USING s0.
    ELSE.
    ENDIF.
    s0 = l1. PERFORM f125 USING s0.
  ELSE.
  ENDIF.
ENDFORM.

FORM f1121 USING p0 TYPE i p1 TYPE i p2 TYPE i CHANGING rv TYPE i.
  DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i.
  DATA lv_br TYPE i. s0 = p0. s0 = mem_ld_i32( s0 + 8 ). l3 = s0. s0 = p0. s1 = 0. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = p0. s0 = mem_ld_i32( s0 ). l4 = s0. s0 = p0. s1 = 0.
  zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ). s0 = p0. s0 = mem_ld_i32( s0 + 16 ). l5 = s0. s0 = p0. s0 = mem_ld_i32( s0 + 12 ). s1 = p0. s2 = l3. s3 = l4. s4 = p1. s5 = p2. s6 = 0.
  PERFORM f365 USING s1 s2 s3 s4 s5 s6 CHANGING s1. p0 = s1. s1 = l3. s2 = 0. s3 = l5.
  DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
  s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). s0 = p0. rv = s0.
ENDFORM.

FORM f1122 USING p0 TYPE i p1 TYPE i p2 TYPE i CHANGING rv TYPE i.
  DATA l3 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = -1. l3 = s0. s0 = p0. s1 = p0. s1 = mem_ld_i32( s1 + 4 ). s2 = p2.
  s1 = s1 + s2. PERFORM f1014 USING s0 s1 CHANGING s0.
  IF s0 <> 0.
    s0 = -1.
  ELSE.
    s1 = p0. s1 = mem_ld_i32( s1 ). s2 = p1. s1 = s1 + s2. l3 = s1. s2 = p2. s1 = s1 + s2. s2 = l3. s3 = p0. s3 = mem_ld_i32( s3 + 4 ). s4 = p1. s3 = s3 - s4. PERFORM f157 USING s1 s2 s3 CHANGING s1. s1 = p0. s2 = p0.
    s2 = mem_ld_i32( s2 + 4 ). s3 = p2. s2 = s2 + s3. mem_st_i32( iv_addr = s1 + 4 iv_val = s2 ). s1 = 0.
  ENDIF.
  rv = s1.
ENDFORM.

FORM f1123 USING p0 TYPE i.
  DATA l1 TYPE i. DATA l2 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s0 = mem_ld_i32( s0 + 16 ). l1 = s0.
  DO 1 TIMES. " block
    s0 = p0. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 8 ). l2 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
    IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l2. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p0 = s0. s1 = p0. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 - s2. p0 = s1. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s1 = 0.
    IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l1. s1 = l2. PERFORM f1384 USING s0 s1.
  ENDDO.
  s0 = l1. PERFORM f117 USING s0.
ENDFORM.

FORM f1124 USING p0 TYPE i p1 TYPE i p2 TYPE i p3 TYPE int8 CHANGING rv TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    s0 = p3. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
    IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p3. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p1 = s0. s1 = p1. s1 = mem_ld_i32( s1 ). p1 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p1. s1 = 1.
    IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = p3. PERFORM f453 USING s0 s1.
  ENDDO.
  s0 = p0. s1 = 1141485. s2 = 0. PERFORM f970 USING s0 s1 s2 CHANGING s0. s0 = -1. rv = s0.
ENDFORM.

FORM f1125 USING p0 TYPE i p1 TYPE i p2 TYPE int8.
  DATA l3 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p1.
  s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). l3 = s0. s0 = p1. s1 = p2. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ).
  DO 1 TIMES. " block
    s0 = l3. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
    IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l3. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p1 = s0. s1 = p1. s1 = mem_ld_i32( s1 ). p1 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p1. s1 = 1.
    IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = l3. PERFORM f453 USING s0 s1.
  ENDDO.
ENDFORM.

FORM f1126 USING p0 TYPE i p1 TYPE int8.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l3 = s0. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 32 ). p1 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
    IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l2 = s0. s1 = l2. s1 = mem_ld_i32( s1 ). l2 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l2. s1 = 1.
    IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s1 = p1. PERFORM f453 USING s0 s1.
  ENDDO.
  s0 = l3. s1 = 12884901888. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 32 CHANGING cv_mem = mv_mem ).
ENDFORM.

FORM f1127 USING p0 TYPE i p1 TYPE int8 CHANGING rv TYPE int8.
  DATA l2 TYPE i. DATA l3 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = 12884901888. l3 = s0.
  DO 1 TIMES. " block
    s0 = p1. s1 = -4294967296.
    IF zcl_wasm_rt=>lt_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). s0 = mem_ld_i32_16u( s0 + 6 ). l2 = s0. s1 = 21. s0 = s0 - s1. s1 = 65535. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = 10.
    IF zcl_wasm_rt=>gt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s1 = mem_ld_i32( s1 + 68 ). s2 = l2. s3 = 24. s2 = s2 * s3. s1 = s1 + s2. s1 = mem_ld_i32( s1 + 4 ). s2 = 1. PERFORM f772 USING s0 s1 s2 CHANGING s0. l3 = s0.
  ENDDO.
  s0 = l3. rv = s0.
ENDFORM.

FORM f1128 USING p0 TYPE i p1 TYPE i p2 TYPE i CHANGING rv TYPE i.
  DATA l3 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA lv_br TYPE i. s0 = p2. s1 = p0. s1 = mem_ld_i32( s1 ). s2 = p0.
  s2 = mem_ld_i32( s2 + 8 ). l3 = s2. s1 = s1 - s2.
  IF zcl_wasm_rt=>gt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = p0. s1 = l3. s2 = p2. PERFORM f826 USING s0 s1 s2. s0 = p0. s0 = mem_ld_i32( s0 + 8 ). l3 = s0.
  ELSE.
  ENDIF.
  s0 = p0. s0 = mem_ld_i32( s0 + 4 ). s1 = l3. s0 = s0 + s1. s1 = p1. s2 = p2. PERFORM f216 USING s0 s1 s2 CHANGING s0. s0 = p0. s1 = p2. s2 = l3. s1 = s1 + s2. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = 0. rv = s0.
ENDFORM.

FORM f1129 USING p0 TYPE i p1 TYPE i p2 TYPE i CHANGING rv TYPE i.
  DATA l3 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA lv_br TYPE i. s0 = p2. s1 = p0. s1 = mem_ld_i32( s1 ). s2 = p0.
  s2 = mem_ld_i32( s2 + 8 ). l3 = s2. s1 = s1 - s2.
  IF zcl_wasm_rt=>gt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = p0. s1 = l3. s2 = p2. PERFORM f827 USING s0 s1 s2. s0 = p0. s0 = mem_ld_i32( s0 + 8 ). l3 = s0.
  ELSE.
  ENDIF.
  s0 = p0. s0 = mem_ld_i32( s0 + 4 ). s1 = l3. s0 = s0 + s1. s1 = p1. s2 = p2. PERFORM f216 USING s0 s1 s2 CHANGING s0. s0 = p0. s1 = p2. s2 = l3. s1 = s1 + s2. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = 0. rv = s0.
ENDFORM.

FORM f1130 USING p0 TYPE i p1 TYPE i p2 TYPE i CHANGING rv TYPE i.
  DATA l3 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA lv_br TYPE i. s0 = p2. s1 = p0. s1 = mem_ld_i32( s1 ). s2 = p0.
  s2 = mem_ld_i32( s2 + 8 ). l3 = s2. s1 = s1 - s2.
  IF zcl_wasm_rt=>gt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = p0. s1 = l3. s2 = p2. PERFORM f828 USING s0 s1 s2. s0 = p0. s0 = mem_ld_i32( s0 + 8 ). l3 = s0.
  ELSE.
  ENDIF.
  s0 = p0. s0 = mem_ld_i32( s0 + 4 ). s1 = l3. s0 = s0 + s1. s1 = p1. s2 = p2. PERFORM f216 USING s0 s1 s2 CHANGING s0. s0 = p0. s1 = p2. s2 = l3. s1 = s1 + s2. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = 0. rv = s0.
ENDFORM.

FORM f1131 USING p0 TYPE i p1 TYPE i p2 TYPE i CHANGING rv TYPE i.
  DATA l3 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA lv_br TYPE i. s0 = p2. s1 = p0. s1 = mem_ld_i32( s1 ). s2 = p0.
  s2 = mem_ld_i32( s2 + 8 ). l3 = s2. s1 = s1 - s2.
  IF zcl_wasm_rt=>gt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = p0. s1 = l3. s2 = p2. PERFORM f829 USING s0 s1 s2. s0 = p0. s0 = mem_ld_i32( s0 + 8 ). l3 = s0.
  ELSE.
  ENDIF.
  s0 = p0. s0 = mem_ld_i32( s0 + 4 ). s1 = l3. s0 = s0 + s1. s1 = p1. s2 = p2. PERFORM f216 USING s0 s1 s2 CHANGING s0. s0 = p0. s1 = p2. s2 = l3. s1 = s1 + s2. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = 0. rv = s0.
ENDFORM.

FORM f1132 USING p0 TYPE i p1 TYPE i p2 TYPE i p3 TYPE i p4 TYPE i CHANGING rv TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = p1. s2 = p2. s3 = p3. PERFORM f674 USING s0 s1 s2 s3 CHANGING s0. p0 = s0.
  s1 = 0.
  IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = p1. s0 = mem_ld_i32( s0 + 116 ). s1 = p0. s2 = 4. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. p1 = s0. s1 = p4. s2 = 3. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s2 = 8.
    s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). s2 = p1. s2 = mem_ld_i32( s2 + 12 ). s3 = -12. s2 = zcl_wasm_rt=>and32( iv_a = s2 iv_b = s3 ). s1 = zcl_wasm_rt=>or32( iv_a = s1 iv_b = s2 ). s2 = 3.
    s1 = zcl_wasm_rt=>or32( iv_a = s1 iv_b = s2 ). mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ).
  ELSE.
  ENDIF.
  s0 = p0. rv = s0.
ENDFORM.

FORM f1133 USING p0 TYPE i p1 TYPE int8 CHANGING rv TYPE i.
  DATA l2 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    s0 = p1. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
    IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l2 = s0. s1 = l2. s1 = mem_ld_i32( s1 ). l2 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l2. s1 = 1.
    IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = p1. PERFORM f453 USING s0 s1.
  ENDDO.
  s0 = p1. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 25769803776.
  IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
  rv = s0.
ENDFORM.

FORM f1134 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i p4 TYPE i CHANGING rv TYPE int8.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    s0 = p3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). p1 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). p2 = s0. s1 = -1.
    IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p4.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    s1 = p2. s2 = -2. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). s2 = 2.
    IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
    s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s1 = 1137529. s2 = 0. PERFORM f970 USING s0 s1 s2 CHANGING s0. s0 = 25769803776. rv = s0. RETURN.
  ENDDO.
  s0 = p0. s1 = p1. PERFORM f820 USING s0 s1 CHANGING s0. rv = s0.
ENDFORM.

FORM f1135 USING p0 TYPE i p1 TYPE i p2 TYPE i p3 TYPE i CHANGING rv TYPE i.
  DATA l4 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA lv_br TYPE i. s0 = p0. s0 = mem_ld_i32( s0 + 12 ). l4 = s0.
  IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = 0. rv = s0. RETURN.
  ELSE.
  ENDIF.
  s0 = p0. s1 = p0. s1 = mem_ld_i32( s1 + 8 ). s2 = 1073741823. s3 = -1073741823. s4 = p1. s5 = p1. s6 = -1073741823.
  IF s5 <= s6. s5 = 1. ELSE. s5 = 0. ENDIF.
  IF s5 <> 0. s3 = s3. ELSE. s3 = s4. ENDIF.
  p1 = s3. s4 = p1. s5 = 1073741823.
  IF s4 >= s5. s4 = 1. ELSE. s4 = 0. ENDIF.
  IF s4 <> 0. s2 = s2. ELSE. s2 = s3. ENDIF.
  s1 = s1 + s2. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = p0. s1 = p2. s2 = p3. s3 = l4. s4 = 0. PERFORM f137 USING s0 s1 s2 s3 s4 CHANGING s0. rv = s0.
ENDFORM.

FORM f1136 USING p0 TYPE i p1 TYPE int8 CHANGING rv TYPE int8.
  DATA l2 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = p1. s2 = 0. PERFORM f341 USING s0 s1 s2 CHANGING s0.
  DO 1 TIMES. " block
    s1 = p1. s2 = 32. s1 = zcl_wasm_rt=>shr_u64( iv_val = s1 iv_shift = s2 ). s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = -11.
    IF zcl_wasm_rt=>lt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
    IF s1 <> 0. EXIT. ENDIF. " br_if 0
    s1 = p1. s1 = zcl_wasm_rt=>wrap_i64( s1 ). l2 = s1. s2 = l2. s2 = mem_ld_i32( s2 ). l2 = s2. s3 = 1. s2 = s2 - s3. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = l2. s2 = 1.
    IF s1 > s2. s1 = 1. ELSE. s1 = 0. ENDIF.
    IF s1 <> 0. EXIT. ENDIF. " br_if 0
    s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s2 = p1. PERFORM f453 USING s1 s2.
  ENDDO.
  rv = s0.
ENDFORM.

FORM f1137 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i CHANGING rv TYPE int8.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = p3.
  s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 0 ). p1 = s1. s2 = p3. s2 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s2 + 8 ). s3 = 1. PERFORM f259 USING s0 s1 s2 s3 CHANGING s0. s1 = 0.
  IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = 25769803776. rv = s0. RETURN.
  ELSE.
  ENDIF.
  s0 = p1. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
  IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p0 = s0. s1 = p0. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
  ELSE.
  ENDIF.
  s0 = p1. rv = s0.
ENDFORM.

FORM f1138 USING p0 TYPE i p1 TYPE i.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = 1215076. s0 = mem_ld_i32_8u( s0 ). s0 = p1.
  s0 = mem_ld_i32( s0 + 4 ). l2 = s0. s0 = p1. s0 = mem_ld_i32( s0 ). l3 = s0. s0 = 8. PERFORM f18 USING s0 CHANGING s0. p1 = s0.
  IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = 8. PERFORM f687 USING s0.
    RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
  ELSE.
  ENDIF.
  s0 = p1. s1 = l2. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = p1. s1 = l3. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s1 = 1117520. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = p0. s1 = p1.
  mem_st_i32( iv_addr = s0 iv_val = s1 ).
ENDFORM.

FORM f1139 USING p0 TYPE i p1 TYPE int8 p2 TYPE i.
  DATA l3 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). s0 = mem_ld_i32( s0 + 32 ). l3 = s0.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). p1 = s0. s1 = -8589934592.
    IF zcl_wasm_rt=>ge_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p0. s1 = p1. s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = p2.
      DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
      dispatch_t6( iv_idx = lv_ci_func p0 = s0 p1 = s1 ).
    ELSE.
    ENDIF.
    s0 = l3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 8 ). p1 = s0. s1 = -8589934592.
    IF zcl_wasm_rt=>lt_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s1 = p1. s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = p2.
    DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
    dispatch_t6( iv_idx = lv_ci_func p0 = s0 p1 = s1 ).
  ENDDO.
ENDFORM.

FORM f1140 USING p0 TYPE i p1 TYPE i p2 TYPE i.
  DATA l3 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 32. s0 = s0 - s1. l3 = s0. gv_g0 = s0. s0 = l3. s1 = 0.
  mem_st_i32( iv_addr = s0 + 16 iv_val = s1 ). s0 = l3. s1 = 1. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = l3. s1 = 4. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 8 CHANGING cv_mem = mv_mem ). s0 = l3. s1 = p1.
  mem_st_i32( iv_addr = s0 + 28 iv_val = s1 ). s0 = l3. s1 = p0. mem_st_i32( iv_addr = s0 + 24 iv_val = s1 ). s0 = l3. s1 = l3. s2 = 24. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l3. s1 = p2. PERFORM f696 USING s0 s1.
  RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
ENDFORM.

FORM f1141 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA l2 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    s0 = p0. s0 = mem_ld_i32( s0 + 16 ). l2 = s0. s1 = 16. s0 = s0 + s1. s1 = p1. s2 = l2. s2 = mem_ld_i32( s2 ).
    DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
    s0 = dispatch_t7( iv_idx = lv_ci_func p0 = s0 p1 = s1 ). l2 = s0.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s0 = mem_ld_i32( s0 + 16 ). p1 = s0. s0 = mem_ld_i32_8u( s0 + 136 ).
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p1. s1 = 1. mem_st_i32_8( iv_addr = s0 + 136 iv_val = s1 ). s0 = p0. s1 = 1134898. s2 = 0. PERFORM f969 USING s0 s1 s2 CHANGING s0. s0 = p1. s1 = 0. mem_st_i32_8( iv_addr = s0 + 136 iv_val = s1 ).
  ENDDO.
  s0 = l2. rv = s0.
ENDFORM.

FORM f1142 USING p0 TYPE i p1 TYPE i.
  DATA l2 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 80. s0 = s0 - s1. l2 = s0. gv_g0 = s0.
  s0 = l2. s1 = p1.
  IF s1 <> 0.
    s1 = p0. s2 = 16. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). s2 = l2. s3 = 16. s2 = s2 + s3. s3 = p1. PERFORM f410 USING s1 s2 s3 CHANGING s1.
  ELSE.
    s2 = 1145701.
  ENDIF.
  mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = p0. s2 = 1147173. s3 = l2. PERFORM f971 USING s1 s2 s3 CHANGING s1. s1 = l2. s2 = 80. s1 = s1 + s2. gv_g0 = s1.
ENDFORM.

FORM f1143 USING p0 TYPE int8 p1 TYPE i.
  DATA l2 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p1.
  IF s0 <> 0.
    DO 1 TIMES. " block
      s0 = p0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
      IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p0. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l2 = s0. s1 = l2. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 - s2. l2 = s1. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l2. s1 = 0.
      IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p1. s1 = p0. PERFORM f1384 USING s0 s1.
    ENDDO.
    s0 = p1. PERFORM f117 USING s0.
  ELSE.
  ENDIF.
ENDFORM.

FORM f1144 USING p0 TYPE i p1 TYPE i p2 TYPE i.
  DATA l3 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l3 = s0. gv_g0 = s0. s0 = p0. s1 = p1.
  s2 = 255. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). PERFORM f908 USING s0 s1. s0 = l3. s1 = p2. s2 = p0. s2 = mem_ld_i32( s2 + 4 ). s1 = s1 - s2. s2 = 4. s1 = s1 - s2. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = p0. s1 = l3.
  s2 = 12. s1 = s1 + s2. s2 = 4. PERFORM f1097 USING s0 s1 s2. s0 = l3. s1 = 16. s0 = s0 + s1. gv_g0 = s0.
ENDFORM.

FORM f1145 USING p0 TYPE i p1 TYPE int8 p2 TYPE i CHANGING rv TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      s0 = p2. s1 = 0.
      IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 32 ). p1 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = -30064771072.
      IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = 0. s1 = p2. s2 = 2147483647. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). s2 = p1. s2 = zcl_wasm_rt=>wrap_i64( s2 ). s2 = mem_ld_i32( s2 + 4 ). s3 = 2147483647. s2 = zcl_wasm_rt=>and32( iv_a = s2 iv_b = s3 ).
      IF zcl_wasm_rt=>lt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
    ENDDO.
    s0 = 1.
  ENDDO.
  rv = s0.
ENDFORM.

FORM f1146 USING p0 TYPE i.
  DATA l1 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA lv_br TYPE i. s0 = p0. s0 = mem_ld_i32( s0 + 12 ).
  IF s0 <> 0.
    s0 = p0. s0 = mem_ld_i32( s0 ). l1 = s0. s0 = mem_ld_i32( s0 ). s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s2 = 0. s3 = l1. s4 = 4. s3 = s3 + s4. s3 = mem_ld_i32( s3 ).
    DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
    s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). l1 = s0. s0 = p0. s1 = 0. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = p0. s1 = l1. mem_st_i32( iv_addr = s0 + 16 iv_val = s1 ).
  ELSE.
  ENDIF.
  s0 = p0. s1 = 0. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = p0. s1 = -2147483648. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ).
ENDFORM.

FORM f1147 USING p0 TYPE i p1 TYPE i.
  DATA l2 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    s0 = p1. s1 = 228.
    IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s0 = mem_ld_i32( s0 + 16 ). l2 = s0. s0 = mem_ld_i32( s0 + 56 ). s1 = p1. s2 = 2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s0 = mem_ld_i32( s0 ). p0 = s0. s1 = p0. s1 = mem_ld_i32( s1 ). p1 = s1.
    s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p1. s1 = 1.
    IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l2. s1 = p0. PERFORM f713 USING s0 s1.
  ENDDO.
ENDFORM.

FORM f1148 USING p0 TYPE i p1 TYPE int8 p2 TYPE int8 p3 TYPE int8 CHANGING rv TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA lv_br TYPE i. s0 = p0.
  s1 = p1. s2 = p2. s3 = 2147483648. s2 = s2 + s3. s3 = 4294967295.
  IF zcl_wasm_rt=>le_u64( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
  IF s2 <> 0.
    s2 = p2. s3 = 4294967295. s2 = zcl_wasm_rt=>and64( iv_a = s2 iv_b = s3 ).
  ELSE.
    s3 = -51539607552. s4 = p2. s4 = s4. " convert to f64 s4 = zcl_wasm_rt=>reinterpret_f64_i64( s4 ). p1 = s4. s5 = 9221120288580698112. s4 = s4 - s5. s5 = p1. s6 = 9223372036854775807. s5 = zcl_wasm_rt=>and64( iv_a = s5 iv_b = s6 ).
    s6 = 9218868437227405312.
    IF zcl_wasm_rt=>gt_u64( iv_a = s5 iv_b = s6 ) = abap_true. s5 = 1. ELSE. s5 = 0. ENDIF.
    IF s5 <> 0. s3 = s3. ELSE. s3 = s4. ENDIF.
  ENDIF.
  s4 = p3. s5 = 7. PERFORM f770 USING s1 s2 s3 s4 s5 CHANGING s1. rv = s1.
ENDFORM.

FORM f1149 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i CHANGING rv TYPE int8.
  DATA l4 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA lv_br TYPE i. s0 = 25769803776. l4 = s0. s0 = p0. s1 = p3.
  s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 0 ). p1 = s1. s2 = p3. s2 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s2 + 8 ). PERFORM f401 USING s0 s1 s2 CHANGING s0.
  IF s0 <> 0.
    s0 = 25769803776.
  ELSE.
    s1 = p1. s2 = 32. s1 = zcl_wasm_rt=>shr_u64( iv_val = s1 iv_shift = s2 ). s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = -11.
    IF zcl_wasm_rt=>ge_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
    IF s1 <> 0.
      s1 = p1. s1 = zcl_wasm_rt=>wrap_i64( s1 ). p0 = s1. s2 = p0. s2 = mem_ld_i32( s2 ). s3 = 1. s2 = s2 + s3. mem_st_i32( iv_addr = s1 iv_val = s2 ).
    ELSE.
    ENDIF.
    s1 = p1.
  ENDIF.
  rv = s1.
ENDFORM.

FORM f1150 USING p0 TYPE i CHANGING rv TYPE i.
  DATA l1 TYPE i. DATA l2 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = 4. s0 = s0 + s1. s0 = mem_ld_i32( s0 ).
  s1 = p0. s1 = mem_ld_i32( s1 ). l2 = s1. s1 = mem_ld_i32( s1 ). p0 = s1. s1 = l2. s2 = 0. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = p0. s1 = mem_ld_i32( s1 ). l2 = s1. s1 = p0. s2 = 0. mem_st_i32( iv_addr = s1 iv_val = s2 ).
  s0 = mem_ld_i32( s0 ). l1 = s0. s1 = p0. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 4 ). zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 4 CHANGING cv_mem = mv_mem ). s0 = l1. s1 = l2.
  mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = 1. rv = s0.
ENDFORM.

FORM f1151 USING p0 TYPE i CHANGING rv TYPE i.
  DATA l1 TYPE i. DATA l2 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      s0 = p0. s0 = mem_ld_i32( s0 + 280 ). l2 = s0. s1 = 0.
      IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      DO 1 TIMES. " block
        s0 = p0. s0 = mem_ld_i32( s0 + 256 ). s1 = l2. s0 = s0 + s1. s0 = mem_ld_i32_8u( s0 ). p0 = s0. s1 = 35. s0 = s0 - s1.
        CASE s0.
          WHEN 0. lv_br = 2. EXIT.
          WHEN 1. lv_br = 1. EXIT.
          WHEN 2. lv_br = 2. EXIT.
          WHEN 3. lv_br = 1. EXIT.
          WHEN 4. lv_br = 1. EXIT.
          WHEN 5. lv_br = 2. EXIT.
          WHEN 6. lv_br = 2. EXIT.
          WHEN 7. lv_br = 1. EXIT.
          WHEN 8. lv_br = 1. EXIT.
          WHEN 9. lv_br = 1. EXIT.
          WHEN 10. lv_br = 1. EXIT.
          WHEN 11. lv_br = 2. EXIT.
          WHEN 12. lv_br = 2. EXIT.
          WHEN 13. lv_br = 2. EXIT.
          WHEN 14. lv_br = 1. EXIT.
          WHEN 15. lv_br = 1. EXIT.
          WHEN 16. lv_br = 1. EXIT.
          WHEN 17. lv_br = 1. EXIT.
          WHEN 18. lv_br = 1. EXIT.
          WHEN 19. lv_br = 1. EXIT.
          WHEN 20. lv_br = 1. EXIT.
          WHEN 21. lv_br = 1. EXIT.
          WHEN 22. lv_br = 1. EXIT.
          WHEN 23. lv_br = 1. EXIT.
          WHEN 24. lv_br = 1. EXIT.
          WHEN 25. lv_br = 1. EXIT.
          WHEN 26. lv_br = 1. EXIT.
          WHEN 27. lv_br = 1. EXIT.
          WHEN 28. lv_br = 1. EXIT.
          WHEN 29. lv_br = 1. EXIT.
          WHEN 30. lv_br = 1. EXIT.
          WHEN 31. lv_br = 1. EXIT.
          WHEN 32. lv_br = 1. EXIT.
          WHEN 33. lv_br = 1. EXIT.
          WHEN 34. lv_br = 1. EXIT.
          WHEN 35. lv_br = 1. EXIT.
          WHEN 36. lv_br = 1. EXIT.
          WHEN 37. lv_br = 1. EXIT.
          WHEN 38. lv_br = 1. EXIT.
          WHEN 39. lv_br = 1. EXIT.
          WHEN 40. lv_br = 1. EXIT.
          WHEN 41. lv_br = 1. EXIT.
          WHEN 42. lv_br = 1. EXIT.
          WHEN 43. lv_br = 1. EXIT.
          WHEN 44. lv_br = 1. EXIT.
          WHEN 45. lv_br = 1. EXIT.
          WHEN 46. lv_br = 1. EXIT.
          WHEN 47. lv_br = 1. EXIT.
          WHEN 48. lv_br = 1. EXIT.
          WHEN 49. lv_br = 1. EXIT.
          WHEN 50. lv_br = 1. EXIT.
          WHEN 51. lv_br = 1. EXIT.
          WHEN 52. lv_br = 1. EXIT.
          WHEN 53. lv_br = 1. EXIT.
          WHEN 54. lv_br = 1. EXIT.
          WHEN 55. lv_br = 1. EXIT.
          WHEN 56. lv_br = 1. EXIT.
          WHEN 57. lv_br = 1. EXIT.
          WHEN 58. lv_br = 1. EXIT.
          WHEN 59. lv_br = 1. EXIT.
          WHEN 60. lv_br = 1. EXIT.
          WHEN 61. lv_br = 1. EXIT.
          WHEN 62. lv_br = 1. EXIT.
          WHEN 63. lv_br = 1. EXIT.
          WHEN 64. lv_br = 1. EXIT.
          WHEN 65. lv_br = 1. EXIT.
          WHEN 66. lv_br = 1. EXIT.
          WHEN 67. lv_br = 1. EXIT.
          WHEN 68. lv_br = 1. EXIT.
          WHEN 69. lv_br = 1. EXIT.
          WHEN 70. lv_br = 1. EXIT.
          WHEN 71. lv_br = 1. EXIT.
          WHEN 72. lv_br = 1. EXIT.
          WHEN 73. lv_br = 2. EXIT.
          WHEN 74. lv_br = 1. EXIT.
          WHEN 75. lv_br = 1. EXIT.
          WHEN 76. lv_br = 2. EXIT.
          WHEN OTHERS. EXIT.
        ENDCASE.
      ENDDO.
      s0 = p0. s1 = 238. s0 = s0 - s1. s1 = 2.
      IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
    ENDDO.
    s0 = 1. l1 = s0.
  ENDDO.
  s0 = l1. rv = s0.
ENDFORM.

FORM f1152 USING p0 TYPE i CHANGING rv TYPE i.
  DATA l1 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = 1215076. s0 = mem_ld_i32_8u( s0 ). s0 = 20.
  PERFORM f18 USING s0 CHANGING s0. l1 = s0.
  IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = 20. PERFORM f687 USING s0.
    RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
  ELSE.
  ENDIF.
  s0 = l1. s1 = 0. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 12 CHANGING cv_mem = mv_mem ). s0 = l1. s1 = p0. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 0 ).
  zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ). s0 = l1. s1 = 8. s0 = s0 + s1. s1 = p0. s2 = 8. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l1. rv = s0.
ENDFORM.

FORM f1153 USING p0 TYPE i CHANGING rv TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = 127.
  IF zcl_wasm_rt=>le_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = p0. s1 = 3. s0 = zcl_wasm_rt=>shr_u32( iv_val = s0 iv_shift = s1 ). s1 = 536870908. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = 1181216. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). s1 = p0.
    s0 = zcl_wasm_rt=>shr_u32( iv_val = s0 iv_shift = s1 ). s1 = 1. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). rv = s0. RETURN.
  ELSE.
  ENDIF.
  s0 = p0. s1 = -2. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = 8204.
  IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
  s1 = p0. PERFORM f1224 USING s1 CHANGING s1. s2 = 0.
  IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
  s0 = zcl_wasm_rt=>or32( iv_a = s0 iv_b = s1 ). rv = s0.
ENDFORM.

FORM f1154 USING p0 TYPE i CHANGING rv TYPE i.
  DATA l1 TYPE i. DATA l2 TYPE i. DATA l3 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s0 = mem_ld_i32( s0 ). l1 = s0.
  s0 = mem_ld_i32( s0 ). l2 = s0. s0 = l1. s1 = 0. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l2. s0 = mem_ld_i32( s0 ). l1 = s0. s0 = l2. s1 = 0. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l2.
  s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 4 ). l3 = s0. s0 = p0. s0 = mem_ld_i32( s0 + 4 ). s0 = mem_ld_i32( s0 ). p0 = s0. s1 = l1. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s1 = l3.
  zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 4 CHANGING cv_mem = mv_mem ). s0 = 1. rv = s0.
ENDFORM.

FORM f1155 USING p0 TYPE i p1 TYPE int8.
  DATA l2 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    s0 = p1. s1 = -4294967296.
    IF zcl_wasm_rt=>lt_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l2 = s0. s0 = mem_ld_i32_16u( s0 + 6 ). s1 = 47.
    IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l2. s0 = mem_ld_i32( s0 + 32 ). l2 = s0.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s1 = l2. PERFORM f741 USING s0 s1. s0 = p0. s1 = 16. s0 = s0 + s1. s1 = l2. s2 = p0. s2 = mem_ld_i32( s2 + 4 ).
    DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
    dispatch_t6( iv_idx = lv_ci_func p0 = s0 p1 = s1 ).
  ENDDO.
ENDFORM.

FORM f1156 USING p0 TYPE i p1 TYPE int8 p2 TYPE i.
  DATA l3 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p2. s1 = p2. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2.
  mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p1. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
  IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l3 = s0. s1 = l3. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
  ELSE.
  ENDIF.
  s0 = p0. s1 = p2. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = p0. s1 = p1. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ).
ENDFORM.

FORM f1157 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA l2 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l2 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    s0 = p1. s1 = p0. s1 = mem_ld_i32( s1 + 32 ).
    IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = l2. s1 = p1. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s1 = 1153671. s2 = l2. PERFORM f881 USING s0 s1 s2. s0 = -1. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s1 = p0. PERFORM f174 USING s1 CHANGING s1.
  ENDDO.
  s2 = l2. s3 = 16. s2 = s2 + s3. gv_g0 = s2. rv = s1.
ENDFORM.

FORM f1158 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA l2 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l2 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    s0 = p1. s1 = p0. s1 = mem_ld_i32( s1 + 32 ).
    IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = l2. s1 = p1. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s1 = 1153671. s2 = l2. PERFORM f881 USING s0 s1 s2. s0 = -1. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s1 = p0. PERFORM f41 USING s1 CHANGING s1.
  ENDDO.
  s2 = l2. s3 = 16. s2 = s2 + s3. gv_g0 = s2. rv = s1.
ENDFORM.

FORM f1159 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA l2 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l2 = s0.
  gv_g0 = s0. s0 = l2. s1 = p0. s1 = mem_ld_i32( s1 ). p0 = s1. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = p1. s1 = 1078516. s2 = 8. s3 = p0. s4 = 12. s3 = s3 + s4. s4 = 1061756. s5 = l2. s6 = 12. s5 = s5 + s6. s6 = 1061772.
  PERFORM f802 USING s0 s1 s2 s3 s4 s5 s6 CHANGING s0. s1 = l2. s2 = 16. s1 = s1 + s2. gv_g0 = s1. rv = s0.
ENDFORM.

FORM f1160 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA l2 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l2 = s0.
  gv_g0 = s0. s0 = l2. s1 = p0. s1 = mem_ld_i32( s1 ). p0 = s1. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = p1. s1 = 1078516. s2 = 8. s3 = p0. s4 = 12. s3 = s3 + s4. s4 = 1078524. s5 = l2. s6 = 12. s5 = s5 + s6. s6 = 1078540.
  PERFORM f802 USING s0 s1 s2 s3 s4 s5 s6 CHANGING s0. s1 = l2. s2 = 16. s1 = s1 + s2. gv_g0 = s1. rv = s0.
ENDFORM.

FORM f1161 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i CHANGING rv TYPE int8.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i.
  DATA s14 TYPE i. DATA lv_br TYPE i. s0 = p2. s1 = 0.
  IF s0 <= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = p0. s1 = p1. s2 = 12884901888. s3 = 12884901888. s4 = 0. s5 = 0. s6 = 2. PERFORM f0 USING s0 s1 s2 s3 s4 s5 s6 CHANGING s0. rv = s0. RETURN.
  ELSE.
  ENDIF.
  s0 = p0. s1 = p1. s2 = p3. s2 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s2 + 0 ). s3 = 12884901888. s4 = p2. s5 = 1. s4 = s4 - s5. s5 = p3. s6 = 8. s5 = s5 + s6. s6 = 2. PERFORM f0 USING s0 s1 s2 s3 s4 s5 s6 CHANGING s0.
  rv = s0.
ENDFORM.

FORM f1162 USING p0 TYPE i.
  DATA l1 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s0 = mem_ld_i32( s0 ). l1 = s0.
  IF s0 <> 0.
    s0 = p0. s0 = mem_ld_i32( s0 + 20 ). s1 = l1. s2 = 0. s3 = p0. s3 = mem_ld_i32( s3 + 16 ).
    DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
    s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ).
  ELSE.
  ENDIF.
  s0 = p0. s1 = 0. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ). s0 = p0. s1 = 16. s0 = s0 + s1. s1 = 0.
  zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ). s0 = p0. s1 = 8. s0 = s0 + s1. s1 = 0. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ).
ENDFORM.

FORM f1163 USING p0 TYPE i.
  DATA l1 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s0 = mem_ld_i32( s0 + 12 ).
  IF s0 <> 0.
    s0 = p0. s0 = mem_ld_i32( s0 ). l1 = s0. s0 = mem_ld_i32( s0 ). s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s2 = 0. s3 = l1. s4 = 4. s3 = s3 + s4. s3 = mem_ld_i32( s3 ).
    DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
    s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). l1 = s0. s0 = p0. s1 = 0. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = p0. s1 = l1. mem_st_i32( iv_addr = s0 + 16 iv_val = s1 ).
  ELSE.
  ENDIF.
  s0 = p0. s1 = 9223372032559808512. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 4 CHANGING cv_mem = mv_mem ).
ENDFORM.

FORM f1164 USING p0 TYPE i p1 TYPE int8.
  DATA l2 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    s0 = p1. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
    IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l2 = s0. s1 = l2. s1 = mem_ld_i32( s1 ). l2 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l2. s1 = 1.
    IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = p1. PERFORM f453 USING s0 s1.
  ENDDO.
ENDFORM.

FORM f1165 USING p0 TYPE i p1 TYPE i.
  DATA l2 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    s0 = p1.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p1. s1 = 16. s0 = s0 - s1. p1 = s0. s1 = p1. s1 = mem_ld_i32( s1 ). l2 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l2. s1 = 1.
    IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = p1. s1 = zcl_wasm_rt=>extend_u32( s1 ). s2 = -30064771072. s1 = zcl_wasm_rt=>or64( iv_a = s1 iv_b = s2 ). PERFORM f453 USING s0 s1.
  ENDDO.
ENDFORM.

FORM f1166 USING p0 TYPE i p1 TYPE i p2 TYPE i.
  DATA l3 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 80. s0 = s0 - s1. l3 = s0. gv_g0 = s0. s0 = l3. s1 = p0.
  s2 = 16. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). s2 = l3. s3 = 16. s2 = s2 + s3. s3 = p1. PERFORM f410 USING s1 s2 s3 CHANGING s1. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s1 = p2. s2 = l3. PERFORM f970 USING s0 s1 s2 CHANGING s0.
  s0 = l3. s1 = 80. s0 = s0 + s1. gv_g0 = s0.
ENDFORM.

FORM f1167 USING p0 TYPE i p1 TYPE i.
  DATA l2 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 80. s0 = s0 - s1. l2 = s0. gv_g0 = s0. s0 = l2. s1 = p0.
  s2 = 16. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). s2 = l2. s3 = 16. s2 = s2 + s3. s3 = p1. PERFORM f410 USING s1 s2 s3 CHANGING s1. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s1 = 1147874. s2 = l2.
  PERFORM f971 USING s0 s1 s2 CHANGING s0. s0 = l2. s1 = 80. s0 = s0 + s1. gv_g0 = s0.
ENDFORM.

FORM f1168 USING p0 TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = 1215052. s1 = 1215052. s1 = mem_ld_i32( s1 ). p0 = s1. s2 = 1. s1 = s1 + s2.
  mem_st_i32( iv_addr = s0 iv_val = s1 ).
  DO 1 TIMES. " block
    s0 = p0. s1 = 0.
    IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = 1215068. s0 = mem_ld_i32_8u( s0 ).
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = 1215064. s1 = 1215064. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = 1215068. s1 = 0. mem_st_i32_8( iv_addr = s0 iv_val = s1 ).
  ENDDO.
  RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
ENDFORM.

FORM f1169 USING p0 TYPE i.
  DATA l1 TYPE i. DATA l2 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s0 = mem_ld_i32_8u( s0 ). s1 = 3.
  IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = p0. s0 = mem_ld_i32( s0 + 4 ). p0 = s0. s0 = mem_ld_i32( s0 ). l1 = s0. s1 = p0. s2 = 4. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). l2 = s1. s1 = mem_ld_i32( s1 ).
    DATA(lv_ci_func) = mt_tab0[ s1 + 1 ]. " call_indirect
    dispatch_t2( iv_idx = lv_ci_func p0 = s0 ). s0 = l2. s0 = mem_ld_i32( s0 + 4 ).
    IF s0 <> 0.
      s0 = l1. PERFORM f125 USING s0.
    ELSE.
    ENDIF.
    s0 = p0. PERFORM f125 USING s0.
  ELSE.
  ENDIF.
ENDFORM.

FORM f1170 USING p0 TYPE i p1 TYPE i p2 TYPE i p3 TYPE i p4 TYPE i CHANGING rv TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      s0 = p2. s1 = 1114112.
      IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = 1. s1 = p0. s2 = p2. s3 = p1. s3 = mem_ld_i32( s3 + 16 ).
        DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
        s1 = dispatch_t7( iv_idx = lv_ci_func p0 = s1 p1 = s2 ).
        IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      ELSE.
      ENDIF.
      s0 = p3.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = 0.
    ENDDO.
    rv = s0. RETURN.
  ENDDO.
  s0 = p0. s1 = p3. s2 = p4. s3 = p1. s3 = mem_ld_i32( s3 + 12 ).
  DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
  s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). rv = s0.
ENDFORM.

FORM f1171 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA l2 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l2 = s0. gv_g0 = s0. s0 = l2. s1 = 8.
  s0 = s0 + s1. s1 = p0. s2 = p0. s2 = mem_ld_i32( s2 ). s2 = mem_ld_i32( s2 + 4 ).
  DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
  dispatch_t6( iv_idx = lv_ci_func p0 = s0 p1 = s1 ). s0 = l2. s0 = mem_ld_i32( s0 + 8 ). s1 = p1. s2 = l2. s2 = mem_ld_i32( s2 + 12 ). s2 = mem_ld_i32( s2 + 16 ).
  DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
  s0 = dispatch_t7( iv_idx = lv_ci_func p0 = s0 p1 = s1 ). s1 = l2. s2 = 16. s1 = s1 + s2. gv_g0 = s1. rv = s0.
ENDFORM.

FORM f1172 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA l2 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l2 = s0.
  gv_g0 = s0. s0 = l2. s1 = p0. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = p1. s1 = 1078516. s2 = 8. s3 = p0. s4 = 12. s3 = s3 + s4. s4 = 1059204. s5 = l2. s6 = 12. s5 = s5 + s6. s6 = 1059264.
  PERFORM f802 USING s0 s1 s2 s3 s4 s5 s6 CHANGING s0. s1 = l2. s2 = 16. s1 = s1 + s2. gv_g0 = s1. rv = s0.
ENDFORM.

FORM f1173 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA l2 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l2 = s0.
  gv_g0 = s0. s0 = l2. s1 = p0. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = p1. s1 = 1078516. s2 = 8. s3 = p0. s4 = 12. s3 = s3 + s4. s4 = 1078392. s5 = l2. s6 = 12. s5 = s5 + s6. s6 = 1078408.
  PERFORM f802 USING s0 s1 s2 s3 s4 s5 s6 CHANGING s0. s1 = l2. s2 = 16. s1 = s1 + s2. gv_g0 = s1. rv = s0.
ENDFORM.

FORM f1174 USING p0 TYPE i CHANGING rv TYPE i.
  DATA l1 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = 1216656. s0 = mem_ld_i32( s0 ). l1 = s0.
  IF s0 <> 0.
    s0 = l1.
  ELSE.
    s1 = 1216656. s2 = 1216632. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = 1216632.
  ENDIF.
  s1 = mem_ld_i32( s1 + 20 ). s1 = p0. s2 = 0. s3 = p0. s4 = 76.
  IF zcl_wasm_rt=>le_u32( iv_a = s3 iv_b = s4 ) = abap_true. s3 = 1. ELSE. s3 = 0. ENDIF.
  IF s3 <> 0. s1 = s1. ELSE. s1 = s2. ENDIF.
  s2 = 1. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s2 = 1213952. s1 = s1 + s2. s1 = mem_ld_i32_16u( s1 ). s2 = 1212392. s1 = s1 + s2. rv = s1.
ENDFORM.

FORM f1175 USING p0 TYPE i.
  DATA l1 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s0 = mem_ld_i32( s0 + 4 ). l1 = s0. s1 = 3.
  IF zcl_wasm_rt=>le_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
  s1 = l1. s2 = 2.
  IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
  s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
  IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = p0. s1 = 8. s0 = s0 + s1. PERFORM f935 USING s0.
  ELSE.
  ENDIF.
  s0 = p0. s0 = mem_ld_i32( s0 + 28 ). l1 = s0. s1 = l1. s1 = mem_ld_i32( s1 ). s1 = mem_ld_i32( s1 ).
  DATA(lv_ci_func) = mt_tab0[ s1 + 1 ]. " call_indirect
  dispatch_t2( iv_idx = lv_ci_func p0 = s0 ). s0 = p0. PERFORM f125 USING s0.
ENDFORM.

FORM f1176 USING p0 TYPE i CHANGING rv TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    s0 = p0. s1 = 141. s0 = s0 - s1. p0 = s0. s1 = 40.
    IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = 611630170127. s1 = p0. s1 = zcl_wasm_rt=>extend_u32( s1 ). s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s1 = 1. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ).
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s1 = 2. s0 = zcl_wasm_rt=>shl32( iv_val = s0 iv_shift = s1 ). s1 = 1195276. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). rv = s0. RETURN.
  ENDDO.
  RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
ENDFORM.

FORM f1177 USING p0 TYPE int8 p1 TYPE i.
  DATA l2 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    s0 = p0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -12.
    IF zcl_wasm_rt=>le_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l2 = s0. s1 = l2. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 - s2. l2 = s1. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l2. s1 = 0.
    IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p1. s1 = p0. PERFORM f1384 USING s0 s1.
  ENDDO.
ENDFORM.

FORM f1178 USING p0 TYPE i CHANGING rv TYPE i.
  DATA l1 TYPE i. DATA l2 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    s0 = p0. PERFORM f768 USING s0 CHANGING s0. s1 = 1. s0 = s0 + s1. l1 = s0.
    DO. " loop
      s0 = 0. s1 = l1.
      IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = l1. s1 = 1. s0 = s0 - s1. l1 = s0. s1 = p0. s0 = s0 + s1. l2 = s0. s0 = mem_ld_i32_8u( s0 ). s1 = 47.
      IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
    ENDDO.
    s0 = l2.
  ENDDO.
  rv = s0.
ENDFORM.

FORM f1179 USING p0 TYPE i.
  DATA l1 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s0 = mem_ld_i32( s0 + 4 ). l1 = s0. s1 = 3.
  IF zcl_wasm_rt=>le_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
  s1 = l1. s2 = 2.
  IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
  s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
  IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = p0. s1 = 8. s0 = s0 + s1. PERFORM f935 USING s0.
  ELSE.
  ENDIF.
  s0 = p0. s0 = mem_ld_i32( s0 + 28 ).
  IF s0 <> 0.
    s0 = p0. s0 = mem_ld_i32( s0 + 32 ). PERFORM f125 USING s0.
  ELSE.
  ENDIF.
  s0 = p0. PERFORM f125 USING s0.
ENDFORM.

FORM f1180 USING p0 TYPE i p1 TYPE i p2 TYPE i.
  DATA l3 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l3 = s0. gv_g0 = s0. s0 = p0. s1 = p1.
  s2 = 255. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). PERFORM f908 USING s0 s1. s0 = l3. s1 = p2. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = p0. s1 = l3. s2 = 12. s1 = s1 + s2. s2 = 4. PERFORM f1097 USING s0 s1 s2. s0 = l3.
  s1 = 16. s0 = s0 + s1. gv_g0 = s0.
ENDFORM.

FORM f1181 USING p0 TYPE i p1 TYPE i.
  DATA l2 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l2 = s0. gv_g0 = s0. s0 = l2.
  s1 = 1114252. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = l2. s1 = p0. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = l2. s1 = 8. s0 = s0 + s1. s1 = 1114256. s2 = l2. s3 = 12. s2 = s2 + s3. s3 = 1114256. s4 = p1. s5 = 1116916.
  PERFORM f710 USING s0 s1 s2 s3 s4 s5.
  RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
ENDFORM.

FORM f1182.
  DATA l0 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 32. s0 = s0 - s1. l0 = s0. gv_g0 = s0. s0 = l0. s1 = 0.
  mem_st_i32( iv_addr = s0 + 24 iv_val = s1 ). s0 = l0. s1 = 1. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = l0. s1 = 1114860. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = l0. s1 = 4.
  zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 16 CHANGING cv_mem = mv_mem ). s0 = l0. s1 = 8. s0 = s0 + s1. s1 = 1114868. PERFORM f696 USING s0 s1.
  RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
ENDFORM.

FORM f1183.
  DATA l0 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 32. s0 = s0 - s1. l0 = s0. gv_g0 = s0. s0 = l0. s1 = 0.
  mem_st_i32( iv_addr = s0 + 24 iv_val = s1 ). s0 = l0. s1 = 1. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = l0. s1 = 1096592. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = l0. s1 = 4.
  zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 16 CHANGING cv_mem = mv_mem ). s0 = l0. s1 = 8. s0 = s0 + s1. s1 = 1049216. PERFORM f696 USING s0 s1.
  RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
ENDFORM.

FORM f1184 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA l2 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = 1. l2 = s0.
  DO 1 TIMES. " block
    s0 = p0. s0 = mem_ld_i32( s0 ). s1 = p1. PERFORM f662 USING s0 s1 CHANGING s0.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p1. s0 = mem_ld_i32( s0 + 20 ). s1 = 1049891. s2 = 2. s3 = p1. s3 = mem_ld_i32( s3 + 24 ). s3 = mem_ld_i32( s3 + 12 ).
    DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
    s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ).
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s0 = mem_ld_i32( s0 + 4 ). s1 = p1. PERFORM f662 USING s0 s1 CHANGING s0. l2 = s0.
  ENDDO.
  s0 = l2. rv = s0.
ENDFORM.

FORM f1185 USING p0 TYPE int8 CHANGING rv TYPE i.
  DATA l1 TYPE i. DATA l2 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = -1. l2 = s0.
  DO 1 TIMES. " block
    s0 = p0. s1 = -4294967296.
    IF zcl_wasm_rt=>lt_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l1 = s0. s0 = mem_ld_i32_16u( s0 + 6 ). s1 = 49.
    IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l1. s0 = mem_ld_i32( s0 + 32 ). l1 = s0.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l1. s0 = mem_ld_i32( s0 ). l2 = s0.
  ENDDO.
  s0 = l2. rv = s0.
ENDFORM.

FORM f1186 USING p0 TYPE i p1 TYPE int8.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    s0 = p1. s1 = -4294967296.
    IF zcl_wasm_rt=>lt_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l3 = s0. s0 = mem_ld_i32_16u( s0 + 6 ). s1 = 35.
    IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l3. s0 = mem_ld_i32( s0 + 32 ). l2 = s0.
  ENDDO.
  s0 = p0. s1 = 16. s0 = s0 + s1. s1 = l2. s2 = p0. s2 = mem_ld_i32( s2 + 4 ).
  DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
  dispatch_t6( iv_idx = lv_ci_func p0 = s0 p1 = s1 ).
ENDFORM.

FORM f1187 USING p0 TYPE i.
  DATA l1 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s0 = mem_ld_i32( s0 + 4 ). l1 = s0. s1 = 3.
  IF zcl_wasm_rt=>le_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
  s1 = l1. s2 = 2.
  IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
  s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
  IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = p0. s1 = 8. s0 = s0 + s1. PERFORM f935 USING s0.
  ELSE.
  ENDIF.
  s0 = p0. s0 = mem_ld_i32( s0 + 28 ). p0 = s0. s1 = p0. s1 = mem_ld_i32( s1 ). s1 = mem_ld_i32( s1 ).
  DATA(lv_ci_func) = mt_tab0[ s1 + 1 ]. " call_indirect
  dispatch_t2( iv_idx = lv_ci_func p0 = s0 ).
ENDFORM.

FORM f1188 USING p0 TYPE i p1 TYPE int8 CHANGING rv TYPE int8.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s0 = mem_ld_i32( s0 + 220 ). p0 = s0. s1 = 0.
  IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = p0. s0 = zcl_wasm_rt=>extend_u32( s0 ). rv = s0. RETURN.
  ELSE.
  ENDIF.
  s0 = -51539607552. s1 = p0. s1 = zcl_wasm_rt=>extend_u32( s1 ). " f64.convert_i32_u s1 = zcl_wasm_rt=>reinterpret_f64_i64( s1 ). p1 = s1. s2 = 9221120288580698112. s1 = s1 - s2. s2 = p1. s3 = 9223372036854775807.
  s2 = zcl_wasm_rt=>and64( iv_a = s2 iv_b = s3 ). s3 = 9218868437227405312.
  IF zcl_wasm_rt=>gt_u64( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
  IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
  rv = s0.
ENDFORM.

FORM f1189 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE int8.
  DATA l2 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p1. s0 = mem_ld_i32( s0 ). p0 = s0. s1 = 0.
  IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = p0. s0 = zcl_wasm_rt=>extend_u32( s0 ). rv = s0. RETURN.
  ELSE.
  ENDIF.
  s0 = -51539607552. s1 = p0. s1 = zcl_wasm_rt=>extend_u32( s1 ). " f64.convert_i32_u s1 = zcl_wasm_rt=>reinterpret_f64_i64( s1 ). l2 = s1. s2 = 9221120288580698112. s1 = s1 - s2. s2 = l2. s3 = 9223372036854775807.
  s2 = zcl_wasm_rt=>and64( iv_a = s2 iv_b = s3 ). s3 = 9218868437227405312.
  IF zcl_wasm_rt=>gt_u64( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
  IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
  rv = s0.
ENDFORM.

FORM f1190 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA l2 TYPE int8. DATA l3 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA lv_br TYPE i.
  s0 = p0. s1 = p1. PERFORM f397 USING s0 s1 CHANGING s0. l2 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). l3 = s0. s1 = 12884901888.
  IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = l3. s1 = 25769803776.
    IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p0. s1 = l2. PERFORM f1164 USING s0 s1. s0 = 1. rv = s0. RETURN.
    ELSE.
    ENDIF.
    s0 = -1.
  ELSE.
    s1 = 0.
  ENDIF.
  rv = s1.
ENDFORM.

FORM f1191 USING p0 TYPE i.
  DATA l1 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s0 = mem_ld_i32( s0 + 4 ). l1 = s0. s1 = 3.
  IF zcl_wasm_rt=>le_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
  s1 = l1. s2 = 2.
  IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
  s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
  IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = p0. s1 = 8. s0 = s0 + s1. PERFORM f935 USING s0.
  ELSE.
  ENDIF.
  s0 = p0. s0 = mem_ld_i32( s0 + 28 ).
  IF s0 <> 0.
    s0 = p0. s0 = mem_ld_i32( s0 + 32 ). PERFORM f125 USING s0.
  ELSE.
  ENDIF.
ENDFORM.

FORM f1192 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i CHANGING rv TYPE int8.
  DATA l4 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = 4294967296. p1 = s0. s0 = p3.
  s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). l4 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = -38654705664.
  IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = l4. s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = 12. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). s1 = 2147483646.
    IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    s0 = zcl_wasm_rt=>extend_u32( s0 ). s1 = 4294967296. s0 = zcl_wasm_rt=>or64( iv_a = s0 iv_b = s1 ).
  ELSE.
    s1 = 4294967296.
  ENDIF.
  rv = s1.
ENDFORM.

FORM f1193 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i CHANGING rv TYPE int8.
  DATA l4 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = 4294967296. p1 = s0. s0 = p3.
  s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). l4 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = -38654705664.
  IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = l4. s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = 12. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). s1 = 2147483647.
    IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    s0 = zcl_wasm_rt=>extend_u32( s0 ). s1 = 4294967296. s0 = zcl_wasm_rt=>or64( iv_a = s0 iv_b = s1 ).
  ELSE.
    s1 = 4294967296.
  ENDIF.
  rv = s1.
ENDFORM.

FORM f1194 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i CHANGING rv TYPE int8.
  DATA l4 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = 4294967296. p1 = s0. s0 = p3.
  s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). l4 = s0. s1 = -4294967296.
  IF zcl_wasm_rt=>ge_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = l4. s0 = zcl_wasm_rt=>wrap_i64( s0 ). s0 = mem_ld_i32_16u( s0 + 6 ). s1 = 21. s0 = s0 - s1. s1 = 65535. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = 12.
    IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    s0 = zcl_wasm_rt=>extend_u32( s0 ). s1 = 4294967296. s0 = zcl_wasm_rt=>or64( iv_a = s0 iv_b = s1 ).
  ELSE.
    s1 = 4294967296.
  ENDIF.
  rv = s1.
ENDFORM.

FORM f1195 USING p0 TYPE i p1 TYPE f p2 TYPE i p3 TYPE i p4 TYPE i CHANGING rv TYPE int8.
  DATA l5 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 128. s0 = s0 - s1.
  l5 = s0. gv_g0 = s0. s0 = l5. s1 = p1. s2 = p2. s3 = p3. s4 = p4. PERFORM f104 USING s0 s1 s2 s3 s4. s0 = p0. s1 = l5. s2 = l5. PERFORM f768 USING s2 CHANGING s2. PERFORM f126 USING s0 s1 s2 CHANGING s0. s1 = l5. s2 = 128. s1 = s1 + s2.
  gv_g0 = s1. rv = s0.
ENDFORM.

FORM f1196 USING p0 TYPE i p1 TYPE i p2 TYPE i.
  DATA l3 TYPE int8. DATA l4 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0.
  s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). l3 = s0. s0 = p0. s1 = p1. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 0 ).
  zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ). s0 = p0. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 8 ). l4 = s0. s0 = p0. s1 = p1.
  s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 8 ). zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 8 CHANGING cv_mem = mv_mem ). s0 = p1. s1 = l4.
  zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 8 CHANGING cv_mem = mv_mem ). s0 = p1. s1 = l3. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ).
ENDFORM.

FORM f1197 USING p0 TYPE i p1 TYPE i p2 TYPE i.
  DATA l3 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l3 = s0. gv_g0 = s0. s0 = l3. s1 = p2.
  mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = p0. s1 = 92. s0 = s0 + s1. s1 = 128. s2 = p1. s3 = p2. PERFORM f912 USING s0 s1 s2 s3 CHANGING s0. s0 = l3. s1 = 16. s0 = s0 + s1. gv_g0 = s0.
ENDFORM.

FORM f1198 USING p0 TYPE i p1 TYPE int8.
  DATA l2 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    s0 = p1. s1 = -4294967296.
    IF zcl_wasm_rt=>lt_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l2 = s0. s0 = mem_ld_i32_16u( s0 + 6 ). s1 = 57.
    IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l2. s0 = mem_ld_i32( s0 + 32 ). l2 = s0.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s1 = l2. PERFORM f428 USING s0 s1.
  ENDDO.
ENDFORM.

FORM f1199 USING p0 TYPE i p1 TYPE int8 CHANGING rv TYPE i.
  DATA l2 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p1. s1 = -4294967296.
  IF zcl_wasm_rt=>ge_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). s0 = mem_ld_i32_16u( s0 + 6 ). l2 = s0. s1 = 48.
    IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p0. s1 = p1. PERFORM f1016 USING s0 s1 CHANGING s0. rv = s0. RETURN.
    ELSE.
    ENDIF.
    s0 = l2. s1 = 2.
    IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
  ELSE.
    s1 = 0.
  ENDIF.
  rv = s1.
ENDFORM.

