.segment "BANK_00"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $8000  ; for listing file
; 0x000010-0x00400F



.export sub_0x003315
.export sub_0x0037C0



; временное решение, чтобы правильно подключался банк 01
.res $2000, $FF



sub_0x003315:
C - - - - - 0x003315 00:B305: 20 D6 90  JSR sub_0x0090E6_0600x_AND_F0
C - - - - - 0x003318 00:B308: D0 5F     BNE bra_B369_RTS
C - - - - - 0x00331A 00:B30A: BD 1A 06  LDA ram_obj_animation_lo,X
C - - - - - 0x00331D 00:B30D: F0 5A     BEQ bra_B369_RTS
C - - - - - 0x00331F 00:B30F: 20 03 90  JSR sub_0x009013
C - - - - - 0x003322 00:B312: F0 05     BEQ bra_B319
C - - - - - 0x003324 00:B314: 8A        TXA
C - - - - - 0x003325 00:B315: A8        TAY
C - - - - - 0x003326 00:B316: 20 C5 94  JSR sub_0x0094D5
bra_B319:
C - - - - - 0x003329 00:B319: 20 41 91  JSR sub_0x009151_0682x_and_0F
C - - - - - 0x00332C 00:B31C: F0 4B     BEQ bra_B369_RTS
C - - - - - 0x00332E 00:B31E: A8        TAY
C - - - - - 0x00332F 00:B31F: B9 A1 B8  LDA tbl_B8A2 - $01,Y
C - - - - - 0x003332 00:B322: F0 45     BEQ bra_B369_RTS
C - - - - - 0x003334 00:B324: C9 02     CMP #$02
C - - - - - 0x003336 00:B326: F0 42     BEQ bra_B36A
C - - - - - 0x003338 00:B328: C9 03     CMP #$03
C - - - - - 0x00333A 00:B32A: F0 1A     BEQ bra_B346
C - - - - - 0x00333C 00:B32C: 20 88 B3  JSR sub_B388
C - - - - - 0x00333F 00:B32F: F0 38     BEQ bra_B369_RTS
bra_B331:
ofs_020_B331_04:
C - - - - - 0x003341 00:B331: 20 41 91  JSR sub_0x009151_0682x_and_0F
C - - - - - 0x003344 00:B334: C9 0A     CMP #$0A
C - - - - - 0x003346 00:B336: F0 31     BEQ bra_B369_RTS
; destroy object with a bullet?
C - - - - - 0x003348 00:B338: A9 06     LDA #$06
C - - - - - 0x00334A 00:B33A: 9D 82 06  STA ram_0682_obj,X
C - - - - - 0x00334D 00:B33D: 20 7D B3  JSR sub_B37D
C - - - - - 0x003350 00:B340: 20 96 91  JSR sub_0x0091A6
C - - - - - 0x003353 00:B343: 4C C0 B9  JMP loc_B9C0
bra_B346:
C - - - - - 0x003356 00:B346: 20 88 B3  JSR sub_B388
C - - - - - 0x003359 00:B349: D0 E6     BNE bra_B331
C - - - - - 0x00335B 00:B34B: E0 12     CPX #$12
C - - - - - 0x00335D 00:B34D: 90 1A     BCC bra_B369_RTS
C - - - - - 0x00335F 00:B34F: A0 0A     LDY #$0A
bra_B351_loop:
C - - - - - 0x003361 00:B351: B9 82 06  LDA ram_0682_obj,Y
C - - - - - 0x003364 00:B354: F0 0E     BEQ bra_B364
C - - - - - 0x003366 00:B356: 20 F4 94  JSR sub_0x009504
C - - - - - 0x003369 00:B359: C9 10     CMP #$10
C - - - - - 0x00336B 00:B35B: B0 07     BCS bra_B364
C - - - - - 0x00336D 00:B35D: 20 FE 94  JSR sub_0x00950E
C - - - - - 0x003370 00:B360: C9 10     CMP #$10
C - - - - - 0x003372 00:B362: 90 CD     BCC bra_B331
bra_B364:
C - - - - - 0x003374 00:B364: C8        INY
C - - - - - 0x003375 00:B365: C0 12     CPY #$12
C - - - - - 0x003377 00:B367: 90 E8     BCC bra_B351_loop
bra_B369_RTS:
C - - - - - 0x003379 00:B369: 60        RTS
bra_B36A:
C - - - - - 0x00337A 00:B36A: 20 0C 90  JSR sub_0x00901C
C - - - - - 0x00337D 00:B36D: 90 FA     BCC bra_B369_RTS
ofs_020_B36F_1A:
C - - J - - 0x00337F 00:B36F: A9 1A     LDA #$1A
C - - - - - 0x003381 00:B371: D0 02     BNE bra_B375    ; jmp



ofs_020_B373_0E:
C - - J - - 0x003383 00:B373: A9 0A     LDA #$0A
bra_B375:
C - - - - - 0x003385 00:B375: 9D 82 06  STA ram_0682_obj,X
C - - - - - 0x003388 00:B378: A9 04     LDA #$04
C - - - - - 0x00338A 00:B37A: 9D 20 07  STA ram_0720_obj,X
sub_B37D:
C - - - - - 0x00338D 00:B37D: 20 E2 91  JSR sub_0x0091F2
C - - - - - 0x003390 00:B380: 9D B2 06  STA ram_06B2_obj,X
sub_B383:
C - - - - - 0x003393 00:B383: A9 FF     LDA #$FF
C - - - - - 0x003395 00:B385: 4C 38 98  JMP loc_0x009848



sub_B388:
; out
    ; Z
        ; 0 = 
        ; 1 = 
C - - - - - 0x003398 00:B388: 85 00     STA ram_0000_t29
C - - - - - 0x00339A 00:B38A: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x00339D 00:B38D: 48        PHA
C - - - - - 0x00339E 00:B38E: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x0033A1 00:B391: 48        PHA
C - - - - - 0x0033A2 00:B392: 20 A0 B3  JSR sub_B3A0
C - - - - - 0x0033A5 00:B395: 68        PLA
C - - - - - 0x0033A6 00:B396: 9D 68 06  STA ram_obj_pos_Y,X
C - - - - - 0x0033A9 00:B399: 68        PLA
C - - - - - 0x0033AA 00:B39A: 9D 4E 06  STA ram_obj_pos_X,X
C - - - - - 0x0033AD 00:B39D: A5 00     LDA ram_0000_t43
C - - - - - 0x0033AF 00:B39F: 60        RTS



sub_B3A0:
C - - - - - 0x0033B0 00:B3A0: BD 20 07  LDA ram_0720_obj,X
C - - - - - 0x0033B3 00:B3A3: D0 03     BNE bra_B3A8
bra_B3A5:
C - - - - - 0x0033B5 00:B3A5: 4C 6B B4  JMP loc_B46B
bra_B3A8:
C - - - - - 0x0033B8 00:B3A8: 20 D6 90  JSR sub_0x0090E6_0600x_AND_F0
C - - - - - 0x0033BB 00:B3AB: D0 F8     BNE bra_B3A5
C - - - - - 0x0033BD 00:B3AD: 20 D3 9E  JSR sub_9ED3
C - - - - - 0x0033C0 00:B3B0: 20 B9 8F  JSR sub_0x008FC9
C - - - - - 0x0033C3 00:B3B3: B0 F0     BCS bra_B3A5
C - - - - - 0x0033C5 00:B3B5: BD 34 06  LDA ram_obj_animation_hi,X
C - - - - - 0x0033C8 00:B3B8: 30 0A     BMI bra_B3C4
C - - - - - 0x0033CA 00:B3BA: A5 01     LDA ram_0001_t15_table_index
C - - - - - 0x0033CC 00:B3BC: C9 09     CMP #$09
C - - - - - 0x0033CE 00:B3BE: F0 E5     BEQ bra_B3A5
C - - - - - 0x0033D0 00:B3C0: C9 07     CMP #$07
C - - - - - 0x0033D2 00:B3C2: F0 E1     BEQ bra_B3A5
bra_B3C4:
C - - - - - 0x0033D4 00:B3C4: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x0033D7 00:B3C7: C9 C0     CMP #$C0
C - - - - - 0x0033D9 00:B3C9: 90 03     BCC bra_B3CE
bra_B3CB:
C - - - - - 0x0033DB 00:B3CB: 4C 26 B5  JMP loc_B526
bra_B3CE:
C - - - - - 0x0033DE 00:B3CE: A5 75     LDA ram_stage
C - - - - - 0x0033E0 00:B3D0: F0 32     BEQ bra_B404
C - - - - - 0x0033E2 00:B3D2: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x0033E5 00:B3D5: 18        CLC
C - - - - - 0x0033E6 00:B3D6: 69 10     ADC #$10
C - - - - - 0x0033E8 00:B3D8: C9 20     CMP #$20
C - - - - - 0x0033EA 00:B3DA: 90 EF     BCC bra_B3CB
C - - - - - 0x0033EC 00:B3DC: 20 9A 90  JSR sub_0x0090AA
C - - - - - 0x0033EF 00:B3DF: B0 23     BCS bra_B404
C - - - - - 0x0033F1 00:B3E1: A5 61     LDA ram_0061_lo
C - - - - - 0x0033F3 00:B3E3: 29 1F     AND #$1F
C - - - - - 0x0033F5 00:B3E5: F0 1D     BEQ bra_B404
C - - - - - 0x0033F7 00:B3E7: 85 18     STA ram_0018_t10
C - - - - - 0x0033F9 00:B3E9: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x0033FC 00:B3EC: 10 09     BPL bra_B3F7
C - - - - - 0x0033FE 00:B3EE: 20 07 95  JSR sub_0x009517_EOR_FF_CLC_ADC_01
C - - - - - 0x003401 00:B3F1: C5 18     CMP ram_0018_t10
C - - - - - 0x003403 00:B3F3: 90 D6     BCC bra_B3CB
C - - - - - 0x003405 00:B3F5: B0 0D     BCS bra_B404    ; jmp
bra_B3F7:
C - - - - - 0x003407 00:B3F7: 48        PHA
C - - - - - 0x003408 00:B3F8: A9 20     LDA #$20
C - - - - - 0x00340A 00:B3FA: 38        SEC
C - - - - - 0x00340B 00:B3FB: E5 18     SBC ram_0018_t10
C - - - - - 0x00340D 00:B3FD: 85 18     STA ram_0018_t11
C - - - - - 0x00340F 00:B3FF: 68        PLA
C - - - - - 0x003410 00:B400: C5 18     CMP ram_0018_t11
C - - - - - 0x003412 00:B402: 90 C7     BCC bra_B3CB
bra_B404:
C - - - - - 0x003414 00:B404: 20 C1 F6  JSR sub_0x01F6D1
C - - - - - 0x003417 00:B407: 20 BA 93  JSR sub_0x0093CA
C - - - - - 0x00341A 00:B40A: B0 4E     BCC bra_B40C
                                        JMP loc_B45A
bra_B40C:
C - - - - - 0x00341C 00:B40C: 20 89 91  JSR sub_0x009199_0095_clear_bit7
C - - - - - 0x00341F 00:B40F: A4 88     LDY ram_x2_stage
C - - - - - 0x003421 00:B411: B9 1E B4  LDA tbl_B41E,Y
C - - - - - 0x003424 00:B414: 85 18     STA ram_0018_t03_jmp
C - - - - - 0x003426 00:B416: B9 1F B4  LDA tbl_B41E + $01,Y
C - - - - - 0x003429 00:B419: 85 19     STA ram_0018_t03_jmp + $01
C - - - - - 0x00342B 00:B41B: 6C 18 00  JMP (ram_0018_t03_jmp)



tbl_B41E:
- D 1 - - - 0x00342E 00:B41E: 28 B4     .word ofs_019_B428_00_stage_1
- D 1 - - - 0x003430 00:B420: A6 B4     .word ofs_019_B4A6_02_stage_2
- D 1 - - - 0x003432 00:B422: CB B4     .word ofs_019_B4CB_04_stage_3
- D 1 - - - 0x003434 00:B424: F7 B4     .word ofs_019_B4F7_06_stage_4
- D 1 - - - 0x003436 00:B426: E7 B4     .word ofs_019_B4E7_08_stage_5



