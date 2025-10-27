.segment "BANK_20"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $A000  ; for listing file
; 0x040010-0x04200F



.export ofs_016_0x00F5F1_01
.export ofs_016_0x0081D8_02_RTS
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
.export ofs_016_0x00CFE3_0D
.export ofs_016_0x005F95_0E
.export ofs_016_0x008E59_0F
.export ofs_016_0x00CF31_10
.export ofs_016_0x00E065_11
.export ofs_016_0x005E85_12
.export ofs_016_0x005BA7_13
.export ofs_016_0x0081D8_14_RTS
.export ofs_016_0x00FCDA_15
.export ofs_016_0x00F9E2_16
.export ofs_016_0x00FB4C_17
.export ofs_016_0x00F3AF_18
.export ofs_016_0x008E62_19
.export ofs_016_0x00D248_1A
.export ofs_016_0x008DFA_1B
.export ofs_016_0x00F6E2_1C
.export ofs_016_0x005F2D_1D



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



ofs_016_0x0081D8_02_RTS:
                                        RTS



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



ofs_016_0x00CFE3_0D:
C - - J - - 0x00CFE3 03:AFD3: 20 DF AF  JSR sub_AFDF
C - - - - - 0x00CFE6 03:AFD6: 20 39 B1  JSR sub_B139
C - - - - - 0x00CFE9 03:AFD9: 20 54 B1  JSR sub_B154
C - - - - - 0x00CFEC 03:AFDC: 4C 10 8E  JMP loc_0x008E20



sub_B139:
C - - - - - 0x00D149 03:B139: 20 76 B1  JSR sub_B176
C - - - - - 0x00D14C 03:B13C: F0 F8     BEQ bra_B152_RTS
C - - - - - 0x00D14E 03:B13E: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x00D151 03:B141: C9 C0     CMP #$C0
C - - - - - 0x00D153 03:B143: B0 0C     BCS bra_B151
C - - - - - 0x00D155 03:B145: BD 0A 07  LDA ram_070A_obj,X
C - - - - - 0x00D158 03:B148: D0 EC     BNE bra_B152_RTS
C - - - - - 0x00D15A 03:B14A: A0 08     LDY #$08
C - - - - - 0x00D15C 03:B14C: A9 0C     LDA #$0C
C - - - - - 0x00D15E 03:B14E: 4C 62 97  JMP loc_0x009772
bra_B151:
- - - - - - 0x00D161 03:B151: 4C 47 9A  JMP loc_0x009A57
bra_B152_RTS:
                                        RTS



sub_B154:
C - - - - - 0x00D164 03:B154: 20 72 91  JSR sub_0x009182_06B2x_AND_0F
C - - - - - 0x00D167 03:B157: F0 0E     BEQ bra_B167
C - - - - - 0x00D169 03:B159: BD D2 07  LDA ram_07D2_unk,X
C - - - - - 0x00D16C 03:B15C: 30 D8     BMI bra_B174_RTS
C - - - - - 0x00D16E 03:B15E: 09 80     ORA #$80
C - - - - - 0x00D170 03:B160: 9D D2 07  STA ram_07D2_unk,X
C - - - - - 0x00D173 03:B163: A9 44     LDA #con_music_44
C - - - - - 0x00D175 03:B165: D0 0C     BNE bra_B173    ; jmp
bra_B167:
C - - - - - 0x00D177 03:B167: BD D2 07  LDA ram_07D2_unk,X
C - - - - - 0x00D17A 03:B16A: 10 CA     BPL bra_B174_RTS
C - - - - - 0x00D17C 03:B16C: 29 7F     AND #$7F
C - - - - - 0x00D17E 03:B16E: 9D D2 07  STA ram_07D2_unk,X
C - - - - - 0x00D181 03:B171: A9 48     LDA #con_music_48
bra_B173:
C - - - - - 0x00D183 03:B173: 4C D8 95  JMP loc_0x0095E8_play_music
bra_B174_RTS:
                                        RTS



sub_AFDF:
C - - - - - 0x00CFEF 03:AFDF: BD 78 07  LDA ram_0778_unk,X
C - - - - - 0x00CFF2 03:AFE2: 0A        ASL
C - - - - - 0x00CFF3 03:AFE3: A8        TAY
C - - - - - 0x00CFF4 03:AFE4: B9 F1 AF  LDA tbl_AFF1,Y
C - - - - - 0x00CFF7 03:AFE7: 85 18     STA ram_0018_t05_jmp
C - - - - - 0x00CFF9 03:AFE9: B9 F2 AF  LDA tbl_AFF1 + $01,Y
C - - - - - 0x00CFFC 03:AFEC: 85 19     STA ram_0018_t05_jmp + $01
C - - - - - 0x00CFFE 03:AFEE: 6C 18 00  JMP (ram_0018_t05_jmp)



tbl_AFF1:
- D 1 - - - 0x00D001 03:AFF1: F9 AF     .word ofs_014_AFF9_00
- D 1 - - - 0x00D003 03:AFF3: 12 B0     .word ofs_014_B012_01
- D 1 - - - 0x00D005 03:AFF5: B0 B0     .word ofs_014_B0B0_02
- D 1 - - - 0x00D007 03:AFF7: F0 B0     .word ofs_014_B0F0_03



ofs_014_AFF9_00:
C - - J - - 0x00D009 03:AFF9: A9 0D     LDA #$0D
C - - - - - 0x00D00B 03:AFFB: 9D 20 07  STA ram_0720_obj,X
C - - - - - 0x00D00E 03:AFFE: 20 DC 90  JSR sub_0x0090EC
C - - - - - 0x00D011 03:B001: C9 4D     CMP #$4D
C - - - - - 0x00D013 03:B003: F0 0A     BEQ bra_B00F
C - - - - - 0x00D015 03:B005: 20 B1 93  JSR sub_0x0093C1_06B2x_LSRx4_TAY
C - - - - - 0x00D018 03:B008: 9D B4 07  STA ram_07B4_unk,X
bra_B00B:
loc_B00B:
C D 1 - - - 0x00D01B 03:B00B: FE 78 07  INC ram_0778_unk,X
bra_B00E_RTS:
C - - - - - 0x00D01E 03:B00E: 60        RTS
bra_B00F:
C - - - - - 0x00D01F 03:B00F: 4C 17 9A  JMP loc_0x009A27



ofs_014_B012_01:
C - - J - - 0x00D022 03:B012: A5 9E     LDA ram_009E
C - - - - - 0x00D024 03:B014: F0 07     BEQ bra_B01D
C - - - - - 0x00D026 03:B016: 8A        TXA
C - - - - - 0x00D027 03:B017: C5 9E     CMP ram_009E
C - - - - - 0x00D029 03:B019: D0 F4     BNE bra_B00F
C - - - - - 0x00D02B 03:B01B: F0 0D     BEQ bra_B02A    ; jmp
bra_B01D:
C - - - - - 0x00D02D 03:B01D: 20 12 B1  JSR sub_B112
C - - - - - 0x00D030 03:B020: 20 55 9E  JSR sub_0x009E65
C - - - - - 0x00D033 03:B023: 90 40     BCC bra_B065
C - - - - - 0x00D035 03:B025: 20 77 9E  JSR sub_9E77
C - - - - - 0x00D038 03:B028: B0 3B     BCS bra_B065
bra_B02A:
C - - - - - 0x00D03A 03:B02A: 20 12 B1  JSR sub_B112
C - - - - - 0x00D03D 03:B02D: 20 65 9E  JSR sub_0x009E75
C - - - - - 0x00D040 03:B030: 90 33     BCC bra_B065
C - - - - - 0x00D042 03:B032: 20 7C B1  JSR sub_B17C
C - - - - - 0x00D045 03:B035: 90 2E     BCC bra_B065
C - - - - - 0x00D047 03:B037: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x00D04A 03:B03A: 18        CLC
C - - - - - 0x00D04B 03:B03B: 69 40     ADC #$40
C - - - - - 0x00D04D 03:B03D: C9 70     CMP #$70
C - - - - - 0x00D04F 03:B03F: 90 CD     BCC bra_B00E_RTS
C - - - - - 0x00D051 03:B041: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x00D054 03:B044: 18        CLC
C - - - - - 0x00D055 03:B045: 69 20     ADC #$20
C - - - - - 0x00D057 03:B047: C9 40     CMP #$40
C - - - - - 0x00D059 03:B049: 90 C3     BCC bra_B00E_RTS
C - - - - - 0x00D05B 03:B04B: 86 9E     STX ram_009E
C - - - - - 0x00D05D 03:B04D: A9 01     LDA #$01
C - - - - - 0x00D05F 03:B04F: 85 95     STA ram_0095_flag
C - - - - - 0x00D061 03:B051: BD BE 07  LDA ram_07BE_unk,X
C - - - - - 0x00D064 03:B054: 30 B8     BMI bra_B00E_RTS
C - - - - - 0x00D066 03:B056: A0 04     LDY #$04
C - - - - - 0x00D068 03:B058: 20 76 B1  JSR sub_B176
C - - - - - 0x00D06B 03:B05B: F0 02     BEQ bra_B05F
- - - - - - 0x00D06D 03:B05D: A0 08     LDY #$08
bra_B05F:
C - - - - - 0x00D06F 03:B05F: 98        TYA
C - - - - - 0x00D070 03:B060: 9D 9C 06  STA ram_069C_obj,X
C - - - - - 0x00D073 03:B063: D0 A6     BNE bra_B00B
bra_B065:
loc_B065:
C D 1 - - - 0x00D075 03:B065: 20 F4 B0  JSR sub_B0F4
sub_B068:
C - - - - - 0x00D078 03:B068: A0 00     LDY #$00
C - - - - - 0x00D07A 03:B06A: 20 6E B0  JSR sub_B06E
C - - - - - 0x00D07D 03:B06D: C8        INY ; 01
sub_B06E:
C - - - - - 0x00D07E 03:B06E: A5 9A     LDA ram_009A
C - - - - - 0x00D080 03:B070: 39 AE F5  AND tbl_0x01F5BE,Y
C - - - - - 0x00D083 03:B073: D0 99     BNE bra_B00E_RTS
C - - - - - 0x00D085 03:B075: BD 36 07  LDA ram_0736_obj,X
C - - - - - 0x00D088 03:B078: 39 AE F5  AND tbl_0x01F5BE,Y
C - - - - - 0x00D08B 03:B07B: D0 29     BNE bra_B0A6
C - - - - - 0x00D08D 03:B07D: B9 82 07  LDA ram_0782_unk,Y
C - - - - - 0x00D090 03:B080: F0 8C     BEQ bra_B00E_RTS
C - - - - - 0x00D092 03:B082: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x00D095 03:B085: 39 AE F5  AND tbl_0x01F5BE,Y
C - - - - - 0x00D098 03:B088: F0 0B     BEQ bra_B095
C - - - - - 0x00D09A 03:B08A: B9 C8 07  LDA ram_07C8_unk,Y
C - - - - - 0x00D09D 03:B08D: C9 7F     CMP #$7F
C - - - - - 0x00D09F 03:B08F: F0 15     BEQ bra_B0A6
C - - - - - 0x00D0A1 03:B091: C9 4F     CMP #$4F
C - - - - - 0x00D0A3 03:B093: F0 11     BEQ bra_B0A6
bra_B095:
C - - - - - 0x00D0A5 03:B095: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x00D0A8 03:B098: 19 AE F5  ORA tbl_0x01F5BE,Y
C - - - - - 0x00D0AB 03:B09B: 9D AA 07  STA ram_07AA_unk,X
C - - - - - 0x00D0AE 03:B09E: B9 00 06  LDA ram_0600_obj,Y
C - - - - - 0x00D0B1 03:B0A1: 29 FE     AND #$FE
C - - - - - 0x00D0B3 03:B0A3: 4C 33 B1  STA ram_0600_obj,Y
                                        RTS
bra_B0A6:
C - - - - - 0x00D0B6 03:B0A6: A5 9A     LDA ram_009A
C - - - - - 0x00D0B8 03:B0A8: 19 AE F5  ORA tbl_0x01F5BE,Y
C - - - - - 0x00D0BB 03:B0AB: 85 9A     STA ram_009A
C - - - - - 0x00D0BD 03:B0AD: 4C 2E B1  LDA ram_0600_obj,Y
                                        ORA #$01
                                        STA ram_0600_obj,Y
                                        RTS



sub_B112:
C - - - - - 0x00D122 03:B112: A0 00     LDY #$00
C - - - - - 0x00D124 03:B114: 20 18 B1  JSR sub_B118
C - - - - - 0x00D127 03:B117: C8        INY ; 01
sub_B118:
C - - - - - 0x00D128 03:B118: BD 36 07  LDA ram_0736_obj,X
C - - - - - 0x00D12B 03:B11B: 39 AE F5  AND tbl_0x01F5BE,Y
C - - - - - 0x00D12E 03:B11E: F0 16     BEQ bra_B136_RTS
C - - - - - 0x00D130 03:B120: B9 82 07  LDA ram_0782_unk,Y
C - - - - - 0x00D133 03:B123: F0 11     BEQ bra_B136_RTS
C - - - - - 0x00D135 03:B125: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x00D138 03:B128: 39 37 B1  AND tbl_B137,Y
C - - - - - 0x00D13B 03:B12B: 9D AA 07  STA ram_07AA_unk,X
C D 1 - - - 0x00D13E 03:B12E: B9 00 06  LDA ram_0600_obj,Y
C - - - - - 0x00D141 03:B131: 09 01     ORA #$01
C D 1 - - - 0x00D143 03:B133: 99 00 06  STA ram_0600_obj,Y
bra_B136_RTS:
C - - - - - 0x00D146 03:B136: 60        RTS



tbl_B137:
- D 1 - - - 0x00D147 03:B137: FE        .byte $FE   ; 00 
- - - - - - 0x00D148 03:B138: FD        .byte $FD   ; 01 



sub_B17C:
C - - - - - 0x00D18C 03:B17C: A0 00     LDY #$00
C - - - - - 0x00D18E 03:B17E: 20 84 B1  JSR sub_B184
C - - - - - 0x00D191 03:B181: 90 0E     BCC bra_B191_RTS
C - - - - - 0x00D193 03:B183: C8        INY ; 01
sub_B184:
C - - - - - 0x00D194 03:B184: B9 82 07  LDA ram_0782_unk,Y
C - - - - - 0x00D197 03:B187: F0 05     BEQ bra_B18E
C - - - - - 0x00D199 03:B189: B9 C8 07  LDA ram_07C8_unk,Y
C - - - - - 0x00D19C 03:B18C: D0 02     BNE bra_B190
bra_B18E:
C - - - - - 0x00D19E 03:B18E: 38        SEC
C - - - - - 0x00D19F 03:B18F: 60        RTS
bra_B190:
- - - - - - 0x00D1A0 03:B190: 18        CLC
bra_B191_RTS:
- - - - - - 0x00D1A1 03:B191: 60        RTS



sub_9E77:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x009E87 02:9E77: A0 00     LDY #$00
C - - - - - 0x009E89 02:9E79: BD 36 07  LDA ram_0736_obj,X
C - - - - - 0x009E8C 02:9E7C: 29 01     AND #$01
C - - - - - 0x009E8E 02:9E7E: F0 0C     BEQ bra_9E8C
C - - - - - 0x009E90 02:9E80: A9 10     LDA #$10    ; active flag
C - - - - - 0x009E92 02:9E82: 20 96 9E  JSR sub_9E96
C - - - - - 0x009E95 02:9E85: B0 47     BCS bra_9ECE
C - - - - - 0x009E97 02:9E87: 20 58 97  JSR sub_0x009768
C - - - - - 0x009E9A 02:9E8A: 90 46     BCC bra_9ED2_RTS
bra_9E8C:
- - - - - - 0x009E9C 02:9E8C: C8        INY
- - - - - - 0x009E9D 02:9E8D: BD 36 07  LDA ram_0736_obj,X
- - - - - - 0x009EA0 02:9E90: 29 02     AND #$02
- - - - - - 0x009EA2 02:9E92: F0 3A     BEQ bra_9ECE
- - - - - - 0x009EA4 02:9E94: A9 20     LDA #$20    ; cpu flag
sub_9E96:
; in
    ; A = 
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x009EA6 02:9E96: A2 03     LDX #$03
C - - - - - 0x009EA8 02:9E98: 85 00     STA ram_0000_t76
bra_9E9A_loop:
C - - - - - 0x009EAA 02:9E9A: B5 7F     LDA ram_player_stats,X
C - - - - - 0x009EAC 02:9E9C: 29 F0     AND #$F0
C - - - - - 0x009EAE 02:9E9E: C5 00     CMP ram_0000_t76
C - - - - - 0x009EB0 02:9EA0: F0 07     BEQ bra_9EA9_match
C - - - - - 0x009EB2 02:9EA2: CA        DEX
C - - - - - 0x009EB3 02:9EA3: 10 F5     BPL bra_9E9A_loop
; if no matches
- - - - - - 0x009EB5 02:9EA5: A6 53     LDX ram_0053
- - - - - - 0x009EB7 02:9EA7: 18        CLC
- - - - - - 0x009EB8 02:9EA8: 60        RTS
bra_9EA9_match:
C - - - - - 0x009EB9 02:9EA9: A6 53     LDX ram_0053
C - - - - - 0x009EBB 02:9EAB: BD B4 07  LDA ram_07B4_unk,X
C - - - - - 0x009EBE 02:9EAE: C9 04     CMP #$04
C - - - - - 0x009EC0 02:9EB0: 90 0F     BCC bra_9EC1
C - - - - - 0x009EC2 02:9EB2: B9 4E 06  LDA ram_obj_pos_X,Y
C - - - - - 0x009EC5 02:9EB5: 38        SEC
C - - - - - 0x009EC6 02:9EB6: FD 4E 06  SBC ram_obj_pos_X,X
C - - - - - 0x009EC9 02:9EB9: 30 04     BMI bra_9EBF
C - - - - - 0x009ECB 02:9EBB: C9 06     CMP #$06
C - - - - - 0x009ECD 02:9EBD: B0 0F     BCS bra_9ECE
bra_9EBF:
C - - - - - 0x009ECF 02:9EBF: 18        CLC
C - - - - - 0x009ED0 02:9EC0: 60        RTS
bra_9EC1:
- - - - - - 0x009ED1 02:9EC1: B9 68 06  LDA ram_obj_pos_Y,Y
- - - - - - 0x009ED4 02:9EC4: 38        SEC
- - - - - - 0x009ED5 02:9EC5: FD 68 06  SBC ram_obj_pos_Y,X
- - - - - - 0x009ED8 02:9EC8: 30 F5     BMI bra_9EBF
- - - - - - 0x009EDA 02:9ECA: C9 18     CMP #$18
- - - - - - 0x009EDC 02:9ECC: 90 04     BCC bra_9ED2_RTS
bra_9ECE:
C - - - - - 0x009EDE 02:9ECE: 20 68 B0  JSR sub_B068
C - - - - - 0x009EE1 02:9ED1: 38        SEC
bra_9ED2_RTS:
C - - - - - 0x009EE2 02:9ED2: 60        RTS



