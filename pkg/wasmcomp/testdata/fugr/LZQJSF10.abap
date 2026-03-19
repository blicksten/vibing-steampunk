FORM f800 USING p0 TYPE i p1 TYPE int8 p2 TYPE i.
  DATA l3 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i.
  DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA lv_br TYPE i. s0 = p2. s1 = p1. s2 = 151. s3 = p1. s4 = 0.
  PERFORM f192 USING s0 s1 s2 s3 s4 CHANGING s0. p1 = s0. s0 = p2. s1 = p2. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
  DO 1 TIMES. " block
    s0 = p2. s1 = p1. PERFORM f1108 USING s0 s1 CHANGING s0.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      DO 1 TIMES. " block
        s0 = p1. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
        IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l3 = s0. s1 = l3. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 - s2. l3 = s1. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l3. s1 = 0.
        IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = p2. s1 = p1. PERFORM f1384 USING s0 s1.
      ENDDO.
      s0 = p2. PERFORM f117 USING s0. s0 = 0. p2 = s0. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = p1. s1 = p2. PERFORM f780 USING s0 s1 CHANGING s0. s1 = 9. s0 = s0 - s1. s1 = 255. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = 2.
    IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    DO 1 TIMES. " block
      s0 = p1. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
      IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p0 = s0. s1 = p0. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 - s2. p0 = s1. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s1 = 0.
      IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p2. s1 = p1. PERFORM f1384 USING s0 s1.
    ENDDO.
    s0 = p2. PERFORM f117 USING s0. s0 = 1054192. PERFORM f1357 USING s0.
    RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
  ENDDO.
  s0 = p0. s1 = p2. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = p0. s1 = p1. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ).
ENDFORM.

FORM f801 USING p0 TYPE i p1 TYPE i p2 TYPE int8 CHANGING rv TYPE i.
  DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE f. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i.
  DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l3 = s0.
  gv_g0 = s0.
  DO 1 TIMES. " block
    s0 = p0. s1 = p2. s2 = 0. PERFORM f287 USING s0 s1 s2 CHANGING s0. p2 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 25769803776.
    IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = 'NaN'. l6 = s0. s0 = -1. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          DO 1 TIMES. " block
            DO 1 TIMES. " block
              s1 = 7. s2 = p2. s3 = 32. s2 = zcl_wasm_rt=>shr_u64( iv_val = s2 iv_shift = s3 ). s2 = zcl_wasm_rt=>wrap_i64( s2 ). l4 = s2. s3 = l4. s4 = 7. s3 = s3 - s4. s4 = -18.
              IF zcl_wasm_rt=>lt_u32( iv_a = s3 iv_b = s4 ) = abap_true. s3 = 1. ELSE. s3 = 0. ENDIF.
              IF s3 <> 0. s1 = s1. ELSE. s1 = s2. ENDIF.
              s2 = 10. s1 = s1 + s2.
              CASE s1.
                WHEN 0. lv_br = 1. EXIT.
                WHEN 1. lv_br = 1. EXIT.
                WHEN 2. lv_br = 2. EXIT.
                WHEN 3. lv_br = 2. EXIT.
                WHEN 4. lv_br = 2. EXIT.
                WHEN 5. lv_br = 2. EXIT.
                WHEN 6. lv_br = 2. EXIT.
                WHEN 7. lv_br = 2. EXIT.
                WHEN 8. lv_br = 2. EXIT.
                WHEN 9. lv_br = 2. EXIT.
                WHEN 10. lv_br = 3. EXIT.
                WHEN 11. lv_br = 2. EXIT.
                WHEN 12. lv_br = 2. EXIT.
                WHEN 13. lv_br = 2. EXIT.
                WHEN 14. lv_br = 2. EXIT.
                WHEN 15. lv_br = 2. EXIT.
                WHEN 16. lv_br = 2. EXIT.
                WHEN 17. EXIT.
                WHEN OTHERS. lv_br = 2. EXIT.
              ENDCASE.
            ENDDO.
            s1 = l3. s2 = p2. s3 = 9221120288580698112. s2 = s2 + s3. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s2 iv_addr = s1 + 8 CHANGING cv_mem = mv_mem ). lv_br = 3. EXIT. " br 3
          ENDDO.
          s1 = p2. s1 = zcl_wasm_rt=>wrap_i64( s1 ). l5 = s1. s2 = 4. s1 = s1 + s2. s2 = l3. s3 = 8. s2 = s2 + s3. PERFORM f437 USING s1 s2. s1 = l4. s2 = -11.
          IF zcl_wasm_rt=>lt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
          IF s1 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
          s1 = l5. s2 = l5. s2 = mem_ld_i32( s2 ). l4 = s2. s3 = 1. s2 = s2 - s3. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = l4. s2 = 1.
          IF s1 > s2. s1 = 1. ELSE. s1 = 0. ENDIF.
          IF s1 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
          s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s2 = p2. PERFORM f453 USING s1 s2. lv_br = 2. EXIT. " br 2
        ENDDO.
        RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
      ENDDO.
      s1 = l3. s2 = p2. s2 = zcl_wasm_rt=>wrap_i64( s2 ). s2 = s2. " convert to f64 zcl_wasm_rt=>mem_st_f64( EXPORTING iv_val = s2 iv_addr = s1 + 8 CHANGING cv_mem = mv_mem ).
    ENDDO.
    s1 = l3. s1 = zcl_wasm_rt=>mem_ld_f64( iv_mem = mv_mem iv_addr = s1 + 8 ). l6 = s1. s1 = 0.
  ENDDO.
  s2 = p1. s3 = l6. zcl_wasm_rt=>mem_st_f64( EXPORTING iv_val = s3 iv_addr = s2 + 0 CHANGING cv_mem = mv_mem ). s2 = l3. s3 = 16. s2 = s2 + s3. gv_g0 = s2. rv = s1.
ENDFORM.

FORM f802 USING p0 TYPE i p1 TYPE i p2 TYPE i p3 TYPE i p4 TYPE i p5 TYPE i p6 TYPE i CHANGING rv TYPE i.
  DATA l7 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i.
  DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l7 = s0. gv_g0 = s0. s0 = l7. s1 = p0.
  s1 = mem_ld_i32( s1 + 20 ). s2 = p1. s3 = p2. s4 = p0. s4 = mem_ld_i32( s4 + 24 ). s4 = mem_ld_i32( s4 + 12 ).
  DATA(lv_ci_func) = mt_tab0[ s4 + 1 ]. " call_indirect
  s1 = dispatch_t11( iv_idx = lv_ci_func p0 = s1 p1 = s2 p2 = s3 ). mem_st_i32_8( iv_addr = s0 + 12 iv_val = s1 ). s0 = l7. s1 = p0. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = l7. s1 = 0. mem_st_i32_8( iv_addr = s0 + 13 iv_val = s1 ).
  s0 = l7. s1 = 0. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = l7. s1 = 4. s0 = s0 + s1. s1 = p3. s2 = p4. PERFORM f691 USING s0 s1 s2 CHANGING s0. s1 = p5. s2 = p6. PERFORM f691 USING s0 s1 s2 CHANGING s0. p0 = s0. s0 = l7.
  s0 = mem_ld_i32_8u( s0 + 12 ). p1 = s0.
  DO 1 TIMES. " block
    s0 = p1. s1 = 0.
    IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    s1 = p0. s1 = mem_ld_i32( s1 ). p2 = s1.
    IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
    IF s1 <> 0. EXIT. ENDIF. " br_if 0
    s0 = 1. s1 = p1.
    IF s1 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l7. s0 = mem_ld_i32( s0 + 8 ). p1 = s0.
    DO 1 TIMES. " block
      s0 = p2. s1 = 1.
      IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = l7. s0 = mem_ld_i32_8u( s0 + 13 ).
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p1. s0 = mem_ld_i32_8u( s0 + 28 ). s1 = 4. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = 1. s1 = p1. s1 = mem_ld_i32( s1 + 20 ). s2 = 1079704. s3 = 1. s4 = p1. s4 = mem_ld_i32( s4 + 24 ). s4 = mem_ld_i32( s4 + 12 ).
      DATA(lv_ci_func) = mt_tab0[ s4 + 1 ]. " call_indirect
      s1 = dispatch_t11( iv_idx = lv_ci_func p0 = s1 p1 = s2 p2 = s3 ).
      IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
    ENDDO.
    s0 = p1. s0 = mem_ld_i32( s0 + 20 ). s1 = 1116251. s2 = 1. s3 = p1. s3 = mem_ld_i32( s3 + 24 ). s3 = mem_ld_i32( s3 + 12 ).
    DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
    s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ).
  ENDDO.
  s1 = l7. s2 = 16. s1 = s1 + s2. gv_g0 = s1. rv = s0.
ENDFORM.

FORM f803 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA l2 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i.
  DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l2 = s0. gv_g0 = s0. s0 = l2. s1 = p0. mem_st_i32( iv_addr = s0 iv_val = s1 ).
  s0 = l2. s1 = p1. s1 = mem_ld_i32( s1 + 20 ). s2 = 1116212. s3 = 6. s4 = p1. s4 = mem_ld_i32( s4 + 24 ). s4 = mem_ld_i32( s4 + 12 ).
  DATA(lv_ci_func) = mt_tab0[ s4 + 1 ]. " call_indirect
  s1 = dispatch_t11( iv_idx = lv_ci_func p0 = s1 p1 = s2 p2 = s3 ). mem_st_i32_8( iv_addr = s0 + 12 iv_val = s1 ). s0 = l2. s1 = p1. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = l2. s1 = 0. mem_st_i32_8( iv_addr = s0 + 13 iv_val = s1 ).
  s0 = l2. s1 = 0. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = l2. s1 = 4. s0 = s0 + s1. s1 = l2. s2 = 1060800. PERFORM f691 USING s0 s1 s2 CHANGING s0. p1 = s0. s0 = l2. s0 = mem_ld_i32_8u( s0 + 12 ). p0 = s0.
  DO 1 TIMES. " block
    s0 = p0. s1 = 0.
    IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    s1 = p1. s1 = mem_ld_i32( s1 ). p1 = s1.
    IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
    IF s1 <> 0. EXIT. ENDIF. " br_if 0
    s0 = 1. s1 = p0.
    IF s1 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l2. s0 = mem_ld_i32( s0 + 8 ). p0 = s0.
    DO 1 TIMES. " block
      s0 = p1. s1 = 1.
      IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = l2. s0 = mem_ld_i32_8u( s0 + 13 ).
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p0. s0 = mem_ld_i32_8u( s0 + 28 ). s1 = 4. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = 1. s1 = p0. s1 = mem_ld_i32( s1 + 20 ). s2 = 1079704. s3 = 1. s4 = p0. s4 = mem_ld_i32( s4 + 24 ). s4 = mem_ld_i32( s4 + 12 ).
      DATA(lv_ci_func) = mt_tab0[ s4 + 1 ]. " call_indirect
      s1 = dispatch_t11( iv_idx = lv_ci_func p0 = s1 p1 = s2 p2 = s3 ).
      IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
    ENDDO.
    s0 = p0. s0 = mem_ld_i32( s0 + 20 ). s1 = 1116251. s2 = 1. s3 = p0. s3 = mem_ld_i32( s3 + 24 ). s3 = mem_ld_i32( s3 + 12 ).
    DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
    s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ).
  ENDDO.
  s1 = l2. s2 = 16. s1 = s1 + s2. gv_g0 = s1. rv = s0.
ENDFORM.

FORM f804 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA l2 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i.
  DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l2 = s0. gv_g0 = s0. s0 = l2. s1 = p0. mem_st_i32( iv_addr = s0 iv_val = s1 ).
  s0 = l2. s1 = p1. s1 = mem_ld_i32( s1 + 20 ). s2 = 1075288. s3 = 15. s4 = p1. s4 = mem_ld_i32( s4 + 24 ). s4 = mem_ld_i32( s4 + 12 ).
  DATA(lv_ci_func) = mt_tab0[ s4 + 1 ]. " call_indirect
  s1 = dispatch_t11( iv_idx = lv_ci_func p0 = s1 p1 = s2 p2 = s3 ). mem_st_i32_8( iv_addr = s0 + 12 iv_val = s1 ). s0 = l2. s1 = p1. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = l2. s1 = 0. mem_st_i32_8( iv_addr = s0 + 13 iv_val = s1 ).
  s0 = l2. s1 = 0. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = l2. s1 = 4. s0 = s0 + s1. s1 = l2. s2 = 1075304. PERFORM f691 USING s0 s1 s2 CHANGING s0. p1 = s0. s0 = l2. s0 = mem_ld_i32_8u( s0 + 12 ). p0 = s0.
  DO 1 TIMES. " block
    s0 = p0. s1 = 0.
    IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    s1 = p1. s1 = mem_ld_i32( s1 ). p1 = s1.
    IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
    IF s1 <> 0. EXIT. ENDIF. " br_if 0
    s0 = 1. s1 = p0.
    IF s1 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l2. s0 = mem_ld_i32( s0 + 8 ). p0 = s0.
    DO 1 TIMES. " block
      s0 = p1. s1 = 1.
      IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = l2. s0 = mem_ld_i32_8u( s0 + 13 ).
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p0. s0 = mem_ld_i32_8u( s0 + 28 ). s1 = 4. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = 1. s1 = p0. s1 = mem_ld_i32( s1 + 20 ). s2 = 1079704. s3 = 1. s4 = p0. s4 = mem_ld_i32( s4 + 24 ). s4 = mem_ld_i32( s4 + 12 ).
      DATA(lv_ci_func) = mt_tab0[ s4 + 1 ]. " call_indirect
      s1 = dispatch_t11( iv_idx = lv_ci_func p0 = s1 p1 = s2 p2 = s3 ).
      IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
    ENDDO.
    s0 = p0. s0 = mem_ld_i32( s0 + 20 ). s1 = 1116251. s2 = 1. s3 = p0. s3 = mem_ld_i32( s3 + 24 ). s3 = mem_ld_i32( s3 + 12 ).
    DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
    s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ).
  ENDDO.
  s1 = l2. s2 = 16. s1 = s1 + s2. gv_g0 = s1. rv = s0.
ENDFORM.

FORM f805 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA l2 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i.
  DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l2 = s0. gv_g0 = s0. s0 = l2. s1 = p0. mem_st_i32( iv_addr = s0 iv_val = s1 ).
  s0 = l2. s1 = p1. s1 = mem_ld_i32( s1 + 20 ). s2 = 1117920. s3 = 8. s4 = p1. s4 = mem_ld_i32( s4 + 24 ). s4 = mem_ld_i32( s4 + 12 ).
  DATA(lv_ci_func) = mt_tab0[ s4 + 1 ]. " call_indirect
  s1 = dispatch_t11( iv_idx = lv_ci_func p0 = s1 p1 = s2 p2 = s3 ). mem_st_i32_8( iv_addr = s0 + 12 iv_val = s1 ). s0 = l2. s1 = p1. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = l2. s1 = 0. mem_st_i32_8( iv_addr = s0 + 13 iv_val = s1 ).
  s0 = l2. s1 = 0. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = l2. s1 = 4. s0 = s0 + s1. s1 = l2. s2 = 1117928. PERFORM f691 USING s0 s1 s2 CHANGING s0. p1 = s0. s0 = l2. s0 = mem_ld_i32_8u( s0 + 12 ). p0 = s0.
  DO 1 TIMES. " block
    s0 = p0. s1 = 0.
    IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    s1 = p1. s1 = mem_ld_i32( s1 ). p1 = s1.
    IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
    IF s1 <> 0. EXIT. ENDIF. " br_if 0
    s0 = 1. s1 = p0.
    IF s1 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l2. s0 = mem_ld_i32( s0 + 8 ). p0 = s0.
    DO 1 TIMES. " block
      s0 = p1. s1 = 1.
      IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = l2. s0 = mem_ld_i32_8u( s0 + 13 ).
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p0. s0 = mem_ld_i32_8u( s0 + 28 ). s1 = 4. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = 1. s1 = p0. s1 = mem_ld_i32( s1 + 20 ). s2 = 1079704. s3 = 1. s4 = p0. s4 = mem_ld_i32( s4 + 24 ). s4 = mem_ld_i32( s4 + 12 ).
      DATA(lv_ci_func) = mt_tab0[ s4 + 1 ]. " call_indirect
      s1 = dispatch_t11( iv_idx = lv_ci_func p0 = s1 p1 = s2 p2 = s3 ).
      IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
    ENDDO.
    s0 = p0. s0 = mem_ld_i32( s0 + 20 ). s1 = 1116251. s2 = 1. s3 = p0. s3 = mem_ld_i32( s3 + 24 ). s3 = mem_ld_i32( s3 + 12 ).
    DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
    s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ).
  ENDDO.
  s1 = l2. s2 = 16. s1 = s1 + s2. gv_g0 = s1. rv = s0.
ENDFORM.

FORM f806 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i.
  DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i.
  DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l2 = s0. gv_g0 = s0. s0 = l2. s1 = p0. s1 = mem_ld_i32( s1 ). p0 = s1. s2 = 4. s1 = s1 + s2. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = p1. s0 = mem_ld_i32( s0 + 20 ).
  s1 = 1114380. s2 = 9. s3 = p1. s3 = mem_ld_i32( s3 + 24 ). s3 = mem_ld_i32( s3 + 12 ).
  DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
  s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). l3 = s0. s0 = l2. s1 = 0. mem_st_i32_8( iv_addr = s0 + 13 iv_val = s1 ). s0 = l2. s1 = l3. mem_st_i32_8( iv_addr = s0 + 12 iv_val = s1 ). s0 = l2. s1 = p1.
  mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = l2. s1 = 8. s0 = s0 + s1. s1 = 1114389. s2 = 11. s3 = p0. s4 = 1061756. PERFORM f629 USING s0 s1 s2 s3 s4 CHANGING s0. s1 = 1114416. s2 = 9. s3 = l2. s4 = 4. s3 = s3 + s4. s4 = 1061788.
  PERFORM f629 USING s0 s1 s2 s3 s4 CHANGING s0. l3 = s0. s0 = l2. s0 = mem_ld_i32_8u( s0 + 12 ). p0 = s0.
  DO 1 TIMES. " block
    s0 = p0. s1 = 0.
    IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    s1 = l2. s1 = mem_ld_i32_8u( s1 + 13 ).
    IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
    IF s1 <> 0. EXIT. ENDIF. " br_if 0
    s0 = 1. s1 = p0.
    IF s1 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l3. s0 = mem_ld_i32( s0 ). p0 = s0. s0 = mem_ld_i32_8u( s0 + 28 ). s1 = 4. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p0. s0 = mem_ld_i32( s0 + 20 ). s1 = 1080545. s2 = 2. s3 = p0. s3 = mem_ld_i32( s3 + 24 ). s3 = mem_ld_i32( s3 + 12 ).
      DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
      s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s1 = p0. s1 = mem_ld_i32( s1 + 20 ). s2 = 1080042. s3 = 1. s4 = p0. s4 = mem_ld_i32( s4 + 24 ). s4 = mem_ld_i32( s4 + 12 ).
    DATA(lv_ci_func) = mt_tab0[ s4 + 1 ]. " call_indirect
    s1 = dispatch_t11( iv_idx = lv_ci_func p0 = s1 p1 = s2 p2 = s3 ).
  ENDDO.
  s2 = l2. s3 = 16. s2 = s2 + s3. gv_g0 = s2. rv = s1.
ENDFORM.

FORM f807 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i.
  DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i.
  DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l2 = s0. gv_g0 = s0. s0 = l2. s1 = p0. s1 = mem_ld_i32( s1 ). p0 = s1. s2 = 4. s1 = s1 + s2. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = p1. s0 = mem_ld_i32( s0 + 20 ).
  s1 = 1114380. s2 = 9. s3 = p1. s3 = mem_ld_i32( s3 + 24 ). s3 = mem_ld_i32( s3 + 12 ).
  DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
  s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). l3 = s0. s0 = l2. s1 = 0. mem_st_i32_8( iv_addr = s0 + 13 iv_val = s1 ). s0 = l2. s1 = l3. mem_st_i32_8( iv_addr = s0 + 12 iv_val = s1 ). s0 = l2. s1 = p1.
  mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = l2. s1 = 8. s0 = s0 + s1. s1 = 1114389. s2 = 11. s3 = p0. s4 = 1078524. PERFORM f629 USING s0 s1 s2 s3 s4 CHANGING s0. s1 = 1114416. s2 = 9. s3 = l2. s4 = 4. s3 = s3 + s4. s4 = 1078556.
  PERFORM f629 USING s0 s1 s2 s3 s4 CHANGING s0. l3 = s0. s0 = l2. s0 = mem_ld_i32_8u( s0 + 12 ). p0 = s0.
  DO 1 TIMES. " block
    s0 = p0. s1 = 0.
    IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    s1 = l2. s1 = mem_ld_i32_8u( s1 + 13 ).
    IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
    IF s1 <> 0. EXIT. ENDIF. " br_if 0
    s0 = 1. s1 = p0.
    IF s1 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l3. s0 = mem_ld_i32( s0 ). p0 = s0. s0 = mem_ld_i32_8u( s0 + 28 ). s1 = 4. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p0. s0 = mem_ld_i32( s0 + 20 ). s1 = 1080545. s2 = 2. s3 = p0. s3 = mem_ld_i32( s3 + 24 ). s3 = mem_ld_i32( s3 + 12 ).
      DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
      s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s1 = p0. s1 = mem_ld_i32( s1 + 20 ). s2 = 1080042. s3 = 1. s4 = p0. s4 = mem_ld_i32( s4 + 24 ). s4 = mem_ld_i32( s4 + 12 ).
    DATA(lv_ci_func) = mt_tab0[ s4 + 1 ]. " call_indirect
    s1 = dispatch_t11( iv_idx = lv_ci_func p0 = s1 p1 = s2 p2 = s3 ).
  ENDDO.
  s2 = l2. s3 = 16. s2 = s2 + s3. gv_g0 = s2. rv = s1.
ENDFORM.

FORM f808 USING p0 TYPE i p1 TYPE int8 p2 TYPE i CHANGING rv TYPE int8.
  DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i.
  DATA s11 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l3 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          s0 = p1. s1 = -4294967296.
          IF zcl_wasm_rt=>lt_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l4 = s0. s0 = mem_ld_i32_16u( s0 + 6 ). l5 = s0. s0 = p2.
          IF s0 <> 0.
            s0 = l5. s1 = 32.
            IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
            s0 = l4. s1 = 32. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). p2 = s0. s1 = 12. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). s1 = 32. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). s1 = 4. s0 = s0 + s1. s0 = mem_ld_i32_8u( s0 ).
            IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
            s0 = p0. s1 = 1148080. s2 = 0. PERFORM f970 USING s0 s1 s2 CHANGING s0. s0 = 25769803776. lv_br = 4. EXIT. " br 4
          ELSE.
          ENDIF.
          s1 = l5. s2 = 21. s1 = s1 - s2. s2 = 65535. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). s2 = 11.
          IF zcl_wasm_rt=>lt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
          IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        ENDDO.
        s1 = l3. s2 = 1135652. s3 = 1135229. s4 = p2.
        IF s4 <> 0. s2 = s2. ELSE. s2 = s3. ENDIF.
        mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = p0. s2 = 1139205. s3 = l3. PERFORM f970 USING s1 s2 s3 CHANGING s1. s1 = 25769803776. lv_br = 2. EXIT. " br 2
      ENDDO.
      s2 = 0. s3 = l4. s4 = 32. s3 = s3 + s4. s3 = mem_ld_i32( s3 ). p2 = s3. s4 = 12. s3 = s3 + s4. s3 = mem_ld_i32( s3 ). s4 = 32. s3 = s3 + s4. s3 = mem_ld_i32( s3 ). s4 = 4. s3 = s3 + s4. s3 = mem_ld_i32_8u( s3 ).
      IF s3 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
    ENDDO.
    s2 = p2. s2 = zcl_wasm_rt=>mem_ld_i64_ext( iv_mem = mv_mem iv_addr = s2 + 20 iv_op = 53 ).
  ENDDO.
  s3 = l3. s4 = 16. s3 = s3 + s4. gv_g0 = s3. rv = s2.
