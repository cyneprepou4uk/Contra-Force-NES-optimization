.segment "BANK_02"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $8000  ; for listing file
; 0x004010-0x00600F

; код в банке перемещается целиком

.export ofs_006_0x01711D_0E



ofs_006_0x01711D_0E:
; con_F3D6_0E
C - - J - - 0x01711D 05:B10D: A5 20     LDA ram_script_hi
C - - - - - 0x01711F 05:B10F: C9 04     CMP #con_0020_04
C - - - - - 0x017121 05:B111: D0 07     BNE bra_B11A
- - - - - - 0x017123 05:B113: A9 00     LDA #$00
- - - - - - 0x017125 05:B115: 85 00     STA ram_0000_t77
- - - - - - 0x017127 05:B117: 85 01     STA ram_0001_t22_btns_ABSS
- - - - - - 0x017129 05:B119: 60        RTS
bra_B11A:
C - - - - - 0x01712A 05:B11A: B5 B1     LDA ram_current_player,X
C - - - - - 0x01712C 05:B11C: 29 0F     AND #$0F
C - - - - - 0x01712E 05:B11E: A8        TAY
C - - - - - 0x01712F 05:B11F: B9 7F 00  LDA ram_player_stats,Y
C - - - - - 0x017132 05:B122: 30 03     BMI bra_B127
C - - - - - 0x017134 05:B124: 4C D5 B1  JMP loc_B1D5
bra_B127:
C - - - - - 0x017137 05:B127: A5 C3     LDA ram_00C3
C - - - - - 0x017139 05:B129: F0 6D     BEQ bra_B198
C - - - - - 0x01713B 05:B12B: 29 07     AND #$07
C - - - - - 0x01713D 05:B12D: 0A        ASL
C - - - - - 0x01713E 05:B12E: 85 00     STA ram_0000_t40
C - - - - - 0x017140 05:B130: 20 B5 B1  JSR sub_B1B5
C - - - - - 0x017143 05:B133: A4 00     LDY ram_0000_t40
C - - - - - 0x017145 05:B135: B9 74 03  LDA ram_0374_cpu,Y
C - - - - - 0x017148 05:B138: C5 01     CMP ram_0001_t22_btns_ABSS
C - - - - - 0x01714A 05:B13A: F0 1C     BEQ bra_B158
bra_B13C_loop:
C - - - - - 0x01714C 05:B13C: A5 C3     LDA ram_00C3
C - - - - - 0x01714E 05:B13E: 18        CLC
C - - - - - 0x01714F 05:B13F: 69 01     ADC #$01
C - - - - - 0x017151 05:B141: 29 07     AND #$07
C - - - - - 0x017153 05:B143: 85 00     STA ram_0000_t6E
C - - - - - 0x017155 05:B145: 0A        ASL
C - - - - - 0x017156 05:B146: A8        TAY
C - - - - - 0x017157 05:B147: A5 01     LDA ram_0001_t22_btns_ABSS
C - - - - - 0x017159 05:B149: 99 74 03  STA ram_0374_cpu,Y
C - - - - - 0x01715C 05:B14C: A5 C3     LDA ram_00C3
C - - - - - 0x01715E 05:B14E: 29 F0     AND #$F0
C - - - - - 0x017160 05:B150: 05 00     ORA ram_0000_t6E
C - - - - - 0x017162 05:B152: 85 C3     STA ram_00C3
C - - - - - 0x017164 05:B154: 29 07     AND #$07
C - - - - - 0x017166 05:B156: 0A        ASL
C - - - - - 0x017167 05:B157: A8        TAY
bra_B158:
C - - - - - 0x017168 05:B158: B9 75 03  LDA ram_0374_cpu + $01,Y
C - - - - - 0x01716B 05:B15B: 18        CLC
C - - - - - 0x01716C 05:B15C: 69 01     ADC #$01
C - - - - - 0x01716E 05:B15E: 99 75 03  STA ram_0374_cpu + $01,Y
C - - - - - 0x017171 05:B161: C9 FF     CMP #$FF
C - - - - - 0x017173 05:B163: F0 D7     BEQ bra_B13C_loop
C - - - - - 0x017175 05:B165: A5 C3     LDA ram_00C3
C - - - - - 0x017177 05:B167: 29 70     AND #$70
; / 08
C - - - - - 0x017179 05:B169: 4A        LSR
C - - - - - 0x01717A 05:B16A: 4A        LSR
C - - - - - 0x01717B 05:B16B: 4A        LSR
C - - - - - 0x01717C 05:B16C: A8        TAY
C - - - - - 0x01717D 05:B16D: B9 75 03  LDA ram_0374_cpu + $01,Y
C - - - - - 0x017180 05:B170: 38        SEC
C - - - - - 0x017181 05:B171: E9 01     SBC #$01
C - - - - - 0x017183 05:B173: 99 75 03  STA ram_0374_cpu + $01,Y
C - - - - - 0x017186 05:B176: D0 11     BNE bra_B189
C - - - - - 0x017188 05:B178: A5 C3     LDA ram_00C3
C - - - - - 0x01718A 05:B17A: 18        CLC
C - - - - - 0x01718B 05:B17B: 69 10     ADC #$10
C - - - - - 0x01718D 05:B17D: 29 70     AND #$70
C - - - - - 0x01718F 05:B17F: 85 00     STA ram_0000_t94
C - - - - - 0x017191 05:B181: A5 C3     LDA ram_00C3
C - - - - - 0x017193 05:B183: 29 0F     AND #$0F
C - - - - - 0x017195 05:B185: 05 00     ORA ram_0000_t94
C - - - - - 0x017197 05:B187: 85 C3     STA ram_00C3
bra_B189:
C - - - - - 0x017199 05:B189: B9 74 03  LDA ram_0374_cpu,Y
C - - - - - 0x01719C 05:B18C: 29 0F     AND #$0F
C - - - - - 0x01719E 05:B18E: 85 00     STA ram_0000_t77
C - - - - - 0x0171A0 05:B190: B9 74 03  LDA ram_0374_cpu,Y
C - - - - - 0x0171A3 05:B193: 29 F0     AND #$F0
C - - - - - 0x0171A5 05:B195: 85 01     STA ram_0001_t22_btns_ABSS
C - - - - - 0x0171A7 05:B197: 60        RTS
bra_B198:
C - - - - - 0x0171A8 05:B198: 20 39 B3  JSR sub_B339
C - - - - - 0x0171AB 05:B19B: A9 00     LDA #$00
C - - - - - 0x0171AD 05:B19D: 85 00     STA ram_0000_t77
C - - - - - 0x0171AF 05:B19F: 8D 74 03  STA ram_0374_cpu
C - - - - - 0x0171B2 05:B1A2: A9 10     LDA #$10
C - - - - - 0x0171B4 05:B1A4: 8D 75 03  STA ram_0374_cpu + $01
C - - - - - 0x0171B7 05:B1A7: E6 C3     INC ram_00C3
C - - - - - 0x0171B9 05:B1A9: 20 B5 B1  JSR sub_B1B5
C - - - - - 0x0171BC 05:B1AC: 8D 76 03  STA ram_0374_cpu + $02
C - - - - - 0x0171BF 05:B1AF: A9 01     LDA #$01
C - - - - - 0x0171C1 05:B1B1: 8D 77 03  STA ram_0374_cpu + $03
C - - - - - 0x0171C4 05:B1B4: 60        RTS



sub_B1B5:
; in
    ; X = player index
; out
    ; ram_0001_t22_btns_ABSS
