.segment "BANK_3E"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $6000  ; for listing file
; 0x07C010-0x07E00F



.export sub_0x01D072
.export sub_0x01D184
.export sub_0x01D1A7_clear_nametables
.export sub_0x01D1B8_unpack_static_screen
.export loc_0x01D1B8_unpack_static_screen
.export loc_0x01D225_unpack_static_screen___no_2006_writes
.export sub_0x01D230_disable_rendering_and_set_scroll_00
.export sub_0x01D24C_draw_text
.export loc_0x01D287_write_to_buffer___unk_X
.export sub_0x01D287_write_to_buffer___unk_X
.export sub_0x01D289_write_to_buffer
.export sub_0x01D595
.export loc_0x01D595
.export sub_0x01D68E
.export loc_0x01D68E
.export sub_0x01D718_execute_indirect_jump_0000
.export loc_0x01D718_execute_indirect_jump_0000
.export sub_0x01D9D2
.export sub_0x01DA4B
.export loc_0x01DA87
.export sub_0x01DAAA_execute_indirect_jump_0000
.export sub_0x01DAD9_write_byte_to_ppu_buffer
.export loc_0x01DAD9_write_byte_to_ppu_buffer
.export sub_0x01DDBD
.export sub_0x01DE34_write_A_to_buffer_and_INX
.export loc_0x01E01E
.export sub_0x01E02E
.export sub_0x01D009
.export ofs_006_0x01D1B8_19_unpack_static_screen___pause
.export ofs_006_0x01D1B8_1A_unpack_static_screen___cutscene_pause
.export sub_0x01D2E1
.export sub_0x01D689
.export ofs_006_0x01D9BC_14
.export sub_0x01DA7B
.export ofs_006_0x01DA81_1B
.export ofs_006_0x01DA85_05
.export ofs_006_0x01DA85_06
.export ofs_006_0x01DA85_0C
.export sub_0x01DAD1_close_ppu_buffer
.export loc_0x01DAD1_close_ppu_buffer
.export sub_0x01DDDF
.export loc_0x01DE34_write_A_to_buffer_and_INX
.export sub_0x01DF01



sub_0x01D009:
C - - - - - 0x01D00E 07:CFFE: 20 EE BF  JSR sub_BFEE_copy_buttons
C - - - - - 0x01D011 07:D001: E6 23     INC ram_frm_cnt
C - - - - - 0x01D013 07:D003: A0 3D     LDY #$3D
C - - - - - 0x01D015 07:D005: A5 75     LDA ram_stage
C - - - - - 0x01D017 07:D007: C9 03     CMP #$03
C - - - - - 0x01D019 07:D009: D0 02     BNE bra_D00D
C - - - - - 0x01D01B 07:D00B: A0 3D     LDY #$3D
bra_D00D:
; bzk optimize, Y is always 3D despite conditions
C - - - - - 0x01D01D 07:D00D: 84 3F     STY ram_garbage_loop_counter
; bzk optimize, code is executed each frame
; I suppose there is no need to constantly overwite this address
; it should be one only once here 0x01436E
C - - - - - 0x01D01F 07:D00F: 0A        ASL
C - - - - - 0x01D020 07:D010: 85 88     STA ram_x2_stage
C - - - - - 0x01D022 07:D012: A5 20     LDA ram_script_hi
C - - - - - 0x01D024 07:D014: 0A        ASL
C - - - - - 0x01D025 07:D015: A8        TAY
C - - - - - 0x01D026 07:D016: B9 23 D0  LDA tbl_D023,Y
C - - - - - 0x01D029 07:D019: 85 00     STA ram_0000_t19_jmp
C - - - - - 0x01D02B 07:D01B: B9 24 D0  LDA tbl_D023 + $01,Y
C - - - - - 0x01D02E 07:D01E: 85 01     STA ram_0000_t19_jmp + $01
C - - - - - 0x01D030 07:D020: 6C 00 00  JMP (ram_0000_t19_jmp)



tbl_D023:
- D 2 - - - 0x01D033 07:D023: 2F D0     .word ofs_000_D02F_00
- D 2 - - - 0x01D035 07:D025: 69 D0     .word ofs_000_D069_01
- D 2 - - - 0x01D037 07:D027: 77 D0     .word ofs_000_D077_02
- D 2 - - - 0x01D039 07:D029: DE D6     .word ofs_000_D6DE_03_gameplay
- D 2 - - - 0x01D03B 07:D02B: 80 D0     .word ofs_000_D080_04
- D 2 - - - 0x01D03D 07:D02D: 88 D0     .word ofs_000_D088_05_game_over



ofs_000_D02F_00:
; con_0020_00
C - - J - - 0x01D03F 07:D02F: A6 21     LDX ram_0021_t01
C - - - - - 0x01D041 07:D031: D0 12     BNE bra_D045
; X = 00
C - - - - - 0x01D043 07:D033: 86 27     STX ram_0027_useless_00
C - - - - - 0x01D045 07:D035: 20 F9 F2  JSR sub_0x01F309_clear_0040_00DF
C - - - - - 0x01D048 07:D038: 20 09 F3  JSR sub_0x01F319_clear_0400_07FF
C - - - - - 0x01D04B 07:D03B: 20 1C F3  JSR sub_0x01F32C
C - - - - - 0x01D04E 07:D03E: A9 7C     LDA #con_chr_bank + $7C
C - - - - - 0x01D050 07:D040: 85 77     STA ram_chr_bank
bra_D042:
C - - - - - 0x01D052 07:D042: E6 21     INC ram_0021_t01
bra_D044_RTS:
C - - - - - 0x01D054 07:D044: 60        RTS
bra_D045:
C - - - - - 0x01D055 07:D045: CA        DEX
C - - - - - 0x01D056 07:D046: D0 14     BNE bra_D05C
C - - - - - 0x01D058 07:D048: A9 07     LDA #con_prg_pair + $01
C - - - - - 0x01D05A 07:D04A: 20 4C F3  JSR sub_0x01F35C_prg_bankswitch
C - - - - - 0x01D05D 07:D04D: 20 01 80  JSR sub_0x014011
C - - - - - 0x01D060 07:D050: A5 22     LDA ram_0022_t02
C - - - - - 0x01D062 07:D052: C9 3A     CMP #$3A
C - - - - - 0x01D064 07:D054: D0 EE     BNE bra_D044_RTS
C - - - - - 0x01D066 07:D056: A9 40     LDA #$40
C - - - - - 0x01D068 07:D058: 85 4A     STA ram_004A_temp
C - - - - - 0x01D06A 07:D05A: D0 E6     BNE bra_D042    ; jmp
bra_D05C:
C - - - - - 0x01D06C 07:D05C: C6 4A     DEC ram_004A_temp
C - - - - - 0x01D06E 07:D05E: D0 E4     BNE bra_D044_RTS
loc_D060_prepare_next_script:
; -> con_0020_02
; -> con_0020_gameplay
C D 2 - - - 0x01D070 07:D060: E6 20     INC ram_script_hi
loc_D062:
sub_D062:
sub_0x01D072:
C D 2 - - - 0x01D072 07:D062: A9 00     LDA #$00
C - - - - - 0x01D074 07:D064: 85 21     STA ram_0021_t01
C - - - - - 0x01D076 07:D066: 85 22     STA ram_0022_t02
C - - - - - 0x01D078 07:D068: 60        RTS



ofs_000_D069_01:
; con_0020_01
C - - J - - 0x01D079 07:D069: A5 42     LDA ram_btn_hold_1
C - - - - - 0x01D07B 07:D06B: 05 40     ORA ram_btn_press_1
C - - - - - 0x01D07D 07:D06D: 29 10     AND #con_btn_Start
C - - - - - 0x01D07F 07:D06F: D0 D3     BNE bra_D044_RTS
C - - - - - 0x01D081 07:D071: 20 97 D1  JSR sub_D197_clear_nametables
C - - - - - 0x01D084 07:D074: 4C 60 D0  JMP loc_D060_prepare_next_script



ofs_000_D077_02:
; con_0020_02
C - - J - - 0x01D087 07:D077: 20 97 D1  JSR sub_D197_clear_nametables
C - - - - - 0x01D08A 07:D07A: 20 FD F2  JSR sub_0x01F30D_clear_0060_00DF
C - - - - - 0x01D08D 07:D07D: 4C 60 D0  JMP loc_D060_prepare_next_script



ofs_000_D080_04:
; con_0020_04
C - - J - - 0x01D090 07:D080: A9 07     LDA #con_prg_pair + $01
C - - - - - 0x01D092 07:D082: 20 4C F3  JSR sub_0x01F35C_prg_bankswitch
C - - - - - 0x01D095 07:D085: 4C 20 80  JMP loc_8020



loc_8020:
C D 0 - - - 0x014030 05:8020: AD 70 03  LDA ram_0370_counter_00_C0
C - - - - - 0x014033 05:8023: F0 12     BEQ bra_8037
C - - - - - 0x014035 05:8025: A9 00     LDA #$00
C - - - - - 0x014037 05:8027: 8D 32 03  STA ram_0332_flag
C - - - - - 0x01403A 05:802A: 8D 43 03  STA ram_0343
C - - - - - 0x01403D 05:802D: 8D 45 03  STA ram_0345_table_index
C - - - - - 0x01F6A4 07:F694: A9 14     LDA #$14    ; con_F3D6_14
C - - - - - 0x01F6A6 07:F696: 8D 33 03  STA ram_0333_counter
C - - - - - 0x01F6A9 07:F699: 20 B3 F3  JSR sub_0x01F3C3_execute_script
C - - - - - 0x014043 05:8033: CE 70 03  DEC ram_0370_counter_00_C0
C - - - - - 0x014046 05:8036: 60        RTS
bra_8037:
C - - - - - 0x014047 05:8037: A4 75     LDY ram_stage
C - - - - - 0x014049 05:8039: B9 0A F7  LDA tbl_F70A_table_offset,Y
C - - - - - 0x01404C 05:803C: 18        CLC
C - - - - - 0x01404D 05:803D: 65 22     ADC ram_0022_t02
C - - - - - 0x01404F 05:803F: A8        TAY
C - - - - - 0x014050 05:8040: B9 92 80  LDA tbl_8092,Y
loc_8043:
C D 0 - - - 0x014053 05:8043: 0A        ASL
C - - - - - 0x014054 05:8044: A8        TAY
C - - - - - 0x014055 05:8045: B9 13 81  LDA tbl_0x014123,Y
C - - - - - 0x014058 05:8048: 85 00     STA ram_0000_t1B_jmp
C - - - - - 0x01405A 05:804A: B9 14 81  LDA tbl_0x014123 + $01,Y
C - - - - - 0x01405D 05:804D: A0 00     LDY #$00
C - - - - - 0x01405F 05:804F: 20 08 D7  JSR sub_0x01D718_execute_indirect_jump_0000
C - - - - - 0x014062 05:8052: 90 02     BCC bra_8056_RTS
C - - - - - 0x014064 05:8054: E6 22     INC ram_0022_t02
bra_8056_RTS:
C - - - - - 0x014066 05:8056: 60        RTS



tbl_F70A_table_offset:
; bzk optimize, move to bank 0A, add links to offsets
- D 3 - - - 0x01F71A 07:F70A: 00        .byte off_8092_00_stage_1 - tbl__8092   ; 
- D 3 - - - 0x01F71B 07:F70B: 1B        .byte off_80AD_01_stage_2 - tbl__8092   ; 
- D 3 - - - 0x01F71C 07:F70C: 2D        .byte off_80BF_02_stage_3 - tbl__8092   ; 
- D 3 - - - 0x01F71D 07:F70D: 4C        .byte off_80DE_03_stage_4 - tbl__8092   ; 
- D 3 - - - 0x01F71E 07:F70E: 67        .byte off_80F9_04_stage_5 - tbl__8092   ; 



tbl_8092:
tbl__8092:
off_8092_00_stage_1:
- D 0 - - - 0x0140A2 05:8092: 21        .byte con_8113_21   ; 00 
- D 0 - - - 0x0140A3 05:8093: 07        .byte con_8113_07   ; 01 
- D 0 - - - 0x0140A4 05:8094: 22        .byte con_8113_22   ; 02 
- D 0 - - - 0x0140A5 05:8095: 01        .byte con_8113_01   ; 03 
- D 0 - - - 0x0140A6 05:8096: 02        .byte con_8113_02   ; 04 
- D 0 - - - 0x0140A7 05:8097: 23        .byte con_8113_23   ; 05 
- D 0 - - - 0x0140A8 05:8098: 24        .byte con_8113_24   ; 06 
- D 0 - - - 0x0140A9 05:8099: 12        .byte con_8113_12   ; 07 
- D 0 - - - 0x0140AA 05:809A: 25        .byte con_8113_25   ; 08 
- D 0 - - - 0x0140AB 05:809B: 09        .byte con_8113_09   ; 09 
- D 0 - - - 0x0140AC 05:809C: 12        .byte con_8113_12   ; 0A 
- D 0 - - - 0x0140AD 05:809D: 26        .byte con_8113_26   ; 0B 
- D 0 - - - 0x0140AE 05:809E: 09        .byte con_8113_09   ; 0C 
- D 0 - - - 0x0140AF 05:809F: 12        .byte con_8113_12   ; 0D 
- D 0 - - - 0x0140B0 05:80A0: 27        .byte con_8113_27   ; 0E 
- D 0 - - - 0x0140B1 05:80A1: 09        .byte con_8113_09   ; 0F 
- D 0 - - - 0x0140B2 05:80A2: 2D        .byte con_8113_2D   ; 10 
- D 0 - - - 0x0140B3 05:80A3: 28        .byte con_8113_28   ; 11 
- D 0 - - - 0x0140B4 05:80A4: 05        .byte con_8113_05   ; 12 
- D 0 - - - 0x0140B5 05:80A5: 29        .byte con_8113_29   ; 13 
- D 0 - - - 0x0140B6 05:80A6: 09        .byte con_8113_09   ; 14 
- D 0 - - - 0x0140B7 05:80A7: 12        .byte con_8113_12   ; 15 
- D 0 - - - 0x0140B8 05:80A8: 2A        .byte con_8113_2A   ; 16 
- D 0 - - - 0x0140B9 05:80A9: 09        .byte con_8113_09   ; 17 
- D 0 - - - 0x0140BA 05:80AA: 2B        .byte con_8113_2B   ; 18 
- D 0 - - - 0x0140BB 05:80AB: 07        .byte con_8113_07   ; 19 
- D 0 - - - 0x0140BC 05:80AC: 2C        .byte con_8113_2C   ; 1A 



off_80AD_01_stage_2:
- D 0 - - - 0x0140BD 05:80AD: 21        .byte con_8113_21   ; 00 
- D 0 - - - 0x0140BE 05:80AE: 07        .byte con_8113_07   ; 01 
- D 0 - - - 0x0140BF 05:80AF: 22        .byte con_8113_22   ; 02 
- D 0 - - - 0x0140C0 05:80B0: 01        .byte con_8113_01   ; 03 
- D 0 - - - 0x0140C1 05:80B1: 02        .byte con_8113_02   ; 04 
- D 0 - - - 0x0140C2 05:80B2: 23        .byte con_8113_23   ; 05 
- D 0 - - - 0x0140C3 05:80B3: 24        .byte con_8113_24   ; 06 
- D 0 - - - 0x0140C4 05:80B4: 05        .byte con_8113_05   ; 07 
- D 0 - - - 0x0140C5 05:80B5: 2E        .byte con_8113_2E   ; 08 
- D 0 - - - 0x0140C6 05:80B6: 09        .byte con_8113_09   ; 09 
- D 0 - - - 0x0140C7 05:80B7: 2D        .byte con_8113_2D   ; 0A 
- D 0 - - - 0x0140C8 05:80B8: 28        .byte con_8113_28   ; 0B 
- D 0 - - - 0x0140C9 05:80B9: 05        .byte con_8113_05   ; 0C 
- D 0 - - - 0x0140CA 05:80BA: 2F        .byte con_8113_2F   ; 0D 
- D 0 - - - 0x0140CB 05:80BB: 09        .byte con_8113_09   ; 0E 
- D 0 - - - 0x0140CC 05:80BC: 2B        .byte con_8113_2B   ; 0F 
- D 0 - - - 0x0140CD 05:80BD: 07        .byte con_8113_07   ; 10 
- D 0 - - - 0x0140CE 05:80BE: 2C        .byte con_8113_2C   ; 11 



off_80BF_02_stage_3:
- D 0 - - - 0x0140CF 05:80BF: 30        .byte con_8113_30   ; 00 
- D 0 - - - 0x0140D0 05:80C0: 21        .byte con_8113_21   ; 01 
- D 0 - - - 0x0140D1 05:80C1: 49        .byte con_8113_49   ; 02 
- D 0 - - - 0x0140D2 05:80C2: 48        .byte con_8113_48   ; 03 
- D 0 - - - 0x0140D3 05:80C3: 31        .byte con_8113_31   ; 04 
- D 0 - - - 0x0140D4 05:80C4: 07        .byte con_8113_07   ; 05 
- D 0 - - - 0x0140D5 05:80C5: 22        .byte con_8113_22   ; 06 
- D 0 - - - 0x0140D6 05:80C6: 01        .byte con_8113_01   ; 07 
- D 0 - - - 0x0140D7 05:80C7: 02        .byte con_8113_02   ; 08 
- D 0 - - - 0x0140D8 05:80C8: 23        .byte con_8113_23   ; 09 
- D 0 - - - 0x0140D9 05:80C9: 24        .byte con_8113_24   ; 0A 
- D 0 - - - 0x0140DA 05:80CA: 12        .byte con_8113_12   ; 0B 
- D 0 - - - 0x0140DB 05:80CB: 32        .byte con_8113_32   ; 0C 
- D 0 - - - 0x0140DC 05:80CC: 09        .byte con_8113_09   ; 0D 
- D 0 - - - 0x0140DD 05:80CD: 12        .byte con_8113_12   ; 0E 
- D 0 - - - 0x0140DE 05:80CE: 33        .byte con_8113_33   ; 0F 
- D 0 - - - 0x0140DF 05:80CF: 09        .byte con_8113_09   ; 10 
- D 0 - - - 0x0140E0 05:80D0: 2D        .byte con_8113_2D   ; 11 
- D 0 - - - 0x0140E1 05:80D1: 28        .byte con_8113_28   ; 12 
- D 0 - - - 0x0140E2 05:80D2: 12        .byte con_8113_12   ; 13 
- D 0 - - - 0x0140E3 05:80D3: 34        .byte con_8113_34   ; 14 
- D 0 - - - 0x0140E4 05:80D4: 09        .byte con_8113_09   ; 15 
- D 0 - - - 0x0140E5 05:80D5: 12        .byte con_8113_12   ; 16 
- D 0 - - - 0x0140E6 05:80D6: 35        .byte con_8113_35   ; 17 
- D 0 - - - 0x0140E7 05:80D7: 09        .byte con_8113_09   ; 18 
- D 0 - - - 0x0140E8 05:80D8: 12        .byte con_8113_12   ; 19 
- D 0 - - - 0x0140E9 05:80D9: 36        .byte con_8113_36   ; 1A 
- D 0 - - - 0x0140EA 05:80DA: 09        .byte con_8113_09   ; 1B 
- D 0 - - - 0x0140EB 05:80DB: 2B        .byte con_8113_2B   ; 1C 
- D 0 - - - 0x0140EC 05:80DC: 07        .byte con_8113_07   ; 1D 
- D 0 - - - 0x0140ED 05:80DD: 2C        .byte con_8113_2C   ; 1E 



off_80DE_03_stage_4:
- D 0 - - - 0x0140EE 05:80DE: 37        .byte con_8113_37   ; 00 
- D 0 - - - 0x0140EF 05:80DF: 21        .byte con_8113_21   ; 01 
- D 0 - - - 0x0140F0 05:80E0: 38        .byte con_8113_38   ; 02 
- D 0 - - - 0x0140F1 05:80E1: 39        .byte con_8113_39   ; 03 
- D 0 - - - 0x0140F2 05:80E2: 07        .byte con_8113_07   ; 04 
- D 0 - - - 0x0140F3 05:80E3: 3A        .byte con_8113_3A   ; 05 
- D 0 - - - 0x0140F4 05:80E4: 01        .byte con_8113_01   ; 06 
- D 0 - - - 0x0140F5 05:80E5: 02        .byte con_8113_02   ; 07 
- D 0 - - - 0x0140F6 05:80E6: 23        .byte con_8113_23   ; 08 
- D 0 - - - 0x0140F7 05:80E7: 24        .byte con_8113_24   ; 09 
- D 0 - - - 0x0140F8 05:80E8: 12        .byte con_8113_12   ; 0A 
- D 0 - - - 0x0140F9 05:80E9: 3B        .byte con_8113_3B   ; 0B 
- D 0 - - - 0x0140FA 05:80EA: 09        .byte con_8113_09   ; 0C 
- D 0 - - - 0x0140FB 05:80EB: 12        .byte con_8113_12   ; 0D 
- D 0 - - - 0x0140FC 05:80EC: 3C        .byte con_8113_3C   ; 0E 
- D 0 - - - 0x0140FD 05:80ED: 09        .byte con_8113_09   ; 0F 
- D 0 - - - 0x0140FE 05:80EE: 2D        .byte con_8113_2D   ; 10 
- D 0 - - - 0x0140FF 05:80EF: 28        .byte con_8113_28   ; 11 
- D 0 - - - 0x014100 05:80F0: 12        .byte con_8113_12   ; 12 
- D 0 - - - 0x014101 05:80F1: 3D        .byte con_8113_3D   ; 13 
- D 0 - - - 0x014102 05:80F2: 09        .byte con_8113_09   ; 14 
- D 0 - - - 0x014103 05:80F3: 12        .byte con_8113_12   ; 15 
- D 0 - - - 0x014104 05:80F4: 3E        .byte con_8113_3E   ; 16 
- D 0 - - - 0x014105 05:80F5: 09        .byte con_8113_09   ; 17 
- D 0 - - - 0x014106 05:80F6: 2B        .byte con_8113_2B   ; 18 
- D 0 - - - 0x014107 05:80F7: 07        .byte con_8113_07   ; 19 
- D 0 - - - 0x014108 05:80F8: 2C        .byte con_8113_2C   ; 1A 



off_80F9_04_stage_5:
- D 0 - - - 0x014109 05:80F9: 05        .byte con_8113_05   ; 00 
- D 0 - - - 0x01410A 05:80FA: 09        .byte con_8113_09   ; 01 
- D 0 - - - 0x01410B 05:80FB: 2B        .byte con_8113_2B   ; 02 
- D 0 - - - 0x01410C 05:80FC: 07        .byte con_8113_07   ; 03 
- D 0 - - - 0x01410D 05:80FD: 3F        .byte con_8113_3F   ; 04 
- D 0 - - - 0x01410E 05:80FE: 01        .byte con_8113_01   ; 05 
- D 0 - - - 0x01410F 05:80FF: 04        .byte con_8113_04   ; 06 
- D 0 - - - 0x014110 05:8100: 40        .byte con_8113_40   ; 07 
- D 0 - - - 0x014111 05:8101: 41        .byte con_8113_41   ; 08 
- D 0 - - - 0x014112 05:8102: 42        .byte con_8113_42   ; 09 
- D 0 - - - 0x014113 05:8103: 09        .byte con_8113_09   ; 0A 
- D 0 - - - 0x014114 05:8104: 07        .byte con_8113_07   ; 0B 
- D 0 - - - 0x014115 05:8105: 43        .byte con_8113_43   ; 0C 
- D 0 - - - 0x014116 05:8106: 44        .byte con_8113_44   ; 0D 
- D 0 - - - 0x014117 05:8107: 45        .byte con_8113_45   ; 0E 
- D 0 - - - 0x014118 05:8108: 04        .byte con_8113_04   ; 0F 
- D 0 - - - 0x014119 05:8109: 46        .byte con_8113_46   ; 10 
- D 0 - - - 0x01411A 05:810A: 2B        .byte con_8113_2B   ; 11 
- D 0 - - - 0x01411B 05:810B: 07        .byte con_8113_07   ; 12 
- D 0 - - - 0x01411C 05:810C: 01        .byte con_8113_01   ; 13 
- D 0 - - - 0x01411D 05:810D: 47        .byte con_8113_47   ; 14 
- D 0 - - - 0x01411E 05:810E: 05        .byte con_8113_05   ; 15 
- D 0 - - - 0x01411F 05:810F: 04        .byte con_8113_04   ; 16 
- D 0 - - - 0x014120 05:8110: 09        .byte con_8113_09   ; 17 
- D 0 - - - 0x014121 05:8111: 07        .byte con_8113_07   ; 18 
- D 0 - - - 0x014122 05:8112: 2C        .byte con_8113_2C   ; 19 



ofs_000_D088_05_game_over:
; con_0020_game_over
C - - J - - 0x01D098 07:D088: A4 21     LDY ram_0021_t01
C - - - - - 0x01D09A 07:D08A: D0 0A     BNE bra_D096
C - - - - - 0x01D09C 07:D08C: C6 4A     DEC ram_004A_t02_game_over_screen_delay
C - - - - - 0x01D09E 07:D08E: D0 33     BNE bra_D0C3_RTS
; display game over screen
C - - - - - 0x01D0A0 07:D090: A9 02     LDA #$02
C - - - - - 0x01D0A2 07:D092: 85 25     STA ram_disable_rendering_timer
C - - - - - 0x01D0A4 07:D094: D0 2B     BNE bra_D0C1    ; jmp
bra_D096:
C - - - - - 0x01D0A6 07:D096: 88        DEY
C - - - - - 0x01D0A7 07:D097: D0 2B     BNE bra_D0C4
C - - - - - 0x01D0A9 07:D099: 20 23 D2  JSR sub_D223_set_scroll_00
; Y = 00
C - - - - - 0x01D0AC 07:D09C: 84 5A     STY ram_005A_flag
C - - - - - 0x01D0AE 07:D09E: 84 83     STY ram_bullet_counter
C - - - - - 0x01D0B0 07:D0A0: 84 84     STY ram_bullet_counter + $01
; counter before game over options will appear at game over screen
C - - - - - 0x01D0B2 07:D0A2: 84 4A     STY ram_004A_t01_game_over_options_delay
C - - - - - 0x01D0B4 07:D0A4: A5 FF     LDA ram_for_2000
C - - - - - 0x01D0B6 07:D0A6: 29 FC     AND #$FC
C - - - - - 0x01D0B8 07:D0A8: 85 FF     STA ram_for_2000
C - - - - - 0x01D0BA 07:D0AA: A9 7C     LDA #con_chr_bank + $7C
C - - - - - 0x01D0BC 07:D0AC: 85 77     STA ram_chr_bank
C - - - - - 0x01D0C3 07:D0B3: 20 94 BF  JSR sub_BF94_clear_data
C - - - - - 0x01D0C6 07:D0B6: 20 97 D1  JSR sub_D197_clear_nametables
C - - - - - 0x01D0C9 07:D0B9: 20 27 F3  JSR sub_F327
C - - - - - 0x01D0CC 07:D0BC: A9 A4     LDA #con_music_A4
C - - - - - 0x01D0CE 07:D0BE: 20 CA FE  JSR sub_0x01FEDA_add_music_to_queue
bra_D0C1:
loc_D0C1:
C D 2 - - - 0x01D0D1 07:D0C1: E6 21     INC ram_0021_t01
bra_D0C3_RTS:
C - - - - - 0x01D0D3 07:D0C3: 60        RTS
bra_D0C4:
C - - - - - 0x01D0D4 07:D0C4: 88        DEY
C - - - - - 0x01D0D5 07:D0C5: D0 04     BNE bra_D0CB
C - - - - - 0x01D0D7 07:D0C7: A9 14     LDA #con_D280_game_over
C - - - - - 0x01D0D9 07:D0C9: D0 12     BNE bra_D0DD    ; jmp
bra_D0CB:
C - - - - - 0x01D0DB 07:D0CB: 88        DEY
C - - - - - 0x01D0DC 07:D0CC: D0 15     BNE bra_D0E3
C - - - - - 0x01D0DE 07:D0CE: C6 4A     DEC ram_004A_t01_game_over_options_delay
C - - - - - 0x01D0E0 07:D0D0: D0 F1     BNE bra_D0C3_RTS
; draw game over options
C - - - - - 0x01D0E2 07:D0D2: A9 00     LDA #$00
C - - - - - 0x01D0E4 07:D0D4: 85 22     STA ram_0022_t01
C - - - - - 0x01D0E6 07:D0D6: A9 21     LDA #con_D280_continue
C - - - - - 0x01D0E8 07:D0D8: 20 3C D2  JSR sub_D23C_draw_text
C - - - - - 0x01D0EB 07:D0DB: A9 2C     LDA #con_D280_end
bra_D0DD:
C - - - - - 0x01D0ED 07:D0DD: 20 3C D2  JSR sub_D23C_draw_text
C - - - - - 0x01D0F0 07:D0E0: 4C C1 D0  JMP loc_D0C1
bra_D0E3:
C - - - - - 0x01D0F3 07:D0E3: 88        DEY
C - - - - - 0x01D0F4 07:D0E4: D0 32     BNE bra_D118
C - - - - - 0x01D0F6 07:D0E6: A5 40     LDA ram_btn_press_1
C - - - - - 0x01D0F8 07:D0E8: 05 42     ORA ram_btn_hold_1
C - - - - - 0x01D0FA 07:D0EA: 29 10     AND #con_btn_Start
C - - - - - 0x01D0FC 07:D0EC: F0 07     BEQ bra_D0F5
C - - - - - 0x01D101 07:D0F1: E6 21     INC ram_0021_t01
C - - - - - 0x01D103 07:D0F3: D0 17     BNE bra_D10C
bra_D0F5:
C - - - - - 0x01D105 07:D0F5: A5 40     LDA ram_btn_press_1
C - - - - - 0x01D107 07:D0F7: 29 0C     AND #con_btns_UD
C - - - - - 0x01D109 07:D0F9: F0 0B     BEQ bra_D106
C - - - - - 0x01D10B 07:D0FB: A9 00     LDA #$00
C - - - - - 0x01D10D 07:D0FD: 20 0E D1  JSR sub_D10E
C - - - - - 0x01D110 07:D100: A5 22     LDA ram_0022_t01
C - - - - - 0x01D112 07:D102: 49 01     EOR #$01
C - - - - - 0x01D114 07:D104: 85 22     STA ram_0022_t01
bra_D106:
C - - - - - 0x01D116 07:D106: A5 23     LDA ram_frm_cnt
C - - - - - 0x01D118 07:D108: 29 10     AND #$10
C - - - - - 0x01D11A 07:D10A: F0 02     BEQ bra_D10E
bra_D10C:
C - - - - - 0x01D11C 07:D10C: A9 80     LDA #$80
bra_D10E:
sub_D10E:
C - - - - - 0x01D11E 07:D10E: A4 22     LDY ram_0022_t01
C - - - - - 0x01D120 07:D110: 19 16 D1  ORA tbl_D116,Y
C - - - - - 0x01D123 07:D113: 4C 3C D2  JMP loc_D23C_draw_text



tbl_D116:
- D 2 - - - 0x01D126 07:D116: 21        .byte con_D280_continue   ; 00 
- D 2 - - - 0x01D127 07:D117: 2C        .byte con_D280_end   ; 01 



bra_D118:
C - - - - - 0x01D128 07:D118: A5 22     LDA ram_0022_t01
C - - - - - 0x01D12A 07:D11A: F0 07     BEQ bra_D123
C - - - - - 0x01D12C 07:D11C: A9 00     LDA #con_0020_00
C - - - - - 0x01D12E 07:D11E: 85 20     STA ram_script_hi
C - - - - - 0x01D130 07:D120: 4C 62 D0  JMP loc_D062
bra_D123:
C - - - - - 0x01D133 07:D123: A9 62     LDA #con_music_62
C - - - - - 0x01D135 07:D125: 20 CA FE  JSR sub_0x01FEDA_add_music_to_queue
C - - - - - 0x01D138 07:D128: 20 74 D1  JSR sub_D174
C - - - - - 0x01D13B 07:D12B: 8D C8 07  STA ram_07C8_unk
C - - - - - 0x01D13E 07:D12E: 8D C9 07  STA ram_07C8_unk + $01
C - - - - - 0x01D141 07:D131: 85 00     STA ram_0000_t6C
C - - - - - 0x01D143 07:D133: A0 03     LDY #$03
bra_D135_loop:
C - - - - - 0x01D145 07:D135: B9 7F 00  LDA ram_player_stats,Y
C - - - - - 0x01D148 07:D138: C9 30     CMP #$30
C - - - - - 0x01D14A 07:D13A: 90 02     BCC bra_D13E
C - - - - - 0x01D14C 07:D13C: A9 30     LDA #$30
bra_D13E:
C - - - - - 0x01D14E 07:D13E: 05 00     ORA ram_0000_t6C
C - - - - - 0x01D150 07:D140: 85 00     STA ram_0000_t6C
C - - - - - 0x01D152 07:D142: 88        DEY
C - - - - - 0x01D153 07:D143: 10 F0     BPL bra_D135_loop
C - - - - - 0x01D155 07:D145: 85 00     STA ram_0000_t6D
C - - - - - 0x01D157 07:D147: A0 01     LDY #$01
C - - - - - 0x01D159 07:D149: A9 20     LDA #$20
bra_D14B_loop:
C - - - - - 0x01D15B 07:D14B: AA        TAX
C - - - - - 0x01D15C 07:D14C: 25 00     AND ram_0000_t6D
C - - - - - 0x01D15E 07:D14E: F0 0A     BEQ bra_D15A
C - - - - - 0x01D160 07:D150: A9 2E     LDA #$2E
C - - - - - 0x01D162 07:D152: 99 82 07  STA ram_0782_unk,Y
C - - - - - 0x01D165 07:D155: A9 0A     LDA #$0A
C - - - - - 0x01D167 07:D157: 99 82 06  STA ram_0682_obj,Y
bra_D15A:
C - - - - - 0x01D16A 07:D15A: 8A        TXA
C - - - - - 0x01D16B 07:D15B: 4A        LSR
C - - - - - 0x01D16C 07:D15C: 88        DEY
C - - - - - 0x01D16D 07:D15D: 10 EC     BPL bra_D14B_loop
C - - - - - 0x01D16F 07:D15F: A0 02     LDY #$02
C - - - - - 0x01D171 07:D161: 84 44     STY ram_script_lo
C - - - - - 0x01D173 07:D163: C8        INY ; 03 con_0020_gameplay
C - - - - - 0x01D174 07:D164: 84 20     STY ram_script_hi
C - - - - - 0x01D176 07:D166: 20 35 F6  JSR sub_F635_set_default_3_lives
C - - - - - 0x01D179 07:D169: 4C 62 D0  JMP loc_D062



sub_D174:
sub_0x01D184:
C - - - - - 0x01D186 07:D176: 20 B3 F3  JSR sub_0x00801F
C - - - - - 0x01D189 07:D179: A9 00     LDA #$00
C - - - - - 0x01D18B 07:D17B: 8D 98 06  STA ram_0682_obj + $16
C - - - - - 0x01D18E 07:D17E: 8D 99 06  STA ram_0682_obj + $17
C - - - - - 0x01D191 07:D181: 60        RTS



sub_D197_clear_nametables:
loc_D197_clear_nametables:
sub_0x01D1A7_clear_nametables:
C - - - - - 0x01D1AF 07:D19F: A2 00     LDX #con_D22A_clear_nametables
sub_D1A8_unpack_static_screen:
sub_0x01D1B8_unpack_static_screen:
loc_0x01D1B8_unpack_static_screen:
ofs_006_0x01D1B8_19_unpack_static_screen___pause:
; con_F3D6_19
ofs_006_0x01D1B8_1A_unpack_static_screen___cutscene_pause:
; con_F3D6_1A
                                        LDA ram_prg_banks_pair
                                        PHA
                                        LDA #con_prg_pair + $0B
                                        JSR sub_0x01F35C_prg_bankswitch
