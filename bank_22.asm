.segment "BANK_22"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $A000  ; for listing file
; 0x044010-0x04600F



.export ofs_017_0x0082F5_00
.export ofs_017_0x0083CF_01
.export ofs_017_0x009A27_02
.export ofs_017_0x0083FB_03
.export ofs_017_0x008478_04
.export ofs_017_0x00854C_05
.export ofs_017_0x008571_06
.export ofs_017_0x00858E_07
.export ofs_017_0x0085E0_08
.export ofs_017_0x0086BB_09
.export ofs_017_0x0086F1_0A
.export ofs_017_0x0086FA_0B_play_music



ofs_017_0x0082F5_00:
                                        CLC
                                        RTS



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_017_0x0083CF_01:
C - - J - - 0x0083CF 02:83BF: BD 78 07  LDA ram_0778_unk,X
C - - - - - 0x0083D2 02:83C2: 30 1E     BMI bra_83E2
C - - - - - 0x0083D4 02:83C4: BD 82 07  LDA ram_0782_unk,X
C - - - - - 0x0083D7 02:83C7: 30 11     BMI bra_83DA
C - - - - - 0x0083D9 02:83C9: 20 78 91  JSR sub_0x009188_stage_AND_01
C - - - - - 0x0083DC 02:83CC: D0 0C     BNE bra_83DA    ; if upper view
; if side view
C - - - - - 0x0083DE 02:83CE: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x0083E1 02:83D1: 29 08     AND #$08
C - - - - - 0x0083E3 02:83D3: D0 05     BNE bra_83DA
C - - - - - 0x0083E5 02:83D5: A9 05     LDA #$05
C - - - - - 0x0083E7 02:83D7: 20 BB 90  JSR sub_0x0090CB
bra_83DA:
C - - - - - 0x0083EA 02:83DA: 20 F2 95  JSR sub_0x009602
C - - - - - 0x0083ED 02:83DD: A5 0A     LDA ram_000A_t03
C - - - - - 0x0083EF 02:83DF: 9D 9C 06  STA ram_069C_obj,X
bra_83E2:
                                        DEC ram_069C_obj,X
                                        BEQ bra_83DE
                                        CLC
                                        RTS
bra_83DE:
                                        SEC
                                        RTS



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_017_0x009A27_02:
                                        JMP loc_0x009A27



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_017_0x0083FB_03:
C - - J - - 0x0083FB 02:83EB: BD 78 07  LDA ram_0778_unk,X
C - - - - - 0x0083FE 02:83EE: 30 28     BMI bra_8418
C - - - - - 0x008400 02:83F0: BD 82 07  LDA ram_0782_unk,X
C - - - - - 0x008403 02:83F3: 30 0C     BMI bra_8401
C - - - - - 0x008405 02:83F5: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x008408 02:83F8: 29 08     AND #$08
C - - - - - 0x00840A 02:83FA: D0 05     BNE bra_8401
C - - - - - 0x00840C 02:83FC: A9 01     LDA #$01
C - - - - - 0x00840E 02:83FE: 20 BB 90  JSR sub_0x0090CB
bra_8401:
C - - - - - 0x008411 02:8401: 20 1B 84  JSR sub_0x00842B_000A_ASL_TAY
C - - - - - 0x008414 02:8404: B9 20 84  LDA tbl_8420,Y
C - - - - - 0x008417 02:8407: 9D 9C 06  STA ram_069C_obj,X
C - - - - - 0x00841A 02:840A: B9 21 84  LDA tbl_8420 + $01,Y
C - - - - - 0x00841D 02:840D: F0 09     BEQ bra_8418
C - - - - - 0x00841F 02:840F: 20 7D 91  LDA ram_06B2_obj,X
                                        AND #$F0
C - - - - - 0x008422 02:8412: 19 21 84  ORA tbl_8420 + $01,Y
C - - - - - 0x008425 02:8415: 9D B2 06  STA ram_06B2_obj,X
bra_8418:
C - - - - - 0x008428 02:8418: 4C E2 83  DEC ram_069C_obj,X
                                        BEQ bra_83DB
                                        CLC
                                        RTS
bra_83DB:
                                        SEC
                                        RTS