sub_9ED3:
C - - - - - 0x009EE3 02:9ED3: A5 00     LDA ram_0000_t29
C - - - - - 0x009EE5 02:9ED5: C9 04     CMP #$04
C - - - - - 0x009EE7 02:9ED7: D0 F9     BNE bra_9F2A_RTS
C - - - - - 0x009EE9 02:9ED9: A5 23     LDA ram_frm_cnt
C - - - - - 0x009EEB 02:9EDB: 29 30     AND #$30
C - - - - - 0x009EED 02:9EDD: F0 F3     BEQ bra_9F2A_RTS
; / 10
C - - - - - 0x009EEF 02:9EDF: 4A        LSR
C - - - - - 0x009EF0 02:9EE0: 4A        LSR
C - - - - - 0x009EF1 02:9EE1: 4A        LSR
C - - - - - 0x009EF2 02:9EE2: 4A        LSR
C - - - - - 0x009EF3 02:9EE3: 29 02     AND #$02
C - - - - - 0x009EF5 02:9EE5: A8        TAY
C - - - - - 0x009EF6 02:9EE6: B9 2C 9F  LDA tbl_9F2C,Y
C - - - - - 0x009EF9 02:9EE9: 85 00     STA ram_0000_t10_data
C - - - - - 0x009EFB 02:9EEB: B9 2D 9F  LDA tbl_9F2C + $01,Y
C - - - - - 0x009EFE 02:9EEE: 85 01     STA ram_0000_t10_data + $01
C - - - - - 0x009F00 02:9EF0: 20 B1 93  JSR sub_0x0093C1_06B2x_LSRx4_TAY
C - - - - - 0x009F03 02:9EF3: B1 00     LDA (ram_0000_t10_data),Y
C - - - - - 0x009F05 02:9EF5: 48        PHA
C - - - - - 0x009F06 02:9EF6: C8        INY
C - - - - - 0x009F07 02:9EF7: B1 00     LDA (ram_0000_t10_data),Y
C - - - - - 0x009F09 02:9EF9: 85 02     STA ram_0002_t30
C - - - - - 0x009F0B 02:9EFB: 18        CLC
C - - - - - 0x009F0C 02:9EFC: 7D 68 06  ADC ram_obj_pos_Y,X
C - - - - - 0x009F0F 02:9EFF: 9D 68 06  STA ram_obj_pos_Y,X
C - - - - - 0x009F12 02:9F02: 6A        ROR
C - - - - - 0x009F13 02:9F03: 45 02     EOR ram_0002_t30
C - - - - - 0x009F15 02:9F05: 2A        ROL
C - - - - - 0x009F16 02:9F06: 90 0C     BCC bra_9F14
- - - - - - 0x009F18 02:9F08: A9 F8     LDA #$F8
- - - - - - 0x009F1A 02:9F0A: BC 68 06  LDY ram_obj_pos_Y,X
- - - - - - 0x009F1D 02:9F0D: 10 02     BPL bra_9F11
- - - - - - 0x009F1F 02:9F0F: A9 08     LDA #$08
bra_9F11:
- - - - - - 0x009F21 02:9F11: 9D 68 06  STA ram_obj_pos_Y,X
bra_9F14:
C - - - - - 0x009F24 02:9F14: 68        PLA
C - - - - - 0x009F25 02:9F15: 85 02     STA ram_0002_t31
C - - - - - 0x009F27 02:9F17: 20 C5 91  JSR sub_0x0091D5_add_to_pos_X
C - - - - - 0x009F2A 02:9F1A: 6A        ROR
C - - - - - 0x009F2B 02:9F1B: 45 02     EOR ram_0002_t31
C - - - - - 0x009F2D 02:9F1D: 2A        ROL
C - - - - - 0x009F2E 02:9F1E: 90 B2     BCC bra_9F2A_RTS
- - - - - - 0x009F30 02:9F20: A9 F8     LDA #$F8
- - - - - - 0x009F32 02:9F22: BC 4E 06  LDY ram_obj_pos_X,X
- - - - - - 0x009F35 02:9F25: 10 02     BPL bra_9F29
- - - - - - 0x009F37 02:9F27: A9 08     LDA #$08
bra_9F29:
- - - - - - 0x009F39 02:9F29: 4C C9 91  JMP loc_0x0091D9_set_pos_X
bra_9F2A_RTS:
                                        RTS



tbl_9F2C:
- D 0 - - - 0x009F3C 02:9F2C: 30 9F     .word off_9F30_00
- D 0 - - - 0x009F3E 02:9F2E: 40 9F     .word off_9F40_10



off_9F30_00:
;                                              +---------- 
;                                              |    +----- 
;                                              |    |
- D 0 - I - 0x009F40 02:9F30: 08        .byte $08, $00   ; 00 
- D 0 - I - 0x009F42 02:9F32: 08        .byte $08, $08   ; 20 
- D 0 - I - 0x009F44 02:9F34: 00        .byte $00, $08   ; 40 
- D 0 - I - 0x009F46 02:9F36: F8        .byte $F8, $08   ; 60 
- D 0 - I - 0x009F48 02:9F38: F8        .byte $F8, $00   ; 80 
- D 0 - I - 0x009F4A 02:9F3A: F8        .byte $F8, $F8   ; A0 
- D 0 - I - 0x009F4C 02:9F3C: 00        .byte $00, $F8   ; C0 
- D 0 - I - 0x009F4E 02:9F3E: 08        .byte $08, $F8   ; E0 



off_9F40_10:
;                                              +---------- 
;                                              |    +----- 
;                                              |    |
- D 0 - I - 0x009F50 02:9F40: 14        .byte $14, $00   ; 00 
- D 0 - I - 0x009F52 02:9F42: 14        .byte $14, $14   ; 20 
- D 0 - I - 0x009F54 02:9F44: 00        .byte $00, $14   ; 40 
- D 0 - I - 0x009F56 02:9F46: EC        .byte $EC, $14   ; 60 
- D 0 - I - 0x009F58 02:9F48: EC        .byte $EC, $00   ; 80 
- D 0 - I - 0x009F5A 02:9F4A: EC        .byte $EC, $EC   ; A0 
- D 0 - I - 0x009F5C 02:9F4C: 00        .byte $00, $EC   ; C0 
- D 0 - I - 0x009F5E 02:9F4E: 14        .byte $14, $EC   ; E0 



ofs_019_B428_00_stage_1:
C - - J - - 0x003438 00:B428: A5 00     LDA ram_0000_t42
C - - - - - 0x00343A 00:B42A: 38        SEC
C - - - - - 0x00343B 00:B42B: E9 75     SBC #$75
C - - - - - 0x00343D 00:B42D: C9 02     CMP #$02
C - - - - - 0x00343F 00:B42F: 90 0B     BCC bra_B43C
C - - - - - 0x003441 00:B431: C9 05     CMP #$05
C - - - - - 0x003443 00:B433: F0 07     BEQ bra_B43C
C - - - - - 0x003445 00:B435: C9 06     CMP #$06
C - - - - - 0x003447 00:B437: F0 03     BEQ bra_B43C
bra_B439:
C - - - - - 0x003449 00:B439: 4C F7 B4  JMP loc_B4F7
bra_B43C:
C - - - - - 0x00344C 00:B43C: A5 26     LDA ram_buffer_index
C - - - - - 0x00344E 00:B43E: D0 1A     BNE bra_B45A
C - - - - - 0x003450 00:B440: 20 3F B5  JSR sub_B53F
loc_B443:
C D 1 - - - 0x003453 00:B443: E8        INX
C - - - - - 0x003454 00:B444: 86 8A     STX ram_008A
C - - - - - 0x003456 00:B446: A6 53     LDX ram_0053
C - - - - - 0x003458 00:B448: A5 8A     LDA ram_008A
C - - - - - 0x00345A 00:B44A: F0 ED     BEQ bra_B439
C - - - - - 0x00345C 00:B44C: A0 09     LDY #$09
C - - - - - 0x00345E 00:B44E: B9 82 07  LDA ram_0782_unk,Y
C - - - - - 0x003461 00:B451: D0 E6     BNE bra_B439
C - - - - - 0x003463 00:B453: A9 93     LDA #$93
C - - - - - 0x003465 00:B455: 20 D8 93  JSR sub_0x0093E8
C - - - - - 0x003468 00:B458: 90 20     BCC bra_B47A
bra_B45A:
loc_B45A:
C - - - - - 0x00346A 00:B45A: 20 F2 95  JSR sub_0x009602
C - - - - - 0x00346D 00:B45D: A5 D0     LDA ram_00D0
C - - - - - 0x00346F 00:B45F: F0 05     BEQ bra_B466
C - - - - - 0x003471 00:B461: A9 82     LDA #$82
C - - - - - 0x003473 00:B463: 9D 9C 06  STA ram_069C_obj,X
bra_B466:
C - - - - - 0x003476 00:B466: 20 90 91  JSR sub_0x0091A0_0095_set_bit7
C - - - - - 0x003479 00:B469: D0 0A     BNE bra_B475    ; jmp



loc_B46B:
C D 1 - - - 0x00347B 00:B46B: BD 9C 06  LDA ram_069C_obj,X
C - - - - - 0x00347E 00:B46E: 10 05     BPL bra_B475
C - - - - - 0x003480 00:B470: 20 72 91  JSR sub_0x009182_06B2x_AND_0F
C - - - - - 0x003483 00:B473: F0 53     BEQ bra_B4C8
bra_B475:
loc_B475:
C D 1 - - - 0x003485 00:B475: A9 00     LDA #$00
C - - - - - 0x003487 00:B477: 85 00     STA ram_0000_t43
bra_B479_RTS:
C - - - - - 0x003489 00:B479: 60        RTS
bra_B47A:
C - - - - - 0x00348A 00:B47A: A5 8A     LDA ram_008A
C - - - - - 0x00348C 00:B47C: 85 9F     STA ram_009F
C - - - - - 0x00348E 00:B47E: 29 7F     AND #$7F
C - - - - - 0x003490 00:B480: C9 28     CMP #$28
C - - - - - 0x003492 00:B482: 90 12     BCC bra_B496
C - - - - - 0x003494 00:B484: F0 09     BEQ bra_B48F
C - - - - - 0x003496 00:B486: B9 68 06  LDA ram_obj_pos_Y,Y
C - - - - - 0x003499 00:B489: 38        SEC
C - - - - - 0x00349A 00:B48A: E9 20     SBC #$20
C - - - - - 0x00349C 00:B48C: 99 68 06  STA ram_obj_pos_Y,Y
bra_B48F:
C - - - - - 0x00349F 00:B48F: A9 02     LDA #$02
C - - - - - 0x0034A1 00:B491: 99 A0 07  STA ram_07A0_unk,Y
C - - - - - 0x0034A4 00:B494: D0 0B     BNE bra_B4A1    ; jmp
bra_B496:
C - - - - - 0x0034A6 00:B496: A5 94     LDA ram_0094_array_index
C - - - - - 0x0034A8 00:B498: 99 BE 07  STA ram_07BE_unk,Y
C - - - - - 0x0034AB 00:B49B: 20 D0 8D  JSR sub_0x008DE0
C - - - - - 0x0034AE 00:B49E: 20 E5 B6  JSR sub_B6E5
bra_B4A1:
C - - - - - 0x0034B1 00:B4A1: A6 53     LDX ram_0053
C - - - - - 0x0034B3 00:B4A3: 4C FC B4  JMP loc_B4FC



ofs_019_B4A6_02_stage_2:
C - - J - - 0x0034B6 00:B4A6: A5 00     LDA ram_0000_t42
C - - - - - 0x0034B8 00:B4A8: 85 8A     STA ram_008A
C - - - - - 0x0034BA 00:B4AA: 38        SEC
C - - - - - 0x0034BB 00:B4AB: E9 E4     SBC #$E4
C - - - - - 0x0034BD 00:B4AD: C9 0A     CMP #$0A
C - - - - - 0x0034BF 00:B4AF: B0 46     BCS bra_B4F7
C - - - - - 0x0034C1 00:B4B1: A9 A2     LDA #$A2
C - - - - - 0x0034C3 00:B4B3: A0 09     LDY #$09
C - - - - - 0x0034C5 00:B4B5: 20 D8 93  JSR sub_0x0093E8
C - - - - - 0x0034C8 00:B4B8: B0 BF     BCS bra_B479_RTS
C - - - - - 0x0034CA 00:B4BA: A5 8A     LDA ram_008A
C - - - - - 0x0034CC 00:B4BC: 85 9F     STA ram_009F
C - - - - - 0x0034CE 00:B4BE: A5 02     LDA ram_0002_t18_array_index
C - - - - - 0x0034D0 00:B4C0: 99 BE 07  STA ram_07BE_unk,Y
C - - - - - 0x0034D3 00:B4C3: A9 00     LDA #$00
C - - - - - 0x0034D5 00:B4C5: 99 A0 07  STA ram_07A0_unk,Y
bra_B4C8:
C - - - - - 0x0034D8 00:B4C8: 4C 26 B5  JMP loc_B526



