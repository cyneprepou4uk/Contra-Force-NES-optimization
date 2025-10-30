.segment "BANK_24"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $8000  ; for listing file
; 0x048010-0x04A00F



; банк в паре с 25 (C000)
; в область A000 подключаются банки с данными уровней



.export ofs_006_0x01EE64_00
.export ofs_006_0x01EEFC_0F
.export ofs_006_0x01F133_04
.export ofs_006_0x01DAA5_26
.export ofs_006_0x01FC36_27



tbl_DA4D_nametable_attributes:
- D 2 - - - 0x01DA5D 07:DA4D: 91 8F     .word _off030_0x018FA1_00_stage_1
- D 2 - - - 0x01DA5F 07:DA4F: 9A A6     .word _off030_0x01A6AA_02_stage_2
- D 2 - - - 0x01DA61 07:DA51: D1 AE     .word _off030_0x006EE1_04_stage_3
- D 2 - - - 0x01DA63 07:DA53: 4A BC     .word _off030_0x01BC5A_06_stage_4
- D 2 - - - 0x01DA65 07:DA55: 4E BC     .word _off030_0x007C5E_08_stage_5



sub_EDB5_prepare_metatiles_pointers:
; out
    ; ram_0008_t17_metatiles_ptr
C - - - - - 0x01EDC5 07:EDB5: A4 88     LDY ram_x2_stage
C - - - - - 0x01EDC7 07:EDB7: B9 57 DA  LDA tbl_DA57_metatiles,Y
C - - - - - 0x01EDCA 07:EDBA: 85 08     STA ram_0008_t17_metatiles_ptr
C - - - - - 0x01EDCC 07:EDBC: B9 58 DA  LDA tbl_DA57_metatiles + $01,Y
C - - - - - 0x01EDCF 07:EDBF: 85 09     STA ram_0008_t17_metatiles_ptr + $01
C - - - - - 0x01EDD1 07:EDC1: 60        RTS



tbl_DA57_metatiles:
; 4x4 tiles
- D 2 - - - 0x01DA67 07:DA57: 01 86     .word _off029_0x018611_00_stage_1
- D 2 - - - 0x01DA69 07:DA59: AA 96     .word _off029_0x0196BA_02_stage_2
- D 2 - - - 0x01DA6B 07:DA5B: 01 A6     .word _off029_0x006611_04_stage_3
- D 2 - - - 0x01DA6D 07:DA5D: 5A B0     .word _off029_0x01B06A_06_stage_4
- D 2 - - - 0x01DA6F 07:DA5F: 5E B4     .word _off029_0x00746E_08_stage_5



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
C - - - - - 0x01EB2D 07:EB1D: B9 61 DA  LDA tbl_DA61_metatile_indexes,Y
C - - - - - 0x01EB30 07:EB20: 18        CLC
C - - - - - 0x01EB31 07:EB21: 65 00     ADC ram_0000_t8D_lo
C - - - - - 0x01EB33 07:EB23: 85 00     STA ram_0000_t8C_meta_indexes_ptr_lo
C - - - - - 0x01EB35 07:EB25: B9 62 DA  LDA tbl_DA61_metatile_indexes + $01,Y
C - - - - - 0x01EB38 07:EB28: 65 01     ADC ram_0001_t52_hi
C - - - - - 0x01EB3A 07:EB2A: 85 01     STA ram_0001_t51_meta_indexes_ptr_hi
C - - - - - 0x01EB3C 07:EB2C: 60        RTS



tbl_DA61_metatile_indexes:
- D 2 - - - 0x01DA71 07:DA61: 01 80     .word _off028_0x018011_00_stage_1
- D 2 - - - 0x01DA73 07:DA63: 2A 90     .word _off028_0x01903A_02_stage_2
- D 2 - - - 0x01DA75 07:DA65: 01 A0     .word _off028_0x006011_04_stage_3
- D 2 - - - 0x01DA77 07:DA67: 9A A7     .word _off028_0x01A7AA_06_stage_4
- D 2 - - - 0x01DA79 07:DA69: 5E AF     .word _off028_0x006F6E_08_stage_5



ofs_006_0x01FC36_27:
; con_F3D6_27
; bzk optimize, will be written to the same 0012 address at JSR.
; point JSR to 0x01F1BD, delete LDA
C - - - - - 0x01FC36 07:FC26: A5 12     LDA ram_0012_t17_data_index
C - - - - - 0x01FC38 07:FC28: 20 AB F1  JMP loc_F1AB



ofs_006_0x01EE64_00:
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
ofs_006_0x01EEFC_0F:
; con_F3D6_0F
C - - - - - 0x01EEFC 07:EEEC: A4 02     LDY ram_0002_t18_array_index
C - - - - - 0x01EEFE 07:EEEE: B9 00 04  LDA ram_0400,Y
C - - - - - 0x01EF01 07:EEF1: 85 00     STA ram_0000_t42
C - - - - - 0x01EF03 07:EEF3: A4 88     LDY ram_x2_stage
C - - - - - 0x01EF05 07:EEF5: B9 57 DA  LDA tbl_DA57_metatiles,Y
C - - - - - 0x01EF08 07:EEF8: 85 10     STA ram_0010_t19_metatiles_ptr
C - - - - - 0x01EF0A 07:EEFA: B9 58 DA  LDA tbl_DA57_metatiles + $01,Y
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



ofs_006_0x01F133_04:
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
C - - - - - 0x01F15C 07:F14C: B9 08 E8  LDA tbl_0x01E818,Y
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
C - - - - - 0x01F16C 07:F15C: B9 AE F5  LDA tbl_0x01F5BE,Y
C - - - - - 0x01F16F 07:F15F: 05 C1     ORA ram_00C1
C - - - - - 0x01F171 07:F161: 85 C1     STA ram_00C1
bra_F163:
C - - - - - 0x01F173 07:F163: A4 88     LDY ram_x2_stage
C - - - - - 0x01F175 07:F165: B9 81 F2  LDA tbl_0x01F291,Y
C - - - - - 0x01F178 07:F168: 85 04     STA ram_0004_t03_data
C - - - - - 0x01F17A 07:F16A: B9 82 F2  LDA tbl_0x01F291 + $01,Y
C - - - - - 0x01F17D 07:F16D: 85 05     STA ram_0004_t03_data + $01
C - - - - - 0x01F17F 07:F16F: A5 00     LDA ram_0000_t42
C - - - - - 0x01F181 07:F171: D9 73 F2  CMP tbl_0x01F283,Y
C - - - - - 0x01F184 07:F174: 90 0D     BCC bra_F183
C - - - - - 0x01F186 07:F176: B9 74 F2  LDA tbl_0x01F283 + $01,Y
C - - - - - 0x01F189 07:F179: 18        CLC
C - - - - - 0x01F18A 07:F17A: 79 73 F2  ADC tbl_0x01F283,Y
C - - - - - 0x01F18D 07:F17D: C5 00     CMP ram_0000_t42
C - - - - - 0x01F18F 07:F17F: F0 02     BEQ bra_F183
C - - - - - 0x01F191 07:F181: B0 03     BCS bra_F186
bra_F183:
C - - - - - 0x01F193 07:F183: 4C 4C F2  LDX ram_0053
                                        CLC
                                        RTS
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
C - - - - - 0x01F1AF 07:F19F: 4C 50 F2  LDX ram_0053
                                        SEC
                                        RTS
bra_F1A2:
C - - - - - 0x01F1B2 07:F1A2: A5 00     LDA ram_0000_t42
C - - - - - 0x01F1B4 07:F1A4: 38        SEC
C - - - - - 0x01F1B5 07:F1A5: F9 73 F2  SBC tbl_0x01F283,Y
C - - - - - 0x01F1B8 07:F1A8: A8        TAY
C - - - - - 0x01F1B9 07:F1A9: B1 04     LDA (ram_0004_t03_data),Y
sub_F1AB:
loc_F1AB:
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
C - - - - - 0x01F220 07:F210: B9 4D DA  LDA tbl_DA4D_nametable_attributes,Y
C - - - - - 0x01F223 07:F213: 85 06     STA ram_0006_t02_nmt_attr_data
C - - - - - 0x01F225 07:F215: B9 4E DA  LDA tbl_DA4D_nametable_attributes + $01,Y
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
C D 3 - - - 0x01F25C 07:F24C: A6 53     LDX ram_0053
C - - - - - 0x01F25E 07:F24E: 18        CLC
C - - - - - 0x01F25F 07:F24F: 60        RTS



tbl_F27D_ppu_address_hi:
- D 3 - - - 0x01F28D 07:F27D: 20        .byte $20   ; 00 
- D 3 - - - 0x01F28E 07:F27E: 2C        .byte $2C   ; 01 
- - - - - - 0x01F28F 07:F27F: 2C        .byte $2C   ; 02 
- - - - - - 0x01F290 07:F280: 2C        .byte $2C   ; 03 



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



ofs_006_0x01DAA5_26:
; con_F3D6_26
                                        LDA ram_0028_t01
C - - - - - 0x01DA99 07:DA89: 0A        ASL
C - - - - - 0x01DA9A 07:DA8A: A8        TAY
C - - - - - 0x01DA9B 07:DA8B: B9 9D DA  LDA tbl_DA9D,Y
C - - - - - 0x01DA9E 07:DA8E: 85 00     STA ram_0000_t1A_jmp
C - - - - - 0x01DAA0 07:DA90: B9 9E DA  LDA tbl_DA9D + $01,Y
C - - - - - 0x01DAA3 07:DA93: 85 01     STA ram_0000_t1A_jmp + $01
C - - - - - 0x01DAA5 07:DA95: 20 9A DA  JSR sub_0x01DAAA_execute_indirect_jump_0000
C - - - - - 0x01DAA8 07:DA98: 18        CLC
C - - - - - 0x01DAA9 07:DA99: 60        RTS



