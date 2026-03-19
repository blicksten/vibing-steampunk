CLASS zcl_qjs_c15 DEFINITION PUBLIC FINAL CREATE PUBLIC.
  PUBLIC SECTION.
    DATA mo_main TYPE REF TO zcl_qjs.
    METHODS f1200 IMPORTING p0 TYPE i p1 TYPE i p2 TYPE i p3 TYPE i p4 TYPE i RETURNING VALUE(rv) TYPE i.
    METHODS f1201 IMPORTING p0 TYPE i.
    METHODS f1202 IMPORTING p0 TYPE i.
    METHODS f1203 IMPORTING p0 TYPE i p1 TYPE i p2 TYPE i.
    METHODS f1204 IMPORTING p0 TYPE i p1 TYPE i RETURNING VALUE(rv) TYPE i.
    METHODS f1205 IMPORTING p0 TYPE i p1 TYPE i RETURNING VALUE(rv) TYPE i.
    METHODS f1206 IMPORTING p0 TYPE i p1 TYPE i RETURNING VALUE(rv) TYPE i.
    METHODS f1207 IMPORTING p0 TYPE i p1 TYPE i RETURNING VALUE(rv) TYPE i.
    METHODS f1208 IMPORTING p0 TYPE i p1 TYPE i RETURNING VALUE(rv) TYPE i.
    METHODS _start.
    METHODS f1210 RETURNING VALUE(rv) TYPE i.
    METHODS f1211 IMPORTING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i p4 TYPE i p5 TYPE i RETURNING VALUE(rv) TYPE int8.
    METHODS f1212 IMPORTING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i RETURNING VALUE(rv) TYPE int8.
    METHODS f1213 IMPORTING p0 TYPE i p1 TYPE i RETURNING VALUE(rv) TYPE i.
    METHODS f1214 IMPORTING p0 TYPE i p1 TYPE i RETURNING VALUE(rv) TYPE i.
    METHODS f1215 IMPORTING p0 TYPE i p1 TYPE int8 p2 TYPE i.
    METHODS f1216 IMPORTING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i RETURNING VALUE(rv) TYPE int8.
    METHODS f1217 IMPORTING p0 TYPE f p1 TYPE f RETURNING VALUE(rv) TYPE f.
    METHODS f1218 IMPORTING p0 TYPE i p1 TYPE i p2 TYPE i p3 TYPE i RETURNING VALUE(rv) TYPE i.
    METHODS f1219 IMPORTING p0 TYPE i.
    METHODS f1220 IMPORTING p0 TYPE i p1 TYPE int8 p2 TYPE int8.
    METHODS f1221 IMPORTING p0 TYPE i p1 TYPE i RETURNING VALUE(rv) TYPE i.
    METHODS f1222 IMPORTING p0 TYPE i p1 TYPE int8 RETURNING VALUE(rv) TYPE int8.
    METHODS f1223 IMPORTING p0 TYPE i p1 TYPE int8 RETURNING VALUE(rv) TYPE i.
    METHODS f1224 IMPORTING p0 TYPE i RETURNING VALUE(rv) TYPE i.
    METHODS f1225 IMPORTING p0 TYPE i p1 TYPE i.
    METHODS f1226 IMPORTING p0 TYPE i p1 TYPE int8 RETURNING VALUE(rv) TYPE int8.
    METHODS f1227 IMPORTING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i RETURNING VALUE(rv) TYPE int8.
    METHODS f1228 IMPORTING p0 TYPE i p1 TYPE int8 p2 TYPE i.
    METHODS f1229 IMPORTING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i RETURNING VALUE(rv) TYPE int8.
    METHODS f1230 IMPORTING p0 TYPE i.
    METHODS f1231 IMPORTING p0 TYPE i.
    METHODS f1232 IMPORTING p0 TYPE i p1 TYPE i RETURNING VALUE(rv) TYPE i.
    METHODS f1233 IMPORTING p0 TYPE i p1 TYPE i RETURNING VALUE(rv) TYPE i.
    METHODS f1234 IMPORTING p0 TYPE f RETURNING VALUE(rv) TYPE f.
    METHODS f1235 IMPORTING p0 TYPE i p1 TYPE i RETURNING VALUE(rv) TYPE int8.
    METHODS f1236 IMPORTING p0 TYPE i p1 TYPE int8 p2 TYPE i.
    METHODS f1237 IMPORTING p0 TYPE i p1 TYPE int8 p2 TYPE int8 RETURNING VALUE(rv) TYPE i.
    METHODS f1238 IMPORTING p0 TYPE i p1 TYPE int8 p2 TYPE int8 RETURNING VALUE(rv) TYPE i.
    METHODS f1239 IMPORTING p0 TYPE i p1 TYPE int8 p2 TYPE int8 RETURNING VALUE(rv) TYPE i.
    METHODS f1240 IMPORTING p0 TYPE i p1 TYPE int8 p2 TYPE int8 RETURNING VALUE(rv) TYPE i.
    METHODS f1241 IMPORTING p0 TYPE i p1 TYPE int8 p2 TYPE int8 RETURNING VALUE(rv) TYPE i.
    METHODS f1242 IMPORTING p0 TYPE i p1 TYPE int8 p2 TYPE int8 RETURNING VALUE(rv) TYPE i.
    METHODS f1243 IMPORTING p0 TYPE i p1 TYPE int8 p2 TYPE int8 RETURNING VALUE(rv) TYPE i.
    METHODS f1244 IMPORTING p0 TYPE i p1 TYPE int8 p2 TYPE int8 RETURNING VALUE(rv) TYPE i.
    METHODS f1245 IMPORTING p0 TYPE i p1 TYPE i p2 TYPE i RETURNING VALUE(rv) TYPE i.
    METHODS f1246 IMPORTING p0 TYPE i p1 TYPE i p2 TYPE i RETURNING VALUE(rv) TYPE i.
    METHODS f1247 IMPORTING p0 TYPE i p1 TYPE int8 p2 TYPE i.
    METHODS f1248 IMPORTING p0 TYPE i p1 TYPE i RETURNING VALUE(rv) TYPE i.
    METHODS f1249 IMPORTING p0 TYPE i p1 TYPE i RETURNING VALUE(rv) TYPE i.
    METHODS f1250 IMPORTING p0 TYPE i p1 TYPE i p2 TYPE i RETURNING VALUE(rv) TYPE i.
    METHODS f1251 IMPORTING p0 TYPE i p1 TYPE i RETURNING VALUE(rv) TYPE int8.
    METHODS f1252 IMPORTING p0 TYPE i p1 TYPE i RETURNING VALUE(rv) TYPE i.
    METHODS f1253 IMPORTING p0 TYPE i RETURNING VALUE(rv) TYPE i.
    METHODS f1254 IMPORTING p0 TYPE i p1 TYPE i RETURNING VALUE(rv) TYPE i.
    METHODS f1255 IMPORTING p0 TYPE i p1 TYPE i p2 TYPE i RETURNING VALUE(rv) TYPE i.
    METHODS f1256 IMPORTING p0 TYPE i p1 TYPE i p2 TYPE i RETURNING VALUE(rv) TYPE i.
    METHODS f1257 IMPORTING p0 TYPE i p1 TYPE i p2 TYPE i RETURNING VALUE(rv) TYPE i.
    METHODS f1258 IMPORTING p0 TYPE i p1 TYPE i p2 TYPE i RETURNING VALUE(rv) TYPE i.
    METHODS f1259 IMPORTING p0 TYPE i p1 TYPE i p2 TYPE i RETURNING VALUE(rv) TYPE i.
    METHODS f1260 IMPORTING p0 TYPE i p1 TYPE int8 p2 TYPE i.
    METHODS f1261 IMPORTING p0 TYPE i.
    METHODS f1262 IMPORTING p0 TYPE i p1 TYPE i RETURNING VALUE(rv) TYPE i.
    METHODS f1263 IMPORTING p0 TYPE i p1 TYPE i p2 TYPE i.
    METHODS f1264 IMPORTING p0 TYPE i p1 TYPE i p2 TYPE i.
    METHODS f1265 IMPORTING p0 TYPE i p1 TYPE i p2 TYPE i.
    METHODS f1266 IMPORTING p0 TYPE i p1 TYPE i p2 TYPE i.
    METHODS f1267 IMPORTING p0 TYPE i p1 TYPE i p2 TYPE i RETURNING VALUE(rv) TYPE i.
    METHODS f1268 IMPORTING p0 TYPE i p1 TYPE int8 p2 TYPE i.
    METHODS f1269 IMPORTING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i RETURNING VALUE(rv) TYPE int8.
    METHODS f1270 IMPORTING p0 TYPE i p1 TYPE i p2 TYPE i RETURNING VALUE(rv) TYPE i.
    METHODS f1271 IMPORTING p0 TYPE i p1 TYPE i.
    METHODS f1272 IMPORTING p0 TYPE i p1 TYPE i.
    METHODS f1273 IMPORTING p0 TYPE i p1 TYPE i.
    METHODS f1274 IMPORTING p0 TYPE i p1 TYPE i RETURNING VALUE(rv) TYPE i.
    METHODS f1275 IMPORTING p0 TYPE i p1 TYPE i RETURNING VALUE(rv) TYPE i.
    METHODS f1276 IMPORTING p0 TYPE i p1 TYPE i.
    METHODS f1277 IMPORTING p0 TYPE i p1 TYPE i.
    METHODS f1278 IMPORTING p0 TYPE i p1 TYPE i.
    METHODS f1279 IMPORTING p0 TYPE i p1 TYPE i.
ENDCLASS.

