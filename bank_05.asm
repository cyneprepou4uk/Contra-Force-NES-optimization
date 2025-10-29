.segment "BANK_05"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $A000  ; for listing file
; 0x00A010-0x00C00F



.export sub_0x008011
.export ofs_006_0x00A040_20
.export sub_0x00A073
.export ofs_006_0x00A073_12
.export loc_0x00A548
.export ofs_006_0x00A548_13
.export ofs_006_0x00A6E3_18
.export ofs_006_0x00AE44_09
.export ofs_006_0x00AF00_0B
.export loc_0x00B38A
.export sub_0x00B636



sub_0x008011:
C D 0 - - - 0x008011 02:8001: A9 00     LDA #$00
C - - - - - 0x008013 02:8003: 8D 40 03  STA ram_0340_flag
C - - - - - 0x008016 02:8006: 85 8C     STA ram_008C
; bzk optimize, useless STA
C - - - - - 0x008018 02:8008: 85 8D     STA ram_008D
C - - - - - 0x00801A 02:800A: 85 9E     STA ram_009E
C - - - - - 0x00A011 02:A001: A2 01     LDX #$01
bra_A003_loop:
C - - - - - 0x00A013 02:A003: 20 40 F6  JSR sub_0x01F650
C - - - - - 0x00A016 02:A006: 9D 00 06  STA ram_0600_obj,X
C - - - - - 0x00A019 02:A009: 9D AA 07  STA ram_07AA_unk,X
C - - - - - 0x00A01C 02:A00C: A4 88     LDY ram_x2_stage
C - - - - - 0x00A01E 02:A00E: 8A        TXA
; * 10
C - - - - - 0x00A01F 02:A00F: 0A        ASL
C - - - - - 0x00A020 02:A010: 0A        ASL
C - - - - - 0x00A021 02:A011: 0A        ASL
C - - - - - 0x00A022 02:A012: 0A        ASL
C - - - - - 0x00A023 02:A013: 79 C7 F6  ADC tbl_F6C7,Y
C - - - - - 0x00A026 02:A016: 9D 4E 06  STA ram_obj_pos_X,X
C - - - - - 0x00A029 02:A019: B9 C8 F6  LDA tbl_F6C7 + $01,Y
C - - - - - 0x00A02C 02:A01C: 9D 68 06  STA ram_obj_pos_Y,X
C - - - - - 0x00A02F 02:A01F: A9 0A     LDA #$0A
C - - - - - 0x00A031 02:A021: 9D 82 06  STA ram_0682_obj,X
C - - - - - 0x00A034 02:A024: BD 82 07  LDA ram_0782_unk,X
C - - - - - 0x00A037 02:A027: F0 03     BEQ bra_A02C
C - - - - - 0x00A039 02:A029: 20 30 A0  JSR sub_A030
bra_A02C:
C - - - - - 0x00A03C 02:A02C: CA        DEX
C - - - - - 0x00A03D 02:A02D: 10 D4     BPL bra_A003_loop
C - - - - - 0x00A03F 02:A02F: 60        JMP loc_0x00801F



tbl_F6C7:
;                                              +---------- pos_X
;                                              |    +----- pos_Y
;                                              |    |
- D 3 - - - 0x01F6D7 07:F6C7: 70        .byte $70, $A8   ; 00 stage 1
- D 3 - - - 0x01F6D9 07:F6C9: 80        .byte $80, $70   ; 02 stage 2
- D 3 - - - 0x01F6DB 07:F6CB: 80        .byte $80, $A9   ; 04 stage 3
- D 3 - - - 0x01F6DD 07:F6CD: 80        .byte $80, $90   ; 06 stage 4
- D 3 - - - 0x01F6DF 07:F6CF: 80        .byte $80, $90   ; 08 stage 5



sub_A030:
ofs_006_0x00A040_20:
; con_F3D6_20
C - - - - - 0x00A040 02:A030: 20 78 91  JSR sub_0x009188_stage_AND_01
C - - - - - 0x00A043 02:A033: F0 08     BEQ bra_A03D_side_view
; if upper view
C - - - - - 0x00A045 02:A035: 20 43 A0  JSR sub_A043_00B1x_AND_0F
C - - - - - 0x00A048 02:A038: 29 02     AND #$02
C - - - - - 0x00A04A 02:A03A: 0A        ASL
C - - - - - 0x00A04B 02:A03B: 69 04     ADC #$04
bra_A03D_side_view:
C - - - - - 0x00A04D 02:A03D: 9D 34 06  STA ram_obj_animation_hi,X
C - - - - - 0x00A050 02:A040: 4C C7 A6  JMP loc_A6C7



sub_A043_00B1x_AND_0F:
C - - - - - 0x00A053 02:A043: B5 B1     LDA ram_current_player,X
C - - - - - 0x00A055 02:A045: 29 0F     AND #$0F
C - - - - - 0x00A057 02:A047: 60        RTS



sub_0x00A073:
ofs_006_0x00A073_12:
; con_F3D6_12
C - - - - - 0x00A073 02:A063: AD C8 07  LDA ram_07C8_unk
C - - - - - 0x00A076 02:A066: 0D C9 07  ORA ram_07C8_unk + $01
C - - - - - 0x00A079 02:A069: 8D 5B 03  STA ram_035B_flag
C - - - - - 0x00A07C 02:A06C: 20 40 F6  JSR sub_0x01F650
C - - - - - 0x00A07F 02:A06F: BD C8 07  LDA ram_07C8_unk,X
C - - - - - 0x00A082 02:A072: 29 20     AND #$20
C - - - - - 0x00A084 02:A074: F0 26     BEQ bra_A09C
C - - - - - 0x00A086 02:A076: A9 0D     LDA #con_F3D6_0D
C - - - - - 0x00A088 02:A078: 20 B3 F3  JSR sub_0x01F3C3_execute_script
C - - - - - 0x00A08B 02:A07B: 20 78 91  JSR sub_0x009188_stage_AND_01
C - - - - - 0x00A08E 02:A07E: F0 0A     BEQ bra_A08A_side_view
; if upper view
C - - - - - 0x00A090 02:A080: BD C8 07  LDA ram_07C8_unk,X
C - - - - - 0x00A093 02:A083: 29 20     AND #$20
C - - - - - 0x00A095 02:A085: D0 1A     BNE bra_A0A1_RTS
C - - - - - 0x00A097 02:A087: 20 4C 9A  JSR sub_0x009A5C_clear_animation
bra_A08A_side_view:
C - - - - - 0x00A09A 02:A08A: BD B4 07  LDA ram_07B4_unk,X
C - - - - - 0x00A09D 02:A08D: D0 12     BNE bra_A0A1_RTS
C - - - - - 0x00A09F 02:A08F: 4C 84 AC  JMP loc_AC84



sub_A092:
C - - - - - 0x00A0A2 02:A092: A9 00     LDA #$00
C - - - - - 0x00A0A4 02:A094: F0 02     BEQ bra_A098    ; jmp



sub_A096:
C - - - - - 0x00A0A6 02:A096: A9 80     LDA #$80
bra_A098:
C - - - - - 0x00A0A8 02:A098: 9D B4 07  STA ram_07B4_unk,X
C - - - - - 0x00A0AB 02:A09B: 60        RTS



bra_A09C:
C - - - - - 0x00A0AC 02:A09C: 20 4F A4  JSR sub_A44F
C - - - - - 0x00A0AF 02:A09F: 90 0D     BCC bra_A0AE
bra_A0A1_RTS:
C - - - - - 0x00A0B1 02:A0A1: 60        RTS



sub_A0A8:
C - - - - - 0x00A0B8 02:A0A8: 20 A2 A0  JSR sub_0x00A0B2_07AAx_AND_0F
C - - - - - 0x00A0BB 02:A0AB: C9 05     CMP #$05
C - - - - - 0x00A0BD 02:A0AD: 60        RTS



bra_A0AE:
C - - - - - 0x00A0BE 02:A0AE: BD 00 06  LDA ram_0600_obj,X
C - - - - - 0x00A0C1 02:A0B1: 29 FD     AND #$FD
C - - - - - 0x00A0C3 02:A0B3: 9D 00 06  STA ram_0600_obj,X
C - - - - - 0x00A0C6 02:A0B6: A5 75     LDA ram_stage
C - - - - - 0x00A0C8 02:A0B8: C9 01     CMP #$01
C - - - - - 0x00A0CA 02:A0BA: D0 10     BNE bra_A0CC
C - - - - - 0x00A0CC 02:A0BC: B5 BE     LDA ram_00BE,X
C - - - - - 0x00A0CE 02:A0BE: 29 03     AND #$03
C - - - - - 0x00A0D0 02:A0C0: C9 03     CMP #$03
C - - - - - 0x00A0D2 02:A0C2: D0 08     BNE bra_A0CC
C - - - - - 0x00A0D4 02:A0C4: A9 02     LDA #$02
C - - - - - 0x00A0D6 02:A0C6: 1D 00 06  ORA ram_0600_obj,X
C - - - - - 0x00A0D9 02:A0C9: 9D 00 06  STA ram_0600_obj,X
bra_A0CC:
C - - - - - 0x00A0DC 02:A0CC: 20 F0 AE  JSR sub_AEF0
C - - - - - 0x00A0DF 02:A0CF: 20 E7 A2  JSR sub_A2E7
C - - - - - 0x00A0E2 02:A0D2: BD D2 07  LDA ram_07D2_unk,X
C - - - - - 0x00A0E5 02:A0D5: 85 3A     STA ram_003A_t03
C - - - - - 0x00A0E7 02:A0D7: A9 00     LDA #$00
C - - - - - 0x00A0E9 02:A0D9: 9D D2 07  STA ram_07D2_unk,X
C - - - - - 0x00A0EC 02:A0DC: B5 BE     LDA ram_00BE,X
C - - - - - 0x00A0EE 02:A0DE: 29 13     AND #$13
C - - - - - 0x00A0F0 02:A0E0: 95 BE     STA ram_00BE,X
C - - - - - 0x00A0F2 02:A0E2: 20 78 91  JSR sub_0x009188_stage_AND_01
C - - - - - 0x00A0F5 02:A0E5: D0 03     BNE bra_A0EA_upper_view
; if side view
C - - - - - 0x00A0F7 02:A0E7: 4C B4 A1  JMP loc_A1B4_side_view
bra_A0EA_upper_view:
C - - - - - 0x00A0FA 02:A0EA: A0 00     LDY #$00
C - - - - - 0x00A0FC 02:A0EC: 20 86 A4  JSR sub_A486
C - - - - - 0x00A0FF 02:A0EF: A5 75     LDA ram_stage
C - - - - - 0x00A101 02:A0F1: C9 03     CMP #$03
C - - - - - 0x00A103 02:A0F3: D0 0A     BNE bra_A0FF
C - - - - - 0x00A105 02:A0F5: A5 00     LDA ram_0000_t42
C - - - - - 0x00A107 02:A0F7: C9 BD     CMP #$BD
C - - - - - 0x00A109 02:A0F9: D0 04     BNE bra_A0FF
- - - - - - 0x00A10B 02:A0FB: A9 01     LDA #$01
- - - - - - 0x00A10D 02:A0FD: 85 01     STA ram_0001_t15_table_index
bra_A0FF:
C - - - - - 0x00A10F 02:A0FF: A4 01     LDY ram_0001_t15_table_index
C - - - - - 0x00A111 02:A101: 84 3B     STY ram_003B_t01
C - - - - - 0x00A113 02:A103: B9 1B A5  LDA tbl_A51B,Y
C - - - - - 0x00A116 02:A106: F0 41     BEQ bra_A149
C - - - - - 0x00A118 02:A108: C9 FE     CMP #$FE
C - - - - - 0x00A11A 02:A10A: F0 3D     BEQ bra_A149
C - - - - - 0x00A11C 02:A10C: C9 FF     CMP #$FF
C - - - - - 0x00A11E 02:A10E: F0 07     BEQ bra_A117
C - - - - - 0x00A120 02:A110: 15 BE     ORA ram_00BE,X
C - - - - - 0x00A122 02:A112: 95 BE     STA ram_00BE,X
C - - - - - 0x00A124 02:A114: 4C 49 A1  JMP loc_A149
bra_A117:
C - - - - - 0x00A127 02:A117: BD 00 06  LDA ram_0600_obj,X
C - - - - - 0x00A12A 02:A11A: 29 01     AND #$01
C - - - - - 0x00A12C 02:A11C: D0 2B     BNE bra_A149
C - - - - - 0x00A12E 02:A11E: A5 BB     LDA ram_00BB
C - - - - - 0x00A130 02:A120: D0 27     BNE bra_A149
; player was killed (stages 2 and 4)
C - - - - - 0x00A132 02:A122: A9 20     LDA #$20
C - - - - - 0x00A134 02:A124: 9D C8 07  STA ram_07C8_unk,X
C - - - - - 0x00A137 02:A127: A9 30     LDA #$30
C - - - - - 0x00A139 02:A129: 9D B4 07  STA ram_07B4_unk,X
C - - - - - 0x00A13C 02:A12C: 20 48 A8  JSR sub_A848
C - - - - - 0x00A13F 02:A12F: 20 43 A0  JSR sub_A043_00B1x_AND_0F
C - - - - - 0x00A142 02:A132: A8        TAY
C - - - - - 0x00A143 02:A133: A5 75     LDA ram_stage
C - - - - - 0x00A145 02:A135: C9 03     CMP #$03
C - - - - - 0x00A147 02:A137: F0 05     BEQ bra_A13E
C - - - - - 0x00A149 02:A139: B9 30 A5  LDA tbl_A530,Y
C - - - - - 0x00A14C 02:A13C: D0 08     BNE bra_A146    ; jmp
bra_A13E:
C - - - - - 0x00A14E 02:A13E: A9 5B     LDA #con_music_5B
C - - - - - 0x00A150 02:A140: 20 CA FE  JSR sub_0x01FEDA_add_music_to_queue
C - - - - - 0x00A153 02:A143: B9 34 A5  LDA tbl_A534,Y
bra_A146:
C - - - - - 0x00A156 02:A146: 4C B9 A7  JMP loc_A7B9
bra_A149:
loc_A149:
C D 1 - - - 0x00A159 02:A149: 20 A2 A0  JSR sub_0x00A0B2_07AAx_AND_0F
C - - - - - 0x00A15C 02:A14C: A8        TAY
C - - - - - 0x00A15D 02:A14D: D0 05     BNE bra_A154
C - - - - - 0x00A15F 02:A14F: 20 AA A1  JSR sub_A1AA
C - - - - - 0x00A162 02:A152: A8        TAY
C - - - - - 0x00A163 02:A153: C8        INY
bra_A154:
C - - - - - 0x00A164 02:A154: 20 86 A4  JSR sub_A486
C - - - - - 0x00A167 02:A157: A4 01     LDY ram_0001_t15_table_index
C - - - - - 0x00A169 02:A159: A5 75     LDA ram_stage
C - - - - - 0x00A16B 02:A15B: C9 01     CMP #$01
C - - - - - 0x00A16D 02:A15D: D0 22     BNE bra_A181
C - - - - - 0x00A16F 02:A15F: B5 BE     LDA ram_00BE,X
C - - - - - 0x00A171 02:A161: 29 03     AND #$03
C - - - - - 0x00A173 02:A163: F0 0C     BEQ bra_A171
C - - - - - 0x00A175 02:A165: C0 08     CPY #$08
C - - - - - 0x00A177 02:A167: F0 31     BEQ bra_A19A
C - - - - - 0x00A179 02:A169: A5 16     LDA ram_0016_t04
C - - - - - 0x00A17B 02:A16B: C9 18     CMP #$18
C - - - - - 0x00A17D 02:A16D: F0 2B     BEQ bra_A19A
- - - - - - 0x00A17F 02:A16F: D0 21     BNE bra_A192    ; jmp
bra_A171:
C - - - - - 0x00A181 02:A171: B5 BE     LDA ram_00BE,X
C - - - - - 0x00A183 02:A173: 29 40     AND #$40
C - - - - - 0x00A185 02:A175: F0 0A     BEQ bra_A181
C - - - - - 0x00A187 02:A177: C0 06     CPY #$06
C - - - - - 0x00A189 02:A179: D0 06     BNE bra_A181
C - - - - - 0x00A18B 02:A17B: A5 16     LDA ram_0016_t04
C - - - - - 0x00A18D 02:A17D: C9 18     CMP #$18
C - - - - - 0x00A18F 02:A17F: F0 11     BEQ bra_A192
bra_A181:
C - - - - - 0x00A191 02:A181: A5 75     LDA ram_stage
C - - - - - 0x00A193 02:A183: C9 03     CMP #$03
C - - - - - 0x00A195 02:A185: D0 06     BNE bra_A18D
C - - - - - 0x00A197 02:A187: A5 00     LDA ram_0000_t42
C - - - - - 0x00A199 02:A189: C9 44     CMP #$44
C - - - - - 0x00A19B 02:A18B: F0 0D     BEQ bra_A19A
bra_A18D:
C - - - - - 0x00A19D 02:A18D: B9 06 A5  LDA tbl_A506,Y
C - - - - - 0x00A1A0 02:A190: D0 08     BNE bra_A19A
bra_A192:
C - - - - - 0x00A1A2 02:A192: A4 18     LDY ram_0018_t14
C - - - - - 0x00A1A4 02:A194: B9 FD A4  LDA tbl_A4FD,Y
C - - - - - 0x00A1A7 02:A197: 20 9D A1  JSR sub_A19D
bra_A19A:
C - - - - - 0x00A1AA 02:A19A: 4C AF A2  JMP loc_A2AF



sub_A19D:
C - - - - - 0x00A1AD 02:A19D: 1D D2 07  ORA ram_07D2_unk,X
C - - - - - 0x00A1B0 02:A1A0: 9D D2 07  STA ram_07D2_unk,X
C - - - - - 0x00A1B3 02:A1A3: 60        RTS



sub_A1A4:
; out
    ; A = 
    ; Z
        ; 0 = 
        ; 1 = 
C - - - - - 0x00A1B4 02:A1A4: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x00A1B7 02:A1A7: 29 40     AND #$40
C - - - - - 0x00A1B9 02:A1A9: 60        RTS



sub_A1AA:
; out
    ; A = 
C - - - - - 0x00A1BA 02:A1AA: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x00A1BD 02:A1AD: 29 70     AND #$70
; / 10
C - - - - - 0x00A1BF 02:A1AF: 4A        LSR
C - - - - - 0x00A1C0 02:A1B0: 4A        LSR
C - - - - - 0x00A1C1 02:A1B1: 4A        LSR
C - - - - - 0x00A1C2 02:A1B2: 4A        LSR
C - - - - - 0x00A1C3 02:A1B3: 60        RTS



loc_A1B4_side_view:
C D 1 - - - 0x00A1C4 02:A1B4: A0 00     LDY #$00
C - - - - - 0x00A1C6 02:A1B6: 20 A4 A1  JSR sub_A1A4
C - - - - - 0x00A1C9 02:A1B9: F0 07     BEQ bra_A1C2
C - - - - - 0x00A1CB 02:A1BB: BD B4 07  LDA ram_07B4_unk,X
C - - - - - 0x00A1CE 02:A1BE: 30 02     BMI bra_A1C2
C - - - - - 0x00A1D0 02:A1C0: A0 03     LDY #$03
bra_A1C2:
C - - - - - 0x00A1D2 02:A1C2: 20 A3 A4  JSR sub_A4A3
C - - - - - 0x00A1D5 02:A1C5: C0 06     CPY #$06
C - - - - - 0x00A1D7 02:A1C7: F0 28     BEQ bra_A1F1
C - - - - - 0x00A1D9 02:A1C9: B9 10 A5  LDA tbl_A510,Y
C - - - - - 0x00A1DC 02:A1CC: F0 4A     BEQ bra_A218
C - - - - - 0x00A1DE 02:A1CE: C9 05     CMP #$05
C - - - - - 0x00A1E0 02:A1D0: D0 0E     BNE bra_A1E0
C - - - - - 0x00A1E2 02:A1D2: A5 75     LDA ram_stage
C - - - - - 0x00A1E4 02:A1D4: D0 1B     BNE bra_A1F1
C - - - - - 0x00A1E6 02:A1D6: A5 18     LDA ram_0018_t14
C - - - - - 0x00A1E8 02:A1D8: C9 03     CMP #$03
C - - - - - 0x00A1EA 02:A1DA: D0 15     BNE bra_A1F1
- - - - - - 0x00A1EC 02:A1DC: A9 00     LDA #$00
- - - - - - 0x00A1EE 02:A1DE: F0 38     BEQ bra_A218    ; jmp
bra_A1E0:
C - - - - - 0x00A1F0 02:A1E0: C9 02     CMP #$02
C - - - - - 0x00A1F2 02:A1E2: D0 0D     BNE bra_A1F1
C - - - - - 0x00A1F4 02:A1E4: A5 18     LDA ram_0018_t14
C - - - - - 0x00A1F6 02:A1E6: C9 03     CMP #$03
C - - - - - 0x00A1F8 02:A1E8: D0 07     BNE bra_A1F1
C - - - - - 0x00A1FA 02:A1EA: BD B4 07  LDA ram_07B4_unk,X
C - - - - - 0x00A1FD 02:A1ED: 29 80     AND #$80
C - - - - - 0x00A1FF 02:A1EF: F0 27     BEQ bra_A218
bra_A1F1:
C - - - - - 0x00A201 02:A1F1: B9 25 A5  LDA tbl_A525,Y
C - - - - - 0x00A204 02:A1F4: F0 1E     BEQ bra_A214
C - - - - - 0x00A206 02:A1F6: C9 FF     CMP #$FF
C - - - - - 0x00A208 02:A1F8: F0 17     BEQ bra_A211
C - - - - - 0x00A20A 02:A1FA: 15 BE     ORA ram_00BE,X
C - - - - - 0x00A20C 02:A1FC: 95 BE     STA ram_00BE,X
C - - - - - 0x00A20E 02:A1FE: C0 06     CPY #$06
C - - - - - 0x00A210 02:A200: D0 12     BNE bra_A214
C - - - - - 0x00A212 02:A202: A5 18     LDA ram_0018_t14
C - - - - - 0x00A214 02:A204: C9 03     CMP #$03
C - - - - - 0x00A216 02:A206: F0 13     BEQ bra_A21B
C - - - - - 0x00A218 02:A208: BD C8 07  LDA ram_07C8_unk,X
C - - - - - 0x00A21B 02:A20B: D0 0E     BNE bra_A21B
C - - - - - 0x00A21D 02:A20D: A9 08     LDA #$08
C - - - - - 0x00A21F 02:A20F: D0 07     BNE bra_A218    ; jmp
bra_A211:
- - - - - - 0x00A221 02:A211: 20 57 A9  JSR sub_A957
bra_A214:
C - - - - - 0x00A224 02:A214: A4 18     LDY ram_0018_t14
C - - - - - 0x00A226 02:A216: C8        INY
C - - - - - 0x00A227 02:A217: 98        TYA
bra_A218:
C - - - - - 0x00A228 02:A218: 20 9D A1  JSR sub_A19D
bra_A21B:
C - - - - - 0x00A22B 02:A21B: A5 3A     LDA ram_003A_t03
C - - - - - 0x00A22D 02:A21D: 29 08     AND #$08
C - - - - - 0x00A22F 02:A21F: F0 1A     BEQ bra_A23B
C - - - - - 0x00A231 02:A221: 20 A2 A0  JSR sub_0x00A0B2_07AAx_AND_0F
C - - - - - 0x00A234 02:A224: C9 04     CMP #$04
C - - - - - 0x00A236 02:A226: 90 04     BCC bra_A22C
C - - - - - 0x00A238 02:A228: C9 06     CMP #$06
C - - - - - 0x00A23A 02:A22A: 90 0F     BCC bra_A23B
bra_A22C:
C - - - - - 0x00A23C 02:A22C: A0 03     LDY #$03
C - - - - - 0x00A23E 02:A22E: 20 D5 A2  JSR sub_A2D5
C - - - - - 0x00A241 02:A231: F0 1E     BEQ bra_A251
C - - - - - 0x00A243 02:A233: C0 06     CPY #$06
C - - - - - 0x00A245 02:A235: F0 1A     BEQ bra_A251
C - - - - - 0x00A247 02:A237: A9 04     LDA #$04
C - - - - - 0x00A249 02:A239: D0 13     BNE bra_A24E    ; jmp
bra_A23B:
C - - - - - 0x00A24B 02:A23B: 20 A4 A1  JSR sub_A1A4
C - - - - - 0x00A24E 02:A23E: F0 11     BEQ bra_A251
C - - - - - 0x00A250 02:A240: 20 DC A2  JSR sub_A2DC
C - - - - - 0x00A253 02:A243: 20 D5 A2  JSR sub_A2D5
C - - - - - 0x00A256 02:A246: F0 06     BEQ bra_A24E
C - - - - - 0x00A258 02:A248: C9 02     CMP #$02
C - - - - - 0x00A25A 02:A24A: F0 05     BEQ bra_A251
C - - - - - 0x00A25C 02:A24C: A9 02     LDA #$02
bra_A24E:
C - - - - - 0x00A25E 02:A24E: 20 9D A1  JSR sub_A19D
bra_A251:
C - - - - - 0x00A261 02:A251: 20 DC A2  JSR sub_A2DC
C - - - - - 0x00A264 02:A254: C8        INY
C - - - - - 0x00A265 02:A255: 20 D5 A2  JSR sub_A2D5
C - - - - - 0x00A268 02:A258: F0 52     BEQ bra_A2AC
C - - - - - 0x00A26A 02:A25A: C9 05     CMP #$05
C - - - - - 0x00A26C 02:A25C: F0 54     BEQ bra_A2B2
C - - - - - 0x00A26E 02:A25E: C9 02     CMP #$02
C - - - - - 0x00A270 02:A260: F0 4D     BEQ bra_A2AF
bra_A262:
C - - - - - 0x00A272 02:A262: A5 75     LDA ram_stage
C - - - - - 0x00A274 02:A264: C9 04     CMP #$04
C - - - - - 0x00A276 02:A266: F0 16     BEQ bra_A27E
C - - - - - 0x00A278 02:A268: A0 00     LDY #$00
C - - - - - 0x00A27A 02:A26A: 20 A3 A4  JSR sub_A4A3
C - - - - - 0x00A27D 02:A26D: C0 05     CPY #$05
C - - - - - 0x00A27F 02:A26F: F0 2F     BEQ bra_A2A0
C - - - - - 0x00A281 02:A271: A5 75     LDA ram_stage
C - - - - - 0x00A283 02:A273: D0 09     BNE bra_A27E
C - - - - - 0x00A285 02:A275: A5 00     LDA ram_0000_t42
C - - - - - 0x00A287 02:A277: 38        SEC
C - - - - - 0x00A288 02:A278: E9 5E     SBC #$5E
C - - - - - 0x00A28A 02:A27A: C9 02     CMP #$02
C - - - - - 0x00A28C 02:A27C: 90 22     BCC bra_A2A0
bra_A27E:
C - - - - - 0x00A28E 02:A27E: A5 3C     LDA ram_003C_t03
C - - - - - 0x00A290 02:A280: 29 0F     AND #$0F
C - - - - - 0x00A292 02:A282: C9 05     CMP #$05
C - - - - - 0x00A294 02:A284: F0 1E     BEQ bra_A2A4
C - - - - - 0x00A296 02:A286: 20 CA A2  JSR sub_A2CA
C - - - - - 0x00A299 02:A289: F0 19     BEQ bra_A2A4
C - - - - - 0x00A29B 02:A28B: C9 02     CMP #$02
C - - - - - 0x00A29D 02:A28D: F0 15     BEQ bra_A2A4
C - - - - - 0x00A29F 02:A28F: A5 75     LDA ram_stage
C - - - - - 0x00A2A1 02:A291: C9 04     CMP #$04
C - - - - - 0x00A2A3 02:A293: D0 06     BNE bra_A29B
C - - - - - 0x00A2A5 02:A295: A5 00     LDA ram_0000_t42
C - - - - - 0x00A2A7 02:A297: C9 5B     CMP #$5B
C - - - - - 0x00A2A9 02:A299: F0 09     BEQ bra_A2A4
bra_A29B:
C - - - - - 0x00A2AB 02:A29B: A9 FE     LDA #$FE
C - - - - - 0x00A2AD 02:A29D: 20 32 B0  JSR sub_B032
bra_A2A0:
C - - - - - 0x00A2B0 02:A2A0: A9 00     LDA #$00
C - - - - - 0x00A2B2 02:A2A2: F0 08     BEQ bra_A2AC    ; jmp
bra_A2A4:
C - - - - - 0x00A2B4 02:A2A4: B5 BE     LDA ram_00BE,X
C - - - - - 0x00A2B6 02:A2A6: 29 7F     AND #$7F
C - - - - - 0x00A2B8 02:A2A8: 95 BE     STA ram_00BE,X
C - - - - - 0x00A2BA 02:A2AA: A9 02     LDA #$02
bra_A2AC:
C - - - - - 0x00A2BC 02:A2AC: 20 9D A1  JSR sub_A19D
bra_A2AF:
loc_A2AF:   ; bzk optimize
C D 1 - - - 0x00A2BF 02:A2AF: 4C 7B AE  JMP loc_AE7B
bra_A2B2:
C - - - - - 0x00A2C2 02:A2B2: A5 75     LDA ram_stage
C - - - - - 0x00A2C4 02:A2B4: C9 04     CMP #$04
C - - - - - 0x00A2C6 02:A2B6: D0 F7     BNE bra_A2AF
C - - - - - 0x00A2C8 02:A2B8: 20 A8 A0  JSR sub_A0A8
C - - - - - 0x00A2CB 02:A2BB: 90 F2     BCC bra_A2AF
C - - - - - 0x00A2CD 02:A2BD: BD D2 07  LDA ram_07D2_unk,X
C - - - - - 0x00A2D0 02:A2C0: 29 04     AND #$04
C - - - - - 0x00A2D2 02:A2C2: D0 9E     BNE bra_A262
C - - - - - 0x00A2D4 02:A2C4: B5 BE     LDA ram_00BE,X
C - - - - - 0x00A2D6 02:A2C6: 10 9A     BPL bra_A262
C - - - - - 0x00A2D8 02:A2C8: 30 E5     BMI bra_A2AF    ; jmp



sub_A2CA:
C - - - - - 0x00A2DA 02:A2CA: A0 00     LDY #$00
C - - - - - 0x00A2DC 02:A2CC: 20 A8 A0  JSR sub_A0A8
C - - - - - 0x00A2DF 02:A2CF: B0 02     BCS bra_A2D3
sub_A2D1:
C - - - - - 0x00A2E1 02:A2D1: A0 03     LDY #$03
bra_A2D3:
C - - - - - 0x00A2E3 02:A2D3: C8        INY
C - - - - - 0x00A2E4 02:A2D4: C8        INY
sub_A2D5:
; in
    ; Y = 
; out
    ; ram_0018_t14
C - - - - - 0x00A2E5 02:A2D5: 20 A3 A4  JSR sub_A4A3
C - - - - - 0x00A2E8 02:A2D8: B9 10 A5  LDA tbl_A510,Y
C - - - - - 0x00A2EB 02:A2DB: 60        RTS



sub_A2DC:
; out
    ; Y = 
C - - - - - 0x00A2EC 02:A2DC: A0 00     LDY #$00
C - - - - - 0x00A2EE 02:A2DE: 20 A8 A0  JSR sub_A0A8
C - - - - - 0x00A2F1 02:A2E1: 90 02     BCC bra_A2E5
C - - - - - 0x00A2F3 02:A2E3: A0 03     LDY #$03
bra_A2E5:
C - - - - - 0x00A2F5 02:A2E5: C8        INY ; 01/04
C - - - - - 0x00A2F6 02:A2E6: 60        RTS