tbl_DA9D:
; see con_DA9D
- D 2 - - - 0x01DAAD 07:DA9D: 18 DC     .word ofs_002_DC18_00
- D 2 - - - 0x01DAAF 07:DA9F: D2 E3     .word ofs_002_E3D2_01
- D 2 - - - 0x01DAB1 07:DAA1: 64 E2     .word ofs_002_E264_02
- D 2 - - - 0x01DAB3 07:DAA3: C2 E1     .word ofs_002_E1C2_03
- D 2 - - - 0x01DAB5 07:DAA5: F0 EC     .word ofs_002_ECF0_04
- D 2 - - - 0x01DAB7 07:DAA7: 12 DD     .word ofs_002_DD12_05
- D 2 - - - 0x01DAB9 07:DAA9: E5 DB     .word ofs_002_DBE5_06
- D 2 - - - 0x01DABB 07:DAAB: 69 DB     .word ofs_002_DB69_07
- D 2 - - - 0x01DABD 07:DAAD: 5F DB     .word ofs_002_DB5F_08
- D 2 - - - 0x01DABF 07:DAAF: 97 E1     .word ofs_002_E197_09
- - - - - - 0x01DAC1 07:DAB1: D3 DA     .word $FFFF ; 0A unused, index doesn't exist
- D 2 - - - 0x01DAC3 07:DAB3: E8 DC     .word ofs_002_DCE8_0B
- - - - - - 0x01DAC5 07:DAB5: 1C E1     .word $FFFF ; 0C unused, index doesn't exist
- D 2 - - - 0x01DAC7 07:DAB7: 95 E3     .word ofs_002_E395_0D
- D 2 - - - 0x01DAC9 07:DAB9: D2 DC     .word ofs_002_DCD2_0E
- D 2 - - - 0x01DACB 07:DABB: C7 DC     .word ofs_002_DCC7_0F
- D 2 - - - 0x01DACD 07:DABD: 42 E2     .word ofs_002_E242_10
- D 2 - - - 0x01DACF 07:DABF: 2F E1     .word ofs_002_E12F_11



ofs_002_DC18_00:
; con_DA9D_00
C - - J - - 0x01DC28 07:DC18: A0 00     LDY #$00
C - - - - - 0x01DC2A 07:DC1A: B1 02     LDA (ram_0002_t02_ppu_data),Y
C - - - - - 0x01DC2C 07:DC1C: 85 00     STA ram_0000_t7D_ppu_addr_lo
C - - - - - 0x01DC2E 07:DC1E: C8        INY ; 01
C - - - - - 0x01DC2F 07:DC1F: B1 02     LDA (ram_0002_t02_ppu_data),Y
C - - - - - 0x01DC31 07:DC21: 85 01     STA ram_0001_t50_ppu_addr_hi
C - - - - - 0x01DC33 07:DC23: C8        INY
C - - - - - 0x01DC34 07:DC24: 20 2A DC  JSR sub_DC2A
C - - - - - 0x01DC37 07:DC27: 86 26     STX ram_buffer_index
C - - - - - 0x01DC39 07:DC29: 60        RTS



loc_DC2A:
sub_DC2A:
C - - - - - 0x01DC3A 07:DC2A: B1 02     LDA (ram_0002_t02_ppu_data),Y
C - - - - - 0x01DC3C 07:DC2C: 85 04     STA ram_0004_t25_loop_counter
C - - - - - 0x01DC3E 07:DC2E: 85 07     STA ram_0007_t10
C - - - - - 0x01DC40 07:DC30: C8        INY
C - - - - - 0x01DC41 07:DC31: B1 02     LDA (ram_0002_t02_ppu_data),Y
C - - - - - 0x01DC43 07:DC33: 85 05     STA ram_0005_t08_tiles_counter
C - - - - - 0x01DC45 07:DC35: C8        INY
C - - - - - 0x01DC46 07:DC36: 84 08     STY ram_0008_t13_data_index
C - - - - - 0x01DC48 07:DC38: C5 04     CMP ram_0004_t25_loop_counter
C - - - - - 0x01DC4A 07:DC3A: B0 49     BCS bra_DC85_loop
bra_DC3C_loop:
C - - - - - 0x01DC4C 07:DC3C: A9 01     LDA #$01
C - - - - - 0x01DC4E 07:DC3E: 20 C9 DA  STA ram_ppu_buffer_1,X
                                        INX
C - - - - - 0x01DC51 07:DC41: A5 00     LDA ram_0000_t7D_ppu_addr_lo
C - - - - - 0x01DC53 07:DC43: 20 C9 DA  STA ram_ppu_buffer_1,X
                                        INX
C - - - - - 0x01DC56 07:DC46: A5 01     LDA ram_0001_t50_ppu_addr_hi
C - - - - - 0x01DC58 07:DC48: 20 C9 DA  STA ram_ppu_buffer_1,X
                                        INX
C - - - - - 0x01DC5B 07:DC4B: A5 04     LDA ram_0004_t25_loop_counter
C - - - - - 0x01DC5D 07:DC4D: 85 06     STA ram_0006_t16_loop_counter
bra_DC4F_loop:
C - - - - - 0x01DC5F 07:DC4F: B1 02     LDA (ram_0002_t02_ppu_data),Y
C - - - - - 0x01DC61 07:DC51: 20 C9 DA  STA ram_ppu_buffer_1,X
                                        INX
C - - - - - 0x01DC64 07:DC54: C8        INY
C - - - - - 0x01DC65 07:DC55: C6 06     DEC ram_0006_t16_loop_counter
C - - - - - 0x01DC67 07:DC57: D0 F6     BNE bra_DC4F_loop
C - - - - - 0x01DC69 07:DC59: A9 FF     LDA #$FF
C - - - - - 0x01DC6B 07:DC5B: 20 C9 DA  STA ram_ppu_buffer_1,X
                                        INX
C - - - - - 0x01DC6E 07:DC5E: A5 00     LDA ram_0000_t7D_ppu_addr_lo
C - - - - - 0x01DC70 07:DC60: 18        CLC
C - - - - - 0x01DC71 07:DC61: 69 20     ADC #< $0020
C - - - - - 0x01DC73 07:DC63: 85 00     STA ram_0000_t7D_ppu_addr_lo
C - - - - - 0x01DC75 07:DC65: A5 01     LDA ram_0001_t50_ppu_addr_hi
C - - - - - 0x01DC77 07:DC67: 69 00     ADC #> $0020
C - - - - - 0x01DC79 07:DC69: 85 01     STA ram_0001_t50_ppu_addr_hi
C - - - - - 0x01DC7B 07:DC6B: 29 03     AND #$03
C - - - - - 0x01DC7D 07:DC6D: C9 03     CMP #$03
C - - - - - 0x01DC7F 07:DC6F: D0 0F     BNE bra_DC80
C - - - - - 0x01DC81 07:DC71: A5 00     LDA ram_0000_t7D_ppu_addr_lo
C - - - - - 0x01DC83 07:DC73: 38        SEC
C - - - - - 0x01DC84 07:DC74: E9 C0     SBC #$C0
C - - - - - 0x01DC86 07:DC76: 90 08     BCC bra_DC80
; bzk optimize, useless STA + LDA
- - - - - - 0x01DC88 07:DC78: 85 00     STA ram_0000_t7D_ppu_addr_lo
- - - - - - 0x01DC8A 07:DC7A: A5 00     LDA ram_0000_t7D_ppu_addr_lo
- - - - - - 0x01DC8C 07:DC7C: 49 0C     EOR #$0C
- - - - - - 0x01DC8E 07:DC7E: 85 00     STA ram_0000_t7D_ppu_addr_lo
bra_DC80:
C - - - - - 0x01DC90 07:DC80: C6 05     DEC ram_0005_t08_tiles_counter
C - - - - - 0x01DC92 07:DC82: D0 B8     BNE bra_DC3C_loop
C - - - - - 0x01DC94 07:DC84: 60        RTS
bra_DC85_loop:
C - - - - - 0x01DC95 07:DC85: A9 02     LDA #$02
C - - - - - 0x01DC97 07:DC87: 20 C9 DA  STA ram_ppu_buffer_1,X
                                        INX
C - - - - - 0x01DC9A 07:DC8A: A5 00     LDA ram_0000_t7D_ppu_addr_lo
C - - - - - 0x01DC9C 07:DC8C: 20 C9 DA  STA ram_ppu_buffer_1,X
                                        INX
C - - - - - 0x01DC9F 07:DC8F: A5 01     LDA ram_0001_t50_ppu_addr_hi
C - - - - - 0x01DCA1 07:DC91: 20 C9 DA  STA ram_ppu_buffer_1,X
                                        INX
C - - - - - 0x01DCA4 07:DC94: A5 05     LDA ram_0005_t08_tiles_counter
C - - - - - 0x01DCA6 07:DC96: 85 06     STA ram_0006_t08_loop_counter
C - - - - - 0x01DCA8 07:DC98: A4 08     LDY ram_0008_t13_data_index
bra_DC9A_loop:
C - - - - - 0x01DCAA 07:DC9A: B1 02     LDA (ram_0002_t02_ppu_data),Y
C - - - - - 0x01DCAC 07:DC9C: 20 C9 DA  STA ram_ppu_buffer_1,X
                                        INX
C - - - - - 0x01DCAF 07:DC9F: 98        TYA
C - - - - - 0x01DCB0 07:DCA0: 18        CLC
C - - - - - 0x01DCB1 07:DCA1: 65 07     ADC ram_0007_t10
C - - - - - 0x01DCB3 07:DCA3: A8        TAY
C - - - - - 0x01DCB4 07:DCA4: C6 06     DEC ram_0006_t08_loop_counter
C - - - - - 0x01DCB6 07:DCA6: D0 F2     BNE bra_DC9A_loop
C - - - - - 0x01DCB8 07:DCA8: E6 08     INC ram_0008_t13_data_index
C - - - - - 0x01DCBA 07:DCAA: A9 FF     LDA #$FF
C - - - - - 0x01DCBC 07:DCAC: 20 C9 DA  STA ram_ppu_buffer_1,X
                                        INX
