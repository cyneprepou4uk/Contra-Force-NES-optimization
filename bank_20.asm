.segment "BANK_20"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $A000  ; for listing file
; 0x040010-0x04200F



.export ofs_016_0x00F5F1_01
.export ofs_016_0x00FA55_03
.export ofs_016_0x00F3C2_04
.export ofs_016_0x00B937_05
.export ofs_016_0x00F8AA_06
.export ofs_016_0x00FBAF_07
.export ofs_016_0x00BA01_08
.export ofs_016_0x00B84F_09
.export ofs_016_0x00FC33_0A
.export ofs_016_0x00D1DE_0B
.export ofs_016_0x005D8D_0C



ofs_016_0x00F5F1_01:
C - - J - - 0x00F5F1 03:B5E1: 20 E7 B5  JSR sub_B5E7
C - - - - - 0x00F5F4 03:B5E4: 4C 10 8E  JMP loc_0x008E20



sub_B5E7:
C - - - - - 0x00F5F7 03:B5E7: BD 78 07  LDA ram_0778_unk,X
C - - - - - 0x00F5FA 03:B5EA: D0 19     BNE bra_B605
C - - - - - 0x00F5FC 03:B5EC: 20 B1 93  JSR sub_0x0093C1_06B2x_LSRx4_TAY
C - - - - - 0x00F5FF 03:B5EF: 9D D2 07  STA ram_07D2_unk,X
C - - - - - 0x00F602 03:B5F2: A9 1C     LDA #$1C
C - - - - - 0x00F604 03:B5F4: 9D 20 07  STA ram_0720_obj,X
C - - - - - 0x00F607 03:B5F7: A9 0F     LDA #$0F
C - - - - - 0x00F609 03:B5F9: 20 A1 89  JSR sub_0x0089B1
C - - - - - 0x00F60C 03:B5FC: A9 46     LDA #$46
C - - - - - 0x00F60E 03:B5FE: 9D B2 06  STA ram_06B2_obj,X
C - - - - - 0x00F611 03:B601: FE 78 07  INC ram_0778_unk,X
C - - - - - 0x00F614 03:B604: 60        RTS
bra_B605:
C - - - - - 0x00F615 03:B605: BD D2 07  LDA ram_07D2_unk,X
C - - - - - 0x00F618 03:B608: F0 30     BEQ bra_B63A
C - - - - - 0x00F61A 03:B60A: A9 00     LDA #$00
C - - - - - 0x00F61C 03:B60C: A0 10     LDY #$10
C - - - - - 0x00F61E 03:B60E: 20 BC 8F  JSR sub_0x008FCC
C - - - - - 0x00F621 03:B611: B0 54     BCS bra_B667_RTS
C - - - - - 0x00F623 03:B613: A5 00     LDA ram_0000_t42
C - - - - - 0x00F625 03:B615: C9 21     CMP #$21
C - - - - - 0x00F627 03:B617: D0 4E     BNE bra_B667_RTS
C - - - - - 0x00F629 03:B619: A9 01     LDA #$01
C - - - - - 0x00F62B 03:B61B: 85 CF     STA ram_00CF_flag
C - - - - - 0x00F62D 03:B61D: A0 07     LDY #$07
C - - - - - 0x00F62F 03:B61F: A9 A6     LDA #$A6
C - - - - - 0x00F631 03:B621: 20 D8 93  JSR sub_0x0093E8
C - - - - - 0x00F634 03:B624: 20 9D F6  JSR sub_F69D
C - - - - - 0x00F637 03:B627: 4C 3A 97  JMP loc_0x00974A
bra_B62A:
C - - - - - 0x00F63A 03:B62A: A9 00     LDA #$00
C - - - - - 0x00F63C 03:B62C: C0 0E     CPY #$0E
C - - - - - 0x00F63E 03:B62E: 90 02     BCC bra_B632
C - - - - - 0x00F640 03:B630: A9 02     LDA #$02
bra_B632:
C - - - - - 0x00F642 03:B632: 9D B4 07  STA ram_07B4_unk,X
C - - - - - 0x00F645 03:B635: A0 06     LDY #$06
C - - - - - 0x00F647 03:B637: 4C 37 97  JMP loc_0x009747
bra_B63A:
C - - - - - 0x00F64A 03:B63A: A9 10     LDA #$10
C - - - - - 0x00F64C 03:B63C: A0 10     LDY #$10
C - - - - - 0x00F64E 03:B63E: 20 4B 90  JSR sub_0x00905B
C - - - - - 0x00F651 03:B641: 90 E7     BCC bra_B62A
C - - - - - 0x00F653 03:B643: BD B2 06  LDA ram_06B2_obj,X
C - - - - - 0x00F656 03:B646: F0 1F     BEQ bra_B667_RTS
C - - - - - 0x00F658 03:B648: 29 F0     AND #$F0
C - - - - - 0x00F65A 03:B64A: C9 40     CMP #$40
C - - - - - 0x00F65C 03:B64C: F0 2F     BEQ bra_B67D
C - - - - - 0x00F65E 03:B64E: 20 7C 96  JSR sub_0x00968C
C - - - - - 0x00F661 03:B651: A5 01     LDA ram_0001_t02_hi
C - - - - - 0x00F663 03:B653: C9 07     CMP #$07
C - - - - - 0x00F665 03:B655: D0 11     BNE bra_B668
C - - - - - 0x00F667 03:B657: A5 00     LDA ram_0000_t41_lo
C - - - - - 0x00F669 03:B659: C9 F0     CMP #$F0
C - - - - - 0x00F66B 03:B65B: 6A        ROR
C - - - - - 0x00F66C 03:B65C: 5D B2 06  EOR ram_06B2_obj,X
C - - - - - 0x00F66F 03:B65F: 2A        ROL
C - - - - - 0x00F670 03:B660: 90 06     BCC bra_B668
C - - - - - 0x00F672 03:B662: A9 46     LDA #$46
loc_B664:
C D 1 - - - 0x00F674 03:B664: 9D B2 06  STA ram_06B2_obj,X
bra_B667_RTS:
C - - - - - 0x00F677 03:B667: 60        RTS
bra_B668:
C - - - - - 0x00F678 03:B668: 20 55 9E  JSR sub_0x009E65
C - - - - - 0x00F67B 03:B66B: 90 FA     BCC bra_B667_RTS
C - - - - - 0x00F67D 03:B66D: 84 18     STY ram_0018_t15
C - - - - - 0x00F67F 03:B66F: A0 00     LDY #$00
C - - - - - 0x00F681 03:B671: 20 0F F7  JSR sub_0x01F71F
C - - - - - 0x00F684 03:B674: C8        INY ; 01
C - - - - - 0x00F685 03:B675: 20 0F F7  JSR sub_0x01F71F
C - - - - - 0x00F688 03:B678: A4 18     LDY ram_0018_t15
C - - - - - 0x00F68A 03:B67A: 4C 05 9E  JMP loc_0x009E15
bra_B67D:
C - - - - - 0x00F68D 03:B67D: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x00F690 03:B680: C9 D8     CMP #$D8
C - - - - - 0x00F692 03:B682: 90 03     BCC bra_B687
C - - - - - 0x00F694 03:B684: 4C 17 9A  JMP loc_0x009A27
bra_B687:
C - - - - - 0x00F697 03:B687: A9 00     LDA #$00
C - - - - - 0x00F699 03:B689: A0 10     LDY #$10
C - - - - - 0x00F69B 03:B68B: 20 BC 8F  JSR sub_0x008FCC
C - - - - - 0x00F69E 03:B68E: A5 01     LDA ram_0001_t15_table_index
C - - - - - 0x00F6A0 03:B690: C9 03     CMP #$03
C - - - - - 0x00F6A2 03:B692: D0 D3     BNE bra_B667_RTS
C - - - - - 0x00F6A4 03:B694: 20 7C 96  JSR sub_0x00968C
C - - - - - 0x00F6A7 03:B697: A0 00     LDY #$00
bra_B699_loop:
C - - - - - 0x00F6A9 03:B699: A2 00     LDX #$00
bra_B69B_loop:
C - - - - - 0x00F6AB 03:B69B: B9 C8 B6  LDA tbl_B6C8,Y
C - - - - - 0x00F6AE 03:B69E: 95 08     STA ram_0008_t04,X
C - - - - - 0x00F6B0 03:B6A0: C8        INY
C - - - - - 0x00F6B1 03:B6A1: E8        INX
C - - - - - 0x00F6B2 03:B6A2: E0 05     CPX #$05
C - - - - - 0x00F6B4 03:B6A4: 90 F5     BCC bra_B69B_loop
C - - - - - 0x00F6B6 03:B6A6: A6 53     LDX ram_0053
C - - - - - 0x00F6B8 03:B6A8: 20 83 80  JSR sub_0x008093
C - - - - - 0x00F6BB 03:B6AB: 90 16     BCC bra_B6C3
C - - - - - 0x00F6BD 03:B6AD: 20 D6 90  JSR sub_0x0090E6_0600x_AND_F0
C - - - - - 0x00F6C0 03:B6B0: F0 07     BEQ bra_B6B9
- - - - - - 0x00F6C2 03:B6B2: BD 68 06  LDA ram_obj_pos_Y,X
- - - - - - 0x00F6C5 03:B6B5: C9 90     CMP #$90
- - - - - - 0x00F6C7 03:B6B7: B0 0A     BCS bra_B6C3
bra_B6B9:
C - - - - - 0x00F6C9 03:B6B9: A5 0C     LDA ram_0008_t04 + $04
C - - - - - 0x00F6CB 03:B6BB: 4C 64 B6  JMP loc_B664
bra_B6C3:
C - - - - - 0x00F6D3 03:B6C3: C0 0A     CPY #$0A
C - - - - - 0x00F6D5 03:B6C5: 90 D2     BCC bra_B699_loop
- - - - - - 0x00F6D7 03:B6C7: 60        RTS



tbl_B6C8:
- D 1 - - - 0x00F6D8 03:B6C8: 7C        .byte $7C   ; 00 
- D 1 - - - 0x00F6D9 03:B6C9: 07        .byte $07   ; 01 
- D 1 - - - 0x00F6DA 03:B6CA: FB        .byte $FB   ; 02 
- D 1 - - - 0x00F6DB 03:B6CB: 07        .byte $07   ; 03 
- D 1 - - - 0x00F6DC 03:B6CC: 01        .byte $01   ; 04 
- D 1 - - - 0x00F6DD 03:B6CD: 24        .byte $24   ; 05 
- D 1 - - - 0x00F6DE 03:B6CE: 08        .byte $08   ; 06 
- D 1 - - - 0x00F6DF 03:B6CF: 95        .byte $95   ; 07 
- D 1 - - - 0x00F6E0 03:B6D0: 08        .byte $08   ; 08 
- D 1 - - - 0x00F6E1 03:B6D1: 81        .byte $81   ; 09 



sub_F69D:
C - - - - - 0x01F6AD 07:F69D: B9 4E 06  LDA ram_obj_pos_X,Y
C - - - - - 0x01F6B0 07:F6A0: 38        SEC
C - - - - - 0x01F6B1 07:F6A1: E9 10     SBC #$10
C - - - - - 0x01F6B3 07:F6A3: 99 4E 06  STA ram_obj_pos_X,Y
C - - - - - 0x01F6B6 07:F6A6: B9 00 06  LDA ram_0600_obj,Y
C - - - - - 0x01F6B9 07:F6A9: 09 08     ORA #$08
C - - - - - 0x01F6BB 07:F6AB: 99 00 06  STA ram_0600_obj,Y
C - - - - - 0x01F6BE 07:F6AE: 60        RTS



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_016_0x00FA55_03:
C - - J - - 0x00FA55 03:BA45: BD 78 07  LDA ram_0778_unk,X
C - - - - - 0x00FA58 03:BA48: D0 0D     BNE bra_BA57
C - - - - - 0x00FA5A 03:BA4A: A9 00     LDA #$00
C - - - - - 0x00FA5C 03:BA4C: 9D B4 07  STA ram_07B4_unk,X
C - - - - - 0x00FA5F 03:BA4F: FE 78 07  INC ram_0778_unk,X
C - - - - - 0x00FA62 03:BA52: A9 10     LDA #$10
C - - - - - 0x00FA64 03:BA54: 9D 9C 06  STA ram_069C_obj,X
bra_BA57:
C - - - - - 0x00FA67 03:BA57: 20 81 8D  JSR sub_0x008D91
C - - - - - 0x00FA6A 03:BA5A: B0 E6     BCS bra_BA42
C - - - - - 0x00FA6C 03:BA5C: 20 1E 91  JSR sub_0x00912E
C - - - - - 0x00FA6F 03:BA5F: 90 0A     BCC bra_BA6B
C - - - - - 0x00FA71 03:BA61: A5 00     LDA ram_0000_t42
C - - - - - 0x00FA73 03:BA63: C9 04     CMP #$04
C - - - - - 0x00FA75 03:BA65: F0 04     BEQ bra_BA6B
C - - - - - 0x00FA77 03:BA67: C9 A0     CMP #$A0
C - - - - - 0x00FA79 03:BA69: D0 D7     BNE bra_BA42
bra_BA6B:
C - - - - - 0x00FA7B 03:BA6B: BD 00 06  LDA ram_0600_obj,X
C - - - - - 0x00FA7E 03:BA6E: 10 06     BPL bra_BA76
bra_BA70:
C - - - - - 0x00FA80 03:BA70: 20 4C 9A  JSR sub_0x009A5C_clear_animation
bra_BA42:
C - - - - - 0x00FA52 03:BA42: 4C 17 9A  JMP loc_0x009A27
bra_BA76:
C - - - - - 0x00FA86 03:BA76: DE 9C 06  DEC ram_069C_obj,X
C - - - - - 0x00FA89 03:BA79: D0 0F     BNE bra_BA8A
C - - - - - 0x00FA8B 03:BA7B: BD B4 07  LDA ram_07B4_unk,X
C - - - - - 0x00FA8E 03:BA7E: 18        CLC
C - - - - - 0x00FA8F 03:BA7F: 69 01     ADC #$01
C - - - - - 0x00FA91 03:BA81: C9 0C     CMP #$0C
C - - - - - 0x00FA93 03:BA83: 90 02     BCC bra_BA87
- - - - - - 0x00FA95 03:BA85: A9 00     LDA #$00
bra_BA87:
C - - - - - 0x00FA97 03:BA87: 9D B4 07  STA ram_07B4_unk,X
bra_BA8A:
C - - - - - 0x00FA9A 03:BA8A: BD B4 07  LDA ram_07B4_unk,X
; * 04
C - - - - - 0x00FA9D 03:BA8D: 0A        ASL
C - - - - - 0x00FA9E 03:BA8E: 0A        ASL
C - - - - - 0x00FA9F 03:BA8F: A8        TAY
C - - - - - 0x00FAA0 03:BA90: B9 05 BB  LDA tbl_BB03 + $02,Y
C - - - - - 0x00FAA3 03:BA93: 9D 1A 06  STA ram_obj_animation_lo,X
C - - - - - 0x00FAA6 03:BA96: A9 20     LDA #$20
C - - - - - 0x00FAA8 03:BA98: 9D 34 06  STA ram_obj_animation_hi,X
C - - - - - 0x00FAAB 03:BA9B: B9 03 BB  LDA tbl_BB03,Y
C - - - - - 0x00FAAE 03:BA9E: 18        CLC
C - - - - - 0x00FAAF 03:BA9F: 7D 4E 06  ADC ram_obj_pos_X,X
C - - - - - 0x00FAB2 03:BAA2: 9D 4E 06  STA ram_obj_pos_X,X
C - - - - - 0x00FAB5 03:BAA5: 6A        ROR
C - - - - - 0x00FAB6 03:BAA6: 59 03 BB  EOR tbl_BB03,Y
C - - - - - 0x00FAB9 03:BAA9: 2A        ROL
C - - - - - 0x00FABA 03:BAAA: B0 C4     BCS bra_BA70
C - - - - - 0x00FABC 03:BAAC: B9 04 BB  LDA tbl_BB03 + $01,Y
C - - - - - 0x00FABF 03:BAAF: 18        CLC
C - - - - - 0x00FAC0 03:BAB0: 7D 68 06  ADC ram_obj_pos_Y,X
C - - - - - 0x00FAC3 03:BAB3: 9D 68 06  STA ram_obj_pos_Y,X
C - - - - - 0x00FAC6 03:BAB6: 6A        ROR
C - - - - - 0x00FAC7 03:BAB7: 59 04 BB  EOR tbl_BB03 + $01,Y
C - - - - - 0x00FACA 03:BABA: 2A        ROL
C - - - - - 0x00FACB 03:BABB: B0 B3     BCS bra_BA70
C - - - - - 0x00FACD 03:BABD: B9 06 BB  LDA tbl_BB03 + $03,Y
C - - - - - 0x00FAD0 03:BAC0: 9D B2 06  STA ram_06B2_obj,X
C - - - - - 0x00FAD3 03:BAC3: BD 9C 06  LDA ram_069C_obj,X
C - - - - - 0x00FAD6 03:BAC6: D0 AB     BNE bra_BA73
C - - - - - 0x00FAD8 03:BAC8: A9 10     LDA #$10
C - - - - - 0x00FADA 03:BACA: 9D 9C 06  STA ram_069C_obj,X
C - - - - - 0x00FADD 03:BACD: A9 D1     LDA #$D1
C - - - - - 0x00FADF 03:BACF: 20 1F 97  JSR sub_0x00972F
C - - - - - 0x00FAE2 03:BAD2: B0 9F     BCS bra_BA73
C - - - - - 0x00FAE4 03:BAD4: 98        TYA
C - - - - - 0x00FAE5 03:BAD5: AA        TAX
C - - - - - 0x00FAE6 03:BAD6: 20 B1 93  JSR sub_0x0093C1_06B2x_LSRx4_TAY
C - - - - - 0x00FAE9 03:BAD9: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x00FAEC 03:BADC: 18        CLC
C - - - - - 0x00FAED 03:BADD: 79 31 BB  ADC tbl_BB33 - $02,Y
C - - - - - 0x00FAF0 03:BAE0: 9D 4E 06  STA ram_obj_pos_X,X
C - - - - - 0x00FAF3 03:BAE3: 6A        ROR
C - - - - - 0x00FAF4 03:BAE4: 59 31 BB  EOR tbl_BB33 - $02,Y
C - - - - - 0x00FAF7 03:BAE7: 2A        ROL
C - - - - - 0x00FAF8 03:BAE8: B0 11     BCS bra_BAFB
C - - - - - 0x00FAFA 03:BAEA: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x00FAFD 03:BAED: 18        CLC
C - - - - - 0x00FAFE 03:BAEE: 79 32 BB  ADC tbl_BB33 - $01,Y
C - - - - - 0x00FB01 03:BAF1: 9D 68 06  STA ram_obj_pos_Y,X
C - - - - - 0x00FB04 03:BAF4: 6A        ROR
C - - - - - 0x00FB05 03:BAF5: 59 32 BB  EOR tbl_BB33 - $01,Y
C - - - - - 0x00FB08 03:BAF8: 2A        ROL
C - - - - - 0x00FB09 03:BAF9: 90 03     BCC bra_BAFE
bra_BAFB:
- - - - - - 0x00FB0B 03:BAFB: 20 52 9A  JSR sub_0x009A62
bra_BAFE:
C - - - - - 0x00FB0E 03:BAFE: A6 53     LDX ram_0053
bra_BA73:
C D 1 - - - 0x00FA83 03:BA73: 4C C8 90  JMP loc_0x0090D8_0600x_write_08



