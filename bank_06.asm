.segment "BANK_06"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $A000  ; for listing file
; 0x00C010-0x00E00F



.export sub_0x00C011



sub_0x00C011:
C - - - - - 0x00C011 03:A001: 20 DA A0  JSR sub_A0DA
C - - - - - 0x00C014 03:A004: A5 75     LDA ram_stage
C - - - - - 0x00C016 03:A006: C9 03     CMP #$03
C - - - - - 0x00C018 03:A008: D0 13     BNE bra_A01D_RTS
C - - - - - 0x00C01A 03:A00A: A4 63     LDY ram_0063_hi
C - - - - - 0x00C01C 03:A00C: B9 58 A0  LDA tbl_A058,Y
C - - - - - 0x00C01F 03:A00F: F0 0C     BEQ bra_A01D_RTS
C - - - - - 0x00C021 03:A011: A0 08     LDY #$08
bra_A013_loop:
C - - - - - 0x00C023 03:A013: B9 82 07  LDA ram_0782_unk,Y
C - - - - - 0x00C026 03:A016: F0 06     BEQ bra_A01E
C - - - - - 0x00C028 03:A018: C8        INY
C - - - - - 0x00C029 03:A019: C0 0A     CPY #$0A
C - - - - - 0x00C02B 03:A01B: 90 F6     BCC bra_A013_loop
bra_A01D_RTS:
C - - - - - 0x00C02D 03:A01D: 60        RTS
bra_A01E:
C - - - - - 0x00C02E 03:A01E: A2 09     LDX #$09
C - - - - - 0x00C030 03:A020: A9 38     LDA #$38
C - - - - - 0x00C032 03:A022: 85 0A     STA ram_000A_t09
C - - - - - 0x00C034 03:A024: 20 D3 8B  JSR sub_0x008BE3
C - - - - - 0x00C037 03:A027: A9 00     LDA #$00
C - - - - - 0x00C039 03:A029: 99 20 07  STA ram_0720_obj,Y
C - - - - - 0x00C03C 03:A02C: 99 00 06  STA ram_0600_obj,Y
C - - - - - 0x00C03F 03:A02F: 99 78 07  STA ram_0778_unk,Y
C - - - - - 0x00C042 03:A032: A9 00     LDA #$00
C - - - - - 0x00C044 03:A034: 99 4E 06  STA ram_obj_pos_X,Y
C - - - - - 0x00C047 03:A037: A5 29     LDA ram_random
C - - - - - 0x00C049 03:A039: 29 03     AND #$03
C - - - - - 0x00C04B 03:A03B: AA        TAX
C - - - - - 0x00C04C 03:A03C: 99 AA 07  STA ram_07AA_unk,Y
C - - - - - 0x00C04F 03:A03F: BD 77 A0  LDA tbl_A077,X
C - - - - - 0x00C052 03:A042: 99 68 06  STA ram_obj_pos_Y,Y
C - - - - - 0x00C055 03:A045: BD 7B A0  LDA tbl_A07B,X
C - - - - - 0x00C058 03:A048: 99 B2 06  STA ram_06B2_obj,Y
C - - - - - 0x00C05B 03:A04B: A9 26     LDA #con_chr_bank + $26
C - - - - - 0x00C05D 03:A04D: 85 7B     STA ram_chr_bank + $04
C - - - - - 0x00C05F 03:A04F: A9 0C     LDA #$0C
C - - - - - 0x00C061 03:A051: C5 89     CMP ram_0089
C - - - - - 0x00C063 03:A053: F0 C8     BEQ bra_A01D_RTS
C - - - - - 0x00C065 03:A055: 4C 93 A4  JMP loc_A493



tbl_A058:
- - - - - - 0x00C068 03:A058: 00        .byte $00   ; 00 
- - - - - - 0x00C069 03:A059: 00        .byte $00   ; 01 
- - - - - - 0x00C06A 03:A05A: 00        .byte $00   ; 02 
- D 1 - - - 0x00C06B 03:A05B: 00        .byte $00   ; 03 
- D 1 - - - 0x00C06C 03:A05C: 00        .byte $00   ; 04 
- D 1 - - - 0x00C06D 03:A05D: 00        .byte $00   ; 05 
- D 1 - - - 0x00C06E 03:A05E: 00        .byte $00   ; 06 
- D 1 - - - 0x00C06F 03:A05F: 01        .byte $01   ; 07 
- D 1 - - - 0x00C070 03:A060: 01        .byte $01   ; 08 
- D 1 - - - 0x00C071 03:A061: 01        .byte $01   ; 09 
- D 1 - - - 0x00C072 03:A062: 01        .byte $01   ; 0A 
- D 1 - - - 0x00C073 03:A063: 01        .byte $01   ; 0B 
- D 1 - - - 0x00C074 03:A064: 01        .byte $01   ; 0C 
- D 1 - - - 0x00C075 03:A065: 01        .byte $01   ; 0D 
- D 1 - - - 0x00C076 03:A066: 01        .byte $01   ; 0E 
- D 1 - - - 0x00C077 03:A067: 01        .byte $01   ; 0F 
- D 1 - - - 0x00C078 03:A068: 01        .byte $01   ; 10 
- D 1 - - - 0x00C079 03:A069: 00        .byte $00   ; 11 
- D 1 - - - 0x00C07A 03:A06A: 00        .byte $00   ; 12 
- D 1 - - - 0x00C07B 03:A06B: 00        .byte $00   ; 13 
- D 1 - - - 0x00C07C 03:A06C: 01        .byte $01   ; 14 
- D 1 - - - 0x00C07D 03:A06D: 01        .byte $01   ; 15 
- D 1 - - - 0x00C07E 03:A06E: 00        .byte $00   ; 16 
- D 1 - - - 0x00C07F 03:A06F: 00        .byte $00   ; 17 
- D 1 - - - 0x00C080 03:A070: 01        .byte $01   ; 18 
- D 1 - - - 0x00C081 03:A071: 00        .byte $00   ; 19 
- D 1 - - - 0x00C082 03:A072: 00        .byte $00   ; 1A 
- D 1 - - - 0x00C083 03:A073: 00        .byte $00   ; 1B 
- D 1 - - - 0x00C084 03:A074: 00        .byte $00   ; 1C 
- D 1 - - - 0x00C085 03:A075: 01        .byte $01   ; 1D 
- - - - - - 0x00C086 03:A076: 01        .byte $01   ; 1E 



tbl_A077:
- D 1 - - - 0x00C087 03:A077: 30        .byte $30   ; 00 
- D 1 - - - 0x00C088 03:A078: 60        .byte $60   ; 01 
- D 1 - - - 0x00C089 03:A079: A0        .byte $A0   ; 02 
- D 1 - - - 0x00C08A 03:A07A: C0        .byte $C0   ; 03 



tbl_A07B:
- D 1 - - - 0x00C08B 03:A07B: 0E        .byte $0E   ; 00 
- D 1 - - - 0x00C08C 03:A07C: 0A        .byte $0A   ; 01 
- D 1 - - - 0x00C08D 03:A07D: 0F        .byte $0F   ; 02 
- D 1 - - - 0x00C08E 03:A07E: 0D        .byte $0D   ; 03 



sub_A07F:
C - - - - - 0x00C08F 03:A07F: A0 02     LDY #$02
C - - - - - 0x00C091 03:A081: B9 83 07  LDA ram_0782_unk + $01,Y
C - - - - - 0x00C094 03:A084: D0 1B     BNE bra_A0A1_loop
C - - - - - 0x00C096 03:A086: A9 28     LDA #$28
C - - - - - 0x00C098 03:A088: 99 83 07  STA ram_0782_unk + $01,Y
C - - - - - 0x00C09B 03:A08B: A9 00     LDA #$00
C - - - - - 0x00C09D 03:A08D: 99 D3 07  STA ram_07D2_unk + $01,Y
C - - - - - 0x00C0A0 03:A090: A2 03     LDX #$03
bra_A092_loop:
C - - - - - 0x00C0A2 03:A092: 9D 46 03  STA ram_0346,X
C - - - - - 0x00C0A5 03:A095: CA        DEX
C - - - - - 0x00C0A6 03:A096: 10 FA     BPL bra_A092_loop
C - - - - - 0x00C0A8 03:A098: A2 05     LDX #$05
bra_A09A_loop:
C - - - - - 0x00C0AA 03:A09A: 95 A0     STA ram_array_00A0,X
C - - - - - 0x00C0AC 03:A09C: 95 AB     STA ram_array_00AB,X
C - - - - - 0x00C0AE 03:A09E: CA        DEX
C - - - - - 0x00C0AF 03:A09F: 10 F9     BPL bra_A09A_loop
bra_A0A1_loop:
C - - - - - 0x00C0B1 03:A0A1: B9 82 07  LDA ram_0782_unk,Y
C - - - - - 0x00C0B4 03:A0A4: F0 0B     BEQ bra_A0B1
C - - - - - 0x00C0B6 03:A0A6: C9 28     CMP #$28
C - - - - - 0x00C0B8 03:A0A8: F0 07     BEQ bra_A0B1
C - - - - - 0x00C0BA 03:A0AA: B9 00 06  LDA ram_0600_obj,Y
C - - - - - 0x00C0BD 03:A0AD: 29 F0     AND #$F0
C - - - - - 0x00C0BF 03:A0AF: F0 44     BEQ bra_A0F5_RTS
bra_A0B1:
C - - - - - 0x00C0C1 03:A0B1: C8        INY
C - - - - - 0x00C0C2 03:A0B2: C0 0A     CPY #$0A
C - - - - - 0x00C0C4 03:A0B4: 90 EB     BCC bra_A0A1_loop
C - - - - - 0x00C0C6 03:A0B6: AD 43 03  LDA ram_0343
C - - - - - 0x00C0C9 03:A0B9: C9 07     CMP #$07
C - - - - - 0x00C0CB 03:A0BB: F0 38     BEQ bra_A0F5_RTS
C - - - - - 0x00C0CD 03:A0BD: A5 8C     LDA ram_008C
C - - - - - 0x00C0CF 03:A0BF: D0 34     BNE bra_A0F5_RTS
C - - - - - 0x00C0D1 03:A0C1: A0 02     LDY #$02
C - - - - - 0x00C0D3 03:A0C3: A9 12     LDA #$12
C - - - - - 0x00C0D5 03:A0C5: 99 82 07  STA ram_0782_unk,Y
C - - - - - 0x00C0D8 03:A0C8: A9 80     LDA #$80
C - - - - - 0x00C0DA 03:A0CA: 99 4E 06  STA ram_obj_pos_X,Y
C - - - - - 0x00C0DD 03:A0CD: A9 40     LDA #$40
C - - - - - 0x00C0DF 03:A0CF: 99 68 06  STA ram_obj_pos_Y,Y
C - - - - - 0x00C0E2 03:A0D2: A9 1A     LDA #$1A
C - - - - - 0x00C0E4 03:A0D4: 99 C8 07  STA ram_07C8_unk,Y
C - - - - - 0x00C0E7 03:A0D7: 4C 78 A4  JMP loc_A478



sub_A0DA:
C - - - - - 0x00C0EA 03:A0DA: A5 75     LDA ram_stage
C - - - - - 0x00C0EC 03:A0DC: C9 04     CMP #$04
C - - - - - 0x00C0EE 03:A0DE: D0 16     BNE bra_A0F6
C - - - - - 0x00C0F0 03:A0E0: 20 7F A0  JSR sub_A07F
C - - - - - 0x00C0F3 03:A0E3: AD 84 07  LDA ram_0782_unk + $02
C - - - - - 0x00C0F6 03:A0E6: F0 12     BEQ bra_A0FA
C - - - - - 0x00C0F8 03:A0E8: A5 8C     LDA ram_008C
C - - - - - 0x00C0FA 03:A0EA: C9 05     CMP #$05
C - - - - - 0x00C0FC 03:A0EC: F0 07     BEQ bra_A0F5_RTS
C - - - - - 0x00C0FE 03:A0EE: AD 02 06  LDA ram_0600_obj + $02
C - - - - - 0x00C101 03:A0F1: 29 F0     AND #$F0
C - - - - - 0x00C103 03:A0F3: D0 05     BNE bra_A0FA
bra_A0F5_RTS:
loc_A0F5_RTS:
C D 1 - - - 0x00C105 03:A0F5: 60        RTS
bra_A0F6:
C - - - - - 0x00C106 03:A0F6: A5 8C     LDA ram_008C
C - - - - - 0x00C108 03:A0F8: D0 FB     BNE bra_A0F5_RTS
bra_A0FA:
C - - - - - 0x00C10A 03:A0FA: A5 69     LDA ram_0069
C - - - - - 0x00C10C 03:A0FC: 05 6A     ORA ram_006A
C - - - - - 0x00C10E 03:A0FE: 05 6B     ORA ram_006B
C - - - - - 0x00C110 03:A100: 05 6C     ORA ram_006C
C - - - - - 0x00C112 03:A102: F0 F1     BEQ bra_A0F5_RTS
C - - - - - 0x00C114 03:A104: A5 75     LDA ram_stage
C - - - - - 0x00C116 03:A106: F0 03     BEQ bra_A10B
C - - - - - 0x00C118 03:A108: 4C B7 A1  JMP loc_A1B7
bra_A10B:
C - - - - - 0x00C11B 03:A10B: 20 5E A3  JSR sub_A35E_prepare_data_pointers
C - - - - - 0x00C11E 03:A10E: A4 60     LDY ram_0060_hi
C - - - - - 0x00C120 03:A110: A5 69     LDA ram_0069
C - - - - - 0x00C122 03:A112: 10 01     BPL bra_A115
C - - - - - 0x00C124 03:A114: 88        DEY
bra_A115:
C - - - - - 0x00C125 03:A115: C0 FF     CPY #$FF
C - - - - - 0x00C127 03:A117: D0 03     BNE bra_A11C
; FF
C - - - - - 0x00C129 03:A119: 4C F5 A0  JMP loc_A0F5_RTS
bra_A11C:
C - - - - - 0x00C12C 03:A11C: 98        TYA
C - - - - - 0x00C12D 03:A11D: 0A        ASL
C - - - - - 0x00C12E 03:A11E: A8        TAY
C - - - - - 0x00C12F 03:A11F: B1 08     LDA (ram_0008_t01_data),Y
C - - - - - 0x00C131 03:A121: 85 0A     STA ram_000A_t02_data
C - - - - - 0x00C133 03:A123: C8        INY
C - - - - - 0x00C134 03:A124: B1 08     LDA (ram_0008_t01_data),Y
C - - - - - 0x00C136 03:A126: 85 0B     STA ram_000A_t02_data + $01
C - - - - - 0x00C138 03:A128: A0 00     LDY #$00
loc_A12A_loop:
bra_A12A_loop:
C D 1 - - - 0x00C13A 03:A12A: B1 0A     LDA (ram_000A_t02_data),Y
C - - - - - 0x00C13C 03:A12C: 18        CLC
C - - - - - 0x00C13D 03:A12D: 69 01     ADC #$01
C - - - - - 0x00C13F 03:A12F: F0 C4     BEQ bra_A0F5_RTS    ; if was FF
C - - - - - 0x00C141 03:A131: 29 FC     AND #$FC
C - - - - - 0x00C143 03:A133: 85 00     STA ram_0000_t1D
C - - - - - 0x00C145 03:A135: A5 61     LDA ram_0061_lo
C - - - - - 0x00C147 03:A137: 29 FC     AND #$FC
C - - - - - 0x00C149 03:A139: C5 00     CMP ram_0000_t1D
C - - - - - 0x00C14B 03:A13B: F0 44     BEQ bra_A181
C - - - - - 0x00C14D 03:A13D: C8        INY
C - - - - - 0x00C14E 03:A13E: C8        INY
C - - - - - 0x00C14F 03:A13F: B1 0A     LDA (ram_000A_t02_data),Y
C - - - - - 0x00C151 03:A141: C9 15     CMP #$15
C - - - - - 0x00C153 03:A143: F0 04     BEQ bra_A149
bra_A145_loop:
C - - - - - 0x00C155 03:A145: C8        INY
C - - - - - 0x00C156 03:A146: C8        INY
C - - - - - 0x00C157 03:A147: D0 E1     BNE bra_A12A_loop   ; jmp
bra_A149:
C - - - - - 0x00C159 03:A149: A5 69     LDA ram_0069
C - - - - - 0x00C15B 03:A14B: 10 F8     BPL bra_A145_loop
C - - - - - 0x00C15D 03:A14D: A5 61     LDA ram_0061_lo
C - - - - - 0x00C15F 03:A14F: 29 FC     AND #$FC
C - - - - - 0x00C161 03:A151: 38        SEC
C - - - - - 0x00C162 03:A152: E5 00     SBC ram_0000_t1D
C - - - - - 0x00C164 03:A154: 90 EF     BCC bra_A145_loop
- - - - - - 0x00C166 03:A156: C9 28     CMP #$28
- - - - - - 0x00C168 03:A158: B0 EB     BCS bra_A145_loop
- - - - - - 0x00C16A 03:A15A: 49 FF     EOR #$FF
- - - - - - 0x00C16C 03:A15C: 85 12     STA ram_0012_t08
- - - - - - 0x00C16E 03:A15E: 88        DEY
- - - - - - 0x00C16F 03:A15F: 88        DEY
- - - - - - 0x00C170 03:A160: 20 9A A1  JSR sub_A19A
- - - - - - 0x00C173 03:A163: D0 2F     BNE bra_A194
- - - - - - 0x00C175 03:A165: A5 12     LDA ram_0012_t08
- - - - - - 0x00C177 03:A167: 99 4E 06  STA ram_obj_pos_X,Y
- - - - - - 0x00C17A 03:A16A: A9 30     LDA #$30
- - - - - - 0x00C17C 03:A16C: 99 00 06  STA ram_0600_obj,Y
- - - - - - 0x00C17F 03:A16F: A5 1C     LDA ram_001C_t05
- - - - - - 0x00C181 03:A171: 99 82 07  STA ram_0782_unk,Y
- - - - - - 0x00C184 03:A174: A5 0C     LDA ram_000C_t09
- - - - - - 0x00C186 03:A176: 99 68 06  STA ram_obj_pos_Y,Y
- - - - - - 0x00C189 03:A179: A9 00     LDA #$00
- - - - - - 0x00C18B 03:A17B: 20 A8 A3  JSR sub_A3A8
- - - - - - 0x00C18E 03:A17E: 4C 94 A1  JMP loc_A194
bra_A181:
C - - - - - 0x00C191 03:A181: 20 9A A1  JSR sub_A19A
C - - - - - 0x00C194 03:A184: D0 0E     BNE bra_A194
C - - - - - 0x00C196 03:A186: 20 A3 A1  JSR sub_A1A3
C - - - - - 0x00C199 03:A189: 20 8A A3  JSR sub_A38A
C - - - - - 0x00C19C 03:A18C: A5 0C     LDA ram_000C_t09
C - - - - - 0x00C19E 03:A18E: 99 68 06  STA ram_obj_pos_Y,Y
C - - - - - 0x00C1A1 03:A191: 20 A3 A3  JSR sub_A3A3
bra_A194:
loc_A194:
C - - - - - 0x00C1A4 03:A194: A4 06     LDY ram_0006_t13
C - - - - - 0x00C1A6 03:A196: C8        INY
C - - - - - 0x00C1A7 03:A197: 4C 2A A1  JMP loc_A12A_loop



sub_A19A:
; out
    ; Z
        ; 0 = 
        ; 1 = 
    ; ram_000C_t09
C - - - - - 0x00C1AA 03:A19A: C8        INY
C - - - - - 0x00C1AB 03:A19B: B1 0A     LDA (ram_000A_t02_data),Y
C - - - - - 0x00C1AD 03:A19D: 85 0C     STA ram_000C_t09
C - - - - - 0x00C1AF 03:A19F: C8        INY
C - - - - - 0x00C1B0 03:A1A0: 4C 6B A3  JMP loc_A36B



sub_A1A3:
C - - - - - 0x00C1B3 03:A1A3: A5 1C     LDA ram_001C_t05
C - - - - - 0x00C1B5 03:A1A5: 99 82 07  STA ram_0782_unk,Y
C - - - - - 0x00C1B8 03:A1A8: A9 FF     LDA #$FF
C - - - - - 0x00C1BA 03:A1AA: 99 4E 06  STA ram_obj_pos_X,Y
C - - - - - 0x00C1BD 03:A1AD: A5 69     LDA ram_0069
C - - - - - 0x00C1BF 03:A1AF: 10 05     BPL bra_A1B6_RTS
C - - - - - 0x00C1C1 03:A1B1: A9 00     LDA #$00
C - - - - - 0x00C1C3 03:A1B3: 99 4E 06  STA ram_obj_pos_X,Y
bra_A1B6_RTS:
C - - - - - 0x00C1C6 03:A1B6: 60        RTS



loc_A1B7:
C D 1 - - - 0x00C1C7 03:A1B7: 20 52 A3  JSR sub_A352_prepare_data_pointers
C - - - - - 0x00C1CA 03:A1BA: A4 88     LDY ram_x2_stage
C - - - - - 0x00C1CC 03:A1BC: B9 E5 A2  LDA tbl_A2E5,Y
C - - - - - 0x00C1CF 03:A1BF: 85 0E     STA ram_000E_t01_data
C - - - - - 0x00C1D1 03:A1C1: B9 E6 A2  LDA tbl_A2E5 + $01,Y
C - - - - - 0x00C1D4 03:A1C4: 85 0F     STA ram_000E_t01_data + $01
C - - - - - 0x00C1D6 03:A1C6: A9 00     LDA #$00
C - - - - - 0x00C1D8 03:A1C8: 85 19     STA ram_0019_t06
C - - - - - 0x00C1DA 03:A1CA: A5 23     LDA ram_frm_cnt
C - - - - - 0x00C1DC 03:A1CC: 29 01     AND #$01
C - - - - - 0x00C1DE 03:A1CE: D0 03     BNE bra_A1D3
C - - - - - 0x00C1E0 03:A1D0: 4C 67 A2  JMP loc_A267
bra_A1D3:
C - - - - - 0x00C1E3 03:A1D3: A5 6B     LDA ram_006B
C - - - - - 0x00C1E5 03:A1D5: 05 6C     ORA ram_006C
C - - - - - 0x00C1E7 03:A1D7: F0 DD     BEQ bra_A1B6_RTS
C - - - - - 0x00C1E9 03:A1D9: A5 60     LDA ram_0060_hi
C - - - - - 0x00C1EB 03:A1DB: 85 18     STA ram_0018_t08
loc_A1DD:
C D 1 - - - 0x00C1ED 03:A1DD: A4 63     LDY ram_0063_hi
C - - - - - 0x00C1EF 03:A1DF: A5 6B     LDA ram_006B
C - - - - - 0x00C1F1 03:A1E1: 30 01     BMI bra_A1E4
C - - - - - 0x00C1F3 03:A1E3: C8        INY
bra_A1E4:
C - - - - - 0x00C1F4 03:A1E4: 20 1F A3  JSR sub_A31F
C - - - - - 0x00C1F7 03:A1E7: A5 61     LDA ram_0061_lo
C - - - - - 0x00C1F9 03:A1E9: 85 1A     STA ram_001A_t02
C - - - - - 0x00C1FB 03:A1EB: A5 64     LDA ram_0064_lo
C - - - - - 0x00C1FD 03:A1ED: 29 F8     AND #$F8
C - - - - - 0x00C1FF 03:A1EF: 85 0C     STA ram_000C_t01_distance
loc_A1F1:
C D 1 - - - 0x00C201 03:A1F1: A0 00     LDY #$00
C - - - - - 0x00C203 03:A1F3: B1 0A     LDA (ram_000A_t02_data),Y
C - - - - - 0x00C205 03:A1F5: C9 FF     CMP #$FF
C - - - - - 0x00C207 03:A1F7: F0 60     BEQ bra_A259
C - - - - - 0x00C209 03:A1F9: A5 19     LDA ram_0019_t06
C - - - - - 0x00C20B 03:A1FB: F0 08     BEQ bra_A205
C - - - - - 0x00C20D 03:A1FD: B1 0A     LDA (ram_000A_t02_data),Y
C - - - - - 0x00C20F 03:A1FF: C5 1A     CMP ram_001A_t02
C - - - - - 0x00C211 03:A201: B0 50     BCS bra_A253
C - - - - - 0x00C213 03:A203: 90 06     BCC bra_A20B    ; jmp
bra_A205:
C - - - - - 0x00C215 03:A205: B1 0A     LDA (ram_000A_t02_data),Y
C - - - - - 0x00C217 03:A207: C5 1A     CMP ram_001A_t02
C - - - - - 0x00C219 03:A209: 90 48     BCC bra_A253
bra_A20B:
C - - - - - 0x00C21B 03:A20B: 85 1B     STA ram_001B_t06
C - - - - - 0x00C21D 03:A20D: C8        INY
C - - - - - 0x00C21E 03:A20E: B1 0A     LDA (ram_000A_t02_data),Y
C - - - - - 0x00C220 03:A210: 29 F8     AND #$F8
C - - - - - 0x00C222 03:A212: C5 0C     CMP ram_000C_t01_distance
C - - - - - 0x00C224 03:A214: D0 3D     BNE bra_A253
C - - - - - 0x00C226 03:A216: A0 02     LDY #$02
C - - - - - 0x00C228 03:A218: 20 6B A3  JSR sub_A36B
C - - - - - 0x00C22B 03:A21B: D0 36     BNE bra_A253
C - - - - - 0x00C22D 03:A21D: A5 1C     LDA ram_001C_t05
C - - - - - 0x00C22F 03:A21F: 99 82 07  STA ram_0782_unk,Y
C - - - - - 0x00C232 03:A222: A9 FF     LDA #$FF
C - - - - - 0x00C234 03:A224: 99 68 06  STA ram_obj_pos_Y,Y
C - - - - - 0x00C237 03:A227: A5 6B     LDA ram_006B
C - - - - - 0x00C239 03:A229: 10 05     BPL bra_A230
C - - - - - 0x00C23B 03:A22B: A9 00     LDA #$00
C - - - - - 0x00C23D 03:A22D: 99 68 06  STA ram_obj_pos_Y,Y
bra_A230:
C - - - - - 0x00C240 03:A230: A5 1C     LDA ram_001C_t05
C - - - - - 0x00C242 03:A232: 29 7F     AND #$7F
C - - - - - 0x00C244 03:A234: C9 3E     CMP #$3E
C - - - - - 0x00C246 03:A236: 90 10     BCC bra_A248
C - - - - - 0x00C248 03:A238: A5 0D     LDA ram_000D_t04
C - - - - - 0x00C24A 03:A23A: 29 40     AND #$40
C - - - - - 0x00C24C 03:A23C: F0 0A     BEQ bra_A248
C - - - - - 0x00C24E 03:A23E: B9 68 06  LDA ram_obj_pos_Y,Y
C - - - - - 0x00C251 03:A241: D0 05     BNE bra_A248
C - - - - - 0x00C253 03:A243: A9 F0     LDA #$F0
C - - - - - 0x00C255 03:A245: 99 68 06  STA ram_obj_pos_Y,Y
bra_A248:
C - - - - - 0x00C258 03:A248: A5 1B     LDA ram_001B_t06
C - - - - - 0x00C25A 03:A24A: 38        SEC
C - - - - - 0x00C25B 03:A24B: E5 1A     SBC ram_001A_t02
C - - - - - 0x00C25D 03:A24D: 99 4E 06  STA ram_obj_pos_X,Y
C - - - - - 0x00C260 03:A250: 20 A3 A3  JSR sub_A3A3
bra_A253:
C - - - - - 0x00C263 03:A253: 20 CB A2  JSR sub_A2CB
C - - - - - 0x00C266 03:A256: 4C F1 A1  JMP loc_A1F1
bra_A259:
C - - - - - 0x00C269 03:A259: E6 19     INC ram_0019_t06
C - - - - - 0x00C26B 03:A25B: A5 19     LDA ram_0019_t06
C - - - - - 0x00C26D 03:A25D: 29 01     AND #$01
C - - - - - 0x00C26F 03:A25F: F0 05     BEQ bra_A266_RTS
C - - - - - 0x00C271 03:A261: E6 18     INC ram_0018_t08
C - - - - - 0x00C273 03:A263: 4C DD A1  JMP loc_A1DD
bra_A266_RTS:
C - - - - - 0x00C276 03:A266: 60        RTS



loc_A267:
C D 1 - - - 0x00C277 03:A267: A5 69     LDA ram_0069
C - - - - - 0x00C279 03:A269: 05 6A     ORA ram_006A
C - - - - - 0x00C27B 03:A26B: F0 F9     BEQ bra_A266_RTS
C - - - - - 0x00C27D 03:A26D: A4 63     LDY ram_0063_hi
loc_A26F_loop:
C D 1 - - - 0x00C27F 03:A26F: A5 60     LDA ram_0060_hi
C - - - - - 0x00C281 03:A271: 85 18     STA ram_0018_t08
C - - - - - 0x00C283 03:A273: A5 69     LDA ram_0069
C - - - - - 0x00C285 03:A275: 30 02     BMI bra_A279
C - - - - - 0x00C287 03:A277: E6 18     INC ram_0018_t08
bra_A279:
C - - - - - 0x00C289 03:A279: 20 1F A3  JSR sub_A31F
C - - - - - 0x00C28C 03:A27C: A5 64     LDA ram_0064_lo
C - - - - - 0x00C28E 03:A27E: 85 1A     STA ram_001A_t03
C - - - - - 0x00C290 03:A280: A5 61     LDA ram_0061_lo
C - - - - - 0x00C292 03:A282: 29 FC     AND #$FC
C - - - - - 0x00C294 03:A284: 85 0C     STA ram_000C_t01_distance
loc_A286:
C D 1 - - - 0x00C296 03:A286: A0 00     LDY #$00
C - - - - - 0x00C298 03:A288: B1 0A     LDA (ram_000A_t02_data),Y
C - - - - - 0x00C29A 03:A28A: 85 0D     STA ram_000D_t05
C - - - - - 0x00C29C 03:A28C: C9 FF     CMP #$FF
C - - - - - 0x00C29E 03:A28E: F0 47     BEQ bra_A2D7_FF
C - - - - - 0x00C2A0 03:A290: C8        INY ; 01
C - - - - - 0x00C2A1 03:A291: A5 19     LDA ram_0019_t06
C - - - - - 0x00C2A3 03:A293: F0 08     BEQ bra_A29D
C - - - - - 0x00C2A5 03:A295: B1 0A     LDA (ram_000A_t02_data),Y
C - - - - - 0x00C2A7 03:A297: C5 1A     CMP ram_001A_t03
C - - - - - 0x00C2A9 03:A299: B0 2A     BCS bra_A2C5
C - - - - - 0x00C2AB 03:A29B: 90 06     BCC bra_A2A3    ; jmp
bra_A29D:
C - - - - - 0x00C2AD 03:A29D: B1 0A     LDA (ram_000A_t02_data),Y
C - - - - - 0x00C2AF 03:A29F: C5 1A     CMP ram_001A_t03
C - - - - - 0x00C2B1 03:A2A1: 90 22     BCC bra_A2C5
bra_A2A3:
C - - - - - 0x00C2B3 03:A2A3: 85 1B     STA ram_001B_t07
C - - - - - 0x00C2B5 03:A2A5: A5 0D     LDA ram_000D_t05
C - - - - - 0x00C2B7 03:A2A7: 29 FC     AND #$FC
C - - - - - 0x00C2B9 03:A2A9: C5 0C     CMP ram_000C_t01_distance
C - - - - - 0x00C2BB 03:A2AB: D0 18     BNE bra_A2C5
C - - - - - 0x00C2BD 03:A2AD: A0 02     LDY #$02
C - - - - - 0x00C2BF 03:A2AF: 20 6B A3  JSR sub_A36B
C - - - - - 0x00C2C2 03:A2B2: D0 11     BNE bra_A2C5
C - - - - - 0x00C2C4 03:A2B4: 20 A3 A1  JSR sub_A1A3
C - - - - - 0x00C2C7 03:A2B7: 20 8A A3  JSR sub_A38A
C - - - - - 0x00C2CA 03:A2BA: A5 1B     LDA ram_001B_t07
C - - - - - 0x00C2CC 03:A2BC: 38        SEC
C - - - - - 0x00C2CD 03:A2BD: E5 1A     SBC ram_001A_t03
C - - - - - 0x00C2CF 03:A2BF: 99 68 06  STA ram_obj_pos_Y,Y
C - - - - - 0x00C2D2 03:A2C2: 20 A3 A3  JSR sub_A3A3
bra_A2C5:
C - - - - - 0x00C2D5 03:A2C5: 20 CB A2  JSR sub_A2CB
C - - - - - 0x00C2D8 03:A2C8: 4C 86 A2  JMP loc_A286
sub_A2CB:
C - - - - - 0x00C2DB 03:A2CB: A5 0A     LDA ram_000A_t02_data
C - - - - - 0x00C2DD 03:A2CD: 18        CLC
C - - - - - 0x00C2DE 03:A2CE: 69 04     ADC #$04
C - - - - - 0x00C2E0 03:A2D0: 85 0A     STA ram_000A_t02_data
C - - - - - 0x00C2E2 03:A2D2: 90 02     BCC bra_A2D6_RTS
; if overflow
C - - - - - 0x00C2E4 03:A2D4: E6 0B     INC ram_000A_t02_data + $01
bra_A2D6_RTS:
C - - - - - 0x00C2E6 03:A2D6: 60        RTS
bra_A2D7_FF:
C - - - - - 0x00C2E7 03:A2D7: E6 19     INC ram_0019_t06
C - - - - - 0x00C2E9 03:A2D9: A5 19     LDA ram_0019_t06
C - - - - - 0x00C2EB 03:A2DB: 29 01     AND #$01
C - - - - - 0x00C2ED 03:A2DD: F0 F7     BEQ bra_A2D6_RTS
C - - - - - 0x00C2EF 03:A2DF: A4 63     LDY ram_0063_hi
C - - - - - 0x00C2F1 03:A2E1: C8        INY
C - - - - - 0x00C2F2 03:A2E2: 4C 6F A2  JMP loc_A26F_loop



