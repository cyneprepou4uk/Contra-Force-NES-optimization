.segment "BANK_22"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $A000  ; for listing file
; 0x044010-0x04800F



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
.export ofs_017_0x008821_13
.export ofs_017_0x00886B_14
.export ofs_017_0x00887D_15
.export ofs_017_0x00E2FB_16
.export ofs_017_0x00E33D_17
.export ofs_017_0x00E36F_18
.export ofs_017_0x00E405_19
.export ofs_017_0x00E447_1A
.export ofs_017_0x00E46A_1B
.export ofs_017_0x00E486_1C
.export ofs_017_0x008456_1D
.export ofs_017_0x00E49B_1E
.export ofs_017_0x00E4B1_1F
.export ofs_017_0x0089AA_20
.export ofs_017_0x00E4D2_21
.export ofs_017_0x0089AF_22
.export ofs_017_0x00E4E7_23
.export ofs_017_0x00E508_24
.export ofs_017_0x00E565_25
.export ofs_017_0x00E585_26
.export ofs_017_0x00E59C_27
.export ofs_017_0x00E5C5_28
.export ofs_017_0x00E5F1_29
.export ofs_017_0x0088BC_2A
.export ofs_017_0x0088F7_2B
.export ofs_017_0x008967_2C
.export ofs_017_0x00E618_2D
.export ofs_017_0x00E632_2E
.export ofs_017_0x00E670_2F
.export ofs_017_0x008C12_30
.export ofs_017_0x008C35_31
.export ofs_017_0x008C77_32
.export ofs_017_0x008D05_33
.export ofs_017_0x00E696_34
.export ofs_017_0x00E6B6_35
.export ofs_017_0x00E6FA_36
.export ofs_017_0x00E70C_37
.export ofs_017_0x00E71C_38
.export ofs_017_0x00E731_39
.export ofs_017_0x00E73E_3A
.export ofs_017_0x00E748_3B
.export ofs_017_0x00E755_3C
.export ofs_017_0x00E755_3D
.export ofs_017_0x00E2F1_3E
.export ofs_017_0x009E65_3F
.export ofs_017_0x00E7DA_40
.export ofs_017_0x008D26_41
.export ofs_017_0x008A59_42
.export ofs_017_0x00E805_43
.export ofs_017_0x00E81C_44
.export ofs_017_0x00E82B_45
.export ofs_017_0x00E839_46
.export ofs_017_0x00E85F_47
.export ofs_017_0x00E8EA_48
.export ofs_017_0x00E996_49
.export ofs_017_0x00EB0B_4A
.export ofs_017_0x00EB19_4B
.export ofs_017_0x00EAC9_4C
.export ofs_017_0x00EB41_4D
.export ofs_017_0x00EB60_4E
.export ofs_017_0x0089AA_4F
.export ofs_017_0x00EB66_50
.export ofs_017_0x00ED33_51
.export ofs_017_0x00ED33_52
.export ofs_017_0x00EBBE_53
.export ofs_017_0x00ED01_54
.export ofs_017_0x00ED33_55
.export ofs_017_0x00EEB0_56
.export ofs_017_0x008FF3_57
.export ofs_017_0x00EE3D_58
.export ofs_017_0x00EDC9_59
.export ofs_017_0x00EDD7_5A
.export ofs_017_0x008D30_5B
.export ofs_017_0x00EDE5_5C
.export ofs_017_0x00EE15_5D
.export ofs_017_0x00EE49_5E
.export ofs_017_0x00E923_5F
.export ofs_017_0x00EE77_60
.export ofs_017_0x00E54C_61
.export ofs_017_0x00EE82_62



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
;                                              +---------- 
;                                              |    +----- 
;                                              |    |
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
;                                              +---------- 
;                                              |    +----- 
;                                              |    |
- D 0 - - - 0x00858A 02:857A: 01        .byte $01, $01   ; 00 
- - - - - - 0x00858C 02:857C: 00        .byte $00, $00   ; 01 



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_017_0x00858E_07:
C - - J - - 0x00858E 02:857E: A5 0A     LDA ram_000A_t03
C - - - - - 0x008590 02:8580: 30 03     BMI bra_8585
C - - - - - 0x008592 02:8582: 4C 10 8C  SEC
                                        SBC #$01
                                        STA ram_0778_unk,X
                                        SEC
                                        RTS
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
; bzk optimize, 3 таблицы
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
- D 0 - - - 0x0087B5 02:87A5: C8 AA     .word _off025_0x016AD8_00
- D 0 - - - 0x0087B7 02:87A7: DA AA     .word _off025_0x016AEA_01
- D 0 - - - 0x0087B9 02:87A9: EC AA     .word _off025_0x016AFC_02
- D 0 - - - 0x0087BB 02:87AB: FE AA     .word _off025_0x016B0E_03



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
;                                              +---------- 
;                                              |    +----- 
;                                              |    |
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



ofs_017_0x008821_13:
C - - J - - 0x008821 02:8811: BD B2 06  LDA ram_06B2_obj,X
C - - - - - 0x008824 02:8814: 29 40     AND #$40
C - - - - - 0x008826 02:8816: D0 28     BNE bra_8840
C - - - - - 0x008828 02:8818: 20 2E 94  JSR sub_0x00943E
C - - - - - 0x00882B 02:881B: BD B2 06  LDA ram_06B2_obj,X
C - - - - - 0x00882E 02:881E: 29 80     AND #$80
C - - - - - 0x008830 02:8820: D0 15     BNE bra_8837
C - - - - - 0x008832 02:8822: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x008835 02:8825: D9 68 06  CMP ram_obj_pos_Y,Y
C - - - - - 0x008838 02:8828: 90 09     BCC bra_8833
bra_882A:
C - - - - - 0x00883A 02:882A: A9 C0     LDA #$C0
bra_882C:
C - - - - - 0x00883C 02:882C: 18        CLC
C - - - - - 0x00883D 02:882D: 7D B2 06  ADC ram_06B2_obj,X
C - - - - - 0x008840 02:8830: 4C F0 8C  STA ram_06B2_obj,X
                                        SEC
                                        RTS
bra_8833:
C - - - - - 0x008843 02:8833: A9 40     LDA #$40
C - - - - - 0x008845 02:8835: D0 F5     BNE bra_882C    ; jmp
bra_8837:
C - - - - - 0x008847 02:8837: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x00884A 02:883A: D9 68 06  CMP ram_obj_pos_Y,Y
C - - - - - 0x00884D 02:883D: 4C 4E 88  JMP loc_884E
bra_8840:
C - - - - - 0x008850 02:8840: 20 2E 94  JSR sub_0x00943E
C - - - - - 0x008853 02:8843: BD B2 06  LDA ram_06B2_obj,X
C - - - - - 0x008856 02:8846: 30 0A     BMI bra_8852
C - - - - - 0x008858 02:8848: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x00885B 02:884B: D9 4E 06  CMP ram_obj_pos_X,Y
loc_884E:
C D 0 - - - 0x00885E 02:884E: B0 E3     BCS bra_8833
C - - - - - 0x008860 02:8850: 90 D8     BCC bra_882A    ; jmp
bra_8852:
C - - - - - 0x008862 02:8852: B9 4E 06  LDA ram_obj_pos_X,Y
C - - - - - 0x008865 02:8855: DD 4E 06  CMP ram_obj_pos_X,X
C - - - - - 0x008868 02:8858: 4C 4E 88  JMP loc_884E



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_017_0x00886B_14:
C - - J - - 0x00886B 02:885B: A9 05     LDA #$05
C - - - - - 0x00886D 02:885D: 20 BB 90  JSR sub_0x0090CB
C - - - - - 0x008870 02:8860: A5 0A     LDA ram_000A_t03
                                        JMP loc_0x008872



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_017_0x00887D_15:
C - - J - - 0x00887D 02:886D: A9 00     LDA #$00
C - - - - - 0x00887F 02:886F: 9D 20 07  STA ram_0720_obj,X
C - - - - - 0x008882 02:8872: A9 0F     LDA #$0F
C - - - - - 0x008884 02:8874: 20 BB 90  JSR sub_0x0090CB
C - - - - - 0x008887 02:8877: 20 99 94  JSR sub_0x0094A9
C - - - - - 0x00888A 02:887A: 90 2E     BCC bra_88AA
C - - - - - 0x00888C 02:887C: B9 82 06  LDA ram_0682_obj,Y
C - - - - - 0x00888F 02:887F: 29 0F     AND #$0F
C - - - - - 0x008891 02:8881: C9 0D     CMP #$0D
C - - - - - 0x008893 02:8883: F0 25     BEQ bra_88AA
C - - - - - 0x008895 02:8885: B9 B2 06  LDA ram_06B2_obj,Y
C - - - - - 0x008898 02:8888: 85 0A     STA ram_000A_t08
C - - - - - 0x00889A 02:888A: 20 78 91  JSR sub_0x009188_stage_AND_01
C - - - - - 0x00889D 02:888D: D0 06     BNE bra_8895_upper_view
; if side view
C - - - - - 0x00889F 02:888F: A5 0A     LDA ram_000A_t08
C - - - - - 0x0088A1 02:8891: 29 80     AND #$80
C - - - - - 0x0088A3 02:8893: 85 0A     STA ram_000A_t08
bra_8895_upper_view:
C - - - - - 0x0088A5 02:8895: A5 0A     LDA ram_000A_t08
C - - - - - 0x0088A7 02:8897: 29 F0     AND #$F0
C - - - - - 0x0088A9 02:8899: 9D B2 06  STA ram_06B2_obj,X
C - - - - - 0x0088AC 02:889C: A0 00     LDY #$00
C - - - - - 0x0088AE 02:889E: BD 4C 07  LDA ram_074C_obj,X
C - - - - - 0x0088B1 02:88A1: 29 3C     AND #$3C
C - - - - - 0x0088B3 02:88A3: D0 01     BNE bra_88A6
C - - - - - 0x0088B5 02:88A5: C8        INY ; 01
bra_88A6:
C - - - - - 0x0088B6 02:88A6: 98        TYA
C - - - - - 0x0088B7 02:88A7: 9D B4 07  STA ram_07B4_unk,X
bra_88AA:
C - - - - - 0x0088BA 02:88AA: 38        SEC
C - - - - - 0x0088BB 02:88AB: 60        RTS



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_017_0x00E2FB_16:
C - - J - - 0x00E2FB 03:A2EB: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x00E2FE 03:A2EE: C9 50     CMP #$50
C - - - - - 0x00E300 03:A2F0: 90 38     BCC bra_A32A
; 50+
C - - - - - 0x00E302 03:A2F2: A9 00     LDA #$00
C - - - - - 0x00E304 03:A2F4: 9D AA 07  STA ram_07AA_unk,X
C - - - - - 0x00E307 03:A2F7: A8        TAY ; 01
C - - - - - 0x00E308 03:A2F8: 20 12 A3  JSR sub_A312
C - - - - - 0x00E30B 03:A2FB: B0 05     BCS bra_A302
C - - - - - 0x00E30D 03:A2FD: A9 01     LDA #$01
C - - - - - 0x00E30F 03:A2FF: 9D AA 07  STA ram_07AA_unk,X
bra_A302:
C - - - - - 0x00E312 03:A302: C8        INY ; 01
C - - - - - 0x00E313 03:A303: 20 12 A3  JSR sub_A312
C - - - - - 0x00E316 03:A306: B0 08     BCS bra_A310
- - - - - - 0x00E318 03:A308: BD AA 07  LDA ram_07AA_unk,X
- - - - - - 0x00E31B 03:A30B: 09 02     ORA #$02
- - - - - - 0x00E31D 03:A30D: 9D AA 07  STA ram_07AA_unk,X
bra_A310:
C - - - - - 0x00E320 03:A310: 38        SEC
C - - - - - 0x00E321 03:A311: 60        RTS
bra_A32A:
C - - - - - 0x00E33A 03:A32A: 4C 5F A3  LDA ram_000A_t03
                                        JMP loc_0x00E371



sub_A312:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x00E322 03:A312: B9 82 07  LDA ram_0782_unk,Y
C - - - - - 0x00E325 03:A315: F0 F9     BEQ bra_A327
C - - - - - 0x00E327 03:A317: 20 FE 94  JSR sub_0x00950E
C - - - - - 0x00E32A 03:A31A: C9 18     CMP #$18
C - - - - - 0x00E32C 03:A31C: B0 0B     BCS bra_A329_RTS
C - - - - - 0x00E32E 03:A31E: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x00E331 03:A321: D9 4E 06  CMP ram_obj_pos_X,Y
C D 1 - - - 0x00E334 03:A324: 6A        ROR
C - - - - - 0x00E335 03:A325: 5D B2 06  EOR ram_06B2_obj,X
C - - - - - 0x00E338 03:A328: 2A        ROL
bra_A329_RTS:
C - - - - - 0x00E339 03:A329: 60        RTS
bra_A327:
                                        SEC
                                        RTS



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_017_0x00E33D_17:
C - - J - - 0x00E33D 03:A32D: A0 00     LDY #$00
C - - - - - 0x00E33F 03:A32F: 20 4A A3  JSR sub_A34A
C - - - - - 0x00E342 03:A332: B0 08     BCS bra_A33C
C - - - - - 0x00E344 03:A334: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x00E347 03:A337: 09 04     ORA #$04
C - - - - - 0x00E349 03:A339: 9D AA 07  STA ram_07AA_unk,X
bra_A33C:
C - - - - - 0x00E34C 03:A33C: C8        INY ; 01
C - - - - - 0x00E34D 03:A33D: 20 4A A3  JSR sub_A34A
C - - - - - 0x00E350 03:A340: B0 CE     BCS bra_A348
- - - - - - 0x00E352 03:A342: BD AA 07  LDA ram_07AA_unk,X
- - - - - - 0x00E355 03:A345: 09 08     ORA #$08
- - - - - - 0x00E357 03:A347: 4C 0D A3  STA ram_07AA_unk,X
bra_A348:
; bzk optimize, C = 1
                                        SEC
                                        RTS



sub_A34A:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x00E35A 03:A34A: B9 82 07  LDA ram_0782_unk,Y
C - - - - - 0x00E35D 03:A34D: F0 C1     BEQ bra_A35B
C - - - - - 0x00E35F 03:A34F: 20 FE 94  JSR sub_0x00950E
C - - - - - 0x00E362 03:A352: C9 18     CMP #$18
C - - - - - 0x00E364 03:A354: B0 D3     BCS bra_A35A_RTS
C - - - - - 0x00E366 03:A356: B9 4E 06  LDA ram_obj_pos_X,Y
C - - - - - 0x00E369 03:A359: DD 4E 06  CMP ram_obj_pos_X,X
C - - - - - 0x00E36C 03:A35C: 4C 24 A3  ROR
                                        EOR ram_06B2_obj,X
                                        ROL
bra_A35A_RTS:
                                        RTS
bra_A35B:
                                        SEC
                                        RTS



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_017_0x00E36F_18:
C D 1 J - - 0x00E36F 03:A35F: A5 0A     LDA ram_000A_t03
                                        JMP loc_0x00E371



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_017_0x00E405_19:
C - - J - - 0x00E405 03:A3F5: A5 42     LDA ram_btn_hold_1
C - - - - - 0x00E407 03:A3F7: 05 43     ORA ram_btn_hold_1 + $01
C - - - - - 0x00E409 03:A3F9: 29 04     AND #con_btn_Down
C - - - - - 0x00E40B 03:A3FB: D0 15     BNE bra_A412
C - - - - - 0x00E40D 03:A3FD: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x00E410 03:A400: 29 0F     AND #$0F
C - - - - - 0x00E412 03:A402: A8        TAY
C - - - - - 0x00E413 03:A403: B9 27 A4  LDA tbl_A427,Y
C - - - - - 0x00E416 03:A406: 9D AA 07  STA ram_07AA_unk,X
; bzk optimize, since this table is not used anywhere else,
; you can LDA proper bytes directly without ADC
C - - - - - 0x00E419 03:A409: B9 17 A4  LDA tbl_A417,Y
C - - - - - 0x00E41C 03:A40C: 18        CLC
C - - - - - 0x00E41D 03:A40D: 69 3F     ADC #$3F
; con_A36F_3F
; con_A36F_40
; con_A36F_41
; con_A36F_42
C - - - - - 0x00E41F 03:A40F: 4C 61 A3  JMP loc_0x00E371
bra_A412:
C - - - - - 0x00E422 03:A412: A9 3C     LDA #con_A36F_3C
C - - - - - 0x00E424 03:A414: 4C 61 A3  JMP loc_0x00E371



tbl_A417:
- D 1 - - - 0x00E427 03:A417: 03        .byte $03   ; 00 con_A36F_42
- D 1 - - - 0x00E428 03:A418: 01        .byte $01   ; 01 con_A36F_40
- - - - - - 0x00E429 03:A419: 01        .byte $01   ; 02 con_A36F_40
- - - - - - 0x00E42A 03:A41A: 01        .byte $01   ; 03 con_A36F_40
- D 1 - - - 0x00E42B 03:A41B: 00        .byte $00   ; 04 con_A36F_3F
- - - - - - 0x00E42C 03:A41C: 03        .byte $03   ; 05 con_A36F_42
- - - - - - 0x00E42D 03:A41D: 02        .byte $02   ; 06 con_A36F_41
- - - - - - 0x00E42E 03:A41E: 03        .byte $03   ; 07 con_A36F_42
- - - - - - 0x00E42F 03:A41F: 00        .byte $00   ; 08 con_A36F_3F
- - - - - - 0x00E430 03:A420: 02        .byte $02   ; 09 con_A36F_41
- - - - - - 0x00E431 03:A421: 03        .byte $03   ; 0A con_A36F_42
- - - - - - 0x00E432 03:A422: 03        .byte $03   ; 0B con_A36F_42
- - - - - - 0x00E433 03:A423: 02        .byte $02   ; 0C con_A36F_41
- - - - - - 0x00E434 03:A424: 03        .byte $03   ; 0D con_A36F_42
- - - - - - 0x00E435 03:A425: 03        .byte $03   ; 0E con_A36F_42
- - - - - - 0x00E436 03:A426: 03        .byte $03   ; 0F con_A36F_42



