FORM f720 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i.
  DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i.
  DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 80. s0 = s0 - s1. l2 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      s0 = p0. s0 = mem_ld_i32( s0 ).
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = p0. s0 = mem_ld_i32( s0 + 4 ). l3 = s0. s0 = p0. s1 = 4294967295. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ). s0 = l3.
        IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        s0 = l3. s1 = p1. PERFORM f6 USING s0 s1 CHANGING s0. p1 = s0.
        IF s0 <> 0.
          s0 = l2. s1 = p1. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = l2. s1 = 0. mem_st_i32( iv_addr = s0 + 40 iv_val = s1 ). s0 = l2. s1 = 4294967296.
          zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 32 CHANGING cv_mem = mv_mem ). s0 = l2. s1 = 3. mem_st_i32_8( iv_addr = s0 + 76 iv_val = s1 ). s0 = l2. s1 = 32. mem_st_i32( iv_addr = s0 + 60 iv_val = s1 ). s0 = l2.
          s1 = 0. mem_st_i32( iv_addr = s0 + 72 iv_val = s1 ). s0 = l2. s1 = 1054244. mem_st_i32( iv_addr = s0 + 68 iv_val = s1 ). s0 = l2. s1 = 0. mem_st_i32( iv_addr = s0 + 52 iv_val = s1 ). s0 = l2. s1 = 0.
          mem_st_i32( iv_addr = s0 + 44 iv_val = s1 ). s0 = l2. s1 = l2. s2 = 32. s1 = s1 + s2. mem_st_i32( iv_addr = s0 + 64 iv_val = s1 ). s0 = l2. s1 = 12. s0 = s0 + s1. s1 = l2. s2 = 44. s1 = s1 + s2.
          PERFORM f522 USING s0 s1 CHANGING s0.
          IF s0 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
          s0 = l2. s1 = 24. s0 = s0 + s1. s1 = l2. s2 = 40. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l2. s1 = l2. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 32 ).
          zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 16 CHANGING cv_mem = mv_mem ). s0 = l2. s1 = 16. s0 = s0 + s1. PERFORM f92 USING s0 CHANGING s0. l4 = s0. s0 = p1. s1 = p1. s1 = mem_ld_i32( s1 ).
          s1 = mem_ld_i32( s1 ).
          DATA(lv_ci_func) = mt_tab0[ s1 + 1 ]. " call_indirect
          dispatch_t2( iv_idx = lv_ci_func p0 = s0 ).
        ELSE.
        ENDIF.
        s0 = p0. s1 = p0. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l2. s1 = 80. s0 = s0 + s1. gv_g0 = s0. s0 = l4. rv = s0. RETURN.
      ELSE.
      ENDIF.
      s0 = 1054440. PERFORM f1109 USING s0.
      RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
    ENDDO.
    s0 = 1054284. s1 = 38. s2 = 1054424. PERFORM f1058 USING s0 s1 s2.
    RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
  ENDDO.
  s0 = 1092220. s1 = 55. s2 = l2. s3 = 16. s2 = s2 + s3. s3 = 1054268. s4 = 1092368. PERFORM f981 USING s0 s1 s2 s3 s4.
  RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
ENDFORM.

FORM f721 USING p0 TYPE i p1 TYPE int8 p2 TYPE i CHANGING rv TYPE int8.
  DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i.
  DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA lv_br TYPE i. s0 = gv_g0.
  s1 = 16. s0 = s0 - s1. l4 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      s0 = p1. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = -42949672960.
      IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l3 = s0.
      DO 1 TIMES. " block
        s0 = p2.
        IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = l4. s1 = 8. s0 = s0 + s1. s1 = l3. s2 = 4. s1 = s1 + s2. s2 = 0. PERFORM f370 USING s0 s1 s2 CHANGING s0.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = l4. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 8 ). l5 = s0. s1 = -9007199254740991.
        IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = l5. s1 = 9007199254740991.
        IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = l3. s1 = l3. s1 = mem_ld_i32( s1 ). p2 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p2. s1 = 1.
        IF s0 <= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = p1. PERFORM f453 USING s0 s1. s0 = l4. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 8 ). l5 = s0.
        ELSE.
        ENDIF.
        s0 = l5. s1 = 2147483648. s0 = s0 + s1. s1 = 4294967295.
        IF zcl_wasm_rt=>le_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = l5. s1 = 4294967295. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). p1 = s0. lv_br = 2. EXIT. " br 2
        ELSE.
        ENDIF.
        s0 = -51539607552. s1 = l5. s1 = s1. " convert to f64 s1 = zcl_wasm_rt=>reinterpret_f64_i64( s1 ). p1 = s1. s2 = 9221120288580698112. s1 = s1 - s2. s2 = p1. s3 = 9223372036854775807. s2 = zcl_wasm_rt=>and64( iv_a = s2 iv_b = s3 ).
        s3 = 9218868437227405312.
        IF zcl_wasm_rt=>gt_u64( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
        IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
        p1 = s0. lv_br = 1. EXIT. " br 1
      ENDDO.
      s0 = l3. s1 = 12. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). s1 = -2147483648.
      IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = l3. s1 = 8. s0 = s0 + s1. s0 = mem_ld_i32( s0 ).
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = l3. s0 = mem_ld_i32( s0 ). s1 = 1.
      IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = l3. s1 = 0. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ).
    ENDDO.
    s0 = l4. s1 = 16. s0 = s0 + s1. gv_g0 = s0. s0 = p1. rv = s0. RETURN.
  ENDDO.
  s0 = 1151725. s1 = 1148333. s2 = 12496. s3 = 1151644. PERFORM f1101 USING s0 s1 s2 s3.
  RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
ENDFORM.

FORM f722 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i CHANGING rv TYPE int8.
  DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE int8. DATA l8 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i.
  DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA lv_br TYPE i.
  s0 = gv_g0. s1 = 16. s0 = s0 - s1. l4 = s0. gv_g0 = s0. s0 = p3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 8 ). l7 = s0. s0 = p3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). l8 = s0. p1 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      s0 = p2. s1 = 3.
      IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 16 ). p1 = s0. s1 = -4294967296.
      IF zcl_wasm_rt=>ge_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). s0 = mem_ld_i32_8u( s0 + 5 ). s1 = 16. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      ELSE.
      ENDIF.
      s0 = p0. s1 = 1139376. s2 = 0. PERFORM f970 USING s0 s1 s2 CHANGING s0. s0 = 25769803776. p1 = s0. lv_br = 1. EXIT. " br 1
    ENDDO.
    s0 = p0. s1 = l4. s2 = 12. s1 = s1 + s2. s2 = l7. PERFORM f305 USING s0 s1 s2 CHANGING s0. l5 = s0.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = 25769803776. p1 = s0. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = p0. s1 = l8. s2 = p1. s3 = l4. s3 = mem_ld_i32( s3 + 12 ). p2 = s3. s4 = l5. s5 = 2. PERFORM f557 USING s0 s1 s2 s3 s4 s5 CHANGING s0. p1 = s0. s0 = p2.
    IF s0 <> 0.
      s0 = l5. p3 = s0.
      DO. " loop
        DO 1 TIMES. " block
          s0 = p3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). l7 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
          IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = l7. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l6 = s0. s1 = l6. s1 = mem_ld_i32( s1 ). l6 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l6. s1 = 1.
          IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = l7. PERFORM f453 USING s0 s1.
        ENDDO.
        s0 = p3. s1 = 8. s0 = s0 + s1. p3 = s0. s0 = p2. s1 = 1. s0 = s0 - s1. p2 = s0.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
      ENDDO.
    ELSE.
    ENDIF.
    s0 = p0. s0 = mem_ld_i32( s0 + 16 ). p0 = s0. s1 = 16. s0 = s0 + s1. s1 = l5. s2 = p0. s2 = mem_ld_i32( s2 + 4 ).
    DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
    dispatch_t6( iv_idx = lv_ci_func p0 = s0 p1 = s1 ).
  ENDDO.
  s0 = l4. s1 = 16. s0 = s0 + s1. gv_g0 = s0. s0 = p1. rv = s0.
ENDFORM.

FORM f723 USING p0 TYPE i p1 TYPE i p2 TYPE i p3 TYPE i p4 TYPE i CHANGING rv TYPE int8.
  DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE i. DATA l8 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i.
  DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i.
  DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      s0 = p0. s0 = mem_ld_i32( s0 + 16 ). l5 = s0. s1 = 16. s0 = s0 + s1. s1 = 24. s2 = l5. s2 = mem_ld_i32( s2 ).
      DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
      s0 = dispatch_t7( iv_idx = lv_ci_func p0 = s0 p1 = s1 ). l5 = s0.
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = 25769803776. s1 = p0. s1 = mem_ld_i32( s1 + 16 ). p1 = s1. s1 = mem_ld_i32_8u( s1 + 136 ).
        IF s1 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
        s0 = p1. s1 = 136. s0 = s0 + s1. lv_br = 1. EXIT. " br 1
      ELSE.
      ENDIF.
      s1 = l5. s2 = 1. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = p0. s1 = mem_ld_i32( s1 + 216 ). l7 = s1. s1 = l5. s2 = 4. s1 = s1 + s2. l6 = s1. s2 = 0.
      zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s2 iv_addr = s1 + 12 CHANGING cv_mem = mv_mem ). s1 = l6. s2 = -9223372036854775808. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s2 iv_addr = s1 + 4 CHANGING cv_mem = mv_mem ). s1 = l6.
      s2 = l7. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = l5. s1 = zcl_wasm_rt=>extend_u32( s1 ). s2 = -38654705664. s1 = zcl_wasm_rt=>or64( iv_a = s1 iv_b = s2 ). l8 = s1.
      DO 1 TIMES. " block
        s2 = p3. s3 = 64. s2 = zcl_wasm_rt=>and32( iv_a = s2 iv_b = s3 ).
        IF s2 <> 0.
          s2 = l6. s3 = p4. s4 = p1. s5 = p2. s6 = 1073741823. s7 = 524289. s8 = 0. PERFORM f29 USING s2 s3 s4 s5 s6 s7 s8 CHANGING s2. lv_br = 1. EXIT. " br 1
        ELSE.
        ENDIF.
        s3 = l6. s4 = p1. s5 = p2. s6 = p0. s6 = mem_ld_i32( s6 + 220 ). s7 = p0. s8 = 224. s7 = s7 + s8. s7 = mem_ld_i32( s7 ). PERFORM f1200 USING s3 s4 s5 s6 s7 CHANGING s3.
      ENDDO.
      s4 = 32. s3 = zcl_wasm_rt=>and32( iv_a = s3 iv_b = s4 ).
      IF s3 = 0. s3 = 1. ELSE. s3 = 0. ENDIF.
      IF s3 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s2 = l5. s3 = l5. s3 = mem_ld_i32( s3 ). p1 = s3. s4 = 1. s3 = s3 - s4. mem_st_i32( iv_addr = s2 iv_val = s3 ). s2 = p1. s3 = 1.
      IF s2 <= s3. s2 = 1. ELSE. s2 = 0. ENDIF.
      IF s2 <> 0.
        s2 = p0. s2 = mem_ld_i32( s2 + 16 ). s3 = l8. PERFORM f453 USING s2 s3.
      ELSE.
      ENDIF.
      s2 = 25769803776. s3 = p0. s3 = mem_ld_i32( s3 + 16 ). p1 = s3. s3 = mem_ld_i32_8u( s3 + 136 ).
      IF s3 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s2 = p1. s3 = 136. s2 = s2 + s3.
    ENDDO.
    p1 = s2. s3 = 1. mem_st_i32_8( iv_addr = s2 iv_val = s3 ). s2 = p0. s3 = 1134898. s4 = 0. PERFORM f969 USING s2 s3 s4 CHANGING s2. s2 = p1. s3 = 0. mem_st_i32_8( iv_addr = s2 iv_val = s3 ). s2 = 25769803776.
  ENDDO.
  rv = s2.
ENDFORM.

FORM f724 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA l2 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i.
  DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l2 = s0. gv_g0 = s0. s0 = l2. s1 = 0.
  mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = p0. s1 = l2. s2 = 12. s1 = s1 + s2.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        s2 = p1. s3 = 128.
        IF zcl_wasm_rt=>ge_u32( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
        IF s2 <> 0.
          s2 = p1. s3 = 2048.
          IF zcl_wasm_rt=>lt_u32( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
          IF s2 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          s2 = p1. s3 = 65536.
          IF zcl_wasm_rt=>ge_u32( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
          IF s2 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
          s2 = l2. s3 = p1. s4 = 63. s3 = zcl_wasm_rt=>and32( iv_a = s3 iv_b = s4 ). s4 = 128. s3 = zcl_wasm_rt=>or32( iv_a = s3 iv_b = s4 ). mem_st_i32_8( iv_addr = s2 + 14 iv_val = s3 ). s2 = l2. s3 = p1. s4 = 12.
          s3 = zcl_wasm_rt=>shr_u32( iv_val = s3 iv_shift = s4 ). s4 = 224. s3 = zcl_wasm_rt=>or32( iv_a = s3 iv_b = s4 ). mem_st_i32_8( iv_addr = s2 + 12 iv_val = s3 ). s2 = l2. s3 = p1. s4 = 6.
          s3 = zcl_wasm_rt=>shr_u32( iv_val = s3 iv_shift = s4 ). s4 = 63. s3 = zcl_wasm_rt=>and32( iv_a = s3 iv_b = s4 ). s4 = 128. s3 = zcl_wasm_rt=>or32( iv_a = s3 iv_b = s4 ). mem_st_i32_8( iv_addr = s2 + 13 iv_val = s3 ). s2 = 3.
          lv_br = 3. EXIT. " br 3
        ELSE.
        ENDIF.
        s3 = l2. s4 = p1. mem_st_i32_8( iv_addr = s3 + 12 iv_val = s4 ). s3 = 1. lv_br = 2. EXIT. " br 2
      ENDDO.
      s4 = l2. s5 = p1. s6 = 63. s5 = zcl_wasm_rt=>and32( iv_a = s5 iv_b = s6 ). s6 = 128. s5 = zcl_wasm_rt=>or32( iv_a = s5 iv_b = s6 ). mem_st_i32_8( iv_addr = s4 + 13 iv_val = s5 ). s4 = l2. s5 = p1. s6 = 6.
      s5 = zcl_wasm_rt=>shr_u32( iv_val = s5 iv_shift = s6 ). s6 = 192. s5 = zcl_wasm_rt=>or32( iv_a = s5 iv_b = s6 ). mem_st_i32_8( iv_addr = s4 + 12 iv_val = s5 ). s4 = 2. lv_br = 1. EXIT. " br 1
    ENDDO.
    s5 = l2. s6 = p1. s7 = 63. s6 = zcl_wasm_rt=>and32( iv_a = s6 iv_b = s7 ). s7 = 128. s6 = zcl_wasm_rt=>or32( iv_a = s6 iv_b = s7 ). mem_st_i32_8( iv_addr = s5 + 15 iv_val = s6 ). s5 = l2. s6 = p1. s7 = 6.
    s6 = zcl_wasm_rt=>shr_u32( iv_val = s6 iv_shift = s7 ). s7 = 63. s6 = zcl_wasm_rt=>and32( iv_a = s6 iv_b = s7 ). s7 = 128. s6 = zcl_wasm_rt=>or32( iv_a = s6 iv_b = s7 ). mem_st_i32_8( iv_addr = s5 + 14 iv_val = s6 ). s5 = l2. s6 = p1.
    s7 = 12. s6 = zcl_wasm_rt=>shr_u32( iv_val = s6 iv_shift = s7 ). s7 = 63. s6 = zcl_wasm_rt=>and32( iv_a = s6 iv_b = s7 ). s7 = 128. s6 = zcl_wasm_rt=>or32( iv_a = s6 iv_b = s7 ). mem_st_i32_8( iv_addr = s5 + 13 iv_val = s6 ). s5 = l2.
    s6 = p1. s7 = 18. s6 = zcl_wasm_rt=>shr_u32( iv_val = s6 iv_shift = s7 ). s7 = 7. s6 = zcl_wasm_rt=>and32( iv_a = s6 iv_b = s7 ). s7 = 240. s6 = zcl_wasm_rt=>or32( iv_a = s6 iv_b = s7 ). mem_st_i32_8( iv_addr = s5 + 12 iv_val = s6 ).
    s5 = 4.
  ENDDO.
  PERFORM f285 USING s3 s4 s5 CHANGING s3. s4 = l2. s5 = 16. s4 = s4 + s5. gv_g0 = s4. rv = s3.
ENDFORM.

FORM f725 USING p0 TYPE i p1 TYPE i.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i.
  DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i.
  DATA s25 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 80. s0 = s0 - s1. l2 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    s0 = p1. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). l4 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = -30064771072.
    IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = l2. s1 = 0. mem_st_i32( iv_addr = s0 + 72 iv_val = s1 ). s0 = l2. s1 = 1. mem_st_i32( iv_addr = s0 + 60 iv_val = s1 ). s0 = l2. s1 = 1055560. mem_st_i32( iv_addr = s0 + 56 iv_val = s1 ). s0 = l2. s1 = 4.
      zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 64 CHANGING cv_mem = mv_mem ). s0 = l2. s1 = 56. s0 = s0 + s1. PERFORM f1037 USING s0 CHANGING s0. p1 = s0. s0 = p0. s1 = -2147483648.
      mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s1 = p1. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = l4. s1 = p1. s1 = mem_ld_i32( s1 + 8 ). PERFORM f780 USING s0 s1 CHANGING s0. s1 = 255. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = 6.
    IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    l3 = s0.
    IF s0 <> 0.
      s0 = l2. s1 = 24. s0 = s0 + s1. s1 = p1. s2 = 0. s3 = l3.
      IF s3 <> 0. s1 = s1. ELSE. s1 = s2. ENDIF.
      p1 = s1. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 0 ). s2 = p1. s3 = 8. s2 = s2 + s3. l3 = s2. s2 = mem_ld_i32( s2 ). PERFORM f776 USING s0 s1 s2.
      DO 1 TIMES. " block
        s0 = l2. s0 = mem_ld_i32_8u( s0 + 24 ). s1 = 18.
        IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = l2. s1 = 16. s0 = s0 + s1. s1 = l2. s2 = 36. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l2. s1 = l2. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 28 ).
          zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 8 CHANGING cv_mem = mv_mem ). lv_br = 1. EXIT. " br 1
        ELSE.
        ENDIF.
        s0 = l2. s1 = 8. s0 = s0 + s1. s1 = l3. s1 = mem_ld_i32( s1 ). s2 = p1. s2 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s2 + 0 ). s3 = l2. s4 = 24. s3 = s3 + s4. PERFORM f363 USING s0 s1 s2 s3.
      ENDDO.
      s0 = p0. s1 = l2. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 8 ). zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ). s0 = p0. s1 = 8. s0 = s0 + s1. s1 = l2. s2 = 16.
      s1 = s1 + s2. s1 = mem_ld_i32( s1 ). mem_st_i32( iv_addr = s0 iv_val = s1 ). lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = 1055596. PERFORM f1357 USING s0.
    RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
  ENDDO.
  s0 = l2. s1 = 80. s0 = s0 + s1. gv_g0 = s0.
ENDFORM.

FORM f726 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA l2 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i.
  DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l2 = s0. gv_g0 = s0. s0 = l2. s1 = 0.
  mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = p0. s1 = l2. s2 = 12. s1 = s1 + s2.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        s2 = p1. s3 = 128.
        IF zcl_wasm_rt=>ge_u32( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
        IF s2 <> 0.
          s2 = p1. s3 = 2048.
          IF zcl_wasm_rt=>lt_u32( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
          IF s2 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          s2 = p1. s3 = 65536.
          IF zcl_wasm_rt=>ge_u32( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
          IF s2 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
          s2 = l2. s3 = p1. s4 = 63. s3 = zcl_wasm_rt=>and32( iv_a = s3 iv_b = s4 ). s4 = 128. s3 = zcl_wasm_rt=>or32( iv_a = s3 iv_b = s4 ). mem_st_i32_8( iv_addr = s2 + 14 iv_val = s3 ). s2 = l2. s3 = p1. s4 = 12.
          s3 = zcl_wasm_rt=>shr_u32( iv_val = s3 iv_shift = s4 ). s4 = 224. s3 = zcl_wasm_rt=>or32( iv_a = s3 iv_b = s4 ). mem_st_i32_8( iv_addr = s2 + 12 iv_val = s3 ). s2 = l2. s3 = p1. s4 = 6.
          s3 = zcl_wasm_rt=>shr_u32( iv_val = s3 iv_shift = s4 ). s4 = 63. s3 = zcl_wasm_rt=>and32( iv_a = s3 iv_b = s4 ). s4 = 128. s3 = zcl_wasm_rt=>or32( iv_a = s3 iv_b = s4 ). mem_st_i32_8( iv_addr = s2 + 13 iv_val = s3 ). s2 = 3.
          lv_br = 3. EXIT. " br 3
        ELSE.
        ENDIF.
        s3 = l2. s4 = p1. mem_st_i32_8( iv_addr = s3 + 12 iv_val = s4 ). s3 = 1. lv_br = 2. EXIT. " br 2
      ENDDO.
      s4 = l2. s5 = p1. s6 = 63. s5 = zcl_wasm_rt=>and32( iv_a = s5 iv_b = s6 ). s6 = 128. s5 = zcl_wasm_rt=>or32( iv_a = s5 iv_b = s6 ). mem_st_i32_8( iv_addr = s4 + 13 iv_val = s5 ). s4 = l2. s5 = p1. s6 = 6.
      s5 = zcl_wasm_rt=>shr_u32( iv_val = s5 iv_shift = s6 ). s6 = 192. s5 = zcl_wasm_rt=>or32( iv_a = s5 iv_b = s6 ). mem_st_i32_8( iv_addr = s4 + 12 iv_val = s5 ). s4 = 2. lv_br = 1. EXIT. " br 1
    ENDDO.
    s5 = l2. s6 = p1. s7 = 63. s6 = zcl_wasm_rt=>and32( iv_a = s6 iv_b = s7 ). s7 = 128. s6 = zcl_wasm_rt=>or32( iv_a = s6 iv_b = s7 ). mem_st_i32_8( iv_addr = s5 + 15 iv_val = s6 ). s5 = l2. s6 = p1. s7 = 6.
    s6 = zcl_wasm_rt=>shr_u32( iv_val = s6 iv_shift = s7 ). s7 = 63. s6 = zcl_wasm_rt=>and32( iv_a = s6 iv_b = s7 ). s7 = 128. s6 = zcl_wasm_rt=>or32( iv_a = s6 iv_b = s7 ). mem_st_i32_8( iv_addr = s5 + 14 iv_val = s6 ). s5 = l2. s6 = p1.
    s7 = 12. s6 = zcl_wasm_rt=>shr_u32( iv_val = s6 iv_shift = s7 ). s7 = 63. s6 = zcl_wasm_rt=>and32( iv_a = s6 iv_b = s7 ). s7 = 128. s6 = zcl_wasm_rt=>or32( iv_a = s6 iv_b = s7 ). mem_st_i32_8( iv_addr = s5 + 13 iv_val = s6 ). s5 = l2.
    s6 = p1. s7 = 18. s6 = zcl_wasm_rt=>shr_u32( iv_val = s6 iv_shift = s7 ). s7 = 7. s6 = zcl_wasm_rt=>and32( iv_a = s6 iv_b = s7 ). s7 = 240. s6 = zcl_wasm_rt=>or32( iv_a = s6 iv_b = s7 ). mem_st_i32_8( iv_addr = s5 + 12 iv_val = s6 ).
    s5 = 4.
  ENDDO.
  PERFORM f715 USING s3 s4 s5 CHANGING s3. s4 = l2. s5 = 16. s4 = s4 + s5. gv_g0 = s4. rv = s3.
ENDFORM.

FORM f727 USING p0 TYPE i p1 TYPE int8.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i.
  DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). s0 = mem_ld_i32( s0 + 32 ). l3 = s0. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). p1 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ).
    s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
    IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l2 = s0. s1 = l2. s1 = mem_ld_i32( s1 ). l2 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l2. s1 = 1.
    IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s1 = p1. PERFORM f453 USING s0 s1.
  ENDDO.
  DO 1 TIMES. " block
    s0 = l3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 8 ). p1 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
    IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l2 = s0. s1 = l2. s1 = mem_ld_i32( s1 ). l2 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l2. s1 = 1.
    IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s1 = p1. PERFORM f453 USING s0 s1.
  ENDDO.
  s0 = l3. s0 = mem_ld_i32( s0 + 16 ). l5 = s0. s1 = 0.
  IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = l3. s1 = 24. s0 = s0 + s1. l2 = s0.
    DO. " loop
      DO 1 TIMES. " block
        s0 = l2. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). p1 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
        IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l4 = s0. s1 = l4. s1 = mem_ld_i32( s1 ). l4 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l4. s1 = 1.
        IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = p0. s1 = p1. PERFORM f453 USING s0 s1. s0 = l3. s0 = mem_ld_i32( s0 + 16 ). l5 = s0.
      ENDDO.
      s0 = l2. s1 = 8. s0 = s0 + s1. l2 = s0. s0 = l6. s1 = 1. s0 = s0 + s1. l6 = s0. s1 = l5.
      IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
    ENDDO.
  ELSE.
  ENDIF.
  s0 = p0. s1 = 16. s0 = s0 + s1. s1 = l3. s2 = p0. s2 = mem_ld_i32( s2 + 4 ).
  DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
  dispatch_t6( iv_idx = lv_ci_func p0 = s0 p1 = s1 ).
ENDFORM.

FORM f728 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE int8 p4 TYPE i CHANGING rv TYPE i.
  DATA l5 TYPE i. DATA l6 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i.
  DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 32.
  s0 = s0 - s1. l5 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    s0 = p0. s1 = l5. s2 = p3. PERFORM f294 USING s0 s1 s2 CHANGING s0. s1 = 0.
    IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = -1. p4 = s0. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = p0. s1 = p1. s2 = p2. s3 = l5. s3 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s3 + 8 ). p1 = s3. s4 = l5. s4 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s4 + 16 ). p3 = s4. s5 = l5.
    s5 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s5 + 24 ). l6 = s5. s6 = l5. s6 = mem_ld_i32( s6 ). s7 = p4. s6 = zcl_wasm_rt=>or32( iv_a = s6 iv_b = s7 ). PERFORM f37 USING s0 s1 s2 s3 s4 s5 s6 CHANGING s0. p4 = s0.
    DO 1 TIMES. " block
      s0 = p3. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
      IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p3. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p2 = s0. s1 = p2. s1 = mem_ld_i32( s1 ). p2 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p2. s1 = 1.
      IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = p3. PERFORM f453 USING s0 s1.
    ENDDO.
    DO 1 TIMES. " block
      s0 = l6. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
      IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = l6. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p2 = s0. s1 = p2. s1 = mem_ld_i32( s1 ). p2 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p2. s1 = 1.
      IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = l6. PERFORM f453 USING s0 s1.
    ENDDO.
    s0 = p1. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
    IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p2 = s0. s1 = p2. s1 = mem_ld_i32( s1 ). p2 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p2. s1 = 1.
    IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = p1. PERFORM f453 USING s0 s1.
  ENDDO.
  s0 = l5. s1 = 32. s0 = s0 + s1. gv_g0 = s0. s0 = p4. rv = s0.
ENDFORM.