ofs_014_B0B0_02:
C - - J - - 0x00D0C0 03:B0B0: 20 76 B1  JSR sub_B176
C - - - - - 0x00D0C3 03:B0B3: D0 18     BNE bra_B0CD
C - - - - - 0x00D0C5 03:B0B5: 20 BA 93  JSR sub_0x0093CA
C - - - - - 0x00D0C8 03:B0B8: B0 42     BCS bra_B0FC_RTS
C - - - - - 0x00D0CA 03:B0BA: 20 B9 8F  JSR sub_0x008FC9
C - - - - - 0x00D0CD 03:B0BD: BC 9C 06  LDY ram_069C_obj,X
C - - - - - 0x00D0D0 03:B0C0: B9 0D B1  LDA tbl_B10E - $01,Y
C - - - - - 0x00D0D3 03:B0C3: 18        CLC
C - - - - - 0x00D0D4 03:B0C4: 65 02     ADC ram_0002_t18_array_index
C - - - - - 0x00D0D6 03:B0C6: 85 02     STA ram_0002_t18_array_index
C - - - - - 0x00D0D8 03:B0C8: A9 4D     LDA #$4D
C - - - - - 0x00D0DA 03:B0CA: 20 0E FC  JSR sub_0x01FC1E
bra_B0CD:
C - - - - - 0x00D0DD 03:B0CD: DE 9C 06  DEC ram_069C_obj,X
C - - - - - 0x00D0E0 03:B0D0: D0 64     BNE bra_B0EE_RTS
C - - - - - 0x00D0E2 03:B0D2: 20 76 B1  JSR sub_B176
C - - - - - 0x00D0E5 03:B0D5: F0 08     BEQ bra_B0DF
- - - - - - 0x00D0E7 03:B0D7: BD BE 07  LDA ram_07BE_unk,X
- - - - - - 0x00D0EA 03:B0DA: F0 03     BEQ bra_B0DF
- - - - - - 0x00D0EC 03:B0DC: DE BE 07  DEC ram_07BE_unk,X
bra_B0DF:
C - - - - - 0x00D0EF 03:B0DF: 20 92 B1  JSR sub_B192
C - - - - - 0x00D0F2 03:B0E2: 20 47 96  JSR sub_0x009657
C - - - - - 0x00D0F5 03:B0E5: BD D2 07  LDA ram_07D2_unk,X
C - - - - - 0x00D0F8 03:B0E8: 09 01     ORA #$01
C - - - - - 0x00D0FA 03:B0EA: 9D D2 07  STA ram_07D2_unk,X
C - - - - - 0x00D0FD 03:B0ED: 4C 0B B0  JMP loc_B00B
bra_B0EE_RTS:
                                        RTS



tbl_B10E:
- D 1 - - - 0x00D11E 03:B10E: 10        .byte $10   ; 01 
- D 1 - - - 0x00D11F 03:B10F: 00        .byte $00   ; 02 
- D 1 - - - 0x00D120 03:B110: F0        .byte $F0   ; 03 
- D 1 - - - 0x00D121 03:B111: E0        .byte $E0   ; 04 



sub_B176:
C - - - - - 0x00D186 03:B176: BD D2 07  LDA ram_07D2_unk,X
C - - - - - 0x00D189 03:B179: 29 01     AND #$01
C - - - - - 0x00D18B 03:B17B: 60        RTS



ofs_014_B0F0_03:
C - - J - - 0x00D100 03:B0F0: A5 95     LDA ram_0095_flag
C - - - - - 0x00D102 03:B0F2: D0 09     BNE bra_B0FD
sub_B0F4:
C - - - - - 0x00D104 03:B0F4: 20 F2 95  JSR sub_0x009602
C - - - - - 0x00D107 03:B0F7: A9 01     LDA #$01
C - - - - - 0x00D109 03:B0F9: 9D 78 07  STA ram_0778_unk,X
bra_B0FC_RTS:
C - - - - - 0x00D10C 03:B0FC: 60        RTS
bra_B0FD:
C - - - - - 0x00D10D 03:B0FD: 20 65 9E  JSR sub_0x009E75
C - - - - - 0x00D110 03:B100: 90 09     BCC bra_B10B
C - - - - - 0x00D112 03:B102: 20 05 9E  JSR sub_0x009E15
C - - - - - 0x00D115 03:B105: 20 92 B1  JSR sub_B192
C - - - - - 0x00D118 03:B108: 4C 1E 96  JMP loc_0x00962E
bra_B10B:
C - - - - - 0x00D11B 03:B10B: 4C 65 B0  JMP loc_B065



sub_B192:
C - - - - - 0x00D1A2 03:B192: BC B4 07  LDY ram_07B4_unk,X
C - - - - - 0x00D1A5 03:B195: B9 A2 B1  LDA tbl_B1A2,Y
C - - - - - 0x00D1A8 03:B198: 85 00     STA ram_0000_t08_data
C - - - - - 0x00D1AA 03:B19A: B9 A3 B1  LDA tbl_B1A2 + $01,Y
C - - - - - 0x00D1AD 03:B19D: 85 01     STA ram_0000_t08_data + $01
C - - - - - 0x00D1AF 03:B19F: 4C 62 96  JMP loc_0x009672



tbl_B1A2:
- - - - - - 0x00D1B2 03:B1A2: AA B1     .word off_B1AA_00
- - - - - - 0x00D1B4 03:B1A4: BA B1     .word off_B1BA_02
- - - - - - 0x00D1B6 03:B1A6: BA B1     .word off_B1BA_04
- D 1 - - - 0x00D1B8 03:B1A8: BA B1     .word off_B1BA_06



off_B1AA_00:
;                                              +-------------------- 
;                                              |    +--------------- 
;                                              |    |    +---------- 
;                                              |    |    |    +----- 
;                                              |    |    |    |
- - - - - - 0x00D1BA 03:B1AA: 00        .byte $00, $00, $C3, $01   ; 00 
- - - - - - 0x00D1BE 03:B1AE: 88        .byte $88, $81, $E3, $02   ; 01 
- - - - - - 0x00D1C2 03:B1B2: CB        .byte $CB, $00, $C3, $03   ; 02 
- - - - - - 0x00D1C6 03:B1B6: 7F        .byte $7F, $80, $00, $FF   ; 03 



off_B1BA_02:
off_B1BA_04:
off_B1BA_06:
;                                              +-------------------- 
;                                              |    +--------------- 
;                                              |    |    +---------- 
;                                              |    |    |    +----- 
;                                              |    |    |    |
- D 1 - I - 0x00D1CA 03:B1BA: 00        .byte $00, $00, $A3, $01   ; 00 
- D 1 - I - 0x00D1CE 03:B1BE: 7B        .byte $7B, $00, $C3, $02   ; 01 
- D 1 - I - 0x00D1D2 03:B1C2: 88        .byte $88, $81, $E3, $03   ; 02 
- D 1 - I - 0x00D1D6 03:B1C6: CB        .byte $CB, $00, $C3, $04   ; 03 
- D 1 - I - 0x00D1DA 03:B1CA: 7F        .byte $7F, $80, $00, $FF   ; 04 



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_016_0x005F95_0E:
C - - J - - 0x005F95 01:BF85: A9 00     LDA #$00
C - - - - - 0x005F97 01:BF87: 9D 20 07  STA ram_0720_obj,X
C - - - - - 0x005F9A 01:BF8A: A5 23     LDA ram_frm_cnt
C - - - - - 0x005F9C 01:BF8C: 29 3F     AND #$3F
C - - - - - 0x005F9E 01:BF8E: D0 55     BNE bra_BFE5
- - - - - - 0x005FA0 01:BF90: BD D2 07  LDA ram_07D2_unk,X
- - - - - - 0x005FA3 01:BF93: FE D2 07  INC ram_07D2_unk,X
- - - - - - 0x005FA6 01:BF96: 29 03     AND #$03
- - - - - - 0x005FA8 01:BF98: A8        TAY
- - - - - - 0x005FA9 01:BF99: B9 F6 BF  LDA tbl_BFF6_index,Y
- - - - - - 0x005FAC 01:BF9C: 30 47     BMI bra_BFE5
- - - - - - 0x005FAE 01:BF9E: A8        TAY
- - - - - - 0x005FAF 01:BF9F: B9 F0 BF  LDA tbl_BFF0,Y
- - - - - - 0x005FB2 01:BFA2: 85 00     STA ram_0000_t39
- - - - - - 0x005FB4 01:BFA4: B9 F3 BF  LDA tbl_BFF3,Y
- - - - - - 0x005FB7 01:BFA7: 85 01     STA ram_0001_t01
- - - - - - 0x005FB9 01:BFA9: A0 12     LDY #$12
- - - - - - 0x005FBB 01:BFAB: B9 82 06  LDA ram_0682_obj,Y
- - - - - - 0x005FBE 01:BFAE: D0 35     BNE bra_BFE5
- - - - - - 0x005FC0 01:BFB0: A9 A1     LDA #$A1
- - - - - - 0x005FC2 01:BFB2: 9D A0 07  STA ram_07A0_unk,X
- - - - - - 0x005FC5 01:BFB5: 20 A1 84  JSR sub_0x0084B1
- - - - - - 0x005FC8 01:BFB8: A9 40     LDA #$40
- - - - - - 0x005FCA 01:BFBA: 99 B2 06  STA ram_06B2_obj,Y
- - - - - - 0x005FCD 01:BFBD: BD 4E 06  LDA ram_obj_pos_X,X
- - - - - - 0x005FD0 01:BFC0: 18        CLC
- - - - - - 0x005FD1 01:BFC1: 65 00     ADC ram_0000_t39
- - - - - - 0x005FD3 01:BFC3: 99 4E 06  STA ram_obj_pos_X,Y
- - - - - - 0x005FD6 01:BFC6: 6A        ROR
- - - - - - 0x005FD7 01:BFC7: 45 00     EOR ram_0000_t39
- - - - - - 0x005FD9 01:BFC9: 2A        ROL
- - - - - - 0x005FDA 01:BFCA: B0 1C     BCS bra_BFE8
- - - - - - 0x005FDC 01:BFCC: BD 68 06  LDA ram_obj_pos_Y,X
- - - - - - 0x005FDF 01:BFCF: 18        CLC
- - - - - - 0x005FE0 01:BFD0: 65 01     ADC ram_0001_t01
- - - - - - 0x005FE2 01:BFD2: 99 68 06  STA ram_obj_pos_Y,Y
- - - - - - 0x005FE5 01:BFD5: 6A        ROR
- - - - - - 0x005FE6 01:BFD6: 45 01     EOR ram_0001_t01
- - - - - - 0x005FE8 01:BFD8: 2A        ROL
- - - - - - 0x005FE9 01:BFD9: B0 0D     BCS bra_BFE8
- - - - - - 0x005FEB 01:BFDB: A9 06     LDA #$06
- - - - - - 0x005FED 01:BFDD: 99 20 07  STA ram_0720_obj,Y
- - - - - - 0x005FF0 01:BFE0: A9 32     LDA #con_music_32
- - - - - - 0x005FF2 01:BFE2: 20 D8 95  JSR sub_0x0095E8_play_music
bra_BFE5:
C - - - - - 0x005FF5 01:BFE5: 4C 10 8E  JMP loc_0x008E20
bra_BFE8:
- - - - - - 0x005FF8 01:BFE8: 98        TYA
- - - - - - 0x005FF9 01:BFE9: AA        TAX
- - - - - - 0x005FFA 01:BFEA: 20 52 9A  JSR sub_0x009A62
- - - - - - 0x005FFD 01:BFED: A6 53     LDX ram_0053
- - - - - - 0x005FFF 01:BFEF: 60        RTS



tbl_BFF6_index:
- - - - - - 0x006006 01:BFF6: 00        .byte $00   ; 00 
- - - - - - 0x006007 01:BFF7: 01        .byte $01   ; 01 
- - - - - - 0x006008 01:BFF8: 02        .byte $02   ; 02 
- - - - - - 0x006009 01:BFF9: FF        .byte $FF   ; 03 



tbl_BFF0:
- - - - - - 0x006000 01:BFF0: ED        .byte $ED   ; 00 
- - - - - - 0x006001 01:BFF1: ED        .byte $ED   ; 01 
- - - - - - 0x006002 01:BFF2: 0D        .byte $0D   ; 02 



tbl_BFF3:
- - - - - - 0x006003 01:BFF3: FB        .byte $FB   ; 00 
- - - - - - 0x006004 01:BFF4: 1A        .byte $1A   ; 01 
- - - - - - 0x006005 01:BFF5: 1A        .byte $1A   ; 02 



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_016_0x008E59_0F:
C - - J - - 0x008E59 02:8E49: 20 A4 B2  JSR sub_B2A4
C - - - - - 0x008E5C 02:8E4C: 4C 10 8E  JMP loc_0x008E20



sub_B2A4:
C - - - - - 0x00B2B4 02:B2A4: A5 CF     LDA ram_00CF_flag
C - - - - - 0x00B2B6 02:B2A6: F0 47     BEQ bra_B2EF_RTS
C - - - - - 0x00B2B8 02:B2A8: A5 63     LDA ram_0063_hi
C - - - - - 0x00B2BA 02:B2AA: C9 04     CMP #$04
C - - - - - 0x00B2BC 02:B2AC: 90 23     BCC bra_B2D1
C - - - - - 0x00B2BE 02:B2AE: 20 C1 F6  JSR sub_0x01F6D1
C - - - - - 0x00B2C1 02:B2B1: A4 39     LDY ram_buffer_index_2
C - - - - - 0x00B2C3 02:B2B3: C0 20     CPY #$20
C - - - - - 0x00B2C5 02:B2B5: B0 38     BCS bra_B2EF_RTS
C - - - - - 0x00B2C7 02:B2B7: BD B4 07  LDA ram_07B4_unk,X
C - - - - - 0x00B2CA 02:B2BA: F0 1B     BEQ bra_B2D7
C - - - - - 0x00B2CC 02:B2BC: C9 03     CMP #$03
C - - - - - 0x00B2CE 02:B2BE: 90 2C     BCC bra_B2EC
C - - - - - 0x00B2D0 02:B2C0: A0 00     LDY #$00
C - - - - - 0x00B2D2 02:B2C2: A9 1B     LDA #< $2D1B
C - - - - - 0x00B2D4 02:B2C4: 20 F0 B2  JSR sub_B2F0
C - - - - - 0x00B2D7 02:B2C7: FE AA 07  INC ram_07AA_unk,X
C - - - - - 0x00B2DA 02:B2CA: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x00B2DD 02:B2CD: C9 05     CMP #$05
C - - - - - 0x00B2DF 02:B2CF: D0 1B     BNE bra_B2EC
bra_B2D1:
C - - - - - 0x00B2E1 02:B2D1: 20 17 9A  JSR sub_0x009A27
; A = 00
C - - - - - 0x00B2E4 02:B2D4: 85 CF     STA ram_00CF_flag
C - - - - - 0x00B2E6 02:B2D6: 60        RTS
bra_B2D7:
C - - - - - 0x00B2E7 02:B2D7: A0 06     LDY #$06
C - - - - - 0x00B2E9 02:B2D9: A9 15     LDA #< $2D15
C - - - - - 0x00B2EB 02:B2DB: 20 F0 B2  JSR sub_B2F0
C - - - - - 0x00B2EE 02:B2DE: BC AA 07  LDY ram_07AA_unk,X
C - - - - - 0x00B2F1 02:B2E1: 88        DEY
C - - - - - 0x00B2F2 02:B2E2: D0 03     BNE bra_B2E7
C - - - - - 0x00B2F4 02:B2E4: 20 38 B3  JSR sub_B338
bra_B2E7:
C - - - - - 0x00B2F7 02:B2E7: A9 04     LDA #$04
C - - - - - 0x00B2F9 02:B2E9: 9D B4 07  STA ram_07B4_unk,X
bra_B2EC:
C - - - - - 0x00B2FC 02:B2EC: DE B4 07  DEC ram_07B4_unk,X
bra_B2EF_RTS:
C - - - - - 0x00B2FF 02:B2EF: 60        RTS



sub_B338:
bra_B338_loop:
C - - - - - 0x00B348 02:B338: B9 4E 06  LDA ram_obj_pos_X,Y
C - - - - - 0x00B34B 02:B33B: 18        CLC
C - - - - - 0x00B34C 02:B33C: 65 61     ADC ram_0061_lo
C - - - - - 0x00B34E 02:B33E: 85 00     STA ram_0000_t2A
C - - - - - 0x00B350 02:B340: A5 60     LDA ram_0060_hi
C - - - - - 0x00B352 02:B342: 69 00     ADC #$00
C - - - - - 0x00B354 02:B344: C9 02     CMP #$02
C - - - - - 0x00B356 02:B346: D0 2C     BNE bra_B374
C - - - - - 0x00B358 02:B348: A5 00     LDA ram_0000_t2A
C - - - - - 0x00B35A 02:B34A: C9 A8     CMP #$A8
C - - - - - 0x00B35C 02:B34C: 90 26     BCC bra_B374
C - - - - - 0x00B35E 02:B34E: C9 C0     CMP #$C0
C - - - - - 0x00B360 02:B350: B0 22     BCS bra_B374
C - - - - - 0x00B362 02:B352: B9 68 06  LDA ram_obj_pos_Y,Y
C - - - - - 0x00B365 02:B355: 18        CLC
C - - - - - 0x00B366 02:B356: 65 64     ADC ram_0064_lo
C - - - - - 0x00B368 02:B358: 85 00     STA ram_0000_t2B
C - - - - - 0x00B36A 02:B35A: A5 63     LDA ram_0063_hi
C - - - - - 0x00B36C 02:B35C: 69 00     ADC #$00
C - - - - - 0x00B36E 02:B35E: C9 04     CMP #$04
C - - - - - 0x00B370 02:B360: D0 12     BNE bra_B374
C - - - - - 0x00B372 02:B362: A5 00     LDA ram_0000_t2B
C - - - - - 0x00B374 02:B364: C9 EC     CMP #$EC
C - - - - - 0x00B376 02:B366: 90 0C     BCC bra_B374
C - - - - - 0x00B378 02:B368: B9 AA 07  LDA ram_07AA_unk,Y
C - - - - - 0x00B37B 02:B36B: 29 40     AND #$40
C - - - - - 0x00B37D 02:B36D: D0 05     BNE bra_B374
C - - - - - 0x00B37F 02:B36F: A9 03     LDA #$03
C - - - - - 0x00B381 02:B371: 99 CD 00  STA ram_00CD,Y
bra_B374:
C - - - - - 0x00B384 02:B374: C8        INY
C - - - - - 0x00B385 02:B375: C0 02     CPY #$02
C - - - - - 0x00B387 02:B377: 90 BF     BCC bra_B338_loop
C - - - - - 0x00B389 02:B379: 60        RTS



sub_B2F0:
; in
    ; A = ppu address lo (15/1B)
    ; Y = data offset (00/06)
; A = 1B, Y = 00
; A = 15, Y = 06
C - - - - - 0x00B300 02:B2F0: 84 00     STY ram_0000_t86
C - - - - - 0x00B302 02:B2F2: 85 06     STA ram_0006_t05_ppu_addr_lo
C - - - - - 0x00B304 02:B2F4: A9 2D     LDA #$2D
C - - - - - 0x00B306 02:B2F6: 85 07     STA ram_0007_t01_ppu_addr_hi
C - - - - - 0x00B308 02:B2F8: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x00B30B 02:B2FB: C9 D0     CMP #$D0
C - - - - - 0x00B30D 02:B2FD: B0 27     BCS bra_B326_RTS
C - - - - - 0x00B30F 02:B2FF: BC AA 07  LDY ram_07AA_unk,X
C - - - - - 0x00B312 02:B302: B9 27 B3  LDA tbl_B327,Y
C - - - - - 0x00B315 02:B305: 0A        ASL
C - - - - - 0x00B316 02:B306: 18        CLC
C - - - - - 0x00B317 02:B307: 65 00     ADC ram_0000_t86
C - - - - - 0x00B319 02:B309: A8        TAY
C - - - - - 0x00B31A 02:B30A: B9 2C B3  LDA tbl_B32C,Y
C - - - - - 0x00B31D 02:B30D: 85 02     STA ram_0002_t02_ppu_data
C - - - - - 0x00B31F 02:B30F: B9 2D B3  LDA tbl_B32C + $01,Y
C - - - - - 0x00B322 02:B312: 85 03     STA ram_0002_t02_ppu_data + $01
C - - - - - 0x00B324 02:B314: A9 06     LDA #con_DA9D_06
C - - - - - 0x00B326 02:B316: 85 1F     STA ram_001F_t01
C - - - - - 0x00B328 02:B318: A9 01     LDA #$01
C - - - - - 0x00B32A 02:B31A: 8D 56 03  STA ram_0356_flag
C - - - - - 0x00B32D 02:B31D: 8A        TXA
C - - - - - 0x00B32E 02:B31E: 48        PHA
C - - - - - 0x00B331 02:B321: 20 B3 F3  JSR sub_0x01DA7B
C - - - - - 0x00B334 02:B324: 68        PLA
C - - - - - 0x00B335 02:B325: AA        TAX
bra_B326_RTS:
C - - - - - 0x00B336 02:B326: 60        RTS



