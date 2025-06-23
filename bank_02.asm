.segment "BANK_02"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $A000  ; for listing file
; 0x004010-0x00600F



.export ofs_016_0x005BA7_13
.export sub_0x005D43
.export loc_0x005D77
.export ofs_016_0x005D8D_0C
.export ofs_016_0x005E85_12
.export ofs_016_0x005F2D_1D
.export ofs_016_0x005F95_0E



bra_BB78:
- - - - - - 0x005B88 01:BB78: A2 02     LDX #$02
bra_BB7A_loop:
- - - - - - 0x005B8A 01:BB7A: 20 83 91  LDA ram_0782_unk,X
                                        AND #$7F
- - - - - - 0x005B8D 01:BB7D: C9 30     CMP #$30
- - - - - - 0x005B8F 01:BB7F: D0 06     BNE bra_BB87
- - - - - - 0x005B91 01:BB81: 20 22 BC  JSR sub_BC22
- - - - - - 0x005B94 01:BB84: 20 8F BB  JSR sub_BB8F
bra_BB87:
- - - - - - 0x005B97 01:BB87: E8        INX
- - - - - - 0x005B98 01:BB88: E0 0A     CPX #$0A
- - - - - - 0x005B9A 01:BB8A: 90 EE     BCC bra_BB7A_loop
- - - - - - 0x005B9C 01:BB8C: A6 53     LDX ram_0053
- - - - - - 0x005B9E 01:BB8E: 60        RTS



sub_BB8F:
C - - - - - 0x005B9F 01:BB8F: A9 01     LDA #$01
C - - - - - 0x005BA1 01:BB91: 9D F4 06  STA ram_06F4_obj,X
C - - - - - 0x005BA4 01:BB94: 85 95     STA ram_0095_flag
C - - - - - 0x005BA6 01:BB96: 60        RTS



ofs_016_0x005BA7_13:
C - - J - - 0x005BA7 01:BB97: 20 9D BB  JSR sub_BB9D
C - - - - - 0x005BAA 01:BB9A: 4C 10 8E  JMP loc_0x008E20