tbl_A2E5:
- - - - - - 0x00C2F5 03:A2E5: EF A2     .word _off014_A2EF_00_stage_1
- D 1 - - - 0x00C2F7 03:A2E7: EF A2     .word _off014_A2EF_01_stage_2
- D 1 - - - 0x00C2F9 03:A2E9: EF A2     .word _off014_A2EF_02_stage_3
- D 1 - - - 0x00C2FB 03:A2EB: FD A2     .word _off014_A2FD_03_stage_4
- D 1 - - - 0x00C2FD 03:A2ED: EF A2     .word _off014_A2EF_04_stage_5



_off014_A2EF_00_stage_1:
_off014_A2EF_01_stage_2:
_off014_A2EF_02_stage_3:
_off014_A2EF_04_stage_5:
- D 1 - I - 0x00C2FF 03:A2EF: 00        .byte $00   ; 
- D 1 - I - 0x00C300 03:A2F0: 05        .byte $05   ; 
- D 1 - I - 0x00C301 03:A2F1: 0A        .byte $0A   ; 
- D 1 - I - 0x00C302 03:A2F2: 0F        .byte $0F   ; 
- D 1 - I - 0x00C303 03:A2F3: 14        .byte $14   ; 
- D 1 - I - 0x00C304 03:A2F4: 19        .byte $19   ; 
- D 1 - I - 0x00C305 03:A2F5: 1E        .byte $1E   ; 
- D 1 - I - 0x00C306 03:A2F6: 23        .byte $23   ; 
- D 1 - I - 0x00C307 03:A2F7: 28        .byte $28   ; 
- D 1 - I - 0x00C308 03:A2F8: 2D        .byte $2D   ; 
- D 1 - I - 0x00C309 03:A2F9: 32        .byte $32   ; 
- D 1 - I - 0x00C30A 03:A2FA: 37        .byte $37   ; 
- D 1 - I - 0x00C30B 03:A2FB: 3C        .byte $3C   ; 
- - - - - - 0x00C30C 03:A2FC: 41        .byte $41   ; 



_off014_A2FD_03_stage_4:
- - - - - - 0x00C30D 03:A2FD: 00        .byte $00   ; 
- - - - - - 0x00C30E 03:A2FE: 0C        .byte $0C   ; 
- - - - - - 0x00C30F 03:A2FF: 18        .byte $18   ; 
- D 1 - I - 0x00C310 03:A300: 24        .byte $24   ; 
- D 1 - I - 0x00C311 03:A301: 30        .byte $30   ; 
- D 1 - I - 0x00C312 03:A302: 3C        .byte $3C   ; 
- D 1 - I - 0x00C313 03:A303: 48        .byte $48   ; 
- D 1 - I - 0x00C314 03:A304: 54        .byte $54   ; 
- D 1 - I - 0x00C315 03:A305: 60        .byte $60   ; 
- D 1 - I - 0x00C316 03:A306: 6C        .byte $6C   ; 
- D 1 - I - 0x00C317 03:A307: 78        .byte $78   ; 
- D 1 - I - 0x00C318 03:A308: 84        .byte $84   ; 
- D 1 - I - 0x00C319 03:A309: 90        .byte $90   ; 
- D 1 - I - 0x00C31A 03:A30A: 9C        .byte $9C   ; 
- D 1 - I - 0x00C31B 03:A30B: A8        .byte $A8   ; 
- D 1 - I - 0x00C31C 03:A30C: B4        .byte $B4   ; 
- D 1 - I - 0x00C31D 03:A30D: C0        .byte $C0   ; 
- D 1 - I - 0x00C31E 03:A30E: CC        .byte $CC   ; 
- D 1 - I - 0x00C31F 03:A30F: D8        .byte $D8   ; 
- D 1 - I - 0x00C320 03:A310: E4        .byte $E4   ; 
- D 1 - I - 0x00C321 03:A311: F0        .byte $F0   ; 
- D 1 - I - 0x00C322 03:A312: FC        .byte $FC   ; 
- D 1 - I - 0x00C323 03:A313: 08        .byte $08   ; 
- D 1 - I - 0x00C324 03:A314: 14        .byte $14   ; 
- D 1 - I - 0x00C325 03:A315: 20        .byte $20   ; 
- D 1 - I - 0x00C326 03:A316: 2C        .byte $2C   ; 
- D 1 - I - 0x00C327 03:A317: 38        .byte $38   ; 
- D 1 - I - 0x00C328 03:A318: 44        .byte $44   ; 
- D 1 - I - 0x00C329 03:A319: 50        .byte $50   ; 
- D 1 - I - 0x00C32A 03:A31A: 5C        .byte $5C   ; 
- D 1 - I - 0x00C32B 03:A31B: 68        .byte $68   ; 
- - - - - - 0x00C32C 03:A31C: 74        .byte $74   ; 
- - - - - - 0x00C32D 03:A31D: 80        .byte $80   ; 
- - - - - - 0x00C32E 03:A31E: 82        .byte $82   ; 



sub_A31F:
; in
    ; ram_0008_t01_data
    ; ram_000E_t01_data
    ; ram_001E_t01_data
C - - - - - 0x00C32F 03:A31F: A5 18     LDA ram_0018_t08
C - - - - - 0x00C331 03:A321: 85 90     STA ram_0090_pos_X
C - - - - - 0x00C333 03:A323: 84 91     STY ram_0091_pos_Y
C - - - - - 0x00C335 03:A325: A5 75     LDA ram_stage
C - - - - - 0x00C337 03:A327: C9 03     CMP #$03
C - - - - - 0x00C339 03:A329: D0 13     BNE bra_A33E
C - - - - - 0x00C33B 03:A32B: C0 16     CPY #$16
C - - - - - 0x00C33D 03:A32D: 90 0F     BCC bra_A33E
C - - - - - 0x00C33F 03:A32F: B1 0E     LDA (ram_000E_t01_data),Y
C - - - - - 0x00C341 03:A331: 18        CLC
C - - - - - 0x00C342 03:A332: 65 18     ADC ram_0018_t08
C - - - - - 0x00C344 03:A334: A8        TAY
C - - - - - 0x00C345 03:A335: E6 09     INC ram_0008_t01_data + $01
C - - - - - 0x00C347 03:A337: B1 08     LDA (ram_0008_t01_data),Y
C - - - - - 0x00C349 03:A339: C6 09     DEC ram_0008_t01_data + $01
C - - - - - 0x00C34B 03:A33B: 4C 46 A3  JMP loc_A346
bra_A33E:
C - - - - - 0x00C34E 03:A33E: B1 0E     LDA (ram_000E_t01_data),Y
C - - - - - 0x00C350 03:A340: 18        CLC
C - - - - - 0x00C351 03:A341: 65 18     ADC ram_0018_t08
C - - - - - 0x00C353 03:A343: A8        TAY
C - - - - - 0x00C354 03:A344: B1 08     LDA (ram_0008_t01_data),Y
loc_A346:
C D 1 - - - 0x00C356 03:A346: 0A        ASL
C - - - - - 0x00C357 03:A347: A8        TAY
C - - - - - 0x00C358 03:A348: B1 1E     LDA (ram_001E_t01_data),Y
C - - - - - 0x00C35A 03:A34A: 85 0A     STA ram_000A_t02_data
C - - - - - 0x00C35C 03:A34C: C8        INY
C - - - - - 0x00C35D 03:A34D: B1 1E     LDA (ram_001E_t01_data),Y
C - - - - - 0x00C35F 03:A34F: 85 0B     STA ram_000A_t02_data + $01
C - - - - - 0x00C361 03:A351: 60        RTS



sub_A352_prepare_data_pointers:
; out
    ; ram_0008_t01_data
    ; ram_001E_t01_data
C - - - - - 0x00C362 03:A352: A4 88     LDY ram_x2_stage
C - - - - - 0x00C364 03:A354: B9 73 A6  LDA tbl_A673,Y
C - - - - - 0x00C367 03:A357: 85 1E     STA ram_001E_t01_data
C - - - - - 0x00C369 03:A359: B9 74 A6  LDA tbl_A673 + $01,Y
C - - - - - 0x00C36C 03:A35C: 85 1F     STA ram_001E_t01_data + $01
sub_A35E_prepare_data_pointers:
; out
    ; ram_0008_t01_data
C - - - - - 0x00C36E 03:A35E: A4 88     LDY ram_x2_stage
C - - - - - 0x00C370 03:A360: B9 69 A6  LDA tbl_A669,Y
C - - - - - 0x00C373 03:A363: 85 08     STA ram_0008_t01_data
C - - - - - 0x00C375 03:A365: B9 6A A6  LDA tbl_A669 + $01,Y
C - - - - - 0x00C378 03:A368: 85 09     STA ram_0008_t01_data + $01
C - - - - - 0x00C37A 03:A36A: 60        RTS



loc_A36B:
sub_A36B:
; in
    ; ram_000A_t02_data
C D 1 - - - 0x00C37B 03:A36B: B1 0A     LDA (ram_000A_t02_data),Y
C - - - - - 0x00C37D 03:A36D: 85 1C     STA ram_001C_t05
C - - - - - 0x00C37F 03:A36F: C8        INY
C - - - - - 0x00C380 03:A370: B1 0A     LDA (ram_000A_t02_data),Y
C - - - - - 0x00C382 03:A372: 85 0D     STA ram_000D_t04
C - - - - - 0x00C384 03:A374: 84 06     STY ram_0006_t13
C - - - - - 0x00C386 03:A376: 29 07     AND #$07
C - - - - - 0x00C388 03:A378: 18        CLC
C - - - - - 0x00C389 03:A379: 69 02     ADC #$02
C - - - - - 0x00C38B 03:A37B: A8        TAY
C - - - - - 0x00C38C 03:A37C: 84 07     STY ram_0007_t08
C - - - - - 0x00C38E 03:A37E: A5 1C     LDA ram_001C_t05
C - - - - - 0x00C390 03:A380: C9 3B     CMP #$3B
C - - - - - 0x00C392 03:A382: F0 05     BEQ bra_A389_RTS
C - - - - - 0x00C394 03:A384: B9 82 07  LDA ram_0782_unk,Y
C - - - - - 0x00C397 03:A387: 29 7F     AND #$7F
bra_A389_RTS:
C - - - - - 0x00C399 03:A389: 60        RTS



sub_A38A:
C - - - - - 0x00C39A 03:A38A: A5 1C     LDA ram_001C_t05
C - - - - - 0x00C39C 03:A38C: 29 7F     AND #$7F
C - - - - - 0x00C39E 03:A38E: C9 3E     CMP #$3E
C - - - - - 0x00C3A0 03:A390: 90 10     BCC bra_A3A2_RTS
C - - - - - 0x00C3A2 03:A392: A5 0D     LDA ram_000D_t04
C - - - - - 0x00C3A4 03:A394: 29 80     AND #$80
C - - - - - 0x00C3A6 03:A396: F0 0A     BEQ bra_A3A2_RTS
C - - - - - 0x00C3A8 03:A398: B9 4E 06  LDA ram_obj_pos_X,Y
C - - - - - 0x00C3AB 03:A39B: F0 05     BEQ bra_A3A2_RTS
C - - - - - 0x00C3AD 03:A39D: 49 FF     EOR #$FF
C - - - - - 0x00C3AF 03:A39F: 99 4E 06  STA ram_obj_pos_X,Y
bra_A3A2_RTS:
C - - - - - 0x00C3B2 03:A3A2: 60        RTS



sub_A3A3:
C - - - - - 0x00C3B3 03:A3A3: A9 00     LDA #$00
C - - - - - 0x00C3B5 03:A3A5: 99 00 06  STA ram_0600_obj,Y
sub_A3A8:
C - - - - - 0x00C3B8 03:A3A8: 99 34 06  STA ram_obj_animation_hi,Y
C - - - - - 0x00C3BB 03:A3AB: 99 D2 07  STA ram_07D2_unk,Y
C - - - - - 0x00C3BE 03:A3AE: 99 B2 06  STA ram_06B2_obj,Y
C - - - - - 0x00C3C1 03:A3B1: 99 C8 07  STA ram_07C8_unk,Y
C - - - - - 0x00C3C4 03:A3B4: 99 BE 07  STA ram_07BE_unk,Y
C - - - - - 0x00C3C7 03:A3B7: A5 62     LDA ram_0062_fr
C - - - - - 0x00C3C9 03:A3B9: 20 07 95  EOR #$FF
                                        CLC
                                        ADC #$01
C - - - - - 0x00C3CC 03:A3BC: 99 C8 06  STA ram_obj_spd_X,Y
C - - - - - 0x00C3CF 03:A3BF: A5 65     LDA ram_0065_fr
C - - - - - 0x00C3D1 03:A3C1: 20 07 95  EOR #$FF
                                        CLC
                                        ADC #$01
C - - - - - 0x00C3D4 03:A3C4: 99 DE 06  STA ram_obj_spd_Y,Y
C - - - - - 0x00C3D7 03:A3C7: B9 82 07  LDA ram_0782_unk,Y
C - - - - - 0x00C3DA 03:A3CA: 30 4D     BMI bra_A419
C - - - - - 0x00C3DC 03:A3CC: 38        SEC
C - - - - - 0x00C3DD 03:A3CD: E9 3E     SBC #$3E
C - - - - - 0x00C3DF 03:A3CF: 90 48     BCC bra_A419
; * 04
C - - - - - 0x00C3E1 03:A3D1: 0A        ASL
C - - - - - 0x00C3E2 03:A3D2: 0A        ASL
C - - - - - 0x00C3E3 03:A3D3: A8        TAY
C - - - - - 0x00C3E4 03:A3D4: B9 7A A5  LDA tbl_A57A,Y
C - - - - - 0x00C3E7 03:A3D7: 48        PHA
C - - - - - 0x00C3E8 03:A3D8: B9 7B A5  LDA tbl_A57A + $01,Y
C - - - - - 0x00C3EB 03:A3DB: 48        PHA
C - - - - - 0x00C3EC 03:A3DC: B9 7D A5  LDA tbl_A57A + $03,Y
C - - - - - 0x00C3EF 03:A3DF: 85 10     STA ram_0010_t06_table_index
C - - - - - 0x00C3F1 03:A3E1: B9 7C A5  LDA tbl_A57A + $02,Y
C - - - - - 0x00C3F4 03:A3E4: A4 07     LDY ram_0007_t08
C - - - - - 0x00C3F6 03:A3E6: 99 BE 07  STA ram_07BE_unk,Y
C - - - - - 0x00C3F9 03:A3E9: 68        PLA
C - - - - - 0x00C3FA 03:A3EA: 99 D2 07  STA ram_07D2_unk,Y
C - - - - - 0x00C3FD 03:A3ED: 68        PLA
C - - - - - 0x00C3FE 03:A3EE: 99 82 07  STA ram_0782_unk,Y
C - - - - - 0x00C401 03:A3F1: 99 C8 07  STA ram_07C8_unk,Y
C - - - - - 0x00C404 03:A3F4: A5 0D     LDA ram_000D_t04
C - - - - - 0x00C406 03:A3F6: 29 38     AND #$38
C - - - - - 0x00C408 03:A3F8: 20 B5 93  JSR sub_0x0093C4_LSRx3_TAY
C - - - - - 0x00C40B 03:A3FB: 84 11     STY ram_0011_t06
C - - - - - 0x00C40D 03:A3FD: B9 1A A6  LDA tbl_A61A,Y
C - - - - - 0x00C410 03:A400: A4 07     LDY ram_0007_t08
C - - - - - 0x00C412 03:A402: 99 A0 07  STA ram_07A0_unk,Y
C - - - - - 0x00C415 03:A405: B9 D2 07  LDA ram_07D2_unk,Y
; * 08
C - - - - - 0x00C418 03:A408: 0A        ASL
C - - - - - 0x00C419 03:A409: 0A        ASL
C - - - - - 0x00C41A 03:A40A: 0A        ASL
C - - - - - 0x00C41B 03:A40B: 05 11     ORA ram_0011_t06
C - - - - - 0x00C41D 03:A40D: A8        TAY
C - - - - - 0x00C41E 03:A40E: B9 21 A6  LDA tbl_A621,Y
C - - - - - 0x00C421 03:A411: A4 07     LDY ram_0007_t08
C - - - - - 0x00C423 03:A413: 99 34 06  STA ram_obj_animation_hi,Y
C - - - - - 0x00C426 03:A416: 4C 21 A4  JMP loc_A421
bra_A419:
C - - - - - 0x00C429 03:A419: A5 0D     LDA ram_000D_t04
C - - - - - 0x00C42B 03:A41B: 29 78     AND #$78
C - - - - - 0x00C42D 03:A41D: 0A        ASL
C - - - - - 0x00C42E 03:A41E: 99 B2 06  STA ram_06B2_obj,Y
loc_A421:
C D 1 - - - 0x00C431 03:A421: A9 00     LDA #$00
C - - - - - 0x00C433 03:A423: 99 1A 06  STA ram_obj_animation_lo,Y
C - - - - - 0x00C436 03:A426: 99 0A 07  STA ram_070A_obj,Y
C - - - - - 0x00C439 03:A429: 99 82 06  STA ram_0682_obj,Y
C - - - - - 0x00C43C 03:A42C: 99 78 07  STA ram_0778_unk,Y
C - - - - - 0x00C43F 03:A42F: 99 8C 07  STA ram_078C_unk,Y
C - - - - - 0x00C442 03:A432: 99 36 07  STA ram_0736_obj,Y
C - - - - - 0x00C445 03:A435: 99 AA 07  STA ram_07AA_unk,Y
C - - - - - 0x00C448 03:A438: 99 B4 07  STA ram_07B4_unk,Y
C - - - - - 0x00C44B 03:A43B: BE 82 07  LDX ram_0782_unk,Y
C - - - - - 0x00C44E 03:A43E: E0 3B     CPX #$3B
C - - - - - 0x00C450 03:A440: F0 02     BEQ bra_A444
C - - - - - 0x00C452 03:A442: A9 0C     LDA #$0C
bra_A444:
C - - - - - 0x00C454 03:A444: 99 20 07  STA ram_0720_obj,Y
C - - - - - 0x00C457 03:A447: A9 F0     LDA #$F0
C - - - - - 0x00C459 03:A449: 99 DC 07  STA ram_07DC_unk,Y
C - - - - - 0x00C45C 03:A44C: B9 82 07  LDA ram_0782_unk,Y
C - - - - - 0x00C45F 03:A44F: 29 7F     AND #$7F
C - - - - - 0x00C461 03:A451: 84 00     STY ram_0000_t1E
C - - - - - 0x00C463 03:A453: C9 3E     CMP #$3E
C - - - - - 0x00C465 03:A455: B0 1F     BCS bra_A476
C - - - - - 0x00C467 03:A457: A8        TAY
C - - - - - 0x00C468 03:A458: B9 23 A5  LDA tbl_A524 - $01,Y
C - - - - - 0x00C46B 03:A45B: F0 19     BEQ bra_A476
C - - - - - 0x00C46D 03:A45D: A6 00     LDX ram_0000_t1E
C - - - - - 0x00C46F 03:A45F: A0 00     LDY #$00
C - - - - - 0x00C471 03:A461: B1 0A     LDA (ram_000A_t02_data),Y
C - - - - - 0x00C473 03:A463: 9D AA 07  STA ram_07AA_unk,X
C - - - - - 0x00C476 03:A466: A5 90     LDA ram_0090_pos_X
C - - - - - 0x00C478 03:A468: 9D D2 07  STA ram_07D2_unk,X
C - - - - - 0x00C47B 03:A46B: C8        INY ; 01
C - - - - - 0x00C47C 03:A46C: B1 0A     LDA (ram_000A_t02_data),Y
C - - - - - 0x00C47E 03:A46E: 9D BE 07  STA ram_07BE_unk,X
C - - - - - 0x00C481 03:A471: A5 91     LDA ram_0091_pos_Y
C - - - - - 0x00C483 03:A473: 9D C8 07  STA ram_07C8_unk,X
bra_A476:
C - - - - - 0x00C486 03:A476: A4 00     LDY ram_0000_t1E
loc_A478:
C D 1 - - - 0x00C488 03:A478: 20 E3 93  JSR sub_0x0093F3
C - - - - - 0x00C48B 03:A47B: 20 84 A3  LDA ram_0782_unk,Y
                                        AND #$7F
C - - - - - 0x00C48E 03:A47E: A8        TAY
C - - - - - 0x00C48F 03:A47F: B9 A9 A4  LDA tbl_A4AA - $01,Y
C - - - - - 0x00C492 03:A482: 30 17     BMI bra_A49B
C - - - - - 0x00C494 03:A484: F0 02     BEQ bra_A488
C - - - - - 0x00C496 03:A486: 85 7B     STA ram_chr_bank + $04
bra_A488:
C - - - - - 0x00C498 03:A488: B9 E6 A4  LDA tbl_A4E7 - $01,Y
C - - - - - 0x00C49B 03:A48B: C9 FF     CMP #$FF
C - - - - - 0x00C49D 03:A48D: F0 0B     BEQ bra_A49A_RTS
loc_A48F:
C D 1 - - - 0x00C49F 03:A48F: C5 89     CMP ram_0089
C - - - - - 0x00C4A1 03:A491: F0 07     BEQ bra_A49A_RTS
loc_A493:
C D 1 - - - 0x00C4A3 03:A493: 85 89     STA ram_0089
C - - - - - 0x00C4A5 03:A495: A0 02     LDY #$02
; bzk optimize, JMP
C - - - - - 0x00C4A7 03:A497: 20 B1 F4  JSR sub_0x01F4C1
bra_A49A_RTS:
C - - - - - 0x00C4AA 03:A49A: 60        RTS
bra_A49B:
C - - - - - 0x00C4AB 03:A49B: A5 10     LDA ram_0010_t06_table_index
C - - - - - 0x00C4AD 03:A49D: 0A        ASL
C - - - - - 0x00C4AE 03:A49E: A8        TAY
C - - - - - 0x00C4AF 03:A49F: B9 64 A5  LDA tbl_A564,Y
C - - - - - 0x00C4B2 03:A4A2: 85 7B     STA ram_chr_bank + $04
C - - - - - 0x00C4B4 03:A4A4: B9 65 A5  LDA tbl_A564 + $01,Y
C - - - - - 0x00C4B7 03:A4A7: 4C 8F A4  JMP loc_A48F



tbl_A4AA:
- - - - - - 0x00C4BA 03:A4AA: 10        .byte con_chr_bank + $10   ; 01 
- D 1 - - - 0x00C4BB 03:A4AB: FF        .byte $FF   ; 02 
- D 1 - - - 0x00C4BC 03:A4AC: FF        .byte $FF   ; 03 
- - - - - - 0x00C4BD 03:A4AD: FF        .byte $FF   ; 04 
- D 1 - - - 0x00C4BE 03:A4AE: FF        .byte $FF   ; 05 
- D 1 - - - 0x00C4BF 03:A4AF: FF        .byte $FF   ; 06 
- - - - - - 0x00C4C0 03:A4B0: FF        .byte $FF   ; 07 
- - - - - - 0x00C4C1 03:A4B1: 00        .byte $00   ; 08 
- - - - - - 0x00C4C2 03:A4B2: 26        .byte con_chr_bank + $26   ; 09 
- D 1 - - - 0x00C4C3 03:A4B3: 1F        .byte con_chr_bank + $1F   ; 0A 
- D 1 - - - 0x00C4C4 03:A4B4: 26        .byte con_chr_bank + $26   ; 0B 
- D 1 - - - 0x00C4C5 03:A4B5: 1B        .byte con_chr_bank + $1B   ; 0C 
- - - - - - 0x00C4C6 03:A4B6: 00        .byte $00   ; 0D 
- - - - - - 0x00C4C7 03:A4B7: 00        .byte $00   ; 0E 
- D 1 - - - 0x00C4C8 03:A4B8: 20        .byte con_chr_bank + $20   ; 0F 
- D 1 - - - 0x00C4C9 03:A4B9: 22        .byte con_chr_bank + $22   ; 10 
- D 1 - - - 0x00C4CA 03:A4BA: 24        .byte con_chr_bank + $24   ; 11 
- D 1 - - - 0x00C4CB 03:A4BB: 28        .byte con_chr_bank + $28   ; 12 
- - - - - - 0x00C4CC 03:A4BC: 00        .byte $00   ; 13 
- D 1 - - - 0x00C4CD 03:A4BD: 10        .byte con_chr_bank + $10   ; 14 
- D 1 - - - 0x00C4CE 03:A4BE: 00        .byte $00   ; 15 
- - - - - - 0x00C4CF 03:A4BF: 00        .byte $00   ; 16 
- D 1 - - - 0x00C4D0 03:A4C0: 00        .byte $00   ; 17 
- D 1 - - - 0x00C4D1 03:A4C1: 10        .byte con_chr_bank + $10   ; 18 
- D 1 - - - 0x00C4D2 03:A4C2: 27        .byte con_chr_bank + $27   ; 19 
- D 1 - - - 0x00C4D3 03:A4C3: 00        .byte $00   ; 1A 
- D 1 - - - 0x00C4D4 03:A4C4: 10        .byte con_chr_bank + $10   ; 1B 
- D 1 - - - 0x00C4D5 03:A4C5: 10        .byte con_chr_bank + $10   ; 1C 
- - - - - - 0x00C4D6 03:A4C6: 26        .byte con_chr_bank + $26   ; 1D 
- D 1 - - - 0x00C4D7 03:A4C7: 6E        .byte con_chr_bank + $6E   ; 1E 
- D 1 - - - 0x00C4D8 03:A4C8: 1D        .byte con_chr_bank + $1D   ; 1F 
- D 1 - - - 0x00C4D9 03:A4C9: 1B        .byte con_chr_bank + $1B   ; 10 
- D 1 - - - 0x00C4DA 03:A4CA: 1C        .byte con_chr_bank + $1C   ; 11 
- - - - - - 0x00C4DB 03:A4CB: 0E        .byte con_chr_bank + $0E   ; 12 
- D 1 - - - 0x00C4DC 03:A4CC: 1E        .byte con_chr_bank + $1E   ; 13 
- D 1 - - - 0x00C4DD 03:A4CD: 23        .byte con_chr_bank + $23   ; 14 
- D 1 - - - 0x00C4DE 03:A4CE: 27        .byte con_chr_bank + $27   ; 15 
- - - - - - 0x00C4DF 03:A4CF: 00        .byte $00   ; 16 
- D 1 - - - 0x00C4E0 03:A4D0: 23        .byte con_chr_bank + $23   ; 17 
- - - - - - 0x00C4E1 03:A4D1: 0E        .byte con_chr_bank + $0E   ; 18 
- - - - - - 0x00C4E2 03:A4D2: 0E        .byte con_chr_bank + $0E   ; 19 
- D 1 - - - 0x00C4E3 03:A4D3: 23        .byte con_chr_bank + $23   ; 1A 
- D 1 - - - 0x00C4E4 03:A4D4: 00        .byte $00   ; 1B 
- - - - - - 0x00C4E5 03:A4D5: 00        .byte $00   ; 1C 
- D 1 - - - 0x00C4E6 03:A4D6: 1E        .byte con_chr_bank + $1E   ; 1D 
- - - - - - 0x00C4E7 03:A4D7: 00        .byte $00   ; 1E 
- - - - - - 0x00C4E8 03:A4D8: 1B        .byte con_chr_bank + $1B   ; 1F 
- D 1 - - - 0x00C4E9 03:A4D9: 00        .byte $00   ; 20 
- D 1 - - - 0x00C4EA 03:A4DA: 00        .byte $00   ; 21 
- - - - - - 0x00C4EB 03:A4DB: 00        .byte $00   ; 22 
- D 1 - - - 0x00C4EC 03:A4DC: 11        .byte con_chr_bank + $11   ; 23 
- D 1 - - - 0x00C4ED 03:A4DD: 1C        .byte con_chr_bank + $1C   ; 24 
- - - - - - 0x00C4EE 03:A4DE: 0E        .byte con_chr_bank + $0E   ; 25 
- - - - - - 0x00C4EF 03:A4DF: 00        .byte $00   ; 26 
- D 1 - - - 0x00C4F0 03:A4E0: 4A        .byte con_chr_bank + $4A   ; 27 
- - - - - - 0x00C4F1 03:A4E1: 26        .byte con_chr_bank + $26   ; 28 
- D 1 - - - 0x00C4F2 03:A4E2: 26        .byte con_chr_bank + $26   ; 29 
- D 1 - - - 0x00C4F3 03:A4E3: 00        .byte $00   ; 2A 
- D 1 - - - 0x00C4F4 03:A4E4: 00        .byte $00   ; 2B 
- - - - - - 0x00C4F5 03:A4E5: 00        .byte $00   ; 2C 
- - - - - - 0x00C4F6 03:A4E6: 00        .byte $00   ; 2D 



tbl_A4E7:
- - - - - - 0x00C4F7 03:A4E7: 00        .byte $00   ; 01 
- - - - - - 0x00C4F8 03:A4E8: 00        .byte $00   ; 02 
- - - - - - 0x00C4F9 03:A4E9: 00        .byte $00   ; 03 
- - - - - - 0x00C4FA 03:A4EA: 00        .byte $00   ; 04 
- - - - - - 0x00C4FB 03:A4EB: 00        .byte $00   ; 05 
- - - - - - 0x00C4FC 03:A4EC: 00        .byte $00   ; 06 
- - - - - - 0x00C4FD 03:A4ED: 00        .byte $00   ; 07 
- - - - - - 0x00C4FE 03:A4EE: 00        .byte $00   ; 08 
- - - - - - 0x00C4FF 03:A4EF: 0C        .byte $0C   ; 09 
- D 1 - - - 0x00C500 03:A4F0: 07        .byte $07   ; 0A 
- D 1 - - - 0x00C501 03:A4F1: 0C        .byte $0C   ; 0B 
- D 1 - - - 0x00C502 03:A4F2: 03        .byte $03   ; 0C 
- - - - - - 0x00C503 03:A4F3: 00        .byte $00   ; 0D 
- - - - - - 0x00C504 03:A4F4: 00        .byte $00   ; 0E 
- D 1 - - - 0x00C505 03:A4F5: 0D        .byte $0D   ; 0F 
- D 1 - - - 0x00C506 03:A4F6: 0C        .byte $0C   ; 10 
- D 1 - - - 0x00C507 03:A4F7: 09        .byte $09   ; 11 
- D 1 - - - 0x00C508 03:A4F8: 00        .byte $00   ; 12 
- - - - - - 0x00C509 03:A4F9: 00        .byte $00   ; 13 
- D 1 - - - 0x00C50A 03:A4FA: 02        .byte $02   ; 14 
- D 1 - - - 0x00C50B 03:A4FB: 00        .byte $00   ; 15 
- - - - - - 0x00C50C 03:A4FC: FF        .byte $FF   ; 16 
- D 1 - - - 0x00C50D 03:A4FD: FF        .byte $FF   ; 17 
- D 1 - - - 0x00C50E 03:A4FE: 02        .byte $02   ; 18 
- D 1 - - - 0x00C50F 03:A4FF: 02        .byte $02   ; 19 
- D 1 - - - 0x00C510 03:A500: FF        .byte $FF   ; 1A 
- D 1 - - - 0x00C511 03:A501: FF        .byte $FF   ; 1B 
- D 1 - - - 0x00C512 03:A502: 02        .byte $02   ; 1C 
- - - - - - 0x00C513 03:A503: 0C        .byte $0C   ; 1D 
- D 1 - - - 0x00C514 03:A504: 0C        .byte $0C   ; 1E 
- D 1 - - - 0x00C515 03:A505: 00        .byte $00   ; 1F 
- D 1 - - - 0x00C516 03:A506: 03        .byte $03   ; 10 
- D 1 - - - 0x00C517 03:A507: 06        .byte $06   ; 11 
- - - - - - 0x00C518 03:A508: 00        .byte $00   ; 12 
- D 1 - - - 0x00C519 03:A509: 04        .byte $04   ; 13 
- D 1 - - - 0x00C51A 03:A50A: 08        .byte $08   ; 14 
- D 1 - - - 0x00C51B 03:A50B: 02        .byte $02   ; 15 
- - - - - - 0x00C51C 03:A50C: FF        .byte $FF   ; 16 
- D 1 - - - 0x00C51D 03:A50D: 08        .byte $08   ; 17 
- - - - - - 0x00C51E 03:A50E: 00        .byte $00   ; 18 
- - - - - - 0x00C51F 03:A50F: 00        .byte $00   ; 19 
- D 1 - - - 0x00C520 03:A510: 08        .byte $08   ; 1A 
- D 1 - - - 0x00C521 03:A511: FF        .byte $FF   ; 1B 
- - - - - - 0x00C522 03:A512: 00        .byte $00   ; 1C 
- D 1 - - - 0x00C523 03:A513: 04        .byte $04   ; 1D 
- - - - - - 0x00C524 03:A514: FF        .byte $FF   ; 1E 
- - - - - - 0x00C525 03:A515: 03        .byte $03   ; 1F 
- D 1 - - - 0x00C526 03:A516: 00        .byte $00   ; 10 
- D 1 - - - 0x00C527 03:A517: 00        .byte $00   ; 11 
- - - - - - 0x00C528 03:A518: 00        .byte $00   ; 12 
- D 1 - - - 0x00C529 03:A519: 0D        .byte $0D   ; 13 
- D 1 - - - 0x00C52A 03:A51A: 06        .byte $06   ; 14 
- - - - - - 0x00C52B 03:A51B: 0D        .byte $0D   ; 15 
- - - - - - 0x00C52C 03:A51C: 00        .byte $00   ; 16 
- D 1 - - - 0x00C52D 03:A51D: 00        .byte $00   ; 17 
- - - - - - 0x00C52E 03:A51E: 0C        .byte $0C   ; 18 
- D 1 - - - 0x00C52F 03:A51F: FF        .byte $FF   ; 19 
- D 1 - - - 0x00C530 03:A520: FF        .byte $FF   ; 1A 
- D 1 - - - 0x00C531 03:A521: FF        .byte $FF   ; 1B 
- - - - - - 0x00C532 03:A522: 00        .byte $00   ; 1C 
- - - - - - 0x00C533 03:A523: 00        .byte $00   ; 1D 



