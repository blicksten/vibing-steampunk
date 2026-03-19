FORM f1200 USING p0 TYPE i p1 TYPE i p2 TYPE i p3 TYPE i p4 TYPE i CHANGING rv TYPE i.
  DATA l5 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l5 = s0. gv_g0 = s0.
  s0 = p0. s1 = l5. s2 = 12. s1 = s1 + s2. s2 = p1. s3 = p2. s4 = p3. s5 = p4. s6 = 0. PERFORM f29 USING s0 s1 s2 s3 s4 s5 s6 CHANGING s0. s1 = l5. s2 = 16. s1 = s1 + s2. gv_g0 = s1. rv = s0.
ENDFORM.

FORM f1201 USING p0 TYPE i.
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
  s0 = p0. s1 = 28. s0 = s0 + s1. PERFORM f924 USING s0.
ENDFORM.

FORM f1202 USING p0 TYPE i.
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
  s0 = p0. s1 = 28. s0 = s0 + s1. PERFORM f946 USING s0.
ENDFORM.

FORM f1203 USING p0 TYPE i p1 TYPE i p2 TYPE i.
  DATA l3 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p1. s1 = 16. s0 = s0 - s1. l3 = s0. s1 = p0. s2 = l3.
  s2 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s2 + 0 ). s3 = p1. s4 = 8. s3 = s3 - s4. s3 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s3 + 0 ). s4 = 0. PERFORM f199 USING s1 s2 s3 s4 CHANGING s1. s2 = p2.
  IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
  s1 = zcl_wasm_rt=>extend_u32( s1 ). s2 = 4294967296. s1 = zcl_wasm_rt=>or64( iv_a = s1 iv_b = s2 ). zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ).
ENDFORM.

FORM f1204 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p1. s0 = mem_ld_i32( s0 + 20 ). s1 = p0. s1 = mem_ld_i32( s1 ).
  s1 = mem_ld_i32_8u( s1 ). s2 = 2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). p0 = s1. s2 = 1123128. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). s2 = p0. s3 = 1123088. s2 = s2 + s3. s2 = mem_ld_i32( s2 ). s3 = p1.
  s3 = mem_ld_i32( s3 + 24 ). s3 = mem_ld_i32( s3 + 12 ).
  DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
  s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). rv = s0.
ENDFORM.

FORM f1205 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p1. s0 = mem_ld_i32( s0 + 20 ). s1 = p0. s1 = mem_ld_i32( s1 ).
  s1 = mem_ld_i32_8u( s1 ). s2 = 2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). p0 = s1. s2 = 1123180. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). s2 = p0. s3 = 1123168. s2 = s2 + s3. s2 = mem_ld_i32( s2 ). s3 = p1.
  s3 = mem_ld_i32( s3 + 24 ). s3 = mem_ld_i32( s3 + 12 ).
  DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
  s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). rv = s0.
ENDFORM.

FORM f1206 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p1. s0 = mem_ld_i32( s0 + 20 ). s1 = p0. s1 = mem_ld_i32( s1 ).
  s1 = mem_ld_i32_8u( s1 ). s2 = 2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). p0 = s1. s2 = 1123612. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). s2 = p0. s3 = 1123600. s2 = s2 + s3. s2 = mem_ld_i32( s2 ). s3 = p1.
  s3 = mem_ld_i32( s3 + 24 ). s3 = mem_ld_i32( s3 + 12 ).
  DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
  s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). rv = s0.
ENDFORM.

FORM f1207 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p1. s0 = mem_ld_i32( s0 + 20 ). s1 = p0. s1 = mem_ld_i32( s1 ).
  s1 = mem_ld_i32_8u( s1 ). s2 = 2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). p0 = s1. s2 = 1080800. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). s2 = p0. s3 = 1080780. s2 = s2 + s3. s2 = mem_ld_i32( s2 ). s3 = p1.
  s3 = mem_ld_i32( s3 + 24 ). s3 = mem_ld_i32( s3 + 12 ).
  DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
  s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). rv = s0.
ENDFORM.

FORM f1208 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p1. s0 = mem_ld_i32( s0 + 20 ). s1 = p0. s1 = mem_ld_i32( s1 ).
  s1 = mem_ld_i32_8u( s1 ). s2 = 2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). p0 = s1. s2 = 1123664. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). s2 = p0. s3 = 1123624. s2 = s2 + s3. s2 = mem_ld_i32( s2 ). s3 = p1.
  s3 = mem_ld_i32( s3 + 24 ). s3 = mem_ld_i32( s3 + 12 ).
  DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
  s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). rv = s0.
