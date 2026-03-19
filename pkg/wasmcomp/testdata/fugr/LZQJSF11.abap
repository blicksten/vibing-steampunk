FORM f880 USING p0 TYPE f CHANGING rv TYPE f.
  DATA l1 TYPE i. DATA l2 TYPE i. DATA l3 TYPE f. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i.
  DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l1 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    s0 = p0. s0 = zcl_wasm_rt=>reinterpret_f64_i64( s0 ). s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = 2147483647. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). l2 = s0.
    s1 = 1072243195.
    IF zcl_wasm_rt=>le_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = '1.000000'. s1 = l2. s2 = 1044816030.
      IF zcl_wasm_rt=>lt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p0. s1 = '0.000000'. PERFORM f1000 USING s0 s1 CHANGING s0. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s1 = p0. s2 = p0. s1 = s1 - s2. s2 = l2. s3 = 2146435072.
    IF zcl_wasm_rt=>ge_u32( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
    IF s2 <> 0. EXIT. ENDIF. " br_if 0
    s1 = p0. s2 = l1. PERFORM f24 USING s1 s2 CHANGING s1. l2 = s1. s1 = l1. s1 = zcl_wasm_rt=>mem_ld_f64( iv_mem = mv_mem iv_addr = s1 + 8 ). p0 = s1. s1 = l1. s1 = zcl_wasm_rt=>mem_ld_f64( iv_mem = mv_mem iv_addr = s1 + 0 ). l3 = s1.
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          DO 1 TIMES. " block
            s1 = l2. s2 = 3. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ).
            CASE s1.
              WHEN 0. EXIT.
              WHEN 1. lv_br = 1. EXIT.
              WHEN 2. lv_br = 2. EXIT.
              WHEN OTHERS. lv_br = 3. EXIT.
            ENDCASE.
          ENDDO.
          s1 = l3. s2 = p0. PERFORM f1000 USING s1 s2 CHANGING s1. lv_br = 3. EXIT. " br 3
        ENDDO.
        s2 = l3. s3 = p0. s4 = 1. PERFORM f953 USING s2 s3 s4 CHANGING s2. s2 = - s2. lv_br = 2. EXIT. " br 2
      ENDDO.
      s3 = l3. s4 = p0. PERFORM f1000 USING s3 s4 CHANGING s3. s3 = - s3. lv_br = 1. EXIT. " br 1
    ENDDO.
    s4 = l3. s5 = p0. s6 = 1. PERFORM f953 USING s4 s5 s6 CHANGING s4.
  ENDDO.
  s5 = l1. s6 = 16. s5 = s5 + s6. gv_g0 = s5. rv = s4.
ENDFORM.

FORM f881 USING p0 TYPE i p1 TYPE i p2 TYPE i.
  DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i.
  DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l4 = s0. gv_g0 = s0. s0 = p0.
  s0 = mem_ld_i32( s0 ). l3 = s0. s0 = l4. s1 = p2. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = l3. s1 = 3. s2 = p1. s3 = p2. s4 = 0. PERFORM f534 USING s0 s1 s2 s3 s4. s0 = p0. s0 = mem_ld_i32( s0 + 80 ). p1 = s0.
  IF s0 <> 0.
    s0 = p1. s0 = mem_ld_i32( s0 + 104 ). s1 = 0.
    IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    s1 = 1. s0 = zcl_wasm_rt=>shl32( iv_val = s0 iv_shift = s1 ). l5 = s0.
  ELSE.
  ENDIF.
  DO 1 TIMES. " block
    s0 = p0. s0 = mem_ld_i32( s0 + 16 ). p1 = s0. s1 = p0. s1 = mem_ld_i32( s1 + 12 ). p2 = s1.
    IF zcl_wasm_rt=>le_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p0. s0 = mem_ld_i32( s0 + 20 ). p2 = s0. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = p2. s1 = p1. PERFORM f1091 USING s0 s1 CHANGING s0. p1 = s0. s0 = p0. s1 = p0. s1 = mem_ld_i32( s1 + 16 ). mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = p0. s1 = p1. s2 = p0. s2 = mem_ld_i32( s2 + 20 ). s1 = s1 + s2. p2 = s1.
    mem_st_i32( iv_addr = s0 + 20 iv_val = s1 ).
  ENDDO.
  s0 = l3. s1 = l3. s1 = mem_ld_i32( s1 + 16 ). s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 128 ). s2 = p0. s2 = mem_ld_i32( s2 + 24 ). s3 = p0. s3 = mem_ld_i32( s3 + 8 ). s4 = -1. s5 = p2. s6 = p2. s7 = 0.
  IF s6 < s7. s6 = 1. ELSE. s6 = 0. ENDIF.
  IF s6 <> 0. s4 = s4. ELSE. s4 = s5. ENDIF.
  s5 = l5. PERFORM f70 USING s0 s1 s2 s3 s4 s5. s0 = l4. s1 = 16. s0 = s0 + s1. gv_g0 = s0.
ENDFORM.

FORM f882 USING p0 TYPE i p1 TYPE int8.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i.
  DATA lv_br TYPE i.
  DO 1 TIMES. " block
    s0 = p1. s1 = -4294967296.
    IF zcl_wasm_rt=>lt_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l3 = s0. s0 = mem_ld_i32_16u( s0 + 6 ). s1 = 48.
    IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l3. s0 = mem_ld_i32( s0 + 32 ). l3 = s0.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    DO 1 TIMES. " block
      s0 = l3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). p1 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
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
    s0 = p0. s1 = 16. s0 = s0 + s1. s1 = l3. s2 = p0. s2 = mem_ld_i32( s2 + 4 ).
    DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
    dispatch_t6( iv_idx = lv_ci_func p0 = s0 p1 = s1 ).
  ENDDO.
ENDFORM.

FORM f883 USING p0 TYPE i p1 TYPE int8.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i.
  DATA lv_br TYPE i.
  DO 1 TIMES. " block
    s0 = p1. s1 = -4294967296.
    IF zcl_wasm_rt=>lt_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l3 = s0. s0 = mem_ld_i32_16u( s0 + 6 ). s1 = 55.
    IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l3. s0 = mem_ld_i32( s0 + 32 ). l3 = s0.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    DO 1 TIMES. " block
      s0 = l3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). p1 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
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
    s0 = p0. s1 = 16. s0 = s0 + s1. s1 = l3. s2 = p0. s2 = mem_ld_i32( s2 + 4 ).
    DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
    dispatch_t6( iv_idx = lv_ci_func p0 = s0 p1 = s1 ).
  ENDDO.
ENDFORM.

FORM f884 USING p0 TYPE i.
  DATA l1 TYPE i. DATA l2 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i.
  DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 80. s0 = s0 - s1. l1 = s0. gv_g0 = s0. s0 = l1.
  s1 = 6. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = l1. s1 = 1116472. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = l1. s1 = 1215028. mem_st_i32( iv_addr = s0 + 28 iv_val = s1 ). s0 = l1. s1 = l1. s2 = 28. s1 = s1 + s2.
  mem_st_i32( iv_addr = s0 + 40 iv_val = s1 ). s0 = l1. s1 = 16. s0 = s0 + s1. s1 = l1. s2 = 40. s1 = s1 + s2. l2 = s1. s2 = p0. PERFORM f606 USING s0 s1 s2. s0 = l1. s0 = mem_ld_i32_8u( s0 + 16 ). s1 = 4.
  IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = l1. s1 = l1. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 16 ). zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 32 CHANGING cv_mem = mv_mem ). s0 = l1. s1 = 2.
    mem_st_i32( iv_addr = s0 + 44 iv_val = s1 ). s0 = l1. s1 = 1116440. mem_st_i32( iv_addr = s0 + 40 iv_val = s1 ). s0 = l1. s1 = 2. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 52 CHANGING cv_mem = mv_mem ). s0 = l1.
    s1 = l1. s2 = 32. s1 = s1 + s2. s1 = zcl_wasm_rt=>extend_u32( s1 ). s2 = 42949672960. s1 = zcl_wasm_rt=>or64( iv_a = s1 iv_b = s2 ). zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 72 CHANGING cv_mem = mv_mem ). s0 = l1.
    s1 = l1. s2 = 8. s1 = s1 + s2. s1 = zcl_wasm_rt=>extend_u32( s1 ). s2 = 30064771072. s1 = zcl_wasm_rt=>or64( iv_a = s1 iv_b = s2 ). zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 64 CHANGING cv_mem = mv_mem ). s0 = l1.
    s1 = l1. s2 = -64. s1 = s1 - s2. mem_st_i32( iv_addr = s0 + 48 iv_val = s1 ). s0 = l2. s1 = 1116456. PERFORM f696 USING s0 s1.
    RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
  ELSE.
  ENDIF.
  s0 = l1. s1 = 80. s0 = s0 + s1. gv_g0 = s0.
ENDFORM.

FORM f885 USING p0 TYPE i p1 TYPE i p2 TYPE i CHANGING rv TYPE i.
  DATA l3 TYPE i. DATA l4 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i.
  DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA lv_br TYPE i. s0 = p0. s0 = mem_ld_i32( s0 + 80 ). l4 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          DO 1 TIMES. " block
            DO 1 TIMES. " block
              DO 1 TIMES. " block
                DO 1 TIMES. " block
                  DO 1 TIMES. " block
                    s0 = p1. s1 = 39. s0 = s0 - s1.
                    CASE s0.
                      WHEN 0. lv_br = 2. EXIT.
                      WHEN 1. lv_br = 3. EXIT.
                      WHEN 2. lv_br = 3. EXIT.
                      WHEN 3. lv_br = 3. EXIT.
                      WHEN 4. lv_br = 3. EXIT.
                      WHEN 5. lv_br = 3. EXIT.
                      WHEN 6. EXIT.
                      WHEN 7. lv_br = 3. EXIT.
                      WHEN 8. lv_br = 3. EXIT.
                      WHEN 9. lv_br = 3. EXIT.
                      WHEN 10. lv_br = 3. EXIT.
                      WHEN 11. lv_br = 3. EXIT.
                      WHEN 12. lv_br = 3. EXIT.
                      WHEN 13. lv_br = 3. EXIT.
                      WHEN 14. lv_br = 3. EXIT.
                      WHEN 15. lv_br = 3. EXIT.
                      WHEN 16. lv_br = 3. EXIT.
                      WHEN 17. lv_br = 3. EXIT.
                      WHEN 18. lv_br = 3. EXIT.
                      WHEN 19. lv_br = 3. EXIT.
                      WHEN 20. lv_br = 3. EXIT.
                      WHEN 21. lv_br = 1. EXIT.
                      WHEN 22. lv_br = 3. EXIT.
                      WHEN 23. lv_br = 3. EXIT.
                      WHEN 24. lv_br = 3. EXIT.
                      WHEN 25. lv_br = 3. EXIT.
                      WHEN 26. lv_br = 3. EXIT.
                      WHEN 27. lv_br = 3. EXIT.
                      WHEN 28. lv_br = 3. EXIT.
                      WHEN 29. lv_br = 3. EXIT.
                      WHEN 30. lv_br = 3. EXIT.
                      WHEN 31. lv_br = 3. EXIT.
                      WHEN 32. lv_br = 2. EXIT.
                      WHEN 33. lv_br = 3. EXIT.
                      WHEN 34. lv_br = 3. EXIT.
                      WHEN 35. lv_br = 3. EXIT.
                      WHEN 36. lv_br = 3. EXIT.
                      WHEN 37. lv_br = 3. EXIT.
                      WHEN 38. lv_br = 3. EXIT.
                      WHEN 39. lv_br = 3. EXIT.
                      WHEN 40. lv_br = 1. EXIT.
                      WHEN OTHERS. lv_br = 3. EXIT.
                    ENDCASE.
                  ENDDO.
                  s0 = l4. s0 = mem_ld_i32_8u( s0 + 108 ). s1 = 1.
                  IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                  IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
                  s0 = p0. s1 = 1140251. s2 = 0. PERFORM f881 USING s0 s1 s2. s0 = -1. rv = s0. RETURN.
                ENDDO.
                s0 = l4. s0 = mem_ld_i32_8u( s0 + 110 ). s1 = 1. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
                IF s0 <> 0.
                  s0 = p0. s1 = 1145894. s2 = 0. PERFORM f881 USING s0 s1 s2. s0 = -1. rv = s0. RETURN.
                ELSE.
                ENDIF.
                s0 = p1. s1 = 71.
                IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
              ENDDO.
              DO 1 TIMES. " block
                s0 = p2. s1 = 77. s0 = s0 + s1.
                CASE s0.
                  WHEN 0. lv_br = 2. EXIT.
                  WHEN 1. lv_br = 4. EXIT.
                  WHEN 2. lv_br = 4. EXIT.
                  WHEN 3. lv_br = 4. EXIT.
                  WHEN 4. lv_br = 4. EXIT.
                  WHEN 5. lv_br = 4. EXIT.
                  WHEN 6. lv_br = 4. EXIT.
                  WHEN 7. lv_br = 4. EXIT.
                  WHEN 8. lv_br = 4. EXIT.
                  WHEN 9. lv_br = 4. EXIT.
                  WHEN 10. lv_br = 4. EXIT.
                  WHEN 11. lv_br = 4. EXIT.
                  WHEN 12. lv_br = 4. EXIT.
                  WHEN 13. lv_br = 4. EXIT.
                  WHEN 14. lv_br = 4. EXIT.
                  WHEN 15. lv_br = 4. EXIT.
                  WHEN 16. lv_br = 4. EXIT.
                  WHEN 17. lv_br = 4. EXIT.
                  WHEN 18. lv_br = 3. EXIT.
                  WHEN 19. lv_br = 4. EXIT.
                  WHEN 20. lv_br = 4. EXIT.
                  WHEN 21. lv_br = 4. EXIT.
                  WHEN 22. lv_br = 4. EXIT.
                  WHEN 23. lv_br = 4. EXIT.
                  WHEN 24. EXIT.
                  WHEN 25. lv_br = 4. EXIT.
                  WHEN 26. lv_br = 4. EXIT.
                  WHEN 27. lv_br = 4. EXIT.
                  WHEN 28. lv_br = 4. EXIT.
                  WHEN 29. lv_br = 4. EXIT.
                  WHEN 30. lv_br = 4. EXIT.
                  WHEN 31. lv_br = 4. EXIT.
                  WHEN 32. EXIT.
                  WHEN OTHERS. lv_br = 4. EXIT.
                ENDCASE.
              ENDDO.
              s0 = p0. s1 = 1145282. s2 = 0. PERFORM f881 USING s0 s1 s2. s0 = -1. rv = s0. RETURN.
            ENDDO.
            s0 = 1. l3 = s0. s0 = p2. s1 = 77. s0 = s0 + s1.
            CASE s0.
              WHEN 0. EXIT.
              WHEN 1. lv_br = 2. EXIT.
              WHEN 2. lv_br = 2. EXIT.
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
              WHEN 18. lv_br = 1. EXIT.
              WHEN 19. lv_br = 2. EXIT.
              WHEN 20. lv_br = 2. EXIT.
              WHEN 21. lv_br = 2. EXIT.
              WHEN 22. lv_br = 2. EXIT.
              WHEN 23. lv_br = 2. EXIT.
              WHEN 24. lv_br = 3. EXIT.
              WHEN 25. lv_br = 2. EXIT.
              WHEN 26. lv_br = 2. EXIT.
              WHEN 27. lv_br = 2. EXIT.
              WHEN 28. lv_br = 2. EXIT.
              WHEN 29. lv_br = 2. EXIT.
              WHEN 30. lv_br = 2. EXIT.
              WHEN 31. lv_br = 2. EXIT.
              WHEN 32. lv_br = 4. EXIT.
              WHEN OTHERS. lv_br = 2. EXIT.
            ENDCASE.
          ENDDO.
          s0 = 6. l3 = s0. lv_br = 3. EXIT. " br 3
        ENDDO.
        s0 = 5. l3 = s0. lv_br = 2. EXIT. " br 2
      ENDDO.
      RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
    ENDDO.
    s0 = 2. l3 = s0.
  ENDDO.
  s0 = p0. s1 = l4. s2 = p1. s3 = l3. PERFORM f120 USING s0 s1 s2 s3 CHANGING s0. s1 = 31. s0 = zcl_wasm_rt=>shr_s32( iv_val = s0 iv_shift = s1 ). rv = s0.
ENDFORM.

FORM f886 USING p0 TYPE i p1 TYPE i p2 TYPE int8 CHANGING rv TYPE i.
  DATA l3 TYPE i. DATA l4 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i.
  DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 80. s0 = s0 - s1. l4 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          s0 = p2. s1 = -4294967296.
          IF zcl_wasm_rt=>ge_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0.
            s0 = p2. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l3 = s0. s0 = mem_ld_i32_16u( s0 + 6 ). s1 = 19. s0 = s0 - s1. s1 = 65535. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = 2.
            IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          ELSE.
          ENDIF.
          s0 = l4. s1 = p0. s2 = 16. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). l3 = s1. s2 = l4. s3 = 16. s2 = s2 + s3. s3 = l3. s3 = mem_ld_i32( s3 + 68 ). s4 = 460. s3 = s3 + s4. s3 = mem_ld_i32( s3 ). PERFORM f410 USING s1 s2 s3 CHANGING s1.
          mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s1 = 1147410. s2 = l4. PERFORM f970 USING s0 s1 s2 CHANGING s0. lv_br = 1. EXIT. " br 1
        ENDDO.
        s0 = l3. s0 = mem_ld_i32( s0 + 32 ). l3 = s0.
        IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = l3. s0 = mem_ld_i32_8u( s0 + 4 ).
        IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        s0 = p0. s1 = 1148080. s2 = 0. PERFORM f970 USING s0 s1 s2 CHANGING s0.
      ENDDO.
      s0 = p1. s1 = 0. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = 0. lv_br = 1. EXIT. " br 1
    ENDDO.
    s1 = p1. s2 = l3. s2 = mem_ld_i32( s2 ). mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = l3. s1 = mem_ld_i32( s1 + 8 ).
  ENDDO.
  s2 = l4. s3 = 80. s2 = s2 + s3. gv_g0 = s2. rv = s1.
