FORM f1280 USING p0 TYPE i p1 TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = 1059516. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = p0. s1 = p1.
  s2 = 28. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
ENDFORM.

FORM f1281 USING p0 TYPE i p1 TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = 1059696. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = p0. s1 = p1.
  s2 = 28. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
ENDFORM.

FORM f1282 USING p0 TYPE i p1 TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = 1059816. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = p0. s1 = p1.
  s2 = 28. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
ENDFORM.

FORM f1283 USING p0 TYPE i p1 TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = 1059876. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = p0. s1 = p1.
  s2 = 28. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
ENDFORM.

FORM f1284 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p1. s0 = mem_ld_i32( s0 + 20 ). s1 = 1059489. s2 = 11. s3 = p1.
  s3 = mem_ld_i32( s3 + 24 ). s3 = mem_ld_i32( s3 + 12 ).
  DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
  s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). rv = s0.
ENDFORM.

FORM f1285 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p1. s0 = mem_ld_i32( s0 + 20 ). s1 = 1113932. s2 = 9. s3 = p1.
  s3 = mem_ld_i32( s3 + 24 ). s3 = mem_ld_i32( s3 + 12 ).
  DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
  s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). rv = s0.
ENDFORM.

FORM f1286 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s0 = mem_ld_i32( s0 ). p0 = s0. s0 = mem_ld_i32( s0 ). s1 = p0.
  s1 = mem_ld_i32( s1 + 4 ). s2 = p1. PERFORM f248 USING s0 s1 s2 CHANGING s0. rv = s0.
ENDFORM.

FORM f1287 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p1. s0 = mem_ld_i32( s0 + 20 ). s1 = 1080760. s2 = 18. s3 = p1.
  s3 = mem_ld_i32( s3 + 24 ). s3 = mem_ld_i32( s3 + 12 ).
  DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
  s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). rv = s0.
ENDFORM.

FORM f1288 USING p0 TYPE i p1 TYPE i p2 TYPE i CHANGING rv TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = 16. s0 = s0 + s1. s1 = p1. s2 = p2. s3 = p0. s3 = mem_ld_i32( s3 + 8 ).
  DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
  s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). rv = s0.
ENDFORM.

FORM f1289 USING p0 TYPE i p1 TYPE int8 p2 TYPE int8 p3 TYPE i p4 TYPE i CHANGING rv TYPE int8.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = p1. s2 = p2. s3 = 12884901888. s4 = p3. s5 = p4. s6 = 2.
  PERFORM f0 USING s0 s1 s2 s3 s4 s5 s6 CHANGING s0. rv = s0.
ENDFORM.

FORM f1290 USING p0 TYPE f CHANGING rv TYPE f.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = '-1416.099690'. s0 = s0 + s1. PERFORM f532 USING s0 CHANGING s0.
  s1 = '22471164185778948846616314884862809170224712236778832159178760144716584475687620391588559665300942002640014234983924169707348721101802077811605928829934265547220986678108185659537777450155761764931635369010625721104768835292807860184239138817603404645418813835573287279993405742309964538104419541203028017152.000000'.
  s0 = s0 * s1.
  s1 = '22471164185778948846616314884862809170224712236778832159178760144716584475687620391588559665300942002640014234983924169707348721101802077811605928829934265547220986678108185659537777450155761764931635369010625721104768835292807860184239138817603404645418813835573287279993405742309964538104419541203028017152.000000'.
  s0 = s0 * s1. rv = s0.
ENDFORM.

FORM f1291 USING p0 TYPE i p1 TYPE int8.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). s0 = mem_ld_i32( s0 + 32 ). p0 = s0.
  IF s0 <> 0.
    s0 = p0. PERFORM f117 USING s0.
  ELSE.
  ENDIF.
ENDFORM.

FORM f1292 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p1. s0 = mem_ld_i32( s0 + 4 ). s0 = p0. s1 = 1049504. s2 = p1.
  PERFORM f360 USING s0 s1 s2 CHANGING s0. rv = s0.
ENDFORM.

FORM f1293 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p1. s0 = mem_ld_i32( s0 + 4 ). s0 = p0. s1 = 1049796. s2 = p1.
  PERFORM f360 USING s0 s1 s2 CHANGING s0. rv = s0.