sub_A2E7:
C - - - - - 0x00A2F7 02:A2E7: 20 56 A4  JSR sub_A456_decrease_invincibility_timer_after_death
C - - - - - 0x00A2FA 02:A2EA: 90 01     BCC bra_A2ED
C - - - - - 0x00A2FC 02:A2EC: 60        RTS
bra_A2ED:
C - - - - - 0x00A2FD 02:A2ED: 20 43 A0  JSR sub_A043_00B1x_AND_0F
C - - - - - 0x00A300 02:A2F0: A8        TAY
C - - - - - 0x00A301 02:A2F1: B9 7F 00  LDA ram_player_stats,Y
C - - - - - 0x00A304 02:A2F4: 29 F0     AND #$F0
C - - - - - 0x00A306 02:A2F6: C9 30     CMP #$30
C - - - - - 0x00A308 02:A2F8: 90 08     BCC bra_A302
C - - - - - 0x00A30A 02:A2FA: A9 0E     LDA #con_F3D6_0E
C - - - - - 0x00A30C 02:A2FC: 20 B3 F3  JSR sub_0x01F3C3_execute_script
C - - - - - 0x00A30F 02:A2FF: 4C 14 A3  JMP loc_A314
bra_A302:
C - - - - - 0x00A312 02:A302: B5 42     LDA ram_btn_hold_1,X
C - - - - - 0x00A314 02:A304: 29 0F     AND #con_btns_Dpad
C - - - - - 0x00A316 02:A306: A8        TAY
C - - - - - 0x00A317 02:A307: 20 38 F3  LDA tbl_0x01F34C_dpad_buttons_conversion,Y
C - - - - - 0x00A31A 02:A30A: 85 00     STA ram_0000_t77
C - - - - - 0x00A31C 02:A30C: B5 42     LDA ram_btn_hold_1,X
C - - - - - 0x00A31E 02:A30E: 15 40     ORA ram_btn_press_1,X
C - - - - - 0x00A320 02:A310: 29 F0     AND #con_btns_ABSS
C - - - - - 0x00A322 02:A312: 85 01     STA ram_0001_t22_btns_ABSS
loc_A314:
C D 1 - - - 0x00A324 02:A314: 20 78 91  JSR sub_0x009188_stage_AND_01
C - - - - - 0x00A327 02:A317: F0 1D     BEQ bra_A336_side_view
; if upper view
C - - - - - 0x00A329 02:A319: A5 00     LDA ram_0000_t77
C - - - - - 0x00A32B 02:A31B: 29 0F     AND #$0F
C - - - - - 0x00A32D 02:A31D: D0 08     BNE bra_A327
C - - - - - 0x00A32F 02:A31F: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x00A332 02:A322: 29 70     AND #$70
C - - - - - 0x00A334 02:A324: 4C 30 A3  JMP loc_A330
bra_A327:
; * 10
C - - - - - 0x00A337 02:A327: 0A        ASL
C - - - - - 0x00A338 02:A328: 0A        ASL
C - - - - - 0x00A339 02:A329: 0A        ASL
C - - - - - 0x00A33A 02:A32A: 0A        ASL
C - - - - - 0x00A33B 02:A32B: 38        SEC
C - - - - - 0x00A33C 02:A32C: E9 10     SBC #$10
C - - - - - 0x00A33E 02:A32E: 05 00     ORA ram_0000_t77
loc_A330:
C D 1 - - - 0x00A340 02:A330: 9D AA 07  STA ram_07AA_unk,X
C - - - - - 0x00A343 02:A333: 4C DB A3  JMP loc_A3DB



bra_A336_side_view:
C - - - - - 0x00A346 02:A336: A5 00     LDA ram_0000_t77
C - - - - - 0x00A348 02:A338: 48        PHA
C - - - - - 0x00A349 02:A339: A5 01     LDA ram_0001_t22_btns_ABSS
C - - - - - 0x00A34B 02:A33B: 48        PHA
C - - - - - 0x00A34C 02:A33C: 29 80     AND #con_btn_A
C - - - - - 0x00A34E 02:A33E: F0 1F     BEQ bra_A35F
C - - - - - 0x00A350 02:A340: A0 03     LDY #$03
C - - - - - 0x00A352 02:A342: 20 D5 A2  JSR sub_A2D5
C - - - - - 0x00A355 02:A345: F0 18     BEQ bra_A35F
C - - - - - 0x00A357 02:A347: C9 02     CMP #$02
C - - - - - 0x00A359 02:A349: F0 14     BEQ bra_A35F
C - - - - - 0x00A35B 02:A34B: C9 05     CMP #$05
C - - - - - 0x00A35D 02:A34D: D0 0A     BNE bra_A359
- - - - - - 0x00A35F 02:A34F: A5 75     LDA ram_stage
- - - - - - 0x00A361 02:A351: D0 06     BNE bra_A359
- - - - - - 0x00A363 02:A353: A5 18     LDA ram_0018_t14
- - - - - - 0x00A365 02:A355: C9 03     CMP #$03
- - - - - - 0x00A367 02:A357: F0 06     BEQ bra_A35F
bra_A359:
C - - - - - 0x00A369 02:A359: 68        PLA
C - - - - - 0x00A36A 02:A35A: 29 7F     AND #con_btn_A ^ $FF
C - - - - - 0x00A36C 02:A35C: 4C 60 A3  JMP loc_A360
bra_A35F:
C - - - - - 0x00A36F 02:A35F: 68        PLA
loc_A360:
C D 1 - - - 0x00A370 02:A360: 85 01     STA ram_0001_t22_btns_ABSS
C - - - - - 0x00A372 02:A362: 68        PLA
C - - - - - 0x00A373 02:A363: 85 00     STA ram_0000_t78
C - - - - - 0x00A375 02:A365: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x00A378 02:A368: 85 3C     STA ram_003C_t03
C - - - - - 0x00A37A 02:A36A: A4 00     LDY ram_0000_t78
C - - - - - 0x00A37C 02:A36C: B9 ED A4  LDA tbl_A4ED,Y
C - - - - - 0x00A37F 02:A36F: F0 0D     BEQ bra_A37E
C - - - - - 0x00A381 02:A371: 38        SEC
C - - - - - 0x00A382 02:A372: E9 10     SBC #$10
C - - - - - 0x00A384 02:A374: 85 02     STA ram_0002_t32
C - - - - - 0x00A386 02:A376: 20 A4 A1  JSR sub_A1A4
C - - - - - 0x00A389 02:A379: 05 02     ORA ram_0002_t32
C - - - - - 0x00A38B 02:A37B: 9D AA 07  STA ram_07AA_unk,X
bra_A37E:
C - - - - - 0x00A38E 02:A37E: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x00A391 02:A381: 29 50     AND #$50
C - - - - - 0x00A393 02:A383: 05 00     ORA ram_0000_t78
C - - - - - 0x00A395 02:A385: 9D AA 07  STA ram_07AA_unk,X
C - - - - - 0x00A398 02:A388: B5 CD     LDA ram_00CD,X
C - - - - - 0x00A39A 02:A38A: 29 02     AND #$02
C - - - - - 0x00A39C 02:A38C: F0 0E     BEQ bra_A39C
C - - - - - 0x00A39E 02:A38E: A5 01     LDA ram_0001_t22_btns_ABSS
C - - - - - 0x00A3A0 02:A390: 29 80     AND #con_btn_A
C - - - - - 0x00A3A2 02:A392: F0 14     BEQ bra_A3A8
- - - - - - 0x00A3A4 02:A394: B5 CD     LDA ram_00CD,X
- - - - - - 0x00A3A6 02:A396: 29 FD     AND #$FD
- - - - - - 0x00A3A8 02:A398: 95 CD     STA ram_00CD,X
- - - - - - 0x00A3AA 02:A39A: D0 0C     BNE bra_A3A8
bra_A39C:
C - - - - - 0x00A3AC 02:A39C: A5 01     LDA ram_0001_t22_btns_ABSS
C - - - - - 0x00A3AE 02:A39E: 29 80     AND #con_btn_A
C - - - - - 0x00A3B0 02:A3A0: F0 08     BEQ bra_A3AA
C - - - - - 0x00A3B2 02:A3A2: B5 CD     LDA ram_00CD,X
C - - - - - 0x00A3B4 02:A3A4: 29 FD     AND #$FD
C - - - - - 0x00A3B6 02:A3A6: 95 CD     STA ram_00CD,X
bra_A3A8:
C - - - - - 0x00A3B8 02:A3A8: A9 20     LDA #$20
bra_A3AA:
C - - - - - 0x00A3BA 02:A3AA: 1D AA 07  ORA ram_07AA_unk,X
C - - - - - 0x00A3BD 02:A3AD: 9D AA 07  STA ram_07AA_unk,X
C - - - - - 0x00A3C0 02:A3B0: 29 40     AND #$40
C - - - - - 0x00A3C2 02:A3B2: D0 27     BNE bra_A3DB
C - - - - - 0x00A3C4 02:A3B4: B5 CD     LDA ram_00CD,X
C - - - - - 0x00A3C6 02:A3B6: 29 02     AND #$02
C - - - - - 0x00A3C8 02:A3B8: D0 16     BNE bra_A3D0
C - - - - - 0x00A3CA 02:A3BA: A5 01     LDA ram_0001_t22_btns_ABSS
C - - - - - 0x00A3CC 02:A3BC: 29 80     AND #con_btn_A
C - - - - - 0x00A3CE 02:A3BE: F0 1B     BEQ bra_A3DB
C - - - - - 0x00A3D0 02:A3C0: 20 43 A0  JSR sub_A043_00B1x_AND_0F
C - - - - - 0x00A3D3 02:A3C3: A8        TAY
C - - - - - 0x00A3D4 02:A3C4: B9 7F 00  LDA ram_player_stats,Y
C - - - - - 0x00A3D7 02:A3C7: 29 08     AND #$08
C - - - - - 0x00A3D9 02:A3C9: F0 05     BEQ bra_A3D0
C - - - - - 0x00A3DB 02:A3CB: A9 1A     LDA #con_music_1A
C - - - - - 0x00A3DD 02:A3CD: 20 CA FE  JSR sub_0x01FEDA_add_music_to_queue
bra_A3D0:
C - - - - - 0x00A3E0 02:A3D0: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x00A3E3 02:A3D3: 09 40     ORA #$40
C - - - - - 0x00A3E5 02:A3D5: 9D AA 07  STA ram_07AA_unk,X
C - - - - - 0x00A3E8 02:A3D8: 20 92 A0  JSR sub_A092
bra_A3DB:
loc_A3DB:
C D 1 - - - 0x00A3EB 02:A3DB: A5 01     LDA ram_0001_t22_btns_ABSS
C - - - - - 0x00A3ED 02:A3DD: 29 40     AND #con_btn_B
C - - - - - 0x00A3EF 02:A3DF: F0 0A     BEQ bra_A3EB
C - - - - - 0x00A3F1 02:A3E1: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x00A3F4 02:A3E4: 09 80     ORA #$80
C - - - - - 0x00A3F6 02:A3E6: 9D AA 07  STA ram_07AA_unk,X
C - - - - - 0x00A3F9 02:A3E9: D0 05     BNE bra_A3F0
bra_A3EB:
C - - - - - 0x00A3FB 02:A3EB: A9 00     LDA #$00
C - - - - - 0x00A3FD 02:A3ED: 9D BE 07  STA ram_07BE_unk,X
bra_A3F0:
C - - - - - 0x00A400 02:A3F0: A5 01     LDA ram_0001_t22_btns_ABSS
C - - - - - 0x00A402 02:A3F2: 29 20     AND #con_btn_Select
C - - - - - 0x00A404 02:A3F4: F0 71     BEQ bra_A467_RTS
C - - - - - 0x00A406 02:A3F6: 20 43 A0  JSR sub_A043_00B1x_AND_0F
C - - - - - 0x00A409 02:A3F9: 85 01     STA ram_0001_t23_player_index
C - - - - - 0x00A40B 02:A3FB: B5 B1     LDA ram_current_player,X
C - - - - - 0x00A40D 02:A3FD: 29 F0     AND #$F0
C - - - - - 0x00A40F 02:A3FF: F0 66     BEQ bra_A467_RTS
C - - - - - 0x00A411 02:A401: 20 B4 93  JSR sub_0x0093C4_LSRx4_TAY
C - - - - - 0x00A414 02:A404: 88        DEY
C - - - - - 0x00A415 02:A405: 84 00     STY ram_0000_t74_table_index
C - - - - - 0x00A417 02:A407: B9 F6 A4  LDA tbl_A4F6_bonus,Y
C - - - - - 0x00A41A 02:A40A: D0 0B     BNE bra_A417
- - - - - - 0x00A41C 02:A40C: A4 01     LDY ram_0001_t23_player_index
- - - - - - 0x00A41E 02:A40E: B9 7F 00  LDA ram_player_stats,Y
- - - - - - 0x00A421 02:A411: 29 03     AND #$03
- - - - - - 0x00A423 02:A413: F0 52     BEQ bra_A467_RTS
- - - - - - 0x00A425 02:A415: D0 07     BNE bra_A41E    ; jmp
bra_A417:
C - - - - - 0x00A427 02:A417: A4 01     LDY ram_0001_t23_player_index
C - - - - - 0x00A429 02:A419: 39 7F 00  AND ram_player_stats,Y
C - - - - - 0x00A42C 02:A41C: D0 49     BNE bra_A467_RTS
bra_A41E:
C - - - - - 0x00A42E 02:A41E: A4 00     LDY ram_0000_t74_table_index
C - - - - - 0x00A430 02:A420: B9 F6 A4  LDA tbl_A4F6_bonus,Y
C - - - - - 0x00A433 02:A423: C9 04     CMP #$04
C - - - - - 0x00A435 02:A425: B0 0F     BCS bra_A436
C - - - - - 0x00A437 02:A427: A4 01     LDY ram_0001_t23_player_index
C - - - - - 0x00A439 02:A429: B9 7F 00  LDA ram_player_stats,Y
C - - - - - 0x00A43C 02:A42C: 29 F0     AND #$F0
C - - - - - 0x00A43E 02:A42E: A4 00     LDY ram_0000_t74_table_index
C - - - - - 0x00A440 02:A430: 19 F6 A4  ORA tbl_A4F6_bonus,Y
C - - - - - 0x00A443 02:A433: 4C 40 A4  JMP loc_A440
bra_A436:
C - - - - - 0x00A446 02:A436: A4 01     LDY ram_0001_t23_player_index
C - - - - - 0x00A448 02:A438: B9 7F 00  LDA ram_player_stats,Y
C - - - - - 0x00A44B 02:A43B: A4 00     LDY ram_0000_t74_table_index
C - - - - - 0x00A44D 02:A43D: 19 F6 A4  ORA tbl_A4F6_bonus,Y
loc_A440:
C D 1 - - - 0x00A450 02:A440: A4 01     LDY ram_0001_t23_player_index
C - - - - - 0x00A452 02:A442: 99 7F 00  STA ram_player_stats,Y
C - - - - - 0x00A455 02:A445: 20 43 A0  JSR sub_A043_00B1x_AND_0F
C - - - - - 0x00A458 02:A448: 95 B1     STA ram_current_player,X
C - - - - - 0x00A45A 02:A44A: A9 4E     LDA #con_music_4E
C - - - - - 0x00A45C 02:A44C: 4C CA FE  JMP loc_0x01FEDA_add_music_to_queue



sub_A44F:
C - - - - - 0x00A45F 02:A44F: 20 78 91  JSR sub_0x009188_stage_AND_01
C - - - - - 0x00A462 02:A452: F0 30     BEQ bra_A484    ; if side view
C - - - - - 0x00A464 02:A454: D0 05     BNE bra_A45B    ; jmp if upper view



sub_A456_decrease_invincibility_timer_after_death:
C - - - - - 0x00A466 02:A456: 20 78 91  JSR sub_0x009188_stage_AND_01
C - - - - - 0x00A469 02:A459: D0 29     BNE bra_A484    ; if upper view
; if side view
bra_A45B:
C - - - - - 0x00A46B 02:A45B: BD C8 07  LDA ram_07C8_unk,X
C - - - - - 0x00A46E 02:A45E: 29 C0     AND #$C0
C - - - - - 0x00A470 02:A460: F0 22     BEQ bra_A484
C - - - - - 0x00A472 02:A462: 29 80     AND #$80
C - - - - - 0x00A474 02:A464: F0 02     BEQ bra_A468
bra_A466:
C - - - - - 0x00A476 02:A466: 38        SEC
bra_A467_RTS:
C - - - - - 0x00A477 02:A467: 60        RTS
bra_A468:
C - - - - - 0x00A478 02:A468: 20 DC AC  JSR sub_ACDC
C - - - - - 0x00A47B 02:A46B: A5 23     LDA ram_frm_cnt
C - - - - - 0x00A47D 02:A46D: 29 07     AND #$07
C - - - - - 0x00A47F 02:A46F: D0 03     BNE bra_A474
; decrease invincibility timer after death
C - - - - - 0x00A481 02:A471: DE C8 07  DEC ram_07C8_unk,X
bra_A474:
C - - - - - 0x00A484 02:A474: BD C8 07  LDA ram_07C8_unk,X
C - - - - - 0x00A487 02:A477: 29 1F     AND #$1F
C - - - - - 0x00A489 02:A479: C9 1C     CMP #$1C
C - - - - - 0x00A48B 02:A47B: B0 E9     BCS bra_A466
C - - - - - 0x00A48D 02:A47D: 29 1F     AND #$1F
C - - - - - 0x00A48F 02:A47F: D0 03     BNE bra_A484
C - - - - - 0x00A491 02:A481: 9D C8 07  STA ram_07C8_unk,X
bra_A484:
C - - - - - 0x00A494 02:A484: 18        CLC
C - - - - - 0x00A495 02:A485: 60        RTS



sub_A486:
; in
    ; Y = 
; out
    ; ram_0018_t14
C - - - - - 0x00A496 02:A486: 84 18     STY ram_0018_t14
C - - - - - 0x00A498 02:A488: 98        TYA
C - - - - - 0x00A499 02:A489: 18        CLC
C - - - - - 0x00A49A 02:A48A: 69 07     ADC #$07
C - - - - - 0x00A49C 02:A48C: D0 03     BNE bra_A491
sub_A48E:
; out
    ; ram_0018_t14
C - - - - - 0x00A49E 02:A48E: 84 18     STY ram_0018_t14
C - - - - - 0x00A4A0 02:A490: 98        TYA
bra_A491:
C - - - - - 0x00A4A1 02:A491: 0A        ASL
C - - - - - 0x00A4A2 02:A492: A8        TAY
C - - - - - 0x00A4A3 02:A493: B9 CD A4  LDA tbl_A4CD,Y
C - - - - - 0x00A4A6 02:A496: 85 00     STA ram_0000_t53_pos_X
C - - - - - 0x00A4A8 02:A498: B9 CE A4  LDA tbl_A4CD + $01,Y
C - - - - - 0x00A4AB 02:A49B: 85 01     STA ram_0001_t20_pos_Y
C - - - - - 0x00A4AD 02:A49D: 20 C0 8F  JSR sub_0x008FD0
C - - - - - 0x00A4B0 02:A4A0: A4 18     LDY ram_0018_t14
C - - - - - 0x00A4B2 02:A4A2: 60        RTS



sub_A4A3:
; out
    ; Y = table index
    ; ram_0018_t14
C - - - - - 0x00A4B3 02:A4A3: 20 8E A4  JSR sub_A48E
C - - - - - 0x00A4B6 02:A4A6: A5 75     LDA ram_stage
C - - - - - 0x00A4B8 02:A4A8: C9 02     CMP #$02
C - - - - - 0x00A4BA 02:A4AA: D0 1E     BNE bra_A4CA
C - - - - - 0x00A4BC 02:A4AC: A5 D0     LDA ram_00D0
C - - - - - 0x00A4BE 02:A4AE: F0 0C     BEQ bra_A4BC
C - - - - - 0x00A4C0 02:A4B0: A5 00     LDA ram_0000_t42
C - - - - - 0x00A4C2 02:A4B2: C9 60     CMP #$60
C - - - - - 0x00A4C4 02:A4B4: D0 06     BNE bra_A4BC
C - - - - - 0x00A4C6 02:A4B6: A9 00     LDA #$00
C - - - - - 0x00A4C8 02:A4B8: 85 01     STA ram_0001_t15_table_index
C - - - - - 0x00A4CA 02:A4BA: F0 0E     BEQ bra_A4CA    ; jmp
bra_A4BC:
C - - - - - 0x00A4CC 02:A4BC: A5 00     LDA ram_0000_t42
C - - - - - 0x00A4CE 02:A4BE: C9 20     CMP #$20
C - - - - - 0x00A4D0 02:A4C0: D0 08     BNE bra_A4CA
C - - - - - 0x00A4D2 02:A4C2: A5 16     LDA ram_0016_t04
C - - - - - 0x00A4D4 02:A4C4: F0 04     BEQ bra_A4CA
- - - - - - 0x00A4D6 02:A4C6: A9 01     LDA #$01
- - - - - - 0x00A4D8 02:A4C8: 85 01     STA ram_0001_t15_table_index
bra_A4CA:
C - - - - - 0x00A4DA 02:A4CA: A4 01     LDY ram_0001_t15_table_index
C - - - - - 0x00A4DC 02:A4CC: 60        RTS



tbl_A4CD:
- D 1 - - - 0x00A4DD 02:A4CD: 00        .byte $00, $08   ; 00 
- D 1 - - - 0x00A4DF 02:A4CF: 07        .byte $07, $F2   ; 01 
- D 1 - - - 0x00A4E1 02:A4D1: 07        .byte $07, $06   ; 02 
- D 1 - - - 0x00A4E3 02:A4D3: 00        .byte $00, $F2   ; 03 
- D 1 - - - 0x00A4E5 02:A4D5: F9        .byte $F9, $F2   ; 04 
- D 1 - - - 0x00A4E7 02:A4D7: F9        .byte $F9, $06   ; 05 
- - - - - - 0x00A4E9 02:A4D9: 00        .byte $00, $F8   ; 06 
- D 1 - - - 0x00A4EB 02:A4DB: 00        .byte $00, $0A   ; 07 
- D 1 - - - 0x00A4ED 02:A4DD: 00        .byte $00, $F9   ; 08 
- D 1 - - - 0x00A4EF 02:A4DF: 07        .byte $07, $F9   ; 09 
- D 1 - - - 0x00A4F1 02:A4E1: 07        .byte $07, $0A   ; 0A 
- D 1 - - - 0x00A4F3 02:A4E3: 07        .byte $07, $14   ; 0B 
- D 1 - - - 0x00A4F5 02:A4E5: 00        .byte $00, $14   ; 0C 
- D 1 - - - 0x00A4F7 02:A4E7: F9        .byte $F9, $14   ; 0D 
- D 1 - - - 0x00A4F9 02:A4E9: F9        .byte $F9, $0A   ; 0E 
- D 1 - - - 0x00A4FB 02:A4EB: F9        .byte $F9, $F9   ; 0F 



tbl_A4ED:
- D 1 - - - 0x00A4FD 02:A4ED: 00        .byte $00   ; 00 
- D 1 - - - 0x00A4FE 02:A4EE: 00        .byte $00   ; 01 
- D 1 - - - 0x00A4FF 02:A4EF: 10        .byte $10   ; 02 
- D 1 - - - 0x00A500 02:A4F0: 10        .byte $10   ; 03 
- D 1 - - - 0x00A501 02:A4F1: 10        .byte $10   ; 04 
- D 1 - - - 0x00A502 02:A4F2: 00        .byte $00   ; 05 
- D 1 - - - 0x00A503 02:A4F3: 20        .byte $20   ; 06 
- D 1 - - - 0x00A504 02:A4F4: 20        .byte $20   ; 07 
- D 1 - - - 0x00A505 02:A4F5: 20        .byte $20   ; 08 



tbl_A4F6_bonus:
- - - - - - 0x00A506 02:A4F6: 00        .byte $00   ; 01 normal weapon
- D 1 - - - 0x00A507 02:A4F7: 01        .byte $01   ; 02 special weapon 1
- D 1 - - - 0x00A508 02:A4F8: 02        .byte $02   ; 03 special weapon 2
- D 1 - - - 0x00A509 02:A4F9: 04        .byte $04   ; 04 3 bullers
- D 1 - - - 0x00A50A 02:A4FA: 08        .byte $08   ; 05 invincible jump



tbl_A4FD:
- - - - - - 0x00A50D 02:A4FD: 00        .byte $00   ; 00 
- D 1 - - - 0x00A50E 02:A4FE: 01        .byte $01   ; 01 
- D 1 - - - 0x00A50F 02:A4FF: 03        .byte $03   ; 02 
- D 1 - - - 0x00A510 02:A500: 02        .byte $02   ; 03 
- D 1 - - - 0x00A511 02:A501: 03        .byte $03   ; 04 
- D 1 - - - 0x00A512 02:A502: 01        .byte $01   ; 05 
- D 1 - - - 0x00A513 02:A503: 03        .byte $03   ; 06 
- D 1 - - - 0x00A514 02:A504: 02        .byte $02   ; 07 
- D 1 - - - 0x00A515 02:A505: 03        .byte $03   ; 08 



tbl_A506:
- D 1 - - - 0x00A516 02:A506: 01        .byte $01   ; 00 
- D 1 - - - 0x00A517 02:A507: 00        .byte $00   ; 01 
- - - - - - 0x00A518 02:A508: 00        .byte $00   ; 02 
- - - - - - 0x00A519 02:A509: 00        .byte $00   ; 03 
- - - - - - 0x00A51A 02:A50A: 00        .byte $00   ; 04 
- - - - - - 0x00A51B 02:A50B: 00        .byte $00   ; 05 
- D 1 - - - 0x00A51C 02:A50C: 01        .byte $01   ; 06 
- D 1 - - - 0x00A51D 02:A50D: 01        .byte $01   ; 07 
- D 1 - - - 0x00A51E 02:A50E: 01        .byte $01   ; 08 
- D 1 - - - 0x00A51F 02:A50F: 00        .byte $00   ; 09 



tbl_A510:
- D 1 - - - 0x00A520 02:A510: 00        .byte $00   ; 00 
- D 1 - - - 0x00A521 02:A511: 01        .byte $01   ; 01 
- D 1 - - - 0x00A522 02:A512: 02        .byte $02   ; 02 
- D 1 - - - 0x00A523 02:A513: 03        .byte $03   ; 03 
- - - - - - 0x00A524 02:A514: 04        .byte $04   ; 04 
- D 1 - - - 0x00A525 02:A515: 05        .byte $05   ; 05 
- D 1 - - - 0x00A526 02:A516: 00        .byte $00   ; 06 
- - - - - - 0x00A527 02:A517: 07        .byte $07   ; 07 
- - - - - - 0x00A528 02:A518: 08        .byte $08   ; 08 
- D 1 - - - 0x00A529 02:A519: 09        .byte $09   ; 09 
- - - - - - 0x00A52A 02:A51A: 0A        .byte $0A   ; 0A 



tbl_A51B:
- D 1 - - - 0x00A52B 02:A51B: FF        .byte $FF   ; 00 
- D 1 - - - 0x00A52C 02:A51C: FE        .byte $FE   ; 01 
- - - - - - 0x00A52D 02:A51D: 00        .byte $00   ; 02 
- - - - - - 0x00A52E 02:A51E: 04        .byte $04   ; 03 
- - - - - - 0x00A52F 02:A51F: FF        .byte $FF   ; 04 
- - - - - - 0x00A530 02:A520: 00        .byte $00   ; 05 
- D 1 - - - 0x00A531 02:A521: 00        .byte $00   ; 06 
- D 1 - - - 0x00A532 02:A522: 08        .byte $08   ; 07 
- D 1 - - - 0x00A533 02:A523: 40        .byte $40   ; 08 
- - - - - - 0x00A534 02:A524: 00        .byte $00   ; 09 



tbl_A525:
- - - - - - 0x00A535 02:A525: 00        .byte $00   ; 00 
- D 1 - - - 0x00A536 02:A526: 00        .byte $00   ; 01 
- D 1 - - - 0x00A537 02:A527: 00        .byte $00   ; 02 
- D 1 - - - 0x00A538 02:A528: 04        .byte $04   ; 03 
- - - - - - 0x00A539 02:A529: FF        .byte $FF   ; 04 
- D 1 - - - 0x00A53A 02:A52A: 80        .byte $80   ; 05 
- D 1 - - - 0x00A53B 02:A52B: 20        .byte $20   ; 06 
- - - - - - 0x00A53C 02:A52C: 08        .byte $08   ; 07 
- - - - - - 0x00A53D 02:A52D: 00        .byte $00   ; 08 
- D 1 - - - 0x00A53E 02:A52E: 00        .byte $00   ; 09 
- - - - - - 0x00A53F 02:A52F: 00        .byte $00   ; 0A 



tbl_A530:
- D 1 - - - 0x00A540 02:A530: 1D        .byte $1D   ; 00 
- - - - - - 0x00A541 02:A531: 3A        .byte $3A   ; 01 
- - - - - - 0x00A542 02:A532: 19        .byte $19   ; 02 
- - - - - - 0x00A543 02:A533: 3B        .byte $3B   ; 03 



tbl_A534:
- D 1 - - - 0x00A544 02:A534: 3B        .byte $3B   ; 00 
- D 1 - - - 0x00A545 02:A535: 3C        .byte $3C   ; 01 
- - - - - - 0x00A546 02:A536: 1A        .byte $1A   ; 02 
- - - - - - 0x00A547 02:A537: 3C        .byte $3C   ; 03 