ENDFORM.

FORM f809 USING p0 TYPE i p1 TYPE int8 p2 TYPE i CHANGING rv TYPE int8.
  DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i.
  DATA s11 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l3 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          s0 = p1. s1 = -4294967296.
          IF zcl_wasm_rt=>lt_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l4 = s0. s0 = mem_ld_i32_16u( s0 + 6 ). l5 = s0. s0 = p2.
          IF s0 <> 0.
            s0 = l5. s1 = 32.
            IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
            s0 = l4. s1 = 32. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). p2 = s0. s1 = 12. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). s1 = 32. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). s1 = 4. s0 = s0 + s1. s0 = mem_ld_i32_8u( s0 ).
            IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
            s0 = p0. s1 = 1148080. s2 = 0. PERFORM f970 USING s0 s1 s2 CHANGING s0. s0 = 25769803776. lv_br = 4. EXIT. " br 4
          ELSE.
          ENDIF.
          s1 = l5. s2 = 21. s1 = s1 - s2. s2 = 65535. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). s2 = 11.
          IF zcl_wasm_rt=>lt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
          IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        ENDDO.
        s1 = l3. s2 = 1135652. s3 = 1135229. s4 = p2.
        IF s4 <> 0. s2 = s2. ELSE. s2 = s3. ENDIF.
        mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = p0. s2 = 1139205. s3 = l3. PERFORM f970 USING s1 s2 s3 CHANGING s1. s1 = 25769803776. lv_br = 2. EXIT. " br 2
      ENDDO.
      s2 = 0. s3 = l4. s4 = 32. s3 = s3 + s4. s3 = mem_ld_i32( s3 ). p2 = s3. s4 = 12. s3 = s3 + s4. s3 = mem_ld_i32( s3 ). s4 = 32. s3 = s3 + s4. s3 = mem_ld_i32( s3 ). s4 = 4. s3 = s3 + s4. s3 = mem_ld_i32_8u( s3 ).
      IF s3 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
    ENDDO.
    s2 = p2. s2 = zcl_wasm_rt=>mem_ld_i64_ext( iv_mem = mv_mem iv_addr = s2 + 16 iv_op = 53 ).
  ENDDO.
  s3 = l3. s4 = 16. s3 = s3 + s4. gv_g0 = s3. rv = s2.
ENDFORM.

FORM f810 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i p4 TYPE i CHANGING rv TYPE int8.
  DATA l5 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i.
  DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 80. s0 = s0 - s1. p2 = s0. gv_g0 = s0. s0 = p4. s1 = 38. s0 = s0 + s1. p4 = s0.
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
      PERFORM f410 USING s1 s2 s3 CHANGING s1. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s1 = 1147410. s2 = p2. PERFORM f970 USING s0 s1 s2 CHANGING s0. s0 = 25769803776. lv_br = 1. EXIT. " br 1
    ENDDO.
    s1 = 4294967296. s2 = p0. s3 = l5. s4 = p3. s4 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s4 + 0 ). p1 = s4. s5 = 0. s6 = p1. s7 = 32. s6 = zcl_wasm_rt=>shr_u64( iv_val = s6 iv_shift = s7 ). s6 = zcl_wasm_rt=>wrap_i64( s6 ).
    s7 = 7. s6 = s6 - s7. s7 = -18.
    IF zcl_wasm_rt=>ge_u32( iv_a = s6 iv_b = s7 ) = abap_true. s6 = 1. ELSE. s6 = 0. ENDIF.
    IF s6 <> 0. s4 = s4. ELSE. s4 = s5. ENDIF.
    s5 = p1. s6 = p1. s7 = 9221120288580698112. s6 = s6 + s7. s7 = 9223372036854775807. s6 = zcl_wasm_rt=>and64( iv_a = s6 iv_b = s7 ).
    IF s6 = 0. s6 = 1. ELSE. s6 = 0. ENDIF.
    IF s6 <> 0. s4 = s4. ELSE. s4 = s5. ENDIF.
    PERFORM f718 USING s2 s3 s4 CHANGING s2. p3 = s2.
    IF s2 = 0. s2 = 1. ELSE. s2 = 0. ENDIF.
    IF s2 <> 0. EXIT. ENDIF. " br_if 0
    s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s2 = l5. s3 = p3. PERFORM f553 USING s1 s2 s3. s1 = 4294967297.
  ENDDO.
  s2 = p2. s3 = 80. s2 = s2 + s3. gv_g0 = s2. rv = s1.
ENDFORM.

FORM f811 USING p0 TYPE i p1 TYPE int8 CHANGING rv TYPE int8.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i.
  DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      s0 = p0. s0 = mem_ld_i32( s0 + 16 ). l2 = s0. s1 = 16. s0 = s0 + s1. s1 = 24. s2 = l2. s2 = mem_ld_i32( s2 ).
      DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
      s0 = dispatch_t7( iv_idx = lv_ci_func p0 = s0 p1 = s1 ). l2 = s0.
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = 25769803776. s1 = p0. s1 = mem_ld_i32( s1 + 16 ). l2 = s1. s1 = mem_ld_i32_8u( s1 + 136 ).
        IF s1 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
        s0 = l2. s1 = 136. s0 = s0 + s1. lv_br = 1. EXIT. " br 1
      ELSE.
      ENDIF.
      s1 = l2. s2 = 1. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = p0. s1 = mem_ld_i32( s1 + 216 ). l4 = s1. s1 = l2. s2 = 4. s1 = s1 + s2. l3 = s1. s2 = 0.
      zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s2 iv_addr = s1 + 12 CHANGING cv_mem = mv_mem ). s1 = l3. s2 = -9223372036854775808. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s2 iv_addr = s1 + 4 CHANGING cv_mem = mv_mem ). s1 = l3.
      s2 = l4. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = l2. s1 = zcl_wasm_rt=>extend_u32( s1 ). s2 = -42949672960. s1 = zcl_wasm_rt=>or64( iv_a = s1 iv_b = s2 ). l5 = s1. s2 = l3. s3 = p1. PERFORM f1223 USING s2 s3 CHANGING s2.
      IF s2 = 0. s2 = 1. ELSE. s2 = 0. ENDIF.
      IF s2 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s1 = l2. s2 = l2. s2 = mem_ld_i32( s2 ). l2 = s2. s3 = 1. s2 = s2 - s3. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = l2. s2 = 1.
      IF s1 <= s2. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0.
        s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s2 = l5. PERFORM f453 USING s1 s2.
      ELSE.
      ENDIF.
      s1 = 25769803776. s2 = p0. s2 = mem_ld_i32( s2 + 16 ). l2 = s2. s2 = mem_ld_i32_8u( s2 + 136 ).
      IF s2 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s1 = l2. s2 = 136. s1 = s1 + s2.
    ENDDO.
    l2 = s1. s2 = 1. mem_st_i32_8( iv_addr = s1 iv_val = s2 ). s1 = p0. s2 = 1134898. s3 = 0. PERFORM f969 USING s1 s2 s3 CHANGING s1. s1 = l2. s2 = 0. mem_st_i32_8( iv_addr = s1 iv_val = s2 ). s1 = 25769803776.
  ENDDO.
  rv = s1.
ENDFORM.

FORM f812 USING p0 TYPE i.
  DATA l1 TYPE i. DATA l2 TYPE i. DATA l3 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i.
  DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 32. s0 = s0 - s1. l1 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          DO 1 TIMES. " block
            DO 1 TIMES. " block
              s0 = 1214956. s0 = mem_ld_i32_8u( s0 ). s1 = 1. s0 = s0 - s1.
              CASE s0.
                WHEN 0. lv_br = 2. EXIT.
                WHEN 1. lv_br = 4. EXIT.
                WHEN 2. lv_br = 1. EXIT.
                WHEN OTHERS. EXIT.
              ENDCASE.
            ENDDO.
            s0 = 1214956. s1 = 2. mem_st_i32_8( iv_addr = s0 iv_val = s1 ). s0 = p0. s0 = mem_ld_i32( s0 ). l2 = s0. s0 = p0. s1 = 0. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l2.
            IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
            s0 = l1. s1 = 0. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = l1. s1 = 8. s0 = s0 + s1. p0 = s0. s0 = mem_ld_i32( s0 ).
            IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0.
              s0 = 1214660. s1 = 1214660. s1 = mem_ld_i32( s1 ). l3 = s1. s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s1 = l3. mem_st_i32( iv_addr = s0 iv_val = s1 ).
            ELSE.
            ENDIF.
            s0 = l2. s1 = l1. s1 = mem_ld_i32( s1 + 8 ). mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = 1214956. s1 = 3. mem_st_i32_8( iv_addr = s0 iv_val = s1 ).
          ENDDO.
          s0 = l1. s1 = 32. s0 = s0 + s1. gv_g0 = s0.
          RETURN.
        ENDDO.
        s0 = l1. s1 = 0. mem_st_i32( iv_addr = s0 + 24 iv_val = s1 ). s0 = l1. s1 = 1. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = l1. s1 = 1118712. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). lv_br = 2. EXIT. " br 2
      ENDDO.
      s0 = 1078344. PERFORM f1357 USING s0.
      RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
    ENDDO.
    s0 = l1. s1 = 0. mem_st_i32( iv_addr = s0 + 24 iv_val = s1 ). s0 = l1. s1 = 1. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = l1. s1 = 1118776. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ).
  ENDDO.
  s0 = l1. s1 = 4. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 16 CHANGING cv_mem = mv_mem ). s0 = l1. s1 = 8. s0 = s0 + s1. s1 = 1078224. PERFORM f696 USING s0 s1.
  RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
ENDFORM.

FORM f813 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE i. DATA l8 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i.
  DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i.
  DATA s21 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l2 = s0. gv_g0 = s0. s0 = p1. s0 = mem_ld_i32( s0 + 24 ). l3 = s0. s0 = p1. s0 = mem_ld_i32( s0 + 20 ). p1 = s0. s0 = p0. s0 = mem_ld_i32_8u( s0 ). l4 = s0. s0 = l2.
  s1 = 4. s0 = s0 + s1. PERFORM f669 USING s0. s0 = l2. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 8 ). l8 = s0.
  DO 1 TIMES. " block
    s0 = l2. s0 = mem_ld_i32( s0 + 4 ). l5 = s0. s1 = -2147483648.
    IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l8. s1 = 255. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 3.
    IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l8. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). p0 = s0. s0 = mem_ld_i32( s0 ). l6 = s0. s1 = p0. s2 = 4. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). l7 = s1. s1 = mem_ld_i32( s1 ).
    DATA(lv_ci_func) = mt_tab0[ s1 + 1 ]. " call_indirect
    dispatch_t2( iv_idx = lv_ci_func p0 = s0 ). s0 = l7. s0 = mem_ld_i32( s0 + 4 ).
    IF s0 <> 0.
      s0 = l6. PERFORM f125 USING s0.
    ELSE.
    ENDIF.
    s0 = p0. PERFORM f125 USING s0.
  ENDDO.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      s0 = p1. s1 = 1117100. s2 = 17. s3 = l3. s3 = mem_ld_i32( s3 + 12 ). p0 = s3.
      DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
      s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ).
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = l4.
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = p1. s1 = 1117117. s2 = 88. s3 = p0.
        DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
        s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ).
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      ELSE.
      ENDIF.
      s0 = 0. lv_br = 1. EXIT. " br 1
    ENDDO.
    s1 = 1.
  ENDDO.
  s2 = l5. s3 = -2147483648. s2 = zcl_wasm_rt=>or32( iv_a = s2 iv_b = s3 ). s3 = -2147483648.
  IF s2 <> s3. s2 = 1. ELSE. s2 = 0. ENDIF.
  IF s2 <> 0.
    s2 = l8. s2 = zcl_wasm_rt=>wrap_i64( s2 ). PERFORM f125 USING s2.
  ELSE.
  ENDIF.
  s2 = l2. s3 = 16. s2 = s2 + s3. gv_g0 = s2. rv = s1.
ENDFORM.

FORM f814 USING p0 TYPE i p1 TYPE i p2 TYPE i CHANGING rv TYPE i.
  DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i.
  DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    s0 = p1. s0 = mem_ld_i32( s0 + 20 ). l3 = s0. s1 = 0.
    IF s0 <= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = 0.
    ELSE.
      s1 = p1. s1 = mem_ld_i32( s1 + 16 ). l4 = s1.
      DO. " loop
        s1 = l4. s1 = mem_ld_i32( s1 ). s2 = p2.
        IF s1 = s2. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
        s1 = l4. s2 = 8. s1 = s1 + s2. l4 = s1. s1 = l3. s2 = l5. s3 = 1. s2 = s2 + s3. l5 = s2.
        IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0. EXIT. ENDIF. " br_if 0
      ENDDO.
      s1 = l3.
    ENDIF.
    s2 = l3. s3 = p1. s3 = mem_ld_i32( s3 + 24 ).
    IF s2 >= s3. s2 = 1. ELSE. s2 = 0. ENDIF.
    IF s2 <> 0.
      s2 = -1. l5 = s2. s2 = p0. s3 = p1. s4 = 16. s3 = s3 + s4. s4 = 8. s5 = p1. s6 = 24. s5 = s5 + s6. s6 = l3. s7 = 1. s6 = s6 + s7. PERFORM f845 USING s2 s3 s4 s5 s6 CHANGING s2.
      IF s2 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s2 = p1. s2 = mem_ld_i32( s2 + 20 ). l3 = s2.
    ELSE.
    ENDIF.
    s2 = p1. s3 = l3. s4 = 1. s3 = s3 + s4. mem_st_i32( iv_addr = s2 + 20 iv_val = s3 ). s2 = p1. s2 = mem_ld_i32( s2 + 16 ). s3 = l3. s4 = 3. s3 = zcl_wasm_rt=>shl32( iv_val = s3 iv_shift = s4 ). s2 = s2 + s3. p1 = s2. s2 = p2. s3 = 228.
    IF s2 >= s3. s2 = 1. ELSE. s2 = 0. ENDIF.
    IF s2 <> 0.
      s2 = p0. s2 = mem_ld_i32( s2 + 16 ). s2 = mem_ld_i32( s2 + 56 ). s3 = p2. s4 = 2. s3 = zcl_wasm_rt=>shl32( iv_val = s3 iv_shift = s4 ). s2 = s2 + s3. s2 = mem_ld_i32( s2 ). p0 = s2. s3 = p0. s3 = mem_ld_i32( s3 ). s4 = 1.
      s3 = s3 + s4. mem_st_i32( iv_addr = s2 iv_val = s3 ).
    ELSE.
    ENDIF.
    s2 = p1. s3 = p2. mem_st_i32( iv_addr = s2 iv_val = s3 ). s2 = p1. s3 = 0. mem_st_i32( iv_addr = s2 + 4 iv_val = s3 ). l5 = s1.
  ENDDO.
  s1 = l5. rv = s1.
ENDFORM.

FORM f815 USING p0 TYPE i p1 TYPE i p2 TYPE i p3 TYPE i p4 TYPE i p5 TYPE i CHANGING rv TYPE i.
  DATA l6 TYPE i. DATA l7 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i.
  DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 32.
  s0 = s0 - s1. l6 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    s0 = p0. s1 = p1.
    IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    s1 = p0. s2 = p2.
    IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
    s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = l6. s1 = 0. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 20 CHANGING cv_mem = mv_mem ). s0 = l6. s1 = -9223372036854775808.
      zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 12 CHANGING cv_mem = mv_mem ). s0 = l6. s1 = p0. s1 = mem_ld_i32( s1 ). mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = l6. s1 = 8. s0 = s0 + s1. l7 = s0. s1 = p1.
      s2 = p2. s3 = p3. s4 = p4. s5 = p5.
      DATA(lv_ci_func) = mt_tab0[ s5 + 1 ]. " call_indirect
      s0 = dispatch_t17( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 p3 = s3 p4 = s4 ). p1 = s0. s0 = p0. s1 = l7.
      IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p0. s0 = mem_ld_i32( s0 + 16 ). p2 = s0.
      IF s0 <> 0.
        s0 = p0. s0 = mem_ld_i32( s0 ). p3 = s0. s0 = mem_ld_i32( s0 ). s1 = p2. s2 = 0. s3 = p3. s4 = 4. s3 = s3 + s4. s3 = mem_ld_i32( s3 ).
        DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
        s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ).
      ELSE.
      ENDIF.
      s0 = p0. s1 = l6. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 8 ). zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ). s0 = p0. s1 = 16. s0 = s0 + s1. s1 = l6. s2 = 24.
      s1 = s1 + s2. s1 = mem_ld_i32( s1 ). mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s1 = 8. s0 = s0 + s1. s1 = l6. s2 = 16. s1 = s1 + s2. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 0 ).
      zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ). lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = p0. s1 = p1. s2 = p2. s3 = p3. s4 = p4. s5 = p5.
    DATA(lv_ci_func) = mt_tab0[ s5 + 1 ]. " call_indirect
    s0 = dispatch_t17( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 p3 = s3 p4 = s4 ). p1 = s0.
  ENDDO.
  s0 = l6. s1 = 32. s0 = s0 + s1. gv_g0 = s0. s0 = p1. rv = s0.
ENDFORM.

FORM f816 USING p0 TYPE i p1 TYPE i p2 TYPE i p3 TYPE i p4 TYPE i CHANGING rv TYPE i.
  DATA l5 TYPE i. DATA l6 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i.
  DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 32.
  s0 = s0 - s1. l5 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    s0 = p0. s1 = p1.
    IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    s1 = p0. s2 = p2.
    IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
    s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = l5. s1 = 0. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 20 CHANGING cv_mem = mv_mem ). s0 = l5. s1 = -9223372036854775808.
      zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 12 CHANGING cv_mem = mv_mem ). s0 = l5. s1 = p0. s1 = mem_ld_i32( s1 ). mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = l5. s1 = 8. s0 = s0 + s1. l6 = s0. s1 = p1.
      s2 = p2. s3 = p3. s4 = p4. s5 = 1. PERFORM f40 USING s0 s1 s2 s3 s4 s5 CHANGING s0. p1 = s0. s0 = p0. s1 = l6.
      IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p0. s0 = mem_ld_i32( s0 + 16 ). p2 = s0.
      IF s0 <> 0.
        s0 = p0. s0 = mem_ld_i32( s0 ). p3 = s0. s0 = mem_ld_i32( s0 ). s1 = p2. s2 = 0. s3 = p3. s4 = 4. s3 = s3 + s4. s3 = mem_ld_i32( s3 ).
        DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
        s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ).
      ELSE.
      ENDIF.
      s0 = p0. s1 = l5. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 8 ). zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ). s0 = p0. s1 = 16. s0 = s0 + s1. s1 = l5. s2 = 24.
      s1 = s1 + s2. s1 = mem_ld_i32( s1 ). mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s1 = 8. s0 = s0 + s1. s1 = l5. s2 = 16. s1 = s1 + s2. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 0 ).
      zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ). lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = p0. s1 = p1. s2 = p2. s3 = p3. s4 = p4. s5 = 1. PERFORM f40 USING s0 s1 s2 s3 s4 s5 CHANGING s0. p1 = s0.
  ENDDO.
  s0 = l5. s1 = 32. s0 = s0 + s1. gv_g0 = s0. s0 = p1. rv = s0.
ENDFORM.

FORM f817 USING p0 TYPE i p1 TYPE i p2 TYPE i p3 TYPE i p4 TYPE i CHANGING rv TYPE i.
  DATA l5 TYPE i. DATA l6 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i.
  DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 32.
  s0 = s0 - s1. l5 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    s0 = p0. s1 = p1.
    IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    s1 = p0. s2 = p2.
    IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
    s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = l5. s1 = 0. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 20 CHANGING cv_mem = mv_mem ). s0 = l5. s1 = -9223372036854775808.
      zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 12 CHANGING cv_mem = mv_mem ). s0 = l5. s1 = p0. s1 = mem_ld_i32( s1 ). mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = l5. s1 = 8. s0 = s0 + s1. l6 = s0. s1 = p1.
      s2 = p2. s3 = p3. s4 = p4. s5 = 0. PERFORM f40 USING s0 s1 s2 s3 s4 s5 CHANGING s0. p1 = s0. s0 = p0. s1 = l6.
      IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p0. s0 = mem_ld_i32( s0 + 16 ). p2 = s0.
      IF s0 <> 0.
        s0 = p0. s0 = mem_ld_i32( s0 ). p3 = s0. s0 = mem_ld_i32( s0 ). s1 = p2. s2 = 0. s3 = p3. s4 = 4. s3 = s3 + s4. s3 = mem_ld_i32( s3 ).
        DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
        s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ).
      ELSE.
      ENDIF.
      s0 = p0. s1 = l5. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 8 ). zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ). s0 = p0. s1 = 16. s0 = s0 + s1. s1 = l5. s2 = 24.
      s1 = s1 + s2. s1 = mem_ld_i32( s1 ). mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s1 = 8. s0 = s0 + s1. s1 = l5. s2 = 16. s1 = s1 + s2. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 0 ).
      zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ). lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = p0. s1 = p1. s2 = p2. s3 = p3. s4 = p4. s5 = 0. PERFORM f40 USING s0 s1 s2 s3 s4 s5 CHANGING s0. p1 = s0.
  ENDDO.
  s0 = l5. s1 = 32. s0 = s0 + s1. gv_g0 = s0. s0 = p1. rv = s0.
ENDFORM.

FORM f818 USING p0 TYPE i p1 TYPE i p2 TYPE i p3 TYPE i p4 TYPE i CHANGING rv TYPE i.
  DATA l5 TYPE i. DATA l6 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i.
  DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 32.
  s0 = s0 - s1. l5 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    s0 = p0. s1 = p1.
    IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    s1 = p0. s2 = p2.
    IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
    s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = l5. s1 = 0. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 20 CHANGING cv_mem = mv_mem ). s0 = l5. s1 = -9223372036854775808.
      zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 12 CHANGING cv_mem = mv_mem ). s0 = l5. s1 = p0. s1 = mem_ld_i32( s1 ). mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = l5. s1 = 8. s0 = s0 + s1. l6 = s0. s1 = p1.
      s2 = p2. s3 = p3. s4 = p4. s5 = 1. PERFORM f54 USING s0 s1 s2 s3 s4 s5 CHANGING s0. p1 = s0. s0 = p0. s1 = l6.
      IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p0. s0 = mem_ld_i32( s0 + 16 ). p2 = s0.
      IF s0 <> 0.
        s0 = p0. s0 = mem_ld_i32( s0 ). p3 = s0. s0 = mem_ld_i32( s0 ). s1 = p2. s2 = 0. s3 = p3. s4 = 4. s3 = s3 + s4. s3 = mem_ld_i32( s3 ).
        DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
        s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ).
      ELSE.
      ENDIF.
      s0 = p0. s1 = l5. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 8 ). zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ). s0 = p0. s1 = 16. s0 = s0 + s1. s1 = l5. s2 = 24.
      s1 = s1 + s2. s1 = mem_ld_i32( s1 ). mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s1 = 8. s0 = s0 + s1. s1 = l5. s2 = 16. s1 = s1 + s2. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 0 ).
      zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ). lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = p0. s1 = p1. s2 = p2. s3 = p3. s4 = p4. s5 = 1. PERFORM f54 USING s0 s1 s2 s3 s4 s5 CHANGING s0. p1 = s0.
  ENDDO.
  s0 = l5. s1 = 32. s0 = s0 + s1. gv_g0 = s0. s0 = p1. rv = s0.