ENDFORM.

FORM f1294 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p1. s0 = mem_ld_i32( s0 + 4 ). s0 = p0. s1 = 1061700. s2 = p1.
  PERFORM f360 USING s0 s1 s2 CHANGING s0. rv = s0.
ENDFORM.

FORM f1295 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p1. s0 = mem_ld_i32( s0 + 4 ). s0 = p0. s1 = 1078424. s2 = p1.
  PERFORM f360 USING s0 s1 s2 CHANGING s0. rv = s0.
ENDFORM.

FORM f1296 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p1. s0 = mem_ld_i32( s0 + 4 ). s0 = p0. s1 = 1093452. s2 = p1.
  PERFORM f360 USING s0 s1 s2 CHANGING s0. rv = s0.
ENDFORM.

FORM f1297 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s0 = mem_ld_i32( s0 ). s1 = p1. s2 = p0. s2 = mem_ld_i32( s2 + 4 ).
  s2 = mem_ld_i32( s2 + 16 ).
  DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
  s0 = dispatch_t7( iv_idx = lv_ci_func p0 = s0 p1 = s1 ). rv = s0.
ENDFORM.

FORM f1298 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s0 = mem_ld_i32( s0 ). s1 = p1. s2 = p0. s2 = mem_ld_i32( s2 + 4 ).
  s2 = mem_ld_i32( s2 + 12 ).
  DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
  s0 = dispatch_t7( iv_idx = lv_ci_func p0 = s0 p1 = s1 ). rv = s0.
ENDFORM.

FORM f1299 USING p0 TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s0 = mem_ld_i32( s0 ). p0 = s0. s1 = p0. s1 = mem_ld_i32( s1 ).
  s1 = mem_ld_i32( s1 ).
  DATA(lv_ci_func) = mt_tab0[ s1 + 1 ]. " call_indirect
  dispatch_t2( iv_idx = lv_ci_func p0 = s0 ).
ENDFORM.

FORM f1300 USING p0 TYPE i p1 TYPE i p2 TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = 16. s0 = s0 + s1. s1 = p2. s2 = p0. s2 = mem_ld_i32( s2 + 4 ).
  DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
  dispatch_t6( iv_idx = lv_ci_func p0 = s0 p1 = s1 ).
ENDFORM.

FORM f1301 USING p0 TYPE i p1 TYPE i p2 TYPE i p3 TYPE i p4 TYPE i CHANGING rv TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = p1. s2 = p2. s3 = p3. s4 = p4. s5 = 735.
  PERFORM f815 USING s0 s1 s2 s3 s4 s5 CHANGING s0. rv = s0.
ENDFORM.

FORM f1302 USING p0 TYPE i p1 TYPE i p2 TYPE i p3 TYPE i p4 TYPE i CHANGING rv TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = p1. s2 = p2. s3 = p3. s4 = p4. s5 = 747.
  PERFORM f815 USING s0 s1 s2 s3 s4 s5 CHANGING s0. rv = s0.
ENDFORM.

FORM f1303 USING p0 TYPE i p1 TYPE i p2 TYPE i p3 TYPE i p4 TYPE i CHANGING rv TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = p1. s2 = p2. s3 = p3. s4 = p4. s5 = 0.
  PERFORM f54 USING s0 s1 s2 s3 s4 s5 CHANGING s0. rv = s0.
ENDFORM.

FORM f1304 USING p0 TYPE i p1 TYPE i p2 TYPE i p3 TYPE i p4 TYPE i CHANGING rv TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = p1. s2 = p2. s3 = p3. s4 = p4. s5 = 748.
  PERFORM f815 USING s0 s1 s2 s3 s4 s5 CHANGING s0. rv = s0.
ENDFORM.

FORM f1305 USING p0 TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s0 = mem_ld_i32( s0 ).
  IF s0 <> 0.
    s0 = p0. s0 = mem_ld_i32( s0 + 4 ). PERFORM f125 USING s0.
  ELSE.
  ENDIF.
ENDFORM.