tbl_8420:
;                                              +---------- 
;                                              |    +----- 
;                                              |    |
- D 0 - - - 0x008430 02:8420: 18        .byte $18, $00   ; 00 
- D 0 - - - 0x008432 02:8422: 10        .byte $10, $03   ; 01 
- D 0 - - - 0x008434 02:8424: 23        .byte $23, $02   ; 02 
- D 0 - - - 0x008436 02:8426: 28        .byte $28, $00   ; 03 
- D 0 - - - 0x008438 02:8428: 10        .byte $10, $02   ; 04 
- D 0 - - - 0x00843A 02:842A: 1C        .byte $1C, $04   ; 05 
- - - - - - 0x00843C 02:842C: 08        .byte $08, $02   ; 06 
- - - - - - 0x00843E 02:842E: 08        .byte $08, $04   ; 07 
- D 0 - - - 0x008440 02:8430: 18        .byte $18, $02   ; 08 
- D 0 - - - 0x008442 02:8432: 18        .byte $18, $03   ; 09 
- - - - - - 0x008444 02:8434: FF        .byte $FF, $03   ; 0A 
- D 0 - - - 0x008446 02:8436: FF        .byte $FF, $02   ; 0B 
- D 0 - - - 0x008448 02:8438: 50        .byte $50, $02   ; 0C 
- - - - - - 0x00844A 02:843A: 40        .byte $40, $04   ; 0D 
- D 0 - - - 0x00844C 02:843C: 30        .byte $30, $03   ; 0E 
- - - - - - 0x00844E 02:843E: 18        .byte $18, $04   ; 0F 
- D 0 - - - 0x008450 02:8440: 10        .byte $10, $04   ; 10 
- - - - - - 0x008452 02:8442: 20        .byte $20, $03   ; 11 
- D 0 - - - 0x008454 02:8444: 10        .byte $10, $09   ; 12 



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_017_0x008478_04:
C - - J - - 0x008478 02:8468: BD 78 07  LDA ram_0778_unk,X
C - - - - - 0x00847B 02:846B: 30 0F     BMI bra_847A
C - - - - - 0x00847D 02:846D: 20 1B 84  JSR sub_0x00842B_000A_ASL_TAY
C - - - - - 0x008480 02:8470: B9 35 85  LDA tbl_8534 + $01,Y
C - - - - - 0x008483 02:8473: 9D A0 07  STA ram_07A0_unk,X
C - - - - - 0x008486 02:8476: B9 34 85  LDA tbl_8534,Y
C D 0 - - - 0x008489 02:8479: 9D 9C 06  STA ram_069C_obj,X
bra_847A:
                                        JMP loc_0x00848C



tbl_8534:
- - - - - - 0x008544 02:8534: 04        .byte $04, $D1   ; 00 
- - - - - - 0x008546 02:8536: 04        .byte $04, $91   ; 01 
- - - - - - 0x008548 02:8538: 04        .byte $04, $11   ; 02 
- D 0 - - - 0x00854A 02:853A: 00        .byte $00, $D1   ; 03 



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_017_0x00854C_05:
C - - J - - 0x00854C 02:853C: A4 0A     LDY ram_000A_t03
                                        JMP loc_0x00854E



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_017_0x008571_06:
C - - J - - 0x008571 02:8561: BD 78 07  LDA ram_0778_unk,X
C - - - - - 0x008574 02:8564: 30 11     BMI bra_8577
C - - - - - 0x008576 02:8566: 20 E9 95  LDA ram_06B2_obj,X
                                        EOR #$80
                                        STA ram_06B2_obj,X
C - - - - - 0x008579 02:8569: 20 1B 84  JSR sub_0x00842B_000A_ASL_TAY
C - - - - - 0x00857C 02:856C: B9 7A 85  LDA tbl_857A,Y
C - - - - - 0x00857F 02:856F: F0 06     BEQ bra_8577
C - - - - - 0x008581 02:8571: B9 7B 85  LDA tbl_857A + $01,Y
C - - - - - 0x008584 02:8574: 9D 9C 06  STA ram_069C_obj,X
bra_8577:
C - - - - - 0x008587 02:8577: 4C E2 83  DEC ram_069C_obj,X
                                        BEQ bra_83D6
                                        CLC
                                        RTS
bra_83D6:
                                        SEC
                                        RTS



tbl_857A:
- D 0 - - - 0x00858A 02:857A: 01        .byte $01, $01   ; 00 
- - - - - - 0x00858C 02:857C: 00        .byte $00, $00   ; 01 



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_017_0x00858E_07:
C - - J - - 0x00858E 02:857E: A5 0A     LDA ram_000A_t03
C - - - - - 0x008590 02:8580: 30 03     BMI bra_8585
C - - - - - 0x008592 02:8582: 4C 10 8C  JMP loc_0x008C20
bra_8585:
C - - - - - 0x008595 02:8585: BD C8 07  LDA ram_07C8_unk,X
C - - - - - 0x008598 02:8588: 9D 82 07  STA ram_0782_unk,X
C - - - - - 0x00859B 02:858B: A8        TAY
C - - - - - 0x00859C 02:858C: B9 C8 85  LDA tbl_85C8,Y
C - - - - - 0x00859F 02:858F: 85 0A     STA ram_000A_t03
                                        JMP loc_0x0085A1