C - - - - - 0x0171C5 05:B1B5: 8A        TXA
C - - - - - 0x0171C6 05:B1B6: 49 01     EOR #$01
C - - - - - 0x0171C8 05:B1B8: A8        TAY
C - - - - - 0x0171C9 05:B1B9: 84 02     STY ram_0002_t17
C - - - - - 0x0171CB 05:B1BB: B9 42 00  LDA ram_btn_hold_1,Y
C - - - - - 0x0171CE 05:B1BE: 29 0F     AND #con_btns_Dpad
C - - - - - 0x0171D0 05:B1C0: A8        TAY
C - - - - - 0x0171D1 05:B1C1: 20 38 F3  LDA tbl_0x01F34C_dpad_buttons_conversion,Y
C - - - - - 0x0171D4 05:B1C4: 85 01     STA ram_0001_t41
C - - - - - 0x0171D6 05:B1C6: A4 02     LDY ram_0002_t17
C - - - - - 0x0171D8 05:B1C8: B9 42 00  LDA ram_btn_hold_1,Y
C - - - - - 0x0171DB 05:B1CB: 19 40 00  ORA ram_btn_press_1,Y
C - - - - - 0x0171DE 05:B1CE: 29 F0     AND #con_btns_ABSS
C - - - - - 0x0171E0 05:B1D0: 05 01     ORA ram_0001_t41
C - - - - - 0x0171E2 05:B1D2: 85 01     STA ram_0001_t22_btns_ABSS
C - - - - - 0x0171E4 05:B1D4: 60        RTS



loc_B1D5:
C D 1 - - - 0x0171E5 05:B1D5: A5 23     LDA ram_frm_cnt
C - - - - - 0x0171E7 05:B1D7: 29 07     AND #$07
C - - - - - 0x0171E9 05:B1D9: 20 47 B5  JSR sub_B547
C - - - - - 0x0171EC 05:B1DC: 20 DA B5  JSR sub_B5DA
C - - - - - 0x0171EF 05:B1DF: 20 D0 B5  JSR sub_B5D0
C - - - - - 0x0171F2 05:B1E2: 20 20 B2  JSR sub_B220
C - - - - - 0x0171F5 05:B1E5: A9 00     LDA #$00
C - - - - - 0x0171F7 05:B1E7: 85 1F     STA ram_001F_t12
C - - - - - 0x0171F9 05:B1E9: BD 78 07  LDA ram_0778_unk,X
C - - - - - 0x0171FC 05:B1EC: 0A        ASL
C - - - - - 0x0171FD 05:B1ED: A8        TAY
C - - - - - 0x0171FE 05:B1EE: B9 DD B2  LDA tbl_B2DC + $01,Y
C - - - - - 0x017201 05:B1F1: 85 00     STA ram_0000_t23
C - - - - - 0x017203 05:B1F3: B9 DC B2  LDA tbl_B2DC,Y
C - - - - - 0x017206 05:B1F6: 0A        ASL
C - - - - - 0x017207 05:B1F7: A8        TAY
C - - - - - 0x017208 05:B1F8: B9 0A B3  LDA tbl_B30A,Y
C - - - - - 0x01720B 05:B1FB: 85 02     STA ram_0002_t08_jmp
C - - - - - 0x01720D 05:B1FD: B9 0B B3  LDA tbl_B30A + $01,Y
C - - - - - 0x017210 05:B200: 85 03     STA ram_0002_t08_jmp + $01
C - - - - - 0x017212 05:B202: 20 1D B2  JSR sub_B21D_execute_indirect_jump_0002
C - - - - - 0x017215 05:B205: 90 03     BCC bra_B20A
C - - - - - 0x017217 05:B207: FE 78 07  INC ram_0778_unk,X
bra_B20A:
C - - - - - 0x01721A 05:B20A: A5 1F     LDA ram_001F_t12
C - - - - - 0x01721C 05:B20C: D0 07     BNE bra_B215
C - - - - - 0x01721E 05:B20E: BD 8C 07  LDA ram_078C_unk,X
C - - - - - 0x017221 05:B211: 29 0F     AND #$0F
C - - - - - 0x017223 05:B213: 85 00     STA ram_0000_t77
bra_B215:
C - - - - - 0x017225 05:B215: BD 8C 07  LDA ram_078C_unk,X
C - - - - - 0x017228 05:B218: 29 F0     AND #$F0
C - - - - - 0x01722A 05:B21A: 85 01     STA ram_0001_t22_btns_ABSS
C - - - - - 0x01722C 05:B21C: 60        RTS



tbl_B2DC:
;                                              +---------- index for 0x01731A
;                                              |    +----- 
;                                              |    |
- D 1 - - - 0x0172EC 05:B2DC: 09        .byte $09, $00   ; 00 
- D 1 - - - 0x0172EE 05:B2DE: 00        .byte $00, $00   ; 01 
- D 1 - - - 0x0172F0 05:B2E0: 02        .byte $02, $00   ; 02 
- D 1 - - - 0x0172F2 05:B2E2: 03        .byte $03, $00   ; 03 
- D 1 - - - 0x0172F4 05:B2E4: 04        .byte $04, $00   ; 04 
- D 1 - - - 0x0172F6 05:B2E6: 05        .byte $05, $00   ; 05 
- D 1 - - - 0x0172F8 05:B2E8: 03        .byte $03, $01   ; 06 
- D 1 - - - 0x0172FA 05:B2EA: 0B        .byte $0B, $10   ; 07 
- D 1 - - - 0x0172FC 05:B2EC: 0D        .byte $0D, $00   ; 08 
- D 1 - - - 0x0172FE 05:B2EE: 0C        .byte $0C, $10   ; 09 
- D 1 - - - 0x017300 05:B2F0: 0E        .byte $0E, $00   ; 0A 
- D 1 - - - 0x017302 05:B2F2: 0F        .byte $0F, $00   ; 0B 
- - - - - - 0x017304 05:B2F4: 03        .byte $03, $01   ; 0C 
- - - - - - 0x017306 05:B2F6: 06        .byte $06, $00   ; 0D 
- - - - - - 0x017308 05:B2F8: 03        .byte $03, $01   ; 0E 
- - - - - - 0x01730A 05:B2FA: 0A        .byte $0A, $0D   ; 0F 
- - - - - - 0x01730C 05:B2FC: 11        .byte $11, $00   ; 10 
- - - - - - 0x01730E 05:B2FE: 03        .byte $03, $01   ; 11 
- D 1 - - - 0x017310 05:B300: 0B        .byte $0B, $10   ; 12 
- D 1 - - - 0x017312 05:B302: 0D        .byte $0D, $00   ; 13 
- D 1 - - - 0x017314 05:B304: 0C        .byte $0C, $10   ; 14 
- D 1 - - - 0x017316 05:B306: 10        .byte $10, $00   ; 15 
- D 1 - - - 0x017318 05:B308: 03        .byte $03, $01   ; 16 



tbl_B30A:
- D 1 - - - 0x01731A 05:B30A: 4A B3     .word ofs_009_B34A_00
- - - - - - 0x01731C 05:B30C: 3A B4     .word ofs_009_B43A_01   ; unused, index doesn't exist
- D 1 - - - 0x01731E 05:B30E: 45 B4     .word ofs_009_B445_02
- D 1 - - - 0x017320 05:B310: 4C B4     .word ofs_009_B44C_03
- D 1 - - - 0x017322 05:B312: 98 B4     .word ofs_009_B498_04
- D 1 - - - 0x017324 05:B314: C3 B4     .word ofs_009_B4C3_05
- - - - - - 0x017326 05:B316: 21 B5     .word ofs_009_B521_06
- - - - - - 0x017328 05:B318: 38 B5     .word ofs_009_B538_07   ; unused, index doesn't exist
- - - - - - 0x01732A 05:B31A: 3D B5     .word ofs_009_B53D_08   ; unused, index doesn't exist
- D 1 - - - 0x01732C 05:B31C: 2E B3     .word ofs_009_B32E_09
- - - - - - 0x01732E 05:B31E: FB B3     .word ofs_009_B3FB_0A
- D 1 - - - 0x017330 05:B320: DB B4     .word ofs_009_B4DB_0B
- D 1 - - - 0x017332 05:B322: E3 B4     .word ofs_009_B4E3_0C
- D 1 - - - 0x017334 05:B324: EB B4     .word ofs_009_B4EB_0D
- D 1 - - - 0x017336 05:B326: 05 B5     .word ofs_009_B505_0E
- D 1 - - - 0x017338 05:B328: F6 B4     .word ofs_009_B4F6_0F
- D 1 - - - 0x01733A 05:B32A: 10 B5     .word ofs_009_B510_10
- - - - - - 0x01733C 05:B32C: 41 B4     .word ofs_009_B441_11



