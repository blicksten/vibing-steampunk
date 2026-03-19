CLASS zcl_qjs_c17 DEFINITION PUBLIC FINAL CREATE PUBLIC.
  PUBLIC SECTION.
    DATA mo_main TYPE REF TO zcl_qjs.
    METHODS f1360 IMPORTING p0 TYPE i p1 TYPE i RETURNING VALUE(rv) TYPE i.
    METHODS f1361 IMPORTING p0 TYPE i RETURNING VALUE(rv) TYPE i.
    METHODS f1362 IMPORTING p0 TYPE i RETURNING VALUE(rv) TYPE i.
    METHODS f1363 IMPORTING p0 TYPE i p1 TYPE int8 RETURNING VALUE(rv) TYPE int8.
    METHODS f1364 IMPORTING p0 TYPE i p1 TYPE i p2 TYPE i RETURNING VALUE(rv) TYPE i.
    METHODS f1365 IMPORTING p0 TYPE i p1 TYPE i p2 TYPE i RETURNING VALUE(rv) TYPE i.
    METHODS f1366 IMPORTING p0 TYPE i p1 TYPE i p2 TYPE i RETURNING VALUE(rv) TYPE i.
    METHODS f1367 IMPORTING p0 TYPE i p1 TYPE i p2 TYPE i RETURNING VALUE(rv) TYPE i.
    METHODS f1368 IMPORTING p0 TYPE i p1 TYPE i p2 TYPE i RETURNING VALUE(rv) TYPE i.
    METHODS f1369 IMPORTING p0 TYPE i p1 TYPE i p2 TYPE i.
    METHODS f1370 IMPORTING p0 TYPE i p1 TYPE i RETURNING VALUE(rv) TYPE i.
    METHODS f1371 IMPORTING p0 TYPE i p1 TYPE i RETURNING VALUE(rv) TYPE i.
    METHODS f1372 IMPORTING p0 TYPE i p1 TYPE i RETURNING VALUE(rv) TYPE i.
    METHODS f1373 IMPORTING p0 TYPE i p1 TYPE i RETURNING VALUE(rv) TYPE i.
    METHODS f1374 IMPORTING p0 TYPE i p1 TYPE i RETURNING VALUE(rv) TYPE i.
    METHODS f1375 IMPORTING p0 TYPE i p1 TYPE i RETURNING VALUE(rv) TYPE i.
    METHODS f1376 IMPORTING p0 TYPE i p1 TYPE i RETURNING VALUE(rv) TYPE i.
    METHODS f1377 IMPORTING p0 TYPE i p1 TYPE i RETURNING VALUE(rv) TYPE i.
    METHODS f1378 IMPORTING p0 TYPE i p1 TYPE i RETURNING VALUE(rv) TYPE i.
    METHODS f1379 IMPORTING p0 TYPE i p1 TYPE i RETURNING VALUE(rv) TYPE i.
    METHODS f1380 IMPORTING p0 TYPE i p1 TYPE i RETURNING VALUE(rv) TYPE i.
    METHODS f1381 IMPORTING p0 TYPE i p1 TYPE i RETURNING VALUE(rv) TYPE i.
    METHODS f1382 IMPORTING p0 TYPE i p1 TYPE int8 RETURNING VALUE(rv) TYPE int8.
    METHODS f1383 IMPORTING p0 TYPE i p1 TYPE int8 RETURNING VALUE(rv) TYPE int8.
    METHODS f1384 IMPORTING p0 TYPE i p1 TYPE int8.
    METHODS f1385 IMPORTING p0 TYPE i p1 TYPE i RETURNING VALUE(rv) TYPE int8.
    METHODS f1386 IMPORTING p0 TYPE i p1 TYPE i RETURNING VALUE(rv) TYPE int8.
    METHODS f1387 IMPORTING p0 TYPE i p1 TYPE i RETURNING VALUE(rv) TYPE int8.
    METHODS f1388 IMPORTING p0 TYPE i p1 TYPE i.
    METHODS f1389 IMPORTING p0 TYPE i p1 TYPE i RETURNING VALUE(rv) TYPE i.
    METHODS f1390 IMPORTING p0 TYPE i p1 TYPE i p2 TYPE i RETURNING VALUE(rv) TYPE i.
    METHODS f1391 IMPORTING p0 TYPE i p1 TYPE i p2 TYPE i p3 TYPE i RETURNING VALUE(rv) TYPE int8.
    METHODS f1392 IMPORTING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i RETURNING VALUE(rv) TYPE int8.
    METHODS f1393 IMPORTING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i RETURNING VALUE(rv) TYPE int8.
    METHODS f1394 IMPORTING p0 TYPE f RETURNING VALUE(rv) TYPE f.
    METHODS f1395 IMPORTING p0 TYPE i.
    METHODS f1396 IMPORTING p0 TYPE i.
    METHODS f1397 IMPORTING p0 TYPE i p1 TYPE i RETURNING VALUE(rv) TYPE int8.
    METHODS f1398 IMPORTING p0 TYPE i p1 TYPE i RETURNING VALUE(rv) TYPE int8.
    METHODS f1399 IMPORTING p0 TYPE i p1 TYPE i RETURNING VALUE(rv) TYPE int8.
    METHODS f1400 IMPORTING p0 TYPE f RETURNING VALUE(rv) TYPE f.
    METHODS f1401 IMPORTING p0 TYPE f RETURNING VALUE(rv) TYPE f.
    METHODS f1402 IMPORTING p0 TYPE f RETURNING VALUE(rv) TYPE f.
    METHODS f1403 IMPORTING p0 TYPE f RETURNING VALUE(rv) TYPE f.
    METHODS f1404 IMPORTING p0 TYPE f RETURNING VALUE(rv) TYPE f.
    METHODS f1405 IMPORTING p0 TYPE i RETURNING VALUE(rv) TYPE i.
    METHODS f1406 IMPORTING p0 TYPE i p1 TYPE i p2 TYPE i p3 TYPE i p4 TYPE i RETURNING VALUE(rv) TYPE int8.
    METHODS f1407 IMPORTING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i RETURNING VALUE(rv) TYPE int8.
    METHODS f1408 IMPORTING p0 TYPE i p1 TYPE i p2 TYPE i.
    METHODS f1409 IMPORTING p0 TYPE i.
