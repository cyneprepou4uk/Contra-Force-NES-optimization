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
.export ofs_017_0x008702_0C
.export ofs_017_0x008756_0D
.export ofs_017_0x0085A1_0E
.export ofs_017_0x0087CD_0F
.export ofs_017_0x00EEC9_10
.export ofs_017_0x008804_11
.export ofs_017_0x00881C_12



ofs_017_0x0082F5_00:
; unused?
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



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_017_0x008702_0C:
C - - J - - 0x008702 02:86F2: A5 0A     LDA ram_000A_t03
; * 04
C - - - - - 0x008704 02:86F4: 0A        ASL
C - - - - - 0x008705 02:86F5: 0A        ASL
C - - - - - 0x008706 02:86F6: A8        TAY
C - - - - - 0x008707 02:86F7: B9 0E 87  LDA tbl_870E,Y
C - - - - - 0x00870A 02:86FA: 85 0D     STA ram_000D_t01_data
C - - - - - 0x00870C 02:86FC: B9 0F 87  LDA tbl_870E + $01,Y
C - - - - - 0x00870F 02:86FF: 85 0E     STA ram_000D_t01_data + $01
C - - - - - 0x008711 02:8701: B9 10 87  LDA tbl_870E + $02,Y
C - - - - - 0x008714 02:8704: 85 0B     STA ram_000B_t01
C - - - - - 0x008716 02:8706: 8A        TXA
C - - - - - 0x008717 02:8707: A8        TAY
C - - - - - 0x008718 02:8708: A5 0B     LDA ram_000B_t01
C - - - - - 0x00871A 02:870A: 91 0D     STA (ram_000D_t01_data),Y
C - - - - - 0x00871C 02:870C: 38        SEC
C - - - - - 0x00871D 02:870D: 60        RTS