ENDFORM.

FORM _start.
  DATA l0 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    s0 = 1214912. s0 = mem_ld_i32( s0 ).
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = 1214912. s1 = 1. mem_st_i32( iv_addr = s0 iv_val = s1 ). PERFORM __main_void CHANGING s0. l0 = s0. PERFORM f622. s0 = l0.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      RETURN.
    ELSE.
    ENDIF.
    RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
  ENDDO.
  s0 = l0. PERFORM f1395 USING s0.
  RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
ENDFORM.

FORM f1210 CHANGING rv TYPE i.
  DATA l0 TYPE i. DATA l1 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 32. s0 = s0 - s1. l1 = s0. gv_g0 = s0.
  s0 = l1. s1 = 8. s0 = s0 + s1. l0 = s0. PERFORM f384 USING s0. s0 = 1064024. s1 = 190. s2 = l0. PERFORM f1112 USING s0 s1 s2 CHANGING s0. s1 = l1. s2 = 32. s1 = s1 + s2. gv_g0 = s1. rv = s0.
ENDFORM.

FORM f1211 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i p4 TYPE i p5 TYPE i CHANGING rv TYPE int8.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p5. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). p1 = s0.
  s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
  IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p0 = s0. s1 = p0. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
  ELSE.
  ENDIF.
  s0 = p1. rv = s0.
ENDFORM.

FORM f1212 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i CHANGING rv TYPE int8.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA lv_br TYPE i. s0 = p3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ).
  p1 = s0. s1 = -4294967297.
  IF zcl_wasm_rt=>le_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = p0. s1 = 1137529. s2 = 0. PERFORM f970 USING s0 s1 s2 CHANGING s0. s0 = 25769803776. rv = s0. RETURN.
  ELSE.
  ENDIF.
  s0 = p0. s1 = p1. s2 = 3. s3 = 0. PERFORM f232 USING s0 s1 s2 s3 CHANGING s0. rv = s0.
ENDFORM.

FORM f1213 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA l2 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s0 = mem_ld_i32( s0 ). p0 = s0. s1 = p0. s2 = 31.
  s1 = zcl_wasm_rt=>shr_s32( iv_val = s1 iv_shift = s2 ). l2 = s1. s0 = zcl_wasm_rt=>xor32( iv_a = s0 iv_b = s1 ). s1 = l2. s0 = s0 - s1. s0 = zcl_wasm_rt=>extend_u32( s0 ). s1 = p0. s2 = -1. s1 = zcl_wasm_rt=>xor32( iv_a = s1 iv_b = s2 ).
  s2 = 31. s1 = zcl_wasm_rt=>shr_u32( iv_val = s1 iv_shift = s2 ). s2 = p1. PERFORM f607 USING s0 s1 s2 CHANGING s0. rv = s0.
ENDFORM.

FORM f1214 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p1. s0 = mem_ld_i32( s0 + 20 ). s1 = p0. s1 = mem_ld_i32_8u( s1 ). s2 = 2.
  s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). p0 = s1. s2 = 1119332. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). s2 = p0. s3 = 1119168. s2 = s2 + s3. s2 = mem_ld_i32( s2 ). s3 = p1. s3 = mem_ld_i32( s3 + 24 ). s3 = mem_ld_i32( s3 + 12 ).
  DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
  s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). rv = s0.
ENDFORM.

FORM f1215 USING p0 TYPE i p1 TYPE int8 p2 TYPE i.
  DATA l3 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). s0 = mem_ld_i32( s0 + 32 ). l3 = s0.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). p1 = s0. s1 = -8589934592.
    IF zcl_wasm_rt=>lt_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s1 = p1. s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = p2.
    DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
    dispatch_t6( iv_idx = lv_ci_func p0 = s0 p1 = s1 ).
  ENDDO.
ENDFORM.

FORM f1216 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i CHANGING rv TYPE int8.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = 25769803776. s1 = p0. s2 = p3.
  s2 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s2 + 0 ). s3 = p3. s3 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s3 + 8 ). s4 = 0. PERFORM f259 USING s1 s2 s3 s4 CHANGING s1. p0 = s1. s2 = 0.
  IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
  s1 = zcl_wasm_rt=>extend_u32( s1 ). s2 = 4294967296. s1 = zcl_wasm_rt=>or64( iv_a = s1 iv_b = s2 ). s2 = p0. s3 = 0.
  IF s2 < s3. s2 = 1. ELSE. s2 = 0. ENDIF.
  IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
  rv = s0.