ENDFORM.

FORM f887 USING p0 TYPE i CHANGING rv TYPE int8.
  DATA l1 TYPE i. DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      s0 = p0. s0 = mem_ld_i32( s0 + 16 ). l1 = s0. s1 = 224. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). s1 = p0. s1 = mem_ld_i32( s1 + 40 ). s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 24 ). l4 = s1.
      s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = 0. s3 = l4. s4 = -4294967297.
      IF zcl_wasm_rt=>gt_u64( iv_a = s3 iv_b = s4 ) = abap_true. s3 = 1. ELSE. s3 = 0. ENDIF.
      IF s3 <> 0. s1 = s1. ELSE. s1 = s2. ENDIF.
      l2 = s1. s2 = -1640562687. s1 = s1 * s2. s2 = 1640562687. s1 = s1 - s2. l3 = s1. s2 = 32. s3 = l1. s4 = 212. s3 = s3 + s4. s3 = mem_ld_i32( s3 ). s2 = s2 - s3. s1 = zcl_wasm_rt=>shr_u32( iv_val = s1 iv_shift = s2 ). s2 = 2.
      s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s0 = mem_ld_i32( s0 ). l1 = s0.
      IF s0 <> 0.
        DO. " loop
          DO 1 TIMES. " block
            s0 = l1. s0 = mem_ld_i32( s0 + 20 ). s1 = l3.
            IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. EXIT. ENDIF. " br_if 0
            s0 = l1. s0 = mem_ld_i32( s0 + 44 ). s1 = l2.
            IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. EXIT. ENDIF. " br_if 0
            s0 = l1. s0 = mem_ld_i32( s0 + 32 ).
            IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
          ENDDO.
          s0 = l1. s0 = mem_ld_i32( s0 + 40 ). l1 = s0.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
        ENDDO.
      ELSE.
      ENDIF.
      s0 = p0. s1 = l2. s2 = 2. PERFORM f436 USING s0 s1 s2 CHANGING s0. l1 = s0.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = 25769803776. rv = s0. RETURN.
    ENDDO.
    s0 = l1. s1 = l1. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
  ENDDO.
  s0 = p0. s1 = l1. s2 = 3. PERFORM f408 USING s0 s1 s2 CHANGING s0. rv = s0.
ENDFORM.

FORM f888 USING p0 TYPE i p1 TYPE i.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i.
  DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 32. s0 = s0 - s1. l2 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    s0 = p1. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). l4 = s0. s1 = p1. s1 = mem_ld_i32( s1 + 8 ). p1 = s1. PERFORM f780 USING s0 s1 CHANGING s0. s1 = 14. s0 = s0 - s1. s1 = 255.
    s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = 250.
    IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l2. s1 = l4. s2 = p1. s3 = 1054208. s4 = 7. PERFORM f914 USING s0 s1 s2 s3 s4. s0 = l2. s0 = mem_ld_i32_8u( s0 ). s1 = 18.
    IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = l2. PERFORM f924 USING s0. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = l2. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 8 ). l4 = s0. s0 = l2. s0 = mem_ld_i32( s0 + 16 ). l3 = s0. p1 = s0. s1 = p1. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
    DO 1 TIMES. " block
      s0 = l4. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
      IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = l4. s0 = zcl_wasm_rt=>wrap_i64( s0 ). s0 = mem_ld_i32( s0 ). s1 = 0.
      IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = l3. s1 = l4. PERFORM f1384 USING s0 s1.
    ENDDO.
    s0 = l3. PERFORM f117 USING s0.
  ENDDO.
  s0 = p0. s1 = l3. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = p0. s1 = l4. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ). s0 = l2. s1 = 32. s0 = s0 + s1. gv_g0 = s0.
ENDFORM.

FORM f889 USING p0 TYPE i p1 TYPE i.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i.
  DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 32. s0 = s0 - s1. l2 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    s0 = p1. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). l4 = s0. s1 = p1. s1 = mem_ld_i32( s1 + 8 ). p1 = s1. PERFORM f780 USING s0 s1 CHANGING s0. s1 = 14. s0 = s0 - s1. s1 = 255.
    s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = 250.
    IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l2. s1 = l4. s2 = p1. s3 = 1054215. s4 = 8. PERFORM f914 USING s0 s1 s2 s3 s4. s0 = l2. s0 = mem_ld_i32_8u( s0 ). s1 = 18.
    IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = l2. PERFORM f924 USING s0. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = l2. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 8 ). l4 = s0. s0 = l2. s0 = mem_ld_i32( s0 + 16 ). l3 = s0. p1 = s0. s1 = p1. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
    DO 1 TIMES. " block
      s0 = l4. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
      IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = l4. s0 = zcl_wasm_rt=>wrap_i64( s0 ). s0 = mem_ld_i32( s0 ). s1 = 0.
      IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = l3. s1 = l4. PERFORM f1384 USING s0 s1.
    ENDDO.
    s0 = l3. PERFORM f117 USING s0.
  ENDDO.
  s0 = p0. s1 = l3. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = p0. s1 = l4. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ). s0 = l2. s1 = 32. s0 = s0 + s1. gv_g0 = s0.
ENDFORM.

FORM f890 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i p4 TYPE i CHANGING rv TYPE int8.
  DATA l5 TYPE int8. DATA l6 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i.
  DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    s0 = p0. s1 = p1. s2 = p2. s3 = p1. s4 = 0. PERFORM f192 USING s0 s1 s2 s3 s4 CHANGING s0. l5 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 25769803776.
    IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = l5. l6 = s0. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = p0. s1 = l5. s2 = p1. s3 = 12884901888. s4 = p3. s5 = p4. s6 = 2. PERFORM f0 USING s0 s1 s2 s3 s4 s5 s6 CHANGING s0. l6 = s0. s0 = l5. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ).
    s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
    IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l5. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p2 = s0. s1 = p2. s1 = mem_ld_i32( s1 ). p2 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p2. s1 = 1.
    IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = l5. PERFORM f453 USING s0 s1.
  ENDDO.
  DO 1 TIMES. " block
    s0 = p1. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
    IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p2 = s0. s1 = p2. s1 = mem_ld_i32( s1 ). p2 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p2. s1 = 1.
    IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = p1. PERFORM f453 USING s0 s1.
  ENDDO.
  s0 = l6. rv = s0.
ENDFORM.

FORM f891 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i CHANGING rv TYPE int8.
  DATA l4 TYPE i. DATA l5 TYPE f. DATA l6 TYPE f. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i.
  DATA s11 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. p2 = s0. gv_g0 = s0. s0 = p3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). p1 = s0. s1 = 32.
  s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). p3 = s0. s1 = 11. s0 = s0 + s1. l4 = s0.
  DO 1 TIMES. " block
    s0 = p3.
    IF s0 <> 0.
      s0 = 4294967296. s1 = l4. s2 = 18.
      IF zcl_wasm_rt=>lt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
    ELSE.
    ENDIF.
    DO 1 TIMES. " block
      s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). s0 = s0. " convert to f64 s1 = p3. s2 = 2.
      IF zcl_wasm_rt=>le_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p1. s1 = 9221120288580698112. s0 = s0 + s1. s0 = zcl_wasm_rt=>reinterpret_i64_f64( s0 ). s1 = l4. s2 = 18.
      IF zcl_wasm_rt=>ge_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. EXIT. ENDIF. " br_if 0
      s0 = 25769803776. s1 = p0. s2 = p2. s3 = 8. s2 = s2 + s3. s3 = p1. PERFORM f801 USING s1 s2 s3 CHANGING s1.
      IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p2. s0 = zcl_wasm_rt=>mem_ld_f64( iv_mem = mv_mem iv_addr = s0 + 8 ).
    ENDDO.
    l5 = s0. s0 = abs( s0 ). l6 = s0. s1 = '9007199254740991.000000'.
    IF s0 <= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    s1 = l5. s1 = floor( s1 ). s2 = l5.
    IF s1 = s2. s1 = 1. ELSE. s1 = 0. ENDIF.
    s2 = l6. s3 = '+Inf'.
    IF s2 < s3. s2 = 1. ELSE. s2 = 0. ENDIF.
    s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s0 = zcl_wasm_rt=>extend_u32( s0 ). s1 = 4294967296. s0 = zcl_wasm_rt=>or64( iv_a = s0 iv_b = s1 ).
  ENDDO.
  s1 = p2. s2 = 16. s1 = s1 + s2. gv_g0 = s1. rv = s0.
ENDFORM.

FORM f892 USING p0 TYPE i p1 TYPE i.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p1.
  IF s0 <> 0.
    DO. " loop
      s0 = p0. s1 = l4. s2 = 12. s1 = s1 * s2. s0 = s0 + s1. l3 = s0. s0 = mem_ld_i32( s0 + 8 ). l5 = s0.
      IF s0 <> 0.
        s0 = l3. s0 = mem_ld_i32( s0 + 4 ). s1 = 36. s0 = s0 + s1. l2 = s0.
        DO. " loop
          DO 1 TIMES. " block
            s0 = l2. s1 = 4. s0 = s0 - s1. s0 = mem_ld_i32( s0 ). l6 = s0. s1 = -2147483648.
            IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. EXIT. ENDIF. " br_if 0
            s0 = l6.
            IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. EXIT. ENDIF. " br_if 0
            s0 = l2. s0 = mem_ld_i32( s0 ). PERFORM f125 USING s0.
          ENDDO.
          DO 1 TIMES. " block
            s0 = l2. s1 = 20. s0 = s0 - s1. s0 = mem_ld_i32( s0 ). s1 = 2.
            IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. EXIT. ENDIF. " br_if 0
            s0 = l2. s1 = 16. s0 = s0 - s1. s0 = mem_ld_i32( s0 ).
            IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. EXIT. ENDIF. " br_if 0
            s0 = l2. s1 = 12. s0 = s0 - s1. s0 = mem_ld_i32( s0 ). PERFORM f125 USING s0.
          ENDDO.
          s0 = l2. s1 = 44. s0 = s0 + s1. l2 = s0. s0 = l5. s1 = 1. s0 = s0 - s1. l5 = s0.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
        ENDDO.
      ELSE.
      ENDIF.
      s0 = l3. s0 = mem_ld_i32( s0 ).
      IF s0 <> 0.
        s0 = l3. s0 = mem_ld_i32( s0 + 4 ). PERFORM f125 USING s0.
      ELSE.
      ENDIF.
      s0 = l4. s1 = 1. s0 = s0 + s1. l4 = s0. s1 = p1.
      IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
    ENDDO.
  ELSE.
  ENDIF.
ENDFORM.

FORM f893 USING p0 TYPE i p1 TYPE int8 p2 TYPE i CHANGING rv TYPE int8.
  DATA l3 TYPE i. DATA l4 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i.
  DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 80. s0 = s0 - s1. l4 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        s0 = p1. s1 = -4294967296.
        IF zcl_wasm_rt=>lt_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l3 = s0. s0 = mem_ld_i32_16u( s0 + 6 ). s1 = p2.
        IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = l3. s0 = mem_ld_i32( s0 + 32 ). l3 = s0.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      ENDDO.
      s0 = l4. s1 = p0. s2 = 16. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). l3 = s1. s2 = l4. s3 = 16. s2 = s2 + s3. s3 = l3. s3 = mem_ld_i32( s3 + 68 ). s4 = p2. s5 = 24. s4 = s4 * s5. s3 = s3 + s4. s3 = mem_ld_i32( s3 + 4 ).
      PERFORM f410 USING s1 s2 s3 CHANGING s1. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s1 = 1147410. s2 = l4. PERFORM f970 USING s0 s1 s2 CHANGING s0. s0 = 25769803776. lv_br = 1. EXIT. " br 1
    ENDDO.
    s1 = l3. s1 = mem_ld_i32( s1 ). p0 = s1. s2 = 0.
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

FORM f894 USING p0 TYPE i p1 TYPE i p2 TYPE i CHANGING rv TYPE i.
  DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i.
  DATA s11 TYPE i. DATA s12 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    s0 = p1. s0 = mem_ld_i32( s0 + 244 ). l3 = s0. s1 = p1. s1 = mem_ld_i32( s1 + 248 ).
    IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p0. s1 = p1. s2 = 252. s1 = s1 + s2. s2 = 16. s3 = p1. s4 = 248. s3 = s3 + s4. s4 = l3. s5 = 1. s4 = s4 + s5. PERFORM f845 USING s0 s1 s2 s3 s4 CHANGING s0.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p1. s0 = mem_ld_i32( s0 + 244 ). l3 = s0.
    ELSE.
    ENDIF.
    s0 = p1. s1 = l3. s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 + 244 iv_val = s1 ). s0 = p1. s0 = mem_ld_i32( s0 + 252 ). l5 = s0. s1 = l3. s2 = 4. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). l3 = s1. s0 = s0 + s1. l4 = s0.
    s1 = l4. s1 = mem_ld_i32_8u( s1 + 4 ). s2 = 248. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). mem_st_i32_8( iv_addr = s0 + 4 iv_val = s1 ). s0 = l4. s1 = -1. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l4. s1 = p1.
    s1 = mem_ld_i32( s1 + 188 ). mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = p2. s1 = 228.
    IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s0 = mem_ld_i32( s0 + 56 ). s1 = p2. s2 = 2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s0 = mem_ld_i32( s0 ). p0 = s0. s1 = p0. s1 = mem_ld_i32( s1 ). s2 = 1.
      s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
    ELSE.
    ENDIF.
    s0 = l3. s1 = l5. s0 = s0 + s1. s1 = p2. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ).
  ENDDO.
  s0 = l4. rv = s0.
ENDFORM.

FORM f895 USING p0 TYPE i p1 TYPE i p2 TYPE int8 CHANGING rv TYPE i.
  DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i.
  DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 32. s0 = s0 - s1. l3 = s0. gv_g0 = s0. s0 = l3.
  s1 = 0. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 20 CHANGING cv_mem = mv_mem ). s0 = l3. s1 = -9223372036854775808. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 12 CHANGING cv_mem = mv_mem ). s0 = l3.
  s1 = p0. s1 = mem_ld_i32( s1 ). mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ).
  DO 1 TIMES. " block
    s0 = p2. s1 = 0.
    IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = l3. s1 = 8. s0 = s0 + s1. s1 = 0. s2 = p2. s1 = s1 - s2. PERFORM f533 USING s0 s1 CHANGING s0. l4 = s0. s0 = l3. s1 = 1. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = l3. s1 = 8. s0 = s0 + s1. s1 = p2. PERFORM f533 USING s0 s1 CHANGING s0. l4 = s0.
  ENDDO.
  s0 = p0. s1 = p1. s2 = l3. s3 = 8. s2 = s2 + s3. s3 = 1073741823. s4 = 1. s5 = 747. PERFORM f815 USING s0 s1 s2 s3 s4 s5 CHANGING s0.
  DO 1 TIMES. " block
    s1 = l3. s1 = mem_ld_i32( s1 + 8 ). p0 = s1.
    IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
    IF s1 <> 0. EXIT. ENDIF. " br_if 0
    s1 = l3. s1 = mem_ld_i32( s1 + 24 ). l5 = s1.
    IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
    IF s1 <> 0. EXIT. ENDIF. " br_if 0
    s1 = p0. s1 = mem_ld_i32( s1 ). s2 = l5. s3 = 0. s4 = p0. s5 = 4. s4 = s4 + s5. s4 = mem_ld_i32( s4 ).
    DATA(lv_ci_func) = mt_tab0[ s4 + 1 ]. " call_indirect
    s1 = dispatch_t11( iv_idx = lv_ci_func p0 = s1 p1 = s2 p2 = s3 ).
  ENDDO.
  s1 = l3. s2 = 32. s1 = s1 + s2. gv_g0 = s1. s1 = l4. s0 = zcl_wasm_rt=>or32( iv_a = s0 iv_b = s1 ). rv = s0.
ENDFORM.