sub_BB9D:
C - - - - - 0x005BAD 01:BB9D: BD 78 07  LDA ram_0778_unk,X
C - - - - - 0x005BB0 01:BBA0: D0 16     BNE bra_BBB8
C - - - - - 0x005BB2 01:BBA2: 20 8F BB  JSR sub_BB8F
C - - - - - 0x005BB5 01:BBA5: 20 C8 90  JSR sub_0x0090D8_0600x_write_08
C - - - - - 0x005BB8 01:BBA8: A9 07     LDA #$07
C - - - - - 0x005BBA 01:BBAA: 9D 20 07  STA ram_0720_obj,X
C - - - - - 0x005BBD 01:BBAD: FE 78 07  INC ram_0778_unk,X
C - - - - - 0x005BC0 01:BBB0: 20 CA BC  JSR sub_BCCA
C - - - - - 0x005BC3 01:BBB3: F0 3D     BEQ bra_BBF2_RTS
bra_BBB5:
C - - - - - 0x005BC5 01:BBB5: 4C 17 9A  JMP loc_0x009A27
bra_BBB8:
C - - - - - 0x005BC8 01:BBB8: A5 95     LDA ram_0095_flag
C - - - - - 0x005BCA 01:BBBA: F0 BC     BEQ bra_BB78
C - - - - - 0x005BCC 01:BBBC: 20 CA BC  JSR sub_BCCA
C - - - - - 0x005BCF 01:BBBF: F0 32     BEQ bra_BBF3
C - - - - - 0x005BD1 01:BBC1: 20 D6 90  JSR sub_0x0090E6_0600x_AND_F0
C - - - - - 0x005BD4 01:BBC4: D0 EF     BNE bra_BBB5
C - - - - - 0x005BD6 01:BBC6: BD C8 07  LDA ram_07C8_unk,X
C - - - - - 0x005BD9 01:BBC9: F0 14     BEQ bra_BBDF
C - - - - - 0x005BDB 01:BBCB: 20 6B BC  JSR sub_BC6B
C - - - - - 0x005BDE 01:BBCE: BD D2 07  LDA ram_07D2_unk,X
C - - - - - 0x005BE1 01:BBD1: 18        CLC
C - - - - - 0x005BE2 01:BBD2: 69 09     ADC #$09
C - - - - - 0x005BE4 01:BBD4: 20 8D BC  JSR sub_BC8D
C - - - - - 0x005BE7 01:BBD7: 90 19     BCC bra_BBF2_RTS
C - - - - - 0x005BE9 01:BBD9: DE D2 07  DEC ram_07D2_unk,X
C - - - - - 0x005BEC 01:BBDC: F0 D7     BEQ bra_BBB5
C - - - - - 0x005BEE 01:BBDE: 60        RTS
bra_BBDF:
C - - - - - 0x005BEF 01:BBDF: A9 01     LDA #$01
C - - - - - 0x005BF1 01:BBE1: 9D C8 07  STA ram_07C8_unk,X
C - - - - - 0x005BF4 01:BBE4: BC AA 07  LDY ram_07AA_unk,X
C - - - - - 0x005BF7 01:BBE7: F0 06     BEQ bra_BBEF
C - - - - - 0x005BF9 01:BBE9: C0 10     CPY #$10
C - - - - - 0x005BFB 01:BBEB: B0 02     BCS bra_BBEF
C - - - - - 0x005BFD 01:BBED: A9 02     LDA #$02
bra_BBEF:
C - - - - - 0x005BFF 01:BBEF: 9D D2 07  STA ram_07D2_unk,X
bra_BBF2_RTS:
C - - - - - 0x005C02 01:BBF2: 60        RTS
bra_BBF3:
C - - - - - 0x005C03 01:BBF3: A5 26     LDA ram_buffer_index
C - - - - - 0x005C05 01:BBF5: D0 FB     BNE bra_BBF2_RTS
C - - - - - 0x005C07 01:BBF7: 20 D6 90  JSR sub_0x0090E6_0600x_AND_F0
C - - - - - 0x005C0A 01:BBFA: F0 2C     BEQ bra_BC28
C - - - - - 0x005C0C 01:BBFC: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x005C0F 01:BBFF: 18        CLC
C - - - - - 0x005C10 01:BC00: 69 20     ADC #$20
C - - - - - 0x005C12 01:BC02: C9 40     CMP #$40
C - - - - - 0x005C14 01:BC04: 90 22     BCC bra_BC28
- - - - - - 0x005C16 01:BC06: BD AA 07  LDA ram_07AA_unk,X
- - - - - - 0x005C19 01:BC09: F0 E7     BEQ bra_BBF2_RTS
- - - - - - 0x005C1B 01:BC0B: BD D2 07  LDA ram_07D2_unk,X
- - - - - - 0x005C1E 01:BC0E: 29 01     AND #$01
- - - - - - 0x005C20 01:BC10: 18        CLC
- - - - - - 0x005C21 01:BC11: 69 0B     ADC #$0B
- - - - - - 0x005C23 01:BC13: 20 8D BC  JSR sub_BC8D
- - - - - - 0x005C26 01:BC16: 90 DA     BCC bra_BBF2_RTS
- - - - - - 0x005C28 01:BC18: FE D2 07  INC ram_07D2_unk,X
- - - - - - 0x005C2B 01:BC1B: BD D2 07  LDA ram_07D2_unk,X
- - - - - - 0x005C2E 01:BC1E: C9 02     CMP #$02
- - - - - - 0x005C30 01:BC20: 90 D0     BCC bra_BBF2_RTS
bra_BC22:
sub_BC22:
C - - - - - 0x005C32 01:BC22: A9 00     LDA #$00
C - - - - - 0x005C34 01:BC24: 9D AA 07  STA ram_07AA_unk,X
bra_BC27_RTS:
C - - - - - 0x005C37 01:BC27: 60        RTS
bra_BC28:
C - - - - - 0x005C38 01:BC28: A9 00     LDA #$00
C - - - - - 0x005C3A 01:BC2A: 9D D2 07  STA ram_07D2_unk,X
C - - - - - 0x005C3D 01:BC2D: DE F4 06  DEC ram_06F4_obj,X
C - - - - - 0x005C40 01:BC30: D0 F5     BNE bra_BC27_RTS
C - - - - - 0x005C42 01:BC32: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x005C45 01:BC35: A8        TAY
C - - - - - 0x005C46 01:BC36: B9 D3 BC  LDA tbl_BCD3,Y
C - - - - - 0x005C49 01:BC39: A8        TAY
C - - - - - 0x005C4A 01:BC3A: A9 08     LDA #$08
C - - - - - 0x005C4C 01:BC3C: C0 80     CPY #$80
C - - - - - 0x005C4E 01:BC3E: B0 02     BCS bra_BC42
C - - - - - 0x005C50 01:BC40: A9 01     LDA #$01
bra_BC42:
C - - - - - 0x005C52 01:BC42: 9D F4 06  STA ram_06F4_obj,X
C - - - - - 0x005C55 01:BC45: 98        TYA
C - - - - - 0x005C56 01:BC46: 29 7F     AND #$7F
C - - - - - 0x005C58 01:BC48: A8        TAY
; * 08
C - - - - - 0x005C59 01:BC49: 0A        ASL
C - - - - - 0x005C5A 01:BC4A: 0A        ASL
C - - - - - 0x005C5B 01:BC4B: 0A        ASL
C - - - - - 0x005C5C 01:BC4C: 18        CLC
C - - - - - 0x005C5D 01:BC4D: 69 38     ADC #$38
C - - - - - 0x005C5F 01:BC4F: 9D 68 06  STA ram_obj_pos_Y,X
C - - - - - 0x005C62 01:BC52: 98        TYA
C - - - - - 0x005C63 01:BC53: 20 8D BC  JSR sub_BC8D
C - - - - - 0x005C66 01:BC56: 90 33     BCC bra_BC8B
C - - - - - 0x005C68 01:BC58: FE AA 07  INC ram_07AA_unk,X
C - - - - - 0x005C6B 01:BC5B: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x005C6E 01:BC5E: C9 12     CMP #$12
C - - - - - 0x005C70 01:BC60: B0 C0     BCS bra_BC22
C - - - - - 0x005C72 01:BC62: C9 09     CMP #$09
C - - - - - 0x005C74 01:BC64: D0 C1     BNE bra_BC27_RTS
C - - - - - 0x005C76 01:BC66: A9 28     LDA #con_music_28
C - - - - - 0x005C78 01:BC68: 4C D8 95  JMP loc_0x0095E8_play_music



sub_BC6B:
C - - - - - 0x005C7B 01:BC6B: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x005C7E 01:BC6E: 85 91     STA ram_0091_pos_Y
C - - - - - 0x005C80 01:BC70: BC D2 07  LDY ram_07D2_unk,X
C - - - - - 0x005C83 01:BC73: B9 F0 BC  LDA tbl_BCF1 - $01,Y
C - - - - - 0x005C86 01:BC76: 9D 68 06  STA ram_obj_pos_Y,X
C - - - - - 0x005C89 01:BC79: A9 51     LDA #$51
C - - - - - 0x005C8B 01:BC7B: 9D A0 07  STA ram_07A0_unk,X
C - - - - - 0x005C8E 01:BC7E: 20 94 84  JSR sub_0x0084A4
C - - - - - 0x005C91 01:BC81: A9 00     LDA #$00
C - - - - - 0x005C93 01:BC83: 99 20 07  STA ram_0720_obj,Y
C - - - - - 0x005C96 01:BC86: A5 91     LDA ram_0091_pos_Y
C - - - - - 0x005C98 01:BC88: 9D 68 06  STA ram_obj_pos_Y,X
bra_BC8B:
; bzk optimize, useless CLC
C - - - - - 0x005C9B 01:BC8B: 18        CLC
C - - - - - 0x005C9C 01:BC8C: 60        RTS