ENDFORM.

FORM f819 USING p0 TYPE i p1 TYPE int8 p2 TYPE i.
  DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i.
  DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i.
  DATA lv_br TYPE i.
  DO 1 TIMES. " block
    s0 = p1. s1 = -4294967296.
    IF zcl_wasm_rt=>lt_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l3 = s0. s0 = mem_ld_i32_16u( s0 + 6 ). s1 = 57.
    IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l3. s0 = mem_ld_i32( s0 + 32 ). l4 = s0.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l4. s1 = 16. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). l3 = s0. s1 = l4. s2 = 12. s1 = s1 + s2. l5 = s1.
    IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      DO. " loop
        s0 = l3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 16 ). p1 = s0. s1 = -8589934592.
        IF zcl_wasm_rt=>ge_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = p0. s1 = p1. s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = p2.
          DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
          dispatch_t6( iv_idx = lv_ci_func p0 = s0 p1 = s1 ).
        ELSE.
        ENDIF.
        s0 = l3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 24 ). p1 = s0. s1 = -8589934592.
        IF zcl_wasm_rt=>ge_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = p0. s1 = p1. s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = p2.
          DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
          dispatch_t6( iv_idx = lv_ci_func p0 = s0 p1 = s1 ).
        ELSE.
        ENDIF.
        s0 = l3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 32 ). p1 = s0. s1 = -8589934592.
        IF zcl_wasm_rt=>ge_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = p0. s1 = p1. s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = p2.
          DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
          dispatch_t6( iv_idx = lv_ci_func p0 = s0 p1 = s1 ).
        ELSE.
        ENDIF.
        s0 = l3. s1 = 40. s0 = s0 + s1. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). p1 = s0. s1 = -8589934592.
        IF zcl_wasm_rt=>ge_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = p0. s1 = p1. s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = p2.
          DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
          dispatch_t6( iv_idx = lv_ci_func p0 = s0 p1 = s1 ).
        ELSE.
        ENDIF.
        s0 = l3. s0 = mem_ld_i32( s0 + 4 ). l3 = s0. s1 = l5.
        IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
      ENDDO.
    ELSE.
    ENDIF.
    s0 = l4. s0 = mem_ld_i32( s0 + 8 ). l3 = s0.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s1 = l3. s2 = p2.
    DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
    dispatch_t6( iv_idx = lv_ci_func p0 = s0 p1 = s1 ).
  ENDDO.
ENDFORM.

FORM f820 USING p0 TYPE i p1 TYPE int8 CHANGING rv TYPE int8.
  DATA l2 TYPE i. DATA l3 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i.
  DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA lv_br TYPE i. s0 = p1. s1 = -4294967296.
  IF zcl_wasm_rt=>ge_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l2 = s0. s0 = mem_ld_i32_16u( s0 + 6 ). s1 = 48.
    IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p0. s1 = p1. PERFORM f457 USING s0 s1 CHANGING s0. rv = s0. RETURN.
    ELSE.
    ENDIF.
    s0 = l2. s0 = mem_ld_i32( s0 + 16 ). s0 = mem_ld_i32( s0 + 44 ). p0 = s0.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = 8589934592. rv = s0. RETURN.
    ELSE.
    ENDIF.
    s0 = p0. s1 = p0. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s0 = zcl_wasm_rt=>extend_u32( s0 ). s1 = -4294967296. s0 = zcl_wasm_rt=>or64( iv_a = s0 iv_b = s1 ). rv = s0. RETURN.
  ELSE.
  ENDIF.
  s0 = 8589934592. l3 = s0.
  DO 1 TIMES. " block
    s0 = 18. s1 = p1. s2 = 32. s1 = zcl_wasm_rt=>shr_u64( iv_val = s1 iv_shift = s2 ). s1 = zcl_wasm_rt=>wrap_i64( s1 ). l2 = s1. s2 = 11. s1 = s1 + s2. s2 = l2. s3 = 7. s2 = s2 - s3. s3 = -18.
    IF zcl_wasm_rt=>lt_u32( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
    IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
    l2 = s0. s1 = 18.
    IF zcl_wasm_rt=>gt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = 268319. s1 = l2. s0 = zcl_wasm_rt=>shr_u32( iv_val = s0 iv_shift = s1 ). s1 = 1. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s0 = mem_ld_i32( s0 + 40 ). s1 = l2. s2 = 2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s2 = 1195176. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). s2 = 3. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1.
    s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). l3 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
    IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l3. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p0 = s0. s1 = p0. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
  ENDDO.
  s0 = l3. rv = s0.
ENDFORM.

FORM f821 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i CHANGING rv TYPE int8.
  DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i.
  DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA lv_br TYPE i. s0 = p1. s1 = -4294967297.
  IF zcl_wasm_rt=>le_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = p0. s1 = 1137529. s2 = 0. PERFORM f970 USING s0 s1 s2 CHANGING s0. s0 = 25769803776. rv = s0. RETURN.
  ELSE.
  ENDIF.
  DO 1 TIMES. " block
    s0 = p3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). l6 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = -30064771072.
    IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s1 = l6. PERFORM f503 USING s0 s1 CHANGING s0. p2 = s0.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = 25769803776. rv = s0. RETURN.
    ELSE.
    ENDIF.
    DO 1 TIMES. " block
      s0 = p2. s1 = 228.
      IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p0. s0 = mem_ld_i32( s0 + 16 ). l4 = s0. s0 = mem_ld_i32( s0 + 56 ). s1 = p2. s2 = 2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s0 = mem_ld_i32( s0 ). p3 = s0. s1 = p3. s1 = mem_ld_i32( s1 ). l5 = s1.
      s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l5. s1 = 1.
      IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = l4. s1 = p3. PERFORM f713 USING s0 s1.
    ENDDO.
    s0 = 17. p3 = s0.
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          s0 = p2. s1 = 72. s0 = s0 - s1.
          CASE s0.
            WHEN 0. lv_br = 2. EXIT.
            WHEN 1. lv_br = 3. EXIT.
            WHEN 2. lv_br = 1. EXIT.
            WHEN 3. lv_br = 3. EXIT.
            WHEN 4. lv_br = 3. EXIT.
            WHEN 5. lv_br = 2. EXIT.
            WHEN OTHERS. EXIT.
          ENDCASE.
        ENDDO.
        s0 = p2. s1 = 22.
        IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
      ENDDO.
      s0 = 16. p3 = s0.
    ENDDO.
    s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p2 = s0. s1 = p2. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s1 = p1. s2 = p3. PERFORM f237 USING s0 s1 s2 CHANGING s0. rv = s0. RETURN.
  ENDDO.
  s0 = p0. s1 = 1136724. s2 = 0. PERFORM f970 USING s0 s1 s2 CHANGING s0. s0 = 25769803776. rv = s0.
ENDFORM.

FORM f822 USING p0 TYPE i CHANGING rv TYPE i.
  DATA l1 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    s0 = p0. s1 = 9.
    IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = 1. l1 = s0.
    DO 1 TIMES. " block
      s0 = p0. s1 = 13.
      IF zcl_wasm_rt=>le_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p0. s1 = 32.
      IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p0. s1 = 32.
      IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p0. s1 = 160.
      IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p0. s1 = 160.
      IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p0. s1 = 5760.
      IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p0. s1 = 5760.
      IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p0. s1 = 8192.
      IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p0. s1 = 8203.
      IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p0. s1 = 8232.
      IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p0. s1 = 8234.
      IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p0. s1 = 8239.
      IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p0. s1 = 8239.
      IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p0. s1 = 8287.
      IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p0. s1 = 8287.
      IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p0. s1 = 12288.
      IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p0. s1 = 12288.
      IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = 0. l1 = s0. s0 = p0. s1 = 65279.
      IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p0. s1 = 65279.
      IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      rv = s0. RETURN.
    ENDDO.
    s0 = l1. rv = s0. RETURN.
  ENDDO.
  s0 = 0. rv = s0.
ENDFORM.

FORM f823 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i.
  DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i.
  DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l2 = s0. gv_g0 = s0. s0 = l2. s1 = p0. s2 = 12. s1 = s1 + s2. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = p1. s0 = mem_ld_i32( s0 + 20 ). s1 = 1059280. s2 = 13. s3 = p1.
  s3 = mem_ld_i32( s3 + 24 ). s3 = mem_ld_i32( s3 + 12 ).
  DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
  s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). l3 = s0. s0 = l2. s1 = 0. mem_st_i32_8( iv_addr = s0 + 13 iv_val = s1 ). s0 = l2. s1 = l3. mem_st_i32_8( iv_addr = s0 + 12 iv_val = s1 ). s0 = l2. s1 = p1.
  mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = l2. s1 = 8. s0 = s0 + s1. s1 = 1059293. s2 = 5. s3 = p0. s4 = 1059300. PERFORM f629 USING s0 s1 s2 s3 s4 CHANGING s0. s1 = 1116218. s2 = 5. s3 = l2. s4 = 4. s3 = s3 + s4. s4 = 1059316.
  PERFORM f629 USING s0 s1 s2 s3 s4 CHANGING s0. l3 = s0. s0 = l2. s0 = mem_ld_i32_8u( s0 + 12 ). p0 = s0.
  DO 1 TIMES. " block
    s0 = p0. s1 = 0.
    IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    s1 = l2. s1 = mem_ld_i32_8u( s1 + 13 ).
    IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
    IF s1 <> 0. EXIT. ENDIF. " br_if 0
    s0 = 1. s1 = p0.
    IF s1 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l3. s0 = mem_ld_i32( s0 ). p0 = s0. s0 = mem_ld_i32_8u( s0 + 28 ). s1 = 4. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p0. s0 = mem_ld_i32( s0 + 20 ). s1 = 1080545. s2 = 2. s3 = p0. s3 = mem_ld_i32( s3 + 24 ). s3 = mem_ld_i32( s3 + 12 ).
      DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
      s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s1 = p0. s1 = mem_ld_i32( s1 + 20 ). s2 = 1080042. s3 = 1. s4 = p0. s4 = mem_ld_i32( s4 + 24 ). s4 = mem_ld_i32( s4 + 12 ).
    DATA(lv_ci_func) = mt_tab0[ s4 + 1 ]. " call_indirect
    s1 = dispatch_t11( iv_idx = lv_ci_func p0 = s1 p1 = s2 p2 = s3 ).
  ENDDO.
  s2 = l2. s3 = 16. s2 = s2 + s3. gv_g0 = s2. rv = s1.
ENDFORM.

FORM f824 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i.
  DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i.
  DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l2 = s0. gv_g0 = s0. s0 = l2. s1 = p0. s2 = 4. s1 = s1 + s2. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = p1. s0 = mem_ld_i32( s0 + 20 ). s1 = 1114380. s2 = 9. s3 = p1.
  s3 = mem_ld_i32( s3 + 24 ). s3 = mem_ld_i32( s3 + 12 ).
  DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
  s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). l3 = s0. s0 = l2. s1 = 0. mem_st_i32_8( iv_addr = s0 + 13 iv_val = s1 ). s0 = l2. s1 = l3. mem_st_i32_8( iv_addr = s0 + 12 iv_val = s1 ). s0 = l2. s1 = p1.
  mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = l2. s1 = 8. s0 = s0 + s1. s1 = 1114389. s2 = 11. s3 = p0. s4 = 1114400. PERFORM f629 USING s0 s1 s2 s3 s4 CHANGING s0. s1 = 1114416. s2 = 9. s3 = l2. s4 = 4. s3 = s3 + s4. s4 = 1114428.
  PERFORM f629 USING s0 s1 s2 s3 s4 CHANGING s0. l3 = s0. s0 = l2. s0 = mem_ld_i32_8u( s0 + 12 ). p0 = s0.
  DO 1 TIMES. " block
    s0 = p0. s1 = 0.
    IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    s1 = l2. s1 = mem_ld_i32_8u( s1 + 13 ).
    IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
    IF s1 <> 0. EXIT. ENDIF. " br_if 0
    s0 = 1. s1 = p0.
    IF s1 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l3. s0 = mem_ld_i32( s0 ). p0 = s0. s0 = mem_ld_i32_8u( s0 + 28 ). s1 = 4. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p0. s0 = mem_ld_i32( s0 + 20 ). s1 = 1080545. s2 = 2. s3 = p0. s3 = mem_ld_i32( s3 + 24 ). s3 = mem_ld_i32( s3 + 12 ).
      DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
      s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s1 = p0. s1 = mem_ld_i32( s1 + 20 ). s2 = 1080042. s3 = 1. s4 = p0. s4 = mem_ld_i32( s4 + 24 ). s4 = mem_ld_i32( s4 + 12 ).
    DATA(lv_ci_func) = mt_tab0[ s4 + 1 ]. " call_indirect
    s1 = dispatch_t11( iv_idx = lv_ci_func p0 = s1 p1 = s2 p2 = s3 ).
  ENDDO.
  s2 = l2. s3 = 16. s2 = s2 + s3. gv_g0 = s2. rv = s1.
ENDFORM.

FORM f825 USING p0 TYPE i p1 TYPE int8 p2 TYPE int8 CHANGING rv TYPE int8.
  DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i.
  DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i.
  DATA lv_br TYPE i. s0 = gv_g0. s1 = 48. s0 = s0 - s1. l4 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    s0 = p2. s1 = 2147483647.
    IF zcl_wasm_rt=>le_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p0. s1 = p1. s2 = p2. PERFORM f283 USING s0 s1 s2 CHANGING s0. p2 = s0. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = l4. s1 = p2. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ). s0 = l4. s1 = 16. s0 = s0 + s1. l3 = s0. s1 = 24. s2 = 1147056. s3 = l4. PERFORM f1218 USING s0 s1 s2 s3 CHANGING s0.
    s0 = 25769803776. p2 = s0. s0 = p0. s1 = l3. s2 = l3. PERFORM f768 USING s2 CHANGING s2. PERFORM f126 USING s0 s1 s2 CHANGING s0. l6 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 25769803776.
    IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = l6. s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = 1. PERFORM f68 USING s0 s1 s2 CHANGING s0. l3 = s0.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s1 = p1. s2 = l3. s3 = p1. s4 = 0. PERFORM f192 USING s0 s1 s2 s3 s4 CHANGING s0. p2 = s0. s0 = l3. s1 = 228.
    IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s0 = mem_ld_i32( s0 + 16 ). l5 = s0. s0 = mem_ld_i32( s0 + 56 ). s1 = l3. s2 = 2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s0 = mem_ld_i32( s0 ). p0 = s0. s1 = p0. s1 = mem_ld_i32( s1 ). l3 = s1.
    s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l3. s1 = 1.
    IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l5. s1 = p0. PERFORM f713 USING s0 s1.
  ENDDO.
  s0 = l4. s1 = 48. s0 = s0 + s1. gv_g0 = s0. s0 = p2. rv = s0.
ENDFORM.

FORM f826 USING p0 TYPE i p1 TYPE i p2 TYPE i.
  DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i.
  DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 32. s0 = s0 - s1. l3 = s0. gv_g0 = s0. s0 = p1. s1 = p1. s2 = p2. s1 = s1 + s2.
  p2 = s1.
  IF zcl_wasm_rt=>gt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = 0. s1 = 0. PERFORM f1271 USING s0 s1.
    RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
  ELSE.
  ENDIF.
  s0 = 1. p1 = s0. s0 = 8. s1 = p0. s1 = mem_ld_i32( s1 ). l5 = s1. s2 = 1. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). l4 = s1. s2 = p2. s3 = p2. s4 = l4.
  IF zcl_wasm_rt=>lt_u32( iv_a = s3 iv_b = s4 ) = abap_true. s3 = 1. ELSE. s3 = 0. ENDIF.
  IF s3 <> 0. s1 = s1. ELSE. s1 = s2. ENDIF.
  p2 = s1. s2 = p2. s3 = 8.
  IF zcl_wasm_rt=>le_u32( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
  IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
  p2 = s0. s1 = -1. s0 = zcl_wasm_rt=>xor32( iv_a = s0 iv_b = s1 ). s1 = 31. s0 = zcl_wasm_rt=>shr_u32( iv_val = s0 iv_shift = s1 ). l4 = s0.
  DO 1 TIMES. " block
    s0 = l5.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = 0. p1 = s0. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = l3. s1 = l5. mem_st_i32( iv_addr = s0 + 28 iv_val = s1 ). s0 = l3. s1 = p0. s1 = mem_ld_i32( s1 + 4 ). mem_st_i32( iv_addr = s0 + 20 iv_val = s1 ).
  ENDDO.
  s0 = l3. s1 = p1. mem_st_i32( iv_addr = s0 + 24 iv_val = s1 ). s0 = l3. s1 = 8. s0 = s0 + s1. s1 = l4. s2 = p2. s3 = l3. s4 = 20. s3 = s3 + s4. PERFORM f947 USING s0 s1 s2 s3. s0 = l3. s0 = mem_ld_i32( s0 + 8 ).
  IF s0 <> 0.
    s0 = l3. s0 = mem_ld_i32( s0 + 12 ). s1 = l3. s1 = mem_ld_i32( s1 + 16 ). PERFORM f1271 USING s0 s1.
    RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
  ELSE.
  ENDIF.
  s0 = l3. s0 = mem_ld_i32( s0 + 12 ). p1 = s0. s0 = p0. s1 = p2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s1 = p1. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = l3. s1 = 32. s0 = s0 + s1. gv_g0 = s0.
ENDFORM.

FORM f827 USING p0 TYPE i p1 TYPE i p2 TYPE i.
  DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i.
  DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 32. s0 = s0 - s1. l3 = s0. gv_g0 = s0. s0 = p1. s1 = p1. s2 = p2. s1 = s1 + s2.
  p2 = s1.
  IF zcl_wasm_rt=>gt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = 0. s1 = 0. PERFORM f1271 USING s0 s1.
    RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
  ELSE.
  ENDIF.
  s0 = 1. p1 = s0. s0 = 8. s1 = p0. s1 = mem_ld_i32( s1 ). l5 = s1. s2 = 1. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). l4 = s1. s2 = p2. s3 = p2. s4 = l4.
  IF zcl_wasm_rt=>lt_u32( iv_a = s3 iv_b = s4 ) = abap_true. s3 = 1. ELSE. s3 = 0. ENDIF.
  IF s3 <> 0. s1 = s1. ELSE. s1 = s2. ENDIF.
  p2 = s1. s2 = p2. s3 = 8.
  IF zcl_wasm_rt=>le_u32( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
  IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
  p2 = s0. s1 = -1. s0 = zcl_wasm_rt=>xor32( iv_a = s0 iv_b = s1 ). s1 = 31. s0 = zcl_wasm_rt=>shr_u32( iv_val = s0 iv_shift = s1 ). l4 = s0.
  DO 1 TIMES. " block
    s0 = l5.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = 0. p1 = s0. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = l3. s1 = l5. mem_st_i32( iv_addr = s0 + 28 iv_val = s1 ). s0 = l3. s1 = p0. s1 = mem_ld_i32( s1 + 4 ). mem_st_i32( iv_addr = s0 + 20 iv_val = s1 ).
  ENDDO.
  s0 = l3. s1 = p1. mem_st_i32( iv_addr = s0 + 24 iv_val = s1 ). s0 = l3. s1 = 8. s0 = s0 + s1. s1 = l4. s2 = p2. s3 = l3. s4 = 20. s3 = s3 + s4. PERFORM f879 USING s0 s1 s2 s3. s0 = l3. s0 = mem_ld_i32( s0 + 8 ).
  IF s0 <> 0.
    s0 = l3. s0 = mem_ld_i32( s0 + 12 ). s1 = l3. s1 = mem_ld_i32( s1 + 16 ). PERFORM f1271 USING s0 s1.
    RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
  ELSE.
  ENDIF.
  s0 = l3. s0 = mem_ld_i32( s0 + 12 ). p1 = s0. s0 = p0. s1 = p2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s1 = p1. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = l3. s1 = 32. s0 = s0 + s1. gv_g0 = s0.
ENDFORM.

FORM f828 USING p0 TYPE i p1 TYPE i p2 TYPE i.
  DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i.
  DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 32. s0 = s0 - s1. l3 = s0. gv_g0 = s0. s0 = p1. s1 = p1. s2 = p2. s1 = s1 + s2.
  p2 = s1.
  IF zcl_wasm_rt=>gt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = 0. s1 = 0. PERFORM f1271 USING s0 s1.
    RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
  ELSE.
  ENDIF.
  s0 = 1. p1 = s0. s0 = 8. s1 = p0. s1 = mem_ld_i32( s1 ). l5 = s1. s2 = 1. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). l4 = s1. s2 = p2. s3 = p2. s4 = l4.
  IF zcl_wasm_rt=>lt_u32( iv_a = s3 iv_b = s4 ) = abap_true. s3 = 1. ELSE. s3 = 0. ENDIF.
  IF s3 <> 0. s1 = s1. ELSE. s1 = s2. ENDIF.
  p2 = s1. s2 = p2. s3 = 8.
  IF zcl_wasm_rt=>le_u32( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
  IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
  p2 = s0. s1 = -1. s0 = zcl_wasm_rt=>xor32( iv_a = s0 iv_b = s1 ). s1 = 31. s0 = zcl_wasm_rt=>shr_u32( iv_val = s0 iv_shift = s1 ). l4 = s0.
  DO 1 TIMES. " block
    s0 = l5.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = 0. p1 = s0. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = l3. s1 = l5. mem_st_i32( iv_addr = s0 + 28 iv_val = s1 ). s0 = l3. s1 = p0. s1 = mem_ld_i32( s1 + 4 ). mem_st_i32( iv_addr = s0 + 20 iv_val = s1 ).
  ENDDO.
  s0 = l3. s1 = p1. mem_st_i32( iv_addr = s0 + 24 iv_val = s1 ). s0 = l3. s1 = 8. s0 = s0 + s1. s1 = l4. s2 = p2. s3 = l3. s4 = 20. s3 = s3 + s4. PERFORM f584 USING s0 s1 s2 s3. s0 = l3. s0 = mem_ld_i32( s0 + 8 ).
  IF s0 <> 0.
    s0 = l3. s0 = mem_ld_i32( s0 + 12 ). s1 = l3. s1 = mem_ld_i32( s1 + 16 ). PERFORM f1271 USING s0 s1.
    RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
  ELSE.
  ENDIF.
  s0 = l3. s0 = mem_ld_i32( s0 + 12 ). p1 = s0. s0 = p0. s1 = p2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s1 = p1. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = l3. s1 = 32. s0 = s0 + s1. gv_g0 = s0.
ENDFORM.

FORM f829 USING p0 TYPE i p1 TYPE i p2 TYPE i.
  DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i.
  DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 32. s0 = s0 - s1. l3 = s0. gv_g0 = s0. s0 = p1. s1 = p1. s2 = p2. s1 = s1 + s2.
  p2 = s1.
  IF zcl_wasm_rt=>gt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = 0. s1 = 0. PERFORM f1271 USING s0 s1.
    RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
  ELSE.
  ENDIF.
  s0 = 1. p1 = s0. s0 = 8. s1 = p0. s1 = mem_ld_i32( s1 ). l5 = s1. s2 = 1. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). l4 = s1. s2 = p2. s3 = p2. s4 = l4.
  IF zcl_wasm_rt=>lt_u32( iv_a = s3 iv_b = s4 ) = abap_true. s3 = 1. ELSE. s3 = 0. ENDIF.
  IF s3 <> 0. s1 = s1. ELSE. s1 = s2. ENDIF.
  p2 = s1. s2 = p2. s3 = 8.
  IF zcl_wasm_rt=>le_u32( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
  IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
  p2 = s0. s1 = -1. s0 = zcl_wasm_rt=>xor32( iv_a = s0 iv_b = s1 ). s1 = 31. s0 = zcl_wasm_rt=>shr_u32( iv_val = s0 iv_shift = s1 ). l4 = s0.
  DO 1 TIMES. " block
    s0 = l5.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = 0. p1 = s0. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = l3. s1 = l5. mem_st_i32( iv_addr = s0 + 28 iv_val = s1 ). s0 = l3. s1 = p0. s1 = mem_ld_i32( s1 + 4 ). mem_st_i32( iv_addr = s0 + 20 iv_val = s1 ).
  ENDDO.
  s0 = l3. s1 = p1. mem_st_i32( iv_addr = s0 + 24 iv_val = s1 ). s0 = l3. s1 = 8. s0 = s0 + s1. s1 = l4. s2 = p2. s3 = l3. s4 = 20. s3 = s3 + s4. PERFORM f781 USING s0 s1 s2 s3. s0 = l3. s0 = mem_ld_i32( s0 + 8 ).
  IF s0 <> 0.
    s0 = l3. s0 = mem_ld_i32( s0 + 12 ). s1 = l3. s1 = mem_ld_i32( s1 + 16 ). PERFORM f1271 USING s0 s1.
    RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
  ELSE.
  ENDIF.
  s0 = l3. s0 = mem_ld_i32( s0 + 12 ). p1 = s0. s0 = p0. s1 = p2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s1 = p1. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = l3. s1 = 32. s0 = s0 + s1. gv_g0 = s0.
ENDFORM.

FORM f830 USING p0 TYPE i CHANGING rv TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i.
  DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    s0 = p0. s1 = 32.
    IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        s0 = 1. s1 = p0. s2 = 127.
        IF zcl_wasm_rt=>lt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0. EXIT. ENDIF. " br_if 0
        s0 = p0. s1 = 65536.
        IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        DO 1 TIMES. " block
          s0 = p0. s1 = 131072.
          IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0.
            s0 = p0.
            RAISE EXCEPTION TYPE cx_sy_program_error. " SIMD not supported
            RAISE EXCEPTION TYPE cx_sy_program_error. " SIMD not supported
            RAISE EXCEPTION TYPE cx_sy_program_error. " SIMD not supported
            RAISE EXCEPTION TYPE cx_sy_program_error. " SIMD not supported
            RAISE EXCEPTION TYPE cx_sy_program_error. " SIMD not supported
            RAISE EXCEPTION TYPE cx_sy_program_error. " SIMD not supported
            IF s0 <> 0. lv_br = 4. EXIT. ENDIF. " br_if 4
            s0 = p0. s1 = 195102. s0 = s0 - s1. s1 = 1506.
            IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. lv_br = 4. EXIT. ENDIF. " br_if 4
            s0 = p0. s1 = 201547. s0 = s0 - s1. s1 = 5.
            IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. lv_br = 4. EXIT. ENDIF. " br_if 4
            s0 = p0. s1 = 205744. s0 = s0 - s1. s1 = 712016.
            IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. lv_br = 4. EXIT. ENDIF. " br_if 4
            s0 = p0. s1 = -32. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = 173792.
            IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
            lv_br = 4. EXIT. " br 4
          ELSE.
          ENDIF.
          s0 = p0. s1 = 1051552. s2 = 44. s3 = 1051640. s4 = 196. s5 = 1051836. s6 = 450. PERFORM f574 USING s0 s1 s2 s3 s4 s5 s6 CHANGING s0. rv = s0. RETURN.
        ENDDO.
        s0 = 0. s1 = p0. s2 = -2. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). s2 = 178206.
        IF s1 = s2. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0. EXIT. ENDIF. " br_if 0
        s0 = p0. s1 = 1114112. s0 = s0 - s1. s1 = -196112.
        IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      ENDDO.
      rv = s0. RETURN.
    ENDDO.
    s0 = p0. s1 = 1052286. s2 = 40. s3 = 1052366. s4 = 288. s5 = 1052654. s6 = 301. PERFORM f574 USING s0 s1 s2 s3 s4 s5 s6 CHANGING s0. rv = s0. RETURN.
  ENDDO.
  s0 = 0. rv = s0.
