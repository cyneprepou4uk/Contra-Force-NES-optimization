.segment "BANK_00"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $8000  ; for listing file
; 0x000010-0x00400F



.export sub_0x003315
.export sub_0x0037C0
.export sub_0x003A8D
.export ofs_006_0x003A8D_15



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
C - - - - - 0x003821 00:B811: B9 63 95  LDA tbl_0x009574_sfx - $01,Y
C - - - - - 0x003824 00:B814: E0 12     CPX #$12
C - - - - - 0x003826 00:B816: 90 03     BCC bra_B81B
; X = 12+
C - - - - - 0x003828 00:B818: B9 72 95  LDA tbl_0x009583_sfx - $01,Y
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



sub_0x003A8D:
ofs_006_0x003A8D_15:
; con_F3D6_15
C - - - - - 0x003A8D 00:BA7D: A9 00     LDA #$00
C - - - - - 0x003A8F 00:BA7F: 85 1F     STA ram_001F_t03
; bzk optimize, useless STA + STA + STA + STA
C - - - - - 0x003A91 00:BA81: 85 19     STA ram_0019_t07_useless
C - - - - - 0x003A93 00:BA83: 85 1B     STA ram_001B_t11_useless
C - - - - - 0x003A95 00:BA85: 85 1C     STA ram_001C_t18_useless
C - - - - - 0x003A97 00:BA87: 85 1D     STA ram_001D_t14_useless
C - - - - - 0x003A99 00:BA89: 85 69     STA ram_0069
C - - - - - 0x003A9B 00:BA8B: 85 6A     STA ram_006A
C - - - - - 0x003A9D 00:BA8D: 85 6B     STA ram_006B
C - - - - - 0x003A9F 00:BA8F: 85 6C     STA ram_006C
C - - - - - 0x003AA1 00:BA91: A5 BD     LDA ram_00BD_flag
C - - - - - 0x003AA3 00:BA93: D0 0A     BNE bra_BA9F
C - - - - - 0x003AA5 00:BA95: A5 D5     LDA ram_00D5
C - - - - - 0x003AA7 00:BA97: 85 19     STA ram_0019_t04
C - - - - - 0x003AA9 00:BA99: 05 D4     ORA ram_00D4
C - - - - - 0x003AAB 00:BA9B: F0 02     BEQ bra_BA9F
C - - - - - 0x003AAD 00:BA9D: E6 1F     INC ram_001F_t03
bra_BA9F:
C - - - - - 0x003AAF 00:BA9F: A5 D3     LDA ram_00D3
C - - - - - 0x003AB1 00:BAA1: 85 1B     STA ram_001B_t02_hi
C - - - - - 0x003AB3 00:BAA3: 05 D2     ORA ram_00D2
C - - - - - 0x003AB5 00:BAA5: F0 04     BEQ bra_BAAB
C - - - - - 0x003AB7 00:BAA7: E6 1F     INC ram_001F_t03
C - - - - - 0x003AB9 00:BAA9: E6 1F     INC ram_001F_t03
bra_BAAB:
C - - - - - 0x003ABB 00:BAAB: A5 D4     LDA ram_00D4
C - - - - - 0x003ABD 00:BAAD: 85 18     STA ram_0018_t12
C - - - - - 0x003ABF 00:BAAF: A5 D2     LDA ram_00D2
C - - - - - 0x003AC1 00:BAB1: 85 1A     STA ram_001A_t08_lo
C - - - - - 0x003AC3 00:BAB3: A2 00     LDX #$00
loc_BAB5_loop:
C D 1 - - - 0x003AC5 00:BAB5: BD 82 07  LDA ram_0782_unk,X
C - - - - - 0x003AC8 00:BAB8: D0 03     BNE bra_BABD
C - - - - - 0x003ACA 00:BABA: 4C 91 BB  JMP loc_BB91
bra_BABD:
; bzk optimize, useless code up to 0x003AD7
C - - - - - 0x003ACD 00:BABD: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x003AD0 00:BAC0: 18        CLC
C - - - - - 0x003AD1 00:BAC1: 69 10     ADC #$10
C - - - - - 0x003AD3 00:BAC3: C9 21     CMP #$21
C - - - - - 0x003AD5 00:BAC5: B0 02     BCS bra_BAC9
C - - - - - 0x003AD7 00:BAC7: E6 1C     INC ram_001C_t18_useless
bra_BAC9:
; bzk optimize, useless code up to 0x003AE3
C - - - - - 0x003AD9 00:BAC9: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x003ADC 00:BACC: 18        CLC
C - - - - - 0x003ADD 00:BACD: 69 40     ADC #$40
C - - - - - 0x003ADF 00:BACF: C9 50     CMP #$50
C - - - - - 0x003AE1 00:BAD1: B0 02     BCS bra_BAD5
C - - - - - 0x003AE3 00:BAD3: E6 1D     INC ram_001D_t14_useless
bra_BAD5:
C - - - - - 0x003AE5 00:BAD5: A9 01     LDA #$01
C - - - - - 0x003AE7 00:BAD7: 20 94 BF  JSR sub_BF94
C - - - - - 0x003AEA 00:BADA: A5 00     LDA ram_0000_t36
C - - - - - 0x003AEC 00:BADC: 85 03     STA ram_0003_t17
C - - - - - 0x003AEE 00:BADE: A9 00     LDA #$00
C - - - - - 0x003AF0 00:BAE0: 20 94 BF  JSR sub_BF94
C - - - - - 0x003AF3 00:BAE3: 20 89 BF  JSR sub_BF89
C - - - - - 0x003AF6 00:BAE6: B0 41     BCS bra_BB29
C - - - - - 0x003AF8 00:BAE8: A5 00     LDA ram_0000_t36
C - - - - - 0x003AFA 00:BAEA: F0 3D     BEQ bra_BB29
C - - - - - 0x003AFC 00:BAEC: A5 D0     LDA ram_00D0
C - - - - - 0x003AFE 00:BAEE: D0 39     BNE bra_BB29
C - - - - - 0x003B00 00:BAF0: A5 BD     LDA ram_00BD_flag
C - - - - - 0x003B02 00:BAF2: D0 35     BNE bra_BB29
; bzk optimize, useless code up to 0x003B0C
C - - - - - 0x003B04 00:BAF4: A9 00     LDA #$00
C - - - - - 0x003B06 00:BAF6: 85 00     STA ram_0000_t97_useless
C - - - - - 0x003B08 00:BAF8: A5 19     LDA ram_0019_t04
C - - - - - 0x003B0A 00:BAFA: 10 02     BPL bra_BAFE
C - - - - - 0x003B0C 00:BAFC: C6 00     DEC ram_0000_t97_useless    ; -> FF
bra_BAFE:
C - - - - - 0x003B0E 00:BAFE: BD E6 07  LDA ram_07E6,X
C - - - - - 0x003B11 00:BB01: 18        CLC
C - - - - - 0x003B12 00:BB02: 65 18     ADC ram_0018_t12
C - - - - - 0x003B14 00:BB04: 85 18     STA ram_0018_t12
C - - - - - 0x003B16 00:BB06: BD E8 07  LDA ram_07E8,X
C - - - - - 0x003B19 00:BB09: 65 19     ADC ram_0019_t04
C - - - - - 0x003B1B 00:BB0B: 85 19     STA ram_0019_t04
C - - - - - 0x003B1D 00:BB0D: 10 08     BPL bra_BB17
C - - - - - 0x003B1F 00:BB0F: C9 FE     CMP #$FE
C - - - - - 0x003B21 00:BB11: B0 10     BCS bra_BB23
C - - - - - 0x003B23 00:BB13: A9 FE     LDA #$FE
C - - - - - 0x003B25 00:BB15: D0 06     BNE bra_BB1D    ; jmp
bra_BB17:
C - - - - - 0x003B27 00:BB17: C9 02     CMP #$02
C - - - - - 0x003B29 00:BB19: 90 08     BCC bra_BB23
C - - - - - 0x003B2B 00:BB1B: A9 02     LDA #$02
bra_BB1D:
C - - - - - 0x003B2D 00:BB1D: 85 19     STA ram_0019_t04
C - - - - - 0x003B2F 00:BB1F: A9 00     LDA #$00
C - - - - - 0x003B31 00:BB21: 85 18     STA ram_0018_t12
bra_BB23:
C - - - - - 0x003B33 00:BB23: A9 01     LDA #$01
C - - - - - 0x003B35 00:BB25: 05 1F     ORA ram_001F_t03
C - - - - - 0x003B37 00:BB27: 85 1F     STA ram_001F_t03
bra_BB29:
C - - - - - 0x003B39 00:BB29: A5 75     LDA ram_stage
C - - - - - 0x003B3B 00:BB2B: F0 64     BEQ bra_BB91
C - - - - - 0x003B3D 00:BB2D: 20 89 BF  JSR sub_BF89
C - - - - - 0x003B40 00:BB30: B0 5F     BCS bra_BB91
C - - - - - 0x003B42 00:BB32: A5 04     LDA ram_0004_t14
; * 04
C - - - - - 0x003B44 00:BB34: 0A        ASL
C - - - - - 0x003B45 00:BB35: 0A        ASL
C - - - - - 0x003B46 00:BB36: A8        TAY
C - - - - - 0x003B47 00:BB37: A5 03     LDA ram_0003_t17
C - - - - - 0x003B49 00:BB39: F0 56     BEQ bra_BB91
C - - - - - 0x003B4B 00:BB3B: A5 D0     LDA ram_00D0
C - - - - - 0x003B4D 00:BB3D: D0 52     BNE bra_BB91
C - - - - - 0x003B4F 00:BB3F: AD 59 03  LDA ram_0359_flag
C - - - - - 0x003B52 00:BB42: D0 4D     BNE bra_BB91
C - - - - - 0x003B54 00:BB44: A9 04     LDA #$04
C - - - - - 0x003B56 00:BB46: 85 1E     STA ram_001E_t02
C - - - - - 0x003B58 00:BB48: 20 8F F6  JSR sub_0x01F69F_get_stage_view_type
C - - - - - 0x003B5B 00:BB4B: F0 04     BEQ bra_BB51_side_view
; if upper view
C - - - - - 0x003B5D 00:BB4D: A9 02     LDA #$02
C - - - - - 0x003B5F 00:BB4F: 85 1E     STA ram_001E_t02
bra_BB51_side_view:
C - - - - - 0x003B61 00:BB51: A5 C5     LDA ram_00C5_flag
C - - - - - 0x003B63 00:BB53: F0 04     BEQ bra_BB59
C - - - - - 0x003B65 00:BB55: A9 01     LDA #$01
C - - - - - 0x003B67 00:BB57: 85 1E     STA ram_001E_t02
bra_BB59:
C - - - - - 0x003B69 00:BB59: A5 1A     LDA ram_001A_t08_lo
C - - - - - 0x003B6B 00:BB5B: 18        CLC
C - - - - - 0x003B6C 00:BB5C: 7D EA 07  ADC ram_07EA,X
C - - - - - 0x003B6F 00:BB5F: 85 1A     STA ram_001A_t08_lo
C - - - - - 0x003B71 00:BB61: A5 1B     LDA ram_001B_t02_hi
C - - - - - 0x003B73 00:BB63: 7D EC 07  ADC ram_07EC,X
C - - - - - 0x003B76 00:BB66: 85 1B     STA ram_001B_t02_hi
C - - - - - 0x003B78 00:BB68: 10 13     BPL bra_BB7D
C - - - - - 0x003B7A 00:BB6A: A5 1E     LDA ram_001E_t02
C - - - - - 0x003B7C 00:BB6C: 49 FF     EOR #$FF
C - - - - - 0x003B7E 00:BB6E: 18        CLC
C - - - - - 0x003B7F 00:BB6F: 69 01     ADC #$01
C - - - - - 0x003B81 00:BB71: 85 1E     STA ram_001E_t02
C - - - - - 0x003B83 00:BB73: A5 1B     LDA ram_001B_t02_hi
C - - - - - 0x003B85 00:BB75: C5 1E     CMP ram_001E_t02
C - - - - - 0x003B87 00:BB77: B0 12     BCS bra_BB8B
C - - - - - 0x003B89 00:BB79: A9 01     LDA #$01
C - - - - - 0x003B8B 00:BB7B: D0 08     BNE bra_BB85    ; jmp
bra_BB7D:
C - - - - - 0x003B8D 00:BB7D: C5 1E     CMP ram_001E_t02
C - - - - - 0x003B8F 00:BB7F: 90 0A     BCC bra_BB8B
- - - - - - 0x003B91 00:BB81: C6 1E     DEC ram_001E_t02
- - - - - - 0x003B93 00:BB83: A9 FF     LDA #$FF
bra_BB85:
C - - - - - 0x003B95 00:BB85: 85 1A     STA ram_001A_t08_lo
C - - - - - 0x003B97 00:BB87: A5 1E     LDA ram_001E_t02
C - - - - - 0x003B99 00:BB89: 85 1B     STA ram_001B_t02_hi
bra_BB8B:
C - - - - - 0x003B9B 00:BB8B: A9 02     LDA #$02
C - - - - - 0x003B9D 00:BB8D: 05 1F     ORA ram_001F_t03
C - - - - - 0x003B9F 00:BB8F: 85 1F     STA ram_001F_t03
bra_BB91:
loc_BB91:
C D 1 - - - 0x003BA1 00:BB91: E8        INX
C - - - - - 0x003BA2 00:BB92: E0 02     CPX #$02
C - - - - - 0x003BA4 00:BB94: F0 17     BEQ bra_BBAD
C - - - - - 0x003BA6 00:BB96: 4C B5 BA  JMP loc_BAB5_loop