FORM f896 USING p0 TYPE i p1 TYPE int8.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i.
  DATA lv_br TYPE i.
  DO 1 TIMES. " block
    s0 = p1. s1 = -4294967296.
    IF zcl_wasm_rt=>lt_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l2 = s0. s0 = mem_ld_i32_16u( s0 + 6 ). s1 = 15.
    IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l2. s0 = mem_ld_i32( s0 + 32 ). l2 = s0.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l2. s0 = mem_ld_i32_8u( s0 + 5 ). l5 = s0.
    IF s0 <> 0.
      s0 = l2. s1 = 8. s0 = s0 + s1. l3 = s0.
      DO. " loop
        DO 1 TIMES. " block
          s0 = l3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). p1 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
          IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l4 = s0. s1 = l4. s1 = mem_ld_i32( s1 ). l4 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l4. s1 = 1.
          IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = p0. s1 = p1. PERFORM f453 USING s0 s1. s0 = l2. s0 = mem_ld_i32_8u( s0 + 5 ). l5 = s0.
        ENDDO.
        s0 = l3. s1 = 8. s0 = s0 + s1. l3 = s0. s0 = l6. s1 = 1. s0 = s0 + s1. l6 = s0. s1 = l5.
        IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
      ENDDO.
    ELSE.
    ENDIF.
    s0 = p0. s1 = 16. s0 = s0 + s1. s1 = l2. s2 = p0. s2 = mem_ld_i32( s2 + 4 ).
    DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
    dispatch_t6( iv_idx = lv_ci_func p0 = s0 p1 = s1 ).
  ENDDO.
ENDFORM.

FORM f897 USING p0 TYPE f CHANGING rv TYPE f.
  DATA l1 TYPE i. DATA l2 TYPE f. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i.
  DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    s0 = p0. s0 = abs( s0 ). l2 = s0. s0 = zcl_wasm_rt=>reinterpret_f64_i64( s0 ). s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). l1 = s0. s1 = 1071748075.
    IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = l1. s1 = 1077149697.
      IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = '-0.000000'. s1 = l2. s0 = s0 / s1. s1 = '1.000000'. s0 = s0 + s1. l2 = s0. lv_br = 2. EXIT. " br 2
      ELSE.
      ENDIF.
      s0 = '1.000000'. s1 = '2.000000'. s2 = l2. s3 = l2. s2 = s2 + s3. PERFORM f379 USING s2 CHANGING s2. s3 = '2.000000'. s2 = s2 + s3. s1 = s1 / s2. s0 = s0 - s1. l2 = s0. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = l1. s1 = 1070618799.
    IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = l2. s1 = l2. s0 = s0 + s1. PERFORM f379 USING s0 CHANGING s0. l2 = s0. s1 = l2. s2 = '2.000000'. s1 = s1 + s2. s0 = s0 / s1. l2 = s0. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = l1. s1 = 1048576.
    IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l2. s1 = '-2.000000'. s0 = s0 * s1. PERFORM f379 USING s0 CHANGING s0. l2 = s0. s0 = - s0. s1 = l2. s2 = '2.000000'. s1 = s1 + s2. s0 = s0 / s1. l2 = s0.
  ENDDO.
  s0 = l2. s0 = - s0. s1 = l2. s2 = p0. s2 = zcl_wasm_rt=>reinterpret_f64_i64( s2 ). s3 = 0.
  IF s2 < s3. s2 = 1. ELSE. s2 = 0. ENDIF.
  IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
  rv = s0.
ENDFORM.

FORM f898 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i CHANGING rv TYPE int8.
  DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i.
  DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA lv_br TYPE i. s0 = p1. s1 = -8589934592. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 8589934592.
  IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = p0. s1 = 1142123. s2 = 0. PERFORM f970 USING s0 s1 s2 CHANGING s0. s0 = 25769803776. rv = s0. RETURN.
  ELSE.
  ENDIF.
  s0 = p0. s1 = p1. s2 = 0. PERFORM f341 USING s0 s1 s2 CHANGING s0. p1 = s0.
  DO 1 TIMES. " block
    s0 = p2. s1 = 0.
    IF s0 <= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p1. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 25769803776.
    IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = 1. l4 = s0.
    DO. " loop
      s0 = p3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). l6 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
      IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = l6. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l5 = s0. s1 = l5. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
      ELSE.
      ENDIF.
      s0 = p0. s1 = p1. s2 = l6. PERFORM f188 USING s0 s1 s2 CHANGING s0. p1 = s0. s0 = p2. s1 = l4.
      IF s0 <= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p3. s1 = 8. s0 = s0 + s1. p3 = s0. s0 = l4. s1 = 1. s0 = s0 + s1. l4 = s0. s0 = p1. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 25769803776.
      IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
    ENDDO.
  ENDDO.
  s0 = p1. rv = s0.
ENDFORM.

FORM f899 USING p0 TYPE i p1 TYPE int8 p2 TYPE i.
  DATA l3 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i.
  DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA lv_br TYPE i. s0 = p1. s1 = p2. PERFORM f780 USING s0 s1 CHANGING s0. l3 = s0. s1 = 9. s0 = s0 - s1. s1 = 255. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = 2.
  IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = p0. s1 = -9223372036854775800. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 16 CHANGING cv_mem = mv_mem ). s0 = p0. s1 = 1078956. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = p0. s1 = 10.
    mem_st_i32_8( iv_addr = s0 iv_val = s1 ). s0 = p0. s1 = l3. s1 = zcl_wasm_rt=>extend8s_i32( s1 ). s2 = 2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). l3 = s1. s2 = 1123532. s1 = s1 + s2. s1 = mem_ld_i32( s1 ).
    mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = p0. s1 = l3. s2 = 1123464. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ).
    DO 1 TIMES. " block
      s0 = p1. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
      IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p0 = s0. s1 = p0. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 - s2. p0 = s1. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s1 = 0.
      IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p2. s1 = p1. PERFORM f1384 USING s0 s1.
    ENDDO.
    s0 = p2. PERFORM f117 USING s0.
    RETURN.
  ELSE.
  ENDIF.
  s0 = p0. s1 = p2. mem_st_i32( iv_addr = s0 + 16 iv_val = s1 ). s0 = p0. s1 = p1. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 8 CHANGING cv_mem = mv_mem ). s0 = p0. s1 = 18. mem_st_i32_8( iv_addr = s0 iv_val = s1 ).
ENDFORM.

FORM f900 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i.
  DATA l4 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i.
  DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA lv_br TYPE i. s0 = p2. s1 = p2. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2.
  mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p3. s1 = 228.
  IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = p2. s0 = mem_ld_i32( s0 + 16 ). s0 = mem_ld_i32( s0 + 56 ). s1 = p3. s2 = 2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s0 = mem_ld_i32( s0 ). l4 = s0. s1 = l4. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2.
    mem_st_i32( iv_addr = s0 iv_val = s1 ).
  ELSE.
  ENDIF.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      s0 = p2. s1 = p1. s2 = p3. s3 = p1. s4 = 0. PERFORM f192 USING s0 s1 s2 s3 s4 CHANGING s0. p1 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 25769803776.
      IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = p2. s0 = mem_ld_i32( s0 + 16 ). s0 = mem_ld_i32( s0 + 376 ). l4 = s0. s0 = mem_ld_i32( s0 ). s1 = l4. s2 = 0. mem_st_i32( iv_addr = s1 iv_val = s2 ).
        IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        s0 = l4. s0 = mem_ld_i32( s0 + 4 ). PERFORM f1168 USING s0.
        RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
      ELSE.
      ENDIF.
      s0 = p2. s1 = p2. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s1 = p2. s2 = p1. s3 = p2. PERFORM f411 USING s0 s1 s2 s3. lv_br = 1. EXIT. " br 1
    ENDDO.
    s0 = p0. s1 = 9. mem_st_i32_8( iv_addr = s0 iv_val = s1 ).
  ENDDO.
  s0 = p2. s1 = p3. PERFORM f1147 USING s0 s1. s0 = p2. PERFORM f117 USING s0.
ENDFORM.

FORM f901 USING p0 TYPE i CHANGING rv TYPE i.
  DATA l1 TYPE i. DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i.
  DATA s10 TYPE i. DATA s11 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 304. s0 = s0 - s1. l1 = s0. gv_g0 = s0. s0 = p0. s0 = mem_ld_i32( s0 + 56 ). s1 = 4. s0 = zcl_wasm_rt=>shl32( iv_val = s0 iv_shift = s1 ). l2 = s0. s0 = p0.
  s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). l4 = s0. s0 = p0. s0 = mem_ld_i32( s0 + 52 ). p0 = s0.
  DO 1 TIMES. " block
    DO. " loop
      s0 = 0. s1 = l2.
      IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = l4. s1 = p0. s2 = l2. s3 = 16. s2 = s2 - s3. l2 = s2. s1 = s1 + s2. l3 = s1. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 0 ).
      IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
    ENDDO.
    s0 = l1. s1 = 0. mem_st_i32_8( iv_addr = s0 + 67 iv_val = s1 ). s0 = l1. s1 = 63. s0 = s0 + s1. s1 = 1054051. s1 = mem_ld_i32( s1 ). mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l1. s1 = 1054036.
    RAISE EXCEPTION TYPE cx_sy_program_error. " SIMD not supported
    RAISE EXCEPTION TYPE cx_sy_program_error. " SIMD not supported
    s2 = l3. s3 = 8. s2 = s2 + s3. s2 = mem_ld_i32( s2 ). s3 = l1. s4 = l1. s5 = 48. s4 = s4 + s5. mem_st_i32( iv_addr = s3 iv_val = s4 ). s3 = 1075074. s4 = l1. PERFORM f970 USING s2 s3 s4 CHANGING s2. s2 = l1. s3 = 9.
    mem_st_i32_8( iv_addr = s2 + 16 iv_val = s3 ). s2 = l1. s3 = 16. s2 = s2 + s3. PERFORM f988 USING s2 CHANGING s2.
  ENDDO.
  s3 = l1. s4 = 304. s3 = s3 + s4. gv_g0 = s3. rv = s2.
ENDFORM.

FORM f902 USING p0 TYPE f p1 TYPE i CHANGING rv TYPE f.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    s0 = p1. s1 = 1024.
    IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p0.
      s1 = '89884656743115795386465259539451236680898848947115328636715040578866337902750481566354238661203768010560056939935696678829394884407208311246423715319737062188883946712432742638151109800623047059726541476042502884419075341171231440736956555270413618581675255342293149119973622969239858152417678164812112068608.000000'.
      s0 = s0 * s1. p0 = s0. s0 = p1. s1 = 2047.
      IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = p1. s1 = 1023. s0 = s0 - s1. p1 = s0. lv_br = 2. EXIT. " br 2
      ELSE.
      ENDIF.
      s0 = p0.
      s1 = '89884656743115795386465259539451236680898848947115328636715040578866337902750481566354238661203768010560056939935696678829394884407208311246423715319737062188883946712432742638151109800623047059726541476042502884419075341171231440736956555270413618581675255342293149119973622969239858152417678164812112068608.000000'.
      s0 = s0 * s1. p0 = s0. s0 = 3069. s1 = p1. s2 = p1. s3 = 3069.
      IF s2 >= s3. s2 = 1. ELSE. s2 = 0. ENDIF.
      IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
      s1 = 2046. s0 = s0 - s1. p1 = s0. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = p1. s1 = -1023.
    IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s1 = '0.000000'. s0 = s0 * s1. p0 = s0. s0 = p1. s1 = -1992.
    IF zcl_wasm_rt=>gt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p1. s1 = 969. s0 = s0 + s1. p1 = s0. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = p0. s1 = '0.000000'. s0 = s0 * s1. p0 = s0. s0 = -2960. s1 = p1. s2 = p1. s3 = -2960.
    IF s2 <= s3. s2 = 1. ELSE. s2 = 0. ENDIF.
    IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
    s1 = 1938. s0 = s0 + s1. p1 = s0.
  ENDDO.
  s0 = p0. s1 = p1. s2 = 1023. s1 = s1 + s2. s1 = zcl_wasm_rt=>extend_u32( s1 ). s2 = 52. s1 = zcl_wasm_rt=>shl64( iv_val = s1 iv_shift = s2 ). s1 = zcl_wasm_rt=>reinterpret_i64_f64( s1 ). s0 = s0 * s1. rv = s0.
ENDFORM.

FORM f903 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i.
  DATA l4 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i.
  DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA lv_br TYPE i. s0 = p2. s1 = p2. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2.
  mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p3. s1 = 228.
  IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = p2. s0 = mem_ld_i32( s0 + 16 ). s0 = mem_ld_i32( s0 + 56 ). s1 = p3. s2 = 2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s0 = mem_ld_i32( s0 ). l4 = s0. s1 = l4. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2.
    mem_st_i32( iv_addr = s0 iv_val = s1 ).
  ELSE.
  ENDIF.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      s0 = p2. s1 = p1. s2 = p3. s3 = p1. s4 = 0. PERFORM f192 USING s0 s1 s2 s3 s4 CHANGING s0. p1 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 25769803776.
      IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = p2. s0 = mem_ld_i32( s0 + 16 ). s0 = mem_ld_i32( s0 + 376 ). l4 = s0. s0 = mem_ld_i32( s0 ). s1 = l4. s2 = 0. mem_st_i32( iv_addr = s1 iv_val = s2 ).
        IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        s0 = l4. s0 = mem_ld_i32( s0 + 4 ). PERFORM f1168 USING s0.
        RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
      ELSE.
      ENDIF.
      s0 = p2. s1 = p2. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s1 = p1. s2 = p2. PERFORM f899 USING s0 s1 s2. lv_br = 1. EXIT. " br 1
    ENDDO.
    s0 = p0. s1 = 9. mem_st_i32_8( iv_addr = s0 iv_val = s1 ).
  ENDDO.
  s0 = p2. s1 = p3. PERFORM f1147 USING s0 s1. s0 = p2. PERFORM f117 USING s0.
ENDFORM.

FORM f904 USING p0 TYPE i CHANGING rv TYPE i.
  DATA l1 TYPE i. DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i.
  DATA lv_br TYPE i. s0 = 1. l1 = s0.
  DO 1 TIMES. " block
    s0 = p0. s0 = mem_ld_i32_16u( s0 + 500 ). l2 = s0.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. l3 = s0. s0 = 1. l5 = s0.
    DO. " loop
      s0 = l3. s1 = l3. s1 = mem_ld_i32( s1 ). l6 = s1. s2 = l1. s1 = s1 + s2. l4 = s1. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l4. s1 = l6.
      IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      l1 = s0. s0 = p0. s0 = mem_ld_i32_16u( s0 + 500 ). l2 = s0. s0 = l4. s1 = l6.
      IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = l3. s1 = 4. s0 = s0 + s1. l3 = s0. s0 = l2. s1 = l5.
      IF zcl_wasm_rt=>gt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      s1 = l5. s2 = 1. s1 = s1 + s2. l5 = s1.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
    ENDDO.
  ENDDO.
  DO 1 TIMES. " block
    s0 = 1. s1 = l1.
    IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
    IF s1 <> 0. EXIT. ENDIF. " br_if 0
    s0 = 0. s1 = l2. s2 = 124.
    IF zcl_wasm_rt=>gt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
    IF s1 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s1 = l2. s2 = 2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s1 = l1. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s1 = p0. s1 = mem_ld_i32_16u( s1 + 500 ). s2 = 1. s1 = s1 + s2.
    mem_st_i32_16( iv_addr = s0 + 500 iv_val = s1 ). s0 = 1.
  ENDDO.
  rv = s0.
ENDFORM.

FORM f905 USING p0 TYPE i p1 TYPE i.
  DATA l2 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i.
  DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l2 = s0.
  gv_g0 = s0.
  DO 1 TIMES. " block
    s0 = p1. s1 = 1. s0 = s0 + s1. s1 = 8.
    IF zcl_wasm_rt=>le_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p0. s1 = p1. s2 = 73. s1 = s1 - s2. s2 = 255. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). PERFORM f908 USING s0 s1. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = p1. s1 = 128. s0 = s0 + s1. s1 = 255.
    IF zcl_wasm_rt=>le_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p0. s1 = 191. PERFORM f908 USING s0 s1. s0 = p0. s1 = p1. s2 = 255. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). PERFORM f908 USING s0 s1. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = p1. s1 = 32768. s0 = s0 + s1. s1 = 65535.
    IF zcl_wasm_rt=>le_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p0. s1 = 192. PERFORM f908 USING s0 s1. s0 = l2. s1 = p1. mem_st_i32_16( iv_addr = s0 + 10 iv_val = s1 ). s0 = p0. s1 = l2. s2 = 10. s1 = s1 + s2. s2 = 2. PERFORM f1097 USING s0 s1 s2. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = p0. s1 = 1. PERFORM f908 USING s0 s1. s0 = l2. s1 = p1. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = p0. s1 = l2. s2 = 12. s1 = s1 + s2. s2 = 4. PERFORM f1097 USING s0 s1 s2.
  ENDDO.
  s0 = l2. s1 = 16. s0 = s0 + s1. gv_g0 = s0.
ENDFORM.