FORM f729 USING p0 TYPE i p1 TYPE int8 p2 TYPE i.
  DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i.
  DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i.
  DATA s25 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l4 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        s0 = l4. s1 = 8. s0 = s0 + s1. l3 = s0. s0 = l4. s1 = 12. s0 = s0 + s1. l5 = s0. s0 = p1. s1 = -4294967297.
        IF zcl_wasm_rt=>le_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = p2. s1 = 1137529. s2 = 0. PERFORM f970 USING s0 s1 s2 CHANGING s0. s0 = -1. lv_br = 1. EXIT. " br 1
        ELSE.
        ENDIF.
        s1 = p2. s2 = l3. s3 = l5. s4 = p1. s4 = zcl_wasm_rt=>wrap_i64( s4 ). s5 = 17. PERFORM f48 USING s1 s2 s3 s4 s5 CHANGING s1.
      ENDDO.
      s2 = 0.
      IF s1 >= s2. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0.
        s1 = l4. s1 = mem_ld_i32( s1 + 8 ). l3 = s1. s1 = l4. s1 = mem_ld_i32( s1 + 12 ). l5 = s1. s1 = p2. s2 = p2. s2 = mem_ld_i32( s2 ). s3 = 1. s2 = s2 + s3. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = p0. s2 = l5.
        mem_st_i32( iv_addr = s1 + 16 iv_val = s2 ). s1 = p0. s2 = 0. mem_st_i32( iv_addr = s1 + 12 iv_val = s2 ). s1 = p0. s2 = l3. mem_st_i32( iv_addr = s1 + 8 iv_val = s2 ). s1 = p0. s2 = p2. mem_st_i32( iv_addr = s1 + 4 iv_val = s2 ).
        s1 = p0. s2 = 18. mem_st_i32_8( iv_addr = s1 iv_val = s2 ). lv_br = 1. EXIT. " br 1
      ELSE.
      ENDIF.
      s1 = p2. s1 = mem_ld_i32( s1 + 16 ). s1 = mem_ld_i32( s1 + 376 ). l3 = s1. s1 = mem_ld_i32( s1 ). s2 = l3. s3 = 0. mem_st_i32( iv_addr = s2 iv_val = s3 ).
      IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s1 = p0. s2 = 9. mem_st_i32_8( iv_addr = s1 iv_val = s2 ).
    ENDDO.
    s1 = p2. s2 = p2. s2 = mem_ld_i32( s2 ). s3 = 1. s2 = s2 + s3. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = p1. s2 = 32. s1 = zcl_wasm_rt=>shr_u64( iv_val = s1 iv_shift = s2 ). s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = -11.
    IF zcl_wasm_rt=>ge_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
    IF s1 <> 0.
      s1 = p1. s1 = zcl_wasm_rt=>wrap_i64( s1 ). l3 = s1. s2 = l3. s2 = mem_ld_i32( s2 ). s3 = 1. s2 = s2 + s3. mem_st_i32( iv_addr = s1 iv_val = s2 ).
    ELSE.
    ENDIF.
    s1 = p0. s2 = p2. mem_st_i32( iv_addr = s1 + 40 iv_val = s2 ). s1 = p0. s2 = p1. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s2 iv_addr = s1 + 32 CHANGING cv_mem = mv_mem ). s1 = l4. s2 = 16. s1 = s1 + s2. gv_g0 = s1.
    RETURN.
  ENDDO.
  s1 = l3. s1 = mem_ld_i32( s1 + 4 ). PERFORM f1168 USING s1.
  RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
ENDFORM.

FORM f730 USING p0 TYPE i p1 TYPE int8 p2 TYPE int8 p3 TYPE i p4 TYPE i p5 TYPE i CHANGING rv TYPE int8.
  DATA l6 TYPE i. DATA l7 TYPE i. DATA l8 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i.
  DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i.
  DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l6 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      s0 = p2. s1 = -4294967296.
      IF zcl_wasm_rt=>lt_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p2. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l7 = s0. s0 = mem_ld_i32_16u( s0 + 6 ). s1 = 12.
      IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = l7. s1 = 41. s0 = s0 + s1. s0 = mem_ld_i32_8u( s0 ). s1 = 12.
      IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p0. s1 = p1. s2 = p3. s3 = p3.
      IF s3 <> 0.
        s3 = p4.
      ELSE.
        s4 = l6. s5 = 12884901888. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s5 iv_addr = s4 + 8 CHANGING cv_mem = mv_mem ). s4 = l6. s5 = 8. s4 = s4 + s5.
      ENDIF.
      s5 = p5. s6 = l7. s7 = 42. s6 = s6 + s7. s6 = zcl_wasm_rt=>mem_ld_i32_16s( iv_mem = mv_mem iv_addr = s6 ). s7 = l7. s7 = mem_ld_i32( s7 + 36 ).
      DATA(lv_ci_func) = mt_tab0[ s7 + 1 ]. " call_indirect
      s1 = dispatch_t60( iv_idx = lv_ci_func p0 = s1 p1 = s2 p2 = s3 p3 = s4 p4 = s5 p5 = s6 ). l8 = s1. lv_br = 1. EXIT. " br 1
    ENDDO.
    s1 = 25769803776. l8 = s1.
    DO 1 TIMES. " block
      s1 = p0. s2 = p2. s3 = p1. s4 = 12884901888. s5 = p3. s6 = p4. s7 = 2. PERFORM f0 USING s1 s2 s3 s4 s5 s6 s7 CHANGING s1. p1 = s1. s2 = -4294967296. s1 = zcl_wasm_rt=>and64( iv_a = s1 iv_b = s2 ). s2 = 25769803776.
      IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0.
        s1 = p1. s2 = -4294967297.
        IF zcl_wasm_rt=>gt_u64( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        DO 1 TIMES. " block
          s1 = p1. s2 = 32. s1 = zcl_wasm_rt=>shr_u64( iv_val = s1 iv_shift = s2 ). s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = -11.
          IF zcl_wasm_rt=>lt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
          IF s1 <> 0. EXIT. ENDIF. " br_if 0
          s1 = p1. s1 = zcl_wasm_rt=>wrap_i64( s1 ). p3 = s1. s2 = p3. s2 = mem_ld_i32( s2 ). p3 = s2. s3 = 1. s2 = s2 - s3. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = p3. s2 = 1.
          IF s1 > s2. s1 = 1. ELSE. s1 = 0. ENDIF.
          IF s1 <> 0. EXIT. ENDIF. " br_if 0
          s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s2 = p1. PERFORM f453 USING s1 s2.
        ENDDO.
        s1 = p0. s2 = 1137543. s3 = 0. PERFORM f970 USING s1 s2 s3 CHANGING s1.
      ELSE.
      ENDIF.
      s1 = p5. s2 = 0. mem_st_i32( iv_addr = s1 iv_val = s2 ). lv_br = 1. EXIT. " br 1
    ENDDO.
    s1 = p5. s2 = 2. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = p1. l8 = s1.
  ENDDO.
  s1 = l6. s2 = 16. s1 = s1 + s2. gv_g0 = s1. s1 = l8. rv = s1.
ENDFORM.

FORM f731 USING p0 TYPE i p1 TYPE i.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i.
  DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i.
  DATA s26 TYPE i. DATA lv_br TYPE i. s0 = p0. s0 = mem_ld_i32( s0 + 8 ). l3 = s0. s1 = p0. s1 = mem_ld_i32( s1 ).
  IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = p0. s1 = l3. s2 = 1. PERFORM f828 USING s0 s1 s2. s0 = p0. s0 = mem_ld_i32( s0 + 8 ). l3 = s0.
  ELSE.
  ENDIF.
  s0 = p0. s1 = l3. s2 = 1. s1 = s1 + s2. l2 = s1. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = p0. s0 = mem_ld_i32( s0 + 4 ). s1 = l3. s0 = s0 + s1. s1 = 34. mem_st_i32_8( iv_addr = s0 iv_val = s1 ). s0 = p0.
  DO 1 TIMES. " block
    s1 = p1.
    IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
    IF s1 <> 0.
      s1 = p0. s1 = mem_ld_i32( s1 ). s2 = l2. s1 = s1 - s2. s2 = 4.
      IF zcl_wasm_rt=>le_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0.
        s1 = p0. s2 = l2. s3 = 5. PERFORM f828 USING s1 s2 s3. s1 = p0. s1 = mem_ld_i32( s1 + 8 ). l2 = s1.
      ELSE.
      ENDIF.
      s1 = p0. s1 = mem_ld_i32( s1 + 4 ). s2 = l2. s1 = s1 + s2. p1 = s1. s2 = 1080532. s2 = mem_ld_i32( s2 ). mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = p1. s2 = 4. s1 = s1 + s2. s2 = 1080536. s2 = mem_ld_i32_8u( s2 ).
      mem_st_i32_8( iv_addr = s1 iv_val = s2 ). s1 = l2. s2 = 5. s1 = s1 + s2. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s2 = p0. s2 = mem_ld_i32( s2 ). s3 = l2. s2 = s2 - s3. s3 = 3.
    IF zcl_wasm_rt=>le_u32( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
    IF s2 <> 0.
      s2 = p0. s3 = l2. s4 = 4. PERFORM f828 USING s2 s3 s4. s2 = p0. s2 = mem_ld_i32( s2 + 8 ). l2 = s2.
    ELSE.
    ENDIF.
    s2 = p0. s2 = mem_ld_i32( s2 + 4 ). s3 = l2. s2 = s2 + s3. s3 = 1702195828. mem_st_i32( iv_addr = s2 iv_val = s3 ). s2 = l2. s3 = 4. s2 = s2 + s3.
  ENDDO.
  l2 = s2. mem_st_i32( iv_addr = s1 + 8 iv_val = s2 ). s1 = l2. s2 = p0. s2 = mem_ld_i32( s2 ).
  IF s1 = s2. s1 = 1. ELSE. s1 = 0. ENDIF.
  IF s1 <> 0.
    s1 = p0. s2 = l2. s3 = 1. PERFORM f828 USING s1 s2 s3. s1 = p0. s1 = mem_ld_i32( s1 + 8 ). l2 = s1.
  ELSE.
  ENDIF.
  s1 = p0. s2 = l2. s3 = 1. s2 = s2 + s3. mem_st_i32( iv_addr = s1 + 8 iv_val = s2 ). s1 = p0. s1 = mem_ld_i32( s1 + 4 ). s2 = l2. s1 = s1 + s2. s2 = 34. mem_st_i32_8( iv_addr = s1 iv_val = s2 ).
ENDFORM.

FORM f732 USING p0 TYPE i p1 TYPE i p2 TYPE i p3 TYPE i p4 TYPE i CHANGING rv TYPE int8.
  DATA l5 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i.
  DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      s0 = p0. s0 = mem_ld_i32( s0 + 16 ). p2 = s0. s1 = 16. s0 = s0 + s1. s1 = 24. s2 = p2. s2 = mem_ld_i32( s2 ).
      DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
      s0 = dispatch_t7( iv_idx = lv_ci_func p0 = s0 p1 = s1 ). p2 = s0.
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = 25769803776. s1 = p0. s1 = mem_ld_i32( s1 + 16 ). p1 = s1. s1 = mem_ld_i32_8u( s1 + 136 ).
        IF s1 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
        s0 = p1. s1 = 136. s0 = s0 + s1. lv_br = 1. EXIT. " br 1
      ELSE.
      ENDIF.
      s1 = p2. s2 = 1. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = p0. s1 = mem_ld_i32( s1 + 216 ). p4 = s1. s1 = p2. s2 = 4. s1 = s1 + s2. p3 = s1. s2 = 0.
      zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s2 iv_addr = s1 + 12 CHANGING cv_mem = mv_mem ). s1 = p3. s2 = -9223372036854775808. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s2 iv_addr = s1 + 4 CHANGING cv_mem = mv_mem ). s1 = p3.
      s2 = p4. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = gv_g0. s2 = 16. s1 = s1 - s2. p4 = s1. gv_g0 = s1. s1 = p3. s2 = p4. s3 = 12. s2 = s2 + s3. s3 = p1. s4 = 10. s5 = 1073741823. s6 = 262145. s7 = 1.
      PERFORM f29 USING s1 s2 s3 s4 s5 s6 s7 CHANGING s1. p1 = s1. s1 = p4. s2 = 16. s1 = s1 + s2. gv_g0 = s1. s1 = p2. s1 = zcl_wasm_rt=>extend_u32( s1 ). s2 = -47244640256. s1 = zcl_wasm_rt=>or64( iv_a = s1 iv_b = s2 ). l5 = s1. s2 = p1.
      s3 = 32. s2 = zcl_wasm_rt=>and32( iv_a = s2 iv_b = s3 ).
      IF s2 = 0. s2 = 1. ELSE. s2 = 0. ENDIF.
      IF s2 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s1 = p2. s2 = p2. s2 = mem_ld_i32( s2 ). p1 = s2. s3 = 1. s2 = s2 - s3. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = p1. s2 = 1.
      IF s1 <= s2. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0.
        s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s2 = l5. PERFORM f453 USING s1 s2.
      ELSE.
      ENDIF.
      s1 = 25769803776. s2 = p0. s2 = mem_ld_i32( s2 + 16 ). p1 = s2. s2 = mem_ld_i32_8u( s2 + 136 ).
      IF s2 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s1 = p1. s2 = 136. s1 = s1 + s2.
    ENDDO.
    p1 = s1. s2 = 1. mem_st_i32_8( iv_addr = s1 iv_val = s2 ). s1 = p0. s2 = 1134898. s3 = 0. PERFORM f969 USING s1 s2 s3 CHANGING s1. s1 = p1. s2 = 0. mem_st_i32_8( iv_addr = s1 iv_val = s2 ). s1 = 25769803776.
  ENDDO.
  rv = s1.
ENDFORM.

FORM f733 USING p0 TYPE i p1 TYPE i.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i.
  DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA lv_br TYPE i. s0 = p0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          DO 1 TIMES. " block
            s1 = p1. s1 = mem_ld_i32( s1 + 16 ). l2 = s1. s2 = 224. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). s2 = p1. s2 = mem_ld_i32( s2 + 40 ). s2 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s2 + 8 ). l5 = s2.
            s2 = zcl_wasm_rt=>wrap_i64( s2 ). s3 = 0. s4 = l5. s5 = -4294967297.
            IF zcl_wasm_rt=>gt_u64( iv_a = s4 iv_b = s5 ) = abap_true. s4 = 1. ELSE. s4 = 0. ENDIF.
            IF s4 <> 0. s2 = s2. ELSE. s2 = s3. ENDIF.
            l3 = s2. s3 = -1640562687. s2 = s2 * s3. s3 = 1640562687. s2 = s2 - s3. l4 = s2. s3 = 32. s4 = l2. s5 = 212. s4 = s4 + s5. s4 = mem_ld_i32( s4 ). s3 = s3 - s4. s2 = zcl_wasm_rt=>shr_u32( iv_val = s2 iv_shift = s3 ). s3 = 2.
            s2 = zcl_wasm_rt=>shl32( iv_val = s2 iv_shift = s3 ). s1 = s1 + s2. s1 = mem_ld_i32( s1 ). l2 = s1.
            IF s1 <> 0.
              DO. " loop
                DO 1 TIMES. " block
                  s1 = l2. s1 = mem_ld_i32( s1 + 20 ). s2 = l4.
                  IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
                  IF s1 <> 0. EXIT. ENDIF. " br_if 0
                  s1 = l2. s1 = mem_ld_i32( s1 + 44 ). s2 = l3.
                  IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
                  IF s1 <> 0. EXIT. ENDIF. " br_if 0
                  s1 = l2. s1 = mem_ld_i32( s1 + 32 ).
                  IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
                  IF s1 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
                ENDDO.
                s1 = l2. s1 = mem_ld_i32( s1 + 40 ). l2 = s1.
                IF s1 <> 0. EXIT. ENDIF. " br_if 0
              ENDDO.
            ELSE.
            ENDIF.
            s1 = p1. s2 = l3. s3 = 2. PERFORM f436 USING s1 s2 s3 CHANGING s1. l2 = s1.
            IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
            s1 = 25769803776. lv_br = 2. EXIT. " br 2
          ENDDO.
          s2 = l2. s3 = l2. s3 = mem_ld_i32( s3 ). s4 = 1. s3 = s3 + s4. mem_st_i32( iv_addr = s2 iv_val = s3 ).
        ENDDO.
        s2 = p1. s3 = l2. s4 = 1. PERFORM f408 USING s2 s3 s4 CHANGING s2.
      ENDDO.
      l5 = s2. s3 = -4294967296. s2 = zcl_wasm_rt=>and64( iv_a = s2 iv_b = s3 ). s3 = 25769803776.
      IF s2 = s3. s2 = 1. ELSE. s2 = 0. ENDIF.
      IF s2 <> 0.
        s2 = p1. s2 = mem_ld_i32( s2 + 16 ). s2 = mem_ld_i32( s2 + 376 ). l2 = s2. s2 = mem_ld_i32( s2 ). s3 = l2. s4 = 0. mem_st_i32( iv_addr = s3 iv_val = s4 ).
        IF s2 = 0. s2 = 1. ELSE. s2 = 0. ENDIF.
        IF s2 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        s2 = l2. s2 = mem_ld_i32( s2 + 4 ). PERFORM f1168 USING s2.
        RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
      ELSE.
      ENDIF.
      s2 = p0. s3 = p1. mem_st_i32( iv_addr = s2 + 16 iv_val = s3 ). s2 = 18. lv_br = 1. EXIT. " br 1
    ENDDO.
    s3 = p1. PERFORM f117 USING s3. s3 = 9.
  ENDDO.
  mem_st_i32_8( iv_addr = s2 iv_val = s3 ). s2 = p0. s3 = l5. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s3 iv_addr = s2 + 8 CHANGING cv_mem = mv_mem ).
ENDFORM.

FORM f734 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i CHANGING rv TYPE int8.
  DATA l4 TYPE i. DATA l5 TYPE f. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i.
  DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = -64. s0 = s0 + s1. p2 = s0.
  gv_g0 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          DO 1 TIMES. " block
            s0 = p1. s1 = -4294967296.
            IF zcl_wasm_rt=>lt_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. EXIT. ENDIF. " br_if 0
            s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p3 = s0. s0 = mem_ld_i32_16u( s0 + 6 ). s1 = 10.
            IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. EXIT. ENDIF. " br_if 0
            s0 = p3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 32 ). p1 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). p3 = s0. s1 = 11. s0 = s0 + s1. l4 = s0.
            s0 = p3. s1 = 0. s2 = l4. s3 = 18.
            IF zcl_wasm_rt=>lt_u32( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
            IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
            IF s0 <> 0. EXIT. ENDIF. " br_if 0
            s0 = p3. s1 = 2.
            IF zcl_wasm_rt=>le_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0.
              s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). s0 = s0. " convert to f64 l5 = s0. lv_br = 4. EXIT. " br 4
            ELSE.
            ENDIF.
            s0 = l4. s1 = 18.
            IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
            s0 = p1. s1 = 9221120288580698112. s0 = s0 + s1. s0 = zcl_wasm_rt=>reinterpret_i64_f64( s0 ). lv_br = 2. EXIT. " br 2
          ENDDO.
          s1 = p0. s2 = 1137574. s3 = 0. PERFORM f970 USING s1 s2 s3 CHANGING s1. s1 = 25769803776. lv_br = 3. EXIT. " br 3
        ENDDO.
        s2 = 25769803776. s3 = p0. s4 = p2. s5 = p1. PERFORM f801 USING s3 s4 s5 CHANGING s3.
        IF s3 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
        s2 = p2. s2 = zcl_wasm_rt=>mem_ld_f64( iv_mem = mv_mem iv_addr = s2 + 0 ).
      ENDDO.
      l5 = s2. s3 = l5.
      IF s2 = s3. s2 = 1. ELSE. s2 = 0. ENDIF.
      IF s2 <> 0. EXIT. ENDIF. " br_if 0
      s2 = -51539607552. lv_br = 1. EXIT. " br 1
    ENDDO.
    s3 = p2.
    DO 1 TIMES. " block
      s4 = l5. s4 = trunc( s4 ). l5 = s4. s4 = abs( s4 ). s5 = '9223372036854775808.000000'.
      IF s4 < s5. s4 = 1. ELSE. s4 = 0. ENDIF.
      IF s4 <> 0.
        s4 = l5. s4 = trunc( s4 ). lv_br = 1. EXIT. " br 1
      ELSE.
      ENDIF.
      s5 = -9223372036854775808.
    ENDDO.
    s6 = 1000. s5 = s5 / s6. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s5 iv_addr = s4 + 56 CHANGING cv_mem = mv_mem ). s4 = p2. s5 = 56. s4 = s4 + s5. s5 = p2. s6 = 8. s5 = s5 + s6. PERFORM f377 USING s4 s5. s4 = p2.
    s4 = mem_ld_i32( s4 + 44 ). s5 = -60. s4 = s4 / s5. s4 = zcl_wasm_rt=>extend_u32( s4 ).
  ENDDO.
  s5 = p2. s6 = -64. s5 = s5 - s6. gv_g0 = s5. rv = s4.
ENDFORM.

FORM f735 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i.
  DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16.
  s0 = s0 - s1. l2 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      s0 = p0. s0 = mem_ld_i32( s0 ). p0 = s0. s0 = mem_ld_i32( s0 ).
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = l2. s1 = p0. s2 = 4. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l2. s1 = p1. s1 = mem_ld_i32( s1 + 20 ). s2 = 1075808. s3 = 11. s4 = p1. s4 = mem_ld_i32( s4 + 24 ). s4 = mem_ld_i32( s4 + 12 ).
        DATA(lv_ci_func) = mt_tab0[ s4 + 1 ]. " call_indirect
        s1 = dispatch_t11( iv_idx = lv_ci_func p0 = s1 p1 = s2 p2 = s3 ). mem_st_i32_8( iv_addr = s0 + 12 iv_val = s1 ). s0 = l2. s1 = p1. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = l2. s1 = 0.
        mem_st_i32_8( iv_addr = s0 + 13 iv_val = s1 ). s0 = l2. s1 = 0. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = l2. s1 = 4. s0 = s0 + s1. s1 = l2. s2 = 1059428. PERFORM f691 USING s0 s1 s2 CHANGING s0. s1 = l2.
        s1 = mem_ld_i32_8u( s1 + 12 ). p0 = s1. s0 = mem_ld_i32( s0 ). l3 = s0.
        IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = p0. s1 = 0.
          IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          p1 = s0. lv_br = 3. EXIT. " br 3
        ELSE.
        ENDIF.
        s0 = 1. p1 = s0. s0 = p0.
        IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
        s0 = l2. s0 = mem_ld_i32( s0 + 8 ). p0 = s0. s0 = l3. s1 = 1.
        IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        s0 = l2. s0 = mem_ld_i32_8u( s0 + 13 ).
        IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        s0 = p0. s0 = mem_ld_i32_8u( s0 + 28 ). s1 = 4. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        s0 = p0. s0 = mem_ld_i32( s0 + 20 ). s1 = 1079704. s2 = 1. s3 = p0. s3 = mem_ld_i32( s3 + 24 ). s3 = mem_ld_i32( s3 + 12 ).
        DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
        s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ).
        IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        lv_br = 2. EXIT. " br 2
      ELSE.
      ENDIF.
      s0 = p1. s0 = mem_ld_i32( s0 + 20 ). s1 = 1075836. s2 = 16. s3 = p1. s3 = mem_ld_i32( s3 + 24 ). s3 = mem_ld_i32( s3 + 12 ).
      DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
      s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). p1 = s0. lv_br = 1. EXIT. " br 1
    ENDDO.
    s0 = p0. s0 = mem_ld_i32( s0 + 20 ). s1 = 1116251. s2 = 1. s3 = p0. s3 = mem_ld_i32( s3 + 24 ). s3 = mem_ld_i32( s3 + 12 ).
    DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
    s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). p1 = s0.
  ENDDO.
  s0 = l2. s1 = 16. s0 = s0 + s1. gv_g0 = s0. s0 = p1. rv = s0.
ENDFORM.

FORM f736 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i.
  DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16.
  s0 = s0 - s1. l2 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      s0 = p0. s0 = mem_ld_i32( s0 ). p0 = s0. s0 = mem_ld_i32( s0 ).
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = l2. s1 = p0. s2 = 4. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l2. s1 = p1. s1 = mem_ld_i32( s1 + 20 ). s2 = 1075808. s3 = 11. s4 = p1. s4 = mem_ld_i32( s4 + 24 ). s4 = mem_ld_i32( s4 + 12 ).
        DATA(lv_ci_func) = mt_tab0[ s4 + 1 ]. " call_indirect
        s1 = dispatch_t11( iv_idx = lv_ci_func p0 = s1 p1 = s2 p2 = s3 ). mem_st_i32_8( iv_addr = s0 + 12 iv_val = s1 ). s0 = l2. s1 = p1. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = l2. s1 = 0.
        mem_st_i32_8( iv_addr = s0 + 13 iv_val = s1 ). s0 = l2. s1 = 0. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = l2. s1 = 4. s0 = s0 + s1. s1 = l2. s2 = 1075820. PERFORM f691 USING s0 s1 s2 CHANGING s0. s1 = l2.
        s1 = mem_ld_i32_8u( s1 + 12 ). p0 = s1. s0 = mem_ld_i32( s0 ). l3 = s0.
        IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = p0. s1 = 0.
          IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          p1 = s0. lv_br = 3. EXIT. " br 3
        ELSE.
        ENDIF.
        s0 = 1. p1 = s0. s0 = p0.
        IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
        s0 = l2. s0 = mem_ld_i32( s0 + 8 ). p0 = s0. s0 = l3. s1 = 1.
        IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        s0 = l2. s0 = mem_ld_i32_8u( s0 + 13 ).
        IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        s0 = p0. s0 = mem_ld_i32_8u( s0 + 28 ). s1 = 4. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        s0 = p0. s0 = mem_ld_i32( s0 + 20 ). s1 = 1079704. s2 = 1. s3 = p0. s3 = mem_ld_i32( s3 + 24 ). s3 = mem_ld_i32( s3 + 12 ).
        DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
        s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ).
        IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        lv_br = 2. EXIT. " br 2
      ELSE.
      ENDIF.
      s0 = p1. s0 = mem_ld_i32( s0 + 20 ). s1 = 1075836. s2 = 16. s3 = p1. s3 = mem_ld_i32( s3 + 24 ). s3 = mem_ld_i32( s3 + 12 ).
      DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
      s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). p1 = s0. lv_br = 1. EXIT. " br 1
    ENDDO.
    s0 = p0. s0 = mem_ld_i32( s0 + 20 ). s1 = 1116251. s2 = 1. s3 = p0. s3 = mem_ld_i32( s3 + 24 ). s3 = mem_ld_i32( s3 + 12 ).
    DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
    s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). p1 = s0.
  ENDDO.
  s0 = l2. s1 = 16. s0 = s0 + s1. gv_g0 = s0. s0 = p1. rv = s0.
ENDFORM.

FORM f737 USING p0 TYPE i.
  DATA l1 TYPE i. DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i.
  DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16.
  s0 = s0 - s1. l3 = s0. gv_g0 = s0. s0 = p0. s1 = 80. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). l1 = s0.
  IF s0 <> 0.
    s0 = l1. s1 = 256. s0 = s0 + s1. l4 = s0. s0 = l1. s0 = mem_ld_i32( s0 + 188 ). l2 = s0. s0 = l1. s0 = mem_ld_i32( s0 + 284 ). s1 = p0. s1 = mem_ld_i32( s1 + 4 ).
    IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = l4. s1 = 200. PERFORM f908 USING s0 s1. s0 = l3. s1 = p0. s1 = mem_ld_i32( s1 + 4 ). mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = l4. s1 = l3. s2 = 8. s1 = s1 + s2. s2 = 4. PERFORM f1097 USING s0 s1 s2. s0 = l1. s1 = p0.
      s1 = mem_ld_i32( s1 + 4 ). mem_st_i32( iv_addr = s0 + 284 iv_val = s1 ).
    ELSE.
    ENDIF.
    s0 = l1. s1 = l1. s2 = 260. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). mem_st_i32( iv_addr = s0 + 280 iv_val = s1 ). s0 = l4. s1 = 183. PERFORM f908 USING s0 s1. s0 = p0. s1 = 80. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). s1 = l3. s2 = l2.
    mem_st_i32_16( iv_addr = s1 + 14 iv_val = s2 ). s1 = 256. s0 = s0 + s1. s1 = l3. s2 = 14. s1 = s1 + s2. s2 = 2. PERFORM f1097 USING s0 s1 s2. s0 = l1. s1 = l1. s1 = mem_ld_i32( s1 + 204 ). l4 = s1. s2 = l2. s3 = 3.
    s2 = zcl_wasm_rt=>shl32( iv_val = s2 iv_shift = s3 ). s1 = s1 + s2. s1 = mem_ld_i32( s1 ). p0 = s1. mem_st_i32( iv_addr = s0 + 188 iv_val = s1 ).
    DO 1 TIMES. " block
      s0 = p0. s1 = 0.
      IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = -1. l2 = s0. lv_br = 1. EXIT. " br 1
      ELSE.
      ENDIF.
      DO. " loop
        s0 = l4. s1 = p0. s2 = 3. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. p0 = s0. s0 = mem_ld_i32( s0 + 4 ). l2 = s0. s1 = 0.
        IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        s0 = -1. l2 = s0. s0 = p0. s0 = mem_ld_i32( s0 ). p0 = s0. s1 = 0.
        IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
      ENDDO.
    ENDDO.
    s0 = l1. s1 = l2. mem_st_i32( iv_addr = s0 + 192 iv_val = s1 ).
  ELSE.
  ENDIF.
  s0 = l3. s1 = 16. s0 = s0 + s1. gv_g0 = s0.
ENDFORM.