C D 2 - - - 0x01D1B8 07:D1A8: 20 15 D2  JSR sub_D215_prepare_pointers_for_static_screen
C - - - - - 0x01D1BB 07:D1AB: 20 20 D2  JSR sub_D220_disable_rendering_and_set_scroll_00
loc_D1AE_loop:
C D 2 - - - 0x01D1BE 07:D1AE: AD 02 20  LDA $2002
C - - - - - 0x01D1C1 07:D1B1: A0 01     LDY #$01
C - - - - - 0x01D1C3 07:D1B3: B1 00     LDA (ram_0000_t0C_static_screen_data),Y
C - - - - - 0x01D1C5 07:D1B5: 8D 06 20  STA $2006
C - - - - - 0x01D1C8 07:D1B8: 88        DEY ; 00
C - - - - - 0x01D1C9 07:D1B9: B1 00     LDA (ram_0000_t0C_static_screen_data),Y
C - - - - - 0x01D1CB 07:D1BB: 8D 06 20  STA $2006
loc_D1BE:
C D 2 - - - 0x01D1CE 07:D1BE: A2 00     LDX #$00
C - - - - - 0x01D1D0 07:D1C0: A9 02     LDA #$02
loc_D1C2_loop:
C D 2 - - - 0x01D1D2 07:D1C2: 20 0B D2  JSR sub_D20B_increase_0000_pointer_by_A
C - - - - - 0x01D1D5 07:D1C5: A0 00     LDY #$00
C - - - - - 0x01D1D7 07:D1C7: B1 00     LDA (ram_0000_t0C_static_screen_data),Y
C - - - - - 0x01D1D9 07:D1C9: C9 FF     CMP #$FF
C - - - - - 0x01D1DB 07:D1CB: F0 3B     BEQ bra_D208_FF
C - - - - - 0x01D1DD 07:D1CD: C9 7F     CMP #$7F
C - - - - - 0x01D1DF 07:D1CF: F0 2F     BEQ bra_D200_7F
C - - - - - 0x01D1E1 07:D1D1: A8        TAY
C - - - - - 0x01D1E2 07:D1D2: 10 1A     BPL bra_D1EE
; 80-FE
C - - - - - 0x01D1E4 07:D1D4: 29 7F     AND #$7F
C - - - - - 0x01D1E6 07:D1D6: 85 02     STA ram_0002_t55
C - - - - - 0x01D1E8 07:D1D8: A0 01     LDY #$01
bra_D1DA_loop:
C - - - - - 0x01D1EA 07:D1DA: B1 00     LDA (ram_0000_t0C_static_screen_data),Y
C - - - - - 0x01D1EC 07:D1DC: 8D 07 20  STA $2007
C - - - - - 0x01D1EF 07:D1DF: C4 02     CPY ram_0002_t55
C - - - - - 0x01D1F1 07:D1E1: F0 03     BEQ bra_D1E6
C - - - - - 0x01D1F3 07:D1E3: C8        INY
C - - - - - 0x01D1F4 07:D1E4: D0 F4     BNE bra_D1DA_loop   ; jmp?
bra_D1E6:
C - - - - - 0x01D1F6 07:D1E6: A9 01     LDA #$01
C - - - - - 0x01D1F8 07:D1E8: 18        CLC
C - - - - - 0x01D1F9 07:D1E9: 65 02     ADC ram_0002_t55
bra_D1EB:
C - - - - - 0x01D1FB 07:D1EB: 4C C2 D1  JMP loc_D1C2_loop
bra_D1EE:
; 00-7E
C - - - - - 0x01D1FE 07:D1EE: A0 01     LDY #$01
C - - - - - 0x01D200 07:D1F0: 85 02     STA ram_0002_t56
C - - - - - 0x01D202 07:D1F2: B1 00     LDA (ram_0000_t0C_static_screen_data),Y
C - - - - - 0x01D204 07:D1F4: A4 02     LDY ram_0002_t56
bra_D1F6_loop:
C - - - - - 0x01D206 07:D1F6: 8D 07 20  STA $2007
C - - - - - 0x01D209 07:D1F9: 88        DEY
C - - - - - 0x01D20A 07:D1FA: D0 FA     BNE bra_D1F6_loop
C - - - - - 0x01D20C 07:D1FC: A9 02     LDA #$02
C - - - - - 0x01D20E 07:D1FE: D0 EB     BNE bra_D1EB    ; jmp
bra_D200_7F:
C - - - - - 0x01D210 07:D200: A9 01     LDA #$01
C - - - - - 0x01D212 07:D202: 20 0B D2  JSR sub_D20B_increase_0000_pointer_by_A
C - - - - - 0x01D215 07:D205: 4C AE D1  JMP loc_D1AE_loop
bra_D208_FF:
C - - - - - 0x01D218 07:D208: 4C 70 FE  JSR sub_0x01FE80
                                        PLA
                                        JMP loc_0x01F35C_prg_bankswitch
                                        



sub_D20B_increase_0000_pointer_by_A:
; in
    ; A = how much to add
    ; X = address offset
; bzk optimize, X is always 00
C - - - - - 0x01D21B 07:D20B: 18        CLC
C - - - - - 0x01D21C 07:D20C: 75 00     ADC ram_0000_t0C_static_screen_data,X
C - - - - - 0x01D21E 07:D20E: 95 00     STA ram_0000_t0C_static_screen_data,X
C - - - - - 0x01D220 07:D210: 90 02     BCC bra_D214_RTS    ; if not overflow
C - - - - - 0x01D222 07:D212: F6 01     INC ram_0000_t0C_static_screen_data + $01,X
bra_D214_RTS:
C - - - - - 0x01D224 07:D214: 60        RTS



sub_D215_prepare_pointers_for_static_screen:
C - - - - - 0x01D225 07:D215: BD 2A D2  LDA tbl_D22A_static_screens,X
C - - - - - 0x01D228 07:D218: 85 00     STA ram_0000_t0C_static_screen_data
C - - - - - 0x01D22A 07:D21A: BD 2B D2  LDA tbl_D22A_static_screens + $01,X
C - - - - - 0x01D22D 07:D21D: 85 01     STA ram_0000_t0C_static_screen_data + $01
C - - - - - 0x01D22F 07:D21F: 60        RTS



loc_0x01D225_unpack_static_screen___no_2006_writes:
                                        JSR sub_D215_prepare_pointers_for_static_screen
                                        LDA ram_prg_banks_pair
                                        PHA
                                        JMP loc_D1BE



sub_D220_disable_rendering_and_set_scroll_00:
sub_0x01D230_disable_rendering_and_set_scroll_00:
C - - - - - 0x01D230 07:D220: 20 93 FE  JSR sub_0x01FEA3_disable_rendering
sub_D223_set_scroll_00:
C - - - - - 0x01D233 07:D223: A9 00     LDA #$00
C - - - - - 0x01D235 07:D225: 85 FD     STA ram_scroll_X
C - - - - - 0x01D237 07:D227: 85 FC     STA ram_scroll_Y
C - - - - - 0x01D239 07:D229: 60        RTS



tbl_D22A_static_screens:
; see con_D22A
- D 2 - - - 0x01D23A 07:D22A: A2 A9     .word _off012_0x0169B2_00_clear_nametables
- - - - - - 0x01D23C 07:D22C: A2 A9     .word $FFFF          ; 02 unused, index doesn't exist
- D 2 - - - 0x01D23E 07:D22E: 54 95     .word _off012_0x015564_04_title_screen
- - - - - - 0x01D240 07:D230: A2 A9     .word $FFFF          ; 06 unused, index doesn't exist
- D 2 - - - 0x01D242 07:D232: CC BE     .word _off012_0x007EDC_08_cutscene_phone
- D 2 - - - 0x01D244 07:D234: 7A AD     .word _off012_0x016D8A_0A_cutscene_crime
- D 2 - - - 0x01D246 07:D236: 09 BD     .word _off012_0x01BD19_0C_pause
- D 2 - - - 0x01D248 07:D238: D3 92     .word _off012_0x0152E3_0E_player_select
- D 2 - - - 0x01D24A 07:D23A: 23 BE     .word _off012_0x017E33_10_credits



sub_D23C_draw_text:
loc_D23C_draw_text:
sub_0x01D24C_draw_text:
; in
    ; A
        ; +80 = hide text
C D 2 - - - 0x01D24C 07:D23C: 0A        ASL
C - - - - - 0x01D24D 07:D23D: A8        TAY
C - - - - - 0x01D24E 07:D23E: 90 04     BCC bra_D244
C - - - - - 0x01D250 07:D240: A9 00     LDA #$00
C - - - - - 0x01D252 07:D242: F0 02     BEQ bra_D246    ; jmp
bra_D244:
C - - - - - 0x01D254 07:D244: A9 FF     LDA #$FF
bra_D246:
C - - - - - 0x01D256 07:D246: 85 02     STA ram_0002_t57_hide_text_flag
C - - - - - 0x01D258 07:D248: 98        TYA
C - - - - - 0x01D259 07:D249: 4A        LSR
C - - - - - 0x01D25A 07:D24A: A8        TAY
C - - - - - 0x01D25B 07:D24B: A9 01     LDA #$01
C - - - - - 0x01D25D 07:D24D: 20 77 D2  JSR sub_D277_write_to_buffer___unk_X
C - - - - - 0x01D260 07:D250: B9 80 D2  LDA tbl_D280_menu_text,Y
C - - - - - 0x01D263 07:D253: 20 79 D2  JSR sub_D279_write_to_buffer
C - - - - - 0x01D266 07:D256: C8        INY
C - - - - - 0x01D267 07:D257: B9 80 D2  LDA tbl_D280_menu_text,Y
C - - - - - 0x01D26A 07:D25A: 20 79 D2  JSR sub_D279_write_to_buffer
C - - - - - 0x01D26D 07:D25D: C8        INY
loc_D25E_loop:
C D 2 - - - 0x01D26E 07:D25E: B9 80 D2  LDA tbl_D280_menu_text,Y
C - - - - - 0x01D271 07:D261: C8        INY
C - - - - - 0x01D272 07:D262: C9 7F     CMP #$7F
C - - - - - 0x01D274 07:D264: F0 0F     BEQ bra_D275_close_buffer
C - - - - - 0x01D276 07:D266: AA        TAX
C - - - - - 0x01D277 07:D267: A5 02     LDA ram_0002_t57_hide_text_flag
C - - - - - 0x01D279 07:D269: F0 04     BEQ bra_D26F_print_letter
; replace letter with space
C - - - - - 0x01D27B 07:D26B: 8A        TXA
C - - - - - 0x01D27C 07:D26C: 38        SEC
C - - - - - 0x01D27D 07:D26D: E9 30     SBC #$30
bra_D26F_print_letter:
C - - - - - 0x01D27F 07:D26F: 20 77 D2  JSR sub_D277_write_to_buffer___unk_X
C - - - - - 0x01D282 07:D272: 4C 5E D2  JMP loc_D25E_loop
bra_D275_close_buffer:
C - - - - - 0x01D285 07:D275: A9 FF     LDA #$FF
sub_D277_write_to_buffer___unk_X:
loc_0x01D287_write_to_buffer___unk_X:
sub_0x01D287_write_to_buffer___unk_X:
C D 2 - - - 0x01D287 07:D277: A6 26     LDX ram_buffer_index
sub_D279_write_to_buffer:
sub_0x01D289_write_to_buffer:
C - - - - - 0x01D289 07:D279: 9D 00 01  STA ram_ppu_buffer_1,X
C - - - - - 0x01D28C 07:D27C: E8        INX
C - - - - - 0x01D28D 07:D27D: 86 26     STX ram_buffer_index
C - - - - - 0x01D28F 07:D27F: 60        RTS



tbl_D280_menu_text:
; 00 con_D280_push_start_button
- D 2 - - - 0x01D290 07:D280: 88 22     .word $2288 ; 
- D 2 - - - 0x01D292 07:D282: 50        .byte $50, $55, $53, $48, $30   ; PUSH
- D 2 - - - 0x01D297 07:D287: 53        .byte $53, $54, $41, $52, $54, $30   ; START
- D 2 - - - 0x01D29D 07:D28D: 42        .byte $42, $55, $54, $54, $4F, $4E   ; BUTTON
- D 2 - - - 0x01D2A3 07:D293: 7F        .byte $7F   ; end token
; 14 con_D280_game_over
- D 2 - - - 0x01D2A4 07:D294: CB 21     .word $21CB ; 
- D 2 - - - 0x01D2A6 07:D296: 47        .byte $47, $41, $4D, $45, $30, $30   ; GAME
- D 2 - - - 0x01D2AC 07:D29C: 4F        .byte $4F, $56, $45, $52   ; OVER
- D 2 - - - 0x01D2B0 07:D2A0: 7F        .byte $7F   ; end token
; 21 con_D280_continue
- D 2 - - - 0x01D2B1 07:D2A1: 0C 22     .word $220C ; 
- D 2 - - - 0x01D2B3 07:D2A3: 43        .byte $43, $4F, $4E, $54, $49, $4E, $55, $45   ; CONTINUE
- D 2 - - - 0x01D2BB 07:D2AB: 7F        .byte $7F   ; end token
; 2C con_D280_end
- D 2 - - - 0x01D2BC 07:D2AC: 4C 22     .word $224C ; 
- D 2 - - - 0x01D2BE 07:D2AE: 45        .byte $45, $4E, $44   ; END
- D 2 - - - 0x01D2C1 07:D2B1: 7F        .byte $7F   ; end token
; 32 con_D280_konami_1 KONAMI (upper half)
- D 2 - - - 0x01D2C2 07:D2B2: EA 21     .word $21EA ; 
- D 2 - - - 0x01D2C4 07:D2B4: 00        .byte $00, $F0, $02, $1C, $1D, $1E, $1F, $09, $FC, $FD, $FE, $FF   ; 
- D 2 - - - 0x01D2D0 07:D2C0: 7F        .byte $7F   ; end token
; 41 con_D280_konami_2 KONAMI (lower half)
- D 2 - - - 0x01D2D1 07:D2C1: 0A 22     .word $220A ; 
- D 2 - - - 0x01D2D3 07:D2C3: 2B        .byte $2B, $DB, $01, $2C, $2D, $2E, $0A, $0B, $0C, $0D, $0E, $0F, $EF   ; 
- D 2 - - - 0x01D2E0 07:D2D0: 7F        .byte $7F   ; end token



sub_0x01D2E1:
C - - - - - 0x01D2E1 07:D2D1: A5 35     LDA ram_base_oam_offset
C - - - - - 0x01D2E3 07:D2D3: 18        CLC
C - - - - - 0x01D2E4 07:D2D4: 69 4C     ADC #$4C
C - - - - - 0x01D2E6 07:D2D6: 85 35     STA ram_base_oam_offset
C - - - - - 0x01D2E8 07:D2D8: AA        TAX
C - - - - - 0x01D2E9 07:D2D9: A9 40     LDA #$40
C - - - - - 0x01D2EB 07:D2DB: 85 01     STA ram_0001_t37_sprites_counter
C - - - - - 0x01D2ED 07:D2DD: A5 45     LDA ram_pause_flag
C - - - - - 0x01D2EF 07:D2DF: F0 3D     BEQ bra_D31E
C - - - - - 0x01D2F1 07:D2E1: A5 5B     LDA ram_005B_script
C - - - - - 0x01D2F3 07:D2E3: C9 03     CMP #$03
C - - - - - 0x01D2F5 07:D2E5: 90 61     BCC bra_D348
C - - - - - 0x01D2F7 07:D2E7: C9 08     CMP #$08
C - - - - - 0x01D2F9 07:D2E9: B0 5D     BCS bra_D348
C - - - - - 0x01D2FB 07:D2EB: A9 18     LDA #$18
C - - - - - 0x01D2FD 07:D2ED: 85 11     STA ram_0011_t02_pos_X_lo
; bzk optimize, useless LDA + STA
C - - - - - 0x01D2FF 07:D2EF: A9 00     LDA #$00
C - - - - - 0x01D301 07:D2F1: 85 08     STA ram_0008_t20_useless
C - - - - - 0x01D303 07:D2F3: A5 21     LDA ram_0021_t02
C - - - - - 0x01D305 07:D2F5: 29 03     AND #$03
C - - - - - 0x01D307 07:D2F7: A8        TAY
C - - - - - 0x01D308 07:D2F8: B9 6B D5  LDA tbl_D56B,Y
C - - - - - 0x01D30B 07:D2FB: 85 10     STA ram_0010_t08_spr_Y
C - - - - - 0x01D30F 07:D2FF: 20 05 D3  JSR sub_D305
C - - - - - 0x01D312 07:D302: 4C 48 D3  JMP loc_D348



sub_D305:
C - - - - - 0x01D315 07:D305: B9 6F D5  LDA #< tbl_D571
C - - - - - 0x01D318 07:D308: 85 02     STA ram_0002_t04_data
C - - - - - 0x01D31A 07:D30A: B9 70 D5  LDA #> tbl_D571
C - - - - - 0x01D31D 07:D30D: 85 03     STA ram_0002_t04_data + $01
C - - - - - 0x01D31F 07:D30F: A9 00     LDA #$00
C - - - - - 0x01D321 07:D311: 85 12     STA ram_0012_t04_spr_A
C - - - - - 0x01D323 07:D313: 85 13     STA ram_0013_t04_pos_X_hi
; bzk optimize, useless STA
C - - - - - 0x01D325 07:D315: 85 14     STA ram_0014_t10_useless
C - - - - - 0x01D327 07:D317: A9 C3     LDA #$C3
C - - - - - 0x01D329 07:D319: 85 18     STA ram_0018_t16
C - - - - - 0x01D32B 07:D31B: 4C FF D3  JMP loc_D3FF



bra_D31E:
C - - - - - 0x01D32E 07:D31E: A9 1A     LDA #$1A
C - - - - - 0x01D330 07:D320: 85 0A     STA ram_000A_t15_loop_counter
C - - - - - 0x01D332 07:D322: A5 23     LDA ram_frm_cnt
C - - - - - 0x01D334 07:D324: 29 0F     AND #$0F
C - - - - - 0x01D336 07:D326: A8        TAY
C - - - - - 0x01D337 07:D327: B9 5B D5  LDA tbl_D55B,Y
C - - - - - 0x01D33A 07:D32A: 85 08     STA ram_0008_t11_object_index
C - - - - - 0x01D33C 07:D32C: A8        TAY
bra_D32D_loop:
C - - - - - 0x01D33D 07:D32D: B9 1A 06  LDA ram_obj_animation_lo,Y
C - - - - - 0x01D340 07:D330: F0 03     BEQ bra_D335
C - - - - - 0x01D342 07:D332: 20 5B D3  JSR sub_D35B
bra_D335:
C - - - - - 0x01D345 07:D335: A5 01     LDA ram_0001_t37_sprites_counter
C - - - - - 0x01D347 07:D337: F0 0F     BEQ bra_D348
C - - - - - 0x01D349 07:D339: A4 08     LDY ram_0008_t11_object_index
C - - - - - 0x01D34B 07:D33B: C8        INY
C - - - - - 0x01D34C 07:D33C: C0 1A     CPY #$1A
C - - - - - 0x01D34E 07:D33E: 90 02     BCC bra_D342
C - - - - - 0x01D350 07:D340: A0 00     LDY #$00
bra_D342:
C - - - - - 0x01D352 07:D342: 84 08     STY ram_0008_t11_object_index
C - - - - - 0x01D354 07:D344: C6 0A     DEC ram_000A_t15_loop_counter
C - - - - - 0x01D356 07:D346: D0 E5     BNE bra_D32D_loop
bra_D348:
loc_D348:
C D 2 - - - 0x01D358 07:D348: A5 01     LDA ram_0001_t37_sprites_counter
C - - - - - 0x01D35A 07:D34A: F0 0E     BEQ bra_D35A_RTS
bra_D34C_loop:
C - - - - - 0x01D35C 07:D34C: A9 F4     LDA #$F4
C - - - - - 0x01D35E 07:D34E: 9D 00 02  STA ram_spr_Y,X
C - - - - - 0x01D361 07:D351: 8A        TXA
C - - - - - 0x01D362 07:D352: 18        CLC
C - - - - - 0x01D363 07:D353: 69 C4     ADC #$C4
C - - - - - 0x01D365 07:D355: AA        TAX
C - - - - - 0x01D366 07:D356: C6 01     DEC ram_0001_t37_sprites_counter
C - - - - - 0x01D368 07:D358: D0 F2     BNE bra_D34C_loop
bra_D35A_RTS:
C - - - - - 0x01D36A 07:D35A: 60        RTS



sub_D35B:
; in
    ; A = 
C - - - - - 0x01D36B 07:D35B: 85 10     STA ram_0010_t09_animation_id
C - - - - - 0x01D36D 07:D35D: B9 00 06  LDA ram_0600_obj,Y
; / 08
C - - - - - 0x01D370 07:D360: 4A        LSR
C - - - - - 0x01D371 07:D361: 4A        LSR
C - - - - - 0x01D372 07:D362: 4A        LSR
C - - - - - 0x01D373 07:D363: 29 1E     AND #$1E
C - - - - - 0x01D375 07:D365: A8        TAY
C - - - - - 0x01D376 07:D366: B9 3B D5  LDA tbl_D53B,Y
C - - - - - 0x01D379 07:D369: 85 13     STA ram_0013_t04_pos_X_hi
C - - - - - 0x01D37B 07:D36B: B9 3C D5  LDA tbl_D53C,Y
C - - - - - 0x01D37E 07:D36E: D0 EA     BNE bra_D35A_RTS
; A = 00
; bzk optimize, useless STA
C - - - - - 0x01D380 07:D370: 85 14     STA ram_0014_t11_useless
                                        LDA #con_prg_pair + $08
                                        CMP ram_prg_banks_pair
                                        BEQ bra_D372_currently_same_bank
                                        JSR sub_0x01F35C_prg_bankswitch
bra_D372_currently_same_bank:
C - - - - - 0x01D382 07:D372: A4 08     LDY ram_0008_t11_object_index
C - - - - - 0x01D384 07:D374: B9 34 06  LDA ram_obj_animation_hi,Y
C - - - - - 0x01D387 07:D377: 29 3C     AND #$3C
C - - - - - 0x01D389 07:D379: 4A        LSR
C - - - - - 0x01D38D 07:D37D: A8        TAY
C - - - - - 0x01D38E 07:D37E: A5 10     LDA ram_0010_t09_animation_id
C - - - - - 0x01D390 07:D380: 0A        ASL
C - - - - - 0x01D391 07:D381: 90 0D     BCC bra_D390_00_7F
; 80-FF
C - - - - - 0x01D393 07:D383: 18        CLC
C - - - - - 0x01D394 07:D384: 79 01 80  ADC tbl_0x000011_spr_data,Y
C - - - - - 0x01D397 07:D387: 85 10     STA ram_0010_t02_data
C - - - - - 0x01D399 07:D389: B9 02 80  LDA tbl_0x000011_spr_data + $01,Y
C - - - - - 0x01D39C 07:D38C: 69 01     ADC #$01
C - - - - - 0x01D39E 07:D38E: D0 0B     BNE bra_D39B    ; jmp
bra_D390_00_7F:
C - - - - - 0x01D3A0 07:D390: 18        CLC
C - - - - - 0x01D3A1 07:D391: 79 01 80  ADC tbl_0x000011_spr_data,Y
C - - - - - 0x01D3A4 07:D394: 85 10     STA ram_0010_t02_data
C - - - - - 0x01D3A6 07:D396: B9 02 80  LDA tbl_0x000011_spr_data + $01,Y
C - - - - - 0x01D3A9 07:D399: 69 00     ADC #$00
bra_D39B:
C - - - - - 0x01D3AB 07:D39B: 85 11     STA ram_0010_t02_data + $01
C - - - - - 0x01D3AD 07:D39D: A0 00     LDY #$00
C - - - - - 0x01D3AF 07:D39F: B1 10     LDA (ram_0010_t02_data),Y
C - - - - - 0x01D3B1 07:D3A1: 85 02     STA ram_0002_t04_data
C - - - - - 0x01D3B3 07:D3A3: C8        INY ; 01
C - - - - - 0x01D3B4 07:D3A4: B1 10     LDA (ram_0010_t02_data),Y
C - - - - - 0x01D3B6 07:D3A6: 85 03     STA ram_0002_t04_data + $01
C - - - - - 0x01D3B8 07:D3A8: A4 08     LDY ram_0008_t11_object_index
C - - - - - 0x01D3BA 07:D3AA: B9 4E 06  LDA ram_obj_pos_X,Y
C - - - - - 0x01D3BD 07:D3AD: 85 11     STA ram_0011_t02_pos_X_lo
C - - - - - 0x01D3BF 07:D3AF: B9 68 06  LDA ram_obj_pos_Y,Y
C - - - - - 0x01D3C2 07:D3B2: 85 10     STA ram_0010_t08_spr_Y
C - - - - - 0x01D3C4 07:D3B4: A9 C3     LDA #$C3
C - - - - - 0x01D3C6 07:D3B6: 85 18     STA ram_0018_t16
C - - - - - 0x01D3C8 07:D3B8: B9 34 06  LDA ram_obj_animation_hi,Y
C - - - - - 0x01D3CB 07:D3BB: 10 09     BPL bra_D3C6    ; if in front of bg
; if behind bg
C - - - - - 0x01D3CD 07:D3BD: B9 34 06  LDA ram_obj_animation_hi,Y
C - - - - - 0x01D3D0 07:D3C0: 29 03     AND #$03
C - - - - - 0x01D3D2 07:D3C2: 09 20     ORA #$20
C - - - - - 0x01D3D4 07:D3C4: D0 02     BNE bra_D3C8    ; jmp
bra_D3C6:
C - - - - - 0x01D3D6 07:D3C6: 29 03     AND #$03
bra_D3C8:
C - - - - - 0x01D3D8 07:D3C8: 85 12     STA ram_0012_t04_spr_A
C - - - - - 0x01D3DA 07:D3CA: 29 03     AND #$03
C - - - - - 0x01D3DC 07:D3CC: F0 04     BEQ bra_D3D2
C - - - - - 0x01D3DE 07:D3CE: A9 C0     LDA #$C0
C - - - - - 0x01D3E0 07:D3D0: 85 18     STA ram_0018_t16
bra_D3D2:
C - - - - - 0x01D3E2 07:D3D2: A5 08     LDA ram_0008_t11_object_index
C - - - - - 0x01D3E4 07:D3D4: C9 02     CMP #$02
C - - - - - 0x01D3E6 07:D3D6: B0 27     BCS bra_D3FF
C - - - - - 0x01D3E8 07:D3D8: A5 C0     LDA ram_00C0_combined_players_id
C - - - - - 0x01D3EA 07:D3DA: 0A        ASL
C - - - - - 0x01D3EB 07:D3DB: 18        CLC
C - - - - - 0x01D3EC 07:D3DC: 65 08     ADC ram_0008_t11_object_index
C - - - - - 0x01D3EE 07:D3DE: A8        TAY
C - - - - - 0x01D3EF 07:D3DF: A5 75     LDA ram_stage
C - - - - - 0x01D3F1 07:D3E1: 29 01     AND #$01
C - - - - - 0x01D3F3 07:D3E3: D0 0D     BNE bra_D3F2
C - - - - - 0x01D3F5 07:D3E5: B9 C4 D4  LDA tbl_D4C4,Y
C - - - - - 0x01D3F8 07:D3E8: 85 1E     STA ram_001E_t13
C - - - - - 0x01D3FA 07:D3EA: B9 E2 D4  LDA tbl_D4E2,Y
C - - - - - 0x01D3FD 07:D3ED: 85 1D     STA ram_001D_t10
C - - - - - 0x01D3FF 07:D3EF: 4C 25 D4  JMP loc_D425
bra_D3F2:
C - - - - - 0x01D402 07:D3F2: B9 00 D5  LDA tbl_D500,Y
C - - - - - 0x01D405 07:D3F5: 85 1E     STA ram_001E_t13
C - - - - - 0x01D407 07:D3F7: B9 1D D5  LDA tbl_D51D,Y
C - - - - - 0x01D40A 07:D3FA: 85 1D     STA ram_001D_t10
C - - - - - 0x01D40C 07:D3FC: 4C 25 D4  JMP loc_D425
bra_D3FF:
loc_D3FF:
C D 2 - - - 0x01D40F 07:D3FF: 20 A7 D4  JSR sub_D4A7_clear_001B_001C_001D
bra_D402_loop:
C - - - - - 0x01D412 07:D402: 20 59 D4  JSR sub_D459
bra_D405_loop:
C - - - - - 0x01D415 07:D405: 20 8A D4  JSR sub_D48A
C - - - - - 0x01D418 07:D408: F0 03     BEQ bra_D40D
C - - - - - 0x01D41A 07:D40A: C8        INY
C - - - - - 0x01D41B 07:D40B: D0 0E     BNE bra_D41B    ; jmp
bra_D40D:
C - - - - - 0x01D41D 07:D40D: A5 19     LDA ram_0019_t02_spr_A
C - - - - - 0x01D41F 07:D40F: 45 1C     EOR ram_001C_t10_spr_A_flip
C - - - - - 0x01D421 07:D411: 9D 02 02  STA ram_spr_A,X
C - - - - - 0x01D424 07:D414: B1 02     LDA (ram_0002_t04_data),Y
C - - - - - 0x01D426 07:D416: 20 B0 D4  JSR sub_D4B0
C - - - - - 0x01D429 07:D419: F0 09     BEQ bra_D424_RTS
bra_D41B:
C - - - - - 0x01D42B 07:D41B: C8        INY
C - - - - - 0x01D42C 07:D41C: C6 00     DEC ram_0000_t6F_loop_counter
C - - - - - 0x01D42E 07:D41E: D0 E5     BNE bra_D405_loop
C - - - - - 0x01D430 07:D420: A5 1A     LDA ram_001A_t08_lo
C - - - - - 0x01D432 07:D422: 30 DE     BMI bra_D402_loop
bra_D424_RTS:
C - - - - - 0x01D434 07:D424: 60        RTS



loc_D425:
C D 2 - - - 0x01D435 07:D425: 20 A7 D4  JSR sub_D4A7_clear_001B_001C_001D
loc_D428_loop:
C D 2 - - - 0x01D438 07:D428: 20 59 D4  JSR sub_D459
bra_D42B_loop:
C - - - - - 0x01D43B 07:D42B: 20 8A D4  JSR sub_D48A
C - - - - - 0x01D43E 07:D42E: F0 03     BEQ bra_D433
C - - - - - 0x01D440 07:D430: C8        INY
C - - - - - 0x01D441 07:D431: D0 19     BNE bra_D44C    ; jmp
bra_D433:
C - - - - - 0x01D443 07:D433: A5 19     LDA ram_0019_t02_spr_A
C - - - - - 0x01D445 07:D435: 45 1C     EOR ram_001C_t10_spr_A_flip
C - - - - - 0x01D447 07:D437: 9D 02 02  STA ram_spr_A,X
C - - - - - 0x01D44A 07:D43A: B1 02     LDA (ram_0002_t04_data),Y
C - - - - - 0x01D44C 07:D43C: C5 1D     CMP ram_001D_t10
C - - - - - 0x01D44E 07:D43E: 90 07     BCC bra_D447
C - - - - - 0x01D450 07:D440: C9 C0     CMP #$C0
C - - - - - 0x01D452 07:D442: B0 03     BCS bra_D447
C - - - - - 0x01D454 07:D444: 38        SEC
C - - - - - 0x01D455 07:D445: E5 1E     SBC ram_001E_t13
bra_D447:
C - - - - - 0x01D457 07:D447: 20 B0 D4  JSR sub_D4B0
C - - - - - 0x01D45A 07:D44A: F0 0C     BEQ bra_D458_RTS
bra_D44C:
C - - - - - 0x01D45C 07:D44C: C8        INY
C - - - - - 0x01D45D 07:D44D: C6 00     DEC ram_0000_t6F_loop_counter
C - - - - - 0x01D45F 07:D44F: D0 DA     BNE bra_D42B_loop
C - - - - - 0x01D461 07:D451: A5 1A     LDA ram_001A_t08_lo
; BZK optimize, BMI to D428
C - - - - - 0x01D463 07:D453: 10 03     BPL bra_D458_RTS
C - - - - - 0x01D465 07:D455: 4C 28 D4  JMP loc_D428_loop
bra_D458_RTS:
C - - - - - 0x01D468 07:D458: 60        RTS



sub_D459:
; out
    ; ram_0019_t02_spr_A
C - - - - - 0x01D469 07:D459: A9 FF     LDA #$FF
C - - - - - 0x01D46B 07:D45B: D1 02     CMP (ram_0002_t04_data),Y
C - - - - - 0x01D46D 07:D45D: D0 18     BNE bra_D477
; A = FF
; bzk optimize, in bank 00 and 02, instead of FF pointers, point directly
; to where needed from the start. remove FF comparsion and
; this part of code up to 0x01D485.
; although this code still could be necessary
; because of writes to additional addresses
C - - - - - 0x01D46F 07:D45F: 85 1B     STA ram_001B_t02_hi
C - - - - - 0x01D471 07:D461: A9 08     LDA #$08
C - - - - - 0x01D473 07:D463: 85 1F     STA ram_001F_t14
C - - - - - 0x01D475 07:D465: A9 40     LDA #$40
C - - - - - 0x01D477 07:D467: 85 1C     STA ram_001C_t10_spr_A_flip
C - - - - - 0x01D479 07:D469: C8        INY
C - - - - - 0x01D47A 07:D46A: B1 02     LDA (ram_0002_t04_data),Y
C - - - - - 0x01D47C 07:D46C: 48        PHA
C - - - - - 0x01D47D 07:D46D: C8        INY
C - - - - - 0x01D47E 07:D46E: B1 02     LDA (ram_0002_t04_data),Y
C - - - - - 0x01D480 07:D470: 85 03     STA ram_0002_t04_data + $01
C - - - - - 0x01D482 07:D472: 68        PLA
C - - - - - 0x01D483 07:D473: 85 02     STA ram_0002_t04_data
C - - - - - 0x01D485 07:D475: A0 00     LDY #$00
bra_D477:
C - - - - - 0x01D487 07:D477: B1 02     LDA (ram_0002_t04_data),Y
C - - - - - 0x01D489 07:D479: 85 1A     STA ram_001A_t08_lo
C - - - - - 0x01D48B 07:D47B: 29 7F     AND #$7F
C - - - - - 0x01D48D 07:D47D: 85 00     STA ram_0000_t6F_loop_counter
C - - - - - 0x01D48F 07:D47F: C8        INY
C - - - - - 0x01D490 07:D480: B1 02     LDA (ram_0002_t04_data),Y
C - - - - - 0x01D492 07:D482: 25 18     AND ram_0018_t16
C - - - - - 0x01D494 07:D484: 05 12     ORA ram_0012_t04_spr_A
C - - - - - 0x01D496 07:D486: 85 19     STA ram_0019_t02_spr_A
C - - - - - 0x01D498 07:D488: C8        INY
C - - - - - 0x01D499 07:D489: 60        RTS



sub_D48A:
; out
    ; Z
        ; 0 = 
        ; 1 = 
C - - - - - 0x01D49A 07:D48A: A9 00     LDA #$00
C - - - - - 0x01D49C 07:D48C: 85 0E     STA ram_000E_t05
C - - - - - 0x01D49E 07:D48E: B1 02     LDA (ram_0002_t04_data),Y
C - - - - - 0x01D4A0 07:D490: 45 1B     EOR ram_001B_t02_hi
C - - - - - 0x01D4A2 07:D492: 38        SEC
C - - - - - 0x01D4A3 07:D493: E5 1F     SBC ram_001F_t14
C - - - - - 0x01D4A5 07:D495: 10 02     BPL bra_D499
C - - - - - 0x01D4A7 07:D497: C6 0E     DEC ram_000E_t05    ; -> FF
bra_D499:
C - - - - - 0x01D4A9 07:D499: 18        CLC
C - - - - - 0x01D4AA 07:D49A: 65 11     ADC ram_0011_t02_pos_X_lo
C - - - - - 0x01D4AC 07:D49C: 9D 03 02  STA ram_spr_X,X
C - - - - - 0x01D4AF 07:D49F: A5 13     LDA ram_0013_t04_pos_X_hi
C - - - - - 0x01D4B1 07:D4A1: 65 0E     ADC ram_000E_t05    ; 00/FF
C - - - - - 0x01D4B3 07:D4A3: C8        INY
C - - - - - 0x01D4B4 07:D4A4: 29 01     AND #$01
C - - - - - 0x01D4B6 07:D4A6: 60        RTS



sub_D4A7_clear_001B_001C_001D:
C - - - - - 0x01D4B7 07:D4A7: A0 00     LDY #$00
C - - - - - 0x01D4B9 07:D4A9: 84 1B     STY ram_001B_t02_hi
C - - - - - 0x01D4BB 07:D4AB: 84 1C     STY ram_001C_t10_spr_A_flip
C - - - - - 0x01D4BD 07:D4AD: 84 1F     STY ram_001F_t14
C - - - - - 0x01D4BF 07:D4AF: 60        RTS



sub_D4B0:
C - - - - - 0x01D4C0 07:D4B0: 9D 01 02  STA ram_spr_T,X
C - - - - - 0x01D4C3 07:D4B3: C8        INY
C - - - - - 0x01D4C4 07:D4B4: B1 02     LDA (ram_0002_t04_data),Y
; bzk optimize, A is always 00, see 0x01D583
C - - - - - 0x01D4C6 07:D4B6: 18        CLC
C - - - - - 0x01D4C7 07:D4B7: 65 10     ADC ram_0010_t08_spr_Y
C - - - - - 0x01D4C9 07:D4B9: 9D 00 02  STA ram_spr_Y,X
C - - - - - 0x01D4CC 07:D4BC: 8A        TXA
C - - - - - 0x01D4CD 07:D4BD: 18        CLC
C - - - - - 0x01D4CE 07:D4BE: 69 C4     ADC #$C4
C - - - - - 0x01D4D0 07:D4C0: AA        TAX
C - - - - - 0x01D4D1 07:D4C1: C6 01     DEC ram_0001_t37_sprites_counter
C - - - - - 0x01D4D3 07:D4C3: 60        RTS