tbl_870E:
; 00 
- D 0 - - - 0x00871E 02:870E: 20 07     .word ram_0720_obj
- D 0 - - - 0x008720 02:8710: 06        .byte $06   ; 
- - - - - - 0x008721 02:8711: 00        .byte $00   ; placeholder
; 01 
- D 0 - - - 0x008722 02:8712: 20 07     .word ram_0720_obj
- D 0 - - - 0x008724 02:8714: 00        .byte $00   ; 
- - - - - - 0x008725 02:8715: 00        .byte $00   ; placeholder
; 02 
- D 0 - - - 0x008726 02:8716: 0A 07     .word ram_070A_obj
- D 0 - - - 0x008728 02:8718: 00        .byte $00   ; 
- - - - - - 0x008729 02:8719: 00        .byte $00   ; placeholder
; 03 
- D 0 - - - 0x00872A 02:871A: 1A 06     .word ram_obj_animation_lo
- D 0 - - - 0x00872C 02:871C: 00        .byte $00   ; 
- - - - - - 0x00872D 02:871D: 00        .byte $00   ; placeholder
; 04 
- - - - - - 0x00872E 02:871E: AA 07     .word ram_07AA_unk
- - - - - - 0x008730 02:8720: 01        .byte $01   ; 
- - - - - - 0x008731 02:8721: 00        .byte $00   ; placeholder
; 05 
- D 0 - - - 0x008732 02:8722: 00 06     .word ram_0600_obj
- D 0 - - - 0x008734 02:8724: 08        .byte $08   ; 
- - - - - - 0x008735 02:8725: 00        .byte $00   ; placeholder
; 06 
- D 0 - - - 0x008736 02:8726: 20 07     .word ram_0720_obj
- D 0 - - - 0x008738 02:8728: 1B        .byte $1B   ; 
- - - - - - 0x008739 02:8729: 00        .byte $00   ; placeholder
; 07 
- D 0 - - - 0x00873A 02:872A: AA 07     .word ram_07AA_unk
- D 0 - - - 0x00873C 02:872C: 00        .byte $00   ; 
- - - - - - 0x00873D 02:872D: 00        .byte $00   ; placeholder
; 08 
- D 0 - - - 0x00873E 02:872E: 20 07     .word ram_0720_obj
- D 0 - - - 0x008740 02:8730: 16        .byte $16   ; 
- - - - - - 0x008741 02:8731: 00        .byte $00   ; placeholder
; 09 
- D 0 - - - 0x008742 02:8732: 20 07     .word ram_0720_obj
- D 0 - - - 0x008744 02:8734: 06        .byte $06   ; 
- - - - - - 0x008745 02:8735: 00        .byte $00   ; placeholder
; 0A 
- D 0 - - - 0x008746 02:8736: 20 07     .word ram_0720_obj
- D 0 - - - 0x008748 02:8738: 03        .byte $03   ; 
- - - - - - 0x008749 02:8739: 00        .byte $00   ; placeholder
; 0B 
- D 0 - - - 0x00874A 02:873A: 20 07     .word ram_0720_obj
- D 0 - - - 0x00874C 02:873C: 07        .byte $07   ; 
- - - - - - 0x00874D 02:873D: 00        .byte $00   ; placeholder
; 0C 
- D 0 - - - 0x00874E 02:873E: 20 07     .word ram_0720_obj
- D 0 - - - 0x008750 02:8740: 08        .byte $08   ; 
- - - - - - 0x008751 02:8741: 00        .byte $00   ; placeholder
; 0D 
- D 0 - - - 0x008752 02:8742: AA 07     .word ram_07AA_unk
- D 0 - - - 0x008754 02:8744: 0C        .byte $0C   ; 
- - - - - - 0x008755 02:8745: 00        .byte $00   ; placeholder



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_017_0x008756_0D:
C - - J - - 0x008756 02:8746: BD 78 07  LDA ram_0778_unk,X
C - - - - - 0x008759 02:8749: 30 0D     BMI bra_8758
C - - - - - 0x00875B 02:874B: A5 0A     LDA ram_000A_t03
C - - - - - 0x00875D 02:874D: 9D A0 07  STA ram_07A0_unk,X
; bzk optimize, useless LDA + STA
C - - - - - 0x008760 02:8750: A5 0B     LDA ram_000B_t04    ; also ram_000B_t13
C - - - - - 0x008762 02:8752: 85 06     STA ram_0006_t18_useless
; bzk optimize, useless LDA + STA
C - - - - - 0x008764 02:8754: A5 0C     LDA ram_000C_t01_distance
C - - - - - 0x008766 02:8756: 85 07     STA ram_0007_t12_useless
bra_8758:
C - - - - - 0x008768 02:8758: 20 62 87  JSR sub_8762
C - - - - - 0x00876B 02:875B: B0 03     BCS bra_8760
C - - - - - 0x00876D 02:875D: DE 78 07  DEC ram_0778_unk,X
bra_8760:
C - - - - - 0x008770 02:8760: 38        SEC
C - - - - - 0x008771 02:8761: 60        RTS



sub_8762:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x008772 02:8762: BD A0 07  LDA ram_07A0_unk,X
; * 04
C - - - - - 0x008775 02:8765: 0A        ASL
C - - - - - 0x008776 02:8766: 0A        ASL
C - - - - - 0x008777 02:8767: A8        TAY
C - - - - - 0x008778 02:8768: B9 AE 87  LDA tbl_87AD + $01,Y
C - - - - - 0x00877B 02:876B: 84 0C     STY ram_000C_t03
C - - - - - 0x00877D 02:876D: F0 03     BEQ bra_8772
C - - - - - 0x00877F 02:876F: 20 10 8E  JSR sub_0x008E20
bra_8772:
C - - - - - 0x008782 02:8772: 20 BA 93  JSR sub_0x0093CA
C - - - - - 0x008785 02:8775: B0 2C     BCC bra_8777
C - - - - - 0x0087B3 02:87A3: 18        CLC
C - - - - - 0x0087B4 02:87A4: 60        RTS
bra_8777:
C - - - - - 0x008787 02:8777: A4 0C     LDY ram_000C_t03
C - - - - - 0x008789 02:8779: B9 AF 87  LDA tbl_87AD + $02,Y
C - - - - - 0x00878C 02:877C: 85 06     STA ram_0006_t05_ppu_addr_lo
C - - - - - 0x00878E 02:877E: B9 B0 87  LDA tbl_87AD + $03,Y
C - - - - - 0x008791 02:8781: 85 07     STA ram_0007_t01_ppu_addr_hi
C - - - - - 0x008793 02:8783: B9 AD 87  LDA tbl_87AD,Y
C - - - - - 0x008796 02:8786: 0A        ASL
C - - - - - 0x008797 02:8787: A8        TAY
C - - - - - 0x008798 02:8788: B9 A5 87  LDA tbl_87A5,Y
C - - - - - 0x00879B 02:878B: 85 02     STA ram_0002_t02_ppu_data
C - - - - - 0x00879D 02:878D: B9 A6 87  LDA tbl_87A5 + $01,Y
C - - - - - 0x0087A0 02:8790: 85 03     STA ram_0002_t02_ppu_data + $01
                                        JMP loc_0x0087A2