tbl_A524:
- - - - - - 0x00C534 03:A524: 00        .byte $00   ; 
- D 1 - - - 0x00C535 03:A525: 00        .byte $00   ; 
- D 1 - - - 0x00C536 03:A526: 00        .byte $00   ; 
- - - - - - 0x00C537 03:A527: 00        .byte $00   ; 
- D 1 - - - 0x00C538 03:A528: 00        .byte $00   ; 
- D 1 - - - 0x00C539 03:A529: 00        .byte $00   ; 
- - - - - - 0x00C53A 03:A52A: 00        .byte $00   ; 
- - - - - - 0x00C53B 03:A52B: 00        .byte $00   ; 
- - - - - - 0x00C53C 03:A52C: 00        .byte $00   ; 
- D 1 - - - 0x00C53D 03:A52D: 00        .byte $00   ; 
- D 1 - - - 0x00C53E 03:A52E: 01        .byte $01   ; 
- D 1 - - - 0x00C53F 03:A52F: 01        .byte $01   ; 
- - - - - - 0x00C540 03:A530: 00        .byte $00   ; 
- - - - - - 0x00C541 03:A531: 00        .byte $00   ; 
- D 1 - - - 0x00C542 03:A532: 00        .byte $00   ; 
- D 1 - - - 0x00C543 03:A533: 00        .byte $00   ; 
- D 1 - - - 0x00C544 03:A534: 00        .byte $00   ; 
- - - - - - 0x00C545 03:A535: 00        .byte $00   ; 
- - - - - - 0x00C546 03:A536: 00        .byte $00   ; 
- D 1 - - - 0x00C547 03:A537: 00        .byte $00   ; 
- D 1 - - - 0x00C548 03:A538: 00        .byte $00   ; 
- - - - - - 0x00C549 03:A539: 00        .byte $00   ; 
- D 1 - - - 0x00C54A 03:A53A: 01        .byte $01   ; 
- D 1 - - - 0x00C54B 03:A53B: 00        .byte $00   ; 
- D 1 - - - 0x00C54C 03:A53C: 00        .byte $00   ; 
- D 1 - - - 0x00C54D 03:A53D: 00        .byte $00   ; 
- D 1 - - - 0x00C54E 03:A53E: 00        .byte $00   ; 
- D 1 - - - 0x00C54F 03:A53F: 00        .byte $00   ; 
- - - - - - 0x00C550 03:A540: 00        .byte $00   ; 
- D 1 - - - 0x00C551 03:A541: 01        .byte $01   ; 
- D 1 - - - 0x00C552 03:A542: 00        .byte $00   ; 
- D 1 - - - 0x00C553 03:A543: 00        .byte $00   ; 
- D 1 - - - 0x00C554 03:A544: 00        .byte $00   ; 
- - - - - - 0x00C555 03:A545: 00        .byte $00   ; 
- D 1 - - - 0x00C556 03:A546: 00        .byte $00   ; 
- D 1 - - - 0x00C557 03:A547: 00        .byte $00   ; 
- D 1 - - - 0x00C558 03:A548: 01        .byte $01   ; 
- - - - - - 0x00C559 03:A549: 00        .byte $00   ; 
- D 1 - - - 0x00C55A 03:A54A: 00        .byte $00   ; 
- - - - - - 0x00C55B 03:A54B: 00        .byte $00   ; 
- - - - - - 0x00C55C 03:A54C: 00        .byte $00   ; 
- D 1 - - - 0x00C55D 03:A54D: 00        .byte $00   ; 
- D 1 - - - 0x00C55E 03:A54E: 00        .byte $00   ; 
- - - - - - 0x00C55F 03:A54F: 00        .byte $00   ; 
- D 1 - - - 0x00C560 03:A550: 01        .byte $01   ; 
- - - - - - 0x00C561 03:A551: 00        .byte $00   ; 
- - - - - - 0x00C562 03:A552: 00        .byte $00   ; 
- D 1 - - - 0x00C563 03:A553: 00        .byte $00   ; 
- D 1 - - - 0x00C564 03:A554: 00        .byte $00   ; 
- - - - - - 0x00C565 03:A555: 00        .byte $00   ; 
- D 1 - - - 0x00C566 03:A556: 00        .byte $00   ; 
- D 1 - - - 0x00C567 03:A557: 00        .byte $00   ; 
- - - - - - 0x00C568 03:A558: 00        .byte $00   ; 
- - - - - - 0x00C569 03:A559: 00        .byte $00   ; 
- D 1 - - - 0x00C56A 03:A55A: 00        .byte $00   ; 
- - - - - - 0x00C56B 03:A55B: 00        .byte $00   ; 
- D 1 - - - 0x00C56C 03:A55C: 00        .byte $00   ; 
- D 1 - - - 0x00C56D 03:A55D: 01        .byte $01   ; 
- D 1 - - - 0x00C56E 03:A55E: 00        .byte $00   ; 
- - - - - - 0x00C56F 03:A55F: 00        .byte $00   ; 
- - - - - - 0x00C570 03:A560: 00        .byte $00   ; 
- - - - - - 0x00C571 03:A561: 00        .byte $00   ; 
- - - - - - 0x00C572 03:A562: 00        .byte $00   ; 
- - - - - - 0x00C573 03:A563: 00        .byte $00   ; 



tbl_A564:
; 00 
- D 1 - - - 0x00C574 03:A564: 0E        .byte con_chr_bank + $0E   ; 
- D 1 - - - 0x00C575 03:A565: 00        .byte $00   ; 
; 01 
- D 1 - - - 0x00C576 03:A566: 10        .byte con_chr_bank + $10   ; 
- D 1 - - - 0x00C577 03:A567: 02        .byte $02   ; 
; 02 
- D 1 - - - 0x00C578 03:A568: 23        .byte con_chr_bank + $23   ; 
- D 1 - - - 0x00C579 03:A569: 08        .byte $08   ; 
; 03 
- D 1 - - - 0x00C57A 03:A56A: 6E        .byte con_chr_bank + $6E   ; 
- D 1 - - - 0x00C57B 03:A56B: 0C        .byte $0C   ; 
; 04 
- D 1 - - - 0x00C57C 03:A56C: 0F        .byte con_chr_bank + $0F   ; 
- D 1 - - - 0x00C57D 03:A56D: 00        .byte $00   ; 
; 05 
- D 1 - - - 0x00C57E 03:A56E: 27        .byte con_chr_bank + $27   ; 
- D 1 - - - 0x00C57F 03:A56F: 02        .byte $02   ; 
; 06 
- D 1 - - - 0x00C580 03:A570: 1B        .byte con_chr_bank + $1B   ; 
- D 1 - - - 0x00C581 03:A571: 03        .byte $03   ; 
; 07 
- - - - - - 0x00C582 03:A572: 1C        .byte con_chr_bank + $1C   ; 
- - - - - - 0x00C583 03:A573: 06        .byte $06   ; 
; 08 
- D 1 - - - 0x00C584 03:A574: 1E        .byte con_chr_bank + $1E   ; 
- D 1 - - - 0x00C585 03:A575: 04        .byte $04   ; 
; 09 
- D 1 - - - 0x00C586 03:A576: 1D        .byte con_chr_bank + $1D   ; 
- D 1 - - - 0x00C587 03:A577: 00        .byte $00   ; 
; 0A 
- D 1 - - - 0x00C588 03:A578: 26        .byte con_chr_bank + $26   ; 
- D 1 - - - 0x00C589 03:A579: 0C        .byte $0C   ; 



tbl_A57A:
- D 1 - - - 0x00C58A 03:A57A: 02        .byte $02, $00, $00, $00   ; 3E 
- D 1 - - - 0x00C58E 03:A57E: 02        .byte $02, $00, $01, $00   ; 3F 
- D 1 - - - 0x00C592 03:A582: 02        .byte $02, $00, $02, $00   ; 40 
- D 1 - - - 0x00C596 03:A586: 02        .byte $02, $01, $02, $00   ; 41 
- D 1 - - - 0x00C59A 03:A58A: 03        .byte $03, $01, $00, $00   ; 42 
- D 1 - - - 0x00C59E 03:A58E: 03        .byte $03, $02, $01, $00   ; 43 
- D 1 - - - 0x00C5A2 03:A592: 02        .byte $02, $02, $01, $00   ; 44 
- D 1 - - - 0x00C5A6 03:A596: 02        .byte $02, $02, $02, $00   ; 45 
- D 1 - - - 0x00C5AA 03:A59A: 02        .byte $02, $05, $01, $01   ; 46 
- D 1 - - - 0x00C5AE 03:A59E: 02        .byte $02, $05, $02, $01   ; 47 
- D 1 - - - 0x00C5B2 03:A5A2: 02        .byte $02, $05, $01, $02   ; 48 
- D 1 - - - 0x00C5B6 03:A5A6: 02        .byte $02, $05, $02, $02   ; 49 
- - - - - - 0x00C5BA 03:A5AA: 02        .byte $02, $05, $01, $03   ; 4A 
- D 1 - - - 0x00C5BE 03:A5AE: 02        .byte $02, $05, $02, $03   ; 4B 
- D 1 - - - 0x00C5C2 03:A5B2: 03        .byte $03, $03, $01, $04   ; 4C 
- - - - - - 0x00C5C6 03:A5B6: 03        .byte $03, $03, $02, $04   ; 4D 
- D 1 - - - 0x00C5CA 03:A5BA: 02        .byte $02, $04, $02, $04   ; 4E 
- - - - - - 0x00C5CE 03:A5BE: 03        .byte $03, $04, $01, $04   ; 4F 
- - - - - - 0x00C5D2 03:A5C2: 02        .byte $02, $04, $02, $05   ; 50 
- D 1 - - - 0x00C5D6 03:A5C6: 03        .byte $03, $04, $01, $05   ; 51 
- D 1 - - - 0x00C5DA 03:A5CA: 05        .byte $05, $06, $00, $06   ; 52 
- D 1 - - - 0x00C5DE 03:A5CE: 05        .byte $05, $06, $01, $06   ; 53 
- - - - - - 0x00C5E2 03:A5D2: 05        .byte $05, $06, $00, $07   ; 54 
- - - - - - 0x00C5E6 03:A5D6: 05        .byte $05, $06, $01, $07   ; 55 
- D 1 - - - 0x00C5EA 03:A5DA: 05        .byte $05, $06, $00, $08   ; 56 
- - - - - - 0x00C5EE 03:A5DE: 05        .byte $05, $06, $01, $08   ; 57 
- D 1 - - - 0x00C5F2 03:A5E2: 05        .byte $05, $06, $05, $08   ; 58 
- D 1 - - - 0x00C5F6 03:A5E6: 06        .byte $06, $08, $00, $06   ; 59 
- D 1 - - - 0x00C5FA 03:A5EA: 05        .byte $05, $08, $04, $06   ; 5A 
- D 1 - - - 0x00C5FE 03:A5EE: 06        .byte $06, $08, $04, $06   ; 5B 
- D 1 - - - 0x00C602 03:A5F2: 05        .byte $05, $07, $04, $09   ; 5C 
- D 1 - - - 0x00C606 03:A5F6: 05        .byte $05, $07, $02, $09   ; 5D 
- D 1 - - - 0x00C60A 03:A5FA: 05        .byte $05, $07, $03, $09   ; 5E 
- D 1 - - - 0x00C60E 03:A5FE: 05        .byte $05, $07, $01, $09   ; 5F 
- D 1 - - - 0x00C612 03:A602: 06        .byte $06, $07, $04, $09   ; 60 
- D 1 - - - 0x00C616 03:A606: 06        .byte $06, $07, $05, $09   ; 61 
- D 1 - - - 0x00C61A 03:A60A: 06        .byte $06, $07, $01, $0A   ; 62 
- D 1 - - - 0x00C61E 03:A60E: 06        .byte $06, $07, $02, $0A   ; 63 
- D 1 - - - 0x00C622 03:A612: 05        .byte $05, $07, $04, $0A   ; 64 
- D 1 - - - 0x00C626 03:A616: 06        .byte $06, $07, $04, $0A   ; 65 



tbl_A61A:
- D 1 - - - 0x00C62A 03:A61A: 01        .byte $01   ; 00 
- D 1 - - - 0x00C62B 03:A61B: 11        .byte $11   ; 01 
- D 1 - - - 0x00C62C 03:A61C: D1        .byte $D1   ; 02 
- D 1 - - - 0x00C62D 03:A61D: B1        .byte $B1   ; 03 
- D 1 - - - 0x00C62E 03:A61E: 31        .byte $31   ; 04 
- D 1 - - - 0x00C62F 03:A61F: 21        .byte $21   ; 05 
- D 1 - - - 0x00C630 03:A620: 41        .byte $41   ; 06 



tbl_A621:
- D 1 - - - 0x00C631 03:A621: 00        .byte $00, $00, $02, $00   ; 00 
- - - - - - 0x00C635 03:A625: 00        .byte $00, $00, $00, $00   ; 01 
- - - - - - 0x00C639 03:A629: 00        .byte $00, $00, $00, $00   ; 02 
- - - - - - 0x00C63D 03:A62D: 00        .byte $00, $00, $00, $00   ; 03 
- - - - - - 0x00C641 03:A631: 00        .byte $00, $00, $01, $01   ; 04 
- D 1 - - - 0x00C645 03:A635: 00        .byte $00, $00, $01, $00   ; 05 
- - - - - - 0x00C649 03:A639: 01        .byte $01, $00, $00, $00   ; 06 
- - - - - - 0x00C64D 03:A63D: 00        .byte $00, $00, $00, $00   ; 07 
- - - - - - 0x00C651 03:A641: 02        .byte $02, $00, $00, $00   ; 08 
- - - - - - 0x00C655 03:A645: 02        .byte $02, $02, $00, $00   ; 09 
- D 1 - - - 0x00C659 03:A649: 00        .byte $00, $00, $02, $00   ; 0A 
- D 1 - - - 0x00C65D 03:A64D: 00        .byte $00, $00, $02, $00   ; 0B 
- D 1 - - - 0x00C661 03:A651: 00        .byte $00, $00, $02, $02   ; 0C 
- D 1 - - - 0x00C665 03:A655: 02        .byte $02, $00, $02, $00   ; 0D 
- D 1 - - - 0x00C669 03:A659: 00        .byte $00, $00, $01, $01   ; 0E 
- D 1 - - - 0x00C66D 03:A65D: 01        .byte $01, $00, $01, $00   ; 0F 
- D 1 - - - 0x00C671 03:A661: 01        .byte $01, $00, $00, $00   ; 10 
- D 1 - - - 0x00C675 03:A665: 01        .byte $01, $01, $00, $00   ; 11 



tbl_A669:
- D 1 - - - 0x00C679 03:A669: 7D A6     .word _off015_A67D_00_stage_1
- D 1 - - - 0x00C67B 03:A66B: 00 A8     .word _off015_A800_01_stage_2
- D 1 - - - 0x00C67D 03:A66D: 6E A9     .word _off015_A96E_02_stage_3
- D 1 - - - 0x00C67F 03:A66F: 61 AA     .word _off015_AA61_03_stage_4
- D 1 - - - 0x00C681 03:A671: 15 AE     .word _off015_AE15_04_stage_5



tbl_A673:
- - - - - - 0x00C683 03:A673: 41 A8     .word _off016_A841_00_stage_1
- D 1 - - - 0x00C685 03:A675: 41 A8     .word _off016_A841_01_stage_2
- D 1 - - - 0x00C687 03:A677: 91 A9     .word _off016_A991_02_stage_3
- D 1 - - - 0x00C689 03:A679: ED AB     .word _off016_ABED_03_stage_4
- D 1 - - - 0x00C68B 03:A67B: 33 AE     .word _off016_AE33_04_stage_5



_off015_A67D_00_stage_1:
- D 1 - I - 0x00C68D 03:A67D: AD A6     .word _off017_00_A6AD_00
- D 1 - I - 0x00C68F 03:A67F: BE A6     .word _off017_00_A6BE_01
- D 1 - I - 0x00C691 03:A681: D3 A6     .word _off017_00_A6D3_02
- D 1 - I - 0x00C693 03:A683: D8 A6     .word _off017_00_A6D8_03
- D 1 - I - 0x00C695 03:A685: DD A6     .word _off017_00_A6DD_04
- D 1 - I - 0x00C697 03:A687: E2 A6     .word _off017_00_A6E2_05
- D 1 - I - 0x00C699 03:A689: F7 A6     .word _off017_00_A6F7_06
- D 1 - I - 0x00C69B 03:A68B: 08 A7     .word _off017_00_A708_07
- D 1 - I - 0x00C69D 03:A68D: 0D A7     .word _off017_00_A70D_08
- D 1 - I - 0x00C69F 03:A68F: 26 A7     .word _off017_00_A726_09
- D 1 - I - 0x00C6A1 03:A691: 37 A7     .word _off017_00_A737_0A
- D 1 - I - 0x00C6A3 03:A693: 44 A7     .word _off017_00_A744_0B
- D 1 - I - 0x00C6A5 03:A695: 51 A7     .word _off017_00_A751_0C
- D 1 - I - 0x00C6A7 03:A697: 66 A7     .word _off017_00_A766_0D
- D 1 - I - 0x00C6A9 03:A699: 73 A7     .word _off017_00_A773_0E
- D 1 - I - 0x00C6AB 03:A69B: 88 A7     .word _off017_00_A788_0F
- D 1 - I - 0x00C6AD 03:A69D: 91 A7     .word _off017_00_A791_10
- D 1 - I - 0x00C6AF 03:A69F: A6 A7     .word _off017_00_A7A6_11
- D 1 - I - 0x00C6B1 03:A6A1: AF A7     .word _off017_00_A7AF_12
- D 1 - I - 0x00C6B3 03:A6A3: C4 A7     .word _off017_00_A7C4_13
- D 1 - I - 0x00C6B5 03:A6A5: D5 A7     .word _off017_00_A7D5_14
- D 1 - I - 0x00C6B7 03:A6A7: EA A7     .word _off017_00_A7EA_15
- D 1 - I - 0x00C6B9 03:A6A9: FB A7     .word _off017_00_A7FB_16
- - - - - - 0x00C6BB 03:A6AB: FF A7     .word _off017_00_A7FF_17



_off017_00_A6AD_00:
; 
- D 1 - I - 0x00C6BD 03:A6AD: 07        .byte $07   ; 
- D 1 - I - 0x00C6BE 03:A6AE: 88        .byte $88   ; 
- D 1 - I - 0x00C6BF 03:A6AF: 3E        .byte $3E   ; 
- D 1 - I - 0x00C6C0 03:A6B0: 00        .byte $00   ; 
; 
- D 1 - I - 0x00C6C1 03:A6B1: 63        .byte $63   ; 
- D 1 - I - 0x00C6C2 03:A6B2: 38        .byte $38   ; 
- D 1 - I - 0x00C6C3 03:A6B3: 41        .byte $41   ; 
- D 1 - I - 0x00C6C4 03:A6B4: 0A        .byte $0A   ; 
; 
- D 1 - I - 0x00C6C5 03:A6B5: 76        .byte $76   ; 
- D 1 - I - 0x00C6C6 03:A6B6: A8        .byte $A8   ; 
- D 1 - I - 0x00C6C7 03:A6B7: 3F        .byte $3F   ; 
- D 1 - I - 0x00C6C8 03:A6B8: 03        .byte $03   ; 
; 
- D 1 - I - 0x00C6C9 03:A6B9: E7        .byte $E7   ; 
- D 1 - I - 0x00C6CA 03:A6BA: A8        .byte $A8   ; 
- D 1 - I - 0x00C6CB 03:A6BB: 3F        .byte $3F   ; 
- D 1 - I - 0x00C6CC 03:A6BC: 04        .byte $04   ; 
; 
- D 1 - I - 0x00C6CD 03:A6BD: FF        .byte $FF   ; end token



_off017_00_A6BE_01:
; 
- D 1 - I - 0x00C6CE 03:A6BE: 1C        .byte $1C   ; 
- D 1 - I - 0x00C6CF 03:A6BF: 38        .byte $38   ; 
- D 1 - I - 0x00C6D0 03:A6C0: 41        .byte $41   ; 
- D 1 - I - 0x00C6D1 03:A6C1: 0D        .byte $0D   ; 
; 
- D 1 - I - 0x00C6D2 03:A6C2: 36        .byte $36   ; 
- D 1 - I - 0x00C6D3 03:A6C3: A8        .byte $A8   ; 
- D 1 - I - 0x00C6D4 03:A6C4: 3F        .byte $3F   ; 
- D 1 - I - 0x00C6D5 03:A6C5: 06        .byte $06   ; 
; 
- D 1 - I - 0x00C6D6 03:A6C6: 84        .byte $84   ; 
- D 1 - I - 0x00C6D7 03:A6C7: A8        .byte $A8   ; 
- D 1 - I - 0x00C6D8 03:A6C8: 41        .byte $41   ; 
- D 1 - I - 0x00C6D9 03:A6C9: 08        .byte $08   ; 
; 
- D 1 - I - 0x00C6DA 03:A6CA: DC        .byte $DC   ; 
- D 1 - I - 0x00C6DB 03:A6CB: A8        .byte $A8   ; 
- D 1 - I - 0x00C6DC 03:A6CC: 3F        .byte $3F   ; 
- D 1 - I - 0x00C6DD 03:A6CD: 02        .byte $02   ; 
; 
- D 1 - I - 0x00C6DE 03:A6CE: D8        .byte $D8   ; 
- D 1 - I - 0x00C6DF 03:A6CF: 38        .byte $38   ; 
- D 1 - I - 0x00C6E0 03:A6D0: 41        .byte $41   ; 
- D 1 - I - 0x00C6E1 03:A6D1: 0B        .byte $0B   ; 
; 
- D 1 - I - 0x00C6E2 03:A6D2: FF        .byte $FF   ; end token



_off017_00_A6D3_02:
; 
- D 1 - I - 0x00C6E3 03:A6D3: 5A        .byte $5A   ; 
- D 1 - I - 0x00C6E4 03:A6D4: A8        .byte $A8   ; 
- D 1 - I - 0x00C6E5 03:A6D5: 3E        .byte $3E   ; 
- D 1 - I - 0x00C6E6 03:A6D6: 04        .byte $04   ; 
; 
- D 1 - I - 0x00C6E7 03:A6D7: FF        .byte $FF   ; end token



_off017_00_A6D8_03:
; 
- D 1 - I - 0x00C6E8 03:A6D8: 55        .byte $55   ; 
- D 1 - I - 0x00C6E9 03:A6D9: 90        .byte $90   ; 
- D 1 - I - 0x00C6EA 03:A6DA: 15        .byte $15   ; 
- D 1 - I - 0x00C6EB 03:A6DB: 06        .byte $06   ; 
; 
- D 1 - I - 0x00C6EC 03:A6DC: FF        .byte $FF   ; end token



_off017_00_A6DD_04:
; 
- D 1 - I - 0x00C6ED 03:A6DD: F7        .byte $F7   ; 
- D 1 - I - 0x00C6EE 03:A6DE: 38        .byte $38   ; 
- D 1 - I - 0x00C6EF 03:A6DF: 4C        .byte $4C   ; 
- D 1 - I - 0x00C6F0 03:A6E0: 15        .byte $15   ; 
; 
- D 1 - I - 0x00C6F1 03:A6E1: FF        .byte $FF   ; end token



_off017_00_A6E2_05:
; 
- D 1 - I - 0x00C6F2 03:A6E2: 65        .byte $65   ; 
- D 1 - I - 0x00C6F3 03:A6E3: 68        .byte $68   ; 
- D 1 - I - 0x00C6F4 03:A6E4: 4E        .byte $4E   ; 
- D 1 - I - 0x00C6F5 03:A6E5: 36        .byte $36   ; 
; 
- D 1 - I - 0x00C6F6 03:A6E6: 8D        .byte $8D   ; 
- D 1 - I - 0x00C6F7 03:A6E7: 30        .byte $30   ; 
- D 1 - I - 0x00C6F8 03:A6E8: 30        .byte $30   ; 
- D 1 - I - 0x00C6F9 03:A6E9: 00        .byte $00   ; 
; 
- D 1 - I - 0x00C6FA 03:A6EA: AD        .byte $AD   ; 
- D 1 - I - 0x00C6FB 03:A6EB: 30        .byte $30   ; 
- D 1 - I - 0x00C6FC 03:A6EC: 30        .byte $30   ; 
- D 1 - I - 0x00C6FD 03:A6ED: 09        .byte $09   ; 
; 
- D 1 - I - 0x00C6FE 03:A6EE: CD        .byte $CD   ; 
- D 1 - I - 0x00C6FF 03:A6EF: 30        .byte $30   ; 
- D 1 - I - 0x00C700 03:A6F0: 30        .byte $30   ; 
- D 1 - I - 0x00C701 03:A6F1: 12        .byte $12   ; 
; 
- D 1 - I - 0x00C702 03:A6F2: ED        .byte $ED   ; 
- D 1 - I - 0x00C703 03:A6F3: 30        .byte $30   ; 
- D 1 - I - 0x00C704 03:A6F4: 30        .byte $30   ; 
- D 1 - I - 0x00C705 03:A6F5: 1B        .byte $1B   ; 
; 
- D 1 - I - 0x00C706 03:A6F6: FF        .byte $FF   ; end token



_off017_00_A6F7_06:
; 
- D 1 - I - 0x00C707 03:A6F7: 3F        .byte $3F   ; 
- D 1 - I - 0x00C708 03:A6F8: 78        .byte $78   ; 
- D 1 - I - 0x00C709 03:A6F9: 47        .byte $47   ; 
- D 1 - I - 0x00C70A 03:A6FA: 1C        .byte $1C   ; 
; 
- D 1 - I - 0x00C70B 03:A6FB: 84        .byte $84   ; 
- D 1 - I - 0x00C70C 03:A6FC: 58        .byte $58   ; 
- D 1 - I - 0x00C70D 03:A6FD: 47        .byte $47   ; 
- D 1 - I - 0x00C70E 03:A6FE: 05        .byte $05   ; 
; 
- D 1 - I - 0x00C70F 03:A6FF: 88        .byte $88   ; 
- D 1 - I - 0x00C710 03:A700: 98        .byte $98   ; 
- D 1 - I - 0x00C711 03:A701: 47        .byte $47   ; 
- D 1 - I - 0x00C712 03:A702: 06        .byte $06   ; 
; 
- D 1 - I - 0x00C713 03:A703: BB        .byte $BB   ; 
- D 1 - I - 0x00C714 03:A704: 98        .byte $98   ; 
- D 1 - I - 0x00C715 03:A705: 47        .byte $47   ; 
- D 1 - I - 0x00C716 03:A706: 26        .byte $26   ; 
; 
- D 1 - I - 0x00C717 03:A707: FF        .byte $FF   ; end token



_off017_00_A708_07:
; 
- D 1 - I - 0x00C718 03:A708: 81        .byte $81   ; 
- D 1 - I - 0x00C719 03:A709: 00        .byte $00   ; 
- D 1 - I - 0x00C71A 03:A70A: 9B        .byte $9B   ; 
- D 1 - I - 0x00C71B 03:A70B: 09        .byte $09   ; 
; 
- D 1 - I - 0x00C71C 03:A70C: FF        .byte $FF   ; end token



_off017_00_A70D_08:
; 
- D 1 - I - 0x00C71D 03:A70D: 62        .byte $62   ; 
- D 1 - I - 0x00C71E 03:A70E: 00        .byte $00   ; 
- D 1 - I - 0x00C71F 03:A70F: 9B        .byte $9B   ; 
- D 1 - I - 0x00C720 03:A710: 0C        .byte $0C   ; 
; 
- D 1 - I - 0x00C721 03:A711: 45        .byte $45   ; 
- D 1 - I - 0x00C722 03:A712: 78        .byte $78   ; 
- D 1 - I - 0x00C723 03:A713: 46        .byte $46   ; 
- D 1 - I - 0x00C724 03:A714: 03        .byte $03   ; 
; 
- D 1 - I - 0x00C725 03:A715: 77        .byte $77   ; 
- D 1 - I - 0x00C726 03:A716: 78        .byte $78   ; 
- D 1 - I - 0x00C727 03:A717: 47        .byte $47   ; 
- D 1 - I - 0x00C728 03:A718: 1D        .byte $1D   ; 
; 
- D 1 - I - 0x00C729 03:A719: 86        .byte $86   ; 
- D 1 - I - 0x00C72A 03:A71A: 68        .byte $68   ; 
- D 1 - I - 0x00C72B 03:A71B: 47        .byte $47   ; 
- D 1 - I - 0x00C72C 03:A71C: 05        .byte $05   ; 
; 
- D 1 - I - 0x00C72D 03:A71D: D3        .byte $D3   ; 
- D 1 - I - 0x00C72E 03:A71E: 68        .byte $68   ; 
- D 1 - I - 0x00C72F 03:A71F: 47        .byte $47   ; 
- D 1 - I - 0x00C730 03:A720: 00        .byte $00   ; 
; 
- D 1 - I - 0x00C731 03:A721: 0D        .byte $0D   ; 
- D 1 - I - 0x00C732 03:A722: A8        .byte $A8   ; 
- D 1 - I - 0x00C733 03:A723: 31        .byte $31   ; 
- D 1 - I - 0x00C734 03:A724: 02        .byte $02   ; 
; 
- D 1 - I - 0x00C735 03:A725: FF        .byte $FF   ; end token



_off017_00_A726_09:
; 
- D 1 - I - 0x00C736 03:A726: 0A        .byte $0A   ; 
- D 1 - I - 0x00C737 03:A727: 68        .byte $68   ; 
- D 1 - I - 0x00C738 03:A728: 47        .byte $47   ; 
- D 1 - I - 0x00C739 03:A729: 19        .byte $19   ; 
; 
- D 1 - I - 0x00C73A 03:A72A: 56        .byte $56   ; 
- D 1 - I - 0x00C73B 03:A72B: 68        .byte $68   ; 
- D 1 - I - 0x00C73C 03:A72C: 47        .byte $47   ; 
- D 1 - I - 0x00C73D 03:A72D: 1A        .byte $1A   ; 
; 
- D 1 - I - 0x00C73E 03:A72E: 8F        .byte $8F   ; 
- D 1 - I - 0x00C73F 03:A72F: B8        .byte $B8   ; 
- D 1 - I - 0x00C740 03:A730: 98        .byte $98   ; 
- D 1 - I - 0x00C741 03:A731: 03        .byte $03   ; 
; 
- D 1 - I - 0x00C742 03:A732: E6        .byte $E6   ; 
- D 1 - I - 0x00C743 03:A733: A8        .byte $A8   ; 
- D 1 - I - 0x00C744 03:A734: 47        .byte $47   ; 
- D 1 - I - 0x00C745 03:A735: 1C        .byte $1C   ; 
; 
- D 1 - I - 0x00C746 03:A736: FF        .byte $FF   ; end token



_off017_00_A737_0A:
; 
- D 1 - I - 0x00C747 03:A737: 2D        .byte $2D   ; 
- D 1 - I - 0x00C748 03:A738: A8        .byte $A8   ; 
- D 1 - I - 0x00C749 03:A739: 46        .byte $46   ; 
- D 1 - I - 0x00C74A 03:A73A: 1E        .byte $1E   ; 
; 
- D 1 - I - 0x00C74B 03:A73B: 27        .byte $27   ; 
- D 1 - I - 0x00C74C 03:A73C: A8        .byte $A8   ; 
- D 1 - I - 0x00C74D 03:A73D: 47        .byte $47   ; 
- D 1 - I - 0x00C74E 03:A73E: 1D        .byte $1D   ; 
; 
- D 1 - I - 0x00C74F 03:A73F: A5        .byte $A5   ; 
- D 1 - I - 0x00C750 03:A740: A8        .byte $A8   ; 
- D 1 - I - 0x00C751 03:A741: 46        .byte $46   ; 
- D 1 - I - 0x00C752 03:A742: 1E        .byte $1E   ; 
; 
- D 1 - I - 0x00C753 03:A743: FF        .byte $FF   ; end token



_off017_00_A744_0B:
; 
- D 1 - I - 0x00C754 03:A744: 74        .byte $74   ; 
- D 1 - I - 0x00C755 03:A745: A8        .byte $A8   ; 
- D 1 - I - 0x00C756 03:A746: 47        .byte $47   ; 
- D 1 - I - 0x00C757 03:A747: 18        .byte $18   ; 
; 
- D 1 - I - 0x00C758 03:A748: 8C        .byte $8C   ; 
- D 1 - I - 0x00C759 03:A749: 48        .byte $48   ; 
- D 1 - I - 0x00C75A 03:A74A: 14        .byte $14   ; 
- D 1 - I - 0x00C75B 03:A74B: 01        .byte $01   ; 
; 
- D 1 - I - 0x00C75C 03:A74C: AC        .byte $AC   ; 
- D 1 - I - 0x00C75D 03:A74D: 48        .byte $48   ; 
- D 1 - I - 0x00C75E 03:A74E: 14        .byte $14   ; 
- D 1 - I - 0x00C75F 03:A74F: 02        .byte $02   ; 
; 
- D 1 - I - 0x00C760 03:A750: FF        .byte $FF   ; end token



_off017_00_A751_0C:
; 
- D 1 - I - 0x00C761 03:A751: 4D        .byte $4D   ; 
- D 1 - I - 0x00C762 03:A752: 50        .byte $50   ; 
- D 1 - I - 0x00C763 03:A753: 9A        .byte $9A   ; 
- D 1 - I - 0x00C764 03:A754: 04        .byte $04   ; 
; 
- D 1 - I - 0x00C765 03:A755: 73        .byte $73   ; 
- D 1 - I - 0x00C766 03:A756: 98        .byte $98   ; 
- D 1 - I - 0x00C767 03:A757: 47        .byte $47   ; 
- D 1 - I - 0x00C768 03:A758: 20        .byte $20   ; 
; 
- D 1 - I - 0x00C769 03:A759: 8E        .byte $8E   ; 
- D 1 - I - 0x00C76A 03:A75A: B8        .byte $B8   ; 
- D 1 - I - 0x00C76B 03:A75B: 9A        .byte $9A   ; 
- D 1 - I - 0x00C76C 03:A75C: 0D        .byte $0D   ; 
; 
- D 1 - I - 0x00C76D 03:A75D: D2        .byte $D2   ; 
- D 1 - I - 0x00C76E 03:A75E: B8        .byte $B8   ; 
- D 1 - I - 0x00C76F 03:A75F: 9A        .byte $9A   ; 
- D 1 - I - 0x00C770 03:A760: 16        .byte $16   ; 
; 
- D 1 - I - 0x00C771 03:A761: F7        .byte $F7   ; 
- D 1 - I - 0x00C772 03:A762: 78        .byte $78   ; 
- D 1 - I - 0x00C773 03:A763: 47        .byte $47   ; 
- D 1 - I - 0x00C774 03:A764: 20        .byte $20   ; 
; 
- D 1 - I - 0x00C775 03:A765: FF        .byte $FF   ; end token