; ??? 4 таблицы
tbl_D4C4:
- D 2 - - - 0x01D4D4 07:D4C4: 00        .byte $00   ; 
- D 2 - - - 0x01D4D5 07:D4C5: 00        .byte $00   ; 
- D 2 - - - 0x01D4D6 07:D4C6: 00        .byte $00   ; 
- D 2 - - - 0x01D4D7 07:D4C7: 00        .byte $00   ; 
- D 2 - - - 0x01D4D8 07:D4C8: 00        .byte $00   ; 
- D 2 - - - 0x01D4D9 07:D4C9: 00        .byte $00   ; 
- D 2 - - - 0x01D4DA 07:D4CA: 00        .byte $00   ; 
- D 2 - - - 0x01D4DB 07:D4CB: 00        .byte $00   ; 
- D 2 - - - 0x01D4DC 07:D4CC: 00        .byte $00   ; 
- - - - - - 0x01D4DD 07:D4CD: 00        .byte $00   ; 
- - - - - - 0x01D4DE 07:D4CE: 00        .byte $00   ; 
- - - - - - 0x01D4DF 07:D4CF: 00        .byte $00   ; 
- - - - - - 0x01D4E0 07:D4D0: 00        .byte $00   ; 
- - - - - - 0x01D4E1 07:D4D1: 28        .byte $28   ; 
- - - - - - 0x01D4E2 07:D4D2: 00        .byte $00   ; 
- - - - - - 0x01D4E3 07:D4D3: 28        .byte $28   ; 
- D 2 - - - 0x01D4E4 07:D4D4: 00        .byte $00   ; 
- D 2 - - - 0x01D4E5 07:D4D5: 00        .byte $00   ; 
- - - - - - 0x01D4E6 07:D4D6: 28        .byte $28   ; 
- - - - - - 0x01D4E7 07:D4D7: 00        .byte $00   ; 
- - - - - - 0x01D4E8 07:D4D8: 00        .byte $00   ; 
- - - - - - 0x01D4E9 07:D4D9: 00        .byte $00   ; 
- - - - - - 0x01D4EA 07:D4DA: 28        .byte $28   ; 
- - - - - - 0x01D4EB 07:D4DB: 00        .byte $00   ; 
- D 2 - - - 0x01D4EC 07:D4DC: 00        .byte $00   ; 
- - - - - - 0x01D4ED 07:D4DD: 00        .byte $00   ; 
- - - - - - 0x01D4EE 07:D4DE: 28        .byte $28   ; 
- - - - - - 0x01D4EF 07:D4DF: 00        .byte $00   ; 
- - - - - - 0x01D4F0 07:D4E0: 00        .byte $00   ; 
- - - - - - 0x01D4F1 07:D4E1: 28        .byte $28   ; 



tbl_D4E2:
- D 2 - - - 0x01D4F2 07:D4E2: 00        .byte $00   ; 
- D 2 - - - 0x01D4F3 07:D4E3: 00        .byte $00   ; 
- D 2 - - - 0x01D4F4 07:D4E4: 00        .byte $00   ; 
- D 2 - - - 0x01D4F5 07:D4E5: 00        .byte $00   ; 
- D 2 - - - 0x01D4F6 07:D4E6: 00        .byte $00   ; 
- D 2 - - - 0x01D4F7 07:D4E7: 00        .byte $00   ; 
- D 2 - - - 0x01D4F8 07:D4E8: 00        .byte $00   ; 
- D 2 - - - 0x01D4F9 07:D4E9: 00        .byte $00   ; 
- D 2 - - - 0x01D4FA 07:D4EA: 00        .byte $00   ; 
- - - - - - 0x01D4FB 07:D4EB: 00        .byte $00   ; 
- - - - - - 0x01D4FC 07:D4EC: 00        .byte $00   ; 
- - - - - - 0x01D4FD 07:D4ED: 00        .byte $00   ; 
- - - - - - 0x01D4FE 07:D4EE: 00        .byte $00   ; 
- - - - - - 0x01D4FF 07:D4EF: 5A        .byte $5A   ; 
- - - - - - 0x01D500 07:D4F0: 00        .byte $00   ; 
- - - - - - 0x01D501 07:D4F1: 58        .byte $58   ; 
- D 2 - - - 0x01D502 07:D4F2: 00        .byte $00   ; 
- D 2 - - - 0x01D503 07:D4F3: 00        .byte $00   ; 
- - - - - - 0x01D504 07:D4F4: 5A        .byte $5A   ; 
- - - - - - 0x01D505 07:D4F5: 00        .byte $00   ; 
- - - - - - 0x01D506 07:D4F6: 00        .byte $00   ; 
- - - - - - 0x01D507 07:D4F7: 00        .byte $00   ; 
- - - - - - 0x01D508 07:D4F8: 5A        .byte $5A   ; 
- - - - - - 0x01D509 07:D4F9: 00        .byte $00   ; 
- D 2 - - - 0x01D50A 07:D4FA: 00        .byte $00   ; 
- - - - - - 0x01D50B 07:D4FB: 00        .byte $00   ; 
- - - - - - 0x01D50C 07:D4FC: 58        .byte $58   ; 
- - - - - - 0x01D50D 07:D4FD: 00        .byte $00   ; 
- - - - - - 0x01D50E 07:D4FE: 00        .byte $00   ; 
- - - - - - 0x01D50F 07:D4FF: 5A        .byte $5A   ; 



tbl_D500:
- D 2 - - - 0x01D510 07:D500: 00        .byte $00   ; 
- - - - - - 0x01D511 07:D501: 00        .byte $00   ; 
- D 2 - - - 0x01D512 07:D502: 00        .byte $00   ; 
- D 2 - - - 0x01D513 07:D503: 00        .byte $00   ; 
- - - - - - 0x01D514 07:D504: 00        .byte $00   ; 
- - - - - - 0x01D515 07:D505: 00        .byte $00   ; 
- - - - - - 0x01D516 07:D506: 00        .byte $00   ; 
- - - - - - 0x01D517 07:D507: 00        .byte $00   ; 
- D 2 - - - 0x01D518 07:D508: 00        .byte $00   ; 
- D 2 - - - 0x01D519 07:D509: 00        .byte $00   ; 
- - - - - - 0x01D51A 07:D50A: 00        .byte $00   ; 
- - - - - - 0x01D51B 07:D50B: 00        .byte $00   ; 
- - - - - - 0x01D51C 07:D50C: 00        .byte $00   ; 
- - - - - - 0x01D51D 07:D50D: 20        .byte $20   ; 
- - - - - - 0x01D51E 07:D50E: 00        .byte $00   ; 
- - - - - - 0x01D51F 07:D50F: 1E        .byte $1E   ; 
- D 2 - - - 0x01D520 07:D510: 00        .byte $00   ; 
- - - - - - 0x01D521 07:D511: 00        .byte $00   ; 
- - - - - - 0x01D522 07:D512: 20        .byte $20   ; 
- - - - - - 0x01D523 07:D513: 00        .byte $00   ; 
- - - - - - 0x01D524 07:D514: 00        .byte $00   ; 
- - - - - - 0x01D525 07:D515: 00        .byte $00   ; 
- - - - - - 0x01D526 07:D516: 00        .byte $00   ; 
- - - - - - 0x01D527 07:D517: 1E        .byte $1E   ; 
- D 2 - - - 0x01D528 07:D518: 00        .byte $00   ; 
- - - - - - 0x01D529 07:D519: 00        .byte $00   ; 
- - - - - - 0x01D52A 07:D51A: 1E        .byte $1E   ; 
- - - - - - 0x01D52B 07:D51B: 00        .byte $00   ; 
- - - - - - 0x01D52C 07:D51C: 1E        .byte $1E   ; 



tbl_D51D:
- D 2 - - - 0x01D52D 07:D51D: 00        .byte $00   ; 
- - - - - - 0x01D52E 07:D51E: 00        .byte $00   ; 
- D 2 - - - 0x01D52F 07:D51F: 00        .byte $00   ; 
- D 2 - - - 0x01D530 07:D520: 00        .byte $00   ; 
- - - - - - 0x01D531 07:D521: 00        .byte $00   ; 
- - - - - - 0x01D532 07:D522: 00        .byte $00   ; 
- - - - - - 0x01D533 07:D523: 00        .byte $00   ; 
- - - - - - 0x01D534 07:D524: 00        .byte $00   ; 
- D 2 - - - 0x01D535 07:D525: 00        .byte $00   ; 
- D 2 - - - 0x01D536 07:D526: 00        .byte $00   ; 
- - - - - - 0x01D537 07:D527: 00        .byte $00   ; 
- - - - - - 0x01D538 07:D528: 00        .byte $00   ; 
- - - - - - 0x01D539 07:D529: 00        .byte $00   ; 
- - - - - - 0x01D53A 07:D52A: 62        .byte $62   ; 
- - - - - - 0x01D53B 07:D52B: 00        .byte $00   ; 
- - - - - - 0x01D53C 07:D52C: 58        .byte $58   ; 
- D 2 - - - 0x01D53D 07:D52D: 00        .byte $00   ; 
- - - - - - 0x01D53E 07:D52E: 00        .byte $00   ; 
- - - - - - 0x01D53F 07:D52F: 62        .byte $62   ; 
- - - - - - 0x01D540 07:D530: 00        .byte $00   ; 
- - - - - - 0x01D541 07:D531: 00        .byte $00   ; 
- - - - - - 0x01D542 07:D532: 00        .byte $00   ; 
- - - - - - 0x01D543 07:D533: 00        .byte $00   ; 
- - - - - - 0x01D544 07:D534: 58        .byte $58   ; 
- D 2 - - - 0x01D545 07:D535: 00        .byte $00   ; 
- - - - - - 0x01D546 07:D536: 00        .byte $00   ; 
- - - - - - 0x01D547 07:D537: 58        .byte $58   ; 
- - - - - - 0x01D548 07:D538: 00        .byte $00   ; 
- - - - - - 0x01D549 07:D539: 58        .byte $58   ; 
- - - - - - 0x01D54A 07:D53A: 00        .byte $00   ; 


; ???
tbl_D53B:
- D 2 - - - 0x01D54B 07:D53B: 00        .byte $00   ; 
tbl_D53C:
- D 2 - - - 0x01D54C 07:D53C: 00        .byte $00   ; 
- D 2 - - - 0x01D54D 07:D53D: 01        .byte $01   ; 
- D 2 - - - 0x01D54E 07:D53E: 00        .byte $00   ; 
- D 2 - - - 0x01D54F 07:D53F: FF        .byte $FF   ; 
- D 2 - - - 0x01D550 07:D540: 00        .byte $00   ; 
- - - - - - 0x01D551 07:D541: 00        .byte $00   ; 
- - - - - - 0x01D552 07:D542: 00        .byte $00   ; 
- D 2 - - - 0x01D553 07:D543: 00        .byte $00   ; 
- D 2 - - - 0x01D554 07:D544: 01        .byte $01   ; 
- - - - - - 0x01D555 07:D545: 01        .byte $01   ; 
- - - - - - 0x01D556 07:D546: 01        .byte $01   ; 
- - - - - - 0x01D557 07:D547: FF        .byte $FF   ; 
- - - - - - 0x01D558 07:D548: 01        .byte $01   ; 
- - - - - - 0x01D559 07:D549: 00        .byte $00   ; 
- - - - - - 0x01D55A 07:D54A: 01        .byte $01   ; 
- D 2 - - - 0x01D55B 07:D54B: 00        .byte $00   ; 
- D 2 - - - 0x01D55C 07:D54C: FF        .byte $FF   ; 
- - - - - - 0x01D55D 07:D54D: 01        .byte $01   ; 
- - - - - - 0x01D55E 07:D54E: FF        .byte $FF   ; 
- - - - - - 0x01D55F 07:D54F: FF        .byte $FF   ; 
- - - - - - 0x01D560 07:D550: FF        .byte $FF   ; 
- - - - - - 0x01D561 07:D551: 00        .byte $00   ; 
- - - - - - 0x01D562 07:D552: FF        .byte $FF   ; 
- - - - - - 0x01D563 07:D553: 00        .byte $00   ; 
- - - - - - 0x01D564 07:D554: 00        .byte $00   ; 
- - - - - - 0x01D565 07:D555: 01        .byte $01   ; 
- - - - - - 0x01D566 07:D556: 00        .byte $00   ; 
- - - - - - 0x01D567 07:D557: FF        .byte $FF   ; 
- - - - - - 0x01D568 07:D558: 00        .byte $00   ; 
- - - - - - 0x01D569 07:D559: 00        .byte $00   ; 
- - - - - - 0x01D56A 07:D55A: 00        .byte $00   ; 



tbl_D55B:
- D 2 - - - 0x01D56B 07:D55B: 07        .byte $07   ; 00 
- D 2 - - - 0x01D56C 07:D55C: 0E        .byte $0E   ; 01 
- D 2 - - - 0x01D56D 07:D55D: 15        .byte $15   ; 02 
- D 2 - - - 0x01D56E 07:D55E: 04        .byte $04   ; 03 
- D 2 - - - 0x01D56F 07:D55F: 0B        .byte $0B   ; 04 
- D 2 - - - 0x01D570 07:D560: 12        .byte $12   ; 05 
- D 2 - - - 0x01D571 07:D561: 01        .byte $01   ; 06 
- D 2 - - - 0x01D572 07:D562: 08        .byte $08   ; 07 
- D 2 - - - 0x01D573 07:D563: 0F        .byte $0F   ; 08 
- D 2 - - - 0x01D574 07:D564: 16        .byte $16   ; 09 
- D 2 - - - 0x01D575 07:D565: 05        .byte $05   ; 0A 
- D 2 - - - 0x01D576 07:D566: 0C        .byte $0C   ; 0B 
- D 2 - - - 0x01D577 07:D567: 13        .byte $13   ; 0C 
- D 2 - - - 0x01D578 07:D568: 02        .byte $02   ; 0D 
- D 2 - - - 0x01D579 07:D569: 09        .byte $09   ; 0E 
- D 2 - - - 0x01D57A 07:D56A: 10        .byte $10   ; 0F 



tbl_D56B:
- D 2 - - - 0x01D57B 07:D56B: 28        .byte $28   ; 00 
- D 2 - - - 0x01D57C 07:D56C: 50        .byte $50   ; 01 
- D 2 - - - 0x01D57D 07:D56D: 78        .byte $78   ; 02 
- D 2 - - - 0x01D57E 07:D56E: A0        .byte $A0   ; 03 



tbl_D571:
- D 2 - I - 0x01D581 07:D571: 04        .byte $04   ; 
- D 2 - I - 0x01D582 07:D572: 00        .byte $00   ; 
; bzk optimize, 3rd byte is always 00
;                                              +--------------- spr_X
;                                              |    +---------- 
;                                              |    |    +----- spr_Y
;                                              |    |    |
- D 2 - I - 0x01D583 07:D573: F0        .byte $F0, $D7, $00   ; 
- D 2 - I - 0x01D586 07:D576: F8        .byte $F8, $DF, $00   ; 
- D 2 - I - 0x01D589 07:D579: 00        .byte $00, $DB, $00   ; 
- D 2 - I - 0x01D58C 07:D57C: 08        .byte $08, $DD, $00   ; 



tbl_D57F_for_2000:
- D 2 - - - 0x01D58F 07:D57F: 30        .byte $30   ; 01 
- D 2 - - - 0x01D590 07:D580: 34        .byte $34   ; 02 
- D 2 - - - 0x01D591 07:D581: 30        .byte $30   ; 03 
- D 2 - - - 0x01D592 07:D582: 30        .byte $30   ; 04 
- - - - - - 0x01D593 07:D583: 34        .byte $34   ; 05 
- D 2 - - - 0x01D594 07:D584: 30        .byte $30   ; 06 



sub_0x01D595:
loc_0x01D595:
C D 2 - - - 0x01D595 07:D585: A5 2B     LDA ram_002B_flags
C - - - - - 0x01D597 07:D587: 29 03     AND #$01 + $02
C - - - - - 0x01D599 07:D589: F0 09     BEQ bra_D594
C - - - - - 0x01D59B 07:D58B: A5 26     LDA ram_buffer_index
C - - - - - 0x01D59D 07:D58D: F0 02     BEQ bra_D591
C - - - - - 0x01D59F 07:D58F: E6 3E     INC ram_003E_brightness_counter
bra_D591:
C - - - - - 0x01D5A1 07:D591: 4C 1A D6  JMP loc_D61A
bra_D594:
C - - - - - 0x01D5A4 07:D594: BA        TSX
C - - - - - 0x01D5A5 07:D595: 8E A0 03  STX ram_save_stack_pointer
C - - - - - 0x01D5A8 07:D598: A2 FF     LDX #$FF
C - - - - - 0x01D5AA 07:D59A: 9A        TXS
loc_D59B_loop:
bra_D59B_loop:
C D 2 - - - 0x01D5AB 07:D59B: 68        PLA
C - - - - - 0x01D5AC 07:D59C: F0 1D     BEQ bra_D5BB_00
C - - - - - 0x01D5AE 07:D59E: AA        TAX
C - - - - - 0x01D5AF 07:D59F: BD 7E D5  LDA tbl_D57F_for_2000 - $01,X
C - - - - - 0x01D5B2 07:D5A2: 8D 00 20  STA $2000
C - - - - - 0x01D5B5 07:D5A5: 68        PLA
C - - - - - 0x01D5B6 07:D5A6: 85 16     STA ram_0016_t05_ppu_addr_lo
C - - - - - 0x01D5B8 07:D5A8: 68        PLA
C - - - - - 0x01D5B9 07:D5A9: 85 17     STA ram_0017_t01_ppu_addr_hi
C - - - - - 0x01D5BB 07:D5AB: 8D 06 20  STA $2006
C - - - - - 0x01D5BE 07:D5AE: A5 16     LDA ram_0016_t05_ppu_addr_lo
C - - - - - 0x01D5C0 07:D5B0: 8D 06 20  STA $2006
C - - - - - 0x01D5C3 07:D5B3: E0 03     CPX #$03
C - - - - - 0x01D5C5 07:D5B5: 90 15     BCC bra_D5CC
C - - - - - 0x01D5C7 07:D5B7: F0 24     BEQ bra_D5DD
C - - - - - 0x01D5C9 07:D5B9: B0 2D     BCS bra_D5E8    ; jmp
bra_D5BB_00:
; A = 00
C - - - - - 0x01D5CD 07:D5BD: 8D 00 01  STA ram_ppu_buffer_1
C - - - - - 0x01D5D0 07:D5C0: 85 26     STA ram_buffer_index
C - - - - - 0x01D5D2 07:D5C2: AE A0 03  LDX ram_save_stack_pointer
C - - - - - 0x01D5D5 07:D5C5: 9A        TXS
C - - - - - 0x01D5D6 07:D5C6: 60        RTS



bra_D5C9_loop:
C - - - - - 0x01D5D9 07:D5C9: 8D 07 20  STA $2007
bra_D5CC:
C - - - - - 0x01D5DC 07:D5CC: 68        PLA
C - - - - - 0x01D5DD 07:D5CD: C9 FF     CMP #$FF
C - - - - - 0x01D5DF 07:D5CF: D0 F8     BNE bra_D5C9_loop
C - - - - - 0x01D5E1 07:D5D1: A5 17     LDA ram_0017_t01_ppu_addr_hi
C - - - - - 0x01D5E3 07:D5D3: C9 3F     CMP #$3F
C - - - - - 0x01D5E5 07:D5D5: D0 03     BNE bra_D5DA
- - - - - - 0x01D5E7 07:D5D7: 20 68 D6  JSR sub_D668
bra_D5DA:
C - - - - - 0x01D5EA 07:D5DA: 4C 9B D5  JMP loc_D59B_loop
bra_D5DD:
C - - - - - 0x01D5ED 07:D5DD: 68        PLA
C - - - - - 0x01D5EE 07:D5DE: AA        TAX
C - - - - - 0x01D5EF 07:D5DF: 68        PLA
bra_D5E0_loop:
C - - - - - 0x01D5F0 07:D5E0: 8D 07 20  STA $2007
C - - - - - 0x01D5F3 07:D5E3: CA        DEX
C - - - - - 0x01D5F4 07:D5E4: D0 FA     BNE bra_D5E0_loop
C - - - - - 0x01D5F6 07:D5E6: F0 B3     BEQ bra_D59B_loop    ; jmp
bra_D5E8:
C - - - - - 0x01D5F8 07:D5E8: E0 06     CPX #$06
C - - - - - 0x01D5FA 07:D5EA: F0 0C     BEQ bra_D5F8
C - - - - - 0x01D5FC 07:D5EC: 68        PLA
C - - - - - 0x01D5FD 07:D5ED: AA        TAX
bra_D5EE_loop:
C - - - - - 0x01D5FE 07:D5EE: 68        PLA
C - - - - - 0x01D5FF 07:D5EF: 8D 07 20  STA $2007
C - - - - - 0x01D602 07:D5F2: CA        DEX
C - - - - - 0x01D603 07:D5F3: D0 F9     BNE bra_D5EE_loop
C - - - - - 0x01D605 07:D5F5: 4C 9B D5  JMP loc_D59B_loop
bra_D5F8:
C - - - - - 0x01D608 07:D5F8: 68        PLA
C - - - - - 0x01D609 07:D5F9: AA        TAX
bra_D5FA_loop:
C - - - - - 0x01D60A 07:D5FA: AD 02 20  LDA $2002
C - - - - - 0x01D60D 07:D5FD: A5 17     LDA ram_0017_t01_ppu_addr_hi
C - - - - - 0x01D60F 07:D5FF: 8D 06 20  STA $2006
C - - - - - 0x01D612 07:D602: A5 16     LDA ram_0016_t05_ppu_addr_lo
C - - - - - 0x01D614 07:D604: 8D 06 20  STA $2006
C - - - - - 0x01D617 07:D607: 68        PLA
C - - - - - 0x01D618 07:D608: 8D 07 20  STA $2007
C - - - - - 0x01D61B 07:D60B: A5 16     LDA ram_0016_t05_ppu_addr_lo
C - - - - - 0x01D61D 07:D60D: 18        CLC
C - - - - - 0x01D61E 07:D60E: 69 08     ADC #$08
C - - - - - 0x01D620 07:D610: 09 C0     ORA #$C0
C - - - - - 0x01D622 07:D612: 85 16     STA ram_0016_t05_ppu_addr_lo
C - - - - - 0x01D624 07:D614: CA        DEX
C - - - - - 0x01D625 07:D615: D0 E3     BNE bra_D5FA_loop
C - - - - - 0x01D627 07:D617: 4C 9B D5  JMP loc_D59B_loop



loc_D61A:
C D 2 - - - 0x01D62A 07:D61A: A5 FF     LDA ram_for_2000
C - - - - - 0x01D62C 07:D61C: 29 18     AND #$18
C - - - - - 0x01D62E 07:D61E: 8D 00 20  STA $2000
C - - - - - 0x01D631 07:D621: A5 2B     LDA ram_002B_flags
C - - - - - 0x01D633 07:D623: 29 01     AND #$01
C - - - - - 0x01D635 07:D625: F0 31     BEQ bra_D658
C - - - - - 0x01D637 07:D627: A5 2B     LDA ram_002B_flags
C - - - - - 0x01D639 07:D629: 29 FE     AND #$01 ^ $FF
C - - - - - 0x01D63B 07:D62B: 85 2B     STA ram_002B_flags
C - - - - - 0x01D63D 07:D62D: A0 00     LDY #$00    ; 3F00
bra_D62F:
C - - - - - 0x01D63F 07:D62F: AD 02 20  LDA $2002
C - - - - - 0x01D642 07:D632: A9 3F     LDA #$3F
C - - - - - 0x01D644 07:D634: 8D 06 20  STA $2006
C - - - - - 0x01D647 07:D637: 8C 06 20  STY $2006
C - - - - - 0x01D64A 07:D63A: A2 10     LDX #$10
C - - - - - 0x01D64C 07:D63C: A5 2B     LDA ram_002B_flags
C - - - - - 0x01D64E 07:D63E: 29 80     AND #$80
C - - - - - 0x01D650 07:D640: F0 0C     BEQ bra_D64E
bra_D642_loop:
C - - - - - 0x01D652 07:D642: B9 D0 03  LDA ram_brightnes_buffer,Y
C - - - - - 0x01D655 07:D645: 8D 07 20  STA $2007
C - - - - - 0x01D658 07:D648: C8        INY
C - - - - - 0x01D659 07:D649: CA        DEX
C - - - - - 0x01D65A 07:D64A: D0 F6     BNE bra_D642_loop
C - - - - - 0x01D65C 07:D64C: F0 0A     BEQ bra_D658    ; jmp
bra_D64E:
bra_D64E_loop:
C - - - - - 0x01D65E 07:D64E: B9 B0 03  LDA ram_palette_buffer,Y
C - - - - - 0x01D661 07:D651: 8D 07 20  STA $2007
C - - - - - 0x01D664 07:D654: C8        INY
C - - - - - 0x01D665 07:D655: CA        DEX
C - - - - - 0x01D666 07:D656: D0 F6     BNE bra_D64E_loop
bra_D658:
C - - - - - 0x01D668 07:D658: A5 2B     LDA ram_002B_flags
C - - - - - 0x01D66A 07:D65A: 29 02     AND #$02
C - - - - - 0x01D66C 07:D65C: F0 0A     BEQ bra_D668
C - - - - - 0x01D66E 07:D65E: A5 2B     LDA ram_002B_flags
C - - - - - 0x01D670 07:D660: 29 7D     AND #($80 + $02) ^ $FF
C - - - - - 0x01D672 07:D662: 85 2B     STA ram_002B_flags
C - - - - - 0x01D674 07:D664: A0 10     LDY #$10    ; 3F10
C - - - - - 0x01D676 07:D666: D0 C7     BNE bra_D62F    ; jmp
bra_D668:
sub_D668:
C - - - - - 0x01D678 07:D668: A9 3F     LDA #> $3F00
C - - - - - 0x01D67A 07:D66A: 8D 06 20  STA $2006
C - - - - - 0x01D67D 07:D66D: A9 00     LDA #< $3F00
C - - - - - 0x01D67F 07:D66F: 8D 06 20  STA $2006
; A = 00
C - - - - - 0x01D682 07:D672: 8D 06 20  STA $2006
C - - - - - 0x01D685 07:D675: 8D 06 20  STA $2006
C - - - - - 0x01D688 07:D678: 60        RTS



sub_0x01D689:
C - - - - - 0x01D689 07:D679: AD 5C 03  LDA ram_035C_flag
C - - - - - 0x01D68C 07:D67C: D0 3B     BNE bra_D6B9_RTS
sub_0x01D68E:
loc_0x01D68E:
C D 2 - - - 0x01D68E 07:D67E: A6 39     LDX ram_buffer_index_2
C - - - - - 0x01D690 07:D680: A9 00     LDA #$00
C - - - - - 0x01D692 07:D682: 9D 60 01  STA ram_ppu_buffer_2,X
C - - - - - 0x01D695 07:D685: BA        TSX
C - - - - - 0x01D696 07:D686: 8E A0 03  STX ram_save_stack_pointer
C - - - - - 0x01D699 07:D689: A2 5F     LDX #$5F
C - - - - - 0x01D69B 07:D68B: 9A        TXS
loc_D68C_loop:
bra_D68C_loop:
C D 2 - - - 0x01D69C 07:D68C: 68        PLA
C - - - - - 0x01D69D 07:D68D: F0 1F     BEQ bra_D6AE
C - - - - - 0x01D69F 07:D68F: AA        TAX
C - - - - - 0x01D6A0 07:D690: BD 7E D5  LDA tbl_D57F_for_2000 - $01,X
C - - - - - 0x01D6A3 07:D693: 05 FF     ORA ram_for_2000
C - - - - - 0x01D6A5 07:D695: 09 80     ORA #$80
C - - - - - 0x01D6A7 07:D697: 8D 00 20  STA $2000
C - - - - - 0x01D6AA 07:D69A: 68        PLA
C - - - - - 0x01D6AB 07:D69B: 85 56     STA ram_0056_t01_ppu_addr_lo
C - - - - - 0x01D6AD 07:D69D: 68        PLA
C - - - - - 0x01D6AE 07:D69E: 8D 06 20  STA $2006
C - - - - - 0x01D6B1 07:D6A1: A5 56     LDA ram_0056_t01_ppu_addr_lo
C - - - - - 0x01D6B3 07:D6A3: 8D 06 20  STA $2006
C - - - - - 0x01D6B6 07:D6A6: E0 03     CPX #$03
C - - - - - 0x01D6B8 07:D6A8: F0 1D     BEQ bra_D6C7
C - - - - - 0x01D6BA 07:D6AA: 90 13     BCC bra_D6BF
C - - - - - 0x01D6BC 07:D6AC: B0 24     BCS bra_D6D2    ; jmp
bra_D6AE:
C - - - - - 0x01D6BE 07:D6AE: A9 00     LDA #$00
C - - - - - 0x01D6C0 07:D6B0: 8D 60 01  STA ram_ppu_buffer_2
C - - - - - 0x01D6C3 07:D6B3: 85 39     STA ram_buffer_index_2
C - - - - - 0x01D6C5 07:D6B5: AE A0 03  LDX ram_save_stack_pointer
C - - - - - 0x01D6C8 07:D6B8: 9A        TXS
bra_D6B9_RTS:
C - - - - - 0x01D6C9 07:D6B9: 60        RTS



bra_D6BC_loop:
C - - - - - 0x01D6CC 07:D6BC: 8D 07 20  STA $2007
bra_D6BF:
C - - - - - 0x01D6CF 07:D6BF: 68        PLA
C - - - - - 0x01D6D0 07:D6C0: C9 FF     CMP #$FF
C - - - - - 0x01D6D2 07:D6C2: D0 F8     BNE bra_D6BC_loop
C - - - - - 0x01D6D4 07:D6C4: 4C 8C D6  JMP loc_D68C_loop
bra_D6C7:
C - - - - - 0x01D6D7 07:D6C7: 68        PLA
C - - - - - 0x01D6D8 07:D6C8: AA        TAX
C - - - - - 0x01D6D9 07:D6C9: 68        PLA
bra_D6CA_loop:
C - - - - - 0x01D6DA 07:D6CA: 8D 07 20  STA $2007
C - - - - - 0x01D6DD 07:D6CD: CA        DEX
C - - - - - 0x01D6DE 07:D6CE: D0 FA     BNE bra_D6CA_loop
C - - - - - 0x01D6E0 07:D6D0: F0 BA     BEQ bra_D68C_loop   ; jmp
bra_D6D2:
C - - - - - 0x01D6E2 07:D6D2: 68        PLA
C - - - - - 0x01D6E3 07:D6D3: AA        TAX
bra_D6D4_loop:
C - - - - - 0x01D6E4 07:D6D4: 68        PLA
C - - - - - 0x01D6E5 07:D6D5: 8D 07 20  STA $2007
C - - - - - 0x01D6E8 07:D6D8: CA        DEX
C - - - - - 0x01D6E9 07:D6D9: D0 F9     BNE bra_D6D4_loop
C - - - - - 0x01D6EB 07:D6DB: 4C 8C D6  JMP loc_D68C_loop



ofs_000_D6DE_03_gameplay:
; con_0020_gameplay
C - - J - - 0x01D6EE 07:D6DE: A9 04     LDA #$04
C - - - - - 0x01D6F0 07:D6E0: C5 44     CMP ram_script_lo
C - - - - - 0x01D6F2 07:D6E2: D0 18     BNE bra_D6FC
C - - - - - 0x01D6F4 07:D6E4: AD 40 03  LDA ram_0340_flag
C - - - - - 0x01D6F7 07:D6E7: 30 13     BMI bra_D6FC
C - - - - - 0x01D6F9 07:D6E9: A5 BB     LDA ram_00BB
C - - - - - 0x01D6FB 07:D6EB: D0 0F     BNE bra_D6FC
C - - - - - 0x01D6FD 07:D6ED: 20 18 DA  JSR sub_DA18
C - - - - - 0x01D700 07:D6F0: A5 45     LDA ram_pause_flag
C - - - - - 0x01D702 07:D6F2: F0 08     BEQ bra_D6FC
C - - - - - 0x01D704 07:D6F4: A9 01     LDA #con_prg_pair + $01
C - - - - - 0x01D706 07:D6F6: 20 4C F3  JSR sub_0x01F35C_prg_bankswitch
C - - - - - 0x01D709 07:D6F9: 4C F3 A2  JMP loc_0x016303
bra_D6FC:
C - - - - - 0x01D70C 07:D6FC: A5 44     LDA ram_script_lo
C - - - - - 0x01D70E 07:D6FE: 0A        ASL
C - - - - - 0x01D70F 07:D6FF: A8        TAY
C - - - - - 0x01D710 07:D700: B9 0D D7  LDA tbl_D70D,Y
C - - - - - 0x01D713 07:D703: 85 00     STA ram_0000_t1B_jmp
C - - - - - 0x01D715 07:D705: B9 0E D7  LDA tbl_D70D + $01,Y
sub_0x01D718_execute_indirect_jump_0000:
loc_0x01D718_execute_indirect_jump_0000:
C D 2 - - - 0x01D718 07:D708: 85 01     STA ram_0000_t1B_jmp + $01
C - - - - - 0x01D71A 07:D70A: 6C 00 00  JMP (ram_0000_t1B_jmp)



tbl_D70D:
- D 2 - - - 0x01D71D 07:D70D: 17 D7     .word ofs_001_D717_00
- D 2 - - - 0x01D71F 07:D70F: 57 D7     .word ofs_001_D757_01
- D 2 - - - 0x01D721 07:D711: F4 D8     .word ofs_001_D8F4_02
- D 2 - - - 0x01D723 07:D713: 51 D9     .word ofs_001_D951_03
- D 2 - - - 0x01D725 07:D715: 69 D9     .word ofs_001_D969_04_gameplay



ofs_001_D717_00:
C - - J - - 0x01D727 07:D717: A9 07     LDA #$07
C - - - - - 0x01D729 07:D719: 85 25     STA ram_disable_rendering_timer
C - - - - - 0x01D72E 07:D71E: A2 0E     LDX #con_D22A_player_select
C - - - - - 0x01D730 07:D720: 20 A8 D1  JSR sub_D1A8_unpack_static_screen
C - - - - - 0x01D733 07:D723: E6 44     INC ram_script_lo
C - - - - - 0x01D735 07:D725: A9 00     LDA #$00    ; con_chr_bank + $00
C - - - - - 0x01D737 07:D727: 85 75     STA ram_stage
C - - - - - 0x01D739 07:D729: 85 78     STA ram_chr_bank + $01
C - - - - - 0x01D73B 07:D72B: 85 22     STA ram_0021_t03 + $01
C - - - - - 0x01D73D 07:D72D: 85 21     STA ram_0021_t03
C - - - - - 0x01D73F 07:D72F: A2 01     LDX #$01
bra_D731_loop:
C - - - - - 0x01D741 07:D731: A9 91     LDA #$91
C - - - - - 0x01D743 07:D733: 9D 1A 06  STA ram_obj_animation_lo,X
C - - - - - 0x01D746 07:D736: A9 1C     LDA #$1C
C - - - - - 0x01D748 07:D738: 9D 34 06  STA ram_obj_animation_hi,X
C - - - - - 0x01D74B 07:D73B: A9 C0     LDA #$C0
C - - - - - 0x01D74D 07:D73D: 9D 4E 06  STA ram_obj_pos_X,X
C - - - - - 0x01D750 07:D740: CA        DEX
C - - - - - 0x01D751 07:D741: 10 EE     BPL bra_D731_loop
C - - - - - 0x01D753 07:D743: A9 05     LDA #$05
C - - - - - 0x01D755 07:D745: A0 01     LDY #$01
C - - - - - 0x01D757 07:D747: 20 B1 F4  JSR sub_0x01F4C1
C - - - - - 0x01D75A 07:D74A: A9 7C     LDA #con_chr_bank + $7C
C - - - - - 0x01D75C 07:D74C: 85 77     STA ram_chr_bank
C - - - - - 0x01D75E 07:D74E: A9 13     LDA #con_chr_bank + $13
C - - - - - 0x01D760 07:D750: 85 7C     STA ram_chr_bank + $05
C - - - - - 0x01D762 07:D752: A9 70     LDA #con_music_70
C - - - - - 0x01D764 07:D754: 4C CA FE  JMP loc_0x01FEDA_add_music_to_queue