ENDFORM.

FORM f831 USING p0 TYPE i.
  DATA l1 TYPE i. DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i.
  DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 32. s0 = s0 - s1. l1 = s0.
  gv_g0 = s0. s0 = p0. s0 = mem_ld_i32( s0 ). l3 = s0. s1 = 1. s0 = s0 + s1. l2 = s0.
  IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = 0. s1 = 0. PERFORM f1271 USING s0 s1.
    RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
  ELSE.
  ENDIF.
  s0 = 4. s1 = l3. s2 = 1. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). l4 = s1. s2 = l2. s3 = l2. s4 = l4.
  IF zcl_wasm_rt=>lt_u32( iv_a = s3 iv_b = s4 ) = abap_true. s3 = 1. ELSE. s3 = 0. ENDIF.
  IF s3 <> 0. s1 = s1. ELSE. s1 = s2. ENDIF.
  l2 = s1. s2 = l2. s3 = 4.
  IF zcl_wasm_rt=>le_u32( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
  IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
  l4 = s0. s1 = 4. s0 = zcl_wasm_rt=>shl32( iv_val = s0 iv_shift = s1 ). l5 = s0. s0 = l2. s1 = 134217728.
  IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
  s1 = 3. s0 = zcl_wasm_rt=>shl32( iv_val = s0 iv_shift = s1 ). l2 = s0. s0 = l1. s1 = l3.
  IF s1 <> 0.
    s1 = l1. s2 = l3. s3 = 4. s2 = zcl_wasm_rt=>shl32( iv_val = s2 iv_shift = s3 ). mem_st_i32( iv_addr = s1 + 28 iv_val = s2 ). s1 = l1. s2 = p0. s2 = mem_ld_i32( s2 + 4 ). mem_st_i32( iv_addr = s1 + 20 iv_val = s2 ). s1 = 8.
  ELSE.
    s2 = 0.
  ENDIF.
  mem_st_i32( iv_addr = s1 + 24 iv_val = s2 ). s1 = l1. s2 = 8. s1 = s1 + s2. s2 = l2. s3 = l5. s4 = l1. s5 = 20. s4 = s4 + s5. PERFORM f584 USING s1 s2 s3 s4. s1 = l1. s1 = mem_ld_i32( s1 + 8 ).
  IF s1 <> 0.
    s1 = l1. s1 = mem_ld_i32( s1 + 12 ). s2 = l1. s2 = mem_ld_i32( s2 + 16 ). PERFORM f1271 USING s1 s2.
    RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
  ELSE.
  ENDIF.
  s1 = l1. s1 = mem_ld_i32( s1 + 12 ). l3 = s1. s1 = p0. s2 = l4. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = p0. s2 = l3. mem_st_i32( iv_addr = s1 + 4 iv_val = s2 ). s1 = l1. s2 = 32. s1 = s1 + s2. gv_g0 = s1.
ENDFORM.

FORM f832 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i.
  DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    s0 = p0. s1 = p1.
    IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    DO 1 TIMES. " block
      s0 = p1. s0 = mem_ld_i32( s0 + 12 ). l2 = s0. s1 = p0. s1 = mem_ld_i32( s1 + 12 ).
      IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = 0. s1 = l2. s2 = p0. s2 = mem_ld_i32( s2 ). l3 = s2. s2 = mem_ld_i32( s2 ). s3 = p0. s3 = mem_ld_i32( s3 + 16 ). s4 = l2. s5 = 2. s4 = zcl_wasm_rt=>shl32( iv_val = s4 iv_shift = s5 ). s5 = l3. s6 = 4. s5 = s5 + s6.
        s5 = mem_ld_i32( s5 ).
        DATA(lv_ci_func) = mt_tab0[ s5 + 1 ]. " call_indirect
        s2 = dispatch_t11( iv_idx = lv_ci_func p0 = s2 p1 = s3 p2 = s4 ). l3 = s2.
        IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        s0 = p0. s1 = l2. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = p0. s1 = l3. mem_st_i32( iv_addr = s0 + 16 iv_val = s1 ). s0 = p1. s0 = mem_ld_i32( s0 + 12 ). l2 = s0.
      ELSE.
      ENDIF.
      s0 = p0. s1 = p1. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 4 ). zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 4 CHANGING cv_mem = mv_mem ). s0 = l2. s1 = 2.
      s0 = zcl_wasm_rt=>shl32( iv_val = s0 iv_shift = s1 ). l2 = s0.
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = p1. s1 = mem_ld_i32( s1 + 16 ). s2 = l2. PERFORM f216 USING s0 s1 s2 CHANGING s0. s0 = 0. rv = s0. RETURN.
    ENDDO.
    s0 = p0. s0 = mem_ld_i32( s0 + 12 ).
    IF s0 <> 0.
      s0 = p0. s0 = mem_ld_i32( s0 ). p1 = s0. s0 = mem_ld_i32( s0 ). s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s2 = 0. s3 = p1. s4 = 4. s3 = s3 + s4. s3 = mem_ld_i32( s3 ).
      DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
      s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). p1 = s0. s0 = p0. s1 = 0. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = p0. s1 = p1. mem_st_i32( iv_addr = s0 + 16 iv_val = s1 ).
    ELSE.
    ENDIF.
    s0 = p0. s1 = 9223372032559808512. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 4 CHANGING cv_mem = mv_mem ). s0 = 32. l4 = s0.
  ENDDO.
  s0 = l4. rv = s0.
ENDFORM.

FORM f833 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i p4 TYPE i CHANGING rv TYPE int8.
  DATA l5 TYPE i. DATA l6 TYPE int8. DATA l7 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i.
  DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA lv_br TYPE i. s0 = p3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). p1 = s0.
  s1 = -4294967297.
  IF zcl_wasm_rt=>le_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = p0. s1 = 1137529. s2 = 0. PERFORM f970 USING s0 s1 s2 CHANGING s0. s0 = 25769803776. rv = s0. RETURN.
  ELSE.
  ENDIF.
  s0 = p3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 16 ). l7 = s0. s0 = 25769803776. l6 = s0.
  DO 1 TIMES. " block
    s0 = p0. s1 = p3. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 8 ). PERFORM f503 USING s0 s1 CHANGING s0. p2 = s0.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s1 = p1. s2 = p2. s3 = l7. s4 = p4.
    IF s4 = 0. s4 = 1. ELSE. s4 = 0. ENDIF.
    s5 = 14. s4 = zcl_wasm_rt=>shl32( iv_val = s4 iv_shift = s5 ). PERFORM f728 USING s0 s1 s2 s3 s4 CHANGING s0. p3 = s0.
    DO 1 TIMES. " block
      s0 = p2. s1 = 228.
      IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p0. s0 = mem_ld_i32( s0 + 16 ). l5 = s0. s0 = mem_ld_i32( s0 + 56 ). s1 = p2. s2 = 2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s0 = mem_ld_i32( s0 ). p0 = s0. s1 = p0. s1 = mem_ld_i32( s1 ). p2 = s1.
      s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p2. s1 = 1.
      IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = l5. s1 = p0. PERFORM f713 USING s0 s1.
    ENDDO.
    s0 = p3. s1 = 0.
    IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p4.
    IF s0 <> 0.
      s0 = p3. s1 = 0.
      IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      s0 = zcl_wasm_rt=>extend_u32( s0 ). s1 = 4294967296. s0 = zcl_wasm_rt=>or64( iv_a = s0 iv_b = s1 ). rv = s0. RETURN.
    ELSE.
    ENDIF.
    s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p0 = s0. s1 = p0. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p1. l6 = s0.
  ENDDO.
  s0 = l6. rv = s0.
ENDFORM.

FORM f834 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i p4 TYPE i CHANGING rv TYPE int8.
  DATA l5 TYPE i. DATA l6 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA lv_br TYPE i.
  s0 = gv_g0. s1 = 80. s0 = s0 - s1. p2 = s0. gv_g0 = s0. s0 = p4. s1 = 38. s0 = s0 + s1. p4 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        s0 = p1. s1 = -4294967296.
        IF zcl_wasm_rt=>lt_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = p4. s1 = p1. s1 = zcl_wasm_rt=>wrap_i64( s1 ). p3 = s1. s1 = mem_ld_i32_16u( s1 + 6 ).
        IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = p3. s0 = mem_ld_i32( s0 + 32 ). p3 = s0.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      ENDDO.
      s0 = p2. s1 = p0. s2 = 16. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). p3 = s1. s2 = p2. s3 = 16. s2 = s2 + s3. s3 = p3. s3 = mem_ld_i32( s3 + 68 ). s4 = p4. s5 = 24. s4 = s4 * s5. s3 = s3 + s4. s3 = mem_ld_i32( s3 + 4 ).
      PERFORM f410 USING s1 s2 s3 CHANGING s1. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s1 = 1147410. s2 = p2. PERFORM f970 USING s0 s1 s2 CHANGING s0. s0 = 25769803776. p1 = s0. lv_br = 1. EXIT. " br 1
    ENDDO.
    s0 = 12884901888. p1 = s0. s0 = p3. s1 = 8. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). p4 = s0. s1 = p3. s2 = 4. s1 = s1 + s2. l5 = s1.
    IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    DO. " loop
      s0 = p4. s1 = 16. s0 = s0 - s1. l6 = s0. s0 = p4. s0 = mem_ld_i32( s0 + 4 ). p4 = s0. s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = p3. s2 = l6. PERFORM f553 USING s0 s1 s2. s0 = p4. s1 = l5.
      IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
    ENDDO.
  ENDDO.
  s0 = p2. s1 = 80. s0 = s0 + s1. gv_g0 = s0. s0 = p1. rv = s0.
ENDFORM.

FORM f835 USING p0 TYPE i p1 TYPE i p2 TYPE i p3 TYPE i p4 TYPE i p5 TYPE i p6 TYPE i p7 TYPE i p8 TYPE i p9 TYPE i p10 TYPE i p11 TYPE i p12 TYPE i p13 TYPE i p14 TYPE i CHANGING rv TYPE i.
  DATA l15 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i.
  DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i.
  DATA s27 TYPE i. DATA s28 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l15 = s0. gv_g0 = s0. s0 = p0. s0 = mem_ld_i32( s0 + 20 ). s1 = p1. s2 = p2. s3 = p0. s3 = mem_ld_i32( s3 + 24 ). s3 = mem_ld_i32( s3 + 12 ).
  DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
  s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). p1 = s0. s0 = l15. s1 = 0. mem_st_i32_8( iv_addr = s0 + 13 iv_val = s1 ). s0 = l15. s1 = p1. mem_st_i32_8( iv_addr = s0 + 12 iv_val = s1 ). s0 = l15. s1 = p0.
  mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = l15. s1 = 8. s0 = s0 + s1. s1 = p3. s2 = p4. s3 = p5. s4 = p6. PERFORM f629 USING s0 s1 s2 s3 s4 CHANGING s0. s1 = p7. s2 = p8. s3 = p9. s4 = p10.
  PERFORM f629 USING s0 s1 s2 s3 s4 CHANGING s0. s1 = p11. s2 = p12. s3 = p13. s4 = p14. PERFORM f629 USING s0 s1 s2 s3 s4 CHANGING s0. p2 = s0. s0 = l15. s0 = mem_ld_i32_8u( s0 + 12 ). p1 = s0.
  DO 1 TIMES. " block
    s0 = p1. s1 = 0.
    IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    s1 = l15. s1 = mem_ld_i32_8u( s1 + 13 ).
    IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
    IF s1 <> 0. EXIT. ENDIF. " br_if 0
    s0 = 1. s1 = p1.
    IF s1 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p2. s0 = mem_ld_i32( s0 ). p0 = s0. s0 = mem_ld_i32_8u( s0 + 28 ). s1 = 4. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p0. s0 = mem_ld_i32( s0 + 20 ). s1 = 1080545. s2 = 2. s3 = p0. s3 = mem_ld_i32( s3 + 24 ). s3 = mem_ld_i32( s3 + 12 ).
      DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
      s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s1 = p0. s1 = mem_ld_i32( s1 + 20 ). s2 = 1080042. s3 = 1. s4 = p0. s4 = mem_ld_i32( s4 + 24 ). s4 = mem_ld_i32( s4 + 12 ).
    DATA(lv_ci_func) = mt_tab0[ s4 + 1 ]. " call_indirect
    s1 = dispatch_t11( iv_idx = lv_ci_func p0 = s1 p1 = s2 p2 = s3 ).
  ENDDO.
  s2 = l15. s3 = 16. s2 = s2 + s3. gv_g0 = s2. rv = s1.
ENDFORM.

FORM f836 USING p0 TYPE i p1 TYPE i p2 TYPE i CHANGING rv TYPE i.
  DATA l3 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i.
  DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA lv_br TYPE i. s0 = p1. s0 = mem_ld_i32( s0 + 124 ). l3 = s0. s1 = 65535.
  IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = p0. s1 = 1138845. s2 = 0. PERFORM f969 USING s0 s1 s2 CHANGING s0. s0 = -1. rv = s0. RETURN.
  ELSE.
  ENDIF.
  DO 1 TIMES. " block
    s0 = l3. s1 = p1. s1 = mem_ld_i32( s1 + 120 ).
    IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = -1. s1 = p0. s2 = p1. s3 = 116. s2 = s2 + s3. s3 = 16. s4 = p1. s5 = 120. s4 = s4 + s5. s5 = l3. s6 = 1. s5 = s5 + s6. PERFORM f845 USING s1 s2 s3 s4 s5 CHANGING s1.
      IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p1. s0 = mem_ld_i32( s0 + 124 ). l3 = s0.
    ELSE.
    ENDIF.
    s0 = p1. s1 = l3. s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 + 124 iv_val = s1 ). s0 = p1. s0 = mem_ld_i32( s0 + 116 ). s1 = l3. s2 = 4. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. l3 = s0. s1 = 0.
    zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ). s0 = l3. s1 = 8. s0 = s0 + s1. s1 = 0. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ). s0 = p2.
    s1 = 228.
    IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s0 = mem_ld_i32( s0 + 56 ). s1 = p2. s2 = 2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s0 = mem_ld_i32( s0 ). p0 = s0. s1 = p0. s1 = mem_ld_i32( s1 ). s2 = 1.
      s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
    ELSE.
    ENDIF.
    s0 = l3. s1 = l3. s1 = mem_ld_i32( s1 + 12 ). s2 = -256. s1 = zcl_wasm_rt=>or32( iv_a = s1 iv_b = s2 ). mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = l3. s1 = p2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p1.
    s0 = mem_ld_i32( s0 + 124 ). s1 = 1. s0 = s0 - s1.
  ENDDO.
  rv = s0.
ENDFORM.

FORM f837 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i p4 TYPE i CHANGING rv TYPE int8.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i.
  DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    s0 = p3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). p1 = s0. s1 = -4294967297.
    IF zcl_wasm_rt=>le_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p4.
      IF s0 <> 0.
        s0 = p0. s1 = 1137529. s2 = 0. PERFORM f970 USING s0 s1 s2 CHANGING s0. s0 = 25769803776. rv = s0. RETURN.
      ELSE.
      ENDIF.
      s0 = p1. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
      IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p0 = s0. s1 = p0. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p1. rv = s0. RETURN.
    ELSE.
    ENDIF.
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p2 = s0. s0 = mem_ld_i32_16u( s0 + 6 ). s1 = 48.
        IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = p0. s1 = p1. PERFORM f568 USING s0 s1 CHANGING s0. p3 = s0. s1 = 0.
          IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0.
            s0 = 25769803776. rv = s0. RETURN.
          ELSE.
          ENDIF.
          s0 = p4.
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          s0 = p3.
          IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
          s0 = p0. s1 = 1144589. s2 = 0. PERFORM f970 USING s0 s1 s2 CHANGING s0. s0 = 25769803776. rv = s0. RETURN.
        ELSE.
        ENDIF.
        s0 = p2. s1 = p2. s1 = mem_ld_i32_8u( s1 + 5 ). s2 = 254. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). mem_st_i32_8( iv_addr = s0 + 5 iv_val = s1 ). s0 = 1. p3 = s0. s0 = p4.
        IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      ENDDO.
      s0 = p3. s1 = 0.
      IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      s0 = zcl_wasm_rt=>extend_u32( s0 ). s1 = 4294967296. s0 = zcl_wasm_rt=>or64( iv_a = s0 iv_b = s1 ). rv = s0. RETURN.
    ENDDO.
    s0 = p2. s1 = p2. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
  ENDDO.
  s0 = p1. rv = s0.
ENDFORM.

FORM f838 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i CHANGING rv TYPE int8.
  DATA l4 TYPE i. DATA l5 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i.
  DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i.
  DATA lv_br TYPE i. s0 = p1. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = -47244640256.
  IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = p0. s1 = 1147476. s2 = 0. PERFORM f970 USING s0 s1 s2 CHANGING s0. s0 = 25769803776. rv = s0. RETURN.
  ELSE.
  ENDIF.
  s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l4 = s0. s1 = 4. s0 = s0 + s1. s1 = l4. s2 = 8. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). l5 = s1. s1 = l4. s2 = 12. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). s2 = -2147483648.
  IF s1 = s2. s1 = 1. ELSE. s1 = 0. ENDIF.
  IF s1 <> 0.
    s1 = l4. s2 = 0. mem_st_i32( iv_addr = s1 + 8 iv_val = s2 ).
  ELSE.
  ENDIF.
  s1 = 10. s2 = p2. s3 = p3. s4 = 4194304. s3 = zcl_wasm_rt=>or32( iv_a = s3 iv_b = s4 ). s4 = 1. PERFORM f30 USING s0 s1 s2 s3 s4 CHANGING s0. p2 = s0. s0 = l4. s1 = l5. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ).
  DO 1 TIMES. " block
    s0 = p2.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = 25769803776. p1 = s0. s0 = p0. s0 = mem_ld_i32( s0 + 16 ). p2 = s0. s0 = mem_ld_i32_8u( s0 + 136 ).
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p2. s1 = 1. mem_st_i32_8( iv_addr = s0 + 136 iv_val = s1 ). s0 = p0. s1 = 1134898. s2 = 0. PERFORM f969 USING s0 s1 s2 CHANGING s0. s0 = p2. s1 = 0. mem_st_i32_8( iv_addr = s0 + 136 iv_val = s1 ). s0 = 25769803776.
      rv = s0. RETURN.
    ELSE.
    ENDIF.
    s0 = p0. s1 = p2. s2 = p2. PERFORM f768 USING s2 CHANGING s2. PERFORM f126 USING s0 s1 s2 CHANGING s0. p1 = s0. s0 = p0. s0 = mem_ld_i32( s0 + 216 ). p0 = s0. s0 = mem_ld_i32( s0 ). s1 = p2. s2 = 0. s3 = p0. s4 = 4. s3 = s3 + s4.
    s3 = mem_ld_i32( s3 ).
    DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
    s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ).
  ENDDO.
  s0 = p1. rv = s0.