tbl_BB03:
; 00 
- D 1 - - - 0x00FB13 03:BB03: 04        .byte $04   ; 
- D 1 - - - 0x00FB14 03:BB04: 00        .byte $00   ; 
- D 1 - - - 0x00FB15 03:BB05: 3E        .byte $3E   ; 
- D 1 - - - 0x00FB16 03:BB06: 40        .byte $40   ; 
; 01 
- D 1 - - - 0x00FB17 03:BB07: 08        .byte $08   ; 
- D 1 - - - 0x00FB18 03:BB08: 00        .byte $00   ; 
- D 1 - - - 0x00FB19 03:BB09: 3F        .byte $3F   ; 
- D 1 - - - 0x00FB1A 03:BB0A: 20        .byte $20   ; 
; 02 
- D 1 - - - 0x00FB1B 03:BB0B: 0C        .byte $0C   ; 
- D 1 - - - 0x00FB1C 03:BB0C: FC        .byte $FC   ; 
- D 1 - - - 0x00FB1D 03:BB0D: 3F        .byte $3F   ; 
- D 1 - - - 0x00FB1E 03:BB0E: 20        .byte $20   ; 
; 03 
- D 1 - - - 0x00FB1F 03:BB0F: 08        .byte $08   ; 
- D 1 - - - 0x00FB20 03:BB10: 00        .byte $00   ; 
- D 1 - - - 0x00FB21 03:BB11: 3F        .byte $3F   ; 
- D 1 - - - 0x00FB22 03:BB12: 20        .byte $20   ; 
; 04 
- D 1 - - - 0x00FB23 03:BB13: 04        .byte $04   ; 
- D 1 - - - 0x00FB24 03:BB14: 00        .byte $00   ; 
- D 1 - - - 0x00FB25 03:BB15: 3E        .byte $3E   ; 
- D 1 - - - 0x00FB26 03:BB16: 40        .byte $40   ; 
; 05 
- D 1 - - - 0x00FB27 03:BB17: 00        .byte $00   ; 
- D 1 - - - 0x00FB28 03:BB18: 00        .byte $00   ; 
- D 1 - - - 0x00FB29 03:BB19: 3E        .byte $3E   ; 
- D 1 - - - 0x00FB2A 03:BB1A: 40        .byte $40   ; 
; 06 
- D 1 - - - 0x00FB2B 03:BB1B: FC        .byte $FC   ; 
- D 1 - - - 0x00FB2C 03:BB1C: 00        .byte $00   ; 
- D 1 - - - 0x00FB2D 03:BB1D: 3E        .byte $3E   ; 
- D 1 - - - 0x00FB2E 03:BB1E: 40        .byte $40   ; 
; 07 
- - - - - - 0x00FB2F 03:BB1F: F8        .byte $F8   ; 
- - - - - - 0x00FB30 03:BB20: 00        .byte $00   ; 
- - - - - - 0x00FB31 03:BB21: 3D        .byte $3D   ; 
- - - - - - 0x00FB32 03:BB22: 60        .byte $60   ; 
; 08 
- - - - - - 0x00FB33 03:BB23: F4        .byte $F4   ; 
- - - - - - 0x00FB34 03:BB24: FC        .byte $FC   ; 
- - - - - - 0x00FB35 03:BB25: 3D        .byte $3D   ; 
- - - - - - 0x00FB36 03:BB26: 60        .byte $60   ; 
; 09 
- - - - - - 0x00FB37 03:BB27: F8        .byte $F8   ; 
- - - - - - 0x00FB38 03:BB28: 00        .byte $00   ; 
- - - - - - 0x00FB39 03:BB29: 3D        .byte $3D   ; 
- - - - - - 0x00FB3A 03:BB2A: 60        .byte $60   ; 
; 0A 
- - - - - - 0x00FB3B 03:BB2B: FC        .byte $FC   ; 
- - - - - - 0x00FB3C 03:BB2C: 00        .byte $00   ; 
- - - - - - 0x00FB3D 03:BB2D: 3E        .byte $3E   ; 
- - - - - - 0x00FB3E 03:BB2E: 40        .byte $40   ; 
; 0B 
- - - - - - 0x00FB3F 03:BB2F: 00        .byte $00   ; 
- - - - - - 0x00FB40 03:BB30: 00        .byte $00   ; 
- - - - - - 0x00FB41 03:BB31: 3E        .byte $3E   ; 
- - - - - - 0x00FB42 03:BB32: 40        .byte $40   ; 



tbl_BB33:
- D 1 - - - 0x00FB43 03:BB33: 0C        .byte $0C, $0C   ; 10
- D 1 - - - 0x00FB45 03:BB35: 00        .byte $00, $0C   ; 20
- - - - - - 0x00FB47 03:BB37: F4        .byte $F4, $0C   ; 30



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_016_0x00F3C2_04:
C - - J - - 0x00F3C2 03:B3B2: 20 C1 F6  JSR sub_0x01F6D1
C - - - - - 0x00F3C5 03:B3B5: 20 CE 90  JSR sub_0x0090DE_0600x_ORA_08
C - - - - - 0x00F3C8 03:B3B8: 20 10 8E  JSR sub_0x008E20
C - - - - - 0x00F3CB 03:B3BB: 20 BA 93  JSR sub_0x0093CA
C - - - - - 0x00F3CE 03:B3BE: 90 01     BCC bra_B3C1
C - - - - - 0x00F3D0 03:B3C0: 60        RTS
bra_B3C1:
C - - - - - 0x00F3D1 03:B3C1: A5 9F     LDA ram_009F
C - - - - - 0x00F3D3 03:B3C3: 29 7F     AND #$7F
C - - - - - 0x00F3D5 03:B3C5: C9 28     CMP #$28
C - - - - - 0x00F3D7 03:B3C7: 90 1E     BCC bra_B3E7
C - - - - - 0x00F3D9 03:B3C9: 20 DC 90  JSR sub_0x0090EC
C - - - - - 0x00F3DC 03:B3CC: BC A0 07  LDY ram_07A0_unk,X
C - - - - - 0x00F3DF 03:B3CF: D9 E4 B3  CMP tbl_B3E5 - $01,Y
C - - - - - 0x00F3E2 03:B3D2: D0 03     BNE bra_B3D7
C - - - - - 0x00F3E4 03:B3D4: 20 0A 96  JSR sub_0x00961A
bra_B3D7:
C - - - - - 0x00F3E7 03:B3D7: A9 20     LDA #$20
C - - - - - 0x00F3E9 03:B3D9: 20 62 88  JSR sub_0x008872
C - - - - - 0x00F3EC 03:B3DC: DE A0 07  DEC ram_07A0_unk,X
C - - - - - 0x00F3EF 03:B3DF: D0 03     BNE bra_B3E4_RTS
C - - - - - 0x00F3F1 03:B3E1: 4C 7E B4  JMP loc_0x009A27
bra_B3E4_RTS:
C - - - - - 0x00F3F4 03:B3E4: 60        RTS
bra_B3E7:
C - - - - - 0x00F3F7 03:B3E7: A4 94     LDY ram_0094_array_index
C - - - - - 0x00F3F9 03:B3E9: B9 F0 03  LDA ram_0400 - $10,Y
C - - - - - 0x00F3FC 03:B3EC: 9D 8C 07  STA ram_078C_unk,X
C - - - - - 0x00F3FF 03:B3EF: A5 9F     LDA ram_009F
C - - - - - 0x00F401 03:B3F1: D0 03     BNE bra_B3F6
- - - - - - 0x00F403 03:B3F3: 4C 7E B4  JMP loc_0x009A27
bra_B3F6:
C - - - - - 0x00F406 03:B3F6: 20 36 B5  JSR sub_B536
C - - - - - 0x00F409 03:B3F9: 20 81 B4  JSR sub_B481
C - - - - - 0x00F40C 03:B3FC: 10 0A     BPL bra_B408
C - - - - - 0x00F40E 03:B3FE: 29 7F     AND #$7F
C - - - - - 0x00F410 03:B400: A8        TAY
C - - - - - 0x00F411 03:B401: 20 30 B5  JSR sub_B530
C - - - - - 0x00F414 03:B404: F0 01     BEQ bra_B407
C - - - - - 0x00F416 03:B406: C8        INY
bra_B407:
C - - - - - 0x00F417 03:B407: 98        TYA
bra_B408:
C - - - - - 0x00F418 03:B408: A8        TAY
C - - - - - 0x00F419 03:B409: B9 D5 B4  LDA tbl_B4D5_index,Y
C - - - - - 0x00F41C 03:B40C: A8        TAY
C - - - - - 0x00F41D 03:B40D: 20 87 B4  JSR sub_B487
C - - - - - 0x00F420 03:B410: 20 81 B4  JSR sub_B481
C - - - - - 0x00F423 03:B413: 10 05     BPL bra_B41A
C - - - - - 0x00F425 03:B415: 20 30 B5  JSR sub_B530
C - - - - - 0x00F428 03:B418: F0 05     BEQ bra_B41F
bra_B41A:
C - - - - - 0x00F42A 03:B41A: A9 20     LDA #$20
C - - - - - 0x00F42C 03:B41C: 20 D4 B5  JSR sub_B5D4
bra_B41F:
C - - - - - 0x00F42F 03:B41F: DE A0 07  DEC ram_07A0_unk,X
C - - - - - 0x00F432 03:B422: D0 59     BNE bra_B47D_RTS
C - - - - - 0x00F434 03:B424: 20 C9 8D  JSR sub_0x008DD9_009F_AND_7F_TAY_DEY
C - - - - - 0x00F437 03:B427: C0 07     CPY #$07
C - - - - - 0x00F439 03:B429: 90 1C     BCC bra_B447
C - - - - - 0x00F43B 03:B42B: A9 00     LDA #$00
C - - - - - 0x00F43D 03:B42D: C0 09     CPY #$09
C - - - - - 0x00F43F 03:B42F: 90 18     BCC bra_B449
C - - - - - 0x00F441 03:B431: C0 25     CPY #$25
C - - - - - 0x00F443 03:B433: B0 14     BCS bra_B449
C - - - - - 0x00F445 03:B435: A9 FF     LDA #$FF
C - - - - - 0x00F447 03:B437: C0 1E     CPY #$1E
C - - - - - 0x00F449 03:B439: 90 0E     BCC bra_B449
C - - - - - 0x00F44B 03:B43B: A9 00     LDA #$00
C - - - - - 0x00F44D 03:B43D: C0 20     CPY #$20
C - - - - - 0x00F44F 03:B43F: 90 08     BCC bra_B449
C - - - - - 0x00F451 03:B441: A9 0A     LDA #$0A
C - - - - - 0x00F453 03:B443: C0 23     CPY #$23
C - - - - - 0x00F455 03:B445: B0 02     BCS bra_B449
bra_B447:
C - - - - - 0x00F457 03:B447: A9 55     LDA #$55
bra_B449:
C - - - - - 0x00F459 03:B449: 20 11 B5  JSR sub_B511
C - - - - - 0x00F45C 03:B44C: 20 BE B6  JSR sub_B6BE
C - - - - - 0x00F45F 03:B44F: A5 9F     LDA ram_009F
C - - - - - 0x00F461 03:B451: 38        SEC
C - - - - - 0x00F462 03:B452: E9 21     SBC #$21
C - - - - - 0x00F464 03:B454: C9 03     CMP #$03
C - - - - - 0x00F466 03:B456: B0 26     BCS bra_B47E
C - - - - - 0x00F468 03:B458: BD 8C 07  LDA ram_078C_unk,X
C - - - - - 0x00F46B 03:B45B: C9 69     CMP #$69
C - - - - - 0x00F46D 03:B45D: D0 1F     BNE bra_B47E
C - - - - - 0x00F46F 03:B45F: A0 09     LDY #$09
C - - - - - 0x00F471 03:B461: A9 81     LDA #$81
C - - - - - 0x00F473 03:B463: 85 0A     STA ram_000A_t09
C - - - - - 0x00F475 03:B465: 20 D0 8B  JSR sub_0x008BE0
C - - - - - 0x00F478 03:B468: A9 20     LDA #$20
C - - - - - 0x00F47A 03:B46A: 99 B2 06  STA ram_06B2_obj,Y
C - - - - - 0x00F47D 03:B46D: A9 EF     LDA #$EF
C - - - - - 0x00F47F 03:B46F: 38        SEC
C - - - - - 0x00F480 03:B470: E5 61     SBC ram_0061_lo
C - - - - - 0x00F482 03:B472: 99 4E 06  STA ram_obj_pos_X,Y
C - - - - - 0x00F485 03:B475: A9 A2     LDA #$A2
C - - - - - 0x00F487 03:B477: 38        SEC
C - - - - - 0x00F488 03:B478: E5 64     SBC ram_0064_lo
C - - - - - 0x00F48A 03:B47A: 99 68 06  STA ram_obj_pos_Y,Y
bra_B47D_RTS:
C - - - - - 0x00F48D 03:B47D: 60        RTS
bra_B47E:
C D 1 - - - 0x00F48E 03:B47E: 4C 17 9A  JMP loc_0x009A27



sub_B6BE:
C - - - - - 0x00F6CE 03:B6BE: A9 24     LDA #con_music_24
C - - - - - 0x00F6D0 03:B6C0: 4C D8 95  JMP loc_0x0095E8_play_music



sub_B5D4:
C - - - - - 0x00F5E4 03:B5D4: 18        CLC
C - - - - - 0x00F5E5 03:B5D5: 7D AA 07  ADC ram_07AA_unk,X
C - - - - - 0x00F5E8 03:B5D8: 9D AA 07  STA ram_07AA_unk,X
C - - - - - 0x00F5EB 03:B5DB: 90 03     BCC bra_B5E0_RTS
C - - - - - 0x00F5ED 03:B5DD: FE B4 07  INC ram_07B4_unk,X
bra_B5E0_RTS:
C - - - - - 0x00F5F0 03:B5E0: 60        RTS



sub_B481:
C - - - - - 0x00F491 03:B481: A5 9F     LDA ram_009F
C - - - - - 0x00F493 03:B483: 38        SEC
C - - - - - 0x00F494 03:B484: E9 01     SBC #$01
C - - - - - 0x00F496 03:B486: 60        RTS



sub_B530:
C - - - - - 0x00F540 03:B530: BD A0 07  LDA ram_07A0_unk,X
C - - - - - 0x00F543 03:B533: 29 01     AND #$01
C - - - - - 0x00F545 03:B535: 60        RTS



tbl_B3E5:
- D 1 - - - 0x00F3F5 03:B3E5: 6B        .byte $6B   ; 01 
- D 1 - - - 0x00F3F6 03:B3E6: 6A        .byte $6A   ; 02 



tbl_B4D5_index:
- D 1 - - - 0x00F4E5 03:B4D5: 06        .byte $06   ; 00 
- D 1 - - - 0x00F4E6 03:B4D6: 06        .byte $06   ; 01 
- - - - - - 0x00F4E7 03:B4D7: 00        .byte $00   ; 02 
- D 1 - - - 0x00F4E8 03:B4D8: 02        .byte $02   ; 03 
- D 1 - - - 0x00F4E9 03:B4D9: 06        .byte $06   ; 04 
- D 1 - - - 0x00F4EA 03:B4DA: 06        .byte $06   ; 05 
- D 1 - - - 0x00F4EB 03:B4DB: 00        .byte $00   ; 06 
- D 1 - - - 0x00F4EC 03:B4DC: 04        .byte $04   ; 07 
- D 1 - - - 0x00F4ED 03:B4DD: 04        .byte $04   ; 08 
- - - - - - 0x00F4EE 03:B4DE: 10        .byte $10   ; 09 
- D 1 - - - 0x00F4EF 03:B4DF: 10        .byte $10   ; 0A 
- - - - - - 0x00F4F0 03:B4E0: 0A        .byte $0A   ; 0B 
- D 1 - - - 0x00F4F1 03:B4E1: 0C        .byte $0C   ; 0C 
- D 1 - - - 0x00F4F2 03:B4E2: 0C        .byte $0C   ; 0D 
- D 1 - - - 0x00F4F3 03:B4E3: 16        .byte $16   ; 0E 
- D 1 - - - 0x00F4F4 03:B4E4: 0C        .byte $0C   ; 0F 
- D 1 - - - 0x00F4F5 03:B4E5: 18        .byte $18   ; 10 
- D 1 - - - 0x00F4F6 03:B4E6: 10        .byte $10   ; 11 
- D 1 - - - 0x00F4F7 03:B4E7: 10        .byte $10   ; 12 
- D 1 - - - 0x00F4F8 03:B4E8: 0A        .byte $0A   ; 13 
- D 1 - - - 0x00F4F9 03:B4E9: 0C        .byte $0C   ; 14 
- D 1 - - - 0x00F4FA 03:B4EA: 0C        .byte $0C   ; 15 
- D 1 - - - 0x00F4FB 03:B4EB: 16        .byte $16   ; 16 
- - - - - - 0x00F4FC 03:B4EC: 10        .byte $10   ; 17 
- D 1 - - - 0x00F4FD 03:B4ED: 10        .byte $10   ; 18 
- D 1 - - - 0x00F4FE 03:B4EE: 0A        .byte $0A   ; 19 
- D 1 - - - 0x00F4FF 03:B4EF: 0C        .byte $0C   ; 1A 
- D 1 - - - 0x00F500 03:B4F0: 10        .byte $10   ; 1B 
- D 1 - - - 0x00F501 03:B4F1: 10        .byte $10   ; 1C 
- D 1 - - - 0x00F502 03:B4F2: 0A        .byte $0A   ; 1D 
- D 1 - - - 0x00F503 03:B4F3: 0E        .byte $0E   ; 1E 
- D 1 - - - 0x00F504 03:B4F4: 0E        .byte $0E   ; 1F 
- - - - - - 0x00F505 03:B4F5: 14        .byte $14   ; 20 
- - - - - - 0x00F506 03:B4F6: 14        .byte $14   ; 21 
- D 1 - - - 0x00F507 03:B4F7: 14        .byte $14   ; 22 
- D 1 - - - 0x00F508 03:B4F8: 12        .byte $12   ; 23 
- - - - - - 0x00F509 03:B4F9: 12        .byte $12   ; 24 
- D 1 - - - 0x00F50A 03:B4FA: 04        .byte $04   ; 25 
- D 1 - - - 0x00F50B 03:B4FB: 04        .byte $04   ; 26 



tbl_B5AD:
;                                              +----------- 
;                                              |     +----- 
;                                              |     |
- D 1 - - - 0x00F5BD 03:B5AD: 00        .byte $00 + $00   ; 01 
- D 1 - - - 0x00F5BE 03:B5AE: 00        .byte $00 + $00   ; 02 
- - - - - - 0x00F5BF 03:B5AF: 00        .byte $00 + $00   ; 03 
- D 1 - - - 0x00F5C0 03:B5B0: 00        .byte $00 + $00   ; 04 
- D 1 - - - 0x00F5C1 03:B5B1: 01        .byte $00 + $01   ; 05 
- D 1 - - - 0x00F5C2 03:B5B2: 01        .byte $00 + $01   ; 06 
- D 1 - - - 0x00F5C3 03:B5B3: 01        .byte $00 + $01   ; 07 
- D 1 - - - 0x00F5C4 03:B5B4: 02        .byte $00 + $02   ; 08 
- D 1 - - - 0x00F5C5 03:B5B5: 02        .byte $00 + $02   ; 09 
- - - - - - 0x00F5C6 03:B5B6: 83        .byte $80 + $03   ; 0A 
- D 1 - - - 0x00F5C7 03:B5B7: 83        .byte $80 + $03   ; 0B 
- - - - - - 0x00F5C8 03:B5B8: 83        .byte $80 + $03   ; 0C 
- D 1 - - - 0x00F5C9 03:B5B9: 83        .byte $80 + $03   ; 0D 
- D 1 - - - 0x00F5CA 03:B5BA: 83        .byte $80 + $03   ; 0E 
- - - - - - 0x00F5CB 03:B5BB: 83        .byte $80 + $03   ; 0F 
- D 1 - - - 0x00F5CC 03:B5BC: 83        .byte $80 + $03   ; 10 
- - - - - - 0x00F5CD 03:B5BD: 83        .byte $80 + $03   ; 11 
- D 1 - - - 0x00F5CE 03:B5BE: 85        .byte $80 + $05   ; 12 
- D 1 - - - 0x00F5CF 03:B5BF: 85        .byte $80 + $05   ; 13 
- D 1 - - - 0x00F5D0 03:B5C0: 85        .byte $80 + $05   ; 14 
- D 1 - - - 0x00F5D1 03:B5C1: 85        .byte $80 + $05   ; 15 
- D 1 - - - 0x00F5D2 03:B5C2: 85        .byte $80 + $05   ; 16 
- - - - - - 0x00F5D3 03:B5C3: 85        .byte $80 + $05   ; 17 
- - - - - - 0x00F5D4 03:B5C4: 07        .byte $00 + $07   ; 18 
- D 1 - - - 0x00F5D5 03:B5C5: 07        .byte $00 + $07   ; 19 
- D 1 - - - 0x00F5D6 03:B5C6: 07        .byte $00 + $07   ; 1A 
- D 1 - - - 0x00F5D7 03:B5C7: 07        .byte $00 + $07   ; 1B 
- D 1 - - - 0x00F5D8 03:B5C8: 08        .byte $00 + $08   ; 1C 
- D 1 - - - 0x00F5D9 03:B5C9: 08        .byte $00 + $08   ; 1D 
- D 1 - - - 0x00F5DA 03:B5CA: 08        .byte $00 + $08   ; 1E 
- D 1 - - - 0x00F5DB 03:B5CB: 09        .byte $00 + $09   ; 1F 
- D 1 - - - 0x00F5DC 03:B5CC: 09        .byte $00 + $09   ; 20 
- - - - - - 0x00F5DD 03:B5CD: 0A        .byte $00 + $0A   ; 21 
- - - - - - 0x00F5DE 03:B5CE: 0A        .byte $00 + $0A   ; 22 
- D 1 - - - 0x00F5DF 03:B5CF: 0A        .byte $00 + $0A   ; 23 
- D 1 - - - 0x00F5E0 03:B5D0: 0B        .byte $00 + $0B   ; 24 
- - - - - - 0x00F5E1 03:B5D1: 0B        .byte $00 + $0B   ; 25 
- D 1 - - - 0x00F5E2 03:B5D2: 0C        .byte $00 + $0C   ; 26 
- D 1 - - - 0x00F5E3 03:B5D3: 0C        .byte $00 + $0C   ; 27 