_off017_00_A766_0D:
; 
- D 1 - I - 0x00C776 03:A766: 16        .byte $16   ; 
- D 1 - I - 0x00C777 03:A767: 88        .byte $88   ; 
- D 1 - I - 0x00C778 03:A768: AB        .byte $AB   ; 
- D 1 - I - 0x00C779 03:A769: 02        .byte $02   ; 
; 
- D 1 - I - 0x00C77A 03:A76A: 41        .byte $41   ; 
- D 1 - I - 0x00C77B 03:A76B: 00        .byte $00   ; 
- D 1 - I - 0x00C77C 03:A76C: 9B        .byte $9B   ; 
- D 1 - I - 0x00C77D 03:A76D: 03        .byte $03   ; 
; 
- D 1 - I - 0x00C77E 03:A76E: 96        .byte $96   ; 
- D 1 - I - 0x00C77F 03:A76F: 88        .byte $88   ; 
- D 1 - I - 0x00C780 03:A770: AB        .byte $AB   ; 
- D 1 - I - 0x00C781 03:A771: 05        .byte $05   ; 
; 
- D 1 - I - 0x00C782 03:A772: FF        .byte $FF   ; end token



_off017_00_A773_0E:
; 
- D 1 - I - 0x00C783 03:A773: 3F        .byte $3F   ; 
- D 1 - I - 0x00C784 03:A774: 75        .byte $75   ; 
- D 1 - I - 0x00C785 03:A775: 98        .byte $98   ; 
- D 1 - I - 0x00C786 03:A776: 08        .byte $08   ; 
; 
- D 1 - I - 0x00C787 03:A777: 5F        .byte $5F   ; 
- D 1 - I - 0x00C788 03:A778: 9F        .byte $9F   ; 
- D 1 - I - 0x00C789 03:A779: 98        .byte $98   ; 
- D 1 - I - 0x00C78A 03:A77A: 11        .byte $11   ; 
; 
- D 1 - I - 0x00C78B 03:A77B: 8F        .byte $8F   ; 
- D 1 - I - 0x00C78C 03:A77C: B7        .byte $B7   ; 
- D 1 - I - 0x00C78D 03:A77D: 98        .byte $98   ; 
- D 1 - I - 0x00C78E 03:A77E: 1A        .byte $1A   ; 
; 
- D 1 - I - 0x00C78F 03:A77F: DF        .byte $DF   ; 
- D 1 - I - 0x00C790 03:A780: 9D        .byte $9D   ; 
- D 1 - I - 0x00C791 03:A781: 98        .byte $98   ; 
- D 1 - I - 0x00C792 03:A782: 23        .byte $23   ; 
; 
- D 1 - I - 0x00C793 03:A783: FD        .byte $FD   ; 
- D 1 - I - 0x00C794 03:A784: 75        .byte $75   ; 
- D 1 - I - 0x00C795 03:A785: 98        .byte $98   ; 
- D 1 - I - 0x00C796 03:A786: 2C        .byte $2C   ; 
; 
- D 1 - I - 0x00C797 03:A787: FF        .byte $FF   ; end token



_off017_00_A788_0F:
; 
- D 1 - I - 0x00C798 03:A788: 36        .byte $36   ; 
- D 1 - I - 0x00C799 03:A789: 58        .byte $58   ; 
- D 1 - I - 0x00C79A 03:A78A: 47        .byte $47   ; 
- D 1 - I - 0x00C79B 03:A78B: 1D        .byte $1D   ; 
; 
- D 1 - I - 0x00C79C 03:A78C: D6        .byte $D6   ; 
- D 1 - I - 0x00C79D 03:A78D: 98        .byte $98   ; 
- D 1 - I - 0x00C79E 03:A78E: 47        .byte $47   ; 
- D 1 - I - 0x00C79F 03:A78F: 1E        .byte $1E   ; 
; 
- D 1 - I - 0x00C7A0 03:A790: FF        .byte $FF   ; end token



_off017_00_A791_10:
; 
- D 1 - I - 0x00C7A1 03:A791: 15        .byte $15   ; 
- D 1 - I - 0x00C7A2 03:A792: 78        .byte $78   ; 
- D 1 - I - 0x00C7A3 03:A793: 46        .byte $46   ; 
- D 1 - I - 0x00C7A4 03:A794: 01        .byte $01   ; 
; 
- D 1 - I - 0x00C7A5 03:A795: 60        .byte $60   ; 
- D 1 - I - 0x00C7A6 03:A796: 90        .byte $90   ; 
- D 1 - I - 0x00C7A7 03:A797: 9C        .byte $9C   ; 
- D 1 - I - 0x00C7A8 03:A798: 22        .byte $22   ; 
; 
- D 1 - I - 0x00C7A9 03:A799: 7B        .byte $7B   ; 
- D 1 - I - 0x00C7AA 03:A79A: B0        .byte $B0   ; 
- D 1 - I - 0x00C7AB 03:A79B: 9C        .byte $9C   ; 
- D 1 - I - 0x00C7AC 03:A79C: 23        .byte $23   ; 
; 
- D 1 - I - 0x00C7AD 03:A79D: AA        .byte $AA   ; 
- D 1 - I - 0x00C7AE 03:A79E: B0        .byte $B0   ; 
- D 1 - I - 0x00C7AF 03:A79F: 9C        .byte $9C   ; 
- D 1 - I - 0x00C7B0 03:A7A0: 24        .byte $24   ; 
; 
- D 1 - I - 0x00C7B1 03:A7A1: CA        .byte $CA   ; 
- D 1 - I - 0x00C7B2 03:A7A2: 88        .byte $88   ; 
- D 1 - I - 0x00C7B3 03:A7A3: 9C        .byte $9C   ; 
- D 1 - I - 0x00C7B4 03:A7A4: 25        .byte $25   ; 
; 
- D 1 - I - 0x00C7B5 03:A7A5: FF        .byte $FF   ; end token



_off017_00_A7A6_11:
; 
- D 1 - I - 0x00C7B6 03:A7A6: 32        .byte $32   ; 
- D 1 - I - 0x00C7B7 03:A7A7: 38        .byte $38   ; 
- D 1 - I - 0x00C7B8 03:A7A8: 47        .byte $47   ; 
- D 1 - I - 0x00C7B9 03:A7A9: 1E        .byte $1E   ; 
; 
- D 1 - I - 0x00C7BA 03:A7AA: 41        .byte $41   ; 
- D 1 - I - 0x00C7BB 03:A7AB: A9        .byte $A9   ; 
- D 1 - I - 0x00C7BC 03:A7AC: 47        .byte $47   ; 
- D 1 - I - 0x00C7BD 03:A7AD: 01        .byte $01   ; 
; 
- D 1 - I - 0x00C7BE 03:A7AE: FF        .byte $FF   ; end token



_off017_00_A7AF_12:
; 
- D 1 - I - 0x00C7BF 03:A7AF: 27        .byte $27   ; 
- D 1 - I - 0x00C7C0 03:A7B0: A8        .byte $A8   ; 
- D 1 - I - 0x00C7C1 03:A7B1: 41        .byte $41   ; 
- D 1 - I - 0x00C7C2 03:A7B2: 09        .byte $09   ; 
; 
- D 1 - I - 0x00C7C3 03:A7B3: 4D        .byte $4D   ; 
- D 1 - I - 0x00C7C4 03:A7B4: A8        .byte $A8   ; 
- D 1 - I - 0x00C7C5 03:A7B5: 45        .byte $45   ; 
- D 1 - I - 0x00C7C6 03:A7B6: 32        .byte $32   ; 
; 
- D 1 - I - 0x00C7C7 03:A7B7: 87        .byte $87   ; 
- D 1 - I - 0x00C7C8 03:A7B8: 38        .byte $38   ; 
- D 1 - I - 0x00C7C9 03:A7B9: 41        .byte $41   ; 
- D 1 - I - 0x00C7CA 03:A7BA: 0B        .byte $0B   ; 
; 
- D 1 - I - 0x00C7CB 03:A7BB: C8        .byte $C8   ; 
- D 1 - I - 0x00C7CC 03:A7BC: 48        .byte $48   ; 
- D 1 - I - 0x00C7CD 03:A7BD: 3F        .byte $3F   ; 
- D 1 - I - 0x00C7CE 03:A7BE: 04        .byte $04   ; 
; 
- D 1 - I - 0x00C7CF 03:A7BF: E9        .byte $E9   ; 
- D 1 - I - 0x00C7D0 03:A7C0: 48        .byte $48   ; 
- D 1 - I - 0x00C7D1 03:A7C1: 45        .byte $45   ; 
- D 1 - I - 0x00C7D2 03:A7C2: 35        .byte $35   ; 
; 
- D 1 - I - 0x00C7D3 03:A7C3: FF        .byte $FF   ; end token



_off017_00_A7C4_13:
; 
- D 1 - I - 0x00C7D4 03:A7C4: 36        .byte $36   ; 
- D 1 - I - 0x00C7D5 03:A7C5: 48        .byte $48   ; 
- D 1 - I - 0x00C7D6 03:A7C6: 3F        .byte $3F   ; 
- D 1 - I - 0x00C7D7 03:A7C7: 00        .byte $00   ; 
; 
- D 1 - I - 0x00C7D8 03:A7C8: 56        .byte $56   ; 
- D 1 - I - 0x00C7D9 03:A7C9: 38        .byte $38   ; 
- D 1 - I - 0x00C7DA 03:A7CA: 41        .byte $41   ; 
- D 1 - I - 0x00C7DB 03:A7CB: 09        .byte $09   ; 
; 
- D 1 - I - 0x00C7DC 03:A7CC: E8        .byte $E8   ; 
- D 1 - I - 0x00C7DD 03:A7CD: 48        .byte $48   ; 
- D 1 - I - 0x00C7DE 03:A7CE: 41        .byte $41   ; 
- D 1 - I - 0x00C7DF 03:A7CF: 0A        .byte $0A   ; 
; 
- D 1 - I - 0x00C7E0 03:A7D0: F9        .byte $F9   ; 
- D 1 - I - 0x00C7E1 03:A7D1: 48        .byte $48   ; 
- D 1 - I - 0x00C7E2 03:A7D2: 3E        .byte $3E   ; 
- D 1 - I - 0x00C7E3 03:A7D3: 86        .byte $86   ; 
; 
- D 1 - I - 0x00C7E4 03:A7D4: FF        .byte $FF   ; end token



_off017_00_A7D5_14:
; 
- D 1 - I - 0x00C7E5 03:A7D5: 05        .byte $05   ; 
- D 1 - I - 0x00C7E6 03:A7D6: 77        .byte $77   ; 
- D 1 - I - 0x00C7E7 03:A7D7: 3F        .byte $3F   ; 
- D 1 - I - 0x00C7E8 03:A7D8: 13        .byte $13   ; 
; 
- D 1 - I - 0x00C7E9 03:A7D9: 96        .byte $96   ; 
- D 1 - I - 0x00C7EA 03:A7DA: 88        .byte $88   ; 
- D 1 - I - 0x00C7EB 03:A7DB: 3F        .byte $3F   ; 
- D 1 - I - 0x00C7EC 03:A7DC: 14        .byte $14   ; 
; 
- D 1 - I - 0x00C7ED 03:A7DD: A7        .byte $A7   ; 
- D 1 - I - 0x00C7EE 03:A7DE: 77        .byte $77   ; 
- D 1 - I - 0x00C7EF 03:A7DF: 41        .byte $41   ; 
- D 1 - I - 0x00C7F0 03:A7E0: 0D        .byte $0D   ; 
; 
- D 1 - I - 0x00C7F1 03:A7E1: B1        .byte $B1   ; 
- D 1 - I - 0x00C7F2 03:A7E2: 78        .byte $78   ; 
- D 1 - I - 0x00C7F3 03:A7E3: 3E        .byte $3E   ; 
- D 1 - I - 0x00C7F4 03:A7E4: 06        .byte $06   ; 
; 
- D 1 - I - 0x00C7F5 03:A7E5: B7        .byte $B7   ; 
- D 1 - I - 0x00C7F6 03:A7E6: 78        .byte $78   ; 
- D 1 - I - 0x00C7F7 03:A7E7: 3E        .byte $3E   ; 
- D 1 - I - 0x00C7F8 03:A7E8: 86        .byte $86   ; 
; 
- D 1 - I - 0x00C7F9 03:A7E9: FF        .byte $FF   ; end token



_off017_00_A7EA_15:
; 
- D 1 - I - 0x00C7FA 03:A7EA: 0C        .byte $0C   ; 
- D 1 - I - 0x00C7FB 03:A7EB: A8        .byte $A8   ; 
- D 1 - I - 0x00C7FC 03:A7EC: 41        .byte $41   ; 
- D 1 - I - 0x00C7FD 03:A7ED: 08        .byte $08   ; 
; 
- D 1 - I - 0x00C7FE 03:A7EE: 52        .byte $52   ; 
- D 1 - I - 0x00C7FF 03:A7EF: A5        .byte $A5   ; 
- D 1 - I - 0x00C800 03:A7F0: 3E        .byte $3E   ; 
- D 1 - I - 0x00C801 03:A7F1: 01        .byte $01   ; 
; 
- D 1 - I - 0x00C802 03:A7F2: 38        .byte $38   ; 
- D 1 - I - 0x00C803 03:A7F3: 38        .byte $38   ; 
- D 1 - I - 0x00C804 03:A7F4: 41        .byte $41   ; 
- D 1 - I - 0x00C805 03:A7F5: 0A        .byte $0A   ; 
; 
- D 1 - I - 0x00C806 03:A7F6: C6        .byte $C6   ; 
- D 1 - I - 0x00C807 03:A7F7: 48        .byte $48   ; 
- D 1 - I - 0x00C808 03:A7F8: 41        .byte $41   ; 
- D 1 - I - 0x00C809 03:A7F9: 0B        .byte $0B   ; 
; 
- D 1 - I - 0x00C80A 03:A7FA: FF        .byte $FF   ; end token



_off017_00_A7FB_16:
; 
- D 1 - I - 0x00C80B 03:A7FB: E8        .byte $E8   ; 
- D 1 - I - 0x00C80C 03:A7FC: 28        .byte $28   ; 
- D 1 - I - 0x00C80D 03:A7FD: 33        .byte $33   ; 
- D 1 - I - 0x00C80E 03:A7FE: 40        .byte $40   ; 
_off017_00_A7FF_17:
; 
- D 1 - I - 0x00C80F 03:A7FF: FF        .byte $FF   ; end token



_off015_A800_01_stage_2:
- D 1 - I - 0x00C810 03:A800: 00        .byte $00   ; 
- D 1 - I - 0x00C811 03:A801: 00        .byte $00   ; 
- D 1 - I - 0x00C812 03:A802: 00        .byte $00   ; 
- - - - - - 0x00C813 03:A803: 00        .byte $00   ; 
- D 1 - I - 0x00C814 03:A804: 11        .byte $11   ; 
- D 1 - I - 0x00C815 03:A805: 00        .byte $00   ; 
- D 1 - I - 0x00C816 03:A806: 00        .byte $00   ; 
- D 1 - I - 0x00C817 03:A807: 00        .byte $00   ; 
- - - - - - 0x00C818 03:A808: 00        .byte $00   ; 
- D 1 - I - 0x00C819 03:A809: 12        .byte $12   ; 
- D 1 - I - 0x00C81A 03:A80A: 00        .byte $00   ; 
- D 1 - I - 0x00C81B 03:A80B: 01        .byte $01   ; 
- D 1 - I - 0x00C81C 03:A80C: 07        .byte $07   ; 
- - - - - - 0x00C81D 03:A80D: 00        .byte $00   ; 
- D 1 - I - 0x00C81E 03:A80E: 13        .byte $13   ; 
- D 1 - I - 0x00C81F 03:A80F: 00        .byte $00   ; 
- D 1 - I - 0x00C820 03:A810: 02        .byte $02   ; 
- D 1 - I - 0x00C821 03:A811: 08        .byte $08   ; 
- - - - - - 0x00C822 03:A812: 00        .byte $00   ; 
- D 1 - I - 0x00C823 03:A813: 00        .byte $00   ; 
- D 1 - I - 0x00C824 03:A814: 00        .byte $00   ; 
- D 1 - I - 0x00C825 03:A815: 03        .byte $03   ; 
- D 1 - I - 0x00C826 03:A816: 09        .byte $09   ; 
- - - - - - 0x00C827 03:A817: 00        .byte $00   ; 
- - - - - - 0x00C828 03:A818: 00        .byte $00   ; 
- D 1 - I - 0x00C829 03:A819: 00        .byte $00   ; 
- D 1 - I - 0x00C82A 03:A81A: 04        .byte $04   ; 
- D 1 - I - 0x00C82B 03:A81B: 0A        .byte $0A   ; 
- - - - - - 0x00C82C 03:A81C: 00        .byte $00   ; 
- - - - - - 0x00C82D 03:A81D: 00        .byte $00   ; 
- - - - - - 0x00C82E 03:A81E: 00        .byte $00   ; 
- D 1 - I - 0x00C82F 03:A81F: 05        .byte $05   ; 
- D 1 - I - 0x00C830 03:A820: 0B        .byte $0B   ; 
- - - - - - 0x00C831 03:A821: 15        .byte $15   ; 
- - - - - - 0x00C832 03:A822: 00        .byte $00   ; 
- - - - - - 0x00C833 03:A823: 00        .byte $00   ; 
- D 1 - I - 0x00C834 03:A824: 06        .byte $06   ; 
- D 1 - I - 0x00C835 03:A825: 0C        .byte $0C   ; 
- D 1 - I - 0x00C836 03:A826: 00        .byte $00   ; 
- - - - - - 0x00C837 03:A827: 00        .byte $00   ; 
- - - - - - 0x00C838 03:A828: 00        .byte $00   ; 
- D 1 - I - 0x00C839 03:A829: 00        .byte $00   ; 
- D 1 - I - 0x00C83A 03:A82A: 14        .byte $14   ; 
- D 1 - I - 0x00C83B 03:A82B: 0D        .byte $0D   ; 
- D 1 - I - 0x00C83C 03:A82C: 00        .byte $00   ; 
- - - - - - 0x00C83D 03:A82D: 00        .byte $00   ; 
- - - - - - 0x00C83E 03:A82E: 00        .byte $00   ; 
- D 1 - I - 0x00C83F 03:A82F: 00        .byte $00   ; 
- D 1 - I - 0x00C840 03:A830: 0E        .byte $0E   ; 
- D 1 - I - 0x00C841 03:A831: 00        .byte $00   ; 
- - - - - - 0x00C842 03:A832: 00        .byte $00   ; 
- - - - - - 0x00C843 03:A833: 00        .byte $00   ; 
- D 1 - I - 0x00C844 03:A834: 00        .byte $00   ; 
- D 1 - I - 0x00C845 03:A835: 0F        .byte $0F   ; 
- D 1 - I - 0x00C846 03:A836: 00        .byte $00   ; 
- - - - - - 0x00C847 03:A837: 00        .byte $00   ; 
- - - - - - 0x00C848 03:A838: 00        .byte $00   ; 
- D 1 - I - 0x00C849 03:A839: 00        .byte $00   ; 
- D 1 - I - 0x00C84A 03:A83A: 10        .byte $10   ; 
- D 1 - I - 0x00C84B 03:A83B: 00        .byte $00   ; 
- - - - - - 0x00C84C 03:A83C: 00        .byte $00   ; 
- - - - - - 0x00C84D 03:A83D: 00        .byte $00   ; 
- D 1 - I - 0x00C84E 03:A83E: 00        .byte $00   ; 
- D 1 - I - 0x00C84F 03:A83F: 00        .byte $00   ; 
- D 1 - I - 0x00C850 03:A840: 00        .byte $00   ; 



_off016_A841_00_stage_1:
_off016_A841_01_stage_2:
- D 1 - I - 0x00C851 03:A841: 7D A8     .word _off018_00_01_A87D_00
- D 1 - I - 0x00C853 03:A843: 6D A8     .word _off018_00_01_A86D_01
- D 1 - I - 0x00C855 03:A845: 7E A8     .word _off018_00_01_A87E_02
- D 1 - I - 0x00C857 03:A847: 8B A8     .word _off018_00_01_A88B_03
- D 1 - I - 0x00C859 03:A849: 98 A8     .word _off018_00_01_A898_04
- D 1 - I - 0x00C85B 03:A84B: A9 A8     .word _off018_00_01_A8A9_05
- D 1 - I - 0x00C85D 03:A84D: BE A8     .word _off018_00_01_A8BE_06
- D 1 - I - 0x00C85F 03:A84F: C3 A8     .word _off018_00_01_A8C3_07
- D 1 - I - 0x00C861 03:A851: D0 A8     .word _off018_00_01_A8D0_08
- D 1 - I - 0x00C863 03:A853: E1 A8     .word _off018_00_01_A8E1_09
- D 1 - I - 0x00C865 03:A855: E6 A8     .word _off018_00_01_A8E6_0A
- D 1 - I - 0x00C867 03:A857: EB A8     .word _off018_00_01_A8EB_0B
- D 1 - I - 0x00C869 03:A859: F8 A8     .word _off018_00_01_A8F8_0C
- D 1 - I - 0x00C86B 03:A85B: 0B A9     .word _off018_00_01_A90B_0D
- D 1 - I - 0x00C86D 03:A85D: 1C A9     .word _off018_00_01_A91C_0E
- D 1 - I - 0x00C86F 03:A85F: 2D A9     .word _off018_00_01_A92D_0F
- D 1 - I - 0x00C871 03:A861: 46 A9     .word _off018_00_01_A946_10
- D 1 - I - 0x00C873 03:A863: 5B A9     .word _off018_00_01_A95B_11
- D 1 - I - 0x00C875 03:A865: 60 A9     .word _off018_00_01_A960_12
- D 1 - I - 0x00C877 03:A867: 65 A9     .word _off018_00_01_A965_13
- D 1 - I - 0x00C879 03:A869: 05 A9     .word _off018_00_01_A905_14
- - - - - - 0x00C87B 03:A86B: 0A A9     .word _off018_00_01_A90A_15



_off018_00_01_A86D_01:
- D 1 - I - 0x00C87D 03:A86D: CE        .byte $CE   ; 
- D 1 - I - 0x00C87E 03:A86E: 07        .byte $07   ; 
- D 1 - I - 0x00C87F 03:A86F: A3        .byte $A3   ; 
- D 1 - I - 0x00C880 03:A870: 35        .byte $35   ; 
- D 1 - I - 0x00C881 03:A871: CE        .byte $CE   ; 
- D 1 - I - 0x00C882 03:A872: 89        .byte $89   ; 
- D 1 - I - 0x00C883 03:A873: A3        .byte $A3   ; 
- D 1 - I - 0x00C884 03:A874: 24        .byte $24   ; 
- D 1 - I - 0x00C885 03:A875: 32        .byte $32   ; 
- D 1 - I - 0x00C886 03:A876: D8        .byte $D8   ; 
- - - - - - 0x00C887 03:A877: A3        .byte $A3   ; 
- - - - - - 0x00C888 03:A878: 00        .byte $00   ; 
- D 1 - I - 0x00C889 03:A879: AE        .byte $AE   ; 
- D 1 - I - 0x00C88A 03:A87A: D8        .byte $D8   ; 
- D 1 - I - 0x00C88B 03:A87B: A3        .byte $A3   ; 
- D 1 - I - 0x00C88C 03:A87C: 16        .byte $16   ; 



_off018_00_01_A87D_00:
- D 1 - I - 0x00C88D 03:A87D: FF        .byte $FF   ; 



_off018_00_01_A87E_02:
- D 1 - I - 0x00C88E 03:A87E: 7E        .byte $7E   ; 
- D 1 - I - 0x00C88F 03:A87F: 88        .byte $88   ; 
- D 1 - I - 0x00C890 03:A880: 56        .byte $56   ; 
- D 1 - I - 0x00C891 03:A881: 01        .byte $01   ; 
- D 1 - I - 0x00C892 03:A882: 3F        .byte $3F   ; 
- D 1 - I - 0x00C893 03:A883: C6        .byte $C6   ; 
- - - - - - 0x00C894 03:A884: 2D        .byte $2D   ; 
- - - - - - 0x00C895 03:A885: 04        .byte $04   ; 
- D 1 - I - 0x00C896 03:A886: BF        .byte $BF   ; 
- D 1 - I - 0x00C897 03:A887: C6        .byte $C6   ; 
- D 1 - I - 0x00C898 03:A888: 2D        .byte $2D   ; 
- D 1 - I - 0x00C899 03:A889: 05        .byte $05   ; 
- D 1 - I - 0x00C89A 03:A88A: FF        .byte $FF   ; 



_off018_00_01_A88B_03:
- D 1 - I - 0x00C89B 03:A88B: 70        .byte $70   ; 
- D 1 - I - 0x00C89C 03:A88C: DA        .byte $DA   ; 
- D 1 - I - 0x00C89D 03:A88D: 52        .byte $52   ; 
- D 1 - I - 0x00C89E 03:A88E: 02        .byte $02   ; 
- D 1 - I - 0x00C89F 03:A88F: 79        .byte $79   ; 
- D 1 - I - 0x00C8A0 03:A890: 3E        .byte $3E   ; 
- - - - - - 0x00C8A1 03:A891: 56        .byte $56   ; 
- - - - - - 0x00C8A2 03:A892: 02        .byte $02   ; 
- D 1 - I - 0x00C8A3 03:A893: BD        .byte $BD   ; 
- D 1 - I - 0x00C8A4 03:A894: 3E        .byte $3E   ; 
- D 1 - I - 0x00C8A5 03:A895: 56        .byte $56   ; 
- D 1 - I - 0x00C8A6 03:A896: 43        .byte $43   ; 
- D 1 - I - 0x00C8A7 03:A897: FF        .byte $FF   ; 



_off018_00_01_A898_04:
- D 1 - I - 0x00C8A8 03:A898: 44        .byte $44   ; 
- D 1 - I - 0x00C8A9 03:A899: 42        .byte $42   ; 
- D 1 - I - 0x00C8AA 03:A89A: 58        .byte $58   ; 
- D 1 - I - 0x00C8AB 03:A89B: 00        .byte $00   ; 
- D 1 - I - 0x00C8AC 03:A89C: 84        .byte $84   ; 
- D 1 - I - 0x00C8AD 03:A89D: 42        .byte $42   ; 
- D 1 - I - 0x00C8AE 03:A89E: 58        .byte $58   ; 
- D 1 - I - 0x00C8AF 03:A89F: 01        .byte $01   ; 
- D 1 - I - 0x00C8B0 03:A8A0: B1        .byte $B1   ; 
- D 1 - I - 0x00C8B1 03:A8A1: 42        .byte $42   ; 
- D 1 - I - 0x00C8B2 03:A8A2: 58        .byte $58   ; 
- D 1 - I - 0x00C8B3 03:A8A3: 02        .byte $02   ; 
- D 1 - I - 0x00C8B4 03:A8A4: EC        .byte $EC   ; 
- D 1 - I - 0x00C8B5 03:A8A5: 42        .byte $42   ; 
- D 1 - I - 0x00C8B6 03:A8A6: 58        .byte $58   ; 
- D 1 - I - 0x00C8B7 03:A8A7: 03        .byte $03   ; 
- D 1 - I - 0x00C8B8 03:A8A8: FF        .byte $FF   ; 



_off018_00_01_A8A9_05:
- D 1 - I - 0x00C8B9 03:A8A9: B3        .byte $B3   ; 
- D 1 - I - 0x00C8BA 03:A8AA: 7C        .byte $7C   ; 
- D 1 - I - 0x00C8BB 03:A8AB: A1        .byte $A1   ; 
- D 1 - I - 0x00C8BC 03:A8AC: 04        .byte $04   ; 
- D 1 - I - 0x00C8BD 03:A8AD: B3        .byte $B3   ; 
- D 1 - I - 0x00C8BE 03:A8AE: A4        .byte $A4   ; 
- D 1 - I - 0x00C8BF 03:A8AF: B4        .byte $B4   ; 
- D 1 - I - 0x00C8C0 03:A8B0: 16        .byte $16   ; 
- D 1 - I - 0x00C8C1 03:A8B1: 33        .byte $33   ; 
- D 1 - I - 0x00C8C2 03:A8B2: 52        .byte $52   ; 
- D 1 - I - 0x00C8C3 03:A8B3: B4        .byte $B4   ; 
- D 1 - I - 0x00C8C4 03:A8B4: 05        .byte $05   ; 
- D 1 - I - 0x00C8C5 03:A8B5: 52        .byte $52   ; 
- D 1 - I - 0x00C8C6 03:A8B6: C8        .byte $C8   ; 
- D 1 - I - 0x00C8C7 03:A8B7: A1        .byte $A1   ; 
- D 1 - I - 0x00C8C8 03:A8B8: 43        .byte $43   ; 
- D 1 - I - 0x00C8C9 03:A8B9: A8        .byte $A8   ; 
- D 1 - I - 0x00C8CA 03:A8BA: C8        .byte $C8   ; 
- D 1 - I - 0x00C8CB 03:A8BB: A1        .byte $A1   ; 
- D 1 - I - 0x00C8CC 03:A8BC: 43        .byte $43   ; 
- D 1 - I - 0x00C8CD 03:A8BD: FF        .byte $FF   ; 



_off018_00_01_A8BE_06:
- D 1 - I - 0x00C8CE 03:A8BE: A5        .byte $A5   ; 
- D 1 - I - 0x00C8CF 03:A8BF: CD        .byte $CD   ; 
- D 1 - I - 0x00C8D0 03:A8C0: A0        .byte $A0   ; 
- D 1 - I - 0x00C8D1 03:A8C1: 00        .byte $00   ; 
- D 1 - I - 0x00C8D2 03:A8C2: FF        .byte $FF   ; 



_off018_00_01_A8C3_07:
- D 1 - I - 0x00C8D3 03:A8C3: 62        .byte $62   ; 
- D 1 - I - 0x00C8D4 03:A8C4: 73        .byte $73   ; 
- D 1 - I - 0x00C8D5 03:A8C5: 56        .byte $56   ; 
- D 1 - I - 0x00C8D6 03:A8C6: 0A        .byte $0A   ; 
- D 1 - I - 0x00C8D7 03:A8C7: 9F        .byte $9F   ; 
- D 1 - I - 0x00C8D8 03:A8C8: 98        .byte $98   ; 
- D 1 - I - 0x00C8D9 03:A8C9: 2D        .byte $2D   ; 
- D 1 - I - 0x00C8DA 03:A8CA: 00        .byte $00   ; 
- D 1 - I - 0x00C8DB 03:A8CB: 1F        .byte $1F   ; 
- D 1 - I - 0x00C8DC 03:A8CC: D8        .byte $D8   ; 
- D 1 - I - 0x00C8DD 03:A8CD: 2D        .byte $2D   ; 
- D 1 - I - 0x00C8DE 03:A8CE: 03        .byte $03   ; 
- D 1 - I - 0x00C8DF 03:A8CF: FF        .byte $FF   ; 



_off018_00_01_A8D0_08:
- D 1 - I - 0x00C8E0 03:A8D0: 5C        .byte $5C   ; 
- D 1 - I - 0x00C8E1 03:A8D1: 42        .byte $42   ; 
- D 1 - I - 0x00C8E2 03:A8D2: 57        .byte $57   ; 
- D 1 - I - 0x00C8E3 03:A8D3: 15        .byte $15   ; 
- D 1 - I - 0x00C8E4 03:A8D4: 9F        .byte $9F   ; 
- D 1 - I - 0x00C8E5 03:A8D5: 68        .byte $68   ; 
- - - - - - 0x00C8E6 03:A8D6: 2D        .byte $2D   ; 
- - - - - - 0x00C8E7 03:A8D7: 01        .byte $01   ; 
- D 1 - I - 0x00C8E8 03:A8D8: 1F        .byte $1F   ; 
- D 1 - I - 0x00C8E9 03:A8D9: 88        .byte $88   ; 
- D 1 - I - 0x00C8EA 03:A8DA: 2D        .byte $2D   ; 
- D 1 - I - 0x00C8EB 03:A8DB: 02        .byte $02   ; 
- D 1 - I - 0x00C8EC 03:A8DC: 69        .byte $69   ; 
- D 1 - I - 0x00C8ED 03:A8DD: F8        .byte $F8   ; 
- D 1 - I - 0x00C8EE 03:A8DE: 56        .byte $56   ; 
- D 1 - I - 0x00C8EF 03:A8DF: 02        .byte $02   ; 
- D 1 - I - 0x00C8F0 03:A8E0: FF        .byte $FF   ; 



_off018_00_01_A8E1_09:
- D 1 - I - 0x00C8F1 03:A8E1: 6A        .byte $6A   ; 
- D 1 - I - 0x00C8F2 03:A8E2: 3E        .byte $3E   ; 
- D 1 - I - 0x00C8F3 03:A8E3: 56        .byte $56   ; 
- D 1 - I - 0x00C8F4 03:A8E4: 2F        .byte $2F   ; 
- D 1 - I - 0x00C8F5 03:A8E5: FF        .byte $FF   ; 



_off018_00_01_A8E6_0A:
- D 1 - I - 0x00C8F6 03:A8E6: 18        .byte $18   ; 
- D 1 - I - 0x00C8F7 03:A8E7: 42        .byte $42   ; 
- D 1 - I - 0x00C8F8 03:A8E8: 58        .byte $58   ; 
- D 1 - I - 0x00C8F9 03:A8E9: 07        .byte $07   ; 
- D 1 - I - 0x00C8FA 03:A8EA: FF        .byte $FF   ; 