ENDFORM.

FORM f1217 USING p0 TYPE f p1 TYPE f CHANGING rv TYPE f.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    s0 = p1. s0 = abs( s0 ). s1 = '+Inf'.
    IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = 'NaN'. s1 = p0. s1 = abs( s1 ). s2 = '1.000000'.
      IF s1 = s2. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
    ELSE.
    ENDIF.
    s0 = p0. s1 = p1. PERFORM f178 USING s0 s1 CHANGING s0.
  ENDDO.
  rv = s0.
ENDFORM.

FORM f1218 USING p0 TYPE i p1 TYPE i p2 TYPE i p3 TYPE i CHANGING rv TYPE i.
  DATA l4 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l4 = s0. gv_g0 = s0. s0 = l4. s1 = p3.
  mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = p0. s1 = p1. s2 = p2. s3 = p3. PERFORM f912 USING s0 s1 s2 s3 CHANGING s0. s1 = l4. s2 = 16. s1 = s1 + s2. gv_g0 = s1. rv = s0.
ENDFORM.

FORM f1219 USING p0 TYPE i.
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
  s0 = p0. PERFORM f125 USING s0.
ENDFORM.

FORM f1220 USING p0 TYPE i p1 TYPE int8 p2 TYPE int8.
  DATA l3 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s0 = mem_ld_i32( s0 + 4 ). l3 = s0. s1 = 3.
  IF zcl_wasm_rt=>le_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
  s1 = l3. s2 = 2.
  IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
  s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
  IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = p0. s1 = 8. s0 = s0 + s1. PERFORM f935 USING s0.
  ELSE.
  ENDIF.
  s0 = p0. PERFORM f125 USING s0.
ENDFORM.

FORM f1221 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p1. s0 = mem_ld_i32( s0 + 20 ). s1 = 1078250. s2 = 1078240. s3 = p0.
  s3 = mem_ld_i32( s3 ). s3 = mem_ld_i32_8u( s3 ). p0 = s3.
  IF s3 <> 0. s1 = s1. ELSE. s1 = s2. ENDIF.
  s2 = 16. s3 = 10. s4 = p0.
  IF s4 <> 0. s2 = s2. ELSE. s2 = s3. ENDIF.
  s3 = p1. s3 = mem_ld_i32( s3 + 24 ). s3 = mem_ld_i32( s3 + 12 ).
  DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
  s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). rv = s0.
ENDFORM.

FORM f1222 USING p0 TYPE i p1 TYPE int8 CHANGING rv TYPE int8.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = 30. s1 = 29. s2 = p0. s3 = 224. s2 = s2 + s3. s2 = mem_ld_i32( s2 ). s3 = 5.
  s2 = zcl_wasm_rt=>shr_u32( iv_val = s2 iv_shift = s3 ). s3 = 63. s2 = zcl_wasm_rt=>and32( iv_a = s2 iv_b = s3 ). p0 = s2. s1 = s1 - s2. s2 = p0. s3 = 63.
  IF s2 = s3. s2 = 1. ELSE. s2 = 0. ENDIF.
  IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
  s0 = zcl_wasm_rt=>extend_u32( s0 ). rv = s0.
ENDFORM.

FORM f1223 USING p0 TYPE i p1 TYPE int8 CHANGING rv TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p1. s1 = 0.
  IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = p0. s1 = 0. s2 = p1. s1 = s1 - s2. PERFORM f541 USING s0 s1 CHANGING s0. s1 = p0. s2 = 1. mem_st_i32( iv_addr = s1 + 4 iv_val = s2 ). rv = s0. RETURN.
  ELSE.
  ENDIF.
  s0 = p0. s1 = p1. PERFORM f541 USING s0 s1 CHANGING s0. rv = s0.
ENDFORM.

FORM f1224 USING p0 TYPE i CHANGING rv TYPE i.
  DATA l1 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA lv_br TYPE i. s0 = 1. l1 = s0. s0 = p0. s1 = 1126544.
  s2 = 1127648. s3 = 35. PERFORM f476 USING s0 s1 s2 s3 CHANGING s0.
  IF s0 <> 0.
    s0 = 1.
  ELSE.
    s1 = p0. s2 = 1127760. s3 = 1128432. s4 = 21. PERFORM f476 USING s1 s2 s3 s4 CHANGING s1. s2 = 0.
    IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
  ENDIF.
  rv = s1.
ENDFORM.