ofs_009_B34A_00:
C - - J - - 0x01735A 05:B34A: 8A        TXA
C - - - - - 0x01735B 05:B34B: 49 01     EOR #$01
C - - - - - 0x01735D 05:B34D: A8        TAY
C - - - - - 0x01735E 05:B34E: B9 4E 06  LDA ram_obj_pos_X,Y
C - - - - - 0x017361 05:B351: 85 08     STA ram_0008_t08_pos_X
C - - - - - 0x017363 05:B353: B9 68 06  LDA ram_obj_pos_Y,Y
C - - - - - 0x017366 05:B356: 85 09     STA ram_0009_t04_pos_Y
C - - - - - 0x017368 05:B358: B5 B1     LDA ram_current_player,X
C - - - - - 0x01736A 05:B35A: 29 0F     AND #$0F
C - - - - - 0x01736C 05:B35C: A8        TAY
C - - - - - 0x01736D 05:B35D: B9 7F 00  LDA ram_player_stats,Y
C - - - - - 0x017370 05:B360: 38        SEC
C - - - - - 0x017371 05:B361: E9 30     SBC #$30
; / 08
C - - - - - 0x017373 05:B363: 4A        LSR
C - - - - - 0x017374 05:B364: 4A        LSR
C - - - - - 0x017375 05:B365: 4A        LSR
C - - - - - 0x017376 05:B366: 29 FE     AND #$FE
C - - - - - 0x017378 05:B368: 85 0A     STA ram_000A_t13
C - - - - - 0x01737A 05:B36A: A5 75     LDA ram_stage
C - - - - - 0x01737C 05:B36C: 29 01     AND #$01
C - - - - - 0x01737E 05:B36E: D0 3D     BNE bra_B3AD
C - - - - - 0x017380 05:B370: A9 03     LDA #$03
C - - - - - 0x017382 05:B372: 85 0B     STA ram_000B_t13
C - - - - - 0x017384 05:B374: A5 0A     LDA ram_000A_t13
C - - - - - 0x017386 05:B376: 4A        LSR
C - - - - - 0x017387 05:B377: A8        TAY
C - - - - - 0x017388 05:B378: B9 28 B4  LDA tbl_B428,Y
C - - - - - 0x01738B 05:B37B: 18        CLC
C - - - - - 0x01738C 05:B37C: 65 08     ADC ram_0008_t08_pos_X
C - - - - - 0x017390 05:B380: 38        SEC
C - - - - - 0x017391 05:B381: FD 4E 06  SBC ram_obj_pos_X,X
C - - - - - 0x017394 05:B384: 85 0C     STA ram_000C_t10
C - - - - - 0x017396 05:B386: B0 08     BCS bra_B390
C - - - - - 0x017398 05:B388: 49 FF     EOR #$FF
C - - - - - 0x01739A 05:B38A: 85 0C     STA ram_000C_t10
C - - - - - 0x01739C 05:B38C: A9 07     LDA #$07
C - - - - - 0x01739E 05:B38E: 85 0B     STA ram_000B_t13
bra_B390:
loc_B390:
C D 1 - - - 0x0173A0 05:B390: A9 01     LDA #$01
C - - - - - 0x0173A2 05:B392: 85 1F     STA ram_001F_t12
C - - - - - 0x0173A4 05:B394: A9 00     LDA #$00
C - - - - - 0x0173A6 05:B396: 85 00     STA ram_0000_t77
C - - - - - 0x0173A8 05:B398: A4 0B     LDY ram_000B_t13
C - - - - - 0x0173AA 05:B39A: A5 0C     LDA ram_000C_t10
C - - - - - 0x0173AC 05:B39C: C9 08     CMP #$08
C - - - - - 0x0173AE 05:B39E: B0 04     BCS bra_B3A4
C - - - - - 0x0173B0 05:B3A0: A0 00     LDY #$00
C - - - - - 0x0173B2 05:B3A2: A9 08     LDA #$08
bra_B3A4:
C - - - - - 0x0173B4 05:B3A4: 9D 9C 06  STA ram_069C_obj,X
C - - - - - 0x0173B7 05:B3A7: 98        TYA
C - - - - - 0x0173B8 05:B3A8: 9D 8C 07  STA ram_078C_unk,X
C - - - - - 0x0173BB 05:B3AB: 38        SEC
C - - - - - 0x0173BC 05:B3AC: 60        RTS
bra_B3AD:
C - - - - - 0x0173C1 05:B3B1: A4 0A     LDY ram_000A_t13
C - - - - - 0x0173C3 05:B3B3: B9 2E B4  LDA tbl_B42E,Y
C - - - - - 0x0173C6 05:B3B6: 18        CLC
C - - - - - 0x0173C7 05:B3B7: 65 08     ADC ram_0008_t08_pos_X
C - - - - - 0x0173C9 05:B3B9: 85 90     STA ram_0090_pos_X
C - - - - - 0x0173CB 05:B3BB: 38        SEC
C - - - - - 0x0173CC 05:B3BC: FD 4E 06  SBC ram_obj_pos_X,X
C - - - - - 0x0173CF 05:B3BF: B0 02     BCS bra_B3C3
C - - - - - 0x0173D1 05:B3C1: 49 FF     EOR #$FF
bra_B3C3:
C - - - - - 0x0173D3 05:B3C3: 85 0B     STA ram_000B_t14
C - - - - - 0x0173D5 05:B3C5: B9 2F B4  LDA tbl_B42F,Y
C - - - - - 0x0173D8 05:B3C8: 18        CLC
C - - - - - 0x0173D9 05:B3C9: 65 09     ADC ram_0009_t04_pos_Y
C - - - - - 0x0173DB 05:B3CB: 85 91     STA ram_0091_pos_Y
C - - - - - 0x0173DD 05:B3CD: 38        SEC
C - - - - - 0x0173DE 05:B3CE: FD 68 06  SBC ram_obj_pos_Y,X
C - - - - - 0x0173E1 05:B3D1: B0 02     BCS bra_B3D5
C - - - - - 0x0173E3 05:B3D3: 49 FF     EOR #$FF
bra_B3D5:
C - - - - - 0x0173E7 05:B3D7: 18        CLC
C - - - - - 0x0173E8 05:B3D8: 65 0B     ADC ram_000B_t14
C - - - - - 0x0173EA 05:B3DA: 85 0C     STA ram_000C_t10
C - - - - - 0x0173EC 05:B3DC: 20 E2 B3  JSR sub_B3E2
C - - - - - 0x0173EF 05:B3DF: 4C 90 B3  JMP loc_B390


; ???
tbl_B428:
- D 1 - - - 0x017438 05:B428: 38        .byte $38   ; 
- D 1 - - - 0x017439 05:B429: C8        .byte $C8   ; 
- D 1 - - - 0x01743A 05:B42A: 00        .byte $00   ; 
- D 1 - - - 0x01743B 05:B42B: 20        .byte $20   ; 
- D 1 - - - 0x01743C 05:B42C: E0        .byte $E0   ; 
- - - - - - 0x01743D 05:B42D: 00        .byte $00   ; 



tbl_B42E:
- D 1 - - - 0x01743E 05:B42E: 08        .byte $08   ; 
tbl_B42F:
- D 1 - - - 0x01743F 05:B42F: D8        .byte $D8   ; 
- - - - - - 0x017440 05:B430: F8        .byte $F8   ; 
- - - - - - 0x017441 05:B431: 18        .byte $18   ; 
- - - - - - 0x017442 05:B432: 08        .byte $08   ; 
- - - - - - 0x017443 05:B433: 00        .byte $00   ; 
- D 1 - - - 0x017444 05:B434: F8        .byte $F8   ; 
- D 1 - - - 0x017445 05:B435: E8        .byte $E8   ; 
- - - - - - 0x017446 05:B436: 00        .byte $00   ; 
- - - - - - 0x017447 05:B437: 0E        .byte $0E   ; 
- - - - - - 0x017448 05:B438: 00        .byte $00   ; 
- - - - - - 0x017449 05:B439: 00        .byte $00   ; 