tbl_A427:
- D 1 - - - 0x00E437 03:A427: 00        .byte $00   ; 00 
- D 1 - - - 0x00E438 03:A428: 00        .byte $00   ; 01 
- - - - - - 0x00E439 03:A429: 01        .byte $01   ; 02 
- - - - - - 0x00E43A 03:A42A: 00        .byte $00   ; 03 
- D 1 - - - 0x00E43B 03:A42B: 00        .byte $00   ; 04 
- - - - - - 0x00E43C 03:A42C: 00        .byte $00   ; 05 
- - - - - - 0x00E43D 03:A42D: 00        .byte $00   ; 06 
- - - - - - 0x00E43E 03:A42E: 00        .byte $00   ; 07 
- - - - - - 0x00E43F 03:A42F: 01        .byte $01   ; 08 
- - - - - - 0x00E440 03:A430: 00        .byte $00   ; 09 
- - - - - - 0x00E441 03:A431: 00        .byte $00   ; 0A 
- - - - - - 0x00E442 03:A432: 00        .byte $00   ; 0B 
- - - - - - 0x00E443 03:A433: 00        .byte $00   ; 0C 
- - - - - - 0x00E444 03:A434: 00        .byte $00   ; 0D 
- - - - - - 0x00E445 03:A435: 00        .byte $00   ; 0E 
- - - - - - 0x00E446 03:A436: 00        .byte $00   ; 0F 



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_017_0x00E447_1A:
C - - J - - 0x00E447 03:A437: BC AA 07  LDY ram_07AA_unk,X
C - - - - - 0x00E44A 03:A43A: 20 F4 94  JSR sub_0x009504
C - - - - - 0x00E44D 03:A43D: C9 20     CMP #$20
C - - - - - 0x00E44F 03:A43F: 90 09     BCC bra_A44A
; 20+
C - - - - - 0x00E451 03:A441: C9 60     CMP #$60
C - - - - - 0x00E453 03:A443: B0 09     BCS bra_A44E
; 20-5F
C - - - - - 0x00E455 03:A445: A9 3B     LDA #con_A36F_3B
bra_A447:
C - - - - - 0x00E457 03:A447: 4C 61 A3  JMP loc_0x00E371
bra_A44A:
- - - - - - 0x00E45A 03:A44A: A9 3A     LDA #con_A36F_3A
- - - - - - 0x00E45C 03:A44C: D0 F9     BNE bra_A447    ; jmp
bra_A44E:
; 60+
C - - - - - 0x00E45E 03:A44E: C9 80     CMP #$80
C - - - - - 0x00E460 03:A450: B0 04     BCS bra_A456
; 60-7F
C - - - - - 0x00E462 03:A452: A9 3C     LDA #con_A36F_3C
C - - - - - 0x00E464 03:A454: D0 F1     BNE bra_A447    ; jmp
bra_A456:
; 80+
C - - - - - 0x00E466 03:A456: A9 03     LDA #con_A36F_03
C - - - - - 0x00E468 03:A458: D0 ED     BNE bra_A447    ; jmp



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_017_0x00E46A_1B:
C - - J - - 0x00E46A 03:A45A: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x00E46D 03:A45D: 18        CLC
C - - - - - 0x00E46E 03:A45E: 69 18     ADC #$18
C - - - - - 0x00E470 03:A460: C9 30     CMP #$30
C - - - - - 0x00E472 03:A462: B0 3B     BCS bra_A49F
C - - - - - 0x00E474 03:A464: A0 00     LDY #$00
C - - - - - 0x00E476 03:A466: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x00E479 03:A469: 10 02     BPL bra_A46D
C - - - - - 0x00E47B 03:A46B: A0 80     LDY #$80
bra_A46D:
C - - - - - 0x00E47D 03:A46D: 98        TYA
C - - - - - 0x00E47E 03:A46E: 9D B2 06  STA ram_06B2_obj,X
C - - - - - 0x00E481 03:A471: A9 02     LDA #con_A36F_02
C - - - - - 0x00E483 03:A473: 4C 61 A3  JMP loc_0x00E371
bra_A49F:
                                        SEC
                                        RTS



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_017_0x00E486_1C:
C - - J - - 0x00E486 03:A476: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x00E489 03:A479: C9 A0     CMP #$A0
C - - - - - 0x00E48B 03:A47B: 90 08     BCC bra_A485
C - - - - - 0x00E48D 03:A47D: A0 3A     LDY #con_A36F_3A
C - - - - - 0x00E48F 03:A47F: A5 29     LDA ram_random
C - - - - - 0x00E491 03:A481: C9 80     CMP #$80
C - - - - - 0x00E493 03:A483: 90 02     BCC bra_A487
bra_A485:
C - - - - - 0x00E495 03:A485: A0 03     LDY #con_A36F_03
bra_A487:
C - - - - - 0x00E497 03:A487: 98        TYA
C - - - - - 0x00E498 03:A488: 4C 61 A3  JMP loc_0x00E371



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_017_0x008456_1D:
C - - J - - 0x008456 02:8446: BD 78 07  LDA ram_0778_unk,X
C - - - - - 0x008459 02:8449: 30 31     BMI bra_8459
C - - - - - 0x00845B 02:844B: A0 00     LDY #$00
C - - - - - 0x00845D 02:844D: BD A0 07  LDA ram_07A0_unk,X
C - - - - - 0x008460 02:8450: 29 F0     AND #$F0
C - - - - - 0x008462 02:8452: C9 10     CMP #$10
C - - - - - 0x008464 02:8454: D0 02     BNE bra_8458
C - - - - - 0x008466 02:8456: A0 08     LDY #$08
bra_8458:
C - - - - - 0x008468 02:8458: 98        TYA
                                        STA ram_069C_obj,X
bra_8459:
C - - - - - 0x008469 02:8459: 4C 79 84  JMP loc_0x00848C



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_017_0x00E49B_1E:
C - - J - - 0x00E49B 03:A48B: BD B2 06  LDA ram_06B2_obj,X
C - - - - - 0x00E49E 03:A48E: 10 08     BPL bra_A498
C - - - - - 0x00E4A0 03:A490: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x00E4A3 03:A493: C9 40     CMP #$40
C - - - - - 0x00E4A5 03:A495: 90 EE     BCC bra_A49E
C - - - - - 0x00E4A7 03:A497: 60        RTS
bra_A498:
C - - - - - 0x00E4A8 03:A498: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x00E4AB 03:A49B: C9 C0     CMP #$C0
C - - - - - 0x00E4AD 03:A49D: B0 E6     BCS bra_A49E
C - - - - - 0x00E4AF 03:A49F: 38        SEC
C - - - - - 0x00E4B0 03:A4A0: 60        RTS
bra_A49E:
                                        LDY #con_A36F_03
                                        TYA
                                        JMP loc_0x00E371



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_017_0x00E4B1_1F:
C - - J - - 0x00E4B1 03:A4A1: BD 00 06  LDA ram_0600_obj,X
C - - - - - 0x00E4B4 03:A4A4: 20 B4 93  JSR sub_0x0093C4_LSRx4_TAY
C - - - - - 0x00E4B7 03:A4A7: 20 72 91  JSR sub_0x009182_06B2x_AND_0F
C - - - - - 0x00E4BA 03:A4AA: 19 B2 A4  ORA tbl_A4B2,Y
C - - - - - 0x00E4BD 03:A4AD: 9D B2 06  STA ram_06B2_obj,X
C - - - - - 0x00E4C0 03:A4B0: 38        SEC
C - - - - - 0x00E4C1 03:A4B1: 60        RTS



tbl_A4B2:
- - - - - - 0x00E4C2 03:A4B2: 00        .byte $00   ; 00 
- - - - - - 0x00E4C3 03:A4B3: 80        .byte $80   ; 01 
- D 1 - - - 0x00E4C4 03:A4B4: 00        .byte $00   ; 02 
- - - - - - 0x00E4C5 03:A4B5: 00        .byte $00   ; 03 
- - - - - - 0x00E4C6 03:A4B6: C0        .byte $C0   ; 04 
- - - - - - 0x00E4C7 03:A4B7: A0        .byte $A0   ; 05 
- - - - - - 0x00E4C8 03:A4B8: E0        .byte $E0   ; 06 
- - - - - - 0x00E4C9 03:A4B9: E0        .byte $E0   ; 07 
- - - - - - 0x00E4CA 03:A4BA: 40        .byte $40   ; 08 
- - - - - - 0x00E4CB 03:A4BB: 60        .byte $60   ; 09 
- - - - - - 0x00E4CC 03:A4BC: 20        .byte $20   ; 0A 
- - - - - - 0x00E4CD 03:A4BD: 20        .byte $20   ; 0B 
- - - - - - 0x00E4CE 03:A4BE: 00        .byte $00   ; 0C 
- - - - - - 0x00E4CF 03:A4BF: 00        .byte $00   ; 0D 
- - - - - - 0x00E4D0 03:A4C0: 00        .byte $00   ; 0E 
- - - - - - 0x00E4D1 03:A4C1: 00        .byte $00   ; 0F 



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_017_0x0089AA_20:
                                        LDA ram_000A_t03
                                        STA ram_06B2_obj,X
                                        SEC
                                        RTS



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_017_0x00E4D2_21:
C - - J - - 0x00E4D2 03:A4C2: BD 78 07  LDA ram_0778_unk,X
C - - - - - 0x00E4D5 03:A4C5: 30 07     BMI bra_A4CE
C - - - - - 0x00E4D7 03:A4C7: A5 0A     LDA ram_000A_t03
C - - - - - 0x00E4D9 03:A4C9: 8D A1 05  STA ram_059E_se + $03
bra_A4CC:
C - - - - - 0x00E4DC 03:A4CC: 18        CLC
C - - - - - 0x00E4DD 03:A4CD: 60        RTS
bra_A4CE:
C - - - - - 0x00E4DE 03:A4CE: AD A1 05  LDA ram_059E_se + $03
C - - - - - 0x00E4E1 03:A4D1: C9 01     CMP #$01
C - - - - - 0x00E4E3 03:A4D3: B0 F7     BCS bra_A4CC
C - - - - - 0x00E4E5 03:A4D5: 38        SEC
C - - - - - 0x00E4E6 03:A4D6: 60        RTS



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_017_0x0089AF_22:
C - - J - - 0x0089AF 02:899F: A5 0A     LDA ram_000A_t03
                                        JMP loc_0x0089B1



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_017_0x00E4E7_23:
C - - J - - 0x00E4E7 03:A4D7: A5 0A     LDA ram_000A_t03
C - - - - - 0x00E4E9 03:A4D9: F0 09     BEQ bra_A4E4
C - - - - - 0x00E4EB 03:A4DB: 10 0C     BPL bra_A4E9
C - - - - - 0x00E4ED 03:A4DD: A9 02     LDA #$02
C - - - - - 0x00E4EF 03:A4DF: 8D 40 03  STA ram_0340_flag
C - - - - - 0x00E4F2 03:A4E2: D0 05     BNE bra_A4E9    ; jmp
bra_A4E4:
C - - - - - 0x00E4F4 03:A4E4: A9 01     LDA #$01
C - - - - - 0x00E4F6 03:A4E6: 8D 40 03  STA ram_0340_flag
bra_A4E9:
C - - - - - 0x00E4F9 03:A4E9: A9 01     LDA #$01
C - - - - - 0x00E4FB 03:A4EB: 85 8C     STA ram_008C
C - - - - - 0x00E4FD 03:A4ED: 20 47 9A  JSR sub_0x009A57
C - - - - - 0x00E500 03:A4F0: 9D 20 07  STA ram_0720_obj,X
C - - - - - 0x00E503 03:A4F3: 20 CE 90  JSR sub_0x0090DE_0600x_ORA_08
C - - - - - 0x00E506 03:A4F6: 38        SEC
C - - - - - 0x00E507 03:A4F7: 60        RTS



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_017_0x00E508_24:
C - - J - - 0x00E508 03:A4F8: A5 0A     LDA ram_000A_t03
C - - - - - 0x00E50A 03:A4FA: C9 02     CMP #$02
C - - - - - 0x00E50C 03:A4FC: F0 32     BEQ bra_A530
C - - - - - 0x00E50E 03:A4FE: C9 03     CMP #$03
C - - - - - 0x00E510 03:A500: D0 03     BNE bra_A505
C - - - - - 0x00E512 03:A502: 20 13 A9  JSR sub_0x00E923
bra_A505:
C - - - - - 0x00E515 03:A505: A9 04     LDA #con_0020_04
C - - - - - 0x00E517 03:A507: 85 20     STA ram_script_hi
C - - - - - 0x00E519 03:A509: A9 00     LDA #$00
C - - - - - 0x00E51B 03:A50B: 85 22     STA ram_0022_t02
C - - - - - 0x00E51D 03:A50D: 8D 6E 03  STA ram_036E
C - - - - - 0x00E520 03:A510: 8D 6F 03  STA ram_036E + $01
C - - - - - 0x00E523 03:A513: A9 C0     LDA #$C0
C - - - - - 0x00E525 03:A515: 8D 70 03  STA ram_0370_counter_00_C0
C - - - - - 0x00E528 03:A518: A0 16     LDY #$16
bra_A51A_loop:
C - - - - - 0x00E52A 03:A51A: A9 00     LDA #$00
C - - - - - 0x00E52C 03:A51C: 99 1A 06  STA ram_obj_animation_lo,Y
C - - - - - 0x00E52F 03:A51F: 99 82 06  STA ram_0682_obj,Y
C - - - - - 0x00E532 03:A522: C8        INY
C - - - - - 0x00E533 03:A523: C0 1A     CPY #$1A
C - - - - - 0x00E535 03:A525: 90 F3     BCC bra_A51A_loop
C - - - - - 0x00E537 03:A527: A5 0A     LDA ram_000A_t03
C - - - - - 0x00E539 03:A529: F0 03     BEQ bra_A52E
C - - - - - 0x00E53B 03:A52B: 20 47 9A  JSR sub_0x009A57
bra_A52E:
C - - - - - 0x00E53E 03:A52E: 38        SEC
C - - - - - 0x00E53F 03:A52F: 60        RTS
bra_A530:
C - - - - - 0x00E540 03:A530: A9 A0     LDA #< $00A0
C - - - - - 0x00E542 03:A532: 85 AF     STA ram_00AF_lo
C - - - - - 0x00E544 03:A534: A9 00     LDA #> $00A0
C - - - - - 0x00E546 03:A536: 85 AB     STA ram_00AB_hi
                                       ;LDA #$00
C - - - - - 0x00E548 03:A538: 85 AC     STA ram_00AC_lo
C - - - - - 0x00E54A 03:A53A: 38        SEC
C - - - - - 0x00E54B 03:A53B: 60        RTS



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_017_0x00E565_25:
C - - J - - 0x00E565 03:A555: A0 00     LDY #$00
C - - - - - 0x00E567 03:A557: 20 6A A5  JSR sub_A56A
C - - - - - 0x00E56A 03:A55A: 90 07     BCC bra_A563
C - - - - - 0x00E56C 03:A55C: C8        INY ; 01
C - - - - - 0x00E56D 03:A55D: 20 6A A5  JSR sub_A56A
C - - - - - 0x00E570 03:A560: 90 01     BCC bra_A563
C - - - - - 0x00E572 03:A562: 60        RTS
bra_A563:
C - - - - - 0x00E573 03:A563: 98        TYA
C - - - - - 0x00E574 03:A564: 9D AA 07  STA ram_07AA_unk,X
C - - - - - 0x00E577 03:A567: 4C 5F A3  LDA ram_000A_t03
                                        JMP loc_0x00E371



sub_A56A:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x00E57A 03:A56A: B9 82 07  LDA ram_0782_unk,Y
C - - - - - 0x00E57D 03:A56D: F0 BF     BEQ bra_A573
C - - - - - 0x00E57F 03:A56F: 20 FE 94  JSR sub_0x00950E
C - - - - - 0x00E582 03:A572: C9 18     CMP #$18
C - - - - - 0x00E584 03:A574: 60        RTS
bra_A573:
                                        SEC
                                        RTS



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_017_0x00E585_26:
C - - J - - 0x00E585 03:A575: A9 86     LDA #$86
C - - - - - 0x00E587 03:A577: 9D B2 06  STA ram_06B2_obj,X
C - - - - - 0x00E58A 03:A57A: BC AA 07  LDY ram_07AA_unk,X
C - - - - - 0x00E58D 03:A57D: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x00E590 03:A580: D9 4E 06  CMP ram_obj_pos_X,Y
C - - - - - 0x00E593 03:A583: B0 05     BCS bra_A58A
C - - - - - 0x00E595 03:A585: A9 06     LDA #$06
C - - - - - 0x00E597 03:A587: 9D B2 06  STA ram_06B2_obj,X
bra_A58A:
C - - - - - 0x00E59A 03:A58A: 38        SEC
C - - - - - 0x00E59B 03:A58B: 60        RTS



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_017_0x00E59C_27:
C - - J - - 0x00E59C 03:A58C: A4 8C     LDY ram_008C
C - - - - - 0x00E59E 03:A58E: C0 05     CPY #$05
C - - - - - 0x00E5A0 03:A590: 90 13     BCC bra_A5A5
C - - - - - 0x00E5A2 03:A592: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x00E5A5 03:A595: 18        CLC
C - - - - - 0x00E5A6 03:A596: 69 30     ADC #$30
C - - - - - 0x00E5A8 03:A598: C9 60     CMP #$60
C - - - - - 0x00E5AA 03:A59A: 38        SEC
C - - - - - 0x00E5AB 03:A59B: 60        RTS
bra_A5A5:
C - - - - - 0x00E5B5 03:A5A5: A9 03     LDA #$03
C - - - - - 0x00E5B7 03:A5A7: 9D B2 06  STA ram_06B2_obj,X
C - - - - - 0x00E5BA 03:A5AA: BC 0A 07  LDY ram_070A_obj,X
C - - - - - 0x00E5BD 03:A5AD: C0 06     CPY #$06
C - - - - - 0x00E5BF 03:A5AF: F0 F2     BEQ bra_A5A3
- - - - - - 0x00E5C1 03:A5B1: A9 20     LDA #con_A36F_20
- - - - - - 0x00E5AE 03:A59E: 4C 61 A3  JMP loc_0x00E371
bra_A5A3:
C - - - - - 0x00E5B3 03:A5A3: 38        SEC
C - - - - - 0x00E5B4 03:A5A4: 60        RTS



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_017_0x00E5C5_28:
C - - J - - 0x00E5C5 03:A5B5: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x00E5C8 03:A5B8: 20 B5 93  JSR sub_0x0093C4_LSRx3_TAY
C - - - - - 0x00E5CB 03:A5BB: B9 C1 A5  LDA tbl_A5C1,Y
C - - - - - 0x00E5CE 03:A5BE: 4C 61 A3  JMP loc_0x00E371