FORM f1225 USING p0 TYPE i p1 TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p1.
  IF s0 <> 0.
    s0 = p0. s1 = p0. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s1 = p0. s1 = mem_ld_i32( s1 + 4 ). s2 = 8. s1 = s1 - s2. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = p1.
    PERFORM f125 USING s0.
  ELSE.
  ENDIF.
ENDFORM.

FORM f1226 USING p0 TYPE i p1 TYPE int8 CHANGING rv TYPE int8.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p1. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ).
  s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
  IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p0 = s0. s1 = p0. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
  ELSE.
  ENDIF.
  s0 = p1. rv = s0.
ENDFORM.

FORM f1227 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i CHANGING rv TYPE int8.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p1. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ).
  s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
  IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p0 = s0. s1 = p0. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
  ELSE.
  ENDIF.
  s0 = p1. rv = s0.
ENDFORM.

FORM f1228 USING p0 TYPE i p1 TYPE int8 p2 TYPE i.
  DATA l3 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). s0 = mem_ld_i32( s0 + 32 ). l3 = s0.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l3. s0 = mem_ld_i32( s0 + 4 ). l3 = s0.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s1 = l3. s2 = p2.
    DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
    dispatch_t6( iv_idx = lv_ci_func p0 = s0 p1 = s1 ).
  ENDDO.
ENDFORM.

FORM f1229 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i CHANGING rv TYPE int8.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = 25769803776. s1 = p0. s2 = p3.
  s2 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s2 + 0 ). s3 = p1. PERFORM f499 USING s1 s2 s3 CHANGING s1. p0 = s1. s2 = 0.
  IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
  s1 = zcl_wasm_rt=>extend_u32( s1 ). s2 = 4294967296. s1 = zcl_wasm_rt=>or64( iv_a = s1 iv_b = s2 ). s2 = p0. s3 = 0.
  IF s2 < s3. s2 = 1. ELSE. s2 = 0. ENDIF.
  IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
  rv = s0.
ENDFORM.

FORM f1230 USING p0 TYPE i.
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
ENDFORM.

FORM f1231 USING p0 TYPE i.
  DATA l1 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s0 = mem_ld_i32( s0 ). l1 = s0. s1 = l1. s1 = mem_ld_i32( s1 ).
  l1 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l1. s1 = 1.
  IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = p0. PERFORM f1094 USING s0.
  ELSE.
  ENDIF.
ENDFORM.

FORM f1232 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA l2 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s0 = mem_ld_i32( s0 + 12 ). l2 = s0.
  IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = 0. rv = s0. RETURN.
  ELSE.
  ENDIF.
  s0 = p0. s1 = 0. s2 = p1. s3 = 16. s2 = zcl_wasm_rt=>or32( iv_a = s2 iv_b = s3 ). s3 = l2. s4 = 0. PERFORM f137 USING s0 s1 s2 s3 s4 CHANGING s0. rv = s0.
ENDFORM.

FORM f1233 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s0 = mem_ld_i32( s0 ). s0 = mem_ld_i32_8u( s0 ).
  IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = p1. s1 = 1080532. s2 = 5. PERFORM f244 USING s0 s1 s2 CHANGING s0. rv = s0. RETURN.
  ELSE.
  ENDIF.
  s0 = p1. s1 = 1080537. s2 = 4. PERFORM f244 USING s0 s1 s2 CHANGING s0. rv = s0.
ENDFORM.

FORM f1234 USING p0 TYPE f CHANGING rv TYPE f.
  DATA l1 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = '-1.000000'. s1 = '1.000000'. s2 = p0. s3 = '0.000000'.
  IF s2 < s3. s2 = 1. ELSE. s2 = 0. ENDIF.
  l1 = s2.
  IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
  s1 = p0. s2 = p0. s3 = '0.000000'.
  IF s2 > s3. s2 = 1. ELSE. s2 = 0. ENDIF.
  s3 = l1. s2 = zcl_wasm_rt=>or32( iv_a = s2 iv_b = s3 ).
  IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
  rv = s0.
ENDFORM.