tbl_85C8:
- - - - - - 0x0085D8 02:85C8: 00        .byte $00   ; 00 
- - - - - - 0x0085D9 02:85C9: 00        .byte $00   ; 01 
- D 0 - - - 0x0085DA 02:85CA: 00        .byte $00   ; 02 
- D 0 - - - 0x0085DB 02:85CB: 01        .byte $01   ; 03 
- - - - - - 0x0085DC 02:85CC: 00        .byte $00   ; 04 
- D 0 - - - 0x0085DD 02:85CD: 02        .byte $02   ; 05 
- D 0 - - - 0x0085DE 02:85CE: 03        .byte $03   ; 06 
- - - - - - 0x0085DF 02:85CF: 02        .byte $02   ; 07 



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_017_0x0085E0_08:
C - - J - - 0x0085E0 02:85D0: A5 0A     LDA ram_000A_t03
C - - - - - 0x0085E2 02:85D2: 85 3C     STA ram_003C_t01
C - - - - - 0x0085E4 02:85D4: BD 78 07  LDA ram_0778_unk,X
C - - - - - 0x0085E7 02:85D7: 30 5F     BMI bra_8638
C - - - - - 0x0085E9 02:85D9: A5 0A     LDA ram_000A_t03
C - - - - - 0x0085EB 02:85DB: C9 01     CMP #$01
C - - - - - 0x0085ED 02:85DD: D0 0A     BNE bra_85E9
C - - - - - 0x0085EF 02:85DF: A9 13     LDA #$13
C - - - - - 0x0085F1 02:85E1: 20 BB 90  JSR sub_0x0090CB
C - - - - - 0x0085F4 02:85E4: A9 06     LDA #$06
C - - - - - 0x0085F6 02:85E6: 9D B4 07  STA ram_07B4_unk,X
bra_85E9:
C - - - - - 0x0085F9 02:85E9: 20 1B 84  JSR sub_0x00842B_000A_ASL_TAY
C - - - - - 0x0085FC 02:85EC: 84 3A     STY ram_003A_t02
C - - - - - 0x0085FE 02:85EE: A9 40     LDA #$40
C - - - - - 0x008600 02:85F0: 9D 9C 06  STA ram_069C_obj,X
C - - - - - 0x008603 02:85F3: B9 9F 86  LDA tbl_869F,Y
C - - - - - 0x008606 02:85F6: 29 0F     AND #$0F
C - - - - - 0x008608 02:85F8: 85 0B     STA ram_000B_t07
C - - - - - 0x00860A 02:85FA: 20 7D 91  LDA ram_06B2_obj,X
                                        AND #$F0
C - - - - - 0x00860D 02:85FD: 05 0B     ORA ram_000B_t07
C - - - - - 0x00860F 02:85FF: 9D B2 06  STA ram_06B2_obj,X
C - - - - - 0x008612 02:8602: B9 9F 86  LDA tbl_869F,Y
C - - - - - 0x008615 02:8605: 10 07     BPL bra_860E
- - - - - - 0x008617 02:8607: 20 72 91  JSR sub_0x009182_06B2x_AND_0F
- - - - - - 0x00861A 02:860A: 09 C0     ORA #$C0
- - - - - - 0x00861C 02:860C: D0 22     BNE bra_8630    ; jmp
bra_860E:
; bzk optimize, useless STY
C - - - - - 0x00861E 02:860E: 84 0B     STY ram_000B_t17_useless
C - - - - - 0x008620 02:8610: B9 A0 86  LDA tbl_869F + $01,Y
C - - - - - 0x008623 02:8613: 6A        ROR
C - - - - - 0x008624 02:8614: 6A        ROR
C - - - - - 0x008625 02:8615: 29 30     AND #$30
C - - - - - 0x008627 02:8617: 85 0A     STA ram_000A_t06
C - - - - - 0x008629 02:8619: 20 B1 93  JSR sub_0x0093C1_06B2x_LSRx4_TAY
C - - - - - 0x00862C 02:861C: 38        SEC
C - - - - - 0x00862D 02:861D: E9 04     SBC #$04
C - - - - - 0x00862F 02:861F: C9 08     CMP #$08
C - - - - - 0x008631 02:8621: B0 07     BCS bra_862A
C - - - - - 0x008633 02:8623: A5 0A     LDA ram_000A_t06
C - - - - - 0x008635 02:8625: 20 07 95  EOR #$FF
                                        CLC
                                        ADC #$01