ofs_001_D757_01:
C - - J - - 0x01D767 07:D757: A2 00     LDX #$00
bra_D759_loop:
C - - - - - 0x01D769 07:D759: B4 21     LDY ram_0021_t03,X
C - - - - - 0x01D76B 07:D75B: 84 08     STY ram_0008_t12_flag
bra_D75D:
C - - - - - 0x01D76D 07:D75D: B4 21     LDY ram_0021_t03,X
C - - - - - 0x01D76F 07:D75F: B5 40     LDA ram_btn_press_1,X
C - - - - - 0x01D771 07:D761: 29 0F     AND #con_btns_Dpad
C - - - - - 0x01D773 07:D763: F0 2D     BEQ bra_D792
C - - - - - 0x01D775 07:D765: 29 0A     AND #con_btns_UL
C - - - - - 0x01D777 07:D767: D0 04     BNE bra_D76D
C - - - - - 0x01D779 07:D769: 88        DEY
C - - - - - 0x01D77A 07:D76A: 4C 6E D7  JMP loc_D76E
bra_D76D:
C - - - - - 0x01D77D 07:D76D: C8        INY
loc_D76E:
C D 2 - - - 0x01D77E 07:D76E: 98        TYA
C - - - - - 0x01D77F 07:D76F: 10 04     BPL bra_D775
C - - - - - 0x01D781 07:D771: A9 04     LDA #$04
C - - - - - 0x01D783 07:D773: D0 06     BNE bra_D77B   ; jmp
bra_D775:
C - - - - - 0x01D785 07:D775: C9 05     CMP #$05
C - - - - - 0x01D787 07:D777: 90 02     BCC bra_D77B
C - - - - - 0x01D789 07:D779: A9 00     LDA #$00
bra_D77B:
C - - - - - 0x01D78B 07:D77B: 95 21     STA ram_0021_t03,X
C - - - - - 0x01D78D 07:D77D: 85 00     STA ram_0000_t7A
C - - - - - 0x01D78F 07:D77F: 8A        TXA
C - - - - - 0x01D790 07:D780: 49 01     EOR #$01
C - - - - - 0x01D792 07:D782: A8        TAY
C - - - - - 0x01D793 07:D783: A5 00     LDA ram_0000_t7A
C - - - - - 0x01D795 07:D785: D9 21 00  CMP ram_0021_t03,Y
C - - - - - 0x01D798 07:D788: F0 D3     BEQ bra_D75D
C - - - - - 0x01D79A 07:D78A: 20 0E D8  JSR sub_D80E
C - - - - - 0x01D79D 07:D78D: A9 61     LDA #con_music_61
C - - - - - 0x01D79F 07:D78F: 4C CA FE  JMP loc_0x01FEDA_add_music_to_queue
bra_D792:
C - - - - - 0x01D7A2 07:D792: BD 78 D8  LDA tbl_D878,X
C - - - - - 0x01D7A5 07:D795: 9D 1A 06  STA ram_obj_animation_lo,X
C - - - - - 0x01D7A8 07:D798: A9 1C     LDA #$1C
C - - - - - 0x01D7AA 07:D79A: 9D 34 06  STA ram_obj_animation_hi,X
C - - - - - 0x01D7AD 07:D79D: B5 21     LDA ram_0021_t03,X
C - - - - - 0x01D7AF 07:D79F: 0A        ASL
C - - - - - 0x01D7B0 07:D7A0: A8        TAY
C - - - - - 0x01D7B1 07:D7A1: B9 7A D8  LDA tbl_D87A_positions,Y
C - - - - - 0x01D7B4 07:D7A4: 9D 4E 06  STA ram_obj_pos_X,X
C - - - - - 0x01D7B7 07:D7A7: B9 7B D8  LDA tbl_D87A_positions + $01,Y
C - - - - - 0x01D7BA 07:D7AA: 9D 68 06  STA ram_obj_pos_Y,X
C - - - - - 0x01D7BD 07:D7AD: B5 21     LDA ram_0021_t03,X
C - - - - - 0x01D7BF 07:D7AF: D0 0F     BNE bra_D7C0
C - - - - - 0x01D7C1 07:D7B1: A9 08     LDA #$08
C - - - - - 0x01D7C3 07:D7B3: E0 00     CPX #$00
C - - - - - 0x01D7C5 07:D7B5: D0 02     BNE bra_D7B9
C - - - - - 0x01D7C7 07:D7B7: A9 F8     LDA #$F8
bra_D7B9:
C - - - - - 0x01D7C9 07:D7B9: 18        CLC
C - - - - - 0x01D7CA 07:D7BA: 7D 68 06  ADC ram_obj_pos_Y,X
C - - - - - 0x01D7CD 07:D7BD: 9D 68 06  STA ram_obj_pos_Y,X
bra_D7C0:
C - - - - - 0x01D7D0 07:D7C0: A5 42     LDA ram_btn_hold_1
C - - - - - 0x01D7D2 07:D7C2: 05 43     ORA ram_btn_hold_1 + $01
C - - - - - 0x01D7D4 07:D7C4: 29 10     AND #con_btn_Start
C - - - - - 0x01D7D6 07:D7C6: D0 09     BNE bra_D7D1
bra_D7C8:
C - - - - - 0x01D7D8 07:D7C8: 20 24 D8  JSR sub_D824
C - - - - - 0x01D7DB 07:D7CB: E8        INX
C - - - - - 0x01D7DC 07:D7CC: E0 02     CPX #$02
C - - - - - 0x01D7DE 07:D7CE: D0 89     BNE bra_D759_loop
C - - - - - 0x01D7E0 07:D7D0: 60        RTS
bra_D7D1:
C - - - - - 0x01D7E1 07:D7D1: A5 21     LDA ram_0021_t03
C - - - - - 0x01D7E3 07:D7D3: 05 22     ORA ram_0021_t03 + $01
C - - - - - 0x01D7E5 07:D7D5: F0 F1     BEQ bra_D7C8
C - - - - - 0x01D7E7 07:D7D7: A9 62     LDA #con_music_62
C - - - - - 0x01D7E9 07:D7D9: 20 CA FE  JSR sub_0x01FEDA_add_music_to_queue
C - - - - - 0x01D7EC 07:D7DC: E6 44     INC ram_script_lo
C - - - - - 0x01D7EE 07:D7DE: 20 39 DA  JSR sub_DA39
C - - - - - 0x01D7F1 07:D7E1: A4 21     LDY ram_0021_t03
C - - - - - 0x01D7F3 07:D7E3: F0 0D     BEQ bra_D7F2
C - - - - - 0x01D7F5 07:D7E5: 88        DEY
C - - - - - 0x01D7F6 07:D7E6: 84 B1     STY ram_current_player
C - - - - - 0x01D7F8 07:D7E8: A9 2E     LDA #$2E
C - - - - - 0x01D7FA 07:D7EA: 8D 82 07  STA ram_0782_unk
C - - - - - 0x01D7FD 07:D7ED: A9 10     LDA #$10
C - - - - - 0x01D7FF 07:D7EF: 99 7F 00  STA ram_player_stats,Y
bra_D7F2:
C - - - - - 0x01D802 07:D7F2: A4 22     LDY ram_0021_t03 + $01
C - - - - - 0x01D804 07:D7F4: F0 0D     BEQ bra_D803
C - - - - - 0x01D806 07:D7F6: 88        DEY
C - - - - - 0x01D807 07:D7F7: 84 B2     STY ram_current_player + $01
C - - - - - 0x01D809 07:D7F9: A9 2E     LDA #$2E
C - - - - - 0x01D80B 07:D7FB: 8D 83 07  STA ram_0782_unk + $01
C - - - - - 0x01D80E 07:D7FE: A9 20     LDA #$20
C - - - - - 0x01D810 07:D800: 99 7F 00  STA ram_player_stats,Y
bra_D803:
C - - - - - 0x01D813 07:D803: 20 62 D0  JSR sub_D062
C - - - - - 0x01D816 07:D806: A9 03     LDA #$03
C - - - - - 0x01D818 07:D808: 8D A1 05  STA ram_059E_se + $03
sub_F635_set_default_3_lives:
C D 3 - - - 0x01F645 07:F635: A9 03     LDA #$03
C - - - - - 0x01F647 07:F637: 85 B3     STA ram_lives
C - - - - - 0x01F649 07:F639: 85 B4     STA ram_lives + $01
C - - - - - 0x01F64B 07:F63B: 85 B5     STA ram_lives + $02
C - - - - - 0x01F64D 07:F63D: 85 B6     STA ram_lives + $03
C - - - - - 0x01F64F 07:F63F: 60        RTS



sub_D80E:
C - - - - - 0x01D81E 07:D80E: 8A        TXA
C - - - - - 0x01D81F 07:D80F: 48        PHA
C - - - - - 0x01D820 07:D810: A5 08     LDA ram_0008_t12_flag
C - - - - - 0x01D822 07:D812: F0 54     BEQ bra_D868
C - - - - - 0x01D824 07:D814: 20 6B D8  JSR sub_D86B_prepare_ppu_address
C - - - - - 0x01D827 07:D817: B9 8A D8  LDA tbl_D88C_nmt_attributes - $02,Y
C - - - - - 0x01D82A 07:D81A: 85 06     STA ram_0006_t01_data
C - - - - - 0x01D82C 07:D81C: B9 8B D8  LDA tbl_D88C_nmt_attributes - $01,Y
C - - - - - 0x01D82F 07:D81F: 85 07     STA ram_0006_t01_data + $01
C - - - - - 0x01D831 07:D821: 4C 37 D8  JMP loc_D837



sub_D824:
C - - - - - 0x01D834 07:D824: 8A        TXA
C - - - - - 0x01D835 07:D825: 48        PHA
C - - - - - 0x01D836 07:D826: B5 21     LDA ram_0021_t03,X
C - - - - - 0x01D838 07:D828: F0 3E     BEQ bra_D868
C - - - - - 0x01D83A 07:D82A: 20 6B D8  JSR sub_D86B_prepare_ppu_address
C - - - - - 0x01D83D 07:D82D: B9 C2 D8  LDA tbl_D8C4 - $02,Y
C - - - - - 0x01D840 07:D830: 85 06     STA ram_0006_t01_data
C - - - - - 0x01D842 07:D832: B9 C3 D8  LDA tbl_D8C4 - $01,Y
C - - - - - 0x01D845 07:D835: 85 07     STA ram_0006_t01_data + $01
loc_D837:
C D 2 - - - 0x01D847 07:D837: A9 03     LDA #$03
C - - - - - 0x01D849 07:D839: 85 04     STA ram_0004_t24_loop_counter
C - - - - - 0x01D84B 07:D83B: A0 00     LDY #$00
bra_D83D_loop:
C - - - - - 0x01D84D 07:D83D: A9 04     LDA #$04
C - - - - - 0x01D84F 07:D83F: 20 77 D2  JSR sub_D277_write_to_buffer___unk_X
C - - - - - 0x01D852 07:D842: A5 00     LDA ram_0000_t7B_ppu_addr_lo
C - - - - - 0x01D854 07:D844: 20 77 D2  JSR sub_D277_write_to_buffer___unk_X
C - - - - - 0x01D857 07:D847: A5 01     LDA ram_0001_t48_ppu_addr_hi
C - - - - - 0x01D859 07:D849: 20 77 D2  JSR sub_D277_write_to_buffer___unk_X
C - - - - - 0x01D85C 07:D84C: A9 04     LDA #$04
C - - - - - 0x01D85E 07:D84E: 20 77 D2  JSR sub_D277_write_to_buffer___unk_X
C - - - - - 0x01D861 07:D851: 85 05     STA ram_0005_t12_loop_counter
bra_D853_loop:
C - - - - - 0x01D863 07:D853: B1 06     LDA (ram_0006_t01_data),Y
C - - - - - 0x01D865 07:D855: 20 77 D2  JSR sub_D277_write_to_buffer___unk_X
C - - - - - 0x01D868 07:D858: C8        INY
C - - - - - 0x01D869 07:D859: C6 05     DEC ram_0005_t12_loop_counter
C - - - - - 0x01D86B 07:D85B: D0 F6     BNE bra_D853_loop
C - - - - - 0x01D86D 07:D85D: A5 00     LDA ram_0000_t7B_ppu_addr_lo
C - - - - - 0x01D86F 07:D85F: 18        CLC
C - - - - - 0x01D870 07:D860: 69 08     ADC #$08
C - - - - - 0x01D872 07:D862: 85 00     STA ram_0000_t7B_ppu_addr_lo
C - - - - - 0x01D874 07:D864: C6 04     DEC ram_0004_t24_loop_counter
C - - - - - 0x01D876 07:D866: D0 D5     BNE bra_D83D_loop
bra_D868:
C - - - - - 0x01D878 07:D868: 68        PLA
C - - - - - 0x01D879 07:D869: AA        TAX
C - - - - - 0x01D87A 07:D86A: 60        RTS



sub_D86B_prepare_ppu_address:
C - - - - - 0x01D87B 07:D86B: 0A        ASL
C - - - - - 0x01D87C 07:D86C: A8        TAY
C - - - - - 0x01D87D 07:D86D: B9 82 D8  LDA tbl_D884_ppu_address - $02,Y
C - - - - - 0x01D880 07:D870: 85 00     STA ram_0000_t7B_ppu_addr_lo
C - - - - - 0x01D882 07:D872: B9 83 D8  LDA tbl_D884_ppu_address - $02 + $01,Y
C - - - - - 0x01D885 07:D875: 85 01     STA ram_0001_t48_ppu_addr_hi
C - - - - - 0x01D887 07:D877: 60        RTS



tbl_D878:
- D 2 - - - 0x01D888 07:D878: 91        .byte $91   ; 00 
- D 2 - - - 0x01D889 07:D879: 92        .byte $92   ; 01 



tbl_D87A_positions:
;                                              +---------- pos_X
;                                              |    +----- pos_Y
;                                              |    |
- D 2 - - - 0x01D88A 07:D87A: B2        .byte $B2, $20   ; 00 
- D 2 - - - 0x01D88C 07:D87C: 18        .byte $18, $50   ; 01 
- D 2 - - - 0x01D88E 07:D87E: 88        .byte $88, $50   ; 02 
- D 2 - - - 0x01D890 07:D880: 18        .byte $18, $A0   ; 03 
- D 2 - - - 0x01D892 07:D882: 88        .byte $88, $A0   ; 04 



tbl_D884_ppu_address:
- D 2 - - - 0x01D894 07:D884: C8 23     .word $23C8 ; 01 
- D 2 - - - 0x01D896 07:D886: CC 23     .word $23CC ; 02 
- D 2 - - - 0x01D898 07:D888: E0 23     .word $23E0 ; 03 
- D 2 - - - 0x01D89A 07:D88A: E4 23     .word $23E4 ; 04 



tbl_D88C_nmt_attributes:
- D 2 - - - 0x01D89C 07:D88C: 94 D8     .word off_D894_01
- D 2 - - - 0x01D89E 07:D88E: A0 D8     .word off_D8A0_02
- D 2 - - - 0x01D8A0 07:D890: AC D8     .word off_D8AC_03
- D 2 - - - 0x01D8A2 07:D892: B8 D8     .word off_D8B8_04



off_D894_01:
- D 2 - I - 0x01D8A4 07:D894: FF        .byte $FF   ; 
- D 2 - I - 0x01D8A5 07:D895: FF        .byte $FF   ; 
- D 2 - I - 0x01D8A6 07:D896: FF        .byte $FF   ; 
- D 2 - I - 0x01D8A7 07:D897: FF        .byte $FF   ; 
- D 2 - I - 0x01D8A8 07:D898: FF        .byte $FF   ; 
- D 2 - I - 0x01D8A9 07:D899: AA        .byte $AA   ; 
- D 2 - I - 0x01D8AA 07:D89A: AA        .byte $AA   ; 
- D 2 - I - 0x01D8AB 07:D89B: AA        .byte $AA   ; 
- D 2 - I - 0x01D8AC 07:D89C: FF        .byte $FF   ; 
- D 2 - I - 0x01D8AD 07:D89D: AA        .byte $AA   ; 
- D 2 - I - 0x01D8AE 07:D89E: AA        .byte $AA   ; 
- D 2 - I - 0x01D8AF 07:D89F: AA        .byte $AA   ; 

off_D8A0_02:
- D 2 - I - 0x01D8B0 07:D8A0: FF        .byte $FF   ; 
- D 2 - I - 0x01D8B1 07:D8A1: FF        .byte $FF   ; 
- D 2 - I - 0x01D8B2 07:D8A2: FF        .byte $FF   ; 
- D 2 - I - 0x01D8B3 07:D8A3: FF        .byte $FF   ; 
- D 2 - I - 0x01D8B4 07:D8A4: BB        .byte $BB   ; 
- D 2 - I - 0x01D8B5 07:D8A5: AA        .byte $AA   ; 
- D 2 - I - 0x01D8B6 07:D8A6: AA        .byte $AA   ; 
- D 2 - I - 0x01D8B7 07:D8A7: EE        .byte $EE   ; 
- D 2 - I - 0x01D8B8 07:D8A8: BB        .byte $BB   ; 
- D 2 - I - 0x01D8B9 07:D8A9: AA        .byte $AA   ; 
- D 2 - I - 0x01D8BA 07:D8AA: AA        .byte $AA   ; 
- D 2 - I - 0x01D8BB 07:D8AB: EE        .byte $EE   ; 

off_D8AC_03:
- D 2 - I - 0x01D8BC 07:D8AC: FF        .byte $FF   ; 
- D 2 - I - 0x01D8BD 07:D8AD: AF        .byte $AF   ; 
- D 2 - I - 0x01D8BE 07:D8AE: AF        .byte $AF   ; 
- D 2 - I - 0x01D8BF 07:D8AF: AF        .byte $AF   ; 
- D 2 - I - 0x01D8C0 07:D8B0: FF        .byte $FF   ; 
- D 2 - I - 0x01D8C1 07:D8B1: AA        .byte $AA   ; 
- D 2 - I - 0x01D8C2 07:D8B2: AA        .byte $AA   ; 
- D 2 - I - 0x01D8C3 07:D8B3: AA        .byte $AA   ; 
- D 2 - I - 0x01D8C4 07:D8B4: FF        .byte $FF   ; 
- D 2 - I - 0x01D8C5 07:D8B5: FA        .byte $FA   ; 
- D 2 - I - 0x01D8C6 07:D8B6: FA        .byte $FA   ; 
- D 2 - I - 0x01D8C7 07:D8B7: FA        .byte $FA   ; 

off_D8B8_04:
- D 2 - I - 0x01D8C8 07:D8B8: BF        .byte $BF   ; 
- D 2 - I - 0x01D8C9 07:D8B9: AF        .byte $AF   ; 
- D 2 - I - 0x01D8CA 07:D8BA: AF        .byte $AF   ; 
- D 2 - I - 0x01D8CB 07:D8BB: EF        .byte $EF   ; 
- D 2 - I - 0x01D8CC 07:D8BC: BB        .byte $BB   ; 
- D 2 - I - 0x01D8CD 07:D8BD: AA        .byte $AA   ; 
- D 2 - I - 0x01D8CE 07:D8BE: AA        .byte $AA   ; 
- D 2 - I - 0x01D8CF 07:D8BF: EE        .byte $EE   ; 
- D 2 - I - 0x01D8D0 07:D8C0: FB        .byte $FB   ; 
- D 2 - I - 0x01D8D1 07:D8C1: FA        .byte $FA   ; 
- D 2 - I - 0x01D8D2 07:D8C2: FA        .byte $FA   ; 
- D 2 - I - 0x01D8D3 07:D8C3: FE        .byte $FE   ; 



tbl_D8C4:
- D 2 - - - 0x01D8D4 07:D8C4: D4 D8     .word off_D8D4_01
- D 2 - - - 0x01D8D6 07:D8C6: E8 D8     .word off_D8E8_02
- D 2 - - - 0x01D8D8 07:D8C8: CC D8     .word off_D8CC_03
- D 2 - - - 0x01D8DA 07:D8CA: E0 D8     .word off_D8E0_04



off_D8CC_03:
- D 2 - I - 0x01D8DC 07:D8CC: FF        .byte $FF   ; 
- D 2 - I - 0x01D8DD 07:D8CD: 5F        .byte $5F   ; 
- D 2 - I - 0x01D8DE 07:D8CE: FF        .byte $FF   ; 
- D 2 - I - 0x01D8DF 07:D8CF: FF        .byte $FF   ; 
- D 2 - I - 0x01D8E0 07:D8D0: FF        .byte $FF   ; 
- D 2 - I - 0x01D8E1 07:D8D1: 44        .byte $44   ; 
- D 2 - I - 0x01D8E2 07:D8D2: FF        .byte $FF   ; 
- D 2 - I - 0x01D8E3 07:D8D3: FF        .byte $FF   ; 
off_D8D4_01:    ; common bytes
- D 2 - I - 0x01D8E4 07:D8D4: FF        .byte $FF   ; 
- D 2 - I - 0x01D8E5 07:D8D5: FF        .byte $FF   ; 
- D 2 - I - 0x01D8E6 07:D8D6: FF        .byte $FF   ; 
- D 2 - I - 0x01D8E7 07:D8D7: FF        .byte $FF   ; 
- D 2 - I - 0x01D8E8 07:D8D8: FF        .byte $FF   ; 
- D 2 - I - 0x01D8E9 07:D8D9: 00        .byte $00   ; 
- D 2 - I - 0x01D8EA 07:D8DA: FF        .byte $FF   ; 
- D 2 - I - 0x01D8EB 07:D8DB: FF        .byte $FF   ; 
- D 2 - I - 0x01D8EC 07:D8DC: FF        .byte $FF   ; 
- D 2 - I - 0x01D8ED 07:D8DD: F0        .byte $F0   ; 
- D 2 - I - 0x01D8EE 07:D8DE: FF        .byte $FF   ; 
- D 2 - I - 0x01D8EF 07:D8DF: FF        .byte $FF   ; 

off_D8E0_04:
- D 2 - I - 0x01D8F0 07:D8E0: 7F        .byte $7F   ; 
- D 2 - I - 0x01D8F1 07:D8E1: DF        .byte $DF   ; 
- D 2 - I - 0x01D8F2 07:D8E2: FF        .byte $FF   ; 
- D 2 - I - 0x01D8F3 07:D8E3: FF        .byte $FF   ; 
- D 2 - I - 0x01D8F4 07:D8E4: 37        .byte $37   ; 
- D 2 - I - 0x01D8F5 07:D8E5: CD        .byte $CD   ; 
- D 2 - I - 0x01D8F6 07:D8E6: FF        .byte $FF   ; 
- D 2 - I - 0x01D8F7 07:D8E7: FF        .byte $FF   ; 
off_D8E8_02:    ; common bytes
- D 2 - I - 0x01D8F8 07:D8E8: FF        .byte $FF   ; 
- D 2 - I - 0x01D8F9 07:D8E9: FF        .byte $FF   ; 
- D 2 - I - 0x01D8FA 07:D8EA: FF        .byte $FF   ; 
- D 2 - I - 0x01D8FB 07:D8EB: FF        .byte $FF   ; 
- D 2 - I - 0x01D8FC 07:D8EC: 33        .byte $33   ; 
- D 2 - I - 0x01D8FD 07:D8ED: CC        .byte $CC   ; 
- D 2 - I - 0x01D8FE 07:D8EE: FF        .byte $FF   ; 
- D 2 - I - 0x01D8FF 07:D8EF: FF        .byte $FF   ; 
- D 2 - I - 0x01D900 07:D8F0: F7        .byte $F7   ; 
- D 2 - I - 0x01D901 07:D8F1: FC        .byte $FC   ; 
- D 2 - I - 0x01D902 07:D8F2: FF        .byte $FF   ; 
- D 2 - I - 0x01D903 07:D8F3: FF        .byte $FF   ; 



ofs_001_D8F4_02:
C - - J - - 0x01D904 07:D8F4: A4 21     LDY ram_0021_t01
C - - - - - 0x01D906 07:D8F6: D0 0A     BNE bra_D902
C - - - - - 0x01D908 07:D8F8: 20 1A F5  JSR sub_0x01F52A
C - - - - - 0x01D90B 07:D8FB: 90 26     BCC bra_D923_RTS
C - - - - - 0x01D90D 07:D8FD: E6 21     INC ram_0021_t01
C - - - - - 0x01D90F 07:D8FF: 4C 97 D1  JMP loc_D197_clear_nametables
bra_D902:
C - - - - - 0x01D912 07:D902: 88        DEY
C - - - - - 0x01D913 07:D903: D0 1F     BNE bra_D924
C - - - - - 0x01D915 07:D905: A9 00     LDA #$00
C - - - - - 0x01D917 07:D907: 85 69     STA ram_0069
C - - - - - 0x01D919 07:D909: A5 75     LDA ram_stage
C - - - - - 0x01D91B 07:D90B: F0 02     BEQ bra_D90F
C - - - - - 0x01D91D 07:D90D: A9 01     LDA #$01
bra_D90F:
C - - - - - 0x01D91F 07:D90F: 85 34     STA ram_mirroring
C - - - - - 0x01D921 07:D911: A9 02     LDA #con_prg_pair + $02
C - - - - - 0x01D923 07:D913: 20 4C F3  JSR sub_0x01F35C_prg_bankswitch
C - - - - - 0x01D926 07:D916: 20 01 80  JSR sub_0x008011
bra_D919:
C - - - - - 0x01D929 07:D919: A9 01     LDA #con_prg_pair + $01
C - - - - - 0x01D92B 07:D91B: 20 4C F3  JSR sub_0x01F35C_prg_bankswitch
C - - - - - 0x01D92E 07:D91E: 20 44 98  JSR sub_0x015854
C - - - - - 0x01D931 07:D921: E6 21     INC ram_0021_t01
bra_D923_RTS:
C - - - - - 0x01D933 07:D923: 60        RTS
bra_D924:
C - - - - - 0x01D934 07:D924: 88        DEY
C - - - - - 0x01D935 07:D925: F0 F2     BEQ bra_D919
; bzk optimize, useless LDA + STA
C - - - - - 0x01D937 07:D927: A9 00     LDA #$00
C - - - - - 0x01D939 07:D929: 85 21     STA ram_0021_t04_useless
C - - - - - 0x01D93B 07:D92B: E6 44     INC ram_script_lo
C - - - - - 0x01D93D 07:D92D: 20 36 D9  JSR sub_D936
C - - - - - 0x01D940 07:D930: 20 C8 F8  JSR sub_0x01F8D8_prepare_irq_data
C - - - - - 0x01D943 07:D933: 4C 8B 9E  JMP loc_0x015E9B



sub_D936:
C - - - - - 0x01D946 07:D936: A5 75     LDA ram_stage
C - - - - - 0x01D948 07:D938: 09 10     ORA #$10
C - - - - - 0x01D94A 07:D93A: 8D 64 03  STA ram_0364
C - - - - - 0x01D94D 07:D93D: A0 01     LDY #$01
C - - - - - 0x01D94F 07:D93F: 20 B1 F4  JSR sub_0x01F4C1
C - - - - - 0x01D952 07:D942: A9 00     LDA #$00
C - - - - - 0x01D954 07:D944: 85 2B     STA ram_002B_flags
C - - - - - 0x01D956 07:D946: A9 01     LDA #con_prg_pair + $01
C - - - - - 0x01D958 07:D948: 20 4C F3  JSR sub_0x01F35C_prg_bankswitch
C - - - - - 0x01D95B 07:D94B: 20 69 9F  JSR sub_0x015F79
C - - - - - 0x01D95E 07:D94E: 4C C2 D9  JMP loc_D9C2



ofs_001_D951_03:
C - - J - - 0x01D961 07:D951: 20 69 F5  JSR sub_0x01F579
C - - - - - 0x01D964 07:D954: 90 CD     BCC bra_D923_RTS
C - - - - - 0x01D966 07:D956: E6 44     INC ram_script_lo
C - - - - - 0x01D968 07:D958: A4 75     LDY ram_stage
C - - - - - 0x01D96A 07:D95A: B9 64 D9  LDA tbl_D964_stage_music,Y
C - - - - - 0x01D96D 07:D95D: C9 FF     CMP #$FF
C - - - - - 0x01D96F 07:D95F: F0 C2     BEQ bra_D923_RTS
C - - - - - 0x01D971 07:D961: 4C CA FE  JMP loc_0x01FEDA_add_music_to_queue



tbl_D964_stage_music:
- D 2 - - - 0x01D974 07:D964: 74        .byte con_music_74   ; 00 stage 1
- D 2 - - - 0x01D975 07:D965: 7C        .byte con_music_7C   ; 01 stage 2
- D 2 - - - 0x01D976 07:D966: 80        .byte con_music_80   ; 02 stage 3
- D 2 - - - 0x01D977 07:D967: 84        .byte con_music_84   ; 03 stage 4
- D 2 - - - 0x01D978 07:D968: FF        .byte $FF   ; 04 stage 5



ofs_001_D969_04_gameplay:
C - - J - - 0x01D979 07:D969: A5 3E     LDA ram_003E_brightness_counter
C - - - - - 0x01D97B 07:D96B: F0 05     BEQ bra_D972
C - - - - - 0x01D97D 07:D96D: A9 00     LDA #$00
C - - - - - 0x01D97F 07:D96F: 85 3E     STA ram_003E_brightness_counter
bra_D971_RTS:
C - - - - - 0x01D981 07:D971: 60        RTS
bra_D972:
C - - - - - 0x01D982 07:D972: A9 00     LDA #con_prg_pair + $07
C - - - - - 0x01D984 07:D974: 20 4C F3  JSR sub_0x01F35C_prg_bankswitch
C - - - - - 0x01D987 07:D977: 20 7D BA  JSR sub_0x003A8D
C - - - - - 0x01D98A 07:D97A: A5 6B     LDA ram_006B
C - - - - - 0x01D98C 07:D97C: 05 6C     ORA ram_006C
C - - - - - 0x01D98E 07:D97E: 05 69     ORA ram_0069
C - - - - - 0x01D990 07:D980: 05 6A     ORA ram_006A
C - - - - - 0x01D992 07:D982: F0 03     BEQ bra_D987
C - - - - - 0x01D994 07:D984: 20 C1 F6  JSR sub_0x01F6D1
bra_D987:
C - - - - - 0x01D997 07:D987: A9 01     LDA #con_prg_pair + $01
C - - - - - 0x01D999 07:D989: 20 4C F3  JSR sub_0x01F35C_prg_bankswitch
C - - - - - 0x01D99C 07:D98C: 20 AC D9  JSR sub_D9AC
C - - - - - 0x01D99F 07:D98F: 20 94 F9  JSR sub_0x01F9A4
C - - - - - 0x01D9A2 07:D992: A5 BB     LDA ram_00BB
C - - - - - 0x01D9A4 07:D994: D0 DB     BNE bra_D971_RTS
C - - - - - 0x01D9A6 07:D996: A9 05     LDA #con_prg_pair + $05
C - - - - - 0x01D9A8 07:D998: 20 4C F3  JSR sub_0x01F35C_prg_bankswitch
C - - - - - 0x01D9AB 07:D99B: 20 01 A0  JSR sub_0x00C011
C - - - - - 0x01D9AE 07:D99E: A9 02     LDA #con_prg_pair + $02
C - - - - - 0x01D9B0 07:D9A0: 20 4C F3  JSR sub_0x01F35C_prg_bankswitch
C - - - - - 0x01D9B3 07:D9A3: 20 B6 80  JSR sub_0x0080C6
C - - - - - 0x01D9B6 07:D9A6: 20 32 81  JSR sub_0x008142
C - - - - - 0x01D9B9 07:D9A9: 4C 7A B3  JMP loc_0x00B38A



sub_D9AC:
ofs_006_0x01D9BC_14:
; con_F3D6_14
C - - - - - 0x01D9BC 07:D9AC: A5 BB     LDA ram_00BB
C - - - - - 0x01D9BE 07:D9AE: F0 03     BEQ bra_D9B3
C - - - - - 0x01D9C0 07:D9B0: 20 FD 96  JSR sub_0x01570D
bra_D9B3:
C - - - - - 0x01D9C3 07:D9B3: 20 69 9F  JSR sub_0x015F79
C - - - - - 0x01D9C6 07:D9B6: 20 68 99  JSR sub_0x015978
C - - - - - 0x01D9C9 07:D9B9: 20 F6 F5  JSR sub_0x01F606
C - - - - - 0x01D9CC 07:D9BC: 20 C2 D9  JSR sub_D9C2
C - - - - - 0x01D9CF 07:D9BF: 4C C2 ED  JMP loc_0x01EDD2



loc_D9C2:
sub_D9C2:
sub_0x01D9D2:
C D 2 - - - 0x01D9D2 07:D9C2: AD 41 03  LDA ram_0341
C - - - - - 0x01D9D5 07:D9C5: D0 07     BNE bra_D9CE
C - - - - - 0x01D9D7 07:D9C7: A4 75     LDY ram_stage
C - - - - - 0x01D9D9 07:D9C9: B9 13 DA  LDA tbl_DA13,Y
C - - - - - 0x01D9DC 07:D9CC: 85 7C     STA ram_chr_bank + $05
bra_D9CE:
C - - - - - 0x01D9DE 07:D9CE: AD 43 03  LDA ram_0343
C - - - - - 0x01D9E1 07:D9D1: F0 0F     BEQ bra_D9E2
C - - - - - 0x01D9E3 07:D9D3: AD 42 03  LDA ram_0342
C - - - - - 0x01D9E6 07:D9D6: F0 04     BEQ bra_D9DC
C - - - - - 0x01D9E8 07:D9D8: C9 05     CMP #$05
C - - - - - 0x01D9EA 07:D9DA: D0 5C     BNE bra_DA38_RTS
bra_D9DC:
C - - - - - 0x01D9EC 07:D9DC: A5 20     LDA ram_script_hi
C - - - - - 0x01D9EE 07:D9DE: C9 04     CMP #con_0020_04
C - - - - - 0x01D9F0 07:D9E0: F0 56     BEQ bra_DA38_RTS
bra_D9E2:
C - - - - - 0x01D9F2 07:D9E2: A4 86     LDY ram_0086_table_index
C - - - - - 0x01D9F4 07:D9E4: C0 02     CPY #$02
C - - - - - 0x01D9F6 07:D9E6: F0 06     BEQ bra_D9EE
bra_D9E8:
C - - - - - 0x01D9F8 07:D9E8: B9 F8 D9  LDA tbl_D9F8,Y
bra_D9EB:
C - - - - - 0x01D9FB 07:D9EB: 4C 48 F4  JMP loc_0x01F458_select_bg_chr_bank_pair
bra_D9EE:
C - - - - - 0x01D9FE 07:D9EE: A5 23     LDA ram_frm_cnt
C - - - - - 0x01DA00 07:D9F0: 29 10     AND #$10
C - - - - - 0x01DA02 07:D9F2: F0 F4     BEQ bra_D9E8
C - - - - - 0x01DA04 07:D9F4: A9 04     LDA #$04
C - - - - - 0x01DA06 07:D9F6: D0 F3     BNE bra_D9EB    ; jmp



tbl_D9F8:
- D 2 - - - 0x01DA08 07:D9F8: 00        .byte con_chr_pair + $00   ; 00 
- D 2 - - - 0x01DA09 07:D9F9: 01        .byte con_chr_pair + $01   ; 01 
- D 2 - - - 0x01DA0A 07:D9FA: 02        .byte con_chr_pair + $02   ; 02 
- D 2 - - - 0x01DA0B 07:D9FB: 03        .byte con_chr_pair + $03   ; 03 
- D 2 - - - 0x01DA0C 07:D9FC: 03        .byte con_chr_pair + $03   ; 04 
- D 2 - - - 0x01DA0D 07:D9FD: 06        .byte con_chr_pair + $06   ; 05 
- D 2 - - - 0x01DA0E 07:D9FE: 07        .byte con_chr_pair + $07   ; 06 
- D 2 - - - 0x01DA0F 07:D9FF: 08        .byte con_chr_pair + $08   ; 07 
- D 2 - - - 0x01DA10 07:DA00: 09        .byte con_chr_pair + $09   ; 08 
- D 2 - - - 0x01DA11 07:DA01: 0A        .byte con_chr_pair + $0A   ; 09 
- D 2 - - - 0x01DA12 07:DA02: 0B        .byte con_chr_pair + $0B   ; 0A 
- D 2 - - - 0x01DA13 07:DA03: 0C        .byte con_chr_pair + $0C   ; 0B 
- - - - - - 0x01DA14 07:DA04: 0D        .byte con_chr_pair + $0D   ; 0C 
- D 2 - - - 0x01DA15 07:DA05: 0E        .byte con_chr_pair + $0E   ; 0D 
- D 2 - - - 0x01DA16 07:DA06: 0F        .byte con_chr_pair + $0F   ; 0E 
- D 2 - - - 0x01DA17 07:DA07: 10        .byte con_chr_pair + $10   ; 0F 
- D 2 - - - 0x01DA18 07:DA08: 11        .byte con_chr_pair + $11   ; 10 
- D 2 - - - 0x01DA19 07:DA09: 12        .byte con_chr_pair + $12   ; 11 
- D 2 - - - 0x01DA1A 07:DA0A: 13        .byte con_chr_pair + $13   ; 12 
- D 2 - - - 0x01DA1B 07:DA0B: 14        .byte con_chr_pair + $14   ; 13 
- D 2 - - - 0x01DA1C 07:DA0C: 15        .byte con_chr_pair + $15   ; 14 
- D 2 - - - 0x01DA1D 07:DA0D: 16        .byte con_chr_pair + $16   ; 15 
- D 2 - - - 0x01DA1E 07:DA0E: 17        .byte con_chr_pair + $17   ; 16 
- D 2 - - - 0x01DA1F 07:DA0F: 17        .byte con_chr_pair + $17   ; 17 
- D 2 - - - 0x01DA20 07:DA10: 18        .byte con_chr_pair + $18   ; 18 
- D 2 - - - 0x01DA21 07:DA11: 19        .byte con_chr_pair + $19   ; 19 
- D 2 - - - 0x01DA22 07:DA12: 1A        .byte con_chr_pair + $1A   ; 1A 