tbl_B579:
; 00 
- D 1 - - - 0x00F589 03:B579: 76        .byte $76   ; 
- D 1 - - - 0x00F58A 03:B57A: 76        .byte $76   ; 
- D 1 - - - 0x00F58B 03:B57B: 75        .byte $75   ; 
- D 1 - - - 0x00F58C 03:B57C: 00        .byte $00   ; 
; 01 
- D 1 - - - 0x00F58D 03:B57D: 76        .byte $76   ; 
- D 1 - - - 0x00F58E 03:B57E: 75        .byte $75   ; 
- D 1 - - - 0x00F58F 03:B57F: 00        .byte $00   ; 
- D 1 - - - 0x00F590 03:B580: FF        .byte $FF   ; 
; 02 
- D 1 - - - 0x00F591 03:B581: 6D        .byte $6D   ; 
- D 1 - - - 0x00F592 03:B582: 00        .byte $00   ; 
- D 1 - - - 0x00F593 03:B583: 00        .byte $00   ; 
- D 1 - - - 0x00F594 03:B584: FF        .byte $FF   ; 
; 03 
- D 1 - - - 0x00F595 03:B585: 69        .byte $69   ; 
- D 1 - - - 0x00F596 03:B586: 69        .byte $69   ; 
- D 1 - - - 0x00F597 03:B587: 69        .byte $69   ; 
- D 1 - - - 0x00F598 03:B588: 69        .byte $69   ; 
; 04 
- D 1 - - - 0x00F599 03:B589: 68        .byte $68   ; 
- D 1 - - - 0x00F59A 03:B58A: 00        .byte $00   ; 
- D 1 - - - 0x00F59B 03:B58B: 00        .byte $00   ; 
- D 1 - - - 0x00F59C 03:B58C: 00        .byte $00   ; 
; 05 
- D 1 - - - 0x00F59D 03:B58D: 69        .byte $69   ; 
- D 1 - - - 0x00F59E 03:B58E: 69        .byte $69   ; 
- D 1 - - - 0x00F59F 03:B58F: 69        .byte $69   ; 
- D 1 - - - 0x00F5A0 03:B590: 68        .byte $68   ; 
; 06 
- D 1 - - - 0x00F5A1 03:B591: 00        .byte $00   ; 
- D 1 - - - 0x00F5A2 03:B592: 00        .byte $00   ; 
- D 1 - - - 0x00F5A3 03:B593: 00        .byte $00   ; 
- D 1 - - - 0x00F5A4 03:B594: 00        .byte $00   ; 
; 07 
- D 1 - - - 0x00F5A5 03:B595: 69        .byte $69   ; 
- D 1 - - - 0x00F5A6 03:B596: 69        .byte $69   ; 
- D 1 - - - 0x00F5A7 03:B597: 68        .byte $68   ; 
- D 1 - - - 0x00F5A8 03:B598: 00        .byte $00   ; 
; 08 
- D 1 - - - 0x00F5A9 03:B599: 69        .byte $69   ; 
- D 1 - - - 0x00F5AA 03:B59A: 68        .byte $68   ; 
- D 1 - - - 0x00F5AB 03:B59B: 00        .byte $00   ; 
- D 1 - - - 0x00F5AC 03:B59C: FF        .byte $FF   ; 
; 09 
- D 1 - - - 0x00F5AD 03:B59D: 77        .byte $77   ; 
- D 1 - - - 0x00F5AE 03:B59E: 00        .byte $00   ; 
- D 1 - - - 0x00F5AF 03:B59F: FF        .byte $FF   ; 
- - - - - - 0x00F5B0 03:B5A0: FF        .byte $FF   ; 
; 0A 
- D 1 - - - 0x00F5B1 03:B5A1: 00        .byte $00   ; 
- D 1 - - - 0x00F5B2 03:B5A2: 00        .byte $00   ; 
- D 1 - - - 0x00F5B3 03:B5A3: 00        .byte $00   ; 
- D 1 - - - 0x00F5B4 03:B5A4: FF        .byte $FF   ; 
; 0B 
- D 1 - - - 0x00F5B5 03:B5A5: 8A        .byte $8A   ; 
- D 1 - - - 0x00F5B6 03:B5A6: 8B        .byte $8B   ; 
- D 1 - - - 0x00F5B7 03:B5A7: FF        .byte $FF   ; 
- - - - - - 0x00F5B8 03:B5A8: FF        .byte $FF   ; 
; 0C 
- D 1 - - - 0x00F5B9 03:B5A9: 6D        .byte $6D   ; 
- D 1 - - - 0x00F5BA 03:B5AA: 00        .byte $00   ; 
- D 1 - - - 0x00F5BB 03:B5AB: FF        .byte $FF   ; 
- - - - - - 0x00F5BC 03:B5AC: FF        .byte $FF   ; 



sub_B536:
C - - - - - 0x00F546 03:B536: BD 78 07  LDA ram_0778_unk,X
C - - - - - 0x00F549 03:B539: D0 3D     BNE bra_B578_RTS
C - - - - - 0x00F54B 03:B53B: 20 C9 8D  JSR sub_0x008DD9_009F_AND_7F_TAY_DEY
C - - - - - 0x00F54E 03:B53E: B9 AD B5  LDA tbl_B5AD,Y
C - - - - - 0x00F551 03:B541: 48        PHA
C - - - - - 0x00F552 03:B542: 20 54 B5  JSR sub_B554
C - - - - - 0x00F555 03:B545: BD BE 07  LDA ram_07BE_unk,X
C - - - - - 0x00F558 03:B548: 38        SEC
C - - - - - 0x00F559 03:B549: E9 40     SBC #$40
C - - - - - 0x00F55B 03:B54B: 9D BE 07  STA ram_07BE_unk,X
C - - - - - 0x00F55E 03:B54E: 68        PLA
C - - - - - 0x00F55F 03:B54F: 10 22     BPL bra_B573
C - - - - - 0x00F561 03:B551: 18        CLC
C - - - - - 0x00F562 03:B552: 69 01     ADC #$01
sub_B554:
; * 04
C - - - - - 0x00F564 03:B554: 0A        ASL
C - - - - - 0x00F565 03:B555: 0A        ASL
C - - - - - 0x00F566 03:B556: A8        TAY
C - - - - - 0x00F567 03:B557: BD BE 07  LDA ram_07BE_unk,X
C - - - - - 0x00F56A 03:B55A: AA        TAX
C - - - - - 0x00F56B 03:B55B: A9 04     LDA #$04
C - - - - - 0x00F56D 03:B55D: 85 1F     STA ram_001F_t08_loop_counter
bra_B55F_loop:
C - - - - - 0x00F56F 03:B55F: B9 79 B5  LDA tbl_B579,Y
C - - - - - 0x00F572 03:B562: C9 FF     CMP #$FF
C - - - - - 0x00F574 03:B564: F0 0D     BEQ bra_B573
C - - - - - 0x00F576 03:B566: 9D 00 04  STA ram_0400,X
C - - - - - 0x00F579 03:B569: C8        INY
C - - - - - 0x00F57A 03:B56A: 8A        TXA
C - - - - - 0x00F57B 03:B56B: 38        SEC
C - - - - - 0x00F57C 03:B56C: E9 10     SBC #$10
C - - - - - 0x00F57E 03:B56E: AA        TAX
C - - - - - 0x00F57F 03:B56F: C6 1F     DEC ram_001F_t08_loop_counter
C - - - - - 0x00F581 03:B571: D0 EC     BNE bra_B55F_loop
bra_B573:
C - - - - - 0x00F583 03:B573: A6 53     LDX ram_0053
C - - - - - 0x00F585 03:B575: FE 78 07  INC ram_0778_unk,X
bra_B578_RTS:
C - - - - - 0x00F588 03:B578: 60        RTS



bra_B4FC_loop:
C - - - - - 0x00F50C 03:B4FC: A9 F0     LDA #$F0
C - - - - - 0x00F50E 03:B4FE: 20 11 B5  JSR sub_B511
C - - - - - 0x00F511 03:B501: BD C8 07  LDA ram_07C8_unk,X
C - - - - - 0x00F514 03:B504: 38        SEC
C - - - - - 0x00F515 03:B505: E9 08     SBC #$08
C - - - - - 0x00F517 03:B507: 9D C8 07  STA ram_07C8_unk,X
C - - - - - 0x00F51A 03:B50A: B0 03     BCS bra_B50F
- - - - - - 0x00F51C 03:B50C: DE D2 07  DEC ram_07D2_unk,X
bra_B50F:
C - - - - - 0x00F51F 03:B50F: A9 55     LDA #$55
sub_B511:
C - - - - - 0x00F521 03:B511: C9 0A     CMP #$0A
C - - - - - 0x00F523 03:B513: F0 E7     BEQ bra_B4FC_loop
C - - - - - 0x00F525 03:B515: 48        PHA
C - - - - - 0x00F526 03:B516: A9 04     LDA #$04
C - - - - - 0x00F528 03:B518: 20 A3 90  JSR sub_0x0090B3
C - - - - - 0x00F52B 03:B51B: BD C8 07  LDA ram_07C8_unk,X
C - - - - - 0x00F52E 03:B51E: 20 A3 90  JSR sub_0x0090B3
C - - - - - 0x00F531 03:B521: BD D2 07  LDA ram_07D2_unk,X
C - - - - - 0x00F534 03:B524: 20 A3 90  JSR sub_0x0090B3
C - - - - - 0x00F537 03:B527: A9 01     LDA #$01
C - - - - - 0x00F539 03:B529: 20 A3 90  JSR sub_0x0090B3
C - - - - - 0x00F53C 03:B52C: 68        PLA
C - - - - - 0x00F53D 03:B52D: 4C A3 90  JMP loc_0x0090B3



sub_B487:
C - - - - - 0x00F497 03:B487: B9 BB B4  LDA tbl_B4BB,Y
C - - - - - 0x00F49A 03:B48A: 85 02     STA ram_0002_t02_ppu_data
C - - - - - 0x00F49C 03:B48C: B9 BC B4  LDA tbl_B4BB + $01,Y
C - - - - - 0x00F49F 03:B48F: 85 03     STA ram_0002_t02_ppu_data + $01
C - - - - - 0x00F4A1 03:B491: A9 00     LDA #$00
C - - - - - 0x00F4A3 03:B493: 85 06     STA ram_0006_t14_lo
C - - - - - 0x00F4A5 03:B495: 85 07     STA ram_0007_t04_hi
C - - - - - 0x00F4A7 03:B497: 20 81 B4  JSR sub_B481
C - - - - - 0x00F4AA 03:B49A: 10 0D     BPL bra_B4A9
C - - - - - 0x00F4AC 03:B49C: 20 30 B5  JSR sub_B530
C - - - - - 0x00F4AF 03:B49F: F0 08     BEQ bra_B4A9
C - - - - - 0x00F4B1 03:B4A1: A9 60     LDA #< $0160
C - - - - - 0x00F4B3 03:B4A3: 85 06     STA ram_0006_t14_lo
C - - - - - 0x00F4B5 03:B4A5: A9 01     LDA #> $0160
C - - - - - 0x00F4B7 03:B4A7: 85 07     STA ram_0007_t04_hi
bra_B4A9:
C - - - - - 0x00F4B9 03:B4A9: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x00F4BC 03:B4AC: 18        CLC
C - - - - - 0x00F4BD 03:B4AD: 65 06     ADC ram_0006_t14_lo
C - - - - - 0x00F4BF 03:B4AF: 85 06     STA ram_0006_t05_ppu_addr_lo
C - - - - - 0x00F4C1 03:B4B1: BD B4 07  LDA ram_07B4_unk,X
C - - - - - 0x00F4C4 03:B4B4: 65 07     ADC ram_0007_t04_hi
C - - - - - 0x00F4C6 03:B4B6: 85 07     STA ram_0007_t01_ppu_addr_hi
C - - - - - 0x00F4C8 03:B4B8: 4C 92 87  JMP loc_0x0087A2



tbl_B4BB:
- D 1 - - - 0x00F4CB 03:B4BB: 52 AB     .word _off011_0x016B62_00
- D 1 - - - 0x00F4CD 03:B4BD: 24 AB     .word _off011_0x016B34_02
- D 1 - - - 0x00F4CF 03:B4BF: 70 AB     .word _off011_0x016B80_04
- D 1 - - - 0x00F4D1 03:B4C1: 8A AB     .word _off011_0x016B9A_06
- - - - - - 0x00F4D3 03:B4C3: A4 AB     .word _off011_0x016BB4_08   ; never used, no such index
- D 1 - - - 0x00F4D5 03:B4C5: 06 AC     .word _off011_0x016C16_0A
- D 1 - - - 0x00F4D7 03:B4C7: D8 AB     .word _off011_0x016BE8_0C
- D 1 - - - 0x00F4D9 03:B4C9: 58 AC     .word _off011_0x016C68_0E
- D 1 - - - 0x00F4DB 03:B4CB: 72 AC     .word _off011_0x016C82_10
- D 1 - - - 0x00F4DD 03:B4CD: B6 AB     .word _off011_0x016BC6_12
- D 1 - - - 0x00F4DF 03:B4CF: 8C AC     .word _off011_0x016C9C_14
- D 1 - - - 0x00F4E1 03:B4D1: 46 AC     .word _off011_0x016C56_16
- D 1 - - - 0x00F4E3 03:B4D3: 24 AC     .word _off011_0x016C34_18



_off011_0x016B34_02:
- D 1 - I - 0x016B34 05:AB24: 04        .byte $04   ; size X
- D 1 - I - 0x016B35 05:AB25: 0B        .byte $0B   ; size Y
- D 1 - I - 0x016B36 05:AB26: 00        .byte $00, $00, $00, $00   ; 01 
- D 1 - I - 0x016B3A 05:AB2A: 80        .byte $80, $81, $81, $82   ; 02 
- D 1 - I - 0x016B3E 05:AB2E: 83        .byte $83, $84, $84, $85   ; 03 
- D 1 - I - 0x016B42 05:AB32: 86        .byte $86, $87, $87, $88   ; 04 
- D 1 - I - 0x016B46 05:AB36: 89        .byte $89, $8A, $8A, $8B   ; 05 
- D 1 - I - 0x016B4A 05:AB3A: 89        .byte $89, $8A, $8A, $8B   ; 06 
- D 1 - I - 0x016B4E 05:AB3E: 8C        .byte $8C, $8D, $8D, $8E   ; 07 
- D 1 - I - 0x016B52 05:AB42: 86        .byte $86, $87, $87, $88   ; 08 
- D 1 - I - 0x016B56 05:AB46: 89        .byte $89, $8A, $8A, $8B   ; 09 
- D 1 - I - 0x016B5A 05:AB4A: 89        .byte $89, $8A, $8A, $8B   ; 0A 
- D 1 - I - 0x016B5E 05:AB4E: 8C        .byte $8C, $8D, $8D, $8E   ; 0B 



_off011_0x016B62_00:
- D 1 - I - 0x016B62 05:AB52: 04        .byte $04   ; size X
- D 1 - I - 0x016B63 05:AB53: 07        .byte $07   ; size Y
- D 1 - I - 0x016B64 05:AB54: 00        .byte $00, $00, $00, $00   ; 01 
- D 1 - I - 0x016B68 05:AB58: 80        .byte $80, $81, $81, $82   ; 02 
- D 1 - I - 0x016B6C 05:AB5C: 83        .byte $83, $84, $84, $85   ; 03 
- D 1 - I - 0x016B70 05:AB60: 86        .byte $86, $87, $87, $88   ; 04 
- D 1 - I - 0x016B74 05:AB64: 89        .byte $89, $8A, $8A, $8B   ; 05 
- D 1 - I - 0x016B78 05:AB68: 89        .byte $89, $8A, $8A, $8B   ; 06 
- D 1 - I - 0x016B7C 05:AB6C: 8C        .byte $8C, $8D, $8D, $8E   ; 07 



_off011_0x016B80_04:
- D 1 - I - 0x016B80 05:AB70: 04        .byte $04   ; size X
- D 1 - I - 0x016B81 05:AB71: 06        .byte $06   ; size Y
- D 1 - I - 0x016B82 05:AB72: 00        .byte $00, $00, $00, $00   ; 01 
- D 1 - I - 0x016B86 05:AB76: 00        .byte $00, $00, $00, $00   ; 02 
- D 1 - I - 0x016B8A 05:AB7A: 00        .byte $00, $00, $00, $00   ; 03 
- D 1 - I - 0x016B8E 05:AB7E: 00        .byte $00, $00, $00, $00   ; 04 
- D 1 - I - 0x016B92 05:AB82: FD        .byte $FD, $FD, $FD, $FD   ; 05 
- D 1 - I - 0x016B96 05:AB86: FE        .byte $FE, $FE, $FE, $FE   ; 06 



_off011_0x016B9A_06:
- D 1 - I - 0x016B9A 05:AB8A: 04        .byte $04   ; size X
- D 1 - I - 0x016B9B 05:AB8B: 06        .byte $06   ; size Y
- D 1 - I - 0x016B9C 05:AB8C: 00        .byte $00, $00, $00, $00   ; 01 
- D 1 - I - 0x016BA0 05:AB90: 00        .byte $00, $00, $00, $00   ; 02 
- D 1 - I - 0x016BA4 05:AB94: 00        .byte $00, $00, $00, $00   ; 03 
- D 1 - I - 0x016BA8 05:AB98: 00        .byte $00, $00, $00, $00   ; 04 
- D 1 - I - 0x016BAC 05:AB9C: 80        .byte $80, $81, $81, $82   ; 05 
- D 1 - I - 0x016BB0 05:ABA0: 83        .byte $83, $84, $84, $85   ; 06 



_off011_0x016BB4_08:    ; never used, no such index
- - - - - - 0x016BB4 05:ABA4: 04        .byte $04   ; size X
- - - - - - 0x016BB5 05:ABA5: 04        .byte $04   ; size Y
- - - - - - 0x016BB6 05:ABA6: 00        .byte $00, $00, $00, $00   ; 01 
- - - - - - 0x016BBA 05:ABAA: 00        .byte $00, $00, $00, $00   ; 02 
- - - - - - 0x016BBE 05:ABAE: 80        .byte $80, $81, $81, $82   ; 03 
- - - - - - 0x016BC2 05:ABB2: 83        .byte $83, $84, $84, $85   ; 04 



_off011_0x016BC6_12:
- D 1 - I - 0x016BC6 05:ABB6: 04        .byte $04   ; size X
- D 1 - I - 0x016BC7 05:ABB7: 08        .byte $08   ; size Y
- D 1 - I - 0x016BC8 05:ABB8: 26        .byte $26, $24, $26, $24   ; 01 
- D 1 - I - 0x016BCC 05:ABBC: 00        .byte $00, $27, $28, $27   ; 02 
- D 1 - I - 0x016BD0 05:ABC0: 00        .byte $00, $25, $24, $25   ; 03 
- D 1 - I - 0x016BD4 05:ABC4: 00        .byte $00, $00, $00, $00   ; 04 
- D 1 - I - 0x016BD8 05:ABC8: 2B        .byte $2B, $00, $00, $2D   ; 05 
- D 1 - I - 0x016BDC 05:ABCC: 2C        .byte $2C, $00, $00, $2E   ; 06 
- D 1 - I - 0x016BE0 05:ABD0: 2C        .byte $2C, $00, $00, $2E   ; 07 
- D 1 - I - 0x016BE4 05:ABD4: 00        .byte $00, $00, $00, $00   ; 08 



_off011_0x016BE8_0C:
- D 1 - I - 0x016BE8 05:ABD8: 04        .byte $04   ; size X
- D 1 - I - 0x016BE9 05:ABD9: 0B        .byte $0B   ; size Y
- D 1 - I - 0x016BEA 05:ABDA: 00        .byte $00, $00, $00, $00   ; 01 
- D 1 - I - 0x016BEE 05:ABDE: B0        .byte $B0, $B1, $B1, $B2   ; 02 
- D 1 - I - 0x016BF2 05:ABE2: B3        .byte $B3, $B4, $B4, $B5   ; 03 
- D 1 - I - 0x016BF6 05:ABE6: B6        .byte $B6, $B7, $B7, $B8   ; 04 
- D 1 - I - 0x016BFA 05:ABEA: B9        .byte $B9, $BA, $BA, $BB   ; 05 
- D 1 - I - 0x016BFE 05:ABEE: B9        .byte $B9, $BA, $BA, $BB   ; 06 
- D 1 - I - 0x016C02 05:ABF2: BC        .byte $BC, $BD, $BD, $BE   ; 07 
- D 1 - I - 0x016C06 05:ABF6: B6        .byte $B6, $B7, $B7, $B8   ; 08 
- D 1 - I - 0x016C0A 05:ABFA: B9        .byte $B9, $BA, $BA, $BB   ; 09 
- D 1 - I - 0x016C0E 05:ABFE: B9        .byte $B9, $BA, $BA, $BB   ; 0A 
- D 1 - I - 0x016C12 05:AC02: BC        .byte $BC, $BD, $BD, $BE   ; 0B 