ofs_019_B4CB_04_stage_3:
C - - J - - 0x0034DB 00:B4CB: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x0034DE 00:B4CE: 29 F8     AND #$F8
C - - - - - 0x0034E0 00:B4D0: C9 98     CMP #$98
C - - - - - 0x0034E2 00:B4D2: B0 23     BCS bra_B4F7
C - - - - - 0x0034E4 00:B4D4: A5 00     LDA ram_0000_t42
C - - - - - 0x0034E6 00:B4D6: C9 6F     CMP #$6F
C - - - - - 0x0034E8 00:B4D8: F0 07     BEQ bra_B4E1
C - - - - - 0x0034EA 00:B4DA: 38        SEC
C - - - - - 0x0034EB 00:B4DB: E9 68     SBC #$68
C - - - - - 0x0034ED 00:B4DD: C9 02     CMP #$02
C - - - - - 0x0034EF 00:B4DF: B0 16     BCS bra_B4F7
bra_B4E1:
C - - - - - 0x0034F1 00:B4E1: 20 B4 B5  JSR sub_B5B4
C - - - - - 0x0034F4 00:B4E4: 4C 43 B4  JMP loc_B443



ofs_019_B4E7_08_stage_5:
C - - J - - 0x0034F7 00:B4E7: A5 00     LDA ram_0000_t42
C - - - - - 0x0034F9 00:B4E9: 38        SEC
C - - - - - 0x0034FA 00:B4EA: E9 6A     SBC #$6A
C - - - - - 0x0034FC 00:B4EC: C9 02     CMP #$02
C - - - - - 0x0034FE 00:B4EE: B0 07     BCS bra_B4F7
C - - - - - 0x003500 00:B4F0: 18        CLC
C - - - - - 0x003501 00:B4F1: 69 27     ADC #$27
C - - - - - 0x003503 00:B4F3: AA        TAX
C - - - - - 0x003504 00:B4F4: 4C 43 B4  JMP loc_B443
bra_B4F7:
loc_B4F7:
ofs_019_B4F7_06_stage_4:
C D 1 - - - 0x003507 00:B4F7: 20 0A 96  JSR sub_0x00961A
C - - - - - 0x00350A 00:B4FA: F0 2A     BEQ bra_B526
loc_B4FC:
C D 1 - - - 0x00350C 00:B4FC: A5 20     LDA ram_script_hi
C - - - - - 0x00350E 00:B4FE: C9 04     CMP #con_0020_04
C - - - - - 0x003510 00:B500: F0 1D     BEQ bra_B51F
C - - - - - 0x003512 00:B502: A5 9F     LDA ram_009F
C - - - - - 0x003514 00:B504: 38        SEC
C - - - - - 0x003515 00:B505: E9 21     SBC #$21
C - - - - - 0x003517 00:B507: C9 03     CMP #$03
C - - - - - 0x003519 00:B509: 90 14     BCC bra_B51F
C - - - - - 0x00351B 00:B50B: AD 87 07  LDA ram_0782_unk + $05
C - - - - - 0x00351E 00:B50E: C9 3B     CMP #$3B
C - - - - - 0x003520 00:B510: F0 0D     BEQ bra_B51F
C - - - - - 0x003522 00:B512: A5 8B     LDA ram_destr_obj_cnt
C - - - - - 0x003524 00:B514: C9 05     CMP #$05
C - - - - - 0x003526 00:B516: 90 07     BCC bra_B51F
C - - - - - 0x003528 00:B518: A9 00     LDA #$00
C - - - - - 0x00352A 00:B51A: 85 8B     STA ram_destr_obj_cnt
C - - - - - 0x00352C 00:B51C: 20 78 9A  JSR sub_0x009A88_drop_a_box_with_powerup
bra_B51F:
C - - - - - 0x00352F 00:B51F: E6 8B     INC ram_destr_obj_cnt
bra_B521:
C - - - - - 0x003531 00:B521: A9 02     LDA #$02
C - - - - - 0x003533 00:B523: 85 00     STA ram_0000_t43
C - - - - - 0x003535 00:B525: 60        RTS
bra_B526:
loc_B526:
C D 1 - - - 0x003536 00:B526: E0 0A     CPX #$0A
C - - - - - 0x003538 00:B528: 90 F7     BCC bra_B521
C - - - - - 0x00353A 00:B52A: 20 41 91  JSR sub_0x009151_0682x_and_0F
C - - - - - 0x00353D 00:B52D: C9 02     CMP #$02
C - - - - - 0x00353F 00:B52F: F0 F0     BEQ bra_B521
C - - - - - 0x003541 00:B531: C9 03     CMP #$03
C - - - - - 0x003543 00:B533: F0 EC     BEQ bra_B521
C - - - - - 0x003545 00:B535: C9 0A     CMP #$0A
C - - - - - 0x003547 00:B537: F0 03     BEQ bra_B53C
C - - - - - 0x003549 00:B539: 20 CD 91  JSR sub_0x0091DD
bra_B53C:
C - - - - - 0x00354C 00:B53C: 4C 75 B4  JMP loc_B475



sub_B53F:
C - - - - - 0x00354F 00:B53F: A5 02     LDA ram_0002_t18_array_index
C - - - - - 0x003551 00:B541: 85 94     STA ram_0094_array_index
; bzk optimize, useless STA
C - - - - - 0x003553 00:B543: 85 3A     STA ram_003A_t08_useless
C - - - - - 0x003555 00:B545: A5 00     LDA ram_0000_t42
C - - - - - 0x003557 00:B547: C9 75     CMP #$75
C - - - - - 0x003559 00:B549: F0 41     BEQ bra_B58C
C - - - - - 0x00355B 00:B54B: C9 7B     CMP #$7B
C - - - - - 0x00355D 00:B54D: F0 5C     BEQ bra_B5AB
C - - - - - 0x00355F 00:B54F: C9 7A     CMP #$7A
C - - - - - 0x003561 00:B551: F0 5E     BEQ bra_B5B1
C - - - - - 0x003563 00:B553: 20 B4 B6  JSR sub_B6B4
C - - - - - 0x003566 00:B556: A2 01     LDX #$01
C - - - - - 0x003568 00:B558: C9 76     CMP #$76
C - - - - - 0x00356A 00:B55A: F0 25     BEQ bra_B581_RTS
C - - - - - 0x00356C 00:B55C: 20 BC B6  JSR sub_B6BC
C - - - - - 0x00356F 00:B55F: E8        INX
C - - - - - 0x003570 00:B560: C9 76     CMP #$76
C - - - - - 0x003572 00:B562: F0 1E     BEQ bra_B582
C - - - - - 0x003574 00:B564: 20 BC B6  JSR sub_B6BC
C - - - - - 0x003577 00:B567: E8        INX
C - - - - - 0x003578 00:B568: 20 AA B6  JSR sub_B6AA
C - - - - - 0x00357B 00:B56B: C9 75     CMP #$75
C - - - - - 0x00357D 00:B56D: F0 12     BEQ bra_B581_RTS
C - - - - - 0x00357F 00:B56F: A2 06     LDX #$06
C - - - - - 0x003581 00:B571: 20 A4 B6  JSR sub_B6A4
C - - - - - 0x003584 00:B574: C9 75     CMP #$75
C - - - - - 0x003586 00:B576: F0 09     BEQ bra_B581_RTS
C - - - - - 0x003588 00:B578: A2 08     LDX #$08
C - - - - - 0x00358A 00:B57A: 20 A4 B6  JSR sub_B6A4
C - - - - - 0x00358D 00:B57D: F0 02     BEQ bra_B581_RTS
C - - - - - 0x00358F 00:B57F: A2 26     LDX #$26
bra_B581_RTS:
C - - - - - 0x003591 00:B581: 60        RTS
bra_B582:
C - - - - - 0x003592 00:B582: 20 A4 B6  JSR sub_B6A4
C - - - - - 0x003595 00:B585: C9 76     CMP #$76
C - - - - - 0x003597 00:B587: F0 F8     BEQ bra_B581_RTS
C - - - - - 0x003599 00:B589: A2 05     LDX #$05
C - - - - - 0x00359B 00:B58B: 60        RTS
bra_B58C:
C - - - - - 0x00359C 00:B58C: 20 B0 B6  JSR sub_B6B0
C - - - - - 0x00359F 00:B58F: A2 00     LDX #$00
C - - - - - 0x0035A1 00:B591: C9 76     CMP #$76
C - - - - - 0x0035A3 00:B593: F0 EC     BEQ bra_B581_RTS
C - - - - - 0x0035A5 00:B595: 20 BC B6  JSR sub_B6BC
C - - - - - 0x0035A8 00:B598: A2 04     LDX #$04
C - - - - - 0x0035AA 00:B59A: C9 76     CMP #$76
C - - - - - 0x0035AC 00:B59C: F0 E3     BEQ bra_B581_RTS
C - - - - - 0x0035AE 00:B59E: 20 BC B6  JSR sub_B6BC
C - - - - - 0x0035B1 00:B5A1: A2 07     LDX #$07
C - - - - - 0x0035B3 00:B5A3: 20 A4 B6  JSR sub_B6A4
C - - - - - 0x0035B6 00:B5A6: F0 D9     BEQ bra_B581_RTS
C - - - - - 0x0035B8 00:B5A8: A2 25     LDX #$25
C - - - - - 0x0035BA 00:B5AA: 60        RTS
bra_B5AB:
C - - - - - 0x0035BB 00:B5AB: 20 B8 B6  JSR sub_B6B8
C - - - - - 0x0035BE 00:B5AE: A2 23     LDX #$23
C - - - - - 0x0035C0 00:B5B0: 60        RTS
bra_B5B1:
- - - - - - 0x0035C1 00:B5B1: A2 24     LDX #$24
bra_B5B3_RTS:
C - - - - - 0x0035C3 00:B5B3: 60        RTS