sub_BC8D:
C - - - - - 0x005C9D 01:BC8D: 48        PHA
C - - - - - 0x005C9E 01:BC8E: 20 B1 93  JSR sub_0x0093C1_06B2x_LSRx4_TAY
C - - - - - 0x005CA1 01:BC91: 68        PLA
C - - - - - 0x005CA2 01:BC92: C0 00     CPY #$00
C - - - - - 0x005CA4 01:BC94: D0 08     BNE bra_BC9E
C - - - - - 0x005CA6 01:BC96: C9 0C     CMP #$0C
C - - - - - 0x005CA8 01:BC98: B0 04     BCS bra_BC9E
; 00-0B
C - - - - - 0x005CAA 01:BC9A: A8        TAY
C - - - - - 0x005CAB 01:BC9B: B9 E5 BC  LDA tbl_BCE5_table_index,Y
bra_BC9E:
; * 04
C - - - - - 0x005CAE 01:BC9E: 0A        ASL
C - - - - - 0x005CAF 01:BC9F: 0A        ASL
C - - - - - 0x005CB0 01:BCA0: A8        TAY
C - - - - - 0x005CB1 01:BCA1: B9 F3 BC  LDA tbl_BCF3,Y
C - - - - - 0x005CB4 01:BCA4: 85 02     STA ram_0002_t02_ppu_data
C - - - - - 0x005CB6 01:BCA6: B9 F4 BC  LDA tbl_BCF3 + $01,Y
C - - - - - 0x005CB9 01:BCA9: 85 03     STA ram_0002_t02_ppu_data + $01
C - - - - - 0x005CBB 01:BCAB: B9 F5 BC  LDA tbl_BCF3 + $02,Y
C - - - - - 0x005CBE 01:BCAE: 85 06     STA ram_0006_t05_ppu_addr_lo
C - - - - - 0x005CC0 01:BCB0: B9 F6 BC  LDA tbl_BCF3 + $03,Y
C - - - - - 0x005CC3 01:BCB3: 85 07     STA ram_0007_t01_ppu_addr_hi
C - - - - - 0x005CC5 01:BCB5: 20 B1 93  JSR sub_0x0093C1_06B2x_LSRx4_TAY
; * 04
C - - - - - 0x005CC8 01:BCB8: 0A        ASL
C - - - - - 0x005CC9 01:BCB9: 0A        ASL
C - - - - - 0x005CCA 01:BCBA: 18        CLC
C - - - - - 0x005CCB 01:BCBB: 65 06     ADC ram_0006_t05_ppu_addr_lo
C - - - - - 0x005CCD 01:BCBD: 85 06     STA ram_0006_t05_ppu_addr_lo
C - - - - - 0x005CCF 01:BCBF: 90 02     BCC bra_BCC3_not_overflow
- - - - - - 0x005CD1 01:BCC1: E6 07     INC ram_0007_t01_ppu_addr_hi
bra_BCC3_not_overflow:
C - - - - - 0x005CD3 01:BCC3: A5 26     LDA ram_buffer_index
C - - - - - 0x005CD5 01:BCC5: D0 C4     BNE bra_BC8B
C - - - - - 0x005CD7 01:BCC7: 4C 92 87  JMP loc_0x0087A2



sub_BCCA:
C - - - - - 0x005CDA 01:BCCA: 20 B1 93  JSR sub_0x0093C1_06B2x_LSRx4_TAY
C - - - - - 0x005CDD 01:BCCD: B9 14 04  LDA ram_0414,Y
C - - - - - 0x005CE0 01:BCD0: C9 7C     CMP #$7C
C - - - - - 0x005CE2 01:BCD2: 60        RTS



tbl_BCD3:
- D 1 - - - 0x005CE3 01:BCD3: 01        .byte $01   ; 00 
- D 1 - - - 0x005CE4 01:BCD4: 02        .byte $02   ; 01 
- D 1 - - - 0x005CE5 01:BCD5: 03        .byte $03   ; 02 
- D 1 - - - 0x005CE6 01:BCD6: 04        .byte $04   ; 03 
- D 1 - - - 0x005CE7 01:BCD7: 05        .byte $05   ; 04 
- D 1 - - - 0x005CE8 01:BCD8: 06        .byte $06   ; 05 
- D 1 - - - 0x005CE9 01:BCD9: 07        .byte $07   ; 06 
- D 1 - - - 0x005CEA 01:BCDA: 08        .byte $08   ; 07 
- D 1 - - - 0x005CEB 01:BCDB: 09        .byte $09   ; 08 
- D 1 - - - 0x005CEC 01:BCDC: 88        .byte $88   ; 09 
- D 1 - - - 0x005CED 01:BCDD: 87        .byte $87   ; 0A 
- D 1 - - - 0x005CEE 01:BCDE: 86        .byte $86   ; 0B 
- D 1 - - - 0x005CEF 01:BCDF: 85        .byte $85   ; 0C 
- D 1 - - - 0x005CF0 01:BCE0: 84        .byte $84   ; 0D 
- D 1 - - - 0x005CF1 01:BCE1: 83        .byte $83   ; 0E 
- D 1 - - - 0x005CF2 01:BCE2: 82        .byte $82   ; 0F 
- D 1 - - - 0x005CF3 01:BCE3: 81        .byte $81   ; 10 
- D 1 - - - 0x005CF4 01:BCE4: 80        .byte $80   ; 11 



tbl_BCE5_table_index:
- D 1 - - - 0x005CF5 01:BCE5: 00        .byte $00   ; 00 
- D 1 - - - 0x005CF6 01:BCE6: 01        .byte $01   ; 01 
- D 1 - - - 0x005CF7 01:BCE7: 02        .byte $02   ; 02 
- D 1 - - - 0x005CF8 01:BCE8: 03        .byte $03   ; 03 
- D 1 - - - 0x005CF9 01:BCE9: 04        .byte $04   ; 04 
- D 1 - - - 0x005CFA 01:BCEA: 05        .byte $05   ; 05 
- D 1 - - - 0x005CFB 01:BCEB: 06        .byte $06   ; 06 
- D 1 - - - 0x005CFC 01:BCEC: 0D        .byte $0D   ; 07 
- D 1 - - - 0x005CFD 01:BCED: 0E        .byte $0E   ; 08 
- D 1 - - - 0x005CFE 01:BCEE: 09        .byte $09   ; 09 
- D 1 - - - 0x005CFF 01:BCEF: 0A        .byte $0A   ; 0A 
- D 1 - - - 0x005D00 01:BCF0: 0F        .byte $0F   ; 0B 