sub_BB99:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x003BA9 00:BB99: BD 82 07  LDA ram_0782_unk,X
C - - - - - 0x003BAC 00:BB9C: F0 0D     BEQ bra_BBAB
C - - - - - 0x003BAE 00:BB9E: 20 83 BF  JSR sub_BF83
C - - - - - 0x003BB1 00:BBA1: B9 7F 00  LDA ram_player_stats,Y
C - - - - - 0x003BB4 00:BBA4: 29 F0     AND #$F0
C - - - - - 0x003BB6 00:BBA6: F0 03     BEQ bra_BBAB
C - - - - - 0x003BB8 00:BBA8: C9 30     CMP #$30
C - - - - - 0x003BBA 00:BBAA: 60        RTS
bra_BBAB:
C - - - - - 0x003BBB 00:BBAB: 38        SEC
C - - - - - 0x003BBC 00:BBAC: 60        RTS



bra_BBAD:
C - - - - - 0x003BBD 00:BBAD: A2 00     LDX #$00
C - - - - - 0x003BBF 00:BBAF: 20 99 BB  JSR sub_BB99
C - - - - - 0x003BC2 00:BBB2: B0 06     BCS bra_BBBA
C - - - - - 0x003BC4 00:BBB4: E8        INX ; 01
C - - - - - 0x003BC5 00:BBB5: 20 99 BB  JSR sub_BB99
C - - - - - 0x003BC8 00:BBB8: 90 08     BCC bra_BBC2
bra_BBBA:
C - - - - - 0x003BCA 00:BBBA: A9 00     LDA #$00
C - - - - - 0x003BCC 00:BBBC: 85 1C     STA ram_001C_t21_useless_00
C - - - - - 0x003BCE 00:BBBE: 85 1D     STA ram_001D_t02
C - - - - - 0x003BD0 00:BBC0: F0 26     BEQ bra_BBE8    ; jmp
bra_BBC2:
C - - - - - 0x003BD2 00:BBC2: AD 4E 06  LDA ram_obj_pos_X
C - - - - - 0x003BD5 00:BBC5: 38        SEC
C - - - - - 0x003BD6 00:BBC6: ED 4F 06  SBC ram_obj_pos_X + $01
C - - - - - 0x003BD9 00:BBC9: B0 02     BCS bra_BBCD
C - - - - - 0x003BDB 00:BBCB: 49 FF     EOR #$FF
bra_BBCD:
C - - - - - 0x003BDD 00:BBCD: C9 80     CMP #$80
C - - - - - 0x003BDF 00:BBCF: B0 04     BCS bra_BBD5
C - - - - - 0x003BE1 00:BBD1: A9 00     LDA #$00
C - - - - - 0x003BE3 00:BBD3: 85 1C     STA ram_001C_t21_useless_00
bra_BBD5:
C - - - - - 0x003BE5 00:BBD5: AD 68 06  LDA ram_obj_pos_Y
C - - - - - 0x003BE8 00:BBD8: 38        SEC
C - - - - - 0x003BE9 00:BBD9: ED 69 06  SBC ram_obj_pos_Y + $01
C - - - - - 0x003BEC 00:BBDC: B0 02     BCS bra_BBE0
C - - - - - 0x003BEE 00:BBDE: 49 FF     EOR #$FF
bra_BBE0:
C - - - - - 0x003BF0 00:BBE0: C9 50     CMP #$50
C - - - - - 0x003BF2 00:BBE2: B0 04     BCS bra_BBE8
C - - - - - 0x003BF4 00:BBE4: A9 00     LDA #$00
C - - - - - 0x003BF6 00:BBE6: 85 1D     STA ram_001D_t02
bra_BBE8:
C - - - - - 0x003BF8 00:BBE8: AD 5B 03  LDA ram_035B_flag
C - - - - - 0x003BFB 00:BBEB: F0 1D     BEQ bra_BC0A
C - - - - - 0x003BFD 00:BBED: A5 75     LDA ram_stage
C - - - - - 0x003BFF 00:BBEF: F0 16     BEQ bra_BC07
C - - - - - 0x003C01 00:BBF1: 29 01     AND #$01
C - - - - - 0x003C03 00:BBF3: D0 12     BNE bra_BC07
C - - - - - 0x003C05 00:BBF5: AD AA 07  LDA ram_07AA_unk
C - - - - - 0x003C08 00:BBF8: 0D AB 07  ORA ram_07AA_unk + $01
C - - - - - 0x003C0B 00:BBFB: 29 40     AND #$40
C - - - - - 0x003C0D 00:BBFD: F0 08     BEQ bra_BC07
C - - - - - 0x003C0F 00:BBFF: A9 00     LDA #$00
C - - - - - 0x003C11 00:BC01: 85 18     STA ram_0018_t12
C - - - - - 0x003C13 00:BC03: 85 19     STA ram_0019_t04
C - - - - - 0x003C15 00:BC05: F0 03     BEQ bra_BC0A    ; jmp
bra_BC07:
C - - - - - 0x003C17 00:BC07: 4C E0 BC  JMP loc_BCE0
bra_BC0A:
; bzk optimize, useless check
C - - - - - 0x003C1A 00:BC0A: A5 1C     LDA ram_001C_t21_useless_00
C - - - - - 0x003C1C 00:BC0C: D0 57     BNE bra_BC65
C - - - - - 0x003C1E 00:BC0E: A5 1F     LDA ram_001F_t03
C - - - - - 0x003C20 00:BC10: 29 01     AND #$01
C - - - - - 0x003C22 00:BC12: F0 51     BEQ bra_BC65
C - - - - - 0x003C24 00:BC14: A9 00     LDA #$00
C - - - - - 0x003C26 00:BC16: 85 13     STA ram_0013_t07
C - - - - - 0x003C28 00:BC18: A5 19     LDA ram_0019_t04
C - - - - - 0x003C2A 00:BC1A: 10 04     BPL bra_BC20
; bzk optimize, DEC 0013
C - - - - - 0x003C2C 00:BC1C: A9 FF     LDA #$FF
C - - - - - 0x003C2E 00:BC1E: 85 13     STA ram_0013_t07
bra_BC20:
C - - - - - 0x003C30 00:BC20: A5 18     LDA ram_0018_t12
C - - - - - 0x003C32 00:BC22: 18        CLC
C - - - - - 0x003C33 00:BC23: 65 62     ADC ram_0062_fr
C - - - - - 0x003C35 00:BC25: 85 14     STA ram_0014_t01
C - - - - - 0x003C37 00:BC27: A5 19     LDA ram_0019_t04
C - - - - - 0x003C39 00:BC29: 65 61     ADC ram_0061_lo
C - - - - - 0x003C3B 00:BC2B: 85 15     STA ram_0014_t01 + $01
C - - - - - 0x003C3D 00:BC2D: A5 13     LDA ram_0013_t07
C - - - - - 0x003C3F 00:BC2F: 65 60     ADC ram_0060_hi
C - - - - - 0x003C41 00:BC31: 85 16     STA ram_0014_t01 + $02
C - - - - - 0x003C43 00:BC33: 85 0A     STA ram_000A_t05
C - - - - - 0x003C45 00:BC35: 20 21 BF  JSR sub_BF21
C - - - - - 0x003C48 00:BC38: 90 2B     BCC bra_BC65
C - - - - - 0x003C4A 00:BC3A: A4 0D     LDY ram_000D_t03_data_index
C - - - - - 0x003C4C 00:BC3C: C8        INY
C - - - - - 0x003C4D 00:BC3D: 31 00     AND (ram_0000_t04_data),Y
C - - - - - 0x003C4F 00:BC3F: D0 27     BNE bra_BC68
C - - - - - 0x003C51 00:BC41: A5 0A     LDA ram_000A_t05
C - - - - - 0x003C53 00:BC43: 30 23     BMI bra_BC68
C - - - - - 0x003C55 00:BC45: A5 16     LDA ram_0014_t01 + $02
C - - - - - 0x003C57 00:BC47: 30 1F     BMI bra_BC68
C - - - - - 0x003C59 00:BC49: 20 F3 BD  JSR sub_BDF3
C - - - - - 0x003C5C 00:BC4C: 90 1A     BCC bra_BC68
C - - - - - 0x003C5E 00:BC4E: A5 18     LDA ram_0018_t12
C - - - - - 0x003C60 00:BC50: 85 6A     STA ram_006A
C - - - - - 0x003C62 00:BC52: A5 19     LDA ram_0019_t04
C - - - - - 0x003C64 00:BC54: 85 69     STA ram_0069
C - - - - - 0x003C66 00:BC56: A5 14     LDA ram_0014_t01
C - - - - - 0x003C68 00:BC58: 85 62     STA ram_0062_fr
C - - - - - 0x003C6A 00:BC5A: A5 15     LDA ram_0014_t01 + $01
C - - - - - 0x003C6C 00:BC5C: 85 61     STA ram_0061_lo
C - - - - - 0x003C6E 00:BC5E: A5 16     LDA ram_0014_t01 + $02
C - - - - - 0x003C70 00:BC60: 85 60     STA ram_0060_hi
C - - - - - 0x003C72 00:BC62: 4C 68 BC  JMP loc_BC68
bra_BC65:
C - - - - - 0x003C75 00:BC65: 20 3C BF  JSR sub_BF3C
bra_BC68:
loc_BC68:
C D 1 - - - 0x003C78 00:BC68: A5 1D     LDA ram_001D_t02
C - - - - - 0x003C7A 00:BC6A: D0 74     BNE bra_BCE0
C - - - - - 0x003C7C 00:BC6C: A5 1F     LDA ram_001F_t03
C - - - - - 0x003C7E 00:BC6E: 29 02     AND #$02
C - - - - - 0x003C80 00:BC70: F0 6E     BEQ bra_BCE0
C - - - - - 0x003C82 00:BC72: A5 0F     LDA ram_000F_t03
C - - - - - 0x003C84 00:BC74: 85 17     STA ram_0017_t03
C - - - - - 0x003C86 00:BC76: A9 00     LDA #$00
C - - - - - 0x003C88 00:BC78: 85 13     STA ram_0013_t08
C - - - - - 0x003C8A 00:BC7A: A5 1B     LDA ram_001B_t02_hi
C - - - - - 0x003C8C 00:BC7C: 10 02     BPL bra_BC80
C - - - - - 0x003C8E 00:BC7E: C6 13     DEC ram_0013_t08    ; -> FF
bra_BC80:
C - - - - - 0x003C90 00:BC80: A5 1A     LDA ram_001A_t08_lo
C - - - - - 0x003C92 00:BC82: 18        CLC
C - - - - - 0x003C93 00:BC83: 65 65     ADC ram_0065_fr
C - - - - - 0x003C95 00:BC85: 85 14     STA ram_0014_t02
C - - - - - 0x003C97 00:BC87: A5 1B     LDA ram_001B_t02_hi
C - - - - - 0x003C99 00:BC89: 65 64     ADC ram_0064_lo
C - - - - - 0x003C9B 00:BC8B: 85 15     STA ram_0014_t02 + $01
C - - - - - 0x003C9D 00:BC8D: A5 13     LDA ram_0013_t08
C - - - - - 0x003C9F 00:BC8F: 65 63     ADC ram_0063_hi
C - - - - - 0x003CA1 00:BC91: 85 16     STA ram_0014_t02 + $02
C - - - - - 0x003CA3 00:BC93: 20 DE BE  JSR sub_BEDE
C - - - - - 0x003CA6 00:BC96: 90 48     BCC bra_BCE0
C - - - - - 0x003CA8 00:BC98: A9 00     LDA #$00
C - - - - - 0x003CAA 00:BC9A: 85 0C     STA ram_000C_t14_useless_00
C - - - - - 0x003CAC 00:BC9C: A5 11     LDA ram_0011_t03
C - - - - - 0x003CAE 00:BC9E: 38        SEC
C - - - - - 0x003CAF 00:BC9F: E5 17     SBC ram_0017_t03
C - - - - - 0x003CB1 00:BCA1: F0 1C     BEQ bra_BCBF
C - - - - - 0x003CB3 00:BCA3: 10 04     BPL bra_BCA9
C - - - - - 0x003CB5 00:BCA5: A9 00     LDA #$00
C - - - - - 0x003CB7 00:BCA7: 85 0B     STA ram_000B_t04
bra_BCA9:
C - - - - - 0x003CB9 00:BCA9: A5 00     LDA ram_0000_t04_data
C - - - - - 0x003CBB 00:BCAB: 18        CLC
C - - - - - 0x003CBC 00:BCAC: 65 0B     ADC ram_000B_t04
C - - - - - 0x003CBE 00:BCAE: 85 00     STA ram_0000_t05_data
C - - - - - 0x003CC0 00:BCB0: A5 01     LDA ram_0000_t04_data + $01
C - - - - - 0x003CC2 00:BCB2: 65 0C     ADC ram_000C_t14_useless_00
C - - - - - 0x003CC4 00:BCB4: 85 01     STA ram_0000_t05_data + $01
C - - - - - 0x003CC6 00:BCB6: A5 0E     LDA ram_000E_t02
C - - - - - 0x003CC8 00:BCB8: A4 0D     LDY ram_000D_t03_data_index
C - - - - - 0x003CCA 00:BCBA: C8        INY
C - - - - - 0x003CCB 00:BCBB: 31 00     AND (ram_0000_t05_data),Y
C - - - - - 0x003CCD 00:BCBD: D0 21     BNE bra_BCE0
bra_BCBF:
C - - - - - 0x003CCF 00:BCBF: A5 0A     LDA ram_000A_t05
C - - - - - 0x003CD1 00:BCC1: 30 1D     BMI bra_BCE0
C - - - - - 0x003CD3 00:BCC3: A5 16     LDA ram_0014_t02 + $02
C - - - - - 0x003CD5 00:BCC5: 30 19     BMI bra_BCE0
C - - - - - 0x003CD7 00:BCC7: 20 85 BD  JSR sub_BD85
C - - - - - 0x003CDA 00:BCCA: 90 14     BCC bra_BCE0
C - - - - - 0x003CDC 00:BCCC: A5 1A     LDA ram_001A_t08_lo
C - - - - - 0x003CDE 00:BCCE: 85 6C     STA ram_006C
C - - - - - 0x003CE0 00:BCD0: A5 1B     LDA ram_001B_t02_hi
C - - - - - 0x003CE2 00:BCD2: 85 6B     STA ram_006B
C - - - - - 0x003CE4 00:BCD4: A5 14     LDA ram_0014_t02
C - - - - - 0x003CE6 00:BCD6: 85 65     STA ram_0065_fr
C - - - - - 0x003CE8 00:BCD8: A5 15     LDA ram_0014_t02 + $01
C - - - - - 0x003CEA 00:BCDA: 85 64     STA ram_0064_lo
C - - - - - 0x003CEC 00:BCDC: A5 16     LDA ram_0014_t02 + $02
C - - - - - 0x003CEE 00:BCDE: 85 63     STA ram_0063_hi
bra_BCE0:
loc_BCE0:
C D 1 - - - 0x003CF0 00:BCE0: A2 00     LDX #$00
loc_BCE2:
C D 1 - - - 0x003CF2 00:BCE2: BD 82 07  LDA ram_0782_unk,X
C - - - - - 0x003CF5 00:BCE5: D0 03     BNE bra_BCEA
C - - - - - 0x003CF7 00:BCE7: 4C 7D BD  JMP loc_BD7D
bra_BCEA:
C - - - - - 0x003CFA 00:BCEA: BD E6 07  LDA ram_07E6,X
C - - - - - 0x003CFD 00:BCED: 38        SEC
C - - - - - 0x003CFE 00:BCEE: E5 6A     SBC ram_006A
C - - - - - 0x003D00 00:BCF0: 85 00     STA ram_0000_t45_lo
C - - - - - 0x003D02 00:BCF2: BD E8 07  LDA ram_07E8,X
C - - - - - 0x003D05 00:BCF5: E5 69     SBC ram_0069
C - - - - - 0x003D07 00:BCF7: 85 01     STA ram_0001_t03_hi
C - - - - - 0x003D09 00:BCF9: 20 89 BF  JSR sub_BF89
C - - - - - 0x003D0C 00:BCFC: B0 15     BCS bra_BD13
C - - - - - 0x003D0E 00:BCFE: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x003D11 00:BD01: C9 10     CMP #$10
C - - - - - 0x003D13 00:BD03: B0 06     BCS bra_BD0B
C - - - - - 0x003D15 00:BD05: A5 01     LDA ram_0001_t03_hi
C - - - - - 0x003D17 00:BD07: 10 0A     BPL bra_BD13
C - - - - - 0x003D19 00:BD09: 30 26     BMI bra_BD31
bra_BD0B:
C - - - - - 0x003D1B 00:BD0B: C9 F0     CMP #$F0
C - - - - - 0x003D1D 00:BD0D: 90 04     BCC bra_BD13
C - - - - - 0x003D1F 00:BD0F: A5 01     LDA ram_0001_t03_hi
C - - - - - 0x003D21 00:BD11: 10 1E     BPL bra_BD31
bra_BD13:
C - - - - - 0x003D23 00:BD13: BD E6 07  LDA ram_07E6,X
C - - - - - 0x003D26 00:BD16: 1D E8 07  ORA ram_07E8,X
C - - - - - 0x003D29 00:BD19: D0 05     BNE bra_BD20
C - - - - - 0x003D2B 00:BD1B: A5 62     LDA ram_0062_fr
C - - - - - 0x003D2D 00:BD1D: 9D C8 06  STA ram_obj_spd_X,X
bra_BD20:
C - - - - - 0x003D30 00:BD20: A5 00     LDA ram_0000_t45_lo
C - - - - - 0x003D32 00:BD22: 18        CLC
C - - - - - 0x003D33 00:BD23: 7D C8 06  ADC ram_obj_spd_X,X
C - - - - - 0x003D36 00:BD26: 9D C8 06  STA ram_obj_spd_X,X
C - - - - - 0x003D39 00:BD29: A5 01     LDA ram_0001_t03_hi
C - - - - - 0x003D3B 00:BD2B: 7D 4E 06  ADC ram_obj_pos_X,X
C - - - - - 0x003D3E 00:BD2E: 9D 4E 06  STA ram_obj_pos_X,X
bra_BD31:
C - - - - - 0x003D41 00:BD31: BD EA 07  LDA ram_07EA,X
C - - - - - 0x003D44 00:BD34: 38        SEC
C - - - - - 0x003D45 00:BD35: E5 6C     SBC ram_006C
C - - - - - 0x003D47 00:BD37: 85 02     STA ram_0002_t22_lo
C - - - - - 0x003D49 00:BD39: BD EC 07  LDA ram_07EC,X
C - - - - - 0x003D4C 00:BD3C: E5 6B     SBC ram_006B
C - - - - - 0x003D4E 00:BD3E: 85 03     STA ram_0003_t07_hi
C - - - - - 0x003D50 00:BD40: 20 89 BF  JSR sub_BF89
C - - - - - 0x003D53 00:BD43: B0 1A     BCS bra_BD5F
C - - - - - 0x003D55 00:BD45: 20 19 BE  JSR sub_BE19
C - - - - - 0x003D58 00:BD48: B0 15     BCS bra_BD5F
C - - - - - 0x003D5A 00:BD4A: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x003D5D 00:BD4D: C9 10     CMP #$10
C - - - - - 0x003D5F 00:BD4F: B0 06     BCS bra_BD57
C - - - - - 0x003D61 00:BD51: A5 03     LDA ram_0003_t07_hi
C - - - - - 0x003D63 00:BD53: 10 0A     BPL bra_BD5F
- - - - - - 0x003D65 00:BD55: 30 26     BMI bra_BD7D
bra_BD57:
C - - - - - 0x003D67 00:BD57: C9 C0     CMP #$C0
C - - - - - 0x003D69 00:BD59: 90 04     BCC bra_BD5F
C - - - - - 0x003D6B 00:BD5B: A5 03     LDA ram_0003_t07_hi
C - - - - - 0x003D6D 00:BD5D: 10 1E     BPL bra_BD7D
bra_BD5F:
C - - - - - 0x003D6F 00:BD5F: BD EA 07  LDA ram_07EA,X
C - - - - - 0x003D72 00:BD62: 1D EC 07  ORA ram_07EC,X
C - - - - - 0x003D75 00:BD65: D0 05     BNE bra_BD6C
C - - - - - 0x003D77 00:BD67: A5 65     LDA ram_0065_fr
C - - - - - 0x003D79 00:BD69: 9D DE 06  STA ram_obj_spd_Y,X
bra_BD6C:
C - - - - - 0x003D7C 00:BD6C: A5 02     LDA ram_0002_t22_lo
C - - - - - 0x003D7E 00:BD6E: 18        CLC
C - - - - - 0x003D7F 00:BD6F: 7D DE 06  ADC ram_obj_spd_Y,X
C - - - - - 0x003D82 00:BD72: 9D DE 06  STA ram_obj_spd_Y,X
C - - - - - 0x003D85 00:BD75: A5 03     LDA ram_0003_t07_hi
C - - - - - 0x003D87 00:BD77: 7D 68 06  ADC ram_obj_pos_Y,X
C - - - - - 0x003D8A 00:BD7A: 9D 68 06  STA ram_obj_pos_Y,X
bra_BD7D:
loc_BD7D:
C D 1 - - - 0x003D8D 00:BD7D: E8        INX
C - - - - - 0x003D8E 00:BD7E: E0 02     CPX #$02
C - - - - - 0x003D90 00:BD80: B0 56     BCS bra_BDD8_RTS
C - - - - - 0x003D92 00:BD82: 4C E2 BC  JMP loc_BCE2