_off018_00_01_A8EB_0B:
- D 1 - I - 0x00C8FB 03:A8EB: 54        .byte $54   ; 
- D 1 - I - 0x00C8FC 03:A8EC: 52        .byte $52   ; 
- D 1 - I - 0x00C8FD 03:A8ED: B4        .byte $B4   ; 
- D 1 - I - 0x00C8FE 03:A8EE: 45        .byte $45   ; 
- D 1 - I - 0x00C8FF 03:A8EF: 77        .byte $77   ; 
- D 1 - I - 0x00C900 03:A8F0: 7C        .byte $7C   ; 
- D 1 - I - 0x00C901 03:A8F1: A1        .byte $A1   ; 
- D 1 - I - 0x00C902 03:A8F2: 04        .byte $04   ; 
- D 1 - I - 0x00C903 03:A8F3: C5        .byte $C5   ; 
- D 1 - I - 0x00C904 03:A8F4: A4        .byte $A4   ; 
- D 1 - I - 0x00C905 03:A8F5: B4        .byte $B4   ; 
- D 1 - I - 0x00C906 03:A8F6: 36        .byte $36   ; 
- D 1 - I - 0x00C907 03:A8F7: FF        .byte $FF   ; 



_off018_00_01_A8F8_0C:
- D 1 - I - 0x00C908 03:A8F8: 03        .byte $03   ; 
- D 1 - I - 0x00C909 03:A8F9: D6        .byte $D6   ; 
- D 1 - I - 0x00C90A 03:A8FA: 5B        .byte $5B   ; 
- D 1 - I - 0x00C90B 03:A8FB: 15        .byte $15   ; 
- D 1 - I - 0x00C90C 03:A8FC: 30        .byte $30   ; 
- D 1 - I - 0x00C90D 03:A8FD: D6        .byte $D6   ; 
- D 1 - I - 0x00C90E 03:A8FE: 5B        .byte $5B   ; 
- D 1 - I - 0x00C90F 03:A8FF: 14        .byte $14   ; 
- D 1 - I - 0x00C910 03:A900: 57        .byte $57   ; 
- D 1 - I - 0x00C911 03:A901: D6        .byte $D6   ; 
- D 1 - I - 0x00C912 03:A902: 5B        .byte $5B   ; 
- D 1 - I - 0x00C913 03:A903: 13        .byte $13   ; 
- D 1 - I - 0x00C914 03:A904: FF        .byte $FF   ; 



_off018_00_01_A905_14:
- D 1 - I - 0x00C915 03:A905: 3F        .byte $3F   ; 
- D 1 - I - 0x00C916 03:A906: 1F        .byte $1F   ; 
- D 1 - I - 0x00C917 03:A907: 5B        .byte $5B   ; 
- D 1 - I - 0x00C918 03:A908: 11        .byte $11   ; 
- D 1 - I - 0x00C919 03:A909: FF        .byte $FF   ; 



_off018_00_01_A90A_15:
- - - - - - 0x00C91A 03:A90A: FF        .byte $FF   ; 



_off018_00_01_A90B_0D:
- D 1 - I - 0x00C91B 03:A90B: 3B        .byte $3B   ; 
- D 1 - I - 0x00C91C 03:A90C: A7        .byte $A7   ; 
- D 1 - I - 0x00C91D 03:A90D: 5C        .byte $5C   ; 
- D 1 - I - 0x00C91E 03:A90E: 17        .byte $17   ; 
- D 1 - I - 0x00C91F 03:A90F: 6A        .byte $6A   ; 
- D 1 - I - 0x00C920 03:A910: D8        .byte $D8   ; 
- D 1 - I - 0x00C921 03:A911: 5D        .byte $5D   ; 
- D 1 - I - 0x00C922 03:A912: 14        .byte $14   ; 
- D 1 - I - 0x00C923 03:A913: 9A        .byte $9A   ; 
- D 1 - I - 0x00C924 03:A914: AB        .byte $AB   ; 
- D 1 - I - 0x00C925 03:A915: 61        .byte $61   ; 
- D 1 - I - 0x00C926 03:A916: 16        .byte $16   ; 
- D 1 - I - 0x00C927 03:A917: AB        .byte $AB   ; 
- D 1 - I - 0x00C928 03:A918: D8        .byte $D8   ; 
- D 1 - I - 0x00C929 03:A919: 5E        .byte $5E   ; 
- D 1 - I - 0x00C92A 03:A91A: 12        .byte $12   ; 
- D 1 - I - 0x00C92B 03:A91B: FF        .byte $FF   ; 



_off018_00_01_A91C_0E:
- D 1 - I - 0x00C92C 03:A91C: 2B        .byte $2B   ; 
- D 1 - I - 0x00C92D 03:A91D: 16        .byte $16   ; 
- D 1 - I - 0x00C92E 03:A91E: 1F        .byte $1F   ; 
- D 1 - I - 0x00C92F 03:A91F: 03        .byte $03   ; 
- D 1 - I - 0x00C930 03:A920: 2B        .byte $2B   ; 
- D 1 - I - 0x00C931 03:A921: 6D        .byte $6D   ; 
- D 1 - I - 0x00C932 03:A922: 1F        .byte $1F   ; 
- D 1 - I - 0x00C933 03:A923: 05        .byte $05   ; 
- D 1 - I - 0x00C934 03:A924: 55        .byte $55   ; 
- D 1 - I - 0x00C935 03:A925: A2        .byte $A2   ; 
- D 1 - I - 0x00C936 03:A926: 5E        .byte $5E   ; 
- D 1 - I - 0x00C937 03:A927: 36        .byte $36   ; 
- D 1 - I - 0x00C938 03:A928: 56        .byte $56   ; 
- D 1 - I - 0x00C939 03:A929: 5B        .byte $5B   ; 
- D 1 - I - 0x00C93A 03:A92A: 5C        .byte $5C   ; 
- D 1 - I - 0x00C93B 03:A92B: 01        .byte $01   ; 
- D 1 - I - 0x00C93C 03:A92C: FF        .byte $FF   ; 



_off018_00_01_A92D_0F:
- D 1 - I - 0x00C93D 03:A92D: 2B        .byte $2B   ; 
- D 1 - I - 0x00C93E 03:A92E: 3A        .byte $3A   ; 
- - - - - - 0x00C93F 03:A92F: 5C        .byte $5C   ; 
- - - - - - 0x00C940 03:A930: 11        .byte $11   ; 
- D 1 - I - 0x00C941 03:A931: 5B        .byte $5B   ; 
- D 1 - I - 0x00C942 03:A932: 5C        .byte $5C   ; 
- D 1 - I - 0x00C943 03:A933: 1F        .byte $1F   ; 
- D 1 - I - 0x00C944 03:A934: 07        .byte $07   ; 
- D 1 - I - 0x00C945 03:A935: 2B        .byte $2B   ; 
- D 1 - I - 0x00C946 03:A936: 9B        .byte $9B   ; 
- D 1 - I - 0x00C947 03:A937: 5C        .byte $5C   ; 
- D 1 - I - 0x00C948 03:A938: 02        .byte $02   ; 
- D 1 - I - 0x00C949 03:A939: 5B        .byte $5B   ; 
- D 1 - I - 0x00C94A 03:A93A: F7        .byte $F7   ; 
- D 1 - I - 0x00C94B 03:A93B: 1F        .byte $1F   ; 
- D 1 - I - 0x00C94C 03:A93C: 06        .byte $06   ; 
- D 1 - I - 0x00C94D 03:A93D: 9F        .byte $9F   ; 
- D 1 - I - 0x00C94E 03:A93E: E8        .byte $E8   ; 
- D 1 - I - 0x00C94F 03:A93F: 1F        .byte $1F   ; 
- D 1 - I - 0x00C950 03:A940: 05        .byte $05   ; 
- D 1 - I - 0x00C951 03:A941: 9F        .byte $9F   ; 
- D 1 - I - 0x00C952 03:A942: 4C        .byte $4C   ; 
- D 1 - I - 0x00C953 03:A943: 1F        .byte $1F   ; 
- D 1 - I - 0x00C954 03:A944: 00        .byte $00   ; 
- D 1 - I - 0x00C955 03:A945: FF        .byte $FF   ; 



_off018_00_01_A946_10:
- D 1 - I - 0x00C956 03:A946: D5        .byte $D5   ; 
- D 1 - I - 0x00C957 03:A947: 1E        .byte $1E   ; 
- D 1 - I - 0x00C958 03:A948: 61        .byte $61   ; 
- D 1 - I - 0x00C959 03:A949: 03        .byte $03   ; 
- D 1 - I - 0x00C95A 03:A94A: 25        .byte $25   ; 
- D 1 - I - 0x00C95B 03:A94B: 26        .byte $26   ; 
- D 1 - I - 0x00C95C 03:A94C: 5C        .byte $5C   ; 
- D 1 - I - 0x00C95D 03:A94D: 04        .byte $04   ; 
- D 1 - I - 0x00C95E 03:A94E: 95        .byte $95   ; 
- D 1 - I - 0x00C95F 03:A94F: 60        .byte $60   ; 
- D 1 - I - 0x00C960 03:A950: 61        .byte $61   ; 
- D 1 - I - 0x00C961 03:A951: 12        .byte $12   ; 
- D 1 - I - 0x00C962 03:A952: 4A        .byte $4A   ; 
- D 1 - I - 0x00C963 03:A953: 87        .byte $87   ; 
- D 1 - I - 0x00C964 03:A954: 5C        .byte $5C   ; 
- D 1 - I - 0x00C965 03:A955: 11        .byte $11   ; 
- D 1 - I - 0x00C966 03:A956: 4A        .byte $4A   ; 
- D 1 - I - 0x00C967 03:A957: D4        .byte $D4   ; 
- D 1 - I - 0x00C968 03:A958: 5C        .byte $5C   ; 
- D 1 - I - 0x00C969 03:A959: 10        .byte $10   ; 
- D 1 - I - 0x00C96A 03:A95A: FF        .byte $FF   ; 



_off018_00_01_A95B_11:
- D 1 - I - 0x00C96B 03:A95B: 5D        .byte $5D   ; 
- D 1 - I - 0x00C96C 03:A95C: 4E        .byte $4E   ; 
- D 1 - I - 0x00C96D 03:A95D: 0F        .byte $0F   ; 
- D 1 - I - 0x00C96E 03:A95E: 00        .byte $00   ; 
- D 1 - I - 0x00C96F 03:A95F: FF        .byte $FF   ; 



_off018_00_01_A960_12:
- D 1 - I - 0x00C970 03:A960: 4E        .byte $4E   ; 
- D 1 - I - 0x00C971 03:A961: 94        .byte $94   ; 
- D 1 - I - 0x00C972 03:A962: 0A        .byte $0A   ; 
- D 1 - I - 0x00C973 03:A963: 02        .byte $02   ; 
- D 1 - I - 0x00C974 03:A964: FF        .byte $FF   ; 



_off018_00_01_A965_13:
- D 1 - I - 0x00C975 03:A965: BB        .byte $BB   ; 
- D 1 - I - 0x00C976 03:A966: 40        .byte $40   ; 
- D 1 - I - 0x00C977 03:A967: 0A        .byte $0A   ; 
- D 1 - I - 0x00C978 03:A968: 01        .byte $01   ; 
- D 1 - I - 0x00C979 03:A969: 48        .byte $48   ; 
- D 1 - I - 0x00C97A 03:A96A: 9C        .byte $9C   ; 
- D 1 - I - 0x00C97B 03:A96B: 0A        .byte $0A   ; 
- D 1 - I - 0x00C97C 03:A96C: 00        .byte $00   ; 
- D 1 - I - 0x00C97D 03:A96D: FF        .byte $FF   ; 



_off015_A96E_02_stage_3:
- - - - - - 0x00C97E 03:A96E: 00        .byte $00   ; 
- - - - - - 0x00C97F 03:A96F: 00        .byte $00   ; 
- D 1 - I - 0x00C980 03:A970: 00        .byte $00   ; 
- - - - - - 0x00C981 03:A971: 00        .byte $00   ; 
- - - - - - 0x00C982 03:A972: 00        .byte $00   ; 
- - - - - - 0x00C983 03:A973: 00        .byte $00   ; 
- D 1 - I - 0x00C984 03:A974: 01        .byte $01   ; 
- D 1 - I - 0x00C985 03:A975: 00        .byte $00   ; 
- D 1 - I - 0x00C986 03:A976: 00        .byte $00   ; 
- D 1 - I - 0x00C987 03:A977: 00        .byte $00   ; 
- - - - - - 0x00C988 03:A978: 00        .byte $00   ; 
- D 1 - I - 0x00C989 03:A979: 00        .byte $00   ; 
- D 1 - I - 0x00C98A 03:A97A: 03        .byte $03   ; 
- D 1 - I - 0x00C98B 03:A97B: 07        .byte $07   ; 
- D 1 - I - 0x00C98C 03:A97C: 11        .byte $11   ; 
- - - - - - 0x00C98D 03:A97D: 00        .byte $00   ; 
- D 1 - I - 0x00C98E 03:A97E: 02        .byte $02   ; 
- D 1 - I - 0x00C98F 03:A97F: 04        .byte $04   ; 
- D 1 - I - 0x00C990 03:A980: 08        .byte $08   ; 
- D 1 - I - 0x00C991 03:A981: 0C        .byte $0C   ; 
- - - - - - 0x00C992 03:A982: 00        .byte $00   ; 
- D 1 - I - 0x00C993 03:A983: 10        .byte $10   ; 
- D 1 - I - 0x00C994 03:A984: 05        .byte $05   ; 
- D 1 - I - 0x00C995 03:A985: 09        .byte $09   ; 
- D 1 - I - 0x00C996 03:A986: 0D        .byte $0D   ; 
- - - - - - 0x00C997 03:A987: 00        .byte $00   ; 
- - - - - - 0x00C998 03:A988: 12        .byte $12   ; 
- D 1 - I - 0x00C999 03:A989: 06        .byte $06   ; 
- D 1 - I - 0x00C99A 03:A98A: 0A        .byte $0A   ; 
- D 1 - I - 0x00C99B 03:A98B: 0E        .byte $0E   ; 
- - - - - - 0x00C99C 03:A98C: 00        .byte $00   ; 
- - - - - - 0x00C99D 03:A98D: 00        .byte $00   ; 
- D 1 - I - 0x00C99E 03:A98E: 00        .byte $00   ; 
- D 1 - I - 0x00C99F 03:A98F: 0B        .byte $0B   ; 
- D 1 - I - 0x00C9A0 03:A990: 0F        .byte $0F   ; 



_off016_A991_02_stage_3:
- D 1 - I - 0x00C9A1 03:A991: BB A9     .word _off018_02_A9BB_00
- D 1 - I - 0x00C9A3 03:A993: B7 A9     .word _off018_02_A9B7_01
- D 1 - I - 0x00C9A5 03:A995: BC A9     .word _off018_02_A9BC_02
- D 1 - I - 0x00C9A7 03:A997: C3 A9     .word _off018_02_A9C3_03
- D 1 - I - 0x00C9A9 03:A999: C4 A9     .word _off018_02_A9C4_04
- D 1 - I - 0x00C9AB 03:A99B: CD A9     .word _off018_02_A9CD_05
- D 1 - I - 0x00C9AD 03:A99D: DA A9     .word _off018_02_A9DA_06
- D 1 - I - 0x00C9AF 03:A99F: E7 A9     .word _off018_02_A9E7_07
- D 1 - I - 0x00C9B1 03:A9A1: F0 A9     .word _off018_02_A9F0_08
- D 1 - I - 0x00C9B3 03:A9A3: F9 A9     .word _off018_02_A9F9_09
- D 1 - I - 0x00C9B5 03:A9A5: FA A9     .word _off018_02_A9FA_0A
- D 1 - I - 0x00C9B7 03:A9A7: 03 AA     .word _off018_02_AA03_0B
- D 1 - I - 0x00C9B9 03:A9A9: 19 AA     .word _off018_02_AA19_0C
- D 1 - I - 0x00C9BB 03:A9AB: 2E AA     .word _off018_02_AA2E_0D
- D 1 - I - 0x00C9BD 03:A9AD: 3B AA     .word _off018_02_AA3B_0E
- D 1 - I - 0x00C9BF 03:A9AF: 4C AA     .word _off018_02_AA4C_0F
- D 1 - I - 0x00C9C1 03:A9B1: C1 A9     .word _off018_02_A9C1_10
- D 1 - I - 0x00C9C3 03:A9B3: 10 AA     .word _off018_02_AA10_11
- - - - - - 0x00C9C5 03:A9B5: C2 A9     .word _off018_02_A9C2_12



_off018_02_A9B7_01:
- D 1 - I - 0x00C9C7 03:A9B7: 00        .byte $00   ; 
- D 1 - I - 0x00C9C8 03:A9B8: A9        .byte $A9   ; 
- D 1 - I - 0x00C9C9 03:A9B9: 10        .byte $10   ; 
- D 1 - I - 0x00C9CA 03:A9BA: 00        .byte $00   ; 



_off018_02_A9BB_00:
- D 1 - I - 0x00C9CB 03:A9BB: FF        .byte $FF   ; 



_off018_02_A9BC_02:
- D 1 - I - 0x00C9CC 03:A9BC: F0        .byte $F0   ; 
- D 1 - I - 0x00C9CD 03:A9BD: 64        .byte $64   ; 
- D 1 - I - 0x00C9CE 03:A9BE: 4B        .byte $4B   ; 
- D 1 - I - 0x00C9CF 03:A9BF: 03        .byte $03   ; 
- D 1 - I - 0x00C9D0 03:A9C0: FF        .byte $FF   ; 



_off018_02_A9C1_10:
- D 1 - I - 0x00C9D1 03:A9C1: FF        .byte $FF   ; 



_off018_02_A9C2_12:
- - - - - - 0x00C9D2 03:A9C2: FF        .byte $FF   ; 



_off018_02_A9C3_03:
- D 1 - I - 0x00C9D3 03:A9C3: FF        .byte $FF   ; 



_off018_02_A9C4_04:
- D 1 - I - 0x00C9D4 03:A9C4: 68        .byte $68   ; 
- D 1 - I - 0x00C9D5 03:A9C5: 2D        .byte $2D   ; 
- D 1 - I - 0x00C9D6 03:A9C6: 9E        .byte $9E   ; 
- D 1 - I - 0x00C9D7 03:A9C7: 09        .byte $09   ; 
- D 1 - I - 0x00C9D8 03:A9C8: 55        .byte $55   ; 
- D 1 - I - 0x00C9D9 03:A9C9: FE        .byte $FE   ; 
- D 1 - I - 0x00C9DA 03:A9CA: 9E        .byte $9E   ; 
- D 1 - I - 0x00C9DB 03:A9CB: 01        .byte $01   ; 
- D 1 - I - 0x00C9DC 03:A9CC: FF        .byte $FF   ; 



_off018_02_A9CD_05:
- D 1 - I - 0x00C9DD 03:A9CD: C9        .byte $C9   ; 
- D 1 - I - 0x00C9DE 03:A9CE: E7        .byte $E7   ; 
- D 1 - I - 0x00C9DF 03:A9CF: 49        .byte $49   ; 
- D 1 - I - 0x00C9E0 03:A9D0: 03        .byte $03   ; 
- D 1 - I - 0x00C9E1 03:A9D1: E4        .byte $E4   ; 
- D 1 - I - 0x00C9E2 03:A9D2: EB        .byte $EB   ; 
- D 1 - I - 0x00C9E3 03:A9D3: 49        .byte $49   ; 
- D 1 - I - 0x00C9E4 03:A9D4: 22        .byte $22   ; 
- D 1 - I - 0x00C9E5 03:A9D5: AC        .byte $AC   ; 
- D 1 - I - 0x00C9E6 03:A9D6: F6        .byte $F6   ; 
- D 1 - I - 0x00C9E7 03:A9D7: 49        .byte $49   ; 
- D 1 - I - 0x00C9E8 03:A9D8: 04        .byte $04   ; 
- D 1 - I - 0x00C9E9 03:A9D9: FF        .byte $FF   ; 



_off018_02_A9DA_06:
- D 1 - I - 0x00C9EA 03:A9DA: 4C        .byte $4C   ; 
- D 1 - I - 0x00C9EB 03:A9DB: 71        .byte $71   ; 
- D 1 - I - 0x00C9EC 03:A9DC: AA        .byte $AA   ; 
- D 1 - I - 0x00C9ED 03:A9DD: 10        .byte $10   ; 
- D 1 - I - 0x00C9EE 03:A9DE: CC        .byte $CC   ; 
- D 1 - I - 0x00C9EF 03:A9DF: 85        .byte $85   ; 
- D 1 - I - 0x00C9F0 03:A9E0: 48        .byte $48   ; 
- D 1 - I - 0x00C9F1 03:A9E1: 21        .byte $21   ; 
- D 1 - I - 0x00C9F2 03:A9E2: 84        .byte $84   ; 
- D 1 - I - 0x00C9F3 03:A9E3: 85        .byte $85   ; 
- D 1 - I - 0x00C9F4 03:A9E4: 48        .byte $48   ; 
- D 1 - I - 0x00C9F5 03:A9E5: 22        .byte $22   ; 
- D 1 - I - 0x00C9F6 03:A9E6: FF        .byte $FF   ; 



_off018_02_A9E7_07:
- D 1 - I - 0x00C9F7 03:A9E7: 0A        .byte $0A   ; 
- D 1 - I - 0x00C9F8 03:A9E8: 7C        .byte $7C   ; 
- D 1 - I - 0x00C9F9 03:A9E9: B7        .byte $B7   ; 
- D 1 - I - 0x00C9FA 03:A9EA: 02        .byte $02   ; 
- D 1 - I - 0x00C9FB 03:A9EB: F9        .byte $F9   ; 
- D 1 - I - 0x00C9FC 03:A9EC: 83        .byte $83   ; 
- D 1 - I - 0x00C9FD 03:A9ED: 3B        .byte $3B   ; 
- D 1 - I - 0x00C9FE 03:A9EE: 03        .byte $03   ; 
- D 1 - I - 0x00C9FF 03:A9EF: FF        .byte $FF   ; 



_off018_02_A9F0_08:
- D 1 - I - 0x00CA00 03:A9F0: ED        .byte $ED   ; 
- D 1 - I - 0x00CA01 03:A9F1: 86        .byte $86   ; 
- D 1 - I - 0x00CA02 03:A9F2: AB        .byte $AB   ; 
- D 1 - I - 0x00CA03 03:A9F3: 06        .byte $06   ; 
- D 1 - I - 0x00CA04 03:A9F4: C7        .byte $C7   ; 
- D 1 - I - 0x00CA05 03:A9F5: B2        .byte $B2   ; 
- D 1 - I - 0x00CA06 03:A9F6: 99        .byte $99   ; 
- D 1 - I - 0x00CA07 03:A9F7: 40        .byte $40   ; 
- D 1 - I - 0x00CA08 03:A9F8: FF        .byte $FF   ; 



_off018_02_A9F9_09:
- D 1 - I - 0x00CA09 03:A9F9: FF        .byte $FF   ; 



_off018_02_A9FA_0A:
- D 1 - I - 0x00CA0A 03:A9FA: 70        .byte $70   ; 
- D 1 - I - 0x00CA0B 03:A9FB: 1B        .byte $1B   ; 
- D 1 - I - 0x00CA0C 03:A9FC: 49        .byte $49   ; 
- D 1 - I - 0x00CA0D 03:A9FD: 05        .byte $05   ; 
- D 1 - I - 0x00CA0E 03:A9FE: 8D        .byte $8D   ; 
- D 1 - I - 0x00CA0F 03:A9FF: 66        .byte $66   ; 
- D 1 - I - 0x00CA10 03:AA00: AB        .byte $AB   ; 
- D 1 - I - 0x00CA11 03:AA01: 06        .byte $06   ; 
- D 1 - I - 0x00CA12 03:AA02: FF        .byte $FF   ; 



_off018_02_AA03_0B:
- D 1 - I - 0x00CA13 03:AA03: 4A        .byte $4A   ; 
- D 1 - I - 0x00CA14 03:AA04: 37        .byte $37   ; 
- D 1 - I - 0x00CA15 03:AA05: 48        .byte $48   ; 
- D 1 - I - 0x00CA16 03:AA06: 20        .byte $20   ; 
- D 1 - I - 0x00CA17 03:AA07: A8        .byte $A8   ; 
- D 1 - I - 0x00CA18 03:AA08: 47        .byte $47   ; 
- D 1 - I - 0x00CA19 03:AA09: 48        .byte $48   ; 
- D 1 - I - 0x00CA1A 03:AA0A: 03        .byte $03   ; 
- D 1 - I - 0x00CA1B 03:AA0B: C9        .byte $C9   ; 
- D 1 - I - 0x00CA1C 03:AA0C: 37        .byte $37   ; 
- D 1 - I - 0x00CA1D 03:AA0D: 48        .byte $48   ; 
- D 1 - I - 0x00CA1E 03:AA0E: 22        .byte $22   ; 
- D 1 - I - 0x00CA1F 03:AA0F: FF        .byte $FF   ; 



_off018_02_AA10_11:
- D 1 - I - 0x00CA20 03:AA10: A4        .byte $A4   ; 
- D 1 - I - 0x00CA21 03:AA11: 34        .byte $34   ; 
- D 1 - I - 0x00CA22 03:AA12: 51        .byte $51   ; 
- D 1 - I - 0x00CA23 03:AA13: 35        .byte $35   ; 
- D 1 - I - 0x00CA24 03:AA14: B1        .byte $B1   ; 
- D 1 - I - 0x00CA25 03:AA15: BB        .byte $BB   ; 
- D 1 - I - 0x00CA26 03:AA16: 50        .byte $50   ; 
- D 1 - I - 0x00CA27 03:AA17: 36        .byte $36   ; 
- D 1 - I - 0x00CA28 03:AA18: FF        .byte $FF   ; 



_off018_02_AA19_0C:
- D 1 - I - 0x00CA29 03:AA19: 02        .byte $02   ; 
- D 1 - I - 0x00CA2A 03:AA1A: 4D        .byte $4D   ; 
- D 1 - I - 0x00CA2B 03:AA1B: 51        .byte $51   ; 
- D 1 - I - 0x00CA2C 03:AA1C: 35        .byte $35   ; 
- D 1 - I - 0x00CA2D 03:AA1D: 21        .byte $21   ; 
- D 1 - I - 0x00CA2E 03:AA1E: 4D        .byte $4D   ; 
- D 1 - I - 0x00CA2F 03:AA1F: 51        .byte $51   ; 
- D 1 - I - 0x00CA30 03:AA20: 30        .byte $30   ; 
- D 1 - I - 0x00CA31 03:AA21: 45        .byte $45   ; 
- D 1 - I - 0x00CA32 03:AA22: 24        .byte $24   ; 
- D 1 - I - 0x00CA33 03:AA23: 51        .byte $51   ; 
- D 1 - I - 0x00CA34 03:AA24: 34        .byte $34   ; 
- D 1 - I - 0x00CA35 03:AA25: 92        .byte $92   ; 
- D 1 - I - 0x00CA36 03:AA26: 07        .byte $07   ; 
- D 1 - I - 0x00CA37 03:AA27: 51        .byte $51   ; 
- D 1 - I - 0x00CA38 03:AA28: 30        .byte $30   ; 
- D 1 - I - 0x00CA39 03:AA29: AE        .byte $AE   ; 
- D 1 - I - 0x00CA3A 03:AA2A: 86        .byte $86   ; 
- D 1 - I - 0x00CA3B 03:AA2B: AB        .byte $AB   ; 
- D 1 - I - 0x00CA3C 03:AA2C: 07        .byte $07   ; 
- D 1 - I - 0x00CA3D 03:AA2D: FF        .byte $FF   ; 



_off018_02_AA2E_0D:
- D 1 - I - 0x00CA3E 03:AA2E: 2E        .byte $2E   ; 
- D 1 - I - 0x00CA3F 03:AA2F: 06        .byte $06   ; 
- D 1 - I - 0x00CA40 03:AA30: 25        .byte $25   ; 
- D 1 - I - 0x00CA41 03:AA31: 04        .byte $04   ; 
- D 1 - I - 0x00CA42 03:AA32: AA        .byte $AA   ; 
- D 1 - I - 0x00CA43 03:AA33: 57        .byte $57   ; 
- D 1 - I - 0x00CA44 03:AA34: 51        .byte $51   ; 
- D 1 - I - 0x00CA45 03:AA35: 30        .byte $30   ; 
- D 1 - I - 0x00CA46 03:AA36: C8        .byte $C8   ; 
- D 1 - I - 0x00CA47 03:AA37: 39        .byte $39   ; 
- D 1 - I - 0x00CA48 03:AA38: 51        .byte $51   ; 
- D 1 - I - 0x00CA49 03:AA39: 31        .byte $31   ; 
- D 1 - I - 0x00CA4A 03:AA3A: FF        .byte $FF   ; 



_off018_02_AA3B_0E:
- D 1 - I - 0x00CA4B 03:AA3B: 03        .byte $03   ; 
- D 1 - I - 0x00CA4C 03:AA3C: 18        .byte $18   ; 
- D 1 - I - 0x00CA4D 03:AA3D: A7        .byte $A7   ; 
- D 1 - I - 0x00CA4E 03:AA3E: 0C        .byte $0C   ; 
- D 1 - I - 0x00CA4F 03:AA3F: 84        .byte $84   ; 
- D 1 - I - 0x00CA50 03:AA40: 68        .byte $68   ; 
- D 1 - I - 0x00CA51 03:AA41: 49        .byte $49   ; 
- D 1 - I - 0x00CA52 03:AA42: 00        .byte $00   ; 
- D 1 - I - 0x00CA53 03:AA43: 82        .byte $82   ; 
- D 1 - I - 0x00CA54 03:AA44: 0A        .byte $0A   ; 
- D 1 - I - 0x00CA55 03:AA45: 49        .byte $49   ; 
- D 1 - I - 0x00CA56 03:AA46: 03        .byte $03   ; 
- D 1 - I - 0x00CA57 03:AA47: 03        .byte $03   ; 
- D 1 - I - 0x00CA58 03:AA48: 7E        .byte $7E   ; 
- D 1 - I - 0x00CA59 03:AA49: A7        .byte $A7   ; 
- D 1 - I - 0x00CA5A 03:AA4A: 09        .byte $09   ; 
- D 1 - I - 0x00CA5B 03:AA4B: FF        .byte $FF   ; 



_off018_02_AA4C_0F:
- D 1 - I - 0x00CA5C 03:AA4C: 0B        .byte $0B   ; 
- D 1 - I - 0x00CA5D 03:AA4D: 02        .byte $02   ; 
- D 1 - I - 0x00CA5E 03:AA4E: 24        .byte $24   ; 
- D 1 - I - 0x00CA5F 03:AA4F: 02        .byte $02   ; 
- D 1 - I - 0x00CA60 03:AA50: 53        .byte $53   ; 
- D 1 - I - 0x00CA61 03:AA51: 2F        .byte $2F   ; 
- D 1 - I - 0x00CA62 03:AA52: AA        .byte $AA   ; 
- D 1 - I - 0x00CA63 03:AA53: 07        .byte $07   ; 
- D 1 - I - 0x00CA64 03:AA54: 04        .byte $04   ; 
- D 1 - I - 0x00CA65 03:AA55: 47        .byte $47   ; 
- D 1 - I - 0x00CA66 03:AA56: 48        .byte $48   ; 
- D 1 - I - 0x00CA67 03:AA57: 03        .byte $03   ; 
- D 1 - I - 0x00CA68 03:AA58: 2E        .byte $2E   ; 
- D 1 - I - 0x00CA69 03:AA59: 47        .byte $47   ; 
- D 1 - I - 0x00CA6A 03:AA5A: 49        .byte $49   ; 
- D 1 - I - 0x00CA6B 03:AA5B: 03        .byte $03   ; 
- D 1 - I - 0x00CA6C 03:AA5C: 6A        .byte $6A   ; 
- D 1 - I - 0x00CA6D 03:AA5D: 37        .byte $37   ; 
- D 1 - I - 0x00CA6E 03:AA5E: 49        .byte $49   ; 
- D 1 - I - 0x00CA6F 03:AA5F: 25        .byte $25   ; 
- D 1 - I - 0x00CA70 03:AA60: FF        .byte $FF   ; 