tbl_DA13:
- D 2 - - - 0x01DA23 07:DA13: 0D        .byte con_chr_bank + $0D   ; 00 stage 1
- D 2 - - - 0x01DA24 07:DA14: 1A        .byte con_chr_bank + $1A   ; 01 stage 2
- D 2 - - - 0x01DA25 07:DA15: 0D        .byte con_chr_bank + $0D   ; 02 stage 3
- D 2 - - - 0x01DA26 07:DA16: 1A        .byte con_chr_bank + $1A   ; 03 stage 4
- D 2 - - - 0x01DA27 07:DA17: 0D        .byte con_chr_bank + $0D   ; 04 stage 5



sub_DA18:
C - - - - - 0x01DA28 07:DA18: A5 27     LDA ram_0027_useless_00
C - - - - - 0x01DA2A 07:DA1A: 05 46     ORA ram_0046_useless_00
C - - - - - 0x01DA2C 07:DA1C: 05 25     ORA ram_disable_rendering_timer
C - - - - - 0x01DA2E 07:DA1E: D0 18     BNE bra_DA38_RTS
C - - - - - 0x01DA30 07:DA20: A5 40     LDA ram_btn_press_1
C - - - - - 0x01DA32 07:DA22: 05 41     ORA ram_btn_press_1 + $01
C - - - - - 0x01DA34 07:DA24: A4 45     LDY ram_pause_flag
C - - - - - 0x01DA36 07:DA26: D0 10     BNE bra_DA38_RTS
C - - - - - 0x01DA38 07:DA28: 29 10     AND #con_btn_Start
C - - - - - 0x01DA3A 07:DA2A: F0 0C     BEQ bra_DA38_RTS
C - - - - - 0x01DA3C 07:DA2C: AD 5B 03  LDA ram_035B_flag
C - - - - - 0x01DA3F 07:DA2F: D0 07     BNE bra_DA38_RTS
C - - - - - 0x01DA41 07:DA31: E6 45     INC ram_pause_flag
C - - - - - 0x01DA43 07:DA33: A9 67     LDA #con_music_67
C - - - - - 0x01DA45 07:DA35: 4C CA FE  JMP loc_0x01FEDA_add_music_to_queue
bra_DA38_RTS:
C - - - - - 0x01DA48 07:DA38: 60        RTS



sub_DA39:
C - - - - - 0x01DA49 07:DA39: A2 15     LDX #$15
sub_0x01DA4B:
bra_DA3B_loop:
C - - - - - 0x01DA4B 07:DA3B: A9 00     LDA #$00
C - - - - - 0x01DA4D 07:DA3D: 9D 1A 06  STA ram_obj_animation_lo,X
C - - - - - 0x01DA50 07:DA40: 9D 68 06  STA ram_obj_pos_Y,X
C - - - - - 0x01DA53 07:DA43: 9D 4E 06  STA ram_obj_pos_X,X
C - - - - - 0x01DA56 07:DA46: 9D 34 06  STA ram_obj_animation_hi,X
C - - - - - 0x01DA59 07:DA49: CA        DEX
C - - - - - 0x01DA5A 07:DA4A: 10 EF     BPL bra_DA3B_loop
C - - - - - 0x01DA5C 07:DA4C: 60        RTS



sub_0x01DA7B:
C - - - - - 0x01DA7B 07:DA6B: A4 75     LDY ram_stage
C - - - - - 0x01DA7D 07:DA6D: C0 02     CPY #$02
C - - - - - 0x01DA7F 07:DA6F: 90 04     BCC bra_DA75
ofs_006_0x01DA81_1B:    ; bzk optimize
; con_F3D6_1B
C - - - - - 0x01DA81 07:DA71: A5 1F     LDA ram_001F_t01
C - - - - - 0x01DA83 07:DA73: D0 09     BNE bra_DA7E
bra_DA75:
ofs_006_0x01DA85_05:
; con_F3D6_05
ofs_006_0x01DA85_06:
; con_F3D6_06
ofs_006_0x01DA85_0C:
; con_F3D6_0C
.export sub_0x01DA85
sub_0x01DA85:
C - - J - - 0x01DA85 07:DA75: A5 1F     LDA ram_001F_t01
loc_0x01DA87:
C D 2 - - - 0x01DA87 07:DA77: A0 00     LDY #$00
C - - - - - 0x01DA89 07:DA79: 84 3D     STY ram_003D_t02_flag
C - - - - - 0x01DA8B 07:DA7B: 8C 56 03  STY ram_0356_flag
bra_DA7E:
C - - - - - 0x01DA8E 07:DA7E: AC 56 03  LDY ram_0356_flag
C - - - - - 0x01DA91 07:DA81: D0 06     BNE bra_DA89
C - - - - - 0x01DA93 07:DA83: A6 26     LDX ram_buffer_index
C - - - - - 0x01DA95 07:DA85: E0 20     CPX #$20
C - - - - - 0x01DA97 07:DA87: B0 10     BCS bra_DA99_RTS
bra_DA89:
                                        STA ram_0028_t01
                                        LDA #con_F3D6_26
                                        JMP loc_0x01F3C3_execute_script
bra_DA99_RTS:
                                        RTS



sub_0x01DAAA_execute_indirect_jump_0000:
C - - - - - 0x01DAAA 07:DA9A: 6C 00 00  JMP (ram_0000_t1A_jmp)



sub_0x01DAD1_close_ppu_buffer:
loc_0x01DAD1_close_ppu_buffer:
C D 2 - - - 0x01DAD1 07:DAC1: A9 FF     LDA #$FF
C - - - - - 0x01DAD3 07:DAC3: 20 C9 DA  JSR sub_DAC9_write_byte_to_ppu_buffer
C - - - - - 0x01DAD6 07:DAC6: 86 26     STX ram_buffer_index
C - - - - - 0x01DAD8 07:DAC8: 60        RTS



sub_DAC9_write_byte_to_ppu_buffer:
sub_0x01DAD9_write_byte_to_ppu_buffer:
loc_0x01DAD9_write_byte_to_ppu_buffer:
C D 2 - - - 0x01DAD9 07:DAC9: 9D 00 01  STA ram_ppu_buffer_1,X
C - - - - - 0x01DADC 07:DACC: E8        INX
C - - - - - 0x01DADD 07:DACD: 60        RTS



.export sub_0x01DDB5
sub_0x01DDB5:
C - - - - - 0x01DDB5 07:DDA5: A5 DC     LDA ram_00DC
C - - - - - 0x01DDB7 07:DDA7: 85 02     STA ram_0002_t12_hi
C - - - - - 0x01DDB9 07:DDA9: A5 DD     LDA ram_00DD
C - - - - - 0x01DDBB 07:DDAB: 85 03     STA ram_0003_t06_lo
sub_0x01DDBD:
C - - - - - 0x01DDBD 07:DDAD: A5 02     LDA ram_0002_t12_hi
C - - - - - 0x01DDBF 07:DDAF: 29 01     AND #$01
; bzk optimize, useless STA
C - - - - - 0x01DDC1 07:DDB1: 85 02     STA ram_0002_t62_useless
C - - - - - 0x01DDC3 07:DDB3: F0 12     BEQ bra_DDC7
C - - - - - 0x01DDC5 07:DDB5: A5 03     LDA ram_0003_t06_lo
C - - - - - 0x01DDC7 07:DDB7: 38        SEC
C - - - - - 0x01DDC8 07:DDB8: E9 10     SBC #$10
C - - - - - 0x01DDCA 07:DDBA: B0 04     BCS bra_DDC0
C - - - - - 0x01DDCC 07:DDBC: 29 E0     AND #$E0
C - - - - - 0x01DDCE 07:DDBE: D0 09     BNE bra_DDC9
bra_DDC0:
C - - - - - 0x01DDD0 07:DDC0: 29 E0     AND #$E0
C - - - - - 0x01DDD2 07:DDC2: 4A        LSR
C - - - - - 0x01DDD3 07:DDC3: 09 80     ORA #$80
C - - - - - 0x01DDD5 07:DDC5: D0 05     BNE bra_DDCC    ; jmp
bra_DDC7:
C - - - - - 0x01DDD7 07:DDC7: A5 03     LDA ram_0003_t06_lo
bra_DDC9:
C - - - - - 0x01DDD9 07:DDC9: 29 E0     AND #$E0
; / 10
C - - - - - 0x01DDDB 07:DDCB: 4A        LSR
bra_DDCC:
; / 08
C - - - - - 0x01DDDC 07:DDCC: 4A        LSR
C - - - - - 0x01DDDD 07:DDCD: 4A        LSR
C - - - - - 0x01DDDE 07:DDCE: 4A        LSR
sub_0x01DDDF:
C - - - - - 0x01DDDF 07:DDCF: A8        TAY
C - - - - - 0x01DDE0 07:DDD0: 38        SEC
C - - - - - 0x01DDE1 07:DDD1: E9 1E     SBC #$1E
C - - - - - 0x01DDE3 07:DDD3: 90 01     BCC bra_DDD6
C - - - - - 0x01DDE5 07:DDD5: A8        TAY
bra_DDD6:
C - - - - - 0x01DDE6 07:DDD6: B9 E1 DD  LDA tbl_DDE1_ppu_address,Y
C - - - - - 0x01DDE9 07:DDD9: 85 00     STA ram_0000_t73_ppu_addr_lo
C - - - - - 0x01DDEB 07:DDDB: B9 E2 DD  LDA tbl_DDE1_ppu_address + $01,Y
C - - - - - 0x01DDEE 07:DDDE: 85 01     STA ram_0001_t14_ppu_addr_hi
C - - - - - 0x01DDF0 07:DDE0: 60        RTS



tbl_DDE1_ppu_address:
- D 2 - - - 0x01DDF1 07:DDE1: 40 2C     .word $2C40 ; 
- D 2 - - - 0x01DDF3 07:DDE3: C0 2C     .word $2CC0 ; 
- D 2 - - - 0x01DDF5 07:DDE5: 40 2D     .word $2D40 ; 
- D 2 - - - 0x01DDF7 07:DDE7: C0 2D     .word $2DC0 ; 
- D 2 - - - 0x01DDF9 07:DDE9: 40 2E     .word $2E40 ; 
- D 2 - - - 0x01DDFB 07:DDEB: C0 2E     .word $2EC0 ; 
- D 2 - - - 0x01DDFD 07:DDED: 40 2F     .word $2F40 ; 
- D 2 - - - 0x01DDFF 07:DDEF: 00 20     .word $2000 ; 
- D 2 - - - 0x01DE01 07:DDF1: 80 20     .word $2080 ; 
- D 2 - - - 0x01DE03 07:DDF3: 00 21     .word $2100 ; 
- D 2 - - - 0x01DE05 07:DDF5: 80 21     .word $2180 ; 
- D 2 - - - 0x01DE07 07:DDF7: 00 22     .word $2200 ; 
- D 2 - - - 0x01DE09 07:DDF9: 80 22     .word $2280 ; 
- D 2 - - - 0x01DE0B 07:DDFB: 00 23     .word $2300 ; 
- D 2 - - - 0x01DE0D 07:DDFD: 80 23     .word $2380 ; 



sub_DE24_write_A_to_buffer_and_INX:
sub_0x01DE34_write_A_to_buffer_and_INX:
loc_0x01DE34_write_A_to_buffer_and_INX:
C D 2 - - - 0x01DE34 07:DE24: 9D 60 01  STA ram_ppu_buffer_2,X
C - - - - - 0x01DE37 07:DE27: E8        INX
C - - - - - 0x01DE38 07:DE28: 60        RTS



sub_0x01DF01:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x01DF01 07:DEF1: A4 0F     LDY ram_000F_t06_player_index
C - - - - - 0x01DF03 07:DEF3: B9 7F 00  LDA ram_player_stats,Y
C - - - - - 0x01DF06 07:DEF6: 29 F0     AND #$F0
C - - - - - 0x01DF08 07:DEF8: C9 30     CMP #$30
C - - - - - 0x01DF0A 07:DEFA: 60        RTS



.export tbl_0x01E0B9
tbl_0x01E0B9:
; 00 
- D 3 - - - 0x01E0B9 07:E0A9: 80        .byte $80   ; 
- D 3 - - - 0x01E0BA 07:E0AA: 81        .byte $81   ; 
- D 3 - - - 0x01E0BB 07:E0AB: 82        .byte $82   ; 

- D 3 - - - 0x01E0BC 07:E0AC: 90        .byte $90   ; 
- D 3 - - - 0x01E0BD 07:E0AD: 91        .byte $91   ; 
- D 3 - - - 0x01E0BE 07:E0AE: 92        .byte $92   ; 

- D 3 - - - 0x01E0BF 07:E0AF: A0        .byte $A0   ; 
- D 3 - - - 0x01E0C0 07:E0B0: A1        .byte $A1   ; 
- D 3 - - - 0x01E0C1 07:E0B1: A2        .byte $A2   ; 


; 09 
- D 3 - - - 0x01E0C2 07:E0B2: 83        .byte $83   ; 
- D 3 - - - 0x01E0C3 07:E0B3: 84        .byte $84   ; 
- D 3 - - - 0x01E0C4 07:E0B4: 85        .byte $85   ; 

- D 3 - - - 0x01E0C5 07:E0B5: 93        .byte $93   ; 
- D 3 - - - 0x01E0C6 07:E0B6: 94        .byte $94   ; 
- D 3 - - - 0x01E0C7 07:E0B7: 95        .byte $95   ; 

- D 3 - - - 0x01E0C8 07:E0B8: A3        .byte $A3   ; 
- D 3 - - - 0x01E0C9 07:E0B9: A4        .byte $A4   ; 
- D 3 - - - 0x01E0CA 07:E0BA: A5        .byte $A5   ; 


; 12 
- D 3 - - - 0x01E0CB 07:E0BB: 89        .byte $89   ; 
- D 3 - - - 0x01E0CC 07:E0BC: 8A        .byte $8A   ; 
- D 3 - - - 0x01E0CD 07:E0BD: 8B        .byte $8B   ; 

- D 3 - - - 0x01E0CE 07:E0BE: 99        .byte $99   ; 
- D 3 - - - 0x01E0CF 07:E0BF: 9A        .byte $9A   ; 
- D 3 - - - 0x01E0D0 07:E0C0: 9B        .byte $9B   ; 

- D 3 - - - 0x01E0D1 07:E0C1: A9        .byte $A9   ; 
- D 3 - - - 0x01E0D2 07:E0C2: AA        .byte $AA   ; 
- D 3 - - - 0x01E0D3 07:E0C3: AB        .byte $AB   ; 


; 1B 
- D 3 - - - 0x01E0D4 07:E0C4: 86        .byte $86   ; 
- D 3 - - - 0x01E0D5 07:E0C5: 87        .byte $87   ; 
- D 3 - - - 0x01E0D6 07:E0C6: 88        .byte $88   ; 

- D 3 - - - 0x01E0D7 07:E0C7: 96        .byte $96   ; 
- D 3 - - - 0x01E0D8 07:E0C8: 97        .byte $97   ; 
- D 3 - - - 0x01E0D9 07:E0C9: 98        .byte $98   ; 

- D 3 - - - 0x01E0DA 07:E0CA: A6        .byte $A6   ; 
- D 3 - - - 0x01E0DB 07:E0CB: A7        .byte $A7   ; 
- D 3 - - - 0x01E0DC 07:E0CC: A8        .byte $A8   ; 



.export tbl_0x01E0EC
tbl_0x01E0EC:
- D 3 - - - 0x01E0EC 07:E0DC: CB        .byte $CB   ; 
- D 3 - - - 0x01E0ED 07:E0DD: CC        .byte $CC   ; 
- D 3 - - - 0x01E0EE 07:E0DE: C2        .byte $C2   ; 
- D 3 - - - 0x01E0EF 07:E0DF: C3        .byte $C3   ; 
- D 3 - - - 0x01E0F0 07:E0E0: C6        .byte $C6   ; 
- D 3 - - - 0x01E0F1 07:E0E1: C3        .byte $C3   ; 
- D 3 - - - 0x01E0F2 07:E0E2: C4        .byte $C4   ; 
- D 3 - - - 0x01E0F3 07:E0E3: CA        .byte $CA   ; 
- D 3 - - - 0x01E0F4 07:E0E4: C8        .byte $C8   ; 
- D 3 - - - 0x01E0F5 07:E0E5: C9        .byte $C9   ; 
- D 3 - - - 0x01E0F6 07:E0E6: CB        .byte $CB   ; 
- D 3 - - - 0x01E0F7 07:E0E7: CC        .byte $CC   ; 
- D 3 - - - 0x01E0F8 07:E0E8: CB        .byte $CB   ; 
- D 3 - - - 0x01E0F9 07:E0E9: CD        .byte $CD   ; 
- D 3 - - - 0x01E0FA 07:E0EA: C2        .byte $C2   ; 
- D 3 - - - 0x01E0FB 07:E0EB: C5        .byte $C5   ; 
- D 3 - - - 0x01E0FC 07:E0EC: C4        .byte $C4   ; 
- D 3 - - - 0x01E0FD 07:E0ED: CA        .byte $CA   ; 
- D 3 - - - 0x01E0FE 07:E0EE: C8        .byte $C8   ; 
- D 3 - - - 0x01E0FF 07:E0EF: C9        .byte $C9   ; 
- D 3 - - - 0x01E100 07:E0F0: CB        .byte $CB   ; 
- D 3 - - - 0x01E101 07:E0F1: CC        .byte $CC   ; 
- D 3 - - - 0x01E102 07:E0F2: C0        .byte $C0   ; 
- D 3 - - - 0x01E103 07:E0F3: C1        .byte $C1   ; 
- D 3 - - - 0x01E104 07:E0F4: CB        .byte $CB   ; 
- D 3 - - - 0x01E105 07:E0F5: CE        .byte $CE   ; 
- D 3 - - - 0x01E106 07:E0F6: C4        .byte $C4   ; 
- D 3 - - - 0x01E107 07:E0F7: CA        .byte $CA   ; 
- D 3 - - - 0x01E108 07:E0F8: C8        .byte $C8   ; 
- D 3 - - - 0x01E109 07:E0F9: C9        .byte $C9   ; 
- D 3 - - - 0x01E10A 07:E0FA: CB        .byte $CB   ; 
- D 3 - - - 0x01E10B 07:E0FB: CC        .byte $CC   ; 
- D 3 - - - 0x01E10C 07:E0FC: C4        .byte $C4   ; 
- D 3 - - - 0x01E10D 07:E0FD: C7        .byte $C7   ; 
- D 3 - - - 0x01E10E 07:E0FE: C4        .byte $C4   ; 
- D 3 - - - 0x01E10F 07:E0FF: C5        .byte $C5   ; 
- D 3 - - - 0x01E110 07:E100: C4        .byte $C4   ; 
- D 3 - - - 0x01E111 07:E101: CA        .byte $CA   ; 
- D 3 - - - 0x01E112 07:E102: C8        .byte $C8   ; 
- D 3 - - - 0x01E113 07:E103: C9        .byte $C9   ; 



.export loc_0x01E01B
loc_0x01E01B:
C D 3 - - - 0x01E01B 07:E00B: 20 1E E0  JSR sub_E01E
loc_0x01E01E:
C - - - - - 0x01E01E 07:E00E: 09 E0     ORA #$E0
C - - - - - 0x01E020 07:E010: 20 24 DE  JSR sub_DE24_write_A_to_buffer_and_INX
C - - - - - 0x01E023 07:E013: 18        CLC
C - - - - - 0x01E024 07:E014: 69 01     ADC #$01
C - - - - - 0x01E026 07:E016: 20 24 DE  JSR sub_DE24_write_A_to_buffer_and_INX
C - - - - - 0x01E029 07:E019: A9 01     LDA #$01
C - - - - - 0x01E02B 07:E01B: 4C BD DE  JMP loc_DEBD



sub_DEBD:
loc_DEBD:   ; bzk optimize
.export sub_0x01DECD
sub_0x01DECD:
.export loc_0x01DECD
loc_0x01DECD:
C D 2 - - - 0x01DECD 07:DEBD: A8        TAY
C - - - - - 0x01DECE 07:DEBE: A9 00     LDA #$00
bra_DEC0_loop:
C - - - - - 0x01DED0 07:DEC0: 20 24 DE  JSR sub_DE24_write_A_to_buffer_and_INX
C - - - - - 0x01DED3 07:DEC3: 88        DEY
C - - - - - 0x01DED4 07:DEC4: D0 FA     BNE bra_DEC0_loop
C - - - - - 0x01DED6 07:DEC6: 60        RTS



sub_E01E:
sub_0x01E02E:
C - - - - - 0x01E02E 07:E01E: A9 07     LDA #$07
C - - - - - 0x01E030 07:E020: 20 BD DE  JSR sub_DEBD
C - - - - - 0x01E033 07:E023: AD 69 03  LDA ram_0369_counter
C - - - - - 0x01E036 07:E026: 0A        ASL
C - - - - - 0x01E037 07:E027: 60        RTS



sub_BF94_clear_data:
C - - - - - 0x007FA4 01:BF94: A9 00     LDA #$00
C - - - - - 0x007FA6 01:BF96: 85 87     STA ram_0087
C - - - - - 0x007FA8 01:BF98: 8D 43 03  STA ram_0343
C - - - - - 0x007FAB 01:BF9B: 85 D0     STA ram_00D0
C - - - - - 0x007FAD 01:BF9D: 85 BD     STA ram_00BD_flag
C - - - - - 0x007FAF 01:BF9F: 8D 59 03  STA ram_0359_flag
C - - - - - 0x007FB2 01:BFA2: 85 C1     STA ram_00C1
C - - - - - 0x007FB4 01:BFA4: 85 76     STA ram_irq_handler ; con_irq_00
C - - - - - 0x007FB6 01:BFA6: 85 5A     STA ram_005A_flag
C - - - - - 0x007FB8 01:BFA8: 85 BC     STA ram_00BC_counter
C - - - - - 0x007FBA 01:BFAA: 85 C6     STA ram_00C6
C - - - - - 0x007FBC 01:BFAC: 85 A6     STA ram_00A6
; bzk optimize, useless STA
C - - - - - 0x007FBE 01:BFAE: 85 A7     STA ram_00A7
; bzk optimize, useless STA
C - - - - - 0x007FC0 01:BFB0: 85 A8     STA ram_00A8
C - - - - - 0x007FC2 01:BFB2: 8D 4B 03  STA ram_034B_useless
C - - - - - 0x007FC5 01:BFB5: 85 C5     STA ram_00C5_flag
C - - - - - 0x007FC7 01:BFB7: A2 03     LDX #$03
bra_BFB9_loop:
C - - - - - 0x007FC9 01:BFB9: A9 F0     LDA #$F0
C - - - - - 0x007FCB 01:BFBB: 35 7F     AND ram_player_stats,X
C - - - - - 0x007FCD 01:BFBD: 95 7F     STA ram_player_stats,X
C - - - - - 0x007FCF 01:BFBF: C9 30     CMP #$30
C - - - - - 0x007FD1 01:BFC1: 90 0A     BCC bra_BFCD
C - - - - - 0x007FD3 01:BFC3: A9 05     LDA #$05
C - - - - - 0x007FD5 01:BFC5: 8D 69 03  STA ram_0369_counter
C - - - - - 0x007FD8 01:BFC8: A9 3E     LDA #$3E
C - - - - - 0x007FDA 01:BFCA: 8D 6B 03  STA ram_036B_counter_00_3E
bra_BFCD:
C - - - - - 0x007FDD 01:BFCD: 8A        TXA
C - - - - - 0x007FDE 01:BFCE: F0 06     BEQ bra_BFD6
C - - - - - 0x007FE0 01:BFD0: A9 00     LDA #$00
C - - - - - 0x007FE2 01:BFD2: E0 03     CPX #$03
C - - - - - 0x007FE4 01:BFD4: D0 06     BNE bra_BFDC
bra_BFD6:   ; A = 00
C - - - - - 0x007FE6 01:BFD6: 95 6E     STA ram_score,X
C - - - - - 0x007FE8 01:BFD8: 95 6F     STA ram_score + $01,X
C - - - - - 0x007FEA 01:BFDA: 95 70     STA ram_score + $02,X
bra_BFDC:
C - - - - - 0x007FEC 01:BFDC: E0 02     CPX #$02
C - - - - - 0x007FEE 01:BFDE: B0 0A     BCS bra_BFEA
C - - - - - 0x007FF0 01:BFE0: 95 BE     STA ram_00BE,X
C - - - - - 0x007FF2 01:BFE2: 95 CD     STA ram_00CD,X
C - - - - - 0x007FF4 01:BFE4: A9 0F     LDA #$0F
C - - - - - 0x007FF6 01:BFE6: 35 B1     AND ram_current_player,X
C - - - - - 0x007FF8 01:BFE8: 95 B1     STA ram_current_player,X
bra_BFEA:
C - - - - - 0x007FFA 01:BFEA: CA        DEX
C - - - - - 0x007FFB 01:BFEB: 10 CC     BPL bra_BFB9_loop
C - - - - - 0x007FFD 01:BFED: 60        RTS



sub_BFEE_copy_buttons:
C - - - - - 0x007FFE 01:BFEE: A2 01     LDX #$01
bra_BFF0_loop:
C - - - - - 0x008000 01:BFF0: B5 FA     LDA ram_btn_hold_2,X
C - - - - - 0x008002 01:BFF2: A8        TAY
C - - - - - 0x008003 01:BFF3: 3D 71 03  AND ram_copy_btns,X
C - - - - - 0x008006 01:BFF6: 95 42     STA ram_btn_hold_1,X
C - - - - - 0x008008 01:BFF8: 98        TYA
C - - - - - 0x008009 01:BFF9: 9D 71 03  STA ram_copy_btns,X
C - - - - - 0x00800C 01:BFFC: CA        DEX
C - - - - - 0x00800D 01:BFFD: 10 F1     BPL bra_BFF0_loop
C - - - - - 0x00800F 01:BFFF: 60        RTS



sub_0x014011:
C D 0 - - - 0x014011 05:8001: A5 42     LDA ram_btn_hold_1
C - - - - - 0x014013 05:8003: F0 13     BEQ bra_8018
C - - - - - 0x014015 05:8005: A5 22     LDA ram_0022_t02
C - - - - - 0x014017 05:8007: C9 07     CMP #$07
C - - - - - 0x014019 05:8009: 90 0D     BCC bra_8018
C - - - - - 0x01401B 05:800B: C9 3A     CMP #$3A
C - - - - - 0x01401D 05:800D: F0 09     BEQ bra_8018
C - - - - - 0x01401F 05:800F: 20 14 82  JSR sub_8214
C - - - - - 0x014022 05:8012: 8D F1 03  STA ram_03F1
C - - - - - 0x014025 05:8015: 8D F2 03  STA ram_03F2
bra_8018:
C - - - - - 0x014028 05:8018: A4 22     LDY ram_0022_t02
C - - - - - 0x01402A 05:801A: B9 57 80  LDA tbl_8057,Y
C - - - - - 0x01402D 05:801D: 4C 43 80  JMP loc_8043



sub_8214:
.export ofs_020_0x014224_1F
ofs_020_0x014224_1F:
; con_8113_1F
C - - J - - 0x014224 05:8214: A9 00     LDA #$00
C - - - - - 0x014226 05:8216: 85 22     STA ram_0022_t02
C - - - - - 0x014228 05:8218: 18        CLC
C - - - - - 0x014229 05:8219: 60        RTS



tbl_8057:
- D 0 - - - 0x014067 05:8057: 00        .byte con_8113_00   ; 00 
- D 0 - - - 0x014068 05:8058: 02        .byte con_8113_02   ; 01 
- D 0 - - - 0x014069 05:8059: 02        .byte con_8113_02   ; 02 
- D 0 - - - 0x01406A 05:805A: 03        .byte con_8113_03   ; 03 
- D 0 - - - 0x01406B 05:805B: 04        .byte con_8113_04   ; 04 
- D 0 - - - 0x01406C 05:805C: 05        .byte con_8113_05   ; 05 
- D 0 - - - 0x01406D 05:805D: 06        .byte con_8113_06   ; 06 
- D 0 - - - 0x01406E 05:805E: 07        .byte con_8113_07   ; 07 
- D 0 - - - 0x01406F 05:805F: 01        .byte con_8113_01   ; 08 
- D 0 - - - 0x014070 05:8060: 02        .byte con_8113_02   ; 09 
- D 0 - - - 0x014071 05:8061: 08        .byte con_8113_08   ; 0A 
- D 0 - - - 0x014072 05:8062: 04        .byte con_8113_04   ; 0B 
- D 0 - - - 0x014073 05:8063: 05        .byte con_8113_05   ; 0C 
- D 0 - - - 0x014074 05:8064: 09        .byte con_8113_09   ; 0D 
- D 0 - - - 0x014075 05:8065: 07        .byte con_8113_07   ; 0E 
- D 0 - - - 0x014076 05:8066: 01        .byte con_8113_01   ; 0F 
- D 0 - - - 0x014077 05:8067: 02        .byte con_8113_02   ; 10 
- D 0 - - - 0x014078 05:8068: 0A        .byte con_8113_0A   ; 11 
- D 0 - - - 0x014079 05:8069: 0B        .byte con_8113_0B   ; 12 
- D 0 - - - 0x01407A 05:806A: 0C        .byte con_8113_0C   ; 13 
- D 0 - - - 0x01407B 05:806B: 0D        .byte con_8113_0D   ; 14 
- D 0 - - - 0x01407C 05:806C: 05        .byte con_8113_05   ; 15 
- D 0 - - - 0x01407D 05:806D: 09        .byte con_8113_09   ; 16 
- D 0 - - - 0x01407E 05:806E: 0E        .byte con_8113_0E   ; 17 
- D 0 - - - 0x01407F 05:806F: 0F        .byte con_8113_0F   ; 18 
- D 0 - - - 0x014080 05:8070: 10        .byte con_8113_10   ; 19 
- D 0 - - - 0x014081 05:8071: 11        .byte con_8113_11   ; 1A 
- D 0 - - - 0x014082 05:8072: 12        .byte con_8113_12   ; 1B 
- D 0 - - - 0x014083 05:8073: 13        .byte con_8113_13   ; 1C 
- D 0 - - - 0x014084 05:8074: 09        .byte con_8113_09   ; 1D 
- D 0 - - - 0x014085 05:8075: 12        .byte con_8113_12   ; 1E 
- D 0 - - - 0x014086 05:8076: 14        .byte con_8113_14   ; 1F 
- D 0 - - - 0x014087 05:8077: 09        .byte con_8113_09   ; 20 
- D 0 - - - 0x014088 05:8078: 12        .byte con_8113_12   ; 21 
- D 0 - - - 0x014089 05:8079: 15        .byte con_8113_15   ; 22 
- D 0 - - - 0x01408A 05:807A: 09        .byte con_8113_09   ; 23 
- D 0 - - - 0x01408B 05:807B: 12        .byte con_8113_12   ; 24 
- D 0 - - - 0x01408C 05:807C: 16        .byte con_8113_16   ; 25 
- D 0 - - - 0x01408D 05:807D: 09        .byte con_8113_09   ; 26 
- D 0 - - - 0x01408E 05:807E: 07        .byte con_8113_07   ; 27 
- D 0 - - - 0x01408F 05:807F: 01        .byte con_8113_01   ; 28 
- D 0 - - - 0x014090 05:8080: 02        .byte con_8113_02   ; 29 
- D 0 - - - 0x014091 05:8081: 17        .byte con_8113_17   ; 2A 
- D 0 - - - 0x014092 05:8082: 18        .byte con_8113_18   ; 2B 
- D 0 - - - 0x014093 05:8083: 12        .byte con_8113_12   ; 2C 
- D 0 - - - 0x014094 05:8084: 09        .byte con_8113_09   ; 2D 
- D 0 - - - 0x014095 05:8085: 19        .byte con_8113_19   ; 2E 
- D 0 - - - 0x014096 05:8086: 1A        .byte con_8113_1A   ; 2F 
- D 0 - - - 0x014097 05:8087: 12        .byte con_8113_12   ; 30 
- D 0 - - - 0x014098 05:8088: 1B        .byte con_8113_1B   ; 31 
- D 0 - - - 0x014099 05:8089: 09        .byte con_8113_09   ; 32 
- D 0 - - - 0x01409A 05:808A: 1C        .byte con_8113_1C   ; 33 
- D 0 - - - 0x01409B 05:808B: 1D        .byte con_8113_1D   ; 34 
- D 0 - - - 0x01409C 05:808C: 05        .byte con_8113_05   ; 35 
- D 0 - - - 0x01409D 05:808D: 1E        .byte con_8113_1E   ; 36 
- D 0 - - - 0x01409E 05:808E: 09        .byte con_8113_09   ; 37 
- D 0 - - - 0x01409F 05:808F: 07        .byte con_8113_07   ; 38 
- D 0 - - - 0x0140A0 05:8090: 1F        .byte con_8113_1F   ; 39 
- - - - - - 0x0140A1 05:8091: 20        .byte con_8113_20   ; 3A unused?



.export tbl_0x009948
tbl_0x009948:
- D 0 - - - 0x009948 02:9938: 00        .byte $00   ; 00 
- D 0 - - - 0x009949 02:9939: 19        .byte $19   ; 08 
- D 0 - - - 0x00994A 02:993A: E5        .byte $E5   ; 10 
- D 0 - - - 0x00994B 02:993B: 00        .byte $00   ; 18 
- D 0 - - - 0x00994C 02:993C: 26        .byte $26   ; 20 
- D 0 - - - 0x00994D 02:993D: 80        .byte $80   ; 28 
- D 0 - - - 0x00994E 02:993E: 90        .byte $90   ; 30 
- D 0 - - - 0x00994F 02:993F: 00        .byte $00   ; 38 



.export tbl_0x009950_bits
tbl_0x009950_bits:
- D 0 - - - 0x009950 02:9940: 80        .byte $80   ; 00 
- D 0 - - - 0x009951 02:9941: 40        .byte $40   ; 01 
- D 0 - - - 0x009952 02:9942: 20        .byte $20   ; 02 
- D 0 - - - 0x009953 02:9943: 10        .byte $10   ; 03 
- D 0 - - - 0x009954 02:9944: 08        .byte $08   ; 04 
- D 0 - - - 0x009955 02:9945: 04        .byte $04   ; 05 
- D 0 - - - 0x009956 02:9946: 02        .byte $02   ; 06 
- D 0 - - - 0x009957 02:9947: 01        .byte $01   ; 07 



sub_841B_000A_ASL_TAY:
.export sub_0x00842B_000A_ASL_TAY
sub_0x00842B_000A_ASL_TAY:
C - - - - - 0x00842B 02:841B: A5 0A     LDA ram_000A_t03
C - - - - - 0x00842D 02:841D: 0A        ASL
C - - - - - 0x00842E 02:841E: A8        TAY
C - - - - - 0x00842F 02:841F: 60        RTS



.export sub_0x008DD9_009F_AND_7F_TAY_DEY
sub_0x008DD9_009F_AND_7F_TAY_DEY:
C - - - - - 0x008DD9 02:8DC9: A5 9F     LDA ram_009F
C - - - - - 0x008DDB 02:8DCB: 29 7F     AND #$7F
C - - - - - 0x008DDD 02:8DCD: A8        TAY
C - - - - - 0x008DDE 02:8DCE: 88        DEY
C - - - - - 0x008DDF 02:8DCF: 60        RTS



sub_9A13:
C - - - - - 0x009A23 02:9A13: E0 0A     CPX #$0A
C - - - - - 0x009A25 02:9A15: B0 3B     BCS bra_9A52
.export loc_0x009A27
loc_0x009A27:
.export sub_0x009A27
sub_0x009A27:
; out
    ; A = 00
C D 0 - - - 0x009A27 02:9A17: 20 33 9A  JSR sub_9A33_clear_object_data
; A = 00
C - - - - - 0x009A2A 02:9A1A: 9D 00 06  STA ram_0600_obj,X
C - - - - - 0x009A2D 02:9A1D: 9D 82 07  STA ram_0782_unk,X
C - - - - - 0x009A30 02:9A20: 9D 78 07  STA ram_0778_unk,X
C - - - - - 0x009A33 02:9A23: 9D AA 07  STA ram_07AA_unk,X
C - - - - - 0x009A36 02:9A26: 9D B4 07  STA ram_07B4_unk,X
C - - - - - 0x009A39 02:9A29: 9D BE 07  STA ram_07BE_unk,X
C - - - - - 0x009A3C 02:9A2C: 9D C8 07  STA ram_07C8_unk,X
C - - - - - 0x009A3F 02:9A2F: 9D D2 07  STA ram_07D2_unk,X
C - - - - - 0x009A42 02:9A32: 60        RTS



