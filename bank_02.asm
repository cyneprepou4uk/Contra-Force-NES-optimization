.segment "BANK_02"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $A000  ; for listing file
; 0x004010-0x00600F



.export ofs_016_0x005BA7_13
.export sub_0x005D43
.export ofs_016_0x005F2D_1D



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



_off031_0x016CF2_00:
- D 1 - I - 0x0169DC 05:A9CC: 04        .byte $04   ; size X
- D 1 - I - 0x0169DD 05:A9CD: 04        .byte $04   ; size Y
- D 1 - I - 0x0169DE 05:A9CE: C2        .byte $C2, $C3, $C4, $C5   ; 01 
- D 1 - I - 0x0169E2 05:A9D2: C6        .byte $C6, $C7, $C7, $C8   ; 02 
- D 1 - I - 0x0169E6 05:A9D6: BE        .byte $BE, $BE, $BE, $BE   ; 03 
- D 1 - I - 0x0169EA 05:A9DA: BE        .byte $BE, $BF, $BE, $BF   ; 04 



_off031_0x0169EE_01:
- D 1 - I - 0x0169EE 05:A9DE: 04        .byte $04   ; size X
- D 1 - I - 0x0169EF 05:A9DF: 05        .byte $05   ; size Y
- D 1 - I - 0x0169F0 05:A9E0: 00        .byte $00, $C0, $C1, $BE   ; 01 
- D 1 - I - 0x0169F4 05:A9E4: C2        .byte $C2, $C3, $C4, $C5   ; 02 
- D 1 - I - 0x0169F8 05:A9E8: C6        .byte $C6, $C7, $C7, $C8   ; 03 
- D 1 - I - 0x0169FC 05:A9EC: BE        .byte $BE, $BE, $BE, $BE   ; 04 
- D 1 - I - 0x016A00 05:A9F0: BE        .byte $BE, $BF, $BE, $BF   ; 05 



_off031_0x016A04_02:
_off031_0x016A04_03:
_off031_0x016A04_04:
_off031_0x016A04_05:
_off031_0x016A04_06:
- D 1 - I - 0x016A04 05:A9F4: 04        .byte $04   ; size X
- D 1 - I - 0x016A05 05:A9F5: 05        .byte $05   ; size Y
- D 1 - I - 0x016A06 05:A9F6: BE        .byte $BE, $C0, $C1, $BF   ; 01 
- D 1 - I - 0x016A0A 05:A9FA: C2        .byte $C2, $C3, $C4, $C5   ; 02 
- D 1 - I - 0x016A0E 05:A9FE: C6        .byte $C6, $C7, $C7, $C8   ; 03 
- D 1 - I - 0x016A12 05:AA02: BE        .byte $BE, $BE, $BE, $BE   ; 04 
- D 1 - I - 0x016A16 05:AA06: BE        .byte $BE, $BF, $BE, $BF   ; 05 



_off031_0x016A1A_07:
- D 1 - I - 0x016A1A 05:AA0A: 04        .byte $04   ; size X
- D 1 - I - 0x016A1B 05:AA0B: 05        .byte $05   ; size Y
- D 1 - I - 0x016A1C 05:AA0C: BE        .byte $BE, $C0, $C1, $BF   ; 01 
- D 1 - I - 0x016A20 05:AA10: C2        .byte $C2, $C3, $C4, $C5   ; 02 
- D 1 - I - 0x016A24 05:AA14: C6        .byte $C6, $C7, $C7, $C8   ; 03 
- D 1 - I - 0x016A28 05:AA18: BE        .byte $BE, $BE, $BE, $BE   ; 04 
- D 1 - I - 0x016A2C 05:AA1C: D6        .byte $D6, $D6, $D6, $D6   ; 05 



_off031_0x016A30_08:
- D 1 - I - 0x016A30 05:AA20: 04        .byte $04   ; size X
- D 1 - I - 0x016A31 05:AA21: 04        .byte $04   ; size Y
- D 1 - I - 0x016A32 05:AA22: BE        .byte $BE, $C0, $C1, $BF   ; 01 
- D 1 - I - 0x016A36 05:AA26: C2        .byte $C2, $C3, $C4, $C5   ; 02 
- D 1 - I - 0x016A3A 05:AA2A: C6        .byte $C6, $C7, $C7, $C8   ; 03 
- D 1 - I - 0x016A3E 05:AA2E: D6        .byte $D6, $D6, $D6, $D6   ; 04 



_off031_0x016A42_09:
- D 1 - I - 0x016A42 05:AA32: 04        .byte $04   ; size X
- D 1 - I - 0x016A43 05:AA33: 03        .byte $03   ; size Y
- D 1 - I - 0x016A44 05:AA34: BE        .byte $BE, $C0, $C1, $BF   ; 01 
- D 1 - I - 0x016A48 05:AA38: C2        .byte $C2, $C3, $C4, $C5   ; 02 
- D 1 - I - 0x016A4C 05:AA3C: C6        .byte $C6, $C7, $C7, $C8   ; 03 