tbl_B327:
- D 1 - - - 0x00B337 02:B327: 00        .byte $00   ; 00 
- D 1 - - - 0x00B338 02:B328: 01        .byte $01   ; 01 
- D 1 - - - 0x00B339 02:B329: 02        .byte $02   ; 02 
- D 1 - - - 0x00B33A 02:B32A: 01        .byte $01   ; 03 
- D 1 - - - 0x00B33B 02:B32B: 00        .byte $00   ; 04 



tbl_B32C:
; 00 
- D 1 - - - 0x00B33C 02:B32C: 36 A9     .word _off022_0x016946_00
- D 1 - - - 0x00B33E 02:B32E: 48 A9     .word _off022_0x016958_01
- D 1 - - - 0x00B340 02:B330: 5A A9     .word _off022_0x01696A_02
; 06 
- D 1 - - - 0x00B342 02:B332: 90 A9     .word _off022_0x0169A0_03
- D 1 - - - 0x00B344 02:B334: 7E A9     .word _off022_0x01698E_04
- D 1 - - - 0x00B346 02:B336: 6C A9     .word _off022_0x01697C_05



_off022_0x016946_00:
- D 1 - I - 0x016946 05:A936: 04        .byte $04   ; size X
- D 1 - I - 0x016947 05:A937: 04        .byte $04   ; size Y
- D 1 - I - 0x016948 05:A938: 4C        .byte $4C, $86, $86, $86   ; 01 
- D 1 - I - 0x01694C 05:A93C: 4C        .byte $4C, $85, $85, $85   ; 02 
- D 1 - I - 0x016950 05:A940: 00        .byte $00, $00, $00, $00   ; 03 
- D 1 - I - 0x016954 05:A944: 00        .byte $00, $00, $00, $00   ; 04 



_off022_0x016958_01:
- D 1 - I - 0x016958 05:A948: 04        .byte $04   ; size X
- D 1 - I - 0x016959 05:A949: 04        .byte $04   ; size Y
- D 1 - I - 0x01695A 05:A94A: 00        .byte $00, $00, $00, $00   ; 01 
- D 1 - I - 0x01695E 05:A94E: 4C        .byte $4C, $86, $86, $86   ; 02 
- D 1 - I - 0x016962 05:A952: 4C        .byte $4C, $85, $85, $85   ; 03 
- D 1 - I - 0x016966 05:A956: 00        .byte $00, $00, $00, $00   ; 04 



_off022_0x01696A_02:
- D 1 - I - 0x01696A 05:A95A: 04        .byte $04   ; size X
- D 1 - I - 0x01696B 05:A95B: 04        .byte $04   ; size Y
- D 1 - I - 0x01696C 05:A95C: 00        .byte $00, $00, $00, $00   ; 01 
- D 1 - I - 0x016970 05:A960: 00        .byte $00, $00, $00, $00   ; 02 
- D 1 - I - 0x016974 05:A964: 4C        .byte $4C, $86, $86, $86   ; 03 
- D 1 - I - 0x016978 05:A968: 4C        .byte $4C, $85, $85, $85   ; 04 



_off022_0x01697C_05:
- D 1 - I - 0x01697C 05:A96C: 04        .byte $04   ; size X
- D 1 - I - 0x01697D 05:A96D: 04        .byte $04   ; size Y
- D 1 - I - 0x01697E 05:A96E: 86        .byte $86, $86, $86, $4C   ; 01 
- D 1 - I - 0x016982 05:A972: 85        .byte $85, $85, $85, $4C   ; 02 
- D 1 - I - 0x016986 05:A976: 00        .byte $00, $00, $00, $00   ; 03 
- D 1 - I - 0x01698A 05:A97A: 00        .byte $00, $00, $00, $00   ; 04 



_off022_0x01698E_04:
- D 1 - I - 0x01698E 05:A97E: 04        .byte $04   ; size X
- D 1 - I - 0x01698F 05:A97F: 04        .byte $04   ; size Y
- D 1 - I - 0x016990 05:A980: 00        .byte $00, $00, $00, $00   ; 01 
- D 1 - I - 0x016994 05:A984: 86        .byte $86, $86, $86, $4C   ; 02 
- D 1 - I - 0x016998 05:A988: 85        .byte $85, $85, $85, $4C   ; 03 
- D 1 - I - 0x01699C 05:A98C: 00        .byte $00, $00, $00, $00   ; 04 



_off022_0x0169A0_03:
- D 1 - I - 0x0169A0 05:A990: 04        .byte $04   ; size X
- D 1 - I - 0x0169A1 05:A991: 04        .byte $04   ; size Y
- D 1 - I - 0x0169A2 05:A992: 00        .byte $00, $00, $00, $00   ; 01 
- D 1 - I - 0x0169A6 05:A996: 00        .byte $00, $00, $00, $00   ; 02 
- D 1 - I - 0x0169AA 05:A99A: 86        .byte $86, $86, $86, $4C   ; 03 
- D 1 - I - 0x0169AE 05:A99E: 85        .byte $85, $85, $85, $4C   ; 04 



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_016_0x00CF31_10:
C - - J - - 0x00CF31 03:AF21: 20 27 AF  JSR sub_AF27
C - - - - - 0x00CF34 03:AF24: 4C B6 81  JMP loc_0x0081C6



sub_AF27:
C - - - - - 0x00CF37 03:AF27: BD 78 07  LDA ram_0778_unk,X
C - - - - - 0x00CF3A 03:AF2A: F0 62     BEQ bra_AF8E
C - - - - - 0x00CF3C 03:AF2C: BD 82 07  LDA ram_0782_unk,X
C - - - - - 0x00CF3F 03:AF2F: C9 AA     CMP #$AA
C - - - - - 0x00CF41 03:AF31: D0 36     BNE bra_AF69
C - - - - - 0x00CF43 03:AF33: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x00CF46 03:AF36: 30 0D     BMI bra_AF45
C - - - - - 0x00CF48 03:AF38: 09 80     ORA #$80
C - - - - - 0x00CF4A 03:AF3A: 9D AA 07  STA ram_07AA_unk,X
C - - - - - 0x00CF4D 03:AF3D: A9 4F     LDA #$4F
C - - - - - 0x00CF4F 03:AF3F: 38        SEC
C - - - - - 0x00CF50 03:AF40: E5 61     SBC ram_0061_lo
C - - - - - 0x00CF52 03:AF42: 9D 4E 06  STA ram_obj_pos_X,X
bra_AF45:
C - - - - - 0x00CF55 03:AF45: 20 72 91  JSR sub_0x009182_06B2x_AND_0F
C - - - - - 0x00CF58 03:AF48: F0 0F     BEQ bra_AF59
C - - - - - 0x00CF5A 03:AF4A: FE C8 07  INC ram_07C8_unk,X
C - - - - - 0x00CF5D 03:AF4D: BD C8 07  LDA ram_07C8_unk,X
C - - - - - 0x00CF60 03:AF50: 29 03     AND #$03
C - - - - - 0x00CF62 03:AF52: F0 05     BEQ bra_AF59
C - - - - - 0x00CF64 03:AF54: A9 08     LDA #con_music_08
C - - - - - 0x00CF66 03:AF56: 20 D8 95  JSR sub_0x0095E8_play_music
bra_AF59:
C - - - - - 0x00CF69 03:AF59: BD 0A 07  LDA ram_070A_obj,X
C - - - - - 0x00CF6C 03:AF5C: D0 0B     BNE bra_AF69
C - - - - - 0x00CF6E 03:AF5E: BD BE 07  LDA ram_07BE_unk,X
C - - - - - 0x00CF71 03:AF61: C9 FE     CMP #$FE
C - - - - - 0x00CF73 03:AF63: D0 04     BNE bra_AF69
C - - - - - 0x00CF75 03:AF65: A9 05     LDA #$05
C - - - - - 0x00CF77 03:AF67: D0 1C     BNE bra_AF85    ; jmp
bra_AF69:
C - - - - - 0x00CF79 03:AF69: BD BE 07  LDA ram_07BE_unk,X
C - - - - - 0x00CF7C 03:AF6C: 30 2B     BMI bra_AF99_RTS
C - - - - - 0x00CF7E 03:AF6E: BD 78 07  LDA ram_0778_unk,X
C - - - - - 0x00CF81 03:AF71: C9 83     CMP #$83
C - - - - - 0x00CF83 03:AF73: F0 24     BEQ bra_AF99_RTS
C - - - - - 0x00CF85 03:AF75: C9 04     CMP #$04
C - - - - - 0x00CF87 03:AF77: F0 0F     BEQ bra_AF88
C - - - - - 0x00CF89 03:AF79: 20 55 9E  JSR sub_0x009E65
C - - - - - 0x00CF8C 03:AF7C: 90 1F     BCC bra_AF9D
C - - - - - 0x00CF8E 03:AF7E: 20 72 91  JSR sub_0x009182_06B2x_AND_0F
C - - - - - 0x00CF91 03:AF81: D0 17     BNE bra_AF9A
C - - - - - 0x00CF93 03:AF83: A9 03     LDA #$03
bra_AF85:
C - - - - - 0x00CF95 03:AF85: 4C 13 8C  STA ram_0778_unk,X
                                        SEC
                                        RTS
bra_AF88:
C - - - - - 0x00CF98 03:AF88: 20 A3 AF  JSR sub_AFA3
C - - - - - 0x00CF9B 03:AF8B: 4C 47 96  JMP loc_0x009657
bra_AF8E:
C - - - - - 0x00CF9E 03:AF8E: 20 B1 93  JSR sub_0x0093C1_06B2x_LSRx4_TAY
C - - - - - 0x00CFA1 03:AF91: 9D AA 07  STA ram_07AA_unk,X
C - - - - - 0x00CFA4 03:AF94: A9 0E     LDA #$0E
C - - - - - 0x00CFA6 03:AF96: 9D 20 07  STA ram_0720_obj,X
bra_AF99_RTS:
C - - - - - 0x00CFA9 03:AF99: 60        RTS
bra_AF9A:
C - - - - - 0x00CFAA 03:AF9A: 20 05 9E  JSR sub_0x009E15
bra_AF9D:
C - - - - - 0x00CFAD 03:AF9D: 20 A3 AF  JSR sub_AFA3
C - - - - - 0x00CFB0 03:AFA0: 4C 1E 96  JMP loc_0x00962E



sub_AFA3:
C - - - - - 0x00CFB3 03:AFA3: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x00CFB6 03:AFA6: 0A        ASL
C - - - - - 0x00CFB7 03:AFA7: A8        TAY
C - - - - - 0x00CFB8 03:AFA8: B9 B5 AF  LDA tbl_AFB5,Y
C - - - - - 0x00CFBB 03:AFAB: 85 00     STA ram_0000_t08_data
C - - - - - 0x00CFBD 03:AFAD: B9 B6 AF  LDA tbl_AFB5 + $01,Y
C - - - - - 0x00CFC0 03:AFB0: 85 01     STA ram_0000_t08_data + $01
C - - - - - 0x00CFC2 03:AFB2: 4C 62 96  JMP loc_0x009672



tbl_AFB5:
- D 1 - - - 0x00CFC5 03:AFB5: BB AF     .word off_AFBB_00
- D 1 - - - 0x00CFC7 03:AFB7: C3 AF     .word off_AFC3_01
- D 1 - - - 0x00CFC9 03:AFB9: CB AF     .word off_AFCB_02



off_AFBB_00:
;                                              +-------------------- 
;                                              |    +--------------- 
;                                              |    |    +---------- 
;                                              |    |    |    +----- 
;                                              |    |    |    |
- D 1 - I - 0x00CFCB 03:AFBB: 48        .byte $48, $86, $C1, $01   ; 00 
- D 1 - I - 0x00CFCF 03:AFBF: 25        .byte $25, $85, $00, $FE   ; 01 



off_AFC3_01:
;                                              +-------------------- 
;                                              |    +--------------- 
;                                              |    |    +---------- 
;                                              |    |    |    +----- 
;                                              |    |    |    |
- D 1 - I - 0x00CFD3 03:AFC3: 08        .byte $08, $03, $81, $01   ; 00 
- D 1 - I - 0x00CFD7 03:AFC7: C0        .byte $C0, $02, $01, $00   ; 01 



off_AFCB_02:
;                                              +-------------------- 
;                                              |    +--------------- 
;                                              |    |    +---------- 
;                                              |    |    |    +----- 
;                                              |    |    |    |
- D 1 - I - 0x00CFDB 03:AFCB: 79        .byte $79, $85, $C1, $01   ; 00 
- D 1 - I - 0x00CFDF 03:AFCF: D6        .byte $D6, $84, $00, $FE   ; 01 



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_016_0x00E065_11:
C - - J - - 0x00E065 03:A055: A9 06     LDA #$06
C - - - - - 0x00E067 03:A057: 9D C8 07  STA ram_07C8_unk,X
C - - - - - 0x00E06A 03:A05A: A0 0A     LDY #$0A
C - - - - - 0x00E06C 03:A05C: D0 AA     JMP loc_0x00E018



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_016_0x005E85_12:
C - - J - - 0x005E85 01:BE75: 20 7B BE  JSR sub_BE7B
C - - - - - 0x005E88 01:BE78: 4C B6 81  JMP loc_0x0081C6



sub_BE7B:
C - - - - - 0x005E8B 01:BE7B: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x005E8E 01:BE7E: C9 E0     CMP #$E0
C - - - - - 0x005E90 01:BE80: 90 08     BCC bra_BE8A
C - - - - - 0x005E92 01:BE82: 20 47 9A  JSR sub_0x009A57
C - - - - - 0x005E95 01:BE85: A9 01     LDA #$01
C - - - - - 0x005E97 01:BE87: 9D 78 07  STA ram_0778_unk,X
bra_BE8A:
C - - - - - 0x005E9A 01:BE8A: BD 78 07  LDA ram_0778_unk,X
C - - - - - 0x005E9D 01:BE8D: 29 7F     AND #$7F
C - - - - - 0x005E9F 01:BE8F: C9 03     CMP #$03
C - - - - - 0x005EA1 01:BE91: 90 1C     BCC bra_BEAF
C - - - - - 0x005EA3 01:BE93: 20 81 8D  JSR sub_0x008D91
C - - - - - 0x005EA6 01:BE96: B0 D0     BCS bra_BECA
C - - - - - 0x005EA8 01:BE98: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x005EAB 01:BE9B: C9 10     CMP #$10
C - - - - - 0x005EAD 01:BE9D: 90 10     BCC bra_BEAF
C - - - - - 0x005EAF 01:BE9F: A9 00     LDA #$00
C - - - - - 0x005EB1 01:BEA1: A0 F0     LDY #$F0
C - - - - - 0x005EB3 01:BEA3: 20 BC 8F  JSR sub_0x008FCC
C - - - - - 0x005EB6 01:BEA6: A5 00     LDA ram_0000_t42
C - - - - - 0x005EB8 01:BEA8: 38        SEC
C - - - - - 0x005EB9 01:BEA9: E9 EC     SBC #$EC
C - - - - - 0x005EBB 01:BEAB: C9 02     CMP #$02
C - - - - - 0x005EBD 01:BEAD: B0 B9     BCS bra_BECA
bra_BEAF:
C - - - - - 0x005EBF 01:BEAF: 20 2E 94  JSR sub_0x00943E
C - - - - - 0x005EC2 01:BEB2: 9D B4 07  STA ram_07B4_unk,X
C - - - - - 0x005EC5 01:BEB5: A9 40     LDA #$40
C - - - - - 0x005EC7 01:BEB7: A0 40     LDY #$40
C - - - - - 0x005EC9 01:BEB9: 20 0D 95  JSR sub_0x00951D
C - - - - - 0x005ECC 01:BEBC: B0 0E     BCS bra_BECC_RTS
C - - - - - 0x005ECE 01:BEBE: BD 78 07  LDA ram_0778_unk,X
C - - - - - 0x005ED1 01:BEC1: 29 7F     AND #$7F
C - - - - - 0x005ED3 01:BEC3: C9 01     CMP #$01
C - - - - - 0x005ED5 01:BEC5: D0 05     BNE bra_BECC_RTS
C - - - - - 0x005ED7 01:BEC7: A9 03     LDA #$03
C - - - - - 0x005ED9 01:BEC9: 9D 78 07  STA ram_0778_unk,X
bra_BECC_RTS:
C - - - - - 0x005EDC 01:BECC: 60        RTS
bra_BECA:
                                        JMP loc_0x009A27



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_016_0x005BA7_13:
C - - J - - 0x005BA7 01:BB97: 20 9D BB  JSR sub_BB9D
C - - - - - 0x005BAA 01:BB9A: 4C 10 8E  JMP loc_0x008E20



bra_BB78:
- - - - - - 0x005B88 01:BB78: A2 02     LDX #$02
bra_BB7A_loop:
- - - - - - 0x005B8A 01:BB7A: 20 83 91  LDA ram_0782_unk,X
                                        AND #$7F
- - - - - - 0x005B8D 01:BB7D: C9 30     CMP #$30
- - - - - - 0x005B8F 01:BB7F: D0 06     BNE bra_BB87
- - - - - - 0x005B91 01:BB81: 20 22 BC  JSR sub_BC22
- - - - - - 0x005B94 01:BB84: 20 8F BB  JSR sub_BB8F
bra_BB87:
- - - - - - 0x005B97 01:BB87: E8        INX
- - - - - - 0x005B98 01:BB88: E0 0A     CPX #$0A
- - - - - - 0x005B9A 01:BB8A: 90 EE     BCC bra_BB7A_loop
- - - - - - 0x005B9C 01:BB8C: A6 53     LDX ram_0053
- - - - - - 0x005B9E 01:BB8E: 60        RTS



sub_BB8F:
C - - - - - 0x005B9F 01:BB8F: A9 01     LDA #$01
C - - - - - 0x005BA1 01:BB91: 9D F4 06  STA ram_06F4_obj,X
C - - - - - 0x005BA4 01:BB94: 85 95     STA ram_0095_flag
C - - - - - 0x005BA6 01:BB96: 60        RTS