sub_9A33_clear_object_data:
C - - - - - 0x009A43 02:9A33: A9 00     LDA #$00
C - - - - - 0x009A45 02:9A35: 9D 34 06  STA ram_obj_animation_hi,X
C - - - - - 0x009A48 02:9A38: 9D 82 06  STA ram_0682_obj,X
C - - - - - 0x009A4B 02:9A3B: 9D 36 07  STA ram_0736_obj,X
C - - - - - 0x009A4E 02:9A3E: 9D 4C 07  STA ram_074C_obj,X
C - - - - - 0x009A51 02:9A41: 9D 62 07  STA ram_0762_obj,X
C - - - - - 0x009A54 02:9A44: 9D 20 07  STA ram_0720_obj,X
sub_9A47:
.export sub_0x009A57
sub_0x009A57:
.export loc_0x009A57
loc_0x009A57:
C D 0 - - - 0x009A57 02:9A47: A9 00     LDA #$00
C - - - - - 0x009A59 02:9A49: 9D 0A 07  STA ram_070A_obj,X
.export sub_0x009A5C_clear_animation
sub_0x009A5C_clear_animation:
; out
    ; A = 00
C - - - - - 0x009A5C 02:9A4C: A9 00     LDA #$00
.export loc_0x009A5E
loc_0x009A5E:
C - - - - - 0x009A5E 02:9A4E: 9D 1A 06  STA ram_obj_animation_lo,X
C - - - - - 0x009A61 02:9A51: 60        RTS



bra_9A52:
.export sub_0x009A62
sub_0x009A62:
.export loc_0x009A62
loc_0x009A62:
.export ofs_020_0x009A62_06
ofs_020_0x009A62_06:
.export ofs_020_0x009A62_0A
ofs_020_0x009A62_0A:
.export ofs_020_0x009A62_0C
ofs_020_0x009A62_0C:
.export ofs_020_0x009A62_12
ofs_020_0x009A62_12:
.export ofs_020_0x009A62_16
ofs_020_0x009A62_16:
C D 0 - - - 0x009A62 02:9A52: BD 82 06  LDA ram_0682_obj,X
C - - - - - 0x009A65 02:9A55: F0 20     BEQ bra_9A77_RTS
C - - - - - 0x009A67 02:9A57: 20 33 9A  JSR sub_9A33_clear_object_data
C - - - - - 0x009A6A 02:9A5A: A9 FF     LDA #$FF
C - - - - - 0x009A6C 02:9A5C: 9D F4 06  STA ram_06F4_obj,X
C - - - - - 0x009A6F 02:9A5F: E0 12     CPX #$12
C - - - - - 0x009A71 02:9A61: B0 14     BCS bra_9A77_RTS
C - - - - - 0x009A73 02:9A63: A0 00     LDY #$00
C - - - - - 0x009A75 02:9A65: E0 0E     CPX #$0E
C - - - - - 0x009A77 02:9A67: 90 01     BCC bra_9A6A
C - - - - - 0x009A79 02:9A69: C8        INY ; 01
bra_9A6A:
C - - - - - 0x009A7A 02:9A6A: B9 83 00  LDA ram_bullet_counter,Y
C - - - - - 0x009A7D 02:9A6D: 38        SEC
C - - - - - 0x009A7E 02:9A6E: E9 01     SBC #$01
C - - - - - 0x009A80 02:9A70: 10 02     BPL bra_9A74
- - - - - - 0x009A82 02:9A72: A9 00     LDA #$00
bra_9A74:
C - - - - - 0x009A84 02:9A74: 99 83 00  STA ram_bullet_counter,Y
bra_9A77_RTS:
C - - - - - 0x009A87 02:9A77: 60        RTS



.export sub_0x0091D5_add_to_pos_X
sub_0x0091D5_add_to_pos_X:
; in
    ; A = how much to add
C - - - - - 0x0091D5 02:91C5: 18        CLC
C - - - - - 0x0091D6 02:91C6: 7D 4E 06  ADC ram_obj_pos_X,X
.export loc_0x0091D9_set_pos_X
loc_0x0091D9_set_pos_X:
; bzk optimize
C - - - - - 0x0091D9 02:91C9: 9D 4E 06  STA ram_obj_pos_X,X
C - - - - - 0x0091DC 02:91CC: 60        RTS



sub_93B1_06B2x_LSRx4_TAY:
.export sub_0x0093C1_06B2x_LSRx4_TAY
sub_0x0093C1_06B2x_LSRx4_TAY:
C - - - - - 0x0093C1 02:93B1: BD B2 06  LDA ram_06B2_obj,X
.export sub_0x0093C4_LSRx4_TAY
sub_0x0093C4_LSRx4_TAY:
; / 10
C - - - - - 0x0093C4 02:93B4: 4A        LSR
.export sub_0x0093C4_LSRx3_TAY
sub_0x0093C4_LSRx3_TAY:
; / 08
C - - - - - 0x0093C5 02:93B5: 4A        LSR
C - - - - - 0x0093C6 02:93B6: 4A        LSR
C - - - - - 0x0093C7 02:93B7: 4A        LSR
C - - - - - 0x0093C8 02:93B8: A8        TAY
C - - - - - 0x0093C9 02:93B9: 60        RTS



.export loc_0x008E20
loc_0x008E20:
.export sub_0x008E20
sub_0x008E20:
C D 0 - - - 0x008E20 02:8E10: BD 82 06  LDA ram_0682_obj,X
C - - - - - 0x008E23 02:8E13: 29 7F     AND #$7F
C - - - - - 0x008E25 02:8E15: C9 08     CMP #$08
C - - - - - 0x008E27 02:8E17: F0 D0     BEQ bra_9F83_RTS
.export sub_0x008E29
sub_0x008E29:
C - - - - - 0x008E29 02:8E19: 20 52 9F  JSR sub_9F52
C - - - - - 0x008E2C 02:8E1C: 4C 98 98  JMP loc_9898



sub_9F52:
.export sub_0x009F62
sub_0x009F62:
C - - - - - 0x009F62 02:9F52: A9 00     LDA #$00
C - - - - - 0x009F64 02:9F54: 85 90     STA ram_0090_pos_X
C - - - - - 0x009F66 02:9F56: 85 91     STA ram_0091_pos_Y
C - - - - - 0x009F68 02:9F58: 85 92     STA ram_0092_lo
C - - - - - 0x009F6A 02:9F5A: 85 93     STA ram_0093_hi
C - - - - - 0x009F6C 02:9F5C: 20 72 91  JSR sub_9172_06B2x_AND_0F
C - - - - - 0x009F6F 02:9F5F: F0 22     BEQ bra_9F83_RTS
C - - - - - 0x009F71 02:9F61: 38        SEC
C - - - - - 0x009F72 02:9F62: E9 01     SBC #$01
C - - - - - 0x009F74 02:9F64: 85 1B     STA ram_001B_t05
C - - - - - 0x009F76 02:9F66: 20 B1 93  JSR sub_93B1_06B2x_LSRx4_TAY
C - - - - - 0x009F79 02:9F69: 4A        LSR
C - - - - - 0x009F7A 02:9F6A: 85 1C     STA ram_001C_t06_table_index
C - - - - - 0x009F7C 02:9F6C: A8        TAY
C - - - - - 0x009F7D 02:9F6D: B9 B1 9F  LDA tbl_9FB1,Y
C - - - - - 0x009F80 02:9F70: 20 84 9F  JSR sub_9F84
C - - - - - 0x009F83 02:9F73: 85 90     STA ram_0090_pos_X
C - - - - - 0x009F85 02:9F75: 84 91     STY ram_0091_pos_Y
C - - - - - 0x009F87 02:9F77: A4 1C     LDY ram_001C_t06_table_index
C - - - - - 0x009F89 02:9F79: B9 B9 9F  LDA tbl_9FB9,Y
C - - - - - 0x009F8C 02:9F7C: 20 84 9F  JSR sub_9F84
C - - - - - 0x009F8F 02:9F7F: 85 92     STA ram_0092_lo
C - - - - - 0x009F91 02:9F81: 84 93     STY ram_0093_hi
bra_9F83_RTS:
C - - - - - 0x009F93 02:9F83: 60        RTS



loc_9898:
.export sub_0x0098A8
sub_0x0098A8:
C D 0 - - - 0x0098A8 02:9898: 20 03 99  JSR sub_9903
C - - - - - 0x0098AB 02:989B: B0 D5     BCS bra_9F83_RTS
C - - - - - 0x0098AD 02:989D: 20 57 99  JSR sub_9957
C - - - - - 0x0098B0 02:98A0: B0 D0     BCS bra_9F83_RTS
C - - - - - 0x0098B2 02:98A2: 20 4A 99  JSR sub_994A
C - - - - - 0x0098B5 02:98A5: B0 CB     BCS bra_9F83_RTS
C - - - - - 0x0098B7 02:98A7: A5 92     LDA ram_0092_lo
C - - - - - 0x0098B9 02:98A9: 85 00     STA ram_0000_t67_lo
C - - - - - 0x0098BB 02:98AB: A5 93     LDA ram_0093_hi
C - - - - - 0x0098BD 02:98AD: 85 01     STA ram_0001_t12_hi
C - - - - - 0x0098BF 02:98AF: 20 D5 99  JSR sub_99D5
.export sub_0x0098C2
sub_0x0098C2:
C - - - - - 0x0098C2 02:98B2: BD 82 07  LDA ram_0782_unk,X
C - - - - - 0x0098C5 02:98B5: C9 9C     CMP #$9C
C - - - - - 0x0098C7 02:98B7: F0 12     BEQ bra_98CB
C - - - - - 0x0098C9 02:98B9: C9 0A     CMP #$0A
C - - - - - 0x0098CB 02:98BB: F0 1B     BEQ bra_98D8
C - - - - - 0x0098CD 02:98BD: C9 1F     CMP #$1F
C - - - - - 0x0098CF 02:98BF: F0 17     BEQ bra_98D8
C - - - - - 0x0098D1 02:98C1: 20 78 91  JSR sub_9178_stage_AND_01
C - - - - - 0x0098D4 02:98C4: D0 1F     BNE bra_98E5    ; if upper view
; if side view
C - - - - - 0x0098D6 02:98C6: BD 82 07  LDA ram_0782_unk,X
C - - - - - 0x0098D9 02:98C9: 30 1A     BMI bra_98E5
bra_98CB:
C - - - - - 0x0098DB 02:98CB: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x0098DE 02:98CE: C9 F8     CMP #$F8
C - - - - - 0x0098E0 02:98D0: B0 13     BCS bra_98E5
C - - - - - 0x0098E2 02:98D2: C9 D0     CMP #$D0
C - - - - - 0x0098E4 02:98D4: B0 3E     BCS bra_9914
C - - - - - 0x0098E6 02:98D6: 90 0D     BCC bra_98E5
bra_98D8:
C - - - - - 0x0098E8 02:98D8: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x0098EB 02:98DB: C9 DE     CMP #$DE
C - - - - - 0x0098ED 02:98DD: 90 06     BCC bra_98E5
C - - - - - 0x0098EF 02:98DF: 20 47 9A  JSR sub_9A47
C - - - - - 0x0098F2 02:98E2: 9D 78 07  STA ram_0778_unk,X
bra_98E5:
C - - - - - 0x0098F5 02:98E5: BD DE 06  LDA ram_obj_spd_Y,X
C - - - - - 0x0098F8 02:98E8: 18        CLC
C - - - - - 0x0098F9 02:98E9: 65 00     ADC ram_0000_t47_lo
C - - - - - 0x0098FB 02:98EB: 9D DE 06  STA ram_obj_spd_Y,X
C - - - - - 0x0098FE 02:98EE: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x009901 02:98F1: 65 01     ADC ram_0001_t04_hi
C - - - - - 0x009903 02:98F3: 9D 68 06  STA ram_obj_pos_Y,X
C - - - - - 0x009906 02:98F6: 6A        ROR
C - - - - - 0x009907 02:98F7: 45 01     EOR ram_0001_t04_hi
C - - - - - 0x009909 02:98F9: 2A        ROL
C - - - - - 0x00990A 02:98FA: 90 4C     BCC bra_9948
C - - - - - 0x00990C 02:98FC: A0 80     LDY #$80
C - - - - - 0x00990E 02:98FE: A9 C0     LDA #$C0
C - - - - - 0x009910 02:9900: 4C 95 99  JMP loc_9995



sub_9903:
C - - - - - 0x009913 02:9903: BD 00 06  LDA ram_0600_obj,X
C - - - - - 0x009916 02:9906: 29 30     AND #$30
C - - - - - 0x009918 02:9908: F0 3E     BEQ bra_9948
C - - - - - 0x00991A 02:990A: BD 4E 06  LDA ram_obj_pos_X,X
loc_990D:
C D 0 - - - 0x00991D 02:990D: 38        SEC
C - - - - - 0x00991E 02:990E: E9 40     SBC #$40
C - - - - - 0x009920 02:9910: C9 80     CMP #$80
C - - - - - 0x009922 02:9912: B0 34     BCS bra_9948
bra_9914:
loc_9914:
C D 0 - - - 0x009924 02:9914: E0 0A     CPX #$0A
C - - - - - 0x009926 02:9916: B0 1B     BCS bra_9933
C - - - - - 0x009928 02:9918: BD 82 07  LDA ram_0782_unk,X
C - - - - - 0x00992B 02:991B: 29 07     AND #$07
C - - - - - 0x00992D 02:991D: A8        TAY
C - - - - - 0x00992E 02:991E: B9 40 99  LDA tbl_0x009950_bits,Y
C - - - - - 0x009931 02:9921: 85 00     STA ram_0000_t68
C - - - - - 0x009933 02:9923: BD 82 07  LDA ram_0782_unk,X
; / 08
C - - - - - 0x009936 02:9926: 4A        LSR
C - - - - - 0x009937 02:9927: 4A        LSR
C - - - - - 0x009938 02:9928: 4A        LSR
C - - - - - 0x009939 02:9929: 29 07     AND #$07
C - - - - - 0x00993B 02:992B: A8        TAY
C - - - - - 0x00993C 02:992C: B9 38 99  LDA tbl_0x009948,Y
C - - - - - 0x00993F 02:992F: 25 00     AND ram_0000_t68
C - - - - - 0x009941 02:9931: D0 15     BNE bra_9948
bra_9933:
C - - - - - 0x009943 02:9933: 20 13 9A  JSR sub_9A13
C - - - - - 0x009946 02:9936: 38        SEC
C - - - - - 0x009947 02:9937: 60        RTS



bra_9948:
C - - - - - 0x009958 02:9948: 18        CLC
C - - - - - 0x009959 02:9949: 60        RTS



sub_994A:
C - - - - - 0x00995A 02:994A: BD 00 06  LDA ram_0600_obj,X
C - - - - - 0x00995D 02:994D: 29 C0     AND #$C0
C - - - - - 0x00995F 02:994F: F0 F7     BEQ bra_9948
C - - - - - 0x009961 02:9951: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x009964 02:9954: 4C 0D 99  JMP loc_990D



sub_9957:
C - - - - - 0x009967 02:9957: E0 0A     CPX #$0A
C - - - - - 0x009969 02:9959: B0 14     BCS bra_996F
C - - - - - 0x00996B 02:995B: BD 82 07  LDA ram_0782_unk,X
C - - - - - 0x00996E 02:995E: C9 08     CMP #$08
C - - - - - 0x009970 02:9960: B0 0D     BCS bra_996F
C - - - - - 0x009972 02:9962: A9 00     LDA #$00
C - - - - - 0x009974 02:9964: 85 00     STA ram_0000_t67_lo
C - - - - - 0x009976 02:9966: 85 01     STA ram_0001_t12_hi
C - - - - - 0x009978 02:9968: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x00997B 02:996B: 29 20     AND #$20
C - - - - - 0x00997D 02:996D: D0 08     BNE bra_9977
bra_996F:
C - - - - - 0x00997F 02:996F: A5 90     LDA ram_0090_pos_X
C - - - - - 0x009981 02:9971: 85 00     STA ram_0000_t67_lo
C - - - - - 0x009983 02:9973: A5 91     LDA ram_0091_pos_Y
C - - - - - 0x009985 02:9975: 85 01     STA ram_0001_t12_hi
bra_9977:
C - - - - - 0x009987 02:9977: 20 C8 99  JSR sub_99C8
.export sub_0x00998A
sub_0x00998A:
C - - - - - 0x00998A 02:997A: BD C8 06  LDA ram_obj_spd_X,X
C - - - - - 0x00998D 02:997D: 18        CLC
C - - - - - 0x00998E 02:997E: 65 00     ADC ram_0000_t47_lo
C - - - - - 0x009990 02:9980: 9D C8 06  STA ram_obj_spd_X,X
C - - - - - 0x009993 02:9983: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x009996 02:9986: 65 01     ADC ram_0001_t04_hi
C - - - - - 0x009998 02:9988: 9D 4E 06  STA ram_obj_pos_X,X
C - - - - - 0x00999B 02:998B: 6A        ROR
C - - - - - 0x00999C 02:998C: 45 01     EOR ram_0001_t04_hi
C - - - - - 0x00999E 02:998E: 2A        ROL
C - - - - - 0x00999F 02:998F: 90 B7     BCC bra_9948
C - - - - - 0x0099A1 02:9991: A0 20     LDY #$20
C - - - - - 0x0099A3 02:9993: A9 30     LDA #$30
loc_9995:   ; A = C0, Y = 80
C D 0 - - - 0x0099A5 02:9995: 85 02     STA ram_0002_t26
C - - - - - 0x0099A7 02:9997: 49 FF     EOR #$FF
C - - - - - 0x0099A9 02:9999: 85 03     STA ram_0003_t18
C - - - - - 0x0099AB 02:999B: 98        TYA
C - - - - - 0x0099AC 02:999C: A4 01     LDY ram_0001_t04_hi
C - - - - - 0x0099AE 02:999E: 10 01     BPL bra_99A1
C - - - - - 0x0099B0 02:99A0: 4A        LSR
bra_99A1:
C - - - - - 0x0099B1 02:99A1: 85 00     STA ram_0000_t69
C - - - - - 0x0099B3 02:99A3: BD 00 06  LDA ram_0600_obj,X
C - - - - - 0x0099B6 02:99A6: 25 02     AND ram_0002_t26
C - - - - - 0x0099B8 02:99A8: 45 00     EOR ram_0000_t69
C - - - - - 0x0099BA 02:99AA: C5 02     CMP ram_0002_t26
C - - - - - 0x0099BC 02:99AC: F0 17     BEQ bra_99C5
C - - - - - 0x0099BE 02:99AE: 4A        LSR
C - - - - - 0x0099BF 02:99AF: A4 01     LDY ram_0001_t04_hi
C - - - - - 0x0099C1 02:99B1: 10 02     BPL bra_99B5
; * 04
C - - - - - 0x0099C3 02:99B3: 0A        ASL
C - - - - - 0x0099C4 02:99B4: 0A        ASL
bra_99B5:
C - - - - - 0x0099C5 02:99B5: 85 00     STA ram_0000_t70
C - - - - - 0x0099C7 02:99B7: BD 00 06  LDA ram_0600_obj,X
C - - - - - 0x0099CA 02:99BA: 25 03     AND ram_0003_t18
C - - - - - 0x0099CC 02:99BC: 05 00     ORA ram_0000_t70
C - - - - - 0x0099CE 02:99BE: 9D 00 06  STA ram_0600_obj,X
C - - - - - 0x0099D1 02:99C1: 29 08     AND #$08
C - - - - - 0x0099D3 02:99C3: D0 30     BNE bra_99C6
bra_99C5:
C - - - - - 0x0099D5 02:99C5: 4C 14 99  JMP loc_9914
bra_99C6:
                                        CLC
                                        RTS



sub_99C8:
.export sub_0x0099D8
sub_0x0099D8:
C - - - - - 0x0099D8 02:99C8: A5 6A     LDA ram_006A
C - - - - - 0x0099DA 02:99CA: 85 02     STA ram_0002_t27
C - - - - - 0x0099DC 02:99CC: A5 69     LDA ram_0069
C - - - - - 0x0099DE 02:99CE: 85 03     STA ram_0003_t19
C - - - - - 0x0099E0 02:99D0: A5 62     LDA ram_0062_fr
C - - - - - 0x0099E2 02:99D2: 4C DF 99  JMP loc_99DF



sub_99D5:
.export sub_0x0099E5
sub_0x0099E5:
C - - - - - 0x0099E5 02:99D5: A5 6C     LDA ram_006C
C - - - - - 0x0099E7 02:99D7: 85 02     STA ram_0002_t27
C - - - - - 0x0099E9 02:99D9: A5 6B     LDA ram_006B
C - - - - - 0x0099EB 02:99DB: 85 03     STA ram_0003_t19
C - - - - - 0x0099ED 02:99DD: A5 65     LDA ram_0065_fr
loc_99DF:
C D 0 - - - 0x0099EF 02:99DF: 85 04     STA ram_0004_t15
C - - - - - 0x0099F1 02:99E1: 20 F7 99  JSR sub_99F7
C - - - - - 0x0099F4 02:99E4: A9 00     LDA #$00
C - - - - - 0x0099F6 02:99E6: 85 02     STA ram_0002_t61_useless_00
C - - - - - 0x0099F8 02:99E8: A5 00     LDA ram_0000_t67_lo
C - - - - - 0x0099FA 02:99EA: 38        SEC
; bzk optimize, always 00
C - - - - - 0x0099FB 02:99EB: E5 02     SBC ram_0002_t61_useless_00
C - - - - - 0x0099FD 02:99ED: 85 00     STA ram_0000_t47_lo
C - - - - - 0x0099FF 02:99EF: A5 01     LDA ram_0001_t12_hi
C - - - - - 0x009A01 02:99F1: E5 03     SBC ram_0003_t19
C - - - - - 0x009A03 02:99F3: 85 01     STA ram_0001_t04_hi
C - - - - - 0x009A05 02:99F5: 18        CLC
C - - - - - 0x009A06 02:99F6: 60        RTS



sub_99F7:
C - - - - - 0x009A07 02:99F7: A5 03     LDA ram_0003_t19
C - - - - - 0x009A09 02:99F9: 10 0E     BPL bra_9A09
C - - - - - 0x009A0B 02:99FB: A5 02     LDA ram_0002_t27
C - - - - - 0x009A0D 02:99FD: F0 13     BEQ bra_9A12_RTS
C - - - - - 0x009A0F 02:99FF: 20 07 95  EOR #$FF
                                        CLC
                                        ADC #$01
C - - - - - 0x009A12 02:9A02: 18        CLC
C - - - - - 0x009A13 02:9A03: 65 04     ADC ram_0004_t15
C - - - - - 0x009A15 02:9A05: B0 0B     BCS bra_9A12_RTS
C - - - - - 0x009A17 02:9A07: 90 07     BCC bra_9A10    ; jmp
bra_9A09:
C - - - - - 0x009A19 02:9A09: A5 04     LDA ram_0004_t15
C - - - - - 0x009A1B 02:9A0B: 38        SEC
C - - - - - 0x009A1C 02:9A0C: E5 02     SBC ram_0002_t27
C - - - - - 0x009A1E 02:9A0E: B0 02     BCS bra_9A12_RTS
bra_9A10:
C - - - - - 0x009A20 02:9A10: E6 03     INC ram_0003_t19
bra_9A12_RTS:
C - - - - - 0x009A22 02:9A12: 60        RTS



tbl_9FB1:
- D 0 - - - 0x009FC1 02:9FB1: 01        .byte $01   ; 00 
- D 0 - - - 0x009FC2 02:9FB2: 10        .byte $10   ; 02 
- D 0 - - - 0x009FC3 02:9FB3: 00        .byte $00   ; 04 
- D 0 - - - 0x009FC4 02:9FB4: 90        .byte $90   ; 06 
- D 0 - - - 0x009FC5 02:9FB5: 81        .byte $81   ; 08 
- D 0 - - - 0x009FC6 02:9FB6: 90        .byte $90   ; 0A 
- D 0 - - - 0x009FC7 02:9FB7: 00        .byte $00   ; 0C 
- D 0 - - - 0x009FC8 02:9FB8: 10        .byte $10   ; 0E 



tbl_9FB9:
- D 0 - - - 0x009FC9 02:9FB9: 00        .byte $00   ; 00 
- D 0 - - - 0x009FCA 02:9FBA: 10        .byte $10   ; 02 
- D 0 - - - 0x009FCB 02:9FBB: 01        .byte $01   ; 04 
- D 0 - - - 0x009FCC 02:9FBC: 10        .byte $10   ; 06 
- D 0 - - - 0x009FCD 02:9FBD: 00        .byte $00   ; 08 
- D 0 - - - 0x009FCE 02:9FBE: 90        .byte $90   ; 0A 
- D 0 - - - 0x009FCF 02:9FBF: 81        .byte $81   ; 0C 
- D 0 - - - 0x009FD0 02:9FC0: 90        .byte $90   ; 0E 



sub_9F84:
; in
    ; A = 
    ; ram_001B_t05
; out
    ; A = 
    ; Y = 
C - - - - - 0x009F94 02:9F84: 85 1D     STA ram_001D_t03
C - - - - - 0x009F96 02:9F86: F0 04     BEQ bra_9F8C
C - - - - - 0x009F98 02:9F88: 18        CLC
C - - - - - 0x009F99 02:9F89: 65 1B     ADC ram_001B_t05
C - - - - - 0x009F9B 02:9F8B: 0A        ASL
bra_9F8C:   ; A = 00
C - - - - - 0x009F9C 02:9F8C: A8        TAY
C - - - - - 0x009F9D 02:9F8D: B9 C1 9F  LDA tbl_9FC1,Y
C - - - - - 0x009FA0 02:9F90: 85 0E     STA ram_000E_t04
C - - - - - 0x009FA2 02:9F92: B9 C2 9F  LDA tbl_9FC1 + $01,Y
C - - - - - 0x009FA5 02:9F95: 85 0F     STA ram_000F_t02
C - - - - - 0x009FA7 02:9F97: A5 1D     LDA ram_001D_t03
C - - - - - 0x009FA9 02:9F99: 10 11     BPL bra_9FAC
C - - - - - 0x009FAB 02:9F9B: A5 0F     LDA ram_000F_t02
C - - - - - 0x009FAD 02:9F9D: 49 FF     EOR #$FF
C - - - - - 0x009FAF 02:9F9F: 85 0F     STA ram_000F_t02
C - - - - - 0x009FB1 02:9FA1: A5 0E     LDA ram_000E_t04
C - - - - - 0x009FB3 02:9FA3: 20 07 95  EOR #$FF
                                        CLC
                                        ADC #$01
C - - - - - 0x009FB6 02:9FA6: 85 0E     STA ram_000E_t04
C - - - - - 0x009FB8 02:9FA8: 90 02     BCC bra_9FAC
C - - - - - 0x009FBA 02:9FAA: E6 0F     INC ram_000F_t02
bra_9FAC:
C - - - - - 0x009FBC 02:9FAC: A5 0E     LDA ram_000E_t04
C - - - - - 0x009FBE 02:9FAE: A4 0F     LDY ram_000F_t02
C - - - - - 0x009FC0 02:9FB0: 60        RTS



tbl_9FC1:
- D 0 - - - 0x009FD1 02:9FC1: 00        .byte $00, $00   ; 
- D 0 - - - 0x009FD3 02:9FC3: 80        .byte $80, $00   ; 
- D 0 - - - 0x009FD5 02:9FC5: 00        .byte $00, $01   ; 
- D 0 - - - 0x009FD7 02:9FC7: 30        .byte $30, $01   ; 
- D 0 - - - 0x009FD9 02:9FC9: 00        .byte $00, $02   ; 
- D 0 - - - 0x009FDB 02:9FCB: 40        .byte $40, $00   ; 
- D 0 - - - 0x009FDD 02:9FCD: 00        .byte $00, $03   ; 
- D 0 - - - 0x009FDF 02:9FCF: 80        .byte $80, $03   ; 
- D 0 - - - 0x009FE1 02:9FD1: 00        .byte $00, $04   ; 
- D 0 - - - 0x009FE3 02:9FD3: 80        .byte $80, $01   ; 
- D 0 - - - 0x009FE5 02:9FD5: 00        .byte $00, $05   ; 
- D 0 - - - 0x009FE7 02:9FD7: 80        .byte $80, $05   ; 
- D 0 - - - 0x009FE9 02:9FD9: 00        .byte $00, $06   ; 
- D 0 - - - 0x009FEB 02:9FDB: 80        .byte $80, $06   ; 
- D 0 - - - 0x009FED 02:9FDD: 00        .byte $00, $07   ; 
- D 0 - - - 0x009FEF 02:9FDF: 80        .byte $80, $07   ; 
- D 0 - - - 0x009FF1 02:9FE1: 5A        .byte $5A, $00   ; 
- D 0 - - - 0x009FF3 02:9FE3: B5        .byte $B5, $00   ; 
- D 0 - - - 0x009FF5 02:9FE5: D6        .byte $D6, $00   ; 
- D 0 - - - 0x009FF7 02:9FE7: 6A        .byte $6A, $01   ; 
- - - - - - 0x009FF9 02:9FE9: C4        .byte $C4, $01   ; 
- D 0 - - - 0x009FFB 02:9FEB: 1F        .byte $1F, $02   ; 
- D 0 - - - 0x009FFD 02:9FED: 79        .byte $79, $02   ; 
- D 0 - - - 0x009FFF 02:9FEF: D4        .byte $D4, $02   ; 
- - - - - - 0x00A001 02:9FF1: 0F        .byte $0F, $01   ; 
- - - - - - 0x00A003 02:9FF3: 89        .byte $89, $03   ; 
- D 0 - - - 0x00A005 02:9FF5: E3        .byte $E3, $03   ; 
- D 0 - - - 0x00A007 02:9FF7: 3E        .byte $3E, $04   ; 
- - - - - - 0x00A009 02:9FF9: 98        .byte $98, $04   ; 
- - - - - - 0x00A00B 02:9FFB: F3        .byte $F3, $04   ; 
- - - - - - 0x00A00D 02:9FFD: 4D        .byte $4D, $05   ; 



sub_9172_06B2x_AND_0F:
.export sub_0x009182_06B2x_AND_0F
sub_0x009182_06B2x_AND_0F:
C - - - - - 0x009182 02:9172: BD B2 06  LDA ram_06B2_obj,X
C - - - - - 0x009185 02:9175: 29 0F     AND #$0F
C - - - - - 0x009187 02:9177: 60        RTS



sub_9178_stage_AND_01:
.export sub_0x009188_stage_AND_01
sub_0x009188_stage_AND_01:
; out
    ; Z
        ; 0 = upper view (stages 01/03 (2/4))
        ; 1 = size view (stages 00/02/04 (1/3/5))
; bzk optimize, same code as 0x01F6A1
C - - - - - 0x009188 02:9178: A5 75     LDA ram_stage
C - - - - - 0x00918A 02:917A: 29 01     AND #$01
C - - - - - 0x00918C 02:917C: 60        RTS



.export loc_0x009672
loc_0x009672:
C D 0 - - - 0x009672 02:9662: BD BE 07  LDA ram_07BE_unk,X
; * 04
C - - - - - 0x009675 02:9665: 0A        ASL
C - - - - - 0x009676 02:9666: 0A        ASL
C - - - - - 0x009677 02:9667: A8        TAY
C - - - - - 0x009678 02:9668: B1 00     LDA (ram_0000_t08_data),Y
C - - - - - 0x00967A 02:966A: C8        INY
C - - - - - 0x00967B 02:966B: 85 02     STA ram_0002_t09_lo
C - - - - - 0x00967D 02:966D: B1 00     LDA (ram_0000_t08_data),Y
C - - - - - 0x00967F 02:966F: C8        INY
C - - - - - 0x009680 02:9670: 85 03     STA ram_0003_t02
C - - - - - 0x009682 02:9672: B1 00     LDA (ram_0000_t08_data),Y
C - - - - - 0x009684 02:9674: C8        INY
C - - - - - 0x009685 02:9675: 85 04     STA ram_0004_t04
C - - - - - 0x009687 02:9677: B1 00     LDA (ram_0000_t08_data),Y
C - - - - - 0x009689 02:9679: 85 05     STA ram_0005_t01
C - - - - - 0x00968B 02:967B: 60        RTS



sub_0x009768:
.export sub_0x009768
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x009768 02:9758: AD 82 07  LDA ram_0782_unk
C - - - - - 0x00976B 02:975B: 18        CLC
C - - - - - 0x00976C 02:975C: 6D 83 07  ADC ram_0782_unk + $01
C - - - - - 0x00976F 02:975F: C9 5C     CMP #$5C
C - - - - - 0x009771 02:9761: 60        RTS



sub_F327:
.export sub_0x01F337
sub_0x01F337:
C - - - - - 0x01F337 07:F327: A9 00     LDA #$00
C - - - - - 0x01F339 07:F329: 8D 78 07  STA ram_0778_unk
C - - - - - 0x01F33C 07:F32C: 8D 79 07  STA ram_0778_unk + $01
C - - - - - 0x01F33F 07:F32F: A2 17     LDX #$17
bra_F331_loop:
C - - - - - 0x01F341 07:F331: 9D 1A 06  STA ram_obj_animation_lo,X
C - - - - - 0x01F344 07:F334: CA        DEX
C - - - - - 0x01F345 07:F335: 10 FA     BPL bra_F331_loop
C - - - - - 0x01F347 07:F337: 60        RTS



.export sub_0x009013
sub_0x009013:
; out
    ; C
        ; 0 = 
        ; 1 = 
    ; Z
        ; 0 = 
        ; 1 = 
C - - - - - 0x009013 02:9003: BD 36 07  LDA ram_0736_obj,X
C D 0 - - - 0x009016 02:9006: 29 03     AND #$03
C - - - - - 0x009018 02:9008: D0 D7     BNE bra_9009
C - - - - - 0x00901A 02:900A: 18        CLC
C - - - - - 0x00901B 02:900B: 60        RTS
bra_9009:
                                        SEC
                                        RTS



.export sub_0x00801F
sub_0x00801F:
.export loc_0x00801F
loc_0x00801F:
C - - - - - 0x00801F 02:800F: A2 02     LDX #$02
bra_8011_loop:
C - - - - - 0x008021 02:8011: 20 13 9A  JSR sub_9A13
C - - - - - 0x008024 02:8014: E8        INX
C - - - - - 0x008025 02:8015: E0 16     CPX #$16
C - - - - - 0x008027 02:8017: 90 F8     BCC bra_8011_loop
C - - - - - 0x008029 02:8019: 60        RTS



.export loc_0x009782
loc_0x009782:
.export sub_0x009782
sub_0x009782:
C - - - - - 0x009782 02:9772: BD 82 06  LDA ram_0682_obj,X
C - - - - - 0x009785 02:9775: F0 37     BEQ bra_9761_RTS
C - - - - - 0x009787 02:9777: BD 0A 07  LDA ram_070A_obj,X
C - - - - - 0x00978A 02:977A: F0 32     BEQ bra_9761_RTS
C - - - - - 0x00978C 02:977C: 30 30     BMI bra_9761_RTS
C - - - - - 0x00978E 02:977E: A9 24     LDA #con_F3D6_24
C - - - - - 0x009790 02:9780: 4C B3 F3  JMP loc_0x01F3C3_execute_script
bra_9761_RTS:
                                        RTS



.export tbl_0x00EF91
tbl_0x00EF91:
; bzk optimize, переместить в банк 04 (todo)
; boss handlers?
- D 1 - - - 0x00EF91 03:AF81: 8F AF     .word _off010_AF8F_00
- D 1 - - - 0x00EF93 03:AF83: 43 B0     .word _off010_B043_02
- D 1 - - - 0x00EF95 03:AF85: 0F B1     .word _off010_B10F_04
- D 1 - - - 0x00EF97 03:AF87: 92 B1     .word _off010_B192_06
- D 1 - - - 0x00EF99 03:AF89: 30 B2     .word _off010_B230_08
- D 1 - - - 0x00EF9B 03:AF8B: CA B2     .word _off010_B2CA_0A
- D 1 - - - 0x00EF9D 03:AF8D: 4A B1     .word _off010_B14A_0C