ENDFORM.

FORM f839 USING p0 TYPE i p1 TYPE i p2 TYPE i CHANGING rv TYPE i.
  DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i.
  DATA s10 TYPE i. DATA s11 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l4 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    s0 = p1. s1 = 16384. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p1. s1 = 32768. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p0. s1 = 16. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). s1 = 140. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). p1 = s0.
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p1. s0 = mem_ld_i32_8u( s0 + 40 ). s1 = 1. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
    ELSE.
    ENDIF.
    s0 = l4. s1 = 0. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = 0. p1 = s0.
    DO 1 TIMES. " block
      s0 = p0. s0 = mem_ld_i32( s0 + 16 ). l3 = s0. s0 = mem_ld_i32_8u( s0 + 136 ).
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = 1. p1 = s0. s0 = l3. s0 = mem_ld_i32( s0 + 140 ). l3 = s0.
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = l3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 8 ). l6 = s0. s1 = -4294967296.
      IF zcl_wasm_rt=>lt_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          s0 = l6. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l3 = s0. s0 = mem_ld_i32_16u( s0 + 6 ). l5 = s0. s1 = 13. s0 = s0 - s1.
          CASE s0.
            WHEN 0. lv_br = 1. EXIT.
            WHEN 1. lv_br = 2. EXIT.
            WHEN 2. lv_br = 2. EXIT.
            WHEN 3. lv_br = 1. EXIT.
            WHEN OTHERS. EXIT.
          ENDCASE.
        ENDDO.
        s0 = l5. s1 = 52. s0 = s0 - s1.
        CASE s0.
          WHEN 0. EXIT.
          WHEN 1. lv_br = 1. EXIT.
          WHEN 2. lv_br = 1. EXIT.
          WHEN 3. lv_br = 1. EXIT.
          WHEN 4. EXIT.
          WHEN OTHERS. lv_br = 1. EXIT.
        ENDCASE.
      ENDDO.
      s0 = l3. s0 = mem_ld_i32( s0 + 32 ).
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      p1 = s0.
    ENDDO.
    s0 = p0. s1 = 4. s2 = p2. s3 = 0. s4 = p1. PERFORM f534 USING s0 s1 s2 s3 s4. s0 = -1. l3 = s0.
  ENDDO.
  s0 = l4. s1 = 16. s0 = s0 + s1. gv_g0 = s0. s0 = l3. rv = s0.
ENDFORM.

FORM f840 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i.
  DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA lv_br TYPE i. s0 = gv_g0.
  s1 = 48. s0 = s0 - s1. l2 = s0. gv_g0 = s0. s0 = p0. s1 = 12. s0 = s0 + s1. l3 = s0.
  DO 1 TIMES. " block
    s0 = p0. s0 = mem_ld_i32_8u( s0 + 16 ).
    IF s0 <> 0.
      s0 = l2. s1 = p0. s1 = mem_ld_i32_8u( s1 + 17 ). mem_st_i32_8( iv_addr = s0 + 7 iv_val = s1 ). s0 = l2. s1 = 2. mem_st_i32( iv_addr = s0 + 28 iv_val = s1 ). s0 = l2. s1 = 1050724. mem_st_i32( iv_addr = s0 + 24 iv_val = s1 ). s0 = l2.
      s1 = 2. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 36 CHANGING cv_mem = mv_mem ). s0 = l2. s1 = l3. s1 = zcl_wasm_rt=>extend_u32( s1 ). s2 = 55834574848. s1 = zcl_wasm_rt=>or64( iv_a = s1 iv_b = s2 ).
      zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 16 CHANGING cv_mem = mv_mem ). s0 = l2. s1 = l2. s2 = 7. s1 = s1 + s2. s1 = zcl_wasm_rt=>extend_u32( s1 ). s2 = 60129542144. s1 = zcl_wasm_rt=>or64( iv_a = s1 iv_b = s2 ).
      zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 8 CHANGING cv_mem = mv_mem ). s0 = l2. s1 = l2. s2 = 8. s1 = s1 + s2. mem_st_i32( iv_addr = s0 + 32 iv_val = s1 ). s0 = p1. s0 = mem_ld_i32( s0 + 20 ). s1 = p1.
      s1 = mem_ld_i32( s1 + 24 ). s2 = l2. s3 = 24. s2 = s2 + s3. PERFORM f360 USING s0 s1 s2 CHANGING s0. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s1 = l2. s2 = 1. mem_st_i32( iv_addr = s1 + 28 iv_val = s2 ). s1 = l2. s2 = 1050784. mem_st_i32( iv_addr = s1 + 24 iv_val = s2 ). s1 = l2. s2 = 1.
    zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s2 iv_addr = s1 + 36 CHANGING cv_mem = mv_mem ). s1 = l2. s2 = l3. s2 = zcl_wasm_rt=>extend_u32( s2 ). s3 = 55834574848. s2 = zcl_wasm_rt=>or64( iv_a = s2 iv_b = s3 ).
    zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s2 iv_addr = s1 + 8 CHANGING cv_mem = mv_mem ). s1 = l2. s2 = l2. s3 = 8. s2 = s2 + s3. mem_st_i32( iv_addr = s1 + 32 iv_val = s2 ). s1 = p1. s1 = mem_ld_i32( s1 + 20 ). s2 = p1.
    s2 = mem_ld_i32( s2 + 24 ). s3 = l2. s4 = 24. s3 = s3 + s4. PERFORM f360 USING s1 s2 s3 CHANGING s1.
  ENDDO.
  s2 = l2. s3 = 48. s2 = s2 + s3. gv_g0 = s2. rv = s1.
ENDFORM.

FORM f841 USING p0 TYPE i p1 TYPE int8.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i.
  DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l4 = s0. s1 = 40. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). l2 = s0.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l2. s1 = l2. s1 = mem_ld_i32( s1 ). l3 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l3. s1 = 1.
    IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s1 = l2. s1 = zcl_wasm_rt=>extend_u32( s1 ). s2 = -4294967296. s1 = zcl_wasm_rt=>or64( iv_a = s1 iv_b = s2 ). PERFORM f453 USING s0 s1.
  ENDDO.
  DO 1 TIMES. " block
    s0 = l4. s0 = mem_ld_i32( s0 + 32 ). l3 = s0.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l4. s0 = mem_ld_i32( s0 + 36 ). l4 = s0.
    IF s0 <> 0.
      s0 = l3. s0 = mem_ld_i32( s0 + 60 ). s1 = 0.
      IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = l4. l2 = s0.
        DO. " loop
          s0 = p0. s1 = l2. s1 = mem_ld_i32( s1 ). PERFORM f494 USING s0 s1. s0 = l2. s1 = 4. s0 = s0 + s1. l2 = s0. s0 = l5. s1 = 1. s0 = s0 + s1. l5 = s0. s1 = l3. s1 = mem_ld_i32( s1 + 60 ).
          IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
        ENDDO.
      ELSE.
      ENDIF.
      s0 = p0. s1 = 16. s0 = s0 + s1. s1 = l4. s2 = p0. s2 = mem_ld_i32( s2 + 4 ).
      DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
      dispatch_t6( iv_idx = lv_ci_func p0 = s0 p1 = s1 ).
    ELSE.
    ENDIF.
    s0 = l3. s1 = l3. s1 = mem_ld_i32( s1 ). l2 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l2. s1 = 1.
    IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s1 = l3. s1 = zcl_wasm_rt=>extend_u32( s1 ). s2 = -8589934592. s1 = zcl_wasm_rt=>or64( iv_a = s1 iv_b = s2 ). PERFORM f453 USING s0 s1.
  ENDDO.
ENDFORM.

FORM f842 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i p4 TYPE i CHANGING rv TYPE int8.
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
      PERFORM f410 USING s1 s2 s3 CHANGING s1. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s1 = 1147410. s2 = p2. PERFORM f970 USING s0 s1 s2 CHANGING s0. s0 = 25769803776. lv_br = 1. EXIT. " br 1
    ENDDO.
    s1 = p0. s2 = l5. s3 = p3. s3 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s3 + 0 ). p1 = s3. s4 = 0. s5 = p1. s6 = 32. s5 = zcl_wasm_rt=>shr_u64( iv_val = s5 iv_shift = s6 ). s5 = zcl_wasm_rt=>wrap_i64( s5 ). s6 = 7.
    s5 = s5 - s6. s6 = -18.
    IF zcl_wasm_rt=>ge_u32( iv_a = s5 iv_b = s6 ) = abap_true. s5 = 1. ELSE. s5 = 0. ENDIF.
    IF s5 <> 0. s3 = s3. ELSE. s3 = s4. ENDIF.
    s4 = p1. s5 = p1. s6 = 9221120288580698112. s5 = s5 + s6. s6 = 9223372036854775807. s5 = zcl_wasm_rt=>and64( iv_a = s5 iv_b = s6 ).
    IF s5 = 0. s5 = 1. ELSE. s5 = 0. ENDIF.
    IF s5 <> 0. s3 = s3. ELSE. s3 = s4. ENDIF.
    PERFORM f718 USING s1 s2 s3 CHANGING s1. s2 = 0.
    IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
    s1 = zcl_wasm_rt=>extend_u32( s1 ). s2 = 4294967296. s1 = zcl_wasm_rt=>or64( iv_a = s1 iv_b = s2 ).
  ENDDO.
  s2 = p2. s3 = 80. s2 = s2 + s3. gv_g0 = s2. rv = s1.
ENDFORM.

FORM f843 USING p0 TYPE i p1 TYPE int8 CHANGING rv TYPE i.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i.
  DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA lv_br TYPE i. s0 = gv_g0.
  s1 = 16. s0 = s0 - s1. l4 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    s0 = p0. s0 = mem_ld_i32( s0 + 16 ). l3 = s0.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = 1. l2 = s0. s0 = l3. s1 = 1080438. s2 = 1. PERFORM f244 USING s0 s1 s2 CHANGING s0.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p1.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = l3. s1 = 1080310. s2 = 1. PERFORM f244 USING s0 s1 s2 CHANGING s0. l2 = s0. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    DO 1 TIMES. " block
      s0 = p1. s1 = p0. s1 = zcl_wasm_rt=>mem_ld_i64_ext( iv_mem = mv_mem iv_addr = s1 + 20 iv_op = 53 ). l5 = s1.
      IF zcl_wasm_rt=>le_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = l5. s1 = p1. s0 = s0 - s1. p1 = s0. s1 = 26.
        IF zcl_wasm_rt=>lt_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        s0 = l3. s1 = 1080310. s2 = 1. PERFORM f244 USING s0 s1 s2 CHANGING s0.
        IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
        s0 = p1. s1 = 1. s2 = l3. PERFORM f607 USING s0 s1 s2 CHANGING s0. l2 = s0. lv_br = 2. EXIT. " br 2
      ELSE.
      ENDIF.
      s0 = l3. s1 = 1080396. s2 = 16. PERFORM f244 USING s0 s1 s2 CHANGING s0.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = 0. l2 = s0. s0 = p0. s1 = 0. mem_st_i32_8( iv_addr = s0 + 4 iv_val = s1 ). s0 = p0. s1 = 0. mem_st_i32( iv_addr = s0 iv_val = s1 ). lv_br = 1. EXIT. " br 1
    ENDDO.
    s0 = l4. s1 = p1. s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = 97. s1 = s1 + s2. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = l4. s1 = 12. s0 = s0 + s1. s1 = l3. PERFORM f682 USING s0 s1 CHANGING s0. l2 = s0.
  ENDDO.
  s0 = l4. s1 = 16. s0 = s0 + s1. gv_g0 = s0. s0 = l2. rv = s0.
ENDFORM.

FORM f844 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA l2 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i.
  DATA s13 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    s0 = p0. s0 = mem_ld_i32( s0 + 8 ). l2 = s0. s1 = p0. s1 = mem_ld_i32( s1 + 12 ).
    IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = -1. s1 = p0. s2 = l2. s3 = 1. s2 = s2 + s3. s3 = p1. PERFORM f628 USING s1 s2 s3 CHANGING s1.
      IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
    ELSE.
    ENDIF.
    DO 1 TIMES. " block
      s0 = p0. s0 = mem_ld_i32( s0 + 16 ).
      IF s0 <> 0.
        s0 = p0. s1 = p0. s1 = mem_ld_i32( s1 + 8 ). l2 = s1. s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = p0. s0 = mem_ld_i32( s0 + 4 ). s1 = l2. s2 = 1. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ).
        s0 = s0 + s1. s1 = 16. s0 = s0 + s1. s1 = p1. mem_st_i32_16( iv_addr = s0 iv_val = s1 ). lv_br = 1. EXIT. " br 1
      ELSE.
      ENDIF.
      s0 = p1. s1 = 255.
      IF zcl_wasm_rt=>le_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = p0. s1 = p0. s1 = mem_ld_i32( s1 + 8 ). l2 = s1. s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = l2. s1 = p0. s1 = mem_ld_i32( s1 + 4 ). s0 = s0 + s1. s1 = 16. s0 = s0 + s1. s1 = p1.
        mem_st_i32_8( iv_addr = s0 iv_val = s1 ). lv_br = 1. EXIT. " br 1
      ELSE.
      ENDIF.
      s0 = -1. s1 = p0. s2 = p0. s2 = mem_ld_i32( s2 + 12 ). PERFORM f469 USING s1 s2 CHANGING s1.
      IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p0. s1 = p0. s1 = mem_ld_i32( s1 + 8 ). l2 = s1. s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = p0. s0 = mem_ld_i32( s0 + 4 ). s1 = l2. s2 = 1. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ).
      s0 = s0 + s1. s1 = 16. s0 = s0 + s1. s1 = p1. mem_st_i32_16( iv_addr = s0 iv_val = s1 ).
    ENDDO.
    s0 = 0.
  ENDDO.
  rv = s0.
ENDFORM.

FORM f845 USING p0 TYPE i p1 TYPE i p2 TYPE i p3 TYPE i p4 TYPE i CHANGING rv TYPE i.
  DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i.
  DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA lv_br TYPE i. s0 = p0. s0 = mem_ld_i32( s0 + 16 ). l5 = s0. s1 = 16. s0 = s0 + s1. s1 = p1. s1 = mem_ld_i32( s1 ). s2 = p4.
  s3 = p3. s3 = mem_ld_i32( s3 ). s4 = 3. s3 = s3 * s4. s4 = 2. s3 = s3 / s4. l6 = s3. s4 = p4. s5 = l6.
  IF s4 > s5. s4 = 1. ELSE. s4 = 0. ENDIF.
  IF s4 <> 0. s2 = s2. ELSE. s2 = s3. ENDIF.
  l7 = s2. s3 = p2. s2 = s2 * s3. l6 = s2. s3 = l5. s3 = mem_ld_i32( s3 + 8 ).
  DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
  s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). p4 = s0. s0 = p0. s0 = mem_ld_i32( s0 + 16 ). l5 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      s0 = l6.
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p4.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = -1. s1 = l5. s1 = mem_ld_i32_8u( s1 + 136 ).
      IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = l5. s1 = 1. mem_st_i32_8( iv_addr = s0 + 136 iv_val = s1 ). s0 = p0. s1 = 1134898. s2 = 0. PERFORM f969 USING s0 s1 s2 CHANGING s0. s0 = l5. s1 = 0. mem_st_i32_8( iv_addr = s0 + 136 iv_val = s1 ). s0 = -1. rv = s0. RETURN.
    ENDDO.
    s0 = p4. s1 = l5. s1 = mem_ld_i32( s1 + 12 ).
    DATA(lv_ci_func) = mt_tab0[ s1 + 1 ]. " call_indirect
    s0 = dispatch_t3( iv_idx = lv_ci_func p0 = s0 ). p0 = s0. s0 = p4.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = -1. rv = s0. RETURN.
    ELSE.
    ENDIF.
    s0 = p1. s1 = p4. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p3. s1 = p0. s2 = l6. s1 = s1 - s2. p1 = s1. s2 = 0. s3 = p0. s4 = p1.
    IF zcl_wasm_rt=>ge_u32( iv_a = s3 iv_b = s4 ) = abap_true. s3 = 1. ELSE. s3 = 0. ENDIF.
    IF s3 <> 0. s1 = s1. ELSE. s1 = s2. ENDIF.
    s2 = p2. s1 = zcl_wasm_rt=>div_u32( iv_a = s1 iv_b = s2 ). s2 = l7. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = 0.
  ENDDO.
  rv = s0.
ENDFORM.

FORM f846 USING p0 TYPE i p1 TYPE i p2 TYPE i CHANGING rv TYPE i.
  DATA l3 TYPE int8. DATA l4 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i.
  DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA lv_br TYPE i. s0 = p2. s1 = p0. s1 = mem_ld_i32( s1 ). s2 = 1. PERFORM f772 USING s0 s1 s2 CHANGING s0. l3 = s0. s0 = p2. s1 = p1.
  s1 = mem_ld_i32( s1 ). s2 = 1. PERFORM f772 USING s0 s1 s2 CHANGING s0. l4 = s0. s0 = 0. p0 = s0.
  DO 1 TIMES. " block
    s0 = l3. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 25769803776.
    IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l4. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 25769803776.
    IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l3. s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = l4. s1 = zcl_wasm_rt=>wrap_i64( s1 ). PERFORM f588 USING s0 s1 CHANGING s0. p0 = s0.
  ENDDO.
  DO 1 TIMES. " block
    s0 = l3. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
    IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l3. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p1 = s0. s1 = p1. s1 = mem_ld_i32( s1 ). p1 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p1. s1 = 1.
    IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p2. s0 = mem_ld_i32( s0 + 16 ). s1 = l3. PERFORM f453 USING s0 s1.
  ENDDO.
  DO 1 TIMES. " block
    s0 = l4. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
    IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l4. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p1 = s0. s1 = p1. s1 = mem_ld_i32( s1 ). p1 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p1. s1 = 1.
    IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p2. s0 = mem_ld_i32( s0 + 16 ). s1 = l4. PERFORM f453 USING s0 s1.
  ENDDO.
  s0 = p0. rv = s0.
ENDFORM.

FORM f847 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA l2 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i.
  DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l2 = s0. gv_g0 = s0. s0 = l2.
  s1 = p0. s1 = mem_ld_i32( s1 ). mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = p1. s0 = mem_ld_i32( s0 + 20 ). s1 = 1075768. s2 = 21. s3 = p1. s3 = mem_ld_i32( s3 + 24 ). s3 = mem_ld_i32( s3 + 12 ).
  DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
  s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). p0 = s0. s0 = l2. s1 = 0. mem_st_i32_8( iv_addr = s0 + 13 iv_val = s1 ). s0 = l2. s1 = p0. mem_st_i32_8( iv_addr = s0 + 12 iv_val = s1 ). s0 = l2. s1 = p1.
  mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = l2. s1 = 8. s0 = s0 + s1. s1 = 1116148. s2 = 4. s3 = l2. s4 = 4. s3 = s3 + s4. s4 = 1060652. PERFORM f629 USING s0 s1 s2 s3 s4 CHANGING s0. p1 = s0. s0 = l2. s0 = mem_ld_i32_8u( s0 + 12 ).
  p0 = s0.
  DO 1 TIMES. " block
    s0 = p0. s1 = 0.
    IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    s1 = l2. s1 = mem_ld_i32_8u( s1 + 13 ).
    IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
    IF s1 <> 0. EXIT. ENDIF. " br_if 0
    s0 = 1. s1 = p0.
    IF s1 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p1. s0 = mem_ld_i32( s0 ). p0 = s0. s0 = mem_ld_i32_8u( s0 + 28 ). s1 = 4. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p0. s0 = mem_ld_i32( s0 + 20 ). s1 = 1080545. s2 = 2. s3 = p0. s3 = mem_ld_i32( s3 + 24 ). s3 = mem_ld_i32( s3 + 12 ).
      DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
      s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s1 = p0. s1 = mem_ld_i32( s1 + 20 ). s2 = 1080042. s3 = 1. s4 = p0. s4 = mem_ld_i32( s4 + 24 ). s4 = mem_ld_i32( s4 + 12 ).
    DATA(lv_ci_func) = mt_tab0[ s4 + 1 ]. " call_indirect
    s1 = dispatch_t11( iv_idx = lv_ci_func p0 = s1 p1 = s2 p2 = s3 ).
  ENDDO.
  s2 = l2. s3 = 16. s2 = s2 + s3. gv_g0 = s2. rv = s1.
ENDFORM.

FORM f848 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA l2 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i.
  DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l2 = s0. gv_g0 = s0. s0 = l2.
  s1 = p0. s1 = mem_ld_i32( s1 ). mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = p1. s0 = mem_ld_i32( s0 + 20 ). s1 = 1075768. s2 = 21. s3 = p1. s3 = mem_ld_i32( s3 + 24 ). s3 = mem_ld_i32( s3 + 12 ).
  DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
  s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). p0 = s0. s0 = l2. s1 = 0. mem_st_i32_8( iv_addr = s0 + 13 iv_val = s1 ). s0 = l2. s1 = p0. mem_st_i32_8( iv_addr = s0 + 12 iv_val = s1 ). s0 = l2. s1 = p1.
  mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = l2. s1 = 8. s0 = s0 + s1. s1 = 1116148. s2 = 4. s3 = l2. s4 = 4. s3 = s3 + s4. s4 = 1075792. PERFORM f629 USING s0 s1 s2 s3 s4 CHANGING s0. p1 = s0. s0 = l2. s0 = mem_ld_i32_8u( s0 + 12 ).
  p0 = s0.
  DO 1 TIMES. " block
    s0 = p0. s1 = 0.
    IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    s1 = l2. s1 = mem_ld_i32_8u( s1 + 13 ).
    IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
    IF s1 <> 0. EXIT. ENDIF. " br_if 0
    s0 = 1. s1 = p0.
    IF s1 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p1. s0 = mem_ld_i32( s0 ). p0 = s0. s0 = mem_ld_i32_8u( s0 + 28 ). s1 = 4. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p0. s0 = mem_ld_i32( s0 + 20 ). s1 = 1080545. s2 = 2. s3 = p0. s3 = mem_ld_i32( s3 + 24 ). s3 = mem_ld_i32( s3 + 12 ).
      DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
      s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s1 = p0. s1 = mem_ld_i32( s1 + 20 ). s2 = 1080042. s3 = 1. s4 = p0. s4 = mem_ld_i32( s4 + 24 ). s4 = mem_ld_i32( s4 + 12 ).
    DATA(lv_ci_func) = mt_tab0[ s4 + 1 ]. " call_indirect
    s1 = dispatch_t11( iv_idx = lv_ci_func p0 = s1 p1 = s2 p2 = s3 ).
  ENDDO.
  s2 = l2. s3 = 16. s2 = s2 + s3. gv_g0 = s2. rv = s1.
