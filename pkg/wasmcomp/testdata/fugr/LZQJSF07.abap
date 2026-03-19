FORM f560 USING p0 TYPE i CHANGING rv TYPE i.
  DATA l1 TYPE i. DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE i. DATA l8 TYPE i. DATA l9 TYPE i. DATA l10 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i.
  DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i.
  DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 48. s0 = s0 - s1. l2 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    s0 = p0. s0 = mem_ld_i32( s0 + 32 ). s1 = -127.
    IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s1 = 44. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). l4 = s0. s0 = p0. s1 = 36. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). l5 = s0. s0 = p0. s0 = mem_ld_i32( s0 + 64 ). l6 = s0. s0 = p0. s0 = mem_ld_i32( s0 + 20 ). l7 = s0. s0 = p0.
    s0 = mem_ld_i32( s0 + 16 ). l8 = s0. s0 = p0. s0 = mem_ld_i32( s0 + 12 ). l9 = s0. s0 = p0. s0 = mem_ld_i32( s0 + 4 ). l10 = s0.
    DO. " loop
      s0 = p0. s0 = mem_ld_i32( s0 + 72 ). l1 = s0. s0 = l2. s1 = p0. s1 = mem_ld_i32( s1 + 44 ). l3 = s1. s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = l2. s1 = l1. s2 = l3. s1 = s1 - s2. s2 = 2. s1 = s1 - s2.
      mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l2. s1 = 16. s0 = s0 + s1. s1 = 20. s2 = 1139145. s3 = l2. PERFORM f1218 USING s0 s1 s2 s3 CHANGING s0. s0 = -1. l1 = s0. s0 = p0. PERFORM f41 USING s0 CHANGING s0.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          DO 1 TIMES. " block
            DO 1 TIMES. " block
              s0 = p0. s0 = mem_ld_i32( s0 + 32 ). s1 = 128. s0 = s0 + s1.
              CASE s0.
                WHEN 0. lv_br = 1. EXIT.
                WHEN 1. lv_br = 1. EXIT.
                WHEN 2. lv_br = 1. EXIT.
                WHEN 3. lv_br = 1. EXIT.
                WHEN 4. lv_br = 1. EXIT.
                WHEN 5. lv_br = 3. EXIT.
                WHEN 6. lv_br = 3. EXIT.
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
                WHEN 22. lv_br = 1. EXIT.
                WHEN 23. lv_br = 3. EXIT.
                WHEN 24. lv_br = 3. EXIT.
                WHEN 25. lv_br = 3. EXIT.
                WHEN 26. lv_br = 3. EXIT.
                WHEN 27. lv_br = 3. EXIT.
                WHEN 28. lv_br = 3. EXIT.
                WHEN 29. lv_br = 3. EXIT.
                WHEN 30. lv_br = 3. EXIT.
                WHEN 31. lv_br = 3. EXIT.
                WHEN 32. lv_br = 3. EXIT.
                WHEN 33. lv_br = 3. EXIT.
                WHEN 34. lv_br = 3. EXIT.
                WHEN 35. lv_br = 3. EXIT.
                WHEN 36. lv_br = 3. EXIT.
                WHEN 37. lv_br = 3. EXIT.
                WHEN 38. lv_br = 3. EXIT.
                WHEN 39. lv_br = 3. EXIT.
                WHEN 40. lv_br = 3. EXIT.
                WHEN 41. lv_br = 3. EXIT.
                WHEN 42. lv_br = 3. EXIT.
                WHEN 43. lv_br = 3. EXIT.
                WHEN 44. lv_br = 2. EXIT.
                WHEN 45. lv_br = 1. EXIT.
                WHEN 46. lv_br = 1. EXIT.
                WHEN 47. lv_br = 1. EXIT.
                WHEN 48. lv_br = 1. EXIT.
                WHEN 49. lv_br = 3. EXIT.
                WHEN 50. lv_br = 1. EXIT.
                WHEN 51. lv_br = 1. EXIT.
                WHEN 52. lv_br = 1. EXIT.
                WHEN 53. lv_br = 1. EXIT.
                WHEN 54. lv_br = 3. EXIT.
                WHEN 55. lv_br = 1. EXIT.
                WHEN 56. lv_br = 1. EXIT.
                WHEN 57. lv_br = 3. EXIT.
                WHEN 58. lv_br = 3. EXIT.
                WHEN 59. lv_br = 1. EXIT.
                WHEN 60. lv_br = 1. EXIT.
                WHEN 61. lv_br = 1. EXIT.
                WHEN 62. lv_br = 3. EXIT.
                WHEN 63. lv_br = 3. EXIT.
                WHEN 64. lv_br = 1. EXIT.
                WHEN 65. lv_br = 3. EXIT.
                WHEN 66. lv_br = 3. EXIT.
                WHEN 67. lv_br = 1. EXIT.
                WHEN 68. lv_br = 1. EXIT.
                WHEN 69. lv_br = 3. EXIT.
                WHEN 70. lv_br = 3. EXIT.
                WHEN 71. lv_br = 1. EXIT.
                WHEN 72. lv_br = 1. EXIT.
                WHEN 73. lv_br = 1. EXIT.
                WHEN 74. lv_br = 1. EXIT.
                WHEN 75. lv_br = 1. EXIT.
                WHEN 76. lv_br = 1. EXIT.
                WHEN 77. lv_br = 1. EXIT.
                WHEN 78. lv_br = 3. EXIT.
                WHEN 79. lv_br = 1. EXIT.
                WHEN 80. lv_br = 1. EXIT.
                WHEN 81. lv_br = 3. EXIT.
                WHEN 82. lv_br = 1. EXIT.
                WHEN 83. lv_br = 1. EXIT.
                WHEN 84. lv_br = 1. EXIT.
                WHEN 85. lv_br = 1. EXIT.
                WHEN 86. lv_br = 1. EXIT.
                WHEN 87. lv_br = 1. EXIT.
                WHEN 88. lv_br = 1. EXIT.
                WHEN 89. lv_br = 3. EXIT.
                WHEN 90. lv_br = 3. EXIT.
                WHEN 91. lv_br = 3. EXIT.
                WHEN 92. lv_br = 3. EXIT.
                WHEN 93. lv_br = 3. EXIT.
                WHEN 94. lv_br = 3. EXIT.
                WHEN 95. lv_br = 3. EXIT.
                WHEN 96. lv_br = 3. EXIT.
                WHEN 97. lv_br = 3. EXIT.
                WHEN 98. lv_br = 3. EXIT.
                WHEN 99. lv_br = 3. EXIT.
                WHEN 100. lv_br = 3. EXIT.
                WHEN 101. lv_br = 3. EXIT.
                WHEN 102. lv_br = 3. EXIT.
                WHEN 103. lv_br = 3. EXIT.
                WHEN 104. lv_br = 3. EXIT.
                WHEN 105. lv_br = 3. EXIT.
                WHEN 106. lv_br = 3. EXIT.
                WHEN 107. lv_br = 3. EXIT.
                WHEN 108. lv_br = 3. EXIT.
                WHEN 109. lv_br = 3. EXIT.
                WHEN 110. lv_br = 3. EXIT.
                WHEN 111. lv_br = 3. EXIT.
                WHEN 112. lv_br = 3. EXIT.
                WHEN 113. lv_br = 3. EXIT.
                WHEN 114. lv_br = 3. EXIT.
                WHEN 115. lv_br = 3. EXIT.
                WHEN 116. lv_br = 3. EXIT.
                WHEN 117. lv_br = 3. EXIT.
                WHEN 118. lv_br = 3. EXIT.
                WHEN 119. lv_br = 3. EXIT.
                WHEN 120. lv_br = 3. EXIT.
                WHEN 121. lv_br = 3. EXIT.
                WHEN 122. lv_br = 3. EXIT.
                WHEN 123. lv_br = 3. EXIT.
                WHEN 124. lv_br = 3. EXIT.
                WHEN 125. lv_br = 3. EXIT.
                WHEN 126. lv_br = 3. EXIT.
                WHEN 127. lv_br = 3. EXIT.
                WHEN 128. lv_br = 3. EXIT.
                WHEN 129. lv_br = 3. EXIT.
                WHEN 130. lv_br = 3. EXIT.
                WHEN 131. lv_br = 3. EXIT.
                WHEN 132. lv_br = 3. EXIT.
                WHEN 133. lv_br = 3. EXIT.
                WHEN 134. lv_br = 3. EXIT.
                WHEN 135. lv_br = 3. EXIT.
                WHEN 136. lv_br = 3. EXIT.
                WHEN 137. lv_br = 3. EXIT.
                WHEN 138. lv_br = 3. EXIT.
                WHEN 139. lv_br = 3. EXIT.
                WHEN 140. lv_br = 3. EXIT.
                WHEN 141. lv_br = 3. EXIT.
                WHEN 142. lv_br = 3. EXIT.
                WHEN 143. lv_br = 3. EXIT.
                WHEN 144. lv_br = 3. EXIT.
                WHEN 145. lv_br = 3. EXIT.
                WHEN 146. lv_br = 3. EXIT.
                WHEN 147. lv_br = 3. EXIT.
                WHEN 148. lv_br = 3. EXIT.
                WHEN 149. lv_br = 3. EXIT.
                WHEN 150. lv_br = 3. EXIT.
                WHEN 151. lv_br = 3. EXIT.
                WHEN 152. lv_br = 3. EXIT.
                WHEN 153. lv_br = 3. EXIT.
                WHEN 154. lv_br = 3. EXIT.
                WHEN 155. lv_br = 3. EXIT.
                WHEN 156. lv_br = 3. EXIT.
                WHEN 157. lv_br = 3. EXIT.
                WHEN 158. lv_br = 3. EXIT.
                WHEN 159. lv_br = 3. EXIT.
                WHEN 160. lv_br = 3. EXIT.
                WHEN 161. lv_br = 3. EXIT.
                WHEN 162. lv_br = 3. EXIT.
                WHEN 163. lv_br = 3. EXIT.
                WHEN 164. lv_br = 3. EXIT.
                WHEN 165. lv_br = 3. EXIT.
                WHEN 166. lv_br = 3. EXIT.
                WHEN 167. lv_br = 3. EXIT.
                WHEN 168. lv_br = 3. EXIT.
                WHEN 169. lv_br = 3. EXIT.
                WHEN 170. lv_br = 3. EXIT.
                WHEN 171. lv_br = 3. EXIT.
                WHEN 172. lv_br = 3. EXIT.
                WHEN 173. lv_br = 3. EXIT.
                WHEN 174. lv_br = 3. EXIT.
                WHEN 175. lv_br = 3. EXIT.
                WHEN 176. lv_br = 3. EXIT.
                WHEN 177. lv_br = 3. EXIT.
                WHEN 178. lv_br = 3. EXIT.
                WHEN 179. lv_br = 3. EXIT.
                WHEN 180. lv_br = 3. EXIT.
                WHEN 181. lv_br = 3. EXIT.
                WHEN 182. lv_br = 3. EXIT.
                WHEN 183. lv_br = 3. EXIT.
                WHEN 184. lv_br = 3. EXIT.
                WHEN 185. lv_br = 3. EXIT.
                WHEN 186. lv_br = 3. EXIT.
                WHEN 187. EXIT.
                WHEN 188. lv_br = 3. EXIT.
                WHEN 189. lv_br = 3. EXIT.
                WHEN 190. lv_br = 3. EXIT.
                WHEN 191. lv_br = 3. EXIT.
                WHEN 192. lv_br = 3. EXIT.
                WHEN 193. lv_br = 3. EXIT.
                WHEN 194. lv_br = 3. EXIT.
                WHEN 195. lv_br = 3. EXIT.
                WHEN 196. lv_br = 3. EXIT.
                WHEN 197. lv_br = 3. EXIT.
                WHEN 198. lv_br = 3. EXIT.
                WHEN 199. lv_br = 3. EXIT.
                WHEN 200. lv_br = 3. EXIT.
                WHEN 201. lv_br = 3. EXIT.
                WHEN 202. lv_br = 3. EXIT.
                WHEN 203. lv_br = 3. EXIT.
                WHEN 204. lv_br = 3. EXIT.
                WHEN 205. lv_br = 3. EXIT.
                WHEN 206. lv_br = 3. EXIT.
                WHEN 207. lv_br = 3. EXIT.
                WHEN 208. lv_br = 3. EXIT.
                WHEN 209. lv_br = 3. EXIT.
                WHEN 210. lv_br = 3. EXIT.
                WHEN 211. lv_br = 3. EXIT.
                WHEN 212. lv_br = 3. EXIT.
                WHEN 213. lv_br = 3. EXIT.
                WHEN 214. lv_br = 3. EXIT.
                WHEN 215. lv_br = 3. EXIT.
                WHEN 216. lv_br = 3. EXIT.
                WHEN 217. lv_br = 3. EXIT.
                WHEN 218. lv_br = 3. EXIT.
                WHEN 219. lv_br = 3. EXIT.
                WHEN 220. lv_br = 3. EXIT.
                WHEN 221. lv_br = 3. EXIT.
                WHEN 222. lv_br = 3. EXIT.
                WHEN 223. lv_br = 3. EXIT.
                WHEN 224. lv_br = 3. EXIT.
                WHEN 225. lv_br = 3. EXIT.
                WHEN 226. lv_br = 3. EXIT.
                WHEN 227. lv_br = 3. EXIT.
                WHEN 228. lv_br = 3. EXIT.
                WHEN 229. lv_br = 3. EXIT.
                WHEN 230. lv_br = 3. EXIT.
                WHEN 231. lv_br = 3. EXIT.
                WHEN 232. lv_br = 3. EXIT.
                WHEN 233. lv_br = 3. EXIT.
                WHEN 234. lv_br = 3. EXIT.
                WHEN 235. lv_br = 3. EXIT.
                WHEN 236. lv_br = 3. EXIT.
                WHEN 237. lv_br = 3. EXIT.
                WHEN 238. lv_br = 3. EXIT.
                WHEN 239. lv_br = 3. EXIT.
                WHEN 240. lv_br = 3. EXIT.
                WHEN 241. lv_br = 3. EXIT.
                WHEN 242. lv_br = 3. EXIT.
                WHEN 243. lv_br = 3. EXIT.
                WHEN 244. lv_br = 3. EXIT.
                WHEN 245. lv_br = 3. EXIT.
                WHEN 246. lv_br = 3. EXIT.
                WHEN 247. lv_br = 3. EXIT.
                WHEN 248. lv_br = 3. EXIT.
                WHEN 249. lv_br = 3. EXIT.
                WHEN 250. lv_br = 3. EXIT.
                WHEN 251. lv_br = 3. EXIT.
                WHEN 252. lv_br = 3. EXIT.
                WHEN 253. lv_br = 2. EXIT.
                WHEN OTHERS. lv_br = 3. EXIT.
              ENDCASE.
            ENDDO.
            s0 = p0. PERFORM f41 USING s0 CHANGING s0.
            IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
            lv_br = 4. EXIT. " br 4
          ENDDO.
          s0 = p0. s0 = mem_ld_i32( s0 + 64 ).
          IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        ENDDO.
        DO 1 TIMES. " block
          DO 1 TIMES. " block
            s0 = l2. s1 = 16. s0 = s0 + s1. s1 = 1137393. s2 = 11. PERFORM f1116 USING s0 s1 s2 CHANGING s0.
            IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0.
              s0 = p0. s0 = mem_ld_i32( s0 + 80 ). l1 = s0. s1 = 1. mem_st_i32( iv_addr = s0 + 64 iv_val = s1 ). s0 = 1. lv_br = 1. EXIT. " br 1
            ELSE.
            ENDIF.
            s1 = l2. s2 = 16. s1 = s1 + s2. s2 = 1140953. s3 = 10. PERFORM f1116 USING s1 s2 s3 CHANGING s1.
            IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
            IF s1 <> 0.
              s1 = p0. s1 = mem_ld_i32( s1 + 80 ). l1 = s1. s1 = 2. lv_br = 1. EXIT. " br 1
            ELSE.
            ENDIF.
            s2 = p0. s2 = mem_ld_i32( s2 ). s2 = mem_ld_i32_8u( s2 + 232 ).
            IF s2 = 0. s2 = 1. ELSE. s2 = 0. ENDIF.
            IF s2 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
            s2 = l2. s3 = 16. s2 = s2 + s3. s3 = 1143407. s4 = 9. PERFORM f1116 USING s2 s3 s4 CHANGING s2.
            IF s2 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
            s2 = p0. s2 = mem_ld_i32( s2 + 80 ). l1 = s2. s2 = 4.
          ENDDO.
          l3 = s2. s2 = l1. s3 = l1. s3 = mem_ld_i32_8u( s3 + 110 ). s4 = l3. s3 = zcl_wasm_rt=>or32( iv_a = s3 iv_b = s4 ). mem_st_i32_8( iv_addr = s2 + 110 iv_val = s3 ).
        ENDDO.
        s2 = p0. s2 = mem_ld_i32( s2 + 32 ). s3 = -127.
        IF s2 = s3. s2 = 1. ELSE. s2 = 0. ENDIF.
        IF s2 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      ENDDO.
    ENDDO.
    s2 = p0. s3 = l4. mem_st_i32( iv_addr = s2 + 72 iv_val = s3 ). s2 = p0. s3 = l7. mem_st_i32( iv_addr = s2 + 20 iv_val = s3 ). s2 = p0. s3 = l8. mem_st_i32( iv_addr = s2 + 16 iv_val = s3 ). s2 = p0. s3 = l9.
    mem_st_i32( iv_addr = s2 + 12 iv_val = s3 ). s2 = p0. s3 = l5. mem_st_i32( iv_addr = s2 + 8 iv_val = s3 ). s2 = p0. s3 = l10. mem_st_i32( iv_addr = s2 + 36 iv_val = s3 ). s2 = p0. s3 = l6. mem_st_i32( iv_addr = s2 + 64 iv_val = s3 ).
    s2 = p0. PERFORM f41 USING s2 CHANGING s2. l1 = s2.
  ENDDO.
  s2 = l2. s3 = 48. s2 = s2 + s3. gv_g0 = s2. s2 = l1. rv = s2.
ENDFORM.

FORM f561 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i.
  DATA lv_br TYPE i.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        s0 = p1. s1 = 255. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). l4 = s0.
        IF s0 <> 0.
          s0 = p0. s1 = 3. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
          IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
          s0 = p0. s0 = mem_ld_i32_8u( s0 ). l2 = s0.
          IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0.
            s0 = p0. rv = s0. RETURN.
          ELSE.
          ENDIF.
          s0 = l2. s1 = p1. s2 = 255. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ).
          IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          s0 = p0. rv = s0. RETURN.
        ELSE.
        ENDIF.
        s0 = p0. PERFORM f768 USING s0 CHANGING s0. s1 = p0. s0 = s0 + s1. rv = s0. RETURN.
      ENDDO.
      s0 = p0. s1 = 1. s0 = s0 + s1. l2 = s0. s1 = 3. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = l2. p0 = s0. lv_br = 1. EXIT. " br 1
      ELSE.
      ENDIF.
      s0 = l2. s0 = mem_ld_i32_8u( s0 ). l3 = s0.
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = l3. s1 = p1. s2 = 255. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ).
      IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p0. s1 = 2. s0 = s0 + s1. l2 = s0. s1 = 3. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = l2. p0 = s0. lv_br = 1. EXIT. " br 1
      ELSE.
      ENDIF.
      s0 = l2. s0 = mem_ld_i32_8u( s0 ). l3 = s0.
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = l3. s1 = p1. s2 = 255. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ).
      IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p0. s1 = 3. s0 = s0 + s1. l2 = s0. s1 = 3. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = l2. p0 = s0. lv_br = 1. EXIT. " br 1
      ELSE.
      ENDIF.
      s0 = l2. s0 = mem_ld_i32_8u( s0 ). l3 = s0.
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = l3. s1 = p1. s2 = 255. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ).
      IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p0. s1 = 4. s0 = s0 + s1. p0 = s0.
    ENDDO.
    DO 1 TIMES. " block
      s0 = p0. s0 = mem_ld_i32( s0 ). l2 = s0. s1 = -1. s0 = zcl_wasm_rt=>xor32( iv_a = s0 iv_b = s1 ). s1 = l2. s2 = 16843009. s1 = s1 - s2. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = -2139062144.
      s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = l4. s1 = 16843009. s0 = s0 * s1. l4 = s0.
      DO. " loop
        s0 = l2. s1 = l4. s0 = zcl_wasm_rt=>xor32( iv_a = s0 iv_b = s1 ). l2 = s0. s1 = -1. s0 = zcl_wasm_rt=>xor32( iv_a = s0 iv_b = s1 ). s1 = l2. s2 = 16843009. s1 = s1 - s2. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
        s1 = -2139062144. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        s0 = p0. s1 = 4. s0 = s0 + s1. p0 = s0. s0 = mem_ld_i32( s0 ). l2 = s0. s1 = -1. s0 = zcl_wasm_rt=>xor32( iv_a = s0 iv_b = s1 ). s1 = l2. s2 = 16843009. s1 = s1 - s2. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = -2139062144.
        s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
        IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
      ENDDO.
    ENDDO.
    s0 = p0. s1 = 1. s0 = s0 - s1. l2 = s0. s0 = p1. s1 = 255. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). p0 = s0.
    DO. " loop
      s0 = l2. s1 = 1. s0 = s0 + s1. l2 = s0. s0 = mem_ld_i32_8u( s0 ). p1 = s0.
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p0. s1 = p1.
      IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
    ENDDO.
  ENDDO.
  s0 = l2. rv = s0.
ENDFORM.

FORM f562 USING p0 TYPE i p1 TYPE i p2 TYPE i p3 TYPE i p4 TYPE i p5 TYPE i CHANGING rv TYPE i.
  DATA l6 TYPE i. DATA l7 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i.
  DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i.
  DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i. DATA s36 TYPE i. DATA s37 TYPE i. DATA lv_br TYPE i. s0 = gv_g0.
  s1 = -64. s0 = s0 + s1. l6 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    s0 = p2. s1 = p1. s1 = mem_ld_i32( s1 ).
    IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = l6. s1 = p2. mem_st_i32( iv_addr = s0 + 52 iv_val = s1 ). s0 = l6. s1 = p3. mem_st_i32( iv_addr = s0 + 48 iv_val = s1 ). s0 = p0. s1 = 1152895. s2 = l6. s3 = 48. s2 = s2 + s3. PERFORM f969 USING s0 s1 s2 CHANGING s0. s0 = -1.
      lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    DO 1 TIMES. " block
      s1 = p1. s1 = mem_ld_i32( s1 + 4 ). s2 = p4.
      IF s1 >= s2. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. EXIT. ENDIF. " br_if 0
      s1 = p1. s2 = p4. mem_st_i32( iv_addr = s1 + 4 iv_val = s2 ). s1 = p4. s2 = 65535.
      IF s1 < s2. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. EXIT. ENDIF. " br_if 0
      s1 = l6. s2 = p2. mem_st_i32( iv_addr = s1 + 4 iv_val = s2 ). s1 = l6. s2 = p3. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = p0. s2 = 1152935. s3 = l6. PERFORM f969 USING s1 s2 s3 CHANGING s1. s1 = -1. lv_br = 1. EXIT. " br 1
    ENDDO.
    s2 = p1. s2 = mem_ld_i32( s2 + 8 ). s3 = p2. s4 = 1. s3 = zcl_wasm_rt=>shl32( iv_val = s3 iv_shift = s4 ). s2 = s2 + s3. l7 = s2. s2 = mem_ld_i32_16u( s2 ). p3 = s2. s3 = 65535.
    IF s2 <> s3. s2 = 1. ELSE. s2 = 0. ENDIF.
    IF s2 <> 0.
      s2 = p3. s3 = p4.
      IF s2 <> s3. s2 = 1. ELSE. s2 = 0. ENDIF.
      IF s2 <> 0.
        s2 = l6. s3 = p2. mem_st_i32( iv_addr = s2 + 40 iv_val = s3 ). s2 = l6. s3 = p4. mem_st_i32( iv_addr = s2 + 36 iv_val = s3 ). s2 = l6. s3 = p3. mem_st_i32( iv_addr = s2 + 32 iv_val = s3 ). s2 = p0. s3 = 1152856. s4 = l6. s5 = 32.
        s4 = s4 + s5. PERFORM f969 USING s2 s3 s4 CHANGING s2. s2 = -1. lv_br = 2. EXIT. " br 2
      ELSE.
      ENDIF.
      s3 = 0. s4 = p1. s4 = mem_ld_i32( s4 + 12 ). s5 = p2. s6 = 2. s5 = zcl_wasm_rt=>shl32( iv_val = s5 iv_shift = s6 ). s4 = s4 + s5. s4 = mem_ld_i32( s4 ). p1 = s4. s5 = p5.
      IF s4 = s5. s4 = 1. ELSE. s4 = 0. ENDIF.
      IF s4 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s3 = l6. s4 = p2. mem_st_i32( iv_addr = s3 + 24 iv_val = s4 ). s3 = l6. s4 = p5. mem_st_i32( iv_addr = s3 + 20 iv_val = s4 ). s3 = l6. s4 = p1. mem_st_i32( iv_addr = s3 + 16 iv_val = s4 ). s3 = p0. s4 = 1152813. s5 = l6. s6 = 16.
      s5 = s5 + s6. PERFORM f969 USING s3 s4 s5 CHANGING s3. s3 = -1. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s4 = p1. s4 = mem_ld_i32( s4 + 12 ). s5 = p2. s6 = 2. s5 = zcl_wasm_rt=>shl32( iv_val = s5 iv_shift = s6 ). s4 = s4 + s5. s5 = p5. mem_st_i32( iv_addr = s4 iv_val = s5 ). s4 = l7. s5 = p4. mem_st_i32_16( iv_addr = s4 iv_val = s5 ).
    s4 = p1. s4 = mem_ld_i32( s4 + 20 ). p3 = s4. s5 = p1. s5 = mem_ld_i32( s5 + 24 ).
    IF s4 >= s5. s4 = 1. ELSE. s4 = 0. ENDIF.
    IF s4 <> 0.
      s4 = -1. s5 = p0. s6 = p1. s7 = 16. s6 = s6 + s7. s7 = 4. s8 = p1. s9 = 24. s8 = s8 + s9. s9 = p3. s10 = 1. s9 = s9 + s10. PERFORM f845 USING s5 s6 s7 s8 s9 CHANGING s5.
      IF s5 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s4 = p1. s4 = mem_ld_i32( s4 + 20 ). p3 = s4.
    ELSE.
    ENDIF.
    s4 = p1. s5 = p3. s6 = 1. s5 = s5 + s6. mem_st_i32( iv_addr = s4 + 20 iv_val = s5 ). s4 = p1. s4 = mem_ld_i32( s4 + 16 ). s5 = p3. s6 = 2. s5 = zcl_wasm_rt=>shl32( iv_val = s5 iv_shift = s6 ). s4 = s4 + s5. s5 = p2.
    mem_st_i32( iv_addr = s4 iv_val = s5 ). s4 = 0.
  ENDDO.
  s5 = l6. s6 = -64. s5 = s5 - s6. gv_g0 = s5. rv = s4.
ENDFORM.

FORM f563 USING p0 TYPE i p1 TYPE i p2 TYPE i.
  DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i.
  DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i.
  DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i. DATA s36 TYPE i. DATA s37 TYPE i. DATA s38 TYPE i.
  DATA s39 TYPE i. DATA s40 TYPE i. DATA s41 TYPE i. DATA s42 TYPE i. DATA s43 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 32. s0 = s0 - s1. l3 = s0. gv_g0 = s0. s0 = p0. s0 = mem_ld_i32( s0 ). l4 = s0. s0 = l3. s1 = 0.
  zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 20 CHANGING cv_mem = mv_mem ). s0 = l3. s1 = -9223372036854775808. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 12 CHANGING cv_mem = mv_mem ). s0 = l3.
  s1 = l4. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ).
  DO 1 TIMES. " block
    s0 = l3. s1 = 8. s0 = s0 + s1. s1 = p1.
    IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p1. s0 = mem_ld_i32( s0 + 12 ). l5 = s0.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = l3. s1 = p1. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 4 ). zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 12 CHANGING cv_mem = mv_mem ). lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = l4. s0 = mem_ld_i32( s0 ). s1 = 0. s2 = l5. s3 = 2. s2 = zcl_wasm_rt=>shl32( iv_val = s2 iv_shift = s3 ). s3 = l4. s4 = 4. s3 = s3 + s4. s3 = mem_ld_i32( s3 ).
    DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
    s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). l4 = s0.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = l3. s0 = mem_ld_i32( s0 + 20 ).
      IF s0 <> 0.
        s0 = l3. s0 = mem_ld_i32( s0 + 8 ). p1 = s0. s0 = mem_ld_i32( s0 ). s1 = l3. s1 = mem_ld_i32( s1 + 24 ). s2 = 0. s3 = p1. s4 = 4. s3 = s3 + s4. s3 = mem_ld_i32( s3 ).
        DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
        s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). p1 = s0. s0 = l3. s1 = 0. mem_st_i32( iv_addr = s0 + 20 iv_val = s1 ). s0 = l3. s1 = p1. mem_st_i32( iv_addr = s0 + 24 iv_val = s1 ).
      ELSE.
      ENDIF.
      s0 = l3. s1 = 9223372032559808512. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 12 CHANGING cv_mem = mv_mem ). lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = l3. s1 = l5. mem_st_i32( iv_addr = s0 + 20 iv_val = s1 ). s0 = l3. s1 = l4. mem_st_i32( iv_addr = s0 + 24 iv_val = s1 ). s0 = l3. s1 = p1. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 4 ).
    zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 12 CHANGING cv_mem = mv_mem ). s0 = p1. s0 = mem_ld_i32( s0 + 12 ). s1 = 2. s0 = zcl_wasm_rt=>shl32( iv_val = s0 iv_shift = s1 ). l5 = s0.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l4. s1 = p1. s1 = mem_ld_i32( s1 + 16 ). s2 = l5. PERFORM f216 USING s0 s1 s2 CHANGING s0.
  ENDDO.
  s0 = p0. s1 = l3. s2 = 8. s1 = s1 + s2. l4 = s1. s2 = l4. s3 = p2. s4 = 0. PERFORM f87 USING s0 s1 s2 s3 s4 CHANGING s0. s0 = l3. s0 = mem_ld_i32( s0 + 20 ). p1 = s0.
  IF s0 <> 0.
    s0 = l3. s1 = l3. s1 = mem_ld_i32( s1 + 16 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 + 16 iv_val = s1 ). s0 = l4. s1 = 1073741823. s2 = 1. s3 = p1. s4 = 0. PERFORM f137 USING s0 s1 s2 s3 s4 CHANGING s0.
  ELSE.
  ENDIF.
  s0 = l3. s1 = 8. s0 = s0 + s1. p1 = s0. s1 = p1. s2 = p0. s3 = p2. s4 = 0. PERFORM f817 USING s0 s1 s2 s3 s4 CHANGING s0. s0 = l3. s1 = l3. s1 = mem_ld_i32( s1 + 12 ). s2 = 1. s1 = zcl_wasm_rt=>xor32( iv_a = s1 iv_b = s2 ).
  mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = p0. s1 = p1. s2 = p2. s3 = 6. PERFORM f194 USING s0 s1 s2 s3 CHANGING s0.
  DO 1 TIMES. " block
    s0 = l3. s0 = mem_ld_i32( s0 + 8 ). p0 = s0.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l3. s0 = mem_ld_i32( s0 + 24 ). p1 = s0.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s0 = mem_ld_i32( s0 ). s1 = p1. s2 = 0. s3 = p0. s4 = 4. s3 = s3 + s4. s3 = mem_ld_i32( s3 ).
    DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
    s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ).
  ENDDO.
  s0 = l3. s1 = 32. s0 = s0 + s1. gv_g0 = s0.
ENDFORM.

FORM f564 USING p0 TYPE f CHANGING rv TYPE f.
  DATA l1 TYPE i. DATA l2 TYPE int8. DATA l3 TYPE f. DATA l4 TYPE f. DATA l5 TYPE f. DATA l6 TYPE f. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i.
  DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i.
  DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i.
  DATA s36 TYPE i. DATA s37 TYPE i. DATA s38 TYPE i. DATA s39 TYPE i. DATA s40 TYPE i. DATA s41 TYPE i. DATA s42 TYPE i. DATA s43 TYPE i. DATA s44 TYPE i. DATA s45 TYPE i. DATA s46 TYPE i. DATA s47 TYPE i. DATA s48 TYPE i. DATA s49 TYPE i.
  DATA s50 TYPE i. DATA s51 TYPE i. DATA s52 TYPE i. DATA lv_br TYPE i. s0 = p0. s0 = zcl_wasm_rt=>reinterpret_f64_i64( s0 ). l2 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ).
  l1 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        s0 = l1. s1 = 1071284857.
        IF zcl_wasm_rt=>gt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        s1 = l2. s2 = 0.
        IF s1 >= s2. s1 = 1. ELSE. s1 = 0. ENDIF.
        s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
        IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = l1. s1 = -1074790400.
          IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0.
            s0 = '-Inf'. s1 = p0. s2 = '-1.000000'.
            IF s1 = s2. s1 = 1. ELSE. s1 = 0. ENDIF.
            IF s1 <> 0. lv_br = 4. EXIT. ENDIF. " br_if 4
            s0 = p0. s1 = p0. s0 = s0 - s1. s1 = '0.000000'. s0 = s0 / s1. rv = s0. RETURN.
          ELSE.
          ENDIF.
          s0 = l1. s1 = 1. s0 = zcl_wasm_rt=>shl32( iv_val = s0 iv_shift = s1 ). s1 = 2034237440.
          IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0.
            s0 = p0. rv = s0. RETURN.
          ELSE.
          ENDIF.
          s0 = l1. s1 = -1076707643.
          IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          s0 = '0.000000'. lv_br = 2. EXIT. " br 2
        ELSE.
        ENDIF.
        s1 = l1. s2 = 2146435071.
        IF zcl_wasm_rt=>le_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0. EXIT. ENDIF. " br_if 0
        s1 = p0. rv = s1. RETURN.
      ENDDO.
      s1 = p0. s2 = '1.000000'. s1 = s1 + s2. l3 = s1. s1 = zcl_wasm_rt=>reinterpret_f64_i64( s1 ). l2 = s1. s2 = 32. s1 = zcl_wasm_rt=>shr_u64( iv_val = s1 iv_shift = s2 ). s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = 614242. s1 = s1 + s2.
      l1 = s1. s2 = 20. s1 = zcl_wasm_rt=>shr_u32( iv_val = s1 iv_shift = s2 ). s2 = 1023. s1 = s1 - s2. s2 = l1. s3 = 1129316351.
      IF zcl_wasm_rt=>le_u32( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
      IF s2 <> 0.
        s2 = p0. s3 = l3. s2 = s2 - s3. s3 = '1.000000'. s2 = s2 + s3. s3 = p0. s4 = l3. s5 = '-1.000000'. s4 = s4 + s5. s3 = s3 - s4. s4 = l1. s5 = 1074790399.
        IF zcl_wasm_rt=>gt_u32( iv_a = s4 iv_b = s5 ) = abap_true. s4 = 1. ELSE. s4 = 0. ENDIF.
        IF s4 <> 0. s2 = s2. ELSE. s2 = s3. ENDIF.
        s3 = l3. s2 = s2 / s3. l5 = s2.
      ELSE.
      ENDIF.
      s2 = l2. s3 = 4294967295. s2 = zcl_wasm_rt=>and64( iv_a = s2 iv_b = s3 ). s3 = l1. s4 = 1048575. s3 = zcl_wasm_rt=>and32( iv_a = s3 iv_b = s4 ). s4 = 1072079006. s3 = s3 + s4. s3 = zcl_wasm_rt=>extend_u32( s3 ). s4 = 32.
      s3 = zcl_wasm_rt=>shl64( iv_val = s3 iv_shift = s4 ). s2 = zcl_wasm_rt=>or64( iv_a = s2 iv_b = s3 ). s2 = zcl_wasm_rt=>reinterpret_i64_f64( s2 ). s3 = '-1.000000'. s2 = s2 + s3. p0 = s2. s1 = s1. " convert to f64
    ENDDO.
    l3 = s1. s2 = '0.693147'. s1 = s1 * s2. s2 = p0. s3 = p0. s4 = p0. s5 = '2.000000'. s4 = s4 + s5. s3 = s3 / s4. l4 = s3. s4 = p0. s5 = p0. s6 = '0.500000'. s5 = s5 * s6. s4 = s4 * s5. l6 = s4. s5 = l4. s6 = l4. s5 = s5 * s6. l4 = s5.
    s6 = l4. s5 = s5 * s6. p0 = s5. s6 = p0. s7 = p0. s8 = '0.153138'. s7 = s7 * s8. s8 = '0.222222'. s7 = s7 + s8. s6 = s6 * s7. s7 = '0.400000'. s6 = s6 + s7. s5 = s5 * s6. s6 = l4. s7 = p0. s8 = p0. s9 = p0. s10 = '0.147982'.
    s9 = s9 * s10. s10 = '0.181836'. s9 = s9 + s10. s8 = s8 * s9. s9 = '0.285714'. s8 = s8 + s9. s7 = s7 * s8. s8 = '0.666667'. s7 = s7 + s8. s6 = s6 * s7. s5 = s5 + s6. s4 = s4 + s5. s3 = s3 * s4. s4 = l3. s5 = '0.000000'. s4 = s4 * s5.
    s5 = l5. s4 = s4 + s5. s3 = s3 + s4. s4 = l6. s3 = s3 - s4. s2 = s2 + s3. s1 = s1 + s2.
  ENDDO.
  rv = s1.
ENDFORM.

FORM f565 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i CHANGING rv TYPE int8.
  DATA l4 TYPE i. DATA l5 TYPE int8. DATA l6 TYPE f. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i.
  DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i.
  DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i. DATA s36 TYPE i. DATA lv_br TYPE i. s0 = gv_g0.
  s1 = 16. s0 = s0 - s1. p2 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      s0 = p1. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). l4 = s0.
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = l4. s1 = 11. s0 = s0 + s1. s1 = 17.
      IF zcl_wasm_rt=>gt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      DO 1 TIMES. " block
        s0 = p1. s1 = -4294967296.
        IF zcl_wasm_rt=>lt_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l4 = s0. s0 = mem_ld_i32_16u( s0 + 6 ). s1 = 4.
        IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = l4. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 32 ). p1 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). l4 = s0.
        IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        s0 = l4. s1 = 11. s0 = s0 + s1. s1 = 17.
        IF zcl_wasm_rt=>gt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      ENDDO.
      s0 = p0. s1 = 1140650. s2 = 0. PERFORM f970 USING s0 s1 s2 CHANGING s0. s0 = 25769803776. l5 = s0. lv_br = 1. EXIT. " br 1
    ENDDO.
    s0 = p1. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 25769803776.
    IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p1. l5 = s0. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    DO 1 TIMES. " block
      s0 = p1. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). l4 = s0. s1 = 2.
      IF zcl_wasm_rt=>le_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = p2. s1 = p1. s1 = zcl_wasm_rt=>wrap_i64( s1 ). s1 = s1. " convert to f64 zcl_wasm_rt=>mem_st_f64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ). lv_br = 1. EXIT. " br 1
      ELSE.
      ENDIF.
      s0 = l4. s1 = 7. s0 = s0 - s1. s1 = -19.
      IF zcl_wasm_rt=>le_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = p2. s1 = p1. s2 = 9221120288580698112. s1 = s1 + s2. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ). lv_br = 1. EXIT. " br 1
      ELSE.
      ENDIF.
      s0 = 25769803776. l5 = s0. s0 = p0. s1 = p2. s2 = p1. PERFORM f801 USING s0 s1 s2 CHANGING s0.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
    ENDDO.
    s0 = p3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). p1 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
    IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p3 = s0. s1 = p3. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
    ELSE.
    ENDIF.
    s0 = 25769803776. l5 = s0. s0 = p0. s1 = p2. s2 = 12. s1 = s1 + s2. s2 = p1. PERFORM f684 USING s0 s1 s2 CHANGING s0.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p2. s0 = mem_ld_i32( s0 + 12 ). p3 = s0. s1 = 101.
    IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p0. s1 = 1137956. s2 = 0. PERFORM f975 USING s0 s1 s2. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = p2. s0 = zcl_wasm_rt=>mem_ld_f64( iv_mem = mv_mem iv_addr = s0 + 0 ). l6 = s0. s0 = abs( s0 ). s1 = '1000000000000000000000.000000'.
    IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p0. s1 = -51539607552. s2 = l6. s2 = zcl_wasm_rt=>reinterpret_f64_i64( s2 ). p1 = s2. s3 = 9221120288580698112. s2 = s2 - s3. s3 = p1. s4 = 9223372036854775807. s3 = zcl_wasm_rt=>and64( iv_a = s3 iv_b = s4 ).
      s4 = 9218868437227405312.
      IF zcl_wasm_rt=>gt_u64( iv_a = s3 iv_b = s4 ) = abap_true. s3 = 1. ELSE. s3 = 0. ENDIF.
      IF s3 <> 0. s1 = s1. ELSE. s1 = s2. ENDIF.
      PERFORM f1136 USING s0 s1 CHANGING s0. l5 = s0. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = p0. s1 = l6. s2 = 10. s3 = p3. s4 = 2. PERFORM f1195 USING s0 s1 s2 s3 s4 CHANGING s0. l5 = s0.
  ENDDO.
  s0 = p2. s1 = 16. s0 = s0 + s1. gv_g0 = s0. s0 = l5. rv = s0.
ENDFORM.

FORM f566 USING p0 TYPE i p1 TYPE i p2 TYPE i CHANGING rv TYPE i.
  DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i.
  DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA lv_br TYPE i. s0 = p1. s0 = mem_ld_i32( s0 + 56 ). l3 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        s0 = p1. s0 = mem_ld_i32_8u( s0 + 110 ). s1 = 1. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
        IF s0 <> 0.
          s0 = l3.
          IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0.
            s0 = 1139968. l3 = s0. s0 = p1. s0 = mem_ld_i32( s0 + 64 ).
            IF s0 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
          ELSE.
          ENDIF.
          s0 = 1146160. l3 = s0.
          DO 1 TIMES. " block
            s0 = p2. s1 = 60. s0 = s0 - s1.
            CASE s0.
              WHEN 0. lv_br = 3. EXIT.
              WHEN 1. EXIT.
              WHEN 2. EXIT.
              WHEN 3. EXIT.
              WHEN 4. EXIT.
              WHEN 5. EXIT.
              WHEN 6. EXIT.
              WHEN 7. EXIT.
              WHEN 8. EXIT.
              WHEN 9. EXIT.
              WHEN 10. EXIT.
              WHEN 11. EXIT.
              WHEN 12. EXIT.
              WHEN 13. EXIT.
              WHEN 14. EXIT.
              WHEN 15. EXIT.
              WHEN 16. EXIT.
              WHEN 17. EXIT.
              WHEN 18. EXIT.
              WHEN 19. lv_br = 3. EXIT.
              WHEN OTHERS. EXIT.
            ENDCASE.
          ENDDO.
          s0 = p1. s0 = mem_ld_i32( s0 + 136 ). p2 = s0. s1 = 0.
          IF s0 <= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          s0 = p1. s0 = mem_ld_i32( s0 + 128 ). l3 = s0.
          DO. " loop
            DO 1 TIMES. " block
              DO 1 TIMES. " block
                s0 = l3. s0 = mem_ld_i32( s0 ). s1 = 60. s0 = s0 - s1.
                CASE s0.
                  WHEN 0. lv_br = 1. EXIT.
                  WHEN 1. EXIT.
                  WHEN 2. EXIT.
                  WHEN 3. EXIT.
                  WHEN 4. EXIT.
                  WHEN 5. EXIT.
                  WHEN 6. EXIT.
                  WHEN 7. EXIT.
                  WHEN 8. EXIT.
                  WHEN 9. EXIT.
                  WHEN 10. EXIT.
                  WHEN 11. EXIT.
                  WHEN 12. EXIT.
                  WHEN 13. EXIT.
                  WHEN 14. EXIT.
                  WHEN 15. EXIT.
                  WHEN 16. EXIT.
                  WHEN 17. EXIT.
                  WHEN 18. EXIT.
                  WHEN 19. lv_br = 1. EXIT.
                  WHEN OTHERS. EXIT.
                ENDCASE.
              ENDDO.
              s0 = l3. s1 = 16. s0 = s0 + s1. l3 = s0. s0 = p2. s1 = 1. s0 = s0 - s1. p2 = s0.
              IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
              lv_br = 3. EXIT. " br 3
            ENDDO.
          ENDDO.
          s0 = 1146123. l3 = s0. lv_br = 2. EXIT. " br 2
        ELSE.
        ENDIF.
        s0 = l3.
        IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = p1. s0 = mem_ld_i32_16u( s0 + 108 ). p2 = s0. s1 = 1538.
        IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = 0. l3 = s0. s0 = p2. s1 = 8. s0 = zcl_wasm_rt=>shr_u32( iv_val = s0 iv_shift = s1 ). s1 = 3. s0 = s0 - s1.
        CASE s0.
          WHEN 0. EXIT.
          WHEN 1. lv_br = 2. EXIT.
          WHEN 2. lv_br = 2. EXIT.
          WHEN 3. EXIT.
          WHEN OTHERS. lv_br = 2. EXIT.
        ENDCASE.
      ENDDO.
      s0 = p1. s0 = mem_ld_i32( s0 + 136 ). l7 = s0. s1 = 0.
      IF s0 <= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = 0. rv = s0. RETURN.
      ELSE.
      ENDIF.
      s0 = p1. s0 = mem_ld_i32( s0 + 128 ). l5 = s0. s0 = 0. p2 = s0.
      DO 1 TIMES. " block
        DO. " loop
          DO 1 TIMES. " block
            s0 = l5. s1 = p2. s2 = 4. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s0 = mem_ld_i32( s0 ). l6 = s0.
            IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. EXIT. ENDIF. " br_if 0
            s0 = l5. l3 = s0. s0 = p2. l4 = s0. s0 = p2.
            IF s0 <> 0.
              DO. " loop
                s0 = l3. s0 = mem_ld_i32( s0 ). s1 = l6.
                IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                IF s0 <> 0. lv_br = 4. EXIT. ENDIF. " br_if 4
                s0 = l3. s1 = 16. s0 = s0 + s1. l3 = s0. s0 = l4. s1 = 1. s0 = s0 - s1. l4 = s0.
                IF s0 <> 0. EXIT. ENDIF. " br_if 0
              ENDDO.
            ELSE.
            ENDIF.
            s0 = p1. s0 = mem_ld_i32( s0 + 124 ). l4 = s0. s1 = 0.
            IF s0 <= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. EXIT. ENDIF. " br_if 0
            s0 = p1. s0 = mem_ld_i32( s0 + 116 ). l3 = s0.
            DO. " loop
              DO 1 TIMES. " block
                s0 = l3. s0 = mem_ld_i32( s0 ). s1 = l6.
                IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                IF s0 <> 0. EXIT. ENDIF. " br_if 0
                s0 = l3. s1 = 4. s0 = s0 + s1. s0 = mem_ld_i32( s0 ).
                IF s0 <> 0. EXIT. ENDIF. " br_if 0
                s0 = 1135885. l3 = s0. lv_br = 5. EXIT. " br 5
              ENDDO.
              s0 = l3. s1 = 16. s0 = s0 + s1. l3 = s0. s0 = l4. s1 = 1. s0 = s0 - s1. l4 = s0.
              IF s0 <> 0. EXIT. ENDIF. " br_if 0
            ENDDO.
          ENDDO.
          s0 = p2. s1 = 1. s0 = s0 + s1. p2 = s0. s1 = l7.
          IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
        ENDDO.
        s0 = 0. rv = s0. RETURN.
      ENDDO.
      s0 = 1135885. l3 = s0.
    ENDDO.
    s0 = p0. s1 = l3. s2 = 0. PERFORM f881 USING s0 s1 s2. s0 = -1. l3 = s0.
  ENDDO.
  s0 = l3. rv = s0.
ENDFORM.

FORM f567 USING p0 TYPE i p1 TYPE i p2 TYPE i p3 TYPE i p4 TYPE i p5 TYPE i p6 TYPE i.
  DATA l7 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i.
  DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i.
  DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l7 = s0. gv_g0 = s0. s0 = p4. s1 = 116. s2 = p3. s3 = 70.
  s2 = s2 - s3. s3 = p3. s4 = 185.
  IF s3 = s4. s3 = 1. ELSE. s3 = 0. ENDIF.
  IF s3 <> 0. s1 = s1. ELSE. s1 = s2. ENDIF.
  s2 = 255. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). PERFORM f908 USING s0 s1. s0 = p2. s1 = 228.
  IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s0 = mem_ld_i32( s0 + 56 ). s1 = p2. s2 = 2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s0 = mem_ld_i32( s0 ). p0 = s0. s1 = p0. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2.
    mem_st_i32( iv_addr = s0 iv_val = s1 ).
  ELSE.
  ENDIF.
  s0 = l7. s1 = p2. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = p4. s1 = l7. s2 = 8. s1 = s1 + s2. s2 = 4. PERFORM f1097 USING s0 s1 s2.
  DO 1 TIMES. " block
    s0 = p5. s0 = mem_ld_i32( s0 ). p2 = s0. s1 = 0.
    IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p1. s0 = mem_ld_i32( s0 + 300 ). p2 = s0. s1 = p1. s1 = mem_ld_i32( s1 + 296 ).
    IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p2. s1 = 1. s0 = s0 + s1. p0 = s0. s0 = -1. p2 = s0. s0 = p1. s0 = mem_ld_i32( s0 ). s1 = p1. s2 = 292. s1 = s1 + s2. s2 = 20. s3 = p1. s4 = 296. s3 = s3 + s4. s4 = p0. PERFORM f845 USING s0 s1 s2 s3 s4 CHANGING s0.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p1. s0 = mem_ld_i32( s0 + 300 ). p2 = s0.
    ELSE.
    ENDIF.
    s0 = p1. s1 = p2. s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 + 300 iv_val = s1 ). s0 = p1. s0 = mem_ld_i32( s0 + 292 ). s1 = p2. s2 = 20. s1 = s1 * s2. s0 = s0 + s1. p0 = s0. s1 = 0. mem_st_i32( iv_addr = s0 + 16 iv_val = s1 ).
    s0 = p0. s1 = -1. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 8 CHANGING cv_mem = mv_mem ). s0 = p0. s1 = -4294967296. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ).
  ENDDO.
  s0 = p5. s1 = p2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l7. s1 = p2. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = p4. s1 = l7. s2 = 12. s1 = s1 + s2. s2 = 4. PERFORM f1097 USING s0 s1 s2. s0 = p4. s1 = p6. s2 = 255.
  s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). PERFORM f908 USING s0 s1.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      s0 = p5. s0 = mem_ld_i32( s0 ). p0 = s0. s1 = 0.
      IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p1. s0 = mem_ld_i32( s0 + 300 ). s1 = p0.
      IF s0 <= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p1. s0 = mem_ld_i32( s0 + 292 ). s1 = p0. s2 = 20. s1 = s1 * s2. s0 = s0 + s1. p0 = s0. s1 = p0. s1 = mem_ld_i32( s1 ). p0 = s1. s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s1 = -2.
      IF s0 <= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p1. s1 = p1. s1 = mem_ld_i32( s1 + 336 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 + 336 iv_val = s1 ). s0 = l7. s1 = 16. s0 = s0 + s1. gv_g0 = s0.
      RETURN.
    ENDDO.
    s0 = 1136521. s1 = 1148333. s2 = 21774. s3 = 1142627. PERFORM f1101 USING s0 s1 s2 s3.
    RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
  ENDDO.
  s0 = 1151974. s1 = 1148333. s2 = 21777. s3 = 1142627. PERFORM f1101 USING s0 s1 s2 s3.
  RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
ENDFORM.

FORM f568 USING p0 TYPE i p1 TYPE int8 CHANGING rv TYPE i.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i.
  DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i.
  DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i. DATA s36 TYPE i. DATA s37 TYPE i. DATA s38 TYPE i.
  DATA lv_br TYPE i.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        DO. " loop
          DO 1 TIMES. " block
            s0 = 0. s1 = p1. s2 = -4294967296.
            IF zcl_wasm_rt=>lt_u64( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
            IF s1 <> 0. EXIT. ENDIF. " br_if 0
            s0 = 0. s1 = p1. s1 = zcl_wasm_rt=>wrap_i64( s1 ). l3 = s1. s1 = mem_ld_i32_16u( s1 + 6 ). s2 = 48.
            IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
            IF s1 <> 0. EXIT. ENDIF. " br_if 0
            s0 = l3. s0 = mem_ld_i32( s0 + 32 ).
          ENDDO.
          l2 = s0. s0 = mem_ld_i32_8u( s0 + 17 ).
          IF s0 <> 0.
            s0 = p0. s1 = 1134591. s2 = 0. PERFORM f970 USING s0 s1 s2 CHANGING s0. lv_br = 3. EXIT. " br 3
          ELSE.
          ENDIF.
          s0 = p0. s1 = l2. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 8 ). p1 = s1. s2 = 100. s3 = p1. s4 = 0. PERFORM f192 USING s0 s1 s2 s3 s4 CHANGING s0. p1 = s0. s1 = -4294967296.
          s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). l4 = s0. s1 = 25769803776.
          IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
          s0 = 12884901888. s1 = p1. s2 = l4. s3 = 8589934592.
          IF s2 = s3. s2 = 1. ELSE. s2 = 0. ENDIF.
          IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
          p1 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 12884901888.
          IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          s0 = l2. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). p1 = s0. s1 = -4294967296.
          IF zcl_wasm_rt=>lt_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0.
            s0 = 0. rv = s0. RETURN.
          ELSE.
          ENDIF.
          s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l2 = s0. s0 = mem_ld_i32_16u( s0 + 6 ). s1 = 48.
          IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
        ENDDO.
        s0 = l2. s1 = l2. s1 = mem_ld_i32_8u( s1 + 5 ). s2 = 254. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). mem_st_i32_8( iv_addr = s0 + 5 iv_val = s1 ). s0 = 1. rv = s0. RETURN.
      ENDDO.
      s0 = p0. s1 = p1. s2 = l2. s2 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s2 + 8 ). s3 = 12884901888. s4 = 1. s5 = l2. s6 = 2. PERFORM f0 USING s0 s1 s2 s3 s4 s5 s6 CHANGING s0. l4 = s0.
      DO 1 TIMES. " block
        s0 = p1. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
        IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l3 = s0. s1 = l3. s1 = mem_ld_i32( s1 ). l3 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l3. s1 = 1.
        IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = p1. PERFORM f453 USING s0 s1.
      ENDDO.
      s0 = l4. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 25769803776.
      IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p0. s1 = l4. PERFORM f581 USING s0 s1 CHANGING s0. l3 = s0.
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = 0. rv = s0. RETURN.
      ELSE.
      ENDIF.
      s0 = l2. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). p1 = s0. s1 = -4294967296.
      IF zcl_wasm_rt=>lt_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      DO 1 TIMES. " block
        s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l2 = s0. s0 = mem_ld_i32_16u( s0 + 6 ). s1 = 48.
        IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = l2. s0 = mem_ld_i32_8u( s0 + 5 ). s1 = 1. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). l2 = s0. lv_br = 1. EXIT. " br 1
        ELSE.
        ENDIF.
        s0 = p0. s1 = p1. PERFORM f578 USING s0 s1 CHANGING s0. l2 = s0. s1 = 0.
        IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      ENDDO.
      s0 = l2.
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p0. s1 = 1138490. s2 = 0. PERFORM f970 USING s0 s1 s2 CHANGING s0.
    ENDDO.
    s0 = -1. l3 = s0.
  ENDDO.
  s0 = l3. rv = s0.
ENDFORM.

FORM f569 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE int8. DATA l8 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i.
  DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i.
  DATA s21 TYPE i. DATA lv_br TYPE i. s0 = p1. s0 = mem_ld_i32( s0 ). l5 = s0. s1 = 16. s0 = zcl_wasm_rt=>shr_u32( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>extend_u32( s0 ). s1 = p1. s1 = mem_ld_i32( s1 + 4 ). l2 = s1. s2 = 255.
  s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). s2 = l2. s3 = 8. s2 = zcl_wasm_rt=>shr_u32( iv_val = s2 iv_shift = s3 ). s3 = 255. s2 = zcl_wasm_rt=>and32( iv_a = s2 iv_b = s3 ). s3 = l2. s4 = 23.
  s3 = zcl_wasm_rt=>shr_u32( iv_val = s3 iv_shift = s4 ). s4 = 510. s3 = zcl_wasm_rt=>and32( iv_a = s3 iv_b = s4 ). s4 = 1195888. s3 = s3 + s4. s3 = mem_ld_i32_16u( s3 ). l3 = s3. s4 = 1.
  s3 = zcl_wasm_rt=>shl32( iv_val = s3 iv_shift = s4 ). l4 = s3. s4 = -1. s3 = zcl_wasm_rt=>xor32( iv_a = s3 iv_b = s4 ). s4 = 0. s5 = l2. s6 = 16. s5 = zcl_wasm_rt=>shr_u32( iv_val = s5 iv_shift = s6 ). s6 = l3. s7 = l3. s6 = s6 * s7.
  s5 = s5 - s6. l2 = s5. s6 = l4.
  IF zcl_wasm_rt=>gt_u32( iv_a = s5 iv_b = s6 ) = abap_true. s5 = 1. ELSE. s5 = 0. ENDIF.
  l4 = s5.
  IF s5 <> 0. s3 = s3. ELSE. s3 = s4. ENDIF.
  s4 = l2. s3 = s3 + s4. s4 = 8. s3 = zcl_wasm_rt=>shl32( iv_val = s3 iv_shift = s4 ). s2 = zcl_wasm_rt=>or32( iv_a = s2 iv_b = s3 ). l6 = s2. s3 = l3. s4 = l4. s3 = s3 + s4. l4 = s3. s4 = 1.
  s3 = zcl_wasm_rt=>shl32( iv_val = s3 iv_shift = s4 ). l3 = s3. s2 = zcl_wasm_rt=>div_u32( iv_a = s2 iv_b = s3 ). l2 = s2. s3 = l2. s2 = s2 * s3. s1 = s1 - s2. s2 = l6. s3 = l2. s4 = l3. s3 = s3 * s4. s2 = s2 - s3. s3 = 8.
  s2 = zcl_wasm_rt=>shl32( iv_val = s2 iv_shift = s3 ). s1 = s1 + s2. l3 = s1. s2 = 31. s1 = zcl_wasm_rt=>shr_s32( iv_val = s1 iv_shift = s2 ). s2 = l4. s3 = 8. s2 = zcl_wasm_rt=>shl32( iv_val = s2 iv_shift = s3 ). s3 = l2. s2 = s2 + s3.
  l2 = s2. s3 = 1. s2 = s2 - s3. l4 = s2. s3 = 1. s2 = zcl_wasm_rt=>shl32( iv_val = s2 iv_shift = s3 ). s3 = 1. s2 = zcl_wasm_rt=>or32( iv_a = s2 iv_b = s3 ). s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). s2 = l3. s1 = s1 + s2.
  s1 = zcl_wasm_rt=>extend_u32( s1 ). s2 = 16. s1 = zcl_wasm_rt=>shl64( iv_val = s1 iv_shift = s2 ). s0 = zcl_wasm_rt=>or64( iv_a = s0 iv_b = s1 ). l7 = s0. s1 = l7. s2 = l4. s3 = l2. s4 = l3. s5 = 0.
  IF s4 < s5. s4 = 1. ELSE. s4 = 0. ENDIF.
  IF s4 <> 0. s2 = s2. ELSE. s2 = s3. ENDIF.
  l2 = s2. s3 = 1. s2 = zcl_wasm_rt=>shl32( iv_val = s2 iv_shift = s3 ). s2 = zcl_wasm_rt=>extend_u32( s2 ). l8 = s2. s1 = zcl_wasm_rt=>div_u64( iv_a = s1 iv_b = s2 ). l7 = s1. s2 = l8. s1 = s1 * s2. s0 = s0 - s1. s1 = 16.
  s0 = zcl_wasm_rt=>shl64( iv_val = s0 iv_shift = s1 ). s1 = l5. s2 = 65535. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). s1 = zcl_wasm_rt=>extend_u32( s1 ). s0 = zcl_wasm_rt=>or64( iv_a = s0 iv_b = s1 ). l8 = s0. s0 = l2. s1 = 16.
  s0 = zcl_wasm_rt=>shl32( iv_val = s0 iv_shift = s1 ). s1 = l7. s1 = zcl_wasm_rt=>wrap_i64( s1 ). l3 = s1. s2 = 65536.
  IF zcl_wasm_rt=>ge_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
  IF s1 <> 0.
    s1 = l8. s2 = 4294967296. s1 = s1 - s2.
  ELSE.
    s2 = l8. s3 = l7. s4 = l7. s3 = s3 * s4. s4 = 4294967295. s3 = zcl_wasm_rt=>and64( iv_a = s3 iv_b = s4 ). s2 = s2 - s3.
  ENDIF.
  l7 = s2. s2 = l3. s1 = s1 + s2. l2 = s1. s1 = l7. s2 = 0.
  IF s1 < s2. s1 = 1. ELSE. s1 = 0. ENDIF.
  IF s1 <> 0.
    s1 = l7. s2 = l2. s3 = 1. s2 = s2 - s3. l2 = s2. s2 = zcl_wasm_rt=>extend_u32( s2 ). s3 = 1. s2 = zcl_wasm_rt=>shl64( iv_val = s2 iv_shift = s3 ). s1 = s1 + s2. s2 = 1. s1 = s1 + s2. l7 = s1.
  ELSE.
  ENDIF.
  s1 = p0. s2 = l2. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = p1. s2 = l7. zcl_wasm_rt=>mem_st_i64_trunc( EXPORTING iv_val = s2 iv_addr = s1 + 0 iv_op = 62 CHANGING cv_mem = mv_mem ). s1 = l7. s2 = 32.
  s1 = zcl_wasm_rt=>shr_u64( iv_val = s1 iv_shift = s2 ). s1 = zcl_wasm_rt=>wrap_i64( s1 ). rv = s1.
ENDFORM.

FORM f570 USING p0 TYPE i p1 TYPE i p2 TYPE i p3 TYPE i CHANGING rv TYPE i.
  DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i.
  DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i.
  DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i. DATA s36 TYPE i. DATA s37 TYPE i.
  DATA s38 TYPE i. DATA s39 TYPE i. DATA s40 TYPE i. DATA s41 TYPE i. DATA s42 TYPE i. DATA s43 TYPE i. DATA s44 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 48. s0 = s0 - s1. l4 = s0. gv_g0 = s0. s0 = p0. s0 = mem_ld_i32( s0 ). l5 = s0.
  s0 = l4. s1 = 0. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 12 CHANGING cv_mem = mv_mem ). s0 = l4. s1 = -9223372036854775808. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 4 CHANGING cv_mem = mv_mem ).
  s0 = l4. s1 = l5. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l4. s1 = p1. s2 = p1. s3 = 1073741823. s4 = p2. s5 = 8. s4 = s4 + s5. p2 = s4. s5 = p1. s5 = mem_ld_i32( s5 + 8 ). s6 = 0.
  IF s5 >= s6. s5 = 1. ELSE. s5 = 0. ENDIF.
  IF s5 <> 0. s3 = s3. ELSE. s3 = s4. ENDIF.
  l7 = s3. s4 = 0. PERFORM f87 USING s0 s1 s2 s3 s4 CHANGING s0. s0 = 1. l5 = s0. s0 = l4. s1 = l4. s1 = mem_ld_i32( s1 + 4 ). s2 = 1. s1 = zcl_wasm_rt=>xor32( iv_a = s1 iv_b = s2 ). mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = l4.
  s1 = 0. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 36 CHANGING cv_mem = mv_mem ). s0 = l4. s1 = l4. s1 = mem_ld_i32( s1 ). l6 = s1. mem_st_i32( iv_addr = s0 + 24 iv_val = s1 ). s0 = l4. s1 = 0.
  mem_st_i32( iv_addr = s0 + 28 iv_val = s1 ).
  DO 1 TIMES. " block
    s0 = l6. s0 = mem_ld_i32( s0 ). s1 = 0. s2 = 4. s3 = l6. s4 = 4. s3 = s3 + s4. s3 = mem_ld_i32( s3 ).
    DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
    s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). l6 = s0.
    IF s0 <> 0.
      s0 = l4. s1 = 1. mem_st_i32( iv_addr = s0 + 36 iv_val = s1 ). s0 = l6. s1 = -2147483648. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l4. s1 = l6. mem_st_i32( iv_addr = s0 + 40 iv_val = s1 ). lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = l4. s1 = 0. mem_st_i32( iv_addr = s0 + 28 iv_val = s1 ). s0 = 2147483647. l5 = s0.
  ENDDO.
  s0 = l4. s1 = l5. mem_st_i32( iv_addr = s0 + 32 iv_val = s1 ). s0 = l4. s1 = l4. s2 = l4. s3 = 24. s2 = s2 + s3. s3 = l7. s4 = 0. PERFORM f817 USING s0 s1 s2 s3 s4 CHANGING s0.
  DO 1 TIMES. " block
    s0 = l4. s0 = mem_ld_i32( s0 + 24 ). l5 = s0.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l4. s0 = mem_ld_i32( s0 + 40 ). l6 = s0.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l5. s0 = mem_ld_i32( s0 ). s1 = l6. s2 = 0. s3 = l5. s4 = 4. s3 = s3 + s4. s3 = mem_ld_i32( s3 ).
    DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
    s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ).
  ENDDO.
  s0 = p0. s1 = l4. s2 = p2. s3 = 0. PERFORM f194 USING s0 s1 s2 s3 CHANGING s0. s0 = l4. s1 = p1. s2 = p0. s3 = p2. s4 = 0. s5 = 735. PERFORM f815 USING s0 s1 s2 s3 s4 s5 CHANGING s0. s0 = p3.
  IF s0 <> 0.
    s0 = l4. s1 = l4. s1 = mem_ld_i32( s1 + 4 ). s2 = 1. s1 = zcl_wasm_rt=>xor32( iv_a = s1 iv_b = s2 ). mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ).
  ELSE.
  ENDIF.
  s0 = p0. s1 = l4. s2 = p2. s3 = p3. PERFORM f64 USING s0 s1 s2 s3 CHANGING s0.
  DO 1 TIMES. " block
    s0 = l4. s0 = mem_ld_i32( s0 ). p0 = s0.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l4. s0 = mem_ld_i32( s0 + 16 ). p1 = s0.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s0 = mem_ld_i32( s0 ). s1 = p1. s2 = 0. s3 = p0. s4 = 4. s3 = s3 + s4. s3 = mem_ld_i32( s3 ).
    DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
    s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ).
  ENDDO.
  s0 = l4. s1 = 48. s0 = s0 + s1. gv_g0 = s0. s0 = 16. rv = s0.
ENDFORM.

FORM f571 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i.
  DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i.
  DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l2 = s0. gv_g0 = s0. s0 = l2. s1 = 0. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ).
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        s0 = p1. s1 = 128.
        IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = p1. s1 = 2048.
          IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          s0 = p1. s1 = 65536.
          IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
          s0 = l2. s1 = p1. s2 = 63. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). s2 = 128. s1 = zcl_wasm_rt=>or32( iv_a = s1 iv_b = s2 ). mem_st_i32_8( iv_addr = s0 + 6 iv_val = s1 ). s0 = l2. s1 = p1. s2 = 12.
          s1 = zcl_wasm_rt=>shr_u32( iv_val = s1 iv_shift = s2 ). s2 = 224. s1 = zcl_wasm_rt=>or32( iv_a = s1 iv_b = s2 ). mem_st_i32_8( iv_addr = s0 + 4 iv_val = s1 ). s0 = l2. s1 = p1. s2 = 6.
          s1 = zcl_wasm_rt=>shr_u32( iv_val = s1 iv_shift = s2 ). s2 = 63. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). s2 = 128. s1 = zcl_wasm_rt=>or32( iv_a = s1 iv_b = s2 ). mem_st_i32_8( iv_addr = s0 + 5 iv_val = s1 ). s0 = 3.
          lv_br = 3. EXIT. " br 3
        ELSE.
        ENDIF.
        s1 = l2. s2 = p1. mem_st_i32_8( iv_addr = s1 + 4 iv_val = s2 ). s1 = 1. lv_br = 2. EXIT. " br 2
      ENDDO.
      s2 = l2. s3 = p1. s4 = 63. s3 = zcl_wasm_rt=>and32( iv_a = s3 iv_b = s4 ). s4 = 128. s3 = zcl_wasm_rt=>or32( iv_a = s3 iv_b = s4 ). mem_st_i32_8( iv_addr = s2 + 5 iv_val = s3 ). s2 = l2. s3 = p1. s4 = 6.
      s3 = zcl_wasm_rt=>shr_u32( iv_val = s3 iv_shift = s4 ). s4 = 192. s3 = zcl_wasm_rt=>or32( iv_a = s3 iv_b = s4 ). mem_st_i32_8( iv_addr = s2 + 4 iv_val = s3 ). s2 = 2. lv_br = 1. EXIT. " br 1
    ENDDO.
    s3 = l2. s4 = p1. s5 = 63. s4 = zcl_wasm_rt=>and32( iv_a = s4 iv_b = s5 ). s5 = 128. s4 = zcl_wasm_rt=>or32( iv_a = s4 iv_b = s5 ). mem_st_i32_8( iv_addr = s3 + 7 iv_val = s4 ). s3 = l2. s4 = p1. s5 = 6.
    s4 = zcl_wasm_rt=>shr_u32( iv_val = s4 iv_shift = s5 ). s5 = 63. s4 = zcl_wasm_rt=>and32( iv_a = s4 iv_b = s5 ). s5 = 128. s4 = zcl_wasm_rt=>or32( iv_a = s4 iv_b = s5 ). mem_st_i32_8( iv_addr = s3 + 6 iv_val = s4 ). s3 = l2. s4 = p1.
    s5 = 12. s4 = zcl_wasm_rt=>shr_u32( iv_val = s4 iv_shift = s5 ). s5 = 63. s4 = zcl_wasm_rt=>and32( iv_a = s4 iv_b = s5 ). s5 = 128. s4 = zcl_wasm_rt=>or32( iv_a = s4 iv_b = s5 ). mem_st_i32_8( iv_addr = s3 + 5 iv_val = s4 ). s3 = l2.
    s4 = p1. s5 = 18. s4 = zcl_wasm_rt=>shr_u32( iv_val = s4 iv_shift = s5 ). s5 = 7. s4 = zcl_wasm_rt=>and32( iv_a = s4 iv_b = s5 ). s5 = 240. s4 = zcl_wasm_rt=>or32( iv_a = s4 iv_b = s5 ). mem_st_i32_8( iv_addr = s3 + 4 iv_val = s4 ).
    s3 = 4.
  ENDDO.
  p1 = s3. s3 = l2. s4 = 8. s3 = s3 + s4. s4 = p0. s4 = mem_ld_i32( s4 + 8 ). s4 = mem_ld_i32( s4 ). s5 = l2. s6 = 4. s5 = s5 + s6. s6 = p1. PERFORM f663 USING s3 s4 s5 s6. s3 = l2. s3 = mem_ld_i32_8u( s3 + 8 ). l4 = s3. s4 = 4.
  IF s3 <> s4. s3 = 1. ELSE. s3 = 0. ENDIF.
  IF s3 <> 0.
    s3 = p0. s3 = mem_ld_i32( s3 + 4 ). p1 = s3. s3 = l2. s3 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s3 + 8 ). l6 = s3. s3 = p0. s3 = mem_ld_i32_8u( s3 ). l3 = s3. s4 = 4.
    IF zcl_wasm_rt=>le_u32( iv_a = s3 iv_b = s4 ) = abap_true. s3 = 1. ELSE. s3 = 0. ENDIF.
    s4 = l3. s5 = 3.
    IF s4 <> s5. s4 = 1. ELSE. s4 = 0. ENDIF.
    s3 = zcl_wasm_rt=>and32( iv_a = s3 iv_b = s4 ).
    IF s3 = 0. s3 = 1. ELSE. s3 = 0. ENDIF.
    IF s3 <> 0.
      s3 = p1. s3 = mem_ld_i32( s3 ). l3 = s3. s4 = p1. s5 = 4. s4 = s4 + s5. s4 = mem_ld_i32( s4 ). l5 = s4. s4 = mem_ld_i32( s4 ).
      DATA(lv_ci_func) = mt_tab0[ s4 + 1 ]. " call_indirect
      dispatch_t2( iv_idx = lv_ci_func p0 = s3 ). s3 = l5. s3 = mem_ld_i32( s3 + 4 ).
      IF s3 <> 0.
        s3 = l3. PERFORM f125 USING s3.
      ELSE.
      ENDIF.
      s3 = p1. PERFORM f125 USING s3.
    ELSE.
    ENDIF.
    s3 = p0. s4 = l6. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s4 iv_addr = s3 + 0 CHANGING cv_mem = mv_mem ).
  ELSE.
  ENDIF.
  s3 = l2. s4 = 16. s3 = s3 + s4. gv_g0 = s3. s3 = l4. s4 = 4.
  IF s3 <> s4. s3 = 1. ELSE. s3 = 0. ENDIF.
  rv = s3.
ENDFORM.

FORM f572 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i CHANGING rv TYPE int8.
  DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i.
  DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i.
  DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i. DATA s36 TYPE i. DATA s37 TYPE i.
  DATA s38 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l5 = s0. gv_g0 = s0.
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
    s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
    IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = l7. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l6 = s0. s1 = l6. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
    ELSE.
    ENDIF.
    DO 1 TIMES. " block
      s0 = p0. s1 = l5. s2 = 8. s1 = s1 + s2. s2 = l7. PERFORM f719 USING s0 s1 s2 CHANGING s0.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      DO 1 TIMES. " block
        s0 = p3. s0 = zcl_wasm_rt=>mem_ld_i64_ext( iv_mem = mv_mem iv_addr = s0 + 4 iv_op = 53 ). s1 = 32. s0 = zcl_wasm_rt=>shl64( iv_val = s0 iv_shift = s1 ). s1 = 12884901888.
        IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = p0. s1 = p1. s2 = 0. s3 = 1245184. PERFORM f838 USING s0 s1 s2 s3 CHANGING s0. lv_br = 1. EXIT. " br 1
        ELSE.
        ENDIF.
        s1 = l5. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 8 ). l7 = s1. s2 = 1073741823.
        IF zcl_wasm_rt=>ge_u64( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0.
          s1 = p0. s2 = 1137956. s3 = 0. PERFORM f975 USING s1 s2 s3. lv_br = 2. EXIT. " br 2
        ELSE.
        ENDIF.
        s1 = 1048580. l6 = s1. s1 = p0. s2 = p1. s3 = p2. s4 = 2.
        IF s3 >= s4. s3 = 1. ELSE. s3 = 0. ENDIF.
        IF s3 <> 0.
          s3 = p0. s4 = p3. s4 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s4 + 8 ). PERFORM f689 USING s3 s4 CHANGING s3. p2 = s3. s4 = 0.
          IF s3 < s4. s3 = 1. ELSE. s3 = 0. ENDIF.
          IF s3 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
          s3 = p2. s4 = 1048576. s3 = zcl_wasm_rt=>or32( iv_a = s3 iv_b = s4 ). l6 = s3. s3 = l5. s3 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s3 + 8 ).
        ELSE.
          s4 = l7.
        ENDIF.
        s4 = zcl_wasm_rt=>wrap_i64( s4 ). s5 = 1. s4 = s4 + s5. s5 = l6. PERFORM f838 USING s2 s3 s4 s5 CHANGING s2.
      ENDDO.
      l7 = s2. s2 = l4. s3 = l4. s3 = mem_ld_i32( s3 ). p2 = s3. s4 = 1. s3 = s3 - s4. mem_st_i32( iv_addr = s2 iv_val = s3 ). s2 = p2. s3 = 1.
      IF s2 > s3. s2 = 1. ELSE. s2 = 0. ENDIF.
      IF s2 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s2 = p0. s2 = mem_ld_i32( s2 + 16 ). s3 = p1. PERFORM f453 USING s2 s3. lv_br = 1. EXIT. " br 1
    ENDDO.
    s2 = l4. s3 = l4. s3 = mem_ld_i32( s3 ). p2 = s3. s4 = 1. s3 = s3 - s4. mem_st_i32( iv_addr = s2 iv_val = s3 ). s2 = 25769803776. l7 = s2. s2 = p2. s3 = 1.
    IF s2 > s3. s2 = 1. ELSE. s2 = 0. ENDIF.
    IF s2 <> 0. EXIT. ENDIF. " br_if 0
    s2 = p0. s2 = mem_ld_i32( s2 + 16 ). s3 = p1. PERFORM f453 USING s2 s3.
  ENDDO.
  s2 = l5. s3 = 16. s2 = s2 + s3. gv_g0 = s2. s2 = l7. rv = s2.
ENDFORM.

FORM f573 USING p0 TYPE i p1 TYPE i p2 TYPE int8 p3 TYPE i CHANGING rv TYPE i.
  DATA l4 TYPE i. DATA l5 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i.
  DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i.
  DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    s0 = p3. s1 = 0.
    IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p2. s0 = zcl_wasm_rt=>wrap_i64( s0 ). s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 32 ). p2 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = -30064771072.
    IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p3. s1 = 2147483647. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). p3 = s0. s1 = p2. s1 = zcl_wasm_rt=>wrap_i64( s1 ). l4 = s1. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 4 ). p2 = s1.
    s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = 2147483647. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ).
    IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = 1. l5 = s0. s0 = p1.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l4. s1 = 16. s0 = s0 + s1. l4 = s0.
    DO 1 TIMES. " block
      s0 = p2. s1 = 2147483648. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 0.
      IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = l4. s1 = p3. s2 = 1. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s0 = mem_ld_i32_16u( s0 ). lv_br = 1. EXIT. " br 1
      ELSE.
      ENDIF.
      s1 = p3. s2 = l4. s1 = s1 + s2. s1 = mem_ld_i32_8u( s1 ).
    ENDDO.
    l4 = s1. s1 = p1. s2 = 4. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = p0. s1 = mem_ld_i32( s1 + 16 ). p3 = s1. s2 = 16. s1 = s1 + s2. s2 = 18. s3 = p3. s3 = mem_ld_i32( s3 ).
    DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
    s1 = dispatch_t7( iv_idx = lv_ci_func p0 = s1 p1 = s2 ). p3 = s1.
    DO 1 TIMES. " block
      s1 = l4. s2 = 255.
      IF zcl_wasm_rt=>le_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0.
        s1 = p3.
        IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0.
          s1 = 25769803776. p2 = s1. s1 = p0. s1 = mem_ld_i32( s1 + 16 ). p3 = s1. s1 = mem_ld_i32_8u( s1 + 136 ).
          IF s1 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
          s1 = p3. s2 = 1. mem_st_i32_8( iv_addr = s1 + 136 iv_val = s2 ). s1 = p0. s2 = 1134898. s3 = 0. PERFORM f969 USING s1 s2 s3 CHANGING s1. s1 = p3. s2 = 0. mem_st_i32_8( iv_addr = s1 + 136 iv_val = s2 ). lv_br = 2. EXIT. " br 2
        ELSE.
        ENDIF.
        s1 = p3. s2 = 0. mem_st_i32_8( iv_addr = s1 + 17 iv_val = s2 ). s1 = p3. s2 = l4. mem_st_i32_8( iv_addr = s1 + 16 iv_val = s2 ). s1 = p3. s2 = 0. mem_st_i32( iv_addr = s1 + 12 iv_val = s2 ). s1 = p3. s2 = 1.
        zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s2 iv_addr = s1 + 4 CHANGING cv_mem = mv_mem ). s1 = p3. s2 = 1. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = p3. s1 = zcl_wasm_rt=>extend_u32( s1 ). s2 = -30064771072.
        s1 = zcl_wasm_rt=>or64( iv_a = s1 iv_b = s2 ). p2 = s1. lv_br = 1. EXIT. " br 1
      ELSE.
      ENDIF.
      s1 = p3.
      IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0.
        s1 = 25769803776. p2 = s1. s1 = p0. s1 = mem_ld_i32( s1 + 16 ). p3 = s1. s1 = mem_ld_i32_8u( s1 + 136 ).
        IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        s1 = p3. s2 = 1. mem_st_i32_8( iv_addr = s1 + 136 iv_val = s2 ). s1 = p0. s2 = 1134898. s3 = 0. PERFORM f969 USING s1 s2 s3 CHANGING s1. s1 = p3. s2 = 0. mem_st_i32_8( iv_addr = s1 + 136 iv_val = s2 ). lv_br = 1. EXIT. " br 1
      ELSE.
      ENDIF.
      s1 = p3. s2 = l4. mem_st_i32_16( iv_addr = s1 + 16 iv_val = s2 ). s1 = p3. s2 = 0. mem_st_i32( iv_addr = s1 + 12 iv_val = s2 ). s1 = p3. s2 = 2147483649.
      zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s2 iv_addr = s1 + 4 CHANGING cv_mem = mv_mem ). s1 = p3. s2 = 1. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = p3. s1 = zcl_wasm_rt=>extend_u32( s1 ). s2 = -30064771072.
      s1 = zcl_wasm_rt=>or64( iv_a = s1 iv_b = s2 ). p2 = s1.
    ENDDO.
    s1 = p1. s2 = 12884901888. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s2 iv_addr = s1 + 24 CHANGING cv_mem = mv_mem ). s1 = p1. s2 = 12884901888.
    zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s2 iv_addr = s1 + 16 CHANGING cv_mem = mv_mem ). s1 = p1. s2 = p2. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s2 iv_addr = s1 + 8 CHANGING cv_mem = mv_mem ).
  ENDDO.
  s1 = l5. rv = s1.
ENDFORM.

FORM f574 USING p0 TYPE i p1 TYPE i p2 TYPE i p3 TYPE i p4 TYPE i p5 TYPE i p6 TYPE i CHANGING rv TYPE i.
  DATA l7 TYPE i. DATA l8 TYPE i. DATA l9 TYPE i. DATA l10 TYPE i. DATA l11 TYPE i. DATA l12 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i.
  DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA lv_br TYPE i. s0 = p1. s1 = p2. s2 = 1. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. l9 = s0. s0 = p0. s1 = 65280.
  s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = 8. s0 = zcl_wasm_rt=>shr_u32( iv_val = s0 iv_shift = s1 ). l10 = s0. s0 = p0. s1 = 255. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). l12 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          DO. " loop
            s0 = p1. s1 = 2. s0 = s0 + s1. l11 = s0. s0 = l7. s1 = p1. s1 = mem_ld_i32_8u( s1 + 1 ). p2 = s1. s0 = s0 + s1. l8 = s0. s0 = l10. s1 = p1. s1 = mem_ld_i32_8u( s1 ). p1 = s1.
            IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0.
              s0 = p1. s1 = l10.
              IF zcl_wasm_rt=>gt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0. lv_br = 4. EXIT. ENDIF. " br_if 4
              s0 = l8. l7 = s0. s0 = l11. p1 = s0. s1 = l9.
              IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
              lv_br = 4. EXIT. " br 4
            ELSE.
            ENDIF.
            s0 = l7. s1 = l8.
            IF zcl_wasm_rt=>gt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
            s0 = p4. s1 = l8.
            IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
            s0 = p3. s1 = l7. s0 = s0 + s1. p1 = s0.
            DO. " loop
              s0 = p2.
              IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0.
                s0 = l8. l7 = s0. s0 = l11. p1 = s0. s1 = l9.
                IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
                lv_br = 5. EXIT. " br 5
              ELSE.
              ENDIF.
              s0 = p2. s1 = 1. s0 = s0 - s1. p2 = s0. s0 = p1. s0 = mem_ld_i32_8u( s0 ). s1 = p1. s2 = 1. s1 = s1 + s2. p1 = s1. s1 = l12.
              IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0. EXIT. ENDIF. " br_if 0
            ENDDO.
          ENDDO.
          s0 = 0. p2 = s0. lv_br = 3. EXIT. " br 3
        ENDDO.
        s0 = l7. s1 = l8. s2 = 1051536. PERFORM f1046 USING s0 s1 s2.
        RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
      ENDDO.
      s0 = l8. s1 = p4. s2 = 1051536. PERFORM f1045 USING s0 s1 s2.
      RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
    ENDDO.
    s0 = p0. s1 = 65535. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). l7 = s0. s0 = p5. s1 = p6. s0 = s0 + s1. p3 = s0. s0 = 1. p2 = s0.
    DO. " loop
      s0 = p5. s1 = 1. s0 = s0 + s1. p0 = s0.
      DO 1 TIMES. " block
        s0 = p5. s0 = mem_ld_i32_8u( s0 ). p1 = s0. s0 = zcl_wasm_rt=>extend8s_i32( s0 ). p4 = s0. s1 = 0.
        IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = p0. p5 = s0. lv_br = 1. EXIT. " br 1
        ELSE.
        ENDIF.
        s0 = p0. s1 = p3.
        IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = p5. s0 = mem_ld_i32_8u( s0 + 1 ). s1 = p4. s2 = 127. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). s2 = 8. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = zcl_wasm_rt=>or32( iv_a = s0 iv_b = s1 ). p1 = s0.
          s0 = p5. s1 = 2. s0 = s0 + s1. p5 = s0. lv_br = 1. EXIT. " br 1
        ELSE.
        ENDIF.
        s0 = 1051520. PERFORM f1357 USING s0.
        RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
      ENDDO.
      s0 = l7. s1 = p1. s0 = s0 - s1. l7 = s0. s1 = 0.
      IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p2. s1 = 1. s0 = zcl_wasm_rt=>xor32( iv_a = s0 iv_b = s1 ). p2 = s0. s0 = p3. s1 = p5.
      IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
    ENDDO.
  ENDDO.
  s0 = p2. s1 = 1. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). rv = s0.
ENDFORM.

FORM f575 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i.
  DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i.
  DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l2 = s0. gv_g0 = s0. s0 = l2. s1 = 0. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ).
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        s0 = p1. s1 = 128.
        IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = p1. s1 = 2048.
          IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          s0 = p1. s1 = 65536.
          IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
          s0 = l2. s1 = p1. s2 = 63. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). s2 = 128. s1 = zcl_wasm_rt=>or32( iv_a = s1 iv_b = s2 ). mem_st_i32_8( iv_addr = s0 + 6 iv_val = s1 ). s0 = l2. s1 = p1. s2 = 12.
          s1 = zcl_wasm_rt=>shr_u32( iv_val = s1 iv_shift = s2 ). s2 = 224. s1 = zcl_wasm_rt=>or32( iv_a = s1 iv_b = s2 ). mem_st_i32_8( iv_addr = s0 + 4 iv_val = s1 ). s0 = l2. s1 = p1. s2 = 6.
          s1 = zcl_wasm_rt=>shr_u32( iv_val = s1 iv_shift = s2 ). s2 = 63. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). s2 = 128. s1 = zcl_wasm_rt=>or32( iv_a = s1 iv_b = s2 ). mem_st_i32_8( iv_addr = s0 + 5 iv_val = s1 ). s0 = 3.
          lv_br = 3. EXIT. " br 3
        ELSE.
        ENDIF.
        s1 = l2. s2 = p1. mem_st_i32_8( iv_addr = s1 + 4 iv_val = s2 ). s1 = 1. lv_br = 2. EXIT. " br 2
      ENDDO.
      s2 = l2. s3 = p1. s4 = 63. s3 = zcl_wasm_rt=>and32( iv_a = s3 iv_b = s4 ). s4 = 128. s3 = zcl_wasm_rt=>or32( iv_a = s3 iv_b = s4 ). mem_st_i32_8( iv_addr = s2 + 5 iv_val = s3 ). s2 = l2. s3 = p1. s4 = 6.
      s3 = zcl_wasm_rt=>shr_u32( iv_val = s3 iv_shift = s4 ). s4 = 192. s3 = zcl_wasm_rt=>or32( iv_a = s3 iv_b = s4 ). mem_st_i32_8( iv_addr = s2 + 4 iv_val = s3 ). s2 = 2. lv_br = 1. EXIT. " br 1
    ENDDO.
    s3 = l2. s4 = p1. s5 = 63. s4 = zcl_wasm_rt=>and32( iv_a = s4 iv_b = s5 ). s5 = 128. s4 = zcl_wasm_rt=>or32( iv_a = s4 iv_b = s5 ). mem_st_i32_8( iv_addr = s3 + 7 iv_val = s4 ). s3 = l2. s4 = p1. s5 = 6.
    s4 = zcl_wasm_rt=>shr_u32( iv_val = s4 iv_shift = s5 ). s5 = 63. s4 = zcl_wasm_rt=>and32( iv_a = s4 iv_b = s5 ). s5 = 128. s4 = zcl_wasm_rt=>or32( iv_a = s4 iv_b = s5 ). mem_st_i32_8( iv_addr = s3 + 6 iv_val = s4 ). s3 = l2. s4 = p1.
    s5 = 12. s4 = zcl_wasm_rt=>shr_u32( iv_val = s4 iv_shift = s5 ). s5 = 63. s4 = zcl_wasm_rt=>and32( iv_a = s4 iv_b = s5 ). s5 = 128. s4 = zcl_wasm_rt=>or32( iv_a = s4 iv_b = s5 ). mem_st_i32_8( iv_addr = s3 + 5 iv_val = s4 ). s3 = l2.
    s4 = p1. s5 = 18. s4 = zcl_wasm_rt=>shr_u32( iv_val = s4 iv_shift = s5 ). s5 = 7. s4 = zcl_wasm_rt=>and32( iv_a = s4 iv_b = s5 ). s5 = 240. s4 = zcl_wasm_rt=>or32( iv_a = s4 iv_b = s5 ). mem_st_i32_8( iv_addr = s3 + 4 iv_val = s4 ).
    s3 = 4.
  ENDDO.
  p1 = s3. s3 = l2. s4 = 8. s3 = s3 + s4. s4 = p0. s4 = mem_ld_i32( s4 + 8 ). s5 = l2. s6 = 4. s5 = s5 + s6. s6 = p1. PERFORM f181 USING s3 s4 s5 s6. s3 = l2. s3 = mem_ld_i32_8u( s3 + 8 ). l4 = s3. s4 = 4.
  IF s3 <> s4. s3 = 1. ELSE. s3 = 0. ENDIF.
  IF s3 <> 0.
    s3 = p0. s3 = mem_ld_i32( s3 + 4 ). p1 = s3. s3 = l2. s3 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s3 + 8 ). l6 = s3. s3 = p0. s3 = mem_ld_i32_8u( s3 ). l3 = s3. s4 = 4.
    IF zcl_wasm_rt=>le_u32( iv_a = s3 iv_b = s4 ) = abap_true. s3 = 1. ELSE. s3 = 0. ENDIF.
    s4 = l3. s5 = 3.
    IF s4 <> s5. s4 = 1. ELSE. s4 = 0. ENDIF.
    s3 = zcl_wasm_rt=>and32( iv_a = s3 iv_b = s4 ).
    IF s3 = 0. s3 = 1. ELSE. s3 = 0. ENDIF.
    IF s3 <> 0.
      s3 = p1. s3 = mem_ld_i32( s3 ). l3 = s3. s4 = p1. s5 = 4. s4 = s4 + s5. s4 = mem_ld_i32( s4 ). l5 = s4. s4 = mem_ld_i32( s4 ).
      DATA(lv_ci_func) = mt_tab0[ s4 + 1 ]. " call_indirect
      dispatch_t2( iv_idx = lv_ci_func p0 = s3 ). s3 = l5. s3 = mem_ld_i32( s3 + 4 ).
      IF s3 <> 0.
        s3 = l3. PERFORM f125 USING s3.
      ELSE.
      ENDIF.
      s3 = p1. PERFORM f125 USING s3.
    ELSE.
    ENDIF.
    s3 = p0. s4 = l6. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s4 iv_addr = s3 + 0 CHANGING cv_mem = mv_mem ).
  ELSE.
  ENDIF.
  s3 = l2. s4 = 16. s3 = s3 + s4. gv_g0 = s3. s3 = l4. s4 = 4.
  IF s3 <> s4. s3 = 1. ELSE. s3 = 0. ENDIF.
  rv = s3.
ENDFORM.

FORM f576 USING p0 TYPE f p1 TYPE f p2 TYPE i CHANGING rv TYPE f.
  DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE int8. DATA l6 TYPE f. DATA l7 TYPE f. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i.
  DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i.
  DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i. DATA s36 TYPE i.
  DATA s37 TYPE i. DATA s38 TYPE i. DATA s39 TYPE i. DATA s40 TYPE i. DATA s41 TYPE i. DATA s42 TYPE i. DATA s43 TYPE i. DATA s44 TYPE i. DATA s45 TYPE i. DATA s46 TYPE i. DATA s47 TYPE i. DATA s48 TYPE i. DATA s49 TYPE i. DATA s50 TYPE i.
  DATA s51 TYPE i. DATA s52 TYPE i. DATA s53 TYPE i. DATA s54 TYPE i. DATA s55 TYPE i. DATA s56 TYPE i. DATA s57 TYPE i. DATA s58 TYPE i. DATA s59 TYPE i. DATA s60 TYPE i. DATA s61 TYPE i. DATA lv_br TYPE i. s0 = p0.
  s0 = zcl_wasm_rt=>reinterpret_f64_i64( s0 ). l5 = s0. s1 = 9223372002495037440. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 4604249089280835585.
  IF zcl_wasm_rt=>lt_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
  l4 = s0.
  IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = '0.785398'. s1 = p0. s2 = p0. s2 = - s2. s3 = l5. s4 = 0.
    IF s3 >= s4. s3 = 1. ELSE. s3 = 0. ENDIF.
    l3 = s3.
    IF s3 <> 0. s1 = s1. ELSE. s1 = s2. ENDIF.
    s0 = s0 - s1. s1 = '0.000000'. s2 = p1. s3 = p1. s3 = - s3. s4 = l3.
    IF s4 <> 0. s2 = s2. ELSE. s2 = s3. ENDIF.
    s1 = s1 - s2. s0 = s0 + s1. p0 = s0. s0 = '0.000000'. p1 = s0.
  ELSE.
  ENDIF.
  s0 = p0. s1 = p0. s2 = p0. s3 = p0. s2 = s2 * s3. l7 = s2. s1 = s1 * s2. l6 = s1. s2 = '0.333333'. s1 = s1 * s2. s2 = l7. s3 = l6. s4 = l7. s5 = l7. s4 = s4 * s5. l6 = s4. s5 = l6. s6 = l6. s7 = l6. s8 = l6. s9 = '-0.000019'.
  s8 = s8 * s9. s9 = '0.000078'. s8 = s8 + s9. s7 = s7 * s8. s8 = '0.000588'. s7 = s7 + s8. s6 = s6 * s7. s7 = '0.003592'. s6 = s6 + s7. s5 = s5 * s6. s6 = '0.021869'. s5 = s5 + s6. s4 = s4 * s5. s5 = '0.133333'. s4 = s4 + s5. s5 = l7.
  s6 = l6. s7 = l6. s8 = l6. s9 = l6. s10 = l6. s11 = '0.000026'. s10 = s10 * s11. s11 = '0.000071'. s10 = s10 + s11. s9 = s9 * s10. s10 = '0.000246'. s9 = s9 + s10. s8 = s8 * s9. s9 = '0.001456'. s8 = s8 + s9. s7 = s7 * s8.
  s8 = '0.008863'. s7 = s7 + s8. s6 = s6 * s7. s7 = '0.053968'. s6 = s6 + s7. s5 = s5 * s6. s4 = s4 + s5. s3 = s3 * s4. s4 = p1. s3 = s3 + s4. s2 = s2 * s3. s3 = p1. s2 = s2 + s3. s1 = s1 + s2. l6 = s1. s0 = s0 + s1. p1 = s0. s0 = l4.
  IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = 1. s1 = p2. s2 = 1. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 - s1. s0 = s0. " convert to f64 l7 = s0. s1 = p0. s2 = l6. s3 = p1. s4 = p1. s3 = s3 * s4. s4 = p1. s5 = l7. s4 = s4 + s5. s3 = s3 / s4.
    s2 = s2 - s3. s1 = s1 + s2. p0 = s1. s2 = p0. s1 = s1 + s2. s0 = s0 - s1. p0 = s0. s1 = p0. s1 = - s1. s2 = l3.
    IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
    rv = s0. RETURN.
  ELSE.
  ENDIF.
  s0 = p2.
  IF s0 <> 0.
    s0 = '-1.000000'. s1 = p1. s0 = s0 / s1. l7 = s0. s1 = l7. s1 = zcl_wasm_rt=>reinterpret_f64_i64( s1 ). s2 = -4294967296. s1 = zcl_wasm_rt=>and64( iv_a = s1 iv_b = s2 ). s1 = zcl_wasm_rt=>reinterpret_i64_f64( s1 ). l7 = s1. s2 = l6.
    s3 = p1. s3 = zcl_wasm_rt=>reinterpret_f64_i64( s3 ). s4 = -4294967296. s3 = zcl_wasm_rt=>and64( iv_a = s3 iv_b = s4 ). s3 = zcl_wasm_rt=>reinterpret_i64_f64( s3 ). p1 = s3. s4 = p0. s3 = s3 - s4. s2 = s2 - s3. s1 = s1 * s2. s2 = l7.
    s3 = p1. s2 = s2 * s3. s3 = '1.000000'. s2 = s2 + s3. s1 = s1 + s2. s0 = s0 * s1. s1 = l7. s0 = s0 + s1.
  ELSE.
    s1 = p1.
  ENDIF.
  rv = s1.
ENDFORM.

FORM f577 USING p0 TYPE i CHANGING rv TYPE i.
  DATA l1 TYPE i. DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i.
  DATA s9 TYPE i. DATA lv_br TYPE i. s0 = p0. s1 = 11. s0 = zcl_wasm_rt=>shl32( iv_val = s0 iv_shift = s1 ). l1 = s0. s0 = 33. l3 = s0. s0 = 33. l4 = s0.
  DO 1 TIMES. " block
    DO. " loop
      s0 = l1. s1 = l3. s2 = 1. s1 = zcl_wasm_rt=>shr_u32( iv_val = s1 iv_shift = s2 ). s2 = l2. s1 = s1 + s2. l3 = s1. s2 = 2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s2 = 1053092. s1 = s1 + s2. s1 = mem_ld_i32( s1 ).
      s2 = 11. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). l5 = s1.
      IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = l3. s1 = l4. s2 = l1. s3 = l5.
        IF zcl_wasm_rt=>lt_u32( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
        IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
        l4 = s0. s1 = l3. s2 = 1. s1 = s1 + s2. s2 = l2. s3 = l1. s4 = l5.
        IF zcl_wasm_rt=>gt_u32( iv_a = s3 iv_b = s4 ) = abap_true. s3 = 1. ELSE. s3 = 0. ENDIF.
        IF s3 <> 0. s1 = s1. ELSE. s1 = s2. ENDIF.
        l2 = s1. s0 = s0 - s1. l3 = s0. s0 = l2. s1 = l4.
        IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        lv_br = 2. EXIT. " br 2
      ELSE.
      ENDIF.
    ENDDO.
    s0 = l3. s1 = 1. s0 = s0 + s1. l2 = s0.
  ENDDO.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      s0 = l2. s1 = 32.
      IF zcl_wasm_rt=>le_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = l2. s1 = 2. s0 = zcl_wasm_rt=>shl32( iv_val = s0 iv_shift = s1 ). l1 = s0. s1 = 1053092. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). s1 = 727. l4 = s1.
        DO 1 TIMES. " block
          s1 = l2. s2 = 32.
          IF s1 = s2. s1 = 1. ELSE. s1 = 0. ENDIF.
          IF s1 <> 0. EXIT. ENDIF. " br_if 0
          s1 = l1. s2 = 1053096. s1 = s1 + s2. l1 = s1.
          IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
          IF s1 <> 0. EXIT. ENDIF. " br_if 0
          s1 = l1. s1 = mem_ld_i32( s1 ). s2 = 21. s1 = zcl_wasm_rt=>shr_u32( iv_val = s1 iv_shift = s2 ). l4 = s1.
        ENDDO.
        s1 = 21. s0 = zcl_wasm_rt=>shr_u32( iv_val = s0 iv_shift = s1 ). l1 = s0. s0 = l2.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        s0 = 0. lv_br = 2. EXIT. " br 2
      ELSE.
      ENDIF.
      s1 = 33. s2 = 33. s3 = 1052996. PERFORM f1038 USING s1 s2 s3.
      RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
    ENDDO.
    s1 = l2. s2 = 2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s2 = 1053088. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). s2 = 2097151. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ).
  ENDDO.
  l2 = s1.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      s1 = l4. s2 = l1. s3 = -1. s2 = zcl_wasm_rt=>xor32( iv_a = s2 iv_b = s3 ). s1 = s1 + s2.
      IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. EXIT. ENDIF. " br_if 0
      s1 = p0. s2 = l2. s1 = s1 - s2. l5 = s1. s1 = 727. s2 = l1. s3 = l1. s4 = 727.
      IF zcl_wasm_rt=>le_u32( iv_a = s3 iv_b = s4 ) = abap_true. s3 = 1. ELSE. s3 = 0. ENDIF.
      IF s3 <> 0. s1 = s1. ELSE. s1 = s2. ENDIF.
      l3 = s1. s1 = l4. s2 = 1. s1 = s1 - s2. p0 = s1. s1 = 0. l2 = s1.
      DO. " loop
        s1 = l1. s2 = l3.
        IF s1 = s2. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
        s1 = l2. s2 = l1. s3 = 1053224. s2 = s2 + s3. s2 = mem_ld_i32_8u( s2 ). s1 = s1 + s2. l2 = s1. s2 = l5.
        IF zcl_wasm_rt=>gt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        s1 = p0. s2 = l1. s3 = 1. s2 = s2 + s3. l1 = s2.
        IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0. EXIT. ENDIF. " br_if 0
      ENDDO.
      s1 = p0. l1 = s1.
    ENDDO.
    s1 = l1. s2 = 1. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). rv = s1. RETURN.
  ENDDO.
  s1 = l3. s2 = 727. s3 = 1053012. PERFORM f1038 USING s1 s2 s3.
  RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
  rv = s0.
ENDFORM.

FORM f578 USING p0 TYPE i p1 TYPE int8 CHANGING rv TYPE i.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i.
  DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i.
  DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i. DATA s36 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        DO. " loop
          DO 1 TIMES. " block
            s0 = 0. s1 = p1. s2 = -4294967296.
            IF zcl_wasm_rt=>lt_u64( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
            IF s1 <> 0. EXIT. ENDIF. " br_if 0
            s0 = 0. s1 = p1. s1 = zcl_wasm_rt=>wrap_i64( s1 ). l3 = s1. s1 = mem_ld_i32_16u( s1 + 6 ). s2 = 48.
            IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
            IF s1 <> 0. EXIT. ENDIF. " br_if 0
            s0 = l3. s0 = mem_ld_i32( s0 + 32 ).
          ENDDO.
          l2 = s0. s0 = mem_ld_i32_8u( s0 + 17 ).
          IF s0 <> 0.
            s0 = p0. s1 = 1134591. s2 = 0. PERFORM f970 USING s0 s1 s2 CHANGING s0. lv_br = 3. EXIT. " br 3
          ELSE.
          ENDIF.
          s0 = p0. s1 = l2. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 8 ). p1 = s1. s2 = 99. s3 = p1. s4 = 0. PERFORM f192 USING s0 s1 s2 s3 s4 CHANGING s0. p1 = s0. s1 = -4294967296.
          s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). l4 = s0. s1 = 25769803776.
          IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
          s0 = 12884901888. s1 = p1. s2 = l4. s3 = 8589934592.
          IF s2 = s3. s2 = 1. ELSE. s2 = 0. ENDIF.
          IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
          p1 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 12884901888.
          IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          s0 = l2. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). p1 = s0. s1 = -4294967296.
          IF zcl_wasm_rt=>lt_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0.
            s0 = 0. rv = s0. RETURN.
          ELSE.
          ENDIF.
          s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l2 = s0. s0 = mem_ld_i32_16u( s0 + 6 ). s1 = 48.
          IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
        ENDDO.
        s0 = l2. s0 = mem_ld_i32_8u( s0 + 5 ). s1 = 1. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). rv = s0. RETURN.
      ENDDO.
      s0 = p0. s1 = p1. s2 = l2. s2 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s2 + 8 ). s3 = 12884901888. s4 = 1. s5 = l2. s6 = 2. PERFORM f0 USING s0 s1 s2 s3 s4 s5 s6 CHANGING s0. l4 = s0.
      DO 1 TIMES. " block
        s0 = p1. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
        IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l3 = s0. s1 = l3. s1 = mem_ld_i32( s1 ). l3 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l3. s1 = 1.
        IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = p1. PERFORM f453 USING s0 s1.
      ENDDO.
      s0 = l4. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 25769803776.
      IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p0. s1 = l4. PERFORM f581 USING s0 s1 CHANGING s0. l3 = s0.
      DO 1 TIMES. " block
        s0 = l2. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). p1 = s0. s1 = -4294967296.
        IF zcl_wasm_rt=>lt_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = 0. l2 = s0. lv_br = 1. EXIT. " br 1
        ELSE.
        ENDIF.
        s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l2 = s0. s0 = mem_ld_i32_16u( s0 + 6 ). s1 = 48.
        IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = l2. s0 = mem_ld_i32_8u( s0 + 5 ). s1 = 1. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). l2 = s0. lv_br = 1. EXIT. " br 1
        ELSE.
        ENDIF.
        s0 = p0. s1 = p1. PERFORM f578 USING s0 s1 CHANGING s0. l2 = s0. s1 = 0.
        IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      ENDDO.
      s0 = l2. s1 = l3.
      IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p0. s1 = 1145509. s2 = 0. PERFORM f970 USING s0 s1 s2 CHANGING s0.
    ENDDO.
    s0 = -1. l3 = s0.
  ENDDO.
  s0 = l3. rv = s0.
ENDFORM.

FORM f579 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i.
  DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE int8. DATA l7 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i.
  DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i.
  DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i. DATA s36 TYPE i.
  DATA lv_br TYPE i. s0 = gv_g0. s1 = 144. s0 = s0 - s1. l4 = s0. gv_g0 = s0. s0 = p2. s1 = p2. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l4. s1 = 12884901888.
  zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 32 CHANGING cv_mem = mv_mem ). s0 = l4.
  RAISE EXCEPTION TYPE cx_sy_program_error. " SIMD not supported
  RAISE EXCEPTION TYPE cx_sy_program_error. " SIMD not supported
  s1 = l4. s2 = 12884901888. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s2 iv_addr = s1 + 8 CHANGING cv_mem = mv_mem ). s1 = l4. s2 = 0. mem_st_i32_16( iv_addr = s1 iv_val = s2 ). s1 = l4. s2 = p2.
  mem_st_i32( iv_addr = s1 + 48 iv_val = s2 ). s1 = p3. s1 = mem_ld_i32( s1 + 24 ). p2 = s1. s1 = p3. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 16 ). l6 = s1. s1 = p3.
  s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 0 ). l7 = s1. s1 = p3. s1 = mem_ld_i32( s1 + 8 ). PERFORM f117 USING s1. s1 = l4. s2 = l7.
  zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s2 iv_addr = s1 + 40 CHANGING cv_mem = mv_mem ). s1 = l4. s2 = 88. s1 = s1 + s2. p3 = s1. s2 = l4. s3 = l6. s4 = p2. PERFORM f539 USING s1 s2 s3 s4.
  DO 1 TIMES. " block
    s1 = l4. s1 = mem_ld_i32_8u( s1 + 88 ). p2 = s1. s2 = 18.
    IF s1 = s2. s1 = 1. ELSE. s1 = 0. ENDIF.
    IF s1 <> 0.
      s1 = l4. s2 = 136. s1 = s1 + s2. s2 = l4. s3 = 48. s2 = s2 + s3. s2 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s2 + 0 ). zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s2 iv_addr = s1 + 0 CHANGING cv_mem = mv_mem ). s1 = l4.
      s2 = 120. s1 = s1 + s2. s2 = l4. s3 = 32. s2 = s2 + s3.
      RAISE EXCEPTION TYPE cx_sy_program_error. " SIMD not supported
      RAISE EXCEPTION TYPE cx_sy_program_error. " SIMD not supported
      s3 = l4. s4 = 104. s3 = s3 + s4. s4 = l4. s5 = 16. s4 = s4 + s5.
      RAISE EXCEPTION TYPE cx_sy_program_error. " SIMD not supported
      RAISE EXCEPTION TYPE cx_sy_program_error. " SIMD not supported
      s5 = l4. s6 = l4.
      RAISE EXCEPTION TYPE cx_sy_program_error. " SIMD not supported
      RAISE EXCEPTION TYPE cx_sy_program_error. " SIMD not supported
      s7 = p0. s8 = p3. s9 = p1. PERFORM f788 USING s7 s8 s9. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s7 = l4. s8 = 79. s7 = s7 + s8. p3 = s7. s8 = l4. s9 = 112. s8 = s8 + s9. s8 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s8 + 0 ). zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s8 iv_addr = s7 + 0 CHANGING cv_mem = mv_mem ).
    s7 = l4. s8 = 72. s7 = s7 + s8. l5 = s7. s8 = l4. s9 = 105. s8 = s8 + s9. s8 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s8 + 0 ). zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s8 iv_addr = s7 + 0 CHANGING cv_mem = mv_mem ).
    s7 = l4. s8 = -64. s7 = s7 - s8. s8 = l4. s9 = 97. s8 = s8 + s9. s8 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s8 + 0 ). p1 = s8. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s8 iv_addr = s7 + 0 CHANGING cv_mem = mv_mem ).
    s7 = l4. s8 = l4. s8 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s8 + 89 ). l6 = s8. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s8 iv_addr = s7 + 56 CHANGING cv_mem = mv_mem ). s7 = p0. s8 = p2.
    mem_st_i32_8( iv_addr = s7 iv_val = s8 ). s7 = p0. s8 = l6. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s8 iv_addr = s7 + 1 CHANGING cv_mem = mv_mem ). s7 = p0. s8 = 9. s7 = s7 + s8. s8 = p1.
    zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s8 iv_addr = s7 + 0 CHANGING cv_mem = mv_mem ). s7 = p0. s8 = 17. s7 = s7 + s8. s8 = l5. s8 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s8 + 0 ).
    zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s8 iv_addr = s7 + 0 CHANGING cv_mem = mv_mem ). s7 = p0. s8 = 24. s7 = s7 + s8. s8 = p3. s8 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s8 + 0 ).
    zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s8 iv_addr = s7 + 0 CHANGING cv_mem = mv_mem ). s7 = l4. PERFORM f634 USING s7. s7 = l4. s7 = mem_ld_i32( s7 + 48 ). PERFORM f117 USING s7. s7 = l4. s7 = mem_ld_i32_8u( s7 ).
    IF s7 = 0. s7 = 1. ELSE. s7 = 0. ENDIF.
    IF s7 <> 0. EXIT. ENDIF. " br_if 0
    s7 = l4. s7 = mem_ld_i32( s7 + 4 ).
    IF s7 = 0. s7 = 1. ELSE. s7 = 0. ENDIF.
    IF s7 <> 0. EXIT. ENDIF. " br_if 0
    s7 = l4. s7 = mem_ld_i32( s7 + 8 ). PERFORM f125 USING s7.
  ENDDO.
  s7 = l4. s8 = 144. s7 = s7 + s8. gv_g0 = s7.
ENDFORM.

FORM f580 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i.
  DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i.
  DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA lv_br TYPE i. s0 = p1. s1 = 16. s0 = s0 + s1. l6 = s0.
  DO 1 TIMES. " block
    s0 = p1. s0 = mem_ld_i32( s0 + 16 ). l3 = s0. s0 = mem_ld_i32_8u( s0 + 16 ).
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l3. s0 = mem_ld_i32( s0 ). s1 = 1.
    IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p0. s1 = l3. PERFORM f495 USING s0 s1 CHANGING s0. l3 = s0.
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = -1. rv = s0. RETURN.
      ELSE.
      ENDIF.
      s0 = l6. s0 = mem_ld_i32( s0 ). l2 = s0. s1 = l2. s1 = mem_ld_i32( s1 ). l4 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l4. s1 = 1.
      IF s0 <= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = l2. PERFORM f602 USING s0 s1.
      ELSE.
      ENDIF.
      s0 = l6. s1 = l3. mem_st_i32( iv_addr = s0 iv_val = s1 ). lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = p0. s0 = mem_ld_i32( s0 + 16 ). l5 = s0. s0 = mem_ld_i32( s0 + 224 ). s1 = l3. s1 = mem_ld_i32( s1 + 20 ). s2 = 32. s3 = l5. s3 = mem_ld_i32( s3 + 212 ). s2 = s2 - s3. s1 = zcl_wasm_rt=>shr_u32( iv_val = s1 iv_shift = s2 ). s2 = 2.
    s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. l2 = s0.
    DO. " loop
      s0 = l2. l4 = s0. s0 = mem_ld_i32( s0 ). l7 = s0. s1 = 40. s0 = s0 + s1. l2 = s0. s0 = l3. s1 = l7.
      IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
    ENDDO.
    s0 = l4. s1 = l3. s1 = mem_ld_i32( s1 + 40 ). mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l3. s1 = 0. mem_st_i32_8( iv_addr = s0 + 16 iv_val = s1 ). s0 = l5. s1 = l5. s1 = mem_ld_i32( s1 + 220 ). s2 = 1. s1 = s1 - s2.
    mem_st_i32( iv_addr = s0 + 220 iv_val = s1 ). s0 = l6. s0 = mem_ld_i32( s0 ). l3 = s0.
  ENDDO.
  DO 1 TIMES. " block
    s0 = p1. s1 = 40. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). l5 = s0. s1 = l3. s1 = mem_ld_i32( s1 + 32 ). s0 = s0 + s1. l4 = s0. s1 = l3. s1 = mem_ld_i32( s1 + 28 ).
    IF zcl_wasm_rt=>gt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = -1. s1 = p0. s2 = l6. s3 = p1. s4 = l4. PERFORM f364 USING s1 s2 s3 s4 CHANGING s1.
      IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
    ELSE.
    ENDIF.
    s0 = p1. s0 = mem_ld_i32( s0 + 36 ). l2 = s0. s0 = l5.
    IF s0 <> 0.
      s0 = 0. l4 = s0.
      DO. " loop
        s0 = p0. s1 = p1. s2 = l4. s3 = -2147483648. s2 = zcl_wasm_rt=>or32( iv_a = s2 iv_b = s3 ). s3 = 7. PERFORM f329 USING s0 s1 s2 s3 CHANGING s0. s1 = l2. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 0 ).
        zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ). s0 = l2. s1 = 8. s0 = s0 + s1. l2 = s0. s0 = l5. s1 = l4. s2 = 1. s1 = s1 + s2. l4 = s1.
        IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
      ENDDO.
      s0 = p1. s0 = mem_ld_i32( s0 + 36 ). l2 = s0.
    ELSE.
    ENDIF.
    s0 = p0. s0 = mem_ld_i32( s0 + 16 ). p0 = s0. s1 = 16. s0 = s0 + s1. s1 = l2. s2 = p0. s2 = mem_ld_i32( s2 + 4 ).
    DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
    dispatch_t6( iv_idx = lv_ci_func p0 = s0 p1 = s1 ). s0 = p1. s1 = 0. mem_st_i32( iv_addr = s0 + 40 iv_val = s1 ). s0 = p1. s1 = 0. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 32 CHANGING cv_mem = mv_mem ). s0 = p1.
    s1 = p1. s1 = mem_ld_i32_8u( s1 + 5 ). s2 = 247. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). mem_st_i32_8( iv_addr = s0 + 5 iv_val = s1 ). s0 = 0.
  ENDDO.
  rv = s0.
ENDFORM.

FORM f581 USING p0 TYPE i p1 TYPE int8 CHANGING rv TYPE i.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE f. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i.
  DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA lv_br TYPE i. s0 = -1. l2 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          DO 1 TIMES. " block
            DO 1 TIMES. " block
              DO 1 TIMES. " block
                DO 1 TIMES. " block
                  DO 1 TIMES. " block
                    s0 = p1. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). l3 = s0. s1 = 11. s0 = s0 + s1.
                    CASE s0.
                      WHEN 0. lv_br = 4. EXIT.
                      WHEN 1. lv_br = 3. EXIT.
                      WHEN 2. lv_br = 3. EXIT.
                      WHEN 3. lv_br = 6. EXIT.
                      WHEN 4. lv_br = 2. EXIT.
                      WHEN 5. lv_br = 6. EXIT.
                      WHEN 6. lv_br = 6. EXIT.
                      WHEN 7. lv_br = 6. EXIT.
                      WHEN 8. lv_br = 6. EXIT.
                      WHEN 9. lv_br = 6. EXIT.
                      WHEN 10. lv_br = 5. EXIT.
                      WHEN 11. EXIT.
                      WHEN 12. lv_br = 1. EXIT.
                      WHEN 13. lv_br = 1. EXIT.
                      WHEN 14. lv_br = 1. EXIT.
                      WHEN 15. lv_br = 6. EXIT.
                      WHEN 16. lv_br = 6. EXIT.
                      WHEN 17. lv_br = 7. EXIT.
                      WHEN OTHERS. lv_br = 6. EXIT.
                    ENDCASE.
                  ENDDO.
                  s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = 0.
                  IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                  rv = s0. RETURN.
                ENDDO.
                s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). rv = s0. RETURN.
              ENDDO.
              s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l2 = s0. s1 = l2. s1 = mem_ld_i32( s1 ). l3 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l2.
              s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 4 ). s1 = 2147483647. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 0.
              IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
              l2 = s0. s0 = l3. s1 = 1.
              IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0. lv_br = 4. EXIT. ENDIF. " br_if 4
              lv_br = 5. EXIT. " br 5
            ENDDO.
            s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l2 = s0. s1 = l2. s1 = mem_ld_i32( s1 ). l3 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l2. s1 = 12. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). s1 = 2147483647.
            s0 = s0 + s1. s1 = -2.
            IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
            l2 = s0. s0 = l3. s1 = 1.
            IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
            lv_br = 4. EXIT. " br 4
          ENDDO.
          s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l2 = s0. s1 = l2. s1 = mem_ld_i32( s1 ). l3 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l2. s1 = 12. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). s1 = 2147483647.
          s0 = s0 + s1. s1 = -2.
          IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          l2 = s0. s0 = l3. s1 = 1.
          IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
          lv_br = 3. EXIT. " br 3
        ENDDO.
        s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l2 = s0. s1 = l2. s1 = mem_ld_i32( s1 ). l3 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l2. s0 = mem_ld_i32_8s( s0 + 5 ). s1 = 0.
        IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        l2 = s0. s0 = l3. s1 = 1.
        IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        lv_br = 2. EXIT. " br 2
      ENDDO.
      s0 = l3. s1 = 7. s0 = s0 - s1. s1 = -19.
      IF zcl_wasm_rt=>le_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = p1. s1 = 9221120288580698112. s0 = s0 + s1. s0 = zcl_wasm_rt=>reinterpret_i64_f64( s0 ). l4 = s0. s1 = '0.000000'.
        IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        s1 = l4. s2 = '0.000000'.
        IF s1 < s2. s1 = 1. ELSE. s1 = 0. ENDIF.
        s0 = zcl_wasm_rt=>or32( iv_a = s0 iv_b = s1 ). rv = s0. RETURN.
      ELSE.
      ENDIF.
      s0 = 1. l2 = s0. s0 = l3. s1 = -11.
      IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l2 = s0. s1 = l2. s1 = mem_ld_i32( s1 ). l3 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = 1. l2 = s0. s0 = l3. s1 = 1.
      IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = p1. PERFORM f453 USING s0 s1.
    ENDDO.
    s0 = l2. rv = s0. RETURN.
  ENDDO.
  s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = p1. PERFORM f453 USING s0 s1. s0 = l2. rv = s0.
ENDFORM.

FORM f582 USING p0 TYPE i p1 TYPE i p2 TYPE i CHANGING rv TYPE i.
  DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i.
  DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i.
  DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l6 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      s0 = p0. s1 = 80. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). l3 = s0. s0 = mem_ld_i32( s0 + 280 ). l5 = s0. s1 = 0.
      IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = -1. l4 = s0.
      DO 1 TIMES. " block
        s0 = l3. s0 = mem_ld_i32( s0 + 256 ). s1 = l5. s0 = s0 + s1. s0 = mem_ld_i32_8u( s0 ). l5 = s0. s1 = 35. s0 = s0 - s1.
        CASE s0.
          WHEN 0. lv_br = 2. EXIT.
          WHEN 1. lv_br = 1. EXIT.
          WHEN 2. lv_br = 2. EXIT.
          WHEN 3. lv_br = 1. EXIT.
          WHEN 4. lv_br = 1. EXIT.
          WHEN 5. lv_br = 2. EXIT.
          WHEN 6. lv_br = 2. EXIT.
          WHEN 7. lv_br = 1. EXIT.
          WHEN 8. lv_br = 1. EXIT.
          WHEN 9. lv_br = 1. EXIT.
          WHEN 10. lv_br = 1. EXIT.
          WHEN 11. lv_br = 2. EXIT.
          WHEN 12. lv_br = 2. EXIT.
          WHEN 13. lv_br = 2. EXIT.
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
          WHEN 45. lv_br = 1. EXIT.
          WHEN 46. lv_br = 1. EXIT.
          WHEN 47. lv_br = 1. EXIT.
          WHEN 48. lv_br = 1. EXIT.
          WHEN 49. lv_br = 1. EXIT.
          WHEN 50. lv_br = 1. EXIT.
          WHEN 51. lv_br = 1. EXIT.
          WHEN 52. lv_br = 1. EXIT.
          WHEN 53. lv_br = 1. EXIT.
          WHEN 54. lv_br = 1. EXIT.
          WHEN 55. lv_br = 1. EXIT.
          WHEN 56. lv_br = 1. EXIT.
          WHEN 57. lv_br = 1. EXIT.
          WHEN 58. lv_br = 1. EXIT.
          WHEN 59. lv_br = 1. EXIT.
          WHEN 60. lv_br = 1. EXIT.
          WHEN 61. lv_br = 1. EXIT.
          WHEN 62. lv_br = 1. EXIT.
          WHEN 63. lv_br = 1. EXIT.
          WHEN 64. lv_br = 1. EXIT.
          WHEN 65. lv_br = 1. EXIT.
          WHEN 66. lv_br = 1. EXIT.
          WHEN 67. lv_br = 1. EXIT.
          WHEN 68. lv_br = 1. EXIT.
          WHEN 69. lv_br = 1. EXIT.
          WHEN 70. lv_br = 1. EXIT.
          WHEN 71. lv_br = 1. EXIT.
          WHEN 72. lv_br = 1. EXIT.
          WHEN 73. lv_br = 2. EXIT.
          WHEN 74. lv_br = 1. EXIT.
          WHEN 75. lv_br = 1. EXIT.
          WHEN 76. lv_br = 2. EXIT.
          WHEN OTHERS. EXIT.
        ENDCASE.
      ENDDO.
      s0 = l5. s1 = 238. s0 = s0 - s1. s1 = 2.
      IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
    ENDDO.
    DO 1 TIMES. " block
      s0 = p2. s1 = 0.
      IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = l3. s0 = mem_ld_i32( s0 + 300 ). p2 = s0. s1 = l3. s1 = mem_ld_i32( s1 + 296 ).
      IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = p2. s1 = 1. s0 = s0 + s1. l4 = s0. s0 = -1. p2 = s0. s0 = l3. s0 = mem_ld_i32( s0 ). s1 = l3. s2 = 292. s1 = s1 + s2. s2 = 20. s3 = l3. s4 = 296. s3 = s3 + s4. s4 = l4. PERFORM f845 USING s0 s1 s2 s3 s4 CHANGING s0.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        s0 = l3. s0 = mem_ld_i32( s0 + 300 ). p2 = s0.
      ELSE.
      ENDIF.
      s0 = l3. s1 = p2. s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 + 300 iv_val = s1 ). s0 = l3. s0 = mem_ld_i32( s0 + 292 ). s1 = p2. s2 = 20. s1 = s1 * s2. s0 = s0 + s1. l4 = s0. s1 = 0. mem_st_i32( iv_addr = s0 + 16 iv_val = s1 ).
      s0 = l4. s1 = -1. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 8 CHANGING cv_mem = mv_mem ). s0 = l4. s1 = -4294967296. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ).
    ENDDO.
    s0 = p0. s1 = 80. s0 = s0 + s1. l5 = s0. s0 = mem_ld_i32( s0 ). l4 = s0. s1 = 256. s0 = s0 + s1. l3 = s0. s0 = l4. s0 = mem_ld_i32( s0 + 284 ). s1 = p0. s1 = mem_ld_i32( s1 + 4 ).
    IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = l3. s1 = 200. PERFORM f908 USING s0 s1. s0 = l6. s1 = p0. s1 = mem_ld_i32( s1 + 4 ). mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = l3. s1 = l6. s2 = 8. s1 = s1 + s2. s2 = 4. PERFORM f1097 USING s0 s1 s2. s0 = l4. s1 = p0.
      s1 = mem_ld_i32( s1 + 4 ). mem_st_i32( iv_addr = s0 + 284 iv_val = s1 ).
    ELSE.
    ENDIF.
    s0 = l4. s1 = l4. s2 = 260. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). mem_st_i32( iv_addr = s0 + 280 iv_val = s1 ). s0 = l3. s1 = p1. s2 = 255. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). PERFORM f908 USING s0 s1. s0 = l5.
    s0 = mem_ld_i32( s0 ). s1 = l6. s2 = p2. mem_st_i32( iv_addr = s1 + 12 iv_val = s2 ). s1 = 256. s0 = s0 + s1. s1 = l6. s2 = 12. s1 = s1 + s2. s2 = 4. PERFORM f1097 USING s0 s1 s2. s0 = l5. s0 = mem_ld_i32( s0 ).
    s0 = mem_ld_i32( s0 + 292 ). s1 = p2. s2 = 20. s1 = s1 * s2. s0 = s0 + s1. p0 = s0. s1 = p0. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p2. l4 = s0.
  ENDDO.
  s0 = l6. s1 = 16. s0 = s0 + s1. gv_g0 = s0. s0 = l4. rv = s0.
ENDFORM.

FORM f583 USING p0 TYPE i p1 TYPE i p2 TYPE i.
  DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i.
  DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA lv_br TYPE i. s0 = p0.
  DO 1 TIMES. " block
    s1 = p1. s1 = mem_ld_i32( s1 + 8 ). l3 = s1. s2 = 2147483646.
    IF s1 >= s2. s1 = 1. ELSE. s1 = 0. ENDIF.
    IF s1 <> 0.
      s1 = 0. s2 = p2. s3 = 1. s2 = zcl_wasm_rt=>and32( iv_a = s2 iv_b = s3 ).
      IF s2 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s1 = 2147483647. s2 = l3. s3 = 2147483646.
      IF s2 <> s3. s2 = 1. ELSE. s2 = 0. ENDIF.
      IF s2 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s1 = p0. s2 = p1. s2 = mem_ld_i32( s2 + 4 ). s3 = 2147483647. s2 = s2 + s3. mem_st_i32( iv_addr = s1 iv_val = s2 ).
      RETURN.
    ELSE.
    ENDIF.
    s1 = l3. s2 = 0.
    IF s1 <= s2. s1 = 1. ELSE. s1 = 0. ENDIF.
    IF s1 <> 0.
      s1 = p0. s2 = 0. mem_st_i32( iv_addr = s1 iv_val = s2 ).
      RETURN.
    ELSE.
    ENDIF.
    s1 = l3. s2 = 31.
    IF zcl_wasm_rt=>le_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
    IF s1 <> 0.
      s1 = p0. s2 = 0. s3 = p1. s3 = mem_ld_i32( s3 + 16 ). s4 = p1. s4 = mem_ld_i32( s4 + 12 ). s5 = 2. s4 = zcl_wasm_rt=>shl32( iv_val = s4 iv_shift = s5 ). s3 = s3 + s4. s4 = 4. s3 = s3 - s4. s3 = mem_ld_i32( s3 ). s4 = 32. s5 = l3.
      s4 = s4 - s5. s3 = zcl_wasm_rt=>shr_u32( iv_val = s3 iv_shift = s4 ). p0 = s3. s2 = s2 - s3. s3 = p0. s4 = p1. s4 = mem_ld_i32( s4 + 4 ).
      IF s4 <> 0. s2 = s2. ELSE. s2 = s3. ENDIF.
      mem_st_i32( iv_addr = s1 iv_val = s2 ).
      RETURN.
    ELSE.
    ENDIF.
    s1 = p2. s2 = 1. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ).
    IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
    IF s1 <> 0.
      s1 = p1. s1 = mem_ld_i32( s1 + 4 ).
      IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0.
        s1 = p0. s2 = 2147483647. mem_st_i32( iv_addr = s1 iv_val = s2 ).
        RETURN.
      ELSE.
      ENDIF.
      s1 = -2147483648. s2 = l3. s3 = 32.
      IF s2 <> s3. s2 = 1. ELSE. s2 = 0. ENDIF.
      IF s2 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s1 = p1. s1 = mem_ld_i32( s1 + 16 ). s2 = p1. s2 = mem_ld_i32( s2 + 12 ). s3 = 2. s2 = zcl_wasm_rt=>shl32( iv_val = s2 iv_shift = s3 ). s1 = s1 + s2. s2 = 4. s1 = s1 - s2. s1 = mem_ld_i32( s1 ). s1 = p0. s2 = -2147483648.
      mem_st_i32( iv_addr = s1 iv_val = s2 ).
      RETURN.
    ELSE.
    ENDIF.
    s1 = p1. s1 = mem_ld_i32( s1 + 12 ). l5 = s1. s2 = 5. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s2 = l3. s1 = s1 - s2. l4 = s1. s2 = 31. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). p0 = s1. s1 = p1.
    s1 = mem_ld_i32( s1 + 16 ). l3 = s1. s1 = 0. p2 = s1. s1 = l5. s2 = l4. s3 = 5. s2 = zcl_wasm_rt=>shr_s32( iv_val = s2 iv_shift = s3 ). l4 = s2.
    IF zcl_wasm_rt=>gt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
    IF s1 <> 0.
      s1 = l3. s2 = l4. s3 = 2. s2 = zcl_wasm_rt=>shl32( iv_val = s2 iv_shift = s3 ). s1 = s1 + s2. s1 = mem_ld_i32( s1 ). p2 = s1.
    ELSE.
    ENDIF.
    s1 = p0.
    IF s1 <> 0.
      s1 = l5. s2 = l4. s3 = 1. s2 = s2 + s3. l4 = s2.
      IF zcl_wasm_rt=>gt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0.
        s1 = l3. s2 = l4. s3 = 2. s2 = zcl_wasm_rt=>shl32( iv_val = s2 iv_shift = s3 ). s1 = s1 + s2. s1 = mem_ld_i32( s1 ).
      ELSE.
        s2 = 0.
      ENDIF.
      s3 = 1. s2 = zcl_wasm_rt=>shl32( iv_val = s2 iv_shift = s3 ). s3 = p0. s4 = 31. s3 = zcl_wasm_rt=>xor32( iv_a = s3 iv_b = s4 ). s2 = zcl_wasm_rt=>shl32( iv_val = s2 iv_shift = s3 ). s3 = p2. s4 = p0.
      s3 = zcl_wasm_rt=>shr_u32( iv_val = s3 iv_shift = s4 ). s2 = zcl_wasm_rt=>or32( iv_a = s2 iv_b = s3 ). p2 = s2.
    ELSE.
    ENDIF.
    s2 = 0. s3 = p2. s2 = s2 - s3. s3 = p2. s4 = p1. s4 = mem_ld_i32( s4 + 4 ).
    IF s4 <> 0. s2 = s2. ELSE. s2 = s3. ENDIF.
  ENDDO.
  mem_st_i32( iv_addr = s1 iv_val = s2 ).
ENDFORM.

FORM f584 USING p0 TYPE i p1 TYPE i p2 TYPE i p3 TYPE i.
  DATA l4 TYPE i. DATA l5 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i.
  DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      s0 = p1.
      IF s0 <> 0.
        s0 = p2. s1 = 0.
        IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
        DO 1 TIMES. " block
          DO 1 TIMES. " block
            DO 1 TIMES. " block
              s0 = p3. s0 = mem_ld_i32( s0 + 4 ).
              IF s0 <> 0.
                s0 = p3. s0 = mem_ld_i32( s0 + 8 ). l5 = s0.
                IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
                IF s0 <> 0.
                  s0 = p1. s1 = p2.
                  IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
                  IF s1 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
                  s0 = 1215076. s0 = mem_ld_i32_8u( s0 ). s0 = p1. s1 = 8.
                  IF zcl_wasm_rt=>le_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
                  s1 = p1. s2 = p2.
                  IF zcl_wasm_rt=>le_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
                  s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
                  IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
                  s0 = p1. s1 = p1. s2 = p2. s3 = p1. s2 = zcl_wasm_rt=>rem_u32( iv_a = s2 iv_b = s3 ). p3 = s2. s1 = s1 - s2. s2 = 0. s3 = p3.
                  IF s3 <> 0. s1 = s1. ELSE. s1 = s2. ENDIF.
                  s2 = p2. s1 = s1 + s2. PERFORM f449 USING s0 s1 CHANGING s0. lv_br = 3. EXIT. " br 3
                ELSE.
                ENDIF.
                s1 = p3. s1 = mem_ld_i32( s1 ). l4 = s1. s1 = p1. s2 = p2.
                IF zcl_wasm_rt=>gt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
                IF s1 <> 0.
                  s1 = p1. s2 = p1. PERFORM f449 USING s1 s2 CHANGING s1. p3 = s1.
                  IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
                  IF s1 <> 0.
                    s1 = p0. s2 = 8. s1 = s1 + s2. l4 = s1. s1 = p0. s2 = 4. s1 = s1 + s2. l5 = s1. lv_br = 7. EXIT. " br 7
                  ELSE.
                  ENDIF.
                  s1 = p3. s2 = l4. s3 = l5. PERFORM f216 USING s1 s2 s3 CHANGING s1. s1 = l4. PERFORM f125 USING s1. s1 = p0. s2 = 8. s1 = s1 + s2. l4 = s1. s1 = p0. s2 = 4. s1 = s1 + s2. l5 = s1. lv_br = 4. EXIT. " br 4
                ELSE.
                ENDIF.
                s1 = l4. s2 = p2. PERFORM f205 USING s1 s2 CHANGING s1. lv_br = 2. EXIT. " br 2
              ELSE.
              ENDIF.
              s2 = p1. s3 = p2.
              IF s3 = 0. s3 = 1. ELSE. s3 = 0. ENDIF.
              IF s3 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
              s2 = 1215076. s2 = mem_ld_i32_8u( s2 ). s2 = p1. s3 = 8.
              IF zcl_wasm_rt=>le_u32( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
              s3 = p1. s4 = p2.
              IF zcl_wasm_rt=>le_u32( iv_a = s3 iv_b = s4 ) = abap_true. s3 = 1. ELSE. s3 = 0. ENDIF.
              s2 = zcl_wasm_rt=>and32( iv_a = s2 iv_b = s3 ).
              IF s2 <> 0. EXIT. ENDIF. " br_if 0
              s2 = p1. s3 = p1. s4 = p2. s5 = p1. s4 = zcl_wasm_rt=>rem_u32( iv_a = s4 iv_b = s5 ). p3 = s4. s3 = s3 - s4. s4 = 0. s5 = p3.
              IF s5 <> 0. s3 = s3. ELSE. s3 = s4. ENDIF.
              s4 = p2. s3 = s3 + s4. PERFORM f449 USING s2 s3 CHANGING s2. lv_br = 1. EXIT. " br 1
            ENDDO.
            s3 = p2. PERFORM f18 USING s3 CHANGING s3.
          ENDDO.
          p3 = s3. s3 = p0. s4 = 8. s3 = s3 + s4. l4 = s3. s3 = p0. s4 = 4. s3 = s3 + s4. l5 = s3. s3 = p3.
          IF s3 = 0. s3 = 1. ELSE. s3 = 0. ENDIF.
          IF s3 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
        ENDDO.
        s3 = l4. s4 = p2. mem_st_i32( iv_addr = s3 iv_val = s4 ). s3 = l5. s4 = p3. mem_st_i32( iv_addr = s3 iv_val = s4 ). s3 = p0. s4 = 0. mem_st_i32( iv_addr = s3 iv_val = s4 ).
        RETURN.
      ELSE.
      ENDIF.
      lv_br = 1. EXIT. " br 1
    ENDDO.
    s3 = l4. s4 = p2. mem_st_i32( iv_addr = s3 iv_val = s4 ). s3 = l5. s4 = p1. mem_st_i32( iv_addr = s3 iv_val = s4 ). s3 = p0. s4 = 1. mem_st_i32( iv_addr = s3 iv_val = s4 ).
    RETURN.
  ENDDO.
  s3 = p0. s4 = 0. mem_st_i32( iv_addr = s3 + 4 iv_val = s4 ). s3 = p0. s4 = 1. mem_st_i32( iv_addr = s3 iv_val = s4 ).
ENDFORM.

FORM f585 USING p0 TYPE i p1 TYPE i.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE i. DATA l8 TYPE i. DATA l9 TYPE int8. DATA l10 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i.
  DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i.
  DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l4 = s0. gv_g0 = s0. s0 = p1. s0 = mem_ld_i32( s0 ). l6 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        s0 = p1. s0 = mem_ld_i32( s0 + 8 ). l2 = s0. s1 = p1. s1 = mem_ld_i32( s1 + 4 ). l7 = s1.
        IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = l2. s1 = l6. s0 = s0 + s1. s0 = mem_ld_i32_8u( s0 ). s1 = 95.
          IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        ELSE.
        ENDIF.
        s0 = l2. s1 = l7. s2 = l2. s3 = l7.
        IF zcl_wasm_rt=>gt_u32( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
        IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
        l8 = s0.
        DO 1 TIMES. " block
          DO. " loop
            s0 = l2. s1 = l7.
            IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0.
              s0 = l2. s1 = l6. s0 = s0 + s1. s0 = mem_ld_i32_8u( s0 ). s1 = 95.
              IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
            ELSE.
            ENDIF.
            s0 = l2. s1 = l8.
            IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
            DO 1 TIMES. " block
              s0 = l2. s1 = l6. s0 = s0 + s1. s0 = mem_ld_i32_8u( s0 ). l5 = s0. s1 = 48. s0 = s0 - s1. l3 = s0. s1 = 255. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = 10.
              IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0. EXIT. ENDIF. " br_if 0
              s0 = l5. s1 = 97. s0 = s0 - s1. s1 = 255. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = 26.
              IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0.
                s0 = l5. s1 = 65. s0 = s0 - s1. s1 = 255. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = 26.
                IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
                IF s0 <> 0. lv_br = 5. EXIT. ENDIF. " br_if 5
                s0 = l5. s1 = 29. s0 = s0 - s1. l3 = s0. lv_br = 1. EXIT. " br 1
              ELSE.
              ENDIF.
              s0 = l5. s1 = 87. s0 = s0 - s1. l3 = s0.
            ENDDO.
            s0 = p1. s1 = l2. s2 = 1. s1 = s1 + s2. l2 = s1. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = l4. s1 = l9. s2 = 62. PERFORM f991 USING s0 s1 s2. s0 = l4. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 8 ).
            s1 = 0.
            IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
            s0 = l4. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). l10 = s0. s1 = l3. s1 = zcl_wasm_rt=>extend_u32( s1 ). s2 = 255. s1 = zcl_wasm_rt=>and64( iv_a = s1 iv_b = s2 ). s0 = s0 + s1. l9 = s0. s1 = l10.
            IF zcl_wasm_rt=>ge_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. EXIT. ENDIF. " br_if 0
          ENDDO.
          lv_br = 2. EXIT. " br 2
        ENDDO.
        s0 = 1. l3 = s0. s0 = p1. s1 = l2. s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = l9. s1 = 1. s0 = s0 + s1. l9 = s0. s1 = 0.
        IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = p0. s1 = l9. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 8 CHANGING cv_mem = mv_mem ). s0 = 0. l3 = s0. lv_br = 3. EXIT. " br 3
        ELSE.
        ENDIF.
        s0 = p0. s1 = 0. mem_st_i32_8( iv_addr = s0 + 1 iv_val = s1 ). lv_br = 2. EXIT. " br 2
      ENDDO.
      s0 = p0. s1 = 0. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 8 CHANGING cv_mem = mv_mem ). s0 = p1. s1 = l2. s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). lv_br = 1. EXIT. " br 1
    ENDDO.
    s0 = p0. s1 = 0. mem_st_i32_8( iv_addr = s0 + 1 iv_val = s1 ). s0 = 1. l3 = s0.
  ENDDO.
  s0 = p0. s1 = l3. mem_st_i32_8( iv_addr = s0 iv_val = s1 ). s0 = l4. s1 = 16. s0 = s0 + s1. gv_g0 = s0.
ENDFORM.

FORM f586 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i.
  DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      s0 = p0. s0 = mem_ld_i32( s0 + 32 ). s1 = -125.
      IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p0. s1 = 56. s0 = s0 + s1. s0 = mem_ld_i32( s0 ).
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p0. s1 = 48. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). l2 = s0. s0 = p0. s0 = mem_ld_i32( s0 + 80 ). l4 = s0. s0 = mem_ld_i32_8u( s0 + 110 ). s1 = 1. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = l2. s1 = 60. s0 = s0 - s1.
      CASE s0.
        WHEN 0. EXIT.
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
        WHEN 19. EXIT.
        WHEN OTHERS. lv_br = 1. EXIT.
      ENDCASE.
    ENDDO.
    s0 = p0. s1 = 1137304. s2 = 0. PERFORM f881 USING s0 s1 s2. s0 = 0. rv = s0. RETURN.
  ENDDO.
  s0 = l2. s1 = 228.
  IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = p0. s0 = mem_ld_i32( s0 ). s0 = mem_ld_i32( s0 + 16 ). s0 = mem_ld_i32( s0 + 56 ). s1 = l2. s2 = 2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s0 = mem_ld_i32( s0 ). l3 = s0. s1 = l3. s1 = mem_ld_i32( s1 ).
    s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
  ELSE.
  ENDIF.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        s0 = p1.
        IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        DO 1 TIMES. " block
          s0 = l4. s0 = mem_ld_i32( s0 + 136 ). l3 = s0. s1 = 0.
          IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0.
            s0 = l4. s0 = mem_ld_i32( s0 + 128 ). p1 = s0.
            DO. " loop
              s0 = p1. s0 = mem_ld_i32( s0 ). s1 = l2.
              IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
              s0 = p1. s1 = 16. s0 = s0 + s1. p1 = s0. s0 = l3. s1 = 1. s0 = s0 - s1. l3 = s0.
              IF s0 <> 0. EXIT. ENDIF. " br_if 0
            ENDDO.
          ELSE.
          ENDIF.
          s0 = l4. s0 = mem_ld_i32( s0 + 124 ). l3 = s0. s1 = 0.
          IF s0 <= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          s0 = l4. s0 = mem_ld_i32( s0 + 116 ). p1 = s0.
          DO. " loop
            s0 = p1. s0 = mem_ld_i32( s0 ). s1 = l2.
            IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
            s0 = p1. s1 = 16. s0 = s0 + s1. p1 = s0. s0 = l3. s1 = 1. s0 = s0 - s1. l3 = s0.
            IF s0 <> 0. EXIT. ENDIF. " br_if 0
          ENDDO.
          lv_br = 1. EXIT. " br 1
        ENDDO.
        s0 = 0. p1 = s0. s0 = p0. s1 = 1135938. s2 = 0. PERFORM f881 USING s0 s1 s2. s0 = l2. s1 = 228.
        IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        lv_br = 2. EXIT. " br 2
      ENDDO.
      s0 = 0. s1 = l2. s2 = p0. PERFORM f41 USING s2 CHANGING s2. l3 = s2.
      IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
      p1 = s0. s0 = l2. s1 = 228.
      IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = l3.
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
    ENDDO.
    s0 = p0. s0 = mem_ld_i32( s0 ). s0 = mem_ld_i32( s0 + 16 ). l3 = s0. s0 = mem_ld_i32( s0 + 56 ). s1 = l2. s2 = 2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s0 = mem_ld_i32( s0 ). p0 = s0. s1 = p0.
    s1 = mem_ld_i32( s1 ). l2 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = 0. p1 = s0. s0 = l2. s1 = 1.
    IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l3. s1 = p0. PERFORM f713 USING s0 s1.
  ENDDO.
  s0 = p1. rv = s0.
ENDFORM.

FORM f587 USING p0 TYPE i p1 TYPE i p2 TYPE i.
  DATA l3 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i.
  DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i.
  DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i. DATA s36 TYPE i. DATA s37 TYPE i. DATA s38 TYPE i. DATA s39 TYPE i. DATA s40 TYPE i.
  DATA s41 TYPE i. DATA s42 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l3 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      s0 = p2. s1 = 3.
      IF s0 <= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
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
                            s0 = p1. s1 = 34. s0 = s0 - s1.
                            CASE s0.
                              WHEN 0. lv_br = 9. EXIT.
                              WHEN 1. lv_br = 11. EXIT.
                              WHEN 2. lv_br = 11. EXIT.
                              WHEN 3. lv_br = 11. EXIT.
                              WHEN 4. lv_br = 11. EXIT.
                              WHEN 5. lv_br = 11. EXIT.
                              WHEN 6. lv_br = 11. EXIT.
                              WHEN 7. lv_br = 11. EXIT.
                              WHEN 8. lv_br = 11. EXIT.
                              WHEN 9. lv_br = 11. EXIT.
                              WHEN 10. lv_br = 11. EXIT.
                              WHEN 11. lv_br = 11. EXIT.
                              WHEN 12. lv_br = 11. EXIT.
                              WHEN 13. lv_br = 11. EXIT.
                              WHEN 14. lv_br = 11. EXIT.
                              WHEN 15. lv_br = 11. EXIT.
                              WHEN 16. lv_br = 11. EXIT.
                              WHEN 17. lv_br = 11. EXIT.
                              WHEN 18. lv_br = 11. EXIT.
                              WHEN 19. lv_br = 11. EXIT.
                              WHEN 20. lv_br = 11. EXIT.
                              WHEN 21. lv_br = 11. EXIT.
                              WHEN 22. lv_br = 11. EXIT.
                              WHEN 23. lv_br = 11. EXIT.
                              WHEN 24. lv_br = 11. EXIT.
                              WHEN 25. lv_br = 11. EXIT.
                              WHEN 26. lv_br = 11. EXIT.
                              WHEN 27. lv_br = 11. EXIT.
                              WHEN 28. lv_br = 11. EXIT.
                              WHEN 29. lv_br = 11. EXIT.
                              WHEN 30. lv_br = 11. EXIT.
                              WHEN 31. lv_br = 11. EXIT.
                              WHEN 32. lv_br = 11. EXIT.
                              WHEN 33. lv_br = 11. EXIT.
                              WHEN 34. lv_br = 11. EXIT.
                              WHEN 35. lv_br = 11. EXIT.
                              WHEN 36. lv_br = 11. EXIT.
                              WHEN 37. lv_br = 11. EXIT.
                              WHEN 38. lv_br = 11. EXIT.
                              WHEN 39. lv_br = 11. EXIT.
                              WHEN 40. lv_br = 11. EXIT.
                              WHEN 41. lv_br = 11. EXIT.
                              WHEN 42. lv_br = 11. EXIT.
                              WHEN 43. lv_br = 11. EXIT.
                              WHEN 44. lv_br = 11. EXIT.
                              WHEN 45. lv_br = 11. EXIT.
                              WHEN 46. lv_br = 11. EXIT.
                              WHEN 47. lv_br = 11. EXIT.
                              WHEN 48. lv_br = 11. EXIT.
                              WHEN 49. lv_br = 11. EXIT.
                              WHEN 50. lv_br = 11. EXIT.
                              WHEN 51. lv_br = 11. EXIT.
                              WHEN 52. lv_br = 11. EXIT.
                              WHEN 53. lv_br = 11. EXIT.
                              WHEN 54. EXIT.
                              WHEN 55. lv_br = 1. EXIT.
                              WHEN 56. lv_br = 2. EXIT.
                              WHEN 57. lv_br = 3. EXIT.
                              WHEN 58. lv_br = 4. EXIT.
                              WHEN 59. lv_br = 5. EXIT.
                              WHEN 60. lv_br = 6. EXIT.
                              WHEN 61. lv_br = 7. EXIT.
                              WHEN 62. lv_br = 8. EXIT.
                              WHEN OTHERS. lv_br = 11. EXIT.
                            ENDCASE.
                          ENDDO.
                          s0 = p0. s1 = p2. s2 = 57. s1 = s1 - s2. s2 = 255. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). PERFORM f908 USING s0 s1. lv_br = 11. EXIT. " br 11
                        ENDDO.
                        s0 = p0. s1 = p2. s2 = 53. s1 = s1 - s2. s2 = 255. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). PERFORM f908 USING s0 s1. lv_br = 10. EXIT. " br 10
                      ENDDO.
                      s0 = p0. s1 = p2. s2 = 49. s1 = s1 - s2. s2 = 255. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). PERFORM f908 USING s0 s1. lv_br = 9. EXIT. " br 9
                    ENDDO.
                    s0 = p0. s1 = p2. s2 = 45. s1 = s1 - s2. s2 = 255. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). PERFORM f908 USING s0 s1. lv_br = 8. EXIT. " br 8
                  ENDDO.
                  s0 = p0. s1 = p2. s2 = 41. s1 = s1 - s2. s2 = 255. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). PERFORM f908 USING s0 s1. lv_br = 7. EXIT. " br 7
                ENDDO.
                s0 = p0. s1 = p2. s2 = 37. s1 = s1 - s2. s2 = 255. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). PERFORM f908 USING s0 s1. lv_br = 6. EXIT. " br 6
              ENDDO.
              s0 = p0. s1 = p2. s2 = 33. s1 = s1 - s2. s2 = 255. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). PERFORM f908 USING s0 s1. lv_br = 5. EXIT. " br 5
            ENDDO.
            s0 = p0. s1 = p2. s2 = 29. s1 = s1 - s2. s2 = 255. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). PERFORM f908 USING s0 s1. lv_br = 4. EXIT. " br 4
          ENDDO.
          s0 = p0. s1 = p2. s2 = 25. s1 = s1 - s2. s2 = 255. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). PERFORM f908 USING s0 s1. lv_br = 3. EXIT. " br 3
        ENDDO.
        s0 = p0. s1 = p2. s2 = 16. s1 = s1 - s2. s2 = 255. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). PERFORM f908 USING s0 s1. lv_br = 2. EXIT. " br 2
      ELSE.
      ENDIF.
      s0 = p2. s1 = 255.
      IF zcl_wasm_rt=>gt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          DO 1 TIMES. " block
            s0 = p1. s1 = 88. s0 = s0 - s1.
            CASE s0.
              WHEN 0. EXIT.
              WHEN 1. lv_br = 1. EXIT.
              WHEN 2. lv_br = 2. EXIT.
              WHEN OTHERS. lv_br = 3. EXIT.
            ENDCASE.
          ENDDO.
          s0 = p0. s1 = 196. PERFORM f908 USING s0 s1. s0 = p0. s1 = p2. s2 = 255. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). PERFORM f908 USING s0 s1. lv_br = 3. EXIT. " br 3
        ENDDO.
        s0 = p0. s1 = 197. PERFORM f908 USING s0 s1. s0 = p0. s1 = p2. s2 = 255. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). PERFORM f908 USING s0 s1. lv_br = 2. EXIT. " br 2
      ENDDO.
      s0 = p0. s1 = 198. PERFORM f908 USING s0 s1. s0 = p0. s1 = p2. s2 = 255. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). PERFORM f908 USING s0 s1. lv_br = 1. EXIT. " br 1
    ENDDO.
    s0 = p0. s1 = p1. s2 = 255. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). PERFORM f908 USING s0 s1. s0 = l3. s1 = p2. mem_st_i32_16( iv_addr = s0 + 14 iv_val = s1 ). s0 = p0. s1 = l3. s2 = 14. s1 = s1 + s2. s2 = 2.
    PERFORM f1097 USING s0 s1 s2.
  ENDDO.
  s0 = l3. s1 = 16. s0 = s0 + s1. gv_g0 = s0.
ENDFORM.

FORM f588 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE int8. DATA l7 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i.
  DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA lv_br TYPE i. s0 = p0. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 4 ). l7 = s0. s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = 2147483647.
  s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). l4 = s0. s1 = p1. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 4 ). l6 = s1. s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = 2147483647.
  s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). l5 = s1. s2 = l4. s3 = l5.
  IF s2 < s3. s2 = 1. ELSE. s2 = 0. ENDIF.
  IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
  l2 = s0. s0 = l6. s1 = 2147483648. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). l6 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        s0 = l7. s1 = 2147483648. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ).
        IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = l6.
          IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0.
            s0 = p0. s1 = 16. s0 = s0 + s1. s1 = p1. s2 = 16. s1 = s1 + s2. s2 = l2. PERFORM f1116 USING s0 s1 s2 CHANGING s0. p1 = s0. lv_br = 2. EXIT. " br 2
          ELSE.
          ENDIF.
          DO 1 TIMES. " block
            s0 = l2.
            IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. EXIT. ENDIF. " br_if 0
            s0 = p0. s1 = 16. s0 = s0 + s1. p0 = s0. s0 = p1. s1 = 16. s0 = s0 + s1. p1 = s0.
            DO. " loop
              s0 = p1. s0 = mem_ld_i32_16u( s0 ). s1 = p0. s1 = mem_ld_i32_8u( s1 ). s0 = s0 - s1. l3 = s0.
              IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
              s0 = p1. s1 = 2. s0 = s0 + s1. p1 = s0. s0 = p0. s1 = 1. s0 = s0 + s1. p0 = s0. s0 = l2. s1 = 1. s0 = s0 - s1. l2 = s0.
              IF s0 <> 0. EXIT. ENDIF. " br_if 0
            ENDDO.
            s0 = 0. l3 = s0.
          ENDDO.
          s0 = 0. s1 = l3. s0 = s0 - s1. p1 = s0. lv_br = 1. EXIT. " br 1
        ELSE.
        ENDIF.
        s0 = p1. s1 = 16. s0 = s0 + s1. l3 = s0. s0 = p0. s1 = 16. s0 = s0 + s1. p0 = s0. s0 = l6.
        IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = l2.
          IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
          DO. " loop
            s0 = p0. s0 = mem_ld_i32_16u( s0 ). s1 = l3. s1 = mem_ld_i32_8u( s1 ). s0 = s0 - s1. p1 = s0.
            IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
            s0 = p0. s1 = 2. s0 = s0 + s1. p0 = s0. s0 = l3. s1 = 1. s0 = s0 + s1. l3 = s0. s0 = l2. s1 = 1. s0 = s0 - s1. l2 = s0.
            IF s0 <> 0. EXIT. ENDIF. " br_if 0
          ENDDO.
          lv_br = 2. EXIT. " br 2
        ELSE.
        ENDIF.
        s0 = l2.
        IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        DO. " loop
          s0 = p0. s0 = mem_ld_i32_16u( s0 ). s1 = l3. s1 = mem_ld_i32_16u( s1 ). s0 = s0 - s1. p1 = s0.
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          s0 = p0. s1 = 2. s0 = s0 + s1. p0 = s0. s0 = l3. s1 = 2. s0 = s0 + s1. l3 = s0. s0 = l2. s1 = 1. s0 = s0 - s1. l2 = s0.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
        ENDDO.
        lv_br = 1. EXIT. " br 1
      ENDDO.
      s0 = p1.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
    ENDDO.
    s0 = 0. p1 = s0. s0 = l4. s1 = l5.
    IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = -1. s1 = 1. s2 = l4. s3 = l5.
    IF zcl_wasm_rt=>lt_u32( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
    IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
    p1 = s0.
  ENDDO.
  s0 = p1. rv = s0.
ENDFORM.

FORM f589 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i CHANGING rv TYPE int8.
  DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE int8. DATA l7 TYPE int8. DATA l8 TYPE int8. DATA l9 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i.
  DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i.
  DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i.
  DATA s36 TYPE i. DATA s37 TYPE i. DATA s38 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l5 = s0. gv_g0 = s0. s0 = 25769803776. l7 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        s0 = p1. s1 = -4294967296.
        IF zcl_wasm_rt=>lt_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). s0 = mem_ld_i32_8u( s0 + 5 ). s1 = 16. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
        IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = l5. s1 = p2. s1 = zcl_wasm_rt=>extend_u32( s1 ). zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 8 CHANGING cv_mem = mv_mem ). s0 = p0. s1 = p1. s2 = p1. s3 = 1. s4 = l5. s5 = 8. s4 = s4 + s5. s5 = 2.
        PERFORM f557 USING s0 s1 s2 s3 s4 s5 CHANGING s0. lv_br = 1. EXIT. " br 1
      ENDDO.
      s1 = p0. s1 = mem_ld_i32( s1 + 36 ). l4 = s1. s2 = l4. s2 = mem_ld_i32( s2 ). s3 = 1. s2 = s2 + s3. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = p0. s2 = l4. s3 = 2. PERFORM f408 USING s1 s2 s3 CHANGING s1.
    ENDDO.
    l6 = s1. s2 = -4294967296. s1 = zcl_wasm_rt=>and64( iv_a = s1 iv_b = s2 ). s2 = 25769803776.
    IF s1 = s2. s1 = 1. ELSE. s1 = 0. ENDIF.
    IF s1 <> 0. EXIT. ENDIF. " br_if 0
    DO 1 TIMES. " block
      s1 = p2. s2 = 0.
      IF s1 > s2. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0.
        s1 = p2. s1 = zcl_wasm_rt=>extend_u32( s1 ). l9 = s1. s1 = 0. p1 = s1.
        DO. " loop
          s1 = p3. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 0 ). l8 = s1. s2 = 32. s1 = zcl_wasm_rt=>shr_u64( iv_val = s1 iv_shift = s2 ). s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = -11.
          IF zcl_wasm_rt=>ge_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
          IF s1 <> 0.
            s1 = l8. s1 = zcl_wasm_rt=>wrap_i64( s1 ). l4 = s1. s2 = l4. s2 = mem_ld_i32( s2 ). s3 = 1. s2 = s2 + s3. mem_st_i32( iv_addr = s1 iv_val = s2 ).
          ELSE.
          ENDIF.
          s1 = p0. s2 = l6. s3 = p1. s4 = l8. s5 = 16391. PERFORM f770 USING s1 s2 s3 s4 s5 CHANGING s1. s2 = 0.
          IF s1 < s2. s1 = 1. ELSE. s1 = 0. ENDIF.
          IF s1 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
          s1 = p3. s2 = 8. s1 = s1 + s2. p3 = s1. s1 = l9. s2 = p1. s3 = 1. s2 = s2 + s3. p1 = s2.
          IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
          IF s1 <> 0. EXIT. ENDIF. " br_if 0
        ENDDO.
      ELSE.
      ENDIF.
      s1 = p0. s2 = l6. s3 = 48. s4 = p2. s5 = 0.
      IF s4 >= s5. s4 = 1. ELSE. s4 = 0. ENDIF.
      IF s4 <> 0.
        s4 = p2. s4 = zcl_wasm_rt=>extend_u32( s4 ).
      ELSE.
        s5 = -51539607552. s6 = p2. s6 = zcl_wasm_rt=>extend_u32( s6 ). " f64.convert_i32_u s6 = zcl_wasm_rt=>reinterpret_f64_i64( s6 ). p1 = s6. s7 = 9221120288580698112. s6 = s6 - s7. s7 = p1. s8 = 9223372036854775807.
        s7 = zcl_wasm_rt=>and64( iv_a = s7 iv_b = s8 ). s8 = 9218868437227405312.
        IF zcl_wasm_rt=>gt_u64( iv_a = s7 iv_b = s8 ) = abap_true. s7 = 1. ELSE. s7 = 0. ENDIF.
        IF s7 <> 0. s5 = s5. ELSE. s5 = s6. ENDIF.
      ENDIF.
      s6 = l6. s7 = 16384. PERFORM f89 USING s2 s3 s4 s5 s6 s7 CHANGING s2. s3 = 0.
      IF s2 < s3. s2 = 1. ELSE. s2 = 0. ENDIF.
      IF s2 <> 0. EXIT. ENDIF. " br_if 0
      s2 = l6. l7 = s2. lv_br = 1. EXIT. " br 1
    ENDDO.
    s2 = l6. s3 = 32. s2 = zcl_wasm_rt=>shr_u64( iv_val = s2 iv_shift = s3 ). s2 = zcl_wasm_rt=>wrap_i64( s2 ). s3 = -11.
    IF zcl_wasm_rt=>lt_u32( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
    IF s2 <> 0. EXIT. ENDIF. " br_if 0
    s2 = l6. s2 = zcl_wasm_rt=>wrap_i64( s2 ). p2 = s2. s3 = p2. s3 = mem_ld_i32( s3 ). p2 = s3. s4 = 1. s3 = s3 - s4. mem_st_i32( iv_addr = s2 iv_val = s3 ). s2 = p2. s3 = 1.
    IF s2 > s3. s2 = 1. ELSE. s2 = 0. ENDIF.
    IF s2 <> 0. EXIT. ENDIF. " br_if 0
    s2 = p0. s2 = mem_ld_i32( s2 + 16 ). s3 = l6. PERFORM f453 USING s2 s3.
  ENDDO.
  s2 = l5. s3 = 16. s2 = s2 + s3. gv_g0 = s2. s2 = l7. rv = s2.
ENDFORM.

FORM f590 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i p4 TYPE i CHANGING rv TYPE int8.
  DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE i. DATA l8 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i.
  DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i.
  DATA s24 TYPE i. DATA lv_br TYPE i. s0 = p1. s1 = -8589934592. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 8589934592.
  IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = p0. s1 = 1142123. s2 = 0. PERFORM f970 USING s0 s1 s2 CHANGING s0. s0 = 25769803776. rv = s0. RETURN.
  ELSE.
  ENDIF.
  s0 = p0. s1 = p1. s2 = 0. PERFORM f341 USING s0 s1 s2 CHANGING s0. p1 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 25769803776.
  IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = p1. rv = s0. RETURN.
  ELSE.
  ENDIF.
  s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l5 = s0. s0 = mem_ld_i32( s0 + 4 ). s1 = 2147483647. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). p2 = s0.
  DO 1 TIMES. " block
    s0 = p4. s1 = 1. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p2.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l5. s1 = 7. s0 = s0 + s1. l8 = s0. s0 = l5. s1 = 16. s0 = s0 + s1. l7 = s0. p3 = s0.
    DO. " loop
      DO 1 TIMES. " block
        s0 = l8. s0 = mem_ld_i32_8u( s0 ). s1 = 128. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
        IF s0 <> 0.
          s0 = p3. s0 = mem_ld_i32_16u( s0 ). lv_br = 1. EXIT. " br 1
        ELSE.
        ENDIF.
        s1 = l6. s2 = l7. s1 = s1 + s2. s1 = mem_ld_i32_8u( s1 ).
      ENDDO.
      PERFORM f822 USING s1 CHANGING s1.
      IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s1 = p3. s2 = 2. s1 = s1 + s2. p3 = s1. s1 = p2. s2 = l6. s3 = 1. s2 = s2 + s3. l6 = s2.
      IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. EXIT. ENDIF. " br_if 0
    ENDDO.
    s1 = p2. l6 = s1.
  ENDDO.
  DO 1 TIMES. " block
    s1 = p4. s2 = 2. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ).
    IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
    IF s1 <> 0.
      s1 = p2. p3 = s1. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s1 = p2. s2 = 1. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s2 = 14. s1 = s1 + s2. l7 = s1. s1 = l5. s2 = 7. s1 = s1 + s2. l8 = s1.
    DO. " loop
      s1 = p2. p3 = s1. s2 = l6.
      IF s1 <= s2. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      DO 1 TIMES. " block
        s1 = l8. s1 = mem_ld_i32_8u( s1 ). s2 = 128. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ).
        IF s1 <> 0.
          s1 = l5. s2 = l7. s1 = s1 + s2. s1 = mem_ld_i32_16u( s1 ). lv_br = 1. EXIT. " br 1
        ELSE.
        ENDIF.
        s2 = p3. s3 = l5. s2 = s2 + s3. s3 = 15. s2 = s2 + s3. s2 = mem_ld_i32_8u( s2 ).
      ENDDO.
      s3 = p3. s4 = 1. s3 = s3 - s4. p2 = s3. s3 = l7. s4 = 2. s3 = s3 - s4. l7 = s3. PERFORM f822 USING s2 CHANGING s2.
      IF s2 <> 0. EXIT. ENDIF. " br_if 0
    ENDDO.
  ENDDO.
  s2 = p0. s3 = l5. s4 = l6. s5 = p3. PERFORM f241 USING s2 s3 s4 s5 CHANGING s2.
  DO 1 TIMES. " block
    s3 = p1. s4 = 32. s3 = zcl_wasm_rt=>shr_u64( iv_val = s3 iv_shift = s4 ). s3 = zcl_wasm_rt=>wrap_i64( s3 ). s4 = -11.
    IF zcl_wasm_rt=>lt_u32( iv_a = s3 iv_b = s4 ) = abap_true. s3 = 1. ELSE. s3 = 0. ENDIF.
    IF s3 <> 0. EXIT. ENDIF. " br_if 0
    s3 = l5. s4 = l5. s4 = mem_ld_i32( s4 ). p2 = s4. s5 = 1. s4 = s4 - s5. mem_st_i32( iv_addr = s3 iv_val = s4 ). s3 = p2. s4 = 1.
    IF s3 > s4. s3 = 1. ELSE. s3 = 0. ENDIF.
    IF s3 <> 0. EXIT. ENDIF. " br_if 0
    s3 = p0. s3 = mem_ld_i32( s3 + 16 ). s4 = p1. PERFORM f453 USING s3 s4.
  ENDDO.
  rv = s2.
ENDFORM.

FORM f591 USING p0 TYPE i p1 TYPE int8 p2 TYPE int8 p3 TYPE i p4 TYPE i p5 TYPE i CHANGING rv TYPE int8.
  DATA l6 TYPE i. DATA l7 TYPE i. DATA l8 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i.
  DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i.
  DATA lv_br TYPE i. s0 = gv_g0. p5 = s0.
  DO 1 TIMES. " block
    s1 = p1. s2 = -4294967296.
    IF zcl_wasm_rt=>lt_u64( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
    IF s1 <> 0. EXIT. ENDIF. " br_if 0
    s1 = p1. s1 = zcl_wasm_rt=>wrap_i64( s1 ). l6 = s1. s1 = mem_ld_i32_16u( s1 + 6 ). s2 = 15.
    IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
    IF s1 <> 0. EXIT. ENDIF. " br_if 0
    s1 = l6. s1 = mem_ld_i32( s1 + 32 ). l7 = s1.
  ENDDO.
  s1 = p0. s2 = p2. s3 = p3. s4 = p3. s5 = l7. s5 = mem_ld_i32_8u( s5 + 4 ). l8 = s5.
  IF s4 < s5. s4 = 1. ELSE. s4 = 0. ENDIF.
  IF s4 <> 0.
    s4 = p5. s5 = l8. s6 = 3. s5 = zcl_wasm_rt=>shl32( iv_val = s5 iv_shift = s6 ). s6 = 15. s5 = s5 + s6. s6 = 4080. s5 = zcl_wasm_rt=>and32( iv_a = s5 iv_b = s6 ). s4 = s4 - s5. l6 = s4. gv_g0 = s4. s4 = p3. s5 = 0.
    IF s4 > s5. s4 = 1. ELSE. s4 = 0. ENDIF.
    IF s4 <> 0.
      s4 = l6. s5 = p4. s6 = p3. s7 = 3. s6 = zcl_wasm_rt=>shl32( iv_val = s6 iv_shift = s7 ). PERFORM f216 USING s4 s5 s6 CHANGING s4.
    ELSE.
    ENDIF.
    s4 = p3. p5 = s4. s4 = l8. s5 = p3. s4 = s4 - s5. s5 = 7. s4 = zcl_wasm_rt=>and32( iv_a = s4 iv_b = s5 ). p0 = s4.
    IF s4 <> 0.
      s4 = l6. s5 = p3. s6 = 3. s5 = zcl_wasm_rt=>shl32( iv_val = s5 iv_shift = s6 ). s4 = s4 + s5. p4 = s4.
      DO. " loop
        s4 = p4. s5 = 12884901888. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s5 iv_addr = s4 + 0 CHANGING cv_mem = mv_mem ). s4 = p4. s5 = 8. s4 = s4 + s5. p4 = s4. s4 = p5. s5 = 1. s4 = s4 + s5. p5 = s4. s4 = p0. s5 = 1. s4 = s4 - s5.
        p0 = s4.
        IF s4 <> 0. EXIT. ENDIF. " br_if 0
      ENDDO.
    ELSE.
    ENDIF.
    s4 = p3. s5 = -1. s4 = zcl_wasm_rt=>xor32( iv_a = s4 iv_b = s5 ). s5 = l8. s4 = s4 + s5. s5 = 7.
    IF zcl_wasm_rt=>ge_u32( iv_a = s4 iv_b = s5 ) = abap_true. s4 = 1. ELSE. s4 = 0. ENDIF.
    IF s4 <> 0.
      s4 = p5. s5 = 3. s4 = zcl_wasm_rt=>shl32( iv_val = s4 iv_shift = s5 ). p0 = s4. s4 = l8. s5 = p5. s4 = s4 - s5. p5 = s4.
      DO. " loop
        s4 = p0. s5 = l6. s4 = s4 + s5. p4 = s4. s5 = 12884901888. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s5 iv_addr = s4 + 0 CHANGING cv_mem = mv_mem ). s4 = p4. s5 = 56. s4 = s4 + s5. s5 = 12884901888.
        zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s5 iv_addr = s4 + 0 CHANGING cv_mem = mv_mem ). s4 = p4. s5 = 48. s4 = s4 + s5. s5 = 12884901888.
        zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s5 iv_addr = s4 + 0 CHANGING cv_mem = mv_mem ). s4 = p4. s5 = 40. s4 = s4 + s5. s5 = 12884901888.
        zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s5 iv_addr = s4 + 0 CHANGING cv_mem = mv_mem ). s4 = p4. s5 = 32. s4 = s4 + s5. s5 = 12884901888.
        zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s5 iv_addr = s4 + 0 CHANGING cv_mem = mv_mem ). s4 = p4. s5 = 24. s4 = s4 + s5. s5 = 12884901888.
        zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s5 iv_addr = s4 + 0 CHANGING cv_mem = mv_mem ). s4 = p4. s5 = 16. s4 = s4 + s5. s5 = 12884901888.
        zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s5 iv_addr = s4 + 0 CHANGING cv_mem = mv_mem ). s4 = p4. s5 = 8. s4 = s4 + s5. s5 = 12884901888. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s5 iv_addr = s4 + 0 CHANGING cv_mem = mv_mem ).
        s4 = p0. s5 = -64. s4 = s4 - s5. p0 = s4. s4 = p5. s5 = 8. s4 = s4 - s5. p5 = s4.
        IF s4 <> 0. EXIT. ENDIF. " br_if 0
      ENDDO.
    ELSE.
    ENDIF.
    s4 = l6.
  ELSE.
    s5 = p4.
  ENDIF.
  s6 = l7. s6 = mem_ld_i32_16u( s6 + 6 ). s7 = l7. s8 = 8. s7 = s7 + s8. s8 = l7. s8 = mem_ld_i32( s8 ).
  DATA(lv_ci_func) = mt_tab0[ s8 + 1 ]. " call_indirect
  s2 = dispatch_t60( iv_idx = lv_ci_func p0 = s2 p1 = s3 p2 = s4 p3 = s5 p4 = s6 p5 = s7 ). p1 = s2. gv_g0 = s1. s1 = p1. rv = s1.
ENDFORM.

FORM f592 USING p0 TYPE i p1 TYPE int8 p2 TYPE int8 CHANGING rv TYPE int8.
  DATA l3 TYPE i. DATA l4 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i.
  DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i.
  DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i. DATA s36 TYPE i. DATA s37 TYPE i. DATA s38 TYPE i. DATA s39 TYPE i.
  DATA s40 TYPE i. DATA s41 TYPE i. DATA s42 TYPE i. DATA s43 TYPE i. DATA s44 TYPE i. DATA s45 TYPE i. DATA s46 TYPE i. DATA s47 TYPE i. DATA s48 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        s0 = p1. s1 = -4294967297.
        IF zcl_wasm_rt=>le_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = p0. s1 = 1137529. s2 = 0. PERFORM f970 USING s0 s1 s2 CHANGING s0. lv_br = 1. EXIT. " br 1
        ELSE.
        ENDIF.
        s0 = p0. s1 = p1. s2 = 62. s3 = p1. s4 = 0. PERFORM f192 USING s0 s1 s2 s3 s4 CHANGING s0. p1 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). l4 = s0. s1 = 25769803776.
        IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = p1. rv = s0. RETURN.
        ELSE.
        ENDIF.
        s0 = l4. s1 = 12884901888.
        IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = p2. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
          IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
          lv_br = 3. EXIT. " br 3
        ELSE.
        ENDIF.
        s0 = p1. s1 = -4294967297.
        IF zcl_wasm_rt=>le_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          DO 1 TIMES. " block
            s0 = p1. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
            IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. EXIT. ENDIF. " br_if 0
            s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l3 = s0. s1 = l3. s1 = mem_ld_i32( s1 ). l3 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l3. s1 = 1.
            IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. EXIT. ENDIF. " br_if 0
            s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = p1. PERFORM f453 USING s0 s1.
          ENDDO.
          s0 = p0. s1 = 1137529. s2 = 0. PERFORM f970 USING s0 s1 s2 CHANGING s0. lv_br = 1. EXIT. " br 1
        ELSE.
        ENDIF.
        s0 = p0. s1 = p1. s2 = 224. s3 = p1. s4 = 0. PERFORM f192 USING s0 s1 s2 s3 s4 CHANGING s0. l4 = s0. s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l3 = s0. s1 = l3. s1 = mem_ld_i32( s1 ). l3 = s1. s2 = 1. s1 = s1 - s2.
        mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l3. s1 = 1.
        IF s0 <= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = p1. PERFORM f453 USING s0 s1.
        ELSE.
        ENDIF.
        DO 1 TIMES. " block
          s0 = l4. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). p1 = s0. s1 = 8589934592.
          IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0.
            s0 = p1. s1 = 25769803776.
            IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0.
              s0 = l4. rv = s0. RETURN.
            ELSE.
            ENDIF.
            s0 = p1. s1 = 12884901888.
            IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          ELSE.
          ENDIF.
          s0 = p2. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
          IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
          lv_br = 3. EXIT. " br 3
        ENDDO.
        DO 1 TIMES. " block
          s0 = l4. s1 = -4294967296.
          IF zcl_wasm_rt=>lt_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = l4. s0 = zcl_wasm_rt=>wrap_i64( s0 ). s0 = mem_ld_i32_8u( s0 + 5 ). s1 = 16. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
          IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = l4. rv = s0. RETURN.
        ENDDO.
        s0 = p0. s1 = l4. PERFORM f1164 USING s0 s1. s0 = p0. s1 = 1139376. s2 = 0. PERFORM f970 USING s0 s1 s2 CHANGING s0.
      ENDDO.
      s0 = 25769803776. p2 = s0.
    ENDDO.
    s0 = p2. rv = s0. RETURN.
  ENDDO.
  s0 = p2. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p0 = s0. s1 = p0. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p2. rv = s0.
ENDFORM.

FORM f593 USING p0 TYPE i p1 TYPE i p2 TYPE i CHANGING rv TYPE int8.
  DATA l3 TYPE i. DATA l4 TYPE int8. DATA l5 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i.
  DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i.
  DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i. DATA s36 TYPE i. DATA lv_br TYPE i. s0 = gv_g0.
  s1 = 32. s0 = s0 - s1. l3 = s0. gv_g0 = s0. s0 = p1. s1 = 3.
  IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = p2. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 16 ). l5 = s0. s0 = p2. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 8 ). l4 = s0.
    DO 1 TIMES. " block
      s0 = p0. s1 = l3. s2 = 16. s1 = s1 + s2. s2 = p2. s2 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s2 + 0 ). PERFORM f204 USING s0 s1 s2 CHANGING s0. s1 = 0.
      IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = 25769803776. l5 = s0. lv_br = 1. EXIT. " br 1
      ELSE.
      ENDIF.
      DO 1 TIMES. " block
        s0 = p0. s1 = l5. s2 = l4. s3 = 12884901888. s4 = 2. s5 = l3. s6 = 16. s5 = s5 + s6. s6 = 2. PERFORM f0 USING s0 s1 s2 s3 s4 s5 s6 CHANGING s0. l5 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ).
        s1 = 25769803776.
        IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = p0. s0 = mem_ld_i32( s0 + 16 ). p1 = s0. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 128 ). l5 = s0. s0 = p1. s1 = 8589934592.
        zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 128 CHANGING cv_mem = mv_mem ). s0 = l3. s1 = l5. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 8 CHANGING cv_mem = mv_mem ). s0 = p0. s1 = l3.
        s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 24 ). s2 = 12884901888. s3 = 12884901888. s4 = 1. s5 = l3. s6 = 8. s5 = s5 + s6. s6 = 2. PERFORM f0 USING s0 s1 s2 s3 s4 s5 s6 CHANGING s0. l5 = s0. s0 = l3.
        s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 8 ). l4 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
        IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = l4. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p1 = s0. s1 = p1. s1 = mem_ld_i32( s1 ). p1 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p1. s1 = 1.
        IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = l4. PERFORM f453 USING s0 s1.
      ENDDO.
      DO 1 TIMES. " block
        s0 = l3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 16 ). l4 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
        IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = l4. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p1 = s0. s1 = p1. s1 = mem_ld_i32( s1 ). p1 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p1. s1 = 1.
        IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = l4. PERFORM f453 USING s0 s1.
      ENDDO.
      s0 = l3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 24 ). l4 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
      IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = l4. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p1 = s0. s1 = p1. s1 = mem_ld_i32( s1 ). p1 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p1. s1 = 1.
      IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = l4. PERFORM f453 USING s0 s1.
    ENDDO.
    s0 = l3. s1 = 32. s0 = s0 + s1. gv_g0 = s0. s0 = l5. rv = s0. RETURN.
  ELSE.
  ENDIF.
  s0 = 1151482. s1 = 1148333. s2 = 48294. s3 = 1148785. PERFORM f1101 USING s0 s1 s2 s3.
  RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
ENDFORM.

FORM f594 USING p0 TYPE i.
  DATA l1 TYPE i. DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i.
  DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    s0 = p0. s0 = mem_ld_i32_8u( s0 ). l1 = s0. s1 = 19.
    IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l1. s1 = 18.
    IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p0. s0 = mem_ld_i32( s0 + 8 ). l3 = s0. s0 = p0. s0 = mem_ld_i32( s0 + 4 ). l1 = s0. s0 = p0. s0 = mem_ld_i32( s0 + 16 ). l4 = s0. s1 = p0. s1 = mem_ld_i32( s1 + 12 ). l2 = s1.
      IF zcl_wasm_rt=>gt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = l4. s1 = l2. s0 = s0 - s1. l4 = s0. s0 = l2. s1 = 3. s0 = zcl_wasm_rt=>shl32( iv_val = s0 iv_shift = s1 ). s1 = l3. s0 = s0 + s1. s1 = 4. s0 = s0 + s1. l2 = s0.
        DO. " loop
          s0 = l1. s1 = l2. s1 = mem_ld_i32( s1 ). PERFORM f1147 USING s0 s1. s0 = l2. s1 = 8. s0 = s0 + s1. l2 = s0. s0 = l4. s1 = 1. s0 = s0 - s1. l4 = s0.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
        ENDDO.
      ELSE.
      ENDIF.
      s0 = l1. s0 = mem_ld_i32( s0 + 16 ). l2 = s0. s1 = 16. s0 = s0 + s1. s1 = l3. s2 = l2. s2 = mem_ld_i32( s2 + 4 ).
      DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
      dispatch_t6( iv_idx = lv_ci_func p0 = s0 p1 = s1 ). s0 = l1. PERFORM f117 USING s0. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          DO 1 TIMES. " block
            s0 = l1. s1 = 3. s0 = s0 - s1.
            CASE s0.
              WHEN 0. EXIT.
              WHEN 1. lv_br = 4. EXIT.
              WHEN 2. lv_br = 4. EXIT.
              WHEN 3. lv_br = 1. EXIT.
              WHEN 4. lv_br = 4. EXIT.
              WHEN 5. lv_br = 4. EXIT.
              WHEN 6. lv_br = 4. EXIT.
              WHEN 7. lv_br = 2. EXIT.
              WHEN 8. lv_br = 3. EXIT.
              WHEN OTHERS. lv_br = 4. EXIT.
            ENDCASE.
          ENDDO.
          s0 = p0. s0 = mem_ld_i32( s0 + 4 ).
          IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
          s0 = p0. s0 = mem_ld_i32( s0 + 8 ). PERFORM f125 USING s0. lv_br = 3. EXIT. " br 3
        ENDDO.
        s0 = p0. s0 = mem_ld_i32_8u( s0 + 4 ). s1 = 3.
        IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
        s0 = p0. s0 = mem_ld_i32( s0 + 8 ). l1 = s0. s0 = mem_ld_i32( s0 ). l2 = s0. s1 = l1. s2 = 4. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). l3 = s1. s1 = mem_ld_i32( s1 ).
        DATA(lv_ci_func) = mt_tab0[ s1 + 1 ]. " call_indirect
        dispatch_t2( iv_idx = lv_ci_func p0 = s0 ). s0 = l3. s0 = mem_ld_i32( s0 + 4 ).
        IF s0 <> 0.
          s0 = l2. PERFORM f125 USING s0.
        ELSE.
        ENDIF.
        s0 = l1. PERFORM f125 USING s0. lv_br = 2. EXIT. " br 2
      ENDDO.
      s0 = p0. s0 = mem_ld_i32( s0 + 20 ). l1 = s0. s1 = -2147483648.
      IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = l1.
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p0. s0 = mem_ld_i32( s0 + 24 ). PERFORM f125 USING s0. lv_br = 1. EXIT. " br 1
    ENDDO.
    s0 = p0. s0 = mem_ld_i32( s0 + 20 ). l1 = s0. s1 = -2147483648.
    IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l1.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s0 = mem_ld_i32( s0 + 24 ). PERFORM f125 USING s0.
  ENDDO.
  s0 = p0. s0 = mem_ld_i32( s0 + 40 ). l1 = s0.
  DO 1 TIMES. " block
    s0 = p0. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 32 ). l5 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
    IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l5. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p0 = s0. s1 = p0. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 - s2. p0 = s1. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s1 = 0.
    IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l1. s1 = l5. PERFORM f1384 USING s0 s1.
  ENDDO.
  s0 = l1. PERFORM f117 USING s0.
ENDFORM.

FORM f595 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i.
  DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i.
  DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 128. s0 = s0 - s1. l4 = s0. gv_g0 = s0. s0 = p0. s0 = mem_ld_i32( s0 ). p0 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        s0 = p1. s0 = mem_ld_i32( s0 + 28 ). l2 = s0. s1 = 16. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
        IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = l2. s1 = 32. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          s0 = p0. s0 = mem_ld_i32( s0 ). p0 = s0. s1 = p0. s2 = 31. s1 = zcl_wasm_rt=>shr_s32( iv_val = s1 iv_shift = s2 ). l2 = s1. s0 = zcl_wasm_rt=>xor32( iv_a = s0 iv_b = s1 ). s1 = l2. s0 = s0 - s1. s0 = zcl_wasm_rt=>extend_u32( s0 ).
          s1 = p0. s2 = -1. s1 = zcl_wasm_rt=>xor32( iv_a = s1 iv_b = s2 ). s2 = 31. s1 = zcl_wasm_rt=>shr_u32( iv_val = s1 iv_shift = s2 ). s2 = p1. PERFORM f607 USING s0 s1 s2 CHANGING s0. lv_br = 3. EXIT. " br 3
        ELSE.
        ENDIF.
        s1 = p0. s1 = mem_ld_i32( s1 ). p0 = s1. s1 = 127. l2 = s1.
        DO. " loop
          s1 = l4. s2 = l2. l3 = s2. s1 = s1 + s2. l5 = s1. s2 = p0. s3 = 15. s2 = zcl_wasm_rt=>and32( iv_a = s2 iv_b = s3 ). l2 = s2. s3 = 48. s2 = zcl_wasm_rt=>or32( iv_a = s2 iv_b = s3 ). s3 = l2. s4 = 87. s3 = s3 + s4. s4 = l2. s5 = 10.
          IF zcl_wasm_rt=>lt_u32( iv_a = s4 iv_b = s5 ) = abap_true. s4 = 1. ELSE. s4 = 0. ENDIF.
          IF s4 <> 0. s2 = s2. ELSE. s2 = s3. ENDIF.
          mem_st_i32_8( iv_addr = s1 iv_val = s2 ). s1 = l3. s2 = 1. s1 = s1 - s2. l2 = s1. s1 = p0. s2 = 16.
          IF zcl_wasm_rt=>lt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
          s2 = p0. s3 = 4. s2 = zcl_wasm_rt=>shr_u32( iv_val = s2 iv_shift = s3 ). p0 = s2.
          IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
          IF s1 <> 0. EXIT. ENDIF. " br_if 0
        ENDDO.
        lv_br = 1. EXIT. " br 1
      ENDDO.
      s1 = p0. s1 = mem_ld_i32( s1 ). p0 = s1. s1 = 127. l2 = s1.
      DO. " loop
        s1 = l4. s2 = l2. l3 = s2. s1 = s1 + s2. l5 = s1. s2 = p0. s3 = 15. s2 = zcl_wasm_rt=>and32( iv_a = s2 iv_b = s3 ). l2 = s2. s3 = 48. s2 = zcl_wasm_rt=>or32( iv_a = s2 iv_b = s3 ). s3 = l2. s4 = 55. s3 = s3 + s4. s4 = l2. s5 = 10.
        IF zcl_wasm_rt=>lt_u32( iv_a = s4 iv_b = s5 ) = abap_true. s4 = 1. ELSE. s4 = 0. ENDIF.
        IF s4 <> 0. s2 = s2. ELSE. s2 = s3. ENDIF.
        mem_st_i32_8( iv_addr = s1 iv_val = s2 ). s1 = l3. s2 = 1. s1 = s1 - s2. l2 = s1. s1 = p0. s2 = 16.
        IF zcl_wasm_rt=>lt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
        s2 = p0. s3 = 4. s2 = zcl_wasm_rt=>shr_u32( iv_val = s2 iv_shift = s3 ). p0 = s2.
        IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0. EXIT. ENDIF. " br_if 0
      ENDDO.
      s1 = l3. s2 = 129.
      IF zcl_wasm_rt=>ge_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0.
        s1 = l3. s2 = 128. s3 = 1050416. PERFORM f1044 USING s1 s2 s3.
        RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
      ELSE.
      ENDIF.
      s1 = p1. s2 = 1. s3 = 1080547. s4 = 2. s5 = l5. s6 = 128. s7 = l3. s6 = s6 - s7. PERFORM f358 USING s1 s2 s3 s4 s5 s6 CHANGING s1. lv_br = 1. EXIT. " br 1
    ENDDO.
    s2 = l3. s3 = 129.
    IF zcl_wasm_rt=>ge_u32( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
    IF s2 <> 0.
      s2 = l3. s3 = 128. s4 = 1050416. PERFORM f1044 USING s2 s3 s4.
      RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
    ELSE.
    ENDIF.
    s2 = p1. s3 = 1. s4 = 1080547. s5 = 2. s6 = l5. s7 = 128. s8 = l3. s7 = s7 - s8. PERFORM f358 USING s2 s3 s4 s5 s6 s7 CHANGING s2.
  ENDDO.
  s3 = l4. s4 = 128. s3 = s3 + s4. gv_g0 = s3. rv = s2.
ENDFORM.

FORM f596 USING p0 TYPE i p1 TYPE int8.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE i. DATA l8 TYPE i. DATA l9 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i.
  DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i.
  DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA lv_br TYPE i. s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). s0 = mem_ld_i32( s0 + 32 ). l3 = s0.
  IF s0 <> 0.
    s0 = l3. s1 = 8. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). l5 = s0. s1 = l3. s2 = 4. s1 = s1 + s2. l8 = s1.
    IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p0. s1 = 16. s0 = s0 + s1. l9 = s0.
      DO. " loop
        s0 = l5. l4 = s0. s1 = 16. s0 = s0 - s1. l6 = s0. s0 = l4. s0 = mem_ld_i32( s0 + 4 ). l5 = s0.
        DO 1 TIMES. " block
          s0 = l4. s1 = 12. s0 = s0 - s1. s0 = mem_ld_i32( s0 ).
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = l4. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 16 ). p1 = s0.
          DO 1 TIMES. " block
            s0 = l3. s0 = mem_ld_i32( s0 ).
            IF s0 <> 0.
              DO 1 TIMES. " block
                DO 1 TIMES. " block
                  DO 1 TIMES. " block
                    s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l7 = s0. s0 = mem_ld_i32( s0 + 24 ). l2 = s0.
                    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
                    IF s0 <> 0. EXIT. ENDIF. " br_if 0
                    s0 = l7. s1 = 24. s0 = s0 + s1. s1 = l2. s2 = l6.
                    IF s1 = s2. s1 = 1. ELSE. s1 = 0. ENDIF.
                    IF s1 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
                    DO. " loop
                      s0 = l2. l7 = s0. s0 = mem_ld_i32( s0 + 12 ). l2 = s0.
                      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
                      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
                      s0 = l2. s1 = l6.
                      IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                      IF s0 <> 0. EXIT. ENDIF. " br_if 0
                    ENDDO.
                    lv_br = 1. EXIT. " br 1
                  ENDDO.
                  s0 = 1149969. s1 = 1148333. s2 = 47502. s3 = 1144082. PERFORM f1101 USING s0 s1 s2 s3.
                  RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
                ENDDO.
                s0 = l7. s1 = 12. s0 = s0 + s1.
              ENDDO.
              s1 = l4. s2 = 4. s1 = s1 - s2. s1 = mem_ld_i32( s1 ). mem_st_i32( iv_addr = s0 iv_val = s1 ). lv_br = 1. EXIT. " br 1
            ELSE.
            ENDIF.
            s0 = p1. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
            IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. EXIT. ENDIF. " br_if 0
            s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l2 = s0. s1 = l2. s1 = mem_ld_i32( s1 ). l2 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l2. s1 = 1.
            IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. EXIT. ENDIF. " br_if 0
            s0 = p0. s1 = p1. PERFORM f453 USING s0 s1.
          ENDDO.
          s0 = l4. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 24 ). p1 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
          IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l2 = s0. s1 = l2. s1 = mem_ld_i32( s1 ). l2 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l2. s1 = 1.
          IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = p0. s1 = p1. PERFORM f453 USING s0 s1.
        ENDDO.
        s0 = l9. s1 = l6. s2 = p0. s2 = mem_ld_i32( s2 + 4 ).
        DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
        dispatch_t6( iv_idx = lv_ci_func p0 = s0 p1 = s1 ). s0 = l5. s1 = l8.
        IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
      ENDDO.
    ELSE.
    ENDIF.
    s0 = p0. s1 = 16. s0 = s0 + s1. l2 = s0. s1 = l3. s1 = mem_ld_i32( s1 + 16 ). s2 = p0. s2 = mem_ld_i32( s2 + 4 ).
    DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
    dispatch_t6( iv_idx = lv_ci_func p0 = s0 p1 = s1 ). s0 = l2. s1 = l3. s2 = p0. s2 = mem_ld_i32( s2 + 4 ).
    DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
    dispatch_t6( iv_idx = lv_ci_func p0 = s0 p1 = s1 ).
  ELSE.
  ENDIF.
ENDFORM.

FORM f597 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i CHANGING rv TYPE int8.
  DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE int8. DATA l7 TYPE int8. DATA l8 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i.
  DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i.
  DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16.
  s0 = s0 - s1. l4 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    s0 = p0. s1 = p1. s2 = 2. PERFORM f508 USING s0 s1 s2 CHANGING s0. l6 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 25769803776.
    IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        s0 = p2. s1 = 1.
        IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = p3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). p1 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). l5 = s0. s1 = 0. s2 = l5. s3 = 11.
          s2 = s2 + s3. s3 = 18.
          IF zcl_wasm_rt=>lt_u32( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
          IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          s0 = p0. s1 = l4. s2 = 12. s1 = s1 + s2. s2 = p1. s3 = 1. PERFORM f434 USING s0 s1 s2 s3 CHANGING s0.
          IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
          s0 = p0. s1 = l6. s2 = 48.
          DO 1 TIMES. " block
            s3 = l4. s3 = mem_ld_i32( s3 + 12 ). p2 = s3. s4 = 0.
            IF s3 >= s4. s3 = 1. ELSE. s3 = 0. ENDIF.
            IF s3 <> 0.
              s3 = p2. s3 = zcl_wasm_rt=>extend_u32( s3 ). lv_br = 1. EXIT. " br 1
            ELSE.
            ENDIF.
            s4 = -51539607552. s5 = p2. s5 = zcl_wasm_rt=>extend_u32( s5 ). " f64.convert_i32_u s5 = zcl_wasm_rt=>reinterpret_f64_i64( s5 ). p1 = s5. s6 = 9221120288580698112. s5 = s5 - s6. s6 = p1. s7 = 9223372036854775807.
            s6 = zcl_wasm_rt=>and64( iv_a = s6 iv_b = s7 ). s7 = 9218868437227405312.
            IF zcl_wasm_rt=>gt_u64( iv_a = s6 iv_b = s7 ) = abap_true. s6 = 1. ELSE. s6 = 0. ENDIF.
            IF s6 <> 0. s4 = s4. ELSE. s4 = s5. ENDIF.
          ENDDO.
          s5 = l6. s6 = 16384. PERFORM f89 USING s1 s2 s3 s4 s5 s6 CHANGING s1. s2 = 0.
          IF s1 < s2. s1 = 1. ELSE. s1 = 0. ENDIF.
          IF s1 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
          lv_br = 3. EXIT. " br 3
        ELSE.
        ENDIF.
        s1 = p2. s2 = 0.
        IF s1 <= s2. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
      ENDDO.
      s1 = p2. s1 = zcl_wasm_rt=>extend_u32( s1 ). l8 = s1. s1 = 0. p1 = s1.
      DO. " loop
        s1 = p3. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 0 ). l7 = s1. s2 = 32. s1 = zcl_wasm_rt=>shr_u64( iv_val = s1 iv_shift = s2 ). s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = -11.
        IF zcl_wasm_rt=>ge_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0.
          s1 = l7. s1 = zcl_wasm_rt=>wrap_i64( s1 ). p2 = s1. s2 = p2. s2 = mem_ld_i32( s2 ). s3 = 1. s2 = s2 + s3. mem_st_i32( iv_addr = s1 iv_val = s2 ).
        ELSE.
        ENDIF.
        s1 = p0. s2 = l6. s3 = p1. s4 = l7. s5 = 16384. PERFORM f175 USING s1 s2 s3 s4 s5 CHANGING s1. s2 = 0.
        IF s1 < s2. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        s1 = p3. s2 = 8. s1 = s1 + s2. p3 = s1. s1 = p1. s2 = 1. s1 = s1 + s2. p1 = s1. s2 = l8.
        IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0. EXIT. ENDIF. " br_if 0
      ENDDO.
      lv_br = 1. EXIT. " br 1
    ENDDO.
    DO 1 TIMES. " block
      s1 = l6. s2 = 32. s1 = zcl_wasm_rt=>shr_u64( iv_val = s1 iv_shift = s2 ). s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = -11.
      IF zcl_wasm_rt=>lt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. EXIT. ENDIF. " br_if 0
      s1 = l6. s1 = zcl_wasm_rt=>wrap_i64( s1 ). p2 = s1. s2 = p2. s2 = mem_ld_i32( s2 ). p2 = s2. s3 = 1. s2 = s2 - s3. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = p2. s2 = 1.
      IF s1 > s2. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. EXIT. ENDIF. " br_if 0
      s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s2 = l6. PERFORM f453 USING s1 s2.
    ENDDO.
    s1 = 25769803776. l6 = s1.
  ENDDO.
  s1 = l4. s2 = 16. s1 = s1 + s2. gv_g0 = s1. s1 = l6. rv = s1.
ENDFORM.

FORM f598 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i.
  DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i.
  DATA s26 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l2 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        s0 = p1. s1 = 128.
        IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = l2. s1 = 0. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = p1. s1 = 2048.
          IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          s0 = p1. s1 = 65536.
          IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0.
            s0 = l2. s1 = p1. s2 = 63. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). s2 = 128. s1 = zcl_wasm_rt=>or32( iv_a = s1 iv_b = s2 ). mem_st_i32_8( iv_addr = s0 + 14 iv_val = s1 ). s0 = l2. s1 = p1. s2 = 12.
            s1 = zcl_wasm_rt=>shr_u32( iv_val = s1 iv_shift = s2 ). s2 = 224. s1 = zcl_wasm_rt=>or32( iv_a = s1 iv_b = s2 ). mem_st_i32_8( iv_addr = s0 + 12 iv_val = s1 ). s0 = l2. s1 = p1. s2 = 6.
            s1 = zcl_wasm_rt=>shr_u32( iv_val = s1 iv_shift = s2 ). s2 = 63. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). s2 = 128. s1 = zcl_wasm_rt=>or32( iv_a = s1 iv_b = s2 ). mem_st_i32_8( iv_addr = s0 + 13 iv_val = s1 ). s0 = 3.
            lv_br = 3. EXIT. " br 3
          ELSE.
          ENDIF.
          s1 = l2. s2 = p1. s3 = 63. s2 = zcl_wasm_rt=>and32( iv_a = s2 iv_b = s3 ). s3 = 128. s2 = zcl_wasm_rt=>or32( iv_a = s2 iv_b = s3 ). mem_st_i32_8( iv_addr = s1 + 15 iv_val = s2 ). s1 = l2. s2 = p1. s3 = 6.
          s2 = zcl_wasm_rt=>shr_u32( iv_val = s2 iv_shift = s3 ). s3 = 63. s2 = zcl_wasm_rt=>and32( iv_a = s2 iv_b = s3 ). s3 = 128. s2 = zcl_wasm_rt=>or32( iv_a = s2 iv_b = s3 ). mem_st_i32_8( iv_addr = s1 + 14 iv_val = s2 ). s1 = l2.
          s2 = p1. s3 = 12. s2 = zcl_wasm_rt=>shr_u32( iv_val = s2 iv_shift = s3 ). s3 = 63. s2 = zcl_wasm_rt=>and32( iv_a = s2 iv_b = s3 ). s3 = 128. s2 = zcl_wasm_rt=>or32( iv_a = s2 iv_b = s3 ).
          mem_st_i32_8( iv_addr = s1 + 13 iv_val = s2 ). s1 = l2. s2 = p1. s3 = 18. s2 = zcl_wasm_rt=>shr_u32( iv_val = s2 iv_shift = s3 ). s3 = 7. s2 = zcl_wasm_rt=>and32( iv_a = s2 iv_b = s3 ). s3 = 240.
          s2 = zcl_wasm_rt=>or32( iv_a = s2 iv_b = s3 ). mem_st_i32_8( iv_addr = s1 + 12 iv_val = s2 ). s1 = 4. lv_br = 2. EXIT. " br 2
        ELSE.
        ENDIF.
        s2 = p0. s2 = mem_ld_i32( s2 + 8 ). l3 = s2. s3 = p0. s3 = mem_ld_i32( s3 ).
        IF s2 = s3. s2 = 1. ELSE. s2 = 0. ENDIF.
        IF s2 <> 0.
          s2 = p0. PERFORM f852 USING s2.
        ELSE.
        ENDIF.
        s2 = p0. s3 = l3. s4 = 1. s3 = s3 + s4. mem_st_i32( iv_addr = s2 + 8 iv_val = s3 ). s2 = p0. s2 = mem_ld_i32( s2 + 4 ). s3 = l3. s2 = s2 + s3. s3 = p1. mem_st_i32_8( iv_addr = s2 iv_val = s3 ). lv_br = 2. EXIT. " br 2
      ENDDO.
      s2 = l2. s3 = p1. s4 = 63. s3 = zcl_wasm_rt=>and32( iv_a = s3 iv_b = s4 ). s4 = 128. s3 = zcl_wasm_rt=>or32( iv_a = s3 iv_b = s4 ). mem_st_i32_8( iv_addr = s2 + 13 iv_val = s3 ). s2 = l2. s3 = p1. s4 = 6.
      s3 = zcl_wasm_rt=>shr_u32( iv_val = s3 iv_shift = s4 ). s4 = 192. s3 = zcl_wasm_rt=>or32( iv_a = s3 iv_b = s4 ). mem_st_i32_8( iv_addr = s2 + 12 iv_val = s3 ). s2 = 2.
    ENDDO.
    p1 = s2. s2 = p1. s3 = p0. s3 = mem_ld_i32( s3 ). s4 = p0. s4 = mem_ld_i32( s4 + 8 ). l3 = s4. s3 = s3 - s4.
    IF zcl_wasm_rt=>gt_u32( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
    IF s2 <> 0.
      s2 = p0. s3 = l3. s4 = p1. PERFORM f826 USING s2 s3 s4. s2 = p0. s2 = mem_ld_i32( s2 + 8 ). l3 = s2.
    ELSE.
    ENDIF.
    s2 = p0. s2 = mem_ld_i32( s2 + 4 ). s3 = l3. s2 = s2 + s3. s3 = l2. s4 = 12. s3 = s3 + s4. s4 = p1. PERFORM f216 USING s2 s3 s4 CHANGING s2. s2 = p0. s3 = p1. s4 = l3. s3 = s3 + s4. mem_st_i32( iv_addr = s2 + 8 iv_val = s3 ).
  ENDDO.
  s2 = l2. s3 = 16. s2 = s2 + s3. gv_g0 = s2. s2 = 0. rv = s2.
ENDFORM.

FORM f599 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i.
  DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i.
  DATA s26 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l2 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        s0 = p1. s1 = 128.
        IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = l2. s1 = 0. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = p1. s1 = 2048.
          IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          s0 = p1. s1 = 65536.
          IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0.
            s0 = l2. s1 = p1. s2 = 63. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). s2 = 128. s1 = zcl_wasm_rt=>or32( iv_a = s1 iv_b = s2 ). mem_st_i32_8( iv_addr = s0 + 14 iv_val = s1 ). s0 = l2. s1 = p1. s2 = 12.
            s1 = zcl_wasm_rt=>shr_u32( iv_val = s1 iv_shift = s2 ). s2 = 224. s1 = zcl_wasm_rt=>or32( iv_a = s1 iv_b = s2 ). mem_st_i32_8( iv_addr = s0 + 12 iv_val = s1 ). s0 = l2. s1 = p1. s2 = 6.
            s1 = zcl_wasm_rt=>shr_u32( iv_val = s1 iv_shift = s2 ). s2 = 63. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). s2 = 128. s1 = zcl_wasm_rt=>or32( iv_a = s1 iv_b = s2 ). mem_st_i32_8( iv_addr = s0 + 13 iv_val = s1 ). s0 = 3.
            lv_br = 3. EXIT. " br 3
          ELSE.
          ENDIF.
          s1 = l2. s2 = p1. s3 = 63. s2 = zcl_wasm_rt=>and32( iv_a = s2 iv_b = s3 ). s3 = 128. s2 = zcl_wasm_rt=>or32( iv_a = s2 iv_b = s3 ). mem_st_i32_8( iv_addr = s1 + 15 iv_val = s2 ). s1 = l2. s2 = p1. s3 = 6.
          s2 = zcl_wasm_rt=>shr_u32( iv_val = s2 iv_shift = s3 ). s3 = 63. s2 = zcl_wasm_rt=>and32( iv_a = s2 iv_b = s3 ). s3 = 128. s2 = zcl_wasm_rt=>or32( iv_a = s2 iv_b = s3 ). mem_st_i32_8( iv_addr = s1 + 14 iv_val = s2 ). s1 = l2.
          s2 = p1. s3 = 12. s2 = zcl_wasm_rt=>shr_u32( iv_val = s2 iv_shift = s3 ). s3 = 63. s2 = zcl_wasm_rt=>and32( iv_a = s2 iv_b = s3 ). s3 = 128. s2 = zcl_wasm_rt=>or32( iv_a = s2 iv_b = s3 ).
          mem_st_i32_8( iv_addr = s1 + 13 iv_val = s2 ). s1 = l2. s2 = p1. s3 = 18. s2 = zcl_wasm_rt=>shr_u32( iv_val = s2 iv_shift = s3 ). s3 = 7. s2 = zcl_wasm_rt=>and32( iv_a = s2 iv_b = s3 ). s3 = 240.
          s2 = zcl_wasm_rt=>or32( iv_a = s2 iv_b = s3 ). mem_st_i32_8( iv_addr = s1 + 12 iv_val = s2 ). s1 = 4. lv_br = 2. EXIT. " br 2
        ELSE.
        ENDIF.
        s2 = p0. s2 = mem_ld_i32( s2 + 8 ). l3 = s2. s3 = p0. s3 = mem_ld_i32( s3 ).
        IF s2 = s3. s2 = 1. ELSE. s2 = 0. ENDIF.
        IF s2 <> 0.
          s2 = p0. PERFORM f853 USING s2.
        ELSE.
        ENDIF.
        s2 = p0. s3 = l3. s4 = 1. s3 = s3 + s4. mem_st_i32( iv_addr = s2 + 8 iv_val = s3 ). s2 = p0. s2 = mem_ld_i32( s2 + 4 ). s3 = l3. s2 = s2 + s3. s3 = p1. mem_st_i32_8( iv_addr = s2 iv_val = s3 ). lv_br = 2. EXIT. " br 2
      ENDDO.
      s2 = l2. s3 = p1. s4 = 63. s3 = zcl_wasm_rt=>and32( iv_a = s3 iv_b = s4 ). s4 = 128. s3 = zcl_wasm_rt=>or32( iv_a = s3 iv_b = s4 ). mem_st_i32_8( iv_addr = s2 + 13 iv_val = s3 ). s2 = l2. s3 = p1. s4 = 6.
      s3 = zcl_wasm_rt=>shr_u32( iv_val = s3 iv_shift = s4 ). s4 = 192. s3 = zcl_wasm_rt=>or32( iv_a = s3 iv_b = s4 ). mem_st_i32_8( iv_addr = s2 + 12 iv_val = s3 ). s2 = 2.
    ENDDO.
    p1 = s2. s2 = p1. s3 = p0. s3 = mem_ld_i32( s3 ). s4 = p0. s4 = mem_ld_i32( s4 + 8 ). l3 = s4. s3 = s3 - s4.
    IF zcl_wasm_rt=>gt_u32( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
    IF s2 <> 0.
      s2 = p0. s3 = l3. s4 = p1. PERFORM f828 USING s2 s3 s4. s2 = p0. s2 = mem_ld_i32( s2 + 8 ). l3 = s2.
    ELSE.
    ENDIF.
    s2 = p0. s2 = mem_ld_i32( s2 + 4 ). s3 = l3. s2 = s2 + s3. s3 = l2. s4 = 12. s3 = s3 + s4. s4 = p1. PERFORM f216 USING s2 s3 s4 CHANGING s2. s2 = p0. s3 = p1. s4 = l3. s3 = s3 + s4. mem_st_i32( iv_addr = s2 + 8 iv_val = s3 ).
  ENDDO.
  s2 = l2. s3 = 16. s2 = s2 + s3. gv_g0 = s2. s2 = 0. rv = s2.
ENDFORM.

FORM f600 USING p0 TYPE i p1 TYPE i p2 TYPE i CHANGING rv TYPE i.
  DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE i. DATA l8 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i.
  DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i.
  DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA lv_br TYPE i. s0 = p1. s0 = mem_ld_i32( s0 + 104 ). s1 = 0.
  IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = p2. s1 = 8. s0 = s0 + s1. l8 = s0.
    DO. " loop
      s0 = p1. s0 = mem_ld_i32( s0 + 100 ). s1 = l6. s2 = 2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s0 = mem_ld_i32( s0 ). l3 = s0.
      DO 1 TIMES. " block
        s0 = p2. s0 = mem_ld_i32( s0 + 4 ). l4 = s0. s1 = 0.
        IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = p2. s0 = mem_ld_i32( s0 ). l7 = s0. s0 = l4. l5 = s0.
          DO. " loop
            s0 = l7. s0 = mem_ld_i32( s0 ). s1 = l3.
            IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
            s0 = l7. s1 = 4. s0 = s0 + s1. l7 = s0. s0 = l5. s1 = 1. s0 = s0 - s1. l5 = s0.
            IF s0 <> 0. EXIT. ENDIF. " br_if 0
          ENDDO.
        ELSE.
        ENDIF.
        s0 = l3. s0 = mem_ld_i32( s0 + 128 ). s0 = mem_ld_i32_8u( s0 + 160 ).
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        DO 1 TIMES. " block
          DO 1 TIMES. " block
            DO 1 TIMES. " block
              s0 = l3. s1 = 87. s0 = s0 + s1. s0 = mem_ld_i32_8u( s0 ). s1 = 24. s0 = zcl_wasm_rt=>shl32( iv_val = s0 iv_shift = s1 ). s1 = 67108864.
              IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0.
                s0 = l3. s0 = mem_ld_i32_8u( s0 + 160 ).
                IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
                s0 = l3. s0 = mem_ld_i32( s0 + 116 ).
                IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
                IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
                s0 = l3. s0 = mem_ld_i32( s0 + 112 ). l5 = s0. s1 = 0.
                IF s0 <= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                IF s0 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
                s0 = l3. s1 = l5. s2 = 1. s1 = s1 - s2. l5 = s1. mem_st_i32( iv_addr = s0 + 112 iv_val = s1 ). s0 = l5.
                IF s0 <> 0. lv_br = 4. EXIT. ENDIF. " br_if 4
                DO 1 TIMES. " block
                  s0 = l4. s1 = l8. s1 = mem_ld_i32( s1 ).
                  IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                  IF s0 <> 0.
                    s0 = p0. s1 = p2. s2 = 4. s3 = l8. s4 = l4. s5 = 1. s4 = s4 + s5. PERFORM f845 USING s0 s1 s2 s3 s4 CHANGING s0.
                    IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
                    s0 = p2. s0 = mem_ld_i32( s0 + 4 ). l4 = s0.
                  ELSE.
                  ENDIF.
                  s0 = p2. s1 = l4. s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = p2. s0 = mem_ld_i32( s0 ). s1 = l4. s2 = 2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s1 = l3.
                  mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l3. s0 = mem_ld_i32_8u( s0 + 84 ).
                  IF s0 <> 0. lv_br = 5. EXIT. ENDIF. " br_if 5
                  s0 = p0. s1 = l3. s2 = p2. PERFORM f600 USING s0 s1 s2 CHANGING s0.
                  IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
                  IF s0 <> 0. lv_br = 5. EXIT. ENDIF. " br_if 5
                ENDDO.
                s0 = -1. rv = s0. RETURN.
              ELSE.
              ENDIF.
              s0 = 1151093. s1 = 1148333. s2 = 28904. s3 = 1138268. PERFORM f1101 USING s0 s1 s2 s3.
              RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
            ENDDO.
            s0 = 1141168. s1 = 1148333. s2 = 28905. s3 = 1138268. PERFORM f1101 USING s0 s1 s2 s3.
            RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
          ENDDO.
          s0 = 1141422. s1 = 1148333. s2 = 28906. s3 = 1138268. PERFORM f1101 USING s0 s1 s2 s3.
          RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
        ENDDO.
        s0 = 1151882. s1 = 1148333. s2 = 28907. s3 = 1138268. PERFORM f1101 USING s0 s1 s2 s3.
        RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
      ENDDO.
      s0 = l6. s1 = 1. s0 = s0 + s1. l6 = s0. s1 = p1. s1 = mem_ld_i32( s1 + 104 ).
      IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
    ENDDO.
  ELSE.
  ENDIF.
  s0 = 0. rv = s0.
ENDFORM.

FORM f601 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i.
  DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i.
  DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 128. s0 = s0 - s1. l4 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        s0 = p1. s0 = mem_ld_i32( s0 + 28 ). l2 = s0. s1 = 16. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
        IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = l2. s1 = 32. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          s0 = p0. s0 = mem_ld_i32( s0 ). p0 = s0. s1 = p0. s2 = 31. s1 = zcl_wasm_rt=>shr_s32( iv_val = s1 iv_shift = s2 ). l2 = s1. s0 = zcl_wasm_rt=>xor32( iv_a = s0 iv_b = s1 ). s1 = l2. s0 = s0 - s1. s0 = zcl_wasm_rt=>extend_u32( s0 ).
          s1 = p0. s2 = -1. s1 = zcl_wasm_rt=>xor32( iv_a = s1 iv_b = s2 ). s2 = 31. s1 = zcl_wasm_rt=>shr_u32( iv_val = s1 iv_shift = s2 ). s2 = p1. PERFORM f607 USING s0 s1 s2 CHANGING s0. lv_br = 3. EXIT. " br 3
        ELSE.
        ENDIF.
        s1 = p0. s1 = mem_ld_i32( s1 ). p0 = s1. s1 = 127. l2 = s1.
        DO. " loop
          s1 = l4. s2 = l2. l3 = s2. s1 = s1 + s2. l5 = s1. s2 = p0. s3 = 15. s2 = zcl_wasm_rt=>and32( iv_a = s2 iv_b = s3 ). l2 = s2. s3 = 48. s2 = zcl_wasm_rt=>or32( iv_a = s2 iv_b = s3 ). s3 = l2. s4 = 87. s3 = s3 + s4. s4 = l2. s5 = 10.
          IF zcl_wasm_rt=>lt_u32( iv_a = s4 iv_b = s5 ) = abap_true. s4 = 1. ELSE. s4 = 0. ENDIF.
          IF s4 <> 0. s2 = s2. ELSE. s2 = s3. ENDIF.
          mem_st_i32_8( iv_addr = s1 iv_val = s2 ). s1 = l3. s2 = 1. s1 = s1 - s2. l2 = s1. s1 = p0. s2 = 16.
          IF zcl_wasm_rt=>lt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
          s2 = p0. s3 = 4. s2 = zcl_wasm_rt=>shr_u32( iv_val = s2 iv_shift = s3 ). p0 = s2.
          IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
          IF s1 <> 0. EXIT. ENDIF. " br_if 0
        ENDDO.
        lv_br = 1. EXIT. " br 1
      ENDDO.
      s1 = p0. s1 = mem_ld_i32( s1 ). p0 = s1. s1 = 127. l2 = s1.
      DO. " loop
        s1 = l4. s2 = l2. l3 = s2. s1 = s1 + s2. l5 = s1. s2 = p0. s3 = 15. s2 = zcl_wasm_rt=>and32( iv_a = s2 iv_b = s3 ). l2 = s2. s3 = 48. s2 = zcl_wasm_rt=>or32( iv_a = s2 iv_b = s3 ). s3 = l2. s4 = 55. s3 = s3 + s4. s4 = l2. s5 = 10.
        IF zcl_wasm_rt=>lt_u32( iv_a = s4 iv_b = s5 ) = abap_true. s4 = 1. ELSE. s4 = 0. ENDIF.
        IF s4 <> 0. s2 = s2. ELSE. s2 = s3. ENDIF.
        mem_st_i32_8( iv_addr = s1 iv_val = s2 ). s1 = l3. s2 = 1. s1 = s1 - s2. l2 = s1. s1 = p0. s2 = 16.
        IF zcl_wasm_rt=>lt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
        s2 = p0. s3 = 4. s2 = zcl_wasm_rt=>shr_u32( iv_val = s2 iv_shift = s3 ). p0 = s2.
        IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0. EXIT. ENDIF. " br_if 0
      ENDDO.
      s1 = l3. s2 = 129.
      IF zcl_wasm_rt=>ge_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0.
        s1 = l3. s2 = 128. s3 = 1050416. PERFORM f1044 USING s1 s2 s3.
        RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
      ELSE.
      ENDIF.
      s1 = p1. s2 = 1. s3 = 1080547. s4 = 2. s5 = l5. s6 = 128. s7 = l3. s6 = s6 - s7. PERFORM f358 USING s1 s2 s3 s4 s5 s6 CHANGING s1. lv_br = 1. EXIT. " br 1
    ENDDO.
    s2 = l3. s3 = 129.
    IF zcl_wasm_rt=>ge_u32( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
    IF s2 <> 0.
      s2 = l3. s3 = 128. s4 = 1050416. PERFORM f1044 USING s2 s3 s4.
      RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
    ELSE.
    ENDIF.
    s2 = p1. s3 = 1. s4 = 1080547. s5 = 2. s6 = l5. s7 = 128. s8 = l3. s7 = s7 - s8. PERFORM f358 USING s2 s3 s4 s5 s6 s7 CHANGING s2.
  ENDDO.
  s3 = l4. s4 = 128. s3 = s3 + s4. gv_g0 = s3. rv = s2.
ENDFORM.

FORM f602 USING p0 TYPE i p1 TYPE i.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i.
  DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i.
  DATA lv_br TYPE i. s0 = p1. s0 = mem_ld_i32( s0 ).
  IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = p1. s0 = mem_ld_i32_8u( s0 + 16 ).
    IF s0 <> 0.
      s0 = p0. s0 = mem_ld_i32( s0 + 224 ). s1 = p1. s1 = mem_ld_i32( s1 + 20 ). s2 = 32. s3 = p0. s3 = mem_ld_i32( s3 + 212 ). s2 = s2 - s3. s1 = zcl_wasm_rt=>shr_u32( iv_val = s1 iv_shift = s2 ). s2 = 2.
      s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. l2 = s0.
      DO. " loop
        s0 = l2. l3 = s0. s0 = mem_ld_i32( s0 ). l4 = s0. s1 = 40. s0 = s0 + s1. l2 = s0. s0 = p1. s1 = l4.
        IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
      ENDDO.
      s0 = l3. s1 = p1. s1 = mem_ld_i32( s1 + 40 ). mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s1 = p0. s1 = mem_ld_i32( s1 + 220 ). s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 + 220 iv_val = s1 ).
    ELSE.
    ENDIF.
    DO 1 TIMES. " block
      s0 = p1. s0 = mem_ld_i32( s0 + 44 ). l2 = s0.
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = l2. s1 = l2. s1 = mem_ld_i32( s1 ). l3 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l3. s1 = 1.
      IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p0. s1 = l2. s1 = zcl_wasm_rt=>extend_u32( s1 ). s2 = -4294967296. s1 = zcl_wasm_rt=>or64( iv_a = s1 iv_b = s2 ). PERFORM f453 USING s0 s1.
    ENDDO.
    s0 = p1. s0 = mem_ld_i32( s0 + 32 ). l5 = s0.
    IF s0 <> 0.
      s0 = p1. s1 = 52. s0 = s0 + s1. l2 = s0.
      DO. " loop
        DO 1 TIMES. " block
          s0 = l2. s0 = mem_ld_i32( s0 ). l3 = s0. s1 = 228.
          IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = p0. s0 = mem_ld_i32( s0 + 56 ). s1 = l3. s2 = 2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s0 = mem_ld_i32( s0 ). l4 = s0. s1 = l4. s1 = mem_ld_i32( s1 ). l3 = s1. s2 = 1. s1 = s1 - s2.
          mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l3. s1 = 1.
          IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = p0. s1 = l4. PERFORM f713 USING s0 s1. s0 = p1. s0 = mem_ld_i32( s0 + 32 ). l5 = s0.
        ENDDO.
        s0 = l2. s1 = 8. s0 = s0 + s1. l2 = s0. s0 = l6. s1 = 1. s0 = s0 + s1. l6 = s0. s1 = l5.
        IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
      ENDDO.
    ELSE.
    ENDIF.
    s0 = p1. s1 = 12. s0 = s0 + s1. l4 = s0. s0 = mem_ld_i32( s0 ). l2 = s0. s1 = p1. s1 = mem_ld_i32( s1 + 8 ). l3 = s1. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l3. s1 = l2. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = p1. s1 = 0.
    mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = l4. s1 = 0. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s1 = 16. s0 = s0 + s1. s1 = p1. s2 = p1. s2 = mem_ld_i32( s2 + 24 ). s3 = -1. s2 = zcl_wasm_rt=>xor32( iv_a = s2 iv_b = s3 ).
    s3 = 2. s2 = zcl_wasm_rt=>shl32( iv_val = s2 iv_shift = s3 ). s1 = s1 + s2. s2 = p0. s2 = mem_ld_i32( s2 + 4 ).
    DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
    dispatch_t6( iv_idx = lv_ci_func p0 = s0 p1 = s1 ).
    RETURN.
  ELSE.
  ENDIF.
  s0 = 1152089. s1 = 1148333. s2 = 4467. s3 = 1151797. PERFORM f1101 USING s0 s1 s2 s3.
  RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
ENDFORM.

FORM f603 USING p0 TYPE i p1 TYPE i p2 TYPE i p3 TYPE i CHANGING rv TYPE int8.
  DATA l4 TYPE i. DATA l5 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i.
  DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i.
  DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          DO 1 TIMES. " block
            s0 = p3. s0 = mem_ld_i32_8u( s0 + 5 ).
            CASE s0.
              WHEN 0. lv_br = 3. EXIT.
              WHEN 1. lv_br = 2. EXIT.
              WHEN 2. lv_br = 2. EXIT.
              WHEN 3. EXIT.
              WHEN 4. lv_br = 2. EXIT.
              WHEN 5. lv_br = 2. EXIT.
              WHEN 6. lv_br = 2. EXIT.
              WHEN 7. lv_br = 2. EXIT.
              WHEN 8. lv_br = 1. EXIT.
              WHEN OTHERS. lv_br = 2. EXIT.
            ENDCASE.
          ENDDO.
          s0 = p0. s1 = p3. s1 = mem_ld_i32( s1 + 8 ). p1 = s1. s2 = p1. PERFORM f768 USING s2 CHANGING s2. PERFORM f417 USING s0 s1 s2 CHANGING s0. p1 = s0.
          IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0.
            s0 = 25769803776. rv = s0. RETURN.
          ELSE.
          ENDIF.
          s0 = p0. s1 = p1. s2 = 1. PERFORM f772 USING s0 s1 s2 CHANGING s0. l5 = s0. s0 = p1. s1 = 228.
          IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
          s0 = p0. s0 = mem_ld_i32( s0 + 16 ). p2 = s0. s0 = mem_ld_i32( s0 + 56 ). s1 = p1. s2 = 2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s0 = mem_ld_i32( s0 ). p0 = s0. s1 = p0. s1 = mem_ld_i32( s1 ).
          p1 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p1. s1 = 1.
          IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
          s0 = p2. s1 = p0. PERFORM f713 USING s0 s1. s0 = l5. rv = s0. RETURN.
        ENDDO.
        s0 = p0.
        DO 1 TIMES. " block
          DO 1 TIMES. " block
            DO 1 TIMES. " block
              s1 = p0. s1 = mem_ld_i32( s1 + 16 ). p1 = s1. s2 = 224. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). s2 = p0. s2 = mem_ld_i32( s2 + 40 ). s2 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s2 + 8 ). l5 = s2.
              s2 = zcl_wasm_rt=>wrap_i64( s2 ). s3 = 0. s4 = l5. s5 = -4294967297.
              IF zcl_wasm_rt=>gt_u64( iv_a = s4 iv_b = s5 ) = abap_true. s4 = 1. ELSE. s4 = 0. ENDIF.
              IF s4 <> 0. s2 = s2. ELSE. s2 = s3. ENDIF.
              p2 = s2. s3 = -1640562687. s2 = s2 * s3. s3 = 1640562687. s2 = s2 - s3. l4 = s2. s3 = 32. s4 = p1. s5 = 212. s4 = s4 + s5. s4 = mem_ld_i32( s4 ). s3 = s3 - s4. s2 = zcl_wasm_rt=>shr_u32( iv_val = s2 iv_shift = s3 ). s3 = 2.
              s2 = zcl_wasm_rt=>shl32( iv_val = s2 iv_shift = s3 ). s1 = s1 + s2. s1 = mem_ld_i32( s1 ). p1 = s1.
              IF s1 <> 0.
                DO. " loop
                  DO 1 TIMES. " block
                    s1 = p1. s1 = mem_ld_i32( s1 + 20 ). s2 = l4.
                    IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
                    IF s1 <> 0. EXIT. ENDIF. " br_if 0
                    s1 = p1. s1 = mem_ld_i32( s1 + 44 ). s2 = p2.
                    IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
                    IF s1 <> 0. EXIT. ENDIF. " br_if 0
                    s1 = p1. s1 = mem_ld_i32( s1 + 32 ).
                    IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
                    IF s1 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
                  ENDDO.
                  s1 = p1. s1 = mem_ld_i32( s1 + 40 ). p1 = s1.
                  IF s1 <> 0. EXIT. ENDIF. " br_if 0
                ENDDO.
              ELSE.
              ENDIF.
              s1 = p0. s2 = p2. s3 = 2. PERFORM f436 USING s1 s2 s3 CHANGING s1. p1 = s1.
              IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
              s1 = 25769803776. lv_br = 2. EXIT. " br 2
            ENDDO.
            s2 = p1. s3 = p1. s3 = mem_ld_i32( s3 ). s4 = 1. s3 = s3 + s4. mem_st_i32( iv_addr = s2 iv_val = s3 ).
          ENDDO.
          s2 = p0. s3 = p1. s4 = 1. PERFORM f408 USING s2 s3 s4 CHANGING s2.
        ENDDO.
        l5 = s2. s3 = p3. s3 = mem_ld_i32( s3 + 8 ). s4 = p3. s4 = mem_ld_i32( s4 + 12 ). PERFORM f177 USING s1 s2 s3 s4. s1 = l5. rv = s1. RETURN.
      ENDDO.
      RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
    ENDDO.
    s1 = p0. s2 = p3. s2 = mem_ld_i32( s2 + 12 ). s3 = p3. s3 = mem_ld_i32( s3 ). s4 = p3. s4 = mem_ld_i32_8u( s4 + 8 ). s5 = p3. s5 = mem_ld_i32_8u( s5 + 9 ). s6 = p3. s6 = zcl_wasm_rt=>mem_ld_i32_16s( iv_mem = mv_mem iv_addr = s6 + 6 ).
    s7 = p0. s7 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s7 + 48 ). PERFORM f480 USING s1 s2 s3 s4 s5 s6 s7 CHANGING s1. l5 = s1.
  ENDDO.
  s1 = l5. rv = s1.
ENDFORM.

FORM f604 USING p0 TYPE f p1 TYPE f CHANGING rv TYPE f.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i.
  DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i.
  DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA lv_br TYPE i. s0 = p1.
  s1 = p1.
  IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
  s1 = p0. s2 = p0.
  IF s1 = s2. s1 = 1. ELSE. s1 = 0. ENDIF.
  s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
  IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = p0. s1 = p1. s0 = s0 + s1. rv = s0. RETURN.
  ELSE.
  ENDIF.
  s0 = p1. s0 = zcl_wasm_rt=>reinterpret_f64_i64( s0 ). l7 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). l2 = s0. s1 = 1072693248. s0 = s0 - s1. s1 = l7.
  s1 = zcl_wasm_rt=>wrap_i64( s1 ). l5 = s1. s0 = zcl_wasm_rt=>or32( iv_a = s0 iv_b = s1 ).
  IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = p0. PERFORM f546 USING s0 CHANGING s0. rv = s0. RETURN.
  ELSE.
  ENDIF.
  s0 = l2. s1 = 30. s0 = zcl_wasm_rt=>shr_u32( iv_val = s0 iv_shift = s1 ). s1 = 2. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). l6 = s0. s1 = p0. s1 = zcl_wasm_rt=>reinterpret_f64_i64( s1 ). l7 = s1. s2 = 63.
  s1 = zcl_wasm_rt=>shr_u64( iv_val = s1 iv_shift = s2 ). s1 = zcl_wasm_rt=>wrap_i64( s1 ). s0 = zcl_wasm_rt=>or32( iv_a = s0 iv_b = s1 ). l3 = s0.
  DO 1 TIMES. " block
    s0 = l7. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = 2147483647. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). l4 = s0. s1 = l7. s1 = zcl_wasm_rt=>wrap_i64( s1 ).
    s0 = zcl_wasm_rt=>or32( iv_a = s0 iv_b = s1 ).
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          s0 = l3. s1 = 2. s0 = s0 - s1.
          CASE s0.
            WHEN 0. EXIT.
            WHEN 1. lv_br = 1. EXIT.
            WHEN OTHERS. lv_br = 3. EXIT.
          ENDCASE.
        ENDDO.
        s0 = '3.141593'. rv = s0. RETURN.
      ENDDO.
      s0 = '-3.141593'. rv = s0. RETURN.
    ELSE.
    ENDIF.
    s0 = l2. s1 = 2147483647. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). l2 = s0. s1 = l5. s0 = zcl_wasm_rt=>or32( iv_a = s0 iv_b = s1 ).
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = '1.570796'. s1 = p0. s0 = zcl_wasm_rt=>copysign( iv_mag = s0 iv_sign = s1 ). rv = s0. RETURN.
    ELSE.
    ENDIF.
    DO 1 TIMES. " block
      s0 = l2. s1 = 2146435072.
      IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = l4. s1 = 2146435072.
        IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        s0 = l3. s1 = 3. s0 = zcl_wasm_rt=>shl32( iv_val = s0 iv_shift = s1 ). s1 = 1196720. s0 = s0 + s1. s0 = zcl_wasm_rt=>mem_ld_f64( iv_mem = mv_mem iv_addr = s0 + 0 ). rv = s0. RETURN.
      ELSE.
      ENDIF.
      s0 = l4. s1 = 2146435072.
      IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      s1 = l2. s2 = 67108864. s1 = s1 + s2. s2 = l4.
      IF zcl_wasm_rt=>ge_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
      s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = '1.570796'. s1 = p0. s0 = zcl_wasm_rt=>copysign( iv_mag = s0 iv_sign = s1 ). rv = s0. RETURN.
      ELSE.
      ENDIF.
      DO 1 TIMES. " block
        s0 = l6.
        IF s0 <> 0.
          s0 = '0.000000'. s1 = l4. s2 = 67108864. s1 = s1 + s2. s2 = l2.
          IF zcl_wasm_rt=>lt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
          IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        ELSE.
        ENDIF.
        s0 = p0. s1 = p1. s0 = s0 / s1. s0 = abs( s0 ). PERFORM f546 USING s0 CHANGING s0.
      ENDDO.
      p0 = s0.
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          DO 1 TIMES. " block
            s0 = l3.
            CASE s0.
              WHEN 0. lv_br = 4. EXIT.
              WHEN 1. EXIT.
              WHEN 2. lv_br = 1. EXIT.
              WHEN OTHERS. lv_br = 2. EXIT.
            ENDCASE.
          ENDDO.
          s0 = p0. s0 = - s0. rv = s0. RETURN.
        ENDDO.
        s0 = '3.141593'. s1 = p0. s2 = '-0.000000'. s1 = s1 + s2. s0 = s0 - s1. rv = s0. RETURN.
      ENDDO.
      s0 = p0. s1 = '-0.000000'. s0 = s0 + s1. s1 = '-3.141593'. s0 = s0 + s1. rv = s0. RETURN.
    ENDDO.
    s0 = l3. s1 = 3. s0 = zcl_wasm_rt=>shl32( iv_val = s0 iv_shift = s1 ). s1 = 1196752. s0 = s0 + s1. s0 = zcl_wasm_rt=>mem_ld_f64( iv_mem = mv_mem iv_addr = s0 + 0 ). p0 = s0.
  ENDDO.
  s0 = p0. rv = s0.
ENDFORM.

FORM f605 USING p0 TYPE i p1 TYPE int8 p2 TYPE i CHANGING rv TYPE i.
  DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE int8. DATA l6 TYPE int8. DATA l7 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i.
  DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i.
  DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i. DATA s36 TYPE i.
  DATA s37 TYPE i. DATA s38 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    s0 = p2.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = 12884901888. l6 = s0. s0 = 0. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s1 = p0. s1 = mem_ld_i32( s1 + 16 ). l4 = s1. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 128 ). l6 = s1. s1 = l4. s2 = 8589934592.
    zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s2 iv_addr = s1 + 128 CHANGING cv_mem = mv_mem ). s1 = -1.
  ENDDO.
  l4 = s1.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      s1 = p0. s2 = p1. s3 = 6. s4 = p1. s5 = 0. PERFORM f192 USING s1 s2 s3 s4 s5 CHANGING s1. l5 = s1. s2 = -4294967296. s1 = zcl_wasm_rt=>and64( iv_a = s1 iv_b = s2 ). l7 = s1. s2 = 8589934592.
      IF s1 = s2. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. EXIT. ENDIF. " br_if 0
      s1 = l7. s2 = 12884901888.
      IF s1 = s2. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. EXIT. ENDIF. " br_if 0
      s1 = -1. s2 = l7. s3 = 25769803776.
      IF s2 = s3. s2 = 1. ELSE. s2 = 0. ENDIF.
      IF s2 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s1 = p0. s2 = l5. s3 = p1. s4 = 12884901888. s5 = 0. s6 = 0. s7 = 2. PERFORM f0 USING s1 s2 s3 s4 s5 s6 s7 CHANGING s1. p1 = s1.
      DO 1 TIMES. " block
        s1 = l5. s2 = 32. s1 = zcl_wasm_rt=>shr_u64( iv_val = s1 iv_shift = s2 ). s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = -11.
        IF zcl_wasm_rt=>lt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0. EXIT. ENDIF. " br_if 0
        s1 = l5. s1 = zcl_wasm_rt=>wrap_i64( s1 ). l3 = s1. s2 = l3. s2 = mem_ld_i32( s2 ). l3 = s2. s3 = 1. s2 = s2 - s3. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = l3. s2 = 1.
        IF s1 > s2. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0. EXIT. ENDIF. " br_if 0
        s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s2 = l5. PERFORM f453 USING s1 s2.
      ENDDO.
      DO 1 TIMES. " block
        s1 = p2.
        IF s1 <> 0. EXIT. ENDIF. " br_if 0
        s1 = p1. s2 = -4294967296. s1 = zcl_wasm_rt=>and64( iv_a = s1 iv_b = s2 ). s2 = 25769803776.
        IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0.
          s1 = p1. s2 = -4294967297.
          IF zcl_wasm_rt=>gt_u64( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
          IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          s1 = p0. s2 = 1137529. s3 = 0. PERFORM f970 USING s1 s2 s3 CHANGING s1.
        ELSE.
        ENDIF.
        s1 = -1. l4 = s1.
      ENDDO.
      s1 = p1. s2 = 32. s1 = zcl_wasm_rt=>shr_u64( iv_val = s1 iv_shift = s2 ). s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = -11.
      IF zcl_wasm_rt=>lt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. EXIT. ENDIF. " br_if 0
      s1 = p1. s1 = zcl_wasm_rt=>wrap_i64( s1 ). l3 = s1. s2 = l3. s2 = mem_ld_i32( s2 ). l3 = s2. s3 = 1. s2 = s2 - s3. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = l3. s2 = 1.
      IF s1 > s2. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. EXIT. ENDIF. " br_if 0
      s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s2 = p1. PERFORM f453 USING s1 s2.
    ENDDO.
    s1 = l4.
  ENDDO.
  s2 = p2.
  IF s2 <> 0.
    DO 1 TIMES. " block
      s2 = p0. s2 = mem_ld_i32( s2 + 16 ). p0 = s2. s2 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s2 + 128 ). p1 = s2. s3 = 32. s2 = zcl_wasm_rt=>shr_u64( iv_val = s2 iv_shift = s3 ). s2 = zcl_wasm_rt=>wrap_i64( s2 ). s3 = -11.
      IF zcl_wasm_rt=>lt_u32( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
      IF s2 <> 0. EXIT. ENDIF. " br_if 0
      s2 = p1. s2 = zcl_wasm_rt=>wrap_i64( s2 ). p2 = s2. s3 = p2. s3 = mem_ld_i32( s3 ). p2 = s3. s4 = 1. s3 = s3 - s4. mem_st_i32( iv_addr = s2 iv_val = s3 ). s2 = p2. s3 = 1.
      IF s2 > s3. s2 = 1. ELSE. s2 = 0. ENDIF.
      IF s2 <> 0. EXIT. ENDIF. " br_if 0
      s2 = p0. s3 = p1. PERFORM f453 USING s2 s3.
    ENDDO.
    s2 = p0. s3 = l6. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s3 iv_addr = s2 + 128 CHANGING cv_mem = mv_mem ).
  ELSE.
  ENDIF.
  rv = s1.
ENDFORM.

FORM f606 USING p0 TYPE i p1 TYPE i p2 TYPE i.
  DATA l3 TYPE i. DATA l4 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i.
  DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i.
  DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 32. s0 = s0 - s1. l3 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      s0 = p1. s0 = mem_ld_i32( s0 ). s0 = mem_ld_i32( s0 ). p1 = s0. s0 = mem_ld_i32( s0 ). s1 = 1215069.
      IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = p1. s0 = mem_ld_i32_8u( s0 + 8 ). l4 = s0. s0 = p1. s1 = 1. mem_st_i32_8( iv_addr = s0 + 8 iv_val = s1 ). s0 = l3. s1 = l4. mem_st_i32_8( iv_addr = s0 + 4 iv_val = s1 ). s0 = l4.
        IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        s0 = l3. s1 = 0. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 20 CHANGING cv_mem = mv_mem ). s0 = l3. s1 = 17179869185. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 12 CHANGING cv_mem = mv_mem ).
        s0 = l3. s1 = 1116864. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = l3. s1 = 4. s0 = s0 + s1. s1 = l3. s2 = 8. s1 = s1 + s2. PERFORM f1181 USING s0 s1.
        RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
      ELSE.
      ENDIF.
      s0 = p1. s0 = mem_ld_i32( s0 + 4 ). s1 = 1. s0 = s0 + s1. l4 = s0.
      IF s0 <> 0.
        s0 = p1. s1 = l4. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). lv_br = 2. EXIT. " br 2
      ELSE.
      ENDIF.
      s0 = 1117008. s1 = 38. s2 = 1117084. PERFORM f1058 USING s0 s1 s2.
      RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
    ENDDO.
    s0 = p1. s1 = 1. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = p1. s1 = 1215069. mem_st_i32( iv_addr = s0 iv_val = s1 ).
  ENDDO.
  s0 = l3. s1 = p1. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = l3. s1 = 4. mem_st_i32_8( iv_addr = s0 + 8 iv_val = s1 ). s0 = l3. s1 = l3. s2 = 4. s1 = s1 + s2. mem_st_i32( iv_addr = s0 + 16 iv_val = s1 ).
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      s0 = l3. s1 = 8. s0 = s0 + s1. s1 = 1114476. s2 = p2. PERFORM f360 USING s0 s1 s2 CHANGING s0.
      IF s0 <> 0.
        s0 = l3. s0 = mem_ld_i32_8u( s0 + 8 ). s1 = 4.
        IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        s0 = p0. s1 = 4795897921667074. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ). lv_br = 2. EXIT. " br 2
      ELSE.
      ENDIF.
      s0 = p0. s1 = 4. mem_st_i32_8( iv_addr = s0 iv_val = s1 ). s0 = l3. s0 = mem_ld_i32( s0 + 12 ). p0 = s0. s0 = l3. s0 = mem_ld_i32_8u( s0 + 8 ). p1 = s0. s1 = 4.
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
    s0 = p0. s1 = l3. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 8 ). zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ).
  ENDDO.
  s0 = l3. s0 = mem_ld_i32( s0 + 4 ). p0 = s0. s1 = p0. s1 = mem_ld_i32( s1 + 4 ). s2 = 1. s1 = s1 - s2. p1 = s1. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = p1.
  IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = p0. s1 = 0. mem_st_i32_8( iv_addr = s0 + 8 iv_val = s1 ). s0 = p0. s1 = 0. mem_st_i32( iv_addr = s0 iv_val = s1 ).
  ELSE.
  ENDIF.
  s0 = l3. s1 = 32. s0 = s0 + s1. gv_g0 = s0.
ENDFORM.

FORM f607 USING p0 TYPE int8 p1 TYPE i p2 TYPE i CHANGING rv TYPE i.
  DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE i. DATA l8 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i.
  DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA lv_br TYPE i.
  s0 = gv_g0. s1 = 48. s0 = s0 - s1. l5 = s0. gv_g0 = s0. s0 = 39. l3 = s0.
  DO 1 TIMES. " block
    s0 = p0. s1 = 10000.
    IF zcl_wasm_rt=>lt_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p0. l8 = s0. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    DO. " loop
      s0 = l5. s1 = 9. s0 = s0 + s1. s1 = l3. s0 = s0 + s1. l4 = s0. s1 = 4. s0 = s0 - s1. s1 = p0. s2 = 10000. s1 = zcl_wasm_rt=>div_u64( iv_a = s1 iv_b = s2 ). l8 = s1. s2 = 55536. s1 = s1 * s2. s2 = p0. s1 = s1 + s2.
      s1 = zcl_wasm_rt=>wrap_i64( s1 ). l6 = s1. s2 = 65535. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). s2 = 100. s1 = zcl_wasm_rt=>div_u32( iv_a = s1 iv_b = s2 ). l7 = s1. s2 = 1. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ).
      s2 = 1091720. s1 = s1 + s2. s1 = mem_ld_i32_16u( s1 ). mem_st_i32_16( iv_addr = s0 iv_val = s1 ). s0 = l4. s1 = 2. s0 = s0 - s1. s1 = l7. s2 = -100. s1 = s1 * s2. s2 = l6. s1 = s1 + s2. s2 = 65535.
      s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). s2 = 1. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s2 = 1091720. s1 = s1 + s2. s1 = mem_ld_i32_16u( s1 ). mem_st_i32_16( iv_addr = s0 iv_val = s1 ). s0 = l3. s1 = 4.
      s0 = s0 - s1. l3 = s0. s0 = p0. s1 = 99999999.
      IF zcl_wasm_rt=>gt_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      s1 = l8. p0 = s1.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
    ENDDO.
  ENDDO.
  s0 = l8. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l6 = s0. l4 = s0. s1 = 99.
  IF zcl_wasm_rt=>gt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = l3. s1 = 2. s0 = s0 - s1. l3 = s0. s1 = l5. s2 = 9. s1 = s1 + s2. s0 = s0 + s1. s1 = l6. s2 = l6. s3 = 65535. s2 = zcl_wasm_rt=>and32( iv_a = s2 iv_b = s3 ). s3 = 100. s2 = zcl_wasm_rt=>div_u32( iv_a = s2 iv_b = s3 ). l4 = s2.
    s3 = -100. s2 = s2 * s3. s1 = s1 + s2. s2 = 65535. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). s2 = 1. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s2 = 1091720. s1 = s1 + s2. s1 = mem_ld_i32_16u( s1 ).
    mem_st_i32_16( iv_addr = s0 iv_val = s1 ).
  ELSE.
  ENDIF.
  DO 1 TIMES. " block
    s0 = l4. s1 = 10.
    IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = l3. s1 = 2. s0 = s0 - s1. l3 = s0. s1 = l5. s2 = 9. s1 = s1 + s2. s0 = s0 + s1. s1 = l4. s2 = 1. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s2 = 1091720. s1 = s1 + s2. s1 = mem_ld_i32_16u( s1 ).
      mem_st_i32_16( iv_addr = s0 iv_val = s1 ). lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = l3. s1 = 1. s0 = s0 - s1. l3 = s0. s1 = l5. s2 = 9. s1 = s1 + s2. s0 = s0 + s1. s1 = l4. s2 = 48. s1 = zcl_wasm_rt=>or32( iv_a = s1 iv_b = s2 ). mem_st_i32_8( iv_addr = s0 iv_val = s1 ).
  ENDDO.
  s0 = p2. s1 = p1. s2 = 1. s3 = 0. s4 = l5. s5 = 9. s4 = s4 + s5. s5 = l3. s4 = s4 + s5. s5 = 39. s6 = l3. s5 = s5 - s6. PERFORM f358 USING s0 s1 s2 s3 s4 s5 CHANGING s0. s1 = l5. s2 = 48. s1 = s1 + s2. gv_g0 = s1. rv = s0.
ENDFORM.

FORM f608 USING p0 TYPE i p1 TYPE i p2 TYPE int8 p3 TYPE int8 p4 TYPE i CHANGING rv TYPE i.
  DATA l5 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i.
  DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i.
  DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l5 = s0. gv_g0 = s0. s0 = l5. s1 = p3.
  zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 8 CHANGING cv_mem = mv_mem ).
  DO 1 TIMES. " block
    s0 = p1.
    IF s0 <> 0.
      s0 = p1. s1 = p1. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s1 = p1. s1 = zcl_wasm_rt=>extend_u32( s1 ). s2 = -4294967296. s1 = zcl_wasm_rt=>or64( iv_a = s1 iv_b = s2 ). p3 = s1.
      s2 = p2. s3 = 12884901888. s4 = 1. s5 = l5. s6 = 8. s5 = s5 + s6. s6 = 2. PERFORM f0 USING s0 s1 s2 s3 s4 s5 s6 CHANGING s0. p2 = s0. s0 = p1. s1 = p1. s1 = mem_ld_i32( s1 ). p1 = s1. s2 = 1. s1 = s1 - s2.
      mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p1. s1 = 1.
      IF s0 <= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = p3. PERFORM f453 USING s0 s1.
      ELSE.
      ENDIF.
      DO 1 TIMES. " block
        s0 = l5. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 8 ). p3 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
        IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = p3. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p1 = s0. s1 = p1. s1 = mem_ld_i32( s1 ). p1 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p1. s1 = 1.
        IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = p3. PERFORM f453 USING s0 s1.
      ENDDO.
      s0 = -1. p1 = s0. s0 = p2. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 25769803776.
      IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = 1. p1 = s0. s0 = p2. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
      IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p2. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p1 = s0. s1 = p1. s1 = mem_ld_i32( s1 ). p4 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = 1. p1 = s0. s0 = p4. s1 = 1.
      IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = p2. PERFORM f453 USING s0 s1. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = p0. s1 = p3. PERFORM f1164 USING s0 s1. s0 = p4. s1 = 16384. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = 0. p1 = s0. s0 = p4. s1 = 32768. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p0. s1 = 16. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). s1 = 140. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). p4 = s0.
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p4. s0 = mem_ld_i32_8u( s0 + 40 ). s1 = 1. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
    ELSE.
    ENDIF.
    s0 = p0. s1 = 1134651. s2 = 0. PERFORM f970 USING s0 s1 s2 CHANGING s0. s0 = -1. p1 = s0.
  ENDDO.
  s0 = l5. s1 = 16. s0 = s0 + s1. gv_g0 = s0. s0 = p1. rv = s0.
ENDFORM.

FORM f609 USING p0 TYPE i p1 TYPE i p2 TYPE i CHANGING rv TYPE i.
  DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i.
  DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i.
  DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i. DATA s36 TYPE i. DATA lv_br TYPE i. s0 = gv_g0.
  s1 = 208. s0 = s0 - s1. l3 = s0. gv_g0 = s0. s0 = l3. s1 = p2. mem_st_i32( iv_addr = s0 + 204 iv_val = s1 ). s0 = l3. s1 = 192. s0 = s0 + s1. s1 = 0.
  zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ). s0 = l3. s1 = 184. s0 = s0 + s1. s1 = 0. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ). s0 = l3.
  s1 = 176. s0 = s0 + s1. s1 = 0. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ). s0 = l3. s1 = 0. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 168 CHANGING cv_mem = mv_mem ).
  s0 = l3. s1 = 0. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 160 CHANGING cv_mem = mv_mem ). s0 = l3. s1 = p2. mem_st_i32( iv_addr = s0 + 200 iv_val = s1 ). s0 = 0. s1 = p1. s2 = l3. s3 = 200. s2 = s2 + s3. s3 = l3.
  s4 = 80. s3 = s3 + s4. s4 = l3. s5 = 160. s4 = s4 + s5. PERFORM f9 USING s0 s1 s2 s3 s4 CHANGING s0. s1 = 0.
  IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = -1.
  ELSE.
    s1 = p0. s1 = mem_ld_i32( s1 ). l5 = s1. s1 = p0. s1 = mem_ld_i32( s1 + 60 ). s2 = 0.
    IF s1 <= s2. s1 = 1. ELSE. s1 = 0. ENDIF.
    IF s1 <> 0.
      s1 = p0. s2 = l5. s3 = -33. s2 = zcl_wasm_rt=>and32( iv_a = s2 iv_b = s3 ). mem_st_i32( iv_addr = s1 iv_val = s2 ).
    ELSE.
    ENDIF.
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          s1 = p0. s1 = mem_ld_i32( s1 + 44 ).
          IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
          IF s1 <> 0.
            s1 = p0. s2 = 80. mem_st_i32( iv_addr = s1 + 44 iv_val = s2 ). s1 = p0. s2 = 0. mem_st_i32( iv_addr = s1 + 24 iv_val = s2 ). s1 = p0. s2 = 0.
            zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s2 iv_addr = s1 + 16 CHANGING cv_mem = mv_mem ). s1 = p0. s1 = mem_ld_i32( s1 + 40 ). l4 = s1. s1 = p0. s2 = l3. mem_st_i32( iv_addr = s1 + 40 iv_val = s2 ). lv_br = 1. EXIT. " br 1
          ELSE.
          ENDIF.
          s1 = p0. s1 = mem_ld_i32( s1 + 16 ).
          IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        ENDDO.
        s1 = -1. s2 = p0. PERFORM f1071 USING s2 CHANGING s2.
        IF s2 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      ENDDO.
      s1 = p0. s2 = p1. s3 = l3. s4 = 200. s3 = s3 + s4. s4 = l3. s5 = 80. s4 = s4 + s5. s5 = l3. s6 = 160. s5 = s5 + s6. PERFORM f9 USING s1 s2 s3 s4 s5 CHANGING s1.
    ENDDO.
    p2 = s1. s1 = l4.
    IF s1 <> 0.
      s1 = p0. s2 = 0. s3 = 0. s4 = p0. s4 = mem_ld_i32( s4 + 32 ).
      DATA(lv_ci_func) = mt_tab0[ s4 + 1 ]. " call_indirect
      s1 = dispatch_t11( iv_idx = lv_ci_func p0 = s1 p1 = s2 p2 = s3 ). s1 = p0. s2 = 0. mem_st_i32( iv_addr = s1 + 44 iv_val = s2 ). s1 = p0. s2 = l4. mem_st_i32( iv_addr = s1 + 40 iv_val = s2 ). s1 = p0. s2 = 0.
      mem_st_i32( iv_addr = s1 + 24 iv_val = s2 ). s1 = p0. s1 = mem_ld_i32( s1 + 20 ). p1 = s1. s1 = p0. s2 = 0. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s2 iv_addr = s1 + 16 CHANGING cv_mem = mv_mem ). s1 = p2. s2 = -1. s3 = p1.
      IF s3 <> 0. s1 = s1. ELSE. s1 = s2. ENDIF.
      p2 = s1.
    ELSE.
    ENDIF.
    s1 = p0. s2 = p0. s2 = mem_ld_i32( s2 ). p0 = s2. s3 = l5. s4 = 32. s3 = zcl_wasm_rt=>and32( iv_a = s3 iv_b = s4 ). s2 = zcl_wasm_rt=>or32( iv_a = s2 iv_b = s3 ). mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = -1. s2 = p2. s3 = p0.
    s4 = 32. s3 = zcl_wasm_rt=>and32( iv_a = s3 iv_b = s4 ).
    IF s3 <> 0. s1 = s1. ELSE. s1 = s2. ENDIF.
  ENDIF.
  s2 = l3. s3 = 208. s2 = s2 + s3. gv_g0 = s2. rv = s1.
ENDFORM.

FORM f610 USING p0 TYPE i p1 TYPE i p2 TYPE i.
  DATA l3 TYPE i. DATA l4 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i.
  DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i.
  DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 32. s0 = s0 - s1. l3 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      s0 = p1. s0 = mem_ld_i32( s0 ). p1 = s0. s0 = mem_ld_i32( s0 ). s1 = 1215069.
      IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = p1. s0 = mem_ld_i32_8u( s0 + 8 ). l4 = s0. s0 = p1. s1 = 1. mem_st_i32_8( iv_addr = s0 + 8 iv_val = s1 ). s0 = l3. s1 = l4. mem_st_i32_8( iv_addr = s0 + 4 iv_val = s1 ). s0 = l4.
        IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        s0 = l3. s1 = 0. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 20 CHANGING cv_mem = mv_mem ). s0 = l3. s1 = 17179869185. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 12 CHANGING cv_mem = mv_mem ).
        s0 = l3. s1 = 1116864. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = l3. s1 = 4. s0 = s0 + s1. s1 = l3. s2 = 8. s1 = s1 + s2. PERFORM f1181 USING s0 s1.
        RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
      ELSE.
      ENDIF.
      s0 = p1. s0 = mem_ld_i32( s0 + 4 ). s1 = 1. s0 = s0 + s1. l4 = s0.
      IF s0 <> 0.
        s0 = p1. s1 = l4. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). lv_br = 2. EXIT. " br 2
      ELSE.
      ENDIF.
      s0 = 1117008. s1 = 38. s2 = 1117084. PERFORM f1058 USING s0 s1 s2.
      RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
    ENDDO.
    s0 = p1. s1 = 1. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = p1. s1 = 1215069. mem_st_i32( iv_addr = s0 iv_val = s1 ).
  ENDDO.
  s0 = l3. s1 = p1. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = l3. s1 = 4. mem_st_i32_8( iv_addr = s0 + 8 iv_val = s1 ). s0 = l3. s1 = l3. s2 = 4. s1 = s1 + s2. mem_st_i32( iv_addr = s0 + 16 iv_val = s1 ).
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      s0 = l3. s1 = 8. s0 = s0 + s1. s1 = 1114524. s2 = p2. PERFORM f360 USING s0 s1 s2 CHANGING s0.
      IF s0 <> 0.
        s0 = l3. s0 = mem_ld_i32_8u( s0 + 8 ). s1 = 4.
        IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        s0 = p0. s1 = 4795897921667074. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ). lv_br = 2. EXIT. " br 2
      ELSE.
      ENDIF.
      s0 = p0. s1 = 4. mem_st_i32_8( iv_addr = s0 iv_val = s1 ). s0 = l3. s0 = mem_ld_i32( s0 + 12 ). p0 = s0. s0 = l3. s0 = mem_ld_i32_8u( s0 + 8 ). p1 = s0. s1 = 4.
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
    s0 = p0. s1 = l3. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 8 ). zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ).
  ENDDO.
  s0 = l3. s0 = mem_ld_i32( s0 + 4 ). p0 = s0. s1 = p0. s1 = mem_ld_i32( s1 + 4 ). s2 = 1. s1 = s1 - s2. p1 = s1. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = p1.
  IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = p0. s1 = 0. mem_st_i32_8( iv_addr = s0 + 8 iv_val = s1 ). s0 = p0. s1 = 0. mem_st_i32( iv_addr = s0 iv_val = s1 ).
  ELSE.
  ENDIF.
  s0 = l3. s1 = 32. s0 = s0 + s1. gv_g0 = s0.
ENDFORM.

FORM f611 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i CHANGING rv TYPE int8.
  DATA l4 TYPE i. DATA l5 TYPE int8. DATA l6 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i.
  DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i.
  DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i. DATA s36 TYPE i. DATA s37 TYPE i. DATA s38 TYPE i.
  DATA s39 TYPE i. DATA s40 TYPE i. DATA s41 TYPE i. DATA s42 TYPE i. DATA s43 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l4 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      s0 = p2.
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        lv_br = 1. EXIT. " br 1
      ELSE.
      ENDIF.
      s0 = p3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). l5 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
      IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = l5. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p2 = s0. s1 = p2. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
      ELSE.
      ENDIF.
      s0 = p0. s1 = l5. s2 = 1. PERFORM f287 USING s0 s1 s2 CHANGING s0. l5 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 25769803776.
      IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          s0 = l5. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = 11. s0 = s0 + s1.
          CASE s0.
            WHEN 0. lv_br = 1. EXIT.
            WHEN 1. EXIT.
            WHEN 2. EXIT.
            WHEN OTHERS. lv_br = 2. EXIT.
          ENDCASE.
        ENDDO.
        s0 = l5. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p2 = s0. s1 = 4. s0 = s0 + s1. s1 = l4. s2 = 8. s1 = s1 + s2. PERFORM f437 USING s0 s1. s0 = p2. s1 = p2. s1 = mem_ld_i32( s1 ). p2 = s1. s2 = 1. s1 = s1 - s2.
        mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p2. s1 = 1.
        IF s0 <= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = l5. PERFORM f453 USING s0 s1.
        ELSE.
        ENDIF.
        s0 = -51539607552. s1 = l4. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 8 ). l5 = s1. s2 = 9221120288580698112. s1 = s1 - s2. s2 = l5. s3 = 9223372036854775807. s2 = zcl_wasm_rt=>and64( iv_a = s2 iv_b = s3 ).
        s3 = 9218868437227405312.
        IF zcl_wasm_rt=>gt_u64( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
        IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
        l5 = s0. lv_br = 1. EXIT. " br 1
      ENDDO.
      s0 = p0. s1 = l5. s2 = 0. PERFORM f341 USING s0 s1 s2 CHANGING s0. l6 = s0. s0 = l5. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p2 = s0. s1 = p2. s1 = mem_ld_i32( s1 ). p2 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
      s0 = p2. s1 = 1.
      IF s0 <= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = l5. PERFORM f453 USING s0 s1.
      ELSE.
      ENDIF.
      s0 = l6. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 25769803776.
      IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = l6. l5 = s0. lv_br = 2. EXIT. " br 2
      ELSE.
      ENDIF.
      s0 = p0. s1 = l6. s2 = 0. PERFORM f287 USING s0 s1 s2 CHANGING s0. l5 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 25769803776.
      IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
    ENDDO.
    s0 = p1. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 12884901888.
    IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s1 = p1. s2 = 4. PERFORM f508 USING s0 s1 s2 CHANGING s0. p1 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 25769803776.
    IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p0. s1 = p1. s2 = l5. PERFORM f865 USING s0 s1 s2.
    ELSE.
    ENDIF.
    s0 = p1. l5 = s0.
  ENDDO.
  s0 = l4. s1 = 16. s0 = s0 + s1. gv_g0 = s0. s0 = l5. rv = s0.
ENDFORM.

FORM f612 USING p0 TYPE i p1 TYPE i p2 TYPE i CHANGING rv TYPE i.
  DATA l3 TYPE i. DATA l4 TYPE int8. DATA l5 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i.
  DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i.
  DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        s0 = p1. s0 = mem_ld_i32( s0 + 80 ). l3 = s0.
        IF s0 <> 0.
          s0 = p0. s1 = p1. s2 = l3.
          DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
          s0 = dispatch_t7( iv_idx = lv_ci_func p0 = s0 p1 = s1 ). s1 = 0.
          IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          lv_br = 3. EXIT. " br 3
        ELSE.
        ENDIF.
        s0 = p0. s1 = p1. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 72 ). s2 = 12884901888. s3 = 0. s4 = 0. s5 = p1. PERFORM f447 USING s0 s1 s2 s3 s4 s5 CHANGING s0. l4 = s0. s1 = -4294967296.
        s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 25769803776.
        IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        DO 1 TIMES. " block
          s0 = l4. s1 = -4294967296.
          IF zcl_wasm_rt=>lt_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = l4. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p1 = s0. s0 = mem_ld_i32_16u( s0 + 6 ). s1 = 49.
          IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = p1. s0 = mem_ld_i32( s0 + 32 ). l3 = s0.
          IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          DO 1 TIMES. " block
            DO 1 TIMES. " block
              s0 = l3. s0 = mem_ld_i32( s0 ). s1 = 1. s0 = s0 - s1.
              CASE s0.
                WHEN 0. EXIT.
                WHEN 1. lv_br = 1. EXIT.
                WHEN OTHERS. lv_br = 2. EXIT.
              ENDCASE.
            ENDDO.
            s0 = p1. s1 = p1. s1 = mem_ld_i32( s1 ). p1 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p1. s1 = 1.
            IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. lv_br = 4. EXIT. ENDIF. " br_if 4
            s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = l4. PERFORM f453 USING s0 s1. lv_br = 4. EXIT. " br 4
          ENDDO.
          s0 = l3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 24 ). l5 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
          IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0.
            s0 = l5. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l3 = s0. s1 = l3. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
          ELSE.
          ENDIF.
          s0 = p2. s1 = l5. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ). s0 = p1. s1 = p1. s1 = mem_ld_i32( s1 ). p1 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p1.
          s1 = 1.
          IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
          s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = l4. PERFORM f453 USING s0 s1. s0 = -1. rv = s0. RETURN.
        ENDDO.
        DO 1 TIMES. " block
          s0 = l4. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
          IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = l4. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p1 = s0. s1 = p1. s1 = mem_ld_i32( s1 ). p1 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p1. s1 = 1.
          IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = l4. PERFORM f453 USING s0 s1.
        ENDDO.
        s0 = p0. s1 = 1143901. s2 = 0. PERFORM f970 USING s0 s1 s2 CHANGING s0.
      ENDDO.
      s0 = p0. s0 = mem_ld_i32( s0 + 16 ). p0 = s0. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 128 ). l4 = s0. s0 = p0. s1 = 8589934592.
      zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 128 CHANGING cv_mem = mv_mem ). s0 = p2. s1 = l4. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ).
    ENDDO.
    s0 = -1. rv = s0. RETURN.
  ENDDO.
  s0 = p2. s1 = 12884901888. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ). s0 = 0. rv = s0.
ENDFORM.

FORM f613 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i.
  DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i.
  DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l2 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        s0 = p1. s1 = 128.
        IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = l2. s1 = 0. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = p1. s1 = 2048.
          IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          s0 = p1. s1 = 65536.
          IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0.
            s0 = l2. s1 = p1. s2 = 12. s1 = zcl_wasm_rt=>shr_u32( iv_val = s1 iv_shift = s2 ). s2 = 224. s1 = zcl_wasm_rt=>or32( iv_a = s1 iv_b = s2 ). mem_st_i32_8( iv_addr = s0 + 12 iv_val = s1 ). s0 = l2. s1 = p1. s2 = 6.
            s1 = zcl_wasm_rt=>shr_u32( iv_val = s1 iv_shift = s2 ). s2 = 63. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). s2 = 128. s1 = zcl_wasm_rt=>or32( iv_a = s1 iv_b = s2 ). mem_st_i32_8( iv_addr = s0 + 13 iv_val = s1 ). s0 = 2.
            l4 = s0. s0 = 3. lv_br = 3. EXIT. " br 3
          ELSE.
          ENDIF.
          s1 = l2. s2 = p1. s3 = 6. s2 = zcl_wasm_rt=>shr_u32( iv_val = s2 iv_shift = s3 ). s3 = 63. s2 = zcl_wasm_rt=>and32( iv_a = s2 iv_b = s3 ). s3 = 128. s2 = zcl_wasm_rt=>or32( iv_a = s2 iv_b = s3 ).
          mem_st_i32_8( iv_addr = s1 + 14 iv_val = s2 ). s1 = l2. s2 = p1. s3 = 12. s2 = zcl_wasm_rt=>shr_u32( iv_val = s2 iv_shift = s3 ). s3 = 63. s2 = zcl_wasm_rt=>and32( iv_a = s2 iv_b = s3 ). s3 = 128.
          s2 = zcl_wasm_rt=>or32( iv_a = s2 iv_b = s3 ). mem_st_i32_8( iv_addr = s1 + 13 iv_val = s2 ). s1 = l2. s2 = p1. s3 = 18. s2 = zcl_wasm_rt=>shr_u32( iv_val = s2 iv_shift = s3 ). s3 = 7.
          s2 = zcl_wasm_rt=>and32( iv_a = s2 iv_b = s3 ). s3 = 240. s2 = zcl_wasm_rt=>or32( iv_a = s2 iv_b = s3 ). mem_st_i32_8( iv_addr = s1 + 12 iv_val = s2 ). s1 = 3. l4 = s1. s1 = 4. lv_br = 2. EXIT. " br 2
        ELSE.
        ENDIF.
        s2 = p0. s2 = mem_ld_i32( s2 + 8 ). l3 = s2. s3 = p0. s3 = mem_ld_i32( s3 ).
        IF s2 = s3. s2 = 1. ELSE. s2 = 0. ENDIF.
        IF s2 <> 0.
          s2 = p0. PERFORM f853 USING s2.
        ELSE.
        ENDIF.
        s2 = p0. s3 = l3. s4 = 1. s3 = s3 + s4. mem_st_i32( iv_addr = s2 + 8 iv_val = s3 ). s2 = p0. s2 = mem_ld_i32( s2 + 4 ). s3 = l3. s2 = s2 + s3. s3 = p1. mem_st_i32_8( iv_addr = s2 iv_val = s3 ). lv_br = 2. EXIT. " br 2
      ENDDO.
      s2 = l2. s3 = p1. s4 = 6. s3 = zcl_wasm_rt=>shr_u32( iv_val = s3 iv_shift = s4 ). s4 = 192. s3 = zcl_wasm_rt=>or32( iv_a = s3 iv_b = s4 ). mem_st_i32_8( iv_addr = s2 + 12 iv_val = s3 ). s2 = 1. l4 = s2. s2 = 2.
    ENDDO.
    l3 = s2. s2 = l2. s3 = 12. s2 = s2 + s3. s3 = l4. s2 = zcl_wasm_rt=>or32( iv_a = s2 iv_b = s3 ). s3 = p1. s4 = 63. s3 = zcl_wasm_rt=>and32( iv_a = s3 iv_b = s4 ). s4 = 128. s3 = zcl_wasm_rt=>or32( iv_a = s3 iv_b = s4 ).
    mem_st_i32_8( iv_addr = s2 iv_val = s3 ). s2 = l3. s3 = p0. s3 = mem_ld_i32( s3 ). s4 = p0. s4 = mem_ld_i32( s4 + 8 ). p1 = s4. s3 = s3 - s4.
    IF zcl_wasm_rt=>gt_u32( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
    IF s2 <> 0.
      s2 = p0. s3 = p1. s4 = l3. PERFORM f828 USING s2 s3 s4. s2 = p0. s2 = mem_ld_i32( s2 + 8 ). p1 = s2.
    ELSE.
    ENDIF.
    s2 = p0. s2 = mem_ld_i32( s2 + 4 ). s3 = p1. s2 = s2 + s3. s3 = l2. s4 = 12. s3 = s3 + s4. s4 = l3. PERFORM f216 USING s2 s3 s4 CHANGING s2. s2 = p0. s3 = p1. s4 = l3. s3 = s3 + s4. mem_st_i32( iv_addr = s2 + 8 iv_val = s3 ).
  ENDDO.
  s2 = l2. s3 = 16. s2 = s2 + s3. gv_g0 = s2. s2 = 0. rv = s2.
ENDFORM.

FORM f614 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i CHANGING rv TYPE int8.
  DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE int8. DATA l7 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i.
  DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i.
  DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l4 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    s0 = p1. s1 = -8589934592. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 8589934592.
    IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p0. s1 = 1142123. s2 = 0. PERFORM f970 USING s0 s1 s2 CHANGING s0. s0 = 25769803776. p1 = s0. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = p0. s1 = p1. s2 = 0. PERFORM f341 USING s0 s1 s2 CHANGING s0. l6 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 25769803776.
    IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = l6. p1 = s0. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = p3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). p1 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
    IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p2 = s0. s1 = p2. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
    ELSE.
    ENDIF.
    s0 = l6. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p2 = s0. s0 = p0. s1 = l4. s2 = 12. s1 = s1 + s2. s2 = p1. PERFORM f684 USING s0 s1 s2 CHANGING s0.
    IF s0 <> 0.
      s0 = 25769803776. p1 = s0. s0 = l6. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
      IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p2. s1 = p2. s1 = mem_ld_i32( s1 ). p2 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p2. s1 = 1.
      IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = l6. PERFORM f453 USING s0 s1. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = -51539607552. p1 = s0.
    DO 1 TIMES. " block
      s0 = l4. s0 = mem_ld_i32( s0 + 12 ). p3 = s0. s1 = 0.
      IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p3. s1 = p2. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 4 ). l7 = s1. s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = 2147483647. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ).
      IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p2. s1 = 16. s0 = s0 + s1. l5 = s0. s0 = l7. s1 = 2147483648. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 0.
      IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = l5. s1 = p3. s2 = 1. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s0 = zcl_wasm_rt=>mem_ld_i64_ext( iv_mem = mv_mem iv_addr = s0 + 0 iv_op = 51 ). p1 = s0. lv_br = 1. EXIT. " br 1
      ELSE.
      ENDIF.
      s0 = p3. s1 = l5. s0 = s0 + s1. s0 = zcl_wasm_rt=>mem_ld_i64_ext( iv_mem = mv_mem iv_addr = s0 + 0 iv_op = 49 ). p1 = s0.
    ENDDO.
    s0 = l6. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
    IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p2. s1 = p2. s1 = mem_ld_i32( s1 ). p2 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p2. s1 = 1.
    IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = l6. PERFORM f453 USING s0 s1.
  ENDDO.
  s0 = l4. s1 = 16. s0 = s0 + s1. gv_g0 = s0. s0 = p1. rv = s0.
ENDFORM.

FORM f615 USING p0 TYPE i p1 TYPE i p2 TYPE int8 p3 TYPE i CHANGING rv TYPE i.
  DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE i. DATA l8 TYPE i. DATA l9 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i.
  DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i.
  DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA lv_br TYPE i. s0 = p1. s1 = 40. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). l7 = s0. s1 = 1. s0 = s0 + s1. l5 = s0.
  DO 1 TIMES. " block
    s0 = p1. s0 = mem_ld_i32( s0 + 20 ). l4 = s0. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). l9 = s0. s1 = 4294967295.
    IF zcl_wasm_rt=>gt_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l5. s1 = l9. s1 = zcl_wasm_rt=>wrap_i64( s1 ).
    IF zcl_wasm_rt=>le_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p1. s0 = mem_ld_i32( s0 + 16 ). s1 = 51. s0 = s0 + s1. s0 = mem_ld_i32_8u( s0 ). s1 = 8. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p0. s1 = p2. PERFORM f1164 USING s0 s1. s0 = p0. s1 = p3. s2 = 48. PERFORM f950 USING s0 s1 s2 CHANGING s0. rv = s0. RETURN.
    ELSE.
    ENDIF.
    s0 = l4. s1 = l5. s1 = zcl_wasm_rt=>extend_u32( s1 ). zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ).
  ENDDO.
  DO 1 TIMES. " block
    s0 = l5. s1 = p1. s1 = mem_ld_i32( s1 + 32 ). l4 = s1.
    IF zcl_wasm_rt=>le_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    DO 1 TIMES. " block
      s0 = p0. s0 = mem_ld_i32( s0 + 16 ). p3 = s0. s1 = 16. s0 = s0 + s1. s1 = p1. s1 = mem_ld_i32( s1 + 36 ). s2 = l5. s3 = l4. s4 = 3. s3 = s3 * s4. s4 = 1. s3 = zcl_wasm_rt=>shr_u32( iv_val = s3 iv_shift = s4 ). l4 = s3. s4 = l4.
      s5 = l5.
      IF s4 < s5. s4 = 1. ELSE. s4 = 0. ENDIF.
      IF s4 <> 0. s2 = s2. ELSE. s2 = s3. ENDIF.
      l8 = s2. s3 = 3. s2 = zcl_wasm_rt=>shl32( iv_val = s2 iv_shift = s3 ). l6 = s2. s3 = p3. s3 = mem_ld_i32( s3 + 8 ).
      DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
      s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). p3 = s0. s0 = p0. s0 = mem_ld_i32( s0 + 16 ). l4 = s0.
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          s0 = p3.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = l6.
          IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = -1. s1 = l4. s1 = mem_ld_i32_8u( s1 + 136 ).
          IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          s0 = l4. s1 = 1. mem_st_i32_8( iv_addr = s0 + 136 iv_val = s1 ). s0 = p0. s1 = 1134898. s2 = 0. PERFORM f969 USING s0 s1 s2 CHANGING s0. s0 = l4. s1 = 0. mem_st_i32_8( iv_addr = s0 + 136 iv_val = s1 ). s0 = -1.
          lv_br = 2. EXIT. " br 2
        ENDDO.
        s1 = p3. s2 = l4. s2 = mem_ld_i32( s2 + 12 ).
        DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
        s1 = dispatch_t3( iv_idx = lv_ci_func p0 = s1 ). l4 = s1. s1 = -1. s2 = p3.
        IF s2 = 0. s2 = 1. ELSE. s2 = 0. ENDIF.
        IF s2 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        s1 = p1. s2 = p3. mem_st_i32( iv_addr = s1 + 36 iv_val = s2 ). s1 = p1. s2 = l4. s3 = l6. s2 = s2 - s3. p3 = s2. s3 = 0. s4 = p3. s5 = l4.
        IF zcl_wasm_rt=>le_u32( iv_a = s4 iv_b = s5 ) = abap_true. s4 = 1. ELSE. s4 = 0. ENDIF.
        IF s4 <> 0. s2 = s2. ELSE. s2 = s3. ENDIF.
        s3 = 3. s2 = zcl_wasm_rt=>shr_u32( iv_val = s2 iv_shift = s3 ). s3 = l8. s2 = s2 + s3. mem_st_i32( iv_addr = s1 + 32 iv_val = s2 ). s1 = 0.
      ENDDO.
    ENDDO.
    IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
    IF s1 <> 0. EXIT. ENDIF. " br_if 0
    s1 = p0. s2 = p2. PERFORM f1164 USING s1 s2. s1 = -1. rv = s1. RETURN.
  ENDDO.
  s1 = p1. s1 = mem_ld_i32( s1 + 36 ). s2 = l7. s3 = 3. s2 = zcl_wasm_rt=>shl32( iv_val = s2 iv_shift = s3 ). s1 = s1 + s2. s2 = p2. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s2 iv_addr = s1 + 0 CHANGING cv_mem = mv_mem ). s1 = p1.
  s2 = l5. mem_st_i32( iv_addr = s1 + 40 iv_val = s2 ). s1 = 1. rv = s1.
ENDFORM.

FORM f616 USING p0 TYPE i p1 TYPE i p2 TYPE i.
  DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i.
  DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i.
  DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 144. s0 = s0 - s1. l5 = s0. gv_g0 = s0. s0 = l5. s1 = p2.
  mem_st_i32( iv_addr = s0 + 140 iv_val = s1 ). s0 = l5. s1 = 128. s2 = p1. s3 = p2. PERFORM f912 USING s0 s1 s2 s3 CHANGING s0. l4 = s0. s0 = p0. s0 = mem_ld_i32( s0 + 4 ). l3 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      s0 = l4. s1 = 127.
      IF zcl_wasm_rt=>le_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = l3. s1 = l4. s0 = s0 + s1. p1 = s0. s1 = p0. s1 = mem_ld_i32( s1 + 8 ). p2 = s1.
        IF zcl_wasm_rt=>gt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = p0. s0 = mem_ld_i32( s0 + 12 ).
          IF s0 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
          s0 = p0. s0 = mem_ld_i32( s0 + 20 ). s1 = p0. s1 = mem_ld_i32( s1 ). s2 = p2. s3 = 3. s2 = s2 * s3. s3 = 1. s2 = zcl_wasm_rt=>shr_u32( iv_val = s2 iv_shift = s3 ). p2 = s2. s3 = p1. s4 = p1. s5 = p2.
          IF zcl_wasm_rt=>lt_u32( iv_a = s4 iv_b = s5 ) = abap_true. s4 = 1. ELSE. s4 = 0. ENDIF.
          IF s4 <> 0. s2 = s2. ELSE. s2 = s3. ENDIF.
          p1 = s2. s3 = p0. s3 = mem_ld_i32( s3 + 16 ).
          DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
          s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). p2 = s0.
          IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0.
            s0 = p0. s1 = 1. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). lv_br = 4. EXIT. " br 4
          ELSE.
          ENDIF.
          s0 = p0. s1 = p1. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = p0. s1 = p2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
        ELSE.
        ENDIF.
        s0 = l4.
        IF s0 <> 0.
          s0 = p0. s0 = mem_ld_i32( s0 ). s1 = p0. s1 = mem_ld_i32( s1 + 4 ). s0 = s0 + s1. s1 = l5. s2 = l4. PERFORM f216 USING s0 s1 s2 CHANGING s0.
        ELSE.
        ENDIF.
        lv_br = 1. EXIT. " br 1
      ELSE.
      ENDIF.
      s0 = p0. s0 = mem_ld_i32( s0 + 8 ). l6 = s0. s1 = l3. s2 = l4. s1 = s1 + s2. s2 = 1. s1 = s1 + s2. l3 = s1.
      IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = p0. s0 = mem_ld_i32( s0 + 12 ).
        IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
        s0 = p0. s0 = mem_ld_i32( s0 + 20 ). s1 = p0. s1 = mem_ld_i32( s1 ). s2 = l6. s3 = 3. s2 = s2 * s3. s3 = 1. s2 = zcl_wasm_rt=>shr_u32( iv_val = s2 iv_shift = s3 ). l6 = s2. s3 = l3. s4 = l3. s5 = l6.
        IF zcl_wasm_rt=>lt_u32( iv_a = s4 iv_b = s5 ) = abap_true. s4 = 1. ELSE. s4 = 0. ENDIF.
        IF s4 <> 0. s2 = s2. ELSE. s2 = s3. ENDIF.
        l3 = s2. s3 = p0. s3 = mem_ld_i32( s3 + 16 ).
        DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
        s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). l6 = s0.
        IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = p0. s1 = 1. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). lv_br = 3. EXIT. " br 3
        ELSE.
        ENDIF.
        s0 = p0. s1 = l3. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = p0. s1 = l6. mem_st_i32( iv_addr = s0 iv_val = s1 ).
      ELSE.
      ENDIF.
      s0 = l5. s1 = p2. mem_st_i32( iv_addr = s0 + 140 iv_val = s1 ). s0 = p0. s0 = mem_ld_i32( s0 + 4 ). l3 = s0. s1 = p0. s1 = mem_ld_i32( s1 ). s0 = s0 + s1. s1 = p0. s1 = mem_ld_i32( s1 + 8 ). s2 = l3. s1 = s1 - s2. s2 = p1. s3 = p2.
      PERFORM f912 USING s0 s1 s2 s3 CHANGING s0.
    ENDDO.
    s0 = p0. s1 = p0. s1 = mem_ld_i32( s1 + 4 ). s2 = l4. s1 = s1 + s2. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ).
  ENDDO.
  s0 = l5. s1 = 144. s0 = s0 + s1. gv_g0 = s0.
ENDFORM.

FORM f617 USING p0 TYPE i.
  DATA l1 TYPE i. DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i.
  DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i.
  DATA s22 TYPE i. DATA s23 TYPE i. DATA lv_br TYPE i. s0 = p0. s0 = mem_ld_i32( s0 + 8 ). l2 = s0.
  DO 1 TIMES. " block
    s0 = p0. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). l6 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
    IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l6. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l1 = s0. s1 = l1. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 - s2. l1 = s1. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l1. s1 = 0.
    IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l2. s1 = l6. PERFORM f1384 USING s0 s1.
  ENDDO.
  s0 = l2. PERFORM f117 USING s0. s0 = p0. s0 = mem_ld_i32( s0 + 24 ). l2 = s0.
  IF s0 <> 0.
    DO 1 TIMES. " block
      s0 = p0. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 16 ). l6 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
      IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = l6. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l1 = s0. s1 = l1. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 - s2. l1 = s1. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l1. s1 = 0.
      IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = l2. s1 = l6. PERFORM f1384 USING s0 s1.
    ENDDO.
    s0 = l2. PERFORM f117 USING s0. s0 = p0. s0 = mem_ld_i32( s0 + 40 ). l2 = s0.
    DO 1 TIMES. " block
      s0 = p0. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 32 ). l6 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
      IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = l6. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l1 = s0. s1 = l1. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 - s2. l1 = s1. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l1. s1 = 0.
      IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = l2. s1 = l6. PERFORM f1384 USING s0 s1.
    ENDDO.
    s0 = l2. PERFORM f117 USING s0.
  ELSE.
  ENDIF.
  s0 = p0. s0 = mem_ld_i32( s0 + 52 ). l1 = s0. s0 = p0. s0 = mem_ld_i32( s0 + 56 ). l4 = s0.
  IF s0 <> 0.
    s0 = l1. l2 = s0.
    DO. " loop
      s0 = l2. s1 = 8. s0 = s0 + s1. l5 = s0.
      DO 1 TIMES. " block
        s0 = l2. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). l6 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
        IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = l5. s0 = mem_ld_i32( s0 ). s1 = l6. s1 = zcl_wasm_rt=>wrap_i64( s1 ). l3 = s1. s2 = l3. s2 = mem_ld_i32( s2 ). s3 = 1. s2 = s2 - s3. l3 = s2. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = l3. s2 = 0.
        IF s1 > s2. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0. EXIT. ENDIF. " br_if 0
        s1 = l6. PERFORM f1384 USING s0 s1.
      ENDDO.
      s0 = l5. s0 = mem_ld_i32( s0 ). PERFORM f117 USING s0. s0 = l2. s1 = 16. s0 = s0 + s1. l2 = s0. s0 = l4. s1 = 1. s0 = s0 - s1. l4 = s0.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
    ENDDO.
  ELSE.
  ENDIF.
  s0 = p0. s0 = mem_ld_i32( s0 + 48 ).
  IF s0 <> 0.
    s0 = l1. PERFORM f125 USING s0.
  ELSE.
  ENDIF.
ENDFORM.

FORM f618 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE i. DATA l8 TYPE i. DATA l9 TYPE i. DATA l10 TYPE i. DATA l11 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i.
  DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA lv_br TYPE i. s0 = 2. l4 = s0.
  DO 1 TIMES. " block
    s0 = p0. s0 = mem_ld_i32( s0 + 8 ). l2 = s0. s1 = 2147483647.
    IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p1. s0 = mem_ld_i32( s0 + 8 ). l3 = s0. s1 = 2147483647.
    IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s0 = mem_ld_i32( s0 + 4 ). l11 = s0. s1 = p1. s1 = mem_ld_i32( s1 + 4 ).
    IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = l2. s1 = -2147483648.
      IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = 0. l4 = s0. s0 = l3. s1 = -2147483648.
        IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
      ELSE.
      ENDIF.
      s0 = 1. s1 = l11. s2 = 1. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 - s1. rv = s0. RETURN.
    ELSE.
    ENDIF.
    s0 = 0.
    DO 1 TIMES. " block
      s1 = -1. s2 = 1. s3 = l2. s4 = l3.
      IF s3 < s4. s3 = 1. ELSE. s3 = 0. ENDIF.
      IF s3 <> 0. s1 = s1. ELSE. s1 = s2. ENDIF.
      s2 = l2. s3 = l3.
      IF s2 <> s3. s2 = 1. ELSE. s2 = 0. ENDIF.
      IF s2 <> 0. EXIT. ENDIF. " br_if 0
      s1 = p0. s1 = mem_ld_i32( s1 + 12 ). l3 = s1. s2 = 1. s1 = s1 - s2. l7 = s1. s1 = p1. s1 = mem_ld_i32( s1 + 12 ). l5 = s1. s2 = 1. s1 = s1 - s2. l8 = s1. s1 = l3. s2 = 2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s2 = 4.
      s1 = s1 - s2. l9 = s1. s1 = l5. s2 = 2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s2 = 4. s1 = s1 - s2. l10 = s1. s1 = l3. s2 = l5. s3 = l3. s4 = l5.
      IF s3 > s4. s3 = 1. ELSE. s3 = 0. ENDIF.
      IF s3 <> 0. s1 = s1. ELSE. s1 = s2. ENDIF.
      s2 = 1. s1 = s1 - s2. l4 = s1.
      DO. " loop
        s1 = 0. s2 = l4. s3 = 0.
        IF s2 < s3. s2 = 1. ELSE. s2 = 0. ENDIF.
        IF s2 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        s1 = 0. l2 = s1. s1 = 0. l6 = s1. s1 = l3. s2 = l7.
        IF zcl_wasm_rt=>gt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0.
          s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s2 = l9. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). l6 = s1.
        ELSE.
        ENDIF.
        s1 = l5. s2 = l8.
        IF zcl_wasm_rt=>gt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0.
          s1 = p1. s1 = mem_ld_i32( s1 + 16 ). s2 = l10. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). l2 = s1.
        ELSE.
        ENDIF.
        s1 = l4. s2 = 1. s1 = s1 - s2. l4 = s1. s1 = l7. s2 = 1. s1 = s1 - s2. l7 = s1. s1 = l9. s2 = 4. s1 = s1 - s2. l9 = s1. s1 = l8. s2 = 1. s1 = s1 - s2. l8 = s1. s1 = l10. s2 = 4. s1 = s1 - s2. l10 = s1. s1 = l2. s2 = l6.
        IF s1 = s2. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0. EXIT. ENDIF. " br_if 0
      ENDDO.
      s1 = -1. s2 = 1. s3 = l2. s4 = l6.
      IF zcl_wasm_rt=>gt_u32( iv_a = s3 iv_b = s4 ) = abap_true. s3 = 1. ELSE. s3 = 0. ENDIF.
      IF s3 <> 0. s1 = s1. ELSE. s1 = s2. ENDIF.
    ENDDO.
    l2 = s1. s0 = s0 - s1. s1 = l2. s2 = l11.
    IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
    l4 = s0.
  ENDDO.
  s0 = l4. rv = s0.
ENDFORM.

FORM f619 USING p0 TYPE i CHANGING rv TYPE i.
  DATA l1 TYPE i. DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i.
  DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i.
  DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA lv_br TYPE i. s0 = p0. s0 = mem_ld_i32_16u( s0 + 500 ). l1 = s0.
  IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = 1. rv = s0. RETURN.
  ELSE.
  ENDIF.
  s0 = l1. s1 = 1. s0 = s0 - s1. s1 = 1073741823. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). l1 = s0. s1 = 1. s0 = s0 + s1. l4 = s0. s1 = 3. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). l2 = s0.
  DO 1 TIMES. " block
    s0 = l1. s1 = 3.
    IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p0. l1 = s0. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = l4. s1 = 2147483644. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). l4 = s0. s0 = p0. l1 = s0.
    DO. " loop
      s0 = l1. s1 = l1. s1 = zcl_wasm_rt=>mem_ld_i64_ext( iv_mem = mv_mem iv_addr = s1 + 0 iv_op = 53 ). s2 = 10. s1 = s1 * s2. s2 = l5. s1 = s1 + s2. l5 = s1.
      zcl_wasm_rt=>mem_st_i64_trunc( EXPORTING iv_val = s1 iv_addr = s0 + 0 iv_op = 62 CHANGING cv_mem = mv_mem ). s0 = l1. s1 = 4. s0 = s0 + s1. l3 = s0. s1 = l3.
      s1 = zcl_wasm_rt=>mem_ld_i64_ext( iv_mem = mv_mem iv_addr = s1 + 0 iv_op = 53 ). s2 = 10. s1 = s1 * s2. s2 = l5. s3 = 32. s2 = zcl_wasm_rt=>shr_u64( iv_val = s2 iv_shift = s3 ). s1 = s1 + s2. l5 = s1.
      zcl_wasm_rt=>mem_st_i64_trunc( EXPORTING iv_val = s1 iv_addr = s0 + 0 iv_op = 62 CHANGING cv_mem = mv_mem ). s0 = l1. s1 = 8. s0 = s0 + s1. l3 = s0. s1 = l3.
      s1 = zcl_wasm_rt=>mem_ld_i64_ext( iv_mem = mv_mem iv_addr = s1 + 0 iv_op = 53 ). s2 = 10. s1 = s1 * s2. s2 = l5. s3 = 32. s2 = zcl_wasm_rt=>shr_u64( iv_val = s2 iv_shift = s3 ). s1 = s1 + s2. l5 = s1.
      zcl_wasm_rt=>mem_st_i64_trunc( EXPORTING iv_val = s1 iv_addr = s0 + 0 iv_op = 62 CHANGING cv_mem = mv_mem ). s0 = l1. s1 = 12. s0 = s0 + s1. l3 = s0. s1 = l3.
      s1 = zcl_wasm_rt=>mem_ld_i64_ext( iv_mem = mv_mem iv_addr = s1 + 0 iv_op = 53 ). s2 = 10. s1 = s1 * s2. s2 = l5. s3 = 32. s2 = zcl_wasm_rt=>shr_u64( iv_val = s2 iv_shift = s3 ). s1 = s1 + s2. l5 = s1.
      zcl_wasm_rt=>mem_st_i64_trunc( EXPORTING iv_val = s1 iv_addr = s0 + 0 iv_op = 62 CHANGING cv_mem = mv_mem ). s0 = l5. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). l5 = s0. s0 = l1. s1 = 16. s0 = s0 + s1. l1 = s0.
      s0 = l4. s1 = 4. s0 = s0 - s1. l4 = s0.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
    ENDDO.
  ENDDO.
  s0 = l2.
  IF s0 <> 0.
    DO. " loop
      s0 = l1. s1 = l1. s1 = zcl_wasm_rt=>mem_ld_i64_ext( iv_mem = mv_mem iv_addr = s1 + 0 iv_op = 53 ). s2 = 10. s1 = s1 * s2. s2 = l5. s1 = s1 + s2. l5 = s1.
      zcl_wasm_rt=>mem_st_i64_trunc( EXPORTING iv_val = s1 iv_addr = s0 + 0 iv_op = 62 CHANGING cv_mem = mv_mem ). s0 = l1. s1 = 4. s0 = s0 + s1. l1 = s0. s0 = l5. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). l5 = s0.
      s0 = l2. s1 = 1. s0 = s0 - s1. l2 = s0.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
    ENDDO.
  ELSE.
  ENDIF.
  s0 = l5. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l1 = s0.
  IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = 1. rv = s0. RETURN.
  ELSE.
  ENDIF.
  s0 = p0. s0 = mem_ld_i32_16u( s0 + 500 ). l2 = s0. s1 = 124.
  IF zcl_wasm_rt=>le_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = p0. s1 = l2. s2 = 2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s1 = l1. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s1 = p0. s1 = mem_ld_i32_16u( s1 + 500 ). s2 = 1. s1 = s1 + s2.
    mem_st_i32_16( iv_addr = s0 + 500 iv_val = s1 ). s0 = 1.
  ELSE.
    s1 = 0.
  ENDIF.
  rv = s1.
ENDFORM.

FORM f620 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i.
  DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l3 = s0.
  gv_g0 = s0.
  DO 1 TIMES. " block
    s0 = p0. s1 = 128.
    IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = 369. l5 = s0.
      DO. " loop
        DO 1 TIMES. " block
          DO 1 TIMES. " block
            s0 = p0. s1 = l4. s2 = l5. s1 = s1 + s2. s2 = 1. s1 = zcl_wasm_rt=>shr_u32( iv_val = s1 iv_shift = s2 ). l2 = s1. s2 = 2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s2 = 1123984. s1 = s1 + s2. s1 = mem_ld_i32( s1 ).
            l6 = s1. s2 = 15. s1 = zcl_wasm_rt=>shr_u32( iv_val = s1 iv_shift = s2 ). l7 = s1.
            IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0.
              s0 = l2. s1 = 1. s0 = s0 - s1. l5 = s0. lv_br = 1. EXIT. " br 1
            ELSE.
            ENDIF.
            s0 = l6. s1 = 8. s0 = zcl_wasm_rt=>shr_u32( iv_val = s0 iv_shift = s1 ). s1 = 127. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). s1 = l7. s0 = s0 + s1. s1 = p0.
            IF zcl_wasm_rt=>gt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
            s0 = l2. s1 = 1. s0 = s0 + s1. l4 = s0.
          ENDDO.
          s0 = l4. s1 = l5.
          IF s0 <= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          lv_br = 3. EXIT. " br 3
        ENDDO.
      ENDDO.
      DO 1 TIMES. " block
        s0 = p1.
        IF s0 <> 0.
          s0 = l3. s1 = 4. s0 = s0 + s1. s1 = p0. s2 = 2. s3 = l2. s4 = l6. PERFORM f113 USING s0 s1 s2 s3 s4 CHANGING s0. s1 = 1.
          IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0.
            s0 = l3. s0 = mem_ld_i32( s0 + 4 ). p0 = s0. lv_br = 4. EXIT. " br 4
          ELSE.
          ENDIF.
          s0 = p0. s1 = 64262.
          IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0.
            s0 = 64261. p0 = s0. lv_br = 4. EXIT. " br 4
          ELSE.
          ENDIF.
          s0 = p0. s1 = 8147.
          IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          s0 = 912. p0 = s0. lv_br = 3. EXIT. " br 3
        ELSE.
        ENDIF.
        s0 = l3. s1 = 4. s0 = s0 + s1. s1 = p0. s2 = 0. s3 = l2. s4 = l6. PERFORM f113 USING s0 s1 s2 s3 s4 CHANGING s0. p1 = s0. s0 = l3. s0 = mem_ld_i32( s0 + 4 ). l2 = s0. s1 = p0. s2 = l2. s3 = 127.
        IF zcl_wasm_rt=>gt_u32( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
        IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
        s1 = p0. s2 = p1. s3 = 1.
        IF s2 = s3. s2 = 1. ELSE. s2 = 0. ENDIF.
        IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
        p0 = s0. lv_br = 2. EXIT. " br 2
      ENDDO.
      s0 = 944. s1 = p0. s2 = p0. s3 = 8163.
      IF s2 = s3. s2 = 1. ELSE. s2 = 0. ENDIF.
      IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
      p0 = s0. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = p1.
    IF s0 <> 0.
      s0 = p0. s1 = 32. s0 = s0 + s1. s1 = p0. s2 = p0. s3 = 65. s2 = s2 - s3. s3 = 26.
      IF zcl_wasm_rt=>lt_u32( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
      IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
      p0 = s0. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = p0. s1 = 32. s0 = s0 - s1. s1 = p0. s2 = p0. s3 = 97. s2 = s2 - s3. s3 = 26.
    IF zcl_wasm_rt=>lt_u32( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
    IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
    p0 = s0.
  ENDDO.
  s0 = l3. s1 = 16. s0 = s0 + s1. gv_g0 = s0. s0 = p0. rv = s0.
ENDFORM.

FORM f621 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i CHANGING rv TYPE int8.
  DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i.
  DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i.
  DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l4 = s0. gv_g0 = s0. s0 = 25769803776. p1 = s0.
  DO 1 TIMES. " block
    s0 = p0. s1 = 0. s2 = p3. s2 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s2 + 0 ). s3 = 0. PERFORM f184 USING s0 s1 s2 s3 CHANGING s0. p2 = s0.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p3. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 8 ). l7 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
    IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = l7. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p3 = s0. s1 = p3. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
    ELSE.
    ENDIF.
    s0 = p0. s1 = l4. s2 = 8. s1 = s1 + s2. s2 = l7. PERFORM f637 USING s0 s1 s2 CHANGING s0.
    IF s0 <> 0.
      s0 = p2. s1 = 16. s0 = s0 - s1. p2 = s0. s1 = p2. s1 = mem_ld_i32( s1 ). p3 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p3. s1 = 1.
      IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = p2. s1 = zcl_wasm_rt=>extend_u32( s1 ). s2 = -30064771072. s1 = zcl_wasm_rt=>or64( iv_a = s1 iv_b = s2 ). PERFORM f453 USING s0 s1. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    DO 1 TIMES. " block
      s0 = l4. s0 = mem_ld_i32( s0 + 8 ). l6 = s0.
      IF s0 <> 0.
        s0 = -51539607552. s1 = l6. s2 = 37. s1 = s1 - s2. s2 = -35.
        IF zcl_wasm_rt=>lt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
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
      s0 = p0. s1 = p3. s2 = 0. s3 = l6. s4 = 1025. s5 = 0. PERFORM f43 USING s0 s1 s2 s3 s4 s5 CHANGING s0.
    ENDDO.
    p1 = s0. s0 = p2. s1 = 16. s0 = s0 - s1. p2 = s0. s1 = p2. s1 = mem_ld_i32( s1 ). p3 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p3. s1 = 1.
    IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = p2. s1 = zcl_wasm_rt=>extend_u32( s1 ). s2 = -30064771072. s1 = zcl_wasm_rt=>or64( iv_a = s1 iv_b = s2 ). PERFORM f453 USING s0 s1.
  ENDDO.
  s0 = l4. s1 = 16. s0 = s0 + s1. gv_g0 = s0. s0 = p1. rv = s0.
ENDFORM.

FORM f622.
  DATA l0 TYPE i. DATA l1 TYPE i. DATA l2 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i.
  DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i.
  DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA lv_br TYPE i. s0 = 1215588. s0 = mem_ld_i32( s0 ). l0 = s0.
  IF s0 <> 0.
    DO. " loop
      s0 = l0. s0 = mem_ld_i32( s0 + 20 ). s1 = l0. s1 = mem_ld_i32( s1 + 24 ).
      IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = l0. s1 = 0. s2 = 0. s3 = l0. s3 = mem_ld_i32( s3 + 32 ).
        DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
        s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ).
      ELSE.
      ENDIF.
      s0 = l0. s0 = mem_ld_i32( s0 + 4 ). l1 = s0. s1 = l0. s1 = mem_ld_i32( s1 + 8 ). l2 = s1.
      IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = l0. s1 = l1. s2 = l2. s1 = s1 - s2. s1 = s1. " i64.extend_i32_s (noop in ABAP - sign preserved) s2 = 1. s3 = l0. s3 = mem_ld_i32( s3 + 36 ).
        DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
        s0 = dispatch_t52( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ).
      ELSE.
      ENDIF.
      s0 = l0. s0 = mem_ld_i32( s0 + 52 ). l0 = s0.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
    ENDDO.
  ELSE.
  ENDIF.
  DO 1 TIMES. " block
    s0 = 1215584. s0 = mem_ld_i32( s0 ). l0 = s0.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l0. s0 = mem_ld_i32( s0 + 20 ). s1 = l0. s1 = mem_ld_i32( s1 + 24 ).
    IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = l0. s1 = 0. s2 = 0. s3 = l0. s3 = mem_ld_i32( s3 + 32 ).
      DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
      s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ).
    ELSE.
    ENDIF.
    s0 = l0. s0 = mem_ld_i32( s0 + 4 ). l1 = s0. s1 = l0. s1 = mem_ld_i32( s1 + 8 ). l2 = s1.
    IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l0. s1 = l1. s2 = l2. s1 = s1 - s2. s1 = s1. " i64.extend_i32_s (noop in ABAP - sign preserved) s2 = 1. s3 = l0. s3 = mem_ld_i32( s3 + 36 ).
    DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
    s0 = dispatch_t52( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ).
  ENDDO.
  DO 1 TIMES. " block
    s0 = 1214904. s0 = mem_ld_i32( s0 ). l0 = s0.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l0. s0 = mem_ld_i32( s0 + 20 ). s1 = l0. s1 = mem_ld_i32( s1 + 24 ).
    IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = l0. s1 = 0. s2 = 0. s3 = l0. s3 = mem_ld_i32( s3 + 32 ).
      DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
      s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ).
    ELSE.
    ENDIF.
    s0 = l0. s0 = mem_ld_i32( s0 + 4 ). l1 = s0. s1 = l0. s1 = mem_ld_i32( s1 + 8 ). l2 = s1.
    IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l0. s1 = l1. s2 = l2. s1 = s1 - s2. s1 = s1. " i64.extend_i32_s (noop in ABAP - sign preserved) s2 = 1. s3 = l0. s3 = mem_ld_i32( s3 + 36 ).
    DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
    s0 = dispatch_t52( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ).
  ENDDO.
  DO 1 TIMES. " block
    s0 = 1214784. s0 = mem_ld_i32( s0 ). l0 = s0.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l0. s0 = mem_ld_i32( s0 + 20 ). s1 = l0. s1 = mem_ld_i32( s1 + 24 ).
    IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = l0. s1 = 0. s2 = 0. s3 = l0. s3 = mem_ld_i32( s3 + 32 ).
      DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
      s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ).
    ELSE.
    ENDIF.
    s0 = l0. s0 = mem_ld_i32( s0 + 4 ). l1 = s0. s1 = l0. s1 = mem_ld_i32( s1 + 8 ). l2 = s1.
    IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l0. s1 = l1. s2 = l2. s1 = s1 - s2. s1 = s1. " i64.extend_i32_s (noop in ABAP - sign preserved) s2 = 1. s3 = l0. s3 = mem_ld_i32( s3 + 36 ).
    DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
    s0 = dispatch_t52( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ).
  ENDDO.
ENDFORM.

FORM f623 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i p4 TYPE i CHANGING rv TYPE int8.
  DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE i. DATA l8 TYPE i. DATA l9 TYPE i. DATA l10 TYPE i. DATA l11 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i.
  DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i.
  DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA lv_br TYPE i. s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l8 = s0. s1 = p2. mem_st_i32( iv_addr = s0 + 32 iv_val = s1 ). s0 = l8. s1 = 0.
  zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 36 CHANGING cv_mem = mv_mem ).
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        s0 = p2. s0 = mem_ld_i32( s0 + 60 ). l6 = s0.
        IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        s0 = p0. s0 = mem_ld_i32( s0 + 16 ). l7 = s0. s1 = 16. s0 = s0 + s1. s1 = l6. s2 = 2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). l5 = s1. s2 = l7. s2 = mem_ld_i32( s2 ).
        DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
        s0 = dispatch_t7( iv_idx = lv_ci_func p0 = s0 p1 = s1 ). l6 = s0.
        IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = p0. s0 = mem_ld_i32( s0 + 16 ). p2 = s0. s0 = mem_ld_i32_8u( s0 + 136 ).
          IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
          s0 = p2. s1 = 1. mem_st_i32_8( iv_addr = s0 + 136 iv_val = s1 ). s0 = p0. s1 = 1134898. s2 = 0. PERFORM f969 USING s0 s1 s2 CHANGING s0. s0 = p2. s1 = 0. mem_st_i32_8( iv_addr = s0 + 136 iv_val = s1 ). lv_br = 2. EXIT. " br 2
        ELSE.
        ENDIF.
        s0 = 0. l7 = s0. s0 = l8. s1 = l6. s2 = 0. s3 = l5. PERFORM f514 USING s1 s2 s3 CHANGING s1. mem_st_i32( iv_addr = s0 + 36 iv_val = s1 ). s0 = p2. s0 = mem_ld_i32( s0 + 60 ). s1 = 0.
        IF s0 <= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
        DO. " loop
          s0 = p2. s0 = mem_ld_i32( s0 + 36 ). s1 = l7. s0 = s0 + s1. l9 = s0. s1 = 2. s0 = s0 + s1. s0 = mem_ld_i32_16u( s0 ). l5 = s0.
          DO 1 TIMES. " block
            s0 = l9. s0 = mem_ld_i32_8u( s0 ). l9 = s0. s1 = 1. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
            IF s0 <> 0.
              s0 = p0. s1 = p4. s2 = l5. s3 = l9. s4 = 1. s3 = zcl_wasm_rt=>shr_u32( iv_val = s3 iv_shift = s4 ). s4 = 1. s3 = zcl_wasm_rt=>and32( iv_a = s3 iv_b = s4 ). PERFORM f518 USING s0 s1 s2 s3 CHANGING s0. l5 = s0.
              IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
              lv_br = 4. EXIT. " br 4
            ELSE.
            ENDIF.
            s0 = p3. s1 = l5. s2 = 2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s0 = mem_ld_i32( s0 ). l5 = s0. s1 = l5. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
          ENDDO.
          s0 = l6. s1 = l5. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l7. s1 = 8. s0 = s0 + s1. l7 = s0. s0 = l6. s1 = 4. s0 = s0 + s1. l6 = s0. s0 = l10. s1 = 1. s0 = s0 + s1. l10 = s0. s1 = p2. s1 = mem_ld_i32( s1 + 60 ).
          IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
        ENDDO.
      ENDDO.
      s0 = p1. l11 = s0. lv_br = 1. EXIT. " br 1
    ENDDO.
    s0 = 25769803776. l11 = s0. s0 = p1. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
    IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l8. s1 = l8. s1 = mem_ld_i32( s1 ). p2 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p2. s1 = 1.
    IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = p1. PERFORM f453 USING s0 s1. s0 = 25769803776. rv = s0. RETURN.
  ENDDO.
  s0 = l11. rv = s0.
ENDFORM.

FORM f624 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i p4 TYPE i p5 TYPE i CHANGING rv TYPE int8.
  DATA l6 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i.
  DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i.
  DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i. DATA s36 TYPE i. DATA s37 TYPE i. DATA s38 TYPE i. DATA s39 TYPE i. DATA s40 TYPE i.
  DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. p2 = s0. gv_g0 = s0. s0 = p5. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). p1 = s0. s0 = p2. s1 = p0. s2 = p5.
  s2 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s2 + 8 ). s3 = 12884901888. s4 = 12884901888. s5 = 0. s6 = 0. s7 = 2. PERFORM f0 USING s1 s2 s3 s4 s5 s6 s7 CHANGING s1. l6 = s1.
  zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 8 CHANGING cv_mem = mv_mem ).
  DO 1 TIMES. " block
    s0 = l6. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 25769803776.
    IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s1 = p1. s2 = p2. s3 = p2. s4 = 8. s3 = s3 + s4. s4 = 0. PERFORM f394 USING s0 s1 s2 s3 s4 CHANGING s0. p1 = s0.
    DO 1 TIMES. " block
      s0 = p2. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 8 ). l6 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
      IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = l6. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p5 = s0. s1 = p5. s1 = mem_ld_i32( s1 ). p5 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p5. s1 = 1.
      IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = l6. PERFORM f453 USING s0 s1.
    ENDDO.
    s0 = p1. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 25769803776.
    IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = p1. l6 = s0. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = p2. s1 = p0. s2 = 388. s3 = 389. s4 = p4.
    IF s4 <> 0. s2 = s2. ELSE. s2 = s3. ENDIF.
    s3 = 0. s4 = 0. s5 = 1. s6 = p3. PERFORM f317 USING s1 s2 s3 s4 s5 s6 CHANGING s1. l6 = s1. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ).
    DO 1 TIMES. " block
      s0 = l6. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 25769803776.
      IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = p1. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
        IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
        s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p3 = s0. s1 = p3. s1 = mem_ld_i32( s1 ). p3 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p3. s1 = 2.
        IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        lv_br = 2. EXIT. " br 2
      ELSE.
      ENDIF.
      s0 = p0. s1 = p1. s2 = 129. s3 = 1. s4 = p2. PERFORM f890 USING s0 s1 s2 s3 s4 CHANGING s0. l6 = s0. s0 = p2. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). p1 = s0. s1 = 32.
      s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
      IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). p3 = s0. s1 = p3. s1 = mem_ld_i32( s1 ). p3 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p3. s1 = 1.
      IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
    ENDDO.
    s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = p1. PERFORM f453 USING s0 s1.
  ENDDO.
  s0 = p2. s1 = 16. s0 = s0 + s1. gv_g0 = s0. s0 = l6. rv = s0.
ENDFORM.

FORM f625 USING p0 TYPE i p1 TYPE int8 CHANGING rv TYPE int8.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE i. DATA l8 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i.
  DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i.
  DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA lv_br TYPE i. s0 = p1. s1 = 2147483648.
  IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = p0. s1 = 1143280. s2 = 0. PERFORM f975 USING s0 s1 s2. s0 = 25769803776. rv = s0. RETURN.
  ELSE.
  ENDIF.
  s0 = p0. s0 = mem_ld_i32( s0 + 36 ). l2 = s0. s1 = l2. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p0. s1 = l2. s2 = 2. PERFORM f408 USING s0 s1 s2 CHANGING s0. l8 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      s0 = p1. s1 = 0.
      IF s0 <= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = l8. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 25769803776.
      IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p0. s0 = mem_ld_i32( s0 + 16 ). l4 = s0. s1 = 16. s0 = s0 + s1. s1 = l8. s1 = zcl_wasm_rt=>wrap_i64( s1 ). l2 = s1. s1 = mem_ld_i32( s1 + 36 ). s2 = p1. s2 = zcl_wasm_rt=>wrap_i64( s2 ). l5 = s2. s3 = l2.
      s3 = mem_ld_i32( s3 + 32 ). s4 = 3. s3 = s3 * s4. s4 = 1. s3 = zcl_wasm_rt=>shr_u32( iv_val = s3 iv_shift = s4 ). l3 = s3. s4 = l3. s5 = l5.
      IF s4 < s5. s4 = 1. ELSE. s4 = 0. ENDIF.
      IF s4 <> 0. s2 = s2. ELSE. s2 = s3. ENDIF.
      l7 = s2. s3 = 3. s2 = zcl_wasm_rt=>shl32( iv_val = s2 iv_shift = s3 ). l6 = s2. s3 = l4. s3 = mem_ld_i32( s3 + 8 ).
      DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
      s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). l4 = s0. s0 = p0. s0 = mem_ld_i32( s0 + 16 ). l3 = s0.
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          DO 1 TIMES. " block
            s0 = l4.
            IF s0 <> 0. EXIT. ENDIF. " br_if 0
            s0 = l6.
            IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. EXIT. ENDIF. " br_if 0
            s0 = l3. s0 = mem_ld_i32_8u( s0 + 136 ).
            IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
            s0 = l3. s1 = 1. mem_st_i32_8( iv_addr = s0 + 136 iv_val = s1 ). s0 = p0. s1 = 1134898. s2 = 0. PERFORM f969 USING s0 s1 s2 CHANGING s0. s0 = l3. s1 = 0. mem_st_i32_8( iv_addr = s0 + 136 iv_val = s1 ). lv_br = 1. EXIT. " br 1
          ENDDO.
          s0 = l4. s1 = l3. s1 = mem_ld_i32( s1 + 12 ).
          DATA(lv_ci_func) = mt_tab0[ s1 + 1 ]. " call_indirect
          s0 = dispatch_t3( iv_idx = lv_ci_func p0 = s0 ). l3 = s0. s0 = l4.
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        ENDDO.
        s0 = 25769803776. p1 = s0. s0 = l8. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
        IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
        s0 = l2. s1 = l2. s1 = mem_ld_i32( s1 ). l2 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l2. s1 = 1.
        IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
        s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = l8. PERFORM f453 USING s0 s1. s0 = 25769803776. rv = s0. RETURN.
      ENDDO.
      s0 = l2. s1 = l4. mem_st_i32( iv_addr = s0 + 36 iv_val = s1 ). s0 = l2. s1 = 40. s0 = s0 + s1. s1 = l5. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l2. s1 = l3. s2 = l6. s1 = s1 - s2. p0 = s1. s2 = 0. s3 = p0. s4 = l3.
      IF zcl_wasm_rt=>le_u32( iv_a = s3 iv_b = s4 ) = abap_true. s3 = 1. ELSE. s3 = 0. ENDIF.
      IF s3 <> 0. s1 = s1. ELSE. s1 = s2. ENDIF.
      s2 = 3. s1 = zcl_wasm_rt=>shr_u32( iv_val = s1 iv_shift = s2 ). s2 = l7. s1 = s1 + s2. mem_st_i32( iv_addr = s0 + 32 iv_val = s1 ).
    ENDDO.
    s0 = l8. p1 = s0.
  ENDDO.
  s0 = p1. rv = s0.
ENDFORM.

FORM f626 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i.
  DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i.
  DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 128. s0 = s0 - s1. l4 = s0. gv_g0 = s0. s0 = p0. s0 = mem_ld_i32( s0 ). p0 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        s0 = p1. s0 = mem_ld_i32( s0 + 28 ). l2 = s0. s1 = 16. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
        IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = l2. s1 = 32. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          s0 = p0. s0 = zcl_wasm_rt=>mem_ld_i64_ext( iv_mem = mv_mem iv_addr = s0 + 0 iv_op = 49 ). s1 = 1. s2 = p1. PERFORM f607 USING s0 s1 s2 CHANGING s0. lv_br = 3. EXIT. " br 3
        ELSE.
        ENDIF.
        s1 = p0. s1 = mem_ld_i32_8u( s1 ). p0 = s1. s1 = 127. l2 = s1.
        DO. " loop
          s1 = l4. s2 = l2. l3 = s2. s1 = s1 + s2. l5 = s1. s2 = p0. s3 = 15. s2 = zcl_wasm_rt=>and32( iv_a = s2 iv_b = s3 ). l2 = s2. s3 = 48. s2 = zcl_wasm_rt=>or32( iv_a = s2 iv_b = s3 ). s3 = l2. s4 = 87. s3 = s3 + s4. s4 = l2. s5 = 10.
          IF zcl_wasm_rt=>lt_u32( iv_a = s4 iv_b = s5 ) = abap_true. s4 = 1. ELSE. s4 = 0. ENDIF.
          IF s4 <> 0. s2 = s2. ELSE. s2 = s3. ENDIF.
          mem_st_i32_8( iv_addr = s1 iv_val = s2 ). s1 = l3. s2 = 1. s1 = s1 - s2. l2 = s1. s1 = p0. s2 = 255. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). l6 = s1. s2 = 4. s1 = zcl_wasm_rt=>shr_u32( iv_val = s1 iv_shift = s2 ). p0 = s1.
          s1 = l6. s2 = 16.
          IF zcl_wasm_rt=>ge_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
          IF s1 <> 0. EXIT. ENDIF. " br_if 0
        ENDDO.
        lv_br = 1. EXIT. " br 1
      ENDDO.
      s1 = p0. s1 = mem_ld_i32_8u( s1 ). p0 = s1. s1 = 127. l2 = s1.
      DO. " loop
        s1 = l4. s2 = l2. l3 = s2. s1 = s1 + s2. l5 = s1. s2 = p0. s3 = 15. s2 = zcl_wasm_rt=>and32( iv_a = s2 iv_b = s3 ). l2 = s2. s3 = 48. s2 = zcl_wasm_rt=>or32( iv_a = s2 iv_b = s3 ). s3 = l2. s4 = 55. s3 = s3 + s4. s4 = l2. s5 = 10.
        IF zcl_wasm_rt=>lt_u32( iv_a = s4 iv_b = s5 ) = abap_true. s4 = 1. ELSE. s4 = 0. ENDIF.
        IF s4 <> 0. s2 = s2. ELSE. s2 = s3. ENDIF.
        mem_st_i32_8( iv_addr = s1 iv_val = s2 ). s1 = l3. s2 = 1. s1 = s1 - s2. l2 = s1. s1 = p0. s2 = 255. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). l6 = s1. s2 = 4. s1 = zcl_wasm_rt=>shr_u32( iv_val = s1 iv_shift = s2 ). p0 = s1.
        s1 = l6. s2 = 16.
        IF zcl_wasm_rt=>ge_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0. EXIT. ENDIF. " br_if 0
      ENDDO.
      s1 = l3. s2 = 129.
      IF zcl_wasm_rt=>ge_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0.
        s1 = l3. s2 = 128. s3 = 1050416. PERFORM f1044 USING s1 s2 s3.
        RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
      ELSE.
      ENDIF.
      s1 = p1. s2 = 1. s3 = 1080547. s4 = 2. s5 = l5. s6 = 128. s7 = l3. s6 = s6 - s7. PERFORM f358 USING s1 s2 s3 s4 s5 s6 CHANGING s1. lv_br = 1. EXIT. " br 1
    ENDDO.
    s2 = l3. s3 = 129.
    IF zcl_wasm_rt=>ge_u32( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
    IF s2 <> 0.
      s2 = l3. s3 = 128. s4 = 1050416. PERFORM f1044 USING s2 s3 s4.
      RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
    ELSE.
    ENDIF.
    s2 = p1. s3 = 1. s4 = 1080547. s5 = 2. s6 = l5. s7 = 128. s8 = l3. s7 = s7 - s8. PERFORM f358 USING s2 s3 s4 s5 s6 s7 CHANGING s2.
  ENDDO.
  s3 = l4. s4 = 128. s3 = s3 + s4. gv_g0 = s3. rv = s2.
ENDFORM.

FORM f627 USING p0 TYPE i p1 TYPE int8 p2 TYPE i p3 TYPE i CHANGING rv TYPE int8.
  DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i.
  DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i.
  DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l5 = s0. gv_g0 = s0.
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
    s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
    IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = l7. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l6 = s0. s1 = l6. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ).
    ELSE.
    ENDIF.
    DO 1 TIMES. " block
      s0 = p0. s1 = l5. s2 = 8. s1 = s1 + s2. s2 = l7. PERFORM f719 USING s0 s1 s2 CHANGING s0.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = l5. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 8 ). l7 = s0. s1 = 1073741823.
      IF zcl_wasm_rt=>ge_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = p0. s1 = 1137956. s2 = 0. PERFORM f975 USING s0 s1 s2. lv_br = 1. EXIT. " br 1
      ELSE.
      ENDIF.
      s0 = 65540. l6 = s0. s0 = p0. s1 = p1. s2 = p2. s3 = 2.
      IF s2 >= s3. s2 = 1. ELSE. s2 = 0. ENDIF.
      IF s2 <> 0.
        s2 = p0. s3 = p3. s3 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s3 + 8 ). PERFORM f689 USING s2 s3 CHANGING s2. p2 = s2. s3 = 0.
        IF s2 < s3. s2 = 1. ELSE. s2 = 0. ENDIF.
        IF s2 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        s2 = p2. s3 = 65536. s2 = zcl_wasm_rt=>or32( iv_a = s2 iv_b = s3 ). l6 = s2. s2 = l5. s2 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s2 + 8 ).
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

FORM f628 USING p0 TYPE i p1 TYPE i p2 TYPE i CHANGING rv TYPE i.
  DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i.
  DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i.
  DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA lv_br TYPE i. s0 = -1. l3 = s0. s0 = p0. s0 = mem_ld_i32( s0 + 20 ).
  IF s0 <> 0.
    s0 = -1.
  ELSE.
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        s1 = p1. s2 = 1073741824.
        IF s1 >= s2. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0.
          s1 = p0. s1 = mem_ld_i32( s1 ). s2 = 1143551. s3 = 0. PERFORM f969 USING s1 s2 s3 CHANGING s1. lv_br = 1. EXIT. " br 1
        ELSE.
        ENDIF.
        s1 = p1. s2 = p0. s2 = mem_ld_i32( s2 + 12 ). s3 = 3. s2 = s2 * s3. s3 = 2. s2 = s2 / s3. l3 = s2. s3 = p1. s4 = l3.
        IF s3 > s4. s3 = 1. ELSE. s3 = 0. ENDIF.
        IF s3 <> 0. s1 = s1. ELSE. s1 = s2. ENDIF.
        l4 = s1. s1 = p0. s1 = mem_ld_i32( s1 + 16 ). p1 = s1.
        DO 1 TIMES. " block
          s1 = p2. s2 = 256.
          IF s1 < s2. s1 = 1. ELSE. s1 = 0. ENDIF.
          IF s1 <> 0. EXIT. ENDIF. " br_if 0
          s1 = p1.
          IF s1 <> 0. EXIT. ENDIF. " br_if 0
          s1 = p0. s2 = l4. PERFORM f469 USING s1 s2 CHANGING s1. rv = s1. RETURN.
        ENDDO.
        s1 = p0. s1 = mem_ld_i32( s1 ). l5 = s1. s1 = mem_ld_i32( s1 + 16 ). p2 = s1. s2 = 16. s1 = s1 + s2. s2 = p0. s2 = mem_ld_i32( s2 + 4 ). s3 = l4. s4 = p1. s3 = zcl_wasm_rt=>shl32( iv_val = s3 iv_shift = s4 ). s4 = 17. s3 = s3 + s4.
        l6 = s3. s4 = p1. s3 = s3 - s4. l7 = s3. s4 = p2. s4 = mem_ld_i32( s4 + 8 ).
        DATA(lv_ci_func) = mt_tab0[ s4 + 1 ]. " call_indirect
        s1 = dispatch_t11( iv_idx = lv_ci_func p0 = s1 p1 = s2 p2 = s3 ). p2 = s1. s1 = l5. s1 = mem_ld_i32( s1 + 16 ). l3 = s1.
        DO 1 TIMES. " block
          DO 1 TIMES. " block
            s1 = p1. s2 = l6.
            IF s1 = s2. s1 = 1. ELSE. s1 = 0. ENDIF.
            IF s1 <> 0. EXIT. ENDIF. " br_if 0
            s1 = p2.
            IF s1 <> 0. EXIT. ENDIF. " br_if 0
            s1 = l3. s1 = mem_ld_i32_8u( s1 + 136 ).
            IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
            s1 = l3. s2 = 1. mem_st_i32_8( iv_addr = s1 + 136 iv_val = s2 ). s1 = l5. s2 = 1134898. s3 = 0. PERFORM f969 USING s1 s2 s3 CHANGING s1. s1 = l3. s2 = 0. mem_st_i32_8( iv_addr = s1 + 136 iv_val = s2 ). lv_br = 1. EXIT. " br 1
          ENDDO.
          s1 = p2. s2 = l3. s2 = mem_ld_i32( s2 + 12 ).
          DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
          s1 = dispatch_t3( iv_idx = lv_ci_func p0 = s1 ). p1 = s1. s1 = p2.
          IF s1 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
        ENDDO.
      ENDDO.
      s1 = p0. s1 = mem_ld_i32( s1 ). s1 = mem_ld_i32( s1 + 16 ). p1 = s1. s2 = 16. s1 = s1 + s2. s2 = p0. s2 = mem_ld_i32( s2 + 4 ). s3 = p1. s3 = mem_ld_i32( s3 + 4 ).
      DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
      dispatch_t6( iv_idx = lv_ci_func p0 = s1 p1 = s2 ). s1 = p0. s2 = 0. mem_st_i32( iv_addr = s1 + 12 iv_val = s2 ). s1 = p0. s2 = 0. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s2 iv_addr = s1 + 4 CHANGING cv_mem = mv_mem ). s1 = p0.
      s2 = -1. mem_st_i32( iv_addr = s1 + 20 iv_val = s2 ). s1 = -1. rv = s1. RETURN.
    ENDDO.
    s1 = p0. s2 = p2. mem_st_i32( iv_addr = s1 + 4 iv_val = s2 ). s1 = p0. s2 = 1073741823. s3 = p1. s4 = l7. s3 = s3 - s4. p2 = s3. s4 = 0. s5 = p1. s6 = p2.
    IF zcl_wasm_rt=>ge_u32( iv_a = s5 iv_b = s6 ) = abap_true. s5 = 1. ELSE. s5 = 0. ENDIF.
    IF s5 <> 0. s3 = s3. ELSE. s3 = s4. ENDIF.
    s4 = p0. s4 = mem_ld_i32( s4 + 16 ). s3 = zcl_wasm_rt=>shr_u32( iv_val = s3 iv_shift = s4 ). s4 = l4. s3 = s3 + s4. p0 = s3. s4 = p0. s5 = 1073741823.
    IF s4 >= s5. s4 = 1. ELSE. s4 = 0. ENDIF.
    IF s4 <> 0. s2 = s2. ELSE. s2 = s3. ENDIF.
    mem_st_i32( iv_addr = s1 + 12 iv_val = s2 ). s1 = 0.
  ENDIF.
  rv = s1.
ENDFORM.

FORM f629 USING p0 TYPE i p1 TYPE i p2 TYPE i p3 TYPE i p4 TYPE i CHANGING rv TYPE i.
  DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE i. DATA l8 TYPE i. DATA l9 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i.
  DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i.
  DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i. DATA s36 TYPE i.
  DATA s37 TYPE i. DATA s38 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = -64. s0 = s0 + s1. l5 = s0. gv_g0 = s0. s0 = 1. l7 = s0.
  DO 1 TIMES. " block
    s0 = p0. s0 = mem_ld_i32_8u( s0 + 4 ).
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s0 = mem_ld_i32_8u( s0 + 5 ). l8 = s0. s0 = p0. s0 = mem_ld_i32( s0 ). l6 = s0. s0 = mem_ld_i32( s0 + 28 ). l9 = s0. s1 = 4. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = l6. s0 = mem_ld_i32( s0 + 20 ). s1 = 1080445. s2 = 1080542. s3 = l8.
      IF s3 <> 0. s1 = s1. ELSE. s1 = s2. ENDIF.
      s2 = 2. s3 = 3. s4 = l8.
      IF s4 <> 0. s2 = s2. ELSE. s2 = s3. ENDIF.
      s3 = l6. s3 = mem_ld_i32( s3 + 24 ). s3 = mem_ld_i32( s3 + 12 ).
      DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
      s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ).
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = l6. s0 = mem_ld_i32( s0 + 20 ). s1 = p1. s2 = p2. s3 = l6. s3 = mem_ld_i32( s3 + 24 ). s3 = mem_ld_i32( s3 + 12 ).
      DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
      s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ).
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = l6. s0 = mem_ld_i32( s0 + 20 ). s1 = 1116435. s2 = 2. s3 = l6. s3 = mem_ld_i32( s3 + 24 ). s3 = mem_ld_i32( s3 + 12 ).
      DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
      s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ).
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = p3. s1 = l6. s2 = p4. s2 = mem_ld_i32( s2 + 12 ).
      DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
      s0 = dispatch_t7( iv_idx = lv_ci_func p0 = s0 p1 = s1 ). l7 = s0. lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = l8.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = l6. s0 = mem_ld_i32( s0 + 20 ). s1 = 1050364. s2 = 3. s3 = l6. s3 = mem_ld_i32( s3 + 24 ). s3 = mem_ld_i32( s3 + 12 ).
      DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
      s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ).
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      s0 = l6. s0 = mem_ld_i32( s0 + 28 ). l9 = s0.
    ELSE.
    ENDIF.
    s0 = l5. s1 = 1. mem_st_i32_8( iv_addr = s0 + 15 iv_val = s1 ). s0 = l5. s1 = l9. mem_st_i32( iv_addr = s0 + 44 iv_val = s1 ). s0 = l5. s1 = 1050336. mem_st_i32( iv_addr = s0 + 40 iv_val = s1 ). s0 = l5. s1 = l6.
    s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 20 ). zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ). s0 = l5. s1 = l6. s1 = mem_ld_i32_8u( s1 + 32 ).
    mem_st_i32_8( iv_addr = s0 + 48 iv_val = s1 ). s0 = l5. s1 = l6. s1 = mem_ld_i32( s1 + 16 ). mem_st_i32( iv_addr = s0 + 32 iv_val = s1 ). s0 = l5. s1 = l6.
    RAISE EXCEPTION TYPE cx_sy_program_error. " SIMD not supported
    RAISE EXCEPTION TYPE cx_sy_program_error. " SIMD not supported
    s2 = l5. s3 = l5. s4 = 15. s3 = s3 + s4. mem_st_i32( iv_addr = s2 + 8 iv_val = s3 ). s2 = l5. s3 = l5. mem_st_i32( iv_addr = s2 + 36 iv_val = s3 ). s2 = l5. s3 = p1. s4 = p2. PERFORM f388 USING s2 s3 s4 CHANGING s2.
    IF s2 <> 0. EXIT. ENDIF. " br_if 0
    s2 = l5. s3 = 1116435. s4 = 2. PERFORM f388 USING s2 s3 s4 CHANGING s2.
    IF s2 <> 0. EXIT. ENDIF. " br_if 0
    s2 = p3. s3 = l5. s4 = 16. s3 = s3 + s4. s4 = p4. s4 = mem_ld_i32( s4 + 12 ).
    DATA(lv_ci_func) = mt_tab0[ s4 + 1 ]. " call_indirect
    s2 = dispatch_t7( iv_idx = lv_ci_func p0 = s2 p1 = s3 ).
    IF s2 <> 0. EXIT. ENDIF. " br_if 0
    s2 = l5. s2 = mem_ld_i32( s2 + 36 ). s3 = 1050367. s4 = 2. s5 = l5. s5 = mem_ld_i32( s5 + 40 ). s5 = mem_ld_i32( s5 + 12 ).
    DATA(lv_ci_func) = mt_tab0[ s5 + 1 ]. " call_indirect
    s2 = dispatch_t11( iv_idx = lv_ci_func p0 = s2 p1 = s3 p2 = s4 ). l7 = s2.
  ENDDO.
  s2 = p0. s3 = 1. mem_st_i32_8( iv_addr = s2 + 5 iv_val = s3 ). s2 = p0. s3 = l7. mem_st_i32_8( iv_addr = s2 + 4 iv_val = s3 ). s2 = l5. s3 = -64. s2 = s2 - s3. gv_g0 = s2. s2 = p0. rv = s2.
ENDFORM.

FORM f630 USING p0 TYPE i p1 TYPE i p2 TYPE int8 p3 TYPE i p4 TYPE i.
  DATA l5 TYPE i. DATA l6 TYPE i. DATA l7 TYPE i. DATA l8 TYPE i. DATA l9 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i.
  DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i.
  DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 32.
  s0 = s0 - s1. l5 = s0. gv_g0 = s0. s0 = l5. s1 = 0. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = l5. s1 = p0. s1 = mem_ld_i32( s1 ). l6 = s1. mem_st_i32( iv_addr = s0 + 8 iv_val = s1 ). s0 = l5. s1 = 0.
  zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 20 CHANGING cv_mem = mv_mem ).
  DO 1 TIMES. " block
    s0 = p2.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0.
      s0 = l5. s1 = -2147483648. mem_st_i32( iv_addr = s0 + 16 iv_val = s1 ). lv_br = 1. EXIT. " br 1
    ELSE.
    ENDIF.
    s0 = l6. s1 = 4. s0 = s0 + s1. s0 = mem_ld_i32( s0 ). l7 = s0. s0 = l6. s0 = mem_ld_i32( s0 ). l6 = s0.
    DO 1 TIMES. " block
      s0 = p2. s1 = 4294967295.
      IF zcl_wasm_rt=>le_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = l6. s1 = 0. s2 = 4. s3 = l7.
        DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
        s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). l6 = s0.
        IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        s0 = l5. s1 = 1. mem_st_i32( iv_addr = s0 + 20 iv_val = s1 ). s0 = l6. s1 = p2. s2 = p2. s2 = zcl_wasm_rt=>wrap_i64( s2 ). s2 = zcl_wasm_rt=>clz32( s2 ). l7 = s2. s2 = zcl_wasm_rt=>extend_u32( s2 ).
        s1 = zcl_wasm_rt=>shl64( iv_val = s1 iv_shift = s2 ). zcl_wasm_rt=>mem_st_i64_trunc( EXPORTING iv_val = s1 iv_addr = s0 + 0 iv_op = 62 CHANGING cv_mem = mv_mem ). s0 = l5. s1 = l6. mem_st_i32( iv_addr = s0 + 24 iv_val = s1 ).
        s0 = l5. s1 = 32. s2 = l7. s1 = s1 - s2. mem_st_i32( iv_addr = s0 + 16 iv_val = s1 ). lv_br = 2. EXIT. " br 2
      ELSE.
      ENDIF.
      s0 = l6. s1 = 0. s2 = 8. s3 = l7.
      DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
      s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ). l6 = s0.
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = l5. s1 = 2. mem_st_i32( iv_addr = s0 + 20 iv_val = s1 ). s0 = l6. s1 = p2. s1 = zcl_wasm_rt=>wrap_i64( s1 ). l8 = s1. s2 = p2. s3 = 32. s2 = zcl_wasm_rt=>shr_u64( iv_val = s2 iv_shift = s3 ). s2 = zcl_wasm_rt=>wrap_i64( s2 ).
      l9 = s2. s2 = zcl_wasm_rt=>clz32( s2 ). l7 = s2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l6. s1 = l9. s2 = l7. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s2 = l8.
      s3 = 1. s2 = zcl_wasm_rt=>shr_u32( iv_val = s2 iv_shift = s3 ). s3 = l7. s4 = -1. s3 = zcl_wasm_rt=>xor32( iv_a = s3 iv_b = s4 ). s2 = zcl_wasm_rt=>shr_u32( iv_val = s2 iv_shift = s3 ). s1 = zcl_wasm_rt=>or32( iv_a = s1 iv_b = s2 ).
      mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = l5. s1 = l6. mem_st_i32( iv_addr = s0 + 24 iv_val = s1 ). s0 = l5. s1 = 64. s2 = l7. s1 = s1 - s2. mem_st_i32( iv_addr = s0 + 16 iv_val = s1 ). lv_br = 1. EXIT. " br 1
    ENDDO.
    s0 = l5. s1 = 9223372032559808512. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 12 CHANGING cv_mem = mv_mem ).
  ENDDO.
  s0 = p0. s1 = p1. s2 = l5. s3 = 8. s2 = s2 + s3. s3 = p3. s4 = p4. PERFORM f87 USING s0 s1 s2 s3 s4 CHANGING s0.
  DO 1 TIMES. " block
    s0 = l5. s0 = mem_ld_i32( s0 + 8 ). p0 = s0.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l5. s0 = mem_ld_i32( s0 + 24 ). p1 = s0.
    IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s0 = mem_ld_i32( s0 ). s1 = p1. s2 = 0. s3 = p0. s4 = 4. s3 = s3 + s4. s3 = mem_ld_i32( s3 ).
    DATA(lv_ci_func) = mt_tab0[ s3 + 1 ]. " call_indirect
    s0 = dispatch_t11( iv_idx = lv_ci_func p0 = s0 p1 = s1 p2 = s2 ).
  ENDDO.
  s0 = l5. s1 = 32. s0 = s0 + s1. gv_g0 = s0.
ENDFORM.

FORM f631 USING p0 TYPE i p1 TYPE int8 p2 TYPE i.
  DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i.
  DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i.
  DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 96. s0 = s0 - s1. l3 = s0. gv_g0 = s0. s0 = l3. s1 = 0.
  mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). s0 = l3. s1 = 4294967296. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 4 CHANGING cv_mem = mv_mem ). s0 = 1215076. s0 = mem_ld_i32_8u( s0 ). s0 = 1600.
  PERFORM f18 USING s0 CHANGING s0. l4 = s0.
  IF s0 <> 0.
    s0 = l3. s1 = 0. mem_st_i32_8( iv_addr = s0 + 76 iv_val = s1 ). s0 = l3. s1 = p2. mem_st_i32( iv_addr = s0 + 24 iv_val = s1 ). s0 = l3. s1 = p1.
    zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 16 CHANGING cv_mem = mv_mem ). s0 = l3. s1 = 0. mem_st_i32( iv_addr = s0 + 72 iv_val = s1 ). s0 = l3. s1 = l4. mem_st_i32( iv_addr = s0 + 68 iv_val = s1 ). s0 = l3. s1 = 100.
    mem_st_i32( iv_addr = s0 + 64 iv_val = s1 ). s0 = l3. s1 = 0. mem_st_i32( iv_addr = s0 + 40 iv_val = s1 ). s0 = l3. s1 = l3. s2 = 4. s1 = s1 + s2. mem_st_i32( iv_addr = s0 + 84 iv_val = s1 ). s0 = l3. s1 = 0.
    mem_st_i32( iv_addr = s0 + 88 iv_val = s1 ). s0 = l3. s1 = l3. s2 = 16. s1 = s1 + s2. l4 = s1. mem_st_i32( iv_addr = s0 + 92 iv_val = s1 ).
    DO 1 TIMES. " block
      s0 = l3. s1 = 88. s0 = s0 + s1. s1 = l3. s2 = 84. s1 = s1 + s2. PERFORM f720 USING s0 s1 CHANGING s0. p2 = s0.
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = p0. s1 = l3. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 4 ). zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 0 CHANGING cv_mem = mv_mem ). s0 = p0. s1 = 8. s0 = s0 + s1. s1 = l3. s2 = 12.
        s1 = s1 + s2. s1 = mem_ld_i32( s1 ). mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l4. PERFORM f617 USING s0. lv_br = 1. EXIT. " br 1
      ELSE.
      ENDIF.
      s0 = gv_g0. s1 = 32. s0 = s0 - s1. l6 = s0. gv_g0 = s0. s0 = l6. s1 = 8. s0 = s0 + s1. l4 = s0. PERFORM f384 USING s0. s0 = 1215076. s0 = mem_ld_i32_8u( s0 ). s0 = 32. PERFORM f18 USING s0 CHANGING s0. l5 = s0.
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = 32. PERFORM f687 USING s0.
        RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
      ELSE.
      ENDIF.
      s0 = l5. s1 = 1060604. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l5. s1 = p2. mem_st_i32( iv_addr = s0 + 28 iv_val = s1 ). s0 = l5. s1 = l4. s1 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s1 + 0 ).
      zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 4 CHANGING cv_mem = mv_mem ). s0 = l5. s1 = 12. s0 = s0 + s1. s1 = l4. s2 = 8. s1 = s1 + s2.
      RAISE EXCEPTION TYPE cx_sy_program_error. " SIMD not supported
      RAISE EXCEPTION TYPE cx_sy_program_error. " SIMD not supported
      s2 = l6. s3 = 32. s2 = s2 + s3. gv_g0 = s2. s2 = p0. s3 = -2147483648. mem_st_i32( iv_addr = s2 iv_val = s3 ). s2 = p0. s3 = l5. mem_st_i32( iv_addr = s2 + 4 iv_val = s3 ). s2 = l3. s3 = 16. s2 = s2 + s3. PERFORM f617 USING s2.
      s2 = l3. s2 = mem_ld_i32( s2 + 4 ).
      IF s2 = 0. s2 = 1. ELSE. s2 = 0. ENDIF.
      IF s2 <> 0. EXIT. ENDIF. " br_if 0
      s2 = l3. s2 = mem_ld_i32( s2 + 8 ). PERFORM f125 USING s2.
    ENDDO.
    s2 = l3. s3 = 96. s2 = s2 + s3. gv_g0 = s2.
    RETURN.
  ELSE.
  ENDIF.
  s2 = 8. s3 = 1600. PERFORM f1271 USING s2 s3.
  RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
ENDFORM.

FORM f632 USING p0 TYPE i CHANGING rv TYPE i.
  DATA l1 TYPE i. DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i.
  DATA s9 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    s0 = p0. s0 = mem_ld_i32( s0 + 60 ). l4 = s0. s1 = 0.
    IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s0 = mem_ld_i32( s0 + 56 ). s1 = 0.
    IF s0 >= s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = 0. l4 = s0. s0 = p0. s1 = 0. mem_st_i32( iv_addr = s0 + 60 iv_val = s1 ). s0 = 1. l3 = s0.
    DO 1 TIMES. " block
      s0 = p0. s0 = mem_ld_i32( s0 + 32 ). l1 = s0. s1 = p0. s1 = mem_ld_i32( s1 + 28 ). l5 = s1.
      IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      DO. " loop
        DO 1 TIMES. " block
          DO 1 TIMES. " block
            DO 1 TIMES. " block
              DO 1 TIMES. " block
                DO 1 TIMES. " block
                  s0 = l1. s0 = mem_ld_i32_8u( s0 ). l2 = s0. s1 = 91. s0 = s0 - s1.
                  CASE s0.
                    WHEN 0. lv_br = 3. EXIT.
                    WHEN 1. lv_br = 1. EXIT.
                    WHEN OTHERS. EXIT.
                  ENDCASE.
                ENDDO.
                s0 = l2. s1 = 40.
                IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
                s0 = l1. l2 = s0. lv_br = 3. EXIT. " br 3
              ENDDO.
              s0 = l1. s1 = 1. s0 = s0 + s1. l2 = s0. lv_br = 2. EXIT. " br 2
            ENDDO.
            s0 = l1. s0 = mem_ld_i32_8u( s0 + 1 ). s1 = 63.
            IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0.
              s0 = l3. s1 = 253.
              IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
              s1 = l1. l2 = s1. s1 = l3. s2 = 1. s1 = s1 + s2. l3 = s1.
              IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
              lv_br = 4. EXIT. " br 4
            ELSE.
            ENDIF.
            s0 = l1. s0 = mem_ld_i32_8u( s0 + 2 ). s1 = 60.
            IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0.
              s0 = l1. l2 = s0. lv_br = 2. EXIT. " br 2
            ELSE.
            ENDIF.
            s0 = l1. s0 = mem_ld_i32_8u( s0 + 3 ). l2 = s0. s1 = 33.
            IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0.
              s0 = l1. l2 = s0. lv_br = 2. EXIT. " br 2
            ELSE.
            ENDIF.
            s0 = l2. s1 = 61.
            IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0.
              s0 = l1. l2 = s0. lv_br = 2. EXIT. " br 2
            ELSE.
            ENDIF.
            s0 = 1. l4 = s0. s0 = p0. s1 = 1. mem_st_i32( iv_addr = s0 + 60 iv_val = s1 ). s0 = l3. s1 = 253.
            IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            s1 = l1. l2 = s1. s1 = l3. s2 = 1. s1 = s1 + s2. l3 = s1.
            IF s0 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
            lv_br = 1. EXIT. " br 1
          ENDDO.
          s0 = l1. s1 = 1. s0 = s0 + s1. l2 = s0. s1 = l5.
          IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          DO. " loop
            DO 1 TIMES. " block
              DO 1 TIMES. " block
                s0 = l1. s0 = mem_ld_i32_8u( s0 + 1 ). s1 = 92. s0 = s0 - s1.
                CASE s0.
                  WHEN 0. EXIT.
                  WHEN 1. lv_br = 3. EXIT.
                  WHEN OTHERS. lv_br = 1. EXIT.
                ENDCASE.
              ENDDO.
              s0 = l1. s1 = 2. s0 = s0 + s1. l2 = s0.
            ENDDO.
            s0 = l2. l1 = s0. s1 = 1. s0 = s0 + s1. l2 = s0. s1 = l5.
            IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. EXIT. ENDIF. " br_if 0
          ENDDO.
        ENDDO.
        s0 = l2. s1 = 1. s0 = s0 + s1. l1 = s0. s1 = l5.
        IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
      ENDDO.
    ENDDO.
    s0 = p0. s1 = l3. mem_st_i32( iv_addr = s0 + 56 iv_val = s1 ).
  ENDDO.
  s0 = l4. rv = s0.
ENDFORM.

FORM f633 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i.
  DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i.
  DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 128. s0 = s0 - s1. l4 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        s0 = p1. s0 = mem_ld_i32( s0 + 28 ). l2 = s0. s1 = 16. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
        IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = l2. s1 = 32. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          s0 = p0. s0 = zcl_wasm_rt=>mem_ld_i64_ext( iv_mem = mv_mem iv_addr = s0 + 0 iv_op = 51 ). s1 = 1. s2 = p1. PERFORM f607 USING s0 s1 s2 CHANGING s0. lv_br = 3. EXIT. " br 3
        ELSE.
        ENDIF.
        s1 = p0. s1 = mem_ld_i32_16u( s1 ). p0 = s1. s1 = 127. l2 = s1.
        DO. " loop
          s1 = l4. s2 = l2. l3 = s2. s1 = s1 + s2. l5 = s1. s2 = p0. s3 = 15. s2 = zcl_wasm_rt=>and32( iv_a = s2 iv_b = s3 ). l2 = s2. s3 = 48. s2 = zcl_wasm_rt=>or32( iv_a = s2 iv_b = s3 ). s3 = l2. s4 = 87. s3 = s3 + s4. s4 = l2. s5 = 10.
          IF zcl_wasm_rt=>lt_u32( iv_a = s4 iv_b = s5 ) = abap_true. s4 = 1. ELSE. s4 = 0. ENDIF.
          IF s4 <> 0. s2 = s2. ELSE. s2 = s3. ENDIF.
          mem_st_i32_8( iv_addr = s1 iv_val = s2 ). s1 = l3. s2 = 1. s1 = s1 - s2. l2 = s1. s1 = p0. s2 = 65535. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). l6 = s1. s2 = 4. s1 = zcl_wasm_rt=>shr_u32( iv_val = s1 iv_shift = s2 ).
          p0 = s1. s1 = l6. s2 = 16.
          IF zcl_wasm_rt=>ge_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
          IF s1 <> 0. EXIT. ENDIF. " br_if 0
        ENDDO.
        lv_br = 1. EXIT. " br 1
      ENDDO.
      s1 = p0. s1 = mem_ld_i32_16u( s1 ). p0 = s1. s1 = 127. l2 = s1.
      DO. " loop
        s1 = l4. s2 = l2. l3 = s2. s1 = s1 + s2. l5 = s1. s2 = p0. s3 = 15. s2 = zcl_wasm_rt=>and32( iv_a = s2 iv_b = s3 ). l2 = s2. s3 = 48. s2 = zcl_wasm_rt=>or32( iv_a = s2 iv_b = s3 ). s3 = l2. s4 = 55. s3 = s3 + s4. s4 = l2. s5 = 10.
        IF zcl_wasm_rt=>lt_u32( iv_a = s4 iv_b = s5 ) = abap_true. s4 = 1. ELSE. s4 = 0. ENDIF.
        IF s4 <> 0. s2 = s2. ELSE. s2 = s3. ENDIF.
        mem_st_i32_8( iv_addr = s1 iv_val = s2 ). s1 = l3. s2 = 1. s1 = s1 - s2. l2 = s1. s1 = p0. s2 = 65535. s1 = zcl_wasm_rt=>and32( iv_a = s1 iv_b = s2 ). l6 = s1. s2 = 4. s1 = zcl_wasm_rt=>shr_u32( iv_val = s1 iv_shift = s2 ). p0 = s1.
        s1 = l6. s2 = 16.
        IF zcl_wasm_rt=>ge_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0. EXIT. ENDIF. " br_if 0
      ENDDO.
      s1 = l3. s2 = 129.
      IF zcl_wasm_rt=>ge_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0.
        s1 = l3. s2 = 128. s3 = 1050416. PERFORM f1044 USING s1 s2 s3.
        RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
      ELSE.
      ENDIF.
      s1 = p1. s2 = 1. s3 = 1080547. s4 = 2. s5 = l5. s6 = 128. s7 = l3. s6 = s6 - s7. PERFORM f358 USING s1 s2 s3 s4 s5 s6 CHANGING s1. lv_br = 1. EXIT. " br 1
    ENDDO.
    s2 = l3. s3 = 129.
    IF zcl_wasm_rt=>ge_u32( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
    IF s2 <> 0.
      s2 = l3. s3 = 128. s4 = 1050416. PERFORM f1044 USING s2 s3 s4.
      RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
    ELSE.
    ENDIF.
    s2 = p1. s3 = 1. s4 = 1080547. s5 = 2. s6 = l5. s7 = 128. s8 = l3. s7 = s7 - s8. PERFORM f358 USING s2 s3 s4 s5 s6 s7 CHANGING s2.
  ENDDO.
  s3 = l4. s4 = 128. s3 = s3 + s4. gv_g0 = s3. rv = s2.
ENDFORM.

FORM f634 USING p0 TYPE i.
  DATA l1 TYPE i. DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i.
  DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA lv_br TYPE i.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      s0 = p0. s0 = mem_ld_i32_8u( s0 ).
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = p0. s0 = mem_ld_i32_8u( s0 + 1 ). l1 = s0. s1 = 5.
        IF zcl_wasm_rt=>ge_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 2. EXIT. ENDIF. " br_if 2
        s0 = l1.
        IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
        s0 = p0. s1 = 8. s0 = s0 + s1. l2 = s0. s0 = l1. s1 = 3. s0 = zcl_wasm_rt=>shl32( iv_val = s0 iv_shift = s1 ). l1 = s0. s0 = p0. s0 = mem_ld_i32( s0 + 48 ). l4 = s0.
        DO. " loop
          DO 1 TIMES. " block
            s0 = l2. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). l5 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
            IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. EXIT. ENDIF. " br_if 0
            s0 = l5. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l3 = s0. s1 = l3. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 - s2. l3 = s1. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l3. s1 = 0.
            IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. EXIT. ENDIF. " br_if 0
            s0 = l4. s1 = l5. PERFORM f1384 USING s0 s1.
          ENDDO.
          s0 = l2. s1 = 8. s0 = s0 + s1. l2 = s0. s0 = l1. s1 = 8. s0 = s0 - s1. l1 = s0.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
        ENDDO.
        lv_br = 1. EXIT. " br 1
      ELSE.
      ENDIF.
      s0 = p0. s0 = mem_ld_i32( s0 + 12 ). l1 = s0.
      IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p0. s0 = mem_ld_i32( s0 + 8 ). l2 = s0. s0 = l1. s1 = 3. s0 = zcl_wasm_rt=>shl32( iv_val = s0 iv_shift = s1 ). l1 = s0. s0 = p0. s0 = mem_ld_i32( s0 + 48 ). l4 = s0.
      DO. " loop
        DO 1 TIMES. " block
          s0 = l2. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 0 ). l5 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
          IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = l5. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l3 = s0. s1 = l3. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 - s2. l3 = s1. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l3. s1 = 0.
          IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
          s0 = l4. s1 = l5. PERFORM f1384 USING s0 s1.
        ENDDO.
        s0 = l2. s1 = 8. s0 = s0 + s1. l2 = s0. s0 = l1. s1 = 8. s0 = s0 - s1. l1 = s0.
        IF s0 <> 0. EXIT. ENDIF. " br_if 0
      ENDDO.
    ENDDO.
    DO 1 TIMES. " block
      s0 = p0. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 40 ). l5 = s0. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -12.
      IF zcl_wasm_rt=>le_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p0. s0 = mem_ld_i32( s0 + 48 ). s1 = l5. s1 = zcl_wasm_rt=>wrap_i64( s1 ). l2 = s1. s2 = l2. s2 = mem_ld_i32( s2 ). s3 = 1. s2 = s2 - s3. l2 = s2. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = l2. s2 = 0.
      IF s1 > s2. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. EXIT. ENDIF. " br_if 0
      s1 = l5. PERFORM f1384 USING s0 s1.
    ENDDO.
    RETURN.
  ENDDO.
  s0 = l1. s1 = 4. s2 = 1075436. PERFORM f1045 USING s0 s1 s2.
  RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
ENDFORM.

FORM f635 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i.
  DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i.
  DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 128. s0 = s0 - s1. l4 = s0. gv_g0 = s0. s0 = p0. s0 = mem_ld_i32( s0 ). p0 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        s0 = p1. s0 = mem_ld_i32( s0 + 28 ). l2 = s0. s1 = 16. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
        IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
        IF s0 <> 0.
          s0 = l2. s1 = 32. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ).
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          s0 = p0. s0 = zcl_wasm_rt=>mem_ld_i64_ext( iv_mem = mv_mem iv_addr = s0 + 0 iv_op = 53 ). s1 = 1. s2 = p1. PERFORM f607 USING s0 s1 s2 CHANGING s0. lv_br = 3. EXIT. " br 3
        ELSE.
        ENDIF.
        s1 = p0. s1 = mem_ld_i32( s1 ). p0 = s1. s1 = 127. l2 = s1.
        DO. " loop
          s1 = l4. s2 = l2. l3 = s2. s1 = s1 + s2. l5 = s1. s2 = p0. s3 = 15. s2 = zcl_wasm_rt=>and32( iv_a = s2 iv_b = s3 ). l2 = s2. s3 = 48. s2 = zcl_wasm_rt=>or32( iv_a = s2 iv_b = s3 ). s3 = l2. s4 = 87. s3 = s3 + s4. s4 = l2. s5 = 10.
          IF zcl_wasm_rt=>lt_u32( iv_a = s4 iv_b = s5 ) = abap_true. s4 = 1. ELSE. s4 = 0. ENDIF.
          IF s4 <> 0. s2 = s2. ELSE. s2 = s3. ENDIF.
          mem_st_i32_8( iv_addr = s1 iv_val = s2 ). s1 = l3. s2 = 1. s1 = s1 - s2. l2 = s1. s1 = p0. s2 = 16.
          IF zcl_wasm_rt=>lt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
          s2 = p0. s3 = 4. s2 = zcl_wasm_rt=>shr_u32( iv_val = s2 iv_shift = s3 ). p0 = s2.
          IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
          IF s1 <> 0. EXIT. ENDIF. " br_if 0
        ENDDO.
        lv_br = 1. EXIT. " br 1
      ENDDO.
      s1 = p0. s1 = mem_ld_i32( s1 ). p0 = s1. s1 = 127. l2 = s1.
      DO. " loop
        s1 = l4. s2 = l2. l3 = s2. s1 = s1 + s2. l5 = s1. s2 = p0. s3 = 15. s2 = zcl_wasm_rt=>and32( iv_a = s2 iv_b = s3 ). l2 = s2. s3 = 48. s2 = zcl_wasm_rt=>or32( iv_a = s2 iv_b = s3 ). s3 = l2. s4 = 55. s3 = s3 + s4. s4 = l2. s5 = 10.
        IF zcl_wasm_rt=>lt_u32( iv_a = s4 iv_b = s5 ) = abap_true. s4 = 1. ELSE. s4 = 0. ENDIF.
        IF s4 <> 0. s2 = s2. ELSE. s2 = s3. ENDIF.
        mem_st_i32_8( iv_addr = s1 iv_val = s2 ). s1 = l3. s2 = 1. s1 = s1 - s2. l2 = s1. s1 = p0. s2 = 16.
        IF zcl_wasm_rt=>lt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
        s2 = p0. s3 = 4. s2 = zcl_wasm_rt=>shr_u32( iv_val = s2 iv_shift = s3 ). p0 = s2.
        IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0. EXIT. ENDIF. " br_if 0
      ENDDO.
      s1 = l3. s2 = 129.
      IF zcl_wasm_rt=>ge_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0.
        s1 = l3. s2 = 128. s3 = 1050416. PERFORM f1044 USING s1 s2 s3.
        RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
      ELSE.
      ENDIF.
      s1 = p1. s2 = 1. s3 = 1080547. s4 = 2. s5 = l5. s6 = 128. s7 = l3. s6 = s6 - s7. PERFORM f358 USING s1 s2 s3 s4 s5 s6 CHANGING s1. lv_br = 1. EXIT. " br 1
    ENDDO.
    s2 = l3. s3 = 129.
    IF zcl_wasm_rt=>ge_u32( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
    IF s2 <> 0.
      s2 = l3. s3 = 128. s4 = 1050416. PERFORM f1044 USING s2 s3 s4.
      RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
    ELSE.
    ENDIF.
    s2 = p1. s3 = 1. s4 = 1080547. s5 = 2. s6 = l5. s7 = 128. s8 = l3. s7 = s7 - s8. PERFORM f358 USING s2 s3 s4 s5 s6 s7 CHANGING s2.
  ENDDO.
  s3 = l4. s4 = 128. s3 = s3 + s4. gv_g0 = s3. rv = s2.
ENDFORM.

FORM f636 USING p0 TYPE i p1 TYPE i CHANGING rv TYPE i.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i.
  DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i.
  DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = -64. s0 = s0 + s1. l2 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        DO 1 TIMES. " block
          DO 1 TIMES. " block
            s0 = p0. s0 = mem_ld_i32_8u( s0 ). s1 = 1. s0 = s0 - s1.
            CASE s0.
              WHEN 0. lv_br = 1. EXIT.
              WHEN 1. lv_br = 2. EXIT.
              WHEN 2. lv_br = 3. EXIT.
              WHEN OTHERS. EXIT.
            ENDCASE.
          ENDDO.
          s0 = l2. s1 = p0. s1 = mem_ld_i32( s1 + 4 ). p0 = s1. mem_st_i32( iv_addr = s0 + 4 iv_val = s1 ). s0 = l2. s1 = 8. s0 = s0 + s1. l3 = s0. s1 = p0. PERFORM f678 USING s0 s1. s0 = l2. s1 = 3.
          mem_st_i32( iv_addr = s0 + 44 iv_val = s1 ). s0 = l2. s1 = 1116252. mem_st_i32( iv_addr = s0 + 40 iv_val = s1 ). s0 = l2. s1 = 2. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 52 CHANGING cv_mem = mv_mem ).
          s0 = l2. s1 = l2. s2 = 4. s1 = s1 + s2. s1 = zcl_wasm_rt=>extend_u32( s1 ). s2 = 111669149696. s1 = zcl_wasm_rt=>or64( iv_a = s1 iv_b = s2 ).
          zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 32 CHANGING cv_mem = mv_mem ). s0 = l2. s1 = l3. s1 = zcl_wasm_rt=>extend_u32( s1 ). s2 = 128849018880. s1 = zcl_wasm_rt=>or64( iv_a = s1 iv_b = s2 ).
          zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 24 CHANGING cv_mem = mv_mem ). s0 = l2. s1 = l2. s2 = 24. s1 = s1 + s2. mem_st_i32( iv_addr = s0 + 48 iv_val = s1 ). s0 = p1. s0 = mem_ld_i32( s0 + 20 ). s1 = p1.
          s1 = mem_ld_i32( s1 + 24 ). s2 = l2. s3 = 40. s2 = s2 + s3. PERFORM f360 USING s0 s1 s2 CHANGING s0. p0 = s0. s0 = l2. s0 = mem_ld_i32( s0 + 8 ).
          IF s0 = 0. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
          s0 = l2. s0 = mem_ld_i32( s0 + 12 ). PERFORM f125 USING s0. lv_br = 3. EXIT. " br 3
        ENDDO.
        s0 = p0. s0 = mem_ld_i32_8u( s0 + 1 ). p0 = s0. s0 = l2. s1 = 1. mem_st_i32( iv_addr = s0 + 44 iv_val = s1 ). s0 = l2. s1 = 1115224. mem_st_i32( iv_addr = s0 + 40 iv_val = s1 ). s0 = l2. s1 = 1.
        zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 52 CHANGING cv_mem = mv_mem ). s0 = l2. s1 = l2. s2 = 24. s1 = s1 + s2. s1 = zcl_wasm_rt=>extend_u32( s1 ). s2 = 30064771072.
        s1 = zcl_wasm_rt=>or64( iv_a = s1 iv_b = s2 ). zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 8 CHANGING cv_mem = mv_mem ). s0 = l2. s1 = p0. s2 = 2. s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). p0 = s1.
        s2 = 1118840. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). mem_st_i32( iv_addr = s0 + 28 iv_val = s1 ). s0 = l2. s1 = p0. s2 = 1119004. s1 = s1 + s2. s1 = mem_ld_i32( s1 ). mem_st_i32( iv_addr = s0 + 24 iv_val = s1 ). s0 = l2. s1 = l2.
        s2 = 8. s1 = s1 + s2. mem_st_i32( iv_addr = s0 + 48 iv_val = s1 ). s0 = p1. s0 = mem_ld_i32( s0 + 20 ). s1 = p1. s1 = mem_ld_i32( s1 + 24 ). s2 = l2. s3 = 40. s2 = s2 + s3. PERFORM f360 USING s0 s1 s2 CHANGING s0. p0 = s0.
        lv_br = 2. EXIT. " br 2
      ENDDO.
      s0 = p1. s1 = p0. s1 = mem_ld_i32( s1 + 4 ). p0 = s1. s1 = mem_ld_i32( s1 ). s2 = p0. s2 = mem_ld_i32( s2 + 4 ). PERFORM f244 USING s0 s1 s2 CHANGING s0. p0 = s0. lv_br = 1. EXIT. " br 1
    ENDDO.
    s0 = p0. s0 = mem_ld_i32( s0 + 4 ). p0 = s0. s0 = mem_ld_i32( s0 ). s1 = p1. s2 = p0. s2 = mem_ld_i32( s2 + 4 ). s2 = mem_ld_i32( s2 + 16 ).
    DATA(lv_ci_func) = mt_tab0[ s2 + 1 ]. " call_indirect
    s0 = dispatch_t7( iv_idx = lv_ci_func p0 = s0 p1 = s1 ). p0 = s0.
  ENDDO.
  s0 = l2. s1 = -64. s0 = s0 - s1. gv_g0 = s0. s0 = p0. rv = s0.
ENDFORM.

FORM f637 USING p0 TYPE i p1 TYPE i p2 TYPE int8 CHANGING rv TYPE i.
  DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE f. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i.
  DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i.
  DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l3 = s0. gv_g0 = s0.
  DO 1 TIMES. " block
    DO 1 TIMES. " block
      DO 1 TIMES. " block
        DO. " loop
          DO 1 TIMES. " block
            DO 1 TIMES. " block
              DO 1 TIMES. " block
                s0 = 7. s1 = p2. s2 = 32. s1 = zcl_wasm_rt=>shr_u64( iv_val = s1 iv_shift = s2 ). s1 = zcl_wasm_rt=>wrap_i64( s1 ). l4 = s1. s2 = l4. s3 = 7. s2 = s2 - s3. s3 = -18.
                IF zcl_wasm_rt=>lt_u32( iv_a = s2 iv_b = s3 ) = abap_true. s2 = 1. ELSE. s2 = 0. ENDIF.
                IF s2 <> 0. s0 = s0. ELSE. s0 = s1. ENDIF.
                s1 = 9. s0 = s0 + s1.
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
                  WHEN 9. lv_br = 4. EXIT.
                  WHEN 10. lv_br = 4. EXIT.
                  WHEN 11. lv_br = 4. EXIT.
                  WHEN 12. lv_br = 4. EXIT.
                  WHEN 13. lv_br = 2. EXIT.
                  WHEN 14. lv_br = 2. EXIT.
                  WHEN 15. lv_br = 2. EXIT.
                  WHEN 16. EXIT.
                  WHEN OTHERS. lv_br = 2. EXIT.
                ENDCASE.
              ENDDO.
              s0 = p2. s1 = 9221120288580698112. s0 = s0 + s1. p2 = s0. s1 = 52. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = 2047. s0 = zcl_wasm_rt=>and32( iv_a = s0 iv_b = s1 ). p0 = s0.
              s1 = 1053.
              IF zcl_wasm_rt=>le_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0.
                s0 = p2. s0 = zcl_wasm_rt=>reinterpret_i64_f64( s0 ). l6 = s0. s0 = abs( s0 ). s1 = '2147483648.000000'.
                IF s0 < s1. s0 = 1. ELSE. s0 = 0. ENDIF.
                IF s0 <> 0.
                  s0 = l3. s1 = l6. s1 = trunc( s1 ). mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). lv_br = 6. EXIT. " br 6
                ELSE.
                ENDIF.
                s0 = l3. s1 = -2147483648. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). lv_br = 5. EXIT. " br 5
              ELSE.
              ENDIF.
              s0 = p0. s1 = 1106.
              IF zcl_wasm_rt=>le_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
              IF s0 <> 0.
                s0 = l3. s1 = 0. s2 = p2. s3 = 4503599627370495. s2 = zcl_wasm_rt=>and64( iv_a = s2 iv_b = s3 ). s3 = 4503599627370496. s2 = zcl_wasm_rt=>or64( iv_a = s2 iv_b = s3 ). s3 = p0. s4 = 1043. s3 = s3 - s4.
                s3 = zcl_wasm_rt=>extend_u32( s3 ). s2 = zcl_wasm_rt=>shl64( iv_val = s2 iv_shift = s3 ). s3 = 32. s2 = zcl_wasm_rt=>shr_u64( iv_val = s2 iv_shift = s3 ). s2 = zcl_wasm_rt=>wrap_i64( s2 ). p0 = s2. s1 = s1 - s2. s2 = p0.
                s3 = p2. s4 = 0.
                IF s3 < s4. s3 = 1. ELSE. s3 = 0. ENDIF.
                IF s3 <> 0. s1 = s1. ELSE. s1 = s2. ENDIF.
                mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). lv_br = 5. EXIT. " br 5
              ELSE.
              ENDIF.
              s0 = l3. s1 = 0. mem_st_i32( iv_addr = s0 + 12 iv_val = s1 ). lv_br = 4. EXIT. " br 4
            ENDDO.
            s0 = l3. s1 = 12. s0 = s0 + s1. s1 = p2. s1 = zcl_wasm_rt=>wrap_i64( s1 ). l5 = s1. s2 = 4. s1 = s1 + s2. s2 = 1. PERFORM f583 USING s0 s1 s2. s0 = l4. s1 = -11.
            IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
            s0 = l5. s1 = l5. s1 = mem_ld_i32( s1 ). l4 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l4. s1 = 1.
            IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
            IF s0 <> 0. lv_br = 3. EXIT. ENDIF. " br_if 3
            s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = p2. PERFORM f453 USING s0 s1. lv_br = 3. EXIT. " br 3
          ENDDO.
          s0 = 0. l4 = s0. s0 = p0. s1 = p2. s2 = 0. PERFORM f287 USING s0 s1 s2 CHANGING s0. p2 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 25769803776.
          IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. EXIT. ENDIF. " br_if 0
        ENDDO.
        s0 = -1. lv_br = 2. EXIT. " br 2
      ENDDO.
      s1 = l3. s2 = p2. zcl_wasm_rt=>mem_st_i64_trunc( EXPORTING iv_val = s2 iv_addr = s1 + 12 iv_op = 62 CHANGING cv_mem = mv_mem ).
    ENDDO.
    s1 = l3. s1 = mem_ld_i32( s1 + 12 ). l4 = s1. s1 = 0.
  ENDDO.
  s2 = p1. s3 = l4. mem_st_i32( iv_addr = s2 iv_val = s3 ). s2 = l3. s3 = 16. s2 = s2 + s3. gv_g0 = s2. rv = s1.
ENDFORM.

FORM f638 USING p0 TYPE i p1 TYPE int8 p2 TYPE int8 CHANGING rv TYPE int8.
  DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i. DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i.
  DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i. DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i.
  DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA s28 TYPE i. DATA s29 TYPE i. DATA s30 TYPE i. DATA s31 TYPE i. DATA s32 TYPE i. DATA s33 TYPE i. DATA s34 TYPE i. DATA s35 TYPE i. DATA s36 TYPE i. DATA s37 TYPE i. DATA s38 TYPE i.
  DATA lv_br TYPE i. s0 = gv_g0. s1 = 16. s0 = s0 - s1. l4 = s0. gv_g0 = s0. s0 = l4. s1 = p2. zcl_wasm_rt=>mem_st_i64( EXPORTING iv_val = s1 iv_addr = s0 + 8 CHANGING cv_mem = mv_mem ).
  DO 1 TIMES. " block
    s0 = p0. s1 = p1. s2 = 136. s3 = p1. s4 = 0. PERFORM f192 USING s0 s1 s2 s3 s4 CHANGING s0. p2 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 25769803776.
    IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    DO 1 TIMES. " block
      s0 = p2. s1 = -4294967296.
      IF zcl_wasm_rt=>lt_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = p2. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l3 = s0. s0 = mem_ld_i32_16u( s0 + 6 ). l5 = s0. s1 = 13.
      IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        DO 1 TIMES. " block
          s0 = l5. s1 = 48.
          IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0.
            s0 = l3. s0 = mem_ld_i32( s0 + 32 ). s0 = mem_ld_i32_8u( s0 + 16 ). lv_br = 1. EXIT. " br 1
          ELSE.
          ENDIF.
          s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s1 = mem_ld_i32( s1 + 68 ). s2 = l5. s3 = 24. s2 = s2 * s3. s1 = s1 + s2. s1 = mem_ld_i32( s1 + 16 ). s2 = 0.
          IF s1 <> s2. s1 = 1. ELSE. s1 = 0. ENDIF.
        ENDDO.
        IF s1 = 0. s1 = 1. ELSE. s1 = 0. ENDIF.
        IF s1 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
      ELSE.
      ENDIF.
      s1 = p0. s2 = p2. s3 = p1. s4 = 12884901888. s5 = 1. s6 = l4. s7 = 8. s6 = s6 + s7. s7 = 2. PERFORM f0 USING s1 s2 s3 s4 s5 s6 s7 CHANGING s1. p1 = s1. s1 = l3. s2 = l3. s2 = mem_ld_i32( s2 ). l3 = s2. s3 = 1. s2 = s2 - s3.
      mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = l3. s2 = 1.
      IF s1 <= s2. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0.
        s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s2 = p2. PERFORM f453 USING s1 s2.
      ELSE.
      ENDIF.
      s1 = p1. s2 = -4294967297.
      IF zcl_wasm_rt=>gt_u64( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0.
        s1 = p1. p2 = s1. lv_br = 2. EXIT. " br 2
      ELSE.
      ENDIF.
      s1 = p1. s2 = -21474836480. s1 = zcl_wasm_rt=>and64( iv_a = s1 iv_b = s2 ). s2 = 8589934592.
      IF s1 = s2. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0.
        s1 = p1. p2 = s1. lv_br = 2. EXIT. " br 2
      ELSE.
      ENDIF.
      s1 = p0. s2 = p1. PERFORM f1164 USING s1 s2. s1 = p0. s2 = 1142361. s3 = 0. PERFORM f970 USING s1 s2 s3 CHANGING s1. s1 = 25769803776. p2 = s1. lv_br = 1. EXIT. " br 1
    ENDDO.
    DO 1 TIMES. " block
      s1 = p2. s2 = 32. s1 = zcl_wasm_rt=>shr_u64( iv_val = s1 iv_shift = s2 ). s1 = zcl_wasm_rt=>wrap_i64( s1 ). s2 = -11.
      IF zcl_wasm_rt=>lt_u32( iv_a = s1 iv_b = s2 ) = abap_true. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. EXIT. ENDIF. " br_if 0
      s1 = p2. s1 = zcl_wasm_rt=>wrap_i64( s1 ). l3 = s1. s2 = l3. s2 = mem_ld_i32( s2 ). l3 = s2. s3 = 1. s2 = s2 - s3. mem_st_i32( iv_addr = s1 iv_val = s2 ). s1 = l3. s2 = 1.
      IF s1 > s2. s1 = 1. ELSE. s1 = 0. ENDIF.
      IF s1 <> 0. EXIT. ENDIF. " br_if 0
      s1 = p0. s1 = mem_ld_i32( s1 + 16 ). s2 = p2. PERFORM f453 USING s1 s2.
    ENDDO.
    s1 = p0. s2 = p1. s3 = l4. s4 = l4. s5 = 8. s4 = s4 + s5. PERFORM f96 USING s1 s2 s3 s4 CHANGING s1. p2 = s1.
  ENDDO.
  s1 = l4. s2 = 16. s1 = s1 + s2. gv_g0 = s1. s1 = p2. rv = s1.
ENDFORM.

FORM f639 USING p0 TYPE i p1 TYPE int8 CHANGING rv TYPE int8.
  DATA l2 TYPE i. DATA l3 TYPE i. DATA l4 TYPE i. DATA l5 TYPE i. DATA l6 TYPE int8. DATA l7 TYPE int8. DATA s0 TYPE i. DATA s1 TYPE i. DATA s2 TYPE i. DATA s3 TYPE i. DATA s4 TYPE i. DATA s5 TYPE i. DATA s6 TYPE i. DATA s7 TYPE i.
  DATA s8 TYPE i. DATA s9 TYPE i. DATA s10 TYPE i. DATA s11 TYPE i. DATA s12 TYPE i. DATA s13 TYPE i. DATA s14 TYPE i. DATA s15 TYPE i. DATA s16 TYPE i. DATA s17 TYPE i. DATA s18 TYPE i. DATA s19 TYPE i. DATA s20 TYPE i. DATA s21 TYPE i.
  DATA s22 TYPE i. DATA s23 TYPE i. DATA s24 TYPE i. DATA s25 TYPE i. DATA s26 TYPE i. DATA s27 TYPE i. DATA lv_br TYPE i.
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
      s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l2 = s0. s0 = mem_ld_i32_16u( s0 + 6 ). s1 = 7.
      IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      s0 = l2. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 32 ). p1 = s0. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = -34359738368.
      IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
    ENDDO.
    s0 = p0. s1 = 1142341. s2 = 0. PERFORM f970 USING s0 s1 s2 CHANGING s0. s0 = 25769803776. rv = s0. RETURN.
  ENDDO.
  s0 = p1. s0 = zcl_wasm_rt=>wrap_i64( s0 ). l2 = s0. s1 = l2. s1 = mem_ld_i32( s1 ). s2 = 1. s1 = s1 + s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = p1. s1 = -4294967296. s0 = zcl_wasm_rt=>and64( iv_a = s0 iv_b = s1 ). s1 = 25769803776.
  IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    s0 = p1. rv = s0. RETURN.
  ELSE.
  ENDIF.
  s0 = 12884901888. l6 = s0. s0 = l2. s0 = zcl_wasm_rt=>mem_ld_i64( iv_mem = mv_mem iv_addr = s0 + 4 ). l7 = s0. s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -2147483648.
  IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
  IF s0 <> 0.
    DO 1 TIMES. " block
      s0 = l7. s1 = -4611686018427387905.
      IF zcl_wasm_rt=>gt_u64( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0.
        s0 = l2. s0 = mem_ld_i32( s0 + 12 ). l3 = s0. lv_br = 1. EXIT. " br 1
      ELSE.
      ENDIF.
      s0 = p0. s0 = mem_ld_i32( s0 + 16 ). l3 = s0. s0 = mem_ld_i32( s0 + 56 ). l5 = s0. s1 = l3. s1 = mem_ld_i32( s1 + 52 ). s2 = l7. s3 = 32. s2 = zcl_wasm_rt=>shr_u64( iv_val = s2 iv_shift = s3 ). s2 = zcl_wasm_rt=>wrap_i64( s2 ).
      s3 = l3. s3 = mem_ld_i32( s3 + 36 ). s4 = 1. s3 = s3 - s4. s2 = zcl_wasm_rt=>and32( iv_a = s2 iv_b = s3 ). s3 = 2. s2 = zcl_wasm_rt=>shl32( iv_val = s2 iv_shift = s3 ). s1 = s1 + s2. s1 = mem_ld_i32( s1 ). l3 = s1. s2 = 2.
      s1 = zcl_wasm_rt=>shl32( iv_val = s1 iv_shift = s2 ). s0 = s0 + s1. s0 = mem_ld_i32( s0 ). l4 = s0. s1 = l2.
      IF s0 = s1. s0 = 1. ELSE. s0 = 0. ENDIF.
      IF s0 <> 0. EXIT. ENDIF. " br_if 0
      DO. " loop
        s0 = l3.
        IF s0 <> 0.
          s0 = l2. s1 = l5. s2 = l4. s2 = mem_ld_i32( s2 + 12 ). l3 = s2. s3 = 2. s2 = zcl_wasm_rt=>shl32( iv_val = s2 iv_shift = s3 ). s1 = s1 + s2. s1 = mem_ld_i32( s1 ). l4 = s1.
          IF s0 <> s1. s0 = 1. ELSE. s0 = 0. ENDIF.
          IF s0 <> 0. lv_br = 1. EXIT. ENDIF. " br_if 1
          lv_br = 2. EXIT. " br 2
        ELSE.
        ENDIF.
      ENDDO.
      s0 = 1152235. s1 = 1148333. s2 = 2697. s3 = 1135303. PERFORM f1101 USING s0 s1 s2 s3.
      RAISE EXCEPTION TYPE cx_sy_program_error. " unreachable
    ENDDO.
    s0 = p0. s1 = l3. s2 = 1. PERFORM f772 USING s0 s1 s2 CHANGING s0. l6 = s0.
  ELSE.
  ENDIF.
  DO 1 TIMES. " block
    s0 = p1. s1 = 32. s0 = zcl_wasm_rt=>shr_u64( iv_val = s0 iv_shift = s1 ). s0 = zcl_wasm_rt=>wrap_i64( s0 ). s1 = -11.
    IF zcl_wasm_rt=>lt_u32( iv_a = s0 iv_b = s1 ) = abap_true. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = l2. s1 = l2. s1 = mem_ld_i32( s1 ). l2 = s1. s2 = 1. s1 = s1 - s2. mem_st_i32( iv_addr = s0 iv_val = s1 ). s0 = l2. s1 = 1.
    IF s0 > s1. s0 = 1. ELSE. s0 = 0. ENDIF.
    IF s0 <> 0. EXIT. ENDIF. " br_if 0
    s0 = p0. s0 = mem_ld_i32( s0 + 16 ). s1 = p1. PERFORM f453 USING s0 s1.
  ENDDO.
  s0 = l6. rv = s0.
ENDFORM.