_off010_AF8F_00:
- D 1 - I - 0x00EF9F 03:AF8F: 18        .byte $18   ; 
- D 1 - I - 0x00EFA0 03:AF90: 1B        .byte $1B   ; 
- D 1 - I - 0x00EFA1 03:AF91: 23        .byte $23   ; 
- D 1 - I - 0x00EFA2 03:AF92: 00        .byte $00   ; 
- D 1 - I - 0x00EFA3 03:AF93: 21        .byte $21   ; 
- D 1 - I - 0x00EFA4 03:AF94: 0A        .byte $0A   ; 
- D 1 - I - 0x00EFA5 03:AF95: 0B        .byte $0B   ; 
- D 1 - I - 0x00EFA6 03:AF96: 90        .byte con_music_90   ; 
- D 1 - I - 0x00EFA7 03:AF97: 0A        .byte $0A   ; 
- D 1 - I - 0x00EFA8 03:AF98: 11        .byte $11   ; 
- D 1 - I - 0x00EFA9 03:AF99: 0C        .byte $0C   ; 
- D 1 - I - 0x00EFAA 03:AF9A: 06        .byte $06   ; 
- D 1 - I - 0x00EFAB 03:AF9B: 20        .byte $20   ; 
- D 1 - I - 0x00EFAC 03:AF9C: 83        .byte $83   ; 
- D 1 - I - 0x00EFAD 03:AF9D: 18        .byte $18   ; 
- D 1 - I - 0x00EFAE 03:AF9E: 04        .byte $04   ; 
- D 1 - I - 0x00EFAF 03:AF9F: 10        .byte $10   ; 
- D 1 - I - 0x00EFB0 03:AFA0: 00        .byte $00   ; 
- D 1 - I - 0x00EFB1 03:AFA1: 03        .byte $03   ; 
- D 1 - I - 0x00EFB2 03:AFA2: 12        .byte $12   ; 
- D 1 - I - 0x00EFB3 03:AFA3: 03        .byte $03   ; 
- D 1 - I - 0x00EFB4 03:AFA4: 00        .byte $00   ; 
- - - - - - 0x00EFB5 03:AFA5: 07        .byte $07   ; 
- - - - - - 0x00EFB6 03:AFA6: 0B        .byte $0B   ; 
- D 1 - I - 0x00EFB7 03:AFA7: 10        .byte $10   ; 
- D 1 - I - 0x00EFB8 03:AFA8: 01        .byte $01   ; 
- D 1 - I - 0x00EFB9 03:AFA9: 01        .byte $01   ; 
- D 1 - I - 0x00EFBA 03:AFAA: 21        .byte $21   ; 
- D 1 - I - 0x00EFBB 03:AFAB: 18        .byte $18   ; 
- D 1 - I - 0x00EFBC 03:AFAC: 00        .byte $00   ; 
- D 1 - I - 0x00EFBD 03:AFAD: 0C        .byte $0C   ; 
- D 1 - I - 0x00EFBE 03:AFAE: 02        .byte $02   ; 
- D 1 - I - 0x00EFBF 03:AFAF: 01        .byte $01   ; 
- D 1 - I - 0x00EFC0 03:AFB0: 08        .byte $08   ; 
- D 1 - I - 0x00EFC1 03:AFB1: 16        .byte $16   ; 
- D 1 - I - 0x00EFC2 03:AFB2: 04        .byte $04   ; 
- D 1 - I - 0x00EFC3 03:AFB3: 17        .byte $17   ; 
- D 1 - I - 0x00EFC4 03:AFB4: 00        .byte $00   ; 
- D 1 - I - 0x00EFC5 03:AFB5: 1B        .byte $1B   ; 
- D 1 - I - 0x00EFC6 03:AFB6: 00        .byte $00   ; 
- D 1 - I - 0x00EFC7 03:AFB7: 19        .byte $19   ; 
- D 1 - I - 0x00EFC8 03:AFB8: 00        .byte $00   ; 
- D 1 - I - 0x00EFC9 03:AFB9: 05        .byte $05   ; 
- D 1 - I - 0x00EFCA 03:AFBA: 0F        .byte $0F   ; 
- D 1 - I - 0x00EFCB 03:AFBB: 0A        .byte $0A   ; 
- D 1 - I - 0x00EFCC 03:AFBC: 2F        .byte $2F   ; 
- D 1 - I - 0x00EFCD 03:AFBD: 22        .byte $22   ; 
- D 1 - I - 0x00EFCE 03:AFBE: 11        .byte $11   ; 
- D 1 - I - 0x00EFCF 03:AFBF: 01        .byte $01   ; 
- D 1 - I - 0x00EFD0 03:AFC0: 20        .byte $20   ; 
- D 1 - I - 0x00EFD1 03:AFC1: 0A        .byte $0A   ; 
- D 1 - I - 0x00EFD2 03:AFC2: 6D        .byte $6D   ; 
- D 1 - I - 0x00EFD3 03:AFC3: 22        .byte $22   ; 
- D 1 - I - 0x00EFD4 03:AFC4: 12        .byte $12   ; 
- D 1 - I - 0x00EFD5 03:AFC5: 01        .byte $01   ; 
- D 1 - I - 0x00EFD6 03:AFC6: 3F        .byte $3F   ; 
- D 1 - I - 0x00EFD7 03:AFC7: 0C        .byte $0C   ; 
- D 1 - I - 0x00EFD8 03:AFC8: 02        .byte $02   ; 
- D 1 - I - 0x00EFD9 03:AFC9: 22        .byte $22   ; 
- D 1 - I - 0x00EFDA 03:AFCA: 01        .byte $01   ; 
- D 1 - I - 0x00EFDB 03:AFCB: 01        .byte $01   ; 
- D 1 - I - 0x00EFDC 03:AFCC: 10        .byte $10   ; 
- D 1 - I - 0x00EFDD 03:AFCD: 0B        .byte $0B   ; 
- D 1 - I - 0x00EFDE 03:AFCE: 9C        .byte $9C   ; 
- D 1 - I - 0x00EFDF 03:AFCF: 24        .byte $24   ; 
- D 1 - I - 0x00EFE0 03:AFD0: 01        .byte $01   ; 
- - - - - - 0x00EFE1 03:AFD1: 02        .byte $02   ; 
- - - - - - 0x00EFE2 03:AFD2: 00        .byte $00   ; 
- - - - - - 0x00EFE3 03:AFD3: FE        .byte $FE   ; 
- - - - - - 0x00EFE4 03:AFD4: FE        .byte $FE   ; 
- D 1 - I - 0x00EFE5 03:AFD5: 06        .byte $06   ; 
- D 1 - I - 0x00EFE6 03:AFD6: 00        .byte $00   ; 
- D 1 - I - 0x00EFE7 03:AFD7: 1A        .byte $1A   ; 
- D 1 - I - 0x00EFE8 03:AFD8: 00        .byte $00   ; 
- - - - - - 0x00EFE9 03:AFD9: 10        .byte $10   ; 
- - - - - - 0x00EFEA 03:AFDA: 02        .byte $02   ; 
- - - - - - 0x00EFEB 03:AFDB: 01        .byte $01   ; 
- - - - - - 0x00EFEC 03:AFDC: 10        .byte $10   ; 
- - - - - - 0x00EFED 03:AFDD: 2B        .byte $2B   ; 
- - - - - - 0x00EFEE 03:AFDE: 05        .byte $05   ; 
- - - - - - 0x00EFEF 03:AFDF: 01        .byte $01   ; 
- - - - - - 0x00EFF0 03:AFE0: 0E        .byte $0E   ; 
- - - - - - 0x00EFF1 03:AFE1: 2B        .byte $2B   ; 
- - - - - - 0x00EFF2 03:AFE2: 08        .byte $08   ; 
- - - - - - 0x00EFF3 03:AFE3: 01        .byte $01   ; 
- - - - - - 0x00EFF4 03:AFE4: 10        .byte $10   ; 
- - - - - - 0x00EFF5 03:AFE5: 06        .byte $06   ; 
- - - - - - 0x00EFF6 03:AFE6: 00        .byte $00   ; 
- - - - - - 0x00EFF7 03:AFE7: 2B        .byte $2B   ; 
- - - - - - 0x00EFF8 03:AFE8: 08        .byte $08   ; 
- - - - - - 0x00EFF9 03:AFE9: 01        .byte $01   ; 
- - - - - - 0x00EFFA 03:AFEA: 10        .byte $10   ; 
- - - - - - 0x00EFFB 03:AFEB: 2B        .byte $2B   ; 
- - - - - - 0x00EFFC 03:AFEC: 05        .byte $05   ; 
- - - - - - 0x00EFFD 03:AFED: 01        .byte $01   ; 
- - - - - - 0x00EFFE 03:AFEE: 0E        .byte $0E   ; 
- - - - - - 0x00EFFF 03:AFEF: 2B        .byte $2B   ; 
- - - - - - 0x00F000 03:AFF0: 08        .byte $08   ; 
- - - - - - 0x00F001 03:AFF1: 01        .byte $01   ; 
- - - - - - 0x00F002 03:AFF2: 10        .byte $10   ; 
- - - - - - 0x00F003 03:AFF3: 18        .byte $18   ; 
- - - - - - 0x00F004 03:AFF4: 00        .byte $00   ; 
- D 1 - I - 0x00F005 03:AFF5: 1C        .byte $1C   ; 
- D 1 - I - 0x00F006 03:AFF6: 00        .byte $00   ; 
- D 1 - I - 0x00F007 03:AFF7: 06        .byte $06   ; 
- D 1 - I - 0x00F008 03:AFF8: 00        .byte $00   ; 
- D 1 - I - 0x00F009 03:AFF9: 1E        .byte $1E   ; 
- D 1 - I - 0x00F00A 03:AFFA: 00        .byte $00   ; 
- D 1 - I - 0x00F00B 03:AFFB: 10        .byte $10   ; 
- D 1 - I - 0x00F00C 03:AFFC: 03        .byte $03   ; 
- D 1 - I - 0x00F00D 03:AFFD: 01        .byte $01   ; 
- D 1 - I - 0x00F00E 03:AFFE: 20        .byte $20   ; 
- D 1 - I - 0x00F00F 03:AFFF: 2B        .byte $2B   ; 
- D 1 - I - 0x00F010 03:B000: 04        .byte $04   ; 
- D 1 - I - 0x00F011 03:B001: 08        .byte $08   ; 
- D 1 - I - 0x00F012 03:B002: 02        .byte $02   ; 
- D 1 - I - 0x00F013 03:B003: 2B        .byte $2B   ; 
- D 1 - I - 0x00F014 03:B004: 03        .byte $03   ; 
- D 1 - I - 0x00F015 03:B005: 01        .byte $01   ; 
- D 1 - I - 0x00F016 03:B006: 21        .byte $21   ; 
- D 1 - I - 0x00F017 03:B007: 18        .byte $18   ; 
- D 1 - I - 0x00F018 03:B008: 00        .byte $00   ; 
- D 1 - I - 0x00F019 03:B009: 10        .byte $10   ; 
- D 1 - I - 0x00F01A 03:B00A: 04        .byte $04   ; 
- D 1 - I - 0x00F01B 03:B00B: 03        .byte $03   ; 
- D 1 - I - 0x00F01C 03:B00C: 02        .byte $02   ; 
- D 1 - I - 0x00F01D 03:B00D: 18        .byte $18   ; 
- D 1 - I - 0x00F01E 03:B00E: 00        .byte $00   ; 
- D 1 - I - 0x00F01F 03:B00F: 10        .byte $10   ; 
- D 1 - I - 0x00F020 03:B010: 02        .byte $02   ; 
- D 1 - I - 0x00F021 03:B011: 01        .byte $01   ; 
- D 1 - I - 0x00F022 03:B012: 10        .byte $10   ; 
- D 1 - I - 0x00F023 03:B013: 2B        .byte $2B   ; 
- D 1 - I - 0x00F024 03:B014: 05        .byte $05   ; 
- D 1 - I - 0x00F025 03:B015: 01        .byte $01   ; 
- D 1 - I - 0x00F026 03:B016: 0E        .byte $0E   ; 
- D 1 - I - 0x00F027 03:B017: 2B        .byte $2B   ; 
- D 1 - I - 0x00F028 03:B018: 05        .byte $05   ; 
- D 1 - I - 0x00F029 03:B019: 01        .byte $01   ; 
- D 1 - I - 0x00F02A 03:B01A: 0E        .byte $0E   ; 
- D 1 - I - 0x00F02B 03:B01B: 2B        .byte $2B   ; 
- D 1 - I - 0x00F02C 03:B01C: 08        .byte $08   ; 
- D 1 - I - 0x00F02D 03:B01D: 01        .byte $01   ; 
- D 1 - I - 0x00F02E 03:B01E: 10        .byte $10   ; 
- D 1 - I - 0x00F02F 03:B01F: 18        .byte $18   ; 
- D 1 - I - 0x00F030 03:B020: 00        .byte $00   ; 
- D 1 - I - 0x00F031 03:B021: 11        .byte $11   ; 
- D 1 - I - 0x00F032 03:B022: 00        .byte $00   ; 
- D 1 - I - 0x00F033 03:B023: 10        .byte $10   ; 
- D 1 - I - 0x00F034 03:B024: 00        .byte $00   ; 
- D 1 - I - 0x00F035 03:B025: 03        .byte $03   ; 
- D 1 - I - 0x00F036 03:B026: 12        .byte $12   ; 
- D 1 - I - 0x00F037 03:B027: 03        .byte $03   ; 
- D 1 - I - 0x00F038 03:B028: 03        .byte $03   ; 
- D 1 - I - 0x00F039 03:B029: 18        .byte $18   ; 
- D 1 - I - 0x00F03A 03:B02A: 00        .byte $00   ; 
- - - - - - 0x00F03B 03:B02B: 10        .byte $10   ; 
- - - - - - 0x00F03C 03:B02C: 05        .byte $05   ; 
- - - - - - 0x00F03D 03:B02D: 01        .byte $01   ; 
- - - - - - 0x00F03E 03:B02E: 0E        .byte $0E   ; 
- - - - - - 0x00F03F 03:B02F: 18        .byte $18   ; 
- - - - - - 0x00F040 03:B030: 3E        .byte $3E   ; 
- - - - - - 0x00F041 03:B031: 06        .byte $06   ; 
- - - - - - 0x00F042 03:B032: 00        .byte $00   ; 
- - - - - - 0x00F043 03:B033: 18        .byte $18   ; 
- - - - - - 0x00F044 03:B034: 00        .byte $00   ; 
- D 1 - I - 0x00F045 03:B035: 1F        .byte $1F   ; 
- D 1 - I - 0x00F046 03:B036: 00        .byte $00   ; 
- D 1 - I - 0x00F047 03:B037: 18        .byte $18   ; 
- D 1 - I - 0x00F048 03:B038: 01        .byte $01   ; 
- D 1 - I - 0x00F049 03:B039: 10        .byte $10   ; 
- D 1 - I - 0x00F04A 03:B03A: 02        .byte $02   ; 
- D 1 - I - 0x00F04B 03:B03B: 01        .byte $01   ; 
- D 1 - I - 0x00F04C 03:B03C: 10        .byte $10   ; 
- D 1 - I - 0x00F04D 03:B03D: 2B        .byte $2B   ; 
- D 1 - I - 0x00F04E 03:B03E: 05        .byte $05   ; 
- D 1 - I - 0x00F04F 03:B03F: 01        .byte $01   ; 
- D 1 - I - 0x00F050 03:B040: 0E        .byte $0E   ; 
- D 1 - I - 0x00F051 03:B041: 18        .byte $18   ; 
- D 1 - I - 0x00F052 03:B042: 03        .byte $03   ; 



_off010_B043_02:
- D 1 - I - 0x00F053 03:B043: 23        .byte $23   ; 
- D 1 - I - 0x00F054 03:B044: 00        .byte $00   ; 
- D 1 - I - 0x00F055 03:B045: 22        .byte $22   ; 
- D 1 - I - 0x00F056 03:B046: 00        .byte $00   ; 
- D 1 - I - 0x00F057 03:B047: 0C        .byte $0C   ; 
- D 1 - I - 0x00F058 03:B048: 05        .byte $05   ; 
- D 1 - I - 0x00F059 03:B049: 62        .byte $62   ; 
- D 1 - I - 0x00F05A 03:B04A: 00        .byte $00   ; 
- D 1 - I - 0x00F05B 03:B04B: 56        .byte $56   ; 
- D 1 - I - 0x00F05C 03:B04C: 00        .byte $00   ; 
- D 1 - I - 0x00F05D 03:B04D: 0B        .byte $0B   ; 
- D 1 - I - 0x00F05E 03:B04E: 90        .byte $90   ; 
- D 1 - I - 0x00F05F 03:B04F: 0C        .byte $0C   ; 
- D 1 - I - 0x00F060 03:B050: 08        .byte $08   ; 
- D 1 - I - 0x00F061 03:B051: 18        .byte $18   ; 
- D 1 - I - 0x00F062 03:B052: 05        .byte $05   ; 
- D 1 - I - 0x00F063 03:B053: 22        .byte $22   ; 
- D 1 - I - 0x00F064 03:B054: 17        .byte $17   ; 
- D 1 - I - 0x00F065 03:B055: 01        .byte $01   ; 
- D 1 - I - 0x00F066 03:B056: 10        .byte $10   ; 
- D 1 - I - 0x00F067 03:B057: 22        .byte $22   ; 
- D 1 - I - 0x00F068 03:B058: 18        .byte $18   ; 
- D 1 - I - 0x00F069 03:B059: 01        .byte $01   ; 
- D 1 - I - 0x00F06A 03:B05A: 04        .byte $04   ; 
- D 1 - I - 0x00F06B 03:B05B: 22        .byte $22   ; 
- D 1 - I - 0x00F06C 03:B05C: 19        .byte $19   ; 
- D 1 - I - 0x00F06D 03:B05D: 01        .byte $01   ; 
- D 1 - I - 0x00F06E 03:B05E: 28        .byte $28   ; 
- D 1 - I - 0x00F06F 03:B05F: 22        .byte $22   ; 
- D 1 - I - 0x00F070 03:B060: 1A        .byte $1A   ; 
- D 1 - I - 0x00F071 03:B061: 01        .byte $01   ; 
- D 1 - I - 0x00F072 03:B062: 06        .byte $06   ; 
- D 1 - I - 0x00F073 03:B063: 18        .byte $18   ; 
- D 1 - I - 0x00F074 03:B064: 06        .byte $06   ; 
- D 1 - I - 0x00F075 03:B065: 0C        .byte $0C   ; 
- D 1 - I - 0x00F076 03:B066: 02        .byte $02   ; 
- D 1 - I - 0x00F077 03:B067: 01        .byte $01   ; 
- D 1 - I - 0x00F078 03:B068: 08        .byte $08   ; 
- D 1 - I - 0x00F079 03:B069: 25        .byte $25   ; 
- D 1 - I - 0x00F07A 03:B06A: 06        .byte $06   ; 
- D 1 - I - 0x00F07B 03:B06B: 2D        .byte $2D   ; 
- D 1 - I - 0x00F07C 03:B06C: 0D        .byte $0D   ; 
- D 1 - I - 0x00F07D 03:B06D: 29        .byte $29   ; 
- D 1 - I - 0x00F07E 03:B06E: 1D        .byte $1D   ; 
- D 1 - I - 0x00F07F 03:B06F: 18        .byte $18   ; 
- D 1 - I - 0x00F080 03:B070: 0B        .byte $0B   ; 
- D 1 - I - 0x00F081 03:B071: 05        .byte $05   ; 
- D 1 - I - 0x00F082 03:B072: 0F        .byte $0F   ; 
- D 1 - I - 0x00F083 03:B073: 22        .byte $22   ; 
- D 1 - I - 0x00F084 03:B074: 1B        .byte $1B   ; 
- D 1 - I - 0x00F085 03:B075: 01        .byte $01   ; 
- D 1 - I - 0x00F086 03:B076: 3C        .byte $3C   ; 
- D 1 - I - 0x00F087 03:B077: 22        .byte $22   ; 
- D 1 - I - 0x00F088 03:B078: 1C        .byte $1C   ; 
- D 1 - I - 0x00F089 03:B079: 01        .byte $01   ; 
- D 1 - I - 0x00F08A 03:B07A: 42        .byte $42   ; 
- D 1 - I - 0x00F08B 03:B07B: 0B        .byte $0B   ; 
- D 1 - I - 0x00F08C 03:B07C: 53        .byte $53   ; 
- D 1 - I - 0x00F08D 03:B07D: 0A        .byte $0A   ; 
- D 1 - I - 0x00F08E 03:B07E: 21        .byte $21   ; 
- D 1 - I - 0x00F08F 03:B07F: 22        .byte $22   ; 
- D 1 - I - 0x00F090 03:B080: 1D        .byte $1D   ; 
- D 1 - I - 0x00F091 03:B081: 01        .byte $01   ; 
- D 1 - I - 0x00F092 03:B082: 18        .byte $18   ; 
- D 1 - I - 0x00F093 03:B083: 0C        .byte $0C   ; 
- D 1 - I - 0x00F094 03:B084: 02        .byte $02   ; 
- D 1 - I - 0x00F095 03:B085: 22        .byte $22   ; 
- D 1 - I - 0x00F096 03:B086: 05        .byte $05   ; 
- D 1 - I - 0x00F097 03:B087: 0B        .byte $0B   ; 
- D 1 - I - 0x00F098 03:B088: 9C        .byte $9C   ; 
- D 1 - I - 0x00F099 03:B089: 24        .byte $24   ; 
- D 1 - I - 0x00F09A 03:B08A: 00        .byte $00   ; 
- - - - - - 0x00F09B 03:B08B: FE        .byte $FE   ; 
- - - - - - 0x00F09C 03:B08C: FE        .byte $FE   ; 
- D 1 - I - 0x00F09D 03:B08D: 26        .byte $26   ; 
- D 1 - I - 0x00F09E 03:B08E: 00        .byte $00   ; 
- D 1 - I - 0x00F09F 03:B08F: 22        .byte $22   ; 
- D 1 - I - 0x00F0A0 03:B090: 1E        .byte $1E   ; 
- D 1 - I - 0x00F0A1 03:B091: 03        .byte $03   ; 
- D 1 - I - 0x00F0A2 03:B092: 04        .byte $04   ; 
- D 1 - I - 0x00F0A3 03:B093: 29        .byte $29   ; 
- D 1 - I - 0x00F0A4 03:B094: 1C        .byte $1C   ; 
- D 1 - I - 0x00F0A5 03:B095: 07        .byte $07   ; 
- D 1 - I - 0x00F0A6 03:B096: 27        .byte $27   ; 
- D 1 - I - 0x00F0A7 03:B097: 06        .byte $06   ; 
- D 1 - I - 0x00F0A8 03:B098: 00        .byte $00   ; 
- D 1 - I - 0x00F0A9 03:B099: 22        .byte $22   ; 
- D 1 - I - 0x00F0AA 03:B09A: 1B        .byte $1B   ; 
- D 1 - I - 0x00F0AB 03:B09B: 01        .byte $01   ; 
- D 1 - I - 0x00F0AC 03:B09C: 28        .byte $28   ; 
- D 1 - I - 0x00F0AD 03:B09D: 18        .byte $18   ; 
- D 1 - I - 0x00F0AE 03:B09E: 08        .byte $08   ; 
- D 1 - I - 0x00F0AF 03:B09F: 28        .byte $28   ; 
- D 1 - I - 0x00F0B0 03:B0A0: 00        .byte $00   ; 
- D 1 - I - 0x00F0B1 03:B0A1: 0C        .byte $0C   ; 
- D 1 - I - 0x00F0B2 03:B0A2: 02        .byte $02   ; 
- D 1 - I - 0x00F0B3 03:B0A3: 01        .byte $01   ; 
- D 1 - I - 0x00F0B4 03:B0A4: 08        .byte $08   ; 
- D 1 - I - 0x00F0B5 03:B0A5: 22        .byte $22   ; 
- D 1 - I - 0x00F0B6 03:B0A6: 1B        .byte $1B   ; 
- D 1 - I - 0x00F0B7 03:B0A7: 01        .byte $01   ; 
- D 1 - I - 0x00F0B8 03:B0A8: 28        .byte $28   ; 
- D 1 - I - 0x00F0B9 03:B0A9: 2E        .byte $2E   ; 
- D 1 - I - 0x00F0BA 03:B0AA: 00        .byte $00   ; 
- D 1 - I - 0x00F0BB 03:B0AB: 18        .byte $18   ; 
- D 1 - I - 0x00F0BC 03:B0AC: 08        .byte $08   ; 
- D 1 - I - 0x00F0BD 03:B0AD: 22        .byte $22   ; 
- D 1 - I - 0x00F0BE 03:B0AE: 20        .byte $20   ; 
- D 1 - I - 0x00F0BF 03:B0AF: 01        .byte $01   ; 
- D 1 - I - 0x00F0C0 03:B0B0: 14        .byte $14   ; 
- D 1 - I - 0x00F0C1 03:B0B1: 22        .byte $22   ; 
- D 1 - I - 0x00F0C2 03:B0B2: 20        .byte $20   ; 
- D 1 - I - 0x00F0C3 03:B0B3: 01        .byte $01   ; 
- D 1 - I - 0x00F0C4 03:B0B4: 14        .byte $14   ; 
- D 1 - I - 0x00F0C5 03:B0B5: 22        .byte $22   ; 
- D 1 - I - 0x00F0C6 03:B0B6: 19        .byte $19   ; 
- D 1 - I - 0x00F0C7 03:B0B7: 01        .byte $01   ; 
- D 1 - I - 0x00F0C8 03:B0B8: 28        .byte $28   ; 
- D 1 - I - 0x00F0C9 03:B0B9: 2E        .byte $2E   ; 
- D 1 - I - 0x00F0CA 03:B0BA: 00        .byte $00   ; 
- D 1 - I - 0x00F0CB 03:B0BB: 18        .byte $18   ; 
- D 1 - I - 0x00F0CC 03:B0BC: 0B        .byte $0B   ; 
- D 1 - I - 0x00F0CD 03:B0BD: 22        .byte $22   ; 
- D 1 - I - 0x00F0CE 03:B0BE: 21        .byte $21   ; 
- D 1 - I - 0x00F0CF 03:B0BF: 01        .byte $01   ; 
- D 1 - I - 0x00F0D0 03:B0C0: 14        .byte $14   ; 
- D 1 - I - 0x00F0D1 03:B0C1: 22        .byte $22   ; 
- D 1 - I - 0x00F0D2 03:B0C2: 21        .byte $21   ; 
- D 1 - I - 0x00F0D3 03:B0C3: 01        .byte $01   ; 
- D 1 - I - 0x00F0D4 03:B0C4: 11        .byte $11   ; 
- D 1 - I - 0x00F0D5 03:B0C5: 07        .byte $07   ; 
- D 1 - I - 0x00F0D6 03:B0C6: 3B        .byte $3B   ; 
- D 1 - I - 0x00F0D7 03:B0C7: 20        .byte $20   ; 
- D 1 - I - 0x00F0D8 03:B0C8: 42        .byte $42   ; 
- D 1 - I - 0x00F0D9 03:B0C9: 2F        .byte $2F   ; 
- D 1 - I - 0x00F0DA 03:B0CA: 06        .byte $06   ; 
- D 1 - I - 0x00F0DB 03:B0CB: 22        .byte $22   ; 
- D 1 - I - 0x00F0DC 03:B0CC: 1E        .byte $1E   ; 
- D 1 - I - 0x00F0DD 03:B0CD: 43        .byte $43   ; 
- D 1 - I - 0x00F0DE 03:B0CE: 47        .byte $47   ; 
- D 1 - I - 0x00F0DF 03:B0CF: 07        .byte $07   ; 
- D 1 - I - 0x00F0E0 03:B0D0: 45        .byte $45   ; 
- D 1 - I - 0x00F0E1 03:B0D1: 20        .byte $20   ; 
- D 1 - I - 0x00F0E2 03:B0D2: C4        .byte $C4   ; 
- D 1 - I - 0x00F0E3 03:B0D3: 40        .byte $40   ; 
- D 1 - I - 0x00F0E4 03:B0D4: 80        .byte $80   ; 
- D 1 - I - 0x00F0E5 03:B0D5: 0C        .byte $0C   ; 
- D 1 - I - 0x00F0E6 03:B0D6: 02        .byte $02   ; 
- D 1 - I - 0x00F0E7 03:B0D7: 22        .byte $22   ; 
- D 1 - I - 0x00F0E8 03:B0D8: 00        .byte $00   ; 
- D 1 - I - 0x00F0E9 03:B0D9: 01        .byte $01   ; 
- D 1 - I - 0x00F0EA 03:B0DA: 06        .byte $06   ; 
- D 1 - I - 0x00F0EB 03:B0DB: 22        .byte $22   ; 
- D 1 - I - 0x00F0EC 03:B0DC: 17        .byte $17   ; 
- D 1 - I - 0x00F0ED 03:B0DD: 01        .byte $01   ; 
- D 1 - I - 0x00F0EE 03:B0DE: 18        .byte $18   ; 
- D 1 - I - 0x00F0EF 03:B0DF: 0C        .byte $0C   ; 
- D 1 - I - 0x00F0F0 03:B0E0: 02        .byte $02   ; 
- D 1 - I - 0x00F0F1 03:B0E1: 22        .byte $22   ; 
- D 1 - I - 0x00F0F2 03:B0E2: 06        .byte $06   ; 
- D 1 - I - 0x00F0F3 03:B0E3: 01        .byte $01   ; 
- D 1 - I - 0x00F0F4 03:B0E4: 09        .byte $09   ; 
- D 1 - I - 0x00F0F5 03:B0E5: 22        .byte $22   ; 
- D 1 - I - 0x00F0F6 03:B0E6: 22        .byte $22   ; 
- D 1 - I - 0x00F0F7 03:B0E7: 01        .byte $01   ; 
- D 1 - I - 0x00F0F8 03:B0E8: 1C        .byte $1C   ; 
- D 1 - I - 0x00F0F9 03:B0E9: 22        .byte $22   ; 
- D 1 - I - 0x00F0FA 03:B0EA: 22        .byte $22   ; 
- D 1 - I - 0x00F0FB 03:B0EB: 01        .byte $01   ; 
- D 1 - I - 0x00F0FC 03:B0EC: 1C        .byte $1C   ; 
- D 1 - I - 0x00F0FD 03:B0ED: 0C        .byte $0C   ; 
- D 1 - I - 0x00F0FE 03:B0EE: 02        .byte $02   ; 
- D 1 - I - 0x00F0FF 03:B0EF: 22        .byte $22   ; 
- D 1 - I - 0x00F100 03:B0F0: 00        .byte $00   ; 
- D 1 - I - 0x00F101 03:B0F1: 01        .byte $01   ; 
- D 1 - I - 0x00F102 03:B0F2: 08        .byte $08   ; 
- D 1 - I - 0x00F103 03:B0F3: 2E        .byte $2E   ; 
- D 1 - I - 0x00F104 03:B0F4: 00        .byte $00   ; 
- D 1 - I - 0x00F105 03:B0F5: 18        .byte $18   ; 
- D 1 - I - 0x00F106 03:B0F6: 0B        .byte $0B   ; 
- D 1 - I - 0x00F107 03:B0F7: 20        .byte $20   ; 
- D 1 - I - 0x00F108 03:B0F8: C4        .byte $C4   ; 
- D 1 - I - 0x00F109 03:B0F9: 22        .byte $22   ; 
- D 1 - I - 0x00F10A 03:B0FA: 1E        .byte $1E   ; 
- D 1 - I - 0x00F10B 03:B0FB: 03        .byte $03   ; 
- D 1 - I - 0x00F10C 03:B0FC: 04        .byte $04   ; 
- D 1 - I - 0x00F10D 03:B0FD: 22        .byte $22   ; 
- D 1 - I - 0x00F10E 03:B0FE: 1F        .byte $1F   ; 
- D 1 - I - 0x00F10F 03:B0FF: 03        .byte $03   ; 
- D 1 - I - 0x00F110 03:B100: 04        .byte $04   ; 
- D 1 - I - 0x00F111 03:B101: 25        .byte $25   ; 
- D 1 - I - 0x00F112 03:B102: 06        .byte $06   ; 
- - - - - - 0x00F113 03:B103: 07        .byte $07   ; 
- - - - - - 0x00F114 03:B104: 5B        .byte $5B   ; 
- D 1 - I - 0x00F115 03:B105: 20        .byte $20   ; 
- D 1 - I - 0x00F116 03:B106: 42        .byte $42   ; 
- D 1 - I - 0x00F117 03:B107: 22        .byte $22   ; 
- D 1 - I - 0x00F118 03:B108: 1E        .byte $1E   ; 
- D 1 - I - 0x00F119 03:B109: 40        .byte $40   ; 
- D 1 - I - 0x00F11A 03:B10A: 00        .byte $00   ; 
- D 1 - I - 0x00F11B 03:B10B: 2E        .byte $2E   ; 
- D 1 - I - 0x00F11C 03:B10C: 00        .byte $00   ; 
- D 1 - I - 0x00F11D 03:B10D: 18        .byte $18   ; 
- D 1 - I - 0x00F11E 03:B10E: 0B        .byte $0B   ; 



_off010_B10F_04:
- D 1 - I - 0x00F11F 03:B10F: 3E        .byte $3E   ; 
- D 1 - I - 0x00F120 03:B110: 00        .byte $00   ; 
- D 1 - I - 0x00F121 03:B111: 18        .byte $18   ; 
- D 1 - I - 0x00F122 03:B112: 0E        .byte $0E   ; 
- D 1 - I - 0x00F123 03:B113: 2B        .byte $2B   ; 
- D 1 - I - 0x00F124 03:B114: 09        .byte $09   ; 
- D 1 - I - 0x00F125 03:B115: 01        .byte $01   ; 
- D 1 - I - 0x00F126 03:B116: 40        .byte $40   ; 
- D 1 - I - 0x00F127 03:B117: 2B        .byte $2B   ; 
- D 1 - I - 0x00F128 03:B118: 0A        .byte $0A   ; 
- D 1 - I - 0x00F129 03:B119: 03        .byte $03   ; 
- D 1 - I - 0x00F12A 03:B11A: 09        .byte $09   ; 
- D 1 - I - 0x00F12B 03:B11B: 2B        .byte $2B   ; 
- D 1 - I - 0x00F12C 03:B11C: 09        .byte $09   ; 
- D 1 - I - 0x00F12D 03:B11D: 01        .byte $01   ; 
- D 1 - I - 0x00F12E 03:B11E: 20        .byte $20   ; 
- D 1 - I - 0x00F12F 03:B11F: 2B        .byte $2B   ; 
- D 1 - I - 0x00F130 03:B120: 0B        .byte $0B   ; 
- D 1 - I - 0x00F131 03:B121: 01        .byte $01   ; 
- D 1 - I - 0x00F132 03:B122: 18        .byte $18   ; 
- D 1 - I - 0x00F133 03:B123: 2B        .byte $2B   ; 
- D 1 - I - 0x00F134 03:B124: 0C        .byte $0C   ; 
- D 1 - I - 0x00F135 03:B125: 01        .byte $01   ; 
- D 1 - I - 0x00F136 03:B126: 15        .byte $15   ; 
- D 1 - I - 0x00F137 03:B127: 2B        .byte $2B   ; 
- D 1 - I - 0x00F138 03:B128: 0D        .byte $0D   ; 
- D 1 - I - 0x00F139 03:B129: 01        .byte $01   ; 
- D 1 - I - 0x00F13A 03:B12A: 02        .byte $02   ; 
- D 1 - I - 0x00F13B 03:B12B: 2B        .byte $2B   ; 
- D 1 - I - 0x00F13C 03:B12C: 0E        .byte $0E   ; 
- D 1 - I - 0x00F13D 03:B12D: 01        .byte $01   ; 
- D 1 - I - 0x00F13E 03:B12E: 10        .byte $10   ; 
- D 1 - I - 0x00F13F 03:B12F: 2B        .byte $2B   ; 
- D 1 - I - 0x00F140 03:B130: 0B        .byte $0B   ; 
- D 1 - I - 0x00F141 03:B131: 01        .byte $01   ; 
- D 1 - I - 0x00F142 03:B132: 18        .byte $18   ; 
- D 1 - I - 0x00F143 03:B133: 2E        .byte $2E   ; 
- D 1 - I - 0x00F144 03:B134: 00        .byte $00   ; 
- D 1 - I - 0x00F145 03:B135: 07        .byte $07   ; 
- D 1 - I - 0x00F146 03:B136: 02        .byte $02   ; 
- - - - - - 0x00F147 03:B137: 06        .byte $06   ; 
- - - - - - 0x00F148 03:B138: 00        .byte $00   ; 
- - - - - - 0x00F149 03:B139: 2B        .byte $2B   ; 
- - - - - - 0x00F14A 03:B13A: 0E        .byte $0E   ; 
- - - - - - 0x00F14B 03:B13B: 01        .byte $01   ; 
- - - - - - 0x00F14C 03:B13C: 10        .byte $10   ; 
- - - - - - 0x00F14D 03:B13D: 3E        .byte $3E   ; 
- - - - - - 0x00F14E 03:B13E: 00        .byte $00   ; 
- - - - - - 0x00F14F 03:B13F: 07        .byte $07   ; 
- - - - - - 0x00F150 03:B140: 02        .byte $02   ; 
- D 1 - I - 0x00F151 03:B141: 05        .byte $05   ; 
- D 1 - I - 0x00F152 03:B142: 0C        .byte $0C   ; 
- D 1 - I - 0x00F153 03:B143: 22        .byte $22   ; 
- D 1 - I - 0x00F154 03:B144: 13        .byte $13   ; 
- D 1 - I - 0x00F155 03:B145: 01        .byte $01   ; 
- D 1 - I - 0x00F156 03:B146: 14        .byte $14   ; 
- D 1 - I - 0x00F157 03:B147: 02        .byte $02   ; 
- D 1 - I - 0x00F158 03:B148: 00        .byte $00   ; 
- - - - - - 0x00F159 03:B149: FE        .byte $FE   ; 