tbl_A5C1:
- - - - - - 0x00E5D1 03:A5C1: 0B        .byte con_A36F_0B   ; 00 
- - - - - - 0x00E5D2 03:A5C2: 0B        .byte con_A36F_0B   ; 01 
- - - - - - 0x00E5D3 03:A5C3: 0B        .byte con_A36F_0B   ; 02 
- - - - - - 0x00E5D4 03:A5C4: 0B        .byte con_A36F_0B   ; 03 
- - - - - - 0x00E5D5 03:A5C5: 0B        .byte con_A36F_0B   ; 04 
- - - - - - 0x00E5D6 03:A5C6: 0C        .byte con_A36F_0C   ; 05 
- - - - - - 0x00E5D7 03:A5C7: 0C        .byte con_A36F_0C   ; 06 
- D 1 - - - 0x00E5D8 03:A5C8: 0B        .byte con_A36F_0B   ; 07 
- - - - - - 0x00E5D9 03:A5C9: 09        .byte con_A36F_09   ; 08 
- D 1 - - - 0x00E5DA 03:A5CA: 09        .byte con_A36F_09   ; 09 
- - - - - - 0x00E5DB 03:A5CB: 0B        .byte con_A36F_0B   ; 0A 
- - - - - - 0x00E5DC 03:A5CC: 0B        .byte con_A36F_0B   ; 0B 
- - - - - - 0x00E5DD 03:A5CD: 0B        .byte con_A36F_0B   ; 0C 
- - - - - - 0x00E5DE 03:A5CE: 0B        .byte con_A36F_0B   ; 0D 
- - - - - - 0x00E5DF 03:A5CF: 0A        .byte con_A36F_0A   ; 0E 
- - - - - - 0x00E5E0 03:A5D0: 0A        .byte con_A36F_0A   ; 0F 
- D 1 - - - 0x00E5E1 03:A5D1: 0A        .byte con_A36F_0A   ; 10 
- - - - - - 0x00E5E2 03:A5D2: 0C        .byte con_A36F_0C   ; 11 
- D 1 - - - 0x00E5E3 03:A5D3: 0C        .byte con_A36F_0C   ; 12 
- D 1 - - - 0x00E5E4 03:A5D4: 0C        .byte con_A36F_0C   ; 13 
- - - - - - 0x00E5E5 03:A5D5: 09        .byte con_A36F_09   ; 14 
- - - - - - 0x00E5E6 03:A5D6: 09        .byte con_A36F_09   ; 15 
- - - - - - 0x00E5E7 03:A5D7: 0A        .byte con_A36F_0A   ; 16 
- - - - - - 0x00E5E8 03:A5D8: 0A        .byte con_A36F_0A   ; 17 
- - - - - - 0x00E5E9 03:A5D9: 0A        .byte con_A36F_0A   ; 18 
- - - - - - 0x00E5EA 03:A5DA: 0C        .byte con_A36F_0C   ; 19 
- - - - - - 0x00E5EB 03:A5DB: 0C        .byte con_A36F_0C   ; 1A 
- - - - - - 0x00E5EC 03:A5DC: 0B        .byte con_A36F_0B   ; 1B 
- - - - - - 0x00E5ED 03:A5DD: 0B        .byte con_A36F_0B   ; 1C 
- - - - - - 0x00E5EE 03:A5DE: 0B        .byte con_A36F_0B   ; 1D 
- - - - - - 0x00E5EF 03:A5DF: 0B        .byte con_A36F_0B   ; 1E 
- - - - - - 0x00E5F0 03:A5E0: 0B        .byte con_A36F_0B   ; 1F 



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_017_0x00E5F1_29:
C - - J - - 0x00E5F1 03:A5E1: A9 00     LDA #$00
                                        STA ram_07AA_unk,X
C - - - - - 0x00E5F3 03:A5E3: 20 D1 A7  JSR sub_0x00E7E4
C - - - - - 0x00E5F6 03:A5E6: 90 10     BCC bra_A5F8
C - - - - - 0x00E5F8 03:A5E8: A0 00     LDY #$00
C - - - - - 0x00E5FA 03:A5EA: 20 FD A5  JSR sub_A5FD
C - - - - - 0x00E5FD 03:A5ED: 90 06     BCC bra_A5F5
C - - - - - 0x00E5FF 03:A5EF: C8        INY ; 01
C - - - - - 0x00E600 03:A5F0: 20 FD A5  JSR sub_A5FD
C - - - - - 0x00E603 03:A5F3: B0 AE     BCS bra_A5FB
bra_A5F5:
C - - - - - 0x00E605 03:A5F5: 4C 5F A3  LDA ram_000A_t03
                                        JMP loc_0x00E371
bra_A5F8:
C - - - - - 0x00E608 03:A5F8: A9 3D     LDA #con_A36F_3D
C - - - - - 0x00E60A 03:A5FA: 4C 61 A3  JMP loc_0x00E371
bra_A5FB:
                                        SEC
                                        RTS



sub_A5FD:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x00E60D 03:A5FD: B9 82 07  LDA ram_0782_unk,Y
C - - - - - 0x00E610 03:A600: F0 A1     BEQ bra_A606
C - - - - - 0x00E612 03:A602: 20 F4 94  JSR sub_0x009504
C - - - - - 0x00E615 03:A605: C9 20     CMP #$20
C - - - - - 0x00E617 03:A607: 60        RTS
bra_A606:
                                        SEC
                                        RTS



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_017_0x0088BC_2A:
C - - J - - 0x0088BC 02:88AC: A5 0A     LDA ram_000A_t03
C - - - - - 0x0088BE 02:88AE: 30 0B     BMI bra_88BB
C - - - - - 0x0088C0 02:88B0: 20 B1 93  JSR sub_0x0093C1_06B2x_LSRx4_TAY
C - - - - - 0x0088C3 02:88B3: 4A        LSR
C - - - - - 0x0088C4 02:88B4: 18        CLC
C - - - - - 0x0088C5 02:88B5: 65 0A     ADC ram_000A_t03
C - - - - - 0x0088C7 02:88B7: 85 3C     STA ram_003C_t02_data_index
C - - - - - 0x0088C9 02:88B9: 38        SEC
C - - - - - 0x0088CA 02:88BA: 60        RTS
bra_88BB:
C - - - - - 0x0088CB 02:88BB: 29 7F     AND #$7F
C - - - - - 0x0088CD 02:88BD: 85 3C     STA ram_003C_t02_data_index
C - - - - - 0x0088CF 02:88BF: BD 82 07  LDA ram_0782_unk,X
C - - - - - 0x0088D2 02:88C2: C9 04     CMP #$04
C - - - - - 0x0088D4 02:88C4: D0 18     BNE bra_88DE
C - - - - - 0x0088D6 02:88C6: BD 78 07  LDA ram_0778_unk,X
C - - - - - 0x0088D9 02:88C9: C9 11     CMP #$11
C - - - - - 0x0088DB 02:88CB: D0 08     BNE bra_88D5
C - - - - - 0x0088DD 02:88CD: A9 06     LDA #$06
C - - - - - 0x0088DF 02:88CF: 20 BB 90  JSR sub_0x0090CB
C - - - - - 0x0088E2 02:88D2: 4C DE 88  JMP loc_88DE
bra_88D5:
C - - - - - 0x0088E5 02:88D5: C9 16     CMP #$16
C - - - - - 0x0088E7 02:88D7: D0 05     BNE bra_88DE
C - - - - - 0x0088E9 02:88D9: A9 05     LDA #$05
C - - - - - 0x0088EB 02:88DB: 20 BB 90  JSR sub_0x0090CB
bra_88DE:
loc_88DE:
C D 0 - - - 0x0088EE 02:88DE: BD B2 06  LDA ram_06B2_obj,X
C - - - - - 0x0088F1 02:88E1: 10 02     BPL bra_88E5
C - - - - - 0x0088F3 02:88E3: E6 3C     INC ram_003C_t02_data_index
bra_88E5:
C - - - - - 0x0088F5 02:88E5: 38        SEC
C - - - - - 0x0088F6 02:88E6: 60        RTS



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_017_0x0088F7_2B:
C - - J - - 0x0088F7 02:88E7: A5 0A     LDA ram_000A_t03
                                        JMP loc_0x0088F9



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_017_0x008967_2C:
                                        JMP loc_0x008967



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_017_0x00E618_2D:
C - - J - - 0x00E618 03:A608: A0 00     LDY #$00
C - - - - - 0x00E61A 03:A60A: 20 16 A6  JSR sub_A616
C - - - - - 0x00E61D 03:A60D: 90 E6     BCC bra_A614
C - - - - - 0x00E61F 03:A60F: C8        INY ; 01
C - - - - - 0x00E620 03:A610: 20 16 A6  JSR sub_A616
C - - - - - 0x00E623 03:A613: 90 E0     BCC bra_A614
C - - - - - 0x00E625 03:A615: 60        RTS
bra_A614:
                                        LDA ram_000A_t03
                                        JMP loc_0x00E371



sub_A616:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x00E626 03:A616: B9 82 07  LDA ram_0782_unk,Y
C - - - - - 0x00E629 03:A619: F0 3F     BEQ bra_A65A
C - - - - - 0x00E62B 03:A61B: B9 68 06  LDA ram_obj_pos_Y,Y
C - - - - - 0x00E62E 03:A61E: DD 68 06  CMP ram_obj_pos_Y,X
C - - - - - 0x00E631 03:A621: 60        RTS
bra_A65A:
                                        SEC
                                        RTS



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_017_0x00E632_2E:
C - - J - - 0x00E632 03:A622: A0 00     LDY #$00
C - - - - - 0x00E634 03:A624: B9 82 07  LDA ram_0782_unk,Y
C - - - - - 0x00E637 03:A627: F0 33     BEQ bra_A65C
C - - - - - 0x00E639 03:A629: 20 F4 94  JSR sub_0x009504
C - - - - - 0x00E63C 03:A62C: 85 0B     STA ram_000B_t11
C - - - - - 0x00E63E 03:A62E: A0 01     LDY #$01
C - - - - - 0x00E640 03:A630: B9 82 07  LDA ram_0782_unk,Y
C - - - - - 0x00E643 03:A633: F0 07     BEQ bra_A63C
- - - - - - 0x00E645 03:A635: 20 F4 94  JSR sub_0x009504
- - - - - - 0x00E648 03:A638: C5 0B     CMP ram_000B_t11
- - - - - - 0x00E64A 03:A63A: B0 02     BCS bra_A63E
bra_A63C:
C - - - - - 0x00E64C 03:A63C: A0 00     LDY #$00
bra_A63E:
C - - - - - 0x00E64E 03:A63E: 98        TYA
C - - - - - 0x00E64F 03:A63F: 9D AA 07  STA ram_07AA_unk,X
C - - - - - 0x00E652 03:A642: A9 00     LDA #$00
C - - - - - 0x00E654 03:A644: 85 0B     STA ram_000B_t12
C - - - - - 0x00E656 03:A646: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x00E659 03:A649: D9 4E 06  CMP ram_obj_pos_X,Y
C - - - - - 0x00E65C 03:A64C: 90 04     BCC bra_A652
C - - - - - 0x00E65E 03:A64E: A9 80     LDA #$80
C - - - - - 0x00E660 03:A650: 85 0B     STA ram_000B_t12
bra_A652:
C - - - - - 0x00E662 03:A652: 20 72 91  JSR sub_0x009182_06B2x_AND_0F
C - - - - - 0x00E665 03:A655: 05 0B     ORA ram_000B_t12
C - - - - - 0x00E667 03:A657: 9D B2 06  STA ram_06B2_obj,X
C - - - - - 0x00E66A 03:A65A: 38        SEC
C - - - - - 0x00E66B 03:A65B: 60        RTS
bra_A65C:
- - - - - - 0x00E66C 03:A65C: A0 01     LDY #$01
- - - - - - 0x00E66E 03:A65E: D0 DE     BNE bra_A63E    ; jmp



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_017_0x00E670_2F:
C - - J - - 0x00E670 03:A660: A0 00     LDY #$00
C - - - - - 0x00E672 03:A662: 20 6E A6  JSR sub_0x00E67E
C - - - - - 0x00E675 03:A665: B0 06     BCS bra_A66D_RTS
- - - - - - 0x00E677 03:A667: C8        INY ; 01
- - - - - - 0x00E678 03:A668: 20 6E A6  JSR sub_0x00E67E
- - - - - - 0x00E67B 03:A66B: 90 88     BCC bra_A66C
bra_A66D_RTS:
C - - - - - 0x00E67D 03:A66D: 60        RTS
bra_A66C:
                                        LDA ram_000A_t03
                                        JMP loc_0x00E371



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_017_0x008C12_30:
C - - J - - 0x008C12 02:8C02: A5 0A     LDA ram_000A_t03
C - - - - - 0x008C14 02:8C04: 0A        ASL
C - - - - - 0x008C15 02:8C05: BC D2 07  LDY ram_07D2_unk,X
C - - - - - 0x008C18 02:8C08: 18        CLC
C - - - - - 0x008C19 02:8C09: 79 18 8C  ADC tbl_8C18,Y
C - - - - - 0x008C1C 02:8C0C: A8        TAY
; bzk optimize, подготовить значения без последующего уменьшения
C - - - - - 0x008C1D 02:8C0D: B9 21 8C  LDA tbl_8C21,Y
                                        SEC
                                        SBC #$01
                                        STA ram_0778_unk,X
                                        SEC
                                        RTS



tbl_8C18:
- D 0 - - - 0x008C28 02:8C18: 00        .byte $00   ; 00 
- D 0 - - - 0x008C29 02:8C19: 00        .byte $00   ; 01 
- D 0 - - - 0x008C2A 02:8C1A: 01        .byte $01   ; 02 
- D 0 - - - 0x008C2B 02:8C1B: 00        .byte $00   ; 03 
- D 0 - - - 0x008C2C 02:8C1C: 00        .byte $00   ; 04 
- D 0 - - - 0x008C2D 02:8C1D: 00        .byte $00   ; 05 
- D 0 - - - 0x008C2E 02:8C1E: 01        .byte $01   ; 06 
- D 0 - - - 0x008C2F 02:8C1F: 00        .byte $00   ; 07 
- D 0 - - - 0x008C30 02:8C20: 00        .byte $00   ; 08 



tbl_8C21:
- D 0 - - - 0x008C31 02:8C21: 02        .byte $02   ; 00 
- D 0 - - - 0x008C32 02:8C22: 0B        .byte $0B   ; 01 
- D 0 - - - 0x008C33 02:8C23: 02        .byte $02   ; 02 
- D 0 - - - 0x008C34 02:8C24: 0A        .byte $0A   ; 03 



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_017_0x008C35_31:
C - - J - - 0x008C35 02:8C25: BD BE 07  LDA ram_07BE_unk,X
C - - - - - 0x008C38 02:8C28: 29 7F     AND #$7F
C - - - - - 0x008C3A 02:8C2A: A8        TAY
C - - - - - 0x008C3B 02:8C2B: B9 61 8C  LDA tbl_8C61,Y
C - - - - - 0x008C3E 02:8C2E: F0 2C     BEQ bra_8C5C
C - - - - - 0x008C40 02:8C30: A0 08     LDY #$08
C - - - - - 0x008C42 02:8C32: BD B2 06  LDA ram_06B2_obj,X
C - - - - - 0x008C45 02:8C35: 29 C0     AND #$C0
C - - - - - 0x008C47 02:8C37: F0 06     BEQ bra_8C3F
C - - - - - 0x008C49 02:8C39: C9 C0     CMP #$C0
C - - - - - 0x008C4B 02:8C3B: F0 02     BEQ bra_8C3F
C - - - - - 0x008C4D 02:8C3D: A0 F8     LDY #$F8
bra_8C3F:
C - - - - - 0x008C4F 02:8C3F: 98        TYA
C - - - - - 0x008C50 02:8C40: 18        CLC
C - - - - - 0x008C51 02:8C41: 7D 4E 06  ADC ram_obj_pos_X,X
C - - - - - 0x008C54 02:8C44: 85 00     STA ram_0000_t50_pos_X
C - - - - - 0x008C56 02:8C46: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x008C59 02:8C49: 38        SEC
C - - - - - 0x008C5A 02:8C4A: E9 20     SBC #$20
C - - - - - 0x008C5C 02:8C4C: 85 01     STA ram_0001_t18_pos_Y
C - - - - - 0x008C5E 02:8C4E: A9 00     LDY #con_F3D6_00
C - - - - - 0x008C60 02:8C50: 20 B3 F3  JSR sub_0x01F3C3_execute_script
C - - - - - 0x008C63 02:8C53: A5 01     LDA ram_0001_t15_table_index
C - - - - - 0x008C65 02:8C55: F0 05     BEQ bra_8C5C
C - - - - - 0x008C67 02:8C57: A9 1E     LDA #$1D
C - - - - - 0x008C69 02:8C59: 4C 10 8C  STA ram_0778_unk,X
                                        SEC
                                        RTS