sub_B43A:
ofs_009_B43A_01:
C - - - - - 0x01744A 05:B43A: A5 00     LDA ram_0000_t23
C - - - - - 0x01744C 05:B43C: 9D 9C 06  STA ram_069C_obj,X
bra_B43F:
C - - - - - 0x01744F 05:B43F: 38        SEC
C - - - - - 0x017450 05:B440: 60        RTS



ofs_009_B441_11:
; bzk optimize, useless LDA + STA ?
- - - - - - 0x017451 05:B441: A9 01     LDA #$01
- - - - - - 0x017453 05:B443: 85 1F     STA ram_001F_t12
ofs_009_B445_02:
C - - J - - 0x017455 05:B445: DE 9C 06  DEC ram_069C_obj,X
C - - - - - 0x017458 05:B448: F0 F5     BEQ bra_B43F
C - - - - - 0x01745A 05:B44A: 18        CLC
C - - - - - 0x01745B 05:B44B: 60        RTS



ofs_009_B44C_03:
C - - J - - 0x01745C 05:B44C: A9 01     LDA #$01
C - - - - - 0x01745E 05:B44E: 9D 78 07  STA ram_0778_unk,X
C - - - - - 0x017461 05:B451: 9D 96 07  STA ram_0796_unk,X
C - - - - - 0x017464 05:B454: 18        CLC
C - - - - - 0x017465 05:B455: 60        RTS



ofs_009_B498_04:
C - - J - - 0x0174A8 05:B498: AC 77 03  LDY ram_0374_cpu + $03
C - - - - - 0x0174AB 05:B49B: B9 4E 06  LDA ram_obj_pos_X,Y
C - - - - - 0x0174AE 05:B49E: 85 90     STA ram_0090_pos_X
C - - - - - 0x0174B0 05:B4A0: B9 68 06  LDA ram_obj_pos_Y,Y
C - - - - - 0x0174B3 05:B4A3: 85 91     STA ram_0091_pos_Y
C - - - - - 0x0174B5 05:B4A5: 20 E2 B3  JSR sub_B3E2
C - - - - - 0x0174B8 05:B4A8: A5 0C     LDA ram_000C_t01_distance
C - - - - - 0x0174BA 05:B4AA: 4A        LSR
C - - - - - 0x0174BB 05:B4AB: D0 02     BNE bra_B4AF
C - - - - - 0x0174BD 05:B4AD: A9 10     LDA #$10
bra_B4AF:
C - - - - - 0x0174BF 05:B4AF: 9D 9C 06  STA ram_069C_obj,X
C - - - - - 0x0174C2 05:B4B2: A5 0B     LDA ram_000B_t13
C - - - - - 0x0174C4 05:B4B4: 9D 8C 07  STA ram_078C_unk,X
C - - - - - 0x0174C7 05:B4B7: 38        SEC
C - - - - - 0x0174C8 05:B4B8: 60        RTS



ofs_009_B4C3_05:
C - - J - - 0x0174D3 05:B4C3: DE 9C 06  DEC ram_069C_obj,X
C - - - - - 0x0174D6 05:B4C6: F0 21     BEQ bra_B4D8
C - - - - - 0x0174D8 05:B4C8: BD 8C 07  LDA ram_078C_unk,X
C - - - - - 0x0174DB 05:B4CB: 29 BF     AND #$BF
C - - - - - 0x0174DD 05:B4CD: 9D 8C 07  STA ram_078C_unk,X
C - - - - - 0x0174E0 05:B4D0: BD 9C 06  LDA ram_069C_obj,X
C - - - - - 0x0174E3 05:B4D3: 29 03     AND #$03
C - - - - - 0x0174E5 05:B4D5: D0 48     BNE bra_B51F
C - - - - - 0x0174E7 05:B4D7: A9 40     LDA #$40
                                        ORA ram_078C_unk,X
                                        STA ram_078C_unk,X
bra_B51F:
                                        CLC
                                        RTS
bra_B4D8:
                                        SEC
                                        RTS



ofs_009_B521_06:
- - - - - - 0x017531 05:B521: BD 8C 07  LDA ram_078C_unk,X
- - - - - - 0x017534 05:B524: 29 0F     AND #$0F
- - - - - - 0x017536 05:B526: 85 00     STA ram_0000_t4F
- - - - - - 0x017538 05:B528: 20 3D B5  JSR sub_B53D
- - - - - - 0x01753B 05:B52B: A9 09     LDA #$09
- - - - - - 0x01753D 05:B52D: 38        SEC
- - - - - - 0x01753E 05:B52E: E5 00     SBC ram_0000_t4F
- - - - - - 0x017540 05:B530: 1D 8C 07  ORA ram_078C_unk,X
- - - - - - 0x017543 05:B533: 9D 8C 07  STA ram_078C_unk,X
C - - - - - 0x017546 05:B536: 38        SEC
C - - - - - 0x017547 05:B537: 60        RTS



ofs_009_B538_07:
; bzk garbage
- - - - - - 0x017548 05:B538: A5 00     LDA ram_0000_t23
- - - - - - 0x01754A 05:B53A: 4C 42 B5  JMP loc_B542



sub_B53D:
ofs_009_B53D_08:
- - - - - - 0x01754D 05:B53D: BD 8C 07  LDA ram_078C_unk,X
- - - - - - 0x017550 05:B540: 29 F0     AND #$F0
loc_B542:
- - - - - - 0x017552 05:B542: 9D 8C 07  STA ram_078C_unk,X
- - - - - - 0x017555 05:B545: 38        SEC
- - - - - - 0x017556 05:B546: 60        RTS



ofs_009_B32E_09:
C - - J - - 0x01733E 05:B32E: A5 75     LDA ram_stage
C - - - - - 0x017340 05:B330: 29 01     AND #$01
C - - - - - 0x017342 05:B332: F0 05     BEQ bra_B339
C - - - - - 0x017344 05:B334: A9 FF     LDA #$FF
C - - - - - 0x017346 05:B336: 8D 74 03  STA ram_0374_cpu
bra_B339:
sub_B339:
C - - - - - 0x017349 05:B339: B5 B1     LDA ram_current_player,X
C - - - - - 0x01734B 05:B33B: 29 0F     AND #$0F
C - - - - - 0x01734D 05:B33D: A8        TAY
C - - - - - 0x01734E 05:B33E: B9 7F 00  LDA ram_player_stats,Y
C - - - - - 0x017351 05:B341: 29 F0     AND #$F0
C - - - - - 0x017353 05:B343: 09 0E     ORA #$0E
C - - - - - 0x017355 05:B345: 99 7F 00  STA ram_player_stats,Y
C - - - - - 0x017358 05:B348: 38        SEC
C - - - - - 0x017359 05:B349: 60        RTS



ofs_009_B3FB_0A:
- - - - - - 0x01740B 05:B3FB: 20 3A B4  JSR sub_B43A
- - - - - - 0x01740E 05:B3FE: A9 07     LDA #$07
- - - - - - 0x017410 05:B400: 85 00     STA ram_0000_t37_loop_counter
- - - - - - 0x017412 05:B402: BD 8C 07  LDA ram_078C_unk,X
- - - - - - 0x017415 05:B405: 29 0F     AND #$0F
- - - - - - 0x017417 05:B407: A8        TAY
bra_B408_loop:
- - - - - - 0x017418 05:B408: C8        INY
- - - - - - 0x017419 05:B409: C0 09     CPY #$09
- - - - - - 0x01741B 05:B40B: 90 02     BCC bra_B40F
- - - - - - 0x01741D 05:B40D: A0 01     LDY #$01
bra_B40F:
- - - - - - 0x01741F 05:B40F: 84 01     STY ram_0001_t42
- - - - - - 0x017421 05:B411: 88        DEY
- - - - - - 0x017422 05:B412: B9 AE F5  LDA tbl_0x01F5BE,Y
; bzk optimize, INY without using 0001
- - - - - - 0x017425 05:B415: A4 01     LDY ram_0001_t42
- - - - - - 0x017427 05:B417: 2D 74 03  AND ram_0374_cpu
- - - - - - 0x01742A 05:B41A: F0 06     BEQ bra_B422
- - - - - - 0x01742C 05:B41C: C6 00     DEC ram_0000_t37_loop_counter
- - - - - - 0x01742E 05:B41E: D0 E8     BNE bra_B408_loop
- - - - - - 0x017430 05:B420: A0 00     LDY #$00
bra_B422:
- - - - - - 0x017432 05:B422: 98        TYA
- - - - - - 0x017433 05:B423: 9D 8C 07  STA ram_078C_unk,X
- - - - - - 0x017436 05:B426: 38        SEC
- - - - - - 0x017437 05:B427: 60        RTS



