FORM f1360 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s0 = mem_ld_i32( s0 ). s0 = mem_ld_i32( s0 ). s1 = p1.
  PERFORM f17 USING s0 s1 CHANGING s0. rv = s0.
ENDFORM.

FORM f1361 USING p0 TYPE i CHANGING rv TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = 1125712. s2 = 1126464. s3 = 23. PERFORM f476 USING s0 s1 s2 s3 CHANGING s0.
  rv = s0.
ENDFORM.

FORM f1362 USING p0 TYPE i CHANGING rv TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = 1126544. s2 = 1127648. s3 = 35. PERFORM f476 USING s0 s1 s2 s3 CHANGING s0.
  rv = s0.
ENDFORM.

FORM f1363 USING p0 TYPE i p1 TYPE int8 CHANGING rv TYPE int8.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = p1. s2 = 0. s3 = 131073. PERFORM f838 USING s0 s1 s2 s3 CHANGING s0. rv = s0.
ENDFORM.

FORM f1364 USING p0 TYPE i p1 TYPE i p2 TYPE i CHANGING rv TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s0 = mem_ld_i32_8s( s0 ). s1 = p1. s1 = mem_ld_i32_8s( s1 ). s0 = s0 - s1.
  rv = s0.
ENDFORM.

FORM f1365 USING p0 TYPE i p1 TYPE i p2 TYPE i CHANGING rv TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s0 = mem_ld_i32_8u( s0 ). s1 = p1. s1 = mem_ld_i32_8u( s1 ). s0 = s0 - s1.
  rv = s0.
ENDFORM.

FORM f1366 USING p0 TYPE i p1 TYPE i p2 TYPE i CHANGING rv TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s0 = zcl_wasm_rt=>mem_ld_i32_16s( iv_mem = mv_mem iv_addr = s0 ). s1 = p1.
  s1 = zcl_wasm_rt=>mem_ld_i32_16s( iv_mem = mv_mem iv_addr = s1 ). s0 = s0 - s1. rv = s0.
ENDFORM.

FORM f1367 USING p0 TYPE i p1 TYPE i p2 TYPE i CHANGING rv TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s0 = mem_ld_i32_16u( s0 ). s1 = p1. s1 = mem_ld_i32_16u( s1 ). s0 = s0 - s1.
  rv = s0.
ENDFORM.

FORM f1368 USING p0 TYPE i p1 TYPE i p2 TYPE i CHANGING rv TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = p1. s2 = p2. s3 = 2. PERFORM f78 USING s0 s1 s2 s3 CHANGING s0. rv = s0.
ENDFORM.

FORM f1369 USING p0 TYPE i p1 TYPE i p2 TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p1.
  IF s0 <> 0.
    s0 = p2. PERFORM f125 USING s0.
  ELSE.
  ENDIF.
ENDFORM.

FORM f1370 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = 1049164. s2 = p1. PERFORM f360 USING s0 s1 s2 CHANGING s0. rv = s0.
ENDFORM.

FORM f1371 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s0 = mem_ld_i32( s0 ). s1 = p1. PERFORM f17 USING s0 s1 CHANGING s0. rv = s0.
ENDFORM.

FORM f1372 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = 1050336. s2 = p1. PERFORM f360 USING s0 s1 s2 CHANGING s0. rv = s0.
ENDFORM.

FORM f1373 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s0 = mem_ld_i32( s0 ). s1 = p1. PERFORM f266 USING s0 s1 CHANGING s0. rv = s0.
ENDFORM.

FORM f1374 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s0 = mem_ld_i32( s0 ). s1 = p1. PERFORM f646 USING s0 s1 CHANGING s0. rv = s0.
ENDFORM.

FORM f1375 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s0 = mem_ld_i32( s0 ). s1 = p1. PERFORM f155 USING s0 s1 CHANGING s0. rv = s0.
ENDFORM.

FORM f1376 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p1. s1 = 1079005. s2 = 2. PERFORM f244 USING s0 s1 s2 CHANGING s0. rv = s0.
ENDFORM.

FORM f1377 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = 1079348. s2 = p1. PERFORM f360 USING s0 s1 s2 CHANGING s0. rv = s0.
ENDFORM.

FORM f1378 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = 1114500. s2 = p1. PERFORM f360 USING s0 s1 s2 CHANGING s0. rv = s0.
ENDFORM.

FORM f1379 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = 1114524. s2 = p1. PERFORM f360 USING s0 s1 s2 CHANGING s0. rv = s0.
ENDFORM.

FORM f1380 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = 1114476. s2 = p1. PERFORM f360 USING s0 s1 s2 CHANGING s0. rv = s0.
ENDFORM.

FORM f1381 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = 1114452. s2 = p1. PERFORM f360 USING s0 s1 s2 CHANGING s0. rv = s0.
ENDFORM.

