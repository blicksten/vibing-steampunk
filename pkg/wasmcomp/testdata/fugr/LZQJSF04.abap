FORM f320 USING p0 TYPE i p1 TYPE i p2 TYPE i CHANGING rv TYPE i.
  DATA l3 TYPE i. DATA l4 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i.
  DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i.
  DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i. DATA s36 TYPE i. DATA s37 TYPE i. DATA s38 TYPE i. DATA s39 TYPE i.
  DATA s40 TYPE i. DATA s41 TYPE i. DATA s42 TYPE i. DATA s43 TYPE i. DATA s44 TYPE i. DATA s45 TYPE i. DATA s46 TYPE i. DATA s47 TYPE i. DATA s48 TYPE i. DATA s49 TYPE i. DATA s50 TYPE i. DATA s51 TYPE i. DATA s52 TYPE i. DATA s53 TYPE i.
  DATA s54 TYPE i. DATA s55 TYPE i. DATA s56 TYPE i. DATA s57 TYPE i. DATA s58 TYPE i. DATA s59 TYPE i. DATA s60 TYPE i. DATA s61 TYPE i. DATA s62 TYPE i. DATA s63 TYPE i. DATA lv_br TYPE i. s0 = -1. l3 = s0.
  DO 1 TIMES. " block
    s0 = p1. s0 = mem_ld_i32( s0 + 76 ).
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          DO 1 TIMES. " block
            s0 = p2. s1 = 115. s0 = s0 - s1.
            CASE s0.
              WHEN 0. lv_br = 2. EXIT.
              WHEN 1. lv_br = 1. EXIT.
              WHEN 2. EXIT.
              WHEN OTHERS. lv_br = 3. EXIT.
            ENDCASE.
          ENDDO.
          s0 = p1. s0 = mem_ld_i32( s0 + 180 ). l3 = s0. s1 = 0.
          IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
          s0 = p1. s0 = mem_ld_i32( s0 + 124 ). l3 = s0. s1 = 65535.
          IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0.
            s0 = p0. s1 = 1138845. s2 = 0. PERFORM f969 USING s0 s1 s2 CHANGING s0. s0 = p1. s1 = -1. mem_st_i32( iv_addr = s0 + 180 iv_val = s1 ). s0 = -1. rv = s0. RETURN.
          ELSE.
          ENDIF.
          s0 = p1.
          DO 1 TIMES. " block
            s1 = l3. s2 = p1. s2 = mem_ld_i32( s2 + 120 ).
            IF s1 >= s2. s1 = 1. ELSE. s1 = 0. ENDIF.
            IF s1 <> 0.
              s1 = -1. s2 = p0. s3 = p1. s4 = 116. s3 = s3 + s4. s4 = 16. s5 = p1. s6 = 120. s5 = s5 + s6. s6 = l3. s7 = 1. s6 = s6 + s7. PERFORM f845 USING s2 s3 s4 s5 s6 CHANGING s2.
              IF s2 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
              s1 = p1. s1 = mem_ld_i32( s1 + 124 ). l3 = s1.
            ELSE.
            ENDIF.
            s1 = p1. s2 = l3. s3 = 1. s2 = s2 + s3. mem_st_i32( iv_addr = s1 + 124 iv_val = s2 ). s1 = p1. s1 = mem_ld_i32( s1 + 116 ). s2 = l3. s3 = 4. s2 = zcl_wasm_rt=>shl32( iv_val = s2 iv_shift = s3 ). s1 = s1 + s2. p0 = s1. s2 = 0.
            zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s2 iv_addr = s1 + 4 CHANGING cv_mem = mv_mem ). s1 = p0. s2 = -256. mem_st_i32( iv_addr = s1 + 12 iv_val = s2 ). s1 = p0. s2 = 117. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = p1.
            s1 = mem_ld_i32( s1 + 124 ). s2 = 1. s1 = s1 - s2.
          ENDDO.
          p2 = s1. mem_st_i32( iv_addr = s0 + 180 iv_val = s1 ). s0 = p2. rv = s0. RETURN.
        ENDDO.
        s0 = p1. s0 = mem_ld_i32( s0 + 176 ). l3 = s0. s1 = 0.
        IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
        s0 = p1. s0 = mem_ld_i32( s0 + 124 ). l3 = s0. s1 = 65535.
        IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = p0. s1 = 1138845. s2 = 0. PERFORM f969 USING s0 s1 s2 CHANGING s0. s0 = p1. s1 = -1. mem_st_i32( iv_addr = s0 + 176 iv_val = s1 ). s0 = -1. rv = s0. RETURN.
        ELSE.
        ENDIF.
        s0 = p1.
        DO 1 TIMES. " block
          s1 = l3. s2 = p1. s2 = mem_ld_i32( s2 + 120 ).
          IF s1 >= s2. s1 = 1. ELSE. s1 = 0. ENDIF.
          IF s1 <> 0.
            s1 = -1. s2 = p0. s3 = p1. s4 = 116. s3 = s3 + s4. s4 = 16. s5 = p1. s6 = 120. s5 = s5 + s6. s6 = l3. s7 = 1. s6 = s6 + s7. PERFORM f845 USING s2 s3 s4 s5 s6 CHANGING s2.
            IF s2 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
            s1 = p1. s1 = mem_ld_i32( s1 + 124 ). l3 = s1.
          ELSE.
          ENDIF.
          s1 = p1. s2 = l3. s3 = 1. s2 = s2 + s3. mem_st_i32( iv_addr = s1 + 124 iv_val = s2 ). s1 = p1. s1 = mem_ld_i32( s1 + 116 ). s2 = l3. s3 = 4. s2 = zcl_wasm_rt=>shl32( iv_val = s2 iv_shift = s3 ). s1 = s1 + s2. p0 = s1. s2 = 0.
          zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s2 iv_addr = s1 + 4 CHANGING cv_mem = mv_mem ). s1 = p0. s2 = -256. mem_st_i32( iv_addr = s1 + 12 iv_val = s2 ). s1 = p0. s2 = 116. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = p1.
          s1 = mem_ld_i32( s1 + 124 ). s2 = 1. s1 = s1 - s2.
        ENDDO.
        p2 = s1. mem_st_i32( iv_addr = s0 + 176 iv_val = s1 ). s0 = p2. rv = s0. RETURN.
      ENDDO.
      s0 = p1. s0 = mem_ld_i32( s0 + 172 ). l3 = s0. s1 = 0.
      IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p1. s0 = mem_ld_i32( s0 + 124 ). l3 = s0. s1 = 65535.
      IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = p0. s1 = 1138845. s2 = 0. PERFORM f969 USING s0 s1 s2 CHANGING s0. s0 = p1. s1 = -1. mem_st_i32( iv_addr = s0 + 172 iv_val = s1 ). s0 = -1. rv = s0. RETURN.
      ELSE.
      ENDIF.
      s0 = p1.
      DO 1 TIMES. " block
        s1 = l3. s2 = p1. s2 = mem_ld_i32( s2 + 120 ).
        IF s1 >= s2. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0.
          s1 = -1. s2 = p0. s3 = p1. s4 = 116. s3 = s3 + s4. s4 = 16. s5 = p1. s6 = 120. s5 = s5 + s6. s6 = l3. s7 = 1. s6 = s6 + s7. PERFORM f845 USING s2 s3 s4 s5 s6 CHANGING s2.
          IF s2 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          s1 = p1. s1 = mem_ld_i32( s1 + 124 ). l3 = s1.
        ELSE.
        ENDIF.
        s1 = p1. s2 = l3. s3 = 1. s2 = s2 + s3. mem_st_i32( iv_addr = s1 + 124 iv_val = s2 ). s1 = p1. s1 = mem_ld_i32( s1 + 116 ). s2 = l3. s3 = 4. s2 = zcl_wasm_rt=>shl32( iv_val = s2 iv_shift = s3 ). s1 = s1 + s2. p0 = s1. s2 = 0.
        zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s2 iv_addr = s1 + 4 CHANGING cv_mem = mv_mem ). s1 = p0. s2 = -256. mem_st_i32( iv_addr = s1 + 12 iv_val = s2 ). s1 = p0. s2 = 115. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = p1.
        s1 = mem_ld_i32( s1 + 124 ). s2 = 1. s1 = s1 - s2.
      ENDDO.
      p2 = s1. mem_st_i32( iv_addr = s0 + 172 iv_val = s1 ). s0 = p2. rv = s0. RETURN.
    ENDDO.
    s0 = p2. s1 = 8.
    IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p1. s0 = mem_ld_i32( s0 + 168 ). l3 = s0. s1 = 0.
    IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    DO 1 TIMES. " block
      s0 = p1. s0 = mem_ld_i32( s0 + 124 ). p2 = s0. s1 = 65535.
      IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = p0. s1 = 1138845. s2 = 0. PERFORM f969 USING s0 s1 s2 CHANGING s0. s0 = -1. l3 = s0. lv_br = 1. EXIT. " br 1
      ELSE.
      ENDIF.
      s0 = p1. s1 = 116. s0 = s0 + s1. l4 = s0. s0 = p2. s1 = p1. s1 = mem_ld_i32( s1 + 120 ).
      IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = -1. l3 = s0. s0 = p0. s1 = l4. s2 = 16. s3 = p1. s4 = 120. s3 = s3 + s4. s4 = p2. s5 = 1. s4 = s4 + s5. PERFORM f845 USING s0 s1 s2 s3 s4 CHANGING s0.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        s0 = p1. s0 = mem_ld_i32( s0 + 124 ). p2 = s0.
      ELSE.
      ENDIF.
      s0 = p1. s1 = p2. s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 + 124 iv_val = s1 ). s0 = p1. s0 = mem_ld_i32( s0 + 116 ). s1 = p2. s2 = 4. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. p0 = s0. s1 = 0.
      zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 4 CHANGING cv_mem = mv_mem ). s0 = p0. s1 = -256. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = p0. s1 = 8. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p1.
      s0 = mem_ld_i32( s0 + 124 ). p0 = s0. s1 = 1. s0 = s0 - s1. l3 = s0. s0 = p0. s1 = 0.
      IF s0 <= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p1. s0 = mem_ld_i32( s0 + 96 ).
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = l4. s0 = mem_ld_i32( s0 ). s1 = l3. s2 = 4. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. p0 = s0. s1 = p0. s1 = mem_ld_i32( s1 + 12 ). s2 = 2. s1 = zcl_wasm_rt=>or32( iv_a = s1 iv_b = s2 ).
      mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ).
    ENDDO.
    s0 = p1. s1 = l3. mem_st_i32( iv_addr = s0 + 168 iv_val = s1 ).
  ENDDO.
  s0 = l3. rv = s0.
ENDFORM.

FORM f321 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i p4 TYPE i CHANGING rv TYPE int8.
  DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE i. DATA l8 TYPE i. DATA l9 TYPE i. DATA l10 TYPE i. DATA l11 TYPE int8. DATA l12 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i.
  DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i.
  DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i.
  DATA s34 TYPE i. DATA s35 TYPE i. DATA s36 TYPE i. DATA s37 TYPE i. DATA s38 TYPE i. DATA s39 TYPE i. DATA s40 TYPE i. DATA s41 TYPE i. DATA s42 TYPE i. DATA s43 TYPE i. DATA s44 TYPE i. DATA s45 TYPE i. DATA s46 TYPE i. DATA s47 TYPE i.
  DATA s48 TYPE i. DATA s49 TYPE i. DATA s50 TYPE i. DATA s51 TYPE i. DATA s52 TYPE i. DATA s53 TYPE i. DATA s54 TYPE i. DATA s55 TYPE i. DATA s56 TYPE i. DATA s57 TYPE i. DATA s58 TYPE i. DATA s59 TYPE i. DATA s60 TYPE i. DATA s61 TYPE i.
  DATA s62 TYPE i. DATA s63 TYPE i. DATA s64 TYPE i. DATA s65 TYPE i. DATA s66 TYPE i. DATA s67 TYPE i. DATA s68 TYPE i. DATA s69 TYPE i. DATA s70 TYPE i. DATA s71 TYPE i. DATA s72 TYPE i. DATA s73 TYPE i. DATA s74 TYPE i. DATA s75 TYPE i.
  DATA s76 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 32. s0 = s0 - s1. l5 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    s0 = p1. s1 = -8589934592. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 8589934592.
    IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p0. s1 = 1142123. s2 = 0. PERFORM f970 USING s0 s1 s2 CHANGING s0. s0 = 25769803776. p1 = s0. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    DO 1 TIMES. " block
      s0 = p0. s1 = p1. s2 = 0. PERFORM f341 USING s0 s1 s2 CHANGING s0. p1 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 25769803776.
      IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). l11 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
      IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = l11. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l6 = s0. s1 = l6. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
      ELSE.
      ENDIF.
      DO 1 TIMES. " block
        s0 = p0. s1 = l5. s2 = 4. s1 = s1 + s2. s2 = l11. PERFORM f684 USING s0 s1 s2 CHANGING s0.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = l5. s0 = mem_ld_i32( s0 + 4 ). l7 = s0. s1 = p1. s1 = zcl_wasm_rt=>wrap_i64( s1 ). l9 = s1. s1 = mem_ld_i32( s1 + 4 ). s2 = 2147483647. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). l8 = s1.
        IF s0 <= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
        s0 = 32. l10 = s0. s0 = 12884901888. l11 = s0. s0 = 0. l6 = s0.
        DO 1 TIMES. " block
          s0 = p2. s1 = 2.
          IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = p3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 8 ). l12 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 12884901888.
          IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = p0. s1 = l12. s2 = 0. PERFORM f341 USING s0 s1 s2 CHANGING s0. l11 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 25769803776.
          IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          DO 1 TIMES. " block
            DO 1 TIMES. " block
              s0 = l11. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l6 = s0. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 4 ). l12 = s0. s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = 2147483647.
              s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
              CASE s0.
                WHEN 0. EXIT.
                WHEN 1. lv_br = 1. EXIT.
                WHEN OTHERS. lv_br = 2. EXIT.
              ENDCASE.
            ENDDO.
            s0 = p0. s1 = l11. PERFORM f1164 USING s0 s1. lv_br = 4. EXIT. " br 4
          ENDDO.
          DO 1 TIMES. " block
            s0 = l12. s1 = 2147483648. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 0.
            IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0.
              s0 = l6. s0 = mem_ld_i32_16u( s0 + 16 ). lv_br = 1. EXIT. " br 1
            ELSE.
            ENDIF.
            s1 = l6. s1 = mem_ld_i32_8u( s1 + 16 ).
          ENDDO.
          l10 = s1. s1 = 0. l6 = s1.
        ENDDO.
        s1 = l7. s2 = 1073741824.
        IF s1 >= s2. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0.
          s1 = p0. s2 = 1143351. s3 = 0. PERFORM f975 USING s1 s2 s3. lv_br = 1. EXIT. " br 1
        ELSE.
        ENDIF.
        s1 = l5. s2 = 0. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s2 iv_addr = s1 + 24 CHANGING cv_mem = mv_mem ). s1 = l5. s2 = 0. mem_st_i32( iv_addr = s1 + 16 iv_val = s2 ). s1 = l5. s2 = l7.
        mem_st_i32( iv_addr = s1 + 20 iv_val = s2 ). s1 = l5. s2 = p0. mem_st_i32( iv_addr = s1 + 8 iv_val = s2 ).
        DO 1 TIMES. " block
          s1 = p0. s1 = mem_ld_i32( s1 + 16 ). p2 = s1. s2 = 16. s1 = s1 + s2. s2 = l7. s3 = 17. s2 = s2 + s3. s3 = p2. s3 = mem_ld_i32( s3 ).
          DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
          s1 = dispatch_t7( iv_idx = lv_ci_func p0 = s1 p1 = s2 ). p2 = s1.
          IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
          IF s1 <> 0.
            s1 = p0. s1 = mem_ld_i32( s1 + 16 ). p2 = s1. s1 = mem_ld_i32_8u( s1 + 136 ).
            IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
            s1 = p2. s2 = 1. mem_st_i32_8( iv_addr = s1 + 136 iv_val = s2 ). s1 = p0. s2 = 1134898. s3 = 0. PERFORM f969 USING s1 s2 s3 CHANGING s1. s1 = p2. s2 = 0. mem_st_i32_8( iv_addr = s1 + 136 iv_val = s2 ). lv_br = 1. EXIT. " br 1
          ELSE.
          ENDIF.
          s1 = p2. s2 = 0. mem_st_i32( iv_addr = s1 + 12 iv_val = s2 ). s1 = p2. s2 = 1. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = p2. s2 = l7. s3 = 2147483647. s2 = zcl_wasm_rt=>and32( iv_a = s2 iv_b = s3 ).
          s2 = zcl_wasm_rt=>extend_u32( s2 ). zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s2 iv_addr = s1 + 4 CHANGING cv_mem = mv_mem ). s1 = l5. s2 = p2. mem_st_i32( iv_addr = s1 + 12 iv_val = s2 ).
          DO 1 TIMES. " block
            s1 = p4.
            IF s1 <> 0.
              s1 = l5. s2 = 8. s1 = s1 + s2. s2 = l9. s3 = 0. s4 = l8. PERFORM f271 USING s1 s2 s3 s4 CHANGING s1.
              IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
            ELSE.
            ENDIF.
            s1 = l7. s2 = l8. s1 = s1 - s2. p3 = s1.
            DO 1 TIMES. " block
              s1 = l6.
              IF s1 <> 0.
                s1 = p3. s2 = 0.
                IF s1 <= s2. s1 = 1. ELSE. s1 = 0. ENDIF.
                IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
                DO. " loop
                  s1 = l5. s2 = 8. s1 = s1 + s2. s2 = l6. s3 = 0. s4 = p3. s5 = l6. s5 = mem_ld_i32( s5 + 4 ). s6 = 2147483647. s5 = zcl_wasm_rt=>and32( iv_a = s5 iv_b = s6 ). p2 = s5. s6 = p2. s7 = p3.
                  IF s6 > s7. s6 = 1. ELSE. s6 = 0. ENDIF.
                  IF s6 <> 0. s4 = s4. ELSE. s4 = s5. ENDIF.
                  p2 = s4. PERFORM f271 USING s1 s2 s3 s4 CHANGING s1.
                  IF s1 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
                  s1 = p3. s2 = p2. s1 = s1 - s2. p3 = s1. s2 = 0.
                  IF s1 > s2. s1 = 1. ELSE. s1 = 0. ENDIF.
                  IF s1 <> 0. EXIT. ENDIF. " br_if 0
                ENDDO.
                lv_br = 1. EXIT. " br 1
              ELSE.
              ENDIF.
              s1 = l5. s2 = 8. s1 = s1 + s2. s2 = l10. s3 = p3. PERFORM f694 USING s1 s2 s3 CHANGING s1.
              IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
            ENDDO.
            s1 = p4.
            IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
            IF s1 <> 0.
              s1 = l5. s2 = 8. s1 = s1 + s2. s2 = l9. s3 = 0. s4 = l8. PERFORM f271 USING s1 s2 s3 s4 CHANGING s1.
              IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
            ELSE.
            ENDIF.
            s1 = p0. s2 = l11. PERFORM f1164 USING s1 s2. s1 = p0. s2 = p1. PERFORM f1164 USING s1 s2. s1 = l5. s2 = 8. s1 = s1 + s2. PERFORM f676 USING s1 CHANGING s1. p1 = s1. lv_br = 4. EXIT. " br 4
          ENDDO.
          s1 = l5. s1 = mem_ld_i32( s1 + 8 ). s1 = mem_ld_i32( s1 + 16 ). p2 = s1. s2 = 16. s1 = s1 + s2. s2 = l5. s2 = mem_ld_i32( s2 + 12 ). s3 = p2. s3 = mem_ld_i32( s3 + 4 ).
          DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
          dispatch_t6( iv_idx = lv_ci_func p0 = s1 p1 = s2 ).
        ENDDO.
        s1 = l11. s2 = 32. s1 = zcl_wasm_rt=>shr_u64( iv_val = s1 iv_shift = s2 ). s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = -11.
        IF zcl_wasm_rt=>lt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0. EXIT. ENDIF. " br_if 0
        s1 = l11. s1 = zcl_wasm_rt=>wrap_i64( s1 ). p2 = s1. s2 = p2. s2 = mem_ld_i32( s2 ). p2 = s2. s3 = 1. s2 = s2 - s3. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = p2. s2 = 1.
        IF s1 > s2. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0. EXIT. ENDIF. " br_if 0
        s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s2 = l11. PERFORM f453 USING s1 s2.
      ENDDO.
      s1 = p1. s2 = 32. s1 = zcl_wasm_rt=>shr_u64( iv_val = s1 iv_shift = s2 ). s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = -11.
      IF zcl_wasm_rt=>lt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. EXIT. ENDIF. " br_if 0
      s1 = p1. s1 = zcl_wasm_rt=>wrap_i64( s1 ). p2 = s1. s2 = p2. s2 = mem_ld_i32( s2 ). p2 = s2. s3 = 1. s2 = s2 - s3. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = p2. s2 = 1.
      IF s1 > s2. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. EXIT. ENDIF. " br_if 0
      s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s2 = p1. PERFORM f453 USING s1 s2.
    ENDDO.
    s1 = 25769803776. p1 = s1.
  ENDDO.
  s1 = l5. s2 = 32. s1 = s1 + s2. gv_g0 = s1. s1 = p1. rv = s1.
ENDFORM.

FORM f322 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i CHANGING rv TYPE int8.
  DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE int8. DATA l7 TYPE int8. DATA l8 TYPE int8. DATA l9 TYPE int8. DATA l10 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i.
  DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i.
  DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i.
  DATA s34 TYPE i. DATA s35 TYPE i. DATA s36 TYPE i. DATA s37 TYPE i. DATA s38 TYPE i. DATA s39 TYPE i. DATA s40 TYPE i. DATA s41 TYPE i. DATA s42 TYPE i. DATA s43 TYPE i. DATA s44 TYPE i. DATA s45 TYPE i. DATA s46 TYPE i. DATA s47 TYPE i.
  DATA s48 TYPE i. DATA s49 TYPE i. DATA s50 TYPE i. DATA s51 TYPE i. DATA s52 TYPE i. DATA s53 TYPE i. DATA s54 TYPE i. DATA s55 TYPE i. DATA s56 TYPE i. DATA s57 TYPE i. DATA s58 TYPE i. DATA s59 TYPE i. DATA s60 TYPE i. DATA s61 TYPE i.
  DATA s62 TYPE i. DATA s63 TYPE i. DATA s64 TYPE i. DATA s65 TYPE i. DATA s66 TYPE i. DATA s67 TYPE i. DATA s68 TYPE i. DATA s69 TYPE i. DATA s70 TYPE i. DATA s71 TYPE i. DATA s72 TYPE i. DATA s73 TYPE i. DATA s74 TYPE i. DATA s75 TYPE i.
  DATA s76 TYPE i. DATA s77 TYPE i. DATA s78 TYPE i. DATA s79 TYPE i. DATA s80 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. p2 = s0. gv_g0 = s0. s0 = p3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ).
  p1 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          s0 = p0. s0 = mem_ld_i32( s0 + 16 ). p3 = s0. s1 = 224. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). s1 = p0. s1 = mem_ld_i32( s1 + 40 ). s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 8 ). l6 = s1.
          s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = 0. s3 = l6. s4 = -4294967297.
          IF zcl_wasm_rt=>gt_u64( iv_a = s3 iv_b = s4 ) = abap_true. s3 = 1. ELSE. s3 = 0. ENDIF.
          IF s3 <> 0. s1 = s1. ELSE. s1 = s2. ENDIF.
          l4 = s1. s2 = -1640562687. s1 = s1 * s2. s2 = 1640562687. s1 = s1 - s2. l5 = s1. s2 = 32. s3 = p3. s4 = 212. s3 = s3 + s4. s3 = mem_ld_i32( s3 ). s2 = s2 - s3. s1 = zcl_wasm_rt=>shr_u32( iv_val = s1 iv_shift = s2 ). s2 = 2.
          s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s0 = mem_ld_i32( s0 ). p3 = s0.
          IF s0 <> 0.
            DO. " loop
              DO 1 TIMES. " block
                s0 = p3. s0 = mem_ld_i32( s0 + 20 ). s1 = l5.
                IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                IF s0 <> 0. EXIT. ENDIF. " br_if 0
                s0 = p3. s0 = mem_ld_i32( s0 + 44 ). s1 = l4.
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
          s0 = p0. s1 = l4. s2 = 2. PERFORM f436 USING s0 s1 s2 CHANGING s0. p3 = s0.
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          lv_br = 2. EXIT. " br 2
        ENDDO.
        s0 = p3. s1 = p3. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
      ENDDO.
      s0 = p0. s1 = p3. s2 = 1. PERFORM f408 USING s0 s1 s2 CHANGING s0. l7 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 25769803776.
      IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      DO 1 TIMES. " block
        s0 = p0. s1 = p1. s2 = 0. PERFORM f236 USING s0 s1 s2 CHANGING s0. l6 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 25769803776.
        IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        DO 1 TIMES. " block
          s0 = p0. s1 = l6. s2 = 108. s3 = l6. s4 = 0. PERFORM f192 USING s0 s1 s2 s3 s4 CHANGING s0. l8 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 25769803776.
          IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = p0. s1 = l6. s2 = l8. s3 = p2. s4 = 12. s3 = s3 + s4. PERFORM f681 USING s0 s1 s2 s3 CHANGING s0. p1 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 25769803776.
          IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          DO. " loop
            s0 = p2. s0 = mem_ld_i32( s0 + 12 ).
            IF s0 <> 0.
              DO 1 TIMES. " block
                s0 = p1. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
                IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
                IF s0 <> 0. EXIT. ENDIF. " br_if 0
                s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p3 = s0. s1 = p3. s1 = mem_ld_i32( s1 ). p3 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p3. s1 = 1.
                IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                IF s0 <> 0. EXIT. ENDIF. " br_if 0
                s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = p1. PERFORM f453 USING s0 s1.
              ENDDO.
              s0 = p0. s1 = l8. PERFORM f1164 USING s0 s1. s0 = p0. s1 = l6. PERFORM f1164 USING s0 s1. lv_br = 5. EXIT. " br 5
            ELSE.
            ENDIF.
            DO 1 TIMES. " block
              DO 1 TIMES. " block
                s0 = p1. s1 = -4294967297.
                IF zcl_wasm_rt=>le_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
                IF s0 <> 0.
                  s0 = p0. s1 = 1137529. s2 = 0. PERFORM f970 USING s0 s1 s2 CHANGING s0. lv_br = 1. EXIT. " br 1
                ELSE.
                ENDIF.
                s0 = p0. s1 = p1. s2 = 0. PERFORM f283 USING s0 s1 s2 CHANGING s0. l9 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 25769803776.
                IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                IF s0 <> 0. EXIT. ENDIF. " br_if 0
                s0 = p0. s1 = p1. s2 = 1. PERFORM f283 USING s0 s1 s2 CHANGING s0. l10 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 25769803776.
                IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                IF s0 <> 0.
                  s0 = p0. s1 = l9. PERFORM f1164 USING s0 s1. lv_br = 1. EXIT. " br 1
                ELSE.
                ENDIF.
                s0 = p0. s1 = l7. s2 = l9. s3 = l10. s4 = 16391. PERFORM f770 USING s0 s1 s2 s3 s4 CHANGING s0. s1 = 0.
                IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
              ENDDO.
              s0 = p1. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
              IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
              s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p3 = s0. s1 = p3. s1 = mem_ld_i32( s1 ). p3 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p3. s1 = 1.
              IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
              s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = p1. PERFORM f453 USING s0 s1. lv_br = 2. EXIT. " br 2
            ENDDO.
            s0 = p0. s1 = p1. PERFORM f1164 USING s0 s1. s0 = p0. s1 = l6. s2 = l8. s3 = p2. s4 = 12. s3 = s3 + s4. PERFORM f681 USING s0 s1 s2 s3 CHANGING s0. p1 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ).
            s1 = 25769803776.
            IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. EXIT. ENDIF. " br_if 0
          ENDDO.
        ENDDO.
        s0 = l6. s1 = -4294967296.
        IF zcl_wasm_rt=>ge_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = p0. s1 = l6. s2 = 1. PERFORM f605 USING s0 s1 s2 CHANGING s0.
        ELSE.
        ENDIF.
        s0 = l8. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
        IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = l8. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p3 = s0. s1 = p3. s1 = mem_ld_i32( s1 ). p3 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p3. s1 = 1.
        IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = l8. PERFORM f453 USING s0 s1.
      ENDDO.
      DO 1 TIMES. " block
        s0 = l6. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
        IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = l6. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p3 = s0. s1 = p3. s1 = mem_ld_i32( s1 ). p3 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p3. s1 = 1.
        IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = l6. PERFORM f453 USING s0 s1.
      ENDDO.
      s0 = l7. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
      IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = l7. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p3 = s0. s1 = p3. s1 = mem_ld_i32( s1 ). p3 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p3. s1 = 1.
      IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = l7. PERFORM f453 USING s0 s1.
    ENDDO.
    s0 = 25769803776. l7 = s0.
  ENDDO.
  s0 = p2. s1 = 16. s0 = s0 + s1. gv_g0 = s0. s0 = l7. rv = s0.
ENDFORM.

FORM f323 USING p0 TYPE i p1 TYPE i p2 TYPE i CHANGING rv TYPE i.
  DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE i. DATA l8 TYPE i. DATA l9 TYPE i. DATA l10 TYPE i. DATA l11 TYPE i. DATA l12 TYPE i. DATA l13 TYPE i. DATA l14 TYPE i. DATA l15 TYPE i. DATA l16 TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i.
  DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i.
  DATA lv_br TYPE i. s0 = gv_g0. s1 = 256. s0 = s0 - s1. l7 = s0. gv_g0 = s0. s0 = l7. s1 = 0. mem_st_i32_8( iv_addr = s0 iv_val = s1 ). s0 = p0. s1 = 32. s0 = s0 + s1. l8 = s0. s0 = p0. s1 = 44. s0 = s0 + s1. s0 = mem_ld_i32( s0 ).
  l10 = s0. s0 = p0. s1 = 36. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). l11 = s0. s0 = p0. s0 = mem_ld_i32( s0 + 64 ). l12 = s0. s0 = p0. s0 = mem_ld_i32( s0 + 20 ). l13 = s0. s0 = p0. s0 = mem_ld_i32( s0 + 16 ). l14 = s0. s0 = p0.
  s0 = mem_ld_i32( s0 + 12 ). l15 = s0. s0 = p0. s0 = mem_ld_i32( s0 + 4 ). l16 = s0. s0 = 1. l4 = s0.
  DO 1 TIMES. " block
    DO. " loop
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
                          DO 1 TIMES. " block
                            DO 1 TIMES. " block
                              DO 1 TIMES. " block
                                DO 1 TIMES. " block
                                  DO 1 TIMES. " block
                                    s0 = l8. s0 = mem_ld_i32( s0 ). l3 = s0. s1 = 40. s0 = s0 - s1.
                                    CASE s0.
                                      WHEN 0. lv_br = 1. EXIT.
                                      WHEN 1. lv_br = 2. EXIT.
                                      WHEN 2. lv_br = 12. EXIT.
                                      WHEN 3. lv_br = 12. EXIT.
                                      WHEN 4. lv_br = 12. EXIT.
                                      WHEN 5. lv_br = 12. EXIT.
                                      WHEN 6. lv_br = 12. EXIT.
                                      WHEN 7. lv_br = 8. EXIT.
                                      WHEN 8. lv_br = 12. EXIT.
                                      WHEN 9. lv_br = 12. EXIT.
                                      WHEN 10. lv_br = 12. EXIT.
                                      WHEN 11. lv_br = 12. EXIT.
                                      WHEN 12. lv_br = 12. EXIT.
                                      WHEN 13. lv_br = 12. EXIT.
                                      WHEN 14. lv_br = 12. EXIT.
                                      WHEN 15. lv_br = 12. EXIT.
                                      WHEN 16. lv_br = 12. EXIT.
                                      WHEN 17. lv_br = 12. EXIT.
                                      WHEN 18. lv_br = 12. EXIT.
                                      WHEN 19. lv_br = 13. EXIT.
                                      WHEN 20. lv_br = 12. EXIT.
                                      WHEN 21. lv_br = 7. EXIT.
                                      WHEN 22. lv_br = 12. EXIT.
                                      WHEN 23. lv_br = 12. EXIT.
                                      WHEN 24. lv_br = 12. EXIT.
                                      WHEN 25. lv_br = 12. EXIT.
                                      WHEN 26. lv_br = 12. EXIT.
                                      WHEN 27. lv_br = 12. EXIT.
                                      WHEN 28. lv_br = 12. EXIT.
                                      WHEN 29. lv_br = 12. EXIT.
                                      WHEN 30. lv_br = 12. EXIT.
                                      WHEN 31. lv_br = 12. EXIT.
                                      WHEN 32. lv_br = 12. EXIT.
                                      WHEN 33. lv_br = 12. EXIT.
                                      WHEN 34. lv_br = 12. EXIT.
                                      WHEN 35. lv_br = 12. EXIT.
                                      WHEN 36. lv_br = 12. EXIT.
                                      WHEN 37. lv_br = 12. EXIT.
                                      WHEN 38. lv_br = 12. EXIT.
                                      WHEN 39. lv_br = 12. EXIT.
                                      WHEN 40. lv_br = 12. EXIT.
                                      WHEN 41. lv_br = 12. EXIT.
                                      WHEN 42. lv_br = 12. EXIT.
                                      WHEN 43. lv_br = 12. EXIT.
                                      WHEN 44. lv_br = 12. EXIT.
                                      WHEN 45. lv_br = 12. EXIT.
                                      WHEN 46. lv_br = 12. EXIT.
                                      WHEN 47. lv_br = 12. EXIT.
                                      WHEN 48. lv_br = 12. EXIT.
                                      WHEN 49. lv_br = 12. EXIT.
                                      WHEN 50. lv_br = 12. EXIT.
                                      WHEN 51. lv_br = 1. EXIT.
                                      WHEN 52. lv_br = 12. EXIT.
                                      WHEN 53. lv_br = 3. EXIT.
                                      WHEN 54. lv_br = 12. EXIT.
                                      WHEN 55. lv_br = 12. EXIT.
                                      WHEN 56. lv_br = 12. EXIT.
                                      WHEN 57. lv_br = 12. EXIT.
                                      WHEN 58. lv_br = 12. EXIT.
                                      WHEN 59. lv_br = 12. EXIT.
                                      WHEN 60. lv_br = 12. EXIT.
                                      WHEN 61. lv_br = 12. EXIT.
                                      WHEN 62. lv_br = 12. EXIT.
                                      WHEN 63. lv_br = 12. EXIT.
                                      WHEN 64. lv_br = 12. EXIT.
                                      WHEN 65. lv_br = 12. EXIT.
                                      WHEN 66. lv_br = 12. EXIT.
                                      WHEN 67. lv_br = 12. EXIT.
                                      WHEN 68. lv_br = 12. EXIT.
                                      WHEN 69. lv_br = 12. EXIT.
                                      WHEN 70. lv_br = 12. EXIT.
                                      WHEN 71. lv_br = 12. EXIT.
                                      WHEN 72. lv_br = 12. EXIT.
                                      WHEN 73. lv_br = 12. EXIT.
                                      WHEN 74. lv_br = 12. EXIT.
                                      WHEN 75. lv_br = 12. EXIT.
                                      WHEN 76. lv_br = 12. EXIT.
                                      WHEN 77. lv_br = 12. EXIT.
                                      WHEN 78. lv_br = 12. EXIT.
                                      WHEN 79. lv_br = 12. EXIT.
                                      WHEN 80. lv_br = 12. EXIT.
                                      WHEN 81. lv_br = 12. EXIT.
                                      WHEN 82. lv_br = 12. EXIT.
                                      WHEN 83. lv_br = 1. EXIT.
                                      WHEN 84. lv_br = 12. EXIT.
                                      WHEN 85. lv_br = 4. EXIT.
                                      WHEN OTHERS. EXIT.
                                    ENDCASE.
                                  ENDDO.
                                  s0 = -2. l9 = s0.
                                  DO 1 TIMES. " block
                                    s0 = l3. s1 = 126. s0 = s0 + s1.
                                    CASE s0.
                                      WHEN 0. lv_br = 5. EXIT.
                                      WHEN 1. lv_br = 12. EXIT.
                                      WHEN 2. lv_br = 12. EXIT.
                                      WHEN 3. lv_br = 12. EXIT.
                                      WHEN 4. lv_br = 9. EXIT.
                                      WHEN OTHERS. EXIT.
                                    ENDCASE.
                                  ENDDO.
                                  s0 = l3. s1 = 89. s0 = s0 + s1.
                                  CASE s0.
                                    WHEN 0. lv_br = 5. EXIT.
                                    WHEN 1. lv_br = 11. EXIT.
                                    WHEN 2. lv_br = 11. EXIT.
                                    WHEN 3. lv_br = 11. EXIT.
                                    WHEN 4. lv_br = 11. EXIT.
                                    WHEN 5. lv_br = 15. EXIT.
                                    WHEN OTHERS. lv_br = 11. EXIT.
                                  ENDCASE.
                                ENDDO.
                                s0 = l4. s1 = 255.
                                IF zcl_wasm_rt=>le_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
                                IF s0 <> 0. lv_br = 8. EXIT. ENDIF. " br_if 8
                                s0 = -84. l3 = s0. lv_br = 14. EXIT. " br 14
                              ENDDO.
                              s0 = l7. s1 = l4. s2 = 1. s1 = s1 - s2. l4 = s1. s0 = s0 + s1. s0 = mem_ld_i32_8u( s0 ). s1 = 40.
                              IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                              IF s0 <> 0. lv_br = 8. EXIT. ENDIF. " br_if 8
                              s0 = -84. l3 = s0. lv_br = 13. EXIT. " br 13
                            ENDDO.
                            s0 = l7. s1 = l4. s2 = 1. s1 = s1 - s2. l4 = s1. s0 = s0 + s1. s0 = mem_ld_i32_8u( s0 ). s1 = 91.
                            IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                            IF s0 <> 0. lv_br = 7. EXIT. ENDIF. " br_if 7
                            s0 = -84. l3 = s0. lv_br = 12. EXIT. " br 12
                          ENDDO.
                          s0 = 125. l5 = s0. s0 = l7. s1 = l4. s2 = 1. s1 = s1 - s2. l4 = s1. s0 = s0 + s1. s0 = mem_ld_i32_8u( s0 ). l9 = s0. s1 = 123.
                          IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                          IF s0 <> 0. lv_br = 9. EXIT. ENDIF. " br_if 9
                          s0 = -84. l3 = s0. s0 = l9. s1 = 96.
                          IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                          IF s0 <> 0. lv_br = 11. EXIT. ENDIF. " br_if 11
                          s0 = p0. s1 = l8. PERFORM f498 USING s0 s1. s0 = p0. s1 = 0. mem_st_i32( iv_addr = s0 + 64 iv_val = s1 ). s0 = p0. s1 = p0. s1 = mem_ld_i32( s1 + 36 ). mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = p0. s1 = p0.
                          s1 = mem_ld_i32( s1 + 72 ). PERFORM f293 USING s0 s1 CHANGING s0.
                          IF s0 <> 0. lv_br = 11. EXIT. ENDIF. " br_if 11
                        ENDDO.
                        s0 = p0. s0 = mem_ld_i32( s0 + 56 ). s1 = 96.
                        IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                        IF s0 <> 0. lv_br = 5. EXIT. ENDIF. " br_if 5
                        s0 = 96. l3 = s0. s0 = l4. s1 = 255.
                        IF zcl_wasm_rt=>le_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
                        IF s0 <> 0. lv_br = 4. EXIT. ENDIF. " br_if 4
                        s0 = -84. l3 = s0. lv_br = 10. EXIT. " br 10
                      ENDDO.
                      s0 = l6. s1 = 2. s0 = zcl_wasm_rt=>or32( iv_a = s0 iv_b = s1 ). s1 = l6. s2 = l4. s3 = 2.
                      IF s2 = s3. s2 = 1. ELSE. s2 = 0. ENDIF.
                      IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
                      l6 = s0. s0 = -89. l5 = s0. lv_br = 7. EXIT. " br 7
                    ENDDO.
                    s0 = l6. s1 = 4. s0 = zcl_wasm_rt=>or32( iv_a = s0 iv_b = s1 ). l6 = s0. s0 = 61. l5 = s0. lv_br = 6. EXIT. " br 6
                  ENDDO.
                  s0 = -1. l9 = s0.
                ENDDO.
                DO 1 TIMES. " block
                  s0 = l5. s1 = 40.
                  IF s0 <= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                  IF s0 <> 0.
                    s0 = l5. s1 = 128. s0 = s0 + s1.
                    CASE s0.
                      WHEN 0. lv_br = 3. EXIT.
                      WHEN 1. lv_br = 3. EXIT.
                      WHEN 2. lv_br = 1. EXIT.
                      WHEN 3. lv_br = 3. EXIT.
                      WHEN 4. lv_br = 3. EXIT.
                      WHEN 5. lv_br = 1. EXIT.
                      WHEN 6. lv_br = 1. EXIT.
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
                      WHEN 21. lv_br = 3. EXIT.
                      WHEN 22. lv_br = 3. EXIT.
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
                      WHEN 45. lv_br = 3. EXIT.
                      WHEN 46. lv_br = 3. EXIT.
                      WHEN 47. lv_br = 3. EXIT.
                      WHEN 48. lv_br = 1. EXIT.
                      WHEN 49. lv_br = 1. EXIT.
                      WHEN 50. lv_br = 1. EXIT.
                      WHEN 51. lv_br = 1. EXIT.
                      WHEN 52. lv_br = 3. EXIT.
                      WHEN OTHERS. lv_br = 1. EXIT.
                    ENDCASE.
                  ELSE.
                  ENDIF.
                  s0 = l5. s1 = 41.
                  IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                  IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
                  s0 = l5. s1 = 93.
                  IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                  IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
                  s0 = l5. s1 = 125.
                  IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                  IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
                ENDDO.
                s0 = p0. s1 = p0. s1 = mem_ld_i32( s1 + 72 ). s2 = l9. s1 = s1 + s2. mem_st_i32( iv_addr = s0 + 72 iv_val = s1 ). s0 = p0. PERFORM f164 USING s0 CHANGING s0.
                IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
                IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
                s0 = -84. l3 = s0. lv_br = 6. EXIT. " br 6
              ENDDO.
              s0 = l4. s1 = l7. s0 = s0 + s1. s1 = l3. mem_st_i32_8( iv_addr = s0 iv_val = s1 ). s0 = l4. s1 = 1. s0 = s0 + s1. l4 = s0.
            ENDDO.
            s0 = l8. s0 = mem_ld_i32( s0 ). l3 = s0.
          ENDDO.
          s0 = l3. s1 = -125.
          IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0.
            s0 = l3. l5 = s0. lv_br = 2. EXIT. " br 2
          ELSE.
          ENDIF.
          s0 = -125. l5 = s0. s0 = p0. s0 = mem_ld_i32( s0 + 48 ). l3 = s0. s1 = 45.
          IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0.
            s0 = l3. s1 = 69.
            IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
            s0 = p0. s0 = mem_ld_i32( s0 + 52 ).
            IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
            s0 = -37. l5 = s0. lv_br = 2. EXIT. " br 2
          ELSE.
          ENDIF.
          s0 = p0. s0 = mem_ld_i32( s0 + 52 ).
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          s0 = -37. l5 = s0. lv_br = 1. EXIT. " br 1
        ENDDO.
        s0 = l6. s1 = l4. s2 = 2.
        IF s1 = s2. s1 = 1. ELSE. s1 = 0. ENDIF.
        s0 = zcl_wasm_rt=>or32( iv_a = s0 iv_b = s1 ). l6 = s0. s0 = 59. l5 = s0.
      ENDDO.
      s0 = p0. PERFORM f41 USING s0 CHANGING s0.
      IF s0 <> 0.
        s0 = -84. l3 = s0. lv_br = 2. EXIT. " br 2
      ELSE.
      ENDIF.
      s0 = l4. s1 = 1.
      IF zcl_wasm_rt=>gt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
    ENDDO.
    DO 1 TIMES. " block
      s0 = l8. s0 = mem_ld_i32( s0 ). l3 = s0. s1 = -125.
      IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p0. s0 = mem_ld_i32( s0 + 48 ). s1 = 69.
      IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p0. s0 = mem_ld_i32( s0 + 52 ).
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = -37. l3 = s0.
    ENDDO.
    s0 = p2.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = 10. s1 = l3. s2 = p0. s2 = mem_ld_i32( s2 + 4 ). s3 = p0. s3 = mem_ld_i32( s3 + 36 ).
    IF s2 <> s3. s2 = 1. ELSE. s2 = 0. ENDIF.
    IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
    l3 = s0.
  ENDDO.
  s0 = p1.
  IF s0 <> 0.
    s0 = p1. s1 = l6. mem_st_i32( iv_addr = s0 iv_val = s1 ).
  ELSE.
  ENDIF.
  s0 = p0. s1 = l10. mem_st_i32( iv_addr = s0 + 72 iv_val = s1 ). s0 = p0. s1 = l13. mem_st_i32( iv_addr = s0 + 20 iv_val = s1 ). s0 = p0. s1 = l14. mem_st_i32( iv_addr = s0 + 16 iv_val = s1 ). s0 = p0. s1 = l15.
  mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = p0. s1 = l11. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = p0. s1 = l16. mem_st_i32( iv_addr = s0 + 36 iv_val = s1 ). s0 = p0. s1 = l12. mem_st_i32( iv_addr = s0 + 64 iv_val = s1 ).
  s0 = p0. PERFORM f41 USING s0 CHANGING s0. p0 = s0. s0 = l7. s1 = 256. s0 = s0 + s1. gv_g0 = s0. s0 = -1. s1 = l3. s2 = p0.
  IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
  rv = s0.
ENDFORM.

FORM f324 USING p0 TYPE i p1 TYPE i p2 TYPE i.
  DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE i. DATA l8 TYPE i. DATA l9 TYPE int8. DATA l10 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i.
  DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    s0 = p2.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p2. s1 = 7. s0 = s0 - s1. l3 = s0. s1 = 0. s2 = p2. s3 = l3.
    IF zcl_wasm_rt=>ge_u32( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
    IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
    l7 = s0. s0 = p1. s1 = 3. s0 = s0 + s1. s1 = -4. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = p1. s0 = s0 - s1. l8 = s0. s0 = 0. l3 = s0.
    DO. " loop
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          DO 1 TIMES. " block
            s0 = p1. s1 = l3. s0 = s0 + s1. s0 = mem_ld_i32_8u( s0 ). l5 = s0. s0 = zcl_wasm_rt=>extend8s_i32( s0 ). l6 = s0. s1 = 0.
            IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0.
              s0 = l8. s1 = l3. s0 = s0 - s1. s1 = 3. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
              IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
              s0 = l3. s1 = l7.
              IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
              DO. " loop
                s0 = p1. s1 = l3. s0 = s0 + s1. l4 = s0. s1 = 4. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). s1 = l4. s1 = mem_ld_i32( s1 ). s0 = zcl_wasm_rt=>or32( iv_a = s0 iv_b = s1 ). s1 = -2139062144.
                s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
                IF s0 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
                s0 = l3. s1 = 8. s0 = s0 + s1. l3 = s0. s1 = l7.
                IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
                IF s0 <> 0. EXIT. ENDIF. " br_if 0
              ENDDO.
              lv_br = 2. EXIT. " br 2
            ELSE.
            ENDIF.
            s0 = 1099511627776. l10 = s0. s0 = 4294967296. l9 = s0.
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
                                DO 1 TIMES. " block
                                  DO 1 TIMES. " block
                                    s0 = l5. s1 = 1050844. s0 = s0 + s1. s0 = mem_ld_i32_8u( s0 ). s1 = 2. s0 = s0 - s1.
                                    CASE s0.
                                      WHEN 0. EXIT.
                                      WHEN 1. lv_br = 1. EXIT.
                                      WHEN 2. lv_br = 2. EXIT.
                                      WHEN OTHERS. lv_br = 10. EXIT.
                                    ENDCASE.
                                  ENDDO.
                                  s0 = l3. s1 = 1. s0 = s0 + s1. l4 = s0. s1 = p2.
                                  IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
                                  IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
                                  s0 = 0. l10 = s0. s0 = 0. l9 = s0. lv_br = 9. EXIT. " br 9
                                ENDDO.
                                s0 = 0. l10 = s0. s0 = l3. s1 = 1. s0 = s0 + s1. l4 = s0. s1 = p2.
                                IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
                                IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
                                s0 = 0. l9 = s0. lv_br = 8. EXIT. " br 8
                              ENDDO.
                              s0 = 0. l10 = s0. s0 = l3. s1 = 1. s0 = s0 + s1. l4 = s0. s1 = p2.
                              IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
                              IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
                              s0 = 0. l9 = s0. lv_br = 7. EXIT. " br 7
                            ENDDO.
                            s0 = p1. s1 = l4. s0 = s0 + s1. s0 = mem_ld_i32_8s( s0 ). s1 = -65.
                            IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                            IF s0 <> 0. lv_br = 6. EXIT. ENDIF. " br_if 6
                            lv_br = 7. EXIT. " br 7
                          ENDDO.
                          s0 = p1. s1 = l4. s0 = s0 + s1. s0 = mem_ld_i32_8s( s0 ). l4 = s0.
                          DO 1 TIMES. " block
                            DO 1 TIMES. " block
                              DO 1 TIMES. " block
                                s0 = l5. s1 = 224. s0 = s0 - s1.
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
                                  WHEN 13. lv_br = 1. EXIT.
                                  WHEN OTHERS. lv_br = 2. EXIT.
                                ENDCASE.
                              ENDDO.
                              s0 = l4. s1 = -32. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = -96.
                              IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                              IF s0 <> 0. lv_br = 4. EXIT. ENDIF. " br_if 4
                              lv_br = 3. EXIT. " br 3
                            ENDDO.
                            s0 = l4. s1 = -97.
                            IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                            IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
                            lv_br = 3. EXIT. " br 3
                          ENDDO.
                          s0 = l6. s1 = 31. s0 = s0 + s1. s1 = 255. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = 12.
                          IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
                          IF s0 <> 0.
                            s0 = l6. s1 = -2. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = -18.
                            IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                            IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
                            s0 = l4. s1 = -64.
                            IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                            IF s0 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
                            lv_br = 2. EXIT. " br 2
                          ELSE.
                          ENDIF.
                          s0 = l4. s1 = -64.
                          IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                          IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
                          lv_br = 1. EXIT. " br 1
                        ENDDO.
                        s0 = p1. s1 = l4. s0 = s0 + s1. s0 = mem_ld_i32_8s( s0 ). l4 = s0.
                        DO 1 TIMES. " block
                          DO 1 TIMES. " block
                            DO 1 TIMES. " block
                              DO 1 TIMES. " block
                                s0 = l5. s1 = 240. s0 = s0 - s1.
                                CASE s0.
                                  WHEN 0. lv_br = 1. EXIT.
                                  WHEN 1. EXIT.
                                  WHEN 2. EXIT.
                                  WHEN 3. EXIT.
                                  WHEN 4. lv_br = 2. EXIT.
                                  WHEN OTHERS. EXIT.
                                ENDCASE.
                              ENDDO.
                              s0 = l6. s1 = 15. s0 = s0 + s1. s1 = 255. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = 2.
                              IF zcl_wasm_rt=>gt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
                              IF s0 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
                              s0 = l4. s1 = -64.
                              IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                              IF s0 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
                              lv_br = 2. EXIT. " br 2
                            ENDDO.
                            s0 = l4. s1 = 112. s0 = s0 + s1. s1 = 255. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = 48.
                            IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
                            IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
                            lv_br = 1. EXIT. " br 1
                          ENDDO.
                          s0 = l4. s1 = -113.
                          IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
                        ENDDO.
                        s0 = p2. s1 = l3. s2 = 2. s1 = s1 + s2. l4 = s1.
                        IF zcl_wasm_rt=>le_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
                        IF s0 <> 0.
                          s0 = 0. l9 = s0. lv_br = 5. EXIT. " br 5
                        ELSE.
                        ENDIF.
                        s0 = p1. s1 = l4. s0 = s0 + s1. s0 = mem_ld_i32_8s( s0 ). s1 = -65.
                        IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                        IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
                        s0 = 0. l9 = s0. s0 = l3. s1 = 3. s0 = s0 + s1. l4 = s0. s1 = p2.
                        IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
                        IF s0 <> 0. lv_br = 4. EXIT. ENDIF. " br_if 4
                        s0 = p1. s1 = l4. s0 = s0 + s1. s0 = mem_ld_i32_8s( s0 ). s1 = -65.
                        IF s0 <= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                        IF s0 <> 0. lv_br = 5. EXIT. ENDIF. " br_if 5
                        s0 = 3298534883328. lv_br = 3. EXIT. " br 3
                      ENDDO.
                      s1 = 1099511627776. lv_br = 2. EXIT. " br 2
                    ENDDO.
                    s2 = 0. l9 = s2. s2 = l3. s3 = 2. s2 = s2 + s3. l4 = s2. s3 = p2.
                    IF zcl_wasm_rt=>ge_u32( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
                    IF s2 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
                    s2 = p1. s3 = l4. s2 = s2 + s3. s2 = mem_ld_i32_8s( s2 ). s3 = -65.
                    IF s2 <= s3. s2 = 1. ELSE. s2 = 0. ENDIF.
                    IF s2 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
                  ENDDO.
                  s2 = 2199023255552.
                ENDDO.
                l10 = s2. s2 = 4294967296. l9 = s2.
              ENDDO.
              s2 = p0. s3 = l10. s4 = l3. s4 = zcl_wasm_rt=>extend_u32( s4 ). s3 = zcl_wasm_rt=>or64( iv_a = s3 iv_b = s4 ). s4 = l9. s3 = zcl_wasm_rt=>or64( iv_a = s3 iv_b = s4 ).
              zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s3 iv_addr = s2 + 4 CHANGING cv_mem = mv_mem ). s2 = p0. s3 = 1. mem_st_i32( iv_addr = s2 iv_val = s3 ).
              RETURN.
            ENDDO.
            s2 = l4. s3 = 1. s2 = s2 + s3. l3 = s2. lv_br = 2. EXIT. " br 2
          ENDDO.
          s2 = l3. s3 = 1. s2 = s2 + s3. l3 = s2. lv_br = 1. EXIT. " br 1
        ENDDO.
        s2 = p2. s3 = l3.
        IF zcl_wasm_rt=>le_u32( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
        IF s2 <> 0. EXIT. ENDIF. " br_if 0
        DO. " loop
          s2 = p1. s3 = l3. s2 = s2 + s3. s2 = mem_ld_i32_8s( s2 ). s3 = 0.
          IF s2 < s3. s2 = 1. ELSE. s2 = 0. ENDIF.
          IF s2 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          s2 = p2. s3 = l3. s4 = 1. s3 = s3 + s4. l3 = s3.
          IF s2 <> s3. s2 = 1. ELSE. s2 = 0. ENDIF.
          IF s2 <> 0. EXIT. ENDIF. " br_if 0
        ENDDO.
        lv_br = 2. EXIT. " br 2
      ENDDO.
      s2 = p2. s3 = l3.
      IF zcl_wasm_rt=>gt_u32( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
      IF s2 <> 0. EXIT. ENDIF. " br_if 0
    ENDDO.
  ENDDO.
  s2 = p0. s3 = p2. mem_st_i32( iv_addr = s2 + 8 iv_val = s3 ). s2 = p0. s3 = p1. mem_st_i32( iv_addr = s2 + 4 iv_val = s3 ). s2 = p0. s3 = 0. mem_st_i32( iv_addr = s2 iv_val = s3 ).
ENDFORM.

FORM f325 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE i. DATA l8 TYPE i. DATA l9 TYPE i. DATA l10 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i.
  DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = -1. l7 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      s0 = p0. s1 = 18. s0 = s0 + s1. s0 = mem_ld_i32_8u( s0 ). s1 = 4. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p0. s1 = 92. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). l3 = s0.
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = l3. s1 = p0. s2 = 84. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). s0 = s0 + s1. l5 = s0. s0 = p0. s1 = 72. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). l8 = s0. l2 = s0.
      DO. " loop
        s0 = l2. l7 = s0. s0 = l3. s1 = l5.
        IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        s0 = l3. s1 = 1. s0 = s0 + s1. p0 = s0.
        DO 1 TIMES. " block
          DO 1 TIMES. " block
            DO 1 TIMES. " block
              s0 = l3. s0 = mem_ld_i32_8u( s0 ). l2 = s0.
              IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0.
                s0 = p0. s1 = l5.
                IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
                IF s0 <> 0. lv_br = 6. EXIT. ENDIF. " br_if 6
                s0 = l3. s1 = 2. s0 = s0 + s1. l2 = s0. s0 = l3. s0 = mem_ld_i32_8s( s0 + 1 ). l4 = s0. s1 = 127. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). l6 = s0. s0 = l4. s1 = 0.
                IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
                lv_br = 2. EXIT. " br 2
              ELSE.
              ENDIF.
              s0 = p0. l3 = s0. s0 = l7. s1 = l2. s2 = 1. s1 = s1 - s2. p0 = s1. s2 = p0. s3 = 255. s2 = zcl_wasm_rt=>and32( iv_a = s2 iv_b = s3 ). s3 = 5. s2 = zcl_wasm_rt=>div_u32( iv_a = s2 iv_b = s3 ). l6 = s2. s3 = 5. s2 = s2 * s3.
              s1 = s1 - s2. s2 = 255. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). s0 = s0 + s1. s1 = 1. s0 = s0 - s1. lv_br = 2. EXIT. " br 2
            ENDDO.
            s1 = l2. s2 = l5.
            IF zcl_wasm_rt=>ge_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
            IF s1 <> 0. lv_br = 4. EXIT. ENDIF. " br_if 4
            s1 = l3. s2 = 3. s1 = s1 + s2. l2 = s1. s1 = l3. s1 = mem_ld_i32_8s( s1 + 2 ). l4 = s1. s2 = 127. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). s2 = 7. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s2 = l6.
            s1 = zcl_wasm_rt=>or32( iv_a = s1 iv_b = s2 ). l6 = s1. s1 = l4. s2 = 0.
            IF s1 >= s2. s1 = 1. ELSE. s1 = 0. ENDIF.
            IF s1 <> 0. EXIT. ENDIF. " br_if 0
            s1 = l2. s2 = l5.
            IF zcl_wasm_rt=>ge_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
            IF s1 <> 0. lv_br = 4. EXIT. ENDIF. " br_if 4
            s1 = l3. s2 = 4. s1 = s1 + s2. l2 = s1. s1 = l3. s1 = mem_ld_i32_8s( s1 + 3 ). l4 = s1. s2 = 127. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). s2 = 14. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s2 = l6.
            s1 = zcl_wasm_rt=>or32( iv_a = s1 iv_b = s2 ). l6 = s1. s1 = l4. s2 = 0.
            IF s1 >= s2. s1 = 1. ELSE. s1 = 0. ENDIF.
            IF s1 <> 0. EXIT. ENDIF. " br_if 0
            s1 = l2. s2 = l5.
            IF zcl_wasm_rt=>ge_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
            IF s1 <> 0. lv_br = 4. EXIT. ENDIF. " br_if 4
            s1 = l3. s2 = 5. s1 = s1 + s2. l2 = s1. s1 = l3. s1 = mem_ld_i32_8s( s1 + 4 ). l4 = s1. s2 = 127. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). s2 = 21. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s2 = l6.
            s1 = zcl_wasm_rt=>or32( iv_a = s1 iv_b = s2 ). l6 = s1. s1 = l4. s2 = 0.
            IF s1 >= s2. s1 = 1. ELSE. s1 = 0. ENDIF.
            IF s1 <> 0. EXIT. ENDIF. " br_if 0
            s1 = l2. s2 = l5.
            IF zcl_wasm_rt=>ge_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
            IF s1 <> 0. lv_br = 4. EXIT. ENDIF. " br_if 4
            s1 = l3. s1 = mem_ld_i32_8s( s1 + 5 ). l4 = s1. s2 = 0.
            IF s1 < s2. s1 = 1. ELSE. s1 = 0. ENDIF.
            IF s1 <> 0. lv_br = 4. EXIT. ENDIF. " br_if 4
            s1 = l3. s2 = 6. s1 = s1 + s2. l2 = s1. s1 = l4. s2 = 28. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s2 = l6. s1 = zcl_wasm_rt=>or32( iv_a = s1 iv_b = s2 ). l6 = s1.
          ENDDO.
          s1 = l2. s2 = p0. s1 = s1 - s2. l2 = s1. s2 = 0.
          IF s1 < s2. s1 = 1. ELSE. s1 = 0. ENDIF.
          IF s1 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
          s1 = l5. s2 = p0. s3 = l2. s2 = s2 + s3. l4 = s2.
          IF zcl_wasm_rt=>le_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
          IF s1 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
          s1 = l4. s2 = 1. s1 = s1 + s2. l2 = s1. s1 = l4. s1 = mem_ld_i32_8s( s1 ). l3 = s1. s2 = 127. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). p0 = s1.
          DO 1 TIMES. " block
            s1 = l3. s2 = 0.
            IF s1 >= s2. s1 = 1. ELSE. s1 = 0. ENDIF.
            IF s1 <> 0. EXIT. ENDIF. " br_if 0
            s1 = l2. s2 = l5.
            IF zcl_wasm_rt=>ge_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
            IF s1 <> 0. lv_br = 4. EXIT. ENDIF. " br_if 4
            s1 = l2. s2 = 1. s1 = s1 + s2. l3 = s1. s1 = l2. s1 = mem_ld_i32_8s( s1 ). l2 = s1. s2 = 127. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). s2 = 7. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s2 = p0.
            s1 = zcl_wasm_rt=>or32( iv_a = s1 iv_b = s2 ). p0 = s1. s1 = l2. s2 = 0.
            IF s1 >= s2. s1 = 1. ELSE. s1 = 0. ENDIF.
            IF s1 <> 0.
              s1 = l3. l2 = s1. lv_br = 1. EXIT. " br 1
            ELSE.
            ENDIF.
            s1 = l3. s2 = l5.
            IF zcl_wasm_rt=>ge_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
            IF s1 <> 0. lv_br = 4. EXIT. ENDIF. " br_if 4
            s1 = l3. s2 = 1. s1 = s1 + s2. l2 = s1. s1 = l3. s1 = mem_ld_i32_8s( s1 ). l3 = s1. s2 = 127. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). s2 = 14. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s2 = p0.
            s1 = zcl_wasm_rt=>or32( iv_a = s1 iv_b = s2 ). p0 = s1. s1 = l3. s2 = 0.
            IF s1 >= s2. s1 = 1. ELSE. s1 = 0. ENDIF.
            IF s1 <> 0. EXIT. ENDIF. " br_if 0
            s1 = l2. s2 = l5.
            IF zcl_wasm_rt=>ge_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
            IF s1 <> 0. lv_br = 4. EXIT. ENDIF. " br_if 4
            s1 = l2. s2 = 1. s1 = s1 + s2. l3 = s1. s1 = l2. s1 = mem_ld_i32_8s( s1 ). l2 = s1. s2 = 127. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). s2 = 21. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s2 = p0.
            s1 = zcl_wasm_rt=>or32( iv_a = s1 iv_b = s2 ). p0 = s1. s1 = l2. s2 = 0.
            IF s1 >= s2. s1 = 1. ELSE. s1 = 0. ENDIF.
            IF s1 <> 0.
              s1 = l3. l2 = s1. lv_br = 1. EXIT. " br 1
            ELSE.
            ENDIF.
            s1 = l3. s2 = l5.
            IF zcl_wasm_rt=>ge_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
            IF s1 <> 0. lv_br = 4. EXIT. ENDIF. " br_if 4
            s1 = l3. s1 = mem_ld_i32_8s( s1 ). l9 = s1. s2 = 0.
            IF s1 < s2. s1 = 1. ELSE. s1 = 0. ENDIF.
            IF s1 <> 0. lv_br = 4. EXIT. ENDIF. " br_if 4
            s1 = l3. s2 = 1. s1 = s1 + s2. l2 = s1. s1 = l9. s2 = 28. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s2 = p0. s1 = zcl_wasm_rt=>or32( iv_a = s1 iv_b = s2 ). p0 = s1.
          ENDDO.
          s1 = l2. s2 = l4. s1 = s1 - s2. l2 = s1. s2 = 0.
          IF s1 < s2. s1 = 1. ELSE. s1 = 0. ENDIF.
          IF s1 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
          s1 = l2. s2 = l4. s1 = s1 + s2. l3 = s1. s1 = 0. s2 = p0. s3 = 1. s2 = zcl_wasm_rt=>and32( iv_a = s2 iv_b = s3 ). s1 = s1 - s2. s2 = p0. s3 = 1. s2 = zcl_wasm_rt=>shr_u32( iv_val = s2 iv_shift = s3 ).
          s1 = zcl_wasm_rt=>xor32( iv_a = s1 iv_b = s2 ). s2 = l7. s1 = s1 + s2.
        ENDDO.
        l2 = s1. s1 = l6. s2 = l10. s1 = s1 + s2. l10 = s1. s2 = p1.
        IF zcl_wasm_rt=>le_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0. EXIT. ENDIF. " br_if 0
      ENDDO.
    ENDDO.
    s1 = l7. rv = s1. RETURN.
  ENDDO.
  s1 = l8. rv = s1.
ENDFORM.

FORM f326 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i CHANGING rv TYPE int8.
  DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE int8. DATA l8 TYPE int8. DATA l9 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i.
  DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i.
  DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i.
  DATA s36 TYPE i. DATA s37 TYPE i. DATA s38 TYPE i. DATA s39 TYPE i. DATA s40 TYPE i. DATA s41 TYPE i. DATA s42 TYPE i. DATA s43 TYPE i. DATA s44 TYPE i. DATA s45 TYPE i. DATA s46 TYPE i. DATA s47 TYPE i. DATA s48 TYPE i. DATA s49 TYPE i.
  DATA s50 TYPE i. DATA s51 TYPE i. DATA s52 TYPE i. DATA s53 TYPE i. DATA s54 TYPE i. DATA s55 TYPE i. DATA s56 TYPE i. DATA s57 TYPE i. DATA s58 TYPE i. DATA s59 TYPE i. DATA s60 TYPE i. DATA s61 TYPE i. DATA s62 TYPE i. DATA s63 TYPE i.
  DATA s64 TYPE i. DATA s65 TYPE i. DATA s66 TYPE i. DATA s67 TYPE i. DATA s68 TYPE i. DATA s69 TYPE i. DATA s70 TYPE i. DATA s71 TYPE i. DATA s72 TYPE i. DATA s73 TYPE i. DATA s74 TYPE i. DATA s75 TYPE i. DATA s76 TYPE i.
  DATA lv_br TYPE i. s0 = gv_g0. s1 = 32. s0 = s0 - s1. p2 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        s0 = p3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). l7 = s0. s1 = -4294967296.
        IF zcl_wasm_rt=>ge_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = l7. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l4 = s0. s0 = mem_ld_i32_16u( s0 + 6 ). p3 = s0. s1 = 13.
          IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          DO 1 TIMES. " block
            s0 = p3. s1 = 48.
            IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0.
              s0 = l4. s0 = mem_ld_i32( s0 + 32 ). s0 = mem_ld_i32_8u( s0 + 16 ). lv_br = 1. EXIT. " br 1
            ELSE.
            ENDIF.
            s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s1 = mem_ld_i32( s1 + 68 ). s2 = p3. s3 = 24. s2 = s2 * s3. s1 = s1 + s2. s1 = mem_ld_i32( s1 + 16 ).
          ENDDO.
          IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        ELSE.
        ENDIF.
        s1 = p0. s2 = 1141317. s3 = 0. PERFORM f970 USING s1 s2 s3 CHANGING s1. lv_br = 1. EXIT. " br 1
      ENDDO.
      s1 = p0. s2 = p1. s3 = 49. PERFORM f508 USING s1 s2 s3 CHANGING s1. p1 = s1. s2 = -4294967296. s1 = zcl_wasm_rt=>and64( iv_a = s1 iv_b = s2 ). s2 = 25769803776.
      IF s1 = s2. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. EXIT. ENDIF. " br_if 0
      DO 1 TIMES. " block
        s1 = p0. s1 = mem_ld_i32( s1 + 16 ). p3 = s1. s2 = 16. s1 = s1 + s2. s2 = 32. s3 = p3. s3 = mem_ld_i32( s3 ).
        DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
        s1 = dispatch_t7( iv_idx = lv_ci_func p0 = s1 p1 = s2 ). p3 = s1.
        IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0.
          s1 = p0. s1 = mem_ld_i32( s1 + 16 ). p3 = s1. s1 = mem_ld_i32_8u( s1 + 136 ).
          IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          s1 = p3. s2 = 1. mem_st_i32_8( iv_addr = s1 + 136 iv_val = s2 ). s1 = p0. s2 = 1134898. s3 = 0. PERFORM f969 USING s1 s2 s3 CHANGING s1. s1 = p3. s2 = 0. mem_st_i32_8( iv_addr = s1 + 136 iv_val = s2 ). lv_br = 1. EXIT. " br 1
        ELSE.
        ENDIF.
        s1 = p3. s2 = 0. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s2 iv_addr = s1 + 0 CHANGING cv_mem = mv_mem ). s1 = p3. s2 = 16. s1 = s1 + s2. l4 = s1. s2 = 0.
        zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s2 iv_addr = s1 + 0 CHANGING cv_mem = mv_mem ). s1 = p3. s2 = 8. s1 = s1 + s2. l5 = s1. s2 = 0. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s2 iv_addr = s1 + 0 CHANGING cv_mem = mv_mem ).
        s1 = p3. s2 = 12884901888. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s2 iv_addr = s1 + 24 CHANGING cv_mem = mv_mem ). s1 = p3. s2 = p3. s3 = 4. s2 = s2 + s3. l6 = s2. mem_st_i32( iv_addr = s1 + 4 iv_val = s2 ). s1 = l4. s2 = p3.
        s3 = 12. s2 = s2 + s3. l4 = s2. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = l5. s2 = l6. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = l4. s2 = l4. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = p1. s2 = -4294967296.
        IF zcl_wasm_rt=>ge_u64( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0.
          s1 = p1. s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = p3. mem_st_i32( iv_addr = s1 + 32 iv_val = s2 ).
        ELSE.
        ENDIF.
        s1 = p0. s2 = p2. s3 = 16. s2 = s2 + s3. p3 = s2. s3 = p1. PERFORM f204 USING s1 s2 s3 CHANGING s1.
        IF s1 <> 0. EXIT. ENDIF. " br_if 0
        DO 1 TIMES. " block
          s1 = p0. s2 = l7. s3 = 12884901888. s4 = 12884901888. s5 = 2. s6 = p3. s7 = 2. PERFORM f0 USING s1 s2 s3 s4 s5 s6 s7 CHANGING s1. l7 = s1. s2 = -4294967296. s1 = zcl_wasm_rt=>and64( iv_a = s1 iv_b = s2 ). s2 = 25769803776.
          IF s1 = s2. s1 = 1. ELSE. s1 = 0. ENDIF.
          IF s1 <> 0.
            s1 = p0. s1 = mem_ld_i32( s1 + 16 ). p3 = s1. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 128 ). l8 = s1. s1 = p3. s2 = 8589934592.
            zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s2 iv_addr = s1 + 128 CHANGING cv_mem = mv_mem ). s1 = p2. s2 = l8. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s2 iv_addr = s1 + 8 CHANGING cv_mem = mv_mem ). s1 = p0. s2 = p2.
            s2 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s2 + 24 ). s3 = 12884901888. s4 = 12884901888. s5 = 1. s6 = p2. s7 = 8. s6 = s6 + s7. s7 = 2. PERFORM f0 USING s1 s2 s3 s4 s5 s6 s7 CHANGING s1. l8 = s1.
            DO 1 TIMES. " block
              s1 = p2. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 8 ). l9 = s1. s2 = 32. s1 = zcl_wasm_rt=>shr_u64( iv_val = s1 iv_shift = s2 ). s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = -11.
              IF zcl_wasm_rt=>lt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
              IF s1 <> 0. EXIT. ENDIF. " br_if 0
              s1 = l9. s1 = zcl_wasm_rt=>wrap_i64( s1 ). p3 = s1. s2 = p3. s2 = mem_ld_i32( s2 ). p3 = s2. s3 = 1. s2 = s2 - s3. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = p3. s2 = 1.
              IF s1 > s2. s1 = 1. ELSE. s1 = 0. ENDIF.
              IF s1 <> 0. EXIT. ENDIF. " br_if 0
              s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s2 = l9. PERFORM f453 USING s1 s2.
            ENDDO.
            s1 = l8. s2 = -4294967296. s1 = zcl_wasm_rt=>and64( iv_a = s1 iv_b = s2 ). s2 = 25769803776.
            IF s1 = s2. s1 = 1. ELSE. s1 = 0. ENDIF.
            IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
            s1 = p0. s2 = l8. PERFORM f1164 USING s1 s2.
          ELSE.
          ENDIF.
          DO 1 TIMES. " block
            s1 = l7. s2 = 32. s1 = zcl_wasm_rt=>shr_u64( iv_val = s1 iv_shift = s2 ). s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = -11.
            IF zcl_wasm_rt=>lt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
            IF s1 <> 0. EXIT. ENDIF. " br_if 0
            s1 = l7. s1 = zcl_wasm_rt=>wrap_i64( s1 ). p3 = s1. s2 = p3. s2 = mem_ld_i32( s2 ). p3 = s2. s3 = 1. s2 = s2 - s3. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = p3. s2 = 1.
            IF s1 > s2. s1 = 1. ELSE. s1 = 0. ENDIF.
            IF s1 <> 0. EXIT. ENDIF. " br_if 0
            s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s2 = l7. PERFORM f453 USING s1 s2.
          ENDDO.
          DO 1 TIMES. " block
            s1 = p2. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 16 ). l7 = s1. s2 = 32. s1 = zcl_wasm_rt=>shr_u64( iv_val = s1 iv_shift = s2 ). s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = -11.
            IF zcl_wasm_rt=>lt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
            IF s1 <> 0. EXIT. ENDIF. " br_if 0
            s1 = l7. s1 = zcl_wasm_rt=>wrap_i64( s1 ). p3 = s1. s2 = p3. s2 = mem_ld_i32( s2 ). p3 = s2. s3 = 1. s2 = s2 - s3. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = p3. s2 = 1.
            IF s1 > s2. s1 = 1. ELSE. s1 = 0. ENDIF.
            IF s1 <> 0. EXIT. ENDIF. " br_if 0
            s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s2 = l7. PERFORM f453 USING s1 s2.
          ENDDO.
          s1 = p2. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 24 ). l7 = s1. s2 = 32. s1 = zcl_wasm_rt=>shr_u64( iv_val = s1 iv_shift = s2 ). s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = -11.
          IF zcl_wasm_rt=>lt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
          IF s1 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
          s1 = l7. s1 = zcl_wasm_rt=>wrap_i64( s1 ). p3 = s1. s2 = p3. s2 = mem_ld_i32( s2 ). p3 = s2. s3 = 1. s2 = s2 - s3. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = p3. s2 = 1.
          IF s1 > s2. s1 = 1. ELSE. s1 = 0. ENDIF.
          IF s1 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
          s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s2 = l7. PERFORM f453 USING s1 s2. lv_br = 3. EXIT. " br 3
        ENDDO.
        s1 = p0. s2 = p2. s2 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s2 + 16 ). PERFORM f1164 USING s1 s2. s1 = p0. s2 = p2. s2 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s2 + 24 ). PERFORM f1164 USING s1 s2.
      ENDDO.
      s1 = p1. s2 = 32. s1 = zcl_wasm_rt=>shr_u64( iv_val = s1 iv_shift = s2 ). s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = -11.
      IF zcl_wasm_rt=>lt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. EXIT. ENDIF. " br_if 0
      s1 = p1. s1 = zcl_wasm_rt=>wrap_i64( s1 ). p3 = s1. s2 = p3. s2 = mem_ld_i32( s2 ). p3 = s2. s3 = 1. s2 = s2 - s3. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = p3. s2 = 1.
      IF s1 > s2. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. EXIT. ENDIF. " br_if 0
      s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s2 = p1. PERFORM f453 USING s1 s2.
    ENDDO.
    s1 = 25769803776. p1 = s1.
  ENDDO.
  s1 = p2. s2 = 32. s1 = s1 + s2. gv_g0 = s1. s1 = p1. rv = s1.
ENDFORM.

FORM f327 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i p4 TYPE i CHANGING rv TYPE int8.
  DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE int8. DATA l8 TYPE int8. DATA l9 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i.
  DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i.
  DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i. DATA s36 TYPE i.
  DATA s37 TYPE i. DATA s38 TYPE i. DATA s39 TYPE i. DATA s40 TYPE i. DATA s41 TYPE i. DATA s42 TYPE i. DATA s43 TYPE i. DATA s44 TYPE i. DATA s45 TYPE i. DATA s46 TYPE i. DATA s47 TYPE i. DATA s48 TYPE i. DATA s49 TYPE i. DATA s50 TYPE i.
  DATA s51 TYPE i. DATA s52 TYPE i. DATA s53 TYPE i. DATA s54 TYPE i. DATA s55 TYPE i. DATA s56 TYPE i. DATA s57 TYPE i. DATA s58 TYPE i. DATA s59 TYPE i. DATA s60 TYPE i. DATA s61 TYPE i. DATA s62 TYPE i. DATA s63 TYPE i. DATA s64 TYPE i.
  DATA s65 TYPE i. DATA s66 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. p2 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        s0 = p0. s1 = p0. s2 = p1. PERFORM f151 USING s1 s2 CHANGING s1. p1 = s1. s2 = 48. s3 = p1. s4 = 0. PERFORM f192 USING s0 s1 s2 s3 s4 CHANGING s0. l7 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ).
        s1 = 25769803776.
        IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = p2. s1 = 0. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 8 CHANGING cv_mem = mv_mem ). lv_br = 1. EXIT. " br 1
        ELSE.
        ENDIF.
        s0 = l7. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). p3 = s0. s1 = -11.
        IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = l7. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l5 = s0. s1 = l5. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
        ELSE.
        ENDIF.
        DO 1 TIMES. " block
          s0 = p0. s1 = p2. s2 = 8. s1 = s1 + s2. s2 = l7. PERFORM f719 USING s0 s1 s2 CHANGING s0. l5 = s0.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = p2. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 8 ). l9 = s0. s1 = 0.
          IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0.
            s0 = 9007199254740991. l8 = s0. s0 = l9. s1 = 9007199254740992.
            IF zcl_wasm_rt=>lt_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          ELSE.
          ENDIF.
          s0 = p2. s1 = l8. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 8 CHANGING cv_mem = mv_mem ).
        ENDDO.
        DO 1 TIMES. " block
          s0 = p3. s1 = -11.
          IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = l7. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p3 = s0. s1 = p3. s1 = mem_ld_i32( s1 ). p3 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p3. s1 = 1.
          IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = l7. PERFORM f453 USING s0 s1.
        ENDDO.
        s0 = l5.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        DO 1 TIMES. " block
          DO 1 TIMES. " block
            s0 = p2. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 8 ). l9 = s0. s1 = 0.
            IF s0 <= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0.
              s0 = 0. l8 = s0. s0 = 12884901888. l7 = s0. lv_br = 1. EXIT. " br 1
            ELSE.
            ENDIF.
            s0 = l9. s1 = 1. s0 = s0 - s1. l8 = s0.
            DO 1 TIMES. " block
              DO 1 TIMES. " block
                DO 1 TIMES. " block
                  DO 1 TIMES. " block
                    s0 = p1. s1 = -4294967296.
                    IF zcl_wasm_rt=>lt_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
                    IF s0 <> 0. EXIT. ENDIF. " br_if 0
                    s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p3 = s0. s0 = mem_ld_i32_16u( s0 + 6 ). s1 = 2.
                    IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                    IF s0 <> 0. EXIT. ENDIF. " br_if 0
                    s0 = p3. s0 = mem_ld_i32_8u( s0 + 5 ). s1 = 8. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
                    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
                    IF s0 <> 0. EXIT. ENDIF. " br_if 0
                    s0 = l9. s1 = p3. s2 = 40. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). l6 = s1. s1 = zcl_wasm_rt=>extend_u32( s1 ).
                    IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                    IF s0 <> 0. EXIT. ENDIF. " br_if 0
                    s0 = p3. s0 = mem_ld_i32( s0 + 36 ). l5 = s0. s0 = p4.
                    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
                    IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
                    s0 = l5. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). l7 = s0. s0 = l5. s1 = l5. s2 = 8. s1 = s1 + s2. s2 = l6. s3 = 3. s2 = zcl_wasm_rt=>shl32( iv_val = s2 iv_shift = s3 ). s3 = 8. s2 = s2 - s3.
                    PERFORM f157 USING s0 s1 s2 CHANGING s0. s0 = p3. s0 = mem_ld_i32( s0 + 40 ). s1 = 1. s0 = s0 - s1. p4 = s0. lv_br = 2. EXIT. " br 2
                  ENDDO.
                  DO 1 TIMES. " block
                    s0 = p4.
                    IF s0 <> 0.
                      s0 = p0. s1 = p1. s2 = 0. PERFORM f283 USING s0 s1 s2 CHANGING s0. l7 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 25769803776.
                      IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                      IF s0 <> 0. lv_br = 6. EXIT. ENDIF. " br_if 6
                      s0 = p0. s1 = p1. s2 = 0. s3 = 1. s4 = p2. s4 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s4 + 8 ). s5 = 1. s4 = s4 - s5. s5 = 1. PERFORM f227 USING s0 s1 s2 s3 s4 s5 CHANGING s0.
                      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
                      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
                      lv_br = 6. EXIT. " br 6
                    ELSE.
                    ENDIF.
                    s0 = p0. s1 = p1. s2 = l8. PERFORM f825 USING s0 s1 s2 CHANGING s0. l7 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 25769803776.
                    IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                    IF s0 <> 0. lv_br = 5. EXIT. ENDIF. " br_if 5
                  ENDDO.
                  s0 = p0. s1 = p1. s2 = l8. PERFORM f793 USING s0 s1 s2 CHANGING s0. s1 = 0.
                  IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                  IF s0 <> 0. lv_br = 4. EXIT. ENDIF. " br_if 4
                  lv_br = 2. EXIT. " br 2
                ENDDO.
                s0 = l5. s1 = l6. s2 = 1. s1 = s1 - s2. p4 = s1. s2 = 3. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). l7 = s0.
              ENDDO.
              s0 = p3. s1 = p4. mem_st_i32( iv_addr = s0 + 40 iv_val = s1 ).
            ENDDO.
            s0 = l9. s1 = 2147483649.
            IF zcl_wasm_rt=>lt_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. EXIT. ENDIF. " br_if 0
            s0 = -51539607552. s1 = l8. s1 = s1. " convert to f64 s1 = zcl_wasm_rt=>reinterpret_f64_i64( s1 ). l8 = s1. s2 = 9221120288580698112. s1 = s1 - s2. s2 = l8. s3 = 9223372036854775807.
            s2 = zcl_wasm_rt=>and64( iv_a = s2 iv_b = s3 ). s3 = 9218868437227405312.
            IF zcl_wasm_rt=>gt_u64( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
            IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
            l8 = s0.
          ENDDO.
          s0 = p0. s1 = p1. s2 = 48. s3 = l8. s4 = p1. s5 = 16384. PERFORM f89 USING s0 s1 s2 s3 s4 s5 CHANGING s0. s1 = 0.
          IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = p1. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
          IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
          s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p3 = s0. s1 = p3. s1 = mem_ld_i32( s1 ). p3 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p3. s1 = 2.
          IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
          lv_br = 2. EXIT. " br 2
        ENDDO.
        s0 = l7. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
        IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = l7. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p3 = s0. s1 = p3. s1 = mem_ld_i32( s1 ). p3 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p3. s1 = 1.
        IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = l7. PERFORM f453 USING s0 s1.
      ENDDO.
      s0 = 25769803776. l7 = s0. s0 = p1. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
      IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p3 = s0. s1 = p3. s1 = mem_ld_i32( s1 ). p3 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p3. s1 = 1.
      IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
    ENDDO.
    s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = p1. PERFORM f453 USING s0 s1.
  ENDDO.
  s0 = p2. s1 = 16. s0 = s0 + s1. gv_g0 = s0. s0 = l7. rv = s0.
ENDFORM.

FORM f328 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i p4 TYPE i CHANGING rv TYPE int8.
  DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE int8. DATA l8 TYPE int8. DATA l9 TYPE int8. DATA l10 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i.
  DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i.
  DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i.
  DATA s36 TYPE i. DATA s37 TYPE i. DATA s38 TYPE i. DATA s39 TYPE i. DATA s40 TYPE i. DATA s41 TYPE i. DATA s42 TYPE i. DATA s43 TYPE i. DATA s44 TYPE i. DATA s45 TYPE i. DATA s46 TYPE i. DATA s47 TYPE i. DATA s48 TYPE i. DATA s49 TYPE i.
  DATA s50 TYPE i. DATA s51 TYPE i. DATA s52 TYPE i. DATA s53 TYPE i. DATA s54 TYPE i. DATA s55 TYPE i. DATA s56 TYPE i. DATA s57 TYPE i. DATA s58 TYPE i. DATA s59 TYPE i. DATA s60 TYPE i. DATA s61 TYPE i. DATA s62 TYPE i. DATA s63 TYPE i.
  DATA s64 TYPE i. DATA s65 TYPE i. DATA s66 TYPE i. DATA s67 TYPE i. DATA s68 TYPE i. DATA s69 TYPE i. DATA s70 TYPE i. DATA s71 TYPE i. DATA s72 TYPE i. DATA s73 TYPE i. DATA s74 TYPE i. DATA s75 TYPE i. DATA s76 TYPE i. DATA s77 TYPE i.
  DATA s78 TYPE i. DATA s79 TYPE i. DATA s80 TYPE i. DATA s81 TYPE i. DATA s82 TYPE i. DATA s83 TYPE i. DATA s84 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 96. s0 = s0 - s1. p2 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          s0 = p1. s1 = -4294967296.
          IF zcl_wasm_rt=>lt_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l5 = s0. s0 = mem_ld_i32_16u( s0 + 6 ). s1 = p4.
          IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = l5. s0 = mem_ld_i32( s0 + 32 ). l5 = s0.
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        ENDDO.
        s0 = p2. s1 = p0. s2 = 16. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). p3 = s1. s2 = p2. s3 = 32. s2 = s2 + s3. s3 = p3. s3 = mem_ld_i32( s3 + 68 ). s4 = p4. s5 = 24. s4 = s4 * s5. s3 = s3 + s4. s3 = mem_ld_i32( s3 + 4 ).
        PERFORM f410 USING s1 s2 s3 CHANGING s1. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s1 = 1147410. s2 = p2. PERFORM f970 USING s0 s1 s2 CHANGING s0. lv_br = 1. EXIT. " br 1
      ENDDO.
      s0 = l5. s0 = mem_ld_i32_8u( s0 + 4 ).
      IF s0 <> 0.
        s0 = p0. s1 = 1148080. s2 = 0. PERFORM f970 USING s0 s1 s2 CHANGING s0. lv_br = 1. EXIT. " br 1
      ELSE.
      ENDIF.
      s0 = l5. s0 = zcl_wasm_rt=>mem_ld_i64_ext( iv_mem = mv_mem iv_addr = s0 + 0 iv_op = 52 ). l9 = s0. s0 = p3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). l7 = s0. s1 = 32.
      s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
      IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = l7. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l6 = s0. s1 = l6. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
      ELSE.
      ENDIF.
      s0 = 25769803776. l8 = s0. s0 = p0. s1 = p2. s2 = 32. s1 = s1 + s2. s2 = l7. PERFORM f719 USING s0 s1 s2 CHANGING s0.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          s0 = p2. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 32 ). l7 = s0. s1 = 0.
          IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0.
            s0 = p2. s1 = l7. s2 = l9. s1 = s1 + s2. l7 = s1. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 32 CHANGING cv_mem = mv_mem ). s0 = l7. s1 = 0.
            IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          ELSE.
          ENDIF.
          s0 = l9. l10 = s0. s0 = l7. s1 = l9.
          IF s0 <= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        ENDDO.
        s0 = p2. s1 = l10. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 32 CHANGING cv_mem = mv_mem ).
      ENDDO.
      s0 = p2. s1 = l9. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 24 CHANGING cv_mem = mv_mem ).
      DO 1 TIMES. " block
        s0 = p3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 8 ). l7 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 12884901888.
        IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = l9. l8 = s0. lv_br = 1. EXIT. " br 1
        ELSE.
        ENDIF.
        s0 = l7. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
        IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = l7. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p3 = s0. s1 = p3. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
        ELSE.
        ENDIF.
        s0 = p0. s1 = p2. s2 = 24. s1 = s1 + s2. s2 = l7. PERFORM f719 USING s0 s1 s2 CHANGING s0.
        IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
        DO 1 TIMES. " block
          s0 = p2. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 24 ). l8 = s0. s1 = 0.
          IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0.
            s0 = p2. s1 = l8. s2 = l9. s1 = s1 + s2. l8 = s1. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 24 CHANGING cv_mem = mv_mem ). s0 = 0. l7 = s0. s0 = l8. s1 = 0.
            IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          ELSE.
          ENDIF.
          s0 = l9. l7 = s0. s1 = l8.
          IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        ENDDO.
        s0 = p2. s1 = l7. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 24 CHANGING cv_mem = mv_mem ). s0 = l7. l8 = s0.
      ENDDO.
      s0 = p2. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 32 ). l7 = s0. s0 = p0. s1 = p1. s2 = 12884901888. PERFORM f592 USING s0 s1 s2 CHANGING s0. l9 = s0. s1 = -4294967296.
      s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). l10 = s0. s1 = 25769803776.
      IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = l9. l8 = s0. lv_br = 2. EXIT. " br 2
      ELSE.
      ENDIF.
      s0 = l8. s1 = l7. s0 = s0 - s1. l8 = s0. s1 = 0. s2 = l8. s3 = 0.
      IF s2 > s3. s2 = 1. ELSE. s2 = 0. ENDIF.
      IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
      l7 = s0.
      DO 1 TIMES. " block
        s0 = l10. s1 = 12884901888.
        IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = p0. s1 = 12884901888. s2 = l7. s3 = p4. s4 = 0. s5 = 359. s6 = 0. s7 = 1. PERFORM f413 USING s0 s1 s2 s3 s4 s5 s6 s7 CHANGING s0. l8 = s0. lv_br = 1. EXIT. " br 1
        ELSE.
        ENDIF.
        s0 = p2. s1 = l7. l8 = s1. s2 = 2147483648.
        IF zcl_wasm_rt=>ge_u64( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0.
          s1 = -51539607552. s2 = l7. s2 = s2. " convert to f64 s2 = zcl_wasm_rt=>reinterpret_f64_i64( s2 ). l8 = s2. s3 = 9221120288580698112. s2 = s2 - s3. s3 = l8. s4 = 9223372036854775807. s3 = zcl_wasm_rt=>and64( iv_a = s3 iv_b = s4 ).
          s4 = 9218868437227405312.
          IF zcl_wasm_rt=>gt_u64( iv_a = s3 iv_b = s4 ) = abap_true. s3 = 1. ELSE. s3 = 0. ENDIF.
          IF s3 <> 0. s1 = s1. ELSE. s1 = s2. ENDIF.
        ELSE.
          s2 = l8.
        ENDIF.
        zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s2 iv_addr = s1 + 16 CHANGING cv_mem = mv_mem ). s1 = p0. s2 = l9. s3 = l9. s4 = 1. s5 = p2. s6 = 16. s5 = s5 + s6. s6 = 2. PERFORM f557 USING s1 s2 s3 s4 s5 s6 CHANGING s1. l8 = s1.
        s1 = p0. s2 = l9. PERFORM f1164 USING s1 s2. s1 = p0. s2 = p2. s2 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s2 + 16 ). PERFORM f1164 USING s1 s2.
      ENDDO.
      s1 = l8. s2 = -4294967296. s1 = zcl_wasm_rt=>and64( iv_a = s1 iv_b = s2 ). s2 = 25769803776.
      IF s1 = s2. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s1 = p0. s2 = l8. s3 = p4. PERFORM f995 USING s1 s2 s3 CHANGING s1. p3 = s1.
      IF s1 <> 0.
        s1 = 1140473. p4 = s1.
        DO 1 TIMES. " block
          s1 = p0. s2 = l8. s3 = p1. PERFORM f1098 USING s1 s2 s3 CHANGING s1.
          IF s1 <> 0. EXIT. ENDIF. " br_if 0
          s1 = 1148080. p4 = s1. s1 = p3. s1 = mem_ld_i32_8u( s1 + 4 ).
          IF s1 <> 0. EXIT. ENDIF. " br_if 0
          s1 = 1142530. p4 = s1. s1 = l7. s2 = p3. s2 = zcl_wasm_rt=>mem_ld_i64_ext( iv_mem = mv_mem iv_addr = s2 + 0 iv_op = 52 ).
          IF s1 > s2. s1 = 1. ELSE. s1 = 0. ENDIF.
          IF s1 <> 0. EXIT. ENDIF. " br_if 0
          s1 = 1148080. p4 = s1. s1 = l5. s1 = mem_ld_i32_8u( s1 + 4 ).
          IF s1 <> 0. EXIT. ENDIF. " br_if 0
          s1 = p3. s1 = mem_ld_i32( s1 + 8 ). s2 = l5. s2 = mem_ld_i32( s2 + 8 ). s3 = p2. s3 = mem_ld_i32( s3 + 32 ). s2 = s2 + s3. s3 = l7. s3 = zcl_wasm_rt=>wrap_i64( s3 ). PERFORM f216 USING s1 s2 s3 CHANGING s1. lv_br = 3. EXIT. " br 3
        ENDDO.
        s1 = p0. s2 = p4. s3 = 0. PERFORM f970 USING s1 s2 s3 CHANGING s1.
      ELSE.
      ENDIF.
      s1 = p0. s2 = l8. PERFORM f1164 USING s1 s2.
    ENDDO.
    s1 = 25769803776. l8 = s1.
  ENDDO.
  s1 = p2. s2 = 96. s1 = s1 + s2. gv_g0 = s1. s1 = l8. rv = s1.
ENDFORM.

FORM f329 USING p0 TYPE i p1 TYPE i p2 TYPE i p3 TYPE i CHANGING rv TYPE i.
  DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE i. DATA l8 TYPE i. DATA l9 TYPE i. DATA l10 TYPE i. DATA l11 TYPE i. DATA l12 TYPE i. DATA l13 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i.
  DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i.
  DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i.
  DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i. DATA s36 TYPE i. DATA s37 TYPE i. DATA s38 TYPE i. DATA s39 TYPE i. DATA s40 TYPE i. DATA s41 TYPE i. DATA lv_br TYPE i. s0 = p1. s1 = 16. s0 = s0 + s1. l9 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        s0 = p1. s0 = mem_ld_i32( s0 + 16 ). l4 = s0. s0 = mem_ld_i32_8u( s0 + 16 ).
        IF s0 <> 0.
          DO 1 TIMES. " block
            DO 1 TIMES. " block
              s0 = p0. s0 = mem_ld_i32( s0 + 16 ). l8 = s0. s1 = 224. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). s1 = l4. s1 = mem_ld_i32( s1 + 20 ). s2 = p2. s1 = s1 + s2. s2 = -1640562687. s1 = s1 * s2. s2 = p3. s1 = s1 + s2. s2 = -1640562687.
              s1 = s1 * s2. l12 = s1. s2 = 32. s3 = l8. s4 = 212. s3 = s3 + s4. s3 = mem_ld_i32( s3 ). s2 = s2 - s3. s1 = zcl_wasm_rt=>shr_u32( iv_val = s1 iv_shift = s2 ). s2 = 2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ).
              s0 = s0 + s1. s0 = mem_ld_i32( s0 ). l6 = s0.
              IF s0 <> 0.
                s0 = l4. s1 = 48. s0 = s0 + s1. l13 = s0.
                DO. " loop
                  DO 1 TIMES. " block
                    s0 = l6. s0 = mem_ld_i32( s0 + 20 ). s1 = l12.
                    IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                    IF s0 <> 0. EXIT. ENDIF. " br_if 0
                    s0 = l6. s0 = mem_ld_i32( s0 + 44 ). s1 = l4. s1 = mem_ld_i32( s1 + 44 ).
                    IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                    IF s0 <> 0. EXIT. ENDIF. " br_if 0
                    s0 = l6. s0 = mem_ld_i32( s0 + 32 ). s1 = l4. s1 = mem_ld_i32( s1 + 32 ). l7 = s1. s2 = 1. s1 = s1 + s2.
                    IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                    IF s0 <> 0. EXIT. ENDIF. " br_if 0
                    s0 = l7.
                    IF s0 <> 0.
                      s0 = l6. s1 = 48. s0 = s0 + s1. l10 = s0. s0 = l13. l5 = s0. s0 = l7. l11 = s0.
                      DO. " loop
                        s0 = l10. s1 = 4. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). s1 = l5. s2 = 4. s1 = s1 + s2. s1 = mem_ld_i32( s1 ).
                        IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                        IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
                        s0 = l5. s0 = mem_ld_i32( s0 ). s1 = l10. s1 = mem_ld_i32( s1 ). s0 = zcl_wasm_rt=>xor32( iv_a = s0 iv_b = s1 ). s1 = 67108864.
                        IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
                        IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
                        s0 = l5. s1 = 8. s0 = s0 + s1. l5 = s0. s0 = l10. s1 = 8. s0 = s0 + s1. l10 = s0. s0 = l11. s1 = 1. s0 = s0 - s1. l11 = s0.
                        IF s0 <> 0. EXIT. ENDIF. " br_if 0
                      ENDDO.
                    ELSE.
                    ENDIF.
                    s0 = l6. s1 = l7. s2 = 3. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. l5 = s0. s1 = 52. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). s1 = p2.
                    IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                    IF s0 <> 0. EXIT. ENDIF. " br_if 0
                    s0 = l5. s1 = 48. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). s1 = 26. s0 = zcl_wasm_rt=>shr_u32( iv_val = s0 iv_shift = s1 ). s1 = p3.
                    IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                    IF s0 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
                  ENDDO.
                  s0 = l6. s0 = mem_ld_i32( s0 + 40 ). l6 = s0.
                  IF s0 <> 0. EXIT. ENDIF. " br_if 0
                ENDDO.
              ELSE.
              ENDIF.
              s0 = l4. s0 = mem_ld_i32( s0 ). s1 = 1.
              IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
              s0 = p0. s1 = l4. PERFORM f495 USING s0 s1 CHANGING s0. l4 = s0.
              IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
              s0 = 0. rv = s0. RETURN.
            ENDDO.
            s0 = l6. s0 = mem_ld_i32( s0 + 28 ). p2 = s0. s1 = l4. s1 = mem_ld_i32( s1 + 28 ).
            IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0.
              s0 = l8. s1 = 16. s0 = s0 + s1. s1 = p1. s1 = mem_ld_i32( s1 + 20 ). s2 = p2. s3 = 3. s2 = zcl_wasm_rt=>shl32( iv_val = s2 iv_shift = s3 ). p3 = s2. s3 = l8. s3 = mem_ld_i32( s3 + 8 ).
              DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
              s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). p2 = s0.
              DO 1 TIMES. " block
                s0 = p3.
                IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
                IF s0 <> 0. EXIT. ENDIF. " br_if 0
                s0 = p2.
                IF s0 <> 0. EXIT. ENDIF. " br_if 0
                s0 = 0. s1 = p0. s1 = mem_ld_i32( s1 + 16 ). p1 = s1. s1 = mem_ld_i32_8u( s1 + 136 ).
                IF s1 <> 0. lv_br = 5. EXIT. ENDIF. " br_if 5
                s0 = p1. s1 = 1. mem_st_i32_8( iv_addr = s0 + 136 iv_val = s1 ). s0 = p0. s1 = 1134898. s2 = 0. PERFORM f969 USING s0 s1 s2 CHANGING s0. s0 = p1. s1 = 0. mem_st_i32_8( iv_addr = s0 + 136 iv_val = s1 ). s0 = 0.
                rv = s0. RETURN.
              ENDDO.
              s0 = p2.
              IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0.
                s0 = 0. rv = s0. RETURN.
              ELSE.
              ENDIF.
              s0 = p1. s1 = p2. mem_st_i32( iv_addr = s0 + 20 iv_val = s1 ). s0 = p0. s0 = mem_ld_i32( s0 + 16 ). l8 = s0.
            ELSE.
            ENDIF.
            s0 = l6. s1 = l6. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l9. s1 = l6. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l4. s1 = l4. s1 = mem_ld_i32( s1 ). p0 = s1. s2 = 1.
            s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s1 = 1.
            IF s0 <= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0.
              s0 = l8. s1 = l4. PERFORM f602 USING s0 s1.
            ELSE.
            ENDIF.
            s0 = p1. s0 = mem_ld_i32( s0 + 20 ). s1 = l6. s1 = mem_ld_i32( s1 + 32 ). s2 = 3. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s1 = 8. s0 = s0 - s1. rv = s0. RETURN.
          ENDDO.
          s0 = l4. s1 = p0. s1 = mem_ld_i32( s1 + 16 ). l5 = s1. s1 = mem_ld_i32( s1 + 224 ). s2 = l4. s2 = mem_ld_i32( s2 + 20 ). s3 = 32. s4 = l5. s4 = mem_ld_i32( s4 + 212 ). s3 = s3 - s4.
          s2 = zcl_wasm_rt=>shr_u32( iv_val = s2 iv_shift = s3 ). s3 = 2. s2 = zcl_wasm_rt=>shl32( iv_val = s2 iv_shift = s3 ). s1 = s1 + s2. l7 = s1. s1 = mem_ld_i32( s1 ). mem_st_i32( iv_addr = s0 + 40 iv_val = s1 ). s0 = l7. s1 = l4.
          mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l4. s1 = 1. mem_st_i32_8( iv_addr = s0 + 16 iv_val = s1 ). s0 = l5. s1 = l5. s1 = mem_ld_i32( s1 + 220 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 + 220 iv_val = s1 ). s0 = l9.
          s0 = mem_ld_i32( s0 ). l5 = s0. s1 = l5. s1 = mem_ld_i32( s1 ). l7 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l7. s1 = 1.
          IF s0 <= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0.
            s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = l5. PERFORM f602 USING s0 s1.
          ELSE.
          ENDIF.
          s0 = l9. s1 = l4. mem_st_i32( iv_addr = s0 iv_val = s1 ).
        ELSE.
        ENDIF.
        s0 = l4. s0 = mem_ld_i32( s0 ). s1 = 1.
        IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
      ENDDO.
      s0 = 0. s1 = p0. s2 = l9. s3 = p1. s4 = p2. s5 = p3. PERFORM f461 USING s1 s2 s3 s4 s5 CHANGING s1.
      IF s1 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p1. s0 = mem_ld_i32( s0 + 20 ). s1 = p1. s1 = mem_ld_i32( s1 + 16 ). s1 = mem_ld_i32( s1 + 32 ). s2 = 3. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s1 = 8. s0 = s0 - s1.
    ENDDO.
    rv = s0. RETURN.
  ENDDO.
  s0 = 1151750. s1 = 1148333. s2 = 8188. s3 = 1134611. PERFORM f1101 USING s0 s1 s2 s3.
  RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
ENDFORM.

FORM f330 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE i. DATA l8 TYPE i. DATA l9 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i.
  DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i.
  DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i.
  DATA s34 TYPE i. DATA s35 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l7 = s0. gv_g0 = s0. s0 = p0. s0 = mem_ld_i32( s0 + 64 ).
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      s0 = p0. s0 = mem_ld_i32( s0 + 4 ). l5 = s0.
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          s0 = p0. s0 = mem_ld_i32( s0 + 24 ). l2 = s0. s1 = p0. s1 = mem_ld_i32( s1 + 28 ).
          IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = p1.
          IF s0 <> 0.
            DO. " loop
              s0 = l2. s0 = mem_ld_i32_8u( s0 ). l3 = s0. s1 = 41.
              IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
              s0 = l3. s1 = 124.
              IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
              s0 = p0. s0 = mem_ld_i32( s0 + 4 ). l3 = s0. s0 = -1. l4 = s0. s0 = p0. s1 = p1. PERFORM f11 USING s0 s1 CHANGING s0.
              IF s0 <> 0. lv_br = 5. EXIT. ENDIF. " br_if 5
              s0 = p0. s1 = p0. s1 = mem_ld_i32( s1 + 4 ). l2 = s1. s2 = l3. s1 = s1 - s2. l3 = s1. s2 = l2. s1 = s1 + s2. PERFORM f1014 USING s0 s1 CHANGING s0.
              IF s0 <> 0. lv_br = 5. EXIT. ENDIF. " br_if 5
              s0 = p0. s0 = mem_ld_i32( s0 ). s1 = l5. s0 = s0 + s1. l4 = s0. s1 = l3. s0 = s0 + s1. s1 = l4. s2 = l2. s3 = l5. s2 = s2 - s3. PERFORM f157 USING s0 s1 s2 CHANGING s0. s0 = p0. s0 = mem_ld_i32( s0 ). l4 = s0. s1 = l5.
              s0 = s0 + s1. s1 = l2. s2 = l4. s1 = s1 + s2. s2 = l3. PERFORM f216 USING s0 s1 s2 CHANGING s0. s0 = p0. s0 = mem_ld_i32( s0 + 24 ). l2 = s0. s1 = p0. s1 = mem_ld_i32( s1 + 28 ).
              IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0. EXIT. ENDIF. " br_if 0
              lv_br = 2. EXIT. " br 2
            ENDDO.
            RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
          ELSE.
          ENDIF.
          DO. " loop
            s0 = l2. s0 = mem_ld_i32_8u( s0 ). l3 = s0. s1 = 41.
            IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
            s0 = l3. s1 = 124.
            IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
            s0 = p0. s1 = 0. PERFORM f11 USING s0 s1 CHANGING s0.
            IF s0 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
            s0 = p0. s0 = mem_ld_i32( s0 + 24 ). l2 = s0. s1 = p0. s1 = mem_ld_i32( s1 + 28 ).
            IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. EXIT. ENDIF. " br_if 0
          ENDDO.
        ENDDO.
        s0 = l2. s0 = mem_ld_i32_8u( s0 ). l3 = s0.
      ENDDO.
      s0 = 0. l4 = s0. s0 = l3. s1 = 255. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = 124.
      IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = 5. s1 = l5. s0 = s0 - s1. l9 = s0. s0 = p0. s0 = mem_ld_i32( s0 + 4 ). l3 = s0.
      DO. " loop
        s0 = p0. s1 = l2. s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 + 24 iv_val = s1 ). s0 = p0. s1 = l3. s2 = 5. s1 = s1 + s2. PERFORM f1014 USING s0 s1 CHANGING s0.
        IF s0 <> 0.
          s0 = p0. s1 = 1134898. s2 = 0. PERFORM f1197 USING s0 s1 s2. lv_br = 2. EXIT. " br 2
        ELSE.
        ENDIF.
        s0 = p0. s0 = mem_ld_i32( s0 ). s1 = l5. s0 = s0 + s1. l2 = s0. s1 = 5. s0 = s0 + s1. s1 = l2. s2 = p0. s2 = mem_ld_i32( s2 + 4 ). s3 = l5. s2 = s2 - s3. PERFORM f157 USING s0 s1 s2 CHANGING s0. s0 = p0. s1 = p0.
        s1 = mem_ld_i32( s1 + 4 ). s2 = 5. s1 = s1 + s2. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = p0. s0 = mem_ld_i32( s0 ). s1 = l5. s0 = s0 + s1. s1 = 9. mem_st_i32_8( iv_addr = s0 iv_val = s1 ). s0 = p0. s0 = mem_ld_i32( s0 ).
        s1 = l5. s0 = s0 + s1. s1 = l3. s2 = l9. s1 = s1 + s2. mem_st_i32( iv_addr = s0 + 1 iv_val = s1 ). s0 = p0. s1 = 7. PERFORM f908 USING s0 s1. s0 = p0. s0 = mem_ld_i32( s0 + 4 ). l8 = s0. s0 = l7. s1 = 0.
        mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = p0. s1 = l7. s2 = 12. s1 = s1 + s2. s2 = 4. PERFORM f1097 USING s0 s1 s2.
        DO 1 TIMES. " block
          s0 = p0. s0 = mem_ld_i32( s0 + 24 ). l2 = s0. s1 = p0. s1 = mem_ld_i32( s1 + 28 ).
          IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = p1.
          IF s0 <> 0.
            s0 = p0. s0 = mem_ld_i32( s0 + 4 ). l3 = s0.
            DO. " loop
              s0 = l2. s0 = mem_ld_i32_8u( s0 ). l4 = s0. s1 = 41.
              IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
              s0 = l4. s1 = 124.
              IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
              s0 = p0. s0 = mem_ld_i32( s0 + 4 ). l6 = s0. s0 = -1. l4 = s0. s0 = p0. s1 = p1. PERFORM f11 USING s0 s1 CHANGING s0.
              IF s0 <> 0. lv_br = 5. EXIT. ENDIF. " br_if 5
              s0 = p0. s1 = p0. s1 = mem_ld_i32( s1 + 4 ). l2 = s1. s2 = l6. s1 = s1 - s2. l6 = s1. s2 = l2. s1 = s1 + s2. PERFORM f1014 USING s0 s1 CHANGING s0.
              IF s0 <> 0. lv_br = 5. EXIT. ENDIF. " br_if 5
              s0 = p0. s0 = mem_ld_i32( s0 ). s1 = l3. s0 = s0 + s1. l4 = s0. s1 = l6. s0 = s0 + s1. s1 = l4. s2 = l2. s3 = l3. s2 = s2 - s3. PERFORM f157 USING s0 s1 s2 CHANGING s0. s0 = p0. s0 = mem_ld_i32( s0 ). l4 = s0. s1 = l3.
              s0 = s0 + s1. s1 = l2. s2 = l4. s1 = s1 + s2. s2 = l6. PERFORM f216 USING s0 s1 s2 CHANGING s0. s0 = p0. s0 = mem_ld_i32( s0 + 24 ). l2 = s0. s1 = p0. s1 = mem_ld_i32( s1 + 28 ).
              IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0. EXIT. ENDIF. " br_if 0
            ENDDO.
            lv_br = 1. EXIT. " br 1
          ELSE.
          ENDIF.
          DO. " loop
            s0 = l2. s0 = mem_ld_i32_8u( s0 ). l3 = s0. s1 = 41.
            IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
            s0 = l3. s1 = 124.
            IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
            s0 = p0. s1 = 0. PERFORM f11 USING s0 s1 CHANGING s0.
            IF s0 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
            s0 = p0. s0 = mem_ld_i32( s0 + 24 ). l2 = s0. s1 = p0. s1 = mem_ld_i32( s1 + 28 ).
            IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. EXIT. ENDIF. " br_if 0
          ENDDO.
        ENDDO.
        s0 = p0. s0 = mem_ld_i32( s0 ). s1 = l8. s0 = s0 + s1. s1 = p0. s1 = mem_ld_i32( s1 + 4 ). l3 = s1. s2 = l8. s1 = s1 - s2. s2 = 4. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = 0. l4 = s0. s0 = l2.
        s0 = mem_ld_i32_8u( s0 ). s1 = 124.
        IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
      ENDDO.
      lv_br = 1. EXIT. " br 1
    ENDDO.
    s0 = -1. l4 = s0.
  ENDDO.
  s0 = l7. s1 = 16. s0 = s0 + s1. gv_g0 = s0. s0 = l4. rv = s0.
ENDFORM.

FORM f331 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i CHANGING rv TYPE int8.
  DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE int8. DATA l8 TYPE int8. DATA l9 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i.
  DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i.
  DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i.
  DATA s36 TYPE i. DATA s37 TYPE i. DATA s38 TYPE i. DATA s39 TYPE i. DATA s40 TYPE i. DATA s41 TYPE i. DATA s42 TYPE i. DATA s43 TYPE i. DATA s44 TYPE i. DATA s45 TYPE i. DATA s46 TYPE i. DATA s47 TYPE i. DATA s48 TYPE i. DATA s49 TYPE i.
  DATA s50 TYPE i. DATA s51 TYPE i. DATA s52 TYPE i. DATA s53 TYPE i. DATA s54 TYPE i. DATA s55 TYPE i. DATA s56 TYPE i. DATA s57 TYPE i. DATA s58 TYPE i. DATA s59 TYPE i. DATA s60 TYPE i. DATA s61 TYPE i. DATA s62 TYPE i. DATA s63 TYPE i.
  DATA s64 TYPE i. DATA s65 TYPE i. DATA s66 TYPE i. DATA s67 TYPE i. DATA s68 TYPE i. DATA s69 TYPE i. DATA s70 TYPE i. DATA s71 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 32. s0 = s0 - s1. l4 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      s0 = p0. s1 = p0. s2 = p1. PERFORM f151 USING s1 s2 CHANGING s1. l9 = s1. s2 = 48. s3 = l9. s4 = 0. PERFORM f192 USING s0 s1 s2 s3 s4 CHANGING s0. l8 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ).
      s1 = 25769803776.
      IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = l4. s1 = 0. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 24 CHANGING cv_mem = mv_mem ). lv_br = 1. EXIT. " br 1
      ELSE.
      ENDIF.
      s0 = l8. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). l5 = s0. s1 = -11.
      IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = l8. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l6 = s0. s1 = l6. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
      ELSE.
      ENDIF.
      DO 1 TIMES. " block
        s0 = p0. s1 = l4. s2 = 24. s1 = s1 + s2. s2 = l8. PERFORM f719 USING s0 s1 s2 CHANGING s0. l6 = s0.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = 0. p1 = s0. s0 = l4. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 24 ). l7 = s0. s1 = 0.
        IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = 9007199254740991. p1 = s0. s0 = l7. s1 = 9007199254740992.
          IF zcl_wasm_rt=>lt_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        ELSE.
        ENDIF.
        s0 = l4. s1 = p1. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 24 CHANGING cv_mem = mv_mem ).
      ENDDO.
      DO 1 TIMES. " block
        s0 = l5. s1 = -11.
        IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = l8. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l5 = s0. s1 = l5. s1 = mem_ld_i32( s1 ). l5 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l5. s1 = 1.
        IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = l8. PERFORM f453 USING s0 s1.
      ENDDO.
      s0 = l6.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = l4. s1 = 0. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 16 CHANGING cv_mem = mv_mem ).
      DO 1 TIMES. " block
        s0 = p2. s1 = 1.
        IF s0 <= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = l4. s1 = l4. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 24 ). p1 = s1. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 8 CHANGING cv_mem = mv_mem ). lv_br = 1. EXIT. " br 1
        ELSE.
        ENDIF.
        DO 1 TIMES. " block
          s0 = p3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 8 ). l8 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 12884901888.
          IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = l4. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 24 ). p1 = s0. s0 = l8. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
          IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0.
            s0 = l8. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l5 = s0. s1 = l5. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
          ELSE.
          ENDIF.
          s0 = p0. s1 = l4. s2 = 16. s1 = s1 + s2. s2 = l8. PERFORM f719 USING s0 s1 s2 CHANGING s0.
          IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
          DO 1 TIMES. " block
            s0 = l4. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 16 ). l7 = s0. s1 = 0.
            IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0.
              s0 = l4. s1 = p1. s2 = l7. s1 = s1 + s2. l7 = s1. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 16 CHANGING cv_mem = mv_mem ). s0 = 0. l8 = s0. s0 = l7. s1 = 0.
              IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
            ELSE.
            ENDIF.
            s0 = p1. l8 = s0. s1 = l7.
            IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          ENDDO.
          s0 = l4. s1 = l8. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 16 CHANGING cv_mem = mv_mem ).
        ENDDO.
        s0 = l4. s1 = l4. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 24 ). l7 = s1. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 8 CHANGING cv_mem = mv_mem ). s0 = p2. s1 = 3.
        IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = l7. p1 = s0. lv_br = 1. EXIT. " br 1
        ELSE.
        ENDIF.
        s0 = p3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 16 ). p1 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 12884901888.
        IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = l7. p1 = s0. lv_br = 1. EXIT. " br 1
        ELSE.
        ENDIF.
        s0 = p1. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
        IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p2 = s0. s1 = p2. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
        ELSE.
        ENDIF.
        s0 = p0. s1 = l4. s2 = 8. s1 = s1 + s2. s2 = p1. PERFORM f719 USING s0 s1 s2 CHANGING s0.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        DO 1 TIMES. " block
          s0 = l4. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 8 ). p1 = s0. s1 = 0.
          IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0.
            s0 = l4. s1 = p1. s2 = l7. s1 = s1 + s2. p1 = s1. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 8 CHANGING cv_mem = mv_mem ). s0 = 0. l8 = s0. s0 = p1. s1 = 0.
            IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          ELSE.
          ENDIF.
          s0 = l7. l8 = s0. s1 = p1.
          IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        ENDDO.
        s0 = l4. s1 = l8. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 8 CHANGING cv_mem = mv_mem ). s0 = l8. p1 = s0.
      ENDDO.
      s0 = p1. s1 = l4. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 16 ). l7 = s1.
      IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        DO. " loop
          s0 = p3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). p1 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
          IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0.
            s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p2 = s0. s1 = p2. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
          ELSE.
          ENDIF.
          s0 = p0. s1 = l9. s2 = l7. s3 = p1. PERFORM f716 USING s0 s1 s2 s3 CHANGING s0. s1 = 0.
          IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
          s0 = l4. s1 = l4. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 16 ). s2 = 1. s1 = s1 + s2. l7 = s1. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 16 CHANGING cv_mem = mv_mem ). s0 = l7. s1 = l4.
          s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 8 ).
          IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
        ENDDO.
      ELSE.
      ENDIF.
      s0 = l9. l7 = s0. lv_br = 1. EXIT. " br 1
    ENDDO.
    s0 = 25769803776. l7 = s0. s0 = l9. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
    IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l9. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p2 = s0. s1 = p2. s1 = mem_ld_i32( s1 ). p2 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p2. s1 = 1.
    IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = l9. PERFORM f453 USING s0 s1.
  ENDDO.
  s0 = l4. s1 = 32. s0 = s0 + s1. gv_g0 = s0. s0 = l7. rv = s0.
ENDFORM.

FORM f332 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i p4 TYPE i CHANGING rv TYPE int8.
  DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE i. DATA l8 TYPE i. DATA l9 TYPE i. DATA l10 TYPE int8. DATA l11 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i.
  DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i.
  DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i.
  DATA s35 TYPE i. DATA s36 TYPE i. DATA s37 TYPE i. DATA s38 TYPE i. DATA s39 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 48. s0 = s0 - s1. l7 = s0. gv_g0 = s0. s0 = 4294967297. p1 = s0.
  DO 1 TIMES. " block
    s0 = p3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). l11 = s0. s1 = -4294967296.
    IF zcl_wasm_rt=>lt_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = 25769803776. p1 = s0. s0 = p0. s1 = l7. s2 = 44. s1 = s1 + s2. s2 = l7. s3 = 40. s2 = s2 + s3. s3 = l11. s3 = zcl_wasm_rt=>wrap_i64( s3 ). l8 = s3. s4 = 3. PERFORM f48 USING s0 s1 s2 s3 s4 CHANGING s0.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          s0 = l7. s0 = mem_ld_i32( s0 + 40 ). p3 = s0.
          IF s0 <> 0.
            s0 = l7. s0 = mem_ld_i32( s0 + 44 ). l9 = s0. s1 = 4. s0 = s0 + s1. l6 = s0. s0 = p3. p2 = s0.
            DO. " loop
              s0 = p0. s1 = l7. s2 = 8. s1 = s1 + s2. s2 = l8. s3 = l6. s3 = mem_ld_i32( s3 ). PERFORM f311 USING s0 s1 s2 s3 CHANGING s0. l5 = s0. s1 = 0.
              IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0. lv_br = 4. EXIT. ENDIF. " br_if 4
              DO 1 TIMES. " block
                s0 = l5.
                IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
                IF s0 <> 0. EXIT. ENDIF. " br_if 0
                DO 1 TIMES. " block
                  s0 = l7. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 24 ). l10 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
                  IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
                  IF s0 <> 0. EXIT. ENDIF. " br_if 0
                  s0 = l10. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l5 = s0. s1 = l5. s1 = mem_ld_i32( s1 ). l5 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l5. s1 = 1.
                  IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                  IF s0 <> 0. EXIT. ENDIF. " br_if 0
                  s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = l10. PERFORM f453 USING s0 s1.
                ENDDO.
                DO 1 TIMES. " block
                  s0 = l7. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 32 ). l10 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
                  IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
                  IF s0 <> 0. EXIT. ENDIF. " br_if 0
                  s0 = l10. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l5 = s0. s1 = l5. s1 = mem_ld_i32( s1 ). l5 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l5. s1 = 1.
                  IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                  IF s0 <> 0. EXIT. ENDIF. " br_if 0
                  s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = l10. PERFORM f453 USING s0 s1.
                ENDDO.
                DO 1 TIMES. " block
                  s0 = l7. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 16 ). l10 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
                  IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
                  IF s0 <> 0. EXIT. ENDIF. " br_if 0
                  s0 = l10. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l5 = s0. s1 = l5. s1 = mem_ld_i32( s1 ). l5 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l5. s1 = 1.
                  IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                  IF s0 <> 0. EXIT. ENDIF. " br_if 0
                  s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = l10. PERFORM f453 USING s0 s1.
                ENDDO.
                s0 = l7. s0 = mem_ld_i32( s0 + 8 ). l5 = s0. s1 = 1. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
                IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
                IF s0 <> 0.
                  s0 = p4.
                  IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
                  IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
                  s0 = l5. s1 = 2. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
                  IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
                  IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
                ELSE.
                ENDIF.
                s0 = 0. p4 = s0. lv_br = 3. EXIT. " br 3
              ENDDO.
              s0 = l6. s1 = 8. s0 = s0 + s1. l6 = s0. s0 = p2. s1 = 1. s0 = s0 - s1. p2 = s0.
              IF s0 <> 0. EXIT. ENDIF. " br_if 0
            ENDDO.
          ELSE.
          ENDIF.
          DO 1 TIMES. " block
            s0 = l8. s0 = mem_ld_i32_16u( s0 + 6 ). s1 = 48.
            IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0.
              s0 = l8. s0 = mem_ld_i32_8u( s0 + 5 ). s1 = 1. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). l6 = s0. lv_br = 1. EXIT. " br 1
            ELSE.
            ENDIF.
            s0 = p0. s1 = l11. PERFORM f578 USING s0 s1 CHANGING s0. l6 = s0. s1 = 0.
            IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. lv_br = 4. EXIT. ENDIF. " br_if 4
          ENDDO.
          s0 = l6. s1 = 1. s0 = zcl_wasm_rt=>xor32( iv_a = s0 iv_b = s1 ). p4 = s0. s0 = l7. s0 = mem_ld_i32( s0 + 44 ). l9 = s0.
          IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        ENDDO.
        s0 = p3.
        IF s0 <> 0.
          s0 = l9. s1 = 4. s0 = s0 + s1. l6 = s0.
          DO. " loop
            DO 1 TIMES. " block
              s0 = l6. s0 = mem_ld_i32( s0 ). p2 = s0. s1 = 228.
              IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0. EXIT. ENDIF. " br_if 0
              s0 = p0. s0 = mem_ld_i32( s0 + 16 ). l8 = s0. s0 = mem_ld_i32( s0 + 56 ). s1 = p2. s2 = 2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s0 = mem_ld_i32( s0 ). p2 = s0. s1 = p2. s1 = mem_ld_i32( s1 ).
              l5 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l5. s1 = 1.
              IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0. EXIT. ENDIF. " br_if 0
              s0 = l8. s1 = p2. PERFORM f713 USING s0 s1.
            ENDDO.
            s0 = l6. s1 = 8. s0 = s0 + s1. l6 = s0. s0 = p3. s1 = 1. s0 = s0 - s1. p3 = s0.
            IF s0 <> 0. EXIT. ENDIF. " br_if 0
          ENDDO.
        ELSE.
        ENDIF.
        s0 = p0. s0 = mem_ld_i32( s0 + 16 ). p0 = s0. s1 = 16. s0 = s0 + s1. s1 = l9. s2 = p0. s2 = mem_ld_i32( s2 + 4 ).
        DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
        dispatch_t6( iv_idx = lv_ci_func p0 = s0 p1 = s1 ).
      ENDDO.
      s0 = p4. s1 = 0.
      IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      s0 = zcl_wasm_rt=>extend_u32( s0 ). s1 = 4294967296. s0 = zcl_wasm_rt=>or64( iv_a = s0 iv_b = s1 ). p1 = s0. lv_br = 1. EXIT. " br 1
    ENDDO.
    s0 = l9. s1 = 4. s0 = s0 + s1. l6 = s0.
    DO. " loop
      DO 1 TIMES. " block
        s0 = l6. s0 = mem_ld_i32( s0 ). p2 = s0. s1 = 228.
        IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = p0. s0 = mem_ld_i32( s0 + 16 ). p4 = s0. s0 = mem_ld_i32( s0 + 56 ). s1 = p2. s2 = 2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s0 = mem_ld_i32( s0 ). p2 = s0. s1 = p2. s1 = mem_ld_i32( s1 ). l8 = s1.
        s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l8. s1 = 1.
        IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = p4. s1 = p2. PERFORM f713 USING s0 s1.
      ENDDO.
      s0 = l6. s1 = 8. s0 = s0 + s1. l6 = s0. s0 = p3. s1 = 1. s0 = s0 - s1. p3 = s0.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
    ENDDO.
    s0 = p0. s0 = mem_ld_i32( s0 + 16 ). p0 = s0. s1 = 16. s0 = s0 + s1. s1 = l9. s2 = p0. s2 = mem_ld_i32( s2 + 4 ).
    DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
    dispatch_t6( iv_idx = lv_ci_func p0 = s0 p1 = s1 ).
  ENDDO.
  s0 = l7. s1 = 48. s0 = s0 + s1. gv_g0 = s0. s0 = p1. rv = s0.
ENDFORM.

FORM f333 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i p4 TYPE i p5 TYPE i CHANGING rv TYPE int8.
  DATA l6 TYPE i. DATA l7 TYPE i. DATA l8 TYPE i. DATA l9 TYPE i. DATA l10 TYPE i. DATA l11 TYPE int8. DATA l12 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i.
  DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i.
  DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i.
  DATA s35 TYPE i. DATA s36 TYPE i. DATA s37 TYPE i. DATA s38 TYPE i. DATA s39 TYPE i. DATA s40 TYPE i. DATA s41 TYPE i. DATA s42 TYPE i. DATA s43 TYPE i. DATA s44 TYPE i. DATA s45 TYPE i. DATA s46 TYPE i. DATA s47 TYPE i. DATA s48 TYPE i.
  DATA s49 TYPE i. DATA s50 TYPE i. DATA s51 TYPE i. DATA s52 TYPE i. DATA s53 TYPE i. DATA s54 TYPE i. DATA s55 TYPE i. DATA s56 TYPE i. DATA s57 TYPE i. DATA s58 TYPE i. DATA s59 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 80.
  s0 = s0 - s1. p3 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        s0 = p1. s1 = -4294967296.
        IF zcl_wasm_rt=>lt_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p2 = s0. s0 = mem_ld_i32_16u( s0 + 6 ). s1 = 45.
        IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = p2. s0 = mem_ld_i32( s0 + 32 ). p2 = s0.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      ENDDO.
      s0 = p3. s1 = p0. s2 = 16. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). p2 = s1. s2 = p3. s3 = 16. s2 = s2 + s3. s3 = p2. s3 = mem_ld_i32( s3 + 68 ). s4 = 1084. s3 = s3 + s4. s3 = mem_ld_i32( s3 ). PERFORM f410 USING s1 s2 s3 CHANGING s1.
      mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s1 = 1147410. s2 = p3. PERFORM f970 USING s0 s1 s2 CHANGING s0. s0 = p4. s1 = 0. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = 25769803776. p1 = s0. lv_br = 1. EXIT. " br 1
    ENDDO.
    s0 = 12884901888. p1 = s0.
    DO 1 TIMES. " block
      s0 = p2. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). l11 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 12884901888.
      IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = p2. s0 = mem_ld_i32( s0 + 12 ). p5 = s0. s1 = l11. s1 = zcl_wasm_rt=>wrap_i64( s1 ). l6 = s1. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 4 ). l12 = s1. s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = 2147483647.
        s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). l9 = s1.
        IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        DO 1 TIMES. " block
          s0 = l11. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
          IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = l6. s1 = l6. s1 = mem_ld_i32( s1 ). p5 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p5. s1 = 1.
          IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = l11. PERFORM f453 USING s0 s1.
        ENDDO.
        s0 = p2. s1 = 12884901888. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ).
      ELSE.
      ENDIF.
      s0 = p4. s1 = 1. mem_st_i32( iv_addr = s0 iv_val = s1 ). lv_br = 1. EXIT. " br 1
    ENDDO.
    s0 = p5. s1 = 1. s0 = s0 + s1. l7 = s0. s0 = l6. s1 = 16. s0 = s0 + s1. l8 = s0.
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        s0 = l12. s1 = 2147483648. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 0.
        IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = l8. s1 = p5. s2 = 1. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. l10 = s0. s0 = mem_ld_i32_16u( s0 ). l6 = s0. s1 = 64512. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = 55296.
          IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          s0 = l7. s1 = l9.
          IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          s0 = l8. s1 = l7. s2 = 1. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s0 = mem_ld_i32_16u( s0 ). s1 = 64512. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = 56320.
          IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          s0 = p2. s1 = p5. s2 = 2. s1 = s1 + s2. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = p4. s1 = 0. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s0 = mem_ld_i32( s0 + 16 ). p2 = s0. s1 = 16. s0 = s0 + s1. s1 = 20. s2 = p2.
          s2 = mem_ld_i32( s2 ).
          DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
          s0 = dispatch_t7( iv_idx = lv_ci_func p0 = s0 p1 = s1 ). p2 = s0.
          IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
          s0 = 25769803776. p1 = s0. s0 = p0. s0 = mem_ld_i32( s0 + 16 ). p2 = s0. s0 = mem_ld_i32_8u( s0 + 136 ).
          IF s0 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
          s0 = p2. s1 = 1. mem_st_i32_8( iv_addr = s0 + 136 iv_val = s1 ). s0 = p0. s1 = 1134898. s2 = 0. PERFORM f969 USING s0 s1 s2 CHANGING s0. s0 = p2. s1 = 0. mem_st_i32_8( iv_addr = s0 + 136 iv_val = s1 ). lv_br = 3. EXIT. " br 3
        ELSE.
        ENDIF.
        s0 = p5. s1 = l8. s0 = s0 + s1. s0 = mem_ld_i32_8u( s0 ). l6 = s0.
      ENDDO.
      s0 = p2. s1 = l7. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = p4. s1 = 0. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s0 = mem_ld_i32( s0 + 16 ). p2 = s0. s1 = 16. s0 = s0 + s1. s1 = 18. s2 = p2. s2 = mem_ld_i32( s2 ).
      DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
      s0 = dispatch_t7( iv_idx = lv_ci_func p0 = s0 p1 = s1 ). p2 = s0. s0 = l6. s1 = 256.
      IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = p2.
        IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = 25769803776. p1 = s0. s0 = p0. s0 = mem_ld_i32( s0 + 16 ). p2 = s0. s0 = mem_ld_i32_8u( s0 + 136 ).
          IF s0 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
          s0 = p2. s1 = 1. mem_st_i32_8( iv_addr = s0 + 136 iv_val = s1 ). s0 = p0. s1 = 1134898. s2 = 0. PERFORM f969 USING s0 s1 s2 CHANGING s0. s0 = p2. s1 = 0. mem_st_i32_8( iv_addr = s0 + 136 iv_val = s1 ). lv_br = 3. EXIT. " br 3
        ELSE.
        ENDIF.
        s0 = p2. s1 = 0. mem_st_i32_8( iv_addr = s0 + 17 iv_val = s1 ). s0 = p2. s1 = l6. mem_st_i32_8( iv_addr = s0 + 16 iv_val = s1 ). s0 = p2. s1 = 0. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = p2. s1 = 1.
        zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 4 CHANGING cv_mem = mv_mem ). s0 = p2. s1 = 1. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p2. s0 = zcl_wasm_rt=>extend_u32( s0 ). s1 = -30064771072.
        s0 = zcl_wasm_rt=>or64( iv_a = s0 iv_b = s1 ). p1 = s0. lv_br = 2. EXIT. " br 2
      ELSE.
      ENDIF.
      s0 = p2.
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = 25769803776. p1 = s0. s0 = p0. s0 = mem_ld_i32( s0 + 16 ). p2 = s0. s0 = mem_ld_i32_8u( s0 + 136 ).
        IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
        s0 = p2. s1 = 1. mem_st_i32_8( iv_addr = s0 + 136 iv_val = s1 ). s0 = p0. s1 = 1134898. s2 = 0. PERFORM f969 USING s0 s1 s2 CHANGING s0. s0 = p2. s1 = 0. mem_st_i32_8( iv_addr = s0 + 136 iv_val = s1 ). lv_br = 2. EXIT. " br 2
      ELSE.
      ENDIF.
      s0 = p2. s1 = l6. mem_st_i32_16( iv_addr = s0 + 16 iv_val = s1 ). s0 = p2. s1 = 0. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = p2. s1 = 2147483649.
      zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 4 CHANGING cv_mem = mv_mem ). s0 = p2. s1 = 1. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p2. s0 = zcl_wasm_rt=>extend_u32( s0 ). s1 = -30064771072.
      s0 = zcl_wasm_rt=>or64( iv_a = s0 iv_b = s1 ). p1 = s0. lv_br = 1. EXIT. " br 1
    ENDDO.
    s0 = p2. s1 = 0. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = p2. s1 = 2147483650. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 4 CHANGING cv_mem = mv_mem ). s0 = p2. s1 = 1. mem_st_i32( iv_addr = s0 iv_val = s1 ).
    s0 = p2. s1 = l10. s1 = mem_ld_i32( s1 ). mem_st_i32( iv_addr = s0 + 16 iv_val = s1 ). s0 = p2. s0 = zcl_wasm_rt=>extend_u32( s0 ). s1 = -30064771072. s0 = zcl_wasm_rt=>or64( iv_a = s0 iv_b = s1 ). p1 = s0.
  ENDDO.
  s0 = p3. s1 = 80. s0 = s0 + s1. gv_g0 = s0. s0 = p1. rv = s0.
ENDFORM.

FORM f334 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i CHANGING rv TYPE int8.
  DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE int8. DATA l8 TYPE int8. DATA l9 TYPE int8. DATA l10 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i.
  DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i.
  DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i.
  DATA s35 TYPE i. DATA s36 TYPE i. DATA s37 TYPE i. DATA s38 TYPE i. DATA s39 TYPE i. DATA s40 TYPE i. DATA s41 TYPE i. DATA s42 TYPE i. DATA s43 TYPE i. DATA s44 TYPE i. DATA s45 TYPE i. DATA s46 TYPE i. DATA s47 TYPE i. DATA s48 TYPE i.
  DATA s49 TYPE i. DATA s50 TYPE i. DATA s51 TYPE i. DATA s52 TYPE i. DATA s53 TYPE i. DATA s54 TYPE i. DATA s55 TYPE i. DATA s56 TYPE i. DATA s57 TYPE i. DATA s58 TYPE i. DATA s59 TYPE i. DATA s60 TYPE i. DATA s61 TYPE i. DATA s62 TYPE i.
  DATA s63 TYPE i. DATA s64 TYPE i. DATA s65 TYPE i. DATA s66 TYPE i. DATA s67 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 32. s0 = s0 - s1. l4 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      s0 = p0. s1 = p0. s2 = p1. PERFORM f151 USING s1 s2 CHANGING s1. l8 = s1. s2 = 48. s3 = l8. s4 = 0. PERFORM f192 USING s0 s1 s2 s3 s4 CHANGING s0. p1 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ).
      s1 = 25769803776.
      IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = l4. s1 = 0. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 16 CHANGING cv_mem = mv_mem ). lv_br = 1. EXIT. " br 1
      ELSE.
      ENDIF.
      s0 = p1. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). l5 = s0. s1 = -11.
      IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l6 = s0. s1 = l6. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
      ELSE.
      ENDIF.
      DO 1 TIMES. " block
        s0 = p0. s1 = l4. s2 = 16. s1 = s1 + s2. s2 = p1. PERFORM f719 USING s0 s1 s2 CHANGING s0. l6 = s0.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = l4. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 16 ). l9 = s0. s1 = 0.
        IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = 9007199254740991. l7 = s0. s0 = l9. s1 = 9007199254740992.
          IF zcl_wasm_rt=>lt_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        ELSE.
        ENDIF.
        s0 = l4. s1 = l7. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 16 CHANGING cv_mem = mv_mem ).
      ENDDO.
      DO 1 TIMES. " block
        s0 = l5. s1 = -11.
        IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l5 = s0. s1 = l5. s1 = mem_ld_i32( s1 ). l5 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l5. s1 = 1.
        IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = p1. PERFORM f453 USING s0 s1.
      ENDDO.
      s0 = l6.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      DO 1 TIMES. " block
        s0 = l4. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 16 ). l10 = s0. s1 = 0.
        IF s0 <= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = -1. l7 = s0. lv_br = 1. EXIT. " br 1
        ELSE.
        ENDIF.
        s0 = l4. s1 = l10. s2 = 1. s1 = s1 - s2. l9 = s1. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 8 CHANGING cv_mem = mv_mem ).
        DO 1 TIMES. " block
          s0 = p2. s1 = 2.
          IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0.
            s0 = l9. p1 = s0. lv_br = 1. EXIT. " br 1
          ELSE.
          ENDIF.
          s0 = p3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 8 ). p1 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
          IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0.
            s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p2 = s0. s1 = p2. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
          ELSE.
          ENDIF.
          s0 = p0. s1 = l4. s2 = 8. s1 = s1 + s2. s2 = p1. PERFORM f719 USING s0 s1 s2 CHANGING s0.
          IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
          s0 = -1. l7 = s0.
          DO 1 TIMES. " block
            DO 1 TIMES. " block
              s0 = l4. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 8 ). p1 = s0. s1 = 0.
              IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0.
                s0 = l4. s1 = p1. s2 = l10. s1 = s1 + s2. p1 = s1. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 8 CHANGING cv_mem = mv_mem ). s0 = p1. s1 = -1.
                IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
              ELSE.
              ENDIF.
              s0 = l9. l7 = s0. s0 = p1. s1 = l10.
              IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
            ENDDO.
            s0 = l4. s1 = l7. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 8 CHANGING cv_mem = mv_mem ). s0 = l7. p1 = s0.
          ENDDO.
          s0 = p1. s1 = 0.
          IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = -1. l7 = s0. lv_br = 1. EXIT. " br 1
        ENDDO.
        DO. " loop
          s0 = p0. s1 = l8. s2 = p1. s3 = l4. s4 = 24. s3 = s3 + s4. PERFORM f686 USING s0 s1 s2 s3 CHANGING s0. p2 = s0. s1 = 0.
          IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
          DO 1 TIMES. " block
            s0 = p2.
            IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. EXIT. ENDIF. " br_if 0
            s0 = p3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). p1 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
            IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0.
              s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p2 = s0. s1 = p2. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
            ELSE.
            ENDIF.
            s0 = p0. s1 = p1. s2 = l4. s2 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s2 + 24 ). s3 = 0. PERFORM f199 USING s0 s1 s2 s3 CHANGING s0.
            IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. EXIT. ENDIF. " br_if 0
            s0 = l4. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 8 ). l7 = s0. lv_br = 2. EXIT. " br 2
          ENDDO.
          s0 = -1. l7 = s0. s0 = l4. s1 = l4. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 8 ). l9 = s1. s2 = 1. s1 = s1 - s2. p1 = s1.
          zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 8 CHANGING cv_mem = mv_mem ). s0 = l9. s1 = 0.
          IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
        ENDDO.
      ENDDO.
      DO 1 TIMES. " block
        s0 = l8. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
        IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = l8. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p2 = s0. s1 = p2. s1 = mem_ld_i32( s1 ). p2 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p2. s1 = 1.
        IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = l8. PERFORM f453 USING s0 s1.
      ENDDO.
      s0 = l7. s1 = 2147483648. s0 = s0 + s1. s1 = 4294967295.
      IF zcl_wasm_rt=>le_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = l7. s1 = 4294967295. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). p1 = s0. lv_br = 2. EXIT. " br 2
      ELSE.
      ENDIF.
      s0 = -51539607552. s1 = l7. s1 = s1. " convert to f64 s1 = zcl_wasm_rt=>reinterpret_f64_i64( s1 ). p1 = s1. s2 = 9221120288580698112. s1 = s1 - s2. s2 = p1. s3 = 9223372036854775807. s2 = zcl_wasm_rt=>and64( iv_a = s2 iv_b = s3 ).
      s3 = 9218868437227405312.
      IF zcl_wasm_rt=>gt_u64( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
      IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
      p1 = s0. lv_br = 1. EXIT. " br 1
    ENDDO.
    s0 = 25769803776. p1 = s0. s0 = l8. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
    IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l8. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p2 = s0. s1 = p2. s1 = mem_ld_i32( s1 ). p2 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p2. s1 = 1.
    IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = l8. PERFORM f453 USING s0 s1.
  ENDDO.
  s0 = l4. s1 = 32. s0 = s0 + s1. gv_g0 = s0. s0 = p1. rv = s0.
ENDFORM.

FORM f335 USING p0 TYPE i p1 TYPE i p2 TYPE i.
  DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE int8. DATA l8 TYPE int8. DATA l9 TYPE int8. DATA l10 TYPE int8. DATA l11 TYPE int8. DATA l12 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i.
  DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i.
  DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i.
  DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i. DATA s36 TYPE i. DATA s37 TYPE i. DATA s38 TYPE i. DATA s39 TYPE i. DATA s40 TYPE i. DATA s41 TYPE i. DATA s42 TYPE i. DATA s43 TYPE i. DATA s44 TYPE i.
  DATA s45 TYPE i. DATA s46 TYPE i. DATA s47 TYPE i. DATA s48 TYPE i. DATA s49 TYPE i. DATA s50 TYPE i. DATA s51 TYPE i. DATA s52 TYPE i. DATA s53 TYPE i. DATA s54 TYPE i. DATA s55 TYPE i. DATA s56 TYPE i. DATA s57 TYPE i. DATA s58 TYPE i.
  DATA s59 TYPE i. DATA s60 TYPE i. DATA s61 TYPE i. DATA s62 TYPE i. DATA s63 TYPE i. DATA s64 TYPE i. DATA s65 TYPE i. DATA s66 TYPE i. DATA s67 TYPE i. DATA s68 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = p0. s1 = mem_ld_i32( s1 + 56 ).
  s2 = p2. s1 = s1 + s2. mem_st_i32( iv_addr = s0 + 56 iv_val = s1 ).
  DO 1 TIMES. " block
    s0 = p0. s0 = mem_ld_i32( s0 + 60 ). l5 = s0.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = 4. l3 = s0.
    DO 1 TIMES. " block
      s0 = p2. s1 = 8. s2 = l5. s1 = s1 - s2. l4 = s1. s2 = p2. s3 = l4.
      IF zcl_wasm_rt=>lt_u32( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
      IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
      l6 = s0. s1 = 4.
      IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = 0. l3 = s0. s0 = 0. lv_br = 1. EXIT. " br 1
      ELSE.
      ENDIF.
      s1 = p1. s1 = zcl_wasm_rt=>mem_ld_i64_ext( iv_mem = mv_mem iv_addr = s1 + 0 iv_op = 53 ).
    ENDDO.
    l7 = s1. s1 = l6. s2 = l3. s3 = 1. s2 = zcl_wasm_rt=>or32( iv_a = s2 iv_b = s3 ).
    IF zcl_wasm_rt=>gt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
    IF s1 <> 0.
      s1 = p1. s2 = l3. s1 = s1 + s2. s1 = zcl_wasm_rt=>mem_ld_i64_ext( iv_mem = mv_mem iv_addr = s1 + 0 iv_op = 51 ). s2 = l3. s3 = 3. s2 = zcl_wasm_rt=>shl32( iv_val = s2 iv_shift = s3 ). s2 = zcl_wasm_rt=>extend_u32( s2 ).
      s1 = zcl_wasm_rt=>shl64( iv_val = s1 iv_shift = s2 ). s2 = l7. s1 = zcl_wasm_rt=>or64( iv_a = s1 iv_b = s2 ). l7 = s1. s1 = l3. s2 = 2. s1 = zcl_wasm_rt=>or32( iv_a = s1 iv_b = s2 ). l3 = s1.
    ELSE.
    ENDIF.
    s1 = p0. s2 = p0. s2 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s2 + 48 ). s3 = l3. s4 = l6.
    IF zcl_wasm_rt=>lt_u32( iv_a = s3 iv_b = s4 ) = abap_true. s3 = 1. ELSE. s3 = 0. ENDIF.
    IF s3 <> 0.
      s3 = p1. s4 = l3. s3 = s3 + s4. s3 = zcl_wasm_rt=>mem_ld_i64_ext( iv_mem = mv_mem iv_addr = s3 + 0 iv_op = 49 ). s4 = l3. s5 = 3. s4 = zcl_wasm_rt=>shl32( iv_val = s4 iv_shift = s5 ). s4 = zcl_wasm_rt=>extend_u32( s4 ).
      s3 = zcl_wasm_rt=>shl64( iv_val = s3 iv_shift = s4 ). s4 = l7. s3 = zcl_wasm_rt=>or64( iv_a = s3 iv_b = s4 ).
    ELSE.
      s4 = l7.
    ENDIF.
    s5 = l5. s6 = 3. s5 = zcl_wasm_rt=>shl32( iv_val = s5 iv_shift = s6 ). s6 = 56. s5 = zcl_wasm_rt=>and32( iv_a = s5 iv_b = s6 ). s5 = zcl_wasm_rt=>extend_u32( s5 ). s4 = zcl_wasm_rt=>shl64( iv_val = s4 iv_shift = s5 ).
    s3 = zcl_wasm_rt=>or64( iv_a = s3 iv_b = s4 ). l7 = s3. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s3 iv_addr = s2 + 48 CHANGING cv_mem = mv_mem ). s2 = p2. s3 = l4.
    IF zcl_wasm_rt=>ge_u32( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
    IF s2 <> 0.
      s2 = p0. s3 = p0. s3 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s3 + 24 ). s4 = l7. s3 = zcl_wasm_rt=>xor64( iv_a = s3 iv_b = s4 ). l8 = s3. s4 = p0. s4 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s4 + 8 ).
      s3 = s3 + s4. l10 = s3. s4 = p0. s4 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s4 + 16 ). l9 = s4. s5 = 13. s4 = zcl_wasm_rt=>rotl64( iv_val = s4 iv_shift = s5 ). s5 = l9. s6 = p0.
      s6 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s6 + 0 ). s5 = s5 + s6. l9 = s5. s4 = zcl_wasm_rt=>xor64( iv_a = s4 iv_b = s5 ). l11 = s4. s3 = s3 + s4. l12 = s3. s4 = l11. s5 = 17.
      s4 = zcl_wasm_rt=>rotl64( iv_val = s4 iv_shift = s5 ). s3 = zcl_wasm_rt=>xor64( iv_a = s3 iv_b = s4 ). zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s3 iv_addr = s2 + 16 CHANGING cv_mem = mv_mem ). s2 = p0. s3 = l12. s4 = 32.
      s3 = zcl_wasm_rt=>rotl64( iv_val = s3 iv_shift = s4 ). zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s3 iv_addr = s2 + 8 CHANGING cv_mem = mv_mem ). s2 = p0. s3 = l10. s4 = l8. s5 = 16.
      s4 = zcl_wasm_rt=>rotl64( iv_val = s4 iv_shift = s5 ). s3 = zcl_wasm_rt=>xor64( iv_a = s3 iv_b = s4 ). l8 = s3. s4 = 21. s3 = zcl_wasm_rt=>rotl64( iv_val = s3 iv_shift = s4 ). s4 = l8. s5 = l9. s6 = 32.
      s5 = zcl_wasm_rt=>rotl64( iv_val = s5 iv_shift = s6 ). s4 = s4 + s5. l8 = s4. s3 = zcl_wasm_rt=>xor64( iv_a = s3 iv_b = s4 ). zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s3 iv_addr = s2 + 24 CHANGING cv_mem = mv_mem ). s2 = p0.
      s3 = l7. s4 = l8. s3 = zcl_wasm_rt=>xor64( iv_a = s3 iv_b = s4 ). zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s3 iv_addr = s2 + 0 CHANGING cv_mem = mv_mem ). lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s2 = p0. s3 = p2. s4 = l5. s3 = s3 + s4. mem_st_i32( iv_addr = s2 + 60 iv_val = s3 ).
    RETURN.
  ENDDO.
  s2 = p2. s3 = l4. s2 = s2 - s3. p2 = s2. s3 = 7. s2 = zcl_wasm_rt=>and32( iv_a = s2 iv_b = s3 ). l3 = s2. s2 = p2. s3 = -8. s2 = zcl_wasm_rt=>and32( iv_a = s2 iv_b = s3 ). p2 = s2. s3 = l4.
  IF zcl_wasm_rt=>gt_u32( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
  IF s2 <> 0.
    s2 = p0. s2 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s2 + 8 ). l8 = s2. s2 = p0. s2 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s2 + 16 ). l7 = s2. s2 = p0.
    s2 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s2 + 24 ). l10 = s2. s2 = p0. s2 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s2 + 0 ). l9 = s2.
    DO. " loop
      s2 = l8. s3 = l10. s4 = p1. s5 = l4. s4 = s4 + s5. s4 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s4 + 0 ). l11 = s4. s3 = zcl_wasm_rt=>xor64( iv_a = s3 iv_b = s4 ). l10 = s3. s2 = s2 + s3. l8 = s2. s3 = l7. s4 = l9.
      s3 = s3 + s4. l9 = s3. s4 = l7. s5 = 13. s4 = zcl_wasm_rt=>rotl64( iv_val = s4 iv_shift = s5 ). s3 = zcl_wasm_rt=>xor64( iv_a = s3 iv_b = s4 ). l7 = s3. s2 = s2 + s3. l12 = s2. s3 = l7. s4 = 17.
      s3 = zcl_wasm_rt=>rotl64( iv_val = s3 iv_shift = s4 ). s2 = zcl_wasm_rt=>xor64( iv_a = s2 iv_b = s3 ). l7 = s2. s2 = l8. s3 = l10. s4 = 16. s3 = zcl_wasm_rt=>rotl64( iv_val = s3 iv_shift = s4 ).
      s2 = zcl_wasm_rt=>xor64( iv_a = s2 iv_b = s3 ). l8 = s2. s3 = 21. s2 = zcl_wasm_rt=>rotl64( iv_val = s2 iv_shift = s3 ). s3 = l8. s4 = l9. s5 = 32. s4 = zcl_wasm_rt=>rotl64( iv_val = s4 iv_shift = s5 ). s3 = s3 + s4. l9 = s3.
      s2 = zcl_wasm_rt=>xor64( iv_a = s2 iv_b = s3 ). l10 = s2. s2 = l12. s3 = 32. s2 = zcl_wasm_rt=>rotl64( iv_val = s2 iv_shift = s3 ). l8 = s2. s2 = l9. s3 = l11. s2 = zcl_wasm_rt=>xor64( iv_a = s2 iv_b = s3 ). l9 = s2. s2 = l4. s3 = 8.
      s2 = s2 + s3. l4 = s2. s3 = p2.
      IF zcl_wasm_rt=>lt_u32( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
      IF s2 <> 0. EXIT. ENDIF. " br_if 0
    ENDDO.
    s2 = p0. s3 = l7. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s3 iv_addr = s2 + 16 CHANGING cv_mem = mv_mem ). s2 = p0. s3 = l10. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s3 iv_addr = s2 + 24 CHANGING cv_mem = mv_mem ). s2 = p0.
    s3 = l8. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s3 iv_addr = s2 + 8 CHANGING cv_mem = mv_mem ). s2 = p0. s3 = l9. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s3 iv_addr = s2 + 0 CHANGING cv_mem = mv_mem ).
  ELSE.
  ENDIF.
  s2 = 4. p2 = s2.
  DO 1 TIMES. " block
    s2 = l3. s3 = 4.
    IF zcl_wasm_rt=>lt_u32( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
    IF s2 <> 0.
      s2 = 0. p2 = s2. s2 = 0. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s3 = p1. s4 = l4. s3 = s3 + s4. s3 = zcl_wasm_rt=>mem_ld_i64_ext( iv_mem = mv_mem iv_addr = s3 + 0 iv_op = 53 ).
  ENDDO.
  l7 = s3. s3 = l3. s4 = p2. s5 = 1. s4 = zcl_wasm_rt=>or32( iv_a = s4 iv_b = s5 ).
  IF zcl_wasm_rt=>gt_u32( iv_a = s3 iv_b = s4 ) = abap_true. s3 = 1. ELSE. s3 = 0. ENDIF.
  IF s3 <> 0.
    s3 = p1. s4 = p2. s3 = s3 + s4. s4 = l4. s3 = s3 + s4. s3 = zcl_wasm_rt=>mem_ld_i64_ext( iv_mem = mv_mem iv_addr = s3 + 0 iv_op = 51 ). s4 = p2. s5 = 3. s4 = zcl_wasm_rt=>shl32( iv_val = s4 iv_shift = s5 ).
    s4 = zcl_wasm_rt=>extend_u32( s4 ). s3 = zcl_wasm_rt=>shl64( iv_val = s3 iv_shift = s4 ). s4 = l7. s3 = zcl_wasm_rt=>or64( iv_a = s3 iv_b = s4 ). l7 = s3. s3 = p2. s4 = 2. s3 = zcl_wasm_rt=>or32( iv_a = s3 iv_b = s4 ). p2 = s3.
  ELSE.
  ENDIF.
  s3 = p0. s4 = p2. s5 = l3.
  IF zcl_wasm_rt=>lt_u32( iv_a = s4 iv_b = s5 ) = abap_true. s4 = 1. ELSE. s4 = 0. ENDIF.
  IF s4 <> 0.
    s4 = p1. s5 = p2. s6 = l4. s5 = s5 + s6. s4 = s4 + s5. s4 = zcl_wasm_rt=>mem_ld_i64_ext( iv_mem = mv_mem iv_addr = s4 + 0 iv_op = 49 ). s5 = p2. s6 = 3. s5 = zcl_wasm_rt=>shl32( iv_val = s5 iv_shift = s6 ).
    s5 = zcl_wasm_rt=>extend_u32( s5 ). s4 = zcl_wasm_rt=>shl64( iv_val = s4 iv_shift = s5 ). s5 = l7. s4 = zcl_wasm_rt=>or64( iv_a = s4 iv_b = s5 ).
  ELSE.
    s5 = l7.
  ENDIF.
  zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s5 iv_addr = s4 + 48 CHANGING cv_mem = mv_mem ). s4 = p0. s5 = l3. mem_st_i32( iv_addr = s4 + 60 iv_val = s5 ).
ENDFORM.

FORM f336 USING p0 TYPE i p1 TYPE i p2 TYPE i p3 TYPE int8 CHANGING rv TYPE i.
  DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE i. DATA l8 TYPE i. DATA l9 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i.
  DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i.
  DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i.
  DATA s36 TYPE i. DATA s37 TYPE i. DATA s38 TYPE i. DATA s39 TYPE i. DATA s40 TYPE i. DATA s41 TYPE i. DATA s42 TYPE i. DATA s43 TYPE i. DATA s44 TYPE i. DATA s45 TYPE i. DATA s46 TYPE i. DATA s47 TYPE i. DATA s48 TYPE i. DATA s49 TYPE i.
  DATA s50 TYPE i. DATA s51 TYPE i. DATA s52 TYPE i. DATA s53 TYPE i. DATA s54 TYPE i. DATA s55 TYPE i. DATA s56 TYPE i. DATA s57 TYPE i. DATA s58 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 32. s0 = s0 - s1. l6 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      s0 = p2. s1 = 142.
      IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = p0. s0 = mem_ld_i32( s0 + 16 ). l4 = s0. lv_br = 1. EXIT. " br 1
      ELSE.
      ENDIF.
      s0 = p0. s1 = 16. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). l4 = s0. s1 = 140. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). l5 = s0.
      IF s0 <> 0.
        s0 = l5. s0 = mem_ld_i32_8u( s0 + 40 ). s1 = 4. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      ELSE.
      ENDIF.
      s0 = p0. s1 = 1152327. s2 = 0. PERFORM f970 USING s0 s1 s2 CHANGING s0. s0 = -1. p2 = s0. s0 = p3. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
      IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p3. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p1 = s0. s1 = p1. s1 = mem_ld_i32( s1 ). p1 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p1. s1 = 1.
      IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p0. s1 = 16. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). s1 = p3. PERFORM f453 USING s0 s1. lv_br = 1. EXIT. " br 1
    ENDDO.
    s0 = l4. s1 = 16. s0 = s0 + s1. s1 = 24. s2 = l4. s2 = mem_ld_i32( s2 ).
    DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
    s0 = dispatch_t7( iv_idx = lv_ci_func p0 = s0 p1 = s1 ). l4 = s0.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p0. s0 = mem_ld_i32( s0 + 16 ). p1 = s0. s0 = mem_ld_i32_8u( s0 + 136 ).
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = p1. s1 = 1. mem_st_i32_8( iv_addr = s0 + 136 iv_val = s1 ). s0 = p0. s1 = 1134898. s2 = 0. PERFORM f969 USING s0 s1 s2 CHANGING s0. s0 = p1. s1 = 0. mem_st_i32_8( iv_addr = s0 + 136 iv_val = s1 ).
      ELSE.
      ENDIF.
      s0 = -1. p2 = s0. s0 = p3. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
      IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p3. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p1 = s0. s1 = p1. s1 = mem_ld_i32( s1 ). p1 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p1. s1 = 1.
      IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = p3. PERFORM f453 USING s0 s1. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = l4. s1 = 1. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s0 = mem_ld_i32( s0 + 216 ). l8 = s0. s0 = l4. s1 = 4. s0 = s0 + s1. l7 = s0. l5 = s0. s1 = 0.
    zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 12 CHANGING cv_mem = mv_mem ). s0 = l5. s1 = -9223372036854775808. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 4 CHANGING cv_mem = mv_mem ). s0 = l5.
    s1 = l8. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l4. s0 = zcl_wasm_rt=>extend_u32( s0 ). s1 = -38654705664. s0 = zcl_wasm_rt=>or64( iv_a = s0 iv_b = s1 ). l9 = s0. s0 = p0. s1 = l6. s2 = 8. s1 = s1 + s2. s2 = p3.
    PERFORM f754 USING s0 s1 s2 CHANGING s0. l5 = s0.
    IF s0 <> 0.
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          DO 1 TIMES. " block
            DO 1 TIMES. " block
              DO 1 TIMES. " block
                s0 = p2. s1 = 141. s0 = s0 - s1.
                CASE s0.
                  WHEN 0. lv_br = 1. EXIT.
                  WHEN 1. EXIT.
                  WHEN 2. lv_br = 3. EXIT.
                  WHEN 3. lv_br = 3. EXIT.
                  WHEN OTHERS. lv_br = 2. EXIT.
                ENDCASE.
              ENDDO.
              s0 = l7. s1 = l5. PERFORM f832 USING s0 s1 CHANGING s0. p2 = s0. lv_br = 3. EXIT. " br 3
            ENDDO.
            s0 = l7. s1 = l5. PERFORM f832 USING s0 s1 CHANGING s0. p2 = s0. s0 = l4. s1 = 8. s0 = s0 + s1. l4 = s0. s1 = l4. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = zcl_wasm_rt=>xor32( iv_a = s1 iv_b = s2 ).
            mem_st_i32( iv_addr = s0 iv_val = s1 ). lv_br = 2. EXIT. " br 2
          ENDDO.
          RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
        ENDDO.
        s0 = l7. s1 = l5. s2 = p2. s3 = 1. s2 = zcl_wasm_rt=>shl32( iv_val = s2 iv_shift = s3 ). s3 = 287. s2 = s2 - s3. s2 = s2. " i64.extend_i32_s (noop in ABAP - sign preserved) s3 = p0. s3 = mem_ld_i32( s3 + 220 ). s4 = p0. s5 = 224.
        s4 = s4 + s5. s4 = mem_ld_i32( s4 ). PERFORM f403 USING s0 s1 s2 s3 s4 CHANGING s0. p2 = s0.
      ENDDO.
      DO 1 TIMES. " block
        s0 = l5. s1 = l6. s2 = 8. s1 = s1 + s2.
        IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = l6. s0 = mem_ld_i32( s0 + 8 ). l4 = s0.
        IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = l6. s0 = mem_ld_i32( s0 + 24 ). l5 = s0.
        IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = l4. s0 = mem_ld_i32( s0 ). s1 = l5. s2 = 0. s3 = l4. s4 = 4. s3 = s3 + s4. s3 = mem_ld_i32( s3 ).
        DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
        s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ).
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
      s0 = p2. s1 = 32. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
      IF s0 <> 0.
        s0 = p0. s1 = l9. PERFORM f1164 USING s0 s1. s0 = p0. s1 = p2. PERFORM f1013 USING s0 s1. s0 = -1. p2 = s0. lv_br = 2. EXIT. " br 2
      ELSE.
      ENDIF.
      s0 = p1. s1 = l9. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ). s0 = 0. p2 = s0. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = -1. p2 = s0. s0 = l4. s1 = l4. s1 = mem_ld_i32( s1 ). p1 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p1. s1 = 1.
    IF s0 <= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = l9. PERFORM f453 USING s0 s1.
    ELSE.
    ENDIF.
    s0 = p3. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
    IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p3. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p1 = s0. s1 = p1. s1 = mem_ld_i32( s1 ). p1 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p1. s1 = 1.
    IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = p3. PERFORM f453 USING s0 s1.
  ENDDO.
  s0 = l6. s1 = 32. s0 = s0 + s1. gv_g0 = s0. s0 = p2. rv = s0.
ENDFORM.

FORM f337 USING p0 TYPE i p1 TYPE i p2 TYPE i.
  DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i.
  DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i.
  DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i. DATA s36 TYPE i. DATA s37 TYPE i.
  DATA s38 TYPE i. DATA s39 TYPE i. DATA s40 TYPE i. DATA s41 TYPE i. DATA s42 TYPE i. DATA s43 TYPE i. DATA s44 TYPE i. DATA s45 TYPE i. DATA s46 TYPE i. DATA s47 TYPE i. DATA s48 TYPE i. DATA s49 TYPE i. DATA s50 TYPE i. DATA s51 TYPE i.
  DATA s52 TYPE i. DATA s53 TYPE i. DATA s54 TYPE i. DATA s55 TYPE i. DATA s56 TYPE i. DATA s57 TYPE i. DATA s58 TYPE i. DATA s59 TYPE i. DATA s60 TYPE i. DATA s61 TYPE i. DATA s62 TYPE i. DATA s63 TYPE i. DATA s64 TYPE i. DATA s65 TYPE i.
  DATA s66 TYPE i. DATA s67 TYPE i. DATA s68 TYPE i. DATA s69 TYPE i. DATA s70 TYPE i. DATA s71 TYPE i. DATA s72 TYPE i. DATA s73 TYPE i. DATA s74 TYPE i. DATA s75 TYPE i. DATA s76 TYPE i. DATA s77 TYPE i. DATA s78 TYPE i.
  DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l5 = s0. gv_g0 = s0. s0 = p1. s0 = mem_ld_i32( s0 ). s1 = 0.
  IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    DO 1 TIMES. " block
      s0 = p0. s1 = 80. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). l3 = s0. s0 = mem_ld_i32( s0 + 296 ). s1 = l3. s1 = mem_ld_i32( s1 + 300 ). l4 = s1.
      IF s0 <= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = l4. s1 = 1. s0 = s0 + s1. l6 = s0. s0 = -1. l4 = s0. s0 = l3. s0 = mem_ld_i32( s0 ). s1 = l3. s2 = 292. s1 = s1 + s2. s2 = 20. s3 = l3. s4 = 296. s3 = s3 + s4. s4 = l6. PERFORM f845 USING s0 s1 s2 s3 s4 CHANGING s0.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        s0 = l3. s0 = mem_ld_i32( s0 + 300 ). l4 = s0.
      ELSE.
      ENDIF.
      s0 = l3. s1 = l4. s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 + 300 iv_val = s1 ). s0 = l3. s0 = mem_ld_i32( s0 + 292 ). s1 = l4. s2 = 20. s1 = s1 * s2. s0 = s0 + s1. l3 = s0. s1 = 0. mem_st_i32( iv_addr = s0 + 16 iv_val = s1 ).
      s0 = l3. s1 = -1. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 8 CHANGING cv_mem = mv_mem ). s0 = l3. s1 = -4294967296. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ).
    ENDDO.
    s0 = p1. s1 = l4. mem_st_i32( iv_addr = s0 iv_val = s1 ).
  ELSE.
  ENDIF.
  s0 = p0. s0 = mem_ld_i32( s0 + 80 ). l3 = s0. s1 = 256. s0 = s0 + s1. l4 = s0. s0 = l3. s0 = mem_ld_i32( s0 + 284 ). s1 = p0. s1 = mem_ld_i32( s1 + 4 ).
  IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = l4. s1 = 200. PERFORM f908 USING s0 s1. s0 = l5. s1 = p0. s1 = mem_ld_i32( s1 + 4 ). mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = l4. s1 = l5. s2 = 12. s1 = s1 + s2. s2 = 4. PERFORM f1097 USING s0 s1 s2. s0 = l3. s1 = p0.
    s1 = mem_ld_i32( s1 + 4 ). mem_st_i32( iv_addr = s0 + 284 iv_val = s1 ).
  ELSE.
  ENDIF.
  s0 = l3. s1 = l3. s2 = 260. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). mem_st_i32( iv_addr = s0 + 280 iv_val = s1 ). s0 = l4. s1 = 17. PERFORM f908 USING s0 s1. s0 = p0. s0 = mem_ld_i32( s0 + 80 ). l3 = s0. s1 = 256. s0 = s0 + s1. l4 = s0.
  s0 = l3. s0 = mem_ld_i32( s0 + 284 ). s1 = p0. s1 = mem_ld_i32( s1 + 4 ).
  IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = l4. s1 = 200. PERFORM f908 USING s0 s1. s0 = l5. s1 = p0. s1 = mem_ld_i32( s1 + 4 ). mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = l4. s1 = l5. s2 = 12. s1 = s1 + s2. s2 = 4. PERFORM f1097 USING s0 s1 s2. s0 = l3. s1 = p0.
    s1 = mem_ld_i32( s1 + 4 ). mem_st_i32( iv_addr = s0 + 284 iv_val = s1 ).
  ELSE.
  ENDIF.
  s0 = l3. s1 = l3. s2 = 260. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). mem_st_i32( iv_addr = s0 + 280 iv_val = s1 ). s0 = l4. s1 = 177. PERFORM f908 USING s0 s1. s0 = p0. s1 = 106. s2 = -1. PERFORM f582 USING s0 s1 s2 CHANGING s0. l4 = s0.
  s0 = p2. s1 = 0.
  IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    DO. " loop
      s0 = p0. s0 = mem_ld_i32( s0 + 80 ). l3 = s0. s1 = 256. s0 = s0 + s1. l6 = s0. s0 = l3. s0 = mem_ld_i32( s0 + 284 ). s1 = p0. s1 = mem_ld_i32( s1 + 4 ).
      IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = l6. s1 = 200. PERFORM f908 USING s0 s1. s0 = l5. s1 = p0. s1 = mem_ld_i32( s1 + 4 ). mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = l6. s1 = l5. s2 = 12. s1 = s1 + s2. s2 = 4. PERFORM f1097 USING s0 s1 s2. s0 = l3. s1 = p0.
        s1 = mem_ld_i32( s1 + 4 ). mem_st_i32( iv_addr = s0 + 284 iv_val = s1 ).
      ELSE.
      ENDIF.
      s0 = l3. s1 = l3. s2 = 260. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). mem_st_i32( iv_addr = s0 + 280 iv_val = s1 ). s0 = l6. s1 = 14. PERFORM f908 USING s0 s1. s0 = p2. s1 = 1. s0 = s0 - s1. p2 = s0.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
    ENDDO.
  ELSE.
  ENDIF.
  s0 = p0. s0 = mem_ld_i32( s0 + 80 ). p2 = s0. s1 = 256. s0 = s0 + s1. l3 = s0. s0 = p2. s0 = mem_ld_i32( s0 + 284 ). s1 = p0. s1 = mem_ld_i32( s1 + 4 ).
  IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = l3. s1 = 200. PERFORM f908 USING s0 s1. s0 = l5. s1 = p0. s1 = mem_ld_i32( s1 + 4 ). mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = l3. s1 = l5. s2 = 12. s1 = s1 + s2. s2 = 4. PERFORM f1097 USING s0 s1 s2. s0 = p2. s1 = p0.
    s1 = mem_ld_i32( s1 + 4 ). mem_st_i32( iv_addr = s0 + 284 iv_val = s1 ).
  ELSE.
  ENDIF.
  s0 = p2. s1 = p2. s2 = 260. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). mem_st_i32( iv_addr = s0 + 280 iv_val = s1 ). s0 = l3. s1 = 6. PERFORM f908 USING s0 s1. s0 = p0. s1 = 108. s2 = p1. s2 = mem_ld_i32( s2 ).
  PERFORM f582 USING s0 s1 s2 CHANGING s0. s0 = l4. s1 = 0.
  IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = p0. s0 = mem_ld_i32( s0 + 80 ). p1 = s0. s1 = 256. s0 = s0 + s1. p2 = s0. s0 = p1. s0 = mem_ld_i32( s0 + 284 ). s1 = p0. s1 = mem_ld_i32( s1 + 4 ).
    IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p2. s1 = 200. PERFORM f908 USING s0 s1. s0 = l5. s1 = p0. s1 = mem_ld_i32( s1 + 4 ). mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = p2. s1 = l5. s2 = 12. s1 = s1 + s2. s2 = 4. PERFORM f1097 USING s0 s1 s2. s0 = p1. s1 = p0.
      s1 = mem_ld_i32( s1 + 4 ). mem_st_i32( iv_addr = s0 + 284 iv_val = s1 ).
    ELSE.
    ENDIF.
    s0 = p1. s1 = p1. s2 = 260. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). mem_st_i32( iv_addr = s0 + 280 iv_val = s1 ). s0 = p2. s1 = 184. PERFORM f908 USING s0 s1. s0 = p0. s0 = mem_ld_i32( s0 + 80 ). s1 = l5. s2 = l4.
    mem_st_i32( iv_addr = s1 + 12 iv_val = s2 ). s1 = 256. s0 = s0 + s1. s1 = l5. s2 = 12. s1 = s1 + s2. s2 = 4. PERFORM f1097 USING s0 s1 s2. s0 = p0. s0 = mem_ld_i32( s0 + 80 ). p0 = s0. s0 = mem_ld_i32( s0 + 292 ). s1 = l4. s2 = 20.
    s1 = s1 * s2. s0 = s0 + s1. s1 = p0. s2 = 260. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ).
  ELSE.
  ENDIF.
  s0 = l5. s1 = 16. s0 = s0 + s1. gv_g0 = s0.
ENDFORM.

FORM f338 USING p0 TYPE i p1 TYPE i p2 TYPE i p3 TYPE i CHANGING rv TYPE i.
  DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE i. DATA l8 TYPE i. DATA l9 TYPE i. DATA l10 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i.
  DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i.
  DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i.
  DATA s35 TYPE i. DATA s36 TYPE i. DATA s37 TYPE i. DATA s38 TYPE i. DATA s39 TYPE i. DATA s40 TYPE i. DATA s41 TYPE i. DATA s42 TYPE i. DATA s43 TYPE i. DATA s44 TYPE i. DATA s45 TYPE i. DATA s46 TYPE i. DATA s47 TYPE i. DATA s48 TYPE i.
  DATA s49 TYPE i. DATA s50 TYPE i. DATA s51 TYPE i. DATA s52 TYPE i. DATA s53 TYPE i. DATA s54 TYPE i. DATA s55 TYPE i. DATA s56 TYPE i. DATA s57 TYPE i. DATA s58 TYPE i. DATA s59 TYPE i. DATA s60 TYPE i. DATA s61 TYPE i. DATA s62 TYPE i.
  DATA s63 TYPE i. DATA s64 TYPE i. DATA s65 TYPE i. DATA s66 TYPE i. DATA s67 TYPE i. DATA s68 TYPE i. DATA s69 TYPE i. DATA s70 TYPE i. DATA s71 TYPE i. DATA s72 TYPE i. DATA s73 TYPE i. DATA s74 TYPE i. DATA lv_br TYPE i. s0 = p0.
  s1 = p1.
  IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = p0. s0 = mem_ld_i32( s0 ). l4 = s0. s0 = p1. s0 = mem_ld_i32( s0 + 12 ).
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          DO 1 TIMES. " block
            s0 = p1. s0 = mem_ld_i32( s0 + 8 ). s1 = 2147483646. s0 = s0 - s1.
            CASE s0.
              WHEN 0. lv_br = 1. EXIT.
              WHEN 1. EXIT.
              WHEN OTHERS. lv_br = 2. EXIT.
            ENDCASE.
          ENDDO.
          s0 = p0. s0 = mem_ld_i32( s0 + 12 ).
          IF s0 <> 0.
            s0 = l4. s0 = mem_ld_i32( s0 ). s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s2 = 0. s3 = l4. s4 = 4. s3 = s3 + s4. s3 = mem_ld_i32( s3 ).
            DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
            s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). p1 = s0. s0 = p0. s1 = 0. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = p0. s1 = p1. mem_st_i32( iv_addr = s0 + 16 iv_val = s1 ).
          ELSE.
          ENDIF.
          s0 = p0. s1 = 9223372032559808512. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 4 CHANGING cv_mem = mv_mem ). s0 = 0. rv = s0. RETURN.
        ENDDO.
        s0 = p0. s0 = mem_ld_i32( s0 + 12 ). p2 = s0. s0 = p1. s0 = mem_ld_i32( s0 + 4 ).
        IF s0 <> 0.
          s0 = p2.
          IF s0 <> 0.
            s0 = l4. s0 = mem_ld_i32( s0 ). s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s2 = 0. s3 = l4. s4 = 4. s3 = s3 + s4. s3 = mem_ld_i32( s3 ).
            DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
            s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). p1 = s0. s0 = p0. s1 = 0. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = p0. s1 = p1. mem_st_i32( iv_addr = s0 + 16 iv_val = s1 ).
          ELSE.
          ENDIF.
          s0 = p0. s1 = 9223372032559808512. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 4 CHANGING cv_mem = mv_mem ). s0 = 1. rv = s0. RETURN.
        ELSE.
        ENDIF.
        s0 = p2.
        IF s0 <> 0.
          s0 = l4. s0 = mem_ld_i32( s0 ). s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s2 = 0. s3 = l4. s4 = 4. s3 = s3 + s4. s3 = mem_ld_i32( s3 ).
          DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
          s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). p1 = s0. s0 = p0. s1 = 0. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = p0. s1 = p1. mem_st_i32( iv_addr = s0 + 16 iv_val = s1 ).
        ELSE.
        ENDIF.
        s0 = p0. s1 = 9223372028264841216. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 4 CHANGING cv_mem = mv_mem ). s0 = 0. rv = s0. RETURN.
      ENDDO.
      s0 = p0. s0 = mem_ld_i32( s0 + 12 ).
      IF s0 <> 0.
        s0 = l4. s0 = mem_ld_i32( s0 ). s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s2 = 0. s3 = l4. s4 = 4. s3 = s3 + s4. s3 = mem_ld_i32( s3 ).
        DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
        s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). p1 = s0. s0 = p0. s1 = 0. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = p0. s1 = p1. mem_st_i32( iv_addr = s0 + 16 iv_val = s1 ).
      ELSE.
      ENDIF.
      s0 = p0. s1 = 9223372028264841217. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 4 CHANGING cv_mem = mv_mem ). s0 = 0. rv = s0. RETURN.
    ELSE.
    ENDIF.
    s0 = p1. s0 = mem_ld_i32( s0 + 4 ).
    IF s0 <> 0.
      s0 = p0. s0 = mem_ld_i32( s0 + 12 ).
      IF s0 <> 0.
        s0 = l4. s0 = mem_ld_i32( s0 ). s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s2 = 0. s3 = l4. s4 = 4. s3 = s3 + s4. s3 = mem_ld_i32( s3 ).
        DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
        s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). p1 = s0. s0 = p0. s1 = 0. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = p0. s1 = p1. mem_st_i32( iv_addr = s0 + 16 iv_val = s1 ).
      ELSE.
      ENDIF.
      s0 = p0. s1 = 9223372032559808512. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 4 CHANGING cv_mem = mv_mem ). s0 = 1. rv = s0. RETURN.
    ELSE.
    ENDIF.
    DO 1 TIMES. " block
      s0 = l4. s0 = mem_ld_i32( s0 ). s1 = 0. s2 = 4. s3 = l4. s4 = 4. s3 = s3 + s4. s3 = mem_ld_i32( s3 ).
      DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
      s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). l7 = s0.
      IF s0 <> 0.
        s0 = l7. s1 = -2147483648. mem_st_i32( iv_addr = s0 iv_val = s1 ).
        DO 1 TIMES. " block
          s0 = p1. s0 = mem_ld_i32( s0 + 8 ). l5 = s0. s1 = 2147483647.
          IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = p1. s0 = mem_ld_i32( s0 + 4 ).
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = l5. s1 = 1.
          IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = p1. s0 = mem_ld_i32( s0 + 12 ). l5 = s0.
          IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = l5. s1 = 2. s0 = zcl_wasm_rt=>shl32( iv_val = s0 iv_shift = s1 ). l6 = s0. s1 = p1. s1 = mem_ld_i32( s1 + 16 ). s0 = s0 + s1. s1 = 4. s0 = s0 - s1. s0 = mem_ld_i32( s0 ). s1 = -2147483648.
          IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = l5. s1 = 2. s0 = s0 - s1. l8 = s0. s0 = 1. s1 = l5. s2 = l5. s3 = 1.
          IF s2 <= s3. s2 = 1. ELSE. s2 = 0. ENDIF.
          IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
          s1 = 1. s0 = s0 - s1. l9 = s0. s0 = l6. s1 = 8. s0 = s0 - s1. l6 = s0.
          DO. " loop
            s0 = l9. s1 = 0.
            IF s0 <= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
            s0 = 0. l10 = s0. s0 = l5. s1 = l8.
            IF zcl_wasm_rt=>gt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0.
              s0 = p1. s0 = mem_ld_i32( s0 + 16 ). s1 = l6. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). l10 = s0.
            ELSE.
            ENDIF.
            s0 = l9. s1 = 1. s0 = s0 - s1. l9 = s0. s0 = l8. s1 = 1. s0 = s0 - s1. l8 = s0. s0 = l6. s1 = 4. s0 = s0 - s1. l6 = s0. s0 = l10.
            IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. EXIT. ENDIF. " br_if 0
          ENDDO.
        ENDDO.
        s0 = l4. s0 = mem_ld_i32( s0 ). s1 = l7. s2 = 0. s3 = l4. s4 = 4. s3 = s3 + s4. s3 = mem_ld_i32( s3 ).
        DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
        s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ).
      ELSE.
      ENDIF.
      s0 = p0. s1 = p1. s2 = p2. s3 = p3. s4 = 740. s5 = 0. PERFORM f523 USING s0 s1 s2 s3 s4 s5 CHANGING s0. rv = s0. RETURN.
    ENDDO.
    s0 = p0. s0 = mem_ld_i32( s0 + 12 ).
    IF s0 <> 0.
      s0 = p0. s0 = mem_ld_i32( s0 ). p1 = s0. s0 = mem_ld_i32( s0 ). s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s2 = 0. s3 = p1. s4 = 4. s3 = s3 + s4. s3 = mem_ld_i32( s3 ).
      DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
      s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). p1 = s0. s0 = p0. s1 = 0. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = p0. s1 = p1. mem_st_i32( iv_addr = s0 + 16 iv_val = s1 ).
    ELSE.
    ENDIF.
    s0 = p0. s1 = -9223372036854775808. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 4 CHANGING cv_mem = mv_mem ). s0 = l4. s0 = mem_ld_i32( s0 ). s1 = l7. s2 = 0. s3 = l4. s4 = 4. s3 = s3 + s4. s3 = mem_ld_i32( s3 ).
    DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
    s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). s0 = 0. rv = s0. RETURN.
  ELSE.
  ENDIF.
  s0 = 1148871. s1 = 1148547. s2 = 4559. s3 = 1143529. PERFORM f1101 USING s0 s1 s2 s3.
  RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
ENDFORM.

FORM f339 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i CHANGING rv TYPE int8.
  DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE int8. DATA l8 TYPE int8. DATA l9 TYPE int8. DATA l10 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i.
  DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i.
  DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i.
  DATA s35 TYPE i. DATA s36 TYPE i. DATA s37 TYPE i. DATA s38 TYPE i. DATA s39 TYPE i. DATA s40 TYPE i. DATA s41 TYPE i. DATA s42 TYPE i. DATA s43 TYPE i. DATA s44 TYPE i. DATA s45 TYPE i. DATA s46 TYPE i. DATA s47 TYPE i. DATA s48 TYPE i.
  DATA s49 TYPE i. DATA s50 TYPE i. DATA s51 TYPE i. DATA s52 TYPE i. DATA s53 TYPE i. DATA s54 TYPE i. DATA s55 TYPE i. DATA s56 TYPE i. DATA s57 TYPE i. DATA s58 TYPE i. DATA s59 TYPE i. DATA s60 TYPE i. DATA s61 TYPE i. DATA s62 TYPE i.
  DATA s63 TYPE i. DATA s64 TYPE i. DATA s65 TYPE i. DATA s66 TYPE i. DATA s67 TYPE i. DATA s68 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 32. s0 = s0 - s1. l4 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      s0 = p0. s1 = p0. s2 = p1. PERFORM f151 USING s1 s2 CHANGING s1. l9 = s1. s2 = 48. s3 = l9. s4 = 0. PERFORM f192 USING s0 s1 s2 s3 s4 CHANGING s0. p1 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ).
      s1 = 25769803776.
      IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = l4. s1 = 0. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 24 CHANGING cv_mem = mv_mem ). lv_br = 1. EXIT. " br 1
      ELSE.
      ENDIF.
      s0 = p1. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). l5 = s0. s1 = -11.
      IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l6 = s0. s1 = l6. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
      ELSE.
      ENDIF.
      DO 1 TIMES. " block
        s0 = p0. s1 = l4. s2 = 24. s1 = s1 + s2. s2 = p1. PERFORM f719 USING s0 s1 s2 CHANGING s0. l6 = s0.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = l4. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 24 ). l8 = s0. s1 = 0.
        IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = 9007199254740991. l7 = s0. s0 = l8. s1 = 9007199254740992.
          IF zcl_wasm_rt=>lt_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        ELSE.
        ENDIF.
        s0 = l4. s1 = l7. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 24 CHANGING cv_mem = mv_mem ).
      ENDDO.
      DO 1 TIMES. " block
        s0 = l5. s1 = -11.
        IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l5 = s0. s1 = l5. s1 = mem_ld_i32( s1 ). l5 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l5. s1 = 1.
        IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = p1. PERFORM f453 USING s0 s1.
      ENDDO.
      s0 = l6.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = l4. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 24 ). l8 = s0. s0 = p3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). p1 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ).
      s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
      IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l5 = s0. s1 = l5. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
      ELSE.
      ENDIF.
      s0 = p0. s1 = l4. s2 = 8. s1 = s1 + s2. s2 = p1. PERFORM f719 USING s0 s1 s2 CHANGING s0.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          s0 = l4. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 8 ). l7 = s0. s1 = 0.
          IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0.
            s0 = l4. s1 = l7. s2 = l8. s1 = s1 + s2. l7 = s1. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 8 CHANGING cv_mem = mv_mem ). s0 = 0. p1 = s0. s0 = l7. s1 = 0.
            IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          ELSE.
          ENDIF.
          s0 = l8. p1 = s0. s1 = l7.
          IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        ENDDO.
        s0 = l4. s1 = p1. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 8 CHANGING cv_mem = mv_mem ).
      ENDDO.
      s0 = l4. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 24 ). l8 = s0. s0 = p3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 8 ). p1 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ).
      s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
      IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l5 = s0. s1 = l5. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
      ELSE.
      ENDIF.
      s0 = p0. s1 = l4. s2 = 16. s1 = s1 + s2. s2 = p1. PERFORM f719 USING s0 s1 s2 CHANGING s0.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          s0 = l4. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 16 ). l7 = s0. s1 = 0.
          IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0.
            s0 = l4. s1 = l7. s2 = l8. s1 = s1 + s2. l7 = s1. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 16 CHANGING cv_mem = mv_mem ). s0 = 0. p1 = s0. s0 = l7. s1 = 0.
            IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          ELSE.
          ENDIF.
          s0 = l8. p1 = s0. s1 = l7.
          IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        ENDDO.
        s0 = l4. s1 = p1. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 16 CHANGING cv_mem = mv_mem ). s0 = p1. l7 = s0.
      ENDDO.
      s0 = l4. s1 = l4. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 24 ). p1 = s1. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ).
      DO 1 TIMES. " block
        s0 = p1. s1 = p2. s2 = 3.
        IF s1 < s2. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0. EXIT. ENDIF. " br_if 0
        s0 = p1. s1 = p3. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 16 ). l8 = s1. s2 = -4294967296. s1 = zcl_wasm_rt=>and64( iv_a = s1 iv_b = s2 ). s2 = 12884901888.
        IF s1 = s2. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0. EXIT. ENDIF. " br_if 0
        s0 = p0. s1 = l4. s2 = l8. s3 = p1. s4 = p1. PERFORM f1018 USING s0 s1 s2 s3 s4 CHANGING s0.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        s0 = l4. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 24 ). p1 = s0. s0 = l4. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 16 ). l7 = s0. s0 = l4.
        s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ).
      ENDDO.
      l8 = s0. s0 = p0. s1 = l9. s2 = l4. s2 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s2 + 8 ). l10 = s2. s3 = l7. s4 = l8. s5 = l7. s4 = s4 - s5. l8 = s4. s5 = p1. s6 = l10. s5 = s5 - s6. p1 = s5. s6 = p1. s7 = l8.
      IF s6 > s7. s6 = 1. ELSE. s6 = 0. ENDIF.
      IF s6 <> 0. s4 = s4. ELSE. s4 = s5. ENDIF.
      p1 = s4. s5 = 1. s6 = -1. s7 = 1. s8 = l10. s9 = p1. s10 = l7. s9 = s9 + s10.
      IF s8 < s9. s8 = 1. ELSE. s8 = 0. ENDIF.
      IF s8 <> 0. s6 = s6. ELSE. s6 = s7. ENDIF.
      s7 = l7. s8 = l10.
      IF s7 >= s8. s7 = 1. ELSE. s7 = 0. ENDIF.
      IF s7 <> 0. s5 = s5. ELSE. s5 = s6. ENDIF.
      PERFORM f227 USING s0 s1 s2 s3 s4 s5 CHANGING s0.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = l9. l7 = s0. lv_br = 1. EXIT. " br 1
    ENDDO.
    s0 = 25769803776. l7 = s0. s0 = l9. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
    IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l9. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p2 = s0. s1 = p2. s1 = mem_ld_i32( s1 ). p2 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p2. s1 = 1.
    IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = l9. PERFORM f453 USING s0 s1.
  ENDDO.
  s0 = l4. s1 = 32. s0 = s0 + s1. gv_g0 = s0. s0 = l7. rv = s0.
ENDFORM.

FORM f340 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE int8 p4 TYPE int8 p5 TYPE i CHANGING rv TYPE i.
  DATA l6 TYPE i. DATA l7 TYPE i. DATA l8 TYPE i. DATA l9 TYPE i. DATA l10 TYPE int8. DATA l11 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i.
  DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i.
  DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i.
  DATA s36 TYPE i. DATA s37 TYPE i. DATA s38 TYPE i. DATA s39 TYPE i. DATA s40 TYPE i. DATA s41 TYPE i. DATA s42 TYPE i. DATA s43 TYPE i. DATA s44 TYPE i. DATA s45 TYPE i. DATA s46 TYPE i. DATA s47 TYPE i. DATA s48 TYPE i. DATA s49 TYPE i.
  DATA s50 TYPE i. DATA s51 TYPE i. DATA s52 TYPE i. DATA s53 TYPE i. DATA s54 TYPE i. DATA s55 TYPE i. DATA s56 TYPE i. DATA s57 TYPE i. DATA s58 TYPE i. DATA s59 TYPE i. DATA s60 TYPE i. DATA s61 TYPE i. DATA s62 TYPE i. DATA s63 TYPE i.
  DATA s64 TYPE i. DATA s65 TYPE i. DATA s66 TYPE i. DATA s67 TYPE i. DATA s68 TYPE i. DATA s69 TYPE i. DATA s70 TYPE i. DATA s71 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = -64. s0 = s0 + s1. l6 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    s0 = p1. s1 = -4294967296.
    IF zcl_wasm_rt=>lt_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l8 = s0. s0 = mem_ld_i32_16u( s0 + 6 ). s1 = 48.
    IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l8. s0 = mem_ld_i32( s0 + 32 ). l7 = s0.
  ENDDO.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        s0 = l7. s0 = mem_ld_i32_8u( s0 + 17 ).
        IF s0 <> 0.
          s0 = p0. s1 = 1134591. s2 = 0. PERFORM f970 USING s0 s1 s2 CHANGING s0. lv_br = 1. EXIT. " br 1
        ELSE.
        ENDIF.
        s0 = -1. l8 = s0. s0 = p0. s1 = l7. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 8 ). p1 = s1. s2 = 68. s3 = p1. s4 = 0. PERFORM f192 USING s0 s1 s2 s3 s4 CHANGING s0. p1 = s0. s1 = -4294967296.
        s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). l10 = s0. s1 = 25769803776.
        IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
        s0 = 12884901888. s1 = p1. s2 = l10. s3 = 8589934592.
        IF s2 = s3. s2 = 1. ELSE. s2 = 0. ENDIF.
        IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
        p1 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 12884901888.
        IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = l7. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). p1 = s0. s0 = p3. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
          IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0.
            s0 = p3. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l7 = s0. s1 = l7. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
          ELSE.
          ENDIF.
          s0 = p0. s1 = p1. s2 = p2. s3 = p3. s4 = p4. s5 = p5. PERFORM f89 USING s0 s1 s2 s3 s4 s5 CHANGING s0. l8 = s0. lv_br = 3. EXIT. " br 3
        ELSE.
        ENDIF.
        s0 = p0. s1 = p2. s2 = 0. PERFORM f772 USING s0 s1 s2 CHANGING s0. l10 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 25769803776.
        IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = p1. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
          IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
          s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p2 = s0. s1 = p2. s1 = mem_ld_i32( s1 ). p2 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p2. s1 = 1.
          IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
          s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = p1. PERFORM f453 USING s0 s1. lv_br = 3. EXIT. " br 3
        ELSE.
        ENDIF.
        s0 = l7. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). l11 = s0. s0 = l6. s1 = p4. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 56 CHANGING cv_mem = mv_mem ). s0 = l6. s1 = p3.
        zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 48 CHANGING cv_mem = mv_mem ). s0 = l6. s1 = l10. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 40 CHANGING cv_mem = mv_mem ). s0 = l6. s1 = l11.
        zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 32 CHANGING cv_mem = mv_mem ). s0 = p0. s1 = p1. s2 = l7. s2 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s2 + 8 ). s3 = 12884901888. s4 = 4. s5 = l6. s6 = 32.
        s5 = s5 + s6. s6 = 2. PERFORM f0 USING s0 s1 s2 s3 s4 s5 s6 CHANGING s0. p4 = s0.
        DO 1 TIMES. " block
          s0 = p1. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
          IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l9 = s0. s1 = l9. s1 = mem_ld_i32( s1 ). l9 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l9. s1 = 1.
          IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = p1. PERFORM f453 USING s0 s1.
        ENDDO.
        DO 1 TIMES. " block
          s0 = l10. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
          IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = l10. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l9 = s0. s1 = l9. s1 = mem_ld_i32( s1 ). l9 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l9. s1 = 1.
          IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = l10. PERFORM f453 USING s0 s1.
        ENDDO.
        s0 = p4. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 25769803776.
        IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
        s0 = p0. s1 = p4. PERFORM f581 USING s0 s1 CHANGING s0. l8 = s0.
        IF s0 <> 0.
          s0 = p0. s1 = l6. s2 = l7. s2 = mem_ld_i32( s2 ). s3 = p2. PERFORM f311 USING s0 s1 s2 s3 CHANGING s0. p2 = s0. s1 = 0.
          IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          s0 = p2.
          IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
          DO 1 TIMES. " block
            s0 = l6. s0 = mem_ld_i32( s0 ). p2 = s0. s1 = 19. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
            IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0.
              s0 = p0. s1 = l6. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 8 ). s2 = p3. PERFORM f1098 USING s0 s1 s2 CHANGING s0.
              IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
              lv_br = 4. EXIT. " br 4
            ELSE.
            ENDIF.
            s0 = p2. s1 = 17. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = 16.
            IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
            s0 = l6. s1 = 28. s0 = s0 + s1. s0 = zcl_wasm_rt=>mem_ld_i64_ext( iv_mem = mv_mem iv_addr = s0 + 0 iv_op = 53 ). s1 = 32. s0 = zcl_wasm_rt=>shl64( iv_val = s0 iv_shift = s1 ). s1 = 12884901888.
            IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
          ENDDO.
          s0 = p0. s1 = l6. PERFORM f863 USING s0 s1. s0 = p0. s1 = 1137246. s2 = 0. PERFORM f970 USING s0 s1 s2 CHANGING s0. lv_br = 1. EXIT. " br 1
        ELSE.
        ENDIF.
        s0 = p5. s1 = 16384. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
        IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = 0. l8 = s0. s0 = p5. s1 = 32768. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
          IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
          s0 = p0. s1 = 16. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). s1 = 140. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). p2 = s0.
          IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
          s0 = p2. s0 = mem_ld_i32_8u( s0 + 40 ). s1 = 1. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
          IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
        ELSE.
        ENDIF.
        s0 = p0. s1 = 1134624. s2 = 0. PERFORM f970 USING s0 s1 s2 CHANGING s0.
      ENDDO.
      s0 = -1. l8 = s0. lv_br = 1. EXIT. " br 1
    ENDDO.
    s0 = p0. s1 = l6. PERFORM f863 USING s0 s1.
  ENDDO.
  s0 = l6. s1 = -64. s0 = s0 - s1. gv_g0 = s0. s0 = l8. rv = s0.
ENDFORM.

FORM f341 USING p0 TYPE i p1 TYPE int8 p2 TYPE i CHANGING rv TYPE int8.
  DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i.
  DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i.
  DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i. DATA s36 TYPE i. DATA s37 TYPE i.
  DATA s38 TYPE i. DATA s39 TYPE i. DATA s40 TYPE i. DATA s41 TYPE i. DATA s42 TYPE i. DATA s43 TYPE i. DATA s44 TYPE i. DATA s45 TYPE i. DATA s46 TYPE i. DATA s47 TYPE i. DATA s48 TYPE i. DATA s49 TYPE i. DATA s50 TYPE i. DATA s51 TYPE i.
  DATA s52 TYPE i. DATA s53 TYPE i. DATA s54 TYPE i. DATA s55 TYPE i. DATA s56 TYPE i. DATA s57 TYPE i. DATA s58 TYPE i. DATA s59 TYPE i. DATA s60 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 144. s0 = s0 - s1. l4 = s0. gv_g0 = s0.
  s0 = 1149139. l3 = s0. s0 = 25769803776. l6 = s0.
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
                      DO 1 TIMES. " block
                        DO 1 TIMES. " block
                          DO 1 TIMES. " block
                            DO 1 TIMES. " block
                              DO 1 TIMES. " block
                                s0 = 7. s1 = p1. s2 = 32. s1 = zcl_wasm_rt=>shr_u64( iv_val = s1 iv_shift = s2 ). s1 = zcl_wasm_rt=>wrap_i64( s1 ). l5 = s1. s2 = l5. s3 = 7. s2 = s2 - s3. s3 = -18.
                                IF zcl_wasm_rt=>lt_u32( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
                                IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
                                s1 = 11. s0 = s0 + s1.
                                CASE s0.
                                  WHEN 0. lv_br = 10. EXIT.
                                  WHEN 1. lv_br = 8. EXIT.
                                  WHEN 2. lv_br = 9. EXIT.
                                  WHEN 3. lv_br = 6. EXIT.
                                  WHEN 4. EXIT.
                                  WHEN 5. lv_br = 11. EXIT.
                                  WHEN 6. lv_br = 11. EXIT.
                                  WHEN 7. lv_br = 11. EXIT.
                                  WHEN 8. lv_br = 11. EXIT.
                                  WHEN 9. lv_br = 12. EXIT.
                                  WHEN 10. lv_br = 5. EXIT.
                                  WHEN 11. lv_br = 1. EXIT.
                                  WHEN 12. lv_br = 2. EXIT.
                                  WHEN 13. lv_br = 3. EXIT.
                                  WHEN 14. lv_br = 4. EXIT.
                                  WHEN 15. lv_br = 11. EXIT.
                                  WHEN 16. lv_br = 11. EXIT.
                                  WHEN 17. lv_br = 13. EXIT.
                                  WHEN 18. lv_br = 7. EXIT.
                                  WHEN OTHERS. lv_br = 11. EXIT.
                                ENDCASE.
                              ENDDO.
                              s0 = l5. s1 = -11.
                              IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
                              IF s0 <> 0.
                                s0 = p1. l6 = s0. lv_br = 13. EXIT. " br 13
                              ELSE.
                              ENDIF.
                              s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p0 = s0. s1 = p0. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p1. l6 = s0. lv_br = 12. EXIT. " br 12
                            ENDDO.
                            s0 = l4. s1 = p1. zcl_wasm_rt=>mem_st_i64_trunc( EXPORTING iv_val = s1 iv_addr = s0 + 0 iv_op = 62 CHANGING cv_mem = mv_mem ). s0 = l4. s1 = 16. s0 = s0 + s1. l3 = s0. s1 = 32. s2 = 1148229. s3 = l4.
                            PERFORM f1218 USING s0 s1 s2 s3 CHANGING s0. lv_br = 10. EXIT. " br 10
                          ENDDO.
                          s0 = p0. s1 = 3. s2 = 2. s3 = p1. s3 = zcl_wasm_rt=>wrap_i64( s3 ).
                          IF s3 <> 0. s1 = s1. ELSE. s1 = s2. ENDIF.
                          s2 = 1. PERFORM f772 USING s0 s1 s2 CHANGING s0. l6 = s0. lv_br = 10. EXIT. " br 10
                        ENDDO.
                        s0 = p0. s0 = mem_ld_i32( s0 + 16 ). p0 = s0. s0 = mem_ld_i32( s0 + 44 ). s1 = 1.
                        IF zcl_wasm_rt=>le_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
                        IF s0 <> 0. lv_br = 10. EXIT. ENDIF. " br_if 10
                        DO 1 TIMES. " block
                          s0 = p0. s0 = mem_ld_i32( s0 + 56 ). p2 = s0. s0 = mem_ld_i32( s0 + 4 ). p0 = s0. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 4 ). p1 = s0. s1 = -4611686018427387904.
                          s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 4611686018427387904.
                          IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                          IF s0 <> 0. EXIT. ENDIF. " br_if 0
                          s0 = p1. s1 = 4294967295. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 2147483648.
                          IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                          IF s0 <> 0. EXIT. ENDIF. " br_if 0
                          s0 = p2. s0 = mem_ld_i32( s0 + 188 ). p0 = s0.
                        ENDDO.
                        s0 = p0. s1 = p0. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s0 = zcl_wasm_rt=>extend_u32( s0 ). s1 = -30064771072. s0 = zcl_wasm_rt=>or64( iv_a = s0 iv_b = s1 ).
                        l6 = s0. lv_br = 9. EXIT. " br 9
                      ENDDO.
                      s0 = p0. s0 = mem_ld_i32( s0 + 16 ). p0 = s0. s0 = mem_ld_i32( s0 + 44 ). s1 = 71.
                      IF zcl_wasm_rt=>le_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
                      IF s0 <> 0. lv_br = 9. EXIT. ENDIF. " br_if 9
                      DO 1 TIMES. " block
                        s0 = p0. s0 = mem_ld_i32( s0 + 56 ). p2 = s0. s0 = mem_ld_i32( s0 + 284 ). p0 = s0. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 4 ). p1 = s0. s1 = -4611686018427387904.
                        s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 4611686018427387904.
                        IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                        IF s0 <> 0. EXIT. ENDIF. " br_if 0
                        s0 = p1. s1 = 4294967295. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 2147483648.
                        IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                        IF s0 <> 0. EXIT. ENDIF. " br_if 0
                        s0 = p2. s0 = mem_ld_i32( s0 + 188 ). p0 = s0.
                      ENDDO.
                      s0 = p0. s1 = p0. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s0 = zcl_wasm_rt=>extend_u32( s0 ). s1 = -30064771072. s0 = zcl_wasm_rt=>or64( iv_a = s0 iv_b = s1 ).
                      l6 = s0. lv_br = 8. EXIT. " br 8
                    ENDDO.
                    s0 = l5. s1 = -11.
                    IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
                    IF s0 <> 0.
                      s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l3 = s0. s1 = l3. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
                    ELSE.
                    ENDIF.
                    s0 = p0. s1 = p1. s2 = 0. PERFORM f237 USING s0 s1 s2 CHANGING s0. p1 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 25769803776.
                    IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                    IF s0 <> 0.
                      s0 = p1. l6 = s0. lv_br = 8. EXIT. " br 8
                    ELSE.
                    ENDIF.
                    s0 = p0. s1 = p1. s2 = p2. PERFORM f341 USING s0 s1 s2 CHANGING s0. l6 = s0. s0 = p1. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
                    IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
                    IF s0 <> 0. lv_br = 7. EXIT. ENDIF. " br_if 7
                    s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p2 = s0. s1 = p2. s1 = mem_ld_i32( s1 ). p2 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p2. s1 = 1.
                    IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                    IF s0 <> 0. lv_br = 7. EXIT. ENDIF. " br_if 7
                    s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = p1. PERFORM f453 USING s0 s1. lv_br = 7. EXIT. " br 7
                  ENDDO.
                  s0 = p2.
                  IF s0 <> 0.
                    s0 = l5. s1 = -11.
                    IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
                    IF s0 <> 0.
                      s0 = p1. l6 = s0. lv_br = 8. EXIT. " br 8
                    ELSE.
                    ENDIF.
                    s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p0 = s0. s1 = p0. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p1. l6 = s0. lv_br = 7. EXIT. " br 7
                  ELSE.
                  ENDIF.
                  s0 = p0. s1 = 1143592. s2 = 0. PERFORM f970 USING s0 s1 s2 CHANGING s0. lv_br = 6. EXIT. " br 6
                ENDDO.
                s0 = l4. s1 = 16. s0 = s0 + s1. p2 = s0. s1 = p1. s2 = 9221120288580698112. s1 = s1 + s2. s1 = zcl_wasm_rt=>reinterpret_i64_f64( s1 ). s2 = 10. s3 = 0. s4 = 0. PERFORM f104 USING s0 s1 s2 s3 s4. s0 = p0. s1 = p2. s2 = p2.
                PERFORM f768 USING s2 CHANGING s2. PERFORM f126 USING s0 s1 s2 CHANGING s0. l6 = s0. lv_br = 5. EXIT. " br 5
              ENDDO.
              s0 = p0. s1 = p1. s2 = p0. s2 = mem_ld_i32( s2 + 16 ). s2 = mem_ld_i32( s2 + 288 ).
              DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
              s0 = dispatch_t49( iv_idx = lv_ci_func p0 = s0 p1 = s1 ). l6 = s0. lv_br = 4. EXIT. " br 4
            ENDDO.
            s0 = p0. s1 = p1. s2 = p0. s2 = mem_ld_i32( s2 + 16 ). s2 = mem_ld_i32( s2 + 316 ).
            DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
            s0 = dispatch_t49( iv_idx = lv_ci_func p0 = s0 p1 = s1 ). l6 = s0. lv_br = 3. EXIT. " br 3
          ENDDO.
          s0 = p0. s1 = p1. s2 = p0. s2 = mem_ld_i32( s2 + 16 ). s2 = mem_ld_i32( s2 + 344 ).
          DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
          s0 = dispatch_t49( iv_idx = lv_ci_func p0 = s0 p1 = s1 ). l6 = s0. lv_br = 2. EXIT. " br 2
        ENDDO.
        s0 = 1149120. l3 = s0.
      ENDDO.
      s0 = p0. s1 = l3. s2 = l3. PERFORM f768 USING s2 CHANGING s2. PERFORM f126 USING s0 s1 s2 CHANGING s0. l6 = s0.
    ENDDO.
    s0 = l4. s1 = 144. s0 = s0 + s1. gv_g0 = s0. s0 = l6. rv = s0. RETURN.
  ENDDO.
  s0 = 1144256. s1 = 1148333. s2 = 3113. s3 = 1144447. PERFORM f1101 USING s0 s1 s2 s3.
  RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
ENDFORM.

FORM f342 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i CHANGING rv TYPE int8.
  DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i.
  DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i.
  DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i. DATA s36 TYPE i. DATA s37 TYPE i. DATA s38 TYPE i.
  DATA s39 TYPE i. DATA s40 TYPE i. DATA s41 TYPE i. DATA s42 TYPE i. DATA s43 TYPE i. DATA s44 TYPE i. DATA s45 TYPE i. DATA s46 TYPE i. DATA s47 TYPE i. DATA s48 TYPE i. DATA s49 TYPE i. DATA s50 TYPE i. DATA s51 TYPE i. DATA s52 TYPE i.
  DATA s53 TYPE i. DATA s54 TYPE i. DATA s55 TYPE i. DATA s56 TYPE i. DATA s57 TYPE i. DATA s58 TYPE i. DATA s59 TYPE i. DATA s60 TYPE i. DATA s61 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. p3 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    s0 = p1. s1 = -4294967297.
    IF zcl_wasm_rt=>le_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p0. s1 = 1137529. s2 = 0. PERFORM f970 USING s0 s1 s2 CHANGING s0. s0 = 25769803776. p1 = s0. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = p0. s1 = p3. s2 = p1. PERFORM f366 USING s0 s1 s2 CHANGING s0. l6 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 25769803776.
    IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = l6. p1 = s0. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          DO 1 TIMES. " block
            s0 = p0. s0 = mem_ld_i32( s0 + 16 ). p2 = s0. s1 = 224. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). s1 = p0. s1 = mem_ld_i32( s1 + 40 ). s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 8 ). p1 = s1.
            s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = 0. s3 = p1. s4 = -4294967297.
            IF zcl_wasm_rt=>gt_u64( iv_a = s3 iv_b = s4 ) = abap_true. s3 = 1. ELSE. s3 = 0. ENDIF.
            IF s3 <> 0. s1 = s1. ELSE. s1 = s2. ENDIF.
            l4 = s1. s2 = -1640562687. s1 = s1 * s2. s2 = 1640562687. s1 = s1 - s2. l5 = s1. s2 = 32. s3 = p2. s4 = 212. s3 = s3 + s4. s3 = mem_ld_i32( s3 ). s2 = s2 - s3. s1 = zcl_wasm_rt=>shr_u32( iv_val = s1 iv_shift = s2 ). s2 = 2.
            s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s0 = mem_ld_i32( s0 ). p2 = s0.
            IF s0 <> 0.
              DO. " loop
                DO 1 TIMES. " block
                  s0 = p2. s0 = mem_ld_i32( s0 + 20 ). s1 = l5.
                  IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                  IF s0 <> 0. EXIT. ENDIF. " br_if 0
                  s0 = p2. s0 = mem_ld_i32( s0 + 44 ). s1 = l4.
                  IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                  IF s0 <> 0. EXIT. ENDIF. " br_if 0
                  s0 = p2. s0 = mem_ld_i32( s0 + 32 ).
                  IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
                  IF s0 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
                ENDDO.
                s0 = p2. s0 = mem_ld_i32( s0 + 40 ). p2 = s0.
                IF s0 <> 0. EXIT. ENDIF. " br_if 0
              ENDDO.
            ELSE.
            ENDIF.
            s0 = p0. s1 = l4. s2 = 2. PERFORM f436 USING s0 s1 s2 CHANGING s0. p2 = s0.
            IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
            lv_br = 1. EXIT. " br 1
          ENDDO.
          s0 = p2. s1 = p2. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
        ENDDO.
        s0 = p0. s1 = p2. s2 = 1. PERFORM f408 USING s0 s1 s2 CHANGING s0. p1 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 25769803776.
        IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      ENDDO.
      DO 1 TIMES. " block
        s0 = p3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). p1 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
        IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p2 = s0. s1 = p2. s1 = mem_ld_i32( s1 ). p2 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p2. s1 = 1.
        IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = p1. PERFORM f453 USING s0 s1.
      ENDDO.
      DO 1 TIMES. " block
        s0 = p3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 8 ). p1 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
        IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p2 = s0. s1 = p2. s1 = mem_ld_i32( s1 ). p2 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p2. s1 = 1.
        IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = p1. PERFORM f453 USING s0 s1.
      ENDDO.
      s0 = 25769803776. p1 = s0. s0 = l6. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
      IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = l6. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p2 = s0. s1 = p2. s1 = mem_ld_i32( s1 ). p2 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p2. s1 = 1.
      IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = l6. PERFORM f453 USING s0 s1. lv_br = 1. EXIT. " br 1
    ENDDO.
    s0 = p0. s1 = p1. s2 = 132. s3 = l6. s4 = 12884901888. s5 = 12884901888. s6 = 9991. PERFORM f37 USING s0 s1 s2 s3 s4 s5 s6 CHANGING s0.
    DO 1 TIMES. " block
      s0 = l6. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
      IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = l6. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p2 = s0. s1 = p2. s1 = mem_ld_i32( s1 ). p2 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p2. s1 = 1.
      IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = l6. PERFORM f453 USING s0 s1.
    ENDDO.
    s0 = p0. s1 = p1. s2 = 130. s3 = p3. s3 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s3 + 0 ). l6 = s3. s4 = 12884901888. s5 = 12884901888. s6 = 9991. PERFORM f37 USING s0 s1 s2 s3 s4 s5 s6 CHANGING s0.
    DO 1 TIMES. " block
      s0 = l6. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
      IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = l6. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p2 = s0. s1 = p2. s1 = mem_ld_i32( s1 ). p2 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p2. s1 = 1.
      IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = l6. PERFORM f453 USING s0 s1.
    ENDDO.
    s0 = p0. s1 = p1. s2 = 131. s3 = p3. s3 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s3 + 8 ). l6 = s3. s4 = 12884901888. s5 = 12884901888. s6 = 9991. PERFORM f37 USING s0 s1 s2 s3 s4 s5 s6 CHANGING s0. s0 = l6. s1 = 32.
    s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
    IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l6. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p2 = s0. s1 = p2. s1 = mem_ld_i32( s1 ). p2 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p2. s1 = 1.
    IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = l6. PERFORM f453 USING s0 s1.
  ENDDO.
  s0 = p3. s1 = 16. s0 = s0 + s1. gv_g0 = s0. s0 = p1. rv = s0.
ENDFORM.

FORM f343 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i p4 TYPE i CHANGING rv TYPE int8.
  DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE i. DATA l8 TYPE int8. DATA l9 TYPE int8. DATA l10 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i.
  DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i.
  DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i.
  DATA s36 TYPE i. DATA s37 TYPE i. DATA s38 TYPE i. DATA s39 TYPE i. DATA s40 TYPE i. DATA s41 TYPE i. DATA s42 TYPE i. DATA s43 TYPE i. DATA s44 TYPE i. DATA s45 TYPE i. DATA s46 TYPE i. DATA s47 TYPE i. DATA s48 TYPE i. DATA s49 TYPE i.
  DATA s50 TYPE i. DATA s51 TYPE i. DATA s52 TYPE i. DATA s53 TYPE i. DATA s54 TYPE i. DATA s55 TYPE i. DATA s56 TYPE i. DATA s57 TYPE i. DATA s58 TYPE i. DATA s59 TYPE i. DATA s60 TYPE i. DATA s61 TYPE i. DATA s62 TYPE i.
  DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l5 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          DO 1 TIMES. " block
            DO 1 TIMES. " block
              s0 = p0. s1 = p0. s2 = p1. PERFORM f151 USING s1 s2 CHANGING s1. p1 = s1. s2 = 48. s3 = p1. s4 = 0. PERFORM f192 USING s0 s1 s2 s3 s4 CHANGING s0. l8 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ).
              s1 = 25769803776.
              IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0.
                s0 = l5. s1 = 0. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 8 CHANGING cv_mem = mv_mem ). lv_br = 1. EXIT. " br 1
              ELSE.
              ENDIF.
              s0 = l8. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). l6 = s0. s1 = -11.
              IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0.
                s0 = l8. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l7 = s0. s1 = l7. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
              ELSE.
              ENDIF.
              DO 1 TIMES. " block
                s0 = p0. s1 = l5. s2 = 8. s1 = s1 + s2. s2 = l8. PERFORM f719 USING s0 s1 s2 CHANGING s0. l7 = s0.
                IF s0 <> 0. EXIT. ENDIF. " br_if 0
                s0 = l5. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 8 ). l10 = s0. s1 = 0.
                IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                IF s0 <> 0.
                  s0 = 9007199254740991. l9 = s0. s0 = l10. s1 = 9007199254740992.
                  IF zcl_wasm_rt=>lt_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
                  IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
                ELSE.
                ENDIF.
                s0 = l5. s1 = l9. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 8 CHANGING cv_mem = mv_mem ).
              ENDDO.
              DO 1 TIMES. " block
                s0 = l6. s1 = -11.
                IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
                IF s0 <> 0. EXIT. ENDIF. " br_if 0
                s0 = l8. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l6 = s0. s1 = l6. s1 = mem_ld_i32( s1 ). l6 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l6. s1 = 1.
                IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                IF s0 <> 0. EXIT. ENDIF. " br_if 0
                s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = l8. PERFORM f453 USING s0 s1.
              ENDDO.
              s0 = 12884901888. l8 = s0. s0 = l7.
              IF s0 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
              s0 = l5. s1 = 1. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = p4.
              IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
              s0 = p3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). l8 = s0. s0 = 12884901888. l10 = s0. s0 = p2. s1 = 2.
              IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0.
                s0 = p3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 8 ). l10 = s0.
              ELSE.
              ENDIF.
              s0 = l8. s1 = -4294967296.
              IF zcl_wasm_rt=>ge_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0.
                s0 = l8. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p3 = s0. s0 = mem_ld_i32_16u( s0 + 6 ). p2 = s0. s1 = 13.
                IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                IF s0 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
                DO 1 TIMES. " block
                  s0 = p2. s1 = 48.
                  IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                  IF s0 <> 0.
                    s0 = p3. s0 = mem_ld_i32( s0 + 32 ). s0 = mem_ld_i32_8u( s0 + 16 ). lv_br = 1. EXIT. " br 1
                  ELSE.
                  ENDIF.
                  s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s1 = mem_ld_i32( s1 + 68 ). s2 = p2. s3 = 24. s2 = s2 * s3. s1 = s1 + s2. s1 = mem_ld_i32( s1 + 16 ).
                ENDDO.
                IF s1 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
              ELSE.
              ENDIF.
              s1 = p0. s2 = 1141317. s3 = 0. PERFORM f970 USING s1 s2 s3 CHANGING s1.
            ENDDO.
            s1 = 12884901888. l8 = s1. lv_br = 2. EXIT. " br 2
          ENDDO.
          s1 = p2. s2 = 0.
          IF s1 <= s2. s1 = 1. ELSE. s1 = 0. ENDIF.
          IF s1 <> 0.
            s1 = 12884901888. l10 = s1. lv_br = 1. EXIT. " br 1
          ELSE.
          ENDIF.
          s1 = 12884901888. l10 = s1. s1 = p3. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 0 ). l9 = s1. s2 = -4294967296. s1 = zcl_wasm_rt=>and64( iv_a = s1 iv_b = s2 ). s2 = 12884901888.
          IF s1 = s2. s1 = 1. ELSE. s1 = 0. ENDIF.
          IF s1 <> 0. EXIT. ENDIF. " br_if 0
          s1 = l9. s2 = 32. s1 = zcl_wasm_rt=>shr_u64( iv_val = s1 iv_shift = s2 ). s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = -11.
          IF zcl_wasm_rt=>ge_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
          IF s1 <> 0.
            s1 = l9. s1 = zcl_wasm_rt=>wrap_i64( s1 ). p2 = s1. s2 = p2. s2 = mem_ld_i32( s2 ). s3 = 1. s2 = s2 + s3. mem_st_i32( iv_addr = s1 iv_val = s2 ).
          ELSE.
          ENDIF.
          s1 = p0. s2 = l5. s3 = 4. s2 = s2 + s3. s3 = l9. PERFORM f684 USING s1 s2 s3 CHANGING s1. s2 = 0.
          IF s1 < s2. s1 = 1. ELSE. s1 = 0. ENDIF.
          IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        ENDDO.
        s1 = p0. s2 = p1. s3 = 0. PERFORM f426 USING s1 s2 s3 CHANGING s1. l9 = s1. s2 = -4294967296. s1 = zcl_wasm_rt=>and64( iv_a = s1 iv_b = s2 ). s2 = 25769803776.
        IF s1 = s2. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0.
          s1 = l9. l8 = s1. lv_br = 1. EXIT. " br 1
        ELSE.
        ENDIF.
        s1 = p0. s2 = l9. s3 = p1. s4 = l5. s4 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s4 + 8 ). s5 = 0. s6 = l5. s6 = mem_ld_i32( s6 + 4 ). s7 = l8. s8 = l10. PERFORM f277 USING s1 s2 s3 s4 s5 s6 s7 s8 CHANGING s1. s2 = 0.
        IF s1 < s2. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0.
          s1 = l9. l8 = s1. lv_br = 1. EXIT. " br 1
        ELSE.
        ENDIF.
        s1 = p1. s2 = 32. s1 = zcl_wasm_rt=>shr_u64( iv_val = s1 iv_shift = s2 ). s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = -11.
        IF zcl_wasm_rt=>lt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
        s1 = p1. s1 = zcl_wasm_rt=>wrap_i64( s1 ). p2 = s1. s2 = p2. s2 = mem_ld_i32( s2 ). p2 = s2. s3 = 1. s2 = s2 - s3. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = p2. s2 = 2.
        IF s1 >= s2. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
        lv_br = 1. EXIT. " br 1
      ENDDO.
      DO 1 TIMES. " block
        s1 = p1. s2 = 32. s1 = zcl_wasm_rt=>shr_u64( iv_val = s1 iv_shift = s2 ). s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = -11.
        IF zcl_wasm_rt=>lt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0. EXIT. ENDIF. " br_if 0
        s1 = p1. s1 = zcl_wasm_rt=>wrap_i64( s1 ). p2 = s1. s2 = p2. s2 = mem_ld_i32( s2 ). p2 = s2. s3 = 1. s2 = s2 - s3. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = p2. s2 = 1.
        IF s1 > s2. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0. EXIT. ENDIF. " br_if 0
        s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s2 = p1. PERFORM f453 USING s1 s2.
      ENDDO.
      s1 = 25769803776. l9 = s1. s1 = l8. s2 = 32. s1 = zcl_wasm_rt=>shr_u64( iv_val = s1 iv_shift = s2 ). s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = -11.
      IF zcl_wasm_rt=>lt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s1 = l8. s1 = zcl_wasm_rt=>wrap_i64( s1 ). p2 = s1. s2 = p2. s2 = mem_ld_i32( s2 ). p2 = s2. s3 = 1. s2 = s2 - s3. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = l8. p1 = s1. s1 = p2. s2 = 1.
      IF s1 > s2. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
    ENDDO.
    s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s2 = p1. PERFORM f453 USING s1 s2.
  ENDDO.
  s1 = l5. s2 = 16. s1 = s1 + s2. gv_g0 = s1. s1 = l9. rv = s1.
ENDFORM.

FORM f344 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i CHANGING rv TYPE int8.
  DATA l4 TYPE i. DATA l5 TYPE int8. DATA l6 TYPE int8. DATA l7 TYPE int8. DATA l8 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i.
  DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i.
  DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i. DATA s36 TYPE i.
  DATA s37 TYPE i. DATA s38 TYPE i. DATA s39 TYPE i. DATA s40 TYPE i. DATA s41 TYPE i. DATA s42 TYPE i. DATA s43 TYPE i. DATA s44 TYPE i. DATA s45 TYPE i. DATA s46 TYPE i. DATA s47 TYPE i. DATA s48 TYPE i. DATA s49 TYPE i. DATA s50 TYPE i.
  DATA s51 TYPE i. DATA s52 TYPE i. DATA s53 TYPE i. DATA s54 TYPE i. DATA s55 TYPE i. DATA s56 TYPE i. DATA s57 TYPE i. DATA s58 TYPE i. DATA s59 TYPE i. DATA s60 TYPE i. DATA s61 TYPE i. DATA s62 TYPE i. DATA s63 TYPE i. DATA s64 TYPE i.
  DATA s65 TYPE i. DATA s66 TYPE i. DATA s67 TYPE i. DATA s68 TYPE i. DATA s69 TYPE i. DATA s70 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 32. s0 = s0 - s1. p2 = s0. gv_g0 = s0. s0 = p3.
  s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). l6 = s0.
  DO 1 TIMES. " block
    s0 = p0. s1 = p1. s2 = 12884901888. PERFORM f592 USING s0 s1 s2 CHANGING s0. l5 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 25769803776.
    IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = l5. l6 = s0. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          DO 1 TIMES. " block
            s0 = l6. s1 = -4294967296.
            IF zcl_wasm_rt=>ge_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0.
              s0 = l6. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l4 = s0. s0 = mem_ld_i32_16u( s0 + 6 ). p3 = s0. s1 = 13.
              IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
              DO 1 TIMES. " block
                s0 = p3. s1 = 48.
                IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                IF s0 <> 0.
                  s0 = l4. s0 = mem_ld_i32( s0 + 32 ). s0 = mem_ld_i32_8u( s0 + 16 ). lv_br = 1. EXIT. " br 1
                ELSE.
                ENDIF.
                s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s1 = mem_ld_i32( s1 + 68 ). s2 = p3. s3 = 24. s2 = s2 * s3. s1 = s1 + s2. s1 = mem_ld_i32( s1 + 16 ).
              ENDDO.
              IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
            ELSE.
            ENDIF.
            s1 = l6. s2 = 32. s1 = zcl_wasm_rt=>shr_u64( iv_val = s1 iv_shift = s2 ). s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = -11.
            IF zcl_wasm_rt=>ge_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
            IF s1 <> 0.
              s1 = l6. s1 = zcl_wasm_rt=>wrap_i64( s1 ). p3 = s1. s2 = p3. s2 = mem_ld_i32( s2 ). s3 = 2. s2 = s2 + s3. mem_st_i32( iv_addr = s1 iv_val = s2 ).
            ELSE.
            ENDIF.
            s1 = p2. s2 = l6. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s2 iv_addr = s1 + 24 CHANGING cv_mem = mv_mem ). s1 = p2. s2 = l6. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s2 iv_addr = s1 + 16 CHANGING cv_mem = mv_mem ).
            lv_br = 1. EXIT. " br 1
          ENDDO.
          s1 = p2. s2 = l6. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s2 iv_addr = s1 + 8 CHANGING cv_mem = mv_mem ). s1 = p2. s2 = l5. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s2 iv_addr = s1 + 0 CHANGING cv_mem = mv_mem ). s1 = p2.
          s2 = p0. s3 = 387. s4 = 1. s5 = 0. s6 = 2. s7 = p2. PERFORM f317 USING s2 s3 s4 s5 s6 s7 CHANGING s2. l7 = s2. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s2 iv_addr = s1 + 16 CHANGING cv_mem = mv_mem ). s1 = 25769803776. l6 = s1.
          s1 = l7. s2 = -4294967296. s1 = zcl_wasm_rt=>and64( iv_a = s1 iv_b = s2 ). s2 = 25769803776.
          IF s1 = s2. s1 = 1. ELSE. s1 = 0. ENDIF.
          IF s1 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
          s1 = p2. s2 = p0. s3 = 387. s4 = 1. s5 = 1. s6 = 2. s7 = p2. PERFORM f317 USING s2 s3 s4 s5 s6 s7 CHANGING s2. l8 = s2. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s2 iv_addr = s1 + 24 CHANGING cv_mem = mv_mem ). s1 = l8.
          s2 = -4294967296. s1 = zcl_wasm_rt=>and64( iv_a = s1 iv_b = s2 ). s2 = 25769803776.
          IF s1 = s2. s1 = 1. ELSE. s1 = 0. ENDIF.
          IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
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
        DO 1 TIMES. " block
          s1 = p0. s2 = p1. s3 = 129. s4 = p1. s5 = 0. PERFORM f192 USING s1 s2 s3 s4 s5 CHANGING s1. l5 = s1. s2 = -4294967296. s1 = zcl_wasm_rt=>and64( iv_a = s1 iv_b = s2 ). s2 = 25769803776.
          IF s1 = s2. s1 = 1. ELSE. s1 = 0. ENDIF.
          IF s1 <> 0.
            s1 = l5. l6 = s1. lv_br = 1. EXIT. " br 1
          ELSE.
          ENDIF.
          s1 = p0. s2 = l5. s3 = p1. s4 = 12884901888. s5 = 2. s6 = p2. s7 = 16. s6 = s6 + s7. s7 = 2. PERFORM f0 USING s1 s2 s3 s4 s5 s6 s7 CHANGING s1. l6 = s1. s1 = l5. s2 = 32. s1 = zcl_wasm_rt=>shr_u64( iv_val = s1 iv_shift = s2 ).
          s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = -11.
          IF zcl_wasm_rt=>lt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
          IF s1 <> 0. EXIT. ENDIF. " br_if 0
          s1 = l5. s1 = zcl_wasm_rt=>wrap_i64( s1 ). p3 = s1. s2 = p3. s2 = mem_ld_i32( s2 ). p3 = s2. s3 = 1. s2 = s2 - s3. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = p3. s2 = 1.
          IF s1 > s2. s1 = 1. ELSE. s1 = 0. ENDIF.
          IF s1 <> 0. EXIT. ENDIF. " br_if 0
          s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s2 = l5. PERFORM f453 USING s1 s2.
        ENDDO.
        DO 1 TIMES. " block
          s1 = p2. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 16 ). p1 = s1. s2 = 32. s1 = zcl_wasm_rt=>shr_u64( iv_val = s1 iv_shift = s2 ). s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = -11.
          IF zcl_wasm_rt=>lt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
          IF s1 <> 0. EXIT. ENDIF. " br_if 0
          s1 = p1. s1 = zcl_wasm_rt=>wrap_i64( s1 ). p3 = s1. s2 = p3. s2 = mem_ld_i32( s2 ). p3 = s2. s3 = 1. s2 = s2 - s3. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = p3. s2 = 1.
          IF s1 > s2. s1 = 1. ELSE. s1 = 0. ENDIF.
          IF s1 <> 0. EXIT. ENDIF. " br_if 0
          s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s2 = p1. PERFORM f453 USING s1 s2.
        ENDDO.
        s1 = p2. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 24 ). p1 = s1. s2 = 32. s1 = zcl_wasm_rt=>shr_u64( iv_val = s1 iv_shift = s2 ). s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = -11.
        IF zcl_wasm_rt=>lt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
        s1 = p1. s1 = zcl_wasm_rt=>wrap_i64( s1 ). p3 = s1. s2 = p3. s2 = mem_ld_i32( s2 ). p3 = s2. s3 = 1. s2 = s2 - s3. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = p3. s2 = 1.
        IF s1 > s2. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
        s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s2 = p1. PERFORM f453 USING s1 s2. lv_br = 2. EXIT. " br 2
      ENDDO.
      s1 = l7. s2 = 32. s1 = zcl_wasm_rt=>shr_u64( iv_val = s1 iv_shift = s2 ). s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = -11.
      IF zcl_wasm_rt=>lt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. EXIT. ENDIF. " br_if 0
      s1 = l7. s1 = zcl_wasm_rt=>wrap_i64( s1 ). p3 = s1. s2 = p3. s2 = mem_ld_i32( s2 ). p3 = s2. s3 = 1. s2 = s2 - s3. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = p3. s2 = 1.
      IF s1 > s2. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. EXIT. ENDIF. " br_if 0
      s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s2 = l7. PERFORM f453 USING s1 s2.
    ENDDO.
    s1 = l5. s2 = 32. s1 = zcl_wasm_rt=>shr_u64( iv_val = s1 iv_shift = s2 ). s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = -11.
    IF zcl_wasm_rt=>lt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
    IF s1 <> 0. EXIT. ENDIF. " br_if 0
    s1 = l5. s1 = zcl_wasm_rt=>wrap_i64( s1 ). p3 = s1. s2 = p3. s2 = mem_ld_i32( s2 ). p3 = s2. s3 = 1. s2 = s2 - s3. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = p3. s2 = 1.
    IF s1 > s2. s1 = 1. ELSE. s1 = 0. ENDIF.
    IF s1 <> 0. EXIT. ENDIF. " br_if 0
    s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s2 = l5. PERFORM f453 USING s1 s2.
  ENDDO.
  s1 = p2. s2 = 32. s1 = s1 + s2. gv_g0 = s1. s1 = l6. rv = s1.
ENDFORM.

FORM f345 USING p0 TYPE i p1 TYPE i p2 TYPE i CHANGING rv TYPE i.
  DATA l3 TYPE i. DATA l4 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i.
  DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i.
  DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i. DATA s36 TYPE i. DATA s37 TYPE i. DATA s38 TYPE i. DATA s39 TYPE i.
  DATA s40 TYPE i. DATA s41 TYPE i. DATA s42 TYPE i. DATA s43 TYPE i. DATA s44 TYPE i. DATA s45 TYPE i. DATA s46 TYPE i. DATA s47 TYPE i. DATA s48 TYPE i. DATA s49 TYPE i. DATA s50 TYPE i. DATA s51 TYPE i. DATA s52 TYPE i. DATA s53 TYPE i.
  DATA s54 TYPE i. DATA s55 TYPE i. DATA s56 TYPE i. DATA s57 TYPE i. DATA s58 TYPE i. DATA s59 TYPE i. DATA s60 TYPE i. DATA s61 TYPE i. DATA s62 TYPE i. DATA s63 TYPE i. DATA s64 TYPE i. DATA s65 TYPE i. DATA lv_br TYPE i. s0 = gv_g0.
  s1 = 32. s0 = s0 - s1. l4 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        s0 = p2. s0 = mem_ld_i32( s0 + 12 ).
        IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          DO 1 TIMES. " block
            DO 1 TIMES. " block
              DO 1 TIMES. " block
                DO 1 TIMES. " block
                  s0 = p2. s0 = mem_ld_i32( s0 + 8 ). l3 = s0. s1 = 2147483646. s0 = s0 - s1.
                  CASE s0.
                    WHEN 0. lv_br = 1. EXIT.
                    WHEN 1. EXIT.
                    WHEN OTHERS. lv_br = 2. EXIT.
                  ENDCASE.
                ENDDO.
                s0 = p0. s0 = mem_ld_i32( s0 + 12 ).
                IF s0 <> 0.
                  s0 = p0. s0 = mem_ld_i32( s0 ). p2 = s0. s0 = mem_ld_i32( s0 ). s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s2 = 0. s3 = p2. s4 = 4. s3 = s3 + s4. s3 = mem_ld_i32( s3 ).
                  DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
                  s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). p2 = s0. s0 = p0. s1 = 0. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = p0. s1 = p2. mem_st_i32( iv_addr = s0 + 16 iv_val = s1 ).
                ELSE.
                ENDIF.
                s0 = p0. s1 = 9223372032559808512. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 4 CHANGING cv_mem = mv_mem ). lv_br = 2. EXIT. " br 2
              ENDDO.
              s0 = p2. s0 = mem_ld_i32( s0 + 4 ).
              IF s0 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
            ENDDO.
            s0 = p0. s1 = p2.
            IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. EXIT. ENDIF. " br_if 0
            s0 = p0. s0 = mem_ld_i32( s0 + 12 ).
            IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0.
              s0 = p0. s1 = l3. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = p0. s1 = p2. s1 = mem_ld_i32( s1 + 4 ). mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). lv_br = 1. EXIT. " br 1
            ELSE.
            ENDIF.
            s0 = p0. s0 = mem_ld_i32( s0 ). l3 = s0. s0 = mem_ld_i32( s0 ). s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s2 = 0. s3 = l3. s4 = 4. s3 = s3 + s4. s3 = mem_ld_i32( s3 ).
            DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
            s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). l3 = s0. s0 = p0. s1 = 0. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = p0. s1 = l3. mem_st_i32( iv_addr = s0 + 16 iv_val = s1 ). s0 = p0. s1 = p2.
            s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 4 ). zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 4 CHANGING cv_mem = mv_mem ). s0 = p2. s0 = mem_ld_i32( s0 + 12 ). s1 = 2.
            s0 = zcl_wasm_rt=>shl32( iv_val = s0 iv_shift = s1 ). p0 = s0.
            IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. EXIT. ENDIF. " br_if 0
            s0 = l3. s1 = p2. s1 = mem_ld_i32( s1 + 16 ). s2 = p0. PERFORM f216 USING s0 s1 s2 CHANGING s0.
          ENDDO.
          s0 = 0. p0 = s0. s0 = p1.
          IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
          s0 = p1. s1 = -9223372036854775808. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 4 CHANGING cv_mem = mv_mem ). s0 = p1. s0 = mem_ld_i32( s0 + 12 ).
          IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
          s0 = p1. s0 = mem_ld_i32( s0 ). p2 = s0. s0 = mem_ld_i32( s0 ). s1 = p1. s1 = mem_ld_i32( s1 + 16 ). s2 = 0. s3 = p2. s4 = 4. s3 = s3 + s4. s3 = mem_ld_i32( s3 ).
          DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
          s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). p2 = s0. s0 = p1. s1 = 0. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = p1. s1 = p2. mem_st_i32( iv_addr = s0 + 16 iv_val = s1 ). lv_br = 3. EXIT. " br 3
        ELSE.
        ENDIF.
        s0 = p2. s0 = mem_ld_i32( s0 + 4 ).
        IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      ENDDO.
      s0 = p0. s0 = mem_ld_i32( s0 + 12 ).
      IF s0 <> 0.
        s0 = p0. s0 = mem_ld_i32( s0 ). p2 = s0. s0 = mem_ld_i32( s0 ). s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s2 = 0. s3 = p2. s4 = 4. s3 = s3 + s4. s3 = mem_ld_i32( s3 ).
        DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
        s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). p2 = s0. s0 = p0. s1 = 0. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = p0. s1 = p2. mem_st_i32( iv_addr = s0 + 16 iv_val = s1 ).
      ELSE.
      ENDIF.
      s0 = p0. s1 = 9223372032559808512. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 4 CHANGING cv_mem = mv_mem ). s0 = 1. p0 = s0. s0 = p1.
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p1. s1 = -9223372036854775808. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 4 CHANGING cv_mem = mv_mem ). s0 = p1. s0 = mem_ld_i32( s0 + 12 ).
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p1. s0 = mem_ld_i32( s0 ). p2 = s0. s0 = mem_ld_i32( s0 ). s1 = p1. s1 = mem_ld_i32( s1 + 16 ). s2 = 0. s3 = p2. s4 = 4. s3 = s3 + s4. s3 = mem_ld_i32( s3 ).
      DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
      s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). p2 = s0. s0 = p1. s1 = 0. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = p1. s1 = p2. mem_st_i32( iv_addr = s0 + 16 iv_val = s1 ). lv_br = 1. EXIT. " br 1
    ENDDO.
    s0 = p0. s1 = p2. s2 = p2. s2 = mem_ld_i32( s2 + 8 ). s3 = 1. s2 = s2 + s3. s3 = 2. s2 = s2 / s3. s3 = 1. PERFORM f194 USING s0 s1 s2 s3 CHANGING s0. s0 = p0. s0 = mem_ld_i32( s0 + 12 ). l3 = s0.
    IF s0 <> 0.
      s0 = p0. s1 = 0. s2 = 17. s3 = l3. s4 = 0. PERFORM f137 USING s0 s1 s2 s3 s4 CHANGING s0.
    ELSE.
    ENDIF.
    s0 = p1. l3 = s0. s0 = p1.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = l4. s1 = 0. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 20 CHANGING cv_mem = mv_mem ). s0 = l4. s1 = -9223372036854775808.
      zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 12 CHANGING cv_mem = mv_mem ). s0 = l4. s1 = p0. s1 = mem_ld_i32( s1 ). mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = l4. s1 = 8. s0 = s0 + s1. l3 = s0.
    ELSE.
    ENDIF.
    s0 = l3. s1 = p0. s2 = p0. s3 = 1073741823. s4 = 1. PERFORM f87 USING s0 s1 s2 s3 s4 CHANGING s0. s0 = l3. s1 = l3. s1 = mem_ld_i32( s1 + 4 ). s2 = 1. s1 = zcl_wasm_rt=>xor32( iv_a = s1 iv_b = s2 ).
    mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = l3. s1 = l3. s2 = p2. s3 = 1073741823. s4 = 1. PERFORM f817 USING s0 s1 s2 s3 s4 CHANGING s0. s0 = 32. p0 = s0. s0 = l3. s1 = 8. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). s1 = 2147483647.
    IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = l3. s0 = mem_ld_i32( s0 + 12 ). s1 = 0.
      IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      s1 = 4. s0 = zcl_wasm_rt=>shl32( iv_val = s0 iv_shift = s1 ). p0 = s0.
    ELSE.
    ENDIF.
    s0 = p1.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l3. s0 = mem_ld_i32( s0 ). p1 = s0.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l3. s0 = mem_ld_i32( s0 + 16 ). p2 = s0.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p1. s0 = mem_ld_i32( s0 ). s1 = p2. s2 = 0. s3 = p1. s4 = 4. s3 = s3 + s4. s3 = mem_ld_i32( s3 ).
    DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
    s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ).
  ENDDO.
  s0 = l4. s1 = 32. s0 = s0 + s1. gv_g0 = s0. s0 = p0. rv = s0.
ENDFORM.

FORM f346 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i p4 TYPE i CHANGING rv TYPE int8.
  DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i.
  DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i.
  DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i. DATA s36 TYPE i. DATA s37 TYPE i. DATA s38 TYPE i.
  DATA s39 TYPE i. DATA s40 TYPE i. DATA s41 TYPE i. DATA s42 TYPE i. DATA s43 TYPE i. DATA s44 TYPE i. DATA s45 TYPE i. DATA s46 TYPE i. DATA s47 TYPE i. DATA s48 TYPE i. DATA s49 TYPE i. DATA s50 TYPE i. DATA s51 TYPE i. DATA s52 TYPE i.
  DATA s53 TYPE i. DATA s54 TYPE i. DATA s55 TYPE i. DATA s56 TYPE i. DATA s57 TYPE i. DATA s58 TYPE i. DATA s59 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l6 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      s0 = p1. s1 = -8589934592. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 8589934592.
      IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = p0. s1 = 1142123. s2 = 0. PERFORM f970 USING s0 s1 s2 CHANGING s0. s0 = 25769803776. p1 = s0. lv_br = 1. EXIT. " br 1
      ELSE.
      ENDIF.
      s0 = p0. s1 = p1. s2 = 0. PERFORM f341 USING s0 s1 s2 CHANGING s0. l7 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 25769803776.
      IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = l7. p1 = s0. lv_br = 1. EXIT. " br 1
      ELSE.
      ENDIF.
      s0 = p3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). p1 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
      IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p2 = s0. s1 = p2. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
      ELSE.
      ENDIF.
      s0 = l7. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l5 = s0. s0 = p0. s1 = l6. s2 = 12. s1 = s1 + s2. s2 = p1. PERFORM f684 USING s0 s1 s2 CHANGING s0.
      IF s0 <> 0.
        s0 = 25769803776. p1 = s0. s0 = l7. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
        IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        s0 = l5. s1 = l5. s1 = mem_ld_i32( s1 ). p2 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p2. s1 = 1.
        IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = l7. PERFORM f453 USING s0 s1. lv_br = 1. EXIT. " br 1
      ELSE.
      ENDIF.
      s0 = l6. s0 = mem_ld_i32( s0 + 12 ). p3 = s0.
      DO 1 TIMES. " block
        s0 = p4.
        IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = p3. s1 = 0.
        IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = l5. s0 = mem_ld_i32( s0 + 4 ). s1 = 2147483647. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = p3. s0 = s0 + s1. p3 = s0.
      ENDDO.
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          s0 = p3. s1 = 0.
          IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0.
            s0 = p3. s1 = l5. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 4 ). p1 = s1. s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = 2147483647. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ).
            IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          ELSE.
          ENDIF.
          s0 = 12884901888. p1 = s0. s0 = p4.
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          s0 = p0. s0 = mem_ld_i32( s0 + 16 ). p2 = s0. s0 = mem_ld_i32( s0 + 44 ). s1 = 47.
          IF zcl_wasm_rt=>le_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
          s0 = p2. s0 = mem_ld_i32( s0 + 56 ). s0 = mem_ld_i32( s0 + 188 ). p2 = s0. s1 = p2. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p2. s0 = zcl_wasm_rt=>extend_u32( s0 ).
          s1 = -30064771072. s0 = zcl_wasm_rt=>or64( iv_a = s0 iv_b = s1 ). p1 = s0. lv_br = 1. EXIT. " br 1
        ENDDO.
        s0 = l5. s1 = 16. s0 = s0 + s1. p2 = s0.
        DO 1 TIMES. " block
          s0 = p1. s1 = 2147483648. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 0.
          IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0.
            s0 = p2. s1 = p3. s2 = 1. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s0 = mem_ld_i32_16u( s0 ). lv_br = 1. EXIT. " br 1
          ELSE.
          ENDIF.
          s1 = p2. s2 = p3. s1 = s1 + s2. s1 = mem_ld_i32_8u( s1 ).
        ENDDO.
        p3 = s1. s1 = p0. s1 = mem_ld_i32( s1 + 16 ). p2 = s1. s2 = 16. s1 = s1 + s2. s2 = 18. s3 = p2. s3 = mem_ld_i32( s3 ).
        DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
        s1 = dispatch_t7( iv_idx = lv_ci_func p0 = s1 p1 = s2 ). p2 = s1. s1 = p3. s2 = 65535. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). s2 = 255.
        IF zcl_wasm_rt=>le_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0.
          s1 = p2.
          IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
          IF s1 <> 0.
            s1 = 25769803776. p1 = s1. s1 = p0. s1 = mem_ld_i32( s1 + 16 ). p2 = s1. s1 = mem_ld_i32_8u( s1 + 136 ).
            IF s1 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
            s1 = p2. s2 = 1. mem_st_i32_8( iv_addr = s1 + 136 iv_val = s2 ). s1 = p0. s2 = 1134898. s3 = 0. PERFORM f969 USING s1 s2 s3 CHANGING s1. s1 = p2. s2 = 0. mem_st_i32_8( iv_addr = s1 + 136 iv_val = s2 ). lv_br = 2. EXIT. " br 2
          ELSE.
          ENDIF.
          s1 = p2. s2 = 0. mem_st_i32_8( iv_addr = s1 + 17 iv_val = s2 ). s1 = p2. s2 = p3. mem_st_i32_8( iv_addr = s1 + 16 iv_val = s2 ). s1 = p2. s2 = 0. mem_st_i32( iv_addr = s1 + 12 iv_val = s2 ). s1 = p2. s2 = 1.
          zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s2 iv_addr = s1 + 4 CHANGING cv_mem = mv_mem ). s1 = p2. s2 = 1. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = p2. s1 = zcl_wasm_rt=>extend_u32( s1 ). s2 = -30064771072.
          s1 = zcl_wasm_rt=>or64( iv_a = s1 iv_b = s2 ). p1 = s1. lv_br = 1. EXIT. " br 1
        ELSE.
        ENDIF.
        s1 = p2.
        IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0.
          s1 = 25769803776. p1 = s1. s1 = p0. s1 = mem_ld_i32( s1 + 16 ). p2 = s1. s1 = mem_ld_i32_8u( s1 + 136 ).
          IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          s1 = p2. s2 = 1. mem_st_i32_8( iv_addr = s1 + 136 iv_val = s2 ). s1 = p0. s2 = 1134898. s3 = 0. PERFORM f969 USING s1 s2 s3 CHANGING s1. s1 = p2. s2 = 0. mem_st_i32_8( iv_addr = s1 + 136 iv_val = s2 ). lv_br = 1. EXIT. " br 1
        ELSE.
        ENDIF.
        s1 = p2. s2 = p3. mem_st_i32_16( iv_addr = s1 + 16 iv_val = s2 ). s1 = p2. s2 = 0. mem_st_i32( iv_addr = s1 + 12 iv_val = s2 ). s1 = p2. s2 = 2147483649.
        zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s2 iv_addr = s1 + 4 CHANGING cv_mem = mv_mem ). s1 = p2. s2 = 1. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = p2. s1 = zcl_wasm_rt=>extend_u32( s1 ). s2 = -30064771072.
        s1 = zcl_wasm_rt=>or64( iv_a = s1 iv_b = s2 ). p1 = s1.
      ENDDO.
      s1 = l7. s2 = 32. s1 = zcl_wasm_rt=>shr_u64( iv_val = s1 iv_shift = s2 ). s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = -11.
      IF zcl_wasm_rt=>lt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. EXIT. ENDIF. " br_if 0
      s1 = l5. s2 = l5. s2 = mem_ld_i32( s2 ). p2 = s2. s3 = 1. s2 = s2 - s3. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = p2. s2 = 1.
      IF s1 > s2. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. EXIT. ENDIF. " br_if 0
      s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s2 = l7. PERFORM f453 USING s1 s2.
    ENDDO.
    s1 = l6. s2 = 16. s1 = s1 + s2. gv_g0 = s1. s1 = p1. rv = s1. RETURN.
  ENDDO.
  s1 = 1144256. s2 = 1148333. s3 = 3113. s4 = 1144447. PERFORM f1101 USING s1 s2 s3 s4.
  RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
  rv = s0.
ENDFORM.

FORM f347 USING p0 TYPE i p1 TYPE i p2 TYPE i p3 TYPE i p4 TYPE i p5 TYPE i CHANGING rv TYPE i.
  DATA l6 TYPE i. DATA l7 TYPE i. DATA l8 TYPE i. DATA l9 TYPE i. DATA l10 TYPE i. DATA l11 TYPE i. DATA l12 TYPE i. DATA l13 TYPE i. DATA l14 TYPE i. DATA l15 TYPE i. DATA l16 TYPE int8. DATA l17 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i.
  DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i.
  DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i.
  DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i. DATA s36 TYPE i. DATA s37 TYPE i. DATA s38 TYPE i. DATA s39 TYPE i. DATA s40 TYPE i. DATA s41 TYPE i. DATA s42 TYPE i. DATA s43 TYPE i.
  DATA s44 TYPE i. DATA s45 TYPE i. DATA s46 TYPE i. DATA s47 TYPE i. DATA s48 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 32. s0 = s0 - s1. l10 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      s0 = p3. s1 = p5. s2 = p3. s3 = p5.
      IF s2 < s3. s2 = 1. ELSE. s2 = 0. ENDIF.
      IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
      s1 = 100.
      IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = l10. s1 = p1. mem_st_i32( iv_addr = s0 + 24 iv_val = s1 ). s0 = -1. l6 = s0. s0 = p0. s1 = l10. s2 = 8. s1 = s1 + s2. s2 = p2. s3 = p3. s4 = p4. s5 = p5. s6 = 4. PERFORM f25 USING s0 s1 s2 s3 s4 s5 s6 CHANGING s0.
        IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        lv_br = 2. EXIT. " br 2
      ELSE.
      ENDIF.
      s0 = p3.
      IF s0 <> 0.
        s0 = p3. s1 = 1. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). l9 = s0. s0 = p4. s0 = zcl_wasm_rt=>mem_ld_i64_ext( iv_mem = mv_mem iv_addr = s0 + 0 iv_op = 53 ). l17 = s0.
        DO 1 TIMES. " block
          s0 = p3. s1 = 1. s0 = s0 - s1. l11 = s0.
          IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0.
            lv_br = 1. EXIT. " br 1
          ELSE.
          ENDIF.
          s0 = p3. s1 = -2. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). l8 = s0. s0 = p1. l6 = s0. s0 = p2. p0 = s0.
          DO. " loop
            s0 = l6. s1 = p0. s1 = zcl_wasm_rt=>mem_ld_i64_ext( iv_mem = mv_mem iv_addr = s1 + 0 iv_op = 53 ). s2 = l17. s1 = s1 * s2. s2 = l16. s1 = s1 + s2. l16 = s1.
            zcl_wasm_rt=>mem_st_i64_trunc( EXPORTING iv_val = s1 iv_addr = s0 + 0 iv_op = 62 CHANGING cv_mem = mv_mem ). s0 = l6. s1 = 4. s0 = s0 + s1. s1 = p0. s2 = 4. s1 = s1 + s2.
            s1 = zcl_wasm_rt=>mem_ld_i64_ext( iv_mem = mv_mem iv_addr = s1 + 0 iv_op = 53 ). s2 = l17. s1 = s1 * s2. s2 = l16. s3 = 32. s2 = zcl_wasm_rt=>shr_u64( iv_val = s2 iv_shift = s3 ). s1 = s1 + s2. l16 = s1.
            zcl_wasm_rt=>mem_st_i64_trunc( EXPORTING iv_val = s1 iv_addr = s0 + 0 iv_op = 62 CHANGING cv_mem = mv_mem ). s0 = l16. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). l16 = s0. s0 = l6. s1 = 8. s0 = s0 + s1.
            l6 = s0. s0 = p0. s1 = 8. s0 = s0 + s1. p0 = s0. s0 = l8. s1 = l7. s2 = 2. s1 = s1 + s2. l7 = s1.
            IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. EXIT. ENDIF. " br_if 0
          ENDDO.
        ENDDO.
        s0 = p1. s1 = p3. s2 = 2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s1 = l9.
        IF s1 <> 0.
          s1 = p1. s2 = l7. s3 = 2. s2 = zcl_wasm_rt=>shl32( iv_val = s2 iv_shift = s3 ). p0 = s2. s1 = s1 + s2. s2 = p0. s3 = p2. s2 = s2 + s3. s2 = zcl_wasm_rt=>mem_ld_i64_ext( iv_mem = mv_mem iv_addr = s2 + 0 iv_op = 53 ). s3 = l17.
          s2 = s2 * s3. s3 = l16. s2 = s2 + s3. l16 = s2. zcl_wasm_rt=>mem_st_i64_trunc( EXPORTING iv_val = s2 iv_addr = s1 + 0 iv_op = 62 CHANGING cv_mem = mv_mem ). s1 = l16. s2 = 32.
          s1 = zcl_wasm_rt=>shr_u64( iv_val = s1 iv_shift = s2 ).
        ELSE.
          s2 = l16.
        ENDIF.
        zcl_wasm_rt=>mem_st_i64_trunc( EXPORTING iv_val = s2 iv_addr = s1 + 0 iv_op = 62 CHANGING cv_mem = mv_mem ). s1 = p5. s2 = 2.
        IF zcl_wasm_rt=>lt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        s1 = p1. s2 = 8. s1 = s1 + s2. l9 = s1. s1 = p3. s2 = -2. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). l12 = s1. s1 = p3. s2 = 1. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). l13 = s1. s1 = 1. l8 = s1.
        DO. " loop
          s1 = p4. s2 = l8. s3 = 2. s2 = zcl_wasm_rt=>shl32( iv_val = s2 iv_shift = s3 ). l14 = s2. s1 = s1 + s2. s1 = zcl_wasm_rt=>mem_ld_i64_ext( iv_mem = mv_mem iv_addr = s1 + 0 iv_op = 53 ). l17 = s1.
          DO 1 TIMES. " block
            s1 = l11.
            IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
            IF s1 <> 0.
              s1 = 0. l16 = s1. s1 = 0. l7 = s1. lv_br = 1. EXIT. " br 1
            ELSE.
            ENDIF.
            s1 = 0. l16 = s1. s1 = 0. l7 = s1. s1 = l9. l6 = s1. s1 = p2. p0 = s1.
            DO. " loop
              s1 = l6. s2 = 4. s1 = s1 - s2. l15 = s1. s2 = l15. s2 = zcl_wasm_rt=>mem_ld_i64_ext( iv_mem = mv_mem iv_addr = s2 + 0 iv_op = 53 ). s3 = p0. s3 = zcl_wasm_rt=>mem_ld_i64_ext( iv_mem = mv_mem iv_addr = s3 + 0 iv_op = 53 ).
              s4 = l17. s3 = s3 * s4. s4 = l16. s3 = s3 + s4. s2 = s2 + s3. l16 = s2. zcl_wasm_rt=>mem_st_i64_trunc( EXPORTING iv_val = s2 iv_addr = s1 + 0 iv_op = 62 CHANGING cv_mem = mv_mem ). s1 = l6. s2 = l6.
              s2 = zcl_wasm_rt=>mem_ld_i64_ext( iv_mem = mv_mem iv_addr = s2 + 0 iv_op = 53 ). s3 = p0. s4 = 4. s3 = s3 + s4. s3 = zcl_wasm_rt=>mem_ld_i64_ext( iv_mem = mv_mem iv_addr = s3 + 0 iv_op = 53 ). s4 = l17. s3 = s3 * s4. s4 = l16.
              s5 = 32. s4 = zcl_wasm_rt=>shr_u64( iv_val = s4 iv_shift = s5 ). s3 = s3 + s4. s2 = s2 + s3. l16 = s2. zcl_wasm_rt=>mem_st_i64_trunc( EXPORTING iv_val = s2 iv_addr = s1 + 0 iv_op = 62 CHANGING cv_mem = mv_mem ). s1 = l16.
              s2 = 32. s1 = zcl_wasm_rt=>shr_u64( iv_val = s1 iv_shift = s2 ). l16 = s1. s1 = l6. s2 = 8. s1 = s1 + s2. l6 = s1. s1 = p0. s2 = 8. s1 = s1 + s2. p0 = s1. s1 = l12. s2 = l7. s3 = 2. s2 = s2 + s3. l7 = s2.
              IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
              IF s1 <> 0. EXIT. ENDIF. " br_if 0
            ENDDO.
          ENDDO.
          s1 = p1. s2 = p3. s3 = l8. s2 = s2 + s3. s3 = 2. s2 = zcl_wasm_rt=>shl32( iv_val = s2 iv_shift = s3 ). s1 = s1 + s2. s2 = l13.
          IF s2 <> 0.
            s2 = l7. s3 = 2. s2 = zcl_wasm_rt=>shl32( iv_val = s2 iv_shift = s3 ). p0 = s2. s3 = p1. s4 = l14. s3 = s3 + s4. s2 = s2 + s3. l6 = s2. s3 = l6. s3 = zcl_wasm_rt=>mem_ld_i64_ext( iv_mem = mv_mem iv_addr = s3 + 0 iv_op = 53 ).
            s4 = p0. s5 = p2. s4 = s4 + s5. s4 = zcl_wasm_rt=>mem_ld_i64_ext( iv_mem = mv_mem iv_addr = s4 + 0 iv_op = 53 ). s5 = l17. s4 = s4 * s5. s5 = l16. s4 = s4 + s5. s3 = s3 + s4. l16 = s3.
            zcl_wasm_rt=>mem_st_i64_trunc( EXPORTING iv_val = s3 iv_addr = s2 + 0 iv_op = 62 CHANGING cv_mem = mv_mem ). s2 = l16. s3 = 32. s2 = zcl_wasm_rt=>shr_u64( iv_val = s2 iv_shift = s3 ).
          ELSE.
            s3 = l16.
          ENDIF.
          zcl_wasm_rt=>mem_st_i64_trunc( EXPORTING iv_val = s3 iv_addr = s2 + 0 iv_op = 62 CHANGING cv_mem = mv_mem ). s2 = l9. s3 = 4. s2 = s2 + s3. l9 = s2. s2 = l8. s3 = 1. s2 = s2 + s3. l8 = s2. s3 = p5.
          IF s2 <> s3. s2 = 1. ELSE. s2 = 0. ENDIF.
          IF s2 <> 0. EXIT. ENDIF. " br_if 0
        ENDDO.
        lv_br = 1. EXIT. " br 1
      ELSE.
      ENDIF.
      s2 = p1. s3 = 0. mem_st_i32( iv_addr = s2 iv_val = s3 ). s2 = p5. s3 = 2.
      IF zcl_wasm_rt=>lt_u32( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
      IF s2 <> 0. EXIT. ENDIF. " br_if 0
      s2 = p1. s3 = 4. s2 = s2 + s3. s3 = 0. s4 = p5. s5 = 2. s4 = zcl_wasm_rt=>shl32( iv_val = s4 iv_shift = s5 ). s5 = 4. s4 = s4 - s5. PERFORM f514 USING s2 s3 s4 CHANGING s2.
    ENDDO.
    s2 = 0. l6 = s2.
  ENDDO.
  s2 = l10. s3 = 32. s2 = s2 + s3. gv_g0 = s2. s2 = l6. rv = s2.
ENDFORM.

FORM f348 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i.
  DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i.
  DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i. DATA s36 TYPE i. DATA s37 TYPE i. DATA s38 TYPE i. DATA s39 TYPE i.
  DATA s40 TYPE i. DATA s41 TYPE i. DATA s42 TYPE i. DATA s43 TYPE i. DATA s44 TYPE i. DATA s45 TYPE i. DATA s46 TYPE i. DATA s47 TYPE i. DATA s48 TYPE i. DATA s49 TYPE i. DATA s50 TYPE i. DATA s51 TYPE i. DATA s52 TYPE i. DATA s53 TYPE i.
  DATA s54 TYPE i. DATA s55 TYPE i. DATA s56 TYPE i. DATA s57 TYPE i. DATA s58 TYPE i. DATA s59 TYPE i. DATA s60 TYPE i. DATA s61 TYPE i. DATA s62 TYPE i. DATA s63 TYPE i. DATA s64 TYPE i. DATA s65 TYPE i. DATA s66 TYPE i.
  DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l2 = s0. gv_g0 = s0.
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
                      DO 1 TIMES. " block
                        DO 1 TIMES. " block
                          DO 1 TIMES. " block
                            DO 1 TIMES. " block
                              s0 = p0. s0 = mem_ld_i32( s0 ). l3 = s0. s0 = mem_ld_i32_8u( s0 ). s1 = 1. s0 = s0 - s1.
                              CASE s0.
                                WHEN 0. lv_br = 1. EXIT.
                                WHEN 1. lv_br = 2. EXIT.
                                WHEN 2. lv_br = 3. EXIT.
                                WHEN 3. lv_br = 4. EXIT.
                                WHEN 4. lv_br = 5. EXIT.
                                WHEN 5. lv_br = 6. EXIT.
                                WHEN 6. lv_br = 7. EXIT.
                                WHEN 7. lv_br = 8. EXIT.
                                WHEN 8. lv_br = 9. EXIT.
                                WHEN 9. lv_br = 10. EXIT.
                                WHEN 10. lv_br = 11. EXIT.
                                WHEN OTHERS. EXIT.
                              ENDCASE.
                            ENDDO.
                            s0 = p1. s0 = mem_ld_i32( s0 + 20 ). s1 = 1097688. s2 = 4. s3 = p1. s3 = mem_ld_i32( s3 + 24 ). s3 = mem_ld_i32( s3 + 12 ).
                            DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
                            s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). p0 = s0. lv_br = 12. EXIT. " br 12
                          ENDDO.
                          s0 = p1. s0 = mem_ld_i32( s0 + 20 ). s1 = 1097692. s2 = 4. s3 = p1. s3 = mem_ld_i32( s3 + 24 ). s3 = mem_ld_i32( s3 + 12 ).
                          DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
                          s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). p0 = s0. lv_br = 11. EXIT. " br 11
                        ENDDO.
                        s0 = p1. s0 = mem_ld_i32( s0 + 20 ). s1 = 1097696. s2 = 3. s3 = p1. s3 = mem_ld_i32( s3 + 24 ). s3 = mem_ld_i32( s3 + 12 ).
                        DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
                        s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). p0 = s0. lv_br = 10. EXIT. " br 10
                      ENDDO.
                      s0 = p1. s0 = mem_ld_i32( s0 + 20 ). s1 = 1097699. s2 = 4. s3 = p1. s3 = mem_ld_i32( s3 + 24 ). s3 = mem_ld_i32( s3 + 12 ).
                      DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
                      s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). p0 = s0. lv_br = 9. EXIT. " br 9
                    ENDDO.
                    s0 = p1. s0 = mem_ld_i32( s0 + 20 ). s1 = 1097703. s2 = 3. s3 = p1. s3 = mem_ld_i32( s3 + 24 ). s3 = mem_ld_i32( s3 + 12 ).
                    DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
                    s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). p0 = s0. lv_br = 8. EXIT. " br 8
                  ENDDO.
                  s0 = p1. s0 = mem_ld_i32( s0 + 20 ). s1 = 1097706. s2 = 4. s3 = p1. s3 = mem_ld_i32( s3 + 24 ). s3 = mem_ld_i32( s3 + 12 ).
                  DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
                  s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). p0 = s0. lv_br = 7. EXIT. " br 7
                ENDDO.
                s0 = p1. s0 = mem_ld_i32( s0 + 20 ). s1 = 1097710. s2 = 3. s3 = p1. s3 = mem_ld_i32( s3 + 24 ). s3 = mem_ld_i32( s3 + 12 ).
                DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
                s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). p0 = s0. lv_br = 6. EXIT. " br 6
              ENDDO.
              s0 = p1. s0 = mem_ld_i32( s0 + 20 ). s1 = 1097713. s2 = 6. s3 = p1. s3 = mem_ld_i32( s3 + 24 ). s3 = mem_ld_i32( s3 + 12 ).
              DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
              s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). p0 = s0. lv_br = 5. EXIT. " br 5
            ENDDO.
            s0 = p1. s0 = mem_ld_i32( s0 + 20 ). s1 = 1097719. s2 = 5. s3 = p1. s3 = mem_ld_i32( s3 + 24 ). s3 = mem_ld_i32( s3 + 12 ).
            DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
            s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). p0 = s0. lv_br = 4. EXIT. " br 4
          ENDDO.
          s0 = p1. s0 = mem_ld_i32( s0 + 20 ). s1 = 1097724. s2 = 6. s3 = p1. s3 = mem_ld_i32( s3 + 24 ). s3 = mem_ld_i32( s3 + 12 ).
          DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
          s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). p0 = s0. lv_br = 3. EXIT. " br 3
        ENDDO.
        s0 = 1. p0 = s0. s0 = l2. s1 = l3. s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l2. s1 = p1. s1 = mem_ld_i32( s1 + 20 ). s2 = 1097730. s3 = 8. s4 = p1. s4 = mem_ld_i32( s4 + 24 ). s4 = mem_ld_i32( s4 + 12 ).
        DATA(lv_ci_func) = mt_tab0[ s4 + 1 ]. " call_indirect
        s1 = dispatch_t11( iv_idx = lv_ci_func p0 = s1 p1 = s2 p2 = s3 ). mem_st_i32_8( iv_addr = s0 + 12 iv_val = s1 ). s0 = l2. s1 = p1. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = l2. s1 = 0.
        mem_st_i32_8( iv_addr = s0 + 13 iv_val = s1 ). s0 = l2. s1 = 0. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = l2. s1 = 4. s0 = s0 + s1. s1 = l2. s2 = 1059048. PERFORM f691 USING s0 s1 s2 CHANGING s0. s1 = l2.
        s1 = mem_ld_i32_8u( s1 + 12 ). p1 = s1. s0 = mem_ld_i32( s0 ). l3 = s0.
        IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = p1. s1 = 0.
          IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          p0 = s0. lv_br = 3. EXIT. " br 3
        ELSE.
        ENDIF.
        s0 = p1.
        IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
        s0 = l2. s0 = mem_ld_i32( s0 + 8 ). p1 = s0. s0 = l3. s1 = 1.
        IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        s0 = l2. s0 = mem_ld_i32_8u( s0 + 13 ).
        IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        s0 = p1. s0 = mem_ld_i32_8u( s0 + 28 ). s1 = 4. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        s0 = p1. s0 = mem_ld_i32( s0 + 20 ). s1 = 1079704. s2 = 1. s3 = p1. s3 = mem_ld_i32( s3 + 24 ). s3 = mem_ld_i32( s3 + 12 ).
        DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
        s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ).
        IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        lv_br = 2. EXIT. " br 2
      ENDDO.
      s0 = l2. s1 = l3. s2 = 4. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l2. s1 = p1. s1 = mem_ld_i32( s1 + 20 ). s2 = 1116212. s3 = 6. s4 = p1. s4 = mem_ld_i32( s4 + 24 ). s4 = mem_ld_i32( s4 + 12 ).
      DATA(lv_ci_func) = mt_tab0[ s4 + 1 ]. " call_indirect
      s1 = dispatch_t11( iv_idx = lv_ci_func p0 = s1 p1 = s2 p2 = s3 ). mem_st_i32_8( iv_addr = s0 + 12 iv_val = s1 ). s0 = l2. s1 = p1. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = l2. s1 = 0.
      mem_st_i32_8( iv_addr = s0 + 13 iv_val = s1 ). s0 = l2. s1 = 0. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = l2. s1 = 4. s0 = s0 + s1. s1 = l2. s2 = 1059064. PERFORM f691 USING s0 s1 s2 CHANGING s0. s1 = l2.
      s1 = mem_ld_i32_8u( s1 + 12 ). p1 = s1. s0 = mem_ld_i32( s0 ). l3 = s0.
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = p1. s1 = 0.
        IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        p0 = s0. lv_br = 2. EXIT. " br 2
      ELSE.
      ENDIF.
      s0 = 1. p0 = s0. s0 = p1.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
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
        IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
      ENDDO.
      s0 = p1. s0 = mem_ld_i32( s0 + 20 ). s1 = 1116251. s2 = 1. s3 = p1. s3 = mem_ld_i32( s3 + 24 ). s3 = mem_ld_i32( s3 + 12 ).
      DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
      s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). p0 = s0. lv_br = 1. EXIT. " br 1
    ENDDO.
    s0 = p1. s0 = mem_ld_i32( s0 + 20 ). s1 = 1116251. s2 = 1. s3 = p1. s3 = mem_ld_i32( s3 + 24 ). s3 = mem_ld_i32( s3 + 12 ).
    DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
    s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). p0 = s0.
  ENDDO.
  s0 = l2. s1 = 16. s0 = s0 + s1. gv_g0 = s0. s0 = p0. rv = s0.
ENDFORM.

FORM f349 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i.
  DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i.
  DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i. DATA s36 TYPE i. DATA s37 TYPE i. DATA s38 TYPE i. DATA s39 TYPE i.
  DATA s40 TYPE i. DATA s41 TYPE i. DATA s42 TYPE i. DATA s43 TYPE i. DATA s44 TYPE i. DATA s45 TYPE i. DATA s46 TYPE i. DATA s47 TYPE i. DATA s48 TYPE i. DATA s49 TYPE i. DATA s50 TYPE i. DATA s51 TYPE i. DATA s52 TYPE i. DATA s53 TYPE i.
  DATA s54 TYPE i. DATA s55 TYPE i. DATA s56 TYPE i. DATA s57 TYPE i. DATA s58 TYPE i. DATA s59 TYPE i. DATA s60 TYPE i. DATA s61 TYPE i. DATA s62 TYPE i. DATA s63 TYPE i. DATA s64 TYPE i. DATA s65 TYPE i. DATA s66 TYPE i.
  DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l2 = s0. gv_g0 = s0.
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
                      DO 1 TIMES. " block
                        DO 1 TIMES. " block
                          DO 1 TIMES. " block
                            DO 1 TIMES. " block
                              s0 = p0. s0 = mem_ld_i32( s0 ). l3 = s0. s0 = mem_ld_i32_8u( s0 ). s1 = 1. s0 = s0 - s1.
                              CASE s0.
                                WHEN 0. lv_br = 1. EXIT.
                                WHEN 1. lv_br = 2. EXIT.
                                WHEN 2. lv_br = 3. EXIT.
                                WHEN 3. lv_br = 4. EXIT.
                                WHEN 4. lv_br = 5. EXIT.
                                WHEN 5. lv_br = 6. EXIT.
                                WHEN 6. lv_br = 7. EXIT.
                                WHEN 7. lv_br = 8. EXIT.
                                WHEN 8. lv_br = 9. EXIT.
                                WHEN 9. lv_br = 10. EXIT.
                                WHEN 10. lv_br = 11. EXIT.
                                WHEN OTHERS. EXIT.
                              ENDCASE.
                            ENDDO.
                            s0 = p1. s0 = mem_ld_i32( s0 + 20 ). s1 = 1097688. s2 = 4. s3 = p1. s3 = mem_ld_i32( s3 + 24 ). s3 = mem_ld_i32( s3 + 12 ).
                            DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
                            s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). p0 = s0. lv_br = 12. EXIT. " br 12
                          ENDDO.
                          s0 = p1. s0 = mem_ld_i32( s0 + 20 ). s1 = 1097692. s2 = 4. s3 = p1. s3 = mem_ld_i32( s3 + 24 ). s3 = mem_ld_i32( s3 + 12 ).
                          DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
                          s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). p0 = s0. lv_br = 11. EXIT. " br 11
                        ENDDO.
                        s0 = p1. s0 = mem_ld_i32( s0 + 20 ). s1 = 1097696. s2 = 3. s3 = p1. s3 = mem_ld_i32( s3 + 24 ). s3 = mem_ld_i32( s3 + 12 ).
                        DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
                        s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). p0 = s0. lv_br = 10. EXIT. " br 10
                      ENDDO.
                      s0 = p1. s0 = mem_ld_i32( s0 + 20 ). s1 = 1097699. s2 = 4. s3 = p1. s3 = mem_ld_i32( s3 + 24 ). s3 = mem_ld_i32( s3 + 12 ).
                      DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
                      s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). p0 = s0. lv_br = 9. EXIT. " br 9
                    ENDDO.
                    s0 = p1. s0 = mem_ld_i32( s0 + 20 ). s1 = 1097703. s2 = 3. s3 = p1. s3 = mem_ld_i32( s3 + 24 ). s3 = mem_ld_i32( s3 + 12 ).
                    DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
                    s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). p0 = s0. lv_br = 8. EXIT. " br 8
                  ENDDO.
                  s0 = p1. s0 = mem_ld_i32( s0 + 20 ). s1 = 1097706. s2 = 4. s3 = p1. s3 = mem_ld_i32( s3 + 24 ). s3 = mem_ld_i32( s3 + 12 ).
                  DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
                  s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). p0 = s0. lv_br = 7. EXIT. " br 7
                ENDDO.
                s0 = p1. s0 = mem_ld_i32( s0 + 20 ). s1 = 1097710. s2 = 3. s3 = p1. s3 = mem_ld_i32( s3 + 24 ). s3 = mem_ld_i32( s3 + 12 ).
                DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
                s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). p0 = s0. lv_br = 6. EXIT. " br 6
              ENDDO.
              s0 = p1. s0 = mem_ld_i32( s0 + 20 ). s1 = 1097713. s2 = 6. s3 = p1. s3 = mem_ld_i32( s3 + 24 ). s3 = mem_ld_i32( s3 + 12 ).
              DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
              s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). p0 = s0. lv_br = 5. EXIT. " br 5
            ENDDO.
            s0 = p1. s0 = mem_ld_i32( s0 + 20 ). s1 = 1097719. s2 = 5. s3 = p1. s3 = mem_ld_i32( s3 + 24 ). s3 = mem_ld_i32( s3 + 12 ).
            DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
            s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). p0 = s0. lv_br = 4. EXIT. " br 4
          ENDDO.
          s0 = p1. s0 = mem_ld_i32( s0 + 20 ). s1 = 1097724. s2 = 6. s3 = p1. s3 = mem_ld_i32( s3 + 24 ). s3 = mem_ld_i32( s3 + 12 ).
          DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
          s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). p0 = s0. lv_br = 3. EXIT. " br 3
        ENDDO.
        s0 = 1. p0 = s0. s0 = l2. s1 = l3. s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l2. s1 = p1. s1 = mem_ld_i32( s1 + 20 ). s2 = 1097730. s3 = 8. s4 = p1. s4 = mem_ld_i32( s4 + 24 ). s4 = mem_ld_i32( s4 + 12 ).
        DATA(lv_ci_func) = mt_tab0[ s4 + 1 ]. " call_indirect
        s1 = dispatch_t11( iv_idx = lv_ci_func p0 = s1 p1 = s2 p2 = s3 ). mem_st_i32_8( iv_addr = s0 + 12 iv_val = s1 ). s0 = l2. s1 = p1. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = l2. s1 = 0.
        mem_st_i32_8( iv_addr = s0 + 13 iv_val = s1 ). s0 = l2. s1 = 0. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = l2. s1 = 4. s0 = s0 + s1. s1 = l2. s2 = 1097740. PERFORM f691 USING s0 s1 s2 CHANGING s0. s1 = l2.
        s1 = mem_ld_i32_8u( s1 + 12 ). p1 = s1. s0 = mem_ld_i32( s0 ). l3 = s0.
        IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = p1. s1 = 0.
          IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          p0 = s0. lv_br = 3. EXIT. " br 3
        ELSE.
        ENDIF.
        s0 = p1.
        IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
        s0 = l2. s0 = mem_ld_i32( s0 + 8 ). p1 = s0. s0 = l3. s1 = 1.
        IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        s0 = l2. s0 = mem_ld_i32_8u( s0 + 13 ).
        IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        s0 = p1. s0 = mem_ld_i32_8u( s0 + 28 ). s1 = 4. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        s0 = p1. s0 = mem_ld_i32( s0 + 20 ). s1 = 1079704. s2 = 1. s3 = p1. s3 = mem_ld_i32( s3 + 24 ). s3 = mem_ld_i32( s3 + 12 ).
        DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
        s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ).
        IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        lv_br = 2. EXIT. " br 2
      ENDDO.
      s0 = l2. s1 = l3. s2 = 4. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l2. s1 = p1. s1 = mem_ld_i32( s1 + 20 ). s2 = 1116212. s3 = 6. s4 = p1. s4 = mem_ld_i32( s4 + 24 ). s4 = mem_ld_i32( s4 + 12 ).
      DATA(lv_ci_func) = mt_tab0[ s4 + 1 ]. " call_indirect
      s1 = dispatch_t11( iv_idx = lv_ci_func p0 = s1 p1 = s2 p2 = s3 ). mem_st_i32_8( iv_addr = s0 + 12 iv_val = s1 ). s0 = l2. s1 = p1. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = l2. s1 = 0.
      mem_st_i32_8( iv_addr = s0 + 13 iv_val = s1 ). s0 = l2. s1 = 0. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = l2. s1 = 4. s0 = s0 + s1. s1 = l2. s2 = 1097756. PERFORM f691 USING s0 s1 s2 CHANGING s0. s1 = l2.
      s1 = mem_ld_i32_8u( s1 + 12 ). p1 = s1. s0 = mem_ld_i32( s0 ). l3 = s0.
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = p1. s1 = 0.
        IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        p0 = s0. lv_br = 2. EXIT. " br 2
      ELSE.
      ENDIF.
      s0 = 1. p0 = s0. s0 = p1.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
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
        IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
      ENDDO.
      s0 = p1. s0 = mem_ld_i32( s0 + 20 ). s1 = 1116251. s2 = 1. s3 = p1. s3 = mem_ld_i32( s3 + 24 ). s3 = mem_ld_i32( s3 + 12 ).
      DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
      s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). p0 = s0. lv_br = 1. EXIT. " br 1
    ENDDO.
    s0 = p1. s0 = mem_ld_i32( s0 + 20 ). s1 = 1116251. s2 = 1. s3 = p1. s3 = mem_ld_i32( s3 + 24 ). s3 = mem_ld_i32( s3 + 12 ).
    DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
    s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). p0 = s0.
  ENDDO.
  s0 = l2. s1 = 16. s0 = s0 + s1. gv_g0 = s0. s0 = p0. rv = s0.
ENDFORM.

FORM f350 USING p0 TYPE i p1 TYPE i p2 TYPE i CHANGING rv TYPE i.
  DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE i. DATA l8 TYPE i. DATA l9 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i.
  DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i.
  DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i.
  DATA s35 TYPE i. DATA s36 TYPE i. DATA s37 TYPE i. DATA s38 TYPE i. DATA s39 TYPE i. DATA s40 TYPE i. DATA s41 TYPE i. DATA s42 TYPE i. DATA s43 TYPE i. DATA s44 TYPE i. DATA s45 TYPE i. DATA s46 TYPE i. DATA s47 TYPE i. DATA s48 TYPE i.
  DATA s49 TYPE i. DATA s50 TYPE i. DATA s51 TYPE i. DATA s52 TYPE i. DATA s53 TYPE i. DATA s54 TYPE i. DATA s55 TYPE i. DATA s56 TYPE i. DATA s57 TYPE i. DATA s58 TYPE i. DATA s59 TYPE i. DATA s60 TYPE i. DATA s61 TYPE i. DATA s62 TYPE i.
  DATA s63 TYPE i. DATA s64 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l6 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      s0 = p1. s1 = -94.
      IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = -1. l3 = s0. s0 = p0. s1 = 8. s2 = p2. PERFORM f300 USING s0 s1 s2 CHANGING s0.
        IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        lv_br = 2. EXIT. " br 2
      ELSE.
      ENDIF.
      s0 = -1. l3 = s0. s0 = p0. s1 = -94. s2 = p2. PERFORM f350 USING s0 s1 s2 CHANGING s0.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
    ENDDO.
    s0 = 0. l3 = s0. s0 = p0. s0 = mem_ld_i32( s0 + 32 ). s1 = p1.
    IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    DO 1 TIMES. " block
      s0 = p0. s1 = 80. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). l3 = s0. s0 = mem_ld_i32( s0 + 296 ). s1 = l3. s1 = mem_ld_i32( s1 + 300 ). l5 = s1.
      IF s0 <= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = l5. s1 = 1. s0 = s0 + s1. l4 = s0. s0 = -1. l5 = s0. s0 = l3. s0 = mem_ld_i32( s0 ). s1 = l3. s2 = 292. s1 = s1 + s2. s2 = 20. s3 = l3. s4 = 296. s3 = s3 + s4. s4 = l4. PERFORM f845 USING s0 s1 s2 s3 s4 CHANGING s0.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        s0 = l3. s0 = mem_ld_i32( s0 + 300 ). l5 = s0.
      ELSE.
      ENDIF.
      s0 = l3. s1 = l5. s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 + 300 iv_val = s1 ). s0 = l3. s0 = mem_ld_i32( s0 + 292 ). s1 = l5. s2 = 20. s1 = s1 * s2. s0 = s0 + s1. l3 = s0. s1 = 0. mem_st_i32( iv_addr = s0 + 16 iv_val = s1 ).
      s0 = l3. s1 = -1. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 8 CHANGING cv_mem = mv_mem ). s0 = l3. s1 = -4294967296. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ).
    ENDDO.
    s0 = 106. s1 = 107. s2 = p1. s3 = -94.
    IF s2 = s3. s2 = 1. ELSE. s2 = 0. ENDIF.
    IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
    l9 = s0. s0 = p0. s1 = 80. s0 = s0 + s1. l8 = s0.
    DO. " loop
      s0 = -1. l3 = s0. s0 = p0. PERFORM f41 USING s0 CHANGING s0.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = l8. s0 = mem_ld_i32( s0 ). l4 = s0. s1 = 256. s0 = s0 + s1. l7 = s0. s0 = l4. s0 = mem_ld_i32( s0 + 284 ). s1 = p0. s1 = mem_ld_i32( s1 + 4 ).
      IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = l7. s1 = 200. PERFORM f908 USING s0 s1. s0 = l6. s1 = p0. s1 = mem_ld_i32( s1 + 4 ). mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = l7. s1 = l6. s2 = 12. s1 = s1 + s2. s2 = 4. PERFORM f1097 USING s0 s1 s2. s0 = l4. s1 = p0.
        s1 = mem_ld_i32( s1 + 4 ). mem_st_i32( iv_addr = s0 + 284 iv_val = s1 ).
      ELSE.
      ENDIF.
      s0 = l4. s1 = l4. s2 = 260. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). mem_st_i32( iv_addr = s0 + 280 iv_val = s1 ). s0 = l7. s1 = 17. PERFORM f908 USING s0 s1. s0 = p0. s1 = l9. s2 = l5. PERFORM f582 USING s0 s1 s2 CHANGING s0. s0 = l8.
      s0 = mem_ld_i32( s0 ). l4 = s0. s1 = 256. s0 = s0 + s1. l7 = s0. s0 = l4. s0 = mem_ld_i32( s0 + 284 ). s1 = p0. s1 = mem_ld_i32( s1 + 4 ).
      IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = l7. s1 = 200. PERFORM f908 USING s0 s1. s0 = l6. s1 = p0. s1 = mem_ld_i32( s1 + 4 ). mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = l7. s1 = l6. s2 = 12. s1 = s1 + s2. s2 = 4. PERFORM f1097 USING s0 s1 s2. s0 = l4. s1 = p0.
        s1 = mem_ld_i32( s1 + 4 ). mem_st_i32( iv_addr = s0 + 284 iv_val = s1 ).
      ELSE.
      ENDIF.
      s0 = l4. s1 = l4. s2 = 260. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). mem_st_i32( iv_addr = s0 + 280 iv_val = s1 ). s0 = l7. s1 = 14. PERFORM f908 USING s0 s1.
      DO 1 TIMES. " block
        s0 = p1. s1 = -94.
        IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = p0. s1 = 8. s2 = p2. PERFORM f300 USING s0 s1 s2 CHANGING s0.
          IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          lv_br = 3. EXIT. " br 3
        ELSE.
        ENDIF.
        s0 = p0. s1 = -94. s2 = p2. PERFORM f350 USING s0 s1 s2 CHANGING s0.
        IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
      ENDDO.
      s0 = p0. s0 = mem_ld_i32( s0 + 32 ). l4 = s0. s1 = p1.
      IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
    ENDDO.
    s0 = l4. s1 = -88.
    IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p0. s1 = 1134483. s2 = 0. PERFORM f881 USING s0 s1 s2. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = 0. l3 = s0. s0 = l5. s1 = 0.
    IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s1 = 80. s0 = s0 + s1. l4 = s0. s0 = mem_ld_i32( s0 ). p1 = s0. s1 = 256. s0 = s0 + s1. p2 = s0. s0 = p1. s0 = mem_ld_i32( s0 + 284 ). s1 = p0. s1 = mem_ld_i32( s1 + 4 ).
    IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p2. s1 = 200. PERFORM f908 USING s0 s1. s0 = l6. s1 = p0. s1 = mem_ld_i32( s1 + 4 ). mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = p2. s1 = l6. s2 = 12. s1 = s1 + s2. s2 = 4. PERFORM f1097 USING s0 s1 s2. s0 = p1. s1 = p0.
      s1 = mem_ld_i32( s1 + 4 ). mem_st_i32( iv_addr = s0 + 284 iv_val = s1 ).
    ELSE.
    ENDIF.
    s0 = p1. s1 = p1. s2 = 260. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). mem_st_i32( iv_addr = s0 + 280 iv_val = s1 ). s0 = p2. s1 = 184. PERFORM f908 USING s0 s1. s0 = l4. s0 = mem_ld_i32( s0 ). s1 = l6. s2 = l5.
    mem_st_i32( iv_addr = s1 + 12 iv_val = s2 ). s1 = 256. s0 = s0 + s1. s1 = l6. s2 = 12. s1 = s1 + s2. s2 = 4. PERFORM f1097 USING s0 s1 s2. s0 = l4. s0 = mem_ld_i32( s0 ). p0 = s0. s0 = mem_ld_i32( s0 + 292 ). s1 = l5. s2 = 20.
    s1 = s1 * s2. s0 = s0 + s1. s1 = p0. s2 = 260. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ).
  ENDDO.
  s0 = l6. s1 = 16. s0 = s0 + s1. gv_g0 = s0. s0 = l3. rv = s0.
ENDFORM.

FORM f351 USING p0 TYPE i p1 TYPE i p2 TYPE i p3 TYPE i p4 TYPE i p5 TYPE i.
  DATA l6 TYPE i. DATA l7 TYPE i. DATA l8 TYPE i. DATA l9 TYPE i. DATA l10 TYPE i. DATA l11 TYPE i. DATA l12 TYPE i. DATA l13 TYPE i. DATA l14 TYPE i. DATA l15 TYPE i. DATA l16 TYPE i. DATA l17 TYPE i. DATA l18 TYPE i. DATA l19 TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i.
  DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i.
  DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA lv_br TYPE i. s0 = p1. s1 = 1. s0 = s0 + s1. l15 = s0. s0 = p1. s1 = 2. s0 = s0 + s1. l16 = s0. s0 = p1. s1 = -1.
  s0 = zcl_wasm_rt=>xor32( iv_a = s0 iv_b = s1 ). l12 = s0. s1 = 31. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). l17 = s0. s0 = p2. s1 = 3. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
  IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
  l18 = s0. s0 = 32. l11 = s0. s0 = p2. s1 = 7. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = 6.
  IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
  l19 = s0.
  DO 1 TIMES. " block
    DO. " loop
      s0 = p3. s0 = mem_ld_i32( s0 + 20 ). l8 = s0. s1 = p1. s2 = l11. s1 = s1 + s2. l6 = s1.
      IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = p3. s0 = mem_ld_i32( s0 + 12 ).
        IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = p3. s1 = 0. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 12 CHANGING cv_mem = mv_mem ). s0 = p3. s1 = -9223372036854775808.
          zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 4 CHANGING cv_mem = mv_mem ). s0 = p3. s1 = p0. s1 = mem_ld_i32( s1 ). mem_st_i32( iv_addr = s0 iv_val = s1 ).
        ELSE.
        ENDIF.
        s0 = p3. s1 = l6. s2 = p4.
        DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
        dispatch_t6( iv_idx = lv_ci_func p0 = s0 p1 = s1 ). s0 = p3. s1 = l6. mem_st_i32( iv_addr = s0 + 20 iv_val = s1 ). s0 = l6. l8 = s0.
      ELSE.
      ENDIF.
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          DO 1 TIMES. " block
            DO 1 TIMES. " block
              DO 1 TIMES. " block
                DO 1 TIMES. " block
                  s0 = p0. s1 = p3.
                  IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                  IF s0 <> 0.
                    s0 = p3. s0 = mem_ld_i32( s0 + 12 ). l7 = s0. s1 = p0. s1 = mem_ld_i32( s1 + 12 ).
                    IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                    IF s0 <> 0.
                      s0 = 0. s1 = l7. s2 = p0. s2 = mem_ld_i32( s2 ). l6 = s2. s2 = mem_ld_i32( s2 ). s3 = p0. s3 = mem_ld_i32( s3 + 16 ). s4 = l7. s5 = 2. s4 = zcl_wasm_rt=>shl32( iv_val = s4 iv_shift = s5 ). s5 = l6. s6 = 4.
                      s5 = s5 + s6. s5 = mem_ld_i32( s5 ).
                      DATA(lv_ci_func) = mt_tab0[ s5 + 1 ]. " call_indirect
                      s2 = dispatch_t11( iv_idx = lv_ci_func p0 = s2 p1 = s3 p2 = s4 ). l6 = s2.
                      IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
                      IF s0 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
                      s0 = p0. s1 = l7. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = p0. s1 = l6. mem_st_i32( iv_addr = s0 + 16 iv_val = s1 ). s0 = p3. s0 = mem_ld_i32( s0 + 12 ). l7 = s0.
                    ELSE.
                    ENDIF.
                    s0 = p0. s1 = p3. s1 = mem_ld_i32( s1 + 4 ). mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = p0. s1 = p3. s1 = mem_ld_i32( s1 + 8 ). l9 = s1. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = l7. s1 = 2.
                    s0 = zcl_wasm_rt=>shl32( iv_val = s0 iv_shift = s1 ). l6 = s0.
                    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
                    IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
                    s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = p3. s1 = mem_ld_i32( s1 + 16 ). s2 = l6. PERFORM f216 USING s0 s1 s2 CHANGING s0.
                  ELSE.
                  ENDIF.
                  s0 = p0. s0 = mem_ld_i32( s0 + 8 ). l9 = s0.
                ENDDO.
                s0 = p0. s1 = p5. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = l9. s1 = 2147483645.
                IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                IF s0 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
                s0 = l19.
                IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
                s0 = l9. s1 = -2147483648.
                IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                IF s0 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
                s0 = l8. s1 = l16.
                IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                IF s0 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
                s0 = 0. l9 = s0. s0 = p0. s0 = mem_ld_i32( s0 + 16 ). l13 = s0.
                DO 1 TIMES. " block
                  s0 = p0. s0 = mem_ld_i32( s0 + 12 ). l10 = s0. s1 = 5. s0 = zcl_wasm_rt=>shl32( iv_val = s0 iv_shift = s1 ). s1 = l12. s0 = s0 + s1. l7 = s0. s1 = 0.
                  IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                  IF s0 <> 0. EXIT. ENDIF. " br_if 0
                  s0 = l7. s1 = 5. s0 = zcl_wasm_rt=>shr_s32( iv_val = s0 iv_shift = s1 ). l6 = s0. s1 = l10.
                  IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
                  IF s0 <> 0. EXIT. ENDIF. " br_if 0
                  s0 = l13. s1 = l6. s2 = 2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s0 = mem_ld_i32( s0 ). s1 = l17. s0 = zcl_wasm_rt=>shr_u32( iv_val = s0 iv_shift = s1 ). s1 = 1.
                  s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). l9 = s0.
                ENDDO.
                s0 = l8. s1 = l12. s0 = s0 + s1.
                IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
                IF s0 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
                s0 = l9. s1 = l18. s0 = zcl_wasm_rt=>xor32( iv_a = s0 iv_b = s1 ). l9 = s0. s0 = l15. s1 = l8. s0 = s0 - s1. l14 = s0. lv_br = 1. EXIT. " br 1
              ENDDO.
              s0 = p0. s0 = mem_ld_i32( s0 + 12 ).
              IF s0 <> 0.
                s0 = p0. s0 = mem_ld_i32( s0 ). l6 = s0. s0 = mem_ld_i32( s0 ). s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s2 = 0. s3 = l6. s4 = 4. s3 = s3 + s4. s3 = mem_ld_i32( s3 ).
                DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
                s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). l6 = s0. s0 = p0. s1 = 0. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = p0. s1 = l6. mem_st_i32( iv_addr = s0 + 16 iv_val = s1 ).
              ELSE.
              ENDIF.
              s0 = p0. s1 = p5. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = p0. s1 = 2147483647. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). lv_br = 2. EXIT. " br 2
            ENDDO.
            DO. " loop
              s0 = l7. s1 = 1. s0 = s0 - s1. l6 = s0. s0 = 0. l8 = s0.
              DO 1 TIMES. " block
                s0 = l7. s1 = 0.
                IF s0 <= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                IF s0 <> 0. EXIT. ENDIF. " br_if 0
                s0 = l6. s1 = 5. s0 = zcl_wasm_rt=>shr_s32( iv_val = s0 iv_shift = s1 ). l7 = s0. s1 = l10.
                IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
                IF s0 <> 0. EXIT. ENDIF. " br_if 0
                s0 = l13. s1 = l7. s2 = 2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s0 = mem_ld_i32( s0 ). s1 = l6. s0 = zcl_wasm_rt=>shr_u32( iv_val = s0 iv_shift = s1 ). s1 = 1.
                s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). l8 = s0.
              ENDDO.
              s0 = l8. s1 = l9.
              IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0. lv_br = 5. EXIT. ENDIF. " br_if 5
              s0 = l6. l7 = s0. s0 = l14. s1 = 1. s0 = s0 + s1. l14 = s0.
              IF s0 <> 0. EXIT. ENDIF. " br_if 0
            ENDDO.
            lv_br = 1. EXIT. " br 1
          ENDDO.
          s0 = p1. s1 = l8.
          IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        ENDDO.
        s0 = l11. s1 = 1. s0 = zcl_wasm_rt=>shr_u32( iv_val = s0 iv_shift = s1 ). s1 = l11. s0 = s0 + s1. l11 = s0. lv_br = 1. EXIT. " br 1
      ENDDO.
    ENDDO.
    s0 = p0. s0 = mem_ld_i32( s0 + 12 ). l10 = s0.
  ENDDO.
  s0 = l10.
  IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    RETURN.
  ELSE.
  ENDIF.
  s0 = p0. s1 = p1. s2 = p2. s3 = l10. s4 = 0. PERFORM f137 USING s0 s1 s2 s3 s4 CHANGING s0.
ENDFORM.

FORM f352 USING p0 TYPE i p1 TYPE i p2 TYPE i p3 TYPE i CHANGING rv TYPE i.
  DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE i. DATA l8 TYPE i. DATA l9 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i.
  DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i.
  DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i.
  DATA s36 TYPE i. DATA s37 TYPE i. DATA s38 TYPE i. DATA s39 TYPE i. DATA s40 TYPE i. DATA s41 TYPE i. DATA s42 TYPE i. DATA s43 TYPE i. DATA s44 TYPE i. DATA s45 TYPE i. DATA lv_br TYPE i. s0 = p0. s0 = mem_ld_i32( s0 ). l7 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          DO 1 TIMES. " block
            DO 1 TIMES. " block
              DO 1 TIMES. " block
                s0 = p2. s1 = 60. s0 = s0 - s1.
                CASE s0.
                  WHEN 0. lv_br = 5. EXIT.
                  WHEN 1. lv_br = 1. EXIT.
                  WHEN 2. lv_br = 1. EXIT.
                  WHEN 3. lv_br = 1. EXIT.
                  WHEN 4. lv_br = 1. EXIT.
                  WHEN 5. lv_br = 1. EXIT.
                  WHEN 6. lv_br = 1. EXIT.
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
                  WHEN 19. lv_br = 5. EXIT.
                  WHEN OTHERS. EXIT.
                ENDCASE.
              ENDDO.
              s0 = p2. s1 = 22.
              IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
            ENDDO.
            DO 1 TIMES. " block
              s0 = p0. s0 = mem_ld_i32( s0 + 80 ). l6 = s0. s0 = mem_ld_i32( s0 + 320 ). l5 = s0. s1 = 0.
              IF s0 <= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0. EXIT. ENDIF. " br_if 0
              s0 = l6. s0 = mem_ld_i32( s0 + 328 ). s1 = 4. s0 = s0 + s1. l4 = s0. s0 = l5. l8 = s0.
              DO. " loop
                s0 = p2. s1 = l4. s1 = mem_ld_i32( s1 ).
                IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                IF s0 <> 0.
                  s0 = p0. s1 = 1143853. s2 = 0. PERFORM f881 USING s0 s1 s2. s0 = -1. rv = s0. RETURN.
                ELSE.
                ENDIF.
                s0 = l4. s1 = 8. s0 = s0 + s1. l4 = s0. s0 = l8. s1 = 1. s0 = s0 - s1. l8 = s0.
                IF s0 <> 0. EXIT. ENDIF. " br_if 0
              ENDDO.
              s0 = l5. s1 = 65535.
              IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0. EXIT. ENDIF. " br_if 0
              lv_br = 5. EXIT. " br 5
            ENDDO.
            s0 = l6. s1 = 328. s0 = s0 + s1. p0 = s0. s0 = p1. s0 = mem_ld_i32( s0 + 56 ). l9 = s0. s0 = l6. s1 = 320. s0 = s0 + s1. l4 = s0. s1 = l5. s2 = l6. s2 = mem_ld_i32( s2 + 324 ).
            IF s1 >= s2. s1 = 1. ELSE. s1 = 0. ENDIF.
            IF s1 <> 0.
              s1 = -1. l8 = s1. s1 = l7. s2 = p0. s3 = 8. s4 = l6. s5 = 324. s4 = s4 + s5. s5 = l5. s6 = 1. s5 = s5 + s6. PERFORM f845 USING s1 s2 s3 s4 s5 CHANGING s1.
              IF s1 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
              s1 = l4. s1 = mem_ld_i32( s1 ). l5 = s1.
            ELSE.
            ENDIF.
            s1 = l5. s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s0 = mem_ld_i32( s0 ). s1 = l5. s2 = 3. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. p0 = s0. s1 = l9.
            mem_st_i32_16( iv_addr = s0 + 2 iv_val = s1 ). s0 = p0. s1 = p3. s2 = 127.
            IF s1 = s2. s1 = 1. ELSE. s1 = 0. ENDIF.
            s2 = 12. s1 = zcl_wasm_rt=>or32( iv_a = s1 iv_b = s2 ). mem_st_i32_8( iv_addr = s0 iv_val = s1 ). s0 = p2. s1 = 228.
            IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0.
              s0 = l7. s0 = mem_ld_i32( s0 + 16 ). s0 = mem_ld_i32( s0 + 56 ). s1 = p2. s2 = 2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s0 = mem_ld_i32( s0 ). l5 = s0. s1 = l5. s1 = mem_ld_i32( s1 ). s2 = 1.
              s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
            ELSE.
            ENDIF.
            s0 = p0. s1 = p2. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = p1. s1 = 56. s0 = s0 + s1. lv_br = 1. EXIT. " br 1
          ENDDO.
          s1 = p0. s1 = mem_ld_i32( s1 + 80 ). p2 = s1. s1 = mem_ld_i32( s1 + 320 ). p0 = s1. s2 = 65535.
          IF s1 >= s2. s1 = 1. ELSE. s1 = 0. ENDIF.
          IF s1 <> 0.
            lv_br = 4. EXIT. " br 4
          ELSE.
          ENDIF.
          s1 = p1. s1 = mem_ld_i32( s1 + 56 ). l9 = s1. s1 = p2. s2 = 328. s1 = s1 + s2. l6 = s1. s1 = p2. s2 = 320. s1 = s1 + s2. l4 = s1. s2 = p0. s3 = p2. s3 = mem_ld_i32( s3 + 324 ).
          IF s2 >= s3. s2 = 1. ELSE. s2 = 0. ENDIF.
          IF s2 <> 0.
            s2 = -1. l8 = s2. s2 = l7. s3 = l6. s4 = 8. s5 = p2. s6 = 324. s5 = s5 + s6. s6 = p0. s7 = 1. s6 = s6 + s7. PERFORM f845 USING s2 s3 s4 s5 s6 CHANGING s2.
            IF s2 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
            s2 = l4. s2 = mem_ld_i32( s2 ). p0 = s2.
          ELSE.
          ENDIF.
          s2 = p0. s3 = 1. s2 = s2 + s3. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = l6. s1 = mem_ld_i32( s1 ). s2 = p0. s3 = 3. s2 = zcl_wasm_rt=>shl32( iv_val = s2 iv_shift = s3 ). s1 = s1 + s2. p0 = s1. s2 = 22.
          mem_st_i32( iv_addr = s1 + 4 iv_val = s2 ). s1 = p0. s2 = l9. mem_st_i32_16( iv_addr = s1 + 2 iv_val = s2 ). s1 = p0. s2 = p3. s3 = 127.
          IF s2 = s3. s2 = 1. ELSE. s2 = 0. ENDIF.
          s3 = 12. s2 = zcl_wasm_rt=>or32( iv_a = s2 iv_b = s3 ). mem_st_i32_8( iv_addr = s1 iv_val = s2 ). s1 = p1. s2 = 56. s1 = s1 + s2.
        ENDDO.
        l5 = s1. s1 = -1. l8 = s1. s1 = l4. s1 = mem_ld_i32( s1 ). p2 = s1. s2 = 0.
        IF s1 <= s2. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0. EXIT. ENDIF. " br_if 0
        s1 = p1. s2 = 52. s1 = s1 + s2. p0 = s1. s1 = p1. s1 = mem_ld_i32( s1 + 56 ). l4 = s1. s2 = p1. s2 = mem_ld_i32( s2 + 60 ).
        IF s1 >= s2. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0.
          s1 = l7. s2 = p0. s3 = 12. s4 = p1. s5 = 60. s4 = s4 + s5. s5 = l4. s6 = 1. s5 = s5 + s6. PERFORM f845 USING s1 s2 s3 s4 s5 CHANGING s1.
          IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          s1 = l5. s1 = mem_ld_i32( s1 ). l4 = s1.
        ELSE.
        ENDIF.
        s1 = l5. s2 = l4. s3 = 1. s2 = s2 + s3. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = p0. s1 = mem_ld_i32( s1 ). s2 = l4. s3 = 12. s2 = s2 * s3. s1 = s1 + s2. p0 = s1. s1 = p3. s2 = 228.
        IF s1 >= s2. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0.
          s1 = l7. s1 = mem_ld_i32( s1 + 16 ). s1 = mem_ld_i32( s1 + 56 ). s2 = p3. s3 = 2. s2 = zcl_wasm_rt=>shl32( iv_val = s2 iv_shift = s3 ). s1 = s1 + s2. s1 = mem_ld_i32( s1 ). p1 = s1. s2 = p1. s2 = mem_ld_i32( s2 ). s3 = 1.
          s2 = s2 + s3. mem_st_i32( iv_addr = s1 iv_val = s2 ).
        ELSE.
        ENDIF.
        s1 = p0. s2 = p2. s3 = 1. s2 = s2 - s3. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = p0. s2 = p3. mem_st_i32( iv_addr = s1 + 4 iv_val = s2 ). s1 = 0. l8 = s1.
      ENDDO.
      s1 = l8. rv = s1. RETURN.
    ENDDO.
    s1 = p0. s2 = 1143878. s3 = 0. PERFORM f881 USING s1 s2 s3. s1 = -1. rv = s1. RETURN.
  ENDDO.
  s1 = l7. s2 = 1138870. s3 = 0. PERFORM f969 USING s1 s2 s3 CHANGING s1. s1 = -1. rv = s1.
ENDFORM.

FORM f353 USING p0 TYPE i CHANGING rv TYPE i.
  DATA l1 TYPE i. DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i.
  DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i.
  DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i.
  DATA s36 TYPE i. DATA s37 TYPE i. DATA s38 TYPE i. DATA s39 TYPE i. DATA s40 TYPE i. DATA s41 TYPE i. DATA s42 TYPE i. DATA s43 TYPE i. DATA s44 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      s0 = p0. s0 = mem_ld_i32( s0 + 8 ). l2 = s0. s1 = p0. s1 = mem_ld_i32( s1 + 12 ). l5 = s1.
      IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = l2. s0 = mem_ld_i32_8s( s0 ). l1 = s0. s1 = 127. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). l3 = s0.
      DO 1 TIMES. " block
        s0 = l2. s1 = 1. s0 = s0 + s1. l4 = s0. s1 = l1. s2 = 0.
        IF s1 >= s2. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0. EXIT. ENDIF. " br_if 0
        s0 = l4. s1 = l5.
        IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        s0 = l2. s0 = mem_ld_i32_8s( s0 + 1 ). l1 = s0. s1 = 127. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = 7. s0 = zcl_wasm_rt=>shl32( iv_val = s0 iv_shift = s1 ). s1 = l3. s0 = zcl_wasm_rt=>or32( iv_a = s0 iv_b = s1 ). l3 = s0.
        s0 = l2. s1 = 2. s0 = s0 + s1. l4 = s0. s1 = l1. s2 = 0.
        IF s1 >= s2. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0. EXIT. ENDIF. " br_if 0
        s0 = l4. s1 = l5.
        IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        s0 = l2. s0 = mem_ld_i32_8s( s0 + 2 ). l1 = s0. s1 = 127. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = 14. s0 = zcl_wasm_rt=>shl32( iv_val = s0 iv_shift = s1 ). s1 = l3. s0 = zcl_wasm_rt=>or32( iv_a = s0 iv_b = s1 ).
        l3 = s0. s0 = l2. s1 = 3. s0 = s0 + s1. l4 = s0. s1 = l1. s2 = 0.
        IF s1 >= s2. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0. EXIT. ENDIF. " br_if 0
        s0 = l4. s1 = l5.
        IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        s0 = l2. s0 = mem_ld_i32_8s( s0 + 3 ). l1 = s0. s1 = 127. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = 21. s0 = zcl_wasm_rt=>shl32( iv_val = s0 iv_shift = s1 ). s1 = l3. s0 = zcl_wasm_rt=>or32( iv_a = s0 iv_b = s1 ).
        l3 = s0. s0 = l2. s1 = 4. s0 = s0 + s1. l4 = s0. s1 = l1. s2 = 0.
        IF s1 >= s2. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0. EXIT. ENDIF. " br_if 0
        s0 = l4. s1 = l5.
        IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        s0 = l2. s0 = mem_ld_i32_8s( s0 + 4 ). l1 = s0. s1 = 0.
        IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        s0 = l1. s1 = 28. s0 = zcl_wasm_rt=>shl32( iv_val = s0 iv_shift = s1 ). s1 = l3. s0 = zcl_wasm_rt=>or32( iv_a = s0 iv_b = s1 ). l3 = s0. s0 = l2. s1 = 5. s0 = s0 + s1.
      ENDDO.
      s1 = l2. s0 = s0 - s1. l1 = s0. s1 = 0.
      IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
    ENDDO.
    s0 = p0. s0 = mem_ld_i32( s0 + 28 ).
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p0. s0 = mem_ld_i32( s0 ). s1 = 1140414. s2 = 0. PERFORM f974 USING s0 s1 s2.
    ELSE.
    ENDIF.
    s0 = p0. s1 = -1. mem_st_i32( iv_addr = s0 + 28 iv_val = s1 ). s0 = 0. rv = s0. RETURN.
  ENDDO.
  s0 = p0. s1 = l1. s2 = l2. s1 = s1 + s2. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = p0. s0 = mem_ld_i32( s0 ). l4 = s0. s0 = mem_ld_i32( s0 + 16 ). l1 = s0. s1 = 16. s0 = s0 + s1. s1 = l3. s2 = 1.
  s1 = zcl_wasm_rt=>shr_u32( iv_val = s1 iv_shift = s2 ). l5 = s1. s2 = l3. s3 = 1. s2 = zcl_wasm_rt=>and32( iv_a = s2 iv_b = s3 ). l2 = s2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). l6 = s1. s2 = l2. s1 = s1 - s2. s2 = 17.
  s1 = s1 + s2. s2 = l1. s2 = mem_ld_i32( s2 ).
  DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
  s0 = dispatch_t7( iv_idx = lv_ci_func p0 = s0 p1 = s1 ). l1 = s0.
  IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = l4. s0 = mem_ld_i32( s0 + 16 ). l1 = s0. s0 = mem_ld_i32_8u( s0 + 136 ).
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = l1. s1 = 1. mem_st_i32_8( iv_addr = s0 + 136 iv_val = s1 ). s0 = l4. s1 = 1134898. s2 = 0. PERFORM f969 USING s0 s1 s2 CHANGING s0. s0 = l1. s1 = 0. mem_st_i32_8( iv_addr = s0 + 136 iv_val = s1 ).
    ELSE.
    ENDIF.
    s0 = p0. s1 = -1. mem_st_i32( iv_addr = s0 + 28 iv_val = s1 ). s0 = 0. rv = s0. RETURN.
  ELSE.
  ENDIF.
  s0 = l1. s1 = l2. s2 = 31. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s2 = l5. s1 = zcl_wasm_rt=>or32( iv_a = s1 iv_b = s2 ). s1 = zcl_wasm_rt=>extend_u32( s1 ).
  zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 4 CHANGING cv_mem = mv_mem ). s0 = l1. s1 = 1. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l1. s1 = 0. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ).
  DO 1 TIMES. " block
    s0 = l6. s1 = p0. s1 = mem_ld_i32( s1 + 12 ). s2 = p0. s2 = mem_ld_i32( s2 + 8 ). l3 = s2. s1 = s1 - s2.
    IF zcl_wasm_rt=>gt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      DO 1 TIMES. " block
        s0 = p0. s0 = mem_ld_i32( s0 + 28 ).
        IF s0 <> 0.
          s0 = p0. s1 = -1. mem_st_i32( iv_addr = s0 + 28 iv_val = s1 ). s0 = l1. s1 = 0. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s0 = mem_ld_i32( s0 ). s0 = mem_ld_i32( s0 + 16 ). lv_br = 1. EXIT. " br 1
        ELSE.
        ENDIF.
        s1 = p0. s1 = mem_ld_i32( s1 ). s2 = 1140414. s3 = 0. PERFORM f974 USING s1 s2 s3. s1 = p0. s2 = -1. mem_st_i32( iv_addr = s1 + 28 iv_val = s2 ). s1 = l1. s2 = l1. s2 = mem_ld_i32( s2 ). l5 = s2. s3 = 1. s2 = s2 - s3.
        mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = 0. s2 = l5. s3 = 1.
        IF s2 > s3. s2 = 1. ELSE. s2 = 0. ENDIF.
        IF s2 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
        s1 = p0. s1 = mem_ld_i32( s1 ). s1 = mem_ld_i32( s1 + 16 ).
      ENDDO.
      p0 = s1. s1 = l1. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 4 ). s2 = 4611686018427387904.
      IF zcl_wasm_rt=>ge_u64( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0.
        s1 = p0. s2 = l1. PERFORM f713 USING s1 s2. s1 = 0. rv = s1. RETURN.
      ELSE.
      ENDIF.
      s1 = p0. s2 = 16. s1 = s1 + s2. s2 = l1. s3 = p0. s3 = mem_ld_i32( s3 + 4 ).
      DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
      dispatch_t6( iv_idx = lv_ci_func p0 = s1 p1 = s2 ). s1 = 0. rv = s1. RETURN.
    ELSE.
    ENDIF.
    s1 = l1. s2 = 16. s1 = s1 + s2. s2 = l3. s3 = l6. PERFORM f216 USING s1 s2 s3 CHANGING s1. l3 = s1. s1 = p0. s2 = p0. s2 = mem_ld_i32( s2 + 8 ). s3 = l6. s2 = s2 + s3. mem_st_i32( iv_addr = s1 + 8 iv_val = s2 ). s1 = l2.
    IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
    IF s1 <> 0.
      s1 = l3. s2 = l6. s1 = s1 + s2. s2 = 0. mem_st_i32_8( iv_addr = s1 iv_val = s2 ).
    ELSE.
    ENDIF.
    s1 = l1.
  ENDDO.
  rv = s1.
ENDFORM.

FORM f354 USING p0 TYPE i p1 TYPE int8 p2 TYPE i CHANGING rv TYPE i.
  DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE int8. DATA l8 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i.
  DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i.
  DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i.
  DATA s36 TYPE i. DATA s37 TYPE i. DATA s38 TYPE i. DATA s39 TYPE i. DATA s40 TYPE i. DATA s41 TYPE i. DATA s42 TYPE i. DATA s43 TYPE i. DATA s44 TYPE i. DATA s45 TYPE i. DATA s46 TYPE i. DATA s47 TYPE i. DATA s48 TYPE i. DATA s49 TYPE i.
  DATA s50 TYPE i. DATA s51 TYPE i. DATA s52 TYPE i. DATA s53 TYPE i. DATA s54 TYPE i. DATA s55 TYPE i. DATA s56 TYPE i. DATA s57 TYPE i. DATA s58 TYPE i. DATA s59 TYPE i. DATA s60 TYPE i. DATA s61 TYPE i. DATA s62 TYPE i. DATA s63 TYPE i.
  DATA s64 TYPE i. DATA s65 TYPE i. DATA s66 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 48. s0 = s0 - s1. l5 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    s0 = p1. s1 = -4294967296.
    IF zcl_wasm_rt=>lt_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l6 = s0. s0 = mem_ld_i32_16u( s0 + 6 ). s1 = 48.
    IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l6. s0 = mem_ld_i32( s0 + 32 ). l4 = s0.
  ENDDO.
  DO 1 TIMES. " block
    s0 = l4. s0 = mem_ld_i32_8u( s0 + 17 ).
    IF s0 <> 0.
      s0 = p0. s1 = 1134591. s2 = 0. PERFORM f970 USING s0 s1 s2 CHANGING s0. s0 = -1. l6 = s0. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = -1. l6 = s0. s0 = p0. s1 = l4. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 8 ). p1 = s1. s2 = 102. s3 = p1. s4 = 0. PERFORM f192 USING s0 s1 s2 s3 s4 CHANGING s0. p1 = s0. s1 = -4294967296.
    s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). l7 = s0. s1 = 25769803776.
    IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = 12884901888. s1 = p1. s2 = l7. s3 = 8589934592.
    IF s2 = s3. s2 = 1. ELSE. s2 = 0. ENDIF.
    IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
    p1 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 12884901888.
    IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p0. s1 = l4. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 0 ). PERFORM f151 USING s0 s1 CHANGING s0. p1 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 25769803776.
      IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p0. s1 = p1. s1 = zcl_wasm_rt=>wrap_i64( s1 ). l3 = s1. s2 = p2. PERFORM f110 USING s0 s1 s2 CHANGING s0. l6 = s0. s0 = p1. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ).
      s1 = -11.
      IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = l3. s1 = l3. s1 = mem_ld_i32( s1 ). p2 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p2. s1 = 1.
      IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = p1. PERFORM f453 USING s0 s1. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = p0. s1 = p2. s2 = 0. PERFORM f772 USING s0 s1 s2 CHANGING s0. l7 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 25769803776.
    IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p1. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
      IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p2 = s0. s1 = p2. s1 = mem_ld_i32( s1 ). p2 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p2. s1 = 1.
      IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = p1. PERFORM f453 USING s0 s1. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = l4. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). l8 = s0. s0 = l5. s1 = l7. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 40 CHANGING cv_mem = mv_mem ). s0 = l5. s1 = l8.
    zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 32 CHANGING cv_mem = mv_mem ). s0 = p0. s1 = p1. s2 = l4. s2 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s2 + 8 ). s3 = 12884901888. s4 = 2. s5 = l5. s6 = 32.
    s5 = s5 + s6. s6 = 2. PERFORM f0 USING s0 s1 s2 s3 s4 s5 s6 CHANGING s0. l8 = s0.
    DO 1 TIMES. " block
      s0 = p1. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
      IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l3 = s0. s1 = l3. s1 = mem_ld_i32( s1 ). l3 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l3. s1 = 1.
      IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = p1. PERFORM f453 USING s0 s1.
    ENDDO.
    DO 1 TIMES. " block
      s0 = l7. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
      IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = l7. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l3 = s0. s1 = l3. s1 = mem_ld_i32( s1 ). l3 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l3. s1 = 1.
      IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = l7. PERFORM f453 USING s0 s1.
    ENDDO.
    s0 = l8. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 25769803776.
    IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s1 = l8. PERFORM f581 USING s0 s1 CHANGING s0. l3 = s0.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = 0. l6 = s0. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = p0. s1 = l5. s2 = l4. s2 = mem_ld_i32( s2 ). s3 = p2. PERFORM f311 USING s0 s1 s2 s3 CHANGING s0. p2 = s0. s1 = 0.
    IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p2.
    IF s0 <> 0.
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          DO 1 TIMES. " block
            s0 = l5. s0 = mem_ld_i32_8u( s0 ). s1 = 1. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
            IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. EXIT. ENDIF. " br_if 0
            s0 = l4. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). p1 = s0. s1 = -4294967296.
            IF zcl_wasm_rt=>lt_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. EXIT. ENDIF. " br_if 0
            DO 1 TIMES. " block
              s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p2 = s0. s0 = mem_ld_i32_16u( s0 + 6 ). s1 = 48.
              IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0.
                s0 = p2. s0 = mem_ld_i32_8u( s0 + 5 ). s1 = 1. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). l4 = s0. lv_br = 1. EXIT. " br 1
              ELSE.
              ENDIF.
              s0 = p0. s1 = p1. PERFORM f578 USING s0 s1 CHANGING s0. l4 = s0. s1 = 0.
              IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
            ENDDO.
            s0 = l4.
            IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
          ENDDO.
          s0 = p0. s1 = 1134789. s2 = 0. PERFORM f970 USING s0 s1 s2 CHANGING s0.
        ENDDO.
        s0 = p0. s1 = l5. PERFORM f863 USING s0 s1. lv_br = 2. EXIT. " br 2
      ENDDO.
      s0 = p0. s1 = l5. PERFORM f863 USING s0 s1.
    ELSE.
    ENDIF.
    s0 = l3. l6 = s0.
  ENDDO.
  s0 = l5. s1 = 48. s0 = s0 + s1. gv_g0 = s0. s0 = l6. rv = s0.
ENDFORM.

FORM f355 USING p0 TYPE i p1 TYPE i.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE i. DATA l8 TYPE i. DATA l9 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i.
  DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          s0 = p1. s0 = mem_ld_i32_8u( s0 + 28 ). l6 = s0. s1 = 1.
          IF zcl_wasm_rt=>gt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0.
            lv_br = 1. EXIT. " br 1
          ELSE.
          ENDIF.
          DO 1 TIMES. " block
            s0 = p1. s0 = mem_ld_i32_8u( s0 + 30 ). l9 = s0.
            IF s0 <> 0. EXIT. ENDIF. " br_if 0
            s0 = p1. s0 = mem_ld_i32_8u( s0 + 8 ). l7 = s0. s1 = 5. s0 = s0 - s1. s1 = 255. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = 1.
            IF zcl_wasm_rt=>gt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. EXIT. ENDIF. " br_if 0
            s0 = p1. s0 = mem_ld_i32( s0 + 4 ). l4 = s0. s0 = p1. s0 = mem_ld_i32( s0 ). l8 = s0.
            DO 1 TIMES. " block
              s0 = l6.
              IF s0 <> 0. EXIT. ENDIF. " br_if 0
              s0 = l7. s1 = 6.
              IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0. EXIT. ENDIF. " br_if 0
              s0 = 2. l2 = s0. s0 = l4. s1 = 1.
              IF zcl_wasm_rt=>le_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
            ENDDO.
            s0 = l2. s1 = l4.
            IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. EXIT. ENDIF. " br_if 0
            s0 = l2. s1 = l8. s0 = s0 + s1. l7 = s0. s0 = mem_ld_i32_8u( s0 ). l2 = s0.
            DO 1 TIMES. " block
              DO 1 TIMES. " block
                s0 = l7. s1 = 1. s0 = s0 + s1. l7 = s0. s1 = l4. s2 = l8. s1 = s1 + s2.
                IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                l4 = s0.
                IF s0 <> 0. EXIT. ENDIF. " br_if 0
                s0 = l2. s1 = 46.
                IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                IF s0 <> 0. EXIT. ENDIF. " br_if 0
                s0 = l7. s0 = mem_ld_i32_8u( s0 ). s1 = 47.
                IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
                lv_br = 2. EXIT. " br 2
              ENDDO.
              s0 = l4. s1 = -1. s0 = zcl_wasm_rt=>xor32( iv_a = s0 iv_b = s1 ). s1 = l2. s2 = 46.
              IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
              s0 = zcl_wasm_rt=>or32( iv_a = s0 iv_b = s1 ). s1 = 1. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
              IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
            ENDDO.
            s0 = 1. l5 = s0.
          ENDDO.
          s0 = l9. s1 = 0.
          IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          l4 = s0. s0 = l6.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          DO 1 TIMES. " block
            DO 1 TIMES. " block
              DO 1 TIMES. " block
                DO 1 TIMES. " block
                  DO 1 TIMES. " block
                    DO 1 TIMES. " block
                      s0 = p1. s0 = mem_ld_i32_8u( s0 + 8 ). s1 = 1. s0 = s0 - s1.
                      CASE s0.
                        WHEN 0. lv_br = 1. EXIT.
                        WHEN 1. lv_br = 5. EXIT.
                        WHEN 2. lv_br = 2. EXIT.
                        WHEN 3. lv_br = 3. EXIT.
                        WHEN 4. lv_br = 4. EXIT.
                        WHEN 5. lv_br = 6. EXIT.
                        WHEN OTHERS. EXIT.
                      ENDCASE.
                    ENDDO.
                    s0 = p1. s0 = mem_ld_i32( s0 + 16 ). s1 = 4. s0 = s0 + s1. l3 = s0. lv_br = 5. EXIT. " br 5
                  ENDDO.
                  s0 = p1. s0 = mem_ld_i32( s0 + 16 ). s1 = p1. s1 = mem_ld_i32( s1 + 24 ). l2 = s1. s2 = 1. s1 = s1 + s2. s2 = 0. s3 = l2.
                  IF s3 <> 0. s1 = s1. ELSE. s1 = s2. ENDIF.
                  s0 = s0 + s1. s1 = 8. s0 = s0 + s1. l3 = s0. lv_br = 4. EXIT. " br 4
                ENDDO.
                s0 = p1. s0 = mem_ld_i32( s0 + 16 ). s1 = 4. s0 = s0 + s1. l3 = s0. lv_br = 3. EXIT. " br 3
              ENDDO.
              s0 = p1. s0 = mem_ld_i32( s0 + 16 ). s1 = p1. s1 = mem_ld_i32( s1 + 24 ). l2 = s1. s2 = 1. s1 = s1 + s2. s2 = 0. s3 = l2.
              IF s3 <> 0. s1 = s1. ELSE. s1 = s2. ENDIF.
              s0 = s0 + s1. s1 = 2. s0 = s0 + s1. l3 = s0. lv_br = 2. EXIT. " br 2
            ENDDO.
            s0 = 2. l3 = s0. lv_br = 1. EXIT. " br 1
          ENDDO.
          s0 = 6. l3 = s0.
        ENDDO.
        s0 = l4. s1 = l5. s0 = s0 + s1. s1 = l3. s0 = s0 + s1. l2 = s0. s1 = p1. s1 = mem_ld_i32( s1 + 4 ). l3 = s1.
        IF zcl_wasm_rt=>gt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        s0 = 0. l8 = s0. s0 = 0. s1 = l2. s0 = s0 - s1. l4 = s0. s0 = p1. s0 = mem_ld_i32( s0 ). l9 = s0. s1 = l2. s0 = s0 + s1. l6 = s0. s0 = l3. s1 = l9. s0 = s0 + s1. s1 = 1. s0 = s0 - s1. l5 = s0.
        DO 1 TIMES. " block
          DO. " loop
            s0 = l3. s1 = l4. s0 = s0 + s1.
            IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
            s0 = l4. s1 = 1. s0 = s0 - s1. l4 = s0. s0 = l5. s0 = mem_ld_i32_8u( s0 ). s1 = l5. s2 = 1. s1 = s1 - s2. l5 = s1. s1 = 47.
            IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. EXIT. ENDIF. " br_if 0
          ENDDO.
          s0 = l3. s1 = l4. s0 = s0 + s1. s1 = 1. s0 = s0 + s1. s1 = l2. s0 = s0 + s1. l2 = s0. s1 = l3.
          IF zcl_wasm_rt=>gt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
          s0 = l2. s1 = l9. s0 = s0 + s1. l6 = s0. s0 = 1. l8 = s0.
        ENDDO.
        s0 = 9. l5 = s0.
        DO 1 TIMES. " block
          DO 1 TIMES. " block
            DO 1 TIMES. " block
              DO 1 TIMES. " block
                s0 = l3. s1 = l2. s0 = s0 - s1. l2 = s0.
                CASE s0.
                  WHEN 0. lv_br = 2. EXIT.
                  WHEN 1. EXIT.
                  WHEN 2. lv_br = 1. EXIT.
                  WHEN OTHERS. lv_br = 3. EXIT.
                ENDCASE.
              ENDDO.
              s0 = l6. s0 = mem_ld_i32_8u( s0 ). s1 = 46.
              IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
              s0 = 7. s1 = 10. s2 = p1. s2 = mem_ld_i32_8u( s2 + 8 ). s3 = 3.
              IF zcl_wasm_rt=>lt_u32( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
              IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
              l5 = s0. lv_br = 2. EXIT. " br 2
            ENDDO.
            s0 = l6. s0 = mem_ld_i32_8u( s0 ). s1 = 46.
            IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
            s0 = 8. s1 = 9. s2 = l6. s2 = mem_ld_i32_8u( s2 + 1 ). s3 = 46.
            IF s2 = s3. s2 = 1. ELSE. s2 = 0. ENDIF.
            IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
            l5 = s0. lv_br = 1. EXIT. " br 1
          ENDDO.
          s0 = 10. l5 = s0.
        ENDDO.
        s0 = p0. s1 = l2. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = p0. s1 = l6. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = p0. s1 = l5. mem_st_i32_8( iv_addr = s0 + 4 iv_val = s1 ). s0 = p0. s1 = l2. s2 = l8. s1 = s1 + s2.
        mem_st_i32( iv_addr = s0 iv_val = s1 ).
        RETURN.
      ENDDO.
      s0 = 2. s1 = l4. s2 = 1116672. PERFORM f1044 USING s0 s1 s2.
      RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
    ENDDO.
    s0 = l2. s1 = l3. s2 = 1116688. PERFORM f1044 USING s0 s1 s2.
    RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
  ENDDO.
  s0 = l2. s1 = l3. s2 = 1116704. PERFORM f1044 USING s0 s1 s2.
  RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
ENDFORM.

FORM f356 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i p4 TYPE i CHANGING rv TYPE int8.
  DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE i. DATA l8 TYPE int8. DATA l9 TYPE int8. DATA l10 TYPE int8. DATA l11 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i.
  DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i.
  DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i.
  DATA s35 TYPE i. DATA s36 TYPE i. DATA s37 TYPE i. DATA s38 TYPE i. DATA s39 TYPE i. DATA s40 TYPE i. DATA s41 TYPE i. DATA s42 TYPE i. DATA s43 TYPE i. DATA s44 TYPE i. DATA s45 TYPE i. DATA s46 TYPE i. DATA s47 TYPE i. DATA s48 TYPE i.
  DATA s49 TYPE i. DATA s50 TYPE i. DATA s51 TYPE i. DATA s52 TYPE i. DATA s53 TYPE i. DATA s54 TYPE i. DATA s55 TYPE i. DATA s56 TYPE i. DATA s57 TYPE i. DATA s58 TYPE i. DATA s59 TYPE i. DATA s60 TYPE i. DATA s61 TYPE i. DATA s62 TYPE i.
  DATA s63 TYPE i. DATA s64 TYPE i. DATA s65 TYPE i. DATA s66 TYPE i. DATA s67 TYPE i. DATA s68 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l6 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      s0 = p0. s1 = p0. s2 = p1. PERFORM f151 USING s1 s2 CHANGING s1. l8 = s1. s2 = 48. s3 = l8. s4 = 0. PERFORM f192 USING s0 s1 s2 s3 s4 CHANGING s0. p1 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ).
      s1 = 25769803776.
      IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = l6. s1 = 0. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 8 CHANGING cv_mem = mv_mem ). lv_br = 1. EXIT. " br 1
      ELSE.
      ENDIF.
      s0 = p1. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). l5 = s0. s1 = -11.
      IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l7 = s0. s1 = l7. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
      ELSE.
      ENDIF.
      DO 1 TIMES. " block
        s0 = p0. s1 = l6. s2 = 8. s1 = s1 + s2. s2 = p1. PERFORM f719 USING s0 s1 s2 CHANGING s0. l7 = s0.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = l6. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 8 ). l10 = s0. s1 = 0.
        IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = 9007199254740991. l9 = s0. s0 = l10. s1 = 9007199254740992.
          IF zcl_wasm_rt=>lt_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        ELSE.
        ENDIF.
        s0 = l6. s1 = l9. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 8 CHANGING cv_mem = mv_mem ).
      ENDDO.
      DO 1 TIMES. " block
        s0 = l5. s1 = -11.
        IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l5 = s0. s1 = l5. s1 = mem_ld_i32( s1 ). l5 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l5. s1 = 1.
        IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = p1. PERFORM f453 USING s0 s1.
      ENDDO.
      s0 = l7.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = l6. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 8 ). p1 = s0. s1 = p2. s1 = s1. " i64.extend_i32_s (noop in ABAP - sign preserved) l10 = s1. s0 = s0 + s1. l9 = s0. s1 = 9007199254740992.
      IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = p0. s1 = 1143567. s2 = 0. PERFORM f970 USING s0 s1 s2 CHANGING s0. lv_br = 1. EXIT. " br 1
      ELSE.
      ENDIF.
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          DO 1 TIMES. " block
            s0 = p2. s1 = 0.
            IF s0 <= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            l5 = s0.
            IF s0 <> 0. EXIT. ENDIF. " br_if 0
            s0 = p4.
            IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. EXIT. ENDIF. " br_if 0
            s0 = p0. s1 = l8. s2 = l10. s3 = 0. s4 = p1. s5 = -1. PERFORM f227 USING s0 s1 s2 s3 s4 s5 CHANGING s0. s1 = 0. p1 = s1.
            IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
            lv_br = 3. EXIT. " br 3
          ENDDO.
          s0 = l5.
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        ENDDO.
        s0 = p2. s0 = zcl_wasm_rt=>extend_u32( s0 ). l10 = s0.
        DO. " loop
          s0 = p3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). l11 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
          IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0.
            s0 = l11. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p2 = s0. s1 = p2. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
          ELSE.
          ENDIF.
          s0 = p0. s1 = l8. s2 = p1. s3 = l11. PERFORM f716 USING s0 s1 s2 s3 CHANGING s0. s1 = 0.
          IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
          s0 = p1. s1 = 1. s0 = s0 + s1. p1 = s0. s0 = p3. s1 = 8. s0 = s0 + s1. p3 = s0. s0 = l10. s1 = 1. s0 = s0 - s1. l10 = s0. s1 = 0.
          IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
        ENDDO.
      ENDDO.
      s0 = p0. s1 = l8. s2 = 48. s3 = l9. s4 = 2147483648. s3 = s3 + s4. l10 = s3. s4 = 4294967295.
      IF zcl_wasm_rt=>le_u64( iv_a = s3 iv_b = s4 ) = abap_true. s3 = 1. ELSE. s3 = 0. ENDIF.
      IF s3 <> 0.
        s3 = l9. s4 = 4294967295. s3 = zcl_wasm_rt=>and64( iv_a = s3 iv_b = s4 ).
      ELSE.
        s4 = -51539607552. s5 = l9. s5 = s5. " convert to f64 s5 = zcl_wasm_rt=>reinterpret_f64_i64( s5 ). p1 = s5. s6 = 9221120288580698112. s5 = s5 - s6. s6 = p1. s7 = 9223372036854775807. s6 = zcl_wasm_rt=>and64( iv_a = s6 iv_b = s7 ).
        s7 = 9218868437227405312.
        IF zcl_wasm_rt=>gt_u64( iv_a = s6 iv_b = s7 ) = abap_true. s6 = 1. ELSE. s6 = 0. ENDIF.
        IF s6 <> 0. s4 = s4. ELSE. s4 = s5. ENDIF.
      ENDIF.
      s5 = l8. s6 = 16384. PERFORM f89 USING s1 s2 s3 s4 s5 s6 CHANGING s1. s2 = 0.
      IF s1 < s2. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. EXIT. ENDIF. " br_if 0
      DO 1 TIMES. " block
        s1 = l8. s2 = 32. s1 = zcl_wasm_rt=>shr_u64( iv_val = s1 iv_shift = s2 ). s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = -11.
        IF zcl_wasm_rt=>lt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0. EXIT. ENDIF. " br_if 0
        s1 = l8. s1 = zcl_wasm_rt=>wrap_i64( s1 ). p2 = s1. s2 = p2. s2 = mem_ld_i32( s2 ). p2 = s2. s3 = 1. s2 = s2 - s3. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = p2. s2 = 1.
        IF s1 > s2. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0. EXIT. ENDIF. " br_if 0
        s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s2 = l8. PERFORM f453 USING s1 s2.
      ENDDO.
      s1 = l10. s2 = 4294967295.
      IF zcl_wasm_rt=>le_u64( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0.
        s1 = l9. s2 = 4294967295. s1 = zcl_wasm_rt=>and64( iv_a = s1 iv_b = s2 ). p1 = s1. lv_br = 2. EXIT. " br 2
      ELSE.
      ENDIF.
      s1 = -51539607552. s2 = l9. s2 = s2. " convert to f64 s2 = zcl_wasm_rt=>reinterpret_f64_i64( s2 ). p1 = s2. s3 = 9221120288580698112. s2 = s2 - s3. s3 = p1. s4 = 9223372036854775807. s3 = zcl_wasm_rt=>and64( iv_a = s3 iv_b = s4 ).
      s4 = 9218868437227405312.
      IF zcl_wasm_rt=>gt_u64( iv_a = s3 iv_b = s4 ) = abap_true. s3 = 1. ELSE. s3 = 0. ENDIF.
      IF s3 <> 0. s1 = s1. ELSE. s1 = s2. ENDIF.
      p1 = s1. lv_br = 1. EXIT. " br 1
    ENDDO.
    s1 = 25769803776. p1 = s1. s1 = l8. s2 = 32. s1 = zcl_wasm_rt=>shr_u64( iv_val = s1 iv_shift = s2 ). s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = -11.
    IF zcl_wasm_rt=>lt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
    IF s1 <> 0. EXIT. ENDIF. " br_if 0
    s1 = l8. s1 = zcl_wasm_rt=>wrap_i64( s1 ). p2 = s1. s2 = p2. s2 = mem_ld_i32( s2 ). p2 = s2. s3 = 1. s2 = s2 - s3. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = p2. s2 = 1.
    IF s1 > s2. s1 = 1. ELSE. s1 = 0. ENDIF.
    IF s1 <> 0. EXIT. ENDIF. " br_if 0
    s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s2 = l8. PERFORM f453 USING s1 s2.
  ENDDO.
  s1 = l6. s2 = 16. s1 = s1 + s2. gv_g0 = s1. s1 = p1. rv = s1.
ENDFORM.

FORM f357 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i p4 TYPE i CHANGING rv TYPE int8.
  DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE i. DATA l8 TYPE i. DATA l9 TYPE int8. DATA l10 TYPE int8. DATA l11 TYPE int8. DATA l12 TYPE int8. DATA l13 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i.
  DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i.
  DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i.
  DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i. DATA s36 TYPE i. DATA s37 TYPE i. DATA s38 TYPE i. DATA s39 TYPE i. DATA s40 TYPE i. DATA s41 TYPE i. DATA s42 TYPE i. DATA s43 TYPE i. DATA s44 TYPE i. DATA s45 TYPE i.
  DATA s46 TYPE i. DATA s47 TYPE i. DATA s48 TYPE i. DATA s49 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 48. s0 = s0 - s1. l5 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        s0 = p1. s1 = -4294967296.
        IF zcl_wasm_rt=>ge_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l6 = s0. s0 = mem_ld_i32_16u( s0 + 6 ). s1 = 21. s0 = s0 - s1. s1 = 65535. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = 11.
          IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        ELSE.
        ENDIF.
        s0 = l5. s1 = 1135229. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s1 = 1139205. s2 = l5. PERFORM f970 USING s0 s1 s2 CHANGING s0. lv_br = 1. EXIT. " br 1
      ENDDO.
      s0 = l6. s1 = 32. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). s1 = 12. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). s1 = 32. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). s1 = 4. s0 = s0 + s1. s0 = mem_ld_i32_8u( s0 ).
      IF s0 <> 0.
        s0 = p0. s1 = 1148080. s2 = 0. PERFORM f970 USING s0 s1 s2 CHANGING s0. lv_br = 1. EXIT. " br 1
      ELSE.
      ENDIF.
      s0 = 25769803776. l9 = s0. s0 = l6. s1 = 40. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). l8 = s0. s1 = 0.
      IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      DO 1 TIMES. " block
        s0 = p3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). l12 = s0. s1 = -4294967296.
        IF zcl_wasm_rt=>ge_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = l12. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l6 = s0. s0 = mem_ld_i32_16u( s0 + 6 ). l7 = s0. s1 = 13.
          IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          DO 1 TIMES. " block
            s0 = l7. s1 = 48.
            IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0.
              s0 = l6. s0 = mem_ld_i32( s0 + 32 ). s0 = mem_ld_i32_8u( s0 + 16 ). lv_br = 1. EXIT. " br 1
            ELSE.
            ENDIF.
            s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s1 = mem_ld_i32( s1 + 68 ). s2 = l7. s3 = 24. s2 = s2 * s3. s1 = s1 + s2. s1 = mem_ld_i32( s1 + 16 ).
          ENDDO.
          IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        ELSE.
        ENDIF.
        s1 = p0. s2 = 1141317. s3 = 0. PERFORM f970 USING s1 s2 s3 CHANGING s1. lv_br = 2. EXIT. " br 2
      ENDDO.
      s1 = 12884901888. l11 = s1. s1 = p2. s2 = 2.
      IF s1 >= s2. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0.
        s1 = p3. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 8 ). l11 = s1.
      ELSE.
      ENDIF.
      DO 1 TIMES. " block
        s1 = l8. s2 = 1. s1 = s1 - s2. s2 = 0. s3 = p4. s4 = -2. s3 = zcl_wasm_rt=>and32( iv_a = s3 iv_b = s4 ). s4 = 2.
        IF s3 = s4. s3 = 1. ELSE. s3 = 0. ENDIF.
        p2 = s3.
        IF s3 <> 0. s1 = s1. ELSE. s1 = s2. ENDIF.
        p3 = s1. s2 = -1. s3 = l8. s4 = p2.
        IF s4 <> 0. s2 = s2. ELSE. s2 = s3. ENDIF.
        l7 = s2.
        IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0.
          s1 = -1. s2 = 1. s3 = p2.
          IF s3 <> 0. s1 = s1. ELSE. s1 = s2. ENDIF.
          l6 = s1.
          DO. " loop
            s1 = p0. s2 = p1. s3 = p3. s3 = zcl_wasm_rt=>extend_u32( s3 ). l10 = s3. PERFORM f283 USING s1 s2 s3 CHANGING s1. l9 = s1. s2 = -4294967296. s1 = zcl_wasm_rt=>and64( iv_a = s1 iv_b = s2 ). s2 = 25769803776.
            IF s1 = s2. s1 = 1. ELSE. s1 = 0. ENDIF.
            IF s1 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
            s1 = l5. s2 = p1. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s2 iv_addr = s1 + 32 CHANGING cv_mem = mv_mem ). s1 = l5. s2 = l10. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s2 iv_addr = s1 + 24 CHANGING cv_mem = mv_mem ).
            s1 = l5. s2 = l9. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s2 iv_addr = s1 + 16 CHANGING cv_mem = mv_mem ). s1 = p0. s2 = l12. s3 = l11. s4 = 12884901888. s5 = 3. s6 = l5. s7 = 16. s6 = s6 + s7. s7 = 2.
            PERFORM f0 USING s1 s2 s3 s4 s5 s6 s7 CHANGING s1. l13 = s1. s2 = -4294967296. s1 = zcl_wasm_rt=>and64( iv_a = s1 iv_b = s2 ). s2 = 25769803776.
            IF s1 = s2. s1 = 1. ELSE. s1 = 0. ENDIF.
            IF s1 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
            s1 = p0. s2 = l13. PERFORM f581 USING s1 s2 CHANGING s1.
            IF s1 <> 0.
              DO 1 TIMES. " block
                s1 = p4. s2 = 1. s1 = s1 - s2.
                CASE s1.
                  WHEN 0. EXIT.
                  WHEN 1. lv_br = 6. EXIT.
                  WHEN 2. EXIT.
                  WHEN OTHERS. lv_br = 6. EXIT.
                ENDCASE.
              ENDDO.
              s1 = l9. s2 = 32. s1 = zcl_wasm_rt=>shr_u64( iv_val = s1 iv_shift = s2 ). s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = -11.
              IF zcl_wasm_rt=>lt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
              IF s1 <> 0.
                s1 = l10. l9 = s1. lv_br = 6. EXIT. " br 6
              ELSE.
              ENDIF.
              s1 = l9. s1 = zcl_wasm_rt=>wrap_i64( s1 ). p2 = s1. s2 = p2. s2 = mem_ld_i32( s2 ). p2 = s2. s3 = 1. s2 = s2 - s3. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = p2. s2 = 1.
              IF s1 > s2. s1 = 1. ELSE. s1 = 0. ENDIF.
              IF s1 <> 0.
                s1 = l10. l9 = s1. lv_br = 6. EXIT. " br 6
              ELSE.
              ENDIF.
              s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s2 = l9. PERFORM f453 USING s1 s2. s1 = l10. l9 = s1. lv_br = 5. EXIT. " br 5
            ELSE.
            ENDIF.
            DO 1 TIMES. " block
              s1 = l9. s2 = 32. s1 = zcl_wasm_rt=>shr_u64( iv_val = s1 iv_shift = s2 ). s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = -11.
              IF zcl_wasm_rt=>lt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
              IF s1 <> 0. EXIT. ENDIF. " br_if 0
              s1 = l9. s1 = zcl_wasm_rt=>wrap_i64( s1 ). p2 = s1. s2 = p2. s2 = mem_ld_i32( s2 ). p2 = s2. s3 = 1. s2 = s2 - s3. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = p2. s2 = 1.
              IF s1 > s2. s1 = 1. ELSE. s1 = 0. ENDIF.
              IF s1 <> 0. EXIT. ENDIF. " br_if 0
              s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s2 = l9. PERFORM f453 USING s1 s2.
            ENDDO.
            s1 = l7. s2 = p3. s3 = l6. s2 = s2 + s3. p3 = s2.
            IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
            IF s1 <> 0. EXIT. ENDIF. " br_if 0
          ENDDO.
        ELSE.
        ENDIF.
        s1 = 12884901888. s2 = 4294967295. s3 = p4. s4 = 1. s3 = s3 - s4. s4 = -3. s3 = zcl_wasm_rt=>and32( iv_a = s3 iv_b = s4 ).
        IF s3 <> 0. s1 = s1. ELSE. s1 = s2. ENDIF.
        l9 = s1. lv_br = 2. EXIT. " br 2
      ENDDO.
      s1 = l9. s2 = 32. s1 = zcl_wasm_rt=>shr_u64( iv_val = s1 iv_shift = s2 ). s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = -11.
      IF zcl_wasm_rt=>lt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. EXIT. ENDIF. " br_if 0
      s1 = l9. s1 = zcl_wasm_rt=>wrap_i64( s1 ). p2 = s1. s2 = p2. s2 = mem_ld_i32( s2 ). p2 = s2. s3 = 1. s2 = s2 - s3. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = p2. s2 = 1.
      IF s1 > s2. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. EXIT. ENDIF. " br_if 0
      s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s2 = l9. PERFORM f453 USING s1 s2.
    ENDDO.
    s1 = 25769803776. l9 = s1.
  ENDDO.
  s1 = l5. s2 = 48. s1 = s1 + s2. gv_g0 = s1. s1 = l9. rv = s1.
ENDFORM.

FORM f358 USING p0 TYPE i p1 TYPE i p2 TYPE i p3 TYPE i p4 TYPE i p5 TYPE i CHANGING rv TYPE i.
  DATA l6 TYPE i. DATA l7 TYPE i. DATA l8 TYPE i. DATA l9 TYPE i. DATA l10 TYPE i. DATA l11 TYPE i. DATA l12 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i.
  DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i.
  DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i.
  DATA s35 TYPE i. DATA s36 TYPE i. DATA s37 TYPE i. DATA s38 TYPE i. DATA s39 TYPE i. DATA s40 TYPE i. DATA s41 TYPE i. DATA s42 TYPE i. DATA s43 TYPE i. DATA s44 TYPE i. DATA s45 TYPE i. DATA s46 TYPE i. DATA s47 TYPE i. DATA s48 TYPE i.
  DATA s49 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    s0 = p1.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p0. s0 = mem_ld_i32( s0 + 28 ). l6 = s0. s0 = 45. l9 = s0. s0 = p5. s1 = 1. s0 = s0 + s1. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s1 = 43. s2 = 1114112. s3 = p0. s3 = mem_ld_i32( s3 + 28 ). l6 = s3. s4 = 1. s3 = zcl_wasm_rt=>and32( iv_a = s3 iv_b = s4 ). p1 = s3.
    IF s3 <> 0. s1 = s1. ELSE. s1 = s2. ENDIF.
    l9 = s1. s1 = p1. s2 = p5. s1 = s1 + s2.
  ENDDO.
  l7 = s1.
  DO 1 TIMES. " block
    s1 = l6. s2 = 4. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ).
    IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
    IF s1 <> 0.
      s1 = 0. p2 = s1. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    DO 1 TIMES. " block
      s1 = p3.
      IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0.
        lv_br = 1. EXIT. " br 1
      ELSE.
      ENDIF.
      s1 = p3. s2 = 3. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). l10 = s1.
      IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. EXIT. ENDIF. " br_if 0
      s1 = p2. p1 = s1.
      DO. " loop
        s1 = l8. s2 = p1. s2 = mem_ld_i32_8s( s2 ). s3 = -65.
        IF s2 > s3. s2 = 1. ELSE. s2 = 0. ENDIF.
        s1 = s1 + s2. l8 = s1. s1 = p1. s2 = 1. s1 = s1 + s2. p1 = s1. s1 = l10. s2 = 1. s1 = s1 - s2. l10 = s1.
        IF s1 <> 0. EXIT. ENDIF. " br_if 0
      ENDDO.
    ENDDO.
    s1 = l7. s2 = l8. s1 = s1 + s2. l7 = s1.
  ENDDO.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      s1 = p0. s1 = mem_ld_i32( s1 ).
      IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0.
        s1 = 1. p1 = s1. s1 = p0. s1 = mem_ld_i32( s1 + 20 ). l6 = s1. s2 = p0. s2 = mem_ld_i32( s2 + 24 ). p0 = s2. s3 = l9. s4 = p2. s5 = p3. PERFORM f1170 USING s1 s2 s3 s4 s5 CHANGING s1.
        IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        lv_br = 2. EXIT. " br 2
      ELSE.
      ENDIF.
      s1 = l7. s2 = p0. s2 = mem_ld_i32( s2 + 4 ). l8 = s2.
      IF zcl_wasm_rt=>ge_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0.
        s1 = 1. p1 = s1. s1 = p0. s1 = mem_ld_i32( s1 + 20 ). l6 = s1. s2 = p0. s2 = mem_ld_i32( s2 + 24 ). p0 = s2. s3 = l9. s4 = p2. s5 = p3. PERFORM f1170 USING s1 s2 s3 s4 s5 CHANGING s1.
        IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        lv_br = 2. EXIT. " br 2
      ELSE.
      ENDIF.
      s1 = l6. s2 = 8. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ).
      IF s1 <> 0.
        s1 = p0. s1 = mem_ld_i32( s1 + 16 ). l11 = s1. s1 = p0. s2 = 48. mem_st_i32( iv_addr = s1 + 16 iv_val = s2 ). s1 = p0. s1 = mem_ld_i32_8u( s1 + 32 ). l12 = s1. s1 = 1. p1 = s1. s1 = p0. s2 = 1.
        mem_st_i32_8( iv_addr = s1 + 32 iv_val = s2 ). s1 = p0. s1 = mem_ld_i32( s1 + 20 ). l6 = s1. s2 = p0. s2 = mem_ld_i32( s2 + 24 ). l10 = s2. s3 = l9. s4 = p2. s5 = p3. PERFORM f1170 USING s1 s2 s3 s4 s5 CHANGING s1.
        IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        s1 = l8. s2 = l7. s1 = s1 - s2. s2 = 1. s1 = s1 + s2. p1 = s1.
        DO 1 TIMES. " block
          DO. " loop
            s1 = p1. s2 = 1. s1 = s1 - s2. p1 = s1.
            IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
            IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
            s1 = l6. s2 = 48. s3 = l10. s3 = mem_ld_i32( s3 + 16 ).
            DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
            s1 = dispatch_t7( iv_idx = lv_ci_func p0 = s1 p1 = s2 ).
            IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
            IF s1 <> 0. EXIT. ENDIF. " br_if 0
          ENDDO.
          s1 = 1. rv = s1. RETURN.
        ENDDO.
        s1 = 1. p1 = s1. s1 = l6. s2 = p4. s3 = p5. s4 = l10. s4 = mem_ld_i32( s4 + 12 ).
        DATA(lv_ci_func) = mt_tab0[ s4 + 1 ]. " call_indirect
        s1 = dispatch_t11( iv_idx = lv_ci_func p0 = s1 p1 = s2 p2 = s3 ).
        IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        s1 = p0. s2 = l12. mem_st_i32_8( iv_addr = s1 + 32 iv_val = s2 ). s1 = p0. s2 = l11. mem_st_i32( iv_addr = s1 + 16 iv_val = s2 ). s1 = 0. p1 = s1. lv_br = 1. EXIT. " br 1
      ELSE.
      ENDIF.
      s1 = l8. s2 = l7. s1 = s1 - s2. l6 = s1.
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          DO 1 TIMES. " block
            s1 = p0. s1 = mem_ld_i32_8u( s1 + 32 ). p1 = s1. s2 = 1. s1 = s1 - s2.
            CASE s1.
              WHEN 0. EXIT.
              WHEN 1. lv_br = 1. EXIT.
              WHEN 2. EXIT.
              WHEN OTHERS. lv_br = 2. EXIT.
            ENDCASE.
          ENDDO.
          s1 = l6. p1 = s1. s1 = 0. l6 = s1. lv_br = 1. EXIT. " br 1
        ENDDO.
        s1 = l6. s2 = 1. s1 = zcl_wasm_rt=>shr_u32( iv_val = s1 iv_shift = s2 ). p1 = s1. s1 = l6. s2 = 1. s1 = s1 + s2. s2 = 1. s1 = zcl_wasm_rt=>shr_u32( iv_val = s1 iv_shift = s2 ). l6 = s1.
      ENDDO.
      s1 = p1. s2 = 1. s1 = s1 + s2. p1 = s1. s1 = p0. s1 = mem_ld_i32( s1 + 16 ). l8 = s1. s1 = p0. s1 = mem_ld_i32( s1 + 24 ). l7 = s1. s1 = p0. s1 = mem_ld_i32( s1 + 20 ). p0 = s1.
      DO 1 TIMES. " block
        DO. " loop
          s1 = p1. s2 = 1. s1 = s1 - s2. p1 = s1.
          IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
          IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          s1 = p0. s2 = l8. s3 = l7. s3 = mem_ld_i32( s3 + 16 ).
          DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
          s1 = dispatch_t7( iv_idx = lv_ci_func p0 = s1 p1 = s2 ).
          IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
          IF s1 <> 0. EXIT. ENDIF. " br_if 0
        ENDDO.
        s1 = 1. rv = s1. RETURN.
      ENDDO.
      s1 = 1. p1 = s1. s1 = p0. s2 = l7. s3 = l9. s4 = p2. s5 = p3. PERFORM f1170 USING s1 s2 s3 s4 s5 CHANGING s1.
      IF s1 <> 0. EXIT. ENDIF. " br_if 0
      s1 = p0. s2 = p4. s3 = p5. s4 = l7. s4 = mem_ld_i32( s4 + 12 ).
      DATA(lv_ci_func) = mt_tab0[ s4 + 1 ]. " call_indirect
      s1 = dispatch_t11( iv_idx = lv_ci_func p0 = s1 p1 = s2 p2 = s3 ).
      IF s1 <> 0. EXIT. ENDIF. " br_if 0
      s1 = 0. p1 = s1.
      DO. " loop
        s1 = p1. s2 = l6.
        IF s1 = s2. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0.
          s1 = 0. rv = s1. RETURN.
        ELSE.
        ENDIF.
        s1 = p1. s2 = 1. s1 = s1 + s2. p1 = s1. s1 = p0. s2 = l8. s3 = l7. s3 = mem_ld_i32( s3 + 16 ).
        DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
        s1 = dispatch_t7( iv_idx = lv_ci_func p0 = s1 p1 = s2 ).
        IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0. EXIT. ENDIF. " br_if 0
      ENDDO.
      s1 = p1. s2 = 1. s1 = s1 - s2. s2 = l6.
      IF zcl_wasm_rt=>lt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
      rv = s1. RETURN.
    ENDDO.
    s1 = p1. rv = s1. RETURN.
  ENDDO.
  s1 = l6. s2 = p4. s3 = p5. s4 = p0. s4 = mem_ld_i32( s4 + 12 ).
  DATA(lv_ci_func) = mt_tab0[ s4 + 1 ]. " call_indirect
  s1 = dispatch_t11( iv_idx = lv_ci_func p0 = s1 p1 = s2 p2 = s3 ). rv = s1.
ENDFORM.

FORM f359 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i.
  DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i.
  DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i. DATA s36 TYPE i. DATA s37 TYPE i. DATA s38 TYPE i. DATA s39 TYPE i.
  DATA s40 TYPE i. DATA s41 TYPE i. DATA s42 TYPE i. DATA s43 TYPE i. DATA s44 TYPE i. DATA s45 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    s0 = p1. s0 = mem_ld_i32_8u( s0 ). s1 = 91.
    IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      DO 1 TIMES. " block
        s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s0 = mem_ld_i32( s0 + 56 ). l3 = s0. s0 = mem_ld_i32( s0 + 856 ). l2 = s0. s0 = mem_ld_i32( s0 + 4 ). s1 = 2147483647. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = p1. s2 = 1.
        s1 = s1 + s2. p1 = s1. PERFORM f768 USING s1 CHANGING s1. s2 = 1. s1 = s1 - s2. p0 = s1.
        IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = l2. s1 = 16. s0 = s0 + s1. s1 = p1. s2 = p0. PERFORM f1116 USING s0 s1 s2 CHANGING s0.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = 214. rv = s0. RETURN.
      ENDDO.
      DO 1 TIMES. " block
        s0 = l3. s0 = mem_ld_i32( s0 + 860 ). l2 = s0. s0 = mem_ld_i32( s0 + 4 ). s1 = 2147483647. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = p0.
        IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = l2. s1 = 16. s0 = s0 + s1. s1 = p1. s2 = p0. PERFORM f1116 USING s0 s1 s2 CHANGING s0.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = 215. rv = s0. RETURN.
      ENDDO.
      DO 1 TIMES. " block
        s0 = l3. s0 = mem_ld_i32( s0 + 864 ). l2 = s0. s0 = mem_ld_i32( s0 + 4 ). s1 = 2147483647. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = p0.
        IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = l2. s1 = 16. s0 = s0 + s1. s1 = p1. s2 = p0. PERFORM f1116 USING s0 s1 s2 CHANGING s0.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = 216. rv = s0. RETURN.
      ENDDO.
      DO 1 TIMES. " block
        s0 = l3. s0 = mem_ld_i32( s0 + 868 ). l2 = s0. s0 = mem_ld_i32( s0 + 4 ). s1 = 2147483647. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = p0.
        IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = l2. s1 = 16. s0 = s0 + s1. s1 = p1. s2 = p0. PERFORM f1116 USING s0 s1 s2 CHANGING s0.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = 217. rv = s0. RETURN.
      ENDDO.
      DO 1 TIMES. " block
        s0 = l3. s0 = mem_ld_i32( s0 + 872 ). l2 = s0. s0 = mem_ld_i32( s0 + 4 ). s1 = 2147483647. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = p0.
        IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = l2. s1 = 16. s0 = s0 + s1. s1 = p1. s2 = p0. PERFORM f1116 USING s0 s1 s2 CHANGING s0.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = 218. rv = s0. RETURN.
      ENDDO.
      DO 1 TIMES. " block
        s0 = l3. s0 = mem_ld_i32( s0 + 876 ). l2 = s0. s0 = mem_ld_i32( s0 + 4 ). s1 = 2147483647. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = p0.
        IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = l2. s1 = 16. s0 = s0 + s1. s1 = p1. s2 = p0. PERFORM f1116 USING s0 s1 s2 CHANGING s0.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = 219. rv = s0. RETURN.
      ENDDO.
      DO 1 TIMES. " block
        s0 = l3. s0 = mem_ld_i32( s0 + 880 ). l2 = s0. s0 = mem_ld_i32( s0 + 4 ). s1 = 2147483647. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = p0.
        IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = l2. s1 = 16. s0 = s0 + s1. s1 = p1. s2 = p0. PERFORM f1116 USING s0 s1 s2 CHANGING s0.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = 220. rv = s0. RETURN.
      ENDDO.
      DO 1 TIMES. " block
        s0 = l3. s0 = mem_ld_i32( s0 + 884 ). l2 = s0. s0 = mem_ld_i32( s0 + 4 ). s1 = 2147483647. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = p0.
        IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = l2. s1 = 16. s0 = s0 + s1. s1 = p1. s2 = p0. PERFORM f1116 USING s0 s1 s2 CHANGING s0.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = 221. rv = s0. RETURN.
      ENDDO.
      DO 1 TIMES. " block
        s0 = l3. s0 = mem_ld_i32( s0 + 888 ). l2 = s0. s0 = mem_ld_i32( s0 + 4 ). s1 = 2147483647. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = p0.
        IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = l2. s1 = 16. s0 = s0 + s1. s1 = p1. s2 = p0. PERFORM f1116 USING s0 s1 s2 CHANGING s0.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = 222. rv = s0. RETURN.
      ENDDO.
      DO 1 TIMES. " block
        s0 = l3. s0 = mem_ld_i32( s0 + 892 ). l2 = s0. s0 = mem_ld_i32( s0 + 4 ). s1 = 2147483647. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = p0.
        IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = l2. s1 = 16. s0 = s0 + s1. s1 = p1. s2 = p0. PERFORM f1116 USING s0 s1 s2 CHANGING s0.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = 223. rv = s0. RETURN.
      ENDDO.
      DO 1 TIMES. " block
        s0 = l3. s0 = mem_ld_i32( s0 + 896 ). l2 = s0. s0 = mem_ld_i32( s0 + 4 ). s1 = 2147483647. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = p0.
        IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = l2. s1 = 16. s0 = s0 + s1. s1 = p1. s2 = p0. PERFORM f1116 USING s0 s1 s2 CHANGING s0.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = 224. rv = s0. RETURN.
      ENDDO.
      DO 1 TIMES. " block
        s0 = l3. s0 = mem_ld_i32( s0 + 900 ). l2 = s0. s0 = mem_ld_i32( s0 + 4 ). s1 = 2147483647. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = p0.
        IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = l2. s1 = 16. s0 = s0 + s1. s1 = p1. s2 = p0. PERFORM f1116 USING s0 s1 s2 CHANGING s0.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = 225. rv = s0. RETURN.
      ENDDO.
      DO 1 TIMES. " block
        s0 = l3. s0 = mem_ld_i32( s0 + 904 ). l2 = s0. s0 = mem_ld_i32( s0 + 4 ). s1 = 2147483647. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = p0.
        IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = l2. s1 = 16. s0 = s0 + s1. s1 = p1. s2 = p0. PERFORM f1116 USING s0 s1 s2 CHANGING s0.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = 226. rv = s0. RETURN.
      ENDDO.
      s0 = p0. s1 = l3. s1 = mem_ld_i32( s1 + 908 ). l3 = s1. s1 = mem_ld_i32( s1 + 4 ). s2 = 2147483647. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ).
      IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = 227. s1 = l3. s2 = 16. s1 = s1 + s2. s2 = p1. s3 = p0. PERFORM f1116 USING s1 s2 s3 CHANGING s1.
        IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
      ELSE.
      ENDIF.
      RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
    ELSE.
    ENDIF.
    s0 = p0. s1 = p1. s2 = p1. PERFORM f768 USING s2 CHANGING s2. PERFORM f417 USING s0 s1 s2 CHANGING s0.
  ENDDO.
  rv = s0.
ENDFORM.

FORM f360 USING p0 TYPE i p1 TYPE i p2 TYPE i CHANGING rv TYPE i.
  DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE i. DATA l8 TYPE i. DATA l9 TYPE i. DATA l10 TYPE i. DATA l11 TYPE i. DATA l12 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i.
  DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i.
  DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i.
  DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 48. s0 = s0 - s1. l3 = s0. gv_g0 = s0. s0 = l3. s1 = 3. mem_st_i32_8( iv_addr = s0 + 44 iv_val = s1 ). s0 = l3. s1 = 32.
  mem_st_i32( iv_addr = s0 + 28 iv_val = s1 ). s0 = l3. s1 = 0. mem_st_i32( iv_addr = s0 + 40 iv_val = s1 ). s0 = l3. s1 = p1. mem_st_i32( iv_addr = s0 + 36 iv_val = s1 ). s0 = l3. s1 = p0. mem_st_i32( iv_addr = s0 + 32 iv_val = s1 ).
  s0 = l3. s1 = 0. mem_st_i32( iv_addr = s0 + 20 iv_val = s1 ). s0 = l3. s1 = 0. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ).
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          s0 = p2. s0 = mem_ld_i32( s0 + 16 ). l10 = s0.
          IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0.
            s0 = p2. s0 = mem_ld_i32( s0 + 12 ). p0 = s0.
            IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
            s0 = p2. s0 = mem_ld_i32( s0 + 8 ). p1 = s0. s0 = p0. s1 = 3. s0 = zcl_wasm_rt=>shl32( iv_val = s0 iv_shift = s1 ). l5 = s0. s0 = p0. s1 = 1. s0 = s0 - s1. s1 = 536870911. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = 1.
            s0 = s0 + s1. l7 = s0. s0 = p2. s0 = mem_ld_i32( s0 ). p0 = s0.
            DO. " loop
              s0 = p0. s1 = 4. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). l4 = s0.
              IF s0 <> 0.
                s0 = l3. s0 = mem_ld_i32( s0 + 32 ). s1 = p0. s1 = mem_ld_i32( s1 ). s2 = l4. s3 = l3. s3 = mem_ld_i32( s3 + 36 ). s3 = mem_ld_i32( s3 + 12 ).
                DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
                s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ).
                IF s0 <> 0. lv_br = 4. EXIT. ENDIF. " br_if 4
              ELSE.
              ENDIF.
              s0 = p1. s0 = mem_ld_i32( s0 ). s1 = l3. s2 = 12. s1 = s1 + s2. s2 = p1. s2 = mem_ld_i32( s2 + 4 ).
              DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
              s0 = dispatch_t7( iv_idx = lv_ci_func p0 = s0 p1 = s1 ).
              IF s0 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
              s0 = p1. s1 = 8. s0 = s0 + s1. p1 = s0. s0 = p0. s1 = 8. s0 = s0 + s1. p0 = s0. s0 = l5. s1 = 8. s0 = s0 - s1. l5 = s0.
              IF s0 <> 0. EXIT. ENDIF. " br_if 0
            ENDDO.
            lv_br = 1. EXIT. " br 1
          ELSE.
          ENDIF.
          s0 = p2. s0 = mem_ld_i32( s0 + 20 ). p0 = s0.
          IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = p0. s1 = 5. s0 = zcl_wasm_rt=>shl32( iv_val = s0 iv_shift = s1 ). l11 = s0. s0 = p0. s1 = 1. s0 = s0 - s1. s1 = 134217727. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = 1. s0 = s0 + s1. l7 = s0. s0 = p2.
          s0 = mem_ld_i32( s0 + 8 ). l8 = s0. s0 = p2. s0 = mem_ld_i32( s0 ). p0 = s0.
          DO. " loop
            s0 = p0. s1 = 4. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). p1 = s0.
            IF s0 <> 0.
              s0 = l3. s0 = mem_ld_i32( s0 + 32 ). s1 = p0. s1 = mem_ld_i32( s1 ). s2 = p1. s3 = l3. s3 = mem_ld_i32( s3 + 36 ). s3 = mem_ld_i32( s3 + 12 ).
              DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
              s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ).
              IF s0 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
            ELSE.
            ENDIF.
            s0 = l3. s1 = l5. s2 = l10. s1 = s1 + s2. p1 = s1. s2 = 16. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). mem_st_i32( iv_addr = s0 + 28 iv_val = s1 ). s0 = l3. s1 = p1. s2 = 28. s1 = s1 + s2. s1 = mem_ld_i32_8u( s1 ).
            mem_st_i32_8( iv_addr = s0 + 44 iv_val = s1 ). s0 = l3. s1 = p1. s2 = 24. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). mem_st_i32( iv_addr = s0 + 40 iv_val = s1 ). s0 = p1. s1 = 12. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). l4 = s0. s0 = 0.
            l9 = s0. s0 = 0. l6 = s0.
            DO 1 TIMES. " block
              DO 1 TIMES. " block
                DO 1 TIMES. " block
                  s0 = p1. s1 = 8. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). s1 = 1. s0 = s0 - s1.
                  CASE s0.
                    WHEN 0. EXIT.
                    WHEN 1. lv_br = 2. EXIT.
                    WHEN OTHERS. lv_br = 1. EXIT.
                  ENDCASE.
                ENDDO.
                s0 = l4. s1 = 3. s0 = zcl_wasm_rt=>shl32( iv_val = s0 iv_shift = s1 ). s1 = l8. s0 = s0 + s1. l12 = s0. s0 = mem_ld_i32( s0 + 4 ).
                IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
                s0 = l12. s0 = mem_ld_i32( s0 ). l4 = s0.
              ENDDO.
              s0 = 1. l6 = s0.
            ENDDO.
            s0 = l3. s1 = l4. mem_st_i32( iv_addr = s0 + 16 iv_val = s1 ). s0 = l3. s1 = l6. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = p1. s1 = 4. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). l4 = s0.
            DO 1 TIMES. " block
              DO 1 TIMES. " block
                DO 1 TIMES. " block
                  s0 = p1. s0 = mem_ld_i32( s0 ). s1 = 1. s0 = s0 - s1.
                  CASE s0.
                    WHEN 0. EXIT.
                    WHEN 1. lv_br = 2. EXIT.
                    WHEN OTHERS. lv_br = 1. EXIT.
                  ENDCASE.
                ENDDO.
                s0 = l4. s1 = 3. s0 = zcl_wasm_rt=>shl32( iv_val = s0 iv_shift = s1 ). s1 = l8. s0 = s0 + s1. l6 = s0. s0 = mem_ld_i32( s0 + 4 ).
                IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
                s0 = l6. s0 = mem_ld_i32( s0 ). l4 = s0.
              ENDDO.
              s0 = 1. l9 = s0.
            ENDDO.
            s0 = l3. s1 = l4. mem_st_i32( iv_addr = s0 + 24 iv_val = s1 ). s0 = l3. s1 = l9. mem_st_i32( iv_addr = s0 + 20 iv_val = s1 ). s0 = l8. s1 = p1. s2 = 20. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). s2 = 3.
            s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. p1 = s0. s0 = mem_ld_i32( s0 ). s1 = l3. s2 = 12. s1 = s1 + s2. s2 = p1. s2 = mem_ld_i32( s2 + 4 ).
            DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
            s0 = dispatch_t7( iv_idx = lv_ci_func p0 = s0 p1 = s1 ).
            IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
            s0 = p0. s1 = 8. s0 = s0 + s1. p0 = s0. s0 = l11. s1 = l5. s2 = 32. s1 = s1 + s2. l5 = s1.
            IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. EXIT. ENDIF. " br_if 0
          ENDDO.
        ENDDO.
        s0 = l7. s1 = p2. s1 = mem_ld_i32( s1 + 4 ).
        IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        s0 = l3. s0 = mem_ld_i32( s0 + 32 ). s1 = p2. s1 = mem_ld_i32( s1 ). s2 = l7. s3 = 3. s2 = zcl_wasm_rt=>shl32( iv_val = s2 iv_shift = s3 ). s1 = s1 + s2. p0 = s1. s1 = mem_ld_i32( s1 ). s2 = p0. s2 = mem_ld_i32( s2 + 4 ). s3 = l3.
        s3 = mem_ld_i32( s3 + 36 ). s3 = mem_ld_i32( s3 + 12 ).
        DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
        s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ).
        IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      ENDDO.
      s0 = 1. lv_br = 1. EXIT. " br 1
    ENDDO.
    s1 = 0.
  ENDDO.
  s2 = l3. s3 = 48. s2 = s2 + s3. gv_g0 = s2. rv = s1.
ENDFORM.

FORM f361 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE i. DATA l8 TYPE i. DATA l9 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i.
  DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i.
  DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA lv_br TYPE i. s0 = p1.
  s1 = 6. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). l8 = s0. s0 = p1. s1 = 2. s0 = zcl_wasm_rt=>shr_u32( iv_val = s0 iv_shift = s1 ). s1 = 1. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). l9 = s0. s0 = 1172864. l5 = s0.
  DO. " loop
    s0 = l4. l6 = s0. s0 = l5. s0 = mem_ld_i32_8u( s0 ). l4 = s0. s1 = 31. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). l3 = s0.
    DO 1 TIMES. " block
      s0 = l5. s1 = 1. s0 = s0 + s1. s1 = l4. s2 = 5. s1 = zcl_wasm_rt=>shr_u32( iv_val = s1 iv_shift = s2 ). l2 = s1. s2 = 7.
      IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. EXIT. ENDIF. " br_if 0
      s0 = l5. s0 = mem_ld_i32_8s( s0 + 1 ). l2 = s0. s1 = 255. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). l4 = s0. s0 = l2. s1 = 0.
      IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = l4. s1 = 7. s0 = s0 + s1. l2 = s0. s0 = l5. s1 = 2. s0 = s0 + s1. lv_br = 1. EXIT. " br 1
      ELSE.
      ENDIF.
      s1 = l5. s1 = mem_ld_i32_8u( s1 + 2 ). l7 = s1. s1 = l2. s2 = -65.
      IF zcl_wasm_rt=>le_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0.
        s1 = l4. s2 = 8. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s2 = l7. s1 = zcl_wasm_rt=>or32( iv_a = s1 iv_b = s2 ). s2 = 32633. s1 = s1 - s2. l2 = s1. s1 = l5. s2 = 3. s1 = s1 + s2. lv_br = 1. EXIT. " br 1
      ELSE.
      ENDIF.
      s2 = l5. s2 = mem_ld_i32_8u( s2 + 3 ). s3 = l4. s4 = 16. s3 = zcl_wasm_rt=>shl32( iv_val = s3 iv_shift = s4 ). s2 = zcl_wasm_rt=>or32( iv_a = s2 iv_b = s3 ). s3 = l7. s4 = 8. s3 = zcl_wasm_rt=>shl32( iv_val = s3 iv_shift = s4 ).
      s2 = zcl_wasm_rt=>or32( iv_a = s2 iv_b = s3 ). s3 = 12566393. s2 = s2 - s3. l2 = s2. s2 = l5. s3 = 4. s2 = s2 + s3.
    ENDDO.
    l5 = s2. s2 = l2. s3 = l6. s2 = s2 + s3. s3 = 1. s2 = s2 + s3. l4 = s2.
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        s2 = l3. s3 = 31.
        IF s2 = s3. s2 = 1. ELSE. s2 = 0. ENDIF.
        IF s2 <> 0.
          DO 1 TIMES. " block
            s2 = l8.
            CASE s2.
              WHEN 0. lv_br = 3. EXIT.
              WHEN 1. EXIT.
              WHEN 2. EXIT.
              WHEN 3. EXIT.
              WHEN 4. EXIT.
              WHEN 5. EXIT.
              WHEN 6. lv_br = 2. EXIT.
              WHEN OTHERS. EXIT.
            ENDCASE.
          ENDDO.
          s2 = l6. s3 = l9. s2 = s2 + s3. l6 = s2. s3 = l4.
          IF zcl_wasm_rt=>ge_u32( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
          IF s2 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
          DO. " loop
            DO 1 TIMES. " block
              s2 = p0. s2 = mem_ld_i32( s2 ). l3 = s2. s3 = 2. s2 = s2 + s3. l2 = s2. s3 = p0. s3 = mem_ld_i32( s3 + 4 ). l7 = s3.
              IF s2 <= s3. s2 = 1. ELSE. s2 = 0. ENDIF.
              IF s2 <> 0.
                s2 = p0. s2 = mem_ld_i32( s2 + 8 ). l2 = s2. lv_br = 1. EXIT. " br 1
              ELSE.
              ENDIF.
              s2 = p0. s2 = mem_ld_i32( s2 + 12 ). s3 = p0. s3 = mem_ld_i32( s3 + 8 ). s4 = l2. s5 = l7. s6 = 3. s5 = s5 * s6. s6 = 2. s5 = s5 / s6. l3 = s5. s6 = l2. s7 = l3.
              IF s6 > s7. s6 = 1. ELSE. s6 = 0. ENDIF.
              IF s6 <> 0. s4 = s4. ELSE. s4 = s5. ENDIF.
              l3 = s4. s5 = 2. s4 = zcl_wasm_rt=>shl32( iv_val = s4 iv_shift = s5 ). s5 = p0. s5 = mem_ld_i32( s5 + 16 ).
              DATA(lv_ci_func) = mt_tab0[ s5 + 1 ]. " call_indirect
              s2 = dispatch_t11( iv_idx = lv_ci_func p0 = s2 p1 = s3 p2 = s4 ). l2 = s2.
              IF s2 = 0. s2 = 1. ELSE. s2 = 0. ENDIF.
              IF s2 <> 0.
                s2 = -1. rv = s2. RETURN.
              ELSE.
              ENDIF.
              s2 = p0. s3 = l3. mem_st_i32( iv_addr = s2 + 4 iv_val = s3 ). s2 = p0. s3 = l2. mem_st_i32( iv_addr = s2 + 8 iv_val = s3 ). s2 = p0. s2 = mem_ld_i32( s2 ). l3 = s2.
            ENDDO.
            s2 = p0. s3 = l3. s4 = 1. s3 = s3 + s4. mem_st_i32( iv_addr = s2 iv_val = s3 ). s2 = l2. s3 = l3. s4 = 2. s3 = zcl_wasm_rt=>shl32( iv_val = s3 iv_shift = s4 ). s2 = s2 + s3. s3 = l6. mem_st_i32( iv_addr = s2 iv_val = s3 ).
            s2 = p0. s3 = p0. s3 = mem_ld_i32( s3 ). l3 = s3. s4 = 1. s3 = s3 + s4. mem_st_i32( iv_addr = s2 iv_val = s3 ). s2 = l2. s3 = l3. s4 = 2. s3 = zcl_wasm_rt=>shl32( iv_val = s3 iv_shift = s4 ). s2 = s2 + s3. s3 = l6. s4 = 1.
            s3 = s3 + s4. mem_st_i32( iv_addr = s2 iv_val = s3 ). s2 = l6. s3 = 2. s2 = s2 + s3. l6 = s2. s3 = l4.
            IF zcl_wasm_rt=>lt_u32( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
            IF s2 <> 0. EXIT. ENDIF. " br_if 0
          ENDDO.
          lv_br = 2. EXIT. " br 2
        ELSE.
        ENDIF.
        s2 = p1. s3 = l3. s2 = zcl_wasm_rt=>shr_u32( iv_val = s2 iv_shift = s3 ). s3 = 1. s2 = zcl_wasm_rt=>and32( iv_a = s2 iv_b = s3 ).
        IF s2 = 0. s2 = 1. ELSE. s2 = 0. ENDIF.
        IF s2 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      ENDDO.
      DO 1 TIMES. " block
        s2 = p0. s2 = mem_ld_i32( s2 ). l3 = s2. s3 = 2. s2 = s2 + s3. l2 = s2. s3 = p0. s3 = mem_ld_i32( s3 + 4 ). l7 = s3.
        IF s2 <= s3. s2 = 1. ELSE. s2 = 0. ENDIF.
        IF s2 <> 0.
          s2 = p0. s2 = mem_ld_i32( s2 + 8 ). l2 = s2. lv_br = 1. EXIT. " br 1
        ELSE.
        ENDIF.
        s2 = p0. s2 = mem_ld_i32( s2 + 12 ). s3 = p0. s3 = mem_ld_i32( s3 + 8 ). s4 = l2. s5 = l7. s6 = 3. s5 = s5 * s6. s6 = 2. s5 = s5 / s6. l3 = s5. s6 = l2. s7 = l3.
        IF s6 > s7. s6 = 1. ELSE. s6 = 0. ENDIF.
        IF s6 <> 0. s4 = s4. ELSE. s4 = s5. ENDIF.
        l3 = s4. s5 = 2. s4 = zcl_wasm_rt=>shl32( iv_val = s4 iv_shift = s5 ). s5 = p0. s5 = mem_ld_i32( s5 + 16 ).
        DATA(lv_ci_func) = mt_tab0[ s5 + 1 ]. " call_indirect
        s2 = dispatch_t11( iv_idx = lv_ci_func p0 = s2 p1 = s3 p2 = s4 ). l2 = s2.
        IF s2 = 0. s2 = 1. ELSE. s2 = 0. ENDIF.
        IF s2 <> 0.
          s2 = -1. rv = s2. RETURN.
        ELSE.
        ENDIF.
        s2 = p0. s3 = l3. mem_st_i32( iv_addr = s2 + 4 iv_val = s3 ). s2 = p0. s3 = l2. mem_st_i32( iv_addr = s2 + 8 iv_val = s3 ). s2 = p0. s2 = mem_ld_i32( s2 ). l3 = s2.
      ENDDO.
      s2 = p0. s3 = l3. s4 = 1. s3 = s3 + s4. mem_st_i32( iv_addr = s2 iv_val = s3 ). s2 = l2. s3 = l3. s4 = 2. s3 = zcl_wasm_rt=>shl32( iv_val = s3 iv_shift = s4 ). s2 = s2 + s3. s3 = l6. mem_st_i32( iv_addr = s2 iv_val = s3 ). s2 = p0.
      s3 = p0. s3 = mem_ld_i32( s3 ). l6 = s3. s4 = 1. s3 = s3 + s4. mem_st_i32( iv_addr = s2 iv_val = s3 ). s2 = l2. s3 = l6. s4 = 2. s3 = zcl_wasm_rt=>shl32( iv_val = s3 iv_shift = s4 ). s2 = s2 + s3. s3 = l4.
      mem_st_i32( iv_addr = s2 iv_val = s3 ).
    ENDDO.
    s2 = l5. s3 = 1176812.
    IF zcl_wasm_rt=>lt_u32( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
    IF s2 <> 0. EXIT. ENDIF. " br_if 0
  ENDDO.
  s2 = 0. rv = s2.
ENDFORM.

FORM f362 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i p4 TYPE i p5 TYPE i CHANGING rv TYPE int8.
  DATA l6 TYPE i. DATA l7 TYPE int8. DATA l8 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i.
  DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i.
  DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i. DATA s36 TYPE i. DATA s37 TYPE i. DATA s38 TYPE i.
  DATA s39 TYPE i. DATA s40 TYPE i. DATA s41 TYPE i. DATA s42 TYPE i. DATA s43 TYPE i. DATA s44 TYPE i. DATA s45 TYPE i. DATA s46 TYPE i. DATA s47 TYPE i. DATA s48 TYPE i. DATA s49 TYPE i. DATA s50 TYPE i. DATA s51 TYPE i. DATA s52 TYPE i.
  DATA s53 TYPE i. DATA s54 TYPE i. DATA s55 TYPE i. DATA s56 TYPE i. DATA s57 TYPE i. DATA s58 TYPE i. DATA s59 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 80. s0 = s0 - s1. p3 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          s0 = p1. s1 = -4294967296.
          IF zcl_wasm_rt=>lt_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p2 = s0. s0 = mem_ld_i32_16u( s0 + 6 ). s1 = 44.
          IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = p2. s0 = mem_ld_i32( s0 + 32 ). p5 = s0.
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        ENDDO.
        s0 = p3. s1 = p0. s2 = 16. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). p2 = s1. s2 = p3. s3 = 16. s2 = s2 + s3. s3 = p2. s3 = mem_ld_i32( s3 + 68 ). s4 = 1060. s3 = s3 + s4. s3 = mem_ld_i32( s3 ). PERFORM f410 USING s1 s2 s3 CHANGING s1.
        mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s1 = 1147410. s2 = p3. PERFORM f970 USING s0 s1 s2 CHANGING s0. lv_br = 1. EXIT. " br 1
      ENDDO.
      s0 = 12884901888. p1 = s0.
      DO 1 TIMES. " block
        s0 = p5. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). l7 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 12884901888.
        IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          DO 1 TIMES. " block
            DO 1 TIMES. " block
              s0 = l7. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p2 = s0. s0 = mem_ld_i32_16u( s0 + 6 ). s1 = 21. s0 = s0 - s1. s1 = 65535. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = 10.
              IF zcl_wasm_rt=>le_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0.
                s0 = p2. s1 = 32. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). s1 = 12. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). s1 = 32. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). s1 = 4. s0 = s0 + s1. s0 = mem_ld_i32_8u( s0 ).
                IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
                IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
                s0 = p0. s1 = 1148080. s2 = 0. PERFORM f970 USING s0 s1 s2 CHANGING s0. lv_br = 5. EXIT. " br 5
              ELSE.
              ENDIF.
              s0 = p0. s1 = l7. s2 = 48. s3 = l7. s4 = 0. PERFORM f192 USING s0 s1 s2 s3 s4 CHANGING s0. l7 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 25769803776.
              IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0. lv_br = 4. EXIT. ENDIF. " br_if 4
              s0 = p0. s1 = p3. s2 = 12. s1 = s1 + s2. p2 = s1. s2 = l7. PERFORM f637 USING s0 s1 s2 CHANGING s0.
              IF s0 <> 0. lv_br = 4. EXIT. ENDIF. " br_if 4
              s0 = p2. lv_br = 1. EXIT. " br 1
            ENDDO.
            s1 = p2. s2 = 40. s1 = s1 + s2.
          ENDDO.
          l6 = s1. s1 = p5. s1 = mem_ld_i32( s1 + 12 ). p2 = s1. s2 = l6. s2 = mem_ld_i32( s2 ).
          IF zcl_wasm_rt=>lt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
          IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          DO 1 TIMES. " block
            s1 = p5. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 0 ). l7 = s1. s2 = 32. s1 = zcl_wasm_rt=>shr_u64( iv_val = s1 iv_shift = s2 ). s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = -11.
            IF zcl_wasm_rt=>lt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
            IF s1 <> 0. EXIT. ENDIF. " br_if 0
            s1 = l7. s1 = zcl_wasm_rt=>wrap_i64( s1 ). p2 = s1. s2 = p2. s2 = mem_ld_i32( s2 ). p2 = s2. s3 = 1. s2 = s2 - s3. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = p2. s2 = 1.
            IF s1 > s2. s1 = 1. ELSE. s1 = 0. ENDIF.
            IF s1 <> 0. EXIT. ENDIF. " br_if 0
            s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s2 = l7. PERFORM f453 USING s1 s2.
          ENDDO.
          s1 = p5. s2 = 12884901888. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s2 iv_addr = s1 + 0 CHANGING cv_mem = mv_mem ).
        ELSE.
        ENDIF.
        s1 = p4. s2 = 1. mem_st_i32( iv_addr = s1 iv_val = s2 ). lv_br = 2. EXIT. " br 2
      ENDDO.
      s1 = p5. s2 = p2. s3 = 1. s2 = s2 + s3. mem_st_i32( iv_addr = s1 + 12 iv_val = s2 ). s1 = p4. s2 = 0. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = p5. s1 = mem_ld_i32( s1 + 8 ).
      IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0.
        s1 = p2. s2 = 0.
        IF s1 >= s2. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0.
          s1 = p2. s1 = zcl_wasm_rt=>extend_u32( s1 ). p1 = s1. lv_br = 3. EXIT. " br 3
        ELSE.
        ENDIF.
        s1 = -51539607552. s2 = p2. s2 = zcl_wasm_rt=>extend_u32( s2 ). " f64.convert_i32_u s2 = zcl_wasm_rt=>reinterpret_f64_i64( s2 ). p1 = s2. s3 = 9221120288580698112. s2 = s2 - s3. s3 = p1. s4 = 9223372036854775807.
        s3 = zcl_wasm_rt=>and64( iv_a = s3 iv_b = s4 ). s4 = 9218868437227405312.
        IF zcl_wasm_rt=>gt_u64( iv_a = s3 iv_b = s4 ) = abap_true. s3 = 1. ELSE. s3 = 0. ENDIF.
        IF s3 <> 0. s1 = s1. ELSE. s1 = s2. ENDIF.
        p1 = s1. lv_br = 2. EXIT. " br 2
      ELSE.
      ENDIF.
      s1 = p5. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 0 ). l7 = s1. s1 = p2. s2 = 0.
      IF s1 >= s2. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0.
        s1 = p2. s1 = zcl_wasm_rt=>extend_u32( s1 ).
      ELSE.
        s2 = -51539607552. s3 = p2. s3 = zcl_wasm_rt=>extend_u32( s3 ). " f64.convert_i32_u s3 = zcl_wasm_rt=>reinterpret_f64_i64( s3 ). p1 = s3. s4 = 9221120288580698112. s3 = s3 - s4. s4 = p1. s5 = 9223372036854775807.
        s4 = zcl_wasm_rt=>and64( iv_a = s4 iv_b = s5 ). s5 = 9218868437227405312.
        IF zcl_wasm_rt=>gt_u64( iv_a = s4 iv_b = s5 ) = abap_true. s4 = 1. ELSE. s4 = 0. ENDIF.
        IF s4 <> 0. s2 = s2. ELSE. s2 = s3. ENDIF.
      ENDIF.
      l8 = s2. s2 = 25769803776. p1 = s2. s2 = p0. s3 = l7. s4 = l8. PERFORM f283 USING s2 s3 s4 CHANGING s2. l7 = s2. s3 = -4294967296. s2 = zcl_wasm_rt=>and64( iv_a = s2 iv_b = s3 ). s3 = 25769803776.
      IF s2 = s3. s2 = 1. ELSE. s2 = 0. ENDIF.
      IF s2 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s2 = p5. s2 = mem_ld_i32( s2 + 8 ). s3 = 1.
      IF s2 = s3. s2 = 1. ELSE. s2 = 0. ENDIF.
      IF s2 <> 0.
        s2 = l7. p1 = s2. lv_br = 2. EXIT. " br 2
      ELSE.
      ENDIF.
      s2 = p3. s3 = l7. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s3 iv_addr = s2 + 24 CHANGING cv_mem = mv_mem ). s2 = p3. s3 = p2. s4 = 0.
      IF s3 >= s4. s3 = 1. ELSE. s3 = 0. ENDIF.
      IF s3 <> 0.
        s3 = p2. s3 = zcl_wasm_rt=>extend_u32( s3 ).
      ELSE.
        s4 = -51539607552. s5 = p2. s5 = zcl_wasm_rt=>extend_u32( s5 ). " f64.convert_i32_u s5 = zcl_wasm_rt=>reinterpret_f64_i64( s5 ). p1 = s5. s6 = 9221120288580698112. s5 = s5 - s6. s6 = p1. s7 = 9223372036854775807.
        s6 = zcl_wasm_rt=>and64( iv_a = s6 iv_b = s7 ). s7 = 9218868437227405312.
        IF zcl_wasm_rt=>gt_u64( iv_a = s6 iv_b = s7 ) = abap_true. s6 = 1. ELSE. s6 = 0. ENDIF.
        IF s6 <> 0. s4 = s4. ELSE. s4 = s5. ENDIF.
      ENDIF.
      l8 = s4. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s4 iv_addr = s3 + 16 CHANGING cv_mem = mv_mem ). s3 = p0. s4 = 2. s5 = p3. s6 = 16. s5 = s5 + s6. PERFORM f794 USING s3 s4 s5 CHANGING s3. p1 = s3. s3 = p0. s4 = l7.
      PERFORM f1164 USING s3 s4. s3 = p0. s4 = l8. PERFORM f1164 USING s3 s4. lv_br = 1. EXIT. " br 1
    ENDDO.
    s3 = p4. s4 = 0. mem_st_i32( iv_addr = s3 iv_val = s4 ). s3 = 25769803776. p1 = s3.
  ENDDO.
  s3 = p3. s4 = 80. s3 = s3 + s4. gv_g0 = s3. s3 = p1. rv = s3.
ENDFORM.

FORM f363 USING p0 TYPE i p1 TYPE i p2 TYPE int8 p3 TYPE i.
  DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE i. DATA l8 TYPE i. DATA l9 TYPE i. DATA l10 TYPE i. DATA l11 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i.
  DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i.
  DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i.
  DATA s34 TYPE i. DATA s35 TYPE i. DATA s36 TYPE i. DATA s37 TYPE i. DATA s38 TYPE i. DATA s39 TYPE i. DATA s40 TYPE i. DATA s41 TYPE i. DATA s42 TYPE i. DATA s43 TYPE i. DATA s44 TYPE i. DATA s45 TYPE i. DATA s46 TYPE i. DATA s47 TYPE i.
  DATA s48 TYPE i. DATA s49 TYPE i. DATA s50 TYPE i. DATA s51 TYPE i. DATA s52 TYPE i. DATA s53 TYPE i. DATA s54 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 48. s0 = s0 - s1. l4 = s0. gv_g0 = s0. s0 = l4. s1 = 0.
  mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = p1. s1 = l4. s2 = 4. s1 = s1 + s2. s2 = p2. s3 = 0. PERFORM f184 USING s0 s1 s2 s3 CHANGING s0. l6 = s0. s0 = p3. s0 = mem_ld_i32_8u( s0 ). s1 = 5.
  IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = p3. s0 = mem_ld_i32_8u( s0 + 9 ). l9 = s0. s0 = p3. s0 = mem_ld_i32_8u( s0 + 8 ). l10 = s0. s0 = p3. s0 = mem_ld_i32( s0 + 4 ). p1 = s0. s0 = l4. s0 = mem_ld_i32( s0 + 4 ). l7 = s0. s0 = l4. s1 = 0.
    mem_st_i32( iv_addr = s0 + 16 iv_val = s1 ). s0 = l4. s1 = 4294967296. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 8 CHANGING cv_mem = mv_mem ).
    DO 1 TIMES. " block
      s0 = p1. s1 = l7.
      IF zcl_wasm_rt=>le_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = 1. l8 = s0.
        DO. " loop
          s0 = p1. s1 = l4. s1 = mem_ld_i32( s1 + 8 ). s2 = l5. s1 = s1 - s2.
          IF zcl_wasm_rt=>gt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0.
            s0 = l4. s1 = 8. s0 = s0 + s1. s1 = l5. s2 = p1. PERFORM f828 USING s0 s1 s2. s0 = l4. s0 = mem_ld_i32( s0 + 12 ). l8 = s0. s0 = l4. s0 = mem_ld_i32( s0 + 16 ). l5 = s0.
          ELSE.
          ENDIF.
          s0 = l5. s1 = l8. s0 = s0 + s1. s1 = l6. s2 = p1. PERFORM f216 USING s0 s1 s2 CHANGING s0. s0 = l4. s1 = p1. s2 = l5. s1 = s1 + s2. l5 = s1. mem_st_i32( iv_addr = s0 + 16 iv_val = s1 ). s0 = p1. s1 = l6. s0 = s0 + s1. l6 = s0.
          s0 = l4. s0 = mem_ld_i32( s0 + 8 ). s1 = l5. s0 = s0 - s1. s1 = 2.
          IF zcl_wasm_rt=>le_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0.
            s0 = l4. s1 = 8. s0 = s0 + s1. s1 = l5. s2 = 3. PERFORM f828 USING s0 s1 s2. s0 = l4. s0 = mem_ld_i32( s0 + 16 ). l5 = s0.
          ELSE.
          ENDIF.
          s0 = l4. s0 = mem_ld_i32( s0 + 12 ). l8 = s0. s1 = l5. s0 = s0 + s1. l11 = s0. s1 = 49135. mem_st_i32_16( iv_addr = s0 iv_val = s1 ). s0 = l11. s1 = 2. s0 = s0 + s1. s1 = 189. mem_st_i32_8( iv_addr = s0 iv_val = s1 ). s0 = l4.
          s1 = l5. s2 = 3. s1 = s1 + s2. l5 = s1. mem_st_i32( iv_addr = s0 + 16 iv_val = s1 ).
          DO 1 TIMES. " block
            DO 1 TIMES. " block
              s0 = l7. s1 = p1. s0 = s0 - s1. l7 = s0. s1 = 3.
              IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0. EXIT. ENDIF. " br_if 0
              s0 = l6. s0 = mem_ld_i32_8u( s0 ). s1 = 237.
              IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0. EXIT. ENDIF. " br_if 0
              s0 = l6. s0 = mem_ld_i32_8u( s0 + 1 ). s1 = 224. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = 160.
              IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0. EXIT. ENDIF. " br_if 0
              s0 = 3. s1 = l6. s1 = mem_ld_i32_8s( s1 + 2 ). s2 = -64.
              IF s1 < s2. s1 = 1. ELSE. s1 = 0. ENDIF.
              IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
            ENDDO.
            s0 = l10.
            IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0.
              s0 = 1054816. s1 = 60. s2 = 1054876. PERFORM f1058 USING s0 s1 s2.
              RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
            ELSE.
            ENDIF.
            s0 = l9.
          ENDDO.
          p1 = s0. s1 = l7.
          IF zcl_wasm_rt=>gt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
          s0 = l4. s1 = 20. s0 = s0 + s1. s1 = p1. s2 = l6. s1 = s1 + s2. l6 = s1. s2 = l7. s3 = p1. s2 = s2 - s3. l7 = s2. PERFORM f324 USING s0 s1 s2. s0 = l4. s0 = mem_ld_i32( s0 + 20 ).
          IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0.
            s0 = l4. s0 = mem_ld_i32( s0 + 24 ). l9 = s0. s0 = l4. s0 = mem_ld_i32( s0 + 28 ). p1 = s0. s1 = l4. s1 = mem_ld_i32( s1 + 8 ). s2 = l5. s1 = s1 - s2.
            IF zcl_wasm_rt=>gt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0.
              s0 = l4. s1 = 8. s0 = s0 + s1. s1 = l5. s2 = p1. PERFORM f828 USING s0 s1 s2. s0 = l4. s0 = mem_ld_i32( s0 + 12 ). l8 = s0. s0 = l4. s0 = mem_ld_i32( s0 + 16 ). l5 = s0.
            ELSE.
            ENDIF.
            s0 = l5. s1 = l8. s0 = s0 + s1. s1 = l9. s2 = p1. PERFORM f216 USING s0 s1 s2 CHANGING s0. s0 = l4. s1 = 16. s0 = s0 + s1. s1 = p1. s2 = l5. s1 = s1 + s2. p1 = s1. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s1 = 8.
            s0 = s0 + s1. s1 = p1. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s1 = l4. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 8 ).
            zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ). s0 = p3. PERFORM f924 USING s0. s0 = l4. s1 = 48. s0 = s0 + s1. gv_g0 = s0.
            RETURN.
          ELSE.
          ENDIF.
          s0 = l4. s0 = mem_ld_i32_8u( s0 + 29 ). l9 = s0. s0 = l4. s0 = mem_ld_i32_8u( s0 + 28 ). l10 = s0. s0 = l4. s0 = mem_ld_i32( s0 + 24 ). p1 = s0. s1 = l7.
          IF zcl_wasm_rt=>le_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
        ENDDO.
      ELSE.
      ENDIF.
      s0 = l4. s1 = 0. mem_st_i32( iv_addr = s0 + 36 iv_val = s1 ). s0 = l4. s1 = 1. mem_st_i32( iv_addr = s0 + 24 iv_val = s1 ). s0 = l4. s1 = 1115356. mem_st_i32( iv_addr = s0 + 20 iv_val = s1 ). s0 = l4. s1 = 4.
      zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 28 CHANGING cv_mem = mv_mem ). s0 = l4. s1 = 20. s0 = s0 + s1. s1 = 1054800. PERFORM f696 USING s0 s1.
      RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
    ENDDO.
    s0 = p1. s1 = l7. s2 = 1054892. PERFORM f1044 USING s0 s1 s2.
    RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
  ELSE.
  ENDIF.
  s0 = l4. s1 = 1. mem_st_i32( iv_addr = s0 + 24 iv_val = s1 ). s0 = l4. s1 = 1054972. mem_st_i32( iv_addr = s0 + 20 iv_val = s1 ). s0 = l4. s1 = 0.
  zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 32 CHANGING cv_mem = mv_mem ). s0 = l4. s1 = l4. s2 = 44. s1 = s1 + s2. mem_st_i32( iv_addr = s0 + 28 iv_val = s1 ). s0 = l4. s1 = 20. s0 = s0 + s1. s1 = 1054980.
  PERFORM f696 USING s0 s1.
  RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
ENDFORM.

FORM f364 USING p0 TYPE i p1 TYPE i p2 TYPE i p3 TYPE i CHANGING rv TYPE i.
  DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE i. DATA l8 TYPE i. DATA l9 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i.
  DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i.
  DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i.
  DATA s36 TYPE i. DATA s37 TYPE i. DATA s38 TYPE i. DATA s39 TYPE i. DATA lv_br TYPE i. s0 = p3. s1 = p1. s1 = mem_ld_i32( s1 ). l6 = s1. s1 = mem_ld_i32( s1 + 28 ). s2 = 3. s1 = s1 * s2. s2 = 2. s1 = s1 / s2. l4 = s1. s2 = p3. s3 = l4.
  IF s2 > s3. s2 = 1. ELSE. s2 = 0. ENDIF.
  IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
  l9 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      s0 = p2.
      IF s0 <> 0.
        s0 = p0. s0 = mem_ld_i32( s0 + 16 ). p3 = s0. s1 = 16. s0 = s0 + s1. s1 = p2. s1 = mem_ld_i32( s1 + 20 ). s2 = l9. s3 = 3. s2 = zcl_wasm_rt=>shl32( iv_val = s2 iv_shift = s3 ). l4 = s2. s3 = p3. s3 = mem_ld_i32( s3 + 8 ).
        DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
        s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). p3 = s0.
        DO 1 TIMES. " block
          s0 = l4.
          IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = p3.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = -1. s1 = p0. s1 = mem_ld_i32( s1 + 16 ). p1 = s1. s1 = mem_ld_i32_8u( s1 + 136 ).
          IF s1 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
          lv_br = 3. EXIT. " br 3
        ENDDO.
        s0 = p3.
        IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = -1. rv = s0. RETURN.
        ELSE.
        ENDIF.
        s0 = p2. s1 = p3. mem_st_i32( iv_addr = s0 + 20 iv_val = s1 ).
      ELSE.
      ENDIF.
      s0 = l6. s0 = mem_ld_i32( s0 + 24 ). s1 = 1. s0 = s0 + s1. p3 = s0.
      DO. " loop
        s0 = p3. p2 = s0. s1 = 1. s0 = zcl_wasm_rt=>shl32( iv_val = s0 iv_shift = s1 ). p3 = s0. s0 = p2. s1 = l9.
        IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
      ENDDO.
      s0 = p0. s0 = mem_ld_i32( s0 + 16 ). l4 = s0. s1 = 16. s0 = s0 + s1. s1 = p2. s2 = 2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). p3 = s1. s2 = l9. s3 = 3. s2 = zcl_wasm_rt=>shl32( iv_val = s2 iv_shift = s3 ). s1 = s1 + s2.
      s2 = 48. s1 = s1 + s2. s2 = l4. s2 = mem_ld_i32( s2 ).
      DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
      s0 = dispatch_t7( iv_idx = lv_ci_func p0 = s0 p1 = s1 ). l5 = s0.
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = -1. s1 = p0. s1 = mem_ld_i32( s1 + 16 ). p1 = s1. s1 = mem_ld_i32_8u( s1 + 136 ).
        IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        lv_br = 2. EXIT. " br 2
      ELSE.
      ENDIF.
      s0 = l6. s1 = 12. s0 = s0 + s1. l4 = s0. s0 = mem_ld_i32( s0 ). l8 = s0. s1 = l6. s1 = mem_ld_i32( s1 + 8 ). l7 = s1. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l7. s1 = l8. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = l6.
      s1 = 0. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = l4. s1 = 0. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p3. s1 = l5. s0 = s0 + s1. s1 = l6. s2 = l6. s2 = mem_ld_i32( s2 + 32 ). s3 = 3.
      s2 = zcl_wasm_rt=>shl32( iv_val = s2 iv_shift = s3 ). s3 = 48. s2 = s2 + s3. PERFORM f216 USING s0 s1 s2 CHANGING s0. l4 = s0. s1 = p0. s1 = mem_ld_i32( s1 + 16 ). l8 = s1. s1 = mem_ld_i32( s1 + 80 ). l7 = s1.
      mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = l7. s1 = l4. s2 = 8. s1 = s1 + s2. l7 = s1. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = l8. s1 = l7. mem_st_i32( iv_addr = s0 + 80 iv_val = s1 ). s0 = l4. s1 = 12. s0 = s0 + s1.
      s1 = l8. s2 = 80. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
      DO 1 TIMES. " block
        s0 = l4. s0 = mem_ld_i32( s0 + 24 ). s1 = 1. s0 = s0 + s1. s1 = p2.
        IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = l4. s1 = p2. s2 = 1. s1 = s1 - s2. l8 = s1. mem_st_i32( iv_addr = s0 + 24 iv_val = s1 ). s0 = l5. s1 = 0. s2 = p3. PERFORM f514 USING s0 s1 s2 CHANGING s0. s1 = l4. s1 = mem_ld_i32( s1 + 32 ). l5 = s1.
          IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
          IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          s1 = p2. s2 = 2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s1 = 52. s0 = s0 + s1. p2 = s0. s0 = 0. p3 = s0.
          DO. " loop
            DO 1 TIMES. " block
              s0 = p2. s0 = mem_ld_i32( s0 ). l7 = s0.
              IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0.
                s0 = p3. s1 = 1. s0 = s0 + s1. p3 = s0. lv_br = 1. EXIT. " br 1
              ELSE.
              ENDIF.
              s0 = p2. s1 = 4. s0 = s0 - s1. l5 = s0. s1 = l5. s1 = mem_ld_i32( s1 ). s2 = -67108864. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). s2 = l4. s3 = l7. s4 = l8. s3 = zcl_wasm_rt=>and32( iv_a = s3 iv_b = s4 ). s4 = -1.
              s3 = zcl_wasm_rt=>xor32( iv_a = s3 iv_b = s4 ). s4 = 2. s3 = zcl_wasm_rt=>shl32( iv_val = s3 iv_shift = s4 ). s2 = s2 + s3. l5 = s2. s2 = mem_ld_i32( s2 ). s3 = 67108863. s2 = zcl_wasm_rt=>and32( iv_a = s2 iv_b = s3 ).
              s1 = zcl_wasm_rt=>or32( iv_a = s1 iv_b = s2 ). mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l5. s1 = p3. s2 = 1. s1 = s1 + s2. p3 = s1. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l4. s0 = mem_ld_i32( s0 + 32 ). l5 = s0.
            ENDDO.
            s0 = p2. s1 = 8. s0 = s0 + s1. p2 = s0. s0 = p3. s1 = l5.
            IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. EXIT. ENDIF. " br_if 0
          ENDDO.
          lv_br = 1. EXIT. " br 1
        ELSE.
        ENDIF.
        s0 = l5. s1 = l6. s2 = p2. s3 = 2. s2 = zcl_wasm_rt=>shl32( iv_val = s2 iv_shift = s3 ). s1 = s1 - s2. s2 = p3. PERFORM f216 USING s0 s1 s2 CHANGING s0.
      ENDDO.
      s0 = p0. s0 = mem_ld_i32( s0 + 16 ). p0 = s0. s1 = 16. s0 = s0 + s1. s1 = l6. s2 = l6. s2 = mem_ld_i32( s2 + 24 ). s3 = -1. s2 = zcl_wasm_rt=>xor32( iv_a = s2 iv_b = s3 ). s3 = 2. s2 = zcl_wasm_rt=>shl32( iv_val = s2 iv_shift = s3 ).
      s1 = s1 + s2. s2 = p0. s2 = mem_ld_i32( s2 + 4 ).
      DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
      dispatch_t6( iv_idx = lv_ci_func p0 = s0 p1 = s1 ). s0 = l4. s1 = l9. mem_st_i32( iv_addr = s0 + 28 iv_val = s1 ). s0 = p1. s1 = l4. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = 0.
    ENDDO.
    rv = s0. RETURN.
  ENDDO.
  s0 = p1. s1 = 1. mem_st_i32_8( iv_addr = s0 + 136 iv_val = s1 ). s0 = p0. s1 = 1134898. s2 = 0. PERFORM f969 USING s0 s1 s2 CHANGING s0. s0 = p1. s1 = 0. mem_st_i32_8( iv_addr = s0 + 136 iv_val = s1 ). s0 = -1. rv = s0.
ENDFORM.

FORM f365 USING p0 TYPE i p1 TYPE i p2 TYPE i p3 TYPE i p4 TYPE i p5 TYPE i CHANGING rv TYPE i.
  DATA l6 TYPE i. DATA l7 TYPE i. DATA l8 TYPE i. DATA l9 TYPE i. DATA l10 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i.
  DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA lv_br TYPE i.
  DO. " loop
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          DO 1 TIMES. " block
            s0 = p2. s1 = l8.
            IF s0 <= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            l9 = s0.
            IF s0 <> 0. EXIT. ENDIF. " br_if 0
            s0 = p4. s1 = l6.
            IF s0 <= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. EXIT. ENDIF. " br_if 0
            s0 = p1. s1 = l8. s2 = 2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s0 = mem_ld_i32( s0 ). l7 = s0. s1 = p3. s2 = l6. s3 = 2. s2 = zcl_wasm_rt=>shl32( iv_val = s2 iv_shift = s3 ). s1 = s1 + s2.
            s1 = mem_ld_i32( s1 ). l9 = s1.
            IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0.
              s0 = l7. l9 = s0. s0 = l8. s1 = 1. s0 = s0 + s1. l8 = s0. lv_br = 3. EXIT. " br 3
            ELSE.
            ENDIF.
            s0 = l7. s1 = l9.
            IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
            s0 = l6. s1 = 1. s0 = s0 + s1. l6 = s0. s0 = l8. s1 = 1. s0 = s0 + s1. l8 = s0. s0 = l7. l9 = s0. lv_br = 2. EXIT. " br 2
          ENDDO.
          s0 = l9.
          IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0.
            s0 = p1. s1 = l8. s2 = 2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s0 = mem_ld_i32( s0 ). l9 = s0. s0 = l8. s1 = 1. s0 = s0 + s1. l8 = s0. lv_br = 2. EXIT. " br 2
          ELSE.
          ENDIF.
          s0 = p4. s1 = l6.
          IF s0 <= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
          s0 = p3. s1 = l6. s2 = 2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s0 = mem_ld_i32( s0 ). l9 = s0.
        ENDDO.
        s0 = l6. s1 = 1. s0 = s0 + s1. l6 = s0.
      ENDDO.
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          DO 1 TIMES. " block
            DO 1 TIMES. " block
              DO 1 TIMES. " block
                s0 = p5.
                CASE s0.
                  WHEN 0. lv_br = 3. EXIT.
                  WHEN 1. EXIT.
                  WHEN 2. lv_br = 1. EXIT.
                  WHEN OTHERS. lv_br = 2. EXIT.
                ENDCASE.
              ENDDO.
              s0 = l6. s1 = l8. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = 1. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). lv_br = 3. EXIT. " br 3
            ENDDO.
            s1 = l6. s2 = l8. s1 = zcl_wasm_rt=>xor32( iv_a = s1 iv_b = s2 ). s2 = 1. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). lv_br = 2. EXIT. " br 2
          ENDDO.
          RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
        ENDDO.
        s2 = l6. s3 = l8. s2 = zcl_wasm_rt=>or32( iv_a = s2 iv_b = s3 ). s3 = 1. s2 = zcl_wasm_rt=>and32( iv_a = s2 iv_b = s3 ).
      ENDDO.
      s3 = p0. s3 = mem_ld_i32( s3 ). l7 = s3. s4 = 1. s3 = zcl_wasm_rt=>and32( iv_a = s3 iv_b = s4 ).
      IF s2 = s3. s2 = 1. ELSE. s2 = 0. ENDIF.
      IF s2 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      DO 1 TIMES. " block
        s2 = p0. s2 = mem_ld_i32( s2 + 4 ). l10 = s2. s3 = l7.
        IF s2 > s3. s2 = 1. ELSE. s2 = 0. ENDIF.
        IF s2 <> 0.
          s2 = p0. s2 = mem_ld_i32( s2 + 8 ). l10 = s2. lv_br = 1. EXIT. " br 1
        ELSE.
        ENDIF.
        s2 = p0. s2 = mem_ld_i32( s2 + 12 ). s3 = p0. s3 = mem_ld_i32( s3 + 8 ). s4 = l7. s5 = 1. s4 = s4 + s5. l7 = s4. s5 = l10. s6 = 3. s5 = s5 * s6. s6 = 2. s5 = s5 / s6. l10 = s5. s6 = l7. s7 = l10.
        IF s6 > s7. s6 = 1. ELSE. s6 = 0. ENDIF.
        IF s6 <> 0. s4 = s4. ELSE. s4 = s5. ENDIF.
        l7 = s4. s5 = 2. s4 = zcl_wasm_rt=>shl32( iv_val = s4 iv_shift = s5 ). s5 = p0. s5 = mem_ld_i32( s5 + 16 ).
        DATA(lv_ci_func) = mt_tab0[ s5 + 1 ]. " call_indirect
        s2 = dispatch_t11( iv_idx = lv_ci_func p0 = s2 p1 = s3 p2 = s4 ). l10 = s2.
        IF s2 = 0. s2 = 1. ELSE. s2 = 0. ENDIF.
        IF s2 <> 0.
          s2 = -1. rv = s2. RETURN.
        ELSE.
        ENDIF.
        s2 = p0. s3 = l7. mem_st_i32( iv_addr = s2 + 4 iv_val = s3 ). s2 = p0. s3 = l10. mem_st_i32( iv_addr = s2 + 8 iv_val = s3 ). s2 = p0. s2 = mem_ld_i32( s2 ). l7 = s2.
      ENDDO.
      s2 = p0. s3 = l7. s4 = 1. s3 = s3 + s4. mem_st_i32( iv_addr = s2 iv_val = s3 ). s2 = l10. s3 = l7. s4 = 2. s3 = zcl_wasm_rt=>shl32( iv_val = s3 iv_shift = s4 ). s2 = s2 + s3. s3 = l9. mem_st_i32( iv_addr = s2 iv_val = s3 ).
      lv_br = 1. EXIT. " br 1
    ENDDO.
  ENDDO.
  s2 = 0. p5 = s2. s2 = p0. s2 = mem_ld_i32( s2 ). p3 = s2. s3 = 2.
  IF s2 >= s3. s2 = 1. ELSE. s2 = 0. ENDIF.
  IF s2 <> 0.
    s2 = p0. s2 = mem_ld_i32( s2 + 8 ). p2 = s2. s3 = 8. s2 = s2 + s3. p4 = s2. s2 = 0. l6 = s2. s2 = 1. l10 = s2.
    DO. " loop
      DO 1 TIMES. " block
        s2 = p2. s3 = l6. s4 = 2. s3 = zcl_wasm_rt=>shl32( iv_val = s3 iv_shift = s4 ). p1 = s3. s2 = s2 + s3. s2 = mem_ld_i32( s2 ). l8 = s2. s3 = p2. s4 = l10. s5 = 2. s4 = zcl_wasm_rt=>shl32( iv_val = s4 iv_shift = s5 ). s3 = s3 + s4.
        s3 = mem_ld_i32( s3 ).
        IF s2 <> s3. s2 = 1. ELSE. s2 = 0. ENDIF.
        IF s2 <> 0.
          s2 = p1. s3 = p4. s2 = s2 + s3. l9 = s2.
          DO. " loop
            DO 1 TIMES. " block
              s2 = l9. p1 = s2. s2 = l6. l7 = s2. s3 = 3. s2 = s2 + s3. l10 = s2. s3 = p3.
              IF s2 >= s3. s2 = 1. ELSE. s2 = 0. ENDIF.
              IF s2 <> 0. EXIT. ENDIF. " br_if 0
              s2 = p1. s3 = 8. s2 = s2 + s3. l9 = s2. s2 = l6. s3 = 2. s2 = s2 + s3. l6 = s2. s2 = p1. s3 = 4. s2 = s2 - s3. s2 = mem_ld_i32( s2 ). s3 = p1. s3 = mem_ld_i32( s3 ).
              IF s2 = s3. s2 = 1. ELSE. s2 = 0. ENDIF.
              IF s2 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
            ENDDO.
          ENDDO.
          s2 = p2. s3 = p5. s4 = 2. s3 = zcl_wasm_rt=>shl32( iv_val = s3 iv_shift = s4 ). s2 = s2 + s3. l9 = s2. s3 = l8. mem_st_i32( iv_addr = s2 iv_val = s3 ). s2 = l9. s3 = 4. s2 = s2 + s3. s3 = p1. s4 = 4. s3 = s3 - s4.
          s3 = mem_ld_i32( s3 ). mem_st_i32( iv_addr = s2 iv_val = s3 ). s2 = p5. s3 = 2. s2 = s2 + s3. p5 = s2. lv_br = 1. EXIT. " br 1
        ELSE.
        ENDIF.
        s2 = l6. s3 = 3. s2 = s2 + s3. l10 = s2. s2 = l6. l7 = s2.
      ENDDO.
      s2 = l7. s3 = 2. s2 = s2 + s3. l6 = s2. s2 = p3. s3 = l10.
      IF s2 > s3. s2 = 1. ELSE. s2 = 0. ENDIF.
      IF s2 <> 0. EXIT. ENDIF. " br_if 0
    ENDDO.
  ELSE.
  ENDIF.
  s2 = p0. s3 = p5. mem_st_i32( iv_addr = s2 iv_val = s3 ). s2 = 0. rv = s2.
ENDFORM.

FORM f366 USING p0 TYPE i p1 TYPE i p2 TYPE int8 CHANGING rv TYPE int8.
  DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE i. DATA l8 TYPE i. DATA l9 TYPE int8. DATA l10 TYPE int8. DATA l11 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i.
  DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i.
  DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i.
  DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i. DATA s36 TYPE i. DATA s37 TYPE i. DATA s38 TYPE i. DATA s39 TYPE i. DATA s40 TYPE i. DATA s41 TYPE i. DATA s42 TYPE i. DATA s43 TYPE i. DATA s44 TYPE i. DATA s45 TYPE i. DATA s46 TYPE i.
  DATA s47 TYPE i. DATA s48 TYPE i. DATA s49 TYPE i. DATA s50 TYPE i. DATA s51 TYPE i. DATA s52 TYPE i. DATA s53 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 32. s0 = s0 - s1. l3 = s0. gv_g0 = s0. s0 = l3. s1 = 12884901888.
  zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 24 CHANGING cv_mem = mv_mem ). s0 = l3. s1 = 12884901888. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 16 CHANGING cv_mem = mv_mem ). s0 = l3. s1 = p0.
  s2 = 362. s3 = 2. s4 = 0. s5 = 2. s6 = l3. s7 = 16. s6 = s6 + s7. PERFORM f317 USING s1 s2 s3 s4 s5 s6 CHANGING s1. l9 = s1. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 8 CHANGING cv_mem = mv_mem ).
  DO 1 TIMES. " block
    s0 = l9. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 25769803776.
    IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          s0 = p2. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 12884901888.
          IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0.
            s0 = p0. s1 = p2. s2 = l3. s3 = l3. s4 = 8. s3 = s3 + s4. PERFORM f326 USING s0 s1 s2 s3 CHANGING s0. lv_br = 1. EXIT. " br 1
          ELSE.
          ENDIF.
          s1 = p0. s2 = p2. s3 = p2. s4 = 1. s5 = l3. s6 = 8. s5 = s5 + s6. s6 = 2. PERFORM f557 USING s1 s2 s3 s4 s5 s6 CHANGING s1.
        ENDDO.
        p2 = s1. s2 = -4294967296. s1 = zcl_wasm_rt=>and64( iv_a = s1 iv_b = s2 ). s2 = 25769803776.
        IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0.
          DO 1 TIMES. " block
            s1 = l3. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 8 ). l10 = s1. s2 = -4294967296.
            IF zcl_wasm_rt=>lt_u64( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
            IF s1 <> 0. EXIT. ENDIF. " br_if 0
            s1 = l10. s1 = zcl_wasm_rt=>wrap_i64( s1 ). l4 = s1. s1 = mem_ld_i32_16u( s1 + 6 ). s2 = 15.
            IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
            IF s1 <> 0. EXIT. ENDIF. " br_if 0
            s1 = l4. s1 = mem_ld_i32( s1 + 32 ). l5 = s1.
          ENDDO.
          DO 1 TIMES. " block
            s1 = l5. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 8 ). l9 = s1. s2 = -4294967296.
            IF zcl_wasm_rt=>lt_u64( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
            IF s1 <> 0. EXIT. ENDIF. " br_if 0
            s1 = p0. s2 = 16. s1 = s1 + s2. l6 = s1. s1 = l9. s1 = zcl_wasm_rt=>wrap_i64( s1 ). l7 = s1. s1 = mem_ld_i32_16u( s1 + 6 ). l4 = s1. s2 = 13.
            IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
            IF s1 <> 0.
              DO 1 TIMES. " block
                s1 = l4. s2 = 48.
                IF s1 = s2. s1 = 1. ELSE. s1 = 0. ENDIF.
                IF s1 <> 0.
                  s1 = l7. s1 = mem_ld_i32( s1 + 32 ). s1 = mem_ld_i32_8u( s1 + 16 ). lv_br = 1. EXIT. " br 1
                ELSE.
                ENDIF.
                s2 = l6. s2 = mem_ld_i32( s2 ). s2 = mem_ld_i32( s2 + 68 ). s3 = l4. s4 = 24. s3 = s3 * s4. s2 = s2 + s3. s2 = mem_ld_i32( s2 + 16 ). s3 = 0.
                IF s2 <> s3. s2 = 1. ELSE. s2 = 0. ENDIF.
              ENDDO.
              IF s2 = 0. s2 = 1. ELSE. s2 = 0. ENDIF.
              IF s2 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
            ELSE.
            ENDIF.
            s2 = l5. s3 = 16. s2 = s2 + s3. s2 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s2 + 0 ). l11 = s2. s3 = -4294967296.
            IF zcl_wasm_rt=>lt_u64( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
            IF s2 <> 0. EXIT. ENDIF. " br_if 0
            s2 = l11. s2 = zcl_wasm_rt=>wrap_i64( s2 ). l8 = s2. s2 = mem_ld_i32_16u( s2 + 6 ). l4 = s2. s3 = 13.
            IF s2 <> s3. s2 = 1. ELSE. s2 = 0. ENDIF.
            IF s2 <> 0.
              DO 1 TIMES. " block
                s2 = l4. s3 = 48.
                IF s2 = s3. s2 = 1. ELSE. s2 = 0. ENDIF.
                IF s2 <> 0.
                  s2 = l8. s2 = mem_ld_i32( s2 + 32 ). s2 = mem_ld_i32_8u( s2 + 16 ). lv_br = 1. EXIT. " br 1
                ELSE.
                ENDIF.
                s3 = l6. s3 = mem_ld_i32( s3 ). s3 = mem_ld_i32( s3 + 68 ). s4 = l4. s5 = 24. s4 = s4 * s5. s3 = s3 + s4. s3 = mem_ld_i32( s3 + 16 ). s4 = 0.
                IF s3 <> s4. s3 = 1. ELSE. s3 = 0. ENDIF.
              ENDDO.
              IF s3 = 0. s3 = 1. ELSE. s3 = 0. ENDIF.
              IF s3 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
            ELSE.
            ENDIF.
            s3 = p1. s4 = l9. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s4 iv_addr = s3 + 0 CHANGING cv_mem = mv_mem ). s3 = l7. s4 = l7. s4 = mem_ld_i32( s4 ). s5 = 1. s4 = s4 + s5. mem_st_i32( iv_addr = s3 iv_val = s4 ). s3 = l5.
            s3 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s3 + 16 ). l9 = s3. s4 = 32. s3 = zcl_wasm_rt=>shr_u64( iv_val = s3 iv_shift = s4 ). s3 = zcl_wasm_rt=>wrap_i64( s3 ). s4 = -11.
            IF zcl_wasm_rt=>ge_u32( iv_a = s3 iv_b = s4 ) = abap_true. s3 = 1. ELSE. s3 = 0. ENDIF.
            IF s3 <> 0.
              s3 = l9. s3 = zcl_wasm_rt=>wrap_i64( s3 ). p0 = s3. s4 = p0. s4 = mem_ld_i32( s4 ). s5 = 1. s4 = s4 + s5. mem_st_i32( iv_addr = s3 iv_val = s4 ).
            ELSE.
            ENDIF.
            s3 = p1. s4 = l9. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s4 iv_addr = s3 + 8 CHANGING cv_mem = mv_mem ). s3 = l10. s4 = 32. s3 = zcl_wasm_rt=>shr_u64( iv_val = s3 iv_shift = s4 ). s3 = zcl_wasm_rt=>wrap_i64( s3 ). s4 = -11.
            IF zcl_wasm_rt=>lt_u32( iv_a = s3 iv_b = s4 ) = abap_true. s3 = 1. ELSE. s3 = 0. ENDIF.
            IF s3 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
            s3 = l10. s3 = zcl_wasm_rt=>wrap_i64( s3 ). p0 = s3. s4 = p0. s4 = mem_ld_i32( s4 ). p0 = s4. s5 = 1. s4 = s4 - s5. mem_st_i32( iv_addr = s3 iv_val = s4 ). s3 = p2. l9 = s3. s3 = p0. s4 = 2.
            IF s3 >= s4. s3 = 1. ELSE. s3 = 0. ENDIF.
            IF s3 <> 0. lv_br = 4. EXIT. ENDIF. " br_if 4
            lv_br = 2. EXIT. " br 2
          ENDDO.
          s3 = p0. s4 = 1141317. s5 = 0. PERFORM f970 USING s3 s4 s5 CHANGING s3.
        ELSE.
        ENDIF.
        DO 1 TIMES. " block
          s3 = l3. s3 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s3 + 8 ). l9 = s3. s4 = 32. s3 = zcl_wasm_rt=>shr_u64( iv_val = s3 iv_shift = s4 ). s3 = zcl_wasm_rt=>wrap_i64( s3 ). s4 = -11.
          IF zcl_wasm_rt=>lt_u32( iv_a = s3 iv_b = s4 ) = abap_true. s3 = 1. ELSE. s3 = 0. ENDIF.
          IF s3 <> 0. EXIT. ENDIF. " br_if 0
          s3 = l9. s3 = zcl_wasm_rt=>wrap_i64( s3 ). p1 = s3. s4 = p1. s4 = mem_ld_i32( s4 ). p1 = s4. s5 = 1. s4 = s4 - s5. mem_st_i32( iv_addr = s3 iv_val = s4 ). s3 = p1. s4 = 1.
          IF s3 > s4. s3 = 1. ELSE. s3 = 0. ENDIF.
          IF s3 <> 0. EXIT. ENDIF. " br_if 0
          s3 = p0. s3 = mem_ld_i32( s3 + 16 ). s4 = l9. PERFORM f453 USING s3 s4.
        ENDDO.
        s3 = 25769803776. l9 = s3. s3 = p2. s4 = 32. s3 = zcl_wasm_rt=>shr_u64( iv_val = s3 iv_shift = s4 ). s3 = zcl_wasm_rt=>wrap_i64( s3 ). s4 = -11.
        IF zcl_wasm_rt=>lt_u32( iv_a = s3 iv_b = s4 ) = abap_true. s3 = 1. ELSE. s3 = 0. ENDIF.
        IF s3 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
        s3 = p2. s3 = zcl_wasm_rt=>wrap_i64( s3 ). p1 = s3. s4 = p1. s4 = mem_ld_i32( s4 ). p1 = s4. s5 = 1. s4 = s4 - s5. mem_st_i32( iv_addr = s3 iv_val = s4 ). s3 = p1. s4 = 1.
        IF s3 > s4. s3 = 1. ELSE. s3 = 0. ENDIF.
        IF s3 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
        s3 = p0. s4 = 16. s3 = s3 + s4. l6 = s3. s3 = p2. l10 = s3. s3 = 25769803776. p2 = s3.
      ENDDO.
      s3 = l6. s3 = mem_ld_i32( s3 ). s4 = l10. PERFORM f453 USING s3 s4.
    ENDDO.
    s3 = p2. l9 = s3.
  ENDDO.
  s3 = l3. s4 = 32. s3 = s3 + s4. gv_g0 = s3. s3 = l9. rv = s3.
ENDFORM.

FORM f367 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i p4 TYPE i CHANGING rv TYPE int8.
  DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE i. DATA l8 TYPE i. DATA l9 TYPE i. DATA l10 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i.
  DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i.
  DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i.
  DATA s36 TYPE i. DATA s37 TYPE i. DATA s38 TYPE i. DATA s39 TYPE i. DATA s40 TYPE i. DATA s41 TYPE i. DATA s42 TYPE i. DATA s43 TYPE i. DATA s44 TYPE i. DATA s45 TYPE i. DATA s46 TYPE i. DATA s47 TYPE i. DATA s48 TYPE i. DATA s49 TYPE i.
  DATA s50 TYPE i. DATA s51 TYPE i. DATA s52 TYPE i. DATA s53 TYPE i. DATA s54 TYPE i. DATA s55 TYPE i. DATA s56 TYPE i. DATA s57 TYPE i. DATA s58 TYPE i. DATA s59 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 48. s0 = s0 - s1. l5 = s0.
  gv_g0 = s0. s0 = p1. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
  IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l6 = s0. s1 = l6. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
  ELSE.
  ENDIF.
  DO 1 TIMES. " block
    s0 = p0. s1 = p1. s2 = 1. PERFORM f287 USING s0 s1 s2 CHANGING s0. p1 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). l10 = s0. s1 = 25769803776.
    IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p1. l10 = s0. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = p0. s1 = l5. s2 = 24. s1 = s1 + s2. s2 = p1. PERFORM f754 USING s0 s1 s2 CHANGING s0. l6 = s0.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = 25769803776. l10 = s0. s0 = p1. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
      IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p2 = s0. s1 = p2. s1 = mem_ld_i32( s1 ). p2 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p2. s1 = 1.
      IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = p1. PERFORM f453 USING s0 s1. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = l6. s0 = mem_ld_i32( s0 + 4 ). l8 = s0. s0 = l6. s0 = mem_ld_i32( s0 + 8 ). s1 = -2147483648.
    IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = l6. s1 = 0. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ).
    ELSE.
    ENDIF.
    s0 = p4. s1 = 4194304. s0 = zcl_wasm_rt=>or32( iv_a = s0 iv_b = s1 ). l7 = s0.
    DO 1 TIMES. " block
      s0 = p4. s1 = 196608. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = 196608.
      IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = p2. s1 = p2. s2 = 1. s1 = s1 - s2. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
        IF s0 <> 0.
          DO 1 TIMES. " block
            s0 = l10. s1 = -38654705664.
            IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0.
              s0 = 584. p4 = s0. s0 = 53. lv_br = 1. EXIT. " br 1
            ELSE.
            ENDIF.
            s1 = p0. s2 = 224. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). s2 = 2024. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). p4 = s1. s1 = p0. s1 = mem_ld_i32( s1 + 220 ).
          ENDDO.
          p3 = s1. s1 = p0. s1 = mem_ld_i32( s1 + 216 ). l9 = s1. s1 = l5. s2 = 0. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s2 iv_addr = s1 + 12 CHANGING cv_mem = mv_mem ). s1 = l5. s2 = -9223372036854775808.
          zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s2 iv_addr = s1 + 4 CHANGING cv_mem = mv_mem ). s1 = l5. s2 = l9. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = l5. s2 = l6. PERFORM f832 USING s1 s2 CHANGING s1. s1 = l5. s2 = p3.
          s3 = p4. PERFORM f1246 USING s1 s2 s3 CHANGING s1. s1 = l5. s2 = p2. s3 = p3. s4 = p4. s5 = l7. s4 = zcl_wasm_rt=>or32( iv_a = s4 iv_b = s5 ). PERFORM f1306 USING s1 s2 s3 s4 CHANGING s1. p4 = s1. s1 = l5. s1 = mem_ld_i32( s1 ).
          p2 = s1.
          IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
          IF s1 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
          s1 = l5. s1 = mem_ld_i32( s1 + 16 ). p3 = s1.
          IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
          IF s1 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
          s1 = p2. s1 = mem_ld_i32( s1 ). s2 = p3. s3 = 0. s4 = p2. s5 = 4. s4 = s4 + s5. s4 = mem_ld_i32( s4 ).
          DATA(lv_ci_func) = mt_tab0[ s4 + 1 ]. " call_indirect
          s1 = dispatch_t11( iv_idx = lv_ci_func p0 = s1 p1 = s2 p2 = s3 ). lv_br = 2. EXIT. " br 2
        ELSE.
        ENDIF.
        s1 = l6. s2 = p2. s3 = 1073741823. s4 = l7. PERFORM f1306 USING s1 s2 s3 s4 CHANGING s1. p4 = s1. lv_br = 1. EXIT. " br 1
      ELSE.
      ENDIF.
      s1 = l6. s2 = p2. s3 = p3. s4 = l7. PERFORM f1306 USING s1 s2 s3 s4 CHANGING s1. p4 = s1.
    ENDDO.
    s1 = l6. s2 = l8. mem_st_i32( iv_addr = s1 + 4 iv_val = s2 ).
    DO 1 TIMES. " block
      s1 = l6. s2 = l5. s3 = 24. s2 = s2 + s3.
      IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. EXIT. ENDIF. " br_if 0
      s1 = l5. s1 = mem_ld_i32( s1 + 24 ). p2 = s1.
      IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. EXIT. ENDIF. " br_if 0
      s1 = l5. s1 = mem_ld_i32( s1 + 40 ). p3 = s1.
      IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. EXIT. ENDIF. " br_if 0
      s1 = p2. s1 = mem_ld_i32( s1 ). s2 = p3. s3 = 0. s4 = p2. s5 = 4. s4 = s4 + s5. s4 = mem_ld_i32( s4 ).
      DATA(lv_ci_func) = mt_tab0[ s4 + 1 ]. " call_indirect
      s1 = dispatch_t11( iv_idx = lv_ci_func p0 = s1 p1 = s2 p2 = s3 ).
    ENDDO.
    DO 1 TIMES. " block
      s1 = p1. s2 = 32. s1 = zcl_wasm_rt=>shr_u64( iv_val = s1 iv_shift = s2 ). s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = -11.
      IF zcl_wasm_rt=>lt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. EXIT. ENDIF. " br_if 0
      s1 = p1. s1 = zcl_wasm_rt=>wrap_i64( s1 ). p2 = s1. s2 = p2. s2 = mem_ld_i32( s2 ). p2 = s2. s3 = 1. s2 = s2 - s3. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = p2. s2 = 1.
      IF s1 > s2. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. EXIT. ENDIF. " br_if 0
      s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s2 = p1. PERFORM f453 USING s1 s2.
    ENDDO.
    s1 = p4.
    IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
    IF s1 <> 0.
      s1 = 25769803776. l10 = s1. s1 = p0. s1 = mem_ld_i32( s1 + 16 ). p2 = s1. s1 = mem_ld_i32_8u( s1 + 136 ).
      IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s1 = p2. s2 = 1. mem_st_i32_8( iv_addr = s1 + 136 iv_val = s2 ). s1 = p0. s2 = 1134898. s3 = 0. PERFORM f969 USING s1 s2 s3 CHANGING s1. s1 = p2. s2 = 0. mem_st_i32_8( iv_addr = s1 + 136 iv_val = s2 ). lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s1 = p0. s2 = p4. s3 = p4. PERFORM f768 USING s3 CHANGING s3. PERFORM f126 USING s1 s2 s3 CHANGING s1. l10 = s1. s1 = p0. s1 = mem_ld_i32( s1 + 216 ). p0 = s1. s1 = mem_ld_i32( s1 ). s2 = p4. s3 = 0. s4 = p0. s5 = 4. s4 = s4 + s5.
    s4 = mem_ld_i32( s4 ).
    DATA(lv_ci_func) = mt_tab0[ s4 + 1 ]. " call_indirect
    s1 = dispatch_t11( iv_idx = lv_ci_func p0 = s1 p1 = s2 p2 = s3 ).
  ENDDO.
  s1 = l5. s2 = 48. s1 = s1 + s2. gv_g0 = s1. s1 = l10. rv = s1.
ENDFORM.

FORM f368 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i CHANGING rv TYPE int8.
  DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE i. DATA l8 TYPE i. DATA l9 TYPE i. DATA l10 TYPE int8. DATA l11 TYPE int8. DATA l12 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i.
  DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i.
  DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i.
  DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i. DATA s36 TYPE i. DATA s37 TYPE i. DATA s38 TYPE i. DATA s39 TYPE i. DATA s40 TYPE i. DATA s41 TYPE i. DATA s42 TYPE i. DATA s43 TYPE i. DATA s44 TYPE i. DATA s45 TYPE i. DATA s46 TYPE i.
  DATA s47 TYPE i. DATA s48 TYPE i. DATA s49 TYPE i. DATA s50 TYPE i. DATA s51 TYPE i. DATA s52 TYPE i. DATA s53 TYPE i. DATA s54 TYPE i. DATA s55 TYPE i. DATA s56 TYPE i. DATA s57 TYPE i. DATA s58 TYPE i. DATA s59 TYPE i.
  DATA lv_br TYPE i. s0 = gv_g0. s1 = 32. s0 = s0 - s1. p2 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    s0 = p1. s1 = -8589934592. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 8589934592.
    IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p0. s1 = 1142123. s2 = 0. PERFORM f970 USING s0 s1 s2 CHANGING s0. s0 = 25769803776. l10 = s0. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = 25769803776. l10 = s0.
    DO 1 TIMES. " block
      s0 = p0. s1 = p1. s2 = 0. PERFORM f341 USING s0 s1 s2 CHANGING s0. p1 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 25769803776.
      IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). l11 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
      IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = l11. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p3 = s0. s1 = p3. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
      ELSE.
      ENDIF.
      s0 = p0. s1 = p2. s2 = l11. PERFORM f719 USING s0 s1 s2 CHANGING s0.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = 1136640. p3 = s0.
      DO 1 TIMES. " block
        s0 = p2. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). l11 = s0. s1 = 2147483647.
        IF zcl_wasm_rt=>gt_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l5 = s0. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 4 ). l12 = s0. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l4 = s0. s1 = 2147483647.
        s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). l7 = s0.
        IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = p1. l10 = s0. lv_br = 3. EXIT. " br 3
        ELSE.
        ENDIF.
        s0 = l11. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l6 = s0. s1 = 1.
        IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = p1. l10 = s0. lv_br = 3. EXIT. " br 3
        ELSE.
        ENDIF.
        s0 = 1143351. p3 = s0. s0 = l12. s1 = 2147483647. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = l11. s0 = s0 * s1. s1 = 1073741823.
        IF zcl_wasm_rt=>gt_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        DO 1 TIMES. " block
          s0 = p2. s1 = 8. s0 = s0 + s1. p3 = s0. s1 = l6. s2 = l7. s1 = s1 * s2. l9 = s1. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = p3. s1 = p0. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p3. s1 = 0.
          mem_st_i32( iv_addr = s0 + 20 iv_val = s1 ). s0 = p3. s1 = l4. s2 = 31. s1 = zcl_wasm_rt=>shr_u32( iv_val = s1 iv_shift = s2 ). l8 = s1. mem_st_i32( iv_addr = s0 + 16 iv_val = s1 ). s0 = p3. s1 = 0.
          mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = p0. s0 = mem_ld_i32( s0 + 16 ). l4 = s0. s1 = 16. s0 = s0 + s1. s1 = l9. s2 = l8. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s2 = l8. s1 = s1 - s2. s2 = 17. s1 = s1 + s2.
          s2 = l4. s2 = mem_ld_i32( s2 ).
          DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
          s0 = dispatch_t7( iv_idx = lv_ci_func p0 = s0 p1 = s1 ). l4 = s0.
          IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0.
            s0 = p0. s0 = mem_ld_i32( s0 + 16 ). l4 = s0. s0 = mem_ld_i32_8u( s0 + 136 ).
            IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0.
              s0 = l4. s1 = 1. mem_st_i32_8( iv_addr = s0 + 136 iv_val = s1 ). s0 = p0. s1 = 1134898. s2 = 0. PERFORM f969 USING s0 s1 s2 CHANGING s0. s0 = l4. s1 = 0. mem_st_i32_8( iv_addr = s0 + 136 iv_val = s1 ).
            ELSE.
            ENDIF.
            s0 = p3. s1 = -1. mem_st_i32( iv_addr = s0 + 20 iv_val = s1 ). s0 = p3. s1 = 0. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = p3. s1 = 0. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = -1. lv_br = 1. EXIT. " br 1
          ELSE.
          ENDIF.
          s1 = l4. s2 = l9. s3 = 2147483647. s2 = zcl_wasm_rt=>and32( iv_a = s2 iv_b = s3 ). s3 = l8. s4 = 31. s3 = zcl_wasm_rt=>shl32( iv_val = s3 iv_shift = s4 ). s2 = zcl_wasm_rt=>or32( iv_a = s2 iv_b = s3 ).
          s2 = zcl_wasm_rt=>extend_u32( s2 ). zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s2 iv_addr = s1 + 4 CHANGING cv_mem = mv_mem ). s1 = l4. s2 = 1. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = l4. s2 = 0.
          mem_st_i32( iv_addr = s1 + 12 iv_val = s2 ). s1 = p3. s2 = l4. mem_st_i32( iv_addr = s1 + 4 iv_val = s2 ). s1 = 0.
        ENDDO.
        IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        DO 1 TIMES. " block
          s1 = l7. s2 = 1.
          IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
          IF s1 <> 0.
            s1 = l6.
            IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
            IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
            s1 = l6. s2 = 1. s1 = s1 + s2. p3 = s1.
            DO. " loop
              s1 = p2. s2 = 8. s1 = s1 + s2. s2 = l5. s3 = 0. s4 = l7. PERFORM f271 USING s1 s2 s3 s4 CHANGING s1. s1 = p3. s2 = 1. s1 = s1 - s2. p3 = s1. s2 = 1.
              IF zcl_wasm_rt=>gt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
              IF s1 <> 0. EXIT. ENDIF. " br_if 0
            ENDDO.
            lv_br = 1. EXIT. " br 1
          ELSE.
          ENDIF.
          s1 = p2. s2 = 8. s1 = s1 + s2.
          DO 1 TIMES. " block
            s2 = l5. s3 = 7. s2 = s2 + s3. s2 = mem_ld_i32_8u( s2 ). s3 = 128. s2 = zcl_wasm_rt=>and32( iv_a = s2 iv_b = s3 ).
            IF s2 <> 0.
              s2 = l5. s2 = mem_ld_i32_16u( s2 + 16 ). lv_br = 1. EXIT. " br 1
            ELSE.
            ENDIF.
            s3 = l5. s3 = mem_ld_i32_8u( s3 + 16 ).
          ENDDO.
          s4 = l6. PERFORM f694 USING s2 s3 s4 CHANGING s2.
        ENDDO.
        s2 = p0. s3 = p1. PERFORM f1164 USING s2 s3. s2 = p2. s3 = 8. s2 = s2 + s3. PERFORM f676 USING s2 CHANGING s2. l10 = s2. lv_br = 2. EXIT. " br 2
      ENDDO.
      s2 = p0. s3 = p3. s4 = 0. PERFORM f975 USING s2 s3 s4.
    ENDDO.
    s2 = p1. s3 = 32. s2 = zcl_wasm_rt=>shr_u64( iv_val = s2 iv_shift = s3 ). s2 = zcl_wasm_rt=>wrap_i64( s2 ). s3 = -11.
    IF zcl_wasm_rt=>lt_u32( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
    IF s2 <> 0. EXIT. ENDIF. " br_if 0
    s2 = p1. s2 = zcl_wasm_rt=>wrap_i64( s2 ). p3 = s2. s3 = p3. s3 = mem_ld_i32( s3 ). p3 = s3. s4 = 1. s3 = s3 - s4. mem_st_i32( iv_addr = s2 iv_val = s3 ). s2 = p3. s3 = 1.
    IF s2 > s3. s2 = 1. ELSE. s2 = 0. ENDIF.
    IF s2 <> 0. EXIT. ENDIF. " br_if 0
    s2 = p0. s2 = mem_ld_i32( s2 + 16 ). s3 = p1. PERFORM f453 USING s2 s3.
  ENDDO.
  s2 = p2. s3 = 32. s2 = s2 + s3. gv_g0 = s2. s2 = l10. rv = s2.
ENDFORM.

FORM f369 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i CHANGING rv TYPE int8.
  DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE i. DATA l8 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i.
  DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i.
  DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i. DATA s36 TYPE i.
  DATA s37 TYPE i. DATA s38 TYPE i. DATA s39 TYPE i. DATA s40 TYPE i. DATA s41 TYPE i. DATA s42 TYPE i. DATA s43 TYPE i. DATA s44 TYPE i. DATA s45 TYPE i. DATA lv_br TYPE i. s0 = p1. s1 = -8589934592.
  s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 8589934592.
  IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = p0. s1 = 1142123. s2 = 0. PERFORM f970 USING s0 s1 s2 CHANGING s0. s0 = 25769803776. rv = s0. RETURN.
  ELSE.
  ENDIF.
  DO 1 TIMES. " block
    s0 = 25769803776. s1 = p0. s2 = p1. s3 = 0. PERFORM f341 USING s1 s2 s3 CHANGING s1. p1 = s1. s2 = -4294967296. s1 = zcl_wasm_rt=>and64( iv_a = s1 iv_b = s2 ). s2 = 25769803776.
    IF s1 = s2. s1 = 1. ELSE. s1 = 0. ENDIF.
    IF s1 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l4 = s0. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 4 ). l8 = s0. s1 = 2147483648. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ).
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p1. rv = s0. RETURN.
    ELSE.
    ENDIF.
    s0 = l8. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l7 = s0. s1 = 2147483647. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). l5 = s0.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p1. rv = s0. RETURN.
    ELSE.
    ENDIF.
    s0 = l4. s1 = 16. s0 = s0 + s1. l6 = s0. s0 = 0. p2 = s0.
    DO 1 TIMES. " block
      DO. " loop
        DO 1 TIMES. " block
          s0 = l6. s1 = p2. s2 = 1. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s0 = mem_ld_i32_16u( s0 ). p3 = s0. s1 = 63488. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = 55296.
          IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0.
            s0 = p2. p3 = s0. lv_br = 1. EXIT. " br 1
          ELSE.
          ENDIF.
          s0 = p3. s1 = 64512. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = 55296.
          IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
          s0 = p2. s1 = 1. s0 = s0 + s1. p3 = s0. s1 = l5.
          IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
          s0 = l6. s1 = p3. s2 = 1. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s0 = mem_ld_i32_16u( s0 ). s1 = 64512. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = 56320.
          IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
        ENDDO.
        s0 = p3. s1 = 1. s0 = s0 + s1. p2 = s0. s1 = l5.
        IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
      ENDDO.
      s0 = p1. rv = s0. RETURN.
    ENDDO.
    s0 = p2. s1 = 0.
    IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p1. rv = s0. RETURN.
    ELSE.
    ENDIF.
    DO 1 TIMES. " block
      s0 = p0. s0 = mem_ld_i32( s0 + 16 ). p3 = s0. s1 = 16. s0 = s0 + s1. s1 = l7. s2 = 1. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). l5 = s1. s2 = 16. s1 = s1 + s2. s2 = p3. s2 = mem_ld_i32( s2 ).
      DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
      s0 = dispatch_t7( iv_idx = lv_ci_func p0 = s0 p1 = s1 ). p3 = s0.
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = 25769803776. l8 = s0. s0 = p0. s0 = mem_ld_i32( s0 + 16 ). p3 = s0. s0 = mem_ld_i32_8u( s0 + 136 ).
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        s0 = p3. s1 = 1. mem_st_i32_8( iv_addr = s0 + 136 iv_val = s1 ). s0 = p0. s1 = 1134898. s2 = 0. PERFORM f969 USING s0 s1 s2 CHANGING s0. s0 = p3. s1 = 0. mem_st_i32_8( iv_addr = s0 + 136 iv_val = s1 ). lv_br = 1. EXIT. " br 1
      ELSE.
      ENDIF.
      s0 = p3. s1 = 0. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = p3. s1 = 1. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p3. s1 = l8. s2 = 2147483647. s1 = zcl_wasm_rt=>and64( iv_a = s1 iv_b = s2 ). s2 = 2147483648.
      s1 = zcl_wasm_rt=>or64( iv_a = s1 iv_b = s2 ). zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 4 CHANGING cv_mem = mv_mem ). s0 = p3. s1 = 16. s0 = s0 + s1. s1 = l6. s2 = l5. PERFORM f216 USING s0 s1 s2 CHANGING s0.
      s0 = p3. s0 = zcl_wasm_rt=>extend_u32( s0 ). s1 = -30064771072. s0 = zcl_wasm_rt=>or64( iv_a = s0 iv_b = s1 ). l8 = s0.
    ENDDO.
    DO 1 TIMES. " block
      s0 = p1. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
      IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = l4. s1 = l4. s1 = mem_ld_i32( s1 ). p3 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p3. s1 = 1.
      IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = p1. PERFORM f453 USING s0 s1.
    ENDDO.
    s0 = 25769803776. s1 = l8. s2 = -4294967296. s1 = zcl_wasm_rt=>and64( iv_a = s1 iv_b = s2 ). s2 = 25769803776.
    IF s1 = s2. s1 = 1. ELSE. s1 = 0. ENDIF.
    IF s1 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l8. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p0 = s0. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 4 ). p1 = s0. s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = 2147483647. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). p3 = s0.
    s1 = p2.
    IF zcl_wasm_rt=>gt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p0. s1 = 16. s0 = s0 + s1. l4 = s0.
      DO. " loop
        DO 1 TIMES. " block
          s0 = l4. s1 = p2. s2 = 1. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. l6 = s0. s0 = mem_ld_i32_16u( s0 ). l5 = s0. s1 = 63488. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = 55296.
          IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0.
            DO 1 TIMES. " block
              s0 = l5. s1 = 64512. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = 55296.
              IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0. EXIT. ENDIF. " br_if 0
              s0 = p3. s1 = p2. s2 = 1. s1 = s1 + s2. p3 = s1.
              IF s0 <= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0. EXIT. ENDIF. " br_if 0
              s0 = l4. s1 = p3. s2 = 1. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s0 = mem_ld_i32_16u( s0 ). s1 = 64512. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = 56320.
              IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
            ENDDO.
            s0 = l6. s1 = 65533. mem_st_i32_16( iv_addr = s0 iv_val = s1 ). s0 = p0. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 4 ). p1 = s0.
          ELSE.
          ENDIF.
          s0 = p2. p3 = s0.
        ENDDO.
        s0 = p3. s1 = 1. s0 = s0 + s1. p2 = s0. s1 = p1. s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = 2147483647. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). p3 = s1.
        IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
      ENDDO.
    ELSE.
    ENDIF.
    s0 = l8.
  ENDDO.
  rv = s0.
ENDFORM.

FORM f370 USING p0 TYPE i p1 TYPE i p2 TYPE i CHANGING rv TYPE i.
  DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE i. DATA l8 TYPE int8. DATA l9 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i.
  DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i.
  DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i.
  DATA s35 TYPE i. DATA s36 TYPE i. DATA s37 TYPE i. DATA s38 TYPE i. DATA s39 TYPE i. DATA s40 TYPE i. DATA s41 TYPE i. DATA s42 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    s0 = p1. s0 = mem_ld_i32( s0 + 8 ). l4 = s0. s1 = 2147483646.
    IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = 1. l3 = s0. s0 = p2. s1 = 1. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = 9223372036854775807. l8 = s0. s0 = l4. s1 = 2147483646.
      IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p0. s1 = p1. s1 = zcl_wasm_rt=>mem_ld_i64_ext( iv_mem = mv_mem iv_addr = s1 + 4 iv_op = 52 ). s2 = 9223372036854775807. s1 = s1 + s2. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ).
      s0 = 1. rv = s0. RETURN.
    ELSE.
    ENDIF.
    s0 = l4. s1 = 0.
    IF s0 <= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p0. s1 = 0. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ). s0 = 0. rv = s0. RETURN.
    ELSE.
    ENDIF.
    s0 = l4. s1 = 63.
    IF zcl_wasm_rt=>le_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p1. s0 = mem_ld_i32( s0 + 16 ). l7 = s0. s1 = p1. s1 = mem_ld_i32( s1 + 12 ). p2 = s1. s2 = 2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s1 = 4. s0 = s0 - s1. s0 = mem_ld_i32( s0 ). l3 = s0. s0 = p0.
      s1 = 0. s2 = l4. s3 = 32.
      IF zcl_wasm_rt=>le_u32( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
      IF s2 <> 0.
        s2 = l3. s3 = 32. s4 = l4. s3 = s3 - s4. s2 = zcl_wasm_rt=>shr_u32( iv_val = s2 iv_shift = s3 ). s2 = zcl_wasm_rt=>extend_u32( s2 ).
      ELSE.
        s3 = p2. s4 = 2.
        IF zcl_wasm_rt=>ge_u32( iv_a = s3 iv_b = s4 ) = abap_true. s3 = 1. ELSE. s3 = 0. ENDIF.
        IF s3 <> 0.
          s3 = p2. s4 = 2. s3 = zcl_wasm_rt=>shl32( iv_val = s3 iv_shift = s4 ). s4 = l7. s3 = s3 + s4. s4 = 8. s3 = s3 - s4. s3 = zcl_wasm_rt=>mem_ld_i64_ext( iv_mem = mv_mem iv_addr = s3 + 0 iv_op = 53 ).
        ELSE.
          s4 = 0.
        ENDIF.
        s5 = l3. s5 = zcl_wasm_rt=>extend_u32( s5 ). s6 = 32. s5 = zcl_wasm_rt=>shl64( iv_val = s5 iv_shift = s6 ). s4 = zcl_wasm_rt=>or64( iv_a = s4 iv_b = s5 ). s5 = 64. s6 = l4. s5 = s5 - s6. s5 = zcl_wasm_rt=>extend_u32( s5 ).
        s4 = zcl_wasm_rt=>shr_u64( iv_val = s4 iv_shift = s5 ).
      ENDIF.
      l8 = s4. s3 = s3 - s4. s4 = l8. s5 = p1. s5 = mem_ld_i32( s5 + 4 ).
      IF s5 <> 0. s3 = s3. ELSE. s3 = s4. ENDIF.
      zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s3 iv_addr = s2 + 0 CHANGING cv_mem = mv_mem ). s2 = 0. rv = s2. RETURN.
    ELSE.
    ENDIF.
    s2 = 1. l3 = s2. s2 = p2. s3 = 1. s2 = zcl_wasm_rt=>and32( iv_a = s2 iv_b = s3 ).
    IF s2 = 0. s2 = 1. ELSE. s2 = 0. ENDIF.
    IF s2 <> 0.
      s2 = p1. s2 = mem_ld_i32( s2 + 4 ).
      IF s2 = 0. s2 = 1. ELSE. s2 = 0. ENDIF.
      IF s2 <> 0.
        s2 = p0. s3 = 9223372036854775807. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s3 iv_addr = s2 + 0 CHANGING cv_mem = mv_mem ). s2 = 1. rv = s2. RETURN.
      ELSE.
      ENDIF.
      s2 = -9223372036854775808. l8 = s2. s2 = l4. s3 = 64.
      IF s2 <> s3. s2 = 1. ELSE. s2 = 0. ENDIF.
      IF s2 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s2 = p1. s2 = mem_ld_i32( s2 + 16 ). s3 = p1. s3 = mem_ld_i32( s3 + 12 ). p1 = s3. s4 = 2. s3 = zcl_wasm_rt=>shl32( iv_val = s3 iv_shift = s4 ). s2 = s2 + s3. p2 = s2. s3 = 4. s2 = s2 - s3.
      s2 = zcl_wasm_rt=>mem_ld_i64_ext( iv_mem = mv_mem iv_addr = s2 + 0 iv_op = 53 ). s3 = 32. s2 = zcl_wasm_rt=>shl64( iv_val = s2 iv_shift = s3 ). l9 = s2. s2 = 0. l8 = s2. s2 = p1. s3 = 2.
      IF zcl_wasm_rt=>ge_u32( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
      IF s2 <> 0.
        s2 = p2. s3 = 8. s2 = s2 - s3. s2 = zcl_wasm_rt=>mem_ld_i64_ext( iv_mem = mv_mem iv_addr = s2 + 0 iv_op = 53 ). l8 = s2.
      ELSE.
      ENDIF.
      s2 = p0. s3 = -9223372036854775808. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s3 iv_addr = s2 + 0 CHANGING cv_mem = mv_mem ). s2 = l8. s3 = l9. s2 = zcl_wasm_rt=>or64( iv_a = s2 iv_b = s3 ). s3 = -9223372036854775808.
      IF s2 <> s3. s2 = 1. ELSE. s2 = 0. ENDIF.
      rv = s2. RETURN.
    ELSE.
    ENDIF.
    s2 = p1. s2 = mem_ld_i32( s2 + 12 ). l7 = s2. s3 = 5. s2 = zcl_wasm_rt=>shl32( iv_val = s2 iv_shift = s3 ). s3 = l4. s2 = s2 - s3. l6 = s2. s3 = 31. s2 = zcl_wasm_rt=>and32( iv_a = s2 iv_b = s3 ). p2 = s2. s2 = p1.
    s2 = mem_ld_i32( s2 + 16 ). l4 = s2. s2 = 0. l3 = s2. s2 = l7. s3 = l6. s4 = 5. s3 = zcl_wasm_rt=>shr_s32( iv_val = s3 iv_shift = s4 ). l5 = s3.
    IF zcl_wasm_rt=>gt_u32( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
    IF s2 <> 0.
      s2 = l4. s3 = l5. s4 = 2. s3 = zcl_wasm_rt=>shl32( iv_val = s3 iv_shift = s4 ). s2 = s2 + s3. s2 = mem_ld_i32( s2 ). l3 = s2.
    ELSE.
    ENDIF.
    s2 = p2.
    IF s2 <> 0.
      s2 = l7. s3 = l5. s4 = 1. s3 = s3 + s4. l5 = s3.
      IF zcl_wasm_rt=>gt_u32( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
      IF s2 <> 0.
        s2 = l4. s3 = l5. s4 = 2. s3 = zcl_wasm_rt=>shl32( iv_val = s3 iv_shift = s4 ). s2 = s2 + s3. s2 = mem_ld_i32( s2 ).
      ELSE.
        s3 = 0.
      ENDIF.
      s4 = 1. s3 = zcl_wasm_rt=>shl32( iv_val = s3 iv_shift = s4 ). s4 = p2. s5 = 31. s4 = zcl_wasm_rt=>xor32( iv_a = s4 iv_b = s5 ). s3 = zcl_wasm_rt=>shl32( iv_val = s3 iv_shift = s4 ). s4 = l3. s5 = p2.
      s4 = zcl_wasm_rt=>shr_u32( iv_val = s4 iv_shift = s5 ). s3 = zcl_wasm_rt=>or32( iv_a = s3 iv_b = s4 ). l3 = s3.
    ELSE.
    ENDIF.
    s3 = 0. l5 = s3. s3 = l7. s4 = l6. s5 = 32. s4 = s4 + s5. s5 = 5. s4 = zcl_wasm_rt=>shr_s32( iv_val = s4 iv_shift = s5 ). l6 = s4.
    IF zcl_wasm_rt=>gt_u32( iv_a = s3 iv_b = s4 ) = abap_true. s3 = 1. ELSE. s3 = 0. ENDIF.
    IF s3 <> 0.
      s3 = l4. s4 = l6. s5 = 2. s4 = zcl_wasm_rt=>shl32( iv_val = s4 iv_shift = s5 ). s3 = s3 + s4. s3 = mem_ld_i32( s3 ). l5 = s3.
    ELSE.
    ENDIF.
    s3 = 0. s4 = l3. s4 = zcl_wasm_rt=>extend_u32( s4 ). s5 = p2.
    IF s5 <> 0.
      s5 = 0. l3 = s5. s5 = l7. s6 = l6. s7 = 1. s6 = s6 + s7. l6 = s6.
      IF zcl_wasm_rt=>gt_u32( iv_a = s5 iv_b = s6 ) = abap_true. s5 = 1. ELSE. s5 = 0. ENDIF.
      IF s5 <> 0.
        s5 = l4. s6 = l6. s7 = 2. s6 = zcl_wasm_rt=>shl32( iv_val = s6 iv_shift = s7 ). s5 = s5 + s6. s5 = mem_ld_i32( s5 ).
      ELSE.
        s6 = 0.
      ENDIF.
      s7 = 1. s6 = zcl_wasm_rt=>shl32( iv_val = s6 iv_shift = s7 ). s7 = p2. s8 = 31. s7 = zcl_wasm_rt=>xor32( iv_a = s7 iv_b = s8 ). s6 = zcl_wasm_rt=>shl32( iv_val = s6 iv_shift = s7 ). s7 = l5. s8 = p2.
      s7 = zcl_wasm_rt=>shr_u32( iv_val = s7 iv_shift = s8 ). s6 = zcl_wasm_rt=>or32( iv_a = s6 iv_b = s7 ).
    ELSE.
      s7 = l5.
    ENDIF.
    s7 = zcl_wasm_rt=>extend_u32( s7 ). s8 = 32. s7 = zcl_wasm_rt=>shl64( iv_val = s7 iv_shift = s8 ). s6 = zcl_wasm_rt=>or64( iv_a = s6 iv_b = s7 ). l8 = s6. s5 = s5 - s6. s6 = l8. s7 = p1. s7 = mem_ld_i32( s7 + 4 ).
    IF s7 <> 0. s5 = s5. ELSE. s5 = s6. ENDIF.
    l8 = s5. s5 = 0. l3 = s5.
  ENDDO.
  s5 = p0. s6 = l8. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s6 iv_addr = s5 + 0 CHANGING cv_mem = mv_mem ). s5 = l3. rv = s5.
ENDFORM.

FORM f371 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i CHANGING rv TYPE int8.
  DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE i. DATA l8 TYPE i. DATA l9 TYPE i. DATA l10 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i.
  DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i.
  DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i.
  DATA s35 TYPE i. DATA s36 TYPE i. DATA s37 TYPE i. DATA s38 TYPE i. DATA s39 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l5 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      s0 = p1. s1 = -4294967296.
      IF zcl_wasm_rt=>ge_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l8 = s0. s0 = mem_ld_i32_16u( s0 + 6 ). s1 = 21. s0 = s0 - s1. s1 = 65535. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = 11.
        IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      ELSE.
      ENDIF.
      s0 = l5. s1 = 1135229. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s1 = 1139205. s2 = l5. PERFORM f970 USING s0 s1 s2 CHANGING s0. s0 = 25769803776. p1 = s0. lv_br = 1. EXIT. " br 1
    ENDDO.
    s0 = l8. s1 = 32. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). s1 = 12. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). s1 = 32. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). s1 = 4. s0 = s0 + s1. s0 = mem_ld_i32_8u( s0 ).
    IF s0 <> 0.
      s0 = p0. s1 = 1148080. s2 = 0. PERFORM f970 USING s0 s1 s2 CHANGING s0. s0 = 25769803776. p1 = s0. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = l8. s1 = 40. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). l4 = s0. s1 = 0.
    IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = 25769803776. p1 = s0. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = p3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). l10 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
    IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = l10. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l6 = s0. s1 = l6. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
    ELSE.
    ENDIF.
    s0 = p0. s1 = l5. s2 = 12. s1 = s1 + s2. s2 = l10. PERFORM f684 USING s0 s1 s2 CHANGING s0.
    IF s0 <> 0.
      s0 = 25769803776. p1 = s0. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        s0 = l5. s0 = mem_ld_i32( s0 + 12 ). l9 = s0. s1 = 0.
        IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = l4. s1 = l9. s0 = s0 + s1. l6 = s0. s1 = 0. s2 = l6. s3 = 0.
          IF s2 > s3. s2 = 1. ELSE. s2 = 0. ENDIF.
          IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
          l7 = s0. lv_br = 1. EXIT. " br 1
        ELSE.
        ENDIF.
        s0 = l4. l7 = s0. s0 = l4. s1 = l9.
        IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      ENDDO.
      s0 = l7. l9 = s0.
    ENDDO.
    s0 = p3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 8 ). l10 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
    IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = l10. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l6 = s0. s1 = l6. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
    ELSE.
    ENDIF.
    s0 = p0. s1 = l5. s2 = 8. s1 = s1 + s2. s2 = l10. PERFORM f684 USING s0 s1 s2 CHANGING s0.
    IF s0 <> 0.
      s0 = 25769803776. p1 = s0. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        s0 = l5. s0 = mem_ld_i32( s0 + 8 ). l7 = s0. s1 = 0.
        IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = l4. s1 = l7. s0 = s0 + s1. l6 = s0. s1 = 0. s2 = l6. s3 = 0.
          IF s2 > s3. s2 = 1. ELSE. s2 = 0. ENDIF.
          IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
          l6 = s0. lv_br = 1. EXIT. " br 1
        ELSE.
        ENDIF.
        s0 = l4. l6 = s0. s0 = l4. s1 = l7.
        IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      ENDDO.
      s0 = l6. l7 = s0.
    ENDDO.
    s0 = l5. s1 = l4. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ).
    DO 1 TIMES. " block
      s0 = l4. s1 = p2. s2 = 3.
      IF s1 < s2. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. EXIT. ENDIF. " br_if 0
      s0 = l4. s1 = p3. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 16 ). l10 = s1. s2 = -4294967296. s1 = zcl_wasm_rt=>and64( iv_a = s1 iv_b = s2 ). s2 = 12884901888.
      IF s1 = s2. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p0. s1 = l5. s2 = 4. s1 = s1 + s2. s2 = l10. s3 = l4. s4 = l4. PERFORM f1015 USING s0 s1 s2 s3 s4 CHANGING s0.
      IF s0 <> 0.
        s0 = 25769803776. p1 = s0. lv_br = 2. EXIT. " br 2
      ELSE.
      ENDIF.
      s0 = l5. s0 = mem_ld_i32( s0 + 4 ).
    ENDDO.
    s1 = l7. s0 = s0 - s1. p3 = s0. s1 = l4. s2 = l9. s1 = s1 - s2. p2 = s1. s2 = p2. s3 = p3.
    IF s2 > s3. s2 = 1. ELSE. s2 = 0. ENDIF.
    IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
    p2 = s0. s1 = 0.
    IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = l8. s1 = 32. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). s1 = 12. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). s1 = 32. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). s1 = 4. s0 = s0 + s1. s0 = mem_ld_i32_8u( s0 ).
      IF s0 <> 0.
        s0 = p0. s1 = 1148080. s2 = 0. PERFORM f970 USING s0 s1 s2 CHANGING s0. s0 = 25769803776. p1 = s0. lv_br = 2. EXIT. " br 2
      ELSE.
      ENDIF.
      s0 = l8. s0 = mem_ld_i32( s0 + 36 ). p0 = s0. s1 = l9. s2 = l8. s2 = mem_ld_i32_16u( s2 + 6 ). s3 = 1182314. s2 = s2 + s3. s2 = mem_ld_i32_8u( s2 ). p3 = s2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s1 = p0.
      s2 = l7. s3 = p3. s2 = zcl_wasm_rt=>shl32( iv_val = s2 iv_shift = s3 ). s1 = s1 + s2. s2 = p2. s3 = p3. s2 = zcl_wasm_rt=>shl32( iv_val = s2 iv_shift = s3 ). PERFORM f157 USING s0 s1 s2 CHANGING s0.
    ELSE.
    ENDIF.
    s0 = l8. s1 = l8. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
  ENDDO.
  s0 = l5. s1 = 16. s0 = s0 + s1. gv_g0 = s0. s0 = p1. rv = s0.
ENDFORM.

FORM f372 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i p4 TYPE i CHANGING rv TYPE int8.
  DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE i. DATA l8 TYPE i. DATA l9 TYPE i. DATA l10 TYPE i. DATA l11 TYPE int8. DATA l12 TYPE int8. DATA l13 TYPE f. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i.
  DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i.
  DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i.
  DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i. DATA s36 TYPE i. DATA s37 TYPE i. DATA s38 TYPE i. DATA s39 TYPE i. DATA s40 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 96. s0 = s0 - s1. l5 = s0. gv_g0 = s0. s0 = 25769803776. l12 = s0.
  DO 1 TIMES. " block
    s0 = p0. s1 = p1. s2 = l5. s3 = 16. s2 = s2 + s3. l9 = s2. s3 = p4. s4 = 15. s3 = zcl_wasm_rt=>and32( iv_a = s3 iv_b = s4 ). l10 = s3. s4 = p4. s5 = 8. s4 = zcl_wasm_rt=>shr_u32( iv_val = s4 iv_shift = s5 ). s5 = 15.
    s4 = zcl_wasm_rt=>and32( iv_a = s4 iv_b = s5 ). l6 = s4.
    IF s4 = 0. s4 = 1. ELSE. s4 = 0. ENDIF.
    PERFORM f231 USING s0 s1 s2 s3 s4 CHANGING s0. l7 = s0. s1 = 0.
    IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p2. s1 = p4. s2 = 4. s1 = zcl_wasm_rt=>shr_u32( iv_val = s1 iv_shift = s2 ). s2 = 15. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). s2 = l6. s1 = s1 - s2. p4 = s1. s2 = p2. s3 = p4.
    IF s2 < s3. s2 = 1. ELSE. s2 = 0. ENDIF.
    IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
    p4 = s0. s1 = 0.
    IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = 0. s1 = p4. s0 = s0 - s1. l8 = s0. s0 = l6. s1 = 3. s0 = zcl_wasm_rt=>shl32( iv_val = s0 iv_shift = s1 ). s1 = l9. s0 = s0 + s1. p4 = s0.
      DO. " loop
        DO 1 TIMES. " block
          DO 1 TIMES. " block
            s0 = p3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). l11 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). l6 = s0. s1 = -11.
            IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0.
              s0 = l11. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l6 = s0. s1 = l6. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). lv_br = 1. EXIT. " br 1
            ELSE.
            ENDIF.
            s0 = l6. s1 = 2.
            IF zcl_wasm_rt=>le_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0.
              s0 = l5. s1 = l11. s1 = zcl_wasm_rt=>wrap_i64( s1 ). s1 = s1. " convert to f64 l13 = s1. zcl_wasm_rt=>mem_st_f64( EXPORTING iv_val = s1 iv_addr = s0 + 8 CHANGING cv_mem = mv_mem ). lv_br = 2. EXIT. " br 2
            ELSE.
            ENDIF.
            s0 = l6. s1 = 7. s0 = s0 - s1. s1 = -19.
            IF zcl_wasm_rt=>gt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. EXIT. ENDIF. " br_if 0
            s0 = l5. s1 = l11. s2 = 9221120288580698112. s1 = s1 + s2. l11 = s1. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 8 CHANGING cv_mem = mv_mem ). s0 = l11. s0 = zcl_wasm_rt=>reinterpret_i64_f64( s0 ). l13 = s0.
            lv_br = 1. EXIT. " br 1
          ENDDO.
          s0 = p0. s1 = l5. s2 = 8. s1 = s1 + s2. s2 = l11. PERFORM f801 USING s0 s1 s2 CHANGING s0.
          IF s0 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
          s0 = l5. s0 = zcl_wasm_rt=>mem_ld_f64( iv_mem = mv_mem iv_addr = s0 + 8 ). l13 = s0.
        ENDDO.
        s0 = p4. s1 = l13. s1 = trunc( s1 ). zcl_wasm_rt=>mem_st_f64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ). s0 = l7. s1 = 0. s2 = l13. s2 = abs( s2 ). l13 = s2. s3 = '+Inf'.
        IF s2 > s3. s2 = 1. ELSE. s2 = 0. ENDIF.
        s3 = l13. s4 = '+Inf'.
        IF s3 < s4. s3 = 1. ELSE. s3 = 0. ENDIF.
        s2 = zcl_wasm_rt=>or32( iv_a = s2 iv_b = s3 ).
        IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
        l7 = s0. s0 = p3. s1 = 8. s0 = s0 + s1. p3 = s0. s0 = p4. s1 = 8. s0 = s0 + s1. p4 = s0. s0 = l8. s1 = 1. s0 = s0 + s1. l8 = s0.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
      ENDDO.
    ELSE.
    ENDIF.
    s0 = 'NaN'. l13 = s0.
    DO 1 TIMES. " block
      s0 = p2. s1 = 0.
      IF s0 <= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = l7.
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = l5. s1 = 16. s0 = s0 + s1. s1 = l10. PERFORM f310 USING s0 s1 CHANGING s0. l13 = s0.
    ENDDO.
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          s0 = p1. s1 = -4294967296.
          IF zcl_wasm_rt=>lt_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p2 = s0. s0 = mem_ld_i32_16u( s0 + 6 ). s1 = 10.
          IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          DO 1 TIMES. " block
            s0 = p2. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 32 ). p1 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
            IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. EXIT. ENDIF. " br_if 0
            s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p3 = s0. s1 = p3. s1 = mem_ld_i32( s1 ). p3 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p3. s1 = 1.
            IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. EXIT. ENDIF. " br_if 0
            s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = p1. PERFORM f453 USING s0 s1.
          ENDDO.
          s0 = l13. s1 = '2147483647.000000'.
          IF s0 <= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          s1 = l13. s2 = '-2147483648.000000'.
          IF s1 >= s2. s1 = 1. ELSE. s1 = 0. ENDIF.
          s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
          IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0.
            s0 = l13. s0 = zcl_wasm_rt=>reinterpret_f64_i64( s0 ). p1 = s0. lv_br = 2. EXIT. " br 2
          ELSE.
          ENDIF.
          s0 = l13. s0 = zcl_wasm_rt=>reinterpret_f64_i64( s0 ). p1 = s0. s0 = p1.
          DO 1 TIMES. " block
            s1 = l13. s1 = abs( s1 ). s2 = '2147483648.000000'.
            IF s1 < s2. s1 = 1. ELSE. s1 = 0. ENDIF.
            IF s1 <> 0.
              s1 = l13. s1 = trunc( s1 ). lv_br = 1. EXIT. " br 1
            ELSE.
            ENDIF.
            s2 = -2147483648.
          ENDDO.
          p4 = s2. s2 = s2. " convert to f64 s2 = zcl_wasm_rt=>reinterpret_f64_i64( s2 ).
          IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
          IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          s1 = p4. s1 = zcl_wasm_rt=>extend_u32( s1 ). lv_br = 2. EXIT. " br 2
        ENDDO.
        s2 = p0. s3 = 1137574. s4 = 0. PERFORM f970 USING s2 s3 s4 CHANGING s2. lv_br = 2. EXIT. " br 2
      ENDDO.
      s2 = -51539607552. s3 = p1. s4 = 9221120288580698112. s3 = s3 - s4. s4 = p1. s5 = 9223372036854775807. s4 = zcl_wasm_rt=>and64( iv_a = s4 iv_b = s5 ). s5 = 9218868437227405312.
      IF zcl_wasm_rt=>gt_u64( iv_a = s4 iv_b = s5 ) = abap_true. s4 = 1. ELSE. s4 = 0. ENDIF.
      IF s4 <> 0. s2 = s2. ELSE. s2 = s3. ENDIF.
    ENDDO.
    l12 = s2. s2 = p2. s3 = l12. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s3 iv_addr = s2 + 32 CHANGING cv_mem = mv_mem ). s2 = l12. s3 = 32. s2 = zcl_wasm_rt=>shr_u64( iv_val = s2 iv_shift = s3 ). s2 = zcl_wasm_rt=>wrap_i64( s2 ).
    s3 = -11.
    IF zcl_wasm_rt=>lt_u32( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
    IF s2 <> 0. EXIT. ENDIF. " br_if 0
    s2 = l12. s2 = zcl_wasm_rt=>wrap_i64( s2 ). p0 = s2. s3 = p0. s3 = mem_ld_i32( s3 ). s4 = 1. s3 = s3 + s4. mem_st_i32( iv_addr = s2 iv_val = s3 ).
  ENDDO.
  s2 = l5. s3 = 96. s2 = s2 + s3. gv_g0 = s2. s2 = l12. rv = s2.
ENDFORM.

FORM f373 USING p0 TYPE i p1 TYPE i p2 TYPE i p3 TYPE i.
  DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE i. DATA l8 TYPE i. DATA l9 TYPE i. DATA l10 TYPE i. DATA l11 TYPE i. DATA l12 TYPE int8. DATA l13 TYPE int8. DATA l14 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i.
  DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i.
  DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i.
  DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i. DATA s36 TYPE i. DATA s37 TYPE i. DATA s38 TYPE i. DATA s39 TYPE i. DATA s40 TYPE i. DATA s41 TYPE i. DATA s42 TYPE i. DATA s43 TYPE i. DATA s44 TYPE i.
  DATA s45 TYPE i. DATA s46 TYPE i. DATA s47 TYPE i. DATA s48 TYPE i. DATA s49 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l5 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        s0 = p1. s0 = mem_ld_i32( s0 ). l10 = s0. s1 = p1. s1 = mem_ld_i32( s1 + 8 ). l4 = s1. s0 = s0 - s1. s1 = p3.
        IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = l4.
        IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = 0. l4 = s0. lv_br = 1. EXIT. " br 1
        ELSE.
        ENDIF.
        s0 = p1. s0 = mem_ld_i32( s0 + 4 ). l9 = s0.
        DO. " loop
          s0 = l5. s1 = l4. s2 = l7. s1 = s1 - s2. l6 = s1. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = l5. s1 = l7. s2 = l9. s1 = s1 + s2. l11 = s1. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ).
          DO 1 TIMES. " block
            DO 1 TIMES. " block
              DO 1 TIMES. " block
                DO 1 TIMES. " block
                  s0 = 1. s1 = l5. s2 = 4. s1 = s1 + s2. s2 = 1. s3 = l5. s4 = 12. s3 = s3 + s4.
                  " WASI fd_write: fd=s0 iovs=s1 iovs_len=s2 nwritten=s3
                  DATA lv_wasi_written TYPE i. DATA lv_wasi_iov_ptr TYPE i. DATA lv_wasi_iov_len TYPE i. DATA lv_wasi_str_ptr TYPE i. DATA lv_wasi_str_len TYPE i. lv_wasi_written = 0.
                  DO s2 TIMES.
                    lv_wasi_iov_ptr = s1 + ( sy-index - 1 ) * 8. PERFORM mem_ld_i32 USING lv_wasi_iov_ptr CHANGING lv_wasi_str_ptr. PERFORM mem_ld_i32 USING lv_wasi_iov_ptr + 4 CHANGING lv_wasi_str_len.
                    IF lv_wasi_str_len > 0.
                      DATA(lv_wasi_bytes) = gv_mem+lv_wasi_str_ptr(lv_wasi_str_len).
                      " Output bytes (could be WRITE or collect in buffer)
                    ENDIF.
                    lv_wasi_written = lv_wasi_written + lv_wasi_str_len.
                  ENDDO.
                  PERFORM mem_st_i32 USING s3 lv_wasi_written. s0 = 0. " errno = success l8 = s0.
                  IF s0 <> 0.
                    s0 = l6. s1 = l8. s2 = 65535. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). l8 = s1. s2 = 8.
                    IF s1 = s2. s1 = 1. ELSE. s1 = 0. ENDIF.
                    IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
                    s0 = p1. s1 = 0. mem_st_i32_8( iv_addr = s0 + 12 iv_val = s1 ). s0 = l8. s1 = 27.
                    IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                    IF s0 <> 0. lv_br = 4. EXIT. ENDIF. " br_if 4
                    s0 = l8. s0 = zcl_wasm_rt=>extend_u32( s0 ). s1 = 32. s0 = zcl_wasm_rt=>shl64( iv_val = s0 iv_shift = s1 ). lv_br = 2. EXIT. " br 2
                  ELSE.
                  ENDIF.
                  s1 = l5. s1 = mem_ld_i32( s1 + 12 ).
                ENDDO.
                l8 = s1. s1 = p1. s2 = 0. mem_st_i32_8( iv_addr = s1 + 12 iv_val = s2 ). s1 = l8.
                IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
                s1 = 4789799068106754.
              ENDDO.
              l12 = s1. s1 = l7.
              IF s1 <> 0.
                s1 = l9. s2 = l11. s3 = l6. PERFORM f157 USING s1 s2 s3 CHANGING s1. s1 = p1. s2 = l6. mem_st_i32( iv_addr = s1 + 8 iv_val = s2 ). s1 = l6. l4 = s1.
              ELSE.
              ENDIF.
              s1 = l12. s2 = 255. s1 = zcl_wasm_rt=>and64( iv_a = s1 iv_b = s2 ). s2 = 4.
              IF s1 = s2. s1 = 1. ELSE. s1 = 0. ENDIF.
              IF s1 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
              s1 = p0. s2 = l12. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s2 iv_addr = s1 + 0 CHANGING cv_mem = mv_mem ). lv_br = 4. EXIT. " br 4
            ENDDO.
            s1 = l7. s2 = l8. s1 = s1 + s2. l7 = s1.
          ENDDO.
          s1 = l4. s2 = l7.
          IF zcl_wasm_rt=>gt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
          IF s1 <> 0. EXIT. ENDIF. " br_if 0
        ENDDO.
        s1 = l4. s2 = l7.
        IF zcl_wasm_rt=>lt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
        s1 = 0. l4 = s1. s1 = p1. s2 = 0. mem_st_i32( iv_addr = s1 + 8 iv_val = s2 ).
      ENDDO.
      s1 = p3. s2 = l10.
      IF zcl_wasm_rt=>lt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0.
        s1 = p1. s1 = mem_ld_i32( s1 + 4 ). s2 = l4. s1 = s1 + s2. s2 = p2. s3 = p3. PERFORM f216 USING s1 s2 s3 CHANGING s1. s1 = p0. s2 = 4. mem_st_i32_8( iv_addr = s1 iv_val = s2 ). s1 = p1. s2 = p3. s3 = l4. s2 = s2 + s3.
        mem_st_i32( iv_addr = s1 + 8 iv_val = s2 ). lv_br = 1. EXIT. " br 1
      ELSE.
      ENDIF.
      s1 = 0. l12 = s1.
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          s1 = p3.
          IF s1 <> 0.
            DO. " loop
              s1 = l5. s2 = p3. mem_st_i32( iv_addr = s1 + 8 iv_val = s2 ). s1 = l5. s2 = p2. mem_st_i32( iv_addr = s1 + 4 iv_val = s2 ).
              DO 1 TIMES. " block
                DO 1 TIMES. " block
                  DO 1 TIMES. " block
                    s1 = 1. s2 = l5. s3 = 4. s2 = s2 + s3. s3 = 1. s4 = l5. s5 = 12. s4 = s4 + s5.
                    " WASI fd_write: fd=s1 iovs=s2 iovs_len=s3 nwritten=s4
                    DATA lv_wasi_written TYPE i. DATA lv_wasi_iov_ptr TYPE i. DATA lv_wasi_iov_len TYPE i. DATA lv_wasi_str_ptr TYPE i. DATA lv_wasi_str_len TYPE i. lv_wasi_written = 0.
                    DO s3 TIMES.
                      lv_wasi_iov_ptr = s2 + ( sy-index - 1 ) * 8. PERFORM mem_ld_i32 USING lv_wasi_iov_ptr CHANGING lv_wasi_str_ptr. PERFORM mem_ld_i32 USING lv_wasi_iov_ptr + 4 CHANGING lv_wasi_str_len.
                      IF lv_wasi_str_len > 0.
                        DATA(lv_wasi_bytes) = gv_mem+lv_wasi_str_ptr(lv_wasi_str_len).
                        " Output bytes (could be WRITE or collect in buffer)
                      ENDIF.
                      lv_wasi_written = lv_wasi_written + lv_wasi_str_len.
                    ENDDO.
                    PERFORM mem_st_i32 USING s4 lv_wasi_written. s1 = 0. " errno = success l6 = s1.
                    IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
                    IF s1 <> 0.
                      s1 = l5. s1 = mem_ld_i32( s1 + 12 ). l6 = s1.
                      IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
                      IF s1 <> 0.
                        s1 = 1116592. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 0 ). lv_br = 2. EXIT. " br 2
                      ELSE.
                      ENDIF.
                      s2 = p3. s3 = l6.
                      IF zcl_wasm_rt=>ge_u32( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
                      IF s2 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
                      s2 = l6. s3 = p3. s4 = 1116600. PERFORM f1044 USING s2 s3 s4.
                      RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
                    ELSE.
                    ENDIF.
                    s2 = l6. s3 = 65535. s2 = zcl_wasm_rt=>and32( iv_a = s2 iv_b = s3 ). l4 = s2. s3 = 27.
                    IF s2 = s3. s2 = 1. ELSE. s2 = 0. ENDIF.
                    IF s2 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
                    s2 = l4. s2 = zcl_wasm_rt=>extend_u32( s2 ). s3 = 32. s2 = zcl_wasm_rt=>shl64( iv_val = s2 iv_shift = s3 ).
                  ENDDO.
                  l14 = s2. s3 = 32. s2 = zcl_wasm_rt=>shr_u64( iv_val = s2 iv_shift = s3 ). l12 = s2. s2 = l14. s3 = -256. s2 = zcl_wasm_rt=>and64( iv_a = s2 iv_b = s3 ). l13 = s2. s3 = l14. s3 = zcl_wasm_rt=>wrap_i64( s3 ). s4 = 255.
                  s3 = zcl_wasm_rt=>and32( iv_a = s3 iv_b = s4 ). p2 = s3. s4 = 4.
                  IF s3 = s4. s3 = 1. ELSE. s3 = 0. ENDIF.
                  IF s3 <> 0. lv_br = 4. EXIT. ENDIF. " br_if 4
                  s2 = 4. s3 = l14. s4 = 255. s3 = zcl_wasm_rt=>and64( iv_a = s3 iv_b = s4 ). s4 = p2.
                  IF s4 = 0. s4 = 1. ELSE. s4 = 0. ENDIF.
                  s5 = l12. s6 = 8.
                  IF s5 = s6. s5 = 1. ELSE. s5 = 0. ENDIF.
                  s4 = zcl_wasm_rt=>and32( iv_a = s4 iv_b = s5 ). p2 = s4.
                  IF s4 <> 0. s2 = s2. ELSE. s2 = s3. ENDIF.
                  l12 = s2. s2 = 0. s3 = l13. s4 = p2.
                  IF s4 <> 0. s2 = s2. ELSE. s2 = s3. ENDIF.
                  l13 = s2. lv_br = 5. EXIT. " br 5
                ENDDO.
                s2 = p2. s3 = l6. s2 = s2 + s3. p2 = s2. s2 = p3. s3 = l6. s2 = s2 - s3. p3 = s2.
              ENDDO.
              s2 = p3.
              IF s2 <> 0. EXIT. ENDIF. " br_if 0
            ENDDO.
          ELSE.
          ENDIF.
          s2 = 0.
        ENDDO.
        s3 = 4294967040. s2 = zcl_wasm_rt=>and64( iv_a = s2 iv_b = s3 ). s3 = l12. s4 = 32. s3 = zcl_wasm_rt=>shl64( iv_val = s3 iv_shift = s4 ). s2 = zcl_wasm_rt=>or64( iv_a = s2 iv_b = s3 ). l13 = s2. s2 = 4. l12 = s2.
      ENDDO.
      s2 = p1. s3 = 0. mem_st_i32_8( iv_addr = s2 + 12 iv_val = s3 ). s2 = p0. s3 = l12. s4 = l13. s3 = zcl_wasm_rt=>or64( iv_a = s3 iv_b = s4 ). zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s3 iv_addr = s2 + 0 CHANGING cv_mem = mv_mem ).
    ENDDO.
    s2 = l5. s3 = 16. s2 = s2 + s3. gv_g0 = s2.
    RETURN.
  ENDDO.
  s2 = l7. s3 = l4. s4 = 1114364. PERFORM f1045 USING s2 s3 s4.
  RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
ENDFORM.

FORM f374 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE i. DATA l8 TYPE i. DATA l9 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i.
  DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i.
  DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i.
  DATA lv_br TYPE i. s0 = p1. s1 = 2. s0 = zcl_wasm_rt=>shl32( iv_val = s0 iv_shift = s1 ). s1 = 1176816. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). l2 = s0. s1 = p1. s2 = 1. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s2 = 1177024.
  s1 = s1 + s2. s1 = mem_ld_i32_16u( s1 ). s0 = s0 + s1. l9 = s0. s0 = 0. p1 = s0.
  DO. " loop
    s0 = l2. s1 = 1. s0 = s0 + s1. l3 = s0.
    DO 1 TIMES. " block
      s0 = l2. s0 = mem_ld_i32_8u( s0 ). l7 = s0. s1 = 63.
      IF zcl_wasm_rt=>le_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = l4. s1 = l7. s2 = 3. s1 = zcl_wasm_rt=>shr_u32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s1 = 1. s0 = s0 + s1. l8 = s0. s0 = p1.
        IF s0 <> 0.
          DO 1 TIMES. " block
            s0 = p0. s0 = mem_ld_i32( s0 ). l2 = s0. s1 = 2. s0 = s0 + s1. l6 = s0. s1 = p0. s1 = mem_ld_i32( s1 + 4 ). l5 = s1.
            IF s0 <= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0.
              s0 = p0. s0 = mem_ld_i32( s0 + 8 ). l5 = s0. lv_br = 1. EXIT. " br 1
            ELSE.
            ENDIF.
            s0 = p0. s0 = mem_ld_i32( s0 + 12 ). s1 = p0. s1 = mem_ld_i32( s1 + 8 ). s2 = l6. s3 = l5. s4 = 3. s3 = s3 * s4. s4 = 2. s3 = s3 / s4. l2 = s3. s4 = l2. s5 = l6.
            IF s4 < s5. s4 = 1. ELSE. s4 = 0. ENDIF.
            IF s4 <> 0. s2 = s2. ELSE. s2 = s3. ENDIF.
            l2 = s2. s3 = 2. s2 = zcl_wasm_rt=>shl32( iv_val = s2 iv_shift = s3 ). s3 = p0. s3 = mem_ld_i32( s3 + 16 ).
            DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
            s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). l5 = s0.
            IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0.
              s0 = -1. rv = s0. RETURN.
            ELSE.
            ENDIF.
            s0 = p0. s1 = l2. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = p0. s1 = l5. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = p0. s0 = mem_ld_i32( s0 ). l2 = s0.
          ENDDO.
          s0 = p0. s1 = l2. s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l5. s1 = l2. s2 = 2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s1 = l4. mem_st_i32( iv_addr = s0 iv_val = s1 ).
          s0 = p0. s1 = p0. s1 = mem_ld_i32( s1 ). l4 = s1. s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l5. s1 = l4. s2 = 2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s1 = l8.
          mem_st_i32( iv_addr = s0 iv_val = s1 ).
        ELSE.
        ENDIF.
        s0 = p1. s1 = 1. s0 = zcl_wasm_rt=>xor32( iv_a = s0 iv_b = s1 ). p1 = s0. s0 = l7. s1 = 7. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = l8. s0 = s0 + s1. s1 = 1. s0 = s0 + s1. l5 = s0. s0 = l3. lv_br = 1. EXIT. " br 1
      ELSE.
      ENDIF.
      s1 = l4. l8 = s1.
      DO 1 TIMES. " block
        s1 = l7. s1 = zcl_wasm_rt=>extend8s_i32( s1 ). s2 = 0.
        IF s1 < s2. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0.
          s1 = l4. s2 = l7. s1 = s1 + s2. s2 = 127. s1 = s1 - s2. l5 = s1. s1 = l3. lv_br = 1. EXIT. " br 1
        ELSE.
        ENDIF.
        s2 = l3. s2 = mem_ld_i32_8u( s2 ). l3 = s2. s2 = l7. s3 = 95.
        IF zcl_wasm_rt=>le_u32( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
        IF s2 <> 0.
          s2 = l4. s3 = l7. s4 = 8. s3 = zcl_wasm_rt=>shl32( iv_val = s3 iv_shift = s4 ). s2 = s2 + s3. s3 = l3. s2 = s2 + s3. s3 = 16383. s2 = s2 - s3. l5 = s2. s2 = l2. s3 = 2. s2 = s2 + s3. lv_br = 1. EXIT. " br 1
        ELSE.
        ENDIF.
        s3 = l2. s3 = mem_ld_i32_8u( s3 + 2 ). s4 = l4. s5 = l7. s6 = 16. s5 = zcl_wasm_rt=>shl32( iv_val = s5 iv_shift = s6 ). s4 = s4 + s5. s5 = l3. s6 = 8. s5 = zcl_wasm_rt=>shl32( iv_val = s5 iv_shift = s6 ). s4 = s4 + s5. s3 = s3 + s4.
        s4 = 6291455. s3 = s3 - s4. l5 = s3. s3 = l2. s4 = 3. s3 = s3 + s4.
      ENDDO.
    ENDDO.
    l2 = s3. s3 = p1.
    IF s3 <> 0.
      DO 1 TIMES. " block
        s3 = p0. s3 = mem_ld_i32( s3 ). l4 = s3. s4 = 2. s3 = s3 + s4. l6 = s3. s4 = p0. s4 = mem_ld_i32( s4 + 4 ). l3 = s4.
        IF s3 <= s4. s3 = 1. ELSE. s3 = 0. ENDIF.
        IF s3 <> 0.
          s3 = p0. s3 = mem_ld_i32( s3 + 8 ). l6 = s3. lv_br = 1. EXIT. " br 1
        ELSE.
        ENDIF.
        s3 = p0. s3 = mem_ld_i32( s3 + 12 ). s4 = p0. s4 = mem_ld_i32( s4 + 8 ). s5 = l6. s6 = l3. s7 = 3. s6 = s6 * s7. s7 = 2. s6 = s6 / s7. l3 = s6. s7 = l3. s8 = l6.
        IF s7 < s8. s7 = 1. ELSE. s7 = 0. ENDIF.
        IF s7 <> 0. s5 = s5. ELSE. s5 = s6. ENDIF.
        l3 = s5. s6 = 2. s5 = zcl_wasm_rt=>shl32( iv_val = s5 iv_shift = s6 ). s6 = p0. s6 = mem_ld_i32( s6 + 16 ).
        DATA(lv_ci_func) = mt_tab0[ s6 + 1 ]. " call_indirect
        s3 = dispatch_t11( iv_idx = lv_ci_func p0 = s3 p1 = s4 p2 = s5 ). l6 = s3.
        IF s3 = 0. s3 = 1. ELSE. s3 = 0. ENDIF.
        IF s3 <> 0.
          s3 = -1. rv = s3. RETURN.
        ELSE.
        ENDIF.
        s3 = p0. s4 = l3. mem_st_i32( iv_addr = s3 + 4 iv_val = s4 ). s3 = p0. s4 = l6. mem_st_i32( iv_addr = s3 + 8 iv_val = s4 ). s3 = p0. s3 = mem_ld_i32( s3 ). l4 = s3.
      ENDDO.
      s3 = p0. s4 = l4. s5 = 1. s4 = s4 + s5. mem_st_i32( iv_addr = s3 iv_val = s4 ). s3 = l6. s4 = l4. s5 = 2. s4 = zcl_wasm_rt=>shl32( iv_val = s4 iv_shift = s5 ). s3 = s3 + s4. s4 = l8. mem_st_i32( iv_addr = s3 iv_val = s4 ). s3 = p0.
      s4 = p0. s4 = mem_ld_i32( s4 ). l3 = s4. s5 = 1. s4 = s4 + s5. mem_st_i32( iv_addr = s3 iv_val = s4 ). s3 = l6. s4 = l3. s5 = 2. s4 = zcl_wasm_rt=>shl32( iv_val = s4 iv_shift = s5 ). s3 = s3 + s4. s4 = l5.
      mem_st_i32( iv_addr = s3 iv_val = s4 ).
    ELSE.
    ENDIF.
    s3 = p1. s4 = 1. s3 = zcl_wasm_rt=>xor32( iv_a = s3 iv_b = s4 ). p1 = s3. s3 = l5. l4 = s3. s3 = l2. s4 = l9.
    IF zcl_wasm_rt=>lt_u32( iv_a = s3 iv_b = s4 ) = abap_true. s3 = 1. ELSE. s3 = 0. ENDIF.
    IF s3 <> 0. EXIT. ENDIF. " br_if 0
  ENDDO.
  s3 = 0. rv = s3.
ENDFORM.

FORM f375 USING p0 TYPE i CHANGING rv TYPE i.
  DATA l1 TYPE i. DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i.
  DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i.
  DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i. DATA s36 TYPE i. DATA s37 TYPE i.
  DATA lv_br TYPE i. s0 = gv_g0. s1 = 32. s0 = s0 - s1. l3 = s0. gv_g0 = s0. s0 = 1. l1 = s0.
  DO 1 TIMES. " block
    s0 = p0. PERFORM f307 USING s0 CHANGING s0. l4 = s0. s1 = 255. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = 2.
    IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          s0 = p0. s0 = mem_ld_i32( s0 ). l2 = s0.
          IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = p0. s0 = mem_ld_i32( s0 + 8 ). l1 = s0. s1 = p0. s1 = mem_ld_i32( s1 + 4 ).
          IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = l1. s1 = l2. s0 = s0 + s1. s0 = mem_ld_i32_8u( s0 ). s1 = 112.
          IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = p0. s1 = l1. s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = p0. s0 = mem_ld_i32( s0 + 16 ). l2 = s0.
          DO 1 TIMES. " block
            s0 = l4. s1 = 255. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
            IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0.
              s0 = l2.
              IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
              s0 = 1. l1 = s0. s0 = l2. s1 = 1079707. s2 = 1. PERFORM f244 USING s0 s1 s2 CHANGING s0.
              IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
              lv_br = 5. EXIT. " br 5
            ELSE.
            ENDIF.
            s0 = l2.
            IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. EXIT. ENDIF. " br_if 0
            s0 = 1. l1 = s0. s0 = l2. s1 = 1080445. s2 = 2. PERFORM f244 USING s0 s1 s2 CHANGING s0.
            IF s0 <> 0. lv_br = 4. EXIT. ENDIF. " br_if 4
          ENDDO.
          DO 1 TIMES. " block
            DO 1 TIMES. " block
              s0 = p0. s0 = mem_ld_i32( s0 ).
              IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0. EXIT. ENDIF. " br_if 0
              s0 = l3. s1 = p0. PERFORM f281 USING s0 s1. s0 = l3. s0 = mem_ld_i32( s0 ).
              IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
              s0 = l3. s1 = l3.
              RAISE EXCEPTION TYPE cx_sy_program_error. " SIMD not supported
              RAISE EXCEPTION TYPE cx_sy_program_error. " SIMD not supported
              DO 1 TIMES. " block
                s2 = p0. s2 = mem_ld_i32( s2 + 16 ). l2 = s2.
                IF s2 = 0. s2 = 1. ELSE. s2 = 0. ENDIF.
                IF s2 <> 0. EXIT. ENDIF. " br_if 0
                s2 = 1. l1 = s2. s2 = l3. s3 = 16. s2 = s2 + s3. s3 = l2. PERFORM f139 USING s2 s3 CHANGING s2.
                IF s2 <> 0. lv_br = 6. EXIT. ENDIF. " br_if 6
                s2 = p0. s2 = mem_ld_i32( s2 + 16 ). l2 = s2.
                IF s2 = 0. s2 = 1. ELSE. s2 = 0. ENDIF.
                IF s2 <> 0. EXIT. ENDIF. " br_if 0
                s2 = l2. s3 = 1080529. s4 = 3. PERFORM f244 USING s2 s3 s4 CHANGING s2.
                IF s2 <> 0. lv_br = 6. EXIT. ENDIF. " br_if 6
              ENDDO.
              s2 = 1. l1 = s2. s2 = p0. PERFORM f32 USING s2 CHANGING s2.
              IF s2 <> 0. lv_br = 5. EXIT. ENDIF. " br_if 5
              DO. " loop
                s2 = p0. s2 = mem_ld_i32( s2 ). l2 = s2.
                IF s2 = 0. s2 = 1. ELSE. s2 = 0. ENDIF.
                IF s2 <> 0. lv_br = 4. EXIT. ENDIF. " br_if 4
                s2 = p0. s2 = mem_ld_i32( s2 + 8 ). l1 = s2. s3 = p0. s3 = mem_ld_i32( s3 + 4 ).
                IF zcl_wasm_rt=>ge_u32( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
                IF s2 <> 0. lv_br = 4. EXIT. ENDIF. " br_if 4
                s2 = l1. s3 = l2. s2 = s2 + s3. s2 = mem_ld_i32_8u( s2 ). s3 = 112.
                IF s2 <> s3. s2 = 1. ELSE. s2 = 0. ENDIF.
                IF s2 <> 0. lv_br = 4. EXIT. ENDIF. " br_if 4
                s2 = p0. s3 = l1. s4 = 1. s3 = s3 + s4. mem_st_i32( iv_addr = s2 + 8 iv_val = s3 ). s2 = p0. s2 = mem_ld_i32( s2 + 16 ). l1 = s2.
                IF s2 <> 0.
                  s2 = l1. s3 = 1080445. s4 = 2. PERFORM f244 USING s2 s3 s4 CHANGING s2.
                  IF s2 <> 0.
                    s2 = 1. l1 = s2. lv_br = 8. EXIT. " br 8
                  ELSE.
                  ENDIF.
                  s2 = p0. s2 = mem_ld_i32( s2 ).
                  IF s2 = 0. s2 = 1. ELSE. s2 = 0. ENDIF.
                  IF s2 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
                ELSE.
                ENDIF.
                s2 = l3. s3 = p0. PERFORM f281 USING s2 s3. s2 = l3. s2 = mem_ld_i32( s2 ).
                IF s2 = 0. s2 = 1. ELSE. s2 = 0. ENDIF.
                IF s2 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
                s2 = l3. s3 = l3.
                RAISE EXCEPTION TYPE cx_sy_program_error. " SIMD not supported
                RAISE EXCEPTION TYPE cx_sy_program_error. " SIMD not supported
                DO 1 TIMES. " block
                  s4 = p0. s4 = mem_ld_i32( s4 + 16 ). l2 = s4.
                  IF s4 = 0. s4 = 1. ELSE. s4 = 0. ENDIF.
                  IF s4 <> 0. EXIT. ENDIF. " br_if 0
                  s4 = 1. l1 = s4. s4 = l3. s5 = 16. s4 = s4 + s5. s5 = l2. PERFORM f139 USING s4 s5 CHANGING s4.
                  IF s4 <> 0. lv_br = 7. EXIT. ENDIF. " br_if 7
                  s4 = p0. s4 = mem_ld_i32( s4 + 16 ). l2 = s4.
                  IF s4 = 0. s4 = 1. ELSE. s4 = 0. ENDIF.
                  IF s4 <> 0. EXIT. ENDIF. " br_if 0
                  s4 = l2. s5 = 1080529. s6 = 3. PERFORM f244 USING s4 s5 s6 CHANGING s4.
                  IF s4 <> 0. lv_br = 7. EXIT. ENDIF. " br_if 7
                ENDDO.
                s4 = 1. l1 = s4. s4 = p0. PERFORM f32 USING s4 CHANGING s4.
                IF s4 = 0. s4 = 1. ELSE. s4 = 0. ENDIF.
                IF s4 <> 0. EXIT. ENDIF. " br_if 0
              ENDDO.
              lv_br = 5. EXIT. " br 5
            ENDDO.
            s4 = p0. s4 = mem_ld_i32( s4 + 16 ). p0 = s4.
            IF s4 = 0. s4 = 1. ELSE. s4 = 0. ENDIF.
            IF s4 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
            s4 = p0. s5 = 1080437. s6 = 1. PERFORM f244 USING s4 s5 s6 CHANGING s4. l1 = s4. lv_br = 4. EXIT. " br 4
          ENDDO.
          s4 = p0. s4 = mem_ld_i32( s4 + 16 ). l2 = s4.
          DO 1 TIMES. " block
            s4 = l3. s4 = mem_ld_i32_8u( s4 + 4 ). l4 = s4.
            IF s4 <> 0.
              s4 = l2.
              IF s4 = 0. s4 = 1. ELSE. s4 = 0. ENDIF.
              IF s4 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
              s4 = 1. l1 = s4. s4 = l2. s5 = 1080412. s6 = 25. PERFORM f244 USING s4 s5 s6 CHANGING s4.
              IF s4 <> 0. lv_br = 5. EXIT. ENDIF. " br_if 5
              lv_br = 1. EXIT. " br 1
            ELSE.
            ENDIF.
            s4 = l2.
            IF s4 = 0. s4 = 1. ELSE. s4 = 0. ENDIF.
            IF s4 <> 0. EXIT. ENDIF. " br_if 0
            s4 = 1. l1 = s4. s4 = l2. s5 = 1080396. s6 = 16. PERFORM f244 USING s4 s5 s6 CHANGING s4.
            IF s4 <> 0. lv_br = 4. EXIT. ENDIF. " br_if 4
          ENDDO.
          s4 = p0. s5 = l4. mem_st_i32_8( iv_addr = s4 + 4 iv_val = s5 ). s4 = 0. l1 = s4. s4 = p0. s5 = 0. mem_st_i32( iv_addr = s4 iv_val = s5 ). lv_br = 3. EXIT. " br 3
        ENDDO.
        s4 = l4. s5 = 255. s4 = zcl_wasm_rt=>and32( iv_a = s4 iv_b = s5 ).
        IF s4 = 0. s4 = 1. ELSE. s4 = 0. ENDIF.
        IF s4 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      ENDDO.
      s4 = p0. s4 = mem_ld_i32( s4 + 16 ). p0 = s4.
      IF s4 = 0. s4 = 1. ELSE. s4 = 0. ENDIF.
      IF s4 <> 0. EXIT. ENDIF. " br_if 0
      s4 = 1. l1 = s4. s4 = p0. s5 = 1079706. s6 = 1. PERFORM f244 USING s4 s5 s6 CHANGING s4.
      IF s4 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
    ENDDO.
    s4 = 0. l1 = s4.
  ENDDO.
  s4 = l3. s5 = 32. s4 = s4 + s5. gv_g0 = s4. s4 = l1. rv = s4.
ENDFORM.

FORM f376 USING p0 TYPE i p1 TYPE i p2 TYPE i CHANGING rv TYPE i.
  DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE i. DATA l8 TYPE i. DATA l9 TYPE i. DATA l10 TYPE i. DATA l11 TYPE i. DATA l12 TYPE i. DATA l13 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i.
  DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i.
  DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA lv_br TYPE i. s0 = p0. s0 = mem_ld_i32( s0 ). l5 = s0.
  s0 = gv_g0. s1 = 16. s0 = s0 - s1. l8 = s0. s1 = p2. s2 = 4. s1 = s1 + s2. l3 = s1. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = -1. l9 = s0.
  DO 1 TIMES. " block
    s0 = p2. s0 = mem_ld_i32( s0 ). l6 = s0. s1 = -1.
    IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p0. s0 = mem_ld_i32( s0 + 4 ). l10 = s0.
      DO. " loop
        s0 = p2. l7 = s0. s0 = l3. p2 = s0. s0 = l10. s1 = p1. l3 = s1.
        IF s0 <= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
        DO. " loop
          s0 = l3. s1 = l3. s2 = l5. s1 = s1 + s2. l12 = s1. s1 = mem_ld_i32_8u( s1 ). l4 = s1. s2 = 2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). l13 = s1. s2 = 1184560. s1 = s1 + s2. s1 = mem_ld_i32_8u( s1 ). s0 = s0 + s1.
          p1 = s0. s1 = l10.
          IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
          s0 = l4. s1 = 200.
          IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0.
            s0 = l12. s0 = mem_ld_i32( s0 + 1 ). l9 = s0. s0 = l10. s1 = p1. l3 = s1.
            IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
            lv_br = 4. EXIT. " br 4
          ELSE.
          ENDIF.
        ENDDO.
        s0 = l4. s1 = l6.
        IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = l6. s1 = 256.
          IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
          s0 = l4.
          IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
          DO 1 TIMES. " block
            s0 = l4. s1 = l6. s2 = 255. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ).
            IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. EXIT. ENDIF. " br_if 0
            s0 = l4. s1 = l6. s2 = 8. s1 = zcl_wasm_rt=>shr_u32( iv_val = s1 iv_shift = s2 ). s2 = 255. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ).
            IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. EXIT. ENDIF. " br_if 0
            s0 = l4. s1 = l6. s2 = 16. s1 = zcl_wasm_rt=>shr_u32( iv_val = s1 iv_shift = s2 ). s2 = 255. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ).
            IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. EXIT. ENDIF. " br_if 0
            s0 = l6. s1 = 24. s0 = zcl_wasm_rt=>shr_u32( iv_val = s0 iv_shift = s1 ). s1 = l4.
            IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. lv_br = 4. EXIT. ENDIF. " br_if 4
          ENDDO.
          s0 = p0. s1 = l4. mem_st_i32( iv_addr = s0 + 16 iv_val = s1 ).
        ELSE.
        ENDIF.
        s0 = l3. s1 = 1. s0 = s0 + s1. l3 = s0.
        DO 1 TIMES. " block
          DO 1 TIMES. " block
            DO 1 TIMES. " block
              DO 1 TIMES. " block
                DO 1 TIMES. " block
                  DO 1 TIMES. " block
                    DO 1 TIMES. " block
                      DO 1 TIMES. " block
                        DO 1 TIMES. " block
                          s0 = l13. s1 = 1184563. s0 = s0 + s1. s0 = mem_ld_i32_8u( s0 ). s1 = 5. s0 = s0 - s1.
                          CASE s0.
                            WHEN 0. EXIT.
                            WHEN 1. lv_br = 8. EXIT.
                            WHEN 2. EXIT.
                            WHEN 3. lv_br = 8. EXIT.
                            WHEN 4. lv_br = 8. EXIT.
                            WHEN 5. lv_br = 1. EXIT.
                            WHEN 6. lv_br = 8. EXIT.
                            WHEN 7. lv_br = 8. EXIT.
                            WHEN 8. lv_br = 1. EXIT.
                            WHEN 9. lv_br = 8. EXIT.
                            WHEN 10. lv_br = 8. EXIT.
                            WHEN 11. lv_br = 1. EXIT.
                            WHEN 12. lv_br = 1. EXIT.
                            WHEN 13. lv_br = 1. EXIT.
                            WHEN 14. lv_br = 2. EXIT.
                            WHEN 15. lv_br = 2. EXIT.
                            WHEN 16. lv_br = 2. EXIT.
                            WHEN 17. lv_br = 2. EXIT.
                            WHEN 18. lv_br = 4. EXIT.
                            WHEN 19. lv_br = 5. EXIT.
                            WHEN 20. lv_br = 6. EXIT.
                            WHEN 21. lv_br = 7. EXIT.
                            WHEN 22. lv_br = 8. EXIT.
                            WHEN 23. lv_br = 3. EXIT.
                            WHEN OTHERS. lv_br = 8. EXIT.
                          ENDCASE.
                        ENDDO.
                        s0 = l3. s1 = l5. s0 = s0 + s1. s0 = mem_ld_i32_8u( s0 ). l4 = s0. s0 = l8. s1 = l7. s2 = 8. s1 = s1 + s2. l3 = s1. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = p2. s0 = mem_ld_i32( s0 ). l7 = s0. s1 = -1.
                        IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                        IF s0 <> 0.
                          s0 = p0. s1 = l4. mem_st_i32( iv_addr = s0 + 20 iv_val = s1 ). s0 = l3. p2 = s0. lv_br = 8. EXIT. " br 8
                        ELSE.
                        ENDIF.
                        s0 = l3. p2 = s0. s0 = l4. s1 = l7.
                        IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                        IF s0 <> 0. lv_br = 7. EXIT. ENDIF. " br_if 7
                        lv_br = 10. EXIT. " br 10
                      ENDDO.
                      s0 = l3. s1 = l5. s0 = s0 + s1. s0 = mem_ld_i32_16u( s0 ). l4 = s0. s0 = l8. s1 = l7. s2 = 8. s1 = s1 + s2. l3 = s1. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = p2. s0 = mem_ld_i32( s0 ). l7 = s0. s1 = -1.
                      IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                      IF s0 <> 0.
                        s0 = p0. s1 = l4. mem_st_i32( iv_addr = s0 + 20 iv_val = s1 ). s0 = l3. p2 = s0. lv_br = 7. EXIT. " br 7
                      ELSE.
                      ENDIF.
                      s0 = l3. p2 = s0. s0 = l4. s1 = l7.
                      IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                      IF s0 <> 0. lv_br = 6. EXIT. ENDIF. " br_if 6
                      lv_br = 9. EXIT. " br 9
                    ENDDO.
                    s0 = p0. s1 = l3. s2 = l5. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). mem_st_i32( iv_addr = s0 + 24 iv_val = s1 ). lv_br = 5. EXIT. " br 5
                  ENDDO.
                  s0 = p0. s1 = l3. s2 = l5. s1 = s1 + s2. l3 = s1. s1 = mem_ld_i32( s1 ). mem_st_i32( iv_addr = s0 + 24 iv_val = s1 ). s0 = p0. s1 = l3. s1 = mem_ld_i32_16u( s1 + 4 ). mem_st_i32( iv_addr = s0 + 28 iv_val = s1 ).
                  lv_br = 4. EXIT. " br 4
                ENDDO.
                s0 = p0. s1 = l3. s2 = l5. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). mem_st_i32( iv_addr = s0 + 32 iv_val = s1 ). lv_br = 3. EXIT. " br 3
              ENDDO.
              s0 = p0. s1 = l3. s2 = l5. s1 = s1 + s2. l3 = s1. s1 = mem_ld_i32( s1 ). mem_st_i32( iv_addr = s0 + 32 iv_val = s1 ). s0 = p0. s1 = l3. s1 = mem_ld_i32_8u( s1 + 4 ). mem_st_i32( iv_addr = s0 + 28 iv_val = s1 ).
              lv_br = 2. EXIT. " br 2
            ENDDO.
            s0 = p0. s1 = l3. s2 = l5. s1 = s1 + s2. l3 = s1. s1 = mem_ld_i32( s1 ). mem_st_i32( iv_addr = s0 + 32 iv_val = s1 ). s0 = p0. s1 = l3. s1 = mem_ld_i32_16u( s1 + 4 ). mem_st_i32( iv_addr = s0 + 28 iv_val = s1 ).
            lv_br = 1. EXIT. " br 1
          ENDDO.
          s0 = p0. s1 = l3. s2 = l5. s1 = s1 + s2. l3 = s1. s1 = mem_ld_i32( s1 ). mem_st_i32( iv_addr = s0 + 32 iv_val = s1 ). s0 = p0. s1 = l3. s1 = mem_ld_i32( s1 + 4 ). mem_st_i32( iv_addr = s0 + 24 iv_val = s1 ). s0 = p0. s1 = l3.
          s1 = mem_ld_i32_8u( s1 + 8 ). mem_st_i32( iv_addr = s0 + 28 iv_val = s1 ).
        ENDDO.
        s0 = l8. s1 = p2. s2 = 4. s1 = s1 + s2. l3 = s1. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = p2. s0 = mem_ld_i32( s0 ). l6 = s0. s1 = -1.
        IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
      ENDDO.
    ELSE.
    ENDIF.
    s0 = p0. s1 = l9. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = p0. s1 = p1. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = 1. l11 = s0.
  ENDDO.
  s0 = l11. rv = s0.
ENDFORM.

FORM f377 USING p0 TYPE i p1 TYPE i.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE i. DATA l8 TYPE i. DATA l9 TYPE i. DATA l10 TYPE int8. DATA l11 TYPE int8. DATA l12 TYPE int8. DATA l13 TYPE int8. DATA s0 TYPE i.
  DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i.
  DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i.
  DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i. DATA s36 TYPE i. DATA s37 TYPE i. DATA s38 TYPE i. DATA s39 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    s0 = p0. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). l10 = s0. s1 = 67908586878892801. s0 = s0 - s1. s1 = -135817173789408001.
    IF zcl_wasm_rt=>ge_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p1. s1 = 32. s0 = s0 + s1. s1 = 0. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = 0. s1 = 0. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p1. s1 = 40. s0 = s0 + s1. s1 = 1214624. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p1.
      s1 = 36. s0 = s0 + s1. s1 = 0. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = 0. p0 = s0. s0 = -1. l5 = s0.
      DO 1 TIMES. " block
        s0 = l10. s1 = p1. s1 = zcl_wasm_rt=>mem_ld_i64_ext( iv_mem = mv_mem iv_addr = s1 + 36 iv_op = 52 ). s0 = s0 + s1. l10 = s0. s1 = 67908586878892801. s0 = s0 - s1. s1 = -135817173789408001.
        IF zcl_wasm_rt=>lt_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = l10. s1 = 951868800. s0 = s0 - s1. l10 = s0. s1 = l10. s2 = 86400. s1 = s1 / s2. l10 = s1. s2 = 86400. s1 = s1 * s2. s0 = s0 - s1. l12 = s0. s1 = 31. s0 = zcl_wasm_rt=>shr_s64( iv_val = s0 iv_shift = s1 ). s1 = l10.
        s0 = s0 + s1. l10 = s0. s1 = l10. s2 = 146097. s1 = s1 / s2. l11 = s1. s2 = 146097. s1 = s1 * s2. s0 = s0 - s1. l13 = s0. s1 = 31. s0 = zcl_wasm_rt=>shr_s64( iv_val = s0 iv_shift = s1 ). s1 = l11. s0 = s0 + s1. s1 = 400.
        s0 = s0 * s1. s1 = 24. s2 = 3. s3 = l13. s3 = zcl_wasm_rt=>wrap_i64( s3 ). l2 = s3. s4 = 146097. s3 = s3 + s4. s4 = l2. s5 = l2. s6 = 0.
        IF s5 < s6. s5 = 1. ELSE. s5 = 0. ENDIF.
        IF s5 <> 0. s3 = s3. ELSE. s3 = s4. ENDIF.
        l2 = s3. s4 = 36524. s3 = zcl_wasm_rt=>div_u32( iv_a = s3 iv_b = s4 ). s4 = l2. s5 = 146096. s4 = s4 - s5. s5 = 36524.
        IF zcl_wasm_rt=>lt_u32( iv_a = s4 iv_b = s5 ) = abap_true. s4 = 1. ELSE. s4 = 0. ENDIF.
        IF s4 <> 0. s2 = s2. ELSE. s2 = s3. ENDIF.
        l6 = s2. s3 = -36524. s2 = s2 * s3. s3 = l2. s2 = s2 + s3. l2 = s2. s3 = 1461. s2 = s2 / s3. s3 = l2. s4 = 36525. s3 = s3 - s4. s4 = 1461.
        IF zcl_wasm_rt=>lt_u32( iv_a = s3 iv_b = s4 ) = abap_true. s3 = 1. ELSE. s3 = 0. ENDIF.
        IF s3 <> 0. s1 = s1. ELSE. s1 = s2. ENDIF.
        l7 = s1. s2 = 2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s2 = l6. s3 = 100. s2 = s2 * s3. s1 = s1 + s2. s2 = 3. s3 = l7. s4 = -1461. s3 = s3 * s4. s4 = l2. s3 = s3 + s4. l2 = s3. s4 = 365. s3 = s3 / s4. s4 = l2.
        s5 = 1460. s4 = s4 - s5. s5 = 365.
        IF zcl_wasm_rt=>lt_u32( iv_a = s4 iv_b = s5 ) = abap_true. s4 = 1. ELSE. s4 = 0. ENDIF.
        IF s4 <> 0. s2 = s2. ELSE. s2 = s3. ENDIF.
        l8 = s2. s1 = s1 + s2. s1 = s1. " i64.extend_i32_s (noop in ABAP - sign preserved) s0 = s0 + s1. s1 = 31. l3 = s1. s1 = l8. s2 = -365. s1 = s1 * s2. s2 = l2. s1 = s1 + s2. l2 = s1. l4 = s1. s1 = l2. s2 = 31.
        IF s1 >= s2. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0.
          DO. " loop
            s1 = p0. s2 = 1214629. s1 = s1 + s2. l9 = s1. s1 = p0. s2 = 1. s1 = s1 + s2. p0 = s1. s1 = l4. s2 = l3. s1 = s1 - s2. l4 = s1. s2 = l9. s2 = mem_ld_i32_8s( s2 ). l3 = s2.
            IF s1 >= s2. s1 = 1. ELSE. s1 = 0. ENDIF.
            IF s1 <> 0. EXIT. ENDIF. " br_if 0
          ENDDO.
        ELSE.
        ENDIF.
        s1 = p0. s2 = 9.
        IF zcl_wasm_rt=>gt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
        l3 = s1. s1 = zcl_wasm_rt=>extend_u32( s1 ). s0 = s0 + s1. l11 = s0. s1 = 2147483548. s0 = s0 - s1. s1 = -4294967296.
        IF zcl_wasm_rt=>lt_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = p1. s1 = l2. s2 = l8.
        IF s2 = 0. s2 = 1. ELSE. s2 = 0. ENDIF.
        s3 = l6.
        IF s3 = 0. s3 = 1. ELSE. s3 = 0. ENDIF.
        s4 = l7. s5 = 0.
        IF s4 <> s5. s4 = 1. ELSE. s4 = 0. ENDIF.
        s3 = zcl_wasm_rt=>or32( iv_a = s3 iv_b = s4 ). s2 = zcl_wasm_rt=>and32( iv_a = s2 iv_b = s3 ). s1 = s1 + s2. s2 = 59. s1 = s1 + s2. s2 = l2. s3 = 306. s2 = s2 - s3. s3 = l2. s4 = 306.
        IF s3 < s4. s3 = 1. ELSE. s3 = 0. ENDIF.
        IF s3 <> 0. s1 = s1. ELSE. s1 = s2. ENDIF.
        mem_st_i32( iv_addr = s0 + 28 iv_val = s1 ). s0 = p1. s1 = l10. s2 = 3. s1 = s1 + s2. s2 = 7. s1 = s1 MOD s2. s1 = zcl_wasm_rt=>wrap_i64( s1 ). l2 = s1. s2 = 7. s1 = s1 + s2. s2 = l2. s3 = l2. s4 = 0.
        IF s3 < s4. s3 = 1. ELSE. s3 = 0. ENDIF.
        IF s3 <> 0. s1 = s1. ELSE. s1 = s2. ENDIF.
        mem_st_i32( iv_addr = s0 + 24 iv_val = s1 ). s0 = p1. s1 = l4. s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = p1. s1 = l12. s1 = zcl_wasm_rt=>wrap_i64( s1 ). l2 = s1. s2 = 86400. s1 = s1 + s2. s2 = l2.
        s3 = l2. s4 = 0.
        IF s3 < s4. s3 = 1. ELSE. s3 = 0. ENDIF.
        IF s3 <> 0. s1 = s1. ELSE. s1 = s2. ENDIF.
        l2 = s1. s2 = 3600. s1 = zcl_wasm_rt=>div_u32( iv_a = s1 iv_b = s2 ). mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = p1. s1 = l11. s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = 100. s1 = s1 + s2.
        mem_st_i32( iv_addr = s0 + 20 iv_val = s1 ). s0 = p1. s1 = p0. s2 = 12. s1 = s1 - s2. s2 = p0. s3 = l3.
        IF s3 <> 0. s1 = s1. ELSE. s1 = s2. ENDIF.
        s2 = 2. s1 = s1 + s2. mem_st_i32( iv_addr = s0 + 16 iv_val = s1 ). s0 = p1. s1 = l2. s2 = 60. s1 = zcl_wasm_rt=>div_u32( iv_a = s1 iv_b = s2 ). p0 = s1. s2 = 60. s1 = zcl_wasm_rt=>rem_u32( iv_a = s1 iv_b = s2 ).
        mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = p1. s1 = l2. s2 = p0. s3 = 60. s2 = s2 * s3. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = 0. l5 = s0.
      ENDDO.
      s0 = l5. s1 = 0.
      IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
    ELSE.
    ENDIF.
    s0 = 1215576. s1 = 61. mem_st_i32( iv_addr = s0 iv_val = s1 ).
  ENDDO.
ENDFORM.

FORM f378 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i CHANGING rv TYPE int8.
  DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE int8. DATA l8 TYPE int8. DATA l9 TYPE int8. DATA l10 TYPE f. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i.
  DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i.
  DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i.
  DATA s35 TYPE i. DATA s36 TYPE i. DATA s37 TYPE i. DATA s38 TYPE i. DATA s39 TYPE i. DATA s40 TYPE i. DATA s41 TYPE i. DATA s42 TYPE i. DATA s43 TYPE i. DATA s44 TYPE i. DATA s45 TYPE i. DATA s46 TYPE i. DATA s47 TYPE i. DATA s48 TYPE i.
  DATA s49 TYPE i. DATA s50 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. p2 = s0. gv_g0 = s0. s0 = p0. s1 = p1. PERFORM f151 USING s0 s1 CHANGING s0. p1 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ).
  s0 = zcl_wasm_rt=>wrap_i64( s0 ). l5 = s0. s1 = -11.
  IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p3 = s0. s1 = p3. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
  ELSE.
  ENDIF.
  s0 = 25769803776. l9 = s0.
  DO 1 TIMES. " block
    s0 = p0. s1 = p1. s2 = 1. PERFORM f237 USING s0 s1 s2 CHANGING s0. l7 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 25769803776.
    IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l7. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). p3 = s0. s1 = 11. s0 = s0 + s1. l4 = s0.
    DO 1 TIMES. " block
      s0 = p3. s1 = 0. s2 = l4. s3 = 18.
      IF zcl_wasm_rt=>lt_u32( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
      IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      DO 1 TIMES. " block
        s0 = l7. s0 = zcl_wasm_rt=>wrap_i64( s0 ). s0 = s0. " convert to f64 s1 = p3. s2 = 2.
        IF zcl_wasm_rt=>le_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0. EXIT. ENDIF. " br_if 0
        s0 = l7. s1 = 9221120288580698112. s0 = s0 + s1. s0 = zcl_wasm_rt=>reinterpret_i64_f64( s0 ). s1 = l4. s2 = 18.
        IF zcl_wasm_rt=>ge_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0. EXIT. ENDIF. " br_if 0
        s0 = p0. s1 = p2. s2 = 8. s1 = s1 + s2. s2 = l7. PERFORM f801 USING s0 s1 s2 CHANGING s0. s1 = 0.
        IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
        s0 = p2. s0 = zcl_wasm_rt=>mem_ld_f64( iv_mem = mv_mem iv_addr = s0 + 8 ).
      ENDDO.
      s0 = abs( s0 ). l10 = s0. s1 = '+Inf'.
      IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      s1 = l10. s2 = '+Inf'.
      IF s1 < s2. s1 = 1. ELSE. s1 = 0. ENDIF.
      s0 = zcl_wasm_rt=>or32( iv_a = s0 iv_b = s1 ).
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = 8589934592. l9 = s0. lv_br = 1. EXIT. " br 1
    ENDDO.
    s0 = p0. s1 = p1. s2 = p0. s3 = 1143797. s4 = 11. PERFORM f417 USING s2 s3 s4 CHANGING s2. p3 = s2. s3 = p1. s4 = 0. PERFORM f192 USING s0 s1 s2 s3 s4 CHANGING s0. l8 = s0.
    DO 1 TIMES. " block
      s0 = p3. s1 = 228.
      IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p0. s0 = mem_ld_i32( s0 + 16 ). l4 = s0. s0 = mem_ld_i32( s0 + 56 ). s1 = p3. s2 = 2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s0 = mem_ld_i32( s0 ). p3 = s0. s1 = p3. s1 = mem_ld_i32( s1 ). l6 = s1.
      s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l6. s1 = 1.
      IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = l4. s1 = p3. PERFORM f713 USING s0 s1.
    ENDDO.
    s0 = l8. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 25769803776.
    IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        s0 = l8. s1 = -4294967296.
        IF zcl_wasm_rt=>ge_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = l8. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p3 = s0. s0 = mem_ld_i32_16u( s0 + 6 ). l4 = s0. s1 = 13.
          IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          DO 1 TIMES. " block
            s0 = l4. s1 = 48.
            IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0.
              s0 = p3. s0 = mem_ld_i32( s0 + 32 ). s0 = mem_ld_i32_8u( s0 + 16 ). lv_br = 1. EXIT. " br 1
            ELSE.
            ENDIF.
            s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s1 = mem_ld_i32( s1 + 68 ). s2 = l4. s3 = 24. s2 = s2 * s3. s1 = s1 + s2. s1 = mem_ld_i32( s1 + 16 ).
          ENDDO.
          IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        ELSE.
        ENDIF.
        s1 = p0. s2 = 1146663. s3 = 0. PERFORM f970 USING s1 s2 s3 CHANGING s1. s1 = l8. s2 = 32. s1 = zcl_wasm_rt=>shr_u64( iv_val = s1 iv_shift = s2 ). s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = -11.
        IF zcl_wasm_rt=>lt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
        s1 = l8. s1 = zcl_wasm_rt=>wrap_i64( s1 ). p3 = s1. s2 = p3. s2 = mem_ld_i32( s2 ). p3 = s2. s3 = 1. s2 = s2 - s3. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = p3. s2 = 2.
        IF s1 < s2. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        lv_br = 2. EXIT. " br 2
      ENDDO.
      s1 = p0. s2 = l8. s3 = p1. s4 = 12884901888. s5 = 0. s6 = 0. s7 = 2. PERFORM f0 USING s1 s2 s3 s4 s5 s6 s7 CHANGING s1. l9 = s1. s1 = p3. s2 = p3. s2 = mem_ld_i32( s2 ). p3 = s2. s3 = 1. s2 = s2 - s3.
      mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = p3. s2 = 1.
      IF s1 > s2. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
    ENDDO.
    s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s2 = l8. PERFORM f453 USING s1 s2.
  ENDDO.
  DO 1 TIMES. " block
    s1 = l5. s2 = -11.
    IF zcl_wasm_rt=>lt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
    IF s1 <> 0. EXIT. ENDIF. " br_if 0
    s1 = p1. s1 = zcl_wasm_rt=>wrap_i64( s1 ). p3 = s1. s2 = p3. s2 = mem_ld_i32( s2 ). p3 = s2. s3 = 1. s2 = s2 - s3. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = p3. s2 = 1.
    IF s1 > s2. s1 = 1. ELSE. s1 = 0. ENDIF.
    IF s1 <> 0. EXIT. ENDIF. " br_if 0
    s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s2 = p1. PERFORM f453 USING s1 s2.
  ENDDO.
  DO 1 TIMES. " block
    s1 = l7. s2 = 32. s1 = zcl_wasm_rt=>shr_u64( iv_val = s1 iv_shift = s2 ). s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = -11.
    IF zcl_wasm_rt=>lt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
    IF s1 <> 0. EXIT. ENDIF. " br_if 0
    s1 = l7. s1 = zcl_wasm_rt=>wrap_i64( s1 ). p3 = s1. s2 = p3. s2 = mem_ld_i32( s2 ). p3 = s2. s3 = 1. s2 = s2 - s3. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = p3. s2 = 1.
    IF s1 > s2. s1 = 1. ELSE. s1 = 0. ENDIF.
    IF s1 <> 0. EXIT. ENDIF. " br_if 0
    s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s2 = l7. PERFORM f453 USING s1 s2.
  ENDDO.
  s1 = p2. s2 = 16. s1 = s1 + s2. gv_g0 = s1. s1 = l9. rv = s1.
ENDFORM.

FORM f379 USING p0 TYPE f CHANGING rv TYPE f.
  DATA l1 TYPE i. DATA l2 TYPE int8. DATA l3 TYPE f. DATA l4 TYPE f. DATA l5 TYPE f. DATA l6 TYPE f. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i.
  DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i.
  DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i.
  DATA s36 TYPE i. DATA s37 TYPE i. DATA s38 TYPE i. DATA s39 TYPE i. DATA s40 TYPE i. DATA s41 TYPE i. DATA s42 TYPE i. DATA s43 TYPE i. DATA s44 TYPE i. DATA s45 TYPE i. DATA s46 TYPE i. DATA s47 TYPE i. DATA s48 TYPE i. DATA s49 TYPE i.
  DATA s50 TYPE i. DATA s51 TYPE i. DATA s52 TYPE i. DATA s53 TYPE i. DATA s54 TYPE i. DATA s55 TYPE i. DATA s56 TYPE i. DATA s57 TYPE i. DATA s58 TYPE i. DATA s59 TYPE i. DATA s60 TYPE i. DATA s61 TYPE i. DATA s62 TYPE i. DATA s63 TYPE i.
  DATA s64 TYPE i. DATA s65 TYPE i. DATA s66 TYPE i. DATA s67 TYPE i. DATA s68 TYPE i. DATA s69 TYPE i. DATA s70 TYPE i. DATA s71 TYPE i. DATA s72 TYPE i. DATA s73 TYPE i. DATA s74 TYPE i. DATA s75 TYPE i. DATA s76 TYPE i. DATA s77 TYPE i.
  DATA s78 TYPE i. DATA s79 TYPE i. DATA s80 TYPE i. DATA s81 TYPE i. DATA s82 TYPE i. DATA s83 TYPE i. DATA s84 TYPE i. DATA s85 TYPE i. DATA s86 TYPE i. DATA s87 TYPE i. DATA s88 TYPE i. DATA s89 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          DO 1 TIMES. " block
            s0 = p0. s0 = zcl_wasm_rt=>reinterpret_f64_i64( s0 ). l2 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = 2147483647. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
            l1 = s0. s1 = 1078159482.
            IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0.
              s0 = p0. s1 = p0.
              IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0. lv_br = 5. EXIT. ENDIF. " br_if 5
              s0 = l2. s1 = 0.
              IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0.
                s0 = '-1.000000'. rv = s0. RETURN.
              ELSE.
              ENDIF.
              s0 = p0. s1 = '709.782713'.
              IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
              s0 = p0.
              s1 = '89884656743115795386465259539451236680898848947115328636715040578866337902750481566354238661203768010560056939935696678829394884407208311246423715319737062188883946712432742638151109800623047059726541476042502884419075341171231440736956555270413618581675255342293149119973622969239858152417678164812112068608.000000'.
              s0 = s0 * s1. rv = s0. RETURN.
            ELSE.
            ENDIF.
            s0 = l1. s1 = 1071001155.
            IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
            s0 = l1. s1 = 1072734897.
            IF zcl_wasm_rt=>gt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. EXIT. ENDIF. " br_if 0
            s0 = l2. s1 = 0.
            IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0.
              s0 = 1. l1 = s0. s0 = '0.000000'. l3 = s0. s0 = p0. s1 = '-0.693147'. s0 = s0 + s1. lv_br = 2. EXIT. " br 2
            ELSE.
            ENDIF.
            s1 = -1. l1 = s1. s1 = '-0.000000'. l3 = s1. s1 = p0. s2 = '0.693147'. s1 = s1 + s2. lv_br = 1. EXIT. " br 1
          ENDDO.
          DO 1 TIMES. " block
            s2 = p0. s3 = '1.442695'. s2 = s2 * s3. s3 = '0.500000'. s4 = p0. s3 = zcl_wasm_rt=>copysign( iv_mag = s3 iv_sign = s4 ). s2 = s2 + s3. l3 = s2. s2 = abs( s2 ). s3 = '2147483648.000000'.
            IF s2 < s3. s2 = 1. ELSE. s2 = 0. ENDIF.
            IF s2 <> 0.
              s2 = l3. s2 = trunc( s2 ). lv_br = 1. EXIT. " br 1
            ELSE.
            ENDIF.
            s3 = -2147483648.
          ENDDO.
          l1 = s3. s3 = s3. " convert to f64 l4 = s3. s4 = '0.000000'. s3 = s3 * s4. l3 = s3. s3 = p0. s4 = l4. s5 = '-0.693147'. s4 = s4 * s5. s3 = s3 + s4.
        ENDDO.
        p0 = s3. s4 = p0. s5 = l3. s4 = s4 - s5. p0 = s4. s3 = s3 - s4. s4 = l3. s3 = s3 - s4. l3 = s3. lv_br = 1. EXIT. " br 1
      ENDDO.
      s3 = l1. s4 = 1016070144.
      IF zcl_wasm_rt=>lt_u32( iv_a = s3 iv_b = s4 ) = abap_true. s3 = 1. ELSE. s3 = 0. ENDIF.
      IF s3 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s3 = 0. l1 = s3.
    ENDDO.
    s3 = p0. s4 = p0. s5 = '0.500000'. s4 = s4 * s5. l5 = s4. s3 = s3 * s4. l4 = s3. s4 = l4. s5 = l4. s6 = l4. s7 = l4. s8 = l4. s9 = '-0.000000'. s8 = s8 * s9. s9 = '0.000004'. s8 = s8 + s9. s7 = s7 * s8. s8 = '-0.000079'. s7 = s7 + s8.
    s6 = s6 * s7. s7 = '0.001587'. s6 = s6 + s7. s5 = s5 * s6. s6 = '-0.033333'. s5 = s5 + s6. s4 = s4 * s5. s5 = '1.000000'. s4 = s4 + s5. l6 = s4. s5 = '3.000000'. s6 = l6. s7 = l5. s6 = s6 * s7. s5 = s5 - s6. l5 = s5. s4 = s4 - s5.
    s5 = '6.000000'. s6 = p0. s7 = l5. s6 = s6 * s7. s5 = s5 - s6. s4 = s4 / s5. s3 = s3 * s4. l5 = s3. s3 = l1.
    IF s3 = 0. s3 = 1. ELSE. s3 = 0. ENDIF.
    IF s3 <> 0.
      s3 = p0. s4 = p0. s5 = l5. s4 = s4 * s5. s5 = l4. s4 = s4 - s5. s3 = s3 - s4. rv = s3. RETURN.
    ELSE.
    ENDIF.
    s3 = p0. s4 = l5. s5 = l3. s4 = s4 - s5. s3 = s3 * s4. s4 = l3. s3 = s3 - s4. s4 = l4. s3 = s3 - s4. l3 = s3.
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          s3 = l1. s4 = 1. s3 = s3 + s4.
          CASE s3.
            WHEN 0. EXIT.
            WHEN 1. lv_br = 2. EXIT.
            WHEN 2. lv_br = 1. EXIT.
            WHEN OTHERS. lv_br = 2. EXIT.
          ENDCASE.
        ENDDO.
        s3 = p0. s4 = l3. s3 = s3 - s4. s4 = '0.500000'. s3 = s3 * s4. s4 = '-0.500000'. s3 = s3 + s4. rv = s3. RETURN.
      ENDDO.
      s3 = p0. s4 = '-0.250000'.
      IF s3 < s4. s3 = 1. ELSE. s3 = 0. ENDIF.
      IF s3 <> 0.
        s3 = l3. s4 = p0. s5 = '0.500000'. s4 = s4 + s5. s3 = s3 - s4. s4 = '-2.000000'. s3 = s3 * s4. rv = s3. RETURN.
      ELSE.
      ENDIF.
      s3 = p0. s4 = l3. s3 = s3 - s4. p0 = s3. s4 = p0. s3 = s3 + s4. s4 = '1.000000'. s3 = s3 + s4. rv = s3. RETURN.
    ENDDO.
    s3 = l1. s4 = 1023. s3 = s3 + s4. s3 = zcl_wasm_rt=>extend_u32( s3 ). s4 = 52. s3 = zcl_wasm_rt=>shl64( iv_val = s3 iv_shift = s4 ). s3 = zcl_wasm_rt=>reinterpret_i64_f64( s3 ). l4 = s3. s3 = l1. s4 = 57.
    IF zcl_wasm_rt=>ge_u32( iv_a = s3 iv_b = s4 ) = abap_true. s3 = 1. ELSE. s3 = 0. ENDIF.
    IF s3 <> 0.
      s3 = p0. s4 = l3. s3 = s3 - s4. s4 = '1.000000'. s3 = s3 + s4. p0 = s3. s4 = p0. s3 = s3 + s4.
      s4 = '89884656743115795386465259539451236680898848947115328636715040578866337902750481566354238661203768010560056939935696678829394884407208311246423715319737062188883946712432742638151109800623047059726541476042502884419075341171231440736956555270413618581675255342293149119973622969239858152417678164812112068608.000000'.
      s3 = s3 * s4. s4 = p0. s5 = l4. s4 = s4 * s5. s5 = l1. s6 = 1024.
      IF s5 = s6. s5 = 1. ELSE. s5 = 0. ENDIF.
      IF s5 <> 0. s3 = s3. ELSE. s3 = s4. ENDIF.
      s4 = '-1.000000'. s3 = s3 + s4. rv = s3. RETURN.
    ELSE.
    ENDIF.
    s3 = l1. s4 = 1023. s3 = zcl_wasm_rt=>xor32( iv_a = s3 iv_b = s4 ). s3 = zcl_wasm_rt=>extend_u32( s3 ). s4 = 52. s3 = zcl_wasm_rt=>shl64( iv_val = s3 iv_shift = s4 ). s3 = zcl_wasm_rt=>reinterpret_i64_f64( s3 ). l5 = s3. s3 = l1.
    s4 = 19.
    IF zcl_wasm_rt=>le_u32( iv_a = s3 iv_b = s4 ) = abap_true. s3 = 1. ELSE. s3 = 0. ENDIF.
    IF s3 <> 0.
      s3 = '1.000000'. s4 = l5. s3 = s3 - s4. s4 = p0. s5 = l3. s4 = s4 - s5. s3 = s3 + s4.
    ELSE.
      s4 = p0. s5 = l3. s6 = l5. s5 = s5 + s6. s4 = s4 - s5. s5 = '1.000000'. s4 = s4 + s5.
    ENDIF.
    s5 = l4. s4 = s4 * s5. p0 = s4.
  ENDDO.
  s4 = p0. rv = s4.
ENDFORM.

FORM f380 USING p0 TYPE i p1 TYPE i p2 TYPE i p3 TYPE i p4 TYPE i p5 TYPE i CHANGING rv TYPE i.
  DATA l6 TYPE i. DATA l7 TYPE i. DATA l8 TYPE i. DATA l9 TYPE i. DATA l10 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i.
  DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i.
  DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16.
  s0 = s0 - s1. l9 = s0. gv_g0 = s0. s0 = p5. s1 = 4. s0 = s0 + s1. l10 = s0. s0 = p5. s0 = mem_ld_i32( s0 + 8 ). l7 = s0.
  DO 1 TIMES. " block
    DO. " loop
      s0 = p1. s1 = 0. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p2. s1 = 0. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l7. s1 = 0.
      IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = p5. s0 = mem_ld_i32( s0 ). l6 = s0. s0 = l7. l8 = s0.
        DO. " loop
          DO 1 TIMES. " block
            s0 = l6. s0 = mem_ld_i32( s0 ). s1 = p3.
            IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. EXIT. ENDIF. " br_if 0
            s0 = l6. s1 = 4. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). s1 = p4.
            IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. EXIT. ENDIF. " br_if 0
            s0 = 2. l7 = s0. lv_br = 4. EXIT. " br 4
          ENDDO.
          s0 = l6. s1 = 8. s0 = s0 + s1. l6 = s0. s0 = l8. s1 = 1. s0 = s0 - s1. l8 = s0.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
        ENDDO.
      ELSE.
      ENDIF.
      s0 = p5. s1 = l7. s2 = l10. s2 = mem_ld_i32( s2 ).
      IF s1 < s2. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0.
        s1 = l7.
      ELSE.
        s2 = p0. s3 = p5. s4 = 8. s5 = l10. s6 = l7. s7 = 1. s6 = s6 + s7. PERFORM f845 USING s2 s3 s4 s5 s6 CHANGING s2.
        IF s2 <> 0.
          s2 = -1. l7 = s2. lv_br = 3. EXIT. " br 3
        ELSE.
        ENDIF.
        s2 = p5. s2 = mem_ld_i32( s2 + 8 ).
      ENDIF.
      l6 = s2. s3 = 1. s2 = s2 + s3. l7 = s2. mem_st_i32( iv_addr = s1 + 8 iv_val = s2 ). s1 = p5. s1 = mem_ld_i32( s1 ). s2 = l6. s3 = 3. s2 = zcl_wasm_rt=>shl32( iv_val = s2 iv_shift = s3 ). s1 = s1 + s2. l6 = s1. s2 = p3.
      mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = p4. s2 = 228.
      IF s1 >= s2. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0.
        s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s1 = mem_ld_i32( s1 + 56 ). s2 = p4. s3 = 2. s2 = zcl_wasm_rt=>shl32( iv_val = s2 iv_shift = s3 ). s1 = s1 + s2. s1 = mem_ld_i32( s1 ). l8 = s1. s2 = l8. s2 = mem_ld_i32( s2 ). s3 = 1.
        s2 = s2 + s3. mem_st_i32( iv_addr = s1 iv_val = s2 ).
      ELSE.
      ENDIF.
      s1 = l6. s2 = p4. mem_st_i32( iv_addr = s1 + 4 iv_val = s2 ).
      DO 1 TIMES. " block
        s1 = p3. s1 = mem_ld_i32( s1 + 32 ). l8 = s1. s2 = 0.
        IF s1 > s2. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0.
          s1 = p3. s1 = mem_ld_i32( s1 + 28 ). l6 = s1.
          DO. " loop
            s1 = l6. s2 = 16. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). s2 = p4.
            IF s1 = s2. s1 = 1. ELSE. s1 = 0. ENDIF.
            IF s1 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
            s1 = l6. s2 = 20. s1 = s1 + s2. l6 = s1. s1 = l8. s2 = 1. s1 = s1 - s2. l8 = s1.
            IF s1 <> 0. EXIT. ENDIF. " br_if 0
          ENDDO.
        ELSE.
        ENDIF.
        s1 = p4. s2 = 22.
        IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0.
          s1 = p3. s1 = mem_ld_i32( s1 + 44 ). s2 = 0.
          IF s1 > s2. s1 = 1. ELSE. s1 = 0. ENDIF.
          IF s1 <> 0.
            s1 = 0. l6 = s1. s1 = 0. l8 = s1.
            DO. " loop
              DO 1 TIMES. " block
                DO 1 TIMES. " block
                  s1 = p0. s2 = l9. s3 = 12. s2 = s2 + s3. s3 = l9. s4 = 8. s3 = s3 + s4. s4 = p3. s4 = mem_ld_i32( s4 + 16 ). s5 = p3. s5 = mem_ld_i32( s5 + 40 ). s6 = l6. s5 = s5 + s6. s5 = mem_ld_i32( s5 ). s6 = 3.
                  s5 = zcl_wasm_rt=>shl32( iv_val = s5 iv_shift = s6 ). s4 = s4 + s5. s4 = mem_ld_i32( s4 + 4 ). s5 = p4. s6 = p5. PERFORM f380 USING s1 s2 s3 s4 s5 s6 CHANGING s1. l7 = s1. s2 = 1. s1 = s1 + s2.
                  CASE s1.
                    WHEN 0. lv_br = 7. EXIT.
                    WHEN 1. EXIT.
                    WHEN 2. lv_br = 1. EXIT.
                    WHEN 3. lv_br = 1. EXIT.
                    WHEN 4. lv_br = 7. EXIT.
                    WHEN OTHERS. lv_br = 1. EXIT.
                  ENDCASE.
                ENDDO.
                s1 = p2. s1 = mem_ld_i32( s1 ). l7 = s1.
                IF s1 <> 0.
                  s1 = p1. s1 = mem_ld_i32( s1 ). s2 = l9. s2 = mem_ld_i32( s2 + 12 ).
                  IF s1 = s2. s1 = 1. ELSE. s1 = 0. ENDIF.
                  IF s1 <> 0.
                    s1 = l9. s1 = mem_ld_i32( s1 + 8 ). s1 = mem_ld_i32( s1 + 12 ). s2 = l7. s2 = mem_ld_i32( s2 + 12 ).
                    IF s1 = s2. s1 = 1. ELSE. s1 = 0. ENDIF.
                    IF s1 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
                  ELSE.
                  ENDIF.
                  s1 = p1. s2 = 0. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = p2. s2 = 0. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = 3. l7 = s1. lv_br = 7. EXIT. " br 7
                ELSE.
                ENDIF.
                s1 = p1. s2 = l9. s2 = mem_ld_i32( s2 + 12 ). mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = p2. s2 = l9. s2 = mem_ld_i32( s2 + 8 ). mem_st_i32( iv_addr = s1 iv_val = s2 ).
              ENDDO.
              s1 = l6. s2 = 4. s1 = s1 + s2. l6 = s1. s1 = l8. s2 = 1. s1 = s1 + s2. l8 = s1. s2 = p3. s2 = mem_ld_i32( s2 + 44 ).
              IF s1 < s2. s1 = 1. ELSE. s1 = 0. ENDIF.
              IF s1 <> 0. EXIT. ENDIF. " br_if 0
            ENDDO.
          ELSE.
          ENDIF.
          s1 = 0. l7 = s1. s1 = p2. s1 = mem_ld_i32( s1 ).
          IF s1 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
        ELSE.
        ENDIF.
        s1 = 1. l7 = s1. lv_br = 2. EXIT. " br 2
      ENDDO.
      DO 1 TIMES. " block
        s1 = l6. s2 = 8. s1 = s1 + s2. s1 = mem_ld_i32( s1 ).
        IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0. EXIT. ENDIF. " br_if 0
        s1 = l6. s2 = 12. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). p4 = s1. s2 = 127.
        IF s1 = s2. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0. EXIT. ENDIF. " br_if 0
        s1 = p3. s1 = mem_ld_i32( s1 + 16 ). s2 = l6. s2 = mem_ld_i32( s2 ). s3 = 3. s2 = zcl_wasm_rt=>shl32( iv_val = s2 iv_shift = s3 ). s1 = s1 + s2. s1 = mem_ld_i32( s1 + 4 ). p3 = s1. lv_br = 1. EXIT. " br 1
      ENDDO.
    ENDDO.
    s1 = p1. s2 = p3. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = p2. s2 = l6. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = 0. l7 = s1.
  ENDDO.
  s1 = l9. s2 = 16. s1 = s1 + s2. gv_g0 = s1. s1 = l7. rv = s1.
ENDFORM.

FORM f381 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i CHANGING rv TYPE int8.
  DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE int8. DATA l7 TYPE int8. DATA l8 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i.
  DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i.
  DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i. DATA s36 TYPE i.
  DATA s37 TYPE i. DATA s38 TYPE i. DATA s39 TYPE i. DATA s40 TYPE i. DATA s41 TYPE i. DATA s42 TYPE i. DATA s43 TYPE i. DATA s44 TYPE i. DATA s45 TYPE i. DATA s46 TYPE i. DATA s47 TYPE i. DATA s48 TYPE i. DATA s49 TYPE i. DATA s50 TYPE i.
  DATA s51 TYPE i. DATA s52 TYPE i. DATA s53 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 32. s0 = s0 - s1. p2 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      s0 = p0. s1 = p0. s2 = p1. PERFORM f151 USING s1 s2 CHANGING s1. p1 = s1. s2 = 48. s3 = p1. s4 = 0. PERFORM f192 USING s0 s1 s2 s3 s4 CHANGING s0. l6 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ).
      s1 = 25769803776.
      IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = p2. s1 = 0. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 16 CHANGING cv_mem = mv_mem ). lv_br = 1. EXIT. " br 1
      ELSE.
      ENDIF.
      s0 = l6. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). l4 = s0. s1 = -11.
      IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = l6. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l5 = s0. s1 = l5. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
      ELSE.
      ENDIF.
      DO 1 TIMES. " block
        s0 = p0. s1 = p2. s2 = 16. s1 = s1 + s2. s2 = l6. PERFORM f719 USING s0 s1 s2 CHANGING s0. l5 = s0.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = p2. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 16 ). l8 = s0. s1 = 0.
        IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = 9007199254740991. l7 = s0. s0 = l8. s1 = 9007199254740992.
          IF zcl_wasm_rt=>lt_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        ELSE.
        ENDIF.
        s0 = p2. s1 = l7. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 16 CHANGING cv_mem = mv_mem ).
      ENDDO.
      DO 1 TIMES. " block
        s0 = l4. s1 = -11.
        IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = l6. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l4 = s0. s1 = l4. s1 = mem_ld_i32( s1 ). l4 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l4. s1 = 1.
        IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = l6. PERFORM f453 USING s0 s1.
      ENDDO.
      s0 = l5.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). l6 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
      IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = l6. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p3 = s0. s1 = p3. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
      ELSE.
      ENDIF.
      s0 = p0. s1 = p2. s2 = 8. s1 = s1 + s2. s2 = l6. PERFORM f719 USING s0 s1 s2 CHANGING s0.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p2. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 16 ). l7 = s0. s0 = p2. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 8 ). l6 = s0. s1 = 0.
      IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = p2. s1 = l6. s2 = l7. s1 = s1 + s2. l6 = s1. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 8 CHANGING cv_mem = mv_mem ).
      ELSE.
      ENDIF.
      DO 1 TIMES. " block
        s0 = l6. s1 = l7.
        IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        s1 = l6. s2 = 0.
        IF s1 >= s2. s1 = 1. ELSE. s1 = 0. ENDIF.
        s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
        IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = p2. s1 = 12884901888. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 24 CHANGING cv_mem = mv_mem ). lv_br = 1. EXIT. " br 1
        ELSE.
        ENDIF.
        DO 1 TIMES. " block
          s0 = p1. s1 = -4294967296.
          IF zcl_wasm_rt=>lt_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p3 = s0. s0 = mem_ld_i32_16u( s0 + 6 ). s1 = 2.
          IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = p3. s0 = mem_ld_i32_8u( s0 + 5 ). s1 = 8. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
          IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = l6. s1 = p3. s2 = 40. s1 = s1 + s2. s1 = zcl_wasm_rt=>mem_ld_i64_ext( iv_mem = mv_mem iv_addr = s1 + 0 iv_op = 53 ).
          IF zcl_wasm_rt=>ge_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = p3. s0 = mem_ld_i32( s0 + 36 ). s1 = l6. s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = 3. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). l6 = s0.
          s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
          IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0.
            s0 = l6. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p3 = s0. s1 = p3. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
          ELSE.
          ENDIF.
          s0 = p2. s1 = l6. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 24 CHANGING cv_mem = mv_mem ). lv_br = 1. EXIT. " br 1
        ENDDO.
        s0 = p0. s1 = p1. s2 = l6. s3 = p2. s4 = 24. s3 = s3 + s4. PERFORM f686 USING s0 s1 s2 s3 CHANGING s0. p3 = s0. s1 = 0.
        IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        s0 = p3.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = p2. s1 = 12884901888. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 24 CHANGING cv_mem = mv_mem ).
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
      s0 = p2. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 24 ). l6 = s0. lv_br = 1. EXIT. " br 1
    ENDDO.
    s0 = 25769803776. l6 = s0. s0 = p1. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
    IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p3 = s0. s1 = p3. s1 = mem_ld_i32( s1 ). p3 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p3. s1 = 1.
    IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = p1. PERFORM f453 USING s0 s1.
  ENDDO.
  s0 = p2. s1 = 32. s0 = s0 + s1. gv_g0 = s0. s0 = l6. rv = s0.
ENDFORM.

FORM f382 USING p0 TYPE i CHANGING rv TYPE i.
  DATA l1 TYPE i. DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE i. DATA l8 TYPE i. DATA l9 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i.
  DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i.
  DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i.
  DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i. DATA s36 TYPE i. DATA s37 TYPE i. DATA s38 TYPE i. DATA s39 TYPE i. DATA s40 TYPE i. DATA s41 TYPE i. DATA s42 TYPE i. DATA s43 TYPE i. DATA s44 TYPE i. DATA s45 TYPE i.
  DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l7 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    s0 = p0. s1 = 80. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). l3 = s0.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = l3.
    DO 1 TIMES. " block
      s1 = l3. s1 = mem_ld_i32( s1 + 200 ). l5 = s1. s2 = l3. s2 = mem_ld_i32( s2 + 196 ). l1 = s2.
      IF s1 < s2. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0.
        s1 = l3. s1 = mem_ld_i32( s1 + 204 ). l4 = s1. s1 = l3. l2 = s1. s1 = l5. lv_br = 1. EXIT. " br 1
      ELSE.
      ENDIF.
      s2 = l5. s3 = 1. s2 = s2 + s3. l2 = s2. s3 = l1. s4 = 3. s3 = s3 * s4. s4 = 2. s3 = s3 / s4. l1 = s3. s4 = l1. s5 = l2.
      IF s4 < s5. s4 = 1. ELSE. s4 = 0. ENDIF.
      IF s4 <> 0. s2 = s2. ELSE. s2 = s3. ENDIF.
      l9 = s2. s3 = 3. s2 = zcl_wasm_rt=>shl32( iv_val = s2 iv_shift = s3 ). l6 = s2. s2 = p0. s2 = mem_ld_i32( s2 ). l8 = s2. s2 = mem_ld_i32( s2 + 16 ). l1 = s2. s3 = 16. s2 = s2 + s3. l4 = s2. s2 = l1. s2 = mem_ld_i32( s2 + 8 ). l2 = s2.
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          s2 = l3. s2 = mem_ld_i32( s2 + 204 ). l1 = s2. s3 = l3. s4 = 208. s3 = s3 + s4.
          IF s2 = s3. s2 = 1. ELSE. s2 = 0. ENDIF.
          IF s2 <> 0.
            s2 = l4. s3 = 0. s4 = l6. s5 = l2.
            DATA(lv_ci_func) = mt_tab0[ s5 + 1 ]. " call_indirect
            s2 = dispatch_t11( iv_idx = lv_ci_func p0 = s2 p1 = s3 p2 = s4 ). l4 = s2. s2 = l8. s2 = mem_ld_i32( s2 + 16 ). l1 = s2.
            DO 1 TIMES. " block
              s2 = l6.
              IF s2 = 0. s2 = 1. ELSE. s2 = 0. ENDIF.
              IF s2 <> 0. EXIT. ENDIF. " br_if 0
              s2 = l4.
              IF s2 <> 0. EXIT. ENDIF. " br_if 0
              s2 = -1. l5 = s2. s2 = l1. s2 = mem_ld_i32_8u( s2 + 136 ).
              IF s2 <> 0. lv_br = 5. EXIT. ENDIF. " br_if 5
              s2 = l1. s3 = 1. mem_st_i32_8( iv_addr = s2 + 136 iv_val = s3 ). s2 = l8. s3 = 1134898. s4 = 0. PERFORM f969 USING s2 s3 s4 CHANGING s2. s2 = l1. s3 = 0. mem_st_i32_8( iv_addr = s2 + 136 iv_val = s3 ). lv_br = 5. EXIT. " br 5
            ENDDO.
            s2 = l4. s3 = l1. s3 = mem_ld_i32( s3 + 12 ).
            DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
            s2 = dispatch_t3( iv_idx = lv_ci_func p0 = s2 ). l2 = s2. s2 = l4.
            IF s2 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
            s2 = -1. l5 = s2. lv_br = 4. EXIT. " br 4
          ELSE.
          ENDIF.
          s2 = l4. s3 = l1. s4 = l6. s5 = l2.
          DATA(lv_ci_func) = mt_tab0[ s5 + 1 ]. " call_indirect
          s2 = dispatch_t11( iv_idx = lv_ci_func p0 = s2 p1 = s3 p2 = s4 ). l4 = s2. s2 = l8. s2 = mem_ld_i32( s2 + 16 ). l1 = s2.
          DO 1 TIMES. " block
            s2 = l6.
            IF s2 = 0. s2 = 1. ELSE. s2 = 0. ENDIF.
            IF s2 <> 0. EXIT. ENDIF. " br_if 0
            s2 = l4.
            IF s2 <> 0. EXIT. ENDIF. " br_if 0
            s2 = -1. l5 = s2. s2 = l1. s2 = mem_ld_i32_8u( s2 + 136 ).
            IF s2 <> 0. lv_br = 4. EXIT. ENDIF. " br_if 4
            s2 = l1. s3 = 1. mem_st_i32_8( iv_addr = s2 + 136 iv_val = s3 ). s2 = l8. s3 = 1134898. s4 = 0. PERFORM f969 USING s2 s3 s4 CHANGING s2. s2 = l1. s3 = 0. mem_st_i32_8( iv_addr = s2 + 136 iv_val = s3 ). lv_br = 4. EXIT. " br 4
          ENDDO.
          s2 = l4. s3 = l1. s3 = mem_ld_i32( s3 + 12 ).
          DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
          s2 = dispatch_t3( iv_idx = lv_ci_func p0 = s2 ). l2 = s2. s2 = l4.
          IF s2 <> 0.
            s2 = l2. s3 = l6. s2 = s2 - s3. l1 = s2. s3 = 0. s4 = l1. s5 = l2.
            IF zcl_wasm_rt=>le_u32( iv_a = s4 iv_b = s5 ) = abap_true. s4 = 1. ELSE. s4 = 0. ENDIF.
            IF s4 <> 0. s2 = s2. ELSE. s2 = s3. ENDIF.
            lv_br = 2. EXIT. " br 2
          ELSE.
          ENDIF.
          s3 = -1. l5 = s3. lv_br = 3. EXIT. " br 3
        ENDDO.
        s3 = l4. s4 = l3. s4 = mem_ld_i32( s4 + 204 ). s5 = l3. s5 = mem_ld_i32( s5 + 200 ). s6 = 3. s5 = zcl_wasm_rt=>shl32( iv_val = s5 iv_shift = s6 ). PERFORM f216 USING s3 s4 s5 CHANGING s3. s3 = l2. s4 = l6. s3 = s3 - s4. l1 = s3.
        s4 = 0. s5 = l1. s6 = l2.
        IF zcl_wasm_rt=>le_u32( iv_a = s5 iv_b = s6 ) = abap_true. s5 = 1. ELSE. s5 = 0. ENDIF.
        IF s5 <> 0. s3 = s3. ELSE. s3 = s4. ENDIF.
      ENDDO.
      l2 = s3. s3 = l3. s4 = l4. mem_st_i32( iv_addr = s3 + 204 iv_val = s4 ). s3 = l3. s4 = l2. s5 = 3. s4 = zcl_wasm_rt=>shr_u32( iv_val = s4 iv_shift = s5 ). s5 = l9. s4 = s4 + s5. mem_st_i32( iv_addr = s3 + 196 iv_val = s4 ). s3 = p0.
      s4 = 80. s3 = s3 + s4. s3 = mem_ld_i32( s3 ). l2 = s3. s3 = l3. s3 = mem_ld_i32( s3 + 200 ).
    ENDDO.
    s4 = 1. s3 = s3 + s4. mem_st_i32( iv_addr = s2 + 200 iv_val = s3 ). s2 = l4. s3 = l5. s4 = 3. s3 = zcl_wasm_rt=>shl32( iv_val = s3 iv_shift = s4 ). s2 = s2 + s3. s3 = l3.
    s3 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s3 + 188 ). zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s3 iv_addr = s2 + 0 CHANGING cv_mem = mv_mem ). s2 = l2. s3 = 256. s2 = s2 + s3. l1 = s2. s2 = l2.
    s2 = mem_ld_i32( s2 + 284 ). s3 = p0. s3 = mem_ld_i32( s3 + 4 ).
    IF s2 <> s3. s2 = 1. ELSE. s2 = 0. ENDIF.
    IF s2 <> 0.
      s2 = l1. s3 = 200. PERFORM f908 USING s2 s3. s2 = l7. s3 = p0. s3 = mem_ld_i32( s3 + 4 ). mem_st_i32( iv_addr = s2 + 8 iv_val = s3 ). s2 = l1. s3 = l7. s4 = 8. s3 = s3 + s4. s4 = 4. PERFORM f1097 USING s2 s3 s4. s2 = l2. s3 = p0.
      s3 = mem_ld_i32( s3 + 4 ). mem_st_i32( iv_addr = s2 + 284 iv_val = s3 ).
    ELSE.
    ENDIF.
    s2 = l2. s3 = l2. s4 = 260. s3 = s3 + s4. s3 = mem_ld_i32( s3 ). mem_st_i32( iv_addr = s2 + 280 iv_val = s3 ). s2 = l1. s3 = 182. PERFORM f908 USING s2 s3. s2 = p0. s3 = 80. s2 = s2 + s3. s2 = mem_ld_i32( s2 ). s3 = l7. s4 = l5.
    mem_st_i32_16( iv_addr = s3 + 14 iv_val = s4 ). s3 = 256. s2 = s2 + s3. s3 = l7. s4 = 14. s3 = s3 + s4. s4 = 2. PERFORM f1097 USING s2 s3 s4. s2 = l3. s3 = l5. mem_st_i32( iv_addr = s2 + 188 iv_val = s3 ).
  ENDDO.
  s2 = l7. s3 = 16. s2 = s2 + s3. gv_g0 = s2. s2 = l5. rv = s2.
ENDFORM.

FORM f383 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i CHANGING rv TYPE int8.
  DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE f. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i.
  DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i.
  DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i. DATA s36 TYPE i. DATA s37 TYPE i.
  DATA s38 TYPE i. DATA s39 TYPE i. DATA s40 TYPE i. DATA s41 TYPE i. DATA s42 TYPE i. DATA s43 TYPE i. DATA s44 TYPE i. DATA s45 TYPE i. DATA s46 TYPE i. DATA s47 TYPE i. DATA s48 TYPE i. DATA s49 TYPE i. DATA s50 TYPE i. DATA s51 TYPE i.
  DATA s52 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 32. s0 = s0 - s1. l4 = s0. gv_g0 = s0. s0 = l4. s1 = p2. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = l4. s1 = p0. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l4. s1 = 0.
  zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 16 CHANGING cv_mem = mv_mem ). s0 = l4. s1 = 0. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ).
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      s0 = p0. s0 = mem_ld_i32( s0 + 16 ). l5 = s0. s1 = 16. s0 = s0 + s1. s1 = p2. s2 = 17. s1 = s1 + s2. s2 = l5. s2 = mem_ld_i32( s2 ).
      DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
      s0 = dispatch_t7( iv_idx = lv_ci_func p0 = s0 p1 = s1 ). l5 = s0.
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = p0. s0 = mem_ld_i32( s0 + 16 ). p2 = s0. s0 = mem_ld_i32_8u( s0 + 136 ).
        IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = p2. s1 = 1. mem_st_i32_8( iv_addr = s0 + 136 iv_val = s1 ). s0 = p0. s1 = 1134898. s2 = 0. PERFORM f969 USING s0 s1 s2 CHANGING s0. s0 = p2. s1 = 0. mem_st_i32_8( iv_addr = s0 + 136 iv_val = s1 ).
        ELSE.
        ENDIF.
        s0 = l4. s1 = 0. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). lv_br = 1. EXIT. " br 1
      ELSE.
      ENDIF.
      s0 = l5. s1 = 0. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = l5. s1 = 1. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l5. s1 = p2. s2 = 2147483647. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ).
      s1 = zcl_wasm_rt=>extend_u32( s1 ). zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 4 CHANGING cv_mem = mv_mem ). s0 = l4. s1 = l5. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ).
      DO 1 TIMES. " block
        s0 = p2. s1 = 0.
        IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          DO. " loop
            DO 1 TIMES. " block
              s0 = p3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). p1 = s0. s1 = 4294967295.
              IF zcl_wasm_rt=>le_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0.
                s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l5 = s0. s1 = 1114111.
                IF zcl_wasm_rt=>le_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
                IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
                lv_br = 4. EXIT. " br 4
              ELSE.
              ENDIF.
              DO 1 TIMES. " block
                DO 1 TIMES. " block
                  s0 = p1. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). l5 = s0. s1 = -11.
                  IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
                  IF s0 <> 0.
                    s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l5 = s0. s1 = l5. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). lv_br = 1. EXIT. " br 1
                  ELSE.
                  ENDIF.
                  s0 = l5. s1 = 2.
                  IF zcl_wasm_rt=>le_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
                  IF s0 <> 0.
                    s0 = l4. s1 = p1. s1 = zcl_wasm_rt=>wrap_i64( s1 ). s1 = s1. " convert to f64 l7 = s1. zcl_wasm_rt=>mem_st_f64( EXPORTING iv_val = s1 iv_addr = s0 + 24 CHANGING cv_mem = mv_mem ). lv_br = 2. EXIT. " br 2
                  ELSE.
                  ENDIF.
                  s0 = l5. s1 = 7. s0 = s0 - s1. s1 = -19.
                  IF zcl_wasm_rt=>gt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
                  IF s0 <> 0. EXIT. ENDIF. " br_if 0
                  s0 = l4. s1 = p1. s2 = 9221120288580698112. s1 = s1 + s2. p1 = s1. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 24 CHANGING cv_mem = mv_mem ). s0 = p1. s0 = zcl_wasm_rt=>reinterpret_i64_f64( s0 ). l7 = s0.
                  lv_br = 1. EXIT. " br 1
                ENDDO.
                s0 = p0. s1 = l4. s2 = 24. s1 = s1 + s2. s2 = p1. PERFORM f801 USING s0 s1 s2 CHANGING s0.
                IF s0 <> 0. lv_br = 5. EXIT. ENDIF. " br_if 5
                s0 = l4. s0 = zcl_wasm_rt=>mem_ld_f64( iv_mem = mv_mem iv_addr = s0 + 24 ). l7 = s0.
              ENDDO.
              s0 = l7. s1 = '0.000000'.
              IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
              s0 = l7. s1 = '1114111.000000'.
              IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
              s0 = l7.
              DO 1 TIMES. " block
                s1 = l7. s1 = abs( s1 ). s2 = '2147483648.000000'.
                IF s1 < s2. s1 = 1. ELSE. s1 = 0. ENDIF.
                IF s1 <> 0.
                  s1 = l7. s1 = trunc( s1 ). lv_br = 1. EXIT. " br 1
                ELSE.
                ENDIF.
                s2 = -2147483648.
              ENDDO.
              l5 = s2. s2 = s2. " convert to f64
              IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
              IF s1 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
            ENDDO.
            s1 = l5. s2 = 65536.
            IF zcl_wasm_rt=>ge_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
            IF s1 <> 0.
              s1 = l4. s2 = l5. s3 = 10. s2 = zcl_wasm_rt=>shr_u32( iv_val = s2 iv_shift = s3 ). s3 = 55232. s2 = s2 + s3. PERFORM f1001 USING s1 s2 CHANGING s1.
              IF s1 <> 0. lv_br = 4. EXIT. ENDIF. " br_if 4
              s1 = l5. s2 = 1023. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). s2 = 56320. s1 = zcl_wasm_rt=>or32( iv_a = s1 iv_b = s2 ). l5 = s1.
            ELSE.
            ENDIF.
            DO 1 TIMES. " block
              DO 1 TIMES. " block
                s1 = l4. s1 = mem_ld_i32( s1 + 8 ). l6 = s1. s2 = l4. s2 = mem_ld_i32( s2 + 12 ).
                IF s1 >= s2. s1 = 1. ELSE. s1 = 0. ENDIF.
                IF s1 <> 0. EXIT. ENDIF. " br_if 0
                s1 = l4. s1 = mem_ld_i32( s1 + 16 ).
                IF s1 <> 0.
                  s1 = l4. s1 = mem_ld_i32( s1 + 4 ). s2 = l6. s3 = 1. s2 = zcl_wasm_rt=>shl32( iv_val = s2 iv_shift = s3 ). s1 = s1 + s2. s2 = 16. s1 = s1 + s2. s2 = l5. mem_st_i32_16( iv_addr = s1 iv_val = s2 ). s1 = l4. s2 = l6. s3 = 1.
                  s2 = s2 + s3. mem_st_i32( iv_addr = s1 + 8 iv_val = s2 ). lv_br = 2. EXIT. " br 2
                ELSE.
                ENDIF.
                s1 = l5. s2 = 255.
                IF zcl_wasm_rt=>gt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
                IF s1 <> 0. EXIT. ENDIF. " br_if 0
                s1 = l4. s1 = mem_ld_i32( s1 + 4 ). s2 = l6. s1 = s1 + s2. s2 = 16. s1 = s1 + s2. s2 = l5. mem_st_i32_8( iv_addr = s1 iv_val = s2 ). s1 = l4. s2 = l6. s3 = 1. s2 = s2 + s3. mem_st_i32( iv_addr = s1 + 8 iv_val = s2 ).
                lv_br = 1. EXIT. " br 1
              ENDDO.
              s1 = l4. s2 = l5. PERFORM f844 USING s1 s2 CHANGING s1.
              IF s1 <> 0. lv_br = 4. EXIT. ENDIF. " br_if 4
            ENDDO.
            s1 = p3. s2 = 8. s1 = s1 + s2. p3 = s1. s1 = p2. s2 = 1. s1 = s1 - s2. p2 = s1.
            IF s1 <> 0. EXIT. ENDIF. " br_if 0
          ENDDO.
        ELSE.
        ENDIF.
        s1 = l4. PERFORM f676 USING s1 CHANGING s1. lv_br = 2. EXIT. " br 2
      ENDDO.
      s2 = p0. s3 = 1136691. s4 = 0. PERFORM f975 USING s2 s3 s4.
    ENDDO.
    s2 = l4. s2 = mem_ld_i32( s2 ). s2 = mem_ld_i32( s2 + 16 ). p0 = s2. s3 = 16. s2 = s2 + s3. s3 = l4. s3 = mem_ld_i32( s3 + 4 ). s4 = p0. s4 = mem_ld_i32( s4 + 4 ).
    DATA(lv_ci_func) = mt_tab0[ s4 + 1 ]. " call_indirect
    dispatch_t6( iv_idx = lv_ci_func p0 = s2 p1 = s3 ). s2 = 25769803776.
  ENDDO.
  s3 = l4. s4 = 32. s3 = s3 + s4. gv_g0 = s3. rv = s2.
ENDFORM.

FORM f384 USING p0 TYPE i.
  DATA l1 TYPE i. DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE int8. DATA l8 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i.
  DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i.
  DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i.
  DATA s34 TYPE i. DATA s35 TYPE i. DATA s36 TYPE i. DATA s37 TYPE i. DATA s38 TYPE i. DATA s39 TYPE i. DATA s40 TYPE i. DATA s41 TYPE i. DATA s42 TYPE i. DATA s43 TYPE i. DATA s44 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = -64.
  s0 = s0 + s1. l1 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          DO 1 TIMES. " block
            s0 = 1214961. s0 = mem_ld_i32_8u( s0 ).
            CASE s0.
              WHEN 0. EXIT.
              WHEN 1. lv_br = 1. EXIT.
              WHEN OTHERS. lv_br = 2. EXIT.
            ENDCASE.
          ENDDO.
          s0 = l1. s1 = 12. s0 = s0 + s1. s1 = 1115012. s2 = 18. PERFORM f252 USING s0 s1 s2. s0 = -2147483648. l3 = s0.
          DO 1 TIMES. " block
            DO 1 TIMES. " block
              s0 = l1. s0 = mem_ld_i32( s0 + 12 ). s1 = -2147483648.
              IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0. EXIT. ENDIF. " br_if 0
              s0 = l1. s1 = 32. s0 = s0 + s1. s1 = l1. s2 = 20. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). l2 = s1. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l1. s1 = l1. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 12 ).
              zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 24 CHANGING cv_mem = mv_mem ). s0 = l1. s1 = 40. s0 = s0 + s1. s1 = l1. s1 = mem_ld_i32( s1 + 28 ). l5 = s1. s2 = l2. PERFORM f324 USING s0 s1 s2.
              DO 1 TIMES. " block
                s0 = l1. s0 = mem_ld_i32( s0 + 40 ).
                IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
                IF s0 <> 0.
                  s0 = l2. s0 = zcl_wasm_rt=>extend_u32( s0 ). l7 = s0. s0 = l1. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 24 ). lv_br = 1. EXIT. " br 1
                ELSE.
                ENDIF.
                s1 = l1. s1 = mem_ld_i32( s1 + 24 ). l3 = s1. s2 = -2147483648.
                IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
                IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
                s1 = l1. s1 = zcl_wasm_rt=>mem_ld_i64_ext( iv_mem = mv_mem iv_addr = s1 + 44 iv_op = 53 ). l7 = s1. s1 = l1. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 28 ).
              ENDDO.
              l8 = s1. s1 = 1. l2 = s1. s1 = l8. s2 = 32. s1 = zcl_wasm_rt=>shr_u64( iv_val = s1 iv_shift = s2 ). s1 = zcl_wasm_rt=>wrap_i64( s1 ). l3 = s1. s1 = l7. s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = 1.
              IF s1 = s2. s1 = 1. ELSE. s1 = 0. ENDIF.
              IF s1 <> 0.
                s1 = l3. s1 = mem_ld_i32_8u( s1 ). s2 = 48.
                IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
                l2 = s1.
              ELSE.
              ENDIF.
              s1 = l8. s1 = zcl_wasm_rt=>wrap_i64( s1 ).
              IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
              IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
              s1 = l3. PERFORM f125 USING s1. s1 = 1214961. s2 = 2. s3 = 1. s4 = l2.
              IF s4 <> 0. s2 = s2. ELSE. s2 = s3. ENDIF.
              mem_st_i32_8( iv_addr = s1 iv_val = s2 ). s1 = l2.
              IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
              IF s1 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
              lv_br = 3. EXIT. " br 3
            ENDDO.
            s1 = l1. s2 = 12. s1 = s1 + s2. s2 = 1115030. s3 = 14. PERFORM f252 USING s1 s2 s3.
            DO 1 TIMES. " block
              s1 = l1. s1 = mem_ld_i32( s1 + 12 ). s2 = -2147483648.
              IF s1 = s2. s1 = 1. ELSE. s1 = 0. ENDIF.
              IF s1 <> 0.
                s1 = 0. l2 = s1. lv_br = 1. EXIT. " br 1
              ELSE.
              ENDIF.
              s1 = l1. s2 = 32. s1 = s1 + s2. s2 = l1. s3 = 20. s2 = s2 + s3. s2 = mem_ld_i32( s2 ). l2 = s2. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = l1. s2 = l1. s2 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s2 + 12 ).
              zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s2 iv_addr = s1 + 24 CHANGING cv_mem = mv_mem ). s1 = l1. s2 = 40. s1 = s1 + s2. s2 = l1. s2 = mem_ld_i32( s2 + 28 ). l4 = s2. s3 = l2. PERFORM f324 USING s1 s2 s3.
              DO 1 TIMES. " block
                DO 1 TIMES. " block
                  s1 = l1. s1 = mem_ld_i32( s1 + 40 ).
                  IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
                  IF s1 <> 0.
                    s1 = l2. s1 = zcl_wasm_rt=>extend_u32( s1 ). l7 = s1. s1 = l1. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 24 ). lv_br = 1. EXIT. " br 1
                  ELSE.
                  ENDIF.
                  s2 = l1. s2 = mem_ld_i32( s2 + 24 ). l6 = s2. s3 = -2147483648.
                  IF s2 <> s3. s2 = 1. ELSE. s2 = 0. ENDIF.
                  IF s2 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
                  s2 = l1. s2 = zcl_wasm_rt=>mem_ld_i64_ext( iv_mem = mv_mem iv_addr = s2 + 44 iv_op = 53 ). l7 = s2. s2 = l1. s2 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s2 + 28 ).
                ENDDO.
                l8 = s2. s2 = 1. l2 = s2. s2 = l8. s3 = 32. s2 = zcl_wasm_rt=>shr_u64( iv_val = s2 iv_shift = s3 ). s2 = zcl_wasm_rt=>wrap_i64( s2 ). l4 = s2. s2 = l7. s2 = zcl_wasm_rt=>wrap_i64( s2 ). s3 = 1.
                IF s2 = s3. s2 = 1. ELSE. s2 = 0. ENDIF.
                IF s2 <> 0.
                  s2 = l4. s2 = mem_ld_i32_8u( s2 ). s3 = 48.
                  IF s2 <> s3. s2 = 1. ELSE. s2 = 0. ENDIF.
                  l2 = s2.
                ELSE.
                ENDIF.
                s2 = l8. s2 = zcl_wasm_rt=>wrap_i64( s2 ).
                IF s2 = 0. s2 = 1. ELSE. s2 = 0. ENDIF.
                IF s2 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
                s2 = l4. PERFORM f125 USING s2. lv_br = 1. EXIT. " br 1
              ENDDO.
              s2 = 0. l2 = s2. s2 = l6.
              IF s2 = 0. s2 = 1. ELSE. s2 = 0. ENDIF.
              IF s2 <> 0. EXIT. ENDIF. " br_if 0
              s2 = l4. PERFORM f125 USING s2.
            ENDDO.
            s2 = l3. s3 = -2147483648. s2 = zcl_wasm_rt=>or32( iv_a = s2 iv_b = s3 ). s3 = -2147483648.
            IF s2 = s3. s2 = 1. ELSE. s2 = 0. ENDIF.
            IF s2 <> 0. EXIT. ENDIF. " br_if 0
            s2 = l5. PERFORM f125 USING s2. s2 = 1214961. s3 = 2. s4 = 1. s5 = l2.
            IF s5 <> 0. s3 = s3. ELSE. s3 = s4. ENDIF.
            mem_st_i32_8( iv_addr = s2 iv_val = s3 ). s2 = l2.
            IF s2 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
            lv_br = 1. EXIT. " br 1
          ENDDO.
          s2 = 1214961. s3 = 2. s4 = 1. s5 = l2.
          IF s5 <> 0. s3 = s3. ELSE. s3 = s4. ENDIF.
          mem_st_i32_8( iv_addr = s2 iv_val = s3 ). s2 = l2.
          IF s2 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        ENDDO.
        s2 = p0. s3 = 1. mem_st_i32( iv_addr = s2 iv_val = s3 ). lv_br = 1. EXIT. " br 1
      ENDDO.
      s2 = 1215045. s2 = mem_ld_i32_8u( s2 ). l2 = s2. s2 = 1215045. s3 = 1. mem_st_i32_8( iv_addr = s2 iv_val = s3 ). s2 = l1. s3 = l2. mem_st_i32_8( iv_addr = s2 + 24 iv_val = s3 ). s2 = l2.
      IF s2 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s2 = p0. s3 = 0. mem_st_i32_8( iv_addr = s2 + 20 iv_val = s3 ). s2 = p0. s3 = 0. mem_st_i32( iv_addr = s2 iv_val = s3 ). s2 = 1215045. s3 = 0. mem_st_i32_8( iv_addr = s2 iv_val = s3 ).
    ENDDO.
    s2 = l1. s3 = -64. s2 = s2 - s3. gv_g0 = s2.
    RETURN.
  ENDDO.
  s2 = l1. s3 = 0. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s3 iv_addr = s2 + 52 CHANGING cv_mem = mv_mem ). s2 = l1. s3 = 17179869185. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s3 iv_addr = s2 + 44 CHANGING cv_mem = mv_mem ). s2 = l1.
  s3 = 1116864. mem_st_i32( iv_addr = s2 + 40 iv_val = s3 ). s2 = l1. s3 = 24. s2 = s2 + s3. s3 = l1. s4 = 40. s3 = s3 + s4. PERFORM f1181 USING s2 s3.
  RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
ENDFORM.

FORM f385 USING p0 TYPE i p1 TYPE int8 CHANGING rv TYPE int8.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i.
  DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i.
  DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i.
  DATA s36 TYPE i. DATA s37 TYPE i. DATA s38 TYPE i. DATA s39 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l3 = s0. gv_g0 = s0. s0 = p0. s1 = l3. s2 = 4. s1 = s1 + s2. s2 = p1. s3 = 0.
  PERFORM f184 USING s0 s1 s2 s3 CHANGING s0. l4 = s0.
  DO 1 TIMES. " block
    s0 = p1. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
    IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l2 = s0. s1 = l2. s1 = mem_ld_i32( s1 ). l2 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l2. s1 = 1.
    IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = p1. PERFORM f453 USING s0 s1.
  ENDDO.
  DO 1 TIMES. " block
    s0 = l4.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = 25769803776. p1 = s0. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = l3. s1 = l4. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = l4. l2 = s0.
    DO. " loop
      DO 1 TIMES. " block
        s0 = l2. s0 = mem_ld_i32_8s( s0 ). l5 = s0. s1 = 0.
        IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = l5. s1 = 255. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). l5 = s0. s1 = 9. s0 = s0 - s1. s1 = 5.
          IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          s1 = l5. s2 = 32.
          IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
          s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          s0 = l2. s1 = 1. s0 = s0 + s1. l2 = s0. lv_br = 2. EXIT. " br 2
        ELSE.
        ENDIF.
        s0 = l2. s1 = 6. s2 = l3. s3 = 12. s2 = s2 + s3. PERFORM f787 USING s0 s1 s2 CHANGING s0. PERFORM f822 USING s0 CHANGING s0.
        IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = l3. s0 = mem_ld_i32( s0 + 12 ). l2 = s0. lv_br = 1. EXIT. " br 1
      ENDDO.
    ENDDO.
    s0 = l3. s1 = l2. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = p0. s1 = 16. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). s1 = 140. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). l6 = s0.
    DO 1 TIMES. " block
      s0 = l3. s0 = mem_ld_i32( s0 + 4 ). s1 = l2. s2 = l4. s1 = s1 - s2.
      IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = l6.
        IF s0 <> 0.
          s0 = 0. p1 = s0. s0 = l6. s0 = mem_ld_i32_8u( s0 + 40 ). s1 = 4. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
          IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
        ELSE.
        ENDIF.
        s0 = p0. s1 = 0. PERFORM f811 USING s0 s1 CHANGING s0. p1 = s0. lv_br = 1. EXIT. " br 1
      ELSE.
      ENDIF.
      s0 = p0. s1 = l2. s2 = l3. s3 = 8. s2 = s2 + s3. s3 = 0.
      DO 1 TIMES. " block
        s4 = l6.
        IF s4 <> 0.
          s4 = 645. s5 = l6. s5 = mem_ld_i32( s5 + 40 ). s6 = 4. s5 = zcl_wasm_rt=>and32( iv_a = s5 iv_b = s6 ).
          IF s5 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        ELSE.
        ENDIF.
        s4 = 133.
      ENDDO.
      s5 = 0. PERFORM f43 USING s0 s1 s2 s3 s4 s5 CHANGING s0. l7 = s0. s0 = l3. s0 = mem_ld_i32( s0 + 8 ). l6 = s0. l2 = s0.
      DO. " loop
        DO 1 TIMES. " block
          s0 = l2. s0 = mem_ld_i32_8s( s0 ). l5 = s0. s1 = 0.
          IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0.
            s0 = l5. s1 = 255. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). l5 = s0. s1 = 9. s0 = s0 - s1. s1 = 5.
            IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
            s1 = l5. s2 = 32.
            IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
            s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
            IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
            s0 = l2. s1 = 1. s0 = s0 + s1. l2 = s0. lv_br = 2. EXIT. " br 2
          ELSE.
          ENDIF.
          s0 = l2. s1 = 6. s2 = l3. s3 = 12. s2 = s2 + s3. PERFORM f787 USING s0 s1 s2 CHANGING s0. PERFORM f822 USING s0 CHANGING s0.
          IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = l3. s0 = mem_ld_i32( s0 + 12 ). l2 = s0. lv_br = 1. EXIT. " br 1
        ENDDO.
      ENDDO.
      s0 = l3. s1 = l3. s1 = mem_ld_i32( s1 + 8 ). s2 = l2. s3 = l6. s2 = s2 - s3. s1 = s1 + s2. l2 = s1. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = l7. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ).
      s1 = 25769803776.
      IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = l7. p1 = s0. lv_br = 1. EXIT. " br 1
      ELSE.
      ENDIF.
      s0 = l3. s0 = mem_ld_i32( s0 + 4 ). s1 = l2. s2 = l4. s1 = s1 - s2.
      IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = l7. p1 = s0. lv_br = 1. EXIT. " br 1
      ELSE.
      ENDIF.
      s0 = -51539607552. p1 = s0. s0 = l7. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
      IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = l7. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l2 = s0. s1 = l2. s1 = mem_ld_i32( s1 ). l2 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l2. s1 = 1.
      IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p0. s1 = 16. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). s1 = l7. PERFORM f453 USING s0 s1.
    ENDDO.
    s0 = l4. s1 = 16. s0 = s0 - s1. l2 = s0. s1 = l2. s1 = mem_ld_i32( s1 ). l4 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l4. s1 = 1.
    IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = l2. s1 = zcl_wasm_rt=>extend_u32( s1 ). s2 = -30064771072. s1 = zcl_wasm_rt=>or64( iv_a = s1 iv_b = s2 ). PERFORM f453 USING s0 s1.
  ENDDO.
  s0 = l3. s1 = 16. s0 = s0 + s1. gv_g0 = s0. s0 = p1. rv = s0.
ENDFORM.

FORM f386 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i p4 TYPE i p5 TYPE i CHANGING rv TYPE int8.
  DATA l6 TYPE int8. DATA l7 TYPE int8. DATA l8 TYPE int8. DATA l9 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i.
  DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i.
  DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i. DATA s36 TYPE i. DATA s37 TYPE i.
  DATA s38 TYPE i. DATA s39 TYPE i. DATA s40 TYPE i. DATA s41 TYPE i. DATA s42 TYPE i. DATA s43 TYPE i. DATA s44 TYPE i. DATA s45 TYPE i. DATA s46 TYPE i. DATA s47 TYPE i. DATA s48 TYPE i. DATA s49 TYPE i. DATA s50 TYPE i. DATA s51 TYPE i.
  DATA s52 TYPE i. DATA s53 TYPE i. DATA s54 TYPE i. DATA s55 TYPE i. DATA s56 TYPE i. DATA s57 TYPE i. DATA s58 TYPE i. DATA s59 TYPE i. DATA s60 TYPE i. DATA s61 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 80. s0 = s0 - s1. p3 = s0.
  gv_g0 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          DO 1 TIMES. " block
            s0 = p1. s1 = -4294967296.
            IF zcl_wasm_rt=>lt_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. EXIT. ENDIF. " br_if 0
            s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p2 = s0. s0 = mem_ld_i32_16u( s0 + 6 ). s1 = 46.
            IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. EXIT. ENDIF. " br_if 0
            s0 = p2. s0 = mem_ld_i32( s0 + 32 ). p2 = s0.
            IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          ENDDO.
          s0 = p3. s1 = p0. s2 = 16. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). p2 = s1. s2 = p3. s3 = 16. s2 = s2 + s3. s3 = p2. s3 = mem_ld_i32( s3 + 68 ). s4 = 1108. s3 = s3 + s4. s3 = mem_ld_i32( s3 ). PERFORM f410 USING s1 s2 s3 CHANGING s1.
          mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s1 = 1147410. s2 = p3. PERFORM f970 USING s0 s1 s2 CHANGING s0. s0 = 25769803776. p1 = s0. lv_br = 1. EXIT. " br 1
        ENDDO.
        s0 = p2. s0 = mem_ld_i32( s0 + 24 ).
        IF s0 <> 0.
          s0 = 12884901888. p1 = s0. s0 = 1. p5 = s0. lv_br = 3. EXIT. " br 3
        ELSE.
        ENDIF.
        s0 = p0. s1 = p2. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 0 ). l8 = s1. s2 = p2. s2 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s2 + 8 ). l9 = s2. PERFORM f638 USING s0 s1 s2 CHANGING s0. p1 = s0.
        s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). l7 = s0. s1 = 25769803776.
        IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = 12884901888. l7 = s0. lv_br = 2. EXIT. " br 2
        ELSE.
        ENDIF.
        s0 = l7. s1 = 8589934592.
        IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = 1. p5 = s0. s0 = p2. s1 = 1. mem_st_i32( iv_addr = s0 + 24 iv_val = s1 ). s0 = 12884901888. p1 = s0. lv_br = 3. EXIT. " br 3
        ELSE.
        ENDIF.
        s0 = p2. s0 = mem_ld_i32( s0 + 16 ).
        IF s0 <> 0.
          s0 = p0. s1 = p0. s2 = p1. s3 = 0. PERFORM f283 USING s1 s2 s3 CHANGING s1. l6 = s1. s2 = 0. PERFORM f341 USING s0 s1 s2 CHANGING s0. l7 = s0.
          DO 1 TIMES. " block
            s0 = l6. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
            IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. EXIT. ENDIF. " br_if 0
            s0 = l6. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p5 = s0. s1 = p5. s1 = mem_ld_i32( s1 ). p5 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p5. s1 = 1.
            IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. EXIT. ENDIF. " br_if 0
            s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = l6. PERFORM f453 USING s0 s1.
          ENDDO.
          s0 = l7. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). l6 = s0. s1 = 25769803776.
          IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
          DO 1 TIMES. " block
            s0 = l6. s1 = -30064771072.
            IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. EXIT. ENDIF. " br_if 0
            s0 = l7. s0 = zcl_wasm_rt=>wrap_i64( s0 ). s0 = mem_ld_i32( s0 + 4 ). s1 = 2147483647. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
            IF s0 <> 0. EXIT. ENDIF. " br_if 0
            s0 = p0. s1 = p3. s2 = 16. s1 = s1 + s2. s2 = p0. s3 = l8. s4 = 87. s5 = l8. s6 = 0. PERFORM f192 USING s2 s3 s4 s5 s6 CHANGING s2. PERFORM f943 USING s0 s1 s2 CHANGING s0. s1 = 0.
            IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
            s0 = p0. s1 = l8. s2 = 87.
            DO 1 TIMES. " block
              s3 = l9. s3 = zcl_wasm_rt=>wrap_i64( s3 ). s4 = p3. s4 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s4 + 16 ). s5 = p2. s5 = mem_ld_i32( s5 + 20 ). PERFORM f913 USING s3 s4 s5 CHANGING s3. l6 = s3. s4 = 2147483648.
              s3 = s3 + s4. s4 = 4294967295.
              IF zcl_wasm_rt=>le_u64( iv_a = s3 iv_b = s4 ) = abap_true. s3 = 1. ELSE. s3 = 0. ENDIF.
              IF s3 <> 0.
                s3 = l6. s4 = 4294967295. s3 = zcl_wasm_rt=>and64( iv_a = s3 iv_b = s4 ). lv_br = 1. EXIT. " br 1
              ELSE.
              ENDIF.
              s4 = -51539607552. s5 = l6. s5 = s5. " convert to f64 s5 = zcl_wasm_rt=>reinterpret_f64_i64( s5 ). l6 = s5. s6 = 9221120288580698112. s5 = s5 - s6. s6 = l6. s7 = 9223372036854775807.
              s6 = zcl_wasm_rt=>and64( iv_a = s6 iv_b = s7 ). s7 = 9218868437227405312.
              IF zcl_wasm_rt=>gt_u64( iv_a = s6 iv_b = s7 ) = abap_true. s6 = 1. ELSE. s6 = 0. ENDIF.
              IF s6 <> 0. s4 = s4. ELSE. s4 = s5. ENDIF.
            ENDDO.
            s5 = l8. s6 = 16384. PERFORM f89 USING s1 s2 s3 s4 s5 s6 CHANGING s1. s2 = 0.
            IF s1 < s2. s1 = 1. ELSE. s1 = 0. ENDIF.
            IF s1 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
          ENDDO.
          s1 = p0. s2 = l7. PERFORM f1164 USING s1 s2. lv_br = 1. EXIT. " br 1
        ELSE.
        ENDIF.
        s1 = p2. s2 = 1. mem_st_i32( iv_addr = s1 + 24 iv_val = s2 ).
      ENDDO.
      s1 = 0. p5 = s1. lv_br = 1. EXIT. " br 1
    ENDDO.
    DO 1 TIMES. " block
      s1 = p1. s2 = 32. s1 = zcl_wasm_rt=>shr_u64( iv_val = s1 iv_shift = s2 ). s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = -11.
      IF zcl_wasm_rt=>lt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. EXIT. ENDIF. " br_if 0
      s1 = p1. s1 = zcl_wasm_rt=>wrap_i64( s1 ). p2 = s1. s2 = p2. s2 = mem_ld_i32( s2 ). p2 = s2. s3 = 1. s2 = s2 - s3. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = p2. s2 = 1.
      IF s1 > s2. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. EXIT. ENDIF. " br_if 0
      s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s2 = p1. PERFORM f453 USING s1 s2.
    ENDDO.
    s1 = 25769803776. p1 = s1. s1 = 0. p5 = s1. s1 = l7. s2 = 32. s1 = zcl_wasm_rt=>shr_u64( iv_val = s1 iv_shift = s2 ). s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = -11.
    IF zcl_wasm_rt=>lt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
    IF s1 <> 0. EXIT. ENDIF. " br_if 0
    s1 = l7. s1 = zcl_wasm_rt=>wrap_i64( s1 ). p2 = s1. s2 = p2. s2 = mem_ld_i32( s2 ). p2 = s2. s3 = 1. s2 = s2 - s3. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = p2. s2 = 1.
    IF s1 > s2. s1 = 1. ELSE. s1 = 0. ENDIF.
    IF s1 <> 0. EXIT. ENDIF. " br_if 0
    s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s2 = l7. PERFORM f453 USING s1 s2.
  ENDDO.
  s1 = p4. s2 = p5. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = p3. s2 = 80. s1 = s1 + s2. gv_g0 = s1. s1 = p1. rv = s1.
ENDFORM.

FORM f387 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE int8 p4 TYPE i.
  DATA l5 TYPE i. DATA l6 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i.
  DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i.
  DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i. DATA s36 TYPE i. DATA s37 TYPE i. DATA s38 TYPE i. DATA s39 TYPE i.
  DATA lv_br TYPE i. s0 = gv_g0. s1 = -64. s0 = s0 + s1. l5 = s0. gv_g0 = s0. s0 = p2. s1 = p2. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p4. PERFORM f117 USING s0. s0 = l5. s1 = p2.
  mem_st_i32( iv_addr = s0 + 56 iv_val = s1 ). s0 = l5. s1 = p3. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 48 CHANGING cv_mem = mv_mem ). s0 = l5. s1 = 12884901888.
  zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 40 CHANGING cv_mem = mv_mem ). s0 = l5.
  RAISE EXCEPTION TYPE cx_sy_program_error. " SIMD not supported
  RAISE EXCEPTION TYPE cx_sy_program_error. " SIMD not supported
  s1 = l5. s2 = 12884901888. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s2 iv_addr = s1 + 16 CHANGING cv_mem = mv_mem ). s1 = l5. s2 = 0. mem_st_i32_16( iv_addr = s1 + 8 iv_val = s2 ).
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        s1 = p2. s2 = p1. s3 = p3. s4 = 0. s5 = l5. s6 = 16. s5 = s5 + s6. PERFORM f1289 USING s1 s2 s3 s4 s5 CHANGING s1. p1 = s1. s2 = -4294967296. s1 = zcl_wasm_rt=>and64( iv_a = s1 iv_b = s2 ). s2 = 25769803776.
        IF s1 = s2. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0.
          s1 = l5. s1 = mem_ld_i32( s1 + 56 ). s1 = mem_ld_i32( s1 + 16 ). s1 = mem_ld_i32( s1 + 376 ). p2 = s1. s1 = mem_ld_i32( s1 ). s2 = p2. s3 = 0. mem_st_i32( iv_addr = s2 iv_val = s3 ).
          IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
          IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          s1 = p2. s1 = mem_ld_i32( s1 + 4 ). PERFORM f1168 USING s1.
          RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
        ELSE.
        ENDIF.
        s1 = l5. s1 = mem_ld_i32( s1 + 56 ). l6 = s1. p2 = s1. s2 = p2. s2 = mem_ld_i32( s2 ). s3 = 1. s2 = s2 + s3. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = 13. p4 = s1. s1 = 1078888. p2 = s1.
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
                            DO 1 TIMES. " block
                              DO 1 TIMES. " block
                                DO 1 TIMES. " block
                                  DO 1 TIMES. " block
                                    DO 1 TIMES. " block
                                      DO 1 TIMES. " block
                                        DO 1 TIMES. " block
                                          DO 1 TIMES. " block
                                            s1 = p1. s2 = l6. PERFORM f780 USING s1 s2 CHANGING s1. s2 = 255. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). s2 = 1. s1 = s1 - s2.
                                            CASE s1.
                                              WHEN 0. lv_br = 1. EXIT.
                                              WHEN 1. lv_br = 2. EXIT.
                                              WHEN 2. EXIT.
                                              WHEN 3. lv_br = 3. EXIT.
                                              WHEN 4. lv_br = 4. EXIT.
                                              WHEN 5. lv_br = 5. EXIT.
                                              WHEN 6. lv_br = 6. EXIT.
                                              WHEN 7. lv_br = 7. EXIT.
                                              WHEN 8. lv_br = 8. EXIT.
                                              WHEN 9. lv_br = 9. EXIT.
                                              WHEN 10. lv_br = 10. EXIT.
                                              WHEN 11. lv_br = 11. EXIT.
                                              WHEN 12. lv_br = 12. EXIT.
                                              WHEN 13. lv_br = 13. EXIT.
                                              WHEN 14. lv_br = 14. EXIT.
                                              WHEN 15. lv_br = 15. EXIT.
                                              WHEN OTHERS. lv_br = 16. EXIT.
                                            ENDCASE.
                                          ENDDO.
                                          s1 = p0. s2 = 18. mem_st_i32_8( iv_addr = s1 iv_val = s2 ). s1 = p0. s2 = p1. s2 = zcl_wasm_rt=>wrap_i64( s2 ). s3 = 0.
                                          IF s2 <> s3. s2 = 1. ELSE. s2 = 0. ENDIF.
                                          mem_st_i32_8( iv_addr = s1 + 1 iv_val = s2 ). lv_br = 16. EXIT. " br 16
                                        ENDDO.
                                        s1 = 9. p4 = s1. s1 = 1078901. p2 = s1. lv_br = 14. EXIT. " br 14
                                      ENDDO.
                                      s1 = 4. p4 = s1. s1 = 1078910. p2 = s1. lv_br = 13. EXIT. " br 13
                                    ENDDO.
                                    s1 = 3. p4 = s1. s1 = 1078920. p2 = s1. lv_br = 12. EXIT. " br 12
                                  ENDDO.
                                  s1 = 5. p4 = s1. s1 = 1078923. p2 = s1. lv_br = 11. EXIT. " br 11
                                ENDDO.
                                s1 = 6. p4 = s1. s1 = 1078928. p2 = s1. lv_br = 10. EXIT. " br 10
                              ENDDO.
                              s1 = 6. p4 = s1. s1 = 1078934. p2 = s1. lv_br = 9. EXIT. " br 9
                            ENDDO.
                            s1 = 5. p4 = s1. s1 = 1078940. p2 = s1. lv_br = 8. EXIT. " br 8
                          ENDDO.
                          s1 = 11. p4 = s1. s1 = 1078945. p2 = s1. lv_br = 7. EXIT. " br 7
                        ENDDO.
                        s1 = 8. p4 = s1. s1 = 1078956. p2 = s1. lv_br = 6. EXIT. " br 6
                      ENDDO.
                      s1 = 7. p4 = s1. s1 = 1078964. p2 = s1. lv_br = 5. EXIT. " br 5
                    ENDDO.
                    s1 = 9. p4 = s1. s1 = 1078971. p2 = s1. lv_br = 4. EXIT. " br 4
                  ENDDO.
                  s1 = 6. p4 = s1. s1 = 1078980. p2 = s1. lv_br = 3. EXIT. " br 3
                ENDDO.
                s1 = 6. p4 = s1. s1 = 1078914. p2 = s1. lv_br = 2. EXIT. " br 2
              ENDDO.
              s1 = 7. p4 = s1. s1 = 1078986. p2 = s1. lv_br = 1. EXIT. " br 1
            ENDDO.
            s1 = 12. p4 = s1. s1 = 1078993. p2 = s1.
          ENDDO.
          s1 = p0. s2 = -9223372036854775804. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s2 iv_addr = s1 + 16 CHANGING cv_mem = mv_mem ). s1 = p0. s2 = 1080252. mem_st_i32( iv_addr = s1 + 12 iv_val = s2 ). s1 = p0. s2 = p4.
          mem_st_i32( iv_addr = s1 + 8 iv_val = s2 ). s1 = p0. s2 = p2. mem_st_i32( iv_addr = s1 + 4 iv_val = s2 ). s1 = p0. s2 = 10. mem_st_i32_8( iv_addr = s1 iv_val = s2 ).
        ENDDO.
        DO 1 TIMES. " block
          s1 = p1. s2 = 32. s1 = zcl_wasm_rt=>shr_u64( iv_val = s1 iv_shift = s2 ). s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = -11.
          IF zcl_wasm_rt=>lt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
          IF s1 <> 0. EXIT. ENDIF. " br_if 0
          s1 = p1. s1 = zcl_wasm_rt=>wrap_i64( s1 ). p0 = s1. s2 = p0. s2 = mem_ld_i32( s2 ). s3 = 1. s2 = s2 - s3. p0 = s2. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = p0. s2 = 0.
          IF s1 > s2. s1 = 1. ELSE. s1 = 0. ENDIF.
          IF s1 <> 0. EXIT. ENDIF. " br_if 0
          s1 = l6. s2 = p1. PERFORM f1384 USING s1 s2.
        ENDDO.
        s1 = l6. PERFORM f117 USING s1. s1 = l5. s2 = 8. s1 = s1 + s2. PERFORM f634 USING s1. s1 = l5. s1 = mem_ld_i32( s1 + 56 ). PERFORM f117 USING s1. s1 = l5. s1 = mem_ld_i32_8u( s1 + 8 ).
        IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
        s1 = l5. s1 = mem_ld_i32( s1 + 12 ).
        IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        lv_br = 2. EXIT. " br 2
      ENDDO.
      s1 = p0. s2 = 9. mem_st_i32_8( iv_addr = s1 iv_val = s2 ). s1 = l5. s2 = 8. s1 = s1 + s2. PERFORM f634 USING s1. s1 = l5. s1 = mem_ld_i32( s1 + 56 ). PERFORM f117 USING s1. s1 = l5. s1 = mem_ld_i32_8u( s1 + 8 ).
      IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s1 = l5. s1 = mem_ld_i32( s1 + 12 ).
      IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
    ENDDO.
    s1 = l5. s1 = mem_ld_i32( s1 + 16 ). PERFORM f125 USING s1.
  ENDDO.
  s1 = l5. s2 = -64. s1 = s1 - s2. gv_g0 = s1.
ENDFORM.

FORM f388 USING p0 TYPE i p1 TYPE i p2 TYPE i CHANGING rv TYPE i.
  DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE i. DATA l8 TYPE i. DATA l9 TYPE i. DATA l10 TYPE i. DATA l11 TYPE i. DATA l12 TYPE i. DATA l13 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i.
  DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i.
  DATA lv_br TYPE i. s0 = p1. s1 = 1. s0 = s0 - s1. l12 = s0. s0 = p0. s0 = mem_ld_i32( s0 + 4 ). l9 = s0. s0 = p0. s0 = mem_ld_i32( s0 ). l10 = s0. s0 = p0. s0 = mem_ld_i32( s0 + 8 ). l11 = s0.
  DO. " loop
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        s0 = p2. s1 = l3.
        IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        DO. " loop
          s0 = p1. s1 = l3. s0 = s0 + s1. l5 = s0.
          DO 1 TIMES. " block
            DO 1 TIMES. " block
              s0 = p2. s1 = l3. s0 = s0 - s1. l7 = s0. s1 = 8.
              IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0.
                DO 1 TIMES. " block
                  s0 = l5. s1 = 3. s0 = s0 + s1. s1 = -4. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). l6 = s0. s1 = l5. s0 = s0 - s1. l4 = s0.
                  IF s0 <> 0.
                    s0 = 0. p0 = s0.
                    DO. " loop
                      s0 = p0. s1 = l5. s0 = s0 + s1. s0 = mem_ld_i32_8u( s0 ). s1 = 10.
                      IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                      IF s0 <> 0. lv_br = 5. EXIT. ENDIF. " br_if 5
                      s0 = l4. s1 = p0. s2 = 1. s1 = s1 + s2. p0 = s1.
                      IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                      IF s0 <> 0. EXIT. ENDIF. " br_if 0
                    ENDDO.
                    s0 = l4. s1 = l7. s2 = 8. s1 = s1 - s2. p0 = s1.
                    IF zcl_wasm_rt=>le_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
                    IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
                    lv_br = 3. EXIT. " br 3
                  ELSE.
                  ENDIF.
                  s0 = l7. s1 = 8. s0 = s0 - s1. p0 = s0.
                ENDDO.
                DO. " loop
                  s0 = l6.
                  RAISE EXCEPTION TYPE cx_sy_program_error. " SIMD not supported
                  l13 = s0.
                  RAISE EXCEPTION TYPE cx_sy_program_error. " SIMD not supported
                  RAISE EXCEPTION TYPE cx_sy_program_error. " SIMD not supported
                  RAISE EXCEPTION TYPE cx_sy_program_error. " SIMD not supported
                  RAISE EXCEPTION TYPE cx_sy_program_error. " SIMD not supported
                  s1 = l13.
                  RAISE EXCEPTION TYPE cx_sy_program_error. " SIMD not supported
                  l13 = s1.
                  RAISE EXCEPTION TYPE cx_sy_program_error. " SIMD not supported
                  s2 = l13.
                  RAISE EXCEPTION TYPE cx_sy_program_error. " SIMD not supported
                  s1 = zcl_wasm_rt=>or32( iv_a = s1 iv_b = s2 ). s2 = -2139062144. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ).
                  IF s1 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
                  s1 = l6. s2 = 8. s1 = s1 + s2. l6 = s1. s1 = l4. s2 = 8. s1 = s1 + s2. l4 = s1. s2 = p0.
                  IF zcl_wasm_rt=>le_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
                  IF s1 <> 0. EXIT. ENDIF. " br_if 0
                ENDDO.
                lv_br = 1. EXIT. " br 1
              ELSE.
              ENDIF.
              s1 = p2. s2 = l3.
              IF s1 = s2. s1 = 1. ELSE. s1 = 0. ENDIF.
              IF s1 <> 0.
                s1 = p2. l3 = s1. lv_br = 4. EXIT. " br 4
              ELSE.
              ENDIF.
              s1 = 0. p0 = s1.
              DO. " loop
                s1 = p0. s2 = l5. s1 = s1 + s2. s1 = mem_ld_i32_8u( s1 ). s2 = 10.
                IF s1 = s2. s1 = 1. ELSE. s1 = 0. ENDIF.
                IF s1 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
                s1 = l7. s2 = p0. s3 = 1. s2 = s2 + s3. p0 = s2.
                IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
                IF s1 <> 0. EXIT. ENDIF. " br_if 0
              ENDDO.
              s1 = p2. l3 = s1. lv_br = 3. EXIT. " br 3
            ENDDO.
            s1 = l4. s2 = l7.
            IF s1 = s2. s1 = 1. ELSE. s1 = 0. ENDIF.
            IF s1 <> 0.
              s1 = p2. l3 = s1. lv_br = 3. EXIT. " br 3
            ELSE.
            ENDIF.
            s1 = l4. s2 = l5. s1 = s1 + s2. l6 = s1. s1 = p2. s2 = l4. s1 = s1 - s2. s2 = l3. s1 = s1 - s2. l7 = s1. s1 = 0. p0 = s1.
            DO 1 TIMES. " block
              DO. " loop
                s1 = p0. s2 = l6. s1 = s1 + s2. s1 = mem_ld_i32_8u( s1 ). s2 = 10.
                IF s1 = s2. s1 = 1. ELSE. s1 = 0. ENDIF.
                IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
                s1 = l7. s2 = p0. s3 = 1. s2 = s2 + s3. p0 = s2.
                IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
                IF s1 <> 0. EXIT. ENDIF. " br_if 0
              ENDDO.
              s1 = p2. l3 = s1. lv_br = 3. EXIT. " br 3
            ENDDO.
            s1 = p0. s2 = l4. s1 = s1 + s2. p0 = s1.
          ENDDO.
          s1 = p0. s2 = l3. s1 = s1 + s2. l6 = s1. s2 = 1. s1 = s1 + s2. l3 = s1.
          DO 1 TIMES. " block
            s1 = p2. s2 = l6.
            IF zcl_wasm_rt=>le_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
            IF s1 <> 0. EXIT. ENDIF. " br_if 0
            s1 = p0. s2 = l5. s1 = s1 + s2. s1 = mem_ld_i32_8u( s1 ). s2 = 10.
            IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
            IF s1 <> 0. EXIT. ENDIF. " br_if 0
            s1 = 0. l4 = s1. s1 = l3. l6 = s1. p0 = s1. lv_br = 3. EXIT. " br 3
          ENDDO.
          s1 = p2. s2 = l3.
          IF zcl_wasm_rt=>ge_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
          IF s1 <> 0. EXIT. ENDIF. " br_if 0
        ENDDO.
      ENDDO.
      s1 = 1. l4 = s1. s1 = p2. p0 = s1. s2 = l8. l6 = s2.
      IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. EXIT. ENDIF. " br_if 0
      s1 = 0. rv = s1. RETURN.
    ENDDO.
    DO 1 TIMES. " block
      s1 = l11. s1 = mem_ld_i32_8u( s1 ).
      IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. EXIT. ENDIF. " br_if 0
      s1 = l10. s2 = 1050360. s3 = 4. s4 = l9. s4 = mem_ld_i32( s4 + 12 ).
      DATA(lv_ci_func) = mt_tab0[ s4 + 1 ]. " call_indirect
      s1 = dispatch_t11( iv_idx = lv_ci_func p0 = s1 p1 = s2 p2 = s3 ).
      IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. EXIT. ENDIF. " br_if 0
      s1 = 1. rv = s1. RETURN.
    ENDDO.
    s1 = 0. l5 = s1. s1 = p0. s2 = l8.
    IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
    IF s1 <> 0.
      s1 = p0. s2 = l12. s1 = s1 + s2. s1 = mem_ld_i32_8u( s1 ). s2 = 10.
      IF s1 = s2. s1 = 1. ELSE. s1 = 0. ENDIF.
      l5 = s1.
    ELSE.
    ENDIF.
    s1 = p0. s2 = l8. s1 = s1 - s2. p0 = s1. s1 = p1. s2 = l8. s1 = s1 + s2. l7 = s1. s1 = l11. s2 = l5. mem_st_i32_8( iv_addr = s1 iv_val = s2 ). s1 = l6. l8 = s1. s1 = l10. s2 = l7. s3 = p0. s4 = l9. s4 = mem_ld_i32( s4 + 12 ).
    DATA(lv_ci_func) = mt_tab0[ s4 + 1 ]. " call_indirect
    s1 = dispatch_t11( iv_idx = lv_ci_func p0 = s1 p1 = s2 p2 = s3 ). p0 = s1. s2 = l4. s1 = zcl_wasm_rt=>or32( iv_a = s1 iv_b = s2 ).
    IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
    IF s1 <> 0. EXIT. ENDIF. " br_if 0
  ENDDO.
  s1 = p0. rv = s1.
ENDFORM.

FORM f389 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE i. DATA l8 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i.
  DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i.
  DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i.
  DATA s35 TYPE i. DATA s36 TYPE i. DATA s37 TYPE i. DATA s38 TYPE i. DATA s39 TYPE i. DATA s40 TYPE i. DATA s41 TYPE i. DATA s42 TYPE i. DATA s43 TYPE i. DATA s44 TYPE i. DATA s45 TYPE i. DATA s46 TYPE i. DATA s47 TYPE i. DATA s48 TYPE i.
  DATA s49 TYPE i. DATA s50 TYPE i. DATA s51 TYPE i. DATA s52 TYPE i. DATA s53 TYPE i. DATA s54 TYPE i. DATA s55 TYPE i. DATA s56 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 80. s0 = s0 - s1. l2 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          DO 1 TIMES. " block
            DO 1 TIMES. " block
              DO 1 TIMES. " block
                s0 = p0. s0 = mem_ld_i32( s0 ). l3 = s0. s1 = 2.
                IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                IF s0 <> 0.
                  s0 = l3.
                  IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
                  IF s0 <> 0.
                    s0 = 1. l4 = s0. s0 = p1. s0 = mem_ld_i32( s0 + 20 ). l3 = s0. s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s2 = p0. s2 = mem_ld_i32( s2 + 20 ). s3 = p1. s3 = mem_ld_i32( s3 + 24 ). s3 = mem_ld_i32( s3 + 12 ). p1 = s3.
                    DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
                    s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ).
                    IF s0 <> 0. lv_br = 8. EXIT. ENDIF. " br_if 8
                    lv_br = 7. EXIT. " br 7
                  ELSE.
                  ENDIF.
                  s0 = l2. s1 = p0. s2 = 4. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p1. s0 = mem_ld_i32( s0 + 28 ). s1 = l2. s2 = p1. mem_st_i32( iv_addr = s1 + 12 iv_val = s2 ). s1 = l2. s2 = 4294967296000000.
                  zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s2 iv_addr = s1 + 4 CHANGING cv_mem = mv_mem ). s1 = l2. s1 = zcl_wasm_rt=>extend_u32( s1 ). s2 = 146028888064. s1 = zcl_wasm_rt=>or64( iv_a = s1 iv_b = s2 ). l8 = s1. s1 = 4.
                  s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
                  IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
                  IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
                  s0 = l2. s1 = l8. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 40 CHANGING cv_mem = mv_mem ). s0 = l2. s1 = 1. mem_st_i32( iv_addr = s0 + 36 iv_val = s1 ). s0 = l2. s1 = 1.
                  mem_st_i32( iv_addr = s0 + 20 iv_val = s1 ). s0 = l2. s1 = 1115224. mem_st_i32( iv_addr = s0 + 16 iv_val = s1 ). s0 = l2. s1 = 1. mem_st_i32( iv_addr = s0 + 28 iv_val = s1 ). s0 = l2. s1 = 3.
                  mem_st_i32_8( iv_addr = s0 + 76 iv_val = s1 ). s0 = l2. s1 = 4. mem_st_i32( iv_addr = s0 + 72 iv_val = s1 ). s0 = l2. s1 = 32. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 64 CHANGING cv_mem = mv_mem ).
                  s0 = l2. s1 = 2. mem_st_i32( iv_addr = s0 + 56 iv_val = s1 ). s0 = l2. s1 = 2. mem_st_i32( iv_addr = s0 + 48 iv_val = s1 ). s0 = l2. s1 = l2. s2 = 48. s1 = s1 + s2. mem_st_i32( iv_addr = s0 + 32 iv_val = s1 ). s0 = l2.
                  s1 = l2. s2 = 40. s1 = s1 + s2. mem_st_i32( iv_addr = s0 + 24 iv_val = s1 ). s0 = l2. s1 = 4. s0 = s0 + s1. s1 = 1079348. s2 = l2. s3 = 16. s2 = s2 + s3. PERFORM f360 USING s0 s1 s2 CHANGING s0. lv_br = 2. EXIT. " br 2
                ELSE.
                ENDIF.
                s1 = p0. s1 = mem_ld_i32( s1 + 36 ). l3 = s1.
                IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
                IF s1 <> 0. lv_br = 6. EXIT. ENDIF. " br_if 6
                s1 = p0. s1 = mem_ld_i32( s1 + 32 ). p0 = s1.
                DO. " loop
                  s1 = l2. s2 = 48. s1 = s1 + s2. s2 = p0. s3 = l3. PERFORM f324 USING s1 s2 s3.
                  DO 1 TIMES. " block
                    DO 1 TIMES. " block
                      s1 = l2. s1 = mem_ld_i32( s1 + 48 ).
                      IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
                      IF s1 <> 0.
                        s1 = p1. s2 = l2. s2 = mem_ld_i32( s2 + 52 ). s3 = l2. s3 = mem_ld_i32( s3 + 56 ). PERFORM f244 USING s1 s2 s3 CHANGING s1.
                        IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
                        lv_br = 10. EXIT. " br 10
                      ELSE.
                      ENDIF.
                      s1 = l2. s1 = mem_ld_i32_8u( s1 + 57 ). l5 = s1. s1 = l2. s1 = mem_ld_i32_8u( s1 + 56 ). l6 = s1. s1 = l2. s1 = mem_ld_i32( s1 + 52 ). l7 = s1. s1 = p1. s2 = 1117236. s3 = 3. PERFORM f244 USING s1 s2 s3 CHANGING s1.
                      IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
                      IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
                    ENDDO.
                    s1 = 1. l4 = s1. lv_br = 8. EXIT. " br 8
                  ENDDO.
                  s1 = l6. s2 = 1. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ).
                  IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
                  IF s1 <> 0. lv_br = 7. EXIT. ENDIF. " br_if 7
                  s1 = l5. s2 = l7. s1 = s1 + s2. l5 = s1. s2 = l3.
                  IF zcl_wasm_rt=>le_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
                  IF s1 <> 0.
                    s1 = p0. s2 = l5. s1 = s1 + s2. p0 = s1. s1 = l3. s2 = l5. s1 = s1 - s2. l3 = s1.
                    IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
                    lv_br = 8. EXIT. " br 8
                  ELSE.
                  ENDIF.
                ENDDO.
                s1 = l5. s2 = l3. s3 = 1117836. PERFORM f1044 USING s1 s2 s3.
                RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
              ENDDO.
              s1 = l2. s2 = 1. mem_st_i32( iv_addr = s1 + 52 iv_val = s2 ). s1 = l2. s2 = 1115224. mem_st_i32( iv_addr = s1 + 48 iv_val = s2 ). s1 = l2. s2 = 1.
              zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s2 iv_addr = s1 + 60 CHANGING cv_mem = mv_mem ). s1 = l2. s2 = l8. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s2 iv_addr = s1 + 16 CHANGING cv_mem = mv_mem ). s1 = l2. s2 = l2.
              s3 = 16. s2 = s2 + s3. mem_st_i32( iv_addr = s1 + 56 iv_val = s2 ). s1 = l2. s2 = 4. s1 = s1 + s2. s2 = 1079348. s3 = l2. s4 = 48. s3 = s3 + s4. PERFORM f360 USING s1 s2 s3 CHANGING s1.
            ENDDO.
            l3 = s1. s2 = 0. s3 = l2. s3 = mem_ld_i32( s3 + 4 ). l4 = s3.
            IF s3 <> 0. s1 = s1. ELSE. s1 = s2. ENDIF.
            IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
            IF s1 <> 0.
              s1 = l3.
              IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
              IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
              lv_br = 3. EXIT. " br 3
            ELSE.
            ENDIF.
            s1 = p1. s1 = mem_ld_i32( s1 + 20 ). s2 = 1080652. s3 = 20. s4 = p1. s4 = mem_ld_i32( s4 + 24 ). s4 = mem_ld_i32( s4 + 12 ).
            DATA(lv_ci_func) = mt_tab0[ s4 + 1 ]. " call_indirect
            s1 = dispatch_t11( iv_idx = lv_ci_func p0 = s1 p1 = s2 p2 = s3 ).
            IF s1 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
            lv_br = 1. EXIT. " br 1
          ENDDO.
          s1 = l4.
          IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
          IF s1 <> 0. EXIT. ENDIF. " br_if 0
          s1 = 1080672. s2 = 55. s3 = l2. s4 = 48. s3 = s3 + s4. s4 = 1080728. s5 = 1080744. PERFORM f981 USING s1 s2 s3 s4 s5.
          RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
        ENDDO.
        s1 = p1. s1 = mem_ld_i32( s1 + 20 ). l3 = s1. s1 = p1. s1 = mem_ld_i32( s1 + 24 ). s1 = mem_ld_i32( s1 + 12 ). p1 = s1. lv_br = 1. EXIT. " br 1
      ENDDO.
      s1 = 1. l4 = s1. lv_br = 1. EXIT. " br 1
    ENDDO.
    s1 = l3. s2 = p0. s2 = mem_ld_i32( s2 + 24 ). s3 = p0. s3 = mem_ld_i32( s3 + 28 ). s4 = p1.
    DATA(lv_ci_func) = mt_tab0[ s4 + 1 ]. " call_indirect
    s1 = dispatch_t11( iv_idx = lv_ci_func p0 = s1 p1 = s2 p2 = s3 ). l4 = s1.
  ENDDO.
  s1 = l2. s2 = 80. s1 = s1 + s2. gv_g0 = s1. s1 = l4. rv = s1.
ENDFORM.

FORM f390 USING p0 TYPE i p1 TYPE i p2 TYPE i p3 TYPE int8 CHANGING rv TYPE i.
  DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE i. DATA l8 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i.
  DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i.
  DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i. DATA s36 TYPE i.
  DATA s37 TYPE i. DATA s38 TYPE i. DATA s39 TYPE i. DATA s40 TYPE i. DATA s41 TYPE i. DATA s42 TYPE i. DATA s43 TYPE i. DATA s44 TYPE i. DATA s45 TYPE i. DATA s46 TYPE i. DATA s47 TYPE i. DATA s48 TYPE i. DATA s49 TYPE i. DATA s50 TYPE i.
  DATA s51 TYPE i. DATA s52 TYPE i. DATA s53 TYPE i. DATA s54 TYPE i. DATA s55 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        s0 = p2. s1 = 142.
        IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = p0. s0 = mem_ld_i32( s0 + 16 ). l4 = s0. lv_br = 1. EXIT. " br 1
        ELSE.
        ENDIF.
        s0 = p0. s1 = 16. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). l4 = s0. s1 = 140. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). l5 = s0.
        IF s0 <> 0.
          s0 = l5. s0 = mem_ld_i32_8u( s0 + 40 ). s1 = 4. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        ELSE.
        ENDIF.
        s0 = p0. s1 = 1152358. s2 = 0. PERFORM f970 USING s0 s1 s2 CHANGING s0. s0 = -1. p2 = s0. s0 = p3. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
        IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        s0 = p3. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p1 = s0. s1 = p1. s1 = mem_ld_i32( s1 ). p1 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p1. s1 = 1.
        IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        s0 = p0. s1 = 16. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). s1 = p3. PERFORM f453 USING s0 s1. s0 = -1. rv = s0. RETURN.
      ENDDO.
      s0 = l4. s1 = 16. s0 = s0 + s1. s1 = 24. s2 = l4. s2 = mem_ld_i32( s2 ).
      DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
      s0 = dispatch_t7( iv_idx = lv_ci_func p0 = s0 p1 = s1 ). l4 = s0.
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = p0. s0 = mem_ld_i32( s0 + 16 ). p1 = s0. s0 = mem_ld_i32_8u( s0 + 136 ).
        IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = p1. s1 = 1. mem_st_i32_8( iv_addr = s0 + 136 iv_val = s1 ). s0 = p0. s1 = 1134898. s2 = 0. PERFORM f969 USING s0 s1 s2 CHANGING s0. s0 = p1. s1 = 0. mem_st_i32_8( iv_addr = s0 + 136 iv_val = s1 ).
        ELSE.
        ENDIF.
        s0 = -1. p2 = s0. s0 = p3. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
        IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        s0 = p3. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p1 = s0. s1 = p1. s1 = mem_ld_i32( s1 ). p1 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p1. s1 = 1.
        IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        lv_br = 2. EXIT. " br 2
      ELSE.
      ENDIF.
      s0 = l4. s1 = 1. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s0 = mem_ld_i32( s0 + 216 ). l6 = s0. s0 = l4. s1 = 4. s0 = s0 + s1. l5 = s0. s1 = 0.
      zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 12 CHANGING cv_mem = mv_mem ). s0 = l5. s1 = -9223372036854775808. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 4 CHANGING cv_mem = mv_mem ). s0 = l5.
      s1 = l6. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l4. s0 = zcl_wasm_rt=>extend_u32( s0 ). s1 = -47244640256. s0 = zcl_wasm_rt=>or64( iv_a = s0 iv_b = s1 ). l8 = s0. s0 = p3. s1 = -4294967296.
      s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = -47244640256.
      IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = p0. s1 = 1147476. s2 = 0. PERFORM f970 USING s0 s1 s2 CHANGING s0. s0 = -1. p2 = s0. s0 = l4. s1 = l4. s1 = mem_ld_i32( s1 ). p1 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p1. s1 = 1.
        IF s0 <= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = l8. PERFORM f453 USING s0 s1.
        ELSE.
        ENDIF.
        s0 = p3. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
        IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        s0 = p3. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p1 = s0. s1 = p1. s1 = mem_ld_i32( s1 ). p1 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p1. s1 = 1.
        IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        lv_br = 2. EXIT. " br 2
      ELSE.
      ENDIF.
      s0 = p3. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l7 = s0. s1 = 4. s0 = s0 + s1. l6 = s0.
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          DO 1 TIMES. " block
            DO 1 TIMES. " block
              DO 1 TIMES. " block
                s0 = p2. s1 = 141. s0 = s0 - s1.
                CASE s0.
                  WHEN 0. lv_br = 1. EXIT.
                  WHEN 1. EXIT.
                  WHEN 2. lv_br = 3. EXIT.
                  WHEN 3. lv_br = 3. EXIT.
                  WHEN OTHERS. lv_br = 2. EXIT.
                ENDCASE.
              ENDDO.
              s0 = l5. s1 = l6. PERFORM f832 USING s0 s1 CHANGING s0. p2 = s0. lv_br = 3. EXIT. " br 3
            ENDDO.
            s0 = l5. s1 = l6. PERFORM f832 USING s0 s1 CHANGING s0. p2 = s0. s0 = l4. s1 = 8. s0 = s0 + s1. l4 = s0. s1 = l4. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = zcl_wasm_rt=>xor32( iv_a = s1 iv_b = s2 ).
            mem_st_i32( iv_addr = s0 iv_val = s1 ). lv_br = 2. EXIT. " br 2
          ENDDO.
          RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
        ENDDO.
        s0 = l5. s1 = l6. s2 = p2. s3 = 1. s2 = zcl_wasm_rt=>shl32( iv_val = s2 iv_shift = s3 ). s3 = 287. s2 = s2 - s3. s2 = s2. " i64.extend_i32_s (noop in ABAP - sign preserved) PERFORM f895 USING s0 s1 s2 CHANGING s0. p2 = s0.
      ENDDO.
      s0 = l7. s1 = l7. s1 = mem_ld_i32( s1 ). l4 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l4. s1 = 1.
      IF s0 <= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = p3. PERFORM f453 USING s0 s1.
      ELSE.
      ENDIF.
      s0 = p2.
      IF s0 <> 0.
        s0 = p0. s1 = l8. PERFORM f1164 USING s0 s1. s0 = p0. s1 = p2. PERFORM f1013 USING s0 s1. s0 = -1. rv = s0. RETURN.
      ELSE.
      ENDIF.
      s0 = p1. s1 = l8. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ). s0 = 0. p2 = s0.
    ENDDO.
    s0 = p2. rv = s0. RETURN.
  ENDDO.
  s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = p3. PERFORM f453 USING s0 s1. s0 = -1. rv = s0.
ENDFORM.

FORM f391 USING p0 TYPE int8 CHANGING rv TYPE i.
  DATA l1 TYPE i. DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE i. DATA l8 TYPE f. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i.
  DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          DO 1 TIMES. " block
            DO 1 TIMES. " block
              DO 1 TIMES. " block
                s0 = 7. s1 = p0. s2 = 32. s1 = zcl_wasm_rt=>shr_u64( iv_val = s1 iv_shift = s2 ). s1 = zcl_wasm_rt=>wrap_i64( s1 ). l1 = s1. s2 = l1. s3 = 7. s2 = s2 - s3. s3 = -18.
                IF zcl_wasm_rt=>lt_u32( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
                IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
                l7 = s0. s1 = 8. s0 = s0 + s1.
                CASE s0.
                  WHEN 0. lv_br = 2. EXIT.
                  WHEN 1. lv_br = 1. EXIT.
                  WHEN 2. lv_br = 3. EXIT.
                  WHEN 3. lv_br = 3. EXIT.
                  WHEN 4. lv_br = 3. EXIT.
                  WHEN 5. lv_br = 3. EXIT.
                  WHEN 6. lv_br = 3. EXIT.
                  WHEN 7. lv_br = 2. EXIT.
                  WHEN 8. lv_br = 4. EXIT.
                  WHEN 9. EXIT.
                  WHEN 10. lv_br = 3. EXIT.
                  WHEN 11. lv_br = 3. EXIT.
                  WHEN 12. lv_br = 3. EXIT.
                  WHEN 13. lv_br = 3. EXIT.
                  WHEN 14. lv_br = 3. EXIT.
                  WHEN 15. lv_br = 5. EXIT.
                  WHEN OTHERS. lv_br = 3. EXIT.
                ENDCASE.
              ENDDO.
              s0 = p0. s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = l7. s0 = zcl_wasm_rt=>xor32( iv_a = s0 iv_b = s1 ). rv = s0. RETURN.
            ENDDO.
            s0 = p0. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l5 = s0. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 4 ). p0 = s0. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l1 = s0. s1 = 2147483647.
            s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). l2 = s0. s0 = p0. s1 = 2147483648. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 0.
            IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0.
              s0 = l2.
              IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
              s0 = l1. s1 = 3. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). l4 = s0.
              DO 1 TIMES. " block
                s0 = l2. s1 = 4.
                IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
                IF s0 <> 0.
                  s0 = 0. l2 = s0. lv_br = 1. EXIT. " br 1
                ELSE.
                ENDIF.
                s0 = l5. s1 = 22. s0 = s0 + s1. l1 = s0. s0 = l2. s1 = l4. s0 = s0 - s1. l6 = s0. s0 = 0. l2 = s0.
                DO. " loop
                  s0 = l1. s0 = mem_ld_i32_16u( s0 ). s1 = l1. s2 = 2. s1 = s1 - s2. s1 = mem_ld_i32_16u( s1 ). s2 = l1. s3 = 4. s2 = s2 - s3. s2 = mem_ld_i32_16u( s2 ). s3 = l1. s4 = 6. s3 = s3 - s4. s3 = mem_ld_i32_16u( s3 ). s4 = l3.
                  s5 = 263. s4 = s4 * s5. s3 = s3 + s4. s4 = 263. s3 = s3 * s4. s2 = s2 + s3. s3 = 263. s2 = s2 * s3. s1 = s1 + s2. s2 = 263. s1 = s1 * s2. s0 = s0 + s1. l3 = s0. s0 = l1. s1 = 8. s0 = s0 + s1. l1 = s0. s0 = l6. s1 = l2.
                  s2 = 4. s1 = s1 + s2. l2 = s1.
                  IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                  IF s0 <> 0. EXIT. ENDIF. " br_if 0
                ENDDO.
              ENDDO.
              s0 = l4.
              IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
              s0 = l2. s1 = 1. s0 = zcl_wasm_rt=>shl32( iv_val = s0 iv_shift = s1 ). s1 = l5. s0 = s0 + s1. s1 = 16. s0 = s0 + s1. l1 = s0.
              DO. " loop
                s0 = l1. s0 = mem_ld_i32_16u( s0 ). s1 = l3. s2 = 263. s1 = s1 * s2. s0 = s0 + s1. l3 = s0. s0 = l1. s1 = 2. s0 = s0 + s1. l1 = s0. s0 = l4. s1 = 1. s0 = s0 - s1. l4 = s0.
                IF s0 <> 0. EXIT. ENDIF. " br_if 0
              ENDDO.
              lv_br = 2. EXIT. " br 2
            ELSE.
            ENDIF.
            s0 = l2.
            IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
            s0 = l1. s1 = 3. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). l4 = s0.
            DO 1 TIMES. " block
              s0 = l2. s1 = 4.
              IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0.
                s0 = 0. l1 = s0. lv_br = 1. EXIT. " br 1
              ELSE.
              ENDIF.
              s0 = l2. s1 = l4. s0 = s0 - s1. l6 = s0. s0 = 0. l1 = s0.
              DO. " loop
                s0 = l1. s1 = l5. s0 = s0 + s1. l2 = s0. s1 = 16. s0 = s0 + s1. s0 = mem_ld_i32_8u( s0 ). s1 = l3. s2 = 263. s1 = s1 * s2. s0 = s0 + s1. s1 = 263. s0 = s0 * s1. s1 = l2. s2 = 17. s1 = s1 + s2. s1 = mem_ld_i32_8u( s1 ).
                s0 = s0 + s1. s1 = 263. s0 = s0 * s1. s1 = l2. s2 = 18. s1 = s1 + s2. s1 = mem_ld_i32_8u( s1 ). s0 = s0 + s1. s1 = 263. s0 = s0 * s1. s1 = l2. s2 = 19. s1 = s1 + s2. s1 = mem_ld_i32_8u( s1 ). s0 = s0 + s1. l3 = s0. s0 = l6.
                s1 = l1. s2 = 4. s1 = s1 + s2. l1 = s1.
                IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                IF s0 <> 0. EXIT. ENDIF. " br_if 0
              ENDDO.
            ENDDO.
            s0 = l4.
            IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
            s0 = l1. s1 = l5. s0 = s0 + s1. s1 = 16. s0 = s0 + s1. l1 = s0.
            DO. " loop
              s0 = l1. s0 = mem_ld_i32_8u( s0 ). s1 = l3. s2 = 263. s1 = s1 * s2. s0 = s0 + s1. l3 = s0. s0 = l1. s1 = 1. s0 = s0 + s1. l1 = s0. s0 = l4. s1 = 1. s0 = s0 - s1. l4 = s0.
              IF s0 <> 0. EXIT. ENDIF. " br_if 0
            ENDDO.
            lv_br = 1. EXIT. " br 1
          ENDDO.
          s0 = p0. s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = 3163. s0 = s0 * s1. l3 = s0.
        ENDDO.
        s0 = l3. s1 = l7. s0 = zcl_wasm_rt=>xor32( iv_a = s0 iv_b = s1 ). rv = s0. RETURN.
      ENDDO.
      s0 = p0. s0 = zcl_wasm_rt=>wrap_i64( s0 ). s0 = s0. " convert to f64 s0 = zcl_wasm_rt=>reinterpret_f64_i64( s0 ). p0 = s0. lv_br = 1. EXIT. " br 1
    ENDDO.
    s0 = p0. s1 = 9221120288580698112. s0 = s0 + s1. p0 = s0. s0 = zcl_wasm_rt=>reinterpret_i64_f64( s0 ). l8 = s0. s1 = l8.
    IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = 9221120237041090560. p0 = s0.
  ENDDO.
  s0 = p0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s1 = p0. s0 = zcl_wasm_rt=>xor64( iv_a = s0 iv_b = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = 3163. s0 = s0 * s1. s1 = 7.
  s0 = zcl_wasm_rt=>xor32( iv_a = s0 iv_b = s1 ). rv = s0.
ENDFORM.

FORM f392 USING p0 TYPE i p1 TYPE i p2 TYPE i CHANGING rv TYPE i.
  DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE int8. DATA l7 TYPE int8. DATA l8 TYPE f. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i.
  DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i.
  DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i.
  DATA s36 TYPE i. DATA s37 TYPE i. DATA s38 TYPE i. DATA s39 TYPE i. DATA s40 TYPE i. DATA s41 TYPE i. DATA s42 TYPE i. DATA s43 TYPE i. DATA s44 TYPE i. DATA s45 TYPE i. DATA s46 TYPE i. DATA s47 TYPE i. DATA s48 TYPE i. DATA s49 TYPE i.
  DATA s50 TYPE i. DATA s51 TYPE i. DATA s52 TYPE i. DATA s53 TYPE i. DATA s54 TYPE i. DATA s55 TYPE i. DATA s56 TYPE i. DATA s57 TYPE i. DATA s58 TYPE i. DATA s59 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l4 = s0.
  gv_g0 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          DO 1 TIMES. " block
            DO 1 TIMES. " block
              DO 1 TIMES. " block
                DO 1 TIMES. " block
                  s0 = p1. s1 = 8. s0 = s0 - s1. p1 = s0. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). l6 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). l3 = s0.
                  s1 = 7. s0 = s0 - s1. s1 = -18.
                  IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
                  IF s0 <> 0. EXIT. ENDIF. " br_if 0
                  DO 1 TIMES. " block
                    s0 = l6. s1 = -4294967296.
                    IF zcl_wasm_rt=>lt_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
                    IF s0 <> 0. EXIT. ENDIF. " br_if 0
                    s0 = p0. s1 = l4. s2 = 8. s1 = s1 + s2. s2 = l6. s3 = p2. PERFORM f536 USING s0 s1 s2 s3 CHANGING s0. l5 = s0. s1 = 0.
                    IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                    IF s0 <> 0. lv_br = 7. EXIT. ENDIF. " br_if 7
                    s0 = l5.
                    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
                    IF s0 <> 0. EXIT. ENDIF. " br_if 0
                    DO 1 TIMES. " block
                      s0 = l3. s1 = -11.
                      IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
                      IF s0 <> 0. EXIT. ENDIF. " br_if 0
                      s0 = l6. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p2 = s0. s1 = p2. s1 = mem_ld_i32( s1 ). p2 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p2. s1 = 1.
                      IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                      IF s0 <> 0. EXIT. ENDIF. " br_if 0
                      s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = l6. PERFORM f453 USING s0 s1.
                    ENDDO.
                    s0 = p1. s1 = l4. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 8 ). zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ). s0 = 0. lv_br = 8. EXIT. " br 8
                  ENDDO.
                  s1 = p0. s2 = l6. s3 = 1. PERFORM f287 USING s1 s2 s3 CHANGING s1. l6 = s1. s2 = -4294967296. s1 = zcl_wasm_rt=>and64( iv_a = s1 iv_b = s2 ). s2 = 25769803776.
                  IF s1 = s2. s1 = 1. ELSE. s1 = 0. ENDIF.
                  IF s1 <> 0. lv_br = 5. EXIT. ENDIF. " br_if 5
                  DO 1 TIMES. " block
                    DO 1 TIMES. " block
                      DO 1 TIMES. " block
                        DO 1 TIMES. " block
                          s1 = l6. s2 = 32. s1 = zcl_wasm_rt=>shr_u64( iv_val = s1 iv_shift = s2 ). s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = 11. s1 = s1 + s2.
                          CASE s1.
                            WHEN 0. lv_br = 3. EXIT.
                            WHEN 1. lv_br = 1. EXIT.
                            WHEN 2. lv_br = 2. EXIT.
                            WHEN 3. lv_br = 4. EXIT.
                            WHEN 4. lv_br = 4. EXIT.
                            WHEN 5. lv_br = 4. EXIT.
                            WHEN 6. lv_br = 4. EXIT.
                            WHEN 7. lv_br = 4. EXIT.
                            WHEN 8. lv_br = 4. EXIT.
                            WHEN 9. lv_br = 4. EXIT.
                            WHEN 10. lv_br = 4. EXIT.
                            WHEN 11. EXIT.
                            WHEN OTHERS. lv_br = 4. EXIT.
                          ENDCASE.
                        ENDDO.
                        s1 = l6. s1 = zcl_wasm_rt=>extend32s_i64( s1 ). l7 = s1.
                        DO 1 TIMES. " block
                          DO 1 TIMES. " block
                            DO 1 TIMES. " block
                              DO 1 TIMES. " block
                                s1 = p2. s2 = 141. s1 = s1 - s2.
                                CASE s1.
                                  WHEN 0. EXIT.
                                  WHEN 1. lv_br = 2. EXIT.
                                  WHEN 2. lv_br = 1. EXIT.
                                  WHEN 3. lv_br = 1. EXIT.
                                  WHEN OTHERS. lv_br = 8. EXIT.
                                ENDCASE.
                              ENDDO.
                              s1 = l6. s2 = 32. s1 = zcl_wasm_rt=>shl64( iv_val = s1 iv_shift = s2 ).
                              IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
                              IF s1 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
                              s1 = 0. s2 = l7. s1 = s1 - s2. l7 = s1. lv_br = 1. EXIT. " br 1
                            ENDDO.
                            s1 = l7. s2 = p2. s3 = 1. s2 = zcl_wasm_rt=>shl32( iv_val = s2 iv_shift = s3 ). s3 = 287. s2 = s2 - s3. s2 = s2. " i64.extend_i32_s (noop in ABAP - sign preserved) s1 = s1 + s2. l7 = s1.
                          ENDDO.
                          s1 = p1. s2 = l7. s3 = 2147483648. s2 = s2 + s3. s3 = 4294967295.
                          IF zcl_wasm_rt=>le_u64( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
                          IF s2 <> 0.
                            s2 = l7. s3 = 4294967295. s2 = zcl_wasm_rt=>and64( iv_a = s2 iv_b = s3 ).
                          ELSE.
                            s3 = -51539607552. s4 = l7. s4 = s4. " convert to f64 s4 = zcl_wasm_rt=>reinterpret_f64_i64( s4 ). l6 = s4. s5 = 9221120288580698112. s4 = s4 - s5. s5 = l6. s6 = 9223372036854775807.
                            s5 = zcl_wasm_rt=>and64( iv_a = s5 iv_b = s6 ). s6 = 9218868437227405312.
                            IF zcl_wasm_rt=>gt_u64( iv_a = s5 iv_b = s6 ) = abap_true. s5 = 1. ELSE. s5 = 0. ENDIF.
                            IF s5 <> 0. s3 = s3. ELSE. s3 = s4. ENDIF.
                          ENDIF.
                          zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s3 iv_addr = s2 + 0 CHANGING cv_mem = mv_mem ). s2 = 0. lv_br = 11. EXIT. " br 11
                        ENDDO.
                        s3 = p1. s4 = 2251748274077696. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s4 iv_addr = s3 + 0 CHANGING cv_mem = mv_mem ). s3 = 0. lv_br = 10. EXIT. " br 10
                      ENDDO.
                      s4 = p0. s4 = mem_ld_i32( s4 + 16 ). l3 = s4. lv_br = 6. EXIT. " br 6
                    ENDDO.
                    s4 = p0. s5 = p1. s6 = p2. s7 = l6. s8 = p0. s8 = mem_ld_i32( s8 + 16 ). s9 = 324. s8 = s8 + s9. s8 = mem_ld_i32( s8 ).
                    DATA(lv_ci_func) = mt_tab0[ s8 + 1 ]. " call_indirect
                    s4 = dispatch_t30( iv_idx = lv_ci_func p0 = s4 p1 = s5 p2 = s6 p3 = s7 ).
                    IF s4 <> 0. lv_br = 6. EXIT. ENDIF. " br_if 6
                    s4 = 0. lv_br = 8. EXIT. " br 8
                  ENDDO.
                  s5 = p0. s6 = p1. s7 = p2. s8 = l6. s9 = p0. s9 = mem_ld_i32( s9 + 16 ). s10 = 352. s9 = s9 + s10. s9 = mem_ld_i32( s9 ).
                  DATA(lv_ci_func) = mt_tab0[ s9 + 1 ]. " call_indirect
                  s5 = dispatch_t30( iv_idx = lv_ci_func p0 = s5 p1 = s6 p2 = s7 p3 = s8 ).
                  IF s5 <> 0. lv_br = 5. EXIT. ENDIF. " br_if 5
                  s5 = 0. lv_br = 7. EXIT. " br 7
                ENDDO.
                s6 = p0. s7 = 16. s6 = s6 + s7. s6 = mem_ld_i32( s6 ). l3 = s6. s7 = 140. s6 = s6 + s7. s6 = mem_ld_i32( s6 ). l5 = s6.
                IF s6 <> 0.
                  s6 = l5. s6 = mem_ld_i32_8u( s6 + 40 ). s7 = 4. s6 = zcl_wasm_rt=>and32( iv_a = s6 iv_b = s7 ).
                  IF s6 <> 0. lv_br = 4. EXIT. ENDIF. " br_if 4
                ELSE.
                ENDIF.
                s6 = l6. s7 = 9221120288580698112. s6 = s6 + s7. s6 = zcl_wasm_rt=>reinterpret_i64_f64( s6 ). l8 = s6.
                DO 1 TIMES. " block
                  s6 = p2. s7 = 141. s6 = s6 - s7.
                  CASE s6.
                    WHEN 0. EXIT.
                    WHEN 1. lv_br = 3. EXIT.
                    WHEN 2. lv_br = 2. EXIT.
                    WHEN 3. lv_br = 2. EXIT.
                    WHEN OTHERS. lv_br = 1. EXIT.
                  ENDCASE.
                ENDDO.
                s6 = l8. s6 = - s6. l8 = s6. lv_br = 2. EXIT. " br 2
              ENDDO.
              RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
            ENDDO.
            s6 = p2. s7 = 1. s6 = zcl_wasm_rt=>shl32( iv_val = s6 iv_shift = s7 ). s7 = 287. s6 = s6 - s7. s6 = s6. " convert to f64 s7 = l8. s6 = s6 + s7. l8 = s6.
          ENDDO.
          s6 = p1. s7 = -51539607552. s8 = l8. s8 = zcl_wasm_rt=>reinterpret_f64_i64( s8 ). l6 = s8. s9 = 9221120288580698112. s8 = s8 - s9. s9 = l6. s10 = 9223372036854775807. s9 = zcl_wasm_rt=>and64( iv_a = s9 iv_b = s10 ).
          s10 = 9218868437227405312.
          IF zcl_wasm_rt=>gt_u64( iv_a = s9 iv_b = s10 ) = abap_true. s9 = 1. ELSE. s9 = 0. ENDIF.
          IF s9 <> 0. s7 = s7. ELSE. s7 = s8. ENDIF.
          zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s7 iv_addr = s6 + 0 CHANGING cv_mem = mv_mem ). s6 = 0. lv_br = 3. EXIT. " br 3
        ENDDO.
        s7 = p0. s8 = p1. s9 = p2. s10 = l6. s11 = l3. s12 = 296. s11 = s11 + s12. s11 = mem_ld_i32( s11 ).
        DATA(lv_ci_func) = mt_tab0[ s11 + 1 ]. " call_indirect
        s7 = dispatch_t30( iv_idx = lv_ci_func p0 = s7 p1 = s8 p2 = s9 p3 = s10 ).
        IF s7 <> 0. EXIT. ENDIF. " br_if 0
        s7 = 0. lv_br = 2. EXIT. " br 2
      ENDDO.
      s8 = p1. s9 = 12884901888. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s9 iv_addr = s8 + 0 CHANGING cv_mem = mv_mem ).
    ENDDO.
    s8 = -1.
  ENDDO.
  s9 = l4. s10 = 16. s9 = s9 + s10. gv_g0 = s9. rv = s8.
ENDFORM.

FORM f393 USING p0 TYPE i p1 TYPE int8.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i.
  DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i.
  DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i.
  DATA s36 TYPE i. DATA s37 TYPE i. DATA s38 TYPE i. DATA s39 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    s0 = p1. s1 = -4294967296.
    IF zcl_wasm_rt=>lt_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l3 = s0. s0 = mem_ld_i32_16u( s0 + 6 ). s1 = 49.
    IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l3. s0 = mem_ld_i32( s0 + 32 ). l5 = s0.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s1 = 16. s0 = s0 + s1. l6 = s0. s0 = l5. s1 = 8. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). l3 = s0. s1 = l5. s2 = 4. s1 = s1 + s2. l7 = s1.
    IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      DO. " loop
        s0 = l3. l4 = s0. s0 = mem_ld_i32( s0 + 4 ). l3 = s0.
        DO 1 TIMES. " block
          s0 = l4. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 8 ). p1 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
          IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l2 = s0. s1 = l2. s1 = mem_ld_i32( s1 ). l2 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l2. s1 = 1.
          IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = p0. s1 = p1. PERFORM f453 USING s0 s1.
        ENDDO.
        DO 1 TIMES. " block
          s0 = l4. s1 = 16. s0 = s0 + s1. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). p1 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
          IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l2 = s0. s1 = l2. s1 = mem_ld_i32( s1 ). l2 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l2. s1 = 1.
          IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = p0. s1 = p1. PERFORM f453 USING s0 s1.
        ENDDO.
        DO 1 TIMES. " block
          s0 = l4. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 24 ). p1 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
          IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l2 = s0. s1 = l2. s1 = mem_ld_i32( s1 ). l2 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l2. s1 = 1.
          IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = p0. s1 = p1. PERFORM f453 USING s0 s1.
        ENDDO.
        s0 = l6. s1 = l4. s2 = p0. s2 = mem_ld_i32( s2 + 4 ).
        DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
        dispatch_t6( iv_idx = lv_ci_func p0 = s0 p1 = s1 ). s0 = l3. s1 = l7.
        IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
      ENDDO.
    ELSE.
    ENDIF.
    s0 = l5. s1 = 16. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). l3 = s0. s1 = l5. s2 = 12. s1 = s1 + s2. l7 = s1.
    IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      DO. " loop
        s0 = l3. l4 = s0. s0 = mem_ld_i32( s0 + 4 ). l3 = s0.
        DO 1 TIMES. " block
          s0 = l4. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 8 ). p1 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
          IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l2 = s0. s1 = l2. s1 = mem_ld_i32( s1 ). l2 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l2. s1 = 1.
          IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = p0. s1 = p1. PERFORM f453 USING s0 s1.
        ENDDO.
        DO 1 TIMES. " block
          s0 = l4. s1 = 16. s0 = s0 + s1. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). p1 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
          IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l2 = s0. s1 = l2. s1 = mem_ld_i32( s1 ). l2 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l2. s1 = 1.
          IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = p0. s1 = p1. PERFORM f453 USING s0 s1.
        ENDDO.
        DO 1 TIMES. " block
          s0 = l4. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 24 ). p1 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
          IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l2 = s0. s1 = l2. s1 = mem_ld_i32( s1 ). l2 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l2. s1 = 1.
          IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = p0. s1 = p1. PERFORM f453 USING s0 s1.
        ENDDO.
        s0 = l6. s1 = l4. s2 = p0. s2 = mem_ld_i32( s2 + 4 ).
        DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
        dispatch_t6( iv_idx = lv_ci_func p0 = s0 p1 = s1 ). s0 = l3. s1 = l7.
        IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
      ENDDO.
    ELSE.
    ENDIF.
    DO 1 TIMES. " block
      s0 = l5. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 24 ). p1 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
      IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l3 = s0. s1 = l3. s1 = mem_ld_i32( s1 ). l3 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l3. s1 = 1.
      IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p0. s1 = p1. PERFORM f453 USING s0 s1.
    ENDDO.
    s0 = l6. s1 = l5. s2 = p0. s2 = mem_ld_i32( s2 + 4 ).
    DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
    dispatch_t6( iv_idx = lv_ci_func p0 = s0 p1 = s1 ).
  ENDDO.
ENDFORM.

FORM f394 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i p4 TYPE i CHANGING rv TYPE int8.
  DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE int8. DATA l8 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i.
  DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i.
  DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i. DATA s36 TYPE i. DATA s37 TYPE i.
  DATA s38 TYPE i. DATA s39 TYPE i. DATA s40 TYPE i. DATA s41 TYPE i. DATA s42 TYPE i. DATA s43 TYPE i. DATA s44 TYPE i. DATA s45 TYPE i. DATA s46 TYPE i. DATA s47 TYPE i. DATA s48 TYPE i. DATA s49 TYPE i. DATA s50 TYPE i. DATA s51 TYPE i.
  DATA s52 TYPE i. DATA s53 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. p2 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    s0 = p1. s1 = -4294967297.
    IF zcl_wasm_rt=>le_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p0. s1 = 1137529. s2 = 0. PERFORM f970 USING s0 s1 s2 CHANGING s0. s0 = 25769803776. l7 = s0. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    DO 1 TIMES. " block
      s0 = p4.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). l7 = s0. s1 = -4294967296.
      IF zcl_wasm_rt=>lt_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = l7. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l5 = s0. s0 = mem_ld_i32_16u( s0 + 6 ). s1 = 49.
      IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = l5. s0 = mem_ld_i32( s0 + 32 ).
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p0. s1 = l7. s2 = 62. s3 = l7. s4 = 0. PERFORM f192 USING s0 s1 s2 s3 s4 CHANGING s0. l7 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 25769803776.
      IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = l7. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
      IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      l5 = s0.
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = l7. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l6 = s0. s1 = l6. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
      ELSE.
      ENDIF.
      s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l6 = s0. s1 = l6. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s1 = l7. s2 = p1. s3 = 1. PERFORM f199 USING s0 s1 s2 s3 CHANGING s0.
      DO 1 TIMES. " block
        s1 = l5.
        IF s1 <> 0. EXIT. ENDIF. " br_if 0
        s1 = l7. s1 = zcl_wasm_rt=>wrap_i64( s1 ). l5 = s1. s2 = l5. s2 = mem_ld_i32( s2 ). l5 = s2. s3 = 1. s2 = s2 - s3. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = l5. s2 = 1.
        IF s1 > s2. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0. EXIT. ENDIF. " br_if 0
        s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s2 = l7. PERFORM f453 USING s1 s2.
      ENDDO.
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). l7 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
      IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = l7. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p0 = s0. s1 = p0. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). lv_br = 1. EXIT. " br 1
    ENDDO.
    DO 1 TIMES. " block
      s0 = p0. s1 = p2. s2 = p1. PERFORM f366 USING s0 s1 s2 CHANGING s0. p1 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 25769803776.
      IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p0. s1 = p2. s2 = p4. s3 = 3. s2 = zcl_wasm_rt=>shl32( iv_val = s2 iv_shift = s3 ). s1 = s1 + s2. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 0 ). s2 = 12884901888. s3 = 12884901888. s4 = 1. s5 = p3. s6 = 2.
      PERFORM f0 USING s0 s1 s2 s3 s4 s5 s6 CHANGING s0. l7 = s0.
      DO 1 TIMES. " block
        s0 = p2. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). l8 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
        IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = l8. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p3 = s0. s1 = p3. s1 = mem_ld_i32( s1 ). p3 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p3. s1 = 1.
        IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = l8. PERFORM f453 USING s0 s1.
      ENDDO.
      DO 1 TIMES. " block
        s0 = p2. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 8 ). l8 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
        IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = l8. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p3 = s0. s1 = p3. s1 = mem_ld_i32( s1 ). p3 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p3. s1 = 1.
        IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = l8. PERFORM f453 USING s0 s1.
      ENDDO.
      s0 = l7. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 25769803776.
      IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = p1. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
        IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
        s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p3 = s0. s1 = p3. s1 = mem_ld_i32( s1 ). p3 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p3. s1 = 1.
        IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
        s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = p1. PERFORM f453 USING s0 s1. lv_br = 2. EXIT. " br 2
      ELSE.
      ENDIF.
      s0 = l7. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
      IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = l7. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p3 = s0. s1 = p3. s1 = mem_ld_i32( s1 ). p3 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p3. s1 = 1.
      IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = l7. PERFORM f453 USING s0 s1.
    ENDDO.
    s0 = p1. l7 = s0.
  ENDDO.
  s0 = p2. s1 = 16. s0 = s0 + s1. gv_g0 = s0. s0 = l7. rv = s0.
ENDFORM.

FORM f395 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i CHANGING rv TYPE int8.
  DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE i. DATA l8 TYPE i. DATA l9 TYPE int8. DATA l10 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i.
  DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i.
  DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i.
  DATA s35 TYPE i. DATA s36 TYPE i. DATA s37 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = -64. s0 = s0 + s1. l4 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      s0 = p1. s1 = -4294967296.
      IF zcl_wasm_rt=>ge_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l6 = s0. s0 = mem_ld_i32_16u( s0 + 6 ). s1 = 21. s0 = s0 - s1. s1 = 65535. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = 11.
        IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      ELSE.
      ENDIF.
      s0 = l4. s1 = 1135229. mem_st_i32( iv_addr = s0 + 16 iv_val = s1 ). s0 = p0. s1 = 1139205. s2 = l4. s3 = 16. s2 = s2 + s3. PERFORM f970 USING s0 s1 s2 CHANGING s0. s0 = 25769803776. l10 = s0. lv_br = 1. EXIT. " br 1
    ENDDO.
    s0 = l6. s1 = 40. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). p2 = s0. s0 = p3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). l9 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ).
    s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
    IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = l9. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l5 = s0. s1 = l5. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
    ELSE.
    ENDIF.
    s0 = 25769803776. l10 = s0. s0 = p0. s1 = l4. s2 = 28. s1 = s1 + s2. s2 = l9. PERFORM f684 USING s0 s1 s2 CHANGING s0.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        s0 = l4. s0 = mem_ld_i32( s0 + 28 ). l7 = s0. s1 = 0.
        IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = p2. s1 = l7. s0 = s0 + s1. l5 = s0. s1 = 0. s2 = l5. s3 = 0.
          IF s2 > s3. s2 = 1. ELSE. s2 = 0. ENDIF.
          IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
          l5 = s0. lv_br = 1. EXIT. " br 1
        ELSE.
        ENDIF.
        s0 = p2. l5 = s0. s0 = p2. s1 = l7.
        IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      ENDDO.
      s0 = l5. l7 = s0.
    ENDDO.
    s0 = l4. s1 = p2. mem_st_i32( iv_addr = s0 + 24 iv_val = s1 ).
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        s0 = p3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 8 ). l9 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 12884901888.
        IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = l9. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
        IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = l9. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p3 = s0. s1 = p3. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
        ELSE.
        ENDIF.
        s0 = p0. s1 = l4. s2 = 24. s1 = s1 + s2. s2 = l9. PERFORM f684 USING s0 s1 s2 CHANGING s0.
        IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
        s0 = l4. s0 = mem_ld_i32( s0 + 24 ). p3 = s0. s1 = 0.
        IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = p2. s1 = p3. s0 = s0 + s1. p2 = s0. s1 = 0. s2 = p2. s3 = 0.
          IF s2 > s3. s2 = 1. ELSE. s2 = 0. ENDIF.
          IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
          p2 = s0. lv_br = 1. EXIT. " br 1
        ELSE.
        ENDIF.
        s0 = p2. s1 = p3.
        IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      ENDDO.
      s0 = p2. p3 = s0.
    ENDDO.
    s0 = l6. s0 = mem_ld_i32_16u( s0 + 6 ). l8 = s0. s1 = 21. s0 = s0 - s1. s1 = 65535. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = 11.
    IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = l4. s1 = 1135229. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s1 = 1139205. s2 = l4. PERFORM f970 USING s0 s1 s2 CHANGING s0. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = 0. l5 = s0. s0 = p3. s1 = l7. s0 = s0 - s1. p2 = s0. s1 = 0. s2 = p2. s3 = 0.
    IF s2 > s3. s2 = 1. ELSE. s2 = 0. ENDIF.
    IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
    p3 = s0. s0 = l6. s1 = 32. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). l6 = s0. s1 = 12. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). p2 = s0. s1 = 32. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). s1 = 4. s0 = s0 + s1. s0 = mem_ld_i32_8u( s0 ).
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = l6. s0 = mem_ld_i32( s0 + 16 ). l5 = s0.
    ELSE.
    ENDIF.
    s0 = p2. s1 = p2. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l4. s1 = p1. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 32 CHANGING cv_mem = mv_mem ). s0 = l4. s1 = p3.
    s1 = zcl_wasm_rt=>extend_u32( s1 ). zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 56 CHANGING cv_mem = mv_mem ). s0 = l4. s1 = p2. s1 = zcl_wasm_rt=>extend_u32( s1 ). s2 = -4294967296.
    s1 = zcl_wasm_rt=>or64( iv_a = s1 iv_b = s2 ). p1 = s1. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 40 CHANGING cv_mem = mv_mem ). s0 = l4. s1 = l7. s2 = l8. s3 = 1182314. s2 = s2 + s3. s2 = mem_ld_i32_8u( s2 ).
    s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s2 = l5. s1 = s1 + s2. s1 = zcl_wasm_rt=>extend_u32( s1 ). zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 48 CHANGING cv_mem = mv_mem ). s0 = p0. s1 = 4. s2 = l4.
    s3 = 32. s2 = s2 + s3. PERFORM f746 USING s0 s1 s2 CHANGING s0. l10 = s0. s0 = p2. s1 = p2. s1 = mem_ld_i32( s1 ). p2 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p2. s1 = 1.
    IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = p1. PERFORM f453 USING s0 s1.
  ENDDO.
  s0 = l4. s1 = -64. s0 = s0 - s1. gv_g0 = s0. s0 = l10. rv = s0.
ENDFORM.

FORM f396 USING p0 TYPE i p1 TYPE i p2 TYPE i p3 TYPE i p4 TYPE i p5 TYPE i CHANGING rv TYPE i.
  DATA l6 TYPE i. DATA l7 TYPE i. DATA l8 TYPE i. DATA l9 TYPE i. DATA l10 TYPE i. DATA l11 TYPE i. DATA l12 TYPE int8. DATA l13 TYPE int8. DATA l14 TYPE int8. DATA l15 TYPE int8. DATA l16 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i.
  DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i.
  DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i.
  DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i. DATA s36 TYPE i. DATA s37 TYPE i. DATA s38 TYPE i. DATA s39 TYPE i. DATA s40 TYPE i. DATA s41 TYPE i. DATA s42 TYPE i. DATA s43 TYPE i.
  DATA s44 TYPE i. DATA s45 TYPE i. DATA s46 TYPE i. DATA s47 TYPE i. DATA s48 TYPE i. DATA s49 TYPE i. DATA s50 TYPE i. DATA s51 TYPE i. DATA s52 TYPE i. DATA s53 TYPE i. DATA s54 TYPE i. DATA s55 TYPE i. DATA lv_br TYPE i. s0 = -1.
  l10 = s0.
  DO 1 TIMES. " block
    s0 = p0. s1 = p1. s2 = p3. s3 = 19. s4 = p3. s5 = 1. s4 = zcl_wasm_rt=>shr_u32( iv_val = s4 iv_shift = s5 ). l6 = s4. s5 = l6. s6 = 19.
    IF zcl_wasm_rt=>ge_u32( iv_a = s5 iv_b = s6 ) = abap_true. s5 = 1. ELSE. s5 = 0. ENDIF.
    IF s5 <> 0. s3 = s3. ELSE. s3 = s4. ENDIF.
    s4 = p3. s5 = 20.
    IF s4 < s5. s4 = 1. ELSE. s4 = 0. ENDIF.
    IF s4 <> 0. s2 = s2. ELSE. s2 = s3. ENDIF.
    l8 = s2. s3 = p3. s4 = l8. s3 = s3 - s4. l9 = s3. s4 = 1. s5 = l8. s4 = zcl_wasm_rt=>shl32( iv_val = s4 iv_shift = s5 ). l7 = s4. s5 = 1. s6 = l9. s5 = zcl_wasm_rt=>shl32( iv_val = s5 iv_shift = s6 ). l11 = s5. s6 = 0. s7 = p5.
    PERFORM f168 USING s0 s1 s2 s3 s4 s5 s6 s7 CHANGING s0.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s1 = p2. s2 = l8. s3 = l9. s4 = l7. s5 = l11. s6 = 0. s7 = p5. PERFORM f168 USING s0 s1 s2 s3 s4 s5 s6 s7 CHANGING s0.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    DO 1 TIMES. " block
      s0 = p3. s1 = l8.
      IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = 0. l6 = s0.
        DO. " loop
          s0 = p0. s1 = p1. s2 = l6. s3 = l9. s2 = zcl_wasm_rt=>shl32( iv_val = s2 iv_shift = s3 ). s3 = 2. s2 = zcl_wasm_rt=>shl32( iv_val = s2 iv_shift = s3 ). p3 = s2. s1 = s1 + s2. s2 = p2. s3 = p3. s2 = s2 + s3. s3 = l9. s4 = p4.
          s5 = p5. PERFORM f396 USING s0 s1 s2 s3 s4 s5 CHANGING s0. s0 = l7. s1 = l6. s2 = 1. s1 = s1 + s2. l6 = s1.
          IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
        ENDDO.
        s0 = p0. s1 = p1. s2 = l8. s3 = l9. s4 = l7. s5 = l11. s6 = 1. s7 = p5. PERFORM f168 USING s0 s1 s2 s3 s4 s5 s6 s7 CHANGING s0. p1 = s0. lv_br = 1. EXIT. " br 1
      ELSE.
      ENDIF.
      s0 = p0. s1 = p5. s2 = 168. s1 = s1 * s2. s0 = s0 + s1. s1 = p4. s2 = 3. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. p4 = s0. s1 = 2508. s0 = s0 + s1.
      s0 = zcl_wasm_rt=>mem_ld_i64_ext( iv_mem = mv_mem iv_addr = s0 + 0 iv_op = 53 ). l13 = s0. s0 = p4. s1 = 2504. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). l9 = s0. s0 = p5. s1 = 2. s0 = zcl_wasm_rt=>shl32( iv_val = s0 iv_shift = s1 ).
      l6 = s0. s1 = 1196528. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). p4 = s0. s0 = zcl_wasm_rt=>extend_u32( s0 ). l14 = s0. s0 = p0. s1 = l6. s0 = s0 + s1. s1 = 4. s0 = s0 + s1.
      s0 = zcl_wasm_rt=>mem_ld_i64_ext( iv_mem = mv_mem iv_addr = s0 + 0 iv_op = 53 ). l15 = s0. s0 = p4. s1 = 1. s0 = zcl_wasm_rt=>shl32( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>extend_u32( s0 ). l16 = s0. s0 = 0. l6 = s0. s0 = 1.
      l8 = s0.
      DO. " loop
        s0 = p1. s1 = l6. s0 = s0 + s1. l7 = s0. s1 = p4. s2 = p2. s3 = l6. s2 = s2 + s3. s2 = zcl_wasm_rt=>mem_ld_i64_ext( iv_mem = mv_mem iv_addr = s2 + 0 iv_op = 53 ). s3 = l7. s3 = mem_ld_i32( s3 ). l7 = s3. s4 = p4. s5 = 0. s6 = p4.
        s7 = l7.
        IF zcl_wasm_rt=>le_u32( iv_a = s6 iv_b = s7 ) = abap_true. s6 = 1. ELSE. s6 = 0. ENDIF.
        IF s6 <> 0. s4 = s4. ELSE. s4 = s5. ENDIF.
        s3 = s3 - s4. s3 = zcl_wasm_rt=>extend_u32( s3 ). s2 = s2 * s3. l12 = s2. s3 = l12. s4 = 29. s3 = zcl_wasm_rt=>shr_u64( iv_val = s3 iv_shift = s4 ). s4 = 4294967295. s3 = zcl_wasm_rt=>and64( iv_a = s3 iv_b = s4 ). s4 = l15.
        s3 = s3 * s4. s4 = 32. s3 = zcl_wasm_rt=>shr_u64( iv_val = s3 iv_shift = s4 ). s4 = l14. s3 = s3 * s4. s4 = l16. s3 = s3 + s4. s2 = s2 - s3. l12 = s2. s3 = l12. s4 = 32. s3 = zcl_wasm_rt=>shr_u64( iv_val = s3 iv_shift = s4 ).
        s3 = zcl_wasm_rt=>wrap_i64( s3 ). s4 = 1. s3 = zcl_wasm_rt=>shr_s32( iv_val = s3 iv_shift = s4 ). s4 = p4. s3 = zcl_wasm_rt=>and32( iv_a = s3 iv_b = s4 ). s3 = zcl_wasm_rt=>extend_u32( s3 ). s2 = s2 + s3. l12 = s2. s3 = 32.
        s2 = zcl_wasm_rt=>shr_u64( iv_val = s2 iv_shift = s3 ). s2 = zcl_wasm_rt=>wrap_i64( s2 ). s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). s2 = l12. s2 = zcl_wasm_rt=>wrap_i64( s2 ). s1 = s1 + s2. l7 = s1. s2 = l9. s1 = s1 * s2.
        s2 = p4. s3 = l7. s3 = zcl_wasm_rt=>extend_u32( s3 ). s4 = l13. s3 = s3 * s4. s4 = 32. s3 = zcl_wasm_rt=>shr_u64( iv_val = s3 iv_shift = s4 ). s3 = zcl_wasm_rt=>wrap_i64( s3 ). s2 = s2 * s3. s1 = s1 - s2.
        mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l6. s1 = 4. s0 = s0 + s1. l6 = s0. s0 = l8. s1 = p3. s0 = zcl_wasm_rt=>shr_u32( iv_val = s0 iv_shift = s1 ). s1 = l8. s2 = 1. s1 = s1 + s2. l8 = s1.
        IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
      ENDDO.
      s0 = p0. s0 = mem_ld_i32( s0 ). p2 = s0. s0 = mem_ld_i32( s0 ). s1 = 0. s2 = 4. s3 = p3. s2 = zcl_wasm_rt=>shl32( iv_val = s2 iv_shift = s3 ). s3 = p2. s4 = 4. s3 = s3 + s4. s3 = mem_ld_i32( s3 ).
      DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
      s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). p2 = s0.
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p0. s1 = p1. s2 = p1. s3 = p2. s4 = p3. s5 = 1. s6 = p5. PERFORM f274 USING s0 s1 s2 s3 s4 s5 s6 CHANGING s0. p1 = s0. s0 = p0. s0 = mem_ld_i32( s0 ). p0 = s0. s0 = mem_ld_i32( s0 ). s1 = p2. s2 = 0. s3 = p0. s4 = 4.
      s3 = s3 + s4. s3 = mem_ld_i32( s3 ).
      DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
      s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ).
    ENDDO.
    s0 = -1. s1 = 0. s2 = p1.
    IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
    l10 = s0.
  ENDDO.
  s0 = l10. rv = s0.
ENDFORM.

FORM f397 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE int8.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE int8. DATA l7 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i.
  DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i.
  DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i.
  DATA s36 TYPE i. DATA s37 TYPE i. DATA s38 TYPE i. DATA s39 TYPE i. DATA s40 TYPE i. DATA s41 TYPE i. DATA s42 TYPE i. DATA s43 TYPE i. DATA lv_br TYPE i. s0 = p1. s1 = 0.
  IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = p1. s1 = 2147483647. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s0 = zcl_wasm_rt=>extend_u32( s0 ). rv = s0. RETURN.
  ELSE.
  ENDIF.
  s0 = p1. s1 = p0. s1 = mem_ld_i32( s1 + 16 ). l3 = s1. s1 = mem_ld_i32( s1 + 44 ).
  IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        s0 = l3. s0 = mem_ld_i32( s0 + 56 ). s1 = p1. s2 = 2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s0 = mem_ld_i32( s0 ). l2 = s0. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 4 ). l6 = s0.
        s1 = -4611686018427387904. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 4611686018427387904.
        IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = l2. s1 = 16. s0 = s0 + s1. l3 = s0. s0 = l6. s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = 2147483647. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). l5 = s0.
        DO 1 TIMES. " block
          s0 = l6. s1 = 2147483648. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 0.
          IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0.
            s0 = l5.
            IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
            DO 1 TIMES. " block
              s0 = l3. p1 = s0. s0 = mem_ld_i32_16u( s0 ). l4 = s0. s1 = 45.
              IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0. EXIT. ENDIF. " br_if 0
              s0 = l2. s1 = 18. s0 = s0 + s1. p1 = s0. s0 = l2. s0 = mem_ld_i32_16u( s0 + 18 ). l4 = s0. s1 = 48.
              IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0. EXIT. ENDIF. " br_if 0
              s0 = 2251748274077696. l6 = s0. s0 = l5. s1 = 2.
              IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0. lv_br = 4. EXIT. ENDIF. " br_if 4
            ENDDO.
            s0 = l4. s1 = 58. s0 = s0 - s1. s1 = -11.
            IF zcl_wasm_rt=>gt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
            s0 = l4. s1 = 73.
            IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
            s0 = l3. s1 = l5. s2 = 1. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s1 = p1. s0 = s0 - s1. s1 = 16.
            IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
            s0 = p1. s1 = 2. s0 = s0 + s1. s1 = 1185644. s2 = 14. PERFORM f1116 USING s0 s1 s2 CHANGING s0.
            IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
            lv_br = 2. EXIT. " br 2
          ELSE.
          ENDIF.
          s0 = l5.
          IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          DO 1 TIMES. " block
            s0 = l3. p1 = s0. s0 = mem_ld_i32_8u( s0 ). l4 = s0. s1 = 45.
            IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. EXIT. ENDIF. " br_if 0
            s0 = l2. s1 = 17. s0 = s0 + s1. p1 = s0. s0 = l2. s0 = mem_ld_i32_8u( s0 + 17 ). l4 = s0. s1 = 48.
            IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. EXIT. ENDIF. " br_if 0
            s0 = 2251748274077696. l6 = s0. s0 = l5. s1 = 2.
            IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
          ENDDO.
          s0 = l4. s1 = 58. s0 = s0 - s1. s1 = -11.
          IF zcl_wasm_rt=>gt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = l4. s1 = 73.
          IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          s0 = l3. s1 = l5. s0 = s0 + s1. s1 = p1. s0 = s0 - s1. s1 = 8.
          IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          s0 = p1. s1 = 1. s0 = s0 + s1. s1 = 1134890. s2 = 7. PERFORM f1116 USING s0 s1 s2 CHANGING s0.
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        ENDDO.
        s0 = l2. s1 = l2. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s1 = l2. s1 = zcl_wasm_rt=>extend_u32( s1 ). s2 = -30064771072. s1 = zcl_wasm_rt=>or64( iv_a = s1 iv_b = s2 ). s2 = 0.
        PERFORM f287 USING s0 s1 s2 CHANGING s0. l7 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 25769803776.
        IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = l7. rv = s0. RETURN.
        ELSE.
        ENDIF.
        s0 = p0. s1 = l7. s2 = 0. PERFORM f341 USING s0 s1 s2 CHANGING s0. l6 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 25769803776.
        IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = l7. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
          IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
          s0 = l7. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p1 = s0. s1 = p1. s1 = mem_ld_i32( s1 ). p1 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p1. s1 = 1.
          IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
          s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = l7. PERFORM f453 USING s0 s1. s0 = l6. rv = s0. RETURN.
        ELSE.
        ENDIF.
        s0 = l2. s1 = l6. s1 = zcl_wasm_rt=>wrap_i64( s1 ). p1 = s1. PERFORM f588 USING s0 s1 CHANGING s0.
        DO 1 TIMES. " block
          s1 = l6. s2 = 32. s1 = zcl_wasm_rt=>shr_u64( iv_val = s1 iv_shift = s2 ). s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = -11.
          IF zcl_wasm_rt=>lt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
          IF s1 <> 0. EXIT. ENDIF. " br_if 0
          s1 = p1. s2 = p1. s2 = mem_ld_i32( s2 ). p1 = s2. s3 = 1. s2 = s2 - s3. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = p1. s2 = 1.
          IF s1 > s2. s1 = 1. ELSE. s1 = 0. ENDIF.
          IF s1 <> 0. EXIT. ENDIF. " br_if 0
          s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s2 = l6. PERFORM f453 USING s1 s2.
        ENDDO.
        IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = l7. rv = s0. RETURN.
        ELSE.
        ENDIF.
        s0 = p0. s1 = l7. PERFORM f1164 USING s0 s1.
      ENDDO.
      s0 = 12884901888. l6 = s0.
    ENDDO.
    s0 = l6. rv = s0. RETURN.
  ELSE.
  ENDIF.
  s0 = 1144256. s1 = 1148333. s2 = 3178. s3 = 1151612. PERFORM f1101 USING s0 s1 s2 s3.
  RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
ENDFORM.

FORM f398 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i p4 TYPE i CHANGING rv TYPE int8.
  DATA l5 TYPE i. DATA l6 TYPE int8. DATA l7 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i.
  DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i.
  DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i. DATA s36 TYPE i. DATA s37 TYPE i. DATA s38 TYPE i.
  DATA s39 TYPE i. DATA s40 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 32. s0 = s0 - s1. p2 = s0. gv_g0 = s0. s0 = 25769803776. l6 = s0.
  DO 1 TIMES. " block
    s0 = p0. s1 = p1. PERFORM f151 USING s0 s1 CHANGING s0. p1 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 25769803776.
    IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s1 = p3. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 0 ). PERFORM f503 USING s0 s1 CHANGING s0. l5 = s0.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    DO 1 TIMES. " block
      s0 = p0. s1 = p2. s2 = p1. s2 = zcl_wasm_rt=>wrap_i64( s2 ). s3 = l5. PERFORM f311 USING s0 s1 s2 s3 CHANGING s0. p3 = s0. s1 = 0.
      IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        lv_br = 1. EXIT. " br 1
      ELSE.
      ENDIF.
      DO 1 TIMES. " block
        DO. " loop
          s0 = p3.
          IF s0 <> 0.
            DO 1 TIMES. " block
              s0 = p2. s0 = mem_ld_i32_8u( s0 ). s1 = 16. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
              IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0.
                s0 = 12884901888. l6 = s0. s0 = p2. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 16 ). l7 = s0. lv_br = 1. EXIT. " br 1
              ELSE.
              ENDIF.
              s0 = p2. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 24 ). s1 = p2. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 16 ). l7 = s1. s2 = p4.
              IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
              l6 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
              IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0. EXIT. ENDIF. " br_if 0
              s0 = l6. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p3 = s0. s1 = p3. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
            ENDDO.
            DO 1 TIMES. " block
              s0 = l7. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
              IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0. EXIT. ENDIF. " br_if 0
              s0 = l7. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p3 = s0. s1 = p3. s1 = mem_ld_i32( s1 ). p3 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p3. s1 = 1.
              IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0. EXIT. ENDIF. " br_if 0
              s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = l7. PERFORM f453 USING s0 s1.
            ENDDO.
            DO 1 TIMES. " block
              s0 = p2. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 24 ). l7 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
              IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0. EXIT. ENDIF. " br_if 0
              s0 = l7. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p3 = s0. s1 = p3. s1 = mem_ld_i32( s1 ). p3 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p3. s1 = 1.
              IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0. EXIT. ENDIF. " br_if 0
              s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = l7. PERFORM f453 USING s0 s1.
            ENDDO.
            s0 = p2. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 8 ). l7 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
            IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
            s0 = l7. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p3 = s0. s1 = p3. s1 = mem_ld_i32( s1 ). p3 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p3. s1 = 1.
            IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
            s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = l7. PERFORM f453 USING s0 s1. lv_br = 3. EXIT. " br 3
          ELSE.
          ENDIF.
          s0 = p0. s1 = p1. PERFORM f714 USING s0 s1 CHANGING s0. p1 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). l6 = s0. s1 = 8589934592.
          IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          s0 = l6. s1 = 25769803776.
          IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
          s0 = p0. s1 = p0. s1 = mem_ld_i32( s1 + 236 ). p3 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 + 236 iv_val = s1 ).
          DO 1 TIMES. " block
            s0 = p3. s1 = 1.
            IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. EXIT. ENDIF. " br_if 0
            s0 = p0. PERFORM f1030 USING s0 CHANGING s0.
            IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. EXIT. ENDIF. " br_if 0
            s0 = 25769803776. l6 = s0. lv_br = 3. EXIT. " br 3
          ENDDO.
          s0 = p0. s1 = p2. s2 = p1. s2 = zcl_wasm_rt=>wrap_i64( s2 ). s3 = l5. PERFORM f311 USING s0 s1 s2 s3 CHANGING s0. p3 = s0. s1 = 0.
          IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
        ENDDO.
        s0 = 25769803776. l6 = s0. lv_br = 1. EXIT. " br 1
      ENDDO.
      s0 = 12884901888. l6 = s0.
    ENDDO.
    s0 = l5. s1 = 228.
    IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s0 = mem_ld_i32( s0 + 16 ). p4 = s0. s0 = mem_ld_i32( s0 + 56 ). s1 = l5. s2 = 2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s0 = mem_ld_i32( s0 ). p3 = s0. s1 = p3. s1 = mem_ld_i32( s1 ). l5 = s1.
    s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l5. s1 = 1.
    IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p4. s1 = p3. PERFORM f713 USING s0 s1.
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

FORM f399 USING p0 TYPE i p1 TYPE int8 p2 TYPE int8 p3 TYPE i CHANGING rv TYPE int8.
  DATA l4 TYPE i. DATA l5 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i.
  DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i.
  DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i. DATA s36 TYPE i. DATA s37 TYPE i. DATA s38 TYPE i. DATA s39 TYPE i.
  DATA s40 TYPE i. DATA s41 TYPE i. DATA s42 TYPE i. DATA s43 TYPE i. DATA s44 TYPE i. DATA s45 TYPE i. DATA s46 TYPE i. DATA s47 TYPE i. DATA s48 TYPE i. DATA s49 TYPE i. DATA s50 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 80.
  s0 = s0 - s1. l4 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        s0 = p1. s1 = -4294967296.
        IF zcl_wasm_rt=>lt_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l5 = s0. s0 = mem_ld_i32_16u( s0 + 6 ). s1 = 35.
        IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = l5. s0 = mem_ld_i32( s0 + 32 ). l5 = s0.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      ENDDO.
      s0 = l4. s1 = p0. s2 = 16. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). p3 = s1. s2 = l4. s3 = 16. s2 = s2 + s3. s3 = p3. s3 = mem_ld_i32( s3 + 68 ). s4 = 844. s3 = s3 + s4. s3 = mem_ld_i32( s3 ). PERFORM f410 USING s1 s2 s3 CHANGING s1.
      mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s1 = 1147410. s2 = l4. PERFORM f970 USING s0 s1 s2 CHANGING s0. s0 = 25769803776. p1 = s0. lv_br = 1. EXIT. " br 1
    ENDDO.
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          DO 1 TIMES. " block
            DO 1 TIMES. " block
              DO 1 TIMES. " block
                s0 = p3. s1 = 4. s0 = s0 + s1.
                CASE s0.
                  WHEN 0. lv_br = 3. EXIT.
                  WHEN 1. lv_br = 2. EXIT.
                  WHEN 2. lv_br = 1. EXIT.
                  WHEN 3. EXIT.
                  WHEN OTHERS. lv_br = 4. EXIT.
                ENDCASE.
              ENDDO.
              s0 = p2. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
              IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0.
                s0 = p2. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p3 = s0. s1 = p3. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
              ELSE.
              ENDIF.
              s0 = 25769803776. p1 = s0. s0 = p0. s1 = l4. s2 = 16. s1 = s1 + s2. s2 = p2. PERFORM f719 USING s0 s1 s2 CHANGING s0.
              IF s0 <> 0. lv_br = 5. EXIT. ENDIF. " br_if 5
              s0 = l4. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 16 ). p2 = s0. s1 = 1073741823. s0 = s0 - s1. s1 = -1073741822.
              IF zcl_wasm_rt=>le_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0.
                s0 = p0. s1 = 1141849. s2 = 0. PERFORM f975 USING s0 s1 s2. lv_br = 6. EXIT. " br 6
              ELSE.
              ENDIF.
              s0 = l5. s1 = p2. zcl_wasm_rt=>mem_st_i64_trunc( EXPORTING iv_val = s1 iv_addr = s0 + 0 iv_op = 62 CHANGING cv_mem = mv_mem ). lv_br = 4. EXIT. " br 4
            ENDDO.
            s0 = p2. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
            IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0.
              s0 = p2. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p3 = s0. s1 = p3. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
            ELSE.
            ENDIF.
            s0 = 25769803776. p1 = s0. s0 = p0. s1 = l4. s2 = 16. s1 = s1 + s2. s2 = p2. PERFORM f684 USING s0 s1 s2 CHANGING s0.
            IF s0 <> 0. lv_br = 4. EXIT. ENDIF. " br_if 4
            s0 = l4. s0 = mem_ld_i32( s0 + 16 ). p3 = s0. s1 = 30. s0 = s0 - s1. s1 = -28.
            IF zcl_wasm_rt=>le_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0.
              s0 = p0. s1 = 1138052. s2 = 0. PERFORM f975 USING s0 s1 s2. lv_br = 5. EXIT. " br 5
            ELSE.
            ENDIF.
            s0 = l5. s1 = l5. s1 = mem_ld_i32( s1 + 4 ). s2 = -2017. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). s2 = 928. s3 = p3. s4 = 5. s3 = zcl_wasm_rt=>shl32( iv_val = s3 iv_shift = s4 ). s2 = s2 - s3. s3 = 2016.
            s2 = zcl_wasm_rt=>and32( iv_a = s2 iv_b = s3 ). s1 = zcl_wasm_rt=>or32( iv_a = s1 iv_b = s2 ). mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). lv_br = 3. EXIT. " br 3
          ENDDO.
          s0 = p2. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
          IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0.
            s0 = p2. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p3 = s0. s1 = p3. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
          ELSE.
          ENDIF.
          DO 1 TIMES. " block
            s0 = p0. s1 = l4. s2 = 16. s1 = s1 + s2. s2 = p2. PERFORM f684 USING s0 s1 s2 CHANGING s0.
            IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0.
              s0 = l4. s0 = mem_ld_i32( s0 + 16 ). p3 = s0. s1 = 7.
              IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
              s0 = p0. s1 = 1146078. s2 = 0. PERFORM f975 USING s0 s1 s2.
            ELSE.
            ENDIF.
            s0 = 25769803776. p1 = s0. lv_br = 4. EXIT. " br 4
          ENDDO.
          s0 = l5. s1 = l5. s1 = mem_ld_i32( s1 + 4 ). s2 = -8. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). s2 = p3. s1 = zcl_wasm_rt=>or32( iv_a = s1 iv_b = s2 ). mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). lv_br = 2. EXIT. " br 2
        ENDDO.
        s0 = p2. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
        IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = p2. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p3 = s0. s1 = p3. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
        ELSE.
        ENDIF.
        s0 = p0. s1 = p2. PERFORM f581 USING s0 s1 CHANGING s0. p0 = s0. s0 = l5. s1 = l5. s1 = mem_ld_i32( s1 + 4 ). s2 = -9. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). s2 = p0. s3 = 0.
        IF s2 <> s3. s2 = 1. ELSE. s2 = 0. ENDIF.
        s3 = 3. s2 = zcl_wasm_rt=>shl32( iv_val = s2 iv_shift = s3 ). s1 = zcl_wasm_rt=>or32( iv_a = s1 iv_b = s2 ). mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). lv_br = 1. EXIT. " br 1
      ENDDO.
      s0 = p2. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
      IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = p2. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p3 = s0. s1 = p3. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
      ELSE.
      ENDIF.
      s0 = p0. s1 = p2. PERFORM f581 USING s0 s1 CHANGING s0. s0 = l5. s1 = 0. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ).
    ENDDO.
    s0 = 12884901888. p1 = s0.
  ENDDO.
  s0 = l4. s1 = 80. s0 = s0 + s1. gv_g0 = s0. s0 = p1. rv = s0.
ENDFORM.

