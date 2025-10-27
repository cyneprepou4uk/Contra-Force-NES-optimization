.segment "BANK_FF"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $E000  ; for listing file
; 0x07E010-0x08000F



.export sub_0x01E086
.export loc_0x01E19F_write_00_to_buffer
.export tbl_0x01F34C_dpad_buttons_conversion
.export loc_0x01F35C_prg_bankswitch
.export sub_0x01F35C_prg_bankswitch
.export loc_0x01F3C3_execute_script
.export sub_0x01F3C3_execute_script
.export sub_0x01F458_select_bg_chr_bank_pair
.export sub_0x01F4BE
.export sub_0x01F4C1
.export loc_0x01F4C1
.export sub_0x01F4E8
.export sub_0x01F514
.export sub_0x01F52A
.export ofs_020_0x01F52A_07
.export sub_0x01F52D
.export loc_0x01F56A
.export loc_0x01F574
.export sub_0x01F579
.export ofs_020_0x01F579_04
.export sub_0x01F57C
.export tbl_0x01F5B8
.export tbl_0x01F5BE
.export tbl_0x01F5C6
.export sub_0x01F61F
.export sub_0x01F650
.export tbl_0x01F679
.export tbl_0x01F68B
.export sub_0x01F69F_get_stage_view_type
.export sub_0x01F6BF
.export loc_0x01F6D1
.export sub_0x01F6D1
.export tbl_0x01F6D7
.export sub_0x01F6E1
.export loc_0x01F712
.export sub_0x01F712
.export sub_0x01F71F
.export sub_0x01F8D8_prepare_irq_data
.export sub_0x01F8DA_prepare_irq_data
.export loc_0x01F8DA_prepare_irq_data
.export sub_0x01F8F7
.export tbl_0x01F95A
.export sub_0x01FC1E
.export loc_0x01FC1E
.export loc_0x01FE80
.export sub_0x01FE80
.export sub_0x01FEA3_disable_rendering
.export loc_0x01FEA3_disable_rendering
.export sub_0x01FECF
.export loc_0x01FEDA_add_music_to_queue
.export sub_0x01FEDA_add_music_to_queue
.export sub_0x01E038
.export loc_0x01E12C
.export ofs_002_0x01E12C_0C
.export sub_0x01E136_copy_ppu_address
.export loc_0x01E136_copy_ppu_address
.export loc_0x01E13F
.export ofs_002_0x01E13F_11
.export loc_0x01E189
.export ofs_002_0x01E1A7_09
.export ofs_002_0x01E1D2_03
.export ofs_002_0x01E252_10
.export ofs_002_0x01E274_02
.export ofs_002_0x01E3A5_0D
.export ofs_002_0x01E3E2_01
.export ofs_002_0x01ED00_04
.export loc_0x01EDD2
.export sub_0x01F309_clear_0040_00DF
.export sub_0x01F30D_clear_0060_00DF
.export sub_0x01F319_clear_0400_07FF
.export sub_0x01F32C
.export loc_0x01F458_select_bg_chr_bank_pair
.export sub_0x01F606
.export sub_0x01F645_set_default_3_lives
.export loc_0x01F645_set_default_3_lives
.export sub_0x01F9A4



bra_E003:
C - - - - - 0x01E013 07:E003: 20 1E E0  JSR sub_0x01E02E
C - - - - - 0x01E016 07:E006: 18        CLC
C - - - - - 0x01E017 07:E007: 69 10     ADC #$10
C - - - - - 0x01E019 07:E009: D0 03     JMP loc_0x01E01E



sub_0x01E038:
C - - - - - 0x01E038 07:E028: 20 F1 DE  JSR sub_0x01DF01
C - - - - - 0x01E03B 07:E02B: B0 D6     BCS bra_E003
C - - - - - 0x01E03D 07:E02D: A9 05     LDA #$05
C - - - - - 0x01E03F 07:E02F: 85 08     STA ram_0008_t16_letters_counter
C - - - - - 0x01E041 07:E031: A4 0F     LDY ram_000F_t06_player_index
C - - - - - 0x01E043 07:E033: B9 04 E1  LDA tbl_E104_index,Y
C - - - - - 0x01E046 07:E036: A8        TAY
bra_E037_loop:
C - - - - - 0x01E047 07:E037: B9 08 E1  LDA tbl_E108_names,Y
C - - - - - 0x01E04A 07:E03A: 20 24 DE  JSR sub_0x01DE34_write_A_to_buffer_and_INX
C - - - - - 0x01E04D 07:E03D: C8        INY
C - - - - - 0x01E04E 07:E03E: C6 08     DEC ram_0008_t16_letters_counter
C - - - - - 0x01E050 07:E040: D0 F5     BNE bra_E037_loop
C - - - - - 0x01E052 07:E042: A9 00     LDA #$00
C - - - - - 0x01E054 07:E044: 20 24 DE  JSR sub_0x01DE34_write_A_to_buffer_and_INX
C - - - - - 0x01E057 07:E047: A9 AE     LDA #$AE
C - - - - - 0x01E059 07:E049: 20 24 DE  JSR sub_0x01DE34_write_A_to_buffer_and_INX
C - - - - - 0x01E05C 07:E04C: A4 04     LDY ram_0004_t26
C - - - - - 0x01E05E 07:E04E: B9 B1 00  LDA ram_current_player,Y
C - - - - - 0x01E061 07:E051: 29 0F     AND #$0F
C - - - - - 0x01E063 07:E053: A8        TAY
C - - - - - 0x01E064 07:E054: 20 76 E0  JSR sub_E076
C - - - - - 0x01E067 07:E057: A5 0A     LDA ram_000A_t11_lives
C - - - - - 0x01E069 07:E059: 29 F0     AND #$F0
; / 10
C - - - - - 0x01E06B 07:E05B: 4A        LSR
C - - - - - 0x01E06C 07:E05C: 4A        LSR
C - - - - - 0x01E06D 07:E05D: 4A        LSR
C - - - - - 0x01E06E 07:E05E: 4A        LSR
C - - - - - 0x01E06F 07:E05F: D0 02     BNE bra_E063
C - - - - - 0x01E071 07:E061: A9 0A     LDA #$0A
bra_E063:
C - - - - - 0x01E073 07:E063: 20 24 DE  JSR sub_0x01DE34_write_A_to_buffer_and_INX
C - - - - - 0x01E076 07:E066: A5 0A     LDA ram_000A_t11_lives
C - - - - - 0x01E078 07:E068: 29 0F     AND #$0F
C - - - - - 0x01E07A 07:E06A: D0 02     BNE bra_E06E
C - - - - - 0x01E07C 07:E06C: A9 0A     LDA #$0A
bra_E06E:
C - - - - - 0x01E07E 07:E06E: 20 24 DE  JSR sub_0x01DE34_write_A_to_buffer_and_INX
C - - - - - 0x01E081 07:E071: A9 00     LDA #$00
C - - - - - 0x01E083 07:E073: 4C 24 DE  JMP loc_0x01DE34_write_A_to_buffer_and_INX



sub_E076:
sub_0x01E086:
; in
    ; Y = player index
; out
    ; ram_000A_t11_lives
C - - - - - 0x01E086 07:E076: B9 B3 00  LDA ram_lives,Y
C - - - - - 0x01E089 07:E079: F0 03     BEQ bra_E07E
C - - - - - 0x01E08B 07:E07B: 38        SEC
C - - - - - 0x01E08C 07:E07C: E9 01     SBC #$01
bra_E07E:   ; A = 00
C - - - - - 0x01E08E 07:E07E: 85 0A     STA ram_000A_t11_lives
C - - - - - 0x01E090 07:E080: 29 0F     AND #$0F
C - - - - - 0x01E092 07:E082: C9 0F     CMP #$0F
C - - - - - 0x01E094 07:E084: D0 0B     BNE bra_E091_RTS
- - - - - - 0x01E096 07:E086: A5 0A     LDA ram_000A_t11_lives
- - - - - - 0x01E098 07:E088: 38        SEC
- - - - - - 0x01E099 07:E089: E9 10     SBC #$10
- - - - - - 0x01E09B 07:E08B: 29 F0     AND #$F0
- - - - - - 0x01E09D 07:E08D: 09 09     ORA #$09
- - - - - - 0x01E09F 07:E08F: 85 0A     STA ram_000A_t11_lives
bra_E091_RTS:
C - - - - - 0x01E0A1 07:E091: 60        RTS



tbl_E104_index:
- D 3 - - - 0x01E114 07:E104: 00        .byte $00   ; 00 
- D 3 - - - 0x01E115 07:E105: 05        .byte $05   ; 01 
- D 3 - - - 0x01E116 07:E106: 0A        .byte $0A   ; 02 
- D 3 - - - 0x01E117 07:E107: 0F        .byte $0F   ; 03 



tbl_E108_names:
- D 3 - - - 0x01E118 07:E108: 12        .byte $12, $25, $22, $1E, $23   ; 00 BURNS
- D 3 - - - 0x01E11D 07:E10D: 23        .byte $23, $1D, $19, $24, $18   ; 05 SMITH
- D 3 - - - 0x01E122 07:E112: 19        .byte $19, $22, $1F, $1E, $00   ; 0A IRON
- D 3 - - - 0x01E127 07:E117: 12        .byte $12, $15, $11, $1E, $23   ; 0F BEANS



loc_0x01E12C:
ofs_002_0x01E12C_0C:
; con_DA9D_0C
C D 3 - - - 0x01E12C 07:E11C: A6 39     LDX ram_buffer_index_2
C - - - - - 0x01E12E 07:E11E: A5 DF     LDA ram_00DF
C - - - - - 0x01E130 07:E120: 20 CF DD  JSR sub_0x01DDDF
C - - - - - 0x01E133 07:E123: 4C 32 E1  JMP loc_E132



sub_E126_copy_ppu_address:
loc_E126_copy_ppu_address:
sub_0x01E136_copy_ppu_address:
loc_0x01E136_copy_ppu_address:
C - - - - - 0x01E136 07:E126: A5 BA     LDA ram_00BA_ppu_addr_lo
C - - - - - 0x01E138 07:E128: 85 00     STA ram_0000_t73_ppu_addr_lo
C - - - - - 0x01E13A 07:E12A: A5 B9     LDA ram_00B9_ppu_addr_hi
C - - - - - 0x01E13C 07:E12C: 85 01     STA ram_0001_t14_ppu_addr_hi
C - - - - - 0x01E13E 07:E12E: 60        RTS



loc_0x01E13F:
ofs_002_0x01E13F_11:
; con_DA9D_11
C D 3 J - - 0x01E13F 07:E12F: 20 26 E1  JSR sub_E126_copy_ppu_address
loc_E132:
C D 3 - - - 0x01E142 07:E132: A4 00     LDY ram_0000_t73_ppu_addr_lo
C - - - - - 0x01E144 07:E134: A5 01     LDA ram_0001_t14_ppu_addr_hi
C - - - - - 0x01E146 07:E136: 29 03     AND #$03
C - - - - - 0x01E148 07:E138: C9 03     CMP #$03
C - - - - - 0x01E14A 07:E13A: 85 02     STA ram_0002_t60
C - - - - - 0x01E14C 07:E13C: D0 04     BNE bra_E142
C - - - - - 0x01E14E 07:E13E: C0 80     CPY #$80
C - - - - - 0x01E150 07:E140: B0 05     BCS bra_E147
bra_E142:
C - - - - - 0x01E152 07:E142: 98        TYA
C - - - - - 0x01E153 07:E143: 29 40     AND #$40
C - - - - - 0x01E155 07:E145: F0 1A     BEQ bra_E161
bra_E147:
C - - - - - 0x01E157 07:E147: 20 61 E1  JSR sub_E161
C - - - - - 0x01E15A 07:E14A: A5 02     LDA ram_0002_t59_ppu_addr_lo
C - - - - - 0x01E15C 07:E14C: 18        CLC
C - - - - - 0x01E15D 07:E14D: 69 08     ADC #$08
C - - - - - 0x01E15F 07:E14F: 85 02     STA ram_0002_t59_ppu_addr_lo
C - - - - - 0x01E161 07:E151: 90 24     BCC bra_E177
C - - - - - 0x01E163 07:E153: 09 C0     ORA #$C0
C - - - - - 0x01E165 07:E155: 85 02     STA ram_0002_t59_ppu_addr_lo
C - - - - - 0x01E167 07:E157: A5 03     LDA ram_0003_t14_ppu_addr_hi
C - - - - - 0x01E169 07:E159: 49 0C     EOR #$0C
C - - - - - 0x01E16B 07:E15B: 29 2F     AND #$2F
C - - - - - 0x01E16D 07:E15D: 85 03     STA ram_0003_t14_ppu_addr_hi
C - - - - - 0x01E16F 07:E15F: D0 16     BNE bra_E177    ; jmp
bra_E161:
sub_E161:
C - - - - - 0x01E171 07:E161: A5 00     LDA ram_0000_t73_ppu_addr_lo
C - - - - - 0x01E173 07:E163: 29 80     AND #$80
; / 04
C - - - - - 0x01E175 07:E165: 46 02     LSR ram_0002_t60
C - - - - - 0x01E177 07:E167: 6A        ROR
C - - - - - 0x01E178 07:E168: 46 02     LSR ram_0002_t60
C - - - - - 0x01E17A 07:E16A: 6A        ROR
; / 04
C - - - - - 0x01E17B 07:E16B: 4A        LSR
C - - - - - 0x01E17C 07:E16C: 4A        LSR
C - - - - - 0x01E17D 07:E16D: 09 C0     ORA #$C0
C - - - - - 0x01E17F 07:E16F: 85 02     STA ram_0002_t59_ppu_addr_lo
C - - - - - 0x01E181 07:E171: A5 01     LDA ram_0001_t14_ppu_addr_hi
C - - - - - 0x01E183 07:E173: 09 03     ORA #$03
C - - - - - 0x01E185 07:E175: 85 03     STA ram_0003_t14_ppu_addr_hi
bra_E177:
C - - - - - 0x01E187 07:E177: A9 08     LDA #$08
loc_0x01E189:
C D 3 - - - 0x01E189 07:E179: 85 04     STA ram_0004_t27_tile
C - - - - - 0x01E18B 07:E17B: A9 03     LDA #$03
C - - - - - 0x01E18D 07:E17D: 20 24 DE  JSR sub_0x01DE34_write_A_to_buffer_and_INX
C - - - - - 0x01E190 07:E180: A5 02     LDA ram_0002_t59_ppu_addr_lo
C - - - - - 0x01E192 07:E182: 20 24 DE  JSR sub_0x01DE34_write_A_to_buffer_and_INX
C - - - - - 0x01E195 07:E185: A5 03     LDA ram_0003_t14_ppu_addr_hi
C - - - - - 0x01E197 07:E187: 20 24 DE  JSR sub_0x01DE34_write_A_to_buffer_and_INX
C - - - - - 0x01E19A 07:E18A: A5 04     LDA ram_0004_t27_tile
C - - - - - 0x01E19C 07:E18C: 20 24 DE  JSR sub_0x01DE34_write_A_to_buffer_and_INX
loc_0x01E19F_write_00_to_buffer:
C D 3 - - - 0x01E19F 07:E18F: A9 00     LDA #$00
C - - - - - 0x01E1A1 07:E191: 20 24 DE  JSR sub_0x01DE34_write_A_to_buffer_and_INX
C - - - - - 0x01E1A4 07:E194: 86 39     STX ram_buffer_index_2
C - - - - - 0x01E1A6 07:E196: 60        RTS



ofs_002_0x01E1A7_09:
; con_DA9D_09
C - - J - - 0x01E1A7 07:E197: A9 08     LDA #< $0008
C - - - - - 0x01E1A9 07:E199: 85 16     STA ram_0016_t01_lo
C - - - - - 0x01E1AB 07:E19B: A0 00     LDY #> $0008
C - - - - - 0x01E1AD 07:E19D: 84 0D     STY ram_000D_t06_hi
; Y = 00
C - - - - - 0x01E1AF 07:E19F: A5 1D     LDA ram_001D_t02
C - - - - - 0x01E1B1 07:E1A1: 85 3C     STA ram_003C_t03
C - - - - - 0x01E1B3 07:E1A3: 10 01     BPL bra_E1A6
C - - - - - 0x01E1B5 07:E1A5: C8        INY ; 01
bra_E1A6:
C - - - - - 0x01E1B6 07:E1A6: A5 45     LDA ram_pause_flag
C - - - - - 0x01E1B8 07:E1A8: F0 02     BEQ bra_E1AC
- - - - - - 0x01E1BA 07:E1AA: C8        INY
- - - - - - 0x01E1BB 07:E1AB: C8        INY
bra_E1AC:
C - - - - - 0x01E1BC 07:E1AC: 88        DEY
C - - - - - 0x01E1BD 07:E1AD: F0 09     BEQ bra_E1B8
C - - - - - 0x01E1BF 07:E1AF: E6 0D     INC ram_000D_t06_hi ; -> 01 (0108)
C - - - - - 0x01E1C1 07:E1B1: 88        DEY
C - - - - - 0x01E1C2 07:E1B2: F0 04     BEQ bra_E1B8
C - - - - - 0x01E1C4 07:E1B4: A9 00     LDA #$00
C - - - - - 0x01E1C6 07:E1B6: 85 16     STA ram_0016_t01_lo
bra_E1B8:
C - - - - - 0x01E1C8 07:E1B8: 20 B5 E3  JSR sub_E3B5
C - - - - - 0x01E1CB 07:E1BB: 20 F2 E4  JSR sub_E4F2
C - - - - - 0x01E1CE 07:E1BE: A5 1E     LDA ram_001E_t10
C - - - - - 0x01E1D0 07:E1C0: D0 35     BNE bra_E1F7    ; jmp?



ofs_002_0x01E1D2_03:
; con_DA9D_03
C - - J - - 0x01E1D2 07:E1C2: A5 69     LDA ram_0069
C - - - - - 0x01E1D4 07:E1C4: 85 3C     STA ram_003C_t03
C - - - - - 0x01E1D6 07:E1C6: 20 2C E2  JSR sub_E22C
C - - - - - 0x01E1D9 07:E1C9: A9 01     LDA #$01
C - - - - - 0x01E1DB 07:E1CB: 85 05     STA ram_0005_t14_hi
C - - - - - 0x01E1DD 07:E1CD: A9 00     LDA #$00
C - - - - - 0x01E1DF 07:E1CF: A4 69     LDY ram_0069
C - - - - - 0x01E1E1 07:E1D1: 10 04     BPL bra_E1D7
C - - - - - 0x01E1E3 07:E1D3: C6 05     DEC ram_0005_t14_hi    ; -> FF
C - - - - - 0x01E1E5 07:E1D5: A9 08     LDA #$08
bra_E1D7:
C - - - - - 0x01E1E7 07:E1D7: 85 03     STA ram_0003_t30_lo
C - - - - - 0x01E1E9 07:E1D9: A5 61     LDA ram_0061_lo
C - - - - - 0x01E1EB 07:E1DB: 29 F8     AND #$F8
C - - - - - 0x01E1ED 07:E1DD: 18        CLC
C - - - - - 0x01E1EE 07:E1DE: 65 03     ADC ram_0003_t30_lo
C - - - - - 0x01E1F0 07:E1E0: 85 03     STA ram_0003_t04_lo
C - - - - - 0x01E1F2 07:E1E2: A5 60     LDA ram_0060_hi
C - - - - - 0x01E1F4 07:E1E4: 65 05     ADC ram_0005_t14_hi
C - - - - - 0x01E1F6 07:E1E6: 85 05     STA ram_0005_t05_hi
C - - - - - 0x01E1F8 07:E1E8: 20 F2 E4  JSR sub_E4F2
C - - - - - 0x01E1FB 07:E1EB: A5 75     LDA ram_stage
C - - - - - 0x01E1FD 07:E1ED: C9 03     CMP #$03
C - - - - - 0x01E1FF 07:E1EF: F0 04     BEQ bra_E1F5
C - - - - - 0x01E201 07:E1F1: A9 1E     LDA #$1E
C - - - - - 0x01E203 07:E1F3: D0 02     BNE bra_E1F7    ; jmp
bra_E1F5:
- - - - - - 0x01E205 07:E1F5: A9 20     LDA #$20
bra_E1F7:
C - - - - - 0x01E207 07:E1F7: 20 9D E4  JSR sub_E49D
C - - - - - 0x01E20A 07:E1FA: 20 19 E3  JSR sub_E319
C - - - - - 0x01E20D 07:E1FD: 20 64 E5  JSR sub_E564
C - - - - - 0x01E210 07:E200: 84 07     STY ram_0007_t03
C - - - - - 0x01E212 07:E202: 20 AE E5  JSR sub_E5AE
C - - - - - 0x01E215 07:E205: 20 41 EA  JSR sub_EA41
C - - - - - 0x01E218 07:E208: 20 C1 DA  JSR sub_0x01DAD1_close_ppu_buffer
C - - - - - 0x01E21B 07:E20B: A5 06     LDA ram_0006_t03
C - - - - - 0x01E21D 07:E20D: F0 1A     BEQ bra_E229
C - - - - - 0x01E21F 07:E20F: 20 29 E2  JSR sub_E229
C - - - - - 0x01E222 07:E212: 20 54 E3  JSR sub_E354
C - - - - - 0x01E225 07:E215: A5 07     LDA ram_0007_t03
C - - - - - 0x01E227 07:E217: 18        CLC
C - - - - - 0x01E228 07:E218: 65 0B     ADC ram_000B_t06
C - - - - - 0x01E22A 07:E21A: 85 07     STA ram_0007_t03
C - - - - - 0x01E22C 07:E21C: 90 02     BCC bra_E220
; bzk bug? value can be from ram_003A_t01_data + $01
C - - - - - 0x01E22E 07:E21E: E6 3B     INC ram_003B_t01
bra_E220:
C - - - - - 0x01E230 07:E220: 20 AE E5  JSR sub_E5AE
C - - - - - 0x01E233 07:E223: 20 41 EA  JSR sub_EA41
C - - - - - 0x01E236 07:E226: 20 C1 DA  JSR sub_0x01DAD1_close_ppu_buffer
bra_E229:
sub_E229:
C - - - - - 0x01E239 07:E229: 4C FE E2  JMP loc_E2FE



sub_E22C:
C - - - - - 0x01E23C 07:E22C: A5 64     LDA ram_0064_lo
C - - - - - 0x01E23E 07:E22E: 38        SEC
C - - - - - 0x01E23F 07:E22F: E9 28     SBC #< $0028
C - - - - - 0x01E241 07:E231: 85 02     STA ram_0002_t45_lo
C - - - - - 0x01E243 07:E233: A5 63     LDA ram_0063_hi
C - - - - - 0x01E245 07:E235: E9 00     SBC #> $0028
C - - - - - 0x01E247 07:E237: 85 04     STA ram_0004_t08_hi
C - - - - - 0x01E249 07:E239: 10 06     BPL bra_E241_RTS
C - - - - - 0x01E24B 07:E23B: A9 00     LDA #$00
C - - - - - 0x01E24D 07:E23D: 85 02     STA ram_0002_t45_lo
C - - - - - 0x01E24F 07:E23F: 85 04     STA ram_0004_t08_hi
bra_E241_RTS:
C - - - - - 0x01E251 07:E241: 60        RTS



ofs_002_0x01E252_10:
; con_DA9D_10
C - - J - - 0x01E252 07:E242: A9 00     LDA #$00
C - - - - - 0x01E254 07:E244: 85 3C     STA ram_003C_t03
C - - - - - 0x01E256 07:E246: 85 16     STA ram_0016_t10_useless_00
C - - - - - 0x01E258 07:E248: A9 01     LDA #$01
C - - - - - 0x01E25A 07:E24A: 85 0D     STA ram_000D_t11_useless_01
C - - - - - 0x01E25C 07:E24C: A5 A4     LDA ram_00A4_lo
C - - - - - 0x01E25E 07:E24E: 85 02     STA ram_0002_t45_lo
C - - - - - 0x01E260 07:E250: A5 A3     LDA ram_00A3_hi
C - - - - - 0x01E262 07:E252: 85 04     STA ram_0004_t08_hi
C - - - - - 0x01E264 07:E254: A5 A1     LDA ram_00A1_lo
C - - - - - 0x01E266 07:E256: 18        CLC
C - - - - - 0x01E267 07:E257: 65 16     ADC ram_0016_t10_useless_00
C - - - - - 0x01E269 07:E259: 85 03     STA ram_0003_t04_lo
C - - - - - 0x01E26B 07:E25B: A5 A0     LDA ram_00A0_hi
C - - - - - 0x01E26D 07:E25D: 65 0D     ADC ram_000D_t11_useless_01
C - - - - - 0x01E26F 07:E25F: 85 05     STA ram_0005_t05_hi
C - - - - - 0x01E271 07:E261: 4C BD E2  JMP loc_E2BD



ofs_002_0x01E274_02:
; con_DA9D_02
C - - J - - 0x01E274 07:E264: A5 69     LDA ram_0069
C - - - - - 0x01E276 07:E266: 85 3C     STA ram_003C_t03
C - - - - - 0x01E278 07:E268: A5 75     LDA ram_stage
C - - - - - 0x01E27A 07:E26A: F0 2D     BEQ bra_E299
C - - - - - 0x01E27C 07:E26C: C9 03     CMP #$03
C - - - - - 0x01E27E 07:E26E: D0 14     BNE bra_E284
C - - - - - 0x01E280 07:E270: A5 BB     LDA ram_00BB
C - - - - - 0x01E282 07:E272: D0 10     BNE bra_E284
C - - - - - 0x01E284 07:E274: A5 64     LDA ram_0064_lo
C - - - - - 0x01E286 07:E276: 38        SEC
C - - - - - 0x01E287 07:E277: E9 90     SBC #< $0090
C - - - - - 0x01E289 07:E279: 85 02     STA ram_0002_t45_lo
C - - - - - 0x01E28B 07:E27B: A5 63     LDA ram_0063_hi
C - - - - - 0x01E28D 07:E27D: E9 00     SBC #> $0090
C - - - - - 0x01E28F 07:E27F: 85 04     STA ram_0004_t08_hi
C - - - - - 0x01E291 07:E281: 4C 87 E2  JMP loc_E287
bra_E284:
C - - - - - 0x01E294 07:E284: 20 2C E2  JSR sub_E22C
loc_E287:
C D 3 - - - 0x01E297 07:E287: A9 01     LDA #> $0100
C - - - - - 0x01E299 07:E289: 85 0D     STA ram_000D_t06_hi
C - - - - - 0x01E29B 07:E28B: A9 00     LDA #< $0100
C - - - - - 0x01E29D 07:E28D: 85 16     STA ram_0016_t01_lo
C - - - - - 0x01E29F 07:E28F: A5 69     LDA ram_0069
C - - - - - 0x01E2A1 07:E291: 10 22     BPL bra_E2B5
- - - - - - 0x01E2A3 07:E293: A9 FF     LDA #$FF
- - - - - - 0x01E2A5 07:E295: 85 0D     STA ram_000D_t06_hi
- - - - - - 0x01E2A7 07:E297: D0 1C     BNE bra_E2B5    ; jmp
bra_E299:
C - - - - - 0x01E2A9 07:E299: A9 01     LDA #> $0160
C - - - - - 0x01E2AB 07:E29B: 85 0D     STA ram_000D_t06_hi
C - - - - - 0x01E2AD 07:E29D: A9 60     LDA #< $0160
C - - - - - 0x01E2AF 07:E29F: 85 16     STA ram_0016_t01_lo
C - - - - - 0x01E2B1 07:E2A1: A5 69     LDA ram_0069
C - - - - - 0x01E2B3 07:E2A3: 10 08     BPL bra_E2AD
C - - - - - 0x01E2B5 07:E2A5: A9 FF     LDA #> $FFA0
C - - - - - 0x01E2B7 07:E2A7: 85 0D     STA ram_000D_t06_hi
C - - - - - 0x01E2B9 07:E2A9: A9 A0     LDA #< $FFA0
C - - - - - 0x01E2BB 07:E2AB: 85 16     STA ram_0016_t01_lo
bra_E2AD:
C - - - - - 0x01E2BD 07:E2AD: A5 64     LDA ram_0064_lo
C - - - - - 0x01E2BF 07:E2AF: 85 02     STA ram_0002_t13
C - - - - - 0x01E2C1 07:E2B1: A5 63     LDA ram_0063_hi
C - - - - - 0x01E2C3 07:E2B3: 85 04     STA ram_0004_t28
bra_E2B5:
C - - - - - 0x01E2C5 07:E2B5: 20 87 E3  JSR sub_E387
C - - - - - 0x01E2C8 07:E2B8: C9 80     CMP #$80
C - - - - - 0x01E2CA 07:E2BA: 90 01     BCC bra_E2BD
C - - - - - 0x01E2CC 07:E2BC: 60        RTS
bra_E2BD:
loc_E2BD:
C D 3 - - - 0x01E2CD 07:E2BD: 20 F2 E4  JSR sub_E4F2
C - - - - - 0x01E2D0 07:E2C0: A5 75     LDA ram_stage
C - - - - - 0x01E2D2 07:E2C2: F0 10     BEQ bra_E2D4
C - - - - - 0x01E2D4 07:E2C4: C9 03     CMP #$03
C - - - - - 0x01E2D6 07:E2C6: D0 08     BNE bra_E2D0
C - - - - - 0x01E2D8 07:E2C8: A5 BB     LDA ram_00BB
C - - - - - 0x01E2DA 07:E2CA: D0 04     BNE bra_E2D0
C - - - - - 0x01E2DC 07:E2CC: A9 2C     LDA #$2C
C - - - - - 0x01E2DE 07:E2CE: D0 06     BNE bra_E2D6    ; jmp
bra_E2D0:
C - - - - - 0x01E2E0 07:E2D0: A9 1E     LDA #$1E
C - - - - - 0x01E2E2 07:E2D2: D0 02     BNE bra_E2D6    ; jmp
bra_E2D4:
C - - - - - 0x01E2E4 07:E2D4: A9 18     LDA #$18
bra_E2D6:
C - - - - - 0x01E2E6 07:E2D6: 20 9D E4  JSR sub_E49D
C - - - - - 0x01E2E9 07:E2D9: 20 19 E3  JSR sub_E319
C - - - - - 0x01E2EC 07:E2DC: 20 64 E5  JSR sub_E564
C - - - - - 0x01E2EF 07:E2DF: 84 07     STY ram_0007_t03
C - - - - - 0x01E2F1 07:E2E1: 20 AE E5  JSR sub_E5AE
C - - - - - 0x01E2F4 07:E2E4: 20 8B E9  JSR sub_E98B
C - - - - - 0x01E2F7 07:E2E7: 20 C1 DA  JSR sub_0x01DAD1_close_ppu_buffer
C - - - - - 0x01E2FA 07:E2EA: A5 06     LDA ram_0006_t03
C - - - - - 0x01E2FC 07:E2EC: F0 10     BEQ bra_E2FE
C - - - - - 0x01E2FE 07:E2EE: 20 FE E2  JSR sub_E2FE
C - - - - - 0x01E301 07:E2F1: 20 41 E3  JSR sub_E341
C - - - - - 0x01E304 07:E2F4: A5 06     LDA ram_0006_t03
C - - - - - 0x01E306 07:E2F6: F0 06     BEQ bra_E2FE
- - - - - - 0x01E308 07:E2F8: 20 FE E2  JSR sub_E2FE
- - - - - - 0x01E30B 07:E2FB: 20 41 E3  JSR sub_E341
bra_E2FE:
loc_E2FE:
sub_E2FE:
C D 3 - - - 0x01E30E 07:E2FE: A0 00     LDY #$00
C - - - - - 0x01E310 07:E300: A5 0A     LDA ram_000A_t18_buffer_index
C - - - - - 0x01E312 07:E302: 38        SEC
C - - - - - 0x01E313 07:E303: E9 04     SBC #$04
C - - - - - 0x01E315 07:E305: 99 03 05  STA ram_0500_nmt_attr_buffer + $03,Y
C - - - - - 0x01E318 07:E308: A6 26     LDX ram_buffer_index
bra_E30A_loop:
C - - - - - 0x01E31A 07:E30A: B9 00 05  LDA ram_0500_nmt_attr_buffer,Y
C - - - - - 0x01E31D 07:E30D: 9D 00 01  STA ram_ppu_buffer_1,X
C - - - - - 0x01E320 07:E310: E8        INX
C - - - - - 0x01E321 07:E311: C8        INY
C - - - - - 0x01E322 07:E312: C4 0A     CPY ram_000A_t18_buffer_index
C - - - - - 0x01E324 07:E314: D0 F4     BNE bra_E30A_loop
C - - - - - 0x01E326 07:E316: 86 26     STX ram_buffer_index
C - - - - - 0x01E328 07:E318: 60        RTS



sub_E319:
loc_E319:
C D 3 - - - 0x01E329 07:E319: A9 02     LDA #$02
C - - - - - 0x01E32B 07:E31B: 20 C9 DA  JSR sub_0x01DAD9_write_byte_to_ppu_buffer
C - - - - - 0x01E32E 07:E31E: A5 0E     LDA ram_000E_t06
C - - - - - 0x01E330 07:E320: 20 C9 DA  JSR sub_0x01DAD9_write_byte_to_ppu_buffer
C - - - - - 0x01E333 07:E323: A5 0F     LDA ram_000F_t07
C - - - - - 0x01E335 07:E325: 20 C9 DA  JSR sub_0x01DAD9_write_byte_to_ppu_buffer
C - - - - - 0x01E338 07:E328: A0 00     LDY #$00
C - - - - - 0x01E33A 07:E32A: A9 06     LDA #$06
C - - - - - 0x01E33C 07:E32C: 20 CE DA  JSR sub_DACE
C - - - - - 0x01E33F 07:E32F: A5 14     LDA ram_0014_t06
C - - - - - 0x01E341 07:E331: 20 CE DA  JSR sub_DACE
C - - - - - 0x01E344 07:E334: A5 15     LDA ram_0015_t02
C - - - - - 0x01E346 07:E336: 20 CE DA  JSR sub_DACE
C - - - - - 0x01E349 07:E339: A9 00     LDA #$00
C - - - - - 0x01E34B 07:E33B: 20 CE DA  JSR sub_DACE
C - - - - - 0x01E34E 07:E33E: 84 0A     STY ram_000A_t18_buffer_index
C - - - - - 0x01E350 07:E340: 60        RTS



sub_E341:
C - - - - - 0x01E351 07:E341: 20 54 E3  JSR sub_E354
C - - - - - 0x01E354 07:E344: A5 07     LDA ram_0007_t03
C - - - - - 0x01E356 07:E346: 18        CLC
C - - - - - 0x01E357 07:E347: 65 0B     ADC ram_000B_t06
C - - - - - 0x01E359 07:E349: 85 07     STA ram_0007_t03
C - - - - - 0x01E35B 07:E34B: 20 AE E5  JSR sub_E5AE
C - - - - - 0x01E35E 07:E34E: 20 8B E9  JSR sub_E98B
C - - - - - 0x01E361 07:E351: 4C C1 DA  JMP loc_0x01DAD1_close_ppu_buffer



sub_E354:
; bzk optimize, useless LDA + STA
C - - - - - 0x01E364 07:E354: A9 00     LDA #$00
C - - - - - 0x01E366 07:E356: 85 0A     STA ram_000A_t19_useless
C - - - - - 0x01E368 07:E358: A5 14     LDA ram_0014_t06
C - - - - - 0x01E36A 07:E35A: 29 C7     AND #$C7
C - - - - - 0x01E36C 07:E35C: 85 14     STA ram_0014_t06
C - - - - - 0x01E36E 07:E35E: A5 15     LDA ram_0015_t02
C - - - - - 0x01E370 07:E360: 49 0C     EOR #$0C
C - - - - - 0x01E372 07:E362: 29 2F     AND #$2F
C - - - - - 0x01E374 07:E364: 85 15     STA ram_0015_t02
C - - - - - 0x01E376 07:E366: A5 0E     LDA ram_000E_t06
C - - - - - 0x01E378 07:E368: 29 1F     AND #$1F
C - - - - - 0x01E37A 07:E36A: 85 0E     STA ram_000E_t06
C - - - - - 0x01E37C 07:E36C: A5 0F     LDA ram_000F_t07
C - - - - - 0x01E37E 07:E36E: 49 0C     EOR #$0C
C - - - - - 0x01E380 07:E370: 29 2C     AND #$2C
C - - - - - 0x01E382 07:E372: 85 0F     STA ram_000F_t07
C - - - - - 0x01E384 07:E374: A5 1F     LDA ram_001F_t15
C - - - - - 0x01E386 07:E376: 49 80     EOR #$80
C - - - - - 0x01E388 07:E378: 29 8F     AND #$8F
C - - - - - 0x01E38A 07:E37A: 85 1F     STA ram_001F_t15
C - - - - - 0x01E38C 07:E37C: A5 02     LDA ram_0002_t13
C - - - - - 0x01E38E 07:E37E: 29 07     AND #$07
C - - - - - 0x01E390 07:E380: 85 02     STA ram_0002_t13
C - - - - - 0x01E392 07:E382: E6 04     INC ram_0004_t28
C - - - - - 0x01E394 07:E384: 4C 19 E3  JMP loc_E319



sub_E387:
; in
    ; ram_000D_t06_hi
    ; ram_0016_t01_lo
; out
    ; ram_0003_t04_lo
    ; ram_0005_t05_hi
C - - - - - 0x01E397 07:E387: A5 61     LDA ram_0061_lo
C - - - - - 0x01E399 07:E389: 18        CLC
C - - - - - 0x01E39A 07:E38A: 65 16     ADC ram_0016_t01_lo
C - - - - - 0x01E39C 07:E38C: 85 03     STA ram_0003_t04_lo
C - - - - - 0x01E39E 07:E38E: A5 60     LDA ram_0060_hi
C - - - - - 0x01E3A0 07:E390: 65 0D     ADC ram_000D_t06_hi
C - - - - - 0x01E3A2 07:E392: 85 05     STA ram_0005_t05_hi
C - - - - - 0x01E3A4 07:E394: 60        RTS



ofs_002_0x01E3A5_0D:
; con_DA9D_0D
C - - J - - 0x01E3A5 07:E395: A9 FF     LDA #$FF
C - - - - - 0x01E3A7 07:E397: 85 3C     STA ram_003C_t03
C - - - - - 0x01E3A9 07:E399: 85 0D     STA ram_000D_t12_useless_FF
C - - - - - 0x01E3AB 07:E39B: A9 70     LDA #$70
C - - - - - 0x01E3AD 07:E39D: 85 16     STA ram_0016_t11_useless_70
C - - - - - 0x01E3AF 07:E39F: A5 02     LDA ram_0002_t50_lo
C - - - - - 0x01E3B1 07:E3A1: 18        CLC
C - - - - - 0x01E3B2 07:E3A2: 65 16     ADC ram_0016_t11_useless_70
C - - - - - 0x01E3B4 07:E3A4: 85 02     STA ram_0002_t45_lo
C - - - - - 0x01E3B6 07:E3A6: A5 04     LDA ram_0004_t11_hi
C - - - - - 0x01E3B8 07:E3A8: 65 0D     ADC ram_000D_t12_useless_FF
C - - - - - 0x01E3BA 07:E3AA: 85 04     STA ram_0004_t08_hi
C - - - - - 0x01E3BC 07:E3AC: 20 C3 E3  JSR sub_E3C3
C - - - - - 0x01E3BF 07:E3AF: 20 B5 E3  JSR sub_E3B5
C - - - - - 0x01E3C2 07:E3B2: 4C 1D E4  JMP loc_E41D



sub_E3B5:
; in
    ; ram_0003_t03_lo
    ; ram_0005_t04_hi
    ; ram_000D_t06_hi
    ; ram_0016_t01_lo
; out
    ; ram_0003_t04_lo
    ; ram_0005_t05_hi
C - - - - - 0x01E3C5 07:E3B5: A5 03     LDA ram_0003_t03_lo
C - - - - - 0x01E3C7 07:E3B7: 18        CLC
C - - - - - 0x01E3C8 07:E3B8: 65 16     ADC ram_0016_t01_lo
C - - - - - 0x01E3CA 07:E3BA: 85 03     STA ram_0003_t04_lo
C - - - - - 0x01E3CC 07:E3BC: A5 05     LDA ram_0005_t04_hi
C - - - - - 0x01E3CE 07:E3BE: 65 0D     ADC ram_000D_t06_hi
C - - - - - 0x01E3D0 07:E3C0: 85 05     STA ram_0005_t05_hi
C - - - - - 0x01E3D2 07:E3C2: 60        RTS



sub_E3C3:
; out
    ; ram_000D_t06_hi
    ; ram_0016_t01_lo
C - - - - - 0x01E3D3 07:E3C3: A9 00     LDA #$00    ; 0000
C - - - - - 0x01E3D5 07:E3C5: 85 0D     STA ram_000D_t06_hi
C - - - - - 0x01E3D7 07:E3C7: 85 16     STA ram_0016_t01_lo
C - - - - - 0x01E3D9 07:E3C9: A5 69     LDA ram_0069
C - - - - - 0x01E3DB 07:E3CB: 30 04     BMI bra_E3D1_RTS
C - - - - - 0x01E3DD 07:E3CD: A9 08     LDA #$08    ; 0008
C - - - - - 0x01E3DF 07:E3CF: 85 16     STA ram_0016_t01_lo
bra_E3D1_RTS:
C - - - - - 0x01E3E1 07:E3D1: 60        RTS



ofs_002_0x01E3E2_01:
; con_DA9D_01
C - - J - - 0x01E3E2 07:E3D2: A5 6B     LDA ram_006B
C - - - - - 0x01E3E4 07:E3D4: 85 3C     STA ram_003C_t03
C - - - - - 0x01E3E6 07:E3D6: A5 75     LDA ram_stage
C - - - - - 0x01E3E8 07:E3D8: C9 03     CMP #$03
C - - - - - 0x01E3EA 07:E3DA: D0 17     BNE bra_E3F3
C - - - - - 0x01E3EC 07:E3DC: A9 00     LDA #> $00C8
C - - - - - 0x01E3EE 07:E3DE: 85 0D     STA ram_000D_t07_hi
C - - - - - 0x01E3F0 07:E3E0: A9 C8     LDA #< $00C8
C - - - - - 0x01E3F2 07:E3E2: 85 16     STA ram_0016_t02_lo
C - - - - - 0x01E3F4 07:E3E4: A5 6B     LDA ram_006B
C - - - - - 0x01E3F6 07:E3E6: 10 1F     BPL bra_E407
C - - - - - 0x01E3F8 07:E3E8: A9 FF     LDA #> $FF70
C - - - - - 0x01E3FA 07:E3EA: 85 0D     STA ram_000D_t07_hi
C - - - - - 0x01E3FC 07:E3EC: A9 70     LDA #< $FF70
C - - - - - 0x01E3FE 07:E3EE: 85 16     STA ram_0016_t02_lo
C - - - - - 0x01E400 07:E3F0: 4C 07 E4  JMP loc_E407
bra_E3F3:
C - - - - - 0x01E403 07:E3F3: A9 00     LDA #> $00C8
C - - - - - 0x01E405 07:E3F5: 85 0D     STA ram_000D_t07_hi
C - - - - - 0x01E407 07:E3F7: A9 C8     LDA #< $00C8
C - - - - - 0x01E409 07:E3F9: 85 16     STA ram_0016_t02_lo
C - - - - - 0x01E40B 07:E3FB: A5 6B     LDA ram_006B
C - - - - - 0x01E40D 07:E3FD: 10 08     BPL bra_E407
C - - - - - 0x01E40F 07:E3FF: A9 FF     LDA #> $FFD8
C - - - - - 0x01E411 07:E401: 85 0D     STA ram_000D_t07_hi
C - - - - - 0x01E413 07:E403: A9 D8     LDA #< $FFD8
C - - - - - 0x01E415 07:E405: 85 16     STA ram_0016_t02_lo
bra_E407:
loc_E407:
C D 3 - - - 0x01E417 07:E407: A5 64     LDA ram_0064_lo
C - - - - - 0x01E419 07:E409: 18        CLC
C - - - - - 0x01E41A 07:E40A: 65 16     ADC ram_0016_t02_lo
C - - - - - 0x01E41C 07:E40C: 85 02     STA ram_0002_t45_lo
C - - - - - 0x01E41E 07:E40E: A5 63     LDA ram_0063_hi
C - - - - - 0x01E420 07:E410: 65 0D     ADC ram_000D_t07_hi
C - - - - - 0x01E422 07:E412: 85 04     STA ram_0004_t08_hi
C - - - - - 0x01E424 07:E414: 10 01     BPL bra_E417
C - - - - - 0x01E426 07:E416: 60        RTS
bra_E417:
C - - - - - 0x01E427 07:E417: 20 C3 E3  JSR sub_E3C3
C - - - - - 0x01E42A 07:E41A: 20 87 E3  JSR sub_E387
loc_E41D:
C D 3 - - - 0x01E42D 07:E41D: 20 F2 E4  JSR sub_E4F2
C - - - - - 0x01E430 07:E420: A9 20     LDA #$20
C - - - - - 0x01E432 07:E422: 20 9D E4  JSR sub_E49D
C - - - - - 0x01E435 07:E425: 20 75 E4  JSR sub_E475
C - - - - - 0x01E438 07:E428: 20 64 E5  JSR sub_E564
C - - - - - 0x01E43B 07:E42B: 84 07     STY ram_0007_t03
C - - - - - 0x01E43D 07:E42D: 20 AE E5  JSR sub_E5AE
C - - - - - 0x01E440 07:E430: 20 3D E8  JSR sub_E83D
C - - - - - 0x01E443 07:E433: 20 C1 DA  JSR sub_0x01DAD1_close_ppu_buffer
C - - - - - 0x01E446 07:E436: A5 06     LDA ram_0006_t03
C - - - - - 0x01E448 07:E438: F0 38     BEQ bra_E472
C - - - - - 0x01E44A 07:E43A: 20 72 E4  JSR sub_E472
; bzk optimize, useless LDA + STA
C - - - - - 0x01E44D 07:E43D: A9 00     LDA #$00
C - - - - - 0x01E44F 07:E43F: 85 0A     STA ram_000A_t20_useless
C - - - - - 0x01E451 07:E441: A5 14     LDA ram_0014_t06
C - - - - - 0x01E453 07:E443: 29 F8     AND #$F8
C - - - - - 0x01E455 07:E445: 85 14     STA ram_0014_t06
C - - - - - 0x01E457 07:E447: A5 0E     LDA ram_000E_t06
C - - - - - 0x01E459 07:E449: 29 E0     AND #$E0
C - - - - - 0x01E45B 07:E44B: 85 0E     STA ram_000E_t06
C - - - - - 0x01E45D 07:E44D: A5 1F     LDA ram_001F_t15
C - - - - - 0x01E45F 07:E44F: 49 08     EOR #$08
C - - - - - 0x01E461 07:E451: 29 F8     AND #$F8
C - - - - - 0x01E463 07:E453: 85 1F     STA ram_001F_t15
C - - - - - 0x01E465 07:E455: A5 03     LDA ram_0003_t04_lo
C - - - - - 0x01E467 07:E457: 29 07     AND #$07
C - - - - - 0x01E469 07:E459: 85 03     STA ram_0003_t04_lo
C - - - - - 0x01E46B 07:E45B: E6 05     INC ram_0005_t05_hi
C - - - - - 0x01E46D 07:E45D: 20 75 E4  JSR sub_E475
C - - - - - 0x01E470 07:E460: A4 07     LDY ram_0007_t03
C - - - - - 0x01E472 07:E462: C8        INY
C - - - - - 0x01E473 07:E463: D0 02     BNE bra_E467
- - - - - - 0x01E475 07:E465: E6 3B     INC ram_003B_t01
bra_E467:
C - - - - - 0x01E477 07:E467: 84 07     STY ram_0007_t03
C - - - - - 0x01E479 07:E469: 20 AE E5  JSR sub_E5AE
C - - - - - 0x01E47C 07:E46C: 20 3D E8  JSR sub_E83D
C - - - - - 0x01E47F 07:E46F: 20 C1 DA  JSR sub_0x01DAD1_close_ppu_buffer
bra_E472:
sub_E472:
C - - - - - 0x01E482 07:E472: 4C FE E2  JMP loc_E2FE



sub_E475:
C - - - - - 0x01E485 07:E475: A9 01     LDA #$01
C - - - - - 0x01E487 07:E477: 20 C9 DA  JSR sub_0x01DAD9_write_byte_to_ppu_buffer
C - - - - - 0x01E48A 07:E47A: A5 0E     LDA ram_000E_t06
C - - - - - 0x01E48C 07:E47C: 20 C9 DA  JSR sub_0x01DAD9_write_byte_to_ppu_buffer
C - - - - - 0x01E48F 07:E47F: A5 0F     LDA ram_000F_t07
C - - - - - 0x01E491 07:E481: 20 C9 DA  JSR sub_0x01DAD9_write_byte_to_ppu_buffer
C - - - - - 0x01E494 07:E484: A0 00     LDY #$00
C - - - - - 0x01E496 07:E486: A9 04     LDA #$04
C - - - - - 0x01E498 07:E488: 20 CE DA  JSR sub_DACE
C - - - - - 0x01E49B 07:E48B: A5 14     LDA ram_0014_t06
C - - - - - 0x01E49D 07:E48D: 20 CE DA  JSR sub_DACE
C - - - - - 0x01E4A0 07:E490: A5 15     LDA ram_0015_t02
C - - - - - 0x01E4A2 07:E492: 20 CE DA  JSR sub_DACE
C - - - - - 0x01E4A5 07:E495: A9 00     LDA #$00
C - - - - - 0x01E4A7 07:E497: 20 CE DA  JSR sub_DACE
C - - - - - 0x01E4AA 07:E49A: 84 0A     STY ram_000A_t18_buffer_index
C - - - - - 0x01E4AC 07:E49C: 60        RTS



sub_DACE:
; bzk optimize
C - - - - - 0x01DADE 07:DACE: 99 00 05  STA ram_0500_nmt_attr_buffer,Y
C - - - - - 0x01DAE1 07:DAD1: C8        INY
C - - - - - 0x01DAE2 07:DAD2: 60        RTS



sub_E49D:
; in
    ; A = 
C - - - - - 0x01E4AD 07:E49D: 85 06     STA ram_0006_t03
C - - - - - 0x01E4AF 07:E49F: A5 0E     LDA ram_000E_t06
; / 04
C - - - - - 0x01E4B1 07:E4A1: 4A        LSR
C - - - - - 0x01E4B2 07:E4A2: 4A        LSR
C - - - - - 0x01E4B3 07:E4A3: 29 07     AND #$07
C - - - - - 0x01E4B5 07:E4A5: 85 15     STA ram_0015_t03
C - - - - - 0x01E4B7 07:E4A7: 85 0D     STA ram_000D_t08
C - - - - - 0x01E4B9 07:E4A9: A5 0F     LDA ram_000F_t07
C - - - - - 0x01E4BB 07:E4AB: 29 03     AND #$03
C - - - - - 0x01E4BD 07:E4AD: 85 14     STA ram_0014_t07
C - - - - - 0x01E4BF 07:E4AF: A5 0E     LDA ram_000E_t06
C - - - - - 0x01E4C1 07:E4B1: 29 80     AND #$80
; / 04
C - - - - - 0x01E4C3 07:E4B3: 46 14     LSR ram_0014_t07
C - - - - - 0x01E4C5 07:E4B5: 6A        ROR
C - - - - - 0x01E4C6 07:E4B6: 46 14     LSR ram_0014_t07
C - - - - - 0x01E4C8 07:E4B8: 6A        ROR
; 
C - - - - - 0x01E4C9 07:E4B9: 6A        ROR
C - - - - - 0x01E4CA 07:E4BA: 85 16     STA ram_0016_t06
C - - - - - 0x01E4CC 07:E4BC: 6A        ROR
C - - - - - 0x01E4CD 07:E4BD: 05 15     ORA ram_0015_t03
C - - - - - 0x01E4CF 07:E4BF: 09 C0     ORA #$C0
C - - - - - 0x01E4D1 07:E4C1: 85 14     STA ram_0014_t06
C - - - - - 0x01E4D3 07:E4C3: A5 0F     LDA ram_000F_t07
C - - - - - 0x01E4D5 07:E4C5: 29 2C     AND #$2C
C - - - - - 0x01E4D7 07:E4C7: 09 03     ORA #$03
C - - - - - 0x01E4D9 07:E4C9: 85 15     STA ram_0015_t02
C - - - - - 0x01E4DB 07:E4CB: A4 88     LDY ram_x2_stage
C - - - - - 0x01E4DD 07:E4CD: B9 4D DA  LDA tbl_0x01DA5D_nametable_attributes,Y
C - - - - - 0x01E4E0 07:E4D0: 85 18     STA ram_0018_t02_nmt_attr_data
C - - - - - 0x01E4E2 07:E4D2: B9 4E DA  LDA tbl_0x01DA5D_nametable_attributes + $01,Y
C - - - - - 0x01E4E5 07:E4D5: 85 19     STA ram_0018_t02_nmt_attr_data + $01
C - - - - - 0x01E4E7 07:E4D7: A5 05     LDA ram_0005_t05_hi
C - - - - - 0x01E4E9 07:E4D9: 29 01     AND #$01
C - - - - - 0x01E4EB 07:E4DB: F0 02     BEQ bra_E4DF
C - - - - - 0x01E4ED 07:E4DD: A9 08     LDA #$08
bra_E4DF:
C - - - - - 0x01E4EF 07:E4DF: 05 0D     ORA ram_000D_t08
C - - - - - 0x01E4F1 07:E4E1: 05 16     ORA ram_0016_t06
C - - - - - 0x01E4F3 07:E4E3: 85 1F     STA ram_001F_t16
C - - - - - 0x01E4F5 07:E4E5: A5 04     LDA ram_0004_t28
C - - - - - 0x01E4F7 07:E4E7: 29 01     AND #$01
C - - - - - 0x01E4F9 07:E4E9: F0 02     BEQ bra_E4ED
C - - - - - 0x01E4FB 07:E4EB: A9 80     LDA #$80
bra_E4ED:
C - - - - - 0x01E4FD 07:E4ED: 05 1F     ORA ram_001F_t16
C - - - - - 0x01E4FF 07:E4EF: 85 1F     STA ram_001F_t15
C - - - - - 0x01E501 07:E4F1: 60        RTS



sub_E4F2:
C - - - - - 0x01E502 07:E4F2: A5 34     LDA ram_mirroring
C - - - - - 0x01E504 07:E4F4: D0 14     BNE bra_E50A
C - - - - - 0x01E506 07:E4F6: A5 05     LDA ram_0005_t05_hi
C - - - - - 0x01E508 07:E4F8: 29 01     AND #$01
C - - - - - 0x01E50A 07:E4FA: F0 02     BEQ bra_E4FE
C - - - - - 0x01E50C 07:E4FC: A9 0C     LDA #$0C
bra_E4FE:
C - - - - - 0x01E50E 07:E4FE: 09 20     ORA #$20
C - - - - - 0x01E510 07:E500: 85 0F     STA ram_000F_t07
C - - - - - 0x01E512 07:E502: A5 03     LDA ram_0003_t04_lo
; / 08
C - - - - - 0x01E514 07:E504: 4A        LSR
C - - - - - 0x01E515 07:E505: 4A        LSR
C - - - - - 0x01E516 07:E506: 4A        LSR
C - - - - - 0x01E517 07:E507: 85 0E     STA ram_000E_t06
C - - - - - 0x01E519 07:E509: 60        RTS
bra_E50A:
C - - - - - 0x01E51A 07:E50A: A5 04     LDA ram_0004_t08_hi
C - - - - - 0x01E51C 07:E50C: 0A        ASL
C - - - - - 0x01E51D 07:E50D: A8        TAY
C - - - - - 0x01E51E 07:E50E: B9 B6 F5  LDA tbl_F5B6,Y
C - - - - - 0x01E521 07:E511: 85 15     STA ram_0015_t04
C - - - - - 0x01E523 07:E513: A5 02     LDA ram_0002_t45_lo
C - - - - - 0x01E525 07:E515: 85 0E     STA ram_000E_t07
C - - - - - 0x01E527 07:E517: 38        SEC
C - - - - - 0x01E528 07:E518: E9 F0     SBC #$F0
C - - - - - 0x01E52A 07:E51A: 90 04     BCC bra_E520
C - - - - - 0x01E52C 07:E51C: 85 0E     STA ram_000E_t07
C - - - - - 0x01E52E 07:E51E: E6 15     INC ram_0015_t04    ; -> 01
bra_E520:
C - - - - - 0x01E530 07:E520: A5 0E     LDA ram_000E_t07
C - - - - - 0x01E532 07:E522: 18        CLC
C - - - - - 0x01E533 07:E523: 79 B7 F5  ADC tbl_F5B6 + $01,Y
C - - - - - 0x01E536 07:E526: 90 05     BCC bra_E52D
C - - - - - 0x01E538 07:E528: 18        CLC
C - - - - - 0x01E539 07:E529: 69 10     ADC #$10
C - - - - - 0x01E53B 07:E52B: E6 15     INC ram_0015_t04
bra_E52D:
C - - - - - 0x01E53D 07:E52D: 85 0E     STA ram_000E_t08
C - - - - - 0x01E53F 07:E52F: 38        SEC
C - - - - - 0x01E540 07:E530: E9 F0     SBC #$F0
C - - - - - 0x01E542 07:E532: 90 04     BCC bra_E538
C - - - - - 0x01E544 07:E534: 85 0E     STA ram_000E_t08
C - - - - - 0x01E546 07:E536: E6 15     INC ram_0015_t04
bra_E538:
C - - - - - 0x01E548 07:E538: A5 0E     LDA ram_000E_t08
C - - - - - 0x01E54A 07:E53A: 85 02     STA ram_0002_t13
C - - - - - 0x01E54C 07:E53C: 29 F8     AND #$F8
C - - - - - 0x01E54E 07:E53E: 85 0E     STA ram_000E_t09
C - - - - - 0x01E550 07:E540: A9 00     LDA #$00
; * 04
C - - - - - 0x01E552 07:E542: 06 0E     ASL ram_000E_t09
C - - - - - 0x01E554 07:E544: 2A        ROL
C - - - - - 0x01E555 07:E545: 06 0E     ASL ram_000E_t09
C - - - - - 0x01E557 07:E547: 2A        ROL
C - - - - - 0x01E558 07:E548: 85 0F     STA ram_000F_t08
C - - - - - 0x01E55A 07:E54A: A5 15     LDA ram_0015_t04
C - - - - - 0x01E55C 07:E54C: 85 04     STA ram_0004_t28
C - - - - - 0x01E55E 07:E54E: 29 01     AND #$01
C - - - - - 0x01E560 07:E550: F0 02     BEQ bra_E554
C - - - - - 0x01E562 07:E552: A9 0C     LDA #$0C
bra_E554:
C - - - - - 0x01E564 07:E554: 09 20     ORA #$20
C - - - - - 0x01E566 07:E556: 05 0F     ORA ram_000F_t08
C - - - - - 0x01E568 07:E558: 85 0F     STA ram_000F_t07
C - - - - - 0x01E56A 07:E55A: A5 03     LDA ram_0003_t04_lo
; / 08
C - - - - - 0x01E56C 07:E55C: 4A        LSR
C - - - - - 0x01E56D 07:E55D: 4A        LSR
C - - - - - 0x01E56E 07:E55E: 4A        LSR
C - - - - - 0x01E56F 07:E55F: 05 0E     ORA ram_000E_t09
C - - - - - 0x01E571 07:E561: 85 0E     STA ram_000E_t06
C - - - - - 0x01E573 07:E563: 60        RTS



sub_E564:
C - - - - - 0x01E574 07:E564: 20 C6 E5  JSR sub_E5C6_prepare_stage_data_pointers
C - - - - - 0x01E577 07:E567: A0 00     LDY #$00
C - - - - - 0x01E579 07:E569: 84 C2     STY ram_00C2
C - - - - - 0x01E57B 07:E56B: B1 3A     LDA (ram_003A_t01_data),Y
C - - - - - 0x01E57D 07:E56D: 85 0B     STA ram_000B_t06
C - - - - - 0x01E57F 07:E56F: C8        INY ; 01
C - - - - - 0x01E580 07:E570: B1 3A     LDA (ram_003A_t01_data),Y
C - - - - - 0x01E582 07:E572: 85 0C     STA ram_000C_t01_distance
C - - - - - 0x01E584 07:E574: A5 75     LDA ram_stage
C - - - - - 0x01E586 07:E576: C9 03     CMP #$03
C - - - - - 0x01E588 07:E578: F0 20     BEQ bra_E59A
C - - - - - 0x01E58A 07:E57A: A9 00     LDA #$00
C - - - - - 0x01E58C 07:E57C: A4 04     LDY ram_0004_t28
C - - - - - 0x01E58E 07:E57E: F0 0A     BEQ bra_E58A
C - - - - - 0x01E590 07:E580: 18        CLC
bra_E581_loop:
C - - - - - 0x01E591 07:E581: 65 0B     ADC ram_000B_t06
C - - - - - 0x01E593 07:E583: 90 02     BCC bra_E587
- - - - - - 0x01E595 07:E585: E6 3B     INC ram_003B_t01
bra_E587:
C - - - - - 0x01E597 07:E587: 88        DEY
C - - - - - 0x01E598 07:E588: D0 F7     BNE bra_E581_loop
bra_E58A:
loc_E58A_loop:
C D 3 - - - 0x01E59A 07:E58A: 18        CLC
C - - - - - 0x01E59B 07:E58B: 65 05     ADC ram_0005_t05_hi
C - - - - - 0x01E59D 07:E58D: 90 03     BCC bra_E592
C - - - - - 0x01E59F 07:E58F: E6 3B     INC ram_003B_t01
C - - - - - 0x01E5A1 07:E591: 18        CLC
bra_E592:
C - - - - - 0x01E5A2 07:E592: 69 02     ADC #$02
C - - - - - 0x01E5A4 07:E594: 90 02     BCC bra_E598
- - - - - - 0x01E5A6 07:E596: E6 3B     INC ram_003B_t01
bra_E598:
C - - - - - 0x01E5A8 07:E598: A8        TAY
C - - - - - 0x01E5A9 07:E599: 60        RTS
bra_E59A:
C - - - - - 0x01E5AA 07:E59A: A9 00     LDA #$00
C - - - - - 0x01E5AC 07:E59C: A4 04     LDY ram_0004_t28
C - - - - - 0x01E5AE 07:E59E: F0 EA     BEQ bra_E58A
C - - - - - 0x01E5B0 07:E5A0: 18        CLC
bra_E5A1_loop:
C - - - - - 0x01E5B1 07:E5A1: 65 0B     ADC ram_000B_t06
C - - - - - 0x01E5B3 07:E5A3: 90 03     BCC bra_E5A8
C - - - - - 0x01E5B5 07:E5A5: E6 3B     INC ram_003B_t01
C - - - - - 0x01E5B7 07:E5A7: 18        CLC
bra_E5A8:
C - - - - - 0x01E5B8 07:E5A8: 88        DEY
C - - - - - 0x01E5B9 07:E5A9: D0 F6     BNE bra_E5A1_loop
C - - - - - 0x01E5BB 07:E5AB: 4C 8A E5  JMP loc_E58A_loop



sub_E5AE:
C - - - - - 0x01E5BE 07:E5AE: A4 07     LDY ram_0007_t03
C - - - - - 0x01E5C0 07:E5B0: 88        DEY
C - - - - - 0x01E5C1 07:E5B1: 88        DEY
C - - - - - 0x01E5C2 07:E5B2: A5 75     LDA ram_stage
C - - - - - 0x01E5C4 07:E5B4: C9 01     CMP #$01
C - - - - - 0x01E5C6 07:E5B6: D0 0B     BNE bra_E5C3
C - - - - - 0x01E5C8 07:E5B8: C0 13     CPY #$13
C - - - - - 0x01E5CA 07:E5BA: B0 07     BCS bra_E5C3
C - - - - - 0x01E5CC 07:E5BC: B9 08 E8  LDA tbl_E808,Y
C - - - - - 0x01E5CF 07:E5BF: F0 02     BEQ bra_E5C3
C - - - - - 0x01E5D1 07:E5C1: 85 C2     STA ram_00C2
bra_E5C3:
C - - - - - 0x01E5D3 07:E5C3: A4 07     LDY ram_0007_t03
C - - - - - 0x01E5D5 07:E5C5: 60        RTS



sub_E5C6_prepare_stage_data_pointers:
; out
    ; ram_003A_t01_data
C - - - - - 0x01E5D6 07:E5C6: A4 88     LDY ram_x2_stage
C - - - - - 0x01E5D8 07:E5C8: B9 D3 E5  LDA tbl_E5D3,Y
C - - - - - 0x01E5DB 07:E5CB: 85 3A     STA ram_003A_t01_data
C - - - - - 0x01E5DD 07:E5CD: B9 D4 E5  LDA tbl_E5D3 + $01,Y
C - - - - - 0x01E5E0 07:E5D0: 85 3B     STA ram_003A_t01_data + $01
C - - - - - 0x01E5E2 07:E5D2: 60        RTS



tbl_E5D3:
- D 3 - - - 0x01E5E3 07:E5D3: DD E5     .word _off008_E5DD_00_stage_1
- D 3 - - - 0x01E5E5 07:E5D5: F7 E5     .word _off008_E5F7_02_stage_2
- D 3 - - - 0x01E5E7 07:E5D7: 3A E6     .word _off008_E63A_04_stage_3
- D 3 - - - 0x01E5E9 07:E5D9: 5F E6     .word _off008_E65F_06_stage_4
- D 3 - - - 0x01E5EB 07:E5DB: E8 E7     .word _off008_E7E8_08_stage_5



_off008_E5DD_00_stage_1:
- D 3 - I - 0x01E5ED 07:E5DD: 18        .byte $18   ; 
- D 3 - I - 0x01E5EE 07:E5DE: 00        .byte $00   ; 
- D 3 - I - 0x01E5EF 07:E5DF: 00        .byte $00   ; 
- D 3 - I - 0x01E5F0 07:E5E0: 01        .byte $01   ; 
- D 3 - I - 0x01E5F1 07:E5E1: 02        .byte $02   ; 
- D 3 - I - 0x01E5F2 07:E5E2: 03        .byte $03   ; 
- D 3 - I - 0x01E5F3 07:E5E3: 04        .byte $04   ; 
- D 3 - I - 0x01E5F4 07:E5E4: 05        .byte $05   ; 
- D 3 - I - 0x01E5F5 07:E5E5: 06        .byte $06   ; 
- D 3 - I - 0x01E5F6 07:E5E6: 07        .byte $07   ; 
- D 3 - I - 0x01E5F7 07:E5E7: 08        .byte $08   ; 
- D 3 - I - 0x01E5F8 07:E5E8: 09        .byte $09   ; 
- D 3 - I - 0x01E5F9 07:E5E9: 0A        .byte $0A   ; 
- D 3 - I - 0x01E5FA 07:E5EA: 0B        .byte $0B   ; 
- D 3 - I - 0x01E5FB 07:E5EB: 0C        .byte $0C   ; 
- D 3 - I - 0x01E5FC 07:E5EC: 0D        .byte $0D   ; 
- D 3 - I - 0x01E5FD 07:E5ED: 0E        .byte $0E   ; 
- D 3 - I - 0x01E5FE 07:E5EE: 0F        .byte $0F   ; 
- D 3 - I - 0x01E5FF 07:E5EF: 10        .byte $10   ; 
- D 3 - I - 0x01E600 07:E5F0: 11        .byte $11   ; 
- D 3 - I - 0x01E601 07:E5F1: 12        .byte $12   ; 
- D 3 - I - 0x01E602 07:E5F2: 13        .byte $13   ; 
- D 3 - I - 0x01E603 07:E5F3: 14        .byte $14   ; 
- D 3 - I - 0x01E604 07:E5F4: 15        .byte $15   ; 
- D 3 - I - 0x01E605 07:E5F5: 16        .byte $16   ; 
- D 3 - I - 0x01E606 07:E5F6: 17        .byte $17   ; 



_off008_E5F7_02_stage_2:
- D 3 - I - 0x01E607 07:E5F7: 05        .byte $05   ; 
- D 3 - I - 0x01E608 07:E5F8: 0D        .byte $0D   ; 
- D 3 - I - 0x01E609 07:E5F9: 00        .byte $00   ; 
- D 3 - I - 0x01E60A 07:E5FA: 15        .byte $15   ; 
- D 3 - I - 0x01E60B 07:E5FB: 00        .byte $00   ; 
- - - - - - 0x01E60C 07:E5FC: 00        .byte $00   ; 
- D 3 - I - 0x01E60D 07:E5FD: 19        .byte $19   ; 
- D 3 - I - 0x01E60E 07:E5FE: 00        .byte $00   ; 
- D 3 - I - 0x01E60F 07:E5FF: 00        .byte $00   ; 
- D 3 - I - 0x01E610 07:E600: 00        .byte $00   ; 
- - - - - - 0x01E611 07:E601: 00        .byte $00   ; 
- D 3 - I - 0x01E612 07:E602: 18        .byte $18   ; 
- D 3 - I - 0x01E613 07:E603: 00        .byte $00   ; 
- D 3 - I - 0x01E614 07:E604: 13        .byte $13   ; 
- D 3 - I - 0x01E615 07:E605: 14        .byte $14   ; 
- - - - - - 0x01E616 07:E606: 00        .byte $00   ; 
- D 3 - I - 0x01E617 07:E607: 17        .byte $17   ; 
- D 3 - I - 0x01E618 07:E608: 00        .byte $00   ; 
- D 3 - I - 0x01E619 07:E609: 11        .byte $11   ; 
- D 3 - I - 0x01E61A 07:E60A: 12        .byte $12   ; 
- D 3 - I - 0x01E61B 07:E60B: 00        .byte $00   ; 
- D 3 - I - 0x01E61C 07:E60C: 16        .byte $16   ; 
- D 3 - I - 0x01E61D 07:E60D: 00        .byte $00   ; 
- D 3 - I - 0x01E61E 07:E60E: 0F        .byte $0F   ; 
- D 3 - I - 0x01E61F 07:E60F: 10        .byte $10   ; 
- - - - - - 0x01E620 07:E610: 00        .byte $00   ; 
- - - - - - 0x01E621 07:E611: 00        .byte $00   ; 
- D 3 - I - 0x01E622 07:E612: 00        .byte $00   ; 
- D 3 - I - 0x01E623 07:E613: 0D        .byte $0D   ; 
- D 3 - I - 0x01E624 07:E614: 0E        .byte $0E   ; 
- - - - - - 0x01E625 07:E615: 00        .byte $00   ; 
- - - - - - 0x01E626 07:E616: 00        .byte $00   ; 
- - - - - - 0x01E627 07:E617: 00        .byte $00   ; 
- D 3 - I - 0x01E628 07:E618: 0B        .byte $0B   ; 
- D 3 - I - 0x01E629 07:E619: 0C        .byte $0C   ; 
- - - - - - 0x01E62A 07:E61A: 00        .byte $00   ; 
- - - - - - 0x01E62B 07:E61B: 00        .byte $00   ; 
- - - - - - 0x01E62C 07:E61C: 00        .byte $00   ; 
- D 3 - I - 0x01E62D 07:E61D: 09        .byte $09   ; 
- D 3 - I - 0x01E62E 07:E61E: 0A        .byte $0A   ; 
- - - - - - 0x01E62F 07:E61F: 00        .byte $00   ; 
- - - - - - 0x01E630 07:E620: 00        .byte $00   ; 
- - - - - - 0x01E631 07:E621: 00        .byte $00   ; 
- D 3 - I - 0x01E632 07:E622: 07        .byte $07   ; 
- D 3 - I - 0x01E633 07:E623: 08        .byte $08   ; 
- D 3 - I - 0x01E634 07:E624: 06        .byte $06   ; 
- D 3 - I - 0x01E635 07:E625: 00        .byte $00   ; 
- - - - - - 0x01E636 07:E626: 00        .byte $00   ; 
- D 3 - I - 0x01E637 07:E627: 00        .byte $00   ; 
- D 3 - I - 0x01E638 07:E628: 00        .byte $00   ; 
- D 3 - I - 0x01E639 07:E629: 05        .byte $05   ; 
- D 3 - I - 0x01E63A 07:E62A: 00        .byte $00   ; 
- - - - - - 0x01E63B 07:E62B: 00        .byte $00   ; 
- - - - - - 0x01E63C 07:E62C: 00        .byte $00   ; 
- D 3 - I - 0x01E63D 07:E62D: 00        .byte $00   ; 
- D 3 - I - 0x01E63E 07:E62E: 04        .byte $04   ; 
- D 3 - I - 0x01E63F 07:E62F: 00        .byte $00   ; 
- - - - - - 0x01E640 07:E630: 00        .byte $00   ; 
- - - - - - 0x01E641 07:E631: 00        .byte $00   ; 
- D 3 - I - 0x01E642 07:E632: 00        .byte $00   ; 
- D 3 - I - 0x01E643 07:E633: 03        .byte $03   ; 
- D 3 - I - 0x01E644 07:E634: 00        .byte $00   ; 
- D 3 - I - 0x01E645 07:E635: 00        .byte $00   ; 
- - - - - - 0x01E646 07:E636: 00        .byte $00   ; 
- D 3 - I - 0x01E647 07:E637: 00        .byte $00   ; 
- D 3 - I - 0x01E648 07:E638: 02        .byte $02   ; 
- D 3 - I - 0x01E649 07:E639: 01        .byte $01   ; 



_off008_E63A_04_stage_3:
- D 3 - I - 0x01E64A 07:E63A: 05        .byte $05   ; 
- D 3 - I - 0x01E64B 07:E63B: 07        .byte $07   ; 
- D 3 - I - 0x01E64C 07:E63C: 17        .byte $17   ; 
- D 3 - I - 0x01E64D 07:E63D: 14        .byte $14   ; 
- D 3 - I - 0x01E64E 07:E63E: 17        .byte $17   ; 
- D 3 - I - 0x01E64F 07:E63F: 16        .byte $16   ; 
- D 3 - I - 0x01E650 07:E640: 17        .byte $17   ; 
- D 3 - I - 0x01E651 07:E641: 15        .byte $15   ; 
- D 3 - I - 0x01E652 07:E642: 15        .byte $15   ; 
- D 3 - I - 0x01E653 07:E643: 0F        .byte $0F   ; 
- D 3 - I - 0x01E654 07:E644: 10        .byte $10   ; 
- D 3 - I - 0x01E655 07:E645: 11        .byte $11   ; 
- - - - - - 0x01E656 07:E646: 00        .byte $00   ; 
- D 3 - I - 0x01E657 07:E647: 00        .byte $00   ; 
- D 3 - I - 0x01E658 07:E648: 0C        .byte $0C   ; 
- D 3 - I - 0x01E659 07:E649: 0D        .byte $0D   ; 
- D 3 - I - 0x01E65A 07:E64A: 0E        .byte $0E   ; 
- - - - - - 0x01E65B 07:E64B: 00        .byte $00   ; 
- D 3 - I - 0x01E65C 07:E64C: 13        .byte $13   ; 
- D 3 - I - 0x01E65D 07:E64D: 09        .byte $09   ; 
- D 3 - I - 0x01E65E 07:E64E: 0A        .byte $0A   ; 
- D 3 - I - 0x01E65F 07:E64F: 0B        .byte $0B   ; 
- - - - - - 0x01E660 07:E650: 00        .byte $00   ; 
- D 3 - I - 0x01E661 07:E651: 12        .byte $12   ; 
- D 3 - I - 0x01E662 07:E652: 06        .byte $06   ; 
- D 3 - I - 0x01E663 07:E653: 07        .byte $07   ; 
- D 3 - I - 0x01E664 07:E654: 08        .byte $08   ; 
- - - - - - 0x01E665 07:E655: 00        .byte $00   ; 
- - - - - - 0x01E666 07:E656: 00        .byte $00   ; 
- D 3 - I - 0x01E667 07:E657: 03        .byte $03   ; 
- D 3 - I - 0x01E668 07:E658: 04        .byte $04   ; 
- D 3 - I - 0x01E669 07:E659: 05        .byte $05   ; 
- - - - - - 0x01E66A 07:E65A: 00        .byte $00   ; 
- - - - - - 0x01E66B 07:E65B: 00        .byte $00   ; 
- D 3 - I - 0x01E66C 07:E65C: 00        .byte $00   ; 
- D 3 - I - 0x01E66D 07:E65D: 01        .byte $01   ; 
- D 3 - I - 0x01E66E 07:E65E: 02        .byte $02   ; 



_off008_E65F_06_stage_4:
- D 3 - I - 0x01E66F 07:E65F: 0C        .byte $0C   ; 
- D 3 - I - 0x01E670 07:E660: 21        .byte $21   ; 
- - - - - - 0x01E671 07:E661: 22        .byte $22   ; 
- - - - - - 0x01E672 07:E662: 22        .byte $22   ; 
- - - - - - 0x01E673 07:E663: 22        .byte $22   ; 
- - - - - - 0x01E674 07:E664: 22        .byte $22   ; 
- - - - - - 0x01E675 07:E665: 22        .byte $22   ; 
- - - - - - 0x01E676 07:E666: 22        .byte $22   ; 
- - - - - - 0x01E677 07:E667: 22        .byte $22   ; 
- - - - - - 0x01E678 07:E668: 22        .byte $22   ; 
- - - - - - 0x01E679 07:E669: 22        .byte $22   ; 
- D 3 - I - 0x01E67A 07:E66A: 14        .byte $14   ; 
- - - - - - 0x01E67B 07:E66B: 22        .byte $22   ; 
- - - - - - 0x01E67C 07:E66C: 22        .byte $22   ; 
- - - - - - 0x01E67D 07:E66D: 22        .byte $22   ; 
- - - - - - 0x01E67E 07:E66E: 22        .byte $22   ; 
- - - - - - 0x01E67F 07:E66F: 22        .byte $22   ; 
- - - - - - 0x01E680 07:E670: 22        .byte $22   ; 
- - - - - - 0x01E681 07:E671: 22        .byte $22   ; 
- - - - - - 0x01E682 07:E672: 22        .byte $22   ; 
- - - - - - 0x01E683 07:E673: 22        .byte $22   ; 
- - - - - - 0x01E684 07:E674: 22        .byte $22   ; 
- - - - - - 0x01E685 07:E675: 12        .byte $12   ; 
- D 3 - I - 0x01E686 07:E676: 13        .byte $13   ; 
- - - - - - 0x01E687 07:E677: 22        .byte $22   ; 
- - - - - - 0x01E688 07:E678: 22        .byte $22   ; 
- - - - - - 0x01E689 07:E679: 22        .byte $22   ; 
- - - - - - 0x01E68A 07:E67A: 22        .byte $22   ; 
- - - - - - 0x01E68B 07:E67B: 22        .byte $22   ; 
- - - - - - 0x01E68C 07:E67C: 22        .byte $22   ; 
- - - - - - 0x01E68D 07:E67D: 22        .byte $22   ; 
- - - - - - 0x01E68E 07:E67E: 22        .byte $22   ; 
- - - - - - 0x01E68F 07:E67F: 22        .byte $22   ; 
- - - - - - 0x01E690 07:E680: 22        .byte $22   ; 
- - - - - - 0x01E691 07:E681: 10        .byte $10   ; 
- - - - - - 0x01E692 07:E682: 11        .byte $11   ; 
- - - - - - 0x01E693 07:E683: 22        .byte $22   ; 
- - - - - - 0x01E694 07:E684: 22        .byte $22   ; 
- - - - - - 0x01E695 07:E685: 22        .byte $22   ; 
- - - - - - 0x01E696 07:E686: 22        .byte $22   ; 
- - - - - - 0x01E697 07:E687: 22        .byte $22   ; 
- - - - - - 0x01E698 07:E688: 22        .byte $22   ; 
- - - - - - 0x01E699 07:E689: 22        .byte $22   ; 
- - - - - - 0x01E69A 07:E68A: 22        .byte $22   ; 
- D 3 - I - 0x01E69B 07:E68B: 22        .byte $22   ; 
- D 3 - I - 0x01E69C 07:E68C: 22        .byte $22   ; 
- D 3 - I - 0x01E69D 07:E68D: 0E        .byte $0E   ; 
- D 3 - I - 0x01E69E 07:E68E: 0F        .byte $0F   ; 
- D 3 - I - 0x01E69F 07:E68F: 22        .byte $22   ; 
- D 3 - I - 0x01E6A0 07:E690: 22        .byte $22   ; 
- - - - - - 0x01E6A1 07:E691: 22        .byte $22   ; 
- - - - - - 0x01E6A2 07:E692: 22        .byte $22   ; 
- - - - - - 0x01E6A3 07:E693: 22        .byte $22   ; 
- - - - - - 0x01E6A4 07:E694: 22        .byte $22   ; 
- - - - - - 0x01E6A5 07:E695: 22        .byte $22   ; 
- - - - - - 0x01E6A6 07:E696: 22        .byte $22   ; 
- D 3 - I - 0x01E6A7 07:E697: 08        .byte $08   ; 
- D 3 - I - 0x01E6A8 07:E698: 1A        .byte $1A   ; 
- D 3 - I - 0x01E6A9 07:E699: 1B        .byte $1B   ; 
- D 3 - I - 0x01E6AA 07:E69A: 1C        .byte $1C   ; 
- D 3 - I - 0x01E6AB 07:E69B: 1D        .byte $1D   ; 
- D 3 - I - 0x01E6AC 07:E69C: 1E        .byte $1E   ; 
- - - - - - 0x01E6AD 07:E69D: 22        .byte $22   ; 
- - - - - - 0x01E6AE 07:E69E: 22        .byte $22   ; 
- - - - - - 0x01E6AF 07:E69F: 22        .byte $22   ; 
- - - - - - 0x01E6B0 07:E6A0: 22        .byte $22   ; 
- - - - - - 0x01E6B1 07:E6A1: 22        .byte $22   ; 
- - - - - - 0x01E6B2 07:E6A2: 22        .byte $22   ; 
- - - - - - 0x01E6B3 07:E6A3: 22        .byte $22   ; 
- - - - - - 0x01E6B4 07:E6A4: 22        .byte $22   ; 
- D 3 - I - 0x01E6B5 07:E6A5: 06        .byte $06   ; 
- D 3 - I - 0x01E6B6 07:E6A6: 07        .byte $07   ; 
- - - - - - 0x01E6B7 07:E6A7: 22        .byte $22   ; 
- - - - - - 0x01E6B8 07:E6A8: 22        .byte $22   ; 
- - - - - - 0x01E6B9 07:E6A9: 22        .byte $22   ; 
- - - - - - 0x01E6BA 07:E6AA: 22        .byte $22   ; 
- - - - - - 0x01E6BB 07:E6AB: 22        .byte $22   ; 
- - - - - - 0x01E6BC 07:E6AC: 22        .byte $22   ; 
- - - - - - 0x01E6BD 07:E6AD: 22        .byte $22   ; 
- - - - - - 0x01E6BE 07:E6AE: 22        .byte $22   ; 
- - - - - - 0x01E6BF 07:E6AF: 22        .byte $22   ; 
- - - - - - 0x01E6C0 07:E6B0: 22        .byte $22   ; 
- D 3 - I - 0x01E6C1 07:E6B1: 04        .byte $04   ; 
- D 3 - I - 0x01E6C2 07:E6B2: 05        .byte $05   ; 
- - - - - - 0x01E6C3 07:E6B3: 22        .byte $22   ; 
- - - - - - 0x01E6C4 07:E6B4: 22        .byte $22   ; 
- - - - - - 0x01E6C5 07:E6B5: 22        .byte $22   ; 
- - - - - - 0x01E6C6 07:E6B6: 22        .byte $22   ; 
- - - - - - 0x01E6C7 07:E6B7: 22        .byte $22   ; 
- - - - - - 0x01E6C8 07:E6B8: 22        .byte $22   ; 
- - - - - - 0x01E6C9 07:E6B9: 22        .byte $22   ; 
- - - - - - 0x01E6CA 07:E6BA: 22        .byte $22   ; 
- - - - - - 0x01E6CB 07:E6BB: 22        .byte $22   ; 
- - - - - - 0x01E6CC 07:E6BC: 22        .byte $22   ; 
- D 3 - I - 0x01E6CD 07:E6BD: 02        .byte $02   ; 
- D 3 - I - 0x01E6CE 07:E6BE: 03        .byte $03   ; 
- - - - - - 0x01E6CF 07:E6BF: 22        .byte $22   ; 
- - - - - - 0x01E6D0 07:E6C0: 22        .byte $22   ; 
- - - - - - 0x01E6D1 07:E6C1: 22        .byte $22   ; 
- - - - - - 0x01E6D2 07:E6C2: 22        .byte $22   ; 
- - - - - - 0x01E6D3 07:E6C3: 22        .byte $22   ; 
- - - - - - 0x01E6D4 07:E6C4: 22        .byte $22   ; 
- - - - - - 0x01E6D5 07:E6C5: 22        .byte $22   ; 
- - - - - - 0x01E6D6 07:E6C6: 22        .byte $22   ; 
- D 3 - I - 0x01E6D7 07:E6C7: 22        .byte $22   ; 
- D 3 - I - 0x01E6D8 07:E6C8: 22        .byte $22   ; 
- D 3 - I - 0x01E6D9 07:E6C9: 00        .byte $00   ; 
- D 3 - I - 0x01E6DA 07:E6CA: 01        .byte $01   ; 
- D 3 - I - 0x01E6DB 07:E6CB: 22        .byte $22   ; 
- - - - - - 0x01E6DC 07:E6CC: 22        .byte $22   ; 
- - - - - - 0x01E6DD 07:E6CD: 22        .byte $22   ; 
- - - - - - 0x01E6DE 07:E6CE: 22        .byte $22   ; 
- - - - - - 0x01E6DF 07:E6CF: 22        .byte $22   ; 
- - - - - - 0x01E6E0 07:E6D0: 22        .byte $22   ; 
- - - - - - 0x01E6E1 07:E6D1: 22        .byte $22   ; 
- - - - - - 0x01E6E2 07:E6D2: 22        .byte $22   ; 
- D 3 - I - 0x01E6E3 07:E6D3: 22        .byte $22   ; 
- D 3 - I - 0x01E6E4 07:E6D4: 21        .byte $21   ; 
- D 3 - I - 0x01E6E5 07:E6D5: 22        .byte $22   ; 
- D 3 - I - 0x01E6E6 07:E6D6: 22        .byte $22   ; 
- D 3 - I - 0x01E6E7 07:E6D7: 22        .byte $22   ; 
- - - - - - 0x01E6E8 07:E6D8: 22        .byte $22   ; 
- - - - - - 0x01E6E9 07:E6D9: 22        .byte $22   ; 
- - - - - - 0x01E6EA 07:E6DA: 22        .byte $22   ; 
- - - - - - 0x01E6EB 07:E6DB: 22        .byte $22   ; 
- - - - - - 0x01E6EC 07:E6DC: 22        .byte $22   ; 
- D 3 - I - 0x01E6ED 07:E6DD: 22        .byte $22   ; 
- D 3 - I - 0x01E6EE 07:E6DE: 22        .byte $22   ; 
- D 3 - I - 0x01E6EF 07:E6DF: 1F        .byte $1F   ; 
- D 3 - I - 0x01E6F0 07:E6E0: 20        .byte $20   ; 
- - - - - - 0x01E6F1 07:E6E1: 22        .byte $22   ; 
- - - - - - 0x01E6F2 07:E6E2: 22        .byte $22   ; 
- - - - - - 0x01E6F3 07:E6E3: 22        .byte $22   ; 
- - - - - - 0x01E6F4 07:E6E4: 22        .byte $22   ; 
- - - - - - 0x01E6F5 07:E6E5: 22        .byte $22   ; 
- - - - - - 0x01E6F6 07:E6E6: 22        .byte $22   ; 
- - - - - - 0x01E6F7 07:E6E7: 22        .byte $22   ; 
- - - - - - 0x01E6F8 07:E6E8: 22        .byte $22   ; 
- D 3 - I - 0x01E6F9 07:E6E9: 22        .byte $22   ; 
- D 3 - I - 0x01E6FA 07:E6EA: 21        .byte $21   ; 
- D 3 - I - 0x01E6FB 07:E6EB: 22        .byte $22   ; 
- D 3 - I - 0x01E6FC 07:E6EC: 22        .byte $22   ; 
- - - - - - 0x01E6FD 07:E6ED: 22        .byte $22   ; 
- - - - - - 0x01E6FE 07:E6EE: 22        .byte $22   ; 
- - - - - - 0x01E6FF 07:E6EF: 22        .byte $22   ; 
- - - - - - 0x01E700 07:E6F0: 22        .byte $22   ; 
- - - - - - 0x01E701 07:E6F1: 22        .byte $22   ; 
- - - - - - 0x01E702 07:E6F2: 22        .byte $22   ; 
- - - - - - 0x01E703 07:E6F3: 22        .byte $22   ; 
- - - - - - 0x01E704 07:E6F4: 22        .byte $22   ; 
- D 3 - I - 0x01E705 07:E6F5: 1F        .byte $1F   ; 
- D 3 - I - 0x01E706 07:E6F6: 20        .byte $20   ; 
- D 3 - I - 0x01E707 07:E6F7: 22        .byte $22   ; 
- D 3 - I - 0x01E708 07:E6F8: 22        .byte $22   ; 
- - - - - - 0x01E709 07:E6F9: 22        .byte $22   ; 
- - - - - - 0x01E70A 07:E6FA: 22        .byte $22   ; 
- - - - - - 0x01E70B 07:E6FB: 22        .byte $22   ; 
- - - - - - 0x01E70C 07:E6FC: 22        .byte $22   ; 
- - - - - - 0x01E70D 07:E6FD: 22        .byte $22   ; 
- - - - - - 0x01E70E 07:E6FE: 22        .byte $22   ; 
- - - - - - 0x01E70F 07:E6FF: 22        .byte $22   ; 
- - - - - - 0x01E710 07:E700: 22        .byte $22   ; 
- D 3 - I - 0x01E711 07:E701: 22        .byte $22   ; 
- D 3 - I - 0x01E712 07:E702: 22        .byte $22   ; 
- D 3 - I - 0x01E713 07:E703: 22        .byte $22   ; 
- D 3 - I - 0x01E714 07:E704: 21        .byte $21   ; 
- - - - - - 0x01E715 07:E705: 22        .byte $22   ; 
- - - - - - 0x01E716 07:E706: 22        .byte $22   ; 
- - - - - - 0x01E717 07:E707: 22        .byte $22   ; 
- - - - - - 0x01E718 07:E708: 22        .byte $22   ; 
- - - - - - 0x01E719 07:E709: 22        .byte $22   ; 
- - - - - - 0x01E71A 07:E70A: 22        .byte $22   ; 
- - - - - - 0x01E71B 07:E70B: 22        .byte $22   ; 
- - - - - - 0x01E71C 07:E70C: 22        .byte $22   ; 
- D 3 - I - 0x01E71D 07:E70D: 22        .byte $22   ; 
- D 3 - I - 0x01E71E 07:E70E: 22        .byte $22   ; 
- D 3 - I - 0x01E71F 07:E70F: 1F        .byte $1F   ; 
- D 3 - I - 0x01E720 07:E710: 20        .byte $20   ; 
- - - - - - 0x01E721 07:E711: 22        .byte $22   ; 
- - - - - - 0x01E722 07:E712: 22        .byte $22   ; 
- - - - - - 0x01E723 07:E713: 22        .byte $22   ; 
- - - - - - 0x01E724 07:E714: 22        .byte $22   ; 
- - - - - - 0x01E725 07:E715: 22        .byte $22   ; 
- - - - - - 0x01E726 07:E716: 22        .byte $22   ; 
- - - - - - 0x01E727 07:E717: 22        .byte $22   ; 
- - - - - - 0x01E728 07:E718: 22        .byte $22   ; 
- D 3 - I - 0x01E729 07:E719: 22        .byte $22   ; 
- D 3 - I - 0x01E72A 07:E71A: 14        .byte $14   ; 
- D 3 - I - 0x01E72B 07:E71B: 22        .byte $22   ; 
- D 3 - I - 0x01E72C 07:E71C: 22        .byte $22   ; 
- - - - - - 0x01E72D 07:E71D: 22        .byte $22   ; 
- - - - - - 0x01E72E 07:E71E: 22        .byte $22   ; 
- - - - - - 0x01E72F 07:E71F: 22        .byte $22   ; 
- - - - - - 0x01E730 07:E720: 22        .byte $22   ; 
- - - - - - 0x01E731 07:E721: 22        .byte $22   ; 
- - - - - - 0x01E732 07:E722: 22        .byte $22   ; 
- - - - - - 0x01E733 07:E723: 22        .byte $22   ; 
- - - - - - 0x01E734 07:E724: 22        .byte $22   ; 
- D 3 - I - 0x01E735 07:E725: 12        .byte $12   ; 
- D 3 - I - 0x01E736 07:E726: 13        .byte $13   ; 
- - - - - - 0x01E737 07:E727: 22        .byte $22   ; 
- - - - - - 0x01E738 07:E728: 22        .byte $22   ; 
- - - - - - 0x01E739 07:E729: 22        .byte $22   ; 
- - - - - - 0x01E73A 07:E72A: 22        .byte $22   ; 
- - - - - - 0x01E73B 07:E72B: 22        .byte $22   ; 
- - - - - - 0x01E73C 07:E72C: 22        .byte $22   ; 
- - - - - - 0x01E73D 07:E72D: 22        .byte $22   ; 
- - - - - - 0x01E73E 07:E72E: 22        .byte $22   ; 
- - - - - - 0x01E73F 07:E72F: 22        .byte $22   ; 
- - - - - - 0x01E740 07:E730: 22        .byte $22   ; 
- D 3 - I - 0x01E741 07:E731: 10        .byte $10   ; 
- D 3 - I - 0x01E742 07:E732: 11        .byte $11   ; 
- - - - - - 0x01E743 07:E733: 22        .byte $22   ; 
- - - - - - 0x01E744 07:E734: 22        .byte $22   ; 
- - - - - - 0x01E745 07:E735: 22        .byte $22   ; 
- - - - - - 0x01E746 07:E736: 22        .byte $22   ; 
- - - - - - 0x01E747 07:E737: 22        .byte $22   ; 
- - - - - - 0x01E748 07:E738: 22        .byte $22   ; 
- - - - - - 0x01E749 07:E739: 22        .byte $22   ; 
- - - - - - 0x01E74A 07:E73A: 22        .byte $22   ; 
- D 3 - I - 0x01E74B 07:E73B: 22        .byte $22   ; 
- D 3 - I - 0x01E74C 07:E73C: 22        .byte $22   ; 
- D 3 - I - 0x01E74D 07:E73D: 0E        .byte $0E   ; 
- D 3 - I - 0x01E74E 07:E73E: 0F        .byte $0F   ; 
- D 3 - I - 0x01E74F 07:E73F: 22        .byte $22   ; 
- D 3 - I - 0x01E750 07:E740: 22        .byte $22   ; 
- - - - - - 0x01E751 07:E741: 22        .byte $22   ; 
- - - - - - 0x01E752 07:E742: 22        .byte $22   ; 
- - - - - - 0x01E753 07:E743: 22        .byte $22   ; 
- - - - - - 0x01E754 07:E744: 22        .byte $22   ; 
- - - - - - 0x01E755 07:E745: 22        .byte $22   ; 
- - - - - - 0x01E756 07:E746: 22        .byte $22   ; 
- D 3 - I - 0x01E757 07:E747: 08        .byte $08   ; 
- D 3 - I - 0x01E758 07:E748: 15        .byte $15   ; 
- D 3 - I - 0x01E759 07:E749: 16        .byte $16   ; 
- D 3 - I - 0x01E75A 07:E74A: 17        .byte $17   ; 
- D 3 - I - 0x01E75B 07:E74B: 18        .byte $18   ; 
- D 3 - I - 0x01E75C 07:E74C: 19        .byte $19   ; 
- - - - - - 0x01E75D 07:E74D: 22        .byte $22   ; 
- - - - - - 0x01E75E 07:E74E: 22        .byte $22   ; 
- - - - - - 0x01E75F 07:E74F: 22        .byte $22   ; 
- - - - - - 0x01E760 07:E750: 22        .byte $22   ; 
- - - - - - 0x01E761 07:E751: 22        .byte $22   ; 
- - - - - - 0x01E762 07:E752: 22        .byte $22   ; 
- - - - - - 0x01E763 07:E753: 22        .byte $22   ; 
- - - - - - 0x01E764 07:E754: 22        .byte $22   ; 
- D 3 - I - 0x01E765 07:E755: 06        .byte $06   ; 
- D 3 - I - 0x01E766 07:E756: 07        .byte $07   ; 
- - - - - - 0x01E767 07:E757: 22        .byte $22   ; 
- - - - - - 0x01E768 07:E758: 22        .byte $22   ; 
- - - - - - 0x01E769 07:E759: 22        .byte $22   ; 
- - - - - - 0x01E76A 07:E75A: 22        .byte $22   ; 
- - - - - - 0x01E76B 07:E75B: 22        .byte $22   ; 
- - - - - - 0x01E76C 07:E75C: 22        .byte $22   ; 
- - - - - - 0x01E76D 07:E75D: 22        .byte $22   ; 
- - - - - - 0x01E76E 07:E75E: 22        .byte $22   ; 
- - - - - - 0x01E76F 07:E75F: 22        .byte $22   ; 
- - - - - - 0x01E770 07:E760: 22        .byte $22   ; 
- D 3 - I - 0x01E771 07:E761: 04        .byte $04   ; 
- D 3 - I - 0x01E772 07:E762: 05        .byte $05   ; 
- - - - - - 0x01E773 07:E763: 22        .byte $22   ; 
- - - - - - 0x01E774 07:E764: 22        .byte $22   ; 
- - - - - - 0x01E775 07:E765: 22        .byte $22   ; 
- - - - - - 0x01E776 07:E766: 22        .byte $22   ; 
- - - - - - 0x01E777 07:E767: 22        .byte $22   ; 
- - - - - - 0x01E778 07:E768: 22        .byte $22   ; 
- - - - - - 0x01E779 07:E769: 22        .byte $22   ; 
- - - - - - 0x01E77A 07:E76A: 22        .byte $22   ; 
- - - - - - 0x01E77B 07:E76B: 22        .byte $22   ; 
- - - - - - 0x01E77C 07:E76C: 22        .byte $22   ; 
- D 3 - I - 0x01E77D 07:E76D: 02        .byte $02   ; 
- D 3 - I - 0x01E77E 07:E76E: 03        .byte $03   ; 
- - - - - - 0x01E77F 07:E76F: 22        .byte $22   ; 
- - - - - - 0x01E780 07:E770: 22        .byte $22   ; 
- - - - - - 0x01E781 07:E771: 22        .byte $22   ; 
- - - - - - 0x01E782 07:E772: 22        .byte $22   ; 
- - - - - - 0x01E783 07:E773: 22        .byte $22   ; 
- - - - - - 0x01E784 07:E774: 22        .byte $22   ; 
- - - - - - 0x01E785 07:E775: 22        .byte $22   ; 
- - - - - - 0x01E786 07:E776: 22        .byte $22   ; 
- D 3 - I - 0x01E787 07:E777: 22        .byte $22   ; 
- D 3 - I - 0x01E788 07:E778: 22        .byte $22   ; 
- D 3 - I - 0x01E789 07:E779: 00        .byte $00   ; 
- D 3 - I - 0x01E78A 07:E77A: 01        .byte $01   ; 
- D 3 - I - 0x01E78B 07:E77B: 22        .byte $22   ; 
- - - - - - 0x01E78C 07:E77C: 22        .byte $22   ; 
- - - - - - 0x01E78D 07:E77D: 22        .byte $22   ; 
- - - - - - 0x01E78E 07:E77E: 22        .byte $22   ; 
- - - - - - 0x01E78F 07:E77F: 22        .byte $22   ; 
- - - - - - 0x01E790 07:E780: 22        .byte $22   ; 
- - - - - - 0x01E791 07:E781: 22        .byte $22   ; 
- - - - - - 0x01E792 07:E782: 22        .byte $22   ; 
- D 3 - I - 0x01E793 07:E783: 22        .byte $22   ; 
- D 3 - I - 0x01E794 07:E784: 14        .byte $14   ; 
- D 3 - I - 0x01E795 07:E785: 22        .byte $22   ; 
- D 3 - I - 0x01E796 07:E786: 22        .byte $22   ; 
- D 3 - I - 0x01E797 07:E787: 22        .byte $22   ; 
- - - - - - 0x01E798 07:E788: 22        .byte $22   ; 
- - - - - - 0x01E799 07:E789: 22        .byte $22   ; 
- - - - - - 0x01E79A 07:E78A: 22        .byte $22   ; 
- - - - - - 0x01E79B 07:E78B: 22        .byte $22   ; 
- - - - - - 0x01E79C 07:E78C: 22        .byte $22   ; 
- - - - - - 0x01E79D 07:E78D: 22        .byte $22   ; 
- - - - - - 0x01E79E 07:E78E: 22        .byte $22   ; 
- D 3 - I - 0x01E79F 07:E78F: 12        .byte $12   ; 
- D 3 - I - 0x01E7A0 07:E790: 13        .byte $13   ; 
- - - - - - 0x01E7A1 07:E791: 22        .byte $22   ; 
- - - - - - 0x01E7A2 07:E792: 22        .byte $22   ; 
- - - - - - 0x01E7A3 07:E793: 22        .byte $22   ; 
- - - - - - 0x01E7A4 07:E794: 22        .byte $22   ; 
- - - - - - 0x01E7A5 07:E795: 22        .byte $22   ; 
- - - - - - 0x01E7A6 07:E796: 22        .byte $22   ; 
- - - - - - 0x01E7A7 07:E797: 22        .byte $22   ; 
- - - - - - 0x01E7A8 07:E798: 22        .byte $22   ; 
- - - - - - 0x01E7A9 07:E799: 22        .byte $22   ; 
- - - - - - 0x01E7AA 07:E79A: 22        .byte $22   ; 
- D 3 - I - 0x01E7AB 07:E79B: 10        .byte $10   ; 
- D 3 - I - 0x01E7AC 07:E79C: 11        .byte $11   ; 
- - - - - - 0x01E7AD 07:E79D: 22        .byte $22   ; 
- - - - - - 0x01E7AE 07:E79E: 22        .byte $22   ; 
- - - - - - 0x01E7AF 07:E79F: 22        .byte $22   ; 
- - - - - - 0x01E7B0 07:E7A0: 22        .byte $22   ; 
- - - - - - 0x01E7B1 07:E7A1: 22        .byte $22   ; 
- - - - - - 0x01E7B2 07:E7A2: 22        .byte $22   ; 
- - - - - - 0x01E7B3 07:E7A3: 22        .byte $22   ; 
- - - - - - 0x01E7B4 07:E7A4: 22        .byte $22   ; 
- D 3 - I - 0x01E7B5 07:E7A5: 22        .byte $22   ; 
- D 3 - I - 0x01E7B6 07:E7A6: 22        .byte $22   ; 
- D 3 - I - 0x01E7B7 07:E7A7: 0E        .byte $0E   ; 
- D 3 - I - 0x01E7B8 07:E7A8: 0F        .byte $0F   ; 
- D 3 - I - 0x01E7B9 07:E7A9: 22        .byte $22   ; 
- D 3 - I - 0x01E7BA 07:E7AA: 22        .byte $22   ; 
- - - - - - 0x01E7BB 07:E7AB: 22        .byte $22   ; 
- - - - - - 0x01E7BC 07:E7AC: 22        .byte $22   ; 
- - - - - - 0x01E7BD 07:E7AD: 22        .byte $22   ; 
- - - - - - 0x01E7BE 07:E7AE: 22        .byte $22   ; 
- - - - - - 0x01E7BF 07:E7AF: 22        .byte $22   ; 
- - - - - - 0x01E7C0 07:E7B0: 22        .byte $22   ; 
- D 3 - I - 0x01E7C1 07:E7B1: 08        .byte $08   ; 
- D 3 - I - 0x01E7C2 07:E7B2: 09        .byte $09   ; 
- D 3 - I - 0x01E7C3 07:E7B3: 0A        .byte $0A   ; 
- D 3 - I - 0x01E7C4 07:E7B4: 0B        .byte $0B   ; 
- D 3 - I - 0x01E7C5 07:E7B5: 0C        .byte $0C   ; 
- D 3 - I - 0x01E7C6 07:E7B6: 0D        .byte $0D   ; 
- - - - - - 0x01E7C7 07:E7B7: 22        .byte $22   ; 
- - - - - - 0x01E7C8 07:E7B8: 22        .byte $22   ; 
- - - - - - 0x01E7C9 07:E7B9: 22        .byte $22   ; 
- - - - - - 0x01E7CA 07:E7BA: 22        .byte $22   ; 
- - - - - - 0x01E7CB 07:E7BB: 22        .byte $22   ; 
- - - - - - 0x01E7CC 07:E7BC: 22        .byte $22   ; 
- - - - - - 0x01E7CD 07:E7BD: 22        .byte $22   ; 
- - - - - - 0x01E7CE 07:E7BE: 22        .byte $22   ; 
- D 3 - I - 0x01E7CF 07:E7BF: 06        .byte $06   ; 
- D 3 - I - 0x01E7D0 07:E7C0: 07        .byte $07   ; 
- - - - - - 0x01E7D1 07:E7C1: 22        .byte $22   ; 
- - - - - - 0x01E7D2 07:E7C2: 22        .byte $22   ; 
- - - - - - 0x01E7D3 07:E7C3: 22        .byte $22   ; 
- - - - - - 0x01E7D4 07:E7C4: 22        .byte $22   ; 
- - - - - - 0x01E7D5 07:E7C5: 22        .byte $22   ; 
- - - - - - 0x01E7D6 07:E7C6: 22        .byte $22   ; 
- - - - - - 0x01E7D7 07:E7C7: 22        .byte $22   ; 
- - - - - - 0x01E7D8 07:E7C8: 22        .byte $22   ; 
- - - - - - 0x01E7D9 07:E7C9: 22        .byte $22   ; 
- - - - - - 0x01E7DA 07:E7CA: 22        .byte $22   ; 
- D 3 - I - 0x01E7DB 07:E7CB: 04        .byte $04   ; 
- D 3 - I - 0x01E7DC 07:E7CC: 05        .byte $05   ; 
- - - - - - 0x01E7DD 07:E7CD: 22        .byte $22   ; 
- - - - - - 0x01E7DE 07:E7CE: 22        .byte $22   ; 
- - - - - - 0x01E7DF 07:E7CF: 22        .byte $22   ; 
- - - - - - 0x01E7E0 07:E7D0: 22        .byte $22   ; 
- - - - - - 0x01E7E1 07:E7D1: 22        .byte $22   ; 
- - - - - - 0x01E7E2 07:E7D2: 22        .byte $22   ; 
- - - - - - 0x01E7E3 07:E7D3: 22        .byte $22   ; 
- - - - - - 0x01E7E4 07:E7D4: 22        .byte $22   ; 
- - - - - - 0x01E7E5 07:E7D5: 22        .byte $22   ; 
- - - - - - 0x01E7E6 07:E7D6: 22        .byte $22   ; 
- D 3 - I - 0x01E7E7 07:E7D7: 02        .byte $02   ; 
- D 3 - I - 0x01E7E8 07:E7D8: 03        .byte $03   ; 
- - - - - - 0x01E7E9 07:E7D9: 22        .byte $22   ; 
- - - - - - 0x01E7EA 07:E7DA: 22        .byte $22   ; 
- - - - - - 0x01E7EB 07:E7DB: 22        .byte $22   ; 
- - - - - - 0x01E7EC 07:E7DC: 22        .byte $22   ; 
- - - - - - 0x01E7ED 07:E7DD: 22        .byte $22   ; 
- - - - - - 0x01E7EE 07:E7DE: 22        .byte $22   ; 
- - - - - - 0x01E7EF 07:E7DF: 22        .byte $22   ; 
- - - - - - 0x01E7F0 07:E7E0: 22        .byte $22   ; 
- - - - - - 0x01E7F1 07:E7E1: 22        .byte $22   ; 
- - - - - - 0x01E7F2 07:E7E2: 22        .byte $22   ; 
- D 3 - I - 0x01E7F3 07:E7E3: 00        .byte $00   ; 
- D 3 - I - 0x01E7F4 07:E7E4: 01        .byte $01   ; 
- D 3 - I - 0x01E7F5 07:E7E5: 22        .byte $22   ; 
- - - - - - 0x01E7F6 07:E7E6: 22        .byte $22   ; 
- - - - - - 0x01E7F7 07:E7E7: 22        .byte $22   ; 



_off008_E7E8_08_stage_5:
- D 3 - I - 0x01E7F8 07:E7E8: 05        .byte $05   ; 
- D 3 - I - 0x01E7F9 07:E7E9: 06        .byte $06   ; 
- D 3 - I - 0x01E7FA 07:E7EA: 13        .byte $13   ; 
- D 3 - I - 0x01E7FB 07:E7EB: 12        .byte $12   ; 
- D 3 - I - 0x01E7FC 07:E7EC: 13        .byte $13   ; 
- D 3 - I - 0x01E7FD 07:E7ED: 13        .byte $13   ; 
- D 3 - I - 0x01E7FE 07:E7EE: 13        .byte $13   ; 
- D 3 - I - 0x01E7FF 07:E7EF: 0E        .byte $0E   ; 
- D 3 - I - 0x01E800 07:E7F0: 0E        .byte $0E   ; 
- D 3 - I - 0x01E801 07:E7F1: 0F        .byte $0F   ; 
- D 3 - I - 0x01E802 07:E7F2: 10        .byte $10   ; 
- D 3 - I - 0x01E803 07:E7F3: 11        .byte $11   ; 
- - - - - - 0x01E804 07:E7F4: 00        .byte $00   ; 
- D 3 - I - 0x01E805 07:E7F5: 0A        .byte $0A   ; 
- D 3 - I - 0x01E806 07:E7F6: 0B        .byte $0B   ; 
- D 3 - I - 0x01E807 07:E7F7: 0C        .byte $0C   ; 
- D 3 - I - 0x01E808 07:E7F8: 0D        .byte $0D   ; 
- D 3 - I - 0x01E809 07:E7F9: 00        .byte $00   ; 
- D 3 - I - 0x01E80A 07:E7FA: 07        .byte $07   ; 
- D 3 - I - 0x01E80B 07:E7FB: 08        .byte $08   ; 
- D 3 - I - 0x01E80C 07:E7FC: 09        .byte $09   ; 
- D 3 - I - 0x01E80D 07:E7FD: 00        .byte $00   ; 
- D 3 - I - 0x01E80E 07:E7FE: 00        .byte $00   ; 
- D 3 - I - 0x01E80F 07:E7FF: 01        .byte $01   ; 
- D 3 - I - 0x01E810 07:E800: 02        .byte $02   ; 
- D 3 - I - 0x01E811 07:E801: 03        .byte $03   ; 
- D 3 - I - 0x01E812 07:E802: 00        .byte $00   ; 
- D 3 - I - 0x01E813 07:E803: 05        .byte $05   ; 
- D 3 - I - 0x01E814 07:E804: 04        .byte $04   ; 
- D 3 - I - 0x01E815 07:E805: 05        .byte $05   ; 
- D 3 - I - 0x01E816 07:E806: 06        .byte $06   ; 
- D 3 - I - 0x01E817 07:E807: 00        .byte $00   ; 



tbl_E808:
- D 3 - - - 0x01E818 07:E808: 00        .byte $00   ; 00 
- D 3 - - - 0x01E819 07:E809: 00        .byte $00   ; 01 
- D 3 - - - 0x01E81A 07:E80A: 00        .byte $00   ; 02 
- - - - - - 0x01E81B 07:E80B: 00        .byte $00   ; 03 
- D 3 - - - 0x01E81C 07:E80C: 00        .byte $00   ; 04 
- D 3 - - - 0x01E81D 07:E80D: 00        .byte $00   ; 05 
- D 3 - - - 0x01E81E 07:E80E: 00        .byte $00   ; 06 
- D 3 - - - 0x01E81F 07:E80F: 00        .byte $00   ; 07 
- - - - - - 0x01E820 07:E810: 00        .byte $00   ; 08 
- D 3 - - - 0x01E821 07:E811: 00        .byte $00   ; 09 
- D 3 - - - 0x01E822 07:E812: 00        .byte $00   ; 0A 
- D 3 - - - 0x01E823 07:E813: 00        .byte $00   ; 0B 
- D 3 - - - 0x01E824 07:E814: 03        .byte $03   ; 0C 
- - - - - - 0x01E825 07:E815: 00        .byte $00   ; 0D 
- D 3 - - - 0x01E826 07:E816: 00        .byte $00   ; 0E 
- D 3 - - - 0x01E827 07:E817: 00        .byte $00   ; 0F 
- D 3 - - - 0x01E828 07:E818: 01        .byte $01   ; 10 
- D 3 - - - 0x01E829 07:E819: 02        .byte $02   ; 11 
- D 3 - - - 0x01E82A 07:E81A: 00        .byte $00   ; 12 
- - - - - - 0x01E82B 07:E81B: 00        .byte $00   ; 13 



bra_E81C:
C - - - - - 0x01E82C 07:E81C: A4 05     LDY ram_0005_t05_hi
C - - - - - 0x01E82E 07:E81E: 20 5E E9  JSR sub_E95E
C - - - - - 0x01E831 07:E821: A5 02     LDA ram_0002_t13
; / 08
C - - - - - 0x01E833 07:E823: 4A        LSR
C - - - - - 0x01E834 07:E824: 4A        LSR
C - - - - - 0x01E835 07:E825: 4A        LSR
C - - - - - 0x01E836 07:E826: 85 11     STA ram_0011_t08
C - - - - - 0x01E838 07:E828: 29 1C     AND #$1C
; * 04
C - - - - - 0x01E83A 07:E82A: 0A        ASL
C - - - - - 0x01E83B 07:E82B: 0A        ASL
C - - - - - 0x01E83C 07:E82C: 05 00     ORA ram_0000_t8B
C - - - - - 0x01E83E 07:E82E: 85 00     STA ram_0000_t0F_meta_indexes_data
C - - - - - 0x01E840 07:E830: A9 04     LDA #> ram_0400
C - - - - - 0x01E842 07:E832: 85 01     STA ram_0000_t0F_meta_indexes_data + $01
C - - - - - 0x01E844 07:E834: A5 17     LDA ram_0017_t05
C - - - - - 0x01E846 07:E836: 09 80     ORA #$80
C - - - - - 0x01E848 07:E838: 85 17     STA ram_0017_t05
C - - - - - 0x01E84A 07:E83A: 4C 7D E8  JMP loc_E87D



sub_E83D:
C - - - - - 0x01E84D 07:E83D: A9 01     LDA #$01
C - - - - - 0x01E84F 07:E83F: 85 17     STA ram_0017_t05
C - - - - - 0x01E851 07:E841: A5 3D     LDA ram_003D_t02_flag
C - - - - - 0x01E853 07:E843: D0 20     BNE bra_E865
C - - - - - 0x01E855 07:E845: A5 3C     LDA ram_003C_t03
C - - - - - 0x01E857 07:E847: 10 16     BPL bra_E85F
C - - - - - 0x01E859 07:E849: A5 02     LDA ram_0002_t13
C - - - - - 0x01E85B 07:E84B: C9 E0     CMP #$E0
C - - - - - 0x01E85D 07:E84D: 90 08     BCC bra_E857
C - - - - - 0x01E85F 07:E84F: 29 18     AND #$18
C - - - - - 0x01E861 07:E851: C9 08     CMP #$08
C - - - - - 0x01E863 07:E853: D0 C7     BNE bra_E81C
C - - - - - 0x01E865 07:E855: F0 0E     BEQ bra_E865    ; jmp
bra_E857:
C - - - - - 0x01E867 07:E857: 29 18     AND #$18
C - - - - - 0x01E869 07:E859: C9 18     CMP #$18
C - - - - - 0x01E86B 07:E85B: D0 BF     BNE bra_E81C
C - - - - - 0x01E86D 07:E85D: F0 06     BEQ bra_E865    ; jmp
bra_E85F:
C - - - - - 0x01E86F 07:E85F: A5 02     LDA ram_0002_t13
C - - - - - 0x01E871 07:E861: 29 18     AND #$18
C - - - - - 0x01E873 07:E863: D0 B7     BNE bra_E81C
bra_E865:
C - - - - - 0x01E875 07:E865: 20 0D EB  JSR sub_EB0D
C - - - - - 0x01E878 07:E868: A5 02     LDA ram_0002_t13
; / 08
C - - - - - 0x01E87A 07:E86A: 4A        LSR
C - - - - - 0x01E87B 07:E86B: 4A        LSR
C - - - - - 0x01E87C 07:E86C: 4A        LSR
C - - - - - 0x01E87D 07:E86D: 85 11     STA ram_0011_t08
C - - - - - 0x01E87F 07:E86F: 29 1C     AND #$1C
C - - - - - 0x01E881 07:E871: 0A        ASL
C - - - - - 0x01E882 07:E872: 18        CLC
C - - - - - 0x01E883 07:E873: 65 00     ADC ram_0000_t8C_meta_indexes_ptr_lo
C - - - - - 0x01E885 07:E875: 85 00     STA ram_0000_t0F_meta_indexes_data
C - - - - - 0x01E887 07:E877: A5 01     LDA ram_0001_t51_meta_indexes_ptr_hi
C - - - - - 0x01E889 07:E879: 69 00     ADC #$00
C - - - - - 0x01E88B 07:E87B: 85 01     STA ram_0000_t0F_meta_indexes_data + $01
loc_E87D:
C D 3 - - - 0x01E88D 07:E87D: A5 03     LDA ram_0003_t04_lo
; / 08
C - - - - - 0x01E88F 07:E87F: 4A        LSR
C - - - - - 0x01E890 07:E880: 4A        LSR
C - - - - - 0x01E891 07:E881: 4A        LSR
C - - - - - 0x01E892 07:E882: 85 10     STA ram_0010_t10
; / 02 (10)
C - - - - - 0x01E894 07:E884: 4A        LSR
C - - - - - 0x01E895 07:E885: 29 0E     AND #$0E
C - - - - - 0x01E897 07:E887: A8        TAY
C - - - - - 0x01E898 07:E888: B9 A4 E8  LDA tbl_E8A4,Y
C - - - - - 0x01E89B 07:E88B: 85 1C     STA ram_001C_t01_jmp
C - - - - - 0x01E89D 07:E88D: B9 A5 E8  LDA tbl_E8A4 + $01,Y
C - - - - - 0x01E8A0 07:E890: 85 1D     STA ram_001C_t01_jmp + $01
C - - - - - 0x01E8A2 07:E892: A5 10     LDA ram_0010_t10
C - - - - - 0x01E8A4 07:E894: 29 03     AND #$03
C - - - - - 0x01E8A6 07:E896: 85 10     STA ram_0010_t11
C - - - - - 0x01E8A8 07:E898: A5 11     LDA ram_0011_t08
C - - - - - 0x01E8AA 07:E89A: 29 03     AND #$03
C - - - - - 0x01E8AC 07:E89C: 85 11     STA ram_0011_t09
C - - - - - 0x01E8AE 07:E89E: 20 B5 ED  JSR sub_EDB5_prepare_metatiles_pointers
C - - - - - 0x01E8B1 07:E8A1: 6C 1C 00  JMP (ram_001C_t01_jmp)



tbl_E8A4:
- D 3 - - - 0x01E8B4 07:E8A4: B4 E8     .word ofs_003_E8B4_00
- D 3 - - - 0x01E8B6 07:E8A6: BB E8     .word ofs_003_E8BB_10
- D 3 - - - 0x01E8B8 07:E8A8: C2 E8     .word ofs_003_E8C2_20
- D 3 - - - 0x01E8BA 07:E8AA: C9 E8     .word ofs_003_E8C9_30
- D 3 - - - 0x01E8BC 07:E8AC: D0 E8     .word ofs_003_E8D0_40
- D 3 - - - 0x01E8BE 07:E8AE: D7 E8     .word ofs_003_E8D7_50
- D 3 - - - 0x01E8C0 07:E8B0: DE E8     .word ofs_003_E8DE_60
- D 3 - - - 0x01E8C2 07:E8B2: E5 E8     .word ofs_003_E8E5_70



ofs_003_E8B4_00:
C - - J - - 0x01E8C4 07:E8B4: A0 00     LDY #$00
C - - - - - 0x01E8C6 07:E8B6: 20 95 EB  JSR sub_EB95
C - - - - - 0x01E8C9 07:E8B9: F0 2F     BEQ bra_E8EA_RTS
ofs_003_E8BB_10:
C - - - - - 0x01E8CB 07:E8BB: A0 01     LDY #$01
C - - - - - 0x01E8CD 07:E8BD: 20 95 EB  JSR sub_EB95
C - - - - - 0x01E8D0 07:E8C0: F0 28     BEQ bra_E8EA_RTS
ofs_003_E8C2_20:
C - - - - - 0x01E8D2 07:E8C2: A0 02     LDY #$02
C - - - - - 0x01E8D4 07:E8C4: 20 95 EB  JSR sub_EB95
C - - - - - 0x01E8D7 07:E8C7: F0 21     BEQ bra_E8EA_RTS
ofs_003_E8C9_30:
C - - - - - 0x01E8D9 07:E8C9: A0 03     LDY #$03
C - - - - - 0x01E8DB 07:E8CB: 20 95 EB  JSR sub_EB95
C - - - - - 0x01E8DE 07:E8CE: F0 1A     BEQ bra_E8EA_RTS
ofs_003_E8D0_40:
C - - - - - 0x01E8E0 07:E8D0: A0 04     LDY #$04
C - - - - - 0x01E8E2 07:E8D2: 20 95 EB  JSR sub_EB95
C - - - - - 0x01E8E5 07:E8D5: F0 13     BEQ bra_E8EA_RTS
ofs_003_E8D7_50:
C - - - - - 0x01E8E7 07:E8D7: A0 05     LDY #$05
C - - - - - 0x01E8E9 07:E8D9: 20 95 EB  JSR sub_EB95
C - - - - - 0x01E8EC 07:E8DC: F0 0C     BEQ bra_E8EA_RTS
ofs_003_E8DE_60:
C - - - - - 0x01E8EE 07:E8DE: A0 06     LDY #$06
C - - - - - 0x01E8F0 07:E8E0: 20 95 EB  JSR sub_EB95
C - - - - - 0x01E8F3 07:E8E3: F0 05     BEQ bra_E8EA_RTS
ofs_003_E8E5_70:
C - - - - - 0x01E8F5 07:E8E5: A0 07     LDY #$07
C - - - - - 0x01E8F7 07:E8E7: 4C 95 EB  JMP loc_EB95
bra_E8EA_RTS:
C - - - - - 0x01E8FA 07:E8EA: 60        RTS



loc_E8EB:
C D 3 - - - 0x01E8FB 07:E8EB: A4 05     LDY ram_0005_t05_hi
C - - - - - 0x01E8FD 07:E8ED: 20 5E E9  JSR sub_E95E
C - - - - - 0x01E900 07:E8F0: 20 74 E9  JSR sub_E974
C - - - - - 0x01E903 07:E8F3: 05 00     ORA ram_0000_t8B
C - - - - - 0x01E905 07:E8F5: 85 00     STA ram_0000_t01_data
C - - - - - 0x01E907 07:E8F7: A9 04     LDA #> ram_0400
C - - - - - 0x01E909 07:E8F9: 85 01     STA ram_0000_t01_data + $01
; bzk optimize, all those calculations only to always come up with ram_0400
loc_E8FB:
C D 3 - - - 0x01E90B 07:E8FB: B9 17 E9  LDA tbl_E917,Y
C - - - - - 0x01E90E 07:E8FE: 85 1C     STA ram_001C_t02_jmp
C - - - - - 0x01E910 07:E900: B9 18 E9  LDA tbl_E917 + $01,Y
C - - - - - 0x01E913 07:E903: 85 1D     STA ram_001C_t02_jmp + $01
C - - - - - 0x01E915 07:E905: A5 10     LDA ram_0010_t12
C - - - - - 0x01E917 07:E907: 29 03     AND #$03
C - - - - - 0x01E919 07:E909: 85 10     STA ram_0010_t13
C - - - - - 0x01E91B 07:E90B: A5 11     LDA ram_0011_t10
C - - - - - 0x01E91D 07:E90D: 29 03     AND #$03
C - - - - - 0x01E91F 07:E90F: 85 11     STA ram_0011_t11
C - - - - - 0x01E921 07:E911: 20 B5 ED  JSR sub_EDB5_prepare_metatiles_pointers
C - - - - - 0x01E924 07:E914: 6C 1C 00  JMP (ram_001C_t02_jmp)



tbl_E917:
- D 3 - - - 0x01E927 07:E917: 27 E9     .word ofs_004_E927_00
- D 3 - - - 0x01E929 07:E919: 2E E9     .word ofs_004_E92E_01
- D 3 - - - 0x01E92B 07:E91B: 35 E9     .word ofs_004_E935_02
- D 3 - - - 0x01E92D 07:E91D: 3C E9     .word ofs_004_E93C_03
- D 3 - - - 0x01E92F 07:E91F: 43 E9     .word ofs_004_E943_04
- D 3 - - - 0x01E931 07:E921: 4A E9     .word ofs_004_E94A_05
- D 3 - - - 0x01E933 07:E923: 51 E9     .word ofs_004_E951_06
- D 3 - - - 0x01E935 07:E925: 58 E9     .word ofs_004_E958_07



ofs_004_E927_00:
C - - J - - 0x01E937 07:E927: A0 00     LDY #$00
C - - - - - 0x01E939 07:E929: 20 83 EB  JSR sub_EB83
C - - - - - 0x01E93C 07:E92C: F0 2F     BEQ bra_E95D_RTS
ofs_004_E92E_01:
C - - - - - 0x01E93E 07:E92E: A0 10     LDY #$10
C - - - - - 0x01E940 07:E930: 20 83 EB  JSR sub_EB83
C - - - - - 0x01E943 07:E933: F0 28     BEQ bra_E95D_RTS
ofs_004_E935_02:
C - - - - - 0x01E945 07:E935: A0 20     LDY #$20
C - - - - - 0x01E947 07:E937: 20 83 EB  JSR sub_EB83
C - - - - - 0x01E94A 07:E93A: F0 21     BEQ bra_E95D_RTS
ofs_004_E93C_03:
C - - - - - 0x01E94C 07:E93C: A0 30     LDY #$30
C - - - - - 0x01E94E 07:E93E: 20 83 EB  JSR sub_EB83
C - - - - - 0x01E951 07:E941: F0 1A     BEQ bra_E95D_RTS
ofs_004_E943_04:
C - - - - - 0x01E953 07:E943: A0 40     LDY #$40
C - - - - - 0x01E955 07:E945: 20 83 EB  JSR sub_EB83
C - - - - - 0x01E958 07:E948: F0 13     BEQ bra_E95D_RTS
ofs_004_E94A_05:
C - - - - - 0x01E95A 07:E94A: A0 50     LDY #$50
C - - - - - 0x01E95C 07:E94C: 20 83 EB  JSR sub_EB83
C - - - - - 0x01E95F 07:E94F: F0 0C     BEQ bra_E95D_RTS
ofs_004_E951_06:
C - - J - - 0x01E961 07:E951: A0 60     LDY #$60
C - - - - - 0x01E963 07:E953: 20 83 EB  JSR sub_EB83
C - - - - - 0x01E966 07:E956: F0 05     BEQ bra_E95D_RTS
ofs_004_E958_07:
C - - - - - 0x01E968 07:E958: A0 70     LDY #$70
C - - - - - 0x01E96A 07:E95A: 4C 83 EB  JMP loc_EB83
bra_E95D_RTS:
C - - - - - 0x01E96D 07:E95D: 60        RTS



sub_E95E:
; in
    ; Y = 
    ; ram_0004_t28
; out
    ; ram_0000_t8B
C - - - - - 0x01E96E 07:E95E: A5 04     LDA ram_0004_t28
C - - - - - 0x01E970 07:E960: 29 01     AND #$01
C - - - - - 0x01E972 07:E962: F0 02     BEQ bra_E966
C - - - - - 0x01E974 07:E964: A9 80     LDA #$80
bra_E966:
C - - - - - 0x01E976 07:E966: 85 00     STA ram_0000_t8A
C - - - - - 0x01E978 07:E968: 98        TYA
C - - - - - 0x01E979 07:E969: 29 01     AND #$01
C - - - - - 0x01E97B 07:E96B: F0 02     BEQ bra_E96F
C - - - - - 0x01E97D 07:E96D: A9 08     LDA #$08
bra_E96F:
C - - - - - 0x01E97F 07:E96F: 05 00     ORA ram_0000_t8A
C - - - - - 0x01E981 07:E971: 85 00     STA ram_0000_t8B
C - - - - - 0x01E983 07:E973: 60        RTS



sub_E974:
C - - - - - 0x01E984 07:E974: A5 02     LDA ram_0002_t13
; / 08
C - - - - - 0x01E986 07:E976: 4A        LSR
C - - - - - 0x01E987 07:E977: 4A        LSR
C - - - - - 0x01E988 07:E978: 4A        LSR
C - - - - - 0x01E989 07:E979: 85 11     STA ram_0011_t10
; / 02 (10)
C - - - - - 0x01E98B 07:E97B: 4A        LSR
C - - - - - 0x01E98C 07:E97C: 29 0E     AND #$0E
C - - - - - 0x01E98E 07:E97E: A8        TAY
C - - - - - 0x01E98F 07:E97F: A5 03     LDA ram_0003_t04_lo
; / 08
C - - - - - 0x01E991 07:E981: 4A        LSR
C - - - - - 0x01E992 07:E982: 4A        LSR
C - - - - - 0x01E993 07:E983: 4A        LSR
C - - - - - 0x01E994 07:E984: 85 10     STA ram_0010_t12
; / 04 (20)
C - - - - - 0x01E996 07:E986: 4A        LSR
C - - - - - 0x01E997 07:E987: 4A        LSR
C - - - - - 0x01E998 07:E988: 29 07     AND #$07
C - - - - - 0x01E99A 07:E98A: 60        RTS



sub_E98B:
C - - - - - 0x01E99B 07:E98B: A9 02     LDA #$02
C - - - - - 0x01E99D 07:E98D: 85 17     STA ram_0017_t05
C - - - - - 0x01E99F 07:E98F: A5 D0     LDA ram_00D0
C - - - - - 0x01E9A1 07:E991: D0 1A     BNE bra_E9AD
C - - - - - 0x01E9A3 07:E993: A5 45     LDA ram_pause_flag
C - - - - - 0x01E9A5 07:E995: F0 19     BEQ bra_E9B0
C - - - - - 0x01E9A7 07:E997: A5 3D     LDA ram_003D_t02_flag
C - - - - - 0x01E9A9 07:E999: D0 29     BNE bra_E9C4
C - - - - - 0x01E9AB 07:E99B: A9 38     LDA #$38
C - - - - - 0x01E9AD 07:E99D: 38        SEC
C - - - - - 0x01E9AE 07:E99E: E5 54     SBC ram_0054
; bzk optimize, always 00
C - - - - - 0x01E9B0 07:E9A0: C5 1E     CMP ram_001E_t17_useless_00
C - - - - - 0x01E9B2 07:E9A2: B0 09     BCS bra_E9AD
- - - - - - 0x01E9B4 07:E9A4: A9 28     LDA #$28
- - - - - - 0x01E9B6 07:E9A6: 38        SEC
- - - - - - 0x01E9B7 07:E9A7: E5 54     SBC ram_0054
; bzk optimize, always 00
- - - - - - 0x01E9B9 07:E9A9: C5 1E     CMP ram_001E_t17_useless_00
- - - - - - 0x01E9BB 07:E9AB: B0 17     BCS bra_E9C4
bra_E9AD:
C - - - - - 0x01E9BD 07:E9AD: 4C EB E8  JMP loc_E8EB
bra_E9B0:
C - - - - - 0x01E9C0 07:E9B0: A5 3C     LDA ram_003C_t03
C - - - - - 0x01E9C2 07:E9B2: 10 0A     BPL bra_E9BE
C - - - - - 0x01E9C4 07:E9B4: A5 03     LDA ram_0003_t04_lo
C - - - - - 0x01E9C6 07:E9B6: 29 18     AND #$18
C - - - - - 0x01E9C8 07:E9B8: C9 18     CMP #$18
C - - - - - 0x01E9CA 07:E9BA: D0 F1     BNE bra_E9AD
C - - - - - 0x01E9CC 07:E9BC: F0 06     BEQ bra_E9C4    ; jmp
bra_E9BE:
C - - - - - 0x01E9CE 07:E9BE: A5 03     LDA ram_0003_t04_lo
C - - - - - 0x01E9D0 07:E9C0: 29 18     AND #$18
C - - - - - 0x01E9D2 07:E9C2: D0 E9     BNE bra_E9AD
bra_E9C4:
C - - - - - 0x01E9D4 07:E9C4: 20 0D EB  JSR sub_EB0D
C - - - - - 0x01E9D7 07:E9C7: A5 02     LDA ram_0002_t13
; / 08
C - - - - - 0x01E9D9 07:E9C9: 4A        LSR
C - - - - - 0x01E9DA 07:E9CA: 4A        LSR
C - - - - - 0x01E9DB 07:E9CB: 4A        LSR
C - - - - - 0x01E9DC 07:E9CC: 85 11     STA ram_0011_t12
; / 02 (10)
C - - - - - 0x01E9DE 07:E9CE: 4A        LSR
C - - - - - 0x01E9DF 07:E9CF: 29 0E     AND #$0E
C - - - - - 0x01E9E1 07:E9D1: A8        TAY
C - - - - - 0x01E9E2 07:E9D2: A5 03     LDA ram_0003_t04_lo
; / 08
C - - - - - 0x01E9E4 07:E9D4: 4A        LSR
C - - - - - 0x01E9E5 07:E9D5: 4A        LSR
C - - - - - 0x01E9E6 07:E9D6: 4A        LSR
C - - - - - 0x01E9E7 07:E9D7: 85 10     STA ram_0010_t14
; / 04 (20)
C - - - - - 0x01E9E9 07:E9D9: 4A        LSR
C - - - - - 0x01E9EA 07:E9DA: 4A        LSR
C - - - - - 0x01E9EB 07:E9DB: 29 07     AND #$07
C - - - - - 0x01E9ED 07:E9DD: 18        CLC
C - - - - - 0x01E9EE 07:E9DE: 65 00     ADC ram_0000_t8C_meta_indexes_ptr_lo
C - - - - - 0x01E9F0 07:E9E0: 85 00     STA ram_0000_t0E_meta_indexes_data
C - - - - - 0x01E9F2 07:E9E2: A5 01     LDA ram_0001_t51_meta_indexes_ptr_hi
C - - - - - 0x01E9F4 07:E9E4: 69 00     ADC #$00
C - - - - - 0x01E9F6 07:E9E6: 85 01     STA ram_0000_t0E_meta_indexes_data + $01
C - - - - - 0x01E9F8 07:E9E8: B9 BE EA  LDA tbl_EABE,Y
C - - - - - 0x01E9FB 07:E9EB: 85 1C     STA ram_001C_t03_jmp
C - - - - - 0x01E9FD 07:E9ED: B9 BF EA  LDA tbl_EABE + $01,Y
C - - - - - 0x01EA00 07:E9F0: 85 1D     STA ram_001C_t03_jmp + $01
C - - - - - 0x01EA02 07:E9F2: A5 10     LDA ram_0010_t14
C - - - - - 0x01EA04 07:E9F4: 29 03     AND #$03
C - - - - - 0x01EA06 07:E9F6: 85 10     STA ram_0010_t13
C - - - - - 0x01EA08 07:E9F8: A5 11     LDA ram_0011_t12
C - - - - - 0x01EA0A 07:E9FA: 29 03     AND #$03
C - - - - - 0x01EA0C 07:E9FC: 85 11     STA ram_0011_t11
C - - - - - 0x01EA0E 07:E9FE: 20 B5 ED  JSR sub_EDB5_prepare_metatiles_pointers
C - - - - - 0x01EA11 07:EA01: A9 00     LDA #$00
C - - - - - 0x01EA13 07:EA03: 8D 53 03  STA ram_0353_flag
C - - - - - 0x01EA16 07:EA06: 6C 1C 00  JMP (ram_001C_t03_jmp)
bra_EA09:
C - - - - - 0x01EA19 07:EA09: A4 05     LDY ram_0005_t05_hi
C - - - - - 0x01EA1B 07:EA0B: C8        INY
C - - - - - 0x01EA1C 07:EA0C: 20 5E E9  JSR sub_E95E
C - - - - - 0x01EA1F 07:EA0F: 4C 18 EA  JMP loc_EA18



bra_EA12:
C - - - - - 0x01EA22 07:EA12: A4 05     LDY ram_0005_t05_hi
C - - - - - 0x01EA24 07:EA14: 88        DEY
C - - - - - 0x01EA25 07:EA15: 20 5E E9  JSR sub_E95E
loc_EA18:
C D 3 - - - 0x01EA28 07:EA18: A5 00     LDA ram_0000_t8B
C - - - - - 0x01EA2A 07:EA1A: 85 1A     STA ram_001A_t05
; bzk optimize, useless LDA + STA
; bzk bug? value in 0001 can be from ram_0000_t1A_jmp + $01
C - - - - - 0x01EA2C 07:EA1C: A5 01     LDA ram_0000_t01_data + $01
C - - - - - 0x01EA2E 07:EA1E: 85 1B     STA ram_001B_t10_useless
C - - - - - 0x01EA30 07:EA20: A4 05     LDY ram_0005_t05_hi
C - - - - - 0x01EA32 07:EA22: 20 5E E9  JSR sub_E95E
C - - - - - 0x01EA35 07:EA25: 20 74 E9  JSR sub_E974
C - - - - - 0x01EA38 07:EA28: 48        PHA
C - - - - - 0x01EA39 07:EA29: 05 00     ORA ram_0000_t8B
C - - - - - 0x01EA3B 07:EA2B: 85 00     STA ram_0000_t01_data
C - - - - - 0x01EA3D 07:EA2D: 68        PLA
C - - - - - 0x01EA3E 07:EA2E: 05 1A     ORA ram_001A_t05
C - - - - - 0x01EA40 07:EA30: 85 1A     STA ram_001A_t08_lo
C - - - - - 0x01EA42 07:EA32: A9 04     LDA #$04
C - - - - - 0x01EA44 07:EA34: 85 01     STA ram_0000_t01_data + $01
C - - - - - 0x01EA46 07:EA36: 85 1B     STA ram_001B_t02_hi
C - - - - - 0x01EA48 07:EA38: A5 17     LDA ram_0017_t05
C - - - - - 0x01EA4A 07:EA3A: 09 80     ORA #$80
C - - - - - 0x01EA4C 07:EA3C: 85 17     STA ram_0017_t05
C - - - - - 0x01EA4E 07:EA3E: 4C FB E8  JMP loc_E8FB



sub_EA41:
C - - - - - 0x01EA51 07:EA41: A9 02     LDA #$02
C - - - - - 0x01EA53 07:EA43: 85 17     STA ram_0017_t05
C - - - - - 0x01EA55 07:EA45: A5 3C     LDA ram_003C_t03
C - - - - - 0x01EA57 07:EA47: 10 0F     BPL bra_EA58
C - - - - - 0x01EA59 07:EA49: A5 03     LDA ram_0003_t04_lo
C - - - - - 0x01EA5B 07:EA4B: 29 18     AND #$18
C - - - - - 0x01EA5D 07:EA4D: C9 18     CMP #$18
C - - - - - 0x01EA5F 07:EA4F: D0 B8     BNE bra_EA09
C - - - - - 0x01EA61 07:EA51: C8        INY
C - - - - - 0x01EA62 07:EA52: 20 0D EB  JSR sub_EB0D
C - - - - - 0x01EA65 07:EA55: 4C 62 EA  JMP loc_EA62
bra_EA58:
C - - - - - 0x01EA68 07:EA58: A5 03     LDA ram_0003_t04_lo
C - - - - - 0x01EA6A 07:EA5A: 29 18     AND #$18
C - - - - - 0x01EA6C 07:EA5C: D0 B4     BNE bra_EA12
C - - - - - 0x01EA6E 07:EA5E: 88        DEY
C - - - - - 0x01EA6F 07:EA5F: 20 0D EB  JSR sub_EB0D
loc_EA62:
C D 3 - - - 0x01EA72 07:EA62: A5 00     LDA ram_0000_t8C_meta_indexes_ptr_lo
C - - - - - 0x01EA74 07:EA64: 85 1A     STA ram_001A_t06_meta_indexes_ptr_lo
C - - - - - 0x01EA76 07:EA66: A5 01     LDA ram_0001_t51_meta_indexes_ptr_hi
C - - - - - 0x01EA78 07:EA68: 85 1B     STA ram_001B_t09_meta_indexes_ptr_hi
C - - - - - 0x01EA7A 07:EA6A: A4 07     LDY ram_0007_t03
C - - - - - 0x01EA7C 07:EA6C: 20 0D EB  JSR sub_EB0D
C - - - - - 0x01EA7F 07:EA6F: A5 02     LDA ram_0002_t13
; / 08
C - - - - - 0x01EA81 07:EA71: 4A        LSR
C - - - - - 0x01EA82 07:EA72: 4A        LSR
C - - - - - 0x01EA83 07:EA73: 4A        LSR
C - - - - - 0x01EA84 07:EA74: 85 11     STA ram_0011_t13
; / 02 (10)
C - - - - - 0x01EA86 07:EA76: 4A        LSR
C - - - - - 0x01EA87 07:EA77: 29 0E     AND #$0E
C - - - - - 0x01EA89 07:EA79: A8        TAY
C - - - - - 0x01EA8A 07:EA7A: A5 03     LDA ram_0003_t04_lo
; / 08
C - - - - - 0x01EA8C 07:EA7C: 4A        LSR
C - - - - - 0x01EA8D 07:EA7D: 4A        LSR
C - - - - - 0x01EA8E 07:EA7E: 4A        LSR
C - - - - - 0x01EA8F 07:EA7F: 85 10     STA ram_0010_t15
; / 04 (20)
C - - - - - 0x01EA91 07:EA81: 4A        LSR
C - - - - - 0x01EA92 07:EA82: 4A        LSR
C - - - - - 0x01EA93 07:EA83: 29 07     AND #$07
C - - - - - 0x01EA95 07:EA85: 48        PHA
C - - - - - 0x01EA96 07:EA86: 18        CLC
C - - - - - 0x01EA97 07:EA87: 65 00     ADC ram_0000_t8C_meta_indexes_ptr_lo
C - - - - - 0x01EA99 07:EA89: 85 00     STA ram_0000_t0E_meta_indexes_data
C - - - - - 0x01EA9B 07:EA8B: A5 01     LDA ram_0001_t51_meta_indexes_ptr_hi
C - - - - - 0x01EA9D 07:EA8D: 69 00     ADC #$00
C - - - - - 0x01EA9F 07:EA8F: 85 01     STA ram_0000_t0E_meta_indexes_data + $01
C - - - - - 0x01EAA1 07:EA91: 68        PLA
C - - - - - 0x01EAA2 07:EA92: 18        CLC
C - - - - - 0x01EAA3 07:EA93: 65 1A     ADC ram_001A_t06_meta_indexes_ptr_lo
C - - - - - 0x01EAA5 07:EA95: 85 1A     STA ram_001A_t08_lo
C - - - - - 0x01EAA7 07:EA97: A5 1B     LDA ram_001B_t09_meta_indexes_ptr_hi
C - - - - - 0x01EAA9 07:EA99: 69 00     ADC #$00
C - - - - - 0x01EAAB 07:EA9B: 85 1B     STA ram_001B_t02_hi
C - - - - - 0x01EAAD 07:EA9D: B9 BE EA  LDA tbl_EABE,Y
C - - - - - 0x01EAB0 07:EAA0: 85 1C     STA ram_001C_t04_jmp
C - - - - - 0x01EAB2 07:EAA2: B9 BF EA  LDA tbl_EABE + $01,Y
C - - - - - 0x01EAB5 07:EAA5: 85 1D     STA ram_001C_t04_jmp + $01
C - - - - - 0x01EAB7 07:EAA7: A5 10     LDA ram_0010_t15
C - - - - - 0x01EAB9 07:EAA9: 29 03     AND #$03
C - - - - - 0x01EABB 07:EAAB: 85 10     STA ram_0010_t13
C - - - - - 0x01EABD 07:EAAD: A5 11     LDA ram_0011_t13
C - - - - - 0x01EABF 07:EAAF: 29 03     AND #$03
C - - - - - 0x01EAC1 07:EAB1: 85 11     STA ram_0011_t11
C - - - - - 0x01EAC3 07:EAB3: 20 B5 ED  JSR sub_EDB5_prepare_metatiles_pointers
C - - - - - 0x01EAC6 07:EAB6: A9 01     LDA #$01
C - - - - - 0x01EAC8 07:EAB8: 8D 53 03  STA ram_0353_flag
C - - - - - 0x01EACB 07:EABB: 6C 1C 00  JMP (ram_001C_t04_jmp)



tbl_EABE:
- D 3 - - - 0x01EACE 07:EABE: CE EA     .word ofs_005_EACE_00
- D 3 - - - 0x01EAD0 07:EAC0: D5 EA     .word ofs_005_EAD5_10
- D 3 - - - 0x01EAD2 07:EAC2: DC EA     .word ofs_005_EADC_20
- D 3 - - - 0x01EAD4 07:EAC4: E3 EA     .word ofs_005_EAE3_30
- D 3 - - - 0x01EAD6 07:EAC6: EA EA     .word ofs_005_EAEA_40
- D 3 - - - 0x01EAD8 07:EAC8: F1 EA     .word ofs_005_EAF1_50
- D 3 - - - 0x01EADA 07:EACA: F8 EA     .word ofs_005_EAF8_60
- D 3 - - - 0x01EADC 07:EACC: FF EA     .word ofs_005_EAFF_70



ofs_005_EACE_00:
C - - J - - 0x01EADE 07:EACE: A0 00     LDY #$00
C - - - - - 0x01EAE0 07:EAD0: 20 34 EB  JSR sub_EB34
C - - - - - 0x01EAE3 07:EAD3: F0 2F     BEQ bra_EB04_RTS
ofs_005_EAD5_10:
C - - - - - 0x01EAE5 07:EAD5: A0 08     LDY #$08
C - - - - - 0x01EAE7 07:EAD7: 20 05 EB  JSR sub_EB05
C - - - - - 0x01EAEA 07:EADA: F0 28     BEQ bra_EB04_RTS
ofs_005_EADC_20:
C - - - - - 0x01EAEC 07:EADC: A0 10     LDY #$10
C - - - - - 0x01EAEE 07:EADE: 20 05 EB  JSR sub_EB05
C - - - - - 0x01EAF1 07:EAE1: F0 21     BEQ bra_EB04_RTS
ofs_005_EAE3_30:
C - - - - - 0x01EAF3 07:EAE3: A0 18     LDY #$18
C - - - - - 0x01EAF5 07:EAE5: 20 05 EB  JSR sub_EB05
C - - - - - 0x01EAF8 07:EAE8: F0 1A     BEQ bra_EB04_RTS
ofs_005_EAEA_40:
C - - - - - 0x01EAFA 07:EAEA: A0 20     LDY #$20
C - - - - - 0x01EAFC 07:EAEC: 20 05 EB  JSR sub_EB05
C - - - - - 0x01EAFF 07:EAEF: F0 13     BEQ bra_EB04_RTS
ofs_005_EAF1_50:
C - - - - - 0x01EB01 07:EAF1: A0 28     LDY #$28
C - - - - - 0x01EB03 07:EAF3: 20 05 EB  JSR sub_EB05
C - - - - - 0x01EB06 07:EAF6: F0 0C     BEQ bra_EB04_RTS
ofs_005_EAF8_60:
C - - J - - 0x01EB08 07:EAF8: A0 30     LDY #$30
C - - - - - 0x01EB0A 07:EAFA: 20 05 EB  JSR sub_EB05
C - - - - - 0x01EB0D 07:EAFD: F0 05     BEQ bra_EB04_RTS
ofs_005_EAFF_70:
C - - - - - 0x01EB0F 07:EAFF: A0 38     LDY #$38
C - - - - - 0x01EB11 07:EB01: 4C 05 EB  JMP loc_EB05
bra_EB04_RTS:
C - - - - - 0x01EB14 07:EB04: 60        RTS



sub_EB05:
loc_EB05:
; out
    ; Z
        ; 0 = 
        ; 1 = 
C D 3 - - - 0x01EB15 07:EB05: AD 53 03  LDA ram_0353_flag
C - - - - - 0x01EB18 07:EB08: D0 2A     BNE bra_EB34
C - - - - - 0x01EB1A 07:EB0A: 4C E6 EB  JMP loc_EBE6



sub_EB0D:
; in
    ; ram_003A_t01_data
C - - - - - 0x01EB1D 07:EB0D: A9 00     LDA #$00
C - - - - - 0x01EB1F 07:EB0F: 85 00     STA ram_0000_t8D_lo
C - - - - - 0x01EB21 07:EB11: B1 3A     LDA (ram_003A_t01_data),Y
; / 04
C - - - - - 0x01EB23 07:EB13: 4A        LSR
C - - - - - 0x01EB24 07:EB14: 66 00     ROR ram_0000_t8D_lo
C - - - - - 0x01EB26 07:EB16: 4A        LSR
C - - - - - 0x01EB27 07:EB17: 66 00     ROR ram_0000_t8D_lo
C - - - - - 0x01EB29 07:EB19: 85 01     STA ram_0001_t52_hi
C - - - - - 0x01EB2B 07:EB1B: A4 88     LDY ram_x2_stage
C - - - - - 0x01EB2D 07:EB1D: B9 61 DA  LDA tbl_0x01DA71_metatile_indexes,Y
C - - - - - 0x01EB30 07:EB20: 18        CLC
C - - - - - 0x01EB31 07:EB21: 65 00     ADC ram_0000_t8D_lo
C - - - - - 0x01EB33 07:EB23: 85 00     STA ram_0000_t8C_meta_indexes_ptr_lo
C - - - - - 0x01EB35 07:EB25: B9 62 DA  LDA tbl_0x01DA71_metatile_indexes + $01,Y
C - - - - - 0x01EB38 07:EB28: 65 01     ADC ram_0001_t52_hi
C - - - - - 0x01EB3A 07:EB2A: 85 01     STA ram_0001_t51_meta_indexes_ptr_hi
C - - - - - 0x01EB3C 07:EB2C: 60        RTS



bra_EB2D:
C - - - - - 0x01EB3D 07:EB2D: A4 0D     LDY ram_000D_t09_data_index
C - - - - - 0x01EB3F 07:EB2F: 46 0D     LSR ram_000D_t09_data_index
C - - - - - 0x01EB41 07:EB31: 4C 3F EB  JMP loc_EB3F



bra_EB34:
sub_EB34:
; in
    ; Y = 
; out
    ; Z
        ; 0 = 
        ; 1 = 
C - - - - - 0x01EB44 07:EB34: 84 0D     STY ram_000D_t09_data_index
C - - - - - 0x01EB46 07:EB36: B1 00     LDA (ram_0000_t0E_meta_indexes_data),Y
C - - - - - 0x01EB48 07:EB38: 85 13     STA ram_0013_t06_data_index
C - - - - - 0x01EB4A 07:EB3A: 20 78 ED  JSR sub_ED78
C - - - - - 0x01EB4D 07:EB3D: A4 0D     LDY ram_000D_t09_data_index
loc_EB3F:
                                       ;LDA ram_001A_t08_lo
                                       ;STA ram_001A_t01_data
                                       ;LDA ram_001B_t02_hi
                                       ;STA ram_001A_t01_data + $01
; bzk bug? this can refer to RAM, like values from
; ram_0002_t13
; ram_0003_t04_lo
; ram_0004_t28
; ram_0005_t05_hi
; ram_0006_t03
C D 3 - - - 0x01EB4F 07:EB3F: B1 1A     LDA (ram_001A_t01_data),Y
C - - - - - 0x01EB51 07:EB41: 48        PHA
C - - - - - 0x01EB52 07:EB42: A4 10     LDY ram_0010_t13
C - - - - - 0x01EB54 07:EB44: A5 3C     LDA ram_003C_t03
C - - - - - 0x01EB56 07:EB46: 10 0D     BPL bra_EB55
C - - - - - 0x01EB58 07:EB48: B9 7F EB  LDA tbl_EB7F,Y
C - - - - - 0x01EB5B 07:EB4B: 85 1C     STA ram_001C_t11
C - - - - - 0x01EB5D 07:EB4D: B9 7B EB  LDA tbl_EB7B,Y
C - - - - - 0x01EB60 07:EB50: 85 1D     STA ram_001D_t11
C - - - - - 0x01EB62 07:EB52: 4C 5F EB  JMP loc_EB5F
bra_EB55:
C - - - - - 0x01EB65 07:EB55: B9 7B EB  LDA tbl_EB7B,Y
C - - - - - 0x01EB68 07:EB58: 85 1C     STA ram_001C_t11
C - - - - - 0x01EB6A 07:EB5A: B9 7F EB  LDA tbl_EB7F,Y
C - - - - - 0x01EB6D 07:EB5D: 85 1D     STA ram_001D_t11
loc_EB5F:
C D 3 - - - 0x01EB6F 07:EB5F: A4 13     LDY ram_0013_t06_data_index
C - - - - - 0x01EB71 07:EB61: B1 18     LDA (ram_0018_t02_nmt_attr_data),Y
C - - - - - 0x01EB73 07:EB63: A4 0A     LDY ram_000A_t18_buffer_index
C - - - - - 0x01EB75 07:EB65: 25 1C     AND ram_001C_t11
C - - - - - 0x01EB77 07:EB67: 99 00 05  STA ram_0500_nmt_attr_buffer,Y
C - - - - - 0x01EB7A 07:EB6A: 68        PLA
C - - - - - 0x01EB7B 07:EB6B: A8        TAY
C - - - - - 0x01EB7C 07:EB6C: B1 18     LDA (ram_0018_t02_nmt_attr_data),Y
C - - - - - 0x01EB7E 07:EB6E: 25 1D     AND ram_001D_t11
C - - - - - 0x01EB80 07:EB70: A4 0A     LDY ram_000A_t18_buffer_index
C - - - - - 0x01EB82 07:EB72: 19 00 05  ORA ram_0500_nmt_attr_buffer,Y
C - - - - - 0x01EB85 07:EB75: 99 00 05  STA ram_0500_nmt_attr_buffer,Y
C - - - - - 0x01EB88 07:EB78: 4C 15 EC  JMP loc_EC15



tbl_EB7B:
- D 3 - - - 0x01EB8B 07:EB7B: 00        .byte $00   ; 00 
- D 3 - - - 0x01EB8C 07:EB7C: 33        .byte $33   ; 01 
- D 3 - - - 0x01EB8D 07:EB7D: 33        .byte $33   ; 02 
- D 3 - - - 0x01EB8E 07:EB7E: FF        .byte $FF   ; 03 



tbl_EB7F:
- D 3 - - - 0x01EB8F 07:EB7F: FF        .byte $FF   ; 00 
- D 3 - - - 0x01EB90 07:EB80: CC        .byte $CC   ; 01 
- D 3 - - - 0x01EB91 07:EB81: CC        .byte $CC   ; 02 
- D 3 - - - 0x01EB92 07:EB82: 00        .byte $00   ; 03 



sub_EB83:
loc_EB83:
; in
    ; Y = 
; out
    ; Z
        ; 0 = 
        ; 1 = 
C D 3 - - - 0x01EB93 07:EB83: 84 0D     STY ram_000D_t09_data_index
C - - - - - 0x01EB95 07:EB85: B1 00     LDA (ram_0000_t01_data),Y    ; 0400-04FF
C - - - - - 0x01EB97 07:EB87: 85 13     STA ram_0013_t06_data_index
C - - - - - 0x01EB99 07:EB89: 20 78 ED  JSR sub_ED78
C - - - - - 0x01EB9C 07:EB8C: A5 17     LDA ram_0017_t05
C - - - - - 0x01EB9E 07:EB8E: 30 9D     BMI bra_EB2D
C - - - - - 0x01EBA0 07:EB90: 46 0D     LSR ram_000D_t09_data_index
C - - - - - 0x01EBA2 07:EB92: 4C EC EB  JMP loc_EBEC



sub_EB95:
loc_EB95:
; in
    ; Y = 
C D 3 - - - 0x01EBA5 07:EB95: 84 0D     STY ram_000D_t10
C - - - - - 0x01EBA7 07:EB97: B1 00     LDA (ram_0000_t0F_meta_indexes_data),Y
C - - - - - 0x01EBA9 07:EB99: 85 13     STA ram_0013_t06_data_index
C - - - - - 0x01EBAB 07:EB9B: 20 64 ED  JSR sub_ED64
C - - - - - 0x01EBAE 07:EB9E: A4 13     LDY ram_0013_t06_data_index
C - - - - - 0x01EBB0 07:EBA0: B1 18     LDA (ram_0018_t02_nmt_attr_data),Y
C - - - - - 0x01EBB2 07:EBA2: 85 1D     STA ram_001D_t12
C - - - - - 0x01EBB4 07:EBA4: A5 3D     LDA ram_003D_t02_flag
C - - - - - 0x01EBB6 07:EBA6: D0 1D     BNE bra_EBC5
C - - - - - 0x01EBB8 07:EBA8: A5 3C     LDA ram_003C_t03
C - - - - - 0x01EBBA 07:EBAA: 10 0D     BPL bra_EBB9
C - - - - - 0x01EBBC 07:EBAC: A5 02     LDA ram_0002_t13
C - - - - - 0x01EBBE 07:EBAE: 29 10     AND #$10
C - - - - - 0x01EBC0 07:EBB0: F0 13     BEQ bra_EBC5
C - - - - - 0x01EBC2 07:EBB2: A5 1D     LDA ram_001D_t12
C - - - - - 0x01EBC4 07:EBB4: 29 F0     AND #$F0
C - - - - - 0x01EBC6 07:EBB6: 4C C3 EB  JMP loc_EBC3
bra_EBB9:
C - - - - - 0x01EBC9 07:EBB9: A5 02     LDA ram_0002_t13
C - - - - - 0x01EBCB 07:EBBB: 29 10     AND #$10
C - - - - - 0x01EBCD 07:EBBD: D0 06     BNE bra_EBC5
C - - - - - 0x01EBCF 07:EBBF: A5 1D     LDA ram_001D_t12
C - - - - - 0x01EBD1 07:EBC1: 29 0F     AND #$0F
loc_EBC3:
C D 3 - - - 0x01EBD3 07:EBC3: 85 1D     STA ram_001D_t12
bra_EBC5:
C - - - - - 0x01EBD5 07:EBC5: A5 1D     LDA ram_001D_t12
C - - - - - 0x01EBD7 07:EBC7: A4 06     LDY ram_0006_t03
C - - - - - 0x01EBD9 07:EBC9: C0 04     CPY #$04
C - - - - - 0x01EBDB 07:EBCB: B0 23     BCS bra_EBF0
; 00-03
C - - - - - 0x01EBDD 07:EBCD: AD FF 03  LDA ram_03FF
C - - - - - 0x01EBE0 07:EBD0: 85 1C     STA ram_001C_t12
C - - - - - 0x01EBE2 07:EBD2: A4 06     LDY ram_0006_t03
C - - - - - 0x01EBE4 07:EBD4: 88        DEY
C - - - - - 0x01EBE5 07:EBD5: B9 7F EB  LDA tbl_EB7F,Y
C - - - - - 0x01EBE8 07:EBD8: 25 1C     AND ram_001C_t12
C - - - - - 0x01EBEA 07:EBDA: 85 1C     STA ram_001C_t13
C - - - - - 0x01EBEC 07:EBDC: B9 7B EB  LDA tbl_EB7B,Y
C - - - - - 0x01EBEF 07:EBDF: 25 1D     AND ram_001D_t12
C - - - - - 0x01EBF1 07:EBE1: 05 1C     ORA ram_001C_t13
C - - - - - 0x01EBF3 07:EBE3: 4C F0 EB  JMP loc_EBF0



loc_EBE6:
; in
    ; Y = 
C D 3 - - - 0x01EBF6 07:EBE6: 84 0D     STY ram_000D_t09_data_index
C - - - - - 0x01EBF8 07:EBE8: B1 00     LDA (ram_0000_t0E_meta_indexes_data),Y
C - - - - - 0x01EBFA 07:EBEA: 85 13     STA ram_0013_t06_data_index
loc_EBEC:
C D 3 - - - 0x01EBFC 07:EBEC: A4 13     LDY ram_0013_t06_data_index
C - - - - - 0x01EBFE 07:EBEE: B1 18     LDA (ram_0018_t02_nmt_attr_data),Y
bra_EBF0:
loc_EBF0:
C D 3 - - - 0x01EC00 07:EBF0: A4 0A     LDY ram_000A_t18_buffer_index
C - - - - - 0x01EC02 07:EBF2: 99 00 05  STA ram_0500_nmt_attr_buffer,Y
C - - - - - 0x01EC05 07:EBF5: A4 06     LDY ram_0006_t03
C - - - - - 0x01EC07 07:EBF7: C0 20     CPY #$20
C - - - - - 0x01EC09 07:EBF9: D0 03     BNE bra_EBFE
C - - - - - 0x01EC0B 07:EBFB: 8D FF 03  STA ram_03FF
bra_EBFE:
C - - - - - 0x01EC0E 07:EBFE: A5 17     LDA ram_0017_t05
C - - - - - 0x01EC10 07:EC00: 29 03     AND #$03
C - - - - - 0x01EC12 07:EC02: A8        TAY
C - - - - - 0x01EC13 07:EC03: 88        DEY
C - - - - - 0x01EC14 07:EC04: D0 0F     BNE bra_EC15
C - - - - - 0x01EC16 07:EC06: A5 1F     LDA ram_001F_t15
C - - - - - 0x01EC18 07:EC08: 29 F8     AND #$F8
C - - - - - 0x01EC1A 07:EC0A: 05 0D     ORA ram_000D_t10
C - - - - - 0x01EC1C 07:EC0C: A8        TAY
C - - - - - 0x01EC1D 07:EC0D: A5 13     LDA ram_0013_t06_data_index
C - - - - - 0x01EC1F 07:EC0F: 99 00 04  STA ram_0400,Y
C - - - - - 0x01EC22 07:EC12: 4C 26 EC  JMP loc_EC26
bra_EC15:
loc_EC15:
C D 3 - - - 0x01EC25 07:EC15: A5 1F     LDA ram_001F_t15
C - - - - - 0x01EC27 07:EC17: 29 8F     AND #$8F
C - - - - - 0x01EC29 07:EC19: 85 16     STA ram_0016_t07
C - - - - - 0x01EC2B 07:EC1B: A5 0D     LDA ram_000D_t09_data_index
C - - - - - 0x01EC2D 07:EC1D: 0A        ASL
C - - - - - 0x01EC2E 07:EC1E: 05 16     ORA ram_0016_t07
C - - - - - 0x01EC30 07:EC20: A8        TAY
C - - - - - 0x01EC31 07:EC21: A5 13     LDA ram_0013_t06_data_index
C - - - - - 0x01EC33 07:EC23: 99 00 04  STA ram_0400,Y
loc_EC26:
C D 3 - - - 0x01EC36 07:EC26: E6 0A     INC ram_000A_t18_buffer_index
C - - - - - 0x01EC38 07:EC28: A9 00     LDA #$00
; / 10
C - - - - - 0x01EC3A 07:EC2A: 46 13     LSR ram_0013_t06_data_index
C - - - - - 0x01EC3C 07:EC2C: 6A        ROR
C - - - - - 0x01EC3D 07:EC2D: 46 13     LSR ram_0013_t06_data_index
C - - - - - 0x01EC3F 07:EC2F: 6A        ROR
C - - - - - 0x01EC40 07:EC30: 46 13     LSR ram_0013_t06_data_index
C - - - - - 0x01EC42 07:EC32: 6A        ROR
C - - - - - 0x01EC43 07:EC33: 46 13     LSR ram_0013_t06_data_index
C - - - - - 0x01EC45 07:EC35: 6A        ROR
C - - - - - 0x01EC46 07:EC36: 85 12     STA ram_0012_t11
C - - - - - 0x01EC48 07:EC38: A5 08     LDA ram_0008_t17_metatiles_ptr
C - - - - - 0x01EC4A 07:EC3A: 18        CLC
C - - - - - 0x01EC4B 07:EC3B: 65 12     ADC ram_0012_t11
C - - - - - 0x01EC4D 07:EC3D: 85 12     STA ram_0012_t02_metatiles_data
C - - - - - 0x01EC4F 07:EC3F: A5 09     LDA ram_0008_t17_metatiles_ptr + $01
C - - - - - 0x01EC51 07:EC41: 65 13     ADC ram_0013_t06_data_index
C - - - - - 0x01EC53 07:EC43: 85 13     STA ram_0012_t02_metatiles_data + $01
C - - - - - 0x01EC55 07:EC45: A5 17     LDA ram_0017_t05
C - - - - - 0x01EC57 07:EC47: 29 03     AND #$03
C - - - - - 0x01EC59 07:EC49: A8        TAY
C - - - - - 0x01EC5A 07:EC4A: D0 03     BNE bra_EC4F
- - - - - - 0x01EC5C 07:EC4C: 4C 07 ED  JMP loc_ED07
bra_EC4F:
sub_EC4F:
C - - - - - 0x01EC5F 07:EC4F: 88        DEY
C - - - - - 0x01EC60 07:EC50: F0 4F     BEQ bra_ECA1
C - - - - - 0x01EC62 07:EC52: A5 10     LDA ram_0010_t13
C - - - - - 0x01EC64 07:EC54: 18        CLC
C - - - - - 0x01EC65 07:EC55: 65 12     ADC ram_0012_t02_metatiles_data
C - - - - - 0x01EC67 07:EC57: 85 12     STA ram_0012_t02_metatiles_data
C - - - - - 0x01EC69 07:EC59: A9 00     LDA #$00
C - - - - - 0x01EC6B 07:EC5B: 65 13     ADC ram_0012_t02_metatiles_data + $01
C - - - - - 0x01EC6D 07:EC5D: 85 13     STA ram_0012_t02_metatiles_data + $01
C - - - - - 0x01EC6F 07:EC5F: A5 0D     LDA ram_000D_t09_data_index
C - - - - - 0x01EC71 07:EC61: C9 38     CMP #$38
C - - - - - 0x01EC73 07:EC63: 90 09     BCC bra_EC6E
C - - - - - 0x01EC75 07:EC65: A4 11     LDY ram_0011_t11
C - - - - - 0x01EC77 07:EC67: F0 16     BEQ bra_EC7F_00
C - - - - - 0x01EC79 07:EC69: C6 11     DEC ram_0011_t11
C - - - - - 0x01EC7B 07:EC6B: F0 17     BEQ bra_EC84_01
; if 02 or 03
- - - - - - 0x01EC7D 07:EC6D: 60        RTS
bra_EC6E:
C - - - - - 0x01EC7E 07:EC6E: A4 11     LDY ram_0011_t11
C - - - - - 0x01EC80 07:EC70: F0 17     BEQ bra_EC89_00
C - - - - - 0x01EC82 07:EC72: C6 11     DEC ram_0011_t11
C - - - - - 0x01EC84 07:EC74: F0 18     BEQ bra_EC8E_01
C - - - - - 0x01EC86 07:EC76: C6 11     DEC ram_0011_t11
C - - - - - 0x01EC88 07:EC78: F0 1B     BEQ bra_EC95_02
; bzk optimize, it will always be 03 here, no need to check
C - - - - - 0x01EC8A 07:EC7A: C6 11     DEC ram_0011_t11
C - - - - - 0x01EC8C 07:EC7C: F0 1E     BEQ bra_EC9C_03


; bzk garbage
- - - - - - 0x01EC8E 07:EC7E: 60        RTS



bra_EC7F_00:
C - - - - - 0x01EC8F 07:EC7F: 20 E7 EC  JSR sub_ECE7
C - - - - - 0x01EC92 07:EC82: F0 6B     BEQ bra_ECEF_RTS
bra_EC84_01:
C - - - - - 0x01EC94 07:EC84: A0 04     LDY #$04
C - - - - - 0x01EC96 07:EC86: 4C E7 EC  JMP loc_ECE7



bra_EC89_00:
C - - - - - 0x01EC99 07:EC89: 20 E7 EC  JSR sub_ECE7
C - - - - - 0x01EC9C 07:EC8C: F0 61     BEQ bra_ECEF_RTS
bra_EC8E_01:
C - - - - - 0x01EC9E 07:EC8E: A0 04     LDY #$04
C - - - - - 0x01ECA0 07:EC90: 20 E7 EC  JSR sub_ECE7
C - - - - - 0x01ECA3 07:EC93: F0 5A     BEQ bra_ECEF_RTS
bra_EC95_02:
C - - - - - 0x01ECA5 07:EC95: A0 08     LDY #$08
C - - - - - 0x01ECA7 07:EC97: 20 E7 EC  JSR sub_ECE7
C - - - - - 0x01ECAA 07:EC9A: F0 53     BEQ bra_ECEF_RTS
bra_EC9C_03:
C - - - - - 0x01ECAC 07:EC9C: A0 0C     LDY #$0C
C - - - - - 0x01ECAE 07:EC9E: 4C E7 EC  JMP loc_ECE7



bra_ECA1:
C - - - - - 0x01ECB1 07:ECA1: A5 11     LDA ram_0011_t09
; * 04
C - - - - - 0x01ECB3 07:ECA3: 0A        ASL
C - - - - - 0x01ECB4 07:ECA4: 0A        ASL
C - - - - - 0x01ECB5 07:ECA5: 18        CLC
C - - - - - 0x01ECB6 07:ECA6: 65 12     ADC ram_0012_t02_metatiles_data
C - - - - - 0x01ECB8 07:ECA8: 85 12     STA ram_0012_t02_metatiles_data
C - - - - - 0x01ECBA 07:ECAA: A9 00     LDA #$00
C - - - - - 0x01ECBC 07:ECAC: 65 13     ADC ram_0012_t02_metatiles_data + $01
C - - - - - 0x01ECBE 07:ECAE: 85 13     STA ram_0012_t02_metatiles_data + $01
C - - - - - 0x01ECC0 07:ECB0: A4 10     LDY ram_0010_t11
C - - - - - 0x01ECC2 07:ECB2: F0 0D     BEQ bra_ECC1_00
C - - - - - 0x01ECC4 07:ECB4: C6 10     DEC ram_0010_t11
C - - - - - 0x01ECC6 07:ECB6: F0 1A     BEQ bra_ECD2_01
C - - - - - 0x01ECC8 07:ECB8: C6 10     DEC ram_0010_t11
C - - - - - 0x01ECCA 07:ECBA: F0 1E     BEQ bra_ECDA_02
; bzk optimize, it will always be 03 here, no need to check
C - - - - - 0x01ECCC 07:ECBC: C6 10     DEC ram_0010_t11
C - - - - - 0x01ECCE 07:ECBE: F0 22     BEQ bra_ECE2_03 ; jmp


; bzk garbage
- - - - - - 0x01ECD0 07:ECC0: 60        RTS



bra_ECC1_00:
C - - - - - 0x01ECD1 07:ECC1: 20 E7 EC  JSR sub_ECE7
C - - - - - 0x01ECD4 07:ECC4: F0 29     BEQ bra_ECEF_RTS
C - - - - - 0x01ECD6 07:ECC6: 20 E6 EC  JSR sub_ECE6
loc_ECC9:
C D 3 - - - 0x01ECD9 07:ECC9: F0 24     BEQ bra_ECEF_RTS
C - - - - - 0x01ECDB 07:ECCB: 20 E6 EC  JSR sub_ECE6
loc_ECCE:
C D 3 - - - 0x01ECDE 07:ECCE: F0 1F     BEQ bra_ECEF_RTS
C - - - - - 0x01ECE0 07:ECD0: D0 14     BNE bra_ECE6    ; jmp



bra_ECD2_01:
C - - - - - 0x01ECE2 07:ECD2: A0 01     LDY #$01
C - - - - - 0x01ECE4 07:ECD4: 20 E7 EC  JSR sub_ECE7
C - - - - - 0x01ECE7 07:ECD7: 4C C9 EC  JMP loc_ECC9



bra_ECDA_02:
C - - - - - 0x01ECEA 07:ECDA: A0 02     LDY #$02
C - - - - - 0x01ECEC 07:ECDC: 20 E7 EC  JSR sub_ECE7
C - - - - - 0x01ECEF 07:ECDF: 4C CE EC  JMP loc_ECCE



bra_ECE2_03:
C - - - - - 0x01ECF2 07:ECE2: A0 03     LDY #$03
C - - - - - 0x01ECF4 07:ECE4: D0 01     BNE bra_ECE7    ; jmp



bra_ECE6:
sub_ECE6:
C - - - - - 0x01ECF6 07:ECE6: C8        INY
bra_ECE7:
sub_ECE7:
loc_ECE7:
; in
    ; Y = data index
; out
    ; Z
        ; 0 = 
        ; 1 = 
C D 3 - - - 0x01ECF7 07:ECE7: B1 12     LDA (ram_0012_t02_metatiles_data),Y
C - - - - - 0x01ECF9 07:ECE9: 9D 00 01  STA ram_ppu_buffer_1,X
C - - - - - 0x01ECFC 07:ECEC: E8        INX
C - - - - - 0x01ECFD 07:ECED: C6 06     DEC ram_0006_t03
bra_ECEF_RTS:
C - - - - - 0x01ECFF 07:ECEF: 60        RTS



ofs_002_0x01ED00_04:
; con_DA9D_04
C - - J - - 0x01ED00 07:ECF0: AD 56 03  LDA ram_0356_flag
C - - - - - 0x01ED03 07:ECF3: F0 0C     BEQ bra_ED01
C - - - - - 0x01ED05 07:ECF5: A5 39     LDA ram_buffer_index_2
C - - - - - 0x01ED07 07:ECF7: C9 20     CMP #$20
C - - - - - 0x01ED09 07:ECF9: 90 01     BCC bra_ECFC
bra_ECFB_RTS:
- - - - - - 0x01ED0B 07:ECFB: 60        RTS
bra_ECFC:
C - - - - - 0x01ED0C 07:ECFC: 69 60     ADC #$60
C - - - - - 0x01ED0E 07:ECFE: AA        TAX
C - - - - - 0x01ED0F 07:ECFF: D0 06     BNE bra_ED07
bra_ED01:
C - - - - - 0x01ED11 07:ED01: A6 26     LDX ram_buffer_index
C - - - - - 0x01ED13 07:ED03: C9 20     CMP #$20
C - - - - - 0x01ED15 07:ED05: B0 F4     BCS bra_ECFB_RTS
bra_ED07:
loc_ED07:
C - - - - - 0x01ED17 07:ED07: A9 00     LDA #$00
C - - - - - 0x01ED19 07:ED09: 85 10     STA ram_0010_t11
C - - - - - 0x01ED1B 07:ED0B: 85 11     STA ram_0011_t09
C - - - - - 0x01ED1D 07:ED0D: A9 10     LDA #$10
C - - - - - 0x01ED1F 07:ED0F: 85 06     STA ram_0006_t03
C - - - - - 0x01ED21 07:ED11: A9 04     LDA #$04
C - - - - - 0x01ED23 07:ED13: 85 16     STA ram_0016_t08_loop_counter
bra_ED15_loop:
C - - - - - 0x01ED25 07:ED15: A9 01     LDA #$01
C - - - - - 0x01ED27 07:ED17: 20 C9 DA  JSR sub_0x01DAD9_write_byte_to_ppu_buffer
C - - - - - 0x01ED2A 07:ED1A: A5 04     LDA ram_0004_t30_ppu_addr_lo
C - - - - - 0x01ED2C 07:ED1C: 20 C9 DA  JSR sub_0x01DAD9_write_byte_to_ppu_buffer
C - - - - - 0x01ED2F 07:ED1F: A5 05     LDA ram_0005_t09_ppu_addr_hi
C - - - - - 0x01ED31 07:ED21: 20 C9 DA  JSR sub_0x01DAD9_write_byte_to_ppu_buffer
C - - - - - 0x01ED34 07:ED24: A0 01     LDY #$01
C - - - - - 0x01ED36 07:ED26: 20 4F EC  JSR sub_EC4F
C - - - - - 0x01ED39 07:ED29: 20 4F ED  JSR sub_ED4F
C - - - - - 0x01ED3C 07:ED2C: A5 04     LDA ram_0004_t30_ppu_addr_lo
C - - - - - 0x01ED3E 07:ED2E: 18        CLC
C - - - - - 0x01ED3F 07:ED2F: 69 20     ADC #< $0020
C - - - - - 0x01ED41 07:ED31: 85 04     STA ram_0004_t30_ppu_addr_lo
C - - - - - 0x01ED43 07:ED33: A5 05     LDA ram_0005_t09_ppu_addr_hi
C - - - - - 0x01ED45 07:ED35: 69 00     ADC #> $0020
C - - - - - 0x01ED47 07:ED37: 85 05     STA ram_0005_t09_ppu_addr_hi
C - - - - - 0x01ED49 07:ED39: 29 03     AND #$03
C - - - - - 0x01ED4B 07:ED3B: C9 03     CMP #$03
C - - - - - 0x01ED4D 07:ED3D: D0 07     BNE bra_ED46
C - - - - - 0x01ED4F 07:ED3F: A5 04     LDA ram_0004_t30_ppu_addr_lo
C - - - - - 0x01ED51 07:ED41: C9 C0     CMP #$C0
C - - - - - 0x01ED53 07:ED43: 90 01     BCC bra_ED46
C - - - - - 0x01ED55 07:ED45: 60        RTS
bra_ED46:
C - - - - - 0x01ED56 07:ED46: A9 01     LDA #$01
C - - - - - 0x01ED58 07:ED48: 85 11     STA ram_0011_t09
C - - - - - 0x01ED5A 07:ED4A: C6 16     DEC ram_0016_t08_loop_counter
C - - - - - 0x01ED5C 07:ED4C: D0 C7     BNE bra_ED15_loop
C - - - - - 0x01ED5E 07:ED4E: 60        RTS



sub_ED4F:
C - - - - - 0x01ED5F 07:ED4F: AD 56 03  LDA ram_0356_flag
C - - - - - 0x01ED62 07:ED52: D0 03     BNE bra_ED57
C - - - - - 0x01ED64 07:ED54: 4C C1 DA  JMP loc_0x01DAD1_close_ppu_buffer
bra_ED57:
C - - - - - 0x01ED67 07:ED57: A9 FF     LDA #$FF
C - - - - - 0x01ED69 07:ED59: 9D 00 01  STA ram_ppu_buffer_1,X
C - - - - - 0x01ED6C 07:ED5C: E8        INX
C - - - - - 0x01ED6D 07:ED5D: 8A        TXA
C - - - - - 0x01ED6E 07:ED5E: 38        SEC
C - - - - - 0x01ED6F 07:ED5F: E9 60     SBC #$60
C - - - - - 0x01ED71 07:ED61: 85 39     STA ram_buffer_index_2
C - - - - - 0x01ED73 07:ED63: 60        RTS



sub_ED64:
C - - - - - 0x01ED74 07:ED64: A5 C2     LDA ram_00C2
C - - - - - 0x01ED76 07:ED66: F0 41     BEQ bra_EDA9
C - - - - - 0x01ED78 07:ED68: A9 00     LDA #$00
C - - - - - 0x01ED7A 07:ED6A: 85 12     STA ram_0012_t12
C - - - - - 0x01ED7C 07:ED6C: A5 0D     LDA ram_000D_t10
C - - - - - 0x01ED7E 07:ED6E: C9 04     CMP #$04
C - - - - - 0x01ED80 07:ED70: 90 0E     BCC bra_ED80
C - - - - - 0x01ED84 07:ED74: 85 12     DEC ram_0012_t12    ; -> FF
C - - - - - 0x01ED86 07:ED76: D0 08     BNE bra_ED80    ; jmp



sub_ED78:
; out
    ; C (not checked via this JSR)
        ; 0 = 
        ; 1 = 
C - - - - - 0x01ED88 07:ED78: A5 C2     LDA ram_00C2
C - - - - - 0x01ED8A 07:ED7A: F0 2D     BEQ bra_EDA9
C - - - - - 0x01ED8C 07:ED7C: A5 03     LDA ram_0003_t04_lo
C - - - - - 0x01ED8E 07:ED7E: 85 12     STA ram_0012_t12
bra_ED80:
C - - - - - 0x01ED90 07:ED80: A5 C2     LDA ram_00C2
C - - - - - 0x01ED92 07:ED82: 0A        ASL
C - - - - - 0x01ED93 07:ED83: A8        TAY
C - - - - - 0x01ED94 07:ED84: A5 12     LDA ram_0012_t12
C - - - - - 0x01ED96 07:ED86: C9 80     CMP #$80
C - - - - - 0x01ED98 07:ED88: 90 04     BCC bra_ED8E
C - - - - - 0x01ED9A 07:ED8A: 98        TYA
C - - - - - 0x01ED9B 07:ED8B: 09 01     ORA #$01
C - - - - - 0x01ED9D 07:ED8D: A8        TAY
bra_ED8E:
C - - - - - 0x01ED9E 07:ED8E: 88        DEY
C - - - - - 0x01ED9F 07:ED8F: B9 AE F5  LDA tbl_F5AE,Y
C - - - - - 0x01EDA2 07:ED92: 25 C1     AND ram_00C1
C - - - - - 0x01EDA4 07:ED94: F0 13     BEQ bra_EDA9
sub_ED96:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x01EDA6 07:ED96: A5 13     LDA ram_0013_t06_data_index
C - - - - - 0x01EDA8 07:ED98: 38        SEC
C - - - - - 0x01EDA9 07:ED99: E9 E4     SBC #$E4
C - - - - - 0x01EDAB 07:ED9B: 90 0C     BCC bra_EDA9
C - - - - - 0x01EDAD 07:ED9D: C9 0A     CMP #$0A
C - - - - - 0x01EDAF 07:ED9F: B0 08     BCS bra_EDA9
C - - - - - 0x01EDB1 07:EDA1: A8        TAY
C - - - - - 0x01EDB2 07:EDA2: B9 AB ED  LDA tbl_EDAB,Y
C - - - - - 0x01EDB5 07:EDA5: 85 13     STA ram_0013_t06_data_index
C - - - - - 0x01EDB7 07:EDA7: 38        SEC
C - - - - - 0x01EDB8 07:EDA8: 60        RTS
bra_EDA9:
C - - - - - 0x01EDB9 07:EDA9: 18        CLC
C - - - - - 0x01EDBA 07:EDAA: 60        RTS



tbl_EDAB:
- D 3 - - - 0x01EDBB 07:EDAB: F7        .byte $F7   ; E4
- - - - - - 0x01EDBC 07:EDAC: F8        .byte $F8   ; E5
- D 3 - - - 0x01EDBD 07:EDAD: F9        .byte $F9   ; E6
- D 3 - - - 0x01EDBE 07:EDAE: F9        .byte $F9   ; E7
- - - - - - 0x01EDBF 07:EDAF: FA        .byte $FA   ; E8
- D 3 - - - 0x01EDC0 07:EDB0: FA        .byte $FA   ; E9
- D 3 - - - 0x01EDC1 07:EDB1: FB        .byte $FB   ; EA
- D 3 - - - 0x01EDC2 07:EDB2: FC        .byte $FC   ; EB
- D 3 - - - 0x01EDC3 07:EDB3: FD        .byte $FD   ; EC
- D 3 - - - 0x01EDC4 07:EDB4: FE        .byte $FE   ; ED



sub_EDB5_prepare_metatiles_pointers:
; out
    ; ram_0008_t17_metatiles_ptr
C - - - - - 0x01EDC5 07:EDB5: A4 88     LDY ram_x2_stage
C - - - - - 0x01EDC7 07:EDB7: B9 57 DA  LDA tbl_0x01DA67_metatiles,Y
C - - - - - 0x01EDCA 07:EDBA: 85 08     STA ram_0008_t17_metatiles_ptr
C - - - - - 0x01EDCC 07:EDBC: B9 58 DA  LDA tbl_0x01DA67_metatiles + $01,Y
C - - - - - 0x01EDCF 07:EDBF: 85 09     STA ram_0008_t17_metatiles_ptr + $01
C - - - - - 0x01EDD1 07:EDC1: 60        RTS



loc_0x01EDD2:
C D 3 - - - 0x01EDD2 07:EDC2: A5 75     LDA ram_stage
C - - - - - 0x01EDD4 07:EDC4: D0 2D     BNE bra_EDF3
C - - - - - 0x01EDD6 07:EDC6: A5 61     LDA ram_0061_lo
C - - - - - 0x01EDD8 07:EDC8: 85 12     STA ram_0012_t13
C - - - - - 0x01EDDA 07:EDCA: A5 60     LDA ram_0060_hi
C - - - - - 0x01EDDC 07:EDCC: 85 17     STA ram_0017_t06
C - - - - - 0x01EDDE 07:EDCE: A5 12     LDA ram_0012_t13
; / 20
C - - - - - 0x01EDE0 07:EDD0: 4A        LSR
C - - - - - 0x01EDE1 07:EDD1: 4A        LSR
C - - - - - 0x01EDE2 07:EDD2: 4A        LSR
; bzk optimize, useless STA
C - - - - - 0x01EDE3 07:EDD3: 85 12     STA ram_0012_t18_useless
C - - - - - 0x01EDE5 07:EDD5: 4A        LSR
C - - - - - 0x01EDE6 07:EDD6: 4A        LSR
C - - - - - 0x01EDE7 07:EDD7: 85 10     STA ram_0010_t16
C - - - - - 0x01EDE9 07:EDD9: A5 17     LDA ram_0017_t06
C - - - - - 0x01EDEB 07:EDDB: 29 01     AND #$01
C - - - - - 0x01EDED 07:EDDD: F0 02     BEQ bra_EDE1
C - - - - - 0x01EDEF 07:EDDF: A9 08     LDA #$08
bra_EDE1:
C - - - - - 0x01EDF1 07:EDE1: 05 10     ORA ram_0010_t16
; bzk optimize, useless code up to 0x01EDFB
C - - - - - 0x01EDF3 07:EDE3: 85 10     STA ram_0010_t21_useless
C - - - - - 0x01EDF5 07:EDE5: A9 00     LDA #$00
C - - - - - 0x01EDF7 07:EDE7: 85 13     STA ram_0013_t14_useless
C - - - - - 0x01EDF9 07:EDE9: 29 F0     AND #$F0
C - - - - - 0x01EDFB 07:EDEB: 05 10     ORA ram_0010_t21_useless
C - - - - - 0x01EDFD 07:EDED: 20 50 EE  JSR sub_EE50
C - - - - - 0x01EE00 07:EDF0: 4C 33 EE  JMP loc_EE33
bra_EDF3:
C - - - - - 0x01EE03 07:EDF3: A5 C5     LDA ram_00C5_flag
C - - - - - 0x01EE05 07:EDF5: F0 23     BEQ bra_EE1A
C - - - - - 0x01EE07 07:EDF7: A5 A1     LDA ram_00A1_lo
C - - - - - 0x01EE09 07:EDF9: 85 12     STA ram_0012_t14
C - - - - - 0x01EE0B 07:EDFB: A5 A0     LDA ram_00A0_hi
C - - - - - 0x01EE0D 07:EDFD: 85 17     STA ram_0017_t07
C - - - - - 0x01EE0F 07:EDFF: A5 A4     LDA ram_00A4_lo
C - - - - - 0x01EE11 07:EE01: 85 13     STA ram_0013_t11
C - - - - - 0x01EE13 07:EE03: A5 A3     LDA ram_00A3_hi
C - - - - - 0x01EE15 07:EE05: 85 11     STA ram_0011_t14
C - - - - - 0x01EE17 07:EE07: 20 CD F0  JSR sub_F0CD
C - - - - - 0x01EE1A 07:EE0A: 20 ED F0  JSR sub_F0ED
C - - - - - 0x01EE1D 07:EE0D: A5 13     LDA ram_0013_t12
C - - - - - 0x01EE1F 07:EE0F: 8D 52 03  STA ram_0352
C - - - - - 0x01EE22 07:EE12: 20 39 EE  JSR sub_EE39
C - - - - - 0x01EE25 07:EE15: A4 02     LDY ram_0002_t28
C - - - - - 0x01EE27 07:EE17: 8C 51 03  STY ram_0351
bra_EE1A:
; bzk optimize, useless LDA + STA
C - - - - - 0x01EE2A 07:EE1A: A5 64     LDA ram_0064_lo
C - - - - - 0x01EE2C 07:EE1C: 85 13     STA ram_0013_t15_useless
; bzk optimize, useless LDA + STA
C - - - - - 0x01EE2E 07:EE1E: A5 63     LDA ram_0063_hi
C - - - - - 0x01EE30 07:EE20: 85 11     STA ram_0011_t18_useless
C - - - - - 0x01EE32 07:EE22: A5 61     LDA ram_0061_lo
C - - - - - 0x01EE34 07:EE24: 85 12     STA ram_0012_t14
C - - - - - 0x01EE36 07:EE26: A5 60     LDA ram_0060_hi
C - - - - - 0x01EE38 07:EE28: 85 17     STA ram_0017_t07
C - - - - - 0x01EE3A 07:EE2A: 20 CD F0  JSR sub_F0CD
C - - - - - 0x01EE3D 07:EE2D: 20 1A F1  JSR sub_F11A
C - - - - - 0x01EE40 07:EE30: 20 39 EE  JSR sub_EE39
loc_EE33:
C D 3 - - - 0x01EE43 07:EE33: A4 02     LDY ram_0002_t28
C - - - - - 0x01EE45 07:EE35: 8C 50 03  STY ram_0350
C - - - - - 0x01EE48 07:EE38: 60        RTS



sub_EE39:
; in
    ; ram_0010_t18
C - - - - - 0x01EE49 07:EE39: A5 13     LDA ram_0013_t12
C - - - - - 0x01EE4B 07:EE3B: 4A        LSR
; bzk optimize, useless STA
C - - - - - 0x01EE4C 07:EE3C: 85 13     STA ram_0013_t16_useless
C - - - - - 0x01EE4E 07:EE3E: 29 70     AND #$70
C - - - - - 0x01EE50 07:EE40: 85 11     STA ram_0011_t15
C - - - - - 0x01EE52 07:EE42: A5 17     LDA ram_0017_t09_useless
; bzk optimize, useless STA
C - - - - - 0x01EE54 07:EE44: 85 1C     STA ram_001C_t19_useless
C - - - - - 0x01EE56 07:EE46: 29 01     AND #$01
C - - - - - 0x01EE58 07:EE48: F0 02     BEQ bra_EE4C
C - - - - - 0x01EE5A 07:EE4A: A9 80     LDA #$80
bra_EE4C:
C - - - - - 0x01EE5C 07:EE4C: 05 11     ORA ram_0011_t15
C - - - - - 0x01EE5E 07:EE4E: 05 10     ORA ram_0010_t18
sub_EE50:
C - - - - - 0x01EE60 07:EE50: A8        TAY
C - - - - - 0x01EE61 07:EE51: 84 02     STY ram_0002_t28
C - - - - - 0x01EE63 07:EE53: 60        RTS



ofs_006_EE54_00:
; con_F3D6_00
C - - J - - 0x01EE64 07:EE54: A5 00     LDA ram_0000_t50_pos_X
C - - - - - 0x01EE66 07:EE56: 85 1C     STA ram_001C_t14_pos_X
C - - - - - 0x01EE68 07:EE58: A5 C5     LDA ram_00C5_flag
C - - - - - 0x01EE6A 07:EE5A: F0 16     BEQ bra_EE72
C - - - - - 0x01EE6C 07:EE5C: C5 01     CMP ram_0001_t18_pos_Y
C - - - - - 0x01EE6E 07:EE5E: 90 12     BCC bra_EE72
C - - - - - 0x01EE70 07:EE60: A5 A1     LDA ram_00A1_lo
C - - - - - 0x01EE72 07:EE62: 85 12     STA ram_0012_t15
C - - - - - 0x01EE74 07:EE64: AD 51 03  LDA ram_0351
C - - - - - 0x01EE77 07:EE67: 85 14     STA ram_0014_t08
C - - - - - 0x01EE79 07:EE69: 20 AD F0  JSR sub_F0AD
C - - - - - 0x01EE7C 07:EE6C: 20 66 F0  JSR sub_F066
C - - - - - 0x01EE7F 07:EE6F: 4C A8 EE  JMP loc_EEA8
bra_EE72:
C - - - - - 0x01EE82 07:EE72: A9 00     LDA #$00
C - - - - - 0x01EE84 07:EE74: 85 02     STA ram_0002_t58
C - - - - - 0x01EE86 07:EE76: A5 76     LDA ram_irq_handler
C - - - - - 0x01EE88 07:EE78: C9 04     CMP #con_irq_04
C - - - - - 0x01EE8A 07:EE7A: F0 19     BEQ bra_EE95
C - - - - - 0x01EE8C 07:EE7C: C9 05     CMP #con_irq_05
C - - - - - 0x01EE8E 07:EE7E: D0 22     BNE bra_EEA2
C - - - - - 0x01EE90 07:EE80: E0 02     CPX #$02
C - - - - - 0x01EE92 07:EE82: B0 11     BCS bra_EE95
C - - - - - 0x01EE94 07:EE84: A5 01     LDA ram_0001_t18_pos_Y
C - - - - - 0x01EE96 07:EE86: C9 20     CMP #$20
C - - - - - 0x01EE98 07:EE88: B0 0B     BCS bra_EE95
C - - - - - 0x01EE9A 07:EE8A: 20 A4 F0  JSR sub_F0A4
C - - - - - 0x01EE9D 07:EE8D: A9 01     LDA #$01
C - - - - - 0x01EE9F 07:EE8F: 20 68 F0  JSR sub_F068
C - - - - - 0x01EEA2 07:EE92: 4C A8 EE  JMP loc_EEA8
bra_EE95:
C - - - - - 0x01EEA5 07:EE95: A5 01     LDA ram_0001_t18_pos_Y
C - - - - - 0x01EEA7 07:EE97: 18        CLC
C - - - - - 0x01EEA8 07:EE98: 65 AF     ADC ram_00AF_lo
C - - - - - 0x01EEAA 07:EE9A: 69 07     ADC #$07
C - - - - - 0x01EEAC 07:EE9C: 85 01     STA ram_0001_t18_pos_Y
C - - - - - 0x01EEAE 07:EE9E: 90 02     BCC bra_EEA2
; if overflow
C - - - - - 0x01EEB0 07:EEA0: E6 02     INC ram_0002_t58
bra_EEA2:
C - - - - - 0x01EEB2 07:EEA2: 20 A4 F0  JSR sub_F0A4
C - - - - - 0x01EEB5 07:EEA5: 20 98 F0  JSR sub_F098
loc_EEA8:
C D 3 - - - 0x01EEB8 07:EEA8: A5 02     LDA ram_0002_t54
C - - - - - 0x01EEBA 07:EEAA: 85 1D     STA ram_001D_t13
C - - - - - 0x01EEBC 07:EEAC: A5 03     LDA ram_0003_t31
C - - - - - 0x01EEBE 07:EEAE: 38        SEC
C - - - - - 0x01EEBF 07:EEAF: E5 05     SBC ram_0005_t16
C - - - - - 0x01EEC1 07:EEB1: 85 03     STA ram_0003_t35
C - - - - - 0x01EEC3 07:EEB3: B0 13     BCS bra_EEC8
C - - - - - 0x01EEC5 07:EEB5: A5 C5     LDA ram_00C5_flag
C - - - - - 0x01EEC7 07:EEB7: F0 0D     BEQ bra_EEC6
C - - - - - 0x01EEC9 07:EEB9: A5 A6     LDA ram_00A6
C - - - - - 0x01EECB 07:EEBB: C9 02     CMP #$02
C - - - - - 0x01EECD 07:EEBD: B0 07     BCS bra_EEC6
C - - - - - 0x01EECF 07:EEBF: A5 03     LDA ram_0003_t35
C - - - - - 0x01EED1 07:EEC1: 38        SEC
C - - - - - 0x01EED2 07:EEC2: E9 08     SBC #$08
C - - - - - 0x01EED4 07:EEC4: 85 03     STA ram_0003_t35
bra_EEC6:
C - - - - - 0x01EED6 07:EEC6: C6 02     DEC ram_0002_t54
bra_EEC8:
C - - - - - 0x01EED8 07:EEC8: A5 03     LDA ram_0003_t35
C - - - - - 0x01EEDA 07:EECA: 4A        LSR
C - - - - - 0x01EEDB 07:EECB: 85 13     STA ram_0013_t10
C - - - - - 0x01EEDD 07:EECD: 29 F0     AND #$F0
C - - - - - 0x01EEDF 07:EECF: 05 04     ORA ram_0004_t31
C - - - - - 0x01EEE1 07:EED1: 85 04     STA ram_0004_t32
C - - - - - 0x01EEE3 07:EED3: A5 14     LDA ram_0014_t08
C - - - - - 0x01EEE5 07:EED5: 29 F0     AND #$F0
C - - - - - 0x01EEE7 07:EED7: 18        CLC
C - - - - - 0x01EEE8 07:EED8: 65 04     ADC ram_0004_t32
C - - - - - 0x01EEEA 07:EEDA: 85 04     STA ram_0004_t33
C - - - - - 0x01EEEC 07:EEDC: A5 02     LDA ram_0002_t54
C - - - - - 0x01EEEE 07:EEDE: 29 01     AND #$01
C - - - - - 0x01EEF0 07:EEE0: F0 06     BEQ bra_EEE8
C - - - - - 0x01EEF2 07:EEE2: A5 04     LDA ram_0004_t33
C - - - - - 0x01EEF4 07:EEE4: 49 80     EOR #$80
C - - - - - 0x01EEF6 07:EEE6: 85 04     STA ram_0004_t33
bra_EEE8:
C - - - - - 0x01EEF8 07:EEE8: A4 04     LDY ram_0004_t33
C - - - - - 0x01EEFA 07:EEEA: 84 02     STY ram_0002_t18_array_index
ofs_006_EEEC_0F:
; con_F3D6_0F
C - - - - - 0x01EEFC 07:EEEC: A4 02     LDY ram_0002_t18_array_index
C - - - - - 0x01EEFE 07:EEEE: B9 00 04  LDA ram_0400,Y
C - - - - - 0x01EF01 07:EEF1: 85 00     STA ram_0000_t42
C - - - - - 0x01EF03 07:EEF3: A4 88     LDY ram_x2_stage
C - - - - - 0x01EF05 07:EEF5: B9 57 DA  LDA tbl_0x01DA67_metatiles,Y
C - - - - - 0x01EF08 07:EEF8: 85 10     STA ram_0010_t19_metatiles_ptr
C - - - - - 0x01EF0A 07:EEFA: B9 58 DA  LDA tbl_0x01DA67_metatiles + $01,Y
C - - - - - 0x01EF0D 07:EEFD: 85 11     STA ram_0010_t19_metatiles_ptr + $01
C - - - - - 0x01EF0F 07:EEFF: A9 00     LDA #$00
C - - - - - 0x01EF11 07:EF01: 85 14     STA ram_0014_t09
C - - - - - 0x01EF13 07:EF03: A5 00     LDA ram_0000_t42
C - - - - - 0x01EF15 07:EF05: A0 03     LDY #$03
bra_EF07_loop:
C - - - - - 0x01EF17 07:EF07: 0A        ASL
C - - - - - 0x01EF18 07:EF08: 26 14     ROL ram_0014_t09
C - - - - - 0x01EF1A 07:EF0A: 88        DEY
C - - - - - 0x01EF1B 07:EF0B: 10 FA     BPL bra_EF07_loop
C - - - - - 0x01EF1D 07:EF0D: 18        CLC
C - - - - - 0x01EF1E 07:EF0E: 65 10     ADC ram_0010_t19_metatiles_ptr
C - - - - - 0x01EF20 07:EF10: 85 10     STA ram_0010_t03_metatiles_data
C - - - - - 0x01EF22 07:EF12: A5 11     LDA ram_0010_t19_metatiles_ptr + $01
C - - - - - 0x01EF24 07:EF14: 65 14     ADC ram_0014_t08
C - - - - - 0x01EF26 07:EF16: 85 11     STA ram_0010_t03_metatiles_data + $01
C - - - - - 0x01EF28 07:EF18: A5 12     LDA ram_0012_t09
C - - - - - 0x01EF2A 07:EF1A: 29 03     AND #$03
C - - - - - 0x01EF2C 07:EF1C: 85 12     STA ram_0012_t09
C - - - - - 0x01EF2E 07:EF1E: A5 13     LDA ram_0013_t10
C - - - - - 0x01EF30 07:EF20: 29 0C     AND #$0C
C - - - - - 0x01EF32 07:EF22: 05 12     ORA ram_0012_t09
C - - - - - 0x01EF34 07:EF24: A8        TAY
; bzk optimize, useless STY
C - - - - - 0x01EF35 07:EF25: 84 0D     STY ram_000D_t13_useless
C - - - - - 0x01EF37 07:EF27: B1 10     LDA (ram_0010_t03_metatiles_data),Y
C - - - - - 0x01EF39 07:EF29: 85 16     STA ram_0016_t04
C - - - - - 0x01EF3B 07:EF2B: A5 86     LDA ram_0086_table_index
; * 08
C - - - - - 0x01EF3D 07:EF2D: 0A        ASL
C - - - - - 0x01EF3E 07:EF2E: 0A        ASL
C - - - - - 0x01EF3F 07:EF2F: 0A        ASL
C - - - - - 0x01EF40 07:EF30: 85 01     STA ram_0001_t08_table_index
C - - - - - 0x01EF42 07:EF32: A8        TAY
C - - - - - 0x01EF43 07:EF33: A5 16     LDA ram_0016_t04
C - - - - - 0x01EF45 07:EF35: D9 8E EF  CMP tbl_EF8E,Y
C - - - - - 0x01EF48 07:EF38: 90 23     BCC bra_EF5D
C - - - - - 0x01EF4A 07:EF3A: E6 01     INC ram_0001_t08_table_index
C - - - - - 0x01EF4C 07:EF3C: E6 01     INC ram_0001_t08_table_index
C - - - - - 0x01EF4E 07:EF3E: D9 90 EF  CMP tbl_EF8E + $02,Y
C - - - - - 0x01EF51 07:EF41: 90 1A     BCC bra_EF5D
C - - - - - 0x01EF53 07:EF43: E6 01     INC ram_0001_t08_table_index
C - - - - - 0x01EF55 07:EF45: E6 01     INC ram_0001_t08_table_index
C - - - - - 0x01EF57 07:EF47: D9 92 EF  CMP tbl_EF8E + $04,Y
C - - - - - 0x01EF5A 07:EF4A: 90 11     BCC bra_EF5D
C - - - - - 0x01EF5C 07:EF4C: E6 01     INC ram_0001_t08_table_index
C - - - - - 0x01EF5E 07:EF4E: E6 01     INC ram_0001_t08_table_index
C - - - - - 0x01EF60 07:EF50: D9 94 EF  CMP tbl_EF8E + $06,Y
C - - - - - 0x01EF63 07:EF53: 90 08     BCC bra_EF5D
C - - - - - 0x01EF65 07:EF55: A4 86     LDY ram_0086_table_index
C - - - - - 0x01EF67 07:EF57: B9 73 EF  LDA tbl_EF73,Y
C - - - - - 0x01EF6A 07:EF5A: 85 01     STA ram_0001_t15_table_index
C - - - - - 0x01EF6C 07:EF5C: 60        RTS
bra_EF5D:
C - - - - - 0x01EF6D 07:EF5D: A4 01     LDY ram_0001_t08_table_index
C - - - - - 0x01EF6F 07:EF5F: B9 8F EF  LDA tbl_EF8E + $01,Y
C - - - - - 0x01EF72 07:EF62: 85 01     STA ram_0001_t15_table_index
C - - - - - 0x01EF74 07:EF64: A5 75     LDA ram_stage
C - - - - - 0x01EF76 07:EF66: D0 0A     BNE bra_EF72_RTS
C - - - - - 0x01EF78 07:EF68: A5 00     LDA ram_0000_t42
C - - - - - 0x01EF7A 07:EF6A: C9 2B     CMP #$2B
C - - - - - 0x01EF7C 07:EF6C: D0 04     BNE bra_EF72_RTS
C - - - - - 0x01EF7E 07:EF6E: A9 01     LDA #$01
C - - - - - 0x01EF80 07:EF70: 85 01     STA ram_0001_t15_table_index
bra_EF72_RTS:
C - - - - - 0x01EF82 07:EF72: 60        RTS



tbl_EF73:
- - - - - - 0x01EF83 07:EF73: 00        .byte $00   ; 00 
- - - - - - 0x01EF84 07:EF74: 01        .byte $01   ; 01 
- D 3 - - - 0x01EF85 07:EF75: 01        .byte $01   ; 02 
- D 3 - - - 0x01EF86 07:EF76: 01        .byte $01   ; 03 
- D 3 - - - 0x01EF87 07:EF77: 01        .byte $01   ; 04 
- D 3 - - - 0x01EF88 07:EF78: 07        .byte $07   ; 05 
- D 3 - - - 0x01EF89 07:EF79: 08        .byte $08   ; 06 
- D 3 - - - 0x01EF8A 07:EF7A: 08        .byte $08   ; 07 
- D 3 - - - 0x01EF8B 07:EF7B: 06        .byte $06   ; 08 
- - - - - - 0x01EF8C 07:EF7C: 06        .byte $06   ; 09 
- D 3 - - - 0x01EF8D 07:EF7D: 06        .byte $06   ; 0A 
- D 3 - - - 0x01EF8E 07:EF7E: 09        .byte $09   ; 0B 
- - - - - - 0x01EF8F 07:EF7F: 06        .byte $06   ; 0C 
- D 3 - - - 0x01EF90 07:EF80: 09        .byte $09   ; 0D 
- - - - - - 0x01EF91 07:EF81: 09        .byte $09   ; 0E 
- - - - - - 0x01EF92 07:EF82: 06        .byte $06   ; 0F 
- D 3 - - - 0x01EF93 07:EF83: 06        .byte $06   ; 10 
- - - - - - 0x01EF94 07:EF84: 06        .byte $06   ; 11 
- - - - - - 0x01EF95 07:EF85: 06        .byte $06   ; 12 
- D 3 - - - 0x01EF96 07:EF86: 06        .byte $06   ; 13 
- - - - - - 0x01EF97 07:EF87: 06        .byte $06   ; 14 
- - - - - - 0x01EF98 07:EF88: 06        .byte $06   ; 15 
- D 3 - - - 0x01EF99 07:EF89: 05        .byte $05   ; 16 
- D 3 - - - 0x01EF9A 07:EF8A: 05        .byte $05   ; 17 
- D 3 - - - 0x01EF9B 07:EF8B: 05        .byte $05   ; 18 
- D 3 - - - 0x01EF9C 07:EF8C: 05        .byte $05   ; 19 
- - - - - - 0x01EF9D 07:EF8D: 05        .byte $05   ; 1A 



tbl_EF8E:
; 00 
- D 3 - - - 0x01EF9E 07:EF8E: 3F        .byte $3F, $00   ; 
- D 3 - - - 0x01EFA0 07:EF90: 90        .byte $90, $01   ; 
- D 3 - - - 0x01EFA2 07:EF92: EC        .byte $EC, $00   ; 
- D 3 - - - 0x01EFA4 07:EF94: FF        .byte $FF, $01   ; 
; 01 
- D 3 - - - 0x01EFA6 07:EF96: 3F        .byte $3F, $00   ; 
- D 3 - - - 0x01EFA8 07:EF98: A2        .byte $A2, $01   ; 
- D 3 - - - 0x01EFAA 07:EF9A: F0        .byte $F0, $00   ; 
- D 3 - - - 0x01EFAC 07:EF9C: FF        .byte $FF, $01   ; 
; 02 
- D 3 - - - 0x01EFAE 07:EF9E: 3F        .byte $3F, $00   ; 
- D 3 - - - 0x01EFB0 07:EFA0: BE        .byte $BE, $01   ; 
- D 3 - - - 0x01EFB2 07:EFA2: D5        .byte $D5, $00   ; 
- D 3 - - - 0x01EFB4 07:EFA4: F1        .byte $F1, $03   ; 
; 03 
- D 3 - - - 0x01EFB6 07:EFA6: 3F        .byte $3F, $00   ; 
- D 3 - - - 0x01EFB8 07:EFA8: D1        .byte $D1, $01   ; 
- D 3 - - - 0x01EFBA 07:EFAA: E3        .byte $E3, $00   ; 
- D 3 - - - 0x01EFBC 07:EFAC: EF        .byte $EF, $04   ; 
; 04 
- D 3 - - - 0x01EFBE 07:EFAE: 3F        .byte $3F, $00   ; 
- D 3 - - - 0x01EFC0 07:EFB0: D1        .byte $D1, $01   ; 
- D 3 - - - 0x01EFC2 07:EFB2: E5        .byte $E5, $00   ; 
- D 3 - - - 0x01EFC4 07:EFB4: EB        .byte $EB, $05   ; 
; 05 
- D 3 - - - 0x01EFC6 07:EFB6: 16        .byte $16, $00   ; 
- D 3 - - - 0x01EFC8 07:EFB8: 6C        .byte $6C, $06   ; 
- D 3 - - - 0x01EFCA 07:EFBA: B1        .byte $B1, $01   ; 
- D 3 - - - 0x01EFCC 07:EFBC: F5        .byte $F5, $09   ; 
; 06 
- D 3 - - - 0x01EFCE 07:EFBE: 16        .byte $16, $00   ; 
- D 3 - - - 0x01EFD0 07:EFC0: 6C        .byte $6C, $06   ; 
- D 3 - - - 0x01EFD2 07:EFC2: C7        .byte $C7, $01   ; 
- D 3 - - - 0x01EFD4 07:EFC4: F6        .byte $F6, $09   ; 
; 07 
- D 3 - - - 0x01EFD6 07:EFC6: 16        .byte $16, $00   ; 
- D 3 - - - 0x01EFD8 07:EFC8: 6C        .byte $6C, $06   ; 
- D 3 - - - 0x01EFDA 07:EFCA: C7        .byte $C7, $01   ; 
- D 3 - - - 0x01EFDC 07:EFCC: F6        .byte $F6, $09   ; 
; 08 
- D 3 - - - 0x01EFDE 07:EFCE: 16        .byte $16, $00   ; 
- D 3 - - - 0x01EFE0 07:EFD0: 6E        .byte $6E, $06   ; 
- D 3 - - - 0x01EFE2 07:EFD2: C2        .byte $C2, $01   ; 
- D 3 - - - 0x01EFE4 07:EFD4: D9        .byte $D9, $09   ; 
; 09 
- D 3 - - - 0x01EFE6 07:EFD6: 16        .byte $16, $00   ; 
- D 3 - - - 0x01EFE8 07:EFD8: 6A        .byte $6A, $06   ; 
- D 3 - - - 0x01EFEA 07:EFDA: CE        .byte $CE, $01   ; 
- D 3 - - - 0x01EFEC 07:EFDC: FF        .byte $FF, $06   ; 
; 0A 
- D 3 - - - 0x01EFEE 07:EFDE: 04        .byte $04, $00   ; 
- D 3 - - - 0x01EFF0 07:EFE0: 19        .byte $19, $06   ; 
- D 3 - - - 0x01EFF2 07:EFE2: B0        .byte $B0, $01   ; 
- D 3 - - - 0x01EFF4 07:EFE4: C0        .byte $C0, $09   ; 
; 0B 
- D 3 - - - 0x01EFF6 07:EFE6: 84        .byte $84, $00   ; 
- D 3 - - - 0x01EFF8 07:EFE8: F1        .byte $F1, $01   ; 
- D 3 - - - 0x01EFFA 07:EFEA: F7        .byte $F7, $02   ; 
- D 3 - - - 0x01EFFC 07:EFEC: FB        .byte $FB, $06   ; 
; 0C 
- - - - - - 0x01EFFE 07:EFEE: 81        .byte $81, $00   ; 
- - - - - - 0x01F000 07:EFF0: F0        .byte $F0, $01   ; 
- - - - - - 0x01F002 07:EFF2: F1        .byte $F1, $04   ; 
- - - - - - 0x01F004 07:EFF4: F7        .byte $F7, $02   ; 
; 0D 
- D 3 - - - 0x01F006 07:EFF6: 90        .byte $90, $00   ; 
- D 3 - - - 0x01F008 07:EFF8: F1        .byte $F1, $01   ; 
- D 3 - - - 0x01F00A 07:EFFA: F7        .byte $F7, $02   ; 
- D 3 - - - 0x01F00C 07:EFFC: FB        .byte $FB, $06   ; 
; 0E 
- D 3 - - - 0x01F00E 07:EFFE: 90        .byte $90, $00   ; 
- D 3 - - - 0x01F010 07:F000: A3        .byte $A3, $01   ; 
- - - - - - 0x01F012 07:F002: FF        .byte $FF, $00   ; 
- - - - - - 0x01F014 07:F004: FF        .byte $FF, $00   ; 
; 0F 
- D 3 - - - 0x01F016 07:F006: 02        .byte $02, $00   ; 
- D 3 - - - 0x01F018 07:F008: 49        .byte $49, $06   ; 
- D 3 - - - 0x01F01A 07:F00A: D8        .byte $D8, $01   ; 
- D 3 - - - 0x01F01C 07:F00C: FF        .byte $FF, $06   ; 
; 10 
- D 3 - - - 0x01F01E 07:F00E: 02        .byte $02, $00   ; 
- D 3 - - - 0x01F020 07:F010: 49        .byte $49, $06   ; 
- D 3 - - - 0x01F022 07:F012: D3        .byte $D3, $01   ; 
- D 3 - - - 0x01F024 07:F014: F8        .byte $F8, $09   ; 
; 11 
- D 3 - - - 0x01F026 07:F016: 02        .byte $02, $00   ; 
- D 3 - - - 0x01F028 07:F018: 1A        .byte $1A, $06   ; 
- D 3 - - - 0x01F02A 07:F01A: D3        .byte $D3, $01   ; 
- D 3 - - - 0x01F02C 07:F01C: F8        .byte $F8, $09   ; 
; 12 
- D 3 - - - 0x01F02E 07:F01E: 02        .byte $02, $00   ; 
- D 3 - - - 0x01F030 07:F020: 1A        .byte $1A, $06   ; 
- D 3 - - - 0x01F032 07:F022: D3        .byte $D3, $01   ; 
- D 3 - - - 0x01F034 07:F024: F8        .byte $F8, $09   ; 
; 13 
- D 3 - - - 0x01F036 07:F026: 02        .byte $02, $00   ; 
- D 3 - - - 0x01F038 07:F028: 49        .byte $49, $06   ; 
- D 3 - - - 0x01F03A 07:F02A: E1        .byte $E1, $01   ; 
- D 3 - - - 0x01F03C 07:F02C: F8        .byte $F8, $09   ; 
; 14 
- D 3 - - - 0x01F03E 07:F02E: 02        .byte $02, $00   ; 
- D 3 - - - 0x01F040 07:F030: 13        .byte $13, $06   ; 
- D 3 - - - 0x01F042 07:F032: F8        .byte $F8, $01   ; 
- - - - - - 0x01F044 07:F034: FF        .byte $FF, $06   ; 
; 15 
- D 3 - - - 0x01F046 07:F036: 02        .byte $02, $00   ; 
- D 3 - - - 0x01F048 07:F038: 13        .byte $13, $06   ; 
- D 3 - - - 0x01F04A 07:F03A: F8        .byte $F8, $01   ; 
- - - - - - 0x01F04C 07:F03C: FF        .byte $FF, $06   ; 
; 16 
- D 3 - - - 0x01F04E 07:F03E: 45        .byte $45, $00   ; 
- D 3 - - - 0x01F050 07:F040: CE        .byte $CE, $01   ; 
- D 3 - - - 0x01F052 07:F042: F2        .byte $F2, $00   ; 
- D 3 - - - 0x01F054 07:F044: FB        .byte $FB, $02   ; 
; 17 
- D 3 - - - 0x01F056 07:F046: 45        .byte $45, $00   ; 
- D 3 - - - 0x01F058 07:F048: CB        .byte $CB, $01   ; 
- D 3 - - - 0x01F05A 07:F04A: F2        .byte $F2, $00   ; 
- D 3 - - - 0x01F05C 07:F04C: FB        .byte $FB, $02   ; 
; 18 
- D 3 - - - 0x01F05E 07:F04E: 45        .byte $45, $00   ; 
- D 3 - - - 0x01F060 07:F050: CB        .byte $CB, $01   ; 
- D 3 - - - 0x01F062 07:F052: F2        .byte $F2, $00   ; 
- D 3 - - - 0x01F064 07:F054: FB        .byte $FB, $06   ; 
; 19 
- D 3 - - - 0x01F066 07:F056: 74        .byte $74, $00   ; 
- D 3 - - - 0x01F068 07:F058: CB        .byte $CB, $01   ; 
- D 3 - - - 0x01F06A 07:F05A: F2        .byte $F2, $00   ; 
- D 3 - - - 0x01F06C 07:F05C: FB        .byte $FB, $02   ; 
; 1A 
- D 3 - - - 0x01F06E 07:F05E: 74        .byte $74, $00   ; 
- D 3 - - - 0x01F070 07:F060: 84        .byte $84, $01   ; 
- D 3 - - - 0x01F072 07:F062: FF        .byte $FF, $00   ; 
- - - - - - 0x01F074 07:F064: FF        .byte $FF, $02   ; 



sub_F066:
; out
    ; ram_0005_t16
C - - - - - 0x01F076 07:F066: A9 00     LDA #$00
sub_F068:
; in
    ; A = 
; out
    ; ram_0005_t16
C - - - - - 0x01F078 07:F068: 85 02     STA ram_0002_t58
C - - - - - 0x01F07A 07:F06A: AD 52 03  LDA ram_0352
C - - - - - 0x01F07D 07:F06D: 20 78 F0  JSR sub_F078
C - - - - - 0x01F080 07:F070: AD 52 03  LDA ram_0352
C - - - - - 0x01F083 07:F073: 29 E0     AND #$E0
C - - - - - 0x01F085 07:F075: 85 05     STA ram_0005_t16
C - - - - - 0x01F087 07:F077: 60        RTS



sub_F078:
; in
    ; A = 
    ; ram_0002_t58
    ; ram_0003_t32
; out
    ; ram_0002_t54
    ; ram_0003_t31
C - - - - - 0x01F088 07:F078: 18        CLC
C - - - - - 0x01F089 07:F079: 65 03     ADC ram_0003_t32
C - - - - - 0x01F08B 07:F07B: 85 03     STA ram_0003_t31
C - - - - - 0x01F08D 07:F07D: 90 07     BCC bra_F086
C - - - - - 0x01F08F 07:F07F: E6 02     INC ram_0002_t58
C - - - - - 0x01F091 07:F081: 18        CLC
C - - - - - 0x01F092 07:F082: 69 10     ADC #$10
C - - - - - 0x01F094 07:F084: 85 03     STA ram_0003_t31
bra_F086:
C - - - - - 0x01F096 07:F086: A5 02     LDA ram_0002_t58
C - - - - - 0x01F098 07:F088: 69 00     ADC #$00
C - - - - - 0x01F09A 07:F08A: 85 02     STA ram_0002_t54
C - - - - - 0x01F09C 07:F08C: A5 03     LDA ram_0003_t31
C - - - - - 0x01F09E 07:F08E: 38        SEC
C - - - - - 0x01F09F 07:F08F: E9 F0     SBC #$F0
C - - - - - 0x01F0A1 07:F091: 90 04     BCC bra_F097_RTS
C - - - - - 0x01F0A3 07:F093: E6 02     INC ram_0002_t54
C - - - - - 0x01F0A5 07:F095: 85 03     STA ram_0003_t31
bra_F097_RTS:
C - - - - - 0x01F0A7 07:F097: 60        RTS



sub_F098:
C - - - - - 0x01F0A8 07:F098: A5 DD     LDA ram_00DD
C - - - - - 0x01F0AA 07:F09A: 20 78 F0  JSR sub_F078
C - - - - - 0x01F0AD 07:F09D: A5 DD     LDA ram_00DD
C - - - - - 0x01F0AF 07:F09F: 29 E0     AND #$E0
C - - - - - 0x01F0B1 07:F0A1: 85 05     STA ram_0005_t16
C - - - - - 0x01F0B3 07:F0A3: 60        RTS



sub_F0A4:
C - - - - - 0x01F0B4 07:F0A4: A5 61     LDA ram_0061_lo
C - - - - - 0x01F0B6 07:F0A6: 85 12     STA ram_0012_t15
C - - - - - 0x01F0B8 07:F0A8: AD 50 03  LDA ram_0350
C - - - - - 0x01F0BB 07:F0AB: 85 14     STA ram_0014_t08
sub_F0AD:
; in
    ; ram_0012_t15
    ; ram_0014_t08
C - - - - - 0x01F0BD 07:F0AD: A5 14     LDA ram_0014_t08
C - - - - - 0x01F0BF 07:F0AF: 29 0F     AND #$0F
C - - - - - 0x01F0C1 07:F0B1: 85 04     STA ram_0004_t34
C - - - - - 0x01F0C3 07:F0B3: A5 12     LDA ram_0012_t15
C - - - - - 0x01F0C5 07:F0B5: 29 1F     AND #$1F
C - - - - - 0x01F0C7 07:F0B7: 18        CLC
C - - - - - 0x01F0C8 07:F0B8: 65 00     ADC ram_0000_t50_pos_X
C - - - - - 0x01F0CA 07:F0BA: 6A        ROR
; / 04
C - - - - - 0x01F0CB 07:F0BB: 4A        LSR
C - - - - - 0x01F0CC 07:F0BC: 4A        LSR
C - - - - - 0x01F0CD 07:F0BD: 85 12     STA ram_0012_t09
; / 04 (10)
C - - - - - 0x01F0CF 07:F0BF: 4A        LSR
C - - - - - 0x01F0D0 07:F0C0: 4A        LSR
C - - - - - 0x01F0D1 07:F0C1: 18        CLC
C - - - - - 0x01F0D2 07:F0C2: 65 04     ADC ram_0004_t34
C - - - - - 0x01F0D4 07:F0C4: 29 0F     AND #$0F
C - - - - - 0x01F0D6 07:F0C6: 85 04     STA ram_0004_t31
C - - - - - 0x01F0D8 07:F0C8: A5 01     LDA ram_0001_t18_pos_Y
C - - - - - 0x01F0DA 07:F0CA: 85 03     STA ram_0003_t32
C - - - - - 0x01F0DC 07:F0CC: 60        RTS



sub_F0CD:
; in
    ; ram_0012_t14
; out
    ; ram_0010_t18
; bzk optimize, useless LDA + STA
C - - - - - 0x01F0DD 07:F0CD: A5 12     LDA ram_0012_t14
C - - - - - 0x01F0DF 07:F0CF: 85 1E     STA ram_001E_t16_useless
; bzk optimize, useless LDA + STA
C - - - - - 0x01F0E1 07:F0D1: A5 17     LDA ram_0017_t07
C - - - - - 0x01F0E3 07:F0D3: 85 1D     STA ram_001D_t18_useless
C - - - - - 0x01F0E5 07:F0D5: A5 12     LDA ram_0012_t14
; / 20
C - - - - - 0x01F0E7 07:F0D7: 4A        LSR
C - - - - - 0x01F0E8 07:F0D8: 4A        LSR
C - - - - - 0x01F0E9 07:F0D9: 4A        LSR
; bzk optimize, useless STA
C - - - - - 0x01F0EA 07:F0DA: 85 12     STA ram_0012_t19_useless
C - - - - - 0x01F0EC 07:F0DC: 4A        LSR
C - - - - - 0x01F0ED 07:F0DD: 4A        LSR
C - - - - - 0x01F0EE 07:F0DE: 85 10     STA ram_0010_t20
C - - - - - 0x01F0F0 07:F0E0: A5 17     LDA ram_0017_t07
C - - - - - 0x01F0F2 07:F0E2: 29 01     AND #$01
C - - - - - 0x01F0F4 07:F0E4: F0 02     BEQ bra_F0E8
C - - - - - 0x01F0F6 07:F0E6: A9 08     LDA #$08
bra_F0E8:
C - - - - - 0x01F0F8 07:F0E8: 05 10     ORA ram_0010_t20
C - - - - - 0x01F0FA 07:F0EA: 85 10     STA ram_0010_t18
C - - - - - 0x01F0FC 07:F0EC: 60        RTS



sub_F0ED:
; in
    ; ram_0011_t14
C - - - - - 0x01F0FD 07:F0ED: A5 11     LDA ram_0011_t14
C - - - - - 0x01F0FF 07:F0EF: 0A        ASL
C - - - - - 0x01F100 07:F0F0: A8        TAY
C - - - - - 0x01F101 07:F0F1: B9 B6 F5  LDA tbl_F5B6,Y
C - - - - - 0x01F104 07:F0F4: 85 17     STA ram_0017_t09_useless
C - - - - - 0x01F106 07:F0F6: A5 13     LDA ram_0013_t11
C - - - - - 0x01F108 07:F0F8: 38        SEC
C - - - - - 0x01F109 07:F0F9: E9 F0     SBC #$F0
C - - - - - 0x01F10B 07:F0FB: 90 04     BCC bra_F101
C - - - - - 0x01F10D 07:F0FD: 85 13     STA ram_0013_t11
C - - - - - 0x01F10F 07:F0FF: E6 17     INC ram_0017_t09_useless
bra_F101:
C - - - - - 0x01F111 07:F101: A5 13     LDA ram_0013_t11
C - - - - - 0x01F113 07:F103: 18        CLC
C - - - - - 0x01F114 07:F104: 79 B7 F5  ADC tbl_F5B6 + $01,Y
C - - - - - 0x01F117 07:F107: 90 05     BCC bra_F10E
C - - - - - 0x01F119 07:F109: 18        CLC
C - - - - - 0x01F11A 07:F10A: 69 10     ADC #$10
C - - - - - 0x01F11C 07:F10C: E6 17     INC ram_0017_t09_useless
bra_F10E:
C - - - - - 0x01F11E 07:F10E: 85 13     STA ram_0013_t12
C - - - - - 0x01F120 07:F110: 38        SEC
C - - - - - 0x01F121 07:F111: E9 F0     SBC #$F0
C - - - - - 0x01F123 07:F113: 90 04     BCC bra_F119_RTS
C - - - - - 0x01F125 07:F115: 85 13     STA ram_0013_t12
C - - - - - 0x01F127 07:F117: E6 17     INC ram_0017_t09_useless
bra_F119_RTS:
C - - - - - 0x01F129 07:F119: 60        RTS



sub_F11A:
C - - - - - 0x01F12A 07:F11A: A5 DC     LDA ram_00DC
C - - - - - 0x01F12C 07:F11C: 85 17     STA ram_0017_t09_useless
C - - - - - 0x01F12E 07:F11E: A5 DD     LDA ram_00DD
C - - - - - 0x01F130 07:F120: 85 13     STA ram_0013_t12
C - - - - - 0x01F132 07:F122: 60        RTS



ofs_006_F123_04:
; con_F3D6_04
C - - J - - 0x01F133 07:F123: A5 75     LDA ram_stage
C - - - - - 0x01F135 07:F125: C9 01     CMP #$01
C - - - - - 0x01F137 07:F127: D0 3A     BNE bra_F163
C - - - - - 0x01F139 07:F129: A5 00     LDA ram_0000_t42
C - - - - - 0x01F13B 07:F12B: 85 13     STA ram_0013_t06_data_index
C - - - - - 0x01F13D 07:F12D: 20 96 ED  JSR sub_ED96
C - - - - - 0x01F140 07:F130: 90 31     BCC bra_F163
C - - - - - 0x01F142 07:F132: AC 42 03  LDY ram_0342
C - - - - - 0x01F145 07:F135: A5 61     LDA ram_0061_lo
C - - - - - 0x01F147 07:F137: 18        CLC
C - - - - - 0x01F148 07:F138: 65 1C     ADC ram_001C_t14_pos_X
C - - - - - 0x01F14A 07:F13A: 85 1E     STA ram_001E_t14
C - - - - - 0x01F14C 07:F13C: 90 01     BCC bra_F13F
C - - - - - 0x01F14E 07:F13E: C8        INY
bra_F13F:
C - - - - - 0x01F14F 07:F13F: A5 1D     LDA ram_001D_t13
C - - - - - 0x01F151 07:F141: F0 05     BEQ bra_F148
- - - - - - 0x01F153 07:F143: 98        TYA
- - - - - - 0x01F154 07:F144: 18        CLC
- - - - - - 0x01F155 07:F145: 69 05     ADC #$05
- - - - - - 0x01F157 07:F147: A8        TAY
bra_F148:
C - - - - - 0x01F158 07:F148: C0 13     CPY #$13
C - - - - - 0x01F15A 07:F14A: B0 17     BCS bra_F163
C - - - - - 0x01F15C 07:F14C: B9 08 E8  LDA tbl_E808,Y
C - - - - - 0x01F15F 07:F14F: F0 12     BEQ bra_F163
C - - - - - 0x01F161 07:F151: 0A        ASL
C - - - - - 0x01F162 07:F152: A8        TAY
C - - - - - 0x01F163 07:F153: A5 1E     LDA ram_001E_t14
C - - - - - 0x01F165 07:F155: 10 04     BPL bra_F15B
C - - - - - 0x01F167 07:F157: 98        TYA
C - - - - - 0x01F168 07:F158: 09 01     ORA #$01
C - - - - - 0x01F16A 07:F15A: A8        TAY
bra_F15B:
C - - - - - 0x01F16B 07:F15B: 88        DEY
C - - - - - 0x01F16C 07:F15C: B9 AE F5  LDA tbl_F5AE,Y
C - - - - - 0x01F16F 07:F15F: 05 C1     ORA ram_00C1
C - - - - - 0x01F171 07:F161: 85 C1     STA ram_00C1
bra_F163:
C - - - - - 0x01F173 07:F163: A4 88     LDY ram_x2_stage
C - - - - - 0x01F175 07:F165: B9 81 F2  LDA tbl_F281,Y
C - - - - - 0x01F178 07:F168: 85 04     STA ram_0004_t03_data
C - - - - - 0x01F17A 07:F16A: B9 82 F2  LDA tbl_F281 + $01,Y
C - - - - - 0x01F17D 07:F16D: 85 05     STA ram_0004_t03_data + $01
C - - - - - 0x01F17F 07:F16F: A5 00     LDA ram_0000_t42
C - - - - - 0x01F181 07:F171: D9 73 F2  CMP tbl_F273,Y
C - - - - - 0x01F184 07:F174: 90 0D     BCC bra_F183
C - - - - - 0x01F186 07:F176: B9 74 F2  LDA tbl_F273 + $01,Y
C - - - - - 0x01F189 07:F179: 18        CLC
C - - - - - 0x01F18A 07:F17A: 79 73 F2  ADC tbl_F273,Y
C - - - - - 0x01F18D 07:F17D: C5 00     CMP ram_0000_t42
C - - - - - 0x01F18F 07:F17F: F0 02     BEQ bra_F183
C - - - - - 0x01F191 07:F181: B0 03     BCS bra_F186
bra_F183:
C - - - - - 0x01F193 07:F183: 4C 4C F2  JMP loc_F24C
bra_F186:
C - - - - - 0x01F196 07:F186: A5 75     LDA ram_stage
C - - - - - 0x01F198 07:F188: C9 02     CMP #$02
C - - - - - 0x01F19A 07:F18A: 90 0D     BCC bra_F199
C - - - - - 0x01F19C 07:F18C: A5 67     LDA ram_0067
C - - - - - 0x01F19E 07:F18E: 29 03     AND #$03
C - - - - - 0x01F1A0 07:F190: C9 02     CMP #$02
C - - - - - 0x01F1A2 07:F192: 90 0B     BCC bra_F19F
C - - - - - 0x01F1A4 07:F194: A6 39     LDX ram_buffer_index_2
C - - - - - 0x01F1A6 07:F196: 4C 9B F1  JMP loc_F19B
bra_F199:
C - - - - - 0x01F1A9 07:F199: A6 26     LDX ram_buffer_index
loc_F19B:
C D 3 - - - 0x01F1AB 07:F19B: E0 20     CPX #$20
C - - - - - 0x01F1AD 07:F19D: 90 03     BCC bra_F1A2
bra_F19F:
C - - - - - 0x01F1AF 07:F19F: 4C 50 F2  JMP loc_F250
bra_F1A2:
C - - - - - 0x01F1B2 07:F1A2: A5 00     LDA ram_0000_t42
C - - - - - 0x01F1B4 07:F1A4: 38        SEC
C - - - - - 0x01F1B5 07:F1A5: F9 73 F2  SBC tbl_F273,Y
C - - - - - 0x01F1B8 07:F1A8: A8        TAY
C - - - - - 0x01F1B9 07:F1A9: B1 04     LDA (ram_0004_t03_data),Y
sub_F1AB:
C - - - - - 0x01F1BB 07:F1AB: 85 12     STA ram_0012_t03_data_index
C - - - - - 0x01F1BD 07:F1AD: A4 02     LDY ram_0002_t18_array_index
C - - - - - 0x01F1BF 07:F1AF: 99 00 04  STA ram_0400,Y
C - - - - - 0x01F1C2 07:F1B2: 98        TYA
C - - - - - 0x01F1C3 07:F1B3: 29 07     AND #$07
C - - - - - 0x01F1C5 07:F1B5: 85 03     STA ram_0003_t33
C - - - - - 0x01F1C7 07:F1B7: A5 02     LDA ram_0002_t18_array_index
C - - - - - 0x01F1C9 07:F1B9: 29 70     AND #$70
C - - - - - 0x01F1CB 07:F1BB: 4A        LSR
C - - - - - 0x01F1CC 07:F1BC: 05 03     ORA ram_0003_t33
C - - - - - 0x01F1CE 07:F1BE: 85 03     STA ram_0003_t34
; bzk optimize, useless LDA
C - - - - - 0x01F1D0 07:F1C0: A5 03     LDA ram_0003_t34
C - - - - - 0x01F1D2 07:F1C2: 29 38     AND #$38
; / 08
C - - - - - 0x01F1D4 07:F1C4: 4A        LSR
C - - - - - 0x01F1D5 07:F1C5: 4A        LSR
C - - - - - 0x01F1D6 07:F1C6: 4A        LSR
C - - - - - 0x01F1D7 07:F1C7: 85 05     STA ram_0005_t15
C - - - - - 0x01F1D9 07:F1C9: A9 00     LDA #$00
C - - - - - 0x01F1DB 07:F1CB: 46 05     LSR ram_0005_t15
C - - - - - 0x01F1DD 07:F1CD: 6A        ROR
C - - - - - 0x01F1DE 07:F1CE: 85 04     STA ram_0004_t17
C - - - - - 0x01F1E0 07:F1D0: A5 03     LDA ram_0003_t34
C - - - - - 0x01F1E2 07:F1D2: 29 07     AND #$07
; * 04
C - - - - - 0x01F1E4 07:F1D4: 0A        ASL
C - - - - - 0x01F1E5 07:F1D5: 0A        ASL
C - - - - - 0x01F1E6 07:F1D6: 05 04     ORA ram_0004_t17
C - - - - - 0x01F1E8 07:F1D8: 85 04     STA ram_0004_t30_ppu_addr_lo
C - - - - - 0x01F1EA 07:F1DA: A5 34     LDA ram_mirroring
C - - - - - 0x01F1EC 07:F1DC: F0 08     BEQ bra_F1E6
C - - - - - 0x01F1EE 07:F1DE: A5 02     LDA ram_0002_t18_array_index
C - - - - - 0x01F1F0 07:F1E0: 29 80     AND #$80
C - - - - - 0x01F1F2 07:F1E2: F0 0A     BEQ bra_F1EE
C - - - - - 0x01F1F4 07:F1E4: D0 06     BNE bra_F1EC    ; jmp
bra_F1E6:
C - - - - - 0x01F1F6 07:F1E6: A5 02     LDA ram_0002_t18_array_index
C - - - - - 0x01F1F8 07:F1E8: 29 88     AND #$88
C - - - - - 0x01F1FA 07:F1EA: F0 02     BEQ bra_F1EE
bra_F1EC:
C - - - - - 0x01F1FC 07:F1EC: A9 01     LDA #$01
bra_F1EE:
C - - - - - 0x01F1FE 07:F1EE: A8        TAY
C - - - - - 0x01F1FF 07:F1EF: B9 7D F2  LDA tbl_F27D_ppu_address_hi,Y
C - - - - - 0x01F202 07:F1F2: 05 05     ORA ram_0005_t15
C - - - - - 0x01F204 07:F1F4: 85 05     STA ram_0005_t09_ppu_addr_hi
C - - - - - 0x01F206 07:F1F6: A9 04     LDA #$04
C - - - - - 0x01F208 07:F1F8: 20 5F F2  JSR sub_F25F
C - - - - - 0x01F20B 07:F1FB: A5 03     LDA ram_0003_t34
C - - - - - 0x01F20D 07:F1FD: 09 C0     ORA #$C0
C - - - - - 0x01F20F 07:F1FF: 20 5F F2  JSR sub_F25F
C - - - - - 0x01F212 07:F202: A5 05     LDA ram_0005_t09_ppu_addr_hi
; bzk optimize, ORA 03, A is already 20+
C - - - - - 0x01F214 07:F204: 09 23     ORA #$23
C - - - - - 0x01F216 07:F206: 20 5F F2  JSR sub_F25F
C - - - - - 0x01F219 07:F209: A9 01     LDA #$01
C - - - - - 0x01F21B 07:F20B: 20 5F F2  JSR sub_F25F
C - - - - - 0x01F21E 07:F20E: A4 88     LDY ram_x2_stage
C - - - - - 0x01F220 07:F210: B9 4D DA  LDA tbl_0x01DA5D_nametable_attributes,Y
C - - - - - 0x01F223 07:F213: 85 06     STA ram_0006_t02_nmt_attr_data
C - - - - - 0x01F225 07:F215: B9 4E DA  LDA tbl_0x01DA5D_nametable_attributes + $01,Y
C - - - - - 0x01F228 07:F218: 85 07     STA ram_0006_t02_nmt_attr_data + $01
C - - - - - 0x01F22A 07:F21A: A4 12     LDY ram_0012_t03_data_index
C - - - - - 0x01F22C 07:F21C: B1 06     LDA (ram_0006_t02_nmt_attr_data),Y
C - - - - - 0x01F22E 07:F21E: 20 5F F2  JSR sub_F25F
C - - - - - 0x01F231 07:F221: 20 54 F2  JSR sub_F254
C - - - - - 0x01F234 07:F224: A9 00     LDA #$00
C - - - - - 0x01F236 07:F226: A0 03     LDY #$03
bra_F228_loop:
C - - - - - 0x01F238 07:F228: 06 12     ASL ram_0012_t03_data_index
C - - - - - 0x01F23A 07:F22A: 2A        ROL
C - - - - - 0x01F23B 07:F22B: 88        DEY
C - - - - - 0x01F23C 07:F22C: 10 FA     BPL bra_F228_loop
C - - - - - 0x01F23E 07:F22E: 85 13     STA ram_0013_t01
C - - - - - 0x01F240 07:F230: 20 B5 ED  JSR sub_EDB5_prepare_metatiles_pointers
C - - - - - 0x01F243 07:F233: A5 08     LDA ram_0008_t17_metatiles_ptr
C - - - - - 0x01F245 07:F235: 18        CLC
C - - - - - 0x01F246 07:F236: 65 12     ADC ram_0012_t03_data_index
C - - - - - 0x01F248 07:F238: 85 12     STA ram_0012_t02_metatiles_data
C - - - - - 0x01F24A 07:F23A: A5 09     LDA ram_0008_t17_metatiles_ptr + $01
C - - - - - 0x01F24C 07:F23C: 65 13     ADC ram_0013_t01
C - - - - - 0x01F24E 07:F23E: 85 13     STA ram_0012_t02_metatiles_data + $01
C - - - - - 0x01F250 07:F240: A9 01     LDA #$01
C - - - - - 0x01F252 07:F242: 8D 56 03  STA ram_0356_flag
C - - - - - 0x01F255 07:F245: A9 04     LDA #con_DA9D_04
C - - - - - 0x01F257 07:F247: 85 1F     STA ram_001F_t01
C - - - - - 0x01F259 07:F249: 20 6B DA  JSR sub_0x01DA7B
loc_F24C:
C D 3 - - - 0x01F25C 07:F24C: A6 53     LDX ram_0053
C - - - - - 0x01F25E 07:F24E: 18        CLC
C - - - - - 0x01F25F 07:F24F: 60        RTS



loc_F250:
C D 3 - - - 0x01F260 07:F250: A6 53     LDX ram_0053
C - - - - - 0x01F262 07:F252: 38        SEC
C - - - - - 0x01F263 07:F253: 60        RTS



sub_F254:
C - - - - - 0x01F264 07:F254: 20 69 F2  JSR sub_F269
C - - - - - 0x01F267 07:F257: 90 03     BCC bra_F25C
C - - - - - 0x01F269 07:F259: 86 39     STX ram_buffer_index_2
C - - - - - 0x01F26B 07:F25B: 60        RTS
bra_F25C:
C - - - - - 0x01F26C 07:F25C: 86 26     STX ram_buffer_index
C - - - - - 0x01F26E 07:F25E: 60        RTS



sub_F25F:
C - - - - - 0x01F26F 07:F25F: 20 69 F2  JSR sub_F269
C - - - - - 0x01F272 07:F262: 90 0A     BCC bra_F26E
C - - - - - 0x01F274 07:F264: 9D 60 01  STA ram_ppu_buffer_2,X
C - - - - - 0x01F277 07:F267: E8        INX
C - - - - - 0x01F278 07:F268: 60        RTS



sub_F269:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x01F279 07:F269: A4 75     LDY ram_stage
C - - - - - 0x01F27B 07:F26B: C0 02     CPY #$02
C - - - - - 0x01F27D 07:F26D: 60        RTS
bra_F26E:
C - - - - - 0x01F27E 07:F26E: 9D 00 01  STA ram_ppu_buffer_1,X
C - - - - - 0x01F281 07:F271: E8        INX
C - - - - - 0x01F282 07:F272: 60        RTS



tbl_F273:
- D 3 - - - 0x01F283 07:F273: 77        .byte $77, $11   ; 00 stage 1
- D 3 - - - 0x01F285 07:F275: DB        .byte $DB, $14   ; 02 stage 2
- D 3 - - - 0x01F287 07:F277: 6A        .byte $6A, $09   ; 04 stage 3
- D 3 - - - 0x01F289 07:F279: 9A        .byte $9A, $13   ; 06 stage 4
- D 3 - - - 0x01F28B 07:F27B: 5B        .byte $5B, $14   ; 08 stage 5



tbl_F27D_ppu_address_hi:
- D 3 - - - 0x01F28D 07:F27D: 20        .byte $20   ; 00 
- D 3 - - - 0x01F28E 07:F27E: 2C        .byte $2C   ; 01 
- - - - - - 0x01F28F 07:F27F: 2C        .byte $2C   ; 02 
- - - - - - 0x01F290 07:F280: 2C        .byte $2C   ; 03 



tbl_F281:
- D 3 - - - 0x01F291 07:F281: 8B F2     .word _off009_F28B_00_stage_1
- D 3 - - - 0x01F293 07:F283: 9C F2     .word _off009_F29C_02_stage_2
- D 3 - - - 0x01F295 07:F285: B0 F2     .word _off009_F2B0_04_stage_3
- D 3 - - - 0x01F297 07:F287: B9 F2     .word _off009_F2B9_06_stage_4
- D 3 - - - 0x01F299 07:F289: CC F2     .word _off009_F2CC_08_stage_5



_off009_F28B_00_stage_1:
- D 3 - I - 0x01F29B 07:F28B: 88        .byte $88   ; 
- D 3 - I - 0x01F29C 07:F28C: 89        .byte $89   ; 
- D 3 - I - 0x01F29D 07:F28D: 8A        .byte $8A   ; 
- - - - - - 0x01F29E 07:F28E: 8A        .byte $8A   ; 
- - - - - - 0x01F29F 07:F28F: 8B        .byte $8B   ; 
- D 3 - I - 0x01F2A0 07:F290: 8C        .byte $8C   ; 
- D 3 - I - 0x01F2A1 07:F291: 8D        .byte $8D   ; 
- D 3 - I - 0x01F2A2 07:F292: 8E        .byte $8E   ; 
- D 3 - I - 0x01F2A3 07:F293: 8F        .byte $8F   ; 
- D 3 - I - 0x01F2A4 07:F294: 90        .byte $90   ; 
- D 3 - I - 0x01F2A5 07:F295: 91        .byte $91   ; 
- D 3 - I - 0x01F2A6 07:F296: 92        .byte $92   ; 
- D 3 - I - 0x01F2A7 07:F297: 93        .byte $93   ; 
- D 3 - I - 0x01F2A8 07:F298: 94        .byte $94   ; 
- D 3 - I - 0x01F2A9 07:F299: 95        .byte $95   ; 
- D 3 - I - 0x01F2AA 07:F29A: 96        .byte $96   ; 
- D 3 - I - 0x01F2AB 07:F29B: 97        .byte $97   ; 



_off009_F29C_02_stage_2:
- D 3 - I - 0x01F2AC 07:F29C: EF        .byte $EF   ; 
- D 3 - I - 0x01F2AD 07:F29D: F0        .byte $F0   ; 
- D 3 - I - 0x01F2AE 07:F29E: F1        .byte $F1   ; 
- D 3 - I - 0x01F2AF 07:F29F: F2        .byte $F2   ; 
- D 3 - I - 0x01F2B0 07:F2A0: F3        .byte $F3   ; 
- D 3 - I - 0x01F2B1 07:F2A1: F4        .byte $F4   ; 
- - - - - - 0x01F2B2 07:F2A2: F5        .byte $F5   ; 
- D 3 - I - 0x01F2B3 07:F2A3: F5        .byte $F5   ; 
- D 3 - I - 0x01F2B4 07:F2A4: F6        .byte $F6   ; 
- - - - - - 0x01F2B5 07:F2A5: F7        .byte $F7   ; 
- - - - - - 0x01F2B6 07:F2A6: F8        .byte $F8   ; 
- - - - - - 0x01F2B7 07:F2A7: F9        .byte $F9   ; 
- D 3 - I - 0x01F2B8 07:F2A8: F9        .byte $F9   ; 
- - - - - - 0x01F2B9 07:F2A9: FA        .byte $FA   ; 
- D 3 - I - 0x01F2BA 07:F2AA: FA        .byte $FA   ; 
- - - - - - 0x01F2BB 07:F2AB: FB        .byte $FB   ; 
- - - - - - 0x01F2BC 07:F2AC: FC        .byte $FC   ; 
- - - - - - 0x01F2BD 07:F2AD: FD        .byte $FD   ; 
- - - - - - 0x01F2BE 07:F2AE: FE        .byte $FE   ; 
- D 3 - I - 0x01F2BF 07:F2AF: FE        .byte $FE   ; 



_off009_F2B0_04_stage_3:
- D 3 - I - 0x01F2C0 07:F2B0: 73        .byte $73   ; 
- D 3 - I - 0x01F2C1 07:F2B1: 74        .byte $74   ; 
- D 3 - I - 0x01F2C2 07:F2B2: 75        .byte $75   ; 
- D 3 - I - 0x01F2C3 07:F2B3: 75        .byte $75   ; 
- D 3 - I - 0x01F2C4 07:F2B4: 75        .byte $75   ; 
- - - - - - 0x01F2C5 07:F2B5: 76        .byte $76   ; 
- D 3 - I - 0x01F2C6 07:F2B6: 77        .byte $77   ; 
- D 3 - I - 0x01F2C7 07:F2B7: 78        .byte $78   ; 
- D 3 - I - 0x01F2C8 07:F2B8: 79        .byte $79   ; 



_off009_F2B9_06_stage_4:
- D 3 - I - 0x01F2C9 07:F2B9: AD        .byte $AD   ; 
- D 3 - I - 0x01F2CA 07:F2BA: AE        .byte $AE   ; 
- D 3 - I - 0x01F2CB 07:F2BB: AF        .byte $AF   ; 
- D 3 - I - 0x01F2CC 07:F2BC: B0        .byte $B0   ; 
- D 3 - I - 0x01F2CD 07:F2BD: B1        .byte $B1   ; 
- D 3 - I - 0x01F2CE 07:F2BE: B2        .byte $B2   ; 
- D 3 - I - 0x01F2CF 07:F2BF: B3        .byte $B3   ; 
- D 3 - I - 0x01F2D0 07:F2C0: B4        .byte $B4   ; 
- D 3 - I - 0x01F2D1 07:F2C1: B5        .byte $B5   ; 
- D 3 - I - 0x01F2D2 07:F2C2: B6        .byte $B6   ; 
- D 3 - I - 0x01F2D3 07:F2C3: B7        .byte $B7   ; 
- D 3 - I - 0x01F2D4 07:F2C4: B8        .byte $B8   ; 
- D 3 - I - 0x01F2D5 07:F2C5: B9        .byte $B9   ; 
- D 3 - I - 0x01F2D6 07:F2C6: BA        .byte $BA   ; 
- D 3 - I - 0x01F2D7 07:F2C7: BB        .byte $BB   ; 
- D 3 - I - 0x01F2D8 07:F2C8: BC        .byte $BC   ; 
- - - - - - 0x01F2D9 07:F2C9: BC        .byte $BC   ; 
- D 3 - I - 0x01F2DA 07:F2CA: BD        .byte $BD   ; 
- D 3 - I - 0x01F2DB 07:F2CB: BE        .byte $BE   ; 



_off009_F2CC_08_stage_5:
- - - - - - 0x01F2DC 07:F2CC: 6F        .byte $6F   ; 
- - - - - - 0x01F2DD 07:F2CD: 70        .byte $70   ; 
- - - - - - 0x01F2DE 07:F2CE: 71        .byte $71   ; 
- D 3 - I - 0x01F2DF 07:F2CF: 72        .byte $72   ; 
- D 3 - I - 0x01F2E0 07:F2D0: 73        .byte $73   ; 
- - - - - - 0x01F2E1 07:F2D1: 74        .byte $74   ; 
- - - - - - 0x01F2E2 07:F2D2: 75        .byte $75   ; 
- D 3 - I - 0x01F2E3 07:F2D3: 76        .byte $76   ; 
- D 3 - I - 0x01F2E4 07:F2D4: 76        .byte $76   ; 
- D 3 - I - 0x01F2E5 07:F2D5: 76        .byte $76   ; 
- D 3 - I - 0x01F2E6 07:F2D6: 77        .byte $77   ; 
- D 3 - I - 0x01F2E7 07:F2D7: 77        .byte $77   ; 
- D 3 - I - 0x01F2E8 07:F2D8: 77        .byte $77   ; 
- - - - - - 0x01F2E9 07:F2D9: 78        .byte $78   ; 
- - - - - - 0x01F2EA 07:F2DA: 79        .byte $79   ; 
- D 3 - I - 0x01F2EB 07:F2DB: 7A        .byte $7A   ; 
- D 3 - I - 0x01F2EC 07:F2DC: 7B        .byte $7B   ; 
- - - - - - 0x01F2ED 07:F2DD: 7C        .byte $7C   ; 
- - - - - - 0x01F2EE 07:F2DE: 7D        .byte $7D   ; 
- - - - - - 0x01F2EF 07:F2DF: 7E        .byte $7E   ; 



ofs_006_F2E0_08:
; con_F3D6_08
C - - J - - 0x01F2F0 07:F2E0: A4 88     LDY ram_x2_stage
C - - - - - 0x01F2F2 07:F2E2: A5 00     LDA ram_0000_t42
C - - - - - 0x01F2F4 07:F2E4: D9 73 F2  CMP tbl_F273,Y
C - - - - - 0x01F2F7 07:F2E7: 90 0B     BCC bra_F2F4
C - - - - - 0x01F2F9 07:F2E9: B9 74 F2  LDA tbl_F273 + $01,Y
C - - - - - 0x01F2FC 07:F2EC: 18        CLC
C - - - - - 0x01F2FD 07:F2ED: 79 73 F2  ADC tbl_F273,Y
C - - - - - 0x01F300 07:F2F0: C5 00     CMP ram_0000_t42
C - - - - - 0x01F302 07:F2F2: B0 04     BCS bra_F2F8_RTS
bra_F2F4:
C - - - - - 0x01F304 07:F2F4: A9 00     LDA #$00
C - - - - - 0x01F306 07:F2F6: 85 00     STA ram_0000_t42
bra_F2F8_RTS:
C - - - - - 0x01F308 07:F2F8: 60        RTS



sub_0x01F309_clear_0040_00DF:
C - - - - - 0x01F309 07:F2F9: A2 40     LDX #$40
C - - - - - 0x01F30B 07:F2FB: D0 02     BNE bra_F2FF    ; jmp



sub_0x01F30D_clear_0060_00DF:
C - - - - - 0x01F30D 07:F2FD: A2 60     LDX #$60
bra_F2FF:
C - - - - - 0x01F30F 07:F2FF: A9 00     LDA #$00
bra_F301_loop:
C - - - - - 0x01F311 07:F301: 95 00     STA $00,X
C - - - - - 0x01F313 07:F303: E8        INX
C - - - - - 0x01F314 07:F304: E0 E0     CPX #$E0
C - - - - - 0x01F316 07:F306: D0 F9     BNE bra_F301_loop
C - - - - - 0x01F318 07:F308: 60        RTS



sub_F309_clear_0400_07FF:
sub_0x01F319_clear_0400_07FF:
C - - - - - 0x01F319 07:F309: A2 00     LDX #$00
C - - - - - 0x01F31B 07:F30B: 8A        TXA
bra_F30C_loop:
C - - - - - 0x01F31C 07:F30C: 9D 00 04  STA $0400,X
C - - - - - 0x01F31F 07:F30F: 9D 00 05  STA $0500,X
C - - - - - 0x01F322 07:F312: 9D 00 06  STA $0600,X
C - - - - - 0x01F325 07:F315: 9D 00 07  STA $0700,X
C - - - - - 0x01F328 07:F318: E8        INX
C - - - - - 0x01F329 07:F319: D0 F1     BNE bra_F30C_loop
C - - - - - 0x01F32B 07:F31B: 60        RTS



sub_0x01F32C:
C - - - - - 0x01F32C 07:F31C: A9 00     LDA #$00
C - - - - - 0x01F32E 07:F31E: A2 B0     LDX #$B0
bra_F320_loop:
C - - - - - 0x01F330 07:F320: 9D 00 03  STA ram_palette_buffer - $B0,X
C - - - - - 0x01F333 07:F323: E8        INX
C - - - - - 0x01F334 07:F324: D0 FA     BNE bra_F320_loop
C - - - - - 0x01F336 07:F326: 60        RTS



tbl_0x01F34C_dpad_buttons_conversion:
- D 3 - - - 0x01F34C 07:F33C: 00        .byte $00   ; 00 no Dpad button was pressed
- D 3 - - - 0x01F34D 07:F33D: 03        .byte $03   ; 01 Right
- D 3 - - - 0x01F34E 07:F33E: 07        .byte $07   ; 02 Left
- - - - - - 0x01F34F 07:F33F: 00        .byte $00   ; 03 placeholder
- D 3 - - - 0x01F350 07:F340: 05        .byte $05   ; 04 Down
- D 3 - - - 0x01F351 07:F341: 04        .byte $04   ; 05 Down + Right
- D 3 - - - 0x01F352 07:F342: 06        .byte $06   ; 06 Down + Left
- - - - - - 0x01F353 07:F343: 05        .byte $05   ; 07 placeholder
- D 3 - - - 0x01F354 07:F344: 01        .byte $01   ; 08 Up
- D 3 - - - 0x01F355 07:F345: 02        .byte $02   ; 09 Up + Right
- D 3 - - - 0x01F356 07:F346: 08        .byte $08   ; 0A Up + Left
; bzk garbage, impossible Dpad combinations
- - - - - - 0x01F357 07:F347: 01        .byte $01   ; 0B 
- - - - - - 0x01F358 07:F348: 00        .byte $00   ; 0C 
- - - - - - 0x01F359 07:F349: 03        .byte $03   ; 0D 
- - - - - - 0x01F35A 07:F34A: 07        .byte $07   ; 0E 
- - - - - - 0x01F35B 07:F34B: 00        .byte $00   ; 0F 



sub_F34C_prg_bankswitch:
loc_F34C_prg_bankswitch:
loc_0x01F35C_prg_bankswitch:
sub_0x01F35C_prg_bankswitch:
C D 3 - - - 0x01F35C 07:F34C: C9 03     CMP #con_prg_pair + $03
C - - - - - 0x01F35E 07:F34E: D0 05     BNE bra_F355
; 03
C - - - - - 0x01F360 07:F350: A4 75     LDY ram_stage
C - - - - - 0x01F362 07:F352: B9 89 F3  LDA tbl_F389,Y
bra_F355:
C - - - - - 0x01F365 07:F355: 85 36     STA ram_prg_banks_pair
bra_F357_loop:
C - - - - - 0x01F367 07:F357: 20 8E F3  LDA #$00
                                        STA ram_nmi_flag_2
C - - - - - 0x01F36A 07:F35A: 20 62 F3  JSR sub_F362_switch_prg_bank_pair
C - - - - - 0x01F36D 07:F35D: A5 C4     LDA ram_nmi_flag_2
C - - - - - 0x01F36F 07:F35F: D0 F6     BNE bra_F357_loop
C - - - - - 0x01F371 07:F361: 60        RTS



loc_F362_switch_prg_bank_pair:
sub_F362_switch_prg_bank_pair:
; bzk optimize, 007E is useless
C D 3 - - - 0x01F372 07:F362: A9 01     LDA #$01
C - - - - - 0x01F374 07:F364: 85 7E     STA ram_007E_useless
; bzk optimize, divide table in 2 tables,
; replace LDA with LDY, delete ASL + TAY
C - - - - - 0x01F376 07:F366: A5 36     LDA ram_prg_banks_pair
C - - - - - 0x01F378 07:F368: 0A        ASL
                                        ADC ram_prg_banks_pair
C - - - - - 0x01F379 07:F369: A8        TAY
C - - - - - 0x01F381 07:F371: B9 93 F3  LDA tbl_F393_prg_pairs,Y
C - - - - - 0x01F384 07:F374: 8D 01 80  STA $5114
C - - - - - 0x01F38E 07:F37E: B9 94 F3  LDA tbl_F393_prg_pairs + $01,Y
C - - - - - 0x01F391 07:F381: 8D 01 80  STA $5115
                                        LDA tbl_F393_prg_pairs + $02,Y
                                        STA $5116
C - - - - - 0x01F394 07:F384: A9 00     LDA #$00
C - - - - - 0x01F396 07:F386: 85 7E     STA ram_007E_useless
C - - - - - 0x01F398 07:F388: 60        RTS



tbl_F389:
- D 3 - - - 0x01F399 07:F389: 03        .byte con_prg_pair + $03   ; 00 stage 1
- D 3 - - - 0x01F39A 07:F38A: 03        .byte con_prg_pair + $03   ; 01 stage 2
- D 3 - - - 0x01F39B 07:F38B: 09        .byte con_prg_pair + $09   ; 02 stage 3
- D 3 - - - 0x01F39C 07:F38C: 03        .byte con_prg_pair + $03   ; 03 stage 4
- D 3 - - - 0x01F39D 07:F38D: 09        .byte con_prg_pair + $09   ; 04 stage 5



tbl_F393_prg_pairs:
; see con_prg_pair
; 00 
- D 3 - - - 0x01F3A3 07:F393: 00        .byte con_prg_bank + $00   ; 
- D 3 - - - 0x01F3A4 07:F394: 01        .byte con_prg_bank + $01   ; 
                                        .byte con_prg_bank + $3D   ; 
; 01 норм
- D 3 - - - 0x01F3A5 07:F395: 0A        .byte con_prg_bank + $0A   ; 
- D 3 - - - 0x01F3A6 07:F396: 0B        .byte con_prg_bank + $0B   ; 
                                        .byte con_prg_bank + $3D   ; 
; 02 
- D 3 - - - 0x01F3A7 07:F397: 04        .byte con_prg_bank + $04   ; 
- D 3 - - - 0x01F3A8 07:F398: 05        .byte con_prg_bank + $05   ; 
                                        .byte con_prg_bank + $3D   ; 
; 03 !!! надо переместить данные каждого уровня в свой банк, тогда
; можно будет переместить con_F3D6_00 и con_F3D6_0F в первую часть банка,
; и подключать вторую часть с нужным уровнем, вместо трех банков 03 0C 0D
- D 3 - - - 0x01F3A9 07:F399: 0C        .byte con_prg_bank + $0C   ; 
- D 3 - - - 0x01F3AA 07:F39A: 0D        .byte con_prg_bank + $0D   ; 
                                        .byte con_prg_bank + $3D   ; 
; 04 норм звуковой движок
- D 3 - - - 0x01F3AB 07:F39B: 08        .byte con_prg_bank + $10   ; 
- D 3 - - - 0x01F3AC 07:F39C: 09        .byte con_prg_bank + $11   ; 
                                        .byte con_prg_bank + $12   ; 
; 05 
- D 3 - - - 0x01F3AD 07:F39D: 04        .byte con_prg_bank + $04   ; 
- D 3 - - - 0x01F3AE 07:F39E: 06        .byte con_prg_bank + $06   ; 
                                        .byte con_prg_bank + $3D   ; 
; 06 
- D 3 - - - 0x01F3AF 07:F39F: 04        .byte con_prg_bank + $04   ; 
- D 3 - - - 0x01F3B0 07:F3A0: 07        .byte con_prg_bank + $07   ; 
                                        .byte con_prg_bank + $3D   ; 
; 07 норм
- D 3 - - - 0x01F3B1 07:F3A1: 0A        .byte con_prg_bank + $08   ; 
- D 3 - - - 0x01F3B2 07:F3A2: 0B        .byte con_prg_bank + $09   ; 
                                        .byte con_prg_bank + $3D   ; 
; 08 норм
- D 3 - - - 0x01F3B3 07:F3A3: 00        .byte con_prg_bank + $14   ; 
- D 3 - - - 0x01F3B4 07:F3A4: 02        .byte con_prg_bank + $15   ; 
                                        .byte con_prg_bank + $16   ; 
; 09 
- D 3 - - - 0x01F3B5 07:F3A5: 0C        .byte con_prg_bank + $0C   ; 
- D 3 - - - 0x01F3B6 07:F3A6: 03        .byte con_prg_bank + $03   ; 
                                        .byte con_prg_bank + $3D   ; 
; 0A норм
- D 3 - - - 0x01F3B7 07:F3A7: 00        .byte con_prg_bank + $18   ; 
- D 3 - - - 0x01F3B8 07:F3A8: 03        .byte con_prg_bank + $19   ; 
                                        .byte con_prg_bank + $1A   ; 
; 0B норм
- D 3 - - - 0x01F3B9 07:F3A9: 0C        .byte con_prg_bank + $1C   ; 
- D 3 - - - 0x01F3BA 07:F3AA: 0D        .byte con_prg_bank + $1D   ; 
                                        .byte con_prg_bank + $1E   ; 
; 0C unused
- - - - - - 0x01F3BB 07:F3AB: 00        .byte con_prg_bank + $7F   ; 
- - - - - - 0x01F3BC 07:F3AC: 0D        .byte con_prg_bank + $7F   ; 
                                        .byte con_prg_bank + $7F   ; 
; 0D 
- D 3 - - - 0x01F3BD 07:F3AD: 04        .byte con_prg_bank + $04   ; 
- D 3 - - - 0x01F3BE 07:F3AE: 01        .byte con_prg_bank + $01   ; 
                                        .byte con_prg_bank + $3D   ; 
; 0E 
- D 3 - - - 0x01F3BF 07:F3AF: 04        .byte con_prg_bank + $04   ; 
- D 3 - - - 0x01F3C0 07:F3B0: 02        .byte con_prg_bank + $02   ; 
                                        .byte con_prg_bank + $3D   ; 
 


sub_F3B3_execute_script:
loc_0x01F3C3_execute_script:
sub_0x01F3C3_execute_script:
; in
    ; A = con_F3D6
C D 3 - - - 0x01F3C3 07:F3B3: 85 37     STA ram_0037_t02
; * 03
C - - - - - 0x01F3C5 07:F3B5: 0A        ASL
C - - - - - 0x01F3C6 07:F3B6: 65 37     ADC ram_0037_t02
C - - - - - 0x01F3C8 07:F3B8: A8        TAY
C - - - - - 0x01F3C9 07:F3B9: A5 36     LDA ram_prg_banks_pair
C - - - - - 0x01F3CB 07:F3BB: 48        PHA
C - - - - - 0x01F3CC 07:F3BC: B9 D6 F3  LDA tbl_F3D6,Y
C - - - - - 0x01F3CF 07:F3BF: 85 37     STA ram_0037_t01_jmp
C - - - - - 0x01F3D1 07:F3C1: B9 D7 F3  LDA tbl_F3D6 + $01,Y
C - - - - - 0x01F3D4 07:F3C4: 85 38     STA ram_0037_t01_jmp + $01
C - - - - - 0x01F3D6 07:F3C6: B9 D8 F3  LDA tbl_F3D6 + $02,Y
C - - - - - 0x01F3D9 07:F3C9: 20 4C F3  JSR sub_F34C_prg_bankswitch
C - - - - - 0x01F3DC 07:F3CC: 20 D3 F3  JSR sub_F3D3_execute_indirect_jump_0037
C - - - - - 0x01F3DF 07:F3CF: 68        PLA
C - - - - - 0x01F3E0 07:F3D0: 4C 4C F3  JMP loc_F34C_prg_bankswitch



sub_F3D3_execute_indirect_jump_0037:
C - - - - - 0x01F3E3 07:F3D3: 6C 37 00  JMP (ram_0037_t01_jmp)



tbl_F3D6:
; 00 con_F3D6_00
- D 3 - - - 0x01F3E6 07:F3D6: 54 EE     .word ofs_006_EE54_00
- D 3 - - - 0x01F3E8 07:F3D8: 03        .byte con_prg_pair + $03   ; 
; 01 con_F3D6_01
- D 3 - - - 0x01F3E9 07:F3D9: D6 B3     .word ofs_006_0x0133E6_01
- D 3 - - - 0x01F3EB 07:F3DB: 04        .byte con_prg_pair + $04   ; 
; 02 con_F3D6_02 unused, index doesn't exist
- - - - - - 0x01F3EC 07:F3DC: 0F AA     .word ofs_006_0x012A1F_02_update_sound_engine
- - - - - - 0x01F3EE 07:F3DE: 04        .byte con_prg_pair + $04   ; 
; 03 con_F3D6_03 unused, index doesn't exist
- - - - - - 0x01F3EF 07:F3DF: 86 B2     .word ofs_006_0x013296_03
- - - - - - 0x01F3F1 07:F3E1: 04        .byte con_prg_pair + $04   ; 
; 04 con_F3D6_04
- D 3 - - - 0x01F3F2 07:F3E2: 23 F1     .word ofs_006_F123_04
- D 3 - - - 0x01F3F4 07:F3E4: 03        .byte con_prg_pair + $03   ; 
; 05 con_F3D6_05
- D 3 - - - 0x01F3F5 07:F3E5: 75 DA     .word ofs_006_0x01DA85_05
- D 3 - - - 0x01F3F7 07:F3E7: 03        .byte con_prg_pair + $03   ; 
; 06 con_F3D6_06
- D 3 - - - 0x01F3F8 07:F3E8: 75 DA     .word ofs_006_0x01DA85_06
- D 3 - - - 0x01F3FA 07:F3EA: 01        .byte con_prg_pair + $01   ; 
; 07 con_F3D6_07 unused, index doesn't exist
- - - - - - 0x01F3FB 07:F3EB: 01 A0     .word sub_006_0x00C011_07
- - - - - - 0x01F3FD 07:F3ED: 05        .byte con_prg_pair + $05   ; 
; 08 con_F3D6_08
- D 3 - - - 0x01F3FE 07:F3EE: E0 F2     .word ofs_006_F2E0_08
- D 3 - - - 0x01F400 07:F3F0: 03        .byte con_prg_pair + $03   ; 
; 09 con_F3D6_09
- D 3 - - - 0x01F401 07:F3F1: 34 AE     .word ofs_006_0x00AE44_09
- D 3 - - - 0x01F403 07:F3F3: 02        .byte con_prg_pair + $02   ; 
; 0A con_F3D6_0A unused, index doesn't exist
- - - - - - 0x01F404 07:F3F4: E4 A1     .word ofs_006_0x0161F4_0A
- - - - - - 0x01F406 07:F3F6: 01        .byte con_prg_pair + $01   ; 
; 0B con_F3D6_0B
- D 3 - - - 0x01F407 07:F3F7: F0 AE     .word ofs_006_0x00AF00_0B
- D 3 - - - 0x01F409 07:F3F9: 02        .byte con_prg_pair + $02   ; 
; 0C con_F3D6_0C
- D 3 - - - 0x01F40A 07:F3FA: 75 DA     .word ofs_006_0x01DA85_0C
- D 3 - - - 0x01F40C 07:F3FC: 07        .byte con_prg_pair + $01   ; 
; 0D con_F3D6_0D
- D 3 - - - 0x01F40D 07:F3FD: 06 AF     .word ofs_006_0x016F16_0D
- D 3 - - - 0x01F40F 07:F3FF: 01        .byte con_prg_pair + $01   ; 
; 0E con_F3D6_0E
- D 3 - - - 0x01F410 07:F400: 0D B1     .word ofs_006_0x01711D_0E
- D 3 - - - 0x01F412 07:F402: 01        .byte con_prg_pair + $01   ; 
; 0F con_F3D6_0F
- D 3 - - - 0x01F413 07:F403: EC EE     .word ofs_006_EEEC_0F
- D 3 - - - 0x01F415 07:F405: 03        .byte con_prg_pair + $03   ; 
; 10 con_F3D6_10 unused, index doesn't exist, points to FF
- - - - - - 0x01F416 07:F406: 88 B3     .word $B388 ; 0x00D398
- - - - - - 0x01F418 07:F408: 05        .byte con_prg_pair + $05   ; 
; 11 con_F3D6_11 unused, index doesn't exist
- - - - - - 0x01F419 07:F409: 5A B6     .word ofs_006_0x01766A_11
- - - - - - 0x01F41B 07:F40B: 01        .byte con_prg_pair + $01   ; 
; 12 con_F3D6_12
- D 3 - - - 0x01F41C 07:F40C: 63 A0     .word ofs_006_0x00A073_12
- D 3 - - - 0x01F41E 07:F40E: 02        .byte con_prg_pair + $02   ; 
; 13 con_F3D6_13
- D 3 - - - 0x01F41F 07:F40F: 38 A5     .word ofs_006_0x00A548_13
- D 3 - - - 0x01F421 07:F411: 02        .byte con_prg_pair + $02   ; 
; 14 con_F3D6_14
- D 3 - - - 0x01F422 07:F412: AC D9     .word ofs_006_0x01D9BC_14
- D 3 - - - 0x01F424 07:F414: 01        .byte con_prg_pair + $01   ; 
; 15 con_F3D6_15
- D 3 - - - 0x01F425 07:F415: 7D BA     .word ofs_006_0x003A8D_15
- D 3 - - - 0x01F427 07:F417: 00        .byte con_prg_pair + $07   ; 
; 16 con_F3D6_16
- D 3 - - - 0x01F428 07:F418: 72 97     .word ofs_006_0x009782_16
- D 3 - - - 0x01F42A 07:F41A: 02        .byte con_prg_pair + $02   ; 
; 17 con_F3D6_17
- D 3 - - - 0x01F42B 07:F41B: 32 81     .word ofs_006_0x008142_17
- D 3 - - - 0x01F42D 07:F41D: 02        .byte con_prg_pair + $02   ; 
; 18 con_F3D6_18
- D 3 - - - 0x01F42E 07:F41E: D3 A6     .word ofs_006_0x00A6E3_18
- D 3 - - - 0x01F430 07:F420: 02        .byte con_prg_pair + $02   ; 
; 19 con_F3D6_19
- D 3 - - - 0x01F431 07:F421: A8 D1     .word ofs_006_0x01D1B8_19_unpack_static_screen___pause
- D 3 - - - 0x01F433 07:F423: 0B        .byte con_prg_pair + $03   ; 
; 1A con_F3D6_1A
- D 3 - - - 0x01F434 07:F424: A8 D1     .word ofs_006_0x01D1B8_1A_unpack_static_screen___cutscene_pause
- D 3 - - - 0x01F436 07:F426: 09        .byte con_prg_pair + $09   ; 
; 1B con_F3D6_1B
- D 3 - - - 0x01F437 07:F427: 71 DA     .word ofs_006_0x01DA81_1B
- D 3 - - - 0x01F439 07:F429: 03        .byte con_prg_pair + $03   ; 
; 1C con_F3D6_1C
- D 3 - - - 0x01F43A 07:F42A: 6B DA     .word ofs_006_0x01DA7B_1C
- D 3 - - - 0x01F43C 07:F42C: 01        .byte con_prg_pair + $01   ; 
; 1D con_F3D6_1D
- D 3 - - - 0x01F43D 07:F42D: 94 84     .word ofs_006_0x0084A4_1D
- D 3 - - - 0x01F43F 07:F42F: 02        .byte con_prg_pair + $02   ; 
; 1E con_F3D6_1E
- D 3 - - - 0x01F440 07:F430: 51 B2     .word ofs_006_0x013261_1E
- D 3 - - - 0x01F442 07:F432: 04        .byte con_prg_pair + $04   ; 
; 1F con_F3D6_1F
- D 3 - - - 0x01F443 07:F433: 09 92     .word ofs_006_0x009219_1F
- D 3 - - - 0x01F445 07:F435: 02        .byte con_prg_pair + $02   ; 
; 20 con_F3D6_20
- D 3 - - - 0x01F446 07:F436: 30 A0     .word ofs_006_0x00A040_20
- D 3 - - - 0x01F448 07:F438: 02        .byte con_prg_pair + $02   ; 
; 21 con_F3D6_21
- D 3 - - - 0x01F449 07:F439: 0F 80     .word ofs_006_0x00801F_21
- D 3 - - - 0x01F44B 07:F43B: 02        .byte con_prg_pair + $02   ; 
; 22 con_F3D6_22 unused
- D 3 - - - 0x01F44C 07:F43C: C9 BF     .word $FFFF
- D 3 - - - 0x01F44E 07:F43E: 0B        .byte con_prg_pair + $03   ; 
; 23 con_F3D6_23
- D 3 - - - 0x01F44F 07:F43F: 48 A0     .word ofs_006_0x00A058_23
- D 3 - - - 0x01F451 07:F441: 02        .byte con_prg_pair + $02   ; 
; 24 con_F3D6_24
- D 3 - - - 0x01F452 07:F442: 83 97     .word ofs_006_0x009793_24
- D 3 - - - 0x01F454 07:F444: 05        .byte con_prg_pair + $0A   ; 
; 25 con_F3D6_25
- D 3 - - - 0x01F455 07:F445: BB BF     .word ofs_006_0x013FCB_25
- D 3 - - - 0x01F457 07:F447: 0F        .byte con_prg_pair + $04   ; 



sub_0x01F458_select_bg_chr_bank_pair:
loc_0x01F458_select_bg_chr_bank_pair:
; in
    ; A = con_chr_pair
C D 3 - - - 0x01F458 07:F448: 0A        ASL
C - - - - - 0x01F459 07:F449: A8        TAY
C - - - - - 0x01F45A 07:F44A: B9 55 F4  LDA tbl_F455_bg_chr_bank,Y
C - - - - - 0x01F45D 07:F44D: 85 77     STA ram_chr_bank
C - - - - - 0x01F45F 07:F44F: B9 56 F4  LDA tbl_F455_bg_chr_bank + $01,Y
C - - - - - 0x01F462 07:F452: 85 78     STA ram_chr_bank + $01
C - - - - - 0x01F464 07:F454: 60        RTS



tbl_F455_bg_chr_bank:
; see con_chr_pair
; 00 
- D 3 - - - 0x01F465 07:F455: 30        .byte con_chr_bank + $30   ; 
- D 3 - - - 0x01F466 07:F456: 32        .byte con_chr_bank + $32   ; 
; 01 
- D 3 - - - 0x01F467 07:F457: 30        .byte con_chr_bank + $30   ; 
- D 3 - - - 0x01F468 07:F458: 34        .byte con_chr_bank + $34   ; 
; 02 
- D 3 - - - 0x01F469 07:F459: 30        .byte con_chr_bank + $30   ; 
- D 3 - - - 0x01F46A 07:F45A: 38        .byte con_chr_bank + $38   ; 
; 03 
- D 3 - - - 0x01F46B 07:F45B: 30        .byte con_chr_bank + $30   ; 
- D 3 - - - 0x01F46C 07:F45C: 3A        .byte con_chr_bank + $3A   ; 
; 04 
- D 3 - - - 0x01F46D 07:F45D: 30        .byte con_chr_bank + $30   ; 
- D 3 - - - 0x01F46E 07:F45E: 36        .byte con_chr_bank + $36   ; 
; 05 
- - - - - - 0x01F46F 07:F45F: 3C        .byte con_chr_bank + $3C   ; 
- - - - - - 0x01F470 07:F460: 3C        .byte con_chr_bank + $3C   ; 
; 06 
- D 3 - - - 0x01F471 07:F461: 40        .byte con_chr_bank + $40   ; 
- D 3 - - - 0x01F472 07:F462: 42        .byte con_chr_bank + $42   ; 
; 07 
- D 3 - - - 0x01F473 07:F463: 40        .byte con_chr_bank + $40   ; 
- D 3 - - - 0x01F474 07:F464: 44        .byte con_chr_bank + $44   ; 
; 08 
- D 3 - - - 0x01F475 07:F465: 40        .byte con_chr_bank + $40   ; 
- D 3 - - - 0x01F476 07:F466: 46        .byte con_chr_bank + $46   ; 
; 09 
- D 3 - - - 0x01F477 07:F467: 40        .byte con_chr_bank + $40   ; 
- D 3 - - - 0x01F478 07:F468: 48        .byte con_chr_bank + $48   ; 
; 0A 
- D 3 - - - 0x01F479 07:F469: 40        .byte con_chr_bank + $40   ; 
- D 3 - - - 0x01F47A 07:F46A: 4A        .byte con_chr_bank + $4A   ; 
; 0B 
- D 3 - - - 0x01F47B 07:F46B: 4C        .byte con_chr_bank + $4C   ; 
- D 3 - - - 0x01F47C 07:F46C: 4A        .byte con_chr_bank + $4A   ; 
; 0C 
- D 3 - - - 0x01F47D 07:F46D: 50        .byte con_chr_bank + $50   ; 
- D 3 - - - 0x01F47E 07:F46E: 52        .byte con_chr_bank + $52   ; 
; 0D 
- - - - - - 0x01F47F 07:F46F: 50        .byte con_chr_bank + $50   ; 
- - - - - - 0x01F480 07:F470: 52        .byte con_chr_bank + $52   ; 
; 0E 
- D 3 - - - 0x01F481 07:F471: 50        .byte con_chr_bank + $50   ; 
- D 3 - - - 0x01F482 07:F472: 4E        .byte con_chr_bank + $4E   ; 
; 0F 
- D 3 - - - 0x01F483 07:F473: 54        .byte con_chr_bank + $54   ; 
- D 3 - - - 0x01F484 07:F474: 22        .byte con_chr_bank + $22   ; 
; 10 
- D 3 - - - 0x01F485 07:F475: 56        .byte con_chr_bank + $56   ; 
- D 3 - - - 0x01F486 07:F476: 60        .byte con_chr_bank + $60   ; 
; 11 
- D 3 - - - 0x01F487 07:F477: 56        .byte con_chr_bank + $56   ; 
- D 3 - - - 0x01F488 07:F478: 58        .byte con_chr_bank + $58   ; 
; 12 
- D 3 - - - 0x01F489 07:F479: 5A        .byte con_chr_bank + $5A   ; 
- D 3 - - - 0x01F48A 07:F47A: 58        .byte con_chr_bank + $58   ; 
; 13 
- D 3 - - - 0x01F48B 07:F47B: 5C        .byte con_chr_bank + $5C   ; 
- D 3 - - - 0x01F48C 07:F47C: 58        .byte con_chr_bank + $58   ; 
; 14 
- D 3 - - - 0x01F48D 07:F47D: 56        .byte con_chr_bank + $56   ; 
- D 3 - - - 0x01F48E 07:F47E: 5E        .byte con_chr_bank + $5E   ; 
; 15 
- D 3 - - - 0x01F48F 07:F47F: 5A        .byte con_chr_bank + $5A   ; 
- D 3 - - - 0x01F490 07:F480: 5E        .byte con_chr_bank + $5E   ; 
; 16 
- D 3 - - - 0x01F491 07:F481: 5C        .byte con_chr_bank + $5C   ; 
- D 3 - - - 0x01F492 07:F482: 5E        .byte con_chr_bank + $5E   ; 
; 17 
- D 3 - - - 0x01F493 07:F483: 62        .byte con_chr_bank + $62   ; 
- D 3 - - - 0x01F494 07:F484: 64        .byte con_chr_bank + $64   ; 
; 18 
- D 3 - - - 0x01F495 07:F485: 62        .byte con_chr_bank + $62   ; 
- D 3 - - - 0x01F496 07:F486: 66        .byte con_chr_bank + $66   ; 
; 19 
- D 3 - - - 0x01F497 07:F487: 68        .byte con_chr_bank + $68   ; 
- D 3 - - - 0x01F498 07:F488: 66        .byte con_chr_bank + $66   ; 
; 1A 
- D 3 - - - 0x01F499 07:F489: 68        .byte con_chr_bank + $68   ; 
- D 3 - - - 0x01F49A 07:F48A: 6A        .byte con_chr_bank + $6A   ; 
; 1B 
- D 3 - - - 0x01F49B 07:F48B: 7C        .byte con_chr_bank + $7C   ; 
- D 3 - - - 0x01F49C 07:F48C: 78        .byte con_chr_bank + $78   ; 
; 1C 
- D 3 - - - 0x01F49D 07:F48D: 7C        .byte con_chr_bank + $7C   ; 
- D 3 - - - 0x01F49E 07:F48E: 7E        .byte con_chr_bank + $7E   ; 
; 1D 
- D 3 - - - 0x01F49F 07:F48F: 7C        .byte con_chr_bank + $7C   ; 
- D 3 - - - 0x01F4A0 07:F490: 74        .byte con_chr_bank + $74   ; 
; 1E 
- D 3 - - - 0x01F4A1 07:F491: 7C        .byte con_chr_bank + $7C   ; 
- D 3 - - - 0x01F4A2 07:F492: 76        .byte con_chr_bank + $76   ; 
; 1F 
- D 3 - - - 0x01F4A3 07:F493: 70        .byte con_chr_bank + $70   ; 
- D 3 - - - 0x01F4A4 07:F494: 72        .byte con_chr_bank + $72   ; 
; 20 
- D 3 - - - 0x01F4A5 07:F495: 7C        .byte con_chr_bank + $7C   ; 
- D 3 - - - 0x01F4A6 07:F496: 7E        .byte con_chr_bank + $7E   ; 
; 21 
- D 3 - - - 0x01F4A7 07:F497: 7C        .byte con_chr_bank + $7C   ; 
- D 3 - - - 0x01F4A8 07:F498: 7A        .byte con_chr_bank + $7A   ; 
; 22 
- D 3 - - - 0x01F4A9 07:F499: 7C        .byte con_chr_bank + $7C   ; 
- D 3 - - - 0x01F4AA 07:F49A: 02        .byte con_chr_bank + $02   ; 



sub_0x01F4BE:
C - - - - - 0x01F4BE 07:F4AE: 98        TYA
C - - - - - 0x01F4BF 07:F4AF: A0 02     LDY #$02
sub_0x01F4C1:
loc_0x01F4C1:
; in
    ; A = 
    ; Y = 
C D 3 - - - 0x01F4C1 07:F4B1: 84 02     STY ram_0002_t42
C - - - - - 0x01F4C3 07:F4B3: 85 00     STA ram_0000_t8E
; / 08
C - - - - - 0x01F4C5 07:F4B5: 4A        LSR
C - - - - - 0x01F4C6 07:F4B6: 4A        LSR
C - - - - - 0x01F4C7 07:F4B7: 4A        LSR
C - - - - - 0x01F4C8 07:F4B8: 29 1E     AND #$1E
C - - - - - 0x01F4CA 07:F4BA: A8        TAY
C - - - - - 0x01F4CB 07:F4BB: B9 16 F5  LDA tbl_F516,Y
C - - - - - 0x01F4CE 07:F4BE: 85 03     STA ram_0003_t01_data
C - - - - - 0x01F4D0 07:F4C0: B9 17 F5  LDA tbl_F516 + $01,Y
C - - - - - 0x01F4D3 07:F4C3: 85 04     STA ram_0003_t01_data + $01
C - - - - - 0x01F4D5 07:F4C5: A5 00     LDA ram_0000_t8E
C - - - - - 0x01F4D7 07:F4C7: 29 0F     AND #$0F
C - - - - - 0x01F4D9 07:F4C9: A8        TAY
C - - - - - 0x01F4DA 07:F4CA: B1 03     LDA (ram_0003_t01_data),Y
C - - - - - 0x01F4DC 07:F4CC: 18        CLC
C - - - - - 0x01F4DD 07:F4CD: 65 03     ADC ram_0003_t01_data
C - - - - - 0x01F4DF 07:F4CF: 85 00     STA ram_0000_t00_data
C - - - - - 0x01F4E1 07:F4D1: A9 00     LDA #$00
C - - - - - 0x01F4E3 07:F4D3: A8        TAY ; 00
C - - - - - 0x01F4E4 07:F4D4: 65 04     ADC ram_0003_t01_data + $01
C - - - - - 0x01F4E6 07:F4D6: 85 01     STA ram_0000_t00_data + $01
sub_0x01F4E8:
C - - - - - 0x01F4E8 07:F4D8: B1 00     LDA (ram_0000_t00_data),Y
; / 04
C - - - - - 0x01F4EA 07:F4DA: 4A        LSR
C - - - - - 0x01F4EB 07:F4DB: 4A        LSR
C - - - - - 0x01F4EC 07:F4DC: 29 FC     AND #$FC
C - - - - - 0x01F4EE 07:F4DE: AA        TAX
C - - - - - 0x01F4EF 07:F4DF: B1 00     LDA (ram_0000_t00_data),Y
C - - - - - 0x01F4F1 07:F4E1: 29 0F     AND #$0F
C - - - - - 0x01F4F3 07:F4E3: 85 03     STA ram_0003_t24_loop_counter
C - - - - - 0x01F4F5 07:F4E5: C8        INY
loc_F4E6_loop:
bra_F4E6:
bra_F4E6_loop:
C D 3 - - - 0x01F4F6 07:F4E6: 8A        TXA
C - - - - - 0x01F4F7 07:F4E7: 29 03     AND #$03
C - - - - - 0x01F4F9 07:F4E9: F0 10     BEQ bra_F4FB_set_color_0F
C - - - - - 0x01F4FB 07:F4EB: B1 00     LDA (ram_0000_t00_data),Y
C - - - - - 0x01F4FD 07:F4ED: 9D B0 03  STA ram_palette_buffer,X
C - - - - - 0x01F500 07:F4F0: E8        INX
C - - - - - 0x01F501 07:F4F1: C8        INY
C - - - - - 0x01F502 07:F4F2: C6 03     DEC ram_0003_t24_loop_counter
C - - - - - 0x01F504 07:F4F4: D0 F0     BNE bra_F4E6_loop
C - - - - - 0x01F506 07:F4F6: A5 02     LDA ram_0002_t42
C - - - - - 0x01F508 07:F4F8: 85 2B     STA ram_002B_flags
C - - - - - 0x01F50A 07:F4FA: 60        RTS
bra_F4FB_set_color_0F:
C - - - - - 0x01F50B 07:F4FB: A9 0F     LDA #$0F
C - - - - - 0x01F50D 07:F4FD: 9D B0 03  STA ram_palette_buffer,X
C - - - - - 0x01F510 07:F500: E8        INX
C - - - - - 0x01F511 07:F501: 4C E6 F4  JMP loc_F4E6_loop



sub_0x01F514:
C - - - - - 0x01F514 07:F504: A2 00     LDX #$00
C - - - - - 0x01F516 07:F506: A5 02     LDA ram_0002_t42
C - - - - - 0x01F518 07:F508: C9 02     CMP #$02
C - - - - - 0x01F51A 07:F50A: D0 02     BNE bra_F50E
C - - - - - 0x01F51C 07:F50C: A2 10     LDX #$10
bra_F50E:
C - - - - - 0x01F51E 07:F50E: A9 0C     LDA #$0C
C - - - - - 0x01F520 07:F510: 85 03     STA ram_0003_t24_loop_counter
C - - - - - 0x01F522 07:F512: A0 00     LDY #$00
C - - - - - 0x01F524 07:F514: F0 D0     BEQ bra_F4E6    ; jmp



tbl_F516:
- D 3 - - - 0x01F526 07:F516: 2F FC     .word off_FC2F_00
- D 3 - - - 0x01F528 07:F518: A3 FC     .word off_FCA3_01



sub_0x01F52A:
; out
    ; C
        ; 0 = 
        ; 1 = 
ofs_020_0x01F52A_07:
; con_8113_07
C - - J - - 0x01F52A 07:F51A: 20 99 F5  JSR sub_F599
sub_0x01F52D:
C - - - - - 0x01F52D 07:F51D: AD F2 03  LDA ram_03F2
C - - - - - 0x01F530 07:F520: D0 42     BNE bra_F564
C - - - - - 0x01F532 07:F522: A9 08     LDA #$08
C - - - - - 0x01F534 07:F524: 8D F2 03  STA ram_03F2
C - - - - - 0x01F537 07:F527: AC F1 03  LDY ram_03F1
C - - - - - 0x01F53A 07:F52A: B9 A2 F5  LDA tbl_F5A2,Y
C - - - - - 0x01F53D 07:F52D: C9 FF     CMP #$FF
C - - - - - 0x01F53F 07:F52F: F0 29     BEQ bra_F55A
C - - - - - 0x01F541 07:F531: 85 00     STA ram_0000_t8F
C - - - - - 0x01F543 07:F533: A2 00     LDX #$00
C - - - - - 0x01F545 07:F535: A0 00     LDY #$00
bra_F537_loop:
C - - - - - 0x01F547 07:F537: A5 00     LDA ram_0000_t8F
C - - - - - 0x01F549 07:F539: C9 0F     CMP #$0F
C - - - - - 0x01F54B 07:F53B: F0 0A     BEQ bra_F547
C - - - - - 0x01F54D 07:F53D: B1 02     LDA (ram_0002_t05_data),Y
C - - - - - 0x01F54F 07:F53F: C5 00     CMP ram_0000_t8F
C - - - - - 0x01F551 07:F541: 90 04     BCC bra_F547
C - - - - - 0x01F553 07:F543: 29 0F     AND #$0F
C - - - - - 0x01F555 07:F545: 05 00     ORA ram_0000_t8F
bra_F547:
loc_F547:
C D 3 - - - 0x01F557 07:F547: 9D D0 03  STA ram_brightnes_buffer,X
C - - - - - 0x01F55A 07:F54A: E8        INX
C - - - - - 0x01F55B 07:F54B: C8        INY
C - - - - - 0x01F55C 07:F54C: E0 20     CPX #$20
C - - - - - 0x01F55E 07:F54E: D0 E7     BNE bra_F537_loop
C - - - - - 0x01F560 07:F550: EE F1 03  INC ram_03F1
C - - - - - 0x01F563 07:F553: A9 83     LDA #$80 + $01 + $02
C - - - - - 0x01F565 07:F555: 85 2B     STA ram_002B_flags
C - - - - - 0x01F567 07:F557: 4C 67 F5  JMP loc_F567
bra_F55A:
loc_0x01F56A:
C D 3 - - - 0x01F56A 07:F55A: A9 00     LDA #$00
C - - - - - 0x01F56C 07:F55C: 8D F1 03  STA ram_03F1
C - - - - - 0x01F56F 07:F55F: 8D F2 03  STA ram_03F2
C - - - - - 0x01F572 07:F562: 38        SEC
C - - - - - 0x01F573 07:F563: 60        RTS
bra_F564:
loc_0x01F574:
; bzk optimize
C D 3 - - - 0x01F574 07:F564: CE F2 03  DEC ram_03F2
loc_F567:
C D 3 - - - 0x01F577 07:F567: 18        CLC
C - - - - - 0x01F578 07:F568: 60        RTS



sub_0x01F579:
ofs_020_0x01F579_04:
; con_8113_04
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - J - - 0x01F579 07:F569: 20 99 F5  JSR sub_F599
sub_0x01F57C:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x01F57C 07:F56C: AD F2 03  LDA ram_03F2
C - - - - - 0x01F57F 07:F56F: D0 F3     BNE bra_F564
C - - - - - 0x01F581 07:F571: A9 08     LDA #$08
C - - - - - 0x01F583 07:F573: 8D F2 03  STA ram_03F2
C - - - - - 0x01F586 07:F576: AC F1 03  LDY ram_03F1
C - - - - - 0x01F589 07:F579: B9 A8 F5  LDA tbl_F5A8,Y
C - - - - - 0x01F58C 07:F57C: C9 FF     CMP #$FF
C - - - - - 0x01F58E 07:F57E: F0 DA     BEQ bra_F55A
C - - - - - 0x01F590 07:F580: 85 00     STA ram_0000_t8F
C - - - - - 0x01F592 07:F582: A2 00     LDX #$00
C - - - - - 0x01F594 07:F584: A0 00     LDY #$00
C - - - - - 0x01F596 07:F586: A5 00     LDA ram_0000_t8F
C - - - - - 0x01F598 07:F588: C9 0F     CMP #$0F
C - - - - - 0x01F59A 07:F58A: F0 BB     BEQ bra_F547
C - - - - - 0x01F59C 07:F58C: B1 02     LDA (ram_0002_t05_data),Y
C - - - - - 0x01F59E 07:F58E: C5 00     CMP ram_0000_t8F
C - - - - - 0x01F5A0 07:F590: 90 B5     BCC bra_F547
C - - - - - 0x01F5A2 07:F592: 29 0F     AND #$0F
C - - - - - 0x01F5A4 07:F594: 05 00     ORA ram_0000_t8F
C - - - - - 0x01F5A6 07:F596: 4C 47 F5  JMP loc_F547



sub_F599:
C - - - - - 0x01F5A9 07:F599: A9 B0     LDA #< ram_palette_buffer
C - - - - - 0x01F5AB 07:F59B: 85 02     STA ram_0002_t05_data
C - - - - - 0x01F5AD 07:F59D: A9 03     LDA #> ram_palette_buffer
C - - - - - 0x01F5AF 07:F59F: 85 03     STA ram_0002_t05_data + $01
C - - - - - 0x01F5B1 07:F5A1: 60        RTS



tbl_F5A2:
- D 3 - - - 0x01F5B2 07:F5A2: 30        .byte $30   ; 00 
- D 3 - - - 0x01F5B3 07:F5A3: 20        .byte $20   ; 01 
- D 3 - - - 0x01F5B4 07:F5A4: 10        .byte $10   ; 02 
- D 3 - - - 0x01F5B5 07:F5A5: 00        .byte $00   ; 03 
- D 3 - - - 0x01F5B6 07:F5A6: 0F        .byte $0F   ; 04 
- D 3 - - - 0x01F5B7 07:F5A7: FF        .byte $FF   ; 05 



tbl_F5A8:
tbl_0x01F5B8:
- D 3 - - - 0x01F5B8 07:F5A8: 0F        .byte $0F   ; 00 
- D 3 - - - 0x01F5B9 07:F5A9: 00        .byte $00   ; 01 
- D 3 - - - 0x01F5BA 07:F5AA: 10        .byte $10   ; 02 
- D 3 - - - 0x01F5BB 07:F5AB: 20        .byte $20   ; 03 
- D 3 - - - 0x01F5BC 07:F5AC: 30        .byte $30   ; 04 
- D 3 - - - 0x01F5BD 07:F5AD: FF        .byte $FF   ; 05 



tbl_F5AE:
tbl_0x01F5BE:
- D 3 - - - 0x01F5BE 07:F5AE: 01        .byte $01   ; 00 
- D 3 - - - 0x01F5BF 07:F5AF: 02        .byte $02   ; 01 
- D 3 - - - 0x01F5C0 07:F5B0: 04        .byte $04   ; 02 
- D 3 - - - 0x01F5C1 07:F5B1: 08        .byte $08   ; 03 
- D 3 - - - 0x01F5C2 07:F5B2: 10        .byte $10   ; 04 
- D 3 - - - 0x01F5C3 07:F5B3: 20        .byte $20   ; 05 
- D 3 - - - 0x01F5C4 07:F5B4: 40        .byte $40   ; 06 
- D 3 - - - 0x01F5C5 07:F5B5: 80        .byte $80   ; 07 



tbl_F5B6:
tbl_0x01F5C6:
- D 3 - - - 0x01F5C6 07:F5B6: 00        .byte $00, $00   ; 00 
- D 3 - - - 0x01F5C8 07:F5B8: 01        .byte $01, $10   ; 01 
- D 3 - - - 0x01F5CA 07:F5BA: 02        .byte $02, $20   ; 02 
- D 3 - - - 0x01F5CC 07:F5BC: 03        .byte $03, $30   ; 03 
- D 3 - - - 0x01F5CE 07:F5BE: 04        .byte $04, $40   ; 04 
- D 3 - - - 0x01F5D0 07:F5C0: 05        .byte $05, $50   ; 05 
- D 3 - - - 0x01F5D2 07:F5C2: 06        .byte $06, $60   ; 06 
- D 3 - - - 0x01F5D4 07:F5C4: 07        .byte $07, $70   ; 07 
- D 3 - - - 0x01F5D6 07:F5C6: 08        .byte $08, $80   ; 08 
- D 3 - - - 0x01F5D8 07:F5C8: 09        .byte $09, $90   ; 09 
- D 3 - - - 0x01F5DA 07:F5CA: 0A        .byte $0A, $A0   ; 0A 
- D 3 - - - 0x01F5DC 07:F5CC: 0B        .byte $0B, $B0   ; 0B 
- D 3 - - - 0x01F5DE 07:F5CE: 0C        .byte $0C, $C0   ; 0C 
- D 3 - - - 0x01F5E0 07:F5D0: 0D        .byte $0D, $D0   ; 0D 
- D 3 - - - 0x01F5E2 07:F5D2: 0E        .byte $0E, $E0   ; 0E 
- D 3 - - - 0x01F5E4 07:F5D4: 10        .byte $10, $00   ; 0F 
- D 3 - - - 0x01F5E6 07:F5D6: 11        .byte $11, $10   ; 10 
- D 3 - - - 0x01F5E8 07:F5D8: 12        .byte $12, $20   ; 11 
- D 3 - - - 0x01F5EA 07:F5DA: 13        .byte $13, $30   ; 12 
- D 3 - - - 0x01F5EC 07:F5DC: 14        .byte $14, $40   ; 13 
- D 3 - - - 0x01F5EE 07:F5DE: 15        .byte $15, $50   ; 14 
- D 3 - - - 0x01F5F0 07:F5E0: 16        .byte $16, $60   ; 15 
- D 3 - - - 0x01F5F2 07:F5E2: 17        .byte $17, $70   ; 16 
- D 3 - - - 0x01F5F4 07:F5E4: 18        .byte $18, $80   ; 17 
- D 3 - - - 0x01F5F6 07:F5E6: 19        .byte $19, $90   ; 18 
- D 3 - - - 0x01F5F8 07:F5E8: 1A        .byte $1A, $A0   ; 19 
- D 3 - - - 0x01F5FA 07:F5EA: 1B        .byte $1B, $B0   ; 1A 
- D 3 - - - 0x01F5FC 07:F5EC: 1C        .byte $1C, $C0   ; 1B 
- D 3 - - - 0x01F5FE 07:F5EE: 1D        .byte $1D, $D0   ; 1C 
- D 3 - - - 0x01F600 07:F5F0: 1E        .byte $1E, $E0   ; 1D 
- D 3 - - - 0x01F602 07:F5F2: 20        .byte $20, $00   ; 1E 
- - - - - - 0x01F604 07:F5F4: 21        .byte $21, $10   ; 1F 



sub_0x01F606:
C - - - - - 0x01F606 07:F5F6: A5 64     LDA ram_0064_lo
C - - - - - 0x01F608 07:F5F8: 85 03     STA ram_0003_t06_lo
C - - - - - 0x01F60A 07:F5FA: A5 63     LDA ram_0063_hi
C - - - - - 0x01F60C 07:F5FC: 85 02     STA ram_0002_t11_hi
C - - - - - 0x01F60E 07:F5FE: A9 01     LDA #con_prg_pair + $01
C - - - - - 0x01F610 07:F600: 20 4C F3  JSR sub_F34C_prg_bankswitch
C - - - - - 0x01F613 07:F603: 20 E4 A1  JSR sub_0x0161F4
C - - - - - 0x01F616 07:F606: A5 02     LDA ram_0002_t12_hi
C - - - - - 0x01F618 07:F608: 85 DC     STA ram_00DC
C - - - - - 0x01F61A 07:F60A: A5 03     LDA ram_0003_t06_lo
C - - - - - 0x01F61C 07:F60C: 85 DD     STA ram_00DD
C - - - - - 0x01F61E 07:F60E: 60        RTS



sub_0x01F61F:
; in
    ; ram_0003_t21
; out
    ; ram_0002_t35
    ; ram_0003_t22
C - - - - - 0x01F61F 07:F60F: A9 00     LDA #$00
C - - - - - 0x01F621 07:F611: 85 02     STA ram_0002_t47
C - - - - - 0x01F623 07:F613: A5 DD     LDA ram_00DD
C - - - - - 0x01F625 07:F615: 18        CLC
C - - - - - 0x01F626 07:F616: 65 03     ADC ram_0003_t21
C - - - - - 0x01F628 07:F618: 85 03     STA ram_0003_t22
C - - - - - 0x01F62A 07:F61A: 90 07     BCC bra_F623
C - - - - - 0x01F62C 07:F61C: E6 02     INC ram_0002_t47
C - - - - - 0x01F62E 07:F61E: 18        CLC
C - - - - - 0x01F62F 07:F61F: 69 10     ADC #$10
C - - - - - 0x01F631 07:F621: 85 03     STA ram_0003_t22
bra_F623:
C - - - - - 0x01F633 07:F623: A5 02     LDA ram_0002_t47
C - - - - - 0x01F635 07:F625: 65 DC     ADC ram_00DC
C - - - - - 0x01F637 07:F627: 85 02     STA ram_0002_t35
C - - - - - 0x01F639 07:F629: A5 03     LDA ram_0003_t22
C - - - - - 0x01F63B 07:F62B: 38        SEC
C - - - - - 0x01F63C 07:F62C: E9 F0     SBC #$F0
C - - - - - 0x01F63E 07:F62E: 90 04     BCC bra_F634_RTS
C - - - - - 0x01F640 07:F630: E6 02     INC ram_0002_t35
C - - - - - 0x01F642 07:F632: 85 03     STA ram_0003_t22
bra_F634_RTS:
C - - - - - 0x01F644 07:F634: 60        RTS



sub_0x01F645_set_default_3_lives:
loc_0x01F645_set_default_3_lives:
C D 3 - - - 0x01F645 07:F635: A9 03     LDA #$03
C - - - - - 0x01F647 07:F637: 85 B3     STA ram_lives
C - - - - - 0x01F649 07:F639: 85 B4     STA ram_lives + $01
C - - - - - 0x01F64B 07:F63B: 85 B5     STA ram_lives + $02
C - - - - - 0x01F64D 07:F63D: 85 B6     STA ram_lives + $03
C - - - - - 0x01F64F 07:F63F: 60        RTS



sub_0x01F650:
C - - - - - 0x01F650 07:F640: A9 00     LDA #$00
C - - - - - 0x01F652 07:F642: 9D EC 07  STA ram_07EC,X
C - - - - - 0x01F655 07:F645: 9D E8 07  STA ram_07E8,X
C - - - - - 0x01F658 07:F648: 9D EA 07  STA ram_07EA,X
C - - - - - 0x01F65B 07:F64B: 9D E6 07  STA ram_07E6,X
C - - - - - 0x01F65E 07:F64E: 60        RTS



tbl_0x01F679:
; bzk optimize, переместить
;                                              +---------- 
;                                              |    +----- 
;                                              |    |
- D 3 - - - 0x01F679 07:F669: 00        .byte $00, $00   ; 00 
- D 3 - - - 0x01F67B 07:F66B: 00        .byte $00, $FF   ; 01 
- D 3 - - - 0x01F67D 07:F66D: 04        .byte $04, $FD   ; 02 
- D 3 - - - 0x01F67F 07:F66F: 02        .byte $02, $00   ; 03 
- D 3 - - - 0x01F681 07:F671: 04        .byte $04, $04   ; 04 
- D 3 - - - 0x01F683 07:F673: 00        .byte $00, $02   ; 05 
- D 3 - - - 0x01F685 07:F675: FD        .byte $FD, $04   ; 06 
- D 3 - - - 0x01F687 07:F677: FF        .byte $FF, $00   ; 07 
- D 3 - - - 0x01F689 07:F679: FD        .byte $FD, $FD   ; 08 



tbl_0x01F68B:
; bzk optimize, переместить
- D 3 - - - 0x01F68B 07:F67B: 38 01     .word $0138 ; 00 
- D 3 - - - 0x01F68D 07:F67D: EA 00     .word $00EA ; 02 
- D 3 - - - 0x01F68F 07:F67F: 30 01     .word $0130 ; 04 
- D 3 - - - 0x01F691 07:F681: E4 00     .word $00E4 ; 06 
- D 3 - - - 0x01F693 07:F683: 20 01     .word $0120 ; 08 
- D 3 - - - 0x01F695 07:F685: D8 00     .word $00D8 ; 0A 
- D 3 - - - 0x01F697 07:F687: 3F 01     .word $013F ; 0C 
- D 3 - - - 0x01F699 07:F689: F0 00     .word $00F0 ; 0E 
- D 3 - - - 0x01F69B 07:F68B: A0 00     .word $00A0 ; 10 
- D 3 - - - 0x01F69D 07:F68D: 78 00     .word $0078 ; 12 



sub_0x01F69F_get_stage_view_type:
; out
    ; Z
        ; 0 = upper view (stages 01/03 (2/4))
        ; 1 = size view (stages 00/02/04 (1/3/5))
C - - - - - 0x01F69F 07:F68F: A5 75     LDA ram_stage
C - - - - - 0x01F6A1 07:F691: 29 01     AND #$01
C - - - - - 0x01F6A3 07:F693: 60        RTS



sub_0x01F6BF:
; bzk optimize, переместить
C - - - - - 0x01F6BF 07:F6AF: A9 00     LDA #$00
C - - - - - 0x01F6C1 07:F6B1: 85 D3     STA ram_00D3
C - - - - - 0x01F6C3 07:F6B3: A9 01     LDA #$01
C - - - - - 0x01F6C5 07:F6B5: 8D 59 03  STA ram_0359_flag
C - - - - - 0x01F6C8 07:F6B8: AD 40 03  LDA ram_0340_flag
C - - - - - 0x01F6CB 07:F6BB: 09 80     ORA #$80
C - - - - - 0x01F6CD 07:F6BD: 8D 40 03  STA ram_0340_flag
C - - - - - 0x01F6D0 07:F6C0: 60        RTS



sub_F6C1:
loc_0x01F6D1:
sub_0x01F6D1:
C D 3 - - - 0x01F6D1 07:F6C1: A9 08     LDA #$08
C - - - - - 0x01F6D3 07:F6C3: 8D A1 03  STA ram_03A1_irq_timer
C - - - - - 0x01F6D6 07:F6C6: 60        RTS



tbl_0x01F6D7:
;                                              +---------- pos_X
;                                              |    +----- pos_Y
;                                              |    |
- D 3 - - - 0x01F6D7 07:F6C7: 70        .byte $70, $A8   ; 00 stage 1
- D 3 - - - 0x01F6D9 07:F6C9: 80        .byte $80, $70   ; 02 stage 2
- D 3 - - - 0x01F6DB 07:F6CB: 80        .byte $80, $A9   ; 04 stage 3
- D 3 - - - 0x01F6DD 07:F6CD: 80        .byte $80, $90   ; 06 stage 4
- D 3 - - - 0x01F6DF 07:F6CF: 80        .byte $80, $90   ; 08 stage 5



sub_0x01F6E1:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x01F6E1 07:F6D1: A5 75     LDA ram_stage
C - - - - - 0x01F6E3 07:F6D3: C9 01     CMP #$01
C - - - - - 0x01F6E5 07:F6D5: D0 29     BNE bra_F700
C - - - - - 0x01F6E7 07:F6D7: A5 1B     LDA ram_001B_t02_hi
C - - - - - 0x01F6E9 07:F6D9: 30 1B     BMI bra_F6F6
C - - - - - 0x01F6EB 07:F6DB: AD 40 03  LDA ram_0340_flag
C - - - - - 0x01F6EE 07:F6DE: F0 20     BEQ bra_F700
C - - - - - 0x01F6F0 07:F6E0: AD 82 07  LDA ram_0782_unk
C - - - - - 0x01F6F3 07:F6E3: 18        CLC
C - - - - - 0x01F6F4 07:F6E4: 6D 83 07  ADC ram_0782_unk + $01
C - - - - - 0x01F6F7 07:F6E7: C9 2F     CMP #$2F
C - - - - - 0x01F6F9 07:F6E9: 90 04     BCC bra_F6EF
- - - - - - 0x01F6FB 07:F6EB: A9 01     LDA #$01
- - - - - - 0x01F6FD 07:F6ED: D0 0E     BNE bra_F6FD    ; jmp
bra_F6EF:
C - - - - - 0x01F6FF 07:F6EF: AD 59 03  LDA ram_0359_flag
C - - - - - 0x01F702 07:F6F2: D0 0C     BNE bra_F700
C - - - - - 0x01F704 07:F6F4: 18        CLC
C - - - - - 0x01F705 07:F6F5: 60        RTS
bra_F6F6:
C - - - - - 0x01F706 07:F6F6: AD 40 03  LDA ram_0340_flag
C - - - - - 0x01F709 07:F6F9: 30 05     BMI bra_F700
C - - - - - 0x01F70B 07:F6FB: A9 00     LDA #$00
bra_F6FD:
C - - - - - 0x01F70D 07:F6FD: 8D 59 03  STA ram_0359_flag
bra_F700:
C - - - - - 0x01F710 07:F700: 38        SEC
C - - - - - 0x01F711 07:F701: 60        RTS



loc_0x01F712:
sub_0x01F712:
C D 3 - - - 0x01F712 07:F702: A9 00     LDA #$00
C - - - - - 0x01F714 07:F704: 20 77 D2  JSR sub_0x01D287_write_to_buffer___unk_X
C - - - - - 0x01F717 07:F707: 4C 85 D5  JMP loc_0x01D595



sub_0x01F71F:
; bzk optimize, переместить
C - - - - - 0x01F71F 07:F70F: B9 AA 07  LDA ram_07AA_unk,Y
C - - - - - 0x01F722 07:F712: 29 0F     AND #$0F
C - - - - - 0x01F724 07:F714: C9 03     CMP #$03
C - - - - - 0x01F726 07:F716: F0 0F     BEQ bra_F727_RTS
C - - - - - 0x01F728 07:F718: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x01F72B 07:F71B: D9 68 06  CMP ram_obj_pos_Y,Y
C - - - - - 0x01F72E 07:F71E: B0 07     BCS bra_F727_RTS
- - - - - - 0x01F730 07:F720: B9 50 9F  LDA tbl_9F50,Y
- - - - - - 0x01F733 07:F723: 25 00     AND ram_0000_t75
- - - - - - 0x01F735 07:F725: 85 00     STA ram_0000_t75
bra_F727_RTS:
C - - - - - 0x01F737 07:F727: 60        RTS



tbl_9F50:
- - - - - - 0x009F60 02:9F50: FE        .byte $FE   ; 00 
- - - - - - 0x009F61 02:9F51: FD        .byte $FD   ; 01 



vec_F728_IRQ:
C - - - - - 0x01F738 07:F728: 48        PHA
C - - - - - 0x01F739 07:F729: 8A        TXA
C - - - - - 0x01F73A 07:F72A: 48        PHA
C - - - - - 0x01F73B 07:F72B: 98        TYA
C - - - - - 0x01F73C 07:F72C: 48        PHA
                                        LDA #$80
C - - - - - 0x01F73D 07:F72D: 8D 00 E0  STA $5204
C - - - - - 0x01F743 07:F733: 20 4A F7  JSR sub_F74A_execute_indirect_jump_004C
C - - - - - 0x01F746 07:F736: A5 2A     LDA ram_002A
C - - - - - 0x01F748 07:F738: C9 FF     CMP #$FF
C - - - - - 0x01F74A 07:F73A: D0 03     BNE bra_F73F
                                        LDA #$00
C - - - - - 0x01F74C 07:F73C: 8D 00 E0  STA $5204
bra_F73F:
C - - - - - 0x01F754 07:F744: 68        PLA
C - - - - - 0x01F755 07:F745: A8        TAY
C - - - - - 0x01F756 07:F746: 68        PLA
C - - - - - 0x01F757 07:F747: AA        TAX
C - - - - - 0x01F758 07:F748: 68        PLA
C - - - - - 0x01F759 07:F749: 40        RTI



sub_F74A_execute_indirect_jump_004C:
C - - - - - 0x01F75A 07:F74A: 6C 4C 00  JMP (ram_004C_t02_jmp)



tbl_F74D_irq_handler_index:
; indexes for 0x01F78B
- - - - - - 0x01F75D 07:F74D: 5D F7     .word off_F75D_00   ; never used
- D 3 - - - 0x01F75F 07:F74F: 5D F7     .word off_F75D_01
- D 3 - - - 0x01F761 07:F751: 60 F7     .word off_F760_02
- D 3 - - - 0x01F763 07:F753: 64 F7     .word off_F764_03
- D 3 - - - 0x01F765 07:F755: 68 F7     .word off_F768_04
- D 3 - - - 0x01F767 07:F757: 6D F7     .word off_F76D_05
- D 3 - - - 0x01F769 07:F759: 73 F7     .word off_F773_06
- D 3 - - - 0x01F76B 07:F75B: 76 F7     .word off_F776_07



off_F75D_00:
off_F75D_01:
- D 3 - I - 0x01F76D 07:F75D: 00        .byte con_irq_00   ; 00 
- D 3 - I - 0x01F76E 07:F75E: 01        .byte con_irq_01   ; 01 
- D 3 - I - 0x01F76F 07:F75F: FF        .byte $FF   ; 02 



off_F760_02:
- D 3 - I - 0x01F770 07:F760: 02        .byte con_irq_02   ; 00 
- D 3 - I - 0x01F771 07:F761: 00        .byte con_irq_00   ; 01 
- D 3 - I - 0x01F772 07:F762: 01        .byte con_irq_01   ; 02 
- D 3 - I - 0x01F773 07:F763: FF        .byte $FF   ; 03 



off_F764_03:
- D 3 - I - 0x01F774 07:F764: 03        .byte con_irq_03   ; 00 
- D 3 - I - 0x01F775 07:F765: 00        .byte con_irq_00   ; 01 
- D 3 - I - 0x01F776 07:F766: 01        .byte con_irq_01   ; 02 
- D 3 - I - 0x01F777 07:F767: FF        .byte $FF   ; 03 



off_F768_04:
- D 3 - I - 0x01F778 07:F768: 04        .byte con_irq_04   ; 00 
- D 3 - I - 0x01F779 07:F769: 03        .byte con_irq_03   ; 01 
- D 3 - I - 0x01F77A 07:F76A: 00        .byte con_irq_00   ; 02 
- D 3 - I - 0x01F77B 07:F76B: 01        .byte con_irq_01   ; 03 
- D 3 - I - 0x01F77C 07:F76C: FF        .byte $FF   ; 04 



off_F76D_05:
- D 3 - I - 0x01F77D 07:F76D: 04        .byte con_irq_04   ; 00 
- D 3 - I - 0x01F77E 07:F76E: 03        .byte con_irq_03   ; 01 
- D 3 - I - 0x01F77F 07:F76F: 05        .byte con_irq_05   ; 02 
- D 3 - I - 0x01F780 07:F770: 00        .byte con_irq_00   ; 03 
- D 3 - I - 0x01F781 07:F771: 01        .byte con_irq_01   ; 04 
- D 3 - I - 0x01F782 07:F772: FF        .byte $FF   ; 05 



off_F773_06:
- D 3 - I - 0x01F783 07:F773: 06        .byte con_irq_06   ; 00 
- D 3 - I - 0x01F784 07:F774: 07        .byte con_irq_07   ; 01 
- D 3 - I - 0x01F785 07:F775: FF        .byte $FF   ; 02 



off_F776_07:
- D 3 - I - 0x01F786 07:F776: 08        .byte con_irq_08   ; 00 
- D 3 - I - 0x01F787 07:F777: 03        .byte con_irq_03   ; 01 
- D 3 - I - 0x01F788 07:F778: 00        .byte con_irq_00   ; 02 
- D 3 - I - 0x01F789 07:F779: 01        .byte con_irq_01   ; 03 
- D 3 - I - 0x01F78A 07:F77A: FF        .byte $FF   ; 04 



tbl_F77B_irq_handlers:
; see con_irq
- D 3 - - - 0x01F78B 07:F77B: 47 F8     .word ofs_irq_handler_F847_00
- D 3 - - - 0x01F78D 07:F77D: 72 F8     .word ofs_irq_handler_F872_01
- D 3 - - - 0x01F78F 07:F77F: 28 F8     .word ofs_irq_handler_F828_02
- D 3 - - - 0x01F791 07:F781: E8 F7     .word ofs_irq_handler_F7E8_03
- D 3 - - - 0x01F793 07:F783: B4 F7     .word ofs_irq_handler_F7B4_04
- D 3 - - - 0x01F795 07:F785: CE F7     .word ofs_irq_handler_F7CE_05
- D 3 - - - 0x01F797 07:F787: 11 F8     .word ofs_irq_handler_F811_06
- D 3 - - - 0x01F799 07:F789: 24 F8     .word ofs_irq_handler_F824_07
- D 3 - - - 0x01F79B 07:F78B: 8D F7     .word ofs_irq_handler_F78D_08



ofs_irq_handler_F78D_08:
; con_irq_08
C - - J - - 0x01F79D 07:F78D: A5 D6     LDA ram_00D6
                                        CLC
                                        ADC ram_prev_5203
                                        STA ram_prev_5203
                                        INC ram_prev_5203
C - - - - - 0x01F79F 07:F78F: 8D 00 C0  STA $5203
C - - - - - 0x01F7A2 07:F792: A0 22     LDY #$22
bra_F794_garbage_loop:
C - - - - - 0x01F7A4 07:F794: 88        DEY
C - - - - - 0x01F7A5 07:F795: D0 FD     BNE bra_F794_garbage_loop
C - - - - - 0x01F7A7 07:F797: AD 02 20  LDA $2002
C - - - - - 0x01F7AA 07:F79A: A9 21     LDA #> $2180
C - - - - - 0x01F7AC 07:F79C: 8D 06 20  STA $2006
C - - - - - 0x01F7AF 07:F79F: A9 80     LDA #< $2180
C - - - - - 0x01F7B1 07:F7A1: 8D 06 20  STA $2006
C - - - - - 0x01F7B4 07:F7A4: AD 02 20  LDA $2002
C - - - - - 0x01F7B7 07:F7A7: A5 FD     LDA ram_scroll_X
C - - - - - 0x01F7B9 07:F7A9: 8D 05 20  STA $2005
C - - - - - 0x01F7BC 07:F7AC: A9 00     LDA #$00
C - - - - - 0x01F7BE 07:F7AE: 8D 05 20  STA $2005
C - - - - - 0x01F7C1 07:F7B1: 4C 9E F8  JMP loc_F89E_select_irq_handler



ofs_irq_handler_F7B4_04:
; con_irq_04
C - - J - - 0x01F7C4 07:F7B4: A5 D6     LDA ram_00D6
                                        CLC
                                        ADC ram_prev_5203
                                        STA ram_prev_5203
                                        INC ram_prev_5203
C - - - - - 0x01F7C6 07:F7B6: 8D 00 C0  STA $5203
C - - - - - 0x01F7C9 07:F7B9: A0 20     LDY #$20
bra_F7BB_garbage_loop:
C - - - - - 0x01F7CB 07:F7BB: 88        DEY
C - - - - - 0x01F7CC 07:F7BC: D0 FD     BNE bra_F7BB_garbage_loop
C - - - - - 0x01F7CE 07:F7BE: AD 02 20  LDA $2002
C - - - - - 0x01F7D1 07:F7C1: A9 2C     LDA #> $2C80
C - - - - - 0x01F7D3 07:F7C3: 8D 06 20  STA $2006
C - - - - - 0x01F7D6 07:F7C6: A9 80     LDA #< $2C80
C - - - - - 0x01F7D8 07:F7C8: 8D 06 20  STA $2006
C - - - - - 0x01F7DB 07:F7CB: 4C 9E F8  JMP loc_F89E_select_irq_handler



ofs_irq_handler_F7CE_05:
; con_irq_05
C - - J - - 0x01F7DE 07:F7CE: A5 D9     LDA ram_00D9
                                        CLC
                                        ADC ram_prev_5203
                                        STA ram_prev_5203
                                        INC ram_prev_5203
C - - - - - 0x01F7E0 07:F7D0: 8D 00 C0  STA $5203
C - - - - - 0x01F7E3 07:F7D3: A0 20     LDY #$20
bra_F7D5_garbage_loop:
C - - - - - 0x01F7E5 07:F7D5: 88        DEY
C - - - - - 0x01F7E6 07:F7D6: D0 FD     BNE bra_F7D5_garbage_loop
C - - - - - 0x01F7E8 07:F7D8: AD 02 20  LDA $2002
C - - - - - 0x01F7EB 07:F7DB: A5 DB     LDA ram_00DB
C - - - - - 0x01F7ED 07:F7DD: 8D 06 20  STA $2006
C - - - - - 0x01F7F0 07:F7E0: A5 DA     LDA ram_00DA
C - - - - - 0x01F7F2 07:F7E2: 8D 06 20  STA $2006
C - - - - - 0x01F7F5 07:F7E5: 4C 9E F8  JMP loc_F89E_select_irq_handler



ofs_irq_handler_F7E8_03:
; con_irq_03
C - - J - - 0x01F7F8 07:F7E8: A5 CA     LDA ram_00CA_scanline
                                        CLC
                                        ADC ram_prev_5203
                                        STA ram_prev_5203
                                        INC ram_prev_5203
C - - - - - 0x01F7FA 07:F7EA: 8D 00 C0  STA $5203
C - - - - - 0x01F7FD 07:F7ED: A0 21     LDY #$21
bra_F7EF_garbage_loop:
C - - - - - 0x01F7FF 07:F7EF: 88        DEY
C - - - - - 0x01F800 07:F7F0: D0 FD     BNE bra_F7EF_garbage_loop
C - - - - - 0x01F802 07:F7F2: EA        NOP
C - - - - - 0x01F803 07:F7F3: EA        NOP
C - - - - - 0x01F804 07:F7F4: AD 02 20  LDA $2002
C - - - - - 0x01F807 07:F7F7: A5 D7     LDA ram_00D7
C - - - - - 0x01F809 07:F7F9: 8D 06 20  STA $2006
C - - - - - 0x01F80C 07:F7FC: A5 D8     LDA ram_00D8
C - - - - - 0x01F80E 07:F7FE: 8D 06 20  STA $2006
C - - - - - 0x01F811 07:F801: AD 02 20  LDA $2002
C - - - - - 0x01F814 07:F804: A5 50     LDA ram_0050_t02_scroll_X
C - - - - - 0x01F816 07:F806: 8D 05 20  STA $2005
C - - - - - 0x01F819 07:F809: A5 51     LDA ram_0051_t02_scroll_Y
C - - - - - 0x01F81B 07:F80B: 8D 05 20  STA $2005
C - - - - - 0x01F81E 07:F80E: 4C 9E F8  JMP loc_F89E_select_irq_handler



ofs_irq_handler_F811_06:
; con_irq_06
C - - J - - 0x01F821 07:F811: A5 CA     LDA ram_00CA_scanline
                                        CLC
                                        ADC ram_prev_5203
                                        STA ram_prev_5203
                                        INC ram_prev_5203
C - - - - - 0x01F823 07:F813: 8D 00 C0  STA $5203
C - - - - - 0x01F826 07:F816: AD 02 20  LDA $2002
C - - - - - 0x01F829 07:F819: A9 00     LDA #$00
C - - - - - 0x01F82B 07:F81B: 8D 05 20  STA $2005
C - - - - - 0x01F82E 07:F81E: 8D 05 20  STA $2005
C - - - - - 0x01F831 07:F821: 4C 9E F8  JMP loc_F89E_select_irq_handler



ofs_irq_handler_F824_07:
; con_irq_07
C - - J - - 0x01F834 07:F824: A9 FF     LDA #$FF
C - - - - - 0x01F836 07:F826: D0 02     BNE bra_F82A    ; jmp



ofs_irq_handler_F828_02:
; con_irq_02
C - - J - - 0x01F838 07:F828: A5 CA     LDA ram_00CA_scanline
bra_F82A:
                                        CLC
                                        ADC ram_prev_5203
                                        STA ram_prev_5203
                                        INC ram_prev_5203
C - - - - - 0x01F83A 07:F82A: 8D 00 C0  STA $5203
C - - - - - 0x01F83D 07:F82D: A0 16     LDY #$16
bra_F82F_garbage_loop:
C - - - - - 0x01F83F 07:F82F: 88        DEY
C - - - - - 0x01F840 07:F830: D0 FD     BNE bra_F82F_garbage_loop
C - - - - - 0x01F842 07:F832: AD 02 20  LDA $2002
C - - - - - 0x01F845 07:F835: A5 50     LDA ram_0050_t01_scroll_X
C - - - - - 0x01F847 07:F837: 8D 05 20  STA $2005
C - - - - - 0x01F84A 07:F83A: A5 51     LDA ram_0051_t01_scroll_Y
C - - - - - 0x01F84C 07:F83C: 8D 05 20  STA $2005
C - - - - - 0x01F84F 07:F83F: A5 52     LDA ram_0052_for_2000
C - - - - - 0x01F851 07:F841: 8D 00 20  STA $2000
C - - - - - 0x01F854 07:F844: 4C 9E F8  JMP loc_F89E_select_irq_handler



ofs_irq_handler_F847_00:
; con_irq_00
C - - J - - 0x01F857 07:F847: A9 1D     LDA #$1D
                                        CLC
                                        ADC ram_prev_5203
                                        STA ram_prev_5203
                                        INC ram_prev_5203
C - - - - - 0x01F859 07:F849: 8D 00 C0  STA $5203
C - - - - - 0x01F85C 07:F84C: A0 0B     LDY #$0B
bra_F84E_garbage_loop:
C - - - - - 0x01F85E 07:F84E: 88        DEY
C - - - - - 0x01F85F 07:F84F: D0 FD     BNE bra_F84E_garbage_loop
C - - - - - 0x01F861 07:F851: AD 02 20  LDA $2002
C - - - - - 0x01F864 07:F854: A5 CB     LDA ram_00CB_ppu_addr_hi
C - - - - - 0x01F866 07:F856: A6 CC     LDX ram_00CC_ppu_addr_lo
C - - - - - 0x01F868 07:F858: 8D 06 20  STA $2006
C - - - - - 0x01F86B 07:F85B: 8E 06 20  STX $2006
C - - - - - 0x01F86E 07:F85E: AD 02 20  LDA $2002
C - - - - - 0x01F871 07:F861: 8C 05 20  STY $2005
C - - - - - 0x01F874 07:F864: 8C 05 20  STY $2005
C - - - - - 0x01F877 07:F867: A4 3F     LDY ram_garbage_loop_counter
bra_F869_garbage_loop:
C - - - - - 0x01F879 07:F869: 88        DEY
C - - - - - 0x01F87A 07:F86A: D0 FD     BNE bra_F869_garbage_loop
C - - - - - 0x01F87C 07:F86C: 20 63 FF  JSR sub_FF63
C - - - - - 0x01F87F 07:F86F: 4C 9E F8  JMP loc_F89E_select_irq_handler



ofs_irq_handler_F872_01:
; con_irq_01
                                        LDA #$00
C - - J - - 0x01F882 07:F872: 8D 00 E0  STA $5204
C - - - - - 0x01F885 07:F875: AD A1 03  LDA ram_03A1_irq_timer
C - - - - - 0x01F888 07:F878: F0 1C     BEQ bra_F896
C - - - - - 0x01F88A 07:F87A: A5 39     LDA ram_buffer_index_2
C - - - - - 0x01F88C 07:F87C: F0 18     BEQ bra_F896
C - - - - - 0x01F88E 07:F87E: A0 0D     LDY #$0D
bra_F880_garbage_loop:
C - - - - - 0x01F890 07:F880: 88        DEY
C - - - - - 0x01F891 07:F881: D0 FD     BNE bra_F880_garbage_loop
; bzk this CMP is for wasting 3 cycles
C - - - - - 0x01F893 07:F883: C5 00     CMP ram_0000_temp
C - - - - - 0x01F895 07:F885: AD 02 20  LDA $2002
C - - - - - 0x01F898 07:F888: A9 00     LDA #$00
C - - - - - 0x01F89A 07:F88A: 8D 01 20  STA $2001
C - - - - - 0x01F89D 07:F88D: 20 79 D6  JSR sub_0x01D689
C - - - - - 0x01F8A0 07:F890: CE A1 03  DEC ram_03A1_irq_timer
C - - - - - 0x01F8A3 07:F893: 4C 9E F8  JMP loc_F89E_select_irq_handler
bra_F896:
C - - - - - 0x01F8A6 07:F896: A0 08     LDY #$08
bra_F898_garbage_loop:
C - - - - - 0x01F8A8 07:F898: 88        DEY
C - - - - - 0x01F8A9 07:F899: D0 FD     BNE bra_F898_garbage_loop
C - - - - - 0x01F8AB 07:F89B: 20 4F FF  JSR sub_FF4F
loc_F89E_select_irq_handler:
sub_F89E_select_irq_handler:
C D 3 - - - 0x01F8AE 07:F89E: A5 C8     LDA ram_copy_irq_handler
C - - - - - 0x01F8B0 07:F8A0: F0 23     BEQ bra_F8C5
; 01-FF
C - - - - - 0x01F8B2 07:F8A2: 0A        ASL
C - - - - - 0x01F8B3 07:F8A3: A8        TAY
C - - - - - 0x01F8B4 07:F8A4: B9 4D F7  LDA tbl_F74D_irq_handler_index,Y
C - - - - - 0x01F8B7 07:F8A7: 85 4C     STA ram_004C_t01_data
C - - - - - 0x01F8B9 07:F8A9: B9 4E F7  LDA tbl_F74D_irq_handler_index + $01,Y
C - - - - - 0x01F8BC 07:F8AC: 85 4D     STA ram_004C_t01_data + $01
C - - - - - 0x01F8BE 07:F8AE: A4 2A     LDY ram_002A
C - - - - - 0x01F8C0 07:F8B0: B1 4C     LDA (ram_004C_t01_data),Y
C - - - - - 0x01F8C2 07:F8B2: C9 FF     CMP #$FF
C - - - - - 0x01F8C4 07:F8B4: F0 0F     BEQ bra_F8C5
C - - - - - 0x01F8C6 07:F8B6: 0A        ASL
C - - - - - 0x01F8C7 07:F8B7: A8        TAY
C - - - - - 0x01F8C8 07:F8B8: B9 7B F7  LDA tbl_F77B_irq_handlers,Y
C - - - - - 0x01F8CB 07:F8BB: 85 4C     STA ram_004C_t02_jmp
C - - - - - 0x01F8CD 07:F8BD: B9 7C F7  LDA tbl_F77B_irq_handlers + $01,Y
C - - - - - 0x01F8D0 07:F8C0: 85 4D     STA ram_004C_t02_jmp + $01
C - - - - - 0x01F8D2 07:F8C2: E6 2A     INC ram_002A
C - - - - - 0x01F8D4 07:F8C4: 60        RTS
bra_F8C5:
C - - - - - 0x01F8D5 07:F8C5: 85 2A     STA ram_002A
C - - - - - 0x01F8D7 07:F8C7: 60        RTS



sub_0x01F8D8_prepare_irq_data:
C - - - - - 0x01F8D8 07:F8C8: A0 00     LDY #$00
sub_0x01F8DA_prepare_irq_data:
loc_0x01F8DA_prepare_irq_data:
C D 3 - - - 0x01F8DA 07:F8CA: B9 DF F8  LDA tbl_F8DF,Y
C - - - - - 0x01F8DD 07:F8CD: 85 4E     STA ram_next_scanline
C - - - - - 0x01F8DF 07:F8CF: B9 E0 F8  LDA tbl_F8DF + $01,Y
C - - - - - 0x01F8E2 07:F8D2: 85 4F     STA ram_004F
C - - - - - 0x01F8E4 07:F8D4: B9 E1 F8  LDA tbl_F8DF + $02,Y
C - - - - - 0x01F8E7 07:F8D7: 85 76     STA ram_irq_handler
; bzk optimize, 4th byte is always 01
C - - - - - 0x01F8E9 07:F8D9: B9 E2 F8  LDA tbl_F8DF + $03,Y
C - - - - - 0x01F8EC 07:F8DC: 85 5A     STA ram_005A_flag
C - - - - - 0x01F8EE 07:F8DE: 60        RTS



tbl_F8DF:
; 00 
- D 3 - - - 0x01F8EF 07:F8DF: BE        .byte $BE   ; scanline
- D 3 - - - 0x01F8F0 07:F8E0: 1D        .byte $1D   ; 
- D 3 - - - 0x01F8F1 07:F8E1: 01        .byte con_irq_01   ; 
- D 3 - - - 0x01F8F2 07:F8E2: 01        .byte $01   ; 
; 04 
- D 3 - - - 0x01F8F3 07:F8E3: 5F        .byte $5F   ; scanline
- D 3 - - - 0x01F8F4 07:F8E4: 5E        .byte $5E   ; 
- D 3 - - - 0x01F8F5 07:F8E5: 02        .byte con_irq_02   ; 
- D 3 - - - 0x01F8F6 07:F8E6: 01        .byte $01   ; 



sub_0x01F8F7:
C - - - - - 0x01F8F7 07:F8E7: A4 18     LDY ram_0018_t09_object_index
C - - - - - 0x01F8F9 07:F8E9: 84 16     STY ram_0016_t09_object_index
C - - - - - 0x01F8FB 07:F8EB: B9 20 07  LDA ram_0720_obj,Y
C D 3 - - - 0x01F908 07:F8F8: 29 3F     AND #$3F
C - - - - - 0x01F90A 07:F8FA: 0A        ASL
C - - - - - 0x01F90B 07:F8FB: A8        TAY
C - - - - - 0x01F90C 07:F8FC: B9 4A F9  LDA tbl_F94A,Y
C - - - - - 0x01F90F 07:F8FF: 85 08     STA ram_0008_t07_pos_X
C - - - - - 0x01F911 07:F901: B9 4B F9  LDA tbl_F94A + $01,Y
C - - - - - 0x01F914 07:F904: 85 09     STA ram_0009_t02_pos_Y
C - - - - - 0x01F916 07:F906: A9 00     LDA #$00
C - - - - - 0x01F918 07:F908: 85 18     STA ram_0018_t06
C - - - - - 0x01F91A 07:F90A: 85 19     STA ram_0019_t01
C - - - - - 0x01F91C 07:F90C: 85 1A     STA ram_001A_t07
C - - - - - 0x01F91E 07:F90E: 85 1B     STA ram_001B_t01
C - - - - - 0x01F920 07:F910: A4 16     LDY ram_0016_t09_object_index
C - - - - - 0x01F922 07:F912: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x01F925 07:F915: 38        SEC
C - - - - - 0x01F926 07:F916: F9 68 06  SBC ram_obj_pos_Y,Y
C - - - - - 0x01F929 07:F919: B0 04     BCS bra_F91F
C - - - - - 0x01F92B 07:F91B: 49 FF     EOR #$FF
C - - - - - 0x01F92D 07:F91D: E6 18     INC ram_0018_t06    ; -> 01
bra_F91F:
C - - - - - 0x01F92F 07:F91F: C5 09     CMP ram_0009_t02_pos_Y
C - - - - - 0x01F931 07:F921: 90 02     BCC bra_F925
C - - - - - 0x01F933 07:F923: E6 19     INC ram_0019_t01    ; -> 01
bra_F925:
C - - - - - 0x01F935 07:F925: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x01F938 07:F928: 38        SEC
C - - - - - 0x01F939 07:F929: F9 4E 06  SBC ram_obj_pos_X,Y
C - - - - - 0x01F93C 07:F92C: B0 04     BCS bra_F932
C - - - - - 0x01F93E 07:F92E: 49 FF     EOR #$FF
C - - - - - 0x01F940 07:F930: E6 1A     INC ram_001A_t07    ; -> 01
bra_F932:
C - - - - - 0x01F942 07:F932: C5 08     CMP ram_0008_t07_pos_X
C - - - - - 0x01F944 07:F934: 90 02     BCC bra_F938
C - - - - - 0x01F946 07:F936: E6 1B     INC ram_001B_t01    ; -> 01
bra_F938:
C - - - - - 0x01F948 07:F938: A5 18     LDA ram_0018_t06
C - - - - - 0x01F94A 07:F93A: 0A        ASL
C - - - - - 0x01F94B 07:F93B: 05 19     ORA ram_0019_t01
C - - - - - 0x01F94D 07:F93D: 0A        ASL
C - - - - - 0x01F94E 07:F93E: 05 1A     ORA ram_001A_t07
C - - - - - 0x01F950 07:F940: 0A        ASL
C - - - - - 0x01F951 07:F941: 05 1B     ORA ram_001B_t01
C - - - - - 0x01F953 07:F943: A8        TAY
C - - - - - 0x01F954 07:F944: B9 84 F9  LDA tbl_F984,Y
C - - - - - 0x01F957 07:F947: 85 00     STA ram_0000_t84
C - - - - - 0x01F959 07:F949: 60        RTS



tbl_F94A:
tbl_0x01F95A:
;                                              +---------- X
;                                              |    +----- Y
;                                              |    |
- - - - - - 0x01F95A 07:F94A: 00        .byte $00, $00   ; 00 
- D 3 - - - 0x01F95C 07:F94C: 03        .byte $03, $03   ; 01 
- D 3 - - - 0x01F95E 07:F94E: 14        .byte $14, $08   ; 02 
- D 3 - - - 0x01F960 07:F950: 0E        .byte $0E, $38   ; 03 
- D 3 - - - 0x01F962 07:F952: 23        .byte $23, $26   ; 04 
- D 3 - - - 0x01F964 07:F954: 2E        .byte $2E, $24   ; 05 
- D 3 - - - 0x01F966 07:F956: 06        .byte $06, $08   ; 06 
- D 3 - - - 0x01F968 07:F958: 02        .byte $02, $02   ; 07 
- D 3 - - - 0x01F96A 07:F95A: 08        .byte $08, $10   ; 08 
- - - - - - 0x01F96C 07:F95C: 09        .byte $09, $08   ; 09 
- - - - - - 0x01F96E 07:F95E: 80        .byte $80, $18   ; 0A 
- - - - - - 0x01F970 07:F960: 80        .byte $80, $20   ; 0B 
- D 3 - - - 0x01F972 07:F962: 08        .byte $08, $0C   ; 0C 
- D 3 - - - 0x01F974 07:F964: 0C        .byte $0C, $24   ; 0D 
- D 3 - - - 0x01F976 07:F966: 0C        .byte $0C, $08   ; 0E 
- D 3 - - - 0x01F978 07:F968: 04        .byte $04, $04   ; 0F 
- D 3 - - - 0x01F97A 07:F96A: 18        .byte $18, $08   ; 10 
- D 3 - - - 0x01F97C 07:F96C: 18        .byte $18, $10   ; 11 
- D 3 - - - 0x01F97E 07:F96E: 08        .byte $08, $18   ; 12 
- D 3 - - - 0x01F980 07:F970: 06        .byte $06, $10   ; 13 
- D 3 - - - 0x01F982 07:F972: 10        .byte $10, $06   ; 14 
- D 3 - - - 0x01F984 07:F974: 01        .byte $01, $01   ; 15 
- D 3 - - - 0x01F986 07:F976: 06        .byte $06, $10   ; 16 
- - - - - - 0x01F988 07:F978: 08        .byte $08, $30   ; 17 
- - - - - - 0x01F98A 07:F97A: 14        .byte $14, $14   ; 18 
- - - - - - 0x01F98C 07:F97C: 0C        .byte $0C, $0C   ; 19 
- D 3 - - - 0x01F98E 07:F97E: 18        .byte $18, $18   ; 1A 
- D 3 - - - 0x01F990 07:F980: 0C        .byte $0C, $14   ; 1B 
- D 3 - - - 0x01F992 07:F982: 10        .byte $10, $14   ; 1C 



tbl_F984:
;                                                         +-------------- 0018
;                                                         |  +----------- 0019
;                                                         |  |  +-------- 001A
;                                                         |  |  |  +----- 001B
;                                                         |  |  |  |
- D 3 - - - 0x01F994 07:F984: 04        .byte $04   ; 00 00-00-00-00
- D 3 - - - 0x01F995 07:F985: 02        .byte $02   ; 01 00-00-00-01
- D 3 - - - 0x01F996 07:F986: 04        .byte $04   ; 02 00-00-01-00
- D 3 - - - 0x01F997 07:F987: 06        .byte $06   ; 03 00-00-01-01
- D 3 - - - 0x01F998 07:F988: 04        .byte $04   ; 04 00-01-00-00
- D 3 - - - 0x01F999 07:F989: 03        .byte $03   ; 05 00-01-00-01
- D 3 - - - 0x01F99A 07:F98A: 04        .byte $04   ; 06 00-01-01-00
- D 3 - - - 0x01F99B 07:F98B: 05        .byte $05   ; 07 00-01-01-01
- D 3 - - - 0x01F99C 07:F98C: 00        .byte $00   ; 08 01-00-00-00
- D 3 - - - 0x01F99D 07:F98D: 02        .byte $02   ; 09 01-00-00-01
- D 3 - - - 0x01F99E 07:F98E: 00        .byte $00   ; 0A 01-00-01-00
- D 3 - - - 0x01F99F 07:F98F: 06        .byte $06   ; 0B 01-00-01-01
- D 3 - - - 0x01F9A0 07:F990: 00        .byte $00   ; 0C 01-01-00-00
- D 3 - - - 0x01F9A1 07:F991: 01        .byte $01   ; 0D 01-01-00-01
- D 3 - - - 0x01F9A2 07:F992: 00        .byte $00   ; 0E 01-01-01-00
- D 3 - - - 0x01F9A3 07:F993: 07        .byte $07   ; 0F 01-01-01-01



sub_0x01F9A4:
C - - - - - 0x01F9A4 07:F994: A2 15     LDX #$15
C - - - - - 0x01F9A6 07:F996: A9 00     LDA #$00
bra_F998_loop:
C - - - - - 0x01F9A8 07:F998: 9D 36 07  STA ram_0736_obj,X
C - - - - - 0x01F9AB 07:F99B: 9D 4C 07  STA ram_074C_obj,X
C - - - - - 0x01F9AE 07:F99E: 9D 62 07  STA ram_0762_obj,X
C - - - - - 0x01F9B1 07:F9A1: CA        DEX
C - - - - - 0x01F9B2 07:F9A2: 10 F4     BPL bra_F998_loop
C - - - - - 0x01F9B4 07:F9A4: A9 00     LDA #$00
C - - - - - 0x01F9B6 07:F9A6: 85 0F     STA ram_000F_t09
C - - - - - 0x01F9B8 07:F9A8: AA        TAX ; 00
C - - - - - 0x01F9B9 07:F9A9: 20 08 FA  JSR sub_FA08
C - - - - - 0x01F9BC 07:F9AC: B0 09     BCS bra_F9B7
C - - - - - 0x01F9BE 07:F9AE: 20 3F FA  JSR sub_FA3F
C - - - - - 0x01F9C1 07:F9B1: 20 68 FA  JSR sub_FA68
C - - - - - 0x01F9C4 07:F9B4: 20 CF FA  JSR sub_FACF_try_to_pick_up_boxes
bra_F9B7:
C - - - - - 0x01F9C7 07:F9B7: A2 01     LDX #$01
C - - - - - 0x01F9C9 07:F9B9: 20 08 FA  JSR sub_FA08
C - - - - - 0x01F9CC 07:F9BC: B0 09     BCS bra_F9C7
C - - - - - 0x01F9CE 07:F9BE: 20 3F FA  JSR sub_FA3F
C - - - - - 0x01F9D1 07:F9C1: 20 68 FA  JSR sub_FA68
C - - - - - 0x01F9D4 07:F9C4: 20 CF FA  JSR sub_FACF_try_to_pick_up_boxes
bra_F9C7:
C - - - - - 0x01F9D7 07:F9C7: A2 02     LDX #$02
C - - - - - 0x01F9D9 07:F9C9: 20 F0 F9  JSR sub_F9F0
C - - - - - 0x01F9DC 07:F9CC: A2 03     LDX #$03
C - - - - - 0x01F9DE 07:F9CE: 20 F0 F9  JSR sub_F9F0
C - - - - - 0x01F9E1 07:F9D1: A2 04     LDX #$04
C - - - - - 0x01F9E3 07:F9D3: 20 F0 F9  JSR sub_F9F0
C - - - - - 0x01F9E6 07:F9D6: A2 05     LDX #$05
C - - - - - 0x01F9E8 07:F9D8: 20 F0 F9  JSR sub_F9F0
C - - - - - 0x01F9EB 07:F9DB: A2 06     LDX #$06
C - - - - - 0x01F9ED 07:F9DD: 20 F0 F9  JSR sub_F9F0
C - - - - - 0x01F9F0 07:F9E0: A2 07     LDX #$07
C - - - - - 0x01F9F2 07:F9E2: 20 F0 F9  JSR sub_F9F0
C - - - - - 0x01F9F5 07:F9E5: A9 01     LDA #$01
C - - - - - 0x01F9F7 07:F9E7: 85 0F     STA ram_000F_t09
C - - - - - 0x01F9F9 07:F9E9: A2 08     LDX #$08
C - - - - - 0x01F9FB 07:F9EB: 20 F0 F9  JSR sub_F9F0
C - - - - - 0x01F9FE 07:F9EE: A2 09     LDX #$09
sub_F9F0:
C - - - - - 0x01FA00 07:F9F0: 20 FF F9  JSR sub_F9FF
C - - - - - 0x01FA03 07:F9F3: B0 03     BCS bra_F9F8_RTS
; bzk optimize, JMP
C - - - - - 0x01FA05 07:F9F5: 20 F9 F9  JSR sub_F9F9
bra_F9F8_RTS:
C - - - - - 0x01FA08 07:F9F8: 60        RTS



sub_F9F9:
C - - - - - 0x01FA09 07:F9F9: 20 7D FA  JSR sub_FA7D
C - - - - - 0x01FA0C 07:F9FC: 4C A6 FA  JMP loc_FAA6



sub_F9FF:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x01FA0F 07:F9FF: BD 82 07  LDA ram_0782_unk,X
C - - - - - 0x01FA12 07:FA02: F0 10     BEQ bra_FA14
C - - - - - 0x01FA14 07:FA04: 10 10     BPL bra_FA16
C - - - - - 0x01FA16 07:FA06: 38        SEC
C - - - - - 0x01FA17 07:FA07: 60        RTS



sub_FA08:
C - - - - - 0x01FA18 07:FA08: BD 00 06  LDA ram_0600_obj,X
C - - - - - 0x01FA1B 07:FA0B: 29 F0     AND #$F0
C - - - - - 0x01FA1D 07:FA0D: D0 05     BNE bra_FA14
C - - - - - 0x01FA1F 07:FA0F: BD 82 06  LDA ram_0682_obj,X
C - - - - - 0x01FA22 07:FA12: D0 02     BNE bra_FA16
bra_FA14:
C - - - - - 0x01FA24 07:FA14: 38        SEC
C - - - - - 0x01FA25 07:FA15: 60        RTS
bra_FA16:
C - - - - - 0x01FA26 07:FA16: BD 20 07  LDA ram_0720_obj,X
C - - - - - 0x01FA29 07:FA19: F0 F9     BEQ bra_FA14
C - - - - - 0x01FA2B 07:FA1B: 86 17     STX ram_0017_t08_player_index
C - - - - - 0x01FA2D 07:FA1D: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x01FA30 07:FA20: 85 10     STA ram_0010_t17_pos_X
C - - - - - 0x01FA32 07:FA22: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x01FA35 07:FA25: 85 11     STA ram_0011_t16_pos_Y
C - - - - - 0x01FA37 07:FA27: BD 20 07  LDA ram_0720_obj,X
C - - - - - 0x01FA3A 07:FA2A: 0A        ASL
C - - - - - 0x01FA3B 07:FA2B: A8        TAY
C - - - - - 0x01FA3C 07:FA2C: B9 4A F9  LDA tbl_F94A,Y
C - - - - - 0x01FA3F 07:FA2F: 85 12     STA ram_0012_t16_pos_X
C - - - - - 0x01FA41 07:FA31: B9 4B F9  LDA tbl_F94A + $01,Y
C - - - - - 0x01FA44 07:FA34: 85 13     STA ram_0013_t13_pos_Y
C - - - - - 0x01FA46 07:FA36: BD 00 06  LDA ram_0600_obj,X
C - - - - - 0x01FA49 07:FA39: 29 02     AND #$02
C - - - - - 0x01FA4B 07:FA3B: 85 15     STA ram_0015_t05
C - - - - - 0x01FA4D 07:FA3D: 18        CLC
C - - - - - 0x01FA4E 07:FA3E: 60        RTS



sub_FA3F:
C - - - - - 0x01FA4F 07:FA3F: A9 00     LDA #$00
C - - - - - 0x01FA51 07:FA41: 85 0E     STA ram_000E_t10
C - - - - - 0x01FA53 07:FA43: A2 02     LDX #$02
C - - - - - 0x01FA55 07:FA45: 20 E6 FA  JSR sub_FAE6
C - - - - - 0x01FA58 07:FA48: E8        INX ; 03
C - - - - - 0x01FA59 07:FA49: 20 E6 FA  JSR sub_FAE6
C - - - - - 0x01FA5C 07:FA4C: E8        INX ; 04
C - - - - - 0x01FA5D 07:FA4D: 20 E6 FA  JSR sub_FAE6
C - - - - - 0x01FA60 07:FA50: E8        INX ; 05
C - - - - - 0x01FA61 07:FA51: 20 E6 FA  JSR sub_FAE6
C - - - - - 0x01FA64 07:FA54: E8        INX ; 06
C - - - - - 0x01FA65 07:FA55: 20 E6 FA  JSR sub_FAE6
C - - - - - 0x01FA68 07:FA58: E8        INX ; 07
C - - - - - 0x01FA69 07:FA59: 20 E6 FA  JSR sub_FAE6
C - - - - - 0x01FA6C 07:FA5C: A9 01     LDA #$01
C - - - - - 0x01FA6E 07:FA5E: 85 0E     STA ram_000E_t10
C - - - - - 0x01FA70 07:FA60: E8        INX ; 08
C - - - - - 0x01FA71 07:FA61: 20 E6 FA  JSR sub_FAE6
C - - - - - 0x01FA74 07:FA64: E8        INX ; 09
C - - - - - 0x01FA75 07:FA65: 4C E6 FA  JMP loc_FAE6



sub_FA68:
C - - - - - 0x01FA78 07:FA68: A9 02     LDA #$02
C - - - - - 0x01FA7A 07:FA6A: 85 0E     STA ram_000E_t10
C - - - - - 0x01FA7C 07:FA6C: A2 12     LDX #$12
C - - - - - 0x01FA7E 07:FA6E: 20 E6 FA  JSR sub_FAE6
C - - - - - 0x01FA81 07:FA71: E8        INX ; 13
C - - - - - 0x01FA82 07:FA72: 20 E6 FA  JSR sub_FAE6
C - - - - - 0x01FA85 07:FA75: E8        INX ; 14
C - - - - - 0x01FA86 07:FA76: 20 E6 FA  JSR sub_FAE6
C - - - - - 0x01FA89 07:FA79: E8        INX ; 15
C - - - - - 0x01FA8A 07:FA7A: 4C E6 FA  JMP loc_FAE6



sub_FA7D:
C - - - - - 0x01FA8D 07:FA7D: A9 00     LDA #$00
C - - - - - 0x01FA8F 07:FA7F: 85 0E     STA ram_000E_t10
C - - - - - 0x01FA91 07:FA81: A2 02     LDX #$02
C - - - - - 0x01FA93 07:FA83: 20 E0 FA  JSR sub_FAE0
C - - - - - 0x01FA96 07:FA86: E8        INX ; 03
C - - - - - 0x01FA97 07:FA87: 20 E0 FA  JSR sub_FAE0
C - - - - - 0x01FA9A 07:FA8A: E8        INX ; 04
C - - - - - 0x01FA9B 07:FA8B: 20 E0 FA  JSR sub_FAE0
C - - - - - 0x01FA9E 07:FA8E: E8        INX ; 05
C - - - - - 0x01FA9F 07:FA8F: 20 E0 FA  JSR sub_FAE0
C - - - - - 0x01FAA2 07:FA92: E8        INX ; 06
C - - - - - 0x01FAA3 07:FA93: 20 E0 FA  JSR sub_FAE0
C - - - - - 0x01FAA6 07:FA96: E8        INX ; 07
C - - - - - 0x01FAA7 07:FA97: 20 E0 FA  JSR sub_FAE0
C - - - - - 0x01FAAA 07:FA9A: A9 01     LDA #$01
C - - - - - 0x01FAAC 07:FA9C: 85 0E     STA ram_000E_t10
C - - - - - 0x01FAAE 07:FA9E: E8        INX ; 08
C - - - - - 0x01FAAF 07:FA9F: 20 E0 FA  JSR sub_FAE0
C - - - - - 0x01FAB2 07:FAA2: E8        INX ; 09
C - - - - - 0x01FAB3 07:FAA3: 4C E0 FA  JMP loc_FAE0



loc_FAA6:
C D 3 - - - 0x01FAB6 07:FAA6: A9 01     LDA #$01
C - - - - - 0x01FAB8 07:FAA8: 85 0E     STA ram_000E_t10
C - - - - - 0x01FABA 07:FAAA: A2 0A     LDX #$0A
C - - - - - 0x01FABC 07:FAAC: 20 E6 FA  JSR sub_FAE6
C - - - - - 0x01FABF 07:FAAF: E8        INX ; 0B
C - - - - - 0x01FAC0 07:FAB0: 20 E6 FA  JSR sub_FAE6
C - - - - - 0x01FAC3 07:FAB3: E8        INX ; 0C
C - - - - - 0x01FAC4 07:FAB4: 20 E6 FA  JSR sub_FAE6
C - - - - - 0x01FAC7 07:FAB7: E8        INX ; 0D
C - - - - - 0x01FAC8 07:FAB8: 20 E6 FA  JSR sub_FAE6
C - - - - - 0x01FACB 07:FABB: E8        INX ; 0E
C - - - - - 0x01FACC 07:FABC: 20 E6 FA  JSR sub_FAE6
C - - - - - 0x01FACF 07:FABF: E8        INX ; 0F
C - - - - - 0x01FAD0 07:FAC0: 20 E6 FA  JSR sub_FAE6
C - - - - - 0x01FAD3 07:FAC3: A9 02     LDA #$02
C - - - - - 0x01FAD5 07:FAC5: 85 0E     STA ram_000E_t10
C - - - - - 0x01FAD7 07:FAC7: E8        INX ; 10
C - - - - - 0x01FAD8 07:FAC8: 20 E6 FA  JSR sub_FAE6
C - - - - - 0x01FADB 07:FACB: E8        INX ; 11
C - - - - - 0x01FADC 07:FACC: 4C E6 FA  JMP loc_FAE6



sub_FACF_try_to_pick_up_boxes:
C - - - - - 0x01FADF 07:FACF: A2 16     LDX #$16
C - - - - - 0x01FAE1 07:FAD1: 20 89 FB  JSR sub_FB89_try_to_pick_up_box
C - - - - - 0x01FAE4 07:FAD4: E8        INX ; 17
C - - - - - 0x01FAE5 07:FAD5: 20 89 FB  JSR sub_FB89_try_to_pick_up_box
C - - - - - 0x01FAE8 07:FAD8: E8        INX ; 18
C - - - - - 0x01FAE9 07:FAD9: 20 89 FB  JSR sub_FB89_try_to_pick_up_box
C - - - - - 0x01FAEC 07:FADC: E8        INX ; 19
C - - - - - 0x01FAED 07:FADD: 4C 89 FB  JMP loc_FB89_try_to_pick_up_box



sub_FAE0:
loc_FAE0:
; in
    ; ram_000E_t10
C D 3 - - - 0x01FAF0 07:FAE0: BD 82 07  LDA ram_0782_unk,X
C - - - - - 0x01FAF3 07:FAE3: 30 01     BMI bra_FAE6
C - - - - - 0x01FAF5 07:FAE5: 60        RTS
bra_FAE6:
sub_FAE6:
loc_FAE6:
; in
    ; ram_000E_t10
C D 3 - - - 0x01FAF6 07:FAE6: BD 20 07  LDA ram_0720_obj,X
C - - - - - 0x01FAF9 07:FAE9: F0 15     BEQ bra_FB00_RTS
C - - - - - 0x01FAFB 07:FAEB: BD 82 06  LDA ram_0682_obj,X
C - - - - - 0x01FAFE 07:FAEE: F0 10     BEQ bra_FB00_RTS
C - - - - - 0x01FB00 07:FAF0: BD 00 06  LDA ram_0600_obj,X
C - - - - - 0x01FB03 07:FAF3: 29 F0     AND #$F0
C - - - - - 0x01FB05 07:FAF5: D0 09     BNE bra_FB00_RTS
C - - - - - 0x01FB07 07:FAF7: BD 00 06  LDA ram_0600_obj,X
C - - - - - 0x01FB0A 07:FAFA: 29 02     AND #$02
C - - - - - 0x01FB0C 07:FAFC: C5 15     CMP ram_0015_t05
C - - - - - 0x01FB0E 07:FAFE: F0 01     BEQ bra_FB01
bra_FB00_RTS:
C - - - - - 0x01FB10 07:FB00: 60        RTS
bra_FB01:
C - - - - - 0x01FB11 07:FB01: BD 20 07  LDA ram_0720_obj,X
C - - - - - 0x01FB14 07:FB04: 0A        ASL
C - - - - - 0x01FB15 07:FB05: A8        TAY
C - - - - - 0x01FB16 07:FB06: B9 4A F9  LDA tbl_F94A,Y
C - - - - - 0x01FB19 07:FB09: 18        CLC
C - - - - - 0x01FB1A 07:FB0A: 65 12     ADC ram_0012_t16_pos_X
C - - - - - 0x01FB1C 07:FB0C: 85 08     STA ram_0008_t09_pos_X
C - - - - - 0x01FB1E 07:FB0E: B9 4B F9  LDA tbl_F94A + $01,Y
C - - - - - 0x01FB21 07:FB11: 18        CLC
C - - - - - 0x01FB22 07:FB12: 65 13     ADC ram_0013_t13_pos_Y
C - - - - - 0x01FB24 07:FB14: 85 09     STA ram_0009_t06_pos_Y
C - - - - - 0x01FB26 07:FB16: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x01FB29 07:FB19: 38        SEC
C - - - - - 0x01FB2A 07:FB1A: E5 10     SBC ram_0010_t17_pos_X
C - - - - - 0x01FB2C 07:FB1C: B0 05     BCS bra_FB23
C - - - - - 0x01FB2E 07:FB1E: 49 FF     EOR #$FF
C - - - - - 0x01FB30 07:FB20: 18        CLC
C - - - - - 0x01FB31 07:FB21: 69 01     ADC #$01
bra_FB23:
C - - - - - 0x01FB33 07:FB23: C5 08     CMP ram_0008_t09_pos_X
C - - - - - 0x01FB35 07:FB25: B0 11     BCS bra_FB38_RTS
C - - - - - 0x01FB37 07:FB27: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x01FB3A 07:FB2A: 38        SEC
C - - - - - 0x01FB3B 07:FB2B: E5 11     SBC ram_0011_t16_pos_Y
C - - - - - 0x01FB3D 07:FB2D: B0 05     BCS bra_FB34
C - - - - - 0x01FB3F 07:FB2F: 49 FF     EOR #$FF
C - - - - - 0x01FB41 07:FB31: 18        CLC
C - - - - - 0x01FB42 07:FB32: 69 01     ADC #$01
bra_FB34:
C - - - - - 0x01FB44 07:FB34: C5 09     CMP ram_0009_t06_pos_Y
C - - - - - 0x01FB46 07:FB36: 90 01     BCC bra_FB39
bra_FB38_RTS:
C - - - - - 0x01FB48 07:FB38: 60        RTS
bra_FB39:
C - - - - - 0x01FB49 07:FB39: 8A        TXA
C - - - - - 0x01FB4A 07:FB3A: 29 07     AND #$07
C - - - - - 0x01FB4C 07:FB3C: A8        TAY
C - - - - - 0x01FB4D 07:FB3D: B9 AE F5  LDA tbl_F5AE,Y
C - - - - - 0x01FB50 07:FB40: A4 0E     LDY ram_000E_t10
C - - - - - 0x01FB52 07:FB42: D0 0A     BNE bra_FB4E
C - - - - - 0x01FB54 07:FB44: A4 17     LDY ram_0017_t08_player_index
C - - - - - 0x01FB56 07:FB46: 19 36 07  ORA ram_0736_obj,Y
C - - - - - 0x01FB59 07:FB49: 99 36 07  STA ram_0736_obj,Y
C - - - - - 0x01FB5C 07:FB4C: D0 17     BNE bra_FB65
bra_FB4E:
C - - - - - 0x01FB5E 07:FB4E: 88        DEY
C - - - - - 0x01FB5F 07:FB4F: D0 0A     BNE bra_FB5B
C - - - - - 0x01FB61 07:FB51: A4 17     LDY ram_0017_t08_player_index
C - - - - - 0x01FB63 07:FB53: 19 4C 07  ORA ram_074C_obj,Y
C - - - - - 0x01FB66 07:FB56: 99 4C 07  STA ram_074C_obj,Y
C - - - - - 0x01FB69 07:FB59: D0 0A     BNE bra_FB65
bra_FB5B:
C - - - - - 0x01FB6B 07:FB5B: A4 17     LDY ram_0017_t08_player_index
C - - - - - 0x01FB6D 07:FB5D: 19 62 07  ORA ram_0762_obj,Y
C - - - - - 0x01FB70 07:FB60: 99 62 07  STA ram_0762_obj,Y
; bzk optimize, useless branch
C - - - - - 0x01FB73 07:FB63: D0 00     BNE bra_FB65
bra_FB65:
C - - - - - 0x01FB75 07:FB65: A5 17     LDA ram_0017_t08_player_index
C - - - - - 0x01FB77 07:FB67: 29 07     AND #$07
C - - - - - 0x01FB79 07:FB69: A8        TAY
C - - - - - 0x01FB7A 07:FB6A: B9 AE F5  LDA tbl_F5AE,Y
C - - - - - 0x01FB7D 07:FB6D: A4 0F     LDY ram_000F_t09
C - - - - - 0x01FB7F 07:FB6F: D0 07     BNE bra_FB78_01_or_02
; if 00
C - - - - - 0x01FB81 07:FB71: 1D 36 07  ORA ram_0736_obj,X
C - - - - - 0x01FB84 07:FB74: 9D 36 07  STA ram_0736_obj,X
C - - - - - 0x01FB87 07:FB77: 60        RTS
bra_FB78_01_or_02:
; bzk optimize, useless DEY + BNE,
; ram_000F_t09 is either 00 or 01
C - - - - - 0x01FB88 07:FB78: 88        DEY
C - - - - - 0x01FB89 07:FB79: D0 07     BNE bra_FB82_02
; 01
C - - - - - 0x01FB8B 07:FB7B: 1D 4C 07  ORA ram_074C_obj,X
C - - - - - 0x01FB8E 07:FB7E: 9D 4C 07  STA ram_074C_obj,X
C - - - - - 0x01FB91 07:FB81: 60        RTS
bra_FB82_02:
- - - - - - 0x01FB92 07:FB82: 1D 62 07  ORA ram_0762_obj,X
- - - - - - 0x01FB95 07:FB85: 9D 62 07  STA ram_0762_obj,X
- - - - - - 0x01FB98 07:FB88: 60        RTS



sub_FB89_try_to_pick_up_box:
loc_FB89_try_to_pick_up_box:
C D 3 - - - 0x01FB99 07:FB89: BD 82 06  LDA ram_0682_obj,X
C - - - - - 0x01FB9C 07:FB8C: F0 07     BEQ bra_FB95_RTS
C - - - - - 0x01FB9E 07:FB8E: BD 00 06  LDA ram_0600_obj,X
C - - - - - 0x01FBA1 07:FB91: 29 F0     AND #$F0
C - - - - - 0x01FBA3 07:FB93: F0 01     BEQ bra_FB96
bra_FB95_RTS:
C - - - - - 0x01FBA5 07:FB95: 60        RTS
bra_FB96:
C - - - - - 0x01FBA6 07:FB96: A5 12     LDA ram_0012_t16_pos_X
C - - - - - 0x01FBA8 07:FB98: 18        CLC
C - - - - - 0x01FBA9 07:FB99: 69 08     ADC #$08
C - - - - - 0x01FBAB 07:FB9B: 85 08     STA ram_0008_t10_pos_X
C - - - - - 0x01FBAD 07:FB9D: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x01FBB0 07:FBA0: 38        SEC
C - - - - - 0x01FBB1 07:FBA1: E5 10     SBC ram_0010_t17_pos_X
C - - - - - 0x01FBB3 07:FBA3: B0 02     BCS bra_FBA7
C - - - - - 0x01FBB5 07:FBA5: 49 FF     EOR #$FF
bra_FBA7:
C - - - - - 0x01FBB7 07:FBA7: C5 08     CMP ram_0008_t10_pos_X
C - - - - - 0x01FBB9 07:FBA9: B0 EA     BCS bra_FB95_RTS
; C = 0
C - - - - - 0x01FBBB 07:FBAB: A5 13     LDA ram_0013_t13_pos_Y
C - - - - - 0x01FBBD 07:FBAD: 69 08     ADC #$08
C - - - - - 0x01FBBF 07:FBAF: 85 09     STA ram_0009_t07_pos_Y
C - - - - - 0x01FBC1 07:FBB1: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x01FBC4 07:FBB4: 38        SEC
C - - - - - 0x01FBC5 07:FBB5: E5 11     SBC ram_0011_t16_pos_Y
C - - - - - 0x01FBC7 07:FBB7: B0 02     BCS bra_FBBB
C - - - - - 0x01FBC9 07:FBB9: 49 FF     EOR #$FF
bra_FBBB:
C - - - - - 0x01FBCB 07:FBBB: C5 09     CMP ram_0009_t07_pos_Y
C - - - - - 0x01FBCD 07:FBBD: B0 D6     BCS bra_FB95_RTS
C - - - - - 0x01FBCF 07:FBBF: A4 17     LDY ram_0017_t08_player_index
C - - - - - 0x01FBD1 07:FBC1: B9 B1 00  LDA ram_current_player,Y
C - - - - - 0x01FBD4 07:FBC4: 29 0F     AND #$0F
C - - - - - 0x01FBD6 07:FBC6: A8        TAY
C - - - - - 0x01FBD7 07:FBC7: B9 7F 00  LDA ram_player_stats,Y
C - - - - - 0x01FBDA 07:FBCA: C9 30     CMP #$30
C - - - - - 0x01FBDC 07:FBCC: B0 21     BCS bra_FBEF_RTS
C - - - - - 0x01FBDE 07:FBCE: A9 4C     LDA #con_music_4C
C - - - - - 0x01FBE0 07:FBD0: 20 CA FE  JSR sub_FECA_add_music_to_queue
C - - - - - 0x01FBE3 07:FBD3: A4 17     LDY ram_0017_t08_player_index
C - - - - - 0x01FBE5 07:FBD5: B9 B1 00  LDA ram_current_player,Y
C - - - - - 0x01FBE8 07:FBD8: 18        CLC
C - - - - - 0x01FBE9 07:FBD9: 69 10     ADC #$10
C - - - - - 0x01FBEB 07:FBDB: C9 60     CMP #$60
C - - - - - 0x01FBED 07:FBDD: 90 02     BCC bra_FBE1_not_overflow
C - - - - - 0x01FBEF 07:FBDF: 29 0F     AND #$0F
bra_FBE1_not_overflow:
C - - - - - 0x01FBF1 07:FBE1: 99 B1 00  STA ram_current_player,Y
C - - - - - 0x01FBF4 07:FBE4: A9 00     LDA #$00
C - - - - - 0x01FBF6 07:FBE6: 9D 82 06  STA ram_0682_obj,X
C - - - - - 0x01FBF9 07:FBE9: 9D 1A 06  STA ram_obj_animation_lo,X
; bzk optimize, JMP
C - - - - - 0x01FBFC 07:FBEC: 20 C1 F6  JSR sub_F6C1
bra_FBEF_RTS:
C - - - - - 0x01FBFF 07:FBEF: 60        RTS



sub_0x01FC1E:
loc_0x01FC1E:
; in
    ; A = 
C - - - - - 0x01FC1E 07:FC0E: 85 12     STA ram_0012_t17_data_index
C - - - - - 0x01FC20 07:FC10: A5 36     LDA ram_prg_banks_pair
C - - - - - 0x01FC22 07:FC12: 48        PHA
C - - - - - 0x01FC23 07:FC13: A9 03     LDA #con_prg_pair + $03
C - - - - - 0x01FC25 07:FC15: 20 4C F3  JSR sub_F34C_prg_bankswitch
C - - - - - 0x01FC28 07:FC18: A6 26     LDX ram_buffer_index
C - - - - - 0x01FC2A 07:FC1A: A4 75     LDY ram_stage
C - - - - - 0x01FC2C 07:FC1C: C0 02     CPY #$02
C - - - - - 0x01FC2E 07:FC1E: 90 06     BCC bra_FC26
C - - - - - 0x01FC30 07:FC20: A6 39     LDX ram_buffer_index_2
C - - - - - 0x01FC32 07:FC22: E0 20     CPX #$20
C - - - - - 0x01FC34 07:FC24: B0 05     BCS bra_FC2B
bra_FC26:
; bzk optimize, will be written to the same 0012 address at JSR.
; point JSR to 0x01F1BD, delete LDA
C - - - - - 0x01FC36 07:FC26: A5 12     LDA ram_0012_t17_data_index
C - - - - - 0x01FC38 07:FC28: 20 AB F1  JSR sub_F1AB
bra_FC2B:
C - - - - - 0x01FC3B 07:FC2B: 68        PLA
C - - - - - 0x01FC3C 07:FC2C: 4C 4C F3  JMP loc_F34C_prg_bankswitch



; todo
off_FC2F_00:
- D 3 - I - 0x01FC3F 07:FC2F: 0E        .byte $0E   ; 
- - - - - - 0x01FC40 07:FC30: 1B        .byte $1B   ; 
- D 3 - I - 0x01FC41 07:FC31: 28        .byte $28   ; 
- D 3 - I - 0x01FC42 07:FC32: 2C        .byte $2C   ; 
- D 3 - I - 0x01FC43 07:FC33: 30        .byte $30   ; 
- D 3 - I - 0x01FC44 07:FC34: 34        .byte $34   ; 
- D 3 - I - 0x01FC45 07:FC35: 41        .byte $41   ; 
- D 3 - I - 0x01FC46 07:FC36: 45        .byte $45   ; 
- D 3 - I - 0x01FC47 07:FC37: 49        .byte $49   ; 
- D 3 - I - 0x01FC48 07:FC38: 4D        .byte $4D   ; 
- D 3 - I - 0x01FC49 07:FC39: 51        .byte $51   ; 
- - - - - - 0x01FC4A 07:FC3A: 5E        .byte $5E   ; 
- D 3 - I - 0x01FC4B 07:FC3B: 62        .byte $62   ; 
- D 3 - I - 0x01FC4C 07:FC3C: 66        .byte $66   ; 
- D 3 - I - 0x01FC4D 07:FC3D: 4C        .byte $4C   ; 
- D 3 - I - 0x01FC4E 07:FC3E: 37        .byte $37   ; 
- D 3 - I - 0x01FC4F 07:FC3F: 12        .byte $12   ; 
- D 3 - I - 0x01FC50 07:FC40: 0F        .byte $0F   ; 
- D 3 - I - 0x01FC51 07:FC41: 37        .byte $37   ; 
- D 3 - I - 0x01FC52 07:FC42: 16        .byte $16   ; 
- D 3 - I - 0x01FC53 07:FC43: 0F        .byte $0F   ; 
- D 3 - I - 0x01FC54 07:FC44: 37        .byte $37   ; 
- D 3 - I - 0x01FC55 07:FC45: 1A        .byte $1A   ; 
- D 3 - I - 0x01FC56 07:FC46: 0F        .byte $0F   ; 
- D 3 - I - 0x01FC57 07:FC47: 20        .byte $20   ; 
- D 3 - I - 0x01FC58 07:FC48: 38        .byte $38   ; 
- D 3 - I - 0x01FC59 07:FC49: 16        .byte $16   ; 
- - - - - - 0x01FC5A 07:FC4A: 0C        .byte $0C   ; 
- - - - - - 0x01FC5B 07:FC4B: 37        .byte $37   ; 
- - - - - - 0x01FC5C 07:FC4C: 20        .byte $20   ; 
- - - - - - 0x01FC5D 07:FC4D: 16        .byte $16   ; 
- - - - - - 0x01FC5E 07:FC4E: 37        .byte $37   ; 
- - - - - - 0x01FC5F 07:FC4F: 30        .byte $30   ; 
- - - - - - 0x01FC60 07:FC50: 12        .byte $12   ; 
- - - - - - 0x01FC61 07:FC51: 25        .byte $25   ; 
- - - - - - 0x01FC62 07:FC52: 20        .byte $20   ; 
- - - - - - 0x01FC63 07:FC53: 10        .byte $10   ; 
- - - - - - 0x01FC64 07:FC54: 39        .byte $39   ; 
- - - - - - 0x01FC65 07:FC55: 20        .byte $20   ; 
- - - - - - 0x01FC66 07:FC56: 10        .byte $10   ; 
- D 3 - I - 0x01FC67 07:FC57: 63        .byte $63   ; 
- D 3 - I - 0x01FC68 07:FC58: 37        .byte $37   ; 
- D 3 - I - 0x01FC69 07:FC59: 27        .byte $27   ; 
- D 3 - I - 0x01FC6A 07:FC5A: 17        .byte $17   ; 
- D 3 - I - 0x01FC6B 07:FC5B: 63        .byte $63   ; 
- D 3 - I - 0x01FC6C 07:FC5C: 37        .byte $37   ; 
- D 3 - I - 0x01FC6D 07:FC5D: 27        .byte $27   ; 
- D 3 - I - 0x01FC6E 07:FC5E: 0F        .byte $0F   ; 
- D 3 - I - 0x01FC6F 07:FC5F: 63        .byte $63   ; 
- D 3 - I - 0x01FC70 07:FC60: 30        .byte $30   ; 
- D 3 - I - 0x01FC71 07:FC61: 21        .byte $21   ; 
- D 3 - I - 0x01FC72 07:FC62: 02        .byte $02   ; 
- D 3 - I - 0x01FC73 07:FC63: 0C        .byte $0C   ; 
- D 3 - I - 0x01FC74 07:FC64: 20        .byte $20   ; 
- D 3 - I - 0x01FC75 07:FC65: 37        .byte $37   ; 
- D 3 - I - 0x01FC76 07:FC66: 16        .byte $16   ; 
- D 3 - I - 0x01FC77 07:FC67: 20        .byte $20   ; 
- D 3 - I - 0x01FC78 07:FC68: 37        .byte $37   ; 
- D 3 - I - 0x01FC79 07:FC69: 12        .byte $12   ; 
- D 3 - I - 0x01FC7A 07:FC6A: 00        .byte $00   ; 
- D 3 - I - 0x01FC7B 07:FC6B: 18        .byte $18   ; 
- D 3 - I - 0x01FC7C 07:FC6C: 03        .byte $03   ; 
- D 3 - I - 0x01FC7D 07:FC6D: 20        .byte $20   ; 
- D 3 - I - 0x01FC7E 07:FC6E: 2C        .byte $2C   ; 
- D 3 - I - 0x01FC7F 07:FC6F: 0C        .byte $0C   ; 
- D 3 - I - 0x01FC80 07:FC70: 63        .byte $63   ; 
- D 3 - I - 0x01FC81 07:FC71: 20        .byte $20   ; 
- D 3 - I - 0x01FC82 07:FC72: 23        .byte $23   ; 
- D 3 - I - 0x01FC83 07:FC73: 13        .byte $13   ; 
- D 3 - I - 0x01FC84 07:FC74: 63        .byte $63   ; 
- D 3 - I - 0x01FC85 07:FC75: 20        .byte $20   ; 
- D 3 - I - 0x01FC86 07:FC76: 25        .byte $25   ; 
- D 3 - I - 0x01FC87 07:FC77: 0F        .byte $0F   ; 
- D 3 - I - 0x01FC88 07:FC78: 63        .byte $63   ; 
- D 3 - I - 0x01FC89 07:FC79: 3B        .byte $3B   ; 
- D 3 - I - 0x01FC8A 07:FC7A: 1B        .byte $1B   ; 
- D 3 - I - 0x01FC8B 07:FC7B: 0A        .byte $0A   ; 
- D 3 - I - 0x01FC8C 07:FC7C: 63        .byte $63   ; 
- D 3 - I - 0x01FC8D 07:FC7D: 37        .byte $37   ; 
- D 3 - I - 0x01FC8E 07:FC7E: 20        .byte $20   ; 
- D 3 - I - 0x01FC8F 07:FC7F: 0F        .byte $0F   ; 
- D 3 - I - 0x01FC90 07:FC80: 0C        .byte $0C   ; 
- D 3 - I - 0x01FC91 07:FC81: 20        .byte $20   ; 
- D 3 - I - 0x01FC92 07:FC82: 37        .byte $37   ; 
- D 3 - I - 0x01FC93 07:FC83: 16        .byte $16   ; 
- D 3 - I - 0x01FC94 07:FC84: 37        .byte $37   ; 
- D 3 - I - 0x01FC95 07:FC85: 27        .byte $27   ; 
- D 3 - I - 0x01FC96 07:FC86: 16        .byte $16   ; 
- D 3 - I - 0x01FC97 07:FC87: 22        .byte $22   ; 
- D 3 - I - 0x01FC98 07:FC88: 12        .byte $12   ; 
- D 3 - I - 0x01FC99 07:FC89: 02        .byte $02   ; 
- D 3 - I - 0x01FC9A 07:FC8A: 37        .byte $37   ; 
- D 3 - I - 0x01FC9B 07:FC8B: 16        .byte $16   ; 
- D 3 - I - 0x01FC9C 07:FC8C: 12        .byte $12   ; 
- - - - - - 0x01FC9D 07:FC8D: 63        .byte $63   ; 
- - - - - - 0x01FC9E 07:FC8E: 37        .byte $37   ; 
- - - - - - 0x01FC9F 07:FC8F: 00        .byte $00   ; 
- - - - - - 0x01FCA0 07:FC90: 0F        .byte $0F   ; 
- D 3 - I - 0x01FCA1 07:FC91: 63        .byte $63   ; 
- D 3 - I - 0x01FCA2 07:FC92: 20        .byte $20   ; 
- D 3 - I - 0x01FCA3 07:FC93: 10        .byte $10   ; 
- D 3 - I - 0x01FCA4 07:FC94: 00        .byte $00   ; 
- D 3 - I - 0x01FCA5 07:FC95: 63        .byte $63   ; 
- D 3 - I - 0x01FCA6 07:FC96: 37        .byte $37   ; 
- D 3 - I - 0x01FCA7 07:FC97: 1B        .byte $1B   ; 
- D 3 - I - 0x01FCA8 07:FC98: 0F        .byte $0F   ; 
- - - - - - 0x01FCA9 07:FC99: 19        .byte $19   ; 
- - - - - - 0x01FCAA 07:FC9A: 33        .byte $33   ; 
- - - - - - 0x01FCAB 07:FC9B: 2A        .byte $2A   ; 
- - - - - - 0x01FCAC 07:FC9C: 0A        .byte $0A   ; 
- - - - - - 0x01FCAD 07:FC9D: 16        .byte $16   ; 
- - - - - - 0x01FCAE 07:FC9E: 17        .byte $17   ; 
- - - - - - 0x01FCAF 07:FC9F: 07        .byte $07   ; 
- - - - - - 0x01FCB0 07:FCA0: 33        .byte $33   ; 
- - - - - - 0x01FCB1 07:FCA1: 28        .byte $28   ; 
- - - - - - 0x01FCB2 07:FCA2: 0A        .byte $0A   ; 



off_FCA3_01:
- D 3 - I - 0x01FCB3 07:FCA3: 0B        .byte $0B   ; 
- D 3 - I - 0x01FCB4 07:FCA4: 18        .byte $18   ; 
- D 3 - I - 0x01FCB5 07:FCA5: 25        .byte $25   ; 
- D 3 - I - 0x01FCB6 07:FCA6: 32        .byte $32   ; 
- D 3 - I - 0x01FCB7 07:FCA7: 3F        .byte $3F   ; 
- - - - - - 0x01FCB8 07:FCA8: 4C        .byte $4C   ; 
- D 3 - I - 0x01FCB9 07:FCA9: 59        .byte $59   ; 
- D 3 - I - 0x01FCBA 07:FCAA: 66        .byte $66   ; 
- - - - - - 0x01FCBB 07:FCAB: 73        .byte $73   ; 
- D 3 - I - 0x01FCBC 07:FCAC: 80        .byte $80   ; 
- D 3 - I - 0x01FCBD 07:FCAD: 84        .byte $84   ; 
- D 3 - I - 0x01FCBE 07:FCAE: 0C        .byte $0C   ; 
- D 3 - I - 0x01FCBF 07:FCAF: 20        .byte $20   ; 
- D 3 - I - 0x01FCC0 07:FCB0: 31        .byte $31   ; 
- D 3 - I - 0x01FCC1 07:FCB1: 00        .byte $00   ; 
- D 3 - I - 0x01FCC2 07:FCB2: 38        .byte $38   ; 
- D 3 - I - 0x01FCC3 07:FCB3: 27        .byte $27   ; 
- D 3 - I - 0x01FCC4 07:FCB4: 07        .byte $07   ; 
- D 3 - I - 0x01FCC5 07:FCB5: 31        .byte $31   ; 
- D 3 - I - 0x01FCC6 07:FCB6: 21        .byte $21   ; 
- D 3 - I - 0x01FCC7 07:FCB7: 12        .byte $12   ; 
- D 3 - I - 0x01FCC8 07:FCB8: 39        .byte $39   ; 
- D 3 - I - 0x01FCC9 07:FCB9: 29        .byte $29   ; 
- D 3 - I - 0x01FCCA 07:FCBA: 18        .byte $18   ; 
- D 3 - I - 0x01FCCB 07:FCBB: 0C        .byte $0C   ; 
- D 3 - I - 0x01FCCC 07:FCBC: 20        .byte $20   ; 
- D 3 - I - 0x01FCCD 07:FCBD: 31        .byte $31   ; 
- D 3 - I - 0x01FCCE 07:FCBE: 00        .byte $00   ; 
- D 3 - I - 0x01FCCF 07:FCBF: 3A        .byte $3A   ; 
- D 3 - I - 0x01FCD0 07:FCC0: 31        .byte $31   ; 
- D 3 - I - 0x01FCD1 07:FCC1: 1A        .byte $1A   ; 
- D 3 - I - 0x01FCD2 07:FCC2: 37        .byte $37   ; 
- D 3 - I - 0x01FCD3 07:FCC3: 31        .byte $31   ; 
- D 3 - I - 0x01FCD4 07:FCC4: 18        .byte $18   ; 
- D 3 - I - 0x01FCD5 07:FCC5: 11        .byte $11   ; 
- D 3 - I - 0x01FCD6 07:FCC6: 31        .byte $31   ; 
- D 3 - I - 0x01FCD7 07:FCC7: 02        .byte $02   ; 
- D 3 - I - 0x01FCD8 07:FCC8: 0C        .byte $0C   ; 
- D 3 - I - 0x01FCD9 07:FCC9: 20        .byte $20   ; 
- D 3 - I - 0x01FCDA 07:FCCA: 31        .byte $31   ; 
- D 3 - I - 0x01FCDB 07:FCCB: 00        .byte $00   ; 
- D 3 - I - 0x01FCDC 07:FCCC: 30        .byte $30   ; 
- D 3 - I - 0x01FCDD 07:FCCD: 38        .byte $38   ; 
- D 3 - I - 0x01FCDE 07:FCCE: 03        .byte $03   ; 
- D 3 - I - 0x01FCDF 07:FCCF: 16        .byte $16   ; 
- D 3 - I - 0x01FCE0 07:FCD0: 10        .byte $10   ; 
- D 3 - I - 0x01FCE1 07:FCD1: 05        .byte $05   ; 
- D 3 - I - 0x01FCE2 07:FCD2: 38        .byte $38   ; 
- D 3 - I - 0x01FCE3 07:FCD3: 27        .byte $27   ; 
- D 3 - I - 0x01FCE4 07:FCD4: 07        .byte $07   ; 
- D 3 - I - 0x01FCE5 07:FCD5: 0C        .byte $0C   ; 
- D 3 - I - 0x01FCE6 07:FCD6: 20        .byte $20   ; 
- D 3 - I - 0x01FCE7 07:FCD7: 31        .byte $31   ; 
- D 3 - I - 0x01FCE8 07:FCD8: 00        .byte $00   ; 
- D 3 - I - 0x01FCE9 07:FCD9: 2B        .byte $2B   ; 
- D 3 - I - 0x01FCEA 07:FCDA: 1B        .byte $1B   ; 
- D 3 - I - 0x01FCEB 07:FCDB: 0B        .byte $0B   ; 
- D 3 - I - 0x01FCEC 07:FCDC: 12        .byte $12   ; 
- D 3 - I - 0x01FCED 07:FCDD: 1B        .byte $1B   ; 
- D 3 - I - 0x01FCEE 07:FCDE: 0B        .byte $0B   ; 
- D 3 - I - 0x01FCEF 07:FCDF: 38        .byte $38   ; 
- D 3 - I - 0x01FCF0 07:FCE0: 27        .byte $27   ; 
- D 3 - I - 0x01FCF1 07:FCE1: 07        .byte $07   ; 
- D 3 - I - 0x01FCF2 07:FCE2: 0C        .byte $0C   ; 
- D 3 - I - 0x01FCF3 07:FCE3: 20        .byte $20   ; 
- D 3 - I - 0x01FCF4 07:FCE4: 31        .byte $31   ; 
- D 3 - I - 0x01FCF5 07:FCE5: 00        .byte $00   ; 
- D 3 - I - 0x01FCF6 07:FCE6: 26        .byte $26   ; 
- D 3 - I - 0x01FCF7 07:FCE7: 16        .byte $16   ; 
- D 3 - I - 0x01FCF8 07:FCE8: 05        .byte $05   ; 
- D 3 - I - 0x01FCF9 07:FCE9: 2C        .byte $2C   ; 
- D 3 - I - 0x01FCFA 07:FCEA: 1C        .byte $1C   ; 
- D 3 - I - 0x01FCFB 07:FCEB: 0C        .byte $0C   ; 
- D 3 - I - 0x01FCFC 07:FCEC: 38        .byte $38   ; 
- D 3 - I - 0x01FCFD 07:FCED: 27        .byte $27   ; 
- D 3 - I - 0x01FCFE 07:FCEE: 07        .byte $07   ; 
- - - - - - 0x01FCFF 07:FCEF: 0C        .byte $0C   ; 
- - - - - - 0x01FD00 07:FCF0: 30        .byte $30   ; 
- - - - - - 0x01FD01 07:FCF1: 37        .byte $37   ; 
- - - - - - 0x01FD02 07:FCF2: 16        .byte $16   ; 
- - - - - - 0x01FD03 07:FCF3: 30        .byte $30   ; 
- - - - - - 0x01FD04 07:FCF4: 37        .byte $37   ; 
- - - - - - 0x01FD05 07:FCF5: 12        .byte $12   ; 
- - - - - - 0x01FD06 07:FCF6: 30        .byte $30   ; 
- - - - - - 0x01FD07 07:FCF7: 37        .byte $37   ; 
- - - - - - 0x01FD08 07:FCF8: 1A        .byte $1A   ; 
- - - - - - 0x01FD09 07:FCF9: 30        .byte $30   ; 
- - - - - - 0x01FD0A 07:FCFA: 14        .byte $14   ; 
- - - - - - 0x01FD0B 07:FCFB: 38        .byte $38   ; 
- D 3 - I - 0x01FD0C 07:FCFC: 0C        .byte $0C   ; 
- D 3 - I - 0x01FD0D 07:FCFD: 20        .byte $20   ; 
- D 3 - I - 0x01FD0E 07:FCFE: 10        .byte $10   ; 
- D 3 - I - 0x01FD0F 07:FCFF: 00        .byte $00   ; 
- D 3 - I - 0x01FD10 07:FD00: 2C        .byte $2C   ; 
- D 3 - I - 0x01FD11 07:FD01: 1C        .byte $1C   ; 
- D 3 - I - 0x01FD12 07:FD02: 0C        .byte $0C   ; 
- D 3 - I - 0x01FD13 07:FD03: 26        .byte $26   ; 
- D 3 - I - 0x01FD14 07:FD04: 16        .byte $16   ; 
- D 3 - I - 0x01FD15 07:FD05: 05        .byte $05   ; 
- D 3 - I - 0x01FD16 07:FD06: 37        .byte $37   ; 
- D 3 - I - 0x01FD17 07:FD07: 17        .byte $17   ; 
- D 3 - I - 0x01FD18 07:FD08: 07        .byte $07   ; 
- D 3 - I - 0x01FD19 07:FD09: 0C        .byte $0C   ; 
- D 3 - I - 0x01FD1A 07:FD0A: 20        .byte $20   ; 
- D 3 - I - 0x01FD1B 07:FD0B: 27        .byte $27   ; 
- D 3 - I - 0x01FD1C 07:FD0C: 16        .byte $16   ; 
- D 3 - I - 0x01FD1D 07:FD0D: 20        .byte $20   ; 
- D 3 - I - 0x01FD1E 07:FD0E: 27        .byte $27   ; 
- D 3 - I - 0x01FD1F 07:FD0F: 10        .byte $10   ; 
- D 3 - I - 0x01FD20 07:FD10: 20        .byte $20   ; 
- D 3 - I - 0x01FD21 07:FD11: 23        .byte $23   ; 
- D 3 - I - 0x01FD22 07:FD12: 16        .byte $16   ; 
- D 3 - I - 0x01FD23 07:FD13: 3B        .byte $3B   ; 
- D 3 - I - 0x01FD24 07:FD14: 2B        .byte $2B   ; 
- D 3 - I - 0x01FD25 07:FD15: 1B        .byte $1B   ; 
- - - - - - 0x01FD26 07:FD16: 0C        .byte $0C   ; 
- - - - - - 0x01FD27 07:FD17: 10        .byte $10   ; 
- - - - - - 0x01FD28 07:FD18: 27        .byte $27   ; 
- - - - - - 0x01FD29 07:FD19: 16        .byte $16   ; 
- - - - - - 0x01FD2A 07:FD1A: 26        .byte $26   ; 
- - - - - - 0x01FD2B 07:FD1B: 16        .byte $16   ; 
- - - - - - 0x01FD2C 07:FD1C: 05        .byte $05   ; 
- - - - - - 0x01FD2D 07:FD1D: 20        .byte $20   ; 
- - - - - - 0x01FD2E 07:FD1E: 28        .byte $28   ; 
- - - - - - 0x01FD2F 07:FD1F: 16        .byte $16   ; 
- - - - - - 0x01FD30 07:FD20: 20        .byte $20   ; 
- - - - - - 0x01FD31 07:FD21: 10        .byte $10   ; 
- - - - - - 0x01FD32 07:FD22: 00        .byte $00   ; 
- D 3 - I - 0x01FD33 07:FD23: 13        .byte $13   ; 
- D 3 - I - 0x01FD34 07:FD24: 23        .byte $23   ; 
- D 3 - I - 0x01FD35 07:FD25: 13        .byte $13   ; 
- D 3 - I - 0x01FD36 07:FD26: 03        .byte $03   ; 
- D 3 - I - 0x01FD37 07:FD27: 23        .byte $23   ; 
- D 3 - I - 0x01FD38 07:FD28: 31        .byte $31   ; 
- D 3 - I - 0x01FD39 07:FD29: 21        .byte $21   ; 
- D 3 - I - 0x01FD3A 07:FD2A: 11        .byte $11   ; 



loc_FD2B_RESET:
C - - - - - 0x01FD3B 07:FD2B: 78        SEI
C - - - - - 0x01FD3C 07:FD2C: D8        CLD
C - - - - - 0x01FD3D 07:FD2D: A2 FF     LDX #$FF
C - - - - - 0x01FD3F 07:FD2F: 9A        TXS
C - - - - - 0x01FD40 07:FD30: 20 93 FE  JSR sub_FE93_disable_rendering
C - - - - - 0x01FD43 07:FD33: A2 02     LDX #$02
bra_FD35_loop:
C - - - - - 0x01FD45 07:FD35: 2C 02 20  BIT $2002
C - - - - - 0x01FD48 07:FD38: 10 FB     BPL bra_FD35_loop
bra_FD3A_loop:
C - - - - - 0x01FD4A 07:FD3A: 2C 02 20  BIT $2002
C - - - - - 0x01FD4D 07:FD3D: 30 FB     BMI bra_FD3A_loop
C - - - - - 0x01FD4F 07:FD3F: CA        DEX
C - - - - - 0x01FD50 07:FD40: D0 F3     BNE bra_FD35_loop
C - - - - - 0x01FD52 07:FD42: A9 FF     LDA #$00
C - - - - - 0x01FD54 07:FD44: 8D 00 E0  STA $5204
                                        JSR sub_FD69_copy_code_to_battery
                                        LDA #con_prg_bank + $3D
                                        STA $5116
C - - - - - 0x01FD57 07:FD47: 20 76 FE  JSR sub_FE76
C - - - - - 0x01FD5A 07:FD4A: 20 09 F3  JSR sub_F309_clear_0400_07FF
; A = 00
; clear 0000-03FF
bra_FD4D_loop:
C - - - - - 0x01FD5D 07:FD4D: 95 00     STA $0000,X
C - - - - - 0x01FD5F 07:FD4F: 9D 00 01  STA $0100,X
C - - - - - 0x01FD62 07:FD52: 9D 00 02  STA $0200,X
C - - - - - 0x01FD65 07:FD55: 9D 00 03  STA $0300,X
C - - - - - 0x01FD68 07:FD58: E8        INX
C - - - - - 0x01FD69 07:FD59: D0 F2     BNE bra_FD4D_loop
C - - - - - 0x01FD6B 07:FD5B: 20 BF FE  JSR sub_FEBF
C - - - - - 0x01FD6E 07:FD5E: 20 81 FE  JSR sub_FE81_enable_rendering
C - - - - - 0x01FD71 07:FD61: 58        CLI
loc_FD62_infinite_loop:
C D 3 - - - 0x01FD72 07:FD62: A5 29     LDA ram_random
C - - - - - 0x01FD74 07:FD64: 65 23     ADC ram_frm_cnt
C - - - - - 0x01FD76 07:FD66: 85 29     STA ram_random
C - - - - - 0x01FD78 07:FD68: 4C 62 FD  JMP loc_FD62_infinite_loop



sub_FD69_copy_code_to_battery:
                                        LDA #< $6000
                                        STA ram_0002_t65_data
                                        LDA #> $6000
                                        STA ram_0002_t65_data + $01
                                        LDA #< $C000
                                        STA ram_0004_t36_data
                                        LDA #> $C000
                                        STA ram_0004_t36_data + $01
                                        LDY #$00
bra_FD6A_loop:
                                        LDA (ram_0004_t36_data),Y
                                        STA (ram_0002_t65_data),Y
                                        INY
                                        BNE bra_FD6A_loop
                                        INC ram_0002_t65_data + $01
                                        INC ram_0004_t36_data + $01
                                        LDA ram_0004_t36_data + $01
                                        CMP #> $E000
                                        BNE bra_FD6A_loop
                                        RTS



vec_FD6B_NMI:
C - - - - - 0x01FD7B 07:FD6B: 48        PHA
C - - - - - 0x01FD7C 07:FD6C: 8A        TXA
C - - - - - 0x01FD7D 07:FD6D: 48        PHA
C - - - - - 0x01FD7E 07:FD6E: 98        TYA
C - - - - - 0x01FD7F 07:FD6F: 48        PHA
C - - - - - 0x01FD80 07:FD70: A4 24     LDY ram_nmi_flag_3
C - - - - - 0x01FD82 07:FD72: F0 16     BEQ bra_FD8A_skip
C - - - - - 0x01FD84 07:FD74: 20 48 FE  JSR sub_FE48_try_to_disable_rendering
C - - - - - 0x01FD87 07:FD77: 20 D7 FD  JSR sub_FDD7_prepare_irq_data
C - - - - - 0x01FD8A 07:FD7A: 20 11 FF  JSR sub_FF11
C - - - - - 0x01FD8D 07:FD7D: 20 56 FE  JSR sub_FE56
C - - - - - 0x01FD90 07:FD80: 20 AA FE  JSR sub_FEAA_update_sound_engine
C - - - - - 0x01FD93 07:FD83: A9 01     LDA #$01
C - - - - - 0x01FD95 07:FD85: 85 C4     STA ram_nmi_flag_2
C - - - - - 0x01FD97 07:FD87: 4C D1 FD  JMP loc_FDD1_exit_interrupt
bra_FD8A_skip:
C - - - - - 0x01FD9A 07:FD8A: AD 02 20  LDA $2002
C - - - - - 0x01FD9D 07:FD8D: 20 93 FE  JSR sub_FE93_disable_rendering
C - - - - - 0x01FDA0 07:FD90: 78        SEI
C - - - - - 0x01FDA1 07:FD91: A9 00     LDA #< ram_oam
C - - - - - 0x01FDA3 07:FD93: 8D 03 20  STA $2003
C - - - - - 0x01FDA6 07:FD96: A0 02     LDY #> ram_oam
C - - - - - 0x01FDA8 07:FD98: 8C 14 40  STY $4014
C - - - - - 0x01FDAB 07:FD9B: 58        CLI
C - - - - - 0x01FDAC 07:FD9C: E6 24     INC ram_nmi_flag_3
C - - - - - 0x01FDAE 07:FD9E: 20 85 D5  JSR sub_0x01D595
C - - - - - 0x01FDB1 07:FDA1: 20 48 FE  JSR sub_FE48_try_to_disable_rendering
C - - - - - 0x01FDB4 07:FDA4: 20 D7 FD  JSR sub_FDD7_prepare_irq_data
C - - - - - 0x01FDB7 07:FDA7: 20 22 FF  JSR sub_FF22_write_chr_banks
C - - - - - 0x01FDBA 07:FDAA: 20 56 FE  JSR sub_FE56
C - - - - - 0x01FDBD 07:FDAD: 20 AA FE  JSR sub_FEAA_update_sound_engine
C - - - - - 0x01FDC0 07:FDB0: 20 97 FF  JSR sub_FF97
C - - - - - 0x01FDC3 07:FDB3: A9 01     LDA #$01    ; con_prg_pair + $01
C - - - - - 0x01FDC5 07:FDB5: 8D 5C 03  STA ram_035C_flag
C - - - - - 0x01FDC8 07:FDB8: 20 4C F3  JSR sub_F34C_prg_bankswitch
C - - - - - 0x01FDCB 07:FDBB: 20 F9 CF  JSR sub_0x01D009
C - - - - - 0x01FDCE 07:FDBE: CE 5C 03  DEC ram_035C_flag   ; -> 00
C - - - - - 0x01FDD1 07:FDC1: 20 D1 D2  JSR sub_0x01D2E1
C - - - - - 0x01FDD4 07:FDC4: 20 DE FE  JSR sub_FEDE
C - - - - - 0x01FDD7 07:FDC7: 20 0B FF  LDA ram_chr_bank + $04
                                        STA ram_copy_chr_bank_4
C - - - - - 0x01FDDA 07:FDCA: A9 00     LDA #$00
C - - - - - 0x01FDDC 07:FDCC: 20 77 D2  JSR sub_0x01D287_write_to_buffer___unk_X
; A = 00
C - - - - - 0x01FDDF 07:FDCF: 85 24     STA ram_nmi_flag_3
loc_FDD1_exit_interrupt:
C D 3 - - - 0x01FDE1 07:FDD1: 68        PLA
C - - - - - 0x01FDE2 07:FDD2: A8        TAY
C - - - - - 0x01FDE3 07:FDD3: 68        PLA
C - - - - - 0x01FDE4 07:FDD4: AA        TAX
C - - - - - 0x01FDE5 07:FDD5: 68        PLA
C - - - - - 0x01FDE6 07:FDD6: 40        RTI



sub_FDD7_prepare_irq_data:
C - - - - - 0x01FDE7 07:FDD7: A2 00     LDX #$00
C - - - - - 0x01FDE9 07:FDD9: 86 2A     STX ram_002A
C - - - - - 0x01FDED 07:FDDD: 8D 00 E0  STX $5204
                                        STX ram_prev_5203
C - - - - - 0x01FDF0 07:FDE0: A5 5A     LDA ram_005A_flag
C - - - - - 0x01FDF2 07:FDE2: F0 63     BEQ bra_FE47_RTS
C - - - - - 0x01FDF4 07:FDE4: A5 76     LDA ram_irq_handler
C - - - - - 0x01FDF6 07:FDE6: F0 5F     BEQ bra_FE47_RTS    ; if con_irq_00
C - - - - - 0x01FDF8 07:FDE8: 85 C8     STA ram_copy_irq_handler
C - - - - - 0x01FDFA 07:FDEA: A5 4E     LDA ram_next_scanline
C - - - - - 0x01FDFC 07:FDEC: 85 C9     STA ram_scanline
C - - - - - 0x01FDFE 07:FDEE: A5 4F     LDA ram_004F
C - - - - - 0x01FE00 07:FDF0: 85 CA     STA ram_00CA_scanline
C - - - - - 0x01FE02 07:FDF2: A5 59     LDA ram_0059
C - - - - - 0x01FE04 07:FDF4: 85 D6     STA ram_00D6
C - - - - - 0x01FE06 07:FDF6: A5 5D     LDA ram_005D
C - - - - - 0x01FE08 07:FDF8: 85 D9     STA ram_00D9
C - - - - - 0x01FE0A 07:FDFA: A5 B9     LDA ram_00B9_ppu_addr_hi
C - - - - - 0x01FE0C 07:FDFC: 85 CB     STA ram_00CB_ppu_addr_hi
C - - - - - 0x01FE0E 07:FDFE: A5 BA     LDA ram_00BA_ppu_addr_lo
C - - - - - 0x01FE10 07:FE00: 85 CC     STA ram_00CC_ppu_addr_lo
C - - - - - 0x01FE12 07:FE02: A5 A9     LDA ram_00A9
C - - - - - 0x01FE14 07:FE04: 85 D7     STA ram_00D7
C - - - - - 0x01FE16 07:FE06: A5 AA     LDA ram_00AA
C - - - - - 0x01FE18 07:FE08: 85 D8     STA ram_00D8
C - - - - - 0x01FE1A 07:FE0A: AD 02 20  LDA $2002
C - - - - - 0x01FE1D 07:FE0D: A0 10     LDY #$10
C - - - - - 0x01FE1F 07:FE0F: 8E 05 20  STX $2005
C - - - - - 0x01FE22 07:FE12: 8E 05 20  STX $2005
C - - - - - 0x01FE25 07:FE15: AD 02 20  LDA $2002
C - - - - - 0x01FE28 07:FE18: A9 FF     LDA #$FF
C - - - - - 0x01FE2A 07:FE1A: 8D 01 C0  STA $C001
C - - - - - 0x01FE2D 07:FE1D: 8D 00 C0  STA $C000
C - - - - - 0x01FE30 07:FE20: 8E 06 20  STX $2006
C - - - - - 0x01FE33 07:FE23: 8E 06 20  STX $2006
C - - - - - 0x01FE36 07:FE26: 8C 06 20  STY $2006
C - - - - - 0x01FE39 07:FE29: 8C 06 20  STY $2006
C - - - - - 0x01FE3C 07:FE2C: 8E 06 20  STX $2006
C - - - - - 0x01FE3F 07:FE2F: 8E 06 20  STX $2006
C - - - - - 0x01FE42 07:FE32: 8C 06 20  STY $2006
C - - - - - 0x01FE45 07:FE35: 8C 06 20  STY $2006
C - - - - - 0x01FE48 07:FE38: A5 C9     LDA ram_scanline
                                        CLC
                                        ADC ram_prev_5203
                                        STA ram_prev_5203
                                        INC ram_prev_5203
C - - - - - 0x01FE4A 07:FE3A: 8D 00 C0  STA $5203
C - - - - - 0x01FE4D 07:FE3D: 8D 01 C0  LDA #$80
C - - - - - 0x01FE50 07:FE40: 8D 01 E0  STA $5204
C - - - - - 0x01FE53 07:FE43: 20 9E F8  JSR sub_F89E_select_irq_handler
C - - - - - 0x01FE56 07:FE46: 58        CLI
bra_FE47_RTS:
C - - - - - 0x01FE57 07:FE47: 60        RTS



sub_FE48_try_to_disable_rendering:
C - - - - - 0x01FE58 07:FE48: A5 FE     LDA ram_for_2001
C - - - - - 0x01FE5A 07:FE4A: A6 25     LDX ram_disable_rendering_timer
C - - - - - 0x01FE5C 07:FE4C: F0 04     BEQ bra_FE52
C - - - - - 0x01FE5E 07:FE4E: C6 25     DEC ram_disable_rendering_timer
C - - - - - 0x01FE60 07:FE50: 29 E7     AND #$E7
bra_FE52:
C - - - - - 0x01FE62 07:FE52: 8D 01 20  STA $2001
C - - - - - 0x01FE65 07:FE55: 60        RTS



sub_FE56:
C - - - - - 0x01FE66 07:FE56: AD 02 20  LDA $2002
C - - - - - 0x01FE69 07:FE59: A9 20     LDA #> $2000
C - - - - - 0x01FE6B 07:FE5B: 8D 06 20  STA $2006
C - - - - - 0x01FE6E 07:FE5E: A9 00     LDA #< $2000
C - - - - - 0x01FE70 07:FE60: 8D 06 20  STA $2006
C - - - - - 0x01FE73 07:FE63: AD 02 20  LDA $2002
C - - - - - 0x01FE76 07:FE66: A5 FD     LDA ram_scroll_X
C - - - - - 0x01FE78 07:FE68: 8D 05 20  STA $2005
C - - - - - 0x01FE7B 07:FE6B: A5 FC     LDA ram_scroll_Y
C - - - - - 0x01FE7D 07:FE6D: 8D 05 20  STA $2005
loc_0x01FE80:
sub_0x01FE80:
C D 3 - - - 0x01FE80 07:FE70: A5 FF     LDA ram_for_2000
C - - - - - 0x01FE82 07:FE72: 8D 00 20  STA $2000
C - - - - - 0x01FE85 07:FE75: 60        RTS



sub_FE76:
C - - - - - 0x01FE86 07:FE76: A9 0F     LDA #$0F
C - - - - - 0x01FE88 07:FE78: 8D 15 40  STA $4015
C - - - - - 0x01FE8B 07:FE7B: A9 C0     LDA #$C0
C - - - - - 0x01FE8D 07:FE7D: 8D 17 40  STA $4017
C - - - - - 0x01FE90 07:FE80: 60        RTS



sub_FE81_enable_rendering:
C - - - - - 0x01FE91 07:FE81: A9 A8     LDA #$A8
C - - - - - 0x01FE93 07:FE83: 85 FF     STA ram_for_2000
; bzk optimize, useless STA
C - - - - - 0x01FE95 07:FE85: 85 2C     STA ram_002C_useless
C - - - - - 0x01FE97 07:FE87: 8D 00 20  STA $2000
C - - - - - 0x01FE9A 07:FE8A: A9 18     LDA #$18
C - - - - - 0x01FE9C 07:FE8C: 85 FE     STA ram_for_2001
C - - - - - 0x01FE9E 07:FE8E: A9 05     LDA #$05
C - - - - - 0x01FEA0 07:FE90: 85 25     STA ram_disable_rendering_timer
C - - - - - 0x01FEA2 07:FE92: 60        RTS



sub_FE93_disable_rendering:
sub_0x01FEA3_disable_rendering:
loc_0x01FEA3_disable_rendering:
C D 3 - - - 0x01FEA3 07:FE93: A5 FF     LDA ram_for_2000
C - - - - - 0x01FEA5 07:FE95: 29 7F     AND #$7F
C - - - - - 0x01FEA7 07:FE97: 8D 00 20  STA $2000
C - - - - - 0x01FEAA 07:FE9A: A9 00     LDA #$00
C - - - - - 0x01FEAC 07:FE9C: 8D 06 20  STA $2006
C - - - - - 0x01FEAF 07:FE9F: 8D 06 20  STA $2006
C - - - - - 0x01FEB2 07:FEA2: A5 FE     LDA ram_for_2001
C - - - - - 0x01FEB4 07:FEA4: 29 E7     AND #$E7
C - - - - - 0x01FEB6 07:FEA6: 8D 01 20  STA $2001
C - - - - - 0x01FEB9 07:FEA9: 60        RTS



sub_FEAA_update_sound_engine:
C - - - - - 0x01FEBA 07:FEAA: A5 2D     LDA ram_nmi_flag_1
C - - - - - 0x01FEBC 07:FEAC: D0 2F     BNE bra_FEDD_RTS
C - - - - - 0x01FEBE 07:FEAE: A5 36     LDA ram_prg_banks_pair
C - - - - - 0x01FEC0 07:FEB0: 48        PHA
C - - - - - 0x01FEC1 07:FEB1: A9 04     LDA #con_prg_pair + $04
C - - - - - 0x01FEC3 07:FEB3: 20 BA FE  JSR sub_FEBA
C - - - - - 0x01FEC6 07:FEB6: 20 0F AA  JSR sub_0x012A1F_update_sound_engine
C - - - - - 0x01FEC9 07:FEB9: 68        PLA
sub_FEBA:
C - - - - - 0x01FECA 07:FEBA: 85 36     STA ram_prg_banks_pair
C - - - - - 0x01FECC 07:FEBC: 4C 62 F3  JMP loc_F362_switch_prg_bank_pair



sub_FEBF:
sub_0x01FECF:
C - - - - - 0x01FECF 07:FEBF: 20 03 FF  INC ram_nmi_flag_1
C - - - - - 0x01FED2 07:FEC2: A9 01     LDA #con_F3D6_01
C - - - - - 0x01FED4 07:FEC4: 20 B3 F3  JSR sub_F3B3_execute_script
C - - - - - 0x01FED7 07:FEC7: 4C 06 FF  JMP loc_FF06



sub_FECA_add_music_to_queue:
loc_0x01FEDA_add_music_to_queue:
sub_0x01FEDA_add_music_to_queue:
C D 3 - - - 0x01FEDA 07:FECA: 8C 6C 03  STY ram_save_Y
C - - - - - 0x01FEDD 07:FECD: AC 62 03  LDY ram_sound_hist_index_1
C - - - - - 0x01FEE0 07:FED0: 99 90 03  STA ram_sound_history,Y
C - - - - - 0x01FEE3 07:FED3: C8        INY
C - - - - - 0x01FEE4 07:FED4: 98        TYA
C - - - - - 0x01FEE5 07:FED5: 29 0F     AND #$0F
C - - - - - 0x01FEE7 07:FED7: 8D 62 03  STA ram_sound_hist_index_1
C - - - - - 0x01FEEA 07:FEDA: AC 6C 03  LDY ram_save_Y
bra_FEDD_RTS:
C - - - - - 0x01FEED 07:FEDD: 60        RTS



sub_FEDE:
C - - - - - 0x01FEEE 07:FEDE: A9 04     LDA #con_prg_pair + $04
C - - - - - 0x01FEF0 07:FEE0: 20 4C F3  JSR sub_F34C_prg_bankswitch
loc_FEE3_loop:
C D 3 - - - 0x01FEF3 07:FEE3: AE 63 03  LDX ram_sound_hist_index_2
C - - - - - 0x01FEF6 07:FEE6: EC 62 03  CPX ram_sound_hist_index_1
C - - - - - 0x01FEF9 07:FEE9: F0 1A     BEQ bra_FEDD_RTS
C - - - - - 0x01FEFB 07:FEEB: BD 90 03  LDA ram_sound_history,X
C - - - - - 0x01FEFE 07:FEEE: 85 EE     STA ram_00EE_se
C - - - - - 0x01FF00 07:FEF0: 20 03 FF  INC ram_nmi_flag_1
C - - - - - 0x01FF03 07:FEF3: 20 86 B2  JSR sub_0x013296
C - - - - - 0x01FF06 07:FEF6: 20 06 FF  JSR sub_FF06
C - - - - - 0x01FF09 07:FEF9: E8        INX
C - - - - - 0x01FF0A 07:FEFA: 8A        TXA
C - - - - - 0x01FF0B 07:FEFB: 29 0F     AND #$0F
C - - - - - 0x01FF0D 07:FEFD: 8D 63 03  STA ram_sound_hist_index_2
C - - - - - 0x01FF10 07:FF00: 4C E3 FE  JMP loc_FEE3_loop



loc_FF06:
sub_FF06:
C D 3 - - - 0x01FF16 07:FF06: A9 00     LDA #$00
C - - - - - 0x01FF18 07:FF08: 85 2D     STA ram_nmi_flag_1
C - - - - - 0x01FF1A 07:FF0A: 60        RTS



sub_FF11:
C - - - - - 0x01FF21 07:FF11: 20 3A FF  JSR sub_FF3A_set_mirroring_and_chr_banks
C - - - - - 0x01FF29 07:FF19: AD 4A 03  LDA ram_copy_chr_bank_4
C - - - - - 0x01FF2C 07:FF1C: 8D 01 80  STA $5126
C - - - - - 0x01FF2F 07:FF1F: 4C 2F FF  JMP loc_FF2F



sub_FF22_write_chr_banks:
C - - - - - 0x01FF32 07:FF22: 20 3A FF  JSR sub_FF3A_set_mirroring_and_chr_banks
C - - - - - 0x01FF3A 07:FF2A: A5 7B     LDA ram_chr_bank + $04
C - - - - - 0x01FF3C 07:FF2C: 8D 01 80  STA $5126
loc_FF2F:
C - - - - - 0x01FF44 07:FF34: A5 7C     LDA ram_chr_bank + $05
C - - - - - 0x01FF46 07:FF36: 8D 01 80  STA $5127
C - - - - - 0x01FF49 07:FF39: 60        RTS



sub_FF3A_set_mirroring_and_chr_banks:
C - - - - - 0x01FF4A 07:FF3A: A5 34     LDY ram_mirroring
                                        LDA tbl_FF4D_mirroring,Y
C - - - - - 0x01FF4C 07:FF3C: 8D 00 A0  STA $5105
                                        LDY ram_chr_bank
                                        STY $5128
                                        INY
                                        STY $5129
                                        LDY ram_chr_bank + $01
                                        STY $512A
                                        INY
                                        STY $512B
                                        LDA ram_chr_bank + $02
                                        STA $5124
                                        LDA ram_chr_bank + $03
                                        STA $5125
C - - - - - 0x01FF5E 07:FF4E: 60        RTS



tbl_FF4D_mirroring:
                                        .byte $44 ; 00 vertical
                                        .byte $50 ; 01 horisontal



sub_FF4F:
C - - - - - 0x01FF5F 07:FF4F: A0 3C     LDY #con_chr_bank + $3C
C - - - - - 0x01FF66 07:FF56: 8C 01 80  STY $5128
                                        INY
                                        STY $5129
                                        DEY
C - - - - - 0x01FF6E 07:FF5E: 8C 01 80  STY $512A
                                        INY
                                        STY $512B
C - - - - - 0x01FF71 07:FF61: D0 16     BNE bra_FF79    ; jmp



sub_FF63:
; X свободен
C - - - - - 0x01FF78 07:FF68: A9 7C     LDY #con_chr_bank + $7C
C - - - - - 0x01FF7A 07:FF6A: 8D 01 80  STY $5128
                                        INY
                                        STY $5129
C - - - - - 0x01FF82 07:FF72: A9 3E     LDY #con_chr_bank + $3E
C - - - - - 0x01FF84 07:FF74: 8D 01 80  STY $512A
                                        INY
                                        STY $512B
C - - - - - 0x01FF87 07:FF77: A0 6F     LDY #con_chr_bank + $6F
bra_FF79:
C - - - - - 0x01FF8E 07:FF7E: 8C 01 80  STY $5124
C - - - - - 0x01FF95 07:FF85: 8C 01 80  STY $5125
C - - - - - 0x01FF9C 07:FF8C: 8C 01 80  STY $5126
C - - - - - 0x01FFA3 07:FF93: 8C 01 80  STY $5127
C - - - - - 0x01FFA6 07:FF96: 60        RTS



sub_FF97:
C - - - - - 0x01FFA7 07:FF97: A2 00     LDX #$00
C - - - - - 0x01FFA9 07:FF99: 20 C8 FF  JSR sub_FFC8
C - - - - - 0x01FFAC 07:FF9C: A2 02     LDX #$02
C - - - - - 0x01FFAE 07:FF9E: 20 C8 FF  JSR sub_FFC8
C - - - - - 0x01FFB1 07:FFA1: A5 00     LDA ram_0000_t32
C - - - - - 0x01FFB3 07:FFA3: C5 02     CMP ram_0000_t32 + $02
C - - - - - 0x01FFB5 07:FFA5: D0 1A     BNE bra_FFC1
C - - - - - 0x01FFB7 07:FFA7: A5 01     LDA ram_0000_t32 + $01
C - - - - - 0x01FFB9 07:FFA9: C5 03     CMP ram_0000_t32 + $03
C - - - - - 0x01FFBB 07:FFAB: D0 14     BNE bra_FFC1
C - - - - - 0x01FFBD 07:FFAD: A2 00     LDX #$00
C - - - - - 0x01FFBF 07:FFAF: 20 B3 FF  JSR sub_FFB3
C - - - - - 0x01FFC2 07:FFB2: E8        INX ; 01
sub_FFB3:
C - - - - - 0x01FFC3 07:FFB3: B5 00     LDA ram_0000_t32,X
C - - - - - 0x01FFC5 07:FFB5: A8        TAY
C - - - - - 0x01FFC6 07:FFB6: 55 FA     EOR ram_btn_hold_2,X
C - - - - - 0x01FFC8 07:FFB8: 35 00     AND ram_0000_t32,X
C - - - - - 0x01FFCA 07:FFBA: 95 40     STA ram_btn_press_1,X
C - - - - - 0x01FFCC 07:FFBC: 95 F8     STA ram_btn_press_2,X
C - - - - - 0x01FFCE 07:FFBE: 94 FA     STY ram_btn_hold_2,X
C - - - - - 0x01FFD0 07:FFC0: 60        RTS
bra_FFC1:
- - - - - - 0x01FFD1 07:FFC1: A9 00     LDA #$00
- - - - - - 0x01FFD3 07:FFC3: 85 40     STA ram_btn_press_1
- - - - - - 0x01FFD5 07:FFC5: 85 41     STA ram_btn_press_1 + $01
- - - - - - 0x01FFD7 07:FFC7: 60        RTS



sub_FFC8:
C - - - - - 0x01FFD8 07:FFC8: A0 01     LDY #$01
C - - - - - 0x01FFDA 07:FFCA: 8C 16 40  STY $4016
C - - - - - 0x01FFDD 07:FFCD: 88        DEY ; 00
C - - - - - 0x01FFDE 07:FFCE: 8C 16 40  STY $4016
C - - - - - 0x01FFE1 07:FFD1: A0 08     LDY #$08
bra_FFD3_loop:
C - - - - - 0x01FFE3 07:FFD3: AD 16 40  LDA $4016
C - - - - - 0x01FFE6 07:FFD6: 85 04     STA ram_0004_t29
C - - - - - 0x01FFE8 07:FFD8: 4A        LSR
C - - - - - 0x01FFE9 07:FFD9: 05 04     ORA ram_0004_t29
C - - - - - 0x01FFEB 07:FFDB: 4A        LSR
C - - - - - 0x01FFEC 07:FFDC: 36 00     ROL ram_0000_t32,X
C - - - - - 0x01FFEE 07:FFDE: AD 17 40  LDA $4017
C - - - - - 0x01FFF1 07:FFE1: 85 05     STA ram_0005_t10
C - - - - - 0x01FFF3 07:FFE3: 4A        LSR
C - - - - - 0x01FFF4 07:FFE4: 05 05     ORA ram_0005_t10
C - - - - - 0x01FFF6 07:FFE6: 4A        LSR
C - - - - - 0x01FFF7 07:FFE7: 36 01     ROL ram_0000_t32 + $01,X
C - - - - - 0x01FFF9 07:FFE9: 88        DEY
C - - - - - 0x01FFFA 07:FFEA: D0 E7     BNE bra_FFD3_loop
C - - - - - 0x01FFFC 07:FFEC: 60        RTS



.out .sprintf("Free bytes in bank FF: 0x%04X [%d]", ($FFD0 - *), ($FFD0 - *))



.segment "MMC5_INIT"
.org $FFD0 ; for listing file
vec_FFD0_RESET:
; конфигурация маппера должна находиться
; в фиксированном банке E000-FFFF, поскольку
; банк C000-DFFF не гарантирован после ресета
                                        LDX #$03
                                        STX $5100   ; prg mode 3
                                        STX $5101   ; chr mode 3
                                        DEX ; 02
                                        STX $5104   ; extended ram mode 2
                                        STX $5102   ; disable prg ram protection 1
                                        DEX ; 01
                                        STX $5103   ; disable prg ram protection 2
                                        DEX ; 00
                                        STX $5204   ; disable irq
                                        LDA #$44
                                        STA $5105   ; vertical mirroring
                                        LDA #con_prg_bank + $3E
                                        STA $5116   ; bank for C000-DFFF
                                        JMP loc_FD2B_RESET



.segment "VECTORS"
- D 3 - - - 0x02000A 07:FFFA: 6B FD     .word vec_FD6B_NMI
- D 3 - - - 0x02000C 07:FFFC: 2B FD     .word vec_FFD0_RESET
- D 3 - - - 0x02000E 07:FFFE: 28 F7     .word vec_F728_IRQ