sub_BB9D:
C - - - - - 0x005BAD 01:BB9D: BD 78 07  LDA ram_0778_unk,X
C - - - - - 0x005BB0 01:BBA0: D0 16     BNE bra_BBB8
C - - - - - 0x005BB2 01:BBA2: 20 8F BB  JSR sub_BB8F
C - - - - - 0x005BB5 01:BBA5: 20 C8 90  JSR sub_0x0090D8_0600x_write_08
C - - - - - 0x005BB8 01:BBA8: A9 07     LDA #$07
C - - - - - 0x005BBA 01:BBAA: 9D 20 07  STA ram_0720_obj,X
C - - - - - 0x005BBD 01:BBAD: FE 78 07  INC ram_0778_unk,X
C - - - - - 0x005BC0 01:BBB0: 20 CA BC  JSR sub_BCCA
C - - - - - 0x005BC3 01:BBB3: F0 3D     BEQ bra_BBF2_RTS
bra_BBB5:
C - - - - - 0x005BC5 01:BBB5: 4C 17 9A  JMP loc_0x009A27
bra_BBB8:
C - - - - - 0x005BC8 01:BBB8: A5 95     LDA ram_0095_flag
C - - - - - 0x005BCA 01:BBBA: F0 BC     BEQ bra_BB78
C - - - - - 0x005BCC 01:BBBC: 20 CA BC  JSR sub_BCCA
C - - - - - 0x005BCF 01:BBBF: F0 32     BEQ bra_BBF3
C - - - - - 0x005BD1 01:BBC1: 20 D6 90  JSR sub_0x0090E6_0600x_AND_F0
C - - - - - 0x005BD4 01:BBC4: D0 EF     BNE bra_BBB5
C - - - - - 0x005BD6 01:BBC6: BD C8 07  LDA ram_07C8_unk,X
C - - - - - 0x005BD9 01:BBC9: F0 14     BEQ bra_BBDF
C - - - - - 0x005BDB 01:BBCB: 20 6B BC  JSR sub_BC6B
C - - - - - 0x005BDE 01:BBCE: BD D2 07  LDA ram_07D2_unk,X
C - - - - - 0x005BE1 01:BBD1: 18        CLC
C - - - - - 0x005BE2 01:BBD2: 69 09     ADC #$09
C - - - - - 0x005BE4 01:BBD4: 20 8D BC  JSR sub_BC8D
C - - - - - 0x005BE7 01:BBD7: 90 19     BCC bra_BBF2_RTS
C - - - - - 0x005BE9 01:BBD9: DE D2 07  DEC ram_07D2_unk,X
C - - - - - 0x005BEC 01:BBDC: F0 D7     BEQ bra_BBB5
C - - - - - 0x005BEE 01:BBDE: 60        RTS
bra_BBDF:
C - - - - - 0x005BEF 01:BBDF: A9 01     LDA #$01
C - - - - - 0x005BF1 01:BBE1: 9D C8 07  STA ram_07C8_unk,X
C - - - - - 0x005BF4 01:BBE4: BC AA 07  LDY ram_07AA_unk,X
C - - - - - 0x005BF7 01:BBE7: F0 06     BEQ bra_BBEF
C - - - - - 0x005BF9 01:BBE9: C0 10     CPY #$10
C - - - - - 0x005BFB 01:BBEB: B0 02     BCS bra_BBEF
C - - - - - 0x005BFD 01:BBED: A9 02     LDA #$02
bra_BBEF:
C - - - - - 0x005BFF 01:BBEF: 9D D2 07  STA ram_07D2_unk,X
bra_BBF2_RTS:
C - - - - - 0x005C02 01:BBF2: 60        RTS
bra_BBF3:
C - - - - - 0x005C03 01:BBF3: A5 26     LDA ram_buffer_index
C - - - - - 0x005C05 01:BBF5: D0 FB     BNE bra_BBF2_RTS
C - - - - - 0x005C07 01:BBF7: 20 D6 90  JSR sub_0x0090E6_0600x_AND_F0
C - - - - - 0x005C0A 01:BBFA: F0 2C     BEQ bra_BC28
C - - - - - 0x005C0C 01:BBFC: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x005C0F 01:BBFF: 18        CLC
C - - - - - 0x005C10 01:BC00: 69 20     ADC #$20
C - - - - - 0x005C12 01:BC02: C9 40     CMP #$40
C - - - - - 0x005C14 01:BC04: 90 22     BCC bra_BC28
- - - - - - 0x005C16 01:BC06: BD AA 07  LDA ram_07AA_unk,X
- - - - - - 0x005C19 01:BC09: F0 E7     BEQ bra_BBF2_RTS
- - - - - - 0x005C1B 01:BC0B: BD D2 07  LDA ram_07D2_unk,X
- - - - - - 0x005C1E 01:BC0E: 29 01     AND #$01
- - - - - - 0x005C20 01:BC10: 18        CLC
- - - - - - 0x005C21 01:BC11: 69 0B     ADC #$0B
- - - - - - 0x005C23 01:BC13: 20 8D BC  JSR sub_BC8D
- - - - - - 0x005C26 01:BC16: 90 DA     BCC bra_BBF2_RTS
- - - - - - 0x005C28 01:BC18: FE D2 07  INC ram_07D2_unk,X
- - - - - - 0x005C2B 01:BC1B: BD D2 07  LDA ram_07D2_unk,X
- - - - - - 0x005C2E 01:BC1E: C9 02     CMP #$02
- - - - - - 0x005C30 01:BC20: 90 D0     BCC bra_BBF2_RTS
bra_BC22:
sub_BC22:
C - - - - - 0x005C32 01:BC22: A9 00     LDA #$00
C - - - - - 0x005C34 01:BC24: 9D AA 07  STA ram_07AA_unk,X
bra_BC27_RTS:
C - - - - - 0x005C37 01:BC27: 60        RTS
bra_BC28:
C - - - - - 0x005C38 01:BC28: A9 00     LDA #$00
C - - - - - 0x005C3A 01:BC2A: 9D D2 07  STA ram_07D2_unk,X
C - - - - - 0x005C3D 01:BC2D: DE F4 06  DEC ram_06F4_obj,X
C - - - - - 0x005C40 01:BC30: D0 F5     BNE bra_BC27_RTS
C - - - - - 0x005C42 01:BC32: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x005C45 01:BC35: A8        TAY
C - - - - - 0x005C46 01:BC36: B9 D3 BC  LDA tbl_BCD3,Y
C - - - - - 0x005C49 01:BC39: A8        TAY
C - - - - - 0x005C4A 01:BC3A: A9 08     LDA #$08
C - - - - - 0x005C4C 01:BC3C: C0 80     CPY #$80
C - - - - - 0x005C4E 01:BC3E: B0 02     BCS bra_BC42
C - - - - - 0x005C50 01:BC40: A9 01     LDA #$01
bra_BC42:
C - - - - - 0x005C52 01:BC42: 9D F4 06  STA ram_06F4_obj,X
C - - - - - 0x005C55 01:BC45: 98        TYA
C - - - - - 0x005C56 01:BC46: 29 7F     AND #$7F
C - - - - - 0x005C58 01:BC48: A8        TAY
; * 08
C - - - - - 0x005C59 01:BC49: 0A        ASL
C - - - - - 0x005C5A 01:BC4A: 0A        ASL
C - - - - - 0x005C5B 01:BC4B: 0A        ASL
C - - - - - 0x005C5C 01:BC4C: 18        CLC
C - - - - - 0x005C5D 01:BC4D: 69 38     ADC #$38
C - - - - - 0x005C5F 01:BC4F: 9D 68 06  STA ram_obj_pos_Y,X
C - - - - - 0x005C62 01:BC52: 98        TYA
C - - - - - 0x005C63 01:BC53: 20 8D BC  JSR sub_BC8D
C - - - - - 0x005C66 01:BC56: 90 33     BCC bra_BC69
C - - - - - 0x005C68 01:BC58: FE AA 07  INC ram_07AA_unk,X
C - - - - - 0x005C6B 01:BC5B: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x005C6E 01:BC5E: C9 12     CMP #$12
C - - - - - 0x005C70 01:BC60: B0 C0     BCS bra_BC22
C - - - - - 0x005C72 01:BC62: C9 09     CMP #$09
C - - - - - 0x005C74 01:BC64: D0 C1     BNE bra_BC27_RTS
C - - - - - 0x005C76 01:BC66: A9 28     LDA #con_music_28
C - - - - - 0x005C78 01:BC68: 4C D8 95  JMP loc_0x0095E8_play_music
bra_BC69:
                                        CLC
                                        RTS



tbl_BCD3:
- D 1 - - - 0x005CE3 01:BCD3: 01        .byte $01   ; 00 
- D 1 - - - 0x005CE4 01:BCD4: 02        .byte $02   ; 01 
- D 1 - - - 0x005CE5 01:BCD5: 03        .byte $03   ; 02 
- D 1 - - - 0x005CE6 01:BCD6: 04        .byte $04   ; 03 
- D 1 - - - 0x005CE7 01:BCD7: 05        .byte $05   ; 04 
- D 1 - - - 0x005CE8 01:BCD8: 06        .byte $06   ; 05 
- D 1 - - - 0x005CE9 01:BCD9: 07        .byte $07   ; 06 
- D 1 - - - 0x005CEA 01:BCDA: 08        .byte $08   ; 07 
- D 1 - - - 0x005CEB 01:BCDB: 09        .byte $09   ; 08 
- D 1 - - - 0x005CEC 01:BCDC: 88        .byte $88   ; 09 
- D 1 - - - 0x005CED 01:BCDD: 87        .byte $87   ; 0A 
- D 1 - - - 0x005CEE 01:BCDE: 86        .byte $86   ; 0B 
- D 1 - - - 0x005CEF 01:BCDF: 85        .byte $85   ; 0C 
- D 1 - - - 0x005CF0 01:BCE0: 84        .byte $84   ; 0D 
- D 1 - - - 0x005CF1 01:BCE1: 83        .byte $83   ; 0E 
- D 1 - - - 0x005CF2 01:BCE2: 82        .byte $82   ; 0F 
- D 1 - - - 0x005CF3 01:BCE3: 81        .byte $81   ; 10 
- D 1 - - - 0x005CF4 01:BCE4: 80        .byte $80   ; 11 



sub_BCCA:
C - - - - - 0x005CDA 01:BCCA: 20 B1 93  JSR sub_0x0093C1_06B2x_LSRx4_TAY
C - - - - - 0x005CDD 01:BCCD: B9 14 04  LDA ram_0414,Y
C - - - - - 0x005CE0 01:BCD0: C9 7C     CMP #$7C
C - - - - - 0x005CE2 01:BCD2: 60        RTS



sub_BC6B:
C - - - - - 0x005C7B 01:BC6B: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x005C7E 01:BC6E: 85 91     STA ram_0091_pos_Y
C - - - - - 0x005C80 01:BC70: BC D2 07  LDY ram_07D2_unk,X
C - - - - - 0x005C83 01:BC73: B9 F0 BC  LDA tbl_BCF1 - $01,Y
C - - - - - 0x005C86 01:BC76: 9D 68 06  STA ram_obj_pos_Y,X
C - - - - - 0x005C89 01:BC79: A9 51     LDA #$51
C - - - - - 0x005C8B 01:BC7B: 9D A0 07  STA ram_07A0_unk,X
C - - - - - 0x005C8E 01:BC7E: 20 94 84  JSR sub_0x0084A4
C - - - - - 0x005C91 01:BC81: A9 00     LDA #$00
C - - - - - 0x005C93 01:BC83: 99 20 07  STA ram_0720_obj,Y
C - - - - - 0x005C96 01:BC86: A5 91     LDA ram_0091_pos_Y
C - - - - - 0x005C98 01:BC88: 9D 68 06  STA ram_obj_pos_Y,X
bra_BC8B:
; bzk optimize, useless CLC
C - - - - - 0x005C9B 01:BC8B: 18        CLC
C - - - - - 0x005C9C 01:BC8C: 60        RTS



tbl_BCF1:
- D 1 - - - 0x005D01 01:BCF1: 40        .byte $40   ; 01 
- D 1 - - - 0x005D02 01:BCF2: 70        .byte $70   ; 02 



sub_BC8D:
C - - - - - 0x005C9D 01:BC8D: 48        PHA
C - - - - - 0x005C9E 01:BC8E: 20 B1 93  JSR sub_0x0093C1_06B2x_LSRx4_TAY
C - - - - - 0x005CA1 01:BC91: 68        PLA
C - - - - - 0x005CA2 01:BC92: C0 00     CPY #$00
C - - - - - 0x005CA4 01:BC94: D0 08     BNE bra_BC9E
C - - - - - 0x005CA6 01:BC96: C9 0C     CMP #$0C
C - - - - - 0x005CA8 01:BC98: B0 04     BCS bra_BC9E
; 00-0B
C - - - - - 0x005CAA 01:BC9A: A8        TAY
C - - - - - 0x005CAB 01:BC9B: B9 E5 BC  LDA tbl_BCE5_table_index,Y
bra_BC9E:
; * 04
C - - - - - 0x005CAE 01:BC9E: 0A        ASL
C - - - - - 0x005CAF 01:BC9F: 0A        ASL
C - - - - - 0x005CB0 01:BCA0: A8        TAY
C - - - - - 0x005CB1 01:BCA1: B9 F3 BC  LDA tbl_BCF3,Y
C - - - - - 0x005CB4 01:BCA4: 85 02     STA ram_0002_t02_ppu_data
C - - - - - 0x005CB6 01:BCA6: B9 F4 BC  LDA tbl_BCF3 + $01,Y
C - - - - - 0x005CB9 01:BCA9: 85 03     STA ram_0002_t02_ppu_data + $01
C - - - - - 0x005CBB 01:BCAB: B9 F5 BC  LDA tbl_BCF3 + $02,Y
C - - - - - 0x005CBE 01:BCAE: 85 06     STA ram_0006_t05_ppu_addr_lo
C - - - - - 0x005CC0 01:BCB0: B9 F6 BC  LDA tbl_BCF3 + $03,Y
C - - - - - 0x005CC3 01:BCB3: 85 07     STA ram_0007_t01_ppu_addr_hi
C - - - - - 0x005CC5 01:BCB5: 20 B1 93  JSR sub_0x0093C1_06B2x_LSRx4_TAY
; * 04
C - - - - - 0x005CC8 01:BCB8: 0A        ASL
C - - - - - 0x005CC9 01:BCB9: 0A        ASL
C - - - - - 0x005CCA 01:BCBA: 18        CLC
C - - - - - 0x005CCB 01:BCBB: 65 06     ADC ram_0006_t05_ppu_addr_lo
C - - - - - 0x005CCD 01:BCBD: 85 06     STA ram_0006_t05_ppu_addr_lo
C - - - - - 0x005CCF 01:BCBF: 90 02     BCC bra_BCC3_not_overflow
- - - - - - 0x005CD1 01:BCC1: E6 07     INC ram_0007_t01_ppu_addr_hi
bra_BCC3_not_overflow:
C - - - - - 0x005CD3 01:BCC3: A5 26     LDA ram_buffer_index
C - - - - - 0x005CD5 01:BCC5: D0 C4     BNE bra_BCC8
C - - - - - 0x005CD7 01:BCC7: 4C 92 87  JMP loc_0x0087A2
bra_BCC8:
                                        CLC
                                        RTS



tbl_BCE5_table_index:
- D 1 - - - 0x005CF5 01:BCE5: 00        .byte $00   ; 00 
- D 1 - - - 0x005CF6 01:BCE6: 01        .byte $01   ; 01 
- D 1 - - - 0x005CF7 01:BCE7: 02        .byte $02   ; 02 
- D 1 - - - 0x005CF8 01:BCE8: 03        .byte $03   ; 03 
- D 1 - - - 0x005CF9 01:BCE9: 04        .byte $04   ; 04 
- D 1 - - - 0x005CFA 01:BCEA: 05        .byte $05   ; 05 
- D 1 - - - 0x005CFB 01:BCEB: 06        .byte $06   ; 06 
- D 1 - - - 0x005CFC 01:BCEC: 0D        .byte $0D   ; 07 
- D 1 - - - 0x005CFD 01:BCED: 0E        .byte $0E   ; 08 
- D 1 - - - 0x005CFE 01:BCEE: 09        .byte $09   ; 09 
- D 1 - - - 0x005CFF 01:BCEF: 0A        .byte $0A   ; 0A 
- D 1 - - - 0x005D00 01:BCF0: 0F        .byte $0F   ; 0B 



tbl_BCF3:
; 00 
- D 1 - - - 0x005D03 01:BCF3: CC A9     .word _off031_A9CC_00
- D 1 - - - 0x005D05 01:BCF5: D0 20     .word $20D0 ; 
; 01 
- D 1 - - - 0x005D07 01:BCF7: DE A9     .word _off031_A9DE_01
- D 1 - - - 0x005D09 01:BCF9: D0 20     .word $20D0 ; 
; 02 
- D 1 - - - 0x005D0B 01:BCFB: F4 A9     .word _off031_A9F4_02
- D 1 - - - 0x005D0D 01:BCFD: F0 20     .word $20F0 ; 
; 03 
- D 1 - - - 0x005D0F 01:BCFF: F4 A9     .word _off031_A9F4_03
- D 1 - - - 0x005D11 01:BD01: 10 21     .word $2110 ; 
; 04 
- D 1 - - - 0x005D13 01:BD03: F4 A9     .word _off031_A9F4_04
- D 1 - - - 0x005D15 01:BD05: 30 21     .word $2130 ; 
; 05 
- D 1 - - - 0x005D17 01:BD07: F4 A9     .word _off031_A9F4_05
- D 1 - - - 0x005D19 01:BD09: 50 21     .word $2150 ; 
; 06 
- D 1 - - - 0x005D1B 01:BD0B: F4 A9     .word _off031_A9F4_06
- D 1 - - - 0x005D1D 01:BD0D: 70 21     .word $2170 ; 
; 07 
- D 1 - - - 0x005D1F 01:BD0F: 0A AA     .word _off031_AA0A_07
- D 1 - - - 0x005D21 01:BD11: 90 21     .word $2190 ; 
; 08 
- D 1 - - - 0x005D23 01:BD13: 20 AA     .word _off031_AA20_08
- D 1 - - - 0x005D25 01:BD15: B0 21     .word $21B0 ; 
; 09 
- D 1 - - - 0x005D27 01:BD17: 32 AA     .word _off031_AA32_09
- D 1 - - - 0x005D29 01:BD19: D0 21     .word $21D0 ; 
; 0A 
- D 1 - - - 0x005D2B 01:BD1B: 40 AA     .word _off031_AA40_0A
- D 1 - - - 0x005D2D 01:BD1D: D0 20     .word $20D0 ; 
; 0B 
- - - - - - 0x005D2F 01:BD1F: 56 AA     .word _off031_AA56_0B
- - - - - - 0x005D31 01:BD21: 70 21     .word $2170 ; 
; 0C 
- - - - - - 0x005D33 01:BD23: 70 AA     .word _off031_AA70_0C
- - - - - - 0x005D35 01:BD25: D0 20     .word $20D0 ; 
; 0D 
- D 1 - - - 0x005D37 01:BD27: 86 AA     .word _off031_AA86_0D
- D 1 - - - 0x005D39 01:BD29: 90 21     .word $2190 ; 
; 0E 
- D 1 - - - 0x005D3B 01:BD2B: 9C AA     .word _off031_AA9C_0E
- D 1 - - - 0x005D3D 01:BD2D: B0 21     .word $21B0 ; 
; 0F 
- D 1 - - - 0x005D3F 01:BD2F: AE AA     .word _off031_AAAE_0F
- D 1 - - - 0x005D41 01:BD31: 70 21     .word $2170 ; 



_off031_A9CC_00:
- D 1 - I - 0x0169DC 05:A9CC: 04        .byte $04   ; size X
- D 1 - I - 0x0169DD 05:A9CD: 04        .byte $04   ; size Y
- D 1 - I - 0x0169DE 05:A9CE: C2        .byte $C2, $C3, $C4, $C5   ; 01 
- D 1 - I - 0x0169E2 05:A9D2: C6        .byte $C6, $C7, $C7, $C8   ; 02 
- D 1 - I - 0x0169E6 05:A9D6: BE        .byte $BE, $BE, $BE, $BE   ; 03 
- D 1 - I - 0x0169EA 05:A9DA: BE        .byte $BE, $BF, $BE, $BF   ; 04 



_off031_A9DE_01:
- D 1 - I - 0x0169EE 05:A9DE: 04        .byte $04   ; size X
- D 1 - I - 0x0169EF 05:A9DF: 05        .byte $05   ; size Y
- D 1 - I - 0x0169F0 05:A9E0: 00        .byte $00, $C0, $C1, $BE   ; 01 
- D 1 - I - 0x0169F4 05:A9E4: C2        .byte $C2, $C3, $C4, $C5   ; 02 
- D 1 - I - 0x0169F8 05:A9E8: C6        .byte $C6, $C7, $C7, $C8   ; 03 
- D 1 - I - 0x0169FC 05:A9EC: BE        .byte $BE, $BE, $BE, $BE   ; 04 
- D 1 - I - 0x016A00 05:A9F0: BE        .byte $BE, $BF, $BE, $BF   ; 05 



