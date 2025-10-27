.segment "BANK_20"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $A000  ; for listing file
; 0x040010-0x04200F



.export ofs_016_0x00F5F1_01
.export ofs_016_0x00FA55_03



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



.out .sprintf("Free bytes in bank 20: 0x%04X [%d]", ($C000 - *), ($C000 - *))