ENDCLASS.

CLASS zcl_qjs_c17 IMPLEMENTATION.
  METHOD f1360.
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
    s0 = mem_ld_i32( s0 ).
    s1 = p1.
    s0 = f17( p0 = s0 p1 = s1 ).
    rv = s0.
  ENDMETHOD.
  METHOD f1361.
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
    s1 = 1125712.
    s2 = 1126464.
    s3 = 23.
    s0 = f476( p0 = s0 p1 = s1 p2 = s2 p3 = s3 ).
    rv = s0.
  ENDMETHOD.
  METHOD f1362.
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
    s1 = 1126544.
    s2 = 1127648.
    s3 = 35.
    s0 = f476( p0 = s0 p1 = s1 p2 = s2 p3 = s3 ).
    rv = s0.
  ENDMETHOD.
  METHOD f1363.
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
    s2 = 0.
    s3 = 131073.
    s0 = f838( p0 = s0 p1 = s1 p2 = s2 p3 = s3 ).
    rv = s0.
  ENDMETHOD.
  METHOD f1364.
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
    s0 = mem_ld_i32_8s( s0 ).
    s1 = p1.
    s1 = mem_ld_i32_8s( s1 ).
    s0 = s0 - s1.
    rv = s0.
  ENDMETHOD.
  METHOD f1365.
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
    s1 = p1.
    s1 = mem_ld_i32_8u( s1 ).
    s0 = s0 - s1.
    rv = s0.
  ENDMETHOD.
  METHOD f1366.
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
    s0 = zcl_wasm_rt=>mem_ld_i32_16s( iv_mem = mv_mem iv_addr = s0 ).
    s1 = p1.
    s1 = zcl_wasm_rt=>mem_ld_i32_16s( iv_mem = mv_mem iv_addr = s1 ).
    s0 = s0 - s1.
    rv = s0.
  ENDMETHOD.
  METHOD f1367.
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
    s1 = p1.
    s1 = mem_ld_i32_16u( s1 ).
    s0 = s0 - s1.
    rv = s0.
  ENDMETHOD.
  METHOD f1368.
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
    s2 = p2.
    s3 = 2.
    s0 = f78( p0 = s0 p1 = s1 p2 = s2 p3 = s3 ).
    rv = s0.
  ENDMETHOD.
  METHOD f1369.
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
      s0 = p2.
      f125( p0 = s0 ).
    ELSE.
    ENDIF.
  ENDMETHOD.
  METHOD f1370.
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
    s1 = 1049164.
    s2 = p1.
    s0 = f360( p0 = s0 p1 = s1 p2 = s2 ).
    rv = s0.
  ENDMETHOD.
  METHOD f1371.
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
    s0 = f17( p0 = s0 p1 = s1 ).
    rv = s0.
  ENDMETHOD.
  METHOD f1372.
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
    s1 = 1050336.
    s2 = p1.
    s0 = f360( p0 = s0 p1 = s1 p2 = s2 ).
    rv = s0.
  ENDMETHOD.
  METHOD f1373.
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
    s0 = f266( p0 = s0 p1 = s1 ).
    rv = s0.
  ENDMETHOD.
  METHOD f1374.
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
    s0 = f646( p0 = s0 p1 = s1 ).
    rv = s0.
  ENDMETHOD.
  METHOD f1375.
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
    s0 = f155( p0 = s0 p1 = s1 ).
    rv = s0.
  ENDMETHOD.
  METHOD f1376.
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
    s1 = 1079005.
    s2 = 2.
    s0 = f244( p0 = s0 p1 = s1 p2 = s2 ).
    rv = s0.
  ENDMETHOD.
  METHOD f1377.
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
    s1 = 1079348.
    s2 = p1.
    s0 = f360( p0 = s0 p1 = s1 p2 = s2 ).
    rv = s0.
  ENDMETHOD.
  METHOD f1378.
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
    s1 = 1114500.
    s2 = p1.
    s0 = f360( p0 = s0 p1 = s1 p2 = s2 ).
    rv = s0.
  ENDMETHOD.
  METHOD f1379.
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
    s1 = 1114524.
    s2 = p1.
    s0 = f360( p0 = s0 p1 = s1 p2 = s2 ).
    rv = s0.
  ENDMETHOD.
  METHOD f1380.
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
    s1 = 1114476.
    s2 = p1.
    s0 = f360( p0 = s0 p1 = s1 p2 = s2 ).
    rv = s0.
  ENDMETHOD.
  METHOD f1381.
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
    s1 = 1114452.
    s2 = p1.
    s0 = f360( p0 = s0 p1 = s1 p2 = s2 ).
    rv = s0.
  ENDMETHOD.
  METHOD f1382.
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
    s2 = 10.
    s0 = f649( p0 = s0 p1 = s1 p2 = s2 ).
    rv = s0.
  ENDMETHOD.
  METHOD f1383.
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
    s2 = 0.
    s0 = f341( p0 = s0 p1 = s1 p2 = s2 ).
    rv = s0.
  ENDMETHOD.
  METHOD f1384.
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
    s1 = p1.
    f453( p0 = s0 p1 = s1 ).
  ENDMETHOD.
  METHOD f1385.
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
    s0 = zcl_wasm_rt=>mem_ld_i64_ext( iv_mem = mv_mem iv_addr = s0 + 0 iv_op = 48 ).
    s1 = 4294967295.
    s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ).
    rv = s0.
  ENDMETHOD.
  METHOD f1386.
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
    s0 = zcl_wasm_rt=>mem_ld_i64_ext( iv_mem = mv_mem iv_addr = s0 + 0 iv_op = 50 ).
    s1 = 4294967295.
    s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ).
    rv = s0.
  ENDMETHOD.
  METHOD f1387.
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
    s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 0 ).
    s0 = f658( p0 = s0 p1 = s1 ).
    rv = s0.
  ENDMETHOD.
  METHOD f1388.
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
    s1 = 0.
    mem_st_i32( iv_addr = s0 iv_val = s1 ).
  ENDMETHOD.
  METHOD f1389.
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
    s0 = f17( p0 = s0 p1 = s1 ).
    rv = s0.
  ENDMETHOD.
  METHOD f1390.
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
    s0 = f205( p0 = s0 p1 = s1 ).
    rv = s0.
  ENDMETHOD.
  METHOD f1391.
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
    s0 = f124( p0 = s0 p1 = s1 ).
    rv = s0.
  ENDMETHOD.
  METHOD f1392.
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
    s0 = f151( p0 = s0 p1 = s1 ).
    rv = s0.
  ENDMETHOD.
  METHOD f1393.
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
    s0 = f147( p0 = s0 p1 = s1 ).
    rv = s0.
  ENDMETHOD.
  METHOD f1394.
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
    s0 = s0. " f32.demote_f64 (precision loss ok)
    s0 = s0. " f64.promote_f32 (noop in ABAP)
    rv = s0.
  ENDMETHOD.
  METHOD f1395.
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
    " WASI proc_exit: s0
    RETURN. " exit
    RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
  ENDMETHOD.
  METHOD f1396.
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
    f1395( p0 = s0 ).
    RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
  ENDMETHOD.
  METHOD f1397.
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
    s0 = zcl_wasm_rt=>mem_ld_i64_ext( iv_mem = mv_mem iv_addr = s0 + 0 iv_op = 49 ).
    rv = s0.
  ENDMETHOD.
  METHOD f1398.
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
    s0 = zcl_wasm_rt=>mem_ld_i64_ext( iv_mem = mv_mem iv_addr = s0 + 0 iv_op = 51 ).
    rv = s0.
  ENDMETHOD.
  METHOD f1399.
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
    s0 = zcl_wasm_rt=>mem_ld_i64_ext( iv_mem = mv_mem iv_addr = s0 + 0 iv_op = 53 ).
    rv = s0.
  ENDMETHOD.
  METHOD f1400.
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
    s0 = abs( s0 ).
    rv = s0.
  ENDMETHOD.
  METHOD f1401.
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
    s0 = sqrt( s0 ).
    rv = s0.
  ENDMETHOD.
  METHOD f1402.
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
    s0 = ceil( s0 ).
    rv = s0.
  ENDMETHOD.
  METHOD f1403.
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
    s0 = floor( s0 ).
    rv = s0.
  ENDMETHOD.
  METHOD f1404.
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
    s0 = trunc( s0 ).
    rv = s0.
  ENDMETHOD.
  METHOD f1405.
    DATA s0 TYPE i.
    DATA s1 TYPE i.
    DATA s2 TYPE i.
    DATA s3 TYPE i.
    DATA s4 TYPE i.
    DATA s5 TYPE i.
    DATA s6 TYPE i.
    DATA s7 TYPE i.
    DATA lv_br TYPE i.
    s0 = 0.
    rv = s0.
  ENDMETHOD.
  METHOD f1406.
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
    rv = s0.
  ENDMETHOD.
  METHOD f1407.
    DATA s0 TYPE i.
    DATA s1 TYPE i.
    DATA s2 TYPE i.
    DATA s3 TYPE i.
    DATA s4 TYPE i.
    DATA s5 TYPE i.
    DATA s6 TYPE i.
    DATA s7 TYPE i.
    DATA lv_br TYPE i.
    s0 = 12884901888.
    rv = s0.
  ENDMETHOD.
  METHOD f1408.
    DATA s0 TYPE i.
    DATA s1 TYPE i.
    DATA s2 TYPE i.
    DATA s3 TYPE i.
    DATA s4 TYPE i.
    DATA s5 TYPE i.
    DATA s6 TYPE i.
    DATA s7 TYPE i.
    DATA lv_br TYPE i.
  ENDMETHOD.
  METHOD f1409.
    DATA s0 TYPE i.
    DATA s1 TYPE i.
    DATA s2 TYPE i.
    DATA s3 TYPE i.
    DATA s4 TYPE i.
    DATA s5 TYPE i.
    DATA s6 TYPE i.
    DATA s7 TYPE i.
    DATA lv_br TYPE i.
  ENDMETHOD.
ENDCLASS.