FORM f1235 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE int8.
  DATA l2 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = -51539607552. s1 = p1.
  s1 = zcl_wasm_rt=>mem_ld_f32( iv_mem = mv_mem iv_addr = s1 + 0 ). s1 = s1. " f64.promote_f32 (noop in ABAP) s1 = zcl_wasm_rt=>reinterpret_f64_i64( s1 ). l2 = s1. s2 = 9221120288580698112. s1 = s1 - s2. s2 = l2. s3 = 9223372036854775807.
  s2 = zcl_wasm_rt=>and64( iv_a = s2 iv_b = s3 ). s3 = 9218868437227405312.
  IF zcl_wasm_rt=>gt_u64( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
  IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
  rv = s0.
ENDFORM.

FORM f1236 USING p0 TYPE i p1 TYPE int8 p2 TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). s0 = mem_ld_i32( s0 + 32 ).
  s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). p1 = s0. s1 = -8589934592.
  IF zcl_wasm_rt=>ge_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = p0. s1 = p1. s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = p2.
    DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
    dispatch_t6( iv_idx = lv_ci_func p0 = s0 p1 = s1 ).
  ELSE.
  ENDIF.
ENDFORM.

FORM f1237 USING p0 TYPE i p1 TYPE int8 p2 TYPE int8 CHANGING rv TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = 28. s0 = s0 + s1. s1 = 0. s2 = p2. s3 = 8935226111122132716.
  IF s2 = s3. s2 = 1. ELSE. s2 = 0. ENDIF.
  IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
  s1 = 0. s2 = p1. s3 = 2075531708415345777.
  IF s2 = s3. s2 = 1. ELSE. s2 = 0. ENDIF.
  IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
  rv = s0.
ENDFORM.

FORM f1238 USING p0 TYPE i p1 TYPE int8 p2 TYPE int8 CHANGING rv TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = 28. s0 = s0 + s1. s1 = 0. s2 = p2. s3 = 5261088657760290136.
  IF s2 = s3. s2 = 1. ELSE. s2 = 0. ENDIF.
  IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
  s1 = 0. s2 = p1. s3 = -5182432383765216851.
  IF s2 = s3. s2 = 1. ELSE. s2 = 0. ENDIF.
  IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
  rv = s0.
ENDFORM.

FORM f1239 USING p0 TYPE i p1 TYPE int8 p2 TYPE int8 CHANGING rv TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = 28. s0 = s0 + s1. s1 = 0. s2 = p2. s3 = 6385639802083421747.
  IF s2 = s3. s2 = 1. ELSE. s2 = 0. ENDIF.
  IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
  s1 = 0. s2 = p1. s3 = -4982148772931948802.
  IF s2 = s3. s2 = 1. ELSE. s2 = 0. ENDIF.
  IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
  rv = s0.
ENDFORM.

FORM f1240 USING p0 TYPE i p1 TYPE int8 p2 TYPE int8 CHANGING rv TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = 28. s0 = s0 + s1. s1 = 0. s2 = p2. s3 = 7199936582794304877.
  IF s2 = s3. s2 = 1. ELSE. s2 = 0. ENDIF.
  IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
  s1 = 0. s2 = p1. s3 = -5076933981314334344.
  IF s2 = s3. s2 = 1. ELSE. s2 = 0. ENDIF.
  IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
  rv = s0.
ENDFORM.

FORM f1241 USING p0 TYPE i p1 TYPE int8 p2 TYPE int8 CHANGING rv TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = 28. s0 = s0 + s1. s1 = 0. s2 = p2. s3 = -8623366980754492546.
  IF s2 = s3. s2 = 1. ELSE. s2 = 0. ENDIF.
  IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
  s1 = 0. s2 = p1. s3 = 9060376563428101350.
  IF s2 = s3. s2 = 1. ELSE. s2 = 0. ENDIF.
  IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
  rv = s0.
ENDFORM.

FORM f1242 USING p0 TYPE i p1 TYPE int8 p2 TYPE int8 CHANGING rv TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = 28. s0 = s0 + s1. s1 = 0. s2 = p2. s3 = -3260077067098042597.
  IF s2 = s3. s2 = 1. ELSE. s2 = 0. ENDIF.
  IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
  s1 = 0. s2 = p1. s3 = 8323855223473259578.
  IF s2 = s3. s2 = 1. ELSE. s2 = 0. ENDIF.
  IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
  rv = s0.
ENDFORM.

FORM f1243 USING p0 TYPE i p1 TYPE int8 p2 TYPE int8 CHANGING rv TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = 28. s0 = s0 + s1. s1 = 0. s2 = p2. s3 = -7063004080869952775.
  IF s2 = s3. s2 = 1. ELSE. s2 = 0. ENDIF.
  IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
  s1 = 0. s2 = p1. s3 = 5325385144114573364.
  IF s2 = s3. s2 = 1. ELSE. s2 = 0. ENDIF.
  IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
  rv = s0.
ENDFORM.

