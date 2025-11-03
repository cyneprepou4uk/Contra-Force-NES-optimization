.segment "BANK_08"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $8000  ; for listing file
; 0x010010-0x01400F



.export sub_0x003A8D
.export ofs_006_0x003A8D_15



sub_0x003A8D:
ofs_006_0x003A8D_15:
; con_F3D6_15
C - - - - - 0x003A8D 00:BA7D: A9 00     LDA #$00
C - - - - - 0x003A8F 00:BA7F: 85 1F     STA ram_001F_t03
; bzk optimize, useless STA + STA + STA + STA
C - - - - - 0x003A91 00:BA81: 85 19     STA ram_0019_t07_useless
C - - - - - 0x003A93 00:BA83: 85 1B     STA ram_001B_t11_useless
C - - - - - 0x003A95 00:BA85: 85 1C     STA ram_001C_t18_useless
C - - - - - 0x003A99 00:BA89: 85 69     STA ram_0069
C - - - - - 0x003A9B 00:BA8B: 85 6A     STA ram_006A
C - - - - - 0x003A9D 00:BA8D: 85 6B     STA ram_006B
C - - - - - 0x003A9F 00:BA8F: 85 6C     STA ram_006C
C - - - - - 0x003AA1 00:BA91: A5 BD     LDA ram_00BD_flag
C - - - - - 0x003AA3 00:BA93: D0 0A     BNE bra_BA9F
C - - - - - 0x003AA5 00:BA95: A5 D5     LDA ram_00D5
C - - - - - 0x003AA7 00:BA97: 85 19     STA ram_0019_t04
C - - - - - 0x003AA9 00:BA99: 05 D4     ORA ram_00D4
C - - - - - 0x003AAB 00:BA9B: F0 02     BEQ bra_BA9F
C - - - - - 0x003AAD 00:BA9D: E6 1F     INC ram_001F_t03
bra_BA9F:
C - - - - - 0x003AAF 00:BA9F: A5 D3     LDA ram_00D3
C - - - - - 0x003AB1 00:BAA1: 85 1B     STA ram_001B_t02_hi
C - - - - - 0x003AB3 00:BAA3: 05 D2     ORA ram_00D2
C - - - - - 0x003AB5 00:BAA5: F0 04     BEQ bra_BAAB
C - - - - - 0x003AB7 00:BAA7: E6 1F     INC ram_001F_t03
C - - - - - 0x003AB9 00:BAA9: E6 1F     INC ram_001F_t03
bra_BAAB:
C - - - - - 0x003ABB 00:BAAB: A5 D4     LDA ram_00D4
C - - - - - 0x003ABD 00:BAAD: 85 18     STA ram_0018_t12
C - - - - - 0x003ABF 00:BAAF: A5 D2     LDA ram_00D2
C - - - - - 0x003AC1 00:BAB1: 85 1A     STA ram_001A_t08_lo
C - - - - - 0x003AC3 00:BAB3: A2 00     LDX #$00
loc_BAB5_loop:
C D 1 - - - 0x003AC5 00:BAB5: BD 82 07  LDA ram_0782_unk,X
C - - - - - 0x003AC8 00:BAB8: D0 03     BNE bra_BABD
C - - - - - 0x003ACA 00:BABA: 4C 91 BB  JMP loc_BB91
bra_BABD:
C - - - - - 0x003AE5 00:BAD5: A9 01     LDA #$01
C - - - - - 0x003AE7 00:BAD7: 20 94 BF  JSR sub_BF94
C - - - - - 0x003AEA 00:BADA: A5 00     LDA ram_0000_t36
C - - - - - 0x003AEC 00:BADC: 85 03     STA ram_0003_t17
C - - - - - 0x003AEE 00:BADE: A9 00     LDA #$00
C - - - - - 0x003AF0 00:BAE0: 20 94 BF  JSR sub_BF94
C - - - - - 0x003AF3 00:BAE3: 20 89 BF  JSR sub_BF89
C - - - - - 0x003AF6 00:BAE6: B0 41     BCS bra_BB29
C - - - - - 0x003AF8 00:BAE8: A5 00     LDA ram_0000_t36
C - - - - - 0x003AFA 00:BAEA: F0 3D     BEQ bra_BB29
C - - - - - 0x003AFC 00:BAEC: A5 D0     LDA ram_00D0
C - - - - - 0x003AFE 00:BAEE: D0 39     BNE bra_BB29
C - - - - - 0x003B00 00:BAF0: A5 BD     LDA ram_00BD_flag
C - - - - - 0x003B02 00:BAF2: D0 35     BNE bra_BB29
C - - - - - 0x003B0E 00:BAFE: BD E6 07  LDA ram_07E6,X
C - - - - - 0x003B11 00:BB01: 18        CLC
C - - - - - 0x003B12 00:BB02: 65 18     ADC ram_0018_t12
C - - - - - 0x003B14 00:BB04: 85 18     STA ram_0018_t12
C - - - - - 0x003B16 00:BB06: BD E8 07  LDA ram_07E8,X
C - - - - - 0x003B19 00:BB09: 65 19     ADC ram_0019_t04
C - - - - - 0x003B1B 00:BB0B: 85 19     STA ram_0019_t04
C - - - - - 0x003B1D 00:BB0D: 10 08     BPL bra_BB17
C - - - - - 0x003B1F 00:BB0F: C9 FE     CMP #$FE
C - - - - - 0x003B21 00:BB11: B0 10     BCS bra_BB23
C - - - - - 0x003B23 00:BB13: A9 FE     LDA #$FE
C - - - - - 0x003B25 00:BB15: D0 06     BNE bra_BB1D    ; jmp
bra_BB17:
C - - - - - 0x003B27 00:BB17: C9 02     CMP #$02
C - - - - - 0x003B29 00:BB19: 90 08     BCC bra_BB23
C - - - - - 0x003B2B 00:BB1B: A9 02     LDA #$02
bra_BB1D:
C - - - - - 0x003B2D 00:BB1D: 85 19     STA ram_0019_t04
C - - - - - 0x003B2F 00:BB1F: A9 00     LDA #$00
C - - - - - 0x003B31 00:BB21: 85 18     STA ram_0018_t12
bra_BB23:
C - - - - - 0x003B33 00:BB23: A9 01     LDA #$01
C - - - - - 0x003B35 00:BB25: 05 1F     ORA ram_001F_t03
C - - - - - 0x003B37 00:BB27: 85 1F     STA ram_001F_t03
bra_BB29:
C - - - - - 0x003B39 00:BB29: A5 75     LDA ram_stage
C - - - - - 0x003B3B 00:BB2B: F0 64     BEQ bra_BB91
C - - - - - 0x003B3D 00:BB2D: 20 89 BF  JSR sub_BF89
C - - - - - 0x003B40 00:BB30: B0 5F     BCS bra_BB91
C - - - - - 0x003B42 00:BB32: A5 04     LDA ram_0004_t14
; * 04
C - - - - - 0x003B44 00:BB34: 0A        ASL
C - - - - - 0x003B45 00:BB35: 0A        ASL
C - - - - - 0x003B46 00:BB36: A8        TAY
C - - - - - 0x003B47 00:BB37: A5 03     LDA ram_0003_t17
C - - - - - 0x003B49 00:BB39: F0 56     BEQ bra_BB91
C - - - - - 0x003B4B 00:BB3B: A5 D0     LDA ram_00D0
C - - - - - 0x003B4D 00:BB3D: D0 52     BNE bra_BB91
C - - - - - 0x003B4F 00:BB3F: AD 59 03  LDA ram_0359_flag
C - - - - - 0x003B52 00:BB42: D0 4D     BNE bra_BB91
C - - - - - 0x003B54 00:BB44: A9 04     LDA #$04
C - - - - - 0x003B56 00:BB46: 85 1E     STA ram_001E_t02
C - - - - - 0x003B58 00:BB48: 20 8F F6  JSR sub_0x01F69F_get_stage_view_type
C - - - - - 0x003B5B 00:BB4B: F0 04     BEQ bra_BB51_side_view
; if upper view
C - - - - - 0x003B5D 00:BB4D: A9 02     LDA #$02
C - - - - - 0x003B5F 00:BB4F: 85 1E     STA ram_001E_t02
bra_BB51_side_view:
C - - - - - 0x003B61 00:BB51: A5 C5     LDA ram_00C5_flag
C - - - - - 0x003B63 00:BB53: F0 04     BEQ bra_BB59
C - - - - - 0x003B65 00:BB55: A9 01     LDA #$01
C - - - - - 0x003B67 00:BB57: 85 1E     STA ram_001E_t02
bra_BB59:
C - - - - - 0x003B69 00:BB59: A5 1A     LDA ram_001A_t08_lo
C - - - - - 0x003B6B 00:BB5B: 18        CLC
C - - - - - 0x003B6C 00:BB5C: 7D EA 07  ADC ram_07EA,X
C - - - - - 0x003B6F 00:BB5F: 85 1A     STA ram_001A_t08_lo
C - - - - - 0x003B71 00:BB61: A5 1B     LDA ram_001B_t02_hi
C - - - - - 0x003B73 00:BB63: 7D EC 07  ADC ram_07EC,X
C - - - - - 0x003B76 00:BB66: 85 1B     STA ram_001B_t02_hi
C - - - - - 0x003B78 00:BB68: 10 13     BPL bra_BB7D
C - - - - - 0x003B7A 00:BB6A: A5 1E     LDA ram_001E_t02
C - - - - - 0x003B7C 00:BB6C: 49 FF     EOR #$FF
C - - - - - 0x003B7E 00:BB6E: 18        CLC
C - - - - - 0x003B7F 00:BB6F: 69 01     ADC #$01
C - - - - - 0x003B81 00:BB71: 85 1E     STA ram_001E_t02
C - - - - - 0x003B83 00:BB73: A5 1B     LDA ram_001B_t02_hi
C - - - - - 0x003B85 00:BB75: C5 1E     CMP ram_001E_t02
C - - - - - 0x003B87 00:BB77: B0 12     BCS bra_BB8B
C - - - - - 0x003B89 00:BB79: A9 01     LDA #$01
C - - - - - 0x003B8B 00:BB7B: D0 08     BNE bra_BB85    ; jmp
bra_BB7D:
C - - - - - 0x003B8D 00:BB7D: C5 1E     CMP ram_001E_t02
C - - - - - 0x003B8F 00:BB7F: 90 0A     BCC bra_BB8B
- - - - - - 0x003B91 00:BB81: C6 1E     DEC ram_001E_t02
- - - - - - 0x003B93 00:BB83: A9 FF     LDA #$FF
bra_BB85:
C - - - - - 0x003B95 00:BB85: 85 1A     STA ram_001A_t08_lo
C - - - - - 0x003B97 00:BB87: A5 1E     LDA ram_001E_t02
C - - - - - 0x003B99 00:BB89: 85 1B     STA ram_001B_t02_hi
bra_BB8B:
C - - - - - 0x003B9B 00:BB8B: A9 02     LDA #$02
C - - - - - 0x003B9D 00:BB8D: 05 1F     ORA ram_001F_t03
C - - - - - 0x003B9F 00:BB8F: 85 1F     STA ram_001F_t03
bra_BB91:
loc_BB91:
C D 1 - - - 0x003BA1 00:BB91: E8        INX
C - - - - - 0x003BA2 00:BB92: E0 02     CPX #$02
C - - - - - 0x003BA4 00:BB94: F0 17     BEQ bra_BBAD
C - - - - - 0x003BA6 00:BB96: 4C B5 BA  JMP loc_BAB5_loop
bra_BBAD:
C - - - - - 0x003BBD 00:BBAD: A2 00     LDX #$00
C - - - - - 0x003BBF 00:BBAF: 20 99 BB  JSR sub_BB99
C - - - - - 0x003BC2 00:BBB2: B0 06     BCS bra_BBBA
C - - - - - 0x003BC4 00:BBB4: E8        INX ; 01
C - - - - - 0x003BC5 00:BBB5: 20 99 BB  JSR sub_BB99
C - - - - - 0x003BC8 00:BBB8: 90 08     BCC bra_BBC2
bra_BBBA:
C - - - - - 0x003BCA 00:BBBA: A9 00     LDA #$00
C - - - - - 0x003BCE 00:BBBE: 85 1D     STA ram_001D_t02
C - - - - - 0x003BD0 00:BBC0: F0 26     BEQ bra_BBE8    ; jmp
bra_BBC2:
C - - - - - 0x003BE5 00:BBD5: AD 68 06  LDA ram_obj_pos_Y
C - - - - - 0x003BE8 00:BBD8: 38        SEC
C - - - - - 0x003BE9 00:BBD9: ED 69 06  SBC ram_obj_pos_Y + $01
C - - - - - 0x003BEC 00:BBDC: B0 02     BCS bra_BBE0
C - - - - - 0x003BEE 00:BBDE: 49 FF     EOR #$FF
bra_BBE0:
C - - - - - 0x003BF0 00:BBE0: C9 50     CMP #$50
C - - - - - 0x003BF2 00:BBE2: B0 04     BCS bra_BBE8
C - - - - - 0x003BF4 00:BBE4: A9 00     LDA #$00
C - - - - - 0x003BF6 00:BBE6: 85 1D     STA ram_001D_t02
bra_BBE8:
C - - - - - 0x003BF8 00:BBE8: AD 5B 03  LDA ram_035B_flag
C - - - - - 0x003BFB 00:BBEB: F0 1D     BEQ bra_BC0A
C - - - - - 0x003BFD 00:BBED: A5 75     LDA ram_stage
C - - - - - 0x003BFF 00:BBEF: F0 16     BEQ bra_BC07
C - - - - - 0x003C01 00:BBF1: 29 01     AND #$01
C - - - - - 0x003C03 00:BBF3: D0 12     BNE bra_BC07
C - - - - - 0x003C05 00:BBF5: AD AA 07  LDA ram_07AA_unk
C - - - - - 0x003C08 00:BBF8: 0D AB 07  ORA ram_07AA_unk + $01
C - - - - - 0x003C0B 00:BBFB: 29 40     AND #$40
C - - - - - 0x003C0D 00:BBFD: F0 08     BEQ bra_BC07
C - - - - - 0x003C0F 00:BBFF: A9 00     LDA #$00
C - - - - - 0x003C11 00:BC01: 85 18     STA ram_0018_t12
C - - - - - 0x003C13 00:BC03: 85 19     STA ram_0019_t04
C - - - - - 0x003C15 00:BC05: F0 03     BEQ bra_BC0A    ; jmp
bra_BC07:
C - - - - - 0x003C17 00:BC07: 4C E0 BC  JMP loc_BCE0
bra_BC0A:
C - - - - - 0x003C1E 00:BC0E: A5 1F     LDA ram_001F_t03
C - - - - - 0x003C20 00:BC10: 29 01     AND #$01
C - - - - - 0x003C22 00:BC12: F0 51     BEQ bra_BC65
C - - - - - 0x003C24 00:BC14: A9 00     LDA #$00
C - - - - - 0x003C26 00:BC16: 85 13     STA ram_0013_t07
C - - - - - 0x003C28 00:BC18: A5 19     LDA ram_0019_t04
C - - - - - 0x003C2A 00:BC1A: 10 04     BPL bra_BC20
; bzk optimize, DEC 0013
C - - - - - 0x003C2C 00:BC1C: A9 FF     LDA #$FF
C - - - - - 0x003C2E 00:BC1E: 85 13     STA ram_0013_t07
bra_BC20:
C - - - - - 0x003C30 00:BC20: A5 18     LDA ram_0018_t12
C - - - - - 0x003C32 00:BC22: 18        CLC
C - - - - - 0x003C33 00:BC23: 65 62     ADC ram_0062_fr
C - - - - - 0x003C35 00:BC25: 85 14     STA ram_0014_t01
C - - - - - 0x003C37 00:BC27: A5 19     LDA ram_0019_t04
C - - - - - 0x003C39 00:BC29: 65 61     ADC ram_0061_lo
C - - - - - 0x003C3B 00:BC2B: 85 15     STA ram_0014_t01 + $01
C - - - - - 0x003C3D 00:BC2D: A5 13     LDA ram_0013_t07
C - - - - - 0x003C3F 00:BC2F: 65 60     ADC ram_0060_hi
C - - - - - 0x003C41 00:BC31: 85 16     STA ram_0014_t01 + $02
C - - - - - 0x003C43 00:BC33: 85 0A     STA ram_000A_t05
C - - - - - 0x003C45 00:BC35: 20 21 BF  JSR sub_BF21
C - - - - - 0x003C48 00:BC38: 90 2B     BCC bra_BC65
C - - - - - 0x003C4A 00:BC3A: A4 0D     LDY ram_000D_t03_data_index
C - - - - - 0x003C4C 00:BC3C: C8        INY
C - - - - - 0x003C4D 00:BC3D: 31 00     AND (ram_0000_t04_data),Y
C - - - - - 0x003C4F 00:BC3F: D0 27     BNE bra_BC68
C - - - - - 0x003C51 00:BC41: A5 0A     LDA ram_000A_t05
C - - - - - 0x003C53 00:BC43: 30 23     BMI bra_BC68
C - - - - - 0x003C55 00:BC45: A5 16     LDA ram_0014_t01 + $02
C - - - - - 0x003C57 00:BC47: 30 1F     BMI bra_BC68
C - - - - - 0x003C59 00:BC49: 20 F3 BD  JSR sub_BDF3
C - - - - - 0x003C5C 00:BC4C: 90 1A     BCC bra_BC68
C - - - - - 0x003C5E 00:BC4E: A5 18     LDA ram_0018_t12
C - - - - - 0x003C60 00:BC50: 85 6A     STA ram_006A
C - - - - - 0x003C62 00:BC52: A5 19     LDA ram_0019_t04
C - - - - - 0x003C64 00:BC54: 85 69     STA ram_0069
C - - - - - 0x003C66 00:BC56: A5 14     LDA ram_0014_t01
C - - - - - 0x003C68 00:BC58: 85 62     STA ram_0062_fr
C - - - - - 0x003C6A 00:BC5A: A5 15     LDA ram_0014_t01 + $01
C - - - - - 0x003C6C 00:BC5C: 85 61     STA ram_0061_lo
C - - - - - 0x003C6E 00:BC5E: A5 16     LDA ram_0014_t01 + $02
C - - - - - 0x003C70 00:BC60: 85 60     STA ram_0060_hi
C - - - - - 0x003C72 00:BC62: 4C 68 BC  JMP loc_BC68
bra_BC65:
C - - - - - 0x003C75 00:BC65: 20 3C BF  JSR sub_BF3C
bra_BC68:
loc_BC68:
C D 1 - - - 0x003C78 00:BC68: A5 1D     LDA ram_001D_t02
C - - - - - 0x003C7A 00:BC6A: D0 74     BNE bra_BCE0
C - - - - - 0x003C7C 00:BC6C: A5 1F     LDA ram_001F_t03
C - - - - - 0x003C7E 00:BC6E: 29 02     AND #$02
C - - - - - 0x003C80 00:BC70: F0 6E     BEQ bra_BCE0
C - - - - - 0x003C82 00:BC72: A5 0F     LDA ram_000F_t03
C - - - - - 0x003C84 00:BC74: 85 17     STA ram_0017_t03
C - - - - - 0x003C86 00:BC76: A9 00     LDA #$00
C - - - - - 0x003C88 00:BC78: 85 13     STA ram_0013_t08
C - - - - - 0x003C8A 00:BC7A: A5 1B     LDA ram_001B_t02_hi
C - - - - - 0x003C8C 00:BC7C: 10 02     BPL bra_BC80
C - - - - - 0x003C8E 00:BC7E: C6 13     DEC ram_0013_t08    ; -> FF
bra_BC80:
C - - - - - 0x003C90 00:BC80: A5 1A     LDA ram_001A_t08_lo
C - - - - - 0x003C92 00:BC82: 18        CLC
C - - - - - 0x003C93 00:BC83: 65 65     ADC ram_0065_fr
C - - - - - 0x003C95 00:BC85: 85 14     STA ram_0014_t02
C - - - - - 0x003C97 00:BC87: A5 1B     LDA ram_001B_t02_hi
C - - - - - 0x003C99 00:BC89: 65 64     ADC ram_0064_lo
C - - - - - 0x003C9B 00:BC8B: 85 15     STA ram_0014_t02 + $01
C - - - - - 0x003C9D 00:BC8D: A5 13     LDA ram_0013_t08
C - - - - - 0x003C9F 00:BC8F: 65 63     ADC ram_0063_hi
C - - - - - 0x003CA1 00:BC91: 85 16     STA ram_0014_t02 + $02
C - - - - - 0x003CA3 00:BC93: 20 DE BE  JSR sub_BEDE
C - - - - - 0x003CA6 00:BC96: 90 48     BCC bra_BCE0
C - - - - - 0x003CA8 00:BC98: A9 00     LDA #$00
C - - - - - 0x003CAA 00:BC9A: 85 0C     STA ram_000C_t14_useless_00
C - - - - - 0x003CAC 00:BC9C: A5 11     LDA ram_0011_t03
C - - - - - 0x003CAE 00:BC9E: 38        SEC
C - - - - - 0x003CAF 00:BC9F: E5 17     SBC ram_0017_t03
C - - - - - 0x003CB1 00:BCA1: F0 1C     BEQ bra_BCBF
C - - - - - 0x003CB3 00:BCA3: 10 04     BPL bra_BCA9
C - - - - - 0x003CB5 00:BCA5: A9 00     LDA #$00
C - - - - - 0x003CB7 00:BCA7: 85 0B     STA ram_000B_t04
bra_BCA9:
C - - - - - 0x003CB9 00:BCA9: A5 00     LDA ram_0000_t04_data
C - - - - - 0x003CBB 00:BCAB: 18        CLC
C - - - - - 0x003CBC 00:BCAC: 65 0B     ADC ram_000B_t04
C - - - - - 0x003CBE 00:BCAE: 85 00     STA ram_0000_t05_data
C - - - - - 0x003CC0 00:BCB0: A5 01     LDA ram_0000_t04_data + $01
C - - - - - 0x003CC2 00:BCB2: 65 0C     ADC ram_000C_t14_useless_00
C - - - - - 0x003CC4 00:BCB4: 85 01     STA ram_0000_t05_data + $01
C - - - - - 0x003CC6 00:BCB6: A5 0E     LDA ram_000E_t02
C - - - - - 0x003CC8 00:BCB8: A4 0D     LDY ram_000D_t03_data_index
C - - - - - 0x003CCA 00:BCBA: C8        INY
C - - - - - 0x003CCB 00:BCBB: 31 00     AND (ram_0000_t05_data),Y
C - - - - - 0x003CCD 00:BCBD: D0 21     BNE bra_BCE0
bra_BCBF:
C - - - - - 0x003CCF 00:BCBF: A5 0A     LDA ram_000A_t05
C - - - - - 0x003CD1 00:BCC1: 30 1D     BMI bra_BCE0
C - - - - - 0x003CD3 00:BCC3: A5 16     LDA ram_0014_t02 + $02
C - - - - - 0x003CD5 00:BCC5: 30 19     BMI bra_BCE0
C - - - - - 0x003CD7 00:BCC7: 20 85 BD  JSR sub_BD85
C - - - - - 0x003CDA 00:BCCA: 90 14     BCC bra_BCE0
C - - - - - 0x003CDC 00:BCCC: A5 1A     LDA ram_001A_t08_lo
C - - - - - 0x003CDE 00:BCCE: 85 6C     STA ram_006C
C - - - - - 0x003CE0 00:BCD0: A5 1B     LDA ram_001B_t02_hi
C - - - - - 0x003CE2 00:BCD2: 85 6B     STA ram_006B
C - - - - - 0x003CE4 00:BCD4: A5 14     LDA ram_0014_t02
C - - - - - 0x003CE6 00:BCD6: 85 65     STA ram_0065_fr
C - - - - - 0x003CE8 00:BCD8: A5 15     LDA ram_0014_t02 + $01
C - - - - - 0x003CEA 00:BCDA: 85 64     STA ram_0064_lo
C - - - - - 0x003CEC 00:BCDC: A5 16     LDA ram_0014_t02 + $02
C - - - - - 0x003CEE 00:BCDE: 85 63     STA ram_0063_hi
bra_BCE0:
loc_BCE0:
C D 1 - - - 0x003CF0 00:BCE0: A2 00     LDX #$00
loc_BCE2:
C D 1 - - - 0x003CF2 00:BCE2: BD 82 07  LDA ram_0782_unk,X
C - - - - - 0x003CF5 00:BCE5: D0 03     BNE bra_BCEA
C - - - - - 0x003CF7 00:BCE7: 4C 7D BD  JMP loc_BD7D
bra_BCEA:
C - - - - - 0x003CFA 00:BCEA: BD E6 07  LDA ram_07E6,X
C - - - - - 0x003CFD 00:BCED: 38        SEC
C - - - - - 0x003CFE 00:BCEE: E5 6A     SBC ram_006A
C - - - - - 0x003D00 00:BCF0: 85 00     STA ram_0000_t45_lo
C - - - - - 0x003D02 00:BCF2: BD E8 07  LDA ram_07E8,X
C - - - - - 0x003D05 00:BCF5: E5 69     SBC ram_0069
C - - - - - 0x003D07 00:BCF7: 85 01     STA ram_0001_t03_hi
C - - - - - 0x003D09 00:BCF9: 20 89 BF  JSR sub_BF89
C - - - - - 0x003D0C 00:BCFC: B0 15     BCS bra_BD13
C - - - - - 0x003D0E 00:BCFE: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x003D11 00:BD01: C9 10     CMP #$10
C - - - - - 0x003D13 00:BD03: B0 06     BCS bra_BD0B
C - - - - - 0x003D15 00:BD05: A5 01     LDA ram_0001_t03_hi
C - - - - - 0x003D17 00:BD07: 10 0A     BPL bra_BD13
C - - - - - 0x003D19 00:BD09: 30 26     BMI bra_BD31
bra_BD0B:
C - - - - - 0x003D1B 00:BD0B: C9 F0     CMP #$F0
C - - - - - 0x003D1D 00:BD0D: 90 04     BCC bra_BD13
C - - - - - 0x003D1F 00:BD0F: A5 01     LDA ram_0001_t03_hi
C - - - - - 0x003D21 00:BD11: 10 1E     BPL bra_BD31
bra_BD13:
C - - - - - 0x003D23 00:BD13: BD E6 07  LDA ram_07E6,X
C - - - - - 0x003D26 00:BD16: 1D E8 07  ORA ram_07E8,X
C - - - - - 0x003D29 00:BD19: D0 05     BNE bra_BD20
C - - - - - 0x003D2B 00:BD1B: A5 62     LDA ram_0062_fr
C - - - - - 0x003D2D 00:BD1D: 9D C8 06  STA ram_obj_spd_X,X
bra_BD20:
C - - - - - 0x003D30 00:BD20: A5 00     LDA ram_0000_t45_lo
C - - - - - 0x003D32 00:BD22: 18        CLC
C - - - - - 0x003D33 00:BD23: 7D C8 06  ADC ram_obj_spd_X,X
C - - - - - 0x003D36 00:BD26: 9D C8 06  STA ram_obj_spd_X,X
C - - - - - 0x003D39 00:BD29: A5 01     LDA ram_0001_t03_hi
C - - - - - 0x003D3B 00:BD2B: 7D 4E 06  ADC ram_obj_pos_X,X
C - - - - - 0x003D3E 00:BD2E: 9D 4E 06  STA ram_obj_pos_X,X
bra_BD31:
C - - - - - 0x003D41 00:BD31: BD EA 07  LDA ram_07EA,X
C - - - - - 0x003D44 00:BD34: 38        SEC
C - - - - - 0x003D45 00:BD35: E5 6C     SBC ram_006C
C - - - - - 0x003D47 00:BD37: 85 02     STA ram_0002_t22_lo
C - - - - - 0x003D49 00:BD39: BD EC 07  LDA ram_07EC,X
C - - - - - 0x003D4C 00:BD3C: E5 6B     SBC ram_006B
C - - - - - 0x003D4E 00:BD3E: 85 03     STA ram_0003_t07_hi
C - - - - - 0x003D50 00:BD40: 20 89 BF  JSR sub_BF89
C - - - - - 0x003D53 00:BD43: B0 1A     BCS bra_BD5F
C - - - - - 0x003D55 00:BD45: 20 19 BE  JSR sub_BE19
C - - - - - 0x003D58 00:BD48: B0 15     BCS bra_BD5F
C - - - - - 0x003D5A 00:BD4A: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x003D5D 00:BD4D: C9 10     CMP #$10
C - - - - - 0x003D5F 00:BD4F: B0 06     BCS bra_BD57
C - - - - - 0x003D61 00:BD51: A5 03     LDA ram_0003_t07_hi
C - - - - - 0x003D63 00:BD53: 10 0A     BPL bra_BD5F
- - - - - - 0x003D65 00:BD55: 30 26     BMI bra_BD7D
bra_BD57:
C - - - - - 0x003D67 00:BD57: C9 C0     CMP #$C0
C - - - - - 0x003D69 00:BD59: 90 04     BCC bra_BD5F
C - - - - - 0x003D6B 00:BD5B: A5 03     LDA ram_0003_t07_hi
C - - - - - 0x003D6D 00:BD5D: 10 1E     BPL bra_BD7D
bra_BD5F:
C - - - - - 0x003D6F 00:BD5F: BD EA 07  LDA ram_07EA,X
C - - - - - 0x003D72 00:BD62: 1D EC 07  ORA ram_07EC,X
C - - - - - 0x003D75 00:BD65: D0 05     BNE bra_BD6C
C - - - - - 0x003D77 00:BD67: A5 65     LDA ram_0065_fr
C - - - - - 0x003D79 00:BD69: 9D DE 06  STA ram_obj_spd_Y,X
bra_BD6C:
C - - - - - 0x003D7C 00:BD6C: A5 02     LDA ram_0002_t22_lo
C - - - - - 0x003D7E 00:BD6E: 18        CLC
C - - - - - 0x003D7F 00:BD6F: 7D DE 06  ADC ram_obj_spd_Y,X
C - - - - - 0x003D82 00:BD72: 9D DE 06  STA ram_obj_spd_Y,X
C - - - - - 0x003D85 00:BD75: A5 03     LDA ram_0003_t07_hi
C - - - - - 0x003D87 00:BD77: 7D 68 06  ADC ram_obj_pos_Y,X
C - - - - - 0x003D8A 00:BD7A: 9D 68 06  STA ram_obj_pos_Y,X
bra_BD7D:
loc_BD7D:
C D 1 - - - 0x003D8D 00:BD7D: E8        INX
C - - - - - 0x003D8E 00:BD7E: E0 02     CPX #$02
C - - - - - 0x003D90 00:BD80: B0 56     BCS bra_BD83_RTS
C - - - - - 0x003D92 00:BD82: 4C E2 BC  JMP loc_BCE2
bra_BD83_RTS:
                                        RTS