ENDFORM.

FORM f849 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i.
  DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l2 = s0. gv_g0 = s0. s0 = p0.
  s0 = mem_ld_i32( s0 ). p0 = s0. s1 = 8. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). l3 = s0. s0 = p0. s1 = 4. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). p0 = s0. s0 = 1. l4 = s0. s0 = p1. s0 = mem_ld_i32( s0 + 20 ). s1 = 1080447. s2 = 1. s3 = p1.
  s3 = mem_ld_i32( s3 + 24 ). s3 = mem_ld_i32( s3 + 12 ).
  DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
  s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). l5 = s0. s0 = l2. s1 = 0. mem_st_i32_8( iv_addr = s0 + 9 iv_val = s1 ). s0 = l2. s1 = l5. mem_st_i32_8( iv_addr = s0 + 8 iv_val = s1 ). s0 = l2. s1 = p1.
  mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = l3.
  IF s0 <> 0.
    DO. " loop
      s0 = l2. s1 = p0. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = l2. s1 = 4. s0 = s0 + s1. s1 = l2. s2 = 12. s1 = s1 + s2. s2 = 1078360. PERFORM f690 USING s0 s1 s2. s0 = p0. s1 = 1. s0 = s0 + s1. p0 = s0. s0 = l3. s1 = 1.
      s0 = s0 - s1. l3 = s0.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
    ENDDO.
    s0 = l2. s0 = mem_ld_i32_8u( s0 + 8 ).
  ELSE.
    s1 = l5.
  ENDIF.
  s2 = 255. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ).
  IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
  IF s1 <> 0.
    s1 = l2. s1 = mem_ld_i32( s1 + 4 ). p0 = s1. s1 = mem_ld_i32( s1 + 20 ). s2 = 1080448. s3 = 1. s4 = p0. s4 = mem_ld_i32( s4 + 24 ). s4 = mem_ld_i32( s4 + 12 ).
    DATA(lv_ci_func) = mt_tab0[ s4 + 1 ]. " call_indirect
    s1 = dispatch_t11( iv_idx = lv_ci_func p0 = s1 p1 = s2 p2 = s3 ). l4 = s1.
  ELSE.
  ENDIF.
  s1 = l2. s2 = 16. s1 = s1 + s2. gv_g0 = s1. s1 = l4. rv = s1.
ENDFORM.

FORM f850 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i.
  DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l3 = s0. gv_g0 = s0. s0 = -1. l4 = s0.
  DO 1 TIMES. " block
    s0 = p0. s1 = p1. PERFORM f12 USING s0 s1 CHANGING s0.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = 0. l4 = s0. s0 = p0. s0 = mem_ld_i32( s0 + 32 ). s1 = 44.
    IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    DO. " loop
      DO 1 TIMES. " block
        s0 = p0. PERFORM f41 USING s0 CHANGING s0.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = p0. s0 = mem_ld_i32( s0 + 80 ). l2 = s0. s1 = 256. s0 = s0 + s1. l5 = s0. s0 = l2. s0 = mem_ld_i32( s0 + 284 ). s1 = p0. s1 = mem_ld_i32( s1 + 4 ).
        IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = l5. s1 = 200. PERFORM f908 USING s0 s1. s0 = l3. s1 = p0. s1 = mem_ld_i32( s1 + 4 ). mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = l5. s1 = l3. s2 = 12. s1 = s1 + s2. s2 = 4. PERFORM f1097 USING s0 s1 s2. s0 = l2.
          s1 = p0. s1 = mem_ld_i32( s1 + 4 ). mem_st_i32( iv_addr = s0 + 284 iv_val = s1 ).
        ELSE.
        ENDIF.
        s0 = l2. s1 = l2. s2 = 260. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). mem_st_i32( iv_addr = s0 + 280 iv_val = s1 ). s0 = l5. s1 = 14. PERFORM f908 USING s0 s1. s0 = p0. s1 = p1. PERFORM f12 USING s0 s1 CHANGING s0.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = p0. s0 = mem_ld_i32( s0 + 80 ). s1 = -1. mem_st_i32( iv_addr = s0 + 280 iv_val = s1 ). s0 = p0. s0 = mem_ld_i32( s0 + 32 ). s1 = 44.
        IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        lv_br = 2. EXIT. " br 2
      ENDDO.
    ENDDO.
    s0 = -1. l4 = s0.
  ENDDO.
  s0 = l3. s1 = 16. s0 = s0 + s1. gv_g0 = s0. s0 = l4. rv = s0.
ENDFORM.

FORM f851.
  DATA l0 TYPE i. DATA l1 TYPE i. DATA l2 TYPE i. DATA l3 TYPE int8. DATA l4 TYPE int8. DATA l5 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i.
  DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 32. s0 = s0 - s1. l0 = s0. gv_g0 = s0.
  s0 = 1215076. s0 = mem_ld_i32_8u( s0 ).
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      s0 = 32. PERFORM f18 USING s0 CHANGING s0. l1 = s0.
      IF s0 <> 0.
        s0 = l1. s1 = 2. mem_st_i32( iv_addr = s0 + 16 iv_val = s1 ). s0 = l1. s1 = 4294967297. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ). s0 = 1215056.
        s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). l3 = s0.
        DO. " loop
          s0 = l3. s1 = 1. s0 = s0 + s1. l4 = s0.
          IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
          s0 = 1215056. s1 = l4. s2 = 1215056. s2 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s2 + 0 ). l5 = s2. s3 = l3. s4 = l5.
          IF s3 = s4. s3 = 1. ELSE. s3 = 0. ENDIF.
          l2 = s3.
          IF s3 <> 0. s1 = s1. ELSE. s1 = s2. ENDIF.
          zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ). s0 = l5. l3 = s0. s0 = l2.
          IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
        ENDDO.
        s0 = l1. s1 = l4. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 8 CHANGING cv_mem = mv_mem ). s0 = 1215072. s0 = mem_ld_i32( s0 ).
        IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
        s0 = l0. s1 = 0. mem_st_i32( iv_addr = s0 + 24 iv_val = s1 ). s0 = l0. s1 = 1. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = l0. s1 = 1114148. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = l0. s1 = 4.
        zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 16 CHANGING cv_mem = mv_mem ). s0 = l0. s1 = 8. s0 = s0 + s1. s1 = 1114236. PERFORM f696 USING s0 s1.
        RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
      ELSE.
      ENDIF.
      s0 = 32. PERFORM f687 USING s0.
      RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
    ENDDO.
    PERFORM f1182.
    RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
  ENDDO.
  s0 = 1215072. s1 = l1. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l0. s1 = 32. s0 = s0 + s1. gv_g0 = s0.
ENDFORM.

FORM f852 USING p0 TYPE i.
  DATA l1 TYPE i. DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i.
  DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 32. s0 = s0 - s1. l1 = s0. gv_g0 = s0. s0 = p0.
  s0 = mem_ld_i32( s0 ). l3 = s0. s1 = 1. s0 = s0 + s1. l2 = s0.
  IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = 0. s1 = 0. PERFORM f1271 USING s0 s1.
    RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
  ELSE.
  ENDIF.
  s0 = 8. s1 = l3. s2 = 1. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). l4 = s1. s2 = l2. s3 = l2. s4 = l4.
  IF zcl_wasm_rt=>lt_u32( iv_a = s3 iv_b = s4 ) = abap_true. s3 = 1. ELSE. s3 = 0. ENDIF.
  IF s3 <> 0. s1 = s1. ELSE. s1 = s2. ENDIF.
  l2 = s1. s2 = l2. s3 = 8.
  IF zcl_wasm_rt=>le_u32( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
  IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
  l2 = s0. s1 = -1. s0 = zcl_wasm_rt=>xor32( iv_a = s0 iv_b = s1 ). s1 = 31. s0 = zcl_wasm_rt=>shr_u32( iv_val = s0 iv_shift = s1 ). l4 = s0. s0 = l1. s1 = l3.
  IF s1 <> 0.
    s1 = l1. s2 = l3. mem_st_i32( iv_addr = s1 + 28 iv_val = s2 ). s1 = l1. s2 = p0. s2 = mem_ld_i32( s2 + 4 ). mem_st_i32( iv_addr = s1 + 20 iv_val = s2 ). s1 = 1.
  ELSE.
    s2 = 0.
  ENDIF.
  mem_st_i32( iv_addr = s1 + 24 iv_val = s2 ). s1 = l1. s2 = 8. s1 = s1 + s2. s2 = l4. s3 = l2. s4 = l1. s5 = 20. s4 = s4 + s5. PERFORM f947 USING s1 s2 s3 s4. s1 = l1. s1 = mem_ld_i32( s1 + 8 ).
  IF s1 <> 0.
    s1 = l1. s1 = mem_ld_i32( s1 + 12 ). s2 = l1. s2 = mem_ld_i32( s2 + 16 ). PERFORM f1271 USING s1 s2.
    RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
  ELSE.
  ENDIF.
  s1 = l1. s1 = mem_ld_i32( s1 + 12 ). l3 = s1. s1 = p0. s2 = l2. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = p0. s2 = l3. mem_st_i32( iv_addr = s1 + 4 iv_val = s2 ). s1 = l1. s2 = 32. s1 = s1 + s2. gv_g0 = s1.
ENDFORM.

FORM f853 USING p0 TYPE i.
  DATA l1 TYPE i. DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i.
  DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 32. s0 = s0 - s1. l1 = s0. gv_g0 = s0. s0 = p0.
  s0 = mem_ld_i32( s0 ). l3 = s0. s1 = 1. s0 = s0 + s1. l2 = s0.
  IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = 0. s1 = 0. PERFORM f1271 USING s0 s1.
    RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
  ELSE.
  ENDIF.
  s0 = 8. s1 = l3. s2 = 1. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). l4 = s1. s2 = l2. s3 = l2. s4 = l4.
  IF zcl_wasm_rt=>lt_u32( iv_a = s3 iv_b = s4 ) = abap_true. s3 = 1. ELSE. s3 = 0. ENDIF.
  IF s3 <> 0. s1 = s1. ELSE. s1 = s2. ENDIF.
  l2 = s1. s2 = l2. s3 = 8.
  IF zcl_wasm_rt=>le_u32( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
  IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
  l2 = s0. s1 = -1. s0 = zcl_wasm_rt=>xor32( iv_a = s0 iv_b = s1 ). s1 = 31. s0 = zcl_wasm_rt=>shr_u32( iv_val = s0 iv_shift = s1 ). l4 = s0. s0 = l1. s1 = l3.
  IF s1 <> 0.
    s1 = l1. s2 = l3. mem_st_i32( iv_addr = s1 + 28 iv_val = s2 ). s1 = l1. s2 = p0. s2 = mem_ld_i32( s2 + 4 ). mem_st_i32( iv_addr = s1 + 20 iv_val = s2 ). s1 = 1.
  ELSE.
    s2 = 0.
  ENDIF.
  mem_st_i32( iv_addr = s1 + 24 iv_val = s2 ). s1 = l1. s2 = 8. s1 = s1 + s2. s2 = l4. s3 = l2. s4 = l1. s5 = 20. s4 = s4 + s5. PERFORM f584 USING s1 s2 s3 s4. s1 = l1. s1 = mem_ld_i32( s1 + 8 ).
  IF s1 <> 0.
    s1 = l1. s1 = mem_ld_i32( s1 + 12 ). s2 = l1. s2 = mem_ld_i32( s2 + 16 ). PERFORM f1271 USING s1 s2.
    RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
  ELSE.
  ENDIF.
  s1 = l1. s1 = mem_ld_i32( s1 + 12 ). l3 = s1. s1 = p0. s2 = l2. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = p0. s2 = l3. mem_st_i32( iv_addr = s1 + 4 iv_val = s2 ). s1 = l1. s2 = 32. s1 = s1 + s2. gv_g0 = s1.
ENDFORM.

FORM f854 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA l2 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i.
  DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l2 = s0. gv_g0 = s0. s0 = l2.
  s1 = p0. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = p1. s0 = mem_ld_i32( s0 + 20 ). s1 = 1079319. s2 = 13. s3 = p1. s3 = mem_ld_i32( s3 + 24 ). s3 = mem_ld_i32( s3 + 12 ).
  DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
  s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). p0 = s0. s0 = l2. s1 = 0. mem_st_i32_8( iv_addr = s0 + 13 iv_val = s1 ). s0 = l2. s1 = p0. mem_st_i32_8( iv_addr = s0 + 12 iv_val = s1 ). s0 = l2. s1 = p1.
  mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = l2. s1 = 8. s0 = s0 + s1. s1 = 1116148. s2 = 4. s3 = l2. s4 = 4. s3 = s3 + s4. s4 = 1079332. PERFORM f629 USING s0 s1 s2 s3 s4 CHANGING s0. p1 = s0. s0 = l2. s0 = mem_ld_i32_8u( s0 + 12 ).
  p0 = s0.
  DO 1 TIMES. " block
    s0 = p0. s1 = 0.
    IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    s1 = l2. s1 = mem_ld_i32_8u( s1 + 13 ).
    IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
    IF s1 <> 0. EXIT. ENDIF. " br_if 0
    s0 = 1. s1 = p0.
    IF s1 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p1. s0 = mem_ld_i32( s0 ). p0 = s0. s0 = mem_ld_i32_8u( s0 + 28 ). s1 = 4. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p0. s0 = mem_ld_i32( s0 + 20 ). s1 = 1080545. s2 = 2. s3 = p0. s3 = mem_ld_i32( s3 + 24 ). s3 = mem_ld_i32( s3 + 12 ).
      DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
      s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s1 = p0. s1 = mem_ld_i32( s1 + 20 ). s2 = 1080042. s3 = 1. s4 = p0. s4 = mem_ld_i32( s4 + 24 ). s4 = mem_ld_i32( s4 + 12 ).
    DATA(lv_ci_func) = mt_tab0[ s4 + 1 ]. " call_indirect
    s1 = dispatch_t11( iv_idx = lv_ci_func p0 = s1 p1 = s2 p2 = s3 ).
  ENDDO.
  s2 = l2. s3 = 16. s2 = s2 + s3. gv_g0 = s2. rv = s1.
ENDFORM.

FORM f855 USING p0 TYPE i CHANGING rv TYPE i.
  DATA l1 TYPE i. DATA l2 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i.
  DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      s0 = p0. s0 = mem_ld_i32( s0 + 32 ). s1 = -125.
      IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p0. s1 = 48. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). s1 = 124.
      IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p0. s0 = mem_ld_i32( s0 + 52 ).
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
    ENDDO.
    s0 = p0. s1 = 1147512. s2 = 0. PERFORM f881 USING s0 s1 s2. s0 = 0. rv = s0. RETURN.
  ENDDO.
  DO 1 TIMES. " block
    s0 = p0. PERFORM f41 USING s0 CHANGING s0.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s0 = mem_ld_i32( s0 + 32 ). s1 = -127.
    IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p0. s1 = 1147496. s2 = 0. PERFORM f881 USING s0 s1 s2. s0 = 0. rv = s0. RETURN.
    ELSE.
    ENDIF.
    s0 = p0. s0 = mem_ld_i32( s0 ). s1 = p0. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 48 ). PERFORM f503 USING s0 s1 CHANGING s0. l1 = s0.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. PERFORM f41 USING s0 CHANGING s0.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = l1. rv = s0. RETURN.
    ELSE.
    ENDIF.
    s0 = l1. s1 = 228.
    IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s0 = mem_ld_i32( s0 ). s0 = mem_ld_i32( s0 + 16 ). l2 = s0. s0 = mem_ld_i32( s0 + 56 ). s1 = l1. s2 = 2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s0 = mem_ld_i32( s0 ). p0 = s0. s1 = p0.
    s1 = mem_ld_i32( s1 ). l1 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l1. s1 = 1.
    IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l2. s1 = p0. PERFORM f713 USING s0 s1.
  ENDDO.
  s0 = 0. rv = s0.
ENDFORM.

FORM f856 USING p0 TYPE f CHANGING rv TYPE f.
  DATA l1 TYPE i. DATA l2 TYPE i. DATA l3 TYPE f. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i.
  DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l1 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    s0 = p0. s0 = zcl_wasm_rt=>reinterpret_f64_i64( s0 ). s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = 2147483647. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). l2 = s0.
    s1 = 1072243195.
    IF zcl_wasm_rt=>le_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = l2. s1 = 1045430272.
      IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p0. s1 = '0.000000'. s2 = 0. PERFORM f953 USING s0 s1 s2 CHANGING s0. p0 = s0. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = l2. s1 = 2146435072.
    IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p0. s1 = p0. s0 = s0 - s1. p0 = s0. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = p0. s1 = l1. PERFORM f24 USING s0 s1 CHANGING s0. l2 = s0. s0 = l1. s0 = zcl_wasm_rt=>mem_ld_f64( iv_mem = mv_mem iv_addr = s0 + 8 ). p0 = s0. s0 = l1. s0 = zcl_wasm_rt=>mem_ld_f64( iv_mem = mv_mem iv_addr = s0 + 0 ). l3 = s0.
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          DO 1 TIMES. " block
            s0 = l2. s1 = 3. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
            CASE s0.
              WHEN 0. EXIT.
              WHEN 1. lv_br = 1. EXIT.
              WHEN 2. lv_br = 2. EXIT.
              WHEN OTHERS. lv_br = 3. EXIT.
            ENDCASE.
          ENDDO.
          s0 = l3. s1 = p0. s2 = 1. PERFORM f953 USING s0 s1 s2 CHANGING s0. p0 = s0. lv_br = 3. EXIT. " br 3
        ENDDO.
        s0 = l3. s1 = p0. PERFORM f1000 USING s0 s1 CHANGING s0. p0 = s0. lv_br = 2. EXIT. " br 2
      ENDDO.
      s0 = l3. s1 = p0. s2 = 1. PERFORM f953 USING s0 s1 s2 CHANGING s0. s0 = - s0. p0 = s0. lv_br = 1. EXIT. " br 1
    ENDDO.
    s0 = l3. s1 = p0. PERFORM f1000 USING s0 s1 CHANGING s0. s0 = - s0. p0 = s0.
  ENDDO.
  s0 = l1. s1 = 16. s0 = s0 + s1. gv_g0 = s0. s0 = p0. rv = s0.
ENDFORM.

FORM f857 USING p0 TYPE i.
  DATA l1 TYPE i. DATA l2 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i.
  DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 32. s0 = s0 - s1. l1 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          s0 = 1214988. s0 = mem_ld_i32_8u( s0 ). l2 = s0. s1 = 2.
          IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0.
            s0 = l2. s1 = 3. s0 = s0 - s1.
            IF s0 <> 0. lv_br = 4. EXIT. ENDIF. " br_if 4
            lv_br = 1. EXIT. " br 1
          ELSE.
          ENDIF.
          s0 = 1214988. s1 = 2. mem_st_i32_8( iv_addr = s0 iv_val = s1 ). s0 = p0. s0 = mem_ld_i32( s0 ). l2 = s0. s0 = p0. s1 = 0. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l2.
          IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          s0 = 1215076. s0 = mem_ld_i32_8u( s0 ). s0 = 8192. PERFORM f18 USING s0 CHANGING s0. p0 = s0.
          IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
          s0 = l2.
          RAISE EXCEPTION TYPE cx_sy_program_error. " SIMD not supported
          RAISE EXCEPTION TYPE cx_sy_program_error. " SIMD not supported
          s1 = l2. s2 = p0. mem_st_i32( iv_addr = s1 + 4 iv_val = s2 ). s1 = l2. s2 = 0. mem_st_i32_8( iv_addr = s1 iv_val = s2 ). s1 = 1214988. s2 = 3. mem_st_i32_8( iv_addr = s1 iv_val = s2 ).
        ENDDO.
        s1 = l1. s2 = 32. s1 = s1 + s2. gv_g0 = s1.
        RETURN.
      ENDDO.
      s1 = 1116992. PERFORM f1357 USING s1.
      RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
    ENDDO.
    s1 = 1. s2 = 8192. PERFORM f1271 USING s1 s2.
    RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
  ENDDO.
  s1 = l1. s2 = 0. mem_st_i32( iv_addr = s1 + 24 iv_val = s2 ). s1 = l1. s2 = 1. mem_st_i32( iv_addr = s1 + 12 iv_val = s2 ). s1 = l1. s2 = 1118776. mem_st_i32( iv_addr = s1 + 8 iv_val = s2 ). s1 = l1. s2 = 4.
  zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s2 iv_addr = s1 + 16 CHANGING cv_mem = mv_mem ). s1 = l1. s2 = 8. s1 = s1 + s2. s2 = 1116976. PERFORM f696 USING s1 s2.
  RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
ENDFORM.

