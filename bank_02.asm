.segment "BANK_02"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $A000  ; for listing file
; 0x004010-0x00600F



.export sub_0x005D43



sub_0x005D43:
C - - - - - 0x005D43 01:BD33: 20 58 97  JSR sub_0x009768
C - - - - - 0x005D46 01:BD36: 90 26     BCC bra_BD5E
- - - - - - 0x005D48 01:BD38: A0 00     LDY #$00
- - - - - - 0x005D4A 01:BD3A: AD 4E 06  LDA ram_obj_pos_X
- - - - - - 0x005D4D 01:BD3D: CD 4F 06  CMP ram_obj_pos_X + $01
- - - - - - 0x005D50 01:BD40: B0 01     BCS bra_BD43
bra_BD42:
- - - - - - 0x005D52 01:BD42: C8        INY ; 01
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



.out .sprintf("Free bytes in bank 02: 0x%04X [%d]", ($C000 - *), ($C000 - *))