_off031_0x016A50_0A:
- D 1 - I - 0x016A50 05:AA40: 04        .byte $04   ; size X
- D 1 - I - 0x016A51 05:AA41: 05        .byte $05   ; size Y
- D 1 - I - 0x016A52 05:AA42: 00        .byte $00, $00, $00, $00   ; 01 
- D 1 - I - 0x016A56 05:AA46: BE        .byte $BE, $BE, $BE, $BE   ; 02 
- D 1 - I - 0x016A5A 05:AA4A: BE        .byte $BE, $BF, $BE, $BF   ; 03 
- D 1 - I - 0x016A5E 05:AA4E: BE        .byte $BE, $BF, $BE, $BF   ; 04 
- D 1 - I - 0x016A62 05:AA52: BE        .byte $BE, $BF, $BE, $BF   ; 05 



_off031_0x016A66_0B:
- - - - - - 0x016A66 05:AA56: 04        .byte $04   ; size X
- - - - - - 0x016A67 05:AA57: 06        .byte $06   ; size Y
- - - - - - 0x016A68 05:AA58: BE        .byte $BE, $BF, $BE, $BF   ; 01 
- - - - - - 0x016A6C 05:AA5C: BE        .byte $BE, $BF, $BE, $BF   ; 02 
- - - - - - 0x016A70 05:AA60: BE        .byte $BE, $BF, $BE, $BF   ; 03 
- - - - - - 0x016A74 05:AA64: BE        .byte $BE, $BF, $BE, $BF   ; 04 
- - - - - - 0x016A78 05:AA68: BE        .byte $BE, $BF, $BE, $BF   ; 05 
- - - - - - 0x016A7C 05:AA6C: D6        .byte $D6, $D6, $D6, $D6   ; 06 



_off031_0x016A80_0C:
- - - - - - 0x016A80 05:AA70: 04        .byte $04   ; size X
- - - - - - 0x016A81 05:AA71: 05        .byte $05   ; size Y
- - - - - - 0x016A82 05:AA72: C2        .byte $C2, $C3, $C4, $C5   ; 01 
- - - - - - 0x016A86 05:AA76: C6        .byte $C6, $C7, $C7, $C8   ; 02 
- - - - - - 0x016A8A 05:AA7A: 00        .byte $00, $00, $00, $00   ; 03 
- - - - - - 0x016A8E 05:AA7E: BE        .byte $BE, $BF, $BE, $BF   ; 04 
- - - - - - 0x016A92 05:AA82: BE        .byte $BE, $BF, $BE, $BF   ; 05 



_off031_0x016A96_0D:
- D 1 - I - 0x016A96 05:AA86: 04        .byte $04   ; size X
- D 1 - I - 0x016A97 05:AA87: 05        .byte $05   ; size Y
- D 1 - I - 0x016A98 05:AA88: BE        .byte $BE, $C0, $C1, $BF   ; 01 
- D 1 - I - 0x016A9C 05:AA8C: C2        .byte $C2, $C3, $C4, $C5   ; 02 
- D 1 - I - 0x016AA0 05:AA90: C6        .byte $C6, $C7, $C7, $C8   ; 03 
- D 1 - I - 0x016AA4 05:AA94: BE        .byte $BE, $BE, $BE, $BE   ; 04 
- D 1 - I - 0x016AA8 05:AA98: D5        .byte $D5, $D6, $D6, $D6   ; 05 



_off031_0x016AAC_0E:
- D 1 - I - 0x016AAC 05:AA9C: 04        .byte $04   ; size X
- D 1 - I - 0x016AAD 05:AA9D: 04        .byte $04   ; size Y
- D 1 - I - 0x016AAE 05:AA9E: BE        .byte $BE, $C0, $C1, $BF   ; 01 
- D 1 - I - 0x016AB2 05:AAA2: C2        .byte $C2, $C3, $C4, $C5   ; 02 
- D 1 - I - 0x016AB6 05:AAA6: C6        .byte $C6, $C7, $C7, $C8   ; 03 
- D 1 - I - 0x016ABA 05:AAAA: D5        .byte $D5, $D6, $D6, $D6   ; 04 



_off031_0x016ABE_0F:
- D 1 - I - 0x016ABE 05:AAAE: 04        .byte $04   ; size X
- D 1 - I - 0x016ABF 05:AAAF: 06        .byte $06   ; size Y
- D 1 - I - 0x016AC0 05:AAB0: BE        .byte $BE, $BF, $BE, $BF   ; 01 
- D 1 - I - 0x016AC4 05:AAB4: BE        .byte $BE, $BF, $BE, $BF   ; 02 
- D 1 - I - 0x016AC8 05:AAB8: BE        .byte $BE, $BF, $BE, $BF   ; 03 
- D 1 - I - 0x016ACC 05:AABC: BE        .byte $BE, $BF, $BE, $BF   ; 04 
- D 1 - I - 0x016AD0 05:AAC0: BE        .byte $BE, $BF, $BE, $BF   ; 05 
- D 1 - I - 0x016AD4 05:AAC4: D5        .byte $D5, $D6, $D6, $D6   ; 06 



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



.out .sprintf("Free bytes in bank 02: 0x%04X [%d]", ($C000 - *), ($C000 - *))