bra_8C5C:
C - - - - - 0x008C6C 02:8C5C: A9 22     LDA #$21
C - - - - - 0x008C6E 02:8C5E: 4C 10 8C  STA ram_0778_unk,X
                                        SEC
                                        RTS



tbl_8C61:
- D 0 - - - 0x008C71 02:8C61: 00        .byte $00   ; 00 
- D 0 - - - 0x008C72 02:8C62: 01        .byte $01   ; 01 
- D 0 - - - 0x008C73 02:8C63: 00        .byte $00   ; 02 
- - - - - - 0x008C74 02:8C64: 00        .byte $00   ; 03 
- - - - - - 0x008C75 02:8C65: 01        .byte $01   ; 04 
- - - - - - 0x008C76 02:8C66: 00        .byte $00   ; 05 



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_017_0x008C77_32:
C - - J - - 0x008C77 02:8C67: 20 72 91  JSR sub_0x009182_06B2x_AND_0F
C - - - - - 0x008C7A 02:8C6A: 9D B2 06  STA ram_06B2_obj,X
C - - - - - 0x008C7D 02:8C6D: 20 2E 94  JSR sub_0x00943E
C - - - - - 0x008C80 02:8C70: A9 00     LDA #$00
C - - - - - 0x008C82 02:8C72: 85 00     STA ram_0000_t51
C - - - - - 0x008C84 02:8C74: 85 01     STA ram_0001_t19
C - - - - - 0x008C86 02:8C76: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x008C89 02:8C79: 38        SEC
C - - - - - 0x008C8A 02:8C7A: F9 4E 06  SBC ram_obj_pos_X,Y
C - - - - - 0x008C8D 02:8C7D: B0 04     BCS bra_8C83
C - - - - - 0x008C8F 02:8C7F: 49 FF     EOR #$FF
C - - - - - 0x008C91 02:8C81: E6 00     INC ram_0000_t51    ; -> 01
bra_8C83:
C - - - - - 0x008C93 02:8C83: C9 30     CMP #$30
C - - - - - 0x008C95 02:8C85: B0 02     BCS bra_8C89
C - - - - - 0x008C97 02:8C87: E6 01     INC ram_0001_t19    ; -> 01
bra_8C89:
C - - - - - 0x008C99 02:8C89: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x008C9C 02:8C8C: 38        SEC
C - - - - - 0x008C9D 02:8C8D: F9 68 06  SBC ram_obj_pos_Y,Y
C - - - - - 0x008CA0 02:8C90: B0 06     BCS bra_8C98
C - - - - - 0x008CA2 02:8C92: 49 FF     EOR #$FF
C - - - - - 0x008CA4 02:8C94: E6 00     INC ram_0000_t51
C - - - - - 0x008CA6 02:8C96: E6 00     INC ram_0000_t51
bra_8C98:
C - - - - - 0x008CA8 02:8C98: C9 30     CMP #$30
C - - - - - 0x008CAA 02:8C9A: B0 04     BCS bra_8CA0
C - - - - - 0x008CAC 02:8C9C: E6 01     INC ram_0001_t19
C - - - - - 0x008CAE 02:8C9E: E6 01     INC ram_0001_t19
bra_8CA0:
C - - - - - 0x008CB0 02:8CA0: A5 01     LDA ram_0001_t19
C - - - - - 0x008CB2 02:8CA2: 29 02     AND #$02
C - - - - - 0x008CB4 02:8CA4: F0 21     BEQ bra_8CC7
C - - - - - 0x008CB6 02:8CA6: A0 04     LDY #$04
C - - - - - 0x008CB8 02:8CA8: A5 00     LDA ram_0000_t51
C - - - - - 0x008CBA 02:8CAA: 29 02     AND #$02
C - - - - - 0x008CBC 02:8CAC: F0 08     BEQ bra_8CB6
C - - - - - 0x008CBE 02:8CAE: A0 0C     LDY #$0C
C - - - - - 0x008CC0 02:8CB0: A5 00     LDA ram_0000_t51
C - - - - - 0x008CC2 02:8CB2: 49 01     EOR #$01
C - - - - - 0x008CC4 02:8CB4: 85 00     STA ram_0000_t51
bra_8CB6:
C - - - - - 0x008CC6 02:8CB6: A5 01     LDA ram_0001_t19
C - - - - - 0x008CC8 02:8CB8: 29 01     AND #$01
C - - - - - 0x008CCA 02:8CBA: F0 19     BEQ bra_8CD5
- - - - - - 0x008CCC 02:8CBC: C8        INY ; 05/0D
- - - - - - 0x008CCD 02:8CBD: A5 00     LDA ram_0000_t51
- - - - - - 0x008CCF 02:8CBF: 29 01     AND #$01
- - - - - - 0x008CD1 02:8CC1: F0 12     BEQ bra_8CD5
- - - - - - 0x008CD3 02:8CC3: 88        DEY
- - - - - - 0x008CD4 02:8CC4: 88        DEY ; 03/0B
- - - - - - 0x008CD5 02:8CC5: D0 0E     BNE bra_8CD5    ; jmp
bra_8CC7:
C - - - - - 0x008CD7 02:8CC7: A5 01     LDA ram_0001_t19
C - - - - - 0x008CD9 02:8CC9: F0 1E     BEQ bra_8CE9
C - - - - - 0x008CDB 02:8CCB: A0 00     LDY #$00
C - - - - - 0x008CDD 02:8CCD: A5 00     LDA ram_0000_t51
C - - - - - 0x008CDF 02:8CCF: 29 01     AND #$01
C - - - - - 0x008CE1 02:8CD1: F0 02     BEQ bra_8CD5
- - - - - - 0x008CE3 02:8CD3: A0 08     LDY #$08
bra_8CD5:
C - - - - - 0x008CE5 02:8CD5: 98        TYA
; * 10
C - - - - - 0x008CE6 02:8CD6: 0A        ASL
C - - - - - 0x008CE7 02:8CD7: 0A        ASL
C - - - - - 0x008CE8 02:8CD8: 0A        ASL
C - - - - - 0x008CE9 02:8CD9: 0A        ASL
C - - - - - 0x008CEA 02:8CDA: 1D B2 06  ORA ram_06B2_obj,X
C - - - - - 0x008CED 02:8CDD: 9D B2 06  STA ram_06B2_obj,X
C - - - - - 0x008CF0 02:8CE0: A5 0A     LDA ram_000A_t03
C - - - - - 0x008CF2 02:8CE2: 18        CLC
C - - - - - 0x008CF3 02:8CE3: 7D 78 07  ADC ram_0778_unk,X
C - - - - - 0x008CF6 02:8CE6: 4C 13 8C  STA ram_0778_unk,X
                                        SEC
                                        RTS
bra_8CE9:
C - - - - - 0x008CF9 02:8CE9: A5 29     LDA ram_random
C - - - - - 0x008CFB 02:8CEB: 29 70     AND #$70
C - - - - - 0x008CFD 02:8CED: 1D B2 06  ORA ram_06B2_obj,X
C D 0 - - - 0x008D00 02:8CF0: 9D B2 06  STA ram_06B2_obj,X
C - - - - - 0x008D03 02:8CF3: 38        SEC
C - - - - - 0x008D04 02:8CF4: 60        RTS



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_017_0x008D05_33:
C - - J - - 0x008D05 02:8CF5: BD 78 07  LDA ram_0778_unk,X
C - - - - - 0x008D08 02:8CF8: 30 0A     BMI bra_8D04
C - - - - - 0x008D0A 02:8CFA: 09 80     ORA #$80
C - - - - - 0x008D0C 02:8CFC: 9D 78 07  STA ram_0778_unk,X
C - - - - - 0x008D0F 02:8CFF: A5 0A     LDA ram_000A_t03
C - - - - - 0x008D11 02:8D01: 9D 9C 06  STA ram_069C_obj,X
bra_8D04:
C - - - - - 0x008D14 02:8D04: DE 9C 06  DEC ram_069C_obj,X
C - - - - - 0x008D17 02:8D07: F0 15     BEQ bra_8D1E
C - - - - - 0x008D19 02:8D09: A9 00     LDA #> $0040
C - - - - - 0x008D1B 02:8D0B: 85 01     STA ram_0001_t04_hi
C - - - - - 0x008D1D 02:8D0D: A9 40     LDA #< $0040
C - - - - - 0x008D1F 02:8D0F: 85 00     STA ram_0000_t47_lo
C - - - - - 0x008D21 02:8D11: 20 7A 99  JSR sub_0x00998A
C - - - - - 0x008D24 02:8D14: 18        CLC
C - - - - - 0x008D25 02:8D15: 60        RTS
bra_8D1E:
                                        SEC
                                        RTS



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_017_0x00E696_34:
C - - J - - 0x00E696 03:A686: 20 2E 94  JSR sub_0x00943E
C - - - - - 0x00E699 03:A689: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x00E69C 03:A68C: D9 68 06  CMP ram_obj_pos_Y,Y
C - - - - - 0x00E69F 03:A68F: B0 0E     BCS bra_A69F
C - - - - - 0x00E6A1 03:A691: 20 FE 94  JSR sub_0x00950E
C - - - - - 0x00E6A4 03:A694: C9 40     CMP #$40
C - - - - - 0x00E6A6 03:A696: B0 07     BCS bra_A69F
C - - - - - 0x00E6A8 03:A698: 20 F4 94  JSR sub_0x009504
C - - - - - 0x00E6AB 03:A69B: C9 30     CMP #$30
C - - - - - 0x00E6AD 03:A69D: 90 E3     BCC bra_A682
bra_A69F:
C D 1 - - - 0x00E6AF 03:A69F: 98        TYA
C - - - - - 0x00E6B0 03:A6A0: 9D AA 07  STA ram_07AA_unk,X
C - - - - - 0x00E6B3 03:A6A3: 4C 5F A3  LDA ram_000A_t03
                                        JMP loc_0x00E371
bra_A682:
                                        SEC
                                        RTS



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_017_0x00E6B6_35:
C - - J - - 0x00E6B6 03:A6A6: 20 C9 A6  JSR sub_A6C9
C - - - - - 0x00E6B9 03:A6A9: 20 BA 96  JSR sub_0x0096CA
C - - - - - 0x00E6BC 03:A6AC: 20 B1 93  JSR sub_0x0093C1_06B2x_LSRx4_TAY
C - - - - - 0x00E6BF 03:A6AF: F0 0D     BEQ bra_A6BE
C - - - - - 0x00E6C1 03:A6B1: C9 08     CMP #$08
C - - - - - 0x00E6C3 03:A6B3: F0 09     BEQ bra_A6BE
C - - - - - 0x00E6C5 03:A6B5: 90 09     BCC bra_A6C0
C - - - - - 0x00E6C7 03:A6B7: A0 00     LDY #$00
C - - - - - 0x00E6C9 03:A6B9: 20 EA A6  JSR sub_0x00E6FA
C - - - - - 0x00E6CC 03:A6BC: 90 E5     BCC bra_A6A3
bra_A6BE:
C - - - - - 0x00E6CE 03:A6BE: 38        SEC
C - - - - - 0x00E6CF 03:A6BF: 60        RTS
bra_A6C0:
C - - - - - 0x00E6D0 03:A6C0: A0 02     LDY #$02
C - - - - - 0x00E6D2 03:A6C2: 20 EA A6  JSR sub_0x00E6FA
C - - - - - 0x00E6D5 03:A6C5: B0 DC     BCS bra_A6A3
C - - - - - 0x00E6D7 03:A6C7: 38        SEC
C - - - - - 0x00E6D8 03:A6C8: 60        RTS
bra_A6A3:
                                        LDA ram_000A_t03
                                        JMP loc_0x00E371



sub_A6C9:
; bzk optimize, C на выходе не проверяется
C - - - - - 0x00E6D9 03:A6C9: BC AA 07  LDY ram_07AA_unk,X
C - - - - - 0x00E6DC 03:A6CC: B9 68 06  LDA ram_obj_pos_Y,Y
C - - - - - 0x00E6DF 03:A6CF: DD 68 06  CMP ram_obj_pos_Y,X
C - - - - - 0x00E6E2 03:A6D2: B0 07     BCS bra_A6DB
C - - - - - 0x00E6E4 03:A6D4: A9 C3     LDA #$C3
C - - - - - 0x00E6E6 03:A6D6: 9D B2 06  STA ram_06B2_obj,X
C - - - - - 0x00E6E9 03:A6D9: 38        SEC
C - - - - - 0x00E6EA 03:A6DA: 60        RTS
bra_A6DB:
C - - - - - 0x00E6EB 03:A6DB: B9 4E 06  LDA ram_obj_pos_X,Y
C - - - - - 0x00E6EE 03:A6DE: 85 90     STA ram_0090_pos_X
C - - - - - 0x00E6F0 03:A6E0: B9 68 06  LDA ram_obj_pos_Y,Y
C - - - - - 0x00E6F3 03:A6E3: 85 91     STA ram_0091_pos_Y
C - - - - - 0x00E6F5 03:A6E5: 20 F5 91  JSR sub_0x009205
C - - - - - 0x00E6F8 03:A6E8: 38        SEC
C - - - - - 0x00E6F9 03:A6E9: 60        RTS



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_017_0x00E6FA_36:
                                        JMP loc_0x00E6FA



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_017_0x00E70C_37:
C - - J - - 0x00E70C 03:A6FC: A0 00     LDY #$00
C - - - - - 0x00E70E 03:A6FE: 20 6E A6  JSR sub_0x00E67E
C - - - - - 0x00E711 03:A701: B0 06     BCS bra_A709
C - - - - - 0x00E713 03:A703: C8        INY ; 01
C - - - - - 0x00E714 03:A704: 20 6E A6  JSR sub_0x00E67E
C - - - - - 0x00E717 03:A707: 90 DF     BCC bra_A708
bra_A709:
C - - - - - 0x00E719 03:A709: 4C 9F A6  TYA
                                        STA ram_07AA_unk,X
                                        LDA ram_000A_t03
                                        JMP loc_0x00E371
bra_A708:
                                        SEC
                                        RTS



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_017_0x00E71C_38:
C - - J - - 0x00E71C 03:A70C: BC AA 07  LDY ram_07AA_unk,X
C - - - - - 0x00E71F 03:A70F: 20 F4 94  JSR sub_0x009504
C - - - - - 0x00E722 03:A712: C9 10     CMP #$10
C - - - - - 0x00E724 03:A714: A0 00     LDY #$00
C - - - - - 0x00E726 03:A716: 90 01     BCC bra_A719
C - - - - - 0x00E728 03:A718: C8        INY ; 01
bra_A719:
C - - - - - 0x00E729 03:A719: B9 1F A7  LDA tbl_A71F,Y
C - - - - - 0x00E72C 03:A71C: 4C 61 A3  JMP loc_0x00E371



tbl_A71F:
- D 1 - - - 0x00E72F 03:A71F: 15        .byte con_A36F_15   ; 00 
- D 1 - - - 0x00E730 03:A720: 16        .byte con_A36F_16   ; 01 



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_017_0x00E731_39:
- - - - - - 0x00E731 03:A721: BC AA 07  LDY ram_07AA_unk,X
- - - - - - 0x00E734 03:A724: 20 F4 94  JSR sub_0x009504
- - - - - - 0x00E737 03:A727: C9 90     CMP #$90
- - - - - - 0x00E739 03:A729: 90 BD     BCC bra_A6E8
; 90+
C - - - - - 0x00E73B 03:A72B: 4C 9F A6  TYA
                                        STA ram_07AA_unk,X
                                        LDA ram_000A_t03
                                        JMP loc_0x00E371
bra_A6E8:
                                        SEC
                                        RTS



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_017_0x00E73E_3A:
C - - J - - 0x00E73E 03:A72E: A4 8C     LDY ram_008C
C - - - - - 0x00E740 03:A730: B9 36 A7  LDA tbl_A736,Y
C - - - - - 0x00E743 03:A733: 4C 61 A3  JMP loc_0x00E371



tbl_A736:
- D 1 - - - 0x00E746 03:A736: 19        .byte con_A36F_19   ; 00 
- - - - - - 0x00E747 03:A737: 00        .byte con_A36F_00   ; 01 



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_017_0x00E748_3B:
C - - J - - 0x00E748 03:A738: A9 00     LDA #$00
C - - - - - 0x00E74A 03:A73A: 85 8D     STA ram_008D
C - - - - - 0x00E74C 03:A73C: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x00E74F 03:A73F: C9 0E     CMP #$0E
C - - - - - 0x00E751 03:A741: B0 E8     BCS bra_A742
C - - - - - 0x00E753 03:A743: 38        SEC
C - - - - - 0x00E754 03:A744: 60        RTS
bra_A742:
                                        TYA
                                        STA ram_07AA_unk,X
                                        LDA ram_000A_t03
                                        JMP loc_0x00E371



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_017_0x00E755_3C:
; unused?
                                        CLC
                                        RTS



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_017_0x00E755_3D:
C - - J - - 0x00E755 03:A745: 20 1D AD  JSR sub_0x01F6D1
                                        JSR sub_0x0093CA