C - - - - - 0x01DCBF 07:DCAF: A5 00     LDA ram_0000_t7D_ppu_addr_lo
C - - - - - 0x01DCC1 07:DCB1: 29 E0     AND #$E0
C - - - - - 0x01DCC3 07:DCB3: 48        PHA
C - - - - - 0x01DCC4 07:DCB4: A5 00     LDA ram_0000_t7D_ppu_addr_lo
C - - - - - 0x01DCC6 07:DCB6: 18        CLC
C - - - - - 0x01DCC7 07:DCB7: 69 01     ADC #$01
C - - - - - 0x01DCC9 07:DCB9: 29 1F     AND #$1F
C - - - - - 0x01DCCB 07:DCBB: 85 00     STA ram_0000_t7E
C - - - - - 0x01DCCD 07:DCBD: 68        PLA
C - - - - - 0x01DCCE 07:DCBE: 05 00     ORA ram_0000_t7E
C - - - - - 0x01DCD0 07:DCC0: 85 00     STA ram_0000_t7D_ppu_addr_lo
C - - - - - 0x01DCD2 07:DCC2: C6 04     DEC ram_0004_t25_loop_counter
C - - - - - 0x01DCD4 07:DCC4: D0 BF     BNE bra_DC85_loop
C - - - - - 0x01DCD6 07:DCC6: 60        RTS



ofs_002_E3D2_01:
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



ofs_002_E264_02:
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



ofs_002_E197_09:
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



ofs_002_E1C2_03:
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



ofs_002_ECF0_04:
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
C - - - - - 0x01ED27 07:ED17: 20 C9 DA  STA ram_ppu_buffer_1,X
                                        INX
C - - - - - 0x01ED2A 07:ED1A: A5 04     LDA ram_0004_t30_ppu_addr_lo
C - - - - - 0x01ED2C 07:ED1C: 20 C9 DA  STA ram_ppu_buffer_1,X
                                        INX
C - - - - - 0x01ED2F 07:ED1F: A5 05     LDA ram_0005_t09_ppu_addr_hi
C - - - - - 0x01ED31 07:ED21: 20 C9 DA  STA ram_ppu_buffer_1,X
                                        INX
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



ofs_002_DD12_05:
; con_DA9D_05
C - - J - - 0x01DD22 07:DD12: 20 4F DD  JSR sub_DD4F
C - - - - - 0x01DD25 07:DD15: 90 01     BCC bra_DD18
- - - - - - 0x01DD27 07:DD17: 60        RTS
bra_DD18:
C - - - - - 0x01DD28 07:DD18: 20 26 E1  JSR sub_0x01E136_copy_ppu_address
C - - - - - 0x01DD2B 07:DD1B: 20 6D DD  JSR sub_DD6D
C - - - - - 0x01DD2E 07:DD1E: B0 06     BCS bra_DD26
C - - - - - 0x01DD30 07:DD20: 20 54 DD  JSR sub_DD54
C - - - - - 0x01DD33 07:DD23: 20 9C DD  JSR sub_DD9C_restore_ppu_address
bra_DD26:
C - - - - - 0x01DD36 07:DD26: A9 02     LDA #$02
C - - - - - 0x01DD38 07:DD28: AC 6D 03  LDY ram_036D_flag
C - - - - - 0x01DD3B 07:DD2B: D0 01     BNE bra_DD2E
C - - - - - 0x01DD3D 07:DD2D: 0A        ASL
bra_DD2E:
C - - - - - 0x01DD3E 07:DD2E: 25 67     AND ram_0067
C - - - - - 0x01DD40 07:DD30: F0 09     BEQ bra_DD3B
loc_DD32:
sub_DD32:
C - - - - - 0x01DD42 07:DD32: A0 00     LDY #$00
C - - - - - 0x01DD44 07:DD34: 20 29 DE  JSR sub_DE29
C - - - - - 0x01DD47 07:DD37: A0 02     LDY #$02
C - - - - - 0x01DD49 07:DD39: D0 0C     BNE bra_DD47    ; jmp
bra_DD3B:
loc_DD3B:
C - - - - - 0x01DD4B 07:DD3B: A9 40     LDA #$40
C - - - - - 0x01DD4D 07:DD3D: 20 FF DD  JSR sub_DDFF
C - - - - - 0x01DD50 07:DD40: A0 04     LDY #$04
C - - - - - 0x01DD52 07:DD42: 20 29 DE  JSR sub_DE29
C - - - - - 0x01DD55 07:DD45: A0 06     LDY #$06
bra_DD47:
C - - - - - 0x01DD57 07:DD47: A9 20     LDA #$20
C - - - - - 0x01DD59 07:DD49: 20 FF DD  JSR sub_DDFF
C - - - - - 0x01DD5C 07:DD4C: 4C 29 DE  JMP loc_DE29



ofs_002_DBE5_06:
; con_DA9D_06
C - - J - - 0x01DBF5 07:DBE5: AD 56 03  LDA ram_0356_flag
C - - - - - 0x01DBF8 07:DBE8: F0 15     BEQ bra_DBFF
C - - - - - 0x01DBFA 07:DBEA: A5 39     LDA ram_buffer_index_2
C - - - - - 0x01DBFC 07:DBEC: C9 20     CMP #$20
C - - - - - 0x01DBFE 07:DBEE: B0 0E     BCS bra_DBFE_RTS
C - - - - - 0x01DC00 07:DBF0: 18        CLC
C - - - - - 0x01DC01 07:DBF1: 69 60     ADC #$60
C - - - - - 0x01DC03 07:DBF3: AA        TAX
C - - - - - 0x01DC04 07:DBF4: 20 0C DC  JSR sub_DC0C
C - - - - - 0x01DC07 07:DBF7: 8A        TXA
C - - - - - 0x01DC08 07:DBF8: 38        SEC
C - - - - - 0x01DC09 07:DBF9: E9 60     SBC #$60
C - - - - - 0x01DC0B 07:DBFB: 85 39     STA ram_buffer_index_2
C - - - - - 0x01DC0D 07:DBFD: 18        CLC
bra_DBFE_RTS:
C - - - - - 0x01DC0E 07:DBFE: 60        RTS
bra_DBFF:
C - - - - - 0x01DC0F 07:DBFF: A6 26     LDX ram_buffer_index
C - - - - - 0x01DC11 07:DC01: E0 20     CPX #$20
C - - - - - 0x01DC13 07:DC03: B0 F9     BCS bra_DBFE_RTS
C - - - - - 0x01DC15 07:DC05: 20 0C DC  JSR sub_DC0C
C - - - - - 0x01DC18 07:DC08: 86 26     STX ram_buffer_index
C - - - - - 0x01DC1A 07:DC0A: 18        CLC
C - - - - - 0x01DC1B 07:DC0B: 60        RTS



ofs_002_DB69_07:
; con_DA9D_07
C - - J - - 0x01DB79 07:DB69: A6 26     LDX ram_buffer_index
C - - - - - 0x01DB7B 07:DB6B: E0 20     CPX #$20
C - - - - - 0x01DB7D 07:DB6D: 90 01     BCC bra_DB70
- - - - - - 0x01DB7F 07:DB6F: 60        RTS
bra_DB70:
C - - - - - 0x01DB80 07:DB70: A0 00     LDY #$00
C - - - - - 0x01DB82 07:DB72: B1 02     LDA (ram_0002_t02_ppu_data),Y
C - - - - - 0x01DB84 07:DB74: 85 04     STA ram_0004_t06_ppu_addr_lo
C - - - - - 0x01DB86 07:DB76: C8        INY ; 01
C - - - - - 0x01DB87 07:DB77: B1 02     LDA (ram_0002_t02_ppu_data),Y
C - - - - - 0x01DB89 07:DB79: 85 05     STA ram_0005_t06_ppu_addr_hi
C - - - - - 0x01DB8B 07:DB7B: C8        INY ; 02
C - - - - - 0x01DB8C 07:DB7C: B1 02     LDA (ram_0002_t02_ppu_data),Y
C - - - - - 0x01DB8E 07:DB7E: 85 07     STA ram_0007_t02_loop_counter
loc_DB80:
bra_DB80_loop:
; copy default ppu address
C - - - - - 0x01DB90 07:DB80: A5 04     LDA ram_0004_t06_ppu_addr_lo
C - - - - - 0x01DB92 07:DB82: 85 00     STA ram_0000_t7C_ppu_addr_lo
C - - - - - 0x01DB94 07:DB84: A5 05     LDA ram_0005_t06_ppu_addr_hi
C - - - - - 0x01DB96 07:DB86: 85 01     STA ram_0001_t49_ppu_addr_hi
loc_DB88_loop:
C D 2 - - - 0x01DB98 07:DB88: 86 26     STX ram_buffer_index
C - - - - - 0x01DB9A 07:DB8A: C8        INY
C - - - - - 0x01DB9B 07:DB8B: A9 03     LDA #$03
C - - - - - 0x01DB9D 07:DB8D: 20 C9 DA  STA ram_ppu_buffer_1,X
                                        INX
C - - - - - 0x01DBA0 07:DB90: A5 00     LDA ram_0000_t7C_ppu_addr_lo
C - - - - - 0x01DBA2 07:DB92: 20 C9 DA  STA ram_ppu_buffer_1,X
                                        INX
C - - - - - 0x01DBA5 07:DB95: A5 01     LDA ram_0001_t49_ppu_addr_hi
C - - - - - 0x01DBA7 07:DB97: 20 C9 DA  STA ram_ppu_buffer_1,X
                                        INX
C - - - - - 0x01DBAA 07:DB9A: B1 02     LDA (ram_0002_t02_ppu_data),Y
; bzk optimize, CMP + BEQ first, then STA
C - - - - - 0x01DBAC 07:DB9C: 85 06     STA ram_0006_t07
C - - - - - 0x01DBAE 07:DB9E: C9 FF     CMP #$FF
C - - - - - 0x01DBB0 07:DBA0: F0 13     BEQ bra_DBB5_FF
C - - - - - 0x01DBB2 07:DBA2: 20 C9 DA  STA ram_ppu_buffer_1,X
                                        INX
