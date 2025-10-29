.segment "BANK_FF"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $E000  ; for listing file
; 0x07E010-0x08000F



.export sub_0x01E086
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
.export sub_0x01F69F_get_stage_view_type
.export sub_0x01F6BF
.export loc_0x01F6D1
.export sub_0x01F6D1
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
.export sub_0x01E136_copy_ppu_address
.export loc_0x01E136_copy_ppu_address
.export loc_0x01EDD2
.export sub_0x01F309_clear_0040_00DF
.export sub_0x01F30D_clear_0060_00DF
.export sub_0x01F319_clear_0400_07FF
.export sub_0x01F32C
.export loc_0x01F458_select_bg_chr_bank_pair
.export sub_0x01F606
.export sub_0x01F9A4



sub_0x01E038:
C - - - - - 0x01E038 07:E028: 20 F1 DE  JSR sub_0x01DF01
C - - - - - 0x01E03B 07:E02B: B0 D6     BCC bra_E02D
C - - - - - 0x01E013 07:E003: 20 1E E0  JSR sub_0x01E02E
C - - - - - 0x01E016 07:E006: 18        CLC
C - - - - - 0x01E017 07:E007: 69 10     ADC #$10
C - - - - - 0x01E019 07:E009: D0 03     JMP loc_0x01E01E
bra_E02D:
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
C D 3 - - - 0x01E12C 07:E11C: A6 39     LDX ram_buffer_index_2
C - - - - - 0x01E12E 07:E11E: A5 DF     LDA ram_00DF
C - - - - - 0x01E130 07:E120: 20 CF DD  JSR sub_0x01DDDF
C - - - - - 0x01E133 07:E123: 4C 32 E1  JMP loc_E132



sub_0x01E136_copy_ppu_address:
loc_0x01E136_copy_ppu_address:
C - - - - - 0x01E136 07:E126: A5 BA     LDA ram_00BA_ppu_addr_lo
C - - - - - 0x01E138 07:E128: 85 00     STA ram_0000_t73_ppu_addr_lo
C - - - - - 0x01E13A 07:E12A: A5 B9     LDA ram_00B9_ppu_addr_hi
C - - - - - 0x01E13C 07:E12C: 85 01     STA ram_0001_t14_ppu_addr_hi
C - - - - - 0x01E13E 07:E12E: 60        RTS



loc_E132:
.export loc_0x01E142
loc_0x01E142:
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
loc_E179:
.export loc_0x01E189
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
C D 3 - - - 0x01E19F 07:E18F: A9 00     LDA #$00
C - - - - - 0x01E1A1 07:E191: 20 24 DE  JSR sub_0x01DE34_write_A_to_buffer_and_INX
C - - - - - 0x01E1A4 07:E194: 86 39     STX ram_buffer_index_2
C - - - - - 0x01E1A6 07:E196: 60        RTS



.export tbl_0x01E818
tbl_0x01E818:
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
C - - - - - 0x01EDFD 07:EDED: 20 50 EE  TAY
                                        STY ram_0002_t28
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
C - - - - - 0x01EE60 07:EE50: A8        TAY
C - - - - - 0x01EE61 07:EE51: 84 02     STY ram_0002_t28
C - - - - - 0x01EE63 07:EE53: 60        RTS



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



tbl_F273:
.export tbl_0x01F283
tbl_0x01F283:
- D 3 - - - 0x01F283 07:F273: 77        .byte $77, $11   ; 00 stage 1
- D 3 - - - 0x01F285 07:F275: DB        .byte $DB, $14   ; 02 stage 2
- D 3 - - - 0x01F287 07:F277: 6A        .byte $6A, $09   ; 04 stage 3
- D 3 - - - 0x01F289 07:F279: 9A        .byte $9A, $13   ; 06 stage 4
- D 3 - - - 0x01F28B 07:F27B: 5B        .byte $5B, $14   ; 08 stage 5



.export tbl_0x01F291
tbl_0x01F291:
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



.export sub_0x01F2F0
sub_0x01F2F0:
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
C - - - - - 0x01F384 07:F374: 8D 01 80  STA $5114   ; 8000-9FFF
                                        LDA tbl_F393_prg_pairs + $02,Y
                                        STA $5116   ; C000-DFFF