_off031_A9F4_02:
_off031_A9F4_03:
_off031_A9F4_04:
_off031_A9F4_05:
_off031_A9F4_06:
- D 1 - I - 0x016A04 05:A9F4: 04        .byte $04   ; size X
- D 1 - I - 0x016A05 05:A9F5: 05        .byte $05   ; size Y
- D 1 - I - 0x016A06 05:A9F6: BE        .byte $BE, $C0, $C1, $BF   ; 01 
- D 1 - I - 0x016A0A 05:A9FA: C2        .byte $C2, $C3, $C4, $C5   ; 02 
- D 1 - I - 0x016A0E 05:A9FE: C6        .byte $C6, $C7, $C7, $C8   ; 03 
- D 1 - I - 0x016A12 05:AA02: BE        .byte $BE, $BE, $BE, $BE   ; 04 
- D 1 - I - 0x016A16 05:AA06: BE        .byte $BE, $BF, $BE, $BF   ; 05 



_off031_AA0A_07:
- D 1 - I - 0x016A1A 05:AA0A: 04        .byte $04   ; size X
- D 1 - I - 0x016A1B 05:AA0B: 05        .byte $05   ; size Y
- D 1 - I - 0x016A1C 05:AA0C: BE        .byte $BE, $C0, $C1, $BF   ; 01 
- D 1 - I - 0x016A20 05:AA10: C2        .byte $C2, $C3, $C4, $C5   ; 02 
- D 1 - I - 0x016A24 05:AA14: C6        .byte $C6, $C7, $C7, $C8   ; 03 
- D 1 - I - 0x016A28 05:AA18: BE        .byte $BE, $BE, $BE, $BE   ; 04 
- D 1 - I - 0x016A2C 05:AA1C: D6        .byte $D6, $D6, $D6, $D6   ; 05 



_off031_AA20_08:
- D 1 - I - 0x016A30 05:AA20: 04        .byte $04   ; size X
- D 1 - I - 0x016A31 05:AA21: 04        .byte $04   ; size Y
- D 1 - I - 0x016A32 05:AA22: BE        .byte $BE, $C0, $C1, $BF   ; 01 
- D 1 - I - 0x016A36 05:AA26: C2        .byte $C2, $C3, $C4, $C5   ; 02 
- D 1 - I - 0x016A3A 05:AA2A: C6        .byte $C6, $C7, $C7, $C8   ; 03 
- D 1 - I - 0x016A3E 05:AA2E: D6        .byte $D6, $D6, $D6, $D6   ; 04 



_off031_AA32_09:
- D 1 - I - 0x016A42 05:AA32: 04        .byte $04   ; size X
- D 1 - I - 0x016A43 05:AA33: 03        .byte $03   ; size Y
- D 1 - I - 0x016A44 05:AA34: BE        .byte $BE, $C0, $C1, $BF   ; 01 
- D 1 - I - 0x016A48 05:AA38: C2        .byte $C2, $C3, $C4, $C5   ; 02 
- D 1 - I - 0x016A4C 05:AA3C: C6        .byte $C6, $C7, $C7, $C8   ; 03 



_off031_AA40_0A:
- D 1 - I - 0x016A50 05:AA40: 04        .byte $04   ; size X
- D 1 - I - 0x016A51 05:AA41: 05        .byte $05   ; size Y
- D 1 - I - 0x016A52 05:AA42: 00        .byte $00, $00, $00, $00   ; 01 
- D 1 - I - 0x016A56 05:AA46: BE        .byte $BE, $BE, $BE, $BE   ; 02 
- D 1 - I - 0x016A5A 05:AA4A: BE        .byte $BE, $BF, $BE, $BF   ; 03 
- D 1 - I - 0x016A5E 05:AA4E: BE        .byte $BE, $BF, $BE, $BF   ; 04 
- D 1 - I - 0x016A62 05:AA52: BE        .byte $BE, $BF, $BE, $BF   ; 05 



_off031_AA56_0B:
- - - - - - 0x016A66 05:AA56: 04        .byte $04   ; size X
- - - - - - 0x016A67 05:AA57: 06        .byte $06   ; size Y
- - - - - - 0x016A68 05:AA58: BE        .byte $BE, $BF, $BE, $BF   ; 01 
- - - - - - 0x016A6C 05:AA5C: BE        .byte $BE, $BF, $BE, $BF   ; 02 
- - - - - - 0x016A70 05:AA60: BE        .byte $BE, $BF, $BE, $BF   ; 03 
- - - - - - 0x016A74 05:AA64: BE        .byte $BE, $BF, $BE, $BF   ; 04 
- - - - - - 0x016A78 05:AA68: BE        .byte $BE, $BF, $BE, $BF   ; 05 
- - - - - - 0x016A7C 05:AA6C: D6        .byte $D6, $D6, $D6, $D6   ; 06 



_off031_AA70_0C:
- - - - - - 0x016A80 05:AA70: 04        .byte $04   ; size X
- - - - - - 0x016A81 05:AA71: 05        .byte $05   ; size Y
- - - - - - 0x016A82 05:AA72: C2        .byte $C2, $C3, $C4, $C5   ; 01 
- - - - - - 0x016A86 05:AA76: C6        .byte $C6, $C7, $C7, $C8   ; 02 
- - - - - - 0x016A8A 05:AA7A: 00        .byte $00, $00, $00, $00   ; 03 
- - - - - - 0x016A8E 05:AA7E: BE        .byte $BE, $BF, $BE, $BF   ; 04 
- - - - - - 0x016A92 05:AA82: BE        .byte $BE, $BF, $BE, $BF   ; 05 



_off031_AA86_0D:
- D 1 - I - 0x016A96 05:AA86: 04        .byte $04   ; size X
- D 1 - I - 0x016A97 05:AA87: 05        .byte $05   ; size Y
- D 1 - I - 0x016A98 05:AA88: BE        .byte $BE, $C0, $C1, $BF   ; 01 
- D 1 - I - 0x016A9C 05:AA8C: C2        .byte $C2, $C3, $C4, $C5   ; 02 
- D 1 - I - 0x016AA0 05:AA90: C6        .byte $C6, $C7, $C7, $C8   ; 03 
- D 1 - I - 0x016AA4 05:AA94: BE        .byte $BE, $BE, $BE, $BE   ; 04 
- D 1 - I - 0x016AA8 05:AA98: D5        .byte $D5, $D6, $D6, $D6   ; 05 



_off031_AA9C_0E:
- D 1 - I - 0x016AAC 05:AA9C: 04        .byte $04   ; size X
- D 1 - I - 0x016AAD 05:AA9D: 04        .byte $04   ; size Y
- D 1 - I - 0x016AAE 05:AA9E: BE        .byte $BE, $C0, $C1, $BF   ; 01 
- D 1 - I - 0x016AB2 05:AAA2: C2        .byte $C2, $C3, $C4, $C5   ; 02 
- D 1 - I - 0x016AB6 05:AAA6: C6        .byte $C6, $C7, $C7, $C8   ; 03 
- D 1 - I - 0x016ABA 05:AAAA: D5        .byte $D5, $D6, $D6, $D6   ; 04 



_off031_AAAE_0F:
- D 1 - I - 0x016ABE 05:AAAE: 04        .byte $04   ; size X
- D 1 - I - 0x016ABF 05:AAAF: 06        .byte $06   ; size Y
- D 1 - I - 0x016AC0 05:AAB0: BE        .byte $BE, $BF, $BE, $BF   ; 01 
- D 1 - I - 0x016AC4 05:AAB4: BE        .byte $BE, $BF, $BE, $BF   ; 02 
- D 1 - I - 0x016AC8 05:AAB8: BE        .byte $BE, $BF, $BE, $BF   ; 03 
- D 1 - I - 0x016ACC 05:AABC: BE        .byte $BE, $BF, $BE, $BF   ; 04 
- D 1 - I - 0x016AD0 05:AAC0: BE        .byte $BE, $BF, $BE, $BF   ; 05 
- D 1 - I - 0x016AD4 05:AAC4: D5        .byte $D5, $D6, $D6, $D6   ; 06 



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_016_0x0081D8_14_RTS:
                                        RTS



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_016_0x00FCDA_15:
                                        JMP loc_0x009A27



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_016_0x00F9E2_16:
C - - J - - 0x00F9E2 03:B9D2: 20 D8 B9  JSR sub_B9D8
C - - - - - 0x00F9E5 03:B9D5: 4C 10 8E  JMP loc_0x008E20



sub_B9D8:
C - - - - - 0x00F9E8 03:B9D8: 20 CE 90  JSR sub_0x0090DE_0600x_ORA_08
C - - - - - 0x00F9EB 03:B9DB: A0 00     LDY #$00
C - - - - - 0x00F9ED 03:B9DD: 98        TYA
C - - - - - 0x00F9EE 03:B9DE: 9D 20 07  STA ram_0720_obj,X
C - - - - - 0x00F9F1 03:B9E1: B9 82 07  LDA ram_0782_unk,Y
C - - - - - 0x00F9F4 03:B9E4: D0 07     BNE bra_B9ED
- - - - - - 0x00F9F6 03:B9E6: B9 68 06  LDA ram_obj_pos_Y,Y
- - - - - - 0x00F9F9 03:B9E9: C9 30     CMP #$30
- - - - - - 0x00F9FB 03:B9EB: 90 50     BCC bra_BA3D_RTS
bra_B9ED:
C - - - - - 0x00F9FD 03:B9ED: C8        INY
C - - - - - 0x00F9FE 03:B9EE: B9 82 07  LDA ram_0782_unk,Y
C - - - - - 0x00FA01 03:B9F1: D0 07     BNE bra_B9FA
C - - - - - 0x00FA03 03:B9F3: B9 68 06  LDA ram_obj_pos_Y,Y
C - - - - - 0x00FA06 03:B9F6: C9 30     CMP #$30
C - - - - - 0x00FA08 03:B9F8: 90 43     BCC bra_BA3D_RTS
bra_B9FA:
C - - - - - 0x00FA0A 03:B9FA: BD D2 07  LDA ram_07D2_unk,X
C - - - - - 0x00FA0D 03:B9FD: D0 0E     BNE bra_BA0D
C - - - - - 0x00FA0F 03:B9FF: A5 23     LDA ram_frm_cnt
C - - - - - 0x00FA11 03:BA01: 29 1F     AND #$1F
C - - - - - 0x00FA13 03:BA03: D0 38     BNE bra_BA3D_RTS
C - - - - - 0x00FA15 03:BA05: A5 29     LDA ram_random
C - - - - - 0x00FA17 03:BA07: 29 01     AND #$01
C - - - - - 0x00FA19 03:BA09: 9D D2 07  STA ram_07D2_unk,X
C - - - - - 0x00FA1C 03:BA0C: 60        RTS
bra_BA0D:
C - - - - - 0x00FA1D 03:BA0D: A9 82     LDA #$82
C - - - - - 0x00FA1F 03:BA0F: 20 1F 97  JSR sub_0x00972F
C - - - - - 0x00FA22 03:BA12: B0 29     BCS bra_BA3D_RTS
C - - - - - 0x00FA24 03:BA14: C0 08     CPY #$08
C - - - - - 0x00FA26 03:BA16: B0 1B     BCS bra_BA33
C - - - - - 0x00FA28 03:BA18: A9 FF     LDA #$FF
C - - - - - 0x00FA2A 03:BA1A: 99 4E 06  STA ram_obj_pos_X,Y
C - - - - - 0x00FA2D 03:BA1D: A5 29     LDA ram_random
C - - - - - 0x00FA2F 03:BA1F: 29 03     AND #$03
C - - - - - 0x00FA31 03:BA21: AA        TAX
C - - - - - 0x00FA32 03:BA22: B9 68 06  LDA ram_obj_pos_Y,Y
C - - - - - 0x00FA35 03:BA25: 18        CLC
C - - - - - 0x00FA36 03:BA26: 7D 3E BA  ADC tbl_BA3E,X
C - - - - - 0x00FA39 03:BA29: 99 68 06  STA ram_obj_pos_Y,Y
C - - - - - 0x00FA3C 03:BA2C: 18        CLC
C - - - - - 0x00FA3D 03:BA2D: 69 20     ADC #$20
C - - - - - 0x00FA3F 03:BA2F: C9 40     CMP #$40
C - - - - - 0x00FA41 03:BA31: B0 05     BCS bra_BA38
bra_BA33:
C - - - - - 0x00FA43 03:BA33: 98        TYA
C - - - - - 0x00FA44 03:BA34: AA        TAX
C - - - - - 0x00FA45 03:BA35: 20 17 9A  JSR sub_0x009A27
bra_BA38:
C - - - - - 0x00FA48 03:BA38: A6 53     LDX ram_0053
C - - - - - 0x00FA4A 03:BA3A: DE D2 07  DEC ram_07D2_unk,X
bra_BA3D_RTS:
C - - - - - 0x00FA4D 03:BA3D: 60        RTS



tbl_BA3E:
- D 1 - - - 0x00FA4E 03:BA3E: C4        .byte $C4   ; 00 
- D 1 - - - 0x00FA4F 03:BA3F: D8        .byte $D8   ; 01 
- D 1 - - - 0x00FA50 03:BA40: 00        .byte $00   ; 02 
- D 1 - - - 0x00FA51 03:BA41: 28        .byte $28   ; 03 



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_016_0x00FB4C_17:
C - - J - - 0x00FB4C 03:BB3C: 20 1E 91  JSR sub_0x00912E
C - - - - - 0x00FB4F 03:BB3F: 90 06     BCC bra_BB47
C - - - - - 0x00FB51 03:BB41: A5 00     LDA ram_0000_t42
C - - - - - 0x00FB53 03:BB43: C9 AC     CMP #$AC
C - - - - - 0x00FB55 03:BB45: D0 F2     BNE bra_BB39
bra_BB47:
C - - - - - 0x00FB57 03:BB47: 20 81 8D  JSR sub_0x008D91
C - - - - - 0x00FB5A 03:BB4A: B0 ED     BCS bra_BB39
C - - - - - 0x00FB5C 03:BB4C: BD 00 06  LDA ram_0600_obj,X
C - - - - - 0x00FB5F 03:BB4F: 30 49     BMI bra_BB9A
C - - - - - 0x00FB61 03:BB51: A5 23     LDA ram_frm_cnt
C - - - - - 0x00FB63 03:BB53: 29 0F     AND #$0F
C - - - - - 0x00FB65 03:BB55: D0 43     BNE bra_BB9A
C - - - - - 0x00FB67 03:BB57: A9 70     LDA #$70
C - - - - - 0x00FB69 03:BB59: A0 60     LDY #$60
C - - - - - 0x00FB6B 03:BB5B: 20 0D 95  JSR sub_0x00951D
C - - - - - 0x00FB6E 03:BB5E: B0 3A     BCS bra_BB9A
C - - - - - 0x00FB70 03:BB60: 20 C8 90  JSR sub_0x0090D8_0600x_write_08
C - - - - - 0x00FB73 03:BB63: A9 E1     LDA #$E1
C - - - - - 0x00FB75 03:BB65: 20 1F 97  JSR sub_0x00972F
C - - - - - 0x00FB78 03:BB68: B0 30     BCS bra_BB9A
C - - - - - 0x00FB7A 03:BB6A: 98        TYA
C - - - - - 0x00FB7B 03:BB6B: AA        TAX
C - - - - - 0x00FB7C 03:BB6C: 20 2E 94  JSR sub_0x00943E
C - - - - - 0x00FB7F 03:BB6F: A9 00     LDA #$00
C - - - - - 0x00FB81 03:BB71: 9D B2 06  STA ram_06B2_obj,X
C - - - - - 0x00FB84 03:BB74: A9 16     LDA #$16
C - - - - - 0x00FB86 03:BB76: 85 00     STA ram_0000_t21_pos_X
C - - - - - 0x00FB88 03:BB78: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x00FB8B 03:BB7B: D9 4E 06  CMP ram_obj_pos_X,Y
C - - - - - 0x00FB8E 03:BB7E: 90 09     BCC bra_BB89
C - - - - - 0x00FB90 03:BB80: A9 80     LDA #$80
C - - - - - 0x00FB92 03:BB82: 9D B2 06  STA ram_06B2_obj,X
C - - - - - 0x00FB95 03:BB85: A9 F4     LDA #$F4
C - - - - - 0x00FB97 03:BB87: 85 00     STA ram_0000_t21_pos_X
bra_BB89:
C - - - - - 0x00FB99 03:BB89: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x00FB9C 03:BB8C: 18        CLC
C - - - - - 0x00FB9D 03:BB8D: 65 00     ADC ram_0000_t21_pos_X
C - - - - - 0x00FB9F 03:BB8F: 9D 4E 06  STA ram_obj_pos_X,X
C - - - - - 0x00FBA2 03:BB92: 6A        ROR
C - - - - - 0x00FBA3 03:BB93: 45 00     EOR ram_0000_t21_pos_X
C - - - - - 0x00FBA5 03:BB95: 90 03     BCC bra_BB9A
C - - - - - 0x00FBA7 03:BB97: 20 52 9A  JSR sub_0x009A62
bra_BB9A:
C - - - - - 0x00FBAA 03:BB9A: A6 53     LDX ram_0053
C - - - - - 0x00FBAC 03:BB9C: 4C C8 90  JMP loc_0x0090D8_0600x_write_08
bra_BB39:
C - - - - - 0x00FB49 03:BB39: 4C 17 9A  JMP loc_0x009A27



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_016_0x00F3AF_18:
C D 1 J - - 0x00F3AF 03:B39F: 20 CE 90  JSR sub_0x0090DE_0600x_ORA_08
C - - - - - 0x00F3B2 03:B3A2: 20 83 91  LDA ram_0782_unk,X
                                        AND #$7F
C - - - - - 0x00F3B5 03:B3A5: C9 32     CMP #$32
C - - - - - 0x00F3B7 03:B3A7: F0 06     BEQ bra_B3AF
C - - - - - 0x00F3B9 03:B3A9: 20 F1 BC  JSR sub_BCF1
C - - - - - 0x00F3BC 03:B3AC: 4C 10 8E  JMP loc_0x008E20
bra_B3AF:
C - - - - - 0x00F3BF 03:B3AF: 4C 1B BF  JMP loc_BF1B



bra_BCEB:
C - - - - - 0x00FCFB 03:BCEB: 4C F0 BE  JMP loc_BEF0



bra_BCEE_RTS:
C - - - - - 0x00FCFE 03:BCEE: 4C EF BE  RTS