sub_BB99:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x003BA9 00:BB99: BD 82 07  LDA ram_0782_unk,X
C - - - - - 0x003BAC 00:BB9C: F0 0D     BEQ bra_BBAB
C - - - - - 0x003BAE 00:BB9E: 20 83 BF  JSR sub_BF83
C - - - - - 0x003BB1 00:BBA1: B9 7F 00  LDA ram_player_stats,Y
C - - - - - 0x003BB4 00:BBA4: 29 F0     AND #$F0
C - - - - - 0x003BB6 00:BBA6: F0 03     BEQ bra_BBAB
C - - - - - 0x003BB8 00:BBA8: C9 30     CMP #$30
C - - - - - 0x003BBA 00:BBAA: 60        RTS
bra_BBAB:
C - - - - - 0x003BBB 00:BBAB: 38        SEC
C - - - - - 0x003BBC 00:BBAC: 60        RTS



sub_BF94:
; in
    ; A = 00/01
; out
    ; ram_0000_t36
C - - - - - 0x003FA4 00:BF94: 85 04     STA ram_0004_t14
C - - - - - 0x003FA6 00:BF96: A9 01     LDA #$01
C - - - - - 0x003FA8 00:BF98: 85 02     STA ram_0002_t25_flag
C - - - - - 0x003FAA 00:BF9A: 20 89 BF  JSR sub_BF89
C - - - - - 0x003FAD 00:BF9D: 90 04     BCC bra_BFA3
C - - - - - 0x003FAF 00:BF9F: A9 00     LDA #$00
C - - - - - 0x003FB1 00:BFA1: 85 02     STA ram_0002_t25_flag
bra_BFA3:
C - - - - - 0x003FB3 00:BFA3: A9 00     LDA #$00
C - - - - - 0x003FB5 00:BFA5: 85 00     STA ram_0000_t46
C - - - - - 0x003FB7 00:BFA7: A5 04     LDA ram_0004_t14
C - - - - - 0x003FB9 00:BFA9: F0 06     BEQ bra_BFB1
C - - - - - 0x003FBB 00:BFAB: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x003FBE 00:BFAE: 4C B4 BF  JMP loc_BFB4
bra_BFB1:
C - - - - - 0x003FC1 00:BFB1: BD 4E 06  LDA ram_obj_pos_X,X
loc_BFB4:
C D 1 - - - 0x003FC4 00:BFB4: C9 90     CMP #$90
C - - - - - 0x003FC6 00:BFB6: B0 08     BCS bra_BFC0
C - - - - - 0x003FC8 00:BFB8: E6 00     INC ram_0000_t46
C - - - - - 0x003FCA 00:BFBA: C9 68     CMP #$68
C - - - - - 0x003FCC 00:BFBC: B0 02     BCS bra_BFC0
C - - - - - 0x003FCE 00:BFBE: E6 00     INC ram_0000_t46
bra_BFC0:
C - - - - - 0x003FD0 00:BFC0: A4 02     LDY ram_0002_t25_flag
C - - - - - 0x003FD2 00:BFC2: F0 1F     BEQ bra_BFE3
C - - - - - 0x003FD4 00:BFC4: A5 04     LDA ram_0004_t14
C - - - - - 0x003FD6 00:BFC6: D0 0B     BNE bra_BFD3
C - - - - - 0x003FD8 00:BFC8: A0 03     LDY #$03
C - - - - - 0x003FDA 00:BFCA: BD E8 07  LDA ram_07E8,X
C - - - - - 0x003FDD 00:BFCD: 10 0D     BPL bra_BFDC
C - - - - - 0x003FDF 00:BFCF: A0 07     LDY #$07
C - - - - - 0x003FE1 00:BFD1: D0 09     BNE bra_BFDC    ; jmp
bra_BFD3:
C - - - - - 0x003FE3 00:BFD3: A0 0A     LDY #$0A
C - - - - - 0x003FE5 00:BFD5: BD EC 07  LDA ram_07EC,X
C - - - - - 0x003FE8 00:BFD8: 30 02     BMI bra_BFDC
C - - - - - 0x003FEA 00:BFDA: A0 0E     LDY #$0E
bra_BFDC:
C - - - - - 0x003FEC 00:BFDC: A5 00     LDA ram_0000_t46
C - - - - - 0x003FEE 00:BFDE: D9 EC BF  CMP tbl_BFEC,Y
C - - - - - 0x003FF1 00:BFE1: F0 04     BEQ bra_BFE7
bra_BFE3:
C - - - - - 0x003FF3 00:BFE3: A0 00     LDY #$00
C - - - - - 0x003FF5 00:BFE5: F0 02     BEQ bra_BFE9    ; jmp
bra_BFE7:
C - - - - - 0x003FF7 00:BFE7: A0 02     LDY #$02
bra_BFE9:
C - - - - - 0x003FF9 00:BFE9: 84 00     STY ram_0000_t36
C - - - - - 0x003FFB 00:BFEB: 60        RTS