ofs_009_B4DB_0B:
C - - J - - 0x0174EB 05:B4DB: 20 3A B4  JSR sub_B43A
C - - - - - 0x0174EE 05:B4DE: 20 FD B4  JSR sub_B4FD
C - - - - - 0x0174F1 05:B4E1: 38        SEC
C - - - - - 0x0174F2 05:B4E2: 60        RTS



ofs_009_B4E3_0C:
C - - J - - 0x0174F3 05:B4E3: 20 3A B4  JSR sub_B43A
C - - - - - 0x0174F6 05:B4E6: 20 17 B5  JSR sub_B517
C - - - - - 0x0174F9 05:B4E9: 38        SEC
C - - - - - 0x0174FA 05:B4EA: 60        RTS



ofs_009_B4EB_0D:
C - - J - - 0x0174FB 05:B4EB: BD 9C 06  LDA ram_069C_obj,X
C - - - - - 0x0174FE 05:B4EE: F0 F9     BEQ bra_B4F4
C - - - - - 0x017500 05:B4F0: DE 9C 06  DEC ram_069C_obj,X
C - - - - - 0x017503 05:B4F3: 4C FD B4  JMP loc_B4FD
bra_B4F4:
                                        SEC
                                        RTS



ofs_009_B505_0E:
C - - J - - 0x017515 05:B505: BD 9C 06  LDA ram_069C_obj,X
C - - - - - 0x017518 05:B508: F0 DF     BEQ bra_B50E
C - - - - - 0x01751A 05:B50A: DE 9C 06  DEC ram_069C_obj,X
C - - - - - 0x01751D 05:B50D: 4C 17 B5  JMP loc_B517
bra_B50E:
                                        SEC
                                        RTS



ofs_009_B4F6_0F:
C - - J - - 0x017506 05:B4F6: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x017509 05:B4F9: 29 40     AND #$40
C - - - - - 0x01750B 05:B4FB: F0 39     BEQ bra_B504
sub_B4FD:
loc_B4FD:
C D 1 - - - 0x01750D 05:B4FD: E6 1F     INC ram_001F_t12
C - - - - - 0x01750F 05:B4FF: A9 00     LDA #$00
C - - - - - 0x017511 05:B501: 85 00     STA ram_0000_t77
C - - - - - 0x017513 05:B503: F0 12     JMP loc_B517
bra_B504:
                                        SEC
                                        RTS



ofs_009_B510_10:
C - - J - - 0x017520 05:B510: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x017523 05:B513: 29 40     AND #$40
C - - - - - 0x017525 05:B515: F0 1F     BEQ bra_B51D
sub_B517:
loc_B517:
C D 1 - - - 0x017527 05:B517: A9 80     LDA #$80
C - - - - - 0x017529 05:B519: 1D 8C 07  ORA ram_078C_unk,X
C - - - - - 0x01752C 05:B51C: 9D 8C 07  STA ram_078C_unk,X
C - - - - - 0x01752F 05:B51F: 18        CLC
C - - - - - 0x017530 05:B520: 60        RTS
bra_B51D:
                                        SEC
                                        RTS



sub_B547:
; in
    ; A = 
C - - - - - 0x017557 05:B547: 85 0F     STA ram_000F_t05_table_index
C - - - - - 0x017559 05:B549: 0A        ASL
C - - - - - 0x01755A 05:B54A: A8        TAY
C - - - - - 0x01755B 05:B54B: A5 75     LDA ram_stage
C - - - - - 0x01755D 05:B54D: 29 01     AND #$01
C - - - - - 0x01755F 05:B54F: F0 04     BEQ bra_B555
C - - - - - 0x017561 05:B551: 98        TYA
C - - - - - 0x017562 05:B552: 09 10     ORA #$10
C - - - - - 0x017564 05:B554: A8        TAY
bra_B555:
C - - - - - 0x017565 05:B555: B9 85 B6  LDA tbl_B685,Y
C - - - - - 0x017568 05:B558: 18        CLC
C - - - - - 0x017569 05:B559: 7D 4E 06  ADC ram_obj_pos_X,X
C - - - - - 0x01756C 05:B55C: 85 00     STA ram_0000_t50_pos_X
C - - - - - 0x01756E 05:B55E: B9 86 B6  LDA tbl_B685 + $01,Y
C - - - - - 0x017571 05:B561: 18        CLC
C - - - - - 0x017572 05:B562: 7D 68 06  ADC ram_obj_pos_Y,X
C - - - - - 0x017575 05:B565: 85 01     STA ram_0001_t18_pos_Y
C - - - - - 0x017577 05:B567: A9 00     LDY #con_F3D6_00
C - - - - - 0x017579 05:B569: 20 B3 F3  JSR sub_0x01F3C3_execute_script
C - - - - - 0x01757C 05:B56C: A4 0F     LDY ram_000F_t05_table_index
C - - - - - 0x01757E 05:B56E: B9 AE F5  LDA tbl_0x01F5BE,Y
C - - - - - 0x017581 05:B571: 49 FF     EOR #$FF
C - - - - - 0x017583 05:B573: 2D 79 03  AND ram_0374_cpu + $05
C - - - - - 0x017586 05:B576: 8D 79 03  STA ram_0374_cpu + $05
C - - - - - 0x017589 05:B579: A5 75     LDA ram_stage
C - - - - - 0x01758B 05:B57B: 29 01     AND #$01
C - - - - - 0x01758D 05:B57D: F0 09     BEQ bra_B588
C - - - - - 0x01758F 05:B57F: A4 01     LDY ram_0001_t15_table_index
C - - - - - 0x017591 05:B581: B9 C5 B5  LDA tbl_B5C5,Y
C - - - - - 0x017594 05:B584: D0 06     BNE bra_B58C
C - - - - - 0x017596 05:B586: F0 0F     BEQ bra_B597    ; jmp
bra_B588:
C - - - - - 0x017598 05:B588: A5 01     LDA ram_0001_t15_table_index
C - - - - - 0x01759A 05:B58A: F0 0B     BEQ bra_B597
bra_B58C:
C - - - - - 0x01759C 05:B58C: A4 0F     LDY ram_000F_t05_table_index
C - - - - - 0x01759E 05:B58E: AD 79 03  LDA ram_0374_cpu + $05
C - - - - - 0x0175A1 05:B591: 19 AE F5  ORA tbl_0x01F5BE,Y
C - - - - - 0x0175A4 05:B594: 8D 79 03  STA ram_0374_cpu + $05
bra_B597:
C - - - - - 0x0175A9 05:B599: 20 B3 F3  JSR sub_0x01F2F0
C - - - - - 0x0175AC 05:B59C: A4 0F     LDY ram_000F_t05_table_index
C - - - - - 0x0175AE 05:B59E: B9 AE F5  LDA tbl_0x01F5BE,Y
C - - - - - 0x0175B1 05:B5A1: 49 FF     EOR #$FF
C - - - - - 0x0175B3 05:B5A3: 2D 7A 03  AND ram_0374_cpu + $06
C - - - - - 0x0175B6 05:B5A6: 8D 7A 03  STA ram_0374_cpu + $06
C - - - - - 0x0175B9 05:B5A9: A5 00     LDA ram_0000_t42
C - - - - - 0x0175BB 05:B5AB: F0 0B     BEQ bra_B5B8
- - - - - - 0x0175BD 05:B5AD: A4 0F     LDY ram_000F_t05_table_index
- - - - - - 0x0175BF 05:B5AF: AD 7A 03  LDA ram_0374_cpu + $06
- - - - - - 0x0175C2 05:B5B2: 19 AE F5  ORA tbl_0x01F5BE,Y
- - - - - - 0x0175C5 05:B5B5: 8D 7A 03  STA ram_0374_cpu + $06
bra_B5B8:
C - - - - - 0x0175C8 05:B5B8: AC 7A 03  LDY ram_0374_cpu + $06
C - - - - - 0x0175CB 05:B5BB: 8C 75 03  STY ram_0374_cpu + $01
C - - - - - 0x0175CE 05:B5BE: AC 79 03  LDY ram_0374_cpu + $05
C - - - - - 0x0175D1 05:B5C1: 8C 74 03  STY ram_0374_cpu
C - - - - - 0x0175D4 05:B5C4: 60        RTS