sub_B5B4:
C - - - - - 0x0035C4 00:B5B4: A5 02     LDA ram_0002_t18_array_index
C - - - - - 0x0035C6 00:B5B6: 85 94     STA ram_0094_array_index
; bzk optimize, useless STA
C - - - - - 0x0035C8 00:B5B8: 85 3A     STA ram_003A_t09_useless
C - - - - - 0x0035CA 00:B5BA: A5 00     LDA ram_0000_t42
C - - - - - 0x0035CC 00:B5BC: A2 22     LDX #$22
C - - - - - 0x0035CE 00:B5BE: C9 6F     CMP #$6F
C - - - - - 0x0035D0 00:B5C0: F0 F1     BEQ bra_B5B3_RTS
C - - - - - 0x0035D2 00:B5C2: C9 68     CMP #$68
C - - - - - 0x0035D4 00:B5C4: D0 45     BNE bra_B60B
C - - - - - 0x0035D6 00:B5C6: A9 50     LDA #$50
C - - - - - 0x0035D8 00:B5C8: 20 BE B6  JSR sub_B6BE
C - - - - - 0x0035DB 00:B5CB: A2 09     LDX #$09
C - - - - - 0x0035DD 00:B5CD: C9 69     CMP #$69
C - - - - - 0x0035DF 00:B5CF: F0 79     BEQ bra_B64A_RTS
C - - - - - 0x0035E1 00:B5D1: 20 F4 B5  JSR sub_B5F4
C - - - - - 0x0035E4 00:B5D4: F0 74     BEQ bra_B64A_RTS
C - - - - - 0x0035E6 00:B5D6: A2 11     LDX #$11
C - - - - - 0x0035E8 00:B5D8: 20 ED B5  JSR sub_B5ED
C - - - - - 0x0035EB 00:B5DB: F0 6D     BEQ bra_B64A_RTS
C - - - - - 0x0035ED 00:B5DD: A2 17     LDX #$17
C - - - - - 0x0035EF 00:B5DF: 20 ED B5  JSR sub_B5ED
C - - - - - 0x0035F2 00:B5E2: F0 66     BEQ bra_B64A_RTS
C - - - - - 0x0035F4 00:B5E4: A2 1B     LDX #$1B
C - - - - - 0x0035F6 00:B5E6: 20 ED B5  JSR sub_B5ED
C - - - - - 0x0035F9 00:B5E9: F0 5F     BEQ bra_B64A_RTS
C - - - - - 0x0035FB 00:B5EB: A2 1E     LDX #$1E
sub_B5ED:
C - - - - - 0x0035FD 00:B5ED: 20 BC B6  JSR sub_B6BC
C - - - - - 0x003600 00:B5F0: C9 69     CMP #$69
C - - - - - 0x003602 00:B5F2: F0 56     BEQ bra_B64A_RTS
sub_B5F4:
C - - - - - 0x003604 00:B5F4: A4 94     LDY ram_0094_array_index
C - - - - - 0x003606 00:B5F6: B9 FF 03  LDA ram_0400 - $01,Y
C - - - - - 0x003609 00:B5F9: C9 69     CMP #$69
C - - - - - 0x00360B 00:B5FB: F0 4D     BEQ bra_B64A_RTS
C - - - - - 0x00360D 00:B5FD: C9 77     CMP #$77
C - - - - - 0x00360F 00:B5FF: F0 49     BEQ bra_B64A_RTS
C - - - - - 0x003611 00:B601: B9 01 04  LDA ram_0401,Y
C - - - - - 0x003614 00:B604: C9 69     CMP #$69
C - - - - - 0x003616 00:B606: F0 42     BEQ bra_B64A_RTS
C - - - - - 0x003618 00:B608: C9 77     CMP #$77
C - - - - - 0x00361A 00:B60A: 60        RTS
bra_B60B:
C - - - - - 0x00361B 00:B60B: A9 40     LDA #$40
C - - - - - 0x00361D 00:B60D: 20 BE B6  JSR sub_B6BE
C - - - - - 0x003620 00:B610: A2 0A     LDX #$0A
C - - - - - 0x003622 00:B612: C9 69     CMP #$69
C - - - - - 0x003624 00:B614: F0 34     BEQ bra_B64A_RTS
C - - - - - 0x003626 00:B616: 20 ED B5  JSR sub_B5ED
C - - - - - 0x003629 00:B619: F0 50     BEQ bra_B66B
C - - - - - 0x00362B 00:B61B: 20 ED B5  JSR sub_B5ED
C - - - - - 0x00362E 00:B61E: F0 55     BEQ bra_B675
C - - - - - 0x003630 00:B620: 20 ED B5  JSR sub_B5ED
C - - - - - 0x003633 00:B623: F0 61     BEQ bra_B686
C - - - - - 0x003635 00:B625: C9 68     CMP #$68
C - - - - - 0x003637 00:B627: F0 5D     BEQ bra_B686
C - - - - - 0x003639 00:B629: 20 ED B5  JSR sub_B5ED
C - - - - - 0x00363C 00:B62C: A2 8F     LDX #$8F
C - - - - - 0x00363E 00:B62E: 20 4B B6  JSR sub_B64B
C - - - - - 0x003641 00:B631: F0 17     BEQ bra_B64A_RTS
C - - - - - 0x003643 00:B633: A2 95     LDX #$95
C - - - - - 0x003645 00:B635: 20 5F B6  JSR sub_B65F
C - - - - - 0x003648 00:B638: F0 10     BEQ bra_B64A_RTS
C - - - - - 0x00364A 00:B63A: A2 1A     LDX #$1A
C - - - - - 0x00364C 00:B63C: 20 63 B6  JSR sub_B663
C - - - - - 0x00364F 00:B63F: F0 09     BEQ bra_B64A_RTS
C - - - - - 0x003651 00:B641: A2 1D     LDX #$1D
C - - - - - 0x003653 00:B643: 20 67 B6  JSR sub_B667
C - - - - - 0x003656 00:B646: F0 02     BEQ bra_B64A_RTS
C - - - - - 0x003658 00:B648: A2 1F     LDX #$1F
bra_B64A_RTS:
C - - - - - 0x00365A 00:B64A: 60        RTS



sub_B64B:
; ???
; bzk doesn't look like a color buffer usage
C - - - - - 0x00365B 00:B64B: A9 E0     LDA #$E0
bra_B64D:
C - - - - - 0x00365D 00:B64D: 18        CLC
C - - - - - 0x00365E 00:B64E: 65 94     ADC ram_0094_array_index
C - - - - - 0x003660 00:B650: A8        TAY
C - - - - - 0x003661 00:B651: B9 D0 03  LDA ram_brightnes_buffer,Y ; $03D5 $03DA $03DB $03E5 $03EA $03EB $03F5 $03FA $03FB $0409 $040A $040B $040C $040D $040E $0419 $041A $041B $041C $041D $041E $0429 $042A $042C $042D $042E $0439 $043A $043D $048A $048B $049A $049B $04AA $04ABC - - - - - 0x003664 00:B654: F0 03     BEQ bra_B659
C - - - - - 0x003664 00:B654: F0 03     BEQ bra_B659
C - - - - - 0x003666 00:B656: C9 68     CMP #$68
C - - - - - 0x003668 00:B658: 60        RTS
bra_B659:
C - - - - - 0x003669 00:B659: B9 E0 03  LDA ram_brightnes_buffer + $10,Y ; $0405 $040A $040B $0419 $041A $041B $041C $041D $041E $0429 $042A $042B $042C $042D $042E $0439 $043A $043C $043D $043E $0449 $044A $044D $049A $049B $04AA $04AB $04BA $04BB
C - - - - - 0x00366C 00:B65C: C9 69     CMP #$69
C - - - - - 0x00366E 00:B65E: 60        RTS



sub_B65F:
C - - - - - 0x00366F 00:B65F: A9 F0     LDA #$F0
C - - - - - 0x003671 00:B661: D0 EA     BNE bra_B64D    ; jmp



sub_B663:
C - - - - - 0x003673 00:B663: A9 00     LDA #$00
C - - - - - 0x003675 00:B665: F0 E6     BEQ bra_B64D    ; jmp



sub_B667:
C - - - - - 0x003677 00:B667: A9 10     LDA #$10
C - - - - - 0x003679 00:B669: D0 E2     BNE bra_B64D    ; jmp



bra_B66B:
C - - - - - 0x00367B 00:B66B: A2 0B     LDX #$0B
C - - - - - 0x00367D 00:B66D: 20 4B B6  JSR sub_B64B
C - - - - - 0x003680 00:B670: F0 D8     BEQ bra_B64A_RTS
C - - - - - 0x003682 00:B672: A2 12     LDX #$12
C - - - - - 0x003684 00:B674: 60        RTS



bra_B675:
C - - - - - 0x003685 00:B675: A2 0C     LDX #$0C
C - - - - - 0x003687 00:B677: 20 4B B6  JSR sub_B64B
C - - - - - 0x00368A 00:B67A: F0 CE     BEQ bra_B64A_RTS
C - - - - - 0x00368C 00:B67C: A2 13     LDX #$13
C - - - - - 0x00368E 00:B67E: 20 5F B6  JSR sub_B65F
C - - - - - 0x003691 00:B681: F0 C7     BEQ bra_B64A_RTS
C - - - - - 0x003693 00:B683: A2 18     LDX #$18
C - - - - - 0x003695 00:B685: 60        RTS



bra_B686:
C - - - - - 0x003696 00:B686: A2 8D     LDX #$8D
C - - - - - 0x003698 00:B688: 20 4B B6  JSR sub_B64B
C - - - - - 0x00369B 00:B68B: F0 BD     BEQ bra_B64A_RTS
C - - - - - 0x00369D 00:B68D: A2 14     LDX #$14
C - - - - - 0x00369F 00:B68F: 20 5F B6  JSR sub_B65F
C - - - - - 0x0036A2 00:B692: F0 B6     BEQ bra_B64A_RTS
C - - - - - 0x0036A4 00:B694: A2 19     LDX #$19
C - - - - - 0x0036A6 00:B696: 20 63 B6  JSR sub_B663
C - - - - - 0x0036A9 00:B699: F0 AF     BEQ bra_B64A_RTS
C - - - - - 0x0036AB 00:B69B: A2 1C     LDX #$1C
C - - - - - 0x0036AD 00:B69D: 60        RTS


; bzk garbage
- - - - - - 0x0036AE 00:B69E: A4 94     LDY ram_0094_array_index
- - - - - - 0x0036B0 00:B6A0: B9 F0 03  LDA ram_0400 - $10,Y
- - - - - - 0x0036B3 00:B6A3: 60        RTS



sub_B6A4:
C - - - - - 0x0036B4 00:B6A4: A4 94     LDY ram_0094_array_index
C - - - - - 0x0036B6 00:B6A6: B9 E0 03  LDA ram_0400 - $20,Y
C - - - - - 0x0036B9 00:B6A9: 60        RTS



sub_B6AA:
C - - - - - 0x0036BA 00:B6AA: A4 94     LDY ram_0094_array_index
C - - - - - 0x0036BC 00:B6AC: B9 D0 03  LDA ram_0400 - $30,Y
C - - - - - 0x0036BF 00:B6AF: 60        RTS



sub_B6B0:
C - - - - - 0x0036C0 00:B6B0: A9 30     LDA #$30
C - - - - - 0x0036C2 00:B6B2: D0 0A     BNE bra_B6BE    ; jmp



sub_B6B4:
C - - - - - 0x0036C4 00:B6B4: A9 20     LDA #$20
C - - - - - 0x0036C6 00:B6B6: D0 06     BNE bra_B6BE    ; jmp



sub_B6B8:
C - - - - - 0x0036C8 00:B6B8: A9 10     LDA #$10
C - - - - - 0x0036CA 00:B6BA: D0 02     BNE bra_B6BE    ; jmp



sub_B6BC:
C - - - - - 0x0036CC 00:B6BC: A9 F0     LDA #$F0
bra_B6BE:
sub_B6BE:
; in
    ; A = 
C - - - - - 0x0036CE 00:B6BE: 85 1F     STA ram_001F_t02
C - - - - - 0x0036D0 00:B6C0: 18        CLC
C - - - - - 0x0036D1 00:B6C1: 65 94     ADC ram_0094_array_index
C - - - - - 0x0036D3 00:B6C3: 85 94     STA ram_0094_array_index
C - - - - - 0x0036D5 00:B6C5: 85 1D     STA ram_001D_t01
C - - - - - 0x0036D7 00:B6C7: A4 53     LDY ram_0053
C - - - - - 0x0036D9 00:B6C9: 6A        ROR
C - - - - - 0x0036DA 00:B6CA: 45 1F     EOR ram_001F_t02
C - - - - - 0x0036DC 00:B6CC: 2A        ROL
C - - - - - 0x0036DD 00:B6CD: 90 08     BCC bra_B6D7
C - - - - - 0x0036DF 00:B6CF: B9 00 06  LDA ram_0600_obj,Y
C - - - - - 0x0036E2 00:B6D2: 49 80     EOR #$80
C - - - - - 0x0036E4 00:B6D4: 99 00 06  STA ram_0600_obj,Y
bra_B6D7:
C - - - - - 0x0036E7 00:B6D7: B9 00 06  LDA ram_0600_obj,Y
C - - - - - 0x0036EA 00:B6DA: 30 06     BMI bra_B6E2
C - - - - - 0x0036EC 00:B6DC: A4 1D     LDY ram_001D_t01
C - - - - - 0x0036EE 00:B6DE: B9 00 04  LDA ram_0400,Y
C - - - - - 0x0036F1 00:B6E1: 60        RTS
bra_B6E2:
C - - - - - 0x0036F2 00:B6E2: A9 FF     LDA #$FF
C - - - - - 0x0036F4 00:B6E4: 60        RTS