sub_BCF1:
C - - - - - 0x00FD01 03:BCF1: A9 07     LDA #$07
C - - - - - 0x00FD03 03:BCF3: 9D 20 07  STA ram_0720_obj,X
C - - - - - 0x00FD06 03:BCF6: BD C8 07  LDA ram_07C8_unk,X
C - - - - - 0x00FD09 03:BCF9: 29 3F     AND #$3F
C - - - - - 0x00FD0B 03:BCFB: 9D C8 07  STA ram_07C8_unk,X
C - - - - - 0x00FD0E 03:BCFE: A5 60     LDA ram_0060_hi
C - - - - - 0x00FD10 03:BD00: C9 03     CMP #$03
C - - - - - 0x00FD12 03:BD02: 90 E7     BCC bra_BCEB
C - - - - - 0x00FD14 03:BD04: A5 60     LDA ram_0060_hi
C - - - - - 0x00FD16 03:BD06: C9 04     CMP #$04
C - - - - - 0x00FD18 03:BD08: 90 08     BCC bra_BD12
C - - - - - 0x00FD1A 03:BD0A: D0 DF     BNE bra_BCEB
C - - - - - 0x00FD1C 03:BD0C: A5 61     LDA ram_0061_lo
C - - - - - 0x00FD1E 03:BD0E: C9 E0     CMP #$E0
C - - - - - 0x00FD20 03:BD10: B0 D9     BCS bra_BCEB
bra_BD12:
C - - - - - 0x00FD22 03:BD12: BD D2 07  LDA ram_07D2_unk,X
C - - - - - 0x00FD25 03:BD15: 29 80     AND #$80
C - - - - - 0x00FD27 03:BD17: D0 61     BNE bra_BD7A
C - - - - - 0x00FD29 03:BD19: A5 60     LDA ram_0060_hi
C - - - - - 0x00FD2B 03:BD1B: C9 03     CMP #$03
C - - - - - 0x00FD2D 03:BD1D: 90 CF     BCC bra_BCEE_RTS
C - - - - - 0x00FD2F 03:BD1F: D0 06     BNE bra_BD27
C - - - - - 0x00FD31 03:BD21: A5 61     LDA ram_0061_lo
C - - - - - 0x00FD33 03:BD23: C9 80     CMP #$80
C - - - - - 0x00FD35 03:BD25: 90 C7     BCC bra_BCEE_RTS
bra_BD27:
C - - - - - 0x00FD37 03:BD27: A9 26     LDA #con_music_26
C - - - - - 0x00FD39 03:BD29: 20 CA FE  JSR sub_0x01FEDA_add_music_to_queue
C - - - - - 0x00FD3C 03:BD2C: A0 04     LDY #$04
C - - - - - 0x00FD3E 03:BD2E: 20 CA F8  JSR sub_0x01F8DA_prepare_irq_data
; bzk optimize, useless LDA + STA
C - - - - - 0x00FD41 03:BD31: A5 61     LDA ram_0061_lo
C - - - - - 0x00FD43 03:BD33: 85 50     STA ram_0050_t03_useless
C - - - - - 0x00FD45 03:BD35: A9 00     LDA #$00
C - - - - - 0x00FD47 03:BD37: 85 51     STA ram_0051_t01_scroll_Y
C - - - - - 0x00FD49 03:BD39: 9D B4 07  STA ram_07B4_unk,X
C - - - - - 0x00FD4C 03:BD3C: 9D AA 07  STA ram_07AA_unk,X
C - - - - - 0x00FD4F 03:BD3F: A5 FF     LDA ram_for_2000
C - - - - - 0x00FD51 03:BD41: 85 52     STA ram_0052_for_2000
C - - - - - 0x00FD53 03:BD43: A9 80     LDA #$80
C - - - - - 0x00FD55 03:BD45: 9D D2 07  STA ram_07D2_unk,X
C - - - - - 0x00FD58 03:BD48: A9 04     LDA #$04
C - - - - - 0x00FD5A 03:BD4A: 85 1E     STA ram_001E_t06_loop_counter
bra_BD4C_loop:
C - - - - - 0x00FD5C 03:BD4C: A9 02     LDA #$02
C - - - - - 0x00FD5E 03:BD4E: 20 72 93  JSR sub_0x009382
C - - - - - 0x00FD61 03:BD51: B0 27     BCS bra_BD7A
C - - - - - 0x00FD63 03:BD53: 84 0B     STY ram_000B_t10
C - - - - - 0x00FD65 03:BD55: A9 32     LDA #$32
C - - - - - 0x00FD67 03:BD57: 85 0A     STA ram_000A_t09
C - - - - - 0x00FD69 03:BD59: 20 C9 8B  JSR sub_0x008BD9
C - - - - - 0x00FD6C 03:BD5C: B0 18     BCS bra_BD76
C - - - - - 0x00FD6E 03:BD5E: A9 00     LDA #$00
C - - - - - 0x00FD70 03:BD60: 99 1A 06  STA ram_obj_animation_lo,Y
C - - - - - 0x00FD73 03:BD63: 8A        TXA
C - - - - - 0x00FD74 03:BD64: 99 AA 07  STA ram_07AA_unk,Y
C - - - - - 0x00FD77 03:BD67: A5 1E     LDA ram_001E_t06_loop_counter
C - - - - - 0x00FD79 03:BD69: 99 B4 07  STA ram_07B4_unk,Y
C - - - - - 0x00FD7C 03:BD6C: F0 08     BEQ bra_BD76
C - - - - - 0x00FD7E 03:BD6E: B9 82 07  LDA ram_0782_unk,Y
C - - - - - 0x00FD81 03:BD71: 09 80     ORA #$80
C - - - - - 0x00FD83 03:BD73: 99 82 07  STA ram_0782_unk,Y
bra_BD76:
C - - - - - 0x00FD86 03:BD76: C6 1E     DEC ram_001E_t06_loop_counter
C - - - - - 0x00FD88 03:BD78: 10 D2     BPL bra_BD4C_loop
bra_BD7A:
C - - - - - 0x00FD8A 03:BD7A: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x00FD8D 03:BD7D: 1D B4 07  ORA ram_07B4_unk,X
C - - - - - 0x00FD90 03:BD80: D0 19     BNE bra_BD9B
C - - - - - 0x00FD92 03:BD82: A5 60     LDA ram_0060_hi
C - - - - - 0x00FD94 03:BD84: C9 03     CMP #$03
C - - - - - 0x00FD96 03:BD86: 90 08     BCC bra_BD90
C - - - - - 0x00FD98 03:BD88: D0 11     BNE bra_BD9B
C - - - - - 0x00FD9A 03:BD8A: A5 61     LDA ram_0061_lo
C - - - - - 0x00FD9C 03:BD8C: C9 80     CMP #$80
C - - - - - 0x00FD9E 03:BD8E: B0 0B     BCS bra_BD9B
bra_BD90:
- - - - - - 0x00FDA0 03:BD90: A9 80     LDA #< $0380
- - - - - - 0x00FDA2 03:BD92: 85 00     STA ram_0000_t88_lo
- - - - - - 0x00FDA4 03:BD94: A9 03     LDA #> $0380
- - - - - - 0x00FDA6 03:BD96: 85 01     STA ram_0001_t29_hi
- - - - - - 0x00FDA8 03:BD98: 4C 1C BE  JMP loc_BE1C
bra_BD9B:
C - - - - - 0x00FDAB 03:BD9B: A9 00     LDA #$00
C - - - - - 0x00FDAD 03:BD9D: 85 02     STA ram_0002_t03_data
; bzk bug? no ram_0002_t03_data + $01 initialization
C - - - - - 0x00FDAF 03:BD9F: A9 80     LDA #< $0380
C - - - - - 0x00FDB1 03:BDA1: 18        CLC
C - - - - - 0x00FDB2 03:BDA2: 7D B4 07  ADC ram_07B4_unk,X
C - - - - - 0x00FDB5 03:BDA5: 85 00     STA ram_0000_t88_lo
C - - - - - 0x00FDB7 03:BDA7: A9 03     LDA #> $0380
C - - - - - 0x00FDB9 03:BDA9: 7D AA 07  ADC ram_07AA_unk,X
C - - - - - 0x00FDBC 03:BDAC: 85 01     STA ram_0001_t29_hi
C - - - - - 0x00FDBE 03:BDAE: A9 01     LDA #$01
C - - - - - 0x00FDC0 03:BDB0: 85 04     STA ram_0004_t16
C - - - - - 0x00FDC2 03:BDB2: A5 6A     LDA ram_006A
C - - - - - 0x00FDC4 03:BDB4: 05 69     ORA ram_0069
C - - - - - 0x00FDC6 03:BDB6: F0 02     BEQ bra_BDB9
C - - - - - 0x00FDC8 03:BDB8: 06 04     ASL ram_0004_t16    ; -> 02
bra_BDB9:
C - - - - - 0x00FDCA 03:BDBA: A5 60     LDA ram_0060_hi
C - - - - - 0x00FDCC 03:BDBC: C9 03     CMP #$03
C - - - - - 0x00FDCE 03:BDBE: D0 06     BNE bra_BDC6
C - - - - - 0x00FDD0 03:BDC0: A5 61     LDA ram_0061_lo
C - - - - - 0x00FDD2 03:BDC2: C9 40     CMP #$40
C - - - - - 0x00FDD4 03:BDC4: 90 08     BCC bra_BDCE
bra_BDC6:
C - - - - - 0x00FDD6 03:BDC6: A5 42     LDA ram_btn_hold_1
C - - - - - 0x00FDD8 03:BDC8: 05 43     ORA ram_btn_hold_1 + $01
C - - - - - 0x00FDDA 03:BDCA: 29 02     AND #con_btn_Left
C - - - - - 0x00FDDC 03:BDCC: F0 2F     BEQ bra_BDFD
bra_BDCE:
C - - - - - 0x00FDDE 03:BDCE: A9 03     LDA #$03
C - - - - - 0x00FDE0 03:BDD0: C5 01     CMP ram_0001_t29_hi
C - - - - - 0x00FDE2 03:BDD2: 90 08     BCC bra_BDDC
C - - - - - 0x00FDE4 03:BDD4: D0 46     BNE bra_BE1C
C - - - - - 0x00FDE6 03:BDD6: A5 00     LDA ram_0000_t88_lo
C - - - - - 0x00FDE8 03:BDD8: C9 50     CMP #$50
C - - - - - 0x00FDEA 03:BDDA: 90 40     BCC bra_BE1C
bra_BDDC:
C - - - - - 0x00FDEC 03:BDDC: BD B4 07  LDA ram_07B4_unk,X
C - - - - - 0x00FDEF 03:BDDF: 38        SEC
C - - - - - 0x00FDF0 03:BDE0: E5 04     SBC ram_0004_t16
C - - - - - 0x00FDF2 03:BDE2: 9D B4 07  STA ram_07B4_unk,X
C - - - - - 0x00FDF5 03:BDE5: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x00FDF8 03:BDE8: E9 00     SBC #$00
C - - - - - 0x00FDFA 03:BDEA: 9D AA 07  STA ram_07AA_unk,X
C - - - - - 0x00FDFD 03:BDED: 10 2D     BPL bra_BE1C
C - - - - - 0x00FDFF 03:BDEF: A9 00     LDA #$00
C - - - - - 0x00FE01 03:BDF1: 9D AA 07  STA ram_07AA_unk,X
C - - - - - 0x00FE04 03:BDF4: 9D B4 07  STA ram_07B4_unk,X
C - - - - - 0x00FE07 03:BDF7: 4C 1C BE  JMP loc_BE1C
bra_BDFD:
C - - - - - 0x00FE0D 03:BDFD: A5 01     LDA ram_0001_t29_hi
C - - - - - 0x00FE0F 03:BDFF: C9 04     CMP #$04
C - - - - - 0x00FE11 03:BE01: 90 08     BCC bra_BE0B
C - - - - - 0x00FE13 03:BE03: D0 17     BNE bra_BE1C
; bzk optimize, useless check because A is certanly >= 00.
; replace BNE at 0x00FE13 with BCS (it will be the same as JMP)
; and delete 3 following instructions
C - - - - - 0x00FE15 03:BE05: A5 00     LDA ram_0000_t88_lo
C - - - - - 0x00FE17 03:BE07: C9 00     CMP #$00
C - - - - - 0x00FE19 03:BE09: B0 11     BCS bra_BE1C
bra_BE0B:
C - - - - - 0x00FE1B 03:BE0B: BD B4 07  LDA ram_07B4_unk,X
C - - - - - 0x00FE1E 03:BE0E: 18        CLC
C - - - - - 0x00FE1F 03:BE0F: 65 04     ADC ram_0004_t16
C - - - - - 0x00FE21 03:BE11: 9D B4 07  STA ram_07B4_unk,X
C - - - - - 0x00FE24 03:BE14: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x00FE27 03:BE17: 69 00     ADC #$00
C - - - - - 0x00FE29 03:BE19: 9D AA 07  STA ram_07AA_unk,X
bra_BE1C:
loc_BE1C:
C D 1 - - - 0x00FE2C 03:BE1C: A5 61     LDA ram_0061_lo
C - - - - - 0x00FE2E 03:BE1E: 38        SEC
C - - - - - 0x00FE2F 03:BE1F: E9 80     SBC #< $0380
C - - - - - 0x00FE31 03:BE21: 85 02     STA ram_0002_t37_lo
C - - - - - 0x00FE33 03:BE23: A5 60     LDA ram_0060_hi
C - - - - - 0x00FE35 03:BE25: E9 03     SBC #> $0380
C - - - - - 0x00FE37 03:BE27: 85 03     STA ram_0003_t10_hi
C - - - - - 0x00FE39 03:BE29: 30 10     BMI bra_BE3B
C - - - - - 0x00FE3B 03:BE2B: D0 06     BNE bra_BE33
C - - - - - 0x00FE3D 03:BE2D: A5 02     LDA ram_0002_t37_lo
C - - - - - 0x00FE3F 03:BE2F: C9 F8     CMP #$F8
C - - - - - 0x00FE41 03:BE31: 90 08     BCC bra_BE3B
bra_BE33:
C - - - - - 0x00FE43 03:BE33: A9 F8     LDA #< $00F8
C - - - - - 0x00FE45 03:BE35: 85 02     STA ram_0002_t37_lo
C - - - - - 0x00FE47 03:BE37: A9 00     LDA #> $00F8
C - - - - - 0x00FE49 03:BE39: 85 03     STA ram_0003_t10_hi
bra_BE3B:
C - - - - - 0x00FE4B 03:BE3B: A5 00     LDA ram_0000_t88_lo
C - - - - - 0x00FE4D 03:BE3D: 18        CLC
C - - - - - 0x00FE4E 03:BE3E: 65 02     ADC ram_0002_t37_lo
C - - - - - 0x00FE50 03:BE40: 85 02     STA ram_0002_t38_lo
C - - - - - 0x00FE52 03:BE42: 85 50     STA ram_0050_t01_scroll_X
C - - - - - 0x00FE54 03:BE44: A5 01     LDA ram_0001_t29_hi
C - - - - - 0x00FE56 03:BE46: 65 03     ADC ram_0003_t10_hi
C - - - - - 0x00FE58 03:BE48: 85 03     STA ram_0003_t11_hi
C - - - - - 0x00FE5A 03:BE4A: 29 01     AND #$01
C - - - - - 0x00FE5C 03:BE4C: 85 00     STA ram_0000_t24
C - - - - - 0x00FE5E 03:BE4E: A5 52     LDA ram_0052_for_2000
C - - - - - 0x00FE60 03:BE50: 29 FC     AND #$FC
C - - - - - 0x00FE62 03:BE52: 05 00     ORA ram_0000_t24
C - - - - - 0x00FE64 03:BE54: 85 52     STA ram_0052_for_2000
C - - - - - 0x00FE66 03:BE56: A9 40     LDA #< $0440
C - - - - - 0x00FE68 03:BE58: 38        SEC
C - - - - - 0x00FE69 03:BE59: E5 02     SBC ram_0002_t38_lo
C - - - - - 0x00FE6B 03:BE5B: 85 02     STA ram_0002_t39_lo
C - - - - - 0x00FE6D 03:BE5D: A9 04     LDA #> $0440
C - - - - - 0x00FE6F 03:BE5F: E5 03     SBC ram_0003_t11_hi
C - - - - - 0x00FE71 03:BE61: 85 03     STA ram_0003_t12_hi
C - - - - - 0x00FE73 03:BE63: BD 00 06  LDA ram_0600_obj,X
C - - - - - 0x00FE76 03:BE66: 29 0F     AND #$0F
C - - - - - 0x00FE78 03:BE68: 9D 00 06  STA ram_0600_obj,X
C - - - - - 0x00FE7B 03:BE6B: A5 03     LDA ram_0003_t12_hi
C - - - - - 0x00FE7D 03:BE6D: F0 0E     BEQ bra_BE7D
C - - - - - 0x00FE7F 03:BE6F: 10 04     BPL bra_BE75
C - - - - - 0x00FE81 03:BE71: A9 20     LDA #$20
C - - - - - 0x00FE83 03:BE73: D0 02     BNE bra_BE77    ; jmp
bra_BE75:
- - - - - - 0x00FE85 03:BE75: A9 10     LDA #$10
bra_BE77:
C - - - - - 0x00FE87 03:BE77: 1D 00 06  ORA ram_0600_obj,X
C - - - - - 0x00FE8A 03:BE7A: 9D 00 06  STA ram_0600_obj,X
bra_BE7D:
C - - - - - 0x00FE8D 03:BE7D: A5 02     LDA ram_0002_t39_lo
C - - - - - 0x00FE8F 03:BE7F: 9D 4E 06  STA ram_obj_pos_X,X
C - - - - - 0x00FE92 03:BE82: BD B4 07  LDA ram_07B4_unk,X
C - - - - - 0x00FE95 03:BE85: F0 68     BEQ bra_BEEF_RTS
C - - - - - 0x00FE97 03:BE87: 30 66     BMI bra_BEEF_RTS
C - - - - - 0x00FE99 03:BE89: A5 03     LDA ram_0003_t12_hi
C - - - - - 0x00FE9B 03:BE8B: F0 0A     BEQ bra_BE97
C - - - - - 0x00FE9D 03:BE8D: C9 FF     CMP #$FF
C - - - - - 0x00FE9F 03:BE8F: D0 5E     BNE bra_BEEF_RTS
C - - - - - 0x00FEA1 03:BE91: A5 02     LDA ram_0002_t39_lo
C - - - - - 0x00FEA3 03:BE93: C9 A0     CMP #$A0
C - - - - - 0x00FEA5 03:BE95: 90 58     BCC bra_BEEF_RTS
bra_BE97:
C - - - - - 0x00FEA7 03:BE97: A5 26     LDA ram_buffer_index
C - - - - - 0x00FEA9 03:BE99: C9 20     CMP #$20
C - - - - - 0x00FEAB 03:BE9B: B0 52     BCS bra_BEEF_RTS
C - - - - - 0x00FEAD 03:BE9D: BD BE 07  LDA ram_07BE_unk,X
C - - - - - 0x00FEB0 03:BEA0: 29 03     AND #$03
C - - - - - 0x00FEB2 03:BEA2: D0 48     BNE bra_BEEC
C - - - - - 0x00FEB4 03:BEA4: BD BE 07  LDA ram_07BE_unk,X
C - - - - - 0x00FEB7 03:BEA7: 29 04     AND #$04
C - - - - - 0x00FEB9 03:BEA9: D0 10     BNE bra_BEBB
C - - - - - 0x00FEBB 03:BEAB: A0 02     LDY #$02
C - - - - - 0x00FEBD 03:BEAD: BD C8 07  LDA ram_07C8_unk,X
C - - - - - 0x00FEC0 03:BEB0: 49 01     EOR #$01
C - - - - - 0x00FEC2 03:BEB2: 9D C8 07  STA ram_07C8_unk,X
C - - - - - 0x00FEC5 03:BEB5: 29 01     AND #$01
C - - - - - 0x00FEC7 03:BEB7: 0A        ASL
C - - - - - 0x00FEC8 03:BEB8: 4C C7 BE  JMP loc_BEC7
bra_BEBB:
C - - - - - 0x00FECB 03:BEBB: A0 00     LDY #$00
C - - - - - 0x00FECD 03:BEBD: BD C8 07  LDA ram_07C8_unk,X
C - - - - - 0x00FED0 03:BEC0: 49 02     EOR #$02
C - - - - - 0x00FED2 03:BEC2: 9D C8 07  STA ram_07C8_unk,X
C - - - - - 0x00FED5 03:BEC5: 29 02     AND #$02
loc_BEC7:
C D 1 - - - 0x00FED7 03:BEC7: 85 00     STA ram_0000_t25
C - - - - - 0x00FED9 03:BEC9: B9 13 BF  LDA tbl_BF13_ppu_address,Y
C - - - - - 0x00FEDC 03:BECC: 85 06     STA ram_0006_t05_ppu_addr_lo
C - - - - - 0x00FEDE 03:BECE: B9 14 BF  LDA tbl_BF13_ppu_address + $01,Y
C - - - - - 0x00FEE1 03:BED1: 85 07     STA ram_0007_t01_ppu_addr_hi
C - - - - - 0x00FEE3 03:BED3: A4 00     LDY ram_0000_t25
C - - - - - 0x00FEE5 03:BED5: B9 17 BF  LDA tbl_BF17,Y
C - - - - - 0x00FEE8 03:BED8: 85 02     STA ram_0002_t02_ppu_data
C - - - - - 0x00FEEA 03:BEDA: B9 18 BF  LDA tbl_BF17 + $01,Y
C - - - - - 0x00FEED 03:BEDD: 85 03     STA ram_0002_t02_ppu_data + $01
C - - - - - 0x00FEEF 03:BEDF: 8A        TXA
C - - - - - 0x00FEF0 03:BEE0: 48        PHA
C - - - - - 0x00FEF1 03:BEE1: A9 06     LDA #con_DA9D_06
C - - - - - 0x00FEF3 03:BEE3: 85 1F     STA ram_001F_t01
C - - - - - 0x00FEF5 03:BEE5: A9 06     LDA #con_F3D6_06
C - - - - - 0x00FEF7 03:BEE7: 20 B3 F3  JSR sub_0x01F3C3_execute_script
C - - - - - 0x00FEFA 03:BEEA: 68        PLA
C - - - - - 0x00FEFB 03:BEEB: AA        TAX
bra_BEEC:
C - - - - - 0x00FEFC 03:BEEC: FE BE 07  INC ram_07BE_unk,X
bra_BEEF_RTS:
C D 1 - - - 0x00FEFF 03:BEEF: 60        RTS