C - - - - - 0x00E758 03:A748: B0 54     BCS bra_A79E
C - - - - - 0x00E75A 03:A74A: A9 02     LDA #$02
C - - - - - 0x00E75C 03:A74C: 20 72 93  JSR sub_0x009382
C - - - - - 0x00E75F 03:A74F: B0 4D     BCS bra_A79E
C - - - - - 0x00E761 03:A751: 84 91     STY ram_0091_pos_Y
C - - - - - 0x00E763 03:A753: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x00E766 03:A756: 0A        ASL
C - - - - - 0x00E767 03:A757: A8        TAY
C - - - - - 0x00E768 03:A758: B9 AE A7  LDA tbl_A7AE,Y
C - - - - - 0x00E76B 03:A75B: 38        SEC
C - - - - - 0x00E76C 03:A75C: E5 61     SBC ram_0061_lo
C - - - - - 0x00E76E 03:A75E: 9D 4E 06  STA ram_obj_pos_X,X
C - - - - - 0x00E771 03:A761: B9 AF A7  LDA tbl_A7AE + $01,Y
C - - - - - 0x00E774 03:A764: 38        SEC
C - - - - - 0x00E775 03:A765: E5 64     SBC ram_0064_lo
C - - - - - 0x00E777 03:A767: 9D 68 06  STA ram_obj_pos_Y,X
C - - - - - 0x00E77A 03:A76A: A4 91     LDY ram_0091_pos_Y
C - - - - - 0x00E77C 03:A76C: A9 92     LDA #$92
C - - - - - 0x00E77E 03:A76E: 20 D8 93  JSR sub_0x0093E8
C - - - - - 0x00E781 03:A771: 98        TYA
C - - - - - 0x00E782 03:A772: AA        TAX
C - - - - - 0x00E783 03:A773: A0 07     LDY #$07
C - - - - - 0x00E785 03:A775: 29 01     AND #$01
C - - - - - 0x00E787 03:A777: D0 01     BNE bra_A77A
C - - - - - 0x00E789 03:A779: C8        INY ; 08
bra_A77A:
C - - - - - 0x00E78A 03:A77A: 98        TYA
C - - - - - 0x00E78B 03:A77B: 9D 78 07  STA ram_0778_unk,X
C - - - - - 0x00E78E 03:A77E: A9 12     LDA #$12
C - - - - - 0x00E790 03:A780: 9D D2 07  STA ram_07D2_unk,X
C - - - - - 0x00E793 03:A783: A9 00     LDA #$00
C - - - - - 0x00E795 03:A785: 9D 20 07  STA ram_0720_obj,X
C - - - - - 0x00E798 03:A788: 9D 00 06  STA ram_0600_obj,X
C - - - - - 0x00E79B 03:A78B: A6 53     LDX ram_0053
C - - - - - 0x00E79D 03:A78D: 20 B9 8F  JSR sub_0x008FC9
C - - - - - 0x00E7A0 03:A790: BC AA 07  LDY ram_07AA_unk,X
C - - - - - 0x00E7A3 03:A793: B9 A0 A7  LDA tbl_A7A0,Y
C - - - - - 0x00E7A6 03:A796: 20 0E FC  JSR sub_0x01FC1E
C - - - - - 0x00E7A9 03:A799: FE AA 07  INC ram_07AA_unk,X
C - - - - - 0x00E7AC 03:A79C: 38        SEC
C - - - - - 0x00E7AD 03:A79D: 60        RTS
bra_A79E:
C - - - - - 0x00E7AE 03:A79E: 18        CLC
C - - - - - 0x00E7AF 03:A79F: 60        RTS



tbl_A7A0:
- D 1 - - - 0x00E7B0 03:A7A0: 78        .byte $78   ; 00 
- D 1 - - - 0x00E7B1 03:A7A1: 78        .byte $78   ; 01 
- D 1 - - - 0x00E7B2 03:A7A2: 7D        .byte $7D   ; 02 
- D 1 - - - 0x00E7B3 03:A7A3: 7D        .byte $7D   ; 03 
- D 1 - - - 0x00E7B4 03:A7A4: 7E        .byte $7E   ; 04 
- D 1 - - - 0x00E7B5 03:A7A5: 7E        .byte $7E   ; 05 
- D 1 - - - 0x00E7B6 03:A7A6: 78        .byte $78   ; 06 
- D 1 - - - 0x00E7B7 03:A7A7: 78        .byte $78   ; 07 
- D 1 - - - 0x00E7B8 03:A7A8: 7D        .byte $7D   ; 08 
- D 1 - - - 0x00E7B9 03:A7A9: 7D        .byte $7D   ; 09 
- D 1 - - - 0x00E7BA 03:A7AA: 7E        .byte $7E   ; 0A 
- D 1 - - - 0x00E7BB 03:A7AB: 7E        .byte $7E   ; 0B 
- D 1 - - - 0x00E7BC 03:A7AC: 7C        .byte $7C   ; 0C 
- D 1 - - - 0x00E7BD 03:A7AD: 7C        .byte $7C   ; 0D 



tbl_A7AE:
;                                              +---------- pos_X
;                                              |    +----- pos_Y
;                                              |    |
- D 1 - - - 0x00E7BE 03:A7AE: 30        .byte $30, $01   ; 00 
- D 1 - - - 0x00E7C0 03:A7B0: 30        .byte $30, $21   ; 01 
- D 1 - - - 0x00E7C2 03:A7B2: 50        .byte $50, $01   ; 02 
- D 1 - - - 0x00E7C4 03:A7B4: 50        .byte $50, $21   ; 03 
- D 1 - - - 0x00E7C6 03:A7B6: 70        .byte $70, $01   ; 04 
- D 1 - - - 0x00E7C8 03:A7B8: 70        .byte $70, $21   ; 05 
- D 1 - - - 0x00E7CA 03:A7BA: 90        .byte $90, $01   ; 06 
- D 1 - - - 0x00E7CC 03:A7BC: 90        .byte $90, $21   ; 07 
- D 1 - - - 0x00E7CE 03:A7BE: F0        .byte $F0, $01   ; 08 
- D 1 - - - 0x00E7D0 03:A7C0: F0        .byte $F0, $21   ; 09 
- D 1 - - - 0x00E7D2 03:A7C2: D0        .byte $D0, $01   ; 0A 
- D 1 - - - 0x00E7D4 03:A7C4: D0        .byte $D0, $21   ; 0B 
- D 1 - - - 0x00E7D6 03:A7C6: B0        .byte $B0, $01   ; 0C 
- D 1 - - - 0x00E7D8 03:A7C8: B0        .byte $B0, $21   ; 0D 



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_017_0x00E2F1_3E:
C - - J - - 0x00E2F1 03:A2E1: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x00E2F4 03:A2E4: 29 80     AND #$80
C - - - - - 0x00E2F6 03:A2E6: 9D B2 06  STA ram_06B2_obj,X
C - - - - - 0x00E2F9 03:A2E9: 38        SEC
C - - - - - 0x00E2FA 03:A2EA: 60        RTS



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_017_0x009E65_3F:
                                        JMP loc_0x009E65



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_017_0x00E7DA_40:
C - - J - - 0x00E7DA 03:A7CA: BD 78 07  LDA ram_0778_unk,X
C - - - - - 0x00E7DD 03:A7CD: 30 05     BMI bra_A7D4
C - - - - - 0x00E7DF 03:A7CF: A5 0A     LDA ram_000A_t03
                                        STA ram_07AA_unk,X
                                        JMP loc_0x00E7E4
bra_A7D4:
                                        JMP loc_0x00E7E4



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_017_0x008D26_41:
C - - J - - 0x008D26 02:8D16: 20 F2 95  JSR sub_0x009602
C - - - - - 0x008D29 02:8D19: A9 07     LDA #$07
C - - - - - 0x008D2B 02:8D1B: 20 BB 90  JSR sub_0x0090CB
C - - - - - 0x008D2E 02:8D1E: 38        SEC
C - - - - - 0x008D2F 02:8D1F: 60        RTS



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_017_0x008A59_42:
C - - J - - 0x008A59 02:8A49: BD 78 07  LDA ram_0778_unk,X
C - - - - - 0x008A5C 02:8A4C: 30 1A     BMI bra_8A68
C - - - - - 0x008A5E 02:8A4E: 20 1B 84  JSR sub_0x00842B_000A_ASL_TAY
C - - - - - 0x008A61 02:8A51: B9 C7 8B  LDA tbl_8BC7,Y
C - - - - - 0x008A64 02:8A54: 29 40     AND #$40
C - - - - - 0x008A66 02:8A56: 9D 9C 06  STA ram_069C_obj,X
C - - - - - 0x008A69 02:8A59: B9 C7 8B  LDA tbl_8BC7,Y
C - - - - - 0x008A6C 02:8A5C: 29 0F     AND #$0F
C - - - - - 0x008A6E 02:8A5E: 85 0B     STA ram_000B_t09
C - - - - - 0x008A70 02:8A60: 20 7D 91  LDA ram_06B2_obj,X
                                        AND #$F0
C - - - - - 0x008A73 02:8A63: 05 0B     ORA ram_000B_t09
C - - - - - 0x008A75 02:8A65: 9D B2 06  STA ram_06B2_obj,X
bra_8A68:
C - - - - - 0x008A78 02:8A68: 20 1B 84  JSR sub_0x00842B_000A_ASL_TAY
C - - - - - 0x008A7B 02:8A6B: B9 C8 8B  LDA tbl_8BC8,Y
C - - - - - 0x008A7E 02:8A6E: 85 0C     STA ram_000C_t02
                                        JMP loc_0x008A80


; bzk optimize
tbl_8BC7:
- D 0 - - - 0x008BD7 02:8BC7: 41        .byte $41   ; 
tbl_8BC8:
- D 0 - - - 0x008BD8 02:8BC8: E9        .byte $E9   ; 



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_017_0x00E805_43:
C - - J - - 0x00E805 03:A7F5: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x00E808 03:A7F8: 30 0D     BMI bra_A807
C - - - - - 0x00E80A 03:A7FA: A0 00     LDY #$00
C - - - - - 0x00E80C 03:A7FC: 20 6E A6  JSR sub_0x00E67E
C - - - - - 0x00E80F 03:A7FF: B0 E7     BCS bra_A7E8_RTS
C - - - - - 0x00E811 03:A801: C8        INY ; 01
C - - - - - 0x00E812 03:A802: 20 6E A6  JSR sub_0x00E67E
C - - - - - 0x00E815 03:A805: B0 E1     BCS bra_A7E8_RTS
bra_A807:
C - - - - - 0x00E817 03:A807: A5 0A     LDA ram_000A_t03
C D 1 - - - 0x00E819 03:A809: 4C 10 8C  SEC
                                        SBC #$01
                                        STA ram_0778_unk,X
                                        SEC
bra_A7E8_RTS:
                                        RTS



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_017_0x00E81C_44:
C - - J - - 0x00E81C 03:A80C: A5 8C     LDA ram_008C
C - - - - - 0x00E81E 03:A80E: C9 05     CMP #$05
C - - - - - 0x00E820 03:A810: B0 04     BCS bra_A816
; 00-04
C - - - - - 0x00E822 03:A812: A9 21     LDA #con_A36F_21
C - - - - - 0x00E824 03:A814: D0 02     BNE bra_A818    ; jmp
bra_A816:
C - - - - - 0x00E826 03:A816: A9 36     LDA #con_A36F_36
bra_A818:
C - - - - - 0x00E828 03:A818: 4C 61 A3  JMP loc_0x00E371



ofs_017_0x00E82B_45:
C - - J - - 0x00E82B 03:A81B: A4 8C     LDY ram_008C
C - - - - - 0x00E82D 03:A81D: B9 23 A8  LDA tbl_A823,Y
C - - - - - 0x00E830 03:A820: 4C 61 A3  JMP loc_0x00E371



tbl_A823:
- - - - - - 0x00E833 03:A823: 37        .byte con_A36F_37   ; 00 
- D 1 - - - 0x00E834 03:A824: 37        .byte con_A36F_37   ; 01 
- - - - - - 0x00E835 03:A825: 2F        .byte con_A36F_2F   ; 02 
- - - - - - 0x00E836 03:A826: 30        .byte con_A36F_30   ; 03 
- D 1 - - - 0x00E837 03:A827: 37        .byte con_A36F_37   ; 04 
- - - - - - 0x00E838 03:A828: 20        .byte con_A36F_20   ; 05 



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_017_0x00E839_46:
C - - J - - 0x00E839 03:A829: 20 47 9A  JSR sub_0x009A57
C - - - - - 0x00E83C 03:A82C: 9D 8C 07  STA ram_078C_unk,X
C - - - - - 0x00E83F 03:A82F: A4 8C     LDY ram_008C
C - - - - - 0x00E841 03:A831: B9 49 A8  LDA tbl_A849,Y
C - - - - - 0x00E844 03:A834: D0 0E     BNE bra_A844
C - - - - - 0x00E846 03:A836: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x00E849 03:A839: 9D BE 07  STA ram_07BE_unk,X
C - - - - - 0x00E84C 03:A83C: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x00E84F 03:A83F: 9D B4 07  STA ram_07B4_unk,X
C - - - - - 0x00E852 03:A842: 38        SEC
C - - - - - 0x00E853 03:A843: 60        RTS
bra_A844:
C - - - - - 0x00E854 03:A844: A5 0A     LDA ram_000A_t03
C - - - - - 0x00E856 03:A846: 4C 09 A8  SEC
                                        SBC #$01
                                        STA ram_0778_unk,X
                                        SEC
                                        RTS



tbl_A849:
- D 1 - - - 0x00E859 03:A849: 00        .byte $00   ; 00 
- D 1 - - - 0x00E85A 03:A84A: 00        .byte $00   ; 01 
- D 1 - - - 0x00E85B 03:A84B: 00        .byte $00   ; 02 
- - - - - - 0x00E85C 03:A84C: 00        .byte $00   ; 03 
- D 1 - - - 0x00E85D 03:A84D: 00        .byte $00   ; 04 
- D 1 - - - 0x00E85E 03:A84E: 01        .byte $01   ; 05 



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_017_0x00E85F_47:
C - - J - - 0x00E85F 03:A84F: 20 47 9A  JSR sub_0x009A57
C - - - - - 0x00E862 03:A852: 9D 20 07  STA ram_0720_obj,X
C - - - - - 0x00E865 03:A855: 9D 4E 06  STA ram_obj_pos_X,X
C - - - - - 0x00E868 03:A858: 9D 68 06  STA ram_obj_pos_Y,X
C - - - - - 0x00E86B 03:A85B: 9D B2 06  STA ram_06B2_obj,X
C - - - - - 0x00E86E 03:A85E: A0 00     LDY #$00
bra_A860_loop:
C - - - - - 0x00E870 03:A860: A2 02     LDX #$02
C - - - - - 0x00E872 03:A862: 20 63 B3  JSR sub_B363
C - - - - - 0x00E875 03:A865: B0 58     BCS bra_A8BF
C - - - - - 0x00E877 03:A867: A2 04     LDX #$04
bra_A869_loop:
C - - - - - 0x00E879 03:A869: BD 82 07  LDA ram_0782_unk,X
C - - - - - 0x00E87C 03:A86C: D0 51     BNE bra_A8BF
C - - - - - 0x00E87E 03:A86E: E8        INX
C - - - - - 0x00E87F 03:A86F: E0 0A     CPX #$0A
C - - - - - 0x00E881 03:A871: 90 F6     BCC bra_A869_loop
C - - - - - 0x00E883 03:A873: A2 02     LDX #$02
C - - - - - 0x00E885 03:A875: A9 12     LDA #$12
C - - - - - 0x00E887 03:A877: 9D 82 07  STA ram_0782_unk,X
C - - - - - 0x00E88A 03:A87A: 98        TYA
C - - - - - 0x00E88B 03:A87B: 4A        LSR
C - - - - - 0x00E88C 03:A87C: A8        TAY
C - - - - - 0x00E88D 03:A87D: C8        INY
C - - - - - 0x00E88E 03:A87E: B9 D4 A8  LDA tbl_A8D5 - $01,Y
C - - - - - 0x00E891 03:A881: F0 1A     BEQ bra_A89D
C - - - - - 0x00E893 03:A883: C9 02     CMP #$02
C - - - - - 0x00E895 03:A885: D0 12     BNE bra_A899
C - - - - - 0x00E897 03:A887: A9 08     LDA #$08
C - - - - - 0x00E899 03:A889: 85 00     STA ram_0000_t20_pos_X
C - - - - - 0x00E89B 03:A88B: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x00E89E 03:A88E: 10 04     BPL bra_A894
C - - - - - 0x00E8A0 03:A890: A9 F8     LDA #$F8
C - - - - - 0x00E8A2 03:A892: 85 00     STA ram_0000_t20_pos_X
bra_A894:
C - - - - - 0x00E8A4 03:A894: A5 00     LDA ram_0000_t20_pos_X
C - - - - - 0x00E8A6 03:A896: 9D 4E 06  STA ram_obj_pos_X,X
bra_A899:
C - - - - - 0x00E8A9 03:A899: C4 8C     CPY ram_008C
C - - - - - 0x00E8AB 03:A89B: F0 2D     BEQ bra_A8CA
bra_A89D:
C - - - - - 0x00E8AD 03:A89D: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x00E8B0 03:A8A0: 18        CLC
C - - - - - 0x00E8B1 03:A8A1: 69 18     ADC #$18
C - - - - - 0x00E8B3 03:A8A3: C9 30     CMP #$30
C - - - - - 0x00E8B5 03:A8A5: B0 23     BCS bra_A8CA
C - - - - - 0x00E8B7 03:A8A7: B9 CE A8  LDA tbl_A8CF - $01,Y
C - - - - - 0x00E8BA 03:A8AA: 84 8C     STY ram_008C
C - - - - - 0x00E8BC 03:A8AC: 20 61 A3  JSR sub_0x00E371
C - - - - - 0x00E8BF 03:A8AF: A9 16     LDA #$16
C - - - - - 0x00E8C1 03:A8B1: 9D 20 07  STA ram_0720_obj,X
C - - - - - 0x00E8C4 03:A8B4: BD 00 06  LDA ram_0600_obj,X
C - - - - - 0x00E8C7 03:A8B7: 29 0F     AND #$0F
C - - - - - 0x00E8C9 03:A8B9: 9D 00 06  STA ram_0600_obj,X
C - - - - - 0x00E8CC 03:A8BC: 4C CA A8  JMP loc_A8CA
bra_A8BF:
C - - - - - 0x00E8CF 03:A8BF: C8        INY
C - - - - - 0x00E8D0 03:A8C0: C8        INY
C - - - - - 0x00E8D1 03:A8C1: C0 0A     CPY #$0A
C - - - - - 0x00E8D3 03:A8C3: 90 9B     BCC bra_A860_loop
C - - - - - 0x00E8D5 03:A8C5: A9 08     LDA #$08
C - - - - - 0x00E8D7 03:A8C7: 9D 68 06  STA ram_obj_pos_Y,X
bra_A8CA:
loc_A8CA:
C D 1 - - - 0x00E8DA 03:A8CA: A6 53     LDX ram_0053
C - - - - - 0x00E8DC 03:A8CC: 38        SEC
C - - - - - 0x00E8DD 03:A8CD: 60        RTS