FORM f1244 USING p0 TYPE i p1 TYPE int8 p2 TYPE int8 CHANGING rv TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = 28. s0 = s0 + s1. s1 = 0. s2 = p2. s3 = 4218379227045449684.
  IF s2 = s3. s2 = 1. ELSE. s2 = 0. ENDIF.
  IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
  s1 = 0. s2 = p1. s3 = 7939287580144545471.
  IF s2 = s3. s2 = 1. ELSE. s2 = 0. ENDIF.
  IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
  rv = s0.
ENDFORM.

FORM f1245 USING p0 TYPE i p1 TYPE i p2 TYPE i CHANGING rv TYPE i.
  DATA l3 TYPE int8. DATA l4 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s0 = mem_ld_i32( s0 ).
  s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 120 ). l3 = s0. s1 = p1. s1 = mem_ld_i32( s1 ). s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 120 ). l4 = s1.
  IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
  s1 = l3. s2 = l4.
  IF s1 < s2. s1 = 1. ELSE. s1 = 0. ENDIF.
  s0 = s0 - s1. rv = s0.
ENDFORM.

FORM f1246 USING p0 TYPE i p1 TYPE i p2 TYPE i CHANGING rv TYPE i.
  DATA l3 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s0 = mem_ld_i32( s0 + 12 ). l3 = s0.
  IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = 0. rv = s0. RETURN.
  ELSE.
  ENDIF.
  s0 = p0. s1 = p1. s2 = p2. s3 = l3. s4 = 0. PERFORM f137 USING s0 s1 s2 s3 s4 CHANGING s0. rv = s0.
ENDFORM.

FORM f1247 USING p0 TYPE i p1 TYPE int8 p2 TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ).
  s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 32 ). p1 = s0. s1 = -8589934592.
  IF zcl_wasm_rt=>ge_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = p0. s1 = p1. s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = p2.
    DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
    dispatch_t6( iv_idx = lv_ci_func p0 = s0 p1 = s1 ).
  ELSE.
  ENDIF.
ENDFORM.

FORM f1248 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p1. s1 = p0. s1 = mem_ld_i32( s1 ). p0 = s1. s2 = 4. s1 = s1 + s2.
  s1 = mem_ld_i32( s1 ). s2 = p0. s3 = 8. s2 = s2 + s3. s2 = mem_ld_i32( s2 ). PERFORM f244 USING s0 s1 s2 CHANGING s0. rv = s0.
ENDFORM.

FORM f1249 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s0 = mem_ld_i32( s0 ). p0 = s0. s1 = 4. s0 = s0 + s1. s0 = mem_ld_i32( s0 ).
  s1 = p0. s2 = 8. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). s2 = p1. PERFORM f248 USING s0 s1 s2 CHANGING s0. rv = s0.
ENDFORM.

FORM f1250 USING p0 TYPE i p1 TYPE i p2 TYPE i CHANGING rv TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p1. s1 = p2. s2 = p0. s2 = mem_ld_i32_8u( s2 + 12 ). s3 = p0. s4 = 0. s5 = p0.
  s5 = mem_ld_i32( s5 ). s6 = -2147483648.
  IF s5 <> s6. s5 = 1. ELSE. s5 = 0. ENDIF.
  IF s5 <> 0. s3 = s3. ELSE. s3 = s4. ENDIF.
  PERFORM f52 USING s0 s1 s2 s3 CHANGING s0. rv = s0.
ENDFORM.

FORM f1251 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE int8.
  DATA l2 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = -51539607552. s1 = p1.
  s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 0 ). l2 = s1. s2 = 9221120288580698112. s1 = s1 - s2. s2 = l2. s3 = 9223372036854775807. s2 = zcl_wasm_rt=>and64( iv_a = s2 iv_b = s3 ). s3 = 9218868437227405312.
  IF zcl_wasm_rt=>gt_u64( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
  IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
  rv = s0.
ENDFORM.

FORM f1252 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = p1. PERFORM f561 USING s0 s1 CHANGING s0. p0 = s0. s1 = 0. s2 = p0.
  s2 = mem_ld_i32_8u( s2 ). s3 = p1. s4 = 255. s3 = zcl_wasm_rt=>and32( iv_a = s3 iv_b = s4 ).
  IF s2 = s3. s2 = 1. ELSE. s2 = 0. ENDIF.
  IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
  rv = s0.
ENDFORM.

FORM f1253 USING p0 TYPE i CHANGING rv TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s0 = mem_ld_i32( s0 + 56 ). s0 = 0. " WASI fd_close: stub s1 = 65535.
  s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). p0 = s0.
  IF s0 <> 0.
    s0 = 1215576. s1 = p0. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = -1.
  ELSE.
    s1 = 0.
  ENDIF.
  rv = s1.