FORM f738 USING p0 TYPE i p1 TYPE i p2 TYPE i CHANGING rv TYPE i.
  DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i.
  DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA lv_br TYPE i. s0 = p1. s0 = mem_ld_i32( s0 + 16 ). l3 = s0.
  s0 = mem_ld_i32_8u( s0 + 16 ).
  IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = 0. rv = s0. RETURN.
  ELSE.
  ENDIF.
  DO 1 TIMES. " block
    s0 = l3. s0 = mem_ld_i32( s0 ). s1 = 1.
    IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p2.
      IF s0 <> 0.
        s0 = p2. s0 = mem_ld_i32( s0 ). s1 = l3. s0 = s0 - s1. s1 = 48. s0 = s0 - s1. s1 = 3. s0 = zcl_wasm_rt=>shr_s32( iv_val = s0 iv_shift = s1 ).
      ELSE.
        s1 = 0.
      ENDIF.
      l4 = s1. s1 = p0. s2 = l3. PERFORM f495 USING s1 s2 CHANGING s1. l3 = s1.
      IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0.
        s1 = -1. rv = s1. RETURN.
      ELSE.
      ENDIF.
      s1 = p1. s1 = mem_ld_i32( s1 + 16 ). l5 = s1. s2 = l5. s2 = mem_ld_i32( s2 ). l6 = s2. s3 = 1. s2 = s2 - s3. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = l6. s2 = 1.
      IF s1 <= s2. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0.
        s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s2 = l5. PERFORM f602 USING s1 s2.
      ELSE.
      ENDIF.
      s1 = p1. s2 = l3. mem_st_i32( iv_addr = s1 + 16 iv_val = s2 ). s1 = p2.
      IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s1 = p2. s2 = l3. s3 = l4. s4 = 3. s3 = zcl_wasm_rt=>shl32( iv_val = s3 iv_shift = s4 ). s2 = s2 + s3. s3 = 48. s2 = s2 + s3. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = 0. rv = s1. RETURN.
    ELSE.
    ENDIF.
    s1 = p0. s1 = mem_ld_i32( s1 + 16 ). p2 = s1. s1 = mem_ld_i32( s1 + 224 ). s2 = l3. s2 = mem_ld_i32( s2 + 20 ). s3 = 32. s4 = p2. s4 = mem_ld_i32( s4 + 212 ). s3 = s3 - s4. s2 = zcl_wasm_rt=>shr_u32( iv_val = s2 iv_shift = s3 ). s3 = 2.
    s2 = zcl_wasm_rt=>shl32( iv_val = s2 iv_shift = s3 ). s1 = s1 + s2. p1 = s1.
    DO. " loop
      s1 = p1. p0 = s1. s1 = mem_ld_i32( s1 ). l4 = s1. s2 = 40. s1 = s1 + s2. p1 = s1. s1 = l3. s2 = l4.
      IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. EXIT. ENDIF. " br_if 0
    ENDDO.
    s1 = l3. s2 = 0. mem_st_i32_8( iv_addr = s1 + 16 iv_val = s2 ). s1 = p0. s2 = l3. s2 = mem_ld_i32( s2 + 40 ). mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = p2. s2 = p2. s2 = mem_ld_i32( s2 + 220 ). s3 = 1. s2 = s2 - s3.
    mem_st_i32( iv_addr = s1 + 220 iv_val = s2 ).
  ENDDO.
  s1 = 0. rv = s1.
ENDFORM.

FORM f739 USING p0 TYPE i.
  DATA l1 TYPE i. DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i.
  DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i.
  DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l2 = s0. gv_g0 = s0. s0 = p0. s1 = 80. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). l1 = s0.
  s0 = mem_ld_i32( s0 + 164 ). s1 = 0.
  IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = l1. s1 = 256. s0 = s0 + s1. l3 = s0. s0 = l1. s0 = mem_ld_i32( s0 + 284 ). s1 = p0. s1 = mem_ld_i32( s1 + 4 ).
    IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = l3. s1 = 200. PERFORM f908 USING s0 s1. s0 = l2. s1 = p0. s1 = mem_ld_i32( s1 + 4 ). mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = l3. s1 = l2. s2 = 4. s1 = s1 + s2. s2 = 4. PERFORM f1097 USING s0 s1 s2. s0 = l1. s1 = p0.
      s1 = mem_ld_i32( s1 + 4 ). mem_st_i32( iv_addr = s0 + 284 iv_val = s1 ).
    ELSE.
    ENDIF.
    s0 = l1. s1 = l1. s2 = 260. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). mem_st_i32( iv_addr = s0 + 280 iv_val = s1 ). s0 = l3. s1 = 6. PERFORM f908 USING s0 s1. s0 = p0. s1 = 80. s0 = s0 + s1. l4 = s0. s0 = mem_ld_i32( s0 ). l1 = s0. s1 = 256.
    s0 = s0 + s1. l3 = s0. s0 = l1. s0 = mem_ld_i32( s0 + 284 ). s1 = p0. s1 = mem_ld_i32( s1 + 4 ).
    IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = l3. s1 = 200. PERFORM f908 USING s0 s1. s0 = l2. s1 = p0. s1 = mem_ld_i32( s1 + 4 ). mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = l3. s1 = l2. s2 = 8. s1 = s1 + s2. s2 = 4. PERFORM f1097 USING s0 s1 s2. s0 = l1. s1 = p0.
      s1 = mem_ld_i32( s1 + 4 ). mem_st_i32( iv_addr = s0 + 284 iv_val = s1 ).
    ELSE.
    ENDIF.
    s0 = l1. s1 = l1. s2 = 260. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). mem_st_i32( iv_addr = s0 + 280 iv_val = s1 ). s0 = l3. s1 = 89. PERFORM f908 USING s0 s1. s0 = l2. s1 = l4. s1 = mem_ld_i32( s1 ). p0 = s1. s1 = mem_ld_i32( s1 + 164 ).
    mem_st_i32_16( iv_addr = s0 + 14 iv_val = s1 ). s0 = p0. s1 = 256. s0 = s0 + s1. s1 = l2. s2 = 14. s1 = s1 + s2. s2 = 2. PERFORM f1097 USING s0 s1 s2.
  ELSE.
  ENDIF.
  s0 = l2. s1 = 16. s0 = s0 + s1. gv_g0 = s0.
ENDFORM.

FORM f740 USING p0 TYPE i.
  DATA l1 TYPE i. DATA l2 TYPE i. DATA l3 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      s0 = p0. s1 = 48. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). l2 = s0. s1 = 37.
      IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = l2. s1 = 45.
      IF zcl_wasm_rt=>le_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = p0. s0 = mem_ld_i32( s0 + 80 ). l1 = s0. s0 = mem_ld_i32_8u( s0 + 110 ). s1 = 1. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        s0 = l2. s1 = 45.
        IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
        s0 = l1. s0 = mem_ld_i32_16u( s0 + 108 ). l3 = s0. s1 = 1. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        s0 = l3. s1 = 65280. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = 768.
        IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
        s0 = l1. s0 = mem_ld_i32( s0 + 100 ).
        IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
        s0 = l1. s0 = mem_ld_i32( s0 + 4 ). l1 = s0.
        IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
        s0 = l1. s0 = mem_ld_i32_8u( s0 + 108 ). s1 = 1. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        lv_br = 2. EXIT. " br 2
      ELSE.
      ENDIF.
      s0 = l2. s1 = 46.
      IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p0. s0 = mem_ld_i32( s0 + 84 ).
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p0. s0 = mem_ld_i32( s0 + 80 ). l1 = s0. s0 = mem_ld_i32_16u( s0 + 108 ). l3 = s0. s1 = 2. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      DO 1 TIMES. " block
        s0 = l3. s1 = 8. s0 = zcl_wasm_rt=>shr_u32( iv_val = s0 iv_shift = s1 ). s1 = 3. s0 = s0 - s1.
        CASE s0.
          WHEN 0. EXIT.
          WHEN 1. lv_br = 2. EXIT.
          WHEN 2. lv_br = 2. EXIT.
          WHEN 3. lv_br = 2. EXIT.
          WHEN 4. lv_br = 1. EXIT.
          WHEN OTHERS. lv_br = 2. EXIT.
        ENDCASE.
      ENDDO.
      s0 = l1. s0 = mem_ld_i32( s0 + 100 ).
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = l1. s0 = mem_ld_i32( s0 + 4 ). l1 = s0.
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = l1. s0 = mem_ld_i32_16u( s0 + 108 ). l1 = s0. s1 = 2. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = l1. s1 = 65280. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = 1792.
      IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
    ENDDO.
    s0 = p0.
    DO 1 TIMES. " block
      s1 = p0. s1 = mem_ld_i32( s1 + 52 ).
      IF s1 <> 0.
        s1 = p0. s2 = 56. s1 = s1 + s2. s2 = 1. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = -125. lv_br = 1. EXIT. " br 1
      ELSE.
      ENDIF.
      s2 = l2. s3 = 84. s2 = s2 - s3.
    ENDDO.
    mem_st_i32( iv_addr = s1 + 32 iv_val = s2 ).
  ENDDO.
ENDFORM.

FORM f741 USING p0 TYPE i p1 TYPE i.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i.
  DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    s0 = p1. s0 = mem_ld_i32( s0 ). s1 = 4.
    IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p1. s0 = mem_ld_i32( s0 + 4 ). l2 = s0.
      IF s0 <> 0.
        s0 = l2. s1 = l2. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 - s2. l3 = s1. mem_st_i32( iv_addr = s0 iv_val = s1 ).
        DO 1 TIMES. " block
          s0 = l3.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = p0. s0 = mem_ld_i32_8u( s0 + 104 ). s1 = 2.
          IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = l2. s0 = mem_ld_i32( s0 + 8 ). l4 = s0. s1 = l2. s2 = 12. s1 = s1 + s2. l3 = s1. s1 = mem_ld_i32( s1 ). l5 = s1. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = l5. s1 = l4. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l3.
          s1 = 0. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l2. s1 = p0. s2 = 88. s1 = s1 + s2. l4 = s1. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = p0. s1 = 92. s0 = s0 + s1. l6 = s0. s0 = mem_ld_i32( s0 ). l5 = s0. s0 = l6.
          s1 = l2. s2 = 8. s1 = s1 + s2. l2 = s1. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l5. s1 = l2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l3. s1 = l5. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0.
          s0 = mem_ld_i32_8u( s0 + 104 ).
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = p0. s1 = 1. mem_st_i32_8( iv_addr = s0 + 104 iv_val = s1 ). s0 = l4. s1 = p0. s1 = mem_ld_i32( s1 + 92 ). l2 = s1.
          IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0.
            DO. " loop
              s0 = l2. s1 = 8. s0 = s0 - s1. l2 = s0. s0 = mem_ld_i32( s0 ).
              IF s0 <> 0. lv_br = 5. EXIT. ENDIF. " br_if 5
              s0 = p0. s1 = l2. PERFORM f108 USING s0 s1. s0 = p0. s0 = mem_ld_i32( s0 + 92 ). l2 = s0. s1 = l4.
              IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0. EXIT. ENDIF. " br_if 0
            ENDDO.
          ELSE.
          ENDIF.
          s0 = p0. s1 = 0. mem_st_i32_8( iv_addr = s0 + 104 iv_val = s1 ).
        ENDDO.
        s0 = p1. s1 = 0. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ).
      ELSE.
      ENDIF.
      s0 = p1. s1 = 4. mem_st_i32( iv_addr = s0 iv_val = s1 ).
    ELSE.
    ENDIF.
    RETURN.
  ENDDO.
  s0 = 1152044. s1 = 1148333. s2 = 5521. s3 = 1136378. PERFORM f1101 USING s0 s1 s2 s3.
  RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
ENDFORM.

FORM f742 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i CHANGING rv TYPE int8.
  DATA l4 TYPE i. DATA l5 TYPE int8. DATA l6 TYPE int8. DATA l7 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i.
  DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i.
  DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l4 = s0. gv_g0 = s0. s0 = l4. s1 = p2. s1 = zcl_wasm_rt=>extend_u32( s1 ). l7 = s1. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 8 CHANGING cv_mem = mv_mem ).
  DO 1 TIMES. " block
    s0 = p0. s1 = p1. s2 = 1. s3 = l4. s4 = 8. s3 = s3 + s4. PERFORM f504 USING s0 s1 s2 s3 CHANGING s0. l5 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 25769803776.
    IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = l5. p1 = s0. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = p2. s1 = 0.
    IF s0 <= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = l5. p1 = s0. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = 0. p1 = s0.
    DO 1 TIMES. " block
      DO. " loop
        s0 = p3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). l6 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
        IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = l6. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p2 = s0. s1 = p2. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
        ELSE.
        ENDIF.
        s0 = p0. s1 = l5. s2 = p1. s3 = l6. s4 = 16384. PERFORM f175 USING s0 s1 s2 s3 s4 CHANGING s0. s1 = 0.
        IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        s0 = p3. s1 = 8. s0 = s0 + s1. p3 = s0. s0 = l7. s1 = p1. s2 = 1. s1 = s1 + s2. p1 = s1.
        IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
      ENDDO.
      s0 = l5. p1 = s0. lv_br = 1. EXIT. " br 1
    ENDDO.
    s0 = 25769803776. p1 = s0. s0 = l5. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
    IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l5. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p2 = s0. s1 = p2. s1 = mem_ld_i32( s1 ). p2 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p2. s1 = 1.
    IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = l5. PERFORM f453 USING s0 s1.
  ENDDO.
  s0 = l4. s1 = 16. s0 = s0 + s1. gv_g0 = s0. s0 = p1. rv = s0.
ENDFORM.

FORM f743 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i.
  DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16.
  s0 = s0 - s1. l2 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    s0 = p0. s0 = mem_ld_i32( s0 ). l3 = s0. s0 = mem_ld_i32_8u( s0 ).
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p1. s0 = mem_ld_i32( s0 + 20 ). s1 = 1114444. s2 = 4. s3 = p1. s3 = mem_ld_i32( s3 + 24 ). s3 = mem_ld_i32( s3 + 12 ).
      DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
      s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). p0 = s0. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = 1. p0 = s0. s0 = l2. s1 = l3. s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l2. s1 = p1. s1 = mem_ld_i32( s1 + 20 ). s2 = 1114448. s3 = 4. s4 = p1. s4 = mem_ld_i32( s4 + 24 ). s4 = mem_ld_i32( s4 + 12 ).
    DATA(lv_ci_func) = mt_tab0[ s4 + 1 ]. " call_indirect
    s1 = dispatch_t11( iv_idx = lv_ci_func p0 = s1 p1 = s2 p2 = s3 ). mem_st_i32_8( iv_addr = s0 + 12 iv_val = s1 ). s0 = l2. s1 = p1. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = l2. s1 = 0.
    mem_st_i32_8( iv_addr = s0 + 13 iv_val = s1 ). s0 = l2. s1 = 0. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = l2. s1 = 4. s0 = s0 + s1. s1 = l2. s2 = 1061740. PERFORM f691 USING s0 s1 s2 CHANGING s0. s1 = l2.
    s1 = mem_ld_i32_8u( s1 + 12 ). p1 = s1. s0 = mem_ld_i32( s0 ). l3 = s0.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p1. s1 = 0.
      IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      p0 = s0. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = p1.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l2. s0 = mem_ld_i32( s0 + 8 ). p1 = s0.
    DO 1 TIMES. " block
      s0 = l3. s1 = 1.
      IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = l2. s0 = mem_ld_i32_8u( s0 + 13 ).
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p1. s0 = mem_ld_i32_8u( s0 + 28 ). s1 = 4. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p1. s0 = mem_ld_i32( s0 + 20 ). s1 = 1079704. s2 = 1. s3 = p1. s3 = mem_ld_i32( s3 + 24 ). s3 = mem_ld_i32( s3 + 12 ).
      DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
      s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ).
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
    ENDDO.
    s0 = p1. s0 = mem_ld_i32( s0 + 20 ). s1 = 1116251. s2 = 1. s3 = p1. s3 = mem_ld_i32( s3 + 24 ). s3 = mem_ld_i32( s3 + 12 ).
    DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
    s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). p0 = s0.
  ENDDO.
  s0 = l2. s1 = 16. s0 = s0 + s1. gv_g0 = s0. s0 = p0. rv = s0.
ENDFORM.

FORM f744 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i.
  DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16.
  s0 = s0 - s1. l2 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    s0 = p0. s0 = mem_ld_i32( s0 ). l3 = s0. s0 = mem_ld_i32_8u( s0 ).
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p1. s0 = mem_ld_i32( s0 + 20 ). s1 = 1114444. s2 = 4. s3 = p1. s3 = mem_ld_i32( s3 + 24 ). s3 = mem_ld_i32( s3 + 12 ).
      DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
      s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). p0 = s0. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = 1. p0 = s0. s0 = l2. s1 = l3. s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l2. s1 = p1. s1 = mem_ld_i32( s1 + 20 ). s2 = 1114448. s3 = 4. s4 = p1. s4 = mem_ld_i32( s4 + 24 ). s4 = mem_ld_i32( s4 + 12 ).
    DATA(lv_ci_func) = mt_tab0[ s4 + 1 ]. " call_indirect
    s1 = dispatch_t11( iv_idx = lv_ci_func p0 = s1 p1 = s2 p2 = s3 ). mem_st_i32_8( iv_addr = s0 + 12 iv_val = s1 ). s0 = l2. s1 = p1. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = l2. s1 = 0.
    mem_st_i32_8( iv_addr = s0 + 13 iv_val = s1 ). s0 = l2. s1 = 0. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = l2. s1 = 4. s0 = s0 + s1. s1 = l2. s2 = 1078004. PERFORM f691 USING s0 s1 s2 CHANGING s0. s1 = l2.
    s1 = mem_ld_i32_8u( s1 + 12 ). p1 = s1. s0 = mem_ld_i32( s0 ). l3 = s0.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p1. s1 = 0.
      IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      p0 = s0. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = p1.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l2. s0 = mem_ld_i32( s0 + 8 ). p1 = s0.
    DO 1 TIMES. " block
      s0 = l3. s1 = 1.
      IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = l2. s0 = mem_ld_i32_8u( s0 + 13 ).
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p1. s0 = mem_ld_i32_8u( s0 + 28 ). s1 = 4. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p1. s0 = mem_ld_i32( s0 + 20 ). s1 = 1079704. s2 = 1. s3 = p1. s3 = mem_ld_i32( s3 + 24 ). s3 = mem_ld_i32( s3 + 12 ).
      DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
      s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ).
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
    ENDDO.
    s0 = p1. s0 = mem_ld_i32( s0 + 20 ). s1 = 1116251. s2 = 1. s3 = p1. s3 = mem_ld_i32( s3 + 24 ). s3 = mem_ld_i32( s3 + 12 ).
    DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
    s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). p0 = s0.
  ENDDO.
  s0 = l2. s1 = 16. s0 = s0 + s1. gv_g0 = s0. s0 = p0. rv = s0.
ENDFORM.

FORM f745 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i.
  DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16.
  s0 = s0 - s1. l2 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    s0 = p0. s0 = mem_ld_i32( s0 ). l3 = s0. s0 = mem_ld_i32_8u( s0 ).
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p1. s0 = mem_ld_i32( s0 + 20 ). s1 = 1114444. s2 = 4. s3 = p1. s3 = mem_ld_i32( s3 + 24 ). s3 = mem_ld_i32( s3 + 12 ).
      DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
      s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). p0 = s0. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = 1. p0 = s0. s0 = l2. s1 = l3. s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l2. s1 = p1. s1 = mem_ld_i32( s1 + 20 ). s2 = 1114448. s3 = 4. s4 = p1. s4 = mem_ld_i32( s4 + 24 ). s4 = mem_ld_i32( s4 + 12 ).
    DATA(lv_ci_func) = mt_tab0[ s4 + 1 ]. " call_indirect
    s1 = dispatch_t11( iv_idx = lv_ci_func p0 = s1 p1 = s2 p2 = s3 ). mem_st_i32_8( iv_addr = s0 + 12 iv_val = s1 ). s0 = l2. s1 = p1. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = l2. s1 = 0.
    mem_st_i32_8( iv_addr = s0 + 13 iv_val = s1 ). s0 = l2. s1 = 0. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = l2. s1 = 4. s0 = s0 + s1. s1 = l2. s2 = 1114116. PERFORM f691 USING s0 s1 s2 CHANGING s0. s1 = l2.
    s1 = mem_ld_i32_8u( s1 + 12 ). p1 = s1. s0 = mem_ld_i32( s0 ). l3 = s0.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p1. s1 = 0.
      IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      p0 = s0. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = p1.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l2. s0 = mem_ld_i32( s0 + 8 ). p1 = s0.
    DO 1 TIMES. " block
      s0 = l3. s1 = 1.
      IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = l2. s0 = mem_ld_i32_8u( s0 + 13 ).
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p1. s0 = mem_ld_i32_8u( s0 + 28 ). s1 = 4. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p1. s0 = mem_ld_i32( s0 + 20 ). s1 = 1079704. s2 = 1. s3 = p1. s3 = mem_ld_i32( s3 + 24 ). s3 = mem_ld_i32( s3 + 12 ).
      DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
      s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ).
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
    ENDDO.
    s0 = p1. s0 = mem_ld_i32( s0 + 20 ). s1 = 1116251. s2 = 1. s3 = p1. s3 = mem_ld_i32( s3 + 24 ). s3 = mem_ld_i32( s3 + 12 ).
    DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
    s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). p0 = s0.
  ENDDO.
  s0 = l2. s1 = 16. s0 = s0 + s1. gv_g0 = s0. s0 = p0. rv = s0.
ENDFORM.

FORM f746 USING p0 TYPE i p1 TYPE i p2 TYPE i CHANGING rv TYPE int8.
  DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE int8. DATA l6 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i.
  DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i.
  DATA s24 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l3 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      s0 = p2. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). l5 = s0. s1 = -4294967296.
      IF zcl_wasm_rt=>ge_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = l5. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l4 = s0. s0 = mem_ld_i32_16u( s0 + 6 ). s1 = 21. s0 = s0 - s1. s1 = 65535. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = 11.
        IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      ELSE.
      ENDIF.
      s0 = l3. s1 = 1135229. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s1 = 1139205. s2 = l3. PERFORM f970 USING s0 s1 s2 CHANGING s0. s0 = 25769803776. l5 = s0. lv_br = 1. EXIT. " br 1
    ENDDO.
    s0 = p0. s1 = l5. s2 = 12884901888. PERFORM f592 USING s0 s1 s2 CHANGING s0. l6 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). l5 = s0. s1 = 25769803776.
    IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = l6. l5 = s0. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = p2. s1 = 8. s0 = s0 + s1. p2 = s0. s0 = l5. s1 = 12884901888.
    IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p0. s1 = 12884901888. s2 = l3. s3 = p2. s4 = l4. s4 = mem_ld_i32_16u( s4 + 6 ). PERFORM f60 USING s0 s1 s2 s3 s4 CHANGING s0. l5 = s0. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = p0. s1 = l6. s2 = 1. s3 = p1. s4 = p1. s5 = 1.
    IF s4 <= s5. s4 = 1. ELSE. s4 = 0. ENDIF.
    IF s4 <> 0. s2 = s2. ELSE. s2 = s3. ENDIF.
    s3 = 1. s2 = s2 - s3. s3 = p2. PERFORM f504 USING s0 s1 s2 s3 CHANGING s0. l5 = s0. s0 = l6. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
    IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l6. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p1 = s0. s1 = p1. s1 = mem_ld_i32( s1 ). p1 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p1. s1 = 1.
    IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = l6. PERFORM f453 USING s0 s1.
  ENDDO.
  s0 = l3. s1 = 16. s0 = s0 + s1. gv_g0 = s0. s0 = l5. rv = s0.
ENDFORM.

FORM f747 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA l2 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i.
  DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16.
  s0 = s0 - s1. l2 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    s0 = p0. s0 = mem_ld_i32( s0 ). p0 = s0. s0 = mem_ld_i32_8u( s0 ). s1 = 12.
    IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p1. s0 = mem_ld_i32( s0 + 20 ). s1 = 1114444. s2 = 4. s3 = p1. s3 = mem_ld_i32( s3 + 24 ). s3 = mem_ld_i32( s3 + 12 ).
      DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
      s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s1 = l2. s2 = p0. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = l2. s2 = p1. s2 = mem_ld_i32( s2 + 20 ). s3 = 1114448. s4 = 4. s5 = p1. s5 = mem_ld_i32( s5 + 24 ). s5 = mem_ld_i32( s5 + 12 ).
    DATA(lv_ci_func) = mt_tab0[ s5 + 1 ]. " call_indirect
    s2 = dispatch_t11( iv_idx = lv_ci_func p0 = s2 p1 = s3 p2 = s4 ). mem_st_i32_8( iv_addr = s1 + 12 iv_val = s2 ). s1 = l2. s2 = p1. mem_st_i32( iv_addr = s1 + 8 iv_val = s2 ). s1 = l2. s2 = 0.
    mem_st_i32_8( iv_addr = s1 + 13 iv_val = s2 ). s1 = l2. s2 = 0. mem_st_i32( iv_addr = s1 + 4 iv_val = s2 ). s1 = l2. s2 = 4. s1 = s1 + s2. s2 = l2. s3 = 1061884. PERFORM f691 USING s1 s2 s3 CHANGING s1. p1 = s1. s1 = l2.
    s1 = mem_ld_i32_8u( s1 + 12 ). p0 = s1. s1 = p0. s2 = 0.
    IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
    s2 = p1. s2 = mem_ld_i32( s2 ). p1 = s2.
    IF s2 = 0. s2 = 1. ELSE. s2 = 0. ENDIF.
    IF s2 <> 0. EXIT. ENDIF. " br_if 0
    s1 = 1. s2 = p0.
    IF s2 <> 0. EXIT. ENDIF. " br_if 0
    s1 = l2. s1 = mem_ld_i32( s1 + 8 ). p0 = s1.
    DO 1 TIMES. " block
      s1 = p1. s2 = 1.
      IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. EXIT. ENDIF. " br_if 0
      s1 = l2. s1 = mem_ld_i32_8u( s1 + 13 ).
      IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. EXIT. ENDIF. " br_if 0
      s1 = p0. s1 = mem_ld_i32_8u( s1 + 28 ). s2 = 4. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ).
      IF s1 <> 0. EXIT. ENDIF. " br_if 0
      s1 = 1. s2 = p0. s2 = mem_ld_i32( s2 + 20 ). s3 = 1079704. s4 = 1. s5 = p0. s5 = mem_ld_i32( s5 + 24 ). s5 = mem_ld_i32( s5 + 12 ).
      DATA(lv_ci_func) = mt_tab0[ s5 + 1 ]. " call_indirect
      s2 = dispatch_t11( iv_idx = lv_ci_func p0 = s2 p1 = s3 p2 = s4 ).
      IF s2 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
    ENDDO.
    s1 = p0. s1 = mem_ld_i32( s1 + 20 ). s2 = 1116251. s3 = 1. s4 = p0. s4 = mem_ld_i32( s4 + 24 ). s4 = mem_ld_i32( s4 + 12 ).
    DATA(lv_ci_func) = mt_tab0[ s4 + 1 ]. " call_indirect
    s1 = dispatch_t11( iv_idx = lv_ci_func p0 = s1 p1 = s2 p2 = s3 ).
  ENDDO.
  s2 = l2. s3 = 16. s2 = s2 + s3. gv_g0 = s2. rv = s1.
ENDFORM.