tbl_BF13_ppu_address:
- D 1 - - - 0x00FF23 03:BF13: B1 22     .word $22B1 ; 00 
- D 1 - - - 0x00FF25 03:BF15: B9 22     .word $22B9 ; 02 



tbl_BF17:
- D 1 - - - 0x00FF27 03:BF17: 30 A9     .word off_A930_00
- D 1 - - - 0x00FF29 03:BF19: 2A A9     .word off_A92A_02



off_A92A_02:
- D 1 - I - 0x01693A 05:A92A: 02        .byte $02   ; size X
- D 1 - I - 0x01693B 05:A92B: 02        .byte $02   ; size Y
- D 1 - I - 0x01693C 05:A92C: D6        .byte $D6, $D7   ; 01 
- D 1 - I - 0x01693E 05:A92E: 92        .byte $92, $93   ; 02 



off_A930_00:
- D 1 - I - 0x016940 05:A930: 02        .byte $02   ; size X
- D 1 - I - 0x016941 05:A931: 02        .byte $02   ; size Y
- D 1 - I - 0x016942 05:A932: D8        .byte $D8, $D9   ; 01 
- D 1 - I - 0x016944 05:A934: 94        .byte $94, $95   ; 02 



loc_BEF0:
C D 1 - - - 0x00FF00 03:BEF0: 20 C8 F8  JSR sub_0x01F8D8_prepare_irq_data
; bzk optimize, useless LDA + STA
C - - - - - 0x00FF03 03:BEF3: A5 FD     LDA ram_scroll_X
C - - - - - 0x00FF05 03:BEF5: 85 50     STA ram_0050_t04_useless
; bzk optimize, useless LDA + STA
C - - - - - 0x00FF07 03:BEF7: A5 FF     LDA ram_for_2000
C - - - - - 0x00FF09 03:BEF9: 85 52     STA ram_0052_for_2000
loc_BEFB:
C - - - - - 0x00FF0B 03:BEFB: A9 00     LDA #$00
C - - - - - 0x00FF0D 03:BEFD: 9D 82 07  STA ram_0782_unk,X
C - - - - - 0x00FF10 03:BF00: 9D 82 06  STA ram_0682_obj,X
C - - - - - 0x00FF13 03:BF03: 9D AA 07  STA ram_07AA_unk,X
C - - - - - 0x00FF16 03:BF06: 9D B4 07  STA ram_07B4_unk,X
C - - - - - 0x00FF19 03:BF09: 9D BE 07  STA ram_07BE_unk,X
C - - - - - 0x00FF1C 03:BF0C: 9D C8 07  STA ram_07C8_unk,X
C - - - - - 0x00FF1F 03:BF0F: 9D D2 07  STA ram_07D2_unk,X
C - - - - - 0x00FF22 03:BF12: 60        RTS



loc_BF1B:
C D 1 - - - 0x00FF2B 03:BF1B: BC AA 07  LDY ram_07AA_unk,X
C - - - - - 0x00FF2E 03:BF1E: B9 82 07  LDA ram_0782_unk,Y
C - - - - - 0x00FF31 03:BF21: F0 D8     BNE bra_BF23
                                        JMP loc_BEFB
bra_BF23:
C - - - - - 0x00FF33 03:BF23: B9 4E 06  LDA ram_obj_pos_X,Y
C - - - - - 0x00FF36 03:BF26: 85 00     STA ram_0000_t26_pos_X
C - - - - - 0x00FF38 03:BF28: B9 68 06  LDA ram_obj_pos_Y,Y
C - - - - - 0x00FF3B 03:BF2B: 85 01     STA ram_0001_t30_pos_Y
; bzk optimize, useless LDA + STA
C - - - - - 0x00FF3D 03:BF2D: A9 00     LDA #$00
C - - - - - 0x00FF3F 03:BF2F: 85 03     STA ram_0003_t36_useless
C - - - - - 0x00FF41 03:BF31: BD 00 06  LDA ram_0600_obj,X
C - - - - - 0x00FF44 03:BF34: 29 CF     AND #$CF
C - - - - - 0x00FF46 03:BF36: 9D 00 06  STA ram_0600_obj,X
C - - - - - 0x00FF49 03:BF39: B9 00 06  LDA ram_0600_obj,Y
C - - - - - 0x00FF4C 03:BF3C: 29 30     AND #$30
C - - - - - 0x00FF4E 03:BF3E: F0 09     BEQ bra_BF49
C - - - - - 0x00FF50 03:BF40: A0 01     LDY #$01
C - - - - - 0x00FF52 03:BF42: C9 10     CMP #$10
C - - - - - 0x00FF54 03:BF44: F0 02     BEQ bra_BF48
C - - - - - 0x00FF56 03:BF46: A0 FF     LDY #$FF
bra_BF48:
C - - - - - 0x00FF58 03:BF48: 98        TYA
bra_BF49:
C - - - - - 0x00FF59 03:BF49: 85 03     STA ram_0003_t25
C - - - - - 0x00FF5B 03:BF4B: BD B4 07  LDA ram_07B4_unk,X
C - - - - - 0x00FF5E 03:BF4E: A8        TAY
C - - - - - 0x00FF5F 03:BF4F: B9 EE BF  LDA tbl_BFEE,Y
C - - - - - 0x00FF62 03:BF52: 9D 20 07  STA ram_0720_obj,X
; bzk optimize, TYA instead
C - - - - - 0x00FF65 03:BF55: BD B4 07  LDA ram_07B4_unk,X
C - - - - - 0x00FF68 03:BF58: 0A        ASL
C - - - - - 0x00FF69 03:BF59: A8        TAY
C - - - - - 0x00FF6A 03:BF5A: B9 E4 BF  LDA tbl_BFE4,Y
C - - - - - 0x00FF6D 03:BF5D: 18        CLC
C - - - - - 0x00FF6E 03:BF5E: 65 00     ADC ram_0000_t26_pos_X
C - - - - - 0x00FF70 03:BF60: 9D 4E 06  STA ram_obj_pos_X,X
C - - - - - 0x00FF73 03:BF63: A5 03     LDA ram_0003_t25
C - - - - - 0x00FF75 03:BF65: 69 00     ADC #$00
; bzk optimize, useless STA
C - - - - - 0x00FF77 03:BF67: 85 04     STA ram_0004_t35_useless
C - - - - - 0x00FF79 03:BF69: F0 0A     BEQ bra_BF75
C - - - - - 0x00FF7B 03:BF6B: 29 80     AND #$80
C - - - - - 0x00FF7D 03:BF6D: F0 04     BEQ bra_BF73
C - - - - - 0x00FF7F 03:BF6F: A9 20     LDA #$20
C - - - - - 0x00FF81 03:BF71: D0 02     BNE bra_BF75    ; jmp
bra_BF73:
C - - - - - 0x00FF83 03:BF73: A9 10     LDA #$10
bra_BF75:
C - - - - - 0x00FF85 03:BF75: 1D 00 06  ORA ram_0600_obj,X
C - - - - - 0x00FF88 03:BF78: 9D 00 06  STA ram_0600_obj,X
C - - - - - 0x00FF8B 03:BF7B: B9 E5 BF  LDA tbl_BFE4 + $01,Y
C - - - - - 0x00FF8E 03:BF7E: 18        CLC
C - - - - - 0x00FF8F 03:BF7F: 65 01     ADC ram_0001_t30_pos_Y
C - - - - - 0x00FF91 03:BF81: 9D 68 06  STA ram_obj_pos_Y,X
C - - - - - 0x00FF94 03:BF84: BD 36 07  LDA ram_0736_obj,X
C - - - - - 0x00FF97 03:BF87: 29 03     AND #$03
C - - - - - 0x00FF99 03:BF89: F0 4F     BEQ bra_BFDA
; bzk optimize, useless LDA + STA
C - - - - - 0x00FF9B 03:BF8B: A9 03     LDA #$03
C - - - - - 0x00FF9D 03:BF8D: 85 1C     STA ram_001C_t17_useless
C - - - - - 0x00FF9F 03:BF8F: BC AA 07  LDY ram_07AA_unk,X
C - - - - - 0x00FFA2 03:BF92: BD BE 07  LDA ram_07BE_unk,X
C - - - - - 0x00FFA5 03:BF95: 38        SEC
C - - - - - 0x00FFA6 03:BF96: F9 B4 07  SBC ram_07B4_unk,Y
C - - - - - 0x00FFA9 03:BF99: 85 19     STA ram_0019_t03_hi
; bzk optimize, useless code up to 0x00FFAF
C - - - - - 0x00FFAB 03:BF9B: 10 04     BPL bra_BFA1
C - - - - - 0x00FFAD 03:BF9D: A9 07     LDA #$07
C - - - - - 0x00FFAF 03:BF9F: 85 1C     STA ram_001C_t20_useless
bra_BFA1:
C - - - - - 0x00FFB1 03:BFA1: A9 00     LDA #$00
C - - - - - 0x00FFB3 03:BFA3: 85 18     STA ram_0018_t07_lo
C - - - - - 0x00FFB5 03:BFA5: 85 1A     STA ram_001A_t08_lo
C - - - - - 0x00FFB7 03:BFA7: 85 1B     STA ram_001B_t02_hi
C - - - - - 0x00FFB9 03:BFA9: BC AA 07  LDY ram_07AA_unk,X
C - - - - - 0x00FFBC 03:BFAC: 84 1E     STY ram_001E_t07
C - - - - - 0x00FFBE 03:BFAE: BD 36 07  LDA ram_0736_obj,X
C - - - - - 0x00FFC1 03:BFB1: 85 1F     STA ram_001F_t10
C - - - - - 0x00FFC3 03:BFB3: 8A        TXA
C - - - - - 0x00FFC4 03:BFB4: 48        PHA
C - - - - - 0x00FFC5 03:BFB5: A2 00     LDX #$00
bra_BFB7_loop:
C - - - - - 0x00FFC7 03:BFB7: 46 1F     LSR ram_001F_t10
C - - - - - 0x00FFC9 03:BFB9: 90 18     BCC bra_BFD3
C - - - - - 0x00FFCB 03:BFBB: A4 1E     LDY ram_001E_t07
C - - - - - 0x00FFCD 03:BFBD: BD F3 BF  LDA tbl_BFE1,X
C - - - - - 0x00FFD0 03:BFC0: 39 C8 07  AND ram_07C8_unk,Y
C - - - - - 0x00FFD3 03:BFC3: D0 0E     BNE bra_BFD3
C - - - - - 0x00FFD5 03:BFC5: BD F3 BF  LDA tbl_BFE1,X
C - - - - - 0x00FFD8 03:BFC8: 19 C8 07  ORA ram_07C8_unk,Y
C - - - - - 0x00FFDB 03:BFCB: 99 C8 07  STA ram_07C8_unk,Y
C - - - - - 0x00FFDE 03:BFCE: A9 09     LDA #con_F3D6_09
C - - - - - 0x00FFE0 03:BFD0: 20 B3 F3  JSR sub_0x01F3C3_execute_script
bra_BFD3:
C - - - - - 0x00FFE3 03:BFD3: E8        INX
C - - - - - 0x00FFE4 03:BFD4: E0 02     CPX #$02
C - - - - - 0x00FFE6 03:BFD6: 90 DF     BCC bra_BFB7_loop
C - - - - - 0x00FFE8 03:BFD8: 68        PLA
C - - - - - 0x00FFE9 03:BFD9: AA        TAX
bra_BFDA:
C - - - - - 0x00FFEA 03:BFDA: BC AA 07  LDY ram_07AA_unk,X
C - - - - - 0x00FFED 03:BFDD: B9 B4 07  LDA ram_07B4_unk,Y
C - - - - - 0x00FFF0 03:BFE0: 9D BE 07  STA ram_07BE_unk,X
C - - - - - 0x00FFF3 03:BFE3: 60        RTS



tbl_BFE4:
- D 1 - - - 0x00FFF4 03:BFE4: 30        .byte $30, $18   ; 00 
- D 1 - - - 0x00FFF6 03:BFE6: 28        .byte $28, $00   ; 01 
- D 1 - - - 0x00FFF8 03:BFE8: 48        .byte $48, $08   ; 02 
- D 1 - - - 0x00FFFA 03:BFEA: 70        .byte $70, $10   ; 03 
- D 1 - - - 0x00FFFC 03:BFEC: 60        .byte $60, $F8   ; 04 



tbl_BFEE:
- D 1 - - - 0x00FFFE 03:BFEE: 01        .byte $01   ; 00 
- D 1 - - - 0x00FFFF 03:BFEF: 02        .byte $02   ; 01 
- D 1 - - - 0x010000 03:BFF0: 03        .byte $03   ; 02 
- D 1 - - - 0x010001 03:BFF1: 05        .byte $05   ; 03 
- D 1 - - - 0x010002 03:BFF2: 04        .byte $04   ; 04 



tbl_BFE1:
- D 1 - - - 0x010003 03:BFF3: 40        .byte $40   ; 00 
- - - - - - 0x010004 03:BFF4: 80        .byte $80   ; 01 
- - - - - - 0x010005 03:BFF5: FF        .byte $FF   ; 02 



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_016_0x008E62_19:
C - - J - - 0x008E62 02:8E52: BD 78 07  LDA ram_0778_unk,X
C - - - - - 0x008E65 02:8E55: D0 11     BNE bra_8E68
C - - - - - 0x008E67 02:8E57: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x008E6A 02:8E5A: 9D BE 07  STA ram_07BE_unk,X
C - - - - - 0x008E6D 02:8E5D: FE 78 07  INC ram_0778_unk,X
C - - - - - 0x008E70 02:8E60: 20 C8 90  LDA #$08
                                        STA ram_0600_obj,X
C - - - - - 0x008E73 02:8E63: A9 11     LDA #$11
C - - - - - 0x008E75 02:8E65: 9D 20 07  STA ram_0720_obj,X
bra_8E68:
C - - - - - 0x008E78 02:8E68: 20 B1 93  JSR sub_0x0093C1_06B2x_LSRx4_TAY
C - - - - - 0x008E7B 02:8E6B: D0 E2     BEQ bra_8E6D
C - - - - - 0x008E5F 02:8E4F: 4C 67 BD  JMP loc_BD67
bra_8E6D:
C - - - - - 0x008E7D 02:8E6D: BD 00 06  LDA ram_0600_obj,X
C - - - - - 0x008E80 02:8E70: 29 20     AND #$20
C - - - - - 0x008E82 02:8E72: F0 0E     BEQ bra_8E82
C - - - - - 0x008E84 02:8E74: 20 BA 93  JSR sub_0x0093CA
C - - - - - 0x008E87 02:8E77: B0 08     BCS bra_8E81_RTS
C - - - - - 0x008E89 02:8E79: A0 01     LDY #$01
C - - - - - 0x008E8B 02:8E7B: 20 33 8F  JSR sub_0x008F43
C - - - - - 0x008E8E 02:8E7E: 4C 17 9A  JMP loc_0x009A27
bra_8E81_RTS:
C - - - - - 0x008E91 02:8E81: 60        RTS
bra_8E82:
C - - - - - 0x008E92 02:8E82: 20 33 BD  JSR sub_0x005D43
C - - - - - 0x008E95 02:8E85: 98        TYA
C - - - - - 0x008E96 02:8E86: C5 9B     CMP ram_009B
C - - - - - 0x008E98 02:8E88: F0 05     BEQ bra_8E8F
C - - - - - 0x008E9A 02:8E8A: A9 00     LDA #$00
C - - - - - 0x008E9C 02:8E8C: 9D 68 06  STA ram_obj_pos_Y,X
bra_8E8F:
C - - - - - 0x008E9F 02:8E8F: 84 9B     STY ram_009B
C - - - - - 0x008EA1 02:8E91: 98        TYA
C - - - - - 0x008EA2 02:8E92: 49 01     EOR #$01
C - - - - - 0x008EA4 02:8E94: A8        TAY
C - - - - - 0x008EA5 02:8E95: 84 91     STY ram_0091_pos_Y
C - - - - - 0x008EA7 02:8E97: A0 00     LDY #$00
C - - - - - 0x008EA9 02:8E99: 20 D6 90  JSR sub_0x0090E6_0600x_AND_F0
C - - - - - 0x008EAC 02:8E9C: F0 02     BEQ bra_8EA0
- - - - - - 0x008EAE 02:8E9E: A0 80     LDY #$80
bra_8EA0:
C - - - - - 0x008EB0 02:8EA0: 84 0C     STY ram_000C_t06
C - - - - - 0x008EB2 02:8EA2: BD BE 07  LDA ram_07BE_unk,X
C - - - - - 0x008EB5 02:8EA5: A4 91     LDY ram_0091_pos_Y
C - - - - - 0x008EB7 02:8EA7: 18        CLC
C - - - - - 0x008EB8 02:8EA8: 79 B3 8F  ADC tbl_8FB3,Y
C - - - - - 0x008EBB 02:8EAB: 6A        ROR
C - - - - - 0x008EBC 02:8EAC: 45 0C     EOR ram_000C_t06
C - - - - - 0x008EBE 02:8EAE: 2A        ROL
C - - - - - 0x008EBF 02:8EAF: B0 05     BCS bra_8EB6
C - - - - - 0x008EC1 02:8EB1: A4 91     LDY ram_0091_pos_Y
C - - - - - 0x008EC3 02:8EB3: 20 33 8F  JSR sub_0x008F43
bra_8EB6:
C - - - - - 0x008EC6 02:8EB6: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x008EC9 02:8EB9: 85 91     STA ram_0091_pos_Y
C - - - - - 0x008ECB 02:8EBB: A4 9B     LDY ram_009B
C - - - - - 0x008ECD 02:8EBD: B9 B3 8F  LDA tbl_8FB3,Y
C - - - - - 0x008ED0 02:8EC0: 18        CLC
C - - - - - 0x008ED1 02:8EC1: 7D BE 07  ADC ram_07BE_unk,X
C - - - - - 0x008ED4 02:8EC4: 9D 4E 06  STA ram_obj_pos_X,X
C - - - - - 0x008ED7 02:8EC7: B0 4A     BCS bra_8F13
C - - - - - 0x008ED9 02:8EC9: BD 9C 06  LDA ram_069C_obj,X
C - - - - - 0x008EDC 02:8ECC: F0 05     BEQ bra_8ED3
C - - - - - 0x008EDE 02:8ECE: DE 9C 06  DEC ram_069C_obj,X
C - - - - - 0x008EE1 02:8ED1: D0 40     BNE bra_8F13
bra_8ED3:
C - - - - - 0x008EE3 02:8ED3: A9 00     LDA #$00
C - - - - - 0x008EE5 02:8ED5: 9D 68 06  STA ram_obj_pos_Y,X
C - - - - - 0x008EE8 02:8ED8: 20 BA 93  JSR sub_0x0093CA
C - - - - - 0x008EEB 02:8EDB: B0 36     BCS bra_8F13
C - - - - - 0x008EED 02:8EDD: A9 40     LDA #$40
C - - - - - 0x008EEF 02:8EDF: 9D 9C 06  STA ram_069C_obj,X
C - - - - - 0x008EF2 02:8EE2: A9 81     LDA #$81
C - - - - - 0x008EF4 02:8EE4: A0 06     LDY #$06
C - - - - - 0x008EF6 02:8EE6: 20 D8 93  JSR sub_0x0093E8
C - - - - - 0x008EF9 02:8EE9: B0 11     BCS bra_8EFC
C - - - - - 0x008EFB 02:8EEB: A9 00     LDA #$00
C - - - - - 0x008EFD 02:8EED: 99 B2 06  STA ram_06B2_obj,Y
C - - - - - 0x008F00 02:8EF0: A5 9B     LDA ram_009B
C - - - - - 0x008F02 02:8EF2: 99 A0 07  STA ram_07A0_unk,Y
C - - - - - 0x008F05 02:8EF5: 20 31 8F  JSR sub_0x008F41
C - - - - - 0x008F08 02:8EF8: A9 00     LDA #$00
C - - - - - 0x008F0A 02:8EFA: 85 91     STA ram_0091_pos_Y
bra_8EFC:
C - - - - - 0x008F0C 02:8EFC: A0 06     LDY #$06
C - - - - - 0x008F0E 02:8EFE: B9 68 06  LDA ram_obj_pos_Y,Y
C - - - - - 0x008F11 02:8F01: C9 B8     CMP #$B8
C - - - - - 0x008F13 02:8F03: 90 0E     BCC bra_8F13
C - - - - - 0x008F15 02:8F05: B9 A0 07  LDA ram_07A0_unk,Y
C - - - - - 0x008F18 02:8F08: A8        TAY
C - - - - - 0x008F19 02:8F09: B9 B5 8F  LDA tbl_8FB5,Y
C - - - - - 0x008F1C 02:8F0C: 20 36 8F  JSR sub_0x008F46
C - - - - - 0x008F1F 02:8F0F: A9 92     LDA #$92
C - - - - - 0x008F21 02:8F11: 85 91     STA ram_0091_pos_Y
bra_8F13:
C - - - - - 0x008F23 02:8F13: A5 91     LDA ram_0091_pos_Y
C - - - - - 0x008F25 02:8F15: 9D 68 06  STA ram_obj_pos_Y,X
C - - - - - 0x008F28 02:8F18: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x008F2B 02:8F1B: 48        PHA
C - - - - - 0x008F2C 02:8F1C: BD BE 07  LDA ram_07BE_unk,X
C - - - - - 0x008F2F 02:8F1F: 9D 4E 06  STA ram_obj_pos_X,X
C - - - - - 0x008F32 02:8F22: 20 10 8E  JSR sub_0x008E20
C - - - - - 0x008F35 02:8F25: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x008F38 02:8F28: 9D BE 07  STA ram_07BE_unk,X
C - - - - - 0x008F3B 02:8F2B: 68        PLA
C D 0 - - - 0x008F3C 02:8F2C: 9D 4E 06  STA ram_obj_pos_X,X
C - - - - - 0x008F3F 02:8F2F: 18        CLC
C - - - - - 0x008F40 02:8F30: 60        RTS