FORM f1306 USING p0 TYPE i p1 TYPE i p2 TYPE i p3 TYPE i CHANGING rv TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = p1. s2 = p2. s3 = p3. s4 = 0. PERFORM f30 USING s0 s1 s2 s3 s4 CHANGING s0.
  rv = s0.
ENDFORM.

FORM f1307 USING p0 TYPE i p1 TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = 1048712. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = p0. s1 = p1.
  mem_st_i32( iv_addr = s0 iv_val = s1 ).
ENDFORM.

FORM f1308 USING p0 TYPE i p1 TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = 1048772. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = p0. s1 = p1.
  mem_st_i32( iv_addr = s0 iv_val = s1 ).
ENDFORM.

FORM f1309 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p1. s1 = p0. s1 = mem_ld_i32( s1 ). s2 = p0. s2 = mem_ld_i32( s2 + 4 ).
  PERFORM f244 USING s0 s1 s2 CHANGING s0. rv = s0.
ENDFORM.

FORM f1310 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p1. s1 = p0. s1 = mem_ld_i32( s1 + 4 ). s2 = p0. s2 = mem_ld_i32( s2 + 8 ).
  PERFORM f244 USING s0 s1 s2 CHANGING s0. rv = s0.
ENDFORM.

FORM f1311 USING p0 TYPE i p1 TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = -3760893627852817914.
  zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 8 CHANGING cv_mem = mv_mem ). s0 = p0. s1 = 8470661435229096975. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ).
ENDFORM.

FORM f1312 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p1. s0 = mem_ld_i32( s0 + 20 ). s1 = p1. s1 = mem_ld_i32( s1 + 24 ). s2 = p0.
  PERFORM f360 USING s0 s1 s2 CHANGING s0. rv = s0.
ENDFORM.

FORM f1313 USING p0 TYPE i p1 TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = -7866395238325006025.
  zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 8 CHANGING cv_mem = mv_mem ). s0 = p0. s1 = 7193329748150720653. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ).
ENDFORM.

FORM f1314 USING p0 TYPE i p1 TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = -1682170127648150765.
  zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 8 CHANGING cv_mem = mv_mem ). s0 = p0. s1 = 6004171009530685923. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ).
ENDFORM.

FORM f1315 USING p0 TYPE i p1 TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = 2087210174025073582.
  zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 8 CHANGING cv_mem = mv_mem ). s0 = p0. s1 = -6142622140250924859. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ).
ENDFORM.

FORM f1316 USING p0 TYPE i p1 TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = 9207876481666673772.
  zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 8 CHANGING cv_mem = mv_mem ). s0 = p0. s1 = -510778516579156249. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ).
ENDFORM.

FORM f1317 USING p0 TYPE i p1 TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = 6673808987791837238.
  zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 8 CHANGING cv_mem = mv_mem ). s0 = p0. s1 = -4200824514708761710. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ).
ENDFORM.

FORM f1318 USING p0 TYPE i p1 TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = -3913182811743664879.
  zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 8 CHANGING cv_mem = mv_mem ). s0 = p0. s1 = -3444278645511029643. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ).
ENDFORM.

FORM f1319 USING p0 TYPE i p1 TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = 7504389826788049128.
  zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 8 CHANGING cv_mem = mv_mem ). s0 = p0. s1 = 5011422510710177119. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ).
ENDFORM.

FORM f1320 USING p0 TYPE i p1 TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = -3260077067098042597.
  zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 8 CHANGING cv_mem = mv_mem ). s0 = p0. s1 = 8323855223473259578. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ).
ENDFORM.

FORM f1321 USING p0 TYPE i p1 TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = 1059996. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = p0. s1 = p1.
  mem_st_i32( iv_addr = s0 iv_val = s1 ).
ENDFORM.

FORM f1322 USING p0 TYPE i p1 TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = 1060296. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = p0. s1 = p1.
  mem_st_i32( iv_addr = s0 iv_val = s1 ).
ENDFORM.

FORM f1323 USING p0 TYPE i p1 TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = 1060116. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = p0. s1 = p1.
  mem_st_i32( iv_addr = s0 iv_val = s1 ).
ENDFORM.

FORM f1324 USING p0 TYPE i p1 TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = -7063004080869952775.
  zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 8 CHANGING cv_mem = mv_mem ). s0 = p0. s1 = 5325385144114573364. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ).