tbl_B685:
- D 1 - - - 0x017695 05:B685: 00        .byte $00, $E0   ; 00 
- D 1 - - - 0x017697 05:B687: 10        .byte $10, $E0   ; 01 
- D 1 - - - 0x017699 05:B689: 10        .byte $10, $00   ; 02 
- D 1 - - - 0x01769B 05:B68B: 10        .byte $10, $10   ; 03 
- D 1 - - - 0x01769D 05:B68D: 00        .byte $00, $10   ; 04 
- D 1 - - - 0x01769F 05:B68F: F0        .byte $F0, $10   ; 05 
- D 1 - - - 0x0176A1 05:B691: F0        .byte $F0, $00   ; 06 
- D 1 - - - 0x0176A3 05:B693: F0        .byte $F0, $E0   ; 07 
- D 1 - - - 0x0176A5 05:B695: 00        .byte $00, $00   ; 08 
- D 1 - - - 0x0176A7 05:B697: 10        .byte $10, $00   ; 09 
- D 1 - - - 0x0176A9 05:B699: 10        .byte $10, $10   ; 0A 
- D 1 - - - 0x0176AB 05:B69B: 10        .byte $10, $20   ; 0B 
- D 1 - - - 0x0176AD 05:B69D: 00        .byte $00, $20   ; 0C 
- D 1 - - - 0x0176AF 05:B69F: F0        .byte $F0, $20   ; 0D 
- D 1 - - - 0x0176B1 05:B6A1: F0        .byte $F0, $10   ; 0E 
- D 1 - - - 0x0176B3 05:B6A3: F0        .byte $F0, $00   ; 0F 



tbl_B5C5:
- - - - - - 0x0175D5 05:B5C5: 01        .byte $01   ; 00 
- - - - - - 0x0175D6 05:B5C6: 01        .byte $01   ; 01 
- - - - - - 0x0175D7 05:B5C7: 01        .byte $01   ; 02 
- - - - - - 0x0175D8 05:B5C8: 00        .byte $00   ; 03 
- - - - - - 0x0175D9 05:B5C9: 01        .byte $01   ; 04 
- - - - - - 0x0175DA 05:B5CA: 01        .byte $01   ; 05 
- D 1 - - - 0x0175DB 05:B5CB: 00        .byte $00   ; 06 
- - - - - - 0x0175DC 05:B5CC: 00        .byte $00   ; 07 
- - - - - - 0x0175DD 05:B5CD: 00        .byte $00   ; 08 
- - - - - - 0x0175DE 05:B5CE: 01        .byte $01   ; 09 
- - - - - - 0x0175DF 05:B5CF: 00        .byte $00   ; 0A 



sub_B3E2:
C - - - - - 0x0173F2 05:B3E2: A9 1F     LDY #con_F3D6_1F
C - - - - - 0x0173F4 05:B3E4: 20 B3 F3  JSR sub_0x01F3C3_execute_script
C - - - - - 0x0173F7 05:B3E7: A5 6D     LDA ram_006D
C - - - - - 0x0173F9 05:B3E9: 18        CLC
C - - - - - 0x0173FA 05:B3EA: 69 08     ADC #$08
C - - - - - 0x0173FC 05:B3EC: 18        CLC
C - - - - - 0x0173FD 05:B3ED: 2A        ROL
C - - - - - 0x0173FE 05:B3EE: 2A        ROL
C - - - - - 0x0173FF 05:B3EF: 2A        ROL
C - - - - - 0x017400 05:B3F0: 2A        ROL
C - - - - - 0x017401 05:B3F1: 29 07     AND #$07
C - - - - - 0x017403 05:B3F3: 18        CLC
C - - - - - 0x017404 05:B3F4: 69 03     ADC #$03
C - - - - - 0x017406 05:B3F6: 29 07     AND #$07
C - - - - - 0x017408 05:B3F8: 85 0B     STA ram_000B_t13
C - - - - - 0x01740A 05:B3FA: 60        RTS



sub_B5D0:
C - - - - - 0x0175E0 05:B5D0: A0 12     LDY #$12
C - - - - - 0x0175E2 05:B5D2: 84 1F     STY ram_001F_t13_object_index
C - - - - - 0x0175E4 05:B5D4: A9 04     LDA #$04
C - - - - - 0x0175E6 05:B5D6: 85 1E     STA ram_001E_t12_loop_counter
C - - - - - 0x0175E8 05:B5D8: D0 19     JMP loc_B5F3



sub_B5DA:
C - - - - - 0x0175EA 05:B5DA: A9 FF     LDA #$FF
C - - - - - 0x0175EC 05:B5DC: 85 1D     STA ram_001D_t09_pos_Y_distance
C - - - - - 0x0175EE 05:B5DE: A9 00     LDA #$00
C - - - - - 0x0175F2 05:B5E2: 8D 76 03  STA ram_0374_cpu + $02
C - - - - - 0x0175F5 05:B5E5: 8D 77 03  STA ram_0374_cpu + $03
C - - - - - 0x0175F8 05:B5E8: 8D 83 03  STA ram_0374_cpu + $0F
C - - - - - 0x0175FB 05:B5EB: A0 02     LDY #$02
C - - - - - 0x0175FD 05:B5ED: 84 1F     STY ram_001F_t13_object_index
C - - - - - 0x0175FF 05:B5EF: A9 08     LDA #$08
C - - - - - 0x017601 05:B5F1: 85 1E     STA ram_001E_t12_loop_counter
loc_B5F3:
bra_B5F3_loop:
C - - - - - 0x017603 05:B5F3: A4 1F     LDY ram_001F_t13_object_index
C - - - - - 0x017605 05:B5F5: B9 82 06  LDA ram_0682_obj,Y
C - - - - - 0x017608 05:B5F8: F0 53     BEQ bra_B64D
C - - - - - 0x01760A 05:B5FA: B9 00 06  LDA ram_0600_obj,Y
C - - - - - 0x01760D 05:B5FD: 29 F0     AND #$F0
; bzk optimize, useless branch
C - - - - - 0x01760F 05:B5FF: F0 00     BEQ bra_B601
bra_B601:
C - - - - - 0x017611 05:B601: A4 1F     LDY ram_001F_t13_object_index
C - - - - - 0x017613 05:B603: C0 0A     CPY #$0A
C - - - - - 0x017615 05:B605: B0 46     BCS bra_B64D
C - - - - - 0x017617 05:B607: A5 75     LDA ram_stage
C - - - - - 0x017619 05:B609: 29 01     AND #$01
C - - - - - 0x01761B 05:B60B: F0 05     BEQ bra_B612
C - - - - - 0x01761D 05:B60D: CC 78 03  CPY ram_0374_cpu + $04
C - - - - - 0x017620 05:B610: F0 3B     BEQ bra_B64D
bra_B612:
C - - - - - 0x017622 05:B612: 20 5A B6  JSR sub_B65A
C - - - - - 0x017625 05:B615: B9 82 07  LDA ram_0782_unk,Y
C - - - - - 0x017628 05:B618: 30 1F     BMI bra_B639
C - - - - - 0x01762A 05:B61A: 20 7F B6  JSR sub_B67F
C - - - - - 0x01762D 05:B61D: B0 2E     BCS bra_B64D
C - - - - - 0x01762F 05:B61F: A8        TAY
C - - - - - 0x017630 05:B620: A5 75     LDA ram_stage
C - - - - - 0x017632 05:B622: 29 01     AND #$01
C - - - - - 0x017634 05:B624: F0 04     BEQ bra_B62A
C - - - - - 0x017636 05:B626: C0 80     CPY #$80
C - - - - - 0x017638 05:B628: B0 23     BCS bra_B64D
bra_B62A:
C - - - - - 0x01763A 05:B62A: A4 13     LDY ram_0013_t05_pos_Y_distance
C - - - - - 0x01763C 05:B62C: C4 1D     CPY ram_001D_t09_pos_Y_distance
C - - - - - 0x01763E 05:B62E: B0 1D     BCS bra_B64D
C - - - - - 0x017640 05:B630: 84 1D     STY ram_001D_t09_pos_Y_distance
C - - - - - 0x017642 05:B632: A4 1F     LDY ram_001F_t13_object_index
C - - - - - 0x017644 05:B634: 8C 83 03  STY ram_0374_cpu + $0F
C - - - - - 0x017647 05:B637: D0 14     BNE bra_B64D
bra_B639:
C - - - - - 0x017649 05:B639: 20 7F B6  JSR sub_B67F
C - - - - - 0x01764C 05:B63C: B0 0F     BCS bra_B64D
C - - - - - 0x01764E 05:B63E: C9 38     CMP #$38
C - - - - - 0x017650 05:B640: B0 0B     BCS bra_B64D
- - - - - - 0x017652 05:B642: A4 04     LDY ram_0004_t21_table_index
- - - - - - 0x017654 05:B644: B9 AE F5  LDA tbl_0x01F5BE,Y
- - - - - - 0x017657 05:B647: 0D 76 03  ORA ram_0374_cpu + $02
- - - - - - 0x01765A 05:B64A: 8D 76 03  STA ram_0374_cpu + $02
bra_B64D:
C - - - - - 0x01765D 05:B64D: E6 1F     INC ram_001F_t13_object_index
C - - - - - 0x01765F 05:B64F: C6 1E     DEC ram_001E_t12_loop_counter
C - - - - - 0x017661 05:B651: D0 A0     BNE bra_B5F3_loop
C - - - - - 0x017663 05:B653: AD 83 03  LDA ram_0374_cpu + $0F
C - - - - - 0x017666 05:B656: 8D 77 03  STA ram_0374_cpu + $03
C - - - - - 0x017669 05:B659: 60        RTS