tbl_87AD:
; bzk optimize, same 2nd, 3rd and 4th bytes,
; while the 1st byte is the same as index
; 00 
- D 0 - - - 0x0087BD 02:87AD: 00        .byte $00   ; index
- D 0 - - - 0x0087BE 02:87AE: 01        .byte $01   ; 
- D 0 - - - 0x0087BF 02:87AF: 9C 22     .word $229C ; ppu address
; 01 
- D 0 - - - 0x0087C1 02:87B1: 01        .byte $01   ; index
- D 0 - - - 0x0087C2 02:87B2: 01        .byte $01   ; 
- D 0 - - - 0x0087C3 02:87B3: 9C 22     .word $229C ; ppu address
; 02 
- D 0 - - - 0x0087C5 02:87B5: 02        .byte $02   ; index
- D 0 - - - 0x0087C6 02:87B6: 01        .byte $01   ; 
- D 0 - - - 0x0087C7 02:87B7: 9C 22     .word $229C ; ppu address
; 03 
- D 0 - - - 0x0087C9 02:87B9: 03        .byte $03   ; index
- D 0 - - - 0x0087CA 02:87BA: 01        .byte $01   ; 
- D 0 - - - 0x0087CB 02:87BB: 9C 22     .word $229C ; ppu address



tbl_87A5:
- D 0 - - - 0x0087B5 02:87A5: C8 AA     .word _off025_AAC8_00
- D 0 - - - 0x0087B7 02:87A7: DA AA     .word _off025_AADA_01
- D 0 - - - 0x0087B9 02:87A9: EC AA     .word _off025_AAEC_02
- D 0 - - - 0x0087BB 02:87AB: FE AA     .word _off025_AAFE_03



_off025_AAC8_00:
- D 1 - I - 0x016AD8 05:AAC8: 04        .byte $04   ; size X
- D 1 - I - 0x016AD9 05:AAC9: 04        .byte $04   ; size Y
- D 1 - I - 0x016ADA 05:AACA: C9        .byte $C9, $C9, $C9, $C9   ; 01 
- D 1 - I - 0x016ADE 05:AACE: CA        .byte $CA, $CA, $CA, $CA   ; 02 
- D 1 - I - 0x016AE2 05:AAD2: CB        .byte $CB, $CB, $CB, $CB   ; 03 
- D 1 - I - 0x016AE6 05:AAD6: CC        .byte $CC, $CC, $CC, $CC   ; 04 



_off025_AADA_01:
- D 1 - I - 0x016AEA 05:AADA: 04        .byte $04   ; size X
- D 1 - I - 0x016AEB 05:AADB: 04        .byte $04   ; size Y
- D 1 - I - 0x016AEC 05:AADC: C9        .byte $C9, $CD, $D1, $C9   ; 01 
- D 1 - I - 0x016AF0 05:AAE0: CA        .byte $CA, $CE, $D2, $CA   ; 02 
- D 1 - I - 0x016AF4 05:AAE4: CB        .byte $CB, $CF, $D3, $CB   ; 03 
- D 1 - I - 0x016AF8 05:AAE8: CC        .byte $CC, $D0, $D4, $CC   ; 04 



