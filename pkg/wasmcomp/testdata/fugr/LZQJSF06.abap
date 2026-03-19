FORM f480 USING p0 TYPE i p1 TYPE i p2 TYPE i p3 TYPE i p4 TYPE i p5 TYPE i p6 TYPE int8 CHANGING rv TYPE int8.
  DATA l7 TYPE i. DATA l8 TYPE i. DATA l9 TYPE i. DATA l10 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i.
  DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i.
  DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i. DATA s36 TYPE i. DATA s37 TYPE i.
  DATA s38 TYPE i. DATA s39 TYPE i. DATA s40 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      s0 = p0. s0 = mem_ld_i32( s0 + 16 ). l7 = s0. s1 = 224. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). s1 = p6. s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = 0. s3 = p6. s4 = -4294967297.
      IF zcl_wasm_rt=>gt_u64( iv_a = s3 iv_b = s4 ) = abap_true. s3 = 1. ELSE. s3 = 0. ENDIF.
      IF s3 <> 0. s1 = s1. ELSE. s1 = s2. ENDIF.
      l8 = s1. s2 = -1640562687. s1 = s1 * s2. s2 = 1640562687. s1 = s1 - s2. l9 = s1. s2 = 32. s3 = l7. s4 = 212. s3 = s3 + s4. s3 = mem_ld_i32( s3 ). s2 = s2 - s3. s1 = zcl_wasm_rt=>shr_u32( iv_val = s1 iv_shift = s2 ). s2 = 2.
      s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s0 = mem_ld_i32( s0 ). l7 = s0.
      IF s0 <> 0.
        DO. " loop
          DO 1 TIMES. " block
            s0 = l7. s0 = mem_ld_i32( s0 + 20 ). s1 = l9.
            IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. EXIT. ENDIF. " br_if 0
            s0 = l7. s0 = mem_ld_i32( s0 + 44 ). s1 = l8.
            IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. EXIT. ENDIF. " br_if 0
            s0 = l7. s0 = mem_ld_i32( s0 + 32 ).
            IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
          ENDDO.
          s0 = l7. s0 = mem_ld_i32( s0 + 40 ). l7 = s0.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
        ENDDO.
      ELSE.
      ENDIF.
      s0 = p0. s1 = l8. s2 = 2. PERFORM f436 USING s0 s1 s2 CHANGING s0. l7 = s0.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = 25769803776. rv = s0. RETURN.
    ENDDO.
    s0 = l7. s1 = l7. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
  ENDDO.
  DO 1 TIMES. " block
    s0 = p0. s1 = l7. s2 = 12. PERFORM f408 USING s0 s1 s2 CHANGING s0. p6 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 25769803776.
    IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s1 = p0. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p6. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l7 = s0. s1 = 42. s0 = s0 + s1. s1 = p5. mem_st_i32_16( iv_addr = s0 iv_val = s1 ).
    s0 = l7. s1 = 41. s0 = s0 + s1. s1 = p4. mem_st_i32_8( iv_addr = s0 iv_val = s1 ). s0 = l7. s1 = 40. s0 = s0 + s1. s1 = p3. mem_st_i32_8( iv_addr = s0 iv_val = s1 ). s0 = l7. s1 = p1. mem_st_i32( iv_addr = s0 + 36 iv_val = s1 ).
    s0 = l7. s1 = p0. mem_st_i32( iv_addr = s0 + 32 iv_val = s1 ). s0 = l7. s1 = l7. s1 = mem_ld_i32_8u( s1 + 5 ). s2 = 239. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). s2 = p4. s3 = 2. s2 = s2 - s3. s3 = 4.
    IF zcl_wasm_rt=>lt_u32( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
    s3 = 4. s2 = zcl_wasm_rt=>shl32( iv_val = s2 iv_shift = s3 ). s1 = zcl_wasm_rt=>or32( iv_a = s1 iv_b = s2 ). mem_st_i32_8( iv_addr = s0 + 5 iv_val = s1 ). s0 = p0. s1 = p2. s2 = 1154101. s3 = p2.
    IF s3 <> 0. s1 = s1. ELSE. s1 = s2. ENDIF.
    p1 = s1. s2 = p1. PERFORM f768 USING s2 CHANGING s2. PERFORM f417 USING s0 s1 s2 CHANGING s0. p1 = s0. s0 = p0. s1 = p6. s2 = 48. s3 = p3. s3 = zcl_wasm_rt=>extend_u32( s3 ). s4 = 12884901888. s5 = 12884901888. s6 = 9985.
    PERFORM f37 USING s0 s1 s2 s3 s4 s5 s6 CHANGING s0. s0 = p0. s1 = p6. s2 = 56. s3 = p0. s4 = p1. s5 = 1. PERFORM f772 USING s3 s4 s5 CHANGING s3. l10 = s3. s4 = 12884901888. s5 = 12884901888. s6 = 9985.
    PERFORM f37 USING s0 s1 s2 s3 s4 s5 s6 CHANGING s0.
    DO 1 TIMES. " block
      s0 = l10. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
      IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = l10. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p2 = s0. s1 = p2. s1 = mem_ld_i32( s1 ). p2 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p2. s1 = 1.
      IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = l10. PERFORM f453 USING s0 s1.
    ENDDO.
    s0 = p1. s1 = 228.
    IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s0 = mem_ld_i32( s0 + 16 ). p2 = s0. s0 = mem_ld_i32( s0 + 56 ). s1 = p1. s2 = 2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s0 = mem_ld_i32( s0 ). p0 = s0. s1 = p0. s1 = mem_ld_i32( s1 ). p1 = s1.
    s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p1. s1 = 1.
    IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p2. s1 = p0. PERFORM f713 USING s0 s1.
  ENDDO.
  s0 = p6. rv = s0.
ENDFORM.

FORM f481 USING p0 TYPE i p1 TYPE int8 p2 TYPE int8 CHANGING rv TYPE i.
  DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE i. DATA l8 TYPE i. DATA l9 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i.
  DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i.
  DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      s0 = p1. s1 = -4294967296.
      IF zcl_wasm_rt=>lt_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = -1. l6 = s0.
      DO 1 TIMES. " block
        s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l5 = s0. s0 = mem_ld_i32( s0 + 16 ). l3 = s0. s1 = l3. s1 = mem_ld_i32( s1 + 24 ). s2 = -1. s1 = zcl_wasm_rt=>xor32( iv_a = s1 iv_b = s2 ). s2 = 2.
        s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s2 = -228. s1 = zcl_wasm_rt=>or32( iv_a = s1 iv_b = s2 ). s0 = s0 + s1. s0 = mem_ld_i32( s0 ). l4 = s0.
        IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = l3. s1 = 48. s0 = s0 + s1. l7 = s0.
        DO. " loop
          DO 1 TIMES. " block
            s0 = l7. s1 = l4. s2 = 1. s1 = s1 - s2. l4 = s1. s2 = 3. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. l8 = s0. s0 = mem_ld_i32( s0 ). l3 = s0. s0 = l8. s0 = mem_ld_i32( s0 + 4 ). s1 = 56.
            IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. EXIT. ENDIF. " br_if 0
            s0 = l3. s1 = 67108863. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). l4 = s0.
            IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
            lv_br = 2. EXIT. " br 2
          ENDDO.
        ENDDO.
        s0 = l3. s1 = 1073741823.
        IF zcl_wasm_rt=>gt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        s0 = l5. s0 = mem_ld_i32( s0 + 20 ). s1 = l4. s2 = 3. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). l9 = s0. s1 = -4294967296.
        s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = -30064771072.
        IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        s0 = l9. s0 = zcl_wasm_rt=>wrap_i64( s0 ). s0 = mem_ld_i32( s0 + 4 ). s1 = 2147483647. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      ENDDO.
      s0 = p0. s1 = p2. PERFORM f503 USING s0 s1 CHANGING s0. l3 = s0.
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p0. s1 = l3. s2 = 1. PERFORM f772 USING s0 s1 s2 CHANGING s0. p2 = s0.
      DO 1 TIMES. " block
        s0 = l3. s1 = 0.
        IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        DO 1 TIMES. " block
          s0 = p0. s1 = 16. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). s0 = mem_ld_i32( s0 + 56 ). s1 = l3. s2 = 2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s0 = mem_ld_i32( s0 ).
          s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 4 ). l9 = s0. s1 = -4611686018427387904. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = -9223372036854775808.
          IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          s1 = l9. s2 = 4611686014132420608. s1 = zcl_wasm_rt=>and64( iv_a = s1 iv_b = s2 ). s2 = 0.
          IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
          s2 = l9. s3 = -4611686018427387904.
          IF zcl_wasm_rt=>lt_u64( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
          s1 = zcl_wasm_rt=>or32( iv_a = s1 iv_b = s2 ). s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = l9. s1 = 4294967295. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 2147483648.
          IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = p0. s1 = 1149197. s2 = p2. s3 = 1149195. PERFORM f69 USING s0 s1 s2 s3 CHANGING s0. p2 = s0.
        ENDDO.
        s0 = l3. s1 = 228.
        IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = p0. s1 = 16. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). l4 = s0. s0 = mem_ld_i32( s0 + 56 ). s1 = l3. s2 = 2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s0 = mem_ld_i32( s0 ). l3 = s0. s1 = l3.
        s1 = mem_ld_i32( s1 ). l5 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l5. s1 = 1.
        IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = l4. s1 = l3. PERFORM f713 USING s0 s1.
      ENDDO.
      s0 = p2. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 25769803776.
      IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p0. s1 = p1. s2 = 56. s3 = p2. s4 = 12884901888. s5 = 12884901888. s6 = 9985. PERFORM f37 USING s0 s1 s2 s3 s4 s5 s6 CHANGING s0.
      DO 1 TIMES. " block
        s1 = p2. s2 = 32. s1 = zcl_wasm_rt=>shr_u64( iv_val = s1 iv_shift = s2 ). s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = -11.
        IF zcl_wasm_rt=>lt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0. EXIT. ENDIF. " br_if 0
        s1 = p2. s1 = zcl_wasm_rt=>wrap_i64( s1 ). l4 = s1. s2 = l4. s2 = mem_ld_i32( s2 ). l4 = s2. s3 = 1. s2 = s2 - s3. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = l4. s2 = 1.
        IF s1 > s2. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0. EXIT. ENDIF. " br_if 0
        s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s2 = p2. PERFORM f453 USING s1 s2.
      ENDDO.
      s1 = 0.
      IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
    ENDDO.
    s0 = 0. l6 = s0.
  ENDDO.
  s0 = l6. rv = s0.
ENDFORM.

FORM f482 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i.
  DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i.
  DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i. DATA s36 TYPE i.
  DATA s37 TYPE i. DATA s38 TYPE i. DATA s39 TYPE i. DATA s40 TYPE i. DATA s41 TYPE i. DATA s42 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l3 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    s0 = p1. s0 = mem_ld_i32( s0 ). l2 = s0. s1 = 131070.
    IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p0. s1 = 1138953. s2 = 0. PERFORM f1197 USING s0 s1 s2. s0 = -1. l5 = s0. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = l2. s1 = 1.
    IF zcl_wasm_rt=>le_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p0. s1 = 2. PERFORM f908 USING s0 s1. s0 = l3. s1 = -1. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = p0. s1 = l3. s2 = 12. s1 = s1 + s2. s2 = 4. PERFORM f1097 USING s0 s1 s2. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = p1. s0 = mem_ld_i32( s0 + 8 ). s1 = l2. s2 = 2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. l5 = s0. s1 = 4. s0 = s0 - s1. s0 = mem_ld_i32( s0 ). l4 = s0. s1 = -1.
    IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = l5. s1 = 8. s0 = s0 - s1. s0 = mem_ld_i32( s0 ). l4 = s0.
    ELSE.
    ENDIF.
    s0 = l2. s1 = 1. s0 = zcl_wasm_rt=>shr_u32( iv_val = s0 iv_shift = s1 ). l2 = s0. s0 = l4. s1 = 65535.
    IF zcl_wasm_rt=>le_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p0. s1 = 21. PERFORM f908 USING s0 s1. s0 = l3. s1 = l2. mem_st_i32_16( iv_addr = s0 + 12 iv_val = s1 ). s0 = p0. s1 = l3. s2 = 12. s1 = s1 + s2. s2 = 2. PERFORM f1097 USING s0 s1 s2. s0 = 0. l5 = s0. s0 = p1.
      s0 = mem_ld_i32( s0 ). s1 = 0.
      IF s0 <= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = 0. l2 = s0. s0 = 0. l4 = s0.
      DO. " loop
        s0 = l3. s1 = p1. s1 = mem_ld_i32( s1 + 8 ). s2 = l2. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). mem_st_i32_16( iv_addr = s0 + 12 iv_val = s1 ). s0 = p0. s1 = l3. s2 = 12. s1 = s1 + s2. s2 = 2. PERFORM f1097 USING s0 s1 s2. s0 = l3.
        s1 = -1. s2 = p1. s2 = mem_ld_i32( s2 + 8 ). s3 = l2. s2 = s2 + s3. s3 = 4. s2 = s2 + s3. s2 = mem_ld_i32( s2 ). s3 = 1. s2 = s2 - s3. l6 = s2. s3 = l6. s4 = -2.
        IF s3 = s4. s3 = 1. ELSE. s3 = 0. ENDIF.
        IF s3 <> 0. s1 = s1. ELSE. s1 = s2. ENDIF.
        mem_st_i32_16( iv_addr = s0 + 12 iv_val = s1 ). s0 = p0. s1 = l3. s2 = 12. s1 = s1 + s2. s2 = 2. PERFORM f1097 USING s0 s1 s2. s0 = l2. s1 = 8. s0 = s0 + s1. l2 = s0. s0 = l4. s1 = 2. s0 = s0 + s1. l4 = s0. s1 = p1.
        s1 = mem_ld_i32( s1 ).
        IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
      ENDDO.
      lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = p0. s1 = 22. PERFORM f908 USING s0 s1. s0 = l3. s1 = l2. mem_st_i32_16( iv_addr = s0 + 12 iv_val = s1 ). s0 = p0. s1 = l3. s2 = 12. s1 = s1 + s2. s2 = 2. PERFORM f1097 USING s0 s1 s2. s0 = 0. l5 = s0. s0 = p1.
    s0 = mem_ld_i32( s0 ). s1 = 0.
    IF s0 <= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = 0. l2 = s0. s0 = 0. l4 = s0.
    DO. " loop
      s0 = l3. s1 = p1. s1 = mem_ld_i32( s1 + 8 ). s2 = l2. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = p0. s1 = l3. s2 = 12. s1 = s1 + s2. s2 = 4. PERFORM f1097 USING s0 s1 s2. s0 = l3. s1 = p1.
      s1 = mem_ld_i32( s1 + 8 ). s2 = l2. s1 = s1 + s2. s2 = 4. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = p0. s1 = l3. s2 = 12. s1 = s1 + s2. s2 = 4.
      PERFORM f1097 USING s0 s1 s2. s0 = l2. s1 = 8. s0 = s0 + s1. l2 = s0. s0 = l4. s1 = 2. s0 = s0 + s1. l4 = s0. s1 = p1. s1 = mem_ld_i32( s1 ).
      IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
    ENDDO.
  ENDDO.
  s0 = l3. s1 = 16. s0 = s0 + s1. gv_g0 = s0. s0 = l5. rv = s0.
ENDFORM.

FORM f483 USING p0 TYPE i p1 TYPE i p2 TYPE i CHANGING rv TYPE i.
  DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE i. DATA l8 TYPE i. DATA l9 TYPE i. DATA l10 TYPE i. DATA l11 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i.
  DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i.
  DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA lv_br TYPE i. s0 = p0. s0 = mem_ld_i32( s0 + 12 ). l5 = s0. s1 = 2. s0 = zcl_wasm_rt=>shl32( iv_val = s0 iv_shift = s1 ). l4 = s0. s0 = -32.
  l6 = s0. s0 = l5. l3 = s0.
  DO 1 TIMES. " block
    DO. " loop
      s0 = l3.
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = l6. s1 = 32. s0 = s0 + s1. l6 = s0. s0 = l3. s1 = 1. s0 = s0 - s1. l3 = s0. s0 = l4. s1 = 4. s0 = s0 - s1. l4 = s0. s1 = p0. s1 = mem_ld_i32( s1 + 16 ). l11 = s1. s0 = s0 + s1. l7 = s0. s0 = mem_ld_i32( s0 ).
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
    ENDDO.
    s0 = p0. s1 = p0. s1 = mem_ld_i32( s1 + 8 ). s2 = l6. s1 = s1 - s2. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = l3. s1 = 1. s0 = s0 + s1. l10 = s0. s0 = l7. s0 = mem_ld_i32( s0 ). s0 = zcl_wasm_rt=>clz32( s0 ). l5 = s0.
    IF s0 <> 0.
      s0 = 32. s1 = l5. s0 = s0 - s1. l6 = s0. s0 = 0. l7 = s0. s0 = 0. l4 = s0. s0 = l3. s1 = 3.
      IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = l10. s1 = -4. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). l9 = s0. s0 = l11. l3 = s0.
        DO. " loop
          s0 = l3. s1 = l3. s1 = mem_ld_i32( s1 ). l8 = s1. s2 = l5. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s2 = l4. s3 = l6. s2 = zcl_wasm_rt=>shr_u32( iv_val = s2 iv_shift = s3 ).
          s1 = zcl_wasm_rt=>or32( iv_a = s1 iv_b = s2 ). mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l3. s1 = 4. s0 = s0 + s1. l4 = s0. s1 = l4. s1 = mem_ld_i32( s1 ). l4 = s1. s2 = l5. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ).
          s2 = l8. s3 = l6. s2 = zcl_wasm_rt=>shr_u32( iv_val = s2 iv_shift = s3 ). s1 = zcl_wasm_rt=>or32( iv_a = s1 iv_b = s2 ). mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l3. s1 = 8. s0 = s0 + s1. l8 = s0. s1 = l8.
          s1 = mem_ld_i32( s1 ). l8 = s1. s2 = l5. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s2 = l4. s3 = l6. s2 = zcl_wasm_rt=>shr_u32( iv_val = s2 iv_shift = s3 ). s1 = zcl_wasm_rt=>or32( iv_a = s1 iv_b = s2 ).
          mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l3. s1 = 12. s0 = s0 + s1. l4 = s0. s1 = l4. s1 = mem_ld_i32( s1 ). l4 = s1. s2 = l5. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s2 = l8. s3 = l6.
          s2 = zcl_wasm_rt=>shr_u32( iv_val = s2 iv_shift = s3 ). s1 = zcl_wasm_rt=>or32( iv_a = s1 iv_b = s2 ). mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l3. s1 = 16. s0 = s0 + s1. l3 = s0. s0 = l9. s1 = l7. s2 = 4. s1 = s1 + s2.
          l7 = s1.
          IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
        ENDDO.
      ELSE.
      ENDIF.
      s0 = l10. s1 = 3. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). l9 = s0.
      IF s0 <> 0.
        s0 = l11. s1 = l7. s2 = 2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. l3 = s0.
        DO. " loop
          s0 = l3. s1 = l4. s2 = l6. s1 = zcl_wasm_rt=>shr_u32( iv_val = s1 iv_shift = s2 ). s2 = l3. s2 = mem_ld_i32( s2 ). l4 = s2. s3 = l5. s2 = zcl_wasm_rt=>shl32( iv_val = s2 iv_shift = s3 ).
          s1 = zcl_wasm_rt=>or32( iv_a = s1 iv_b = s2 ). mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l3. s1 = 4. s0 = s0 + s1. l3 = s0. s0 = l9. s1 = 1. s0 = s0 - s1. l9 = s0.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
        ENDDO.
      ELSE.
      ENDIF.
      s0 = p0. s1 = p0. s1 = mem_ld_i32( s1 + 8 ). s2 = l5. s1 = s1 - s2. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ).
    ELSE.
    ENDIF.
    s0 = p0. s1 = p1. s2 = p2. s3 = l10. s4 = 0. PERFORM f137 USING s0 s1 s2 s3 s4 CHANGING s0. rv = s0. RETURN.
  ENDDO.
  s0 = p0. s1 = -2147483648. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = l5.
  IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = 0. rv = s0. RETURN.
  ELSE.
  ENDIF.
  s0 = p0. s0 = mem_ld_i32( s0 ). p1 = s0. s0 = mem_ld_i32( s0 ). s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s2 = 0. s3 = p1. s4 = 4. s3 = s3 + s4. s3 = mem_ld_i32( s3 ).
  DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
  s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). p1 = s0. s0 = p0. s1 = 0. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = p0. s1 = p1. mem_st_i32( iv_addr = s0 + 16 iv_val = s1 ). s0 = 0. rv = s0.
ENDFORM.

FORM f484 USING p0 TYPE i p1 TYPE int8 p2 TYPE i CHANGING rv TYPE int8.
  DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i.
  DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i.
  DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i. DATA s36 TYPE i. DATA s37 TYPE i. DATA s38 TYPE i.
  DATA s39 TYPE i. DATA s40 TYPE i. DATA s41 TYPE i. DATA s42 TYPE i. DATA s43 TYPE i. DATA s44 TYPE i. DATA s45 TYPE i. DATA s46 TYPE i. DATA s47 TYPE i. DATA s48 TYPE i. DATA s49 TYPE i. DATA s50 TYPE i. DATA s51 TYPE i. DATA s52 TYPE i.
  DATA s53 TYPE i. DATA s54 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    s0 = p0. s0 = mem_ld_i32( s0 + 16 ). l3 = s0. s1 = 16. s0 = s0 + s1. s1 = 24. s2 = l3. s2 = mem_ld_i32( s2 ).
    DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
    s0 = dispatch_t7( iv_idx = lv_ci_func p0 = s0 p1 = s1 ). l4 = s0.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = 25769803776. p1 = s0. s0 = p0. s0 = mem_ld_i32( s0 + 16 ). p2 = s0. s0 = mem_ld_i32_8u( s0 + 136 ).
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p2. s1 = 1. mem_st_i32_8( iv_addr = s0 + 136 iv_val = s1 ). s0 = p0. s1 = 1134898. s2 = 0. PERFORM f969 USING s0 s1 s2 CHANGING s0. s0 = p2. s1 = 0. mem_st_i32_8( iv_addr = s0 + 136 iv_val = s1 ). s0 = 25769803776.
      rv = s0. RETURN.
    ELSE.
    ENDIF.
    s0 = l4. s1 = 1. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s0 = mem_ld_i32( s0 + 216 ). l5 = s0. s0 = l4. s1 = 4. s0 = s0 + s1. l3 = s0. s1 = 0.
    zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 12 CHANGING cv_mem = mv_mem ). s0 = l3. s1 = -9223372036854775808. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 4 CHANGING cv_mem = mv_mem ). s0 = l3.
    s1 = l5. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l4. s0 = zcl_wasm_rt=>extend_u32( s0 ). s1 = -38654705664. s0 = zcl_wasm_rt=>or64( iv_a = s0 iv_b = s1 ). p1 = s0.
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          DO 1 TIMES. " block
            DO 1 TIMES. " block
              s0 = p2.
              CASE s0.
                WHEN 0. lv_br = 4. EXIT.
                WHEN 1. EXIT.
                WHEN 2. lv_br = 1. EXIT.
                WHEN 3. lv_br = 1. EXIT.
                WHEN 4. lv_br = 2. EXIT.
                WHEN OTHERS. lv_br = 3. EXIT.
              ENDCASE.
            ENDDO.
            s0 = l3. s1 = p0. s1 = mem_ld_i32( s1 + 220 ). s2 = p0. s3 = 224. s2 = s2 + s3. s2 = mem_ld_i32( s2 ). s3 = l3. s3 = mem_ld_i32( s3 ). s4 = 8. s3 = s3 + s4. s4 = 737. s5 = 0. PERFORM f351 USING s0 s1 s2 s3 s4 s5. s0 = p1.
            rv = s0. RETURN.
          ENDDO.
          s0 = p0. s1 = 224. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). l4 = s0. s0 = l3. s1 = 1. PERFORM f541 USING s0 s1 CHANGING s0. s0 = 536870912. s1 = 1. s2 = 28. s3 = l4. s4 = 5. s3 = zcl_wasm_rt=>shr_u32( iv_val = s3 iv_shift = s4 ).
          s4 = 63. s3 = zcl_wasm_rt=>and32( iv_a = s3 iv_b = s4 ). l4 = s3. s2 = s2 - s3. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s2 = l4. s3 = 63.
          IF s2 = s3. s2 = 1. ELSE. s2 = 0. ENDIF.
          IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
          l4 = s0. s0 = p2. s1 = 2.
          IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0.
            s0 = p0. s0 = mem_ld_i32( s0 + 224 ). p2 = s0. s1 = 8. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
            IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0.
              s0 = l3. s1 = 2. s2 = l4. s1 = s1 - s2. s2 = p0. s2 = mem_ld_i32( s2 + 220 ). s3 = p2. PERFORM f1135 USING s0 s1 s2 s3 CHANGING s0. s0 = p1. rv = s0. RETURN.
            ELSE.
            ENDIF.
            s0 = l3. s1 = 3. s2 = l4. s3 = p0. s3 = mem_ld_i32( s3 + 220 ). p0 = s3. s2 = s2 + s3. s1 = s1 - s2. s2 = p0. s3 = p2. PERFORM f1135 USING s0 s1 s2 s3 CHANGING s0. s0 = p1. rv = s0. RETURN.
          ELSE.
          ENDIF.
          s0 = l3. s1 = p0. s1 = mem_ld_i32( s1 + 220 ). p2 = s1. s2 = p2. s3 = p0. s3 = mem_ld_i32( s3 + 224 ). PERFORM f1135 USING s0 s1 s2 s3 CHANGING s0. s0 = l3. s1 = l3. s2 = -1. s3 = p0. s3 = mem_ld_i32( s3 + 220 ). s4 = p0.
          s4 = mem_ld_i32( s4 + 224 ). PERFORM f403 USING s0 s1 s2 s3 s4 CHANGING s0. s0 = l3. s1 = l4. s2 = p0. s2 = mem_ld_i32( s2 + 220 ). p2 = s2. s1 = s1 - s2. s2 = p2. s3 = p0. s3 = mem_ld_i32( s3 + 224 ).
          PERFORM f1135 USING s0 s1 s2 s3 CHANGING s0. s0 = p1. rv = s0. RETURN.
        ENDDO.
        s0 = l3. s1 = 1. PERFORM f541 USING s0 s1 CHANGING s0. s0 = l3. s1 = 1. s2 = p0. s2 = mem_ld_i32( s2 + 220 ). p2 = s2. s1 = s1 - s2. s2 = p2. s3 = p0. s4 = 224. s3 = s3 + s4. s3 = mem_ld_i32( s3 ).
        PERFORM f1135 USING s0 s1 s2 s3 CHANGING s0. s0 = p1. rv = s0. RETURN.
      ENDDO.
      RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
    ENDDO.
    s0 = l3. s1 = p0. s1 = mem_ld_i32( s1 + 220 ). s2 = p0. s3 = 224. s2 = s2 + s3. s2 = mem_ld_i32( s2 ). s3 = l3. s3 = mem_ld_i32( s3 ). s4 = 32. s3 = s3 + s4. s4 = 738. s5 = 0. PERFORM f351 USING s0 s1 s2 s3 s4 s5.
  ENDDO.
  s0 = p1. rv = s0.
ENDFORM.

FORM f485 USING p0 TYPE i p1 TYPE int8 p2 TYPE int8 CHANGING rv TYPE i.
  DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i.
  DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA lv_br TYPE i. s0 = 1137529. l5 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      s0 = p2. s1 = -4294967296.
      IF zcl_wasm_rt=>lt_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          s0 = p2. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l3 = s0. s0 = mem_ld_i32_16u( s0 + 6 ). l4 = s0. s1 = 13. s0 = s0 - s1.
          CASE s0.
            WHEN 0. lv_br = 1. EXIT.
            WHEN 1. lv_br = 2. EXIT.
            WHEN 2. lv_br = 2. EXIT.
            WHEN 3. lv_br = 1. EXIT.
            WHEN OTHERS. EXIT.
          ENDCASE.
        ENDDO.
        s0 = l4. s1 = 52. s0 = s0 - s1.
        CASE s0.
          WHEN 0. EXIT.
          WHEN 1. lv_br = 1. EXIT.
          WHEN 2. lv_br = 1. EXIT.
          WHEN 3. lv_br = 1. EXIT.
          WHEN 4. EXIT.
          WHEN OTHERS. lv_br = 1. EXIT.
        ENDCASE.
      ENDDO.
      s0 = l3. s1 = 40. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). l3 = s0.
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      DO 1 TIMES. " block
        s0 = l3. s0 = mem_ld_i32( s0 + 16 ). l4 = s0. s1 = l4. s1 = mem_ld_i32( s1 + 24 ). s2 = -1. s1 = zcl_wasm_rt=>xor32( iv_a = s1 iv_b = s2 ). s2 = 2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s2 = -856.
        s1 = zcl_wasm_rt=>or32( iv_a = s1 iv_b = s2 ). s0 = s0 + s1. s0 = mem_ld_i32( s0 ). l6 = s0.
        IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = l4. s1 = 48. s0 = s0 + s1. l4 = s0.
        DO. " loop
          s0 = l4. s1 = l6. s2 = 1. s1 = s1 - s2. l6 = s1. s2 = 3. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. l7 = s0. s0 = mem_ld_i32( s0 + 4 ). s1 = 213.
          IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0.
            s0 = l7. s0 = mem_ld_i32( s0 ). s1 = 67108863. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). l6 = s0.
            IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
            lv_br = 2. EXIT. " br 2
          ELSE.
          ENDIF.
        ENDDO.
        s0 = p1. s1 = -4294967296.
        IF zcl_wasm_rt=>lt_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        s0 = l3. s0 = mem_ld_i32( s0 + 20 ). s1 = l6. s2 = 3. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). p2 = s0. s1 = -4294967296.
        s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = -34359738368.
        IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        DO 1 TIMES. " block
          s0 = p2. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l3 = s0. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 4 ). p2 = s0. s1 = -4611686018427387905.
          IF zcl_wasm_rt=>gt_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0.
            s0 = l3. s0 = mem_ld_i32( s0 + 12 ). p0 = s0. lv_br = 1. EXIT. " br 1
          ELSE.
          ENDIF.
          s0 = p0. s1 = 16. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). p0 = s0. s0 = mem_ld_i32( s0 + 56 ). l4 = s0. s1 = p0. s1 = mem_ld_i32( s1 + 52 ). s2 = p2. s3 = 32. s2 = zcl_wasm_rt=>shr_u64( iv_val = s2 iv_shift = s3 ).
          s2 = zcl_wasm_rt=>wrap_i64( s2 ). s3 = p0. s3 = mem_ld_i32( s3 + 36 ). s4 = 1. s3 = s3 - s4. s2 = zcl_wasm_rt=>and32( iv_a = s2 iv_b = s3 ). s3 = 2. s2 = zcl_wasm_rt=>shl32( iv_val = s2 iv_shift = s3 ). s1 = s1 + s2.
          s1 = mem_ld_i32( s1 ). p0 = s1. s2 = 2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s0 = mem_ld_i32( s0 ). l5 = s0. s1 = l3.
          IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          DO. " loop
            s0 = p0.
            IF s0 <> 0.
              s0 = l3. s1 = l4. s2 = l5. s2 = mem_ld_i32( s2 + 12 ). p0 = s2. s3 = 2. s2 = zcl_wasm_rt=>shl32( iv_val = s2 iv_shift = s3 ). s1 = s1 + s2. s1 = mem_ld_i32( s1 ). l5 = s1.
              IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
              lv_br = 2. EXIT. " br 2
            ELSE.
            ENDIF.
          ENDDO.
          s0 = 1152235. s1 = 1148333. s2 = 2697. s3 = 1135303. PERFORM f1101 USING s0 s1 s2 s3.
          RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
        ENDDO.
        s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). s0 = mem_ld_i32( s0 + 16 ). l5 = s0. s1 = l5. s1 = mem_ld_i32( s1 + 24 ). s2 = p0. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). s2 = -1. s1 = zcl_wasm_rt=>xor32( iv_a = s1 iv_b = s2 ).
        s2 = 2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s0 = mem_ld_i32( s0 ). l3 = s0.
        IF s0 <> 0.
          s0 = l5. s1 = 48. s0 = s0 + s1. l4 = s0.
          DO. " loop
            s0 = 1. s1 = l4. s2 = l3. s3 = 1. s2 = s2 - s3. s3 = 3. s2 = zcl_wasm_rt=>shl32( iv_val = s2 iv_shift = s3 ). s1 = s1 + s2. l3 = s1. s1 = mem_ld_i32( s1 + 4 ). s2 = p0.
            IF s1 = s2. s1 = 1. ELSE. s1 = 0. ENDIF.
            IF s1 <> 0. lv_br = 4. EXIT. ENDIF. " br_if 4
            s0 = l3. s0 = mem_ld_i32( s0 ). s1 = 67108863. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). l3 = s0.
            IF s0 <> 0. EXIT. ENDIF. " br_if 0
          ENDDO.
        ELSE.
        ENDIF.
        s0 = 0. rv = s0. RETURN.
      ENDDO.
      s0 = 1147141. l5 = s0.
    ENDDO.
    s0 = p0. s1 = l5. s2 = 0. PERFORM f970 USING s0 s1 s2 CHANGING s0. s0 = -1.
  ENDDO.
  rv = s0.
ENDFORM.

FORM f486 USING p0 TYPE i p1 TYPE int8 p2 TYPE int8 p3 TYPE i p4 TYPE i p5 TYPE i CHANGING rv TYPE int8.
  DATA l6 TYPE i. DATA l7 TYPE i. DATA l8 TYPE i. DATA l9 TYPE i. DATA l10 TYPE i. DATA l11 TYPE i. DATA l12 TYPE i. DATA l13 TYPE i. DATA l14 TYPE i. DATA l15 TYPE i. DATA l16 TYPE i. DATA l17 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i.
  DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i.
  DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i.
  DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. l6 = s0. l14 = s0. s0 = l6. s1 = p1. s1 = zcl_wasm_rt=>wrap_i64( s1 ). l15 = s1. s1 = mem_ld_i32( s1 + 32 ). l8 = s1. s1 = mem_ld_i32( s1 + 16 ). l9 = s1.
  s2 = p3. s1 = s1 + s2. l16 = s1. s2 = 3. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s2 = 15. s1 = s1 + s2. s2 = -16. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). s0 = s0 - s1. l10 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    s0 = l9. s1 = 0.
    IF s0 <= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l9. s1 = 3. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). l11 = s0. s0 = l9. s1 = 4.
    IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = l9. s1 = -4. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). l17 = s0. s0 = 0. l6 = s0.
      DO. " loop
        s0 = l6. s1 = l10. s0 = s0 + s1. l12 = s0. s1 = l6. s2 = l8. s1 = s1 + s2. l13 = s1. s2 = 24. s1 = s1 + s2. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 0 ).
        zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ). s0 = l12. s1 = 8. s0 = s0 + s1. s1 = l13. s2 = 32. s1 = s1 + s2. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 0 ).
        zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ). s0 = l12. s1 = 16. s0 = s0 + s1. s1 = l13. s2 = 40. s1 = s1 + s2. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 0 ).
        zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ). s0 = l12. s1 = 24. s0 = s0 + s1. s1 = l13. s2 = 48. s1 = s1 + s2. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 0 ).
        zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ). s0 = l6. s1 = 32. s0 = s0 + s1. l6 = s0. s0 = l17. s1 = l7. s2 = 4. s1 = s1 + s2. l7 = s1.
        IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
      ENDDO.
    ELSE.
    ENDIF.
    s0 = l11.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l10. s1 = l7. s2 = 3. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). l7 = s1. s0 = s0 + s1. l6 = s0. s0 = l7. s1 = l8. s0 = s0 + s1. s1 = 24. s0 = s0 + s1. l7 = s0.
    DO. " loop
      s0 = l6. s1 = l7. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 0 ). zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ). s0 = l7. s1 = 8. s0 = s0 + s1. l7 = s0. s0 = l6. s1 = 8.
      s0 = s0 + s1. l6 = s0. s0 = l11. s1 = 1. s0 = s0 - s1. l11 = s0.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
    ENDDO.
  ENDDO.
  s0 = p3. s1 = 0.
  IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = l10. s1 = l9. s2 = 3. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s1 = p4. s2 = p3. s3 = 3. s2 = zcl_wasm_rt=>shl32( iv_val = s2 iv_shift = s3 ). PERFORM f216 USING s0 s1 s2 CHANGING s0.
  ELSE.
  ENDIF.
  s0 = p5. s1 = 1. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
  IF s0 <> 0.
    s0 = p1. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
    IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = l15. s1 = l15. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
    ELSE.
    ENDIF.
    s0 = p2. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
    IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p2. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p3 = s0. s1 = p3. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
    ELSE.
    ENDIF.
    s0 = p0. s1 = p1. s2 = p2. s3 = 1. PERFORM f199 USING s0 s1 s2 s3 CHANGING s0. p3 = s0. s0 = p0. s1 = l8. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 0 ). p1 = s1. s2 = p1. s3 = p2. s4 = p3.
    IF s4 <> 0. s2 = s2. ELSE. s2 = s3. ENDIF.
    s3 = l16. s4 = l10. s5 = 2. PERFORM f557 USING s0 s1 s2 s3 s4 s5 CHANGING s0. s1 = l14. gv_g0 = s1. rv = s0. RETURN.
  ELSE.
  ENDIF.
  s0 = p0. s1 = l8. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 0 ). s2 = l8. s2 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s2 + 8 ). s3 = 12884901888. s4 = l16. s5 = l10. s6 = 2.
  PERFORM f0 USING s0 s1 s2 s3 s4 s5 s6 CHANGING s0. s1 = l14. gv_g0 = s1. rv = s0.
ENDFORM.

FORM f487 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i CHANGING rv TYPE int8.
  DATA l4 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i.
  DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i.
  DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i. DATA s36 TYPE i. DATA s37 TYPE i. DATA s38 TYPE i. DATA s39 TYPE i. DATA s40 TYPE i.
  DATA s41 TYPE i. DATA s42 TYPE i. DATA s43 TYPE i. DATA s44 TYPE i. DATA s45 TYPE i. DATA s46 TYPE i. DATA s47 TYPE i. DATA s48 TYPE i. DATA s49 TYPE i. DATA s50 TYPE i. DATA s51 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 32.
  s0 = s0 - s1. p2 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      s0 = p1. s1 = -4294967297.
      IF zcl_wasm_rt=>le_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = p0. s1 = 1137529. s2 = 0. PERFORM f970 USING s0 s1 s2 CHANGING s0. lv_br = 1. EXIT. " br 1
      ELSE.
      ENDIF.
      s0 = p2. s1 = 24. s0 = s0 + s1. s1 = 0. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ). s0 = p2. s1 = 0.
      zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 16 CHANGING cv_mem = mv_mem ). s0 = p2. s1 = p0. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ).
      DO 1 TIMES. " block
        s0 = p0. s0 = mem_ld_i32( s0 + 16 ). p3 = s0. s1 = 16. s0 = s0 + s1. s1 = 17. s2 = p3. s2 = mem_ld_i32( s2 ).
        DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
        s0 = dispatch_t7( iv_idx = lv_ci_func p0 = s0 p1 = s1 ). p3 = s0.
        IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = p0. s0 = mem_ld_i32( s0 + 16 ). p3 = s0. s0 = mem_ld_i32_8u( s0 + 136 ).
          IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0.
            s0 = p3. s1 = 1. mem_st_i32_8( iv_addr = s0 + 136 iv_val = s1 ). s0 = p0. s1 = 1134898. s2 = 0. PERFORM f969 USING s0 s1 s2 CHANGING s0. s0 = p3. s1 = 0. mem_st_i32_8( iv_addr = s0 + 136 iv_val = s1 ).
          ELSE.
          ENDIF.
          s0 = p2. s1 = -1. mem_st_i32( iv_addr = s0 + 28 iv_val = s1 ). s0 = p2. s1 = 0. mem_st_i32( iv_addr = s0 + 20 iv_val = s1 ). s0 = p2. s1 = 0. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). lv_br = 1. EXIT. " br 1
        ELSE.
        ENDIF.
        s0 = p3. s1 = 0. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = p3. s1 = 0. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 4 CHANGING cv_mem = mv_mem ). s0 = p3. s1 = 1. mem_st_i32( iv_addr = s0 iv_val = s1 ).
        s0 = p2. s1 = p3. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ).
      ENDDO.
      DO 1 TIMES. " block
        s0 = p2. s1 = 8. s0 = s0 + s1. s1 = 1. s2 = 47. PERFORM f628 USING s0 s1 s2 CHANGING s0.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = p2. s1 = p2. s1 = mem_ld_i32( s1 + 16 ). p3 = s1. s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 + 16 iv_val = s1 ). s0 = p2. s0 = mem_ld_i32( s0 + 12 ). s1 = 16. s0 = s0 + s1. l4 = s0. s0 = p2. s0 = mem_ld_i32( s0 + 24 ).
        IF s0 <> 0.
          s0 = l4. s1 = p3. s2 = 1. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s1 = 47. mem_st_i32_16( iv_addr = s0 iv_val = s1 ). lv_br = 1. EXIT. " br 1
        ELSE.
        ENDIF.
        s0 = p3. s1 = l4. s0 = s0 + s1. s1 = 47. mem_st_i32_8( iv_addr = s0 iv_val = s1 ).
      ENDDO.
      DO 1 TIMES. " block
        s0 = p2. s1 = 8. s0 = s0 + s1. l4 = s0. s1 = p0. s2 = p1. s3 = 110. s4 = p1. s5 = 0. PERFORM f192 USING s1 s2 s3 s4 s5 CHANGING s1. PERFORM f751 USING s0 s1 CHANGING s0.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        DO 1 TIMES. " block
          s0 = p2. s0 = mem_ld_i32( s0 + 16 ). p3 = s0. s1 = p2. s1 = mem_ld_i32( s1 + 20 ).
          IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0.
            s0 = l4. s1 = p3. s2 = 1. s1 = s1 + s2. s2 = 47. PERFORM f628 USING s0 s1 s2 CHANGING s0.
            IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
            s0 = p2. s0 = mem_ld_i32( s0 + 16 ). p3 = s0.
          ELSE.
          ENDIF.
          s0 = p2. s1 = p3. s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 + 16 iv_val = s1 ). s0 = p2. s0 = mem_ld_i32( s0 + 12 ). s1 = 16. s0 = s0 + s1. l4 = s0. s0 = p2. s0 = mem_ld_i32( s0 + 24 ).
          IF s0 <> 0.
            s0 = l4. s1 = p3. s2 = 1. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s1 = 47. mem_st_i32_16( iv_addr = s0 iv_val = s1 ). lv_br = 1. EXIT. " br 1
          ELSE.
          ENDIF.
          s0 = p3. s1 = l4. s0 = s0 + s1. s1 = 47. mem_st_i32_8( iv_addr = s0 iv_val = s1 ).
        ENDDO.
        s0 = p2. s1 = 8. s0 = s0 + s1. p3 = s0. s1 = p0. s2 = p1. s3 = 111. s4 = p1. s5 = 0. PERFORM f192 USING s1 s2 s3 s4 s5 CHANGING s1. PERFORM f751 USING s0 s1 CHANGING s0.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = p3. PERFORM f676 USING s0 CHANGING s0. lv_br = 2. EXIT. " br 2
      ENDDO.
      s1 = p2. s1 = mem_ld_i32( s1 + 8 ). s1 = mem_ld_i32( s1 + 16 ). p0 = s1. s2 = 16. s1 = s1 + s2. s2 = p2. s2 = mem_ld_i32( s2 + 12 ). s3 = p0. s3 = mem_ld_i32( s3 + 4 ).
      DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
      dispatch_t6( iv_idx = lv_ci_func p0 = s1 p1 = s2 ).
    ENDDO.
    s1 = 25769803776.
  ENDDO.
  s2 = p2. s3 = 32. s2 = s2 + s3. gv_g0 = s2. rv = s1.
ENDFORM.

FORM f488 USING p0 TYPE i p1 TYPE i p2 TYPE i p3 TYPE i p4 TYPE i CHANGING rv TYPE i.
  DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE i. DATA l8 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i.
  DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        s0 = p2. s1 = p3.
        IF s0 <= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        DO. " loop
          s0 = p1. s1 = p3. s0 = s0 + s1. l5 = s0. s0 = mem_ld_i32_8u( s0 ). l6 = s0. s1 = 2. s0 = zcl_wasm_rt=>shl32( iv_val = s0 iv_shift = s1 ). l7 = s0. s1 = 1184560. s0 = s0 + s1. s0 = mem_ld_i32_8u( s0 ). l8 = s0.
          DO 1 TIMES. " block
            DO 1 TIMES. " block
              DO 1 TIMES. " block
                DO 1 TIMES. " block
                  s0 = l6. s1 = 184. s0 = s0 - s1.
                  CASE s0.
                    WHEN 0. lv_br = 1. EXIT.
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
                    WHEN 16. EXIT.
                    WHEN OTHERS. lv_br = 2. EXIT.
                  ENDCASE.
                ENDDO.
                s0 = p4. s1 = l5. s1 = mem_ld_i32( s1 + 1 ). mem_st_i32( iv_addr = s0 iv_val = s1 ). lv_br = 2. EXIT. " br 2
              ENDDO.
              s0 = l5. s0 = mem_ld_i32( s0 + 1 ). l5 = s0. s1 = 0.
              IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0. lv_br = 5. EXIT. ENDIF. " br_if 5
              s0 = p0. s0 = mem_ld_i32( s0 + 300 ). s1 = l5.
              IF s0 <= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0. lv_br = 5. EXIT. ENDIF. " br_if 5
              s0 = p0. s0 = mem_ld_i32( s0 + 292 ). s1 = l5. s2 = 20. s1 = s1 * s2. s0 = s0 + s1. l5 = s0. s0 = mem_ld_i32( s0 ). l6 = s0. s1 = 0.
              IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0. lv_br = 4. EXIT. ENDIF. " br_if 4
              s0 = l6.
              IF s0 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
              s0 = l5. s0 = mem_ld_i32( s0 + 16 ).
              IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
              s0 = 1149850. s1 = 1148333. s2 = 31657. s3 = 1146108. PERFORM f1101 USING s0 s1 s2 s3.
              RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
            ENDDO.
            s0 = l7. s1 = 1184563. s0 = s0 + s1. s0 = mem_ld_i32_8u( s0 ). l6 = s0. s1 = 28.
            IF zcl_wasm_rt=>gt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. EXIT. ENDIF. " br_if 0
            s0 = 1. s1 = l6. s0 = zcl_wasm_rt=>shl32( iv_val = s0 iv_shift = s1 ). l6 = s0. s1 = 58720256. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
            IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0.
              s0 = l6. s1 = 201326592. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
              IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0.
                s0 = l6. s1 = 272629760. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
                IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
                IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
                s0 = l5. s0 = mem_ld_i32( s0 + 1 ). l5 = s0. s1 = 0.
                IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                IF s0 <> 0. lv_br = 6. EXIT. ENDIF. " br_if 6
                s0 = p0. s0 = mem_ld_i32( s0 + 300 ). s1 = l5.
                IF s0 <= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                IF s0 <> 0. lv_br = 6. EXIT. ENDIF. " br_if 6
                s0 = p0. s0 = mem_ld_i32( s0 + 292 ). s1 = l5. s2 = 20. s1 = s1 * s2. s0 = s0 + s1. l5 = s0. s1 = l5. s1 = mem_ld_i32( s1 ). l5 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l5. s1 = 0.
                IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
                lv_br = 5. EXIT. " br 5
              ELSE.
              ENDIF.
              s0 = l5. s0 = mem_ld_i32( s0 + 5 ). l6 = s0. s1 = 0.
              IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0. lv_br = 5. EXIT. ENDIF. " br_if 5
              s0 = p0. s0 = mem_ld_i32( s0 + 300 ). s1 = l6.
              IF s0 <= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0. lv_br = 5. EXIT. ENDIF. " br_if 5
              s0 = p0. s0 = mem_ld_i32( s0 + 292 ). s1 = l6. s2 = 20. s1 = s1 * s2. s0 = s0 + s1. l6 = s0. s1 = l6. s1 = mem_ld_i32( s1 ). l6 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l6. s1 = 0.
              IF s0 <= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0. lv_br = 4. EXIT. ENDIF. " br_if 4
            ELSE.
            ENDIF.
            s0 = l5. s0 = mem_ld_i32( s0 + 1 ). l5 = s0. s1 = 228.
            IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. EXIT. ENDIF. " br_if 0
            s0 = p0. s0 = mem_ld_i32( s0 ). s0 = mem_ld_i32( s0 + 16 ). l6 = s0. s0 = mem_ld_i32( s0 + 56 ). s1 = l5. s2 = 2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s0 = mem_ld_i32( s0 ). l5 = s0. s1 = l5.
            s1 = mem_ld_i32( s1 ). l7 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l7. s1 = 1.
            IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. EXIT. ENDIF. " br_if 0
            s0 = l6. s1 = l5. PERFORM f713 USING s0 s1.
          ENDDO.
          s0 = p3. s1 = l8. s0 = s0 + s1. p3 = s0. s1 = p2.
          IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
        ENDDO.
      ENDDO.
      s0 = p3. rv = s0. RETURN.
    ENDDO.
    s0 = 1151974. s1 = 1148333. s2 = 21777. s3 = 1142627. PERFORM f1101 USING s0 s1 s2 s3.
    RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
  ENDDO.
  s0 = 1136521. s1 = 1148333. s2 = 21774. s3 = 1142627. PERFORM f1101 USING s0 s1 s2 s3.
  RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
ENDFORM.

FORM f489 USING p0 TYPE int8 p1 TYPE i.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i.
  DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    s0 = p0. s1 = 4294967296.
    IF zcl_wasm_rt=>lt_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p1. l2 = s0. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = p1. s1 = 8. s0 = s0 - s1. l2 = s0. s1 = p0. s2 = p0. s3 = 100000000. s2 = zcl_wasm_rt=>div_u64( iv_a = s2 iv_b = s3 ). p0 = s2. s3 = 4194967296. s2 = s2 * s3. s1 = s1 + s2. s1 = zcl_wasm_rt=>wrap_i64( s1 ). l3 = s1. s2 = 10000.
    s1 = zcl_wasm_rt=>div_u32( iv_a = s1 iv_b = s2 ). l4 = s1. s2 = 10000. s1 = zcl_wasm_rt=>rem_u32( iv_a = s1 iv_b = s2 ). l5 = s1. s2 = 100. s1 = zcl_wasm_rt=>div_u32( iv_a = s1 iv_b = s2 ). l6 = s1. s2 = 1.
    s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s2 = 1091720. s1 = s1 + s2. s1 = mem_ld_i32_16u( s1 ). mem_st_i32_16( iv_addr = s0 iv_val = s1 ). s0 = p1. s1 = 4. s0 = s0 - s1. s1 = l3. s2 = l4. s3 = 10000. s2 = s2 * s3.
    s1 = s1 - s2. l3 = s1. s2 = 65535. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). s2 = 100. s1 = zcl_wasm_rt=>div_u32( iv_a = s1 iv_b = s2 ). l4 = s1. s2 = 1. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s2 = 1091720.
    s1 = s1 + s2. s1 = mem_ld_i32_16u( s1 ). mem_st_i32_16( iv_addr = s0 iv_val = s1 ). s0 = p1. s1 = 6. s0 = s0 - s1. s1 = l5. s2 = l6. s3 = 100. s2 = s2 * s3. s1 = s1 - s2. s2 = 65535. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ).
    s2 = 1. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s2 = 1091720. s1 = s1 + s2. s1 = mem_ld_i32_16u( s1 ). mem_st_i32_16( iv_addr = s0 iv_val = s1 ). s0 = p1. s1 = 2. s0 = s0 - s1. s1 = l3. s2 = l4. s3 = 100. s2 = s2 * s3.
    s1 = s1 - s2. s2 = 65535. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). s2 = 1. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s2 = 1091720. s1 = s1 + s2. s1 = mem_ld_i32_16u( s1 ). mem_st_i32_16( iv_addr = s0 iv_val = s1 ).
  ENDDO.
  DO 1 TIMES. " block
    s0 = p0. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p1 = s0. s1 = 10000.
    IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p1. l3 = s0. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = l2. s1 = 4. s0 = s0 - s1. l2 = s0.
    DO. " loop
      s0 = l2. s1 = p1. s2 = 10000. s1 = zcl_wasm_rt=>div_u32( iv_a = s1 iv_b = s2 ). l3 = s1. s2 = -10000. s1 = s1 * s2. s2 = p1. s1 = s1 + s2. l4 = s1. s2 = 100. s1 = zcl_wasm_rt=>div_u32( iv_a = s1 iv_b = s2 ). l5 = s1. s2 = 1.
      s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s2 = 1091720. s1 = s1 + s2. s1 = mem_ld_i32_16u( s1 ). mem_st_i32_16( iv_addr = s0 iv_val = s1 ). s0 = l2. s1 = 2. s0 = s0 + s1. s1 = l4. s2 = l5. s3 = 100. s2 = s2 * s3.
      s1 = s1 - s2. s2 = 1. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s2 = 1091720. s1 = s1 + s2. s1 = mem_ld_i32_16u( s1 ). mem_st_i32_16( iv_addr = s0 iv_val = s1 ). s0 = l2. s1 = 4. s0 = s0 - s1. l2 = s0. s0 = p1.
      s1 = 99999999.
      IF zcl_wasm_rt=>gt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      s1 = l3. p1 = s1.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
    ENDDO.
    s0 = l2. s1 = 4. s0 = s0 + s1. l2 = s0.
  ENDDO.
  DO 1 TIMES. " block
    s0 = l3. s1 = 99.
    IF zcl_wasm_rt=>le_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = l3. p1 = s0. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = l2. s1 = 2. s0 = s0 - s1. l2 = s0. s1 = l3. s2 = l3. s3 = 65535. s2 = zcl_wasm_rt=>and32( iv_a = s2 iv_b = s3 ). s3 = 100. s2 = zcl_wasm_rt=>div_u32( iv_a = s2 iv_b = s3 ). p1 = s2. s3 = 100. s2 = s2 * s3. s1 = s1 - s2. s2 = 65535.
    s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). s2 = 1. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s2 = 1091720. s1 = s1 + s2. s1 = mem_ld_i32_16u( s1 ). mem_st_i32_16( iv_addr = s0 iv_val = s1 ).
  ENDDO.
  s0 = p1. s1 = 9.
  IF zcl_wasm_rt=>le_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = l2. s1 = 1. s0 = s0 - s1. s1 = p1. s2 = 48. s1 = zcl_wasm_rt=>or32( iv_a = s1 iv_b = s2 ). mem_st_i32_8( iv_addr = s0 iv_val = s1 ).
    RETURN.
  ELSE.
  ENDIF.
  s0 = l2. s1 = 2. s0 = s0 - s1. s1 = p1. s2 = 1. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s2 = 1091720. s1 = s1 + s2. s1 = mem_ld_i32_16u( s1 ). mem_st_i32_16( iv_addr = s0 iv_val = s1 ).
ENDFORM.

FORM f490 USING p0 TYPE i p1 TYPE i p2 TYPE i p3 TYPE i CHANGING rv TYPE i.
  DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i.
  DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i.
  DATA lv_br TYPE i.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        s0 = p3. s1 = 7. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). l4 = s0. s1 = 5.
        IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = p2. s1 = 1073741823.
        IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = p3. s1 = 3. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
        IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = p1. s1 = 1.
        IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        s1 = l4. s2 = 2.
        IF s1 = s2. s1 = 1. ELSE. s1 = 0. ENDIF.
        s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = p1.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        s0 = l4. s1 = 3.
        IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      ENDDO.
      s0 = 20. p3 = s0. s0 = 2147483646. p2 = s0. s0 = p0. s0 = mem_ld_i32( s0 + 12 ).
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p0. s0 = mem_ld_i32( s0 ). l4 = s0. s0 = mem_ld_i32( s0 ). s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s2 = 0. s3 = l4. s4 = 4. s3 = s3 + s4. s3 = mem_ld_i32( s3 ).
      DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
      s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). l4 = s0. s0 = p0. s1 = 0. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = p0. s1 = l4. mem_st_i32( iv_addr = s0 + 16 iv_val = s1 ). lv_br = 1. EXIT. " br 1
    ENDDO.
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        s0 = p2. s1 = 31. s0 = s0 + s1. l6 = s0. s1 = 5. s0 = zcl_wasm_rt=>shr_u32( iv_val = s0 iv_shift = s1 ). l5 = s0. s1 = p0. s1 = mem_ld_i32( s1 + 12 ).
        IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = p0. s0 = mem_ld_i32( s0 + 16 ). l4 = s0. lv_br = 1. EXIT. " br 1
        ELSE.
        ENDIF.
        s0 = p0. s0 = mem_ld_i32( s0 ). l4 = s0. s0 = mem_ld_i32( s0 ). s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s2 = l5. s3 = 2. s2 = zcl_wasm_rt=>shl32( iv_val = s2 iv_shift = s3 ). s3 = l4. s4 = 4. s3 = s3 + s4. s3 = mem_ld_i32( s3 ).
        DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
        s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). l4 = s0.
        IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
        s1 = l6. s2 = 32.
        IF zcl_wasm_rt=>ge_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
        s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        s0 = p0. s1 = l5. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = p0. s1 = l4. mem_st_i32( iv_addr = s0 + 16 iv_val = s1 ).
      ENDDO.
      s0 = l4. s1 = -1. s2 = 32. s3 = 0. s4 = p2. s3 = s3 - s4. p2 = s3. s4 = 31. s3 = zcl_wasm_rt=>and32( iv_a = s3 iv_b = s4 ). l7 = s3. s2 = s2 - s3. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s2 = -1.
      s1 = zcl_wasm_rt=>xor32( iv_a = s1 iv_b = s2 ). s2 = p2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s2 = -1. s3 = l7.
      IF s3 <> 0. s1 = s1. ELSE. s1 = s2. ENDIF.
      mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l6. s1 = 64.
      IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = l4. s1 = 4. s0 = s0 + s1. s1 = 255. s2 = 2. s3 = l5. s4 = l5. s5 = 2.
        IF zcl_wasm_rt=>le_u32( iv_a = s4 iv_b = s5 ) = abap_true. s4 = 1. ELSE. s4 = 0. ENDIF.
        IF s4 <> 0. s2 = s2. ELSE. s2 = s3. ENDIF.
        s3 = 2. s2 = zcl_wasm_rt=>shl32( iv_val = s2 iv_shift = s3 ). s3 = 4. s2 = s2 - s3. PERFORM f514 USING s0 s1 s2 CHANGING s0.
      ELSE.
      ENDIF.
      s0 = 536870912. s1 = 1. s2 = 28. s3 = p3. s4 = 5. s3 = zcl_wasm_rt=>shr_u32( iv_val = s3 iv_shift = s4 ). s4 = 63. s3 = zcl_wasm_rt=>and32( iv_a = s3 iv_b = s4 ). p2 = s3. s2 = s2 - s3.
      s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s2 = p2. s3 = 63.
      IF s2 = s3. s2 = 1. ELSE. s2 = 0. ENDIF.
      IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
      p2 = s0. s0 = 20. p3 = s0. lv_br = 1. EXIT. " br 1
    ENDDO.
    s0 = 32. p3 = s0. s0 = 2147483647. p2 = s0. s0 = p0. s0 = mem_ld_i32( s0 + 12 ).
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = 0. p1 = s0. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = 0. p1 = s0. s0 = p0. s0 = mem_ld_i32( s0 ). l4 = s0. s0 = mem_ld_i32( s0 ). s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s2 = 0. s3 = l4. s4 = 4. s3 = s3 + s4. s3 = mem_ld_i32( s3 ).
    DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
    s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). l4 = s0. s0 = p0. s1 = 0. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = p0. s1 = l4. mem_st_i32( iv_addr = s0 + 16 iv_val = s1 ).
  ENDDO.
  s0 = p0. s1 = p1. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = p0. s1 = p2. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = p3. rv = s0.
ENDFORM.

FORM f491 USING p0 TYPE f CHANGING rv TYPE f.
  DATA l1 TYPE i. DATA l2 TYPE int8. DATA l3 TYPE f. DATA l4 TYPE f. DATA l5 TYPE f. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i.
  DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i.
  DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i. DATA s36 TYPE i.
  DATA s37 TYPE i. DATA s38 TYPE i. DATA s39 TYPE i. DATA s40 TYPE i. DATA s41 TYPE i. DATA s42 TYPE i. DATA s43 TYPE i. DATA s44 TYPE i. DATA s45 TYPE i. DATA s46 TYPE i. DATA s47 TYPE i. DATA s48 TYPE i. DATA s49 TYPE i. DATA s50 TYPE i.
  DATA s51 TYPE i. DATA s52 TYPE i. DATA s53 TYPE i. DATA s54 TYPE i. DATA s55 TYPE i. DATA s56 TYPE i. DATA s57 TYPE i. DATA s58 TYPE i. DATA s59 TYPE i. DATA s60 TYPE i. DATA s61 TYPE i. DATA s62 TYPE i. DATA s63 TYPE i. DATA s64 TYPE i.
  DATA s65 TYPE i. DATA s66 TYPE i. DATA s67 TYPE i. DATA s68 TYPE i. DATA s69 TYPE i. DATA s70 TYPE i. DATA s71 TYPE i. DATA s72 TYPE i. DATA s73 TYPE i. DATA s74 TYPE i. DATA s75 TYPE i. DATA s76 TYPE i. DATA s77 TYPE i. DATA s78 TYPE i.
  DATA s79 TYPE i. DATA s80 TYPE i. DATA lv_br TYPE i. s0 = p0. s0 = zcl_wasm_rt=>reinterpret_f64_i64( s0 ). l2 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = 2147483647.
  s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). l1 = s0. s1 = 1072693248.
  IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = l2. s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = l1. s2 = 1072693248. s1 = s1 - s2. s0 = zcl_wasm_rt=>or32( iv_a = s0 iv_b = s1 ).
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p0. s1 = '1.570796'. s0 = s0 * s1. s1 = '0.000000'. s0 = s0 + s1. rv = s0. RETURN.
    ELSE.
    ENDIF.
    s0 = '0.000000'. s1 = p0. s2 = p0. s1 = s1 - s2. s0 = s0 / s1. rv = s0. RETURN.
  ELSE.
  ENDIF.
  DO 1 TIMES. " block
    s0 = l1. s1 = 1071644671.
    IF zcl_wasm_rt=>le_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = l1. s1 = -1048576. s0 = s0 + s1. s1 = 1044381696.
      IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p0. s1 = p0. s2 = p0. s1 = s1 * s2. l3 = s1. s2 = l3. s3 = l3. s4 = l3. s5 = l3. s6 = l3. s7 = '0.000035'. s6 = s6 * s7. s7 = '0.000792'. s6 = s6 + s7. s5 = s5 * s6. s6 = '-0.040056'. s5 = s5 + s6. s4 = s4 * s5. s5 = '0.201213'.
      s4 = s4 + s5. s3 = s3 * s4. s4 = '-0.325566'. s3 = s3 + s4. s2 = s2 * s3. s3 = '0.166667'. s2 = s2 + s3. s1 = s1 * s2. s2 = l3. s3 = l3. s4 = l3. s5 = l3. s6 = '0.077038'. s5 = s5 * s6. s6 = '-0.688284'. s5 = s5 + s6. s4 = s4 * s5.
      s5 = '2.020946'. s4 = s4 + s5. s3 = s3 * s4. s4 = '-2.403395'. s3 = s3 + s4. s2 = s2 * s3. s3 = '1.000000'. s2 = s2 + s3. s1 = s1 / s2. s0 = s0 * s1. s1 = p0. s0 = s0 + s1. rv = s0. RETURN.
    ELSE.
    ENDIF.
    s0 = '1.000000'. s1 = p0. s1 = abs( s1 ). s0 = s0 - s1. s1 = '0.500000'. s0 = s0 * s1. p0 = s0. s1 = p0. s2 = p0. s3 = p0. s4 = p0. s5 = p0. s6 = '0.000035'. s5 = s5 * s6. s6 = '0.000792'. s5 = s5 + s6. s4 = s4 * s5. s5 = '-0.040056'.
    s4 = s4 + s5. s3 = s3 * s4. s4 = '0.201213'. s3 = s3 + s4. s2 = s2 * s3. s3 = '-0.325566'. s2 = s2 + s3. s1 = s1 * s2. s2 = '0.166667'. s1 = s1 + s2. s0 = s0 * s1. s1 = p0. s2 = p0. s3 = p0. s4 = p0. s5 = '0.077038'. s4 = s4 * s5.
    s5 = '-0.688284'. s4 = s4 + s5. s3 = s3 * s4. s4 = '2.020946'. s3 = s3 + s4. s2 = s2 * s3. s3 = '-2.403395'. s2 = s2 + s3. s1 = s1 * s2. s2 = '1.000000'. s1 = s1 + s2. s0 = s0 / s1. l5 = s0. s0 = p0. s0 = sqrt( s0 ). l3 = s0.
    DO 1 TIMES. " block
      s0 = l1. s1 = 1072640819.
      IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = '1.570796'. s1 = l3. s2 = l5. s1 = s1 * s2. s2 = l3. s1 = s1 + s2. p0 = s1. s2 = p0. s1 = s1 + s2. s2 = '-0.000000'. s1 = s1 + s2. s0 = s0 - s1. lv_br = 1. EXIT. " br 1
      ELSE.
      ENDIF.
      s1 = '0.785398'. s2 = l3. s2 = zcl_wasm_rt=>reinterpret_f64_i64( s2 ). s3 = -4294967296. s2 = zcl_wasm_rt=>and64( iv_a = s2 iv_b = s3 ). s2 = zcl_wasm_rt=>reinterpret_i64_f64( s2 ). l4 = s2. s3 = l4. s2 = s2 + s3. s1 = s1 - s2.
      s2 = l3. s3 = l3. s2 = s2 + s3. s3 = l5. s2 = s2 * s3. s3 = '0.000000'. s4 = p0. s5 = l4. s6 = l4. s5 = s5 * s6. s4 = s4 - s5. s5 = l3. s6 = l4. s5 = s5 + s6. s4 = s4 / s5. p0 = s4. s5 = p0. s4 = s4 + s5. s3 = s3 - s4. s2 = s2 - s3.
      s1 = s1 - s2. s2 = '0.785398'. s1 = s1 + s2.
    ENDDO.
    p0 = s1. s1 = - s1. s2 = p0. s3 = l2. s4 = 0.
    IF s3 < s4. s3 = 1. ELSE. s3 = 0. ENDIF.
    IF s3 <> 0. s1 = s1. ELSE. s1 = s2. ENDIF.
    p0 = s1.
  ENDDO.
  s1 = p0. rv = s1.
ENDFORM.

FORM f492 USING p0 TYPE i p1 TYPE i p2 TYPE int8 CHANGING rv TYPE i.
  DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i.
  DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i.
  DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      s0 = p2. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = -30064771072.
      IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      DO 1 TIMES. " block
        s0 = p2. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l3 = s0. s0 = mem_ld_i32( s0 + 4 ). s1 = 2147483647. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
        IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = p1. s0 = mem_ld_i32( s0 ). s1 = 1.
        IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        s0 = p1. s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s1 = mem_ld_i32( s1 + 12 ).
        DATA(lv_ci_func) = mt_tab0[ s1 + 1 ]. " call_indirect
        s0 = dispatch_t3( iv_idx = lv_ci_func p0 = s0 ). p0 = s0. s0 = p1. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 4 ). p2 = s0. s1 = 2147483648. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 0.
        IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = p0. s1 = l3. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 4 ). l7 = s1. s1 = zcl_wasm_rt=>wrap_i64( s1 ). l4 = s1. s2 = p2. s2 = zcl_wasm_rt=>wrap_i64( s2 ). l5 = s2. s1 = s1 + s2. s2 = 1.
          s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s2 = 16. s1 = s1 + s2.
          IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
          s0 = l7. s1 = 2147483648. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 0.
          IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
          s0 = l7. s1 = 2147483647. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ).
          IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          s0 = p1. s1 = 16. s0 = s0 + s1. l4 = s0. s0 = l3. s1 = 16. s0 = s0 + s1. l5 = s0. s0 = 0. p0 = s0.
          DO. " loop
            s0 = 1. l6 = s0. s0 = l4. s1 = p2. s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = 1. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s1 = p0. s2 = l5. s1 = s1 + s2. s1 = mem_ld_i32_8u( s1 ).
            mem_st_i32_16( iv_addr = s0 iv_val = s1 ). s0 = p1. s1 = p2. s2 = 1. s1 = s1 + s2. s2 = 2147483647. s1 = zcl_wasm_rt=>and64( iv_a = s1 iv_b = s2 ). s2 = p2. s3 = -2147483648. s2 = zcl_wasm_rt=>and64( iv_a = s2 iv_b = s3 ).
            s1 = zcl_wasm_rt=>or64( iv_a = s1 iv_b = s2 ). p2 = s1. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 4 CHANGING cv_mem = mv_mem ). s0 = p0. s1 = 1. s0 = s0 + s1. p0 = s0. s1 = l3. s1 = mem_ld_i32( s1 + 4 ).
            s2 = 2147483647. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ).
            IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. EXIT. ENDIF. " br_if 0
          ENDDO.
          lv_br = 2. EXIT. " br 2
        ELSE.
        ENDIF.
        s0 = l3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 4 ). l7 = s0. s1 = 2147483648. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 0.
        IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        s0 = p0. s1 = p2. s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = 2147483647. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). l4 = s1. s2 = l7. s2 = zcl_wasm_rt=>wrap_i64( s2 ). s3 = 2147483647.
        s2 = zcl_wasm_rt=>and32( iv_a = s2 iv_b = s3 ). l5 = s2. s1 = s1 + s2. s2 = 17. s1 = s1 + s2.
        IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        s0 = p1. s1 = 16. s0 = s0 + s1. p0 = s0. s1 = l4. s0 = s0 + s1. s1 = l3. s2 = 16. s1 = s1 + s2. s2 = l5. PERFORM f216 USING s0 s1 s2 CHANGING s0. s0 = p1. s1 = p1. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 4 ).
        p2 = s1. s2 = l3. s2 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s2 + 4 ). s1 = s1 + s2. s2 = 2147483647. s1 = zcl_wasm_rt=>and64( iv_a = s1 iv_b = s2 ). l7 = s1. s2 = p2. s3 = -2147483648.
        s2 = zcl_wasm_rt=>and64( iv_a = s2 iv_b = s3 ). s1 = zcl_wasm_rt=>or64( iv_a = s1 iv_b = s2 ). zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 4 CHANGING cv_mem = mv_mem ). s0 = p0. s1 = l7.
        s1 = zcl_wasm_rt=>wrap_i64( s1 ). s0 = s0 + s1. s1 = 0. mem_st_i32_8( iv_addr = s0 iv_val = s1 ).
      ENDDO.
      s0 = 1. l6 = s0.
    ENDDO.
    s0 = l6. rv = s0. RETURN.
  ENDDO.
  s0 = p1. s1 = l5. s2 = 2147483647. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). s2 = 1. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s1 = 16. s0 = s0 + s1. s1 = l3. s2 = 16. s1 = s1 + s2. s2 = l4. s3 = 1.
  s2 = zcl_wasm_rt=>shl32( iv_val = s2 iv_shift = s3 ). PERFORM f216 USING s0 s1 s2 CHANGING s0. s0 = p1. s1 = p1. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 4 ). p2 = s1. s2 = l3.
  s2 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s2 + 4 ). s1 = s1 + s2. s2 = 2147483647. s1 = zcl_wasm_rt=>and64( iv_a = s1 iv_b = s2 ). s2 = p2. s3 = -2147483648. s2 = zcl_wasm_rt=>and64( iv_a = s2 iv_b = s3 ).
  s1 = zcl_wasm_rt=>or64( iv_a = s1 iv_b = s2 ). zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 4 CHANGING cv_mem = mv_mem ). s0 = 1. rv = s0.
ENDFORM.

FORM f493 USING p0 TYPE i p1 TYPE i p2 TYPE i CHANGING rv TYPE i.
  DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE i. DATA l8 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i.
  DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i.
  DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i.
  DATA s36 TYPE i. DATA s37 TYPE i. DATA s38 TYPE i. DATA s39 TYPE i. DATA s40 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l3 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    s0 = p0. s1 = p1. s2 = 1. PERFORM f772 USING s0 s1 s2 CHANGING s0. l8 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 25769803776.
    IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          s0 = p0. s1 = l3. s2 = 12. s1 = s1 + s2. s2 = l8. s3 = 0. PERFORM f184 USING s0 s1 s2 s3 CHANGING s0. l5 = s0.
          IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = p0. s1 = 16. s0 = s0 + s1. p1 = s0. s0 = p0. s0 = mem_ld_i32( s0 + 16 ). l4 = s0. s1 = 16. s0 = s0 + s1. s1 = p2. PERFORM f768 USING s1 CHANGING s1. l7 = s1. s2 = l3. s2 = mem_ld_i32( s2 + 12 ). s1 = s1 + s2. s2 = 1.
          s1 = s1 + s2. s2 = l4. s2 = mem_ld_i32( s2 ).
          DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
          s0 = dispatch_t7( iv_idx = lv_ci_func p0 = s0 p1 = s1 ). l4 = s0.
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          s0 = p1. s0 = mem_ld_i32( s0 ). p2 = s0. s0 = mem_ld_i32_8u( s0 + 136 ).
          IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0.
            s0 = p2. s1 = 1. mem_st_i32_8( iv_addr = s0 + 136 iv_val = s1 ). s0 = p0. s1 = 1134898. s2 = 0. PERFORM f969 USING s0 s1 s2 CHANGING s0. s0 = p2. s1 = 0. mem_st_i32_8( iv_addr = s0 + 136 iv_val = s1 ).
          ELSE.
          ENDIF.
          s0 = l5. s1 = 16. s0 = s0 - s1. p2 = s0. s1 = p2. s1 = mem_ld_i32( s1 ). l5 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l5. s1 = 1.
          IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = p1. s0 = mem_ld_i32( s0 ). s1 = p2. s1 = zcl_wasm_rt=>extend_u32( s1 ). s2 = -30064771072. s1 = zcl_wasm_rt=>or64( iv_a = s1 iv_b = s2 ). PERFORM f453 USING s0 s1.
        ENDDO.
        s0 = l8. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
        IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
        s0 = l8. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p1 = s0. s1 = p1. s1 = mem_ld_i32( s1 ). p1 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p1. s1 = 1.
        IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
        s0 = p0. s1 = 16. s0 = s0 + s1. p1 = s0. lv_br = 1. EXIT. " br 1
      ENDDO.
      s0 = l4. s1 = l5. s2 = l3. s2 = mem_ld_i32( s2 + 12 ). PERFORM f216 USING s0 s1 s2 CHANGING s0. l4 = s0. s1 = l3. s1 = mem_ld_i32( s1 + 12 ). s0 = s0 + s1. s1 = p2. s2 = l7. PERFORM f216 USING s0 s1 s2 CHANGING s0. s0 = l4. s1 = l3.
      s1 = mem_ld_i32( s1 + 12 ). s2 = l7. s1 = s1 + s2. s0 = s0 + s1. s1 = 0. mem_st_i32_8( iv_addr = s0 iv_val = s1 ). s0 = p0. s1 = l4. s2 = l3. s2 = mem_ld_i32( s2 + 12 ). s3 = l7. s2 = s2 + s3. PERFORM f417 USING s0 s1 s2 CHANGING s0.
      l6 = s0. s0 = p0. s0 = mem_ld_i32( s0 + 16 ). p0 = s0. s1 = 16. s0 = s0 + s1. s1 = l4. s2 = p0. s2 = mem_ld_i32( s2 + 4 ).
      DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
      dispatch_t6( iv_idx = lv_ci_func p0 = s0 p1 = s1 ). s0 = l5. s1 = 16. s0 = s0 - s1. p0 = s0. s1 = p0. s1 = mem_ld_i32( s1 ). p2 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p2. s1 = 1.
      IF s0 <= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = p1. s0 = mem_ld_i32( s0 ). s1 = p0. s1 = zcl_wasm_rt=>extend_u32( s1 ). s2 = -30064771072. s1 = zcl_wasm_rt=>or64( iv_a = s1 iv_b = s2 ). PERFORM f453 USING s0 s1.
      ELSE.
      ENDIF.
      s0 = l8. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
      IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = l8. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p0 = s0. s1 = p0. s1 = mem_ld_i32( s1 ). p0 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s1 = 2.
      IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
    ENDDO.
    s0 = p1. s0 = mem_ld_i32( s0 ). s1 = l8. PERFORM f453 USING s0 s1.
  ENDDO.
  s0 = l3. s1 = 16. s0 = s0 + s1. gv_g0 = s0. s0 = l6. rv = s0.
ENDFORM.

FORM f494 USING p0 TYPE i p1 TYPE i.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i.
  DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i.
  DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i.
  DATA s36 TYPE i. DATA s37 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      s0 = p1.
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p1. s0 = mem_ld_i32( s0 ). l2 = s0. s1 = 0.
      IF s0 <= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p1. s1 = l2. s2 = 1. s1 = s1 - s2. l2 = s1. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l2.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      DO 1 TIMES. " block
        s0 = p1. s0 = mem_ld_i32_8u( s0 + 5 ). s1 = 1. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
        IF s0 <> 0.
          s0 = p1. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 24 ). l7 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
          IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          s0 = l7. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l2 = s0. s1 = l2. s1 = mem_ld_i32( s1 ). l2 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l2. s1 = 1.
          IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          s0 = p0. s1 = l7. PERFORM f453 USING s0 s1. lv_br = 1. EXIT. " br 1
        ELSE.
        ENDIF.
        s0 = p1. s0 = mem_ld_i32( s0 + 28 ). l2 = s0. s1 = p1. s1 = mem_ld_i32( s1 + 24 ). l3 = s1. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l3. s1 = l2. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = p1. s1 = 0.
        mem_st_i32( iv_addr = s0 + 24 iv_val = s1 ). s0 = p1. s1 = 0. mem_st_i32( iv_addr = s0 + 28 iv_val = s1 ). s0 = p1. s1 = 32. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). l2 = s0.
        IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = l2. s1 = l2. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 - s2. l3 = s1. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l3.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = p0. s0 = mem_ld_i32_8u( s0 + 104 ). s1 = 2.
        IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = l2. s0 = mem_ld_i32( s0 + 8 ). l4 = s0. s1 = l2. s2 = 12. s1 = s1 + s2. l3 = s1. s1 = mem_ld_i32( s1 ). l5 = s1. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = l5. s1 = l4. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l3.
        s1 = 0. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l2. s1 = p0. s2 = 88. s1 = s1 + s2. l6 = s1. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = p0. s1 = 92. s0 = s0 + s1. l5 = s0. s0 = mem_ld_i32( s0 ). l4 = s0. s0 = l5. s1 = l2.
        s2 = 8. s1 = s1 + s2. l2 = s1. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l4. s1 = l2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l3. s1 = l4. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s0 = mem_ld_i32_8u( s0 + 104 ).
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = p0. s1 = 1. mem_st_i32_8( iv_addr = s0 + 104 iv_val = s1 ).
        DO 1 TIMES. " block
          DO 1 TIMES. " block
            s0 = l5. s0 = mem_ld_i32( s0 ). l2 = s0. s1 = l6. l3 = s1.
            IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0.
              DO. " loop
                s0 = l2. s1 = 8. s0 = s0 - s1. l2 = s0. s0 = mem_ld_i32( s0 ).
                IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
                s0 = p0. s1 = l2. PERFORM f108 USING s0 s1. s0 = p0. s0 = mem_ld_i32( s0 + 92 ). l2 = s0. s1 = l3.
                IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                IF s0 <> 0. EXIT. ENDIF. " br_if 0
              ENDDO.
            ELSE.
            ENDIF.
            s0 = p0. s1 = 0. mem_st_i32_8( iv_addr = s0 + 104 iv_val = s1 ). lv_br = 1. EXIT. " br 1
          ENDDO.
          s0 = 1152044. s1 = 1148333. s2 = 5521. s3 = 1136378. PERFORM f1101 USING s0 s1 s2 s3.
          RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
        ENDDO.
      ENDDO.
      s0 = p1. s1 = 12. s0 = s0 + s1. l2 = s0. s0 = mem_ld_i32( s0 ). l3 = s0. s1 = p1. s1 = mem_ld_i32( s1 + 8 ). l4 = s1. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l4. s1 = l3. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = p1.
      s1 = 0. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = l2. s1 = 0. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s1 = 16. s0 = s0 + s1. s1 = p1. s2 = p0. s2 = mem_ld_i32( s2 + 4 ).
      DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
      dispatch_t6( iv_idx = lv_ci_func p0 = s0 p1 = s1 ).
    ENDDO.
    RETURN.
  ENDDO.
  s0 = 1151852. s1 = 1148333. s2 = 5277. s3 = 1144023. PERFORM f1101 USING s0 s1 s2 s3.
  RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
ENDFORM.

FORM f495 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i.
  DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i.
  DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    s0 = p0. s0 = mem_ld_i32( s0 + 16 ). l2 = s0. s1 = 16. s0 = s0 + s1. s1 = p1. s1 = mem_ld_i32( s1 + 24 ). s2 = 1. s1 = s1 + s2. s2 = 2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). l3 = s1. s2 = p1. s2 = mem_ld_i32( s2 + 28 ).
    s3 = 3. s2 = zcl_wasm_rt=>shl32( iv_val = s2 iv_shift = s3 ). s1 = s1 + s2. s2 = 48. s1 = s1 + s2. l5 = s1. s2 = l2. s2 = mem_ld_i32( s2 ).
    DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
    s0 = dispatch_t7( iv_idx = lv_ci_func p0 = s0 p1 = s1 ). l2 = s0.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = 0. l2 = s0. s0 = p0. s0 = mem_ld_i32( s0 + 16 ). p1 = s0. s0 = mem_ld_i32_8u( s0 + 136 ).
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p1. s1 = 1. mem_st_i32_8( iv_addr = s0 + 136 iv_val = s1 ). s0 = p0. s1 = 1134898. s2 = 0. PERFORM f969 USING s0 s1 s2 CHANGING s0. s0 = p1. s1 = 0. mem_st_i32_8( iv_addr = s0 + 136 iv_val = s1 ). s0 = 0. rv = s0. RETURN.
    ELSE.
    ENDIF.
    s0 = l2. s1 = p1. s2 = p1. s2 = mem_ld_i32( s2 + 24 ). s3 = -1. s2 = zcl_wasm_rt=>xor32( iv_a = s2 iv_b = s3 ). s3 = 2. s2 = zcl_wasm_rt=>shl32( iv_val = s2 iv_shift = s3 ). s1 = s1 + s2. s2 = l5.
    PERFORM f216 USING s0 s1 s2 CHANGING s0. s1 = p0. s1 = mem_ld_i32( s1 + 16 ). p1 = s1. s1 = l3. s0 = s0 + s1. l2 = s0. s1 = 2. mem_st_i32_8( iv_addr = s0 + 4 iv_val = s1 ). s0 = p1. s0 = mem_ld_i32( s0 + 80 ). l3 = s0. s1 = l2. s2 = 8.
    s1 = s1 + s2. l5 = s1. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = l2. s1 = l3. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = l2. s1 = 1. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l2. s1 = 0.
    mem_st_i32_8( iv_addr = s0 + 16 iv_val = s1 ). s0 = l2. s1 = 12. s0 = s0 + s1. s1 = p1. s2 = 80. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p1. s1 = l5. mem_st_i32( iv_addr = s0 + 80 iv_val = s1 ). s0 = l2.
    s0 = mem_ld_i32( s0 + 44 ). p1 = s0.
    IF s0 <> 0.
      s0 = p1. s1 = p1. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
    ELSE.
    ENDIF.
    s0 = l2. s0 = mem_ld_i32( s0 + 32 ). l3 = s0.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l2. s1 = 48. s0 = s0 + s1. p1 = s0. s0 = l3. s1 = 1.
    IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = l3. s1 = -2. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). l5 = s0.
      DO. " loop
        s0 = p1. s1 = 4. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). l4 = s0. s1 = 228.
        IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s0 = mem_ld_i32( s0 + 56 ). s1 = l4. s2 = 2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s0 = mem_ld_i32( s0 ). l4 = s0. s1 = l4. s1 = mem_ld_i32( s1 ). s2 = 1.
          s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
        ELSE.
        ENDIF.
        s0 = p1. s1 = 12. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). l4 = s0. s1 = 228.
        IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s0 = mem_ld_i32( s0 + 56 ). s1 = l4. s2 = 2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s0 = mem_ld_i32( s0 ). l4 = s0. s1 = l4. s1 = mem_ld_i32( s1 ). s2 = 1.
          s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
        ELSE.
        ENDIF.
        s0 = p1. s1 = 16. s0 = s0 + s1. p1 = s0. s0 = l5. s1 = 2. s0 = s0 - s1. l5 = s0.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
      ENDDO.
    ELSE.
    ENDIF.
    s0 = l3. s1 = 1. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p1. s0 = mem_ld_i32( s0 + 4 ). p1 = s0. s1 = 228.
    IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s0 = mem_ld_i32( s0 + 56 ). s1 = p1. s2 = 2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s0 = mem_ld_i32( s0 ). p0 = s0. s1 = p0. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2.
    mem_st_i32( iv_addr = s0 iv_val = s1 ).
  ENDDO.
  s0 = l2. rv = s0.
ENDFORM.

FORM f496 USING p0 TYPE i CHANGING rv TYPE i.
  DATA l1 TYPE i. DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i.
  DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i.
  DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i. DATA s36 TYPE i.
  DATA s37 TYPE i. DATA s38 TYPE i. DATA s39 TYPE i. DATA s40 TYPE i. DATA s41 TYPE i. DATA s42 TYPE i. DATA s43 TYPE i. DATA s44 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 96. s0 = s0 - s1. l1 = s0. gv_g0 = s0. s0 = l1. s1 = 0.
  mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = l1. s1 = 4294967296. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ). s0 = l1. s1 = 3. mem_st_i32_8( iv_addr = s0 + 44 iv_val = s1 ). s0 = l1.
  s1 = 32. mem_st_i32( iv_addr = s0 + 28 iv_val = s1 ). s0 = l1. s1 = 0. mem_st_i32( iv_addr = s0 + 40 iv_val = s1 ). s0 = l1. s1 = 1054244. mem_st_i32( iv_addr = s0 + 36 iv_val = s1 ). s0 = l1. s1 = 0.
  mem_st_i32( iv_addr = s0 + 20 iv_val = s1 ). s0 = l1. s1 = 0. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = l1. s1 = l1. mem_st_i32( iv_addr = s0 + 32 iv_val = s1 ).
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      s0 = p0. s0 = mem_ld_i32( s0 + 12 ).
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = p0. s1 = l1. s2 = 12. s1 = s1 + s2. PERFORM f405 USING s0 s1 CHANGING s0.
        IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        lv_br = 2. EXIT. " br 2
      ELSE.
      ENDIF.
      s0 = l1. s1 = 3. mem_st_i32( iv_addr = s0 + 52 iv_val = s1 ). s0 = l1. s1 = 1093192. mem_st_i32( iv_addr = s0 + 48 iv_val = s1 ). s0 = l1. s1 = 3.
      zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 60 CHANGING cv_mem = mv_mem ). s0 = l1. s1 = p0. s2 = 16. s1 = s1 + s2. s1 = zcl_wasm_rt=>extend_u32( s1 ). s2 = 55834574848. s1 = zcl_wasm_rt=>or64( iv_a = s1 iv_b = s2 ).
      zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 88 CHANGING cv_mem = mv_mem ). s0 = l1. s1 = p0. s2 = 12. s1 = s1 + s2. s1 = zcl_wasm_rt=>extend_u32( s1 ). s2 = 55834574848. s1 = zcl_wasm_rt=>or64( iv_a = s1 iv_b = s2 ).
      zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 80 CHANGING cv_mem = mv_mem ). s0 = l1. s1 = p0. s1 = zcl_wasm_rt=>extend_u32( s1 ). s2 = 90194313216. s1 = zcl_wasm_rt=>or64( iv_a = s1 iv_b = s2 ).
      zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 72 CHANGING cv_mem = mv_mem ). s0 = l1. s1 = l1. s2 = 72. s1 = s1 + s2. mem_st_i32( iv_addr = s0 + 56 iv_val = s1 ). s0 = l1. s1 = 1054244. s2 = l1. s3 = 48. s2 = s2 + s3.
      PERFORM f360 USING s0 s1 s2 CHANGING s0.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
    ENDDO.
    s0 = l1. s0 = mem_ld_i32( s0 + 4 ). l4 = s0. s0 = l1. s0 = mem_ld_i32( s0 ). l5 = s0. s0 = 1. l3 = s0.
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        s0 = l1. s0 = mem_ld_i32( s0 + 8 ). l2 = s0.
        IF s0 <> 0.
          s0 = l2. s1 = 0.
          IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          s0 = 1215076. s0 = mem_ld_i32_8u( s0 ). s0 = l2. PERFORM f18 USING s0 CHANGING s0. l3 = s0.
          IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
        ELSE.
        ENDIF.
        s0 = l3. s1 = l4. s2 = l2. PERFORM f216 USING s0 s1 s2 CHANGING s0. l3 = s0. s0 = l1. s1 = l2. mem_st_i32( iv_addr = s0 + 20 iv_val = s1 ). s0 = l1. s1 = l3. mem_st_i32( iv_addr = s0 + 16 iv_val = s1 ). s0 = l1. s1 = l2.
        mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = l1. s1 = 12. s0 = s0 + s1. PERFORM f989 USING s0 CHANGING s0. s1 = l5.
        IF s1 <> 0.
          s1 = l4. PERFORM f125 USING s1.
        ELSE.
        ENDIF.
        DO 1 TIMES. " block
          DO 1 TIMES. " block
            DO 1 TIMES. " block
              DO 1 TIMES. " block
                s1 = p0. s1 = mem_ld_i32( s1 ).
                CASE s1.
                  WHEN 0. EXIT.
                  WHEN 1. lv_br = 1. EXIT.
                  WHEN OTHERS. lv_br = 3. EXIT.
                ENDCASE.
              ENDDO.
              s1 = p0. s1 = mem_ld_i32( s1 + 8 ).
              IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
              IF s1 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
              s1 = p0. s1 = mem_ld_i32( s1 + 4 ). l2 = s1. lv_br = 1. EXIT. " br 1
            ENDDO.
            s1 = p0. s1 = mem_ld_i32_8u( s1 + 4 ). s2 = 3.
            IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
            IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
            s1 = p0. s1 = mem_ld_i32( s1 + 8 ). l2 = s1. s1 = mem_ld_i32( s1 ). l4 = s1. s2 = l2. s3 = 4. s2 = s2 + s3. s2 = mem_ld_i32( s2 ). l5 = s2. s2 = mem_ld_i32( s2 ).
            DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
            dispatch_t2( iv_idx = lv_ci_func p0 = s1 ). s1 = l5. s1 = mem_ld_i32( s1 + 4 ).
            IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
            IF s1 <> 0. EXIT. ENDIF. " br_if 0
            s1 = l4. PERFORM f125 USING s1.
          ENDDO.
          s1 = l2. PERFORM f125 USING s1.
        ENDDO.
        s1 = p0. PERFORM f125 USING s1. s1 = l1. s2 = 96. s1 = s1 + s2. gv_g0 = s1. rv = s0. RETURN.
      ENDDO.
      PERFORM f1183.
      RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
    ENDDO.
    s0 = 1. s1 = l2. PERFORM f1271 USING s0 s1.
    RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
  ENDDO.
  s0 = 1092220. s1 = 55. s2 = l1. s3 = 72. s2 = s2 + s3. s3 = 1054268. s4 = 1092368. PERFORM f981 USING s0 s1 s2 s3 s4.
  RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
ENDFORM.

FORM f497 USING p0 TYPE i p1 TYPE i p2 TYPE i p3 TYPE i p4 TYPE i p5 TYPE i CHANGING rv TYPE i.
  DATA l6 TYPE i. DATA l7 TYPE i. DATA l8 TYPE i. DATA l9 TYPE i. DATA l10 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i.
  DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i.
  DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 80. s0 = s0 - s1. l10 = s0.
  gv_g0 = s0. s0 = 1. l8 = s0. s0 = p3. l7 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        DO. " loop
          DO 1 TIMES. " block
            s0 = l7. s0 = mem_ld_i32( s0 + 204 ). s1 = p5. s2 = 3. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s0 = mem_ld_i32( s0 + 4 ). p5 = s0. s1 = 0.
            IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0.
              s0 = l7. s0 = mem_ld_i32( s0 + 116 ). l6 = s0.
              DO. " loop
                s0 = l6. s1 = p5. s2 = 4. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. l9 = s0. s0 = mem_ld_i32( s0 ). s1 = p4.
                IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
                s0 = l9. s0 = mem_ld_i32( s0 + 8 ). p5 = s0. s1 = 0.
                IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                IF s0 <> 0. EXIT. ENDIF. " br_if 0
              ENDDO.
            ELSE.
            ENDIF.
            s0 = l7. s0 = mem_ld_i32( s0 + 4 ). l6 = s0.
            IF s0 <> 0.
              s0 = l7. s0 = mem_ld_i32( s0 + 12 ). p5 = s0. s0 = 0. l8 = s0. s0 = l6. l7 = s0. lv_br = 2. EXIT. " br 2
            ELSE.
              DO 1 TIMES. " block
                s0 = l7. s0 = mem_ld_i32( s0 + 32 ).
                IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
                IF s0 <> 0. EXIT. ENDIF. " br_if 0
                s0 = l7. s0 = mem_ld_i32( s0 + 320 ). l8 = s0. s1 = 0.
                IF s0 <= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                IF s0 <> 0. EXIT. ENDIF. " br_if 0
                s0 = l7. s0 = mem_ld_i32( s0 + 328 ). l6 = s0. s0 = 0. p5 = s0.
                DO. " loop
                  s0 = p4. s1 = l6. s2 = 4. s1 = s1 + s2. s1 = mem_ld_i32( s1 ).
                  IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                  IF s0 <> 0.
                    s0 = l6. s0 = mem_ld_i32_8u( s0 ). l8 = s0. s1 = 4. s0 = zcl_wasm_rt=>shr_u32( iv_val = s0 iv_shift = s1 ). l9 = s0. s0 = p3. s1 = l7.
                    IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                    IF s0 <> 0.
                      s0 = 1. l6 = s0. lv_br = 7. EXIT. " br 7
                    ELSE.
                    ENDIF.
                    s0 = 1. l6 = s0. s0 = p0. s1 = p3. s2 = l7. s3 = 0. s4 = l8. s5 = 1. s4 = zcl_wasm_rt=>shr_u32( iv_val = s4 iv_shift = s5 ). s5 = 1. s4 = zcl_wasm_rt=>and32( iv_a = s4 iv_b = s5 ). s5 = p5. s6 = p4. s7 = l8. s8 = 2.
                    s7 = zcl_wasm_rt=>shr_u32( iv_val = s7 iv_shift = s8 ). s8 = 1. s7 = zcl_wasm_rt=>and32( iv_a = s7 iv_b = s8 ). s8 = l8. s9 = 3. s8 = zcl_wasm_rt=>shr_u32( iv_val = s8 iv_shift = s9 ). s9 = 1.
                    s8 = zcl_wasm_rt=>and32( iv_a = s8 iv_b = s9 ). s9 = l9. PERFORM f545 USING s0 s1 s2 s3 s4 s5 s6 s7 s8 s9 CHANGING s0. p5 = s0. s1 = 0.
                    IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                    IF s0 <> 0. lv_br = 6. EXIT. ENDIF. " br_if 6
                    lv_br = 7. EXIT. " br 7
                  ELSE.
                  ENDIF.
                  s0 = l6. s1 = 8. s0 = s0 + s1. l6 = s0. s0 = l8. s1 = p5. s2 = 1. s1 = s1 + s2. p5 = s1.
                  IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                  IF s0 <> 0. EXIT. ENDIF. " br_if 0
                ENDDO.
              ENDDO.
              s0 = l10. s1 = p0. s2 = 16. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). s2 = l10. s3 = 16. s2 = s2 + s3. s3 = p4. PERFORM f410 USING s1 s2 s3 CHANGING s1. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s1 = 1153498. s2 = l10.
              PERFORM f974 USING s0 s1 s2. lv_br = 4. EXIT. " br 4
            ENDIF.
            RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
          ENDDO.
        ENDDO.
        s0 = l6. s1 = p5. s2 = 4. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s0 = mem_ld_i32( s0 + 12 ). s1 = 4. s0 = zcl_wasm_rt=>shr_u32( iv_val = s0 iv_shift = s1 ). s1 = 15.
        s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). l9 = s0. s0 = 1. l6 = s0. s0 = l8.
        IF s0 <> 0.
          s0 = 0. l6 = s0. lv_br = 1. EXIT. " br 1
        ELSE.
        ENDIF.
        s0 = p0. s1 = p3. s2 = l7. s3 = 1. s4 = 0. s5 = p5. s6 = p4. s7 = 1. s8 = 1. s9 = 0. PERFORM f545 USING s0 s1 s2 s3 s4 s5 s6 s7 s8 s9 CHANGING s0. p5 = s0. s1 = 0.
        IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      ENDDO.
      s0 = p1. s1 = l6. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p2. s1 = l9. mem_st_i32( iv_addr = s0 iv_val = s1 ). lv_br = 1. EXIT. " br 1
    ENDDO.
    s0 = -1. p5 = s0.
  ENDDO.
  s0 = l10. s1 = 80. s0 = s0 + s1. gv_g0 = s0. s0 = p5. rv = s0.
ENDFORM.

FORM f498 USING p0 TYPE i p1 TYPE i.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i.
  DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          DO 1 TIMES. " block
            DO 1 TIMES. " block
              s0 = p1. s0 = mem_ld_i32( s0 ). l2 = s0. s1 = 128. s0 = s0 + s1.
              CASE s0.
                WHEN 0. EXIT.
                WHEN 1. lv_br = 1. EXIT.
                WHEN 2. lv_br = 1. EXIT.
                WHEN 3. lv_br = 3. EXIT.
                WHEN 4. lv_br = 2. EXIT.
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
                WHEN 18. lv_br = 4. EXIT.
                WHEN 19. lv_br = 4. EXIT.
                WHEN 20. lv_br = 4. EXIT.
                WHEN 21. lv_br = 4. EXIT.
                WHEN 22. lv_br = 4. EXIT.
                WHEN 23. lv_br = 4. EXIT.
                WHEN 24. lv_br = 4. EXIT.
                WHEN 25. lv_br = 4. EXIT.
                WHEN 26. lv_br = 4. EXIT.
                WHEN 27. lv_br = 4. EXIT.
                WHEN 28. lv_br = 4. EXIT.
                WHEN 29. lv_br = 4. EXIT.
                WHEN 30. lv_br = 4. EXIT.
                WHEN 31. lv_br = 4. EXIT.
                WHEN 32. lv_br = 4. EXIT.
                WHEN 33. lv_br = 4. EXIT.
                WHEN 34. lv_br = 4. EXIT.
                WHEN 35. lv_br = 4. EXIT.
                WHEN 36. lv_br = 4. EXIT.
                WHEN 37. lv_br = 4. EXIT.
                WHEN 38. lv_br = 4. EXIT.
                WHEN 39. lv_br = 4. EXIT.
                WHEN 40. lv_br = 4. EXIT.
                WHEN 41. lv_br = 4. EXIT.
                WHEN 42. lv_br = 4. EXIT.
                WHEN 43. lv_br = 3. EXIT.
                WHEN OTHERS. lv_br = 4. EXIT.
              ENDCASE.
            ENDDO.
            s0 = p1. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 16 ). l4 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
            IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. lv_br = 4. EXIT. ENDIF. " br_if 4
            s0 = p0. s0 = mem_ld_i32( s0 ). s1 = l4. s1 = zcl_wasm_rt=>wrap_i64( s1 ). p1 = s1. s2 = p1. s2 = mem_ld_i32( s2 ). p1 = s2. s3 = 1. s2 = s2 - s3. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = p1. s2 = 1.
            IF s1 > s2. s1 = 1. ELSE. s1 = 0. ENDIF.
            IF s1 <> 0. lv_br = 4. EXIT. ENDIF. " br_if 4
            s0 = mem_ld_i32( s0 + 16 ). s1 = l4. PERFORM f453 USING s0 s1.
            RETURN.
          ENDDO.
          s0 = p1. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 16 ). l4 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
          IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
          s0 = p0. s0 = mem_ld_i32( s0 ). s1 = l4. s1 = zcl_wasm_rt=>wrap_i64( s1 ). p1 = s1. s2 = p1. s2 = mem_ld_i32( s2 ). p1 = s2. s3 = 1. s2 = s2 - s3. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = p1. s2 = 1.
          IF s1 > s2. s1 = 1. ELSE. s1 = 0. ENDIF.
          IF s1 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
          s0 = mem_ld_i32( s0 + 16 ). s1 = l4. PERFORM f453 USING s0 s1.
          RETURN.
        ENDDO.
        s0 = p0. s0 = mem_ld_i32( s0 ). l2 = s0.
        DO 1 TIMES. " block
          s0 = p1. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 16 ). l4 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
          IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = l4. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l3 = s0. s1 = l3. s1 = mem_ld_i32( s1 ). l3 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l3. s1 = 1.
          IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = l2. s0 = mem_ld_i32( s0 + 16 ). s1 = l4. PERFORM f453 USING s0 s1. s0 = p0. s0 = mem_ld_i32( s0 ). l2 = s0.
        ENDDO.
        s0 = p1. s1 = 24. s0 = s0 + s1. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). l4 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
        IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
        s0 = l4. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p0 = s0. s1 = p0. s1 = mem_ld_i32( s1 ). p0 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s1 = 1.
        IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
        s0 = l2. s0 = mem_ld_i32( s0 + 16 ). s1 = l4. PERFORM f453 USING s0 s1.
        RETURN.
      ENDDO.
      s0 = p1. s0 = mem_ld_i32( s0 + 16 ). p1 = s0. s1 = 228.
      IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p0. s0 = mem_ld_i32( s0 ). s0 = mem_ld_i32( s0 + 16 ). l2 = s0. s0 = mem_ld_i32( s0 + 56 ). s1 = p1. s2 = 2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s0 = mem_ld_i32( s0 ). p0 = s0. s1 = p0.
      s1 = mem_ld_i32( s1 ). p1 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p1. s1 = 1.
      IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = l2. s1 = p0. PERFORM f713 USING s0 s1.
      RETURN.
    ENDDO.
    s0 = l2. s1 = 83. s0 = s0 + s1. s1 = 45.
    IF zcl_wasm_rt=>gt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p1. s0 = mem_ld_i32( s0 + 16 ). p1 = s0. s1 = 228.
    IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s0 = mem_ld_i32( s0 ). s0 = mem_ld_i32( s0 + 16 ). l2 = s0. s0 = mem_ld_i32( s0 + 56 ). s1 = p1. s2 = 2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s0 = mem_ld_i32( s0 ). p0 = s0. s1 = p0.
    s1 = mem_ld_i32( s1 ). p1 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p1. s1 = 1.
    IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l2. s1 = p0. PERFORM f713 USING s0 s1.
  ENDDO.
ENDFORM.

FORM f499 USING p0 TYPE i p1 TYPE int8 p2 TYPE int8 CHANGING rv TYPE i.
  DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i.
  DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i.
  DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i. DATA s36 TYPE i.
  DATA s37 TYPE i. DATA s38 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    s0 = p2. s1 = -4294967296.
    IF zcl_wasm_rt=>lt_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        s0 = p2. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l4 = s0. s0 = mem_ld_i32_16u( s0 + 6 ). l3 = s0. s1 = 13.
        IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = l3. s1 = 48.
        IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s0 = mem_ld_i32( s0 + 68 ). s1 = l3. s2 = 24. s1 = s1 * s2. s0 = s0 + s1. s0 = mem_ld_i32( s0 + 16 ).
          IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
          s0 = l3. s1 = 14.
          IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          s0 = p0. s1 = p1. s2 = l4. s2 = mem_ld_i32( s2 + 32 ). s2 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s2 + 0 ). PERFORM f706 USING s0 s1 s2 CHANGING s0. rv = s0. RETURN.
        ELSE.
        ENDIF.
        s0 = l4. s0 = mem_ld_i32( s0 + 32 ). s0 = mem_ld_i32_8u( s0 + 16 ).
        IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
        s0 = p1. s1 = -4294967297.
        IF zcl_wasm_rt=>gt_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        lv_br = 2. EXIT. " br 2
      ENDDO.
      s0 = p1. s1 = -4294967296.
      IF zcl_wasm_rt=>lt_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
    ENDDO.
    DO 1 TIMES. " block
      s0 = p0. s1 = p2. s2 = 61. s3 = p2. s4 = 0. PERFORM f192 USING s0 s1 s2 s3 s4 CHANGING s0. l7 = s0. s1 = -4294967297.
      IF zcl_wasm_rt=>le_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = -1. l5 = s0. s0 = l7. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 25769803776.
        IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        s0 = p0. s1 = 1137497. s2 = 0. PERFORM f970 USING s0 s1 s2 CHANGING s0. lv_br = 1. EXIT. " br 1
      ELSE.
      ENDIF.
      s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l3 = s0. s0 = l7. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l6 = s0.
      DO. " loop
        DO 1 TIMES. " block
          s0 = l3. s0 = mem_ld_i32( s0 + 16 ). s0 = mem_ld_i32( s0 + 44 ). l4 = s0.
          IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0.
            s0 = l3. s0 = mem_ld_i32_16u( s0 + 6 ). s1 = 48.
            IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
            s0 = l3. s1 = l3. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l3. s0 = zcl_wasm_rt=>extend_u32( s0 ). s1 = -4294967296. s0 = zcl_wasm_rt=>or64( iv_a = s0 iv_b = s1 ). p1 = s0.
            DO 1 TIMES. " block
              DO. " loop
                s0 = p0. s1 = p1. PERFORM f820 USING s0 s1 CHANGING s0. p2 = s0. s0 = p0. s1 = p1. PERFORM f1164 USING s0 s1. s0 = p2. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). p1 = s0. s1 = 8589934592.
                IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                IF s0 <> 0. lv_br = 5. EXIT. ENDIF. " br_if 5
                s0 = p1. s1 = 25769803776.
                IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
                s0 = p2. s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = l6.
                IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                IF s0 <> 0.
                  s0 = p0. s1 = p2. PERFORM f1164 USING s0 s1. lv_br = 4. EXIT. " br 4
                ELSE.
                ENDIF.
                s0 = p0. s1 = p0. s1 = mem_ld_i32( s1 + 236 ). l4 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 + 236 iv_val = s1 ). s0 = 0. l3 = s0. s0 = p2. p1 = s0. s0 = l4. s1 = 1.
                IF s0 <= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                IF s0 <> 0.
                  s0 = p0. PERFORM f1030 USING s0 CHANGING s0.
                ELSE.
                  s1 = 0.
                ENDIF.
                IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
                IF s1 <> 0. EXIT. ENDIF. " br_if 0
              ENDDO.
              s1 = p0. s2 = p1. PERFORM f1164 USING s1 s2.
            ENDDO.
            s1 = -1. l5 = s1. lv_br = 3. EXIT. " br 3
          ELSE.
          ENDIF.
          s1 = l4. l3 = s1. s2 = l6.
          IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
          IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        ENDDO.
      ENDDO.
      s1 = 1. l5 = s1.
    ENDDO.
    s1 = l7. s2 = 32. s1 = zcl_wasm_rt=>shr_u64( iv_val = s1 iv_shift = s2 ). s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = -11.
    IF zcl_wasm_rt=>lt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
    IF s1 <> 0. EXIT. ENDIF. " br_if 0
    s1 = l7. s1 = zcl_wasm_rt=>wrap_i64( s1 ). l4 = s1. s2 = l4. s2 = mem_ld_i32( s2 ). l4 = s2. s3 = 1. s2 = s2 - s3. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = l4. s2 = 1.
    IF s1 > s2. s1 = 1. ELSE. s1 = 0. ENDIF.
    IF s1 <> 0. EXIT. ENDIF. " br_if 0
    s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s2 = l7. PERFORM f453 USING s1 s2.
  ENDDO.
  s1 = l5. rv = s1.
ENDFORM.

FORM f500 USING p0 TYPE i p1 TYPE i.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i.
  DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i.
  DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i. DATA s36 TYPE i. DATA s37 TYPE i.
  DATA s38 TYPE i. DATA s39 TYPE i. DATA s40 TYPE i. DATA s41 TYPE i. DATA s42 TYPE i. DATA s43 TYPE i. DATA s44 TYPE i. DATA s45 TYPE i. DATA s46 TYPE i. DATA s47 TYPE i. DATA s48 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16.
  s0 = s0 - s1. l4 = s0. gv_g0 = s0. s0 = p0. s1 = 80. s0 = s0 + s1. l5 = s0. s1 = p1. s1 = mem_ld_i32( s1 ). l2 = s1. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l2. s1 = 256. s0 = s0 + s1. l3 = s0. s0 = l2. s0 = mem_ld_i32( s0 + 284 ).
  s1 = p0. s1 = mem_ld_i32( s1 + 4 ).
  IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = l3. s1 = 200. PERFORM f908 USING s0 s1. s0 = l4. s1 = p0. s1 = mem_ld_i32( s1 + 4 ). mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = l3. s1 = l4. s2 = 12. s1 = s1 + s2. s2 = 4. PERFORM f1097 USING s0 s1 s2. s0 = l2. s1 = p0.
    s1 = mem_ld_i32( s1 + 4 ). mem_st_i32( iv_addr = s0 + 284 iv_val = s1 ).
  ELSE.
  ENDIF.
  s0 = l2. s1 = l2. s2 = 260. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). mem_st_i32( iv_addr = s0 + 280 iv_val = s1 ). s0 = l3. s1 = 41. PERFORM f908 USING s0 s1. s0 = l5. s1 = l5. s1 = mem_ld_i32( s1 ). s1 = mem_ld_i32( s1 + 4 ). l2 = s1.
  mem_st_i32( iv_addr = s0 iv_val = s1 ).
  DO 1 TIMES. " block
    s0 = l2. s0 = mem_ld_i32( s0 + 312 ). l3 = s0. s1 = l2. s1 = mem_ld_i32( s1 + 316 ).
    IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = l3. s1 = 1. s0 = s0 + s1. l5 = s0. s0 = -1. l3 = s0. s0 = p0. s0 = mem_ld_i32( s0 ). s1 = l2. s2 = 308. s1 = s1 + s2. s2 = 8. s3 = l2. s4 = 316. s3 = s3 + s4. s4 = l5. PERFORM f845 USING s0 s1 s2 s3 s4 CHANGING s0.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = l2. s0 = mem_ld_i32( s0 + 312 ). l3 = s0.
    ELSE.
    ENDIF.
    s0 = l2. s1 = l3. s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 + 312 iv_val = s1 ). s0 = l2. s0 = mem_ld_i32( s0 + 308 ). s1 = l3. s2 = 3. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s1 = 8589934592.
    zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ).
  ENDDO.
  s0 = p1. s0 = mem_ld_i32( s0 ). s1 = l3. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = p0. s1 = 80. s0 = s0 + s1. l5 = s0. s0 = mem_ld_i32( s0 ). p1 = s0. s1 = 256. s0 = s0 + s1. l2 = s0. s0 = p1. s0 = mem_ld_i32( s0 + 284 ). s1 = p0.
  s1 = mem_ld_i32( s1 + 4 ).
  IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = l2. s1 = 200. PERFORM f908 USING s0 s1. s0 = l4. s1 = p0. s1 = mem_ld_i32( s1 + 4 ). mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = l2. s1 = l4. s2 = 12. s1 = s1 + s2. s2 = 4. PERFORM f1097 USING s0 s1 s2. s0 = p1. s1 = p0.
    s1 = mem_ld_i32( s1 + 4 ). mem_st_i32( iv_addr = s0 + 284 iv_val = s1 ).
  ELSE.
  ENDIF.
  s0 = p1. s1 = p1. s2 = 260. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). mem_st_i32( iv_addr = s0 + 280 iv_val = s1 ). s0 = l2. s1 = 3. PERFORM f908 USING s0 s1. s0 = l5. s0 = mem_ld_i32( s0 ). s1 = l4. s2 = l3.
  mem_st_i32( iv_addr = s1 + 12 iv_val = s2 ). s1 = 256. s0 = s0 + s1. s1 = l4. s2 = 12. s1 = s1 + s2. l3 = s1. s2 = 4. PERFORM f1097 USING s0 s1 s2. s0 = l5. s0 = mem_ld_i32( s0 ). p1 = s0. s1 = 256. s0 = s0 + s1. l2 = s0. s0 = p1.
  s0 = mem_ld_i32( s0 + 284 ). s1 = p0. s1 = mem_ld_i32( s1 + 4 ).
  IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = l2. s1 = 200. PERFORM f908 USING s0 s1. s0 = l4. s1 = p0. s1 = mem_ld_i32( s1 + 4 ). mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = l2. s1 = l3. s2 = 4. PERFORM f1097 USING s0 s1 s2. s0 = p1. s1 = p0. s1 = mem_ld_i32( s1 + 4 ).
    mem_st_i32( iv_addr = s0 + 284 iv_val = s1 ).
  ELSE.
  ENDIF.
  s0 = p1. s1 = p1. s2 = 260. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). mem_st_i32( iv_addr = s0 + 280 iv_val = s1 ). s0 = l2. s1 = 80. PERFORM f908 USING s0 s1. s0 = l4. s1 = 16. s0 = s0 + s1. gv_g0 = s0.
ENDFORM.

FORM f501 USING p0 TYPE i CHANGING rv TYPE i.
  DATA l1 TYPE i. DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE i. DATA l8 TYPE int8. DATA l9 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i.
  DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i.
  DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA lv_br TYPE i. s0 = gv_g0.
  s1 = 16. s0 = s0 - s1. l4 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        s0 = p0. s0 = mem_ld_i32( s0 ). l3 = s0.
        IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = p0. s0 = mem_ld_i32( s0 + 8 ). l2 = s0. s1 = p0. s1 = mem_ld_i32( s1 + 4 ). l5 = s1.
        IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        DO 1 TIMES. " block
          s0 = l2. s1 = l3. s0 = s0 + s1. s0 = mem_ld_i32_8u( s0 ). s1 = 75. s0 = s0 - s1.
          CASE s0.
            WHEN 0. EXIT.
            WHEN 1. lv_br = 2. EXIT.
            WHEN OTHERS. lv_br = 1. EXIT.
          ENDCASE.
        ENDDO.
        s0 = p0. s1 = l2. s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = p0. s1 = 0. PERFORM f34 USING s0 s1 CHANGING s0. lv_br = 2. EXIT. " br 2
      ENDDO.
      s1 = p0. PERFORM f32 USING s1 CHANGING s1. lv_br = 1. EXIT. " br 1
    ENDDO.
    s2 = p0. s3 = l2. s4 = 1. s3 = s3 + s4. l1 = s3. mem_st_i32( iv_addr = s2 + 8 iv_val = s3 ).
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        s2 = l1. s3 = l5.
        IF zcl_wasm_rt=>lt_u32( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
        IF s2 <> 0.
          s2 = l1. s3 = l3. s2 = s2 + s3. s2 = mem_ld_i32_8u( s2 ). s3 = 95.
          IF s2 = s3. s2 = 1. ELSE. s2 = 0. ENDIF.
          IF s2 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        ELSE.
        ENDIF.
        s2 = l1. s3 = l5. s4 = l1. s5 = l5.
        IF zcl_wasm_rt=>gt_u32( iv_a = s4 iv_b = s5 ) = abap_true. s4 = 1. ELSE. s4 = 0. ENDIF.
        IF s4 <> 0. s2 = s2. ELSE. s2 = s3. ENDIF.
        l7 = s2.
        DO 1 TIMES. " block
          DO. " loop
            DO 1 TIMES. " block
              s2 = l1. s3 = l5.
              IF zcl_wasm_rt=>lt_u32( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
              IF s2 <> 0.
                s2 = l1. s3 = l3. s2 = s2 + s3. s2 = mem_ld_i32_8u( s2 ). s3 = 95.
                IF s2 = s3. s2 = 1. ELSE. s2 = 0. ENDIF.
                IF s2 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
              ELSE.
              ENDIF.
              s2 = l1. s3 = l7.
              IF s2 = s3. s2 = 1. ELSE. s2 = 0. ENDIF.
              IF s2 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
              DO 1 TIMES. " block
                s2 = l1. s3 = l3. s2 = s2 + s3. s2 = mem_ld_i32_8u( s2 ). l2 = s2. s3 = 48. s2 = s2 - s3. l6 = s2. s3 = 255. s2 = zcl_wasm_rt=>and32( iv_a = s2 iv_b = s3 ). s3 = 10.
                IF zcl_wasm_rt=>lt_u32( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
                IF s2 <> 0. EXIT. ENDIF. " br_if 0
                s2 = l2. s3 = 97. s2 = s2 - s3. s3 = 255. s2 = zcl_wasm_rt=>and32( iv_a = s2 iv_b = s3 ). s3 = 26.
                IF zcl_wasm_rt=>ge_u32( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
                IF s2 <> 0.
                  s2 = l2. s3 = 65. s2 = s2 - s3. s3 = 255. s2 = zcl_wasm_rt=>and32( iv_a = s2 iv_b = s3 ). s3 = 26.
                  IF zcl_wasm_rt=>ge_u32( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
                  IF s2 <> 0. lv_br = 4. EXIT. ENDIF. " br_if 4
                  s2 = l2. s3 = 29. s2 = s2 - s3. l6 = s2. lv_br = 1. EXIT. " br 1
                ELSE.
                ENDIF.
                s2 = l2. s3 = 87. s2 = s2 - s3. l6 = s2.
              ENDDO.
              s2 = p0. s3 = l1. s4 = 1. s3 = s3 + s4. l1 = s3. mem_st_i32( iv_addr = s2 + 8 iv_val = s3 ). s2 = l4. s3 = l8. s4 = 62. PERFORM f991 USING s2 s3 s4. s2 = l4. s2 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s2 + 8 ).
              s3 = 0.
              IF s2 <> s3. s2 = 1. ELSE. s2 = 0. ENDIF.
              IF s2 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
              s2 = l4. s2 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s2 + 0 ). l9 = s2. s3 = l6. s3 = zcl_wasm_rt=>extend_u32( s3 ). s4 = 255. s3 = zcl_wasm_rt=>and64( iv_a = s3 iv_b = s4 ). s2 = s2 + s3. l8 = s2. s3 = l9.
              IF zcl_wasm_rt=>ge_u64( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
              IF s2 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
              lv_br = 2. EXIT. " br 2
            ENDDO.
          ENDDO.
          s2 = p0. s3 = l1. s4 = 1. s3 = s3 + s4. mem_st_i32( iv_addr = s2 + 8 iv_val = s3 ). s2 = l8. s3 = 1. s2 = s2 + s3. l8 = s2. s3 = 0.
          IF s2 <> s3. s2 = 1. ELSE. s2 = 0. ENDIF.
          IF s2 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
        ENDDO.
        s2 = p0. s2 = mem_ld_i32( s2 + 16 ). l3 = s2.
        IF s2 <> 0.
          s2 = 1. s3 = l3. s4 = 1080396. s5 = 16. PERFORM f244 USING s3 s4 s5 CHANGING s3.
          IF s3 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
        ELSE.
        ENDIF.
        s2 = p0. s3 = 0. mem_st_i32_8( iv_addr = s2 + 4 iv_val = s3 ). s2 = p0. s3 = 0. mem_st_i32( iv_addr = s2 iv_val = s3 ). s2 = 0. lv_br = 2. EXIT. " br 2
      ENDDO.
      s3 = p0. s4 = l2. s5 = 2. s4 = s4 + s5. mem_st_i32( iv_addr = s3 + 8 iv_val = s4 ).
    ENDDO.
    s3 = p0. s4 = l8. PERFORM f843 USING s3 s4 CHANGING s3.
  ENDDO.
  s4 = l4. s5 = 16. s4 = s4 + s5. gv_g0 = s4. rv = s3.
ENDFORM.

FORM f502 USING p0 TYPE i p1 TYPE i.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE i. DATA l8 TYPE i. DATA l9 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i.
  DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i.
  DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA lv_br TYPE i. s0 = gv_g0.
  s1 = 16. s0 = s0 - s1. l4 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      s0 = p0. s1 = 80. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). l2 = s0. s0 = mem_ld_i32( s0 + 280 ). l3 = s0. s1 = 0.
      IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = l2. s1 = 256. s0 = s0 + s1. l5 = s0. s0 = l2. s0 = mem_ld_i32( s0 + 256 ). l6 = s0. s1 = l3. s0 = s0 + s1. l7 = s0. s0 = mem_ld_i32_8u( s0 ). l8 = s0. s1 = 199.
      IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = l8. s1 = 77.
        IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        s0 = l2. s1 = -1. mem_st_i32( iv_addr = s0 + 280 iv_val = s1 ). s0 = l2. s1 = 260. s0 = s0 + s1. s1 = l3. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l2. s1 = l2. s1 = mem_ld_i32( s1 + 284 ). s2 = p0. s2 = mem_ld_i32( s2 + 4 ).
        IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0.
          s1 = l5. s2 = 200. PERFORM f908 USING s1 s2. s1 = l4. s2 = p0. s2 = mem_ld_i32( s2 + 4 ). mem_st_i32( iv_addr = s1 + 8 iv_val = s2 ). s1 = l5. s2 = l4. s3 = 8. s2 = s2 + s3. s3 = 4. PERFORM f1097 USING s1 s2 s3. s1 = l2. s2 = p0.
          s2 = mem_ld_i32( s2 + 4 ). mem_st_i32( iv_addr = s1 + 284 iv_val = s2 ). s1 = l2. s1 = mem_ld_i32( s1 + 260 ).
        ELSE.
          s2 = l3.
        ENDIF.
        mem_st_i32( iv_addr = s1 + 280 iv_val = s2 ). s1 = l5. s2 = 77. PERFORM f908 USING s1 s2. s1 = p1. s2 = 228.
        IF s1 >= s2. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0.
          s1 = p0. s1 = mem_ld_i32( s1 ). s1 = mem_ld_i32( s1 + 16 ). s1 = mem_ld_i32( s1 + 56 ). s2 = p1. s3 = 2. s2 = zcl_wasm_rt=>shl32( iv_val = s2 iv_shift = s3 ). s1 = s1 + s2. s1 = mem_ld_i32( s1 ). l2 = s1. s2 = l2.
          s2 = mem_ld_i32( s2 ). s3 = 1. s2 = s2 + s3. mem_st_i32( iv_addr = s1 iv_val = s2 ).
        ELSE.
        ENDIF.
        s1 = p0. s2 = 80. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). s2 = l4. s3 = p1. mem_st_i32( iv_addr = s2 + 12 iv_val = s3 ). s2 = 256. s1 = s1 + s2. s2 = l4. s3 = 12. s2 = s2 + s3. s3 = 4. PERFORM f1097 USING s1 s2 s3.
        lv_br = 1. EXIT. " br 1
      ELSE.
      ENDIF.
      s1 = l6. s2 = l3. s3 = l7. s3 = mem_ld_i32( s3 + 1 ). s2 = s2 - s3. s3 = 1. s2 = s2 + s3. l7 = s2. s1 = s1 + s2. l3 = s1. s1 = mem_ld_i32_8u( s1 ). s2 = 86.
      IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      DO 1 TIMES. " block
        s1 = l3. s1 = mem_ld_i32( s1 + 1 ). l3 = s1. s2 = 228.
        IF s1 < s2. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0. EXIT. ENDIF. " br_if 0
        s1 = p0. s1 = mem_ld_i32( s1 ). s1 = mem_ld_i32( s1 + 16 ). l8 = s1. s1 = mem_ld_i32( s1 + 56 ). s2 = l3. s3 = 2. s2 = zcl_wasm_rt=>shl32( iv_val = s2 iv_shift = s3 ). s1 = s1 + s2. s1 = mem_ld_i32( s1 ). l3 = s1. s2 = l3.
        s2 = mem_ld_i32( s2 ). l9 = s2. s3 = 1. s2 = s2 - s3. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = l9. s2 = 1.
        IF s1 > s2. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0. EXIT. ENDIF. " br_if 0
        s1 = l8. s2 = l3. PERFORM f713 USING s1 s2. s1 = l5. s1 = mem_ld_i32( s1 ). l6 = s1.
      ENDDO.
      s1 = p1. s2 = 228.
      IF s1 >= s2. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0.
        s1 = p0. s1 = mem_ld_i32( s1 ). s1 = mem_ld_i32( s1 + 16 ). s1 = mem_ld_i32( s1 + 56 ). s2 = p1. s3 = 2. s2 = zcl_wasm_rt=>shl32( iv_val = s2 iv_shift = s3 ). s1 = s1 + s2. s1 = mem_ld_i32( s1 ). p0 = s1. s2 = p0.
        s2 = mem_ld_i32( s2 ). s3 = 1. s2 = s2 + s3. mem_st_i32( iv_addr = s1 iv_val = s2 ).
      ELSE.
      ENDIF.
      s1 = l2. s2 = -1. mem_st_i32( iv_addr = s1 + 280 iv_val = s2 ). s1 = l6. s2 = l7. s1 = s1 + s2. s2 = p1. mem_st_i32( iv_addr = s1 + 1 iv_val = s2 ).
    ENDDO.
    s1 = l4. s2 = 16. s1 = s1 + s2. gv_g0 = s1.
    RETURN.
  ENDDO.
  s1 = 1138135. s2 = 1148333. s3 = 22828. s4 = 1144995. PERFORM f1101 USING s1 s2 s3 s4.
  RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
ENDFORM.

FORM f503 USING p0 TYPE i p1 TYPE int8 CHANGING rv TYPE i.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i.
  DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i.
  DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA lv_br TYPE i. s0 = p1. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). l2 = s0.
  DO 1 TIMES. " block
    s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l3 = s0. s1 = 0.
    IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l2.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l3. s1 = -2147483648. s0 = zcl_wasm_rt=>or32( iv_a = s0 iv_b = s1 ). rv = s0. RETURN.
  ENDDO.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        s0 = l2. s1 = -8.
        IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = p0. s0 = mem_ld_i32( s0 + 16 ). l4 = s0. s0 = l3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 4 ). p1 = s0. s1 = -4611686018427387905.
          IF zcl_wasm_rt=>gt_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0.
            s0 = l3. s0 = mem_ld_i32( s0 + 12 ). l2 = s0. lv_br = 2. EXIT. " br 2
          ELSE.
          ENDIF.
          s0 = l4. s0 = mem_ld_i32( s0 + 56 ). l5 = s0. s1 = l4. s1 = mem_ld_i32( s1 + 52 ). s2 = p1. s3 = 32. s2 = zcl_wasm_rt=>shr_u64( iv_val = s2 iv_shift = s3 ). s2 = zcl_wasm_rt=>wrap_i64( s2 ). s3 = l4. s3 = mem_ld_i32( s3 + 36 ).
          s4 = 1. s3 = s3 - s4. s2 = zcl_wasm_rt=>and32( iv_a = s2 iv_b = s3 ). s3 = 2. s2 = zcl_wasm_rt=>shl32( iv_val = s2 iv_shift = s3 ). s1 = s1 + s2. s1 = mem_ld_i32( s1 ). l2 = s1. s2 = 2.
          s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s0 = mem_ld_i32( s0 ). p0 = s0. s1 = l3.
          IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          DO. " loop
            s0 = l2.
            IF s0 <> 0.
              s0 = l3. s1 = l5. s2 = p0. s2 = mem_ld_i32( s2 + 12 ). l2 = s2. s3 = 2. s2 = zcl_wasm_rt=>shl32( iv_val = s2 iv_shift = s3 ). s1 = s1 + s2. s1 = mem_ld_i32( s1 ). p0 = s1.
              IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
              lv_br = 3. EXIT. " br 3
            ELSE.
            ENDIF.
          ENDDO.
          lv_br = 3. EXIT. " br 3
        ELSE.
        ENDIF.
        s0 = p0. s1 = p1. s2 = 1. PERFORM f341 USING s0 s1 s2 CHANGING s0. p1 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). l6 = s0. s1 = 25769803776.
        IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = 0. rv = s0. RETURN.
        ELSE.
        ENDIF.
        s0 = l6. s1 = -34359738368.
        IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l3 = s0. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 4 ). p1 = s0. s1 = -4611686018427387905.
          IF zcl_wasm_rt=>gt_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0.
            s0 = l3. s0 = mem_ld_i32( s0 + 12 ). rv = s0. RETURN.
          ELSE.
          ENDIF.
          s0 = p0. s1 = 16. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). p0 = s0. s0 = mem_ld_i32( s0 + 56 ). l4 = s0. s1 = p0. s1 = mem_ld_i32( s1 + 52 ). s2 = p1. s3 = 32. s2 = zcl_wasm_rt=>shr_u64( iv_val = s2 iv_shift = s3 ).
          s2 = zcl_wasm_rt=>wrap_i64( s2 ). s3 = p0. s3 = mem_ld_i32( s3 + 36 ). s4 = 1. s3 = s3 - s4. s2 = zcl_wasm_rt=>and32( iv_a = s2 iv_b = s3 ). s3 = 2. s2 = zcl_wasm_rt=>shl32( iv_val = s2 iv_shift = s3 ). s1 = s1 + s2.
          s1 = mem_ld_i32( s1 ). l2 = s1. s2 = 2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s0 = mem_ld_i32( s0 ). p0 = s0. s1 = l3.
          IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
          DO. " loop
            s0 = l2.
            IF s0 <> 0.
              s0 = l3. s1 = l4. s2 = p0. s2 = mem_ld_i32( s2 + 12 ). l2 = s2. s3 = 2. s2 = zcl_wasm_rt=>shl32( iv_val = s2 iv_shift = s3 ). s1 = s1 + s2. s1 = mem_ld_i32( s1 ). p0 = s1.
              IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
              lv_br = 4. EXIT. " br 4
            ELSE.
            ENDIF.
          ENDDO.
          lv_br = 3. EXIT. " br 3
        ELSE.
        ENDIF.
        s0 = p0. s1 = 16. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). s1 = p1. s1 = zcl_wasm_rt=>wrap_i64( s1 ). PERFORM f544 USING s0 s1 CHANGING s0. l2 = s0. lv_br = 1. EXIT. " br 1
      ENDDO.
      s0 = l2. s1 = 228.
      IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = l4. s0 = mem_ld_i32( s0 + 56 ). s1 = l2. s2 = 2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s0 = mem_ld_i32( s0 ). p0 = s0. s1 = p0. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2.
      mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l2. rv = s0. RETURN.
    ENDDO.
    s0 = l2. rv = s0. RETURN.
  ENDDO.
  s0 = 1152235. s1 = 1148333. s2 = 2697. s3 = 1135303. PERFORM f1101 USING s0 s1 s2 s3.
  RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
ENDFORM.

FORM f504 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i CHANGING rv TYPE int8.
  DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE int8. DATA l7 TYPE int8. DATA l8 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i.
  DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i.
  DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i. DATA s36 TYPE i.
  DATA s37 TYPE i. DATA s38 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l4 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    s0 = p0. s1 = p1. s2 = p1. s3 = p2. s4 = p3. s5 = 2. PERFORM f557 USING s0 s1 s2 s3 s4 s5 CHANGING s0. p1 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 25769803776.
    IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p1. l6 = s0. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        s0 = p1. s1 = -4294967296.
        IF zcl_wasm_rt=>ge_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l5 = s0. s0 = mem_ld_i32_16u( s0 + 6 ). s1 = 21. s0 = s0 - s1. s1 = 65535. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = 11.
          IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        ELSE.
        ENDIF.
        s0 = l4. s1 = 1135229. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s1 = 1139205. s2 = l4. PERFORM f970 USING s0 s1 s2 CHANGING s0. lv_br = 1. EXIT. " br 1
      ENDDO.
      s0 = l5. s1 = 32. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). s1 = 12. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). s1 = 32. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). s1 = 4. s0 = s0 + s1. s0 = mem_ld_i32_8u( s0 ).
      IF s0 <> 0.
        s0 = p0. s1 = 1148080. s2 = 0. PERFORM f970 USING s0 s1 s2 CHANGING s0. lv_br = 1. EXIT. " br 1
      ELSE.
      ENDIF.
      s0 = l5. s1 = 40. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). l5 = s0. s1 = 0.
      IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p2. s1 = 1.
      IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = p1. l6 = s0. lv_br = 2. EXIT. " br 2
      ELSE.
      ENDIF.
      s0 = p3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). l6 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). p2 = s0. s1 = -11.
      IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = l6. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p3 = s0. s1 = p3. s1 = mem_ld_i32( s1 ). s2 = 2. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
      ELSE.
      ENDIF.
      DO 1 TIMES. " block
        s0 = p0. s1 = l4. s2 = 8. s1 = s1 + s2. s2 = l6. PERFORM f719 USING s0 s1 s2 CHANGING s0. p3 = s0.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = l4. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 8 ). l8 = s0. s1 = 0.
        IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = 9007199254740991. l7 = s0. s0 = l8. s1 = 9007199254740992.
          IF zcl_wasm_rt=>lt_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        ELSE.
        ENDIF.
        s0 = l4. s1 = l7. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 8 CHANGING cv_mem = mv_mem ).
      ENDDO.
      DO 1 TIMES. " block
        s0 = p2. s1 = -11.
        IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = l6. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p2 = s0. s1 = p2. s1 = mem_ld_i32( s1 ). p2 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p2. s1 = 1.
        IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = l6. PERFORM f453 USING s0 s1.
      ENDDO.
      s0 = p3.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = l4. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 8 ). s1 = l5. s1 = zcl_wasm_rt=>extend_u32( s1 ).
      IF s0 <= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = p1. l6 = s0. lv_br = 2. EXIT. " br 2
      ELSE.
      ENDIF.
      s0 = p0. s1 = 1142559. s2 = 0. PERFORM f970 USING s0 s1 s2 CHANGING s0.
    ENDDO.
    s0 = 25769803776. l6 = s0. s0 = p1. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
    IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p2 = s0. s1 = p2. s1 = mem_ld_i32( s1 ). p2 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p2. s1 = 1.
    IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = p1. PERFORM f453 USING s0 s1.
  ENDDO.
  s0 = l4. s1 = 16. s0 = s0 + s1. gv_g0 = s0. s0 = l6. rv = s0.
ENDFORM.

FORM f505 USING p0 TYPE i p1 TYPE int8 p2 TYPE i CHANGING rv TYPE int8.
  DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE int8. DATA l7 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i.
  DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i.
  DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          DO 1 TIMES. " block
            DO 1 TIMES. " block
              s0 = p0. s0 = mem_ld_i32( s0 + 16 ). l3 = s0. s1 = 224. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). s1 = p0. s1 = mem_ld_i32( s1 + 40 ). s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 8 ). l6 = s1.
              s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = 0. s3 = l6. s4 = -4294967297.
              IF zcl_wasm_rt=>gt_u64( iv_a = s3 iv_b = s4 ) = abap_true. s3 = 1. ELSE. s3 = 0. ENDIF.
              IF s3 <> 0. s1 = s1. ELSE. s1 = s2. ENDIF.
              l4 = s1. s2 = -1640562687. s1 = s1 * s2. s2 = 1640562687. s1 = s1 - s2. l5 = s1. s2 = 32. s3 = l3. s4 = 212. s3 = s3 + s4. s3 = mem_ld_i32( s3 ). s2 = s2 - s3. s1 = zcl_wasm_rt=>shr_u32( iv_val = s1 iv_shift = s2 ). s2 = 2.
              s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s0 = mem_ld_i32( s0 ). l3 = s0.
              IF s0 <> 0.
                DO. " loop
                  DO 1 TIMES. " block
                    s0 = l3. s0 = mem_ld_i32( s0 + 20 ). s1 = l5.
                    IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                    IF s0 <> 0. EXIT. ENDIF. " br_if 0
                    s0 = l3. s0 = mem_ld_i32( s0 + 44 ). s1 = l4.
                    IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                    IF s0 <> 0. EXIT. ENDIF. " br_if 0
                    s0 = l3. s0 = mem_ld_i32( s0 + 32 ).
                    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
                    IF s0 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
                  ENDDO.
                  s0 = l3. s0 = mem_ld_i32( s0 + 40 ). l3 = s0.
                  IF s0 <> 0. EXIT. ENDIF. " br_if 0
                ENDDO.
              ELSE.
              ENDIF.
              s0 = p0. s1 = l4. s2 = 2. PERFORM f436 USING s0 s1 s2 CHANGING s0. l3 = s0.
              IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
              s0 = 25769803776. lv_br = 2. EXIT. " br 2
            ENDDO.
            s1 = l3. s2 = l3. s2 = mem_ld_i32( s2 ). s3 = 1. s2 = s2 + s3. mem_st_i32( iv_addr = s1 iv_val = s2 ).
          ENDDO.
          s1 = p0. s2 = l3. s3 = 1. PERFORM f408 USING s1 s2 s3 CHANGING s1. l6 = s1. s2 = -4294967296. s1 = zcl_wasm_rt=>and64( iv_a = s1 iv_b = s2 ). s2 = 25769803776.
          IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
          IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          s1 = l6.
        ENDDO.
        l7 = s1. s1 = p1. s2 = 32. s1 = zcl_wasm_rt=>shr_u64( iv_val = s1 iv_shift = s2 ). s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = -11.
        IF zcl_wasm_rt=>lt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
        s1 = p1. s1 = zcl_wasm_rt=>wrap_i64( s1 ). p2 = s1. s2 = p2. s2 = mem_ld_i32( s2 ). p2 = s2. s3 = 1. s2 = s2 - s3. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = p2. s2 = 2.
        IF s1 < s2. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        lv_br = 2. EXIT. " br 2
      ENDDO.
      s1 = p0. s2 = l6. s3 = 66. s4 = p1. s5 = 12884901888. s6 = 12884901888. s7 = 9991. PERFORM f37 USING s1 s2 s3 s4 s5 s6 s7 CHANGING s1. l3 = s1.
      DO 1 TIMES. " block
        s1 = p1. s2 = 32. s1 = zcl_wasm_rt=>shr_u64( iv_val = s1 iv_shift = s2 ). s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = -11.
        IF zcl_wasm_rt=>lt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0. EXIT. ENDIF. " br_if 0
        s1 = p1. s1 = zcl_wasm_rt=>wrap_i64( s1 ). l4 = s1. s2 = l4. s2 = mem_ld_i32( s2 ). l4 = s2. s3 = 1. s2 = s2 - s3. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = l4. s2 = 1.
        IF s1 > s2. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0. EXIT. ENDIF. " br_if 0
        s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s2 = p1. PERFORM f453 USING s1 s2.
      ENDDO.
      DO 1 TIMES. " block
        s1 = l3. s2 = 0.
        IF s1 < s2. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0. EXIT. ENDIF. " br_if 0
        s1 = p0. s2 = l6. s3 = 107. s4 = p2. s5 = 0.
        IF s4 <> s5. s4 = 1. ELSE. s4 = 0. ENDIF.
        s4 = zcl_wasm_rt=>extend_u32( s4 ). s5 = 4294967296. s4 = zcl_wasm_rt=>or64( iv_a = s4 iv_b = s5 ). s5 = 12884901888. s6 = 12884901888. s7 = 9991. PERFORM f37 USING s1 s2 s3 s4 s5 s6 s7 CHANGING s1. s2 = 0.
        IF s1 < s2. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0. EXIT. ENDIF. " br_if 0
        s1 = l6. rv = s1. RETURN.
      ENDDO.
      s1 = 25769803776. l7 = s1. s1 = l6. s2 = 32. s1 = zcl_wasm_rt=>shr_u64( iv_val = s1 iv_shift = s2 ). s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = -11.
      IF zcl_wasm_rt=>lt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s1 = l6. s1 = zcl_wasm_rt=>wrap_i64( s1 ). p2 = s1. s2 = p2. s2 = mem_ld_i32( s2 ). p2 = s2. s3 = 1. s2 = s2 - s3. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = l6. p1 = s1. s1 = p2. s2 = 1.
      IF s1 > s2. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
    ENDDO.
    s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s2 = p1. PERFORM f453 USING s1 s2.
  ENDDO.
  s1 = l7. rv = s1.
ENDFORM.

FORM f506 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i CHANGING rv TYPE int8.
  DATA l4 TYPE i. DATA l5 TYPE int8. DATA l6 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i.
  DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i.
  DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i. DATA s36 TYPE i. DATA lv_br TYPE i. s0 = gv_g0.
  s1 = 80. s0 = s0 - s1. l4 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        s0 = p1. s1 = -4294967296.
        IF zcl_wasm_rt=>lt_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p2 = s0. s0 = mem_ld_i32_16u( s0 + 6 ). s1 = 49.
        IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = p2. s0 = mem_ld_i32( s0 + 32 ).
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      ENDDO.
      s0 = l4. s1 = p0. s2 = 16. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). p2 = s1. s2 = l4. s3 = 16. s2 = s2 + s3. s3 = p2. s3 = mem_ld_i32( s3 + 68 ). s4 = 1180. s3 = s3 + s4. s3 = mem_ld_i32( s3 ). PERFORM f410 USING s1 s2 s3 CHANGING s1.
      mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s1 = 1147410. s2 = l4. PERFORM f970 USING s0 s1 s2 CHANGING s0. s0 = 25769803776. l5 = s0. lv_br = 1. EXIT. " br 1
    ENDDO.
    s0 = p0. s1 = p1. s2 = 12884901888. PERFORM f592 USING s0 s1 s2 CHANGING s0. l5 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 25769803776.
    IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s1 = l4. s2 = 16. s1 = s1 + s2. s2 = l5. PERFORM f366 USING s0 s1 s2 CHANGING s0. l6 = s0.
    DO 1 TIMES. " block
      s0 = l5. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
      IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = l5. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p2 = s0. s1 = p2. s1 = mem_ld_i32( s1 ). p2 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p2. s1 = 1.
      IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = l5. PERFORM f453 USING s0 s1.
    ENDDO.
    s0 = l6. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 25769803776.
    IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = l6. l5 = s0. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = p0. s1 = p1. s2 = p3. s3 = l4. s4 = 16. s3 = s3 + s4. PERFORM f102 USING s0 s1 s2 s3 CHANGING s0.
    DO 1 TIMES. " block
      s1 = l4. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 16 ). p1 = s1. s2 = 32. s1 = zcl_wasm_rt=>shr_u64( iv_val = s1 iv_shift = s2 ). s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = -11.
      IF zcl_wasm_rt=>lt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. EXIT. ENDIF. " br_if 0
      s1 = p1. s1 = zcl_wasm_rt=>wrap_i64( s1 ). p2 = s1. s2 = p2. s2 = mem_ld_i32( s2 ). p2 = s2. s3 = 1. s2 = s2 - s3. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = p2. s2 = 1.
      IF s1 > s2. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. EXIT. ENDIF. " br_if 0
      s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s2 = p1. PERFORM f453 USING s1 s2.
    ENDDO.
    DO 1 TIMES. " block
      s1 = l4. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 24 ). p1 = s1. s2 = 32. s1 = zcl_wasm_rt=>shr_u64( iv_val = s1 iv_shift = s2 ). s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = -11.
      IF zcl_wasm_rt=>lt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. EXIT. ENDIF. " br_if 0
      s1 = p1. s1 = zcl_wasm_rt=>wrap_i64( s1 ). p2 = s1. s2 = p2. s2 = mem_ld_i32( s2 ). p2 = s2. s3 = 1. s2 = s2 - s3. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = p2. s2 = 1.
      IF s1 > s2. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. EXIT. ENDIF. " br_if 0
      s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s2 = p1. PERFORM f453 USING s1 s2.
    ENDDO.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = l6. l5 = s0. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = 25769803776. l5 = s0. s0 = l6. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
    IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l6. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p2 = s0. s1 = p2. s1 = mem_ld_i32( s1 ). p2 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p2. s1 = 1.
    IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = l6. PERFORM f453 USING s0 s1.
  ENDDO.
  s0 = l4. s1 = 80. s0 = s0 + s1. gv_g0 = s0. s0 = l5. rv = s0.
ENDFORM.

FORM f507 USING p0 TYPE i p1 TYPE i p2 TYPE int8 p3 TYPE int8 CHANGING rv TYPE i.
  DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE int8. DATA l7 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i.
  DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i.
  DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i. DATA s36 TYPE i. DATA s37 TYPE i.
  DATA s38 TYPE i. DATA s39 TYPE i. DATA s40 TYPE i. DATA s41 TYPE i. DATA s42 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      s0 = p0. s1 = p2. s2 = 1. PERFORM f210 USING s0 s1 s2 CHANGING s0. p2 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). l6 = s0. s1 = 25769803776.
      IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = -1. p1 = s0. s0 = p3. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
        IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
        s0 = p3. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l4 = s0. s1 = l4. s1 = mem_ld_i32( s1 ). l4 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l4. s1 = 2.
        IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        lv_br = 2. EXIT. " br 2
      ELSE.
      ENDIF.
      s0 = p0. s1 = p3. s2 = 1. PERFORM f210 USING s0 s1 s2 CHANGING s0. p3 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). l7 = s0. s1 = 25769803776.
      IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = -1. p1 = s0. s0 = p2. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
        IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
        s0 = p2. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l4 = s0. s1 = l4. s1 = mem_ld_i32( s1 ). l4 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p2. p3 = s0. s0 = l4. s1 = 2.
        IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        lv_br = 2. EXIT. " br 2
      ELSE.
      ENDIF.
      s0 = l6. s1 = -47244640256.
      IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = p2. s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = 4. s0 = s0 + s1.
      ELSE.
        s1 = p0. s2 = 1147476. s3 = 0. PERFORM f970 USING s1 s2 s3 CHANGING s1. s1 = 0.
      ENDIF.
      l4 = s1. s1 = l7. s2 = -47244640256.
      IF s1 = s2. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0.
        s1 = p3. s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = 4. s1 = s1 + s2.
      ELSE.
        s2 = p0. s3 = 1147476. s4 = 0. PERFORM f970 USING s2 s3 s4 CHANGING s2. s2 = 0.
      ENDIF.
      l5 = s2.
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          DO 1 TIMES. " block
            DO 1 TIMES. " block
              DO 1 TIMES. " block
                DO 1 TIMES. " block
                  DO 1 TIMES. " block
                    s2 = p1. s3 = 164. s2 = s2 - s3.
                    CASE s2.
                      WHEN 0. lv_br = 5. EXIT.
                      WHEN 1. EXIT.
                      WHEN 2. lv_br = 1. EXIT.
                      WHEN 3. lv_br = 2. EXIT.
                      WHEN 4. lv_br = 4. EXIT.
                      WHEN 5. lv_br = 4. EXIT.
                      WHEN 6. lv_br = 3. EXIT.
                      WHEN OTHERS. lv_br = 4. EXIT.
                    ENDCASE.
                  ENDDO.
                  s2 = l4. s3 = l5. PERFORM f618 USING s2 s3 CHANGING s2. s3 = 0.
                  IF s2 <= s3. s2 = 1. ELSE. s2 = 0. ENDIF.
                  lv_br = 5. EXIT. " br 5
                ENDDO.
                s3 = l5. s4 = l4. PERFORM f618 USING s3 s4 CHANGING s3. s4 = 31. s3 = zcl_wasm_rt=>shr_u32( iv_val = s3 iv_shift = s4 ). lv_br = 4. EXIT. " br 4
              ENDDO.
              s4 = l5. s5 = l4. PERFORM f618 USING s4 s5 CHANGING s4. s5 = 0.
              IF s4 <= s5. s4 = 1. ELSE. s4 = 0. ENDIF.
              lv_br = 3. EXIT. " br 3
            ENDDO.
            s5 = l4. s6 = l5. PERFORM f618 USING s5 s6 CHANGING s5.
            IF s5 = 0. s5 = 1. ELSE. s5 = 0. ENDIF.
            lv_br = 2. EXIT. " br 2
          ENDDO.
          RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
        ENDDO.
        s6 = l4. s7 = l5. PERFORM f618 USING s6 s7 CHANGING s6. s7 = 31. s6 = zcl_wasm_rt=>shr_u32( iv_val = s6 iv_shift = s7 ).
      ENDDO.
      p1 = s6.
      DO 1 TIMES. " block
        s6 = p2. s7 = 32. s6 = zcl_wasm_rt=>shr_u64( iv_val = s6 iv_shift = s7 ). s6 = zcl_wasm_rt=>wrap_i64( s6 ). s7 = -11.
        IF zcl_wasm_rt=>lt_u32( iv_a = s6 iv_b = s7 ) = abap_true. s6 = 1. ELSE. s6 = 0. ENDIF.
        IF s6 <> 0. EXIT. ENDIF. " br_if 0
        s6 = p2. s6 = zcl_wasm_rt=>wrap_i64( s6 ). l4 = s6. s7 = l4. s7 = mem_ld_i32( s7 ). l4 = s7. s8 = 1. s7 = s7 - s8. mem_st_i32( iv_addr = s6 iv_val = s7 ). s6 = l4. s7 = 1.
        IF s6 > s7. s6 = 1. ELSE. s6 = 0. ENDIF.
        IF s6 <> 0. EXIT. ENDIF. " br_if 0
        s6 = p0. s6 = mem_ld_i32( s6 + 16 ). s7 = p2. PERFORM f453 USING s6 s7.
      ENDDO.
      s6 = p3. s7 = 32. s6 = zcl_wasm_rt=>shr_u64( iv_val = s6 iv_shift = s7 ). s6 = zcl_wasm_rt=>wrap_i64( s6 ). s7 = -11.
      IF zcl_wasm_rt=>lt_u32( iv_a = s6 iv_b = s7 ) = abap_true. s6 = 1. ELSE. s6 = 0. ENDIF.
      IF s6 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s6 = p3. s6 = zcl_wasm_rt=>wrap_i64( s6 ). l4 = s6. s7 = l4. s7 = mem_ld_i32( s7 ). l4 = s7. s8 = 1. s7 = s7 - s8. mem_st_i32( iv_addr = s6 iv_val = s7 ). s6 = l4. s7 = 1.
      IF s6 > s7. s6 = 1. ELSE. s6 = 0. ENDIF.
      IF s6 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
    ENDDO.
    s6 = p0. s6 = mem_ld_i32( s6 + 16 ). s7 = p3. PERFORM f453 USING s6 s7.
  ENDDO.
  s6 = p1. rv = s6.
ENDFORM.

FORM f508 USING p0 TYPE i p1 TYPE int8 p2 TYPE i CHANGING rv TYPE int8.
  DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i.
  DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i.
  DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      s0 = p1. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 12884901888.
      IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = p0. s0 = mem_ld_i32( s0 + 40 ). s1 = p2. s2 = 3. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). l7 = s0. s1 = 32.
        s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -12.
        IF zcl_wasm_rt=>gt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        lv_br = 2. EXIT. " br 2
      ELSE.
      ENDIF.
      s0 = p0. s1 = p1. s2 = 61. s3 = p1. s4 = 0. PERFORM f192 USING s0 s1 s2 s3 s4 CHANGING s0. l7 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 25769803776.
      IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = l7. rv = s0. RETURN.
      ELSE.
      ENDIF.
      s0 = l7. s1 = -4294967297.
      IF zcl_wasm_rt=>gt_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      DO 1 TIMES. " block
        s0 = l7. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
        IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = l7. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l3 = s0. s1 = l3. s1 = mem_ld_i32( s1 ). l3 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l3. s1 = 1.
        IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = l7. PERFORM f453 USING s0 s1.
      ENDDO.
      s0 = p0. s1 = p1. PERFORM f996 USING s0 s1 CHANGING s0. l3 = s0.
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = 25769803776. rv = s0. RETURN.
      ELSE.
      ENDIF.
      s0 = l3. s0 = mem_ld_i32( s0 + 40 ). s1 = p2. s2 = 3. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). l7 = s0. s1 = 32.
      s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
      IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
    ENDDO.
    s0 = l7. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l3 = s0. s1 = l3. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
  ENDDO.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        s0 = p0. s0 = mem_ld_i32( s0 + 16 ). l3 = s0. s1 = 224. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). s1 = l7. s1 = zcl_wasm_rt=>wrap_i64( s1 ). l4 = s1. s2 = 0. s3 = l7. s4 = -4294967297.
        IF zcl_wasm_rt=>gt_u64( iv_a = s3 iv_b = s4 ) = abap_true. s3 = 1. ELSE. s3 = 0. ENDIF.
        IF s3 <> 0. s1 = s1. ELSE. s1 = s2. ENDIF.
        l5 = s1. s2 = -1640562687. s1 = s1 * s2. s2 = 1640562687. s1 = s1 - s2. l6 = s1. s2 = 32. s3 = l3. s4 = 212. s3 = s3 + s4. s3 = mem_ld_i32( s3 ). s2 = s2 - s3. s1 = zcl_wasm_rt=>shr_u32( iv_val = s1 iv_shift = s2 ). s2 = 2.
        s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s0 = mem_ld_i32( s0 ). l3 = s0.
        IF s0 <> 0.
          DO. " loop
            DO 1 TIMES. " block
              s0 = l3. s0 = mem_ld_i32( s0 + 20 ). s1 = l6.
              IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0. EXIT. ENDIF. " br_if 0
              s0 = l3. s0 = mem_ld_i32( s0 + 44 ). s1 = l5.
              IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0. EXIT. ENDIF. " br_if 0
              s0 = l3. s0 = mem_ld_i32( s0 + 32 ).
              IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
            ENDDO.
            s0 = l3. s0 = mem_ld_i32( s0 + 40 ). l3 = s0.
            IF s0 <> 0. EXIT. ENDIF. " br_if 0
          ENDDO.
        ELSE.
        ENDIF.
        s0 = p0. s1 = l5. s2 = 2. PERFORM f436 USING s0 s1 s2 CHANGING s0. l3 = s0.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        s0 = 25769803776. lv_br = 2. EXIT. " br 2
      ENDDO.
      s1 = l3. s2 = l3. s2 = mem_ld_i32( s2 ). s3 = 1. s2 = s2 + s3. mem_st_i32( iv_addr = s1 iv_val = s2 ).
    ENDDO.
    s1 = p0. s2 = l3. s3 = p2. PERFORM f408 USING s1 s2 s3 CHANGING s1.
  ENDDO.
  DO 1 TIMES. " block
    s2 = l7. s3 = 32. s2 = zcl_wasm_rt=>shr_u64( iv_val = s2 iv_shift = s3 ). s2 = zcl_wasm_rt=>wrap_i64( s2 ). s3 = -11.
    IF zcl_wasm_rt=>lt_u32( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
    IF s2 <> 0. EXIT. ENDIF. " br_if 0
    s2 = l4. s3 = l4. s3 = mem_ld_i32( s3 ). p2 = s3. s4 = 1. s3 = s3 - s4. mem_st_i32( iv_addr = s2 iv_val = s3 ). s2 = p2. s3 = 1.
    IF s2 > s3. s2 = 1. ELSE. s2 = 0. ENDIF.
    IF s2 <> 0. EXIT. ENDIF. " br_if 0
    s2 = p0. s2 = mem_ld_i32( s2 + 16 ). s3 = l7. PERFORM f453 USING s2 s3.
  ENDDO.
  rv = s1.
ENDFORM.

FORM f509 USING p0 TYPE i p1 TYPE int8 p2 TYPE int8 p3 TYPE i p4 TYPE i p5 TYPE i CHANGING rv TYPE int8.
  DATA l6 TYPE i. DATA l7 TYPE i. DATA l8 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i.
  DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i.
  DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i. DATA s36 TYPE i. DATA s37 TYPE i. DATA s38 TYPE i.
  DATA s39 TYPE i. DATA s40 TYPE i. DATA s41 TYPE i. DATA s42 TYPE i. DATA s43 TYPE i. DATA s44 TYPE i. DATA s45 TYPE i. DATA s46 TYPE i. DATA s47 TYPE i. DATA s48 TYPE i. DATA s49 TYPE i. DATA s50 TYPE i. DATA s51 TYPE i. DATA s52 TYPE i.
  DATA s53 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      s0 = p0. s0 = mem_ld_i32( s0 + 16 ). p5 = s0. s1 = 16. s0 = s0 + s1. s1 = 20. s2 = p5. s2 = mem_ld_i32( s2 ).
      DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
      s0 = dispatch_t7( iv_idx = lv_ci_func p0 = s0 p1 = s1 ). p5 = s0.
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = 25769803776. p1 = s0. s0 = p0. s0 = mem_ld_i32( s0 + 16 ). p3 = s0. s0 = mem_ld_i32_8u( s0 + 136 ).
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        s0 = p3. s1 = 1. mem_st_i32_8( iv_addr = s0 + 136 iv_val = s1 ). s0 = p0. s1 = 1134898. s2 = 0. PERFORM f969 USING s0 s1 s2 CHANGING s0. s0 = p3. s1 = 0. mem_st_i32_8( iv_addr = s0 + 136 iv_val = s1 ). s0 = 25769803776.
        rv = s0. RETURN.
      ELSE.
      ENDIF.
      s0 = p5. s1 = 0. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ). s0 = p5. s1 = 8. s0 = s0 + s1. l6 = s0. s1 = 0. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p5. s1 = 16. s0 = s0 + s1.
      s1 = p5. s2 = 12. s1 = s1 + s2. l7 = s1. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p5. s1 = l7. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = l6. s1 = p0. s2 = p1. s3 = p2. s4 = p3. s5 = p4.
      PERFORM f228 USING s1 s2 s3 s4 s5 CHANGING s1. p3 = s1. mem_st_i32( iv_addr = s0 iv_val = s1 ).
      DO 1 TIMES. " block
        s0 = p3.
        IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = p3. s0 = mem_ld_i32( s0 + 32 ).
        IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
        s0 = p0. s0 = mem_ld_i32( s0 + 16 ). p4 = s0.
        DO 1 TIMES. " block
          s0 = p0. s1 = p3. s1 = zcl_wasm_rt=>extend_u32( s1 ). s2 = p3. s2 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s2 + 16 ). s3 = 12884901888. s4 = p3. s4 = mem_ld_i32( s4 + 24 ). s5 = p3. s6 = 72. s5 = s5 + s6.
          s5 = mem_ld_i32( s5 ). s6 = 4. PERFORM f0 USING s0 s1 s2 s3 s4 s5 s6 CHANGING s0. l8 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). p2 = s0. s1 = 25769803776.
          IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0.
            s0 = p2. s1 = 12884901888.
            IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
            s0 = p3. s1 = 100. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). s1 = 8. s0 = s0 - s1. l6 = s0. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). l8 = s0. s0 = l6. s1 = 12884901888.
            zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ). s0 = l8. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). p2 = s0.
          ELSE.
          ENDIF.
          s0 = p3. s1 = 1. mem_st_i32( iv_addr = s0 + 32 iv_val = s1 ). s0 = p4. s1 = p3. s2 = 56. s1 = s1 + s2. PERFORM f538 USING s0 s1. s0 = p4. s1 = p3. PERFORM f685 USING s0 s1.
        ENDDO.
        s0 = p2. s1 = 25769803776.
        IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        DO 1 TIMES. " block
          s0 = l8. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
          IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = l8. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p3 = s0. s1 = p3. s1 = mem_ld_i32( s1 ). p3 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p3. s1 = 1.
          IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = l8. PERFORM f453 USING s0 s1.
        ENDDO.
        s0 = p0. s1 = p1. s2 = 57. PERFORM f508 USING s0 s1 s2 CHANGING s0. p1 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 25769803776.
        IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = p5. s1 = p1. s1 = zcl_wasm_rt=>wrap_i64( s1 ). p0 = s1. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p1. s1 = -4294967296.
        IF zcl_wasm_rt=>lt_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        s0 = p0. s1 = p5. mem_st_i32( iv_addr = s0 + 32 iv_val = s1 ). s0 = p1. rv = s0. RETURN.
      ENDDO.
      s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = p5. PERFORM f428 USING s0 s1. s0 = 25769803776. p1 = s0.
    ENDDO.
    s0 = p1. rv = s0. RETURN.
  ENDDO.
  s0 = 1147393. s1 = 1148333. s2 = 19044. s3 = 1144919. PERFORM f1101 USING s0 s1 s2 s3.
  RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
ENDFORM.

FORM f510 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i CHANGING rv TYPE int8.
  DATA l4 TYPE i. DATA l5 TYPE int8. DATA l6 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i.
  DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i.
  DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i. DATA s36 TYPE i. DATA s37 TYPE i. DATA s38 TYPE i.
  DATA s39 TYPE i. DATA s40 TYPE i. DATA s41 TYPE i. DATA s42 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        s0 = p1. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). l5 = s0. s1 = 12884901888.
        IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = l5. s1 = 8589934592.
          IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          s0 = p0. s1 = 1142520. s2 = 4. PERFORM f126 USING s0 s1 s2 CHANGING s0. l6 = s0. lv_br = 2. EXIT. " br 2
        ELSE.
        ENDIF.
        s0 = p0. s1 = 1147825. s2 = 9. PERFORM f126 USING s0 s1 s2 CHANGING s0. l6 = s0. lv_br = 1. EXIT. " br 1
      ENDDO.
      s0 = p0. s1 = p1. PERFORM f151 USING s0 s1 CHANGING s0. l5 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 25769803776.
      IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = l5. rv = s0. RETURN.
      ELSE.
      ENDIF.
      s0 = l5. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p2 = s0.
      DO 1 TIMES. " block
        s0 = l5. s1 = -4294967296.
        IF zcl_wasm_rt=>ge_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = 153. l4 = s0. s0 = p2. s0 = mem_ld_i32_16u( s0 + 6 ). p3 = s0. s1 = 2.
          IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          s0 = p3. s1 = 48.
          IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0.
            s0 = p0. s1 = l5. PERFORM f1016 USING s0 s1 CHANGING s0. p3 = s0. s1 = 0.
            IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0.
              s0 = p2. s1 = p2. s1 = mem_ld_i32( s1 ). p2 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = 25769803776. p1 = s0. s0 = p2. s1 = 1.
              IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0. lv_br = 5. EXIT. ENDIF. " br_if 5
              s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = l5. PERFORM f453 USING s0 s1. s0 = 25769803776. rv = s0. RETURN.
            ELSE.
            ENDIF.
            s0 = p3.
            IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
            s0 = p2. s0 = mem_ld_i32_16u( s0 + 6 ). p3 = s0.
          ELSE.
          ENDIF.
          s0 = 163. l4 = s0. s0 = p3. s1 = 13.
          IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          DO 1 TIMES. " block
            s0 = p3. s1 = 48.
            IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0.
              s0 = p2. s0 = mem_ld_i32( s0 + 32 ). s0 = mem_ld_i32_8u( s0 + 16 ). lv_br = 1. EXIT. " br 1
            ELSE.
            ENDIF.
            s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s1 = mem_ld_i32( s1 + 68 ). s2 = p3. s3 = 24. s2 = s2 * s3. s1 = s1 + s2. s1 = mem_ld_i32( s1 + 16 ).
          ENDDO.
          IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        ELSE.
        ENDIF.
        s1 = 152. l4 = s1. s1 = p2. s1 = mem_ld_i32_16u( s1 + 6 ). p3 = s1. s2 = 18.
        IF zcl_wasm_rt=>gt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0. EXIT. ENDIF. " br_if 0
        s1 = 1. s2 = p3. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s2 = 264056. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ).
        IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0. EXIT. ENDIF. " br_if 0
        s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s1 = mem_ld_i32( s1 + 68 ). s2 = p3. s3 = 24. s2 = s2 * s3. s1 = s1 + s2. s1 = mem_ld_i32( s1 + 4 ). l4 = s1.
      ENDDO.
      s1 = p0. s2 = l5. s3 = 221. s4 = l5. s5 = 0. PERFORM f192 USING s1 s2 s3 s4 s5 CHANGING s1. l6 = s1.
      DO 1 TIMES. " block
        s1 = l5. s2 = 32. s1 = zcl_wasm_rt=>shr_u64( iv_val = s1 iv_shift = s2 ). s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = -11.
        IF zcl_wasm_rt=>lt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0. EXIT. ENDIF. " br_if 0
        s1 = p2. s2 = p2. s2 = mem_ld_i32( s2 ). p2 = s2. s3 = 1. s2 = s2 - s3. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = p2. s2 = 1.
        IF s1 > s2. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0. EXIT. ENDIF. " br_if 0
        s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s2 = l5. PERFORM f453 USING s1 s2.
      ENDDO.
      s1 = l6. s2 = -4294967296. s1 = zcl_wasm_rt=>and64( iv_a = s1 iv_b = s2 ). p1 = s1. s2 = -30064771072.
      IF s1 = s2. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. EXIT. ENDIF. " br_if 0
      s1 = p1. s2 = 25769803776.
      IF s1 = s2. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s1 = p0. s2 = l6. PERFORM f1164 USING s1 s2. s1 = p0. s2 = l4. s3 = 1. PERFORM f772 USING s1 s2 s3 CHANGING s1. l6 = s1.
    ENDDO.
    s1 = p0. s2 = 1153823. s3 = l6. s4 = 1149195. PERFORM f69 USING s1 s2 s3 s4 CHANGING s1. p1 = s1.
  ENDDO.
  s1 = p1. rv = s1.
ENDFORM.

FORM f511 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE i. DATA l8 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i.
  DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i.
  DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i.
  DATA s35 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 80. s0 = s0 - s1. l2 = s0. gv_g0 = s0. s0 = l2. s1 = 32. s0 = s0 + s1. s1 = p0. s1 = mem_ld_i32( s1 ). p0 = s1. s2 = p0. s2 = mem_ld_i32( s2 ). s2 = mem_ld_i32( s2 + 4 ).
  DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
  dispatch_t6( iv_idx = lv_ci_func p0 = s0 p1 = s1 ). s0 = l2. s1 = l2. s2 = 72. s1 = s1 + s2. s1 = zcl_wasm_rt=>extend_u32( s1 ). s2 = 38654705664. s1 = zcl_wasm_rt=>or64( iv_a = s1 iv_b = s2 ).
  zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 40 CHANGING cv_mem = mv_mem ). s0 = 1. l3 = s0. s0 = l2. s1 = 1. mem_st_i32( iv_addr = s0 + 52 iv_val = s1 ). s0 = l2. s1 = 1115224.
  mem_st_i32( iv_addr = s0 + 48 iv_val = s1 ). s0 = l2. s1 = 1. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 60 CHANGING cv_mem = mv_mem ). s0 = l2. s1 = l2.
  s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 32 ). zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 72 CHANGING cv_mem = mv_mem ). s0 = l2. s1 = l2. s2 = 40. s1 = s1 + s2.
  mem_st_i32( iv_addr = s0 + 56 iv_val = s1 ).
  DO 1 TIMES. " block
    s0 = p1. s0 = mem_ld_i32( s0 + 20 ). l6 = s0. s1 = p1. s1 = mem_ld_i32( s1 + 24 ). l7 = s1. s2 = l2. s3 = 48. s2 = s2 + s3. PERFORM f360 USING s0 s1 s2 CHANGING s0.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p1. s0 = mem_ld_i32_8u( s0 + 28 ). s1 = 4. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = 0. l3 = s0. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = l2. s1 = 24. s0 = s0 + s1. s1 = p0. s2 = p0. s2 = mem_ld_i32( s2 ). s2 = mem_ld_i32( s2 + 4 ).
    DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
    dispatch_t6( iv_idx = lv_ci_func p0 = s0 p1 = s1 ). s0 = l2. s1 = 40. s0 = s0 + s1. s0 = zcl_wasm_rt=>extend_u32( s0 ). s1 = 38654705664. s0 = zcl_wasm_rt=>or64( iv_a = s0 iv_b = s1 ). l8 = s0. s0 = 1. p0 = s0. s0 = l2.
    s0 = mem_ld_i32( s0 + 28 ). l4 = s0. s0 = l2. s0 = mem_ld_i32( s0 + 24 ). p1 = s0.
    DO. " loop
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          s0 = p0.
          IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0.
            s0 = l4. s1 = p1. l5 = s1.
            IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
            s0 = 0. l3 = s0. lv_br = 4. EXIT. " br 4
          ELSE.
          ENDIF.
          DO 1 TIMES. " block
            DO. " loop
              s0 = p0.
              IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
              s0 = p1.
              IF s0 <> 0.
                s0 = l2. s1 = 16. s0 = s0 + s1. s1 = p1. s2 = l4. s2 = mem_ld_i32( s2 + 24 ).
                DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
                dispatch_t6( iv_idx = lv_ci_func p0 = s0 p1 = s1 ). s0 = p0. s1 = 1. s0 = s0 - s1. p0 = s0. s0 = l2. s0 = mem_ld_i32( s0 + 20 ). l4 = s0. s0 = l2. s0 = mem_ld_i32( s0 + 16 ). p1 = s0. lv_br = 1. EXIT. " br 1
              ELSE.
              ENDIF.
            ENDDO.
            s0 = 0. l3 = s0. lv_br = 4. EXIT. " br 4
          ENDDO.
          s0 = 0. p0 = s0. s0 = p1.
          IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          s0 = p1. l5 = s0. s0 = l4.
        ENDDO.
        l3 = s0. s0 = l2. s1 = 8. s0 = s0 + s1. s1 = l5. s2 = l3. s2 = mem_ld_i32( s2 + 24 ).
        DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
        dispatch_t6( iv_idx = lv_ci_func p0 = s0 p1 = s1 ). s0 = l2. s0 = mem_ld_i32( s0 + 12 ). l4 = s0. s0 = l2. s0 = mem_ld_i32( s0 + 8 ). p1 = s0. s0 = l2. s1 = l3. mem_st_i32( iv_addr = s0 + 44 iv_val = s1 ). s0 = l2. s1 = l5.
        mem_st_i32( iv_addr = s0 + 40 iv_val = s1 ). s0 = 1. l3 = s0. s0 = l2. s1 = 1. mem_st_i32( iv_addr = s0 + 52 iv_val = s1 ). s0 = l2. s1 = 1049728. mem_st_i32( iv_addr = s0 + 48 iv_val = s1 ). s0 = l2. s1 = 1.
        zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 60 CHANGING cv_mem = mv_mem ). s0 = l2. s1 = l8. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 72 CHANGING cv_mem = mv_mem ). s0 = l2. s1 = l2. s2 = 72.
        s1 = s1 + s2. mem_st_i32( iv_addr = s0 + 56 iv_val = s1 ). s0 = l6. s1 = l7. s2 = l2. s3 = 48. s2 = s2 + s3. PERFORM f360 USING s0 s1 s2 CHANGING s0.
        IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        lv_br = 2. EXIT. " br 2
      ENDDO.
    ENDDO.
    s0 = 0. l3 = s0.
  ENDDO.
  s0 = l2. s1 = 80. s0 = s0 + s1. gv_g0 = s0. s0 = l3. rv = s0.
ENDFORM.

FORM f512 USING p0 TYPE i p1 TYPE i p2 TYPE i p3 TYPE i CHANGING rv TYPE i.
  DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i.
  DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i.
  DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 32. s0 = s0 - s1. l5 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          DO 1 TIMES. " block
            DO 1 TIMES. " block
              s0 = p3. s0 = mem_ld_i32( s0 + 8 ). l4 = s0. s1 = 2147483646.
              IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0.
                s0 = l4. s1 = 2147483646.
                IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
                s0 = 31. l6 = s0. s0 = 2147483647. l4 = s0. lv_br = 6. EXIT. " br 6
              ELSE.
              ENDIF.
              s0 = l4. s1 = 0.
              IF s0 <= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0.
                s0 = 0. l4 = s0. lv_br = 5. EXIT. " br 5
              ELSE.
              ENDIF.
              s0 = 31. l6 = s0. s0 = l4. s1 = 31.
              IF zcl_wasm_rt=>le_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0.
                s0 = p3. s0 = mem_ld_i32( s0 + 16 ). s1 = p3. s1 = mem_ld_i32( s1 + 12 ). s2 = 2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s1 = 4. s0 = s0 - s1. s0 = mem_ld_i32( s0 ). s1 = 32. s2 = l4.
                s1 = s1 - s2. s0 = zcl_wasm_rt=>shr_u32( iv_val = s0 iv_shift = s1 ). l4 = s0. s0 = p3. s0 = mem_ld_i32( s0 + 4 ).
                IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
                IF s0 <> 0. lv_br = 4. EXIT. ENDIF. " br_if 4
                s0 = 0. s1 = l4. s0 = s0 - s1. lv_br = 2. EXIT. " br 2
              ELSE.
              ENDIF.
              s1 = -2147483648. l4 = s1. s1 = p3. s1 = mem_ld_i32( s1 + 4 ).
              IF s1 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
              s1 = 2147483647. l4 = s1. lv_br = 5. EXIT. " br 5
            ENDDO.
            s1 = p3. s1 = mem_ld_i32( s1 + 4 ). s2 = 2147483647. s1 = s1 + s2.
          ENDDO.
          l4 = s1. s2 = 0.
          IF s1 >= s2. s1 = 1. ELSE. s1 = 0. ENDIF.
          IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        ENDDO.
        s1 = 0. s2 = l4. s1 = s1 - s2. l4 = s1.
      ENDDO.
      s1 = l4. s2 = 1.
      IF zcl_wasm_rt=>le_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. EXIT. ENDIF. " br_if 0
      s1 = 32. s2 = l4. s3 = 1. s2 = s2 - s3. s2 = zcl_wasm_rt=>clz32( s2 ). s1 = s1 - s2. l6 = s1. lv_br = 1. EXIT. " br 1
    ENDDO.
    s1 = 0. l6 = s1.
  ENDDO.
  s1 = p0. s1 = mem_ld_i32( s1 ). l7 = s1. s1 = p0. s2 = p1. s3 = l4. s4 = p2. s5 = l6. s6 = 1. s5 = zcl_wasm_rt=>shl32( iv_val = s5 iv_shift = s6 ). s4 = s4 + s5. s5 = 8. s4 = s4 + s5. p2 = s4. s5 = 2016.
  PERFORM f471 USING s1 s2 s3 s4 s5 CHANGING s1. l4 = s1.
  DO 1 TIMES. " block
    s1 = p3. s1 = mem_ld_i32( s1 + 4 ).
    IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
    IF s1 <> 0. EXIT. ENDIF. " br_if 0
    s1 = l5. s2 = 0. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s2 iv_addr = s1 + 20 CHANGING cv_mem = mv_mem ). s1 = l5. s2 = 0. mem_st_i32( iv_addr = s1 + 12 iv_val = s2 ). s1 = l5. s2 = l7. mem_st_i32( iv_addr = s1 + 8 iv_val = s2 ).
    DO 1 TIMES. " block
      s1 = l7. s1 = mem_ld_i32( s1 ). s2 = 0. s3 = 4. s4 = l7. s5 = 4. s4 = s4 + s5. s4 = mem_ld_i32( s4 ).
      DATA(lv_ci_func) = mt_tab0[ s4 + 1 ]. " call_indirect
      s1 = dispatch_t11( iv_idx = lv_ci_func p0 = s1 p1 = s2 p2 = s3 ). p1 = s1.
      IF s1 <> 0.
        s1 = l5. s2 = 1. mem_st_i32( iv_addr = s1 + 20 iv_val = s2 ). s1 = p1. s2 = -2147483648. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = l5. s2 = p1. mem_st_i32( iv_addr = s1 + 24 iv_val = s2 ). s1 = l5. s2 = 1.
        mem_st_i32( iv_addr = s1 + 16 iv_val = s2 ). lv_br = 1. EXIT. " br 1
      ELSE.
      ENDIF.
      s1 = l5. s2 = 9223372032559808512. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s2 iv_addr = s1 + 12 CHANGING cv_mem = mv_mem ).
    ENDDO.
    s1 = p0. s2 = l5. s3 = 8. s2 = s2 + s3. s3 = p0. s4 = p2. s5 = 2016. s6 = 735. PERFORM f815 USING s1 s2 s3 s4 s5 s6 CHANGING s1. s2 = l4. s1 = zcl_wasm_rt=>or32( iv_a = s1 iv_b = s2 ). l4 = s1. s1 = l5. s1 = mem_ld_i32( s1 + 8 ).
    p0 = s1.
    IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
    IF s1 <> 0. EXIT. ENDIF. " br_if 0
    s1 = l5. s1 = mem_ld_i32( s1 + 24 ). p1 = s1.
    IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
    IF s1 <> 0. EXIT. ENDIF. " br_if 0
    s1 = p0. s1 = mem_ld_i32( s1 ). s2 = p1. s3 = 0. s4 = p0. s5 = 4. s4 = s4 + s5. s4 = mem_ld_i32( s4 ).
    DATA(lv_ci_func) = mt_tab0[ s4 + 1 ]. " call_indirect
    s1 = dispatch_t11( iv_idx = lv_ci_func p0 = s1 p1 = s2 p2 = s3 ).
  ENDDO.
  s1 = l5. s2 = 32. s1 = s1 + s2. gv_g0 = s1. s1 = l4. rv = s1.
ENDFORM.

FORM f513 USING p0 TYPE i p1 TYPE i p2 TYPE i CHANGING rv TYPE i.
  DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i.
  DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i.
  DATA lv_br TYPE i. s0 = p2. s1 = 0.
  IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = p1. s1 = p2. s2 = 2147483647. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = 1. rv = s0. RETURN.
  ELSE.
  ENDIF.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        s0 = p2. s1 = p0. s1 = mem_ld_i32( s1 + 16 ). p0 = s1. s1 = mem_ld_i32( s1 + 44 ).
        IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = p0. s0 = mem_ld_i32( s0 + 56 ). s1 = p2. s2 = 2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s0 = mem_ld_i32( s0 ). l3 = s0. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 4 ). l6 = s0.
          s1 = -4611686018427387904. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 4611686018427387904.
          IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
          s0 = l6. s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = 2147483647. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). l4 = s0. s1 = 11. s0 = s0 - s1. s1 = -10.
          IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
          DO 1 TIMES. " block
            s0 = l6. s1 = 2147483648. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ).
            IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
            l5 = s0.
            IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0.
              s0 = l3. s0 = mem_ld_i32_16u( s0 + 16 ). lv_br = 1. EXIT. " br 1
            ELSE.
            ENDIF.
            s1 = l3. s1 = mem_ld_i32_8u( s1 + 16 ).
          ENDDO.
          p0 = s1. s2 = 48. s1 = s1 - s2. p2 = s1. s2 = 9.
          IF zcl_wasm_rt=>gt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
          IF s1 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
          DO 1 TIMES. " block
            s1 = p0. s2 = 48.
            IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
            IF s1 <> 0.
              s1 = 1. p0 = s1. s1 = l4. s2 = 2.
              IF zcl_wasm_rt=>lt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
              IF s1 <> 0. lv_br = 5. EXIT. ENDIF. " br_if 5
              s1 = l5.
              IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
              IF s1 <> 0.
                s1 = l3. s2 = 18. s1 = s1 + s2. l3 = s1. s1 = l4. s2 = 1. s1 = s1 - s2. l4 = s1. lv_br = 2. EXIT. " br 2
              ELSE.
              ENDIF.
              s1 = l3. s2 = 17. s1 = s1 + s2. l3 = s1. s1 = l4. s2 = 1. s1 = s1 - s2. l4 = s1.
              DO. " loop
                s1 = l3. s1 = mem_ld_i32_8u( s1 ). s2 = 48. s1 = s1 - s2. l5 = s1. s2 = 9.
                IF zcl_wasm_rt=>gt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
                IF s1 <> 0. lv_br = 5. EXIT. ENDIF. " br_if 5
                s1 = l5. s1 = zcl_wasm_rt=>extend_u32( s1 ). s2 = p2. s2 = zcl_wasm_rt=>extend_u32( s2 ). s3 = 10. s2 = s2 * s3. s1 = s1 + s2. l6 = s1. s2 = 4294967296.
                IF zcl_wasm_rt=>ge_u64( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
                IF s1 <> 0. lv_br = 5. EXIT. ENDIF. " br_if 5
                s1 = l3. s2 = 1. s1 = s1 + s2. l3 = s1. s1 = l6. s1 = zcl_wasm_rt=>wrap_i64( s1 ). p2 = s1. s1 = l4. s2 = 1. s1 = s1 - s2. l4 = s1.
                IF s1 <> 0. EXIT. ENDIF. " br_if 0
              ENDDO.
              lv_br = 3. EXIT. " br 3
            ELSE.
            ENDIF.
            s1 = 1. p0 = s1. s1 = 0. p2 = s1. s1 = l4. s2 = 1.
            IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
            IF s1 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
            lv_br = 4. EXIT. " br 4
          ENDDO.
          DO. " loop
            s1 = l3. s1 = mem_ld_i32_16u( s1 ). s2 = 48. s1 = s1 - s2. l5 = s1. s2 = 9.
            IF zcl_wasm_rt=>gt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
            IF s1 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
            s1 = l5. s1 = zcl_wasm_rt=>extend_u32( s1 ). s2 = p2. s2 = zcl_wasm_rt=>extend_u32( s2 ). s3 = 10. s2 = s2 * s3. s1 = s1 + s2. l6 = s1. s2 = 4294967296.
            IF zcl_wasm_rt=>ge_u64( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
            IF s1 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
            s1 = l3. s2 = 2. s1 = s1 + s2. l3 = s1. s1 = l6. s1 = zcl_wasm_rt=>wrap_i64( s1 ). p2 = s1. s1 = l4. s2 = 1. s1 = s1 - s2. l4 = s1.
            IF s1 <> 0. EXIT. ENDIF. " br_if 0
          ENDDO.
          lv_br = 1. EXIT. " br 1
        ELSE.
        ENDIF.
        s1 = 1144256. s2 = 1148333. s3 = 3152. s4 = 1135341. PERFORM f1101 USING s1 s2 s3 s4.
        RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
      ENDDO.
      s1 = l6. s1 = zcl_wasm_rt=>wrap_i64( s1 ). p2 = s1. s2 = -1.
      IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
    ENDDO.
    s1 = 0. p2 = s1. s1 = 0. p0 = s1.
  ENDDO.
  s1 = p1. s2 = p2. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = p0. rv = s1.
ENDFORM.

FORM f514 USING p0 TYPE i p1 TYPE i p2 TYPE i CHANGING rv TYPE i.
  DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i.
  DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i.
  DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA lv_br TYPE i. s0 = p2. s1 = 33.
  IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = p0. s1 = p1. s2 = p2. zcl_wasm_rt=>mem_fill( EXPORTING iv_dst = s0 iv_val = s1 iv_n = s2 CHANGING cv_mem = mv_mem ). s0 = p0. rv = s0. RETURN.
  ELSE.
  ENDIF.
  DO 1 TIMES. " block
    s0 = p2.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s1 = p1. mem_st_i32_8( iv_addr = s0 iv_val = s1 ). s0 = p0. s1 = p2. s0 = s0 + s1. l3 = s0. s1 = 1. s0 = s0 - s1. s1 = p1. mem_st_i32_8( iv_addr = s0 iv_val = s1 ). s0 = p2. s1 = 3.
    IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s1 = p1. mem_st_i32_8( iv_addr = s0 + 2 iv_val = s1 ). s0 = p0. s1 = p1. mem_st_i32_8( iv_addr = s0 + 1 iv_val = s1 ). s0 = l3. s1 = 3. s0 = s0 - s1. s1 = p1. mem_st_i32_8( iv_addr = s0 iv_val = s1 ). s0 = l3. s1 = 2.
    s0 = s0 - s1. s1 = p1. mem_st_i32_8( iv_addr = s0 iv_val = s1 ). s0 = p2. s1 = 7.
    IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s1 = p1. mem_st_i32_8( iv_addr = s0 + 3 iv_val = s1 ). s0 = l3. s1 = 4. s0 = s0 - s1. s1 = p1. mem_st_i32_8( iv_addr = s0 iv_val = s1 ). s0 = p2. s1 = 9.
    IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s1 = 0. s2 = p0. s1 = s1 - s2. s2 = 3. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). l5 = s1. s0 = s0 + s1. l4 = s0. s1 = p1. s2 = 255. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). s2 = 16843009. s1 = s1 * s2. l3 = s1.
    mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l4. s1 = p2. s2 = l5. s1 = s1 - s2. s2 = -4. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). p2 = s1. s0 = s0 + s1. p1 = s0. s1 = 4. s0 = s0 - s1. s1 = l3.
    mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p2. s1 = 9.
    IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l4. s1 = l3. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = l4. s1 = l3. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = p1. s1 = 8. s0 = s0 - s1. s1 = l3. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p1. s1 = 12. s0 = s0 - s1.
    s1 = l3. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p2. s1 = 25.
    IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l4. s1 = l3. mem_st_i32( iv_addr = s0 + 24 iv_val = s1 ). s0 = l4. s1 = l3. mem_st_i32( iv_addr = s0 + 20 iv_val = s1 ). s0 = l4. s1 = l3. mem_st_i32( iv_addr = s0 + 16 iv_val = s1 ). s0 = l4. s1 = l3.
    mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = p1. s1 = 16. s0 = s0 - s1. s1 = l3. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p1. s1 = 20. s0 = s0 - s1. s1 = l3. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p1. s1 = 24.
    s0 = s0 - s1. s1 = l3. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p1. s1 = 28. s0 = s0 - s1. s1 = l3. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p2. s1 = l4. s2 = 4. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). s2 = 24.
    s1 = zcl_wasm_rt=>or32( iv_a = s1 iv_b = s2 ). p2 = s1. s0 = s0 - s1. p1 = s0. s1 = 32.
    IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l3. s0 = zcl_wasm_rt=>extend_u32( s0 ). s1 = 4294967297. s0 = s0 * s1. l6 = s0. s0 = p2. s1 = l4. s0 = s0 + s1. p2 = s0.
    DO. " loop
      s0 = p2. s1 = l6. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 24 CHANGING cv_mem = mv_mem ). s0 = p2. s1 = l6. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 16 CHANGING cv_mem = mv_mem ). s0 = p2.
      s1 = l6. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 8 CHANGING cv_mem = mv_mem ). s0 = p2. s1 = l6. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ). s0 = p2. s1 = 32.
      s0 = s0 + s1. p2 = s0. s0 = p1. s1 = 32. s0 = s0 - s1. p1 = s0. s1 = 31.
      IF zcl_wasm_rt=>gt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
    ENDDO.
  ENDDO.
  s0 = p0. rv = s0.
ENDFORM.

FORM f515 USING p0 TYPE i p1 TYPE i p2 TYPE i p3 TYPE i CHANGING rv TYPE i.
  DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE i. DATA l8 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i.
  DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i.
  DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i. DATA s36 TYPE i.
  DATA s37 TYPE i. DATA s38 TYPE i. DATA s39 TYPE i. DATA s40 TYPE i. DATA s41 TYPE i. DATA s42 TYPE i. DATA s43 TYPE i. DATA s44 TYPE i. DATA s45 TYPE i. DATA s46 TYPE i. DATA s47 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 32.
  s0 = s0 - s1. l4 = s0. gv_g0 = s0. s0 = p0. s0 = mem_ld_i32( s0 ). l5 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      s0 = p1. s0 = mem_ld_i32( s0 + 8 ). l7 = s0. s1 = 2147483647.
      IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = p3. s0 = mem_ld_i32( s0 + 8 ). l8 = s0. s1 = 2147483647.
        IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      ELSE.
      ENDIF.
      s0 = p0. s0 = mem_ld_i32( s0 + 12 ).
      IF s0 <> 0.
        s0 = l5. s0 = mem_ld_i32( s0 ). s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s2 = 0. s3 = l5. s4 = 4. s3 = s3 + s4. s3 = mem_ld_i32( s3 ).
        DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
        s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). p1 = s0. s0 = p0. s1 = 0. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = p0. s1 = p1. mem_st_i32( iv_addr = s0 + 16 iv_val = s1 ).
      ELSE.
      ENDIF.
      s0 = p0. s1 = 9223372032559808512. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 4 CHANGING cv_mem = mv_mem ). s0 = 0. p2 = s0. lv_br = 1. EXIT. " br 1
    ENDDO.
    s0 = l4. s1 = 0. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 20 CHANGING cv_mem = mv_mem ). s0 = l4. s1 = -9223372036854775808.
    zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 12 CHANGING cv_mem = mv_mem ). s0 = l4. s1 = l5. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = p2. s1 = 32. s0 = s0 + s1. l6 = s0.
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        s0 = l7. s1 = -2147483648.
        IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = l7. s1 = 2147483646.
          IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          s0 = l8. s1 = 2147483646.
          IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          s0 = l4. s1 = l5. s1 = mem_ld_i32( s1 ). s2 = 0. s3 = 4. s4 = l5. s5 = 4. s4 = s4 + s5. s4 = mem_ld_i32( s4 ).
          DATA(lv_ci_func) = mt_tab0[ s4 + 1 ]. " call_indirect
          s1 = dispatch_t11( iv_idx = lv_ci_func p0 = s1 p1 = s2 p2 = s3 ). p2 = s1.
          IF s1 <> 0.
            s1 = l4. s2 = 1. mem_st_i32( iv_addr = s1 + 20 iv_val = s2 ). s1 = p2. s2 = -2147483648. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = l4. s2 = p2. mem_st_i32( iv_addr = s1 + 24 iv_val = s2 ). s1 = 1.
          ELSE.
            s2 = 2147483647.
          ENDIF.
          mem_st_i32( iv_addr = s1 + 16 iv_val = s2 ). s1 = l4. s2 = p3. s2 = mem_ld_i32( s2 + 4 ). s3 = p1. s3 = mem_ld_i32( s3 + 4 ). s2 = zcl_wasm_rt=>xor32( iv_a = s2 iv_b = s3 ). mem_st_i32( iv_addr = s1 + 12 iv_val = s2 ).
          lv_br = 2. EXIT. " br 2
        ELSE.
        ENDIF.
        s1 = l8. s2 = -2147483648.
        IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0. EXIT. ENDIF. " br_if 0
        s1 = l4. s2 = p3. s2 = mem_ld_i32( s2 + 4 ). s3 = p1. s3 = mem_ld_i32( s3 + 4 ). s2 = zcl_wasm_rt=>xor32( iv_a = s2 iv_b = s3 ). mem_st_i32( iv_addr = s1 + 12 iv_val = s2 ). lv_br = 1. EXIT. " br 1
      ENDDO.
      s1 = l4. s2 = 8. s1 = s1 + s2. s2 = p1. s3 = p3. s4 = l6. s5 = 6. s6 = 735. PERFORM f815 USING s1 s2 s3 s4 s5 s6 CHANGING s1.
    ENDDO.
    s1 = p0. s2 = l4. s3 = 8. s2 = s2 + s3. l5 = s2. s3 = l6. s4 = 6. PERFORM f213 USING s1 s2 s3 s4 CHANGING s1. p2 = s1. s1 = p3. s1 = mem_ld_i32( s1 + 4 ).
    IF s1 <> 0.
      s1 = l5. s2 = l6. s3 = 6. s4 = l4. s4 = mem_ld_i32( s4 + 8 ). s5 = 32. s4 = s4 + s5. s5 = 738. s6 = 0. PERFORM f351 USING s1 s2 s3 s4 s5 s6. s1 = l4. s2 = p1. s2 = mem_ld_i32( s2 + 4 ). mem_st_i32( iv_addr = s1 + 12 iv_val = s2 ).
      s1 = p0. s2 = p0. s3 = l5. s4 = l6. s5 = 0. PERFORM f817 USING s1 s2 s3 s4 s5 CHANGING s1. s1 = p2. s2 = 16. s1 = zcl_wasm_rt=>or32( iv_a = s1 iv_b = s2 ). p2 = s1.
    ELSE.
    ENDIF.
    s1 = l4. s1 = mem_ld_i32( s1 + 8 ). p0 = s1.
    IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
    IF s1 <> 0. EXIT. ENDIF. " br_if 0
    s1 = l4. s1 = mem_ld_i32( s1 + 24 ). p1 = s1.
    IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
    IF s1 <> 0. EXIT. ENDIF. " br_if 0
    s1 = p0. s1 = mem_ld_i32( s1 ). s2 = p1. s3 = 0. s4 = p0. s5 = 4. s4 = s4 + s5. s4 = mem_ld_i32( s4 ).
    DATA(lv_ci_func) = mt_tab0[ s4 + 1 ]. " call_indirect
    s1 = dispatch_t11( iv_idx = lv_ci_func p0 = s1 p1 = s2 p2 = s3 ).
  ENDDO.
  s1 = l4. s2 = 32. s1 = s1 + s2. gv_g0 = s1. s1 = p2. rv = s1.
ENDFORM.

FORM f516 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i CHANGING rv TYPE int8.
  DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i.
  DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i.
  DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i. DATA s36 TYPE i. DATA s37 TYPE i. DATA s38 TYPE i.
  DATA lv_br TYPE i. s0 = gv_g0. s1 = 32. s0 = s0 - s1. l4 = s0. gv_g0 = s0. s0 = l4. s1 = p2. mem_st_i32( iv_addr = s0 + 20 iv_val = s1 ). s0 = l4. s1 = p0. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = l4. s1 = 0.
  zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 24 CHANGING cv_mem = mv_mem ). s0 = l4. s1 = 0. mem_st_i32( iv_addr = s0 + 16 iv_val = s1 ).
  DO 1 TIMES. " block
    s0 = p0. s0 = mem_ld_i32( s0 + 16 ). l5 = s0. s1 = 16. s0 = s0 + s1. s1 = p2. s2 = 17. s1 = s1 + s2. s2 = l5. s2 = mem_ld_i32( s2 ).
    DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
    s0 = dispatch_t7( iv_idx = lv_ci_func p0 = s0 p1 = s1 ). l5 = s0.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p0. s0 = mem_ld_i32( s0 + 16 ). l5 = s0. s0 = mem_ld_i32_8u( s0 + 136 ).
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = l5. s1 = 1. mem_st_i32_8( iv_addr = s0 + 136 iv_val = s1 ). s0 = p0. s1 = 1134898. s2 = 0. PERFORM f969 USING s0 s1 s2 CHANGING s0. s0 = l5. s1 = 0. mem_st_i32_8( iv_addr = s0 + 136 iv_val = s1 ).
      ELSE.
      ENDIF.
      s0 = l4. s1 = -1. mem_st_i32( iv_addr = s0 + 28 iv_val = s1 ). s0 = l4. s1 = 0. mem_st_i32( iv_addr = s0 + 20 iv_val = s1 ). s0 = l4. s1 = 0. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = l5. s1 = 0. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = l5. s1 = 1. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l5. s1 = p2. s2 = 2147483647. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ).
    s1 = zcl_wasm_rt=>extend_u32( s1 ). zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 4 CHANGING cv_mem = mv_mem ). s0 = l4. s1 = l5. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ).
  ENDDO.
  DO 1 TIMES. " block
    s0 = p2. s1 = 0.
    IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      DO. " loop
        s0 = p3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). p1 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
        IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l5 = s0. s1 = l5. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
        ELSE.
        ENDIF.
        DO 1 TIMES. " block
          s0 = p0. s1 = l4. s2 = 4. s1 = s1 + s2. s2 = p1. PERFORM f637 USING s0 s1 s2 CHANGING s0.
          IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0.
            s0 = l4. s0 = mem_ld_i32_16u( s0 + 4 ). l5 = s0.
            DO 1 TIMES. " block
              s0 = l4. s0 = mem_ld_i32( s0 + 16 ). l6 = s0. s1 = l4. s1 = mem_ld_i32( s1 + 20 ).
              IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0. EXIT. ENDIF. " br_if 0
              s0 = l4. s0 = mem_ld_i32( s0 + 24 ).
              IF s0 <> 0.
                s0 = l4. s0 = mem_ld_i32( s0 + 12 ). s1 = l6. s2 = 1. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s1 = 16. s0 = s0 + s1. s1 = l5. mem_st_i32_16( iv_addr = s0 iv_val = s1 ). s0 = l4. s1 = l6. s2 = 1.
                s1 = s1 + s2. mem_st_i32( iv_addr = s0 + 16 iv_val = s1 ). lv_br = 3. EXIT. " br 3
              ELSE.
              ENDIF.
              s0 = l5. s1 = 255.
              IF zcl_wasm_rt=>gt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0. EXIT. ENDIF. " br_if 0
              s0 = l4. s0 = mem_ld_i32( s0 + 12 ). s1 = l6. s0 = s0 + s1. s1 = 16. s0 = s0 + s1. s1 = l5. mem_st_i32_8( iv_addr = s0 iv_val = s1 ). s0 = l4. s1 = l6. s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 + 16 iv_val = s1 ).
              lv_br = 2. EXIT. " br 2
            ENDDO.
            s0 = l4. s1 = 8. s0 = s0 + s1. s1 = l5. PERFORM f844 USING s0 s1 CHANGING s0.
            IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          ELSE.
          ENDIF.
          s0 = l4. s0 = mem_ld_i32( s0 + 8 ). s0 = mem_ld_i32( s0 + 16 ). p0 = s0. s1 = 16. s0 = s0 + s1. s1 = l4. s1 = mem_ld_i32( s1 + 12 ). s2 = p0. s2 = mem_ld_i32( s2 + 4 ).
          DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
          dispatch_t6( iv_idx = lv_ci_func p0 = s0 p1 = s1 ). s0 = 25769803776. lv_br = 3. EXIT. " br 3
        ENDDO.
        s1 = p3. s2 = 8. s1 = s1 + s2. p3 = s1. s1 = p2. s2 = 1. s1 = s1 - s2. p2 = s1.
        IF s1 <> 0. EXIT. ENDIF. " br_if 0
      ENDDO.
    ELSE.
    ENDIF.
    s1 = l4. s2 = 8. s1 = s1 + s2. PERFORM f676 USING s1 CHANGING s1.
  ENDDO.
  s2 = l4. s3 = 32. s2 = s2 + s3. gv_g0 = s2. rv = s1.
ENDFORM.

FORM f517 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i CHANGING rv TYPE int8.
  DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE i. DATA l8 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i.
  DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i.
  DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i. DATA s36 TYPE i.
  DATA s37 TYPE i. DATA s38 TYPE i. DATA s39 TYPE i. DATA s40 TYPE i. DATA s41 TYPE i. DATA s42 TYPE i. DATA s43 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l5 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      s0 = p1. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = -38654705664.
      IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      DO 1 TIMES. " block
        s0 = p1. s1 = -4294967296.
        IF zcl_wasm_rt=>lt_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l4 = s0. s0 = mem_ld_i32_16u( s0 + 6 ). s1 = 34.
        IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = l4. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 32 ). p1 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = -38654705664.
        IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      ENDDO.
      s0 = p0. s1 = 1137647. s2 = 0. PERFORM f970 USING s0 s1 s2 CHANGING s0. s0 = 25769803776. l8 = s0. lv_br = 1. EXIT. " br 1
    ENDDO.
    s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l4 = s0. s1 = l4. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). l8 = s0.
    s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
    IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = l8. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l6 = s0. s1 = l6. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
    ELSE.
    ENDIF.
    DO 1 TIMES. " block
      s0 = p0. s1 = l5. s2 = 8. s1 = s1 + s2. s2 = l8. PERFORM f719 USING s0 s1 s2 CHANGING s0.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      DO 1 TIMES. " block
        s0 = l4. s1 = 12. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). s1 = 2147483646.
        IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = p0. s1 = p1. s2 = 0. PERFORM f341 USING s0 s1 s2 CHANGING s0. lv_br = 1. EXIT. " br 1
        ELSE.
        ENDIF.
        s1 = p3. s1 = zcl_wasm_rt=>mem_ld_i64_ext( iv_mem = mv_mem iv_addr = s1 + 4 iv_op = 53 ). s2 = 32. s1 = zcl_wasm_rt=>shl64( iv_val = s1 iv_shift = s2 ). s2 = 12884901888.
        IF s1 = s2. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0.
          s1 = p0. s2 = p1. s3 = 10. s4 = 0. s5 = 1245184. PERFORM f367 USING s1 s2 s3 s4 s5 CHANGING s1. lv_br = 1. EXIT. " br 1
        ELSE.
        ENDIF.
        s2 = l5. s2 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s2 + 8 ). s3 = 1073741823.
        IF zcl_wasm_rt=>ge_u64( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
        IF s2 <> 0.
          s2 = p0. s3 = 1137956. s4 = 0. PERFORM f975 USING s2 s3 s4. lv_br = 2. EXIT. " br 2
        ELSE.
        ENDIF.
        s2 = 10. l6 = s2. s2 = 4. l7 = s2.
        DO 1 TIMES. " block
          s2 = p2. s3 = 2.
          IF s2 < s3. s2 = 1. ELSE. s2 = 0. ENDIF.
          IF s2 <> 0. EXIT. ENDIF. " br_if 0
          s2 = p0. s3 = p3. s3 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s3 + 8 ). PERFORM f1021 USING s2 s3 CHANGING s2. l7 = s2. s3 = 0.
          IF s2 < s3. s2 = 1. ELSE. s2 = 0. ENDIF.
          IF s2 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
          s2 = p2. s3 = 3.
          IF zcl_wasm_rt=>lt_u32( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
          IF s2 <> 0. EXIT. ENDIF. " br_if 0
          s2 = p0. s3 = p3. s3 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s3 + 16 ). PERFORM f1009 USING s2 s3 CHANGING s2. l6 = s2. s3 = 0.
          IF s2 < s3. s2 = 1. ELSE. s2 = 0. ENDIF.
          IF s2 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
        ENDDO.
        s2 = p0. s3 = p1. s4 = l6. s5 = l5. s5 = mem_ld_i32( s5 + 8 ). s6 = 1. s5 = s5 + s6. s6 = l7. s7 = 1048576. s6 = zcl_wasm_rt=>or32( iv_a = s6 iv_b = s7 ). PERFORM f367 USING s2 s3 s4 s5 s6 CHANGING s2.
      ENDDO.
      l8 = s2. s2 = l4. s3 = l4. s3 = mem_ld_i32( s3 ). p2 = s3. s4 = 1. s3 = s3 - s4. mem_st_i32( iv_addr = s2 iv_val = s3 ). s2 = p2. s3 = 1.
      IF s2 > s3. s2 = 1. ELSE. s2 = 0. ENDIF.
      IF s2 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s2 = p0. s2 = mem_ld_i32( s2 + 16 ). s3 = p1. PERFORM f453 USING s2 s3. lv_br = 1. EXIT. " br 1
    ENDDO.
    s2 = l4. s3 = l4. s3 = mem_ld_i32( s3 ). p2 = s3. s4 = 1. s3 = s3 - s4. mem_st_i32( iv_addr = s2 iv_val = s3 ). s2 = 25769803776. l8 = s2. s2 = p2. s3 = 1.
    IF s2 > s3. s2 = 1. ELSE. s2 = 0. ENDIF.
    IF s2 <> 0. EXIT. ENDIF. " br_if 0
    s2 = p0. s2 = mem_ld_i32( s2 + 16 ). s3 = p1. PERFORM f453 USING s2 s3.
  ENDDO.
  s2 = l5. s3 = 16. s2 = s2 + s3. gv_g0 = s2. s2 = l8. rv = s2.
ENDFORM.

FORM f518 USING p0 TYPE i p1 TYPE i p2 TYPE i p3 TYPE i CHANGING rv TYPE i.
  DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i.
  DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i.
  DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA lv_br TYPE i. s0 = p1. s1 = 28. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). l4 = s0.
  s1 = p1. s2 = 24. s1 = s1 + s2. l6 = s1.
  IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    DO. " loop
      DO 1 TIMES. " block
        s0 = l4. s1 = 18. s0 = s0 - s1. s0 = mem_ld_i32_16u( s0 ). s1 = p2.
        IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = l4. s1 = 19. s0 = s0 - s1. s0 = mem_ld_i32_8u( s0 ). s1 = 1. s0 = zcl_wasm_rt=>shr_u32( iv_val = s0 iv_shift = s1 ). s1 = 1. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = p3.
        IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = l4. s1 = 24. s0 = s0 - s1. p0 = s0. s1 = p0. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. rv = s0. RETURN.
      ENDDO.
      s0 = l4. s0 = mem_ld_i32( s0 + 4 ). l4 = s0. s1 = l6.
      IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
    ENDDO.
  ELSE.
  ENDIF.
  DO 1 TIMES. " block
    s0 = p0. s0 = mem_ld_i32( s0 + 16 ). l4 = s0. s1 = 16. s0 = s0 + s1. s1 = 40. s2 = l4. s2 = mem_ld_i32( s2 ).
    DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
    s0 = dispatch_t7( iv_idx = lv_ci_func p0 = s0 p1 = s1 ). l4 = s0.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = 0. l4 = s0. s0 = p0. s0 = mem_ld_i32( s0 + 16 ). p1 = s0. s0 = mem_ld_i32_8u( s0 + 136 ).
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p1. s1 = 1. mem_st_i32_8( iv_addr = s0 + 136 iv_val = s1 ). s0 = p0. s1 = 1134898. s2 = 0. PERFORM f969 USING s0 s1 s2 CHANGING s0. s0 = p1. s1 = 0. mem_st_i32_8( iv_addr = s0 + 136 iv_val = s1 ). s0 = 0. rv = s0. RETURN.
    ELSE.
    ENDIF.
    s0 = l4. s1 = 1. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s0 = mem_ld_i32( s0 + 16 ). p0 = s0. s0 = l4. s1 = 3. mem_st_i32_8( iv_addr = s0 + 4 iv_val = s1 ). s0 = l4. s1 = p0. s1 = mem_ld_i32( s1 + 80 ). l5 = s1.
    mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = l5. s1 = l4. s2 = 8. s1 = s1 + s2. l5 = s1. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = p0. s1 = l5. mem_st_i32( iv_addr = s0 + 80 iv_val = s1 ). s0 = l4. s1 = p2.
    mem_st_i32_16( iv_addr = s0 + 6 iv_val = s1 ). s0 = l4. s1 = l4. s1 = mem_ld_i32_8u( s1 + 5 ). s2 = 252. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). s2 = p3. s3 = 1. s2 = zcl_wasm_rt=>shl32( iv_val = s2 iv_shift = s3 ). s3 = 2.
    s2 = zcl_wasm_rt=>and32( iv_a = s2 iv_b = s3 ). s1 = zcl_wasm_rt=>or32( iv_a = s1 iv_b = s2 ). mem_st_i32_8( iv_addr = s0 + 5 iv_val = s1 ). s0 = l4. s1 = 12. s0 = s0 + s1. s1 = p0. s2 = 80. s1 = s1 + s2.
    mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p1. s0 = mem_ld_i32( s0 + 24 ). p0 = s0. s1 = l4. s2 = 24. s1 = s1 + s2. l5 = s1. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = l4. s1 = p0. mem_st_i32( iv_addr = s0 + 24 iv_val = s1 ).
    s0 = l4. s1 = l6. mem_st_i32( iv_addr = s0 + 28 iv_val = s1 ). s0 = p1. s1 = l5. mem_st_i32( iv_addr = s0 + 24 iv_val = s1 ).
    DO 1 TIMES. " block
      s0 = p1. s0 = mem_ld_i32_8u( s0 + 40 ). s1 = 8. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
      IF s0 <> 0.
        s0 = l4. s1 = 32. s0 = s0 + s1. s1 = p1. s2 = 56. s1 = s1 - s2. p0 = s1. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s1 = p0. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
        lv_br = 1. EXIT. " br 1
      ELSE.
      ENDIF.
      s0 = l4. s1 = 32. s0 = s0 + s1. s1 = 0. mem_st_i32( iv_addr = s0 iv_val = s1 ).
    ENDDO.
    s0 = p3.
    IF s0 <> 0.
      s0 = l4. s1 = p1. s1 = mem_ld_i32( s1 + 16 ). s2 = p2. s3 = 3. s2 = zcl_wasm_rt=>shl32( iv_val = s2 iv_shift = s3 ). s1 = s1 + s2. mem_st_i32( iv_addr = s0 + 16 iv_val = s1 ). s0 = l4. rv = s0. RETURN.
    ELSE.
    ENDIF.
    s0 = l4. s1 = p1. s1 = mem_ld_i32( s1 + 20 ). s2 = p2. s3 = 3. s2 = zcl_wasm_rt=>shl32( iv_val = s2 iv_shift = s3 ). s1 = s1 + s2. mem_st_i32( iv_addr = s0 + 16 iv_val = s1 ).
  ENDDO.
  s0 = l4. rv = s0.
ENDFORM.

FORM f519 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i CHANGING rv TYPE int8.
  DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE i. DATA l8 TYPE int8. DATA l9 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i.
  DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i.
  DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l5 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    s0 = p1. s1 = -8589934592. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 8589934592.
    IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p0. s1 = 1142123. s2 = 0. PERFORM f970 USING s0 s1 s2 CHANGING s0. s0 = 25769803776. p1 = s0. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = p0. s1 = p1. s2 = 0. PERFORM f341 USING s0 s1 s2 CHANGING s0. l8 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 25769803776.
    IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = l8. p1 = s0. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = p3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). p1 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
    IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p2 = s0. s1 = p2. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
    ELSE.
    ENDIF.
    s0 = l8. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p2 = s0. s0 = p0. s1 = l5. s2 = 12. s1 = s1 + s2. s2 = p1. PERFORM f684 USING s0 s1 s2 CHANGING s0.
    IF s0 <> 0.
      s0 = 25769803776. p1 = s0. s0 = l8. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
      IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p2. s1 = p2. s1 = mem_ld_i32( s1 ). p2 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p2. s1 = 1.
      IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = l8. PERFORM f453 USING s0 s1. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = 12884901888. p1 = s0.
    DO 1 TIMES. " block
      s0 = l5. s0 = mem_ld_i32( s0 + 12 ). p3 = s0. s1 = 0.
      IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p3. s1 = p2. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 4 ). l9 = s1. s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = 2147483647. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). l7 = s1.
      IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p2. s1 = 16. s0 = s0 + s1. l6 = s0.
      DO 1 TIMES. " block
        s0 = l9. s1 = 2147483648. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 0.
        IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = l6. s1 = p3. s2 = 1. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s0 = mem_ld_i32_16u( s0 ). l4 = s0. s1 = 64512. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = 55296.
          IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          s0 = p3. s1 = 1. s0 = s0 + s1. p3 = s0. s1 = l7.
          IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          s0 = l6. s1 = p3. s2 = 1. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s0 = mem_ld_i32_16u( s0 ). p3 = s0. s1 = 64512. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = 56320.
          IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          s0 = l4. s1 = 10. s0 = zcl_wasm_rt=>shl32( iv_val = s0 iv_shift = s1 ). s1 = p3. s0 = s0 + s1. s1 = 56613888. s0 = s0 - s1. l4 = s0. lv_br = 1. EXIT. " br 1
        ELSE.
        ENDIF.
        s0 = p3. s1 = l6. s0 = s0 + s1. s0 = mem_ld_i32_8u( s0 ). l4 = s0.
      ENDDO.
      s0 = l4. s0 = zcl_wasm_rt=>extend_u32( s0 ). p1 = s0.
    ENDDO.
    s0 = l8. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
    IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p2. s1 = p2. s1 = mem_ld_i32( s1 ). p2 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p2. s1 = 1.
    IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = l8. PERFORM f453 USING s0 s1.
  ENDDO.
  s0 = l5. s1 = 16. s0 = s0 + s1. gv_g0 = s0. s0 = p1. rv = s0.
ENDFORM.

FORM f520 USING p0 TYPE i p1 TYPE i.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i.
  DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16.
  s0 = s0 - s1. l2 = s0. gv_g0 = s0. s0 = l2. s1 = 37. mem_st_i32_8( iv_addr = s0 + 10 iv_val = s1 ). s0 = 1. l3 = s0. s0 = p1. s1 = 256.
  IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = l2. s1 = 117. mem_st_i32_8( iv_addr = s0 + 11 iv_val = s1 ). s0 = l2. s1 = p1. s2 = 8. s1 = zcl_wasm_rt=>shr_u32( iv_val = s1 iv_shift = s2 ). s2 = 15. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). s2 = 1150297. s1 = s1 + s2.
    s1 = mem_ld_i32_8u( s1 ). mem_st_i32_8( iv_addr = s0 + 13 iv_val = s1 ). s0 = l2. s1 = p1. s2 = 12. s1 = zcl_wasm_rt=>shr_u32( iv_val = s1 iv_shift = s2 ). s2 = 15. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). s2 = 1150297.
    s1 = s1 + s2. s1 = mem_ld_i32_8u( s1 ). mem_st_i32_8( iv_addr = s0 + 12 iv_val = s1 ). s0 = 4. l3 = s0.
  ELSE.
  ENDIF.
  s0 = l2. s1 = 10. s0 = s0 + s1. s1 = l3. s0 = s0 + s1. l4 = s0. s1 = 1. s0 = s0 + s1. s1 = p1. s2 = 15. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). s2 = 1150297. s1 = s1 + s2. s1 = mem_ld_i32_8u( s1 ).
  mem_st_i32_8( iv_addr = s0 iv_val = s1 ). s0 = l4. s1 = p1. s2 = 4. s1 = zcl_wasm_rt=>shr_u32( iv_val = s1 iv_shift = s2 ). s2 = 15. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). s2 = 1150297. s1 = s1 + s2. s1 = mem_ld_i32_8u( s1 ).
  mem_st_i32_8( iv_addr = s0 iv_val = s1 ).
  DO 1 TIMES. " block
    s0 = l3. s1 = 2. s0 = zcl_wasm_rt=>or32( iv_a = s0 iv_b = s1 ). p1 = s0. s1 = p0. s1 = mem_ld_i32( s1 + 8 ). s0 = s0 + s1. l3 = s0. s1 = p0. s1 = mem_ld_i32( s1 + 12 ).
    IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p0. s1 = l3. s2 = 0. PERFORM f628 USING s0 s1 s2 CHANGING s0.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
    ELSE.
    ENDIF.
    DO 1 TIMES. " block
      s0 = p0. s0 = mem_ld_i32( s0 + 16 ).
      IF s0 <> 0.
        s0 = p0. s0 = mem_ld_i32( s0 + 4 ). s1 = p0. s1 = mem_ld_i32( s1 + 8 ). s2 = 1. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s1 = 16. s0 = s0 + s1. s1 = l2. s1 = mem_ld_i32_8u( s1 + 10 ).
        mem_st_i32_16( iv_addr = s0 iv_val = s1 ). s0 = p0. s0 = mem_ld_i32( s0 + 4 ). s1 = p0. s1 = mem_ld_i32( s1 + 8 ). s2 = 1. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s1 = 18. s0 = s0 + s1. s1 = l2.
        s1 = mem_ld_i32_8u( s1 + 11 ). mem_st_i32_16( iv_addr = s0 iv_val = s1 ). s0 = p1. s1 = 2.
        IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        s0 = p0. s0 = mem_ld_i32( s0 + 4 ). s1 = p0. s1 = mem_ld_i32( s1 + 8 ). s2 = 1. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s1 = 20. s0 = s0 + s1. s1 = l2. s1 = mem_ld_i32_8u( s1 + 12 ).
        mem_st_i32_16( iv_addr = s0 iv_val = s1 ). s0 = p1. s1 = 3.
        IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        s0 = p0. s0 = mem_ld_i32( s0 + 4 ). s1 = p0. s1 = mem_ld_i32( s1 + 8 ). s2 = 1. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s1 = 22. s0 = s0 + s1. s1 = l2. s1 = mem_ld_i32_8u( s1 + 13 ).
        mem_st_i32_16( iv_addr = s0 iv_val = s1 ). s0 = p0. s0 = mem_ld_i32( s0 + 4 ). s1 = p0. s1 = mem_ld_i32( s1 + 8 ). s2 = 1. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s1 = 24. s0 = s0 + s1. s1 = l2.
        s1 = mem_ld_i32_8u( s1 + 14 ). mem_st_i32_16( iv_addr = s0 iv_val = s1 ). s0 = p0. s0 = mem_ld_i32( s0 + 4 ). s1 = p0. s1 = mem_ld_i32( s1 + 8 ). s2 = 1. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s1 = 26.
        s0 = s0 + s1. s1 = l2. s1 = mem_ld_i32_8u( s1 + 15 ). mem_st_i32_16( iv_addr = s0 iv_val = s1 ). lv_br = 1. EXIT. " br 1
      ELSE.
      ENDIF.
      s0 = p0. s0 = mem_ld_i32( s0 + 4 ). s1 = p0. s1 = mem_ld_i32( s1 + 8 ). s0 = s0 + s1. s1 = 16. s0 = s0 + s1. s1 = l2. s2 = 10. s1 = s1 + s2. s2 = p1. PERFORM f216 USING s0 s1 s2 CHANGING s0.
    ENDDO.
    s0 = p0. s1 = p0. s1 = mem_ld_i32( s1 + 8 ). s2 = p1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ).
  ENDDO.
  s0 = l2. s1 = 16. s0 = s0 + s1. gv_g0 = s0.
ENDFORM.

FORM f521 USING p0 TYPE i p1 TYPE i p2 TYPE i CHANGING rv TYPE i.
  DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p2. s1 = 0.
  IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
  l5 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          s0 = p0. s1 = 3. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
          IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = p2.
          IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = p0. s0 = mem_ld_i32_8u( s0 ). s1 = p1. s2 = 255. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ).
          IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0.
            s0 = p0. l3 = s0. s0 = p2. l4 = s0. lv_br = 3. EXIT. " br 3
          ELSE.
          ENDIF.
          s0 = p2. s1 = 1. s0 = s0 - s1. l4 = s0. s1 = 0.
          IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          l5 = s0. s0 = p0. s1 = 1. s0 = s0 + s1. l3 = s0. s1 = 3. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
          IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          s0 = l4.
          IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          s0 = l3. s0 = mem_ld_i32_8u( s0 ). s1 = p1. s2 = 255. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ).
          IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
          s0 = p2. s1 = 2. s0 = s0 - s1. l4 = s0. s1 = 0.
          IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          l5 = s0. s0 = p0. s1 = 2. s0 = s0 + s1. l3 = s0. s1 = 3. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
          IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          s0 = l4.
          IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          s0 = l3. s0 = mem_ld_i32_8u( s0 ). s1 = p1. s2 = 255. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ).
          IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
          s0 = p2. s1 = 3. s0 = s0 - s1. l4 = s0. s1 = 0.
          IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          l5 = s0. s0 = p0. s1 = 3. s0 = s0 + s1. l3 = s0. s1 = 3. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
          IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          s0 = l4.
          IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          s0 = l3. s0 = mem_ld_i32_8u( s0 ). s1 = p1. s2 = 255. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ).
          IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
          s0 = p0. s1 = 4. s0 = s0 + s1. l3 = s0. s0 = p2. s1 = 4. s0 = s0 - s1. l4 = s0. s1 = 0.
          IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          l5 = s0. lv_br = 1. EXIT. " br 1
        ENDDO.
        s0 = p2. l4 = s0. s0 = p0. l3 = s0.
      ENDDO.
      s0 = l5.
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      DO 1 TIMES. " block
        s0 = p1. s1 = 255. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). p0 = s0. s1 = l3. s1 = mem_ld_i32_8u( s1 ).
        IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = l4. s1 = 4.
        IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = p0. s1 = 16843009. s0 = s0 * s1. p0 = s0.
        DO. " loop
          s0 = l3. s0 = mem_ld_i32( s0 ). s1 = p0. s0 = zcl_wasm_rt=>xor32( iv_a = s0 iv_b = s1 ). p2 = s0. s1 = -1. s0 = zcl_wasm_rt=>xor32( iv_a = s0 iv_b = s1 ). s1 = p2. s2 = 16843009. s1 = s1 - s2.
          s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = -2139062144. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
          IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
          s0 = l3. s1 = 4. s0 = s0 + s1. l3 = s0. s0 = l4. s1 = 4. s0 = s0 - s1. l4 = s0. s1 = 3.
          IF zcl_wasm_rt=>gt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
        ENDDO.
      ENDDO.
      s0 = l4.
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
    ENDDO.
    s0 = p1. s1 = 255. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). p0 = s0.
    DO. " loop
      s0 = p0. s1 = l3. s1 = mem_ld_i32_8u( s1 ).
      IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = l3. rv = s0. RETURN.
      ELSE.
      ENDIF.
      s0 = l3. s1 = 1. s0 = s0 + s1. l3 = s0. s0 = l4. s1 = 1. s0 = s0 - s1. l4 = s0.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
    ENDDO.
  ENDDO.
  s0 = 0. rv = s0.
ENDFORM.

FORM f522 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i.
  DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i.
  DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i. DATA s36 TYPE i. DATA s37 TYPE i. DATA s38 TYPE i. DATA s39 TYPE i.
  DATA s40 TYPE i. DATA s41 TYPE i. DATA s42 TYPE i. DATA s43 TYPE i. DATA s44 TYPE i. DATA s45 TYPE i. DATA s46 TYPE i. DATA s47 TYPE i. DATA s48 TYPE i. DATA s49 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 112. s0 = s0 - s1. l2 = s0.
  gv_g0 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        s0 = p0. s0 = mem_ld_i32( s0 ). l3 = s0. s1 = 5325385144114573364. s2 = -7063004080869952775. s3 = l3. s3 = mem_ld_i32( s3 ). s3 = mem_ld_i32( s3 + 12 ).
        DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
        s0 = dispatch_t69( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). l3 = s0.
        IF s0 <> 0.
          s0 = l2. s1 = 0. mem_st_i32( iv_addr = s0 + 68 iv_val = s1 ). s0 = l2. s1 = 4294967296. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 60 CHANGING cv_mem = mv_mem ). s0 = l2. s1 = 3.
          mem_st_i32_8( iv_addr = s0 + 104 iv_val = s1 ). s0 = l2. s1 = 32. mem_st_i32( iv_addr = s0 + 88 iv_val = s1 ). s0 = l2. s1 = 0. mem_st_i32( iv_addr = s0 + 100 iv_val = s1 ). s0 = l2. s1 = 1059080.
          mem_st_i32( iv_addr = s0 + 96 iv_val = s1 ). s0 = l2. s1 = 0. mem_st_i32( iv_addr = s0 + 80 iv_val = s1 ). s0 = l2. s1 = 0. mem_st_i32( iv_addr = s0 + 72 iv_val = s1 ). s0 = l2. s1 = l2. s2 = 60. s1 = s1 + s2.
          mem_st_i32( iv_addr = s0 + 92 iv_val = s1 ). s0 = l3. s1 = l2. s2 = 72. s1 = s1 + s2. p0 = s1. PERFORM f155 USING s0 s1 CHANGING s0.
          IF s0 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
          s0 = l2. s1 = 56. s0 = s0 + s1. s1 = l2. s2 = 68. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l2. s1 = l2. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 60 ).
          zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 48 CHANGING cv_mem = mv_mem ). s0 = l2. s1 = 1. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = l2. s1 = 1059132. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = l2.
          s1 = 1. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 20 CHANGING cv_mem = mv_mem ). s0 = l2. s1 = l2. s2 = 44. s1 = s1 + s2. s1 = zcl_wasm_rt=>extend_u32( s1 ). s2 = 94489280512.
          s1 = zcl_wasm_rt=>or64( iv_a = s1 iv_b = s2 ). zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 32 CHANGING cv_mem = mv_mem ). s0 = l2. s1 = l2. s2 = 48. s1 = s1 + s2. mem_st_i32( iv_addr = s0 + 44 iv_val = s1 ).
          s0 = l2. s1 = l2. s2 = 32. s1 = s1 + s2. mem_st_i32( iv_addr = s0 + 16 iv_val = s1 ). s0 = p0. s1 = l2. s2 = 8. s1 = s1 + s2. PERFORM f280 USING s0 s1. s0 = l2. s0 = mem_ld_i32( s0 + 48 ).
          IF s0 <> 0.
            s0 = l2. s0 = mem_ld_i32( s0 + 52 ). PERFORM f125 USING s0.
          ELSE.
          ENDIF.
          s0 = l2. s0 = mem_ld_i32( s0 + 72 ). s1 = p1. s1 = mem_ld_i32( s1 + 20 ). s2 = l2. s2 = mem_ld_i32( s2 + 76 ). p0 = s2. s3 = l2. s3 = mem_ld_i32( s3 + 80 ). s4 = p1. s4 = mem_ld_i32( s4 + 24 ). s4 = mem_ld_i32( s4 + 12 ).
          DATA(lv_ci_func) = mt_tab0[ s4 + 1 ]. " call_indirect
          s1 = dispatch_t11( iv_idx = lv_ci_func p0 = s1 p1 = s2 p2 = s3 ). p1 = s1.
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          lv_br = 2. EXIT. " br 2
        ELSE.
        ENDIF.
        s0 = l2. s1 = 0. mem_st_i32( iv_addr = s0 + 16 iv_val = s1 ). s0 = l2. s1 = 4294967296. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 8 CHANGING cv_mem = mv_mem ). s0 = l2. s1 = 3.
        mem_st_i32_8( iv_addr = s0 + 104 iv_val = s1 ). s0 = l2. s1 = 32. mem_st_i32( iv_addr = s0 + 88 iv_val = s1 ). s0 = l2. s1 = 0. mem_st_i32( iv_addr = s0 + 100 iv_val = s1 ). s0 = l2. s1 = 1059080.
        mem_st_i32( iv_addr = s0 + 96 iv_val = s1 ). s0 = l2. s1 = 0. mem_st_i32( iv_addr = s0 + 80 iv_val = s1 ). s0 = l2. s1 = 0. mem_st_i32( iv_addr = s0 + 72 iv_val = s1 ). s0 = l2. s1 = l2. s2 = 8. s1 = s1 + s2.
        mem_st_i32( iv_addr = s0 + 92 iv_val = s1 ). s0 = p0. s1 = l2. s2 = 72. s1 = s1 + s2. PERFORM f511 USING s0 s1 CHANGING s0.
        IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
        s0 = l2. s0 = mem_ld_i32( s0 + 8 ). s1 = p1. s1 = mem_ld_i32( s1 + 20 ). s2 = l2. s2 = mem_ld_i32( s2 + 12 ). p0 = s2. s3 = l2. s3 = mem_ld_i32( s3 + 16 ). s4 = p1. s4 = mem_ld_i32( s4 + 24 ). s4 = mem_ld_i32( s4 + 12 ).
        DATA(lv_ci_func) = mt_tab0[ s4 + 1 ]. " call_indirect
        s1 = dispatch_t11( iv_idx = lv_ci_func p0 = s1 p1 = s2 p2 = s3 ). p1 = s1.
        IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      ENDDO.
      s0 = p0. PERFORM f125 USING s0.
    ENDDO.
    s0 = l2. s1 = 112. s0 = s0 + s1. gv_g0 = s0. s0 = p1. rv = s0. RETURN.
  ENDDO.
  s0 = 1092220. s1 = 55. s2 = l2. s3 = 111. s2 = s2 + s3. s3 = 1059104. s4 = 1092368. PERFORM f981 USING s0 s1 s2 s3 s4.
  RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
ENDFORM.

FORM f523 USING p0 TYPE i p1 TYPE i p2 TYPE i p3 TYPE i p4 TYPE i p5 TYPE i CHANGING rv TYPE i.
  DATA l6 TYPE i. DATA l7 TYPE i. DATA l8 TYPE i. DATA l9 TYPE i. DATA l10 TYPE i. DATA l11 TYPE i. DATA l12 TYPE i. DATA l13 TYPE i. DATA l14 TYPE i. DATA l15 TYPE i. DATA l16 TYPE i. DATA l17 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i.
  DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i.
  DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        s0 = p3. s1 = 7. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = 6.
        IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = 32. l9 = s0. s0 = p0. s1 = p1. s2 = p2. s3 = 32. s2 = s2 + s3. l7 = s2. s3 = p5. s4 = p4.
          DATA(lv_ci_func) = mt_tab0[ s4 + 1 ]. " call_indirect
          s0 = dispatch_t14( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 p3 = s3 ). l6 = s0. s1 = 44. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
          IF s0 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
          s0 = p2. s1 = 2. s0 = s0 + s1. l13 = s0. s0 = p2. s1 = -1. s0 = zcl_wasm_rt=>xor32( iv_a = s0 iv_b = s1 ). l14 = s0. s1 = 31. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). l15 = s0. s0 = p3. s1 = 3.
          s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
          IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
          l16 = s0.
          DO. " loop
            s0 = l6. s1 = 16. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
            IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
            DO 1 TIMES. " block
              s0 = p0. s0 = mem_ld_i32( s0 + 8 ). l6 = s0. s1 = 2147483645.
              IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0. EXIT. ENDIF. " br_if 0
              s0 = l6. s1 = -2147483648.
              IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0. EXIT. ENDIF. " br_if 0
              s0 = l7. s1 = l13.
              IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0. EXIT. ENDIF. " br_if 0
              s0 = 0. l6 = s0. s0 = p0. s0 = mem_ld_i32( s0 + 16 ). l10 = s0.
              DO 1 TIMES. " block
                s0 = p0. s0 = mem_ld_i32( s0 + 12 ). l11 = s0. s1 = 5. s0 = zcl_wasm_rt=>shl32( iv_val = s0 iv_shift = s1 ). s1 = l14. s0 = s0 + s1. l7 = s0. s1 = 0.
                IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                IF s0 <> 0. EXIT. ENDIF. " br_if 0
                s0 = l7. s1 = 5. s0 = zcl_wasm_rt=>shr_s32( iv_val = s0 iv_shift = s1 ). l8 = s0. s1 = l11.
                IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
                IF s0 <> 0. EXIT. ENDIF. " br_if 0
                s0 = l10. s1 = l8. s2 = 2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s0 = mem_ld_i32( s0 ). s1 = l15. s0 = zcl_wasm_rt=>shr_u32( iv_val = s0 iv_shift = s1 ). s1 = 1.
                s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). l6 = s0.
              ENDDO.
              s0 = l6. s1 = l16. s0 = zcl_wasm_rt=>xor32( iv_a = s0 iv_b = s1 ). l17 = s0. s0 = l9. s1 = 1. s0 = s0 - s1. l8 = s0.
              DO. " loop
                s0 = l7. s1 = 1. s0 = s0 - s1. l6 = s0. s0 = 0. l12 = s0.
                DO 1 TIMES. " block
                  s0 = l7. s1 = 0.
                  IF s0 <= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                  IF s0 <> 0. EXIT. ENDIF. " br_if 0
                  s0 = l6. s1 = 5. s0 = zcl_wasm_rt=>shr_s32( iv_val = s0 iv_shift = s1 ). l7 = s0. s1 = l11.
                  IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
                  IF s0 <> 0. EXIT. ENDIF. " br_if 0
                  s0 = l10. s1 = l7. s2 = 2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s0 = mem_ld_i32( s0 ). s1 = l6. s0 = zcl_wasm_rt=>shr_u32( iv_val = s0 iv_shift = s1 ). s1 = 1.
                  s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). l12 = s0.
                ENDDO.
                s0 = l12. s1 = l17.
                IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                IF s0 <> 0.
                  s0 = l6. l7 = s0. s0 = l8. s1 = 1. s0 = s0 - s1. l8 = s0.
                  IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
                  IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
                  lv_br = 1. EXIT. " br 1
                ELSE.
                ENDIF.
              ENDDO.
              s0 = 16. lv_br = 4. EXIT. " br 4
            ENDDO.
            s1 = p0. s2 = p1. s3 = l9. s4 = 1. s3 = zcl_wasm_rt=>shl32( iv_val = s3 iv_shift = s4 ). l9 = s3. s4 = p2. s3 = s3 + s4. l7 = s3. s4 = p5. s5 = p4.
            DATA(lv_ci_func) = mt_tab0[ s5 + 1 ]. " call_indirect
            s1 = dispatch_t14( iv_idx = lv_ci_func p0 = s1 p1 = s2 p2 = s3 p3 = s4 ). l6 = s1. s2 = 44. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ).
            IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
            IF s1 <> 0. EXIT. ENDIF. " br_if 0
          ENDDO.
          lv_br = 3. EXIT. " br 3
        ELSE.
        ENDIF.
        s1 = p0. s2 = p1. s3 = p2. s4 = p5. s5 = p4.
        DATA(lv_ci_func) = mt_tab0[ s5 + 1 ]. " call_indirect
        s1 = dispatch_t14( iv_idx = lv_ci_func p0 = s1 p1 = s2 p2 = s3 p3 = s4 ).
      ENDDO.
      s1 = 0.
    ENDDO.
    l6 = s1. s1 = p0. s1 = mem_ld_i32( s1 + 12 ). p1 = s1.
    IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
    IF s1 <> 0. EXIT. ENDIF. " br_if 0
    s1 = p0. s2 = p2. s3 = p3. s4 = p1. s5 = l6. PERFORM f137 USING s1 s2 s3 s4 s5 CHANGING s1. l6 = s1.
  ENDDO.
  s1 = l6. rv = s1.
ENDFORM.

FORM f524 USING p0 TYPE i p1 TYPE i p2 TYPE int8 p3 TYPE i.
  DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i.
  DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i.
  DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16.
  s0 = s0 - s1. l4 = s0. gv_g0 = s0. s0 = p1. s0 = mem_ld_i32( s0 + 4 ). l5 = s0. s1 = p1. s1 = mem_ld_i32( s1 ). l6 = s1. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l6. s1 = l5. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = p1.
  s1 = 0. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p1. s1 = 0. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = l4. s1 = p2. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 8 CHANGING cv_mem = mv_mem ).
  DO 1 TIMES. " block
    s0 = p0. s1 = p1. s2 = p3. s3 = 3. s2 = zcl_wasm_rt=>shl32( iv_val = s2 iv_shift = s3 ). s1 = s1 + s2. s2 = 32. s1 = s1 + s2. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 0 ). s2 = 12884901888. s3 = 12884901888. s4 = 1.
    s5 = l4. s6 = 8. s5 = s5 + s6. s6 = 2. PERFORM f0 USING s0 s1 s2 s3 s4 s5 s6 CHANGING s0. p2 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
    IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p2. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p3 = s0. s1 = p3. s1 = mem_ld_i32( s1 ). p3 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p3. s1 = 1.
    IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = p2. PERFORM f453 USING s0 s1.
  ENDDO.
  DO 1 TIMES. " block
    s0 = p1. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 16 ). p2 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
    IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p2. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p3 = s0. s1 = p3. s1 = mem_ld_i32( s1 ). p3 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p3. s1 = 1.
    IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = p2. PERFORM f453 USING s0 s1.
  ENDDO.
  DO 1 TIMES. " block
    s0 = p1. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 24 ). p2 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
    IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p2. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p3 = s0. s1 = p3. s1 = mem_ld_i32( s1 ). p3 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p3. s1 = 1.
    IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = p2. PERFORM f453 USING s0 s1.
  ENDDO.
  DO 1 TIMES. " block
    s0 = p1. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 32 ). p2 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
    IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p2. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p3 = s0. s1 = p3. s1 = mem_ld_i32( s1 ). p3 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p3. s1 = 1.
    IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = p2. PERFORM f453 USING s0 s1.
  ENDDO.
  DO 1 TIMES. " block
    s0 = p1. s1 = 40. s0 = s0 + s1. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). p2 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
    IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p2. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p3 = s0. s1 = p3. s1 = mem_ld_i32( s1 ). p3 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p3. s1 = 1.
    IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = p2. PERFORM f453 USING s0 s1.
  ENDDO.
  s0 = p0. s0 = mem_ld_i32( s0 + 16 ). p0 = s0. s1 = 16. s0 = s0 + s1. s1 = p1. s2 = p0. s2 = mem_ld_i32( s2 + 4 ).
  DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
  dispatch_t6( iv_idx = lv_ci_func p0 = s0 p1 = s1 ). s0 = l4. s1 = 16. s0 = s0 + s1. gv_g0 = s0.
ENDFORM.

FORM f525 USING p0 TYPE i p1 TYPE i p2 TYPE i.
  DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE int8. DATA l8 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i.
  DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i.
  DATA s22 TYPE i. DATA s23 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 80. s0 = s0 - s1. l4 = s0. gv_g0 = s0. s0 = l4. s1 = p1. s2 = p2. s3 = 1080043. s4 = 1. PERFORM f132 USING s0 s1 s2 s3 s4.
  DO. " loop
    s0 = l4. s1 = 68. s0 = s0 + s1. s1 = l4. PERFORM f206 USING s0 s1. s0 = l4. s0 = mem_ld_i32( s0 + 68 ). l3 = s0.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
  ENDDO.
  DO 1 TIMES. " block
    s0 = p2.
    DO 1 TIMES. " block
      s1 = l3. s2 = 2.
      IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0.
        s1 = l4. s1 = mem_ld_i32( s1 + 72 ). lv_br = 1. EXIT. " br 1
      ELSE.
      ENDIF.
      s2 = p2.
    ENDDO.
    l3 = s2. s1 = s1 - s2. s2 = 16.
    IF zcl_wasm_rt=>gt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
    IF s1 <> 0.
      lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s1 = 1. l8 = s1. s1 = p2. s2 = l3.
    IF s1 = s2. s1 = 1. ELSE. s1 = 0. ENDIF.
    IF s1 <> 0. EXIT. ENDIF. " br_if 0
    s1 = p1. s2 = p2. s1 = s1 + s2. l6 = s1. s1 = p1. s2 = l3. s1 = s1 + s2. l3 = s1.
    DO. " loop
      DO 1 TIMES. " block
        s1 = l3. s1 = mem_ld_i32_8s( s1 ). p1 = s1. s2 = 0.
        IF s1 >= s2. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0.
          s1 = p1. s2 = 255. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). p2 = s1. s1 = l3. s2 = 1. s1 = s1 + s2. lv_br = 1. EXIT. " br 1
        ELSE.
        ENDIF.
        s2 = l3. s2 = mem_ld_i32_8u( s2 + 1 ). s3 = 63. s2 = zcl_wasm_rt=>and32( iv_a = s2 iv_b = s3 ). l5 = s2. s2 = p1. s3 = 31. s2 = zcl_wasm_rt=>and32( iv_a = s2 iv_b = s3 ). p2 = s2. s2 = p1. s3 = -33.
        IF zcl_wasm_rt=>le_u32( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
        IF s2 <> 0.
          s2 = p2. s3 = 6. s2 = zcl_wasm_rt=>shl32( iv_val = s2 iv_shift = s3 ). s3 = l5. s2 = zcl_wasm_rt=>or32( iv_a = s2 iv_b = s3 ). p2 = s2. s2 = l3. s3 = 2. s2 = s2 + s3. lv_br = 1. EXIT. " br 1
        ELSE.
        ENDIF.
        s3 = l3. s3 = mem_ld_i32_8u( s3 + 2 ). s4 = 63. s3 = zcl_wasm_rt=>and32( iv_a = s3 iv_b = s4 ). s4 = l5. s5 = 6. s4 = zcl_wasm_rt=>shl32( iv_val = s4 iv_shift = s5 ). s3 = zcl_wasm_rt=>or32( iv_a = s3 iv_b = s4 ). l5 = s3. s3 = p1.
        s4 = -16.
        IF zcl_wasm_rt=>lt_u32( iv_a = s3 iv_b = s4 ) = abap_true. s3 = 1. ELSE. s3 = 0. ENDIF.
        IF s3 <> 0.
          s3 = l5. s4 = p2. s5 = 12. s4 = zcl_wasm_rt=>shl32( iv_val = s4 iv_shift = s5 ). s3 = zcl_wasm_rt=>or32( iv_a = s3 iv_b = s4 ). p2 = s3. s3 = l3. s4 = 3. s3 = s3 + s4. lv_br = 1. EXIT. " br 1
        ELSE.
        ENDIF.
        s4 = p2. s5 = 18. s4 = zcl_wasm_rt=>shl32( iv_val = s4 iv_shift = s5 ). s5 = 1835008. s4 = zcl_wasm_rt=>and32( iv_a = s4 iv_b = s5 ). s5 = l3. s5 = mem_ld_i32_8u( s5 + 3 ). s6 = 63. s5 = zcl_wasm_rt=>and32( iv_a = s5 iv_b = s6 ).
        s6 = l5. s7 = 6. s6 = zcl_wasm_rt=>shl32( iv_val = s6 iv_shift = s7 ). s5 = zcl_wasm_rt=>or32( iv_a = s5 iv_b = s6 ). s4 = zcl_wasm_rt=>or32( iv_a = s4 iv_b = s5 ). p2 = s4. s5 = 1114112.
        IF s4 = s5. s4 = 1. ELSE. s4 = 0. ENDIF.
        IF s4 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
        s4 = l3. s5 = 4. s4 = s4 + s5.
      ENDDO.
      l3 = s4.
      DO 1 TIMES. " block
        s4 = p2. s5 = 48. s4 = s4 - s5. p1 = s4. s5 = 10.
        IF zcl_wasm_rt=>ge_u32( iv_a = s4 iv_b = s5 ) = abap_true. s4 = 1. ELSE. s4 = 0. ENDIF.
        IF s4 <> 0.
          s4 = -1. s5 = p2. s6 = 32. s5 = zcl_wasm_rt=>or32( iv_a = s5 iv_b = s6 ). p1 = s5. s6 = 87. s5 = s5 - s6. p2 = s5. s6 = p2. s7 = p1. s8 = 97. s7 = s7 - s8.
          IF zcl_wasm_rt=>lt_u32( iv_a = s6 iv_b = s7 ) = abap_true. s6 = 1. ELSE. s6 = 0. ENDIF.
          IF s6 <> 0. s4 = s4. ELSE. s4 = s5. ENDIF.
          p1 = s4. s5 = 16.
          IF zcl_wasm_rt=>ge_u32( iv_a = s4 iv_b = s5 ) = abap_true. s4 = 1. ELSE. s4 = 0. ENDIF.
          IF s4 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        ELSE.
        ENDIF.
        s4 = p1. s4 = zcl_wasm_rt=>extend_u32( s4 ). s5 = l7. s6 = 4. s5 = zcl_wasm_rt=>shl64( iv_val = s5 iv_shift = s6 ). s4 = zcl_wasm_rt=>or64( iv_a = s4 iv_b = s5 ). l7 = s4. s4 = l3. s5 = l6.
        IF s4 = s5. s4 = 1. ELSE. s4 = 0. ENDIF.
        IF s4 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
        lv_br = 1. EXIT. " br 1
      ENDDO.
    ENDDO.
    s4 = 1080044. PERFORM f1357 USING s4.
    RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
  ENDDO.
  s4 = p0. s5 = l7. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s5 iv_addr = s4 + 8 CHANGING cv_mem = mv_mem ). s4 = p0. s5 = l8. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s5 iv_addr = s4 + 0 CHANGING cv_mem = mv_mem ). s4 = l4. s5 = 80.
  s4 = s4 + s5. gv_g0 = s4.
ENDFORM.

FORM f526 USING p0 TYPE i p1 TYPE i p2 TYPE i p3 TYPE i p4 TYPE i CHANGING rv TYPE i.
  DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE i. DATA l8 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i.
  DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i.
  DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 160. s0 = s0 - s1. l5 = s0. gv_g0 = s0. s0 = l5. s1 = 128.
  mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = l5. s1 = l5. s2 = 16. s1 = s1 + s2. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = p4.
  IF s0 <> 0.
    s0 = l5. s1 = 35. mem_st_i32_8( iv_addr = s0 + 16 iv_val = s1 ). s0 = 1. l6 = s0.
  ELSE.
  ENDIF.
  s0 = p1. s0 = mem_ld_i32( s0 ). p4 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO. " loop
        s0 = l5. s1 = p4. mem_st_i32( iv_addr = s0 + 156 iv_val = s1 ).
        DO 1 TIMES. " block
          s0 = p3. s1 = 127.
          IF s0 <= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0.
            s0 = l5. s0 = mem_ld_i32( s0 + 12 ). l7 = s0. s1 = l6. s0 = s0 + s1. s1 = p3. mem_st_i32_8( iv_addr = s0 iv_val = s1 ). s0 = l6. s1 = 1. s0 = s0 + s1. lv_br = 1. EXIT. " br 1
          ELSE.
          ENDIF.
          s1 = l5. s1 = mem_ld_i32( s1 + 12 ). l7 = s1. s2 = l6. s1 = s1 + s2. s2 = p3. PERFORM f653 USING s1 s2 CHANGING s1. s2 = l6. s1 = s1 + s2.
        ENDDO.
        l6 = s1. s1 = l5. s2 = l5. s2 = mem_ld_i32( s2 + 156 ). p3 = s2. s3 = 1. s2 = s2 + s3. l8 = s2. mem_st_i32( iv_addr = s1 + 156 iv_val = s2 ).
        DO 1 TIMES. " block
          DO 1 TIMES. " block
            DO 1 TIMES. " block
              DO 1 TIMES. " block
                s1 = p3. s1 = mem_ld_i32_8u( s1 ). p3 = s1. s2 = 92.
                IF s1 = s2. s1 = 1. ELSE. s1 = 0. ENDIF.
                IF s1 <> 0.
                  s1 = 92. p3 = s1. s1 = l8. s1 = mem_ld_i32_8u( s1 ). s2 = 117.
                  IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
                  IF s1 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
                  s1 = l5. s2 = 156. s1 = s1 + s2. s2 = 1. PERFORM f214 USING s1 s2 CHANGING s1. p3 = s1. s1 = p2. s2 = 1. mem_st_i32( iv_addr = s1 iv_val = s2 ). lv_br = 1. EXIT. " br 1
                ELSE.
                ENDIF.
                s1 = p3. s1 = zcl_wasm_rt=>extend8s_i32( s1 ). s2 = 0.
                IF s1 >= s2. s1 = 1. ELSE. s1 = 0. ENDIF.
                IF s1 <> 0. EXIT. ENDIF. " br_if 0
                s1 = p4. s2 = 6. s3 = l5. s4 = 156. s3 = s3 + s4. PERFORM f787 USING s1 s2 s3 CHANGING s1. p3 = s1.
              ENDDO.
              s1 = p3. s2 = 127.
              IF zcl_wasm_rt=>gt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
              IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
            ENDDO.
            s1 = p3. s2 = 3. s1 = zcl_wasm_rt=>shr_u32( iv_val = s1 iv_shift = s2 ). s2 = 536870908. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). s2 = 1181216. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). s2 = p3.
            s1 = zcl_wasm_rt=>shr_u32( iv_val = s1 iv_shift = s2 ). s2 = 1. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). lv_br = 1. EXIT. " br 1
          ENDDO.
          s2 = p3. s3 = -2. s2 = zcl_wasm_rt=>and32( iv_a = s2 iv_b = s3 ). s3 = 8204.
          IF s2 = s3. s2 = 1. ELSE. s2 = 0. ENDIF.
          s3 = p3. PERFORM f1224 USING s3 CHANGING s3. s4 = 0.
          IF s3 <> s4. s3 = 1. ELSE. s3 = 0. ENDIF.
          s2 = zcl_wasm_rt=>or32( iv_a = s2 iv_b = s3 ).
        ENDDO.
        IF s2 = 0. s2 = 1. ELSE. s2 = 0. ENDIF.
        IF s2 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        s2 = l5. s2 = mem_ld_i32( s2 + 156 ). p4 = s2. s2 = l6. s3 = l5. s3 = mem_ld_i32( s3 + 8 ). s4 = 6. s3 = s3 - s4.
        IF zcl_wasm_rt=>lt_u32( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
        IF s2 <> 0. EXIT. ENDIF. " br_if 0
        s2 = p0. s2 = mem_ld_i32( s2 ). s3 = l5. s4 = 12. s3 = s3 + s4. s4 = l5. s5 = 8. s4 = s4 + s5. s5 = l5. s6 = 16. s5 = s5 + s6. PERFORM f784 USING s2 s3 s4 s5 CHANGING s2.
        IF s2 = 0. s2 = 1. ELSE. s2 = 0. ENDIF.
        IF s2 <> 0. EXIT. ENDIF. " br_if 0
      ENDDO.
      s2 = l5. s2 = mem_ld_i32( s2 + 12 ). l7 = s2. s2 = 0. lv_br = 1. EXIT. " br 1
    ENDDO.
    s3 = p0. s3 = mem_ld_i32( s3 ). s4 = l7. s5 = l6. PERFORM f417 USING s3 s4 s5 CHANGING s3.
  ENDDO.
  s4 = l5. s5 = 16. s4 = s4 + s5. s5 = l7.
  IF s4 <> s5. s4 = 1. ELSE. s4 = 0. ENDIF.
  IF s4 <> 0.
    s4 = p0. s4 = mem_ld_i32( s4 ). s4 = mem_ld_i32( s4 + 16 ). p0 = s4. s5 = 16. s4 = s4 + s5. s5 = l7. s6 = p0. s6 = mem_ld_i32( s6 + 4 ).
    DATA(lv_ci_func) = mt_tab0[ s6 + 1 ]. " call_indirect
    dispatch_t6( iv_idx = lv_ci_func p0 = s4 p1 = s5 ).
  ELSE.
  ENDIF.
  s4 = p1. s5 = p4. mem_st_i32( iv_addr = s4 iv_val = s5 ). s4 = l5. s5 = 160. s4 = s4 + s5. gv_g0 = s4. rv = s3.
ENDFORM.

FORM f527 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i CHANGING rv TYPE int8.
  DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE int8. DATA l7 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i.
  DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i.
  DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 32. s0 = s0 - s1. p2 = s0. gv_g0 = s0.
  s0 = 25769803776. l6 = s0.
  DO 1 TIMES. " block
    s0 = p0. s1 = p1. PERFORM f151 USING s0 s1 CHANGING s0. p1 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 25769803776.
    IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s1 = p3. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 0 ). PERFORM f503 USING s0 s1 CHANGING s0. p3 = s0.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    DO 1 TIMES. " block
      s0 = p0. s1 = p2. s2 = p1. s2 = zcl_wasm_rt=>wrap_i64( s2 ). s3 = p3. PERFORM f311 USING s0 s1 s2 s3 CHANGING s0. l4 = s0. s1 = 0.
      IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        lv_br = 1. EXIT. " br 1
      ELSE.
      ENDIF.
      s0 = l4.
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = 4294967296. l6 = s0. lv_br = 1. EXIT. " br 1
      ELSE.
      ENDIF.
      s0 = p2. s0 = zcl_wasm_rt=>mem_ld_i64_ext( iv_mem = mv_mem iv_addr = s0 + 0 iv_op = 53 ). s1 = 2. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ).
      DO 1 TIMES. " block
        s1 = p2. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 16 ). l6 = s1. s2 = 32. s1 = zcl_wasm_rt=>shr_u64( iv_val = s1 iv_shift = s2 ). s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = -11.
        IF zcl_wasm_rt=>lt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0. EXIT. ENDIF. " br_if 0
        s1 = l6. s1 = zcl_wasm_rt=>wrap_i64( s1 ). l4 = s1. s2 = l4. s2 = mem_ld_i32( s2 ). l4 = s2. s3 = 1. s2 = s2 - s3. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = l4. s2 = 1.
        IF s1 > s2. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0. EXIT. ENDIF. " br_if 0
        s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s2 = l6. PERFORM f453 USING s1 s2.
      ENDDO.
      s1 = 1. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ).
      DO 1 TIMES. " block
        s1 = p2. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 24 ). l6 = s1. s2 = 32. s1 = zcl_wasm_rt=>shr_u64( iv_val = s1 iv_shift = s2 ). s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = -11.
        IF zcl_wasm_rt=>lt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0. EXIT. ENDIF. " br_if 0
        s1 = l6. s1 = zcl_wasm_rt=>wrap_i64( s1 ). l4 = s1. s2 = l4. s2 = mem_ld_i32( s2 ). l4 = s2. s3 = 1. s2 = s2 - s3. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = l4. s2 = 1.
        IF s1 > s2. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0. EXIT. ENDIF. " br_if 0
        s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s2 = l6. PERFORM f453 USING s1 s2.
      ENDDO.
      s1 = 4294967296. s0 = zcl_wasm_rt=>or64( iv_a = s0 iv_b = s1 ). l6 = s0. s0 = p2. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 8 ). l7 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ).
      s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
      IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = l7. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l4 = s0. s1 = l4. s1 = mem_ld_i32( s1 ). l4 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l4. s1 = 1.
      IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = l7. PERFORM f453 USING s0 s1.
    ENDDO.
    s0 = p3. s1 = 228.
    IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s0 = mem_ld_i32( s0 + 16 ). l4 = s0. s0 = mem_ld_i32( s0 + 56 ). s1 = p3. s2 = 2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s0 = mem_ld_i32( s0 ). p3 = s0. s1 = p3. s1 = mem_ld_i32( s1 ). l5 = s1.
    s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l5. s1 = 1.
    IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l4. s1 = p3. PERFORM f713 USING s0 s1.
  ENDDO.
  DO 1 TIMES. " block
    s0 = p1. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
    IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p3 = s0. s1 = p3. s1 = mem_ld_i32( s1 ). p3 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p3. s1 = 1.
    IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = p1. PERFORM f453 USING s0 s1.
  ENDDO.
  s0 = p2. s1 = 32. s0 = s0 + s1. gv_g0 = s0. s0 = l6. rv = s0.
ENDFORM.

FORM f528 USING p0 TYPE i CHANGING rv TYPE i.
  DATA l1 TYPE i. DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE int8. DATA l6 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i.
  DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i.
  DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    s0 = p0. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 88 ). l5 = s0. s1 = 0.
    IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    s1 = l5. s2 = p0. s2 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s2 + 96 ). s3 = p0. s3 = mem_ld_i32( s3 + 4 ). l3 = s3. s4 = p0. s4 = mem_ld_i32( s4 + 40 ). l1 = s4. s3 = s3 - s4.
    s3 = s3. " i64.extend_i32_s (noop in ABAP - sign preserved) s2 = s2 + s3. l6 = s2.
    IF s1 <= s2. s1 = 1. ELSE. s1 = 0. ENDIF.
    s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = gv_g0. s1 = 16. s0 = s0 - s1. l1 = s0. gv_g0 = s0. s0 = -1. l3 = s0.
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          s0 = p0. s1 = p0. s1 = mem_ld_i32( s1 + 60 ). l2 = s1. s2 = 1. s1 = s1 - s2. s2 = l2. s1 = zcl_wasm_rt=>or32( iv_a = s1 iv_b = s2 ). mem_st_i32( iv_addr = s0 + 60 iv_val = s1 ). s0 = p0. s0 = mem_ld_i32( s0 + 20 ). s1 = p0.
          s1 = mem_ld_i32( s1 + 24 ).
          IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0.
            s0 = p0. s1 = 0. s2 = 0. s3 = p0. s3 = mem_ld_i32( s3 + 32 ).
            DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
            s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ).
          ELSE.
          ENDIF.
          s0 = p0. s1 = 0. mem_st_i32( iv_addr = s0 + 24 iv_val = s1 ). s0 = p0. s1 = 0. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 16 CHANGING cv_mem = mv_mem ). s0 = p0. s0 = mem_ld_i32( s0 ). l2 = s0. s1 = 4.
          s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
          IF s0 <> 0.
            s0 = p0. s1 = l2. s2 = 32. s1 = zcl_wasm_rt=>or32( iv_a = s1 iv_b = s2 ). mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = -1. lv_br = 1. EXIT. " br 1
          ELSE.
          ENDIF.
          s1 = p0. s2 = p0. s2 = mem_ld_i32( s2 + 40 ). s3 = p0. s3 = mem_ld_i32( s3 + 44 ). s2 = s2 + s3. l4 = s2. mem_st_i32( iv_addr = s1 + 8 iv_val = s2 ). s1 = p0. s2 = l4. mem_st_i32( iv_addr = s1 + 4 iv_val = s2 ). s1 = l2. s2 = 27.
          s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s2 = 31. s1 = zcl_wasm_rt=>shr_s32( iv_val = s1 iv_shift = s2 ).
        ENDDO.
        IF s1 <> 0. EXIT. ENDIF. " br_if 0
        s1 = p0. s2 = l1. s3 = 15. s2 = s2 + s3. s3 = 1. s4 = p0. s4 = mem_ld_i32( s4 + 28 ).
        DATA(lv_ci_func) = mt_tab0[ s4 + 1 ]. " call_indirect
        s1 = dispatch_t11( iv_idx = lv_ci_func p0 = s1 p1 = s2 p2 = s3 ). s2 = 1.
        IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0. EXIT. ENDIF. " br_if 0
        s1 = l1. s1 = mem_ld_i32_8u( s1 + 15 ). l3 = s1.
      ENDDO.
      s1 = l1. s2 = 16. s1 = s1 + s2. gv_g0 = s1. s1 = l3. s2 = 0.
      IF s1 >= s2. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s1 = p0. s1 = mem_ld_i32( s1 + 40 ). l1 = s1. s1 = p0. s1 = mem_ld_i32( s1 + 4 ). l3 = s1.
    ELSE.
    ENDIF.
    s1 = p0. s2 = -1. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s2 iv_addr = s1 + 88 CHANGING cv_mem = mv_mem ). s1 = p0. s2 = l3. mem_st_i32( iv_addr = s1 + 84 iv_val = s2 ). s1 = p0. s2 = l6. s3 = l1. s4 = l3. s3 = s3 - s4.
    s3 = s3. " i64.extend_i32_s (noop in ABAP - sign preserved) s2 = s2 + s3. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s2 iv_addr = s1 + 96 CHANGING cv_mem = mv_mem ). s1 = -1. rv = s1. RETURN.
  ENDDO.
  s1 = l6. s2 = 1. s1 = s1 + s2. l6 = s1. s1 = p0. s1 = mem_ld_i32( s1 + 4 ). l2 = s1. s1 = p0. s1 = mem_ld_i32( s1 + 8 ). l1 = s1.
  DO 1 TIMES. " block
    s1 = p0. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 88 ). l5 = s1.
    IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
    IF s1 <> 0. EXIT. ENDIF. " br_if 0
    s1 = l5. s2 = l6. s1 = s1 - s2. l5 = s1. s2 = l1. s3 = l2. s2 = s2 - s3. s2 = s2. " i64.extend_i32_s (noop in ABAP - sign preserved)
    IF s1 >= s2. s1 = 1. ELSE. s1 = 0. ENDIF.
    IF s1 <> 0. EXIT. ENDIF. " br_if 0
    s1 = l2. s2 = l5. s2 = zcl_wasm_rt=>wrap_i64( s2 ). s1 = s1 + s2. l1 = s1.
  ENDDO.
  s1 = p0. s2 = l1. mem_st_i32( iv_addr = s1 + 84 iv_val = s2 ). s1 = p0. s2 = l6. s3 = p0. s3 = mem_ld_i32( s3 + 40 ). p0 = s3. s4 = l2. s3 = s3 - s4. s3 = s3. " i64.extend_i32_s (noop in ABAP - sign preserved) s2 = s2 + s3.
  zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s2 iv_addr = s1 + 96 CHANGING cv_mem = mv_mem ). s1 = p0. s2 = l2.
  IF zcl_wasm_rt=>ge_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
  IF s1 <> 0.
    s1 = l2. s2 = 1. s1 = s1 - s2. s2 = l3. mem_st_i32_8( iv_addr = s1 iv_val = s2 ).
  ELSE.
  ENDIF.
  s1 = l3. rv = s1.
ENDFORM.

FORM f529 USING p0 TYPE f CHANGING rv TYPE f.
  DATA l1 TYPE i. DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE int8. DATA l5 TYPE f. DATA l6 TYPE f. DATA l7 TYPE f. DATA l8 TYPE f. DATA l9 TYPE f. DATA l10 TYPE f. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i.
  DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i.
  DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i.
  DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i. DATA s36 TYPE i. DATA s37 TYPE i. DATA s38 TYPE i. DATA s39 TYPE i. DATA s40 TYPE i. DATA s41 TYPE i. DATA s42 TYPE i. DATA s43 TYPE i. DATA s44 TYPE i. DATA s45 TYPE i.
  DATA s46 TYPE i. DATA s47 TYPE i. DATA s48 TYPE i. DATA s49 TYPE i. DATA s50 TYPE i. DATA s51 TYPE i. DATA s52 TYPE i. DATA s53 TYPE i. DATA s54 TYPE i. DATA s55 TYPE i. DATA s56 TYPE i. DATA s57 TYPE i. DATA s58 TYPE i. DATA s59 TYPE i.
  DATA lv_br TYPE i.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          s0 = p0. s0 = zcl_wasm_rt=>reinterpret_f64_i64( s0 ). l4 = s0. s1 = 0.
          IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0.
            s0 = l4. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). l1 = s0. s1 = 1048575.
            IF zcl_wasm_rt=>gt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          ELSE.
          ENDIF.
          s0 = p0. s0 = zcl_wasm_rt=>reinterpret_f64_i64( s0 ). s1 = 9223372036854775807. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ).
          IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0.
            s0 = '-1.000000'. s1 = p0. s2 = p0. s1 = s1 * s2. s0 = s0 / s1. rv = s0. RETURN.
          ELSE.
          ENDIF.
          s0 = l4. s1 = 0.
          IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          s0 = p0. s1 = p0. s0 = s0 - s1. s1 = '0.000000'. s0 = s0 / s1. rv = s0. RETURN.
        ENDDO.
        s0 = l1. s1 = 2146435071.
        IF zcl_wasm_rt=>gt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
        s0 = 1072693248. l2 = s0. s0 = -1023. l3 = s0. s0 = l1. s1 = 1072693248.
        IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = l1. l2 = s0. lv_br = 2. EXIT. " br 2
        ELSE.
        ENDIF.
        s0 = l4. s0 = zcl_wasm_rt=>wrap_i64( s0 ).
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        s0 = '0.000000'. rv = s0. RETURN.
      ENDDO.
      s0 = p0. s1 = '18014398509481984.000000'. s0 = s0 * s1. s0 = zcl_wasm_rt=>reinterpret_f64_i64( s0 ). l4 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). l2 = s0. s0 = -1077.
      l3 = s0.
    ENDDO.
    s0 = l3. s1 = l2. s2 = 614242. s1 = s1 + s2. l1 = s1. s2 = 20. s1 = zcl_wasm_rt=>shr_u32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s0 = s0. " convert to f64 l9 = s0. s1 = '0.301030'. s0 = s0 * s1. l5 = s0. s1 = l4. s2 = 4294967295.
    s1 = zcl_wasm_rt=>and64( iv_a = s1 iv_b = s2 ). s2 = l1. s3 = 1048575. s2 = zcl_wasm_rt=>and32( iv_a = s2 iv_b = s3 ). s3 = 1072079006. s2 = s2 + s3. s2 = zcl_wasm_rt=>extend_u32( s2 ). s3 = 32.
    s2 = zcl_wasm_rt=>shl64( iv_val = s2 iv_shift = s3 ). s1 = zcl_wasm_rt=>or64( iv_a = s1 iv_b = s2 ). s1 = zcl_wasm_rt=>reinterpret_i64_f64( s1 ). s2 = '-1.000000'. s1 = s1 + s2. p0 = s1. s2 = p0. s3 = p0. s4 = '0.500000'. s3 = s3 * s4.
    s2 = s2 * s3. l7 = s2. s1 = s1 - s2. s1 = zcl_wasm_rt=>reinterpret_f64_i64( s1 ). s2 = -4294967296. s1 = zcl_wasm_rt=>and64( iv_a = s1 iv_b = s2 ). s1 = zcl_wasm_rt=>reinterpret_i64_f64( s1 ). l8 = s1. s2 = '0.434294'. s1 = s1 * s2.
    l6 = s1. s0 = s0 + s1. l10 = s0. s1 = l6. s2 = l5. s3 = l10. s2 = s2 - s3. s1 = s1 + s2. s2 = p0. s3 = p0. s4 = '2.000000'. s3 = s3 + s4. s2 = s2 / s3. l5 = s2. s3 = l7. s4 = l5. s5 = l5. s4 = s4 * s5. l6 = s4. s5 = l6. s4 = s4 * s5.
    l5 = s4. s5 = l5. s6 = l5. s7 = '0.153138'. s6 = s6 * s7. s7 = '0.222222'. s6 = s6 + s7. s5 = s5 * s6. s6 = '0.400000'. s5 = s5 + s6. s4 = s4 * s5. s5 = l6. s6 = l5. s7 = l5. s8 = l5. s9 = '0.147982'. s8 = s8 * s9. s9 = '0.181836'.
    s8 = s8 + s9. s7 = s7 * s8. s8 = '0.285714'. s7 = s7 + s8. s6 = s6 * s7. s7 = '0.666667'. s6 = s6 + s7. s5 = s5 * s6. s4 = s4 + s5. s3 = s3 + s4. s2 = s2 * s3. s3 = p0. s4 = l8. s3 = s3 - s4. s4 = l7. s3 = s3 - s4. s2 = s2 + s3.
    p0 = s2. s3 = '0.434294'. s2 = s2 * s3. s3 = l9. s4 = '0.000000'. s3 = s3 * s4. s4 = p0. s5 = l8. s4 = s4 + s5. s5 = '0.000000'. s4 = s4 * s5. s3 = s3 + s4. s2 = s2 + s3. s1 = s1 + s2. s0 = s0 + s1. p0 = s0.
  ENDDO.
  s0 = p0. rv = s0.
ENDFORM.

FORM f530 USING p0 TYPE i p1 TYPE i.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE i. DATA l8 TYPE i. DATA l9 TYPE int8. DATA l10 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i.
  DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i.
  DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l4 = s0.
  gv_g0 = s0. s0 = p0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        s1 = p1. s1 = mem_ld_i32( s1 + 8 ). l3 = s1. s2 = p1. s2 = mem_ld_i32( s2 + 4 ). l5 = s2.
        IF zcl_wasm_rt=>lt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0.
          s1 = p1. s1 = mem_ld_i32( s1 ). l6 = s1. s2 = l3. s1 = s1 + s2. s1 = mem_ld_i32_8u( s1 ). s2 = 115.
          IF s1 = s2. s1 = 1. ELSE. s1 = 0. ENDIF.
          IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        ELSE.
        ENDIF.
        s1 = p0. s2 = 0. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s2 iv_addr = s1 + 8 CHANGING cv_mem = mv_mem ). lv_br = 1. EXIT. " br 1
      ENDDO.
      s1 = p1. s2 = l3. s3 = 1. s2 = s2 + s3. l2 = s2. mem_st_i32( iv_addr = s1 + 8 iv_val = s2 ).
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          DO 1 TIMES. " block
            DO 1 TIMES. " block
              s1 = l2. s2 = l5.
              IF zcl_wasm_rt=>lt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
              IF s1 <> 0.
                s1 = l2. s2 = l6. s1 = s1 + s2. s1 = mem_ld_i32_8u( s1 ). s2 = 95.
                IF s1 = s2. s1 = 1. ELSE. s1 = 0. ENDIF.
                IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
              ELSE.
              ENDIF.
              s1 = l2. s2 = l5. s3 = l2. s4 = l5.
              IF zcl_wasm_rt=>gt_u32( iv_a = s3 iv_b = s4 ) = abap_true. s3 = 1. ELSE. s3 = 0. ENDIF.
              IF s3 <> 0. s1 = s1. ELSE. s1 = s2. ENDIF.
              l8 = s1.
              DO. " loop
                s1 = l2. s2 = l5.
                IF zcl_wasm_rt=>lt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
                IF s1 <> 0.
                  s1 = l2. s2 = l6. s1 = s1 + s2. s1 = mem_ld_i32_8u( s1 ). s2 = 95.
                  IF s1 = s2. s1 = 1. ELSE. s1 = 0. ENDIF.
                  IF s1 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
                ELSE.
                ENDIF.
                s1 = l2. s2 = l8.
                IF s1 = s2. s1 = 1. ELSE. s1 = 0. ENDIF.
                IF s1 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
                DO 1 TIMES. " block
                  s1 = l2. s2 = l6. s1 = s1 + s2. s1 = mem_ld_i32_8u( s1 ). l3 = s1. s2 = 48. s1 = s1 - s2. l7 = s1. s2 = 255. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). s2 = 10.
                  IF zcl_wasm_rt=>lt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
                  IF s1 <> 0. EXIT. ENDIF. " br_if 0
                  s1 = l3. s2 = 97. s1 = s1 - s2. s2 = 255. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). s2 = 26.
                  IF zcl_wasm_rt=>ge_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
                  IF s1 <> 0.
                    s1 = l3. s2 = 65. s1 = s1 - s2. s2 = 255. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). s2 = 26.
                    IF zcl_wasm_rt=>ge_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
                    IF s1 <> 0. lv_br = 5. EXIT. ENDIF. " br_if 5
                    s1 = l3. s2 = 29. s1 = s1 - s2. l7 = s1. lv_br = 1. EXIT. " br 1
                  ELSE.
                  ENDIF.
                  s1 = l3. s2 = 87. s1 = s1 - s2. l7 = s1.
                ENDDO.
                s1 = p1. s2 = l2. s3 = 1. s2 = s2 + s3. l2 = s2. mem_st_i32( iv_addr = s1 + 8 iv_val = s2 ). s1 = l4. s2 = l9. s3 = 62. PERFORM f991 USING s1 s2 s3. s1 = l4. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 8 ).
                s2 = 0.
                IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
                IF s1 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
                s1 = l4. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 0 ). l10 = s1. s2 = l7. s2 = zcl_wasm_rt=>extend_u32( s2 ). s3 = 255. s2 = zcl_wasm_rt=>and64( iv_a = s2 iv_b = s3 ). s1 = s1 + s2. l9 = s1. s2 = l10.
                IF zcl_wasm_rt=>ge_u64( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
                IF s1 <> 0. EXIT. ENDIF. " br_if 0
              ENDDO.
              lv_br = 2. EXIT. " br 2
            ENDDO.
            s1 = p1. s2 = l3. s3 = 2. s2 = s2 + s3. mem_st_i32( iv_addr = s1 + 8 iv_val = s2 ). lv_br = 2. EXIT. " br 2
          ENDDO.
          s1 = p1. s2 = l2. s3 = 1. s2 = s2 + s3. mem_st_i32( iv_addr = s1 + 8 iv_val = s2 ). s1 = l9. s2 = 1. s1 = s1 + s2. l9 = s1. s2 = 0.
          IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
          IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        ENDDO.
        s1 = p0. s2 = 0. mem_st_i32_8( iv_addr = s1 + 1 iv_val = s2 ). s1 = 1. lv_br = 2. EXIT. " br 2
      ENDDO.
      s2 = l9. s3 = 1. s2 = s2 + s3. l9 = s2. s3 = 0.
      IF s2 <> s3. s2 = 1. ELSE. s2 = 0. ENDIF.
      IF s2 <> 0.
        s2 = p0. s3 = l9. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s3 iv_addr = s2 + 8 CHANGING cv_mem = mv_mem ). lv_br = 1. EXIT. " br 1
      ELSE.
      ENDIF.
      s2 = p0. s3 = 0. mem_st_i32_8( iv_addr = s2 + 1 iv_val = s3 ). s2 = 1. lv_br = 1. EXIT. " br 1
    ENDDO.
    s3 = 0.
  ENDDO.
  mem_st_i32_8( iv_addr = s2 iv_val = s3 ). s2 = l4. s3 = 16. s2 = s2 + s3. gv_g0 = s2.
ENDFORM.

FORM f531 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i p4 TYPE i CHANGING rv TYPE int8.
  DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i.
  DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA lv_br TYPE i. s0 = gv_g0.
  s1 = 32. s0 = s0 - s1. l5 = s0. gv_g0 = s0. s0 = p3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). p1 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
  IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p2 = s0. s1 = p2. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
  ELSE.
  ENDIF.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      s0 = 25769803776. s1 = p0. s2 = l5. s3 = 8. s2 = s2 + s3. s3 = p1. PERFORM f406 USING s1 s2 s3 CHANGING s1. p2 = s1.
      IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. EXIT. ENDIF. " br_if 0
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          DO 1 TIMES. " block
            s0 = p4.
            CASE s0.
              WHEN 0. EXIT.
              WHEN 1. lv_br = 1. EXIT.
              WHEN OTHERS. lv_br = 4. EXIT.
            ENDCASE.
          ENDDO.
          s0 = -1. p1 = s0. s0 = p2. s0 = mem_ld_i32( s0 + 4 ).
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          s0 = p2. s0 = mem_ld_i32( s0 + 8 ). p3 = s0. s1 = 0.
          IF s0 <= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          s0 = p3. s1 = 1. s0 = s0 - s1. s0 = zcl_wasm_rt=>extend_u32( s0 ). p1 = s0. lv_br = 1. EXIT. " br 1
        ENDDO.
        s0 = -1. p1 = s0. s0 = p2. s1 = 8. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). s1 = -2147483648.
        IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        DO 1 TIMES. " block
          s0 = p2. s0 = mem_ld_i32( s0 + 12 ). p3 = s0.
          IF s0 <> 0.
            s0 = p3. s1 = 5. s0 = zcl_wasm_rt=>shl32( iv_val = s0 iv_shift = s1 ). p4 = s0. s0 = p2. s0 = mem_ld_i32( s0 + 16 ). l6 = s0.
            DO. " loop
              s0 = l6. s0 = mem_ld_i32( s0 ). l7 = s0.
              IF s0 <> 0.
                s0 = p2. s0 = mem_ld_i32( s0 + 8 ). s1 = l7. s1 = zcl_wasm_rt=>ctz32( s1 ). s0 = s0 + s1. s1 = p4. s0 = s0 - s1. lv_br = 3. EXIT. " br 3
              ELSE.
              ENDIF.
              s1 = l6. s2 = 4. s1 = s1 + s2. l6 = s1. s1 = p4. s2 = 32. s1 = s1 - s2. p4 = s1. s1 = p3. s2 = 1. s1 = s1 - s2. p3 = s1.
              IF s1 <> 0. EXIT. ENDIF. " br_if 0
            ENDDO.
          ELSE.
          ENDIF.
          s1 = 0.
        ENDDO.
        s1 = s1. " i64.extend_i32_s (noop in ABAP - sign preserved) p1 = s1.
      ENDDO.
      DO 1 TIMES. " block
        s1 = l5. s2 = 8. s1 = s1 + s2. s2 = p2.
        IF s1 = s2. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0.
          s1 = l5. s1 = mem_ld_i32( s1 + 8 ). p2 = s1.
          IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
          IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          s1 = l5. s1 = mem_ld_i32( s1 + 24 ). p3 = s1.
          IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
          IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          s1 = p2. s1 = mem_ld_i32( s1 ). s2 = p3. s3 = 0. s4 = p2. s5 = 4. s4 = s4 + s5. s4 = mem_ld_i32( s4 ).
          DATA(lv_ci_func) = mt_tab0[ s4 + 1 ]. " call_indirect
          s1 = dispatch_t11( iv_idx = lv_ci_func p0 = s1 p1 = s2 p2 = s3 ). lv_br = 1. EXIT. " br 1
        ELSE.
        ENDIF.
        s1 = p2. s2 = 4. s1 = s1 - s2. p2 = s1. s2 = p2. s2 = mem_ld_i32( s2 ). p3 = s2. s3 = 1. s2 = s2 - s3. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = p3. s2 = 1.
        IF s1 > s2. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0. EXIT. ENDIF. " br_if 0
        s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s2 = p2. s2 = zcl_wasm_rt=>extend_u32( s2 ). s3 = -42949672960. s2 = zcl_wasm_rt=>or64( iv_a = s2 iv_b = s3 ). PERFORM f453 USING s1 s2.
      ENDDO.
      DO 1 TIMES. " block
        s1 = p0. s2 = 16. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). s2 = 140. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). p2 = s1.
        IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0. EXIT. ENDIF. " br_if 0
        s1 = p2. s1 = mem_ld_i32_8u( s1 + 40 ). s2 = 4. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ).
        IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0. EXIT. ENDIF. " br_if 0
        s1 = p1. s2 = 4294967295. s1 = zcl_wasm_rt=>and64( iv_a = s1 iv_b = s2 ). lv_br = 1. EXIT. " br 1
      ENDDO.
      s2 = p0. s3 = p1. PERFORM f811 USING s2 s3 CHANGING s2.
    ENDDO.
    s3 = l5. s4 = 32. s3 = s3 + s4. gv_g0 = s3. rv = s2. RETURN.
  ENDDO.
  RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
  rv = s1.
ENDFORM.

FORM f532 USING p0 TYPE f CHANGING rv TYPE f.
  DATA l1 TYPE i. DATA l2 TYPE i. DATA l3 TYPE int8. DATA l4 TYPE int8. DATA l5 TYPE f. DATA l6 TYPE f. DATA l7 TYPE f. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i.
  DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i.
  DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i.
  DATA s35 TYPE i. DATA s36 TYPE i. DATA s37 TYPE i. DATA s38 TYPE i. DATA s39 TYPE i. DATA s40 TYPE i. DATA s41 TYPE i. DATA s42 TYPE i. DATA s43 TYPE i. DATA s44 TYPE i. DATA s45 TYPE i. DATA s46 TYPE i. DATA s47 TYPE i. DATA s48 TYPE i.
  DATA s49 TYPE i. DATA s50 TYPE i. DATA s51 TYPE i. DATA s52 TYPE i. DATA s53 TYPE i. DATA s54 TYPE i. DATA s55 TYPE i. DATA s56 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      s0 = p0. s0 = zcl_wasm_rt=>reinterpret_f64_i64( s0 ). l3 = s0. s1 = 52. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = 2047. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). l1 = s0.
      s1 = 969. s0 = s0 - s1. s1 = 63.
      IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = l1. l2 = s0. lv_br = 1. EXIT. " br 1
      ELSE.
      ENDIF.
      s0 = '1.000000'. s1 = l1. s2 = 969.
      IF zcl_wasm_rt=>lt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = l1. s1 = 1033.
      IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = '0.000000'. s1 = l3. s2 = -4503599627370496.
      IF s1 = s2. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = l1. s1 = 2047.
      IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = p0. s1 = '1.000000'. s0 = s0 + s1. rv = s0. RETURN.
      ELSE.
      ENDIF.
      s0 = l3. s1 = 0.
      IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = '0.000000'. rv = s0. RETURN.
      ELSE.
      ENDIF.
      s0 = '+Inf'. rv = s0. RETURN.
    ENDDO.
    s0 = 1199632. s0 = zcl_wasm_rt=>mem_ld_f64( iv_mem = mv_mem iv_addr = s0 + 0 ). s1 = p0. s0 = s0 * s1. s1 = 1199640. s1 = zcl_wasm_rt=>mem_ld_f64( iv_mem = mv_mem iv_addr = s1 + 0 ). l5 = s1. s0 = s0 + s1. l6 = s0. s1 = l5.
    s0 = s0 - s1. l5 = s0. s1 = 1199656. s1 = zcl_wasm_rt=>mem_ld_f64( iv_mem = mv_mem iv_addr = s1 + 0 ). s0 = s0 * s1. s1 = l5. s2 = 1199648. s2 = zcl_wasm_rt=>mem_ld_f64( iv_mem = mv_mem iv_addr = s2 + 0 ). s1 = s1 * s2. s2 = p0.
    s1 = s1 + s2. s0 = s0 + s1. l5 = s0. s1 = l5. s0 = s0 * s1. p0 = s0. s1 = p0. s0 = s0 * s1. s1 = l5. s2 = 1199688. s2 = zcl_wasm_rt=>mem_ld_f64( iv_mem = mv_mem iv_addr = s2 + 0 ). s1 = s1 * s2. s2 = 1199680.
    s2 = zcl_wasm_rt=>mem_ld_f64( iv_mem = mv_mem iv_addr = s2 + 0 ). s1 = s1 + s2. s0 = s0 * s1. s1 = p0. s2 = l5. s3 = 1199672. s3 = zcl_wasm_rt=>mem_ld_f64( iv_mem = mv_mem iv_addr = s3 + 0 ). s2 = s2 * s3. s3 = 1199664.
    s3 = zcl_wasm_rt=>mem_ld_f64( iv_mem = mv_mem iv_addr = s3 + 0 ). s2 = s2 + s3. s1 = s1 * s2. s2 = l6. s2 = zcl_wasm_rt=>reinterpret_f64_i64( s2 ). l3 = s2. s2 = zcl_wasm_rt=>wrap_i64( s2 ). s3 = 4.
    s2 = zcl_wasm_rt=>shl32( iv_val = s2 iv_shift = s3 ). s3 = 2032. s2 = zcl_wasm_rt=>and32( iv_a = s2 iv_b = s3 ). l1 = s2. s3 = 1199744. s2 = s2 + s3. s2 = zcl_wasm_rt=>mem_ld_f64( iv_mem = mv_mem iv_addr = s2 + 0 ). s3 = l5.
    s2 = s2 + s3. s1 = s1 + s2. s0 = s0 + s1. l5 = s0. s0 = l1. s1 = 1199752. s0 = s0 + s1. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). s1 = l3. s2 = 45. s1 = zcl_wasm_rt=>shl64( iv_val = s1 iv_shift = s2 ).
    s0 = s0 + s1. l4 = s0. s0 = l2.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      DO 1 TIMES. " block
        s0 = l3. s1 = 2147483648. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ).
        IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = l4. s1 = 4544132024016830464. s0 = s0 - s1. s0 = zcl_wasm_rt=>reinterpret_i64_f64( s0 ). p0 = s0. s1 = l5. s0 = s0 * s1. s1 = p0. s0 = s0 + s1.
          s1 = '5486124068793688683255936251187209270074392635932332070112001988456197381759672947165175699536362793613284725337872111744958183862744647903224103718245670299614498700710006264535590197791934024641512541262359795191593953928908168990292758500391456212260452596575509589842140073806143686060649302051520512.000000'.
          s0 = s0 * s1. lv_br = 1. EXIT. " br 1
        ELSE.
        ENDIF.
        s1 = l4. s2 = 4602678819172646912. s1 = s1 + s2. s1 = zcl_wasm_rt=>reinterpret_i64_f64( s1 ). l6 = s1. s2 = l5. s1 = s1 * s2. l5 = s1. s2 = l6. s1 = s1 + s2. l7 = s1. s2 = '1.000000'.
        IF s1 < s2. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0.
          s1 = l7. s2 = '1.000000'. s1 = s1 + s2. p0 = s1. s2 = l5. s3 = l6. s4 = l7. s3 = s3 - s4. s2 = s2 + s3. s3 = l7. s4 = '1.000000'. s5 = p0. s4 = s4 - s5. s3 = s3 + s4. s2 = s2 + s3. s1 = s1 + s2. s2 = '-1.000000'. s1 = s1 + s2.
        ELSE.
          s2 = l7.
        ENDIF.
        s3 = '0.000000'. s2 = s2 * s3.
      ENDDO.
      rv = s2. RETURN.
    ELSE.
    ENDIF.
    s2 = l4. s2 = zcl_wasm_rt=>reinterpret_i64_f64( s2 ). p0 = s2. s3 = l5. s2 = s2 * s3. s3 = p0. s2 = s2 + s3.
  ENDDO.
  rv = s2.
ENDFORM.

FORM f533 USING p0 TYPE i p1 TYPE int8 CHANGING rv TYPE i.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i.
  DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i.
  DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i. DATA s36 TYPE i. DATA s37 TYPE i.
  DATA s38 TYPE i. DATA s39 TYPE i. DATA s40 TYPE i. DATA s41 TYPE i. DATA s42 TYPE i. DATA s43 TYPE i. DATA s44 TYPE i. DATA s45 TYPE i. DATA s46 TYPE i. DATA s47 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      s0 = p1. s1 = 2808348672.
      IF zcl_wasm_rt=>ge_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        DO 1 TIMES. " block
          s0 = p0. s0 = mem_ld_i32( s0 + 12 ). s1 = 3.
          IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0.
            s0 = p0. s0 = mem_ld_i32( s0 + 16 ). l2 = s0. lv_br = 1. EXIT. " br 1
          ELSE.
          ENDIF.
          s0 = p0. s0 = mem_ld_i32( s0 ). l2 = s0. s0 = mem_ld_i32( s0 ). s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s2 = 12. s3 = l2. s4 = 4. s3 = s3 + s4. s3 = mem_ld_i32( s3 ).
          DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
          s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). l2 = s0.
          IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
          s0 = p0. s1 = 3. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = p0. s1 = l2. mem_st_i32( iv_addr = s0 + 16 iv_val = s1 ).
        ENDDO.
        s0 = l2. s1 = p1. s2 = 1000000000000000000. s1 = zcl_wasm_rt=>div_u64( iv_a = s1 iv_b = s2 ). zcl_wasm_rt=>mem_st_i64_trunc( EXPORTING iv_val = s1 iv_addr = s0 + 8 iv_op = 62 CHANGING cv_mem = mv_mem ). s0 = l2. s1 = p1.
        s2 = 1000000000. s1 = zcl_wasm_rt=>div_u64( iv_a = s1 iv_b = s2 ). l5 = s1. s2 = 1000000000. s1 = zcl_wasm_rt=>rem_u64( iv_a = s1 iv_b = s2 ).
        zcl_wasm_rt=>mem_st_i64_trunc( EXPORTING iv_val = s1 iv_addr = s0 + 4 iv_op = 62 CHANGING cv_mem = mv_mem ). s0 = l2. s1 = p1. s2 = l5. s3 = 1000000000. s2 = s2 * s3. s1 = s1 - s2.
        zcl_wasm_rt=>mem_st_i64_trunc( EXPORTING iv_val = s1 iv_addr = s0 + 0 iv_op = 62 CHANGING cv_mem = mv_mem ). s0 = 27. lv_br = 1. EXIT. " br 1
      ELSE.
      ENDIF.
      s1 = p0. s1 = mem_ld_i32( s1 + 12 ). l2 = s1. s1 = p1. s2 = 1000000000.
      IF zcl_wasm_rt=>ge_u64( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0.
        DO 1 TIMES. " block
          s1 = l2. s2 = 2.
          IF s1 = s2. s1 = 1. ELSE. s1 = 0. ENDIF.
          IF s1 <> 0.
            s1 = p0. s1 = mem_ld_i32( s1 + 16 ). l2 = s1. lv_br = 1. EXIT. " br 1
          ELSE.
          ENDIF.
          s1 = p0. s1 = mem_ld_i32( s1 ). l2 = s1. s1 = mem_ld_i32( s1 ). s2 = p0. s2 = mem_ld_i32( s2 + 16 ). s3 = 8. s4 = l2. s5 = 4. s4 = s4 + s5. s4 = mem_ld_i32( s4 ).
          DATA(lv_ci_func) = mt_tab0[ s4 + 1 ]. " call_indirect
          s1 = dispatch_t11( iv_idx = lv_ci_func p0 = s1 p1 = s2 p2 = s3 ). l2 = s1.
          IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
          IF s1 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
          s1 = p0. s2 = 2. mem_st_i32( iv_addr = s1 + 12 iv_val = s2 ). s1 = p0. s2 = l2. mem_st_i32( iv_addr = s1 + 16 iv_val = s2 ).
        ENDDO.
        s1 = l2. s2 = p1. s2 = zcl_wasm_rt=>wrap_i64( s2 ). l3 = s2. s3 = 1000000000. s2 = zcl_wasm_rt=>div_u32( iv_a = s2 iv_b = s3 ). l4 = s2. mem_st_i32( iv_addr = s1 + 4 iv_val = s2 ). s1 = l2. s2 = l3. s3 = l4. s4 = 1000000000.
        s3 = s3 * s4. s2 = s2 - s3. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = 18. lv_br = 1. EXIT. " br 1
      ELSE.
      ENDIF.
      DO 1 TIMES. " block
        s2 = l2. s3 = 1.
        IF s2 = s3. s2 = 1. ELSE. s2 = 0. ENDIF.
        IF s2 <> 0.
          s2 = p0. s2 = mem_ld_i32( s2 + 16 ). l2 = s2. lv_br = 1. EXIT. " br 1
        ELSE.
        ENDIF.
        s2 = p0. s2 = mem_ld_i32( s2 ). l2 = s2. s2 = mem_ld_i32( s2 ). s3 = p0. s3 = mem_ld_i32( s3 + 16 ). s4 = 4. s5 = l2. s6 = 4. s5 = s5 + s6. s5 = mem_ld_i32( s5 ).
        DATA(lv_ci_func) = mt_tab0[ s5 + 1 ]. " call_indirect
        s2 = dispatch_t11( iv_idx = lv_ci_func p0 = s2 p1 = s3 p2 = s4 ). l2 = s2.
        IF s2 = 0. s2 = 1. ELSE. s2 = 0. ENDIF.
        IF s2 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
        s2 = p0. s3 = 1. mem_st_i32( iv_addr = s2 + 12 iv_val = s3 ). s2 = p0. s3 = l2. mem_st_i32( iv_addr = s2 + 16 iv_val = s3 ).
      ENDDO.
      s2 = l2. s3 = p1. zcl_wasm_rt=>mem_st_i64_trunc( EXPORTING iv_val = s3 iv_addr = s2 + 0 iv_op = 62 CHANGING cv_mem = mv_mem ). s2 = 9.
    ENDDO.
    l2 = s2. s2 = p0. s3 = 0. mem_st_i32( iv_addr = s2 + 4 iv_val = s3 ). s2 = p0. s3 = l2. mem_st_i32( iv_addr = s2 + 8 iv_val = s3 ). s2 = p0. s3 = 1073741823. s4 = 0. PERFORM f290 USING s2 s3 s4 CHANGING s2. rv = s2. RETURN.
  ENDDO.
  s2 = p0. s2 = mem_ld_i32( s2 + 12 ).
  IF s2 <> 0.
    s2 = p0. s2 = mem_ld_i32( s2 ). l2 = s2. s2 = mem_ld_i32( s2 ). s3 = p0. s3 = mem_ld_i32( s3 + 16 ). s4 = 0. s5 = l2. s6 = 4. s5 = s5 + s6. s5 = mem_ld_i32( s5 ).
    DATA(lv_ci_func) = mt_tab0[ s5 + 1 ]. " call_indirect
    s2 = dispatch_t11( iv_idx = lv_ci_func p0 = s2 p1 = s3 p2 = s4 ). l2 = s2. s2 = p0. s3 = 0. mem_st_i32( iv_addr = s2 + 12 iv_val = s3 ). s2 = p0. s3 = l2. mem_st_i32( iv_addr = s2 + 16 iv_val = s3 ).
  ELSE.
  ENDIF.
  s2 = p0. s3 = 9223372032559808512. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s3 iv_addr = s2 + 4 CHANGING cv_mem = mv_mem ). s2 = 32. rv = s2.
ENDFORM.

FORM f534 USING p0 TYPE i p1 TYPE i p2 TYPE i p3 TYPE i p4 TYPE i.
  DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE int8. DATA l8 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i.
  DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i.
  DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i. DATA s36 TYPE i. DATA s37 TYPE i.
  DATA s38 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 256. s0 = s0 - s1. l5 = s0. gv_g0 = s0. s0 = l5. s1 = 256. s2 = p2. s3 = p3. PERFORM f912 USING s0 s1 s2 s3 CHANGING s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        s0 = p0. s0 = mem_ld_i32( s0 + 16 ). p2 = s0. s1 = 224. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). s1 = p0. s2 = p1. s3 = 3. s2 = zcl_wasm_rt=>shl32( iv_val = s2 iv_shift = s3 ). s1 = s1 + s2. s2 = 88. s1 = s1 + s2.
        s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 0 ). l7 = s1. s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = 0. s3 = l7. s4 = -4294967297.
        IF zcl_wasm_rt=>gt_u64( iv_a = s3 iv_b = s4 ) = abap_true. s3 = 1. ELSE. s3 = 0. ENDIF.
        IF s3 <> 0. s1 = s1. ELSE. s1 = s2. ENDIF.
        p1 = s1. s2 = -1640562687. s1 = s1 * s2. s2 = 1640562687. s1 = s1 - s2. l6 = s1. s2 = 32. s3 = p2. s4 = 212. s3 = s3 + s4. s3 = mem_ld_i32( s3 ). s2 = s2 - s3. s1 = zcl_wasm_rt=>shr_u32( iv_val = s1 iv_shift = s2 ). s2 = 2.
        s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s0 = mem_ld_i32( s0 ). p3 = s0.
        IF s0 <> 0.
          DO. " loop
            DO 1 TIMES. " block
              s0 = p3. s0 = mem_ld_i32( s0 + 20 ). s1 = l6.
              IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0. EXIT. ENDIF. " br_if 0
              s0 = p3. s0 = mem_ld_i32( s0 + 44 ). s1 = p1.
              IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0. EXIT. ENDIF. " br_if 0
              s0 = p3. s0 = mem_ld_i32( s0 + 32 ).
              IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
            ENDDO.
            s0 = p3. s0 = mem_ld_i32( s0 + 40 ). p3 = s0.
            IF s0 <> 0. EXIT. ENDIF. " br_if 0
          ENDDO.
        ELSE.
        ENDIF.
        s0 = p0. s1 = p1. s2 = 2. PERFORM f436 USING s0 s1 s2 CHANGING s0. p3 = s0.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        s0 = 8589934592. l7 = s0. lv_br = 2. EXIT. " br 2
      ENDDO.
      s0 = p3. s1 = p3. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
    ENDDO.
    s0 = p0. s1 = p3. s2 = 3. PERFORM f408 USING s0 s1 s2 CHANGING s0. l7 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 25769803776.
    IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = 8589934592. l7 = s0. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = p0. s1 = l7. s2 = 52. s3 = p0. s4 = l5. s5 = l5. PERFORM f768 USING s5 CHANGING s5. PERFORM f126 USING s3 s4 s5 CHANGING s3. l8 = s3. s4 = 12884901888. s5 = 12884901888. s6 = 9987.
    PERFORM f37 USING s0 s1 s2 s3 s4 s5 s6 CHANGING s0. s0 = l8. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
    IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l8. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p1 = s0. s1 = p1. s1 = mem_ld_i32( s1 ). p1 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p1. s1 = 1.
    IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = l8. PERFORM f453 USING s0 s1.
  ENDDO.
  s0 = p4.
  IF s0 <> 0.
    s0 = p0. s1 = l7. s2 = 0. s3 = 0. s4 = 0. s5 = 0. PERFORM f70 USING s0 s1 s2 s3 s4 s5.
  ELSE.
  ENDIF.
  DO 1 TIMES. " block
    s0 = p0. s0 = mem_ld_i32( s0 + 16 ). p0 = s0. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 128 ). l8 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
    IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l8. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p1 = s0. s1 = p1. s1 = mem_ld_i32( s1 ). p1 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p1. s1 = 1.
    IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s1 = l8. PERFORM f453 USING s0 s1.
  ENDDO.
  s0 = p0. s1 = l7. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 128 CHANGING cv_mem = mv_mem ). s0 = l5. s1 = 256. s0 = s0 + s1. gv_g0 = s0.
ENDFORM.

FORM f535 USING p0 TYPE i CHANGING rv TYPE i.
  DATA l1 TYPE i. DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    s0 = p0. s1 = 845.
    IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p0. s1 = 125258.
      IF zcl_wasm_rt=>gt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = 28. l1 = s0.
      DO. " loop
        s0 = l1. s1 = l2. s0 = s0 + s1. s1 = 2. s0 = s0 / s1. l3 = s0. s1 = l1. s2 = l3. s3 = 3. s2 = s2 * s3. l1 = s2. s3 = 1169952. s2 = s2 + s3. s2 = mem_ld_i32_16u( s2 ). s3 = l1. s4 = 1169954. s3 = s3 + s4. s3 = mem_ld_i32_8u( s3 ).
        s4 = 16. s3 = zcl_wasm_rt=>shl32( iv_val = s3 iv_shift = s4 ). s4 = 2031616. s3 = zcl_wasm_rt=>and32( iv_a = s3 iv_b = s4 ). s2 = zcl_wasm_rt=>or32( iv_a = s2 iv_b = s3 ). s3 = p0.
        IF zcl_wasm_rt=>gt_u32( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
        l4 = s2.
        IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
        l1 = s0. s1 = l2. s2 = l3. s3 = l4.
        IF s3 <> 0. s1 = s1. ELSE. s1 = s2. ENDIF.
        l2 = s1. s0 = s0 - s1. s1 = 1.
        IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
      ENDDO.
      s0 = 0. l1 = s0. s0 = l2. s1 = 5. s0 = zcl_wasm_rt=>shl32( iv_val = s0 iv_shift = s1 ). s1 = l2. s2 = 3. s1 = s1 * s2. l3 = s1. s2 = 1169954. s1 = s1 + s2. s1 = mem_ld_i32_8u( s1 ). l4 = s1. s2 = 5.
      s1 = zcl_wasm_rt=>shr_u32( iv_val = s1 iv_shift = s2 ). s0 = zcl_wasm_rt=>or32( iv_a = s0 iv_b = s1 ). s1 = 32. s0 = s0 + s1. l2 = s0. s1 = 0.
      IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = l3. s1 = 1169952. s0 = s0 + s1. s0 = mem_ld_i32_16u( s0 ). s1 = l4. s2 = 16. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s2 = 2031616. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ).
      s0 = zcl_wasm_rt=>or32( iv_a = s0 iv_b = s1 ). l1 = s0.
    ELSE.
    ENDIF.
    s0 = l2. s1 = 1170048. s0 = s0 + s1. l2 = s0.
    DO. " loop
      s0 = l1. l3 = s0. s0 = l2. s0 = mem_ld_i32_8u( s0 ). l1 = s0. s0 = zcl_wasm_rt=>extend8s_i32( s0 ). l5 = s0. s1 = 0.
      IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      DO 1 TIMES. " block
        s1 = l2. s2 = 1. s1 = s1 + s2. s2 = l1. s3 = 63. s2 = zcl_wasm_rt=>and32( iv_a = s2 iv_b = s3 ). l1 = s2. s3 = 48.
        IF zcl_wasm_rt=>lt_u32( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
        IF s2 <> 0. EXIT. ENDIF. " br_if 0
        s1 = l1. s2 = 8. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). l4 = s1. s1 = l1. s2 = 55.
        IF zcl_wasm_rt=>le_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0.
          s1 = l4. s2 = l2. s2 = mem_ld_i32_8u( s2 + 1 ). s1 = s1 + s2. s2 = 12240. s1 = s1 - s2. l1 = s1. s1 = l2. s2 = 2. s1 = s1 + s2. lv_br = 1. EXIT. " br 1
        ELSE.
        ENDIF.
        s2 = l2. s2 = mem_ld_i32_8u( s2 + 2 ). s3 = l4. s4 = 14336. s3 = s3 - s4. s4 = l2. s4 = mem_ld_i32_8u( s4 + 1 ). s5 = 8. s4 = zcl_wasm_rt=>shl32( iv_val = s4 iv_shift = s5 ). s3 = zcl_wasm_rt=>or32( iv_a = s3 iv_b = s4 ).
        s2 = s2 + s3. s3 = 2096. s2 = s2 + s3. l1 = s2. s2 = l2. s3 = 3. s2 = s2 + s3.
      ENDDO.
      s1 = s1 + s2. l2 = s1. s1 = l1. s2 = l3. s1 = s1 + s2. s2 = 1. s1 = s1 + s2. l1 = s1. s2 = p0.
      IF zcl_wasm_rt=>le_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. EXIT. ENDIF. " br_if 0
    ENDDO.
    s1 = 0. l1 = s1.
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          s1 = l5. s2 = 192. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). s2 = 6. s1 = zcl_wasm_rt=>shr_u32( iv_val = s1 iv_shift = s2 ).
          CASE s1.
            WHEN 0. EXIT.
            WHEN 1. lv_br = 1. EXIT.
            WHEN 2. lv_br = 3. EXIT.
            WHEN OTHERS. lv_br = 2. EXIT.
          ENDCASE.
        ENDDO.
        s1 = l2. s2 = 1. s1 = s1 - s2. s1 = mem_ld_i32_8u( s1 ). rv = s1. RETURN.
      ENDDO.
      s1 = l2. s2 = 1. s1 = s1 - s2. s1 = mem_ld_i32_8u( s1 ). s2 = p0. s3 = l3. s2 = s2 - s3. s1 = s1 + s2. rv = s1. RETURN.
    ENDDO.
    s1 = 230. l1 = s1.
  ENDDO.
  s1 = l1. rv = s1.
ENDFORM.

FORM f536 USING p0 TYPE i p1 TYPE i p2 TYPE int8 p3 TYPE i CHANGING rv TYPE i.
  DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE i. DATA l8 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i.
  DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i.
  DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i. DATA s36 TYPE i.
  DATA s37 TYPE i. DATA s38 TYPE i. DATA s39 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 96. s0 = s0 - s1. l4 = s0. gv_g0 = s0. s0 = l4. s1 = p2. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 24 CHANGING cv_mem = mv_mem ).
  DO 1 TIMES. " block
    s0 = p0. s0 = mem_ld_i32_16u( s0 + 232 ). s1 = 256.
    IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s1 = p2. s2 = 227. s3 = p2. s4 = 0. PERFORM f192 USING s0 s1 s2 s3 s4 CHANGING s0. p2 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). l8 = s0. s1 = 12884901888.
    IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    DO 1 TIMES. " block
      s0 = l8. s1 = 25769803776.
      IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          s0 = p2. s1 = -4294967296.
          IF zcl_wasm_rt=>lt_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = p2. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l6 = s0. s0 = mem_ld_i32_16u( s0 + 6 ). s1 = 37.
          IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = l6. s0 = mem_ld_i32( s0 + 32 ). l7 = s0.
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        ENDDO.
        s0 = l4. s1 = p0. s2 = 16. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). p3 = s1. s2 = l4. s3 = 32. s2 = s2 + s3. s3 = p3. s3 = mem_ld_i32( s3 + 68 ). s4 = 892. s3 = s3 + s4. s3 = mem_ld_i32( s3 ). PERFORM f410 USING s1 s2 s3 CHANGING s1.
        mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s1 = 1147410. s2 = l4. PERFORM f970 USING s0 s1 s2 CHANGING s0. lv_br = 1. EXIT. " br 1
      ENDDO.
      s0 = l7. s0 = mem_ld_i32( s0 + 4 ).
      IF s0 <> 0.
        s0 = l6. s1 = l6. s1 = mem_ld_i32( s1 ). p1 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p1. s1 = 1.
        IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
        s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = p2. PERFORM f453 USING s0 s1. lv_br = 2. EXIT. " br 2
      ELSE.
      ENDIF.
      s0 = l7. s1 = p3. PERFORM f1176 USING s1 CHANGING s1. s2 = 2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). l5 = s1. s0 = s0 + s1. s1 = 8. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). p3 = s0.
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = l4. s1 = l5. s2 = 1185712. s1 = s1 + s2. mem_st_i32( iv_addr = s0 + 16 iv_val = s1 ). s0 = p0. s1 = 1139179. s2 = l4. s3 = 16. s2 = s2 + s3. PERFORM f970 USING s0 s1 s2 CHANGING s0. lv_br = 1. EXIT. " br 1
      ELSE.
      ENDIF.
      s0 = 1. l5 = s0. s0 = p3. s1 = p3. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s1 = p3. s1 = zcl_wasm_rt=>extend_u32( s1 ). s2 = -4294967296.
      s1 = zcl_wasm_rt=>or64( iv_a = s1 iv_b = s2 ). s2 = 12884901888. s3 = 1. s4 = l4. s5 = 24. s4 = s4 + s5. PERFORM f1111 USING s0 s1 s2 s3 s4 CHANGING s0. l8 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ).
      s1 = 25769803776.
      IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p0. s1 = p2. PERFORM f1164 USING s0 s1. s0 = p1. s1 = l8. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ). lv_br = 1. EXIT. " br 1
    ENDDO.
    DO 1 TIMES. " block
      s0 = p2. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
      IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p2. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p3 = s0. s1 = p3. s1 = mem_ld_i32( s1 ). p3 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p3. s1 = 1.
      IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = p2. PERFORM f453 USING s0 s1.
    ENDDO.
    s0 = p1. s1 = 12884901888. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ). s0 = -1. l5 = s0.
  ENDDO.
  s0 = l4. s1 = 96. s0 = s0 + s1. gv_g0 = s0. s0 = l5. rv = s0.
ENDFORM.

FORM f537 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i CHANGING rv TYPE int8.
  DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE i. DATA l8 TYPE int8. DATA l9 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i.
  DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i.
  DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i.
  DATA s36 TYPE i. DATA s37 TYPE i. DATA s38 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l5 = s0. gv_g0 = s0. s0 = p1. l8 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      s0 = p1. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = -38654705664.
      IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      DO 1 TIMES. " block
        s0 = p1. s1 = -4294967296.
        IF zcl_wasm_rt=>lt_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l4 = s0. s0 = mem_ld_i32_16u( s0 + 6 ). s1 = 34.
        IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = l4. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 32 ). l8 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = -38654705664.
        IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      ENDDO.
      s0 = p0. s1 = 1137647. s2 = 0. PERFORM f970 USING s0 s1 s2 CHANGING s0. s0 = 25769803776. p1 = s0. lv_br = 1. EXIT. " br 1
    ENDDO.
    s0 = l8. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l4 = s0. s1 = l4. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          s0 = p3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). l9 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 12884901888.
          IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0.
            s0 = l9. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
            IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0.
              s0 = l9. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l6 = s0. s1 = l6. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
            ELSE.
            ENDIF.
            s0 = p0. s1 = l5. s2 = 8. s1 = s1 + s2. s2 = l9. PERFORM f719 USING s0 s1 s2 CHANGING s0.
            IF s0 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
            s0 = l4. s1 = 12. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). s1 = 2147483646.
            IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          ELSE.
          ENDIF.
          s0 = p0. s1 = p1. s2 = 0. PERFORM f341 USING s0 s1 s2 CHANGING s0. lv_br = 1. EXIT. " br 1
        ENDDO.
        s1 = l5. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 8 ). s2 = 1073741823. s1 = s1 - s2. s2 = -1073741823.
        IF zcl_wasm_rt=>le_u64( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0.
          s1 = p0. s2 = 1137956. s3 = 0. PERFORM f975 USING s1 s2 s3. lv_br = 2. EXIT. " br 2
        ELSE.
        ENDIF.
        s1 = 10. l6 = s1. s1 = 4. l7 = s1.
        DO 1 TIMES. " block
          s1 = p2. s2 = 2.
          IF s1 < s2. s1 = 1. ELSE. s1 = 0. ENDIF.
          IF s1 <> 0. EXIT. ENDIF. " br_if 0
          s1 = p0. s2 = p3. s2 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s2 + 8 ). PERFORM f1021 USING s1 s2 CHANGING s1. l7 = s1. s2 = 0.
          IF s1 < s2. s1 = 1. ELSE. s1 = 0. ENDIF.
          IF s1 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
          s1 = p2. s2 = 3.
          IF zcl_wasm_rt=>lt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
          IF s1 <> 0. EXIT. ENDIF. " br_if 0
          s1 = p0. s2 = p3. s2 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s2 + 16 ). PERFORM f1009 USING s1 s2 CHANGING s1. l6 = s1. s2 = 0.
          IF s1 < s2. s1 = 1. ELSE. s1 = 0. ENDIF.
          IF s1 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
        ENDDO.
        s1 = p0. s2 = l8. s3 = l6. s4 = l5. s4 = mem_ld_i32( s4 + 8 ). s5 = l7. PERFORM f367 USING s1 s2 s3 s4 s5 CHANGING s1.
      ENDDO.
      p1 = s1. s1 = l4. s2 = l4. s2 = mem_ld_i32( s2 ). p2 = s2. s3 = 1. s2 = s2 - s3. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = p2. s2 = 1.
      IF s1 > s2. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s2 = l8. PERFORM f453 USING s1 s2. lv_br = 1. EXIT. " br 1
    ENDDO.
    s1 = l4. s2 = l4. s2 = mem_ld_i32( s2 ). p2 = s2. s3 = 1. s2 = s2 - s3. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = 25769803776. p1 = s1. s1 = p2. s2 = 1.
    IF s1 > s2. s1 = 1. ELSE. s1 = 0. ENDIF.
    IF s1 <> 0. EXIT. ENDIF. " br_if 0
    s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s2 = l8. PERFORM f453 USING s1 s2.
  ENDDO.
  s1 = l5. s2 = 16. s1 = s1 + s2. gv_g0 = s1. s1 = p1. rv = s1.
ENDFORM.

FORM f538 USING p0 TYPE i p1 TYPE i.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE i. DATA l8 TYPE i. DATA l9 TYPE i. DATA l10 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i.
  DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i.
  DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    s0 = p1. s1 = 28. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). l6 = s0. s1 = p1. s2 = 24. s1 = s1 + s2. l9 = s1.
    IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p0. s1 = 88. s0 = s0 + s1. l7 = s0.
      DO. " loop
        s0 = l6. l4 = s0. s0 = mem_ld_i32( s0 + 4 ). l6 = s0.
        DO 1 TIMES. " block
          s0 = l4. s0 = mem_ld_i32( s0 + 8 ). l5 = s0.
          IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = l5. s1 = l5. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 - s2. l2 = s1. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l2.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = p0. s0 = mem_ld_i32_8u( s0 + 104 ). s1 = 2.
          IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = l5. s0 = mem_ld_i32( s0 + 8 ). l3 = s0. s1 = l5. s2 = 12. s1 = s1 + s2. l8 = s1. s1 = mem_ld_i32( s1 ). l2 = s1. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = l2. s1 = l3. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l8.
          s1 = 0. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l5. s1 = l7. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = p0. s0 = mem_ld_i32( s0 + 92 ). l3 = s0. s0 = p0. s1 = l5. s2 = 8. s1 = s1 + s2. l2 = s1.
          mem_st_i32( iv_addr = s0 + 92 iv_val = s1 ). s0 = l3. s1 = l2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l8. s1 = l3. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s0 = mem_ld_i32_8u( s0 + 104 ).
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = p0. s1 = 1. mem_st_i32_8( iv_addr = s0 + 104 iv_val = s1 ). s0 = l7. s1 = p0. s1 = mem_ld_i32( s1 + 92 ). l2 = s1.
          IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0.
            DO. " loop
              s0 = l2. s1 = 8. s0 = s0 - s1. l2 = s0. s0 = mem_ld_i32( s0 ).
              IF s0 <> 0. lv_br = 5. EXIT. ENDIF. " br_if 5
              s0 = p0. s1 = l2. PERFORM f108 USING s0 s1. s0 = p0. s0 = mem_ld_i32( s0 + 92 ). l2 = s0. s1 = l7.
              IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0. EXIT. ENDIF. " br_if 0
            ENDDO.
          ELSE.
          ENDIF.
          s0 = p0. s1 = 0. mem_st_i32_8( iv_addr = s0 + 104 iv_val = s1 ).
        ENDDO.
        s0 = l4. s1 = 18. s0 = s0 - s1. s0 = mem_ld_i32_16u( s0 ). l2 = s0.
        DO 1 TIMES. " block
          DO 1 TIMES. " block
            s0 = l4. s1 = 19. s0 = s0 - s1. l3 = s0. s0 = mem_ld_i32_8u( s0 ). s1 = 2. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
            IF s0 <> 0.
              s0 = p1. s0 = mem_ld_i32( s0 + 16 ). s1 = l2. s2 = 3. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). l10 = s0. s1 = 32.
              s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -12.
              IF zcl_wasm_rt=>gt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
              lv_br = 2. EXIT. " br 2
            ELSE.
            ENDIF.
            s0 = p1. s0 = mem_ld_i32( s0 + 20 ). s1 = l2. s2 = 3. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). l10 = s0. s1 = 32.
            s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
            IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          ENDDO.
          s0 = l10. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l2 = s0. s1 = l2. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
        ENDDO.
        s0 = l4. s1 = l10. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ). s0 = l4. s1 = 8. s0 = s0 - s1. s1 = l4. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l3. s1 = l3.
        s1 = mem_ld_i32_8u( s1 ). s2 = 1. s1 = zcl_wasm_rt=>or32( iv_a = s1 iv_b = s2 ). mem_st_i32_8( iv_addr = s0 iv_val = s1 ). s0 = l6. s1 = l9.
        IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
      ENDDO.
    ELSE.
    ENDIF.
    RETURN.
  ENDDO.
  s0 = 1152044. s1 = 1148333. s2 = 5521. s3 = 1136378. PERFORM f1101 USING s0 s1 s2 s3.
  RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
ENDFORM.

FORM f539 USING p0 TYPE i p1 TYPE i p2 TYPE int8 p3 TYPE i.
  DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE i. DATA l8 TYPE i. DATA l9 TYPE i. DATA l10 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i.
  DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i.
  DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i.
  DATA lv_br TYPE i. s0 = gv_g0. s1 = 32. s0 = s0 - s1. l6 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        s0 = p1. s0 = mem_ld_i32_8u( s0 ).
        IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = p1. s0 = mem_ld_i32_8u( s0 + 1 ). l4 = s0. s1 = 7.
          IF zcl_wasm_rt=>gt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
          s0 = p3. PERFORM f117 USING s0. s0 = l4. s1 = 4.
          IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
          s0 = p1. s1 = l4. s2 = 1. s1 = s1 + s2. mem_st_i32_8( iv_addr = s0 + 1 iv_val = s1 ). s0 = p1. s1 = l4. s2 = 3. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s1 = 8. s0 = s0 + s1. s1 = p2.
          zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ). lv_br = 1. EXIT. " br 1
        ELSE.
        ENDIF.
        s0 = p3. PERFORM f117 USING s0. s0 = p1. s0 = mem_ld_i32( s0 + 12 ). l9 = s0. s1 = p1. s1 = mem_ld_i32( s1 + 4 ).
        IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = gv_g0. s1 = 32. s0 = s0 - s1. p3 = s0. gv_g0 = s0. s0 = p1. s1 = 4. s0 = s0 + s1. l4 = s0. s0 = mem_ld_i32( s0 ). l7 = s0. s1 = 1. s0 = s0 + s1. l5 = s0.
          IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0.
            s0 = 0. s1 = 0. PERFORM f1271 USING s0 s1.
            RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
          ELSE.
          ENDIF.
          s0 = 4. s1 = l7. s2 = 1. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). l8 = s1. s2 = l5. s3 = l5. s4 = l8.
          IF zcl_wasm_rt=>lt_u32( iv_a = s3 iv_b = s4 ) = abap_true. s3 = 1. ELSE. s3 = 0. ENDIF.
          IF s3 <> 0. s1 = s1. ELSE. s1 = s2. ENDIF.
          l5 = s1. s2 = l5. s3 = 4.
          IF zcl_wasm_rt=>le_u32( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
          IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
          l8 = s0. s1 = 3. s0 = zcl_wasm_rt=>shl32( iv_val = s0 iv_shift = s1 ). l10 = s0. s0 = l5. s1 = 268435456.
          IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          s1 = 3. s0 = zcl_wasm_rt=>shl32( iv_val = s0 iv_shift = s1 ). l5 = s0. s0 = p3. s1 = l7.
          IF s1 <> 0.
            s1 = p3. s2 = l7. s3 = 3. s2 = zcl_wasm_rt=>shl32( iv_val = s2 iv_shift = s3 ). mem_st_i32( iv_addr = s1 + 28 iv_val = s2 ). s1 = p3. s2 = l4. s2 = mem_ld_i32( s2 + 4 ). mem_st_i32( iv_addr = s1 + 20 iv_val = s2 ). s1 = 8.
          ELSE.
            s2 = 0.
          ENDIF.
          mem_st_i32( iv_addr = s1 + 24 iv_val = s2 ). s1 = p3. s2 = 8. s1 = s1 + s2. s2 = l5. s3 = l10. s4 = p3. s5 = 20. s4 = s4 + s5. PERFORM f584 USING s1 s2 s3 s4. s1 = p3. s1 = mem_ld_i32( s1 + 8 ).
          IF s1 <> 0.
            s1 = p3. s1 = mem_ld_i32( s1 + 12 ). s2 = p3. s2 = mem_ld_i32( s2 + 16 ). PERFORM f1271 USING s1 s2.
            RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
          ELSE.
          ENDIF.
          s1 = p3. s1 = mem_ld_i32( s1 + 12 ). l7 = s1. s1 = l4. s2 = l8. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = l4. s2 = l7. mem_st_i32( iv_addr = s1 + 4 iv_val = s2 ). s1 = p3. s2 = 32. s1 = s1 + s2. gv_g0 = s1.
        ELSE.
        ENDIF.
        s1 = p1. s2 = l9. s3 = 1. s2 = s2 + s3. mem_st_i32( iv_addr = s1 + 12 iv_val = s2 ). s1 = p1. s1 = mem_ld_i32( s1 + 8 ). s2 = l9. s3 = 3. s2 = zcl_wasm_rt=>shl32( iv_val = s2 iv_shift = s3 ). s1 = s1 + s2. s2 = p2.
        zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s2 iv_addr = s1 + 0 CHANGING cv_mem = mv_mem ).
      ENDDO.
      s1 = p0. s2 = 18. mem_st_i32_8( iv_addr = s1 iv_val = s2 ). s1 = l6. s2 = 32. s1 = s1 + s2. gv_g0 = s1.
      RETURN.
    ENDDO.
    s1 = l6. s2 = 0. mem_st_i32( iv_addr = s1 + 24 iv_val = s2 ). s1 = l6. s2 = 1. mem_st_i32( iv_addr = s1 + 12 iv_val = s2 ). s1 = l6. s2 = 1059012. mem_st_i32( iv_addr = s1 + 8 iv_val = s2 ). s1 = l6. s2 = 4.
    zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s2 iv_addr = s1 + 16 CHANGING cv_mem = mv_mem ). s1 = l6. s2 = 8. s1 = s1 + s2. s2 = 1059020. PERFORM f696 USING s1 s2.
    RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
  ENDDO.
  s1 = l4. s2 = 4. s3 = 1058952. PERFORM f1038 USING s1 s2 s3.
  RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
ENDFORM.

FORM f540 USING p0 TYPE i p1 TYPE int8 p2 TYPE int8 p3 TYPE i p4 TYPE i p5 TYPE i CHANGING rv TYPE int8.
  DATA l6 TYPE i. DATA l7 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i.
  DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i.
  DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i. DATA s36 TYPE i. DATA s37 TYPE i. DATA s38 TYPE i. DATA s39 TYPE i.
  DATA s40 TYPE i. DATA s41 TYPE i. DATA s42 TYPE i. DATA s43 TYPE i. DATA s44 TYPE i. DATA s45 TYPE i. DATA s46 TYPE i. DATA s47 TYPE i. DATA s48 TYPE i. DATA s49 TYPE i. DATA s50 TYPE i. DATA s51 TYPE i. DATA s52 TYPE i. DATA s53 TYPE i.
  DATA s54 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        s0 = p0. s0 = mem_ld_i32( s0 + 16 ). p5 = s0. s1 = 16. s0 = s0 + s1. s1 = 8. s2 = p5. s2 = mem_ld_i32( s2 ).
        DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
        s0 = dispatch_t7( iv_idx = lv_ci_func p0 = s0 p1 = s1 ). p5 = s0.
        IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = 25769803776. p1 = s0. s0 = p0. s0 = mem_ld_i32( s0 + 16 ). p3 = s0. s0 = mem_ld_i32_8u( s0 + 136 ).
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          s0 = p3. s1 = 1. mem_st_i32_8( iv_addr = s0 + 136 iv_val = s1 ). s0 = p0. s1 = 1134898. s2 = 0. PERFORM f969 USING s0 s1 s2 CHANGING s0. s0 = p3. s1 = 0. mem_st_i32_8( iv_addr = s0 + 136 iv_val = s1 ). s0 = 25769803776.
          rv = s0. RETURN.
        ELSE.
        ENDIF.
        s0 = p5. s1 = 0. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ). s0 = p5. s1 = p0. s2 = p1. s3 = p2. s4 = p3. s5 = p4. PERFORM f228 USING s1 s2 s3 s4 s5 CHANGING s1. p3 = s1.
        mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = p3.
        IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = p5. s1 = 4. mem_st_i32( iv_addr = s0 iv_val = s1 ). lv_br = 3. EXIT. " br 3
        ELSE.
        ENDIF.
        s0 = p3. s0 = mem_ld_i32( s0 + 32 ).
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        s0 = p0. s0 = mem_ld_i32( s0 + 16 ). p4 = s0.
        DO 1 TIMES. " block
          s0 = p0. s1 = p3. s1 = zcl_wasm_rt=>extend_u32( s1 ). s2 = p3. s2 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s2 + 16 ). s3 = 12884901888. s4 = p3. s4 = mem_ld_i32( s4 + 24 ). s5 = p3. s6 = 72. s5 = s5 + s6.
          s5 = mem_ld_i32( s5 ). s6 = 4. PERFORM f0 USING s0 s1 s2 s3 s4 s5 s6 CHANGING s0. l7 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). p2 = s0. s1 = 25769803776.
          IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0.
            s0 = p2. s1 = 12884901888.
            IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
            s0 = p3. s1 = 100. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). s1 = 8. s0 = s0 - s1. l6 = s0. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). l7 = s0. s0 = l6. s1 = 12884901888.
            zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ). s0 = l7. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). p2 = s0.
          ELSE.
          ENDIF.
          s0 = p3. s1 = 1. mem_st_i32( iv_addr = s0 + 32 iv_val = s1 ). s0 = p4. s1 = p3. s2 = 56. s1 = s1 + s2. PERFORM f538 USING s0 s1. s0 = p4. s1 = p3. PERFORM f685 USING s0 s1.
        ENDDO.
        s0 = p2. s1 = 25769803776.
        IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
        DO 1 TIMES. " block
          s0 = l7. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
          IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = l7. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p3 = s0. s1 = p3. s1 = mem_ld_i32( s1 ). p3 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p3. s1 = 1.
          IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = l7. PERFORM f453 USING s0 s1.
        ENDDO.
        s0 = p0. s1 = p1. s2 = 47. PERFORM f508 USING s0 s1 s2 CHANGING s0. p1 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 25769803776.
        IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
        s0 = p1. s1 = -4294967296.
        IF zcl_wasm_rt=>lt_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = p5. mem_st_i32( iv_addr = s0 + 32 iv_val = s1 ).
      ENDDO.
      s0 = p1. rv = s0. RETURN.
    ENDDO.
    s0 = 1147393. s1 = 1148333. s2 = 19044. s3 = 1144919. PERFORM f1101 USING s0 s1 s2 s3.
    RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
  ENDDO.
  s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = p5. PERFORM f741 USING s0 s1. s0 = p0. s0 = mem_ld_i32( s0 + 16 ). p0 = s0. s1 = 16. s0 = s0 + s1. s1 = p5. s2 = p0. s2 = mem_ld_i32( s2 + 4 ).
  DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
  dispatch_t6( iv_idx = lv_ci_func p0 = s0 p1 = s1 ). s0 = 25769803776. rv = s0.
ENDFORM.

FORM f541 USING p0 TYPE i p1 TYPE int8 CHANGING rv TYPE i.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i.
  DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i.
  DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i. DATA s36 TYPE i. DATA s37 TYPE i.
  DATA s38 TYPE i. DATA s39 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = 0. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ).
  DO 1 TIMES. " block
    s0 = p1.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p0. s1 = -2147483648. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = p0. s0 = mem_ld_i32( s0 + 12 ).
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p0. s0 = mem_ld_i32( s0 ). l2 = s0. s0 = mem_ld_i32( s0 ). s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s2 = 0. s3 = l2. s4 = 4. s3 = s3 + s4. s3 = mem_ld_i32( s3 ).
      DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
      s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). l2 = s0. s0 = p0. s1 = 0. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = p0. s1 = l2. mem_st_i32( iv_addr = s0 + 16 iv_val = s1 ). s0 = 0. rv = s0. RETURN.
    ELSE.
    ENDIF.
    s0 = p0. s0 = mem_ld_i32( s0 + 12 ). l2 = s0.
    DO 1 TIMES. " block
      s0 = p1. s1 = 4294967295.
      IF zcl_wasm_rt=>le_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        DO 1 TIMES. " block
          s0 = l2. s1 = 1.
          IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0.
            s0 = p0. s0 = mem_ld_i32( s0 + 16 ). l2 = s0. lv_br = 1. EXIT. " br 1
          ELSE.
          ENDIF.
          s0 = p0. s0 = mem_ld_i32( s0 ). l2 = s0. s0 = mem_ld_i32( s0 ). s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s2 = 4. s3 = l2. s4 = 4. s3 = s3 + s4. s3 = mem_ld_i32( s3 ).
          DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
          s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). l2 = s0.
          IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
          s0 = p0. s1 = 1. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = p0. s1 = l2. mem_st_i32( iv_addr = s0 + 16 iv_val = s1 ).
        ENDDO.
        s0 = l2. s1 = p1. s2 = p1. s2 = zcl_wasm_rt=>wrap_i64( s2 ). s2 = zcl_wasm_rt=>clz32( s2 ). l2 = s2. s2 = zcl_wasm_rt=>extend_u32( s2 ). s1 = zcl_wasm_rt=>shl64( iv_val = s1 iv_shift = s2 ).
        zcl_wasm_rt=>mem_st_i64_trunc( EXPORTING iv_val = s1 iv_addr = s0 + 0 iv_op = 62 CHANGING cv_mem = mv_mem ). s0 = p0. s1 = 32. s2 = l2. s1 = s1 - s2. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = 0. rv = s0. RETURN.
      ELSE.
      ENDIF.
      DO 1 TIMES. " block
        s0 = l2. s1 = 2.
        IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = p0. s0 = mem_ld_i32( s0 + 16 ). l2 = s0. lv_br = 1. EXIT. " br 1
        ELSE.
        ENDIF.
        s0 = p0. s0 = mem_ld_i32( s0 ). l2 = s0. s0 = mem_ld_i32( s0 ). s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s2 = 8. s3 = l2. s4 = 4. s3 = s3 + s4. s3 = mem_ld_i32( s3 ).
        DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
        s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). l2 = s0.
        IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        s0 = p0. s1 = 2. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = p0. s1 = l2. mem_st_i32( iv_addr = s0 + 16 iv_val = s1 ).
      ENDDO.
      s0 = l2. s1 = p1. s1 = zcl_wasm_rt=>wrap_i64( s1 ). l4 = s1. s2 = p1. s3 = 32. s2 = zcl_wasm_rt=>shr_u64( iv_val = s2 iv_shift = s3 ). s2 = zcl_wasm_rt=>wrap_i64( s2 ). l5 = s2. s2 = zcl_wasm_rt=>clz32( s2 ). l3 = s2.
      s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l2. s1 = l5. s2 = l3. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s2 = l4. s3 = 1.
      s2 = zcl_wasm_rt=>shr_u32( iv_val = s2 iv_shift = s3 ). s3 = l3. s4 = -1. s3 = zcl_wasm_rt=>xor32( iv_a = s3 iv_b = s4 ). s2 = zcl_wasm_rt=>shr_u32( iv_val = s2 iv_shift = s3 ). s1 = zcl_wasm_rt=>or32( iv_a = s1 iv_b = s2 ).
      mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = p0. s1 = 64. s2 = l3. s1 = s1 - s2. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = 0. rv = s0. RETURN.
    ENDDO.
    s0 = p0. s0 = mem_ld_i32( s0 + 12 ).
    IF s0 <> 0.
      s0 = p0. s0 = mem_ld_i32( s0 ). l2 = s0. s0 = mem_ld_i32( s0 ). s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s2 = 0. s3 = l2. s4 = 4. s3 = s3 + s4. s3 = mem_ld_i32( s3 ).
      DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
      s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). l2 = s0. s0 = p0. s1 = 0. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = p0. s1 = l2. mem_st_i32( iv_addr = s0 + 16 iv_val = s1 ).
    ELSE.
    ENDIF.
    s0 = p0. s1 = 9223372032559808512. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 4 CHANGING cv_mem = mv_mem ). s0 = 32. l2 = s0.
  ENDDO.
  s0 = l2. rv = s0.
ENDFORM.

FORM f542 USING p0 TYPE i p1 TYPE i p2 TYPE i p3 TYPE i p4 TYPE i p5 TYPE i CHANGING rv TYPE i.
  DATA l6 TYPE i. DATA l7 TYPE i. DATA l8 TYPE i. DATA l9 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i.
  DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i.
  DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 160. s0 = s0 - s1. l7 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      s0 = p2. s0 = mem_ld_i32( s0 + 32 ). l8 = s0. s1 = 0.
      IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = p2. s0 = mem_ld_i32( s0 + 28 ). s1 = 16. s0 = s0 + s1. l6 = s0. s0 = l8. l9 = s0.
        DO. " loop
          s0 = l6. s0 = mem_ld_i32( s0 ). s1 = p4.
          IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
          s0 = l6. s1 = 20. s0 = s0 + s1. l6 = s0. s0 = l9. s1 = 1. s0 = s0 - s1. l9 = s0.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
        ENDDO.
      ELSE.
      ENDIF.
      s0 = l8. s1 = p2. s1 = mem_ld_i32( s1 + 36 ).
      IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = 0. l6 = s0. s0 = p0. s1 = p2. s2 = 28. s1 = s1 + s2. s2 = 20. s3 = p2. s4 = 36. s3 = s3 + s4. s4 = l8. s5 = 1. s4 = s4 + s5. PERFORM f845 USING s0 s1 s2 s3 s4 CHANGING s0.
        IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
        s0 = p2. s0 = mem_ld_i32( s0 + 32 ). l8 = s0.
      ELSE.
      ENDIF.
      s0 = p2. s1 = l8. s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 + 32 iv_val = s1 ). s0 = p2. s0 = mem_ld_i32( s0 + 28 ). p1 = s0. s1 = l8. s2 = 20. s1 = s1 * s2. p2 = s1. s0 = s0 + s1. l6 = s0. s1 = 0.
      zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ). s0 = l6. s1 = 16. s0 = s0 + s1. s1 = 0. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l6. s1 = 8. s0 = s0 + s1. s1 = 0.
      zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ). s0 = p3. s1 = 228.
      IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s0 = mem_ld_i32( s0 + 56 ). s1 = p3. s2 = 2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s0 = mem_ld_i32( s0 ). l9 = s0. s1 = l9. s1 = mem_ld_i32( s1 ). s2 = 1.
        s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
      ELSE.
      ENDIF.
      s0 = p1. s1 = p2. s0 = s0 + s1. s1 = p3. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = p4. s1 = 228.
      IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s0 = mem_ld_i32( s0 + 56 ). s1 = p4. s2 = 2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s0 = mem_ld_i32( s0 ). p0 = s0. s1 = p0. s1 = mem_ld_i32( s1 ). s2 = 1.
        s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
      ELSE.
      ENDIF.
      s0 = p1. s1 = l8. s2 = 20. s1 = s1 * s2. s0 = s0 + s1. p0 = s0. s1 = p5. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = p0. s1 = p4. mem_st_i32( iv_addr = s0 + 16 iv_val = s1 ). lv_br = 1. EXIT. " br 1
    ENDDO.
    DO 1 TIMES. " block
      s0 = p1.
      IF s0 <> 0.
        s0 = l7. s1 = p0. s2 = 16. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). s2 = l7. s3 = 32. s2 = s2 + s3. s3 = p4. PERFORM f410 USING s1 s2 s3 CHANGING s1. mem_st_i32( iv_addr = s0 + 16 iv_val = s1 ). s0 = p1. s1 = 1153309. s2 = l7. s3 = 16.
        s2 = s2 + s3. PERFORM f881 USING s0 s1 s2. lv_br = 1. EXIT. " br 1
      ELSE.
      ENDIF.
      s0 = l7. s1 = p0. s2 = 16. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). s2 = l7. s3 = 96. s2 = s2 + s3. s3 = p4. PERFORM f410 USING s1 s2 s3 CHANGING s1. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s1 = 1153309. s2 = l7.
      PERFORM f974 USING s0 s1 s2.
    ENDDO.
    s0 = 0. l6 = s0.
  ENDDO.
  s0 = l7. s1 = 160. s0 = s0 + s1. gv_g0 = s0. s0 = l6. rv = s0.
ENDFORM.

FORM f543 USING p0 TYPE i p1 TYPE i.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE int8. DATA l5 TYPE int8. DATA l6 TYPE int8. DATA l7 TYPE int8. DATA l8 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i.
  DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i.
  DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i.
  DATA s35 TYPE i. DATA s36 TYPE i. DATA s37 TYPE i. DATA s38 TYPE i. DATA s39 TYPE i. DATA s40 TYPE i. DATA s41 TYPE i. DATA s42 TYPE i. DATA s43 TYPE i. DATA s44 TYPE i. DATA s45 TYPE i. DATA s46 TYPE i. DATA lv_br TYPE i. s0 = gv_g0.
  s1 = 32. s0 = s0 - s1. l2 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    s0 = p0. s1 = p1. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 72 ). s2 = 12884901888. s3 = 0. s4 = 0. s5 = l2. PERFORM f447 USING s0 s1 s2 s3 s4 s5 CHANGING s0. l4 = s0. s1 = -4294967296.
    s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 25769803776.
    IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p1. s1 = p1. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l2. s1 = p1. s1 = zcl_wasm_rt=>extend_u32( s1 ). s2 = -12884901888. s1 = zcl_wasm_rt=>or64( iv_a = s1 iv_b = s2 ). l8 = s1.
    zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 24 CHANGING cv_mem = mv_mem ). s0 = l2. s1 = p0. s2 = 382. s3 = 0. s4 = 0. s5 = 1. s6 = l2. s7 = 24. s6 = s6 + s7. l3 = s6. PERFORM f317 USING s1 s2 s3 s4 s5 s6 CHANGING s1.
    l5 = s1. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ). s0 = l2. s1 = p0. s2 = 383. s3 = 0. s4 = 0. s5 = 1. s6 = l3. PERFORM f317 USING s1 s2 s3 s4 s5 s6 CHANGING s1. l6 = s1.
    zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 8 CHANGING cv_mem = mv_mem ).
    DO 1 TIMES. " block
      s0 = p0. s1 = l4. s2 = l2. s3 = l2. PERFORM f506 USING s0 s1 s2 s3 CHANGING s0. l7 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
      IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = l7. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l3 = s0. s1 = l3. s1 = mem_ld_i32( s1 ). l3 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l3. s1 = 1.
      IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = l7. PERFORM f453 USING s0 s1.
    ENDDO.
    s0 = p1. s1 = p1. s1 = mem_ld_i32( s1 ). p1 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p1. s1 = 1.
    IF s0 <= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = l8. PERFORM f453 USING s0 s1.
    ELSE.
    ENDIF.
    DO 1 TIMES. " block
      s0 = l5. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
      IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = l5. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p1 = s0. s1 = p1. s1 = mem_ld_i32( s1 ). p1 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p1. s1 = 1.
      IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = l5. PERFORM f453 USING s0 s1.
    ENDDO.
    DO 1 TIMES. " block
      s0 = l6. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
      IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = l6. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p1 = s0. s1 = p1. s1 = mem_ld_i32( s1 ). p1 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p1. s1 = 1.
      IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = l6. PERFORM f453 USING s0 s1.
    ENDDO.
    s0 = l4. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
    IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l4. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p1 = s0. s1 = p1. s1 = mem_ld_i32( s1 ). p1 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p1. s1 = 1.
    IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = l4. PERFORM f453 USING s0 s1.
  ENDDO.
  s0 = l2. s1 = 32. s0 = s0 + s1. gv_g0 = s0.
ENDFORM.

FORM f544 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE int8. DATA l7 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i.
  DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i.
  DATA s22 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    s0 = p1. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 4 ). l7 = s0. s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = 2147483647. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). l3 = s0. s1 = 11. s0 = s0 - s1. s1 = -10.
    IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    DO 1 TIMES. " block
      s0 = l7. s1 = 2147483648. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ).
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      l5 = s0.
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = p1. s0 = mem_ld_i32_16u( s0 + 16 ). lv_br = 1. EXIT. " br 1
      ELSE.
      ENDIF.
      s1 = p1. s1 = mem_ld_i32_8u( s1 + 16 ).
    ENDDO.
    l2 = s1. s2 = 48. s1 = s1 - s2. l4 = s1. s2 = 9.
    IF zcl_wasm_rt=>gt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
    IF s1 <> 0. EXIT. ENDIF. " br_if 0
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        s1 = l2. s2 = 48.
        IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0.
          s1 = l3. s2 = 2.
          IF zcl_wasm_rt=>lt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
          IF s1 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
          DO 1 TIMES. " block
            s1 = l5.
            IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
            IF s1 <> 0.
              s1 = p1. s2 = 18. s1 = s1 + s2. l2 = s1. s1 = l3. s2 = 1. s1 = s1 - s2. l3 = s1. lv_br = 1. EXIT. " br 1
            ELSE.
            ENDIF.
            s1 = p1. s2 = 17. s1 = s1 + s2. l2 = s1. s1 = l3. s2 = 1. s1 = s1 - s2. l3 = s1.
            DO. " loop
              s1 = l2. s1 = mem_ld_i32_8u( s1 ). s2 = 48. s1 = s1 - s2. l5 = s1. s2 = 9.
              IF zcl_wasm_rt=>gt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
              IF s1 <> 0. lv_br = 5. EXIT. ENDIF. " br_if 5
              s1 = l5. s1 = zcl_wasm_rt=>extend_u32( s1 ). s2 = l4. s2 = zcl_wasm_rt=>extend_u32( s2 ). s3 = 10. s2 = s2 * s3. s1 = s1 + s2. l6 = s1. s2 = 4294967296.
              IF zcl_wasm_rt=>ge_u64( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
              IF s1 <> 0. lv_br = 5. EXIT. ENDIF. " br_if 5
              s1 = l2. s2 = 1. s1 = s1 + s2. l2 = s1. s1 = l6. s1 = zcl_wasm_rt=>wrap_i64( s1 ). l4 = s1. s1 = l3. s2 = 1. s1 = s1 - s2. l3 = s1.
              IF s1 <> 0. EXIT. ENDIF. " br_if 0
            ENDDO.
            lv_br = 2. EXIT. " br 2
          ENDDO.
          DO. " loop
            s1 = l2. s1 = mem_ld_i32_16u( s1 ). s2 = 48. s1 = s1 - s2. l5 = s1. s2 = 9.
            IF zcl_wasm_rt=>gt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
            IF s1 <> 0. lv_br = 4. EXIT. ENDIF. " br_if 4
            s1 = l5. s1 = zcl_wasm_rt=>extend_u32( s1 ). s2 = l4. s2 = zcl_wasm_rt=>extend_u32( s2 ). s3 = 10. s2 = s2 * s3. s1 = s1 + s2. l6 = s1. s2 = 4294967296.
            IF zcl_wasm_rt=>ge_u64( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
            IF s1 <> 0. lv_br = 4. EXIT. ENDIF. " br_if 4
            s1 = l2. s2 = 2. s1 = s1 + s2. l2 = s1. s1 = l6. s1 = zcl_wasm_rt=>wrap_i64( s1 ). l4 = s1. s1 = l3. s2 = 1. s1 = s1 - s2. l3 = s1.
            IF s1 <> 0. EXIT. ENDIF. " br_if 0
          ENDDO.
          lv_br = 1. EXIT. " br 1
        ELSE.
        ENDIF.
        s1 = 0. l4 = s1. s1 = l3. s2 = 1.
        IF s1 = s2. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        lv_br = 2. EXIT. " br 2
      ENDDO.
      s1 = l6. s1 = zcl_wasm_rt=>wrap_i64( s1 ). l4 = s1. s2 = 0.
      IF s1 < s2. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
    ENDDO.
    s1 = p1. s2 = p1. s2 = mem_ld_i32( s2 ). l2 = s2. s3 = 1. s2 = s2 - s3. mem_st_i32( iv_addr = s1 iv_val = s2 ).
    DO 1 TIMES. " block
      s1 = l2. s2 = 1.
      IF s1 > s2. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. EXIT. ENDIF. " br_if 0
      s1 = l7. s2 = 4611686018427387904.
      IF zcl_wasm_rt=>ge_u64( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0.
        s1 = p0. s2 = p1. PERFORM f713 USING s1 s2. lv_br = 1. EXIT. " br 1
      ELSE.
      ENDIF.
      s1 = p0. s2 = 16. s1 = s1 + s2. s2 = p1. s3 = p0. s3 = mem_ld_i32( s3 + 4 ).
      DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
      dispatch_t6( iv_idx = lv_ci_func p0 = s1 p1 = s2 ).
    ENDDO.
    s1 = l4. s2 = -2147483648. s1 = zcl_wasm_rt=>or32( iv_a = s1 iv_b = s2 ). rv = s1. RETURN.
  ENDDO.
  s1 = p0. s2 = p1. s3 = 1. PERFORM f68 USING s1 s2 s3 CHANGING s1. rv = s1.
ENDFORM.

FORM f545 USING p0 TYPE i p1 TYPE i p2 TYPE i p3 TYPE i p4 TYPE i p5 TYPE i p6 TYPE i p7 TYPE i p8 TYPE i p9 TYPE i CHANGING rv TYPE i.
  DATA l10 TYPE i. DATA l11 TYPE i. DATA l12 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i.
  DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i.
  DATA s25 TYPE i. DATA s26 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    s0 = p2. s1 = p1. s1 = mem_ld_i32( s1 + 4 ). l10 = s1.
    IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p3. l11 = s0. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = p0. s1 = l10. s2 = p2. s3 = p3. s4 = p4. s5 = p5. s6 = p6. s7 = p7. s8 = p8. s9 = p9. PERFORM f545 USING s0 s1 s2 s3 s4 s5 s6 s7 s8 s9 CHANGING s0. p5 = s0. s1 = 0.
    IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = -1. rv = s0. RETURN.
  ENDDO.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      s0 = p1. s0 = mem_ld_i32( s0 + 320 ). l10 = s0. s1 = 0.
      IF s0 <= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p1. s0 = mem_ld_i32( s0 + 328 ). p2 = s0. s0 = 0. p3 = s0.
      DO. " loop
        DO 1 TIMES. " block
          s0 = p5. s1 = p2. s2 = 2. s1 = s1 + s2. s1 = mem_ld_i32_16u( s1 ).
          IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = p2. s0 = mem_ld_i32_8u( s0 ). l12 = s0. s1 = 1. s0 = zcl_wasm_rt=>shr_u32( iv_val = s0 iv_shift = s1 ). s1 = 1. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = p4.
          IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = l11. s1 = l12. s2 = 1. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ).
          IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
        ENDDO.
        s0 = p2. s1 = 8. s0 = s0 + s1. p2 = s0. s0 = l10. s1 = p3. s2 = 1. s1 = s1 + s2. p3 = s1.
        IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
      ENDDO.
      s0 = l10. s1 = 65535.
      IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p0. s1 = 1138870. s2 = 0. PERFORM f969 USING s0 s1 s2 CHANGING s0. s0 = -1. rv = s0. RETURN.
    ENDDO.
    s0 = l10. s1 = p1. s1 = mem_ld_i32( s1 + 324 ).
    IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = -1. p3 = s0. s0 = p0. s1 = p1. s2 = 328. s1 = s1 + s2. s2 = 8. s3 = p1. s4 = 324. s3 = s3 + s4. s4 = l10. s5 = 1. s4 = s4 + s5. PERFORM f845 USING s0 s1 s2 s3 s4 CHANGING s0.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p1. s0 = mem_ld_i32( s0 + 320 ). l10 = s0.
    ELSE.
    ENDIF.
    s0 = p1. s1 = l10. s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 + 320 iv_val = s1 ). s0 = p1. s0 = mem_ld_i32( s0 + 328 ). s1 = l10. s2 = 3. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. p2 = s0. s1 = p5.
    mem_st_i32_16( iv_addr = s0 + 2 iv_val = s1 ). s0 = p2. s1 = l11. s2 = 1. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). s2 = p8. s3 = 3. s2 = zcl_wasm_rt=>shl32( iv_val = s2 iv_shift = s3 ). s3 = 8.
    s2 = zcl_wasm_rt=>and32( iv_a = s2 iv_b = s3 ). s3 = p7. s4 = 2. s3 = zcl_wasm_rt=>shl32( iv_val = s3 iv_shift = s4 ). s4 = 4. s3 = zcl_wasm_rt=>and32( iv_a = s3 iv_b = s4 ). s4 = p4. s5 = 1.
    s4 = zcl_wasm_rt=>shl32( iv_val = s4 iv_shift = s5 ). s5 = 2. s4 = zcl_wasm_rt=>and32( iv_a = s4 iv_b = s5 ). s3 = zcl_wasm_rt=>or32( iv_a = s3 iv_b = s4 ). s2 = zcl_wasm_rt=>or32( iv_a = s2 iv_b = s3 ). s3 = p9. s4 = 4.
    s3 = zcl_wasm_rt=>shl32( iv_val = s3 iv_shift = s4 ). s2 = zcl_wasm_rt=>or32( iv_a = s2 iv_b = s3 ). s1 = zcl_wasm_rt=>or32( iv_a = s1 iv_b = s2 ). mem_st_i32_8( iv_addr = s0 iv_val = s1 ). s0 = p6. s1 = 228.
    IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s0 = mem_ld_i32( s0 + 56 ). s1 = p6. s2 = 2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s0 = mem_ld_i32( s0 ). p0 = s0. s1 = p0. s1 = mem_ld_i32( s1 ). s2 = 1.
      s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
    ELSE.
    ENDIF.
    s0 = p2. s1 = p6. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = p1. s0 = mem_ld_i32( s0 + 320 ). s1 = 1. s0 = s0 - s1. p3 = s0.
  ENDDO.
  s0 = p3. rv = s0.
ENDFORM.

FORM f546 USING p0 TYPE f CHANGING rv TYPE f.
  DATA l1 TYPE i. DATA l2 TYPE int8. DATA l3 TYPE f. DATA l4 TYPE f. DATA l5 TYPE f. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i.
  DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i.
  DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i. DATA s36 TYPE i.
  DATA s37 TYPE i. DATA s38 TYPE i. DATA s39 TYPE i. DATA s40 TYPE i. DATA s41 TYPE i. DATA s42 TYPE i. DATA s43 TYPE i. DATA s44 TYPE i. DATA s45 TYPE i. DATA s46 TYPE i. DATA s47 TYPE i. DATA s48 TYPE i. DATA s49 TYPE i. DATA s50 TYPE i.
  DATA s51 TYPE i. DATA s52 TYPE i. DATA s53 TYPE i. DATA s54 TYPE i. DATA s55 TYPE i. DATA s56 TYPE i. DATA s57 TYPE i. DATA s58 TYPE i. DATA s59 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    s0 = p0. s0 = zcl_wasm_rt=>reinterpret_f64_i64( s0 ). l2 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = 2147483647. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). l1 = s0.
    s1 = 1141899264.
    IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p0. s1 = p0.
      IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = '1.570796'. s1 = p0. s0 = zcl_wasm_rt=>copysign( iv_mag = s0 iv_sign = s1 ). rv = s0. RETURN.
    ELSE.
    ENDIF.
    DO 1 TIMES. " block
      s0 = l1. s1 = 1071382527.
      IF zcl_wasm_rt=>le_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = -1. s1 = l1. s2 = 1044381696.
        IF zcl_wasm_rt=>ge_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        lv_br = 2. EXIT. " br 2
      ELSE.
      ENDIF.
      s0 = p0. s0 = abs( s0 ). p0 = s0. s0 = l1. s1 = 1072889855.
      IF zcl_wasm_rt=>le_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = l1. s1 = 1072037887.
        IF zcl_wasm_rt=>le_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = p0. s1 = p0. s0 = s0 + s1. s1 = '-1.000000'. s0 = s0 + s1. s1 = p0. s2 = '2.000000'. s1 = s1 + s2. s0 = s0 / s1. p0 = s0. s0 = 0. lv_br = 2. EXIT. " br 2
        ELSE.
        ENDIF.
        s1 = p0. s2 = '-1.000000'. s1 = s1 + s2. s2 = p0. s3 = '1.000000'. s2 = s2 + s3. s1 = s1 / s2. p0 = s1. s1 = 1. lv_br = 1. EXIT. " br 1
      ELSE.
      ENDIF.
      s2 = l1. s3 = 1073971199.
      IF zcl_wasm_rt=>le_u32( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
      IF s2 <> 0.
        s2 = p0. s3 = '-1.500000'. s2 = s2 + s3. s3 = p0. s4 = '1.500000'. s3 = s3 * s4. s4 = '1.000000'. s3 = s3 + s4. s2 = s2 / s3. p0 = s2. s2 = 2. lv_br = 1. EXIT. " br 1
      ELSE.
      ENDIF.
      s3 = '-1.000000'. s4 = p0. s3 = s3 / s4. p0 = s3. s3 = 3.
    ENDDO.
    s4 = p0. s5 = p0. s4 = s4 * s5. l4 = s4. s5 = l4. s4 = s4 * s5. l3 = s4. s5 = l3. s6 = l3. s7 = l3. s8 = l3. s9 = '-0.036532'. s8 = s8 * s9. s9 = '-0.058336'. s8 = s8 + s9. s7 = s7 * s8. s8 = '-0.076919'. s7 = s7 + s8. s6 = s6 * s7.
    s7 = '-0.111111'. s6 = s6 + s7. s5 = s5 * s6. s6 = '-0.200000'. s5 = s5 + s6. s4 = s4 * s5. l5 = s4. s4 = l4. s5 = l3. s6 = l3. s7 = l3. s8 = l3. s9 = l3. s10 = '0.016286'. s9 = s9 * s10. s10 = '0.049769'. s9 = s9 + s10. s8 = s8 * s9.
    s9 = '0.066611'. s8 = s8 + s9. s7 = s7 * s8. s8 = '0.090909'. s7 = s7 + s8. s6 = s6 * s7. s7 = '0.142857'. s6 = s6 + s7. s5 = s5 * s6. s6 = '0.333333'. s5 = s5 + s6. s4 = s4 * s5. l3 = s4. s4 = l1. s5 = 1071382527.
    IF zcl_wasm_rt=>le_u32( iv_a = s4 iv_b = s5 ) = abap_true. s4 = 1. ELSE. s4 = 0. ENDIF.
    IF s4 <> 0.
      s4 = p0. s5 = p0. s6 = l5. s7 = l3. s6 = s6 + s7. s5 = s5 * s6. s4 = s4 - s5. rv = s4. RETURN.
    ELSE.
    ENDIF.
    s4 = 3. s3 = zcl_wasm_rt=>shl32( iv_val = s3 iv_shift = s4 ). l1 = s3. s4 = 1196656. s3 = s3 + s4. s3 = zcl_wasm_rt=>mem_ld_f64( iv_mem = mv_mem iv_addr = s3 + 0 ). s4 = p0. s5 = l5. s6 = l3. s5 = s5 + s6. s4 = s4 * s5. s5 = l1.
    s6 = 1196688. s5 = s5 + s6. s5 = zcl_wasm_rt=>mem_ld_f64( iv_mem = mv_mem iv_addr = s5 + 0 ). s4 = s4 - s5. s5 = p0. s4 = s4 - s5. s3 = s3 - s4. p0 = s3. s3 = - s3. s4 = p0. s5 = l2. s6 = 0.
    IF s5 < s6. s5 = 1. ELSE. s5 = 0. ENDIF.
    IF s5 <> 0. s3 = s3. ELSE. s3 = s4. ENDIF.
    p0 = s3.
  ENDDO.
  s3 = p0. rv = s3.
ENDFORM.

FORM f547 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i CHANGING rv TYPE int8.
  DATA l4 TYPE i. DATA l5 TYPE int8. DATA l6 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i.
  DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i.
  DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA lv_br TYPE i. s0 = 4294967296. l6 = s0.
  DO 1 TIMES. " block
    s0 = p3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). l5 = s0. s1 = -4294967296.
    IF zcl_wasm_rt=>lt_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = 25769803776. l6 = s0. s0 = p0. s1 = p1. PERFORM f151 USING s0 s1 CHANGING s0. p1 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 25769803776.
    IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l5. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p2 = s0. s1 = p2. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p2 = s0.
    DO 1 TIMES. " block
      DO. " loop
        s0 = p0. s1 = l5. PERFORM f714 USING s0 s1 CHANGING s0. l5 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). l6 = s0. s1 = 25769803776.
        IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = l5. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p3 = s0. s0 = l6. s1 = 8589934592.
          IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
          s0 = p2. s1 = p3.
          IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
          s0 = p0. s1 = p0. s1 = mem_ld_i32( s1 + 236 ). l4 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 + 236 iv_val = s1 ). s0 = 0. p3 = s0. s0 = l4. s1 = 1.
          IF s0 <= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0.
            s0 = p0. PERFORM f1030 USING s0 CHANGING s0.
          ELSE.
            s1 = 0.
          ENDIF.
          IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
          IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        ELSE.
        ENDIF.
      ENDDO.
      DO 1 TIMES. " block
        s1 = l5. s2 = 32. s1 = zcl_wasm_rt=>shr_u64( iv_val = s1 iv_shift = s2 ). s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = -11.
        IF zcl_wasm_rt=>lt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0. EXIT. ENDIF. " br_if 0
        s1 = l5. s1 = zcl_wasm_rt=>wrap_i64( s1 ). p3 = s1. s2 = p3. s2 = mem_ld_i32( s2 ). p3 = s2. s3 = 1. s2 = s2 - s3. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = p3. s2 = 1.
        IF s1 > s2. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0. EXIT. ENDIF. " br_if 0
        s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s2 = l5. PERFORM f453 USING s1 s2.
      ENDDO.
      s1 = 25769803776. l6 = s1. s1 = p1. s2 = 32. s1 = zcl_wasm_rt=>shr_u64( iv_val = s1 iv_shift = s2 ). s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = -11.
      IF zcl_wasm_rt=>lt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s1 = p2. s2 = p2. s2 = mem_ld_i32( s2 ). p2 = s2. s3 = 1. s2 = s2 - s3. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = p2. s2 = 1.
      IF s1 > s2. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s2 = p1. PERFORM f453 USING s1 s2. s1 = 25769803776. rv = s1. RETURN.
    ENDDO.
    DO 1 TIMES. " block
      s1 = l5. s2 = 32. s1 = zcl_wasm_rt=>shr_u64( iv_val = s1 iv_shift = s2 ). s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = -11.
      IF zcl_wasm_rt=>lt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. EXIT. ENDIF. " br_if 0
      s1 = p3. s2 = p3. s2 = mem_ld_i32( s2 ). p3 = s2. s3 = 1. s2 = s2 - s3. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = p3. s2 = 1.
      IF s1 > s2. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. EXIT. ENDIF. " br_if 0
      s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s2 = l5. PERFORM f453 USING s1 s2.
    ENDDO.
    DO 1 TIMES. " block
      s1 = p1. s2 = 32. s1 = zcl_wasm_rt=>shr_u64( iv_val = s1 iv_shift = s2 ). s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = -11.
      IF zcl_wasm_rt=>lt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. EXIT. ENDIF. " br_if 0
      s1 = p2. s2 = p2. s2 = mem_ld_i32( s2 ). p2 = s2. s3 = 1. s2 = s2 - s3. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = p2. s2 = 1.
      IF s1 > s2. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. EXIT. ENDIF. " br_if 0
      s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s2 = p1. PERFORM f453 USING s1 s2.
    ENDDO.
    s1 = l6. s2 = 8589934592.
    IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
    s1 = zcl_wasm_rt=>extend_u32( s1 ). s2 = 4294967296. s1 = zcl_wasm_rt=>or64( iv_a = s1 iv_b = s2 ). l6 = s1.
  ENDDO.
  s1 = l6. rv = s1.
ENDFORM.

FORM f548 USING p0 TYPE i p1 TYPE i p2 TYPE int8 CHANGING rv TYPE i.
  DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE i. DATA l8 TYPE f. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i.
  DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i.
  DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 32. s0 = s0 - s1. l4 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO. " loop
        DO 1 TIMES. " block
          DO 1 TIMES. " block
            DO 1 TIMES. " block
              DO 1 TIMES. " block
                s0 = 7. s1 = p2. s2 = 32. s1 = zcl_wasm_rt=>shr_u64( iv_val = s1 iv_shift = s2 ). s1 = zcl_wasm_rt=>wrap_i64( s1 ). l6 = s1. s2 = l6. s3 = 7. s2 = s2 - s3. s3 = -18.
                IF zcl_wasm_rt=>lt_u32( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
                IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
                s1 = 9. s0 = s0 + s1.
                CASE s0.
                  WHEN 0. lv_br = 2. EXIT.
                  WHEN 1. lv_br = 3. EXIT.
                  WHEN 2. lv_br = 3. EXIT.
                  WHEN 3. lv_br = 3. EXIT.
                  WHEN 4. lv_br = 3. EXIT.
                  WHEN 5. lv_br = 3. EXIT.
                  WHEN 6. lv_br = 3. EXIT.
                  WHEN 7. lv_br = 3. EXIT.
                  WHEN 8. lv_br = 3. EXIT.
                  WHEN 9. EXIT.
                  WHEN 10. EXIT.
                  WHEN 11. EXIT.
                  WHEN 12. EXIT.
                  WHEN 13. lv_br = 3. EXIT.
                  WHEN 14. lv_br = 3. EXIT.
                  WHEN 15. lv_br = 3. EXIT.
                  WHEN 16. lv_br = 1. EXIT.
                  WHEN OTHERS. lv_br = 3. EXIT.
                ENDCASE.
              ENDDO.
              s0 = p2. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l3 = s0. lv_br = 4. EXIT. " br 4
            ENDDO.
            s0 = 0. p0 = s0. s0 = p2. s1 = 9221120288580698112. s0 = s0 + s1. s0 = zcl_wasm_rt=>reinterpret_i64_f64( s0 ). l8 = s0. s1 = '0.000000'.
            IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0.
              lv_br = 5. EXIT. " br 5
            ELSE.
            ENDIF.
            s0 = 255. l3 = s0. s0 = l8. s1 = '255.000000'.
            IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. lv_br = 4. EXIT. ENDIF. " br_if 4
            DO 1 TIMES. " block
              s0 = l8. s0 = round( val = s0 dec = 0 ). l8 = s0. s0 = abs( s0 ). s1 = '2147483648.000000'.
              IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0.
                s0 = l8. s0 = trunc( s0 ). lv_br = 1. EXIT. " br 1
              ELSE.
              ENDIF.
              s1 = -2147483648.
            ENDDO.
            l3 = s1. lv_br = 4. EXIT. " br 4
          ENDDO.
          s1 = p0. s1 = mem_ld_i32( s1 + 216 ). l5 = s1. s1 = l4. s2 = 8. s1 = s1 + s2. l3 = s1. s2 = 0. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s2 iv_addr = s1 + 12 CHANGING cv_mem = mv_mem ). s1 = l3. s2 = -9223372036854775808.
          zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s2 iv_addr = s1 + 4 CHANGING cv_mem = mv_mem ). s1 = l3. s2 = l5. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = l3. s2 = p2. s2 = zcl_wasm_rt=>wrap_i64( s2 ). l5 = s2. s3 = 4.
          s2 = s2 + s3. PERFORM f832 USING s1 s2 CHANGING s1. s1 = l3. s2 = 0. PERFORM f1232 USING s1 s2 CHANGING s1. s1 = l4. s2 = 28. s1 = s1 + s2. s2 = l3. s3 = 0. PERFORM f583 USING s1 s2 s3.
          DO 1 TIMES. " block
            s1 = l4. s1 = mem_ld_i32( s1 + 8 ). l3 = s1.
            IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
            IF s1 <> 0. EXIT. ENDIF. " br_if 0
            s1 = l4. s1 = mem_ld_i32( s1 + 24 ). l7 = s1.
            IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
            IF s1 <> 0. EXIT. ENDIF. " br_if 0
            s1 = l3. s1 = mem_ld_i32( s1 ). s2 = l7. s3 = 0. s4 = l3. s5 = 4. s4 = s4 + s5. s4 = mem_ld_i32( s4 ).
            DATA(lv_ci_func) = mt_tab0[ s4 + 1 ]. " call_indirect
            s1 = dispatch_t11( iv_idx = lv_ci_func p0 = s1 p1 = s2 p2 = s3 ).
          ENDDO.
          DO 1 TIMES. " block
            s1 = l6. s2 = -11.
            IF zcl_wasm_rt=>lt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
            IF s1 <> 0. EXIT. ENDIF. " br_if 0
            s1 = l5. s2 = l5. s2 = mem_ld_i32( s2 ). l3 = s2. s3 = 1. s2 = s2 - s3. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = l3. s2 = 1.
            IF s1 > s2. s1 = 1. ELSE. s1 = 0. ENDIF.
            IF s1 <> 0. EXIT. ENDIF. " br_if 0
            s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s2 = p2. PERFORM f453 USING s1 s2.
          ENDDO.
          s1 = l4. s1 = mem_ld_i32( s1 + 28 ). l3 = s1. lv_br = 2. EXIT. " br 2
        ENDDO.
        s1 = p0. s2 = p2. s3 = 0. PERFORM f287 USING s1 s2 s3 CHANGING s1. p2 = s1. s2 = -4294967296. s1 = zcl_wasm_rt=>and64( iv_a = s1 iv_b = s2 ). s2 = 25769803776.
        IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0. EXIT. ENDIF. " br_if 0
      ENDDO.
      s1 = -1. p0 = s1. lv_br = 1. EXIT. " br 1
    ENDDO.
    s1 = 0. p0 = s1. s1 = 255. s2 = l3. s3 = l3. s4 = 255.
    IF s3 >= s4. s3 = 1. ELSE. s3 = 0. ENDIF.
    IF s3 <> 0. s1 = s1. ELSE. s1 = s2. ENDIF.
    l3 = s1. s2 = 0. s3 = l3. s4 = 0.
    IF s3 > s4. s3 = 1. ELSE. s3 = 0. ENDIF.
    IF s3 <> 0. s1 = s1. ELSE. s1 = s2. ENDIF.
    l3 = s1.
  ENDDO.
  s1 = p1. s2 = l3. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = l4. s2 = 32. s1 = s1 + s2. gv_g0 = s1. s1 = p0. rv = s1.
ENDFORM.

FORM f549 USING p0 TYPE i p1 TYPE i p2 TYPE i CHANGING rv TYPE i.
  DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE i. DATA l8 TYPE int8. DATA l9 TYPE int8. DATA l10 TYPE f. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i.
  DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i.
  DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i.
  DATA s34 TYPE i. DATA s35 TYPE i. DATA s36 TYPE i. DATA s37 TYPE i. DATA s38 TYPE i. DATA s39 TYPE i. DATA s40 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 32. s0 = s0 - s1. l3 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    s0 = p2. s0 = mem_ld_i32( s0 + 4 ).
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p2. s0 = mem_ld_i32( s0 ). l4 = s0.
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          s0 = p2. s0 = mem_ld_i32( s0 + 8 ).
          IF s0 <> 0.
            s0 = p0. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). s1 = p1. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 0 ).
            IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
            s0 = l3. s1 = p0. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 0 ). zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 16 CHANGING cv_mem = mv_mem ). s0 = l3. s1 = p1.
            s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 0 ). zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 24 CHANGING cv_mem = mv_mem ). s0 = l4. s1 = p2.
            s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 16 ). s2 = 12884901888. s3 = 12884901888. s4 = 2. s5 = l3. s6 = 16. s5 = s5 + s6. s6 = 2. PERFORM f0 USING s0 s1 s2 s3 s4 s5 s6 CHANGING s0. l8 = s0. s1 = -4294967296.
            s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 25769803776.
            IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
            s0 = l8. s1 = 4294967295.
            IF zcl_wasm_rt=>le_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0.
              s0 = l8. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p2 = s0. s1 = 31. s0 = zcl_wasm_rt=>shr_s32( iv_val = s0 iv_shift = s1 ). s1 = p2. s2 = 0.
              IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
              s0 = zcl_wasm_rt=>or32( iv_a = s0 iv_b = s1 ). lv_br = 2. EXIT. " br 2
            ELSE.
            ENDIF.
            DO 1 TIMES. " block
              s1 = l8. s1 = zcl_wasm_rt=>wrap_i64( s1 ). s1 = s1. " convert to f64 s2 = l8. s3 = 32. s2 = zcl_wasm_rt=>shr_u64( iv_val = s2 iv_shift = s3 ). s2 = zcl_wasm_rt=>wrap_i64( s2 ). l5 = s2. s3 = 2.
              IF zcl_wasm_rt=>le_u32( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
              IF s2 <> 0. EXIT. ENDIF. " br_if 0
              s1 = l8. s2 = 9221120288580698112. s1 = s1 + s2. s1 = zcl_wasm_rt=>reinterpret_i64_f64( s1 ). s2 = l5. s3 = 7. s2 = s2 - s3. s3 = -19.
              IF zcl_wasm_rt=>le_u32( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
              IF s2 <> 0. EXIT. ENDIF. " br_if 0
              s1 = l4. s2 = l3. s3 = 8. s2 = s2 + s3. s3 = l8. PERFORM f801 USING s1 s2 s3 CHANGING s1. s2 = 0.
              IF s1 < s2. s1 = 1. ELSE. s1 = 0. ENDIF.
              IF s1 <> 0. lv_br = 4. EXIT. ENDIF. " br_if 4
              s1 = l3. s1 = zcl_wasm_rt=>mem_ld_f64( iv_mem = mv_mem iv_addr = s1 + 8 ).
            ENDDO.
            l10 = s1. s2 = '0.000000'.
            IF s1 > s2. s1 = 1. ELSE. s1 = 0. ENDIF.
            s2 = l10. s3 = '0.000000'.
            IF s2 < s3. s2 = 1. ELSE. s2 = 0. ENDIF.
            s1 = s1 - s2. lv_br = 1. EXIT. " br 1
          ELSE.
          ENDIF.
          s2 = p0. s2 = mem_ld_i32( s2 + 8 ). l5 = s2.
          IF s2 = 0. s2 = 1. ELSE. s2 = 0. ENDIF.
          IF s2 <> 0.
            s2 = l4. s3 = p0. s3 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s3 + 0 ). s4 = 0. PERFORM f341 USING s2 s3 s4 CHANGING s2. l8 = s2. s3 = -4294967296. s2 = zcl_wasm_rt=>and64( iv_a = s2 iv_b = s3 ). s3 = 25769803776.
            IF s2 = s3. s2 = 1. ELSE. s2 = 0. ENDIF.
            IF s2 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
            s2 = p0. s3 = l8. s3 = zcl_wasm_rt=>wrap_i64( s3 ). l5 = s3. mem_st_i32( iv_addr = s2 + 8 iv_val = s3 ).
          ELSE.
          ENDIF.
          s2 = p1. s2 = mem_ld_i32( s2 + 8 ). l7 = s2.
          IF s2 <> 0.
            s2 = l5.
          ELSE.
            s3 = l4. s4 = p1. s4 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s4 + 0 ). s5 = 0. PERFORM f341 USING s3 s4 s5 CHANGING s3. l8 = s3. s4 = -4294967296. s3 = zcl_wasm_rt=>and64( iv_a = s3 iv_b = s4 ). s4 = 25769803776.
            IF s3 = s4. s3 = 1. ELSE. s3 = 0. ENDIF.
            IF s3 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
            s3 = p1. s4 = l8. s4 = zcl_wasm_rt=>wrap_i64( s4 ). l7 = s4. mem_st_i32( iv_addr = s3 + 8 iv_val = s4 ). s3 = p0. s3 = mem_ld_i32( s3 + 8 ).
          ENDIF.
          s4 = l7. PERFORM f588 USING s3 s4 CHANGING s3.
        ENDDO.
        l6 = s3.
        IF s3 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
      ENDDO.
      s3 = p0. s3 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s3 + 16 ). l8 = s3. s4 = p1. s4 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s4 + 16 ). l9 = s4.
      IF s3 > s4. s3 = 1. ELSE. s3 = 0. ENDIF.
      s4 = l8. s5 = l9.
      IF s4 < s5. s4 = 1. ELSE. s4 = 0. ENDIF.
      s3 = s3 - s4. l6 = s3. lv_br = 1. EXIT. " br 1
    ENDDO.
    s3 = p2. s4 = 1. mem_st_i32( iv_addr = s3 + 4 iv_val = s4 ).
  ENDDO.
  s3 = l3. s4 = 32. s3 = s3 + s4. gv_g0 = s3. s3 = l6. rv = s3.
ENDFORM.

FORM f550 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i p4 TYPE i CHANGING rv TYPE int8.
  DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE int8. DATA l8 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i.
  DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i.
  DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i. DATA s36 TYPE i. DATA s37 TYPE i.
  DATA s38 TYPE i. DATA s39 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l6 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      s0 = p1. s1 = -4294967296.
      IF zcl_wasm_rt=>ge_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l5 = s0. s0 = mem_ld_i32_16u( s0 + 6 ). p2 = s0. s1 = 13.
        IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        DO 1 TIMES. " block
          s0 = p2. s1 = 48.
          IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0.
            s0 = l5. s0 = mem_ld_i32( s0 + 32 ). s0 = mem_ld_i32_8u( s0 + 16 ). lv_br = 1. EXIT. " br 1
          ELSE.
          ENDIF.
          s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s1 = mem_ld_i32( s1 + 68 ). s2 = p2. s3 = 24. s2 = s2 * s3. s1 = s1 + s2. s1 = mem_ld_i32( s1 + 16 ).
        ENDDO.
        IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      ELSE.
      ENDIF.
      s1 = p0. s2 = 1141317. s3 = 0. PERFORM f970 USING s1 s2 s3 CHANGING s1. s1 = 25769803776. p1 = s1. lv_br = 1. EXIT. " br 1
    ENDDO.
    s1 = p3. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 0 ). l7 = s1.
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        s1 = p3. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 8 ). l8 = s1. s2 = 32. s1 = zcl_wasm_rt=>shr_u64( iv_val = s1 iv_shift = s2 ). s1 = zcl_wasm_rt=>wrap_i64( s1 ). p2 = s1. s2 = 3.
        IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0.
          s1 = p4. s2 = 2.
          IF s1 = s2. s1 = 1. ELSE. s1 = 0. ENDIF.
          IF s1 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
          s1 = p2. s2 = 2.
          IF s1 = s2. s1 = 1. ELSE. s1 = 0. ENDIF.
          IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          lv_br = 2. EXIT. " br 2
        ELSE.
        ENDIF.
        s1 = p4. s2 = 2.
        IF s1 = s2. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      ENDDO.
      s1 = p0. s2 = p1. s3 = l7. s4 = 12884901888. s5 = 0. s6 = 0. s7 = 2. PERFORM f0 USING s1 s2 s3 s4 s5 s6 s7 CHANGING s1. p1 = s1. lv_br = 1. EXIT. " br 1
    ENDDO.
    s1 = p0. s2 = l6. s3 = 12. s2 = s2 + s3. s3 = l8. PERFORM f305 USING s1 s2 s3 CHANGING s1. p2 = s1.
    IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
    IF s1 <> 0.
      s1 = 25769803776. p1 = s1. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s1 = l6. s1 = mem_ld_i32( s1 + 12 ). l5 = s1.
    DO 1 TIMES. " block
      s1 = p4. s2 = 1. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ).
      IF s1 <> 0.
        s1 = p0. s2 = p1. s3 = l7. s4 = l5. s5 = p2. s6 = 2. PERFORM f557 USING s1 s2 s3 s4 s5 s6 CHANGING s1. lv_br = 1. EXIT. " br 1
      ELSE.
      ENDIF.
      s2 = p0. s3 = p1. s4 = l7. s5 = 12884901888. s6 = l5. s7 = p2. s8 = 2. PERFORM f0 USING s2 s3 s4 s5 s6 s7 s8 CHANGING s2.
    ENDDO.
    p1 = s2. s2 = l5.
    IF s2 <> 0.
      s2 = p2. p3 = s2.
      DO. " loop
        DO 1 TIMES. " block
          s2 = p3. s2 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s2 + 0 ). l7 = s2. s3 = 32. s2 = zcl_wasm_rt=>shr_u64( iv_val = s2 iv_shift = s3 ). s2 = zcl_wasm_rt=>wrap_i64( s2 ). s3 = -11.
          IF zcl_wasm_rt=>lt_u32( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
          IF s2 <> 0. EXIT. ENDIF. " br_if 0
          s2 = l7. s2 = zcl_wasm_rt=>wrap_i64( s2 ). p4 = s2. s3 = p4. s3 = mem_ld_i32( s3 ). p4 = s3. s4 = 1. s3 = s3 - s4. mem_st_i32( iv_addr = s2 iv_val = s3 ). s2 = p4. s3 = 1.
          IF s2 > s3. s2 = 1. ELSE. s2 = 0. ENDIF.
          IF s2 <> 0. EXIT. ENDIF. " br_if 0
          s2 = p0. s2 = mem_ld_i32( s2 + 16 ). s3 = l7. PERFORM f453 USING s2 s3.
        ENDDO.
        s2 = p3. s3 = 8. s2 = s2 + s3. p3 = s2. s2 = l5. s3 = 1. s2 = s2 - s3. l5 = s2.
        IF s2 <> 0. EXIT. ENDIF. " br_if 0
      ENDDO.
    ELSE.
    ENDIF.
    s2 = p0. s2 = mem_ld_i32( s2 + 16 ). p0 = s2. s3 = 16. s2 = s2 + s3. s3 = p2. s4 = p0. s4 = mem_ld_i32( s4 + 4 ).
    DATA(lv_ci_func) = mt_tab0[ s4 + 1 ]. " call_indirect
    dispatch_t6( iv_idx = lv_ci_func p0 = s2 p1 = s3 ).
  ENDDO.
  s2 = l6. s3 = 16. s2 = s2 + s3. gv_g0 = s2. s2 = p1. rv = s2.
ENDFORM.

FORM f551 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i CHANGING rv TYPE int8.
  DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE int8. DATA l7 TYPE int8. DATA l8 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i.
  DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i.
  DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i. DATA s36 TYPE i.
  DATA s37 TYPE i. DATA s38 TYPE i. DATA s39 TYPE i. DATA s40 TYPE i. DATA s41 TYPE i. DATA s42 TYPE i. DATA s43 TYPE i. DATA s44 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. p2 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        s0 = p1. s1 = -4294967296.
        IF zcl_wasm_rt=>ge_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l4 = s0. s0 = mem_ld_i32_16u( s0 + 6 ). s1 = 21. s0 = s0 - s1. s1 = 65535. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = 11.
          IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        ELSE.
        ENDIF.
        s0 = p2. s1 = 1135229. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s1 = 1139205. s2 = p2. PERFORM f970 USING s0 s1 s2 CHANGING s0. lv_br = 1. EXIT. " br 1
      ENDDO.
      s0 = p3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). l6 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
      IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = l6. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l5 = s0. s1 = l5. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
      ELSE.
      ENDIF.
      s0 = 25769803776. l7 = s0. s0 = p0. s1 = p2. s2 = 8. s1 = s1 + s2. s2 = l6. PERFORM f719 USING s0 s1 s2 CHANGING s0.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = l4. s1 = 40. s0 = s0 + s1. s0 = zcl_wasm_rt=>mem_ld_i64_ext( iv_mem = mv_mem iv_addr = s0 + 0 iv_op = 53 ). l8 = s0. s0 = p2. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 8 ). l6 = s0. s1 = 0.
      IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = p2. s1 = l6. s2 = l8. s1 = s1 + s2. l6 = s1. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 8 CHANGING cv_mem = mv_mem ).
      ELSE.
      ENDIF.
      s0 = l6. s1 = l8.
      IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      s1 = l6. s2 = 0.
      IF s1 >= s2. s1 = 1. ELSE. s1 = 0. ENDIF.
      s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = p0. s1 = 1135321. s2 = 0. PERFORM f975 USING s0 s1 s2. lv_br = 2. EXIT. " br 2
      ELSE.
      ENDIF.
      s0 = p3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 8 ). l6 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
      IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = l6. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p3 = s0. s1 = p3. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
      ELSE.
      ENDIF.
      s0 = p0. s1 = l6. s2 = 1. PERFORM f237 USING s0 s1 s2 CHANGING s0. l6 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 25769803776.
      IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p0. s1 = 12884901888. s2 = p1. s3 = l4. s3 = mem_ld_i32_16u( s3 + 6 ). PERFORM f303 USING s0 s1 s2 s3 CHANGING s0. p1 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 25769803776.
      IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = l6. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
        IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
        s0 = l6. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p3 = s0. s1 = p3. s1 = mem_ld_i32( s1 ). p3 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p3. s1 = 1.
        IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
        s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = l6. PERFORM f453 USING s0 s1. lv_br = 2. EXIT. " br 2
      ELSE.
      ENDIF.
      s0 = p0. s1 = p1. s2 = p2. s2 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s2 + 8 ). s3 = l6. PERFORM f716 USING s0 s1 s2 s3 CHANGING s0. s1 = 0.
      IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = p1. l7 = s0. lv_br = 2. EXIT. " br 2
      ELSE.
      ENDIF.
      s0 = p0. s1 = p1. PERFORM f1164 USING s0 s1.
    ENDDO.
    s0 = 25769803776. l7 = s0.
  ENDDO.
  s0 = p2. s1 = 16. s0 = s0 + s1. gv_g0 = s0. s0 = l7. rv = s0.
ENDFORM.

FORM f552 USING p0 TYPE i p1 TYPE i p2 TYPE i p3 TYPE i.
  DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE i. DATA l8 TYPE i. DATA l9 TYPE i. DATA l10 TYPE i. DATA l11 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i.
  DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i.
  DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 80. s0 = s0 - s1. l4 = s0.
  gv_g0 = s0. s0 = p2. s1 = 0.
  IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    DO. " loop
      DO 1 TIMES. " block
        s0 = p1. s1 = l8. s2 = 2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s0 = mem_ld_i32( s0 ). l6 = s0. s1 = 44032. s0 = s0 - s1. l5 = s0. s1 = 11172.
        IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = 0. l5 = s0. s0 = 698. l7 = s0.
          DO 1 TIMES. " block
            DO. " loop
              DO 1 TIMES. " block
                DO 1 TIMES. " block
                  s0 = l6. s1 = l5. s2 = l7. s1 = s1 + s2. s2 = 2. s1 = s1 / s2. l9 = s1. s2 = 2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s2 = 1156384. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). l10 = s1. s2 = 14.
                  s1 = zcl_wasm_rt=>shr_u32( iv_val = s1 iv_shift = s2 ). l11 = s1.
                  IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
                  IF s0 <> 0.
                    s0 = l9. s1 = 1. s0 = s0 - s1. l7 = s0. lv_br = 1. EXIT. " br 1
                  ELSE.
                  ENDIF.
                  s0 = l10. s1 = 7. s0 = zcl_wasm_rt=>shr_u32( iv_val = s0 iv_shift = s1 ). s1 = 127. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). l5 = s0. s1 = l11. s0 = s0 + s1. s1 = l6.
                  IF zcl_wasm_rt=>gt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
                  IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
                  s0 = l9. s1 = 1. s0 = s0 + s1. l5 = s0.
                ENDDO.
                s0 = l5. s1 = l7.
                IF s0 <= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
                lv_br = 2. EXIT. " br 2
              ENDDO.
            ENDDO.
            s0 = l10. s1 = 1. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = p3.
            IF zcl_wasm_rt=>gt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. EXIT. ENDIF. " br_if 0
            s0 = l4. s1 = l6. s2 = l9. s3 = l11. s4 = l5. s5 = l10. s6 = 1. s5 = zcl_wasm_rt=>shr_u32( iv_val = s5 iv_shift = s6 ). s6 = 63. s5 = zcl_wasm_rt=>and32( iv_a = s5 iv_b = s6 ). PERFORM f159 USING s0 s1 s2 s3 s4 s5 CHANGING s0.
            l5 = s0.
            IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. EXIT. ENDIF. " br_if 0
            s0 = p0. s1 = l4. s2 = l5. s3 = p3. PERFORM f552 USING s0 s1 s2 s3. lv_br = 2. EXIT. " br 2
          ENDDO.
          s0 = l4. s1 = l6. mem_st_i32( iv_addr = s0 + 76 iv_val = s1 ). s0 = p0. s1 = l4. s2 = 76. s1 = s1 + s2. s2 = 4. PERFORM f1097 USING s0 s1 s2. lv_br = 1. EXIT. " br 1
        ELSE.
        ENDIF.
        s0 = l4. s1 = l5. s2 = 65535. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). l6 = s1. s2 = 588. s1 = zcl_wasm_rt=>div_u32( iv_a = s1 iv_b = s2 ). l7 = s1. s2 = 4352. s1 = zcl_wasm_rt=>or32( iv_a = s1 iv_b = s2 ).
        mem_st_i32( iv_addr = s0 + 76 iv_val = s1 ). s0 = p0. s1 = l4. s2 = 76. s1 = s1 + s2. s2 = 4. PERFORM f1097 USING s0 s1 s2. s0 = l4. s1 = l5. s2 = l7. s3 = 588. s2 = s2 * s3. s1 = s1 - s2. s2 = 65535.
        s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). s2 = 28. s1 = zcl_wasm_rt=>div_u32( iv_a = s1 iv_b = s2 ). s2 = 4449. s1 = s1 + s2. mem_st_i32( iv_addr = s0 + 76 iv_val = s1 ). s0 = p0. s1 = l4. s2 = 76. s1 = s1 + s2. s2 = 4.
        PERFORM f1097 USING s0 s1 s2. s0 = l6. s1 = 28. s0 = zcl_wasm_rt=>rem_u32( iv_a = s0 iv_b = s1 ). l6 = s0.
        IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = l4. s1 = l6. s2 = 4519. s1 = s1 + s2. mem_st_i32( iv_addr = s0 + 76 iv_val = s1 ). s0 = p0. s1 = l4. s2 = 76. s1 = s1 + s2. s2 = 4. PERFORM f1097 USING s0 s1 s2.
      ENDDO.
      s0 = l8. s1 = 1. s0 = s0 + s1. l8 = s0. s1 = p2.
      IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
    ENDDO.
  ELSE.
  ENDIF.
  s0 = l4. s1 = 80. s0 = s0 + s1. gv_g0 = s0.
ENDFORM.

FORM f553 USING p0 TYPE i p1 TYPE i p2 TYPE i.
  DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i.
  DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i.
  DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA lv_br TYPE i. s0 = p2. s0 = mem_ld_i32( s0 + 4 ).
  IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = p2. s1 = 28. s0 = s0 + s1. l5 = s0. s0 = mem_ld_i32( s0 ). l4 = s0. s1 = p2. s1 = mem_ld_i32( s1 + 24 ). l3 = s1. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l3. s1 = l4. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = p2.
    s1 = 0. mem_st_i32( iv_addr = s0 + 24 iv_val = s1 ). s0 = l5. s1 = 0. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p2. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 32 ). l6 = s0.
    DO 1 TIMES. " block
      s0 = p1. s0 = mem_ld_i32( s0 ).
      IF s0 <> 0.
        DO 1 TIMES. " block
          DO 1 TIMES. " block
            DO 1 TIMES. " block
              s0 = l6. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l3 = s0. s0 = mem_ld_i32( s0 + 24 ). l4 = s0.
              IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0. EXIT. ENDIF. " br_if 0
              s0 = l3. s1 = 24. s0 = s0 + s1. s1 = p2. s2 = l4.
              IF s1 = s2. s1 = 1. ELSE. s1 = 0. ENDIF.
              IF s1 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
              DO. " loop
                s0 = l4. l3 = s0. s0 = mem_ld_i32( s0 + 12 ). l4 = s0.
                IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
                IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
                s0 = p2. s1 = l4.
                IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                IF s0 <> 0. EXIT. ENDIF. " br_if 0
              ENDDO.
              lv_br = 1. EXIT. " br 1
            ENDDO.
            s0 = 1149969. s1 = 1148333. s2 = 47502. s3 = 1144082. PERFORM f1101 USING s0 s1 s2 s3.
            RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
          ENDDO.
          s0 = l3. s1 = 12. s0 = s0 + s1.
        ENDDO.
        s1 = p2. s1 = mem_ld_i32( s1 + 12 ). mem_st_i32( iv_addr = s0 iv_val = s1 ). lv_br = 1. EXIT. " br 1
      ELSE.
      ENDIF.
      s0 = l6. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
      IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = l6. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l3 = s0. s1 = l3. s1 = mem_ld_i32( s1 ). l3 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l3. s1 = 1.
      IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p0. s1 = l6. PERFORM f453 USING s0 s1.
    ENDDO.
    DO 1 TIMES. " block
      s0 = p2. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 40 ). l6 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
      IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = l6. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l3 = s0. s1 = l3. s1 = mem_ld_i32( s1 ). l3 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l3. s1 = 1.
      IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p0. s1 = l6. PERFORM f453 USING s0 s1.
    ENDDO.
    s0 = p2. s1 = p2. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 - s2. l3 = s1. mem_st_i32( iv_addr = s0 iv_val = s1 ).
    DO 1 TIMES. " block
      s0 = l3.
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = p2. s1 = 20. s0 = s0 + s1. l5 = s0. s0 = mem_ld_i32( s0 ). l4 = s0. s1 = p2. s1 = mem_ld_i32( s1 + 16 ). l3 = s1. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l3. s1 = l4. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = p2.
        s1 = 0. mem_st_i32( iv_addr = s0 + 16 iv_val = s1 ). s0 = l5. s1 = 0. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s1 = 16. s0 = s0 + s1. s1 = p2. s2 = p0. s2 = mem_ld_i32( s2 + 4 ).
        DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
        dispatch_t6( iv_idx = lv_ci_func p0 = s0 p1 = s1 ). lv_br = 1. EXIT. " br 1
      ELSE.
      ENDIF.
      s0 = p2. s1 = 12884901888. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 40 CHANGING cv_mem = mv_mem ). s0 = p2. s1 = 12884901888.
      zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 32 CHANGING cv_mem = mv_mem ). s0 = p2. s1 = 1. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ).
    ENDDO.
    s0 = p1. s1 = p1. s1 = mem_ld_i32( s1 + 12 ). s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ).
  ELSE.
  ENDIF.
ENDFORM.

FORM f554 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i CHANGING rv TYPE int8.
  DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i.
  DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i.
  DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i. DATA s36 TYPE i. DATA s37 TYPE i.
  DATA s38 TYPE i. DATA s39 TYPE i. DATA s40 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l5 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      s0 = p1. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = -47244640256.
      IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      DO 1 TIMES. " block
        s0 = p1. s1 = -4294967296.
        IF zcl_wasm_rt=>lt_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l4 = s0. s0 = mem_ld_i32_16u( s0 + 6 ). s1 = 36.
        IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = l4. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 32 ). p1 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = -47244640256.
        IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      ENDDO.
      s0 = p0. s1 = 1143007. s2 = 0. PERFORM f970 USING s0 s1 s2 CHANGING s0. s0 = 25769803776. l7 = s0. lv_br = 1. EXIT. " br 1
    ENDDO.
    s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l4 = s0. s1 = l4. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). l7 = s0.
    s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 12884901888.
    IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p0. s1 = p1. s2 = 0. PERFORM f341 USING s0 s1 s2 CHANGING s0. l7 = s0. s0 = l4. s1 = l4. s1 = mem_ld_i32( s1 ). p2 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p2. s1 = 1.
      IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = p1. PERFORM f453 USING s0 s1. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = l7. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
    IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = l7. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l6 = s0. s1 = l6. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
    ELSE.
    ENDIF.
    DO 1 TIMES. " block
      s0 = p0. s1 = l5. s2 = 8. s1 = s1 + s2. s2 = l7. PERFORM f719 USING s0 s1 s2 CHANGING s0.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = l5. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 8 ). l7 = s0. s1 = 1073741823. s0 = s0 - s1. s1 = -1073741823.
      IF zcl_wasm_rt=>le_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = p0. s1 = 1137956. s2 = 0. PERFORM f975 USING s0 s1 s2. lv_br = 1. EXIT. " br 1
      ELSE.
      ENDIF.
      s0 = 4. l6 = s0. s0 = p0. s1 = p1. s2 = p2. s3 = 2.
      IF s2 >= s3. s2 = 1. ELSE. s2 = 0. ENDIF.
      IF s2 <> 0.
        s2 = p0. s3 = p3. s3 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s3 + 8 ). PERFORM f689 USING s2 s3 CHANGING s2. l6 = s2. s3 = 0.
        IF s2 < s3. s2 = 1. ELSE. s2 = 0. ENDIF.
        IF s2 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        s2 = l5. s2 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s2 + 8 ).
      ELSE.
        s3 = l7.
      ENDIF.
      s3 = zcl_wasm_rt=>wrap_i64( s3 ). s4 = l6. PERFORM f838 USING s1 s2 s3 s4 CHANGING s1. l7 = s1. s1 = l4. s2 = l4. s2 = mem_ld_i32( s2 ). p2 = s2. s3 = 1. s2 = s2 - s3. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = p2. s2 = 1.
      IF s1 > s2. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s2 = p1. PERFORM f453 USING s1 s2. lv_br = 1. EXIT. " br 1
    ENDDO.
    s1 = l4. s2 = l4. s2 = mem_ld_i32( s2 ). p2 = s2. s3 = 1. s2 = s2 - s3. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = 25769803776. l7 = s1. s1 = p2. s2 = 1.
    IF s1 > s2. s1 = 1. ELSE. s1 = 0. ENDIF.
    IF s1 <> 0. EXIT. ENDIF. " br_if 0
    s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s2 = p1. PERFORM f453 USING s1 s2.
  ENDDO.
  s1 = l5. s2 = 16. s1 = s1 + s2. gv_g0 = s1. s1 = l7. rv = s1.
ENDFORM.

FORM f555 USING p0 TYPE i p1 TYPE i p2 TYPE i.
  DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    s0 = p0. s1 = p1. s1 = mem_ld_i32( s1 ). l4 = s1. s0 = s0 + s1. s0 = mem_ld_i32_8u( s0 ). s1 = 253. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = 44.
    IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s1 = l4. s2 = 1. s1 = s1 + s2. l7 = s1. s0 = s0 + s1. s0 = mem_ld_i32_8u( s0 ). l3 = s0. s1 = 48. s0 = s0 - s1. s1 = 255. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = 9.
    IF zcl_wasm_rt=>gt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l3. s1 = 100. s0 = s0 * s1. s1 = 4800. s0 = s0 - s1. l5 = s0.
    DO 1 TIMES. " block
      s0 = p0. s1 = l4. s2 = 2. s1 = s1 + s2. l3 = s1. s0 = s0 + s1. s0 = mem_ld_i32_8u( s0 ). l6 = s0. s1 = 48. s0 = s0 - s1. s1 = 255. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = 9.
      IF zcl_wasm_rt=>gt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = l6. s1 = 10. s0 = s0 * s1. s1 = l5. s0 = s0 + s1. s1 = 480. s0 = s0 - s1. l5 = s0. s0 = p0. s1 = l4. s2 = 3. s1 = s1 + s2. l3 = s1. s0 = s0 + s1. s0 = mem_ld_i32_8u( s0 ). l6 = s0. s1 = 48. s0 = s0 - s1. s1 = 255.
      s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = 9.
      IF zcl_wasm_rt=>gt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = l5. s1 = l6. s0 = s0 + s1. s1 = 48. s0 = s0 - s1. l5 = s0. s0 = p0. s1 = l4. s2 = 4. s1 = s1 + s2. l3 = s1. s0 = s0 + s1. s0 = mem_ld_i32_8u( s0 ). s1 = 48. s0 = s0 - s1. s1 = 255. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
      s1 = 9.
      IF zcl_wasm_rt=>gt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p0. s1 = l4. s2 = 5. s1 = s1 + s2. l3 = s1. s0 = s0 + s1. s0 = mem_ld_i32_8u( s0 ). s1 = 48. s0 = s0 - s1. s1 = 255. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = 9.
      IF zcl_wasm_rt=>gt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p0. s1 = l4. s2 = 6. s1 = s1 + s2. l3 = s1. s0 = s0 + s1. s0 = mem_ld_i32_8u( s0 ). s1 = 48. s0 = s0 - s1. s1 = 255. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = 9.
      IF zcl_wasm_rt=>gt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p0. s1 = l4. s2 = 7. s1 = s1 + s2. l3 = s1. s0 = s0 + s1. s0 = mem_ld_i32_8u( s0 ). s1 = 48. s0 = s0 - s1. s1 = 255. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = 9.
      IF zcl_wasm_rt=>gt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p0. s1 = l4. s2 = 8. s1 = s1 + s2. l3 = s1. s0 = s0 + s1. s0 = mem_ld_i32_8u( s0 ). s1 = 48. s0 = s0 - s1. s1 = 255. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = 9.
      IF zcl_wasm_rt=>gt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p0. s1 = l4. s2 = 9. s1 = s1 + s2. l3 = s1. s0 = s0 + s1. s0 = mem_ld_i32_8u( s0 ). s1 = 48. s0 = s0 - s1. s1 = 255. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = 9.
      IF zcl_wasm_rt=>gt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = l4. s1 = 10. s0 = s0 + s1. l3 = s0. s1 = l7.
      IF s0 <= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
    ENDDO.
    s0 = p2. s1 = l5. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p1. s1 = l3. mem_st_i32( iv_addr = s0 iv_val = s1 ).
  ENDDO.
ENDFORM.

FORM f556 USING p0 TYPE i CHANGING rv TYPE i.
  DATA l1 TYPE i. DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE i. DATA l8 TYPE i. DATA l9 TYPE i. DATA l10 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i.
  DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i.
  DATA s18 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    s0 = p0. s0 = mem_ld_i32( s0 + 4 ). l1 = s0. s1 = p0. s1 = mem_ld_i32( s1 ). l2 = s1. s2 = 2. s1 = s1 + s2. l4 = s1.
    IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p0. s0 = mem_ld_i32( s0 + 8 ). l3 = s0. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = p0. s0 = mem_ld_i32( s0 + 12 ). s1 = p0. s1 = mem_ld_i32( s1 + 8 ). s2 = l4. s3 = l1. s4 = 3. s3 = s3 * s4. s4 = 2. s3 = s3 / s4. l1 = s3. s4 = l1. s5 = l4.
    IF s4 < s5. s4 = 1. ELSE. s4 = 0. ENDIF.
    IF s4 <> 0. s2 = s2. ELSE. s2 = s3. ENDIF.
    l1 = s2. s3 = 2. s2 = zcl_wasm_rt=>shl32( iv_val = s2 iv_shift = s3 ). s3 = p0. s3 = mem_ld_i32( s3 + 16 ).
    DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
    s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). l3 = s0.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = -1. rv = s0. RETURN.
    ELSE.
    ENDIF.
    s0 = p0. s1 = l1. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = p0. s1 = l3. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ).
  ENDDO.
  s0 = l3. s1 = 4. s0 = s0 + s1. s1 = l3. s2 = l2. s3 = 2. s2 = zcl_wasm_rt=>shl32( iv_val = s2 iv_shift = s3 ). l1 = s2. PERFORM f157 USING s0 s1 s2 CHANGING s0. s0 = p0. s0 = mem_ld_i32( s0 + 8 ). l5 = s0. s1 = 0.
  mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l1. s1 = l5. s0 = s0 + s1. s1 = 4. s0 = s0 + s1. s1 = -1. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s1 = l4. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l2. s1 = 0.
  IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = l5. s1 = 8. s0 = s0 + s1. l9 = s0. s0 = 0. l2 = s0. s0 = 1. l7 = s0.
    DO. " loop
      DO 1 TIMES. " block
        s0 = l5. s1 = l2. s2 = 2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). l1 = s1. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). l10 = s0. s1 = l5. s2 = l7. s3 = 2. s2 = zcl_wasm_rt=>shl32( iv_val = s2 iv_shift = s3 ). s1 = s1 + s2.
        s1 = mem_ld_i32( s1 ).
        IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = l1. s1 = l9. s0 = s0 + s1. l3 = s0.
          DO. " loop
            DO 1 TIMES. " block
              s0 = l3. l8 = s0. s0 = l2. l1 = s0. s1 = 3. s0 = s0 + s1. l7 = s0. s1 = l4.
              IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0. EXIT. ENDIF. " br_if 0
              s0 = l3. s1 = 8. s0 = s0 + s1. l3 = s0. s0 = l2. s1 = 2. s0 = s0 + s1. l2 = s0. s0 = l8. s1 = 4. s0 = s0 - s1. s0 = mem_ld_i32( s0 ). s1 = l8. s1 = mem_ld_i32( s1 ).
              IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
            ENDDO.
          ENDDO.
          s0 = l5. s1 = l6. s2 = 2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. l2 = s0. s1 = l10. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l2. s1 = 4. s0 = s0 + s1. s1 = l8. s2 = 4. s1 = s1 - s2.
          s1 = mem_ld_i32( s1 ). mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l6. s1 = 2. s0 = s0 + s1. l6 = s0. lv_br = 1. EXIT. " br 1
        ELSE.
        ENDIF.
        s0 = l2. s1 = 3. s0 = s0 + s1. l7 = s0. s0 = l2. l1 = s0.
      ENDDO.
      s0 = l1. s1 = 2. s0 = s0 + s1. l2 = s0. s0 = l4. s1 = l7.
      IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
    ENDDO.
  ELSE.
  ENDIF.
  s0 = p0. s1 = l6. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = 0. rv = s0.
ENDFORM.

FORM f557 USING p0 TYPE i p1 TYPE int8 p2 TYPE int8 p3 TYPE i p4 TYPE i p5 TYPE i CHANGING rv TYPE int8.
  DATA l6 TYPE i. DATA l7 TYPE i. DATA l8 TYPE int8. DATA l9 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i.
  DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i.
  DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i. DATA s36 TYPE i. DATA s37 TYPE i.
  DATA s38 TYPE i. DATA s39 TYPE i. DATA s40 TYPE i. DATA s41 TYPE i. DATA s42 TYPE i. DATA s43 TYPE i. DATA s44 TYPE i. DATA s45 TYPE i. DATA s46 TYPE i. DATA s47 TYPE i. DATA s48 TYPE i. DATA s49 TYPE i. DATA lv_br TYPE i. s0 = p0.
  s1 = p0. s1 = mem_ld_i32( s1 + 236 ). l6 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 + 236 iv_val = s1 ).
  DO 1 TIMES. " block
    s0 = l6. s1 = 1.
    IF s0 <= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = 25769803776. l8 = s0. s0 = p0. PERFORM f1030 USING s0 CHANGING s0.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
    ELSE.
    ENDIF.
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        s0 = p1. s1 = -4294967296.
        IF zcl_wasm_rt=>ge_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l6 = s0. s0 = mem_ld_i32_8u( s0 + 5 ). s1 = 16. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
          IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0.
            s0 = p0. s1 = 1139376. s2 = 0. PERFORM f970 USING s0 s1 s2 CHANGING s0. s0 = 25769803776. rv = s0. RETURN.
          ELSE.
          ENDIF.
          s0 = p5. s1 = 1. s0 = zcl_wasm_rt=>or32( iv_a = s0 iv_b = s1 ). l7 = s0. s0 = l6. s0 = mem_ld_i32_16u( s0 + 6 ). p5 = s0. s1 = 13.
          IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
          s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s0 = mem_ld_i32( s0 + 68 ). s1 = p5. s2 = 24. s1 = s1 * s2. s0 = s0 + s1. s0 = mem_ld_i32( s0 + 16 ). p5 = s0.
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        ELSE.
        ENDIF.
        s0 = p0. s1 = 1141317. s2 = 0. PERFORM f970 USING s0 s1 s2 CHANGING s0. s0 = 25769803776. rv = s0. RETURN.
      ENDDO.
      s0 = p0. s1 = p1. s2 = p2. s3 = p3. s4 = p4. s5 = l7. s6 = p5.
      DATA(lv_ci_func) = mt_tab0[ s6 + 1 ]. " call_indirect
      s0 = dispatch_t77( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 p3 = s3 p4 = s4 p5 = s5 ). rv = s0. RETURN.
    ENDDO.
    s0 = l6. s0 = mem_ld_i32( s0 + 32 ). s0 = mem_ld_i32_8u( s0 + 17 ). s1 = 4. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
    IF s0 <> 0.
      s0 = p0. s1 = p1. s2 = 12884901888. s3 = p2. s4 = p3. s5 = p4. s6 = l7. PERFORM f0 USING s0 s1 s2 s3 s4 s5 s6 CHANGING s0. rv = s0. RETURN.
    ELSE.
    ENDIF.
    s0 = 25769803776. l8 = s0. s0 = p0. s1 = p2. s2 = 1. PERFORM f508 USING s0 s1 s2 CHANGING s0. l9 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 25769803776.
    IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s1 = p1. s2 = l9. s3 = p2. s4 = p3. s5 = p4. s6 = l7. PERFORM f0 USING s0 s1 s2 s3 s4 s5 s6 CHANGING s0. l8 = s0. s1 = -4294967297.
    IF zcl_wasm_rt=>le_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    s1 = l8. s2 = -4294967296. s1 = zcl_wasm_rt=>and64( iv_a = s1 iv_b = s2 ). s2 = 25769803776.
    IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
    s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = l9. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
      IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = l9. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p3 = s0. s1 = p3. s1 = mem_ld_i32( s1 ). p3 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p3. s1 = 1.
      IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = l9. PERFORM f453 USING s0 s1. s0 = l8. rv = s0. RETURN.
    ELSE.
    ENDIF.
    DO 1 TIMES. " block
      s0 = l8. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
      IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = l8. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p3 = s0. s1 = p3. s1 = mem_ld_i32( s1 ). p3 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p3. s1 = 1.
      IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = l8. PERFORM f453 USING s0 s1.
    ENDDO.
    s0 = l9. l8 = s0.
  ENDDO.
  s0 = l8. rv = s0.
ENDFORM.

FORM f558 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i p4 TYPE i CHANGING rv TYPE int8.
  DATA l5 TYPE int8. DATA l6 TYPE int8. DATA l7 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i.
  DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i.
  DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i. DATA s36 TYPE i. DATA s37 TYPE i. DATA s38 TYPE i.
  DATA s39 TYPE i. DATA s40 TYPE i. DATA s41 TYPE i. DATA s42 TYPE i. DATA s43 TYPE i. DATA lv_br TYPE i. s0 = p3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 8 ). l5 = s0. s0 = p3.
  s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). l7 = s0. s0 = 25769803776. l6 = s0.
  DO 1 TIMES. " block
    s0 = p0. s1 = p1. PERFORM f151 USING s0 s1 CHANGING s0. p1 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 25769803776.
    IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    DO 1 TIMES. " block
      s0 = l5. s1 = -4294967296.
      IF zcl_wasm_rt=>ge_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = l5. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p3 = s0. s0 = mem_ld_i32_16u( s0 + 6 ). p2 = s0. s1 = 13.
        IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        DO 1 TIMES. " block
          s0 = p2. s1 = 48.
          IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0.
            s0 = p3. s0 = mem_ld_i32( s0 + 32 ). s0 = mem_ld_i32_8u( s0 + 16 ). lv_br = 1. EXIT. " br 1
          ELSE.
          ENDIF.
          s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s1 = mem_ld_i32( s1 + 68 ). s2 = p2. s3 = 24. s2 = s2 * s3. s1 = s1 + s2. s1 = mem_ld_i32( s1 + 16 ).
        ENDDO.
        IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      ELSE.
      ENDIF.
      s1 = p0. s2 = 1141317. s3 = 0. PERFORM f970 USING s1 s2 s3 CHANGING s1. s1 = p1. s2 = 32. s1 = zcl_wasm_rt=>shr_u64( iv_val = s1 iv_shift = s2 ). s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = -11.
      IF zcl_wasm_rt=>lt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s1 = p1. s1 = zcl_wasm_rt=>wrap_i64( s1 ). p2 = s1. s2 = p2. s2 = mem_ld_i32( s2 ). p2 = s2. s3 = 1. s2 = s2 - s3. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = p2. s2 = 1.
      IF s1 > s2. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s2 = p1. PERFORM f453 USING s1 s2. s1 = 25769803776. rv = s1. RETURN.
    ENDDO.
    s1 = p0. s2 = l7. PERFORM f503 USING s1 s2 CHANGING s1. p2 = s1.
    IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
    IF s1 <> 0.
      s1 = p0. s2 = p1. PERFORM f1164 USING s1 s2. s1 = 25769803776. rv = s1. RETURN.
    ELSE.
    ENDIF.
    DO 1 TIMES. " block
      s1 = p4.
      IF s1 <> 0.
        s1 = p0. s2 = p1. s3 = p2. s4 = 12884901888. s5 = 12884901888. s6 = l5. s7 = 21765. PERFORM f37 USING s1 s2 s3 s4 s5 s6 s7 CHANGING s1. lv_br = 1. EXIT. " br 1
      ELSE.
      ENDIF.
      s2 = p0. s3 = p1. s4 = p2. s5 = 12884901888. s6 = l5. s7 = 12884901888. s8 = 19717. PERFORM f37 USING s2 s3 s4 s5 s6 s7 s8 CHANGING s2.
    ENDDO.
    p4 = s2.
    DO 1 TIMES. " block
      s2 = p1. s3 = 32. s2 = zcl_wasm_rt=>shr_u64( iv_val = s2 iv_shift = s3 ). s2 = zcl_wasm_rt=>wrap_i64( s2 ). s3 = -11.
      IF zcl_wasm_rt=>lt_u32( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
      IF s2 <> 0. EXIT. ENDIF. " br_if 0
      s2 = p1. s2 = zcl_wasm_rt=>wrap_i64( s2 ). p3 = s2. s3 = p3. s3 = mem_ld_i32( s3 ). p3 = s3. s4 = 1. s3 = s3 - s4. mem_st_i32( iv_addr = s2 iv_val = s3 ). s2 = p3. s3 = 1.
      IF s2 > s3. s2 = 1. ELSE. s2 = 0. ENDIF.
      IF s2 <> 0. EXIT. ENDIF. " br_if 0
      s2 = p0. s2 = mem_ld_i32( s2 + 16 ). s3 = p1. PERFORM f453 USING s2 s3.
    ENDDO.
    DO 1 TIMES. " block
      s2 = p2. s3 = 228.
      IF s2 < s3. s2 = 1. ELSE. s2 = 0. ENDIF.
      IF s2 <> 0. EXIT. ENDIF. " br_if 0
      s2 = p0. s2 = mem_ld_i32( s2 + 16 ). p3 = s2. s2 = mem_ld_i32( s2 + 56 ). s3 = p2. s4 = 2. s3 = zcl_wasm_rt=>shl32( iv_val = s3 iv_shift = s4 ). s2 = s2 + s3. s2 = mem_ld_i32( s2 ). p0 = s2. s3 = p0. s3 = mem_ld_i32( s3 ). p2 = s3.
      s4 = 1. s3 = s3 - s4. mem_st_i32( iv_addr = s2 iv_val = s3 ). s2 = p2. s3 = 1.
      IF s2 > s3. s2 = 1. ELSE. s2 = 0. ENDIF.
      IF s2 <> 0. EXIT. ENDIF. " br_if 0
      s2 = p3. s3 = p0. PERFORM f713 USING s2 s3.
    ENDDO.
    s2 = 25769803776. s3 = 12884901888. s4 = p4. s5 = 0.
    IF s4 < s5. s4 = 1. ELSE. s4 = 0. ENDIF.
    IF s4 <> 0. s2 = s2. ELSE. s2 = s3. ENDIF.
    l6 = s2.
  ENDDO.
  s2 = l6. rv = s2.
ENDFORM.

FORM f559 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i CHANGING rv TYPE int8.
  DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE int8. DATA l7 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i.
  DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i.
  DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i. DATA s36 TYPE i. DATA s37 TYPE i.
  DATA s38 TYPE i. DATA s39 TYPE i. DATA s40 TYPE i. DATA s41 TYPE i. DATA s42 TYPE i. DATA s43 TYPE i. DATA s44 TYPE i. DATA s45 TYPE i. DATA s46 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          DO 1 TIMES. " block
            s0 = p2.
            IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0.
              s0 = p0. s0 = mem_ld_i32( s0 + 16 ). p2 = s0. s0 = mem_ld_i32( s0 + 44 ). s1 = 47.
              IF zcl_wasm_rt=>le_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
              s0 = p2. s0 = mem_ld_i32( s0 + 56 ). s0 = mem_ld_i32( s0 + 188 ). p2 = s0. s1 = p2. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p1. s1 = -4294967296.
              s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). l7 = s0. s0 = p2. s0 = zcl_wasm_rt=>extend_u32( s0 ). s1 = -30064771072. s0 = zcl_wasm_rt=>or64( iv_a = s0 iv_b = s1 ). l6 = s0. lv_br = 4. EXIT. " br 4
            ELSE.
            ENDIF.
            s0 = p3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). l6 = s0.
            DO 1 TIMES. " block
              s0 = p1. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). l7 = s0. s1 = 12884901888.
              IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0. EXIT. ENDIF. " br_if 0
              s0 = l6. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = -34359738368.
              IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0. EXIT. ENDIF. " br_if 0
              s0 = l6. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l4 = s0. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 4 ). l6 = s0. s1 = -4611686018427387905.
              IF zcl_wasm_rt=>gt_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0.
                s0 = l4. s0 = mem_ld_i32( s0 + 12 ). p2 = s0. lv_br = 3. EXIT. " br 3
              ELSE.
              ENDIF.
              s0 = p0. s0 = mem_ld_i32( s0 + 16 ). p2 = s0. s0 = mem_ld_i32( s0 + 56 ). l5 = s0. s1 = p2. s1 = mem_ld_i32( s1 + 52 ). s2 = l6. s3 = 32. s2 = zcl_wasm_rt=>shr_u64( iv_val = s2 iv_shift = s3 ).
              s2 = zcl_wasm_rt=>wrap_i64( s2 ). s3 = p2. s3 = mem_ld_i32( s3 + 36 ). s4 = 1. s3 = s3 - s4. s2 = zcl_wasm_rt=>and32( iv_a = s2 iv_b = s3 ). s3 = 2. s2 = zcl_wasm_rt=>shl32( iv_val = s2 iv_shift = s3 ). s1 = s1 + s2.
              s1 = mem_ld_i32( s1 ). p2 = s1. s2 = 2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s0 = mem_ld_i32( s0 ). p3 = s0. s1 = l4.
              IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
              DO. " loop
                s0 = p2.
                IF s0 <> 0.
                  s0 = l4. s1 = l5. s2 = p3. s2 = mem_ld_i32( s2 + 12 ). p2 = s2. s3 = 2. s2 = zcl_wasm_rt=>shl32( iv_val = s2 iv_shift = s3 ). s1 = s1 + s2. s1 = mem_ld_i32( s1 ). p3 = s1.
                  IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                  IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
                  lv_br = 4. EXIT. " br 4
                ELSE.
                ENDIF.
              ENDDO.
              s0 = 1152235. s1 = 1148333. s2 = 2697. s3 = 1135303. PERFORM f1101 USING s0 s1 s2 s3.
              RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
            ENDDO.
            s0 = p0. s1 = l6. s2 = 0. PERFORM f341 USING s0 s1 s2 CHANGING s0. lv_br = 2. EXIT. " br 2
          ENDDO.
          s1 = 1144256. s2 = 1148333. s3 = 3113. s4 = 1144447. PERFORM f1101 USING s1 s2 s3 s4.
          RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
        ENDDO.
        s1 = p0. s2 = 1153140. s3 = p0. s4 = p2. s5 = 1. PERFORM f772 USING s3 s4 s5 CHANGING s3. s4 = 1153126. PERFORM f69 USING s1 s2 s3 s4 CHANGING s1.
      ENDDO.
      l6 = s1. s2 = -4294967296. s1 = zcl_wasm_rt=>and64( iv_a = s1 iv_b = s2 ). s2 = 25769803776.
      IF s1 = s2. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
    ENDDO.
    s1 = l7. s2 = 12884901888.
    IF s1 = s2. s1 = 1. ELSE. s1 = 0. ENDIF.
    IF s1 <> 0. EXIT. ENDIF. " br_if 0
    s1 = p0. s2 = p1. s3 = 5. PERFORM f508 USING s1 s2 s3 CHANGING s1. p1 = s1. s2 = -4294967296. s1 = zcl_wasm_rt=>and64( iv_a = s1 iv_b = s2 ). s2 = 25769803776.
    IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
    IF s1 <> 0.
      s1 = p0. s2 = p1. s3 = l6. PERFORM f865 USING s1 s2 s3. s1 = p0. s2 = p1. s3 = 48. s4 = l6. s4 = zcl_wasm_rt=>wrap_i64( s4 ). s4 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s4 + 4 ). s5 = 2147483647.
      s4 = zcl_wasm_rt=>and64( iv_a = s4 iv_b = s5 ). s5 = 12884901888. s6 = 12884901888. s7 = 9984. PERFORM f37 USING s1 s2 s3 s4 s5 s6 s7 CHANGING s1.
    ELSE.
    ENDIF.
    s1 = p1. l6 = s1.
  ENDDO.
  s1 = l6. rv = s1.
ENDFORM.