FORM f748 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA l2 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i.
  DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16.
  s0 = s0 - s1. l2 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    s0 = p0. s0 = mem_ld_i32( s0 ). p0 = s0. s0 = mem_ld_i32( s0 ). s1 = -2147483648.
    IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p1. s0 = mem_ld_i32( s0 + 20 ). s1 = 1114444. s2 = 4. s3 = p1. s3 = mem_ld_i32( s3 + 24 ). s3 = mem_ld_i32( s3 + 12 ).
      DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
      s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s1 = l2. s2 = p0. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = l2. s2 = p1. s2 = mem_ld_i32( s2 + 20 ). s3 = 1114448. s4 = 4. s5 = p1. s5 = mem_ld_i32( s5 + 24 ). s5 = mem_ld_i32( s5 + 12 ).
    DATA(lv_ci_func) = mt_tab0[ s5 + 1 ]. " call_indirect
    s2 = dispatch_t11( iv_idx = lv_ci_func p0 = s2 p1 = s3 p2 = s4 ). mem_st_i32_8( iv_addr = s1 + 12 iv_val = s2 ). s1 = l2. s2 = p1. mem_st_i32( iv_addr = s1 + 8 iv_val = s2 ). s1 = l2. s2 = 0.
    mem_st_i32_8( iv_addr = s1 + 13 iv_val = s2 ). s1 = l2. s2 = 0. mem_st_i32( iv_addr = s1 + 4 iv_val = s2 ). s1 = l2. s2 = 4. s1 = s1 + s2. s2 = l2. s3 = 1061852. PERFORM f691 USING s1 s2 s3 CHANGING s1. p1 = s1. s1 = l2.
    s1 = mem_ld_i32_8u( s1 + 12 ). p0 = s1. s1 = p0. s2 = 0.
    IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
    s2 = p1. s2 = mem_ld_i32( s2 ). p1 = s2.
    IF s2 = 0. s2 = 1. ELSE. s2 = 0. ENDIF.
    IF s2 <> 0. EXIT. ENDIF. " br_if 0
    s1 = 1. s2 = p0.
    IF s2 <> 0. EXIT. ENDIF. " br_if 0
    s1 = l2. s1 = mem_ld_i32( s1 + 8 ). p0 = s1.
    DO 1 TIMES. " block
      s1 = p1. s2 = 1.
      IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. EXIT. ENDIF. " br_if 0
      s1 = l2. s1 = mem_ld_i32_8u( s1 + 13 ).
      IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. EXIT. ENDIF. " br_if 0
      s1 = p0. s1 = mem_ld_i32_8u( s1 + 28 ). s2 = 4. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ).
      IF s1 <> 0. EXIT. ENDIF. " br_if 0
      s1 = 1. s2 = p0. s2 = mem_ld_i32( s2 + 20 ). s3 = 1079704. s4 = 1. s5 = p0. s5 = mem_ld_i32( s5 + 24 ). s5 = mem_ld_i32( s5 + 12 ).
      DATA(lv_ci_func) = mt_tab0[ s5 + 1 ]. " call_indirect
      s2 = dispatch_t11( iv_idx = lv_ci_func p0 = s2 p1 = s3 p2 = s4 ).
      IF s2 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
    ENDDO.
    s1 = p0. s1 = mem_ld_i32( s1 + 20 ). s2 = 1116251. s3 = 1. s4 = p0. s4 = mem_ld_i32( s4 + 24 ). s4 = mem_ld_i32( s4 + 12 ).
    DATA(lv_ci_func) = mt_tab0[ s4 + 1 ]. " call_indirect
    s1 = dispatch_t11( iv_idx = lv_ci_func p0 = s1 p1 = s2 p2 = s3 ).
  ENDDO.
  s2 = l2. s3 = 16. s2 = s2 + s3. gv_g0 = s2. rv = s1.
ENDFORM.

FORM f749 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA l2 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i.
  DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16.
  s0 = s0 - s1. l2 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    s0 = p0. s0 = mem_ld_i32( s0 ). p0 = s0. s0 = mem_ld_i32( s0 ). s1 = -2147483648.
    IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p1. s0 = mem_ld_i32( s0 + 20 ). s1 = 1114444. s2 = 4. s3 = p1. s3 = mem_ld_i32( s3 + 24 ). s3 = mem_ld_i32( s3 + 12 ).
      DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
      s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s1 = l2. s2 = p0. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = l2. s2 = p1. s2 = mem_ld_i32( s2 + 20 ). s3 = 1114448. s4 = 4. s5 = p1. s5 = mem_ld_i32( s5 + 24 ). s5 = mem_ld_i32( s5 + 12 ).
    DATA(lv_ci_func) = mt_tab0[ s5 + 1 ]. " call_indirect
    s2 = dispatch_t11( iv_idx = lv_ci_func p0 = s2 p1 = s3 p2 = s4 ). mem_st_i32_8( iv_addr = s1 + 12 iv_val = s2 ). s1 = l2. s2 = p1. mem_st_i32( iv_addr = s1 + 8 iv_val = s2 ). s1 = l2. s2 = 0.
    mem_st_i32_8( iv_addr = s1 + 13 iv_val = s2 ). s1 = l2. s2 = 0. mem_st_i32( iv_addr = s1 + 4 iv_val = s2 ). s1 = l2. s2 = 4. s1 = s1 + s2. s2 = l2. s3 = 1078020. PERFORM f691 USING s1 s2 s3 CHANGING s1. p1 = s1. s1 = l2.
    s1 = mem_ld_i32_8u( s1 + 12 ). p0 = s1. s1 = p0. s2 = 0.
    IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
    s2 = p1. s2 = mem_ld_i32( s2 ). p1 = s2.
    IF s2 = 0. s2 = 1. ELSE. s2 = 0. ENDIF.
    IF s2 <> 0. EXIT. ENDIF. " br_if 0
    s1 = 1. s2 = p0.
    IF s2 <> 0. EXIT. ENDIF. " br_if 0
    s1 = l2. s1 = mem_ld_i32( s1 + 8 ). p0 = s1.
    DO 1 TIMES. " block
      s1 = p1. s2 = 1.
      IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. EXIT. ENDIF. " br_if 0
      s1 = l2. s1 = mem_ld_i32_8u( s1 + 13 ).
      IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. EXIT. ENDIF. " br_if 0
      s1 = p0. s1 = mem_ld_i32_8u( s1 + 28 ). s2 = 4. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ).
      IF s1 <> 0. EXIT. ENDIF. " br_if 0
      s1 = 1. s2 = p0. s2 = mem_ld_i32( s2 + 20 ). s3 = 1079704. s4 = 1. s5 = p0. s5 = mem_ld_i32( s5 + 24 ). s5 = mem_ld_i32( s5 + 12 ).
      DATA(lv_ci_func) = mt_tab0[ s5 + 1 ]. " call_indirect
      s2 = dispatch_t11( iv_idx = lv_ci_func p0 = s2 p1 = s3 p2 = s4 ).
      IF s2 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
    ENDDO.
    s1 = p0. s1 = mem_ld_i32( s1 + 20 ). s2 = 1116251. s3 = 1. s4 = p0. s4 = mem_ld_i32( s4 + 24 ). s4 = mem_ld_i32( s4 + 12 ).
    DATA(lv_ci_func) = mt_tab0[ s4 + 1 ]. " call_indirect
    s1 = dispatch_t11( iv_idx = lv_ci_func p0 = s1 p1 = s2 p2 = s3 ).
  ENDDO.
  s2 = l2. s3 = 16. s2 = s2 + s3. gv_g0 = s2. rv = s1.
ENDFORM.

FORM f750 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA l2 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i.
  DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16.
  s0 = s0 - s1. l2 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    s0 = p0. s0 = mem_ld_i32( s0 ). p0 = s0. s0 = mem_ld_i32_8u( s0 ). s1 = 12.
    IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p1. s0 = mem_ld_i32( s0 + 20 ). s1 = 1114444. s2 = 4. s3 = p1. s3 = mem_ld_i32( s3 + 24 ). s3 = mem_ld_i32( s3 + 12 ).
      DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
      s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s1 = l2. s2 = p0. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = l2. s2 = p1. s2 = mem_ld_i32( s2 + 20 ). s3 = 1114448. s4 = 4. s5 = p1. s5 = mem_ld_i32( s5 + 24 ). s5 = mem_ld_i32( s5 + 12 ).
    DATA(lv_ci_func) = mt_tab0[ s5 + 1 ]. " call_indirect
    s2 = dispatch_t11( iv_idx = lv_ci_func p0 = s2 p1 = s3 p2 = s4 ). mem_st_i32_8( iv_addr = s1 + 12 iv_val = s2 ). s1 = l2. s2 = p1. mem_st_i32( iv_addr = s1 + 8 iv_val = s2 ). s1 = l2. s2 = 0.
    mem_st_i32_8( iv_addr = s1 + 13 iv_val = s2 ). s1 = l2. s2 = 0. mem_st_i32( iv_addr = s1 + 4 iv_val = s2 ). s1 = l2. s2 = 4. s1 = s1 + s2. s2 = l2. s3 = 1113200. PERFORM f691 USING s1 s2 s3 CHANGING s1. p1 = s1. s1 = l2.
    s1 = mem_ld_i32_8u( s1 + 12 ). p0 = s1. s1 = p0. s2 = 0.
    IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
    s2 = p1. s2 = mem_ld_i32( s2 ). p1 = s2.
    IF s2 = 0. s2 = 1. ELSE. s2 = 0. ENDIF.
    IF s2 <> 0. EXIT. ENDIF. " br_if 0
    s1 = 1. s2 = p0.
    IF s2 <> 0. EXIT. ENDIF. " br_if 0
    s1 = l2. s1 = mem_ld_i32( s1 + 8 ). p0 = s1.
    DO 1 TIMES. " block
      s1 = p1. s2 = 1.
      IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. EXIT. ENDIF. " br_if 0
      s1 = l2. s1 = mem_ld_i32_8u( s1 + 13 ).
      IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. EXIT. ENDIF. " br_if 0
      s1 = p0. s1 = mem_ld_i32_8u( s1 + 28 ). s2 = 4. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ).
      IF s1 <> 0. EXIT. ENDIF. " br_if 0
      s1 = 1. s2 = p0. s2 = mem_ld_i32( s2 + 20 ). s3 = 1079704. s4 = 1. s5 = p0. s5 = mem_ld_i32( s5 + 24 ). s5 = mem_ld_i32( s5 + 12 ).
      DATA(lv_ci_func) = mt_tab0[ s5 + 1 ]. " call_indirect
      s2 = dispatch_t11( iv_idx = lv_ci_func p0 = s2 p1 = s3 p2 = s4 ).
      IF s2 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
    ENDDO.
    s1 = p0. s1 = mem_ld_i32( s1 + 20 ). s2 = 1116251. s3 = 1. s4 = p0. s4 = mem_ld_i32( s4 + 24 ). s4 = mem_ld_i32( s4 + 12 ).
    DATA(lv_ci_func) = mt_tab0[ s4 + 1 ]. " call_indirect
    s1 = dispatch_t11( iv_idx = lv_ci_func p0 = s1 p1 = s2 p2 = s3 ).
  ENDDO.
  s2 = l2. s3 = 16. s2 = s2 + s3. gv_g0 = s2. rv = s1.
ENDFORM.

FORM f751 USING p0 TYPE i p1 TYPE int8 CHANGING rv TYPE i.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i.
  DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i.
  DATA lv_br TYPE i.
  DO 1 TIMES. " block
    s0 = p0. s0 = mem_ld_i32( s0 + 20 ).
    IF s0 <> 0.
      s0 = -1. l3 = s0. s0 = p1. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
      IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p0. s0 = mem_ld_i32( s0 ). s1 = p1. s1 = zcl_wasm_rt=>wrap_i64( s1 ). l2 = s1. s2 = l2. s2 = mem_ld_i32( s2 ). l2 = s2. s3 = 1. s2 = s2 - s3. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = l2. s2 = 1.
      IF s1 > s2. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = mem_ld_i32( s0 + 16 ). s1 = p1. PERFORM f453 USING s0 s1. s0 = -1. rv = s0. RETURN.
    ELSE.
    ENDIF.
    DO 1 TIMES. " block
      s0 = p1. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = -30064771072.
      IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p0. s0 = mem_ld_i32( s0 ). s1 = p1. PERFORM f1136 USING s0 s1 CHANGING s0. p1 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 25769803776.
      IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p0. s0 = mem_ld_i32( s0 ). s0 = mem_ld_i32( s0 + 16 ). l3 = s0. s1 = 16. s0 = s0 + s1. s1 = p0. s1 = mem_ld_i32( s1 + 4 ). s2 = l3. s2 = mem_ld_i32( s2 + 4 ).
      DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
      dispatch_t6( iv_idx = lv_ci_func p0 = s0 p1 = s1 ). s0 = p0. s1 = 0. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = p0. s1 = 0. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 4 CHANGING cv_mem = mv_mem ). s0 = p0.
      s1 = -1. mem_st_i32( iv_addr = s0 + 20 iv_val = s1 ). s0 = -1. rv = s0. RETURN.
    ENDDO.
    s0 = p0. s1 = p1. s1 = zcl_wasm_rt=>wrap_i64( s1 ). l2 = s1. s2 = 0. s3 = l2. s3 = mem_ld_i32( s3 + 4 ). s4 = 2147483647. s3 = zcl_wasm_rt=>and32( iv_a = s3 iv_b = s4 ). PERFORM f271 USING s0 s1 s2 s3 CHANGING s0. l3 = s0. s0 = p1.
    s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
    IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s0 = mem_ld_i32( s0 ). s1 = l2. s2 = l2. s2 = mem_ld_i32( s2 ). l2 = s2. s3 = 1. s2 = s2 - s3. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = l2. s2 = 1.
    IF s1 > s2. s1 = 1. ELSE. s1 = 0. ENDIF.
    IF s1 <> 0. EXIT. ENDIF. " br_if 0
    s0 = mem_ld_i32( s0 + 16 ). s1 = p1. PERFORM f453 USING s0 s1.
  ENDDO.
  s0 = l3. rv = s0.
ENDFORM.

FORM f752 USING p0 TYPE i p1 TYPE i.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE i. DATA l8 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i.
  DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA lv_br TYPE i. s0 = p1. s0 = mem_ld_i32( s0 + 8 ). l2 = s0. s1 = p1. s1 = mem_ld_i32( s1 + 4 ). l4 = s1. s2 = l2. s3 = l4.
  IF zcl_wasm_rt=>gt_u32( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
  IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
  l8 = s0. s0 = p1. s0 = mem_ld_i32( s0 ). l5 = s0. s0 = l2. l6 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO. " loop
        s0 = l8. s1 = l6. l3 = s1.
        IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        s0 = p1. s1 = l3. s2 = 1. s1 = s1 + s2. l6 = s1. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = l3. s1 = l5. s0 = s0 + s1. s0 = mem_ld_i32_8u( s0 ). l7 = s0. s1 = 48. s0 = s0 - s1. s1 = 255.
        s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = 10.
        IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = l7. s1 = 97. s0 = s0 - s1. s1 = 255. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = 6.
        IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
      ENDDO.
      s0 = l7. s1 = 95.
      IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      DO 1 TIMES. " block
        s0 = l2.
        IF s0 <> 0.
          s0 = l2. s1 = l4.
          IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0.
            s0 = l3. s1 = l4.
            IF zcl_wasm_rt=>le_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
            lv_br = 4. EXIT. " br 4
          ELSE.
          ENDIF.
          s0 = l2. s1 = l5. s0 = s0 + s1. s0 = mem_ld_i32_8s( s0 ). s1 = -64.
          IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
          s0 = l3. s1 = l4.
          IF zcl_wasm_rt=>gt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
          lv_br = 1. EXIT. " br 1
        ELSE.
        ENDIF.
        s0 = l3. s1 = l4.
        IF zcl_wasm_rt=>gt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
      ENDDO.
      s0 = p0. s1 = l3. s2 = l2. s1 = s1 - s2. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = p0. s1 = l2. s2 = l5. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
      RETURN.
    ENDDO.
    s0 = p0. s1 = 0. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s1 = 0. mem_st_i32_8( iv_addr = s0 + 4 iv_val = s1 ).
    RETURN.
  ENDDO.
  s0 = l5. s1 = l4. s2 = l2. s3 = l3. s4 = 1080316. PERFORM f195 USING s0 s1 s2 s3 s4.
  RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
ENDFORM.

FORM f753 USING p0 TYPE f CHANGING rv TYPE f.
  DATA l1 TYPE i. DATA l2 TYPE i. DATA l3 TYPE int8. DATA l4 TYPE f. DATA l5 TYPE f. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i.
  DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i.
  DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA lv_br TYPE i. s0 = p0.
  s0 = zcl_wasm_rt=>reinterpret_f64_i64( s0 ). l3 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = 2147483647. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). l1 = s0.
  s1 = 2146435072.
  IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = p0. s1 = p0. s0 = s0 + s1. rv = s0. RETURN.
  ELSE.
  ENDIF.
  s0 = 715094163. l2 = s0.
  DO 1 TIMES. " block
    s0 = l1. s1 = 1048575.
    IF zcl_wasm_rt=>le_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = 696219795. l2 = s0. s0 = p0. s1 = '18014398509481984.000000'. s0 = s0 * s1. s0 = zcl_wasm_rt=>reinterpret_f64_i64( s0 ). l3 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ).
      s1 = 2147483647. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). l1 = s0.
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
    ELSE.
    ENDIF.
    s0 = l3. s1 = -9223372036854775808. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = l1. s2 = 3. s1 = zcl_wasm_rt=>div_u32( iv_a = s1 iv_b = s2 ). s2 = l2. s1 = s1 + s2. s1 = zcl_wasm_rt=>extend_u32( s1 ). s2 = 32.
    s1 = zcl_wasm_rt=>shl64( iv_val = s1 iv_shift = s2 ). s0 = zcl_wasm_rt=>or64( iv_a = s0 iv_b = s1 ). s0 = zcl_wasm_rt=>reinterpret_i64_f64( s0 ). l5 = s0. s1 = l5. s0 = s0 * s1. s1 = l5. s2 = p0. s1 = s1 / s2. s0 = s0 * s1. l4 = s0.
    s1 = l4. s2 = l4. s1 = s1 * s2. s0 = s0 * s1. s1 = l4. s2 = '0.145996'. s1 = s1 * s2. s2 = '-0.758398'. s1 = s1 + s2. s0 = s0 * s1. s1 = l4. s2 = l4. s3 = '1.621430'. s2 = s2 * s3. s3 = '-1.884980'. s2 = s2 + s3. s1 = s1 * s2.
    s2 = '1.875952'. s1 = s1 + s2. s0 = s0 + s1. s1 = l5. s0 = s0 * s1. s0 = zcl_wasm_rt=>reinterpret_f64_i64( s0 ). s1 = -1073741824. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 2147483648. s0 = s0 + s1.
    s0 = zcl_wasm_rt=>reinterpret_i64_f64( s0 ). l4 = s0. s1 = p0. s2 = l4. s3 = l4. s2 = s2 * s3. s1 = s1 / s2. p0 = s1. s2 = l4. s1 = s1 - s2. s2 = l4. s3 = l4. s2 = s2 + s3. s3 = p0. s2 = s2 + s3. s1 = s1 / s2. s0 = s0 * s1. s1 = l4.
    s0 = s0 + s1. p0 = s0.
  ENDDO.
  s0 = p0. rv = s0.
ENDFORM.

FORM f754 USING p0 TYPE i p1 TYPE i p2 TYPE int8 CHANGING rv TYPE i.
  DATA l3 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i.
  DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          DO 1 TIMES. " block
            DO 1 TIMES. " block
              DO 1 TIMES. " block
                s0 = 7. s1 = p2. s2 = 32. s1 = zcl_wasm_rt=>shr_u64( iv_val = s1 iv_shift = s2 ). s1 = zcl_wasm_rt=>wrap_i64( s1 ). l3 = s1. s2 = l3. s3 = 7. s2 = s2 - s3. s3 = -18.
                IF zcl_wasm_rt=>lt_u32( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
                IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
                s1 = 10. s0 = s0 + s1.
                CASE s0.
                  WHEN 0. lv_br = 3. EXIT.
                  WHEN 1. lv_br = 3. EXIT.
                  WHEN 2. lv_br = 4. EXIT.
                  WHEN 3. lv_br = 4. EXIT.
                  WHEN 4. lv_br = 4. EXIT.
                  WHEN 5. lv_br = 4. EXIT.
                  WHEN 6. lv_br = 4. EXIT.
                  WHEN 7. lv_br = 4. EXIT.
                  WHEN 8. lv_br = 4. EXIT.
                  WHEN 9. lv_br = 4. EXIT.
                  WHEN 10. EXIT.
                  WHEN 11. EXIT.
                  WHEN 12. EXIT.
                  WHEN 13. lv_br = 4. EXIT.
                  WHEN 14. lv_br = 4. EXIT.
                  WHEN 15. lv_br = 4. EXIT.
                  WHEN 16. lv_br = 4. EXIT.
                  WHEN 17. lv_br = 1. EXIT.
                  WHEN OTHERS. lv_br = 4. EXIT.
                ENDCASE.
              ENDDO.
              s0 = p0. s0 = mem_ld_i32( s0 + 216 ). p0 = s0. s0 = p1. s1 = 0. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 12 CHANGING cv_mem = mv_mem ). s0 = p1. s1 = -9223372036854775808.
              zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 4 CHANGING cv_mem = mv_mem ). s0 = p1. s1 = p0. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p1. s1 = p2. s1 = zcl_wasm_rt=>extend32s_i64( s1 ).
              PERFORM f1223 USING s0 s1 CHANGING s0.
              IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
              lv_br = 4. EXIT. " br 4
            ENDDO.
            s0 = p0. s0 = mem_ld_i32( s0 + 216 ). p0 = s0. s0 = p1. s1 = 0. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 12 CHANGING cv_mem = mv_mem ). s0 = p1. s1 = -9223372036854775808.
            zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 4 CHANGING cv_mem = mv_mem ). s0 = p1. s1 = p0. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p1. s1 = p2. s2 = 9221120288580698112. s1 = s1 + s2.
            s1 = zcl_wasm_rt=>reinterpret_i64_f64( s1 ). PERFORM f468 USING s0 s1 CHANGING s0.
            IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
          ENDDO.
          s0 = 0. p0 = s0. s0 = p1. s0 = mem_ld_i32( s0 ). l3 = s0.
          IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
          s0 = p1. s0 = mem_ld_i32( s0 + 16 ). p1 = s0.
          IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
          s0 = l3. s0 = mem_ld_i32( s0 ). s1 = p1. s2 = 0. s3 = l3. s4 = 4. s3 = s3 + s4. s3 = mem_ld_i32( s3 ).
          DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
          s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). s0 = 0. rv = s0. RETURN.
        ENDDO.
        s0 = p2. s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = 4. s0 = s0 + s1. rv = s0. RETURN.
      ENDDO.
      s0 = p0. s0 = mem_ld_i32( s0 + 216 ). p0 = s0. s0 = p1. s1 = 0. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 12 CHANGING cv_mem = mv_mem ). s0 = p1. s1 = -9223372036854775808.
      zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 4 CHANGING cv_mem = mv_mem ). s0 = p1. s1 = p0. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p1. PERFORM f1163 USING s0.
    ENDDO.
    s0 = p1. p0 = s0.
  ENDDO.
  s0 = p0. rv = s0.
ENDFORM.

FORM f755 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA l2 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i.
  DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16.
  s0 = s0 - s1. l2 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    s0 = p0. s0 = mem_ld_i32( s0 ). s1 = 1114112.
    IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p1. s0 = mem_ld_i32( s0 + 20 ). s1 = 1114444. s2 = 4. s3 = p1. s3 = mem_ld_i32( s3 + 24 ). s3 = mem_ld_i32( s3 + 12 ).
      DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
      s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s1 = l2. s2 = p0. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = l2. s2 = p1. s2 = mem_ld_i32( s2 + 20 ). s3 = 1114448. s4 = 4. s5 = p1. s5 = mem_ld_i32( s5 + 24 ). s5 = mem_ld_i32( s5 + 12 ).
    DATA(lv_ci_func) = mt_tab0[ s5 + 1 ]. " call_indirect
    s2 = dispatch_t11( iv_idx = lv_ci_func p0 = s2 p1 = s3 p2 = s4 ). mem_st_i32_8( iv_addr = s1 + 12 iv_val = s2 ). s1 = l2. s2 = p1. mem_st_i32( iv_addr = s1 + 8 iv_val = s2 ). s1 = l2. s2 = 0.
    mem_st_i32_8( iv_addr = s1 + 13 iv_val = s2 ). s1 = l2. s2 = 0. mem_st_i32( iv_addr = s1 + 4 iv_val = s2 ). s1 = l2. s2 = 4. s1 = s1 + s2. s2 = l2. s3 = 1059460. PERFORM f691 USING s1 s2 s3 CHANGING s1. p1 = s1. s1 = l2.
    s1 = mem_ld_i32_8u( s1 + 12 ). p0 = s1. s1 = p0. s2 = 0.
    IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
    s2 = p1. s2 = mem_ld_i32( s2 ). p1 = s2.
    IF s2 = 0. s2 = 1. ELSE. s2 = 0. ENDIF.
    IF s2 <> 0. EXIT. ENDIF. " br_if 0
    s1 = 1. s2 = p0.
    IF s2 <> 0. EXIT. ENDIF. " br_if 0
    s1 = l2. s1 = mem_ld_i32( s1 + 8 ). p0 = s1.
    DO 1 TIMES. " block
      s1 = p1. s2 = 1.
      IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. EXIT. ENDIF. " br_if 0
      s1 = l2. s1 = mem_ld_i32_8u( s1 + 13 ).
      IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. EXIT. ENDIF. " br_if 0
      s1 = p0. s1 = mem_ld_i32_8u( s1 + 28 ). s2 = 4. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ).
      IF s1 <> 0. EXIT. ENDIF. " br_if 0
      s1 = 1. s2 = p0. s2 = mem_ld_i32( s2 + 20 ). s3 = 1079704. s4 = 1. s5 = p0. s5 = mem_ld_i32( s5 + 24 ). s5 = mem_ld_i32( s5 + 12 ).
      DATA(lv_ci_func) = mt_tab0[ s5 + 1 ]. " call_indirect
      s2 = dispatch_t11( iv_idx = lv_ci_func p0 = s2 p1 = s3 p2 = s4 ).
      IF s2 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
    ENDDO.
    s1 = p0. s1 = mem_ld_i32( s1 + 20 ). s2 = 1116251. s3 = 1. s4 = p0. s4 = mem_ld_i32( s4 + 24 ). s4 = mem_ld_i32( s4 + 12 ).
    DATA(lv_ci_func) = mt_tab0[ s4 + 1 ]. " call_indirect
    s1 = dispatch_t11( iv_idx = lv_ci_func p0 = s1 p1 = s2 p2 = s3 ).
  ENDDO.
  s2 = l2. s3 = 16. s2 = s2 + s3. gv_g0 = s2. rv = s1.
ENDFORM.

FORM f756 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA l2 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i.
  DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16.
  s0 = s0 - s1. l2 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    s0 = p0. s0 = mem_ld_i32_8u( s0 ). s1 = 12.
    IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p1. s0 = mem_ld_i32( s0 + 20 ). s1 = 1114444. s2 = 4. s3 = p1. s3 = mem_ld_i32( s3 + 24 ). s3 = mem_ld_i32( s3 + 12 ).
      DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
      s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s1 = l2. s2 = p0. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = l2. s2 = p1. s2 = mem_ld_i32( s2 + 20 ). s3 = 1114448. s4 = 4. s5 = p1. s5 = mem_ld_i32( s5 + 24 ). s5 = mem_ld_i32( s5 + 12 ).
    DATA(lv_ci_func) = mt_tab0[ s5 + 1 ]. " call_indirect
    s2 = dispatch_t11( iv_idx = lv_ci_func p0 = s2 p1 = s3 p2 = s4 ). mem_st_i32_8( iv_addr = s1 + 12 iv_val = s2 ). s1 = l2. s2 = p1. mem_st_i32( iv_addr = s1 + 8 iv_val = s2 ). s1 = l2. s2 = 0.
    mem_st_i32_8( iv_addr = s1 + 13 iv_val = s2 ). s1 = l2. s2 = 0. mem_st_i32( iv_addr = s1 + 4 iv_val = s2 ). s1 = l2. s2 = 4. s1 = s1 + s2. s2 = l2. s3 = 1061884. PERFORM f691 USING s1 s2 s3 CHANGING s1. p1 = s1. s1 = l2.
    s1 = mem_ld_i32_8u( s1 + 12 ). p0 = s1. s1 = p0. s2 = 0.
    IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
    s2 = p1. s2 = mem_ld_i32( s2 ). p1 = s2.
    IF s2 = 0. s2 = 1. ELSE. s2 = 0. ENDIF.
    IF s2 <> 0. EXIT. ENDIF. " br_if 0
    s1 = 1. s2 = p0.
    IF s2 <> 0. EXIT. ENDIF. " br_if 0
    s1 = l2. s1 = mem_ld_i32( s1 + 8 ). p0 = s1.
    DO 1 TIMES. " block
      s1 = p1. s2 = 1.
      IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. EXIT. ENDIF. " br_if 0
      s1 = l2. s1 = mem_ld_i32_8u( s1 + 13 ).
      IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. EXIT. ENDIF. " br_if 0
      s1 = p0. s1 = mem_ld_i32_8u( s1 + 28 ). s2 = 4. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ).
      IF s1 <> 0. EXIT. ENDIF. " br_if 0
      s1 = 1. s2 = p0. s2 = mem_ld_i32( s2 + 20 ). s3 = 1079704. s4 = 1. s5 = p0. s5 = mem_ld_i32( s5 + 24 ). s5 = mem_ld_i32( s5 + 12 ).
      DATA(lv_ci_func) = mt_tab0[ s5 + 1 ]. " call_indirect
      s2 = dispatch_t11( iv_idx = lv_ci_func p0 = s2 p1 = s3 p2 = s4 ).
      IF s2 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
    ENDDO.
    s1 = p0. s1 = mem_ld_i32( s1 + 20 ). s2 = 1116251. s3 = 1. s4 = p0. s4 = mem_ld_i32( s4 + 24 ). s4 = mem_ld_i32( s4 + 12 ).
    DATA(lv_ci_func) = mt_tab0[ s4 + 1 ]. " call_indirect
    s1 = dispatch_t11( iv_idx = lv_ci_func p0 = s1 p1 = s2 p2 = s3 ).
  ENDDO.
  s2 = l2. s3 = 16. s2 = s2 + s3. gv_g0 = s2. rv = s1.