tbl_BCF1:
- D 1 - - - 0x005D01 01:BCF1: 40        .byte $40   ; 01 
- D 1 - - - 0x005D02 01:BCF2: 70        .byte $70   ; 02 



tbl_BCF3:
; 00 
- D 1 - - - 0x005D03 01:BCF3: CC A9     .word _off031_0x016CF2_00
- D 1 - - - 0x005D05 01:BCF5: D0 20     .word $20D0 ; 
; 01 
- D 1 - - - 0x005D07 01:BCF7: DE A9     .word _off031_0x0169EE_01
- D 1 - - - 0x005D09 01:BCF9: D0 20     .word $20D0 ; 
; 02 
- D 1 - - - 0x005D0B 01:BCFB: F4 A9     .word _off031_0x016A04_02
- D 1 - - - 0x005D0D 01:BCFD: F0 20     .word $20F0 ; 
; 03 
- D 1 - - - 0x005D0F 01:BCFF: F4 A9     .word _off031_0x016A04_03
- D 1 - - - 0x005D11 01:BD01: 10 21     .word $2110 ; 
; 04 
- D 1 - - - 0x005D13 01:BD03: F4 A9     .word _off031_0x016A04_04
- D 1 - - - 0x005D15 01:BD05: 30 21     .word $2130 ; 
; 05 
- D 1 - - - 0x005D17 01:BD07: F4 A9     .word _off031_0x016A04_05
- D 1 - - - 0x005D19 01:BD09: 50 21     .word $2150 ; 
; 06 
- D 1 - - - 0x005D1B 01:BD0B: F4 A9     .word _off031_0x016A04_06
- D 1 - - - 0x005D1D 01:BD0D: 70 21     .word $2170 ; 
; 07 
- D 1 - - - 0x005D1F 01:BD0F: 0A AA     .word _off031_0x016A1A_07
- D 1 - - - 0x005D21 01:BD11: 90 21     .word $2190 ; 
; 08 
- D 1 - - - 0x005D23 01:BD13: 20 AA     .word _off031_0x016A30_08
- D 1 - - - 0x005D25 01:BD15: B0 21     .word $21B0 ; 
; 09 
- D 1 - - - 0x005D27 01:BD17: 32 AA     .word _off031_0x016A42_09
- D 1 - - - 0x005D29 01:BD19: D0 21     .word $21D0 ; 
; 0A 
- D 1 - - - 0x005D2B 01:BD1B: 40 AA     .word _off031_0x016A50_0A
- D 1 - - - 0x005D2D 01:BD1D: D0 20     .word $20D0 ; 
; 0B 
- - - - - - 0x005D2F 01:BD1F: 56 AA     .word _off031_0x016A66_0B
- - - - - - 0x005D31 01:BD21: 70 21     .word $2170 ; 
; 0C 
- - - - - - 0x005D33 01:BD23: 70 AA     .word _off031_0x016A80_0C
- - - - - - 0x005D35 01:BD25: D0 20     .word $20D0 ; 
; 0D 
- D 1 - - - 0x005D37 01:BD27: 86 AA     .word _off031_0x016A96_0D
- D 1 - - - 0x005D39 01:BD29: 90 21     .word $2190 ; 
; 0E 
- D 1 - - - 0x005D3B 01:BD2B: 9C AA     .word _off031_0x016AAC_0E
- D 1 - - - 0x005D3D 01:BD2D: B0 21     .word $21B0 ; 
; 0F 
- D 1 - - - 0x005D3F 01:BD2F: AE AA     .word _off031_0x016ABE_0F
- D 1 - - - 0x005D41 01:BD31: 70 21     .word $2170 ; 



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



loc_0x005D77:
C D 1 - - - 0x005D77 01:BD67: 20 D6 90  JSR sub_0x0090E6_0600x_AND_F0
C - - - - - 0x005D7A 01:BD6A: D0 0E     BNE bra_BD7A
C - - - - - 0x005D7C 01:BD6C: A9 81     LDA #$81
C - - - - - 0x005D7E 01:BD6E: A0 08     LDY #$08
C - - - - - 0x005D80 01:BD70: 20 D8 93  JSR sub_0x0093E8
C - - - - - 0x005D83 01:BD73: B0 05     BCS bra_BD7A
C - - - - - 0x005D85 01:BD75: A9 00     LDA #$00
C - - - - - 0x005D87 01:BD77: 99 B2 06  STA ram_06B2_obj,Y
bra_BD7A:
C - - - - - 0x005D8A 01:BD7A: 4C 10 8E  JMP loc_0x008E20



ofs_016_0x005D8D_0C:
C - - J - - 0x005D8D 01:BD7D: 20 83 BD  JSR sub_BD83
C - - - - - 0x005D90 01:BD80: 4C 10 8E  JMP loc_0x008E20