_off015_AA61_03_stage_4:
- D 1 - I - 0x00CA71 03:AA61: 00        .byte $00   ; 
- D 1 - I - 0x00CA72 03:AA62: 00        .byte $00   ; 
- - - - - - 0x00CA73 03:AA63: 00        .byte $00   ; 
- - - - - - 0x00CA74 03:AA64: 00        .byte $00   ; 
- - - - - - 0x00CA75 03:AA65: 00        .byte $00   ; 
- - - - - - 0x00CA76 03:AA66: 00        .byte $00   ; 
- - - - - - 0x00CA77 03:AA67: 00        .byte $00   ; 
- - - - - - 0x00CA78 03:AA68: 00        .byte $00   ; 
- - - - - - 0x00CA79 03:AA69: 00        .byte $00   ; 
- - - - - - 0x00CA7A 03:AA6A: 00        .byte $00   ; 
- - - - - - 0x00CA7B 03:AA6B: 00        .byte $00   ; 
- - - - - - 0x00CA7C 03:AA6C: 00        .byte $00   ; 
- - - - - - 0x00CA7D 03:AA6D: 00        .byte $00   ; 
- - - - - - 0x00CA7E 03:AA6E: 00        .byte $00   ; 
- - - - - - 0x00CA7F 03:AA6F: 00        .byte $00   ; 
- - - - - - 0x00CA80 03:AA70: 00        .byte $00   ; 
- - - - - - 0x00CA81 03:AA71: 00        .byte $00   ; 
- - - - - - 0x00CA82 03:AA72: 00        .byte $00   ; 
- - - - - - 0x00CA83 03:AA73: 00        .byte $00   ; 
- - - - - - 0x00CA84 03:AA74: 00        .byte $00   ; 
- - - - - - 0x00CA85 03:AA75: 00        .byte $00   ; 
- - - - - - 0x00CA86 03:AA76: 00        .byte $00   ; 
- - - - - - 0x00CA87 03:AA77: 00        .byte $00   ; 
- - - - - - 0x00CA88 03:AA78: 00        .byte $00   ; 
- - - - - - 0x00CA89 03:AA79: 00        .byte $00   ; 
- - - - - - 0x00CA8A 03:AA7A: 00        .byte $00   ; 
- - - - - - 0x00CA8B 03:AA7B: 00        .byte $00   ; 
- - - - - - 0x00CA8C 03:AA7C: 00        .byte $00   ; 
- - - - - - 0x00CA8D 03:AA7D: 00        .byte $00   ; 
- - - - - - 0x00CA8E 03:AA7E: 00        .byte $00   ; 
- - - - - - 0x00CA8F 03:AA7F: 00        .byte $00   ; 
- - - - - - 0x00CA90 03:AA80: 00        .byte $00   ; 
- - - - - - 0x00CA91 03:AA81: 00        .byte $00   ; 
- - - - - - 0x00CA92 03:AA82: 00        .byte $00   ; 
- - - - - - 0x00CA93 03:AA83: 00        .byte $00   ; 
- - - - - - 0x00CA94 03:AA84: 00        .byte $00   ; 
- - - - - - 0x00CA95 03:AA85: 00        .byte $00   ; 
- - - - - - 0x00CA96 03:AA86: 00        .byte $00   ; 
- - - - - - 0x00CA97 03:AA87: 00        .byte $00   ; 
- - - - - - 0x00CA98 03:AA88: 00        .byte $00   ; 
- - - - - - 0x00CA99 03:AA89: 00        .byte $00   ; 
- - - - - - 0x00CA9A 03:AA8A: 00        .byte $00   ; 
- D 1 - I - 0x00CA9B 03:AA8B: 00        .byte $00   ; 
- D 1 - I - 0x00CA9C 03:AA8C: 21        .byte $21   ; 
- D 1 - I - 0x00CA9D 03:AA8D: 27        .byte $27   ; 
- D 1 - I - 0x00CA9E 03:AA8E: 2A        .byte $2A   ; 
- D 1 - I - 0x00CA9F 03:AA8F: 0C        .byte $0C   ; 
- - - - - - 0x00CAA0 03:AA90: 00        .byte $00   ; 
- - - - - - 0x00CAA1 03:AA91: 00        .byte $00   ; 
- - - - - - 0x00CAA2 03:AA92: 00        .byte $00   ; 
- - - - - - 0x00CAA3 03:AA93: 00        .byte $00   ; 
- - - - - - 0x00CAA4 03:AA94: 00        .byte $00   ; 
- - - - - - 0x00CAA5 03:AA95: 00        .byte $00   ; 
- - - - - - 0x00CAA6 03:AA96: 00        .byte $00   ; 
- D 1 - I - 0x00CAA7 03:AA97: 00        .byte $00   ; 
- D 1 - I - 0x00CAA8 03:AA98: 22        .byte $22   ; 
- D 1 - I - 0x00CAA9 03:AA99: 28        .byte $28   ; 
- D 1 - I - 0x00CAAA 03:AA9A: 2B        .byte $2B   ; 
- D 1 - I - 0x00CAAB 03:AA9B: 00        .byte $00   ; 
- - - - - - 0x00CAAC 03:AA9C: 00        .byte $00   ; 
- - - - - - 0x00CAAD 03:AA9D: 00        .byte $00   ; 
- - - - - - 0x00CAAE 03:AA9E: 00        .byte $00   ; 
- - - - - - 0x00CAAF 03:AA9F: 00        .byte $00   ; 
- - - - - - 0x00CAB0 03:AAA0: 00        .byte $00   ; 
- - - - - - 0x00CAB1 03:AAA1: 00        .byte $00   ; 
- - - - - - 0x00CAB2 03:AAA2: 00        .byte $00   ; 
- - - - - - 0x00CAB3 03:AAA3: 00        .byte $00   ; 
- - - - - - 0x00CAB4 03:AAA4: 00        .byte $00   ; 
- D 1 - I - 0x00CAB5 03:AAA5: 29        .byte $29   ; 
- D 1 - I - 0x00CAB6 03:AAA6: 2C        .byte $2C   ; 
- - - - - - 0x00CAB7 03:AAA7: 00        .byte $00   ; 
- - - - - - 0x00CAB8 03:AAA8: 00        .byte $00   ; 
- - - - - - 0x00CAB9 03:AAA9: 00        .byte $00   ; 
- - - - - - 0x00CABA 03:AAAA: 00        .byte $00   ; 
- - - - - - 0x00CABB 03:AAAB: 00        .byte $00   ; 
- - - - - - 0x00CABC 03:AAAC: 00        .byte $00   ; 
- - - - - - 0x00CABD 03:AAAD: 00        .byte $00   ; 
- - - - - - 0x00CABE 03:AAAE: 00        .byte $00   ; 
- - - - - - 0x00CABF 03:AAAF: 00        .byte $00   ; 
- - - - - - 0x00CAC0 03:AAB0: 00        .byte $00   ; 
- D 1 - I - 0x00CAC1 03:AAB1: 08        .byte $08   ; 
- D 1 - I - 0x00CAC2 03:AAB2: 2D        .byte $2D   ; 
- - - - - - 0x00CAC3 03:AAB3: 00        .byte $00   ; 
- - - - - - 0x00CAC4 03:AAB4: 00        .byte $00   ; 
- - - - - - 0x00CAC5 03:AAB5: 00        .byte $00   ; 
- - - - - - 0x00CAC6 03:AAB6: 00        .byte $00   ; 
- - - - - - 0x00CAC7 03:AAB7: 00        .byte $00   ; 
- - - - - - 0x00CAC8 03:AAB8: 00        .byte $00   ; 
- - - - - - 0x00CAC9 03:AAB9: 00        .byte $00   ; 
- - - - - - 0x00CACA 03:AABA: 00        .byte $00   ; 
- - - - - - 0x00CACB 03:AABB: 00        .byte $00   ; 
- - - - - - 0x00CACC 03:AABC: 00        .byte $00   ; 
- D 1 - I - 0x00CACD 03:AABD: 00        .byte $00   ; 
- D 1 - I - 0x00CACE 03:AABE: 2E        .byte $2E   ; 
- - - - - - 0x00CACF 03:AABF: 00        .byte $00   ; 
- - - - - - 0x00CAD0 03:AAC0: 00        .byte $00   ; 
- - - - - - 0x00CAD1 03:AAC1: 00        .byte $00   ; 
- - - - - - 0x00CAD2 03:AAC2: 00        .byte $00   ; 
- - - - - - 0x00CAD3 03:AAC3: 00        .byte $00   ; 
- - - - - - 0x00CAD4 03:AAC4: 00        .byte $00   ; 
- - - - - - 0x00CAD5 03:AAC5: 00        .byte $00   ; 
- - - - - - 0x00CAD6 03:AAC6: 00        .byte $00   ; 
- D 1 - I - 0x00CAD7 03:AAC7: 00        .byte $00   ; 
- D 1 - I - 0x00CAD8 03:AAC8: 00        .byte $00   ; 
- D 1 - I - 0x00CAD9 03:AAC9: 00        .byte $00   ; 
- - - - - - 0x00CADA 03:AACA: 00        .byte $00   ; 
- - - - - - 0x00CADB 03:AACB: 00        .byte $00   ; 
- - - - - - 0x00CADC 03:AACC: 00        .byte $00   ; 
- - - - - - 0x00CADD 03:AACD: 00        .byte $00   ; 
- - - - - - 0x00CADE 03:AACE: 00        .byte $00   ; 
- - - - - - 0x00CADF 03:AACF: 00        .byte $00   ; 
- - - - - - 0x00CAE0 03:AAD0: 00        .byte $00   ; 
- D 1 - I - 0x00CAE1 03:AAD1: 00        .byte $00   ; 
- D 1 - I - 0x00CAE2 03:AAD2: 00        .byte $00   ; 
- D 1 - I - 0x00CAE3 03:AAD3: 00        .byte $00   ; 
- D 1 - I - 0x00CAE4 03:AAD4: 23        .byte $23   ; 
- - - - - - 0x00CAE5 03:AAD5: 00        .byte $00   ; 
- - - - - - 0x00CAE6 03:AAD6: 00        .byte $00   ; 
- - - - - - 0x00CAE7 03:AAD7: 00        .byte $00   ; 
- - - - - - 0x00CAE8 03:AAD8: 00        .byte $00   ; 
- - - - - - 0x00CAE9 03:AAD9: 00        .byte $00   ; 
- - - - - - 0x00CAEA 03:AADA: 00        .byte $00   ; 
- - - - - - 0x00CAEB 03:AADB: 00        .byte $00   ; 
- - - - - - 0x00CAEC 03:AADC: 00        .byte $00   ; 
- D 1 - I - 0x00CAED 03:AADD: 00        .byte $00   ; 
- D 1 - I - 0x00CAEE 03:AADE: 16        .byte $16   ; 
- D 1 - I - 0x00CAEF 03:AADF: 00        .byte $00   ; 
- D 1 - I - 0x00CAF0 03:AAE0: 00        .byte $00   ; 
- - - - - - 0x00CAF1 03:AAE1: 00        .byte $00   ; 
- - - - - - 0x00CAF2 03:AAE2: 00        .byte $00   ; 
- - - - - - 0x00CAF3 03:AAE3: 00        .byte $00   ; 
- - - - - - 0x00CAF4 03:AAE4: 00        .byte $00   ; 
- - - - - - 0x00CAF5 03:AAE5: 00        .byte $00   ; 
- - - - - - 0x00CAF6 03:AAE6: 00        .byte $00   ; 
- - - - - - 0x00CAF7 03:AAE7: 00        .byte $00   ; 
- - - - - - 0x00CAF8 03:AAE8: 00        .byte $00   ; 
- D 1 - I - 0x00CAF9 03:AAE9: 00        .byte $00   ; 
- D 1 - I - 0x00CAFA 03:AAEA: 02        .byte $02   ; 
- D 1 - I - 0x00CAFB 03:AAEB: 00        .byte $00   ; 
- D 1 - I - 0x00CAFC 03:AAEC: 00        .byte $00   ; 
- - - - - - 0x00CAFD 03:AAED: 00        .byte $00   ; 
- - - - - - 0x00CAFE 03:AAEE: 00        .byte $00   ; 
- - - - - - 0x00CAFF 03:AAEF: 00        .byte $00   ; 
- - - - - - 0x00CB00 03:AAF0: 00        .byte $00   ; 
- - - - - - 0x00CB01 03:AAF1: 00        .byte $00   ; 
- - - - - - 0x00CB02 03:AAF2: 00        .byte $00   ; 
- - - - - - 0x00CB03 03:AAF3: 00        .byte $00   ; 
- - - - - - 0x00CB04 03:AAF4: 00        .byte $00   ; 
- D 1 - I - 0x00CB05 03:AAF5: 00        .byte $00   ; 
- D 1 - I - 0x00CB06 03:AAF6: 00        .byte $00   ; 
- D 1 - I - 0x00CB07 03:AAF7: 00        .byte $00   ; 
- D 1 - I - 0x00CB08 03:AAF8: 24        .byte $24   ; 
- - - - - - 0x00CB09 03:AAF9: 00        .byte $00   ; 
- - - - - - 0x00CB0A 03:AAFA: 00        .byte $00   ; 
- - - - - - 0x00CB0B 03:AAFB: 00        .byte $00   ; 
- - - - - - 0x00CB0C 03:AAFC: 00        .byte $00   ; 
- - - - - - 0x00CB0D 03:AAFD: 00        .byte $00   ; 
- - - - - - 0x00CB0E 03:AAFE: 00        .byte $00   ; 
- - - - - - 0x00CB0F 03:AAFF: 00        .byte $00   ; 
- - - - - - 0x00CB10 03:AB00: 00        .byte $00   ; 
- D 1 - I - 0x00CB11 03:AB01: 00        .byte $00   ; 
- D 1 - I - 0x00CB12 03:AB02: 00        .byte $00   ; 
- D 1 - I - 0x00CB13 03:AB03: 00        .byte $00   ; 
- D 1 - I - 0x00CB14 03:AB04: 25        .byte $25   ; 
- - - - - - 0x00CB15 03:AB05: 00        .byte $00   ; 
- - - - - - 0x00CB16 03:AB06: 00        .byte $00   ; 
- - - - - - 0x00CB17 03:AB07: 00        .byte $00   ; 
- - - - - - 0x00CB18 03:AB08: 00        .byte $00   ; 
- - - - - - 0x00CB19 03:AB09: 00        .byte $00   ; 
- - - - - - 0x00CB1A 03:AB0A: 00        .byte $00   ; 
- - - - - - 0x00CB1B 03:AB0B: 00        .byte $00   ; 
- - - - - - 0x00CB1C 03:AB0C: 00        .byte $00   ; 
- D 1 - I - 0x00CB1D 03:AB0D: 00        .byte $00   ; 
- D 1 - I - 0x00CB1E 03:AB0E: 00        .byte $00   ; 
- D 1 - I - 0x00CB1F 03:AB0F: 00        .byte $00   ; 
- D 1 - I - 0x00CB20 03:AB10: 00        .byte $00   ; 
- - - - - - 0x00CB21 03:AB11: 00        .byte $00   ; 
- - - - - - 0x00CB22 03:AB12: 00        .byte $00   ; 
- - - - - - 0x00CB23 03:AB13: 00        .byte $00   ; 
- - - - - - 0x00CB24 03:AB14: 00        .byte $00   ; 
- - - - - - 0x00CB25 03:AB15: 00        .byte $00   ; 
- - - - - - 0x00CB26 03:AB16: 00        .byte $00   ; 
- - - - - - 0x00CB27 03:AB17: 00        .byte $00   ; 
- - - - - - 0x00CB28 03:AB18: 00        .byte $00   ; 
- D 1 - I - 0x00CB29 03:AB19: 00        .byte $00   ; 
- D 1 - I - 0x00CB2A 03:AB1A: 18        .byte $18   ; 
- - - - - - 0x00CB2B 03:AB1B: 00        .byte $00   ; 
- - - - - - 0x00CB2C 03:AB1C: 00        .byte $00   ; 
- - - - - - 0x00CB2D 03:AB1D: 00        .byte $00   ; 
- - - - - - 0x00CB2E 03:AB1E: 00        .byte $00   ; 
- - - - - - 0x00CB2F 03:AB1F: 00        .byte $00   ; 
- - - - - - 0x00CB30 03:AB20: 00        .byte $00   ; 
- - - - - - 0x00CB31 03:AB21: 00        .byte $00   ; 
- - - - - - 0x00CB32 03:AB22: 00        .byte $00   ; 
- - - - - - 0x00CB33 03:AB23: 00        .byte $00   ; 
- - - - - - 0x00CB34 03:AB24: 00        .byte $00   ; 
- D 1 - I - 0x00CB35 03:AB25: 11        .byte $11   ; 
- D 1 - I - 0x00CB36 03:AB26: 19        .byte $19   ; 
- - - - - - 0x00CB37 03:AB27: 00        .byte $00   ; 
- - - - - - 0x00CB38 03:AB28: 00        .byte $00   ; 
- - - - - - 0x00CB39 03:AB29: 00        .byte $00   ; 
- - - - - - 0x00CB3A 03:AB2A: 00        .byte $00   ; 
- - - - - - 0x00CB3B 03:AB2B: 00        .byte $00   ; 
- - - - - - 0x00CB3C 03:AB2C: 00        .byte $00   ; 
- - - - - - 0x00CB3D 03:AB2D: 00        .byte $00   ; 
- - - - - - 0x00CB3E 03:AB2E: 00        .byte $00   ; 
- D 1 - I - 0x00CB3F 03:AB2F: 00        .byte $00   ; 
- D 1 - I - 0x00CB40 03:AB30: 00        .byte $00   ; 
- D 1 - I - 0x00CB41 03:AB31: 12        .byte $12   ; 
- D 1 - I - 0x00CB42 03:AB32: 1A        .byte $1A   ; 
- D 1 - I - 0x00CB43 03:AB33: 00        .byte $00   ; 
- D 1 - I - 0x00CB44 03:AB34: 00        .byte $00   ; 
- - - - - - 0x00CB45 03:AB35: 00        .byte $00   ; 
- - - - - - 0x00CB46 03:AB36: 00        .byte $00   ; 
- - - - - - 0x00CB47 03:AB37: 00        .byte $00   ; 
- - - - - - 0x00CB48 03:AB38: 00        .byte $00   ; 
- - - - - - 0x00CB49 03:AB39: 00        .byte $00   ; 
- - - - - - 0x00CB4A 03:AB3A: 00        .byte $00   ; 
- D 1 - I - 0x00CB4B 03:AB3B: 00        .byte $00   ; 
- D 1 - I - 0x00CB4C 03:AB3C: 09        .byte $09   ; 
- D 1 - I - 0x00CB4D 03:AB3D: 13        .byte $13   ; 
- D 1 - I - 0x00CB4E 03:AB3E: 1B        .byte $1B   ; 
- D 1 - I - 0x00CB4F 03:AB3F: 20        .byte $20   ; 
- D 1 - I - 0x00CB50 03:AB40: 26        .byte $26   ; 
- - - - - - 0x00CB51 03:AB41: 00        .byte $00   ; 
- - - - - - 0x00CB52 03:AB42: 00        .byte $00   ; 
- - - - - - 0x00CB53 03:AB43: 00        .byte $00   ; 
- - - - - - 0x00CB54 03:AB44: 00        .byte $00   ; 
- - - - - - 0x00CB55 03:AB45: 00        .byte $00   ; 
- - - - - - 0x00CB56 03:AB46: 00        .byte $00   ; 
- - - - - - 0x00CB57 03:AB47: 00        .byte $00   ; 
- - - - - - 0x00CB58 03:AB48: 00        .byte $00   ; 
- D 1 - I - 0x00CB59 03:AB49: 17        .byte $17   ; 
- D 1 - I - 0x00CB5A 03:AB4A: 1C        .byte $1C   ; 
- - - - - - 0x00CB5B 03:AB4B: 00        .byte $00   ; 
- - - - - - 0x00CB5C 03:AB4C: 00        .byte $00   ; 
- - - - - - 0x00CB5D 03:AB4D: 00        .byte $00   ; 
- - - - - - 0x00CB5E 03:AB4E: 00        .byte $00   ; 
- - - - - - 0x00CB5F 03:AB4F: 00        .byte $00   ; 
- - - - - - 0x00CB60 03:AB50: 00        .byte $00   ; 
- - - - - - 0x00CB61 03:AB51: 00        .byte $00   ; 
- - - - - - 0x00CB62 03:AB52: 00        .byte $00   ; 
- - - - - - 0x00CB63 03:AB53: 00        .byte $00   ; 
- - - - - - 0x00CB64 03:AB54: 00        .byte $00   ; 
- D 1 - I - 0x00CB65 03:AB55: 14        .byte $14   ; 
- D 1 - I - 0x00CB66 03:AB56: 1D        .byte $1D   ; 
- - - - - - 0x00CB67 03:AB57: 00        .byte $00   ; 
- - - - - - 0x00CB68 03:AB58: 00        .byte $00   ; 
- - - - - - 0x00CB69 03:AB59: 00        .byte $00   ; 
- - - - - - 0x00CB6A 03:AB5A: 00        .byte $00   ; 
- - - - - - 0x00CB6B 03:AB5B: 00        .byte $00   ; 
- - - - - - 0x00CB6C 03:AB5C: 00        .byte $00   ; 
- - - - - - 0x00CB6D 03:AB5D: 00        .byte $00   ; 
- - - - - - 0x00CB6E 03:AB5E: 00        .byte $00   ; 
- - - - - - 0x00CB6F 03:AB5F: 00        .byte $00   ; 
- - - - - - 0x00CB70 03:AB60: 00        .byte $00   ; 
; bzk extra stage data, see 0x00C345
- - - - - - 0x00CB71 03:AB61: 00        .byte $00   ; 
- - - - - - 0x00CB72 03:AB62: 1E        .byte $1E   ; 
- - - - - - 0x00CB73 03:AB63: 00        .byte $00   ; 
- - - - - - 0x00CB74 03:AB64: 00        .byte $00   ; 
- - - - - - 0x00CB75 03:AB65: 00        .byte $00   ; 
- - - - - - 0x00CB76 03:AB66: 00        .byte $00   ; 
- - - - - - 0x00CB77 03:AB67: 00        .byte $00   ; 
- - - - - - 0x00CB78 03:AB68: 00        .byte $00   ; 
- - - - - - 0x00CB79 03:AB69: 00        .byte $00   ; 
- - - - - - 0x00CB7A 03:AB6A: 00        .byte $00   ; 
- D 1 - I - 0x00CB7B 03:AB6B: 00        .byte $00   ; 
- D 1 - I - 0x00CB7C 03:AB6C: 00        .byte $00   ; 
- D 1 - I - 0x00CB7D 03:AB6D: 00        .byte $00   ; 
- D 1 - I - 0x00CB7E 03:AB6E: 00        .byte $00   ; 
- - - - - - 0x00CB7F 03:AB6F: 00        .byte $00   ; 
- - - - - - 0x00CB80 03:AB70: 00        .byte $00   ; 
- - - - - - 0x00CB81 03:AB71: 00        .byte $00   ; 
- - - - - - 0x00CB82 03:AB72: 00        .byte $00   ; 
- - - - - - 0x00CB83 03:AB73: 00        .byte $00   ; 
- - - - - - 0x00CB84 03:AB74: 00        .byte $00   ; 
- - - - - - 0x00CB85 03:AB75: 00        .byte $00   ; 
- - - - - - 0x00CB86 03:AB76: 00        .byte $00   ; 
- D 1 - I - 0x00CB87 03:AB77: 00        .byte $00   ; 
- D 1 - I - 0x00CB88 03:AB78: 0A        .byte $0A   ; 
- - - - - - 0x00CB89 03:AB79: 00        .byte $00   ; 
- - - - - - 0x00CB8A 03:AB7A: 00        .byte $00   ; 
- - - - - - 0x00CB8B 03:AB7B: 00        .byte $00   ; 
- - - - - - 0x00CB8C 03:AB7C: 00        .byte $00   ; 
- - - - - - 0x00CB8D 03:AB7D: 00        .byte $00   ; 
- - - - - - 0x00CB8E 03:AB7E: 00        .byte $00   ; 
- - - - - - 0x00CB8F 03:AB7F: 00        .byte $00   ; 
- - - - - - 0x00CB90 03:AB80: 00        .byte $00   ; 
- - - - - - 0x00CB91 03:AB81: 00        .byte $00   ; 
- - - - - - 0x00CB92 03:AB82: 00        .byte $00   ; 
- D 1 - I - 0x00CB93 03:AB83: 03        .byte $03   ; 
- D 1 - I - 0x00CB94 03:AB84: 0B        .byte $0B   ; 
- - - - - - 0x00CB95 03:AB85: 00        .byte $00   ; 
- - - - - - 0x00CB96 03:AB86: 00        .byte $00   ; 
- - - - - - 0x00CB97 03:AB87: 00        .byte $00   ; 
- - - - - - 0x00CB98 03:AB88: 00        .byte $00   ; 
- - - - - - 0x00CB99 03:AB89: 00        .byte $00   ; 
- - - - - - 0x00CB9A 03:AB8A: 00        .byte $00   ; 
- - - - - - 0x00CB9B 03:AB8B: 00        .byte $00   ; 
- - - - - - 0x00CB9C 03:AB8C: 00        .byte $00   ; 
- - - - - - 0x00CB9D 03:AB8D: 00        .byte $00   ; 
- - - - - - 0x00CB9E 03:AB8E: 00        .byte $00   ; 
- D 1 - I - 0x00CB9F 03:AB8F: 04        .byte $04   ; 
- D 1 - I - 0x00CBA0 03:AB90: 00        .byte $00   ; 
- D 1 - I - 0x00CBA1 03:AB91: 00        .byte $00   ; 
- D 1 - I - 0x00CBA2 03:AB92: 00        .byte $00   ; 
- - - - - - 0x00CBA3 03:AB93: 00        .byte $00   ; 
- - - - - - 0x00CBA4 03:AB94: 00        .byte $00   ; 
- - - - - - 0x00CBA5 03:AB95: 00        .byte $00   ; 
- - - - - - 0x00CBA6 03:AB96: 00        .byte $00   ; 
- - - - - - 0x00CBA7 03:AB97: 00        .byte $00   ; 
- - - - - - 0x00CBA8 03:AB98: 00        .byte $00   ; 
- D 1 - I - 0x00CBA9 03:AB99: 1F        .byte $1F   ; 
- D 1 - I - 0x00CBAA 03:AB9A: 01        .byte $01   ; 
- D 1 - I - 0x00CBAB 03:AB9B: 05        .byte $05   ; 
- D 1 - I - 0x00CBAC 03:AB9C: 0D        .byte $0D   ; 
- D 1 - I - 0x00CBAD 03:AB9D: 15        .byte $15   ; 
- D 1 - I - 0x00CBAE 03:AB9E: 00        .byte $00   ; 
- - - - - - 0x00CBAF 03:AB9F: 00        .byte $00   ; 
- - - - - - 0x00CBB0 03:ABA0: 00        .byte $00   ; 
- - - - - - 0x00CBB1 03:ABA1: 00        .byte $00   ; 
- - - - - - 0x00CBB2 03:ABA2: 00        .byte $00   ; 
- - - - - - 0x00CBB3 03:ABA3: 00        .byte $00   ; 
- - - - - - 0x00CBB4 03:ABA4: 00        .byte $00   ; 
- D 1 - I - 0x00CBB5 03:ABA5: 00        .byte $00   ; 
- D 1 - I - 0x00CBB6 03:ABA6: 00        .byte $00   ; 
- D 1 - I - 0x00CBB7 03:ABA7: 06        .byte $06   ; 
- D 1 - I - 0x00CBB8 03:ABA8: 0E        .byte $0E   ; 
- D 1 - I - 0x00CBB9 03:ABA9: 00        .byte $00   ; 
- D 1 - I - 0x00CBBA 03:ABAA: 00        .byte $00   ; 
- - - - - - 0x00CBBB 03:ABAB: 00        .byte $00   ; 
- - - - - - 0x00CBBC 03:ABAC: 00        .byte $00   ; 
- - - - - - 0x00CBBD 03:ABAD: 00        .byte $00   ; 
- - - - - - 0x00CBBE 03:ABAE: 00        .byte $00   ; 
- - - - - - 0x00CBBF 03:ABAF: 00        .byte $00   ; 
- - - - - - 0x00CBC0 03:ABB0: 00        .byte $00   ; 
- - - - - - 0x00CBC1 03:ABB1: 00        .byte $00   ; 
- - - - - - 0x00CBC2 03:ABB2: 00        .byte $00   ; 
- D 1 - I - 0x00CBC3 03:ABB3: 07        .byte $07   ; 
- D 1 - I - 0x00CBC4 03:ABB4: 0F        .byte $0F   ; 
- - - - - - 0x00CBC5 03:ABB5: 00        .byte $00   ; 
- - - - - - 0x00CBC6 03:ABB6: 00        .byte $00   ; 
- - - - - - 0x00CBC7 03:ABB7: 00        .byte $00   ; 
- - - - - - 0x00CBC8 03:ABB8: 00        .byte $00   ; 
- - - - - - 0x00CBC9 03:ABB9: 00        .byte $00   ; 
- - - - - - 0x00CBCA 03:ABBA: 00        .byte $00   ; 
- - - - - - 0x00CBCB 03:ABBB: 00        .byte $00   ; 
- - - - - - 0x00CBCC 03:ABBC: 00        .byte $00   ; 
- - - - - - 0x00CBCD 03:ABBD: 00        .byte $00   ; 
- - - - - - 0x00CBCE 03:ABBE: 00        .byte $00   ; 
- D 1 - I - 0x00CBCF 03:ABBF: 00        .byte $00   ; 
- D 1 - I - 0x00CBD0 03:ABC0: 10        .byte $10   ; 
- - - - - - 0x00CBD1 03:ABC1: 00        .byte $00   ; 
- - - - - - 0x00CBD2 03:ABC2: 00        .byte $00   ; 
- - - - - - 0x00CBD3 03:ABC3: 00        .byte $00   ; 
- - - - - - 0x00CBD4 03:ABC4: 00        .byte $00   ; 
- - - - - - 0x00CBD5 03:ABC5: 00        .byte $00   ; 
- - - - - - 0x00CBD6 03:ABC6: 00        .byte $00   ; 
- - - - - - 0x00CBD7 03:ABC7: 00        .byte $00   ; 
- - - - - - 0x00CBD8 03:ABC8: 00        .byte $00   ; 
- - - - - - 0x00CBD9 03:ABC9: 00        .byte $00   ; 
- - - - - - 0x00CBDA 03:ABCA: 00        .byte $00   ; 
- D 1 - I - 0x00CBDB 03:ABCB: 00        .byte $00   ; 
- D 1 - I - 0x00CBDC 03:ABCC: 00        .byte $00   ; 
- - - - - - 0x00CBDD 03:ABCD: 00        .byte $00   ; 
- - - - - - 0x00CBDE 03:ABCE: 00        .byte $00   ; 
- - - - - - 0x00CBDF 03:ABCF: 00        .byte $00   ; 
- - - - - - 0x00CBE0 03:ABD0: 00        .byte $00   ; 
- - - - - - 0x00CBE1 03:ABD1: 00        .byte $00   ; 
- - - - - - 0x00CBE2 03:ABD2: 00        .byte $00   ; 
- - - - - - 0x00CBE3 03:ABD3: 00        .byte $00   ; 
- - - - - - 0x00CBE4 03:ABD4: 00        .byte $00   ; 
- - - - - - 0x00CBE5 03:ABD5: 00        .byte $00   ; 
- - - - - - 0x00CBE6 03:ABD6: 00        .byte $00   ; 
- - - - - - 0x00CBE7 03:ABD7: 00        .byte $00   ; 
- - - - - - 0x00CBE8 03:ABD8: 00        .byte $00   ; 
- - - - - - 0x00CBE9 03:ABD9: 00        .byte $00   ; 
- - - - - - 0x00CBEA 03:ABDA: 00        .byte $00   ; 
- - - - - - 0x00CBEB 03:ABDB: 00        .byte $00   ; 
- - - - - - 0x00CBEC 03:ABDC: 00        .byte $00   ; 
- - - - - - 0x00CBED 03:ABDD: 00        .byte $00   ; 
- - - - - - 0x00CBEE 03:ABDE: 00        .byte $00   ; 
- - - - - - 0x00CBEF 03:ABDF: 00        .byte $00   ; 
- - - - - - 0x00CBF0 03:ABE0: 00        .byte $00   ; 
- - - - - - 0x00CBF1 03:ABE1: 00        .byte $00   ; 
- - - - - - 0x00CBF2 03:ABE2: 00        .byte $00   ; 
- - - - - - 0x00CBF3 03:ABE3: 00        .byte $00   ; 
- - - - - - 0x00CBF4 03:ABE4: 00        .byte $00   ; 
- - - - - - 0x00CBF5 03:ABE5: 00        .byte $00   ; 
- - - - - - 0x00CBF6 03:ABE6: 00        .byte $00   ; 
- - - - - - 0x00CBF7 03:ABE7: 00        .byte $00   ; 
- - - - - - 0x00CBF8 03:ABE8: 00        .byte $00   ; 
- - - - - - 0x00CBF9 03:ABE9: 00        .byte $00   ; 
- - - - - - 0x00CBFA 03:ABEA: 00        .byte $00   ; 
- - - - - - 0x00CBFB 03:ABEB: 00        .byte $00   ; 
- - - - - - 0x00CBFC 03:ABEC: 00        .byte $00   ; 



_off016_ABED_03_stage_4:
- D 1 - I - 0x00CBFD 03:ABED: 57 AC     .word _off018_03_AC57_00
- D 1 - I - 0x00CBFF 03:ABEF: 58 AC     .word _off018_03_AC58_01
- D 1 - I - 0x00CC01 03:ABF1: 1C AD     .word _off018_03_AD1C_02
- D 1 - I - 0x00CC03 03:ABF3: 5D AC     .word _off018_03_AC5D_03
- D 1 - I - 0x00CC05 03:ABF5: 62 AC     .word _off018_03_AC62_04
- D 1 - I - 0x00CC07 03:ABF7: 67 AC     .word _off018_03_AC67_05
- D 1 - I - 0x00CC09 03:ABF9: 6C AC     .word _off018_03_AC6C_06
- D 1 - I - 0x00CC0B 03:ABFB: 7D AC     .word _off018_03_AC7D_07
- D 1 - I - 0x00CC0D 03:ABFD: CE AD     .word _off018_03_ADCE_08
- D 1 - I - 0x00CC0F 03:ABFF: 82 AC     .word _off018_03_AC82_09
- D 1 - I - 0x00CC11 03:AC01: 8B AC     .word _off018_03_AC8B_0A
- D 1 - I - 0x00CC13 03:AC03: 98 AC     .word _off018_03_AC98_0B
- D 1 - I - 0x00CC15 03:AC05: 10 AE     .word _off018_03_AE10_0C
- D 1 - I - 0x00CC17 03:AC07: 9D AC     .word _off018_03_AC9D_0D
- D 1 - I - 0x00CC19 03:AC09: AA AC     .word _off018_03_ACAA_0E
- D 1 - I - 0x00CC1B 03:AC0B: B3 AC     .word _off018_03_ACB3_0F
- D 1 - I - 0x00CC1D 03:AC0D: B8 AC     .word _off018_03_ACB8_10
- D 1 - I - 0x00CC1F 03:AC0F: C9 AC     .word _off018_03_ACC9_11
- D 1 - I - 0x00CC21 03:AC11: D2 AC     .word _off018_03_ACD2_12
- D 1 - I - 0x00CC23 03:AC13: DF AC     .word _off018_03_ACDF_13
- D 1 - I - 0x00CC25 03:AC15: 01 AD     .word _off018_03_AD01_14
- D 1 - I - 0x00CC27 03:AC17: 06 AD     .word _off018_03_AD06_15
- D 1 - I - 0x00CC29 03:AC19: 17 AD     .word _off018_03_AD17_16
- D 1 - I - 0x00CC2B 03:AC1B: FC AC     .word _off018_03_ACFC_17
- D 1 - I - 0x00CC2D 03:AC1D: 31 AD     .word _off018_03_AD31_18
- D 1 - I - 0x00CC2F 03:AC1F: 36 AD     .word _off018_03_AD36_19
- D 1 - I - 0x00CC31 03:AC21: 3B AD     .word _off018_03_AD3B_1A
- D 1 - I - 0x00CC33 03:AC23: 48 AD     .word _off018_03_AD48_1B
- D 1 - I - 0x00CC35 03:AC25: 61 AD     .word _off018_03_AD61_1C
- D 1 - I - 0x00CC37 03:AC27: 66 AD     .word _off018_03_AD66_1D
- - - - - - 0x00CC39 03:AC29: 6F AD     .word _off018_03_AD6F_1E
- D 1 - I - 0x00CC3B 03:AC2B: 4B AC     .word _off018_03_AC4B_1F
- D 1 - I - 0x00CC3D 03:AC2D: 78 AD     .word _off018_03_AD78_20
- D 1 - I - 0x00CC3F 03:AC2F: 81 AD     .word _off018_03_AD81_21
- D 1 - I - 0x00CC41 03:AC31: 8A AD     .word _off018_03_AD8A_22
- D 1 - I - 0x00CC43 03:AC33: 93 AD     .word _off018_03_AD93_23
- D 1 - I - 0x00CC45 03:AC35: A0 AD     .word _off018_03_ADA0_24
- D 1 - I - 0x00CC47 03:AC37: AD AD     .word _off018_03_ADAD_25
- D 1 - I - 0x00CC49 03:AC39: B6 AD     .word _off018_03_ADB6_26
- D 1 - I - 0x00CC4B 03:AC3B: BB AD     .word _off018_03_ADBB_27
- D 1 - I - 0x00CC4D 03:AC3D: C0 AD     .word _off018_03_ADC0_28
- D 1 - I - 0x00CC4F 03:AC3F: C9 AD     .word _off018_03_ADC9_29
- D 1 - I - 0x00CC51 03:AC41: D3 AD     .word _off018_03_ADD3_2A
- D 1 - I - 0x00CC53 03:AC43: D8 AD     .word _off018_03_ADD8_2B
- D 1 - I - 0x00CC55 03:AC45: F1 AD     .word _off018_03_ADF1_2C
- D 1 - I - 0x00CC57 03:AC47: F6 AD     .word _off018_03_ADF6_2D
- D 1 - I - 0x00CC59 03:AC49: 07 AE     .word _off018_03_AE07_2E