tbl_BFEC:
; bzk optimize, only 4 bytes are used
- - - - - - 0x003FFC 00:BFEC: 01        .byte $01   ; 00 
- - - - - - 0x003FFD 00:BFED: 01        .byte $01   ; 01 
- - - - - - 0x003FFE 00:BFEE: 00        .byte $00   ; 02 
- D 1 - - - 0x003FFF 00:BFEF: 00        .byte $00   ; 03 0x003FD8
- - - - - - 0x004000 00:BFF0: 00        .byte $00   ; 04 
- - - - - - 0x004001 00:BFF1: 01        .byte $01   ; 05 
- - - - - - 0x004002 00:BFF2: 02        .byte $02   ; 06 
- D 1 - - - 0x004003 00:BFF3: 02        .byte $02   ; 07 0x003FDF
- - - - - - 0x004004 00:BFF4: 02        .byte $02   ; 08 
- - - - - - 0x004005 00:BFF5: 01        .byte $01   ; 09 
- D 1 - - - 0x004006 00:BFF6: 02        .byte $02   ; 0A 0x003FE3
- - - - - - 0x004007 00:BFF7: 02        .byte $02   ; 0B 
- - - - - - 0x004008 00:BFF8: 01        .byte $01   ; 0C 
- - - - - - 0x004009 00:BFF9: 00        .byte $00   ; 0D 
- D 1 - - - 0x00400A 00:BFFA: 00        .byte $00   ; 0E 0x003FEA