FORM f906 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i CHANGING rv TYPE int8.
  DATA l4 TYPE i. DATA l5 TYPE f. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i.
  DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. p2 = s0. gv_g0 = s0. s0 = p3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). p1 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ).
  s0 = zcl_wasm_rt=>wrap_i64( s0 ). p3 = s0. s1 = 11. s0 = s0 + s1. l4 = s0.
  DO 1 TIMES. " block
    s0 = p3.
    IF s0 <> 0.
      s0 = 4294967296. s1 = l4. s2 = 18.
      IF zcl_wasm_rt=>lt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
    ELSE.
    ENDIF.
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). s0 = s0. " convert to f64 s1 = p3. s2 = 2.
        IF zcl_wasm_rt=>le_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0. EXIT. ENDIF. " br_if 0
        s0 = p1. s1 = 9221120288580698112. s0 = s0 + s1. s0 = zcl_wasm_rt=>reinterpret_i64_f64( s0 ). s1 = l4. s2 = 18.
        IF zcl_wasm_rt=>ge_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0. EXIT. ENDIF. " br_if 0
        s0 = p0. s1 = p2. s2 = 8. s1 = s1 + s2. s2 = p1. PERFORM f801 USING s0 s1 s2 CHANGING s0.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        s0 = p2. s0 = zcl_wasm_rt=>mem_ld_f64( iv_mem = mv_mem iv_addr = s0 + 8 ).
      ENDDO.
      l5 = s0. s1 = l5. s1 = floor( s1 ).
      IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      s1 = l5. s1 = abs( s1 ). s2 = '+Inf'.
      IF s1 < s2. s1 = 1. ELSE. s1 = 0. ENDIF.
      s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s0 = zcl_wasm_rt=>extend_u32( s0 ). s1 = 4294967296. s0 = zcl_wasm_rt=>or64( iv_a = s0 iv_b = s1 ). lv_br = 1. EXIT. " br 1
    ENDDO.
    s1 = 25769803776.
  ENDDO.
  s2 = p2. s3 = 16. s2 = s2 + s3. gv_g0 = s2. rv = s1.
ENDFORM.

FORM f907 USING p0 TYPE i p1 TYPE int8 CHANGING rv TYPE i.
  DATA l2 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i.
  DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i.
  DATA s27 TYPE i. DATA lv_br TYPE i. s0 = -1. l2 = s0. s0 = p0. s0 = mem_ld_i32( s0 + 20 ).
  IF s0 <> 0.
    s0 = -1.
  ELSE.
    s1 = p1. s2 = -4294967296. s1 = zcl_wasm_rt=>and64( iv_a = s1 iv_b = s2 ). s2 = -30064771072.
    IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
    IF s1 <> 0.
      s1 = p0. s1 = mem_ld_i32( s1 ). s2 = p1. s3 = 0. PERFORM f341 USING s1 s2 s3 CHANGING s1. p1 = s1. s2 = -4294967296. s1 = zcl_wasm_rt=>and64( iv_a = s1 iv_b = s2 ). s2 = 25769803776.
      IF s1 = s2. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0.
        s1 = p0. s1 = mem_ld_i32( s1 ). s1 = mem_ld_i32( s1 + 16 ). l2 = s1. s2 = 16. s1 = s1 + s2. s2 = p0. s2 = mem_ld_i32( s2 + 4 ). s3 = l2. s3 = mem_ld_i32( s3 + 4 ).
        DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
        dispatch_t6( iv_idx = lv_ci_func p0 = s1 p1 = s2 ). s1 = p0. s2 = 0. mem_st_i32( iv_addr = s1 + 12 iv_val = s2 ). s1 = p0. s2 = 0. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s2 iv_addr = s1 + 4 CHANGING cv_mem = mv_mem ). s1 = p0.
        s2 = -1. mem_st_i32( iv_addr = s1 + 20 iv_val = s2 ). s1 = -1. rv = s1. RETURN.
      ELSE.
      ENDIF.
      s1 = p0. s2 = p1. s2 = zcl_wasm_rt=>wrap_i64( s2 ). l2 = s2. s3 = 0. s4 = l2. s4 = mem_ld_i32( s4 + 4 ). s5 = 2147483647. s4 = zcl_wasm_rt=>and32( iv_a = s4 iv_b = s5 ). PERFORM f271 USING s1 s2 s3 s4 CHANGING s1. s2 = p0.
      s2 = mem_ld_i32( s2 ). s3 = p1. PERFORM f1164 USING s2 s3. rv = s1. RETURN.
    ELSE.
    ENDIF.
    s1 = p0. s2 = p1. s2 = zcl_wasm_rt=>wrap_i64( s2 ). p0 = s2. s3 = 0. s4 = p0. s4 = mem_ld_i32( s4 + 4 ). s5 = 2147483647. s4 = zcl_wasm_rt=>and32( iv_a = s4 iv_b = s5 ). PERFORM f271 USING s1 s2 s3 s4 CHANGING s1.
  ENDIF.
  rv = s1.
ENDFORM.

FORM f908 USING p0 TYPE i p1 TYPE i.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i.
  DATA s11 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      s0 = p0. s0 = mem_ld_i32( s0 + 4 ). l2 = s0. s1 = 1. s0 = s0 + s1. l3 = s0. s1 = p0. s1 = mem_ld_i32( s1 + 8 ). l4 = s1.
      IF zcl_wasm_rt=>le_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = p0. s0 = mem_ld_i32( s0 ). l3 = s0. lv_br = 1. EXIT. " br 1
      ELSE.
      ENDIF.
      s0 = -1. s1 = p0. s1 = mem_ld_i32( s1 + 12 ).
      IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p0. s0 = mem_ld_i32( s0 + 20 ). s1 = p0. s1 = mem_ld_i32( s1 ). s2 = l4. s3 = 3. s2 = s2 * s3. s3 = 1. s2 = zcl_wasm_rt=>shr_u32( iv_val = s2 iv_shift = s3 ). l2 = s2. s3 = l3. s4 = l2. s5 = l3.
      IF zcl_wasm_rt=>gt_u32( iv_a = s4 iv_b = s5 ) = abap_true. s4 = 1. ELSE. s4 = 0. ENDIF.
      IF s4 <> 0. s2 = s2. ELSE. s2 = s3. ENDIF.
      l2 = s2. s3 = p0. s3 = mem_ld_i32( s3 + 16 ).
      DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
      s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). l3 = s0.
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = p0. s1 = 1. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ).
        RETURN.
      ELSE.
      ENDIF.
      s0 = p0. s1 = l2. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = p0. s1 = l3. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s0 = mem_ld_i32( s0 + 4 ). l2 = s0.
    ENDDO.
    s0 = l2. s1 = l3. s0 = s0 + s1. s1 = p1. mem_st_i32_8( iv_addr = s0 iv_val = s1 ). s0 = p0. s1 = p0. s1 = mem_ld_i32( s1 + 4 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = 0.
  ENDDO.
ENDFORM.

FORM f909 USING p0 TYPE i p1 TYPE i p2 TYPE i.
  DATA l3 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i.
  DATA s13 TYPE i. DATA s14 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l3 = s0. gv_g0 = s0. s0 = l3. s1 = 4. mem_st_i32_8( iv_addr = s0 iv_val = s1 ). s0 = l3. s1 = p1. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ).
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      s0 = l3. s1 = 1114500. s2 = p2. PERFORM f360 USING s0 s1 s2 CHANGING s0.
      IF s0 <> 0.
        s0 = l3. s0 = mem_ld_i32_8u( s0 ). s1 = 4.
        IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        s0 = p0. s1 = 4795897921667074. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ). lv_br = 2. EXIT. " br 2
      ELSE.
      ENDIF.
      s0 = p0. s1 = 4. mem_st_i32_8( iv_addr = s0 iv_val = s1 ). s0 = l3. s0 = mem_ld_i32( s0 + 4 ). p0 = s0. s0 = l3. s0 = mem_ld_i32_8u( s0 ). p1 = s0. s1 = 4.
      IF zcl_wasm_rt=>le_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      s1 = p1. s2 = 3.
      IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
      s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p0. s0 = mem_ld_i32( s0 ). p1 = s0. s1 = p0. s2 = 4. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). p2 = s1. s1 = mem_ld_i32( s1 ).
      DATA(lv_ci_func) = mt_tab0[ s1 + 1 ]. " call_indirect
      dispatch_t2( iv_idx = lv_ci_func p0 = s0 ). s0 = p2. s0 = mem_ld_i32( s0 + 4 ).
      IF s0 <> 0.
        s0 = p1. PERFORM f125 USING s0.
      ELSE.
      ENDIF.
      s0 = p0. PERFORM f125 USING s0. lv_br = 1. EXIT. " br 1
    ENDDO.
    s0 = p0. s1 = l3. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 0 ). zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ).
  ENDDO.
  s0 = l3. s1 = 16. s0 = s0 + s1. gv_g0 = s0.
ENDFORM.

FORM f910 USING p0 TYPE i p1 TYPE i.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i.
  DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    s0 = p0. s0 = mem_ld_i32( s0 + 4 ). s1 = p1. PERFORM f768 USING s1 CHANGING s1. l4 = s1. s0 = s0 + s1. l3 = s0. s1 = p0. s1 = mem_ld_i32( s1 + 8 ). l2 = s1.
    IF zcl_wasm_rt=>gt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = -1. s1 = p0. s1 = mem_ld_i32( s1 + 12 ).
      IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p0. s0 = mem_ld_i32( s0 + 20 ). s1 = p0. s1 = mem_ld_i32( s1 ). s2 = l2. s3 = 3. s2 = s2 * s3. s3 = 1. s2 = zcl_wasm_rt=>shr_u32( iv_val = s2 iv_shift = s3 ). l2 = s2. s3 = l3. s4 = l2. s5 = l3.
      IF zcl_wasm_rt=>gt_u32( iv_a = s4 iv_b = s5 ) = abap_true. s4 = 1. ELSE. s4 = 0. ENDIF.
      IF s4 <> 0. s2 = s2. ELSE. s2 = s3. ENDIF.
      l3 = s2. s3 = p0. s3 = mem_ld_i32( s3 + 16 ).
      DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
      s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). l2 = s0.
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = p0. s1 = 1. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ).
        RETURN.
      ELSE.
      ENDIF.
      s0 = p0. s1 = l3. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = p0. s1 = l2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
    ELSE.
    ENDIF.
    s0 = l4.
    IF s0 <> 0.
      s0 = p0. s0 = mem_ld_i32( s0 ). s1 = p0. s1 = mem_ld_i32( s1 + 4 ). s0 = s0 + s1. s1 = p1. s2 = l4. PERFORM f216 USING s0 s1 s2 CHANGING s0.
    ELSE.
    ENDIF.
    s0 = p0. s1 = p0. s1 = mem_ld_i32( s1 + 4 ). s2 = l4. s1 = s1 + s2. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = 0.
  ENDDO.
ENDFORM.

FORM f911 USING p0 TYPE f CHANGING rv TYPE f.
  DATA l1 TYPE i. DATA l2 TYPE int8. DATA l3 TYPE f. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i.
  DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA lv_br TYPE i. s0 = p0. s0 = abs( s0 ). l3 = s0.
  DO 1 TIMES. " block
    s0 = p0. s0 = zcl_wasm_rt=>reinterpret_f64_i64( s0 ). l2 = s0. s1 = 52. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = 2047. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). l1 = s0.
    s1 = 1049.
    IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = l3. PERFORM f424 USING s0 CHANGING s0. s1 = '0.693147'. s0 = s0 + s1. l3 = s0. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = l1. s1 = 1024.
    IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = l3. s1 = l3. s0 = s0 + s1. s1 = '1.000000'. s2 = l3. s3 = p0. s4 = p0. s3 = s3 * s4. s4 = '1.000000'. s3 = s3 + s4. s3 = sqrt( s3 ). s2 = s2 + s3. s1 = s1 / s2. s0 = s0 + s1. PERFORM f424 USING s0 CHANGING s0. l3 = s0.
      lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = l1. s1 = 997.
    IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l3. s1 = p0. s2 = p0. s1 = s1 * s2. p0 = s1. s2 = p0. s3 = '1.000000'. s2 = s2 + s3. s2 = sqrt( s2 ). s3 = '1.000000'. s2 = s2 + s3. s1 = s1 / s2. s0 = s0 + s1. PERFORM f564 USING s0 CHANGING s0. l3 = s0.
  ENDDO.
  s0 = l3. s0 = - s0. s1 = l3. s2 = l2. s3 = 0.
  IF s2 < s3. s2 = 1. ELSE. s2 = 0. ENDIF.
  IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
  rv = s0.
ENDFORM.

FORM f912 USING p0 TYPE i p1 TYPE i p2 TYPE i p3 TYPE i CHANGING rv TYPE i.
  DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i.
  DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 128. s0 = s0 - s1. l4 = s0. gv_g0 = s0. s0 = l4. s1 = p0. s2 = l4. s3 = 126. s2 = s2 + s3. s3 = p1.
  IF s3 <> 0. s1 = s1. ELSE. s1 = s2. ENDIF.
  l5 = s1. mem_st_i32( iv_addr = s0 + 116 iv_val = s1 ). s0 = -1. p0 = s0. s0 = l4. s1 = p1. s2 = 1. s1 = s1 - s2. l6 = s1. s2 = 0. s3 = p1. s4 = l6.
  IF zcl_wasm_rt=>ge_u32( iv_a = s3 iv_b = s4 ) = abap_true. s3 = 1. ELSE. s3 = 0. ENDIF.
  IF s3 <> 0. s1 = s1. ELSE. s1 = s2. ENDIF.
  mem_st_i32( iv_addr = s0 + 120 iv_val = s1 ). s0 = l4. s1 = 0. s2 = 112. PERFORM f514 USING s0 s1 s2 CHANGING s0. l4 = s0. s1 = -1. mem_st_i32( iv_addr = s0 + 64 iv_val = s1 ). s0 = l4. s1 = 753.
  mem_st_i32( iv_addr = s0 + 32 iv_val = s1 ). s0 = l4. s1 = l4. s2 = 116. s1 = s1 + s2. mem_st_i32( iv_addr = s0 + 68 iv_val = s1 ). s0 = l4. s1 = l4. s2 = 127. s1 = s1 + s2. mem_st_i32( iv_addr = s0 + 40 iv_val = s1 ).
  DO 1 TIMES. " block
    s0 = p1. s1 = 0.
    IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = 1215576. s1 = 61. mem_st_i32( iv_addr = s0 iv_val = s1 ). lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = l5. s1 = 0. mem_st_i32_8( iv_addr = s0 iv_val = s1 ). s0 = l4. s1 = p2. s2 = p3. PERFORM f609 USING s0 s1 s2 CHANGING s0. p0 = s0.
  ENDDO.
  s0 = l4. s1 = 128. s0 = s0 + s1. gv_g0 = s0. s0 = p0. rv = s0.
ENDFORM.

FORM f913 USING p0 TYPE i p1 TYPE int8 p2 TYPE i CHANGING rv TYPE int8.
  DATA l3 TYPE i. DATA l4 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      s0 = p2.
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p0. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 4 ). l4 = s0. s1 = 2147483647. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = p1.
      IF s0 <= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = l4. s1 = 2147483648. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 0.
      IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
    ENDDO.
    s0 = p1. s1 = 1. s0 = s0 + s1. rv = s0. RETURN.
  ENDDO.
  s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l3 = s0. s1 = 1. s0 = s0 + s1. p2 = s0.
  DO 1 TIMES. " block
    s0 = p0. s1 = 16. s0 = s0 + s1. p0 = s0. s1 = l3. s2 = 1. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s0 = mem_ld_i32_16u( s0 ). s1 = 64512. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = 55296.
    IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p2. s1 = l4. s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = 2147483647. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ).
    IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l3. s1 = 2. s0 = s0 + s1. s1 = p2. s2 = p0. s3 = p2. s4 = 1. s3 = zcl_wasm_rt=>shl32( iv_val = s3 iv_shift = s4 ). s2 = s2 + s3. s2 = mem_ld_i32_16u( s2 ). s3 = 64512. s2 = zcl_wasm_rt=>and32( iv_a = s2 iv_b = s3 ). s3 = 56320.
    IF s2 = s3. s2 = 1. ELSE. s2 = 0. ENDIF.
    IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
    p2 = s0.
  ENDDO.
  s0 = p2. s0 = s0. " i64.extend_i32_s (noop in ABAP - sign preserved) rv = s0.
ENDFORM.

FORM f914 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i p4 TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i.
  DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA lv_br TYPE i. s0 = p2. s1 = p2. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2.
  mem_st_i32( iv_addr = s0 iv_val = s1 ).
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        s0 = p2. s1 = p3. s2 = p4. PERFORM f417 USING s0 s1 s2 CHANGING s0. p3 = s0.
        IF s0 <> 0.
          s0 = p2. s1 = p1. s2 = p3. s3 = p1. s4 = 0. PERFORM f192 USING s0 s1 s2 s3 s4 CHANGING s0. p1 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 25769803776.
          IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          s0 = p2. s0 = mem_ld_i32( s0 + 16 ). s0 = mem_ld_i32( s0 + 376 ). p4 = s0. s0 = mem_ld_i32( s0 ). s1 = p4. s2 = 0. mem_st_i32( iv_addr = s1 iv_val = s2 ).
          IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
          s0 = p4. s0 = mem_ld_i32( s0 + 4 ). PERFORM f1168 USING s0.
          RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
        ELSE.
        ENDIF.
        s0 = p2. PERFORM f117 USING s0. s0 = p0. s1 = p2. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = p0. s1 = 9. mem_st_i32_8( iv_addr = s0 iv_val = s1 ).
        RETURN.
      ENDDO.
      s0 = p2. s1 = p2. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s1 = p1. s2 = p2. PERFORM f899 USING s0 s1 s2. lv_br = 1. EXIT. " br 1
    ENDDO.
    s0 = p0. s1 = 9. mem_st_i32_8( iv_addr = s0 iv_val = s1 ).
  ENDDO.
  s0 = p2. s1 = p3. PERFORM f1147 USING s0 s1. s0 = p2. PERFORM f117 USING s0.
ENDFORM.