ENDFORM.

FORM f1254 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s0 = mem_ld_i32( s0 ). p0 = s0. s0 = mem_ld_i32( s0 ). s1 = p1. s2 = p0. s3 = 4.
  s2 = s2 + s3. s2 = mem_ld_i32( s2 ). s2 = mem_ld_i32( s2 + 12 ).
  DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
  s0 = dispatch_t7( iv_idx = lv_ci_func p0 = s0 p1 = s1 ). rv = s0.
ENDFORM.

FORM f1255 USING p0 TYPE i p1 TYPE i p2 TYPE i CHANGING rv TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s0 = mem_ld_i32( s0 ). p0 = s0. s1 = p1. s1 = mem_ld_i32( s1 ). p1 = s1.
  IF zcl_wasm_rt=>gt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
  s1 = p0. s2 = p1.
  IF zcl_wasm_rt=>lt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
  s0 = s0 - s1. rv = s0.
ENDFORM.

FORM f1256 USING p0 TYPE i p1 TYPE i p2 TYPE i CHANGING rv TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p1. s0 = mem_ld_i32( s0 ). p1 = s0. s1 = p0. s1 = mem_ld_i32( s1 ). p0 = s1.
  IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
  s1 = p0. s2 = p1.
  IF s1 < s2. s1 = 1. ELSE. s1 = 0. ENDIF.
  s0 = s0 - s1. rv = s0.
ENDFORM.

FORM f1257 USING p0 TYPE i p1 TYPE i p2 TYPE i CHANGING rv TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p1. s0 = mem_ld_i32( s0 ). p1 = s0. s1 = p0. s1 = mem_ld_i32( s1 ). p0 = s1.
  IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
  s1 = p0. s2 = p1.
  IF zcl_wasm_rt=>lt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
  s0 = s0 - s1. rv = s0.
ENDFORM.

FORM f1258 USING p0 TYPE i p1 TYPE i p2 TYPE i CHANGING rv TYPE i.
  DATA l3 TYPE int8. DATA l4 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p1.
  s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). l3 = s0. s1 = p0. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 0 ). l4 = s1.
  IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
  s1 = l3. s2 = l4.
  IF s1 > s2. s1 = 1. ELSE. s1 = 0. ENDIF.
  s0 = s0 - s1. rv = s0.
ENDFORM.

FORM f1259 USING p0 TYPE i p1 TYPE i p2 TYPE i CHANGING rv TYPE i.
  DATA l3 TYPE int8. DATA l4 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p1.
  s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). l3 = s0. s1 = p0. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 0 ). l4 = s1.
  IF zcl_wasm_rt=>lt_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
  s1 = l3. s2 = l4.
  IF zcl_wasm_rt=>gt_u64( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
  s0 = s0 - s1. rv = s0.
ENDFORM.

FORM f1260 USING p0 TYPE i p1 TYPE int8 p2 TYPE i.
  DATA l3 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). s0 = mem_ld_i32( s0 + 32 ).
  l3 = s0.
  IF s0 <> 0.
    s0 = p0. s1 = l3. s1 = mem_ld_i32( s1 + 12 ). s2 = p2.
    DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
    dispatch_t6( iv_idx = lv_ci_func p0 = s0 p1 = s1 ).
  ELSE.
  ENDIF.
ENDFORM.

FORM f1261 USING p0 TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s0 = mem_ld_i32( s0 ). s1 = -2147483648.
  s0 = zcl_wasm_rt=>or32( iv_a = s0 iv_b = s1 ). s1 = -2147483648.
  IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = p0. s0 = mem_ld_i32( s0 + 4 ). PERFORM f125 USING s0.
  ELSE.
  ENDIF.
ENDFORM.

FORM f1262 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s0 = mem_ld_i32( s0 ). p0 = s0. s0 = mem_ld_i32( s0 ). s1 = p0. s2 = 4.
  s1 = s1 + s2. s1 = mem_ld_i32( s1 ). s2 = p1. PERFORM f248 USING s0 s1 s2 CHANGING s0. rv = s0.
ENDFORM.

FORM f1263 USING p0 TYPE i p1 TYPE i p2 TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s0 = mem_ld_i32( s0 ). p2 = s0. s0 = p0. s1 = p1. s1 = mem_ld_i32( s1 ).
  mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p1. s1 = p2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