_off025_AAEC_02:
- D 1 - I - 0x016AFC 05:AAEC: 04        .byte $04   ; size X
- D 1 - I - 0x016AFD 05:AAED: 04        .byte $04   ; size Y
- D 1 - I - 0x016AFE 05:AAEE: C9        .byte $C9, $00, $00, $C9   ; 01 
- D 1 - I - 0x016B02 05:AAF2: CA        .byte $CA, $00, $00, $CA   ; 02 
- D 1 - I - 0x016B06 05:AAF6: CB        .byte $CB, $00, $00, $CB   ; 03 
- D 1 - I - 0x016B0A 05:AAFA: CC        .byte $CC, $00, $00, $CC   ; 04 



_off025_AAFE_03:
- D 1 - I - 0x016B0E 05:AAFE: 04        .byte $04   ; size X
- D 1 - I - 0x016B0F 05:AAFF: 04        .byte $04   ; size Y
- D 1 - I - 0x016B10 05:AB00: CD        .byte $CD, $00, $00, $D1   ; 01 
- D 1 - I - 0x016B14 05:AB04: CE        .byte $CE, $00, $00, $D2   ; 02 
- D 1 - I - 0x016B18 05:AB08: CF        .byte $CF, $00, $00, $D3   ; 03 
- D 1 - I - 0x016B1C 05:AB0C: D0        .byte $D0, $00, $00, $D4   ; 04 



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_017_0x0085A1_0E:
                                        JMP loc_0x0085A1



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_017_0x0087CD_0F:
C - - J - - 0x0087CD 02:87BD: 20 2E 94  JSR sub_0x00943E
C - - - - - 0x0087D0 02:87C0: 9D B4 07  STA ram_07B4_unk,X
C - - - - - 0x0087D3 02:87C3: A5 0A     LDA ram_000A_t03
C - - - - - 0x0087D5 02:87C5: 29 0F     AND #$0F
C - - - - - 0x0087D7 02:87C7: 0A        ASL
C - - - - - 0x0087D8 02:87C8: A8        TAY
C - - - - - 0x0087D9 02:87C9: 84 0C     STY ram_000C_t04
C - - - - - 0x0087DB 02:87CB: B9 F0 87  LDA tbl_87F0,Y
C - - - - - 0x0087DE 02:87CE: 48        PHA
C - - - - - 0x0087DF 02:87CF: B9 F1 87  LDA tbl_87F0 + $01,Y
C - - - - - 0x0087E2 02:87D2: A8        TAY
C - - - - - 0x0087E3 02:87D3: 68        PLA
C - - - - - 0x0087E4 02:87D4: 20 0D 95  JSR sub_0x00951D
C - - - - - 0x0087E7 02:87D7: B0 15     BCS bra_87EE
C - - - - - 0x0087E9 02:87D9: A5 29     LDA ram_random
C - - - - - 0x0087EB 02:87DB: A4 0C     LDY ram_000C_t04
C - - - - - 0x0087ED 02:87DD: C9 80     CMP #$80
C - - - - - 0x0087EF 02:87DF: B0 0D     BCS bra_87EE
- - - - - - 0x0087F1 02:87E1: A5 0A     LDA ram_000A_t03
; / 10
- - - - - - 0x0087F3 02:87E3: 4A        LSR
- - - - - - 0x0087F4 02:87E4: 4A        LSR
- - - - - - 0x0087F5 02:87E5: 4A        LSR
- - - - - - 0x0087F6 02:87E6: 4A        LSR
- - - - - - 0x0087F7 02:87E7: 18        CLC
- - - - - - 0x0087F8 02:87E8: 7D 78 07  ADC ram_0778_unk,X
- - - - - - 0x0087FB 02:87EB: 9D 78 07  STA ram_0778_unk,X
bra_87EE:
C - - - - - 0x0087FE 02:87EE: 38        SEC
C - - - - - 0x0087FF 02:87EF: 60        RTS



tbl_87F0:
- - - - - - 0x008800 02:87F0: 58        .byte $58, $20   ; 00 
- D 0 - - - 0x008802 02:87F2: 50        .byte $50, $10   ; 01 



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_017_0x00EEC9_10:
C - - J - - 0x00EEC9 03:AEB9: A5 0A     LDA ram_000A_t03
C - - - - - 0x00EECB 03:AEBB: 0A        ASL
C - - - - - 0x00EECC 03:AEBC: A8        TAY
C - - - - - 0x00EECD 03:AEBD: B9 CC AE  LDA tbl_AECB + $01,Y
C - - - - - 0x00EED0 03:AEC0: 48        PHA
C - - - - - 0x00EED1 03:AEC1: B9 CB AE  LDA tbl_AECB,Y
C - - - - - 0x00EED4 03:AEC4: 20 E6 86  STA ram_chr_bank + $04
                                        SEC