loc_0x00A548:
ofs_006_0x00A548_13:
; con_F3D6_13
C D 1 - - - 0x00A548 02:A538: 8A        TXA
C - - - - - 0x00A549 02:A539: 25 74     AND ram_0074
C - - - - - 0x00A54B 02:A53B: D0 2D     BNE bra_A56A_RTS
C - - - - - 0x00A54D 02:A53D: 20 43 A0  JSR sub_A043_00B1x_AND_0F
C - - - - - 0x00A550 02:A540: A8        TAY
C - - - - - 0x00A551 02:A541: B9 7F 00  LDA ram_player_stats,Y
C - - - - - 0x00A554 02:A544: C9 30     CMP #$30
C - - - - - 0x00A556 02:A546: 90 1B     BCC bra_A563
C - - - - - 0x00A558 02:A548: AD 69 03  LDA ram_0369_counter
C - - - - - 0x00A55B 02:A54B: 0D 6B 03  ORA ram_036B_counter_00_3E
C - - - - - 0x00A55E 02:A54E: D0 03     BNE bra_A553
C - - - - - 0x00A560 02:A550: 4C BE AC  JMP loc_ACBE
bra_A553:
C - - - - - 0x00A563 02:A553: CE 6B 03  DEC ram_036B_counter_00_3E
C - - - - - 0x00A566 02:A556: 10 0B     BPL bra_A563
C - - - - - 0x00A568 02:A558: A9 3E     LDA #$3E
C - - - - - 0x00A56A 02:A55A: 8D 6B 03  STA ram_036B_counter_00_3E
C - - - - - 0x00A56D 02:A55D: CE 69 03  DEC ram_0369_counter
C - - - - - 0x00A570 02:A560: 20 C1 F6  JSR sub_0x01F6D1
bra_A563:
C - - - - - 0x00A573 02:A563: BD C8 07  LDA ram_07C8_unk,X
C - - - - - 0x00A576 02:A566: 29 20     AND #$20
C - - - - - 0x00A578 02:A568: F0 01     BEQ bra_A56B
bra_A56A_RTS:
C - - - - - 0x00A57A 02:A56A: 60        RTS
bra_A56B:
C - - - - - 0x00A57B 02:A56B: 20 78 91  JSR sub_0x009188_stage_AND_01
C - - - - - 0x00A57E 02:A56E: F0 0B     BEQ bra_A57B_side_view
; if upper view
C - - - - - 0x00A580 02:A570: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x00A583 02:A573: C9 09     CMP #$09
C - - - - - 0x00A585 02:A575: 90 0F     BCC bra_A586
C - - - - - 0x00A587 02:A577: C9 CF     CMP #$CF
C - - - - - 0x00A589 02:A579: B0 0B     BCS bra_A586
bra_A57B_side_view:
C - - - - - 0x00A58B 02:A57B: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x00A58E 02:A57E: 29 F8     AND #$F8
C - - - - - 0x00A590 02:A580: F0 04     BEQ bra_A586
C - - - - - 0x00A592 02:A582: C9 F8     CMP #$F8
C - - - - - 0x00A594 02:A584: D0 10     BNE bra_A596
bra_A586:
C - - - - - 0x00A596 02:A586: 20 43 A0  JSR sub_A043_00B1x_AND_0F
C - - - - - 0x00A599 02:A589: A8        TAY
C - - - - - 0x00A59A 02:A58A: B9 7F 00  LDA ram_player_stats,Y
C - - - - - 0x00A59D 02:A58D: 29 F0     AND #$F0
C - - - - - 0x00A59F 02:A58F: C9 30     CMP #$30
C - - - - - 0x00A5A1 02:A591: 90 03     BCC bra_A596
C - - - - - 0x00A5A3 02:A593: 4C BE AC  JMP loc_ACBE
bra_A596:
C - - - - - 0x00A5A6 02:A596: BD 36 07  LDA ram_0736_obj,X
C - - - - - 0x00A5A9 02:A599: 29 FC     AND #$FC
; / 04
C - - - - - 0x00A5AB 02:A59B: 4A        LSR
C - - - - - 0x00A5AC 02:A59C: 4A        LSR
C - - - - - 0x00A5AD 02:A59D: 85 1D     STA ram_001D_t04
C - - - - - 0x00A5AF 02:A59F: BD 4C 07  LDA ram_074C_obj,X
C - - - - - 0x00A5B2 02:A5A2: 29 03     AND #$03
C - - - - - 0x00A5B4 02:A5A4: 4A        LSR
C - - - - - 0x00A5B5 02:A5A5: 6A        ROR
C - - - - - 0x00A5B6 02:A5A6: 6A        ROR
C - - - - - 0x00A5B7 02:A5A7: 05 1D     ORA ram_001D_t04
; bzk optimize, useless STA
C - - - - - 0x00A5B9 02:A5A9: 85 1D     STA ram_001D_t15_useless
C - - - - - 0x00A5BB 02:A5AB: F0 09     BEQ bra_A5B6
C - - - - - 0x00A5BD 02:A5AD: A0 02     LDY #$02
; bzk optimize, useless STY
C - - - - - 0x00A5BF 02:A5AF: 84 1C     STY ram_001C_t22_useless
C - - - - - 0x00A5C1 02:A5B1: 20 8B A8  JSR sub_A88B
C - - - - - 0x00A5C4 02:A5B4: B0 17     BCS bra_A5CD
bra_A5B6:
C - - - - - 0x00A5C6 02:A5B6: 20 0A A6  JSR sub_A60A
C - - - - - 0x00A5C9 02:A5B9: D0 12     BNE bra_A5CD
C - - - - - 0x00A5CB 02:A5BB: BD 62 07  LDA ram_0762_obj,X
C - - - - - 0x00A5CE 02:A5BE: 29 3C     AND #$3C
; / 04
C - - - - - 0x00A5D0 02:A5C0: 4A        LSR
C - - - - - 0x00A5D1 02:A5C1: 4A        LSR
; bzk optimize, useless STA
C - - - - - 0x00A5D2 02:A5C2: 85 1D     STA ram_001D_t16_useless
C - - - - - 0x00A5D4 02:A5C4: F0 07     BEQ bra_A5CD
C - - - - - 0x00A5D6 02:A5C6: A0 12     LDY #$12
; bzk optimize, useless STA
C - - - - - 0x00A5D8 02:A5C8: 85 1C     STA ram_001C_t23_useless
C - - - - - 0x00A5DA 02:A5CA: 20 8B A8  JSR sub_A88B
bra_A5CD:
C - - - - - 0x00A5DD 02:A5CD: A9 00     LDA #$00
C - - - - - 0x00A5DF 02:A5CF: 9D 36 07  STA ram_0736_obj,X
C - - - - - 0x00A5E2 02:A5D2: 9D 4C 07  STA ram_074C_obj,X
C - - - - - 0x00A5E5 02:A5D5: 9D 62 07  STA ram_0762_obj,X
C - - - - - 0x00A5E8 02:A5D8: 20 78 91  JSR sub_0x009188_stage_AND_01
C - - - - - 0x00A5EB 02:A5DB: D0 33     BNE bra_A610    ; if upper view
; if side view
C - - - - - 0x00A5ED 02:A5DD: A5 D0     LDA ram_00D0
C - - - - - 0x00A5EF 02:A5DF: C9 08     CMP #$08
C - - - - - 0x00A5F1 02:A5E1: D0 0E     BNE bra_A5F1
C - - - - - 0x00A5F3 02:A5E3: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x00A5F6 02:A5E6: C9 18     CMP #$18
C - - - - - 0x00A5F8 02:A5E8: B0 07     BCS bra_A5F1
- - - - - - 0x00A5FA 02:A5EA: A9 FF     LDA #$FF
- - - - - - 0x00A5FC 02:A5EC: 9D B4 07  STA ram_07B4_unk,X
- - - - - - 0x00A5FF 02:A5EF: D0 07     BNE bra_A5F8    ; jmp
bra_A5F1:
C - - - - - 0x00A601 02:A5F1: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x00A604 02:A5F4: C9 D0     CMP #$D0
C - - - - - 0x00A606 02:A5F6: 90 18     BCC bra_A610
bra_A5F8:
C - - - - - 0x00A608 02:A5F8: A9 5F     LDA #con_music_5F
C - - - - - 0x00A60A 02:A5FA: 20 CA FE  JSR sub_0x01FEDA_add_music_to_queue
; set invincibility timer after falling into a pit
C - - - - - 0x00A60D 02:A5FD: A9 7F     LDA #$7F
C - - - - - 0x00A60F 02:A5FF: 9D C8 07  STA ram_07C8_unk,X
C - - - - - 0x00A612 02:A602: A9 00     LDA #$00
C - - - - - 0x00A614 02:A604: 9D AA 07  STA ram_07AA_unk,X
C - - - - - 0x00A617 02:A607: 4C 84 AC  JMP loc_AC84



sub_A60A:
C - - - - - 0x00A61A 02:A60A: BD C8 07  LDA ram_07C8_unk,X
C - - - - - 0x00A61D 02:A60D: 29 80     AND #$80
C - - - - - 0x00A61F 02:A60F: 60        RTS



bra_A610:
C - - - - - 0x00A620 02:A610: 20 5A AD  JSR sub_AD5A
C - - - - - 0x00A623 02:A613: 20 78 91  JSR sub_0x009188_stage_AND_01
C - - - - - 0x00A626 02:A616: F0 07     BEQ bra_A61F_side_view
; if upper view
C - - - - - 0x00A628 02:A618: 20 0A A6  JSR sub_A60A
C - - - - - 0x00A62B 02:A61B: F0 1F     BEQ bra_A63C
C - - - - - 0x00A62D 02:A61D: D0 05     BNE bra_A624    ; jmp
bra_A61F_side_view:
C - - - - - 0x00A62F 02:A61F: 20 A4 A1  JSR sub_A1A4
C - - - - - 0x00A632 02:A622: F0 06     BEQ bra_A62A
bra_A624:
C - - - - - 0x00A634 02:A624: 20 42 AB  JSR sub_AB42
C - - - - - 0x00A637 02:A627: 4C 3C A6  JMP loc_A63C
bra_A62A:
C - - - - - 0x00A63A 02:A62A: BD D2 07  LDA ram_07D2_unk,X
C - - - - - 0x00A63D 02:A62D: 29 09     AND #$09
C - - - - - 0x00A63F 02:A62F: D0 0B     BNE bra_A63C
C - - - - - 0x00A641 02:A631: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x00A644 02:A634: 09 60     ORA #$60
C - - - - - 0x00A646 02:A636: 9D AA 07  STA ram_07AA_unk,X
C - - - - - 0x00A649 02:A639: 20 96 A0  JSR sub_A096
bra_A63C:
loc_A63C:
C D 1 - - - 0x00A64C 02:A63C: 20 0A A6  JSR sub_A60A
C - - - - - 0x00A64F 02:A63F: D0 65     BNE bra_A6A6
C - - - - - 0x00A651 02:A641: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x00A654 02:A644: 10 60     BPL bra_A6A6
C - - - - - 0x00A656 02:A646: BD BE 07  LDA ram_07BE_unk,X
C - - - - - 0x00A659 02:A649: F0 1B     BEQ bra_A666
C - - - - - 0x00A65B 02:A64B: C9 08     CMP #$08
C - - - - - 0x00A65D 02:A64D: B0 05     BCS bra_A654
C - - - - - 0x00A65F 02:A64F: FE BE 07  INC ram_07BE_unk,X
C - - - - - 0x00A662 02:A652: D0 57     BNE bra_A6AB
bra_A654:
C - - - - - 0x00A664 02:A654: 20 43 A0  JSR sub_A043_00B1x_AND_0F
C - - - - - 0x00A667 02:A657: D0 52     BNE bra_A6AB
C - - - - - 0x00A669 02:A659: A8        TAY
C - - - - - 0x00A66A 02:A65A: B9 7F 00  LDA ram_player_stats,Y
C - - - - - 0x00A66D 02:A65D: 29 02     AND #$02
C - - - - - 0x00A66F 02:A65F: F0 4A     BEQ bra_A6AB
C - - - - - 0x00A671 02:A661: A9 00     LDA #$00
C - - - - - 0x00A673 02:A663: 9D BE 07  STA ram_07BE_unk,X
bra_A666:
C - - - - - 0x00A676 02:A666: FE BE 07  INC ram_07BE_unk,X
C - - - - - 0x00A679 02:A669: 20 43 A0  JSR sub_A043_00B1x_AND_0F
C - - - - - 0x00A67C 02:A66C: 85 00     STA ram_0000_t79
C - - - - - 0x00A67E 02:A66E: A8        TAY
C - - - - - 0x00A67F 02:A66F: B9 7F 00  LDA ram_player_stats,Y
C - - - - - 0x00A682 02:A672: 29 04     AND #$04
C - - - - - 0x00A684 02:A674: F0 04     BEQ bra_A67A
C - - - - - 0x00A686 02:A676: A9 02     LDA #$02
C - - - - - 0x00A688 02:A678: D0 02     BNE bra_A67C    ; jmp
bra_A67A:
C - - - - - 0x00A68A 02:A67A: A9 01     LDA #$01
bra_A67C:
C - - - - - 0x00A68C 02:A67C: D5 83     CMP ram_bullet_counter,X
C - - - - - 0x00A68E 02:A67E: 90 2B     BCC bra_A6AB
C - - - - - 0x00A690 02:A680: 06 00     ASL ram_0000_t79
C - - - - - 0x00A692 02:A682: 20 43 A0  JSR sub_A043_00B1x_AND_0F
C - - - - - 0x00A695 02:A685: A8        TAY
C - - - - - 0x00A696 02:A686: B9 7F 00  LDA ram_player_stats,Y
C - - - - - 0x00A699 02:A689: A0 00     LDY #$00
C - - - - - 0x00A69B 02:A68B: 29 03     AND #$03
C - - - - - 0x00A69D 02:A68D: F0 0D     BEQ bra_A69C_no_special_weapon
bra_A68F_loop:
C - - - - - 0x00A69F 02:A68F: C8        INY
C - - - - - 0x00A6A0 02:A690: 4A        LSR
C - - - - - 0x00A6A1 02:A691: 90 FC     BCC bra_A68F_loop
C - - - - - 0x00A6A3 02:A693: 88        DEY
C - - - - - 0x00A6A4 02:A694: 98        TYA
C - - - - - 0x00A6A5 02:A695: 18        CLC
C - - - - - 0x00A6A6 02:A696: 65 00     ADC ram_0000_t79
C - - - - - 0x00A6A8 02:A698: A8        TAY
C - - - - - 0x00A6A9 02:A699: B9 3A AB  LDA tbl_AB3A,Y
bra_A69C_no_special_weapon:
C - - - - - 0x00A6AC 02:A69C: A8        TAY
C - - - - - 0x00A6AD 02:A69D: 20 F6 AC  JSR sub_ACF6
C - - - - - 0x00A6B0 02:A6A0: 20 5C 84  JSR sub_0x00846C
C - - - - - 0x00A6B3 02:A6A3: 4C AB A6  JMP loc_A6AB
bra_A6A6:
C - - - - - 0x00A6B6 02:A6A6: A9 00     LDA #$00
C - - - - - 0x00A6B8 02:A6A8: 9D BE 07  STA ram_07BE_unk,X
bra_A6AB:
loc_A6AB:
C D 1 - - - 0x00A6BB 02:A6AB: BD C8 07  LDA ram_07C8_unk,X
C - - - - - 0x00A6BE 02:A6AE: 29 C0     AND #$C0
C - - - - - 0x00A6C0 02:A6B0: F0 15     BEQ bra_A6C7
C - - - - - 0x00A6C2 02:A6B2: 30 13     BMI bra_A6C7
C - - - - - 0x00A6C4 02:A6B4: BD C8 07  LDA ram_07C8_unk,X
C - - - - - 0x00A6C7 02:A6B7: 29 1F     AND #$1F
C - - - - - 0x00A6C9 02:A6B9: C9 1C     CMP #$1C
C - - - - - 0x00A6CB 02:A6BB: B0 09     BCS bra_A6C6_RTS
C - - - - - 0x00A6CD 02:A6BD: A5 23     LDA ram_frm_cnt
C - - - - - 0x00A6CF 02:A6BF: 29 03     AND #$03
C - - - - - 0x00A6D1 02:A6C1: D0 04     BNE bra_A6C7
C - - - - - 0x00A6D3 02:A6C3: 9D 1A 06  STA ram_obj_animation_lo,X
bra_A6C6_RTS:
C - - - - - 0x00A6D6 02:A6C6: 60        RTS
bra_A6C7:
loc_A6C7:
C D 1 - - - 0x00A6D7 02:A6C7: 20 48 A8  JSR sub_A848
C - - - - - 0x00A6DA 02:A6CA: 20 78 91  JSR sub_0x009188_stage_AND_01
C - - - - - 0x00A6DD 02:A6CD: F0 02     BEQ bra_A6D1_side_view
; if upper view
C - - - - - 0x00A6DF 02:A6CF: A9 04     LDA #$04
bra_A6D1_side_view:   ; A = 00
C - - - - - 0x00A6E1 02:A6D1: 85 02     STA ram_0002_t33
ofs_006_0x00A6E3_18:
; con_F3D6_18
C - - - - - 0x00A6E3 02:A6D3: 20 43 A0  JSR sub_A043_00B1x_AND_0F
C - - - - - 0x00A6E6 02:A6D6: 18        CLC
C - - - - - 0x00A6E7 02:A6D7: 65 02     ADC ram_0002_t33
C - - - - - 0x00A6E9 02:A6D9: 0A        ASL
C - - - - - 0x00A6EA 02:A6DA: A8        TAY
C - - - - - 0x00A6EB 02:A6DB: 20 78 91  JSR sub_0x009188_stage_AND_01
C - - - - - 0x00A6EE 02:A6DE: F0 02     BEQ bra_A6E2_side_view
; if upper view
C - - - - - 0x00A6F0 02:A6E0: A9 10     LDA #$10
bra_A6E2_side_view:   ; A = 00
C - - - - - 0x00A6F2 02:A6E2: 85 01     STA ram_0001_t24
C - - - - - 0x00A6F4 02:A6E4: B9 9D A9  LDA tbl_A99D,Y
C - - - - - 0x00A6F7 02:A6E7: 85 02     STA ram_0002_t01_data
C - - - - - 0x00A6F9 02:A6E9: B9 9E A9  LDA tbl_A99D + $01,Y
C - - - - - 0x00A6FC 02:A6EC: 85 03     STA ram_0002_t01_data + $01
C - - - - - 0x00A6FE 02:A6EE: 20 0A A6  JSR sub_A60A
C - - - - - 0x00A701 02:A6F1: D0 0A     BNE bra_A6FD
C - - - - - 0x00A703 02:A6F3: 20 78 91  JSR sub_0x009188_stage_AND_01
C - - - - - 0x00A706 02:A6F6: D0 08     BNE bra_A700    ; if upper view
; if side view
C - - - - - 0x00A708 02:A6F8: 20 A4 A1  JSR sub_A1A4
C - - - - - 0x00A70B 02:A6FB: F0 03     BEQ bra_A700
bra_A6FD:
C - - - - - 0x00A70D 02:A6FD: 4C 7C A7  JMP loc_A77C
bra_A700:
C - - - - - 0x00A710 02:A700: 20 78 91  JSR sub_0x009188_stage_AND_01
C - - - - - 0x00A713 02:A703: D0 34     BNE bra_A739_upper_view
; if side view
C - - - - - 0x00A715 02:A705: BD D2 07  LDA ram_07D2_unk,X
C - - - - - 0x00A718 02:A708: 29 0A     AND #$0A
C - - - - - 0x00A71A 02:A70A: F0 1A     BEQ bra_A726
C - - - - - 0x00A71C 02:A70C: 29 08     AND #$08
C - - - - - 0x00A71E 02:A70E: F0 16     BEQ bra_A726
C - - - - - 0x00A720 02:A710: 20 A2 A0  JSR sub_0x00A0B2_07AAx_AND_0F
C - - - - - 0x00A723 02:A713: F0 02     BEQ bra_A717
C - - - - - 0x00A725 02:A715: A9 01     LDA #$01
bra_A717:   ; A = 00
C - - - - - 0x00A727 02:A717: 85 00     STA ram_0000_t80
C - - - - - 0x00A729 02:A719: 20 43 A0  JSR sub_A043_00B1x_AND_0F
C - - - - - 0x00A72C 02:A71C: 0A        ASL
C - - - - - 0x00A72D 02:A71D: 05 00     ORA ram_0000_t80
C - - - - - 0x00A72F 02:A71F: A8        TAY
C - - - - - 0x00A730 02:A720: B9 40 A8  LDA tbl_A840,Y
C - - - - - 0x00A733 02:A723: 4C B9 A7  JMP loc_A7B9
bra_A726:
C - - - - - 0x00A736 02:A726: 20 A2 A0  JSR sub_0x00A0B2_07AAx_AND_0F
C - - - - - 0x00A739 02:A729: 85 00     STA ram_0000_t81
C - - - - - 0x00A73B 02:A72B: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x00A73E 02:A72E: 29 10     AND #$10
C - - - - - 0x00A740 02:A730: F0 16     BEQ bra_A748
C - - - - - 0x00A742 02:A732: A9 09     LDA #$09
C - - - - - 0x00A744 02:A734: 18        CLC
C - - - - - 0x00A745 02:A735: 65 00     ADC ram_0000_t81
C - - - - - 0x00A747 02:A737: D0 0D     BNE bra_A746
bra_A739_upper_view:
C - - - - - 0x00A749 02:A739: 20 A2 A0  JSR sub_0x00A0B2_07AAx_AND_0F
C - - - - - 0x00A74C 02:A73C: D0 08     BNE bra_A746
C - - - - - 0x00A74E 02:A73E: 20 AA A1  JSR sub_A1AA
C - - - - - 0x00A751 02:A741: 18        CLC
C - - - - - 0x00A752 02:A742: 69 0A     ADC #$0A
C - - - - - 0x00A754 02:A744: A8        TAY
C - - - - - 0x00A755 02:A745: 98        TYA
bra_A746:
C - - - - - 0x00A756 02:A746: 85 00     STA ram_0000_t81
bra_A748:
C - - - - - 0x00A758 02:A748: 20 43 A0  JSR sub_A043_00B1x_AND_0F
C - - - - - 0x00A75B 02:A74B: A8        TAY
; * 04
C - - - - - 0x00A75C 02:A74C: 0A        ASL
C - - - - - 0x00A75D 02:A74D: 0A        ASL
C - - - - - 0x00A75E 02:A74E: 05 01     ORA ram_0001_t24
C - - - - - 0x00A760 02:A750: 85 01     STA ram_0001_t25
C - - - - - 0x00A762 02:A752: B9 7F 00  LDA ram_player_stats,Y
C - - - - - 0x00A765 02:A755: 29 03     AND #$03
C - - - - - 0x00A767 02:A757: 05 01     ORA ram_0001_t25
C - - - - - 0x00A769 02:A759: 29 0F     AND #$0F
C - - - - - 0x00A76B 02:A75B: A8        TAY
C - - - - - 0x00A76C 02:A75C: A9 00     LDA #$00
C - - - - - 0x00A76E 02:A75E: C0 0D     CPY #$0D
C - - - - - 0x00A770 02:A760: 90 02     BCC bra_A764
C - - - - - 0x00A772 02:A762: A9 24     LDA #$24
bra_A764:
C - - - - - 0x00A774 02:A764: 18        CLC
C - - - - - 0x00A775 02:A765: 65 00     ADC ram_0000_t81
C - - - - - 0x00A777 02:A767: 85 00     STA ram_0000_t82_data_index
C - - - - - 0x00A779 02:A769: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x00A77C 02:A76C: 10 07     BPL bra_A775
C - - - - - 0x00A77E 02:A76E: A9 12     LDA #$12
C - - - - - 0x00A780 02:A770: 18        CLC
C - - - - - 0x00A781 02:A771: 65 00     ADC ram_0000_t82_data_index
C - - - - - 0x00A783 02:A773: 85 00     STA ram_0000_t82_data_index
bra_A775:
C - - - - - 0x00A785 02:A775: A4 00     LDY ram_0000_t82_data_index
C - - - - - 0x00A787 02:A777: B1 02     LDA (ram_0002_t01_data),Y
C - - - - - 0x00A789 02:A779: 4C B9 A7  JMP loc_A7B9



loc_A77C:
C D 1 - - - 0x00A78C 02:A77C: 20 43 A0  JSR sub_A043_00B1x_AND_0F
C - - - - - 0x00A78F 02:A77F: A8        TAY
C - - - - - 0x00A790 02:A780: 20 0A A6  JSR sub_A60A
C - - - - - 0x00A793 02:A783: F0 31     BEQ bra_A7B6
C - - - - - 0x00A795 02:A785: 20 78 91  JSR sub_0x009188_stage_AND_01
C - - - - - 0x00A798 02:A788: F0 1D     BEQ bra_A7A7_side_view
; if upper view
C - - - - - 0x00A79A 02:A78A: 84 00     STY ram_0000_t83_table_index
C - - - - - 0x00A79C 02:A78C: BD AA 07  LDA ram_07AA_unk,X
; / 10
C - - - - - 0x00A79F 02:A78F: 4A        LSR
C - - - - - 0x00A7A0 02:A790: 4A        LSR
C - - - - - 0x00A7A1 02:A791: 4A        LSR
C - - - - - 0x00A7A2 02:A792: 4A        LSR
C - - - - - 0x00A7A3 02:A793: A8        TAY
C - - - - - 0x00A7A4 02:A794: B9 23 A8  LDA tbl_A823,Y
C - - - - - 0x00A7A7 02:A797: F0 07     BEQ bra_A7A0
C - - - - - 0x00A7A9 02:A799: A4 00     LDY ram_0000_t83_table_index
C - - - - - 0x00A7AB 02:A79B: B9 38 A8  LDA tbl_A838,Y
C - - - - - 0x00A7AE 02:A79E: D0 19     BNE bra_A7B9    ; jmp
bra_A7A0:
C - - - - - 0x00A7B0 02:A7A0: A4 00     LDY ram_0000_t83_table_index
C - - - - - 0x00A7B2 02:A7A2: B9 30 A8  LDA tbl_A830,Y
C - - - - - 0x00A7B5 02:A7A5: D0 12     BNE bra_A7B9    ; jmp
bra_A7A7_side_view:
C - - - - - 0x00A7B7 02:A7A7: 20 A8 A0  JSR sub_A0A8
C - - - - - 0x00A7BA 02:A7AA: 90 05     BCC bra_A7B1
C - - - - - 0x00A7BC 02:A7AC: B9 3C A8  LDA tbl_A83C,Y
C - - - - - 0x00A7BF 02:A7AF: D0 08     BNE bra_A7B9    ; jmp
bra_A7B1:
C - - - - - 0x00A7C1 02:A7B1: B9 34 A8  LDA tbl_A834,Y
C - - - - - 0x00A7C4 02:A7B4: D0 03     BNE bra_A7B9    ; jmp
bra_A7B6:
C - - - - - 0x00A7C6 02:A7B6: B9 2C A8  LDA tbl_A82C,Y
bra_A7B9:
loc_A7B9:
sub_A7B9:
C D 1 - - - 0x00A7C9 02:A7B9: DD 0A 07  CMP ram_070A_obj,X
C - - - - - 0x00A7CC 02:A7BC: F0 29     BEQ bra_A7E7
C - - - - - 0x00A7CE 02:A7BE: 48        PHA
C - - - - - 0x00A7CF 02:A7BF: BD 34 06  LDA ram_obj_animation_hi,X
C - - - - - 0x00A7D2 02:A7C2: 29 3C     AND #$3C
; / 04
C - - - - - 0x00A7D4 02:A7C4: 4A        LSR
C - - - - - 0x00A7D5 02:A7C5: 4A        LSR
C - - - - - 0x00A7D6 02:A7C6: A8        TAY
C - - - - - 0x00A7D7 02:A7C7: 68        PLA
C - - - - - 0x00A7D8 02:A7C8: 20 62 97  JSR sub_0x009772
C - - - - - 0x00A7DB 02:A7CB: 20 78 91  JSR sub_0x009188_stage_AND_01
C - - - - - 0x00A7DE 02:A7CE: D0 0E     BNE bra_A7DE    ; if upper view
; if side view
C - - - - - 0x00A7E0 02:A7D0: 20 A4 A1  JSR sub_A1A4
C - - - - - 0x00A7E3 02:A7D3: D0 09     BNE bra_A7DE
C - - - - - 0x00A7E5 02:A7D5: 20 A8 A0  JSR sub_A0A8
C - - - - - 0x00A7E8 02:A7D8: D0 08     BNE bra_A7E2
C - - - - - 0x00A7EA 02:A7DA: A9 0C     LDA #$0C
C - - - - - 0x00A7EC 02:A7DC: D0 06     BNE bra_A7E4    ; jmp
bra_A7DE:
C - - - - - 0x00A7EE 02:A7DE: A9 06     LDA #$06
C - - - - - 0x00A7F0 02:A7E0: D0 02     BNE bra_A7E4    ; jmp
bra_A7E2:
C - - - - - 0x00A7F2 02:A7E2: A9 13     LDA #$13
bra_A7E4:
C - - - - - 0x00A7F4 02:A7E4: 9D 20 07  STA ram_0720_obj,X
bra_A7E7:
C - - - - - 0x00A7F7 02:A7E7: 20 78 91  JSR sub_0x009188_stage_AND_01
C - - - - - 0x00A7FA 02:A7EA: D0 36     BNE bra_A822_RTS    ; if upper view
; if side view
C - - - - - 0x00A7FC 02:A7EC: BD D2 07  LDA ram_07D2_unk,X
C - - - - - 0x00A7FF 02:A7EF: 29 09     AND #$09
C - - - - - 0x00A801 02:A7F1: F0 2F     BEQ bra_A822_RTS
C - - - - - 0x00A803 02:A7F3: 29 08     AND #$08
C - - - - - 0x00A805 02:A7F5: D0 2B     BNE bra_A822_RTS
C - - - - - 0x00A807 02:A7F7: 20 A8 A0  JSR sub_A0A8
C - - - - - 0x00A80A 02:A7FA: D0 15     BNE bra_A811
C - - - - - 0x00A80C 02:A7FC: A5 3C     LDA ram_003C_t03
C - - - - - 0x00A80E 02:A7FE: 29 4F     AND #$4F
C - - - - - 0x00A810 02:A800: C9 05     CMP #$05
C - - - - - 0x00A812 02:A802: F0 1E     BEQ bra_A822_RTS
C - - - - - 0x00A814 02:A804: 20 A4 A1  JSR sub_A1A4
C - - - - - 0x00A817 02:A807: D0 19     BNE bra_A822_RTS
C - - - - - 0x00A819 02:A809: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x00A81C 02:A80C: 18        CLC
C - - - - - 0x00A81D 02:A80D: 69 04     ADC #$04
C - - - - - 0x00A81F 02:A80F: D0 0E     BNE bra_A81F
bra_A811:
; bzk bug? value can be from ram_003C_t04
C - - - - - 0x00A821 02:A811: A5 3C     LDA ram_003C_t03
C - - - - - 0x00A823 02:A813: 29 0F     AND #$0F
C - - - - - 0x00A825 02:A815: C9 05     CMP #$05
C - - - - - 0x00A827 02:A817: D0 09     BNE bra_A822_RTS
C - - - - - 0x00A829 02:A819: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x00A82C 02:A81C: 38        SEC
C - - - - - 0x00A82D 02:A81D: E9 04     SBC #$04
bra_A81F:
C - - - - - 0x00A82F 02:A81F: 9D 68 06  STA ram_obj_pos_Y,X
bra_A822_RTS:
C - - - - - 0x00A832 02:A822: 60        RTS



tbl_A823:
- D 1 - - - 0x00A833 02:A823: 01        .byte $01   ; 00 
- D 1 - - - 0x00A834 02:A824: 01        .byte $01   ; 10 
- D 1 - - - 0x00A835 02:A825: 01        .byte $01   ; 20 
- - - - - - 0x00A836 02:A826: 01        .byte $01   ; 30 
- D 1 - - - 0x00A837 02:A827: 00        .byte $00   ; 40 
- - - - - - 0x00A838 02:A828: 00        .byte $00   ; 50 
- D 1 - - - 0x00A839 02:A829: 00        .byte $00   ; 60 
- - - - - - 0x00A83A 02:A82A: 00        .byte $00   ; 70 
- - - - - - 0x00A83B 02:A82B: 01        .byte $01   ; 80 



tbl_A82C:
- D 1 - - - 0x00A83C 02:A82C: 17        .byte $17   ; 00 
- D 1 - - - 0x00A83D 02:A82D: 2E        .byte $2E   ; 01 
- D 1 - - - 0x00A83E 02:A82E: 45        .byte $45   ; 02 
- D 1 - - - 0x00A83F 02:A82F: 62        .byte $62   ; 03 



tbl_A830:
- - - - - - 0x00A840 02:A830: 1B        .byte $1B   ; 00 
- D 1 - - - 0x00A841 02:A831: 38        .byte $38   ; 01 
- - - - - - 0x00A842 02:A832: 1D        .byte $1D   ; 02 
- D 1 - - - 0x00A843 02:A833: 39        .byte $39   ; 03 



tbl_A834:
- - - - - - 0x00A844 02:A834: 1A        .byte $1A   ; 00 
- D 1 - - - 0x00A845 02:A835: 31        .byte $31   ; 01 
- - - - - - 0x00A846 02:A836: 4A        .byte $4A   ; 02 
- - - - - - 0x00A847 02:A837: 67        .byte $67   ; 03 



tbl_A838:
- - - - - - 0x00A848 02:A838: 19        .byte $19   ; 00 
- D 1 - - - 0x00A849 02:A839: 36        .byte $36   ; 01 
- - - - - - 0x00A84A 02:A83A: 1B        .byte $1B   ; 02 
- - - - - - 0x00A84B 02:A83B: 37        .byte $37   ; 03 



tbl_A83C:
- D 1 - - - 0x00A84C 02:A83C: 18        .byte $18   ; 00 
- - - - - - 0x00A84D 02:A83D: 2F        .byte $2F   ; 01 
- D 1 - - - 0x00A84E 02:A83E: 48        .byte $48   ; 02 
- D 1 - - - 0x00A84F 02:A83F: 65        .byte $65   ; 03 



tbl_A840:
; 00 
- - - - - - 0x00A850 02:A840: 1D        .byte $1D   ; 00 
- - - - - - 0x00A851 02:A841: 1C        .byte $1C   ; 01 
; 01 
- D 1 - - - 0x00A852 02:A842: 34        .byte $34   ; 00 
- D 1 - - - 0x00A853 02:A843: 33        .byte $33   ; 01 
; 02 
- D 1 - - - 0x00A854 02:A844: 47        .byte $47   ; 00 
- D 1 - - - 0x00A855 02:A845: 46        .byte $46   ; 01 
; 03 
- - - - - - 0x00A856 02:A846: 64        .byte $64   ; 00 
- - - - - - 0x00A857 02:A847: 63        .byte $63   ; 01 



sub_A848:
C - - - - - 0x00A858 02:A848: BD 34 06  LDA ram_obj_animation_hi,X
C - - - - - 0x00A85B 02:A84B: 29 80     AND #$80
C - - - - - 0x00A85D 02:A84D: 9D 34 06  STA ram_obj_animation_hi,X
C - - - - - 0x00A860 02:A850: 20 78 91  JSR sub_0x009188_stage_AND_01
C - - - - - 0x00A863 02:A853: F0 0F     BEQ bra_A864_side_view
; if upper view
C - - - - - 0x00A865 02:A855: B5 B1     LDA ram_current_player,X
C - - - - - 0x00A867 02:A857: 29 02     AND #$02
C - - - - - 0x00A869 02:A859: 18        CLC
C - - - - - 0x00A86A 02:A85A: 69 02     ADC #$02
C - - - - - 0x00A86C 02:A85C: 0A        ASL
C - - - - - 0x00A86D 02:A85D: 1D 34 06  ORA ram_obj_animation_hi,X
C - - - - - 0x00A870 02:A860: 9D 34 06  STA ram_obj_animation_hi,X
C - - - - - 0x00A873 02:A863: 60        RTS
bra_A864_side_view:
C - - - - - 0x00A874 02:A864: A9 00     LDA #$00
C - - - - - 0x00A876 02:A866: 9D 54 03  STA ram_0354,X
C - - - - - 0x00A879 02:A869: 20 43 A0  JSR sub_A043_00B1x_AND_0F
C - - - - - 0x00A87C 02:A86C: A8        TAY
C - - - - - 0x00A87D 02:A86D: B9 7F 00  LDA ram_player_stats,Y
C - - - - - 0x00A880 02:A870: 29 08     AND #$08
C - - - - - 0x00A882 02:A872: F0 16     BEQ bra_A88A_RTS
C - - - - - 0x00A884 02:A874: 20 A4 A1  JSR sub_A1A4
C - - - - - 0x00A887 02:A877: F0 11     BEQ bra_A88A_RTS
C - - - - - 0x00A889 02:A879: FE 54 03  INC ram_0354,X
C - - - - - 0x00A88C 02:A87C: A5 23     LDA ram_frm_cnt
C - - - - - 0x00A88E 02:A87E: 29 07     AND #$07
C - - - - - 0x00A890 02:A880: F0 08     BEQ bra_A88A_RTS
C - - - - - 0x00A892 02:A882: BD 34 06  LDA ram_obj_animation_hi,X
C - - - - - 0x00A895 02:A885: 09 03     ORA #$03
C - - - - - 0x00A897 02:A887: 9D 34 06  STA ram_obj_animation_hi,X
bra_A88A_RTS:
C - - - - - 0x00A89A 02:A88A: 60        RTS