ENDFORM.

FORM f1264 USING p0 TYPE i p1 TYPE i p2 TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s0 = mem_ld_i32_16u( s0 ). p2 = s0. s0 = p0. s1 = p1. s1 = mem_ld_i32_16u( s1 ).
  mem_st_i32_16( iv_addr = s0 iv_val = s1 ). s0 = p1. s1 = p2. mem_st_i32_16( iv_addr = s0 iv_val = s1 ).
ENDFORM.

FORM f1265 USING p0 TYPE i p1 TYPE i p2 TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s0 = mem_ld_i32_8u( s0 ). p2 = s0. s0 = p0. s1 = p1. s1 = mem_ld_i32_8u( s1 ).
  mem_st_i32_8( iv_addr = s0 iv_val = s1 ). s0 = p1. s1 = p2. mem_st_i32_8( iv_addr = s0 iv_val = s1 ).
ENDFORM.

FORM f1266 USING p0 TYPE i p1 TYPE i p2 TYPE i.
  DATA l3 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0.
  s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). l3 = s0. s0 = p0. s1 = p1. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 0 ).
  zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ). s0 = p1. s1 = l3. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ).
ENDFORM.

FORM f1267 USING p0 TYPE i p1 TYPE i p2 TYPE i CHANGING rv TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s0 = mem_ld_i32( s0 + 16 ). p0 = s0. s1 = 16. s0 = s0 + s1. s1 = p1. s2 = p2.
  s3 = p0. s3 = mem_ld_i32( s3 + 8 ).
  DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
  s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). rv = s0.
ENDFORM.

FORM f1268 USING p0 TYPE i p1 TYPE int8 p2 TYPE i.
  DATA l3 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). s0 = mem_ld_i32( s0 + 32 ).
  l3 = s0.
  IF s0 <> 0.
    s0 = p0. s1 = l3. s2 = p2.
    DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
    dispatch_t6( iv_idx = lv_ci_func p0 = s0 p1 = s1 ).
  ELSE.
  ENDIF.
ENDFORM.

FORM f1269 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i CHANGING rv TYPE int8.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = p3. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 0 ).
  s2 = p3. s3 = p3. s4 = 8. s3 = s3 + s4. s4 = 2. PERFORM f550 USING s0 s1 s2 s3 s4 CHANGING s0. rv = s0.
ENDFORM.

FORM f1270 USING p0 TYPE i p1 TYPE i p2 TYPE i CHANGING rv TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s0 = mem_ld_i32( s0 ). s1 = p1. s2 = p2. s3 = p0. s4 = 4. s3 = s3 + s4.
  s3 = mem_ld_i32( s3 ).
  DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
  s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). rv = s0.
ENDFORM.

FORM f1271 USING p0 TYPE i p1 TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0.
  IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    PERFORM f1183.
    RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
  ELSE.
  ENDIF.
  s0 = p1. PERFORM f687 USING s0.
  RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
ENDFORM.

FORM f1272 USING p0 TYPE i p1 TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = 1048592. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = p0. s1 = p1.
  s2 = 28. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
ENDFORM.

FORM f1273 USING p0 TYPE i p1 TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = 1048652. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = p0. s1 = p1.
  s2 = 28. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
ENDFORM.

FORM f1274 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p1. s0 = mem_ld_i32( s0 + 20 ). s1 = 1116188. s2 = 5. s3 = p1.
  s3 = mem_ld_i32( s3 + 24 ). s3 = mem_ld_i32( s3 + 12 ).
  DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
  s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). rv = s0.
ENDFORM.

FORM f1275 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p1. s0 = mem_ld_i32( s0 + 20 ). s1 = 1049893. s2 = 14. s3 = p1.
  s3 = mem_ld_i32( s3 + 24 ). s3 = mem_ld_i32( s3 + 12 ).
  DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
  s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). rv = s0.
ENDFORM.

FORM f1276 USING p0 TYPE i p1 TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = 1059636. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = p0. s1 = p1.
  s2 = 28. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
ENDFORM.

FORM f1277 USING p0 TYPE i p1 TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = 1059576. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = p0. s1 = p1.
  s2 = 28. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
ENDFORM.

FORM f1278 USING p0 TYPE i p1 TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = 1059936. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = p0. s1 = p1.
  s2 = 28. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
ENDFORM.

FORM f1279 USING p0 TYPE i p1 TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = 1059756. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = p0. s1 = p1.
  s2 = 28. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
ENDFORM.