C - - - - - 0x01F38E 07:F37E: B9 94 F3  LDA tbl_F393_prg_pairs + $01,Y
                                        CMP #con_prg_bank + $7F
                                        BNE bra_F381
; C = 1
                                        LDA ram_stage
                                        ADC #con_prg_bank + $26 - $01
bra_F381:
C - - - - - 0x01F391 07:F381: 8D 01 80  STA $5115   ; A000-BFFF
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
; 03 
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
; 09 unused
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
; 0F (unused) 
                                        .byte con_prg_bank + $7F   ; 
                                        .byte con_prg_bank + $7F   ; 
                                        .byte con_prg_bank + $7F   ; 
; 10 
                                        .byte con_prg_bank + $04   ; 
                                        .byte con_prg_bank + $20   ; 
                                        .byte con_prg_bank + $21   ; 
; 11 
                                        .byte con_prg_bank + $04   ; 
                                        .byte con_prg_bank + $22   ; 
                                        .byte con_prg_bank + $23   ; 
; 12 
                                        .byte con_prg_bank + $24   ; 
                                        .byte con_prg_bank + $7F   ; 
                                        .byte con_prg_bank + $25   ; 
; 13 unused
                                        .byte con_prg_bank + $04   ; 
                                        .byte con_prg_bank + $23   ; 
                                        .byte con_prg_bank + $3D   ; 
 


loc_F3B3_execute_script:
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
; 00 con_F3D6_00 (перемещено)
- D 3 - - - 0x01F3E6 07:F3D6: 54 EE     .word ofs_006_0x01EE64_00
- D 3 - - - 0x01F3E8 07:F3D8: 03        .byte con_prg_pair + $12   ; 
; 01 con_F3D6_01
- D 3 - - - 0x01F3E9 07:F3D9: D6 B3     .word ofs_006_0x0133E6_01
- D 3 - - - 0x01F3EB 07:F3DB: 04        .byte con_prg_pair + $04   ; 
; 02 con_F3D6_02 unused, index doesn't exist
- - - - - - 0x01F3EC 07:F3DC: 0F AA     .word $FFFF ; 
- - - - - - 0x01F3EE 07:F3DE: 04        .byte con_prg_pair + $04   ; 
; 03 con_F3D6_03 unused, index doesn't exist
- - - - - - 0x01F3EF 07:F3DF: 86 B2     .word $FFFF ; 
- - - - - - 0x01F3F1 07:F3E1: 04        .byte con_prg_pair + $04   ; 
; 04 con_F3D6_04 (перемещено)
- D 3 - - - 0x01F3F2 07:F3E2: 23 F1     .word ofs_006_0x01F133_04
- D 3 - - - 0x01F3F4 07:F3E4: 03        .byte con_prg_pair + $12   ; 
; 05 con_F3D6_05 unused
- D 3 - - - 0x01F3F5 07:F3E5: 75 DA     .word $FFFF ; 
- D 3 - - - 0x01F3F7 07:F3E7: 03        .byte con_prg_pair + $03   ; 
; 06 con_F3D6_06 unused
- D 3 - - - 0x01F3F8 07:F3E8: 75 DA     .word $FFFF ; 
- D 3 - - - 0x01F3FA 07:F3EA: 01        .byte con_prg_pair + $01   ; 
; 07 con_F3D6_07 unused, index doesn't exist
- - - - - - 0x01F3FB 07:F3EB: 01 A0     .word $FFFF ; 
- - - - - - 0x01F3FD 07:F3ED: 05        .byte con_prg_pair + $05   ; 
; 08 con_F3D6_08 unused
- D 3 - - - 0x01F3FE 07:F3EE: E0 F2     .word $FFFF ; 
- D 3 - - - 0x01F400 07:F3F0: 03        .byte con_prg_pair + $03   ; 
; 09 con_F3D6_09 unused
- D 3 - - - 0x01F401 07:F3F1: 34 AE     .word $FFFF ; 
- D 3 - - - 0x01F403 07:F3F3: 02        .byte con_prg_pair + $02   ; 
; 0A con_F3D6_0A unused, index doesn't exist
- - - - - - 0x01F404 07:F3F4: E4 A1     .word $FFFF ; 
- - - - - - 0x01F406 07:F3F6: 01        .byte con_prg_pair + $01   ; 
; 0B con_F3D6_0B
- D 3 - - - 0x01F407 07:F3F7: F0 AE     .word ofs_006_0x00AF00_0B
- D 3 - - - 0x01F409 07:F3F9: 02        .byte con_prg_pair + $02   ; 
; 0C con_F3D6_0C unused
- D 3 - - - 0x01F40A 07:F3FA: 75 DA     .word $FFFF ; 
- D 3 - - - 0x01F40C 07:F3FC: 07        .byte con_prg_pair + $01   ; 
; 0D con_F3D6_0D
- D 3 - - - 0x01F40D 07:F3FD: 06 AF     .word ofs_006_0x016F16_0D
- D 3 - - - 0x01F40F 07:F3FF: 01        .byte con_prg_pair + $01   ; 
; 0E con_F3D6_0E
- D 3 - - - 0x01F410 07:F400: 0D B1     .word ofs_006_0x01711D_0E
- D 3 - - - 0x01F412 07:F402: 01        .byte con_prg_pair + $01   ; 
; 0F con_F3D6_0F (перемещено)
- D 3 - - - 0x01F413 07:F403: EC EE     .word ofs_006_0x01EEFC_0F
- D 3 - - - 0x01F415 07:F405: 03        .byte con_prg_pair + $12   ; 
; 10 con_F3D6_10 unused, index doesn't exist
- - - - - - 0x01F416 07:F406: 88 B3     .word $FFFF ; 
- - - - - - 0x01F418 07:F408: 05        .byte con_prg_pair + $05   ; 
; 11 con_F3D6_11 unused, index doesn't exist
- - - - - - 0x01F419 07:F409: 5A B6     .word $FFFF ; 
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
; 16 con_F3D6_16 unused
- D 3 - - - 0x01F428 07:F418: 72 97     .word $FFFF ; 
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
; 1C con_F3D6_1C unused
- D 3 - - - 0x01F43A 07:F42A: 6B DA     .word $FFFF ; 
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
; 21 con_F3D6_21 unused
- D 3 - - - 0x01F449 07:F439: 0F 80     .word $FFFF ; 
- D 3 - - - 0x01F44B 07:F43B: 02        .byte con_prg_pair + $02   ; 
; 22 con_F3D6_22 unused
- D 3 - - - 0x01F44C 07:F43C: C9 BF     .word $FFFF ; 
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
; 26 con_F3D6_26 new (перемещено)
                                        .word ofs_006_0x01DAA5_26
                                        .byte con_prg_pair + $12   ; 