sub_A88B:
; in
    ; A = 
    ; Y = 
loc_A88B_loop:
bra_A88B_loop:
C D 1 - - - 0x00A89B 02:A88B: 4A        LSR
C - - - - - 0x00A89C 02:A88C: B0 03     BCS bra_A891
C - - - - - 0x00A89E 02:A88E: C8        INY
C - - - - - 0x00A89F 02:A88F: D0 FA     BNE bra_A88B_loop    ; jmp
bra_A891:
C - - - - - 0x00A8A1 02:A891: 85 1D     STA ram_001D_t05
C - - - - - 0x00A8A3 02:A893: 84 18     STY ram_0018_t09_object_index
C - - - - - 0x00A8A5 02:A895: 84 1C     STY ram_001C_t07
C - - - - - 0x00A8A7 02:A897: 20 E7 F8  JSR sub_0x01F8F7
C - - - - - 0x00A8AA 02:A89A: 20 78 91  JSR sub_0x009188_stage_AND_01
C - - - - - 0x00A8AD 02:A89D: D0 1B     BNE bra_A8BA    ; if upper view
; if side view
C - - - - - 0x00A8AF 02:A89F: 20 43 A0  JSR sub_A043_00B1x_AND_0F
C - - - - - 0x00A8B2 02:A8A2: A8        TAY
C - - - - - 0x00A8B3 02:A8A3: B9 7F 00  LDA ram_player_stats,Y
C - - - - - 0x00A8B6 02:A8A6: 29 08     AND #$08
C - - - - - 0x00A8B8 02:A8A8: F0 10     BEQ bra_A8BA
C - - - - - 0x00A8BA 02:A8AA: 20 A4 A1  JSR sub_A1A4
C - - - - - 0x00A8BD 02:A8AD: F0 0B     BEQ bra_A8BA
C - - - - - 0x00A8BF 02:A8AF: A4 1C     LDY ram_001C_t07
C - - - - - 0x00A8C1 02:A8B1: B9 82 07  LDA ram_0782_unk,Y
C - - - - - 0x00A8C4 02:A8B4: 4C CD A8  JMP loc_A8CD
bra_A8B7:
C - - - - - 0x00A8C7 02:A8B7: 4C 57 A9  JMP loc_A957
bra_A8BA:
C - - - - - 0x00A8CA 02:A8BA: A4 1C     LDY ram_001C_t07
C - - - - - 0x00A8CC 02:A8BC: C0 0A     CPY #$0A
C - - - - - 0x00A8CE 02:A8BE: B0 F7     BCS bra_A8B7
C - - - - - 0x00A8D0 02:A8C0: 20 0A A6  JSR sub_A60A
C - - - - - 0x00A8D3 02:A8C3: D0 08     BNE bra_A8CD
C - - - - - 0x00A8D5 02:A8C5: 8C A2 03  STY ram_03A2
C - - - - - 0x00A8D8 02:A8C8: B9 82 07  LDA ram_0782_unk,Y
C - - - - - 0x00A8DB 02:A8CB: 10 7E     BPL bra_A94B
bra_A8CD:
loc_A8CD:
C D 1 - - - 0x00A8DD 02:A8CD: 29 7F     AND #$7F
C - - - - - 0x00A8DF 02:A8CF: C9 19     CMP #$19
C - - - - - 0x00A8E1 02:A8D1: F0 44     BEQ bra_A917
C - - - - - 0x00A8E3 02:A8D3: C9 01     CMP #$01
C - - - - - 0x00A8E5 02:A8D5: F0 1A     BEQ bra_A8F1
C - - - - - 0x00A8E7 02:A8D7: C9 32     CMP #$32
C - - - - - 0x00A8E9 02:A8D9: D0 2F     BNE bra_A90A
C - - - - - 0x00A8EB 02:A8DB: BD C8 07  LDA ram_07C8_unk,X
C - - - - - 0x00A8EE 02:A8DE: D0 2A     BNE bra_A90A
C - - - - - 0x00A8F0 02:A8E0: B9 20 07  LDA ram_0720_obj,Y
C - - - - - 0x00A8F3 02:A8E3: C9 05     CMP #$05
C - - - - - 0x00A8F5 02:A8E5: D0 06     BNE bra_A8ED
C - - - - - 0x00A8F7 02:A8E7: A5 00     LDA ram_0000_t84
C - - - - - 0x00A8F9 02:A8E9: C9 02     CMP #$02
C - - - - - 0x00A8FB 02:A8EB: F0 6A     BEQ bra_A957
bra_A8ED:
C - - - - - 0x00A8FD 02:A8ED: A9 20     LDA #$20
C - - - - - 0x00A8FF 02:A8EF: D0 02     BNE bra_A8F3    ; jmp
bra_A8F1:
C - - - - - 0x00A901 02:A8F1: A9 0F     LDA #$0F
bra_A8F3:
C - - - - - 0x00A903 02:A8F3: 85 01     STA ram_0001_t16
C - - - - - 0x00A905 02:A8F5: A5 00     LDA ram_0000_t84
C - - - - - 0x00A907 02:A8F7: C9 04     CMP #$04
C - - - - - 0x00A909 02:A8F9: D0 0F     BNE bra_A90A
C - - - - - 0x00A90B 02:A8FB: B9 4E 06  LDA ram_obj_pos_X,Y
C - - - - - 0x00A90E 02:A8FE: 38        SEC
C - - - - - 0x00A90F 02:A8FF: FD 4E 06  SBC ram_obj_pos_X,X
C - - - - - 0x00A912 02:A902: B0 02     BCS bra_A906
C - - - - - 0x00A914 02:A904: 49 FF     EOR #$FF
bra_A906:
C - - - - - 0x00A916 02:A906: C5 01     CMP ram_0001_t16
C - - - - - 0x00A918 02:A908: 90 4D     BCC bra_A957
bra_A90A:
C - - - - - 0x00A91A 02:A90A: A4 00     LDY ram_0000_t84
C - - - - - 0x00A91C 02:A90C: 20 78 91  JSR sub_0x009188_stage_AND_01
C - - - - - 0x00A91F 02:A90F: F0 0A     BEQ bra_A91B_side_view
; if upper view
C - - - - - 0x00A921 02:A911: B9 15 AB  LDA tbl_AB15,Y
C - - - - - 0x00A924 02:A914: 4C 3A A9  JMP loc_A93A
bra_A917:
C - - - - - 0x00A927 02:A917: A9 08     LDA #$08
C - - - - - 0x00A929 02:A919: D0 1F     BNE bra_A93A    ; jmp
bra_A91B_side_view:
C - - - - - 0x00A92B 02:A91B: B9 1D AB  LDA tbl_AB1D,Y
C - - - - - 0x00A92E 02:A91E: C9 22     CMP #$22
C - - - - - 0x00A930 02:A920: D0 18     BNE bra_A93A
C - - - - - 0x00A932 02:A922: 85 08     STA ram_0008_t05
C - - - - - 0x00A934 02:A924: A9 25     LDA #con_F3D6_25
C - - - - - 0x00A936 02:A926: 20 B3 F3  JSR sub_0x01F3C3_execute_script
C - - - - - 0x00A939 02:A929: 20 A2 A0  JSR sub_0x00A0B2_07AAx_AND_0F
C - - - - - 0x00A93C 02:A92C: A8        TAY
C - - - - - 0x00A93D 02:A92D: B9 25 AB  LDA tbl_AB25,Y
C - - - - - 0x00A940 02:A930: C5 00     CMP ram_0000_t84
C - - - - - 0x00A942 02:A932: F0 04     BEQ bra_A938
C - - - - - 0x00A944 02:A934: A9 00     LDA #$00
C - - - - - 0x00A946 02:A936: F0 02     BEQ bra_A93A    ; jmp
bra_A938:
C - - - - - 0x00A948 02:A938: A5 08     LDA ram_0008_t05
bra_A93A:
loc_A93A:
C D 1 - - - 0x00A94A 02:A93A: 20 9D A1  JSR sub_A19D
C - - - - - 0x00A94D 02:A93D: A5 1D     LDA ram_001D_t05
C - - - - - 0x00A94F 02:A93F: F0 08     BEQ bra_A949
C - - - - - 0x00A951 02:A941: A4 1C     LDY ram_001C_t07
C - - - - - 0x00A953 02:A943: C8        INY
C - - - - - 0x00A954 02:A944: F0 03     BEQ bra_A949
C - - - - - 0x00A956 02:A946: 4C 8B A8  JMP loc_A88B_loop
bra_A949:
C - - - - - 0x00A959 02:A949: 18        CLC
C - - - - - 0x00A95A 02:A94A: 60        RTS
bra_A94B:
C - - - - - 0x00A95B 02:A94B: C9 15     CMP #$15
C - - - - - 0x00A95D 02:A94D: D0 08     BNE bra_A957
- - - - - - 0x00A95F 02:A94F: A5 00     LDA ram_0000_t84
- - - - - - 0x00A961 02:A951: F0 F6     BEQ bra_A949
- - - - - - 0x00A963 02:A953: C9 05     CMP #$05
- - - - - - 0x00A965 02:A955: B0 F2     BCS bra_A949
bra_A957:
loc_A957:
sub_A957:
C D 1 - - - 0x00A967 02:A957: 20 43 A0  JSR sub_A043_00B1x_AND_0F
C - - - - - 0x00A96A 02:A95A: A8        TAY
C - - - - - 0x00A96B 02:A95B: B9 7F 00  LDA ram_player_stats,Y
C - - - - - 0x00A96E 02:A95E: C9 30     CMP #$30
C - - - - - 0x00A970 02:A960: 90 01     BCC bra_A963
C - - - - - 0x00A972 02:A962: 60        RTS
bra_A963:
C - - - - - 0x00A973 02:A963: BD C8 07  LDA ram_07C8_unk,X
C - - - - - 0x00A976 02:A966: F0 01     BEQ bra_A969
C - - - - - 0x00A978 02:A968: 60        RTS
bra_A969:
C - - - - - 0x00A979 02:A969: 20 78 91  JSR sub_0x009188_stage_AND_01
C - - - - - 0x00A97C 02:A96C: D0 27     BNE bra_A995_upper_view
; if side view
C - - - - - 0x00A97E 02:A96E: A0 03     LDY #$03
C - - - - - 0x00A980 02:A970: A5 00     LDA ram_0000_t84
C - - - - - 0x00A982 02:A972: C9 04     CMP #$04
C - - - - - 0x00A984 02:A974: 90 02     BCC bra_A978
C - - - - - 0x00A986 02:A976: A0 07     LDY #$07
bra_A978:
C - - - - - 0x00A988 02:A978: 98        TYA
C - - - - - 0x00A989 02:A979: 09 60     ORA #$60
loc_A97B:
C D 1 - - - 0x00A98B 02:A97B: 9D AA 07  STA ram_07AA_unk,X
C - - - - - 0x00A98E 02:A97E: BD D2 07  LDA ram_07D2_unk,X
C - - - - - 0x00A991 02:A981: 29 F7     AND #$F7
C - - - - - 0x00A993 02:A983: 9D D2 07  STA ram_07D2_unk,X
C - - - - - 0x00A996 02:A986: 20 92 A0  JSR sub_A092
; player was killed with a bullet, enemy or object
C - - - - - 0x00A999 02:A989: A9 80     LDA #$80
C - - - - - 0x00A99B 02:A98B: 9D C8 07  STA ram_07C8_unk,X
C - - - - - 0x00A99E 02:A98E: A9 5D     LDA #con_music_5D
C - - - - - 0x00A9A0 02:A990: 20 CA FE  JSR sub_0x01FEDA_add_music_to_queue
C - - - - - 0x00A9A3 02:A993: 38        SEC
C - - - - - 0x00A9A4 02:A994: 60        RTS
bra_A995_upper_view:
C - - - - - 0x00A9A5 02:A995: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x00A9A8 02:A998: 29 F0     AND #$F0
C - - - - - 0x00A9AA 02:A99A: 4C 7B A9  JMP loc_A97B



tbl_A99D:
- D 1 - - - 0x00A9AD 02:A99D: AD A9     .word _off020_A9AD_00
- D 1 - - - 0x00A9AF 02:A99F: D1 A9     .word _off020_A9D1_01
- D 1 - - - 0x00A9B1 02:A9A1: F5 A9     .word _off020_A9F5_02
- D 1 - - - 0x00A9B3 02:A9A3: 19 AA     .word _off020_AA19_03
- D 1 - - - 0x00A9B5 02:A9A5: 61 AA     .word _off020_AA61_04
- D 1 - - - 0x00A9B7 02:A9A7: 85 AA     .word _off020_AA85_05
- D 1 - - - 0x00A9B9 02:A9A9: A9 AA     .word _off020_AAA9_06
- D 1 - - - 0x00A9BB 02:A9AB: CD AA     .word _off020_AACD_07



_off020_A9AD_00:
- D 1 - I - 0x00A9BD 02:A9AD: 0D        .byte $0D   ; 
- D 1 - I - 0x00A9BE 02:A9AE: 08        .byte $08   ; 
- D 1 - I - 0x00A9BF 02:A9AF: 03        .byte $03   ; 
- D 1 - I - 0x00A9C0 02:A9B0: 01        .byte $01   ; 
- D 1 - I - 0x00A9C1 02:A9B1: 01        .byte $01   ; 
- D 1 - I - 0x00A9C2 02:A9B2: 11        .byte $11   ; 
- - - - - - 0x00A9C3 02:A9B3: 02        .byte $02   ; 
- - - - - - 0x00A9C4 02:A9B4: 02        .byte $02   ; 
- - - - - - 0x00A9C5 02:A9B5: 04        .byte $04   ; 
- D 1 - I - 0x00A9C6 02:A9B6: 0E        .byte $0E   ; 
- D 1 - I - 0x00A9C7 02:A9B7: 0A        .byte $0A   ; 
- - - - - - 0x00A9C8 02:A9B8: 03        .byte $03   ; 
- - - - - - 0x00A9C9 02:A9B9: 01        .byte $01   ; 
- - - - - - 0x00A9CA 02:A9BA: 01        .byte $01   ; 
- D 1 - I - 0x00A9CB 02:A9BB: 12        .byte $12   ; 
- - - - - - 0x00A9CC 02:A9BC: 02        .byte $02   ; 
- D 1 - I - 0x00A9CD 02:A9BD: 02        .byte $02   ; 
- - - - - - 0x00A9CE 02:A9BE: 04        .byte $04   ; 
- D 1 - I - 0x00A9CF 02:A9BF: 0B        .byte $0B   ; 
- D 1 - I - 0x00A9D0 02:A9C0: 07        .byte $07   ; 
- D 1 - I - 0x00A9D1 02:A9C1: 03        .byte $03   ; 
- D 1 - I - 0x00A9D2 02:A9C2: 01        .byte $01   ; 
- D 1 - I - 0x00A9D3 02:A9C3: 01        .byte $01   ; 
- D 1 - I - 0x00A9D4 02:A9C4: 0F        .byte $0F   ; 
- - - - - - 0x00A9D5 02:A9C5: 02        .byte $02   ; 
- - - - - - 0x00A9D6 02:A9C6: 02        .byte $02   ; 
- - - - - - 0x00A9D7 02:A9C7: 04        .byte $04   ; 
- D 1 - I - 0x00A9D8 02:A9C8: 0C        .byte $0C   ; 
- D 1 - I - 0x00A9D9 02:A9C9: 09        .byte $09   ; 
- - - - - - 0x00A9DA 02:A9CA: 03        .byte $03   ; 
- - - - - - 0x00A9DB 02:A9CB: 01        .byte $01   ; 
- - - - - - 0x00A9DC 02:A9CC: 01        .byte $01   ; 
- D 1 - I - 0x00A9DD 02:A9CD: 10        .byte $10   ; 
- D 1 - I - 0x00A9DE 02:A9CE: 02        .byte $02   ; 
- D 1 - I - 0x00A9DF 02:A9CF: 02        .byte $02   ; 
- D 1 - I - 0x00A9E0 02:A9D0: 04        .byte $04   ; 



_off020_A9D1_01:
- D 1 - I - 0x00A9E1 02:A9D1: 28        .byte $28   ; 
- D 1 - I - 0x00A9E2 02:A9D2: 24        .byte $24   ; 
- D 1 - I - 0x00A9E3 02:A9D3: 20        .byte $20   ; 
- D 1 - I - 0x00A9E4 02:A9D4: 1E        .byte $1E   ; 
- D 1 - I - 0x00A9E5 02:A9D5: 1E        .byte $1E   ; 
- D 1 - I - 0x00A9E6 02:A9D6: 2C        .byte $2C   ; 
- - - - - - 0x00A9E7 02:A9D7: 1F        .byte $1F   ; 
- - - - - - 0x00A9E8 02:A9D8: 1F        .byte $1F   ; 
- - - - - - 0x00A9E9 02:A9D9: 21        .byte $21   ; 
- D 1 - I - 0x00A9EA 02:A9DA: 29        .byte $29   ; 
- D 1 - I - 0x00A9EB 02:A9DB: 25        .byte $25   ; 
- - - - - - 0x00A9EC 02:A9DC: 20        .byte $20   ; 
- - - - - - 0x00A9ED 02:A9DD: 1E        .byte $1E   ; 
- - - - - - 0x00A9EE 02:A9DE: 1E        .byte $1E   ; 
- D 1 - I - 0x00A9EF 02:A9DF: 2D        .byte $2D   ; 
- D 1 - I - 0x00A9F0 02:A9E0: 1F        .byte $1F   ; 
- D 1 - I - 0x00A9F1 02:A9E1: 1F        .byte $1F   ; 
- D 1 - I - 0x00A9F2 02:A9E2: 21        .byte $21   ; 
- D 1 - I - 0x00A9F3 02:A9E3: 26        .byte $26   ; 
- D 1 - I - 0x00A9F4 02:A9E4: 22        .byte $22   ; 
- D 1 - I - 0x00A9F5 02:A9E5: 20        .byte $20   ; 
- D 1 - I - 0x00A9F6 02:A9E6: 1E        .byte $1E   ; 
- D 1 - I - 0x00A9F7 02:A9E7: 1E        .byte $1E   ; 
- D 1 - I - 0x00A9F8 02:A9E8: 2A        .byte $2A   ; 
- - - - - - 0x00A9F9 02:A9E9: 1F        .byte $1F   ; 
- - - - - - 0x00A9FA 02:A9EA: 1F        .byte $1F   ; 
- - - - - - 0x00A9FB 02:A9EB: 21        .byte $21   ; 
- D 1 - I - 0x00A9FC 02:A9EC: 27        .byte $27   ; 
- D 1 - I - 0x00A9FD 02:A9ED: 23        .byte $23   ; 
- - - - - - 0x00A9FE 02:A9EE: 20        .byte $20   ; 
- - - - - - 0x00A9FF 02:A9EF: 1E        .byte $1E   ; 
- - - - - - 0x00AA00 02:A9F0: 1E        .byte $1E   ; 
- D 1 - I - 0x00AA01 02:A9F1: 2B        .byte $2B   ; 
- D 1 - I - 0x00AA02 02:A9F2: 1F        .byte $1F   ; 
- D 1 - I - 0x00AA03 02:A9F3: 1F        .byte $1F   ; 
- D 1 - I - 0x00AA04 02:A9F4: 21        .byte $21   ; 



_off020_A9F5_02:
- D 1 - I - 0x00AA05 02:A9F5: 3D        .byte $3D   ; 
- D 1 - I - 0x00AA06 02:A9F6: 39        .byte $39   ; 
- D 1 - I - 0x00AA07 02:A9F7: 37        .byte $37   ; 
- D 1 - I - 0x00AA08 02:A9F8: 35        .byte $35   ; 
- D 1 - I - 0x00AA09 02:A9F9: 35        .byte $35   ; 
- D 1 - I - 0x00AA0A 02:A9FA: 43        .byte $43   ; 
- - - - - - 0x00AA0B 02:A9FB: 36        .byte $36   ; 
- - - - - - 0x00AA0C 02:A9FC: 36        .byte $36   ; 
- - - - - - 0x00AA0D 02:A9FD: 38        .byte $38   ; 
- D 1 - I - 0x00AA0E 02:A9FE: 3F        .byte $3F   ; 
- D 1 - I - 0x00AA0F 02:A9FF: 3B        .byte $3B   ; 
- - - - - - 0x00AA10 02:AA00: 37        .byte $37   ; 
- - - - - - 0x00AA11 02:AA01: 35        .byte $35   ; 
- - - - - - 0x00AA12 02:AA02: 35        .byte $35   ; 
- D 1 - I - 0x00AA13 02:AA03: 41        .byte $41   ; 
- D 1 - I - 0x00AA14 02:AA04: 36        .byte $36   ; 
- D 1 - I - 0x00AA15 02:AA05: 36        .byte $36   ; 
- D 1 - I - 0x00AA16 02:AA06: 38        .byte $38   ; 
- D 1 - I - 0x00AA17 02:AA07: 3E        .byte $3E   ; 
- D 1 - I - 0x00AA18 02:AA08: 3A        .byte $3A   ; 
- D 1 - I - 0x00AA19 02:AA09: 37        .byte $37   ; 
- D 1 - I - 0x00AA1A 02:AA0A: 35        .byte $35   ; 
- D 1 - I - 0x00AA1B 02:AA0B: 35        .byte $35   ; 
- D 1 - I - 0x00AA1C 02:AA0C: 44        .byte $44   ; 
- - - - - - 0x00AA1D 02:AA0D: 36        .byte $36   ; 
- - - - - - 0x00AA1E 02:AA0E: 36        .byte $36   ; 
- - - - - - 0x00AA1F 02:AA0F: 38        .byte $38   ; 
- D 1 - I - 0x00AA20 02:AA10: 40        .byte $40   ; 
- D 1 - I - 0x00AA21 02:AA11: 3C        .byte $3C   ; 
- - - - - - 0x00AA22 02:AA12: 37        .byte $37   ; 
- - - - - - 0x00AA23 02:AA13: 35        .byte $35   ; 
- - - - - - 0x00AA24 02:AA14: 35        .byte $35   ; 
- D 1 - I - 0x00AA25 02:AA15: 42        .byte $42   ; 
- D 1 - I - 0x00AA26 02:AA16: 36        .byte $36   ; 
- D 1 - I - 0x00AA27 02:AA17: 36        .byte $36   ; 
- D 1 - I - 0x00AA28 02:AA18: 38        .byte $38   ; 



_off020_AA19_03:
- D 1 - I - 0x00AA29 02:AA19: 54        .byte $54   ; 
- D 1 - I - 0x00AA2A 02:AA1A: 50        .byte $50   ; 
- - - - - - 0x00AA2B 02:AA1B: 4E        .byte $4E   ; 
- D 1 - I - 0x00AA2C 02:AA1C: 4C        .byte $4C   ; 
- D 1 - I - 0x00AA2D 02:AA1D: 4C        .byte $4C   ; 
- D 1 - I - 0x00AA2E 02:AA1E: 58        .byte $58   ; 
- - - - - - 0x00AA2F 02:AA1F: 4D        .byte $4D   ; 
- - - - - - 0x00AA30 02:AA20: 4D        .byte $4D   ; 
- - - - - - 0x00AA31 02:AA21: 4F        .byte $4F   ; 
- D 1 - I - 0x00AA32 02:AA22: 56        .byte $56   ; 
- D 1 - I - 0x00AA33 02:AA23: 52        .byte $52   ; 
- - - - - - 0x00AA34 02:AA24: 4E        .byte $4E   ; 
- - - - - - 0x00AA35 02:AA25: 4C        .byte $4C   ; 
- - - - - - 0x00AA36 02:AA26: 4C        .byte $4C   ; 
- - - - - - 0x00AA37 02:AA27: 5A        .byte $5A   ; 
- - - - - - 0x00AA38 02:AA28: 4D        .byte $4D   ; 
- D 1 - I - 0x00AA39 02:AA29: 4D        .byte $4D   ; 
- D 1 - I - 0x00AA3A 02:AA2A: 4F        .byte $4F   ; 
- D 1 - I - 0x00AA3B 02:AA2B: 55        .byte $55   ; 
- D 1 - I - 0x00AA3C 02:AA2C: 51        .byte $51   ; 
- - - - - - 0x00AA3D 02:AA2D: 4E        .byte $4E   ; 
- D 1 - I - 0x00AA3E 02:AA2E: 4C        .byte $4C   ; 
- - - - - - 0x00AA3F 02:AA2F: 4C        .byte $4C   ; 
- D 1 - I - 0x00AA40 02:AA30: 59        .byte $59   ; 
- - - - - - 0x00AA41 02:AA31: 4D        .byte $4D   ; 
- - - - - - 0x00AA42 02:AA32: 4D        .byte $4D   ; 
- - - - - - 0x00AA43 02:AA33: 4F        .byte $4F   ; 
- D 1 - I - 0x00AA44 02:AA34: 57        .byte $57   ; 
- D 1 - I - 0x00AA45 02:AA35: 53        .byte $53   ; 
- - - - - - 0x00AA46 02:AA36: 4E        .byte $4E   ; 
- - - - - - 0x00AA47 02:AA37: 4C        .byte $4C   ; 
- - - - - - 0x00AA48 02:AA38: 4C        .byte $4C   ; 
- D 1 - I - 0x00AA49 02:AA39: 5B        .byte $5B   ; 
- - - - - - 0x00AA4A 02:AA3A: 4D        .byte $4D   ; 
- - - - - - 0x00AA4B 02:AA3B: 4D        .byte $4D   ; 
- - - - - - 0x00AA4C 02:AA3C: 4F        .byte $4F   ; 
- D 1 - I - 0x00AA4D 02:AA3D: 5E        .byte $5E   ; 
- - - - - - 0x00AA4E 02:AA3E: 5E        .byte $5E   ; 
- - - - - - 0x00AA4F 02:AA3F: 5C        .byte $5C   ; 
- D 1 - I - 0x00AA50 02:AA40: 5C        .byte $5C   ; 
- - - - - - 0x00AA51 02:AA41: 5C        .byte $5C   ; 
- D 1 - I - 0x00AA52 02:AA42: 5E        .byte $5E   ; 
- - - - - - 0x00AA53 02:AA43: 5D        .byte $5D   ; 
- - - - - - 0x00AA54 02:AA44: 5D        .byte $5D   ; 
- - - - - - 0x00AA55 02:AA45: 5D        .byte $5D   ; 
- D 1 - I - 0x00AA56 02:AA46: 60        .byte $60   ; 
- - - - - - 0x00AA57 02:AA47: 60        .byte $60   ; 
- - - - - - 0x00AA58 02:AA48: 5C        .byte $5C   ; 
- - - - - - 0x00AA59 02:AA49: 5C        .byte $5C   ; 
- - - - - - 0x00AA5A 02:AA4A: 5C        .byte $5C   ; 
- D 1 - I - 0x00AA5B 02:AA4B: 60        .byte $60   ; 
- - - - - - 0x00AA5C 02:AA4C: 5D        .byte $5D   ; 
- D 1 - I - 0x00AA5D 02:AA4D: 5D        .byte $5D   ; 
- - - - - - 0x00AA5E 02:AA4E: 5D        .byte $5D   ; 
- D 1 - I - 0x00AA5F 02:AA4F: 5F        .byte $5F   ; 
- - - - - - 0x00AA60 02:AA50: 5F        .byte $5F   ; 
- - - - - - 0x00AA61 02:AA51: 5C        .byte $5C   ; 
- - - - - - 0x00AA62 02:AA52: 5C        .byte $5C   ; 
- - - - - - 0x00AA63 02:AA53: 5C        .byte $5C   ; 
- D 1 - I - 0x00AA64 02:AA54: 5F        .byte $5F   ; 
- - - - - - 0x00AA65 02:AA55: 5D        .byte $5D   ; 
- - - - - - 0x00AA66 02:AA56: 5D        .byte $5D   ; 
- - - - - - 0x00AA67 02:AA57: 5D        .byte $5D   ; 
- D 1 - I - 0x00AA68 02:AA58: 61        .byte $61   ; 
- - - - - - 0x00AA69 02:AA59: 61        .byte $61   ; 
- - - - - - 0x00AA6A 02:AA5A: 5C        .byte $5C   ; 
- - - - - - 0x00AA6B 02:AA5B: 5C        .byte $5C   ; 
- - - - - - 0x00AA6C 02:AA5C: 5C        .byte $5C   ; 
- D 1 - I - 0x00AA6D 02:AA5D: 61        .byte $61   ; 
- - - - - - 0x00AA6E 02:AA5E: 5D        .byte $5D   ; 
- D 1 - I - 0x00AA6F 02:AA5F: 5D        .byte $5D   ; 
- - - - - - 0x00AA70 02:AA60: 5D        .byte $5D   ; 



_off020_AA61_04:
- - - - - - 0x00AA71 02:AA61: 01        .byte $01   ; 
- D 1 - I - 0x00AA72 02:AA62: 01        .byte $01   ; 
- D 1 - I - 0x00AA73 02:AA63: 03        .byte $03   ; 
- D 1 - I - 0x00AA74 02:AA64: 05        .byte $05   ; 
- D 1 - I - 0x00AA75 02:AA65: 07        .byte $07   ; 
- D 1 - I - 0x00AA76 02:AA66: 08        .byte $08   ; 
- D 1 - I - 0x00AA77 02:AA67: 06        .byte $06   ; 
- D 1 - I - 0x00AA78 02:AA68: 04        .byte $04   ; 
- D 1 - I - 0x00AA79 02:AA69: 02        .byte $02   ; 
- - - - - - 0x00AA7A 02:AA6A: 11        .byte $11   ; 
- D 1 - I - 0x00AA7B 02:AA6B: 11        .byte $11   ; 
- D 1 - I - 0x00AA7C 02:AA6C: 13        .byte $13   ; 
- D 1 - I - 0x00AA7D 02:AA6D: 15        .byte $15   ; 
- D 1 - I - 0x00AA7E 02:AA6E: 17        .byte $17   ; 
- D 1 - I - 0x00AA7F 02:AA6F: 18        .byte $18   ; 
- - - - - - 0x00AA80 02:AA70: 16        .byte $16   ; 
- D 1 - I - 0x00AA81 02:AA71: 14        .byte $14   ; 
- - - - - - 0x00AA82 02:AA72: 12        .byte $12   ; 
- - - - - - 0x00AA83 02:AA73: 01        .byte $01   ; 
- D 1 - I - 0x00AA84 02:AA74: 01        .byte $01   ; 
- D 1 - I - 0x00AA85 02:AA75: 03        .byte $03   ; 
- D 1 - I - 0x00AA86 02:AA76: 05        .byte $05   ; 
- D 1 - I - 0x00AA87 02:AA77: 07        .byte $07   ; 
- - - - - - 0x00AA88 02:AA78: 08        .byte $08   ; 
- D 1 - I - 0x00AA89 02:AA79: 06        .byte $06   ; 
- - - - - - 0x00AA8A 02:AA7A: 04        .byte $04   ; 
- D 1 - I - 0x00AA8B 02:AA7B: 02        .byte $02   ; 
- - - - - - 0x00AA8C 02:AA7C: 09        .byte $09   ; 
- D 1 - I - 0x00AA8D 02:AA7D: 09        .byte $09   ; 
- - - - - - 0x00AA8E 02:AA7E: 0B        .byte $0B   ; 
- - - - - - 0x00AA8F 02:AA7F: 0D        .byte $0D   ; 
- D 1 - I - 0x00AA90 02:AA80: 0F        .byte $0F   ; 
- - - - - - 0x00AA91 02:AA81: 10        .byte $10   ; 
- - - - - - 0x00AA92 02:AA82: 0E        .byte $0E   ; 
- - - - - - 0x00AA93 02:AA83: 0C        .byte $0C   ; 
- - - - - - 0x00AA94 02:AA84: 0A        .byte $0A   ; 