ENDFORM.

FORM f1325 USING p0 TYPE i p1 TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = 40. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = p0. s1 = 1059156.
  mem_st_i32( iv_addr = s0 iv_val = s1 ).
ENDFORM.

FORM f1326 USING p0 TYPE i p1 TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = 1060056. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = p0. s1 = p1.
  mem_st_i32( iv_addr = s0 iv_val = s1 ).
ENDFORM.

FORM f1327 USING p0 TYPE i p1 TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = 1060236. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = p0. s1 = p1.
  mem_st_i32( iv_addr = s0 iv_val = s1 ).
ENDFORM.

FORM f1328 USING p0 TYPE i p1 TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = 1060176. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = p0. s1 = p1.
  mem_st_i32( iv_addr = s0 iv_val = s1 ).
ENDFORM.

FORM f1329 USING p0 TYPE i p1 TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = 5261088657760290136.
  zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 8 CHANGING cv_mem = mv_mem ). s0 = p0. s1 = -5182432383765216851. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ).
ENDFORM.

FORM f1330 USING p0 TYPE i p1 TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = 1060356. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = p0. s1 = p1.
  mem_st_i32( iv_addr = s0 iv_val = s1 ).
ENDFORM.

FORM f1331 USING p0 TYPE i p1 TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = 1060416. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = p0. s1 = p1.
  mem_st_i32( iv_addr = s0 iv_val = s1 ).
ENDFORM.

FORM f1332 USING p0 TYPE i p1 TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = 13. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = p0. s1 = 1059476.
  mem_st_i32( iv_addr = s0 iv_val = s1 ).
ENDFORM.

FORM f1333 USING p0 TYPE i p1 TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = 8935226111122132716.
  zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 8 CHANGING cv_mem = mv_mem ). s0 = p0. s1 = 2075531708415345777. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ).
ENDFORM.

FORM f1334 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s0 = mem_ld_i32( s0 ). s1 = p0. s1 = mem_ld_i32( s1 + 4 ). s2 = p1.
  PERFORM f248 USING s0 s1 s2 CHANGING s0. rv = s0.
ENDFORM.

FORM f1335 USING p0 TYPE i p1 TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = 6385639802083421747.
  zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 8 CHANGING cv_mem = mv_mem ). s0 = p0. s1 = -4982148772931948802. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ).
ENDFORM.

FORM f1336 USING p0 TYPE i p1 TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = -8623366980754492546.
  zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 8 CHANGING cv_mem = mv_mem ). s0 = p0. s1 = 9060376563428101350. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ).
ENDFORM.

FORM f1337 USING p0 TYPE i p1 TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = 3484603028526603575.
  zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 8 CHANGING cv_mem = mv_mem ). s0 = p0. s1 = 6265785332491593399. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ).
ENDFORM.

FORM f1338 USING p0 TYPE i p1 TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = 1654998378876567567.
  zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 8 CHANGING cv_mem = mv_mem ). s0 = p0. s1 = -2953172871442938852. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ).
ENDFORM.

FORM f1339 USING p0 TYPE i p1 TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = 3076013474510964938.
  zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 8 CHANGING cv_mem = mv_mem ). s0 = p0. s1 = -2642998113824923295. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ).
ENDFORM.

FORM f1340 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s0 = mem_ld_i32( s0 + 4 ). s1 = p0. s1 = mem_ld_i32( s1 + 8 ). s2 = p1.
  PERFORM f248 USING s0 s1 s2 CHANGING s0. rv = s0.
ENDFORM.

FORM f1341 USING p0 TYPE i p1 TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = 1117520. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = p0. s1 = p1.
  mem_st_i32( iv_addr = s0 iv_val = s1 ).
ENDFORM.

FORM f1342 USING p0 TYPE i p1 TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = 7199936582794304877.
  zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 8 CHANGING cv_mem = mv_mem ). s0 = p0. s1 = -5076933981314334344. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ).
ENDFORM.

FORM f1343 USING p0 TYPE i p1 TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = 4218379227045449684.
  zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 8 CHANGING cv_mem = mv_mem ). s0 = p0. s1 = 7939287580144545471. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ).
ENDFORM.