_off010_B14A_0C:
- D 1 - I - 0x00F15A 03:B14A: 23        .byte $23   ; 
- D 1 - I - 0x00F15B 03:B14B: 00        .byte $00   ; 
- D 1 - I - 0x00F15C 03:B14C: 4E        .byte $4E   ; 
- D 1 - I - 0x00F15D 03:B14D: 00        .byte $00   ; 
- D 1 - I - 0x00F15E 03:B14E: 18        .byte $18   ; 
- D 1 - I - 0x00F15F 03:B14F: 26        .byte $26   ; 
- D 1 - I - 0x00F160 03:B150: 4D        .byte $4D   ; 
- D 1 - I - 0x00F161 03:B151: 00        .byte $00   ; 
- D 1 - I - 0x00F162 03:B152: 21        .byte $21   ; 
- D 1 - I - 0x00F163 03:B153: 04        .byte $04   ; 
- D 1 - I - 0x00F164 03:B154: 0B        .byte $0B   ; 
- D 1 - I - 0x00F165 03:B155: 90        .byte $90   ; 
- D 1 - I - 0x00F166 03:B156: 50        .byte $50   ; 
- D 1 - I - 0x00F167 03:B157: 00        .byte $00   ; 
- D 1 - I - 0x00F168 03:B158: 53        .byte $53   ; 
- D 1 - I - 0x00F169 03:B159: 08        .byte $08   ; 
- D 1 - I - 0x00F16A 03:B15A: 54        .byte $54   ; 
- D 1 - I - 0x00F16B 03:B15B: 09        .byte $09   ; 
- D 1 - I - 0x00F16C 03:B15C: 53        .byte $53   ; 
- D 1 - I - 0x00F16D 03:B15D: 0A        .byte $0A   ; 
- D 1 - I - 0x00F16E 03:B15E: 54        .byte $54   ; 
- D 1 - I - 0x00F16F 03:B15F: 0B        .byte $0B   ; 
- D 1 - I - 0x00F170 03:B160: 07        .byte $07   ; 
- D 1 - I - 0x00F171 03:B161: 07        .byte $07   ; 
- D 1 - I - 0x00F172 03:B162: 52        .byte $52   ; 
- D 1 - I - 0x00F173 03:B163: 00        .byte $00   ; 
- D 1 - I - 0x00F174 03:B164: 0A        .byte $0A   ; 
- D 1 - I - 0x00F175 03:B165: 11        .byte $11   ; 
- D 1 - I - 0x00F176 03:B166: 22        .byte $22   ; 
- D 1 - I - 0x00F177 03:B167: 2E        .byte $2E   ; 
- D 1 - I - 0x00F178 03:B168: 01        .byte $01   ; 
- D 1 - I - 0x00F179 03:B169: 0C        .byte $0C   ; 
- D 1 - I - 0x00F17A 03:B16A: 0C        .byte $0C   ; 
- D 1 - I - 0x00F17B 03:B16B: 03        .byte $03   ; 
- D 1 - I - 0x00F17C 03:B16C: 14        .byte $14   ; 
- D 1 - I - 0x00F17D 03:B16D: 28        .byte $28   ; 
- D 1 - I - 0x00F17E 03:B16E: 22        .byte $22   ; 
- D 1 - I - 0x00F17F 03:B16F: 2F        .byte $2F   ; 
- D 1 - I - 0x00F180 03:B170: 0C        .byte $0C   ; 
- D 1 - I - 0x00F181 03:B171: 0A        .byte $0A   ; 
- D 1 - I - 0x00F182 03:B172: 0B        .byte $0B   ; 
- D 1 - I - 0x00F183 03:B173: 2E        .byte $2E   ; 
- D 1 - I - 0x00F184 03:B174: 01        .byte $01   ; 
- D 1 - I - 0x00F185 03:B175: 22        .byte $22   ; 
- D 1 - I - 0x00F186 03:B176: 0C        .byte $0C   ; 
- D 1 - I - 0x00F187 03:B177: 02        .byte $02   ; 
- D 1 - I - 0x00F188 03:B178: 0C        .byte $0C   ; 
- D 1 - I - 0x00F189 03:B179: 03        .byte $03   ; 
- D 1 - I - 0x00F18A 03:B17A: 0C        .byte $0C   ; 
- D 1 - I - 0x00F18B 03:B17B: 09        .byte $09   ; 
- D 1 - I - 0x00F18C 03:B17C: 07        .byte $07   ; 
- D 1 - I - 0x00F18D 03:B17D: 0C        .byte $0C   ; 
- D 1 - I - 0x00F18E 03:B17E: 0C        .byte $0C   ; 
- D 1 - I - 0x00F18F 03:B17F: 01        .byte $01   ; 
- D 1 - I - 0x00F190 03:B180: 05        .byte $05   ; 
- D 1 - I - 0x00F191 03:B181: 0F        .byte $0F   ; 
- D 1 - I - 0x00F192 03:B182: 58        .byte $58   ; 
- D 1 - I - 0x00F193 03:B183: 05        .byte $05   ; 
- D 1 - I - 0x00F194 03:B184: 01        .byte $01   ; 
- D 1 - I - 0x00F195 03:B185: 70        .byte $70   ; 
- D 1 - I - 0x00F196 03:B186: 24        .byte $24   ; 
- D 1 - I - 0x00F197 03:B187: 02        .byte $02   ; 
- D 1 - I - 0x00F198 03:B188: 01        .byte $01   ; 
- D 1 - I - 0x00F199 03:B189: 40        .byte $40   ; 
- D 1 - I - 0x00F19A 03:B18A: 0B        .byte $0B   ; 
- D 1 - I - 0x00F19B 03:B18B: 9C        .byte $9C   ; 
- D 1 - I - 0x00F19C 03:B18C: 24        .byte $24   ; 
- D 1 - I - 0x00F19D 03:B18D: 01        .byte $01   ; 
- - - - - - 0x00F19E 03:B18E: 02        .byte $02   ; 
- - - - - - 0x00F19F 03:B18F: 00        .byte $00   ; 
- - - - - - 0x00F1A0 03:B190: FE        .byte $FE   ; 
- - - - - - 0x00F1A1 03:B191: FE        .byte $FE   ; 



_off010_B192_06:
- D 1 - I - 0x00F1A2 03:B192: 18        .byte $18   ; 
- D 1 - I - 0x00F1A3 03:B193: 0F        .byte $0F   ; 
- D 1 - I - 0x00F1A4 03:B194: 23        .byte $23   ; 
- D 1 - I - 0x00F1A5 03:B195: FF        .byte $FF   ; 
- D 1 - I - 0x00F1A6 03:B196: 22        .byte $22   ; 
- D 1 - I - 0x00F1A7 03:B197: 08        .byte $08   ; 
- D 1 - I - 0x00F1A8 03:B198: 21        .byte $21   ; 
- D 1 - I - 0x00F1A9 03:B199: 08        .byte $08   ; 
- D 1 - I - 0x00F1AA 03:B19A: 0B        .byte $0B   ; 
- D 1 - I - 0x00F1AB 03:B19B: 90        .byte $90   ; 
- D 1 - I - 0x00F1AC 03:B19C: 0C        .byte $0C   ; 
- D 1 - I - 0x00F1AD 03:B19D: 06        .byte $06   ; 
- D 1 - I - 0x00F1AE 03:B19E: 20        .byte $20   ; 
- D 1 - I - 0x00F1AF 03:B19F: 83        .byte $83   ; 
- D 1 - I - 0x00F1B0 03:B1A0: 18        .byte $18   ; 
- D 1 - I - 0x00F1B1 03:B1A1: 10        .byte $10   ; 
- D 1 - I - 0x00F1B2 03:B1A2: 2B        .byte $2B   ; 
- D 1 - I - 0x00F1B3 03:B1A3: 10        .byte $10   ; 
- D 1 - I - 0x00F1B4 03:B1A4: 03        .byte $03   ; 
- D 1 - I - 0x00F1B5 03:B1A5: 0C        .byte $0C   ; 
- D 1 - I - 0x00F1B6 03:B1A6: 18        .byte $18   ; 
- D 1 - I - 0x00F1B7 03:B1A7: 14        .byte $14   ; 
- D 1 - I - 0x00F1B8 03:B1A8: 0C        .byte $0C   ; 
- D 1 - I - 0x00F1B9 03:B1A9: 02        .byte $02   ; 
- D 1 - I - 0x00F1BA 03:B1AA: 01        .byte $01   ; 
- D 1 - I - 0x00F1BB 03:B1AB: 10        .byte $10   ; 
- D 1 - I - 0x00F1BC 03:B1AC: 34        .byte $34   ; 
- D 1 - I - 0x00F1BD 03:B1AD: 12        .byte $12   ; 
- D 1 - I - 0x00F1BE 03:B1AE: 25        .byte $25   ; 
- D 1 - I - 0x00F1BF 03:B1AF: 17        .byte $17   ; 
- D 1 - I - 0x00F1C0 03:B1B0: 37        .byte $37   ; 
- D 1 - I - 0x00F1C1 03:B1B1: 14        .byte $14   ; 
- D 1 - I - 0x00F1C2 03:B1B2: 2E        .byte $2E   ; 
- D 1 - I - 0x00F1C3 03:B1B3: 00        .byte $00   ; 
- D 1 - I - 0x00F1C4 03:B1B4: 18        .byte $18   ; 
- D 1 - I - 0x00F1C5 03:B1B5: 10        .byte $10   ; 
- D 1 - I - 0x00F1C6 03:B1B6: 05        .byte $05   ; 
- D 1 - I - 0x00F1C7 03:B1B7: 0F        .byte $0F   ; 
- D 1 - I - 0x00F1C8 03:B1B8: 22        .byte $22   ; 
- D 1 - I - 0x00F1C9 03:B1B9: 23        .byte $23   ; 
- D 1 - I - 0x00F1CA 03:B1BA: 01        .byte $01   ; 
- D 1 - I - 0x00F1CB 03:B1BB: 08        .byte $08   ; 
- D 1 - I - 0x00F1CC 03:B1BC: 0A        .byte $0A   ; 
- D 1 - I - 0x00F1CD 03:B1BD: 25        .byte $25   ; 
- D 1 - I - 0x00F1CE 03:B1BE: 22        .byte $22   ; 
- D 1 - I - 0x00F1CF 03:B1BF: 24        .byte $24   ; 
- D 1 - I - 0x00F1D0 03:B1C0: 01        .byte $01   ; 
- D 1 - I - 0x00F1D1 03:B1C1: 78        .byte $78   ; 
- D 1 - I - 0x00F1D2 03:B1C2: 22        .byte $22   ; 
- D 1 - I - 0x00F1D3 03:B1C3: 25        .byte $25   ; 
- D 1 - I - 0x00F1D4 03:B1C4: 01        .byte $01   ; 
- D 1 - I - 0x00F1D5 03:B1C5: 87        .byte $87   ; 
- D 1 - I - 0x00F1D6 03:B1C6: 22        .byte $22   ; 
- D 1 - I - 0x00F1D7 03:B1C7: 26        .byte $26   ; 
- D 1 - I - 0x00F1D8 03:B1C8: 01        .byte $01   ; 
- D 1 - I - 0x00F1D9 03:B1C9: 25        .byte $25   ; 
- D 1 - I - 0x00F1DA 03:B1CA: 58        .byte $58   ; 
- D 1 - I - 0x00F1DB 03:B1CB: 05        .byte $05   ; 
- D 1 - I - 0x00F1DC 03:B1CC: 01        .byte $01   ; 
- D 1 - I - 0x00F1DD 03:B1CD: B0        .byte $B0   ; 
- D 1 - I - 0x00F1DE 03:B1CE: 0C        .byte $0C   ; 
- D 1 - I - 0x00F1DF 03:B1CF: 02        .byte $02   ; 
- D 1 - I - 0x00F1E0 03:B1D0: 0C        .byte $0C   ; 
- D 1 - I - 0x00F1E1 03:B1D1: 03        .byte $03   ; 
- D 1 - I - 0x00F1E2 03:B1D2: 0B        .byte $0B   ; 
- D 1 - I - 0x00F1E3 03:B1D3: 9C        .byte $9C   ; 
- D 1 - I - 0x00F1E4 03:B1D4: 24        .byte $24   ; 
- D 1 - I - 0x00F1E5 03:B1D5: 00        .byte $00   ; 
- - - - - - 0x00F1E6 03:B1D6: 02        .byte $02   ; 
- - - - - - 0x00F1E7 03:B1D7: 00        .byte $00   ; 
- - - - - - 0x00F1E8 03:B1D8: FE        .byte $FE   ; 
- - - - - - 0x00F1E9 03:B1D9: FE        .byte $FE   ; 
- D 1 - I - 0x00F1EA 03:B1DA: 35        .byte $35   ; 
- D 1 - I - 0x00F1EB 03:B1DB: 13        .byte $13   ; 
- D 1 - I - 0x00F1EC 03:B1DC: 2B        .byte $2B   ; 
- D 1 - I - 0x00F1ED 03:B1DD: 11        .byte $11   ; 
- D 1 - I - 0x00F1EE 03:B1DE: 0C        .byte $0C   ; 
- D 1 - I - 0x00F1EF 03:B1DF: 02        .byte $02   ; 
- D 1 - I - 0x00F1F0 03:B1E0: 01        .byte $01   ; 
- D 1 - I - 0x00F1F1 03:B1E1: 04        .byte $04   ; 
- D 1 - I - 0x00F1F2 03:B1E2: 22        .byte $22   ; 
- D 1 - I - 0x00F1F3 03:B1E3: 2B        .byte $2B   ; 
- D 1 - I - 0x00F1F4 03:B1E4: 42        .byte $42   ; 
- D 1 - I - 0x00F1F5 03:B1E5: 00        .byte $00   ; 
- D 1 - I - 0x00F1F6 03:B1E6: 2E        .byte $2E   ; 
- D 1 - I - 0x00F1F7 03:B1E7: 00        .byte $00   ; 
- D 1 - I - 0x00F1F8 03:B1E8: 2B        .byte $2B   ; 
- D 1 - I - 0x00F1F9 03:B1E9: 11        .byte $11   ; 
- D 1 - I - 0x00F1FA 03:B1EA: 0C        .byte $0C   ; 
- D 1 - I - 0x00F1FB 03:B1EB: 02        .byte $02   ; 
- D 1 - I - 0x00F1FC 03:B1EC: 01        .byte $01   ; 
- D 1 - I - 0x00F1FD 03:B1ED: 04        .byte $04   ; 
- D 1 - I - 0x00F1FE 03:B1EE: 18        .byte $18   ; 
- D 1 - I - 0x00F1FF 03:B1EF: 17        .byte $17   ; 
- - - - - - 0x00F200 03:B1F0: 26        .byte $26   ; 
- - - - - - 0x00F201 03:B1F1: 00        .byte $00   ; 
- - - - - - 0x00F202 03:B1F2: 18        .byte $18   ; 
- - - - - - 0x00F203 03:B1F3: 10        .byte $10   ; 
- D 1 - I - 0x00F204 03:B1F4: 38        .byte $38   ; 
- D 1 - I - 0x00F205 03:B1F5: 00        .byte $00   ; 
- D 1 - I - 0x00F206 03:B1F6: 2B        .byte $2B   ; 
- D 1 - I - 0x00F207 03:B1F7: 11        .byte $11   ; 
- D 1 - I - 0x00F208 03:B1F8: 01        .byte $01   ; 
- D 1 - I - 0x00F209 03:B1F9: 04        .byte $04   ; 
- D 1 - I - 0x00F20A 03:B1FA: 2B        .byte $2B   ; 
- D 1 - I - 0x00F20B 03:B1FB: 12        .byte $12   ; 
- D 1 - I - 0x00F20C 03:B1FC: 01        .byte $01   ; 
- D 1 - I - 0x00F20D 03:B1FD: 0C        .byte $0C   ; 
- D 1 - I - 0x00F20E 03:B1FE: 0C        .byte $0C   ; 
- D 1 - I - 0x00F20F 03:B1FF: 02        .byte $02   ; 
- D 1 - I - 0x00F210 03:B200: 01        .byte $01   ; 
- D 1 - I - 0x00F211 03:B201: 08        .byte $08   ; 
- D 1 - I - 0x00F212 03:B202: 06        .byte $06   ; 
- D 1 - I - 0x00F213 03:B203: 00        .byte $00   ; 
- D 1 - I - 0x00F214 03:B204: 18        .byte $18   ; 
- D 1 - I - 0x00F215 03:B205: 10        .byte $10   ; 
- D 1 - I - 0x00F216 03:B206: 20        .byte $20   ; 
- D 1 - I - 0x00F217 03:B207: 40        .byte $40   ; 
- D 1 - I - 0x00F218 03:B208: 22        .byte $22   ; 
- D 1 - I - 0x00F219 03:B209: 27        .byte $27   ; 
- D 1 - I - 0x00F21A 03:B20A: 01        .byte $01   ; 
- D 1 - I - 0x00F21B 03:B20B: 04        .byte $04   ; 
- D 1 - I - 0x00F21C 03:B20C: 22        .byte $22   ; 
- D 1 - I - 0x00F21D 03:B20D: 28        .byte $28   ; 
- D 1 - I - 0x00F21E 03:B20E: 01        .byte $01   ; 
- D 1 - I - 0x00F21F 03:B20F: 0E        .byte $0E   ; 
- D 1 - I - 0x00F220 03:B210: 18        .byte $18   ; 
- D 1 - I - 0x00F221 03:B211: 12        .byte $12   ; 
- D 1 - I - 0x00F222 03:B212: 2E        .byte $2E   ; 
- D 1 - I - 0x00F223 03:B213: 00        .byte $00   ; 
- D 1 - I - 0x00F224 03:B214: 2B        .byte $2B   ; 
- D 1 - I - 0x00F225 03:B215: 13        .byte $13   ; 
- D 1 - I - 0x00F226 03:B216: 03        .byte $03   ; 
- D 1 - I - 0x00F227 03:B217: 02        .byte $02   ; 
- D 1 - I - 0x00F228 03:B218: 18        .byte $18   ; 
- D 1 - I - 0x00F229 03:B219: 11        .byte $11   ; 
- D 1 - I - 0x00F22A 03:B21A: 2E        .byte $2E   ; 
- D 1 - I - 0x00F22B 03:B21B: 00        .byte $00   ; 
- D 1 - I - 0x00F22C 03:B21C: 2B        .byte $2B   ; 
- D 1 - I - 0x00F22D 03:B21D: 11        .byte $11   ; 
- D 1 - I - 0x00F22E 03:B21E: 01        .byte $01   ; 
- D 1 - I - 0x00F22F 03:B21F: 04        .byte $04   ; 
- D 1 - I - 0x00F230 03:B220: 2B        .byte $2B   ; 
- D 1 - I - 0x00F231 03:B221: 12        .byte $12   ; 
- D 1 - I - 0x00F232 03:B222: 01        .byte $01   ; 
- D 1 - I - 0x00F233 03:B223: 0E        .byte $0E   ; 
- D 1 - I - 0x00F234 03:B224: 18        .byte $18   ; 
- D 1 - I - 0x00F235 03:B225: 10        .byte $10   ; 
- - - - - - 0x00F236 03:B226: 1F        .byte $1F   ; 
- - - - - - 0x00F237 03:B227: 00        .byte $00   ; 
- - - - - - 0x00F238 03:B228: 18        .byte $18   ; 
- - - - - - 0x00F239 03:B229: 10        .byte $10   ; 
- - - - - - 0x00F23A 03:B22A: 2B        .byte $2B   ; 
- - - - - - 0x00F23B 03:B22B: 10        .byte $10   ; 
- - - - - - 0x00F23C 03:B22C: 03        .byte $03   ; 
- - - - - - 0x00F23D 03:B22D: 0C        .byte $0C   ; 
- - - - - - 0x00F23E 03:B22E: 18        .byte $18   ; 
- - - - - - 0x00F23F 03:B22F: 11        .byte $11   ; 



_off010_B230_08:
- D 1 - I - 0x00F240 03:B230: 0C        .byte $0C   ; 
- D 1 - I - 0x00F241 03:B231: 01        .byte $01   ; 
- D 1 - I - 0x00F242 03:B232: 0C        .byte $0C   ; 
- D 1 - I - 0x00F243 03:B233: 05        .byte $05   ; 
- D 1 - I - 0x00F244 03:B234: 3A        .byte $3A   ; 
- D 1 - I - 0x00F245 03:B235: 00        .byte $00   ; 
- D 1 - I - 0x00F246 03:B236: 0C        .byte $0C   ; 
- D 1 - I - 0x00F247 03:B237: 07        .byte $07   ; 
- D 1 - I - 0x00F248 03:B238: 3B        .byte $3B   ; 
- D 1 - I - 0x00F249 03:B239: 1A        .byte $1A   ; 
- D 1 - I - 0x00F24A 03:B23A: 3D        .byte $3D   ; 
- D 1 - I - 0x00F24B 03:B23B: 00        .byte $00   ; 
- D 1 - I - 0x00F24C 03:B23C: 07        .byte $07   ; 
- D 1 - I - 0x00F24D 03:B23D: 04        .byte $04   ; 
- D 1 - I - 0x00F24E 03:B23E: 0B        .byte $0B   ; 
- D 1 - I - 0x00F24F 03:B23F: 34        .byte $34   ; 
- D 1 - I - 0x00F250 03:B240: 22        .byte $22   ; 
- D 1 - I - 0x00F251 03:B241: 29        .byte $29   ; 
- D 1 - I - 0x00F252 03:B242: 01        .byte $01   ; 
- D 1 - I - 0x00F253 03:B243: 10        .byte $10   ; 
- D 1 - I - 0x00F254 03:B244: 02        .byte $02   ; 
- D 1 - I - 0x00F255 03:B245: 00        .byte $00   ; 
- - - - - - 0x00F256 03:B246: FE        .byte $FE   ; 
- - - - - - 0x00F257 03:B247: FE        .byte $FE   ; 
- D 1 - I - 0x00F258 03:B248: 14        .byte $14   ; 
- D 1 - I - 0x00F259 03:B249: 08        .byte $08   ; 
- D 1 - I - 0x00F25A 03:B24A: 0B        .byte $0B   ; 
- D 1 - I - 0x00F25B 03:B24B: 88        .byte con_music_88   ; 
- D 1 - I - 0x00F25C 03:B24C: 0A        .byte $0A   ; 
- D 1 - I - 0x00F25D 03:B24D: 28        .byte $28   ; 
- D 1 - I - 0x00F25E 03:B24E: 22        .byte $22   ; 
- D 1 - I - 0x00F25F 03:B24F: 2A        .byte $2A   ; 
- D 1 - I - 0x00F260 03:B250: 01        .byte $01   ; 
- D 1 - I - 0x00F261 03:B251: 55        .byte $55   ; 
- D 1 - I - 0x00F262 03:B252: 0A        .byte $0A   ; 
- D 1 - I - 0x00F263 03:B253: 29        .byte $29   ; 
- D 1 - I - 0x00F264 03:B254: 14        .byte $14   ; 
- D 1 - I - 0x00F265 03:B255: 30        .byte $30   ; 
- D 1 - I - 0x00F266 03:B256: 2B        .byte $2B   ; 
- D 1 - I - 0x00F267 03:B257: 14        .byte $14   ; 
- D 1 - I - 0x00F268 03:B258: 0C        .byte $0C   ; 
- D 1 - I - 0x00F269 03:B259: 08        .byte $08   ; 
- D 1 - I - 0x00F26A 03:B25A: 20        .byte $20   ; 
- D 1 - I - 0x00F26B 03:B25B: 04        .byte $04   ; 
- D 1 - I - 0x00F26C 03:B25C: 10        .byte $10   ; 
- D 1 - I - 0x00F26D 03:B25D: 06        .byte $06   ; 
- D 1 - I - 0x00F26E 03:B25E: 18        .byte $18   ; 
- D 1 - I - 0x00F26F 03:B25F: 33        .byte $33   ; 
- D 1 - I - 0x00F270 03:B260: 10        .byte $10   ; 
- D 1 - I - 0x00F271 03:B261: 06        .byte $06   ; 
- D 1 - I - 0x00F272 03:B262: 03        .byte $03   ; 
- D 1 - I - 0x00F273 03:B263: 10        .byte $10   ; 
- D 1 - I - 0x00F274 03:B264: 18        .byte $18   ; 
- D 1 - I - 0x00F275 03:B265: 23        .byte $23   ; 
- D 1 - I - 0x00F276 03:B266: 05        .byte $05   ; 
- D 1 - I - 0x00F277 03:B267: 0F        .byte $0F   ; 
- D 1 - I - 0x00F278 03:B268: 0A        .byte $0A   ; 
- D 1 - I - 0x00F279 03:B269: 2D        .byte $2D   ; 
- D 1 - I - 0x00F27A 03:B26A: 22        .byte $22   ; 
- D 1 - I - 0x00F27B 03:B26B: 2C        .byte $2C   ; 
- D 1 - I - 0x00F27C 03:B26C: 01        .byte $01   ; 
- D 1 - I - 0x00F27D 03:B26D: 8A        .byte $8A   ; 
- D 1 - I - 0x00F27E 03:B26E: 22        .byte $22   ; 
- D 1 - I - 0x00F27F 03:B26F: 2D        .byte $2D   ; 
- D 1 - I - 0x00F280 03:B270: 01        .byte $01   ; 
- D 1 - I - 0x00F281 03:B271: 36        .byte $36   ; 
- D 1 - I - 0x00F282 03:B272: FE        .byte $FE   ; 
- - - - - - 0x00F283 03:B273: FE        .byte $FE   ; 
- D 1 - I - 0x00F284 03:B274: 06        .byte $06   ; 
- D 1 - I - 0x00F285 03:B275: 00        .byte $00   ; 
- D 1 - I - 0x00F286 03:B276: 10        .byte $10   ; 
- D 1 - I - 0x00F287 03:B277: 07        .byte $07   ; 
- D 1 - I - 0x00F288 03:B278: 01        .byte $01   ; 
- D 1 - I - 0x00F289 03:B279: 11        .byte $11   ; 
- D 1 - I - 0x00F28A 03:B27A: 2B        .byte $2B   ; 
- D 1 - I - 0x00F28B 03:B27B: 16        .byte $16   ; 
- D 1 - I - 0x00F28C 03:B27C: 08        .byte $08   ; 
- D 1 - I - 0x00F28D 03:B27D: 02        .byte $02   ; 
- D 1 - I - 0x00F28E 03:B27E: 18        .byte $18   ; 
- D 1 - I - 0x00F28F 03:B27F: 22        .byte $22   ; 
- D 1 - I - 0x00F290 03:B280: 44        .byte $44   ; 
- D 1 - I - 0x00F291 03:B281: 00        .byte $00   ; 
- - - - - - 0x00F292 03:B282: 2E        .byte $2E   ; 
- - - - - - 0x00F293 03:B283: 00        .byte $00   ; 
- - - - - - 0x00F294 03:B284: 10        .byte $10   ; 
- - - - - - 0x00F295 03:B285: 08        .byte $08   ; 
- - - - - - 0x00F296 03:B286: 01        .byte $01   ; 
- - - - - - 0x00F297 03:B287: 34        .byte $34   ; 
- - - - - - 0x00F298 03:B288: 45        .byte $45   ; 
- - - - - - 0x00F299 03:B289: 00        .byte $00   ; 
- D 1 - I - 0x00F29A 03:B28A: 2E        .byte $2E   ; 
- D 1 - I - 0x00F29B 03:B28B: 00        .byte $00   ; 
- D 1 - I - 0x00F29C 03:B28C: 10        .byte $10   ; 
- D 1 - I - 0x00F29D 03:B28D: 09        .byte $09   ; 
- D 1 - I - 0x00F29E 03:B28E: 01        .byte $01   ; 
- D 1 - I - 0x00F29F 03:B28F: 19        .byte $19   ; 
- D 1 - I - 0x00F2A0 03:B290: 45        .byte $45   ; 
- D 1 - I - 0x00F2A1 03:B291: 00        .byte $00   ; 
- D 1 - I - 0x00F2A2 03:B292: 10        .byte $10   ; 
- D 1 - I - 0x00F2A3 03:B293: 0A        .byte $0A   ; 
- D 1 - I - 0x00F2A4 03:B294: 01        .byte $01   ; 
- D 1 - I - 0x00F2A5 03:B295: 12        .byte $12   ; 
- D 1 - I - 0x00F2A6 03:B296: 5A        .byte $5A   ; 
- D 1 - I - 0x00F2A7 03:B297: 00        .byte $00   ; 
- D 1 - I - 0x00F2A8 03:B298: 4A        .byte $4A   ; 
- D 1 - I - 0x00F2A9 03:B299: 00        .byte $00   ; 
- D 1 - I - 0x00F2AA 03:B29A: 46        .byte $46   ; 
- D 1 - I - 0x00F2AB 03:B29B: 38        .byte $38   ; 
- D 1 - I - 0x00F2AC 03:B29C: 47        .byte $47   ; 
- D 1 - I - 0x00F2AD 03:B29D: 00        .byte $00   ; 
- D 1 - I - 0x00F2AE 03:B29E: 07        .byte $07   ; 
- D 1 - I - 0x00F2AF 03:B29F: 36        .byte $36   ; 
- D 1 - I - 0x00F2B0 03:B2A0: 1F        .byte $1F   ; 
- D 1 - I - 0x00F2B1 03:B2A1: 00        .byte $00   ; 
- D 1 - I - 0x00F2B2 03:B2A2: 07        .byte $07   ; 
- D 1 - I - 0x00F2B3 03:B2A3: 23        .byte $23   ; 
- - - - - - 0x00F2B4 03:B2A4: 5E        .byte $5E   ; 
- - - - - - 0x00F2B5 03:B2A5: 00        .byte $00   ; 
- - - - - - 0x00F2B6 03:B2A6: 2E        .byte $2E   ; 
- - - - - - 0x00F2B7 03:B2A7: 00        .byte $00   ; 
- - - - - - 0x00F2B8 03:B2A8: 10        .byte $10   ; 
- - - - - - 0x00F2B9 03:B2A9: 09        .byte $09   ; 
- - - - - - 0x00F2BA 03:B2AA: 01        .byte $01   ; 
- - - - - - 0x00F2BB 03:B2AB: 19        .byte $19   ; 
- - - - - - 0x00F2BC 03:B2AC: 07        .byte $07   ; 
- - - - - - 0x00F2BD 03:B2AD: 3C        .byte $3C   ; 
- D 1 - I - 0x00F2BE 03:B2AE: 2E        .byte $2E   ; 
- D 1 - I - 0x00F2BF 03:B2AF: 00        .byte $00   ; 
- D 1 - I - 0x00F2C0 03:B2B0: 10        .byte $10   ; 
- D 1 - I - 0x00F2C1 03:B2B1: 09        .byte $09   ; 
- D 1 - I - 0x00F2C2 03:B2B2: 01        .byte $01   ; 
- D 1 - I - 0x00F2C3 03:B2B3: 19        .byte $19   ; 
- D 1 - I - 0x00F2C4 03:B2B4: 10        .byte $10   ; 
- D 1 - I - 0x00F2C5 03:B2B5: 08        .byte $08   ; 
- D 1 - I - 0x00F2C6 03:B2B6: 01        .byte $01   ; 
- D 1 - I - 0x00F2C7 03:B2B7: 34        .byte $34   ; 
- D 1 - I - 0x00F2C8 03:B2B8: 59        .byte $59   ; 
- D 1 - I - 0x00F2C9 03:B2B9: 00        .byte $00   ; 
- D 1 - I - 0x00F2CA 03:B2BA: 27        .byte $27   ; 
- D 1 - I - 0x00F2CB 03:B2BB: 00        .byte $00   ; 
- D 1 - I - 0x00F2CC 03:B2BC: 18        .byte $18   ; 
- D 1 - I - 0x00F2CD 03:B2BD: 33        .byte $33   ; 
- D 1 - I - 0x00F2CE 03:B2BE: 27        .byte $27   ; 
- D 1 - I - 0x00F2CF 03:B2BF: 00        .byte $00   ; 
- D 1 - I - 0x00F2D0 03:B2C0: 5C        .byte $5C   ; 
- D 1 - I - 0x00F2D1 03:B2C1: 00        .byte $00   ; 
- D 1 - I - 0x00F2D2 03:B2C2: 2E        .byte $2E   ; 
- D 1 - I - 0x00F2D3 03:B2C3: 00        .byte $00   ; 
- D 1 - I - 0x00F2D4 03:B2C4: 07        .byte $07   ; 
- D 1 - I - 0x00F2D5 03:B2C5: 23        .byte $23   ; 
- D 1 - I - 0x00F2D6 03:B2C6: 5D        .byte $5D   ; 
- D 1 - I - 0x00F2D7 03:B2C7: 00        .byte $00   ; 
- D 1 - I - 0x00F2D8 03:B2C8: 07        .byte $07   ; 
- D 1 - I - 0x00F2D9 03:B2C9: 23        .byte $23   ; 



_off010_B2CA_0A:
- D 1 - I - 0x00F2DA 03:B2CA: 61        .byte $61   ; 
- D 1 - I - 0x00F2DB 03:B2CB: 00        .byte $00   ; 
- D 1 - I - 0x00F2DC 03:B2CC: 48        .byte $48   ; 
- D 1 - I - 0x00F2DD 03:B2CD: 00        .byte $00   ; 
- D 1 - I - 0x00F2DE 03:B2CE: 50        .byte $50   ; 
- D 1 - I - 0x00F2DF 03:B2CF: 00        .byte $00   ; 
- D 1 - I - 0x00F2E0 03:B2D0: 49        .byte $49   ; 
- D 1 - I - 0x00F2E1 03:B2D1: 01        .byte $01   ; 
- D 1 - I - 0x00F2E2 03:B2D2: 4B        .byte $4B   ; 
- D 1 - I - 0x00F2E3 03:B2D3: 02        .byte $02   ; 
- D 1 - I - 0x00F2E4 03:B2D4: 49        .byte $49   ; 
- D 1 - I - 0x00F2E5 03:B2D5: 02        .byte $02   ; 
- D 1 - I - 0x00F2E6 03:B2D6: 49        .byte $49   ; 
- D 1 - I - 0x00F2E7 03:B2D7: 01        .byte $01   ; 
- D 1 - I - 0x00F2E8 03:B2D8: 4C        .byte $4C   ; 
- D 1 - I - 0x00F2E9 03:B2D9: 01        .byte $01   ; 
- D 1 - I - 0x00F2EA 03:B2DA: 4C        .byte $4C   ; 
- D 1 - I - 0x00F2EB 03:B2DB: 01        .byte $01   ; 
- D 1 - I - 0x00F2EC 03:B2DC: 4C        .byte $4C   ; 
- D 1 - I - 0x00F2ED 03:B2DD: 03        .byte $03   ; 
- D 1 - I - 0x00F2EE 03:B2DE: 49        .byte $49   ; 
- D 1 - I - 0x00F2EF 03:B2DF: 04        .byte $04   ; 
- D 1 - I - 0x00F2F0 03:B2E0: 49        .byte $49   ; 
- D 1 - I - 0x00F2F1 03:B2E1: 05        .byte $05   ; 
- D 1 - I - 0x00F2F2 03:B2E2: 49        .byte $49   ; 
- D 1 - I - 0x00F2F3 03:B2E3: 06        .byte $06   ; 
- D 1 - I - 0x00F2F4 03:B2E4: 49        .byte $49   ; 
- D 1 - I - 0x00F2F5 03:B2E5: 01        .byte $01   ; 
- D 1 - I - 0x00F2F6 03:B2E6: 4C        .byte $4C   ; 
- D 1 - I - 0x00F2F7 03:B2E7: 01        .byte $01   ; 
- D 1 - I - 0x00F2F8 03:B2E8: 4C        .byte $4C   ; 
- D 1 - I - 0x00F2F9 03:B2E9: 01        .byte $01   ; 
- D 1 - I - 0x00F2FA 03:B2EA: 4C        .byte $4C   ; 
- D 1 - I - 0x00F2FB 03:B2EB: 07        .byte $07   ; 
- D 1 - I - 0x00F2FC 03:B2EC: 07        .byte $07   ; 
- D 1 - I - 0x00F2FD 03:B2ED: 06        .byte $06   ; 
- D 1 - I - 0x00F2FE 03:B2EE: 0C        .byte $0C   ; 
- D 1 - I - 0x00F2FF 03:B2EF: 01        .byte $01   ; 
- D 1 - I - 0x00F300 03:B2F0: 0B        .byte $0B   ; 
- D 1 - I - 0x00F301 03:B2F1: 55        .byte $55   ; 
- D 1 - I - 0x00F302 03:B2F2: 58        .byte $58   ; 
- D 1 - I - 0x00F303 03:B2F3: 05        .byte $05   ; 
- D 1 - I - 0x00F304 03:B2F4: 01        .byte $01   ; 
- D 1 - I - 0x00F305 03:B2F5: 70        .byte $70   ; 
- D 1 - I - 0x00F306 03:B2F6: 24        .byte $24   ; 
- D 1 - I - 0x00F307 03:B2F7: 02        .byte $02   ; 
- D 1 - I - 0x00F308 03:B2F8: 01        .byte $01   ; 
- D 1 - I - 0x00F309 03:B2F9: 40        .byte $40   ; 
- D 1 - I - 0x00F30A 03:B2FA: 0B        .byte $0B   ; 
- D 1 - I - 0x00F30B 03:B2FB: 9C        .byte $9C   ; 
- D 1 - I - 0x00F30C 03:B2FC: 24        .byte $24   ; 
- D 1 - I - 0x00F30D 03:B2FD: 03        .byte $03   ; 
- - - - - - 0x00F30E 03:B2FE: FE        .byte $FE   ; 



.out .sprintf("Free bytes in bank 3E: 0x%04X [%d]", ($8000 - *), ($8000 - *))