_off011_0x016C16_0A:
- D 1 - I - 0x016C16 05:AC06: 04        .byte $04   ; size X
- D 1 - I - 0x016C17 05:AC07: 07        .byte $07   ; size Y
- D 1 - I - 0x016C18 05:AC08: 00        .byte $00, $00, $00, $00   ; 01 
- D 1 - I - 0x016C1C 05:AC0C: B0        .byte $B0, $B1, $B1, $B2   ; 02 
- D 1 - I - 0x016C20 05:AC10: B3        .byte $B3, $B4, $B4, $B5   ; 03 
- D 1 - I - 0x016C24 05:AC14: B6        .byte $B6, $B7, $B7, $B8   ; 04 
- D 1 - I - 0x016C28 05:AC18: B9        .byte $B9, $BA, $BA, $BB   ; 05 
- D 1 - I - 0x016C2C 05:AC1C: B9        .byte $B9, $BA, $BA, $BB   ; 06 
- D 1 - I - 0x016C30 05:AC20: BC        .byte $BC, $BD, $BD, $BE   ; 07 



_off011_0x016C34_18:
- D 1 - I - 0x016C34 05:AC24: 04        .byte $04   ; size X
- D 1 - I - 0x016C35 05:AC25: 08        .byte $08   ; size Y
- D 1 - I - 0x016C36 05:AC26: B6        .byte $B6, $B7, $B7, $B8   ; 01 
- D 1 - I - 0x016C3A 05:AC2A: B9        .byte $B9, $BA, $BA, $BB   ; 02 
- D 1 - I - 0x016C3E 05:AC2E: B9        .byte $B9, $BA, $BA, $BB   ; 03 
- D 1 - I - 0x016C42 05:AC32: BC        .byte $BC, $BD, $BD, $BE   ; 04 
- D 1 - I - 0x016C46 05:AC36: B6        .byte $B6, $B7, $B7, $B8   ; 05 
- D 1 - I - 0x016C4A 05:AC3A: B9        .byte $B9, $BA, $BA, $BB   ; 06 
- D 1 - I - 0x016C4E 05:AC3E: B9        .byte $B9, $BA, $BA, $BB   ; 07 
- D 1 - I - 0x016C52 05:AC42: BC        .byte $BC, $BD, $BD, $BE   ; 08 



_off011_0x016C56_16:
- D 1 - I - 0x016C56 05:AC46: 04        .byte $04   ; size X
- D 1 - I - 0x016C57 05:AC47: 04        .byte $04   ; size Y
- D 1 - I - 0x016C58 05:AC48: B6        .byte $B6, $B7, $B7, $B8   ; 01 
- D 1 - I - 0x016C5C 05:AC4C: B9        .byte $B9, $BA, $BA, $BB   ; 02 
- D 1 - I - 0x016C60 05:AC50: B9        .byte $B9, $BA, $BA, $BB   ; 03 
- D 1 - I - 0x016C64 05:AC54: BC        .byte $BC, $BD, $BD, $BE   ; 04 



_off011_0x016C68_0E:
- D 1 - I - 0x016C68 05:AC58: 04        .byte $04   ; size X
- D 1 - I - 0x016C69 05:AC59: 06        .byte $06   ; size Y
- D 1 - I - 0x016C6A 05:AC5A: 00        .byte $00, $00, $00, $00   ; 01 
- D 1 - I - 0x016C6E 05:AC5E: 00        .byte $00, $00, $00, $00   ; 02 
- D 1 - I - 0x016C72 05:AC62: 00        .byte $00, $00, $00, $00   ; 03 
- D 1 - I - 0x016C76 05:AC66: 67        .byte $67, $5F, $5F, $67   ; 04 
- D 1 - I - 0x016C7A 05:AC6A: 90        .byte $90, $91, $91, $90   ; 05 
- D 1 - I - 0x016C7E 05:AC6E: 95        .byte $95, $96, $96, $97   ; 06 



_off011_0x016C82_10:
- D 1 - I - 0x016C82 05:AC72: 04        .byte $04   ; size X
- D 1 - I - 0x016C83 05:AC73: 06        .byte $06   ; size Y
- D 1 - I - 0x016C84 05:AC74: 00        .byte $00, $00, $00, $00   ; 01 
- D 1 - I - 0x016C88 05:AC78: 00        .byte $00, $00, $00, $00   ; 02 
- D 1 - I - 0x016C8C 05:AC7C: 00        .byte $00, $00, $00, $00   ; 03 
- D 1 - I - 0x016C90 05:AC80: 00        .byte $00, $00, $00, $00   ; 04 
- D 1 - I - 0x016C94 05:AC84: B0        .byte $B0, $B1, $B1, $B2   ; 05 
- D 1 - I - 0x016C98 05:AC88: B3        .byte $B3, $B4, $B4, $B5   ; 06 



_off011_0x016C9C_14:
- D 1 - I - 0x016C9C 05:AC8C: 04        .byte $04   ; size X
- D 1 - I - 0x016C9D 05:AC8D: 0A        .byte $0A   ; size Y
- D 1 - I - 0x016C9E 05:AC8E: 00        .byte $00, $00, $00, $00   ; 01 
- D 1 - I - 0x016CA2 05:AC92: 00        .byte $00, $00, $00, $00   ; 02 
- D 1 - I - 0x016CA6 05:AC96: 00        .byte $00, $00, $00, $00   ; 03 
- D 1 - I - 0x016CAA 05:AC9A: 00        .byte $00, $00, $00, $00   ; 04 
- D 1 - I - 0x016CAE 05:AC9E: 00        .byte $00, $00, $00, $00   ; 05 
- D 1 - I - 0x016CB2 05:ACA2: 00        .byte $00, $00, $00, $00   ; 06 
- D 1 - I - 0x016CB6 05:ACA6: 00        .byte $00, $00, $00, $00   ; 07 
- D 1 - I - 0x016CBA 05:ACAA: 00        .byte $00, $00, $00, $00   ; 08 
- D 1 - I - 0x016CBE 05:ACAE: 00        .byte $00, $00, $00, $00   ; 09 
- D 1 - I - 0x016CC2 05:ACB2: 00        .byte $00, $00, $00, $00   ; 0A 



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_016_0x00B937_05:
C - - J - - 0x00B937 02:B927: 20 2D B9  JSR sub_B92D
C - - - - - 0x00B93A 02:B92A: 4C 10 8E  JMP loc_0x008E20



sub_B92D:
C - - - - - 0x00B93D 02:B92D: BD 78 07  LDA ram_0778_unk,X
C - - - - - 0x00B940 02:B930: D0 0F     BNE bra_B941
C - - - - - 0x00B942 02:B932: A5 69     LDA ram_0069
C - - - - - 0x00B944 02:B934: 30 20     BMI bra_B956
C - - - - - 0x00B946 02:B936: 20 AC B9  JSR sub_B9AC
C - - - - - 0x00B949 02:B939: B0 1B     BCS bra_B956
C - - - - - 0x00B94B 02:B93B: 20 D4 B9  JSR sub_B9D4
C - - - - - 0x00B94E 02:B93E: FE 78 07  INC ram_0778_unk,X
bra_B941:
C - - - - - 0x00B951 02:B941: 20 B1 93  JSR sub_0x0093C1_06B2x_LSRx4_TAY
C - - - - - 0x00B954 02:B944: F0 19     BEQ bra_B95F
C - - - - - 0x00B956 02:B946: C9 04     CMP #$04
C - - - - - 0x00B958 02:B948: F0 0F     BEQ bra_B959
C - - - - - 0x00B95A 02:B94A: C9 08     CMP #$08
C - - - - - 0x00B95C 02:B94C: F0 47     BEQ bra_B995
bra_B94E:
C - - - - - 0x00B95E 02:B94E: 20 D4 B9  JSR sub_B9D4
C - - - - - 0x00B961 02:B951: A9 00     LDA #$00
bra_B953:
C - - - - - 0x00B963 02:B953: 4C EE 95  STA ram_06B2_obj,X
                                        RTS
bra_B956:
- - - - - - 0x00B966 02:B956: 4C 17 9A  JMP loc_0x009A27
bra_B959:
C - - - - - 0x00B969 02:B959: 20 AC B9  JSR sub_B9AC
C - - - - - 0x00B96C 02:B95C: 90 F0     BCC bra_B94E
bra_B95E_RTS:
C - - - - - 0x00B96E 02:B95E: 60        RTS
bra_B95F:
C - - - - - 0x00B96F 02:B95F: 20 AC B9  JSR sub_B9AC
C - - - - - 0x00B972 02:B962: 90 07     BCC bra_B96B
bra_B964:
C - - - - - 0x00B974 02:B964: 20 D4 B9  JSR sub_B9D4
C - - - - - 0x00B977 02:B967: A9 46     LDA #$46
C - - - - - 0x00B979 02:B969: D0 E8     BNE bra_B953    ; jmp
bra_B96B:
C - - - - - 0x00B97B 02:B96B: 20 B3 B9  JSR sub_B9B3
C - - - - - 0x00B97E 02:B96E: 90 EE     BCC bra_B95E_RTS
C - - - - - 0x00B980 02:B970: 20 BA B9  JSR sub_B9BA
C - - - - - 0x00B983 02:B973: B0 12     BCS bra_B987
C - - - - - 0x00B985 02:B975: B9 4E 06  LDA ram_obj_pos_X,Y
C - - - - - 0x00B988 02:B978: 38        SEC
C - - - - - 0x00B989 02:B979: E9 18     SBC #$18
C - - - - - 0x00B98B 02:B97B: 85 00     STA ram_0000_t2E
C - - - - - 0x00B98D 02:B97D: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x00B990 02:B980: 38        SEC
C - - - - - 0x00B991 02:B981: E5 00     SBC ram_0000_t2E
C - - - - - 0x00B993 02:B983: C9 40     CMP #$40
C - - - - - 0x00B995 02:B985: 90 D7     BCC bra_B95E_RTS
bra_B987:
C - - - - - 0x00B997 02:B987: A9 36     LDA #con_music_36
C - - - - - 0x00B999 02:B989: 20 D8 95  JSR sub_0x0095E8_play_music
C - - - - - 0x00B99C 02:B98C: A9 31     LDA #$31
C - - - - - 0x00B99E 02:B98E: 20 A1 89  JSR sub_0x0089B1
C - - - - - 0x00B9A1 02:B991: A9 84     LDA #$84
C - - - - - 0x00B9A3 02:B993: D0 BE     BNE bra_B953    ; jmp
bra_B995:
C - - - - - 0x00B9A5 02:B995: A9 10     LDA #$10
C - - - - - 0x00B9A7 02:B997: A0 10     LDY #$10
C - - - - - 0x00B9A9 02:B999: 20 BC 8F  JSR sub_0x008FCC
C - - - - - 0x00B9AC 02:B99C: B0 C6     BCS bra_B964
C - - - - - 0x00B9AE 02:B99E: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x00B9B1 02:B9A1: C9 10     CMP #$10
C - - - - - 0x00B9B3 02:B9A3: 90 B9     BCC bra_B95E_RTS
C - - - - - 0x00B9B5 02:B9A5: 20 B3 B9  JSR sub_B9B3
C - - - - - 0x00B9B8 02:B9A8: 90 A4     BCC bra_B94E
bra_B9AA:
C - - - - - 0x00B9BA 02:B9AA: 38        SEC
C - - - - - 0x00B9BB 02:B9AB: 60        RTS



sub_B9D4:
C - - - - - 0x00B9E4 02:B9D4: A9 0C     LDA #$0C
C - - - - - 0x00B9E6 02:B9D6: 4C A1 89  JMP loc_0x0089B1



sub_B9AC:
C - - - - - 0x00B9BC 02:B9AC: A9 00     LDA #$00
C - - - - - 0x00B9BE 02:B9AE: A0 10     LDY #$10
C - - - - - 0x00B9C0 02:B9B0: 4C BC 8F  JMP loc_0x008FCC



sub_B9B3:
C - - - - - 0x00B9C3 02:B9B3: A9 F0     LDA #$F0
C - - - - - 0x00B9C5 02:B9B5: A0 00     LDY #$00
C - - - - - 0x00B9C7 02:B9B7: 4C BC 8F  JMP loc_0x008FCC



sub_B9BA:
C - - - - - 0x00B9CA 02:B9BA: 20 D9 B9  JSR sub_B9D9
C - - - - - 0x00B9CD 02:B9BD: B0 14     BCS bra_B9D3_RTS
C - - - - - 0x00B9CF 02:B9BF: E0 03     CPX #$03
C - - - - - 0x00B9D1 02:B9C1: 90 E7     BCC bra_B9AA
C - - - - - 0x00B9D3 02:B9C3: B9 68 06  LDA ram_obj_pos_Y,Y
C - - - - - 0x00B9D6 02:B9C6: 38        SEC
C - - - - - 0x00B9D7 02:B9C7: E9 18     SBC #$18
C - - - - - 0x00B9D9 02:B9C9: 85 00     STA ram_0000_t2F
C - - - - - 0x00B9DB 02:B9CB: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x00B9DE 02:B9CE: 38        SEC
C - - - - - 0x00B9DF 02:B9CF: E5 00     SBC ram_0000_t2F
C - - - - - 0x00B9E1 02:B9D1: C9 30     CMP #$30
bra_B9D3_RTS:
C - - - - - 0x00B9E3 02:B9D3: 60        RTS



sub_B9D9:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x00B9E9 02:B9D9: A0 02     LDY #$02
bra_B9DB_loop:
C - - - - - 0x00B9EB 02:B9DB: B9 82 07  LDA ram_0782_unk,Y
C - - - - - 0x00B9EE 02:B9DE: DD 82 07  CMP ram_0782_unk,X
C - - - - - 0x00B9F1 02:B9E1: D0 06     BNE bra_B9E9
C - - - - - 0x00B9F3 02:B9E3: 84 00     STY ram_0000_t1C
C - - - - - 0x00B9F5 02:B9E5: E4 00     CPX ram_0000_t1C
C - - - - - 0x00B9F7 02:B9E7: D0 06     BNE bra_B9EF
bra_B9E9:
C - - - - - 0x00B9F9 02:B9E9: C8        INY
C - - - - - 0x00B9FA 02:B9EA: C0 0A     CPY #$0A
C - - - - - 0x00B9FC 02:B9EC: 90 ED     BCC bra_B9DB_loop
C - - - - - 0x00B9FE 02:B9EE: 60        RTS
bra_B9EF:
C - - - - - 0x00B9FF 02:B9EF: 18        CLC
C - - - - - 0x00BA00 02:B9F0: 60        RTS



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_016_0x00F8AA_06:
C - - J - - 0x00F8AA 03:B89A: BD 78 07  LDA ram_0778_unk,X
C - - - - - 0x00F8AD 03:B89D: D0 10     BNE bra_B8AF
C - - - - - 0x00F8AF 03:B89F: A9 00     LDA #$00
C - - - - - 0x00F8B1 03:B8A1: 9D 20 07  STA ram_0720_obj,X
C - - - - - 0x00F8B4 03:B8A4: A9 20     LDA #$20
C - - - - - 0x00F8B6 03:B8A6: 4C 25 B9  STA ram_069C_obj,X
                                        INC ram_0778_unk,X
                                        RTS
bra_B8AF:
C - - - - - 0x00F8BF 03:B8AF: 20 81 8D  JSR sub_0x008D91
C - - - - - 0x00F8C2 03:B8B2: B0 F5     BCS bra_B8A9
C - - - - - 0x00F8C4 03:B8B4: BD 00 06  LDA ram_0600_obj,X
C - - - - - 0x00F8C7 03:B8B7: 30 F3     BMI bra_B8AC
C - - - - - 0x00F8C9 03:B8B9: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x00F8CC 03:B8BC: 18        CLC
C - - - - - 0x00F8CD 03:B8BD: 69 20     ADC #$20
C - - - - - 0x00F8CF 03:B8BF: C9 40     CMP #$40
C - - - - - 0x00F8D1 03:B8C1: 90 E9     BCC bra_B8AC
C - - - - - 0x00F8D3 03:B8C3: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x00F8D6 03:B8C6: C9 C0     CMP #$C0
C - - - - - 0x00F8D8 03:B8C8: B0 E2     BCS bra_B8AC
C - - - - - 0x00F8DA 03:B8CA: 20 DC 90  JSR sub_0x0090EC
C - - - - - 0x00F8DD 03:B8CD: C9 BD     CMP #$BD
C - - - - - 0x00F8DF 03:B8CF: F0 D8     BEQ bra_B8A9
C - - - - - 0x00F8E1 03:B8D1: 20 C8 90  JSR sub_0x0090D8_0600x_write_08
C - - - - - 0x00F8E4 03:B8D4: BD 78 07  LDA ram_0778_unk,X
C - - - - - 0x00F8E7 03:B8D7: 0A        ASL
C - - - - - 0x00F8E8 03:B8D8: A8        TAY
C - - - - - 0x00F8E9 03:B8D9: B9 E4 B8  LDA tbl_B8E6 - $02,Y
C - - - - - 0x00F8EC 03:B8DC: 85 02     STA ram_0002_t07_jmp
C - - - - - 0x00F8EE 03:B8DE: B9 E5 B8  LDA tbl_B8E6 - $01,Y
C - - - - - 0x00F8F1 03:B8E1: 85 03     STA ram_0002_t07_jmp + $01
C - - - - - 0x00F8F3 03:B8E3: 6C 02 00  JMP (ram_0002_t07_jmp)
bra_B8AC:
C - - - - - 0x00F8BC 03:B8AC: 4C C8 90  JMP loc_0x0090D8_0600x_write_08



tbl_B8E6:
- D 1 - - - 0x00F8F6 03:B8E6: F2 B8     .word ofs_013_B8F2_01
- D 1 - - - 0x00F8F8 03:B8E8: F9 B8     .word ofs_013_B8F9_02
- D 1 - - - 0x00F8FA 03:B8EA: 2C B9     .word ofs_013_B92C_03
- D 1 - - - 0x00F8FC 03:B8EC: 56 B9     .word ofs_013_B956_04
- D 1 - - - 0x00F8FE 03:B8EE: 69 B9     .word ofs_013_B969_05
- D 1 - - - 0x00F900 03:B8F0: 83 B9     .word ofs_013_B983_06



ofs_013_B8F2_01:
C - - J - - 0x00F902 03:B8F2: DE 9C 06  DEC ram_069C_obj,X
C - - - - - 0x00F905 03:B8F5: D0 34     BNE bra_B8F6_RTS
C - - - - - 0x00F907 03:B8F7: F0 2F     INC ram_0778_unk,X
bra_B8F6_RTS:
                                        RTS



ofs_013_B8F9_02:
C - - J - - 0x00F909 03:B8F9: 20 DC 90  JSR sub_0x0090EC
C - - - - - 0x00F90C 03:B8FC: C9 AB     CMP #$AB
C - - - - - 0x00F90E 03:B8FE: F0 04     BEQ bra_B904
C - - - - - 0x00F910 03:B900: C9 03     CMP #$03
C - - - - - 0x00F912 03:B902: D0 A5     BNE bra_B8A9
bra_B904:
C - - - - - 0x00F914 03:B904: A5 39     LDA ram_buffer_index_2
C - - - - - 0x00F916 03:B906: D0 23     BNE bra_B92B_RTS
C - - - - - 0x00F918 03:B908: A9 AB     LDA #$AB
C - - - - - 0x00F91A 03:B90A: 20 85 90  JSR sub_0x009095
C - - - - - 0x00F91D 03:B90D: B0 1C     BCS bra_B92B_RTS
C - - - - - 0x00F91F 03:B90F: A9 E1     LDA #$E1
C - - - - - 0x00F921 03:B911: 20 70 90  JSR sub_0x009080
C - - - - - 0x00F924 03:B914: A6 53     LDX ram_0053
C - - - - - 0x00F926 03:B916: 9D A0 07  STA ram_07A0_unk,X
C - - - - - 0x00F929 03:B919: A9 E2     LDA #$E2
C - - - - - 0x00F92B 03:B91B: 20 70 90  JSR sub_0x009080
C - - - - - 0x00F92E 03:B91E: A6 53     LDX ram_0053
C - - - - - 0x00F930 03:B920: 9D 82 06  STA ram_0682_obj,X
loc_B923:
C D 1 - - - 0x00F933 03:B923: A9 18     LDA #$18
C D 1 - - - 0x00F935 03:B925: 9D 9C 06  STA ram_069C_obj,X
C - - - - - 0x00F938 03:B928: FE 78 07  INC ram_0778_unk,X
bra_B92B_RTS:
C - - - - - 0x00F93B 03:B92B: 60        RTS
bra_B8A9:
C - - - - - 0x00F8B9 03:B8A9: 4C 17 9A  JMP loc_0x009A27



