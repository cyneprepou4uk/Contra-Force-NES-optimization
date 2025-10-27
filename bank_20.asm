.segment "BANK_20"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $A000  ; for listing file
; 0x040010-0x04200F



.export ofs_016_0x00F5F1_01



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



.out .sprintf("Free bytes in bank 20: 0x%04X [%d]", ($C000 - *), ($C000 - *))



