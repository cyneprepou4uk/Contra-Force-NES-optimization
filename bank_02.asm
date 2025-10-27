.segment "BANK_02"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $A000  ; for listing file
; 0x004010-0x00600F



.export sub_0x005D43
.export ofs_016_0x005F2D_1D



sub_0x005D43:
C - - - - - 0x005D43 01:BD33: 20 58 97  JSR sub_0x009768
C - - - - - 0x005D46 01:BD36: 90 26     BCC bra_BD5E
- - - - - - 0x005D48 01:BD38: A0 00     LDY #$00
- - - - - - 0x005D4A 01:BD3A: AD 4E 06  LDA ram_obj_pos_X
- - - - - - 0x005D4D 01:BD3D: CD 4F 06  CMP ram_obj_pos_X + $01
- - - - - - 0x005D50 01:BD40: B0 01     BCS bra_BD43
bra_BD42:
- - - - - - 0x005D52 01:BD42: C8        INY
bra_BD43:
C - - - - - 0x005D53 01:BD43: 98        TYA
C - - - - - 0x005D54 01:BD44: AA        TAX
C - - - - - 0x005D55 01:BD45: 20 7C 96  JSR sub_0x00968C
C - - - - - 0x005D58 01:BD48: A6 53     LDX ram_0053
C - - - - - 0x005D5A 01:BD4A: A0 00     LDY #$00
C - - - - - 0x005D5C 01:BD4C: A5 01     LDA ram_0001_t02_hi
C - - - - - 0x005D5E 01:BD4E: C9 0D     CMP #$0D
C - - - - - 0x005D60 01:BD50: F0 04     BEQ bra_BD56
C - - - - - 0x005D62 01:BD52: 90 01     BCC bra_BD55_RTS
- - - - - - 0x005D64 01:BD54: C8        INY ; 01
bra_BD55_RTS:
C - - - - - 0x005D65 01:BD55: 60        RTS
bra_BD56:
C - - - - - 0x005D66 01:BD56: A5 00     LDA ram_0000_t41_lo
C - - - - - 0x005D68 01:BD58: C9 8B     CMP #$8B
C - - - - - 0x005D6A 01:BD5A: 90 F9     BCC bra_BD55_RTS
C - - - - - 0x005D6C 01:BD5C: C8        INY ; 02
C - - - - - 0x005D6D 01:BD5D: 60        RTS
bra_BD5E:
C - - - - - 0x005D6E 01:BD5E: A0 00     LDY #$00
C - - - - - 0x005D70 01:BD60: B9 82 07  LDA ram_0782_unk,Y
C - - - - - 0x005D73 01:BD63: D0 DE     BNE bra_BD43
- - - - - - 0x005D75 01:BD65: F0 DB     BEQ bra_BD42    ; jmp



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



.out .sprintf("Free bytes in bank 02: 0x%04X [%d]", ($C000 - *), ($C000 - *))