sub_BD85:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x003D95 00:BD85: A0 02     LDY #$02
C - - - - - 0x003D97 00:BD87: A5 1B     LDA ram_001B_t02_hi
C - - - - - 0x003D99 00:BD89: 10 01     BPL bra_BD8C
C - - - - - 0x003D9B 00:BD8B: C8        INY
bra_BD8C:
C - - - - - 0x003D9C 00:BD8C: A5 15     LDA ram_0014_t02 + $01
C - - - - - 0x003D9E 00:BD8E: 29 F8     AND #$F8
C - - - - - 0x003DA0 00:BD90: CD F6 03  CMP ram_03F6
C - - - - - 0x003DA3 00:BD93: F0 1B     BEQ bra_BDB0
loc_BD95:
C D 1 - - - 0x003DA5 00:BD95: A2 03     LDX #$03
C - - - - - 0x003DA7 00:BD97: 20 8F F6  JSR sub_0x01F69F_get_stage_view_type
C - - - - - 0x003DAA 00:BD9A: F0 02     BEQ bra_BD9E_side_view
; if upper view
C - - - - - 0x003DAC 00:BD9C: A2 0F     LDX #$0F
bra_BD9E_side_view:
C - - - - - 0x003DAE 00:BD9E: 8A        TXA
C - - - - - 0x003DAF 00:BD9F: D9 3C 05  CMP ram_053C,Y
C - - - - - 0x003DB2 00:BDA2: D0 35     BNE bra_BDD9
C - - - - - 0x003DB4 00:BDA4: 98        TYA
C - - - - - 0x003DB5 00:BDA5: 29 02     AND #$02
C - - - - - 0x003DB7 00:BDA7: AA        TAX
C - - - - - 0x003DB8 00:BDA8: A9 00     LDA #$00
C - - - - - 0x003DBA 00:BDAA: 9D 3C 05  STA ram_053C,X
C - - - - - 0x003DBD 00:BDAD: 9D 3D 05  STA ram_053C + $01,X
bra_BDB0:
sub_BDB0:
C - - - - - 0x003DC0 00:BDB0: C0 02     CPY #$02
C - - - - - 0x003DC2 00:BDB2: B0 0D     BCS bra_BDC1
C - - - - - 0x003DC4 00:BDB4: AD 43 03  LDA ram_0343
C - - - - - 0x003DC7 00:BDB7: F0 08     BEQ bra_BDC1
C - - - - - 0x003DC9 00:BDB9: A5 67     LDA ram_0067
C - - - - - 0x003DCB 00:BDBB: 29 03     AND #$03
C - - - - - 0x003DCD 00:BDBD: C9 03     CMP #$03
C - - - - - 0x003DCF 00:BDBF: F0 16     BEQ bra_BDD7
bra_BDC1:
C - - - - - 0x003DD1 00:BDC1: A2 01     LDX #$01
C - - - - - 0x003DD3 00:BDC3: 20 8F F6  JSR sub_0x01F69F_get_stage_view_type
C - - - - - 0x003DD6 00:BDC6: F0 02     BEQ bra_BDCA_side_view
; if upper view
C - - - - - 0x003DD8 00:BDC8: A2 03     LDX #$03
bra_BDCA_side_view:
C - - - - - 0x003DDA 00:BDCA: 8A        TXA
C - - - - - 0x003DDB 00:BDCB: 25 67     AND ram_0067
C - - - - - 0x003DDD 00:BDCD: AA        TAX
C - - - - - 0x003DDE 00:BDCE: BD AE F5  LDA tbl_0x01F5BE,X
C - - - - - 0x003DE1 00:BDD1: 19 3C 05  ORA ram_053C,Y
C - - - - - 0x003DE4 00:BDD4: 99 3C 05  STA ram_053C,Y
bra_BDD7:
C - - - - - 0x003DE7 00:BDD7: 38        SEC
bra_BDD8_RTS:
C - - - - - 0x003DE8 00:BDD8: 60        RTS
bra_BDD9:
C - - - - - 0x003DE9 00:BDD9: 98        TYA
C - - - - - 0x003DEA 00:BDDA: 29 02     AND #$02
C - - - - - 0x003DEC 00:BDDC: AA        TAX
; ram_0019_t04
; ram_001B_t02_hi
C - - - - - 0x003DED 00:BDDD: B5 19     LDA ram_0019_temp,X
C - - - - - 0x003DEF 00:BDDF: 10 06     BPL bra_BDE7
C - - - - - 0x003DF1 00:BDE1: A9 FF     LDA #$FF
C - - - - - 0x003DF3 00:BDE3: 95 69     STA ram_0069,X
C - - - - - 0x003DF5 00:BDE5: 95 6A     STA ram_006A,X
bra_BDE7:
C - - - - - 0x003DF7 00:BDE7: BD F3 03  LDA ram_03F3,X
C - - - - - 0x003DFA 00:BDEA: D5 69     CMP ram_0069,X
C - - - - - 0x003DFC 00:BDEC: D0 03     BNE bra_BDF1
C - - - - - 0x003DFE 00:BDEE: 20 B0 BD  JSR sub_BDB0
bra_BDF1:
C - - - - - 0x003E01 00:BDF1: 18        CLC
C - - - - - 0x003E02 00:BDF2: 60        RTS