C - - - - - 0x01DBB5 07:DBA5: C8        INY
C - - - - - 0x01DBB6 07:DBA6: B1 02     LDA (ram_0002_t02_ppu_data),Y
C - - - - - 0x01DBB8 07:DBA8: 20 C9 DA  STA ram_ppu_buffer_1,X
                                        INX
C - - - - - 0x01DBBB 07:DBAB: A5 06     LDA ram_0006_t07
C - - - - - 0x01DBBD 07:DBAD: 18        CLC
C - - - - - 0x01DBBE 07:DBAE: 65 00     ADC ram_0000_t7C_ppu_addr_lo
C - - - - - 0x01DBC0 07:DBB0: 85 00     STA ram_0000_t7C_ppu_addr_lo
C - - - - - 0x01DBC2 07:DBB2: 4C 88 DB  JMP loc_DB88_loop
bra_DBB5_FF:
C - - - - - 0x01DBC5 07:DBB5: 20 BD DB  JSR sub_DBBD_increase_ppu_address_by_0020
C - - - - - 0x01DBC8 07:DBB8: C6 07     DEC ram_0007_t02_loop_counter
C - - - - - 0x01DBCA 07:DBBA: D0 C4     BNE bra_DB80_loop
C - - - - - 0x01DBCC 07:DBBC: 60        RTS



ofs_002_DB5F_08:
; con_DA9D_08
C - - J - - 0x01DB6F 07:DB5F: A6 26     LDX ram_buffer_index
C - - - - - 0x01DB71 07:DB61: E0 20     CPX #$20
C - - - - - 0x01DB73 07:DB63: B0 0A     BCS bra_DB6F_RTS
C - - - - - 0x01DB75 07:DB65: A0 FF     LDY #$FF
C - - - - - 0x01DB77 07:DB67: D0 17     JMP loc_DB80
bra_DB6F_RTS:
                                        RTS



ofs_002_DCE8_0B:
; con_DA9D_0B
C - - J - - 0x01DCF8 07:DCE8: 20 4F DD  JSR sub_DD4F
C - - - - - 0x01DCFB 07:DCEB: B0 2A     BCS bra_DD10_RTS
C - - - - - 0x01DCFD 07:DCED: 20 A5 DD  JSR sub_0x01DDB5
C - - - - - 0x01DD00 07:DCF0: C4 DE     CPY ram_00DE
C - - - - - 0x01DD02 07:DCF2: D0 06     BNE bra_DCFA
C - - - - - 0x01DD04 07:DCF4: C8        INY
C - - - - - 0x01DD05 07:DCF5: C8        INY
C - - - - - 0x01DD06 07:DCF6: 98        TYA
C - - - - - 0x01DD07 07:DCF7: 20 CF DD  JSR sub_0x01DDDF
bra_DCFA:
C - - - - - 0x01DD0A 07:DCFA: 84 DF     STY ram_00DF
C - - - - - 0x01DD0C 07:DCFC: A9 02     LDA #$02
C - - - - - 0x01DD0E 07:DCFE: AC 6D 03  LDY ram_036D_flag
C - - - - - 0x01DD11 07:DD01: D0 01     BNE bra_DD04
C - - - - - 0x01DD13 07:DD03: 0A        ASL
bra_DD04:
C - - - - - 0x01DD14 07:DD04: 25 67     AND ram_0067
C - - - - - 0x01DD16 07:DD06: F0 33     BNE bra_DD08
                                        JMP loc_DD3B
bra_DD08:
C - - - - - 0x01DD18 07:DD08: 20 32 DD  JSR sub_DD32
C - - - - - 0x01DD1B 07:DD0B: A5 75     LDA ram_stage
C - - - - - 0x01DD1D 07:DD0D: F0 08     BEQ bra_DD10_RTS
C - - - - - 0x01DD1F 07:DD0F: 4C 1C E1  JMP loc_0x01E12C
bra_DD10_RTS:
                                        RTS



ofs_002_E395_0D:
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



ofs_002_DCD2_0E:
; con_DA9D_0E
C - - J - - 0x01DCE2 07:DCD2: 20 54 DD  JSR sub_DD54
loc_DCD5:
C D 2 - - - 0x01DCE5 07:DCD5: 20 4F DD  JSR sub_DD4F
C - - - - - 0x01DCE8 07:DCD8: B0 3D     BCS bra_DCE6_RTS
C - - - - - 0x01DCEA 07:DCDA: A5 1E     LDA ram_001E_t08
C - - - - - 0x01DCEC 07:DCDC: F0 54     BNE bra_DCDE
                                        JMP loc_DD32
bra_DCDE:
C - - - - - 0x01DCEE 07:DCDE: C9 02     CMP #$02
C - - - - - 0x01DCF0 07:DCE0: D0 59     BEQ bra_DCE2
                                        JMP loc_DD3B
bra_DCE2:
C - - - - - 0x01DCF2 07:DCE2: 20 9C DD  JSR sub_DD9C_restore_ppu_address
C - - - - - 0x01DCF5 07:DCE5: 4C 2F E1  JMP loc_E12F
bra_DCE6_RTS:
                                        RTS



ofs_002_DCC7_0F:
; con_DA9D_0F
C - - J - - 0x01DCD7 07:DCC7: A5 05     LDA ram_0005_t07_ppu_addr_lo
C - - - - - 0x01DCD9 07:DCC9: 85 00     STA ram_0000_t73_ppu_addr_lo
C - - - - - 0x01DCDB 07:DCCB: A5 06     LDA ram_0006_t06_ppu_addr_hi
C - - - - - 0x01DCDD 07:DCCD: 85 01     STA ram_0001_t14_ppu_addr_hi
C - - - - - 0x01DCDF 07:DCCF: 4C D5 DC  JMP loc_DCD5



ofs_002_E242_10:
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



loc_E12F:
ofs_002_E12F_11:
; con_DA9D_11
C D 3 J - - 0x01E13F 07:E12F: 20 26 E1  JSR sub_0x01E136_copy_ppu_address
                                        JMP loc_0x01E142



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



sub_DF5C:
C - - - - - 0x01DF6C 07:DF5C: A4 0F     LDY ram_000F_t06_player_index
C - - - - - 0x01DF6E 07:DF5E: B9 A2 E0  LDA tbl_E0A2,Y
C - - - - - 0x01DF71 07:DF61: 85 08     STA ram_0008_t02
C - - - - - 0x01DF73 07:DF63: A5 05     LDA ram_0005_t13
C - - - - - 0x01DF75 07:DF65: 4A        LSR
C - - - - - 0x01DF76 07:DF66: A8        TAY
C - - - - - 0x01DF77 07:DF67: 88        DEY
C - - - - - 0x01DF78 07:DF68: B9 A6 E0  LDA tbl_E0A6,Y
C - - - - - 0x01DF7B 07:DF6B: 18        CLC
C - - - - - 0x01DF7C 07:DF6C: 65 08     ADC ram_0008_t02
C - - - - - 0x01DF7E 07:DF6E: A8        TAY
C - - - - - 0x01DF7F 07:DF6F: A9 03     LDA #$03
C - - - - - 0x01DF81 07:DF71: 85 08     STA ram_0008_t03
bra_DF73_loop:
C - - - - - 0x01DF83 07:DF73: B9 A9 E0  LDA tbl_0x01E0B9,Y
C - - - - - 0x01DF86 07:DF76: 20 24 DE  JSR sub_0x01DE34_write_A_to_buffer_and_INX
; bzk bug, 0006 contains unrelevant value, like
; ram_0006_t15
; ram_0006_t04
; ram_0006_t06_ppu_addr_hi
; ram_0006_t01_data
; ram_0006_t07
; ram_0006_t16_loop_counter
C - - - - - 0x01DF89 07:DF79: C6 06     DEC ram_0006_t03
C - - - - - 0x01DF8B 07:DF7B: C8        INY
C - - - - - 0x01DF8C 07:DF7C: C6 08     DEC ram_0008_t03
C - - - - - 0x01DF8E 07:DF7E: D0 F3     BNE bra_DF73_loop
C - - - - - 0x01DF90 07:DF80: 60        RTS



tbl_E0A2:
- D 3 - - - 0x01E0B2 07:E0A2: 00        .byte $00   ; 00 
- D 3 - - - 0x01E0B3 07:E0A3: 09        .byte $09   ; 01 
- D 3 - - - 0x01E0B4 07:E0A4: 12        .byte $12   ; 02 
- D 3 - - - 0x01E0B5 07:E0A5: 1B        .byte $1B   ; 03 



tbl_E0A6:
- D 3 - - - 0x01E0B6 07:E0A6: 00        .byte $00   ; 
- D 3 - - - 0x01E0B7 07:E0A7: 03        .byte $03   ; 
- D 3 - - - 0x01E0B8 07:E0A8: 06        .byte $06   ; 