C - - - - - 0x008638 02:8628: 85 0A     STA ram_000A_t06
bra_862A:
C - - - - - 0x00863A 02:862A: BD B2 06  LDA ram_06B2_obj,X
C - - - - - 0x00863D 02:862D: 18        CLC
C - - - - - 0x00863E 02:862E: 65 0A     ADC ram_000A_t06
bra_8630:
C - - - - - 0x008640 02:8630: 9D B2 06  STA ram_06B2_obj,X
C - - - - - 0x008643 02:8633: A4 3A     LDY ram_003A_t02
C - - - - - 0x008645 02:8635: 4C 5E 86  JMP loc_865E
bra_8638:
C - - - - - 0x008648 02:8638: 20 1B 84  JSR sub_0x00842B_000A_ASL_TAY
C - - - - - 0x00864B 02:863B: A5 3C     LDA ram_003C_t01
C - - - - - 0x00864D 02:863D: C9 01     CMP #$01
C - - - - - 0x00864F 02:863F: D0 1D     BNE bra_865E
C - - - - - 0x008651 02:8641: BD B4 07  LDA ram_07B4_unk,X
C - - - - - 0x008654 02:8644: F0 18     BEQ bra_865E
C - - - - - 0x008656 02:8646: 20 F2 95  JSR sub_0x009602
C - - - - - 0x008659 02:8649: DE B4 07  DEC ram_07B4_unk,X
C - - - - - 0x00865C 02:864C: D0 10     BNE bra_865E
C - - - - - 0x00865E 02:864E: A9 03     LDA #$03
C - - - - - 0x008660 02:8650: 20 BB 90  JSR sub_0x0090CB
C - - - - - 0x008663 02:8653: B9 9F 86  LDA tbl_869F,Y
C - - - - - 0x008666 02:8656: 29 0F     AND #$0F
C - - - - - 0x008668 02:8658: 1D B2 06  ORA ram_06B2_obj,X
C - - - - - 0x00866B 02:865B: 9D B2 06  STA ram_06B2_obj,X
bra_865E:
loc_865E:
C D 0 - - - 0x00866E 02:865E: B9 A0 86  LDA tbl_869F + $01,Y
C - - - - - 0x008671 02:8661: 09 C0     ORA #$C0
C - - - - - 0x008673 02:8663: 85 0C     STA ram_000C_t02
; bzk optimize, useless LDA + STA
C - - - - - 0x008675 02:8665: A9 01     LDA #$01
C - - - - - 0x008677 02:8667: 85 0B     STA ram_000B_t18_useless
C - - - - - 0x008679 02:8669: 20 70 8A  JSR sub_0x008A80
C - - - - - 0x00867C 02:866C: BD 9C 06  LDA ram_069C_obj,X
C - - - - - 0x00867F 02:866F: 29 40     AND #$40
C - - - - - 0x008681 02:8671: D0 2A     BNE bra_869D
C - - - - - 0x008683 02:8673: A0 0E     LDY #$0E
C - - - - - 0x008685 02:8675: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x008688 02:8678: 29 08     AND #$08
C - - - - - 0x00868A 02:867A: D0 02     BNE bra_867E
C - - - - - 0x00868C 02:867C: A0 02     LDY #$02
bra_867E:
C - - - - - 0x00868E 02:867E: 98        TYA
C - - - - - 0x00868F 02:867F: 20 BB 90  JSR sub_0x0090CB
C - - - - - 0x008692 02:8682: A4 3C     LDY ram_003C_t01
C - - - - - 0x008694 02:8684: B9 A5 86  LDA tbl_86A5,Y
C - - - - - 0x008697 02:8687: F0 14     BEQ bra_869D
C - - - - - 0x008699 02:8689: A0 08     LDY #$08
C - - - - - 0x00869B 02:868B: BD 82 07  LDA ram_0782_unk,X
C - - - - - 0x00869E 02:868E: C9 12     CMP #$12
C - - - - - 0x0086A0 02:8690: D0 02     BNE bra_8694
C - - - - - 0x0086A2 02:8692: A0 18     LDY #$18
bra_8694:
C - - - - - 0x0086A4 02:8694: A9 00     LDA #$00
C - - - - - 0x0086A6 02:8696: 20 BC 8F  JSR sub_0x008FCC
C - - - - - 0x0086A9 02:8699: B0 02     BCS bra_869D
C - - - - - 0x0086AB 02:869B: 38        SEC
C - - - - - 0x0086AC 02:869C: 60        RTS
bra_869D:
C - - - - - 0x0086AD 02:869D: 18        CLC
C - - - - - 0x0086AE 02:869E: 60        RTS