C - - - - - 0x00EED7 03:AEC7: 68        PLA
C - - - - - 0x00EED8 03:AEC8: 4C E9 88  JMP loc_0x0088F9



tbl_AECB:
; 00 
- D 1 - - - 0x00EEDB 03:AECB: 2E        .byte con_chr_bank + $2E   ; 
- D 1 - - - 0x00EEDC 03:AECC: 00        .byte $00   ; 
; 01 
- D 1 - - - 0x00EEDD 03:AECD: 6C        .byte con_chr_bank + $6C   ; 
- D 1 - - - 0x00EEDE 03:AECE: 06        .byte $06   ; 
; 02 
- D 1 - - - 0x00EEDF 03:AECF: 2F        .byte con_chr_bank + $2F   ; 
- D 1 - - - 0x00EEE0 03:AED0: 08        .byte $08   ; 
; 03 
- D 1 - - - 0x00EEE1 03:AED1: 6C        .byte con_chr_bank + $6C   ; 
- D 1 - - - 0x00EEE2 03:AED2: 02        .byte $02   ; 
; 04 
- D 1 - - - 0x00EEE3 03:AED3: 2F        .byte con_chr_bank + $2F   ; 
- D 1 - - - 0x00EEE4 03:AED4: 01        .byte $01   ; 
; 05 
- - - - - - 0x00EEE5 03:AED5: 2F        .byte con_chr_bank + $2F   ; 
- - - - - - 0x00EEE6 03:AED6: 05        .byte $05   ; 
; 06 
- D 1 - - - 0x00EEE7 03:AED7: 29        .byte con_chr_bank + $29   ; 
- D 1 - - - 0x00EEE8 03:AED8: 14        .byte $14   ; 
; 07 
- D 1 - - - 0x00EEE9 03:AED9: 2C        .byte con_chr_bank + $2C   ; 
- D 1 - - - 0x00EEEA 03:AEDA: 15        .byte $15   ; 
; 08 
- D 1 - - - 0x00EEEB 03:AEDB: 2B        .byte con_chr_bank + $2B   ; 
- D 1 - - - 0x00EEEC 03:AEDC: 1A        .byte $1A   ; 
; 09 
- D 1 - - - 0x00EEED 03:AEDD: 2A        .byte con_chr_bank + $2A   ; 
- D 1 - - - 0x00EEEE 03:AEDE: 18        .byte $18   ; 
; 0A 
- D 1 - - - 0x00EEEF 03:AEDF: 2C        .byte con_chr_bank + $2C   ; 
- D 1 - - - 0x00EEF0 03:AEE0: 1B        .byte $1B   ; 



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_017_0x008804_11:
C - - J - - 0x008804 02:87F4: A9 00     LDA #$00
C - - - - - 0x008806 02:87F6: 85 6D     STA ram_006D
C - - - - - 0x008808 02:87F8: 20 2E 94  JSR sub_0x00943E
C - - - - - 0x00880B 02:87FB: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x00880E 02:87FE: D9 4E 06  CMP ram_obj_pos_X,Y
C - - - - - 0x008811 02:8801: 90 04     BCC bra_8807
C - - - - - 0x008813 02:8803: A9 80     LDA #$80
C - - - - - 0x008815 02:8805: 85 6D     STA ram_006D
bra_8807:
C - - - - - 0x008817 02:8807: 20 01 92  JSR sub_0x009211
C - - - - - 0x00881A 02:880A: 38        SEC
C - - - - - 0x00881B 02:880B: 60        RTS



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_017_0x00881C_12:
C - - J - - 0x00881C 02:880C: 20 E8 91  JSR sub_0x0091F8
C - - - - - 0x00881F 02:880F: 38        SEC
C - - - - - 0x008820 02:8810: 60        RTS



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;




.out .sprintf("Free bytes in bank 22: 0x%04X [%d]", ($C000 - *), ($C000 - *))