ofs_013_B92C_03:
C - - J - - 0x00F93C 03:B92C: BD 9C 06  LDA ram_069C_obj,X
C - - - - - 0x00F93F 03:B92F: F0 05     BEQ bra_B936
C - - - - - 0x00F941 03:B931: DE 9C 06  DEC ram_069C_obj,X
C - - - - - 0x00F944 03:B934: D0 F5     BNE bra_B952_RTS
bra_B936:
C - - - - - 0x00F946 03:B936: A5 39     LDA ram_buffer_index_2
C - - - - - 0x00F948 03:B938: D0 F1     BNE bra_B952_RTS
C - - - - - 0x00F94A 03:B93A: BD A0 07  LDA ram_07A0_unk,X
C - - - - - 0x00F94D 03:B93D: 85 06     STA ram_0006_t05_ppu_addr_lo
C - - - - - 0x00F94F 03:B93F: BD 82 06  LDA ram_0682_obj,X
C - - - - - 0x00F952 03:B942: 85 07     STA ram_0007_t01_ppu_addr_hi
; triggers during green cannons on the plane wing
C - - - - - 0x00F954 03:B944: AD 54 B9  LDA tbl_B954
C - - - - - 0x00F957 03:B947: 85 02     STA ram_0002_t02_ppu_data
C - - - - - 0x00F959 03:B949: AD 55 B9  LDA tbl_B954 + $01
C - - - - - 0x00F95C 03:B94C: 85 03     STA ram_0002_t02_ppu_data + $01
C - - - - - 0x00F95E 03:B94E: 20 92 87  JSR sub_0x0087A2
C - - - - - 0x00F961 03:B951: 4C 23 B9  JMP loc_B923
bra_B952_RTS:
                                        RTS



tbl_B954:
- D 1 - - - 0x00F964 03:B954: B6 AC     .word off_0x016CC6



ofs_013_B956_04:
C - - J - - 0x00F966 03:B956: DE 9C 06  DEC ram_069C_obj,X
C - - - - - 0x00F969 03:B959: D0 D0     BNE bra_B967_RTS
C - - - - - 0x00F96B 03:B95B: 20 E8 91  JSR sub_0x0091F8
C - - - - - 0x00F96E 03:B95E: A9 D1     LDA #$D1
C - - - - - 0x00F970 03:B960: 20 1F 97  JSR sub_0x00972F
C - - - - - 0x00F9B6 03:B9A6: 98        TYA
C - - - - - 0x00F9B7 03:B9A7: AA        TAX
C - - - - - 0x00F9B8 03:B9A8: 20 B1 93  JSR sub_0x0093C1_06B2x_LSRx4_TAY
C - - - - - 0x00F9BB 03:B9AB: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x00F9BE 03:B9AE: 18        CLC
C - - - - - 0x00F9BF 03:B9AF: 79 C2 B9  ADC tbl_B9C2,Y
C - - - - - 0x00F9C2 03:B9B2: 9D 4E 06  STA ram_obj_pos_X,X
C - - - - - 0x00F9C5 03:B9B5: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x00F9C8 03:B9B8: 18        CLC
C - - - - - 0x00F9C9 03:B9B9: 79 C3 B9  ADC tbl_B9C2 + $01,Y
C - - - - - 0x00F9CC 03:B9BC: 9D 68 06  STA ram_obj_pos_Y,X
C - - - - - 0x00F9CF 03:B9BF: A6 53     LDX ram_0053
C - - - - - 0x00F976 03:B966: 4C 23 B9  JMP loc_B923
bra_B967_RTS:
                                        RTS



tbl_B9C2:
- D 1 - - - 0x00F9D2 03:B9C2: 08        .byte $08, $00   ; 00 
- D 1 - - - 0x00F9D4 03:B9C4: 08        .byte $08, $08   ; 10 
- - - - - - 0x00F9D6 03:B9C6: 00        .byte $00, $08   ; 20 
- D 1 - - - 0x00F9D8 03:B9C8: F8        .byte $F8, $08   ; 30 
- D 1 - - - 0x00F9DA 03:B9CA: F8        .byte $F8, $00   ; 40 
- - - - - - 0x00F9DC 03:B9CC: F8        .byte $F8, $F8   ; 50 
- - - - - - 0x00F9DE 03:B9CE: 00        .byte $00, $F8   ; 60 
- D 1 - - - 0x00F9E0 03:B9D0: 08        .byte $08, $F8   ; 70 



ofs_013_B969_05:
C - - J - - 0x00F979 03:B969: BD 9C 06  LDA ram_069C_obj,X
C - - - - - 0x00F97C 03:B96C: F0 05     BEQ bra_B973
C - - - - - 0x00F97E 03:B96E: DE 9C 06  DEC ram_069C_obj,X
C - - - - - 0x00F981 03:B971: D0 B8     BNE bra_B982_RTS
bra_B973:
C - - - - - 0x00F983 03:B973: A5 39     LDA ram_buffer_index_2
C - - - - - 0x00F985 03:B975: D0 B4     BNE bra_B982_RTS
C - - - - - 0x00F987 03:B977: 20 B9 8F  JSR sub_0x008FC9
C - - - - - 0x00F98A 03:B97A: A9 AB     LDA #$AB
C - - - - - 0x00F98C 03:B97C: 20 85 90  JSR sub_0x009095
C - - - - - 0x00F98F 03:B97F: B0 AA     BCS bra_B982_RTS
C - - - - - 0x00F991 03:B981: 90 E3     JMP loc_B923
bra_B982_RTS:
                                        RTS



ofs_013_B983_06:
C - - J - - 0x00F993 03:B983: BD 9C 06  LDA ram_069C_obj,X
C - - - - - 0x00F996 03:B986: F0 05     BEQ bra_B98D
C - - - - - 0x00F998 03:B988: DE 9C 06  DEC ram_069C_obj,X
C - - - - - 0x00F99B 03:B98B: D0 34     BNE bra_B9A5_RTS
bra_B98D:
C - - - - - 0x00F99D 03:B98D: A5 39     LDA ram_buffer_index_2
C - - - - - 0x00F99F 03:B98F: D0 30     BNE bra_B9A5_RTS
C - - - - - 0x00F9A1 03:B991: 20 B9 8F  JSR sub_0x008FC9
C - - - - - 0x00F9A4 03:B994: A9 03     LDA #$03
C - - - - - 0x00F9A6 03:B996: 20 85 90  JSR sub_0x009095
C - - - - - 0x00F9A9 03:B999: B0 90     BCS bra_B9A5_RTS
C - - - - - 0x00F9AB 03:B99B: A9 30     LDA #$30
C - - - - - 0x00F9AD 03:B99D: 9D 9C 06  STA ram_069C_obj,X
C - - - - - 0x00F9B0 03:B9A0: A9 00     LDA #$00
C - - - - - 0x00F9B2 03:B9A2: 9D 78 07  STA ram_0778_unk,X
bra_B9A5_RTS:
C - - - - - 0x00F9B5 03:B9A5: 60        RTS



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_016_0x00FBAF_07:
C - - J - - 0x00FBAF 03:BB9F: 20 A5 BB  JSR sub_BBA5
C - - - - - 0x00FBB2 03:BBA2: 4C 10 8E  JMP loc_0x008E20



sub_BBA5:
C - - - - - 0x00FBB5 03:BBA5: BD 78 07  LDA ram_0778_unk,X
C - - - - - 0x00FBB8 03:BBA8: D0 1C     BNE bra_BBC6
C - - - - - 0x00FBBA 03:BBAA: FE 78 07  INC ram_0778_unk,X
C - - - - - 0x00FBBD 03:BBAD: 20 C8 90  JSR sub_0x0090D8_0600x_write_08
C - - - - - 0x00FBC0 03:BBB0: A9 06     LDA #$06
C - - - - - 0x00FBC2 03:BBB2: 9D 20 07  STA ram_0720_obj,X
C - - - - - 0x00FBC5 03:BBB5: A9 07     LDA #$07
C - - - - - 0x00FBC7 03:BBB7: 20 A1 89  JSR sub_0x0089B1
C - - - - - 0x00FBCA 03:BBBA: 20 B1 93  JSR sub_0x0093C1_06B2x_LSRx4_TAY
C - - - - - 0x00FBCD 03:BBBD: 9D AA 07  STA ram_07AA_unk,X
C - - - - - 0x00FBD0 03:BBC0: 20 D5 BB  JSR sub_BBD5
C - - - - - 0x00FBD3 03:BBC3: 4C 47 96  JMP loc_0x009657
bra_BBC6:
C - - - - - 0x00FBD6 03:BBC6: 20 D5 BB  JSR sub_BBD5
C - - - - - 0x00FBD9 03:BBC9: 20 1E 96  JSR sub_0x00962E
C - - - - - 0x00FBDC 03:BBCC: 20 55 9E  JSR sub_0x009E65
C - - - - - 0x00FBDF 03:BBCF: 90 03     BCC bra_BBD4_RTS
C - - - - - 0x00FBE1 03:BBD1: 4C 05 9E  JMP loc_0x009E15
bra_BBD4_RTS:
C - - - - - 0x00FBE4 03:BBD4: 60        RTS



sub_BBD5:
C - - - - - 0x00FBE5 03:BBD5: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x00FBE8 03:BBD8: 0A        ASL
C - - - - - 0x00FBE9 03:BBD9: A8        TAY
C - - - - - 0x00FBEA 03:BBDA: B9 E7 BB  LDA tbl_BBE7,Y
C - - - - - 0x00FBED 03:BBDD: 85 00     STA ram_0000_t08_data
C - - - - - 0x00FBEF 03:BBDF: B9 E8 BB  LDA tbl_BBE7 + $01,Y
C - - - - - 0x00FBF2 03:BBE2: 85 01     STA ram_0000_t08_data + $01
C - - - - - 0x00FBF4 03:BBE4: 4C 62 96  JMP loc_0x009672



tbl_BBE7:
- D 1 - - - 0x00FBF7 03:BBE7: F3 BB     .word _off013_BBF3_00
- D 1 - - - 0x00FBF9 03:BBE9: FB BB     .word _off013_BBFB_01
- D 1 - - - 0x00FBFB 03:BBEB: 03 BC     .word _off013_BC03_02
- D 1 - - - 0x00FBFD 03:BBED: 0B BC     .word _off013_BC0B_03
- D 1 - - - 0x00FBFF 03:BBEF: 13 BC     .word _off013_BC13_04
- D 1 - - - 0x00FC01 03:BBF1: 1B BC     .word _off013_BC1B_05



_off013_BBF3_00:
;                                              +-------------------- 
;                                              |    +--------------- 
;                                              |    |    +---------- 
;                                              |    |    |    +----- 
;                                              |    |    |    |
- D 1 - I - 0x00FC03 03:BBF3: 7F        .byte $7F, $09, $05, $01   ; 00 
- D 1 - I - 0x00FC07 03:BBF7: BF        .byte $BF, $09, $85, $00   ; 01 



_off013_BBFB_01:
;                                              +-------------------- 
;                                              |    +--------------- 
;                                              |    |    +---------- 
;                                              |    |    |    +----- 
;                                              |    |    |    |
- D 1 - I - 0x00FC0B 03:BBFB: 2F        .byte $2F, $0E, $05, $01   ; 00 
- D 1 - I - 0x00FC0F 03:BBFF: 4F        .byte $4F, $0E, $85, $00   ; 01 



_off013_BC03_02:
;                                              +-------------------- 
;                                              |    +--------------- 
;                                              |    |    +---------- 
;                                              |    |    |    +----- 
;                                              |    |    |    |
- D 1 - I - 0x00FC13 03:BC03: 4F        .byte $4F, $0E, $01, $01   ; 00 
- D 1 - I - 0x00FC17 03:BC07: 6F        .byte $6F, $0E, $81, $00   ; 01 



_off013_BC0B_03:
;                                              +-------------------- 
;                                              |    +--------------- 
;                                              |    |    +---------- 
;                                              |    |    |    +----- 
;                                              |    |    |    |
- D 1 - I - 0x00FC1B 03:BC0B: 7F        .byte $7F, $0E, $05, $01   ; 00 
- D 1 - I - 0x00FC1F 03:BC0F: BF        .byte $BF, $0E, $85, $00   ; 01 



_off013_BC13_04:
;                                              +-------------------- 
;                                              |    +--------------- 
;                                              |    |    +---------- 
;                                              |    |    |    +----- 
;                                              |    |    |    |
- D 1 - I - 0x00FC23 03:BC13: CF        .byte $CF, $0E, $05, $01   ; 00 
- D 1 - I - 0x00FC27 03:BC17: EF        .byte $EF, $0E, $85, $00   ; 01 



_off013_BC1B_05:
;                                              +-------------------- 
;                                              |    +--------------- 
;                                              |    |    +---------- 
;                                              |    |    |    +----- 
;                                              |    |    |    |
- D 1 - I - 0x00FC2B 03:BC1B: EF        .byte $EF, $0E, $01, $01   ; 00 
- D 1 - I - 0x00FC2F 03:BC1F: 0F        .byte $0F, $0F, $81, $00   ; 01 



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_016_0x00BA01_08:
C - - J - - 0x00BA01 02:B9F1: 20 F7 B9  JSR sub_B9F7
C - - - - - 0x00BA04 02:B9F4: 4C 10 8E  JMP loc_0x008E20



sub_B9F7:
C - - - - - 0x00BA07 02:B9F7: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x00BA0A 02:B9FA: C9 C0     CMP #$C0
C - - - - - 0x00BA0C 02:B9FC: 90 04     BCC bra_BA02
C - - - - - 0x00BA0E 02:B9FE: C9 F8     CMP #$F8
C - - - - - 0x00BA10 02:BA00: 90 1A     BCC bra_BA1C
bra_BA02:
C - - - - - 0x00BA12 02:BA02: BD 78 07  LDA ram_0778_unk,X
C - - - - - 0x00BA15 02:BA05: D0 10     BNE bra_BA17
C - - - - - 0x00BA17 02:BA07: 20 C8 90  JSR sub_0x0090D8_0600x_write_08
C - - - - - 0x00BA1A 02:BA0A: A9 0F     LDA #$0F
C - - - - - 0x00BA1C 02:BA0C: 9D 20 07  STA ram_0720_obj,X
C - - - - - 0x00BA1F 02:BA0F: A9 00     LDA #$00
C - - - - - 0x00BA21 02:BA11: 9D 9C 06  STA ram_069C_obj,X
C - - - - - 0x00BA24 02:BA14: FE 78 07  INC ram_0778_unk,X
bra_BA17:
C - - - - - 0x00BA27 02:BA17: AD 84 07  LDA ram_0782_unk + $02
C - - - - - 0x00BA2A 02:BA1A: D0 03     BNE bra_BA1F
bra_BA1C:
C - - - - - 0x00BA2C 02:BA1C: 4C 17 9A  JMP loc_0x009A27
bra_BA1F:
C - - - - - 0x00BA2F 02:BA1F: AD 02 06  LDA ram_0600_obj + $02
C - - - - - 0x00BA32 02:BA22: 29 F0     AND #$F0
C - - - - - 0x00BA34 02:BA24: D0 41     BNE bra_BA67_RTS
C - - - - - 0x00BA36 02:BA26: E0 02     CPX #$02
C - - - - - 0x00BA38 02:BA28: D0 0A     BNE bra_BA34
C - - - - - 0x00BA3A 02:BA2A: AD 8E 07  LDA ram_078C_unk + $02
C - - - - - 0x00BA3D 02:BA2D: 29 E7     AND #$E7
C - - - - - 0x00BA3F 02:BA2F: 8D 8E 07  STA ram_078C_unk + $02
C - - - - - 0x00BA42 02:BA32: F0 03     BEQ bra_BA37
bra_BA34:
C - - - - - 0x00BA44 02:BA34: 20 AE BA  JSR sub_BAAE
bra_BA37:
C - - - - - 0x00BA47 02:BA37: E0 03     CPX #$03
C - - - - - 0x00BA49 02:BA39: B0 3D     BCS bra_BA78
C - - - - - 0x00BA4B 02:BA3B: 20 90 BA  JSR sub_BA90
C - - - - - 0x00BA4E 02:BA3E: 20 1C BB  JSR sub_BB1C
C - - - - - 0x00BA51 02:BA41: A9 00     LDA #$00
C - - - - - 0x00BA53 02:BA43: 9D AA 07  STA ram_07AA_unk,X
C - - - - - 0x00BA56 02:BA46: DE 9C 06  DEC ram_069C_obj,X
C - - - - - 0x00BA59 02:BA49: BD 9C 06  LDA ram_069C_obj,X
C - - - - - 0x00BA5C 02:BA4C: 29 07     AND #$07
C - - - - - 0x00BA5E 02:BA4E: D0 17     BNE bra_BA67_RTS
C - - - - - 0x00BA60 02:BA50: BD 8C 07  LDA ram_078C_unk,X
C - - - - - 0x00BA63 02:BA53: 29 02     AND #$02
C - - - - - 0x00BA65 02:BA55: D0 11     BNE bra_BA68
C - - - - - 0x00BA67 02:BA57: FE BE 07  INC ram_07BE_unk,X
C - - - - - 0x00BA6A 02:BA5A: 20 A3 BA  JSR sub_BAA3
C - - - - - 0x00BA6D 02:BA5D: 90 08     BCC bra_BA67_RTS
C - - - - - 0x00BA6F 02:BA5F: BD 8C 07  LDA ram_078C_unk,X
C - - - - - 0x00BA72 02:BA62: 09 02     ORA #$02
loc_BA64:
C D 1 - - - 0x00BA74 02:BA64: 9D 8C 07  STA ram_078C_unk,X
bra_BA67_RTS:
C - - - - - 0x00BA77 02:BA67: 60        RTS
bra_BA68:
C - - - - - 0x00BA78 02:BA68: DE BE 07  DEC ram_07BE_unk,X
C - - - - - 0x00BA7B 02:BA6B: 20 A3 BA  JSR sub_BAA3
C - - - - - 0x00BA7E 02:BA6E: 90 F7     BCC bra_BA67_RTS
C - - - - - 0x00BA80 02:BA70: BD 8C 07  LDA ram_078C_unk,X
C - - - - - 0x00BA83 02:BA73: 29 FD     AND #$FD
C - - - - - 0x00BA85 02:BA75: 4C 64 BA  JMP loc_BA64
bra_BA78:
C - - - - - 0x00BA88 02:BA78: BD B4 07  LDA ram_07B4_unk,X
C - - - - - 0x00BA8B 02:BA7B: 20 95 BA  JSR sub_BA95
C - - - - - 0x00BA8E 02:BA7E: 20 7A 99  JSR sub_0x00998A
C - - - - - 0x00BA91 02:BA81: BD BE 07  LDA ram_07BE_unk,X
C - - - - - 0x00BA94 02:BA84: 20 95 BA  JSR sub_BA95
C - - - - - 0x00BA97 02:BA87: 20 B2 98  JSR sub_0x0098C2
C - - - - - 0x00BA9A 02:BA8A: A9 0E     LDA #$0E
C - - - - - 0x00BA9C 02:BA8C: E0 05     CPX #$05
C - - - - - 0x00BA9E 02:BA8E: F0 02     BEQ bra_BA92
sub_BA90:
C - - - - - 0x00BAA0 02:BA90: A9 0D     LDA #$0D
bra_BA92:
C - - - - - 0x00BAA2 02:BA92: 4C A1 89  JMP loc_0x0089B1