sub_BF83:
; out
    ; Y = 
C - - - - - 0x003F93 00:BF83: B5 B1     LDA ram_current_player,X
C - - - - - 0x003F95 00:BF85: 29 0F     AND #$0F
C - - - - - 0x003F97 00:BF87: A8        TAY
C - - - - - 0x003F98 00:BF88: 60        RTS



sub_BF89:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x003F99 00:BF89: 20 83 BF  JSR sub_BF83
C - - - - - 0x003F9C 00:BF8C: B9 7F 00  LDA ram_player_stats,Y
C - - - - - 0x003F9F 00:BF8F: 29 F0     AND #$F0
C - - - - - 0x003FA1 00:BF91: C9 30     CMP #$30
C - - - - - 0x003FA3 00:BF93: 60        RTS



sub_BDF3:
C - - - - - 0x003E03 00:BDF3: A0 00     LDY #$00
C - - - - - 0x003E05 00:BDF5: A5 19     LDA ram_0019_t04
C - - - - - 0x003E07 00:BDF7: 10 07     BPL bra_BE00
C - - - - - 0x003E09 00:BDF9: C8        INY ; 01
C - - - - - 0x003E0A 00:BDFA: A5 69     LDA ram_0069
C - - - - - 0x003E0C 00:BDFC: 30 0F     BMI bra_BE0D
C - - - - - 0x003E0E 00:BDFE: 10 04     BPL bra_BE04    ; jmp
bra_BE00:
C - - - - - 0x003E10 00:BE00: A5 69     LDA ram_0069
C - - - - - 0x003E12 00:BE02: 10 09     BPL bra_BE0D
bra_BE04:
C - - - - - 0x003E14 00:BE04: 98        TYA
C - - - - - 0x003E15 00:BE05: 49 01     EOR #$01
C - - - - - 0x003E17 00:BE07: AA        TAX
C - - - - - 0x003E18 00:BE08: A9 00     LDA #$00
C - - - - - 0x003E1A 00:BE0A: 9D 3C 05  STA ram_053C,X
bra_BE0D:
C - - - - - 0x003E1D 00:BE0D: A5 15     LDA ram_0014_t01 + $01
C - - - - - 0x003E1F 00:BE0F: 29 F8     AND #$F8
C - - - - - 0x003E21 00:BE11: CD F4 03  CMP ram_03F4
C - - - - - 0x003E24 00:BE14: F0 9A     BEQ bra_BDB0
C - - - - - 0x003E26 00:BE16: 4C 95 BD  JMP loc_BD95