sub_BDF3:
C - - - - - 0x003E03 00:BDF3: A0 00     LDY #$00
C - - - - - 0x003E05 00:BDF5: A5 19     LDA ram_0019_t04
C - - - - - 0x003E07 00:BDF7: 10 07     BPL bra_BE00
C - - - - - 0x003E09 00:BDF9: C8        INY ; 01
C - - - - - 0x003E0A 00:BDFA: A5 69     LDA ram_0069
C - - - - - 0x003E0C 00:BDFC: 30 0F     BMI bra_BE0D
C - - - - - 0x003E0E 00:BDFE: 10 04     BPL bra_BE04    ; jmp
bra_BE00:
C - - - - - 0x003E10 00:BE00: A5 69     LDA ram_0069
C - - - - - 0x003E12 00:BE02: 10 09     BPL bra_BE0D
bra_BE04:
C - - - - - 0x003E14 00:BE04: 98        TYA
C - - - - - 0x003E15 00:BE05: 49 01     EOR #$01
C - - - - - 0x003E17 00:BE07: AA        TAX
C - - - - - 0x003E18 00:BE08: A9 00     LDA #$00
C - - - - - 0x003E1A 00:BE0A: 9D 3C 05  STA ram_053C,X
bra_BE0D:
C - - - - - 0x003E1D 00:BE0D: A5 15     LDA ram_0014_t01 + $01
C - - - - - 0x003E1F 00:BE0F: 29 F8     AND #$F8
C - - - - - 0x003E21 00:BE11: CD F4 03  CMP ram_03F4
C - - - - - 0x003E24 00:BE14: F0 9A     BEQ bra_BDB0
C - - - - - 0x003E26 00:BE16: 4C 95 BD  JMP loc_BD95