tbl_A8CF:
- D 1 - - - 0x00E8DF 03:A8CF: 2A        .byte con_A36F_2A   ; 00 
- D 1 - - - 0x00E8E0 03:A8D0: 28        .byte con_A36F_28   ; 02 
- - - - - - 0x00E8E1 03:A8D1: 2C        .byte con_A36F_2C   ; 04 
- D 1 - - - 0x00E8E2 03:A8D2: 2A        .byte con_A36F_2A   ; 06 
- - - - - - 0x00E8E3 03:A8D3: 32        .byte con_A36F_32   ; 08 



tbl_A8D5:
- D 1 - - - 0x00E8E5 03:A8D5: 01        .byte $01   ; 00 
- D 1 - - - 0x00E8E6 03:A8D6: 01        .byte $01   ; 02 
- D 1 - - - 0x00E8E7 03:A8D7: 01        .byte $01   ; 04 
- D 1 - - - 0x00E8E8 03:A8D8: 02        .byte $02   ; 06 
- - - - - - 0x00E8E9 03:A8D9: 01        .byte $01   ; 08 



sub_B363:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x00F373 03:B363: B9 8F B3  LDA tbl_B38F,Y
C - - - - - 0x00F376 03:B366: 38        SEC
C - - - - - 0x00F377 03:B367: E5 61     SBC ram_0061_lo
C - - - - - 0x00F379 03:B369: 85 00     STA ram_0000_t87_pos_X
C - - - - - 0x00F37B 03:B36B: B9 90 B3  LDA tbl_B38F + $01,Y
C - - - - - 0x00F37E 03:B36E: E5 60     SBC ram_0060_hi
C - - - - - 0x00F380 03:B370: D0 1B     BNE bra_B38D
C - - - - - 0x00F382 03:B372: B9 97 B3  LDA tbl_B397,Y
C - - - - - 0x00F385 03:B375: 38        SEC
C - - - - - 0x00F386 03:B376: E5 64     SBC ram_0064_lo
C - - - - - 0x00F388 03:B378: 85 01     STA ram_0001_t26_pos_Y
C - - - - - 0x00F38A 03:B37A: B9 98 B3  LDA tbl_B397 + $01,Y
C - - - - - 0x00F38D 03:B37D: E5 63     SBC ram_0063_hi
C - - - - - 0x00F38F 03:B37F: D0 0C     BNE bra_B38D
C - - - - - 0x00F391 03:B381: A5 00     LDA ram_0000_t87_pos_X
C - - - - - 0x00F393 03:B383: 9D 4E 06  STA ram_obj_pos_X,X
C - - - - - 0x00F396 03:B386: A5 01     LDA ram_0001_t26_pos_Y
C - - - - - 0x00F398 03:B388: 9D 68 06  STA ram_obj_pos_Y,X
C - - - - - 0x00F39B 03:B38B: 18        CLC
C - - - - - 0x00F39C 03:B38C: 60        RTS
bra_B38D:
C - - - - - 0x00F39D 03:B38D: 38        SEC
C - - - - - 0x00F39E 03:B38E: 60        RTS



tbl_B38F:
;                                              +---------- 
;                                              |    +----- 
;                                              |    |
- D 1 - - - 0x00F39F 03:B38F: 89        .byte $89, $01   ; 00 
- D 1 - - - 0x00F3A1 03:B391: E8        .byte $E8, $02   ; 02 
- D 1 - - - 0x00F3A3 03:B393: 0E        .byte $0E, $02   ; 04 
- D 1 - - - 0x00F3A5 03:B395: 9D        .byte $9D, $02   ; 06 



tbl_B397:
;                                              +---------- 
;                                              |    +----- 
;                                              |    |
- D 1 - - - 0x00F3A7 03:B397: 5C        .byte $5C, $04   ; 00 
- D 1 - - - 0x00F3A9 03:B399: 45        .byte $45, $04   ; 02 
- D 1 - - - 0x00F3AB 03:B39B: 80        .byte $80, $03   ; 04 
- D 1 - - - 0x00F3AD 03:B39D: 95        .byte $95, $02   ; 06 



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_017_0x00E8EA_48:
C - - J - - 0x00E8EA 03:A8DA: A5 8D     LDA ram_008D
C - - - - - 0x00E8EC 03:A8DC: 30 30     BMI bra_A90E
C - - - - - 0x00E8EE 03:A8DE: 20 50 AB  LDA ram_0343
                                        CMP #$07
C - - - - - 0x00E8F1 03:A8E1: 90 2E     BCC bra_A911
C - - - - - 0x00E8F3 03:A8E3: A9 01     LDA #$01
C - - - - - 0x00E8F5 03:A8E5: 8D 40 03  STA ram_0340_flag
C - - - - - 0x00E8F8 03:A8E8: A5 60     LDA ram_0060_hi
C - - - - - 0x00E8FA 03:A8EA: D0 25     BNE bra_A911
C - - - - - 0x00E8FC 03:A8EC: A5 61     LDA ram_0061_lo
C - - - - - 0x00E8FE 03:A8EE: C9 02     CMP #$02
C - - - - - 0x00E900 03:A8F0: B0 1F     BCS bra_A911
C - - - - - 0x00E902 03:A8F2: 4C 49 AB  LDY #$0C
                                        JSR sub_0x00E933
                                        SEC
                                        RTS
bra_A911:
                                        CLC
                                        RTS
bra_A90E:
- - - - - - 0x00E91E 03:A90E: 20 13 A9  JSR sub_0x00E923
- - - - - - 0x00E921 03:A911: 18        CLC
- - - - - - 0x00E922 03:A912: 60        RTS



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_017_0x00E996_49:
C - - J - - 0x00E996 03:A986: 20 BD A9  JSR sub_0x00E9CD
C - - - - - 0x00E999 03:A989: B0 30     BCS bra_A98A
                                        JMP loc_0x00E99B
bra_A98A:
                                        SEC
                                        RTS



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_017_0x00EB0B_4A:
C - - J - - 0x00EB0B 03:AAFB: A4 8C     LDY ram_008C
C - - - - - 0x00EB0D 03:AAFD: B9 03 AB  LDA tbl_AB03,Y
C - - - - - 0x00EB10 03:AB00: 4C 61 A3  JMP loc_0x00E371



tbl_AB03:
- D 1 - - - 0x00EB13 03:AB03: 2E        .byte con_A36F_2E   ; 00 
- D 1 - - - 0x00EB14 03:AB04: 2E        .byte con_A36F_2E   ; 01 
- - - - - - 0x00EB15 03:AB05: 2F        .byte con_A36F_2F   ; 02 
- - - - - - 0x00EB16 03:AB06: 30        .byte con_A36F_30   ; 03 
- D 1 - - - 0x00EB17 03:AB07: 2E        .byte con_A36F_2E   ; 04 
- D 1 - - - 0x00EB18 03:AB08: 32        .byte con_A36F_32   ; 05 



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_017_0x00EB19_4B:
; bzk optimize
C - - J - - 0x00EB19 03:AB09: A0 02     LDY #$02
; copy position
C - - - - - 0x00EB1B 03:AB0B: 20 54 91  LDA ram_obj_pos_X,X
                                        STA ram_obj_pos_X,Y
                                        LDA ram_obj_pos_Y,X
                                        STA ram_obj_pos_Y,Y
; 
C - - - - - 0x00EB1E 03:AB0E: A5 8C     LDA ram_008C
C - - - - - 0x00EB20 03:AB10: C9 05     CMP #$05
C - - - - - 0x00EB22 03:AB12: F0 1B     BEQ bra_AB2F
C - - - - - 0x00EB24 03:AB14: B9 00 06  LDA ram_0600_obj,Y
C - - - - - 0x00EB27 03:AB17: 29 0F     AND #$0F
C - - - - - 0x00EB29 03:AB19: 99 00 06  STA ram_0600_obj,Y
C - - - - - 0x00EB2C 03:AB1C: A9 0E     LDA #$0E
C - - - - - 0x00EB2E 03:AB1E: 99 78 07  STA ram_0778_unk,Y
C - - - - - 0x00EB31 03:AB21: A9 12     LDA #$12
C - - - - - 0x00EB33 03:AB23: 99 D2 07  STA ram_07D2_unk,Y
C - - - - - 0x00EB36 03:AB26: A9 16     LDA #$16
C - - - - - 0x00EB38 03:AB28: 99 20 07  STA ram_0720_obj,Y
C - - - - - 0x00EB3B 03:AB2B: A9 05     LDA #$05
C - - - - - 0x00EB3D 03:AB2D: 85 8C     STA ram_008C
bra_AB2F:
C - - - - - 0x00EB3F 03:AB2F: 38        SEC
C - - - - - 0x00EB40 03:AB30: 60        RTS



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_017_0x00EAC9_4C:
C - - J - - 0x00EAC9 03:AAB9: 20 BD A9  JSR sub_0x00E9CD
C - - - - - 0x00EACC 03:AABC: B0 EC     BCS bra_AAFA_RTS
C - - - - - 0x00EACE 03:AABE: BD 78 07  LDA ram_0778_unk,X
C - - - - - 0x00EAD1 03:AAC1: 30 05     BMI bra_AAC8
C - - - - - 0x00EAD3 03:AAC3: A5 0A     LDA ram_000A_t03
C - - - - - 0x00EAD5 03:AAC5: 9D AA 07  STA ram_07AA_unk,X
bra_AAC8:
C - - - - - 0x00EAD8 03:AAC8: 20 06 AA  JSR sub_0x00EA16
C - - - - - 0x00EADB 03:AACB: A5 23     LDA ram_frm_cnt
C - - - - - 0x00EADD 03:AACD: 29 3F     AND #$3F
C - - - - - 0x00EADF 03:AACF: D0 28     BNE bra_AAF9
C - - - - - 0x00EAE1 03:AAD1: 20 E8 91  JSR sub_0x0091F8
C - - - - - 0x00EAE4 03:AAD4: A2 03     LDX #$03
C - - - - - 0x00EAE6 03:AAD6: A9 41     LDA #$41
C - - - - - 0x00EAE8 03:AAD8: 20 1F 97  JSR sub_0x00972F
C - - - - - 0x00EAEB 03:AADB: 90 05     BCC bra_AAE2
C - - - - - 0x00EAED 03:AADD: A6 53     LDX ram_0053
C - - - - - 0x00EAEF 03:AADF: 4C A4 A9  JMP loc_0x00E9B4
bra_AAE2:
C - - - - - 0x00EAF2 03:AAE2: A6 53     LDX ram_0053
C - - - - - 0x00EAF4 03:AAE4: B9 4E 06  LDA ram_obj_pos_X,Y
C - - - - - 0x00EAF7 03:AAE7: 18        CLC
C - - - - - 0x00EAF8 03:AAE8: 69 D8     ADC #$D8
C - - - - - 0x00EAFA 03:AAEA: 99 4E 06  STA ram_obj_pos_X,Y
C - - - - - 0x00EAFD 03:AAED: B9 68 06  LDA ram_obj_pos_Y,Y
C - - - - - 0x00EB00 03:AAF0: 18        CLC
C - - - - - 0x00EB01 03:AAF1: 69 18     ADC #$18
C - - - - - 0x00EB03 03:AAF3: 99 68 06  STA ram_obj_pos_Y,Y
C - - - - - 0x00EB06 03:AAF6: 4C A4 A9  JMP loc_0x00E9B4
bra_AAF9:
C - - - - - 0x00EB09 03:AAF9: 18        CLC
bra_AAFA_RTS:
C - - - - - 0x00EB0A 03:AAFA: 60        RTS



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_017_0x00EB41_4D:
C - - J - - 0x00EB41 03:AB31: 20 B1 91  JSR sub_91B1
C - - - - - 0x00EB44 03:AB34: A6 53     LDX ram_0053
C - - - - - 0x00EB46 03:AB36: A5 60     LDA ram_0060_hi
C - - - - - 0x00EB48 03:AB38: D0 59     BNE bra_AB93
C - - - - - 0x00EB4A 03:AB3A: A5 61     LDA ram_0061_lo
C - - - - - 0x00EB4C 03:AB3C: C9 02     CMP #$02
C - - - - - 0x00EB4E 03:AB3E: B0 53     BCS bra_AB93
C - - - - - 0x00EB50 03:AB40: A9 00     LDA #$00
C - - - - - 0x00EB52 03:AB42: 85 8D     STA ram_008D
C - - - - - 0x00EB54 03:AB44: A9 80     LDA #$80
C - - - - - 0x00EB56 03:AB46: 8D B5 06  STA ram_06B2_obj + $03
C D 1 - - - 0x00EB59 03:AB49: A0 0C     LDY #$0C
C - - - - - 0x00EB5B 03:AB4B: 20 23 A9  JSR sub_0x00E933
C - - - - - 0x00EB5E 03:AB4E: 38        SEC
C - - - - - 0x00EB5F 03:AB4F: 60        RTS



sub_91B1:
C - - - - - 0x0091C1 02:91B1: A2 03     LDX #$03
C - - - - - 0x0091C3 02:91B3: A9 00     LDA #$00
bra_91B5_loop:
; bzk optimize, распаковать цикл
C - - - - - 0x0091C5 02:91B5: 9D 46 03  STA ram_0346,X
C - - - - - 0x0091C8 02:91B8: CA        DEX
C - - - - - 0x0091C9 02:91B9: 10 FA     BPL bra_91B5_loop
C - - - - - 0x0091CB 02:91BB: A2 05     LDX #$05
bra_91BD_loop:
C - - - - - 0x0091CD 02:91BD: 95 A0     STA ram_array_00A0,X
C - - - - - 0x0091CF 02:91BF: 95 AB     STA ram_array_00AB,X
C - - - - - 0x0091D1 02:91C1: CA        DEX
C - - - - - 0x0091D2 02:91C2: 10 F9     BPL bra_91BD_loop
C - - - - - 0x0091D4 02:91C4: 60        RTS



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_017_0x00EB60_4E:
C - - J - - 0x00EB60 03:AB50: AD 43 03  LDA ram_0343
C - - - - - 0x00EB63 03:AB53: C9 07     CMP #$07
C - - - - - 0x00EB65 03:AB55: 60        RTS



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_017_0x0089AA_4F:
C - - J - - 0x0089AA 02:899A: A5 0A     LDA ram_000A_t03
C - - - - - 0x0089AC 02:899C: 4C F0 8C  STA ram_06B2_obj,X
                                        SEC
                                        RTS



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_017_0x00EB66_50:
C - - J - - 0x00EB66 03:AB56: AD 46 03  LDA ram_0346
C - - - - - 0x00EB69 03:AB59: 0D 47 03  ORA ram_0347
C - - - - - 0x00EB6C 03:AB5C: D0 1E     BNE bra_AB7C
C - - - - - 0x00EB6E 03:AB5E: A5 75     LDA ram_stage
C - - - - - 0x00EB70 03:AB60: C9 04     CMP #$04
C - - - - - 0x00EB72 03:AB62: F0 0F     BEQ bra_AB73
C - - - - - 0x00EB74 03:AB64: A5 AF     LDA ram_00AF_lo
C - - - - - 0x00EB76 03:AB66: C9 50     CMP #$50
C - - - - - 0x00EB78 03:AB68: 90 29     BCC bra_AB93
C - - - - - 0x00EB7A 03:AB6A: 20 16 AD  LDY #$01
                                        JSR sub_0x00E933
C D 1 - - - 0x00EB7D 03:AB6D: A9 00     LDA #$00
C - - - - - 0x00EB7F 03:AB6F: 85 98     STA ram_0098_counter
C - - - - - 0x00EB81 03:AB71: 38        SEC
C - - - - - 0x00EB82 03:AB72: 60        RTS
bra_AB73:
C - - - - - 0x00EB83 03:AB73: A5 AF     LDA ram_00AF_lo
C - - - - - 0x00EB85 03:AB75: C9 39     CMP #$39
C - - - - - 0x00EB87 03:AB77: 90 1A     BCC bra_AB93
C - - - - - 0x00EB89 03:AB79: 4C F5 A8  JMP loc_A8F5    ; out C = 1
bra_AB7C:
C - - - - - 0x00EB8C 03:AB7C: A5 75     LDA ram_stage
C - - - - - 0x00EB8E 03:AB7E: C9 04     CMP #$04
C - - - - - 0x00EB90 03:AB80: B0 13     BCS bra_AB95
C - - - - - 0x00EB92 03:AB82: A5 A0     LDA ram_00A0_hi
C - - - - - 0x00EB94 03:AB84: C9 04     CMP #$04
C - - - - - 0x00EB96 03:AB86: B0 0B     BCS bra_AB93
C - - - - - 0x00EB98 03:AB88: A5 A1     LDA ram_00A1_lo
C - - - - - 0x00EB9A 03:AB8A: C9 10     CMP #$10
loc_AB8C:
C D 1 - - - 0x00EB9C 03:AB8C: B0 05     BCS bra_AB93
C - - - - - 0x00EB9E 03:AB8E: A0 0B     LDY #$0B
C - - - - - 0x00EBA0 03:AB90: 20 23 A9  JSR sub_0x00E933
bra_AB93:
C - - - - - 0x00EBA3 03:AB93: 18        CLC
C - - - - - 0x00EBA4 03:AB94: 60        RTS
bra_AB95:
C - - - - - 0x00EBA5 03:AB95: A5 A0     LDA ram_00A0_hi
C - - - - - 0x00EBA7 03:AB97: C9 02     CMP #$02
C - - - - - 0x00EBA9 03:AB99: B0 F8     BCS bra_AB93
C - - - - - 0x00EBAB 03:AB9B: A5 A1     LDA ram_00A1_lo
C - - - - - 0x00EBAD 03:AB9D: C9 FE     CMP #$FE
C - - - - - 0x00EBAF 03:AB9F: 4C 8C AB  JMP loc_AB8C