sub_BD83:
C - - - - - 0x005D93 01:BD83: BD 78 07  LDA ram_0778_unk,X
C - - - - - 0x005D96 01:BD86: F0 03     BEQ bra_BD8B
C - - - - - 0x005D98 01:BD88: 4C 18 BE  JMP loc_BE18
bra_BD8B:
C - - - - - 0x005D9B 01:BD8B: 20 C8 90  JSR sub_0x0090D8_0600x_write_08
C - - - - - 0x005D9E 01:BD8E: FE 78 07  INC ram_0778_unk,X
C - - - - - 0x005DA1 01:BD91: A5 9F     LDA ram_009F
C - - - - - 0x005DA3 01:BD93: 38        SEC
C - - - - - 0x005DA4 01:BD94: E9 E4     SBC #$E4
C - - - - - 0x005DA6 01:BD96: A8        TAY
C - - - - - 0x005DA7 01:BD97: BD BE 07  LDA ram_07BE_unk,X
C - - - - - 0x005DAA 01:BD9A: 18        CLC
C - - - - - 0x005DAB 01:BD9B: 79 CD BE  ADC tbl_BECD,Y
C - - - - - 0x005DAE 01:BD9E: 9D BE 07  STA ram_07BE_unk,X
C - - - - - 0x005DB1 01:BDA1: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x005DB4 01:BDA4: 18        CLC
C - - - - - 0x005DB5 01:BDA5: 79 D7 BE  ADC tbl_BED7,Y
C - - - - - 0x005DB8 01:BDA8: 9D AA 07  STA ram_07AA_unk,X
C - - - - - 0x005DBB 01:BDAB: 6A        ROR
C - - - - - 0x005DBC 01:BDAC: 59 D7 BE  EOR tbl_BED7,Y
C - - - - - 0x005DBF 01:BDAF: 2A        ROL
C - - - - - 0x005DC0 01:BDB0: 90 08     BCC bra_BDBA
- - - - - - 0x005DC2 01:BDB2: BD D2 07  LDA ram_07D2_unk,X
- - - - - - 0x005DC5 01:BDB5: 09 02     ORA #$02
- - - - - - 0x005DC7 01:BDB7: 9D D2 07  STA ram_07D2_unk,X
bra_BDBA:
C - - - - - 0x005DCA 01:BDBA: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x005DCD 01:BDBD: 18        CLC
C - - - - - 0x005DCE 01:BDBE: 69 40     ADC #$40
C - - - - - 0x005DD0 01:BDC0: C9 60     CMP #$60
C - - - - - 0x005DD2 01:BDC2: B0 09     BCS bra_BDCD
C - - - - - 0x005DD4 01:BDC4: A5 61     LDA ram_0061_lo
C - - - - - 0x005DD6 01:BDC6: 29 1F     AND #$1F
C - - - - - 0x005DD8 01:BDC8: F0 03     BEQ bra_BDCD
C - - - - - 0x005DDA 01:BDCA: 4C 68 BE  JMP loc_BE68
bra_BDCD:
C - - - - - 0x005DDD 01:BDCD: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x005DE0 01:BDD0: 18        CLC
C - - - - - 0x005DE1 01:BDD1: 79 E1 BE  ADC tbl_BEE1,Y
C - - - - - 0x005DE4 01:BDD4: 9D B4 07  STA ram_07B4_unk,X
C - - - - - 0x005DE7 01:BDD7: B0 0D     BCS bra_BDE6
C - - - - - 0x005DE9 01:BDD9: B9 E1 BE  LDA tbl_BEE1,Y
C - - - - - 0x005DEC 01:BDDC: F0 08     BEQ bra_BDE6
C - - - - - 0x005DEE 01:BDDE: BD D2 07  LDA ram_07D2_unk,X
C - - - - - 0x005DF1 01:BDE1: 09 01     ORA #$01
C - - - - - 0x005DF3 01:BDE3: 9D D2 07  STA ram_07D2_unk,X
bra_BDE6:
C - - - - - 0x005DF6 01:BDE6: BD B4 07  LDA ram_07B4_unk,X
C - - - - - 0x005DF9 01:BDE9: C9 20     CMP #$20
C - - - - - 0x005DFB 01:BDEB: 90 03     BCC bra_BDF0
C - - - - - 0x005DFD 01:BDED: 4C 68 BE  JMP loc_BE68
bra_BDF0:
C - - - - - 0x005E00 01:BDF0: BD D2 07  LDA ram_07D2_unk,X
C - - - - - 0x005E03 01:BDF3: 29 03     AND #$03
C - - - - - 0x005E05 01:BDF5: F0 03     BEQ bra_BDFA
- - - - - - 0x005E07 01:BDF7: 4C 68 BE  JMP loc_BE68
bra_BDFA:
C - - - - - 0x005E0A 01:BDFA: 20 B9 8F  JSR sub_0x008FC9
C - - - - - 0x005E0D 01:BDFD: 20 0A 96  JSR sub_0x00961A
C - - - - - 0x005E10 01:BE00: A9 03     LDA #$03
C - - - - - 0x005E12 01:BE02: 20 00 97  JSR sub_0x009710
C - - - - - 0x005E15 01:BE05: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x005E18 01:BE08: 29 E0     AND #$E0
C - - - - - 0x005E1A 01:BE0A: 99 4E 06  STA ram_obj_pos_X,Y
C - - - - - 0x005E1D 01:BE0D: BD B4 07  LDA ram_07B4_unk,X
C - - - - - 0x005E20 01:BE10: 29 E0     AND #$E0
C - - - - - 0x005E22 01:BE12: 69 20     ADC #$20
C - - - - - 0x005E24 01:BE14: 99 68 06  STA ram_obj_pos_Y,Y
C - - - - - 0x005E27 01:BE17: 60        RTS