sub_B6E5:
C - - - - - 0x0036F5 00:B6E5: 20 C9 8D  JSR sub_0x008DD9_009F_AND_7F_TAY_DEY
C - - - - - 0x0036F8 00:B6E8: 98        TYA
C - - - - - 0x0036F9 00:B6E9: 4A        LSR
C - - - - - 0x0036FA 00:B6EA: A8        TAY
C - - - - - 0x0036FB 00:B6EB: B9 9C B7  LDA tbl_B79C,Y
C - - - - - 0x0036FE 00:B6EE: B0 04     BCS bra_B6F4
; / 10
C - - - - - 0x003700 00:B6F0: 4A        LSR
C - - - - - 0x003701 00:B6F1: 4A        LSR
C - - - - - 0x003702 00:B6F2: 4A        LSR
C - - - - - 0x003703 00:B6F3: 4A        LSR
bra_B6F4:
C - - - - - 0x003704 00:B6F4: 29 0F     AND #$0F
C - - - - - 0x003706 00:B6F6: 18        CLC
C - - - - - 0x003707 00:B6F7: 69 01     ADC #$01
C - - - - - 0x003709 00:B6F9: A4 91     LDY ram_0091_pos_Y
C - - - - - 0x00370B 00:B6FB: 99 A0 07  STA ram_07A0_unk,Y
C - - - - - 0x00370E 00:B6FE: 20 C9 8D  JSR sub_0x008DD9_009F_AND_7F_TAY_DEY
C - - - - - 0x003711 00:B701: B9 60 B7  LDA tbl_B760_index,Y
C - - - - - 0x003714 00:B704: A8        TAY
C - - - - - 0x003715 00:B705: B9 87 B7  LDA tbl_B787,Y
C - - - - - 0x003718 00:B708: 85 02     STA ram_0002_t19
C - - - - - 0x00371A 00:B70A: B9 88 B7  LDA tbl_B787 + $01,Y
C - - - - - 0x00371D 00:B70D: 85 03     STA ram_0003_t15
C - - - - - 0x00371F 00:B70F: A4 91     LDY ram_0091_pos_Y
C - - - - - 0x003721 00:B711: A9 E1     LDA #$E1
C - - - - - 0x003723 00:B713: 20 70 90  JSR sub_0x009080
C - - - - - 0x003726 00:B716: 18        CLC
C - - - - - 0x003727 00:B717: 65 02     ADC ram_0002_t19
C - - - - - 0x003729 00:B719: 99 AA 07  STA ram_07AA_unk,Y
C - - - - - 0x00372C 00:B71C: 08        PHP
C - - - - - 0x00372D 00:B71D: A9 E2     LDA #$E2
C - - - - - 0x00372F 00:B71F: 20 70 90  JSR sub_0x009080
C - - - - - 0x003732 00:B722: 28        PLP
C - - - - - 0x003733 00:B723: 65 03     ADC ram_0003_t15
C - - - - - 0x003735 00:B725: 99 B4 07  STA ram_07B4_unk,Y
C - - - - - 0x003738 00:B728: 20 C9 8D  JSR sub_0x008DD9_009F_AND_7F_TAY_DEY
C - - - - - 0x00373B 00:B72B: 98        TYA
C - - - - - 0x00373C 00:B72C: 48        PHA
C - - - - - 0x00373D 00:B72D: 29 07     AND #$07
C - - - - - 0x00373F 00:B72F: A8        TAY
C - - - - - 0x003740 00:B730: B9 40 99  LDA tbl_0x009950_bits,Y
C - - - - - 0x003743 00:B733: 85 00     STA ram_0000_t33
C - - - - - 0x003745 00:B735: 68        PLA
C - - - - - 0x003746 00:B736: 20 B5 93  JSR sub_0x0093C4_LSRx3_TAY
C - - - - - 0x003749 00:B739: B9 97 B7  LDA tbl_B797,Y
C - - - - - 0x00374C 00:B73C: A0 00     LDY #$00
C - - - - - 0x00374E 00:B73E: 25 00     AND ram_0000_t33
C - - - - - 0x003750 00:B740: F0 02     BEQ bra_B744
C - - - - - 0x003752 00:B742: A0 08     LDY #$08
bra_B744:
C - - - - - 0x003754 00:B744: 84 00     STY ram_0000_t34
C - - - - - 0x003756 00:B746: A9 DC     LDA #$DC
C - - - - - 0x003758 00:B748: 20 70 90  JSR sub_0x009080
C - - - - - 0x00375B 00:B74B: A4 91     LDY ram_0091_pos_Y
C - - - - - 0x00375D 00:B74D: 18        CLC
C - - - - - 0x00375E 00:B74E: 65 00     ADC ram_0000_t34
C - - - - - 0x003760 00:B750: 99 C8 07  STA ram_07C8_unk,Y
C - - - - - 0x003763 00:B753: 08        PHP
C - - - - - 0x003764 00:B754: A9 DD     LDA #$DD
C - - - - - 0x003766 00:B756: 20 70 90  JSR sub_0x009080
C - - - - - 0x003769 00:B759: 28        PLP
C - - - - - 0x00376A 00:B75A: 69 00     ADC #$00
C - - - - - 0x00376C 00:B75C: 99 D2 07  STA ram_07D2_unk,Y
C - - - - - 0x00376F 00:B75F: 60        RTS



tbl_B760_index:
- D 1 - - - 0x003770 00:B760: 00        .byte $00   ; 01 
- D 1 - - - 0x003771 00:B761: 02        .byte $02   ; 02 
- - - - - - 0x003772 00:B762: 04        .byte $04   ; 03 
- D 1 - - - 0x003773 00:B763: 06        .byte $06   ; 04 
- D 1 - - - 0x003774 00:B764: 00        .byte $00   ; 05 
- D 1 - - - 0x003775 00:B765: 02        .byte $02   ; 06 
- D 1 - - - 0x003776 00:B766: 04        .byte $04   ; 07 
- D 1 - - - 0x003777 00:B767: 00        .byte $00   ; 08 
- D 1 - - - 0x003778 00:B768: 02        .byte $02   ; 09 
- - - - - - 0x003779 00:B769: 00        .byte $00   ; 0A 
- D 1 - - - 0x00377A 00:B76A: 02        .byte $02   ; 0B 
- - - - - - 0x00377B 00:B76B: 04        .byte $04   ; 0C 
- D 1 - - - 0x00377C 00:B76C: 06        .byte $06   ; 0D 
- D 1 - - - 0x00377D 00:B76D: 08        .byte $08   ; 0E 
- - - - - - 0x00377E 00:B76E: 08        .byte $08   ; 0F 
- D 1 - - - 0x00377F 00:B76F: 0A        .byte $0A   ; 10 
- - - - - - 0x003780 00:B770: 0A        .byte $0A   ; 11 
- D 1 - - - 0x003781 00:B771: 00        .byte $00   ; 12 
- D 1 - - - 0x003782 00:B772: 02        .byte $02   ; 13 
- D 1 - - - 0x003783 00:B773: 04        .byte $04   ; 14 
- D 1 - - - 0x003784 00:B774: 06        .byte $06   ; 15 
- D 1 - - - 0x003785 00:B775: 08        .byte $08   ; 16 
- - - - - - 0x003786 00:B776: 08        .byte $08   ; 17 
- - - - - - 0x003787 00:B777: 00        .byte $00   ; 18 
- D 1 - - - 0x003788 00:B778: 02        .byte $02   ; 19 
- D 1 - - - 0x003789 00:B779: 04        .byte $04   ; 1A 
- D 1 - - - 0x00378A 00:B77A: 06        .byte $06   ; 1B 
- D 1 - - - 0x00378B 00:B77B: 00        .byte $00   ; 1C 
- D 1 - - - 0x00378C 00:B77C: 02        .byte $02   ; 1D 
- D 1 - - - 0x00378D 00:B77D: 04        .byte $04   ; 1E 
- D 1 - - - 0x00378E 00:B77E: 00        .byte $00   ; 1F 
- D 1 - - - 0x00378F 00:B77F: 02        .byte $02   ; 20 
- - - - - - 0x003790 00:B780: 00        .byte $00   ; 21 
- - - - - - 0x003791 00:B781: 02        .byte $02   ; 22 
- D 1 - - - 0x003792 00:B782: 04        .byte $04   ; 23 
- D 1 - - - 0x003793 00:B783: 0C        .byte $0C   ; 24 
- - - - - - 0x003794 00:B784: 0E        .byte $0E   ; 25 
- D 1 - - - 0x003795 00:B785: 00        .byte $00   ; 26 
- D 1 - - - 0x003796 00:B786: 02        .byte $02   ; 27 



tbl_B787:
;                                              +---------- 
;                                              |    +----- 
;                                              |    |
- D 1 - - - 0x003797 00:B787: 40        .byte $40, $00   ; 00 
- D 1 - - - 0x003799 00:B789: C0        .byte $C0, $FF   ; 02 
- D 1 - - - 0x00379B 00:B78B: 40        .byte $40, $FF   ; 04 
- D 1 - - - 0x00379D 00:B78D: C0        .byte $C0, $FE   ; 06 
- D 1 - - - 0x00379F 00:B78F: 40        .byte $40, $FE   ; 08 
- D 1 - - - 0x0037A1 00:B791: C0        .byte $C0, $FD   ; 0A 
- D 1 - - - 0x0037A3 00:B793: 00        .byte $00, $00   ; 0C 
- - - - - - 0x0037A5 00:B795: 80        .byte $80, $FF   ; 0E 



tbl_B797:
- D 1 - - - 0x0037A7 00:B797: 89        .byte $89   ; 00 
- D 1 - - - 0x0037A8 00:B798: 40        .byte $40   ; 08 
- D 1 - - - 0x0037A9 00:B799: 41        .byte $41   ; 10 
- D 1 - - - 0x0037AA 00:B79A: 12        .byte $12   ; 18 
- D 1 - - - 0x0037AB 00:B79B: 94        .byte $94   ; 20 



tbl_B79C:
;                                              +----------- 
;                                              |     +----- 
;                                              |     |
- D 1 - - - 0x0037AC 00:B79C: 00        .byte $00 + $00   ; 01 
- D 1 - - - 0x0037AD 00:B79D: 33        .byte $30 + $03   ; 03 
- D 1 - - - 0x0037AE 00:B79E: 00        .byte $00 + $00   ; 05 
- D 1 - - - 0x0037AF 00:B79F: 30        .byte $30 + $00   ; 07 
- D 1 - - - 0x0037B0 00:B7A0: 00        .byte $00 + $00   ; 09 
- D 1 - - - 0x0037B1 00:B7A1: 03        .byte $00 + $03   ; 0B 
- D 1 - - - 0x0037B2 00:B7A2: 37        .byte $30 + $07   ; 0D 
- D 1 - - - 0x0037B3 00:B7A3: 77        .byte $70 + $07   ; 0F 
- D 1 - - - 0x0037B4 00:B7A4: 70        .byte $70 + $00   ; 11 
- D 1 - - - 0x0037B5 00:B7A5: 03        .byte $00 + $03   ; 13 
- D 1 - - - 0x0037B6 00:B7A6: 37        .byte $30 + $07   ; 15 
- - - - - - 0x0037B7 00:B7A7: 70        .byte $70 + $00   ; 17 
- D 1 - - - 0x0037B8 00:B7A8: 03        .byte $00 + $03   ; 19 
- D 1 - - - 0x0037B9 00:B7A9: 30        .byte $30 + $00   ; 1B 
- D 1 - - - 0x0037BA 00:B7AA: 03        .byte $00 + $03   ; 1D 
- D 1 - - - 0x0037BB 00:B7AB: 00        .byte $00 + $00   ; 1F 
- - - - - - 0x0037BC 00:B7AC: 00        .byte $00 + $00   ; 21 
- D 1 - - - 0x0037BD 00:B7AD: 00        .byte $00 + $00   ; 23 
- D 1 - - - 0x0037BE 00:B7AE: 00        .byte $00 + $00   ; 25 
- D 1 - - - 0x0037BF 00:B7AF: 00        .byte $00 + $00   ; 27 