FORM f1344 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = 1141485. s2 = 0. PERFORM f970 USING s0 s1 s2 CHANGING s0. s0 = -1. rv = s0.
ENDFORM.

FORM f1345 USING p0 TYPE i p1 TYPE i p2 TYPE int8 CHANGING rv TYPE int8.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = 1141485. s2 = 0. PERFORM f970 USING s0 s1 s2 CHANGING s0. s0 = 25769803776.
  rv = s0.
ENDFORM.

FORM f1346 USING p0 TYPE i p1 TYPE int8 CHANGING rv TYPE int8.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = 1141485. s2 = 0. PERFORM f970 USING s0 s1 s2 CHANGING s0. s0 = 25769803776.
  rv = s0.
ENDFORM.

FORM f1347 USING p0 TYPE i p1 TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p1. s1 = p1. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2.
  mem_st_i32( iv_addr = s0 iv_val = s1 ).
ENDFORM.

FORM f1348 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i CHANGING rv TYPE int8.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = 1138092. s2 = 0. PERFORM f970 USING s0 s1 s2 CHANGING s0. s0 = 25769803776.
  rv = s0.
ENDFORM.

FORM f1349 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i CHANGING rv TYPE int8.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = 1148023. s2 = 0. PERFORM f970 USING s0 s1 s2 CHANGING s0. s0 = 25769803776.
  rv = s0.
ENDFORM.

FORM f1350 USING p0 TYPE i p1 TYPE int8 CHANGING rv TYPE int8.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = p1. s2 = 10. s3 = 0. s4 = 196608.
  PERFORM f367 USING s0 s1 s2 s3 s4 CHANGING s0. rv = s0.
ENDFORM.

FORM f1351 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i p4 TYPE i CHANGING rv TYPE int8.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = p3. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 0 ).
  s2 = 17. s3 = p4. PERFORM f232 USING s0 s1 s2 s3 CHANGING s0. rv = s0.
ENDFORM.

FORM f1352 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i CHANGING rv TYPE int8.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = p3. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 0 ). s2 = 1.
  s3 = 0. PERFORM f232 USING s0 s1 s2 s3 CHANGING s0. rv = s0.
ENDFORM.

FORM f1353 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i CHANGING rv TYPE int8.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = p3. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 0 ). s2 = 2.
  s3 = 0. PERFORM f232 USING s0 s1 s2 s3 CHANGING s0. rv = s0.
ENDFORM.

FORM f1354 USING p0 TYPE i p1 TYPE i p2 TYPE i p3 TYPE i p4 TYPE i CHANGING rv TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = p1. s2 = p2. s3 = p3. s4 = p4. PERFORM f816 USING s0 s1 s2 s3 s4 CHANGING s0.
  rv = s0.
ENDFORM.

FORM f1355 USING p0 TYPE i p1 TYPE i p2 TYPE i p3 TYPE i p4 TYPE i CHANGING rv TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = p1. s2 = p2. s3 = p3. s4 = p4. PERFORM f817 USING s0 s1 s2 s3 s4 CHANGING s0.
  rv = s0.
ENDFORM.

FORM f1356 USING p0 TYPE i p1 TYPE i p2 TYPE i p3 TYPE i p4 TYPE i CHANGING rv TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = p1. s2 = p2. s3 = p3. s4 = p4. PERFORM f818 USING s0 s1 s2 s3 s4 CHANGING s0.
  rv = s0.
ENDFORM.

FORM f1357 USING p0 TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = 1050036. s1 = 43. s2 = p0. PERFORM f1140 USING s0 s1 s2.
  RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
ENDFORM.

FORM f1358 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s0 = zcl_wasm_rt=>mem_ld_i64_ext( iv_mem = mv_mem iv_addr = s0 + 0 iv_op = 53 ).
  s1 = 1. s2 = p1. PERFORM f607 USING s0 s1 s2 CHANGING s0. rv = s0.
ENDFORM.

FORM f1359 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s0 = zcl_wasm_rt=>mem_ld_i64_ext( iv_mem = mv_mem iv_addr = s0 + 0 iv_op = 49 ).
  s1 = 1. s2 = p1. PERFORM f607 USING s0 s1 s2 CHANGING s0. rv = s0.
ENDFORM.