_off020_AA85_05:
- - - - - - 0x00AA95 02:AA85: 1E        .byte $1E   ; 
- D 1 - I - 0x00AA96 02:AA86: 1E        .byte $1E   ; 
- D 1 - I - 0x00AA97 02:AA87: 20        .byte $20   ; 
- D 1 - I - 0x00AA98 02:AA88: 22        .byte $22   ; 
- D 1 - I - 0x00AA99 02:AA89: 24        .byte $24   ; 
- D 1 - I - 0x00AA9A 02:AA8A: 25        .byte $25   ; 
- D 1 - I - 0x00AA9B 02:AA8B: 23        .byte $23   ; 
- D 1 - I - 0x00AA9C 02:AA8C: 21        .byte $21   ; 
- D 1 - I - 0x00AA9D 02:AA8D: 1F        .byte $1F   ; 
- - - - - - 0x00AA9E 02:AA8E: 2E        .byte $2E   ; 
- D 1 - I - 0x00AA9F 02:AA8F: 2E        .byte $2E   ; 
- D 1 - I - 0x00AAA0 02:AA90: 30        .byte $30   ; 
- D 1 - I - 0x00AAA1 02:AA91: 32        .byte $32   ; 
- D 1 - I - 0x00AAA2 02:AA92: 34        .byte $34   ; 
- D 1 - I - 0x00AAA3 02:AA93: 35        .byte $35   ; 
- D 1 - I - 0x00AAA4 02:AA94: 33        .byte $33   ; 
- D 1 - I - 0x00AAA5 02:AA95: 31        .byte $31   ; 
- D 1 - I - 0x00AAA6 02:AA96: 2F        .byte $2F   ; 
- - - - - - 0x00AAA7 02:AA97: 1E        .byte $1E   ; 
- D 1 - I - 0x00AAA8 02:AA98: 1E        .byte $1E   ; 
- D 1 - I - 0x00AAA9 02:AA99: 20        .byte $20   ; 
- D 1 - I - 0x00AAAA 02:AA9A: 22        .byte $22   ; 
- D 1 - I - 0x00AAAB 02:AA9B: 24        .byte $24   ; 
- D 1 - I - 0x00AAAC 02:AA9C: 25        .byte $25   ; 
- D 1 - I - 0x00AAAD 02:AA9D: 23        .byte $23   ; 
- D 1 - I - 0x00AAAE 02:AA9E: 21        .byte $21   ; 
- D 1 - I - 0x00AAAF 02:AA9F: 1F        .byte $1F   ; 
- - - - - - 0x00AAB0 02:AAA0: 26        .byte $26   ; 
- D 1 - I - 0x00AAB1 02:AAA1: 26        .byte $26   ; 
- D 1 - I - 0x00AAB2 02:AAA2: 28        .byte $28   ; 
- D 1 - I - 0x00AAB3 02:AAA3: 2A        .byte $2A   ; 
- D 1 - I - 0x00AAB4 02:AAA4: 2C        .byte $2C   ; 
- D 1 - I - 0x00AAB5 02:AAA5: 2D        .byte $2D   ; 
- - - - - - 0x00AAB6 02:AAA6: 2B        .byte $2B   ; 
- D 1 - I - 0x00AAB7 02:AAA7: 29        .byte $29   ; 
- D 1 - I - 0x00AAB8 02:AAA8: 27        .byte $27   ; 



_off020_AAA9_06:
- - - - - - 0x00AAB9 02:AAA9: 01        .byte $01   ; 
- D 1 - I - 0x00AABA 02:AAAA: 01        .byte $01   ; 
- - - - - - 0x00AABB 02:AAAB: 03        .byte $03   ; 
- - - - - - 0x00AABC 02:AAAC: 05        .byte $05   ; 
- - - - - - 0x00AABD 02:AAAD: 07        .byte $07   ; 
- - - - - - 0x00AABE 02:AAAE: 08        .byte $08   ; 
- - - - - - 0x00AABF 02:AAAF: 06        .byte $06   ; 
- D 1 - I - 0x00AAC0 02:AAB0: 04        .byte $04   ; 
- D 1 - I - 0x00AAC1 02:AAB1: 02        .byte $02   ; 
- - - - - - 0x00AAC2 02:AAB2: 09        .byte $09   ; 
- D 1 - I - 0x00AAC3 02:AAB3: 09        .byte $09   ; 
- - - - - - 0x00AAC4 02:AAB4: 0B        .byte $0B   ; 
- - - - - - 0x00AAC5 02:AAB5: 0D        .byte $0D   ; 
- - - - - - 0x00AAC6 02:AAB6: 0F        .byte $0F   ; 
- - - - - - 0x00AAC7 02:AAB7: 10        .byte $10   ; 
- - - - - - 0x00AAC8 02:AAB8: 0E        .byte $0E   ; 
- - - - - - 0x00AAC9 02:AAB9: 0C        .byte $0C   ; 
- - - - - - 0x00AACA 02:AABA: 0A        .byte $0A   ; 
- - - - - - 0x00AACB 02:AABB: 01        .byte $01   ; 
- - - - - - 0x00AACC 02:AABC: 01        .byte $01   ; 
- - - - - - 0x00AACD 02:AABD: 03        .byte $03   ; 
- - - - - - 0x00AACE 02:AABE: 05        .byte $05   ; 
- - - - - - 0x00AACF 02:AABF: 07        .byte $07   ; 
- - - - - - 0x00AAD0 02:AAC0: 08        .byte $08   ; 
- - - - - - 0x00AAD1 02:AAC1: 06        .byte $06   ; 
- - - - - - 0x00AAD2 02:AAC2: 04        .byte $04   ; 
- D 1 - I - 0x00AAD3 02:AAC3: 02        .byte $02   ; 
- - - - - - 0x00AAD4 02:AAC4: 11        .byte $11   ; 
- - - - - - 0x00AAD5 02:AAC5: 11        .byte $11   ; 
- - - - - - 0x00AAD6 02:AAC6: 13        .byte $13   ; 
- - - - - - 0x00AAD7 02:AAC7: 15        .byte $15   ; 
- - - - - - 0x00AAD8 02:AAC8: 17        .byte $17   ; 
- - - - - - 0x00AAD9 02:AAC9: 18        .byte $18   ; 
- - - - - - 0x00AADA 02:AACA: 16        .byte $16   ; 
- - - - - - 0x00AADB 02:AACB: 14        .byte $14   ; 
- - - - - - 0x00AADC 02:AACC: 12        .byte $12   ; 



_off020_AACD_07:
- - - - - - 0x00AADD 02:AACD: 1F        .byte $1F   ; 
- D 1 - I - 0x00AADE 02:AACE: 1F        .byte $1F   ; 
- D 1 - I - 0x00AADF 02:AACF: 21        .byte $21   ; 
- D 1 - I - 0x00AAE0 02:AAD0: 23        .byte $23   ; 
- D 1 - I - 0x00AAE1 02:AAD1: 25        .byte $25   ; 
- D 1 - I - 0x00AAE2 02:AAD2: 26        .byte $26   ; 
- D 1 - I - 0x00AAE3 02:AAD3: 24        .byte $24   ; 
- D 1 - I - 0x00AAE4 02:AAD4: 22        .byte $22   ; 
- D 1 - I - 0x00AAE5 02:AAD5: 20        .byte $20   ; 
- - - - - - 0x00AAE6 02:AAD6: 2F        .byte $2F   ; 
- D 1 - I - 0x00AAE7 02:AAD7: 2F        .byte $2F   ; 
- - - - - - 0x00AAE8 02:AAD8: 31        .byte $31   ; 
- D 1 - I - 0x00AAE9 02:AAD9: 33        .byte $33   ; 
- - - - - - 0x00AAEA 02:AADA: 35        .byte $35   ; 
- D 1 - I - 0x00AAEB 02:AADB: 36        .byte $36   ; 
- - - - - - 0x00AAEC 02:AADC: 34        .byte $34   ; 
- D 1 - I - 0x00AAED 02:AADD: 32        .byte $32   ; 
- - - - - - 0x00AAEE 02:AADE: 30        .byte $30   ; 
- - - - - - 0x00AAEF 02:AADF: 1F        .byte $1F   ; 
- D 1 - I - 0x00AAF0 02:AAE0: 1F        .byte $1F   ; 
- D 1 - I - 0x00AAF1 02:AAE1: 21        .byte $21   ; 
- D 1 - I - 0x00AAF2 02:AAE2: 23        .byte $23   ; 
- - - - - - 0x00AAF3 02:AAE3: 25        .byte $25   ; 
- D 1 - I - 0x00AAF4 02:AAE4: 26        .byte $26   ; 
- - - - - - 0x00AAF5 02:AAE5: 24        .byte $24   ; 
- D 1 - I - 0x00AAF6 02:AAE6: 22        .byte $22   ; 
- D 1 - I - 0x00AAF7 02:AAE7: 20        .byte $20   ; 
- - - - - - 0x00AAF8 02:AAE8: 27        .byte $27   ; 
- D 1 - I - 0x00AAF9 02:AAE9: 27        .byte $27   ; 
- - - - - - 0x00AAFA 02:AAEA: 29        .byte $29   ; 
- D 1 - I - 0x00AAFB 02:AAEB: 2B        .byte $2B   ; 
- - - - - - 0x00AAFC 02:AAEC: 2D        .byte $2D   ; 
- D 1 - I - 0x00AAFD 02:AAED: 2E        .byte $2E   ; 
- - - - - - 0x00AAFE 02:AAEE: 2C        .byte $2C   ; 
- D 1 - I - 0x00AAFF 02:AAEF: 2A        .byte $2A   ; 
- - - - - - 0x00AB00 02:AAF0: 28        .byte $28   ; 
- - - - - - 0x00AB01 02:AAF1: 3D        .byte $3D   ; 
- D 1 - I - 0x00AB02 02:AAF2: 3D        .byte $3D   ; 
- D 1 - I - 0x00AB03 02:AAF3: 3F        .byte $3F   ; 
- D 1 - I - 0x00AB04 02:AAF4: 41        .byte $41   ; 
- D 1 - I - 0x00AB05 02:AAF5: 43        .byte $43   ; 
- D 1 - I - 0x00AB06 02:AAF6: 44        .byte $44   ; 
- D 1 - I - 0x00AB07 02:AAF7: 42        .byte $42   ; 
- D 1 - I - 0x00AB08 02:AAF8: 40        .byte $40   ; 
- D 1 - I - 0x00AB09 02:AAF9: 3E        .byte $3E   ; 
- - - - - - 0x00AB0A 02:AAFA: 49        .byte $49   ; 
- D 1 - I - 0x00AB0B 02:AAFB: 49        .byte $49   ; 
- - - - - - 0x00AB0C 02:AAFC: 49        .byte $49   ; 
- D 1 - I - 0x00AB0D 02:AAFD: 4C        .byte $4C   ; 
- - - - - - 0x00AB0E 02:AAFE: 4C        .byte $4C   ; 
- D 1 - I - 0x00AB0F 02:AAFF: 4B        .byte $4B   ; 
- - - - - - 0x00AB10 02:AB00: 4B        .byte $4B   ; 
- D 1 - I - 0x00AB11 02:AB01: 4A        .byte $4A   ; 
- - - - - - 0x00AB12 02:AB02: 4A        .byte $4A   ; 
- - - - - - 0x00AB13 02:AB03: 3D        .byte $3D   ; 
- D 1 - I - 0x00AB14 02:AB04: 3D        .byte $3D   ; 
- - - - - - 0x00AB15 02:AB05: 3F        .byte $3F   ; 
- D 1 - I - 0x00AB16 02:AB06: 41        .byte $41   ; 
- D 1 - I - 0x00AB17 02:AB07: 43        .byte $43   ; 
- D 1 - I - 0x00AB18 02:AB08: 44        .byte $44   ; 
- - - - - - 0x00AB19 02:AB09: 42        .byte $42   ; 
- D 1 - I - 0x00AB1A 02:AB0A: 40        .byte $40   ; 
- D 1 - I - 0x00AB1B 02:AB0B: 3E        .byte $3E   ; 
- - - - - - 0x00AB1C 02:AB0C: 45        .byte $45   ; 
- - - - - - 0x00AB1D 02:AB0D: 45        .byte $45   ; 
- - - - - - 0x00AB1E 02:AB0E: 45        .byte $45   ; 
- - - - - - 0x00AB1F 02:AB0F: 45        .byte $45   ; 
- - - - - - 0x00AB20 02:AB10: 48        .byte $48   ; 
- D 1 - I - 0x00AB21 02:AB11: 47        .byte $47   ; 
- - - - - - 0x00AB22 02:AB12: 47        .byte $47   ; 
- D 1 - I - 0x00AB23 02:AB13: 46        .byte $46   ; 
- - - - - - 0x00AB24 02:AB14: 46        .byte $46   ; 



tbl_AB15:
- D 1 - - - 0x00AB25 02:AB15: 44        .byte $44   ; 00 
- - - - - - 0x00AB26 02:AB16: 44        .byte $44   ; 01 
- D 1 - - - 0x00AB27 02:AB17: 00        .byte $00   ; 02 
- D 1 - - - 0x00AB28 02:AB18: 11        .byte $11   ; 03 
- D 1 - - - 0x00AB29 02:AB19: 11        .byte $11   ; 04 
- D 1 - - - 0x00AB2A 02:AB1A: 11        .byte $11   ; 05 
- D 1 - - - 0x00AB2B 02:AB1B: 00        .byte $00   ; 06 
- - - - - - 0x00AB2C 02:AB1C: 44        .byte $44   ; 07 



tbl_AB1D:
- D 1 - - - 0x00AB2D 02:AB1D: 11        .byte $11   ; 00 
- D 1 - - - 0x00AB2E 02:AB1E: 11        .byte $11   ; 01 
- D 1 - - - 0x00AB2F 02:AB1F: 22        .byte $22   ; 02 
- D 1 - - - 0x00AB30 02:AB20: 44        .byte $44   ; 03 
- D 1 - - - 0x00AB31 02:AB21: 44        .byte $44   ; 04 
- D 1 - - - 0x00AB32 02:AB22: 44        .byte $44   ; 05 
- D 1 - - - 0x00AB33 02:AB23: 22        .byte $22   ; 06 
- D 1 - - - 0x00AB34 02:AB24: 11        .byte $11   ; 07 



tbl_AB25:
- D 1 - - - 0x00AB35 02:AB25: 00        .byte $00   ; 00 
- D 1 - - - 0x00AB36 02:AB26: 04        .byte $04   ; 01 
- D 1 - - - 0x00AB37 02:AB27: 06        .byte $06   ; 02 
- D 1 - - - 0x00AB38 02:AB28: 06        .byte $06   ; 03 
- D 1 - - - 0x00AB39 02:AB29: 06        .byte $06   ; 04 
- D 1 - - - 0x00AB3A 02:AB2A: 00        .byte $00   ; 05 
- D 1 - - - 0x00AB3B 02:AB2B: 02        .byte $02   ; 06 
- D 1 - - - 0x00AB3C 02:AB2C: 02        .byte $02   ; 07 
- D 1 - - - 0x00AB3D 02:AB2D: 02        .byte $02   ; 08 
- - - - - - 0x00AB3E 02:AB2E: 0C        .byte $0C   ; 09 
- - - - - - 0x00AB3F 02:AB2F: 0E        .byte $0E   ; 0A 
- - - - - - 0x00AB40 02:AB30: 10        .byte $10   ; 0B 
- - - - - - 0x00AB41 02:AB31: 12        .byte $12   ; 0C 
- - - - - - 0x00AB42 02:AB32: 00        .byte $00   ; 0D 
- - - - - - 0x00AB43 02:AB33: 03        .byte $03   ; 0E 
- - - - - - 0x00AB44 02:AB34: 04        .byte $04   ; 0F 



tbl_AB3A:
- D 1 - - - 0x00AB4A 02:AB3A: 01        .byte $01   ; 
- D 1 - - - 0x00AB4B 02:AB3B: 0D        .byte $0D   ; 
- D 1 - - - 0x00AB4C 02:AB3C: 0B        .byte $0B   ; 
- D 1 - - - 0x00AB4D 02:AB3D: 03        .byte $03   ; 
- D 1 - - - 0x00AB4E 02:AB3E: 02        .byte $02   ; 
- D 1 - - - 0x00AB4F 02:AB3F: 04        .byte $04   ; 
- D 1 - - - 0x00AB50 02:AB40: 0C        .byte $0C   ; 
- D 1 - - - 0x00AB51 02:AB41: 06        .byte $06   ; 



sub_AB42:
; in
    ; X = 
C - - - - - 0x00AB52 02:AB42: 86 1F     STX ram_001F_t06
C - - - - - 0x00AB54 02:AB44: 20 78 91  JSR sub_0x009188_stage_AND_01
C - - - - - 0x00AB57 02:AB47: F0 1C     BEQ bra_AB65_side_view
; if upper view
C - - - - - 0x00AB59 02:AB49: A9 00     LDA #$00
C - - - - - 0x00AB5B 02:AB4B: 9D D2 07  STA ram_07D2_unk,X
C - - - - - 0x00AB5E 02:AB4E: A0 08     LDY #$08
C - - - - - 0x00AB60 02:AB50: BD B4 07  LDA ram_07B4_unk,X
C - - - - - 0x00AB63 02:AB53: 10 0A     BPL bra_AB5F
C - - - - - 0x00AB65 02:AB55: BD B4 07  LDA ram_07B4_unk,X
C - - - - - 0x00AB68 02:AB58: C9 94     CMP #$94
C - - - - - 0x00AB6A 02:AB5A: 90 29     BCC bra_AB85
C - - - - - 0x00AB6C 02:AB5C: 4C 6D AC  JMP loc_AC6D
bra_AB5F:
C - - - - - 0x00AB6F 02:AB5F: C9 10     CMP #$10
C - - - - - 0x00AB71 02:AB61: B0 1A     BCS bra_AB7D
C - - - - - 0x00AB73 02:AB63: 90 20     BCC bra_AB85    ; jmp
bra_AB65_side_view:
C - - - - - 0x00AB75 02:AB65: BD B4 07  LDA ram_07B4_unk,X
C - - - - - 0x00AB78 02:AB68: 30 07     BMI bra_AB71
C - - - - - 0x00AB7A 02:AB6A: BD D2 07  LDA ram_07D2_unk,X
C - - - - - 0x00AB7D 02:AB6D: 29 0C     AND #$0C
C - - - - - 0x00AB7F 02:AB6F: D0 0C     BNE bra_AB7D
bra_AB71:
C - - - - - 0x00AB81 02:AB71: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x00AB84 02:AB74: 29 20     AND #$20
C - - - - - 0x00AB86 02:AB76: D0 08     BNE bra_AB80
C - - - - - 0x00AB88 02:AB78: BD B4 07  LDA ram_07B4_unk,X
C - - - - - 0x00AB8B 02:AB7B: 30 03     BMI bra_AB80
bra_AB7D:
C - - - - - 0x00AB8D 02:AB7D: 20 96 A0  JSR sub_A096
bra_AB80:
C - - - - - 0x00AB90 02:AB80: 20 43 A0  JSR sub_A043_00B1x_AND_0F
C - - - - - 0x00AB93 02:AB83: 0A        ASL
C - - - - - 0x00AB94 02:AB84: A8        TAY
bra_AB85:
C - - - - - 0x00AB95 02:AB85: BD B4 07  LDA ram_07B4_unk,X
C - - - - - 0x00AB98 02:AB88: 29 7C     AND #$7C
C - - - - - 0x00AB9A 02:AB8A: 85 1B     STA ram_001B_t02_hi
C - - - - - 0x00AB9C 02:AB8C: A9 00     LDA #$00
; / 08
C - - - - - 0x00AB9E 02:AB8E: 46 1B     LSR ram_001B_t02_hi
C - - - - - 0x00ABA0 02:AB90: 6A        ROR
C - - - - - 0x00ABA1 02:AB91: 46 1B     LSR ram_001B_t02_hi
C - - - - - 0x00ABA3 02:AB93: 6A        ROR
C - - - - - 0x00ABA4 02:AB94: 46 1B     LSR ram_001B_t02_hi
C - - - - - 0x00ABA6 02:AB96: 6A        ROR
C - - - - - 0x00ABA7 02:AB97: 85 1A     STA ram_001A_t08_lo
C - - - - - 0x00ABA9 02:AB99: B5 CD     LDA ram_00CD,X
C - - - - - 0x00ABAB 02:AB9B: 29 01     AND #$01
C - - - - - 0x00ABAD 02:AB9D: F0 08     BEQ bra_ABA7
; / 04
C - - - - - 0x00ABAF 02:AB9F: 46 1B     LSR ram_001B_t02_hi
C - - - - - 0x00ABB1 02:ABA1: 66 1A     ROR ram_001A_t08_lo
C - - - - - 0x00ABB3 02:ABA3: 46 1B     LSR ram_001B_t02_hi
C - - - - - 0x00ABB5 02:ABA5: 66 1A     ROR ram_001A_t08_lo
bra_ABA7:
C - - - - - 0x00ABB7 02:ABA7: BD B4 07  LDA ram_07B4_unk,X
C - - - - - 0x00ABBA 02:ABAA: 30 28     BMI bra_ABD4
C - - - - - 0x00ABBC 02:ABAC: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x00ABBF 02:ABAF: C9 08     CMP #$08
C - - - - - 0x00ABC1 02:ABB1: B0 05     BCS bra_ABB8
C - - - - - 0x00ABC3 02:ABB3: A9 08     LDA #$08
C - - - - - 0x00ABC5 02:ABB5: 9D 68 06  STA ram_obj_pos_Y,X
bra_ABB8:
C - - - - - 0x00ABC8 02:ABB8: B9 CE AC  LDA tbl_ACCE,Y
C - - - - - 0x00ABCB 02:ABBB: 38        SEC
C - - - - - 0x00ABCC 02:ABBC: E5 1A     SBC ram_001A_t08_lo
C - - - - - 0x00ABCE 02:ABBE: 85 1A     STA ram_001A_t08_lo
C - - - - - 0x00ABD0 02:ABC0: B9 CF AC  LDA tbl_ACCE + $01,Y
C - - - - - 0x00ABD3 02:ABC3: E5 1B     SBC ram_001B_t02_hi
C - - - - - 0x00ABD5 02:ABC5: 85 1B     STA ram_001B_t02_hi
C - - - - - 0x00ABD7 02:ABC7: 10 31     BPL bra_ABFA
C - - - - - 0x00ABD9 02:ABC9: 20 96 A0  JSR sub_A096
C - - - - - 0x00ABDC 02:ABCC: A9 00     LDA #$00
C - - - - - 0x00ABDE 02:ABCE: 85 1A     STA ram_001A_t08_lo
C - - - - - 0x00ABE0 02:ABD0: 85 1B     STA ram_001B_t02_hi
C - - - - - 0x00ABE2 02:ABD2: F0 26     BEQ bra_ABFA    ; jmp
bra_ABD4:
C - - - - - 0x00ABE4 02:ABD4: B9 CF AC  LDA tbl_ACCE + $01,Y
C - - - - - 0x00ABE7 02:ABD7: C5 1B     CMP ram_001B_t02_hi
C - - - - - 0x00ABE9 02:ABD9: D0 0D     BNE bra_ABE8
C - - - - - 0x00ABEB 02:ABDB: B9 CE AC  LDA tbl_ACCE,Y
C - - - - - 0x00ABEE 02:ABDE: C5 1A     CMP ram_001A_t08_lo
C - - - - - 0x00ABF0 02:ABE0: B0 0F     BCS bra_ABF1
C - - - - - 0x00ABF2 02:ABE2: B9 CF AC  LDA tbl_ACCE + $01,Y
C - - - - - 0x00ABF5 02:ABE5: 4C EA AB  JMP loc_ABEA
bra_ABE8:
C - - - - - 0x00ABF8 02:ABE8: B0 07     BCS bra_ABF1
loc_ABEA:
C D 1 - - - 0x00ABFA 02:ABEA: 85 1B     STA ram_001B_t02_hi
C - - - - - 0x00ABFC 02:ABEC: B9 CE AC  LDA tbl_ACCE,Y
C - - - - - 0x00ABFF 02:ABEF: 85 1A     STA ram_001A_t08_lo
bra_ABF1:
C - - - - - 0x00AC01 02:ABF1: BD D2 07  LDA ram_07D2_unk,X
C - - - - - 0x00AC04 02:ABF4: 29 09     AND #$09
C - - - - - 0x00AC06 02:ABF6: D0 26     BNE bra_AC1E
C - - - - - 0x00AC08 02:ABF8: F0 11     BEQ bra_AC0B    ; jmp
bra_ABFA:
C - - - - - 0x00AC0A 02:ABFA: A5 1A     LDA ram_001A_t08_lo
C - - - - - 0x00AC0C 02:ABFC: 49 FF     EOR #$FF
C - - - - - 0x00AC0E 02:ABFE: 18        CLC
C - - - - - 0x00AC0F 02:ABFF: 69 01     ADC #< $0001
C - - - - - 0x00AC11 02:AC01: 85 1A     STA ram_001A_t08_lo
C - - - - - 0x00AC13 02:AC03: A5 1B     LDA ram_001B_t02_hi
C - - - - - 0x00AC15 02:AC05: 49 FF     EOR #$FF
C - - - - - 0x00AC17 02:AC07: 69 00     ADC #> $0001
C - - - - - 0x00AC19 02:AC09: 85 1B     STA ram_001B_t02_hi
bra_AC0B:
C - - - - - 0x00AC1B 02:AC0B: A6 1F     LDX ram_001F_t06
C - - - - - 0x00AC1D 02:AC0D: FE B4 07  INC ram_07B4_unk,X
C - - - - - 0x00AC20 02:AC10: D0 03     BNE bra_AC15
- - - - - - 0x00AC22 02:AC12: DE B4 07  DEC ram_07B4_unk,X
bra_AC15:
; bzk optimize, useless LDA + STA + STA
C - - - - - 0x00AC25 02:AC15: A9 00     LDA #$00
C - - - - - 0x00AC27 02:AC17: 85 18     STA ram_0018_t17_ueless
C - - - - - 0x00AC29 02:AC19: 85 19     STA ram_0019_t08_useless
C - - - - - 0x00AC2B 02:AC1B: 4C 69 AE  JMP loc_AE69
bra_AC1E:
C - - - - - 0x00AC2E 02:AC1E: 29 08     AND #$08
C - - - - - 0x00AC30 02:AC20: F0 05     BEQ bra_AC27
C - - - - - 0x00AC32 02:AC22: A9 1C     LDA #con_music_1C
C - - - - - 0x00AC34 02:AC24: 20 CA FE  JSR sub_0x01FEDA_add_music_to_queue
bra_AC27:
C - - - - - 0x00AC37 02:AC27: A6 1F     LDX ram_001F_t06
C - - - - - 0x00AC39 02:AC29: B5 CD     LDA ram_00CD,X
C - - - - - 0x00AC3B 02:AC2B: 29 FC     AND #$FC
C - - - - - 0x00AC3D 02:AC2D: 95 CD     STA ram_00CD,X
C - - - - - 0x00AC3F 02:AC2F: 20 92 A0  JSR sub_A092
C - - - - - 0x00AC42 02:AC32: A9 BF     LDA #$BF
C - - - - - 0x00AC44 02:AC34: 3D AA 07  AND ram_07AA_unk,X
C - - - - - 0x00AC47 02:AC37: 9D AA 07  STA ram_07AA_unk,X
C - - - - - 0x00AC4A 02:AC3A: BD D2 07  LDA ram_07D2_unk,X
C - - - - - 0x00AC4D 02:AC3D: 29 08     AND #$08
C - - - - - 0x00AC4F 02:AC3F: D0 2C     BNE bra_AC6D
C - - - - - 0x00AC51 02:AC41: BD C8 07  LDA ram_07C8_unk,X
C - - - - - 0x00AC54 02:AC44: D0 05     BNE bra_AC4B
C - - - - - 0x00AC56 02:AC46: A9 06     LDA #con_music_06
C - - - - - 0x00AC58 02:AC48: 20 CA FE  JSR sub_0x01FEDA_add_music_to_queue
bra_AC4B:
C - - - - - 0x00AC5B 02:AC4B: BD D2 07  LDA ram_07D2_unk,X
C - - - - - 0x00AC5E 02:AC4E: 29 10     AND #$10
C - - - - - 0x00AC60 02:AC50: D0 1B     BNE bra_AC6D
C - - - - - 0x00AC62 02:AC52: 20 78 91  JSR sub_0x009188_stage_AND_01
C - - - - - 0x00AC65 02:AC55: D0 16     BNE bra_AC6D    ; if upper view
; if side view
C - - - - - 0x00AC67 02:AC57: A5 D0     LDA ram_00D0
C - - - - - 0x00AC69 02:AC59: D0 12     BNE bra_AC6D
C - - - - - 0x00AC6B 02:AC5B: A5 64     LDA ram_0064_lo
C - - - - - 0x00AC6D 02:AC5D: 29 07     AND #$07
C - - - - - 0x00AC6F 02:AC5F: 85 02     STA ram_0002_t34
C - - - - - 0x00AC71 02:AC61: 18        CLC
C - - - - - 0x00AC72 02:AC62: 7D 68 06  ADC ram_obj_pos_Y,X
C - - - - - 0x00AC75 02:AC65: 29 F8     AND #$F8
C - - - - - 0x00AC77 02:AC67: 38        SEC
C - - - - - 0x00AC78 02:AC68: E5 02     SBC ram_0002_t34
C - - - - - 0x00AC7A 02:AC6A: 9D 68 06  STA ram_obj_pos_Y,X
bra_AC6D:
loc_AC6D:
C D 1 - - - 0x00AC7D 02:AC6D: 20 0A A6  JSR sub_A60A
C - - - - - 0x00AC80 02:AC70: F0 4F     BEQ bra_ACC1_RTS
; player invincibility timer
C - - - - - 0x00AC82 02:AC72: A9 5F     LDA #$5F
C - - - - - 0x00AC84 02:AC74: 9D C8 07  STA ram_07C8_unk,X
C - - - - - 0x00AC87 02:AC77: A9 00     LDA #$00
C - - - - - 0x00AC89 02:AC79: 9D AA 07  STA ram_07AA_unk,X
C - - - - - 0x00AC8C 02:AC7C: BC 0A 07  LDY ram_070A_obj,X
C - - - - - 0x00AC8F 02:AC7F: C8        INY
C - - - - - 0x00AC90 02:AC80: 98        TYA
C - - - - - 0x00AC91 02:AC81: 20 B9 A7  JSR sub_A7B9
loc_AC84:
C D 1 - - - 0x00AC94 02:AC84: 20 43 A0  JSR sub_A043_00B1x_AND_0F
C - - - - - 0x00AC97 02:AC87: 95 B1     STA ram_current_player,X
C - - - - - 0x00AC99 02:AC89: A8        TAY
C - - - - - 0x00AC9A 02:AC8A: B9 7F 00  LDA ram_player_stats,Y
C - - - - - 0x00AC9D 02:AC8D: 29 F0     AND #$F0
C - - - - - 0x00AC9F 02:AC8F: 99 7F 00  STA ram_player_stats,Y
C - - - - - 0x00ACA2 02:AC92: C9 30     CMP #$30
C - - - - - 0x00ACA4 02:AC94: B0 28     BCS bra_ACBE
C - - - - - 0x00ACA6 02:AC96: 20 76 E0  JSR sub_0x01E086
C - - - - - 0x00ACA9 02:AC99: 20 C1 F6  JSR sub_0x01F6D1
C - - - - - 0x00ACAC 02:AC9C: A5 0A     LDA ram_000A_t11_lives
C - - - - - 0x00ACAE 02:AC9E: 99 B3 00  STA ram_lives,Y
C - - - - - 0x00ACB1 02:ACA1: D0 1E     BNE bra_ACC1_RTS
C - - - - - 0x00ACB3 02:ACA3: 8A        TXA
C - - - - - 0x00ACB4 02:ACA4: 49 01     EOR #$01
C - - - - - 0x00ACB6 02:ACA6: A8        TAY
C - - - - - 0x00ACB7 02:ACA7: B9 82 07  LDA ram_0782_unk,Y
C - - - - - 0x00ACBA 02:ACAA: F0 16     BEQ bra_ACC2
- - - - - - 0x00ACBC 02:ACAC: B9 B1 00  LDA ram_current_player,Y
- - - - - - 0x00ACBF 02:ACAF: 29 0F     AND #$0F
- - - - - - 0x00ACC1 02:ACB1: A8        TAY
- - - - - - 0x00ACC2 02:ACB2: B9 7F 00  LDA ram_player_stats,Y
- - - - - - 0x00ACC5 02:ACB5: C9 30     CMP #$30
- - - - - - 0x00ACC7 02:ACB7: B0 09     BCS bra_ACC2
- - - - - - 0x00ACC9 02:ACB9: B9 B3 00  LDA ram_lives,Y
- - - - - - 0x00ACCC 02:ACBC: F0 04     BEQ bra_ACC2
bra_ACBE:
loc_ACBE:   ; bzk optimize
; bzk optimize, JMP
C D 1 - - - 0x00ACCE 02:ACBE: 20 4F F6  JSR sub_F64F
bra_ACC1_RTS:
C - - - - - 0x00ACD1 02:ACC1: 60        RTS
bra_ACC2:
C - - - - - 0x00ACD2 02:ACC2: 20 62 D0  JSR sub_0x01D072
C - - - - - 0x00ACD5 02:ACC5: A9 05     LDA #con_0020_game_over
C - - - - - 0x00ACD7 02:ACC7: 85 20     STA ram_script_hi
; game over screen delay after death
C - - - - - 0x00ACD9 02:ACC9: A9 30     LDA #$30
C - - - - - 0x00ACDB 02:ACCB: 85 4A     STA ram_004A_t02_game_over_screen_delay
C - - - - - 0x00ACDD 02:ACCD: 60        RTS