sub_B67F:
; bzk optimize
; in
    ; ram_0012_t07_pos_X_distance
    ; ram_0013_t05_pos_Y_distance
; out
    ; C
        ; 0 = 
        ; 1 = 
    ; A = 
C - - - - - 0x01768F 05:B67F: A5 12     LDA ram_0012_t07_pos_X_distance
C - - - - - 0x017691 05:B681: 18        CLC
C - - - - - 0x017692 05:B682: 65 13     ADC ram_0013_t05_pos_Y_distance
C - - - - - 0x017694 05:B684: 60        RTS



sub_B65A:
; in
    ; ram_001F_t13_object_index
; out
    ; ram_0004_t21_table_index
C - - - - - 0x01766A 05:B65A: A4 1F     LDY ram_001F_t13_object_index
C - - - - - 0x01766C 05:B65C: B9 4E 06  LDA ram_obj_pos_X,Y
C - - - - - 0x01766F 05:B65F: 85 90     STA ram_0090_pos_X
C - - - - - 0x017671 05:B661: B9 68 06  LDA ram_obj_pos_Y,Y
C - - - - - 0x017674 05:B664: 85 91     STA ram_0091_pos_Y
C - - - - - 0x017676 05:B666: A9 1F     LDY #con_F3D6_1F
C - - - - - 0x017678 05:B668: 20 B3 F3  JSR sub_0x01F3C3_execute_script
C - - - - - 0x01767B 05:B66B: A5 6D     LDA ram_006D
C - - - - - 0x01767D 05:B66D: 18        CLC
C - - - - - 0x01767E 05:B66E: 69 08     ADC #$08
C - - - - - 0x017680 05:B670: 18        CLC
C - - - - - 0x017681 05:B671: 2A        ROL
C - - - - - 0x017682 05:B672: 2A        ROL
C - - - - - 0x017683 05:B673: 2A        ROL
C - - - - - 0x017684 05:B674: 2A        ROL
C - - - - - 0x017685 05:B675: 29 07     AND #$07
C - - - - - 0x017687 05:B677: 18        CLC
C - - - - - 0x017688 05:B678: 69 02     ADC #$02
C - - - - - 0x01768A 05:B67A: 29 07     AND #$07
C - - - - - 0x01768C 05:B67C: 85 04     STA ram_0004_t21_table_index
C - - - - - 0x01768E 05:B67E: 60        RTS



sub_B456:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x017466 05:B456: AC 77 03  LDY ram_0374_cpu + $03
C - - - - - 0x017469 05:B459: B9 4E 06  LDA ram_obj_pos_X,Y
C - - - - - 0x01746C 05:B45C: 38        SEC
C - - - - - 0x01746D 05:B45D: FD 4E 06  SBC ram_obj_pos_X,X
C - - - - - 0x017470 05:B460: B0 02     BCS bra_B464
C - - - - - 0x017472 05:B462: 49 FF     EOR #$FF
bra_B464:
C - - - - - 0x017474 05:B464: 85 0A     STA ram_000A_t14_pos_X
C - - - - - 0x017476 05:B466: B9 68 06  LDA ram_obj_pos_Y,Y
C - - - - - 0x017479 05:B469: 38        SEC
C - - - - - 0x01747A 05:B46A: FD 68 06  SBC ram_obj_pos_Y,X
C - - - - - 0x01747D 05:B46D: B0 02     BCS bra_B471
C - - - - - 0x01747F 05:B46F: 49 FF     EOR #$FF
bra_B471:
C - - - - - 0x017481 05:B471: 18        CLC
C - - - - - 0x017482 05:B472: 65 0A     ADC ram_000A_t14_pos_X
C - - - - - 0x017484 05:B474: 85 0C     STA ram_000C_t01_distance
C - - - - - 0x017486 05:B476: B5 B1     LDA ram_current_player,X
C - - - - - 0x017488 05:B478: 29 0F     AND #$0F
C - - - - - 0x01748A 05:B47A: A8        TAY
C - - - - - 0x01748B 05:B47B: B9 B9 B4  LDA tbl_B4B9,Y
C - - - - - 0x01748E 05:B47E: 85 01     STA ram_0001_t43
C - - - - - 0x017490 05:B480: B9 7F 00  LDA ram_player_stats,Y
C - - - - - 0x017493 05:B483: A0 00     LDY #$00
C - - - - - 0x017495 05:B485: 29 03     AND #$03
C - - - - - 0x017497 05:B487: F0 04     BEQ bra_B48D
bra_B489_loop:
C - - - - - 0x017499 05:B489: C8        INY
C - - - - - 0x01749A 05:B48A: 4A        LSR
C - - - - - 0x01749B 05:B48B: 90 FC     BCC bra_B489_loop
bra_B48D:
C - - - - - 0x01749D 05:B48D: 98        TYA
C - - - - - 0x01749E 05:B48E: 18        CLC
C - - - - - 0x01749F 05:B48F: 65 01     ADC ram_0001_t43
C - - - - - 0x0174A1 05:B491: A8        TAY
C - - - - - 0x0174A2 05:B492: B9 BD B4  LDA tbl_B4BD,Y
C - - - - - 0x0174A5 05:B495: C5 0C     CMP ram_000C_t01_distance
C - - - - - 0x0174A7 05:B497: 60        RTS



tbl_B4B9:
- D 1 - - - 0x0174C9 05:B4B9: 00        .byte $00   ; 00 
- D 1 - - - 0x0174CA 05:B4BA: 00        .byte $00   ; 01 
- - - - - - 0x0174CB 05:B4BB: 00        .byte $00   ; 02 
- - - - - - 0x0174CC 05:B4BC: 03        .byte $03   ; 03 



tbl_B4BD:
; 00 
- - - - - - 0x0174CD 05:B4BD: 48        .byte $48   ; 
- - - - - - 0x0174CE 05:B4BE: FF        .byte $FF   ; 
- D 1 - - - 0x0174CF 05:B4BF: FF        .byte $FF   ; 
; 03 
- - - - - - 0x0174D0 05:B4C0: 48        .byte $48   ; 
- - - - - - 0x0174D1 05:B4C1: 10        .byte $10   ; 
- - - - - - 0x0174D2 05:B4C2: 10        .byte $10   ; 