sub_BAAE:
C - - - - - 0x00BABE 02:BAAE: E0 05     CPX #$05
C - - - - - 0x00BAC0 02:BAB0: D0 58     BNE bra_BB0A
C - - - - - 0x00BAC2 02:BAB2: AD 8E 07  LDA ram_078C_unk + $02
C - - - - - 0x00BAC5 02:BAB5: 29 18     AND #$18
C - - - - - 0x00BAC7 02:BAB7: D0 05     BNE bra_BABE
C - - - - - 0x00BAC9 02:BAB9: 20 0A BB  JSR sub_BB0A
C - - - - - 0x00BACC 02:BABC: 90 A9     BCC bra_BA67_RTS
bra_BABE:
C - - - - - 0x00BACE 02:BABE: A0 00     LDY #$00
C - - - - - 0x00BAD0 02:BAC0: A9 08     LDA #$08
C - - - - - 0x00BAD2 02:BAC2: 20 C9 BA  JSR sub_BAC9
C - - - - - 0x00BAD5 02:BAC5: A0 01     LDY #$01
C - - - - - 0x00BAD7 02:BAC7: A9 10     LDA #$10
sub_BAC9:
C - - - - - 0x00BAD9 02:BAC9: 84 91     STY ram_0091_pos_Y
C - - - - - 0x00BADB 02:BACB: E6 91     INC ram_0091_pos_Y
C - - - - - 0x00BADD 02:BACD: 2D 8E 07  AND ram_078C_unk + $02
C - - - - - 0x00BAE0 02:BAD0: F0 DB     BEQ bra_BB1B_RTS
C - - - - - 0x00BAE2 02:BAD2: A2 02     LDX #$02
C - - - - - 0x00BAE4 02:BAD4: 20 FE 94  JSR sub_0x00950E
C - - - - - 0x00BAE7 02:BAD7: A0 00     LDY #$00
bra_BAD9_loop:
C - - - - - 0x00BAE9 02:BAD9: D9 EF BB  CMP tbl_BBEF,Y
C - - - - - 0x00BAEC 02:BADC: 90 06     BCC bra_BAE4
C - - - - - 0x00BAEE 02:BADE: C8        INY
C - - - - - 0x00BAEF 02:BADF: C8        INY
C - - - - - 0x00BAF0 02:BAE0: C0 0A     CPY #$0A
C - - - - - 0x00BAF2 02:BAE2: 90 F5     BCC bra_BAD9_loop
bra_BAE4:
C - - - - - 0x00BAF4 02:BAE4: B9 F0 BB  LDA tbl_BBEF + $01,Y
C - - - - - 0x00BAF7 02:BAE7: A8        TAY
C - - - - - 0x00BAF8 02:BAE8: AD 8E 07  LDA ram_078C_unk + $02
C - - - - - 0x00BAFB 02:BAEB: 29 02     AND #$02
C - - - - - 0x00BAFD 02:BAED: D0 02     BNE bra_BAF1
C - - - - - 0x00BAFF 02:BAEF: C8        INY
C - - - - - 0x00BB00 02:BAF0: C8        INY
bra_BAF1:
C - - - - - 0x00BB01 02:BAF1: B9 FB BB  LDA tbl_BBFB,Y
C - - - - - 0x00BB04 02:BAF4: 85 18     STA ram_0018_t07_lo
C - - - - - 0x00BB06 02:BAF6: B9 FC BB  LDA tbl_BBFB + $01,Y
C - - - - - 0x00BB09 02:BAF9: 85 19     STA ram_0019_t03_hi
C - - - - - 0x00BB0B 02:BAFB: A9 00     LDA #$00
C - - - - - 0x00BB0D 02:BAFD: 85 1A     STA ram_001A_t08_lo
C - - - - - 0x00BB0F 02:BAFF: 85 1B     STA ram_001B_t02_hi
C - - - - - 0x00BB11 02:BB01: A5 91     LDA ram_0091_pos_Y
C - - - - - 0x00BB13 02:BB03: 85 00     STA ram_0000_t75
C - - - - - 0x00BB15 02:BB05: A6 53     LDX ram_0053
C - - - - - 0x00BB17 02:BB07: 4C 15 9E  JMP loc_0x009E25
bra_BB0A:
sub_BB0A:
C - - - - - 0x00BB1A 02:BB0A: 20 03 90  JSR sub_0x009013
C - - - - - 0x00BB1D 02:BB0D: 90 0C     BCC bra_BB1B_RTS
; * 08
C - - - - - 0x00BB1F 02:BB0F: 0A        ASL
C - - - - - 0x00BB20 02:BB10: 0A        ASL
C - - - - - 0x00BB21 02:BB11: 0A        ASL
C - - - - - 0x00BB22 02:BB12: 29 18     AND #$18
C - - - - - 0x00BB24 02:BB14: 0D 8E 07  ORA ram_078C_unk + $02
C - - - - - 0x00BB27 02:BB17: 8D 8E 07  STA ram_078C_unk + $02
C - - - - - 0x00BB2A 02:BB1A: 38        SEC
bra_BB1B_RTS:
C - - - - - 0x00BB2B 02:BB1B: 60        RTS



tbl_BBEF:
- D 1 - - - 0x00BBFF 02:BBEF: 08        .byte $08, $00   ; 00 
- D 1 - - - 0x00BC01 02:BBF1: 10        .byte $10, $04   ; 01 
- D 1 - - - 0x00BC03 02:BBF3: 18        .byte $18, $08   ; 02 
- D 1 - - - 0x00BC05 02:BBF5: 20        .byte $20, $0C   ; 03 
- D 1 - - - 0x00BC07 02:BBF7: 28        .byte $28, $10   ; 04 
- - - - - - 0x00BC09 02:BBF9: 30        .byte $30, $14   ; 05 



tbl_BBFB:
; 00 
- - - - - - 0x00BC0B 02:BBFB: 10 00     .word $0010 ; 
- - - - - - 0x00BC0D 02:BBFD: F0 FF     .word $FFF0 ; 
; 04 
- - - - - - 0x00BC0F 02:BBFF: 30 00     .word $0030 ; 
- - - - - - 0x00BC11 02:BC01: D0 FF     .word $FFD0 ; 
; 08 
- - - - - - 0x00BC13 02:BC03: 50 00     .word $0050 ; 
- - - - - - 0x00BC15 02:BC05: B0 FF     .word $FFB0 ; 
; 0C 
- D 1 - - - 0x00BC17 02:BC07: 70 00     .word $0070 ; 
- D 1 - - - 0x00BC19 02:BC09: 90 FF     .word $FF90 ; 
; 10 
- - - - - - 0x00BC1B 02:BC0B: 98 00     .word $0098 ; 
- D 1 - - - 0x00BC1D 02:BC0D: 68 FF     .word $FF68 ; 
; 14 
- - - - - - 0x00BC1F 02:BC0F: A8 00     .word $00A8 ; 
- - - - - - 0x00BC21 02:BC11: 58 FF     .word $FF58 ; 



sub_BB1C:
C - - - - - 0x00BB2C 02:BB1C: A0 03     LDY #$03
C - - - - - 0x00BB2E 02:BB1E: 20 6B BB  JSR sub_BB6B
C - - - - - 0x00BB31 02:BB21: A0 04     LDY #$04
C - - - - - 0x00BB33 02:BB23: 20 6B BB  JSR sub_BB6B
C - - - - - 0x00BB36 02:BB26: A0 05     LDY #$05
C - - - - - 0x00BB38 02:BB28: 20 6B BB  JSR sub_BB6B
C - - - - - 0x00BB3B 02:BB2B: AD 93 BB  LDA tbl_BB93
C - - - - - 0x00BB3E 02:BB2E: 85 0A     STA ram_000A_t01_data
C - - - - - 0x00BB40 02:BB30: AD 94 BB  LDA tbl_BB93 + $01
C - - - - - 0x00BB43 02:BB33: 85 0B     STA ram_000A_t01_data + $01
C - - - - - 0x00BB45 02:BB35: BD BE 07  LDA ram_07BE_unk,X
C - - - - - 0x00BB48 02:BB38: 18        CLC
C - - - - - 0x00BB49 02:BB39: 69 04     ADC #$04
; * 02
C - - - - - 0x00BB4B 02:BB3B: 0A        ASL
C - - - - - 0x00BB4C 02:BB3C: 85 0C     STA ram_000C_t07
; * 04 (08)
C - - - - - 0x00BB4E 02:BB3E: 0A        ASL
C - - - - - 0x00BB4F 02:BB3F: 0A        ASL
C - - - - - 0x00BB50 02:BB40: 18        CLC
C - - - - - 0x00BB51 02:BB41: 65 0C     ADC ram_000C_t07
C - - - - - 0x00BB53 02:BB43: 85 0C     STA ram_000C_t08
C - - - - - 0x00BB55 02:BB45: BD B4 07  LDA ram_07B4_unk,X
C - - - - - 0x00BB58 02:BB48: 29 01     AND #$01
C - - - - - 0x00BB5A 02:BB4A: 0A        ASL
C - - - - - 0x00BB5B 02:BB4B: 18        CLC
C - - - - - 0x00BB5C 02:BB4C: 65 0C     ADC ram_000C_t08
C - - - - - 0x00BB5E 02:BB4E: A8        TAY
C - - - - - 0x00BB5F 02:BB4F: A2 03     LDX #$03
C - - - - - 0x00BB61 02:BB51: 20 7B BB  JSR sub_BB7B
C - - - - - 0x00BB64 02:BB54: C8        INY
C - - - - - 0x00BB65 02:BB55: C8        INY
C - - - - - 0x00BB66 02:BB56: C8        INY
C - - - - - 0x00BB67 02:BB57: E8        INX
C - - - - - 0x00BB68 02:BB58: 20 7B BB  JSR sub_BB7B
C - - - - - 0x00BB6B 02:BB5B: A5 0C     LDA ram_000C_t08
C - - - - - 0x00BB6D 02:BB5D: 18        CLC
C - - - - - 0x00BB6E 02:BB5E: 69 08     ADC #$08
C - - - - - 0x00BB70 02:BB60: A8        TAY
C - - - - - 0x00BB71 02:BB61: E8        INX
C - - - - - 0x00BB72 02:BB62: 20 7B BB  JSR sub_BB7B
C - - - - - 0x00BB75 02:BB65: A6 53     LDX ram_0053
C - - - - - 0x00BB77 02:BB67: FE B4 07  INC ram_07B4_unk,X
C - - - - - 0x00BB7A 02:BB6A: 60        RTS



sub_BB7B:
C - - - - - 0x00BB8B 02:BB7B: BD B4 07  LDA ram_07B4_unk,X
C - - - - - 0x00BB8E 02:BB7E: 9D C8 07  STA ram_07C8_unk,X
C - - - - - 0x00BB91 02:BB81: B1 0A     LDA (ram_000A_t01_data),Y
C - - - - - 0x00BB93 02:BB83: 9D B4 07  STA ram_07B4_unk,X
C - - - - - 0x00BB96 02:BB86: C8        INY
C - - - - - 0x00BB97 02:BB87: BD BE 07  LDA ram_07BE_unk,X
C - - - - - 0x00BB9A 02:BB8A: 9D D2 07  STA ram_07D2_unk,X
C - - - - - 0x00BB9D 02:BB8D: B1 0A     LDA (ram_000A_t01_data),Y
C - - - - - 0x00BB9F 02:BB8F: 9D BE 07  STA ram_07BE_unk,X
C - - - - - 0x00BBA2 02:BB92: 60        RTS



tbl_BB93:
; bzk optimize
- D 1 - - - 0x00BBA3 02:BB93: 95 BB     .word off_BB95



off_BB95:
- D 1 - I - 0x00BBA5 02:BB95: 04        .byte $04   ; 
- D 1 - I - 0x00BBA6 02:BB96: 06        .byte $06   ; 
- D 1 - I - 0x00BBA7 02:BB97: 08        .byte $08   ; 
- D 1 - I - 0x00BBA8 02:BB98: 0B        .byte $0B   ; 
- D 1 - I - 0x00BBA9 02:BB99: 0A        .byte $0A   ; 
- D 1 - I - 0x00BBAA 02:BB9A: 0F        .byte $0F   ; 
- D 1 - I - 0x00BBAB 02:BB9B: 0F        .byte $0F   ; 
- D 1 - I - 0x00BBAC 02:BB9C: 17        .byte $17   ; 
- D 1 - I - 0x00BBAD 02:BB9D: 18        .byte $18   ; 
- D 1 - I - 0x00BBAE 02:BB9E: 23        .byte $23   ; 
- D 1 - I - 0x00BBAF 02:BB9F: 03        .byte $03   ; 
- D 1 - I - 0x00BBB0 02:BBA0: 07        .byte $07   ; 
- D 1 - I - 0x00BBB1 02:BBA1: 06        .byte $06   ; 
- D 1 - I - 0x00BBB2 02:BBA2: 0C        .byte $0C   ; 
- D 1 - I - 0x00BBB3 02:BBA3: 09        .byte $09   ; 
- D 1 - I - 0x00BBB4 02:BBA4: 12        .byte $12   ; 
- D 1 - I - 0x00BBB5 02:BBA5: 0D        .byte $0D   ; 
- D 1 - I - 0x00BBB6 02:BBA6: 1A        .byte $1A   ; 
- D 1 - I - 0x00BBB7 02:BBA7: 12        .byte $12   ; 
- D 1 - I - 0x00BBB8 02:BBA8: 26        .byte $26   ; 
- D 1 - I - 0x00BBB9 02:BBA9: 02        .byte $02   ; 
- D 1 - I - 0x00BBBA 02:BBAA: 08        .byte $08   ; 
- D 1 - I - 0x00BBBB 02:BBAB: 04        .byte $04   ; 
- D 1 - I - 0x00BBBC 02:BBAC: 0D        .byte $0D   ; 
- D 1 - I - 0x00BBBD 02:BBAD: 06        .byte $06   ; 
- D 1 - I - 0x00BBBE 02:BBAE: 15        .byte $15   ; 
- D 1 - I - 0x00BBBF 02:BBAF: 09        .byte $09   ; 
- D 1 - I - 0x00BBC0 02:BBB0: 1D        .byte $1D   ; 
- D 1 - I - 0x00BBC1 02:BBB1: 0C        .byte $0C   ; 
- D 1 - I - 0x00BBC2 02:BBB2: 29        .byte $29   ; 
- D 1 - I - 0x00BBC3 02:BBB3: 01        .byte $01   ; 
- D 1 - I - 0x00BBC4 02:BBB4: 08        .byte $08   ; 
- D 1 - I - 0x00BBC5 02:BBB5: 02        .byte $02   ; 
- D 1 - I - 0x00BBC6 02:BBB6: 0F        .byte $0F   ; 
- D 1 - I - 0x00BBC7 02:BBB7: 03        .byte $03   ; 
- D 1 - I - 0x00BBC8 02:BBB8: 17        .byte $17   ; 
- D 1 - I - 0x00BBC9 02:BBB9: 04        .byte $04   ; 
- D 1 - I - 0x00BBCA 02:BBBA: 1F        .byte $1F   ; 
- D 1 - I - 0x00BBCB 02:BBBB: 06        .byte $06   ; 
- D 1 - I - 0x00BBCC 02:BBBC: 2B        .byte $2B   ; 
- D 1 - I - 0x00BBCD 02:BBBD: 00        .byte $00   ; 
- D 1 - I - 0x00BBCE 02:BBBE: 08        .byte $08   ; 
- D 1 - I - 0x00BBCF 02:BBBF: 00        .byte $00   ; 
- D 1 - I - 0x00BBD0 02:BBC0: 10        .byte $10   ; 
- D 1 - I - 0x00BBD1 02:BBC1: 00        .byte $00   ; 
- D 1 - I - 0x00BBD2 02:BBC2: 18        .byte $18   ; 
- D 1 - I - 0x00BBD3 02:BBC3: 00        .byte $00   ; 
- D 1 - I - 0x00BBD4 02:BBC4: 20        .byte $20   ; 
- D 1 - I - 0x00BBD5 02:BBC5: 00        .byte $00   ; 
- D 1 - I - 0x00BBD6 02:BBC6: 2C        .byte $2C   ; 
- D 1 - I - 0x00BBD7 02:BBC7: FF        .byte $FF   ; 
- D 1 - I - 0x00BBD8 02:BBC8: 08        .byte $08   ; 
- D 1 - I - 0x00BBD9 02:BBC9: FE        .byte $FE   ; 
- D 1 - I - 0x00BBDA 02:BBCA: 0F        .byte $0F   ; 
- D 1 - I - 0x00BBDB 02:BBCB: FD        .byte $FD   ; 
- D 1 - I - 0x00BBDC 02:BBCC: 17        .byte $17   ; 
- D 1 - I - 0x00BBDD 02:BBCD: FC        .byte $FC   ; 
- D 1 - I - 0x00BBDE 02:BBCE: 1F        .byte $1F   ; 
- D 1 - I - 0x00BBDF 02:BBCF: FA        .byte $FA   ; 
- D 1 - I - 0x00BBE0 02:BBD0: 2B        .byte $2B   ; 
- D 1 - I - 0x00BBE1 02:BBD1: FE        .byte $FE   ; 
- D 1 - I - 0x00BBE2 02:BBD2: 08        .byte $08   ; 
- D 1 - I - 0x00BBE3 02:BBD3: FC        .byte $FC   ; 
- D 1 - I - 0x00BBE4 02:BBD4: 0D        .byte $0D   ; 
- D 1 - I - 0x00BBE5 02:BBD5: FA        .byte $FA   ; 
- D 1 - I - 0x00BBE6 02:BBD6: 15        .byte $15   ; 
- D 1 - I - 0x00BBE7 02:BBD7: F7        .byte $F7   ; 
- D 1 - I - 0x00BBE8 02:BBD8: 1D        .byte $1D   ; 
- D 1 - I - 0x00BBE9 02:BBD9: F4        .byte $F4   ; 
- D 1 - I - 0x00BBEA 02:BBDA: 29        .byte $29   ; 
- D 1 - I - 0x00BBEB 02:BBDB: FD        .byte $FD   ; 
- D 1 - I - 0x00BBEC 02:BBDC: 07        .byte $07   ; 
- D 1 - I - 0x00BBED 02:BBDD: FA        .byte $FA   ; 
- D 1 - I - 0x00BBEE 02:BBDE: 0C        .byte $0C   ; 
- D 1 - I - 0x00BBEF 02:BBDF: F7        .byte $F7   ; 
- D 1 - I - 0x00BBF0 02:BBE0: 12        .byte $12   ; 
- D 1 - I - 0x00BBF1 02:BBE1: F3        .byte $F3   ; 
- D 1 - I - 0x00BBF2 02:BBE2: 1A        .byte $1A   ; 
- D 1 - I - 0x00BBF3 02:BBE3: EE        .byte $EE   ; 
- D 1 - I - 0x00BBF4 02:BBE4: 26        .byte $26   ; 
- D 1 - I - 0x00BBF5 02:BBE5: FC        .byte $FC   ; 
- D 1 - I - 0x00BBF6 02:BBE6: 06        .byte $06   ; 
- D 1 - I - 0x00BBF7 02:BBE7: F8        .byte $F8   ; 
- D 1 - I - 0x00BBF8 02:BBE8: 0B        .byte $0B   ; 
- D 1 - I - 0x00BBF9 02:BBE9: F6        .byte $F6   ; 
- D 1 - I - 0x00BBFA 02:BBEA: 0F        .byte $0F   ; 
- D 1 - I - 0x00BBFB 02:BBEB: F1        .byte $F1   ; 
- D 1 - I - 0x00BBFC 02:BBEC: 17        .byte $17   ; 
- D 1 - I - 0x00BBFD 02:BBED: E9        .byte $E9   ; 
- D 1 - I - 0x00BBFE 02:BBEE: 23        .byte $23   ; 



sub_BB6B:
C - - - - - 0x00BB7B 02:BB6B: A9 99     LDA #$99
C - - - - - 0x00BB7D 02:BB6D: 85 0A     STA ram_000A_t09
C - - - - - 0x00BB7F 02:BB6F: B9 36 07  LDA ram_0736_obj,Y
C - - - - - 0x00BB82 02:BB72: 48        PHA
C - - - - - 0x00BB83 02:BB73: 20 D0 8B  JSR sub_0x008BE0
C - - - - - 0x00BB86 02:BB76: 68        PLA
C - - - - - 0x00BB87 02:BB77: 99 36 07  STA ram_0736_obj,Y
C - - - - - 0x00BB8A 02:BB7A: 60        RTS



sub_BAA3:
C - - - - - 0x00BAB3 02:BAA3: BD BE 07  LDA ram_07BE_unk,X
C - - - - - 0x00BAB6 02:BAA6: 10 03     BPL bra_BAAB
C - - - - - 0x00BAB8 02:BAA8: 20 07 95  EOR #$FF
                                        CLC
                                        ADC #$01
bra_BAAB:
C - - - - - 0x00BABB 02:BAAB: C9 04     CMP #$04
C - - - - - 0x00BABD 02:BAAD: 60        RTS



sub_BA95:
; in
    ; A = 