sub_BE19:
C - - - - - 0x003E29 00:BE19: 20 8F F6  JSR sub_0x01F69F_get_stage_view_type
C - - - - - 0x003E2C 00:BE1C: D0 09     BNE bra_BE27_upper_view
; if side view
C - - - - - 0x003E2E 00:BE1E: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x003E31 00:BE21: 29 40     AND #$40
C - - - - - 0x003E33 00:BE23: F0 CC     BEQ bra_BDF1
C - - - - - 0x003E35 00:BE25: 38        SEC
C - - - - - 0x003E36 00:BE26: 60        RTS
bra_BE27_upper_view:
C - - - - - 0x003E37 00:BE27: BD C8 07  LDA ram_07C8_unk,X
C - - - - - 0x003E3A 00:BE2A: 29 1F     AND #$1F
C - - - - - 0x003E3C 00:BE2C: C9 1C     CMP #$1C
C - - - - - 0x003E3E 00:BE2E: 60        RTS



tbl_BE2F:
- D 1 - - - 0x003E3F 00:BE2F: 39 BE     .word off_BE39_00_stage_1
- D 1 - - - 0x003E41 00:BE31: 3F BE     .word off_BE3F_02_stage_2
- D 1 - - - 0x003E43 00:BE33: 56 BE     .word off_BE56_04_stage_3
- D 1 - - - 0x003E45 00:BE35: 5F BE     .word off_BE5F_06_stage_4
- D 1 - - - 0x003E47 00:BE37: 4E BE     .word off_BE4E_08_stage_5



off_BE39_00_stage_1:
- D 1 - I - 0x003E49 00:BE39: 04        .byte $04   ; 