sub_0x0037C0:
C - - - - - 0x0037C0 00:B7B0: BD 9C 06  LDA ram_069C_obj,X
C - - - - - 0x0037C3 00:B7B3: 30 6D     BMI bra_B822
C - - - - - 0x0037C5 00:B7B5: 20 41 91  JSR sub_0x009151_0682x_and_0F
C - - - - - 0x0037C8 00:B7B8: A8        TAY
C - - - - - 0x0037C9 00:B7B9: B9 65 B8  LDA tbl_B866 - $01,Y
C - - - - - 0x0037CC 00:B7BC: E0 12     CPX #$12
C - - - - - 0x0037CE 00:B7BE: 90 03     BCC bra_B7C3
C - - - - - 0x0037D0 00:B7C0: B9 74 B8  LDA tbl_B875 - $01,Y
bra_B7C3:
C - - - - - 0x0037D3 00:B7C3: 9D 9C 06  STA ram_069C_obj,X
C - - - - - 0x0037D6 00:B7C6: B9 83 B8  LDA tbl_B884 - $01,Y
C - - - - - 0x0037D9 00:B7C9: C9 FF     CMP #$FF
C - - - - - 0x0037DB 00:B7CB: F0 14     BEQ bra_B7E1
C - - - - - 0x0037DD 00:B7CD: E0 12     CPX #$12
C - - - - - 0x0037DF 00:B7CF: 90 04     BCC bra_B7D5
; / 10
C - - - - - 0x0037E1 00:B7D1: 4A        LSR
C - - - - - 0x0037E2 00:B7D2: 4A        LSR
C - - - - - 0x0037E3 00:B7D3: 4A        LSR
C - - - - - 0x0037E4 00:B7D4: 4A        LSR
bra_B7D5:
C - - - - - 0x0037E5 00:B7D5: 29 0F     AND #$0F
C - - - - - 0x0037E7 00:B7D7: 85 00     STA ram_0000_t44
C - - - - - 0x0037E9 00:B7D9: 20 7D 91  JSR sub_0x00918D_06B2x_AND_F0
C - - - - - 0x0037EC 00:B7DC: 05 00     ORA ram_0000_t44
C - - - - - 0x0037EE 00:B7DE: 4C E3 B7  JMP loc_B7E3
bra_B7E1:
C - - - - - 0x0037F1 00:B7E1: A9 00     LDA #$00
loc_B7E3:
C D 1 - - - 0x0037F3 00:B7E3: 9D B2 06  STA ram_06B2_obj,X
C - - - - - 0x0037F6 00:B7E6: C0 02     CPY #$02
C - - - - - 0x0037F8 00:B7E8: D0 05     BNE bra_B7EF
C - - - - - 0x0037FA 00:B7EA: 20 78 91  JSR sub_0x009188_stage_AND_01
C - - - - - 0x0037FD 00:B7ED: D0 33     BNE bra_B822
bra_B7EF:
C - - - - - 0x0037FF 00:B7EF: 20 57 B8  JSR sub_B857
C - - - - - 0x003802 00:B7F2: E0 12     CPX #$12
C - - - - - 0x003804 00:B7F4: 90 0F     BCC bra_B805
C - - - - - 0x003806 00:B7F6: 20 41 91  JSR sub_0x009151_0682x_and_0F
C - - - - - 0x003809 00:B7F9: C9 04     CMP #$04
C - - - - - 0x00380B 00:B7FB: D0 08     BNE bra_B805
C - - - - - 0x00380D 00:B7FD: BD 34 06  LDA ram_obj_animation_hi,X
C - - - - - 0x003810 00:B800: 09 01     ORA #$01
C - - - - - 0x003812 00:B802: 9D 34 06  STA ram_obj_animation_hi,X
bra_B805:
C - - - - - 0x003815 00:B805: 20 82 95  JSR sub_0x009592
C - - - - - 0x003818 00:B808: BD 82 06  LDA ram_0682_obj,X
C - - - - - 0x00381B 00:B80B: 30 15     BMI bra_B822
C - - - - - 0x00381D 00:B80D: 20 41 91  JSR sub_0x009151_0682x_and_0F
C - - - - - 0x003820 00:B810: A8        TAY
C - - - - - 0x003821 00:B811: B9 63 95  LDA tbl_9564_sfx - $01,Y
C - - - - - 0x003824 00:B814: E0 12     CPX #$12
C - - - - - 0x003826 00:B816: 90 03     BCC bra_B81B
; X = 12+
C - - - - - 0x003828 00:B818: B9 72 95  LDA tbl_9573_sfx - $01,Y
bra_B81B:
C - - - - - 0x00382B 00:B81B: C9 FF     CMP #$FF
C - - - - - 0x00382D 00:B81D: F0 03     BEQ bra_B822
C - - - - - 0x00382F 00:B81F: 20 D8 95  JSR sub_0x0095E8_play_music
bra_B822:
C - - - - - 0x003832 00:B822: BD 82 06  LDA ram_0682_obj,X
C - - - - - 0x003835 00:B825: F0 17     BEQ bra_B83E_RTS
C - - - - - 0x003837 00:B827: 29 0F     AND #$0F
C - - - - - 0x003839 00:B829: A0 20     LDY #$20
C - - - - - 0x00383B 00:B82B: C9 02     CMP #$02
C - - - - - 0x00383D 00:B82D: D0 02     BNE bra_B831
C - - - - - 0x00383F 00:B82F: A0 22     LDY #$22
bra_B831:
C - - - - - 0x003841 00:B831: 20 44 B8  JSR sub_B844
C - - - - - 0x003844 00:B834: B0 09     BCS bra_B83F
C - - - - - 0x003846 00:B836: BD 9C 06  LDA ram_069C_obj,X
C - - - - - 0x003849 00:B839: 09 80     ORA #$80
C - - - - - 0x00384B 00:B83B: 9D 9C 06  STA ram_069C_obj,X
bra_B83E_RTS:
C - - - - - 0x00384E 00:B83E: 60        RTS
bra_B83F:
C - - - - - 0x00384F 00:B83F: 20 51 B8  JSR sub_B851
C - - - - - 0x003852 00:B842: F0 FA     BEQ bra_B83E_RTS
sub_B844:
C - - - - - 0x003854 00:B844: B9 AF B8  LDA tbl_B8B1 - $02,Y
C - - - - - 0x003857 00:B847: 85 00     STA ram_0000_t15_jmp
C - - - - - 0x003859 00:B849: B9 B0 B8  LDA tbl_B8B1 - $01,Y
C - - - - - 0x00385C 00:B84C: 85 01     STA ram_0000_t15_jmp + $01
C - - - - - 0x00385E 00:B84E: 6C 00 00  JMP (ram_0000_t15_jmp)



tbl_9564_sfx:
- D 0 - - - 0x009574 02:9564: 0C        .byte con_music_0C   ; 01 
- D 0 - - - 0x009575 02:9565: 10        .byte con_music_10   ; 02 
- D 0 - - - 0x009576 02:9566: 14        .byte con_music_14   ; 03 
- D 0 - - - 0x009577 02:9567: 18        .byte con_music_18   ; 04 
- D 0 - - - 0x009578 02:9568: 18        .byte con_music_18   ; 05 
- D 0 - - - 0x009579 02:9569: 2C        .byte con_music_2C   ; 06 
- D 0 - - - 0x00957A 02:956A: 16        .byte con_music_16   ; 07 
- D 0 - - - 0x00957B 02:956B: 0E        .byte con_music_0E   ; 08 
- D 0 - - - 0x00957C 02:956C: FF        .byte $FF   ; 09 
- D 0 - - - 0x00957D 02:956D: 2C        .byte con_music_2C   ; 0A 
- - - - - - 0x00957E 02:956E: FF        .byte $FF   ; 0B 
- D 0 - - - 0x00957F 02:956F: 12        .byte con_music_12   ; 0C 
- D 0 - - - 0x009580 02:9570: 16        .byte con_music_16   ; 0D 
- D 0 - - - 0x009581 02:9571: FF        .byte $FF   ; 0E 
- D 0 - - - 0x009582 02:9572: FF        .byte $FF   ; 0F 



tbl_9573_sfx:
- D 0 - - - 0x009583 02:9573: 1E        .byte con_music_1E   ; 01 
- D 0 - - - 0x009584 02:9574: FF        .byte $FF   ; 02 
- D 0 - - - 0x009585 02:9575: 14        .byte con_music_14   ; 03 
- D 0 - - - 0x009586 02:9576: 22        .byte con_music_22   ; 04 
- D 0 - - - 0x009587 02:9577: 22        .byte con_music_22   ; 05 
- D 0 - - - 0x009588 02:9578: 2C        .byte con_music_2C   ; 06 
- - - - - - 0x009589 02:9579: FF        .byte $FF   ; 07 
- D 0 - - - 0x00958A 02:957A: 20        .byte con_music_20   ; 08 
- D 0 - - - 0x00958B 02:957B: FF        .byte $FF   ; 09 
- D 0 - - - 0x00958C 02:957C: 2C        .byte con_music_2C   ; 0A 
- - - - - - 0x00958D 02:957D: FF        .byte $FF   ; 0B 
- D 0 - - - 0x00958E 02:957E: 12        .byte con_music_12   ; 0C 
- - - - - - 0x00958F 02:957F: FF        .byte $FF   ; 0D 
- D 0 - - - 0x009590 02:9580: FF        .byte $FF   ; 0E 
- D 0 - - - 0x009591 02:9581: 22        .byte con_music_22   ; 0F 



sub_B851:
; out
    ; Y = 
    ; Z
        ; 0 = 
        ; 1 = 
C - - - - - 0x003861 00:B851: 20 41 91  JSR sub_0x009151_0682x_and_0F
C - - - - - 0x003864 00:B854: 0A        ASL
C - - - - - 0x003865 00:B855: A8        TAY
C - - - - - 0x003866 00:B856: 60        RTS



sub_B857:
C - - - - - 0x003867 00:B857: B9 92 B8  LDA tbl_B893 - $01,Y
C - - - - - 0x00386A 00:B85A: 10 07     BPL bra_B863
C - - - - - 0x00386C 00:B85C: 29 7F     AND #$7F
C - - - - - 0x00386E 00:B85E: 85 0A     STA ram_000A_t03
C - - - - - 0x003870 00:B860: 4C 57 89  JMP loc_0x008967
bra_B863:
C - - - - - 0x003873 00:B863: 4C A1 89  JMP loc_0x0089B1



tbl_B866:
- D 1 - - - 0x003876 00:B866: 11        .byte $11   ; 01 
- D 1 - - - 0x003877 00:B867: 40        .byte $40   ; 02 
- D 1 - - - 0x003878 00:B868: 10        .byte $10   ; 03 
- D 1 - - - 0x003879 00:B869: 10        .byte $10   ; 04 
- D 1 - - - 0x00387A 00:B86A: 80        .byte $80   ; 05 
- D 1 - - - 0x00387B 00:B86B: 14        .byte $14   ; 06 
- D 1 - - - 0x00387C 00:B86C: 30        .byte $30   ; 07 
- D 1 - - - 0x00387D 00:B86D: 20        .byte $20   ; 08 
- D 1 - - - 0x00387E 00:B86E: 08        .byte $08   ; 09 
- D 1 - - - 0x00387F 00:B86F: 0A        .byte $0A   ; 0A 
- - - - - - 0x003880 00:B870: 0C        .byte $0C   ; 0B 
- D 1 - - - 0x003881 00:B871: 80        .byte $80   ; 0C 
- D 1 - - - 0x003882 00:B872: 80        .byte $80   ; 0D 
- D 1 - - - 0x003883 00:B873: 04        .byte $04   ; 0E 
- D 1 - - - 0x003884 00:B874: 18        .byte $18   ; 0F 



tbl_B875:
- D 1 - - - 0x003885 00:B875: 14        .byte $14   ; 01 
- D 1 - - - 0x003886 00:B876: 40        .byte $40   ; 02 
- D 1 - - - 0x003887 00:B877: 10        .byte $10   ; 03 
- D 1 - - - 0x003888 00:B878: 20        .byte $20   ; 04 
- D 1 - - - 0x003889 00:B879: E0        .byte $E0   ; 05 
- D 1 - - - 0x00388A 00:B87A: 14        .byte $14   ; 06 
- - - - - - 0x00388B 00:B87B: 30        .byte $30   ; 07 
- D 1 - - - 0x00388C 00:B87C: 40        .byte $40   ; 08 
- D 1 - - - 0x00388D 00:B87D: 08        .byte $08   ; 09 
- D 1 - - - 0x00388E 00:B87E: 0A        .byte $0A   ; 0A 
- - - - - - 0x00388F 00:B87F: 0C        .byte $0C   ; 0B 
- D 1 - - - 0x003890 00:B880: E0        .byte $E0   ; 0C 
- - - - - - 0x003891 00:B881: 80        .byte $80   ; 0D 
- D 1 - - - 0x003892 00:B882: 04        .byte $04   ; 0E 
- D 1 - - - 0x003893 00:B883: 38        .byte $38   ; 0F 



tbl_B884:
- D 1 - - - 0x003894 00:B884: 8B        .byte $8B   ; 01 
- D 1 - - - 0x003895 00:B885: 33        .byte $33   ; 02 
- D 1 - - - 0x003896 00:B886: 66        .byte $66   ; 03 
- D 1 - - - 0x003897 00:B887: 66        .byte $66   ; 04 
- D 1 - - - 0x003898 00:B888: 7C        .byte $7C   ; 05 
- D 1 - - - 0x003899 00:B889: 00        .byte $00   ; 06 
- D 1 - - - 0x00389A 00:B88A: 00        .byte $00   ; 07 
- D 1 - - - 0x00389B 00:B88B: 7C        .byte $7C   ; 08 
- D 1 - - - 0x00389C 00:B88C: 00        .byte $00   ; 09 
- D 1 - - - 0x00389D 00:B88D: FF        .byte $FF   ; 0A 
- - - - - - 0x00389E 00:B88E: 66        .byte $66   ; 0B 
- D 1 - - - 0x00389F 00:B88F: 7C        .byte $7C   ; 0C 
- D 1 - - - 0x0038A0 00:B890: 00        .byte $00   ; 0D 
- D 1 - - - 0x0038A1 00:B891: 00        .byte $00   ; 0E 
- D 1 - - - 0x0038A2 00:B892: 7C        .byte $7C   ; 0F 