; bzk optimize, useless LDY + CPY + BCC
C - - - - - 0x00BAA5 02:BA95: BC 78 07  LDY ram_0778_unk,X
C - - - - - 0x00BAA8 02:BA98: C0 02     CPY #$02
; bzk optimize, useless branch
C - - - - - 0x00BAAA 02:BA9A: 90 00     BCC bra_BA9C
bra_BA9C:
C - - - - - 0x00BAAC 02:BA9C: 85 01     STA ram_0001_t04_hi
C - - - - - 0x00BAAE 02:BA9E: A9 00     LDA #$00
C - - - - - 0x00BAB0 02:BAA0: 85 00     STA ram_0000_t47_lo
C - - - - - 0x00BAB2 02:BAA2: 60        RTS



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_016_0x00B84F_09:
; bzk bug, reading from 0x00B84A
C D 1 J - - 0x00B84F 02:B83F: 20 45 B8  JSR sub_B845
C - - - - - 0x00B852 02:B842: 4C 10 8E  JMP loc_0x008E20



sub_B845:
C - - - - - 0x00B855 02:B845: BD 78 07  LDA ram_0778_unk,X
C - - - - - 0x00B858 02:B848: D0 0D     BNE bra_B857
C - - - - - 0x00B85A 02:B84A: A9 00     LDA #$00
C - - - - - 0x00B85C 02:B84C: 9D 20 07  STA ram_0720_obj,X
C - - - - - 0x00B85F 02:B84F: A9 08     LDA #$08
C - - - - - 0x00B861 02:B851: 9D F4 06  STA ram_06F4_obj,X
C - - - - - 0x00B864 02:B854: FE 78 07  INC ram_0778_unk,X
bra_B857:
C - - - - - 0x00B867 02:B857: 20 B1 93  JSR sub_0x0093C1_06B2x_LSRx4_TAY
C - - - - - 0x00B86A 02:B85A: B9 CC B8  LDA tbl_B8CC_index,Y
C - - - - - 0x00B86D 02:B85D: 85 91     STA ram_0091_pos_Y
C - - - - - 0x00B86F 02:B85F: 20 DC 90  JSR sub_0x0090EC
C - - - - - 0x00B872 02:B862: A4 91     LDY ram_0091_pos_Y
C - - - - - 0x00B874 02:B864: D9 CF B8  CMP tbl_B8CF,Y
C - - - - - 0x00B877 02:B867: D0 3B     BNE bra_B8A4
C - - - - - 0x00B879 02:B869: A2 00     LDX #$00
bra_B86B_loop:
C - - - - - 0x00B87B 02:B86B: 86 90     STX ram_0090_pos_X
C - - - - - 0x00B87D 02:B86D: BD 82 07  LDA ram_0782_unk,X
C - - - - - 0x00B880 02:B870: F0 28     BEQ bra_B89A
C - - - - - 0x00B882 02:B872: 20 A7 B8  JSR sub_B8A7
C - - - - - 0x00B885 02:B875: 90 23     BCC bra_B89A
C - - - - - 0x00B887 02:B877: 20 AF B8  JSR sub_B8AF
C - - - - - 0x00B88A 02:B87A: 90 1E     BCC bra_B89A
C - - - - - 0x00B88C 02:B87C: A2 00     LDX #$00
bra_B87E_loop:
C - - - - - 0x00B88E 02:B87E: B9 D8 B8  LDA tbl_B8D8,Y
; ram_0018_t07_lo
; ram_0019_t03_hi
; ram_001A_t08_lo
; ram_001B_t02_hi
C - - - - - 0x00B891 02:B881: 95 18     STA ram_0018_temp,X
C - - - - - 0x00B893 02:B883: C8        INY
C - - - - - 0x00B894 02:B884: E8        INX
C - - - - - 0x00B895 02:B885: E0 04     CPX #$04
C - - - - - 0x00B897 02:B887: 90 F5     BCC bra_B87E_loop
C - - - - - 0x00B899 02:B889: A4 90     LDY ram_0090_pos_X
C - - - - - 0x00B89B 02:B88B: A9 01     LDA #$01
C - - - - - 0x00B89D 02:B88D: C0 01     CPY #$01
C - - - - - 0x00B89F 02:B88F: D0 02     BNE bra_B893
- - - - - - 0x00B8A1 02:B891: A9 02     LDA #$02
bra_B893:
C - - - - - 0x00B8A3 02:B893: 85 00     STA ram_0000_t75
C - - - - - 0x00B8A5 02:B895: A6 53     LDX ram_0053
C - - - - - 0x00B8A7 02:B897: 20 15 9E  JSR sub_0x009E25
bra_B89A:
C - - - - - 0x00B8AA 02:B89A: 20 F6 B8  JSR sub_B8F6
C - - - - - 0x00B8AD 02:B89D: A6 90     LDX ram_0090_pos_X
C - - - - - 0x00B8AF 02:B89F: E8        INX
C - - - - - 0x00B8B0 02:B8A0: E0 02     CPX #$02
C - - - - - 0x00B8B2 02:B8A2: 90 C7     BCC bra_B86B_loop
bra_B8A4:
C - - - - - 0x00B8B4 02:B8A4: A6 53     LDX ram_0053
C - - - - - 0x00B8B6 02:B8A6: 60        RTS



tbl_B8CC_index:
- D 1 - - - 0x00B8DC 02:B8CC: 00        .byte $00   ; 00 
- D 1 - - - 0x00B8DD 02:B8CD: 0D        .byte $0D   ; 01 
- D 1 - - - 0x00B8DE 02:B8CE: 1A        .byte $1A   ; 02 


; !!!
tbl_B8CF:
; 0x00B874
- D 1 - - - 0x00B8DF 02:B8CF: 85        .byte $85   ; 00 
tbl_B8D0:
; 0x00B8CA 00
- D 1 - - - 0x00B8E0 02:B8D0: 5C        .byte $5C   ; 01 
- D 1 - - - 0x00B8E1 02:B8D1: 0C        .byte $0C   ; 02 
- D 1 - - - 0x00B8E2 02:B8D2: DC        .byte $DC   ; 03 
- D 1 - - - 0x00B8E3 02:B8D3: 0C        .byte $0C   ; 04 
; 0x00B8CA 04
- - - - - - 0x00B8E4 02:B8D4: 40        .byte $40   ; 05 
- - - - - - 0x00B8E5 02:B8D5: 00        .byte $00   ; 06 
- - - - - - 0x00B8E6 02:B8D6: 50        .byte $50   ; 07 
- - - - - - 0x00B8E7 02:B8D7: 00        .byte $00   ; 08 
tbl_B8D8:
; 0x00B88E
- - - - - - 0x00B8E8 02:B8D8: 00        .byte $00   ; 09 
- - - - - - 0x00B8E9 02:B8D9: 01        .byte $01   ; 0A 
- - - - - - 0x00B8EA 02:B8DA: 00        .byte $00   ; 0B 
- - - - - - 0x00B8EB 02:B8DB: 00        .byte $00   ; 0C 
; 0x00B874
- D 1 - - - 0x00B8EC 02:B8DC: 86        .byte $86   ; 0D 
; 0x00B8CA 00
- D 1 - - - 0x00B8ED 02:B8DD: 7E        .byte $7E   ; 0E 
- D 1 - - - 0x00B8EE 02:B8DE: 0C        .byte $0C   ; 0F 
- D 1 - - - 0x00B8EF 02:B8DF: 9E        .byte $9E   ; 10 
- D 1 - - - 0x00B8F0 02:B8E0: 0C        .byte $0C   ; 11 
; 0x00B8CA 04
- D 1 - - - 0x00B8F1 02:B8E1: 40        .byte $40   ; 12 
- D 1 - - - 0x00B8F2 02:B8E2: 00        .byte $00   ; 13 
- D 1 - - - 0x00B8F3 02:B8E3: A8        .byte $A8   ; 14 
- D 1 - - - 0x00B8F4 02:B8E4: 00        .byte $00   ; 15 
; 0x00B88E
- D 1 - - - 0x00B8F5 02:B8E5: 00        .byte $00   ; 16 
- D 1 - - - 0x00B8F6 02:B8E6: 00        .byte $00   ; 17 
- D 1 - - - 0x00B8F7 02:B8E7: 00        .byte $00   ; 18 
- D 1 - - - 0x00B8F8 02:B8E8: FD        .byte $FD   ; 19 
; 0x00B874
- D 1 - - - 0x00B8F9 02:B8E9: 86        .byte $86   ; 1A 
; 0x00B8CA 00
- D 1 - - - 0x00B8FA 02:B8EA: C2        .byte $C2   ; 1B 
- D 1 - - - 0x00B8FB 02:B8EB: 0C        .byte $0C   ; 1C 
- D 1 - - - 0x00B8FC 02:B8EC: E2        .byte $E2   ; 1D 
- D 1 - - - 0x00B8FD 02:B8ED: 0C        .byte $0C   ; 1E 
; 0x00B8CA 04
- D 1 - - - 0x00B8FE 02:B8EE: 40        .byte $40   ; 1F 
- D 1 - - - 0x00B8FF 02:B8EF: 00        .byte $00   ; 20 
- D 1 - - - 0x00B900 02:B8F0: A8        .byte $A8   ; 21 
- D 1 - - - 0x00B901 02:B8F1: 00        .byte $00   ; 22 
; 0x00B88E
- D 1 - - - 0x00B902 02:B8F2: 00        .byte $00   ; 23 
- D 1 - - - 0x00B903 02:B8F3: 00        .byte $00   ; 24 
- D 1 - - - 0x00B904 02:B8F4: 00        .byte $00   ; 25 
- D 1 - - - 0x00B905 02:B8F5: FD        .byte $FD   ; 26 



sub_B8A7:
C - - - - - 0x00B8B7 02:B8A7: 20 7C 96  JSR sub_0x00968C
C - - - - - 0x00B8BA 02:B8AA: A4 91     LDY ram_0091_pos_Y
C - - - - - 0x00B8BC 02:B8AC: 4C B8 B8  JMP loc_B8B8



sub_B8AF:
C - - - - - 0x00B8BF 02:B8AF: 20 BA 96  JSR sub_0x0096CA
C - - - - - 0x00B8C2 02:B8B2: A4 91     LDY ram_0091_pos_Y
C - - - - - 0x00B8C4 02:B8B4: C8        INY
C - - - - - 0x00B8C5 02:B8B5: C8        INY
C - - - - - 0x00B8C6 02:B8B6: C8        INY
C - - - - - 0x00B8C7 02:B8B7: C8        INY
loc_B8B8:
C D 1 - - - 0x00B8C8 02:B8B8: A2 00     LDX #$00
bra_B8BA_loop:
C - - - - - 0x00B8CA 02:B8BA: B9 D0 B8  LDA tbl_B8D0,Y
C - - - - - 0x00B8CD 02:B8BD: 95 08     STA ram_0008_t04,X
C - - - - - 0x00B8CF 02:B8BF: C8        INY
C - - - - - 0x00B8D0 02:B8C0: E8        INX
C - - - - - 0x00B8D1 02:B8C1: E0 04     CPX #$04
C - - - - - 0x00B8D3 02:B8C3: 90 F5     BCC bra_B8BA_loop
C - - - - - 0x00B8D5 02:B8C5: A4 91     LDY ram_0091_pos_Y
C - - - - - 0x00B8D7 02:B8C7: A6 90     LDX ram_0090_pos_X
C - - - - - 0x00B8D9 02:B8C9: 4C 83 80  JMP loc_0x008093



sub_B8F6:
C - - - - - 0x00B906 02:B8F6: A6 53     LDX ram_0053
C - - - - - 0x00B908 02:B8F8: 20 BA 93  JSR sub_0x0093CA
C - - - - - 0x00B90B 02:B8FB: B0 23     BCS bra_B920_RTS
C - - - - - 0x00B90D 02:B8FD: DE F4 06  DEC ram_06F4_obj,X
C - - - - - 0x00B910 02:B900: D0 1E     BNE bra_B920_RTS
C - - - - - 0x00B912 02:B902: A9 08     LDA #$08
C - - - - - 0x00B914 02:B904: 9D F4 06  STA ram_06F4_obj,X
C - - - - - 0x00B917 02:B907: 20 B1 93  JSR sub_0x0093C1_06B2x_LSRx4_TAY
C - - - - - 0x00B91A 02:B90A: 0A        ASL
C - - - - - 0x00B91B 02:B90B: 85 00     STA ram_0000_t2D
C - - - - - 0x00B91D 02:B90D: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x00B920 02:B910: 29 01     AND #$01
C - - - - - 0x00B922 02:B912: 18        CLC
C - - - - - 0x00B923 02:B913: 65 00     ADC ram_0000_t2D
C - - - - - 0x00B925 02:B915: A8        TAY
C - - - - - 0x00B926 02:B916: B9 21 B9  LDA tbl_B921,Y
C - - - - - 0x00B929 02:B919: A8        TAY
C - - - - - 0x00B92A 02:B91A: 20 37 8F  JSR sub_0x008F47
C - - - - - 0x00B92D 02:B91D: FE AA 07  INC ram_07AA_unk,X
bra_B920_RTS:
C - - - - - 0x00B930 02:B920: 60        RTS



tbl_B921:
- D 1 - - - 0x00B931 02:B921: 10        .byte con_8F57_10   ; 
- D 1 - - - 0x00B932 02:B922: 14        .byte con_8F57_14   ; 
- D 1 - - - 0x00B933 02:B923: 18        .byte con_8F57_18   ; 
- D 1 - - - 0x00B934 02:B924: 1C        .byte con_8F57_1C   ; 
- D 1 - - - 0x00B935 02:B925: 20        .byte con_8F57_20   ; 
- D 1 - - - 0x00B936 02:B926: 24        .byte con_8F57_24   ; 



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_016_0x00FC33_0A:
C - - J - - 0x00FC33 03:BC23: 20 29 BC  JSR sub_BC29
C - - - - - 0x00FC36 03:BC26: 4C 10 8E  JMP loc_0x008E20



sub_BC29:
C - - - - - 0x00FC39 03:BC29: BD 78 07  LDA ram_0778_unk,X
C - - - - - 0x00FC3C 03:BC2C: D0 74     BNE bra_BCA2
C - - - - - 0x00FC3E 03:BC2E: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x00FC41 03:BC31: 38        SEC
C - - - - - 0x00FC42 03:BC32: E5 61     SBC ram_0061_lo
C - - - - - 0x00FC44 03:BC34: 9D 4E 06  STA ram_obj_pos_X,X
C - - - - - 0x00FC47 03:BC37: BD D2 07  LDA ram_07D2_unk,X
C - - - - - 0x00FC4A 03:BC3A: E5 60     SBC ram_0060_hi
C - - - - - 0x00FC4C 03:BC3C: 85 01     STA ram_0001_t27
C - - - - - 0x00FC4E 03:BC3E: 10 12     BPL bra_BC52
C - - - - - 0x00FC50 03:BC40: A5 01     LDA ram_0001_t27
C - - - - - 0x00FC52 03:BC42: 49 FF     EOR #$FF
C - - - - - 0x00FC54 03:BC44: 85 01     STA ram_0001_t27
C - - - - - 0x00FC56 03:BC46: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x00FC59 03:BC49: 20 07 95  EOR #$FF
                                        CLC
                                        ADC #$01
; bzk optimize, useless STA
C - - - - - 0x00FC5C 03:BC4C: 85 00     STA ram_0000_t95_useless
C - - - - - 0x00FC5E 03:BC4E: 90 02     BCC bra_BC52
; if overflow
- - - - - - 0x00FC60 03:BC50: E6 01     INC ram_0001_t27
bra_BC52:
C - - - - - 0x00FC62 03:BC52: A5 01     LDA ram_0001_t27
C - - - - - 0x00FC64 03:BC54: D0 74     BNE bra_BCCA
C - - - - - 0x00FC66 03:BC56: A5 69     LDA ram_0069
C - - - - - 0x00FC68 03:BC58: 10 04     BPL bra_BC5E
C - - - - - 0x00FC6A 03:BC5A: A9 08     LDA #$08
C - - - - - 0x00FC6C 03:BC5C: D0 02     BNE bra_BC60    ; jmp
bra_BC5E:
C - - - - - 0x00FC6E 03:BC5E: A9 F8     LDA #$F8
bra_BC60:
C - - - - - 0x00FC70 03:BC60: 20 C5 91  JSR sub_0x0091D5_add_to_pos_X
C - - - - - 0x00FC73 03:BC63: BD BE 07  LDA ram_07BE_unk,X
C - - - - - 0x00FC76 03:BC66: 38        SEC
C - - - - - 0x00FC77 03:BC67: E5 64     SBC ram_0064_lo
C - - - - - 0x00FC79 03:BC69: 9D 68 06  STA ram_obj_pos_Y,X
C - - - - - 0x00FC7C 03:BC6C: BD C8 07  LDA ram_07C8_unk,X
C - - - - - 0x00FC7F 03:BC6F: E5 63     SBC ram_0063_hi
C - - - - - 0x00FC81 03:BC71: 85 01     STA ram_0001_t28
C - - - - - 0x00FC83 03:BC73: 10 12     BPL bra_BC87
- - - - - - 0x00FC85 03:BC75: A5 01     LDA ram_0001_t28
- - - - - - 0x00FC87 03:BC77: 49 FF     EOR #$FF
- - - - - - 0x00FC89 03:BC79: 85 01     STA ram_0001_t28
- - - - - - 0x00FC8B 03:BC7B: BD 68 06  LDA ram_obj_pos_Y,X
- - - - - - 0x00FC8E 03:BC7E: 20 07 95  EOR #$FF
                                        CLC
                                        ADC #$01
; bzk optimize, useless STA
- - - - - - 0x00FC91 03:BC81: 85 00     STA ram_0000_t96_useless
- - - - - - 0x00FC93 03:BC83: 90 02     BCC bra_BC87
; if overflow
- - - - - - 0x00FC95 03:BC85: E6 01     INC ram_0001_t28
bra_BC87:
C - - - - - 0x00FC97 03:BC87: A5 01     LDA ram_0001_t28
C - - - - - 0x00FC99 03:BC89: D0 3F     BNE bra_BCCA
C - - - - - 0x00FC9B 03:BC8B: 20 D0 BC  JSR sub_BCD0
C - - - - - 0x00FC9E 03:BC8E: B0 3A     BCS bra_BCCA
C - - - - - 0x00FCA0 03:BC90: A9 20     LDA #$20
C - - - - - 0x00FCA2 03:BC92: 9D 68 06  STA ram_obj_pos_Y,X
C - - - - - 0x00FCA5 03:BC95: A9 14     LDA #$14
C - - - - - 0x00FCA7 03:BC97: 9D 20 07  STA ram_0720_obj,X
C - - - - - 0x00FCAA 03:BC9A: A9 0B     LDA #$0B
C - - - - - 0x00FCAC 03:BC9C: 20 A1 89  JSR sub_0x0089B1
C - - - - - 0x00FCAF 03:BC9F: FE 78 07  INC ram_0778_unk,X
bra_BCA2:
C - - - - - 0x00FCB2 03:BCA2: A5 7B     LDA ram_chr_bank + $04
C - - - - - 0x00FCB4 03:BCA4: C9 6E     CMP #con_chr_bank + $6E
C - - - - - 0x00FCB6 03:BCA6: F0 06     BEQ bra_BCAE
- - - - - - 0x00FCB8 03:BCA8: 20 47 9A  JSR sub_0x009A57
- - - - - - 0x00FCBB 03:BCAB: 4C CD BC  JMP loc_0x00974A
bra_BCAE:
C - - - - - 0x00FCBE 03:BCAE: 20 72 91  JSR sub_0x009182_06B2x_AND_0F
C - - - - - 0x00FCC1 03:BCB1: D0 05     BNE bra_BCB8
C - - - - - 0x00FCC3 03:BCB3: A9 42     LDA #$42
C - - - - - 0x00FCC5 03:BCB5: 9D B2 06  STA ram_06B2_obj,X
bra_BCB8:
C - - - - - 0x00FCC8 03:BCB8: 20 BA 96  JSR sub_0x0096CA
C - - - - - 0x00FCCB 03:BCBB: A5 01     LDA ram_0001_t02_hi
C - - - - - 0x00FCCD 03:BCBD: C9 04     CMP #$04
C - - - - - 0x00FCCF 03:BCBF: 90 02     BCC bra_BCC3
C - - - - - 0x00FCD1 03:BCC1: B0 0A     BCS bra_BCCD    ; jmp
bra_BCC3:
C - - - - - 0x00FCD3 03:BCC3: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x00FCD6 03:BCC6: C9 E8     CMP #$E8
C - - - - - 0x00FCD8 03:BCC8: 90 20     BCC bra_BCEA_RTS
bra_BCCA:
C - - - - - 0x00FCDA 03:BCCA: 4C 17 9A  JMP loc_0x009A27
bra_BCCD:
C - - - - - 0x00FCDD 03:BCCD: 4C 3A 97  JMP loc_0x00974A