- D 1 - I - 0x003E4A 00:BE3A: 00        .byte $00   ; 
- D 1 - I - 0x003E4B 00:BE3B: 00        .byte $00   ; 
- D 1 - I - 0x003E4C 00:BE3C: 80        .byte $80   ; 
- - - - - - 0x003E4D 00:BE3D: FF        .byte $FF   ; 
- - - - - - 0x003E4E 00:BE3E: FF        .byte $FF   ; 



off_BE3F_02_stage_2:
- D 1 - I - 0x003E4F 00:BE3F: 01        .byte $01   ; 

- D 1 - I - 0x003E50 00:BE40: E8        .byte $E8   ; 
- D 1 - I - 0x003E51 00:BE41: E8        .byte $E8   ; 
- D 1 - I - 0x003E52 00:BE42: E8        .byte $E8   ; 
- D 1 - I - 0x003E53 00:BE43: E8        .byte $E8   ; 
- D 1 - I - 0x003E54 00:BE44: F0        .byte $F0   ; 
- D 1 - I - 0x003E55 00:BE45: F0        .byte $F0   ; 
- D 1 - I - 0x003E56 00:BE46: F0        .byte $F0   ; 
- D 1 - I - 0x003E57 00:BE47: F0        .byte $F0   ; 
- D 1 - I - 0x003E58 00:BE48: E0        .byte $E0   ; 
- D 1 - I - 0x003E59 00:BE49: E3        .byte $E3   ; 
- D 1 - I - 0x003E5A 00:BE4A: E3        .byte $E3   ; 
- D 1 - I - 0x003E5B 00:BE4B: F3        .byte $F3   ; 
- - - - - - 0x003E5C 00:BE4C: F3        .byte $F3   ; 
- D 1 - I - 0x003E5D 00:BE4D: FF        .byte $FF   ; 



off_BE4E_08_stage_5:
- D 1 - I - 0x003E5E 00:BE4E: 01        .byte $01   ; 

- D 1 - I - 0x003E5F 00:BE4F: F0        .byte $F0   ; 
- D 1 - I - 0x003E60 00:BE50: F0        .byte $F0   ; 
- D 1 - I - 0x003E61 00:BE51: F1        .byte $F1   ; 
- D 1 - I - 0x003E62 00:BE52: F1        .byte $F1   ; 
- D 1 - I - 0x003E63 00:BE53: F0        .byte $F0   ; 
- D 1 - I - 0x003E64 00:BE54: F1        .byte $F1   ; 
- D 1 - I - 0x003E65 00:BE55: FF        .byte $FF   ; 



off_BE56_04_stage_3:
- D 1 - I - 0x003E66 00:BE56: 01        .byte $01   ; 

- D 1 - I - 0x003E67 00:BE57: FF        .byte $FF   ; 
- D 1 - I - 0x003E68 00:BE58: F0        .byte $F0   ; 
- D 1 - I - 0x003E69 00:BE59: F3        .byte $F3   ; 
- D 1 - I - 0x003E6A 00:BE5A: F1        .byte $F1   ; 
- D 1 - I - 0x003E6B 00:BE5B: F1        .byte $F1   ; 
- D 1 - I - 0x003E6C 00:BE5C: F3        .byte $F3   ; 
- D 1 - I - 0x003E6D 00:BE5D: F3        .byte $F3   ; 
- D 1 - I - 0x003E6E 00:BE5E: FF        .byte $FF   ; 



off_BE5F_06_stage_4:
- D 1 - I - 0x003E6F 00:BE5F: 02        .byte $02   ; 

- - - - - - 0x003E70 00:BE60: FF        .byte $FF   ; 
- D 1 - I - 0x003E71 00:BE61: FC        .byte $FC   ; 
- - - - - - 0x003E72 00:BE62: FF        .byte $FF   ; 
- - - - - - 0x003E73 00:BE63: FC        .byte $FC   ; 
- - - - - - 0x003E74 00:BE64: FF        .byte $FF   ; 
- - - - - - 0x003E75 00:BE65: FC        .byte $FC   ; 
- D 1 - I - 0x003E76 00:BE66: 3F        .byte $3F   ; 
- D 1 - I - 0x003E77 00:BE67: F0        .byte $F0   ; 
- - - - - - 0x003E78 00:BE68: 3F        .byte $3F   ; 
- D 1 - I - 0x003E79 00:BE69: F0        .byte $F0   ; 
- - - - - - 0x003E7A 00:BE6A: 3F        .byte $3F   ; 
- D 1 - I - 0x003E7B 00:BE6B: F0        .byte $F0   ; 
- - - - - - 0x003E7C 00:BE6C: FF        .byte $FF   ; 
- D 1 - I - 0x003E7D 00:BE6D: FC        .byte $FC   ; 
- - - - - - 0x003E7E 00:BE6E: FF        .byte $FF   ; 
- D 1 - I - 0x003E7F 00:BE6F: FC        .byte $FC   ; 
- D 1 - I - 0x003E80 00:BE70: 3F        .byte $3F   ; 
- D 1 - I - 0x003E81 00:BE71: FC        .byte $FC   ; 
- D 1 - I - 0x003E82 00:BE72: 3F        .byte $3F   ; 
- - - - - - 0x003E83 00:BE73: FC        .byte $FC   ; 
- D 1 - I - 0x003E84 00:BE74: 0F        .byte $0F   ; 
- - - - - - 0x003E85 00:BE75: FF        .byte $FF   ; 
- D 1 - I - 0x003E86 00:BE76: 0F        .byte $0F   ; 
- D 1 - I - 0x003E87 00:BE77: FF        .byte $FF   ; 
- D 1 - I - 0x003E88 00:BE78: 0F        .byte $0F   ; 
- - - - - - 0x003E89 00:BE79: FF        .byte $FF   ; 
- D 1 - I - 0x003E8A 00:BE7A: 0F        .byte $0F   ; 
- - - - - - 0x003E8B 00:BE7B: FF        .byte $FF   ; 
- D 1 - I - 0x003E8C 00:BE7C: 0F        .byte $0F   ; 
- - - - - - 0x003E8D 00:BE7D: FF        .byte $FF   ; 
- D 1 - I - 0x003E8E 00:BE7E: 0F        .byte $0F   ; 
- - - - - - 0x003E8F 00:BE7F: FF        .byte $FF   ; 
- D 1 - I - 0x003E90 00:BE80: CF        .byte $CF   ; 
- - - - - - 0x003E91 00:BE81: FF        .byte $FF   ; 
- D 1 - I - 0x003E92 00:BE82: CF        .byte $CF   ; 
- - - - - - 0x003E93 00:BE83: FF        .byte $FF   ; 
- D 1 - I - 0x003E94 00:BE84: 03        .byte $03   ; 
- - - - - - 0x003E95 00:BE85: FF        .byte $FF   ; 
- D 1 - I - 0x003E96 00:BE86: 03        .byte $03   ; 
- - - - - - 0x003E97 00:BE87: FF        .byte $FF   ; 
- D 1 - I - 0x003E98 00:BE88: 03        .byte $03   ; 
- - - - - - 0x003E99 00:BE89: FF        .byte $FF   ; 
- D 1 - I - 0x003E9A 00:BE8A: CF        .byte $CF   ; 
- - - - - - 0x003E9B 00:BE8B: FF        .byte $FF   ; 
- D 1 - I - 0x003E9C 00:BE8C: CF        .byte $CF   ; 
- - - - - - 0x003E9D 00:BE8D: FF        .byte $FF   ; 
- D 1 - I - 0x003E9E 00:BE8E: C3        .byte $C3   ; 
- - - - - - 0x003E9F 00:BE8F: FF        .byte $FF   ; 
- D 1 - I - 0x003EA0 00:BE90: C3        .byte $C3   ; 
- - - - - - 0x003EA1 00:BE91: FF        .byte $FF   ; 
- D 1 - I - 0x003EA2 00:BE92: F3        .byte $F3   ; 
- - - - - - 0x003EA3 00:BE93: FF        .byte $FF   ; 
- D 1 - I - 0x003EA4 00:BE94: F3        .byte $F3   ; 
- - - - - - 0x003EA5 00:BE95: FF        .byte $FF   ; 
- D 1 - I - 0x003EA6 00:BE96: C0        .byte $C0   ; 
- - - - - - 0x003EA7 00:BE97: FF        .byte $FF   ; 
- D 1 - I - 0x003EA8 00:BE98: C0        .byte $C0   ; 
- - - - - - 0x003EA9 00:BE99: FF        .byte $FF   ; 
- D 1 - I - 0x003EAA 00:BE9A: C0        .byte $C0   ; 
- - - - - - 0x003EAB 00:BE9B: FF        .byte $FF   ; 
- D 1 - I - 0x003EAC 00:BE9C: F3        .byte $F3   ; 
- - - - - - 0x003EAD 00:BE9D: FF        .byte $FF   ; 
- D 1 - I - 0x003EAE 00:BE9E: F3        .byte $F3   ; 
- - - - - - 0x003EAF 00:BE9F: FF        .byte $FF   ; 
- - - - - - 0x003EB0 00:BEA0: F3        .byte $F3   ; 
- - - - - - 0x003EB1 00:BEA1: FF        .byte $FF   ; 
- - - - - - 0x003EB2 00:BEA2: FF        .byte $FF   ; 