loc_A8F5:
C D 1 - - - 0x00E905 03:A8F5: A9 00     LDA #$00
C - - - - - 0x00E907 03:A8F7: 9D 20 07  STA ram_0720_obj,X
C - - - - - 0x00E90A 03:A8FA: 9D 4E 06  STA ram_obj_pos_X,X
C - - - - - 0x00E90D 03:A8FD: A0 00     LDY #$00
C - - - - - 0x00E90F 03:A8FF: 20 23 A9  JSR sub_0x00E933
C - - - - - 0x00E912 03:A902: A9 27     LDA #$27
C - - - - - 0x00E914 03:A904: 9D 68 06  STA ram_obj_pos_Y,X
C - - - - - 0x00E917 03:A907: A9 60     LDA #$60
C - - - - - 0x00E919 03:A909: 9D 96 07  STA ram_0796_unk,X
C - - - - - 0x00E91C 03:A90C: 38        SEC
C - - - - - 0x00E91D 03:A90D: 60        RTS



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_017_0x00ED33_51:
                                       ;JMP loc_0x00ED33
; unused?
                                        CLC
                                        RTS



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_017_0x00ED33_52:
                                        JMP loc_0x00ED33



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_017_0x00EBBE_53:
C - - J - - 0x00EBBE 03:ABAE: BD 78 07  LDA ram_0778_unk,X
C - - - - - 0x00EBC1 03:ABB1: 30 05     BMI bra_ABB8
C - - - - - 0x00EBC3 03:ABB3: A4 0A     LDY ram_000A_t03
C - - - - - 0x00EBC5 03:ABB5: 20 23 A9  JSR sub_0x00E933
bra_ABB8:
C - - - - - 0x00EBC8 03:ABB8: 20 24 AC  JSR sub_AC24
C - - - - - 0x00EBCB 03:ABBB: 20 A2 AB  JSR sub_0x00EBB2
C - - - - - 0x00EBCE 03:ABBE: F0 20     BEQ bra_ABE0
C - - - - - 0x00EBD0 03:ABC0: BD 20 07  LDA ram_0720_obj,X
C - - - - - 0x00EBD3 03:ABC3: D0 0F     BNE bra_ABD4
C - - - - - 0x00EBD5 03:ABC5: A5 AB     LDA ram_00AB_hi
C - - - - - 0x00EBD7 03:ABC7: 10 19     BPL bra_ABE2
C - - - - - 0x00EBD9 03:ABC9: A5 AC     LDA ram_00AC_lo
C - - - - - 0x00EBDB 03:ABCB: C9 08     CMP #$08
C - - - - - 0x00EBDD 03:ABCD: B0 13     BCS bra_ABE2
C - - - - - 0x00EBDF 03:ABCF: A9 0E     LDA #$0E
C - - - - - 0x00EBE1 03:ABD1: 9D 20 07  STA ram_0720_obj,X
bra_ABD4:
C - - - - - 0x00EBE4 03:ABD4: AD 46 03  LDA ram_0346
C - - - - - 0x00EBE7 03:ABD7: 30 10     BMI bra_ABE9
C - - - - - 0x00EBE9 03:ABD9: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x00EBEC 03:ABDC: C9 60     CMP #$60
C - - - - - 0x00EBEE 03:ABDE: B0 07     BCS bra_ABE7
bra_ABE0:
C - - - - - 0x00EBF0 03:ABE0: 38        SEC
C - - - - - 0x00EBF1 03:ABE1: 60        RTS
bra_ABE2:
C - - - - - 0x00EBF2 03:ABE2: AD 46 03  LDA ram_0346
C - - - - - 0x00EBF5 03:ABE5: 30 09     BMI bra_ABF0
bra_ABE7:
C D 1 - - - 0x00EBF7 03:ABE7: 18        CLC
C - - - - - 0x00EBF8 03:ABE8: 60        RTS
bra_ABE9:
C - - - - - 0x00EBF9 03:ABE9: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x00EBFC 03:ABEC: C9 9F     CMP #$9F
C - - - - - 0x00EBFE 03:ABEE: B0 F8     BCS bra_AC23_RTS
bra_ABF0:
C - - - - - 0x00EC00 03:ABF0: AD 48 03  LDA ram_0348
C - - - - - 0x00EC03 03:ABF3: 30 08     BMI bra_ABFD
C - - - - - 0x00EC05 03:ABF5: A5 AF     LDA ram_00AF_lo
C - - - - - 0x00EC07 03:ABF7: C9 50     CMP #$50
C - - - - - 0x00EC09 03:ABF9: 90 27     BCC bra_AC22
C - - - - - 0x00EC0B 03:ABFB: B0 06     BCS bra_AC03    ; jmp
bra_ABFD:
C - - - - - 0x00EC0D 03:ABFD: A5 AF     LDA ram_00AF_lo
C - - - - - 0x00EC0F 03:ABFF: C9 32     CMP #$32
C - - - - - 0x00EC11 03:AC01: B0 1F     BCS bra_AC22
bra_AC03:
C - - - - - 0x00EC13 03:AC03: A5 AF     LDA ram_00AF_lo
C - - - - - 0x00EC15 03:AC05: 38        SEC
C - - - - - 0x00EC16 03:AC06: E9 40     SBC #$40
C - - - - - 0x00EC18 03:AC08: C9 10     CMP #$10
C - - - - - 0x00EC1A 03:AC0A: 90 16     BCC bra_AC22
C - - - - - 0x00EC1C 03:AC0C: AD 48 03  LDA ram_0348
C - - - - - 0x00EC1F 03:AC0F: 49 FF     EOR #$FF
C - - - - - 0x00EC21 03:AC11: 8D 48 03  STA ram_0348
C - - - - - 0x00EC24 03:AC14: AD 49 03  LDA ram_0349
C - - - - - 0x00EC27 03:AC17: 20 07 95  EOR #$FF
                                        CLC
                                        ADC #$01
C - - - - - 0x00EC2A 03:AC1A: 8D 49 03  STA ram_0349
C - - - - - 0x00EC2D 03:AC1D: 90 03     BCC bra_AC22
; if overflow
C - - - - - 0x00EC2F 03:AC1F: EE 48 03  INC ram_0348
bra_AC22:
C - - - - - 0x00EC32 03:AC22: 18        CLC
bra_AC23_RTS:
C - - - - - 0x00EC33 03:AC23: 60        RTS



sub_AC24:
; bzk optimize, out C flag is not checked anywhere
C - - - - - 0x00EC34 03:AC24: AD 46 03  LDA ram_0346
C - - - - - 0x00EC37 03:AC27: 30 24     BMI bra_AC4D
C - - - - - 0x00EC39 03:AC29: 20 4D AC  JSR sub_AC4D
C - - - - - 0x00EC3C 03:AC2C: A0 08     LDY #$08
C - - - - - 0x00EC3E 03:AC2E: BD 9C 06  LDA ram_069C_obj,X
C - - - - - 0x00EC41 03:AC31: C9 F8     CMP #$F8
C - - - - - 0x00EC43 03:AC33: F0 0C     BEQ bra_AC41
C - - - - - 0x00EC45 03:AC35: C9 40     CMP #$40
C - - - - - 0x00EC47 03:AC37: F0 08     BEQ bra_AC41
C - - - - - 0x00EC49 03:AC39: A0 06     LDY #$06
C - - - - - 0x00EC4B 03:AC3B: C9 C0     CMP #$C0
C - - - - - 0x00EC4D 03:AC3D: F0 02     BEQ bra_AC41
C - - - - - 0x00EC4F 03:AC3F: 18        CLC
C - - - - - 0x00EC50 03:AC40: 60        RTS
bra_AC41:
C - - - - - 0x00EC51 03:AC41: A9 0D     LDA #$0D
C - - - - - 0x00EC53 03:AC43: 99 78 07  STA ram_0778_unk,Y
C - - - - - 0x00EC56 03:AC46: 99 79 07  STA ram_0778_unk + $01,Y
bra_AC49:
C D 1 - - - 0x00EC59 03:AC49: A6 53     LDX ram_0053
C - - - - - 0x00EC5B 03:AC4B: 18        CLC
C - - - - - 0x00EC5C 03:AC4C: 60        RTS
bra_AC4D:
sub_AC4D:
C - - - - - 0x00EC5D 03:AC4D: BD 20 07  LDA ram_0720_obj,X
C - - - - - 0x00EC60 03:AC50: F0 F7     BEQ bra_AC49
C - - - - - 0x00EC62 03:AC52: AD B5 06  LDA ram_06B2_obj + $03
C - - - - - 0x00EC65 03:AC55: 8D AD 07  STA ram_07AA_unk + $03
C - - - - - 0x00EC68 03:AC58: 20 E8 91  JSR sub_0x0091F8
C - - - - - 0x00EC6B 03:AC5B: 29 7F     AND #$7F
C - - - - - 0x00EC6D 03:AC5D: 8D B5 06  STA ram_06B2_obj + $03
C - - - - - 0x00EC70 03:AC60: A0 00     LDY #$00
C - - - - - 0x00EC72 03:AC62: AD AD 07  LDA ram_07AA_unk + $03
C - - - - - 0x00EC75 03:AC65: CD B5 06  CMP ram_06B2_obj + $03
C - - - - - 0x00EC78 03:AC68: 90 01     BCC bra_AC6B
C - - - - - 0x00EC7A 03:AC6A: C8        INY ; 01
bra_AC6B:
C - - - - - 0x00EC7B 03:AC6B: 98        TYA
C - - - - - 0x00EC7C 03:AC6C: 8D B7 07  STA ram_07B4_unk + $03
C - - - - - 0x00EC7F 03:AC6F: A5 8D     LDA ram_008D
C - - - - - 0x00EC81 03:AC71: 29 40     AND #$40
C - - - - - 0x00EC83 03:AC73: D0 D4     BNE bra_AC49
C - - - - - 0x00EC85 03:AC75: AD AD 07  LDA ram_07AA_unk + $03
C - - - - - 0x00EC88 03:AC78: CD B5 06  CMP ram_06B2_obj + $03
C - - - - - 0x00EC8B 03:AC7B: F0 2A     BEQ bra_ACA7
C - - - - - 0x00EC8D 03:AC7D: 20 1D AD  JSR sub_0x01F6D1
                                        JSR sub_0x0093CA
C - - - - - 0x00EC90 03:AC80: 90 08     BCC bra_AC8A
C - - - - - 0x00EC92 03:AC82: AD AD 07  LDA ram_07AA_unk + $03
C - - - - - 0x00EC95 03:AC85: 8D B5 06  STA ram_06B2_obj + $03
C - - - - - 0x00EC98 03:AC88: 18        CLC
C - - - - - 0x00EC99 03:AC89: 60        RTS
bra_AC8A:
C - - - - - 0x00EC9A 03:AC8A: A9 20     LDA #$20
C - - - - - 0x00EC9C 03:AC8C: AC B7 07  LDY ram_07B4_unk + $03
C - - - - - 0x00EC9F 03:AC8F: F0 02     BEQ bra_AC93
C - - - - - 0x00ECA1 03:AC91: A9 E0     LDA #$E0
bra_AC93:
C - - - - - 0x00ECA3 03:AC93: 18        CLC
C - - - - - 0x00ECA4 03:AC94: 6D AD 07  ADC ram_07AA_unk + $03
C - - - - - 0x00ECA7 03:AC97: 8D B5 06  STA ram_06B2_obj + $03
C - - - - - 0x00ECAA 03:AC9A: AD B5 06  LDA ram_06B2_obj + $03
C - - - - - 0x00ECAD 03:AC9D: 4A        LSR
C - - - - - 0x00ECAE 03:AC9E: 20 B4 93  JSR sub_0x0093C4_LSRx4_TAY
C - - - - - 0x00ECB1 03:ACA1: B9 E6 AC  LDA tbl_ACE6,Y
C - - - - - 0x00ECB4 03:ACA4: 20 DC AC  JSR sub_0x00ECEC
bra_ACA7:
C - - - - - 0x00ECB7 03:ACA7: BD 9C 06  LDA ram_069C_obj,X
C - - - - - 0x00ECBA 03:ACAA: 29 07     AND #$07
C - - - - - 0x00ECBC 03:ACAC: D0 9B     BNE bra_AC49
C - - - - - 0x00ECBE 03:ACAE: AD B5 06  LDA ram_06B2_obj + $03
C - - - - - 0x00ECC1 03:ACB1: 29 F0     AND #$F0
C - - - - - 0x00ECC3 03:ACB3: F0 94     BEQ bra_AC49
C - - - - - 0x00ECC5 03:ACB5: C9 80     CMP #$80
C - - - - - 0x00ECC7 03:ACB7: F0 90     BEQ bra_AC49
C - - - - - 0x00ECC9 03:ACB9: A2 03     LDX #$03
C - - - - - 0x00ECCB 03:ACBB: A9 41     LDA #$41
C - - - - - 0x00ECCD 03:ACBD: 20 1F 97  JSR sub_0x00972F
C - - - - - 0x00ECD0 03:ACC0: 98        TYA
C - - - - - 0x00ECD1 03:ACC1: AA        TAX
C - - - - - 0x00ECD2 03:ACC2: 20 B1 93  JSR sub_0x0093C1_06B2x_LSRx4_TAY
C - - - - - 0x00ECD5 03:ACC5: AD 51 06  LDA ram_obj_pos_X + $03
C - - - - - 0x00ECD8 03:ACC8: 18        CLC
C - - - - - 0x00ECD9 03:ACC9: 79 E9 AC  ADC tbl_ACEB - $02,Y
C - - - - - 0x00ECDC 03:ACCC: 9D 4E 06  STA ram_obj_pos_X,X
C - - - - - 0x00ECDF 03:ACCF: AD 6B 06  LDA ram_obj_pos_Y + $03
C - - - - - 0x00ECE2 03:ACD2: 18        CLC
C - - - - - 0x00ECE3 03:ACD3: 79 EA AC  ADC tbl_ACEB - $01,Y
C - - - - - 0x00ECE6 03:ACD6: 9D 68 06  STA ram_obj_pos_Y,X
C - - - - - 0x00ECE9 03:ACD9: 4C 49 AC  LDX ram_0053
                                        CLC
                                        RTS



tbl_ACE6:
- - - - - - 0x00ECF6 03:ACE6: 38        .byte con_8F57_38   ; 00 
- D 1 - - - 0x00ECF7 03:ACE7: 34        .byte con_8F57_34   ; 01 
- D 1 - - - 0x00ECF8 03:ACE8: 30        .byte con_8F57_30   ; 02 
- D 1 - - - 0x00ECF9 03:ACE9: 2C        .byte con_8F57_2C   ; 03 
- - - - - - 0x00ECFA 03:ACEA: 28        .byte con_8F57_28   ; 04 



tbl_ACEB:
;                                              +---------- 
;                                              |    +----- 
;                                              |    |
- D 1 - - - 0x00ECFB 03:ACEB: 10        .byte $10, $0E   ; 01 
- D 1 - - - 0x00ECFD 03:ACED: 00        .byte $00, $10   ; 02 
- - - - - - 0x00ECFF 03:ACEF: F6        .byte $F6, $0E   ; 03 



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_017_0x00ED01_54:
C - - J - - 0x00ED01 03:ACF1: BD 78 07  LDA ram_0778_unk,X
C - - - - - 0x00ED04 03:ACF4: 30 05     BMI bra_ACFB
C - - - - - 0x00ED06 03:ACF6: A4 0A     LDY ram_000A_t03
C - - - - - 0x00ED08 03:ACF8: 20 23 A9  JSR sub_0x00E933
bra_ACFB:
C - - - - - 0x00ED0B 03:ACFB: 20 A2 AB  JSR sub_0x00EBB2
C - - - - - 0x00ED0E 03:ACFE: F0 1B     BEQ bra_AD1B
C - - - - - 0x00ED10 03:AD00: AD 48 03  LDA ram_0348
C - - - - - 0x00ED13 03:AD03: 30 09     BMI bra_AD0E
C - - - - - 0x00ED15 03:AD05: A5 AF     LDA ram_00AF_lo
C - - - - - 0x00ED17 03:AD07: C9 50     CMP #$50
C - - - - - 0x00ED19 03:AD09: B0 0B     BCS bra_AD16
C - - - - - 0x00ED1B 03:AD0B: 4C E7 AB  CLC
                                        RTS
bra_AD0E:
C - - - - - 0x00ED1E 03:AD0E: A5 AF     LDA ram_00AF_lo
C - - - - - 0x00ED20 03:AD10: C9 32     CMP #$32
C - - - - - 0x00ED22 03:AD12: 90 02     BCC bra_AD16
C - - - - - 0x00ED24 03:AD14: 18        CLC
C - - - - - 0x00ED25 03:AD15: 60        RTS
bra_AD16:
C D 1 - - - 0x00ED26 03:AD16: A0 01     LDY #$01
C - - - - - 0x00ED28 03:AD18: 20 23 A9  JSR sub_0x00E933
bra_AD1B:
C - - - - - 0x00ED2B 03:AD1B: 38        SEC
C - - - - - 0x00ED2C 03:AD1C: 60        RTS



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_017_0x00ED33_55:
                                       ;JMP loc_0x00ED33