tbl_B893:
- D 1 - - - 0x0038A3 00:B893: 32        .byte $32   ; 01 
- D 1 - - - 0x0038A4 00:B894: 33        .byte $33   ; 02 
- D 1 - - - 0x0038A5 00:B895: 83        .byte $83   ; 03 
- D 1 - - - 0x0038A6 00:B896: 81        .byte $81   ; 04 
- D 1 - - - 0x0038A7 00:B897: 82        .byte $82   ; 05 
- D 1 - - - 0x0038A8 00:B898: 13        .byte $13   ; 06 
- D 1 - - - 0x0038A9 00:B899: 34        .byte $34   ; 07 
- D 1 - - - 0x0038AA 00:B89A: 35        .byte $35   ; 08 
- D 1 - - - 0x0038AB 00:B89B: 36        .byte $36   ; 09 
- D 1 - - - 0x0038AC 00:B89C: 37        .byte $37   ; 0A 
- - - - - - 0x0038AD 00:B89D: 38        .byte $38   ; 0B 
- D 1 - - - 0x0038AE 00:B89E: 39        .byte $39   ; 0C 
- D 1 - - - 0x0038AF 00:B89F: 3A        .byte $3A   ; 0D 
- D 1 - - - 0x0038B0 00:B8A0: 3B        .byte $3B   ; 0E 
- D 1 - - - 0x0038B1 00:B8A1: 82        .byte $82   ; 0F 



tbl_B8A2:
- D 1 - - - 0x0038B2 00:B8A2: 01        .byte $01   ; 01 
- D 1 - - - 0x0038B3 00:B8A3: 01        .byte $01   ; 02 
- D 1 - - - 0x0038B4 00:B8A4: 04        .byte $04   ; 03 
- D 1 - - - 0x0038B5 00:B8A5: 03        .byte $03   ; 04 
- D 1 - - - 0x0038B6 00:B8A6: 01        .byte $01   ; 05 
- D 1 - - - 0x0038B7 00:B8A7: 00        .byte $00   ; 06 
- D 1 - - - 0x0038B8 00:B8A8: 02        .byte $02   ; 07 
- D 1 - - - 0x0038B9 00:B8A9: 01        .byte $01   ; 08 
- D 1 - - - 0x0038BA 00:B8AA: 00        .byte $00   ; 09 
- D 1 - - - 0x0038BB 00:B8AB: 01        .byte $01   ; 0A 
- - - - - - 0x0038BC 00:B8AC: 00        .byte $00   ; 0B 
- D 1 - - - 0x0038BD 00:B8AD: 01        .byte $01   ; 0C 
- D 1 - - - 0x0038BE 00:B8AE: 00        .byte $00   ; 0D 
- D 1 - - - 0x0038BF 00:B8AF: 00        .byte $00   ; 0E 
- D 1 - - - 0x0038C0 00:B8B0: 00        .byte $00   ; 0F 



tbl_B8B1:
- D 1 - - - 0x0038C1 00:B8B1: CD 91     .word ofs_020_0x0091DD_02
- - - - - - 0x0038C3 00:B8B3: 31 B3     .word ofs_020_B331_04
- D 1 - - - 0x0038C5 00:B8B5: 52 9A     .word ofs_020_0x009A62_06
- D 1 - - - 0x0038C7 00:B8B7: 35 B9     .word ofs_020_B935_08
- - - - - - 0x0038C9 00:B8B9: 52 9A     .word ofs_020_0x009A62_0A
- D 1 - - - 0x0038CB 00:B8BB: 52 9A     .word ofs_020_0x009A62_0C
- D 1 - - - 0x0038CD 00:B8BD: 73 B3     .word ofs_020_B373_0E
- D 1 - - - 0x0038CF 00:B8BF: CD 91     .word ofs_020_0x0091DD_10
- D 1 - - - 0x0038D1 00:B8C1: 52 9A     .word ofs_020_0x009A62_12
- D 1 - - - 0x0038D3 00:B8C3: 4E B9     .word ofs_020_B94E_14
- - - - - - 0x0038D5 00:B8C5: 52 9A     .word ofs_020_0x009A62_16
- - - - - - 0x0038D7 00:B8C7: CD 91     .word ofs_020_0x0091DD_18
- D 1 - - - 0x0038D9 00:B8C9: 6F B3     .word ofs_020_B36F_1A
- D 1 - - - 0x0038DB 00:B8CB: 25 BA     .word ofs_020_BA25_1C
- D 1 - - - 0x0038DD 00:B8CD: 2D BA     .word ofs_020_BA2D_1E
- D 1 - - - 0x0038DF 00:B8CF: 31 BA     .word ofs_020_BA31_20
- D 1 - - - 0x0038E1 00:B8D1: DC B8     .word ofs_020_B8DC_22



bra_B8D3:
C - - - - - 0x0038E3 00:B8D3: A9 00     LDA #$00
C - - - - - 0x0038E5 00:B8D5: 85 92     STA ram_0092_lo
C - - - - - 0x0038E7 00:B8D7: 85 93     STA ram_0093_hi
C - - - - - 0x0038E9 00:B8D9: 4C 9F 8A  JMP loc_0x008AAF



ofs_020_B8DC_22:
C - - J - - 0x0038EC 00:B8DC: A9 C9     LDA #$C9
C - - - - - 0x0038EE 00:B8DE: 85 0C     STA ram_000C_t02
C - - - - - 0x0038F0 00:B8E0: 20 52 9F  JSR sub_0x009F62
C - - - - - 0x0038F3 00:B8E3: 20 F9 B8  JSR sub_B8F9
C - - - - - 0x0038F6 00:B8E6: 20 72 91  JSR sub_0x009182_06B2x_AND_0F
C - - - - - 0x0038F9 00:B8E9: F0 E8     BEQ bra_B8D3
C - - - - - 0x0038FB 00:B8EB: 20 67 8B  JSR sub_0x008B77
C - - - - - 0x0038FE 00:B8EE: BD 9C 06  LDA ram_069C_obj,X
C - - - - - 0x003901 00:B8F1: 10 03     BPL bra_B8F6
C - - - - - 0x003903 00:B8F3: 4C 7B 8A  JMP loc_0x008A8B
bra_B8F6:
C - - - - - 0x003906 00:B8F6: 4C 82 8A  JMP loc_0x008A92



sub_B8F9:
C - - - - - 0x003909 00:B8F9: 20 78 91  JSR sub_0x009188_stage_AND_01
C - - - - - 0x00390C 00:B8FC: F0 4F     BEQ bra_B94D_RTS
C - - - - - 0x00390E 00:B8FE: A0 00     LDY #$00
loc_B900_loop:
C D 1 - - - 0x003910 00:B900: BD 9C 06  LDA ram_069C_obj,X
C - - - - - 0x003913 00:B903: 29 7F     AND #$7F
C - - - - - 0x003915 00:B905: 85 00     STA ram_0000_t35
C - - - - - 0x003917 00:B907: B9 25 B9  LDA tbl_B925,Y
C - - - - - 0x00391A 00:B90A: F0 41     BEQ bra_B94D_RTS
C - - - - - 0x00391C 00:B90C: C5 00     CMP ram_0000_t35
C - - - - - 0x00391E 00:B90E: F0 04     BEQ bra_B914
C - - - - - 0x003920 00:B910: C8        INY
C - - - - - 0x003921 00:B911: 4C 00 B9  JMP loc_B900_loop
bra_B914:
C - - - - - 0x003924 00:B914: 20 83 B3  JSR sub_B383
C - - - - - 0x003927 00:B917: B9 30 B9  LDA tbl_B930,Y
C - - - - - 0x00392A 00:B91A: 9D 20 07  STA ram_0720_obj,X
C - - - - - 0x00392D 00:B91D: B9 2B B9  LDA tbl_B92B,Y
sub_B920:
C - - - - - 0x003930 00:B920: A0 07     LDY #$07
C - - - - - 0x003932 00:B922: 4C 62 97  JMP loc_0x009772



tbl_B925:
- D 1 - - - 0x003935 00:B925: 7F        .byte $7F   ; 00 
- D 1 - - - 0x003936 00:B926: 78        .byte $78   ; 01 
- D 1 - - - 0x003937 00:B927: 70        .byte $70   ; 02 
- D 1 - - - 0x003938 00:B928: 30        .byte $30   ; 03 
- D 1 - - - 0x003939 00:B929: 38        .byte $38   ; 04 
- D 1 - - - 0x00393A 00:B92A: 00        .byte $00   ; 05 end token



tbl_B92B:
- D 1 - - - 0x00393B 00:B92B: 19        .byte $19   ; 00 
- D 1 - - - 0x00393C 00:B92C: 1A        .byte $1A   ; 01 
- D 1 - - - 0x00393D 00:B92D: 1B        .byte $1B   ; 02 
- D 1 - - - 0x00393E 00:B92E: 1A        .byte $1A   ; 03 
- D 1 - - - 0x00393F 00:B92F: 19        .byte $19   ; 04 



tbl_B930:
- D 1 - - - 0x003940 00:B930: 06        .byte $06   ; 00 
off_B931_04:
; bzk bug?
- D 1 - - - 0x003941 00:B931: 00        .byte $00   ; 01 
- D 1 - - - 0x003942 00:B932: 00        .byte $00   ; 02 
- D 1 - - - 0x003943 00:B933: 00        .byte $00   ; 03 
- D 1 - - - 0x003944 00:B934: 06        .byte $06   ; 04 



ofs_020_B935_08:
C - - J - - 0x003945 00:B935: 20 7D 91  JSR sub_0x00918D_06B2x_AND_F0
C - - - - - 0x003948 00:B938: 85 0D     STA ram_000D_t02
C - - - - - 0x00394A 00:B93A: 20 51 BA  JSR sub_BA51
C - - - - - 0x00394D 00:B93D: B0 0E     BCS bra_B94D_RTS
C - - - - - 0x00394F 00:B93F: 20 EE 90  JSR sub_0x0090FE
C - - - - - 0x003952 00:B942: 20 E2 91  JSR sub_0x0091F2
C - - - - - 0x003955 00:B945: BD 82 06  LDA ram_0682_obj,X
C - - - - - 0x003958 00:B948: 09 80     ORA #$80
C - - - - - 0x00395A 00:B94A: 9D 82 06  STA ram_0682_obj,X
bra_B94D_RTS:
C - - - - - 0x00395D 00:B94D: 60        RTS