sub_F64F:
C - - - - - 0x01F65F 07:F64F: A9 00     LDA #$00
C - - - - - 0x01F661 07:F651: 9D 1A 06  STA ram_obj_animation_lo,X
C - - - - - 0x01F664 07:F654: 9D 82 07  STA ram_0782_unk,X
C - - - - - 0x01F667 07:F657: 9D 82 06  STA ram_0682_obj,X
C - - - - - 0x01F66A 07:F65A: 9D C8 07  STA ram_07C8_unk,X
C - - - - - 0x01F66D 07:F65D: 60        RTS



tbl_ACCE:
- D 1 - - - 0x00ACDE 02:ACCE: C0        .byte $C0, $03   ; 00 
- D 1 - - - 0x00ACE0 02:ACD0: 80        .byte $80, $03   ; 01 
- D 1 - - - 0x00ACE2 02:ACD2: 40        .byte $40, $03   ; 02 
- D 1 - - - 0x00ACE4 02:ACD4: A0        .byte $A0, $03   ; 03 
- D 1 - - - 0x00ACE6 02:ACD6: 00        .byte $00, $02   ; 04 


; bzk garbage?
- - - - - - 0x00ACE8 02:ACD8: 30        .byte $30   ; 
- - - - - - 0x00ACE9 02:ACD9: 2C        .byte $2C   ; 
- - - - - - 0x00ACEA 02:ACDA: 34        .byte $34   ; 
- - - - - - 0x00ACEB 02:ACDB: 18        .byte $18   ; 



sub_ACDC:
C - - - - - 0x00ACEC 02:ACDC: 20 43 A0  JSR sub_A043_00B1x_AND_0F
C - - - - - 0x00ACEF 02:ACDF: A8        TAY
C - - - - - 0x00ACF0 02:ACE0: B9 7F 00  LDA ram_player_stats,Y
C - - - - - 0x00ACF3 02:ACE3: 29 F0     AND #$F0
C - - - - - 0x00ACF5 02:ACE5: C9 30     CMP #$30
C - - - - - 0x00ACF7 02:ACE7: 90 0C     BCC bra_ACF5_RTS
- - - - - - 0x00ACF9 02:ACE9: BD C8 07  LDA ram_07C8_unk,X
- - - - - - 0x00ACFC 02:ACEC: 29 1F     AND #$1F
- - - - - - 0x00ACFE 02:ACEE: C9 1C     CMP #$1C
- - - - - - 0x00AD00 02:ACF0: D0 03     BNE bra_ACF5_RTS
- - - - - - 0x00AD02 02:ACF2: 4C BE AC  JMP loc_ACBE
bra_ACF5_RTS:
C - - - - - 0x00AD05 02:ACF5: 60        RTS



sub_ACF6:
; in
    ; Y = 
C - - - - - 0x00AD06 02:ACF6: 84 00     STY ram_0000_t85
C - - - - - 0x00AD08 02:ACF8: 20 78 91  JSR sub_0x009188_stage_AND_01
C - - - - - 0x00AD0B 02:ACFB: F0 0D     BEQ bra_AD0A_side_view
; if upper view
C - - - - - 0x00AD0D 02:ACFD: 20 A2 A0  JSR sub_0x00A0B2_07AAx_AND_0F
C - - - - - 0x00AD10 02:AD00: D0 31     BNE bra_AD33
C - - - - - 0x00AD12 02:AD02: 20 AA A1  JSR sub_A1AA
C - - - - - 0x00AD15 02:AD05: 18        CLC
C - - - - - 0x00AD16 02:AD06: 69 01     ADC #$01
C - - - - - 0x00AD18 02:AD08: D0 2C     BNE bra_AD36
bra_AD0A_side_view:
C - - - - - 0x00AD1A 02:AD0A: 20 A4 A1  JSR sub_A1A4
C - - - - - 0x00AD1D 02:AD0D: D0 1F     BNE bra_AD2E
C - - - - - 0x00AD1F 02:AD0F: 20 A2 A0  JSR sub_0x00A0B2_07AAx_AND_0F
C - - - - - 0x00AD22 02:AD12: F0 0B     BEQ bra_AD1F
C - - - - - 0x00AD24 02:AD14: A8        TAY
C - - - - - 0x00AD25 02:AD15: 88        DEY
C - - - - - 0x00AD26 02:AD16: F0 1B     BEQ bra_AD33
C - - - - - 0x00AD28 02:AD18: B9 AE F5  LDA tbl_0x01F5BE,Y
C - - - - - 0x00AD2B 02:AD1B: 29 C6     AND #$C6
C - - - - - 0x00AD2D 02:AD1D: D0 14     BNE bra_AD33
bra_AD1F:
C - - - - - 0x00AD2F 02:AD1F: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x00AD32 02:AD22: 29 10     AND #$10
C - - - - - 0x00AD34 02:AD24: F0 04     BEQ bra_AD2A
C - - - - - 0x00AD36 02:AD26: A9 07     LDA #$07
C - - - - - 0x00AD38 02:AD28: D0 0C     BNE bra_AD36    ; jmp
bra_AD2A:
C - - - - - 0x00AD3A 02:AD2A: A9 03     LDA #$03
C - - - - - 0x00AD3C 02:AD2C: D0 08     BNE bra_AD36    ; jmp
bra_AD2E:
C - - - - - 0x00AD3E 02:AD2E: 20 A2 A0  JSR sub_0x00A0B2_07AAx_AND_0F
C - - - - - 0x00AD41 02:AD31: F0 EC     BEQ bra_AD1F
bra_AD33:
C - - - - - 0x00AD43 02:AD33: BD AA 07  LDA ram_07AA_unk,X
bra_AD36:
C - - - - - 0x00AD46 02:AD36: 29 0F     AND #$0F
C - - - - - 0x00AD48 02:AD38: 9D B2 06  STA ram_06B2_obj,X
C - - - - - 0x00AD4B 02:AD3B: A9 00     LDA #$00
C - - - - - 0x00AD4D 02:AD3D: 85 0A     STA ram_000A_t03
C - - - - - 0x00AD4F 02:AD3F: A5 00     LDA ram_0000_t85
C - - - - - 0x00AD51 02:AD41: 85 0B     STA ram_000B_t05
C - - - - - 0x00AD53 02:AD43: A9 01     LDA #$01
C - - - - - 0x00AD55 02:AD45: 85 0C     STA ram_000C_t01_distance
C - - - - - 0x00AD57 02:AD47: BC B2 06  LDY ram_06B2_obj,X
C - - - - - 0x00AD5A 02:AD4A: B9 51 AD  LDA tbl_AD51,Y
C - - - - - 0x00AD5D 02:AD4D: 9D B2 06  STA ram_06B2_obj,X
C - - - - - 0x00AD60 02:AD50: 60        RTS



tbl_AD51:
- - - - - - 0x00AD61 02:AD51: 00        .byte $00   ; 00 
- D 1 - - - 0x00AD62 02:AD52: C0        .byte $C0   ; 01 
- D 1 - - - 0x00AD63 02:AD53: E0        .byte $E0   ; 02 
- D 1 - - - 0x00AD64 02:AD54: 00        .byte $00   ; 03 
- D 1 - - - 0x00AD65 02:AD55: 20        .byte $20   ; 04 
- D 1 - - - 0x00AD66 02:AD56: 40        .byte $40   ; 05 
- D 1 - - - 0x00AD67 02:AD57: 60        .byte $60   ; 06 
- D 1 - - - 0x00AD68 02:AD58: 80        .byte $80   ; 07 
- D 1 - - - 0x00AD69 02:AD59: A0        .byte $A0   ; 08 



sub_AD5A:
C - - - - - 0x00AD6A 02:AD5A: B5 BE     LDA ram_00BE,X
C - - - - - 0x00AD6C 02:AD5C: 10 46     BPL bra_ADA4
C - - - - - 0x00AD6E 02:AD5E: 20 A2 A0  JSR sub_0x00A0B2_07AAx_AND_0F
C - - - - - 0x00AD71 02:AD61: A4 75     LDY ram_stage
C - - - - - 0x00AD73 02:AD63: F0 03     BEQ bra_AD68
C - - - - - 0x00AD75 02:AD65: 18        CLC
C - - - - - 0x00AD76 02:AD66: 69 09     ADC #$09
bra_AD68:
C - - - - - 0x00AD78 02:AD68: A8        TAY
C - - - - - 0x00AD79 02:AD69: A5 69     LDA ram_0069
C - - - - - 0x00AD7B 02:AD6B: 05 6A     ORA ram_006A
C - - - - - 0x00AD7D 02:AD6D: D0 2C     BNE bra_AD9B
C - - - - - 0x00AD7F 02:AD6F: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x00AD82 02:AD72: C9 11     CMP #$11
C - - - - - 0x00AD84 02:AD74: 90 0F     BCC bra_AD85
C - - - - - 0x00AD86 02:AD76: C9 F0     CMP #$F0
C - - - - - 0x00AD88 02:AD78: B0 14     BCS bra_AD8E
C - - - - - 0x00AD8A 02:AD7A: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x00AD8D 02:AD7D: C9 11     CMP #$11
C - - - - - 0x00AD8F 02:AD7F: 90 0D     BCC bra_AD8E
C - - - - - 0x00AD91 02:AD81: C9 B8     CMP #$B8
C - - - - - 0x00AD93 02:AD83: 90 16     BCC bra_AD9B
bra_AD85:
- - - - - - 0x00AD95 02:AD85: 20 A2 A0  JSR sub_0x00A0B2_07AAx_AND_0F
- - - - - - 0x00AD98 02:AD88: C9 05     CMP #$05
- - - - - - 0x00AD9A 02:AD8A: B0 09     BCS bra_AD95
- - - - - - 0x00AD9C 02:AD8C: 90 0D     BCC bra_AD9B    ; jmp
bra_AD8E:
- - - - - - 0x00AD9E 02:AD8E: 20 A2 A0  JSR sub_0x00A0B2_07AAx_AND_0F
- - - - - - 0x00ADA1 02:AD91: C9 06     CMP #$06
- - - - - - 0x00ADA3 02:AD93: B0 06     BCS bra_AD9B
bra_AD95:
- - - - - - 0x00ADA5 02:AD95: A0 00     LDY #$00
- - - - - - 0x00ADA7 02:AD97: 98        TYA
- - - - - - 0x00ADA8 02:AD98: 9D EA 07  STA ram_07EA,X
bra_AD9B:
C - - - - - 0x00ADAB 02:AD9B: B9 22 AE  LDA tbl_AE22,Y
C - - - - - 0x00ADAE 02:AD9E: 20 13 AE  JSR sub_AE13
C - - - - - 0x00ADB1 02:ADA1: 4C AA AD  JMP loc_ADAA
bra_ADA4:
C - - - - - 0x00ADB4 02:ADA4: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x00ADB7 02:ADA7: 20 13 AE  JSR sub_AE13
loc_ADAA:
C D 1 - - - 0x00ADBA 02:ADAA: B5 BE     LDA ram_00BE,X
C - - - - - 0x00ADBC 02:ADAC: 29 10     AND #$10
C - - - - - 0x00ADBE 02:ADAE: D0 05     BNE bra_ADB5
C - - - - - 0x00ADC0 02:ADB0: 20 43 A0  JSR sub_A043_00B1x_AND_0F
; * 04
C - - - - - 0x00ADC3 02:ADB3: 0A        ASL
C - - - - - 0x00ADC4 02:ADB4: 0A        ASL
bra_ADB5:
C - - - - - 0x00ADC5 02:ADB5: 85 1C     STA ram_001C_t08
C - - - - - 0x00ADC7 02:ADB7: 20 78 91  JSR sub_0x009188_stage_AND_01
C - - - - - 0x00ADCA 02:ADBA: D0 09     BNE bra_ADC5    ; if upper view
; if side view
C - - - - - 0x00ADCC 02:ADBC: 20 A4 A1  JSR sub_A1A4
C - - - - - 0x00ADCF 02:ADBF: F0 04     BEQ bra_ADC5
C - - - - - 0x00ADD1 02:ADC1: A9 00     LDA #$00
C - - - - - 0x00ADD3 02:ADC3: F0 02     BEQ bra_ADC7
bra_ADC5:
C - - - - - 0x00ADD5 02:ADC5: A5 1A     LDA ram_001A_t04
bra_ADC7:
C - - - - - 0x00ADD7 02:ADC7: 20 DD AD  JSR sub_ADDD
C - - - - - 0x00ADDA 02:ADCA: A5 18     LDA ram_0018_t07_lo
C - - - - - 0x00ADDC 02:ADCC: 85 1A     STA ram_001A_t08_lo
C - - - - - 0x00ADDE 02:ADCE: A5 19     LDA ram_0019_t03_hi
C - - - - - 0x00ADE0 02:ADD0: 85 1B     STA ram_001B_t02_hi
C - - - - - 0x00ADE2 02:ADD2: A5 1D     LDA ram_001D_t06
C - - - - - 0x00ADE4 02:ADD4: 20 DD AD  JSR sub_ADDD
C - - - - - 0x00ADE7 02:ADD7: BD D2 07  LDA ram_07D2_unk,X
C - - - - - 0x00ADEA 02:ADDA: 4C 36 AE  JMP loc_AE36



sub_ADDD:
C - - - - - 0x00ADED 02:ADDD: F0 2E     BEQ bra_AE0D
C - - - - - 0x00ADEF 02:ADDF: 10 1A     BPL bra_ADFB
C - - - - - 0x00ADF1 02:ADE1: 49 FF     EOR #$FF
C - - - - - 0x00ADF3 02:ADE3: 18        CLC
C - - - - - 0x00ADF4 02:ADE4: 65 1C     ADC ram_001C_t08
C - - - - - 0x00ADF6 02:ADE6: A8        TAY
C - - - - - 0x00ADF7 02:ADE7: B9 7B F6  LDA tbl_0x01F68B,Y
C - - - - - 0x00ADFA 02:ADEA: 49 FF     EOR #$FF
C - - - - - 0x00ADFC 02:ADEC: 18        CLC
C - - - - - 0x00ADFD 02:ADED: 69 01     ADC #< $0001
C - - - - - 0x00ADFF 02:ADEF: 85 18     STA ram_0018_t07_lo
C - - - - - 0x00AE01 02:ADF1: B9 7C F6  LDA tbl_0x01F68B + $01,Y
C - - - - - 0x00AE04 02:ADF4: 49 FF     EOR #$FF
C - - - - - 0x00AE06 02:ADF6: 69 00     ADC #> $0001
C - - - - - 0x00AE08 02:ADF8: 85 19     STA ram_0019_t03_hi
C - - - - - 0x00AE0A 02:ADFA: 60        RTS
bra_ADFB:
C - - - - - 0x00AE0B 02:ADFB: 38        SEC
C - - - - - 0x00AE0C 02:ADFC: E9 02     SBC #$02
C - - - - - 0x00AE0E 02:ADFE: 18        CLC
C - - - - - 0x00AE0F 02:ADFF: 65 1C     ADC ram_001C_t08
C - - - - - 0x00AE11 02:AE01: A8        TAY
C - - - - - 0x00AE12 02:AE02: B9 7B F6  LDA tbl_0x01F68B,Y
C - - - - - 0x00AE15 02:AE05: 85 18     STA ram_0018_t07_lo
C - - - - - 0x00AE17 02:AE07: B9 7C F6  LDA tbl_0x01F68B + $01,Y
bra_AE0A:
C - - - - - 0x00AE1A 02:AE0A: 85 19     STA ram_0019_t03_hi
C - - - - - 0x00AE1C 02:AE0C: 60        RTS
bra_AE0D:
C - - - - - 0x00AE1D 02:AE0D: A9 00     LDA #$00
C - - - - - 0x00AE1F 02:AE0F: 85 18     STA ram_0018_t07_lo
C - - - - - 0x00AE21 02:AE11: F0 F7     BEQ bra_AE0A    ; jmp



sub_AE13:
; in
    ; A (.... xxxx) = table index
; out
    ; ram_001A_t04
C - - - - - 0x00AE23 02:AE13: 29 0F     AND #$0F
C - - - - - 0x00AE25 02:AE15: 0A        ASL
C - - - - - 0x00AE26 02:AE16: A8        TAY
C - - - - - 0x00AE27 02:AE17: B9 69 F6  LDA tbl_0x01F679,Y
C - - - - - 0x00AE2A 02:AE1A: 85 1D     STA ram_001D_t06
C - - - - - 0x00AE2C 02:AE1C: B9 6A F6  LDA tbl_0x01F679 + $01,Y
C - - - - - 0x00AE2F 02:AE1F: 85 1A     STA ram_001A_t04
C - - - - - 0x00AE31 02:AE21: 60        RTS



tbl_AE22:
- D 1 - - - 0x00AE32 02:AE22: 00        .byte $00   ; 00 
- - - - - - 0x00AE33 02:AE23: 00        .byte $00   ; 01 
- - - - - - 0x00AE34 02:AE24: 04        .byte $04   ; 02 
- D 1 - - - 0x00AE35 02:AE25: 04        .byte $04   ; 03 
- - - - - - 0x00AE36 02:AE26: 04        .byte $04   ; 04 
- - - - - - 0x00AE37 02:AE27: 00        .byte $00   ; 05 
- - - - - - 0x00AE38 02:AE28: 08        .byte $08   ; 06 
- D 1 - - - 0x00AE39 02:AE29: 08        .byte $08   ; 07 
- - - - - - 0x00AE3A 02:AE2A: 08        .byte $08   ; 08 
- D 1 - - - 0x00AE3B 02:AE2B: 00        .byte $00   ; 09 
- D 1 - - - 0x00AE3C 02:AE2C: 00        .byte $00   ; 0A 
- D 1 - - - 0x00AE3D 02:AE2D: 02        .byte $02   ; 0B 
- D 1 - - - 0x00AE3E 02:AE2E: 02        .byte $02   ; 0C 
- D 1 - - - 0x00AE3F 02:AE2F: 02        .byte $02   ; 0D 
- - - - - - 0x00AE40 02:AE30: 00        .byte $00   ; 0E 
- - - - - - 0x00AE41 02:AE31: 06        .byte $06   ; 0F 
- D 1 - - - 0x00AE42 02:AE32: 06        .byte $06   ; 10 
- - - - - - 0x00AE43 02:AE33: 06        .byte $06   ; 11 



loc_AE34:
ofs_006_0x00AE44_09:
; con_F3D6_09
C D 1 J - - 0x00AE44 02:AE34: A9 00     LDA #$00
loc_AE36:
C D 1 - - - 0x00AE46 02:AE36: 85 1D     STA ram_001D_t07
loc_AE38:
C D 1 - - - 0x00AE48 02:AE38: B5 BE     LDA ram_00BE,X
C - - - - - 0x00AE4A 02:AE3A: 30 06     BMI bra_AE42
C - - - - - 0x00AE4C 02:AE3C: A5 1D     LDA ram_001D_t07
C - - - - - 0x00AE4E 02:AE3E: 29 02     AND #$02
C - - - - - 0x00AE50 02:AE40: D0 11     BNE bra_AE53
bra_AE42:
C - - - - - 0x00AE52 02:AE42: A5 18     LDA ram_0018_t07_lo
C - - - - - 0x00AE54 02:AE44: 18        CLC
C - - - - - 0x00AE55 02:AE45: 7D E6 07  ADC ram_07E6,X
C - - - - - 0x00AE58 02:AE48: 9D E6 07  STA ram_07E6,X
C - - - - - 0x00AE5B 02:AE4B: A5 19     LDA ram_0019_t03_hi
C - - - - - 0x00AE5D 02:AE4D: 7D E8 07  ADC ram_07E8,X
C - - - - - 0x00AE60 02:AE50: 9D E8 07  STA ram_07E8,X
bra_AE53:
C - - - - - 0x00AE63 02:AE53: 20 D1 F6  JSR sub_0x01F6E1
C - - - - - 0x00AE66 02:AE56: 90 22     BCC bra_AE7A_RTS
C - - - - - 0x00AE68 02:AE58: BD 00 06  LDA ram_0600_obj,X
C - - - - - 0x00AE6B 02:AE5B: 29 01     AND #$01
C - - - - - 0x00AE6D 02:AE5D: D0 0A     BNE bra_AE69
C - - - - - 0x00AE6F 02:AE5F: B5 BE     LDA ram_00BE,X
C - - - - - 0x00AE71 02:AE61: 30 06     BMI bra_AE69
C - - - - - 0x00AE73 02:AE63: A5 1D     LDA ram_001D_t07
C - - - - - 0x00AE75 02:AE65: 29 05     AND #$05
C - - - - - 0x00AE77 02:AE67: D0 11     BNE bra_AE7A_RTS
bra_AE69:
loc_AE69:
C D 1 - - - 0x00AE79 02:AE69: A5 1A     LDA ram_001A_t08_lo
C - - - - - 0x00AE7B 02:AE6B: 18        CLC
C - - - - - 0x00AE7C 02:AE6C: 7D EA 07  ADC ram_07EA,X
C - - - - - 0x00AE7F 02:AE6F: 9D EA 07  STA ram_07EA,X
C - - - - - 0x00AE82 02:AE72: A5 1B     LDA ram_001B_t02_hi
C - - - - - 0x00AE84 02:AE74: 7D EC 07  ADC ram_07EC,X
C - - - - - 0x00AE87 02:AE77: 9D EC 07  STA ram_07EC,X
bra_AE7A_RTS:
C - - - - - 0x00AE8A 02:AE7A: 60        RTS



loc_AE7B:
C D 1 - - - 0x00AE8B 02:AE7B: A5 75     LDA ram_stage
C - - - - - 0x00AE8D 02:AE7D: C9 03     CMP #$03
C - - - - - 0x00AE8F 02:AE7F: D0 6E     BNE bra_AEAC_RTS
C - - - - - 0x00AE91 02:AE81: AD 40 03  LDA ram_0340_flag
C - - - - - 0x00AE94 02:AE84: 30 69     BMI bra_AEAC_RTS
C - - - - - 0x00AE96 02:AE86: C9 02     CMP #$02
C - - - - - 0x00AE98 02:AE88: F0 65     BEQ bra_AEAC_RTS
C - - - - - 0x00AE9A 02:AE8A: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x00AE9D 02:AE8D: 85 03     STA ram_0003_t21
C - - - - - 0x00AE9F 02:AE8F: 20 0F F6  JSR sub_0x01F61F
C - - - - - 0x00AEA2 02:AE92: A4 02     LDY ram_0002_t35
C - - - - - 0x00AEA4 02:AE94: B9 DB B1  LDA tbl_B1DE - $03,Y
C - - - - - 0x00AEA7 02:AE97: D0 56     BNE bra_AEAC_RTS
C - - - - - 0x00AEA9 02:AE99: A5 3B     LDA ram_003B_t01
C - - - - - 0x00AEAB 02:AE9B: C9 01     CMP #$01
C - - - - - 0x00AEAD 02:AE9D: F0 50     BEQ bra_AEAC_RTS
C - - - - - 0x00AEAF 02:AE9F: A9 40     LDA #$40
C - - - - - 0x00AEB1 02:AEA1: 85 18     STA ram_0018_t07_lo
C - - - - - 0x00AEB3 02:AEA3: A9 00     LDA #$00
C - - - - - 0x00AEB5 02:AEA5: 85 19     STA ram_0019_t03_hi
C - - - - - 0x00AEB7 02:AEA7: 85 1B     STA ram_001B_t02_hi
C - - - - - 0x00AEB9 02:AEA9: 85 1A     STA ram_001A_t08_lo
C - - - - - 0x00AEBB 02:AEAB: BD D2 07  LDA ram_07D2_unk,X
C - - - - - 0x00AEBE 02:AEAE: 4C 36 AE  JMP loc_AE36
bra_AEAC_RTS:
                                        RTS



sub_AEF0:
ofs_006_0x00AF00_0B:
; con_F3D6_0B
C - - - - - 0x00AF00 02:AEF0: E0 02     CPX #$02
C - - - - - 0x00AF02 02:AEF2: B0 10     BCS bra_AF04
C - - - - - 0x00AF04 02:AEF4: B5 BE     LDA ram_00BE,X
C - - - - - 0x00AF06 02:AEF6: 29 EF     AND #$EF
C - - - - - 0x00AF08 02:AEF8: 95 BE     STA ram_00BE,X
C - - - - - 0x00AF0A 02:AEFA: 29 80     AND #$80
C - - - - - 0x00AF0C 02:AEFC: F0 06     BEQ bra_AF04
C - - - - - 0x00AF0E 02:AEFE: 20 3A B0  JSR sub_B03A
C - - - - - 0x00AF11 02:AF01: 4C 0F AF  JMP loc_AF0F
bra_AF04:
C - - - - - 0x00AF14 02:AF04: BD AE F5  LDA tbl_0x01F5BE,X
C - - - - - 0x00AF17 02:AF07: 49 FF     EOR #$FF
C - - - - - 0x00AF19 02:AF09: 2D 5A 03  AND ram_035A_bits
C - - - - - 0x00AF1C 02:AF0C: 8D 5A 03  STA ram_035A_bits
loc_AF0F:
; bzk optimize, LDY ram_x2_stage + CPY 06, without LDY at 0x00AF25
C D 1 - - - 0x00AF1F 02:AF0F: A4 75     LDY ram_stage
C - - - - - 0x00AF21 02:AF11: C0 03     CPY #$03
C - - - - - 0x00AF23 02:AF13: B0 DA     BCC bra_AF15
                                        RTS
bra_AF15:
C - - - - - 0x00AF25 02:AF15: A4 88     LDY ram_x2_stage
C - - - - - 0x00AF27 02:AF17: B9 55 B1  LDA tbl_B155,Y
C - - - - - 0x00AF2A 02:AF1A: 85 00     STA ram_0000_t11_data
C - - - - - 0x00AF2C 02:AF1C: B9 56 B1  LDA tbl_B155 + $01,Y
C - - - - - 0x00AF2F 02:AF1F: 85 01     STA ram_0000_t11_data + $01
C - - - - - 0x00AF31 02:AF21: A0 00     LDY #$00
C - - - - - 0x00AF33 02:AF23: B1 00     LDA (ram_0000_t11_data),Y
C - - - - - 0x00AF35 02:AF25: 85 04     STA ram_0004_t05_data_index_offset
C - - - - - 0x00AF37 02:AF27: AD 42 03  LDA ram_0342
C - - - - - 0x00AF3A 02:AF2A: 85 05     STA ram_0005_t02_data_index
C - - - - - 0x00AF3C 02:AF2C: A5 DD     LDA ram_00DD
C - - - - - 0x00AF3E 02:AF2E: 18        CLC
C - - - - - 0x00AF3F 02:AF2F: 7D 68 06  ADC ram_obj_pos_Y,X
C - - - - - 0x00AF42 02:AF32: 85 03     STA ram_0003_t23
C - - - - - 0x00AF44 02:AF34: 90 0C     BCC bra_AF42
C - - - - - 0x00AF46 02:AF36: 18        CLC
C - - - - - 0x00AF47 02:AF37: 69 10     ADC #$10
C - - - - - 0x00AF49 02:AF39: 85 03     STA ram_0003_t23
C - - - - - 0x00AF4B 02:AF3B: A5 05     LDA ram_0005_t02_data_index
C - - - - - 0x00AF4D 02:AF3D: 18        CLC
C - - - - - 0x00AF4E 02:AF3E: 65 04     ADC ram_0004_t05_data_index_offset
C - - - - - 0x00AF50 02:AF40: 85 05     STA ram_0005_t02_data_index
bra_AF42:
C - - - - - 0x00AF52 02:AF42: A5 61     LDA ram_0061_lo
C - - - - - 0x00AF54 02:AF44: 18        CLC
C - - - - - 0x00AF55 02:AF45: 7D 4E 06  ADC ram_obj_pos_X,X
C - - - - - 0x00AF58 02:AF48: 85 06     STA ram_0006_t12
C - - - - - 0x00AF5A 02:AF4A: 90 02     BCC bra_AF4E_not_overflow
C - - - - - 0x00AF5C 02:AF4C: E6 05     INC ram_0005_t02_data_index
bra_AF4E_not_overflow:
C - - - - - 0x00AF5E 02:AF4E: A4 05     LDY ram_0005_t02_data_index
C - - - - - 0x00AF60 02:AF50: C8        INY
C - - - - - 0x00AF61 02:AF51: B1 00     LDA (ram_0000_t11_data),Y
C - - - - - 0x00AF63 02:AF53: F0 59     BEQ bra_AFAE
C - - - - - 0x00AF65 02:AF55: A8        TAY
C - - - - - 0x00AF66 02:AF56: B9 09 B0  LDA tbl_B009,Y
C - - - - - 0x00AF69 02:AF59: 85 07     STA ram_0007_t07_loop_counter
C - - - - - 0x00AF6B 02:AF5B: B9 F1 AF  LDA tbl_AFF1,Y
C - - - - - 0x00AF6E 02:AF5E: 85 05     STA ram_0005_t03
C - - - - - 0x00AF70 02:AF60: A9 00     LDA #$00
C - - - - - 0x00AF72 02:AF62: 85 02     STA ram_0002_t36
bra_AF64_loop:
C - - - - - 0x00AF74 02:AF64: A5 05     LDA ram_0005_t03
; * 04
C - - - - - 0x00AF76 02:AF66: 0A        ASL
C - - - - - 0x00AF77 02:AF67: 0A        ASL
C - - - - - 0x00AF78 02:AF68: A8        TAY
C - - - - - 0x00AF79 02:AF69: B9 FC B1  LDA tbl_B1FC,Y
C - - - - - 0x00AF7C 02:AF6C: 38        SEC
C - - - - - 0x00AF7D 02:AF6D: E5 06     SBC ram_0006_t12
C - - - - - 0x00AF7F 02:AF6F: B0 02     BCS bra_AF73
C - - - - - 0x00AF81 02:AF71: 49 FF     EOR #$FF
bra_AF73:
C - - - - - 0x00AF83 02:AF73: D9 FD B1  CMP tbl_B1FC + $01,Y
C - - - - - 0x00AF86 02:AF76: B0 15     BCS bra_AF8D
C - - - - - 0x00AF88 02:AF78: B9 FE B1  LDA tbl_B1FC + $02,Y
C - - - - - 0x00AF8B 02:AF7B: 38        SEC
C - - - - - 0x00AF8C 02:AF7C: E5 03     SBC ram_0003_t23
C - - - - - 0x00AF8E 02:AF7E: B0 02     BCS bra_AF82
C - - - - - 0x00AF90 02:AF80: 49 FF     EOR #$FF
bra_AF82:
C - - - - - 0x00AF92 02:AF82: D9 FF B1  CMP tbl_B1FC + $03,Y
C - - - - - 0x00AF95 02:AF85: B0 06     BCS bra_AF8D
C - - - - - 0x00AF97 02:AF87: 20 B7 AF  JSR sub_AFB7
C - - - - - 0x00AF9A 02:AF8A: 4C 94 AF  JMP loc_AF94
bra_AF8D:
C - - - - - 0x00AF9D 02:AF8D: E0 02     CPX #$02
C - - - - - 0x00AF9F 02:AF8F: 90 03     BCC bra_AF94
C - - - - - 0x00AFA1 02:AF91: 20 AE AF  JSR sub_AFAE
bra_AF94:
loc_AF94:
C D 1 - - - 0x00AFA4 02:AF94: E6 05     INC ram_0005_t03
C - - - - - 0x00AFA6 02:AF96: C6 07     DEC ram_0007_t07_loop_counter
C - - - - - 0x00AFA8 02:AF98: D0 CA     BNE bra_AF64_loop
C - - - - - 0x00AFAA 02:AF9A: E0 02     CPX #$02
C - - - - - 0x00AFAC 02:AF9C: B0 0C     BCS bra_AFAA
C - - - - - 0x00AFAE 02:AF9E: B5 BE     LDA ram_00BE,X
C - - - - - 0x00AFB0 02:AFA0: 29 02     AND #$02
C - - - - - 0x00AFB2 02:AFA2: D0 12     BNE bra_AFB6_RTS
C - - - - - 0x00AFB4 02:AFA4: B5 BE     LDA ram_00BE,X
C - - - - - 0x00AFB6 02:AFA6: 29 FC     AND #$FC
C - - - - - 0x00AFB8 02:AFA8: 95 BE     STA ram_00BE,X
bra_AFAA:
C - - - - - 0x00AFBA 02:AFAA: A5 02     LDA ram_0002_t36
C - - - - - 0x00AFBC 02:AFAC: D0 08     BNE bra_AFB6_RTS
bra_AFAE:
sub_AFAE:
C - - - - - 0x00AFBE 02:AFAE: BD 34 06  LDA ram_obj_animation_hi,X
C - - - - - 0x00AFC1 02:AFB1: 29 7F     AND #$7F
C - - - - - 0x00AFC3 02:AFB3: 9D 34 06  STA ram_obj_animation_hi,X
bra_AFB6_RTS:
C - - - - - 0x00AFC6 02:AFB6: 60        RTS