sub_DF81:
C - - - - - 0x01DF91 07:DF81: 20 F1 DE  JSR sub_0x01DF01
C - - - - - 0x01DF94 07:DF84: 90 03     BCC bra_DF89
C - - - - - 0x01DF96 07:DF86: 4C 0B E0  JMP loc_0x01E01B
bra_DF89:
C - - - - - 0x01DF99 07:DF89: A4 0F     LDY ram_000F_t06_player_index
C - - - - - 0x01DF9B 07:DF8B: B9 7F 00  LDA ram_player_stats,Y
C - - - - - 0x01DF9E 07:DF8E: 29 0F     AND #$0F
C - - - - - 0x01DFA0 07:DF90: D0 04     BNE bra_DF96
C - - - - - 0x01DFA2 07:DF92: A9 01     LDA #$01
C - - - - - 0x01DFA4 07:DF94: D0 01     BNE bra_DF97    ; jmp
bra_DF96:
C - - - - - 0x01DFA6 07:DF96: 0A        ASL
bra_DF97:
C - - - - - 0x01DFA7 07:DF97: 85 0A     STA ram_000A_t17
C - - - - - 0x01DFA9 07:DF99: A4 04     LDY ram_0004_t26
C - - - - - 0x01DFAB 07:DF9B: B9 B1 00  LDA ram_current_player,Y
C - - - - - 0x01DFAE 07:DF9E: 29 F0     AND #$F0
C - - - - - 0x01DFB0 07:DFA0: F0 03     BEQ bra_DFA5
; / 08
C - - - - - 0x01DFB2 07:DFA2: 4A        LSR
C - - - - - 0x01DFB3 07:DFA3: 4A        LSR
C - - - - - 0x01DFB4 07:DFA4: 4A        LSR
bra_DFA5:
C - - - - - 0x01DFB5 07:DFA5: 38        SEC
C - - - - - 0x01DFB6 07:DFA6: E9 02     SBC #$02
C - - - - - 0x01DFB8 07:DFA8: 85 0B     STA ram_000B_t15
C - - - - - 0x01DFBA 07:DFAA: A9 0A     LDA #$0A
C - - - - - 0x01DFBC 07:DFAC: 85 08     STA ram_0008_t15
C - - - - - 0x01DFBE 07:DFAE: A4 04     LDY ram_0004_t26
C - - - - - 0x01DFC0 07:DFB0: B9 B1 00  LDA ram_current_player,Y
C - - - - - 0x01DFC3 07:DFB3: 29 0F     AND #$0F
C - - - - - 0x01DFC5 07:DFB5: A8        TAY
C - - - - - 0x01DFC6 07:DFB6: B9 CD E0  LDA tbl_E0CD,Y
C - - - - - 0x01DFCA 07:DFBA: 84 0C     STA ram_000C_t11
bra_DFBC_loop:
C - - - - - 0x01DFCC 07:DFBC: A5 0A     LDA ram_000A_t17
C - - - - - 0x01DFCE 07:DFBE: 29 01     AND #$01
C - - - - - 0x01DFD0 07:DFC0: F0 18     BEQ bra_DFDA
C - - - - - 0x01DFD2 07:DFC2: A4 08     LDY ram_0008_t15
C - - - - - 0x01DFD4 07:DFC4: 88        DEY
C - - - - - 0x01DFD5 07:DFC5: A5 0B     LDA ram_000B_t15
C - - - - - 0x01DFD7 07:DFC7: F0 09     BEQ bra_DFD2
C - - - - - 0x01DFD9 07:DFC9: C9 FF     CMP #$FF
C - - - - - 0x01DFDB 07:DFCB: F0 05     BEQ bra_DFD2
C - - - - - 0x01DFDD 07:DFCD: B9 D1 E0  LDA tbl_E0D1,Y
C - - - - - 0x01DFE0 07:DFD0: D0 1D     BNE bra_DFEF    ; jmp
bra_DFD2:
C - - - - - 0x01DFE2 07:DFD2: B9 D1 E0  LDA tbl_E0D1,Y
C - - - - - 0x01DFE5 07:DFD5: 38        SEC
C - - - - - 0x01DFE6 07:DFD6: E9 10     SBC #$10
C - - - - - 0x01DFE8 07:DFD8: D0 15     BNE bra_DFEF    ; jmp
bra_DFDA:
C - - - - - 0x01DFEA 07:DFDA: A4 0C     LDY ram_000C_t11
C - - - - - 0x01DFEC 07:DFDC: A5 0B     LDA ram_000B_t15
C - - - - - 0x01DFEE 07:DFDE: F0 09     BEQ bra_DFE9
C - - - - - 0x01DFF0 07:DFE0: C9 FF     CMP #$FF
C - - - - - 0x01DFF2 07:DFE2: F0 05     BEQ bra_DFE9
C - - - - - 0x01DFF4 07:DFE4: B9 DC E0  LDA tbl_0x01E0EC,Y
C - - - - - 0x01DFF7 07:DFE7: D0 06     BNE bra_DFEF    ; jmp
bra_DFE9:
C - - - - - 0x01DFF9 07:DFE9: B9 DC E0  LDA tbl_0x01E0EC,Y
C - - - - - 0x01DFFC 07:DFEC: 38        SEC
C - - - - - 0x01DFFD 07:DFED: E9 10     SBC #$10
bra_DFEF:
C - - - - - 0x01DFFF 07:DFEF: 20 24 DE  JSR sub_0x01DE34_write_A_to_buffer_and_INX
C - - - - - 0x01E002 07:DFF2: E6 0C     INC ram_000C_t11
C - - - - - 0x01E004 07:DFF4: C6 0B     DEC ram_000B_t15
C - - - - - 0x01E006 07:DFF6: A5 08     LDA ram_0008_t15
C - - - - - 0x01E008 07:DFF8: 29 01     AND #$01
C - - - - - 0x01E00A 07:DFFA: F0 02     BEQ bra_DFFE
C - - - - - 0x01E00C 07:DFFC: 46 0A     LSR ram_000A_t17
bra_DFFE:
C - - - - - 0x01E00E 07:DFFE: C6 08     DEC ram_0008_t15
C D 3 - - - 0x01E010 07:E000: D0 BA     BNE bra_DFBC_loop
C - - - - - 0x01E012 07:E002: 60        RTS



tbl_E0CD:
- D 3 - - - 0x01E0DD 07:E0CD: 00        .byte $00   ; 00 
- D 3 - - - 0x01E0DE 07:E0CE: 0A        .byte $0A   ; 01 
- D 3 - - - 0x01E0DF 07:E0CF: 14        .byte $14   ; 02 
- D 3 - - - 0x01E0E0 07:E0D0: 1E        .byte $1E   ; 03 



tbl_E0D1:
- D 3 - - - 0x01E0E1 07:E0D1: AD        .byte $AD   ; 
- D 3 - - - 0x01E0E2 07:E0D2: AC        .byte $AC   ; 
- D 3 - - - 0x01E0E3 07:E0D3: AD        .byte $AD   ; 
- D 3 - - - 0x01E0E4 07:E0D4: AC        .byte $AC   ; 
- D 3 - - - 0x01E0E5 07:E0D5: AD        .byte $AD   ; 
- D 3 - - - 0x01E0E6 07:E0D6: AC        .byte $AC   ; 
- D 3 - - - 0x01E0E7 07:E0D7: AD        .byte $AD   ; 
- D 3 - - - 0x01E0E8 07:E0D8: AC        .byte $AC   ; 
- D 3 - - - 0x01E0E9 07:E0D9: AD        .byte $AD   ; 
- D 3 - - - 0x01E0EA 07:E0DA: AC        .byte $AC   ; 
- - - - - - 0x01E0EB 07:E0DB: AD        .byte $AD   ; 



sub_DF12:
C - - - - - 0x01DF22 07:DF12: 20 F1 DE  JSR sub_0x01DF01
C - - - - - 0x01DF25 07:DF15: B0 40     BCS bra_DF57
C - - - - - 0x01DF27 07:DF17: A0 00     LDY #$00
C - - - - - 0x01DF29 07:DF19: 84 08     STY ram_0008_t14
C - - - - - 0x01DF2B 07:DF1B: 84 09     STY ram_0009_t05
C - - - - - 0x01DF2D 07:DF1D: A5 04     LDA ram_0004_t26
C - - - - - 0x01DF2F 07:DF1F: F0 02     BEQ bra_DF23
C - - - - - 0x01DF31 07:DF21: A0 03     LDY #$03
bra_DF23:
loc_DF23_loop:
C D 2 - - - 0x01DF33 07:DF23: B9 6E 00  LDA ram_score,Y
C - - - - - 0x01DF36 07:DF26: 29 F0     AND #$F0
; / 10
C - - - - - 0x01DF38 07:DF28: 4A        LSR
C - - - - - 0x01DF39 07:DF29: 4A        LSR
C - - - - - 0x01DF3A 07:DF2A: 4A        LSR
C - - - - - 0x01DF3B 07:DF2B: 4A        LSR
C - - - - - 0x01DF3C 07:DF2C: D0 0F     BNE bra_DF3D
C - - - - - 0x01DF3E 07:DF2E: F0 07     BEQ bra_DF37    ; jmp
bra_DF30_loop:
C - - - - - 0x01DF40 07:DF30: B9 6E 00  LDA ram_score,Y
C - - - - - 0x01DF43 07:DF33: 29 0F     AND #$0F
C - - - - - 0x01DF45 07:DF35: D0 06     BNE bra_DF3D
bra_DF37:
C - - - - - 0x01DF47 07:DF37: A5 09     LDA ram_0009_t05
; bzk optimize, BEQ to 0x01DF4F
C - - - - - 0x01DF49 07:DF39: F0 02     BEQ bra_DF3D
C - - - - - 0x01DF4B 07:DF3B: A9 0A     LDA #$0A
bra_DF3D:   ; A = 00
C - - - - - 0x01DF4D 07:DF3D: 85 09     STA ram_0009_t05
C - - - - - 0x01DF4F 07:DF3F: 20 24 DE  JSR sub_0x01DE34_write_A_to_buffer_and_INX
C - - - - - 0x01DF52 07:DF42: E6 08     INC ram_0008_t14
C - - - - - 0x01DF54 07:DF44: A5 08     LDA ram_0008_t14
C - - - - - 0x01DF56 07:DF46: C9 06     CMP #$06
C - - - - - 0x01DF58 07:DF48: F0 08     BEQ bra_DF52
C - - - - - 0x01DF5A 07:DF4A: 29 01     AND #$01
C - - - - - 0x01DF5C 07:DF4C: D0 E2     BNE bra_DF30_loop
C - - - - - 0x01DF5E 07:DF4E: C8        INY
C - - - - - 0x01DF5F 07:DF4F: 4C 23 DF  JMP loc_DF23_loop
bra_DF52:
C - - - - - 0x01DF62 07:DF52: A9 0A     LDA #$0A
C - - - - - 0x01DF64 07:DF54: 4C 24 DE  JMP loc_0x01DE34_write_A_to_buffer_and_INX
bra_DF57:
C - - - - - 0x01DF67 07:DF57: A9 07     LDA #$07
C - - - - - 0x01DF69 07:DF59: 4C BD DE  JMP loc_0x01DECD