FORM f915 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE int8 p4 TYPE i CHANGING rv TYPE i.
  DATA l5 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i.
  DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = p1. s2 = p0. s3 = p2. s4 = p2. PERFORM f768 USING s4 CHANGING s4. PERFORM f417 USING s2 s3 s4 CHANGING s2. p2 = s2. s3 = p3. s4 = 12884901888.
  s5 = 12884901888. s6 = p4. s7 = 9984. s6 = zcl_wasm_rt=>or32( iv_a = s6 iv_b = s7 ). PERFORM f37 USING s0 s1 s2 s3 s4 s5 s6 CHANGING s0.
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
    s1 = p2. s2 = 228.
    IF s1 < s2. s1 = 1. ELSE. s1 = 0. ENDIF.
    IF s1 <> 0. EXIT. ENDIF. " br_if 0
    s1 = p0. s1 = mem_ld_i32( s1 + 16 ). l5 = s1. s1 = mem_ld_i32( s1 + 56 ). s2 = p2. s3 = 2. s2 = zcl_wasm_rt=>shl32( iv_val = s2 iv_shift = s3 ). s1 = s1 + s2. s1 = mem_ld_i32( s1 ). p0 = s1. s2 = p0. s2 = mem_ld_i32( s2 ). p2 = s2.
    s3 = 1. s2 = s2 - s3. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = p2. s2 = 1.
    IF s1 > s2. s1 = 1. ELSE. s1 = 0. ENDIF.
    IF s1 <> 0. EXIT. ENDIF. " br_if 0
    s1 = l5. s2 = p0. PERFORM f713 USING s1 s2.
  ENDDO.
  rv = s0.
ENDFORM.

FORM f916 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i CHANGING rv TYPE int8.
  DATA l4 TYPE i. DATA l5 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i.
  DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. p2 = s0. gv_g0 = s0. s0 = p3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). p1 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ).
  s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
  IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l4 = s0. s1 = l4. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
  ELSE.
  ENDIF.
  s0 = 25769803776. l5 = s0.
  DO 1 TIMES. " block
    s0 = p0. s1 = p2. s2 = 12. s1 = s1 + s2. s2 = p1. PERFORM f637 USING s0 s1 s2 CHANGING s0.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 8 ). p1 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
    IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p3 = s0. s1 = p3. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
    ELSE.
    ENDIF.
    s0 = p0. s1 = p2. s2 = 8. s1 = s1 + s2. s2 = p1. PERFORM f637 USING s0 s1 s2 CHANGING s0.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p2. s0 = mem_ld_i32( s0 + 8 ). s1 = p2. s1 = mem_ld_i32( s1 + 12 ). s0 = s0 * s1. s0 = zcl_wasm_rt=>extend_u32( s0 ). l5 = s0.
  ENDDO.
  s0 = p2. s1 = 16. s0 = s0 + s1. gv_g0 = s0. s0 = l5. rv = s0.
ENDFORM.

FORM f917 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i CHANGING rv TYPE int8.
  DATA l4 TYPE i. DATA l5 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i.
  DATA s12 TYPE i. DATA lv_br TYPE i. s0 = p3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). l5 = s0. s1 = -4294967297.
  IF zcl_wasm_rt=>le_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = p0. s1 = 1137529. s2 = 0. PERFORM f970 USING s0 s1 s2 CHANGING s0. s0 = 25769803776. rv = s0. RETURN.
  ELSE.
  ENDIF.
  s0 = 25769803776. p1 = s0.
  DO 1 TIMES. " block
    s0 = p0. s1 = p3. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 8 ). PERFORM f503 USING s0 s1 CHANGING s0. p2 = s0.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s1 = l5. s2 = p2. PERFORM f666 USING s0 s1 s2 CHANGING s0. p3 = s0.
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
    s0 = zcl_wasm_rt=>extend_u32( s0 ). s1 = 4294967296. s0 = zcl_wasm_rt=>or64( iv_a = s0 iv_b = s1 ). p1 = s0.
  ENDDO.
  s0 = p1. rv = s0.
ENDFORM.

FORM f918 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i CHANGING rv TYPE int8.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16.
  s0 = s0 - s1. p2 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        s0 = p3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). p1 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). p3 = s0. s1 = -11.
        IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p3 = s0. s1 = p3. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). lv_br = 1. EXIT. " br 1
        ELSE.
        ENDIF.
        s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). s0 = s0. " convert to f64 s1 = p3. s2 = 2.
        IF zcl_wasm_rt=>le_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        s0 = p3. s1 = 7. s0 = s0 - s1. s1 = -19.
        IF zcl_wasm_rt=>gt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = p1. s1 = 9221120288580698112. s0 = s0 + s1. s0 = zcl_wasm_rt=>reinterpret_i64_f64( s0 ). lv_br = 1. EXIT. " br 1
      ENDDO.
      s1 = 25769803776. s2 = p0. s3 = p2. s4 = 8. s3 = s3 + s4. s4 = p1. PERFORM f801 USING s2 s3 s4 CHANGING s2.
      IF s2 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s1 = p2. s1 = zcl_wasm_rt=>mem_ld_f64( iv_mem = mv_mem iv_addr = s1 + 8 ).
    ENDDO.
    s1 = abs( s1 ). s2 = '+Inf'.
    IF s1 < s2. s1 = 1. ELSE. s1 = 0. ENDIF.
    s1 = zcl_wasm_rt=>extend_u32( s1 ). s2 = 4294967296. s1 = zcl_wasm_rt=>or64( iv_a = s1 iv_b = s2 ).
  ENDDO.
  s2 = p2. s3 = 16. s2 = s2 + s3. gv_g0 = s2. rv = s1.
ENDFORM.

FORM f919 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i CHANGING rv TYPE int8.
  DATA l4 TYPE f. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA lv_br TYPE i.
  s0 = gv_g0. s1 = 16. s0 = s0 - s1. p2 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        s0 = p3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). p1 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). p3 = s0. s1 = -11.
        IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p3 = s0. s1 = p3. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). lv_br = 1. EXIT. " br 1
        ELSE.
        ENDIF.
        s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). s0 = s0. " convert to f64 s1 = p3. s2 = 2.
        IF zcl_wasm_rt=>le_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        s0 = p3. s1 = 7. s0 = s0 - s1. s1 = -19.
        IF zcl_wasm_rt=>gt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = p1. s1 = 9221120288580698112. s0 = s0 + s1. s0 = zcl_wasm_rt=>reinterpret_i64_f64( s0 ). lv_br = 1. EXIT. " br 1
      ENDDO.
      s1 = 25769803776. s2 = p0. s3 = p2. s4 = 8. s3 = s3 + s4. s4 = p1. PERFORM f801 USING s2 s3 s4 CHANGING s2.
      IF s2 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s1 = p2. s1 = zcl_wasm_rt=>mem_ld_f64( iv_mem = mv_mem iv_addr = s1 + 8 ).
    ENDDO.
    l4 = s1. s2 = l4.
    IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
    s1 = zcl_wasm_rt=>extend_u32( s1 ). s2 = 4294967296. s1 = zcl_wasm_rt=>or64( iv_a = s1 iv_b = s2 ).
  ENDDO.
  s2 = p2. s3 = 16. s2 = s2 + s3. gv_g0 = s2. rv = s1.
ENDFORM.

FORM f920 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i.
  DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA lv_br TYPE i. s0 = 1154112. l2 = s0. s0 = p1. PERFORM f768 USING s0 CHANGING s0. l4 = s0.
  DO 1 TIMES. " block
    DO. " loop
      DO 1 TIMES. " block
        s0 = l2. s1 = 44. PERFORM f1252 USING s0 s1 CHANGING s0. l5 = s0.
        IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = l2. PERFORM f768 USING s0 CHANGING s0. lv_br = 1. EXIT. " br 1
        ELSE.
        ENDIF.
        s1 = l5. s2 = l2. s1 = s1 - s2.
      ENDDO.
      l6 = s1. s2 = l4.
      IF s1 = s2. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0.
        s1 = l2. s2 = p1. s3 = l4. PERFORM f1116 USING s1 s2 s3 CHANGING s1.
        IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
      ELSE.
      ENDIF.
      s1 = l2. s2 = l6. s1 = s1 + s2. s2 = 1. s1 = s1 + s2. l2 = s1. s1 = l5.
      IF s1 <> 0. EXIT. ENDIF. " br_if 0
      s1 = l3. s2 = 1. s1 = s1 + s2. l3 = s1. s1 = l2. s1 = mem_ld_i32_8u( s1 ).
      IF s1 <> 0. EXIT. ENDIF. " br_if 0
    ENDDO.
    s1 = -2. rv = s1. RETURN.
  ENDDO.
  s1 = l3. s2 = 29.
  IF zcl_wasm_rt=>le_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
  IF s1 <> 0.
    s1 = p0. s2 = 1. s3 = l3. s3 = zcl_wasm_rt=>extend_u32( s3 ). s2 = zcl_wasm_rt=>shl64( iv_val = s2 iv_shift = s3 ). s2 = zcl_wasm_rt=>wrap_i64( s2 ). PERFORM f361 USING s1 s2 CHANGING s1. rv = s1. RETURN.
  ELSE.
  ENDIF.
  s1 = p0. s2 = l3. s3 = 2. s2 = zcl_wasm_rt=>shl32( iv_val = s2 iv_shift = s3 ). s3 = 1154664. s2 = s2 + s3. s2 = mem_ld_i32( s2 ). PERFORM f361 USING s1 s2 CHANGING s1. rv = s1.
ENDFORM.

FORM f921 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i CHANGING rv TYPE int8.
  DATA l4 TYPE int8. DATA l5 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i.
  DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA lv_br TYPE i. s0 = p3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). p1 = s0. s1 = -4294967297.
  IF zcl_wasm_rt=>le_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = p0. s1 = 1137529. s2 = 0. PERFORM f970 USING s0 s1 s2 CHANGING s0. s0 = 25769803776. rv = s0. RETURN.
  ELSE.
  ENDIF.
  s0 = p3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 8 ). l5 = s0. s0 = p1. l4 = s0. s0 = p2. s1 = 3.
  IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = p3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 16 ). l4 = s0.
  ELSE.
  ENDIF.
  s0 = p0. s1 = l5. PERFORM f503 USING s0 s1 CHANGING s0. p2 = s0.
  IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = 25769803776. rv = s0. RETURN.
  ELSE.
  ENDIF.
  s0 = p0. s1 = p1. s2 = p2. s3 = l4. s4 = 0. PERFORM f192 USING s0 s1 s2 s3 s4 CHANGING s0.
  DO 1 TIMES. " block
    s1 = p2. s2 = 228.
    IF s1 < s2. s1 = 1. ELSE. s1 = 0. ENDIF.
    IF s1 <> 0. EXIT. ENDIF. " br_if 0
    s1 = p0. s1 = mem_ld_i32( s1 + 16 ). p3 = s1. s1 = mem_ld_i32( s1 + 56 ). s2 = p2. s3 = 2. s2 = zcl_wasm_rt=>shl32( iv_val = s2 iv_shift = s3 ). s1 = s1 + s2. s1 = mem_ld_i32( s1 ). p0 = s1. s2 = p0. s2 = mem_ld_i32( s2 ). p2 = s2.
    s3 = 1. s2 = s2 - s3. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = p2. s2 = 1.
    IF s1 > s2. s1 = 1. ELSE. s1 = 0. ENDIF.
    IF s1 <> 0. EXIT. ENDIF. " br_if 0
    s1 = p3. s2 = p0. PERFORM f713 USING s1 s2.
  ENDDO.
  rv = s0.
ENDFORM.

FORM f922 USING p0 TYPE i p1 TYPE i p2 TYPE i CHANGING rv TYPE i.
  DATA l3 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    s0 = p1.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p2.
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p0. s0 = mem_ld_i32( s0 + 8 ). s1 = p0. s1 = mem_ld_i32( s1 + 4 ). p1 = s1. s2 = p2. s1 = s1 + s2.
      IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p2. PERFORM f18 USING s0 CHANGING s0. p2 = s0.
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p0. s1 = p1. s2 = 8. s1 = s1 + s2. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = p0. s1 = p0. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p2. rv = s0. RETURN.
    ELSE.
    ENDIF.
    s0 = p2.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p0. s1 = p0. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s1 = p0. s1 = mem_ld_i32( s1 + 4 ). s2 = 8. s1 = s1 - s2. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = p1.
      PERFORM f125 USING s0. s0 = 0. rv = s0. RETURN.
    ELSE.
    ENDIF.
    s0 = p0. s0 = mem_ld_i32( s0 + 8 ). s1 = p0. s1 = mem_ld_i32( s1 + 4 ). s2 = p2. s1 = s1 + s2.
    IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p1. s1 = p2. PERFORM f205 USING s0 s1 CHANGING s0. l3 = s0.
  ENDDO.
  s0 = l3. rv = s0.
ENDFORM.

FORM f923 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i CHANGING rv TYPE int8.
  DATA l4 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i.
  DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. p2 = s0. gv_g0 = s0. s0 = p2. s1 = 12884901888.
  zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ). s0 = p2. s1 = p3. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 0 ).
  zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 8 CHANGING cv_mem = mv_mem ).
  DO 1 TIMES. " block
    s0 = p0. s1 = p1. s2 = 129. s3 = p1. s4 = 0. PERFORM f192 USING s0 s1 s2 s3 s4 CHANGING s0. l4 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 25769803776.
    IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = l4. p1 = s0. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = p0. s1 = l4. s2 = p1. s3 = 12884901888. s4 = 2. s5 = p2. s6 = 2. PERFORM f0 USING s0 s1 s2 s3 s4 s5 s6 CHANGING s0. p1 = s0. s0 = l4. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ).
    s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
    IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l4. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p3 = s0. s1 = p3. s1 = mem_ld_i32( s1 ). p3 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p3. s1 = 1.
    IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = l4. PERFORM f453 USING s0 s1.
  ENDDO.
  s0 = p2. s1 = 16. s0 = s0 + s1. gv_g0 = s0. s0 = p1. rv = s0.
ENDFORM.

FORM f924 USING p0 TYPE i.
  DATA l1 TYPE i. DATA l2 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          DO 1 TIMES. " block
            DO 1 TIMES. " block
              s0 = p0. s0 = mem_ld_i32_8u( s0 ). s1 = 3. s0 = s0 - s1.
              CASE s0.
                WHEN 0. EXIT.
                WHEN 1. lv_br = 5. EXIT.
                WHEN 2. lv_br = 5. EXIT.
                WHEN 3. lv_br = 1. EXIT.
                WHEN 4. lv_br = 5. EXIT.
                WHEN 5. lv_br = 5. EXIT.
                WHEN 6. lv_br = 5. EXIT.
                WHEN 7. lv_br = 2. EXIT.
                WHEN 8. lv_br = 3. EXIT.
                WHEN OTHERS. lv_br = 5. EXIT.
              ENDCASE.
            ENDDO.
            s0 = p0. s0 = mem_ld_i32( s0 + 4 ).
            IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. lv_br = 4. EXIT. ENDIF. " br_if 4
            s0 = p0. s0 = mem_ld_i32( s0 + 8 ). p0 = s0. lv_br = 3. EXIT. " br 3
          ENDDO.
          s0 = p0. s0 = mem_ld_i32_8u( s0 + 4 ). s1 = 3.
          IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
          s0 = p0. s0 = mem_ld_i32( s0 + 8 ). p0 = s0. s0 = mem_ld_i32( s0 ). l1 = s0. s1 = p0. s2 = 4. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). l2 = s1. s1 = mem_ld_i32( s1 ).
          DATA(lv_ci_func) = mt_tab0[ s1 + 1 ]. " call_indirect
          dispatch_t2( iv_idx = lv_ci_func p0 = s0 ). s0 = l2. s0 = mem_ld_i32( s0 + 4 ).
          IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
          s0 = l1. PERFORM f125 USING s0. lv_br = 2. EXIT. " br 2
        ENDDO.
        s0 = p0. s0 = mem_ld_i32( s0 + 20 ). s1 = -2147483648. s0 = zcl_wasm_rt=>or32( iv_a = s0 iv_b = s1 ). s1 = -2147483648.
        IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
        s0 = p0. s0 = mem_ld_i32( s0 + 24 ). p0 = s0. lv_br = 1. EXIT. " br 1
      ENDDO.
      s0 = p0. s0 = mem_ld_i32( s0 + 20 ). s1 = -2147483648. s0 = zcl_wasm_rt=>or32( iv_a = s0 iv_b = s1 ). s1 = -2147483648.
      IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p0. s0 = mem_ld_i32( s0 + 24 ). p0 = s0.
    ENDDO.
    s0 = p0. PERFORM f125 USING s0.
  ENDDO.
ENDFORM.

FORM f925 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i p4 TYPE i p5 TYPE i CHANGING rv TYPE int8.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i.
  DATA s14 TYPE i. DATA s15 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    s0 = p5. s0 = zcl_wasm_rt=>mem_ld_i64_ext( iv_mem = mv_mem iv_addr = s0 + 4 iv_op = 53 ). s1 = 32. s0 = zcl_wasm_rt=>shl64( iv_val = s0 iv_shift = s1 ). s1 = 12884901888.
    IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). p1 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
    IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p2 = s0. s1 = p2. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
    ELSE.
    ENDIF.
    s0 = p5. s1 = p1. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ). s0 = p5. s1 = 12. s0 = s0 + s1. s0 = zcl_wasm_rt=>mem_ld_i64_ext( iv_mem = mv_mem iv_addr = s0 + 0 iv_op = 53 ). s1 = 32.
    s0 = zcl_wasm_rt=>shl64( iv_val = s0 iv_shift = s1 ). s1 = 12884901888.
    IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 8 ). p1 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
    IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p0 = s0. s1 = p0. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
    ELSE.
    ENDIF.
    s0 = p5. s1 = p1. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 8 CHANGING cv_mem = mv_mem ). s0 = 12884901888. rv = s0. RETURN.
  ENDDO.
  s0 = p0. s1 = 1137215. s2 = 0. PERFORM f970 USING s0 s1 s2 CHANGING s0. s0 = 25769803776. rv = s0.