loc_BE18:
C D 1 - - - 0x005E28 01:BE18: 20 BA 93  JSR sub_0x0093CA
C - - - - - 0x005E2B 01:BE1B: 90 01     BCC bra_BE1E
bra_BE1D_RTS:
C - - - - - 0x005E2D 01:BE1D: 60        RTS
bra_BE1E:
C - - - - - 0x005E2E 01:BE1E: BC C8 07  LDY ram_07C8_unk,X
C - - - - - 0x005E31 01:BE21: B9 F5 BE  LDA tbl_BEF5,Y
C - - - - - 0x005E34 01:BE24: 85 1F     STA ram_001F_t04
C - - - - - 0x005E36 01:BE26: B9 09 BF  LDA tbl_BF09,Y
C - - - - - 0x005E39 01:BE29: 18        CLC
C - - - - - 0x005E3A 01:BE2A: 7D AA 07  ADC ram_07AA_unk,X
C - - - - - 0x005E3D 01:BE2D: 85 00     STA ram_0000_t38
C - - - - - 0x005E3F 01:BE2F: 6A        ROR
C - - - - - 0x005E40 01:BE30: 59 09 BF  EOR tbl_BF09,Y
C - - - - - 0x005E43 01:BE33: 2A        ROL
C - - - - - 0x005E44 01:BE34: 2A        ROL
C - - - - - 0x005E45 01:BE35: 2A        ROL
C - - - - - 0x005E46 01:BE36: 5D D2 07  EOR ram_07D2_unk,X
C - - - - - 0x005E49 01:BE39: 29 02     AND #$02
C - - - - - 0x005E4B 01:BE3B: F0 0F     BEQ bra_BE4C
- - - - - - 0x005E4D 01:BE3D: A5 00     LDA ram_0000_t38
- - - - - - 0x005E4F 01:BE3F: 29 1F     AND #$1F
- - - - - - 0x005E51 01:BE41: F0 28     BEQ bra_BE6B
- - - - - - 0x005E53 01:BE43: A5 00     LDA ram_0000_t38
- - - - - - 0x005E55 01:BE45: 18        CLC
- - - - - - 0x005E56 01:BE46: 69 18     ADC #$18
- - - - - - 0x005E58 01:BE48: C9 30     CMP #$30
- - - - - - 0x005E5A 01:BE4A: B0 1F     BCS bra_BE6B
bra_BE4C:
C - - - - - 0x005E5C 01:BE4C: B9 FF BE  LDA tbl_BEFF,Y
C - - - - - 0x005E5F 01:BE4F: 18        CLC
C - - - - - 0x005E60 01:BE50: 7D BE 07  ADC ram_07BE_unk,X
C - - - - - 0x005E63 01:BE53: A8        TAY
C - - - - - 0x005E64 01:BE54: 84 02     STY ram_0002_t18_array_index
C - - - - - 0x005E66 01:BE56: A5 1F     LDA ram_001F_t04
C - - - - - 0x005E68 01:BE58: 20 0E FC  JSR sub_0x01FC1E
loc_BE5B:
C - - - - - 0x005E6B 01:BE5B: 20 4C 9A  JSR sub_0x009A5C_clear_animation
C - - - - - 0x005E6E 01:BE5E: FE C8 07  INC ram_07C8_unk,X
C - - - - - 0x005E71 01:BE61: BD C8 07  LDA ram_07C8_unk,X
C - - - - - 0x005E74 01:BE64: C9 0A     CMP #$0A
C - - - - - 0x005E76 01:BE66: 90 B5     BCC bra_BE1D_RTS
bra_BE68:
loc_BE68:   ; bzk optimize
C D 1 - - - 0x005E78 01:BE68: 4C 17 9A  JMP loc_0x009A27
bra_BE6B:
- - - - - - 0x005E7B 01:BE6B: 84 02     STY ram_0002_t18_array_index
- - - - - - 0x005E7D 01:BE6D: A5 1F     LDA ram_001F_t04
- - - - - - 0x005E7F 01:BE6F: 99 00 04  STA ram_0400,Y
- - - - - - 0x005E82 01:BE72: 4C 5B BE  JMP loc_BE5B



ofs_016_0x005E85_12:
C - - J - - 0x005E85 01:BE75: 20 7B BE  JSR sub_BE7B
C - - - - - 0x005E88 01:BE78: 4C B6 81  JMP loc_0x0081C6



sub_BE7B:
C - - - - - 0x005E8B 01:BE7B: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x005E8E 01:BE7E: C9 E0     CMP #$E0
C - - - - - 0x005E90 01:BE80: 90 08     BCC bra_BE8A
C - - - - - 0x005E92 01:BE82: 20 47 9A  JSR sub_0x009A57
C - - - - - 0x005E95 01:BE85: A9 01     LDA #$01
C - - - - - 0x005E97 01:BE87: 9D 78 07  STA ram_0778_unk,X
bra_BE8A:
C - - - - - 0x005E9A 01:BE8A: BD 78 07  LDA ram_0778_unk,X
C - - - - - 0x005E9D 01:BE8D: 29 7F     AND #$7F
C - - - - - 0x005E9F 01:BE8F: C9 03     CMP #$03
C - - - - - 0x005EA1 01:BE91: 90 1C     BCC bra_BEAF
C - - - - - 0x005EA3 01:BE93: 20 81 8D  JSR sub_0x008D91
C - - - - - 0x005EA6 01:BE96: B0 D0     BCS bra_BE68
C - - - - - 0x005EA8 01:BE98: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x005EAB 01:BE9B: C9 10     CMP #$10
C - - - - - 0x005EAD 01:BE9D: 90 10     BCC bra_BEAF
C - - - - - 0x005EAF 01:BE9F: A9 00     LDA #$00
C - - - - - 0x005EB1 01:BEA1: A0 F0     LDY #$F0
C - - - - - 0x005EB3 01:BEA3: 20 BC 8F  JSR sub_0x008FCC
C - - - - - 0x005EB6 01:BEA6: A5 00     LDA ram_0000_t42
C - - - - - 0x005EB8 01:BEA8: 38        SEC
C - - - - - 0x005EB9 01:BEA9: E9 EC     SBC #$EC
C - - - - - 0x005EBB 01:BEAB: C9 02     CMP #$02
C - - - - - 0x005EBD 01:BEAD: B0 B9     BCS bra_BE68
bra_BEAF:
C - - - - - 0x005EBF 01:BEAF: 20 2E 94  JSR sub_0x00943E
C - - - - - 0x005EC2 01:BEB2: 9D B4 07  STA ram_07B4_unk,X
C - - - - - 0x005EC5 01:BEB5: A9 40     LDA #$40
C - - - - - 0x005EC7 01:BEB7: A0 40     LDY #$40
C - - - - - 0x005EC9 01:BEB9: 20 0D 95  JSR sub_0x00951D
C - - - - - 0x005ECC 01:BEBC: B0 0E     BCS bra_BECC_RTS
C - - - - - 0x005ECE 01:BEBE: BD 78 07  LDA ram_0778_unk,X
C - - - - - 0x005ED1 01:BEC1: 29 7F     AND #$7F
C - - - - - 0x005ED3 01:BEC3: C9 01     CMP #$01
C - - - - - 0x005ED5 01:BEC5: D0 05     BNE bra_BECC_RTS
C - - - - - 0x005ED7 01:BEC7: A9 03     LDA #$03
C - - - - - 0x005ED9 01:BEC9: 9D 78 07  STA ram_0778_unk,X
bra_BECC_RTS:
C - - - - - 0x005EDC 01:BECC: 60        RTS