ENDFORM.

FORM f757 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA l2 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i.
  DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16.
  s0 = s0 - s1. l2 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    s0 = p0. s0 = mem_ld_i32_8u( s0 ). s1 = 12.
    IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p1. s0 = mem_ld_i32( s0 + 20 ). s1 = 1114444. s2 = 4. s3 = p1. s3 = mem_ld_i32( s3 + 24 ). s3 = mem_ld_i32( s3 + 12 ).
      DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
      s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s1 = l2. s2 = p0. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = l2. s2 = p1. s2 = mem_ld_i32( s2 + 20 ). s3 = 1114448. s4 = 4. s5 = p1. s5 = mem_ld_i32( s5 + 24 ). s5 = mem_ld_i32( s5 + 12 ).
    DATA(lv_ci_func) = mt_tab0[ s5 + 1 ]. " call_indirect
    s2 = dispatch_t11( iv_idx = lv_ci_func p0 = s2 p1 = s3 p2 = s4 ). mem_st_i32_8( iv_addr = s1 + 12 iv_val = s2 ). s1 = l2. s2 = p1. mem_st_i32( iv_addr = s1 + 8 iv_val = s2 ). s1 = l2. s2 = 0.
    mem_st_i32_8( iv_addr = s1 + 13 iv_val = s2 ). s1 = l2. s2 = 0. mem_st_i32( iv_addr = s1 + 4 iv_val = s2 ). s1 = l2. s2 = 4. s1 = s1 + s2. s2 = l2. s3 = 1113200. PERFORM f691 USING s1 s2 s3 CHANGING s1. p1 = s1. s1 = l2.
    s1 = mem_ld_i32_8u( s1 + 12 ). p0 = s1. s1 = p0. s2 = 0.
    IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
    s2 = p1. s2 = mem_ld_i32( s2 ). p1 = s2.
    IF s2 = 0. s2 = 1. ELSE. s2 = 0. ENDIF.
    IF s2 <> 0. EXIT. ENDIF. " br_if 0
    s1 = 1. s2 = p0.
    IF s2 <> 0. EXIT. ENDIF. " br_if 0
    s1 = l2. s1 = mem_ld_i32( s1 + 8 ). p0 = s1.
    DO 1 TIMES. " block
      s1 = p1. s2 = 1.
      IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. EXIT. ENDIF. " br_if 0
      s1 = l2. s1 = mem_ld_i32_8u( s1 + 13 ).
      IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. EXIT. ENDIF. " br_if 0
      s1 = p0. s1 = mem_ld_i32_8u( s1 + 28 ). s2 = 4. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ).
      IF s1 <> 0. EXIT. ENDIF. " br_if 0
      s1 = 1. s2 = p0. s2 = mem_ld_i32( s2 + 20 ). s3 = 1079704. s4 = 1. s5 = p0. s5 = mem_ld_i32( s5 + 24 ). s5 = mem_ld_i32( s5 + 12 ).
      DATA(lv_ci_func) = mt_tab0[ s5 + 1 ]. " call_indirect
      s2 = dispatch_t11( iv_idx = lv_ci_func p0 = s2 p1 = s3 p2 = s4 ).
      IF s2 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
    ENDDO.
    s1 = p0. s1 = mem_ld_i32( s1 + 20 ). s2 = 1116251. s3 = 1. s4 = p0. s4 = mem_ld_i32( s4 + 24 ). s4 = mem_ld_i32( s4 + 12 ).
    DATA(lv_ci_func) = mt_tab0[ s4 + 1 ]. " call_indirect
    s1 = dispatch_t11( iv_idx = lv_ci_func p0 = s1 p1 = s2 p2 = s3 ).
  ENDDO.
  s2 = l2. s3 = 16. s2 = s2 + s3. gv_g0 = s2. rv = s1.
ENDFORM.

FORM f758 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i p4 TYPE i CHANGING rv TYPE int8.
  DATA l5 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i.
  DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 80. s0 = s0 - s1. p2 = s0. gv_g0 = s0. s0 = p4. s1 = 38. s0 = s0 + s1. p4 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        s0 = p1. s1 = -4294967296.
        IF zcl_wasm_rt=>lt_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = p4. s1 = p1. s1 = zcl_wasm_rt=>wrap_i64( s1 ). l5 = s1. s1 = mem_ld_i32_16u( s1 + 6 ).
        IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = l5. s0 = mem_ld_i32( s0 + 32 ). l5 = s0.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      ENDDO.
      s0 = p2. s1 = p0. s2 = 16. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). p3 = s1. s2 = p2. s3 = 16. s2 = s2 + s3. s3 = p3. s3 = mem_ld_i32( s3 + 68 ). s4 = p4. s5 = 24. s4 = s4 * s5. s3 = s3 + s4. s3 = mem_ld_i32( s3 + 4 ).
      PERFORM f410 USING s1 s2 s3 CHANGING s1. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s1 = 1147410. s2 = p2. PERFORM f970 USING s0 s1 s2 CHANGING s0. s0 = 25769803776. p1 = s0. lv_br = 1. EXIT. " br 1
    ENDDO.
    s0 = p0. s1 = l5. s2 = p3. s2 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s2 + 0 ). p1 = s2. s3 = 0. s4 = p1. s5 = 32. s4 = zcl_wasm_rt=>shr_u64( iv_val = s4 iv_shift = s5 ). s4 = zcl_wasm_rt=>wrap_i64( s4 ). s5 = 7.
    s4 = s4 - s5. s5 = -18.
    IF zcl_wasm_rt=>ge_u32( iv_a = s4 iv_b = s5 ) = abap_true. s4 = 1. ELSE. s4 = 0. ENDIF.
    IF s4 <> 0. s2 = s2. ELSE. s2 = s3. ENDIF.
    s3 = p1. s4 = p1. s5 = 9221120288580698112. s4 = s4 + s5. s5 = 9223372036854775807. s4 = zcl_wasm_rt=>and64( iv_a = s4 iv_b = s5 ).
    IF s4 = 0. s4 = 1. ELSE. s4 = 0. ENDIF.
    IF s4 <> 0. s2 = s2. ELSE. s2 = s3. ENDIF.
    PERFORM f718 USING s0 s1 s2 CHANGING s0. p0 = s0.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = 12884901888. p1 = s0. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = p0. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 40 ). p1 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
    IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p0 = s0. s1 = p0. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
  ENDDO.
  s0 = p2. s1 = 80. s0 = s0 + s1. gv_g0 = s0. s0 = p1. rv = s0.
ENDFORM.

FORM f759 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i.
  DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i.
  DATA s26 TYPE i. DATA s27 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = -64. s0 = s0 + s1. l2 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    s0 = p0. s0 = mem_ld_i32( s0 ). l3 = s0. s1 = 1114112.
    IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = l2. s1 = l3. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = l2. s1 = 1113236. mem_st_i32( iv_addr = s0 + 16 iv_val = s1 ). s0 = l2. s1 = 3.
      zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 28 CHANGING cv_mem = mv_mem ). s0 = l2. s1 = l2. s2 = 12. s1 = s1 + s2. s1 = zcl_wasm_rt=>extend_u32( s1 ). s2 = 98784247808. s1 = zcl_wasm_rt=>or64( iv_a = s1 iv_b = s2 ).
      zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 56 CHANGING cv_mem = mv_mem ). s0 = l2. s1 = p0. s2 = 28. s1 = s1 + s2. s1 = zcl_wasm_rt=>extend_u32( s1 ). s2 = 55834574848. s1 = zcl_wasm_rt=>or64( iv_a = s1 iv_b = s2 ).
      zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 48 CHANGING cv_mem = mv_mem ). s0 = l2. s1 = 4. mem_st_i32( iv_addr = s0 + 20 iv_val = s1 ). s0 = l2. s1 = p0. s2 = 4. s1 = s1 + s2. s1 = zcl_wasm_rt=>extend_u32( s1 ).
      s2 = 103079215104. s1 = zcl_wasm_rt=>or64( iv_a = s1 iv_b = s2 ). zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 40 CHANGING cv_mem = mv_mem ). s0 = l2. s1 = l2. s2 = 40. s1 = s1 + s2.
      mem_st_i32( iv_addr = s0 + 24 iv_val = s1 ). s0 = p1. s0 = mem_ld_i32( s0 + 20 ). s1 = p1. s1 = mem_ld_i32( s1 + 24 ). s2 = l2. s3 = 16. s2 = s2 + s3. PERFORM f360 USING s0 s1 s2 CHANGING s0. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s1 = l2. s2 = 2. mem_st_i32( iv_addr = s1 + 44 iv_val = s2 ). s1 = l2. s2 = 1113268. mem_st_i32( iv_addr = s1 + 40 iv_val = s2 ). s1 = l2. s2 = 2.
    zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s2 iv_addr = s1 + 52 CHANGING cv_mem = mv_mem ). s1 = l2. s2 = p0. s3 = 28. s2 = s2 + s3. s2 = zcl_wasm_rt=>extend_u32( s2 ). s3 = 55834574848. s2 = zcl_wasm_rt=>or64( iv_a = s2 iv_b = s3 ).
    zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s2 iv_addr = s1 + 24 CHANGING cv_mem = mv_mem ). s1 = l2. s2 = p0. s3 = 4. s2 = s2 + s3. s2 = zcl_wasm_rt=>extend_u32( s2 ). s3 = 103079215104. s2 = zcl_wasm_rt=>or64( iv_a = s2 iv_b = s3 ).
    zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s2 iv_addr = s1 + 16 CHANGING cv_mem = mv_mem ). s1 = l2. s2 = l2. s3 = 16. s2 = s2 + s3. mem_st_i32( iv_addr = s1 + 48 iv_val = s2 ). s1 = p1. s1 = mem_ld_i32( s1 + 20 ). s2 = p1.
    s2 = mem_ld_i32( s2 + 24 ). s3 = l2. s4 = 40. s3 = s3 + s4. PERFORM f360 USING s1 s2 s3 CHANGING s1.
  ENDDO.
  s2 = l2. s3 = -64. s2 = s2 - s3. gv_g0 = s2. rv = s1.
ENDFORM.

FORM f760 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA l2 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i.
  DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16.
  s0 = s0 - s1. l2 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    s0 = p0. s0 = mem_ld_i32( s0 ).
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p1. s0 = mem_ld_i32( s0 + 20 ). s1 = 1114444. s2 = 4. s3 = p1. s3 = mem_ld_i32( s3 + 24 ). s3 = mem_ld_i32( s3 + 12 ).
      DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
      s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s1 = l2. s2 = p0. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = l2. s2 = p1. s2 = mem_ld_i32( s2 + 20 ). s3 = 1114448. s4 = 4. s5 = p1. s5 = mem_ld_i32( s5 + 24 ). s5 = mem_ld_i32( s5 + 12 ).
    DATA(lv_ci_func) = mt_tab0[ s5 + 1 ]. " call_indirect
    s2 = dispatch_t11( iv_idx = lv_ci_func p0 = s2 p1 = s3 p2 = s4 ). mem_st_i32_8( iv_addr = s1 + 12 iv_val = s2 ). s1 = l2. s2 = p1. mem_st_i32( iv_addr = s1 + 8 iv_val = s2 ). s1 = l2. s2 = 0.
    mem_st_i32_8( iv_addr = s1 + 13 iv_val = s2 ). s1 = l2. s2 = 0. mem_st_i32( iv_addr = s1 + 4 iv_val = s2 ). s1 = l2. s2 = 4. s1 = s1 + s2. s2 = l2. s3 = 1114272. PERFORM f691 USING s1 s2 s3 CHANGING s1. p1 = s1. s1 = l2.
    s1 = mem_ld_i32_8u( s1 + 12 ). p0 = s1. s1 = p0. s2 = 0.
    IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
    s2 = p1. s2 = mem_ld_i32( s2 ). p1 = s2.
    IF s2 = 0. s2 = 1. ELSE. s2 = 0. ENDIF.
    IF s2 <> 0. EXIT. ENDIF. " br_if 0
    s1 = 1. s2 = p0.
    IF s2 <> 0. EXIT. ENDIF. " br_if 0
    s1 = l2. s1 = mem_ld_i32( s1 + 8 ). p0 = s1.
    DO 1 TIMES. " block
      s1 = p1. s2 = 1.
      IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. EXIT. ENDIF. " br_if 0
      s1 = l2. s1 = mem_ld_i32_8u( s1 + 13 ).
      IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. EXIT. ENDIF. " br_if 0
      s1 = p0. s1 = mem_ld_i32_8u( s1 + 28 ). s2 = 4. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ).
      IF s1 <> 0. EXIT. ENDIF. " br_if 0
      s1 = 1. s2 = p0. s2 = mem_ld_i32( s2 + 20 ). s3 = 1079704. s4 = 1. s5 = p0. s5 = mem_ld_i32( s5 + 24 ). s5 = mem_ld_i32( s5 + 12 ).
      DATA(lv_ci_func) = mt_tab0[ s5 + 1 ]. " call_indirect
      s2 = dispatch_t11( iv_idx = lv_ci_func p0 = s2 p1 = s3 p2 = s4 ).
      IF s2 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
    ENDDO.
    s1 = p0. s1 = mem_ld_i32( s1 + 20 ). s2 = 1116251. s3 = 1. s4 = p0. s4 = mem_ld_i32( s4 + 24 ). s4 = mem_ld_i32( s4 + 12 ).
    DATA(lv_ci_func) = mt_tab0[ s4 + 1 ]. " call_indirect
    s1 = dispatch_t11( iv_idx = lv_ci_func p0 = s1 p1 = s2 p2 = s3 ).
  ENDDO.
  s2 = l2. s3 = 16. s2 = s2 + s3. gv_g0 = s2. rv = s1.
ENDFORM.

FORM f761 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE i. DATA l8 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i.
  DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 128. s0 = s0 - s1.
  l5 = s0. gv_g0 = s0. s0 = p1. s0 = mem_ld_i32( s0 + 4 ). l7 = s0. s0 = p1. s0 = mem_ld_i32( s0 ). l6 = s0. s0 = p0. s0 = mem_ld_i32( s0 ). p0 = s0. s0 = p1. s0 = mem_ld_i32( s0 + 28 ). l4 = s0. l2 = s0.
  DO 1 TIMES. " block
    s0 = l4. s1 = 4. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l4. s1 = 8. s0 = zcl_wasm_rt=>or32( iv_a = s0 iv_b = s1 ). l2 = s0. s0 = l6.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p1. s1 = 42949672961. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ).
  ENDDO.
  s0 = p1. s1 = l2. s2 = 4. s1 = zcl_wasm_rt=>or32( iv_a = s1 iv_b = s2 ). mem_st_i32( iv_addr = s0 + 28 iv_val = s1 ). s0 = 127. l2 = s0.
  DO. " loop
    s0 = l5. s1 = l2. l3 = s1. s0 = s0 + s1. l8 = s0. s1 = p0. s2 = 15. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). l2 = s1. s2 = 48. s1 = zcl_wasm_rt=>or32( iv_a = s1 iv_b = s2 ). s2 = l2. s3 = 87. s2 = s2 + s3. s3 = l2. s4 = 10.
    IF zcl_wasm_rt=>lt_u32( iv_a = s3 iv_b = s4 ) = abap_true. s3 = 1. ELSE. s3 = 0. ENDIF.
    IF s3 <> 0. s1 = s1. ELSE. s1 = s2. ENDIF.
    mem_st_i32_8( iv_addr = s0 iv_val = s1 ). s0 = l3. s1 = 1. s0 = s0 - s1. l2 = s0. s0 = p0. s1 = 16.
    IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    s1 = p0. s2 = 4. s1 = zcl_wasm_rt=>shr_u32( iv_val = s1 iv_shift = s2 ). p0 = s1.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
  ENDDO.
  s0 = l3. s1 = 129.
  IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = l3. s1 = 128. s2 = 1050416. PERFORM f1044 USING s0 s1 s2.
    RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
  ELSE.
  ENDIF.
  s0 = p1. s1 = 1. s2 = 1080547. s3 = 2. s4 = l8. s5 = 128. s6 = l3. s5 = s5 - s6. PERFORM f358 USING s0 s1 s2 s3 s4 s5 CHANGING s0. s1 = p1. s2 = l4. mem_st_i32( iv_addr = s1 + 28 iv_val = s2 ). s1 = p1. s2 = l7.
  mem_st_i32( iv_addr = s1 + 4 iv_val = s2 ). s1 = p1. s2 = l6. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = l5. s2 = 128. s1 = s1 + s2. gv_g0 = s1. rv = s0.
ENDFORM.

FORM f762 USING p0 TYPE i.
  DATA l1 TYPE i. DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i.
  DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA lv_br TYPE i.
  s0 = gv_g0. s1 = 16. s0 = s0 - s1. l4 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      s0 = p0. s0 = mem_ld_i32( s0 + 80 ). l1 = s0. s0 = mem_ld_i32( s0 + 280 ). l3 = s0. s1 = 0.
      IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = l1. s0 = mem_ld_i32( s0 + 256 ). l2 = s0. s1 = l3. s0 = s0 + s1. l5 = s0. s0 = mem_ld_i32_8u( s0 ). l6 = s0. s1 = 199.
      IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = l6. s1 = 77.
        IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        s0 = l1. s1 = 256. s0 = s0 + s1. l2 = s0. s0 = l1. s1 = -1. mem_st_i32( iv_addr = s0 + 280 iv_val = s1 ). s0 = l1. s1 = 260. s0 = s0 + s1. s1 = l3. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l1. s1 = l1.
        s1 = mem_ld_i32( s1 + 284 ). s2 = p0. s2 = mem_ld_i32( s2 + 4 ).
        IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0.
          s1 = l2. s2 = 200. PERFORM f908 USING s1 s2. s1 = l4. s2 = p0. s2 = mem_ld_i32( s2 + 4 ). mem_st_i32( iv_addr = s1 + 12 iv_val = s2 ). s1 = l2. s2 = l4. s3 = 12. s2 = s2 + s3. s3 = 4. PERFORM f1097 USING s1 s2 s3. s1 = l1.
          s2 = p0. s2 = mem_ld_i32( s2 + 4 ). mem_st_i32( iv_addr = s1 + 284 iv_val = s2 ). s1 = l1. s1 = mem_ld_i32( s1 + 260 ).
        ELSE.
          s2 = l3.
        ENDIF.
        mem_st_i32( iv_addr = s1 + 280 iv_val = s2 ). s1 = l2. s2 = 78. PERFORM f908 USING s1 s2. lv_br = 1. EXIT. " br 1
      ELSE.
      ENDIF.
      s1 = l3. s2 = l5. s2 = mem_ld_i32( s2 + 1 ). s1 = s1 - s2. s2 = l2. s1 = s1 + s2. s2 = 1. s1 = s1 + s2. p0 = s1. s1 = mem_ld_i32_8u( s1 ). s2 = 86.
      IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s1 = p0. s2 = 87. mem_st_i32_8( iv_addr = s1 iv_val = s2 ). s1 = l1. s2 = -1. mem_st_i32( iv_addr = s1 + 280 iv_val = s2 ).
    ENDDO.
    s1 = l4. s2 = 16. s1 = s1 + s2. gv_g0 = s1.
    RETURN.
  ENDDO.
  s1 = 1138135. s2 = 1148333. s3 = 22854. s4 = 1147243. PERFORM f1101 USING s1 s2 s3 s4.
  RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
ENDFORM.

FORM f763 USING p0 TYPE i p1 TYPE int8.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i.
  DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). s0 = mem_ld_i32( s0 + 32 ). l3 = s0.
    IF s0 <> 0.
      DO 1 TIMES. " block
        s0 = l3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). p1 = s0. s1 = -4294967296.
        IF zcl_wasm_rt=>lt_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). s0 = mem_ld_i32_8u( s0 + 5 ). s1 = 2. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = l3. s0 = mem_ld_i32( s0 + 12 ). l2 = s0.
        IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = l2. s1 = l2. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 - s2. l4 = s1. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l4.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = l2. s0 = mem_ld_i32( s0 + 4 ).
        IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
        s0 = l2. s1 = 20. s0 = s0 + s1. l4 = s0. s0 = mem_ld_i32( s0 ). l5 = s0. s1 = l2. s1 = mem_ld_i32( s1 + 16 ). l6 = s1. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l6. s1 = l5. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = l2.
        s1 = 0. mem_st_i32( iv_addr = s0 + 16 iv_val = s1 ). s0 = l4. s1 = 0. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s1 = 16. s0 = s0 + s1. s1 = l2. s2 = p0. s2 = mem_ld_i32( s2 + 4 ).
        DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
        dispatch_t6( iv_idx = lv_ci_func p0 = s0 p1 = s1 ). s0 = l3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). p1 = s0.
      ENDDO.
      DO 1 TIMES. " block
        s0 = p1. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
        IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l2 = s0. s1 = l2. s1 = mem_ld_i32( s1 ). l2 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l2. s1 = 1.
        IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = p0. s1 = p1. PERFORM f453 USING s0 s1.
      ENDDO.
      s0 = p0. s1 = 16. s0 = s0 + s1. s1 = l3. s2 = p0. s2 = mem_ld_i32( s2 + 4 ).
      DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
      dispatch_t6( iv_idx = lv_ci_func p0 = s0 p1 = s1 ).
    ELSE.
    ENDIF.
    RETURN.
  ENDDO.
  s0 = 1134878. s1 = 1148333. s2 = 47537. s3 = 1146602. PERFORM f1101 USING s0 s1 s2 s3.
  RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
ENDFORM.

FORM f764 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i CHANGING rv TYPE int8.
  DATA l4 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i.
  DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA lv_br TYPE i. s0 = p3.
  s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). p1 = s0. s1 = -4294967297.
  IF zcl_wasm_rt=>le_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = p0. s1 = 1137529. s2 = 0. PERFORM f970 USING s0 s1 s2 CHANGING s0. s0 = 25769803776. rv = s0. RETURN.
  ELSE.
  ENDIF.
  s0 = p0. s1 = p3. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 8 ). PERFORM f503 USING s0 s1 CHANGING s0. p2 = s0.
  IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = 25769803776. rv = s0. RETURN.
  ELSE.
  ENDIF.
  s0 = -1. p3 = s0.
  DO 1 TIMES. " block
    s0 = p0. s1 = p1. PERFORM f151 USING s0 s1 CHANGING s0. p1 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 25769803776.
    IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s1 = p1. s1 = zcl_wasm_rt=>wrap_i64( s1 ). l4 = s1. s2 = p2. PERFORM f110 USING s0 s1 s2 CHANGING s0. p3 = s0. s0 = p1. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ).
    s1 = -11.
    IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l4. s1 = l4. s1 = mem_ld_i32( s1 ). l4 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l4. s1 = 1.
    IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = p1. PERFORM f453 USING s0 s1.
  ENDDO.
  DO 1 TIMES. " block
    s0 = p2. s1 = 228.
    IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s0 = mem_ld_i32( s0 + 16 ). l4 = s0. s0 = mem_ld_i32( s0 + 56 ). s1 = p2. s2 = 2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s0 = mem_ld_i32( s0 ). p0 = s0. s1 = p0. s1 = mem_ld_i32( s1 ). p2 = s1.
    s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p2. s1 = 1.
    IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l4. s1 = p0. PERFORM f713 USING s0 s1.
  ENDDO.
  s0 = p3. s1 = 0.
  IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = 25769803776. rv = s0. RETURN.
  ELSE.
  ENDIF.
  s0 = p3. s1 = 0.
  IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
  s0 = zcl_wasm_rt=>extend_u32( s0 ). s1 = 4294967296. s0 = zcl_wasm_rt=>or64( iv_a = s0 iv_b = s1 ). rv = s0.
ENDFORM.

FORM f765 USING p0 TYPE i p1 TYPE int8 p2 TYPE int8 p3 TYPE int8 CHANGING rv TYPE int8.
  DATA l4 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i.
  DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i.
  DATA s27 TYPE i. DATA s28 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      s0 = p2. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = -30064771072.
      IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      s1 = p3. s2 = -4294967296. s1 = zcl_wasm_rt=>and64( iv_a = s1 iv_b = s2 ). s2 = -30064771072.
      IF s1 = s2. s1 = 1. ELSE. s1 = 0. ENDIF.
      s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = p0. s1 = 1147496. s2 = 0. PERFORM f970 USING s0 s1 s2 CHANGING s0. lv_br = 1. EXIT. " br 1
      ELSE.
      ENDIF.
      s0 = p0. s1 = p1. s2 = 18. PERFORM f508 USING s0 s1 s2 CHANGING s0. p1 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 25769803776.
      IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l4 = s0. s1 = p3. zcl_wasm_rt=>mem_st_i64_trunc( EXPORTING iv_val = s1 iv_addr = s0 + 36 iv_op = 62 CHANGING cv_mem = mv_mem ). s0 = l4. s1 = p2.
      zcl_wasm_rt=>mem_st_i64_trunc( EXPORTING iv_val = s1 iv_addr = s0 + 32 iv_op = 62 CHANGING cv_mem = mv_mem ). s0 = p0. s1 = p1. s2 = 87. s3 = 0. s4 = 12884901888. s5 = 12884901888. s6 = 9986.
      PERFORM f37 USING s0 s1 s2 s3 s4 s5 s6 CHANGING s0. lv_br = 1. EXIT. " br 1
    ENDDO.
    DO 1 TIMES. " block
      s0 = p3. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
      IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p3. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l4 = s0. s1 = l4. s1 = mem_ld_i32( s1 ). l4 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l4. s1 = 1.
      IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = p3. PERFORM f453 USING s0 s1.
    ENDDO.
    s0 = 25769803776. p1 = s0. s0 = p2. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
    IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p2. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l4 = s0. s1 = l4. s1 = mem_ld_i32( s1 ). l4 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l4. s1 = 1.
    IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = p2. PERFORM f453 USING s0 s1. s0 = 25769803776. rv = s0. RETURN.
  ENDDO.
  s0 = p1. rv = s0.
ENDFORM.

FORM f766 USING p0 TYPE i p1 TYPE i.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i.
  DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 48.
  s0 = s0 - s1. l2 = s0. gv_g0 = s0. s0 = p1. s0 = mem_ld_i32( s0 ). s1 = -2147483648.
  IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = p1. s0 = mem_ld_i32( s0 + 12 ). l3 = s0. s0 = l2. s1 = 44. s0 = s0 + s1. l4 = s0. s1 = 0. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l2. s1 = 4294967296.
    zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 36 CHANGING cv_mem = mv_mem ). s0 = l2. s1 = 36. s0 = s0 + s1. s1 = 1114452. s2 = l3. PERFORM f360 USING s0 s1 s2 CHANGING s0. s0 = l2. s1 = 32. s0 = s0 + s1. s1 = l4.
    s1 = mem_ld_i32( s1 ). l3 = s1. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l2. s1 = l2. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 36 ). l5 = s1.
    zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 24 CHANGING cv_mem = mv_mem ). s0 = p1. s1 = 8. s0 = s0 + s1. s1 = l3. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p1. s1 = l5.
    zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ).
  ELSE.
  ENDIF.
  s0 = p1. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). l5 = s0. s0 = p1. s1 = 4294967296. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ). s0 = l2. s1 = 16. s0 = s0 + s1.
  l3 = s0. s1 = p1. s2 = 8. s1 = s1 + s2. p1 = s1. s1 = mem_ld_i32( s1 ). mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p1. s1 = 0. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = 1215076. s0 = mem_ld_i32_8u( s0 ). s0 = l2. s1 = l5.
  zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 8 CHANGING cv_mem = mv_mem ). s0 = 12. PERFORM f18 USING s0 CHANGING s0. p1 = s0.
  IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = 12. PERFORM f687 USING s0.
    RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
  ELSE.
  ENDIF.
  s0 = p1. s1 = l2. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 8 ). zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ). s0 = p1. s1 = 8. s0 = s0 + s1. s1 = l3. s1 = mem_ld_i32( s1 ).
  mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s1 = 1117504. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = p0. s1 = p1. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l2. s1 = 48. s0 = s0 + s1. gv_g0 = s0.
ENDFORM.