FORM f858 USING p0 TYPE i p1 TYPE int8 p2 TYPE i.
  DATA l3 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i.
  DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 304. s0 = s0 - s1. l3 = s0. gv_g0 = s0. s0 = p0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          DO 1 TIMES. " block
            s1 = p1. s2 = -4294967296.
            IF zcl_wasm_rt=>ge_u64( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
            IF s1 <> 0.
              s1 = p1. s1 = zcl_wasm_rt=>wrap_i64( s1 ). s1 = mem_ld_i32_16u( s1 + 6 ).
            ELSE.
              s2 = 0.
            ENDIF.
            s3 = 4. s2 = s2 - s3.
            CASE s2.
              WHEN 0. EXIT.
              WHEN 1. lv_br = 2. EXIT.
              WHEN 2. EXIT.
              WHEN 3. lv_br = 2. EXIT.
              WHEN 4. lv_br = 2. EXIT.
              WHEN 5. lv_br = 2. EXIT.
              WHEN 6. lv_br = 2. EXIT.
              WHEN 7. lv_br = 2. EXIT.
              WHEN 8. lv_br = 2. EXIT.
              WHEN 9. lv_br = 2. EXIT.
              WHEN 10. lv_br = 2. EXIT.
              WHEN 11. lv_br = 2. EXIT.
              WHEN 12. lv_br = 2. EXIT.
              WHEN 13. lv_br = 2. EXIT.
              WHEN 14. lv_br = 2. EXIT.
              WHEN 15. lv_br = 2. EXIT.
              WHEN 16. lv_br = 2. EXIT.
              WHEN 17. lv_br = 2. EXIT.
              WHEN 18. lv_br = 2. EXIT.
              WHEN 19. lv_br = 2. EXIT.
              WHEN 20. lv_br = 2. EXIT.
              WHEN 21. lv_br = 2. EXIT.
              WHEN 22. lv_br = 2. EXIT.
              WHEN 23. lv_br = 2. EXIT.
              WHEN 24. lv_br = 2. EXIT.
              WHEN 25. lv_br = 2. EXIT.
              WHEN 26. lv_br = 2. EXIT.
              WHEN 27. lv_br = 2. EXIT.
              WHEN 28. lv_br = 2. EXIT.
              WHEN 29. lv_br = 1. EXIT.
              WHEN OTHERS. lv_br = 2. EXIT.
            ENDCASE.
          ENDDO.
          s2 = p0. s3 = 1. mem_st_i32_8( iv_addr = s2 + 1 iv_val = s3 ). lv_br = 2. EXIT. " br 2
        ENDDO.
        s2 = l3. s3 = 0. mem_st_i32_8( iv_addr = s2 + 68 iv_val = s3 ). s2 = l3. s3 = -64. s2 = s2 - s3. s3 = 1054239. s3 = mem_ld_i32( s3 ). mem_st_i32( iv_addr = s2 iv_val = s3 ). s2 = l3. s3 = 1054223.
        RAISE EXCEPTION TYPE cx_sy_program_error. " SIMD not supported
        RAISE EXCEPTION TYPE cx_sy_program_error. " SIMD not supported
        s4 = l3. s5 = l3. s6 = 48. s5 = s5 + s6. mem_st_i32( iv_addr = s4 iv_val = s5 ). s4 = p2. s5 = 1075074. s6 = l3. PERFORM f970 USING s4 s5 s6 CHANGING s4. s4 = l3. s5 = 9. mem_st_i32_8( iv_addr = s4 + 16 iv_val = s5 ). s4 = p0.
        s5 = l3. s6 = 16. s5 = s5 + s6. PERFORM f988 USING s5 CHANGING s5. mem_st_i32( iv_addr = s4 + 4 iv_val = s5 ). s4 = 1. lv_br = 2. EXIT. " br 2
      ENDDO.
      s5 = p0. s6 = p1. s7 = p2. PERFORM f780 USING s6 s7 CHANGING s6. s7 = 255. s6 = zcl_wasm_rt=>and32( iv_a = s6 iv_b = s7 ). p0 = s6. s7 = 10.
      IF zcl_wasm_rt=>gt_u32( iv_a = s6 iv_b = s7 ) = abap_true. s6 = 1. ELSE. s6 = 0. ENDIF.
      s7 = 380. s8 = p0. s7 = zcl_wasm_rt=>shr_u32( iv_val = s7 iv_shift = s8 ). s6 = zcl_wasm_rt=>or32( iv_a = s6 iv_b = s7 ). s7 = 1. s6 = zcl_wasm_rt=>and32( iv_a = s6 iv_b = s7 ). mem_st_i32_8( iv_addr = s5 + 1 iv_val = s6 ).
    ENDDO.
    s5 = 0.
  ENDDO.
  mem_st_i32_8( iv_addr = s4 iv_val = s5 ). s4 = l3. s5 = 304. s4 = s4 + s5. gv_g0 = s4.
ENDFORM.

FORM f859 USING p0 TYPE i p1 TYPE i p2 TYPE i.
  DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i.
  DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l4 = s0. gv_g0 = s0. s0 = p1.
  s1 = p2.
  IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = p0. s1 = 80. s0 = s0 + s1. l6 = s0. s0 = mem_ld_i32( s0 ). l3 = s0.
    DO. " loop
      s0 = l3. s1 = 256. s0 = s0 + s1. l5 = s0. s0 = l3. s0 = mem_ld_i32( s0 + 284 ). s1 = p0. s1 = mem_ld_i32( s1 + 4 ).
      IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = l5. s1 = 200. PERFORM f908 USING s0 s1. s0 = l4. s1 = p0. s1 = mem_ld_i32( s1 + 4 ). mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = l5. s1 = l4. s2 = 8. s1 = s1 + s2. s2 = 4. PERFORM f1097 USING s0 s1 s2. s0 = l3. s1 = p0.
        s1 = mem_ld_i32( s1 + 4 ). mem_st_i32( iv_addr = s0 + 284 iv_val = s1 ).
      ELSE.
      ENDIF.
      s0 = l3. s1 = l3. s2 = 260. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). mem_st_i32( iv_addr = s0 + 280 iv_val = s1 ). s0 = l5. s1 = 183. PERFORM f908 USING s0 s1. s0 = l6. s0 = mem_ld_i32( s0 ). s1 = l4. s2 = p1.
      mem_st_i32_16( iv_addr = s1 + 14 iv_val = s2 ). s1 = 256. s0 = s0 + s1. s1 = l4. s2 = 14. s1 = s1 + s2. s2 = 2. PERFORM f1097 USING s0 s1 s2. s0 = l6. s0 = mem_ld_i32( s0 ). l3 = s0. s0 = mem_ld_i32( s0 + 204 ). s1 = p1. s2 = 3.
      s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s0 = mem_ld_i32( s0 ). p1 = s0. s1 = p2.
      IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
    ENDDO.
  ELSE.
  ENDIF.
  s0 = l4. s1 = 16. s0 = s0 + s1. gv_g0 = s0.
ENDFORM.

FORM f860 USING p0 TYPE i.
  DATA l1 TYPE i. DATA l2 TYPE i. DATA l3 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s0 = mem_ld_i32( s0 + 4 ).
  l1 = s0. s1 = 3.
  IF zcl_wasm_rt=>le_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
  s1 = l1. s2 = 2.
  IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
  s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
  IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = p0. s1 = 8. s0 = s0 + s1. PERFORM f935 USING s0.
  ELSE.
  ENDIF.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          DO 1 TIMES. " block
            DO 1 TIMES. " block
              DO 1 TIMES. " block
                s0 = p0. s0 = mem_ld_i32_8u( s0 + 28 ). s1 = 3. s0 = s0 - s1.
                CASE s0.
                  WHEN 0. EXIT.
                  WHEN 1. lv_br = 6. EXIT.
                  WHEN 2. lv_br = 6. EXIT.
                  WHEN 3. lv_br = 1. EXIT.
                  WHEN 4. lv_br = 6. EXIT.
                  WHEN 5. lv_br = 6. EXIT.
                  WHEN 6. lv_br = 6. EXIT.
                  WHEN 7. lv_br = 2. EXIT.
                  WHEN 8. lv_br = 3. EXIT.
                  WHEN OTHERS. lv_br = 6. EXIT.
                ENDCASE.
              ENDDO.
              s0 = p0. s0 = mem_ld_i32( s0 + 32 ).
              IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0. lv_br = 5. EXIT. ENDIF. " br_if 5
              s0 = p0. s0 = mem_ld_i32( s0 + 36 ). l1 = s0. lv_br = 4. EXIT. " br 4
            ENDDO.
            s0 = p0. s0 = mem_ld_i32_8u( s0 + 32 ). s1 = 3.
            IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. lv_br = 4. EXIT. ENDIF. " br_if 4
            s0 = p0. s0 = mem_ld_i32( s0 + 36 ). l1 = s0. s0 = mem_ld_i32( s0 ). l2 = s0. s1 = l1. s2 = 4. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). l3 = s1. s1 = mem_ld_i32( s1 ).
            DATA(lv_ci_func) = mt_tab0[ s1 + 1 ]. " call_indirect
            dispatch_t2( iv_idx = lv_ci_func p0 = s0 ). s0 = l3. s0 = mem_ld_i32( s0 + 4 ).
            IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
            s0 = l2. PERFORM f125 USING s0. lv_br = 3. EXIT. " br 3
          ENDDO.
          s0 = p0. s0 = mem_ld_i32( s0 + 48 ). s1 = -2147483648. s0 = zcl_wasm_rt=>or32( iv_a = s0 iv_b = s1 ). s1 = -2147483648.
          IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          lv_br = 3. EXIT. " br 3
        ENDDO.
        s0 = p0. s0 = mem_ld_i32( s0 + 48 ). s1 = -2147483648. s0 = zcl_wasm_rt=>or32( iv_a = s0 iv_b = s1 ). s1 = -2147483648.
        IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
      ENDDO.
      s0 = p0. s0 = mem_ld_i32( s0 + 52 ). l1 = s0.
    ENDDO.
    s0 = l1. PERFORM f125 USING s0.
  ENDDO.
  s0 = p0. PERFORM f125 USING s0.
ENDFORM.

FORM f861 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i CHANGING rv TYPE int8.
  DATA l4 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i.
  DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. p2 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      s0 = p1. s1 = -4294967296.
      IF zcl_wasm_rt=>ge_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). s0 = mem_ld_i32_16u( s0 + 6 ). p3 = s0. s1 = 21. s0 = s0 - s1. s1 = 65535. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = 11.
        IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      ELSE.
      ENDIF.
      s0 = p2. s1 = 1135229. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s1 = 1139205. s2 = p2. PERFORM f970 USING s0 s1 s2 CHANGING s0. s0 = 25769803776. l4 = s0. lv_br = 1. EXIT. " br 1
    ENDDO.
    s0 = 25769803776. l4 = s0. s0 = p0. s1 = 12884901888. s2 = p1. s3 = p3. PERFORM f303 USING s0 s1 s2 s3 CHANGING s0. p1 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 25769803776.
    IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s1 = p1. s2 = p2. s3 = p2. PERFORM f431 USING s0 s1 s2 s3 CHANGING s0. l4 = s0. s0 = p1. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
    IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p3 = s0. s1 = p3. s1 = mem_ld_i32( s1 ). p3 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p3. s1 = 1.
    IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = p1. PERFORM f453 USING s0 s1.
  ENDDO.
  s0 = p2. s1 = 16. s0 = s0 + s1. gv_g0 = s0. s0 = l4. rv = s0.
ENDFORM.

FORM f862 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i CHANGING rv TYPE int8.
  DATA l4 TYPE i. DATA l5 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i.
  DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. p2 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      s0 = p1. s1 = -4294967296.
      IF zcl_wasm_rt=>ge_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). s0 = mem_ld_i32_16u( s0 + 6 ). l4 = s0. s1 = 21. s0 = s0 - s1. s1 = 65535. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = 11.
        IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      ELSE.
      ENDIF.
      s0 = p2. s1 = 1135229. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s1 = 1139205. s2 = p2. PERFORM f970 USING s0 s1 s2 CHANGING s0. s0 = 25769803776. l5 = s0. lv_br = 1. EXIT. " br 1
    ENDDO.
    s0 = 25769803776. l5 = s0. s0 = p0. s1 = 12884901888. s2 = p1. s3 = l4. PERFORM f303 USING s0 s1 s2 s3 CHANGING s0. p1 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 25769803776.
    IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s1 = p1. s2 = p2. s3 = p3. PERFORM f81 USING s0 s1 s2 s3 CHANGING s0. l5 = s0. s0 = p1. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
    IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p3 = s0. s1 = p3. s1 = mem_ld_i32( s1 ). p3 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p3. s1 = 1.
    IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = p1. PERFORM f453 USING s0 s1.
  ENDDO.
  s0 = p2. s1 = 16. s0 = s0 + s1. gv_g0 = s0. s0 = l5. rv = s0.
ENDFORM.

FORM f863 USING p0 TYPE i p1 TYPE i.
  DATA l2 TYPE i. DATA l3 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i.
  DATA lv_br TYPE i.
  DO 1 TIMES. " block
    s0 = p1. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 16 ). l3 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
    IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l3. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l2 = s0. s1 = l2. s1 = mem_ld_i32( s1 ). l2 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l2. s1 = 1.
    IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = l3. PERFORM f453 USING s0 s1.
  ENDDO.
  DO 1 TIMES. " block
    s0 = p1. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 24 ). l3 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
    IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l3. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l2 = s0. s1 = l2. s1 = mem_ld_i32( s1 ). l2 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l2. s1 = 1.
    IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = l3. PERFORM f453 USING s0 s1.
  ENDDO.
  DO 1 TIMES. " block
    s0 = p1. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 8 ). l3 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
    IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l3. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p1 = s0. s1 = p1. s1 = mem_ld_i32( s1 ). p1 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p1. s1 = 1.
    IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = l3. PERFORM f453 USING s0 s1.
  ENDDO.
ENDFORM.

FORM f864 USING p0 TYPE i p1 TYPE i p2 TYPE i CHANGING rv TYPE i.
  DATA l3 TYPE i. DATA l4 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA lv_br TYPE i. s0 = p0.
  s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 4 ). l4 = s0. s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = 2147483647. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). l3 = s0.
  DO 1 TIMES. " block
    s0 = l4. s1 = 2147483648. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 0.
    IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p2. s1 = l3.
      IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p2. s1 = 1. s0 = zcl_wasm_rt=>shl32( iv_val = s0 iv_shift = s1 ). s1 = p0. s0 = s0 + s1. s1 = 16. s0 = s0 + s1. p0 = s0.
      DO. " loop
        s0 = p1. s1 = p0. s1 = mem_ld_i32_16u( s1 ).
        IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = p2. rv = s0. RETURN.
        ELSE.
        ENDIF.
        s0 = p0. s1 = 2. s0 = s0 + s1. p0 = s0. s0 = l3. s1 = p2. s2 = 1. s1 = s1 + s2. p2 = s1.
        IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
      ENDDO.
      lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = p1. s1 = 255.
    IF zcl_wasm_rt=>gt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p2. s1 = l3.
    IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s1 = 16. s0 = s0 + s1. p0 = s0. s0 = p1. s1 = 255. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). p1 = s0.
    DO. " loop
      s0 = p1. s1 = p0. s2 = p2. s1 = s1 + s2. s1 = mem_ld_i32_8u( s1 ).
      IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = p2. rv = s0. RETURN.
      ELSE.
      ENDIF.
      s0 = l3. s1 = p2. s2 = 1. s1 = s1 + s2. p2 = s1.
      IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
    ENDDO.
  ENDDO.
  s0 = -1. rv = s0.
ENDFORM.

FORM f865 USING p0 TYPE i p1 TYPE int8 p2 TYPE int8.
  DATA l3 TYPE i. DATA l4 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i.
  DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    s0 = p1. s1 = -4294967296.
    IF zcl_wasm_rt=>lt_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    DO 1 TIMES. " block
      s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l3 = s0. s0 = mem_ld_i32_16u( s0 + 6 ). s1 = 4. s0 = s0 - s1.
      CASE s0.
        WHEN 0. EXIT.
        WHEN 1. EXIT.
        WHEN 2. EXIT.
        WHEN 3. EXIT.
        WHEN 4. lv_br = 1. EXIT.
        WHEN 5. lv_br = 1. EXIT.
        WHEN 6. EXIT.
        WHEN 7. lv_br = 1. EXIT.
        WHEN 8. lv_br = 1. EXIT.
        WHEN 9. lv_br = 1. EXIT.
        WHEN 10. lv_br = 1. EXIT.
        WHEN 11. lv_br = 1. EXIT.
        WHEN 12. lv_br = 1. EXIT.
        WHEN 13. lv_br = 1. EXIT.
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
        WHEN 29. EXIT.
        WHEN 30. EXIT.
        WHEN 31. lv_br = 1. EXIT.
        WHEN 32. EXIT.
        WHEN OTHERS. lv_br = 1. EXIT.
      ENDCASE.
    ENDDO.
    DO 1 TIMES. " block
      s0 = l3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 32 ). p1 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
      IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l4 = s0. s1 = l4. s1 = mem_ld_i32( s1 ). l4 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l4. s1 = 1.
      IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = p1. PERFORM f453 USING s0 s1.
    ENDDO.
    s0 = l3. s1 = p2. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 32 CHANGING cv_mem = mv_mem ).
    RETURN.
  ENDDO.
  DO 1 TIMES. " block
    s0 = p2. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
    IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p2. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l3 = s0. s1 = l3. s1 = mem_ld_i32( s1 ). l3 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l3. s1 = 1.
    IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = p2. PERFORM f453 USING s0 s1.
  ENDDO.
  s0 = p1. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 25769803776.
  IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = p0. s1 = 1144846. s2 = 0. PERFORM f970 USING s0 s1 s2 CHANGING s0.
  ELSE.
  ENDIF.
ENDFORM.

FORM f866 USING p0 TYPE i p1 TYPE i.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i.
  DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l2 = s0. gv_g0 = s0. s0 = p1.
  s1 = 0.
  IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = p0. s1 = 80. s0 = s0 + s1. l5 = s0. s0 = mem_ld_i32( s0 ). l3 = s0. s1 = 256. s0 = s0 + s1. l4 = s0. s0 = l3. s0 = mem_ld_i32( s0 + 284 ). s1 = p0. s1 = mem_ld_i32( s1 + 4 ).
    IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = l4. s1 = 200. PERFORM f908 USING s0 s1. s0 = l2. s1 = p0. s1 = mem_ld_i32( s1 + 4 ). mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = l4. s1 = l2. s2 = 8. s1 = s1 + s2. s2 = 4. PERFORM f1097 USING s0 s1 s2. s0 = l3. s1 = p0.
      s1 = mem_ld_i32( s1 + 4 ). mem_st_i32( iv_addr = s0 + 284 iv_val = s1 ).
    ELSE.
    ENDIF.
    s0 = l3. s1 = l3. s2 = 260. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). mem_st_i32( iv_addr = s0 + 280 iv_val = s1 ). s0 = l4. s1 = 184. PERFORM f908 USING s0 s1. s0 = l5. s0 = mem_ld_i32( s0 ). s1 = l2. s2 = p1.
    mem_st_i32( iv_addr = s1 + 12 iv_val = s2 ). s1 = 256. s0 = s0 + s1. s1 = l2. s2 = 12. s1 = s1 + s2. s2 = 4. PERFORM f1097 USING s0 s1 s2. s0 = l5. s0 = mem_ld_i32( s0 ). p0 = s0. s0 = mem_ld_i32( s0 + 292 ). s1 = p1. s2 = 20.
    s1 = s1 * s2. s0 = s0 + s1. s1 = p0. s2 = 260. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ).
  ELSE.
  ENDIF.
  s0 = l2. s1 = 16. s0 = s0 + s1. gv_g0 = s0.
ENDFORM.

FORM f867 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i CHANGING rv TYPE int8.
  DATA l4 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i.
  DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA lv_br TYPE i. s0 = p1. s1 = -4294967296.
  s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 12884901888.
  IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = p0. s1 = 1139376. s2 = 0. PERFORM f970 USING s0 s1 s2 CHANGING s0. s0 = 25769803776. rv = s0. RETURN.
  ELSE.
  ENDIF.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      s0 = p2.
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). p1 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 12884901888.
      IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = 25769803776. s1 = p0. s2 = p1. s3 = 0. PERFORM f341 USING s1 s2 s3 CHANGING s1. p1 = s1. s2 = -4294967296. s1 = zcl_wasm_rt=>and64( iv_a = s1 iv_b = s2 ). s2 = 25769803776.
      IF s1 = s2. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l4 = s0.
    ENDDO.
    s0 = p0. s0 = mem_ld_i32( s0 + 16 ). p2 = s0. s1 = l4. s2 = 3. PERFORM f68 USING s0 s1 s2 CHANGING s0. p3 = s0.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = 25769803776. s1 = p0. s1 = mem_ld_i32( s1 + 16 ). p2 = s1. s1 = mem_ld_i32_8u( s1 + 136 ).
      IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p2. s1 = 1. mem_st_i32_8( iv_addr = s0 + 136 iv_val = s1 ). s0 = p0. s1 = 1134898. s2 = 0. PERFORM f969 USING s0 s1 s2 CHANGING s0. s0 = p2. s1 = 0. mem_st_i32_8( iv_addr = s0 + 136 iv_val = s1 ). s0 = 25769803776.
      rv = s0. RETURN.
    ELSE.
    ENDIF.
    s0 = p2. s0 = mem_ld_i32( s0 + 56 ). s1 = p3. s2 = 2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s0 = zcl_wasm_rt=>mem_ld_i64_ext( iv_mem = mv_mem iv_addr = s0 + 0 iv_op = 53 ). s1 = -34359738368.
    s0 = zcl_wasm_rt=>or64( iv_a = s0 iv_b = s1 ).
  ENDDO.
  rv = s0.
ENDFORM.

FORM f868 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i.
  DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l2 = s0. gv_g0 = s0. s0 = p0.
  s0 = mem_ld_i32( s0 ). p0 = s0. s0 = mem_ld_i32( s0 + 8 ). l3 = s0. s0 = p0. s0 = mem_ld_i32( s0 + 4 ). p0 = s0. s0 = 1. l4 = s0. s0 = p1. s0 = mem_ld_i32( s0 + 20 ). s1 = 1080447. s2 = 1. s3 = p1. s3 = mem_ld_i32( s3 + 24 ).
  s3 = mem_ld_i32( s3 + 12 ).
  DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
  s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). l5 = s0. s0 = l2. s1 = 0. mem_st_i32_8( iv_addr = s0 + 9 iv_val = s1 ). s0 = l2. s1 = l5. mem_st_i32_8( iv_addr = s0 + 8 iv_val = s1 ). s0 = l2. s1 = p1.
  mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = l3.
  IF s0 <> 0.
    DO. " loop
      s0 = l2. s1 = p0. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = l2. s1 = 4. s0 = s0 + s1. s1 = l2. s2 = 12. s1 = s1 + s2. s2 = 1061740. PERFORM f690 USING s0 s1 s2. s0 = p0. s1 = 1. s0 = s0 + s1. p0 = s0. s0 = l3. s1 = 1.
      s0 = s0 - s1. l3 = s0.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
    ENDDO.
    s0 = l2. s0 = mem_ld_i32_8u( s0 + 8 ).
  ELSE.
    s1 = l5.
  ENDIF.
  s2 = 255. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ).
  IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
  IF s1 <> 0.
    s1 = l2. s1 = mem_ld_i32( s1 + 4 ). p0 = s1. s1 = mem_ld_i32( s1 + 20 ). s2 = 1080448. s3 = 1. s4 = p0. s4 = mem_ld_i32( s4 + 24 ). s4 = mem_ld_i32( s4 + 12 ).
    DATA(lv_ci_func) = mt_tab0[ s4 + 1 ]. " call_indirect
    s1 = dispatch_t11( iv_idx = lv_ci_func p0 = s1 p1 = s2 p2 = s3 ). l4 = s1.
  ELSE.
  ENDIF.
  s1 = l2. s2 = 16. s1 = s1 + s2. gv_g0 = s1. s1 = l4. rv = s1.
ENDFORM.

FORM f869 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE int8.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      s0 = p0. s0 = mem_ld_i32( s0 + 16 ). l2 = s0. s1 = 224. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). s1 = p0. s1 = mem_ld_i32( s1 + 40 ). s2 = p1. s3 = 3. s2 = zcl_wasm_rt=>shl32( iv_val = s2 iv_shift = s3 ). s1 = s1 + s2.
      s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 0 ). l5 = s1. s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = 0. s3 = l5. s4 = -4294967297.
      IF zcl_wasm_rt=>gt_u64( iv_a = s3 iv_b = s4 ) = abap_true. s3 = 1. ELSE. s3 = 0. ENDIF.
      IF s3 <> 0. s1 = s1. ELSE. s1 = s2. ENDIF.
      l3 = s1. s2 = -1640562687. s1 = s1 * s2. s2 = 1640562687. s1 = s1 - s2. l4 = s1. s2 = 32. s3 = l2. s4 = 212. s3 = s3 + s4. s3 = mem_ld_i32( s3 ). s2 = s2 - s3. s1 = zcl_wasm_rt=>shr_u32( iv_val = s1 iv_shift = s2 ). s2 = 2.
      s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s0 = mem_ld_i32( s0 ). l2 = s0.
      IF s0 <> 0.
        DO. " loop
          DO 1 TIMES. " block
            s0 = l2. s0 = mem_ld_i32( s0 + 20 ). s1 = l4.
            IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. EXIT. ENDIF. " br_if 0
            s0 = l2. s0 = mem_ld_i32( s0 + 44 ). s1 = l3.
            IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. EXIT. ENDIF. " br_if 0
            s0 = l2. s0 = mem_ld_i32( s0 + 32 ).
            IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
          ENDDO.
          s0 = l2. s0 = mem_ld_i32( s0 + 40 ). l2 = s0.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
        ENDDO.
      ELSE.
      ENDIF.
      s0 = p0. s1 = l3. s2 = 2. PERFORM f436 USING s0 s1 s2 CHANGING s0. l2 = s0.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = 25769803776. rv = s0. RETURN.
    ENDDO.
    s0 = l2. s1 = l2. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
  ENDDO.
  s0 = p0. s1 = l2. s2 = p1. PERFORM f408 USING s0 s1 s2 CHANGING s0. rv = s0.