tbl_BECD:
- D 1 - - - 0x005EDD 01:BECD: 00        .byte $00   ; E4
- - - - - - 0x005EDE 01:BECE: FF        .byte $FF   ; E5
- - - - - - 0x005EDF 01:BECF: F0        .byte $F0   ; E6
- D 1 - - - 0x005EE0 01:BED0: E0        .byte $E0   ; E7
- - - - - - 0x005EE1 01:BED1: EF        .byte $EF   ; E8
- D 1 - - - 0x005EE2 01:BED2: DF        .byte $DF   ; E9
- D 1 - - - 0x005EE3 01:BED3: D0        .byte $D0   ; EA
- D 1 - - - 0x005EE4 01:BED4: CF        .byte $CF   ; EB
- - - - - - 0x005EE5 01:BED5: C0        .byte $C0   ; EC
- - - - - - 0x005EE6 01:BED6: BF        .byte $BF   ; ED



tbl_BED7:
- D 1 - - - 0x005EE7 01:BED7: 00        .byte $00   ; E4
- - - - - - 0x005EE8 01:BED8: E0        .byte $E0   ; E5
- - - - - - 0x005EE9 01:BED9: 00        .byte $00   ; E6
- D 1 - - - 0x005EEA 01:BEDA: 00        .byte $00   ; E7
- - - - - - 0x005EEB 01:BEDB: E0        .byte $E0   ; E8
- D 1 - - - 0x005EEC 01:BEDC: E0        .byte $E0   ; E9
- D 1 - - - 0x005EED 01:BEDD: 00        .byte $00   ; EA
- D 1 - - - 0x005EEE 01:BEDE: E0        .byte $E0   ; EB
- - - - - - 0x005EEF 01:BEDF: 00        .byte $00   ; EC
- - - - - - 0x005EF0 01:BEE0: E0        .byte $E0   ; ED



tbl_BEE1:
- - - - - - 0x005EF1 01:BEE1: 00        .byte $00   ; E4
- - - - - - 0x005EF2 01:BEE2: 00        .byte $00   ; E5
- - - - - - 0x005EF3 01:BEE3: E0        .byte $E0   ; E6
- D 1 - - - 0x005EF4 01:BEE4: C0        .byte $C0   ; E7
- - - - - - 0x005EF5 01:BEE5: E0        .byte $E0   ; E8
- D 1 - - - 0x005EF6 01:BEE6: C0        .byte $C0   ; E9
- - - - - - 0x005EF7 01:BEE7: A0        .byte $A0   ; EA
- D 1 - - - 0x005EF8 01:BEE8: A0        .byte $A0   ; EB
- - - - - - 0x005EF9 01:BEE9: 80        .byte $80   ; EC
- - - - - - 0x005EFA 01:BEEA: 80        .byte $80   ; ED



tbl_BEF5:
- D 1 - - - 0x005F05 01:BEF5: FA        .byte $FA   ; 00 
- D 1 - - - 0x005F06 01:BEF6: FB        .byte $FB   ; 01 
- D 1 - - - 0x005F07 01:BEF7: F9        .byte $F9   ; 02 
- D 1 - - - 0x005F08 01:BEF8: FC        .byte $FC   ; 03 
- D 1 - - - 0x005F09 01:BEF9: F9        .byte $F9   ; 04 
- D 1 - - - 0x005F0A 01:BEFA: F8        .byte $F8   ; 05 
- D 1 - - - 0x005F0B 01:BEFB: FE        .byte $FE   ; 06 
- D 1 - - - 0x005F0C 01:BEFC: FA        .byte $FA   ; 07 
- D 1 - - - 0x005F0D 01:BEFD: FD        .byte $FD   ; 08 
- D 1 - - - 0x005F0E 01:BEFE: F7        .byte $F7   ; 09 



tbl_BEFF:
- D 1 - - - 0x005F0F 01:BEFF: 21        .byte $21   ; 00 
- D 1 - - - 0x005F10 01:BF00: 30        .byte $30   ; 01 
- D 1 - - - 0x005F11 01:BF01: 10        .byte $10   ; 02 
- D 1 - - - 0x005F12 01:BF02: 31        .byte $31   ; 03 
- D 1 - - - 0x005F13 01:BF03: 20        .byte $20   ; 04 
- D 1 - - - 0x005F14 01:BF04: 01        .byte $01   ; 05 
- D 1 - - - 0x005F15 01:BF05: 41        .byte $41   ; 06 
- D 1 - - - 0x005F16 01:BF06: 11        .byte $11   ; 07 
- D 1 - - - 0x005F17 01:BF07: 40        .byte $40   ; 08 
- D 1 - - - 0x005F18 01:BF08: 00        .byte $00   ; 09 



tbl_BF09:
- D 1 - - - 0x005F19 01:BF09: 20        .byte $20   ; 00 
- D 1 - - - 0x005F1A 01:BF0A: 00        .byte $00   ; 01 
- D 1 - - - 0x005F1B 01:BF0B: 00        .byte $00   ; 02 
- D 1 - - - 0x005F1C 01:BF0C: 20        .byte $20   ; 03 
- D 1 - - - 0x005F1D 01:BF0D: 00        .byte $00   ; 04 
- D 1 - - - 0x005F1E 01:BF0E: 20        .byte $20   ; 05 
- D 1 - - - 0x005F1F 01:BF0F: 20        .byte $20   ; 06 
- D 1 - - - 0x005F20 01:BF10: 20        .byte $20   ; 07 
- D 1 - - - 0x005F21 01:BF11: 00        .byte $00   ; 08 
- D 1 - - - 0x005F22 01:BF12: 00        .byte $00   ; 09 



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