sub_B220:
C - - - - - 0x017230 05:B220: BD 78 07  LDA ram_0778_unk,X
C - - - - - 0x017233 05:B223: F0 F7     BNE bra_B225
                                        RTS
bra_B225:
C - - - - - 0x017235 05:B225: A5 75     LDA ram_stage
C - - - - - 0x017237 05:B227: 29 01     AND #$01
C - - - - - 0x017239 05:B229: F0 2E     BEQ bra_B259
C - - - - - 0x01723B 05:B22B: BD 8C 07  LDA ram_078C_unk,X
C - - - - - 0x01723E 05:B22E: 29 0F     AND #$0F
C - - - - - 0x017240 05:B230: F0 1D     BEQ bra_B24F
C - - - - - 0x017242 05:B232: 38        SEC
C - - - - - 0x017243 05:B233: E9 01     SBC #$01
C - - - - - 0x017245 05:B235: A8        TAY
C - - - - - 0x017246 05:B236: B9 AE F5  LDA tbl_0x01F5BE,Y
C - - - - - 0x017249 05:B239: 2D 74 03  AND ram_0374_cpu
C - - - - - 0x01724C 05:B23C: F0 11     BEQ bra_B24F
- - - - - - 0x01724E 05:B23E: 2D 75 03  AND ram_0374_cpu + $01
- - - - - - 0x017251 05:B241: D0 0C     BNE bra_B24F
- - - - - - 0x017253 05:B243: AD 77 03  LDA ram_0374_cpu + $03
- - - - - - 0x017256 05:B246: F0 03     BEQ bra_B24B
- - - - - - 0x017258 05:B248: 8D 78 03  STA ram_0374_cpu + $04
bra_B24B:
- - - - - - 0x01725B 05:B24B: A9 0F     LDA #$0F
- - - - - - 0x01725D 05:B24D: D0 07     BNE bra_B256    ; jmp
bra_B24F:
C - - - - - 0x01725F 05:B24F: AD 77 03  LDA ram_0374_cpu + $03
C - - - - - 0x017262 05:B252: F0 21     BEQ bra_B275_RTS
C - - - - - 0x017264 05:B254: A9 04     LDA #$04
bra_B256:
C - - - - - 0x017266 05:B256: 4C D0 B2  JMP loc_B2D0
bra_B259:
C - - - - - 0x017269 05:B259: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x01726C 05:B25C: 29 40     AND #$40
C - - - - - 0x01726E 05:B25E: F0 16     BEQ bra_B276
C - - - - - 0x017270 05:B260: BD 8C 07  LDA ram_078C_unk,X
C - - - - - 0x017273 05:B263: 29 BF     AND #$BF
C - - - - - 0x017275 05:B265: 9D 8C 07  STA ram_078C_unk,X
C - - - - - 0x017278 05:B268: AD 77 03  LDA ram_0374_cpu + $03
C - - - - - 0x01727B 05:B26B: F0 08     BEQ bra_B275_RTS
C - - - - - 0x01727D 05:B26D: BD 8C 07  LDA ram_078C_unk,X
C - - - - - 0x017280 05:B270: 09 40     ORA #$40
C - - - - - 0x017282 05:B272: 9D 8C 07  STA ram_078C_unk,X
bra_B275_RTS:
C - - - - - 0x017285 05:B275: 60        RTS
bra_B276:
C - - - - - 0x017286 05:B276: BD 8C 07  LDA ram_078C_unk,X
C - - - - - 0x017289 05:B279: 29 0F     AND #$0F
C - - - - - 0x01728B 05:B27B: F0 2E     BEQ bra_B2AB
C - - - - - 0x01728D 05:B27D: A0 04     LDY #$04
C - - - - - 0x01728F 05:B27F: C9 05     CMP #$05
C - - - - - 0x017291 05:B281: 90 02     BCC bra_B285
C - - - - - 0x017293 05:B283: A0 40     LDY #$40
bra_B285:
C - - - - - 0x017295 05:B285: 98        TYA
C - - - - - 0x017296 05:B286: 2D 74 03  AND ram_0374_cpu
C - - - - - 0x017299 05:B289: F0 20     BEQ bra_B2AB
C - - - - - 0x01729B 05:B28B: 29 0F     AND #$0F
C - - - - - 0x01729D 05:B28D: F0 04     BEQ bra_B293
C - - - - - 0x01729F 05:B28F: 98        TYA
C - - - - - 0x0172A0 05:B290: 4A        LSR
C - - - - - 0x0172A1 05:B291: D0 02     BNE bra_B295
bra_B293:
- - - - - - 0x0172A3 05:B293: 98        TYA
- - - - - - 0x0172A4 05:B294: 0A        ASL
bra_B295:
C - - - - - 0x0172A5 05:B295: 2D 74 03  AND ram_0374_cpu
C - - - - - 0x0172A8 05:B298: F0 0D     BEQ bra_B2A7
- - - - - - 0x0172AA 05:B29A: 2D 75 03  AND ram_0374_cpu + $01
- - - - - - 0x0172AD 05:B29D: D0 04     BNE bra_B2A3
- - - - - - 0x0172AF 05:B29F: A9 0D     LDA #$0D
- - - - - - 0x0172B1 05:B2A1: D0 2D     BNE bra_B2D0    ; jmp
bra_B2A3:
- - - - - - 0x0172B3 05:B2A3: A9 04     LDA #$04
- - - - - - 0x0172B5 05:B2A5: D0 29     BNE bra_B2D0    ; jmp
bra_B2A7:
C - - - - - 0x0172B7 05:B2A7: A9 07     LDA #$07
C - - - - - 0x0172B9 05:B2A9: D0 25     BNE bra_B2D0    ; jmp
bra_B2AB:
C - - - - - 0x0172BB 05:B2AB: BD 8C 07  LDA ram_078C_unk,X
C - - - - - 0x0172BE 05:B2AE: 29 0F     AND #$0F
C - - - - - 0x0172C0 05:B2B0: F0 12     BEQ bra_B2C4
C - - - - - 0x0172C2 05:B2B2: A0 08     LDY #$08
C - - - - - 0x0172C4 05:B2B4: C9 05     CMP #$05
C - - - - - 0x0172C6 05:B2B6: 90 02     BCC bra_B2BA
C - - - - - 0x0172C8 05:B2B8: A0 20     LDY #$20
bra_B2BA:
C - - - - - 0x0172CA 05:B2BA: 98        TYA
C - - - - - 0x0172CB 05:B2BB: 2D 74 03  AND ram_0374_cpu
C - - - - - 0x0172CE 05:B2BE: D0 04     BNE bra_B2C4
C - - - - - 0x0172D0 05:B2C0: A9 12     LDA #$12
C - - - - - 0x0172D2 05:B2C2: D0 0C     BNE bra_B2D0    ; jmp
bra_B2C4:
C - - - - - 0x0172D4 05:B2C4: AD 77 03  LDA ram_0374_cpu + $03
C - - - - - 0x0172D7 05:B2C7: F0 12     BEQ bra_B2DB_RTS
C - - - - - 0x0172D9 05:B2C9: 20 56 B4  JSR sub_B456
C - - - - - 0x0172DC 05:B2CC: 90 0D     BCC bra_B2DB_RTS
C - - - - - 0x0172DE 05:B2CE: A9 04     LDA #$04
bra_B2D0:
loc_B2D0:
C D 1 - - - 0x0172E0 05:B2D0: DD 96 07  CMP ram_0796_unk,X
C - - - - - 0x0172E3 05:B2D3: F0 06     BEQ bra_B2DB_RTS
C - - - - - 0x0172E5 05:B2D5: 9D 96 07  STA ram_0796_unk,X
C - - - - - 0x0172E8 05:B2D8: 9D 78 07  STA ram_0778_unk,X
bra_B2DB_RTS:
C - - - - - 0x0172EB 05:B2DB: 60        RTS



sub_B21D_execute_indirect_jump_0002:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x01722D 05:B21D: 6C 02 00  JMP (ram_0002_t08_jmp)



.out .sprintf("Free bytes in bank 02: 0x%04X [%d]", ($C000 - *), ($C000 - *))