sub_BEA3:
; in
    ; ram_0002_t23_lo
    ; ram_0003_t08_hi
; out
    ; ram_0002_t24_lo
    ; ram_0003_t09_hi
C - - - - - 0x003EB3 00:BEA3: A5 DD     LDA ram_00DD
C - - - - - 0x003EB5 00:BEA5: 18        CLC
C - - - - - 0x003EB6 00:BEA6: 65 03     ADC ram_0003_t08_hi
C - - - - - 0x003EB8 00:BEA8: 85 03     STA ram_0003_t09_hi
C - - - - - 0x003EBA 00:BEAA: 90 07     BCC bra_BEB3
- - - - - - 0x003EBC 00:BEAC: E6 02     INC ram_0002_t23_lo
- - - - - - 0x003EBE 00:BEAE: 18        CLC
- - - - - - 0x003EBF 00:BEAF: 69 10     ADC #$10
- - - - - - 0x003EC1 00:BEB1: 85 03     STA ram_0003_t09_hi
bra_BEB3:
C - - - - - 0x003EC3 00:BEB3: A5 02     LDA ram_0002_t23_lo
C - - - - - 0x003EC5 00:BEB5: 65 DC     ADC ram_00DC
C - - - - - 0x003EC7 00:BEB7: 85 02     STA ram_0002_t24_lo
C - - - - - 0x003EC9 00:BEB9: A5 03     LDA ram_0003_t09_hi
C - - - - - 0x003ECB 00:BEBB: 38        SEC
C - - - - - 0x003ECC 00:BEBC: E9 F0     SBC #$F0
C - - - - - 0x003ECE 00:BEBE: 90 04     BCC bra_BEC4_RTS
C - - - - - 0x003ED0 00:BEC0: E6 02     INC ram_0002_t24_lo
C - - - - - 0x003ED2 00:BEC2: 85 03     STA ram_0003_t09_hi
bra_BEC4_RTS:
C - - - - - 0x003ED4 00:BEC4: 60        RTS



sub_BEC5:
C - - - - - 0x003ED5 00:BEC5: A5 DD     LDA ram_00DD
C - - - - - 0x003ED7 00:BEC7: 18        CLC
C - - - - - 0x003ED8 00:BEC8: 65 03     ADC ram_0003_t08_hi
C - - - - - 0x003EDA 00:BECA: 85 03     STA ram_0003_t09_hi
C - - - - - 0x003EDC 00:BECC: A5 02     LDA ram_0002_t23_lo
C - - - - - 0x003EDE 00:BECE: 65 DC     ADC ram_00DC
C - - - - - 0x003EE0 00:BED0: 85 02     STA ram_0002_t24_lo
C - - - - - 0x003EE2 00:BED2: C5 DC     CMP ram_00DC
C - - - - - 0x003EE4 00:BED4: F0 07     BEQ bra_BEDD_RTS
C - - - - - 0x003EE6 00:BED6: A5 03     LDA ram_0003_t09_hi
C - - - - - 0x003EE8 00:BED8: 38        SEC
C - - - - - 0x003EE9 00:BED9: E9 10     SBC #$10
C - - - - - 0x003EEB 00:BEDB: 85 03     STA ram_0003_t09_hi
bra_BEDD_RTS:
C - - - - - 0x003EED 00:BEDD: 60        RTS



sub_BEDE:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x003EEE 00:BEDE: A9 04     LDA #$04
C - - - - - 0x003EF0 00:BEE0: C5 75     CMP ram_stage
C - - - - - 0x003EF2 00:BEE2: D0 1A     BNE bra_BEFE
C - - - - - 0x003EF4 00:BEE4: A5 60     LDA ram_0060_hi
C - - - - - 0x003EF6 00:BEE6: C9 02     CMP #$02
C - - - - - 0x003EF8 00:BEE8: 90 06     BCC bra_BEF0
C - - - - - 0x003EFA 00:BEEA: D0 12     BNE bra_BEFE
C - - - - - 0x003EFC 00:BEEC: A5 61     LDA ram_0061_lo
C - - - - - 0x003EFE 00:BEEE: 30 0E     BMI bra_BEFE
bra_BEF0:
C - - - - - 0x003F00 00:BEF0: A5 15     LDA ram_0014_t02 + $01
C - - - - - 0x003F02 00:BEF2: 10 0A     BPL bra_BEFE
C - - - - - 0x003F04 00:BEF4: A5 1B     LDA ram_001B_t02_hi
C - - - - - 0x003F06 00:BEF6: 10 06     BPL bra_BEFE
C - - - - - 0x003F08 00:BEF8: A5 16     LDA ram_0014_t02 + $02
C - - - - - 0x003F0A 00:BEFA: C9 02     CMP #$02
C - - - - - 0x003F0C 00:BEFC: 90 3D     BCC bra_BF3B_RTS
bra_BEFE:
C - - - - - 0x003F0E 00:BEFE: A9 00     LDA #$00
C - - - - - 0x003F10 00:BF00: 85 02     STA ram_0002_t23_lo
C - - - - - 0x003F12 00:BF02: A5 1A     LDA ram_001A_t08_lo
C - - - - - 0x003F14 00:BF04: 18        CLC
C - - - - - 0x003F15 00:BF05: 65 65     ADC ram_0065_fr
C - - - - - 0x003F17 00:BF07: A5 1B     LDA ram_001B_t02_hi
C - - - - - 0x003F19 00:BF09: 69 00     ADC #$00
C - - - - - 0x003F1B 00:BF0B: 85 03     STA ram_0003_t08_hi
C - - - - - 0x003F1D 00:BF0D: 10 08     BPL bra_BF17
C - - - - - 0x003F1F 00:BF0F: C6 02     DEC ram_0002_t23_lo
C - - - - - 0x003F21 00:BF11: 20 C5 BE  JSR sub_BEC5
C - - - - - 0x003F24 00:BF14: 4C 1A BF  JMP loc_BF1A
bra_BF17:
C - - - - - 0x003F27 00:BF17: 20 A3 BE  JSR sub_BEA3
loc_BF1A:
C D 1 - - - 0x003F2A 00:BF1A: A5 03     LDA ram_0003_t09_hi
C - - - - - 0x003F2C 00:BF1C: A4 02     LDY ram_0002_t24_lo
C - - - - - 0x003F2E 00:BF1E: 4C 44 BF  JMP loc_BF44



sub_BF21:
C - - - - - 0x003F31 00:BF21: A5 75     LDA ram_stage
C - - - - - 0x003F33 00:BF23: C9 02     CMP #$02
C - - - - - 0x003F35 00:BF25: D0 19     BNE bra_BF40
C - - - - - 0x003F37 00:BF27: A5 63     LDA ram_0063_hi
C - - - - - 0x003F39 00:BF29: C9 03     CMP #$03
C - - - - - 0x003F3B 00:BF2B: 90 13     BCC bra_BF40
C - - - - - 0x003F3D 00:BF2D: D0 06     BNE bra_BF35
C - - - - - 0x003F3F 00:BF2F: A5 64     LDA ram_0064_lo
C - - - - - 0x003F41 00:BF31: C9 C0     CMP #$C0
C - - - - - 0x003F43 00:BF33: 90 0B     BCC bra_BF40
bra_BF35:
C - - - - - 0x003F45 00:BF35: A5 0A     LDA ram_000A_t05
C - - - - - 0x003F47 00:BF37: C9 02     CMP #$02
C - - - - - 0x003F49 00:BF39: B0 05     BCS bra_BF40
bra_BF3B_RTS:
C - - - - - 0x003F4B 00:BF3B: 60        RTS