sub_BCD0:
C - - - - - 0x00FCE0 03:BCD0: A0 00     LDY #$00
bra_BCD2_loop:
C - - - - - 0x00FCE2 03:BCD2: B9 82 07  LDA ram_0782_unk,Y
C - - - - - 0x00FCE5 03:BCD5: F0 0E     BEQ bra_BCE5
C - - - - - 0x00FCE7 03:BCD7: 20 FE 94  JSR sub_0x00950E
C - - - - - 0x00FCEA 03:BCDA: C9 40     CMP #$40
C - - - - - 0x00FCEC 03:BCDC: B0 07     BCS bra_BCE5
C - - - - - 0x00FCEE 03:BCDE: 20 F4 94  JSR sub_0x009504
C - - - - - 0x00FCF1 03:BCE1: C9 68     CMP #$68
C - - - - - 0x00FCF3 03:BCE3: 90 05     BCC bra_BCEA_RTS
bra_BCE5:
C - - - - - 0x00FCF5 03:BCE5: C8        INY
C - - - - - 0x00FCF6 03:BCE6: C0 02     CPY #$02
C - - - - - 0x00FCF8 03:BCE8: 90 E8     BCC bra_BCD2_loop
bra_BCEA_RTS:
C - - - - - 0x00FCFA 03:BCEA: 60        RTS



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_016_0x00D1DE_0B:
C - - J - - 0x00D1DE 03:B1CE: 20 D4 B1  JSR sub_B1D4
C - - - - - 0x00D1E1 03:B1D1: 4C 10 8E  JMP loc_0x008E20



sub_B1D4:
C - - - - - 0x00D1E4 03:B1D4: 20 22 B2  JSR sub_B222
C - - - - - 0x00D1E7 03:B1D7: A5 23     LDA ram_frm_cnt
C - - - - - 0x00D1E9 03:B1D9: 29 3F     AND #$3F
C - - - - - 0x00D1EB 03:B1DB: D0 44     BNE bra_B221_RTS
C - - - - - 0x00D1ED 03:B1DD: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x00D1F0 03:B1E0: 85 90     STA ram_0090_pos_X
C - - - - - 0x00D1F2 03:B1E2: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x00D1F5 03:B1E5: 85 91     STA ram_0091_pos_Y
C - - - - - 0x00D1F7 03:B1E7: A0 03     LDY #$03
C - - - - - 0x00D1F9 03:B1E9: A9 05     LDA #$05
C - - - - - 0x00D1FB 03:B1EB: 20 D8 93  JSR sub_0x0093E8
C - - - - - 0x00D1FE 03:B1EE: B0 29     BCS bra_B219
C - - - - - 0x00D200 03:B1F0: 98        TYA
C - - - - - 0x00D201 03:B1F1: AA        TAX
C - - - - - 0x00D202 03:B1F2: A5 90     LDA ram_0090_pos_X
C - - - - - 0x00D204 03:B1F4: 38        SEC
C - - - - - 0x00D205 03:B1F5: E9 20     SBC #$20
C - - - - - 0x00D207 03:B1F7: 9D 4E 06  STA ram_obj_pos_X,X
C - - - - - 0x00D20A 03:B1FA: 90 20     BCC bra_B21C
C - - - - - 0x00D20C 03:B1FC: A5 91     LDA ram_0091_pos_Y
C - - - - - 0x00D20E 03:B1FE: 38        SEC
C - - - - - 0x00D20F 03:B1FF: E9 10     SBC #$10
C - - - - - 0x00D211 03:B201: 9D 68 06  STA ram_obj_pos_Y,X
C - - - - - 0x00D214 03:B204: 90 16     BCC bra_B21C
C - - - - - 0x00D216 03:B206: A9 00     LDA #$00
C - - - - - 0x00D218 03:B208: 9D BE 07  STA ram_07BE_unk,X
C - - - - - 0x00D21B 03:B20B: A9 06     LDA #$06
C - - - - - 0x00D21D 03:B20D: 9D D2 07  STA ram_07D2_unk,X
C - - - - - 0x00D220 03:B210: BD 82 07  LDA ram_0782_unk,X
C - - - - - 0x00D223 03:B213: 9D C8 07  STA ram_07C8_unk,X
C - - - - - 0x00D226 03:B216: DE B4 07  DEC ram_07B4_unk,X
bra_B219:
C - - - - - 0x00D229 03:B219: 4C 1F B2  JMP loc_B21F
bra_B21C:
C - - - - - 0x00D22C 03:B21C: 20 17 9A  JSR sub_0x009A27
loc_B21F:
C D 1 - - - 0x00D22F 03:B21F: A6 53     LDX ram_0053
bra_B221_RTS:
C - - - - - 0x00D231 03:B221: 60        RTS



sub_B222:
C - - - - - 0x00D232 03:B222: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x00D235 03:B225: C9 C2     CMP #$C2
C - - - - - 0x00D237 03:B227: B0 0C     BCS bra_B235
C - - - - - 0x00D239 03:B229: BD 0A 07  LDA ram_070A_obj,X
C - - - - - 0x00D23C 03:B22C: D0 F3     BNE bra_B221_RTS
C - - - - - 0x00D23E 03:B22E: A0 08     LDY #$08
C - - - - - 0x00D240 03:B230: A9 03     LDA #$03
C - - - - - 0x00D242 03:B232: 4C 62 97  JMP loc_0x009772
bra_B235:
C - - - - - 0x00D245 03:B235: 4C 47 9A  JMP loc_0x009A57



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_016_0x005D8D_0C:
C - - J - - 0x005D8D 01:BD7D: 20 83 BD  JSR sub_BD83
C - - - - - 0x005D90 01:BD80: 4C 10 8E  JMP loc_0x008E20



sub_BD83:
C - - - - - 0x005D93 01:BD83: BD 78 07  LDA ram_0778_unk,X
C - - - - - 0x005D96 01:BD86: F0 03     BEQ bra_BD8B
C - - - - - 0x005D98 01:BD88: 4C 18 BE  JMP loc_BE18
bra_BD8B:
C - - - - - 0x005D9B 01:BD8B: 20 C8 90  JSR sub_0x0090D8_0600x_write_08
C - - - - - 0x005D9E 01:BD8E: FE 78 07  INC ram_0778_unk,X
C - - - - - 0x005DA1 01:BD91: A5 9F     LDA ram_009F
C - - - - - 0x005DA3 01:BD93: 38        SEC
C - - - - - 0x005DA4 01:BD94: E9 E4     SBC #$E4
C - - - - - 0x005DA6 01:BD96: A8        TAY
C - - - - - 0x005DA7 01:BD97: BD BE 07  LDA ram_07BE_unk,X
C - - - - - 0x005DAA 01:BD9A: 18        CLC
C - - - - - 0x005DAB 01:BD9B: 79 CD BE  ADC tbl_BECD,Y
C - - - - - 0x005DAE 01:BD9E: 9D BE 07  STA ram_07BE_unk,X
C - - - - - 0x005DB1 01:BDA1: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x005DB4 01:BDA4: 18        CLC
C - - - - - 0x005DB5 01:BDA5: 79 D7 BE  ADC tbl_BED7,Y
C - - - - - 0x005DB8 01:BDA8: 9D AA 07  STA ram_07AA_unk,X
C - - - - - 0x005DBB 01:BDAB: 6A        ROR
C - - - - - 0x005DBC 01:BDAC: 59 D7 BE  EOR tbl_BED7,Y
C - - - - - 0x005DBF 01:BDAF: 2A        ROL
C - - - - - 0x005DC0 01:BDB0: 90 08     BCC bra_BDBA
- - - - - - 0x005DC2 01:BDB2: BD D2 07  LDA ram_07D2_unk,X
- - - - - - 0x005DC5 01:BDB5: 09 02     ORA #$02
- - - - - - 0x005DC7 01:BDB7: 9D D2 07  STA ram_07D2_unk,X
bra_BDBA:
C - - - - - 0x005DCA 01:BDBA: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x005DCD 01:BDBD: 18        CLC
C - - - - - 0x005DCE 01:BDBE: 69 40     ADC #$40
C - - - - - 0x005DD0 01:BDC0: C9 60     CMP #$60
C - - - - - 0x005DD2 01:BDC2: B0 09     BCS bra_BDCD
C - - - - - 0x005DD4 01:BDC4: A5 61     LDA ram_0061_lo
C - - - - - 0x005DD6 01:BDC6: 29 1F     AND #$1F
C - - - - - 0x005DD8 01:BDC8: F0 03     BEQ bra_BDCD
C - - - - - 0x005DDA 01:BDCA: 4C 68 BE  JMP loc_BE68
bra_BDCD:
C - - - - - 0x005DDD 01:BDCD: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x005DE0 01:BDD0: 18        CLC
C - - - - - 0x005DE1 01:BDD1: 79 E1 BE  ADC tbl_BEE1,Y
C - - - - - 0x005DE4 01:BDD4: 9D B4 07  STA ram_07B4_unk,X
C - - - - - 0x005DE7 01:BDD7: B0 0D     BCS bra_BDE6
C - - - - - 0x005DE9 01:BDD9: B9 E1 BE  LDA tbl_BEE1,Y
C - - - - - 0x005DEC 01:BDDC: F0 08     BEQ bra_BDE6
C - - - - - 0x005DEE 01:BDDE: BD D2 07  LDA ram_07D2_unk,X
C - - - - - 0x005DF1 01:BDE1: 09 01     ORA #$01
C - - - - - 0x005DF3 01:BDE3: 9D D2 07  STA ram_07D2_unk,X
bra_BDE6:
C - - - - - 0x005DF6 01:BDE6: BD B4 07  LDA ram_07B4_unk,X
C - - - - - 0x005DF9 01:BDE9: C9 20     CMP #$20
C - - - - - 0x005DFB 01:BDEB: 90 03     BCC bra_BDF0
C - - - - - 0x005DFD 01:BDED: 4C 68 BE  JMP loc_BE68
bra_BDF0:
C - - - - - 0x005E00 01:BDF0: BD D2 07  LDA ram_07D2_unk,X
C - - - - - 0x005E03 01:BDF3: 29 03     AND #$03
C - - - - - 0x005E05 01:BDF5: F0 03     BEQ bra_BDFA
- - - - - - 0x005E07 01:BDF7: 4C 68 BE  JMP loc_BE68
bra_BDFA:
C - - - - - 0x005E0A 01:BDFA: 20 B9 8F  JSR sub_0x008FC9
C - - - - - 0x005E0D 01:BDFD: 20 0A 96  JSR sub_0x00961A
C - - - - - 0x005E10 01:BE00: A9 03     LDA #$03
C - - - - - 0x005E12 01:BE02: 20 00 97  JSR sub_0x009710
C - - - - - 0x005E15 01:BE05: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x005E18 01:BE08: 29 E0     AND #$E0
C - - - - - 0x005E1A 01:BE0A: 99 4E 06  STA ram_obj_pos_X,Y
C - - - - - 0x005E1D 01:BE0D: BD B4 07  LDA ram_07B4_unk,X
C - - - - - 0x005E20 01:BE10: 29 E0     AND #$E0
C - - - - - 0x005E22 01:BE12: 69 20     ADC #$20
C - - - - - 0x005E24 01:BE14: 99 68 06  STA ram_obj_pos_Y,Y
C - - - - - 0x005E27 01:BE17: 60        RTS



loc_BE18:
C D 1 - - - 0x005E28 01:BE18: 20 BA 93  JSR sub_0x0093CA
C - - - - - 0x005E2B 01:BE1B: 90 01     BCC bra_BE1E
bra_BE1D_RTS:
C - - - - - 0x005E2D 01:BE1D: 60        RTS
bra_BE1E:
C - - - - - 0x005E2E 01:BE1E: BC C8 07  LDY ram_07C8_unk,X
C - - - - - 0x005E31 01:BE21: B9 F5 BE  LDA tbl_BEF5,Y
C - - - - - 0x005E34 01:BE24: 85 1F     STA ram_001F_t04
C - - - - - 0x005E36 01:BE26: B9 09 BF  LDA tbl_BF09,Y
C - - - - - 0x005E39 01:BE29: 18        CLC
C - - - - - 0x005E3A 01:BE2A: 7D AA 07  ADC ram_07AA_unk,X
C - - - - - 0x005E3D 01:BE2D: 85 00     STA ram_0000_t38
C - - - - - 0x005E3F 01:BE2F: 6A        ROR
C - - - - - 0x005E40 01:BE30: 59 09 BF  EOR tbl_BF09,Y
C - - - - - 0x005E43 01:BE33: 2A        ROL
C - - - - - 0x005E44 01:BE34: 2A        ROL
C - - - - - 0x005E45 01:BE35: 2A        ROL
C - - - - - 0x005E46 01:BE36: 5D D2 07  EOR ram_07D2_unk,X
C - - - - - 0x005E49 01:BE39: 29 02     AND #$02
C - - - - - 0x005E4B 01:BE3B: F0 0F     BEQ bra_BE4C
- - - - - - 0x005E4D 01:BE3D: A5 00     LDA ram_0000_t38
- - - - - - 0x005E4F 01:BE3F: 29 1F     AND #$1F
- - - - - - 0x005E51 01:BE41: F0 28     BEQ bra_BE6B
- - - - - - 0x005E53 01:BE43: A5 00     LDA ram_0000_t38
- - - - - - 0x005E55 01:BE45: 18        CLC
- - - - - - 0x005E56 01:BE46: 69 18     ADC #$18
- - - - - - 0x005E58 01:BE48: C9 30     CMP #$30
- - - - - - 0x005E5A 01:BE4A: B0 1F     BCS bra_BE6B
bra_BE4C:
C - - - - - 0x005E5C 01:BE4C: B9 FF BE  LDA tbl_BEFF,Y
C - - - - - 0x005E5F 01:BE4F: 18        CLC
C - - - - - 0x005E60 01:BE50: 7D BE 07  ADC ram_07BE_unk,X
C - - - - - 0x005E63 01:BE53: A8        TAY
C - - - - - 0x005E64 01:BE54: 84 02     STY ram_0002_t18_array_index
C - - - - - 0x005E66 01:BE56: A5 1F     LDA ram_001F_t04
C - - - - - 0x005E68 01:BE58: 20 0E FC  JSR sub_0x01FC1E
loc_BE5B:
C - - - - - 0x005E6B 01:BE5B: 20 4C 9A  JSR sub_0x009A5C_clear_animation
C - - - - - 0x005E6E 01:BE5E: FE C8 07  INC ram_07C8_unk,X
C - - - - - 0x005E71 01:BE61: BD C8 07  LDA ram_07C8_unk,X
C - - - - - 0x005E74 01:BE64: C9 0A     CMP #$0A
C - - - - - 0x005E76 01:BE66: 90 B5     BCC bra_BE1D_RTS
loc_BE68:   ; bzk optimize
C D 1 - - - 0x005E78 01:BE68: 4C 17 9A  JMP loc_0x009A27
bra_BE6B:
- - - - - - 0x005E7B 01:BE6B: 84 02     STY ram_0002_t18_array_index
- - - - - - 0x005E7D 01:BE6D: A5 1F     LDA ram_001F_t04
- - - - - - 0x005E7F 01:BE6F: 99 00 04  STA ram_0400,Y
- - - - - - 0x005E82 01:BE72: 4C 5B BE  JMP loc_BE5B



tbl_BEF5:
- D 1 - - - 0x005F05 01:BEF5: FA        .byte $FA   ; 00 
- D 1 - - - 0x005F06 01:BEF6: FB        .byte $FB   ; 01 
- D 1 - - - 0x005F07 01:BEF7: F9        .byte $F9   ; 02 
- D 1 - - - 0x005F08 01:BEF8: FC        .byte $FC   ; 03 
- D 1 - - - 0x005F09 01:BEF9: F9        .byte $F9   ; 04 
- D 1 - - - 0x005F0A 01:BEFA: F8        .byte $F8   ; 05 
- D 1 - - - 0x005F0B 01:BEFB: FE        .byte $FE   ; 06 
- D 1 - - - 0x005F0C 01:BEFC: FA        .byte $FA   ; 07 
- D 1 - - - 0x005F0D 01:BEFD: FD        .byte $FD   ; 08 
- D 1 - - - 0x005F0E 01:BEFE: F7        .byte $F7   ; 09 



tbl_BF09:
- D 1 - - - 0x005F19 01:BF09: 20        .byte $20   ; 00 
- D 1 - - - 0x005F1A 01:BF0A: 00        .byte $00   ; 01 
- D 1 - - - 0x005F1B 01:BF0B: 00        .byte $00   ; 02 
- D 1 - - - 0x005F1C 01:BF0C: 20        .byte $20   ; 03 
- D 1 - - - 0x005F1D 01:BF0D: 00        .byte $00   ; 04 
- D 1 - - - 0x005F1E 01:BF0E: 20        .byte $20   ; 05 
- D 1 - - - 0x005F1F 01:BF0F: 20        .byte $20   ; 06 
- D 1 - - - 0x005F20 01:BF10: 20        .byte $20   ; 07 
- D 1 - - - 0x005F21 01:BF11: 00        .byte $00   ; 08 
- D 1 - - - 0x005F22 01:BF12: 00        .byte $00   ; 09 



tbl_BEFF:
- D 1 - - - 0x005F0F 01:BEFF: 21        .byte $21   ; 00 
- D 1 - - - 0x005F10 01:BF00: 30        .byte $30   ; 01 
- D 1 - - - 0x005F11 01:BF01: 10        .byte $10   ; 02 
- D 1 - - - 0x005F12 01:BF02: 31        .byte $31   ; 03 
- D 1 - - - 0x005F13 01:BF03: 20        .byte $20   ; 04 
- D 1 - - - 0x005F14 01:BF04: 01        .byte $01   ; 05 
- D 1 - - - 0x005F15 01:BF05: 41        .byte $41   ; 06 
- D 1 - - - 0x005F16 01:BF06: 11        .byte $11   ; 07 
- D 1 - - - 0x005F17 01:BF07: 40        .byte $40   ; 08 
- D 1 - - - 0x005F18 01:BF08: 00        .byte $00   ; 09 



tbl_BECD:
- D 1 - - - 0x005EDD 01:BECD: 00        .byte $00   ; E4 
- - - - - - 0x005EDE 01:BECE: FF        .byte $FF   ; E5 
- - - - - - 0x005EDF 01:BECF: F0        .byte $F0   ; E6 
- D 1 - - - 0x005EE0 01:BED0: E0        .byte $E0   ; E7 
- - - - - - 0x005EE1 01:BED1: EF        .byte $EF   ; E8 
- D 1 - - - 0x005EE2 01:BED2: DF        .byte $DF   ; E9 
- D 1 - - - 0x005EE3 01:BED3: D0        .byte $D0   ; EA 
- D 1 - - - 0x005EE4 01:BED4: CF        .byte $CF   ; EB 
- - - - - - 0x005EE5 01:BED5: C0        .byte $C0   ; EC 
- - - - - - 0x005EE6 01:BED6: BF        .byte $BF   ; ED 



tbl_BED7:
- D 1 - - - 0x005EE7 01:BED7: 00        .byte $00   ; E4 
- - - - - - 0x005EE8 01:BED8: E0        .byte $E0   ; E5 
- - - - - - 0x005EE9 01:BED9: 00        .byte $00   ; E6 
- D 1 - - - 0x005EEA 01:BEDA: 00        .byte $00   ; E7 
- - - - - - 0x005EEB 01:BEDB: E0        .byte $E0   ; E8 
- D 1 - - - 0x005EEC 01:BEDC: E0        .byte $E0   ; E9 
- D 1 - - - 0x005EED 01:BEDD: 00        .byte $00   ; EA 
- D 1 - - - 0x005EEE 01:BEDE: E0        .byte $E0   ; EB 
- - - - - - 0x005EEF 01:BEDF: 00        .byte $00   ; EC 
- - - - - - 0x005EF0 01:BEE0: E0        .byte $E0   ; ED 



tbl_BEE1:
- - - - - - 0x005EF1 01:BEE1: 00        .byte $00   ; E4 
- - - - - - 0x005EF2 01:BEE2: 00        .byte $00   ; E5 
- - - - - - 0x005EF3 01:BEE3: E0        .byte $E0   ; E6 
- D 1 - - - 0x005EF4 01:BEE4: C0        .byte $C0   ; E7 
- - - - - - 0x005EF5 01:BEE5: E0        .byte $E0   ; E8 
- D 1 - - - 0x005EF6 01:BEE6: C0        .byte $C0   ; E9 
- - - - - - 0x005EF7 01:BEE7: A0        .byte $A0   ; EA 
- D 1 - - - 0x005EF8 01:BEE8: A0        .byte $A0   ; EB 
- - - - - - 0x005EF9 01:BEE9: 80        .byte $80   ; EC 
- - - - - - 0x005EFA 01:BEEA: 80        .byte $80   ; ED 



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



.out .sprintf("Free bytes in bank 20: 0x%04X [%d]", ($C000 - *), ($C000 - *))