sub_AFB7:
C - - - - - 0x00AFC7 02:AFB7: A4 05     LDY ram_0005_t03
C - - - - - 0x00AFC9 02:AFB9: B9 CA AF  LDA tbl_AFCA,Y
C - - - - - 0x00AFCC 02:AFBC: A8        TAY
C - - - - - 0x00AFCD 02:AFBD: B9 22 B0  LDA tbl_B022,Y
C - - - - - 0x00AFD0 02:AFC0: 85 00     STA ram_0000_t16_jmp
C - - - - - 0x00AFD2 02:AFC2: B9 23 B0  LDA tbl_B022 + $01,Y
C - - - - - 0x00AFD5 02:AFC5: 85 01     STA ram_0000_t16_jmp + $01
C - - - - - 0x00AFD7 02:AFC7: 6C 00 00  JMP (ram_0000_t16_jmp)



tbl_AFCA:
- D 1 - - - 0x00AFDA 02:AFCA: 00        .byte $00   ; 00 
- D 1 - - - 0x00AFDB 02:AFCB: 02        .byte $02   ; 01 
- D 1 - - - 0x00AFDC 02:AFCC: 02        .byte $02   ; 02 
- D 1 - - - 0x00AFDD 02:AFCD: 02        .byte $02   ; 03 
- D 1 - - - 0x00AFDE 02:AFCE: 02        .byte $02   ; 04 
- D 1 - - - 0x00AFDF 02:AFCF: 02        .byte $02   ; 05 
- D 1 - - - 0x00AFE0 02:AFD0: 02        .byte $02   ; 06 
- - - - - - 0x00AFE1 02:AFD1: 06        .byte $06   ; 07 
- - - - - - 0x00AFE2 02:AFD2: 08        .byte $08   ; 08 
- D 1 - - - 0x00AFE3 02:AFD3: 0E        .byte $0E   ; 09 
- - - - - - 0x00AFE4 02:AFD4: 06        .byte $06   ; 0A 
- - - - - - 0x00AFE5 02:AFD5: 08        .byte $08   ; 0B 
- - - - - - 0x00AFE6 02:AFD6: 0E        .byte $0E   ; 0C 
- D 1 - - - 0x00AFE7 02:AFD7: 06        .byte $06   ; 0D 
- D 1 - - - 0x00AFE8 02:AFD8: 08        .byte $08   ; 0E 
- D 1 - - - 0x00AFE9 02:AFD9: 0E        .byte $0E   ; 0F 
- D 1 - - - 0x00AFEA 02:AFDA: 06        .byte $06   ; 10 
- D 1 - - - 0x00AFEB 02:AFDB: 08        .byte $08   ; 11 
- D 1 - - - 0x00AFEC 02:AFDC: 0A        .byte $0A   ; 12 
- D 1 - - - 0x00AFED 02:AFDD: 0A        .byte $0A   ; 13 
- D 1 - - - 0x00AFEE 02:AFDE: 0C        .byte $0C   ; 14 
- - - - - - 0x00AFEF 02:AFDF: 0C        .byte $0C   ; 15 
- D 1 - - - 0x00AFF0 02:AFE0: 0A        .byte $0A   ; 16 
- D 1 - - - 0x00AFF1 02:AFE1: 0C        .byte $0C   ; 17 
- - - - - - 0x00AFF2 02:AFE2: 0E        .byte $0E   ; 18 
- - - - - - 0x00AFF3 02:AFE3: 0E        .byte $0E   ; 19 
- - - - - - 0x00AFF4 02:AFE4: 0E        .byte $0E   ; 1A 
- - - - - - 0x00AFF5 02:AFE5: 0E        .byte $0E   ; 1B 
- D 1 - - - 0x00AFF6 02:AFE6: 02        .byte $02   ; 1C 
- D 1 - - - 0x00AFF7 02:AFE7: 02        .byte $02   ; 1D 
- D 1 - - - 0x00AFF8 02:AFE8: 02        .byte $02   ; 1E 
- D 1 - - - 0x00AFF9 02:AFE9: 02        .byte $02   ; 1F 
- - - - - - 0x00AFFA 02:AFEA: 02        .byte $02   ; 20 
- D 1 - - - 0x00AFFB 02:AFEB: 02        .byte $02   ; 21 
- D 1 - - - 0x00AFFC 02:AFEC: 02        .byte $02   ; 22 
- D 1 - - - 0x00AFFD 02:AFED: 02        .byte $02   ; 23 
- D 1 - - - 0x00AFFE 02:AFEE: 0A        .byte $0A   ; 24 
- D 1 - - - 0x00AFFF 02:AFEF: 04        .byte $04   ; 25 
- - - - - - 0x00B000 02:AFF0: 02        .byte $02   ; 26 




tbl_AFF1:
- - - - - - 0x00B001 02:AFF1: 02        .byte $02   ; 
- D 1 - - - 0x00B002 02:AFF2: 00        .byte $00   ; 
- D 1 - - - 0x00B003 02:AFF3: 01        .byte $01   ; 
- D 1 - - - 0x00B004 02:AFF4: 02        .byte $02   ; 
- D 1 - - - 0x00B005 02:AFF5: 03        .byte $03   ; 
- D 1 - - - 0x00B006 02:AFF6: 04        .byte $04   ; 
- D 1 - - - 0x00B007 02:AFF7: 05        .byte $05   ; 
- D 1 - - - 0x00B008 02:AFF8: 06        .byte $06   ; 
- D 1 - - - 0x00B009 02:AFF9: 07        .byte $07   ; 
- D 1 - - - 0x00B00A 02:AFFA: 0A        .byte $0A   ; 
- D 1 - - - 0x00B00B 02:AFFB: 0D        .byte $0D   ; 
- D 1 - - - 0x00B00C 02:AFFC: 10        .byte $10   ; 
- D 1 - - - 0x00B00D 02:AFFD: 12        .byte $12   ; 
- D 1 - - - 0x00B00E 02:AFFE: 13        .byte $13   ; 
- D 1 - - - 0x00B00F 02:AFFF: 16        .byte $16   ; 
- D 1 - - - 0x00B010 02:B000: 18        .byte $18   ; 
- D 1 - - - 0x00B011 02:B001: 1A        .byte $1A   ; 
- D 1 - - - 0x00B012 02:B002: 1C        .byte $1C   ; 
- D 1 - - - 0x00B013 02:B003: 1D        .byte $1D   ; 
- D 1 - - - 0x00B014 02:B004: 1F        .byte $1F   ; 
- D 1 - - - 0x00B015 02:B005: 23        .byte $23   ; 
- D 1 - - - 0x00B016 02:B006: 24        .byte $24   ; 
- D 1 - - - 0x00B017 02:B007: 25        .byte $25   ; 
- D 1 - - - 0x00B018 02:B008: 26        .byte $26   ; 



tbl_B009:
- D 1 - - - 0x00B019 02:B009: 27        .byte $27   ; 
- D 1 - - - 0x00B01A 02:B00A: 01        .byte $01   ; 
- D 1 - - - 0x00B01B 02:B00B: 01        .byte $01   ; 
- D 1 - - - 0x00B01C 02:B00C: 01        .byte $01   ; 
- D 1 - - - 0x00B01D 02:B00D: 01        .byte $01   ; 
- D 1 - - - 0x00B01E 02:B00E: 01        .byte $01   ; 
- D 1 - - - 0x00B01F 02:B00F: 01        .byte $01   ; 
- D 1 - - - 0x00B020 02:B010: 01        .byte $01   ; 
- D 1 - - - 0x00B021 02:B011: 03        .byte $03   ; 
- D 1 - - - 0x00B022 02:B012: 03        .byte $03   ; 
- D 1 - - - 0x00B023 02:B013: 03        .byte $03   ; 
- D 1 - - - 0x00B024 02:B014: 02        .byte $02   ; 
- D 1 - - - 0x00B025 02:B015: 01        .byte $01   ; 
- D 1 - - - 0x00B026 02:B016: 03        .byte $03   ; 
- D 1 - - - 0x00B027 02:B017: 02        .byte $02   ; 
- D 1 - - - 0x00B028 02:B018: 02        .byte $02   ; 
- D 1 - - - 0x00B029 02:B019: 02        .byte $02   ; 
- D 1 - - - 0x00B02A 02:B01A: 01        .byte $01   ; 
- D 1 - - - 0x00B02B 02:B01B: 02        .byte $02   ; 
- D 1 - - - 0x00B02C 02:B01C: 04        .byte $04   ; 
- D 1 - - - 0x00B02D 02:B01D: 01        .byte $01   ; 
- D 1 - - - 0x00B02E 02:B01E: 01        .byte $01   ; 
- D 1 - - - 0x00B02F 02:B01F: 01        .byte $01   ; 
- D 1 - - - 0x00B030 02:B020: 01        .byte $01   ; 
- D 1 - - - 0x00B031 02:B021: 01        .byte $01   ; 



tbl_B022:
- D 1 - - - 0x00B032 02:B022: 47 B1     .word ofs_015_B147_00
- D 1 - - - 0x00B034 02:B024: 38 B1     .word ofs_015_B138_02
- D 1 - - - 0x00B036 02:B026: 4E B1     .word ofs_015_B14E_04
- D 1 - - - 0x00B038 02:B028: 1E B1     .word ofs_015_B11E_06
- D 1 - - - 0x00B03A 02:B02A: 2C B1     .word ofs_015_B12C_08
- D 1 - - - 0x00B03C 02:B02C: E3 B0     .word ofs_015_B0E3_0A
- D 1 - - - 0x00B03E 02:B02E: DB B0     .word ofs_015_B0DB_0C
- D 1 - - - 0x00B040 02:B030: D4 B0     .word ofs_015_B0D4_0E



sub_B032:
C - - - - - 0x00B042 02:B032: 18        CLC
C - - - - - 0x00B043 02:B033: 7D 68 06  ADC ram_obj_pos_Y,X
C - - - - - 0x00B046 02:B036: 9D 68 06  STA ram_obj_pos_Y,X
C - - - - - 0x00B049 02:B039: 60        RTS



sub_B03A:
C - - - - - 0x00B04A 02:B03A: BD AE F5  LDA tbl_0x01F5BE,X
C - - - - - 0x00B04D 02:B03D: 2D 5A 03  AND ram_035A_bits
C - - - - - 0x00B050 02:B040: D0 66     BNE bra_B0A8
C - - - - - 0x00B052 02:B042: BD AE F5  LDA tbl_0x01F5BE,X
C - - - - - 0x00B055 02:B045: 0D 5A 03  ORA ram_035A_bits
C - - - - - 0x00B058 02:B048: 8D 5A 03  STA ram_035A_bits
C - - - - - 0x00B05B 02:B04B: A9 F8     LDA #$F8
C - - - - - 0x00B05D 02:B04D: 20 32 B0  JSR sub_B032
C - - - - - 0x00B060 02:B050: A0 00     LDY #$00
C - - - - - 0x00B062 02:B052: 20 A3 A4  JSR sub_A4A3
C - - - - - 0x00B065 02:B055: C0 05     CPY #$05
C - - - - - 0x00B067 02:B057: F0 05     BEQ bra_B05E
C - - - - - 0x00B069 02:B059: A9 08     LDA #$08
C - - - - - 0x00B06B 02:B05B: 20 32 B0  JSR sub_B032
bra_B05E:
C - - - - - 0x00B06E 02:B05E: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x00B071 02:B061: 29 07     AND #$07
C - - - - - 0x00B073 02:B063: 85 19     STA ram_0019_t05
C - - - - - 0x00B075 02:B065: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x00B078 02:B068: 29 F8     AND #$F8
C - - - - - 0x00B07A 02:B06A: 9D 68 06  STA ram_obj_pos_Y,X
C - - - - - 0x00B07D 02:B06D: A5 61     LDA ram_0061_lo
C - - - - - 0x00B07F 02:B06F: 18        CLC
C - - - - - 0x00B080 02:B070: 7D 4E 06  ADC ram_obj_pos_X,X
C - - - - - 0x00B083 02:B073: 29 07     AND #$07
C - - - - - 0x00B085 02:B075: A4 75     LDY ram_stage
C - - - - - 0x00B087 02:B077: F0 05     BEQ bra_B07E
C - - - - - 0x00B089 02:B079: 49 07     EOR #$07
C - - - - - 0x00B08B 02:B07B: 18        CLC
C - - - - - 0x00B08C 02:B07C: 69 01     ADC #$01
bra_B07E:
C - - - - - 0x00B08E 02:B07E: 38        SEC
C - - - - - 0x00B08F 02:B07F: E5 64     SBC ram_0064_lo
C - - - - - 0x00B091 02:B081: 29 07     AND #$07
C - - - - - 0x00B093 02:B083: A4 75     LDY ram_stage
C - - - - - 0x00B095 02:B085: F0 06     BEQ bra_B08D
C - - - - - 0x00B097 02:B087: C5 19     CMP ram_0019_t05
C - - - - - 0x00B099 02:B089: B0 08     BCS bra_B093
C - - - - - 0x00B09B 02:B08B: 09 08     ORA #$08
bra_B08D:
C - - - - - 0x00B09D 02:B08D: C5 19     CMP ram_0019_t05
C - - - - - 0x00B09F 02:B08F: 90 02     BCC bra_B093
C - - - - - 0x00B0A1 02:B091: 69 01     ADC #$01
bra_B093:
C - - - - - 0x00B0A3 02:B093: 20 32 B0  JSR sub_B032
C - - - - - 0x00B0A6 02:B096: A5 75     LDA ram_stage
C - - - - - 0x00B0A8 02:B098: C9 04     CMP #$04
C - - - - - 0x00B0AA 02:B09A: D0 0C     BNE bra_B0A8
C - - - - - 0x00B0AC 02:B09C: 20 D1 A2  JSR sub_A2D1
C - - - - - 0x00B0AF 02:B09F: C9 01     CMP #$01
C - - - - - 0x00B0B1 02:B0A1: D0 05     BNE bra_B0A8
- - - - - - 0x00B0B3 02:B0A3: A9 F8     LDA #$F8
- - - - - - 0x00B0B5 02:B0A5: 20 32 B0  JSR sub_B032
bra_B0A8:
C - - - - - 0x00B0B8 02:B0A8: A5 75     LDA ram_stage
C - - - - - 0x00B0BA 02:B0AA: D0 2E     BNE bra_B0DA_RTS
C - - - - - 0x00B0BC 02:B0AC: 20 A2 A0  JSR sub_0x00A0B2_07AAx_AND_0F
C - - - - - 0x00B0BF 02:B0AF: F0 0B     BEQ bra_B0BC
C - - - - - 0x00B0C1 02:B0B1: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x00B0C4 02:B0B4: C9 12     CMP #$12
C - - - - - 0x00B0C6 02:B0B6: B0 04     BCS bra_B0BC
- - - - - - 0x00B0C8 02:B0B8: A5 69     LDA ram_0069
- - - - - - 0x00B0CA 02:B0BA: F0 1E     BEQ bra_B0DA_RTS
bra_B0BC:
; bzk optimize, useless LDA + STA
C - - - - - 0x00B0CC 02:B0BC: A9 04     LDA #$04
C - - - - - 0x00B0CE 02:B0BE: 85 1C     STA ram_001C_t15_useless
C - - - - - 0x00B0D0 02:B0C0: A9 00     LDA #$00
C - - - - - 0x00B0D2 02:B0C2: 85 19     STA ram_0019_t03_hi
C - - - - - 0x00B0D4 02:B0C4: 85 1B     STA ram_001B_t02_hi
; bzk optimize, useless LDA + STA
C - - - - - 0x00B0D6 02:B0C6: BD D2 07  LDA ram_07D2_unk,X
C - - - - - 0x00B0D9 02:B0C9: 85 1D     STA ram_001D_t17_useless
C - - - - - 0x00B0DB 02:B0CB: A0 80     LDY #$80
C - - - - - 0x00B0DD 02:B0CD: 84 18     STY ram_0018_t07_lo
C - - - - - 0x00B0DF 02:B0CF: 84 1A     STY ram_001A_t08_lo
bra_B0D1:
C - - - - - 0x00B0E1 02:B0D1: 4C 34 AE  JMP loc_AE34



ofs_015_B0D4_0E:
C - - J - - 0x00B0E4 02:B0D4: B5 BE     LDA ram_00BE,X
C - - - - - 0x00B0E6 02:B0D6: 09 10     ORA #$10
C - - - - - 0x00B0E8 02:B0D8: 95 BE     STA ram_00BE,X
bra_B0DA_RTS:
C - - - - - 0x00B0EA 02:B0DA: 60        RTS



ofs_015_B0DB_0C:
C - - J - - 0x00B0EB 02:B0DB: A9 03     LDA #$03
C - - - - - 0x00B0ED 02:B0DD: 85 1C     STA ram_001C_t09
C - - - - - 0x00B0EF 02:B0DF: A9 00     LDA #$00
C - - - - - 0x00B0F1 02:B0E1: F0 06     BEQ bra_B0E9    ; jmp



ofs_015_B0E3_0A:
C - - J - - 0x00B0F3 02:B0E3: A9 07     LDA #$07
C - - - - - 0x00B0F5 02:B0E5: 85 1C     STA ram_001C_t09
C - - - - - 0x00B0F7 02:B0E7: A9 FF     LDA #$FF
bra_B0E9:
C - - - - - 0x00B0F9 02:B0E9: 85 19     STA ram_0019_t03_hi
C - - - - - 0x00B0FB 02:B0EB: BD D2 07  LDA ram_07D2_unk,X
C - - - - - 0x00B0FE 02:B0EE: 85 1D     STA ram_001D_t07
C - - - - - 0x00B100 02:B0F0: A9 80     LDA #$80
C - - - - - 0x00B102 02:B0F2: 85 18     STA ram_0018_t07_lo
C - - - - - 0x00B104 02:B0F4: A9 00     LDA #$00
C - - - - - 0x00B106 02:B0F6: 85 1A     STA ram_001A_t08_lo
C - - - - - 0x00B108 02:B0F8: 85 1B     STA ram_001B_t02_hi
C - - - - - 0x00B10A 02:B0FA: B5 BE     LDA ram_00BE,X
C - - - - - 0x00B10C 02:B0FC: 29 04     AND #$04
C - - - - - 0x00B10E 02:B0FE: F0 DA     BEQ bra_B0DA_RTS
C - - - - - 0x00B110 02:B100: 20 A8 A0  JSR sub_A0A8
C - - - - - 0x00B113 02:B103: D0 06     BNE bra_B10B
- - - - - - 0x00B115 02:B105: A5 1D     LDA ram_001D_t07
- - - - - - 0x00B117 02:B107: 29 FD     AND #$02 ^ $FF
- - - - - - 0x00B119 02:B109: 85 1D     STA ram_001D_t07
bra_B10B:
C - - - - - 0x00B11B 02:B10B: 20 A2 A0  JSR sub_0x00A0B2_07AAx_AND_0F
C - - - - - 0x00B11E 02:B10E: 38        SEC
C - - - - - 0x00B11F 02:B10F: E5 1C     SBC ram_001C_t09
C - - - - - 0x00B121 02:B111: B0 02     BCS bra_B115
C - - - - - 0x00B123 02:B113: 49 FF     EOR #$FF
bra_B115:
C - - - - - 0x00B125 02:B115: C9 02     CMP #$02
C - - - - - 0x00B127 02:B117: 90 02     BCC bra_B11B
C - - - - - 0x00B129 02:B119: B0 B6     BCS bra_B0D1    ; jmp
bra_B11B:
C - - - - - 0x00B12B 02:B11B: 4C 38 AE  JMP loc_AE38



ofs_015_B11E_06:
C - - J - - 0x00B12E 02:B11E: A5 02     LDA ram_0002_t36
C - - - - - 0x00B130 02:B120: D0 16     BNE bra_B138
C - - - - - 0x00B132 02:B122: B5 BE     LDA ram_00BE,X
C - - - - - 0x00B134 02:B124: 29 FC     AND #$FC
C - - - - - 0x00B136 02:B126: 09 01     ORA #$01
C - - - - - 0x00B138 02:B128: 95 BE     STA ram_00BE,X
C - - - - - 0x00B13A 02:B12A: D0 0C     BNE bra_B138    ; jmp



ofs_015_B12C_08:
C - - J - - 0x00B13C 02:B12C: B5 BE     LDA ram_00BE,X
C - - - - - 0x00B13E 02:B12E: 29 01     AND #$01
C - - - - - 0x00B140 02:B130: F0 A8     BEQ bra_B0DA_RTS
C - - - - - 0x00B142 02:B132: A9 03     LDA #$03
C - - - - - 0x00B144 02:B134: 15 BE     ORA ram_00BE,X
C - - - - - 0x00B146 02:B136: 95 BE     STA ram_00BE,X
bra_B138:
ofs_015_B138_02:
C - - - - - 0x00B148 02:B138: E6 02     INC ram_0002_t36
C - - - - - 0x00B14A 02:B13A: BD 34 06  LDA ram_obj_animation_hi,X
C - - - - - 0x00B14D 02:B13D: 09 80     ORA #$80
C - - - - - 0x00B14F 02:B13F: 9D 34 06  STA ram_obj_animation_hi,X
C - - - - - 0x00B152 02:B142: A9 00     LDA #$00
C - - - - - 0x00B154 02:B144: 85 BC     STA ram_00BC_counter
C - - - - - 0x00B156 02:B146: 60        RTS



ofs_015_B147_00:
C - - J - - 0x00B157 02:B147: A5 BB     LDA ram_00BB
C - - - - - 0x00B159 02:B149: D0 02     BNE bra_B14D_RTS
C - - - - - 0x00B15B 02:B14B: E6 BB     INC ram_00BB   ; -> 01
bra_B14D_RTS:
C - - - - - 0x00B15D 02:B14D: 60        RTS



ofs_015_B14E_04:
C - - J - - 0x00B15E 02:B14E: A5 BC     LDA ram_00BC_counter
C - - - - - 0x00B160 02:B150: D0 FB     BNE bra_B14D_RTS
C - - - - - 0x00B162 02:B152: E6 BC     INC ram_00BC_counter
C - - - - - 0x00B164 02:B154: 60        RTS



tbl_B155:
- D 1 - - - 0x00B165 02:B155: C5 B1     .word _off021_B1C5_00_stage_1
- D 1 - - - 0x00B167 02:B157: 5F B1     .word _off021_B15F_02_stage_2
- D 1 - - - 0x00B169 02:B159: A1 B1     .word _off021_B1A1_04_stage_3



_off021_B15F_02_stage_2:
- D 1 - I - 0x00B16F 02:B15F: 05        .byte $05   ; 
- - - - - - 0x00B170 02:B160: 00        .byte $00   ; 
- D 1 - I - 0x00B171 02:B161: 01        .byte $01   ; 
- - - - - - 0x00B172 02:B162: 00        .byte $00   ; 
- - - - - - 0x00B173 02:B163: 00        .byte $00   ; 
- D 1 - I - 0x00B174 02:B164: 14        .byte $14   ; 
- - - - - - 0x00B175 02:B165: 00        .byte $00   ; 
- D 1 - I - 0x00B176 02:B166: 16        .byte $16   ; 
- - - - - - 0x00B177 02:B167: 16        .byte $16   ; 
- - - - - - 0x00B178 02:B168: 00        .byte $00   ; 
- D 1 - I - 0x00B179 02:B169: 13        .byte $13   ; 
- - - - - - 0x00B17A 02:B16A: 00        .byte $00   ; 
- D 1 - I - 0x00B17B 02:B16B: 00        .byte $00   ; 
- D 1 - I - 0x00B17C 02:B16C: 00        .byte $00   ; 
- - - - - - 0x00B17D 02:B16D: 00        .byte $00   ; 
- D 1 - I - 0x00B17E 02:B16E: 12        .byte $12   ; 
- - - - - - 0x00B17F 02:B16F: 00        .byte $00   ; 
- D 1 - I - 0x00B180 02:B170: 00        .byte $00   ; 
- D 1 - I - 0x00B181 02:B171: 00        .byte $00   ; 
- - - - - - 0x00B182 02:B172: 00        .byte $00   ; 
- D 1 - I - 0x00B183 02:B173: 11        .byte $11   ; 
- - - - - - 0x00B184 02:B174: 00        .byte $00   ; 
- - - - - - 0x00B185 02:B175: 00        .byte $00   ; 
- D 1 - I - 0x00B186 02:B176: 00        .byte $00   ; 
- - - - - - 0x00B187 02:B177: 00        .byte $00   ; 
- - - - - - 0x00B188 02:B178: 00        .byte $00   ; 
- - - - - - 0x00B189 02:B179: 00        .byte $00   ; 
- D 1 - I - 0x00B18A 02:B17A: 00        .byte $00   ; 
- D 1 - I - 0x00B18B 02:B17B: 00        .byte $00   ; 
- - - - - - 0x00B18C 02:B17C: 00        .byte $00   ; 
- - - - - - 0x00B18D 02:B17D: 00        .byte $00   ; 
- - - - - - 0x00B18E 02:B17E: 00        .byte $00   ; 
- D 1 - I - 0x00B18F 02:B17F: 0B        .byte $0B   ; 
- D 1 - I - 0x00B190 02:B180: 0A        .byte $0A   ; 
- - - - - - 0x00B191 02:B181: 00        .byte $00   ; 
- - - - - - 0x00B192 02:B182: 00        .byte $00   ; 
- - - - - - 0x00B193 02:B183: 00        .byte $00   ; 
- D 1 - I - 0x00B194 02:B184: 09        .byte $09   ; 
- D 1 - I - 0x00B195 02:B185: 08        .byte $08   ; 
- - - - - - 0x00B196 02:B186: 00        .byte $00   ; 
- - - - - - 0x00B197 02:B187: 00        .byte $00   ; 
- - - - - - 0x00B198 02:B188: 00        .byte $00   ; 
- D 1 - I - 0x00B199 02:B189: 00        .byte $00   ; 
- D 1 - I - 0x00B19A 02:B18A: 00        .byte $00   ; 
- D 1 - I - 0x00B19B 02:B18B: 00        .byte $00   ; 
- - - - - - 0x00B19C 02:B18C: 00        .byte $00   ; 
- - - - - - 0x00B19D 02:B18D: 00        .byte $00   ; 
- - - - - - 0x00B19E 02:B18E: 00        .byte $00   ; 
- - - - - - 0x00B19F 02:B18F: 00        .byte $00   ; 
- D 1 - I - 0x00B1A0 02:B190: 00        .byte $00   ; 
- - - - - - 0x00B1A1 02:B191: 00        .byte $00   ; 
- - - - - - 0x00B1A2 02:B192: 00        .byte $00   ; 
- - - - - - 0x00B1A3 02:B193: 00        .byte $00   ; 
- - - - - - 0x00B1A4 02:B194: 00        .byte $00   ; 
- D 1 - I - 0x00B1A5 02:B195: 10        .byte $10   ; 
- - - - - - 0x00B1A6 02:B196: 00        .byte $00   ; 
- - - - - - 0x00B1A7 02:B197: 00        .byte $00   ; 
- - - - - - 0x00B1A8 02:B198: 00        .byte $00   ; 
- - - - - - 0x00B1A9 02:B199: 00        .byte $00   ; 
- D 1 - I - 0x00B1AA 02:B19A: 0F        .byte $0F   ; 
- - - - - - 0x00B1AB 02:B19B: 00        .byte $00   ; 
- - - - - - 0x00B1AC 02:B19C: 00        .byte $00   ; 
- - - - - - 0x00B1AD 02:B19D: 00        .byte $00   ; 
- - - - - - 0x00B1AE 02:B19E: 00        .byte $00   ; 
- D 1 - I - 0x00B1AF 02:B19F: 00        .byte $00   ; 
- D 1 - I - 0x00B1B0 02:B1A0: 00        .byte $00   ; 



_off021_B1A1_04_stage_3:
- D 1 - I - 0x00B1B1 02:B1A1: 05        .byte $05   ; 
- - - - - - 0x00B1B2 02:B1A2: 00        .byte $00   ; 
- - - - - - 0x00B1B3 02:B1A3: 00        .byte $00   ; 
- - - - - - 0x00B1B4 02:B1A4: 00        .byte $00   ; 
- - - - - - 0x00B1B5 02:B1A5: 00        .byte $00   ; 
- - - - - - 0x00B1B6 02:B1A6: 00        .byte $00   ; 
- D 1 - I - 0x00B1B7 02:B1A7: 00        .byte $00   ; 
- D 1 - I - 0x00B1B8 02:B1A8: 00        .byte $00   ; 
- D 1 - I - 0x00B1B9 02:B1A9: 00        .byte $00   ; 
- D 1 - I - 0x00B1BA 02:B1AA: 00        .byte $00   ; 
- - - - - - 0x00B1BB 02:B1AB: 00        .byte $00   ; 
- D 1 - I - 0x00B1BC 02:B1AC: 00        .byte $00   ; 
- D 1 - I - 0x00B1BD 02:B1AD: 00        .byte $00   ; 
- - - - - - 0x00B1BE 02:B1AE: 00        .byte $00   ; 
- D 1 - I - 0x00B1BF 02:B1AF: 00        .byte $00   ; 
- D 1 - I - 0x00B1C0 02:B1B0: 00        .byte $00   ; 
- - - - - - 0x00B1C1 02:B1B1: 00        .byte $00   ; 
- D 1 - I - 0x00B1C2 02:B1B2: 00        .byte $00   ; 
- D 1 - I - 0x00B1C3 02:B1B3: 18        .byte $18   ; 
- D 1 - I - 0x00B1C4 02:B1B4: 17        .byte $17   ; 
- D 1 - I - 0x00B1C5 02:B1B5: 00        .byte $00   ; 
- - - - - - 0x00B1C6 02:B1B6: 00        .byte $00   ; 
- D 1 - I - 0x00B1C7 02:B1B7: 00        .byte $00   ; 
- D 1 - I - 0x00B1C8 02:B1B8: 06        .byte $06   ; 
- D 1 - I - 0x00B1C9 02:B1B9: 07        .byte $07   ; 
- D 1 - I - 0x00B1CA 02:B1BA: 00        .byte $00   ; 
- - - - - - 0x00B1CB 02:B1BB: 00        .byte $00   ; 
- - - - - - 0x00B1CC 02:B1BC: 00        .byte $00   ; 
- D 1 - I - 0x00B1CD 02:B1BD: 04        .byte $04   ; 
- D 1 - I - 0x00B1CE 02:B1BE: 05        .byte $05   ; 
- D 1 - I - 0x00B1CF 02:B1BF: 00        .byte $00   ; 
- - - - - - 0x00B1D0 02:B1C0: 00        .byte $00   ; 
- - - - - - 0x00B1D1 02:B1C1: 00        .byte $00   ; 
- D 1 - I - 0x00B1D2 02:B1C2: 02        .byte $02   ; 
- D 1 - I - 0x00B1D3 02:B1C3: 03        .byte $03   ; 
- D 1 - I - 0x00B1D4 02:B1C4: 00        .byte $00   ; 