; 27 con_F3D6_27 new (перемещено)
                                        .word ofs_006_0x01FC36_27
                                        .byte con_prg_pair + $12   ; 



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
C - - - - - 0x01F567 07:F557: 4C 67 F5  CLC
                                        RTS
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



sub_0x01F650:
C - - - - - 0x01F650 07:F640: A9 00     LDA #$00
C - - - - - 0x01F652 07:F642: 9D EC 07  STA ram_07EC,X
C - - - - - 0x01F655 07:F645: 9D E8 07  STA ram_07E8,X
C - - - - - 0x01F658 07:F648: 9D EA 07  STA ram_07EA,X
C - - - - - 0x01F65B 07:F64B: 9D E6 07  STA ram_07E6,X
C - - - - - 0x01F65E 07:F64E: 60        RTS



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
C - - - - - 0x01FC28 07:FC18: A6 26     LDX ram_buffer_index
C - - - - - 0x01FC2A 07:FC1A: A4 75     LDY ram_stage
C - - - - - 0x01FC2C 07:FC1C: C0 02     CPY #$02
C - - - - - 0x01FC2E 07:FC1E: 90 06     BCC bra_FC26
C - - - - - 0x01FC30 07:FC20: A6 39     LDX ram_buffer_index_2
C - - - - - 0x01FC32 07:FC22: E0 20     CPX #$20
C - - - - - 0x01FC34 07:FC24: B0 05     BCS bra_FC2B_RTS
bra_FC26:
                                        LDA #con_F3D6_27
                                        JMP loc_F3B3_execute_script
bra_FC2B_RTS:
C - - - - - 0x01FC3B 07:FC2B: 68        RTS



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