sub_BD85:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x003D95 00:BD85: A0 02     LDY #$02
C - - - - - 0x003D97 00:BD87: A5 1B     LDA ram_001B_t02_hi
C - - - - - 0x003D99 00:BD89: 10 01     BPL bra_BD8C
C - - - - - 0x003D9B 00:BD8B: C8        INY
bra_BD8C:
C - - - - - 0x003D9C 00:BD8C: A5 15     LDA ram_0014_t02 + $01
C - - - - - 0x003D9E 00:BD8E: 29 F8     AND #$F8
C - - - - - 0x003DA0 00:BD90: CD F6 03  CMP ram_03F6
C - - - - - 0x003DA3 00:BD93: F0 1B     BEQ bra_BDB0
loc_BD95:
C D 1 - - - 0x003DA5 00:BD95: A2 03     LDX #$03
C - - - - - 0x003DA7 00:BD97: 20 8F F6  JSR sub_0x01F69F_get_stage_view_type
C - - - - - 0x003DAA 00:BD9A: F0 02     BEQ bra_BD9E_side_view
; if upper view
C - - - - - 0x003DAC 00:BD9C: A2 0F     LDX #$0F
bra_BD9E_side_view:
C - - - - - 0x003DAE 00:BD9E: 8A        TXA
C - - - - - 0x003DAF 00:BD9F: D9 3C 05  CMP ram_053C,Y
C - - - - - 0x003DB2 00:BDA2: D0 35     BNE bra_BDD9
C - - - - - 0x003DB4 00:BDA4: 98        TYA
C - - - - - 0x003DB5 00:BDA5: 29 02     AND #$02
C - - - - - 0x003DB7 00:BDA7: AA        TAX
C - - - - - 0x003DB8 00:BDA8: A9 00     LDA #$00
C - - - - - 0x003DBA 00:BDAA: 9D 3C 05  STA ram_053C,X
C - - - - - 0x003DBD 00:BDAD: 9D 3D 05  STA ram_053C + $01,X
bra_BDB0:
sub_BDB0:
C - - - - - 0x003DC0 00:BDB0: C0 02     CPY #$02
C - - - - - 0x003DC2 00:BDB2: B0 0D     BCS bra_BDC1
C - - - - - 0x003DC4 00:BDB4: AD 43 03  LDA ram_0343
C - - - - - 0x003DC7 00:BDB7: F0 08     BEQ bra_BDC1
C - - - - - 0x003DC9 00:BDB9: A5 67     LDA ram_0067
C - - - - - 0x003DCB 00:BDBB: 29 03     AND #$03
C - - - - - 0x003DCD 00:BDBD: C9 03     CMP #$03
C - - - - - 0x003DCF 00:BDBF: F0 16     BEQ bra_BDD7
bra_BDC1:
C - - - - - 0x003DD1 00:BDC1: A2 01     LDX #$01
C - - - - - 0x003DD3 00:BDC3: 20 8F F6  JSR sub_0x01F69F_get_stage_view_type
C - - - - - 0x003DD6 00:BDC6: F0 02     BEQ bra_BDCA_side_view
; if upper view
C - - - - - 0x003DD8 00:BDC8: A2 03     LDX #$03
bra_BDCA_side_view:
C - - - - - 0x003DDA 00:BDCA: 8A        TXA
C - - - - - 0x003DDB 00:BDCB: 25 67     AND ram_0067
C - - - - - 0x003DDD 00:BDCD: AA        TAX
C - - - - - 0x003DDE 00:BDCE: BD AE F5  LDA tbl_0x01F5BE,X
C - - - - - 0x003DE1 00:BDD1: 19 3C 05  ORA ram_053C,Y
C - - - - - 0x003DE4 00:BDD4: 99 3C 05  STA ram_053C,Y
bra_BDD7:
C - - - - - 0x003DE7 00:BDD7: 38        SEC
C - - - - - 0x003DE8 00:BDD8: 60        RTS
bra_BDD9:
C - - - - - 0x003DE9 00:BDD9: 98        TYA
C - - - - - 0x003DEA 00:BDDA: 29 02     AND #$02
C - - - - - 0x003DEC 00:BDDC: AA        TAX
; ram_0019_t04
; ram_001B_t02_hi
C - - - - - 0x003DED 00:BDDD: B5 19     LDA ram_0019_temp,X
C - - - - - 0x003DEF 00:BDDF: 10 06     BPL bra_BDE7
C - - - - - 0x003DF1 00:BDE1: A9 FF     LDA #$FF
C - - - - - 0x003DF3 00:BDE3: 95 69     STA ram_0069,X
C - - - - - 0x003DF5 00:BDE5: 95 6A     STA ram_006A,X
bra_BDE7:
C - - - - - 0x003DF7 00:BDE7: BD F3 03  LDA ram_03F3,X
C - - - - - 0x003DFA 00:BDEA: D5 69     CMP ram_0069,X
C - - - - - 0x003DFC 00:BDEC: D0 03     BNE bra_BDF1
C - - - - - 0x003DFE 00:BDEE: 20 B0 BD  JSR sub_BDB0
bra_BDF1:
C - - - - - 0x003E01 00:BDF1: 18        CLC
C - - - - - 0x003E02 00:BDF2: 60        RTS