loc_BD67:
C D 1 - - - 0x005D77 01:BD67: 20 D6 90  JSR sub_0x0090E6_0600x_AND_F0
C - - - - - 0x005D7A 01:BD6A: D0 0E     BNE bra_BD78
C - - - - - 0x005D7C 01:BD6C: A9 81     LDA #$81
C - - - - - 0x005D7E 01:BD6E: A0 08     LDY #$08
C - - - - - 0x005D80 01:BD70: 20 D8 93  JSR sub_0x0093E8
C - - - - - 0x005D83 01:BD73: B0 05     BCS bra_BD78
C - - - - - 0x005D85 01:BD75: A9 00     LDA #$00
C - - - - - 0x005D87 01:BD77: 99 B2 06  STA ram_06B2_obj,Y
bra_BD78:
C - - - - - 0x005D8A 01:BD7A: 4C 10 8E  JMP loc_0x008E20



tbl_8FB3:
- D 0 - - - 0x008FC3 02:8FB3: 00        .byte $00   ; 00 
- D 0 - - - 0x008FC4 02:8FB4: 7E        .byte $7E   ; 01 



tbl_8FB5:
- D 0 - - - 0x008FC5 02:8FB5: 04        .byte con_8F57_04   ; 00 
- D 0 - - - 0x008FC6 02:8FB6: 0C        .byte con_8F57_0C   ; 01 



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_016_0x00D248_1A:
C - - J - - 0x00D248 03:B238: 20 3E B2  JSR sub_B23E
C - - - - - 0x00D24B 03:B23B: 4C 10 8E  JMP loc_0x008E20



sub_B23E:
C - - - - - 0x00D24E 03:B23E: 20 CE 90  JSR sub_0x0090DE_0600x_ORA_08
C - - - - - 0x00D251 03:B241: BD B4 07  LDA ram_07B4_unk,X
C - - - - - 0x00D254 03:B244: 30 2A     BMI bra_B270
C - - - - - 0x00D256 03:B246: 20 D6 90  JSR sub_0x0090E6_0600x_AND_F0
C - - - - - 0x00D259 03:B249: D0 21     BNE bra_B26C_RTS
C - - - - - 0x00D25B 03:B24B: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x00D25E 03:B24E: 18        CLC
C - - - - - 0x00D25F 03:B24F: 69 40     ADC #$40
C - - - - - 0x00D261 03:B251: C9 50     CMP #$50
C - - - - - 0x00D263 03:B253: 90 17     BCC bra_B26C_RTS
C - - - - - 0x00D265 03:B255: 20 DC 90  JSR sub_0x0090EC
C - - - - - 0x00D268 03:B258: A4 75     LDY ram_stage
C - - - - - 0x00D26A 03:B25A: D9 6D B2  CMP tbl_B26D,Y
C - - - - - 0x00D26D 03:B25D: D0 33     BNE bra_B292
C - - - - - 0x00D26F 03:B25F: A9 0C     LDA #$0C
C - - - - - 0x00D271 03:B261: 9D 82 06  STA ram_0682_obj,X
C - - - - - 0x00D274 03:B264: 9D 20 07  STA ram_0720_obj,X
C - - - - - 0x00D277 03:B267: 20 03 90  JSR sub_0x009013
C - - - - - 0x00D27A 03:B26A: B0 04     BCS bra_B270
bra_B26C_RTS:
C - - - - - 0x00D27C 03:B26C: 60        RTS
bra_B270:
- - - - - - 0x00D280 03:B270: A9 FF     LDA #$FF
- - - - - - 0x00D282 03:B272: 9D B4 07  STA ram_07B4_unk,X
- - - - - - 0x00D285 03:B275: 20 BA 93  JSR sub_0x0093CA
- - - - - - 0x00D288 03:B278: B0 F2     BCS bra_B26C_RTS
- - - - - - 0x00D28A 03:B27A: A9 02     LDA #$02
- - - - - - 0x00D28C 03:B27C: 20 00 97  JSR sub_0x009710
- - - - - - 0x00D28F 03:B27F: A9 04     LDA #$04
- - - - - - 0x00D291 03:B281: 9D B4 07  STA ram_07B4_unk,X
- - - - - - 0x00D294 03:B284: 99 20 07  STA ram_0720_obj,Y
- - - - - - 0x00D297 03:B287: 20 B9 8F  JSR sub_0x008FC9
- - - - - - 0x00D29A 03:B28A: A4 75     LDY ram_stage
- - - - - - 0x00D29C 03:B28C: B9 98 B2  LDA tbl_B298,Y
- - - - - - 0x00D29F 03:B28F: 4C 0E FC  JMP loc_0x01FC1E
bra_B292:
C - - - - - 0x00D2A2 03:B292: A9 00     LDA #$00
C - - - - - 0x00D2A4 03:B294: 9D 20 07  STA ram_0720_obj,X
C - - - - - 0x00D2A7 03:B297: 60        RTS



tbl_B26D:
- D 1 - - - 0x00D27D 03:B26D: 87        .byte $87   ; 00 stage 1
- - - - - - 0x00D27E 03:B26E: 00        .byte $00   ; 01 stage 2
- D 1 - - - 0x00D27F 03:B26F: 71        .byte $71   ; 02 stage 3



tbl_B298:
- - - - - - 0x00D2A8 03:B298: 97        .byte $97   ; 00 stage 1
- - - - - - 0x00D2A9 03:B299: 00        .byte $00   ; 01 stage 2
- - - - - - 0x00D2AA 03:B29A: 78        .byte $78   ; 02 stage 3



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_016_0x008DFA_1B:
C - - J - - 0x008DFA 02:8DEA: 20 1F 8E  JSR sub_8E1F
C - - - - - 0x008DFD 02:8DED: A5 D0     LDA ram_00D0
C - - - - - 0x008DFF 02:8DEF: C9 08     CMP #$08
C - - - - - 0x008E01 02:8DF1: D0 1D     BNE bra_8E10
C - - - - - 0x008E03 02:8DF3: A5 A4     LDA ram_00A4_lo
C - - - - - 0x008E05 02:8DF5: C9 F0     CMP #$F0
C - - - - - 0x008E07 02:8DF7: D0 08     BNE bra_8E01
C - - - - - 0x008E09 02:8DF9: A5 B0     LDA ram_00B0_fr
C - - - - - 0x008E0B 02:8DFB: D0 13     BNE bra_8E10
C - - - - - 0x008E0D 02:8DFD: A9 FF     LDA #$FF    ; > FF00
C - - - - - 0x008E0F 02:8DFF: D0 06     BNE bra_8E07    ; jmp
bra_8E01:
C - - - - - 0x008E11 02:8E01: C9 FE     CMP #$FE
C - - - - - 0x008E13 02:8E03: D0 0B     BNE bra_8E10
C - - - - - 0x008E15 02:8E05: A9 FD     LDA #$FD    ; > FD00
bra_8E07:
C - - - - - 0x008E17 02:8E07: 85 01     STA ram_0001_t04_hi
C - - - - - 0x008E19 02:8E09: A9 00     LDA #$00
C - - - - - 0x008E1B 02:8E0B: 85 00     STA ram_0000_t47_lo
C - - - - - 0x008E1D 02:8E0D: 20 B2 98  JSR sub_0x0098C2
bra_8E10:
                                        JMP loc_0x008E20



sub_8E1F:
C - - - - - 0x008E2F 02:8E1F: A9 06     LDA #$06
C - - - - - 0x008E31 02:8E21: 9D 20 07  STA ram_0720_obj,X
C - - - - - 0x008E34 02:8E24: A9 3C     LDA #$3C
C - - - - - 0x008E36 02:8E26: 20 A1 89  JSR sub_0x0089B1
C - - - - - 0x008E39 02:8E29: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x008E3C 02:8E2C: C9 40     CMP #$40
C - - - - - 0x008E3E 02:8E2E: B0 04     BCS bra_8E34
C - - - - - 0x008E40 02:8E30: A4 D0     LDY ram_00D0
C - - - - - 0x008E42 02:8E32: F0 12     BEQ bra_8E46
bra_8E34:
C - - - - - 0x008E44 02:8E34: A9 10     LDA #$10
C - - - - - 0x008E46 02:8E36: A8        TAY ; 10
C - - - - - 0x008E47 02:8E37: 20 4B 90  JSR sub_0x00905B
C - - - - - 0x008E4A 02:8E3A: B0 93     BCS bra_8E47_RTS
C - - - - - 0x008E4C 02:8E3C: A5 D0     LDA ram_00D0
C - - - - - 0x008E4E 02:8E3E: C9 06     CMP #$06
C - - - - - 0x008E50 02:8E40: 90 8D     BCC bra_8E47_RTS
C - - - - - 0x008E52 02:8E42: 09 80     ORA #$80
C - - - - - 0x008E54 02:8E44: 85 D0     STA ram_00D0
bra_8E46:
C - - - - - 0x008E56 02:8E46: 4C 3A 97  JMP loc_0x00974A
bra_8E47_RTS:
                                        RTS



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_016_0x00F6E2_1C:
C - - J - - 0x00F6E2 03:B6D2: 20 D8 B6  JSR sub_B6D8
C - - - - - 0x00F6E5 03:B6D5: 4C B6 81  JMP loc_0x0081C6



sub_B6D8:
C - - - - - 0x00F6E8 03:B6D8: 20 E3 8F  JSR sub_0x008FF3
C - - - - - 0x00F6EB 03:B6DB: B0 16     BCC bra_B6DD
                                        JMP loc_0x00F703
bra_B6DD:
C - - - - - 0x00F6ED 03:B6DD: BD 78 07  LDA ram_0778_unk,X
C - - - - - 0x00F6F0 03:B6E0: 29 7F     AND #$7F
C - - - - - 0x00F6F2 03:B6E2: C9 03     CMP #$03
C - - - - - 0x00F6F4 03:B6E4: F0 15     BEQ bra_B6FB
C - - - - - 0x00F6F6 03:B6E6: C9 04     CMP #$04
C - - - - - 0x00F6F8 03:B6E8: D0 08     BNE bra_B6F2_RTS
C - - - - - 0x00F6FA 03:B6EA: 20 E2 90  JSR sub_0x0090F2
C - - - - - 0x00F6FD 03:B6ED: A9 05     LDA #$05
C - - - - - 0x00F6FF 03:B6EF: 9D 78 07  STA ram_0778_unk,X
bra_B6F2_RTS:
C - - - - - 0x00F702 03:B6F2: 60        RTS
bra_B6FB:
C - - - - - 0x00F70B 03:B6FB: BD 1A 06  LDA ram_obj_animation_lo,X
C - - - - - 0x00F70E 03:B6FE: F0 06     BEQ bra_B706
C - - - - - 0x00F710 03:B700: A5 23     LDA ram_frm_cnt
C - - - - - 0x00F712 03:B702: 29 0F     AND #$0F
C - - - - - 0x00F714 03:B704: D0 EC     BNE bra_B719_RTS
bra_B706:
C - - - - - 0x00F716 03:B706: 20 2E 94  JSR sub_0x00943E
C - - - - - 0x00F719 03:B709: 9D B4 07  STA ram_07B4_unk,X
C - - - - - 0x00F71C 03:B70C: 20 E2 90  JSR sub_0x0090F2
C - - - - - 0x00F71F 03:B70F: A9 00     LDA #$00
C - - - - - 0x00F721 03:B711: 20 59 89  JSR sub_0x008969
C - - - - - 0x00F724 03:B714: A9 00     LDA #$00
C - - - - - 0x00F726 03:B716: 9D 0A 07  STA ram_070A_obj,X
bra_B719_RTS:
C - - - - - 0x00F729 03:B719: 60        RTS



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ofs_016_0x005F2D_1D:
C - - J - - 0x005F2D 01:BF1D: 20 23 BF  JSR sub_BF23
C - - - - - 0x005F30 01:BF20: 4C 10 8E  JMP loc_0x008E20



sub_BF23:
C - - - - - 0x005F33 01:BF23: BD 78 07  LDA ram_0778_unk,X
C - - - - - 0x005F36 01:BF26: D0 1C     BNE bra_BF44
C - - - - - 0x005F38 01:BF28: BD 82 07  LDA ram_0782_unk,X
C - - - - - 0x005F3B 01:BF2B: 29 7F     AND #$7F
C - - - - - 0x005F3D 01:BF2D: 9D 82 07  STA ram_0782_unk,X
C - - - - - 0x005F40 01:BF30: A9 0A     LDA #$0A
C - - - - - 0x005F42 01:BF32: 9D 00 06  STA ram_0600_obj,X
C - - - - - 0x005F45 01:BF35: A9 80     LDA #$80
C - - - - - 0x005F47 01:BF37: 9D 34 06  STA ram_obj_animation_hi,X
C - - - - - 0x005F4A 01:BF3A: A0 08     LDY #$08
C - - - - - 0x005F4C 01:BF3C: A9 02     LDA #$02
C - - - - - 0x005F4E 01:BF3E: 20 62 97  JSR sub_0x009772
C - - - - - 0x005F51 01:BF41: FE 78 07  INC ram_0778_unk,X
bra_BF44:
C - - - - - 0x005F54 01:BF44: 20 E3 8F  JSR sub_0x008FF3
C - - - - - 0x005F57 01:BF47: B0 33     BCS bra_BF7C
C - - - - - 0x005F59 01:BF49: 20 82 D1  JSR sub_D182
C - - - - - 0x005F5C 01:BF4C: BD 00 06  LDA ram_0600_obj,X
C - - - - - 0x005F5F 01:BF4F: 29 C0     AND #$C0
C - - - - - 0x005F61 01:BF51: D0 26     BNE bra_BF79
C - - - - - 0x005F63 01:BF53: A9 10     LDA #$10
C - - - - - 0x005F65 01:BF55: BC B2 06  LDY ram_06B2_obj,X
C - - - - - 0x005F68 01:BF58: 30 02     BMI bra_BF5C
C - - - - - 0x005F6A 01:BF5A: A9 F0     LDA #$F0
bra_BF5C:
C - - - - - 0x005F6C 01:BF5C: DD 4E 06  CMP ram_obj_pos_X,X
C - - - - - 0x005F6F 01:BF5F: 6A        ROR
C - - - - - 0x005F70 01:BF60: 5D B2 06  EOR ram_06B2_obj,X
C - - - - - 0x005F73 01:BF63: 2A        ROL
C - - - - - 0x005F74 01:BF64: 90 10     BCC bra_BF76
C - - - - - 0x005F76 01:BF66: A9 D8     LDA #$D8
C - - - - - 0x005F78 01:BF68: BC B2 06  LDY ram_06B2_obj,X
C - - - - - 0x005F7B 01:BF6B: 30 02     BMI bra_BF6F
C - - - - - 0x005F7D 01:BF6D: A9 28     LDA #$28
bra_BF6F:
C - - - - - 0x005F7F 01:BF6F: A0 00     LDY #$00
C - - - - - 0x005F81 01:BF71: 20 BC 8F  JSR sub_0x008FCC
C - - - - - 0x005F84 01:BF74: B0 0E     BCS bra_BF84_RTS
bra_BF76:
C - - - - - 0x005F86 01:BF76: 4C E9 95  LDA ram_06B2_obj,X
                                        EOR #$80
                                        STA ram_06B2_obj,X
                                        RTS
bra_BF79:
C - - - - - 0x005F89 01:BF79: 4C 17 9A  JMP loc_0x009A27
bra_BF7C:
C - - - - - 0x005F8C 01:BF7C: 20 F3 8F  JSR sub_0x009003
C - - - - - 0x005F8F 01:BF7F: A0 06     LDY #$06
C - - - - - 0x005F91 01:BF81: 4C 37 97  JMP loc_0x009747
bra_BF84_RTS:
C - - - - - 0x005F94 01:BF84: 60        RTS



sub_D182:
C - - - - - 0x01D192 07:D182: A9 04     LDA #$04
C - - - - - 0x01D194 07:D184: BC B2 06  LDY ram_06B2_obj,X
C - - - - - 0x01D197 07:D187: 10 02     BPL bra_D18B
C - - - - - 0x01D199 07:D189: A9 84     LDA #$84
bra_D18B:
C - - - - - 0x01D19B 07:D18B: 9D B2 06  STA ram_06B2_obj,X
C - - - - - 0x01D19E 07:D18E: 60        RTS



.out .sprintf("Free bytes in bank 20: 0x%04X [%d]", ($C000 - *), ($C000 - *))