ENDFORM.

FORM f926 USING p0 TYPE i.
  DATA l1 TYPE i. DATA l2 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    s0 = p0. s0 = mem_ld_i32_8u( s0 + 12 ). l1 = s0. s1 = 54.
    IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l1. s1 = 12. s0 = s0 - s1. s1 = 0. s2 = l1. s3 = 13. s2 = s2 - s3. s3 = 255. s2 = zcl_wasm_rt=>and32( iv_a = s2 iv_b = s3 ). s3 = 41.
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
        s0 = p0. s0 = mem_ld_i32_8u( s0 ). s1 = 3.
        IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
        s0 = p0. s0 = mem_ld_i32( s0 + 4 ). p0 = s0. s0 = mem_ld_i32( s0 ). l1 = s0. s1 = p0. s2 = 4. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). l2 = s1. s1 = mem_ld_i32( s1 ).
        DATA(lv_ci_func) = mt_tab0[ s1 + 1 ]. " call_indirect
        dispatch_t2( iv_idx = lv_ci_func p0 = s0 ). s0 = l2. s0 = mem_ld_i32( s0 + 4 ).
        IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        s0 = l1. PERFORM f125 USING s0. lv_br = 1. EXIT. " br 1
      ENDDO.
      s0 = p0. s0 = mem_ld_i32( s0 ).
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p0. s0 = mem_ld_i32( s0 + 4 ). p0 = s0.
    ENDDO.
    s0 = p0. PERFORM f125 USING s0.
  ENDDO.
ENDFORM.

FORM f927 USING p0 TYPE i p1 TYPE i p2 TYPE i CHANGING rv TYPE i.
  DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i.
  DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l3 = s0. gv_g0 = s0. s0 = l3. s1 = 8. s0 = s0 + s1. s1 = p0. s1 = mem_ld_i32( s1 + 8 ). s1 = mem_ld_i32( s1 ).
  s2 = p1. s3 = p2. PERFORM f663 USING s0 s1 s2 s3. s0 = l3. s0 = mem_ld_i32_8u( s0 + 8 ). p2 = s0. s1 = 4.
  IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = p0. s0 = mem_ld_i32( s0 + 4 ). p1 = s0. s0 = l3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 8 ). l6 = s0. s0 = p0. s0 = mem_ld_i32_8u( s0 ). l4 = s0. s1 = 4.
    IF zcl_wasm_rt=>le_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    s1 = l4. s2 = 3.
    IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
    s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p1. s0 = mem_ld_i32( s0 ). l4 = s0. s1 = p1. s2 = 4. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). l5 = s1. s1 = mem_ld_i32( s1 ).
      DATA(lv_ci_func) = mt_tab0[ s1 + 1 ]. " call_indirect
      dispatch_t2( iv_idx = lv_ci_func p0 = s0 ). s0 = l5. s0 = mem_ld_i32( s0 + 4 ).
      IF s0 <> 0.
        s0 = l4. PERFORM f125 USING s0.
      ELSE.
      ENDIF.
      s0 = p1. PERFORM f125 USING s0.
    ELSE.
    ENDIF.
    s0 = p0. s1 = l6. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ).
  ELSE.
  ENDIF.
  s0 = l3. s1 = 16. s0 = s0 + s1. gv_g0 = s0. s0 = p2. s1 = 4.
  IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
  rv = s0.
ENDFORM.

FORM f928 USING p0 TYPE i p1 TYPE int8.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i.
  DATA lv_br TYPE i. s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). s0 = mem_ld_i32( s0 + 32 ). l3 = s0.
  IF s0 <> 0.
    DO 1 TIMES. " block
      s0 = l3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). p1 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
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
    s0 = p0. s1 = 16. s0 = s0 + s1. s1 = l3. s2 = p0. s2 = mem_ld_i32( s2 + 4 ).
    DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
    dispatch_t6( iv_idx = lv_ci_func p0 = s0 p1 = s1 ).
  ELSE.
  ENDIF.
ENDFORM.

FORM f929 USING p0 TYPE i p1 TYPE i.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i.
  DATA s11 TYPE i. DATA s12 TYPE i. DATA lv_br TYPE i. s0 = p1. s0 = mem_ld_i32( s0 ). l2 = s0. s1 = 0.
  IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = p1. s1 = l2. s2 = 1. s1 = s1 - s2. l2 = s1. mem_st_i32( iv_addr = s0 iv_val = s1 ).
    DO 1 TIMES. " block
      s0 = l2.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p1. s0 = mem_ld_i32_8u( s0 + 4 ). s1 = 240. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = 16.
      IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p1. s1 = 12. s0 = s0 + s1. l2 = s0. s0 = mem_ld_i32( s0 ). l3 = s0. s1 = p1. s1 = mem_ld_i32( s1 + 8 ). l4 = s1. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p1. s1 = 0. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = l4.
      s1 = l3. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = p1. s1 = p0. s1 = mem_ld_i32( s1 + 96 ). l3 = s1. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = l3. s1 = p1. s2 = 8. s1 = s1 + s2. p1 = s1.
      mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = p0. s1 = p1. mem_st_i32( iv_addr = s0 + 96 iv_val = s1 ). s0 = l2. s1 = p0. s2 = 96. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
    ENDDO.
    RETURN.
  ELSE.
  ENDIF.
  s0 = 1151835. s1 = 1148333. s2 = 5750. s3 = 1147061. PERFORM f1101 USING s0 s1 s2 s3.
  RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
ENDFORM.

FORM f930 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i CHANGING rv TYPE int8.
  DATA l4 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. p2 = s0.
  gv_g0 = s0. s0 = p3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). p1 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). p3 = s0. s1 = 11. s0 = s0 + s1. l4 = s0.
  DO 1 TIMES. " block
    s0 = p3.
    IF s0 <> 0.
      s0 = 4294967296. s1 = l4. s2 = 18.
      IF zcl_wasm_rt=>lt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
    ELSE.
    ENDIF.
    DO 1 TIMES. " block
      s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). s0 = s0. " convert to f64 s1 = p3. s2 = 2.
      IF zcl_wasm_rt=>le_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p1. s1 = 9221120288580698112. s0 = s0 + s1. s0 = zcl_wasm_rt=>reinterpret_i64_f64( s0 ). s1 = l4. s2 = 18.
      IF zcl_wasm_rt=>ge_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. EXIT. ENDIF. " br_if 0
      s0 = 25769803776. s1 = p0. s2 = p2. s3 = 8. s2 = s2 + s3. s3 = p1. PERFORM f801 USING s1 s2 s3 CHANGING s1.
      IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p2. s0 = zcl_wasm_rt=>mem_ld_f64( iv_mem = mv_mem iv_addr = s0 + 8 ).
    ENDDO.
    s0 = abs( s0 ). s1 = '+Inf'.
    IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    s0 = zcl_wasm_rt=>extend_u32( s0 ). s1 = 4294967296. s0 = zcl_wasm_rt=>or64( iv_a = s0 iv_b = s1 ).
  ENDDO.
  s1 = p2. s2 = 16. s1 = s1 + s2. gv_g0 = s1. rv = s0.
ENDFORM.

FORM f931 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i CHANGING rv TYPE int8.
  DATA l4 TYPE i. DATA l5 TYPE f. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16.
  s0 = s0 - s1. p2 = s0. gv_g0 = s0. s0 = p3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). p1 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). p3 = s0. s1 = 11.
  s0 = s0 + s1. l4 = s0.
  DO 1 TIMES. " block
    s0 = p3.
    IF s0 <> 0.
      s0 = 4294967296. s1 = l4. s2 = 18.
      IF zcl_wasm_rt=>lt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
    ELSE.
    ENDIF.
    DO 1 TIMES. " block
      s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). s0 = s0. " convert to f64 s1 = p3. s2 = 2.
      IF zcl_wasm_rt=>le_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p1. s1 = 9221120288580698112. s0 = s0 + s1. s0 = zcl_wasm_rt=>reinterpret_i64_f64( s0 ). s1 = l4. s2 = 18.
      IF zcl_wasm_rt=>ge_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. EXIT. ENDIF. " br_if 0
      s0 = 25769803776. s1 = p0. s2 = p2. s3 = 8. s2 = s2 + s3. s3 = p1. PERFORM f801 USING s1 s2 s3 CHANGING s1.
      IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p2. s0 = zcl_wasm_rt=>mem_ld_f64( iv_mem = mv_mem iv_addr = s0 + 8 ).
    ENDDO.
    l5 = s0. s1 = l5.
    IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    s0 = zcl_wasm_rt=>extend_u32( s0 ). s1 = 4294967296. s0 = zcl_wasm_rt=>or64( iv_a = s0 iv_b = s1 ).
  ENDDO.
  s1 = p2. s2 = 16. s1 = s1 + s2. gv_g0 = s1. rv = s0.
ENDFORM.

FORM f932 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i p4 TYPE i CHANGING rv TYPE int8.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i.
  DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. p2 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      s0 = p1. s1 = -4294967296.
      IF zcl_wasm_rt=>ge_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p3 = s0. s0 = mem_ld_i32_16u( s0 + 6 ). s1 = 21. s0 = s0 - s1. s1 = 65535. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = 11.
        IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      ELSE.
      ENDIF.
      s0 = p2. s1 = 1135229. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s1 = 1139205. s2 = p2. PERFORM f970 USING s0 s1 s2 CHANGING s0. s0 = 25769803776. lv_br = 1. EXIT. " br 1
    ENDDO.
    s1 = p3. s2 = 32. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). s2 = 12. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). s2 = 32. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). s2 = 4. s1 = s1 + s2. s1 = mem_ld_i32_8u( s1 ).
    IF s1 <> 0.
      s1 = p0. s2 = 1148080. s3 = 0. PERFORM f970 USING s1 s2 s3 CHANGING s1. s1 = 25769803776. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s2 = p0. s3 = p1. s4 = p2. s5 = p2. s6 = p4. PERFORM f455 USING s2 s3 s4 s5 s6 CHANGING s2.
  ENDDO.
  s3 = p2. s4 = 16. s3 = s3 + s4. gv_g0 = s3. rv = s2.
ENDFORM.

FORM f933 USING p0 TYPE i p1 TYPE i p2 TYPE i CHANGING rv TYPE i.
  DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i.
  DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l3 = s0. gv_g0 = s0. s0 = l3. s1 = 8. s0 = s0 + s1. s1 = p0. s1 = mem_ld_i32( s1 + 8 ). s2 = p1. s3 = p2.
  PERFORM f181 USING s0 s1 s2 s3. s0 = l3. s0 = mem_ld_i32_8u( s0 + 8 ). p2 = s0. s1 = 4.
  IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = p0. s0 = mem_ld_i32( s0 + 4 ). p1 = s0. s0 = l3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 8 ). l6 = s0. s0 = p0. s0 = mem_ld_i32_8u( s0 ). l4 = s0. s1 = 4.
    IF zcl_wasm_rt=>le_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    s1 = l4. s2 = 3.
    IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
    s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p1. s0 = mem_ld_i32( s0 ). l4 = s0. s1 = p1. s2 = 4. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). l5 = s1. s1 = mem_ld_i32( s1 ).
      DATA(lv_ci_func) = mt_tab0[ s1 + 1 ]. " call_indirect
      dispatch_t2( iv_idx = lv_ci_func p0 = s0 ). s0 = l5. s0 = mem_ld_i32( s0 + 4 ).
      IF s0 <> 0.
        s0 = l4. PERFORM f125 USING s0.
      ELSE.
      ENDIF.
      s0 = p1. PERFORM f125 USING s0.
    ELSE.
    ENDIF.
    s0 = p0. s1 = l6. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ).
  ELSE.
  ENDIF.
  s0 = l3. s1 = 16. s0 = s0 + s1. gv_g0 = s0. s0 = p2. s1 = 4.
  IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
  rv = s0.
ENDFORM.

FORM f934 USING p0 TYPE i p1 TYPE int8 p2 TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i.
  DATA s14 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          s0 = p1. PERFORM f1185 USING s0 CHANGING s0.
          CASE s0.
            WHEN 0. lv_br = 1. EXIT.
            WHEN 1. lv_br = 2. EXIT.
            WHEN 2. lv_br = 3. EXIT.
            WHEN OTHERS. EXIT.
          ENDCASE.
        ENDDO.
        s0 = 1096416. s1 = 40. s2 = 1078680. PERFORM f1140 USING s0 s1 s2.
        RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
      ENDDO.
      s0 = p0. s1 = 19. mem_st_i32_8( iv_addr = s0 iv_val = s1 ).
      RETURN.
    ENDDO.
    s0 = p1. PERFORM f1095 USING s0 CHANGING s0. p1 = s0. s0 = p2. s1 = p2. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s1 = 18. mem_st_i32_8( iv_addr = s0 iv_val = s1 ).
    DO 1 TIMES. " block
      s0 = p1. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
      IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p0 = s0. s1 = p0. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 - s2. p0 = s1. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s1 = 0.
      IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p2. s1 = p1. PERFORM f1384 USING s0 s1.
    ENDDO.
    s0 = p2. PERFORM f117 USING s0.
    RETURN.
  ENDDO.
  s0 = p2. s1 = p1. PERFORM f1095 USING s1 CHANGING s1. PERFORM f1118 USING s0 s1 CHANGING s0. s0 = p0. s1 = 9. mem_st_i32_8( iv_addr = s0 iv_val = s1 ).
ENDFORM.

FORM f935 USING p0 TYPE i.
  DATA l1 TYPE i. DATA l2 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i.
  DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 32. s0 = s0 - s1. l1 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          s0 = p0. s0 = mem_ld_i32_8u( s0 + 16 ). s1 = 1. s0 = s0 - s1.
          CASE s0.
            WHEN 0. lv_br = 3. EXIT.
            WHEN 1. EXIT.
            WHEN 2. lv_br = 2. EXIT.
            WHEN OTHERS. lv_br = 1. EXIT.
          ENDCASE.
        ENDDO.
        s0 = l1. s1 = 1. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = l1. s1 = 1062008. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = l1. s1 = 0.
        zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 16 CHANGING cv_mem = mv_mem ). s0 = l1. s1 = l1. s2 = 28. s1 = s1 + s2. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = l1. s1 = 4. s0 = s0 + s1. s1 = 1062108.
        PERFORM f696 USING s0 s1.
        RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
      ENDDO.
      s0 = p0. s0 = mem_ld_i32( s0 + 4 ). l2 = s0. s1 = p0. s1 = mem_ld_i32( s1 + 8 ). PERFORM f892 USING s0 s1. s0 = p0. s0 = mem_ld_i32( s0 ).
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = l2. PERFORM f125 USING s0. lv_br = 1. EXIT. " br 1
    ENDDO.
    s0 = p0. s0 = mem_ld_i32( s0 + 4 ). l2 = s0. s1 = p0. s1 = mem_ld_i32( s1 + 8 ). PERFORM f892 USING s0 s1. s0 = p0. s0 = mem_ld_i32( s0 ).
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l2. PERFORM f125 USING s0.
  ENDDO.
  s0 = l1. s1 = 32. s0 = s0 + s1. gv_g0 = s0.
ENDFORM.

FORM f936 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA l2 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i.
  DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 48. s0 = s0 - s1. l2 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    s0 = p0. s0 = mem_ld_i32( s0 ). p0 = s0. s0 = mem_ld_i32( s0 + 12 ).
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p0. s1 = p1. PERFORM f405 USING s0 s1 CHANGING s0. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s1 = l2. s2 = 3. mem_st_i32( iv_addr = s1 + 4 iv_val = s2 ). s1 = l2. s2 = 1093192. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = l2. s2 = 3. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s2 iv_addr = s1 + 12 CHANGING cv_mem = mv_mem ).
    s1 = l2. s2 = p0. s3 = 16. s2 = s2 + s3. s2 = zcl_wasm_rt=>extend_u32( s2 ). s3 = 55834574848. s2 = zcl_wasm_rt=>or64( iv_a = s2 iv_b = s3 ). zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s2 iv_addr = s1 + 40 CHANGING cv_mem = mv_mem ).
    s1 = l2. s2 = p0. s3 = 12. s2 = s2 + s3. s2 = zcl_wasm_rt=>extend_u32( s2 ). s3 = 55834574848. s2 = zcl_wasm_rt=>or64( iv_a = s2 iv_b = s3 ). zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s2 iv_addr = s1 + 32 CHANGING cv_mem = mv_mem ).
    s1 = l2. s2 = p0. s2 = zcl_wasm_rt=>extend_u32( s2 ). s3 = 90194313216. s2 = zcl_wasm_rt=>or64( iv_a = s2 iv_b = s3 ). zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s2 iv_addr = s1 + 24 CHANGING cv_mem = mv_mem ). s1 = l2. s2 = l2.
    s3 = 24. s2 = s2 + s3. mem_st_i32( iv_addr = s1 + 8 iv_val = s2 ). s1 = p1. s1 = mem_ld_i32( s1 + 20 ). s2 = p1. s2 = mem_ld_i32( s2 + 24 ). s3 = l2. PERFORM f360 USING s1 s2 s3 CHANGING s1.
  ENDDO.
  s2 = l2. s3 = 48. s2 = s2 + s3. gv_g0 = s2. rv = s1.