ofs_016_0x005F95_0E:
C - - J - - 0x005F95 01:BF85: A9 00     LDA #$00
C - - - - - 0x005F97 01:BF87: 9D 20 07  STA ram_0720_obj,X
C - - - - - 0x005F9A 01:BF8A: A5 23     LDA ram_frm_cnt
C - - - - - 0x005F9C 01:BF8C: 29 3F     AND #$3F
C - - - - - 0x005F9E 01:BF8E: D0 55     BNE bra_BFE5
- - - - - - 0x005FA0 01:BF90: BD D2 07  LDA ram_07D2_unk,X
- - - - - - 0x005FA3 01:BF93: FE D2 07  INC ram_07D2_unk,X
- - - - - - 0x005FA6 01:BF96: 29 03     AND #$03
- - - - - - 0x005FA8 01:BF98: A8        TAY
- - - - - - 0x005FA9 01:BF99: B9 F6 BF  LDA tbl_BFF6_index,Y
- - - - - - 0x005FAC 01:BF9C: 30 47     BMI bra_BFE5
- - - - - - 0x005FAE 01:BF9E: A8        TAY
- - - - - - 0x005FAF 01:BF9F: B9 F0 BF  LDA tbl_BFF0,Y
- - - - - - 0x005FB2 01:BFA2: 85 00     STA ram_0000_t39
- - - - - - 0x005FB4 01:BFA4: B9 F3 BF  LDA tbl_BFF3,Y
- - - - - - 0x005FB7 01:BFA7: 85 01     STA ram_0001_t01
- - - - - - 0x005FB9 01:BFA9: A0 12     LDY #$12
- - - - - - 0x005FBB 01:BFAB: B9 82 06  LDA ram_0682_obj,Y
- - - - - - 0x005FBE 01:BFAE: D0 35     BNE bra_BFE5
- - - - - - 0x005FC0 01:BFB0: A9 A1     LDA #$A1
- - - - - - 0x005FC2 01:BFB2: 9D A0 07  STA ram_07A0_unk,X
- - - - - - 0x005FC5 01:BFB5: 20 A1 84  JSR sub_0x0084B1
- - - - - - 0x005FC8 01:BFB8: A9 40     LDA #$40
- - - - - - 0x005FCA 01:BFBA: 99 B2 06  STA ram_06B2_obj,Y
- - - - - - 0x005FCD 01:BFBD: BD 4E 06  LDA ram_obj_pos_X,X
- - - - - - 0x005FD0 01:BFC0: 18        CLC
- - - - - - 0x005FD1 01:BFC1: 65 00     ADC ram_0000_t39
- - - - - - 0x005FD3 01:BFC3: 99 4E 06  STA ram_obj_pos_X,Y
- - - - - - 0x005FD6 01:BFC6: 6A        ROR
- - - - - - 0x005FD7 01:BFC7: 45 00     EOR ram_0000_t39
- - - - - - 0x005FD9 01:BFC9: 2A        ROL
- - - - - - 0x005FDA 01:BFCA: B0 1C     BCS bra_BFE8
- - - - - - 0x005FDC 01:BFCC: BD 68 06  LDA ram_obj_pos_Y,X
- - - - - - 0x005FDF 01:BFCF: 18        CLC
- - - - - - 0x005FE0 01:BFD0: 65 01     ADC ram_0001_t01
- - - - - - 0x005FE2 01:BFD2: 99 68 06  STA ram_obj_pos_Y,Y
- - - - - - 0x005FE5 01:BFD5: 6A        ROR
- - - - - - 0x005FE6 01:BFD6: 45 01     EOR ram_0001_t01
- - - - - - 0x005FE8 01:BFD8: 2A        ROL
- - - - - - 0x005FE9 01:BFD9: B0 0D     BCS bra_BFE8
- - - - - - 0x005FEB 01:BFDB: A9 06     LDA #$06
- - - - - - 0x005FED 01:BFDD: 99 20 07  STA ram_0720_obj,Y
- - - - - - 0x005FF0 01:BFE0: A9 32     LDA #con_music_32
- - - - - - 0x005FF2 01:BFE2: 20 D8 95  JSR sub_0x0095E8_play_music
bra_BFE5:
C - - - - - 0x005FF5 01:BFE5: 4C 10 8E  JMP loc_0x008E20
bra_BFE8:
- - - - - - 0x005FF8 01:BFE8: 98        TYA
- - - - - - 0x005FF9 01:BFE9: AA        TAX
- - - - - - 0x005FFA 01:BFEA: 20 52 9A  JSR sub_0x009A62
- - - - - - 0x005FFD 01:BFED: A6 53     LDX ram_0053
- - - - - - 0x005FFF 01:BFEF: 60        RTS



tbl_BFF0:
- - - - - - 0x006000 01:BFF0: ED        .byte $ED   ; 00 
- - - - - - 0x006001 01:BFF1: ED        .byte $ED   ; 01 
- - - - - - 0x006002 01:BFF2: 0D        .byte $0D   ; 02 



tbl_BFF3:
- - - - - - 0x006003 01:BFF3: FB        .byte $FB   ; 00 
- - - - - - 0x006004 01:BFF4: 1A        .byte $1A   ; 01 
- - - - - - 0x006005 01:BFF5: 1A        .byte $1A   ; 02 



tbl_BFF6_index:
- - - - - - 0x006006 01:BFF6: 00        .byte $00   ; 00 
- - - - - - 0x006007 01:BFF7: 01        .byte $01   ; 01 
- - - - - - 0x006008 01:BFF8: 02        .byte $02   ; 02 
- - - - - - 0x006009 01:BFF9: FF        .byte $FF   ; 03 



.out .sprintf("Free bytes in bank 02: 0x%04X [%d]", ($C000 - *), ($C000 - *))