sub_DEFB:
C - - - - - 0x01DF0B 07:DEFB: 20 F1 DE  JSR sub_0x01DF01
C - - - - - 0x01DF0E 07:DEFE: 90 02     BCC bra_DF02
C - - - - - 0x01DF10 07:DF00: A9 30     LDA #$30
bra_DF02:
; / 04
C - - - - - 0x01DF12 07:DF02: 4A        LSR
C - - - - - 0x01DF13 07:DF03: 4A        LSR
C - - - - - 0x01DF14 07:DF04: A8        TAY
bra_DF05_loop:
C - - - - - 0x01DF15 07:DF05: B9 92 E0  LDA tbl_E092,Y
C - - - - - 0x01DF18 07:DF08: C9 FF     CMP #$FF
C - - - - - 0x01DF1A 07:DF0A: F0 EE     BEQ bra_DEFA_RTS
C - - - - - 0x01DF1C 07:DF0C: 20 24 DE  JSR sub_0x01DE34_write_A_to_buffer_and_INX
C - - - - - 0x01DF1F 07:DF0F: C8        INY
C - - - - - 0x01DF20 07:DF10: D0 F3     BNE bra_DF05_loop    ; jmp
bra_DEFA_RTS:
                                        RTS



tbl_E092:
- - - - - - 0x01E0A2 07:E092: 00        .byte $00   ; 
- - - - - - 0x01E0A3 07:E093: 00        .byte $00   ; 
- - - - - - 0x01E0A4 07:E094: 00        .byte $00   ; 
- - - - - - 0x01E0A5 07:E095: FF        .byte $FF   ; 

- D 3 - - - 0x01E0A6 07:E096: 01        .byte $01   ; 
- D 3 - - - 0x01E0A7 07:E097: 20        .byte $20   ; 
- D 3 - - - 0x01E0A8 07:E098: 0B        .byte $0B   ; 
- D 3 - - - 0x01E0A9 07:E099: FF        .byte $FF   ; 

- D 3 - - - 0x01E0AA 07:E09A: 02        .byte $02   ; 
- D 3 - - - 0x01E0AB 07:E09B: 20        .byte $20   ; 
- D 3 - - - 0x01E0AC 07:E09C: 0B        .byte $0B   ; 
- D 3 - - - 0x01E0AD 07:E09D: FF        .byte $FF   ; 

- D 3 - - - 0x01E0AE 07:E09E: 13        .byte $13   ; 
- D 3 - - - 0x01E0AF 07:E09F: 20        .byte $20   ; 
- D 3 - - - 0x01E0B0 07:E0A0: 25        .byte $25   ; 
- D 3 - - - 0x01E0B1 07:E0A1: FF        .byte $FF   ; 



sub_ED78:
; out
    ; C (not checked via this JSR)
        ; 0 = 
        ; 1 = 
C - - - - - 0x01ED88 07:ED78: A5 C2     LDA ram_00C2
C - - - - - 0x01ED8A 07:ED7A: F0 2D     BEQ bra_EDA9
C - - - - - 0x01ED8C 07:ED7C: A5 03     LDA ram_0003_t04_lo
C - - - - - 0x01ED8E 07:ED7E: 85 12     STA ram_0012_t12
loc_ED80:
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
C - - - - - 0x01ED9F 07:ED8F: B9 AE F5  LDA tbl_0x01F5BE,Y
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



sub_DBBD_increase_ppu_address_by_0020:
C - - - - - 0x01DBCD 07:DBBD: A6 26     LDX ram_buffer_index
C - - - - - 0x01DBCF 07:DBBF: A5 04     LDA ram_0004_t06_ppu_addr_lo
C - - - - - 0x01DBD1 07:DBC1: 18        CLC
C - - - - - 0x01DBD2 07:DBC2: 69 20     ADC #< $0020
C - - - - - 0x01DBD4 07:DBC4: 85 04     STA ram_0004_t06_ppu_addr_lo
C - - - - - 0x01DBD6 07:DBC6: A5 05     LDA ram_0005_t06_ppu_addr_hi
C - - - - - 0x01DBD8 07:DBC8: 69 00     ADC #> $0020
C - - - - - 0x01DBDA 07:DBCA: 85 05     STA ram_0005_t06_ppu_addr_hi
C - - - - - 0x01DBDC 07:DBCC: 29 03     AND #$03
C - - - - - 0x01DBDE 07:DBCE: C9 03     CMP #$03
C - - - - - 0x01DBE0 07:DBD0: D0 12     BNE bra_DBE4_RTS
C - - - - - 0x01DBE2 07:DBD2: A5 04     LDA ram_0004_t06_ppu_addr_lo
C - - - - - 0x01DBE4 07:DBD4: C9 C0     CMP #$C0
C - - - - - 0x01DBE6 07:DBD6: 90 0C     BCC bra_DBE4_RTS
; if overflow (xxC0+)
- - - - - - 0x01DBE8 07:DBD8: 29 1F     AND #$1F
- - - - - - 0x01DBEA 07:DBDA: 85 04     STA ram_0004_t06_ppu_addr_lo
- - - - - - 0x01DBEC 07:DBDC: A5 05     LDA ram_0005_t06_ppu_addr_hi
- - - - - - 0x01DBEE 07:DBDE: 49 0C     EOR #$0C
- - - - - - 0x01DBF0 07:DBE0: 29 2C     AND #$2C
- - - - - - 0x01DBF2 07:DBE2: 85 05     STA ram_0005_t06_ppu_addr_hi
bra_DBE4_RTS:
C - - - - - 0x01DBF4 07:DBE4: 60        RTS



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
C - - - - - 0x01EB9E 07:EB8E: 30 9D     BPL bra_EB90
C - - - - - 0x01EB3D 07:EB2D: A4 0D     LDY ram_000D_t09_data_index
C - - - - - 0x01EB3F 07:EB2F: 46 0D     LSR ram_000D_t09_data_index
C - - - - - 0x01EB41 07:EB31: 4C 3F EB  JMP loc_EB3F
bra_EB90:
C - - - - - 0x01EBA0 07:EB90: 46 0D     LSR ram_000D_t09_data_index
C - - - - - 0x01EBA2 07:EB92: 4C EC EB  JMP loc_EBEC



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
bra_F26E:
C - - - - - 0x01F27E 07:F26E: 9D 00 01  STA ram_ppu_buffer_1,X
C - - - - - 0x01F281 07:F271: E8        INX
C - - - - - 0x01F282 07:F272: 60        RTS



sub_F269:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x01F279 07:F269: A4 75     LDY ram_stage
C - - - - - 0x01F27B 07:F26B: C0 02     CPY #$02
C - - - - - 0x01F27D 07:F26D: 60        RTS



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
C - - - - - 0x01EA19 07:EA09: A4 05     LDY ram_0005_t05_hi
C - - - - - 0x01EA1B 07:EA0B: C8        INY
C - - - - - 0x01EA1C 07:EA0C: 20 5E E9  JSR sub_E95E
C - - - - - 0x01EA1F 07:EA0F: 4C 18 EA  JMP loc_EA18



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



sub_E341:
C - - - - - 0x01E351 07:E341: 20 54 E3  JSR sub_E354
C - - - - - 0x01E354 07:E344: A5 07     LDA ram_0007_t03
C - - - - - 0x01E356 07:E346: 18        CLC
C - - - - - 0x01E357 07:E347: 65 0B     ADC ram_000B_t06
C - - - - - 0x01E359 07:E349: 85 07     STA ram_0007_t03
C - - - - - 0x01E35B 07:E34B: 20 AE E5  JSR sub_E5AE
C - - - - - 0x01E35E 07:E34E: 20 8B E9  JSR sub_E98B
C - - - - - 0x01E361 07:E351: 4C C1 DA  JMP loc_0x01DAD1_close_ppu_buffer



sub_E319:
loc_E319:
C D 3 - - - 0x01E329 07:E319: A9 02     LDA #$02
C - - - - - 0x01E32B 07:E31B: 20 C9 DA  STA ram_ppu_buffer_1,X
                                        INX
C - - - - - 0x01E32E 07:E31E: A5 0E     LDA ram_000E_t06
C - - - - - 0x01E330 07:E320: 20 C9 DA  STA ram_ppu_buffer_1,X
                                        INX
C - - - - - 0x01E333 07:E323: A5 0F     LDA ram_000F_t07
C - - - - - 0x01E335 07:E325: 20 C9 DA  STA ram_ppu_buffer_1,X
                                        INX
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



sub_DD9C_restore_ppu_address:
C - - - - - 0x01DDAC 07:DD9C: A5 00     LDA ram_0000_t73_ppu_addr_lo
C - - - - - 0x01DDAE 07:DD9E: 85 BA     STA ram_00BA_ppu_addr_lo
C - - - - - 0x01DDB0 07:DDA0: A5 01     LDA ram_0001_t14_ppu_addr_hi
C - - - - - 0x01DDB2 07:DDA2: 85 B9     STA ram_00B9_ppu_addr_hi
C - - - - - 0x01DDB4 07:DDA4: 60        RTS