; unused?
                                        CLC
                                        RTS



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_017_0x00EEB0_56:
C - - J - - 0x00EEB0 03:AEA0: BD 78 07  LDA ram_0778_unk,X
C - - - - - 0x00EEB3 03:AEA3: 30 0B     BMI bra_AEB0
C - - - - - 0x00EEB5 03:AEA5: A9 0A     LDA #$0A
C - - - - - 0x00EEB7 03:AEA7: 8D A1 05  STA ram_059E_se + $03
bra_AEAA:
C - - - - - 0x00EEBA 03:AEAA: A9 FF     LDA #$FF
C - - - - - 0x00EEBC 03:AEAC: 85 D3     STA ram_00D3
C - - - - - 0x00EEBE 03:AEAE: 18        CLC
C - - - - - 0x00EEBF 03:AEAF: 60        RTS
bra_AEB0:
C - - - - - 0x00EEC0 03:AEB0: A5 64     LDA ram_0064_lo
C - - - - - 0x00EEC2 03:AEB2: D0 F6     BNE bra_AEAA
C - - - - - 0x00EEC4 03:AEB4: 20 AF F6  JSR sub_0x01F6BF
C - - - - - 0x00EEC7 03:AEB7: 38        SEC
C - - - - - 0x00EEC8 03:AEB8: 60        RTS



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_017_0x008FF3_57:
                                        JMP loc_0x008FF3



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_017_0x00EE3D_58:
C - - J - - 0x00EE3D 03:AE2D: A5 0A     LDA ram_000A_t03
C - - - - - 0x00EE3F 03:AE2F: 20 00 97  JSR sub_0x009710
C - - - - - 0x00EE42 03:AE32: A9 00     LDA #$00
C - - - - - 0x00EE44 03:AE34: 99 20 07  STA ram_0720_obj,Y
C - - - - - 0x00EE47 03:AE37: 38        SEC
C - - - - - 0x00EE48 03:AE38: 60        RTS



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_017_0x00EDC9_59:
C - - J - - 0x00EDC9 03:ADB9: A4 8C     LDY ram_008C
C - - - - - 0x00EDCB 03:ADBB: B9 C1 AD  LDA tbl_ADC1,Y
C - - - - - 0x00EDCE 03:ADBE: 4C 61 A3  JMP loc_0x00E371



tbl_ADC1:
- - - - - - 0x00EDD1 03:ADC1: 21        .byte con_A36F_21   ; 00 
- - - - - - 0x00EDD2 03:ADC2: 21        .byte con_A36F_21   ; 01 
- D 1 - - - 0x00EDD3 03:ADC3: 34        .byte con_A36F_34   ; 02 
- - - - - - 0x00EDD4 03:ADC4: 34        .byte con_A36F_34   ; 03 
- - - - - - 0x00EDD5 03:ADC5: 21        .byte con_A36F_21   ; 04 
- D 1 - - - 0x00EDD6 03:ADC6: 38        .byte con_A36F_38   ; 05 



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_017_0x00EDD7_5A:
C - - J - - 0x00EDD7 03:ADC7: A4 8C     LDY ram_008C
C - - - - - 0x00EDD9 03:ADC9: B9 CF AD  LDA tbl_ADCF,Y
C - - - - - 0x00EDDC 03:ADCC: 4C 61 A3  JMP loc_0x00E371



tbl_ADCF:
- D 1 - - - 0x00EDDF 03:ADCF: 20        .byte con_A36F_20   ; 00 
- - - - - - 0x00EDE0 03:ADD0: 20        .byte con_A36F_20   ; 01 
- - - - - - 0x00EDE1 03:ADD1: 34        .byte con_A36F_34   ; 02 
- - - - - - 0x00EDE2 03:ADD2: 2C        .byte con_A36F_2C   ; 03 
- D 1 - - - 0x00EDE3 03:ADD3: 2A        .byte con_A36F_2A   ; 04 
- D 1 - - - 0x00EDE4 03:ADD4: 32        .byte con_A36F_32   ; 05 



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_017_0x008D30_5B:
C - - J - - 0x008D30 02:8D20: A5 60     LDA ram_0060_hi
C - - - - - 0x008D32 02:8D22: C9 02     CMP #$02
C - - - - - 0x008D34 02:8D24: D0 06     BNE bra_8D2C
C - - - - - 0x008D36 02:8D26: A5 61     LDA ram_0061_lo
C - - - - - 0x008D38 02:8D28: C9 C0     CMP #$C0
C - - - - - 0x008D3A 02:8D2A: 90 28     BCC bra_8D54
bra_8D2C:
C - - - - - 0x008D3C 02:8D2C: 20 64 8D  JSR sub_8D64
C - - - - - 0x008D3F 02:8D2F: B0 23     BCS bra_8D54
C - - - - - 0x008D41 02:8D31: BD B4 07  LDA ram_07B4_unk,X
C - - - - - 0x008D44 02:8D34: 29 03     AND #$03
C - - - - - 0x008D46 02:8D36: A8        TAY
C - - - - - 0x008D47 02:8D37: B9 7D 8D  LDA tbl_8D7D,Y
C - - - - - 0x008D4A 02:8D3A: 18        CLC
C - - - - - 0x008D4B 02:8D3B: 7D 8C 07  ADC ram_078C_unk,X
C - - - - - 0x008D4E 02:8D3E: 85 00     STA ram_0000_t52
C - - - - - 0x008D50 02:8D40: 6A        ROR
C - - - - - 0x008D51 02:8D41: 59 7D 8D  EOR tbl_8D7D,Y
C - - - - - 0x008D54 02:8D44: 5D B4 07  EOR ram_07B4_unk,X
C - - - - - 0x008D57 02:8D47: 2A        ROL
C - - - - - 0x008D58 02:8D48: B0 0F     BCS bra_8D59
C - - - - - 0x008D5A 02:8D4A: A5 00     LDA ram_0000_t52
C - - - - - 0x008D5C 02:8D4C: 9D 4E 06  STA ram_obj_pos_X,X
C - - - - - 0x008D5F 02:8D4F: 20 59 8D  JSR sub_8D59
C - - - - - 0x008D62 02:8D52: 38        SEC
C - - - - - 0x008D63 02:8D53: 60        RTS
bra_8D54:
C - - - - - 0x008D64 02:8D54: 20 17 9A  JSR sub_0x009A27
C - - - - - 0x008D67 02:8D57: 38        SEC
C - - - - - 0x008D68 02:8D58: 60        RTS
bra_8D59:
sub_8D59:
; bzk optimize, INC,X + LDA,X + AND 03 + STA,X
C - - - - - 0x008D69 02:8D59: BD B4 07  LDA ram_07B4_unk,X
C - - - - - 0x008D6C 02:8D5C: 18        CLC
C - - - - - 0x008D6D 02:8D5D: 69 01     ADC #$01
C - - - - - 0x008D6F 02:8D5F: 29 03     AND #$03
C - - - - - 0x008D71 02:8D61: 4C C4 8D  STA ram_07B4_unk,X
                                        CLC
                                        RTS



tbl_8D7D:
- D 0 - - - 0x008D8D 02:8D7D: C0        .byte $C0   ; 00 
- D 0 - - - 0x008D8E 02:8D7E: 00        .byte $00   ; 01 
- D 0 - - - 0x008D8F 02:8D7F: 40        .byte $40   ; 02 
- D 0 - - - 0x008D90 02:8D80: 7F        .byte $7F   ; 03 



sub_8D64:
C - - - - - 0x008D74 02:8D64: BD 00 06  LDA ram_0600_obj,X
C - - - - - 0x008D77 02:8D67: 29 0F     AND #$0F
C - - - - - 0x008D79 02:8D69: 9D 00 06  STA ram_0600_obj,X
C - - - - - 0x008D7C 02:8D6C: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x008D7F 02:8D6F: 48        PHA
C - - - - - 0x008D80 02:8D70: 20 81 8D  JSR sub_0x008D91
C - - - - - 0x008D83 02:8D73: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x008D86 02:8D76: 9D 8C 07  STA ram_078C_unk,X
C - - - - - 0x008D89 02:8D79: 68        PLA
C - - - - - 0x008D8A 02:8D7A: 4C 2C 8F  STA ram_obj_pos_X,X
                                        CLC
                                        RTS



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_017_0x00EDE5_5C:
C - - J - - 0x00EDE5 03:ADD5: A0 00     LDY #$00
C - - - - - 0x00EDE7 03:ADD7: 20 EB AD  JSR sub_ADEB
C - - - - - 0x00EDEA 03:ADDA: 90 0A     BCC bra_ADE6
C - - - - - 0x00EDEC 03:ADDC: C8        INY ; 01
C - - - - - 0x00EDED 03:ADDD: 20 EB AD  JSR sub_ADEB
C - - - - - 0x00EDF0 03:ADE0: 90 04     BCC bra_ADE6
C - - - - - 0x00EDF2 03:ADE2: A9 28     LDA #con_A36F_28
C - - - - - 0x00EDF4 03:ADE4: D0 02     BNE bra_ADE8    ; jmp
bra_ADE6:
C - - - - - 0x00EDF6 03:ADE6: A9 37     LDA #con_A36F_37
bra_ADE8:
C - - - - - 0x00EDF8 03:ADE8: 4C 61 A3  JMP loc_0x00E371



sub_ADEB:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x00EDFB 03:ADEB: B9 82 07  LDA ram_0782_unk,Y
C - - - - - 0x00EDFE 03:ADEE: F0 13     BEQ bra_AE03
C - - - - - 0x00EE00 03:ADF0: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x00EE03 03:ADF3: D9 4E 06  CMP ram_obj_pos_X,Y
C - - - - - 0x00EE06 03:ADF6: 6A        ROR
C - - - - - 0x00EE07 03:ADF7: 5D B2 06  EOR ram_06B2_obj,X
C - - - - - 0x00EE0A 03:ADFA: 2A        ROL
C - - - - - 0x00EE0B 03:ADFB: B0 06     BCS bra_AE03
C - - - - - 0x00EE0D 03:ADFD: 20 F4 94  JSR sub_0x009504
C - - - - - 0x00EE10 03:AE00: C9 18     CMP #$18
C - - - - - 0x00EE12 03:AE02: 60        RTS
bra_AE03:
C - - - - - 0x00EE13 03:AE03: 38        SEC
C - - - - - 0x00EE14 03:AE04: 60        RTS



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_017_0x00EE15_5D:
C - - J - - 0x00EE15 03:AE05: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x00EE18 03:AE08: 18        CLC
C - - - - - 0x00EE19 03:AE09: 69 30     ADC #$30
C - - - - - 0x00EE1B 03:AE0B: C9 60     CMP #$60
C - - - - - 0x00EE1D 03:AE0D: 90 14     BCC bra_AE23
C - - - - - 0x00EE1F 03:AE0F: A0 03     LDY #$03
C - - - - - 0x00EE21 03:AE11: B9 4E 06  LDA ram_obj_pos_X,Y
C - - - - - 0x00EE24 03:AE14: 5D 4E 06  EOR ram_obj_pos_X,X
C - - - - - 0x00EE27 03:AE17: 10 0A     BPL bra_AE23
C - - - - - 0x00EE29 03:AE19: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x00EE2C 03:AE1C: 29 80     AND #$80
C - - - - - 0x00EE2E 03:AE1E: 49 80     EOR #$80
C - - - - - 0x00EE30 03:AE20: 4C 28 AE  JMP loc_AE28
bra_AE23:
C - - - - - 0x00EE33 03:AE23: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x00EE36 03:AE26: 29 80     AND #$80
loc_AE28:
C D 1 - - - 0x00EE38 03:AE28: 9D B2 06  STA ram_06B2_obj,X
C - - - - - 0x00EE3B 03:AE2B: 38        SEC
C - - - - - 0x00EE3C 03:AE2C: 60        RTS



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_017_0x00EE49_5E:
- - - - - - 0x00EE49 03:AE39: A9 A9     LDA #$29 + $80
- - - - - - 0x00EE4B 03:AE3B: CD 8B 07  CMP ram_0782_unk + $09
- - - - - - 0x00EE4E 03:AE3E: F0 6E     BEQ bra_AE63
- - - - - - 0x00EE50 03:AE40: 8D 8B 07  STA ram_0782_unk + $09
- - - - - - 0x00EE53 03:AE43: AD 50 06  LDA ram_obj_pos_X + $02
- - - - - - 0x00EE56 03:AE46: 8D 57 06  STA ram_obj_pos_X + $09
- - - - - - 0x00EE59 03:AE49: AD CA 06  LDA ram_obj_spd_X + $02
- - - - - - 0x00EE5C 03:AE4C: 8D D1 06  STA ram_obj_spd_X + $09
- - - - - - 0x00EE5F 03:AE4F: AD 6A 06  LDA ram_obj_pos_Y + $02
- - - - - - 0x00EE62 03:AE52: 8D 71 06  STA ram_obj_pos_Y + $09
- - - - - - 0x00EE65 03:AE55: AD E0 06  LDA ram_obj_spd_Y + $02
- - - - - - 0x00EE68 03:AE58: 8D E7 06  STA ram_obj_spd_Y + $09
- - - - - - 0x00EE6B 03:AE5B: A9 00     LDA #$00
- - - - - - 0x00EE6D 03:AE5D: 8D 81 07  STA ram_0778_unk + $09
- - - - - - 0x00EE70 03:AE60: A9 C2     LDA #$C2
- - - - - - 0x00EE72 03:AE62: 8D BB 06  STA ram_06B2_obj + $09
- - - - - - 0x00EE75 03:AE65: 38        SEC
- - - - - - 0x00EE76 03:AE66: 60        RTS
bra_AE63:
                                        CLC
                                        RTS



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_017_0x00E923_5F:
                                        JMP loc_0x00E923



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_017_0x00EE77_60:
- - - - - - 0x00EE77 03:AE67: A5 8D     LDA ram_008D
- - - - - - 0x00EE79 03:AE69: 10 43     BPL bra_AE6F
- - - - - - 0x00EE7B 03:AE6B: AD 43 03  LDA ram_0343
- - - - - - 0x00EE7E 03:AE6E: D0 3E     BNE bra_AE6F
- - - - - - 0x00EE80 03:AE70: 38        SEC
- - - - - - 0x00EE81 03:AE71: 60        RTS
bra_AE6F:
                                        CLC
                                        RTS



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_017_0x00E54C_61:
C - - J - - 0x00E54C 03:A53C: A5 63     LDA ram_0063_hi
C - - - - - 0x00E54E 03:A53E: C9 02     CMP #$02
C - - - - - 0x00E550 03:A540: B0 5F     BCS bra_A5A1
C - - - - - 0x00E552 03:A542: A5 64     LDA ram_0064_lo
C - - - - - 0x00E554 03:A544: C9 20     CMP #$20
C - - - - - 0x00E556 03:A546: B0 59     BCS bra_A5A1
C - - - - - 0x00E558 03:A548: A5 60     LDA ram_0060_hi
C - - - - - 0x00E55A 03:A54A: C9 02     CMP #$02
C - - - - - 0x00E55C 03:A54C: B0 53     BCS bra_A5A1
C - - - - - 0x00E55E 03:A54E: A9 01     LDA #$01
C - - - - - 0x00E560 03:A550: 8D 40 03  STA ram_0340_flag
C - - - - - 0x00E563 03:A553: 38        SEC
C - - - - - 0x00E564 03:A554: 60        RTS
bra_A5A1:
C - - - - - 0x00E5B1 03:A5A1: 18        CLC
C - - - - - 0x00E5B2 03:A5A2: 60        RTS



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_017_0x00EE82_62:
C - - J - - 0x00EE82 03:AE72: A5 64     LDA ram_0064_lo
C - - - - - 0x00EE84 03:AE74: C9 02     CMP #$02
C - - - - - 0x00EE86 03:AE76: 90 14     BCC bra_AE8C
C - - - - - 0x00EE88 03:AE78: 20 58 97  JSR sub_0x009768
C - - - - - 0x00EE8B 03:AE7B: 90 0D     BCC bra_AE8A
- - - - - - 0x00EE8D 03:AE7D: A0 00     LDY #$00
- - - - - - 0x00EE8F 03:AE7F: 20 92 AE  JSR sub_AE92
- - - - - - 0x00EE92 03:AE82: B0 2A     BCS bra_AE90
- - - - - - 0x00EE94 03:AE84: C8        INY ; 01
- - - - - - 0x00EE95 03:AE85: 20 92 AE  JSR sub_AE92
- - - - - - 0x00EE98 03:AE88: B0 24     BCS bra_AE90
bra_AE8A:
C - - - - - 0x00EE9A 03:AE8A: 38        SEC
C - - - - - 0x00EE9B 03:AE8B: 60        RTS
bra_AE8C:
- - - - - - 0x00EE9C 03:AE8C: FE 78 07  INC ram_0778_unk,X
- - - - - - 0x00EE9F 03:AE8F: 4C B4 AE  JSR sub_0x01F6BF
                                        SEC
                                        RTS
bra_AE90:
                                        CLC
                                        RTS



sub_AE92:
; out
    ; C
        ; 0 = 
        ; 1 = 
- - - - - - 0x00EEA2 03:AE92: B9 82 07  LDA ram_0782_unk,Y
- - - - - - 0x00EEA5 03:AE95: F0 17     BEQ bra_AE9E
- - - - - - 0x00EEA7 03:AE97: B9 68 06  LDA ram_obj_pos_Y,Y
- - - - - - 0x00EEAA 03:AE9A: 18        CLC
- - - - - - 0x00EEAB 03:AE9B: 69 50     ADC #$50
- - - - - - 0x00EEAD 03:AE9D: C9 10     CMP #$10
- - - - - - 0x00EEAF 03:AE9F: 60        RTS
bra_AE9E:
                                        CLC
                                        RTS



.out .sprintf("Free bytes in bank 22: 0x%04X [%d]", ($D140 - *), ($D140 - *))



.segment "DPCM_22"
.incbin "DPCM.bin"
.org $D140  ; for listing file