ofs_020_B94E_14:
C - - J - - 0x00395E 00:B94E: BD 9C 06  LDA ram_069C_obj,X
C - - - - - 0x003961 00:B951: 29 7F     AND #$7F
C - - - - - 0x003963 00:B953: D0 F8     BNE bra_B94D_RTS
C - - - - - 0x003965 00:B955: A9 8A     LDA #$8A
C - - - - - 0x003967 00:B957: 9D 9C 06  STA ram_069C_obj,X
C - - - - - 0x00396A 00:B95A: A9 21     LDA #$21
C - - - - - 0x00396C 00:B95C: 20 20 B9  JSR sub_B920
C - - - - - 0x00396F 00:B95F: BD 82 06  LDA ram_0682_obj,X
C - - - - - 0x003972 00:B962: 20 B4 93  JSR sub_0x0093C4_LSRx4_TAY
C - - - - - 0x003975 00:B965: 85 0A     STA ram_000A_t03
C - - - - - 0x003977 00:B967: B9 C5 B9  LDA tbl_B9C5,Y
C - - - - - 0x00397A 00:B96A: 85 0B     STA ram_000B_t03
C - - - - - 0x00397C 00:B96C: 20 1B 84  JSR sub_0x00842B_000A_ASL_TAY
C - - - - - 0x00397F 00:B96F: B9 CB B9  LDA tbl_B9CB,Y
C - - - - - 0x003982 00:B972: 85 00     STA ram_0000_t02_data
C - - - - - 0x003984 00:B974: B9 CC B9  LDA tbl_B9CB + $01,Y
C - - - - - 0x003987 00:B977: 85 01     STA ram_0000_t02_data + $01
C - - - - - 0x003989 00:B979: 20 B1 93  JSR sub_0x0093C1_06B2x_LSRx4_TAY
C - - - - - 0x00398C 00:B97C: C5 0B     CMP ram_000B_t03
C - - - - - 0x00398E 00:B97E: 90 03     BCC bra_B983
C - - - - - 0x003990 00:B980: 4C 52 9A  JMP loc_0x009A62
bra_B983:
C - - - - - 0x003993 00:B983: 0A        ASL
C - - - - - 0x003994 00:B984: A8        TAY
C - - - - - 0x003995 00:B985: B1 00     LDA (ram_0000_t02_data),Y
C - - - - - 0x003997 00:B987: 85 02     STA ram_0002_t20_pos_X
C - - - - - 0x003999 00:B989: C8        INY
C - - - - - 0x00399A 00:B98A: B1 00     LDA (ram_0000_t02_data),Y
C - - - - - 0x00399C 00:B98C: 85 03     STA ram_0003_t16_pos_Y
C - - - - - 0x00399E 00:B98E: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x0039A1 00:B991: 18        CLC
C - - - - - 0x0039A2 00:B992: 65 02     ADC ram_0002_t20_pos_X
C - - - - - 0x0039A4 00:B994: 85 04     STA ram_0004_t12_pos_X
C - - - - - 0x0039A6 00:B996: 6A        ROR
C - - - - - 0x0039A7 00:B997: 45 02     EOR ram_0002_t20_pos_X
C - - - - - 0x0039A9 00:B999: 2A        ROL
C - - - - - 0x0039AA 00:B99A: B0 18     BCS bra_B9B4
C - - - - - 0x0039AC 00:B99C: A5 04     LDA ram_0004_t12_pos_X
C - - - - - 0x0039AE 00:B99E: 9D 4E 06  STA ram_obj_pos_X,X
C - - - - - 0x0039B1 00:B9A1: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x0039B4 00:B9A4: 18        CLC
C - - - - - 0x0039B5 00:B9A5: 65 03     ADC ram_0003_t16_pos_Y
C - - - - - 0x0039B7 00:B9A7: 85 04     STA ram_0004_t13_pos_Y
C - - - - - 0x0039B9 00:B9A9: 6A        ROR
C - - - - - 0x0039BA 00:B9AA: 45 03     EOR ram_0003_t16_pos_Y
C - - - - - 0x0039BC 00:B9AC: 2A        ROL
C - - - - - 0x0039BD 00:B9AD: B0 05     BCS bra_B9B4
C - - - - - 0x0039BF 00:B9AF: A5 04     LDA ram_0004_t13_pos_Y
C - - - - - 0x0039C1 00:B9B1: 9D 68 06  STA ram_obj_pos_Y,X
bra_B9B4:
C - - - - - 0x0039C4 00:B9B4: BD B2 06  LDA ram_06B2_obj,X
C - - - - - 0x0039C7 00:B9B7: 18        CLC
C - - - - - 0x0039C8 00:B9B8: 69 10     ADC #$10
C - - - - - 0x0039CA 00:B9BA: 9D B2 06  STA ram_06B2_obj,X
C - - - - - 0x0039CD 00:B9BD: 20 83 B3  JSR sub_B383
loc_B9C0:
C D 1 - - - 0x0039D0 00:B9C0: A9 2C     LDA #con_music_2C
C - - - - - 0x0039D2 00:B9C2: 4C D8 95  JMP loc_0x0095E8_play_music



tbl_B9C5:
- D 1 - - - 0x0039D5 00:B9C5: 0F        .byte $0F   ; 00 
- D 1 - - - 0x0039D6 00:B9C6: 0C        .byte $0C   ; 10 
- - - - - - 0x0039D7 00:B9C7: 04        .byte $04   ; 20 
- D 1 - - - 0x0039D8 00:B9C8: 07        .byte $07   ; 30 
- D 1 - - - 0x0039D9 00:B9C9: 00        .byte $00   ; 40 
- D 1 - - - 0x0039DA 00:B9CA: 0C        .byte $0C   ; 50 



tbl_B9CB:
- D 1 - - - 0x0039DB 00:B9CB: D7 B9     .word off_B9D7_00
- D 1 - - - 0x0039DD 00:B9CD: F7 B9     .word off_B9F7_01
- - - - - - 0x0039DF 00:B9CF: 0F BA     .word off_BA0F_02
- D 1 - - - 0x0039E1 00:B9D1: 17 BA     .word off_BA17_03
- D 1 - - - 0x0039E3 00:B9D3: 31 B9     .word off_B931_04
- D 1 - - - 0x0039E5 00:B9D5: F7 B9     .word off_B9F7_05



off_B9D7_00:
;                                              +---------- X
;                                              |    +----- Y
;                                              |    |
- D 1 - I - 0x0039E7 00:B9D7: 10        .byte $10, $00   ; 
- D 1 - I - 0x0039E9 00:B9D9: 20        .byte $20, $00   ; 
- D 1 - I - 0x0039EB 00:B9DB: 20        .byte $20, $00   ; 
- D 1 - I - 0x0039ED 00:B9DD: A0        .byte $A0, $00   ; 
- D 1 - I - 0x0039EF 00:B9DF: E0        .byte $E0, $00   ; 
- D 1 - I - 0x0039F1 00:B9E1: E0        .byte $E0, $00   ; 
- D 1 - I - 0x0039F3 00:B9E3: 28        .byte $28, $E0   ; 
- D 1 - I - 0x0039F5 00:B9E5: E8        .byte $E8, $E0   ; 
- D 1 - I - 0x0039F7 00:B9E7: 40        .byte $40, $10   ; 
- D 1 - I - 0x0039F9 00:B9E9: 28        .byte $28, $10   ; 
- D 1 - I - 0x0039FB 00:B9EB: 18        .byte $18, $E0   ; 
- D 1 - I - 0x0039FD 00:B9ED: 98        .byte $98, $60   ; 
- D 1 - I - 0x0039FF 00:B9EF: E8        .byte $E8, $20   ; 
- D 1 - I - 0x003A01 00:B9F1: 40        .byte $40, $F0   ; 
- D 1 - I - 0x003A03 00:B9F3: 28        .byte $28, $F0   ; 
- - - - - - 0x003A05 00:B9F5: 18        .byte $18, $20   ; 



off_B9F7_01:
off_B9F7_05:
;                                              +---------- X
;                                              |    +----- Y
;                                              |    |
- D 1 - I - 0x003A07 00:B9F7: 10        .byte $10, $00   ; 
- D 1 - I - 0x003A09 00:B9F9: 20        .byte $20, $00   ; 
- D 1 - I - 0x003A0B 00:B9FB: C0        .byte $C0, $00   ; 
- D 1 - I - 0x003A0D 00:B9FD: E0        .byte $E0, $00   ; 
- D 1 - I - 0x003A0F 00:B9FF: 30        .byte $30, $F0   ; 
- D 1 - I - 0x003A11 00:BA01: 20        .byte $20, $F0   ; 
- D 1 - I - 0x003A13 00:BA03: E0        .byte $E0, $F0   ; 
- D 1 - I - 0x003A15 00:BA05: E0        .byte $E0, $10   ; 
- D 1 - I - 0x003A17 00:BA07: 20        .byte $20, $30   ; 
- D 1 - I - 0x003A19 00:BA09: 20        .byte $20, $10   ; 
- D 1 - I - 0x003A1B 00:BA0B: E0        .byte $E0, $10   ; 
- D 1 - I - 0x003A1D 00:BA0D: E0        .byte $E0, $F0   ; 



off_BA0F_02:
;                                              +---------- X
;                                              |    +----- Y
;                                              |    |
- - - - - - 0x003A1F 00:BA0F: 0E        .byte $0E, $F2   ; 
- - - - - - 0x003A21 00:BA11: F8        .byte $F8, $ED   ; 
- - - - - - 0x003A23 00:BA13: 08        .byte $08, $08   ; 
- - - - - - 0x003A25 00:BA15: F2        .byte $F2, $0A   ; 



off_BA17_03:
;                                              +---------- X
;                                              |    +----- Y
;                                              |    |
- D 1 - I - 0x003A27 00:BA17: 28        .byte $28, $D8   ; 
- D 1 - I - 0x003A29 00:BA19: E2        .byte $E2, $14   ; 
- D 1 - I - 0x003A2B 00:BA1B: 12        .byte $12, $08   ; 
- D 1 - I - 0x003A2D 00:BA1D: 08        .byte $08, $12   ; 
- D 1 - I - 0x003A2F 00:BA1F: 12        .byte $12, $1E   ; 
- D 1 - I - 0x003A31 00:BA21: EE        .byte $EE, $E4   ; 
- D 1 - I - 0x003A33 00:BA23: F8        .byte $F8, $28   ; 



ofs_020_BA25_1C:
C - - J - - 0x003A35 00:BA25: A9 08     LDA #$08
bra_BA27:
C - - - - - 0x003A37 00:BA27: 9D 82 06  STA ram_0682_obj,X
C - - - - - 0x003A3A 00:BA2A: 4C DF 91  JMP loc_0x0091EF



ofs_020_BA2D_1E:
C - - J - - 0x003A3D 00:BA2D: A9 05     LDA #$05
C - - - - - 0x003A3F 00:BA2F: D0 F6     BNE bra_BA27    ; jmp



ofs_020_BA31_20:
C - - J - - 0x003A41 00:BA31: 20 19 8E  JSR sub_0x008E29
C - - - - - 0x003A44 00:BA34: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x003A47 00:BA37: C9 C8     CMP #$C8
C - - - - - 0x003A49 00:BA39: B0 11     BCS bra_BA4C
C - - - - - 0x003A4B 00:BA3B: BD 82 06  LDA ram_0682_obj,X
C - - - - - 0x003A4E 00:BA3E: F0 0A     BEQ bra_BA4A
C - - - - - 0x003A50 00:BA40: DE 9C 06  DEC ram_069C_obj,X
C - - - - - 0x003A53 00:BA43: BD 9C 06  LDA ram_069C_obj,X
C - - - - - 0x003A56 00:BA46: 29 7F     AND #$7F
C - - - - - 0x003A58 00:BA48: F0 05     BEQ bra_BA4F
bra_BA4A:
C - - - - - 0x003A5A 00:BA4A: 18        CLC
C - - - - - 0x003A5B 00:BA4B: 60        RTS
bra_BA4C:
C - - - - - 0x003A5C 00:BA4C: 20 52 9A  JSR sub_0x009A62
bra_BA4F:
C - - - - - 0x003A5F 00:BA4F: 38        SEC
C - - - - - 0x003A60 00:BA50: 60        RTS



sub_BA51:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x003A61 00:BA51: A0 00     LDY #$00
C - - - - - 0x003A63 00:BA53: A9 02     LDA #$02
C - - - - - 0x003A65 00:BA55: E0 12     CPX #$12
C - - - - - 0x003A67 00:BA57: B0 04     BCS bra_BA5D
C - - - - - 0x003A69 00:BA59: A0 02     LDY #$02
C - - - - - 0x003A6B 00:BA5B: A9 08     LDA #$08
bra_BA5D:
C - - - - - 0x003A6D 00:BA5D: 85 02     STA ram_0002_t21_loop_counter
bra_BA5F_loop:
C - - - - - 0x003A6F 00:BA5F: B9 82 07  LDA ram_0782_unk,Y
C - - - - - 0x003A72 00:BA62: F0 13     BEQ bra_BA77_skip
C - - - - - 0x003A74 00:BA64: 30 11     BMI bra_BA77_skip
C - - - - - 0x003A76 00:BA66: B9 1A 06  LDA ram_obj_animation_lo,Y
C - - - - - 0x003A79 00:BA69: F0 0C     BEQ bra_BA77_skip
C - - - - - 0x003A7B 00:BA6B: B9 4E 06  LDA ram_obj_pos_X,Y
C - - - - - 0x003A7E 00:BA6E: 85 90     STA ram_0090_pos_X
C - - - - - 0x003A80 00:BA70: B9 68 06  LDA ram_obj_pos_Y,Y
C - - - - - 0x003A83 00:BA73: 85 91     STA ram_0091_pos_Y
C - - - - - 0x003A85 00:BA75: 18        CLC
C - - - - - 0x003A86 00:BA76: 60        RTS
bra_BA77_skip:
C - - - - - 0x003A87 00:BA77: C8        INY
C - - - - - 0x003A88 00:BA78: C6 02     DEC ram_0002_t21_loop_counter
C - - - - - 0x003A8A 00:BA7A: D0 E3     BNE bra_BA5F_loop
; C = 1
C - - - - - 0x003A8C 00:BA7C: 60        RTS



.out .sprintf("Free bytes in bank 00: 0x%04X [%d]", ($C000 - *), ($C000 - *))