FORM f1382 USING p0 TYPE i p1 TYPE int8 CHANGING rv TYPE int8.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = p1. s2 = 10. PERFORM f649 USING s0 s1 s2 CHANGING s0. rv = s0.
ENDFORM.

FORM f1383 USING p0 TYPE i p1 TYPE int8 CHANGING rv TYPE int8.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = p1. s2 = 0. PERFORM f341 USING s0 s1 s2 CHANGING s0. rv = s0.
ENDFORM.

FORM f1384 USING p0 TYPE i p1 TYPE int8.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = p1. PERFORM f453 USING s0 s1.
ENDFORM.

FORM f1385 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE int8.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p1. s0 = zcl_wasm_rt=>mem_ld_i64_ext( iv_mem = mv_mem iv_addr = s0 + 0 iv_op = 48 ).
  s1 = 4294967295. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). rv = s0.
ENDFORM.

FORM f1386 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE int8.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p1. s0 = zcl_wasm_rt=>mem_ld_i64_ext( iv_mem = mv_mem iv_addr = s0 + 0 iv_op = 50 ).
  s1 = 4294967295. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). rv = s0.
ENDFORM.

FORM f1387 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE int8.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = p1. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 0 ).
  PERFORM f658 USING s0 s1 CHANGING s0. rv = s0.
ENDFORM.

FORM f1388 USING p0 TYPE i p1 TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = 0. mem_st_i32( iv_addr = s0 iv_val = s1 ).
ENDFORM.

FORM f1389 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = p1. PERFORM f17 USING s0 s1 CHANGING s0. rv = s0.
ENDFORM.

FORM f1390 USING p0 TYPE i p1 TYPE i p2 TYPE i CHANGING rv TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p1. s1 = p2. PERFORM f205 USING s0 s1 CHANGING s0. rv = s0.
ENDFORM.

FORM f1391 USING p0 TYPE i p1 TYPE i p2 TYPE i p3 TYPE i CHANGING rv TYPE int8.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = p3. PERFORM f124 USING s0 s1 CHANGING s0. rv = s0.
ENDFORM.

FORM f1392 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i CHANGING rv TYPE int8.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = p1. PERFORM f151 USING s0 s1 CHANGING s0. rv = s0.
ENDFORM.

FORM f1393 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i CHANGING rv TYPE int8.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = p1. PERFORM f147 USING s0 s1 CHANGING s0. rv = s0.
ENDFORM.

FORM f1394 USING p0 TYPE f CHANGING rv TYPE f.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s0 = s0. " f32.demote_f64 (precision loss ok)
  s0 = s0. " f64.promote_f32 (noop in ABAP) rv = s0.
ENDFORM.

FORM f1395 USING p0 TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0.
  " WASI proc_exit: s0
  RETURN. " exit
  RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
ENDFORM.

FORM f1396 USING p0 TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. PERFORM f1395 USING s0.
  RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
ENDFORM.

FORM f1397 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE int8.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p1. s0 = zcl_wasm_rt=>mem_ld_i64_ext( iv_mem = mv_mem iv_addr = s0 + 0 iv_op = 49 ).
  rv = s0.
ENDFORM.

FORM f1398 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE int8.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p1. s0 = zcl_wasm_rt=>mem_ld_i64_ext( iv_mem = mv_mem iv_addr = s0 + 0 iv_op = 51 ).
  rv = s0.
ENDFORM.

FORM f1399 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE int8.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p1. s0 = zcl_wasm_rt=>mem_ld_i64_ext( iv_mem = mv_mem iv_addr = s0 + 0 iv_op = 53 ).
  rv = s0.
ENDFORM.

FORM f1400 USING p0 TYPE f CHANGING rv TYPE f.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s0 = abs( s0 ). rv = s0.
ENDFORM.

FORM f1401 USING p0 TYPE f CHANGING rv TYPE f.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s0 = sqrt( s0 ). rv = s0.
ENDFORM.

FORM f1402 USING p0 TYPE f CHANGING rv TYPE f.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s0 = ceil( s0 ). rv = s0.
ENDFORM.

FORM f1403 USING p0 TYPE f CHANGING rv TYPE f.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s0 = floor( s0 ). rv = s0.
ENDFORM.

FORM f1404 USING p0 TYPE f CHANGING rv TYPE f.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = p0. s0 = trunc( s0 ). rv = s0.
ENDFORM.

FORM f1405 USING p0 TYPE i CHANGING rv TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = 0. rv = s0.
ENDFORM.

FORM f1406 USING p0 TYPE i p1 TYPE i p2 TYPE i p3 TYPE i p4 TYPE i CHANGING rv TYPE int8.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = -51539607552. rv = s0.
ENDFORM.

FORM f1407 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i CHANGING rv TYPE int8.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i. s0 = 12884901888. rv = s0.
ENDFORM.

FORM f1408 USING p0 TYPE i p1 TYPE i p2 TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i.
ENDFORM.

FORM f1409 USING p0 TYPE i.
  DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA lv_br TYPE i.
ENDFORM.