_off018_03_AC4B_1F:
- D 1 - I - 0x00CC5B 03:AC4B: B2        .byte $B2   ; 
- D 1 - I - 0x00CC5C 03:AC4C: 97        .byte $97   ; 
- D 1 - I - 0x00CC5D 03:AC4D: 5B        .byte $5B   ; 
- D 1 - I - 0x00CC5E 03:AC4E: 21        .byte $21   ; 
- D 1 - I - 0x00CC5F 03:AC4F: B1        .byte $B1   ; 
- D 1 - I - 0x00CC60 03:AC50: C6        .byte $C6   ; 
- D 1 - I - 0x00CC61 03:AC51: 5B        .byte $5B   ; 
- D 1 - I - 0x00CC62 03:AC52: 22        .byte $22   ; 
- D 1 - I - 0x00CC63 03:AC53: B0        .byte $B0   ; 
- D 1 - I - 0x00CC64 03:AC54: 72        .byte $72   ; 
- D 1 - I - 0x00CC65 03:AC55: 5B        .byte $5B   ; 
- D 1 - I - 0x00CC66 03:AC56: 20        .byte $20   ; 



_off018_03_AC57_00:
- D 1 - I - 0x00CC67 03:AC57: FF        .byte $FF   ; 



_off018_03_AC58_01:
- D 1 - I - 0x00CC68 03:AC58: D6        .byte $D6   ; 
- D 1 - I - 0x00CC69 03:AC59: 69        .byte $69   ; 
- D 1 - I - 0x00CC6A 03:AC5A: 53        .byte $53   ; 
- D 1 - I - 0x00CC6B 03:AC5B: 01        .byte $01   ; 
- D 1 - I - 0x00CC6C 03:AC5C: FF        .byte $FF   ; 



_off018_03_AC5D_03:
- D 1 - I - 0x00CC6D 03:AC5D: C3        .byte $C3   ; 
- D 1 - I - 0x00CC6E 03:AC5E: EA        .byte $EA   ; 
- D 1 - I - 0x00CC6F 03:AC5F: 63        .byte $63   ; 
- D 1 - I - 0x00CC70 03:AC60: 02        .byte $02   ; 
- D 1 - I - 0x00CC71 03:AC61: FF        .byte $FF   ; 



_off018_03_AC62_04:
- D 1 - I - 0x00CC72 03:AC62: C5        .byte $C5   ; 
- D 1 - I - 0x00CC73 03:AC63: 5C        .byte $5C   ; 
- D 1 - I - 0x00CC74 03:AC64: 65        .byte $65   ; 
- D 1 - I - 0x00CC75 03:AC65: 11        .byte $11   ; 
- D 1 - I - 0x00CC76 03:AC66: FF        .byte $FF   ; 



_off018_03_AC67_05:
- D 1 - I - 0x00CC77 03:AC67: 05        .byte $05   ; 
- D 1 - I - 0x00CC78 03:AC68: 89        .byte $89   ; 
- D 1 - I - 0x00CC79 03:AC69: 5B        .byte $5B   ; 
- D 1 - I - 0x00CC7A 03:AC6A: 32        .byte $32   ; 
- D 1 - I - 0x00CC7B 03:AC6B: FF        .byte $FF   ; 



_off018_03_AC6C_06:
- D 1 - I - 0x00CC7C 03:AC6C: 8E        .byte $8E   ; 
- D 1 - I - 0x00CC7D 03:AC6D: 15        .byte $15   ; 
- D 1 - I - 0x00CC7E 03:AC6E: 0C        .byte $0C   ; 
- D 1 - I - 0x00CC7F 03:AC6F: 07        .byte $07   ; 
- D 1 - I - 0x00CC80 03:AC70: D1        .byte $D1   ; 
- D 1 - I - 0x00CC81 03:AC71: 15        .byte $15   ; 
- D 1 - I - 0x00CC82 03:AC72: 0C        .byte $0C   ; 
- D 1 - I - 0x00CC83 03:AC73: 06        .byte $06   ; 
- D 1 - I - 0x00CC84 03:AC74: D8        .byte $D8   ; 
- D 1 - I - 0x00CC85 03:AC75: A2        .byte $A2   ; 
- D 1 - I - 0x00CC86 03:AC76: 59        .byte $59   ; 
- D 1 - I - 0x00CC87 03:AC77: 15        .byte $15   ; 
- D 1 - I - 0x00CC88 03:AC78: BF        .byte $BF   ; 
- D 1 - I - 0x00CC89 03:AC79: E2        .byte $E2   ; 
- D 1 - I - 0x00CC8A 03:AC7A: 59        .byte $59   ; 
- D 1 - I - 0x00CC8B 03:AC7B: 13        .byte $13   ; 
- D 1 - I - 0x00CC8C 03:AC7C: FF        .byte $FF   ; 



_off018_03_AC7D_07:
- D 1 - I - 0x00CC8D 03:AC7D: BF        .byte $BF   ; 
- D 1 - I - 0x00CC8E 03:AC7E: 0E        .byte $0E   ; 
- D 1 - I - 0x00CC8F 03:AC7F: 59        .byte $59   ; 
- D 1 - I - 0x00CC90 03:AC80: 11        .byte $11   ; 
- D 1 - I - 0x00CC91 03:AC81: FF        .byte $FF   ; 



_off018_03_AC82_09:
- D 1 - I - 0x00CC92 03:AC82: 4A        .byte $4A   ; 
- D 1 - I - 0x00CC93 03:AC83: 00        .byte $00   ; 
- D 1 - I - 0x00CC94 03:AC84: 3A        .byte $3A   ; 
- D 1 - I - 0x00CC95 03:AC85: 07        .byte $07   ; 
- D 1 - I - 0x00CC96 03:AC86: EB        .byte $EB   ; 
- D 1 - I - 0x00CC97 03:AC87: 21        .byte $21   ; 
- D 1 - I - 0x00CC98 03:AC88: 3A        .byte $3A   ; 
- D 1 - I - 0x00CC99 03:AC89: 06        .byte $06   ; 
- D 1 - I - 0x00CC9A 03:AC8A: FF        .byte $FF   ; 



_off018_03_AC8B_0A:
- D 1 - I - 0x00CC9B 03:AC8B: 5B        .byte $5B   ; 
- D 1 - I - 0x00CC9C 03:AC8C: 2C        .byte $2C   ; 
- D 1 - I - 0x00CC9D 03:AC8D: 60        .byte $60   ; 
- D 1 - I - 0x00CC9E 03:AC8E: 1A        .byte $1A   ; 
- D 1 - I - 0x00CC9F 03:AC8F: 65        .byte $65   ; 
- D 1 - I - 0x00CCA0 03:AC90: 36        .byte $36   ; 
- D 1 - I - 0x00CCA1 03:AC91: 60        .byte $60   ; 
- D 1 - I - 0x00CCA2 03:AC92: 19        .byte $19   ; 
- D 1 - I - 0x00CCA3 03:AC93: 81        .byte $81   ; 
- D 1 - I - 0x00CCA4 03:AC94: 46        .byte $46   ; 
- D 1 - I - 0x00CCA5 03:AC95: 60        .byte $60   ; 
- D 1 - I - 0x00CCA6 03:AC96: 18        .byte $18   ; 
- D 1 - I - 0x00CCA7 03:AC97: FF        .byte $FF   ; 



_off018_03_AC98_0B:
- D 1 - I - 0x00CCA8 03:AC98: 35        .byte $35   ; 
- D 1 - I - 0x00CCA9 03:AC99: 6E        .byte $6E   ; 
- D 1 - I - 0x00CCAA 03:AC9A: 63        .byte $63   ; 
- D 1 - I - 0x00CCAB 03:AC9B: 03        .byte $03   ; 
- D 1 - I - 0x00CCAC 03:AC9C: FF        .byte $FF   ; 



_off018_03_AC9D_0D:
- D 1 - I - 0x00CCAD 03:AC9D: 01        .byte $01   ; 
- D 1 - I - 0x00CCAE 03:AC9E: 69        .byte $69   ; 
- D 1 - I - 0x00CCAF 03:AC9F: 53        .byte $53   ; 
- D 1 - I - 0x00CCB0 03:ACA0: 2C        .byte $2C   ; 
- D 1 - I - 0x00CCB1 03:ACA1: 69        .byte $69   ; 
- D 1 - I - 0x00CCB2 03:ACA2: 88        .byte $88   ; 
- D 1 - I - 0x00CCB3 03:ACA3: 5A        .byte $5A   ; 
- D 1 - I - 0x00CCB4 03:ACA4: 13        .byte $13   ; 
- D 1 - I - 0x00CCB5 03:ACA5: C9        .byte $C9   ; 
- D 1 - I - 0x00CCB6 03:ACA6: 77        .byte $77   ; 
- D 1 - I - 0x00CCB7 03:ACA7: 52        .byte $52   ; 
- D 1 - I - 0x00CCB8 03:ACA8: 32        .byte $32   ; 
- D 1 - I - 0x00CCB9 03:ACA9: FF        .byte $FF   ; 



_off018_03_ACAA_0E:
- D 1 - I - 0x00CCBA 03:ACAA: 28        .byte $28   ; 
- D 1 - I - 0x00CCBB 03:ACAB: A2        .byte $A2   ; 
- D 1 - I - 0x00CCBC 03:ACAC: 59        .byte $59   ; 
- D 1 - I - 0x00CCBD 03:ACAD: 14        .byte $14   ; 
- D 1 - I - 0x00CCBE 03:ACAE: 44        .byte $44   ; 
- D 1 - I - 0x00CCBF 03:ACAF: E1        .byte $E1   ; 
- D 1 - I - 0x00CCC0 03:ACB0: 5A        .byte $5A   ; 
- D 1 - I - 0x00CCC1 03:ACB1: 02        .byte $02   ; 
- D 1 - I - 0x00CCC2 03:ACB2: FF        .byte $FF   ; 



_off018_03_ACB3_0F:
- D 1 - I - 0x00CCC3 03:ACB3: 37        .byte $37   ; 
- D 1 - I - 0x00CCC4 03:ACB4: 0C        .byte $0C   ; 
- D 1 - I - 0x00CCC5 03:ACB5: 5A        .byte $5A   ; 
- D 1 - I - 0x00CCC6 03:ACB6: 00        .byte $00   ; 
- D 1 - I - 0x00CCC7 03:ACB7: FF        .byte $FF   ; 



_off018_03_ACB8_10:
- D 1 - I - 0x00CCC8 03:ACB8: 00        .byte $00   ; 
- D 1 - I - 0x00CCC9 03:ACB9: 30        .byte $30   ; 
- D 1 - I - 0x00CCCA 03:ACBA: 63        .byte $63   ; 
- D 1 - I - 0x00CCCB 03:ACBB: 2A        .byte $2A   ; 
- D 1 - I - 0x00CCCC 03:ACBC: 38        .byte $38   ; 
- D 1 - I - 0x00CCCD 03:ACBD: 30        .byte $30   ; 
- D 1 - I - 0x00CCCE 03:ACBE: 63        .byte $63   ; 
- D 1 - I - 0x00CCCF 03:ACBF: 2B        .byte $2B   ; 
- D 1 - I - 0x00CCD0 03:ACC0: 32        .byte $32   ; 
- D 1 - I - 0x00CCD1 03:ACC1: 92        .byte $92   ; 
- D 1 - I - 0x00CCD2 03:ACC2: 62        .byte $62   ; 
- D 1 - I - 0x00CCD3 03:ACC3: 11        .byte $11   ; 
- D 1 - I - 0x00CCD4 03:ACC4: 6E        .byte $6E   ; 
- D 1 - I - 0x00CCD5 03:ACC5: AB        .byte $AB   ; 
- D 1 - I - 0x00CCD6 03:ACC6: 62        .byte $62   ; 
- D 1 - I - 0x00CCD7 03:ACC7: 10        .byte $10   ; 
- D 1 - I - 0x00CCD8 03:ACC8: FF        .byte $FF   ; 



_off018_03_ACC9_11:
- D 1 - I - 0x00CCD9 03:ACC9: C6        .byte $C6   ; 
- D 1 - I - 0x00CCDA 03:ACCA: 80        .byte $80   ; 
- D 1 - I - 0x00CCDB 03:ACCB: 62        .byte $62   ; 
- D 1 - I - 0x00CCDC 03:ACCC: 10        .byte $10   ; 
- D 1 - I - 0x00CCDD 03:ACCD: F0        .byte $F0   ; 
- D 1 - I - 0x00CCDE 03:ACCE: F0        .byte $F0   ; 
- D 1 - I - 0x00CCDF 03:ACCF: 17        .byte $17   ; 
- D 1 - I - 0x00CCE0 03:ACD0: 04        .byte $04   ; 
- D 1 - I - 0x00CCE1 03:ACD1: FF        .byte $FF   ; 



_off018_03_ACD2_12:
- D 1 - I - 0x00CCE2 03:ACD2: B0        .byte $B0   ; 
- D 1 - I - 0x00CCE3 03:ACD3: 10        .byte $10   ; 
- D 1 - I - 0x00CCE4 03:ACD4: 17        .byte $17   ; 
- D 1 - I - 0x00CCE5 03:ACD5: 02        .byte $02   ; 
- D 1 - I - 0x00CCE6 03:ACD6: B0        .byte $B0   ; 
- D 1 - I - 0x00CCE7 03:ACD7: 50        .byte $50   ; 
- D 1 - I - 0x00CCE8 03:ACD8: 17        .byte $17   ; 
- D 1 - I - 0x00CCE9 03:ACD9: 00        .byte $00   ; 
- D 1 - I - 0x00CCEA 03:ACDA: B3        .byte $B3   ; 
- D 1 - I - 0x00CCEB 03:ACDB: ED        .byte $ED   ; 
- D 1 - I - 0x00CCEC 03:ACDC: 65        .byte $65   ; 
- D 1 - I - 0x00CCED 03:ACDD: 25        .byte $25   ; 
- D 1 - I - 0x00CCEE 03:ACDE: FF        .byte $FF   ; 



_off018_03_ACDF_13:
- D 1 - I - 0x00CCEF 03:ACDF: D4        .byte $D4   ; 
- D 1 - I - 0x00CCF0 03:ACE0: 18        .byte $18   ; 
- D 1 - I - 0x00CCF1 03:ACE1: 65        .byte $65   ; 
- D 1 - I - 0x00CCF2 03:ACE2: 2C        .byte $2C   ; 
- D 1 - I - 0x00CCF3 03:ACE3: A4        .byte $A4   ; 
- D 1 - I - 0x00CCF4 03:ACE4: 21        .byte $21   ; 
- D 1 - I - 0x00CCF5 03:ACE5: 64        .byte $64   ; 
- D 1 - I - 0x00CCF6 03:ACE6: 03        .byte $03   ; 
- D 1 - I - 0x00CCF7 03:ACE7: 7D        .byte $7D   ; 
- D 1 - I - 0x00CCF8 03:ACE8: 30        .byte $30   ; 
- D 1 - I - 0x00CCF9 03:ACE9: 65        .byte $65   ; 
- D 1 - I - 0x00CCFA 03:ACEA: 02        .byte $02   ; 
- D 1 - I - 0x00CCFB 03:ACEB: 91        .byte $91   ; 
- D 1 - I - 0x00CCFC 03:ACEC: 59        .byte $59   ; 
- D 1 - I - 0x00CCFD 03:ACED: 64        .byte $64   ; 
- D 1 - I - 0x00CCFE 03:ACEE: 00        .byte $00   ; 
- D 1 - I - 0x00CCFF 03:ACEF: 79        .byte $79   ; 
- D 1 - I - 0x00CD00 03:ACF0: 59        .byte $59   ; 
- D 1 - I - 0x00CD01 03:ACF1: 65        .byte $65   ; 
- D 1 - I - 0x00CD02 03:ACF2: 19        .byte $19   ; 
- D 1 - I - 0x00CD03 03:ACF3: D9        .byte $D9   ; 
- D 1 - I - 0x00CD04 03:ACF4: DE        .byte $DE   ; 
- D 1 - I - 0x00CD05 03:ACF5: 62        .byte $62   ; 
- D 1 - I - 0x00CD06 03:ACF6: 24        .byte $24   ; 
- D 1 - I - 0x00CD07 03:ACF7: 8D        .byte $8D   ; 
- D 1 - I - 0x00CD08 03:ACF8: A5        .byte $A5   ; 
- D 1 - I - 0x00CD09 03:ACF9: 0B        .byte $0B   ; 
- D 1 - I - 0x00CD0A 03:ACFA: 06        .byte $06   ; 
- D 1 - I - 0x00CD0B 03:ACFB: FF        .byte $FF   ; 



_off018_03_ACFC_17:
- D 1 - I - 0x00CD0C 03:ACFC: C2        .byte $C2   ; 
- D 1 - I - 0x00CD0D 03:ACFD: A2        .byte $A2   ; 
- D 1 - I - 0x00CD0E 03:ACFE: 63        .byte $63   ; 
- D 1 - I - 0x00CD0F 03:ACFF: 03        .byte $03   ; 
- D 1 - I - 0x00CD10 03:AD00: FF        .byte $FF   ; 



_off018_03_AD01_14:
- D 1 - I - 0x00CD11 03:AD01: BC        .byte $BC   ; 
- D 1 - I - 0x00CD12 03:AD02: 1D        .byte $1D   ; 
- D 1 - I - 0x00CD13 03:AD03: 63        .byte $63   ; 
- D 1 - I - 0x00CD14 03:AD04: 01        .byte $01   ; 
- D 1 - I - 0x00CD15 03:AD05: FF        .byte $FF   ; 



_off018_03_AD06_15:
- D 1 - I - 0x00CD16 03:AD06: 29        .byte $29   ; 
- D 1 - I - 0x00CD17 03:AD07: C6        .byte $C6   ; 
- D 1 - I - 0x00CD18 03:AD08: 52        .byte $52   ; 
- D 1 - I - 0x00CD19 03:AD09: 21        .byte $21   ; 
- D 1 - I - 0x00CD1A 03:AD0A: 3C        .byte $3C   ; 
- D 1 - I - 0x00CD1B 03:AD0B: 7D        .byte $7D   ; 
- D 1 - I - 0x00CD1C 03:AD0C: 5A        .byte $5A   ; 
- D 1 - I - 0x00CD1D 03:AD0D: 05        .byte $05   ; 
- D 1 - I - 0x00CD1E 03:AD0E: 93        .byte $93   ; 
- D 1 - I - 0x00CD1F 03:AD0F: 69        .byte $69   ; 
- D 1 - I - 0x00CD20 03:AD10: 59        .byte $59   ; 
- D 1 - I - 0x00CD21 03:AD11: 36        .byte $36   ; 
- D 1 - I - 0x00CD22 03:AD12: C7        .byte $C7   ; 
- D 1 - I - 0x00CD23 03:AD13: C6        .byte $C6   ; 
- D 1 - I - 0x00CD24 03:AD14: 53        .byte $53   ; 
- D 1 - I - 0x00CD25 03:AD15: 28        .byte $28   ; 
- D 1 - I - 0x00CD26 03:AD16: FF        .byte $FF   ; 



_off018_03_AD17_16:
- D 1 - I - 0x00CD27 03:AD17: 60        .byte $60   ; 
- D 1 - I - 0x00CD28 03:AD18: E7        .byte $E7   ; 
- D 1 - I - 0x00CD29 03:AD19: 39        .byte $39   ; 
- D 1 - I - 0x00CD2A 03:AD1A: 03        .byte $03   ; 
- D 1 - I - 0x00CD2B 03:AD1B: FF        .byte $FF   ; 



_off018_03_AD1C_02:
- D 1 - I - 0x00CD2C 03:AD1C: 60        .byte $60   ; 
- D 1 - I - 0x00CD2D 03:AD1D: 1D        .byte $1D   ; 
- D 1 - I - 0x00CD2E 03:AD1E: 39        .byte $39   ; 
- D 1 - I - 0x00CD2F 03:AD1F: 05        .byte $05   ; 
- D 1 - I - 0x00CD30 03:AD20: 60        .byte $60   ; 
- D 1 - I - 0x00CD31 03:AD21: 27        .byte $27   ; 
- D 1 - I - 0x00CD32 03:AD22: 39        .byte $39   ; 
- D 1 - I - 0x00CD33 03:AD23: 02        .byte $02   ; 
- D 1 - I - 0x00CD34 03:AD24: 60        .byte $60   ; 
- D 1 - I - 0x00CD35 03:AD25: 80        .byte $80   ; 
- - - - - - 0x00CD36 03:AD26: 39        .byte $39   ; 
- - - - - - 0x00CD37 03:AD27: 04        .byte $04   ; 
- D 1 - I - 0x00CD38 03:AD28: 60        .byte $60   ; 
- D 1 - I - 0x00CD39 03:AD29: 92        .byte $92   ; 
- - - - - - 0x00CD3A 03:AD2A: 39        .byte $39   ; 
- - - - - - 0x00CD3B 03:AD2B: 01        .byte $01   ; 
- D 1 - I - 0x00CD3C 03:AD2C: 60        .byte $60   ; 
- D 1 - I - 0x00CD3D 03:AD2D: CA        .byte $CA   ; 
- - - - - - 0x00CD3E 03:AD2E: 39        .byte $39   ; 
- - - - - - 0x00CD3F 03:AD2F: 00        .byte $00   ; 
- D 1 - I - 0x00CD40 03:AD30: FF        .byte $FF   ; 



_off018_03_AD31_18:
- D 1 - I - 0x00CD41 03:AD31: 3C        .byte $3C   ; 
- D 1 - I - 0x00CD42 03:AD32: FE        .byte $FE   ; 
- D 1 - I - 0x00CD43 03:AD33: 62        .byte $62   ; 
- D 1 - I - 0x00CD44 03:AD34: 11        .byte $11   ; 
- D 1 - I - 0x00CD45 03:AD35: FF        .byte $FF   ; 



_off018_03_AD36_19:
- D 1 - I - 0x00CD46 03:AD36: 30        .byte $30   ; 
- D 1 - I - 0x00CD47 03:AD37: F0        .byte $F0   ; 
- D 1 - I - 0x00CD48 03:AD38: 17        .byte $17   ; 
- D 1 - I - 0x00CD49 03:AD39: 05        .byte $05   ; 
- D 1 - I - 0x00CD4A 03:AD3A: FF        .byte $FF   ; 



_off018_03_AD3B_1A:
- D 1 - I - 0x00CD4B 03:AD3B: 30        .byte $30   ; 
- D 1 - I - 0x00CD4C 03:AD3C: 50        .byte $50   ; 
- D 1 - I - 0x00CD4D 03:AD3D: 17        .byte $17   ; 
- D 1 - I - 0x00CD4E 03:AD3E: 01        .byte $01   ; 
- D 1 - I - 0x00CD4F 03:AD3F: 50        .byte $50   ; 
- D 1 - I - 0x00CD50 03:AD40: 30        .byte $30   ; 
- D 1 - I - 0x00CD51 03:AD41: 17        .byte $17   ; 
- D 1 - I - 0x00CD52 03:AD42: 03        .byte $03   ; 
- D 1 - I - 0x00CD53 03:AD43: 64        .byte $64   ; 
- D 1 - I - 0x00CD54 03:AD44: FC        .byte $FC   ; 
- D 1 - I - 0x00CD55 03:AD45: 65        .byte $65   ; 
- D 1 - I - 0x00CD56 03:AD46: 1C        .byte $1C   ; 
- D 1 - I - 0x00CD57 03:AD47: FF        .byte $FF   ; 



_off018_03_AD48_1B:
- D 1 - I - 0x00CD58 03:AD48: 6E        .byte $6E   ; 
- D 1 - I - 0x00CD59 03:AD49: 1C        .byte $1C   ; 
- D 1 - I - 0x00CD5A 03:AD4A: 64        .byte $64   ; 
- D 1 - I - 0x00CD5B 03:AD4B: 13        .byte $13   ; 
- D 1 - I - 0x00CD5C 03:AD4C: 90        .byte $90   ; 
- D 1 - I - 0x00CD5D 03:AD4D: 1C        .byte $1C   ; 
- D 1 - I - 0x00CD5E 03:AD4E: 65        .byte $65   ; 
- D 1 - I - 0x00CD5F 03:AD4F: 2A        .byte $2A   ; 
- D 1 - I - 0x00CD60 03:AD50: 2E        .byte $2E   ; 
- D 1 - I - 0x00CD61 03:AD51: 21        .byte $21   ; 
- D 1 - I - 0x00CD62 03:AD52: 3A        .byte $3A   ; 
- D 1 - I - 0x00CD63 03:AD53: 07        .byte $07   ; 
- D 1 - I - 0x00CD64 03:AD54: EE        .byte $EE   ; 
- D 1 - I - 0x00CD65 03:AD55: 21        .byte $21   ; 
- D 1 - I - 0x00CD66 03:AD56: 3A        .byte $3A   ; 
- D 1 - I - 0x00CD67 03:AD57: 06        .byte $06   ; 
- D 1 - I - 0x00CD68 03:AD58: E7        .byte $E7   ; 
- D 1 - I - 0x00CD69 03:AD59: 5A        .byte $5A   ; 
- D 1 - I - 0x00CD6A 03:AD5A: 64        .byte $64   ; 
- D 1 - I - 0x00CD6B 03:AD5B: 21        .byte $21   ; 
- D 1 - I - 0x00CD6C 03:AD5C: 13        .byte $13   ; 
- D 1 - I - 0x00CD6D 03:AD5D: A5        .byte $A5   ; 
- D 1 - I - 0x00CD6E 03:AD5E: 0B        .byte $0B   ; 
- D 1 - I - 0x00CD6F 03:AD5F: 05        .byte $05   ; 
- D 1 - I - 0x00CD70 03:AD60: FF        .byte $FF   ; 



_off018_03_AD61_1C:
- D 1 - I - 0x00CD71 03:AD61: 3B        .byte $3B   ; 
- D 1 - I - 0x00CD72 03:AD62: A2        .byte $A2   ; 
- D 1 - I - 0x00CD73 03:AD63: 63        .byte $63   ; 
- D 1 - I - 0x00CD74 03:AD64: 02        .byte $02   ; 
- D 1 - I - 0x00CD75 03:AD65: FF        .byte $FF   ; 



_off018_03_AD66_1D:
- D 1 - I - 0x00CD76 03:AD66: 31        .byte $31   ; 
- D 1 - I - 0x00CD77 03:AD67: 1F        .byte $1F   ; 
- D 1 - I - 0x00CD78 03:AD68: 63        .byte $63   ; 
- D 1 - I - 0x00CD79 03:AD69: 00        .byte $00   ; 
- D 1 - I - 0x00CD7A 03:AD6A: 05        .byte $05   ; 
- D 1 - I - 0x00CD7B 03:AD6B: A2        .byte $A2   ; 
- D 1 - I - 0x00CD7C 03:AD6C: 63        .byte $63   ; 
- D 1 - I - 0x00CD7D 03:AD6D: 2A        .byte $2A   ; 
- D 1 - I - 0x00CD7E 03:AD6E: FF        .byte $FF   ; 



_off018_03_AD6F_1E:
- - - - - - 0x00CD7F 03:AD6F: 66        .byte $66   ; 
- - - - - - 0x00CD80 03:AD70: 27        .byte $27   ; 
- - - - - - 0x00CD81 03:AD71: 62        .byte $62   ; 
- - - - - - 0x00CD82 03:AD72: 11        .byte $11   ; 
- - - - - - 0x00CD83 03:AD73: 41        .byte $41   ; 
- - - - - - 0x00CD84 03:AD74: 3E        .byte $3E   ; 
- - - - - - 0x00CD85 03:AD75: 62        .byte $62   ; 
- - - - - - 0x00CD86 03:AD76: 10        .byte $10   ; 
- - - - - - 0x00CD87 03:AD77: FF        .byte $FF   ; 



_off018_03_AD78_20:
- D 1 - I - 0x00CD88 03:AD78: 3C        .byte $3C   ; 
- D 1 - I - 0x00CD89 03:AD79: 08        .byte $08   ; 
- D 1 - I - 0x00CD8A 03:AD7A: 64        .byte $64   ; 
- D 1 - I - 0x00CD8B 03:AD7B: 28        .byte $28   ; 
- D 1 - I - 0x00CD8C 03:AD7C: 8E        .byte $8E   ; 
- D 1 - I - 0x00CD8D 03:AD7D: 41        .byte $41   ; 
- D 1 - I - 0x00CD8E 03:AD7E: 3A        .byte $3A   ; 
- D 1 - I - 0x00CD8F 03:AD7F: 05        .byte $05   ; 
- D 1 - I - 0x00CD90 03:AD80: FF        .byte $FF   ; 



_off018_03_AD81_21:
- D 1 - I - 0x00CD91 03:AD81: 6E        .byte $6E   ; 
- D 1 - I - 0x00CD92 03:AD82: E8        .byte $E8   ; 
- D 1 - I - 0x00CD93 03:AD83: 5C        .byte $5C   ; 
- D 1 - I - 0x00CD94 03:AD84: 03        .byte $03   ; 
- D 1 - I - 0x00CD95 03:AD85: 03        .byte $03   ; 
- D 1 - I - 0x00CD96 03:AD86: FC        .byte $FC   ; 
- D 1 - I - 0x00CD97 03:AD87: 5D        .byte $5D   ; 
- D 1 - I - 0x00CD98 03:AD88: 04        .byte $04   ; 
- D 1 - I - 0x00CD99 03:AD89: FF        .byte $FF   ; 



_off018_03_AD8A_22:
- D 1 - I - 0x00CD9A 03:AD8A: 8E        .byte $8E   ; 
- D 1 - I - 0x00CD9B 03:AD8B: 3F        .byte $3F   ; 
- D 1 - I - 0x00CD9C 03:AD8C: 5C        .byte $5C   ; 
- D 1 - I - 0x00CD9D 03:AD8D: 02        .byte $02   ; 
- D 1 - I - 0x00CD9E 03:AD8E: 15        .byte $15   ; 
- D 1 - I - 0x00CD9F 03:AD8F: 4D        .byte $4D   ; 
- D 1 - I - 0x00CDA0 03:AD90: 5D        .byte $5D   ; 
- D 1 - I - 0x00CDA1 03:AD91: 05        .byte $05   ; 
- D 1 - I - 0x00CDA2 03:AD92: FF        .byte $FF   ; 



_off018_03_AD93_23:
- D 1 - I - 0x00CDA3 03:AD93: 55        .byte $55   ; 
- D 1 - I - 0x00CDA4 03:AD94: 2A        .byte $2A   ; 
- D 1 - I - 0x00CDA5 03:AD95: 62        .byte $62   ; 
- D 1 - I - 0x00CDA6 03:AD96: 12        .byte $12   ; 
- D 1 - I - 0x00CDA7 03:AD97: 5F        .byte $5F   ; 
- D 1 - I - 0x00CDA8 03:AD98: 2E        .byte $2E   ; 
- D 1 - I - 0x00CDA9 03:AD99: 39        .byte $39   ; 
- D 1 - I - 0x00CDAA 03:AD9A: 01        .byte $01   ; 
- D 1 - I - 0x00CDAB 03:AD9B: 5F        .byte $5F   ; 
- D 1 - I - 0x00CDAC 03:AD9C: A3        .byte $A3   ; 
- - - - - - 0x00CDAD 03:AD9D: 39        .byte $39   ; 
- - - - - - 0x00CDAE 03:AD9E: 00        .byte $00   ; 
- D 1 - I - 0x00CDAF 03:AD9F: FF        .byte $FF   ; 