sub_DD6D:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x01DD7D 07:DD6D: A0 20     LDY #$20
C - - - - - 0x01DD7F 07:DD6F: A5 64     LDA ram_0064_lo
C - - - - - 0x01DD81 07:DD71: 29 F8     AND #$F8
C - - - - - 0x01DD83 07:DD73: 38        SEC
C - - - - - 0x01DD84 07:DD74: E5 B8     SBC ram_00B8_lo
C - - - - - 0x01DD86 07:DD76: 85 0A     STA ram_000A_t16_lo
C - - - - - 0x01DD88 07:DD78: A5 63     LDA ram_0063_hi
C - - - - - 0x01DD8A 07:DD7A: E5 B7     SBC ram_00B7_hi
C - - - - - 0x01DD8C 07:DD7C: 85 0B     STA ram_000B_t02_hi
C - - - - - 0x01DD8E 07:DD7E: 10 13     BPL bra_DD93
C - - - - - 0x01DD90 07:DD80: A5 0A     LDA ram_000A_t16_lo
C - - - - - 0x01DD92 07:DD82: 49 FF     EOR #$FF
C - - - - - 0x01DD94 07:DD84: 18        CLC
C - - - - - 0x01DD95 07:DD85: 69 01     ADC #< $0001
C - - - - - 0x01DD97 07:DD87: 85 0A     STA ram_000A_t16_lo
C - - - - - 0x01DD99 07:DD89: A5 0B     LDA ram_000B_t02_hi
C - - - - - 0x01DD9B 07:DD8B: 49 FF     EOR #$FF
C - - - - - 0x01DD9D 07:DD8D: 69 00     ADC #> $0001
C - - - - - 0x01DD9F 07:DD8F: 85 0B     STA ram_000B_t02_hi
C - - - - - 0x01DDA1 07:DD91: A0 18     LDY #$18
bra_DD93:
C - - - - - 0x01DDA3 07:DD93: A5 0B     LDA ram_000B_t02_hi
C - - - - - 0x01DDA5 07:DD95: D0 03     BNE bra_DD9A
C - - - - - 0x01DDA7 07:DD97: C4 0A     CPY ram_000A_t16_lo
C - - - - - 0x01DDA9 07:DD99: 60        RTS
bra_DD9A:
- - - - - - 0x01DDAA 07:DD9A: 38        SEC
- - - - - - 0x01DDAB 07:DD9B: 60        RTS



sub_DD54:
C - - - - - 0x01DD64 07:DD54: A5 D0     LDA ram_00D0
C - - - - - 0x01DD66 07:DD56: C9 03     CMP #$03
C - - - - - 0x01DD68 07:DD58: 90 03     BCC bra_DD5D
- - - - - - 0x01DD6A 07:DD5A: 4C 26 E1  JMP loc_0x01E136_copy_ppu_address
bra_DD5D:
C - - - - - 0x01DD6D 07:DD5D: 20 A5 DD  JSR sub_0x01DDB5
C - - - - - 0x01DD70 07:DD60: 84 DE     STY ram_00DE
C - - - - - 0x01DD72 07:DD62: A5 63     LDA ram_0063_hi
C - - - - - 0x01DD74 07:DD64: 85 B7     STA ram_00B7_hi
C - - - - - 0x01DD76 07:DD66: A5 64     LDA ram_0064_lo
C - - - - - 0x01DD78 07:DD68: 29 E0     AND #$E0
C - - - - - 0x01DD7A 07:DD6A: 85 B8     STA ram_00B8_lo
C - - - - - 0x01DD7C 07:DD6C: 60        RTS



sub_DD4F:
C - - - - - 0x01DD5F 07:DD4F: A6 39     LDX ram_buffer_index_2
C - - - - - 0x01DD61 07:DD51: E0 20     CPX #$20
C - - - - - 0x01DD63 07:DD53: 60        RTS



sub_DC0C:
C - - - - - 0x01DC1C 07:DC0C: A5 06     LDA ram_0006_t05_ppu_addr_lo
C - - - - - 0x01DC1E 07:DC0E: 85 00     STA ram_0000_t7D_ppu_addr_lo
C - - - - - 0x01DC20 07:DC10: A5 07     LDA ram_0007_t01_ppu_addr_hi
C - - - - - 0x01DC22 07:DC12: 85 01     STA ram_0001_t50_ppu_addr_hi
C - - - - - 0x01DC24 07:DC14: A0 00     LDY #$00
C - - - - - 0x01DC26 07:DC16: F0 12     JMP loc_DC2A



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
C - - - - - 0x01E51E 07:E50E: B9 B6 F5  LDA tbl_0x01F5C6,Y
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
C - - - - - 0x01E533 07:E523: 79 B7 F5  ADC tbl_0x01F5C6 + $01,Y
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
C - - - - - 0x01E4DD 07:E4CD: B9 4D DA  LDA tbl_DA4D_nametable_attributes,Y
C - - - - - 0x01E4E0 07:E4D0: 85 18     STA ram_0018_t02_nmt_attr_data
C - - - - - 0x01E4E2 07:E4D2: B9 4E DA  LDA tbl_DA4D_nametable_attributes + $01,Y
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



sub_E475:
C - - - - - 0x01E485 07:E475: A9 01     LDA #$01
C - - - - - 0x01E487 07:E477: 20 C9 DA  STA ram_ppu_buffer_1,X
                                        INX
C - - - - - 0x01E48A 07:E47A: A5 0E     LDA ram_000E_t06
C - - - - - 0x01E48C 07:E47C: 20 C9 DA  STA ram_ppu_buffer_1,X
                                        INX
C - - - - - 0x01E48F 07:E47F: A5 0F     LDA ram_000F_t07
C - - - - - 0x01E491 07:E481: 20 C9 DA  STA ram_ppu_buffer_1,X
                                        INX
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



sub_ED64:
C - - - - - 0x01ED74 07:ED64: A5 C2     LDA ram_00C2
C - - - - - 0x01ED76 07:ED66: F0 41     BEQ bra_ED77
C - - - - - 0x01ED78 07:ED68: A9 00     LDA #$00
C - - - - - 0x01ED7A 07:ED6A: 85 12     STA ram_0012_t12
C - - - - - 0x01ED7C 07:ED6C: A5 0D     LDA ram_000D_t10
C - - - - - 0x01ED7E 07:ED6E: C9 04     CMP #$04
C - - - - - 0x01ED80 07:ED70: 90 0E     BCS bra_ED74
C - - - - - 0x01ED84 07:ED74: 85 12     DEC ram_0012_t12    ; -> FF
bra_ED74:
C - - - - - 0x01ED86 07:ED76: D0 08     JMP loc_ED80
bra_ED77:
; bzk optimize, вероятно CLC нахрен не надо
                                        CLC
                                        RTS



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
C - - - - - 0x01EBDB 07:EBCB: B0 23     BCC bra_EBCD
                                        JMP loc_EBF0
bra_EBCD:
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



loc_EB34:
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



sub_DE29:
loc_DE29:
; in
    ; Y = 
C D 2 - - - 0x01DE39 07:DE29: A9 00     LDA #$00
C - - - - - 0x01DE3B 07:DE2B: 85 04     STA ram_0004_t26
C - - - - - 0x01DE3D 07:DE2D: 84 05     STY ram_0005_t13
C - - - - - 0x01DE3F 07:DE2F: C0 00     CPY #$00
C - - - - - 0x01DE41 07:DE31: F0 1C     BEQ bra_DE4F
C - - - - - 0x01DE43 07:DE33: A9 01     LDA #$01
C - - - - - 0x01DE45 07:DE35: 20 24 DE  JSR sub_0x01DE34_write_A_to_buffer_and_INX
C - - - - - 0x01DE48 07:DE38: A5 00     LDA ram_0000_t73_ppu_addr_lo
C - - - - - 0x01DE4A 07:DE3A: 20 24 DE  JSR sub_0x01DE34_write_A_to_buffer_and_INX
C - - - - - 0x01DE4D 07:DE3D: A5 01     LDA ram_0001_t14_ppu_addr_hi
C - - - - - 0x01DE4F 07:DE3F: 20 24 DE  JSR sub_0x01DE34_write_A_to_buffer_and_INX
C - - - - - 0x01DE52 07:DE42: A5 05     LDA ram_0005_t13
C - - - - - 0x01DE54 07:DE44: 4A        LSR
C - - - - - 0x01DE55 07:DE45: A8        TAY
C - - - - - 0x01DE56 07:DE46: 88        DEY
C - - - - - 0x01DE57 07:DE47: F0 13     BEQ bra_DE5C
C - - - - - 0x01DE59 07:DE49: 88        DEY
C - - - - - 0x01DE5A 07:DE4A: F0 31     BEQ bra_DE7D
C - - - - - 0x01DE5C 07:DE4C: 88        DEY
C - - - - - 0x01DE5D 07:DE4D: F0 49     BEQ bra_DE98
bra_DE4F:
C - - - - - 0x01DE5F 07:DE4F: A5 00     LDA ram_0000_t73_ppu_addr_lo
C - - - - - 0x01DE61 07:DE51: 85 02     STA ram_0002_t59_ppu_addr_lo
C - - - - - 0x01DE63 07:DE53: A5 01     LDA ram_0001_t14_ppu_addr_hi
C - - - - - 0x01DE65 07:DE55: 85 03     STA ram_0003_t14_ppu_addr_hi
C - - - - - 0x01DE67 07:DE57: A9 20     LDA #$20
C - - - - - 0x01DE69 07:DE59: 4C 79 E1  JMP loc_0x01E189
bra_DE5C:
C - - - - - 0x01DE6C 07:DE5C: 20 CF DE  JSR sub_DECF
C - - - - - 0x01DE6F 07:DE5F: B0 09     BCS bra_DE6A
C - - - - - 0x01DE71 07:DE61: 20 FB DE  JSR sub_DEFB
C - - - - - 0x01DE74 07:DE64: 20 12 DF  JSR sub_DF12
C - - - - - 0x01DE77 07:DE67: 20 5C DF  JSR sub_DF5C
bra_DE6A:
C - - - - - 0x01DE7A 07:DE6A: E6 04     INC ram_0004_t26
C - - - - - 0x01DE7C 07:DE6C: 20 C7 DE  JSR sub_DEC7
C - - - - - 0x01DE7F 07:DE6F: B0 3F     BCS bra_DEB0
C - - - - - 0x01DE81 07:DE71: 20 FB DE  JSR sub_DEFB
C - - - - - 0x01DE84 07:DE74: 20 12 DF  JSR sub_DF12
C - - - - - 0x01DE87 07:DE77: 20 5C DF  JSR sub_DF5C
C - - - - - 0x01DE8A 07:DE7A: 4C B0 DE  JMP loc_DEB0
bra_DE7D:
C - - - - - 0x01DE8D 07:DE7D: 20 CF DE  JSR sub_DECF
C - - - - - 0x01DE90 07:DE80: B0 06     BCS bra_DE88
C - - - - - 0x01DE92 07:DE82: 20 81 DF  JSR sub_DF81
C - - - - - 0x01DE95 07:DE85: 20 5C DF  JSR sub_DF5C
bra_DE88:
C - - - - - 0x01DE98 07:DE88: E6 04     INC ram_0004_t26
C - - - - - 0x01DE9A 07:DE8A: 20 C7 DE  JSR sub_DEC7
C - - - - - 0x01DE9D 07:DE8D: B0 21     BCS bra_DEB0
C - - - - - 0x01DE9F 07:DE8F: 20 81 DF  JSR sub_DF81
C - - - - - 0x01DEA2 07:DE92: 20 5C DF  JSR sub_DF5C
C - - - - - 0x01DEA5 07:DE95: 4C B0 DE  JMP loc_DEB0
bra_DE98:
C - - - - - 0x01DEA8 07:DE98: 20 CF DE  JSR sub_DECF
C - - - - - 0x01DEAB 07:DE9B: B0 06     BCS bra_DEA3
C - - - - - 0x01DEAD 07:DE9D: 20 28 E0  JSR sub_0x01E038
C - - - - - 0x01DEB0 07:DEA0: 20 5C DF  JSR sub_DF5C
bra_DEA3:
C - - - - - 0x01DEB3 07:DEA3: E6 04     INC ram_0004_t26
C - - - - - 0x01DEB5 07:DEA5: 20 C7 DE  JSR sub_DEC7
C - - - - - 0x01DEB8 07:DEA8: B0 06     BCS bra_DEB0
C - - - - - 0x01DEBA 07:DEAA: 20 28 E0  JSR sub_0x01E038
C - - - - - 0x01DEBD 07:DEAD: 20 5C DF  JSR sub_DF5C
bra_DEB0:
loc_DEB0:
C D 2 - - - 0x01DEC0 07:DEB0: A9 02     LDA #$02
C - - - - - 0x01DEC2 07:DEB2: 20 BD DE  JSR sub_0x01DECD
C - - - - - 0x01DEC5 07:DEB5: A9 FF     LDA #$FF
C - - - - - 0x01DEC7 07:DEB7: 20 24 DE  JSR sub_0x01DE34_write_A_to_buffer_and_INX
C - - - - - 0x01DECA 07:DEBA: 86 39     STX ram_buffer_index_2
C - - - - - 0x01DECC 07:DEBC: 60        RTS