sub_BE19:
C - - - - - 0x003E29 00:BE19: 20 8F F6  JSR sub_0x01F69F_get_stage_view_type
C - - - - - 0x003E2C 00:BE1C: D0 09     BNE bra_BE27_upper_view
; if side view
C - - - - - 0x003E2E 00:BE1E: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x003E31 00:BE21: 29 40     AND #$40
C - - - - - 0x003E33 00:BE23: F0 CC     BEQ bra_BDF1
C - - - - - 0x003E35 00:BE25: 38        SEC
C - - - - - 0x003E36 00:BE26: 60        RTS
bra_BE27_upper_view:
C - - - - - 0x003E37 00:BE27: BD C8 07  LDA ram_07C8_unk,X
C - - - - - 0x003E3A 00:BE2A: 29 1F     AND #$1F
C - - - - - 0x003E3C 00:BE2C: C9 1C     CMP #$1C
C - - - - - 0x003E3E 00:BE2E: 60        RTS



sub_BEDE:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x003EEE 00:BEDE: A9 04     LDA #$04
C - - - - - 0x003EF0 00:BEE0: C5 75     CMP ram_stage
C - - - - - 0x003EF2 00:BEE2: D0 1A     BNE bra_BEFE
C - - - - - 0x003EF4 00:BEE4: A5 60     LDA ram_0060_hi
C - - - - - 0x003EF6 00:BEE6: C9 02     CMP #$02
C - - - - - 0x003EF8 00:BEE8: 90 06     BCC bra_BEF0
C - - - - - 0x003EFA 00:BEEA: D0 12     BNE bra_BEFE
C - - - - - 0x003EFC 00:BEEC: A5 61     LDA ram_0061_lo
C - - - - - 0x003EFE 00:BEEE: 30 0E     BMI bra_BEFE
bra_BEF0:
C - - - - - 0x003F00 00:BEF0: A5 15     LDA ram_0014_t02 + $01
C - - - - - 0x003F02 00:BEF2: 10 0A     BPL bra_BEFE
C - - - - - 0x003F04 00:BEF4: A5 1B     LDA ram_001B_t02_hi
C - - - - - 0x003F06 00:BEF6: 10 06     BPL bra_BEFE
C - - - - - 0x003F08 00:BEF8: A5 16     LDA ram_0014_t02 + $02
C - - - - - 0x003F0A 00:BEFA: C9 02     CMP #$02
C - - - - - 0x003F0C 00:BEFC: 90 3D     BCC bra_BF3B_RTS
bra_BEFE:
C - - - - - 0x003F0E 00:BEFE: A9 00     LDA #$00
C - - - - - 0x003F10 00:BF00: 85 02     STA ram_0002_t23_lo
C - - - - - 0x003F12 00:BF02: A5 1A     LDA ram_001A_t08_lo
C - - - - - 0x003F14 00:BF04: 18        CLC
C - - - - - 0x003F15 00:BF05: 65 65     ADC ram_0065_fr
C - - - - - 0x003F17 00:BF07: A5 1B     LDA ram_001B_t02_hi
C - - - - - 0x003F19 00:BF09: 69 00     ADC #$00
C - - - - - 0x003F1B 00:BF0B: 85 03     STA ram_0003_t08_hi
C - - - - - 0x003F1D 00:BF0D: 10 08     BPL bra_BF17
C - - - - - 0x003F1F 00:BF0F: C6 02     DEC ram_0002_t23_lo
C - - - - - 0x003F21 00:BF11: 20 C5 BE  JSR sub_BEC5
C - - - - - 0x003F24 00:BF14: 4C 1A BF  JMP loc_BF1A
bra_BF17:
C - - - - - 0x003F27 00:BF17: 20 A3 BE  JSR sub_BEA3
loc_BF1A:
C D 1 - - - 0x003F2A 00:BF1A: A5 03     LDA ram_0003_t09_hi
C - - - - - 0x003F2C 00:BF1C: A4 02     LDY ram_0002_t24_lo
C - - - - - 0x003F2E 00:BF1E: 4C 44 BF  JMP loc_BF44



sub_BEC5:
C - - - - - 0x003ED5 00:BEC5: A5 DD     LDA ram_00DD
C - - - - - 0x003ED7 00:BEC7: 18        CLC
C - - - - - 0x003ED8 00:BEC8: 65 03     ADC ram_0003_t08_hi
C - - - - - 0x003EDA 00:BECA: 85 03     STA ram_0003_t09_hi
C - - - - - 0x003EDC 00:BECC: A5 02     LDA ram_0002_t23_lo
C - - - - - 0x003EDE 00:BECE: 65 DC     ADC ram_00DC
C - - - - - 0x003EE0 00:BED0: 85 02     STA ram_0002_t24_lo
C - - - - - 0x003EE2 00:BED2: C5 DC     CMP ram_00DC
C - - - - - 0x003EE4 00:BED4: F0 07     BEQ bra_BEDD_RTS
C - - - - - 0x003EE6 00:BED6: A5 03     LDA ram_0003_t09_hi
C - - - - - 0x003EE8 00:BED8: 38        SEC
C - - - - - 0x003EE9 00:BED9: E9 10     SBC #$10
C - - - - - 0x003EEB 00:BEDB: 85 03     STA ram_0003_t09_hi
bra_BEDD_RTS:
C - - - - - 0x003EED 00:BEDD: 60        RTS