FORM f767 USING p0 TYPE i p1 TYPE i p2 TYPE i p3 TYPE i CHANGING rv TYPE i.
  DATA l4 TYPE i. DATA l5 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i.
  DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i.
  DATA lv_br TYPE i. s0 = gv_g0. s1 = 32. s0 = s0 - s1. l4 = s0. gv_g0 = s0. s0 = p0. s0 = mem_ld_i32( s0 ). l5 = s0. s0 = l4. s1 = 0. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 20 CHANGING cv_mem = mv_mem ). s0 = l4.
  s1 = -9223372036854775808. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 12 CHANGING cv_mem = mv_mem ). s0 = l4. s1 = l5. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = l4. s1 = 8. s0 = s0 + s1. l5 = s0. s1 = p1.
  s2 = p2. s3 = 32. s2 = s2 + s3. p1 = s2. s3 = 2022. PERFORM f338 USING s0 s1 s2 s3 CHANGING s0. s0 = l5. s1 = l5. s2 = p3. s3 = p1. s4 = 2022. PERFORM f87 USING s0 s1 s2 s3 s4 CHANGING s0.
  DO 1 TIMES. " block
    s0 = l4. s0 = mem_ld_i32( s0 + 16 ). s1 = 2147483647.
    IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p0. s0 = mem_ld_i32( s0 + 12 ).
      IF s0 <> 0.
        s0 = p0. s0 = mem_ld_i32( s0 ). p1 = s0. s0 = mem_ld_i32( s0 ). s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s2 = 0. s3 = p1. s4 = 4. s3 = s3 + s4. s3 = mem_ld_i32( s3 ).
        DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
        s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). p1 = s0. s0 = p0. s1 = 0. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = p0. s1 = p1. mem_st_i32( iv_addr = s0 + 16 iv_val = s1 ).
      ELSE.
      ENDIF.
      s0 = p0. s1 = 9223372032559808512. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 4 CHANGING cv_mem = mv_mem ). lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = p0. s1 = l4. s2 = 8. s1 = s1 + s2. s2 = p1. s3 = l4. PERFORM f144 USING s0 s1 s2 s3 CHANGING s0.
  ENDDO.
  DO 1 TIMES. " block
    s0 = l4. s0 = mem_ld_i32( s0 + 8 ). p0 = s0.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l4. s0 = mem_ld_i32( s0 + 24 ). p1 = s0.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s0 = mem_ld_i32( s0 ). s1 = p1. s2 = 0. s3 = p0. s4 = 4. s3 = s3 + s4. s3 = mem_ld_i32( s3 ).
    DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
    s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ).
  ENDDO.
  s0 = l4. s1 = 32. s0 = s0 + s1. gv_g0 = s0. s0 = 16. rv = s0.
ENDFORM.

FORM f768 USING p0 TYPE i CHANGING rv TYPE i.
  DATA l1 TYPE i. DATA l2 TYPE i. DATA l3 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      s0 = p0. l1 = s0. s1 = 3. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = l1. s0 = mem_ld_i32_8u( s0 ).
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = 0. rv = s0. RETURN.
      ELSE.
      ENDIF.
      s0 = p0. s1 = 1. s0 = s0 + s1. l1 = s0. s1 = 3. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = l1. s0 = mem_ld_i32_8u( s0 ).
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p0. s1 = 2. s0 = s0 + s1. l1 = s0. s1 = 3. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = l1. s0 = mem_ld_i32_8u( s0 ).
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p0. s1 = 3. s0 = s0 + s1. l1 = s0. s1 = 3. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = l1. s0 = mem_ld_i32_8u( s0 ).
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p0. s1 = 4. s0 = s0 + s1. l1 = s0. s1 = 3. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
    ENDDO.
    s0 = l1. s1 = 4. s0 = s0 - s1. l2 = s0. s0 = l1. s1 = 5. s0 = s0 - s1. l1 = s0.
    DO. " loop
      s0 = l1. s1 = 4. s0 = s0 + s1. l1 = s0. s0 = l2. s1 = 4. s0 = s0 + s1. l2 = s0. s0 = mem_ld_i32( s0 ). l3 = s0. s1 = -1. s0 = zcl_wasm_rt=>xor32( iv_a = s0 iv_b = s1 ). s1 = l3. s2 = 16843009. s1 = s1 - s2.
      s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = -2139062144. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
    ENDDO.
    DO. " loop
      s0 = l1. s1 = 1. s0 = s0 + s1. l1 = s0. s0 = l2. s0 = mem_ld_i32_8u( s0 ). s1 = l2. s2 = 1. s1 = s1 + s2. l2 = s1.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
    ENDDO.
  ENDDO.
  s0 = l1. s1 = p0. s0 = s0 - s1. rv = s0.
ENDFORM.

FORM f769 USING p0 TYPE i p1 TYPE int8.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i.
  DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). s0 = mem_ld_i32( s0 + 32 ). l3 = s0. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). p1 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ).
    s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
    IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l2 = s0. s1 = l2. s1 = mem_ld_i32( s1 ). l2 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l2. s1 = 1.
    IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s1 = p1. PERFORM f453 USING s0 s1.
  ENDDO.
  s0 = l3. s0 = mem_ld_i32_8u( s0 + 17 ).
  IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = l3. s0 = mem_ld_i32( s0 + 12 ). l5 = s0.
    IF s0 <> 0.
      s0 = 4. l2 = s0.
      DO. " loop
        DO 1 TIMES. " block
          s0 = l3. s0 = mem_ld_i32( s0 + 20 ). s1 = l2. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). l4 = s0. s1 = 228.
          IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = p0. s0 = mem_ld_i32( s0 + 56 ). s1 = l4. s2 = 2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s0 = mem_ld_i32( s0 ). l4 = s0. s1 = l4. s1 = mem_ld_i32( s1 ). l7 = s1. s2 = 1. s1 = s1 - s2.
          mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l7. s1 = 1.
          IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = p0. s1 = l4. PERFORM f713 USING s0 s1. s0 = l3. s0 = mem_ld_i32( s0 + 12 ). l5 = s0.
        ENDDO.
        s0 = l2. s1 = 8. s0 = s0 + s1. l2 = s0. s0 = l6. s1 = 1. s0 = s0 + s1. l6 = s0. s1 = l5.
        IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
      ENDDO.
    ELSE.
    ENDIF.
    s0 = p0. s1 = 16. s0 = s0 + s1. s1 = l3. s1 = mem_ld_i32( s1 + 20 ). s2 = p0. s2 = mem_ld_i32( s2 + 4 ).
    DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
    dispatch_t6( iv_idx = lv_ci_func p0 = s0 p1 = s1 ).
  ELSE.
  ENDIF.
  s0 = p0. s1 = 16. s0 = s0 + s1. s1 = l3. s2 = p0. s2 = mem_ld_i32( s2 + 4 ).
  DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
  dispatch_t6( iv_idx = lv_ci_func p0 = s0 p1 = s1 ).
ENDFORM.

FORM f770 USING p0 TYPE i p1 TYPE int8 p2 TYPE int8 p3 TYPE int8 p4 TYPE i CHANGING rv TYPE i.
  DATA l5 TYPE i. DATA l6 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i.
  DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = p2.
  PERFORM f503 USING s0 s1 CHANGING s0. l6 = s0.
  DO 1 TIMES. " block
    s0 = p2. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
    IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p2. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l5 = s0. s1 = l5. s1 = mem_ld_i32( s1 ). l5 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l5. s1 = 1.
    IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = p2. PERFORM f453 USING s0 s1.
  ENDDO.
  s0 = l6.
  IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = p0. s1 = p3. PERFORM f1164 USING s0 s1. s0 = -1. rv = s0. RETURN.
  ELSE.
  ENDIF.
  s0 = p0. s1 = p1. s2 = l6. s3 = p3. s4 = 12884901888. s5 = 12884901888. s6 = p4. s7 = 9984. s6 = zcl_wasm_rt=>or32( iv_a = s6 iv_b = s7 ). PERFORM f37 USING s0 s1 s2 s3 s4 s5 s6 CHANGING s0.
  DO 1 TIMES. " block
    s1 = p3. s2 = 32. s1 = zcl_wasm_rt=>shr_u64( iv_val = s1 iv_shift = s2 ). s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = -11.
    IF zcl_wasm_rt=>lt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
    IF s1 <> 0. EXIT. ENDIF. " br_if 0
    s1 = p3. s1 = zcl_wasm_rt=>wrap_i64( s1 ). l5 = s1. s2 = l5. s2 = mem_ld_i32( s2 ). l5 = s2. s3 = 1. s2 = s2 - s3. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = l5. s2 = 1.
    IF s1 > s2. s1 = 1. ELSE. s1 = 0. ENDIF.
    IF s1 <> 0. EXIT. ENDIF. " br_if 0
    s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s2 = p3. PERFORM f453 USING s1 s2.
  ENDDO.
  DO 1 TIMES. " block
    s1 = l6. s2 = 228.
    IF s1 < s2. s1 = 1. ELSE. s1 = 0. ENDIF.
    IF s1 <> 0. EXIT. ENDIF. " br_if 0
    s1 = p0. s1 = mem_ld_i32( s1 + 16 ). l5 = s1. s1 = mem_ld_i32( s1 + 56 ). s2 = l6. s3 = 2. s2 = zcl_wasm_rt=>shl32( iv_val = s2 iv_shift = s3 ). s1 = s1 + s2. s1 = mem_ld_i32( s1 ). p0 = s1. s2 = p0. s2 = mem_ld_i32( s2 ). l6 = s2.
    s3 = 1. s2 = s2 - s3. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = l6. s2 = 1.
    IF s1 > s2. s1 = 1. ELSE. s1 = 0. ENDIF.
    IF s1 <> 0. EXIT. ENDIF. " br_if 0
    s1 = l5. s2 = p0. PERFORM f713 USING s1 s2.
  ENDDO.
  rv = s0.
ENDFORM.

FORM f771 USING p0 TYPE i p1 TYPE int8.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i.
  DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). s0 = mem_ld_i32( s0 + 32 ). l2 = s0.
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = l2. s1 = l2. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 - s2. l3 = s1. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l3.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p0. s0 = mem_ld_i32_8u( s0 + 104 ). s1 = 2.
      IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = l2. s0 = mem_ld_i32( s0 + 8 ). l4 = s0. s1 = l2. s2 = 12. s1 = s1 + s2. l3 = s1. s1 = mem_ld_i32( s1 ). l5 = s1. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = l5. s1 = l4. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l3.
      s1 = 0. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l2. s1 = p0. s2 = 88. s1 = s1 + s2. l4 = s1. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = p0. s1 = 92. s0 = s0 + s1. l6 = s0. s0 = mem_ld_i32( s0 ). l5 = s0. s0 = l6. s1 = l2.
      s2 = 8. s1 = s1 + s2. l2 = s1. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l5. s1 = l2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l3. s1 = l5. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s0 = mem_ld_i32_8u( s0 + 104 ).
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p0. s1 = 1. mem_st_i32_8( iv_addr = s0 + 104 iv_val = s1 ). s0 = l4. s1 = p0. s1 = mem_ld_i32( s1 + 92 ). l2 = s1.
      IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        DO. " loop
          s0 = l2. s1 = 8. s0 = s0 - s1. l2 = s0. s0 = mem_ld_i32( s0 ).
          IF s0 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
          s0 = p0. s1 = l2. PERFORM f108 USING s0 s1. s0 = p0. s0 = mem_ld_i32( s0 + 92 ). l2 = s0. s1 = l4.
          IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
        ENDDO.
      ELSE.
      ENDIF.
      s0 = p0. s1 = 0. mem_st_i32_8( iv_addr = s0 + 104 iv_val = s1 ).
    ENDDO.
    RETURN.
  ENDDO.
  s0 = 1152044. s1 = 1148333. s2 = 5521. s3 = 1136378. PERFORM f1101 USING s0 s1 s2 s3.
  RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
ENDFORM.

FORM f772 USING p0 TYPE i p1 TYPE i p2 TYPE i CHANGING rv TYPE int8.
  DATA l3 TYPE i. DATA l4 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i.
  DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 80. s0 = s0 - s1. l3 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      s0 = p1. s1 = 0.
      IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = l3. s1 = p1. s2 = 2147483647. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l3. s1 = 16. s0 = s0 + s1. p1 = s0. s1 = 64. s2 = 1135697. s3 = l3.
        PERFORM f1218 USING s0 s1 s2 s3 CHANGING s0. s0 = p0. s1 = p1. s2 = p1. PERFORM f768 USING s2 CHANGING s2. PERFORM f126 USING s0 s1 s2 CHANGING s0. lv_br = 1. EXIT. " br 1
      ELSE.
      ENDIF.
      s1 = p0. s1 = mem_ld_i32( s1 + 16 ). p0 = s1. s1 = mem_ld_i32( s1 + 44 ). s2 = p1.
      IF zcl_wasm_rt=>le_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          s1 = p0. s1 = mem_ld_i32( s1 + 56 ). p0 = s1. s2 = p1. s3 = 2. s2 = zcl_wasm_rt=>shl32( iv_val = s2 iv_shift = s3 ). s1 = s1 + s2. s1 = mem_ld_i32( s1 ). p1 = s1. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 4 ).
          l4 = s1. s2 = -4611686018427387904. s1 = zcl_wasm_rt=>and64( iv_a = s1 iv_b = s2 ). s2 = 4611686018427387904.
          IF s1 = s2. s1 = 1. ELSE. s1 = 0. ENDIF.
          IF s1 <> 0. EXIT. ENDIF. " br_if 0
          s1 = p2.
          IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
          IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          s1 = l4. s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = -2147483648.
          IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
          IF s1 <> 0. EXIT. ENDIF. " br_if 0
          s1 = p0. s1 = mem_ld_i32( s1 + 188 ). p1 = s1.
        ENDDO.
        s1 = p1. s2 = p1. s2 = mem_ld_i32( s2 ). s3 = 1. s2 = s2 + s3. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = p1. s1 = zcl_wasm_rt=>extend_u32( s1 ). s2 = -30064771072. s1 = zcl_wasm_rt=>or64( iv_a = s1 iv_b = s2 ).
        lv_br = 1. EXIT. " br 1
      ENDDO.
      s2 = p1. s3 = p1. s3 = mem_ld_i32( s3 ). s4 = 1. s3 = s3 + s4. mem_st_i32( iv_addr = s2 iv_val = s3 ). s2 = p1. s2 = zcl_wasm_rt=>extend_u32( s2 ). s3 = -34359738368. s2 = zcl_wasm_rt=>or64( iv_a = s2 iv_b = s3 ).
    ENDDO.
    s3 = l3. s4 = 80. s3 = s3 + s4. gv_g0 = s3. rv = s2. RETURN.
  ENDDO.
  s2 = 1144256. s3 = 1148333. s4 = 3113. s5 = 1144447. PERFORM f1101 USING s2 s3 s4 s5.
  RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
  rv = s1.
ENDFORM.

FORM f773 USING p0 TYPE i p1 TYPE int8 p2 TYPE int8 p3 TYPE i p4 TYPE i p5 TYPE i CHANGING rv TYPE int8.
  DATA l6 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i.
  DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA lv_br TYPE i. s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p5 = s0. s0 = mem_ld_i32_16u( s0 + 6 ). s1 = 53. s0 = s0 - s1. l6 = s0. s0 = p5. s0 = mem_ld_i32( s0 + 32 ).
  p5 = s0. s0 = p3. s1 = 0.
  IF s0 <= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = 12884901888.
  ELSE.
    s1 = p4. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 0 ).
  ENDIF.
  p1 = s1. s1 = p5. s2 = l6. mem_st_i32( iv_addr = s1 + 28 iv_val = s2 ). s1 = p1. s2 = 32. s1 = zcl_wasm_rt=>shr_u64( iv_val = s1 iv_shift = s2 ). s1 = zcl_wasm_rt=>wrap_i64( s1 ). p3 = s1.
  DO 1 TIMES. " block
    s1 = l6.
    IF s1 <> 0.
      s1 = p3. s2 = -11.
      IF zcl_wasm_rt=>ge_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0.
        s1 = p1. s1 = zcl_wasm_rt=>wrap_i64( s1 ). p3 = s1. s2 = p3. s2 = mem_ld_i32( s2 ). s3 = 1. s2 = s2 + s3. mem_st_i32( iv_addr = s1 iv_val = s2 ).
      ELSE.
      ENDIF.
      s1 = p0. s1 = mem_ld_i32( s1 + 16 ). p3 = s1. s2 = 128. s1 = s1 + s2. p4 = s1. s1 = p3. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 128 ). p2 = s1. s2 = 32. s1 = zcl_wasm_rt=>shr_u64( iv_val = s1 iv_shift = s2 ).
      s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = -11.
      IF zcl_wasm_rt=>lt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s1 = p2. s1 = zcl_wasm_rt=>wrap_i64( s1 ). l6 = s1. s2 = l6. s2 = mem_ld_i32( s2 ). l6 = s2. s3 = 1. s2 = s2 - s3. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = l6. s2 = 1.
      IF s1 > s2. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s1 = p3. s2 = p2. PERFORM f453 USING s1 s2. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s1 = p3. s2 = -11.
    IF zcl_wasm_rt=>ge_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
    IF s1 <> 0.
      s1 = p1. s1 = zcl_wasm_rt=>wrap_i64( s1 ). p3 = s1. s2 = p3. s2 = mem_ld_i32( s2 ). s3 = 1. s2 = s2 + s3. mem_st_i32( iv_addr = s1 iv_val = s2 ).
    ELSE.
    ENDIF.
    s1 = p5. s2 = 100. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). s2 = 8. s1 = s1 - s2. p4 = s1.
  ENDDO.
  s1 = p4. s2 = p1. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s2 iv_addr = s1 + 0 CHANGING cv_mem = mv_mem ). s1 = p0. s2 = p5. PERFORM f149 USING s1 s2. s1 = 12884901888. rv = s1.
ENDFORM.

FORM f774 USING p0 TYPE i p1 TYPE i p2 TYPE i p3 TYPE i p4 TYPE i CHANGING rv TYPE int8.
  DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i.
  DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i.
  DATA lv_br TYPE i.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      s0 = p0. s0 = mem_ld_i32( s0 + 16 ). p4 = s0. s1 = 16. s0 = s0 + s1. s1 = 24. s2 = p4. s2 = mem_ld_i32( s2 ).
      DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
      s0 = dispatch_t7( iv_idx = lv_ci_func p0 = s0 p1 = s1 ). p4 = s0.
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = 25769803776. s1 = p0. s1 = mem_ld_i32( s1 + 16 ). p1 = s1. s1 = mem_ld_i32_8u( s1 + 136 ).
        IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        lv_br = 2. EXIT. " br 2
      ELSE.
      ENDIF.
      s0 = p4. s1 = 1. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s0 = mem_ld_i32( s0 + 216 ). l6 = s0. s0 = p4. s1 = 4. s0 = s0 + s1. l5 = s0. s1 = 0.
      zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 12 CHANGING cv_mem = mv_mem ). s0 = l5. s1 = -9223372036854775808. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 4 CHANGING cv_mem = mv_mem ). s0 = l5.
      s1 = l6. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p4. s0 = zcl_wasm_rt=>extend_u32( s0 ). s1 = -42949672960. s0 = zcl_wasm_rt=>or64( iv_a = s0 iv_b = s1 ). l7 = s0. s0 = l5. s1 = p1. s2 = p2. s3 = 1073741823. s4 = 1.
      PERFORM f1200 USING s0 s1 s2 s3 s4 CHANGING s0. s1 = 32. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
      IF s0 <> 0.
        s0 = p4. s1 = p4. s1 = mem_ld_i32( s1 ). p1 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p1. s1 = 1.
        IF s0 <= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = l7. PERFORM f453 USING s0 s1.
        ELSE.
        ENDIF.
        s0 = 25769803776. s1 = p0. s1 = mem_ld_i32( s1 + 16 ). p1 = s1. s1 = mem_ld_i32_8u( s1 + 136 ).
        IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        lv_br = 2. EXIT. " br 2
      ELSE.
      ENDIF.
      s0 = p0. s1 = l7. s2 = p3. s3 = 9. s2 = zcl_wasm_rt=>shr_u32( iv_val = s2 iv_shift = s3 ). s3 = 1. s2 = zcl_wasm_rt=>and32( iv_a = s2 iv_b = s3 ). PERFORM f721 USING s0 s1 s2 CHANGING s0.
    ENDDO.
    rv = s0. RETURN.
  ENDDO.
  s0 = p1. s1 = 1. mem_st_i32_8( iv_addr = s0 + 136 iv_val = s1 ). s0 = p0. s1 = 1134898. s2 = 0. PERFORM f969 USING s0 s1 s2 CHANGING s0. s0 = p1. s1 = 0. mem_st_i32_8( iv_addr = s0 + 136 iv_val = s1 ). s0 = 25769803776. rv = s0.
ENDFORM.

FORM f775 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i CHANGING rv TYPE int8.
  DATA l4 TYPE i. DATA l5 TYPE int8. DATA l6 TYPE int8. DATA l7 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i.
  DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA lv_br TYPE i. s0 = p3.
  s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). l6 = s0. l5 = s0. s0 = p2. s1 = 4.
  IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = p3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 24 ). l5 = s0.
  ELSE.
  ENDIF.
  s0 = l6. s1 = -4294967297.
  IF zcl_wasm_rt=>le_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = p0. s1 = 1137529. s2 = 0. PERFORM f970 USING s0 s1 s2 CHANGING s0. s0 = 25769803776. rv = s0. RETURN.
  ELSE.
  ENDIF.
  s0 = p3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 16 ). p1 = s0. s0 = 25769803776. l7 = s0.
  DO 1 TIMES. " block
    s0 = p0. s1 = p3. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 8 ). PERFORM f503 USING s0 s1 CHANGING s0. p2 = s0.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p1. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
    IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p3 = s0. s1 = p3. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
    ELSE.
    ENDIF.
    s0 = p0. s1 = l6. s2 = p2. s3 = p1. s4 = l5. s5 = 0. PERFORM f89 USING s0 s1 s2 s3 s4 s5 CHANGING s0. p3 = s0.
    DO 1 TIMES. " block
      s0 = p2. s1 = 228.
      IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p0. s0 = mem_ld_i32( s0 + 16 ). l4 = s0. s0 = mem_ld_i32( s0 + 56 ). s1 = p2. s2 = 2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s0 = mem_ld_i32( s0 ). p0 = s0. s1 = p0. s1 = mem_ld_i32( s1 ). p2 = s1.
      s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p2. s1 = 1.
      IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = l4. s1 = p0. PERFORM f713 USING s0 s1.
    ENDDO.
    s0 = p3. s1 = 0.
    IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p3. s1 = 0.
    IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    s0 = zcl_wasm_rt=>extend_u32( s0 ). s1 = 4294967296. s0 = zcl_wasm_rt=>or64( iv_a = s0 iv_b = s1 ). l7 = s0.
  ENDDO.
  s0 = l7. rv = s0.
ENDFORM.

FORM f776 USING p0 TYPE i p1 TYPE int8 p2 TYPE i.
  DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE i. DATA l8 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i.
  DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i.
  DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l3 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    s0 = p2. s1 = l3. s2 = p1. s3 = 0. PERFORM f184 USING s0 s1 s2 s3 CHANGING s0. l6 = s0.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p0. s1 = 17. mem_st_i32_8( iv_addr = s0 iv_val = s1 ). lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = l3. s1 = 4. s0 = s0 + s1. s1 = l6. s2 = l3. s2 = mem_ld_i32( s2 ). PERFORM f324 USING s0 s1 s2. s0 = l3. s0 = mem_ld_i32( s0 + 4 ).
    IF s0 <> 0.
      s0 = l3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 8 ). p1 = s0. s0 = p2. s1 = l6. PERFORM f1165 USING s0 s1. s0 = p0. s1 = p1.
      zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 4 CHANGING cv_mem = mv_mem ). s0 = p0. s1 = 5. mem_st_i32_8( iv_addr = s0 iv_val = s1 ). lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = l3. s0 = mem_ld_i32( s0 + 8 ). l7 = s0.
    DO 1 TIMES. " block
      s0 = l3. s0 = mem_ld_i32( s0 + 12 ). l4 = s0.
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = 1. l5 = s0. s0 = 0. lv_br = 1. EXIT. " br 1
      ELSE.
      ENDIF.
      DO 1 TIMES. " block
        s1 = l4. s2 = 0.
        IF s1 >= s2. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0.
          s1 = 1215076. s1 = mem_ld_i32_8u( s1 ). s1 = l4. PERFORM f18 USING s1 CHANGING s1. l5 = s1.
          IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          s1 = 1.
        ELSE.
          s2 = 0.
        ENDIF.
        s3 = l4. PERFORM f1271 USING s2 s3.
        RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
      ENDDO.
      s2 = l4.
    ENDDO.
    l8 = s2. s2 = l5. s3 = l7. s4 = l4. PERFORM f216 USING s2 s3 s4 CHANGING s2. l5 = s2. s2 = p2. s3 = l6. PERFORM f1165 USING s2 s3. s2 = p0. s3 = l4. mem_st_i32( iv_addr = s2 + 12 iv_val = s3 ). s2 = p0. s3 = l5.
    mem_st_i32( iv_addr = s2 + 8 iv_val = s3 ). s2 = p0. s3 = l8. mem_st_i32( iv_addr = s2 + 4 iv_val = s3 ). s2 = p0. s3 = 18. mem_st_i32_8( iv_addr = s2 iv_val = s3 ).
  ENDDO.
  s2 = l3. s3 = 16. s2 = s2 + s3. gv_g0 = s2.
ENDFORM.

FORM f777 USING p0 TYPE i p1 TYPE i p2 TYPE i p3 TYPE i p4 TYPE i p5 TYPE i CHANGING rv TYPE i.
  DATA l6 TYPE i. DATA l7 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i.
  DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l6 = s0. gv_g0 = s0. s0 = p1. s1 = p3.
  s0 = s0 + s1. s0 = mem_ld_i32_8u( s0 ). s1 = 60.
  IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = p0. s1 = p4. s2 = 255. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). PERFORM f908 USING s0 s1. s0 = l6. s1 = p5. mem_st_i32_16( iv_addr = s0 + 14 iv_val = s1 ). s0 = p0. s1 = l6. s2 = 14. s1 = s1 + s2. s2 = 2.
    PERFORM f1097 USING s0 s1 s2. s0 = p3. s1 = 1. s0 = s0 + s1. p3 = s0.
  ELSE.
  ENDIF.
  s0 = p1. s1 = p2. s1 = mem_ld_i32( s1 + 4 ). p2 = s1. s2 = 5. s1 = s1 - s2. p0 = s1. s0 = s0 + s1. l7 = s0. s0 = mem_ld_i32_8u( s0 ). s1 = 184.
  IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = p1. s1 = p2. s0 = s0 + s1. s0 = mem_ld_i32_8u( s0 ). s1 = 22.
    IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = l7. s1 = 17. mem_st_i32_8( iv_addr = s0 iv_val = s1 ). s0 = p2. s1 = 4. s0 = s0 - s1. p0 = s0.
    ELSE.
    ENDIF.
    s0 = p0. s1 = p1. s0 = s0 + s1. p1 = s0. s1 = p5. mem_st_i32_16( iv_addr = s0 + 1 iv_val = s1 ). s0 = p1. s1 = p4. s2 = 1. s1 = s1 + s2. mem_st_i32_8( iv_addr = s0 iv_val = s1 ). s0 = p2. s1 = p0. s2 = 1. s1 = s1 + s2.
    IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p1. s1 = 3. s0 = s0 + s1. s1 = 181. s2 = p2. s3 = p0. s4 = -1. s3 = zcl_wasm_rt=>xor32( iv_a = s3 iv_b = s4 ). s2 = s2 + s3. PERFORM f514 USING s0 s1 s2 CHANGING s0.
    ELSE.
    ENDIF.
    s0 = l6. s1 = 16. s0 = s0 + s1. gv_g0 = s0. s0 = p3. rv = s0. RETURN.
  ELSE.
  ENDIF.
  s0 = 1142640. s1 = 1148333. s2 = 30337. s3 = 1144098. PERFORM f1101 USING s0 s1 s2 s3.
  RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
ENDFORM.

