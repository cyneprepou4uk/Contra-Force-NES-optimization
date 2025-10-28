.segment "BANK_22"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $A000  ; for listing file
; 0x044010-0x04600F



.export ofs_017_0x0082F5_00
.export ofs_017_0x0083CF_01



ofs_017_0x0082F5_00:
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




.out .sprintf("Free bytes in bank 22: 0x%04X [%d]", ($C000 - *), ($C000 - *))