_off021_B1C5_00_stage_1:
- D 1 - I - 0x00B1D5 02:B1C5: 18        .byte $18   ; 
- D 1 - I - 0x00B1D6 02:B1C6: 00        .byte $00   ; 
- D 1 - I - 0x00B1D7 02:B1C7: 00        .byte $00   ; 
- D 1 - I - 0x00B1D8 02:B1C8: 00        .byte $00   ; 
- D 1 - I - 0x00B1D9 02:B1C9: 00        .byte $00   ; 
- D 1 - I - 0x00B1DA 02:B1CA: 00        .byte $00   ; 
- D 1 - I - 0x00B1DB 02:B1CB: 00        .byte $00   ; 
- D 1 - I - 0x00B1DC 02:B1CC: 0C        .byte $0C   ; 
- D 1 - I - 0x00B1DD 02:B1CD: 0D        .byte $0D   ; 
- D 1 - I - 0x00B1DE 02:B1CE: 0E        .byte $0E   ; 
- D 1 - I - 0x00B1DF 02:B1CF: 15        .byte $15   ; 
- D 1 - I - 0x00B1E0 02:B1D0: 00        .byte $00   ; 
- D 1 - I - 0x00B1E1 02:B1D1: 00        .byte $00   ; 
- D 1 - I - 0x00B1E2 02:B1D2: 00        .byte $00   ; 
- D 1 - I - 0x00B1E3 02:B1D3: 00        .byte $00   ; 
- D 1 - I - 0x00B1E4 02:B1D4: 00        .byte $00   ; 
- D 1 - I - 0x00B1E5 02:B1D5: 00        .byte $00   ; 
- D 1 - I - 0x00B1E6 02:B1D6: 00        .byte $00   ; 
- D 1 - I - 0x00B1E7 02:B1D7: 00        .byte $00   ; 
- D 1 - I - 0x00B1E8 02:B1D8: 00        .byte $00   ; 
- D 1 - I - 0x00B1E9 02:B1D9: 00        .byte $00   ; 
- D 1 - I - 0x00B1EA 02:B1DA: 00        .byte $00   ; 
- D 1 - I - 0x00B1EB 02:B1DB: 00        .byte $00   ; 
- D 1 - I - 0x00B1EC 02:B1DC: 00        .byte $00   ; 
- D 1 - I - 0x00B1ED 02:B1DD: 00        .byte $00   ; 



tbl_B1DE:
; bzk warning, the table could be starting from B1DF, not sure
; in that case B1DE byte is a part of B1C5 table
- - - - - - 0x00B1EE 02:B1DE: 00        .byte $00   ; 03 
- D 1 - - - 0x00B1EF 02:B1DF: 01        .byte $01   ; 04 
- D 1 - - - 0x00B1F0 02:B1E0: 00        .byte $00   ; 05 
- D 1 - - - 0x00B1F1 02:B1E1: 00        .byte $00   ; 06 
- D 1 - - - 0x00B1F2 02:B1E2: 00        .byte $00   ; 07 
- D 1 - - - 0x00B1F3 02:B1E3: 00        .byte $00   ; 08 
- D 1 - - - 0x00B1F4 02:B1E4: 00        .byte $00   ; 09 
- D 1 - - - 0x00B1F5 02:B1E5: 00        .byte $00   ; 0A 
- D 1 - - - 0x00B1F6 02:B1E6: 00        .byte $00   ; 0B 
- D 1 - - - 0x00B1F7 02:B1E7: 00        .byte $00   ; 0C 
- D 1 - - - 0x00B1F8 02:B1E8: 00        .byte $00   ; 0D 
- D 1 - - - 0x00B1F9 02:B1E9: 00        .byte $00   ; 0E 
- D 1 - - - 0x00B1FA 02:B1EA: 00        .byte $00   ; 0F 
- D 1 - - - 0x00B1FB 02:B1EB: 00        .byte $00   ; 10 
- D 1 - - - 0x00B1FC 02:B1EC: 00        .byte $00   ; 11 
- D 1 - - - 0x00B1FD 02:B1ED: 00        .byte $00   ; 12 
- D 1 - - - 0x00B1FE 02:B1EE: 01        .byte $01   ; 13 
- D 1 - - - 0x00B1FF 02:B1EF: 00        .byte $00   ; 14 
- D 1 - - - 0x00B200 02:B1F0: 00        .byte $00   ; 15 
- D 1 - - - 0x00B201 02:B1F1: 00        .byte $00   ; 16 
- D 1 - - - 0x00B202 02:B1F2: 00        .byte $00   ; 17 
- D 1 - - - 0x00B203 02:B1F3: 00        .byte $00   ; 18 
- D 1 - - - 0x00B204 02:B1F4: 00        .byte $00   ; 19 
- D 1 - - - 0x00B205 02:B1F5: 00        .byte $00   ; 1A 
- D 1 - - - 0x00B206 02:B1F6: 00        .byte $00   ; 1B 
- D 1 - - - 0x00B207 02:B1F7: 01        .byte $01   ; 1C 
- D 1 - - - 0x00B208 02:B1F8: 00        .byte $00   ; 1D 
- D 1 - - - 0x00B209 02:B1F9: 00        .byte $00   ; 1E 
- D 1 - - - 0x00B20A 02:B1FA: 00        .byte $00   ; 1F 
- D 1 - - - 0x00B20B 02:B1FB: 00        .byte $00   ; 20 



tbl_B1FC:
; 00 
- D 1 - - - 0x00B20C 02:B1FC: 80        .byte $80   ; 
- D 1 - - - 0x00B20D 02:B1FD: 10        .byte $10   ; 
- D 1 - - - 0x00B20E 02:B1FE: 40        .byte $40   ; 
- D 1 - - - 0x00B20F 02:B1FF: 10        .byte $10   ; 
; 01 
- D 1 - - - 0x00B210 02:B200: F8        .byte $F8   ; 
- D 1 - - - 0x00B211 02:B201: 08        .byte $08   ; 
- D 1 - - - 0x00B212 02:B202: A0        .byte $A0   ; 
- D 1 - - - 0x00B213 02:B203: 48        .byte $48   ; 
; 02 
- D 1 - - - 0x00B214 02:B204: 0E        .byte $0E   ; 
- D 1 - - - 0x00B215 02:B205: 20        .byte $20   ; 
- D 1 - - - 0x00B216 02:B206: A0        .byte $A0   ; 
- D 1 - - - 0x00B217 02:B207: 48        .byte $48   ; 
; 03 
- D 1 - - - 0x00B218 02:B208: F8        .byte $F8   ; 
- D 1 - - - 0x00B219 02:B209: 08        .byte $08   ; 
- D 1 - - - 0x00B21A 02:B20A: B0        .byte $B0   ; 
- D 1 - - - 0x00B21B 02:B20B: 30        .byte $30   ; 
; 04 
- D 1 - - - 0x00B21C 02:B20C: 0E        .byte $0E   ; 
- D 1 - - - 0x00B21D 02:B20D: 20        .byte $20   ; 
- D 1 - - - 0x00B21E 02:B20E: B0        .byte $B0   ; 
- D 1 - - - 0x00B21F 02:B20F: 30        .byte $30   ; 
; 05 
- D 1 - - - 0x00B220 02:B210: F8        .byte $F8   ; 
- D 1 - - - 0x00B221 02:B211: 08        .byte $08   ; 
- D 1 - - - 0x00B222 02:B212: 30        .byte $30   ; 
- D 1 - - - 0x00B223 02:B213: 30        .byte $30   ; 
; 06 
- D 1 - - - 0x00B224 02:B214: 0E        .byte $0E   ; 
- D 1 - - - 0x00B225 02:B215: 20        .byte $20   ; 
- D 1 - - - 0x00B226 02:B216: 30        .byte $30   ; 
- D 1 - - - 0x00B227 02:B217: 30        .byte $30   ; 
; 07 
- D 1 - - - 0x00B228 02:B218: 10        .byte $10   ; 
- D 1 - - - 0x00B229 02:B219: 10        .byte $10   ; 
- D 1 - - - 0x00B22A 02:B21A: 90        .byte $90   ; 
- D 1 - - - 0x00B22B 02:B21B: 10        .byte $10   ; 
; 08 
- D 1 - - - 0x00B22C 02:B21C: 10        .byte $10   ; 
- D 1 - - - 0x00B22D 02:B21D: 10        .byte $10   ; 
- D 1 - - - 0x00B22E 02:B21E: 80        .byte $80   ; 
- D 1 - - - 0x00B22F 02:B21F: 10        .byte $10   ; 
; 09 
- D 1 - - - 0x00B230 02:B220: 70        .byte $70   ; 
- D 1 - - - 0x00B231 02:B221: 10        .byte $10   ; 
- D 1 - - - 0x00B232 02:B222: A8        .byte $A8   ; 
- D 1 - - - 0x00B233 02:B223: 30        .byte $30   ; 
; 0A 
- D 1 - - - 0x00B234 02:B224: 70        .byte $70   ; 
- D 1 - - - 0x00B235 02:B225: 10        .byte $10   ; 
- - - - - - 0x00B236 02:B226: 90        .byte $90   ; 
- - - - - - 0x00B237 02:B227: 10        .byte $10   ; 
; 0B 
- D 1 - - - 0x00B238 02:B228: 70        .byte $70   ; 
- D 1 - - - 0x00B239 02:B229: 10        .byte $10   ; 
- - - - - - 0x00B23A 02:B22A: 80        .byte $80   ; 
- - - - - - 0x00B23B 02:B22B: 10        .byte $10   ; 
; 0C 
- D 1 - - - 0x00B23C 02:B22C: 90        .byte $90   ; 
- D 1 - - - 0x00B23D 02:B22D: 10        .byte $10   ; 
- - - - - - 0x00B23E 02:B22E: A8        .byte $A8   ; 
- - - - - - 0x00B23F 02:B22F: 30        .byte $30   ; 
; 0D 
- D 1 - - - 0x00B240 02:B230: 50        .byte $50   ; 
- D 1 - - - 0x00B241 02:B231: 10        .byte $10   ; 
- D 1 - - - 0x00B242 02:B232: 80        .byte $80   ; 
- D 1 - - - 0x00B243 02:B233: 0F        .byte $0F   ; 
; 0E 
- D 1 - - - 0x00B244 02:B234: 50        .byte $50   ; 
- D 1 - - - 0x00B245 02:B235: 10        .byte $10   ; 
- D 1 - - - 0x00B246 02:B236: 90        .byte $90   ; 
- D 1 - - - 0x00B247 02:B237: 0F        .byte $0F   ; 
; 0F 
- D 1 - - - 0x00B248 02:B238: 10        .byte $10   ; 
- D 1 - - - 0x00B249 02:B239: 10        .byte $10   ; 
- D 1 - - - 0x00B24A 02:B23A: 60        .byte $60   ; 
- D 1 - - - 0x00B24B 02:B23B: 10        .byte $10   ; 
; 10 
- D 1 - - - 0x00B24C 02:B23C: B0        .byte $B0   ; 
- D 1 - - - 0x00B24D 02:B23D: 10        .byte $10   ; 
- D 1 - - - 0x00B24E 02:B23E: 80        .byte $80   ; 
- D 1 - - - 0x00B24F 02:B23F: 0F        .byte $0F   ; 
; 11 
- D 1 - - - 0x00B250 02:B240: B0        .byte $B0   ; 
- D 1 - - - 0x00B251 02:B241: 10        .byte $10   ; 
- D 1 - - - 0x00B252 02:B242: 90        .byte $90   ; 
- D 1 - - - 0x00B253 02:B243: 0F        .byte $0F   ; 
; 12 
- D 1 - - - 0x00B254 02:B244: C0        .byte $C0   ; 
- D 1 - - - 0x00B255 02:B245: 40        .byte $40   ; 
- D 1 - - - 0x00B256 02:B246: 78        .byte $78   ; 
- D 1 - - - 0x00B257 02:B247: 10        .byte $10   ; 
; 13 
- D 1 - - - 0x00B258 02:B248: 30        .byte $30   ; 
- D 1 - - - 0x00B259 02:B249: 38        .byte $38   ; 
- D 1 - - - 0x00B25A 02:B24A: 78        .byte $78   ; 
- D 1 - - - 0x00B25B 02:B24B: 10        .byte $10   ; 
; 14 
- D 1 - - - 0x00B25C 02:B24C: B0        .byte $B0   ; 
- D 1 - - - 0x00B25D 02:B24D: 30        .byte $30   ; 
- D 1 - - - 0x00B25E 02:B24E: 58        .byte $58   ; 
- D 1 - - - 0x00B25F 02:B24F: 10        .byte $10   ; 
; 15 
- D 1 - - - 0x00B260 02:B250: A8        .byte $A8   ; 
- D 1 - - - 0x00B261 02:B251: 50        .byte $50   ; 
- D 1 - - - 0x00B262 02:B252: 98        .byte $98   ; 
- D 1 - - - 0x00B263 02:B253: 10        .byte $10   ; 
; 16 
- D 1 - - - 0x00B264 02:B254: 30        .byte $30   ; 
- D 1 - - - 0x00B265 02:B255: 38        .byte $38   ; 
- D 1 - - - 0x00B266 02:B256: 78        .byte $78   ; 
- D 1 - - - 0x00B267 02:B257: 10        .byte $10   ; 
; 17 
- D 1 - - - 0x00B268 02:B258: A0        .byte $A0   ; 
- D 1 - - - 0x00B269 02:B259: 48        .byte $48   ; 
- D 1 - - - 0x00B26A 02:B25A: 78        .byte $78   ; 
- D 1 - - - 0x00B26B 02:B25B: 10        .byte $10   ; 
; 18 
- D 1 - - - 0x00B26C 02:B25C: 40        .byte $40   ; 
- D 1 - - - 0x00B26D 02:B25D: 10        .byte $10   ; 
- D 1 - - - 0x00B26E 02:B25E: 78        .byte $78   ; 
- D 1 - - - 0x00B26F 02:B25F: 10        .byte $10   ; 
; 19 
- D 1 - - - 0x00B270 02:B260: C0        .byte $C0   ; 
- D 1 - - - 0x00B271 02:B261: 10        .byte $10   ; 
- D 1 - - - 0x00B272 02:B262: 78        .byte $78   ; 
- D 1 - - - 0x00B273 02:B263: 10        .byte $10   ; 
; 1A 
- D 1 - - - 0x00B274 02:B264: 40        .byte $40   ; 
- D 1 - - - 0x00B275 02:B265: 10        .byte $10   ; 
- D 1 - - - 0x00B276 02:B266: D0        .byte $D0   ; 
- D 1 - - - 0x00B277 02:B267: 10        .byte $10   ; 
; 1B 
- D 1 - - - 0x00B278 02:B268: C0        .byte $C0   ; 
- D 1 - - - 0x00B279 02:B269: 10        .byte $10   ; 
- D 1 - - - 0x00B27A 02:B26A: D0        .byte $D0   ; 
- D 1 - - - 0x00B27B 02:B26B: 10        .byte $10   ; 
; 1C 
- D 1 - - - 0x00B27C 02:B26C: 70        .byte $70   ; 
- D 1 - - - 0x00B27D 02:B26D: 10        .byte $10   ; 
- D 1 - - - 0x00B27E 02:B26E: 10        .byte $10   ; 
- D 1 - - - 0x00B27F 02:B26F: 20        .byte $20   ; 
; 1D 
- D 1 - - - 0x00B280 02:B270: 70        .byte $70   ; 
- D 1 - - - 0x00B281 02:B271: 10        .byte $10   ; 
- D 1 - - - 0x00B282 02:B272: E8        .byte $E8   ; 
- D 1 - - - 0x00B283 02:B273: 18        .byte $18   ; 
; 1E 
- D 1 - - - 0x00B284 02:B274: 90        .byte $90   ; 
- D 1 - - - 0x00B285 02:B275: 10        .byte $10   ; 
- D 1 - - - 0x00B286 02:B276: 10        .byte $10   ; 
- D 1 - - - 0x00B287 02:B277: 20        .byte $20   ; 
; 1F 
- D 1 - - - 0x00B288 02:B278: 90        .byte $90   ; 
- D 1 - - - 0x00B289 02:B279: 10        .byte $10   ; 
- D 1 - - - 0x00B28A 02:B27A: E8        .byte $E8   ; 
- D 1 - - - 0x00B28B 02:B27B: 18        .byte $18   ; 
; 20 
- D 1 - - - 0x00B28C 02:B27C: 50        .byte $50   ; 
- D 1 - - - 0x00B28D 02:B27D: 10        .byte $10   ; 
- D 1 - - - 0x00B28E 02:B27E: 70        .byte $70   ; 
- D 1 - - - 0x00B28F 02:B27F: 28        .byte $28   ; 
; 21 
- D 1 - - - 0x00B290 02:B280: D0        .byte $D0   ; 
- D 1 - - - 0x00B291 02:B281: 10        .byte $10   ; 
- D 1 - - - 0x00B292 02:B282: 70        .byte $70   ; 
- D 1 - - - 0x00B293 02:B283: 28        .byte $28   ; 
; 22 
- D 1 - - - 0x00B294 02:B284: 70        .byte $70   ; 
- D 1 - - - 0x00B295 02:B285: 10        .byte $10   ; 
- D 1 - - - 0x00B296 02:B286: 08        .byte $08   ; 
- D 1 - - - 0x00B297 02:B287: 08        .byte $08   ; 
; 23 
- D 1 - - - 0x00B298 02:B288: 70        .byte $70   ; 
- D 1 - - - 0x00B299 02:B289: 10        .byte $10   ; 
- D 1 - - - 0x00B29A 02:B28A: E8        .byte $E8   ; 
- D 1 - - - 0x00B29B 02:B28B: 18        .byte $18   ; 
; 24 
- D 1 - - - 0x00B29C 02:B28C: 40        .byte $40   ; 
- D 1 - - - 0x00B29D 02:B28D: 48        .byte $48   ; 
- D 1 - - - 0x00B29E 02:B28E: 68        .byte $68   ; 
- D 1 - - - 0x00B29F 02:B28F: 10        .byte $10   ; 
; 25 
- D 1 - - - 0x00B2A0 02:B290: 80        .byte $80   ; 
- D 1 - - - 0x00B2A1 02:B291: 80        .byte $80   ; 
- D 1 - - - 0x00B2A2 02:B292: 80        .byte $80   ; 
- D 1 - - - 0x00B2A3 02:B293: 10        .byte $10   ; 
; 26 
- D 1 - - - 0x00B2A4 02:B294: 0E        .byte $0E   ; 
- D 1 - - - 0x00B2A5 02:B295: 20        .byte $20   ; 
- D 1 - - - 0x00B2A6 02:B296: DF        .byte $DF   ; 
- D 1 - - - 0x00B2A7 02:B297: 20        .byte $20   ; 
; 27 
- D 1 - - - 0x00B2A8 02:B298: F8        .byte $F8   ; 
- D 1 - - - 0x00B2A9 02:B299: 08        .byte $08   ; 
- D 1 - - - 0x00B2AA 02:B29A: DF        .byte $DF   ; 
- D 1 - - - 0x00B2AB 02:B29B: 20        .byte $20   ; 



loc_0x00B38A:
C D 1 - - - 0x00B38A 02:B37A: A2 16     LDX #$16
bra_B37C_loop:
C - - - - - 0x00B38C 02:B37C: BD 1A 06  LDA ram_obj_animation_lo,X
C - - - - - 0x00B38F 02:B37F: F0 0B     BEQ bra_B38C
C - - - - - 0x00B391 02:B381: BD 34 06  LDA ram_obj_animation_hi,X
C - - - - - 0x00B394 02:B384: 49 01     EOR #$01
C - - - - - 0x00B396 02:B386: 9D 34 06  STA ram_obj_animation_hi,X
C - - - - - 0x00B399 02:B389: 20 92 B3  JSR sub_B392
bra_B38C:
C - - - - - 0x00B39C 02:B38C: E8        INX
C - - - - - 0x00B39D 02:B38D: E0 1A     CPX #$1A
C - - - - - 0x00B39F 02:B38F: 90 EB     BCC bra_B37C_loop
C - - - - - 0x00B3A1 02:B391: 60        RTS



sub_B392:
C - - - - - 0x00B3A2 02:B392: BD 82 06  LDA ram_0682_obj,X
C - - - - - 0x00B3A5 02:B395: 29 20     AND #$20
C - - - - - 0x00B3A7 02:B397: D0 10     BNE bra_B3A9
C - - - - - 0x00B3A9 02:B399: 20 B9 8F  JSR sub_0x008FC9
C - - - - - 0x00B3AC 02:B39C: B0 03     BCS bra_B3A1
C - - - - - 0x00B3AE 02:B39E: 4C EB B3  JMP loc_B3EB
bra_B3A1:
C - - - - - 0x00B3B1 02:B3A1: BD 82 06  LDA ram_0682_obj,X
C - - - - - 0x00B3B4 02:B3A4: 09 20     ORA #$20
C - - - - - 0x00B3B6 02:B3A6: 9D 82 06  STA ram_0682_obj,X
bra_B3A9:
C - - - - - 0x00B3B9 02:B3A9: A5 6A     LDA ram_006A
C - - - - - 0x00B3BB 02:B3AB: 05 69     ORA ram_0069
C - - - - - 0x00B3BD 02:B3AD: F0 17     BEQ bra_B3C6
C - - - - - 0x00B3BF 02:B3AF: A9 00     LDA #$00
C - - - - - 0x00B3C1 02:B3B1: 85 00     STA ram_0000_t67_lo
C - - - - - 0x00B3C3 02:B3B3: 85 01     STA ram_0001_t12_hi
C - - - - - 0x00B3C5 02:B3B5: 20 C8 99  JSR sub_0x0099D8
C - - - - - 0x00B3C8 02:B3B8: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x00B3CB 02:B3BB: 65 01     ADC ram_0001_t04_hi
C - - - - - 0x00B3CD 02:B3BD: 9D 4E 06  STA ram_obj_pos_X,X
C - - - - - 0x00B3D0 02:B3C0: 6A        ROR
C - - - - - 0x00B3D1 02:B3C1: 45 01     EOR ram_0001_t04_hi
C - - - - - 0x00B3D3 02:B3C3: 2A        ROL
C - - - - - 0x00B3D4 02:B3C4: B0 25     BCS bra_B3EB
bra_B3C6:
C - - - - - 0x00B3D6 02:B3C6: 20 B9 8F  JSR sub_0x008FC9
C - - - - - 0x00B3D9 02:B3C9: A0 00     LDY #$00
C - - - - - 0x00B3DB 02:B3CB: 84 00     STY ram_0000_t67_lo
C - - - - - 0x00B3DD 02:B3CD: 84 01     STY ram_0001_t12_hi
C - - - - - 0x00B3DF 02:B3CF: 90 09     BCC bra_B3DA
C - - - - - 0x00B3E1 02:B3D1: 20 78 91  JSR sub_0x009188_stage_AND_01
C - - - - - 0x00B3E4 02:B3D4: D0 04     BNE bra_B3DA    ; if upper view
; if side view
C - - - - - 0x00B3E6 02:B3D6: A9 04     LDA #$04
C - - - - - 0x00B3E8 02:B3D8: 85 01     STA ram_0001_t12_hi
bra_B3DA:
C - - - - - 0x00B3EA 02:B3DA: 20 D5 99  JSR sub_0x0099E5
C - - - - - 0x00B3ED 02:B3DD: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x00B3F0 02:B3E0: 65 01     ADC ram_0001_t04_hi
C - - - - - 0x00B3F2 02:B3E2: 9D 68 06  STA ram_obj_pos_Y,X
C - - - - - 0x00B3F5 02:B3E5: 6A        ROR
C - - - - - 0x00B3F6 02:B3E6: 45 01     EOR ram_0001_t04_hi
C - - - - - 0x00B3F8 02:B3E8: 2A        ROL
C - - - - - 0x00B3F9 02:B3E9: 90 06     BCC bra_B3F1_RTS
bra_B3EB:
loc_B3EB:
C D 1 - - - 0x00B3FB 02:B3EB: 20 4C 9A  JSR sub_0x009A5C_clear_animation
; A = 00
C - - - - - 0x00B3FE 02:B3EE: 9D 82 06  STA ram_0682_obj,X
bra_B3F1_RTS:
C - - - - - 0x00B401 02:B3F1: 60        RTS



sub_0x00B636:
C - - - - - 0x00B636 02:B626: BD DC 07  LDA ram_07DC_unk,X
C - - - - - 0x00B639 02:B629: D0 16     BNE bra_B641
C - - - - - 0x00B63B 02:B62B: BC 82 07  LDY ram_0782_unk,X
C - - - - - 0x00B63E 02:B62E: B9 38 B8  LDA tbl_B83A - $02,Y
C - - - - - 0x00B641 02:B631: D0 11     BNE bra_B644
C - - - - - 0x00B643 02:B633: 20 78 91  JSR sub_0x009188_stage_AND_01
C - - - - - 0x00B646 02:B636: F0 04     BEQ bra_B63C_side_view
; if upper view
C - - - - - 0x00B648 02:B638: A9 0A     LDA #$0A
C - - - - - 0x00B64A 02:B63A: D0 02     BNE bra_B63E    ; jmp
bra_B63C_side_view:
C - - - - - 0x00B64C 02:B63C: A9 09     LDA #$09
bra_B63E:
loc_B63E:   ; bzk optimize
C - - - - - 0x00B64E 02:B63E: 4C B0 B7  JMP loc_0x00B7C0
bra_B641:
C - - - - - 0x00B651 02:B641: DE DC 07  DEC ram_07DC_unk,X
bra_B644:
C - - - - - 0x00B654 02:B644: BC 82 07  LDY ram_0782_unk,X
C - - - - - 0x00B657 02:B647: B9 0C B8  LDA tbl_B80E - $02,Y
C - - - - - 0x00B65A 02:B64A: F0 1D     BEQ bra_B669
C - - - - - 0x00B65C 02:B64C: 85 3A     STA ram_003A_t04
C - - - - - 0x00B65E 02:B64E: BD 36 07  LDA ram_0736_obj,X
C - - - - - 0x00B661 02:B651: 29 03     AND #$03
C - - - - - 0x00B663 02:B653: F0 14     BEQ bra_B669
C - - - - - 0x00B665 02:B655: A5 3A     LDA ram_003A_t04
C - - - - - 0x00B667 02:B657: 10 05     BPL bra_B65E
- - - - - - 0x00B669 02:B659: 29 7F     AND #$7F
- - - - - - 0x00B66B 02:B65B: 4C 3E B6  JMP loc_B63E
bra_B65E:
C - - - - - 0x00B66E 02:B65E: A5 23     LDA ram_frm_cnt
C - - - - - 0x00B670 02:B660: 4A        LSR
C - - - - - 0x00B671 02:B661: 29 01     AND #$01
C - - - - - 0x00B673 02:B663: A8        TAY
C - - - - - 0x00B674 02:B664: B9 54 03  LDA ram_0354,Y
C - - - - - 0x00B677 02:B667: D0 11     BNE bra_B67A
bra_B669:
C - - - - - 0x00B679 02:B669: BC 82 07  LDY ram_0782_unk,X
C - - - - - 0x00B67C 02:B66C: B9 12 B8  LDA tbl_B814 - $02,Y
C - - - - - 0x00B67F 02:B66F: F0 27     BEQ bra_B698
C - - - - - 0x00B681 02:B671: 85 3A     STA ram_003A_t04
C - - - - - 0x00B683 02:B673: BD 4C 07  LDA ram_074C_obj,X
C - - - - - 0x00B686 02:B676: 29 FC     AND #$FC
C - - - - - 0x00B688 02:B678: F0 1E     BEQ bra_B698
bra_B67A:
C - - - - - 0x00B68A 02:B67A: BD BE 07  LDA ram_07BE_unk,X
C - - - - - 0x00B68D 02:B67D: 30 18     BMI bra_B697_RTS
C - - - - - 0x00B68F 02:B67F: BC 82 07  LDY ram_0782_unk,X
C - - - - - 0x00B692 02:B682: BD 78 07  LDA ram_0778_unk,X
C - - - - - 0x00B695 02:B685: 29 7F     AND #$7F
C - - - - - 0x00B697 02:B687: D9 32 B8  CMP tbl_B834 - $02,Y
C - - - - - 0x00B69A 02:B68A: B0 08     BCS bra_B694
- - - - - - 0x00B69C 02:B68C: BD BE 07  LDA ram_07BE_unk,X
- - - - - - 0x00B69F 02:B68F: 09 80     ORA #$80
- - - - - - 0x00B6A1 02:B691: 9D BE 07  STA ram_07BE_unk,X
bra_B694:
C - - - - - 0x00B6A4 02:B694: 4C AE B7  JMP loc_0x00B7BE
bra_B697_RTS:
- - - - - - 0x00B6A7 02:B697: 60        RTS
bra_B698:
C - - - - - 0x00B6A8 02:B698: A9 00     LDA #$00
C - - - - - 0x00B6AA 02:B69A: 85 3B     STA ram_003B_t01
C - - - - - 0x00B6AC 02:B69C: BC 82 07  LDY ram_0782_unk,X
C - - - - - 0x00B6AF 02:B69F: B9 18 B8  LDA tbl_B81A - $02,Y
C - - - - - 0x00B6B2 02:B6A2: F0 1B     BEQ bra_B6BF_RTS
; bzk optimize, useless STA
C - - - - - 0x00B6B4 02:B6A4: 85 3A     STA ram_003A_t04
C - - - - - 0x00B6B6 02:B6A6: BD 4C 07  LDA ram_074C_obj,X
C - - - - - 0x00B6B9 02:B6A9: 29 03     AND #$03
C - - - - - 0x00B6BB 02:B6AB: 85 00     STA ram_0000_t2C
C - - - - - 0x00B6BD 02:B6AD: BD 62 07  LDA ram_0762_obj,X
C - - - - - 0x00B6C0 02:B6B0: 29 FC     AND #$FC
C - - - - - 0x00B6C2 02:B6B2: 05 00     ORA ram_0000_t2C
C - - - - - 0x00B6C4 02:B6B4: F0 09     BEQ bra_B6BF_RTS
- - - - - - 0x00B6C6 02:B6B6: E6 3B     INC ram_003B_t01    ; -> 01
- - - - - - 0x00B6C8 02:B6B8: BD 00 06  LDA ram_0600_obj,X
- - - - - - 0x00B6CB 02:B6BB: 29 04     AND #$04
- - - - - - 0x00B6CD 02:B6BD: D0 D5     BNE bra_B694
bra_B6BF_RTS:
C - - - - - 0x00B6CF 02:B6BF: 60        RTS



tbl_B80E:
- D 1 - - - 0x00B81E 02:B80E: 04        .byte $04   ; 02 
- D 1 - - - 0x00B81F 02:B80F: 04        .byte $04   ; 03 
- D 1 - - - 0x00B820 02:B810: 04        .byte $04   ; 04 
- D 1 - - - 0x00B821 02:B811: 08        .byte $08   ; 05 
- D 1 - - - 0x00B822 02:B812: 08        .byte $08   ; 06 
- D 1 - - - 0x00B823 02:B813: 08        .byte $08   ; 07 



tbl_B814:
- D 1 - - - 0x00B824 02:B814: 04        .byte $04   ; 02 
- D 1 - - - 0x00B825 02:B815: 04        .byte $04   ; 03 
- D 1 - - - 0x00B826 02:B816: 04        .byte $04   ; 04 
- D 1 - - - 0x00B827 02:B817: 08        .byte $08   ; 05 
- D 1 - - - 0x00B828 02:B818: 08        .byte $08   ; 06 
- D 1 - - - 0x00B829 02:B819: 08        .byte $08   ; 07 



tbl_B81A:
- D 1 - - - 0x00B82A 02:B81A: 03        .byte $03   ; 02 
- D 1 - - - 0x00B82B 02:B81B: 03        .byte $03   ; 03 
- D 1 - - - 0x00B82C 02:B81C: 00        .byte $00   ; 04 
- D 1 - - - 0x00B82D 02:B81D: 07        .byte $07   ; 05 
- D 1 - - - 0x00B82E 02:B81E: 07        .byte $07   ; 06 
- D 1 - - - 0x00B82F 02:B81F: 00        .byte $00   ; 07 



tbl_B834:
- D 1 - - - 0x00B844 02:B834: 00        .byte $00   ; 02 
- D 1 - - - 0x00B845 02:B835: 00        .byte $00   ; 03 
- D 1 - - - 0x00B846 02:B836: 0B        .byte $0B   ; 04 
- D 1 - - - 0x00B847 02:B837: 00        .byte $00   ; 05 
- D 1 - - - 0x00B848 02:B838: 00        .byte $00   ; 06 
- D 1 - - - 0x00B849 02:B839: 0A        .byte $0A   ; 07 



tbl_B83A:
- D 1 - - - 0x00B84A 02:B83A: 00        .byte $00   ; 02 
- D 1 - - - 0x00B84B 02:B83B: 00        .byte $00   ; 03 
- D 1 - - - 0x00B84C 02:B83C: 01        .byte $01   ; 04 
- D 1 - - - 0x00B84D 02:B83D: 00        .byte $00   ; 05 
- D 1 - - - 0x00B84E 02:B83E: 01        .byte $01   ; 06 
; bzk bug, reading 0x00B84F as index 07 (byte 20)



.out .sprintf("Free bytes in bank 05: 0x%04X [%d]", ($C000 - *), ($C000 - *))