_off018_03_ADA0_24:
- D 1 - I - 0x00CDB0 03:ADA0: 5B        .byte $5B   ; 
- D 1 - I - 0x00CDB1 03:ADA1: C3        .byte $C3   ; 
- D 1 - I - 0x00CDB2 03:ADA2: 63        .byte $63   ; 
- D 1 - I - 0x00CDB3 03:ADA3: 2B        .byte $2B   ; 
- D 1 - I - 0x00CDB4 03:ADA4: 5F        .byte $5F   ; 
- D 1 - I - 0x00CDB5 03:ADA5: A0        .byte $A0   ; 
- D 1 - I - 0x00CDB6 03:ADA6: 39        .byte $39   ; 
- D 1 - I - 0x00CDB7 03:ADA7: 02        .byte $02   ; 
- D 1 - I - 0x00CDB8 03:ADA8: 5F        .byte $5F   ; 
- D 1 - I - 0x00CDB9 03:ADA9: EE        .byte $EE   ; 
- D 1 - I - 0x00CDBA 03:ADAA: 39        .byte $39   ; 
- D 1 - I - 0x00CDBB 03:ADAB: 01        .byte $01   ; 
- D 1 - I - 0x00CDBC 03:ADAC: FF        .byte $FF   ; 



_off018_03_ADAD_25:
- D 1 - I - 0x00CDBD 03:ADAD: 4F        .byte $4F   ; 
- D 1 - I - 0x00CDBE 03:ADAE: 5C        .byte $5C   ; 
- - - - - - 0x00CDBF 03:ADAF: 62        .byte $62   ; 
- - - - - - 0x00CDC0 03:ADB0: 34        .byte $34   ; 
- D 1 - I - 0x00CDC1 03:ADB1: 5F        .byte $5F   ; 
- D 1 - I - 0x00CDC2 03:ADB2: 6E        .byte $6E   ; 
- - - - - - 0x00CDC3 03:ADB3: 39        .byte $39   ; 
- - - - - - 0x00CDC4 03:ADB4: 00        .byte $00   ; 
- D 1 - I - 0x00CDC5 03:ADB5: FF        .byte $FF   ; 



_off018_03_ADB6_26:
- D 1 - I - 0x00CDC6 03:ADB6: 2E        .byte $2E   ; 
- D 1 - I - 0x00CDC7 03:ADB7: 01        .byte $01   ; 
- D 1 - I - 0x00CDC8 03:ADB8: 3A        .byte $3A   ; 
- D 1 - I - 0x00CDC9 03:ADB9: 06        .byte $06   ; 
- D 1 - I - 0x00CDCA 03:ADBA: FF        .byte $FF   ; 



_off018_03_ADBB_27:
- D 1 - I - 0x00CDCB 03:ADBB: 98        .byte $98   ; 
- D 1 - I - 0x00CDCC 03:ADBC: F5        .byte $F5   ; 
- D 1 - I - 0x00CDCD 03:ADBD: 5F        .byte $5F   ; 
- D 1 - I - 0x00CDCE 03:ADBE: 01        .byte $01   ; 
- D 1 - I - 0x00CDCF 03:ADBF: FF        .byte $FF   ; 



_off018_03_ADC0_28:
- D 1 - I - 0x00CDD0 03:ADC0: 99        .byte $99   ; 
- D 1 - I - 0x00CDD1 03:ADC1: 4A        .byte $4A   ; 
- D 1 - I - 0x00CDD2 03:ADC2: 5F        .byte $5F   ; 
- D 1 - I - 0x00CDD3 03:ADC3: 00        .byte $00   ; 
- D 1 - I - 0x00CDD4 03:ADC4: B0        .byte $B0   ; 
- D 1 - I - 0x00CDD5 03:ADC5: E0        .byte $E0   ; 
- D 1 - I - 0x00CDD6 03:ADC6: 17        .byte $17   ; 
- D 1 - I - 0x00CDD7 03:ADC7: 04        .byte $04   ; 
- D 1 - I - 0x00CDD8 03:ADC8: FF        .byte $FF   ; 



_off018_03_ADC9_29:
- D 1 - I - 0x00CDD9 03:ADC9: 90        .byte $90   ; 
- D 1 - I - 0x00CDDA 03:ADCA: 10        .byte $10   ; 
- D 1 - I - 0x00CDDB 03:ADCB: 17        .byte $17   ; 
- D 1 - I - 0x00CDDC 03:ADCC: 04        .byte $04   ; 
- D 1 - I - 0x00CDDD 03:ADCD: FF        .byte $FF   ; 



_off018_03_ADCE_08:
- D 1 - I - 0x00CDDE 03:ADCE: F0        .byte $F0   ; 
- D 1 - I - 0x00CDDF 03:ADCF: 98        .byte $98   ; 
- D 1 - I - 0x00CDE0 03:ADD0: 62        .byte $62   ; 
- D 1 - I - 0x00CDE1 03:ADD1: 1C        .byte $1C   ; 
- D 1 - I - 0x00CDE2 03:ADD2: FF        .byte $FF   ; 



_off018_03_ADD3_2A:
- D 1 - I - 0x00CDE3 03:ADD3: 0E        .byte $0E   ; 
- D 1 - I - 0x00CDE4 03:ADD4: FA        .byte $FA   ; 
- D 1 - I - 0x00CDE5 03:ADD5: 5C        .byte $5C   ; 
- D 1 - I - 0x00CDE6 03:ADD6: 2B        .byte $2B   ; 
- D 1 - I - 0x00CDE7 03:ADD7: FF        .byte $FF   ; 



_off018_03_ADD8_2B:
- D 1 - I - 0x00CDE8 03:ADD8: C5        .byte $C5   ; 
- D 1 - I - 0x00CDE9 03:ADD9: 04        .byte $04   ; 
- D 1 - I - 0x00CDEA 03:ADDA: 1F        .byte $1F   ; 
- D 1 - I - 0x00CDEB 03:ADDB: 01        .byte $01   ; 
- D 1 - I - 0x00CDEC 03:ADDC: C1        .byte $C1   ; 
- D 1 - I - 0x00CDED 03:ADDD: 38        .byte $38   ; 
- D 1 - I - 0x00CDEE 03:ADDE: 1F        .byte $1F   ; 
- D 1 - I - 0x00CDEF 03:ADDF: 00        .byte $00   ; 
- D 1 - I - 0x00CDF0 03:ADE0: 0E        .byte $0E   ; 
- D 1 - I - 0x00CDF1 03:ADE1: 3D        .byte $3D   ; 
- D 1 - I - 0x00CDF2 03:ADE2: 5C        .byte $5C   ; 
- D 1 - I - 0x00CDF3 03:ADE3: 2A        .byte $2A   ; 
- D 1 - I - 0x00CDF4 03:ADE4: 10        .byte $10   ; 
- D 1 - I - 0x00CDF5 03:ADE5: E0        .byte $E0   ; 
- D 1 - I - 0x00CDF6 03:ADE6: 17        .byte $17   ; 
- D 1 - I - 0x00CDF7 03:ADE7: 04        .byte $04   ; 
- D 1 - I - 0x00CDF8 03:ADE8: 50        .byte $50   ; 
- D 1 - I - 0x00CDF9 03:ADE9: E0        .byte $E0   ; 
- D 1 - I - 0x00CDFA 03:ADEA: 17        .byte $17   ; 
- D 1 - I - 0x00CDFB 03:ADEB: 01        .byte $01   ; 
- D 1 - I - 0x00CDFC 03:ADEC: 08        .byte $08   ; 
- D 1 - I - 0x00CDFD 03:ADED: E7        .byte $E7   ; 
- D 1 - I - 0x00CDFE 03:ADEE: 5C        .byte $5C   ; 
- D 1 - I - 0x00CDFF 03:ADEF: 13        .byte $13   ; 
- D 1 - I - 0x00CE00 03:ADF0: FF        .byte $FF   ; 



_off018_03_ADF1_2C:
- D 1 - I - 0x00CE01 03:ADF1: 70        .byte $70   ; 
- D 1 - I - 0x00CE02 03:ADF2: 20        .byte $20   ; 
- D 1 - I - 0x00CE03 03:ADF3: 17        .byte $17   ; 
- D 1 - I - 0x00CE04 03:ADF4: 02        .byte $02   ; 
- D 1 - I - 0x00CE05 03:ADF5: FF        .byte $FF   ; 



_off018_03_ADF6_2D:
- D 1 - I - 0x00CE06 03:ADF6: 38        .byte $38   ; 
- D 1 - I - 0x00CE07 03:ADF7: 11        .byte $11   ; 
- D 1 - I - 0x00CE08 03:ADF8: 62        .byte $62   ; 
- D 1 - I - 0x00CE09 03:ADF9: 10        .byte $10   ; 
- D 1 - I - 0x00CE0A 03:ADFA: 38        .byte $38   ; 
- D 1 - I - 0x00CE0B 03:ADFB: 66        .byte $66   ; 
- D 1 - I - 0x00CE0C 03:ADFC: 62        .byte $62   ; 
- D 1 - I - 0x00CE0D 03:ADFD: 35        .byte $35   ; 
- D 1 - I - 0x00CE0E 03:ADFE: 2A        .byte $2A   ; 
- D 1 - I - 0x00CE0F 03:ADFF: 9D        .byte $9D   ; 
- D 1 - I - 0x00CE10 03:AE00: 62        .byte $62   ; 
- D 1 - I - 0x00CE11 03:AE01: 2B        .byte $2B   ; 
- D 1 - I - 0x00CE12 03:AE02: 5A        .byte $5A   ; 
- D 1 - I - 0x00CE13 03:AE03: FD        .byte $FD   ; 
- D 1 - I - 0x00CE14 03:AE04: 62        .byte $62   ; 
- D 1 - I - 0x00CE15 03:AE05: 32        .byte $32   ; 
- D 1 - I - 0x00CE16 03:AE06: FF        .byte $FF   ; 



_off018_03_AE07_2E:
- D 1 - I - 0x00CE17 03:AE07: 75        .byte $75   ; 
- D 1 - I - 0x00CE18 03:AE08: 39        .byte $39   ; 
- D 1 - I - 0x00CE19 03:AE09: 62        .byte $62   ; 
- D 1 - I - 0x00CE1A 03:AE0A: 19        .byte $19   ; 
- D 1 - I - 0x00CE1B 03:AE0B: 48        .byte $48   ; 
- D 1 - I - 0x00CE1C 03:AE0C: 39        .byte $39   ; 
- D 1 - I - 0x00CE1D 03:AE0D: 63        .byte $63   ; 
- D 1 - I - 0x00CE1E 03:AE0E: 18        .byte $18   ; 
- D 1 - I - 0x00CE1F 03:AE0F: FF        .byte $FF   ; 



_off018_03_AE10_0C:
- D 1 - I - 0x00CE20 03:AE10: EA        .byte $EA   ; 
- D 1 - I - 0x00CE21 03:AE11: F3        .byte $F3   ; 
- D 1 - I - 0x00CE22 03:AE12: 11        .byte $11   ; 
- D 1 - I - 0x00CE23 03:AE13: 18        .byte $18   ; 
- D 1 - I - 0x00CE24 03:AE14: FF        .byte $FF   ; 



_off015_AE15_04_stage_5:
- - - - - - 0x00CE25 03:AE15: 00        .byte $00   ; 
- - - - - - 0x00CE26 03:AE16: 00        .byte $00   ; 
- D 1 - I - 0x00CE27 03:AE17: 00        .byte $00   ; 
- D 1 - I - 0x00CE28 03:AE18: 00        .byte $00   ; 
- - - - - - 0x00CE29 03:AE19: 00        .byte $00   ; 
- D 1 - I - 0x00CE2A 03:AE1A: 00        .byte $00   ; 
- D 1 - I - 0x00CE2B 03:AE1B: 01        .byte $01   ; 
- D 1 - I - 0x00CE2C 03:AE1C: 02        .byte $02   ; 
- D 1 - I - 0x00CE2D 03:AE1D: 03        .byte $03   ; 
- D 1 - I - 0x00CE2E 03:AE1E: 04        .byte $04   ; 
- D 1 - I - 0x00CE2F 03:AE1F: 00        .byte $00   ; 
- D 1 - I - 0x00CE30 03:AE20: 05        .byte $05   ; 
- D 1 - I - 0x00CE31 03:AE21: 00        .byte $00   ; 
- D 1 - I - 0x00CE32 03:AE22: 00        .byte $00   ; 
- D 1 - I - 0x00CE33 03:AE23: 06        .byte $06   ; 
- D 1 - I - 0x00CE34 03:AE24: 00        .byte $00   ; 
- D 1 - I - 0x00CE35 03:AE25: 07        .byte $07   ; 
- D 1 - I - 0x00CE36 03:AE26: 08        .byte $08   ; 
- D 1 - I - 0x00CE37 03:AE27: 09        .byte $09   ; 
- D 1 - I - 0x00CE38 03:AE28: 00        .byte $00   ; 
- D 1 - I - 0x00CE39 03:AE29: 0A        .byte $0A   ; 
- D 1 - I - 0x00CE3A 03:AE2A: 0B        .byte $0B   ; 
- D 1 - I - 0x00CE3B 03:AE2B: 0C        .byte $0C   ; 
- D 1 - I - 0x00CE3C 03:AE2C: 0D        .byte $0D   ; 
- D 1 - I - 0x00CE3D 03:AE2D: 00        .byte $00   ; 
- D 1 - I - 0x00CE3E 03:AE2E: 00        .byte $00   ; 
- D 1 - I - 0x00CE3F 03:AE2F: 0E        .byte $0E   ; 
- D 1 - I - 0x00CE40 03:AE30: 0F        .byte $0F   ; 
- D 1 - I - 0x00CE41 03:AE31: 00        .byte $00   ; 
- D 1 - I - 0x00CE42 03:AE32: 00        .byte $00   ; 



_off016_AE33_04_stage_5:
- D 1 - I - 0x00CE43 03:AE33: 63 AE     .word _off018_04_AE63_00
- D 1 - I - 0x00CE45 03:AE35: 63 AE     .word _off018_04_AE63_01
- D 1 - I - 0x00CE47 03:AE37: 53 AE     .word _off018_04_AE53_02
- D 1 - I - 0x00CE49 03:AE39: 64 AE     .word _off018_04_AE64_03
- D 1 - I - 0x00CE4B 03:AE3B: 75 AE     .word _off018_04_AE75_04
- D 1 - I - 0x00CE4D 03:AE3D: 86 AE     .word _off018_04_AE86_05
- D 1 - I - 0x00CE4F 03:AE3F: 8B AE     .word _off018_04_AE8B_06
- D 1 - I - 0x00CE51 03:AE41: 98 AE     .word _off018_04_AE98_07
- D 1 - I - 0x00CE53 03:AE43: A9 AE     .word _off018_04_AEA9_08
- D 1 - I - 0x00CE55 03:AE45: BE AE     .word _off018_04_AEBE_09
- D 1 - I - 0x00CE57 03:AE47: D3 AE     .word _off018_04_AED3_0A
- D 1 - I - 0x00CE59 03:AE49: E0 AE     .word _off018_04_AEE0_0B
- D 1 - I - 0x00CE5B 03:AE4B: E5 AE     .word _off018_04_AEE5_0C
- D 1 - I - 0x00CE5D 03:AE4D: FE AE     .word _off018_04_AEFE_0D
- D 1 - I - 0x00CE5F 03:AE4F: 07 AF     .word _off018_04_AF07_0E
- D 1 - I - 0x00CE61 03:AE51: 10 AF     .word _off018_04_AF10_0F



_off018_04_AE53_02:
- D 1 - I - 0x00CE63 03:AE53: ED        .byte $ED   ; 
- D 1 - I - 0x00CE64 03:AE54: 6B        .byte $6B   ; 
- D 1 - I - 0x00CE65 03:AE55: 41        .byte $41   ; 
- D 1 - I - 0x00CE66 03:AE56: 0E        .byte $0E   ; 
- D 1 - I - 0x00CE67 03:AE57: C9        .byte $C9   ; 
- D 1 - I - 0x00CE68 03:AE58: 6B        .byte $6B   ; 
- D 1 - I - 0x00CE69 03:AE59: 40        .byte $40   ; 
- D 1 - I - 0x00CE6A 03:AE5A: 04        .byte $04   ; 
- D 1 - I - 0x00CE6B 03:AE5B: A9        .byte $A9   ; 
- D 1 - I - 0x00CE6C 03:AE5C: 8B        .byte $8B   ; 
- D 1 - I - 0x00CE6D 03:AE5D: 41        .byte $41   ; 
- D 1 - I - 0x00CE6E 03:AE5E: 0A        .byte $0A   ; 
- D 1 - I - 0x00CE6F 03:AE5F: 3E        .byte $3E   ; 
- D 1 - I - 0x00CE70 03:AE60: A4        .byte $A4   ; 
- D 1 - I - 0x00CE71 03:AE61: 44        .byte $44   ; 
- D 1 - I - 0x00CE72 03:AE62: 2B        .byte $2B   ; 



_off018_04_AE63_00:
_off018_04_AE63_01:
- D 1 - I - 0x00CE73 03:AE63: FF        .byte $FF   ; 



_off018_04_AE64_03:
- D 1 - I - 0x00CE74 03:AE64: 12        .byte $12   ; 
- D 1 - I - 0x00CE75 03:AE65: 89        .byte $89   ; 
- D 1 - I - 0x00CE76 03:AE66: 3F        .byte $3F   ; 
- D 1 - I - 0x00CE77 03:AE67: 05        .byte $05   ; 
- D 1 - I - 0x00CE78 03:AE68: 70        .byte $70   ; 
- D 1 - I - 0x00CE79 03:AE69: A4        .byte $A4   ; 
- D 1 - I - 0x00CE7A 03:AE6A: 40        .byte $40   ; 
- D 1 - I - 0x00CE7B 03:AE6B: 13        .byte $13   ; 
- D 1 - I - 0x00CE7C 03:AE6C: 31        .byte $31   ; 
- D 1 - I - 0x00CE7D 03:AE6D: A4        .byte $A4   ; 
- D 1 - I - 0x00CE7E 03:AE6E: 43        .byte $43   ; 
- D 1 - I - 0x00CE7F 03:AE6F: 2C        .byte $2C   ; 
- D 1 - I - 0x00CE80 03:AE70: EA        .byte $EA   ; 
- D 1 - I - 0x00CE81 03:AE71: B6        .byte $B6   ; 
- D 1 - I - 0x00CE82 03:AE72: 41        .byte $41   ; 
- D 1 - I - 0x00CE83 03:AE73: 0A        .byte $0A   ; 
- D 1 - I - 0x00CE84 03:AE74: FF        .byte $FF   ; 



_off018_04_AE75_04:
- D 1 - I - 0x00CE85 03:AE75: A2        .byte $A2   ; 
- D 1 - I - 0x00CE86 03:AE76: A4        .byte $A4   ; 
- D 1 - I - 0x00CE87 03:AE77: 42        .byte $42   ; 
- D 1 - I - 0x00CE88 03:AE78: 0A        .byte $0A   ; 
- D 1 - I - 0x00CE89 03:AE79: 12        .byte $12   ; 
- D 1 - I - 0x00CE8A 03:AE7A: C6        .byte $C6   ; 
- D 1 - I - 0x00CE8B 03:AE7B: 41        .byte $41   ; 
- D 1 - I - 0x00CE8C 03:AE7C: 0D        .byte $0D   ; 
- D 1 - I - 0x00CE8D 03:AE7D: 8E        .byte $8E   ; 
- D 1 - I - 0x00CE8E 03:AE7E: C4        .byte $C4   ; 
- D 1 - I - 0x00CE8F 03:AE7F: 3F        .byte $3F   ; 
- D 1 - I - 0x00CE90 03:AE80: 16        .byte $16   ; 
- D 1 - I - 0x00CE91 03:AE81: 51        .byte $51   ; 
- D 1 - I - 0x00CE92 03:AE82: F5        .byte $F5   ; 
- D 1 - I - 0x00CE93 03:AE83: 3F        .byte $3F   ; 
- D 1 - I - 0x00CE94 03:AE84: 04        .byte $04   ; 
- D 1 - I - 0x00CE95 03:AE85: FF        .byte $FF   ; 



_off018_04_AE86_05:
- D 1 - I - 0x00CE96 03:AE86: 89        .byte $89   ; 
- D 1 - I - 0x00CE97 03:AE87: B7        .byte $B7   ; 
- D 1 - I - 0x00CE98 03:AE88: 40        .byte $40   ; 
- D 1 - I - 0x00CE99 03:AE89: 13        .byte $13   ; 
- D 1 - I - 0x00CE9A 03:AE8A: FF        .byte $FF   ; 



_off018_04_AE8B_06:
- D 1 - I - 0x00CE9B 03:AE8B: 8A        .byte $8A   ; 
- D 1 - I - 0x00CE9C 03:AE8C: 16        .byte $16   ; 
- D 1 - I - 0x00CE9D 03:AE8D: 3F        .byte $3F   ; 
- D 1 - I - 0x00CE9E 03:AE8E: 03        .byte $03   ; 
- D 1 - I - 0x00CE9F 03:AE8F: EF        .byte $EF   ; 
- D 1 - I - 0x00CEA0 03:AE90: 65        .byte $65   ; 
- D 1 - I - 0x00CEA1 03:AE91: 41        .byte $41   ; 
- D 1 - I - 0x00CEA2 03:AE92: 0C        .byte $0C   ; 
- D 1 - I - 0x00CEA3 03:AE93: CE        .byte $CE   ; 
- D 1 - I - 0x00CEA4 03:AE94: 87        .byte $87   ; 
- D 1 - I - 0x00CEA5 03:AE95: 3E        .byte $3E   ; 
- D 1 - I - 0x00CEA6 03:AE96: 05        .byte $05   ; 
- D 1 - I - 0x00CEA7 03:AE97: FF        .byte $FF   ; 



_off018_04_AE98_07:
- D 1 - I - 0x00CEA8 03:AE98: 43        .byte $43   ; 
- D 1 - I - 0x00CEA9 03:AE99: 36        .byte $36   ; 
- D 1 - I - 0x00CEAA 03:AE9A: 41        .byte $41   ; 
- D 1 - I - 0x00CEAB 03:AE9B: 0E        .byte $0E   ; 
- D 1 - I - 0x00CEAC 03:AE9C: C0        .byte $C0   ; 
- D 1 - I - 0x00CEAD 03:AE9D: 98        .byte $98   ; 
- D 1 - I - 0x00CEAE 03:AE9E: 3F        .byte $3F   ; 
- D 1 - I - 0x00CEAF 03:AE9F: 03        .byte $03   ; 
- D 1 - I - 0x00CEB0 03:AEA0: 9B        .byte $9B   ; 
- D 1 - I - 0x00CEB1 03:AEA1: 98        .byte $98   ; 
- D 1 - I - 0x00CEB2 03:AEA2: 44        .byte $44   ; 
- D 1 - I - 0x00CEB3 03:AEA3: 2A        .byte $2A   ; 
- D 1 - I - 0x00CEB4 03:AEA4: 5C        .byte $5C   ; 
- D 1 - I - 0x00CEB5 03:AEA5: 98        .byte $98   ; 
- D 1 - I - 0x00CEB6 03:AEA6: 3F        .byte $3F   ; 
- D 1 - I - 0x00CEB7 03:AEA7: 05        .byte $05   ; 
- D 1 - I - 0x00CEB8 03:AEA8: FF        .byte $FF   ; 



_off018_04_AEA9_08:
- D 1 - I - 0x00CEB9 03:AEA9: 49        .byte $49   ; 
- D 1 - I - 0x00CEBA 03:AEAA: 94        .byte $94   ; 
- D 1 - I - 0x00CEBB 03:AEAB: 41        .byte $41   ; 
- D 1 - I - 0x00CEBC 03:AEAC: 0C        .byte $0C   ; 
- D 1 - I - 0x00CEBD 03:AEAD: E8        .byte $E8   ; 
- D 1 - I - 0x00CEBE 03:AEAE: 97        .byte $97   ; 
- D 1 - I - 0x00CEBF 03:AEAF: 41        .byte $41   ; 
- D 1 - I - 0x00CEC0 03:AEB0: 0A        .byte $0A   ; 
- D 1 - I - 0x00CEC1 03:AEB1: C9        .byte $C9   ; 
- D 1 - I - 0x00CEC2 03:AEB2: A4        .byte $A4   ; 
- D 1 - I - 0x00CEC3 03:AEB3: 40        .byte $40   ; 
- D 1 - I - 0x00CEC4 03:AEB4: 16        .byte $16   ; 
- D 1 - I - 0x00CEC5 03:AEB5: A9        .byte $A9   ; 
- D 1 - I - 0x00CEC6 03:AEB6: A8        .byte $A8   ; 
- D 1 - I - 0x00CEC7 03:AEB7: 3F        .byte $3F   ; 
- D 1 - I - 0x00CEC8 03:AEB8: 05        .byte $05   ; 
- D 1 - I - 0x00CEC9 03:AEB9: 5B        .byte $5B   ; 
- D 1 - I - 0x00CECA 03:AEBA: FB        .byte $FB   ; 
- D 1 - I - 0x00CECB 03:AEBB: 41        .byte $41   ; 
- D 1 - I - 0x00CECC 03:AEBC: 0C        .byte $0C   ; 
- D 1 - I - 0x00CECD 03:AEBD: FF        .byte $FF   ; 



_off018_04_AEBE_09:
- D 1 - I - 0x00CECE 03:AEBE: A3        .byte $A3   ; 
- D 1 - I - 0x00CECF 03:AEBF: 8E        .byte $8E   ; 
- D 1 - I - 0x00CED0 03:AEC0: 40        .byte $40   ; 
- D 1 - I - 0x00CED1 03:AEC1: 16        .byte $16   ; 
- D 1 - I - 0x00CED2 03:AEC2: 64        .byte $64   ; 
- D 1 - I - 0x00CED3 03:AEC3: 92        .byte $92   ; 
- D 1 - I - 0x00CED4 03:AEC4: 41        .byte $41   ; 
- D 1 - I - 0x00CED5 03:AEC5: 0D        .byte $0D   ; 
- D 1 - I - 0x00CED6 03:AEC6: CB        .byte $CB   ; 
- D 1 - I - 0x00CED7 03:AEC7: A5        .byte $A5   ; 
- D 1 - I - 0x00CED8 03:AEC8: 41        .byte $41   ; 
- D 1 - I - 0x00CED9 03:AEC9: 0A        .byte $0A   ; 
- D 1 - I - 0x00CEDA 03:AECA: 49        .byte $49   ; 
- D 1 - I - 0x00CEDB 03:AECB: A7        .byte $A7   ; 
- D 1 - I - 0x00CEDC 03:AECC: 44        .byte $44   ; 
- D 1 - I - 0x00CEDD 03:AECD: 2C        .byte $2C   ; 
- D 1 - I - 0x00CEDE 03:AECE: 0D        .byte $0D   ; 
- D 1 - I - 0x00CEDF 03:AECF: A9        .byte $A9   ; 
- D 1 - I - 0x00CEE0 03:AED0: 42        .byte $42   ; 
- D 1 - I - 0x00CEE1 03:AED1: 0B        .byte $0B   ; 
- D 1 - I - 0x00CEE2 03:AED2: FF        .byte $FF   ; 



_off018_04_AED3_0A:
- D 1 - I - 0x00CEE3 03:AED3: 6F        .byte $6F   ; 
- D 1 - I - 0x00CEE4 03:AED4: 58        .byte $58   ; 
- - - - - - 0x00CEE5 03:AED5: 3F        .byte $3F   ; 
- - - - - - 0x00CEE6 03:AED6: 12        .byte $12   ; 
- D 1 - I - 0x00CEE7 03:AED7: BA        .byte $BA   ; 
- D 1 - I - 0x00CEE8 03:AED8: 68        .byte $68   ; 
- - - - - - 0x00CEE9 03:AED9: 3F        .byte $3F   ; 
- - - - - - 0x00CEEA 03:AEDA: 03        .byte $03   ; 
- D 1 - I - 0x00CEEB 03:AEDB: FC        .byte $FC   ; 
- D 1 - I - 0x00CEEC 03:AEDC: 68        .byte $68   ; 
- - - - - - 0x00CEED 03:AEDD: 43        .byte $43   ; 
- - - - - - 0x00CEEE 03:AEDE: 2C        .byte $2C   ; 
- D 1 - I - 0x00CEEF 03:AEDF: FF        .byte $FF   ; 



_off018_04_AEE0_0B:
- D 1 - I - 0x00CEF0 03:AEE0: E7        .byte $E7   ; 
- D 1 - I - 0x00CEF1 03:AEE1: 27        .byte $27   ; 
- D 1 - I - 0x00CEF2 03:AEE2: 3F        .byte $3F   ; 
- D 1 - I - 0x00CEF3 03:AEE3: 16        .byte $16   ; 
- D 1 - I - 0x00CEF4 03:AEE4: FF        .byte $FF   ; 



_off018_04_AEE5_0C:
- D 1 - I - 0x00CEF5 03:AEE5: 4B        .byte $4B   ; 
- D 1 - I - 0x00CEF6 03:AEE6: 0B        .byte $0B   ; 
- D 1 - I - 0x00CEF7 03:AEE7: 3F        .byte $3F   ; 
- D 1 - I - 0x00CEF8 03:AEE8: 03        .byte $03   ; 
- D 1 - I - 0x00CEF9 03:AEE9: 24        .byte $24   ; 
- D 1 - I - 0x00CEFA 03:AEEA: 24        .byte $24   ; 
- D 1 - I - 0x00CEFB 03:AEEB: 44        .byte $44   ; 
- D 1 - I - 0x00CEFC 03:AEEC: 2A        .byte $2A   ; 
- D 1 - I - 0x00CEFD 03:AEED: E9        .byte $E9   ; 
- D 1 - I - 0x00CEFE 03:AEEE: 44        .byte $44   ; 
- D 1 - I - 0x00CEFF 03:AEEF: 40        .byte $40   ; 
- D 1 - I - 0x00CF00 03:AEF0: 15        .byte $15   ; 
- D 1 - I - 0x00CF01 03:AEF1: CB        .byte $CB   ; 
- D 1 - I - 0x00CF02 03:AEF2: 64        .byte $64   ; 
- D 1 - I - 0x00CF03 03:AEF3: 3F        .byte $3F   ; 
- D 1 - I - 0x00CF04 03:AEF4: 06        .byte $06   ; 
- D 1 - I - 0x00CF05 03:AEF5: 9E        .byte $9E   ; 
- D 1 - I - 0x00CF06 03:AEF6: 84        .byte $84   ; 
- D 1 - I - 0x00CF07 03:AEF7: 43        .byte $43   ; 
- D 1 - I - 0x00CF08 03:AEF8: 22        .byte $22   ; 
- D 1 - I - 0x00CF09 03:AEF9: 6C        .byte $6C   ; 
- D 1 - I - 0x00CF0A 03:AEFA: 84        .byte $84   ; 
- D 1 - I - 0x00CF0B 03:AEFB: 3F        .byte $3F   ; 
- D 1 - I - 0x00CF0C 03:AEFC: 14        .byte $14   ; 
- D 1 - I - 0x00CF0D 03:AEFD: FF        .byte $FF   ; 



_off018_04_AEFE_0D:
- D 1 - I - 0x00CF0E 03:AEFE: 2A        .byte $2A   ; 
- D 1 - I - 0x00CF0F 03:AEFF: 40        .byte $40   ; 
- D 1 - I - 0x00CF10 03:AF00: 40        .byte $40   ; 
- D 1 - I - 0x00CF11 03:AF01: 04        .byte $04   ; 
- D 1 - I - 0x00CF12 03:AF02: D1        .byte $D1   ; 
- D 1 - I - 0x00CF13 03:AF03: 95        .byte $95   ; 
- D 1 - I - 0x00CF14 03:AF04: 40        .byte $40   ; 
- D 1 - I - 0x00CF15 03:AF05: 03        .byte $03   ; 
- D 1 - I - 0x00CF16 03:AF06: FF        .byte $FF   ; 



_off018_04_AF07_0E:
- D 1 - I - 0x00CF17 03:AF07: 85        .byte $85   ; 
- D 1 - I - 0x00CF18 03:AF08: 25        .byte $25   ; 
- D 1 - I - 0x00CF19 03:AF09: 3E        .byte $3E   ; 
- D 1 - I - 0x00CF1A 03:AF0A: 07        .byte $07   ; 
- D 1 - I - 0x00CF1B 03:AF0B: A8        .byte $A8   ; 
- D 1 - I - 0x00CF1C 03:AF0C: 25        .byte $25   ; 
- D 1 - I - 0x00CF1D 03:AF0D: 41        .byte $41   ; 
- D 1 - I - 0x00CF1E 03:AF0E: 0E        .byte $0E   ; 
- D 1 - I - 0x00CF1F 03:AF0F: FF        .byte $FF   ; 



_off018_04_AF10_0F:
- D 1 - I - 0x00CF20 03:AF10: 0D        .byte $0D   ; 
- D 1 - I - 0x00CF21 03:AF11: 25        .byte $25   ; 
- D 1 - I - 0x00CF22 03:AF12: 3F        .byte $3F   ; 
- D 1 - I - 0x00CF23 03:AF13: 15        .byte $15   ; 
- D 1 - I - 0x00CF24 03:AF14: 2B        .byte $2B   ; 
- D 1 - I - 0x00CF25 03:AF15: 25        .byte $25   ; 
- D 1 - I - 0x00CF26 03:AF16: 3F        .byte $3F   ; 
- D 1 - I - 0x00CF27 03:AF17: 04        .byte $04   ; 
- D 1 - I - 0x00CF28 03:AF18: 69        .byte $69   ; 
- D 1 - I - 0x00CF29 03:AF19: 27        .byte $27   ; 
- D 1 - I - 0x00CF2A 03:AF1A: 41        .byte $41   ; 
- D 1 - I - 0x00CF2B 03:AF1B: 0B        .byte $0B   ; 
- D 1 - I - 0x00CF2C 03:AF1C: A8        .byte $A8   ; 
- D 1 - I - 0x00CF2D 03:AF1D: 27        .byte $27   ; 
- D 1 - I - 0x00CF2E 03:AF1E: 44        .byte $44   ; 
- D 1 - I - 0x00CF2F 03:AF1F: 2A        .byte $2A   ; 
- D 1 - I - 0x00CF30 03:AF20: FF        .byte $FF   ; 



.out .sprintf("Free bytes in bank 06: 0x%04X [%d]", ($C000 - *), ($C000 - *))