sub_BF3C:
C - - - - - 0x003F4C 00:BF3C: A5 60     LDA ram_0060_hi
C - - - - - 0x003F4E 00:BF3E: 85 0A     STA ram_000A_t05
bra_BF40:
; bzk optimize, useless LDA
C - - - - - 0x003F50 00:BF40: A5 DD     LDA ram_00DD
C - - - - - 0x003F52 00:BF42: A4 DC     LDY ram_00DC
loc_BF44:
; bzk optimize, useless STA
C D 1 - - - 0x003F54 00:BF44: 85 10     STA ram_0010_t22_useless
C - - - - - 0x003F56 00:BF46: 84 11     STY ram_0011_t03
C - - - - - 0x003F58 00:BF48: A4 88     LDY ram_x2_stage
C - - - - - 0x003F5A 00:BF4A: B9 2F BE  LDA tbl_BE2F,Y
C - - - - - 0x003F5D 00:BF4D: 85 00     STA ram_0000_t03_data
C - - - - - 0x003F5F 00:BF4F: B9 30 BE  LDA tbl_BE2F + $01,Y
C - - - - - 0x003F62 00:BF52: 85 01     STA ram_0000_t03_data + $01
C - - - - - 0x003F64 00:BF54: A0 00     LDY #$00
C - - - - - 0x003F66 00:BF56: B1 00     LDA (ram_0000_t03_data),Y
C - - - - - 0x003F68 00:BF58: 85 0B     STA ram_000B_t04
C - - - - - 0x003F6A 00:BF5A: A8        TAY
C - - - - - 0x003F6B 00:BF5B: A5 11     LDA ram_0011_t03
C - - - - - 0x003F6D 00:BF5D: 85 0F     STA ram_000F_t03
C - - - - - 0x003F6F 00:BF5F: 88        DEY
C - - - - - 0x003F70 00:BF60: F0 01     BEQ bra_BF63
C - - - - - 0x003F72 00:BF62: 0A        ASL
bra_BF63:
C - - - - - 0x003F73 00:BF63: 85 0C     STA ram_000C_t01_distance
C - - - - - 0x003F75 00:BF65: 18        CLC
C - - - - - 0x003F76 00:BF66: 65 00     ADC ram_0000_t03_data
C - - - - - 0x003F78 00:BF68: 85 00     STA ram_0000_t04_data
C - - - - - 0x003F7A 00:BF6A: A5 01     LDA ram_0000_t03_data + $01
C - - - - - 0x003F7C 00:BF6C: 69 00     ADC #$00
C - - - - - 0x003F7E 00:BF6E: 85 01     STA ram_0000_t04_data + $01
C - - - - - 0x003F80 00:BF70: A5 0A     LDA ram_000A_t05
; / 08
C - - - - - 0x003F82 00:BF72: 4A        LSR
C - - - - - 0x003F83 00:BF73: 4A        LSR
C - - - - - 0x003F84 00:BF74: 4A        LSR
C - - - - - 0x003F85 00:BF75: 85 0D     STA ram_000D_t03_data_index
C - - - - - 0x003F87 00:BF77: A5 0A     LDA ram_000A_t05
C - - - - - 0x003F89 00:BF79: 29 07     AND #$07
C - - - - - 0x003F8B 00:BF7B: A8        TAY
C - - - - - 0x003F8C 00:BF7C: B9 AE F5  LDA tbl_0x01F5BE,Y
C - - - - - 0x003F8F 00:BF7F: 85 0E     STA ram_000E_t02
C - - - - - 0x003F91 00:BF81: 38        SEC
C - - - - - 0x003F92 00:BF82: 60        RTS



sub_BF83:
; out
    ; Y = 
C - - - - - 0x003F93 00:BF83: B5 B1     LDA ram_current_player,X
C - - - - - 0x003F95 00:BF85: 29 0F     AND #$0F
C - - - - - 0x003F97 00:BF87: A8        TAY
C - - - - - 0x003F98 00:BF88: 60        RTS



sub_BF89:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x003F99 00:BF89: 20 83 BF  JSR sub_BF83
C - - - - - 0x003F9C 00:BF8C: B9 7F 00  LDA ram_player_stats,Y
C - - - - - 0x003F9F 00:BF8F: 29 F0     AND #$F0
C - - - - - 0x003FA1 00:BF91: C9 30     CMP #$30
C - - - - - 0x003FA3 00:BF93: 60        RTS



sub_BF94:
; in
    ; A = 00/01
; out
    ; ram_0000_t36
C - - - - - 0x003FA4 00:BF94: 85 04     STA ram_0004_t14
C - - - - - 0x003FA6 00:BF96: A9 01     LDA #$01
C - - - - - 0x003FA8 00:BF98: 85 02     STA ram_0002_t25_flag
C - - - - - 0x003FAA 00:BF9A: 20 89 BF  JSR sub_BF89
C - - - - - 0x003FAD 00:BF9D: 90 04     BCC bra_BFA3
C - - - - - 0x003FAF 00:BF9F: A9 00     LDA #$00
C - - - - - 0x003FB1 00:BFA1: 85 02     STA ram_0002_t25_flag
bra_BFA3:
C - - - - - 0x003FB3 00:BFA3: A9 00     LDA #$00
C - - - - - 0x003FB5 00:BFA5: 85 00     STA ram_0000_t46
C - - - - - 0x003FB7 00:BFA7: A5 04     LDA ram_0004_t14
C - - - - - 0x003FB9 00:BFA9: F0 06     BEQ bra_BFB1
C - - - - - 0x003FBB 00:BFAB: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x003FBE 00:BFAE: 4C B4 BF  JMP loc_BFB4
bra_BFB1:
C - - - - - 0x003FC1 00:BFB1: BD 4E 06  LDA ram_obj_pos_X,X
loc_BFB4:
C D 1 - - - 0x003FC4 00:BFB4: C9 90     CMP #$90
C - - - - - 0x003FC6 00:BFB6: B0 08     BCS bra_BFC0
C - - - - - 0x003FC8 00:BFB8: E6 00     INC ram_0000_t46
C - - - - - 0x003FCA 00:BFBA: C9 68     CMP #$68
C - - - - - 0x003FCC 00:BFBC: B0 02     BCS bra_BFC0
C - - - - - 0x003FCE 00:BFBE: E6 00     INC ram_0000_t46
bra_BFC0:
C - - - - - 0x003FD0 00:BFC0: A4 02     LDY ram_0002_t25_flag
C - - - - - 0x003FD2 00:BFC2: F0 1F     BEQ bra_BFE3
C - - - - - 0x003FD4 00:BFC4: A5 04     LDA ram_0004_t14
C - - - - - 0x003FD6 00:BFC6: D0 0B     BNE bra_BFD3
C - - - - - 0x003FD8 00:BFC8: A0 03     LDY #$03
C - - - - - 0x003FDA 00:BFCA: BD E8 07  LDA ram_07E8,X
C - - - - - 0x003FDD 00:BFCD: 10 0D     BPL bra_BFDC
C - - - - - 0x003FDF 00:BFCF: A0 07     LDY #$07
C - - - - - 0x003FE1 00:BFD1: D0 09     BNE bra_BFDC    ; jmp
bra_BFD3:
C - - - - - 0x003FE3 00:BFD3: A0 0A     LDY #$0A
C - - - - - 0x003FE5 00:BFD5: BD EC 07  LDA ram_07EC,X
C - - - - - 0x003FE8 00:BFD8: 30 02     BMI bra_BFDC
C - - - - - 0x003FEA 00:BFDA: A0 0E     LDY #$0E
bra_BFDC:
C - - - - - 0x003FEC 00:BFDC: A5 00     LDA ram_0000_t46
C - - - - - 0x003FEE 00:BFDE: D9 EC BF  CMP tbl_BFEC,Y
C - - - - - 0x003FF1 00:BFE1: F0 04     BEQ bra_BFE7
bra_BFE3:
C - - - - - 0x003FF3 00:BFE3: A0 00     LDY #$00
C - - - - - 0x003FF5 00:BFE5: F0 02     BEQ bra_BFE9    ; jmp
bra_BFE7:
C - - - - - 0x003FF7 00:BFE7: A0 02     LDY #$02
bra_BFE9:
C - - - - - 0x003FF9 00:BFE9: 84 00     STY ram_0000_t36
C - - - - - 0x003FFB 00:BFEB: 60        RTS



tbl_BFEC:
; bzk optimize, only 4 bytes are used
- - - - - - 0x003FFC 00:BFEC: 01        .byte $01   ; 00 
- - - - - - 0x003FFD 00:BFED: 01        .byte $01   ; 01 
- - - - - - 0x003FFE 00:BFEE: 00        .byte $00   ; 02 
- D 1 - - - 0x003FFF 00:BFEF: 00        .byte $00   ; 03 0x003FD8
- - - - - - 0x004000 00:BFF0: 00        .byte $00   ; 04 
- - - - - - 0x004001 00:BFF1: 01        .byte $01   ; 05 
- - - - - - 0x004002 00:BFF2: 02        .byte $02   ; 06 
- D 1 - - - 0x004003 00:BFF3: 02        .byte $02   ; 07 0x003FDF
- - - - - - 0x004004 00:BFF4: 02        .byte $02   ; 08 
- - - - - - 0x004005 00:BFF5: 01        .byte $01   ; 09 
- D 1 - - - 0x004006 00:BFF6: 02        .byte $02   ; 0A 0x003FE3
- - - - - - 0x004007 00:BFF7: 02        .byte $02   ; 0B 
- - - - - - 0x004008 00:BFF8: 01        .byte $01   ; 0C 
- - - - - - 0x004009 00:BFF9: 00        .byte $00   ; 0D 
- D 1 - - - 0x00400A 00:BFFA: 00        .byte $00   ; 0E 0x003FEA



.out .sprintf("Free bytes in bank 00: 0x%04X [%d]", ($C000 - *), ($C000 - *))