FORM f778 USING p0 TYPE i p1 TYPE i p2 TYPE i.
  DATA l3 TYPE i. DATA l4 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i.
  DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    s0 = p2. s1 = 4. s0 = zcl_wasm_rt=>shr_u32( iv_val = s0 iv_shift = s1 ). s1 = 3. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). p2 = s0.
    IF s0 <> 0.
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          DO 1 TIMES. " block
            s0 = p2. s1 = 2. s0 = s0 - s1.
            CASE s0.
              WHEN 0. lv_br = 1. EXIT.
              WHEN 1. lv_br = 2. EXIT.
              WHEN OTHERS. EXIT.
            ENDCASE.
          ENDDO.
          DO 1 TIMES. " block
            s0 = p1. s0 = mem_ld_i32( s0 ). p2 = s0.
            IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. EXIT. ENDIF. " br_if 0
            s0 = p2. s1 = p2. s1 = mem_ld_i32( s1 ). l3 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l3. s1 = 1.
            IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. EXIT. ENDIF. " br_if 0
            s0 = p0. s1 = p2. s1 = zcl_wasm_rt=>extend_u32( s1 ). s2 = -4294967296. s1 = zcl_wasm_rt=>or64( iv_a = s1 iv_b = s2 ). PERFORM f453 USING s0 s1.
          ENDDO.
          s0 = p1. s0 = mem_ld_i32( s0 + 4 ). p1 = s0.
          IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
          s0 = p1. s1 = p1. s1 = mem_ld_i32( s1 ). p2 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p2. s1 = 1.
          IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
          s0 = p0. s1 = p1. s1 = zcl_wasm_rt=>extend_u32( s1 ). s2 = -4294967296. s1 = zcl_wasm_rt=>or64( iv_a = s1 iv_b = s2 ). PERFORM f453 USING s0 s1.
          RETURN.
        ENDDO.
        s0 = p0. s1 = p1. s1 = mem_ld_i32( s1 ). PERFORM f494 USING s0 s1.
        RETURN.
      ENDDO.
      s0 = p1. s0 = mem_ld_i32( s0 ). s1 = -4. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). PERFORM f117 USING s0.
      RETURN.
    ELSE.
    ENDIF.
    s0 = p1. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). l4 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
    IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l4. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p1 = s0. s1 = p1. s1 = mem_ld_i32( s1 ). p1 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p1. s1 = 1.
    IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s1 = l4. PERFORM f453 USING s0 s1.
  ENDDO.
ENDFORM.

FORM f779 USING p0 TYPE i p1 TYPE i p2 TYPE i p3 TYPE i p4 TYPE i.
  DATA l5 TYPE int8. DATA l6 TYPE int8. DATA l7 TYPE int8. DATA l8 TYPE int8. DATA l9 TYPE int8. DATA l10 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i.
  DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i.
  DATA s21 TYPE i. DATA s22 TYPE i. DATA lv_br TYPE i. s0 = p1.
  IF s0 <> 0.
    s0 = p2. s0 = zcl_wasm_rt=>extend_u32( s0 ). s1 = 32. s0 = zcl_wasm_rt=>shl64( iv_val = s0 iv_shift = s1 ). s1 = p3. s1 = zcl_wasm_rt=>extend_u32( s1 ). l6 = s1. s0 = zcl_wasm_rt=>div_u64( iv_a = s0 iv_b = s1 ). s1 = 4294967295.
    s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). l7 = s0. s0 = p3. s1 = 1. s0 = zcl_wasm_rt=>shl32( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>extend_u32( s0 ). l8 = s0. s0 = p4. s0 = zcl_wasm_rt=>extend_u32( s0 ). l9 = s0. s0 = 1.
    p4 = s0.
    DO. " loop
      s0 = p0. s1 = p4. s1 = zcl_wasm_rt=>extend_u32( s1 ). l10 = s1. s2 = p0. s2 = zcl_wasm_rt=>mem_ld_i64_ext( iv_mem = mv_mem iv_addr = s2 + 0 iv_op = 53 ). s1 = s1 * s2. l5 = s1. s2 = l5. s3 = 29.
      s2 = zcl_wasm_rt=>shr_u64( iv_val = s2 iv_shift = s3 ). s3 = 4294967295. s2 = zcl_wasm_rt=>and64( iv_a = s2 iv_b = s3 ). s3 = l9. s2 = s2 * s3. s3 = 32. s2 = zcl_wasm_rt=>shr_u64( iv_val = s2 iv_shift = s3 ). s3 = l6. s2 = s2 * s3.
      s3 = l8. s2 = s2 + s3. s1 = s1 - s2. l5 = s1. s2 = l5. s3 = 32. s2 = zcl_wasm_rt=>shr_u64( iv_val = s2 iv_shift = s3 ). s2 = zcl_wasm_rt=>wrap_i64( s2 ). s3 = 1. s2 = zcl_wasm_rt=>shr_s32( iv_val = s2 iv_shift = s3 ). s3 = p3.
      s2 = zcl_wasm_rt=>and32( iv_a = s2 iv_b = s3 ). s2 = zcl_wasm_rt=>extend_u32( s2 ). s1 = s1 + s2. l5 = s1. s2 = 32. s1 = zcl_wasm_rt=>shr_u64( iv_val = s1 iv_shift = s2 ). s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = p3.
      s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). s2 = l5. s2 = zcl_wasm_rt=>wrap_i64( s2 ). s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p2. s1 = p4. s0 = s0 * s1. s1 = l7. s2 = l10. s1 = s1 * s2. s2 = 32.
      s1 = zcl_wasm_rt=>shr_u64( iv_val = s1 iv_shift = s2 ). s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = p3. s1 = s1 * s2. s0 = s0 - s1. p4 = s0. s1 = p3. s2 = 0. s3 = p3. s4 = p4.
      IF zcl_wasm_rt=>le_u32( iv_a = s3 iv_b = s4 ) = abap_true. s3 = 1. ELSE. s3 = 0. ENDIF.
      IF s3 <> 0. s1 = s1. ELSE. s1 = s2. ENDIF.
      s0 = s0 - s1. p4 = s0. s0 = p0. s1 = 4. s0 = s0 + s1. p0 = s0. s0 = p1. s1 = 1. s0 = s0 - s1. p1 = s0.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
    ENDDO.
  ELSE.
  ENDIF.
ENDFORM.

FORM f780 USING p0 TYPE int8 p1 TYPE i CHANGING rv TYPE i.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i.
  DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA lv_br TYPE i. s0 = 5. l2 = s0.
  DO 1 TIMES. " block
    s0 = p0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). l3 = s0. s1 = 7. s0 = s0 - s1. s1 = -18.
    IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = 16. l2 = s0.
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          DO 1 TIMES. " block
            DO 1 TIMES. " block
              DO 1 TIMES. " block
                DO 1 TIMES. " block
                  DO 1 TIMES. " block
                    DO 1 TIMES. " block
                      DO 1 TIMES. " block
                        s0 = l3. s1 = 10. s0 = s0 + s1.
                        CASE s0.
                          WHEN 0. lv_br = 8. EXIT.
                          WHEN 1. lv_br = 10. EXIT.
                          WHEN 2. lv_br = 6. EXIT.
                          WHEN 3. lv_br = 5. EXIT.
                          WHEN 4. lv_br = 10. EXIT.
                          WHEN 5. lv_br = 10. EXIT.
                          WHEN 6. lv_br = 10. EXIT.
                          WHEN 7. lv_br = 7. EXIT.
                          WHEN 8. lv_br = 10. EXIT.
                          WHEN 9. lv_br = 9. EXIT.
                          WHEN 10. lv_br = 4. EXIT.
                          WHEN 11. lv_br = 3. EXIT.
                          WHEN 12. lv_br = 2. EXIT.
                          WHEN 13. lv_br = 1. EXIT.
                          WHEN 14. EXIT.
                          WHEN OTHERS. lv_br = 10. EXIT.
                        ENDCASE.
                      ENDDO.
                      s0 = 0. rv = s0. RETURN.
                    ENDDO.
                    s0 = 1. rv = s0. RETURN.
                  ENDDO.
                  s0 = 2. rv = s0. RETURN.
                ENDDO.
                s0 = 3. rv = s0. RETURN.
              ENDDO.
              s0 = 4. rv = s0. RETURN.
            ENDDO.
            s0 = 6. rv = s0. RETURN.
          ENDDO.
          s0 = 7. rv = s0. RETURN.
        ENDDO.
        s0 = 14. rv = s0. RETURN.
      ENDDO.
      s0 = 15. l2 = s0. lv_br = 1. EXIT. " br 1
    ENDDO.
    s0 = 8. l2 = s0. s0 = p1. s1 = p0. PERFORM f1199 USING s0 s1 CHANGING s0.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = 9. l2 = s0. s0 = p0. s1 = -4294967296.
    IF zcl_wasm_rt=>ge_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p0. s0 = zcl_wasm_rt=>wrap_i64( s0 ). s0 = mem_ld_i32_8u( s0 + 5 ). s1 = 4. s0 = zcl_wasm_rt=>shr_u32( iv_val = s0 iv_shift = s1 ). s1 = 1. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
    ELSE.
      s1 = 0.
    ENDIF.
    IF s1 <> 0. EXIT. ENDIF. " br_if 0
    s1 = 10. l2 = s1. s1 = p1. s2 = p0. PERFORM f1108 USING s1 s2 CHANGING s1.
    IF s1 <> 0. EXIT. ENDIF. " br_if 0
    s1 = 11. l2 = s1. s1 = p0. PERFORM f1185 USING s1 CHANGING s1. s2 = 0.
    IF s1 >= s2. s1 = 1. ELSE. s1 = 0. ENDIF.
    IF s1 <> 0. EXIT. ENDIF. " br_if 0
    s1 = 12. s2 = 13. s3 = p0. s4 = -4294967296.
    IF zcl_wasm_rt=>ge_u64( iv_a = s3 iv_b = s4 ) = abap_true. s3 = 1. ELSE. s3 = 0. ENDIF.
    IF s3 <> 0.
      s3 = p0. s3 = zcl_wasm_rt=>wrap_i64( s3 ). s3 = mem_ld_i32_16u( s3 + 6 ). s4 = 3.
      IF s3 = s4. s3 = 1. ELSE. s3 = 0. ENDIF.
    ELSE.
      s4 = 0.
    ENDIF.
    IF s4 <> 0. s2 = s2. ELSE. s2 = s3. ENDIF.
    rv = s2. RETURN.
  ENDDO.
  s2 = l2. rv = s2.
ENDFORM.

FORM f781 USING p0 TYPE i p1 TYPE i p2 TYPE i p3 TYPE i.
  DATA l4 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i.
  DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    s0 = p1.
    IF s0 <> 0.
      s0 = p2. s1 = 0.
      IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          DO 1 TIMES. " block
            DO 1 TIMES. " block
              DO 1 TIMES. " block
                s0 = p3. s0 = mem_ld_i32( s0 + 4 ).
                IF s0 <> 0.
                  s0 = p3. s0 = mem_ld_i32( s0 + 8 ).
                  IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
                  s0 = p2.
                  IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
                  IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
                  s0 = 1215076. s0 = mem_ld_i32_8u( s0 ). s0 = p2. PERFORM f18 USING s0 CHANGING s0. lv_br = 3. EXIT. " br 3
                ELSE.
                ENDIF.
                s1 = p2.
                IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
                IF s1 <> 0. EXIT. ENDIF. " br_if 0
                s1 = 1215076. s1 = mem_ld_i32_8u( s1 ). s1 = p2. PERFORM f18 USING s1 CHANGING s1. lv_br = 2. EXIT. " br 2
              ENDDO.
              s2 = p0. s3 = 8. s2 = s2 + s3. p3 = s2. s2 = p0. s3 = 4. s2 = s2 + s3. l4 = s2. s2 = 1. p1 = s2. lv_br = 2. EXIT. " br 2
            ENDDO.
            s2 = p3. s2 = mem_ld_i32( s2 ). s3 = p2. PERFORM f205 USING s2 s3 CHANGING s2.
          ENDDO.
          p1 = s2. s2 = p0. s3 = 8. s2 = s2 + s3. p3 = s2. s2 = p0. s3 = 4. s2 = s2 + s3. l4 = s2. s2 = p1.
          IF s2 = 0. s2 = 1. ELSE. s2 = 0. ENDIF.
          IF s2 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        ENDDO.
        s2 = p3. s3 = p2. mem_st_i32( iv_addr = s2 iv_val = s3 ). s2 = l4. s3 = p1. mem_st_i32( iv_addr = s2 iv_val = s3 ). s2 = p0. s3 = 0. mem_st_i32( iv_addr = s2 iv_val = s3 ).
        RETURN.
      ENDDO.
      s2 = p3. s3 = p2. mem_st_i32( iv_addr = s2 iv_val = s3 ). s2 = l4. s3 = 1. mem_st_i32( iv_addr = s2 iv_val = s3 ). s2 = p0. s3 = 1. mem_st_i32( iv_addr = s2 iv_val = s3 ).
      RETURN.
    ELSE.
    ENDIF.
    s2 = p0. s3 = 0. mem_st_i32( iv_addr = s2 + 4 iv_val = s3 ). s2 = p0. s3 = 1. mem_st_i32( iv_addr = s2 iv_val = s3 ).
    RETURN.
  ENDDO.
  s2 = p0. s3 = 0. mem_st_i32( iv_addr = s2 + 4 iv_val = s3 ). s2 = p0. s3 = 1. mem_st_i32( iv_addr = s2 iv_val = s3 ).
ENDFORM.

FORM f782 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i CHANGING rv TYPE int8.
  DATA l4 TYPE i. DATA l5 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i.
  DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i.
  DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. p2 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    s0 = p3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). p1 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = -30064771072.
    IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p1. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
      IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p0 = s0. s1 = p0. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = p0. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 192 ). l5 = s0. s0 = p0. s1 = p2. s2 = 12. s1 = s1 + s2. s2 = p1. s3 = 0. PERFORM f184 USING s0 s1 s2 s3 CHANGING s0. p3 = s0.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = 25769803776. p1 = s0. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    DO 1 TIMES. " block
      s0 = p0. s0 = mem_ld_i32( s0 + 252 ). l4 = s0.
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = p0. s1 = 1147268. s2 = 0. PERFORM f970 USING s0 s1 s2 CHANGING s0. s0 = 25769803776. lv_br = 1. EXIT. " br 1
      ELSE.
      ENDIF.
      s1 = p0. s2 = l5. s3 = p3. s4 = p2. s4 = mem_ld_i32( s4 + 12 ). s5 = 1151203. s6 = 3. s7 = -1. s8 = l4.
      DATA(lv_ci_func) = mt_tab0[ s8 + 1 ]. " call_indirect
      s1 = dispatch_t61( iv_idx = lv_ci_func p0 = s1 p1 = s2 p2 = s3 p3 = s4 p4 = s5 p5 = s6 p6 = s7 ).
    ENDDO.
    p1 = s1. s1 = p3. s2 = 16. s1 = s1 - s2. p3 = s1. s2 = p3. s2 = mem_ld_i32( s2 ). l4 = s2. s3 = 1. s2 = s2 - s3. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = l4. s2 = 1.
    IF s1 > s2. s1 = 1. ELSE. s1 = 0. ENDIF.
    IF s1 <> 0. EXIT. ENDIF. " br_if 0
    s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s2 = p3. s2 = zcl_wasm_rt=>extend_u32( s2 ). s3 = -30064771072. s2 = zcl_wasm_rt=>or64( iv_a = s2 iv_b = s3 ). PERFORM f453 USING s1 s2.
  ENDDO.
  s1 = p2. s2 = 16. s1 = s1 + s2. gv_g0 = s1. s1 = p1. rv = s1.
ENDFORM.

FORM f783 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i p4 TYPE i CHANGING rv TYPE int8.
  DATA l5 TYPE f. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i.
  DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 80. s0 = s0 - s1. p2 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    s0 = 25769803776. s1 = p0. s2 = p1. s3 = p2. s4 = p4. s5 = 15. s4 = zcl_wasm_rt=>and32( iv_a = s4 iv_b = s5 ). s5 = 0. PERFORM f231 USING s1 s2 s3 s4 s5 CHANGING s1. p0 = s1. s2 = 0.
    IF s1 < s2. s1 = 1. ELSE. s1 = 0. ENDIF.
    IF s1 <> 0. EXIT. ENDIF. " br_if 0
    s0 = -51539607552. s1 = p0.
    IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
    IF s1 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p4. s1 = 256. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
    IF s0 <> 0.
      s0 = p2. s1 = p2. s1 = zcl_wasm_rt=>mem_ld_f64( iv_mem = mv_mem iv_addr = s1 + 0 ). s2 = '-1900.000000'. s1 = s1 + s2. zcl_wasm_rt=>mem_st_f64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ).
    ELSE.
    ENDIF.
    DO 1 TIMES. " block
      s0 = p2. s1 = p4. s2 = 4. s1 = zcl_wasm_rt=>shr_u32( iv_val = s1 iv_shift = s2 ). s2 = 15. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). s2 = 3. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1.
      s0 = zcl_wasm_rt=>mem_ld_f64( iv_mem = mv_mem iv_addr = s0 + 0 ). l5 = s0. s1 = '-2147483648.000000'.
      IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      s1 = l5. s2 = '2147483647.000000'.
      IF s1 <= s2. s1 = 1. ELSE. s1 = 0. ENDIF.
      s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = l5. s0 = zcl_wasm_rt=>reinterpret_f64_i64( s0 ). p1 = s0. lv_br = 1. EXIT. " br 1
      ELSE.
      ENDIF.
      s0 = l5. s0 = zcl_wasm_rt=>reinterpret_f64_i64( s0 ). p1 = s0. s0 = p1.
      DO 1 TIMES. " block
        s1 = l5. s1 = abs( s1 ). s2 = '2147483648.000000'.
        IF s1 < s2. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0.
          s1 = l5. s1 = trunc( s1 ). lv_br = 1. EXIT. " br 1
        ELSE.
        ENDIF.
        s2 = -2147483648.
      ENDDO.
      p4 = s2. s2 = s2. " convert to f64 s2 = zcl_wasm_rt=>reinterpret_f64_i64( s2 ).
      IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. EXIT. ENDIF. " br_if 0
      s1 = p4. s1 = zcl_wasm_rt=>extend_u32( s1 ). lv_br = 1. EXIT. " br 1
    ENDDO.
    s2 = -51539607552. s3 = p1. s4 = 9221120288580698112. s3 = s3 - s4. s4 = p1. s5 = 9223372036854775807. s4 = zcl_wasm_rt=>and64( iv_a = s4 iv_b = s5 ). s5 = 9218868437227405312.
    IF zcl_wasm_rt=>gt_u64( iv_a = s4 iv_b = s5 ) = abap_true. s4 = 1. ELSE. s4 = 0. ENDIF.
    IF s4 <> 0. s2 = s2. ELSE. s2 = s3. ENDIF.
  ENDDO.
  s3 = p2. s4 = 80. s3 = s3 + s4. gv_g0 = s3. rv = s2.
ENDFORM.

FORM f784 USING p0 TYPE i p1 TYPE i p2 TYPE i p3 TYPE i CHANGING rv TYPE i.
  DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i.
  DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA lv_br TYPE i. s0 = -1. s1 = p2. s1 = mem_ld_i32( s1 ). l6 = s1. s2 = 1.
  s1 = zcl_wasm_rt=>shr_u32( iv_val = s1 iv_shift = s2 ). s2 = l6. s1 = s1 + s2. s2 = l6. s3 = -1431655767.
  IF zcl_wasm_rt=>gt_u32( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
  IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
  l5 = s0. s0 = p0. s0 = mem_ld_i32( s0 + 16 ). l4 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          s0 = p3. s1 = p1. s1 = mem_ld_i32( s1 ). l7 = s1.
          IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0.
            s0 = l4. s1 = 16. s0 = s0 + s1. s1 = l5. s2 = l4. s2 = mem_ld_i32( s2 ).
            DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
            s0 = dispatch_t7( iv_idx = lv_ci_func p0 = s0 p1 = s1 ). l4 = s0.
            IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
            s0 = -1. s1 = p0. s1 = mem_ld_i32( s1 + 16 ). p2 = s1. s1 = mem_ld_i32_8u( s1 + 136 ).
            IF s1 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
            lv_br = 4. EXIT. " br 4
          ELSE.
          ENDIF.
          s0 = l4. s1 = 16. s0 = s0 + s1. s1 = l7. s2 = l5. s3 = l4. s3 = mem_ld_i32( s3 + 8 ).
          DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
          s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). l4 = s0.
          DO 1 TIMES. " block
            s0 = l5.
            IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. EXIT. ENDIF. " br_if 0
            s0 = l4.
            IF s0 <> 0. EXIT. ENDIF. " br_if 0
            s0 = -1. s1 = p0. s1 = mem_ld_i32( s1 + 16 ). p2 = s1. s1 = mem_ld_i32_8u( s1 + 136 ).
            IF s1 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
            lv_br = 4. EXIT. " br 4
          ENDDO.
          s0 = l4.
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          s0 = -1. rv = s0. RETURN.
        ENDDO.
        s0 = l4. s1 = p3. s2 = l6. PERFORM f216 USING s0 s1 s2 CHANGING s0.
      ENDDO.
      s0 = p2. s1 = l5. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p1. s1 = l4. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = 0.
    ENDDO.
    rv = s0. RETURN.
  ENDDO.
  s0 = p2. s1 = 1. mem_st_i32_8( iv_addr = s0 + 136 iv_val = s1 ). s0 = p0. s1 = 1134898. s2 = 0. PERFORM f969 USING s0 s1 s2 CHANGING s0. s0 = p2. s1 = 0. mem_st_i32_8( iv_addr = s0 + 136 iv_val = s1 ). s0 = -1. rv = s0.
ENDFORM.

FORM f785 USING p0 TYPE i p1 TYPE int8 p2 TYPE i CHANGING rv TYPE int8.
  DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i.
  DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA lv_br TYPE i. s0 = gv_g0.
  s1 = 80. s0 = s0 - s1. l3 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    s0 = p1. s1 = -4294967297.
    IF zcl_wasm_rt=>le_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p0. s1 = 1137529. s2 = 0. PERFORM f970 USING s0 s1 s2 CHANGING s0. s0 = 25769803776. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s1 = p1. s1 = zcl_wasm_rt=>wrap_i64( s1 ). l4 = s1. s1 = mem_ld_i32_16u( s1 + 6 ). s2 = 18.
    IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
    IF s1 <> 0.
      s1 = l4. s2 = l4. s2 = mem_ld_i32( s2 ). s3 = 1. s2 = s2 + s3. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = p0. s1 = mem_ld_i32( s1 + 40 ). s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 144 ). l5 = s1. s2 = 32.
      s1 = zcl_wasm_rt=>shr_u64( iv_val = s1 iv_shift = s2 ). s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = -11.
      IF zcl_wasm_rt=>ge_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0.
        s1 = l5. s1 = zcl_wasm_rt=>wrap_i64( s1 ). p2 = s1. s2 = p2. s2 = mem_ld_i32( s2 ). s3 = 1. s2 = s2 + s3. mem_st_i32( iv_addr = s1 iv_val = s2 ).
      ELSE.
      ENDIF.
      s1 = 12884901888. s2 = p0. s3 = p1. s4 = l5. s5 = 1. PERFORM f199 USING s2 s3 s4 s5 CHANGING s2.
      IF s2 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s1 = l3. s2 = p0. s3 = 16. s2 = s2 + s3. s2 = mem_ld_i32( s2 ). p2 = s2. s3 = l3. s4 = 16. s3 = s3 + s4. s4 = p2. s4 = mem_ld_i32( s4 + 68 ). s5 = 436. s4 = s4 + s5. s4 = mem_ld_i32( s4 ). PERFORM f410 USING s2 s3 s4 CHANGING s2.
      mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = p0. s2 = 1147410. s3 = l3. PERFORM f970 USING s1 s2 s3 CHANGING s1. s1 = 25769803776. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s2 = p2. s3 = l4. s3 = mem_ld_i32( s3 + 36 ). s4 = 16. s3 = s3 + s4. s3 = mem_ld_i32_8u( s3 ). s2 = zcl_wasm_rt=>and32( iv_a = s2 iv_b = s3 ). s3 = 0.
    IF s2 <> s3. s2 = 1. ELSE. s2 = 0. ENDIF.
    s2 = zcl_wasm_rt=>extend_u32( s2 ). s3 = 4294967296. s2 = zcl_wasm_rt=>or64( iv_a = s2 iv_b = s3 ).
  ENDDO.
  s3 = l3. s4 = 80. s3 = s3 + s4. gv_g0 = s3. rv = s2.
ENDFORM.

FORM f786 USING p0 TYPE i p1 TYPE i p2 TYPE i.
  DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i.
  DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 32. s0 = s0 - s1. l3 = s0. gv_g0 = s0. s0 = p1. s1 = p1. s2 = p2.
  s1 = s1 + s2. p2 = s1.
  IF zcl_wasm_rt=>gt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = 0. s1 = 0. PERFORM f1271 USING s0 s1.
    RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
  ELSE.
  ENDIF.
  s0 = 4. p1 = s0. s0 = 4. s1 = p0. s1 = mem_ld_i32( s1 ). l5 = s1. s2 = 1. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). l4 = s1. s2 = p2. s3 = p2. s4 = l4.
  IF zcl_wasm_rt=>lt_u32( iv_a = s3 iv_b = s4 ) = abap_true. s3 = 1. ELSE. s3 = 0. ENDIF.
  IF s3 <> 0. s1 = s1. ELSE. s1 = s2. ENDIF.
  p2 = s1. s2 = p2. s3 = 4.
  IF zcl_wasm_rt=>le_u32( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
  IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
  l4 = s0. s1 = 2. s0 = zcl_wasm_rt=>shl32( iv_val = s0 iv_shift = s1 ). l6 = s0. s0 = p2. s1 = 536870912.
  IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
  s1 = 2. s0 = zcl_wasm_rt=>shl32( iv_val = s0 iv_shift = s1 ). p2 = s0.
  DO 1 TIMES. " block
    s0 = l5.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = 0. p1 = s0. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = l3. s1 = l5. s2 = 2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). mem_st_i32( iv_addr = s0 + 28 iv_val = s1 ). s0 = l3. s1 = p0. s1 = mem_ld_i32( s1 + 4 ). mem_st_i32( iv_addr = s0 + 20 iv_val = s1 ).
  ENDDO.
  s0 = l3. s1 = p1. mem_st_i32( iv_addr = s0 + 24 iv_val = s1 ). s0 = l3. s1 = 8. s0 = s0 + s1. s1 = p2. s2 = l6. s3 = l3. s4 = 20. s3 = s3 + s4. PERFORM f584 USING s0 s1 s2 s3. s0 = l3. s0 = mem_ld_i32( s0 + 8 ).
  IF s0 <> 0.
    s0 = l3. s0 = mem_ld_i32( s0 + 12 ). s1 = l3. s1 = mem_ld_i32( s1 + 16 ). PERFORM f1271 USING s0 s1.
    RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
  ELSE.
  ENDIF.
  s0 = l3. s0 = mem_ld_i32( s0 + 12 ). p1 = s0. s0 = p0. s1 = l4. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s1 = p1. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = l3. s1 = 32. s0 = s0 + s1. gv_g0 = s0.
ENDFORM.

FORM f787 USING p0 TYPE i p1 TYPE i p2 TYPE i CHANGING rv TYPE i.
  DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE i. DATA l8 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i.
  DATA lv_br TYPE i. s0 = p0. s1 = 1. s0 = s0 + s1. l5 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      s0 = p0. s0 = mem_ld_i32_8u( s0 ). l3 = s0. s0 = zcl_wasm_rt=>extend8s_i32( s0 ). l7 = s0. s1 = 0.
      IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = l5. p1 = s0. lv_br = 1. EXIT. " br 1
      ELSE.
      ENDIF.
      s0 = -1. l6 = s0. s0 = l7. s1 = -64. s0 = s0 - s1. l3 = s0. s1 = 255. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = 61.
      IF zcl_wasm_rt=>gt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = l3. s0 = zcl_wasm_rt=>extend8s_i32( s0 ). s1 = 2. s0 = zcl_wasm_rt=>shl32( iv_val = s0 iv_shift = s1 ). s1 = 1123732. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). l4 = s0. s1 = p1.
      IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = l4. s1 = 1. s0 = s0 - s1. l8 = s0. s0 = p0. s1 = l4. s0 = s0 + s1. s1 = 1. s0 = s0 + s1. p1 = s0. s0 = l7. s1 = l4. s2 = 1123703. s1 = s1 + s2. s1 = mem_ld_i32_8u( s1 ). s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). l3 = s0.
      DO. " loop
        s0 = l5. s0 = mem_ld_i32_8s( s0 ). p0 = s0. s1 = -65.
        IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
        s0 = p0. s1 = 63. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = l3. s2 = 6. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = zcl_wasm_rt=>or32( iv_a = s0 iv_b = s1 ). l3 = s0. s0 = l5. s1 = 1. s0 = s0 + s1. l5 = s0.
        s0 = l4. s1 = 1. s0 = s0 - s1. l4 = s0.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
      ENDDO.
      s0 = l3. s1 = l8. s2 = 2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s2 = 1123712. s1 = s1 + s2. s1 = mem_ld_i32( s1 ).
      IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
    ENDDO.
    s0 = p2. s1 = p1. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l3. l6 = s0.
  ENDDO.
  s0 = l6. rv = s0.