ENDFORM.

FORM f870 USING p0 TYPE i p1 TYPE i p2 TYPE int8 CHANGING rv TYPE i.
  DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE int8. DATA l6 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i.
  DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA lv_br TYPE i. s0 = p0.
  s1 = p2. s2 = 48. s3 = p2. s4 = 0. PERFORM f192 USING s0 s1 s2 s3 s4 CHANGING s0. p2 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 25769803776.
  IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = p1. s1 = 0. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ). s0 = -1. rv = s0. RETURN.
  ELSE.
  ENDIF.
  s0 = p2. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). l4 = s0. s1 = -11.
  IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = p2. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l3 = s0. s1 = l3. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
  ELSE.
  ENDIF.
  DO 1 TIMES. " block
    s0 = p0. s1 = p1. s2 = p2. PERFORM f719 USING s0 s1 s2 CHANGING s0. l3 = s0.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p1. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). l6 = s0. s1 = 0.
    IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = 9007199254740991. l5 = s0. s0 = l6. s1 = 9007199254740992.
      IF zcl_wasm_rt=>lt_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
    ELSE.
    ENDIF.
    s0 = p1. s1 = l5. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ).
  ENDDO.
  DO 1 TIMES. " block
    s0 = l4. s1 = -11.
    IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p2. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p1 = s0. s1 = p1. s1 = mem_ld_i32( s1 ). p1 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p1. s1 = 1.
    IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = p2. PERFORM f453 USING s0 s1.
  ENDDO.
  s0 = l3. rv = s0.
ENDFORM.

FORM f871 USING p0 TYPE i p1 TYPE int8 p2 TYPE i CHANGING rv TYPE int8.
  DATA l3 TYPE i. DATA l4 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i.
  DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 80. s0 = s0 - s1. l4 = s0. gv_g0 = s0. s0 = p2. s1 = 38. s0 = s0 + s1. p2 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        s0 = p1. s1 = -4294967296.
        IF zcl_wasm_rt=>lt_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = p2. s1 = p1. s1 = zcl_wasm_rt=>wrap_i64( s1 ). l3 = s1. s1 = mem_ld_i32_16u( s1 + 6 ).
        IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = l3. s0 = mem_ld_i32( s0 + 32 ). l3 = s0.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      ENDDO.
      s0 = l4. s1 = p0. s2 = 16. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). l3 = s1. s2 = l4. s3 = 16. s2 = s2 + s3. s3 = l3. s3 = mem_ld_i32( s3 + 68 ). s4 = p2. s5 = 24. s4 = s4 * s5. s3 = s3 + s4. s3 = mem_ld_i32( s3 + 4 ).
      PERFORM f410 USING s1 s2 s3 CHANGING s1. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s1 = 1147410. s2 = l4. PERFORM f970 USING s0 s1 s2 CHANGING s0. s0 = 25769803776. lv_br = 1. EXIT. " br 1
    ENDDO.
    s1 = l3. s1 = mem_ld_i32( s1 + 12 ). p0 = s1. s2 = 0.
    IF s1 >= s2. s1 = 1. ELSE. s1 = 0. ENDIF.
    IF s1 <> 0.
      s1 = p0. s1 = zcl_wasm_rt=>extend_u32( s1 ). lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s2 = -51539607552. s3 = p0. s3 = zcl_wasm_rt=>extend_u32( s3 ). " f64.convert_i32_u s3 = zcl_wasm_rt=>reinterpret_f64_i64( s3 ). p1 = s3. s4 = 9221120288580698112. s3 = s3 - s4. s4 = p1. s5 = 9223372036854775807.
    s4 = zcl_wasm_rt=>and64( iv_a = s4 iv_b = s5 ). s5 = 9218868437227405312.
    IF zcl_wasm_rt=>gt_u64( iv_a = s4 iv_b = s5 ) = abap_true. s4 = 1. ELSE. s4 = 0. ENDIF.
    IF s4 <> 0. s2 = s2. ELSE. s2 = s3. ENDIF.
  ENDDO.
  s3 = l4. s4 = 80. s3 = s3 + s4. gv_g0 = s3. rv = s2.
ENDFORM.

FORM f872 USING p0 TYPE i p1 TYPE i p2 TYPE i CHANGING rv TYPE i.
  DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i.
  DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA lv_br TYPE i. s0 = p0. s0 = mem_ld_i32( s0 + 68 ). l3 = s0. s0 = mem_ld_i32( s0 ). l5 = s0. s0 = l3. s0 = mem_ld_i32( s0 + 4 ). l4 = s0. s1 = p0.
  s1 = mem_ld_i32( s1 + 20 ). s2 = p0. s2 = mem_ld_i32( s2 + 24 ). l7 = s2. s1 = s1 - s2. l6 = s1. s2 = l4. s3 = l6.
  IF zcl_wasm_rt=>lt_u32( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
  IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
  l6 = s0.
  IF s0 <> 0.
    s0 = l5. s1 = l7. s2 = l6. PERFORM f216 USING s0 s1 s2 CHANGING s0. s0 = l3. s1 = l3. s1 = mem_ld_i32( s1 ). s2 = l6. s1 = s1 + s2. l5 = s1. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l3. s1 = l3. s1 = mem_ld_i32( s1 + 4 ). s2 = l6.
    s1 = s1 - s2. l4 = s1. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ).
  ELSE.
  ENDIF.
  s0 = l4. s1 = p2. s2 = p2. s3 = l4.
  IF zcl_wasm_rt=>gt_u32( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
  IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
  l4 = s0.
  IF s0 <> 0.
    s0 = l5. s1 = p1. s2 = l4. PERFORM f216 USING s0 s1 s2 CHANGING s0. s0 = l3. s1 = l3. s1 = mem_ld_i32( s1 ). s2 = l4. s1 = s1 + s2. l5 = s1. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l3. s1 = l3. s1 = mem_ld_i32( s1 + 4 ). s2 = l4.
    s1 = s1 - s2. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ).
  ELSE.
  ENDIF.
  s0 = l5. s1 = 0. mem_st_i32_8( iv_addr = s0 iv_val = s1 ). s0 = p0. s1 = p0. s1 = mem_ld_i32( s1 + 40 ). p1 = s1. mem_st_i32( iv_addr = s0 + 24 iv_val = s1 ). s0 = p0. s1 = p1. mem_st_i32( iv_addr = s0 + 20 iv_val = s1 ). s0 = p2.
  rv = s0.
ENDFORM.

FORM f873 USING p0 TYPE i.
  DATA l1 TYPE i. DATA l2 TYPE i. DATA l3 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s0 = mem_ld_i32( s0 + 4 ).
  l1 = s0. s1 = 3.
  IF zcl_wasm_rt=>le_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
  s1 = l1. s2 = 2.
  IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
  s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
  IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = p0. s1 = 8. s0 = s0 + s1. PERFORM f935 USING s0.
  ELSE.
  ENDIF.
  DO 1 TIMES. " block
    s0 = p0. s0 = mem_ld_i32_8u( s0 + 44 ). l1 = s0. s1 = 12. s0 = s0 - s1. s1 = 0. s2 = l1. s3 = 13. s2 = s2 - s3. s3 = 255. s2 = zcl_wasm_rt=>and32( iv_a = s2 iv_b = s3 ). s3 = 41.
    IF zcl_wasm_rt=>lt_u32( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
    IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
    s1 = 255. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). l1 = s0. s1 = 31.
    IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          s0 = l1. s1 = 31. s0 = s0 - s1.
          CASE s0.
            WHEN 0. lv_br = 1. EXIT.
            WHEN 1. lv_br = 3. EXIT.
            WHEN 2. lv_br = 3. EXIT.
            WHEN 3. lv_br = 3. EXIT.
            WHEN 4. lv_br = 3. EXIT.
            WHEN 5. lv_br = 3. EXIT.
            WHEN 6. lv_br = 3. EXIT.
            WHEN 7. lv_br = 3. EXIT.
            WHEN 8. lv_br = 3. EXIT.
            WHEN 9. lv_br = 3. EXIT.
            WHEN OTHERS. EXIT.
          ENDCASE.
        ENDDO.
        s0 = p0. s0 = mem_ld_i32_8u( s0 + 32 ). s1 = 3.
        IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
        s0 = p0. s0 = mem_ld_i32( s0 + 36 ). l1 = s0. s0 = mem_ld_i32( s0 ). l2 = s0. s1 = l1. s2 = 4. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). l3 = s1. s1 = mem_ld_i32( s1 ).
        DATA(lv_ci_func) = mt_tab0[ s1 + 1 ]. " call_indirect
        dispatch_t2( iv_idx = lv_ci_func p0 = s0 ). s0 = l3. s0 = mem_ld_i32( s0 + 4 ).
        IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        s0 = l2. PERFORM f125 USING s0. lv_br = 1. EXIT. " br 1
      ENDDO.
      s0 = p0. s0 = mem_ld_i32( s0 + 32 ).
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p0. s0 = mem_ld_i32( s0 + 36 ). l1 = s0.
    ENDDO.
    s0 = l1. PERFORM f125 USING s0.
  ENDDO.
  s0 = p0. PERFORM f125 USING s0.
ENDFORM.

FORM f874 USING p0 TYPE i p1 TYPE int8.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i.
  DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA lv_br TYPE i. s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). s0 = mem_ld_i32( s0 + 32 ). l3 = s0.
  IF s0 <> 0.
    s0 = l3. s1 = 16. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). l2 = s0. s1 = l3. s2 = 12. s1 = s1 + s2. l4 = s1.
    IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      DO. " loop
        s0 = l2. s0 = mem_ld_i32( s0 + 4 ). s1 = l2. s2 = 0. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s2 iv_addr = s1 + 0 CHANGING cv_mem = mv_mem ). s1 = l2. s1 = mem_ld_i32( s1 + 8 ). l2 = s1. s1 = mem_ld_i32_16u( s1 + 6 ). s2 = 32.
        IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0.
          s1 = l2. s2 = 0. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s2 iv_addr = s1 + 36 CHANGING cv_mem = mv_mem ).
        ELSE.
        ENDIF.
        l2 = s0. s1 = l4.
        IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
      ENDDO.
    ELSE.
    ENDIF.
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        s0 = l3. s0 = mem_ld_i32_8u( s0 + 5 ).
        IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = p0. s1 = 200. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). l2 = s0.
        IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = p0. s1 = 208. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). s1 = l3. s1 = mem_ld_i32( s1 + 8 ). s2 = l2.
        DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
        dispatch_t6( iv_idx = lv_ci_func p0 = s0 p1 = s1 ). lv_br = 1. EXIT. " br 1
      ENDDO.
      s0 = l3. s0 = mem_ld_i32( s0 + 24 ). l2 = s0.
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p0. s1 = l3. s1 = mem_ld_i32( s1 + 20 ). s2 = l3. s2 = mem_ld_i32( s2 + 8 ). s3 = l2.
      DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
      dispatch_t10( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ).
    ENDDO.
    s0 = p0. s1 = 16. s0 = s0 + s1. s1 = l3. s2 = p0. s2 = mem_ld_i32( s2 + 4 ).
    DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
    dispatch_t6( iv_idx = lv_ci_func p0 = s0 p1 = s1 ).
  ELSE.
  ENDIF.
ENDFORM.

FORM f875 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i.
  DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l2 = s0. gv_g0 = s0. s0 = p0.
  s0 = mem_ld_i32( s0 + 8 ). l3 = s0. s0 = p0. s0 = mem_ld_i32( s0 + 4 ). p0 = s0. s0 = 1. l4 = s0. s0 = p1. s0 = mem_ld_i32( s0 + 20 ). s1 = 1080447. s2 = 1. s3 = p1. s3 = mem_ld_i32( s3 + 24 ). s3 = mem_ld_i32( s3 + 12 ).
  DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
  s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). l5 = s0. s0 = l2. s1 = 0. mem_st_i32_8( iv_addr = s0 + 9 iv_val = s1 ). s0 = l2. s1 = l5. mem_st_i32_8( iv_addr = s0 + 8 iv_val = s1 ). s0 = l2. s1 = p1.
  mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = l3.
  IF s0 <> 0.
    DO. " loop
      s0 = l2. s1 = p0. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = l2. s1 = 4. s0 = s0 + s1. s1 = l2. s2 = 12. s1 = s1 + s2. s2 = 1061740. PERFORM f690 USING s0 s1 s2. s0 = p0. s1 = 1. s0 = s0 + s1. p0 = s0. s0 = l3. s1 = 1.
      s0 = s0 - s1. l3 = s0.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
    ENDDO.
    s0 = l2. s0 = mem_ld_i32_8u( s0 + 8 ).
  ELSE.
    s1 = l5.
  ENDIF.
  s2 = 255. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ).
  IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
  IF s1 <> 0.
    s1 = l2. s1 = mem_ld_i32( s1 + 4 ). p0 = s1. s1 = mem_ld_i32( s1 + 20 ). s2 = 1080448. s3 = 1. s4 = p0. s4 = mem_ld_i32( s4 + 24 ). s4 = mem_ld_i32( s4 + 12 ).
    DATA(lv_ci_func) = mt_tab0[ s4 + 1 ]. " call_indirect
    s1 = dispatch_t11( iv_idx = lv_ci_func p0 = s1 p1 = s2 p2 = s3 ). l4 = s1.
  ELSE.
  ENDIF.
  s1 = l2. s2 = 16. s1 = s1 + s2. gv_g0 = s1. s1 = l4. rv = s1.
ENDFORM.

FORM f876 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i.
  DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l2 = s0. gv_g0 = s0. s0 = p0.
  s0 = mem_ld_i32( s0 + 8 ). l3 = s0. s0 = p0. s0 = mem_ld_i32( s0 + 4 ). p0 = s0. s0 = 1. l4 = s0. s0 = p1. s0 = mem_ld_i32( s0 + 20 ). s1 = 1080447. s2 = 1. s3 = p1. s3 = mem_ld_i32( s3 + 24 ). s3 = mem_ld_i32( s3 + 12 ).
  DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
  s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). l5 = s0. s0 = l2. s1 = 0. mem_st_i32_8( iv_addr = s0 + 9 iv_val = s1 ). s0 = l2. s1 = l5. mem_st_i32_8( iv_addr = s0 + 8 iv_val = s1 ). s0 = l2. s1 = p1.
  mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = l3.
  IF s0 <> 0.
    DO. " loop
      s0 = l2. s1 = p0. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = l2. s1 = 4. s0 = s0 + s1. s1 = l2. s2 = 12. s1 = s1 + s2. s2 = 1064008. PERFORM f690 USING s0 s1 s2. s0 = p0. s1 = 1. s0 = s0 + s1. p0 = s0. s0 = l3. s1 = 1.
      s0 = s0 - s1. l3 = s0.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
    ENDDO.
    s0 = l2. s0 = mem_ld_i32_8u( s0 + 8 ).
  ELSE.
    s1 = l5.
  ENDIF.
  s2 = 255. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ).
  IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
  IF s1 <> 0.
    s1 = l2. s1 = mem_ld_i32( s1 + 4 ). p0 = s1. s1 = mem_ld_i32( s1 + 20 ). s2 = 1080448. s3 = 1. s4 = p0. s4 = mem_ld_i32( s4 + 24 ). s4 = mem_ld_i32( s4 + 12 ).
    DATA(lv_ci_func) = mt_tab0[ s4 + 1 ]. " call_indirect
    s1 = dispatch_t11( iv_idx = lv_ci_func p0 = s1 p1 = s2 p2 = s3 ). l4 = s1.
  ELSE.
  ENDIF.
  s1 = l2. s2 = 16. s1 = s1 + s2. gv_g0 = s1. s1 = l4. rv = s1.
ENDFORM.

FORM f877 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i.
  DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l2 = s0. gv_g0 = s0. s0 = p0.
  s0 = mem_ld_i32( s0 + 4 ). l3 = s0. s0 = p0. s0 = mem_ld_i32( s0 ). p0 = s0. s0 = 1. l4 = s0. s0 = p1. s0 = mem_ld_i32( s0 + 20 ). s1 = 1080447. s2 = 1. s3 = p1. s3 = mem_ld_i32( s3 + 24 ). s3 = mem_ld_i32( s3 + 12 ).
  DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
  s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). l5 = s0. s0 = l2. s1 = 0. mem_st_i32_8( iv_addr = s0 + 9 iv_val = s1 ). s0 = l2. s1 = l5. mem_st_i32_8( iv_addr = s0 + 8 iv_val = s1 ). s0 = l2. s1 = p1.
  mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = l3.
  IF s0 <> 0.
    DO. " loop
      s0 = l2. s1 = p0. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = l2. s1 = 4. s0 = s0 + s1. s1 = l2. s2 = 12. s1 = s1 + s2. s2 = 1079008. PERFORM f690 USING s0 s1 s2. s0 = p0. s1 = 1. s0 = s0 + s1. p0 = s0. s0 = l3. s1 = 1.
      s0 = s0 - s1. l3 = s0.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
    ENDDO.
    s0 = l2. s0 = mem_ld_i32_8u( s0 + 8 ).
  ELSE.
    s1 = l5.
  ENDIF.
  s2 = 255. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ).
  IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
  IF s1 <> 0.
    s1 = l2. s1 = mem_ld_i32( s1 + 4 ). p0 = s1. s1 = mem_ld_i32( s1 + 20 ). s2 = 1080448. s3 = 1. s4 = p0. s4 = mem_ld_i32( s4 + 24 ). s4 = mem_ld_i32( s4 + 12 ).
    DATA(lv_ci_func) = mt_tab0[ s4 + 1 ]. " call_indirect
    s1 = dispatch_t11( iv_idx = lv_ci_func p0 = s1 p1 = s2 p2 = s3 ). l4 = s1.
  ELSE.
  ENDIF.
  s1 = l2. s2 = 16. s1 = s1 + s2. gv_g0 = s1. s1 = l4. rv = s1.
ENDFORM.

FORM f878 USING p0 TYPE i p1 TYPE i p2 TYPE i CHANGING rv TYPE i.
  DATA l3 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i.
  DATA s13 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l3 = s0. gv_g0 = s0. s0 = l3. s1 = 12. s0 = s0 + s1. s1 = p2. s2 = 8. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l3. s1 = p1.
  mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l3. s1 = p2. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 0 ). zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 4 CHANGING cv_mem = mv_mem ). s0 = p1. s1 = l3.
  s2 = 4. s1 = s1 + s2. s2 = p0. s2 = mem_ld_i32_8u( s2 + 12 ). s3 = 0. s4 = p0. s5 = p0. s5 = mem_ld_i32( s5 ). p1 = s5. s6 = -2147483648.
  IF s5 = s6. s5 = 1. ELSE. s5 = 0. ENDIF.
  p2 = s5.
  IF s5 <> 0. s3 = s3. ELSE. s3 = s4. ENDIF.
  PERFORM f52 USING s0 s1 s2 s3 CHANGING s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      s1 = p2.
      IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0.
        s1 = p1.
        IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
        s1 = p0. s1 = mem_ld_i32( s1 + 4 ). p0 = s1. lv_br = 1. EXIT. " br 1
      ELSE.
      ENDIF.
      s1 = p0. s1 = mem_ld_i32_8u( s1 + 4 ). s2 = 3.
      IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s1 = p0. s1 = mem_ld_i32( s1 + 8 ). p0 = s1. s1 = mem_ld_i32( s1 ). p1 = s1. s2 = p0. s3 = 4. s2 = s2 + s3. s2 = mem_ld_i32( s2 ). p2 = s2. s2 = mem_ld_i32( s2 ).
      DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
      dispatch_t2( iv_idx = lv_ci_func p0 = s1 ). s1 = p2. s1 = mem_ld_i32( s1 + 4 ).
      IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. EXIT. ENDIF. " br_if 0
      s1 = p1. PERFORM f125 USING s1.
    ENDDO.
    s1 = p0. PERFORM f125 USING s1.
  ENDDO.
  s1 = l3. s2 = 16. s1 = s1 + s2. gv_g0 = s1. rv = s0.
ENDFORM.

FORM f879 USING p0 TYPE i p1 TYPE i p2 TYPE i p3 TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i.
  DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    s0 = p1.
    IF s0 <> 0.
      s0 = p2. s1 = 0.
      IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          s0 = p3. s0 = mem_ld_i32( s0 + 4 ).
          IF s0 <> 0.
            s0 = p3. s0 = mem_ld_i32( s0 + 8 ).
            IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0.
              s0 = 1215076. s0 = mem_ld_i32_8u( s0 ). s0 = p2.
              IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
              s0 = 1. s1 = 0. PERFORM f449 USING s0 s1 CHANGING s0. lv_br = 3. EXIT. " br 3
            ELSE.
            ENDIF.
            s1 = p3. s1 = mem_ld_i32( s1 ). s2 = p2. PERFORM f205 USING s1 s2 CHANGING s1. lv_br = 2. EXIT. " br 2
          ELSE.
          ENDIF.
          s2 = 1215076. s2 = mem_ld_i32_8u( s2 ). s2 = p2.
          IF s2 <> 0. EXIT. ENDIF. " br_if 0
          s2 = 1. s3 = 0. PERFORM f449 USING s2 s3 CHANGING s2. lv_br = 1. EXIT. " br 1
        ENDDO.
        s3 = p2. PERFORM f18 USING s3 CHANGING s3.
      ENDDO.
      p1 = s3.
      IF s3 <> 0.
        s3 = p0. s4 = p2. mem_st_i32( iv_addr = s3 + 8 iv_val = s4 ). s3 = p0. s4 = p1. mem_st_i32( iv_addr = s3 + 4 iv_val = s4 ). s3 = p0. s4 = 0. mem_st_i32( iv_addr = s3 iv_val = s4 ).
        RETURN.
      ELSE.
      ENDIF.
      s3 = p0. s4 = p2. mem_st_i32( iv_addr = s3 + 8 iv_val = s4 ). s3 = p0. s4 = 1. mem_st_i32( iv_addr = s3 + 4 iv_val = s4 ). s3 = p0. s4 = 1. mem_st_i32( iv_addr = s3 iv_val = s4 ).
      RETURN.
    ELSE.
    ENDIF.
    s3 = p0. s4 = 0. mem_st_i32( iv_addr = s3 + 4 iv_val = s4 ). s3 = p0. s4 = 1. mem_st_i32( iv_addr = s3 iv_val = s4 ).
    RETURN.
  ENDDO.
  s3 = p0. s4 = 0. mem_st_i32( iv_addr = s3 + 4 iv_val = s4 ). s3 = p0. s4 = 1. mem_st_i32( iv_addr = s3 iv_val = s4 ).
ENDFORM.