sub_BF21:
C - - - - - 0x003F31 00:BF21: A5 75     LDA ram_stage
C - - - - - 0x003F33 00:BF23: C9 02     CMP #$02
C - - - - - 0x003F35 00:BF25: D0 19     BNE bra_BF40
C - - - - - 0x003F37 00:BF27: A5 63     LDA ram_0063_hi
C - - - - - 0x003F39 00:BF29: C9 03     CMP #$03
C - - - - - 0x003F3B 00:BF2B: 90 13     BCC bra_BF40
C - - - - - 0x003F3D 00:BF2D: D0 06     BNE bra_BF35
C - - - - - 0x003F3F 00:BF2F: A5 64     LDA ram_0064_lo
C - - - - - 0x003F41 00:BF31: C9 C0     CMP #$C0
C - - - - - 0x003F43 00:BF33: 90 0B     BCC bra_BF40
bra_BF35:
C - - - - - 0x003F45 00:BF35: A5 0A     LDA ram_000A_t05
C - - - - - 0x003F47 00:BF37: C9 02     CMP #$02
C - - - - - 0x003F49 00:BF39: B0 05     BCS bra_BF40
bra_BF3B_RTS:
C - - - - - 0x003F4B 00:BF3B: 60        RTS



sub_BF3C:
C - - - - - 0x003F4C 00:BF3C: A5 60     LDA ram_0060_hi
C - - - - - 0x003F4E 00:BF3E: 85 0A     STA ram_000A_t05
bra_BF40:
; bzk optimize, useless LDA
C - - - - - 0x003F50 00:BF40: A5 DD     LDA ram_00DD
C - - - - - 0x003F52 00:BF42: A4 DC     LDY ram_00DC
loc_BF44:
; bzk optimize, useless STA
C D 1 - - - 0x003F54 00:BF44: 85 10     STA ram_0010_t22_useless
C - - - - - 0x003F56 00:BF46: 84 11     STY ram_0011_t03
C - - - - - 0x003F58 00:BF48: A4 88     LDY ram_x2_stage
C - - - - - 0x003F5A 00:BF4A: B9 2F BE  LDA tbl_BE2F,Y
C - - - - - 0x003F5D 00:BF4D: 85 00     STA ram_0000_t03_data
C - - - - - 0x003F5F 00:BF4F: B9 30 BE  LDA tbl_BE2F + $01,Y
C - - - - - 0x003F62 00:BF52: 85 01     STA ram_0000_t03_data + $01
C - - - - - 0x003F64 00:BF54: A0 00     LDY #$00
C - - - - - 0x003F66 00:BF56: B1 00     LDA (ram_0000_t03_data),Y
C - - - - - 0x003F68 00:BF58: 85 0B     STA ram_000B_t04
C - - - - - 0x003F6A 00:BF5A: A8        TAY
C - - - - - 0x003F6B 00:BF5B: A5 11     LDA ram_0011_t03
C - - - - - 0x003F6D 00:BF5D: 85 0F     STA ram_000F_t03
C - - - - - 0x003F6F 00:BF5F: 88        DEY
C - - - - - 0x003F70 00:BF60: F0 01     BEQ bra_BF63
C - - - - - 0x003F72 00:BF62: 0A        ASL
bra_BF63:
C - - - - - 0x003F73 00:BF63: 85 0C     STA ram_000C_t01_distance
C - - - - - 0x003F75 00:BF65: 18        CLC
C - - - - - 0x003F76 00:BF66: 65 00     ADC ram_0000_t03_data
C - - - - - 0x003F78 00:BF68: 85 00     STA ram_0000_t04_data
C - - - - - 0x003F7A 00:BF6A: A5 01     LDA ram_0000_t03_data + $01
C - - - - - 0x003F7C 00:BF6C: 69 00     ADC #$00
C - - - - - 0x003F7E 00:BF6E: 85 01     STA ram_0000_t04_data + $01
C - - - - - 0x003F80 00:BF70: A5 0A     LDA ram_000A_t05
; / 08
C - - - - - 0x003F82 00:BF72: 4A        LSR
C - - - - - 0x003F83 00:BF73: 4A        LSR
C - - - - - 0x003F84 00:BF74: 4A        LSR
C - - - - - 0x003F85 00:BF75: 85 0D     STA ram_000D_t03_data_index
C - - - - - 0x003F87 00:BF77: A5 0A     LDA ram_000A_t05
C - - - - - 0x003F89 00:BF79: 29 07     AND #$07
C - - - - - 0x003F8B 00:BF7B: A8        TAY
C - - - - - 0x003F8C 00:BF7C: B9 AE F5  LDA tbl_0x01F5BE,Y
C - - - - - 0x003F8F 00:BF7F: 85 0E     STA ram_000E_t02
C - - - - - 0x003F91 00:BF81: 38        SEC
C - - - - - 0x003F92 00:BF82: 60        RTS



tbl_BE2F:
- D 1 - - - 0x003E3F 00:BE2F: 39 BE     .word off_BE39_00_stage_1
- D 1 - - - 0x003E41 00:BE31: 3F BE     .word off_BE3F_02_stage_2
- D 1 - - - 0x003E43 00:BE33: 56 BE     .word off_BE56_04_stage_3
- D 1 - - - 0x003E45 00:BE35: 5F BE     .word off_BE5F_06_stage_4
- D 1 - - - 0x003E47 00:BE37: 4E BE     .word off_BE4E_08_stage_5



off_BE39_00_stage_1:
- D 1 - I - 0x003E49 00:BE39: 04        .byte $04   ; 

- D 1 - I - 0x003E4A 00:BE3A: 00        .byte $00   ; 
- D 1 - I - 0x003E4B 00:BE3B: 00        .byte $00   ; 
- D 1 - I - 0x003E4C 00:BE3C: 80        .byte $80   ; 
- - - - - - 0x003E4D 00:BE3D: FF        .byte $FF   ; 
- - - - - - 0x003E4E 00:BE3E: FF        .byte $FF   ; 



off_BE3F_02_stage_2:
- D 1 - I - 0x003E4F 00:BE3F: 01        .byte $01   ; 

- D 1 - I - 0x003E50 00:BE40: E8        .byte $E8   ; 
- D 1 - I - 0x003E51 00:BE41: E8        .byte $E8   ; 
- D 1 - I - 0x003E52 00:BE42: E8        .byte $E8   ; 
- D 1 - I - 0x003E53 00:BE43: E8        .byte $E8   ; 
- D 1 - I - 0x003E54 00:BE44: F0        .byte $F0   ; 
- D 1 - I - 0x003E55 00:BE45: F0        .byte $F0   ; 
- D 1 - I - 0x003E56 00:BE46: F0        .byte $F0   ; 
- D 1 - I - 0x003E57 00:BE47: F0        .byte $F0   ; 
- D 1 - I - 0x003E58 00:BE48: E0        .byte $E0   ; 
- D 1 - I - 0x003E59 00:BE49: E3        .byte $E3   ; 
- D 1 - I - 0x003E5A 00:BE4A: E3        .byte $E3   ; 
- D 1 - I - 0x003E5B 00:BE4B: F3        .byte $F3   ; 
- - - - - - 0x003E5C 00:BE4C: F3        .byte $F3   ; 
- D 1 - I - 0x003E5D 00:BE4D: FF        .byte $FF   ; 



off_BE4E_08_stage_5:
- D 1 - I - 0x003E5E 00:BE4E: 01        .byte $01   ; 

- D 1 - I - 0x003E5F 00:BE4F: F0        .byte $F0   ; 
- D 1 - I - 0x003E60 00:BE50: F0        .byte $F0   ; 
- D 1 - I - 0x003E61 00:BE51: F1        .byte $F1   ; 
- D 1 - I - 0x003E62 00:BE52: F1        .byte $F1   ; 
- D 1 - I - 0x003E63 00:BE53: F0        .byte $F0   ; 
- D 1 - I - 0x003E64 00:BE54: F1        .byte $F1   ; 
- D 1 - I - 0x003E65 00:BE55: FF        .byte $FF   ; 



off_BE56_04_stage_3:
- D 1 - I - 0x003E66 00:BE56: 01        .byte $01   ; 

