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



.out .sprintf("Free bytes in bank 20: 0x%04X [%d]", ($C000 - *), ($C000 - *))