ENDFORM.

FORM f937 USING p0 TYPE i p1 TYPE int8 p2 TYPE i CHANGING rv TYPE int8.
  DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i.
  DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l3 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        s0 = p1. s1 = -4294967296.
        IF zcl_wasm_rt=>lt_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l5 = s0. s0 = mem_ld_i32_16u( s0 + 6 ). l4 = s0. s0 = p2.
        IF s0 <> 0.
          s0 = l4. s1 = 32.
          IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          lv_br = 2. EXIT. " br 2
        ELSE.
        ENDIF.
        s0 = l4. s1 = 21. s0 = s0 - s1. s1 = 65535. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = 11.
        IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      ENDDO.
      s0 = l3. s1 = 1135652. s2 = 1135229. s3 = p2.
      IF s3 <> 0. s1 = s1. ELSE. s1 = s2. ENDIF.
      mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s1 = 1139205. s2 = l3. PERFORM f970 USING s0 s1 s2 CHANGING s0. s0 = 25769803776. lv_br = 1. EXIT. " br 1
    ENDDO.
    s1 = l5. s1 = mem_ld_i32( s1 + 32 ). s1 = mem_ld_i32( s1 + 12 ). p0 = s1. s2 = p0. s2 = mem_ld_i32( s2 ). s3 = 1. s2 = s2 + s3. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = p0. s1 = zcl_wasm_rt=>extend_u32( s1 ). s2 = -4294967296.
    s1 = zcl_wasm_rt=>or64( iv_a = s1 iv_b = s2 ).
  ENDDO.
  s2 = l3. s3 = 16. s2 = s2 + s3. gv_g0 = s2. rv = s1.
ENDFORM.

FORM f938 USING p0 TYPE i CHANGING rv TYPE i.
  DATA l1 TYPE i. DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i.
  DATA s10 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l2 = s0. gv_g0 = s0. s0 = p0. s0 = mem_ld_i32( s0 + 4 ). l4 = s0. s0 = 1. l3 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      s0 = p0. s0 = mem_ld_i32( s0 + 8 ). l1 = s0.
      IF s0 <> 0.
        s0 = l1. s1 = 0.
        IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        s0 = 1215076. s0 = mem_ld_i32_8u( s0 ). s0 = l1. PERFORM f18 USING s0 CHANGING s0. l3 = s0.
        IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
      ELSE.
      ENDIF.
      s0 = l3. s1 = l4. s2 = l1. PERFORM f216 USING s0 s1 s2 CHANGING s0. l3 = s0. s0 = l2. s1 = l1. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = l2. s1 = l3. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = l2. s1 = l1.
      mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = l2. s1 = 4. s0 = s0 + s1. PERFORM f989 USING s0 CHANGING s0. s1 = p0. s1 = mem_ld_i32( s1 ).
      IF s1 <> 0.
        s1 = l4. PERFORM f125 USING s1.
      ELSE.
      ENDIF.
      s1 = l2. s2 = 16. s1 = s1 + s2. gv_g0 = s1. rv = s0. RETURN.
    ENDDO.
    PERFORM f1183.
    RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
  ENDDO.
  s0 = 1. s1 = l1. PERFORM f1271 USING s0 s1.
  RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
ENDFORM.

FORM f939 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      s0 = p0. s1 = 1. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p1. s1 = 257. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = 257.
      IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p1. s1 = 1024. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = 0. s2 = p0. s3 = p1. s2 = zcl_wasm_rt=>xor32( iv_a = s2 iv_b = s3 ). s3 = 4. s2 = zcl_wasm_rt=>and32( iv_a = s2 iv_b = s3 ).
      IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p1. s1 = 14848. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p0. s1 = 48. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). l3 = s0. s1 = 16.
      IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      s1 = p1. s2 = 6144. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). l4 = s1. s2 = 0.
      IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
      s0 = zcl_wasm_rt=>xor32( iv_a = s0 iv_b = s1 ).
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p1. s1 = 514. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = 514.
      IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p0. s1 = 2. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = l3. s1 = 16.
      IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = l4.
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
    ENDDO.
    s0 = 1. l2 = s0.
  ENDDO.
  s0 = l2. rv = s0.
ENDFORM.

FORM f940 USING p0 TYPE i p1 TYPE i p2 TYPE i p3 TYPE i CHANGING rv TYPE i.
  DATA l4 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i.
  DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 32. s0 = s0 - s1. p3 = s0. gv_g0 = s0. s0 = p0. s0 = mem_ld_i32( s0 ). l4 = s0. s0 = p3. s1 = 0.
  zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 20 CHANGING cv_mem = mv_mem ). s0 = p3. s1 = -9223372036854775808. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 12 CHANGING cv_mem = mv_mem ). s0 = p3.
  s1 = l4. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = p0. s1 = p3. s2 = 8. s1 = s1 + s2. l4 = s1. s2 = p1. s3 = p2. s4 = 8. s3 = s3 + s4. p1 = s3. PERFORM f57 USING s0 s1 s2 s3. s0 = p0. s1 = p0. s2 = l4. s3 = p1. s4 = 6. s5 = 735.
  PERFORM f815 USING s0 s1 s2 s3 s4 s5 CHANGING s0.
  DO 1 TIMES. " block
    s0 = p3. s0 = mem_ld_i32( s0 + 8 ). p0 = s0.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p3. s0 = mem_ld_i32( s0 + 24 ). p1 = s0.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s0 = mem_ld_i32( s0 ). s1 = p1. s2 = 0. s3 = p0. s4 = 4. s3 = s3 + s4. s3 = mem_ld_i32( s3 ).
    DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
    s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ).
  ENDDO.
  s0 = p3. s1 = 32. s0 = s0 + s1. gv_g0 = s0. s0 = 16. rv = s0.
ENDFORM.

FORM f941 USING p0 TYPE i p1 TYPE int8 p2 TYPE i.
  DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i.
  DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA lv_br TYPE i. s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). s0 = mem_ld_i32( s0 + 32 ). l3 = s0.
  s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). p1 = s0. s1 = -8589934592.
  IF zcl_wasm_rt=>ge_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = p0. s1 = p1. s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = p2.
    DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
    dispatch_t6( iv_idx = lv_ci_func p0 = s0 p1 = s1 ).
  ELSE.
  ENDIF.
  s0 = l3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 8 ). p1 = s0. s1 = -8589934592.
  IF zcl_wasm_rt=>ge_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = p0. s1 = p1. s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = p2.
    DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
    dispatch_t6( iv_idx = lv_ci_func p0 = s0 p1 = s1 ).
  ELSE.
  ENDIF.
  s0 = l3. s0 = mem_ld_i32( s0 + 16 ). l4 = s0. s1 = 0.
  IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = l3. s1 = 24. s0 = s0 + s1. l5 = s0.
    DO. " loop
      s0 = l5. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). p1 = s0. s1 = -8589934592.
      IF zcl_wasm_rt=>ge_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = p0. s1 = p1. s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = p2.
        DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
        dispatch_t6( iv_idx = lv_ci_func p0 = s0 p1 = s1 ). s0 = l3. s0 = mem_ld_i32( s0 + 16 ). l4 = s0.
      ELSE.
      ENDIF.
      s0 = l5. s1 = 8. s0 = s0 + s1. l5 = s0. s0 = l6. s1 = 1. s0 = s0 + s1. l6 = s0. s1 = l4.
      IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
    ENDDO.
  ELSE.
  ENDIF.
ENDFORM.

FORM f942 USING p0 TYPE i CHANGING rv TYPE i.
  DATA l1 TYPE i. DATA l2 TYPE i. DATA l3 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      s0 = p0. s0 = mem_ld_i32( s0 ). l1 = s0.
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      DO. " loop
        DO 1 TIMES. " block
          s0 = p0. s0 = mem_ld_i32( s0 + 8 ). l3 = s0. s1 = p0. s1 = mem_ld_i32( s1 + 4 ).
          IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = l1. s1 = l3. s0 = s0 + s1. s0 = mem_ld_i32_8u( s0 ). s1 = 69.
          IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = p0. s1 = l3. s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). lv_br = 2. EXIT. " br 2
        ENDDO.
        DO 1 TIMES. " block
          s0 = l2.
          IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = p0. s0 = mem_ld_i32( s0 + 16 ). l1 = s0.
          IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = l1. s1 = 1080445. s2 = 2. PERFORM f244 USING s0 s1 s2 CHANGING s0.
          IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = 1. rv = s0. RETURN.
        ENDDO.
        s0 = 1. s1 = p0. s2 = 1. PERFORM f34 USING s1 s2 CHANGING s1.
        IF s1 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
        s0 = l2. s1 = 1. s0 = s0 - s1. l2 = s0. s0 = p0. s0 = mem_ld_i32( s0 ). l1 = s0.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
      ENDDO.
    ENDDO.
    s0 = 0.
  ENDDO.
  rv = s0.
ENDFORM.

FORM f943 USING p0 TYPE i p1 TYPE i p2 TYPE int8 CHANGING rv TYPE i.
  DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE int8. DATA l6 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i.
  DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA lv_br TYPE i. s0 = p2. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). l4 = s0. s1 = -11.
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

FORM f944 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i CHANGING rv TYPE int8.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i.
  DATA s14 TYPE i. DATA s15 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    s0 = p1. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = -47244640256.
    IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    DO 1 TIMES. " block
      s0 = p1. s1 = -4294967296.
      IF zcl_wasm_rt=>lt_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p2 = s0. s0 = mem_ld_i32_16u( s0 + 6 ). s1 = 36.
      IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p2. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 32 ). p1 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = -47244640256.
      IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
    ENDDO.
    s0 = p0. s1 = 1143007. s2 = 0. PERFORM f970 USING s0 s1 s2 CHANGING s0. s0 = 25769803776. rv = s0. RETURN.
  ENDDO.
  s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p2 = s0. s1 = p2. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s1 = p1. s2 = 0. PERFORM f341 USING s0 s1 s2 CHANGING s0. s1 = p2. s2 = p2.
  s2 = mem_ld_i32( s2 ). p2 = s2. s3 = 1. s2 = s2 - s3. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = p2. s2 = 1.
  IF s1 <= s2. s1 = 1. ELSE. s1 = 0. ENDIF.
  IF s1 <> 0.
    s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s2 = p1. PERFORM f453 USING s1 s2.
  ELSE.
  ENDIF.
  rv = s0.
ENDFORM.

FORM f945 USING p0 TYPE i.
  DATA l1 TYPE i. DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA lv_br TYPE i. s0 = p0.
  s0 = mem_ld_i32( s0 + 4 ). l1 = s0. s1 = 3.
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
          s0 = p0. s0 = mem_ld_i32( s0 + 28 ). l1 = s0. s0 = mem_ld_i32( s0 ).
          CASE s0.
            WHEN 0. EXIT.
            WHEN 1. lv_br = 1. EXIT.
            WHEN OTHERS. lv_br = 3. EXIT.
          ENDCASE.
        ENDDO.
        s0 = l1. s0 = mem_ld_i32( s0 + 8 ).
        IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
        s0 = l1. s0 = mem_ld_i32( s0 + 4 ). l2 = s0. lv_br = 1. EXIT. " br 1
      ENDDO.
      s0 = l1. s0 = mem_ld_i32_8u( s0 + 4 ). s1 = 3.
      IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = l1. s0 = mem_ld_i32( s0 + 8 ). l2 = s0. s0 = mem_ld_i32( s0 ). l3 = s0. s1 = l2. s2 = 4. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). l4 = s1. s1 = mem_ld_i32( s1 ).
      DATA(lv_ci_func) = mt_tab0[ s1 + 1 ]. " call_indirect
      dispatch_t2( iv_idx = lv_ci_func p0 = s0 ). s0 = l4. s0 = mem_ld_i32( s0 + 4 ).
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = l3. PERFORM f125 USING s0.
    ENDDO.
    s0 = l2. PERFORM f125 USING s0.
  ENDDO.
  s0 = l1. PERFORM f125 USING s0. s0 = p0. PERFORM f125 USING s0.
ENDFORM.

FORM f946 USING p0 TYPE i.
  DATA l1 TYPE i. DATA l2 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    s0 = p0. s0 = mem_ld_i32_8u( s0 + 16 ). l1 = s0. s1 = 12. s0 = s0 - s1. s1 = 0. s2 = l1. s3 = 13. s2 = s2 - s3. s3 = 255. s2 = zcl_wasm_rt=>and32( iv_a = s2 iv_b = s3 ). s3 = 41.
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
        s0 = p0. s0 = mem_ld_i32_8u( s0 + 4 ). s1 = 3.
        IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
        s0 = p0. s0 = mem_ld_i32( s0 + 8 ). p0 = s0. s0 = mem_ld_i32( s0 ). l1 = s0. s1 = p0. s2 = 4. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). l2 = s1. s1 = mem_ld_i32( s1 ).
        DATA(lv_ci_func) = mt_tab0[ s1 + 1 ]. " call_indirect
        dispatch_t2( iv_idx = lv_ci_func p0 = s0 ). s0 = l2. s0 = mem_ld_i32( s0 + 4 ).
        IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        s0 = l1. PERFORM f125 USING s0. lv_br = 1. EXIT. " br 1
      ENDDO.
      s0 = p0. s0 = mem_ld_i32( s0 + 4 ).
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p0. s0 = mem_ld_i32( s0 + 8 ). p0 = s0.
    ENDDO.
    s0 = p0. PERFORM f125 USING s0.
  ENDDO.
ENDFORM.

FORM f947 USING p0 TYPE i p1 TYPE i p2 TYPE i p3 TYPE i.
  DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA lv_br TYPE i. s0 = 1.
  l4 = s0. s0 = 4. l5 = s0.
  DO 1 TIMES. " block
    s0 = p1.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p2. s1 = 0.
    IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          DO 1 TIMES. " block
            s0 = p3. s0 = mem_ld_i32( s0 + 4 ).
            IF s0 <> 0.
              s0 = p3. s0 = mem_ld_i32( s0 + 8 ).
              IF s0 <> 0.
                s0 = p3. s0 = mem_ld_i32( s0 ). s1 = p2. PERFORM f205 USING s0 s1 CHANGING s0. lv_br = 2. EXIT. " br 2
              ELSE.
              ENDIF.
            ELSE.
            ENDIF.
            s1 = p2.
            IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
            IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
            s1 = 1215076. s1 = mem_ld_i32_8u( s1 ). s1 = p2. PERFORM f18 USING s1 CHANGING s1.
          ENDDO.
          l4 = s1.
          IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
          IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        ENDDO.
        s1 = p0. s2 = l4. mem_st_i32( iv_addr = s1 + 4 iv_val = s2 ). s1 = 0. lv_br = 1. EXIT. " br 1
      ENDDO.
      s2 = p0. s3 = 1. mem_st_i32( iv_addr = s2 + 4 iv_val = s3 ). s2 = 1.
    ENDDO.
    l4 = s2. s2 = 8. l5 = s2. s2 = p2. l6 = s2.
  ENDDO.
  s2 = p0. s3 = l5. s2 = s2 + s3. s3 = l6. mem_st_i32( iv_addr = s2 iv_val = s3 ). s2 = p0. s3 = l4. mem_st_i32( iv_addr = s2 iv_val = s3 ).
ENDFORM.

FORM f948 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i CHANGING rv TYPE int8.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = 0. p2 = s0.
  DO 1 TIMES. " block
    s0 = p3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). p1 = s0. s1 = -4294967296.
    IF zcl_wasm_rt=>lt_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). s0 = mem_ld_i32_16u( s0 + 6 ). p3 = s0. s1 = 48.
    IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      DO 1 TIMES. " block
        DO. " loop
          s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). s0 = mem_ld_i32( s0 + 32 ). p3 = s0.
          IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
          s0 = p3. s0 = mem_ld_i32_8u( s0 + 17 ).
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          s0 = p3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). p1 = s0. s1 = -4294967296.
          IF zcl_wasm_rt=>lt_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
          s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). s0 = mem_ld_i32_16u( s0 + 6 ). p3 = s0. s1 = 48.
          IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
        ENDDO.
        s0 = p3. s1 = 2.
        IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        p2 = s0. lv_br = 2. EXIT. " br 2
      ENDDO.
      s0 = p0. s1 = 1134591. s2 = 0. PERFORM f970 USING s0 s1 s2 CHANGING s0. s0 = 25769803776. rv = s0. RETURN.
    ELSE.
    ENDIF.
    s0 = p3. s1 = 2.
    IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    p2 = s0.
  ENDDO.
  s0 = p2. s0 = zcl_wasm_rt=>extend_u32( s0 ). s1 = 4294967296. s0 = zcl_wasm_rt=>or64( iv_a = s0 iv_b = s1 ). rv = s0.
ENDFORM.