tbl_869F:
;                                              +---------- 
;                                              |    +----- 
;                                              |    |
- D 0 - - - 0x0086AF 02:869F: 04        .byte $04, $33   ; 00 
- D 0 - - - 0x0086B1 02:86A1: 02        .byte $02, $89   ; 01 
- D 0 - - - 0x0086B3 02:86A3: 03        .byte $03, $09   ; 02 



tbl_86A5:
- D 0 - - - 0x0086B5 02:86A5: 00        .byte $00   ; 00 
- D 0 - - - 0x0086B6 02:86A6: 00        .byte $00   ; 01 
- D 0 - - - 0x0086B7 02:86A7: 01        .byte $01   ; 02 
- - - - - - 0x0086B8 02:86A8: 01        .byte $01   ; 03 
- - - - - - 0x0086B9 02:86A9: 01        .byte $01   ; 04 
- - - - - - 0x0086BA 02:86AA: 00        .byte $00   ; 05 



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_017_0x0086BB_09:
C - - J - - 0x0086BB 02:86AB: BD 78 07  LDA ram_0778_unk,X
C - - - - - 0x0086BE 02:86AE: 30 0F     BMI bra_86BF
C - - - - - 0x0086C0 02:86B0: 20 1B 84  JSR sub_0x00842B_000A_ASL_TAY
C - - - - - 0x0086C3 02:86B3: B9 DF 86  LDA tbl_86DF,Y
C - - - - - 0x0086C6 02:86B6: 9D 9C 06  STA ram_069C_obj,X
C - - - - - 0x0086C9 02:86B9: B9 E0 86  LDA tbl_86E0,Y
C - - - - - 0x0086CC 02:86BC: 9D B2 06  STA ram_06B2_obj,X
bra_86BF:
C - - - - - 0x0086CF 02:86BF: BD 9C 06  LDA ram_069C_obj,X
C - - - - - 0x0086D2 02:86C2: 29 03     AND #$03
C - - - - - 0x0086D4 02:86C4: D0 16     BNE bra_86DC
C - - - - - 0x0086D6 02:86C6: 20 72 91  JSR sub_0x009182_06B2x_AND_0F
C - - - - - 0x0086D9 02:86C9: 18        CLC
C - - - - - 0x0086DA 02:86CA: 69 01     ADC #$01
C - - - - - 0x0086DC 02:86CC: C9 09     CMP #$09
C - - - - - 0x0086DE 02:86CE: B0 02     BCS bra_86D2
C - - - - - 0x0086E0 02:86D0: A9 08     LDA #$08
bra_86D2:
C - - - - - 0x0086E2 02:86D2: 85 0A     STA ram_000A_t07
C - - - - - 0x0086E4 02:86D4: 20 7D 91  LDA ram_06B2_obj,X
                                        AND #$F0
C - - - - - 0x0086E7 02:86D7: 05 0A     ORA ram_000A_t07
C - - - - - 0x0086E9 02:86D9: 9D B2 06  STA ram_06B2_obj,X
bra_86DC:
C - - - - - 0x0086EC 02:86DC: 4C E2 83  DEC ram_069C_obj,X
                                        BEQ bra_83D8
                                        CLC
                                        RTS
bra_83D8:
                                        SEC
                                        RTS


; bzk optimize
tbl_86DF:
- D 0 - - - 0x0086EF 02:86DF: F3        .byte $F3   ; 
tbl_86E0:
- D 0 - - - 0x0086F0 02:86E0: 41        .byte $41   ; 



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_017_0x0086F1_0A:
C - - J - - 0x0086F1 02:86E1: 20 4C 9A  JSR sub_0x009A5C_clear_animation
C - - - - - 0x0086F4 02:86E4: A5 0A     LDA ram_000A_t03
C - - - - - 0x0086F6 02:86E6: 85 7B     STA ram_chr_bank + $04
C - - - - - 0x0086F8 02:86E8: 38        SEC
C - - - - - 0x0086F9 02:86E9: 60        RTS



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_017_0x0086FA_0B_play_music:
                                        JMP loc_0x0086FA_play_music




.out .sprintf("Free bytes in bank 22: 0x%04X [%d]", ($C000 - *), ($C000 - *))