sub_DECF:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x01DEDF 07:DECF: A9 03     LDA #$03
C - - - - - 0x01DEE1 07:DED1: 20 BD DE  JSR sub_0x01DECD
loc_DED4:
C D 2 - - - 0x01DEE4 07:DED4: A4 04     LDY ram_0004_t26
C - - - - - 0x01DEE6 07:DED6: B9 82 07  LDA ram_0782_unk,Y
C - - - - - 0x01DEE9 07:DED9: F0 0F     BEQ bra_DEEA
C - - - - - 0x01DEEB 07:DEDB: B9 B1 00  LDA ram_current_player,Y
C - - - - - 0x01DEEE 07:DEDE: 29 0F     AND #$0F
C - - - - - 0x01DEF0 07:DEE0: A8        TAY
C - - - - - 0x01DEF1 07:DEE1: 84 0F     STY ram_000F_t06_player_index
C - - - - - 0x01DEF3 07:DEE3: B9 B3 00  LDA ram_lives,Y
C - - - - - 0x01DEF6 07:DEE6: F0 02     BEQ bra_DEEA
C - - - - - 0x01DEF8 07:DEE8: 18        CLC
C - - - - - 0x01DEF9 07:DEE9: 60        RTS
bra_DEEA:
C - - - - - 0x01DEFA 07:DEEA: A9 0D     LDA #$0D
C - - - - - 0x01DEFC 07:DEEC: 20 BD DE  JSR sub_0x01DECD
C - - - - - 0x01DEFF 07:DEEF: 38        SEC
C - - - - - 0x01DF00 07:DEF0: 60        RTS



sub_DEC7:
C - - - - - 0x01DED7 07:DEC7: A9 00     LDA #$00
C - - - - - 0x01DED9 07:DEC9: 20 24 DE  JSR sub_0x01DE34_write_A_to_buffer_and_INX
C - - - - - 0x01DEDC 07:DECC: 4C D4 DE  JMP loc_DED4



sub_DDFF:
; in
    ; A = 
; bzk optimize, useless STA
C - - - - - 0x01DE0F 07:DDFF: 85 02     STA ram_0002_t64_useless
C - - - - - 0x01DE11 07:DE01: 18        CLC
C - - - - - 0x01DE12 07:DE02: 65 00     ADC ram_0000_t73_ppu_addr_lo
C - - - - - 0x01DE14 07:DE04: 85 00     STA ram_0000_t73_ppu_addr_lo
C - - - - - 0x01DE16 07:DE06: A5 01     LDA ram_0001_t14_ppu_addr_hi
C - - - - - 0x01DE18 07:DE08: 69 00     ADC #$00
C - - - - - 0x01DE1A 07:DE0A: 85 01     STA ram_0001_t14_ppu_addr_hi
C - - - - - 0x01DE1C 07:DE0C: 29 23     AND #$23
C - - - - - 0x01DE1E 07:DE0E: C9 23     CMP #$23
C - - - - - 0x01DE20 07:DE10: D0 11     BNE bra_DE23_RTS
C - - - - - 0x01DE22 07:DE12: A5 00     LDA ram_0000_t73_ppu_addr_lo
C - - - - - 0x01DE24 07:DE14: 38        SEC
C - - - - - 0x01DE25 07:DE15: E9 C0     SBC #$C0
C - - - - - 0x01DE27 07:DE17: 90 0A     BCC bra_DE23_RTS
C - - - - - 0x01DE29 07:DE19: 85 00     STA ram_0000_t73_ppu_addr_lo
C - - - - - 0x01DE2B 07:DE1B: A5 01     LDA ram_0001_t14_ppu_addr_hi
C - - - - - 0x01DE2D 07:DE1D: 49 0C     EOR #$0C
C - - - - - 0x01DE2F 07:DE1F: 29 2C     AND #$2C
C - - - - - 0x01DE31 07:DE21: 85 01     STA ram_0001_t14_ppu_addr_hi
bra_DE23_RTS:
C - - - - - 0x01DE33 07:DE23: 60        RTS



sub_E5AE:
C - - - - - 0x01E5BE 07:E5AE: A4 07     LDY ram_0007_t03
C - - - - - 0x01E5C0 07:E5B0: 88        DEY
C - - - - - 0x01E5C1 07:E5B1: 88        DEY
C - - - - - 0x01E5C2 07:E5B2: A5 75     LDA ram_stage
C - - - - - 0x01E5C4 07:E5B4: C9 01     CMP #$01
C - - - - - 0x01E5C6 07:E5B6: D0 0B     BNE bra_E5C3
C - - - - - 0x01E5C8 07:E5B8: C0 13     CPY #$13
C - - - - - 0x01E5CA 07:E5BA: B0 07     BCS bra_E5C3
C - - - - - 0x01E5CC 07:E5BC: B9 08 E8  LDA tbl_0x01E818,Y
C - - - - - 0x01E5CF 07:E5BF: F0 02     BEQ bra_E5C3
C - - - - - 0x01E5D1 07:E5C1: 85 C2     STA ram_00C2
bra_E5C3:
C - - - - - 0x01E5D3 07:E5C3: A4 07     LDY ram_0007_t03
C - - - - - 0x01E5D5 07:E5C5: 60        RTS



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



sub_EA41:
C - - - - - 0x01EA51 07:EA41: A9 02     LDA #$02
C - - - - - 0x01EA53 07:EA43: 85 17     STA ram_0017_t05
C - - - - - 0x01EA55 07:EA45: A5 3C     LDA ram_003C_t03
C - - - - - 0x01EA57 07:EA47: 10 0F     BPL bra_EA58
C - - - - - 0x01EA59 07:EA49: A5 03     LDA ram_0003_t04_lo
C - - - - - 0x01EA5B 07:EA4B: 29 18     AND #$18
C - - - - - 0x01EA5D 07:EA4D: C9 18     CMP #$18
C - - - - - 0x01EA5F 07:EA4F: D0 B8     BEQ bra_EA51
                                        LDY ram_0005_t05_hi
                                        INY
                                        JSR sub_E95E
                                        JMP loc_EA18
bra_EA51:
C - - - - - 0x01EA61 07:EA51: C8        INY
C - - - - - 0x01EA62 07:EA52: 20 0D EB  JSR sub_EB0D
C - - - - - 0x01EA65 07:EA55: 4C 62 EA  JMP loc_EA62
bra_EA58:
C - - - - - 0x01EA68 07:EA58: A5 03     LDA ram_0003_t04_lo
C - - - - - 0x01EA6A 07:EA5A: 29 18     AND #$18
C - - - - - 0x01EA6C 07:EA5C: D0 B4     BEQ bra_EA5E
                                        JMP loc_EA12
bra_EA5E:
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
C - - - - - 0x01EB18 07:EB08: D0 2A     BNE bra_EB0B
C - - - - - 0x01EB1A 07:EB0A: 4C E6 EB  JMP loc_EBE6
bra_EB0B:
                                        JMP loc_EB34



loc_EA12:
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



.out .sprintf("Free bytes in bank 24: 0x%04X [%d]", ($A000 - *), ($A000 - *))