FORM f949 USING p0 TYPE i p1 TYPE i.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i.
  DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 32. s0 = s0 - s1. l2 = s0. gv_g0 = s0. s0 = p1. s0 = mem_ld_i32( s0 ). s1 = -2147483648.
  IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = p1. s0 = mem_ld_i32( s0 + 12 ). l3 = s0. s0 = l2. s1 = 28. s0 = s0 + s1. l4 = s0. s1 = 0. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l2. s1 = 4294967296.
    zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 20 CHANGING cv_mem = mv_mem ). s0 = l2. s1 = 20. s0 = s0 + s1. s1 = 1114452. s2 = l3. PERFORM f360 USING s0 s1 s2 CHANGING s0. s0 = l2. s1 = 16. s0 = s0 + s1. s1 = l4.
    s1 = mem_ld_i32( s1 ). l3 = s1. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l2. s1 = l2. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 20 ). l5 = s1.
    zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 8 CHANGING cv_mem = mv_mem ). s0 = p1. s1 = 8. s0 = s0 + s1. s1 = l3. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p1. s1 = l5.
    zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ).
  ELSE.
  ENDIF.
  s0 = p0. s1 = 1117504. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = p0. s1 = p1. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l2. s1 = 32. s0 = s0 + s1. gv_g0 = s0.
ENDFORM.

FORM f950 USING p0 TYPE i p1 TYPE i p2 TYPE i CHANGING rv TYPE i.
  DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 80. s0 = s0 - s1. l3 = s0.
  gv_g0 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      s0 = p1. s1 = 16384. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
      IF s0 <> 0.
        s0 = p0. s1 = 16. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). p1 = s0. lv_br = 1. EXIT. " br 1
      ELSE.
      ENDIF.
      s0 = p1. s1 = 32768. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p0. s1 = 16. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). p1 = s0. s1 = 140. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). l5 = s0.
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = l5. s0 = mem_ld_i32_8u( s0 + 40 ). s1 = 1. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
    ENDDO.
    s0 = l3. s1 = p1. s2 = l3. s3 = 16. s2 = s2 + s3. s3 = p2. PERFORM f410 USING s1 s2 s3 CHANGING s1. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s1 = 1134978. s2 = l3. PERFORM f970 USING s0 s1 s2 CHANGING s0. s0 = -1. l4 = s0.
  ENDDO.
  s0 = l3. s1 = 80. s0 = s0 + s1. gv_g0 = s0. s0 = l4. rv = s0.
ENDFORM.

FORM f951 USING p0 TYPE f CHANGING rv TYPE f.
  DATA l1 TYPE i. DATA l2 TYPE f. DATA l3 TYPE f. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i.
  DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA lv_br TYPE i. s0 = '0.500000'. s1 = p0. s0 = zcl_wasm_rt=>copysign( iv_mag = s0 iv_sign = s1 ).
  l3 = s0.
  DO 1 TIMES. " block
    s0 = p0. s0 = abs( s0 ). l2 = s0. s0 = zcl_wasm_rt=>reinterpret_f64_i64( s0 ). s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). l1 = s0. s1 = 1082535489.
    IF zcl_wasm_rt=>le_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = l2. PERFORM f379 USING s0 CHANGING s0. l2 = s0. s0 = l1. s1 = 1072693247.
      IF zcl_wasm_rt=>le_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = l1. s1 = 1045430272.
        IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
        s0 = l3. s1 = l2. s2 = l2. s1 = s1 + s2. s2 = l2. s3 = l2. s2 = s2 * s3. s3 = l2. s4 = '1.000000'. s3 = s3 + s4. s2 = s2 / s3. s1 = s1 - s2. s0 = s0 * s1. rv = s0. RETURN.
      ELSE.
      ENDIF.
      s0 = l3. s1 = l2. s2 = l2. s3 = l2. s4 = '1.000000'. s3 = s3 + s4. s2 = s2 / s3. s1 = s1 + s2. s0 = s0 * s1. rv = s0. RETURN.
    ELSE.
    ENDIF.
    s0 = l3. s1 = l3. s0 = s0 + s1. s1 = l2. PERFORM f1290 USING s1 CHANGING s1. s0 = s0 * s1. p0 = s0.
  ENDDO.
  s0 = p0. rv = s0.
ENDFORM.

FORM f952 USING p0 TYPE i.
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
          s0 = p0. s0 = mem_ld_i32( s0 + 28 ). p0 = s0. s0 = mem_ld_i32( s0 ).
          CASE s0.
            WHEN 0. EXIT.
            WHEN 1. lv_br = 1. EXIT.
            WHEN OTHERS. lv_br = 3. EXIT.
          ENDCASE.
        ENDDO.
        s0 = p0. s0 = mem_ld_i32( s0 + 8 ).
        IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
        s0 = p0. s0 = mem_ld_i32( s0 + 4 ). l1 = s0. lv_br = 1. EXIT. " br 1
      ENDDO.
      s0 = p0. s0 = mem_ld_i32_8u( s0 + 4 ). s1 = 3.
      IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p0. s0 = mem_ld_i32( s0 + 8 ). l1 = s0. s0 = mem_ld_i32( s0 ). l2 = s0. s1 = l1. s2 = 4. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). l3 = s1. s1 = mem_ld_i32( s1 ).
      DATA(lv_ci_func) = mt_tab0[ s1 + 1 ]. " call_indirect
      dispatch_t2( iv_idx = lv_ci_func p0 = s0 ). s0 = l3. s0 = mem_ld_i32( s0 + 4 ).
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = l2. PERFORM f125 USING s0.
    ENDDO.
    s0 = l1. PERFORM f125 USING s0.
  ENDDO.
  s0 = p0. PERFORM f125 USING s0.
ENDFORM.

FORM f953 USING p0 TYPE f p1 TYPE f p2 TYPE i CHANGING rv TYPE f.
  DATA l3 TYPE f. DATA l4 TYPE f. DATA l5 TYPE f. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i.
  DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i.
  DATA s25 TYPE i. DATA s26 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = p0. s0 = s0 * s1. l3 = s0. s1 = l3. s2 = l3. s1 = s1 * s2. s0 = s0 * s1. s1 = l3. s2 = '0.000000'. s1 = s1 * s2. s2 = '-0.000000'. s1 = s1 + s2. s0 = s0 * s1. s1 = l3.
  s2 = l3. s3 = '0.000003'. s2 = s2 * s3. s3 = '-0.000198'. s2 = s2 + s3. s1 = s1 * s2. s2 = '0.008333'. s1 = s1 + s2. s0 = s0 + s1. l5 = s0. s0 = l3. s1 = p0. s0 = s0 * s1. l4 = s0. s0 = p2.
  IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = l4. s1 = l3. s2 = l5. s1 = s1 * s2. s2 = '-0.166667'. s1 = s1 + s2. s0 = s0 * s1. s1 = p0. s0 = s0 + s1. rv = s0. RETURN.
  ELSE.
  ENDIF.
  s0 = p0. s1 = l3. s2 = p1. s3 = '0.500000'. s2 = s2 * s3. s3 = l5. s4 = l4. s3 = s3 * s4. s2 = s2 - s3. s1 = s1 * s2. s2 = p1. s1 = s1 - s2. s2 = l4. s3 = '0.166667'. s2 = s2 * s3. s1 = s1 + s2. s0 = s0 - s1. rv = s0.
ENDFORM.

FORM f954 USING p0 TYPE i CHANGING rv TYPE int8.
  DATA l1 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      s0 = p0. s0 = mem_ld_i32( s0 + 16 ). l1 = s0. s1 = 224. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). s1 = -1640562687. s2 = 32. s3 = l1. s4 = 212. s3 = s3 + s4. s3 = mem_ld_i32( s3 ). s2 = s2 - s3.
      s1 = zcl_wasm_rt=>shr_u32( iv_val = s1 iv_shift = s2 ). s2 = 2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s0 = mem_ld_i32( s0 ). l1 = s0.
      IF s0 <> 0.
        DO. " loop
          DO 1 TIMES. " block
            s0 = l1. s0 = mem_ld_i32( s0 + 20 ). s1 = -1640562687.
            IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. EXIT. ENDIF. " br_if 0
            s0 = l1. s0 = mem_ld_i32( s0 + 44 ).
            IF s0 <> 0. EXIT. ENDIF. " br_if 0
            s0 = l1. s0 = mem_ld_i32( s0 + 32 ).
            IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
          ENDDO.
          s0 = l1. s0 = mem_ld_i32( s0 + 40 ). l1 = s0.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
        ENDDO.
      ELSE.
      ENDIF.
      s0 = p0. s1 = 0. s2 = 2. PERFORM f436 USING s0 s1 s2 CHANGING s0. l1 = s0.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = 25769803776. rv = s0. RETURN.
    ENDDO.
    s0 = l1. s1 = l1. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
  ENDDO.
  s0 = p0. s1 = l1. s2 = 1. PERFORM f408 USING s0 s1 s2 CHANGING s0. rv = s0.
ENDFORM.

FORM f955 USING p0 TYPE i p1 TYPE i p2 TYPE i.
  DATA l3 TYPE i. DATA l4 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i.
  DATA lv_br TYPE i. s0 = gv_g0. s1 = 256. s0 = s0 - s1. l3 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    s0 = p1. s1 = p2.
    IF s0 <= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l3. s1 = 48. s2 = p1. s3 = p2. s2 = s2 - s3. p2 = s2. s3 = 256. s4 = p2. s5 = 256.
    IF zcl_wasm_rt=>lt_u32( iv_a = s4 iv_b = s5 ) = abap_true. s4 = 1. ELSE. s4 = 0. ENDIF.
    l4 = s4.
    IF s4 <> 0. s2 = s2. ELSE. s2 = s3. ENDIF.
    PERFORM f514 USING s0 s1 s2 CHANGING s0. p1 = s0. s0 = l4.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      DO. " loop
        s0 = p0. s0 = mem_ld_i32_8u( s0 ). s1 = 32. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
        IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = p1. s1 = 256. s2 = p0. PERFORM f792 USING s0 s1 s2.
        ELSE.
        ENDIF.
        s0 = p2. s1 = 256. s0 = s0 - s1. p2 = s0. s1 = 255.
        IF zcl_wasm_rt=>gt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
      ENDDO.
    ELSE.
    ENDIF.
    s0 = p0. s0 = mem_ld_i32_8u( s0 ). s1 = 32. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p1. s1 = p2. s2 = p0. PERFORM f792 USING s0 s1 s2.
  ENDDO.
  s0 = l3. s1 = 256. s0 = s0 + s1. gv_g0 = s0.
ENDFORM.

FORM f956 USING p0 TYPE f CHANGING rv TYPE f.
  DATA l1 TYPE i. DATA l2 TYPE int8. DATA l3 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i.
  DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA lv_br TYPE i. s0 = p0. s0 = zcl_wasm_rt=>reinterpret_f64_i64( s0 ). l2 = s0. s1 = 52.
  s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = 2047. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). l1 = s0. s1 = 1022.
  IF zcl_wasm_rt=>le_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = l2. s1 = -9223372036854775808. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). l3 = s0.
    DO 1 TIMES. " block
      s0 = l2. s1 = -4620693217682128896.
      IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = l1. s1 = 1022.
      IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = l3. s1 = 4607182418800017408. s0 = zcl_wasm_rt=>or64( iv_a = s0 iv_b = s1 ). s0 = zcl_wasm_rt=>reinterpret_i64_f64( s0 ). rv = s0. RETURN.
    ENDDO.
    s0 = l3. s0 = zcl_wasm_rt=>reinterpret_i64_f64( s0 ). rv = s0. RETURN.
  ELSE.
  ENDIF.
  s0 = l1. s1 = 1074.
  IF zcl_wasm_rt=>le_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = l2. s1 = 63. s0 = zcl_wasm_rt=>shr_s64( iv_val = s0 iv_shift = s1 ). s1 = l2. s0 = s0 + s1. s1 = 1. s2 = 1075. s3 = l1. s2 = s2 - s3. s2 = zcl_wasm_rt=>extend_u32( s2 ). s1 = zcl_wasm_rt=>shl64( iv_val = s1 iv_shift = s2 ).
    l2 = s1. s2 = 1. s1 = zcl_wasm_rt=>shr_u64( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s1 = 0. s2 = l2. s1 = s1 - s2. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s0 = zcl_wasm_rt=>reinterpret_i64_f64( s0 ).
  ELSE.
    s1 = p0.
  ENDIF.
  rv = s1.
ENDFORM.

FORM f957 USING p0 TYPE i p1 TYPE i p2 TYPE i CHANGING rv TYPE i.
  DATA l3 TYPE int8. DATA l4 TYPE f. DATA l5 TYPE f. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i.
  DATA s11 TYPE i. DATA s12 TYPE i. DATA lv_br TYPE i. s0 = p1. s0 = zcl_wasm_rt=>mem_ld_f32( iv_mem = mv_mem iv_addr = s0 + 0 ). l4 = s0. s0 = p0. s0 = zcl_wasm_rt=>mem_ld_f32( iv_mem = mv_mem iv_addr = s0 + 0 ). l5 = s0. s1 = l5.
  IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = l4. s1 = l4.
    IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    rv = s0. RETURN.
  ELSE.
  ENDIF.
  s0 = -1. p1 = s0.
  DO 1 TIMES. " block
    s0 = l4. s1 = l4.
    IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l4. s1 = l5.
    IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = 1. p1 = s0. s0 = l4. s1 = l5.
    IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = 0. p1 = s0. s0 = l5. s1 = '0.000000'.
    IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l4. s0 = s0. " f64.promote_f32 (noop in ABAP) s0 = zcl_wasm_rt=>reinterpret_f64_i64( s0 ). l3 = s0. s0 = l5. s0 = zcl_wasm_rt=>reinterpret_f32_i32( s0 ). s1 = 0.
    IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = l3. s1 = 63. s0 = zcl_wasm_rt=>shr_s64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -1. s0 = zcl_wasm_rt=>xor32( iv_a = s0 iv_b = s1 ). rv = s0. RETURN.
    ELSE.
    ENDIF.
    s0 = l3. s1 = 63. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). p1 = s0.
  ENDDO.
  s0 = p1. rv = s0.
ENDFORM.

FORM f958 USING p0 TYPE i p1 TYPE i p2 TYPE i CHANGING rv TYPE i.
  DATA l3 TYPE i. DATA l4 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = 750.
  mem_st_i32( iv_addr = s0 + 32 iv_val = s1 ).
  DO 1 TIMES. " block
    s0 = p0. s0 = mem_ld_i32_8u( s0 ). s1 = 64. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s0 = mem_ld_i32( s0 + 56 ). l3 = s0. s0 = gv_g0. s1 = 32. s0 = s0 - s1. l4 = s0. gv_g0 = s0.
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        s0 = l3. s1 = l4. s2 = 8. s1 = s1 + s2.
        " WASI fd_fdstat_get: return filetype=regular
        PERFORM mem_st_i32_8 USING s1 4. s0 = 0. s1 = 65535. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). l3 = s0.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = 59. l3 = s0. s0 = l4. s0 = mem_ld_i32_8u( s0 + 8 ). s1 = 2.
        IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = l4. s0 = mem_ld_i32_8u( s0 + 16 ). s1 = 36. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = 1. lv_br = 1. EXIT. " br 1
      ENDDO.
      s1 = 1215576. s2 = l3. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = 0.
    ENDDO.
    s2 = l4. s3 = 32. s2 = s2 + s3. gv_g0 = s2.
    IF s1 <> 0. EXIT. ENDIF. " br_if 0
    s1 = p0. s2 = -1. mem_st_i32( iv_addr = s1 + 64 iv_val = s2 ).
  ENDDO.
  s1 = p0. s2 = p1. s3 = p2. PERFORM f665 USING s1 s2 s3 CHANGING s1. rv = s1.
ENDFORM.

FORM f959 USING p0 TYPE i p1 TYPE int8 p2 TYPE i.
  DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i.
  DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA lv_br TYPE i. s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l3 = s0. s0 = mem_ld_i32( s0 + 32 ). l4 = s0. s0 = l3. s0 = mem_ld_i32( s0 + 36 ). l5 = s0. s0 = l3. s1 = 40. s0 = s0 + s1.
  s0 = mem_ld_i32( s0 ). l3 = s0.
  IF s0 <> 0.
    s0 = p0. s1 = l3. s2 = p2.
    DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
    dispatch_t6( iv_idx = lv_ci_func p0 = s0 p1 = s1 ).
  ELSE.
  ENDIF.
  s0 = l4.
  IF s0 <> 0.
    DO 1 TIMES. " block
      s0 = l5.
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = l4. s0 = mem_ld_i32( s0 + 60 ). l3 = s0. s1 = 0.
      IF s0 <= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      DO. " loop
        s0 = l5. s0 = mem_ld_i32( s0 ). l7 = s0.
        IF s0 <> 0.
          s0 = p0. s1 = l7. s2 = p2.
          DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
          dispatch_t6( iv_idx = lv_ci_func p0 = s0 p1 = s1 ). s0 = l4. s0 = mem_ld_i32( s0 + 60 ). l3 = s0.
        ELSE.
        ENDIF.
        s0 = l5. s1 = 4. s0 = s0 + s1. l5 = s0. s0 = l6. s1 = 1. s0 = s0 + s1. l6 = s0. s1 = l3.
        IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
      ENDDO.
    ENDDO.
    s0 = p0. s1 = l4. s2 = p2.
    DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
    dispatch_t6( iv_idx = lv_ci_func p0 = s0 p1 = s1 ).
  ELSE.
  ENDIF.
ENDFORM.