- D 1 - I - 0x003E67 00:BE57: FF        .byte $FF   ; 
- D 1 - I - 0x003E68 00:BE58: F0        .byte $F0   ; 
- D 1 - I - 0x003E69 00:BE59: F3        .byte $F3   ; 
- D 1 - I - 0x003E6A 00:BE5A: F1        .byte $F1   ; 
- D 1 - I - 0x003E6B 00:BE5B: F1        .byte $F1   ; 
- D 1 - I - 0x003E6C 00:BE5C: F3        .byte $F3   ; 
- D 1 - I - 0x003E6D 00:BE5D: F3        .byte $F3   ; 
- D 1 - I - 0x003E6E 00:BE5E: FF        .byte $FF   ; 



off_BE5F_06_stage_4:
- D 1 - I - 0x003E6F 00:BE5F: 02        .byte $02   ; 

- - - - - - 0x003E70 00:BE60: FF        .byte $FF   ; 
- D 1 - I - 0x003E71 00:BE61: FC        .byte $FC   ; 
- - - - - - 0x003E72 00:BE62: FF        .byte $FF   ; 
- - - - - - 0x003E73 00:BE63: FC        .byte $FC   ; 
- - - - - - 0x003E74 00:BE64: FF        .byte $FF   ; 
- - - - - - 0x003E75 00:BE65: FC        .byte $FC   ; 
- D 1 - I - 0x003E76 00:BE66: 3F        .byte $3F   ; 
- D 1 - I - 0x003E77 00:BE67: F0        .byte $F0   ; 
- - - - - - 0x003E78 00:BE68: 3F        .byte $3F   ; 
- D 1 - I - 0x003E79 00:BE69: F0        .byte $F0   ; 
- - - - - - 0x003E7A 00:BE6A: 3F        .byte $3F   ; 
- D 1 - I - 0x003E7B 00:BE6B: F0        .byte $F0   ; 
- - - - - - 0x003E7C 00:BE6C: FF        .byte $FF   ; 
- D 1 - I - 0x003E7D 00:BE6D: FC        .byte $FC   ; 
- - - - - - 0x003E7E 00:BE6E: FF        .byte $FF   ; 
- D 1 - I - 0x003E7F 00:BE6F: FC        .byte $FC   ; 
- D 1 - I - 0x003E80 00:BE70: 3F        .byte $3F   ; 
- D 1 - I - 0x003E81 00:BE71: FC        .byte $FC   ; 
- D 1 - I - 0x003E82 00:BE72: 3F        .byte $3F   ; 
- - - - - - 0x003E83 00:BE73: FC        .byte $FC   ; 
- D 1 - I - 0x003E84 00:BE74: 0F        .byte $0F   ; 
- - - - - - 0x003E85 00:BE75: FF        .byte $FF   ; 
- D 1 - I - 0x003E86 00:BE76: 0F        .byte $0F   ; 
- D 1 - I - 0x003E87 00:BE77: FF        .byte $FF   ; 
- D 1 - I - 0x003E88 00:BE78: 0F        .byte $0F   ; 
- - - - - - 0x003E89 00:BE79: FF        .byte $FF   ; 
- D 1 - I - 0x003E8A 00:BE7A: 0F        .byte $0F   ; 
- - - - - - 0x003E8B 00:BE7B: FF        .byte $FF   ; 
- D 1 - I - 0x003E8C 00:BE7C: 0F        .byte $0F   ; 
- - - - - - 0x003E8D 00:BE7D: FF        .byte $FF   ; 
- D 1 - I - 0x003E8E 00:BE7E: 0F        .byte $0F   ; 
- - - - - - 0x003E8F 00:BE7F: FF        .byte $FF   ; 
- D 1 - I - 0x003E90 00:BE80: CF        .byte $CF   ; 
- - - - - - 0x003E91 00:BE81: FF        .byte $FF   ; 
- D 1 - I - 0x003E92 00:BE82: CF        .byte $CF   ; 
- - - - - - 0x003E93 00:BE83: FF        .byte $FF   ; 
- D 1 - I - 0x003E94 00:BE84: 03        .byte $03   ; 
- - - - - - 0x003E95 00:BE85: FF        .byte $FF   ; 
- D 1 - I - 0x003E96 00:BE86: 03        .byte $03   ; 
- - - - - - 0x003E97 00:BE87: FF        .byte $FF   ; 
- D 1 - I - 0x003E98 00:BE88: 03        .byte $03   ; 
- - - - - - 0x003E99 00:BE89: FF        .byte $FF   ; 
- D 1 - I - 0x003E9A 00:BE8A: CF        .byte $CF   ; 
- - - - - - 0x003E9B 00:BE8B: FF        .byte $FF   ; 
- D 1 - I - 0x003E9C 00:BE8C: CF        .byte $CF   ; 
- - - - - - 0x003E9D 00:BE8D: FF        .byte $FF   ; 
- D 1 - I - 0x003E9E 00:BE8E: C3        .byte $C3   ; 
- - - - - - 0x003E9F 00:BE8F: FF        .byte $FF   ; 
- D 1 - I - 0x003EA0 00:BE90: C3        .byte $C3   ; 
- - - - - - 0x003EA1 00:BE91: FF        .byte $FF   ; 
- D 1 - I - 0x003EA2 00:BE92: F3        .byte $F3   ; 
- - - - - - 0x003EA3 00:BE93: FF        .byte $FF   ; 
- D 1 - I - 0x003EA4 00:BE94: F3        .byte $F3   ; 
- - - - - - 0x003EA5 00:BE95: FF        .byte $FF   ; 
- D 1 - I - 0x003EA6 00:BE96: C0        .byte $C0   ; 
- - - - - - 0x003EA7 00:BE97: FF        .byte $FF   ; 
- D 1 - I - 0x003EA8 00:BE98: C0        .byte $C0   ; 
- - - - - - 0x003EA9 00:BE99: FF        .byte $FF   ; 
- D 1 - I - 0x003EAA 00:BE9A: C0        .byte $C0   ; 
- - - - - - 0x003EAB 00:BE9B: FF        .byte $FF   ; 
- D 1 - I - 0x003EAC 00:BE9C: F3        .byte $F3   ; 
- - - - - - 0x003EAD 00:BE9D: FF        .byte $FF   ; 
- D 1 - I - 0x003EAE 00:BE9E: F3        .byte $F3   ; 
- - - - - - 0x003EAF 00:BE9F: FF        .byte $FF   ; 
- - - - - - 0x003EB0 00:BEA0: F3        .byte $F3   ; 
- - - - - - 0x003EB1 00:BEA1: FF        .byte $FF   ; 
- - - - - - 0x003EB2 00:BEA2: FF        .byte $FF   ; 



sub_BEA3:
; in
    ; ram_0002_t23_lo
    ; ram_0003_t08_hi
; out
    ; ram_0002_t24_lo
    ; ram_0003_t09_hi
C - - - - - 0x003EB3 00:BEA3: A5 DD     LDA ram_00DD
C - - - - - 0x003EB5 00:BEA5: 18        CLC
C - - - - - 0x003EB6 00:BEA6: 65 03     ADC ram_0003_t08_hi
C - - - - - 0x003EB8 00:BEA8: 85 03     STA ram_0003_t09_hi
C - - - - - 0x003EBA 00:BEAA: 90 07     BCC bra_BEB3
- - - - - - 0x003EBC 00:BEAC: E6 02     INC ram_0002_t23_lo
- - - - - - 0x003EBE 00:BEAE: 18        CLC
- - - - - - 0x003EBF 00:BEAF: 69 10     ADC #$10
- - - - - - 0x003EC1 00:BEB1: 85 03     STA ram_0003_t09_hi
bra_BEB3:
C - - - - - 0x003EC3 00:BEB3: A5 02     LDA ram_0002_t23_lo
C - - - - - 0x003EC5 00:BEB5: 65 DC     ADC ram_00DC
C - - - - - 0x003EC7 00:BEB7: 85 02     STA ram_0002_t24_lo
C - - - - - 0x003EC9 00:BEB9: A5 03     LDA ram_0003_t09_hi
C - - - - - 0x003ECB 00:BEBB: 38        SEC
C - - - - - 0x003ECC 00:BEBC: E9 F0     SBC #$F0
C - - - - - 0x003ECE 00:BEBE: 90 04     BCC bra_BEC4_RTS
C - - - - - 0x003ED0 00:BEC0: E6 02     INC ram_0002_t24_lo
C - - - - - 0x003ED2 00:BEC2: 85 03     STA ram_0003_t09_hi
bra_BEC4_RTS:
C - - - - - 0x003ED4 00:BEC4: 60        RTS



.out .sprintf("Free bytes in bank 08: 0x%04X [%d]", ($C000 - *), ($C000 - *))