ENDFORM.

FORM f788 USING p0 TYPE i p1 TYPE i p2 TYPE int8.
  DATA l3 TYPE i. DATA l4 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i.
  DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        s0 = p1. s0 = mem_ld_i32( s0 + 48 ). s1 = p2. s2 = p1. s2 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s2 + 40 ). s3 = p1. s3 = mem_ld_i32( s3 + 12 ). s4 = p1. s4 = mem_ld_i32_8u( s4 + 1 ). s5 = p1. s5 = mem_ld_i32_8u( s5 ).
        l3 = s5.
        IF s5 <> 0. s3 = s3. ELSE. s3 = s4. ENDIF.
        s4 = p1. s4 = mem_ld_i32( s4 + 8 ). s5 = p1. s6 = 8. s5 = s5 + s6. l4 = s5. s6 = l3.
        IF s6 <> 0. s4 = s4. ELSE. s4 = s5. ENDIF.
        PERFORM f1289 USING s0 s1 s2 s3 s4 CHANGING s0. p2 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 25769803776.
        IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = p1. s0 = mem_ld_i32( s0 + 48 ). s0 = mem_ld_i32( s0 + 16 ). s0 = mem_ld_i32( s0 + 376 ). l3 = s0. s0 = mem_ld_i32( s0 ). s1 = l3. s2 = 0. mem_st_i32( iv_addr = s1 iv_val = s2 ).
          IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          s0 = l3. s0 = mem_ld_i32( s0 + 4 ). PERFORM f1168 USING s0.
          RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
        ELSE.
        ENDIF.
        s0 = p1. s0 = mem_ld_i32( s0 + 48 ). l3 = s0. s1 = l3. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s1 = l3. mem_st_i32( iv_addr = s0 + 16 iv_val = s1 ). s0 = p0. s1 = p2.
        zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 8 CHANGING cv_mem = mv_mem ). s0 = p0. s1 = 18. mem_st_i32_8( iv_addr = s0 iv_val = s1 ). s0 = p1. PERFORM f634 USING s0. s0 = p1. s0 = mem_ld_i32( s0 + 48 ).
        PERFORM f117 USING s0. s0 = p1. s0 = mem_ld_i32_8u( s0 ).
        IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
        s0 = p1. s0 = mem_ld_i32( s0 + 4 ).
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        lv_br = 2. EXIT. " br 2
      ENDDO.
      s0 = p0. s1 = 9. mem_st_i32_8( iv_addr = s0 iv_val = s1 ). s0 = p1. PERFORM f634 USING s0. s0 = p1. s0 = mem_ld_i32( s0 + 48 ). PERFORM f117 USING s0. s0 = p1. s0 = mem_ld_i32_8u( s0 ).
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p1. s0 = mem_ld_i32( s0 + 4 ).
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
    ENDDO.
    s0 = l4. s0 = mem_ld_i32( s0 ). PERFORM f125 USING s0.
  ENDDO.
ENDFORM.

FORM f789 USING p0 TYPE i p1 TYPE i.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l3 = s0.
  gv_g0 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          DO 1 TIMES. " block
            DO 1 TIMES. " block
              DO 1 TIMES. " block
                s0 = p1. s0 = mem_ld_i32_8u( s0 ). s1 = 1. s0 = s0 - s1.
                CASE s0.
                  WHEN 0. lv_br = 3. EXIT.
                  WHEN 1. lv_br = 1. EXIT.
                  WHEN 2. lv_br = 2. EXIT.
                  WHEN OTHERS. EXIT.
                ENDCASE.
              ENDDO.
              s0 = 40. l2 = s0. s0 = p1. s0 = mem_ld_i32( s0 + 4 ). p1 = s0. s1 = 65535.
              IF zcl_wasm_rt=>gt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0. lv_br = 4. EXIT. ENDIF. " br_if 4
              s0 = p1. s1 = 1. s0 = s0 - s1. p1 = s0. s1 = 65535. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = 75.
              IF zcl_wasm_rt=>gt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0. lv_br = 4. EXIT. ENDIF. " br_if 4
              s0 = p1. s1 = 65535. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = 1119496. s0 = s0 + s1. lv_br = 3. EXIT. " br 3
            ENDDO.
            s1 = p1. s1 = mem_ld_i32( s1 + 4 ). l2 = s1. s1 = mem_ld_i32( s1 + 4 ). p1 = s1. s1 = l2. s1 = mem_ld_i32( s1 ). l2 = s1. lv_br = 4. EXIT. " br 4
          ENDDO.
          s1 = l3. s2 = 8. s1 = s1 + s2. s2 = p1. s2 = mem_ld_i32( s2 + 4 ). p1 = s2. s2 = mem_ld_i32( s2 ). s3 = p1. s3 = mem_ld_i32( s3 + 4 ). s3 = mem_ld_i32( s3 + 32 ).
          DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
          dispatch_t6( iv_idx = lv_ci_func p0 = s1 p1 = s2 ). s1 = l3. s1 = mem_ld_i32( s1 + 12 ). p1 = s1. s1 = l3. s1 = mem_ld_i32( s1 + 8 ). l2 = s1. lv_br = 3. EXIT. " br 3
        ENDDO.
        s1 = p1. s2 = 1. s1 = s1 + s2.
      ENDDO.
      s1 = mem_ld_i32_8u( s1 ). l2 = s1.
    ENDDO.
    s1 = l2. s2 = 2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). p1 = s1. s2 = 1119004. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). l2 = s1. s1 = p1. s2 = 1118840. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). p1 = s1.
  ENDDO.
  s1 = p0. s2 = p1. mem_st_i32( iv_addr = s1 + 4 iv_val = s2 ). s1 = p0. s2 = l2. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = l3. s2 = 16. s1 = s1 + s2. gv_g0 = s1.
ENDFORM.

FORM f790 USING p0 TYPE i p1 TYPE i p2 TYPE int8 CHANGING rv TYPE int8.
  DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i.
  DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i.
  DATA lv_br TYPE i. s0 = gv_g0. s1 = 32. s0 = s0 - s1. l3 = s0. gv_g0 = s0. s0 = p0. s0 = mem_ld_i32( s0 + 216 ). l5 = s0. s0 = l3. s1 = 8. s0 = s0 + s1. l4 = s0. s1 = 0.
  zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 12 CHANGING cv_mem = mv_mem ). s0 = l4. s1 = -9223372036854775808. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 4 CHANGING cv_mem = mv_mem ). s0 = l4. s1 = l5.
  mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l4. s1 = p1. s2 = 10. s3 = p2. s3 = zcl_wasm_rt=>wrap_i64( s3 ). s4 = 53. s5 = 584. PERFORM f158 USING s0 s1 s2 s3 s4 s5 CHANGING s0. l5 = s0. s0 = l4. s1 = l3. PERFORM f437 USING s0 s1.
  DO 1 TIMES. " block
    s0 = l3. s0 = mem_ld_i32( s0 + 8 ). p1 = s0.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l3. s0 = mem_ld_i32( s0 + 24 ). l4 = s0.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p1. s0 = mem_ld_i32( s0 ). s1 = l4. s2 = 0. s3 = p1. s4 = 4. s3 = s3 + s4. s3 = mem_ld_i32( s3 ).
    DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
    s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ).
  ENDDO.
  DO 1 TIMES. " block
    s0 = l5. s1 = 32. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
    IF s0 <> 0.
      s0 = 25769803776. p2 = s0. s0 = p0. s0 = mem_ld_i32( s0 + 16 ). p1 = s0. s0 = mem_ld_i32_8u( s0 + 136 ).
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p1. s1 = 1. mem_st_i32_8( iv_addr = s0 + 136 iv_val = s1 ). s0 = p0. s1 = 1134898. s2 = 0. PERFORM f969 USING s0 s1 s2 CHANGING s0. s0 = p1. s1 = 0. mem_st_i32_8( iv_addr = s0 + 136 iv_val = s1 ). lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = -51539607552. s1 = l3. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 0 ). p2 = s1. s2 = 9221120288580698112. s1 = s1 - s2. s2 = p2. s3 = 9223372036854775807. s2 = zcl_wasm_rt=>and64( iv_a = s2 iv_b = s3 ).
    s3 = 9218868437227405312.
    IF zcl_wasm_rt=>gt_u64( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
    IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
    p2 = s0.
  ENDDO.
  s0 = l3. s1 = 32. s0 = s0 + s1. gv_g0 = s0. s0 = p2. rv = s0.
ENDFORM.

FORM f791 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i CHANGING rv TYPE int8.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i.
  DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i.
  DATA lv_br TYPE i. s0 = p1. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 12884901888.
  IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = p0. s1 = 1139376. s2 = 0. PERFORM f970 USING s0 s1 s2 CHANGING s0. s0 = 25769803776. rv = s0. RETURN.
  ELSE.
  ENDIF.
  DO 1 TIMES. " block
    s0 = p2.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p0. s0 = mem_ld_i32( s0 + 16 ). p2 = s0. s1 = 16. s0 = s0 + s1. s1 = 24. s2 = p2. s2 = mem_ld_i32( s2 ).
      DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
      s0 = dispatch_t7( iv_idx = lv_ci_func p0 = s0 p1 = s1 ). p2 = s0.
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = 25769803776. s1 = p0. s1 = mem_ld_i32( s1 + 16 ). p2 = s1. s1 = mem_ld_i32_8u( s1 + 136 ).
        IF s1 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
        s0 = p2. s1 = 1. mem_st_i32_8( iv_addr = s0 + 136 iv_val = s1 ). s0 = p0. s1 = 1134898. s2 = 0. PERFORM f969 USING s0 s1 s2 CHANGING s0. s0 = p2. s1 = 0. mem_st_i32_8( iv_addr = s0 + 136 iv_val = s1 ). s0 = 25769803776.
        rv = s0. RETURN.
      ELSE.
      ENDIF.
      s0 = p2. s1 = 1. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s0 = mem_ld_i32( s0 + 216 ). p3 = s0. s0 = p2. s1 = 4. s0 = s0 + s1. p0 = s0. s1 = 0.
      zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 12 CHANGING cv_mem = mv_mem ). s0 = p0. s1 = -9223372036854775808. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 4 CHANGING cv_mem = mv_mem ). s0 = p0.
      s1 = p3. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. PERFORM f1146 USING s0. s0 = p2. s0 = zcl_wasm_rt=>extend_u32( s0 ). s1 = -47244640256. s0 = zcl_wasm_rt=>or64( iv_a = s0 iv_b = s1 ). rv = s0. RETURN.
    ELSE.
    ENDIF.
    s0 = p3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). p1 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
    IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p2 = s0. s1 = p2. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
    ELSE.
    ENDIF.
    s0 = p0. s1 = p1. s2 = 0. PERFORM f210 USING s0 s1 s2 CHANGING s0.
  ENDDO.
  rv = s0.
ENDFORM.

FORM f792 USING p0 TYPE i p1 TYPE i p2 TYPE i.
  DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i.
  DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    s0 = p1. s1 = p2. s1 = mem_ld_i32( s1 + 16 ). l3 = s1.
    IF s1 <> 0.
      s1 = l3.
    ELSE.
      s2 = p2. PERFORM f1071 USING s2 CHANGING s2.
      IF s2 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s2 = p2. s2 = mem_ld_i32( s2 + 16 ).
    ENDIF.
    s3 = p2. s3 = mem_ld_i32( s3 + 20 ). l5 = s3. s2 = s2 - s3.
    IF zcl_wasm_rt=>gt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
    IF s1 <> 0.
      s1 = p2. s2 = p0. s3 = p1. s4 = p2. s4 = mem_ld_i32( s4 + 32 ).
      DATA(lv_ci_func) = mt_tab0[ s4 + 1 ]. " call_indirect
      s1 = dispatch_t11( iv_idx = lv_ci_func p0 = s1 p1 = s2 p2 = s3 ).
      RETURN.
    ELSE.
    ENDIF.
    DO 1 TIMES. " block
      s1 = p2. s1 = mem_ld_i32( s1 + 64 ). s2 = 0.
      IF s1 < s2. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. EXIT. ENDIF. " br_if 0
      s1 = p1.
      IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. EXIT. ENDIF. " br_if 0
      s1 = p0. s2 = p1. s1 = s1 + s2. l4 = s1. s1 = 0. l3 = s1.
      DO 1 TIMES. " block
        DO. " loop
          s1 = l3. s2 = l4. s1 = s1 + s2. s2 = 1. s1 = s1 - s2. s1 = mem_ld_i32_8u( s1 ). s2 = 10.
          IF s1 = s2. s1 = 1. ELSE. s1 = 0. ENDIF.
          IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          s1 = p1. s2 = l3. s3 = 1. s2 = s2 - s3. l3 = s2. s1 = s1 + s2.
          IF s1 <> 0. EXIT. ENDIF. " br_if 0
        ENDDO.
        lv_br = 1. EXIT. " br 1
      ENDDO.
      s1 = p2. s2 = p0. s3 = p1. s4 = l3. s3 = s3 + s4. l4 = s3. s4 = p2. s4 = mem_ld_i32( s4 + 32 ).
      DATA(lv_ci_func) = mt_tab0[ s4 + 1 ]. " call_indirect
      s1 = dispatch_t11( iv_idx = lv_ci_func p0 = s1 p1 = s2 p2 = s3 ). s2 = l4.
      IF zcl_wasm_rt=>lt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s1 = p0. s2 = l4. s1 = s1 + s2. p0 = s1. s1 = 0. s2 = l3. s1 = s1 - s2. p1 = s1. s1 = p2. s1 = mem_ld_i32( s1 + 20 ). l5 = s1.
    ENDDO.
    s1 = l5. s2 = p0. s3 = p1. PERFORM f216 USING s1 s2 s3 CHANGING s1. s1 = p2. s2 = p2. s2 = mem_ld_i32( s2 + 20 ). s3 = p1. s2 = s2 + s3. mem_st_i32( iv_addr = s1 + 20 iv_val = s2 ).
  ENDDO.
ENDFORM.

FORM f793 USING p0 TYPE i p1 TYPE int8 p2 TYPE int8 CHANGING rv TYPE i.
  DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i.
  DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i.
  DATA lv_br TYPE i. s0 = gv_g0. s1 = 48. s0 = s0 - s1. l5 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    s0 = p2. s1 = 2147483647.
    IF zcl_wasm_rt=>le_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p0. s1 = p1. s2 = p2. s2 = zcl_wasm_rt=>wrap_i64( s2 ). s3 = -2147483648. s2 = zcl_wasm_rt=>or32( iv_a = s2 iv_b = s3 ). PERFORM f990 USING s0 s1 s2 CHANGING s0. l3 = s0. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = l5. s1 = p2. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ). s0 = l5. s1 = 16. s0 = s0 + s1. l3 = s0. s1 = 24. s2 = 1147056. s3 = l5. PERFORM f1218 USING s0 s1 s2 s3 CHANGING s0. s0 = p0.
    s1 = l3. s2 = l3. PERFORM f768 USING s2 CHANGING s2. PERFORM f126 USING s0 s1 s2 CHANGING s0. p2 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 25769803776.
    IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = -1. l3 = s0. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = p2. s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = 1. PERFORM f68 USING s0 s1 s2 CHANGING s0. l4 = s0.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = -1. l3 = s0. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = p0. s1 = p1. s2 = l4. PERFORM f990 USING s0 s1 s2 CHANGING s0. l3 = s0. s0 = l4. s1 = 228.
    IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s0 = mem_ld_i32( s0 + 16 ). l6 = s0. s0 = mem_ld_i32( s0 + 56 ). s1 = l4. s2 = 2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s0 = mem_ld_i32( s0 ). p0 = s0. s1 = p0. s1 = mem_ld_i32( s1 ). l4 = s1.
    s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l4. s1 = 1.
    IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l6. s1 = p0. PERFORM f713 USING s0 s1.
  ENDDO.
  s0 = l5. s1 = 48. s0 = s0 + s1. gv_g0 = s0. s0 = l3. rv = s0.
ENDFORM.

FORM f794 USING p0 TYPE i p1 TYPE i p2 TYPE i CHANGING rv TYPE int8.
  DATA l3 TYPE i. DATA l4 TYPE int8. DATA l5 TYPE int8. DATA l6 TYPE int8. DATA l7 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i.
  DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA lv_br TYPE i.
  s0 = p0. s0 = mem_ld_i32( s0 + 36 ). l3 = s0. s1 = l3. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
  DO 1 TIMES. " block
    s0 = p0. s1 = l3. s2 = 2. PERFORM f408 USING s0 s1 s2 CHANGING s0. l4 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 25769803776.
    IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p1. s1 = 0.
    IF s0 <= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = l4. rv = s0. RETURN.
    ELSE.
    ENDIF.
    s0 = p1. s0 = zcl_wasm_rt=>extend_u32( s0 ). l7 = s0.
    DO 1 TIMES. " block
      DO. " loop
        s0 = p2. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). l6 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
        IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = l6. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p1 = s0. s1 = p1. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
        ELSE.
        ENDIF.
        s0 = p0. s1 = l4. s2 = l5. s3 = l6. s4 = 7. PERFORM f770 USING s0 s1 s2 s3 s4 CHANGING s0. s1 = 0.
        IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        s0 = p2. s1 = 8. s0 = s0 + s1. p2 = s0. s0 = l7. s1 = l5. s2 = 1. s1 = s1 + s2. l5 = s1.
        IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
      ENDDO.
      s0 = l4. rv = s0. RETURN.
    ENDDO.
    s0 = l4. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
    IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l4. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p1 = s0. s1 = p1. s1 = mem_ld_i32( s1 ). p1 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p1. s1 = 1.
    IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = l4. PERFORM f453 USING s0 s1.
  ENDDO.
  s0 = 25769803776. rv = s0.
ENDFORM.

FORM f795 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i CHANGING rv TYPE int8.
  DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i.
  DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i.
  DATA lv_br TYPE i. s0 = p0. s1 = p3. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 0 ). PERFORM f151 USING s0 s1 CHANGING s0. p1 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 25769803776.
  IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = p0. s1 = p3. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 8 ). PERFORM f503 USING s0 s1 CHANGING s0. p2 = s0.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p0. s1 = p1. PERFORM f1164 USING s0 s1. s0 = 25769803776. rv = s0. RETURN.
    ELSE.
    ENDIF.
    s0 = p0. s1 = 0. s2 = p1. s2 = zcl_wasm_rt=>wrap_i64( s2 ). p3 = s2. s3 = p2. PERFORM f311 USING s0 s1 s2 s3 CHANGING s0. l4 = s0.
    DO 1 TIMES. " block
      s0 = p2. s1 = 228.
      IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p0. s0 = mem_ld_i32( s0 + 16 ). l5 = s0. s0 = mem_ld_i32( s0 + 56 ). s1 = p2. s2 = 2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s0 = mem_ld_i32( s0 ). p2 = s0. s1 = p2. s1 = mem_ld_i32( s1 ). l6 = s1.
      s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l6. s1 = 1.
      IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = l5. s1 = p2. PERFORM f713 USING s0 s1.
    ENDDO.
    DO 1 TIMES. " block
      s0 = p1. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
      IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p3. s1 = p3. s1 = mem_ld_i32( s1 ). p2 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p2. s1 = 1.
      IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = p1. PERFORM f453 USING s0 s1.
    ENDDO.
    s0 = l4. s1 = 0.
    IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = 25769803776. rv = s0. RETURN.
    ELSE.
    ENDIF.
    s0 = l4. s1 = 0.
    IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    s0 = zcl_wasm_rt=>extend_u32( s0 ). s1 = 4294967296. s0 = zcl_wasm_rt=>or64( iv_a = s0 iv_b = s1 ).
  ELSE.
    s1 = p1.
  ENDIF.
  rv = s1.
ENDFORM.

FORM f796 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i CHANGING rv TYPE int8.
  DATA l4 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i.
  DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. p2 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          s0 = p1. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = 8. s0 = s0 + s1.
          CASE s0.
            WHEN 0. lv_br = 2. EXIT.
            WHEN 1. lv_br = 1. EXIT.
            WHEN 2. lv_br = 1. EXIT.
            WHEN 3. lv_br = 1. EXIT.
            WHEN 4. lv_br = 1. EXIT.
            WHEN 5. lv_br = 1. EXIT.
            WHEN 6. lv_br = 1. EXIT.
            WHEN 7. EXIT.
            WHEN OTHERS. lv_br = 1. EXIT.
          ENDCASE.
        ENDDO.
        s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p3 = s0. s0 = mem_ld_i32_16u( s0 + 6 ). s1 = 7.
        IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = p3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 32 ). p1 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = -34359738368.
        IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      ENDDO.
      s0 = p0. s1 = 1142341. s2 = 0. PERFORM f970 USING s0 s1 s2 CHANGING s0. s0 = 25769803776. l4 = s0. lv_br = 1. EXIT. " br 1
    ENDDO.
    s0 = p2. s1 = p1. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 8 CHANGING cv_mem = mv_mem ). s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p3 = s0. s1 = p3. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2.
    mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p1. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 25769803776.
    IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p1. l4 = s0. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = p0. s1 = 12884901888. s2 = 1. s3 = p2. s4 = 8. s3 = s3 + s4. PERFORM f559 USING s0 s1 s2 s3 CHANGING s0. l4 = s0. s0 = p1. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
    IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p3. s1 = p3. s1 = mem_ld_i32( s1 ). p3 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p3. s1 = 1.
    IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = p1. PERFORM f453 USING s0 s1.
  ENDDO.
  s0 = p2. s1 = 16. s0 = s0 + s1. gv_g0 = s0. s0 = l4. rv = s0.
ENDFORM.

FORM f797 USING p0 TYPE i p1 TYPE i.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i.
  DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i.
  DATA lv_br TYPE i. s0 = gv_g0. s1 = 48. s0 = s0 - s1. l2 = s0. gv_g0 = s0. s0 = l2. s1 = 0. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 36 CHANGING cv_mem = mv_mem ). s0 = l2. s1 = -9223372036854775808.
  zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 28 CHANGING cv_mem = mv_mem ). s0 = l2. s1 = 0. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 12 CHANGING cv_mem = mv_mem ). s0 = l2. s1 = -9223372036854775808.
  zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 4 CHANGING cv_mem = mv_mem ). s0 = l2. s1 = p0. s1 = mem_ld_i32( s1 ). l3 = s1. mem_st_i32( iv_addr = s0 + 24 iv_val = s1 ). s0 = l2. s1 = l3.
  mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s1 = l2. s2 = 24. s1 = s1 + s2. s2 = l2. s3 = 0. s4 = p1. s5 = 15. s4 = s4 + s5. s5 = 3. s4 = zcl_wasm_rt=>div_u32( iv_a = s4 iv_b = s5 ). s5 = 1. s4 = s4 + s5. s5 = 0.
  PERFORM f297 USING s0 s1 s2 s3 s4 s5. s0 = p0. s1 = p0. s2 = l2. s3 = p1. s4 = 0. s5 = 735. PERFORM f815 USING s0 s1 s2 s3 s4 s5 CHANGING s0.
  DO 1 TIMES. " block
    s0 = l2. s0 = mem_ld_i32( s0 + 24 ). p0 = s0.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l2. s0 = mem_ld_i32( s0 + 40 ). p1 = s0.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s0 = mem_ld_i32( s0 ). s1 = p1. s2 = 0. s3 = p0. s4 = 4. s3 = s3 + s4. s3 = mem_ld_i32( s3 ).
    DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
    s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ).
  ENDDO.
  DO 1 TIMES. " block
    s0 = l2. s0 = mem_ld_i32( s0 ). p0 = s0.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l2. s0 = mem_ld_i32( s0 + 16 ). p1 = s0.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s0 = mem_ld_i32( s0 ). s1 = p1. s2 = 0. s3 = p0. s4 = 4. s3 = s3 + s4. s3 = mem_ld_i32( s3 ).
    DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
    s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ).
  ENDDO.
  s0 = l2. s1 = 48. s0 = s0 + s1. gv_g0 = s0.
ENDFORM.

FORM f798 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i CHANGING rv TYPE int8.
  DATA l4 TYPE i. DATA l5 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i.
  DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l4 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    s0 = p0. s1 = 0. s2 = p3. s2 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s2 + 0 ). s3 = 0. PERFORM f184 USING s0 s1 s2 s3 CHANGING s0. p2 = s0.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = 25769803776. p1 = s0. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = p2. p3 = s0.
    DO. " loop
      DO 1 TIMES. " block
        s0 = p3. s0 = mem_ld_i32_8s( s0 ). l5 = s0. s1 = 0.
        IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = l5. s1 = 255. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). l5 = s0. s1 = 9. s0 = s0 - s1. s1 = 5.
          IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          s1 = l5. s2 = 32.
          IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
          s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          s0 = p3. s1 = 1. s0 = s0 + s1. p3 = s0. lv_br = 2. EXIT. " br 2
        ELSE.
        ENDIF.
        s0 = p3. s1 = 6. s2 = l4. s3 = 12. s2 = s2 + s3. PERFORM f787 USING s0 s1 s2 CHANGING s0. PERFORM f822 USING s0 CHANGING s0.
        IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = l4. s0 = mem_ld_i32( s0 + 12 ). p3 = s0. lv_br = 1. EXIT. " br 1
      ENDDO.
    ENDDO.
    s0 = p0. s1 = p3. s2 = 0. s3 = 10. s4 = 0. s5 = 0. PERFORM f43 USING s0 s1 s2 s3 s4 s5 CHANGING s0. p1 = s0. s0 = p2. s1 = 16. s0 = s0 - s1. p2 = s0. s1 = p2. s1 = mem_ld_i32( s1 ). p3 = s1. s2 = 1. s1 = s1 - s2.
    mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p3. s1 = 1.
    IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = p2. s1 = zcl_wasm_rt=>extend_u32( s1 ). s2 = -30064771072. s1 = zcl_wasm_rt=>or64( iv_a = s1 iv_b = s2 ). PERFORM f453 USING s0 s1.
  ENDDO.
  s0 = l4. s1 = 16. s0 = s0 + s1. gv_g0 = s0. s0 = p1. rv = s0.
ENDFORM.

FORM f799 USING p0 TYPE i.
  DATA l1 TYPE i. DATA l2 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i.
  DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 32. s0 = s0 - s1. l2 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          s0 = 1215024. s0 = mem_ld_i32_8u( s0 ). l1 = s0. s1 = 2.
          IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0.
            s0 = l1. s1 = 3. s0 = s0 - s1.
            IF s0 <> 0. lv_br = 4. EXIT. ENDIF. " br_if 4
            lv_br = 1. EXIT. " br 1
          ELSE.
          ENDIF.
          s0 = 1215024. s1 = 2. mem_st_i32_8( iv_addr = s0 iv_val = s1 ). s0 = p0. s0 = mem_ld_i32( s0 ). l1 = s0. s0 = p0. s1 = 0. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l1.
          IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          s0 = 1215076. s0 = mem_ld_i32_8u( s0 ). s0 = 1024. PERFORM f18 USING s0 CHANGING s0. p0 = s0.
          IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
          s0 = l1. s1 = 0. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ). s0 = l1. s1 = 0. mem_st_i32_8( iv_addr = s0 + 28 iv_val = s1 ). s0 = l1. s1 = 0.
          mem_st_i32( iv_addr = s0 + 24 iv_val = s1 ). s0 = l1. s1 = p0. mem_st_i32( iv_addr = s0 + 20 iv_val = s1 ). s0 = l1. s1 = 4398046511104. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 12 CHANGING cv_mem = mv_mem ).
          s0 = l1. s1 = 8. s0 = s0 + s1. s1 = 0. mem_st_i32_8( iv_addr = s0 iv_val = s1 ). s0 = 1215024. s1 = 3. mem_st_i32_8( iv_addr = s0 iv_val = s1 ).
        ENDDO.
        s0 = l2. s1 = 32. s0 = s0 + s1. gv_g0 = s0.
        RETURN.
      ENDDO.
      s0 = 1116992. PERFORM f1357 USING s0.
      RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
    ENDDO.
    s0 = 1. s1 = 1024. PERFORM f1271 USING s0 s1.
    RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
  ENDDO.
  s0 = l2. s1 = 0. mem_st_i32( iv_addr = s0 + 24 iv_val = s1 ). s0 = l2. s1 = 1. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = l2. s1 = 1118776. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = l2. s1 = 4.
  zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 16 CHANGING cv_mem = mv_mem ). s0 = l2. s1 = 8. s0 = s0 + s1. s1 = 1116976. PERFORM f696 USING s0 s1.
  RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
ENDFORM.