CLASS zcl_qjs_c15 IMPLEMENTATION.
  METHOD f1200.
    DATA l5 TYPE i.
    DATA s0 TYPE i.
    DATA s1 TYPE i.
    DATA s2 TYPE i.
    DATA s3 TYPE i.
    DATA s4 TYPE i.
    DATA s5 TYPE i.
    DATA s6 TYPE i.
    DATA s7 TYPE i.
    DATA s8 TYPE i.
    DATA lv_br TYPE i.
    s0 = mv_g0.
    s1 = 16.
    s0 = s0 - s1.
    l5 = s0.
    mv_g0 = s0.
    s0 = p0.
    s1 = l5.
    s2 = 12.
    s1 = s1 + s2.
    s2 = p1.
    s3 = p2.
    s4 = p3.
    s5 = p4.
    s6 = 0.
    s0 = f29( p0 = s0 p1 = s1 p2 = s2 p3 = s3 p4 = s4 p5 = s5 p6 = s6 ).
    s1 = l5.
    s2 = 16.
    s1 = s1 + s2.
    mv_g0 = s1.
    rv = s0.
  ENDMETHOD.
  METHOD f1201.
    DATA l1 TYPE i.
    DATA s0 TYPE i.
    DATA s1 TYPE i.
    DATA s2 TYPE i.
    DATA s3 TYPE i.
    DATA s4 TYPE i.
    DATA s5 TYPE i.
    DATA s6 TYPE i.
    DATA s7 TYPE i.
    DATA lv_br TYPE i.
    s0 = p0.
    s0 = mem_ld_i32( s0 + 4 ).
    l1 = s0.
    s1 = 3.
    IF zcl_wasm_rt=>le_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    s1 = l1.
    s2 = 2.
    IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
    s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p0.
      s1 = 8.
      s0 = s0 + s1.
      f935( p0 = s0 ).
    ELSE.
    ENDIF.
    s0 = p0.
    s1 = 28.
    s0 = s0 + s1.
    f924( p0 = s0 ).
  ENDMETHOD.
  METHOD f1202.
    DATA l1 TYPE i.
    DATA s0 TYPE i.
    DATA s1 TYPE i.
    DATA s2 TYPE i.
    DATA s3 TYPE i.
    DATA s4 TYPE i.
    DATA s5 TYPE i.
    DATA s6 TYPE i.
    DATA s7 TYPE i.
    DATA lv_br TYPE i.
    s0 = p0.
    s0 = mem_ld_i32( s0 + 4 ).
    l1 = s0.
    s1 = 3.
    IF zcl_wasm_rt=>le_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    s1 = l1.
    s2 = 2.
    IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
    s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p0.
      s1 = 8.
      s0 = s0 + s1.
      f935( p0 = s0 ).
    ELSE.
    ENDIF.
    s0 = p0.
    s1 = 28.
    s0 = s0 + s1.
    f946( p0 = s0 ).
  ENDMETHOD.
  METHOD f1203.
    DATA l3 TYPE i.
    DATA s0 TYPE i.
    DATA s1 TYPE i.
    DATA s2 TYPE i.
    DATA s3 TYPE i.
    DATA s4 TYPE i.
    DATA s5 TYPE i.
    DATA s6 TYPE i.
    DATA s7 TYPE i.
    DATA lv_br TYPE i.
    s0 = p1.
    s1 = 16.
    s0 = s0 - s1.
    l3 = s0.
    s1 = p0.
    s2 = l3.
    s2 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s2 + 0 ).
    s3 = p1.
    s4 = 8.
    s3 = s3 - s4.
    s3 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s3 + 0 ).
    s4 = 0.
    s1 = f199( p0 = s1 p1 = s2 p2 = s3 p3 = s4 ).
    s2 = p2.
    IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
    s1 = zcl_wasm_rt=>extend_u32( s1 ).
    s2 = 4294967296.
    s1 = zcl_wasm_rt=>or64( iv_a = s1 iv_b = s2 ).
    zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ).
  ENDMETHOD.
  METHOD f1204.
    DATA s0 TYPE i.
    DATA s1 TYPE i.
    DATA s2 TYPE i.
    DATA s3 TYPE i.
    DATA s4 TYPE i.
    DATA s5 TYPE i.
    DATA s6 TYPE i.
    DATA s7 TYPE i.
    DATA lv_br TYPE i.
    s0 = p1.
    s0 = mem_ld_i32( s0 + 20 ).
    s1 = p0.
    s1 = mem_ld_i32( s1 ).
    s1 = mem_ld_i32_8u( s1 ).
    s2 = 2.
    s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ).
    p0 = s1.
    s2 = 1123128.
    s1 = s1 + s2.
    s1 = mem_ld_i32( s1 ).
    s2 = p0.
    s3 = 1123088.
    s2 = s2 + s3.
    s2 = mem_ld_i32( s2 ).
    s3 = p1.
    s3 = mem_ld_i32( s3 + 24 ).
    s3 = mem_ld_i32( s3 + 12 ).
    DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
    s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ).
    rv = s0.
  ENDMETHOD.
  METHOD f1205.
    DATA s0 TYPE i.
    DATA s1 TYPE i.
    DATA s2 TYPE i.
    DATA s3 TYPE i.
    DATA s4 TYPE i.
    DATA s5 TYPE i.
    DATA s6 TYPE i.
    DATA s7 TYPE i.
    DATA lv_br TYPE i.
    s0 = p1.
    s0 = mem_ld_i32( s0 + 20 ).
    s1 = p0.
    s1 = mem_ld_i32( s1 ).
    s1 = mem_ld_i32_8u( s1 ).
    s2 = 2.
    s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ).
    p0 = s1.
    s2 = 1123180.
    s1 = s1 + s2.
    s1 = mem_ld_i32( s1 ).
    s2 = p0.
    s3 = 1123168.
    s2 = s2 + s3.
    s2 = mem_ld_i32( s2 ).
    s3 = p1.
    s3 = mem_ld_i32( s3 + 24 ).
    s3 = mem_ld_i32( s3 + 12 ).
    DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
    s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ).
    rv = s0.
  ENDMETHOD.
  METHOD f1206.
    DATA s0 TYPE i.
    DATA s1 TYPE i.
    DATA s2 TYPE i.
    DATA s3 TYPE i.
    DATA s4 TYPE i.
    DATA s5 TYPE i.
    DATA s6 TYPE i.
    DATA s7 TYPE i.
    DATA lv_br TYPE i.
    s0 = p1.
    s0 = mem_ld_i32( s0 + 20 ).
    s1 = p0.
    s1 = mem_ld_i32( s1 ).
    s1 = mem_ld_i32_8u( s1 ).
    s2 = 2.
    s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ).
    p0 = s1.
    s2 = 1123612.
    s1 = s1 + s2.
    s1 = mem_ld_i32( s1 ).
    s2 = p0.
    s3 = 1123600.
    s2 = s2 + s3.
    s2 = mem_ld_i32( s2 ).
    s3 = p1.
    s3 = mem_ld_i32( s3 + 24 ).
    s3 = mem_ld_i32( s3 + 12 ).
    DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
    s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ).
    rv = s0.
  ENDMETHOD.
  METHOD f1207.
    DATA s0 TYPE i.
    DATA s1 TYPE i.
    DATA s2 TYPE i.
    DATA s3 TYPE i.
    DATA s4 TYPE i.
    DATA s5 TYPE i.
    DATA s6 TYPE i.
    DATA s7 TYPE i.
    DATA lv_br TYPE i.
    s0 = p1.
    s0 = mem_ld_i32( s0 + 20 ).
    s1 = p0.
    s1 = mem_ld_i32( s1 ).
    s1 = mem_ld_i32_8u( s1 ).
    s2 = 2.
    s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ).
    p0 = s1.
    s2 = 1080800.
    s1 = s1 + s2.
    s1 = mem_ld_i32( s1 ).
    s2 = p0.
    s3 = 1080780.
    s2 = s2 + s3.
    s2 = mem_ld_i32( s2 ).
    s3 = p1.
    s3 = mem_ld_i32( s3 + 24 ).
    s3 = mem_ld_i32( s3 + 12 ).
    DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
    s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ).
    rv = s0.
  ENDMETHOD.
  METHOD f1208.
    DATA s0 TYPE i.
    DATA s1 TYPE i.
    DATA s2 TYPE i.
    DATA s3 TYPE i.
    DATA s4 TYPE i.
    DATA s5 TYPE i.
    DATA s6 TYPE i.
    DATA s7 TYPE i.
    DATA lv_br TYPE i.
    s0 = p1.
    s0 = mem_ld_i32( s0 + 20 ).
    s1 = p0.
    s1 = mem_ld_i32( s1 ).
    s1 = mem_ld_i32_8u( s1 ).
    s2 = 2.
    s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ).
    p0 = s1.
    s2 = 1123664.
    s1 = s1 + s2.
    s1 = mem_ld_i32( s1 ).
    s2 = p0.
    s3 = 1123624.
    s2 = s2 + s3.
    s2 = mem_ld_i32( s2 ).
    s3 = p1.
    s3 = mem_ld_i32( s3 + 24 ).
    s3 = mem_ld_i32( s3 + 12 ).
    DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
    s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ).
    rv = s0.
  ENDMETHOD.
  METHOD _start.
    DATA l0 TYPE i.
    DATA s0 TYPE i.
    DATA s1 TYPE i.
    DATA s2 TYPE i.
    DATA s3 TYPE i.
    DATA s4 TYPE i.
    DATA s5 TYPE i.
    DATA s6 TYPE i.
    DATA s7 TYPE i.
    DATA lv_br TYPE i.
    DO 1 TIMES. " block
      s0 = 1214912.
      s0 = mem_ld_i32( s0 ).
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = 1214912.
        s1 = 1.
        mem_st_i32( iv_addr = s0 iv_val = s1 ).
        s0 = __main_void( ).
        l0 = s0.
        f622( ).
        s0 = l0.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        RETURN.
      ELSE.
      ENDIF.
      RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
    ENDDO.
    s0 = l0.
    f1395( p0 = s0 ).
    RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
  ENDMETHOD.
  METHOD f1210.
    DATA l0 TYPE i.
    DATA l1 TYPE i.
    DATA s0 TYPE i.
    DATA s1 TYPE i.
    DATA s2 TYPE i.
    DATA s3 TYPE i.
    DATA s4 TYPE i.
    DATA s5 TYPE i.
    DATA s6 TYPE i.
    DATA s7 TYPE i.
    DATA lv_br TYPE i.
    s0 = mv_g0.
    s1 = 32.
    s0 = s0 - s1.
    l1 = s0.
    mv_g0 = s0.
    s0 = l1.
    s1 = 8.
    s0 = s0 + s1.
    l0 = s0.
    f384( p0 = s0 ).
    s0 = 1064024.
    s1 = 190.
    s2 = l0.
    s0 = f1112( p0 = s0 p1 = s1 p2 = s2 ).
    s1 = l1.
    s2 = 32.
    s1 = s1 + s2.
    mv_g0 = s1.
    rv = s0.
  ENDMETHOD.
  METHOD f1211.
    DATA s0 TYPE i.
    DATA s1 TYPE i.
    DATA s2 TYPE i.
    DATA s3 TYPE i.
    DATA s4 TYPE i.
    DATA s5 TYPE i.
    DATA s6 TYPE i.
    DATA s7 TYPE i.
    DATA lv_br TYPE i.
    s0 = p5.
    s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ).
    p1 = s0.
    s1 = 32.
    s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ).
    s0 = zcl_wasm_rt=>wrap_i64( s0 ).
    s1 = -11.
    IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p1.
      s0 = zcl_wasm_rt=>wrap_i64( s0 ).
      p0 = s0.
      s1 = p0.
      s1 = mem_ld_i32( s1 ).
      s2 = 1.
      s1 = s1 + s2.
      mem_st_i32( iv_addr = s0 iv_val = s1 ).
    ELSE.
    ENDIF.
    s0 = p1.
    rv = s0.
  ENDMETHOD.
  METHOD f1212.
    DATA s0 TYPE i.
    DATA s1 TYPE i.
    DATA s2 TYPE i.
    DATA s3 TYPE i.
    DATA s4 TYPE i.
    DATA s5 TYPE i.
    DATA s6 TYPE i.
    DATA s7 TYPE i.
    DATA s8 TYPE i.
    DATA lv_br TYPE i.
    s0 = p3.
    s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ).
    p1 = s0.
    s1 = -4294967297.
    IF zcl_wasm_rt=>le_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p0.
      s1 = 1137529.
      s2 = 0.
      s0 = f970( p0 = s0 p1 = s1 p2 = s2 ).
      s0 = 25769803776.
      rv = s0. RETURN.
    ELSE.
    ENDIF.
    s0 = p0.
    s1 = p1.
    s2 = 3.
    s3 = 0.
    s0 = f232( p0 = s0 p1 = s1 p2 = s2 p3 = s3 ).
    rv = s0.
  ENDMETHOD.
  METHOD f1213.
    DATA l2 TYPE i.
    DATA s0 TYPE i.
    DATA s1 TYPE i.
    DATA s2 TYPE i.
    DATA s3 TYPE i.
    DATA s4 TYPE i.
    DATA s5 TYPE i.
    DATA s6 TYPE i.
    DATA s7 TYPE i.
    DATA lv_br TYPE i.
    s0 = p0.
    s0 = mem_ld_i32( s0 ).
    p0 = s0.
    s1 = p0.
    s2 = 31.
    s1 = zcl_wasm_rt=>shr_s32( iv_val = s1 iv_shift = s2 ).
    l2 = s1.
    s0 = zcl_wasm_rt=>xor32( iv_a = s0 iv_b = s1 ).
    s1 = l2.
    s0 = s0 - s1.
    s0 = zcl_wasm_rt=>extend_u32( s0 ).
    s1 = p0.
    s2 = -1.
    s1 = zcl_wasm_rt=>xor32( iv_a = s1 iv_b = s2 ).
    s2 = 31.
    s1 = zcl_wasm_rt=>shr_u32( iv_val = s1 iv_shift = s2 ).
    s2 = p1.
    s0 = f607( p0 = s0 p1 = s1 p2 = s2 ).
    rv = s0.
  ENDMETHOD.
  METHOD f1214.
    DATA s0 TYPE i.
    DATA s1 TYPE i.
    DATA s2 TYPE i.
    DATA s3 TYPE i.
    DATA s4 TYPE i.
    DATA s5 TYPE i.
    DATA s6 TYPE i.
    DATA s7 TYPE i.
    DATA lv_br TYPE i.
    s0 = p1.
    s0 = mem_ld_i32( s0 + 20 ).
    s1 = p0.
    s1 = mem_ld_i32_8u( s1 ).
    s2 = 2.
    s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ).
    p0 = s1.
    s2 = 1119332.
    s1 = s1 + s2.
    s1 = mem_ld_i32( s1 ).
    s2 = p0.
    s3 = 1119168.
    s2 = s2 + s3.
    s2 = mem_ld_i32( s2 ).
    s3 = p1.
    s3 = mem_ld_i32( s3 + 24 ).
    s3 = mem_ld_i32( s3 + 12 ).
    DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
    s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ).
    rv = s0.
  ENDMETHOD.
  METHOD f1215.
    DATA l3 TYPE i.
    DATA s0 TYPE i.
    DATA s1 TYPE i.
    DATA s2 TYPE i.
    DATA s3 TYPE i.
    DATA s4 TYPE i.
    DATA s5 TYPE i.
    DATA s6 TYPE i.
    DATA s7 TYPE i.
    DATA lv_br TYPE i.
    DO 1 TIMES. " block
      s0 = p1.
      s0 = zcl_wasm_rt=>wrap_i64( s0 ).
      s0 = mem_ld_i32( s0 + 32 ).
      l3 = s0.
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = l3.
      s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ).
      p1 = s0.
      s1 = -8589934592.
      IF zcl_wasm_rt=>lt_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p0.
      s1 = p1.
      s1 = zcl_wasm_rt=>wrap_i64( s1 ).
      s2 = p2.
      DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
      dispatch_t6( iv_idx = lv_ci_func p0 = s0 p1 = s1 ).
    ENDDO.
  ENDMETHOD.
  METHOD f1216.
    DATA s0 TYPE i.
    DATA s1 TYPE i.
    DATA s2 TYPE i.
    DATA s3 TYPE i.
    DATA s4 TYPE i.
    DATA s5 TYPE i.
    DATA s6 TYPE i.
    DATA s7 TYPE i.
    DATA lv_br TYPE i.
    s0 = 25769803776.
    s1 = p0.
    s2 = p3.
    s2 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s2 + 0 ).
    s3 = p3.
    s3 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s3 + 8 ).
    s4 = 0.
    s1 = f259( p0 = s1 p1 = s2 p2 = s3 p3 = s4 ).
    p0 = s1.
    s2 = 0.
    IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
    s1 = zcl_wasm_rt=>extend_u32( s1 ).
    s2 = 4294967296.
    s1 = zcl_wasm_rt=>or64( iv_a = s1 iv_b = s2 ).
    s2 = p0.
    s3 = 0.
    IF s2 < s3. s2 = 1. ELSE. s2 = 0. ENDIF.
    IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
    rv = s0.
  ENDMETHOD.
  METHOD f1217.
    DATA s0 TYPE i.
    DATA s1 TYPE i.
    DATA s2 TYPE i.
    DATA s3 TYPE i.
    DATA s4 TYPE i.
    DATA s5 TYPE i.
    DATA s6 TYPE i.
    DATA s7 TYPE i.
    DATA lv_br TYPE i.
    DO 1 TIMES. " block
      s0 = p1.
      s0 = abs( s0 ).
      s1 = '+Inf'.
      IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = 'NaN'.
        s1 = p0.
        s1 = abs( s1 ).
        s2 = '1.000000'.
        IF s1 = s2. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      ELSE.
      ENDIF.
      s0 = p0.
      s1 = p1.
      s0 = f178( p0 = s0 p1 = s1 ).
    ENDDO.
    rv = s0.
  ENDMETHOD.
  METHOD f1218.
    DATA l4 TYPE i.
    DATA s0 TYPE i.
    DATA s1 TYPE i.
    DATA s2 TYPE i.
    DATA s3 TYPE i.
    DATA s4 TYPE i.
    DATA s5 TYPE i.
    DATA s6 TYPE i.
    DATA s7 TYPE i.
    DATA lv_br TYPE i.
    s0 = mv_g0.
    s1 = 16.
    s0 = s0 - s1.
    l4 = s0.
    mv_g0 = s0.
    s0 = l4.
    s1 = p3.
    mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ).
    s0 = p0.
    s1 = p1.
    s2 = p2.
    s3 = p3.
    s0 = f912( p0 = s0 p1 = s1 p2 = s2 p3 = s3 ).
    s1 = l4.
    s2 = 16.
    s1 = s1 + s2.
    mv_g0 = s1.
    rv = s0.
  ENDMETHOD.
  METHOD f1219.
    DATA l1 TYPE i.
    DATA s0 TYPE i.
    DATA s1 TYPE i.
    DATA s2 TYPE i.
    DATA s3 TYPE i.
    DATA s4 TYPE i.
    DATA s5 TYPE i.
    DATA s6 TYPE i.
    DATA s7 TYPE i.
    DATA lv_br TYPE i.
    s0 = p0.
    s0 = mem_ld_i32( s0 + 4 ).
    l1 = s0.
    s1 = 3.
    IF zcl_wasm_rt=>le_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    s1 = l1.
    s2 = 2.
    IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
    s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p0.
      s1 = 8.
      s0 = s0 + s1.
      f935( p0 = s0 ).
    ELSE.
    ENDIF.
    s0 = p0.
    f125( p0 = s0 ).
  ENDMETHOD.
  METHOD f1220.
    DATA l3 TYPE i.
    DATA s0 TYPE i.
    DATA s1 TYPE i.
    DATA s2 TYPE i.
    DATA s3 TYPE i.
    DATA s4 TYPE i.
    DATA s5 TYPE i.
    DATA s6 TYPE i.
    DATA s7 TYPE i.
    DATA lv_br TYPE i.
    s0 = p0.
    s0 = mem_ld_i32( s0 + 4 ).
    l3 = s0.
    s1 = 3.
    IF zcl_wasm_rt=>le_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    s1 = l3.
    s2 = 2.
    IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
    s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p0.
      s1 = 8.
      s0 = s0 + s1.
      f935( p0 = s0 ).
    ELSE.
    ENDIF.
    s0 = p0.
    f125( p0 = s0 ).
  ENDMETHOD.
  METHOD f1221.
    DATA s0 TYPE i.
    DATA s1 TYPE i.
    DATA s2 TYPE i.
    DATA s3 TYPE i.
    DATA s4 TYPE i.
    DATA s5 TYPE i.
    DATA s6 TYPE i.
    DATA s7 TYPE i.
    DATA lv_br TYPE i.
    s0 = p1.
    s0 = mem_ld_i32( s0 + 20 ).
    s1 = 1078250.
    s2 = 1078240.
    s3 = p0.
    s3 = mem_ld_i32( s3 ).
    s3 = mem_ld_i32_8u( s3 ).
    p0 = s3.
    IF s3 <> 0. s1 = s1. ELSE. s1 = s2. ENDIF.
    s2 = 16.
    s3 = 10.
    s4 = p0.
    IF s4 <> 0. s2 = s2. ELSE. s2 = s3. ENDIF.
    s3 = p1.
    s3 = mem_ld_i32( s3 + 24 ).
    s3 = mem_ld_i32( s3 + 12 ).
    DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
    s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ).
    rv = s0.
  ENDMETHOD.
  METHOD f1222.
    DATA s0 TYPE i.
    DATA s1 TYPE i.
    DATA s2 TYPE i.
    DATA s3 TYPE i.
    DATA s4 TYPE i.
    DATA s5 TYPE i.
    DATA s6 TYPE i.
    DATA s7 TYPE i.
    DATA lv_br TYPE i.
    s0 = 30.
    s1 = 29.
    s2 = p0.
    s3 = 224.
    s2 = s2 + s3.
    s2 = mem_ld_i32( s2 ).
    s3 = 5.
    s2 = zcl_wasm_rt=>shr_u32( iv_val = s2 iv_shift = s3 ).
    s3 = 63.
    s2 = zcl_wasm_rt=>and32( iv_a = s2 iv_b = s3 ).
    p0 = s2.
    s1 = s1 - s2.
    s2 = p0.
    s3 = 63.
    IF s2 = s3. s2 = 1. ELSE. s2 = 0. ENDIF.
    IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
    s0 = zcl_wasm_rt=>extend_u32( s0 ).
    rv = s0.
  ENDMETHOD.
  METHOD f1223.
    DATA s0 TYPE i.
    DATA s1 TYPE i.
    DATA s2 TYPE i.
    DATA s3 TYPE i.
    DATA s4 TYPE i.
    DATA s5 TYPE i.
    DATA s6 TYPE i.
    DATA s7 TYPE i.
    DATA lv_br TYPE i.
    s0 = p1.
    s1 = 0.
    IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p0.
      s1 = 0.
      s2 = p1.
      s1 = s1 - s2.
      s0 = f541( p0 = s0 p1 = s1 ).
      s1 = p0.
      s2 = 1.
      mem_st_i32( iv_addr = s1 + 4 iv_val = s2 ).
      rv = s0. RETURN.
    ELSE.
    ENDIF.
    s0 = p0.
    s1 = p1.
    s0 = f541( p0 = s0 p1 = s1 ).
    rv = s0.
  ENDMETHOD.
  METHOD f1224.
    DATA l1 TYPE i.
    DATA s0 TYPE i.
    DATA s1 TYPE i.
    DATA s2 TYPE i.
    DATA s3 TYPE i.
    DATA s4 TYPE i.
    DATA s5 TYPE i.
    DATA s6 TYPE i.
    DATA s7 TYPE i.
    DATA s8 TYPE i.
    DATA s9 TYPE i.
    DATA lv_br TYPE i.
    s0 = 1.
    l1 = s0.
    s0 = p0.
    s1 = 1126544.
    s2 = 1127648.
    s3 = 35.
    s0 = f476( p0 = s0 p1 = s1 p2 = s2 p3 = s3 ).
    IF s0 <> 0.
      s0 = 1.
    ELSE.
      s1 = p0.
      s2 = 1127760.
      s3 = 1128432.
      s4 = 21.
      s1 = f476( p0 = s1 p1 = s2 p2 = s3 p3 = s4 ).
      s2 = 0.
      IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
    ENDIF.
    rv = s1.
  ENDMETHOD.
  METHOD f1225.
    DATA s0 TYPE i.
    DATA s1 TYPE i.
    DATA s2 TYPE i.
    DATA s3 TYPE i.
    DATA s4 TYPE i.
    DATA s5 TYPE i.
    DATA s6 TYPE i.
    DATA s7 TYPE i.
    DATA lv_br TYPE i.
    s0 = p1.
    IF s0 <> 0.
      s0 = p0.
      s1 = p0.
      s1 = mem_ld_i32( s1 ).
      s2 = 1.
      s1 = s1 - s2.
      mem_st_i32( iv_addr = s0 iv_val = s1 ).
      s0 = p0.
      s1 = p0.
      s1 = mem_ld_i32( s1 + 4 ).
      s2 = 8.
      s1 = s1 - s2.
      mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ).
      s0 = p1.
      f125( p0 = s0 ).
    ELSE.
    ENDIF.
  ENDMETHOD.
  METHOD f1226.
    DATA s0 TYPE i.
    DATA s1 TYPE i.
    DATA s2 TYPE i.
    DATA s3 TYPE i.
    DATA s4 TYPE i.
    DATA s5 TYPE i.
    DATA s6 TYPE i.
    DATA s7 TYPE i.
    DATA lv_br TYPE i.
    s0 = p1.
    s1 = 32.
    s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ).
    s0 = zcl_wasm_rt=>wrap_i64( s0 ).
    s1 = -11.
    IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p1.
      s0 = zcl_wasm_rt=>wrap_i64( s0 ).
      p0 = s0.
      s1 = p0.
      s1 = mem_ld_i32( s1 ).
      s2 = 1.
      s1 = s1 + s2.
      mem_st_i32( iv_addr = s0 iv_val = s1 ).
    ELSE.
    ENDIF.
    s0 = p1.
    rv = s0.
  ENDMETHOD.
  METHOD f1227.
    DATA s0 TYPE i.
    DATA s1 TYPE i.
    DATA s2 TYPE i.
    DATA s3 TYPE i.
    DATA s4 TYPE i.
    DATA s5 TYPE i.
    DATA s6 TYPE i.
    DATA s7 TYPE i.
    DATA lv_br TYPE i.
    s0 = p1.
    s1 = 32.
    s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ).
    s0 = zcl_wasm_rt=>wrap_i64( s0 ).
    s1 = -11.
    IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p1.
      s0 = zcl_wasm_rt=>wrap_i64( s0 ).
      p0 = s0.
      s1 = p0.
      s1 = mem_ld_i32( s1 ).
      s2 = 1.
      s1 = s1 + s2.
      mem_st_i32( iv_addr = s0 iv_val = s1 ).
    ELSE.
    ENDIF.
    s0 = p1.
    rv = s0.
  ENDMETHOD.
  METHOD f1228.
    DATA l3 TYPE i.
    DATA s0 TYPE i.
    DATA s1 TYPE i.
    DATA s2 TYPE i.
    DATA s3 TYPE i.
    DATA s4 TYPE i.
    DATA s5 TYPE i.
    DATA s6 TYPE i.
    DATA s7 TYPE i.
    DATA lv_br TYPE i.
    DO 1 TIMES. " block
      s0 = p1.
      s0 = zcl_wasm_rt=>wrap_i64( s0 ).
      s0 = mem_ld_i32( s0 + 32 ).
      l3 = s0.
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = l3.
      s0 = mem_ld_i32( s0 + 4 ).
      l3 = s0.
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p0.
      s1 = l3.
      s2 = p2.
      DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
      dispatch_t6( iv_idx = lv_ci_func p0 = s0 p1 = s1 ).
    ENDDO.
  ENDMETHOD.
  METHOD f1229.
    DATA s0 TYPE i.
    DATA s1 TYPE i.
    DATA s2 TYPE i.
    DATA s3 TYPE i.
    DATA s4 TYPE i.
    DATA s5 TYPE i.
    DATA s6 TYPE i.
    DATA s7 TYPE i.
    DATA lv_br TYPE i.
    s0 = 25769803776.
    s1 = p0.
    s2 = p3.
    s2 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s2 + 0 ).
    s3 = p1.
    s1 = f499( p0 = s1 p1 = s2 p2 = s3 ).
    p0 = s1.
    s2 = 0.
    IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
    s1 = zcl_wasm_rt=>extend_u32( s1 ).
    s2 = 4294967296.
    s1 = zcl_wasm_rt=>or64( iv_a = s1 iv_b = s2 ).
    s2 = p0.
    s3 = 0.
    IF s2 < s3. s2 = 1. ELSE. s2 = 0. ENDIF.
    IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
    rv = s0.
  ENDMETHOD.
  METHOD f1230.
    DATA l1 TYPE i.
    DATA s0 TYPE i.
    DATA s1 TYPE i.
    DATA s2 TYPE i.
    DATA s3 TYPE i.
    DATA s4 TYPE i.
    DATA s5 TYPE i.
    DATA s6 TYPE i.
    DATA s7 TYPE i.
    DATA lv_br TYPE i.
    s0 = p0.
    s0 = mem_ld_i32( s0 + 4 ).
    l1 = s0.
    s1 = 3.
    IF zcl_wasm_rt=>le_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    s1 = l1.
    s2 = 2.
    IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
    s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p0.
      s1 = 8.
      s0 = s0 + s1.
      f935( p0 = s0 ).
    ELSE.
    ENDIF.
  ENDMETHOD.
  METHOD f1231.
    DATA l1 TYPE i.
    DATA s0 TYPE i.
    DATA s1 TYPE i.
    DATA s2 TYPE i.
    DATA s3 TYPE i.
    DATA s4 TYPE i.
    DATA s5 TYPE i.
    DATA s6 TYPE i.
    DATA s7 TYPE i.
    DATA lv_br TYPE i.
    s0 = p0.
    s0 = mem_ld_i32( s0 ).
    l1 = s0.
    s1 = l1.
    s1 = mem_ld_i32( s1 ).
    l1 = s1.
    s2 = 1.
    s1 = s1 - s2.
    mem_st_i32( iv_addr = s0 iv_val = s1 ).
    s0 = l1.
    s1 = 1.
    IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p0.
      f1094( p0 = s0 ).
    ELSE.
    ENDIF.
  ENDMETHOD.
  METHOD f1232.
    DATA l2 TYPE i.
    DATA s0 TYPE i.
    DATA s1 TYPE i.
    DATA s2 TYPE i.
    DATA s3 TYPE i.
    DATA s4 TYPE i.
    DATA s5 TYPE i.
    DATA s6 TYPE i.
    DATA s7 TYPE i.
    DATA lv_br TYPE i.
    s0 = p0.
    s0 = mem_ld_i32( s0 + 12 ).
    l2 = s0.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = 0.
      rv = s0. RETURN.
    ELSE.
    ENDIF.
    s0 = p0.
    s1 = 0.
    s2 = p1.
    s3 = 16.
    s2 = zcl_wasm_rt=>or32( iv_a = s2 iv_b = s3 ).
    s3 = l2.
    s4 = 0.
    s0 = f137( p0 = s0 p1 = s1 p2 = s2 p3 = s3 p4 = s4 ).
    rv = s0.
  ENDMETHOD.
  METHOD f1233.
    DATA s0 TYPE i.
    DATA s1 TYPE i.
    DATA s2 TYPE i.
    DATA s3 TYPE i.
    DATA s4 TYPE i.
    DATA s5 TYPE i.
    DATA s6 TYPE i.
    DATA s7 TYPE i.
    DATA lv_br TYPE i.
    s0 = p0.
    s0 = mem_ld_i32( s0 ).
    s0 = mem_ld_i32_8u( s0 ).
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p1.
      s1 = 1080532.
      s2 = 5.
      s0 = f244( p0 = s0 p1 = s1 p2 = s2 ).
      rv = s0. RETURN.
    ELSE.
    ENDIF.
    s0 = p1.
    s1 = 1080537.
    s2 = 4.
    s0 = f244( p0 = s0 p1 = s1 p2 = s2 ).
    rv = s0.
  ENDMETHOD.
  METHOD f1234.
    DATA l1 TYPE i.
    DATA s0 TYPE i.
    DATA s1 TYPE i.
    DATA s2 TYPE i.
    DATA s3 TYPE i.
    DATA s4 TYPE i.
    DATA s5 TYPE i.
    DATA s6 TYPE i.
    DATA s7 TYPE i.
    DATA lv_br TYPE i.
    s0 = '-1.000000'.
    s1 = '1.000000'.
    s2 = p0.
    s3 = '0.000000'.
    IF s2 < s3. s2 = 1. ELSE. s2 = 0. ENDIF.
    l1 = s2.
    IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
    s1 = p0.
    s2 = p0.
    s3 = '0.000000'.
    IF s2 > s3. s2 = 1. ELSE. s2 = 0. ENDIF.
    s3 = l1.
    s2 = zcl_wasm_rt=>or32( iv_a = s2 iv_b = s3 ).
    IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
    rv = s0.
  ENDMETHOD.
  METHOD f1235.
    DATA l2 TYPE int8.
    DATA s0 TYPE i.
    DATA s1 TYPE i.
    DATA s2 TYPE i.
    DATA s3 TYPE i.
    DATA s4 TYPE i.
    DATA s5 TYPE i.
    DATA s6 TYPE i.
    DATA s7 TYPE i.
    DATA lv_br TYPE i.
    s0 = -51539607552.
    s1 = p1.
    s1 = zcl_wasm_rt=>mem_ld_f32( iv_mem = mv_mem iv_addr = s1 + 0 ).
    s1 = s1. " f64.promote_f32 (noop in ABAP)
    s1 = zcl_wasm_rt=>reinterpret_f64_i64( s1 ).
    l2 = s1.
    s2 = 9221120288580698112.
    s1 = s1 - s2.
    s2 = l2.
    s3 = 9223372036854775807.
    s2 = zcl_wasm_rt=>and64( iv_a = s2 iv_b = s3 ).
    s3 = 9218868437227405312.
    IF zcl_wasm_rt=>gt_u64( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
    IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
    rv = s0.
  ENDMETHOD.
  METHOD f1236.
    DATA s0 TYPE i.
    DATA s1 TYPE i.
    DATA s2 TYPE i.
    DATA s3 TYPE i.
    DATA s4 TYPE i.
    DATA s5 TYPE i.
    DATA s6 TYPE i.
    DATA s7 TYPE i.
    DATA lv_br TYPE i.
    s0 = p1.
    s0 = zcl_wasm_rt=>wrap_i64( s0 ).
    s0 = mem_ld_i32( s0 + 32 ).
    s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ).
    p1 = s0.
    s1 = -8589934592.
    IF zcl_wasm_rt=>ge_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p0.
      s1 = p1.
      s1 = zcl_wasm_rt=>wrap_i64( s1 ).
      s2 = p2.
      DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
      dispatch_t6( iv_idx = lv_ci_func p0 = s0 p1 = s1 ).
    ELSE.
    ENDIF.
  ENDMETHOD.
  METHOD f1237.
    DATA s0 TYPE i.
    DATA s1 TYPE i.
    DATA s2 TYPE i.
    DATA s3 TYPE i.
    DATA s4 TYPE i.
    DATA s5 TYPE i.
    DATA s6 TYPE i.
    DATA s7 TYPE i.
    DATA lv_br TYPE i.
    s0 = p0.
    s1 = 28.
    s0 = s0 + s1.
    s1 = 0.
    s2 = p2.
    s3 = 8935226111122132716.
    IF s2 = s3. s2 = 1. ELSE. s2 = 0. ENDIF.
    IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
    s1 = 0.
    s2 = p1.
    s3 = 2075531708415345777.
    IF s2 = s3. s2 = 1. ELSE. s2 = 0. ENDIF.
    IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
    rv = s0.
  ENDMETHOD.
  METHOD f1238.
    DATA s0 TYPE i.
    DATA s1 TYPE i.
    DATA s2 TYPE i.
    DATA s3 TYPE i.
    DATA s4 TYPE i.
    DATA s5 TYPE i.
    DATA s6 TYPE i.
    DATA s7 TYPE i.
    DATA lv_br TYPE i.
    s0 = p0.
    s1 = 28.
    s0 = s0 + s1.
    s1 = 0.
    s2 = p2.
    s3 = 5261088657760290136.
    IF s2 = s3. s2 = 1. ELSE. s2 = 0. ENDIF.
    IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
    s1 = 0.
    s2 = p1.
    s3 = -5182432383765216851.
    IF s2 = s3. s2 = 1. ELSE. s2 = 0. ENDIF.
    IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
    rv = s0.
  ENDMETHOD.
  METHOD f1239.
    DATA s0 TYPE i.
    DATA s1 TYPE i.
    DATA s2 TYPE i.
    DATA s3 TYPE i.
    DATA s4 TYPE i.
    DATA s5 TYPE i.
    DATA s6 TYPE i.
    DATA s7 TYPE i.
    DATA lv_br TYPE i.
    s0 = p0.
    s1 = 28.
    s0 = s0 + s1.
    s1 = 0.
    s2 = p2.
    s3 = 6385639802083421747.
    IF s2 = s3. s2 = 1. ELSE. s2 = 0. ENDIF.
    IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
    s1 = 0.
    s2 = p1.
    s3 = -4982148772931948802.
    IF s2 = s3. s2 = 1. ELSE. s2 = 0. ENDIF.
    IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
    rv = s0.
  ENDMETHOD.
  METHOD f1240.
    DATA s0 TYPE i.
    DATA s1 TYPE i.
    DATA s2 TYPE i.
    DATA s3 TYPE i.
    DATA s4 TYPE i.
    DATA s5 TYPE i.
    DATA s6 TYPE i.
    DATA s7 TYPE i.
    DATA lv_br TYPE i.
    s0 = p0.
    s1 = 28.
    s0 = s0 + s1.
    s1 = 0.
    s2 = p2.
    s3 = 7199936582794304877.
    IF s2 = s3. s2 = 1. ELSE. s2 = 0. ENDIF.
    IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
    s1 = 0.
    s2 = p1.
    s3 = -5076933981314334344.
    IF s2 = s3. s2 = 1. ELSE. s2 = 0. ENDIF.
    IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
    rv = s0.
  ENDMETHOD.
  METHOD f1241.
    DATA s0 TYPE i.
    DATA s1 TYPE i.
    DATA s2 TYPE i.
    DATA s3 TYPE i.
    DATA s4 TYPE i.
    DATA s5 TYPE i.
    DATA s6 TYPE i.
    DATA s7 TYPE i.
    DATA lv_br TYPE i.
    s0 = p0.
    s1 = 28.
    s0 = s0 + s1.
    s1 = 0.
    s2 = p2.
    s3 = -8623366980754492546.
    IF s2 = s3. s2 = 1. ELSE. s2 = 0. ENDIF.
    IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
    s1 = 0.
    s2 = p1.
    s3 = 9060376563428101350.
    IF s2 = s3. s2 = 1. ELSE. s2 = 0. ENDIF.
    IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
    rv = s0.
  ENDMETHOD.
  METHOD f1242.
    DATA s0 TYPE i.
    DATA s1 TYPE i.
    DATA s2 TYPE i.
    DATA s3 TYPE i.
    DATA s4 TYPE i.
    DATA s5 TYPE i.
    DATA s6 TYPE i.
    DATA s7 TYPE i.
    DATA lv_br TYPE i.
    s0 = p0.
    s1 = 28.
    s0 = s0 + s1.
    s1 = 0.
    s2 = p2.
    s3 = -3260077067098042597.
    IF s2 = s3. s2 = 1. ELSE. s2 = 0. ENDIF.
    IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
    s1 = 0.
    s2 = p1.
    s3 = 8323855223473259578.
    IF s2 = s3. s2 = 1. ELSE. s2 = 0. ENDIF.
    IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
    rv = s0.
  ENDMETHOD.
  METHOD f1243.
    DATA s0 TYPE i.
    DATA s1 TYPE i.
    DATA s2 TYPE i.
    DATA s3 TYPE i.
    DATA s4 TYPE i.
    DATA s5 TYPE i.
    DATA s6 TYPE i.
    DATA s7 TYPE i.
    DATA lv_br TYPE i.
    s0 = p0.
    s1 = 28.
    s0 = s0 + s1.
    s1 = 0.
    s2 = p2.
    s3 = -7063004080869952775.
    IF s2 = s3. s2 = 1. ELSE. s2 = 0. ENDIF.
    IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
    s1 = 0.
    s2 = p1.
    s3 = 5325385144114573364.
    IF s2 = s3. s2 = 1. ELSE. s2 = 0. ENDIF.
    IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
    rv = s0.
  ENDMETHOD.
  METHOD f1244.
    DATA s0 TYPE i.
    DATA s1 TYPE i.
    DATA s2 TYPE i.
    DATA s3 TYPE i.
    DATA s4 TYPE i.
    DATA s5 TYPE i.
    DATA s6 TYPE i.
    DATA s7 TYPE i.
    DATA lv_br TYPE i.
    s0 = p0.
    s1 = 28.
    s0 = s0 + s1.
    s1 = 0.
    s2 = p2.
    s3 = 4218379227045449684.
    IF s2 = s3. s2 = 1. ELSE. s2 = 0. ENDIF.
    IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
    s1 = 0.
    s2 = p1.
    s3 = 7939287580144545471.
    IF s2 = s3. s2 = 1. ELSE. s2 = 0. ENDIF.
    IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
    rv = s0.
  ENDMETHOD.
  METHOD f1245.
    DATA l3 TYPE int8.
    DATA l4 TYPE int8.
    DATA s0 TYPE i.
    DATA s1 TYPE i.
    DATA s2 TYPE i.
    DATA s3 TYPE i.
    DATA s4 TYPE i.
    DATA s5 TYPE i.
    DATA s6 TYPE i.
    DATA s7 TYPE i.
    DATA lv_br TYPE i.
    s0 = p0.
    s0 = mem_ld_i32( s0 ).
    s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 120 ).
    l3 = s0.
    s1 = p1.
    s1 = mem_ld_i32( s1 ).
    s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 120 ).
    l4 = s1.
    IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    s1 = l3.
    s2 = l4.
    IF s1 < s2. s1 = 1. ELSE. s1 = 0. ENDIF.
    s0 = s0 - s1.
    rv = s0.
  ENDMETHOD.
  METHOD f1246.
    DATA l3 TYPE i.
    DATA s0 TYPE i.
    DATA s1 TYPE i.
    DATA s2 TYPE i.
    DATA s3 TYPE i.
    DATA s4 TYPE i.
    DATA s5 TYPE i.
    DATA s6 TYPE i.
    DATA s7 TYPE i.
    DATA lv_br TYPE i.
    s0 = p0.
    s0 = mem_ld_i32( s0 + 12 ).
    l3 = s0.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = 0.
      rv = s0. RETURN.
    ELSE.
    ENDIF.
    s0 = p0.
    s1 = p1.
    s2 = p2.
    s3 = l3.
    s4 = 0.
    s0 = f137( p0 = s0 p1 = s1 p2 = s2 p3 = s3 p4 = s4 ).
    rv = s0.
  ENDMETHOD.
  METHOD f1247.
    DATA s0 TYPE i.
    DATA s1 TYPE i.
    DATA s2 TYPE i.
    DATA s3 TYPE i.
    DATA s4 TYPE i.
    DATA s5 TYPE i.
    DATA s6 TYPE i.
    DATA s7 TYPE i.
    DATA lv_br TYPE i.
    s0 = p1.
    s0 = zcl_wasm_rt=>wrap_i64( s0 ).
    s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 32 ).
    p1 = s0.
    s1 = -8589934592.
    IF zcl_wasm_rt=>ge_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p0.
      s1 = p1.
      s1 = zcl_wasm_rt=>wrap_i64( s1 ).
      s2 = p2.
      DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
      dispatch_t6( iv_idx = lv_ci_func p0 = s0 p1 = s1 ).
    ELSE.
    ENDIF.
  ENDMETHOD.
  METHOD f1248.
    DATA s0 TYPE i.
    DATA s1 TYPE i.
    DATA s2 TYPE i.
    DATA s3 TYPE i.
    DATA s4 TYPE i.
    DATA s5 TYPE i.
    DATA s6 TYPE i.
    DATA s7 TYPE i.
    DATA lv_br TYPE i.
    s0 = p1.
    s1 = p0.
    s1 = mem_ld_i32( s1 ).
    p0 = s1.
    s2 = 4.
    s1 = s1 + s2.
    s1 = mem_ld_i32( s1 ).
    s2 = p0.
    s3 = 8.
    s2 = s2 + s3.
    s2 = mem_ld_i32( s2 ).
    s0 = f244( p0 = s0 p1 = s1 p2 = s2 ).
    rv = s0.
  ENDMETHOD.
  METHOD f1249.
    DATA s0 TYPE i.
    DATA s1 TYPE i.
    DATA s2 TYPE i.
    DATA s3 TYPE i.
    DATA s4 TYPE i.
    DATA s5 TYPE i.
    DATA s6 TYPE i.
    DATA s7 TYPE i.
    DATA lv_br TYPE i.
    s0 = p0.
    s0 = mem_ld_i32( s0 ).
    p0 = s0.
    s1 = 4.
    s0 = s0 + s1.
    s0 = mem_ld_i32( s0 ).
    s1 = p0.
    s2 = 8.
    s1 = s1 + s2.
    s1 = mem_ld_i32( s1 ).
    s2 = p1.
    s0 = f248( p0 = s0 p1 = s1 p2 = s2 ).
    rv = s0.
  ENDMETHOD.
  METHOD f1250.
    DATA s0 TYPE i.
    DATA s1 TYPE i.
    DATA s2 TYPE i.
    DATA s3 TYPE i.
    DATA s4 TYPE i.
    DATA s5 TYPE i.
    DATA s6 TYPE i.
    DATA s7 TYPE i.
    DATA lv_br TYPE i.
    s0 = p1.
    s1 = p2.
    s2 = p0.
    s2 = mem_ld_i32_8u( s2 + 12 ).
    s3 = p0.
    s4 = 0.
    s5 = p0.
    s5 = mem_ld_i32( s5 ).
    s6 = -2147483648.
    IF s5 <> s6. s5 = 1. ELSE. s5 = 0. ENDIF.
    IF s5 <> 0. s3 = s3. ELSE. s3 = s4. ENDIF.
    s0 = f52( p0 = s0 p1 = s1 p2 = s2 p3 = s3 ).
    rv = s0.
  ENDMETHOD.
  METHOD f1251.
    DATA l2 TYPE int8.
    DATA s0 TYPE i.
    DATA s1 TYPE i.
    DATA s2 TYPE i.
    DATA s3 TYPE i.
    DATA s4 TYPE i.
    DATA s5 TYPE i.
    DATA s6 TYPE i.
    DATA s7 TYPE i.
    DATA lv_br TYPE i.
    s0 = -51539607552.
    s1 = p1.
    s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 0 ).
    l2 = s1.
    s2 = 9221120288580698112.
    s1 = s1 - s2.
    s2 = l2.
    s3 = 9223372036854775807.
    s2 = zcl_wasm_rt=>and64( iv_a = s2 iv_b = s3 ).
    s3 = 9218868437227405312.
    IF zcl_wasm_rt=>gt_u64( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
    IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
    rv = s0.
  ENDMETHOD.
  METHOD f1252.
    DATA s0 TYPE i.
    DATA s1 TYPE i.
    DATA s2 TYPE i.
    DATA s3 TYPE i.
    DATA s4 TYPE i.
    DATA s5 TYPE i.
    DATA s6 TYPE i.
    DATA s7 TYPE i.
    DATA lv_br TYPE i.
    s0 = p0.
    s1 = p1.
    s0 = f561( p0 = s0 p1 = s1 ).
    p0 = s0.
    s1 = 0.
    s2 = p0.
    s2 = mem_ld_i32_8u( s2 ).
    s3 = p1.
    s4 = 255.
    s3 = zcl_wasm_rt=>and32( iv_a = s3 iv_b = s4 ).
    IF s2 = s3. s2 = 1. ELSE. s2 = 0. ENDIF.
    IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
    rv = s0.
  ENDMETHOD.
  METHOD f1253.
    DATA s0 TYPE i.
    DATA s1 TYPE i.
    DATA s2 TYPE i.
    DATA s3 TYPE i.
    DATA s4 TYPE i.
    DATA s5 TYPE i.
    DATA s6 TYPE i.
    DATA s7 TYPE i.
    DATA lv_br TYPE i.
    s0 = p0.
    s0 = mem_ld_i32( s0 + 56 ).
    s0 = 0. " WASI fd_close: stub
    s1 = 65535.
    s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
    p0 = s0.
    IF s0 <> 0.
      s0 = 1215576.
      s1 = p0.
      mem_st_i32( iv_addr = s0 iv_val = s1 ).
      s0 = -1.
    ELSE.
      s1 = 0.
    ENDIF.
    rv = s1.
  ENDMETHOD.
  METHOD f1254.
    DATA s0 TYPE i.
    DATA s1 TYPE i.
    DATA s2 TYPE i.
    DATA s3 TYPE i.
    DATA s4 TYPE i.
    DATA s5 TYPE i.
    DATA s6 TYPE i.
    DATA s7 TYPE i.
    DATA lv_br TYPE i.
    s0 = p0.
    s0 = mem_ld_i32( s0 ).
    p0 = s0.
    s0 = mem_ld_i32( s0 ).
    s1 = p1.
    s2 = p0.
    s3 = 4.
    s2 = s2 + s3.
    s2 = mem_ld_i32( s2 ).
    s2 = mem_ld_i32( s2 + 12 ).
    DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
    s0 = dispatch_t7( iv_idx = lv_ci_func p0 = s0 p1 = s1 ).
    rv = s0.
  ENDMETHOD.
  METHOD f1255.
    DATA s0 TYPE i.
    DATA s1 TYPE i.
    DATA s2 TYPE i.
    DATA s3 TYPE i.
    DATA s4 TYPE i.
    DATA s5 TYPE i.
    DATA s6 TYPE i.
    DATA s7 TYPE i.
    DATA lv_br TYPE i.
    s0 = p0.
    s0 = mem_ld_i32( s0 ).
    p0 = s0.
    s1 = p1.
    s1 = mem_ld_i32( s1 ).
    p1 = s1.
    IF zcl_wasm_rt=>gt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    s1 = p0.
    s2 = p1.
    IF zcl_wasm_rt=>lt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
    s0 = s0 - s1.
    rv = s0.
  ENDMETHOD.
  METHOD f1256.
    DATA s0 TYPE i.
    DATA s1 TYPE i.
    DATA s2 TYPE i.
    DATA s3 TYPE i.
    DATA s4 TYPE i.
    DATA s5 TYPE i.
    DATA s6 TYPE i.
    DATA s7 TYPE i.
    DATA lv_br TYPE i.
    s0 = p1.
    s0 = mem_ld_i32( s0 ).
    p1 = s0.
    s1 = p0.
    s1 = mem_ld_i32( s1 ).
    p0 = s1.
    IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    s1 = p0.
    s2 = p1.
    IF s1 < s2. s1 = 1. ELSE. s1 = 0. ENDIF.
    s0 = s0 - s1.
    rv = s0.
  ENDMETHOD.
  METHOD f1257.
    DATA s0 TYPE i.
    DATA s1 TYPE i.
    DATA s2 TYPE i.
    DATA s3 TYPE i.
    DATA s4 TYPE i.
    DATA s5 TYPE i.
    DATA s6 TYPE i.
    DATA s7 TYPE i.
    DATA lv_br TYPE i.
    s0 = p1.
    s0 = mem_ld_i32( s0 ).
    p1 = s0.
    s1 = p0.
    s1 = mem_ld_i32( s1 ).
    p0 = s1.
    IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    s1 = p0.
    s2 = p1.
    IF zcl_wasm_rt=>lt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
    s0 = s0 - s1.
    rv = s0.
  ENDMETHOD.
  METHOD f1258.
    DATA l3 TYPE int8.
    DATA l4 TYPE int8.
    DATA s0 TYPE i.
    DATA s1 TYPE i.
    DATA s2 TYPE i.
    DATA s3 TYPE i.
    DATA s4 TYPE i.
    DATA s5 TYPE i.
    DATA s6 TYPE i.
    DATA s7 TYPE i.
    DATA lv_br TYPE i.
    s0 = p1.
    s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ).
    l3 = s0.
    s1 = p0.
    s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 0 ).
    l4 = s1.
    IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    s1 = l3.
    s2 = l4.
    IF s1 > s2. s1 = 1. ELSE. s1 = 0. ENDIF.
    s0 = s0 - s1.
    rv = s0.
  ENDMETHOD.
  METHOD f1259.
    DATA l3 TYPE int8.
    DATA l4 TYPE int8.
    DATA s0 TYPE i.
    DATA s1 TYPE i.
    DATA s2 TYPE i.
    DATA s3 TYPE i.
    DATA s4 TYPE i.
    DATA s5 TYPE i.
    DATA s6 TYPE i.
    DATA s7 TYPE i.
    DATA lv_br TYPE i.
    s0 = p1.
    s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ).
    l3 = s0.
    s1 = p0.
    s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 0 ).
    l4 = s1.
    IF zcl_wasm_rt=>lt_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    s1 = l3.
    s2 = l4.
    IF zcl_wasm_rt=>gt_u64( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
    s0 = s0 - s1.
    rv = s0.
  ENDMETHOD.
  METHOD f1260.
    DATA l3 TYPE i.
    DATA s0 TYPE i.
    DATA s1 TYPE i.
    DATA s2 TYPE i.
    DATA s3 TYPE i.
    DATA s4 TYPE i.
    DATA s5 TYPE i.
    DATA s6 TYPE i.
    DATA s7 TYPE i.
    DATA lv_br TYPE i.
    s0 = p1.
    s0 = zcl_wasm_rt=>wrap_i64( s0 ).
    s0 = mem_ld_i32( s0 + 32 ).
    l3 = s0.
    IF s0 <> 0.
      s0 = p0.
      s1 = l3.
      s1 = mem_ld_i32( s1 + 12 ).
      s2 = p2.
      DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
      dispatch_t6( iv_idx = lv_ci_func p0 = s0 p1 = s1 ).
    ELSE.
    ENDIF.
  ENDMETHOD.
  METHOD f1261.
    DATA s0 TYPE i.
    DATA s1 TYPE i.
    DATA s2 TYPE i.
    DATA s3 TYPE i.
    DATA s4 TYPE i.
    DATA s5 TYPE i.
    DATA s6 TYPE i.
    DATA s7 TYPE i.
    DATA lv_br TYPE i.
    s0 = p0.
    s0 = mem_ld_i32( s0 ).
    s1 = -2147483648.
    s0 = zcl_wasm_rt=>or32( iv_a = s0 iv_b = s1 ).
    s1 = -2147483648.
    IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p0.
      s0 = mem_ld_i32( s0 + 4 ).
      f125( p0 = s0 ).
    ELSE.
    ENDIF.
  ENDMETHOD.
  METHOD f1262.
    DATA s0 TYPE i.
    DATA s1 TYPE i.
    DATA s2 TYPE i.
    DATA s3 TYPE i.
    DATA s4 TYPE i.
    DATA s5 TYPE i.
    DATA s6 TYPE i.
    DATA s7 TYPE i.
    DATA lv_br TYPE i.
    s0 = p0.
    s0 = mem_ld_i32( s0 ).
    p0 = s0.
    s0 = mem_ld_i32( s0 ).
    s1 = p0.
    s2 = 4.
    s1 = s1 + s2.
    s1 = mem_ld_i32( s1 ).
    s2 = p1.
    s0 = f248( p0 = s0 p1 = s1 p2 = s2 ).
    rv = s0.
  ENDMETHOD.
  METHOD f1263.
    DATA s0 TYPE i.
    DATA s1 TYPE i.
    DATA s2 TYPE i.
    DATA s3 TYPE i.
    DATA s4 TYPE i.
    DATA s5 TYPE i.
    DATA s6 TYPE i.
    DATA s7 TYPE i.
    DATA lv_br TYPE i.
    s0 = p0.
    s0 = mem_ld_i32( s0 ).
    p2 = s0.
    s0 = p0.
    s1 = p1.
    s1 = mem_ld_i32( s1 ).
    mem_st_i32( iv_addr = s0 iv_val = s1 ).
    s0 = p1.
    s1 = p2.
    mem_st_i32( iv_addr = s0 iv_val = s1 ).
  ENDMETHOD.
  METHOD f1264.
    DATA s0 TYPE i.
    DATA s1 TYPE i.
    DATA s2 TYPE i.
    DATA s3 TYPE i.
    DATA s4 TYPE i.
    DATA s5 TYPE i.
    DATA s6 TYPE i.
    DATA s7 TYPE i.
    DATA lv_br TYPE i.
    s0 = p0.
    s0 = mem_ld_i32_16u( s0 ).
    p2 = s0.
    s0 = p0.
    s1 = p1.
    s1 = mem_ld_i32_16u( s1 ).
    mem_st_i32_16( iv_addr = s0 iv_val = s1 ).
    s0 = p1.
    s1 = p2.
    mem_st_i32_16( iv_addr = s0 iv_val = s1 ).
  ENDMETHOD.
  METHOD f1265.
    DATA s0 TYPE i.
    DATA s1 TYPE i.
    DATA s2 TYPE i.
    DATA s3 TYPE i.
    DATA s4 TYPE i.
    DATA s5 TYPE i.
    DATA s6 TYPE i.
    DATA s7 TYPE i.
    DATA lv_br TYPE i.
    s0 = p0.
    s0 = mem_ld_i32_8u( s0 ).
    p2 = s0.
    s0 = p0.
    s1 = p1.
    s1 = mem_ld_i32_8u( s1 ).
    mem_st_i32_8( iv_addr = s0 iv_val = s1 ).
    s0 = p1.
    s1 = p2.
    mem_st_i32_8( iv_addr = s0 iv_val = s1 ).
  ENDMETHOD.
  METHOD f1266.
    DATA l3 TYPE int8.
    DATA s0 TYPE i.
    DATA s1 TYPE i.
    DATA s2 TYPE i.
    DATA s3 TYPE i.
    DATA s4 TYPE i.
    DATA s5 TYPE i.
    DATA s6 TYPE i.
    DATA s7 TYPE i.
    DATA lv_br TYPE i.
    s0 = p0.
    s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ).
    l3 = s0.
    s0 = p0.
    s1 = p1.
    s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 0 ).
    zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ).
    s0 = p1.
    s1 = l3.
    zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ).
  ENDMETHOD.
  METHOD f1267.
    DATA s0 TYPE i.
    DATA s1 TYPE i.
    DATA s2 TYPE i.
    DATA s3 TYPE i.
    DATA s4 TYPE i.
    DATA s5 TYPE i.
    DATA s6 TYPE i.
    DATA s7 TYPE i.
    DATA lv_br TYPE i.
    s0 = p0.
    s0 = mem_ld_i32( s0 + 16 ).
    p0 = s0.
    s1 = 16.
    s0 = s0 + s1.
    s1 = p1.
    s2 = p2.
    s3 = p0.
    s3 = mem_ld_i32( s3 + 8 ).
    DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
    s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ).
    rv = s0.
  ENDMETHOD.
  METHOD f1268.
    DATA l3 TYPE i.
    DATA s0 TYPE i.
    DATA s1 TYPE i.
    DATA s2 TYPE i.
    DATA s3 TYPE i.
    DATA s4 TYPE i.
    DATA s5 TYPE i.
    DATA s6 TYPE i.
    DATA s7 TYPE i.
    DATA lv_br TYPE i.
    s0 = p1.
    s0 = zcl_wasm_rt=>wrap_i64( s0 ).
    s0 = mem_ld_i32( s0 + 32 ).
    l3 = s0.
    IF s0 <> 0.
      s0 = p0.
      s1 = l3.
      s2 = p2.
      DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
      dispatch_t6( iv_idx = lv_ci_func p0 = s0 p1 = s1 ).
    ELSE.
    ENDIF.
  ENDMETHOD.
  METHOD f1269.
    DATA s0 TYPE i.
    DATA s1 TYPE i.
    DATA s2 TYPE i.
    DATA s3 TYPE i.
    DATA s4 TYPE i.
    DATA s5 TYPE i.
    DATA s6 TYPE i.
    DATA s7 TYPE i.
    DATA lv_br TYPE i.
    s0 = p0.
    s1 = p3.
    s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 0 ).
    s2 = p3.
    s3 = p3.
    s4 = 8.
    s3 = s3 + s4.
    s4 = 2.
    s0 = f550( p0 = s0 p1 = s1 p2 = s2 p3 = s3 p4 = s4 ).
    rv = s0.
  ENDMETHOD.
  METHOD f1270.
    DATA s0 TYPE i.
    DATA s1 TYPE i.
    DATA s2 TYPE i.
    DATA s3 TYPE i.
    DATA s4 TYPE i.
    DATA s5 TYPE i.
    DATA s6 TYPE i.
    DATA s7 TYPE i.
    DATA lv_br TYPE i.
    s0 = p0.
    s0 = mem_ld_i32( s0 ).
    s1 = p1.
    s2 = p2.
    s3 = p0.
    s4 = 4.
    s3 = s3 + s4.
    s3 = mem_ld_i32( s3 ).
    DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
    s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ).
    rv = s0.
  ENDMETHOD.
  METHOD f1271.
    DATA s0 TYPE i.
    DATA s1 TYPE i.
    DATA s2 TYPE i.
    DATA s3 TYPE i.
    DATA s4 TYPE i.
    DATA s5 TYPE i.
    DATA s6 TYPE i.
    DATA s7 TYPE i.
    DATA lv_br TYPE i.
    s0 = p0.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      f1183( ).
      RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
    ELSE.
    ENDIF.
    s0 = p1.
    f687( p0 = s0 ).
    RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
  ENDMETHOD.
  METHOD f1272.
    DATA s0 TYPE i.
    DATA s1 TYPE i.
    DATA s2 TYPE i.
    DATA s3 TYPE i.
    DATA s4 TYPE i.
    DATA s5 TYPE i.
    DATA s6 TYPE i.
    DATA s7 TYPE i.
    DATA lv_br TYPE i.
    s0 = p0.
    s1 = 1048592.
    mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ).
    s0 = p0.
    s1 = p1.
    s2 = 28.
    s1 = s1 + s2.
    mem_st_i32( iv_addr = s0 iv_val = s1 ).
  ENDMETHOD.
  METHOD f1273.
    DATA s0 TYPE i.
    DATA s1 TYPE i.
    DATA s2 TYPE i.
    DATA s3 TYPE i.
    DATA s4 TYPE i.
    DATA s5 TYPE i.
    DATA s6 TYPE i.
    DATA s7 TYPE i.
    DATA lv_br TYPE i.
    s0 = p0.
    s1 = 1048652.
    mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ).
    s0 = p0.
    s1 = p1.
    s2 = 28.
    s1 = s1 + s2.
    mem_st_i32( iv_addr = s0 iv_val = s1 ).
  ENDMETHOD.
  METHOD f1274.
    DATA s0 TYPE i.
    DATA s1 TYPE i.
    DATA s2 TYPE i.
    DATA s3 TYPE i.
    DATA s4 TYPE i.
    DATA s5 TYPE i.
    DATA s6 TYPE i.
    DATA s7 TYPE i.
    DATA lv_br TYPE i.
    s0 = p1.
    s0 = mem_ld_i32( s0 + 20 ).
    s1 = 1116188.
    s2 = 5.
    s3 = p1.
    s3 = mem_ld_i32( s3 + 24 ).
    s3 = mem_ld_i32( s3 + 12 ).
    DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
    s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ).
    rv = s0.
  ENDMETHOD.
  METHOD f1275.
    DATA s0 TYPE i.
    DATA s1 TYPE i.
    DATA s2 TYPE i.
    DATA s3 TYPE i.
    DATA s4 TYPE i.
    DATA s5 TYPE i.
    DATA s6 TYPE i.
    DATA s7 TYPE i.
    DATA lv_br TYPE i.
    s0 = p1.
    s0 = mem_ld_i32( s0 + 20 ).
    s1 = 1049893.
    s2 = 14.
    s3 = p1.
    s3 = mem_ld_i32( s3 + 24 ).
    s3 = mem_ld_i32( s3 + 12 ).
    DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
    s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ).
    rv = s0.
  ENDMETHOD.
  METHOD f1276.
    DATA s0 TYPE i.
    DATA s1 TYPE i.
    DATA s2 TYPE i.
    DATA s3 TYPE i.
    DATA s4 TYPE i.
    DATA s5 TYPE i.
    DATA s6 TYPE i.
    DATA s7 TYPE i.
    DATA lv_br TYPE i.
    s0 = p0.
    s1 = 1059636.
    mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ).
    s0 = p0.
    s1 = p1.
    s2 = 28.
    s1 = s1 + s2.
    mem_st_i32( iv_addr = s0 iv_val = s1 ).
  ENDMETHOD.
  METHOD f1277.
    DATA s0 TYPE i.
    DATA s1 TYPE i.
    DATA s2 TYPE i.
    DATA s3 TYPE i.
    DATA s4 TYPE i.
    DATA s5 TYPE i.
    DATA s6 TYPE i.
    DATA s7 TYPE i.
    DATA lv_br TYPE i.
    s0 = p0.
    s1 = 1059576.
    mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ).
    s0 = p0.
    s1 = p1.
    s2 = 28.
    s1 = s1 + s2.
    mem_st_i32( iv_addr = s0 iv_val = s1 ).
  ENDMETHOD.
  METHOD f1278.
    DATA s0 TYPE i.
    DATA s1 TYPE i.
    DATA s2 TYPE i.
    DATA s3 TYPE i.
    DATA s4 TYPE i.
    DATA s5 TYPE i.
    DATA s6 TYPE i.
    DATA s7 TYPE i.
    DATA lv_br TYPE i.
    s0 = p0.
    s1 = 1059936.
    mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ).
    s0 = p0.
    s1 = p1.
    s2 = 28.
    s1 = s1 + s2.
    mem_st_i32( iv_addr = s0 iv_val = s1 ).
  ENDMETHOD.
  METHOD f1279.
    DATA s0 TYPE i.
    DATA s1 TYPE i.
    DATA s2 TYPE i.
    DATA s3 TYPE i.
    DATA s4 TYPE i.
    DATA s5 TYPE i.
    DATA s6 TYPE i.
    DATA s7 TYPE i.
    DATA lv_br TYPE i.
    s0 = p0.
    s1 = 1059756.
    mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ).
    s0 = p0.
    s1 = p1.
    s2 = 28.
    s1 = s1 + s2.
    mem_st_i32( iv_addr = s0 iv_val = s1 ).
  ENDMETHOD.
ENDCLASS.
