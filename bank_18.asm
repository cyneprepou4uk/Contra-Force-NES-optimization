.segment "BANK_18"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $8000  ; for listing file
; 0x030010-0x03800F



.export ofs_006_0x009793_24



ofs_006_0x009793_24:
; con_F3D6_24
C - - J - - 0x009793 02:9783: BD 0A 07  LDA ram_070A_obj,X
C - - - - - 0x009796 02:9786: E0 0A     CPX #$0A
C - - - - - 0x009798 02:9788: 90 16     BCC bra_97A0
C - - - - - 0x00979A 02:978A: BD 1A 06  LDA ram_obj_animation_lo,X
C - - - - - 0x00979D 02:978D: D0 11     BNE bra_97A0
C - - - - - 0x00979F 02:978F: BD F4 06  LDA ram_06F4_obj,X
C - - - - - 0x0097A2 02:9792: C9 FF     CMP #$FF
C - - - - - 0x0097A4 02:9794: F0 05     BEQ bra_979B
C - - - - - 0x0097A6 02:9796: 20 CB 9A  JSR sub_9ACB
C - - - - - 0x0097A9 02:9799: B0 13     BCS bra_97AE_RTS
bra_979B:
C - - - - - 0x0097AB 02:979B: A9 00     LDA #$00
C - - - - - 0x0097AD 02:979D: 9D F4 06  STA ram_06F4_obj,X
bra_97A0:
C - - - - - 0x0097B0 02:97A0: BD F4 06  LDA ram_06F4_obj,X
C - - - - - 0x0097B3 02:97A3: C9 FE     CMP #$FE
C - - - - - 0x0097B5 02:97A5: F0 07     BEQ bra_97AE_RTS
C - - - - - 0x0097B7 02:97A7: 29 1F     AND #$1F
C - - - - - 0x0097B9 02:97A9: F0 04     BEQ bra_97AF
C - - - - - 0x0097BB 02:97AB: DE F4 06  DEC ram_06F4_obj,X
bra_97AE_RTS:
C - - - - - 0x0097BE 02:97AE: 60        RTS
bra_97AF:
C - - - - - 0x0097BF 02:97AF: BD 34 06  LDA ram_obj_animation_hi,X
C - - - - - 0x0097C2 02:97B2: 4A        LSR
C - - - - - 0x0097C3 02:97B3: 29 1E     AND #$1E
C - - - - - 0x0097C5 02:97B5: A8        TAY
C - - - - - 0x0097C6 02:97B6: B9 7A 98  LDA tbl_987A,Y
C - - - - - 0x0097C9 02:97B9: 85 10     STA ram_0010_t01_data
C - - - - - 0x0097CB 02:97BB: B9 7B 98  LDA tbl_987A + $01,Y
C - - - - - 0x0097CE 02:97BE: 85 11     STA ram_0010_t01_data + $01
C - - - - - 0x0097D0 02:97C0: BD 0A 07  LDA ram_070A_obj,X
C - - - - - 0x0097D3 02:97C3: 0A        ASL
C - - - - - 0x0097D4 02:97C4: A8        TAY
C - - - - - 0x0097D5 02:97C5: 88        DEY
C - - - - - 0x0097D6 02:97C6: 88        DEY
C - - - - - 0x0097D7 02:97C7: B1 10     LDA (ram_0010_t01_data),Y
C - - - - - 0x0097D9 02:97C9: 85 12     STA ram_0012_t01_data
C - - - - - 0x0097DB 02:97CB: C8        INY
C - - - - - 0x0097DC 02:97CC: B1 10     LDA (ram_0010_t01_data),Y
C - - - - - 0x0097DE 02:97CE: 85 13     STA ram_0012_t01_data + $01
C - - - - - 0x0097E0 02:97D0: A0 00     LDY #$00
C - - - - - 0x0097E2 02:97D2: B1 12     LDA (ram_0012_t01_data),Y
C - - - - - 0x0097E4 02:97D4: C9 FC     CMP #$FC
C - - - - - 0x0097E6 02:97D6: F0 2E     BEQ bra_9806_FC
C - - - - - 0x0097E8 02:97D8: C9 FD     CMP #$FD
C - - - - - 0x0097EA 02:97DA: D0 4E     BNE bra_982A
; FD
C - - - - - 0x0097EC 02:97DC: C8        INY ; 01
C - - - - - 0x0097ED 02:97DD: B1 12     LDA (ram_0012_t01_data),Y
C - - - - - 0x0097EF 02:97DF: 1D F4 06  ORA ram_06F4_obj,X
C - - - - - 0x0097F2 02:97E2: 9D F4 06  STA ram_06F4_obj,X
C - - - - - 0x0097F5 02:97E5: 20 73 98  ROL
                                        ROL
                                        ROL
                                        ROL
                                        AND #$07
C - - - - - 0x0097F8 02:97E8: A8        TAY
C - - - - - 0x0097F9 02:97E9: C8        INY
C - - - - - 0x0097FA 02:97EA: C8        INY
C - - - - - 0x0097FB 02:97EB: B1 12     LDA (ram_0012_t01_data),Y
C - - - - - 0x0097FD 02:97ED: C9 FE     CMP #$FE
C - - - - - 0x0097FF 02:97EF: F0 47     BEQ bra_9838
C - - - - - 0x009801 02:97F1: C9 FF     CMP #$FF
C - - - - - 0x009803 02:97F3: D0 0C     BNE bra_9801
C - - - - - 0x009805 02:97F5: A0 02     LDY #$02
C - - - - - 0x009807 02:97F7: BD F4 06  LDA ram_06F4_obj,X
C - - - - - 0x00980A 02:97FA: 29 1F     AND #$1F
C - - - - - 0x00980C 02:97FC: 9D F4 06  STA ram_06F4_obj,X
C - - - - - 0x00980F 02:97FF: B1 12     LDA (ram_0012_t01_data),Y
bra_9801:
C - - - - - 0x009811 02:9801: 9D 1A 06  STA ram_obj_animation_lo,X
C - - - - - 0x009814 02:9804: D0 52     BNE bra_9858
bra_9806_FC:
C - - - - - 0x009816 02:9806: C8        INY
C - - - - - 0x009817 02:9807: B1 12     LDA (ram_0012_t01_data),Y
C - - - - - 0x009819 02:9809: 1D F4 06  ORA ram_06F4_obj,X
C - - - - - 0x00981C 02:980C: 9D F4 06  STA ram_06F4_obj,X
C - - - - - 0x00981F 02:980F: 20 73 98  ROL
                                        ROL
                                        ROL
                                        ROL
                                        AND #$07
C - - - - - 0x009822 02:9812: C8        INY
C - - - - - 0x009823 02:9813: D1 12     CMP (ram_0012_t01_data),Y
C - - - - - 0x009825 02:9815: D0 0A     BNE bra_9821
C - - - - - 0x009827 02:9817: BD F4 06  LDA ram_06F4_obj,X
C - - - - - 0x00982A 02:981A: 29 1F     AND #$1F
C - - - - - 0x00982C 02:981C: 9D F4 06  STA ram_06F4_obj,X
C - - - - - 0x00982F 02:981F: A9 00     LDA #$00
bra_9821:
C - - - - - 0x009831 02:9821: C8        INY
C - - - - - 0x009832 02:9822: 18        CLC
C - - - - - 0x009833 02:9823: 71 12     ADC (ram_0012_t01_data),Y
C - - - - - 0x009835 02:9825: 9D 1A 06  STA ram_obj_animation_lo,X
C - - - - - 0x009838 02:9828: D0 2E     BNE bra_9858
bra_982A:
C - - - - - 0x00983A 02:982A: BD F4 06  LDA ram_06F4_obj,X
C - - - - - 0x00983D 02:982D: 20 73 98  ROL
                                        ROL
                                        ROL
                                        ROL
                                        AND #$07
C - - - - - 0x009840 02:9830: 0A        ASL
C - - - - - 0x009841 02:9831: A8        TAY
C - - - - - 0x009842 02:9832: B1 12     LDA (ram_0012_t01_data),Y
C - - - - - 0x009844 02:9834: C9 FE     CMP #$FE
C - - - - - 0x009846 02:9836: D0 04     BNE bra_983C
; FE
bra_9838:
; in
    ; A = 
; bzk optimize
C D 0 - - - 0x009848 02:9838: 9D F4 06  STA ram_06F4_obj,X
C - - - - - 0x00984B 02:983B: 60        RTS
bra_983C:
C - - - - - 0x00984C 02:983C: C9 FF     CMP #$FF
C - - - - - 0x00984E 02:983E: D0 0C     BNE bra_984C
; FF
C - - - - - 0x009850 02:9840: A0 00     LDY #$00
C - - - - - 0x009852 02:9842: BD F4 06  LDA ram_06F4_obj,X
C - - - - - 0x009855 02:9845: 29 1F     AND #$1F
C - - - - - 0x009857 02:9847: 9D F4 06  STA ram_06F4_obj,X
C - - - - - 0x00985A 02:984A: B1 12     LDA (ram_0012_t01_data),Y
bra_984C:
C - - - - - 0x00985C 02:984C: 9D 1A 06  STA ram_obj_animation_lo,X
C - - - - - 0x00985F 02:984F: C8        INY
C - - - - - 0x009860 02:9850: B1 12     LDA (ram_0012_t01_data),Y
C - - - - - 0x009862 02:9852: 1D F4 06  ORA ram_06F4_obj,X
C - - - - - 0x009865 02:9855: 9D F4 06  STA ram_06F4_obj,X
bra_9858:
C - - - - - 0x009868 02:9858: BD F4 06  LDA ram_06F4_obj,X
C - - - - - 0x00986B 02:985B: 18        CLC
C - - - - - 0x00986C 02:985C: 69 20     ADC #$20
C - - - - - 0x00986E 02:985E: 4C 38 98  STA ram_06F4_obj,X
                                        RTS



sub_9ACB:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x009ADB 02:9ACB: BD F4 06  LDA ram_06F4_obj,X
C - - - - - 0x009ADE 02:9ACE: C9 16     CMP #$16
C - - - - - 0x009AE0 02:9AD0: 90 13     BCC bra_9AE5
bra_9AD2_exit:
C - - - - - 0x009AE2 02:9AD2: 4C 84 9B  JMP loc_9B84
bra_9AD5:
C - - - - - 0x009AE5 02:9AD5: BD 1A 06  LDA ram_obj_animation_lo,X
C - - - - - 0x009AE8 02:9AD8: D0 06     BNE bra_9AE0
C - - - - - 0x009AEA 02:9ADA: BD 96 07  LDA ram_0796_unk,X
C - - - - - 0x009AED 02:9ADD: 4C F1 9A  JMP loc_9AF1
bra_9AE0:
C - - - - - 0x009AF0 02:9AE0: 9D 96 07  STA ram_0796_unk,X
C - - - - - 0x009AF3 02:9AE3: D0 0C     BNE bra_9AF1
bra_9AE5:
C - - - - - 0x009AF5 02:9AE5: AA        TAX
C - - - - - 0x009AF6 02:9AE6: E0 0A     CPX #$0A
C - - - - - 0x009AF8 02:9AE8: B0 E8     BCS bra_9AD2_exit
C - - - - - 0x009AFA 02:9AEA: E0 02     CPX #$02
C - - - - - 0x009AFC 02:9AEC: 90 E7     BCC bra_9AD5
C - - - - - 0x009AFE 02:9AEE: BD 1A 06  LDA ram_obj_animation_lo,X
bra_9AF1:
loc_9AF1:
C D 0 - - - 0x009B01 02:9AF1: F0 DF     BEQ bra_9AD2_exit
; bzk optimize, useless STA
C - - - - - 0x009B03 02:9AF3: 85 1E     STA ram_001E_t15_useless
C - - - - - 0x009B05 02:9AF5: BD 34 06  LDA ram_obj_animation_hi,X
; / 04
C - - - - - 0x009B08 02:9AF8: 4A        LSR
C - - - - - 0x009B09 02:9AF9: 4A        LSR
C - - - - - 0x009B0A 02:9AFA: 29 0F     AND #$0F
C - - - - - 0x009B0C 02:9AFC: C9 08     CMP #$08
C - - - - - 0x009B0E 02:9AFE: F0 06     BEQ bra_9B06
C - - - - - 0x009B10 02:9B00: C9 05     CMP #$05
C - - - - - 0x009B12 02:9B02: 90 13     BCC bra_9B17
C - - - - - 0x009B14 02:9B04: B0 CC     BCS bra_9AD2_exit    ; jmp
bra_9B06:
C - - - - - 0x009B16 02:9B06: BD 0A 07  LDA ram_070A_obj,X
C - - - - - 0x009B19 02:9B09: 38        SEC
C - - - - - 0x009B1A 02:9B0A: E9 04     SBC #$04
C - - - - - 0x009B1C 02:9B0C: C9 08     CMP #$08
C - - - - - 0x009B1E 02:9B0E: B0 C2     BCS bra_9AD2_exit
; 00-07
C - - - - - 0x009B20 02:9B10: A8        TAY
C - - - - - 0x009B21 02:9B11: B9 EF 9C  LDA tbl_9CEF,Y
C - - - - - 0x009B24 02:9B14: 4C 29 9B  JMP loc_9B29
bra_9B17:
C - - - - - 0x009B27 02:9B17: 0A        ASL
C - - - - - 0x009B28 02:9B18: A8        TAY
C - - - - - 0x009B29 02:9B19: B9 8F 9B  LDA tbl_9B8F,Y
C - - - - - 0x009B2C 02:9B1C: 85 00     STA ram_0000_t09_data
C - - - - - 0x009B2E 02:9B1E: B9 90 9B  LDA tbl_9B8F + $01,Y
C - - - - - 0x009B31 02:9B21: 85 01     STA ram_0000_t09_data + $01
C - - - - - 0x009B33 02:9B23: BC 0A 07  LDY ram_070A_obj,X
C - - - - - 0x009B36 02:9B26: 88        DEY
C - - - - - 0x009B37 02:9B27: B1 00     LDA (ram_0000_t09_data),Y
loc_9B29:
; bzk optimize, useless STA
C D 0 - - - 0x009B39 02:9B29: 85 1F     STA ram_001F_t17_useless
C - - - - - 0x009B3B 02:9B2B: F0 A5     BEQ bra_9AD2_exit
C - - - - - 0x009B3D 02:9B2D: 0A        ASL
C - - - - - 0x009B3E 02:9B2E: A8        TAY
C - - - - - 0x009B3F 02:9B2F: B9 F7 9C  LDA tbl_9CF7,Y
C - - - - - 0x009B42 02:9B32: 85 02     STA ram_0002_t29_pos_X
C - - - - - 0x009B44 02:9B34: B9 F8 9C  LDA tbl_9CF7 + $01,Y
C - - - - - 0x009B47 02:9B37: 85 03     STA ram_0003_t20_pos_Y
C - - - - - 0x009B49 02:9B39: 86 1E     STX ram_001E_t04_object_index
C - - - - - 0x009B4B 02:9B3B: A6 53     LDX ram_0053
C - - - - - 0x009B4D 02:9B3D: 20 41 91  LDA ram_0682_obj,X
                                        AND #$0F
C - - - - - 0x009B50 02:9B40: C9 03     CMP #$03
C - - - - - 0x009B52 02:9B42: D0 17     BNE bra_9B5B
C - - - - - 0x009B54 02:9B44: 20 B1 93  JSR sub_0x0093C1_06B2x_LSRx4_TAY
C - - - - - 0x009B57 02:9B47: 98        TYA
C - - - - - 0x009B58 02:9B48: 29 0E     AND #$0E
C - - - - - 0x009B5A 02:9B4A: A8        TAY
C - - - - - 0x009B5B 02:9B4B: A5 02     LDA ram_0002_t29_pos_X
C - - - - - 0x009B5D 02:9B4D: 18        CLC
C - - - - - 0x009B5E 02:9B4E: 79 F5 9D  ADC tbl_9DF5,Y
C - - - - - 0x009B61 02:9B51: 85 02     STA ram_0002_t29_pos_X
C - - - - - 0x009B63 02:9B53: A5 03     LDA ram_0003_t20_pos_Y
C - - - - - 0x009B65 02:9B55: 18        CLC
C - - - - - 0x009B66 02:9B56: 79 F6 9D  ADC tbl_9DF5 + $01,Y
C - - - - - 0x009B69 02:9B59: 85 03     STA ram_0003_t20_pos_Y
bra_9B5B:
C - - - - - 0x009B6B 02:9B5B: A6 1E     LDX ram_001E_t04_object_index
C - - - - - 0x009B6D 02:9B5D: A4 53     LDY ram_0053
C - - - - - 0x009B6F 02:9B5F: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x009B72 02:9B62: D0 07     BNE bra_9B6B
- - - - - - 0x009B74 02:9B64: A5 02     LDA ram_0002_t29_pos_X
- - - - - - 0x009B76 02:9B66: 30 20     BMI bra_9B88
- - - - - - 0x009B78 02:9B68: BD 4E 06  LDA ram_obj_pos_X,X
bra_9B6B:
C - - - - - 0x009B7B 02:9B6B: 18        CLC
C - - - - - 0x009B7C 02:9B6C: 65 02     ADC ram_0002_t29_pos_X
C - - - - - 0x009B7E 02:9B6E: 99 4E 06  STA ram_obj_pos_X,Y
C - - - - - 0x009B81 02:9B71: 6A        ROR
C - - - - - 0x009B82 02:9B72: 45 02     EOR ram_0002_t29_pos_X
C - - - - - 0x009B84 02:9B74: 2A        ROL
C - - - - - 0x009B85 02:9B75: B0 11     BCS bra_9B88
C - - - - - 0x009B87 02:9B77: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x009B8A 02:9B7A: 18        CLC
C - - - - - 0x009B8B 02:9B7B: 65 03     ADC ram_0003_t20_pos_Y
C - - - - - 0x009B8D 02:9B7D: 99 68 06  STA ram_obj_pos_Y,Y
C - - - - - 0x009B90 02:9B80: 6A        ROR
C - - - - - 0x009B91 02:9B81: 45 03     EOR ram_0003_t20_pos_Y
C - - - - - 0x009B93 02:9B83: 2A        ROL
loc_9B84:
C D 0 - - - 0x009B94 02:9B84: A6 53     LDX ram_0053
C - - - - - 0x009B96 02:9B86: 18        CLC
C - - - - - 0x009B97 02:9B87: 60        RTS
bra_9B88:
C - - - - - 0x009B98 02:9B88: A6 53     LDX ram_0053
C - - - - - 0x009B9A 02:9B8A: 20 52 9A  JSR sub_0x009A62
C - - - - - 0x009B9D 02:9B8D: 38        SEC
C - - - - - 0x009B9E 02:9B8E: 60        RTS



tbl_9CEF:
- D 0 - - - 0x009CFF 02:9CEF: 16        .byte $16   ; 04 
- D 0 - - - 0x009D00 02:9CF0: 79        .byte $79   ; 05 
- - - - - - 0x009D01 02:9CF1: 00        .byte $00   ; 06 
- D 0 - - - 0x009D02 02:9CF2: 78        .byte $78   ; 07 
- D 0 - - - 0x009D03 02:9CF3: 60        .byte $60   ; 08 
- D 0 - - - 0x009D04 02:9CF4: 7C        .byte $7C   ; 09 
- D 0 - - - 0x009D05 02:9CF5: 7B        .byte $7B   ; 0A 
- - - - - - 0x009D06 02:9CF6: 7A        .byte $7A   ; 0B 



tbl_9CF7:
;                                              +---------- X
;                                              |    +----- Y
;                                              |    |
- - - - - - 0x009D07 02:9CF7: 00        .byte $00, $00   ; 00 never used 0x009B3B
- D 0 - - - 0x009D09 02:9CF9: 15        .byte $15, $F8   ; 01 
- D 0 - - - 0x009D0B 02:9CFB: EB        .byte $EB, $F8   ; 02 
- D 0 - - - 0x009D0D 02:9CFD: 0B        .byte $0B, $ED   ; 03 
- - - - - - 0x009D0F 02:9CFF: F5        .byte $F5, $ED   ; 04 
- D 0 - - - 0x009D11 02:9D01: 02        .byte $02, $EB   ; 05 
- D 0 - - - 0x009D13 02:9D03: FE        .byte $FE, $EB   ; 06 
- D 0 - - - 0x009D15 02:9D05: 11        .byte $11, $F8   ; 07 
- D 0 - - - 0x009D17 02:9D07: F0        .byte $F0, $F8   ; 08 
- D 0 - - - 0x009D19 02:9D09: 11        .byte $11, $FD   ; 09 
- D 0 - - - 0x009D1B 02:9D0B: F0        .byte $F0, $FD   ; 0A 
- D 0 - - - 0x009D1D 02:9D0D: 15        .byte $15, $F4   ; 0B 
- D 0 - - - 0x009D1F 02:9D0F: EB        .byte $EB, $F4   ; 0C 
- D 0 - - - 0x009D21 02:9D11: 10        .byte $10, $E9   ; 0D 
- D 0 - - - 0x009D23 02:9D13: F0        .byte $F0, $E9   ; 0E 
- D 0 - - - 0x009D25 02:9D15: 01        .byte $01, $DE   ; 0F 
- D 0 - - - 0x009D27 02:9D17: 00        .byte $00, $DE   ; 10 
- D 0 - - - 0x009D29 02:9D19: 15        .byte $15, $F4   ; 11 
- D 0 - - - 0x009D2B 02:9D1B: EB        .byte $EB, $F4   ; 12 
- D 0 - - - 0x009D2D 02:9D1D: 15        .byte $15, $F9   ; 13 
- D 0 - - - 0x009D2F 02:9D1F: EB        .byte $EB, $F9   ; 14 
- D 0 - - - 0x009D31 02:9D21: 10        .byte $10, $F2   ; 15 
- D 0 - - - 0x009D33 02:9D23: F0        .byte $F0, $F2   ; 16 
- D 0 - - - 0x009D35 02:9D25: 0A        .byte $0A, $E5   ; 17 
- D 0 - - - 0x009D37 02:9D27: F6        .byte $F6, $E5   ; 18 
- D 0 - - - 0x009D39 02:9D29: FE        .byte $FE, $E0   ; 19 
- D 0 - - - 0x009D3B 02:9D2B: 01        .byte $01, $E0   ; 1A 
- D 0 - - - 0x009D3D 02:9D2D: 0E        .byte $0E, $F1   ; 1B 
- D 0 - - - 0x009D3F 02:9D2F: F2        .byte $F2, $F1   ; 1C 
- D 0 - - - 0x009D41 02:9D31: 10        .byte $10, $F4   ; 1D 
- D 0 - - - 0x009D43 02:9D33: F0        .byte $F0, $F4   ; 1E 
- - - - - - 0x009D45 02:9D35: 0C        .byte $0C, $F0   ; 1F 
- - - - - - 0x009D47 02:9D37: F4        .byte $F4, $F0   ; 20 
- D 0 - - - 0x009D49 02:9D39: 01        .byte $01, $E8   ; 21 
- D 0 - - - 0x009D4B 02:9D3B: 0C        .byte $0C, $F8   ; 22 
- - - - - - 0x009D4D 02:9D3D: F4        .byte $F4, $F8   ; 23 
- D 0 - - - 0x009D4F 02:9D3F: 10        .byte $10, $00   ; 24 
- D 0 - - - 0x009D51 02:9D41: F0        .byte $F0, $00   ; 25 
- - - - - - 0x009D53 02:9D43: 10        .byte $10, $08   ; 26 
- D 0 - - - 0x009D55 02:9D45: F0        .byte $F0, $08   ; 27 
- D 0 - - - 0x009D57 02:9D47: 08        .byte $08, $08   ; 28 
- D 0 - - - 0x009D59 02:9D49: F8        .byte $F8, $08   ; 29 
- - - - - - 0x009D5B 02:9D4B: FE        .byte $FE, $F7   ; 2A 
- D 0 - - - 0x009D5D 02:9D4D: F6        .byte $F6, $EE   ; 2B 
- - - - - - 0x009D5F 02:9D4F: 0D        .byte $0D, $EB   ; 2C 
- D 0 - - - 0x009D61 02:9D51: ED        .byte $ED, $F3   ; 2D 
- - - - - - 0x009D63 02:9D53: 12        .byte $12, $F3   ; 2E 
- D 0 - - - 0x009D65 02:9D55: F8        .byte $F8, $01   ; 2F 
- - - - - - 0x009D67 02:9D57: 08        .byte $08, $02   ; 30 
- - - - - - 0x009D69 02:9D59: 08        .byte $08, $00   ; 31 
- - - - - - 0x009D6B 02:9D5B: 01        .byte $01, $F0   ; 32 
- D 0 - - - 0x009D6D 02:9D5D: 05        .byte $05, $EC   ; 33 
- D 0 - - - 0x009D6F 02:9D5F: 0A        .byte $0A, $EE   ; 34 
- D 0 - - - 0x009D71 02:9D61: 0E        .byte $0E, $F9   ; 35 
- D 0 - - - 0x009D73 02:9D63: 04        .byte $04, $FE   ; 36 
- - - - - - 0x009D75 02:9D65: 00        .byte $00, $00   ; 37 
- - - - - - 0x009D77 02:9D67: F3        .byte $F3, $F9   ; 38 
- D 0 - - - 0x009D79 02:9D69: F6        .byte $F6, $ED   ; 39 
- D 0 - - - 0x009D7B 02:9D6B: 04        .byte $04, $EC   ; 3A 
- D 0 - - - 0x009D7D 02:9D6D: 0A        .byte $0A, $FE   ; 3B 
- D 0 - - - 0x009D7F 02:9D6F: FE        .byte $FE, $01   ; 3C 
- D 0 - - - 0x009D81 02:9D71: F8        .byte $F8, $00   ; 3D 
- D 0 - - - 0x009D83 02:9D73: 05        .byte $05, $F0   ; 3E 
- D 0 - - - 0x009D85 02:9D75: F6        .byte $F6, $EB   ; 3F 
- D 0 - - - 0x009D87 02:9D77: 0C        .byte $0C, $EB   ; 40 
- D 0 - - - 0x009D89 02:9D79: E8        .byte $E8, $F6   ; 41 
- D 0 - - - 0x009D8B 02:9D7B: 18        .byte $18, $F6   ; 42 
- - - - - - 0x009D8D 02:9D7D: F8        .byte $F8, $F9   ; 43 
- - - - - - 0x009D8F 02:9D7F: 0A        .byte $0A, $FA   ; 44 
- D 0 - - - 0x009D91 02:9D81: FE        .byte $FE, $FD   ; 45 
- D 0 - - - 0x009D93 02:9D83: 04        .byte $04, $EF   ; 46 
- D 0 - - - 0x009D95 02:9D85: E8        .byte $E8, $F7   ; 47 
- D 0 - - - 0x009D97 02:9D87: 18        .byte $18, $F7   ; 48 
- D 0 - - - 0x009D99 02:9D89: F7        .byte $F7, $00   ; 49 
- D 0 - - - 0x009D9B 02:9D8B: 09        .byte $09, $00   ; 4A 
- D 0 - - - 0x009D9D 02:9D8D: 00        .byte $00, $FD   ; 4B 
- D 0 - - - 0x009D9F 02:9D8F: F3        .byte $F3, $EC   ; 4C 
- D 0 - - - 0x009DA1 02:9D91: 0E        .byte $0E, $EC   ; 4D 
- D 0 - - - 0x009DA3 02:9D93: E9        .byte $E9, $F4   ; 4E 
- - - - - - 0x009DA5 02:9D95: F8        .byte $F8, $FC   ; 4F 
- - - - - - 0x009DA7 02:9D97: 0A        .byte $0A, $FB   ; 50 
- D 0 - - - 0x009DA9 02:9D99: 06        .byte $06, $EA   ; 51 
- D 0 - - - 0x009DAB 02:9D9B: E8        .byte $E8, $F5   ; 52 
- D 0 - - - 0x009DAD 02:9D9D: 19        .byte $19, $F5   ; 53 
- - - - - - 0x009DAF 02:9D9F: F7        .byte $F7, $01   ; 54 
- - - - - - 0x009DB1 02:9DA1: 09        .byte $09, $01   ; 55 
- D 0 - - - 0x009DB3 02:9DA3: 02        .byte $02, $00   ; 56 
- - - - - - 0x009DB5 02:9DA5: 02        .byte $02, $F0   ; 57 
- - - - - - 0x009DB7 02:9DA7: F8        .byte $F8, $F0   ; 58 
- - - - - - 0x009DB9 02:9DA9: 08        .byte $08, $F0   ; 59 
- D 0 - - - 0x009DBB 02:9DAB: 04        .byte $04, $10   ; 5A 
- - - - - - 0x009DBD 02:9DAD: F4        .byte $F4, $00   ; 5B 
- D 0 - - - 0x009DBF 02:9DAF: 0D        .byte $0D, $00   ; 5C 
- D 0 - - - 0x009DC1 02:9DB1: F6        .byte $F6, $06   ; 5D 
- D 0 - - - 0x009DC3 02:9DB3: 0E        .byte $0E, $F6   ; 5E 
- D 0 - - - 0x009DC5 02:9DB5: F2        .byte $F2, $F6   ; 5F 
- D 0 - - - 0x009DC7 02:9DB7: 0C        .byte $0C, $F2   ; 60 
- - - - - - 0x009DC9 02:9DB9: EA        .byte $EA, $F3   ; 61 
- D 0 - - - 0x009DCB 02:9DBB: 08        .byte $08, $F8   ; 62 
- D 0 - - - 0x009DCD 02:9DBD: EC        .byte $EC, $F8   ; 63 
- D 0 - - - 0x009DCF 02:9DBF: 14        .byte $14, $F3   ; 64 
- D 0 - - - 0x009DD1 02:9DC1: 14        .byte $14, $F8   ; 65 
- D 0 - - - 0x009DD3 02:9DC3: F6        .byte $F6, $F8   ; 66 
- D 0 - - - 0x009DD5 02:9DC5: 12        .byte $12, $00   ; 67 
- - - - - - 0x009DD7 02:9DC7: EE        .byte $EE, $F6   ; 68 
- D 0 - - - 0x009DD9 02:9DC9: F6        .byte $F6, $F0   ; 69 
- D 0 - - - 0x009DDB 02:9DCB: 04        .byte $04, $EE   ; 6A 
- D 0 - - - 0x009DDD 02:9DCD: 10        .byte $10, $F8   ; 6B 
- D 0 - - - 0x009DDF 02:9DCF: 10        .byte $10, $F0   ; 6C 
- D 0 - - - 0x009DE1 02:9DD1: 06        .byte $06, $FB   ; 6D 
- D 0 - - - 0x009DE3 02:9DD3: 02        .byte $02, $FC   ; 6E 
- D 0 - - - 0x009DE5 02:9DD5: F7        .byte $F7, $FB   ; 6F 
- - - - - - 0x009DE7 02:9DD7: F8        .byte $F8, $F8   ; 70 
- - - - - - 0x009DE9 02:9DD9: 00        .byte $00, $EC   ; 71 
- - - - - - 0x009DEB 02:9DDB: 18        .byte $18, $F8   ; 72 
- - - - - - 0x009DED 02:9DDD: 0C        .byte $0C, $EC   ; 73 
- - - - - - 0x009DEF 02:9DDF: F6        .byte $F6, $EC   ; 74 
- D 0 - - - 0x009DF1 02:9DE1: F2        .byte $F2, $00   ; 75 
- D 0 - - - 0x009DF3 02:9DE3: F4        .byte $F4, $F8   ; 76 
- - - - - - 0x009DF5 02:9DE5: 0C        .byte $0C, $F8   ; 77 
- D 0 - - - 0x009DF7 02:9DE7: 0C        .byte $0C, $FE   ; 78 
- D 0 - - - 0x009DF9 02:9DE9: F5        .byte $F5, $FC   ; 79 
- - - - - - 0x009DFB 02:9DEB: F8        .byte $F8, $E8   ; 7A 
- D 0 - - - 0x009DFD 02:9DED: 00        .byte $00, $F0   ; 7B 
- D 0 - - - 0x009DFF 02:9DEF: 08        .byte $08, $E8   ; 7C 
- D 0 - - - 0x009E01 02:9DF1: 00        .byte $00, $FC   ; 7D 
- D 0 - - - 0x009E03 02:9DF3: 08        .byte $08, $FE   ; 7E 



tbl_9DF5:
- D 0 - - - 0x009E05 02:9DF5: 10        .byte $10, $04   ; 00 
- D 0 - - - 0x009E07 02:9DF7: 0C        .byte $0C, $14   ; 02 
- D 0 - - - 0x009E09 02:9DF9: 00        .byte $00, $18   ; 04 
- - - - - - 0x009E0B 02:9DFB: F4        .byte $F4, $14   ; 06 
- D 0 - - - 0x009E0D 02:9DFD: F0        .byte $F0, $04   ; 08 
- - - - - - 0x009E0F 02:9DFF: F2        .byte $F2, $F6   ; 0A 
- D 0 - - - 0x009E11 02:9E01: 00        .byte $00, $E8   ; 0C 
- D 0 - - - 0x009E13 02:9E03: 0A        .byte $0A, $FA   ; 0E 



tbl_9B8F:
- D 0 - - - 0x009B9F 02:9B8F: 99 9B     .word _off027_9B99_00
- D 0 - - - 0x009BA1 02:9B91: FD 9B     .word _off027_9BFD_01
- D 0 - - - 0x009BA3 02:9B93: 2A 9C     .word _off027_9C2A_02
- D 0 - - - 0x009BA5 02:9B95: 71 9C     .word _off027_9C71_03
- D 0 - - - 0x009BA7 02:9B97: AD 9C     .word _off027_9CAD_04



_off027_9B99_00:
- D 0 - I - 0x009BA9 02:9B99: 01        .byte $01   ; 
- D 0 - I - 0x009BAA 02:9B9A: 02        .byte $02   ; 
- D 0 - I - 0x009BAB 02:9B9B: 03        .byte $03   ; 
- - - - - - 0x009BAC 02:9B9C: 04        .byte $04   ; 
- - - - - - 0x009BAD 02:9B9D: 00        .byte $00   ; 
- - - - - - 0x009BAE 02:9B9E: 00        .byte $00   ; 
- D 0 - I - 0x009BAF 02:9B9F: 05        .byte $05   ; 
- - - - - - 0x009BB0 02:9BA0: 05        .byte $05   ; 
- D 0 - I - 0x009BB1 02:9BA1: 06        .byte $06   ; 
- - - - - - 0x009BB2 02:9BA2: 06        .byte $06   ; 
- D 0 - I - 0x009BB3 02:9BA3: 07        .byte $07   ; 
- D 0 - I - 0x009BB4 02:9BA4: 08        .byte $08   ; 
- - - - - - 0x009BB5 02:9BA5: 07        .byte $07   ; 
- - - - - - 0x009BB6 02:9BA6: 08        .byte $08   ; 
- D 0 - I - 0x009BB7 02:9BA7: 09        .byte $09   ; 
- D 0 - I - 0x009BB8 02:9BA8: 0A        .byte $0A   ; 
- - - - - - 0x009BB9 02:9BA9: 09        .byte $09   ; 
- - - - - - 0x009BBA 02:9BAA: 0A        .byte $0A   ; 
- - - - - - 0x009BBB 02:9BAB: 00        .byte $00   ; 
- - - - - - 0x009BBC 02:9BAC: 00        .byte $00   ; 
- - - - - - 0x009BBD 02:9BAD: 00        .byte $00   ; 
- - - - - - 0x009BBE 02:9BAE: 00        .byte $00   ; 
- D 0 - I - 0x009BBF 02:9BAF: 00        .byte $00   ; 
- - - - - - 0x009BC0 02:9BB0: 00        .byte $00   ; 
- - - - - - 0x009BC1 02:9BB1: 00        .byte $00   ; 
- - - - - - 0x009BC2 02:9BB2: 00        .byte $00   ; 
- - - - - - 0x009BC3 02:9BB3: 00        .byte $00   ; 
- - - - - - 0x009BC4 02:9BB4: 00        .byte $00   ; 
- - - - - - 0x009BC5 02:9BB5: 7D        .byte $7D   ; 
- D 0 - I - 0x009BC6 02:9BB6: 0B        .byte $0B   ; 
- D 0 - I - 0x009BC7 02:9BB7: 0C        .byte $0C   ; 
- D 0 - I - 0x009BC8 02:9BB8: 0D        .byte $0D   ; 
- D 0 - I - 0x009BC9 02:9BB9: 0E        .byte $0E   ; 
- D 0 - I - 0x009BCA 02:9BBA: 0F        .byte $0F   ; 
- D 0 - I - 0x009BCB 02:9BBB: 10        .byte $10   ; 
- - - - - - 0x009BCC 02:9BBC: 0F        .byte $0F   ; 
- - - - - - 0x009BCD 02:9BBD: 10        .byte $10   ; 
- D 0 - I - 0x009BCE 02:9BBE: 11        .byte $11   ; 
- D 0 - I - 0x009BCF 02:9BBF: 12        .byte $12   ; 
- - - - - - 0x009BD0 02:9BC0: 11        .byte $11   ; 
- - - - - - 0x009BD1 02:9BC1: 12        .byte $12   ; 
- D 0 - I - 0x009BD2 02:9BC2: 13        .byte $13   ; 
- D 0 - I - 0x009BD3 02:9BC3: 14        .byte $14   ; 
- - - - - - 0x009BD4 02:9BC4: 13        .byte $13   ; 
- - - - - - 0x009BD5 02:9BC5: 14        .byte $14   ; 
- D 0 - I - 0x009BD6 02:9BC6: 00        .byte $00   ; 
- - - - - - 0x009BD7 02:9BC7: 00        .byte $00   ; 
- - - - - - 0x009BD8 02:9BC8: 00        .byte $00   ; 
- - - - - - 0x009BD9 02:9BC9: 00        .byte $00   ; 
- - - - - - 0x009BDA 02:9BCA: 00        .byte $00   ; 
- - - - - - 0x009BDB 02:9BCB: 00        .byte $00   ; 
- D 0 - I - 0x009BDC 02:9BCC: 7D        .byte $7D   ; 
- D 0 - I - 0x009BDD 02:9BCD: 15        .byte $15   ; 
- D 0 - I - 0x009BDE 02:9BCE: 16        .byte $16   ; 
- D 0 - I - 0x009BDF 02:9BCF: 17        .byte $17   ; 
- D 0 - I - 0x009BE0 02:9BD0: 18        .byte $18   ; 
- - - - - - 0x009BE1 02:9BD1: 19        .byte $19   ; 
- D 0 - I - 0x009BE2 02:9BD2: 19        .byte $19   ; 
- - - - - - 0x009BE3 02:9BD3: 1A        .byte $1A   ; 
- D 0 - I - 0x009BE4 02:9BD4: 1A        .byte $1A   ; 
- - - - - - 0x009BE5 02:9BD5: 1B        .byte $1B   ; 
- D 0 - I - 0x009BE6 02:9BD6: 1B        .byte $1B   ; 
- - - - - - 0x009BE7 02:9BD7: 1C        .byte $1C   ; 
- D 0 - I - 0x009BE8 02:9BD8: 1C        .byte $1C   ; 
- - - - - - 0x009BE9 02:9BD9: 1C        .byte $1C   ; 
- D 0 - I - 0x009BEA 02:9BDA: 5F        .byte $5F   ; 
- - - - - - 0x009BEB 02:9BDB: 1B        .byte $1B   ; 
- D 0 - I - 0x009BEC 02:9BDC: 5E        .byte $5E   ; 
- D 0 - I - 0x009BED 02:9BDD: 00        .byte $00   ; 
- - - - - - 0x009BEE 02:9BDE: 00        .byte $00   ; 
- D 0 - I - 0x009BEF 02:9BDF: 7D        .byte $7D   ; 
- - - - - - 0x009BF0 02:9BE0: 00        .byte $00   ; 
- - - - - - 0x009BF1 02:9BE1: 00        .byte $00   ; 
- - - - - - 0x009BF2 02:9BE2: 00        .byte $00   ; 
- - - - - - 0x009BF3 02:9BE3: 00        .byte $00   ; 
- D 0 - I - 0x009BF4 02:9BE4: 1D        .byte $1D   ; 
- - - - - - 0x009BF5 02:9BE5: 1E        .byte $1E   ; 
- - - - - - 0x009BF6 02:9BE6: 1F        .byte $1F   ; 
- - - - - - 0x009BF7 02:9BE7: 20        .byte $20   ; 
- - - - - - 0x009BF8 02:9BE8: 21        .byte $21   ; 
- D 0 - I - 0x009BF9 02:9BE9: 21        .byte $21   ; 
- - - - - - 0x009BFA 02:9BEA: 21        .byte $21   ; 
- D 0 - I - 0x009BFB 02:9BEB: 21        .byte $21   ; 
- - - - - - 0x009BFC 02:9BEC: 22        .byte $22   ; 
- D 0 - I - 0x009BFD 02:9BED: 22        .byte $22   ; 
- - - - - - 0x009BFE 02:9BEE: 23        .byte $23   ; 
- - - - - - 0x009BFF 02:9BEF: 23        .byte $23   ; 
- - - - - - 0x009C00 02:9BF0: 24        .byte $24   ; 
- D 0 - I - 0x009C01 02:9BF1: 24        .byte $24   ; 
- - - - - - 0x009C02 02:9BF2: 25        .byte $25   ; 
- - - - - - 0x009C03 02:9BF3: 25        .byte $25   ; 
- - - - - - 0x009C04 02:9BF4: 26        .byte $26   ; 
- D 0 - I - 0x009C05 02:9BF5: 27        .byte $27   ; 
- - - - - - 0x009C06 02:9BF6: 28        .byte $28   ; 
- D 0 - I - 0x009C07 02:9BF7: 28        .byte $28   ; 
- - - - - - 0x009C08 02:9BF8: 29        .byte $29   ; 
- D 0 - I - 0x009C09 02:9BF9: 29        .byte $29   ; 
- D 0 - I - 0x009C0A 02:9BFA: 00        .byte $00   ; 
- - - - - - 0x009C0B 02:9BFB: 00        .byte $00   ; 
- - - - - - 0x009C0C 02:9BFC: 7D        .byte $7D   ; 



_off027_9BFD_01:
- D 0 - I - 0x009C0D 02:9BFD: 33        .byte $33   ; 
- D 0 - I - 0x009C0E 02:9BFE: 39        .byte $39   ; 
- D 0 - I - 0x009C0F 02:9BFF: 34        .byte $34   ; 
- - - - - - 0x009C10 02:9C00: 38        .byte $38   ; 
- D 0 - I - 0x009C11 02:9C01: 35        .byte $35   ; 
- D 0 - I - 0x009C12 02:9C02: 2F        .byte $2F   ; 
- D 0 - I - 0x009C13 02:9C03: 36        .byte $36   ; 
- - - - - - 0x009C14 02:9C04: 37        .byte $37   ; 
- D 0 - I - 0x009C15 02:9C05: 3A        .byte $3A   ; 
- - - - - - 0x009C16 02:9C06: 58        .byte $58   ; 
- - - - - - 0x009C17 02:9C07: 34        .byte $34   ; 
- - - - - - 0x009C18 02:9C08: 38        .byte $38   ; 
- - - - - - 0x009C19 02:9C09: 35        .byte $35   ; 
- - - - - - 0x009C1A 02:9C0A: 3D        .byte $3D   ; 
- D 0 - I - 0x009C1B 02:9C0B: 3B        .byte $3B   ; 
- - - - - - 0x009C1C 02:9C0C: 3C        .byte $3C   ; 
- - - - - - 0x009C1D 02:9C0D: 00        .byte $00   ; 
- - - - - - 0x009C1E 02:9C0E: 00        .byte $00   ; 
- - - - - - 0x009C1F 02:9C0F: 00        .byte $00   ; 
- - - - - - 0x009C20 02:9C10: 00        .byte $00   ; 
- - - - - - 0x009C21 02:9C11: 00        .byte $00   ; 
- - - - - - 0x009C22 02:9C12: 00        .byte $00   ; 
- - - - - - 0x009C23 02:9C13: 00        .byte $00   ; 
- - - - - - 0x009C24 02:9C14: 00        .byte $00   ; 
- - - - - - 0x009C25 02:9C15: 00        .byte $00   ; 
- - - - - - 0x009C26 02:9C16: 00        .byte $00   ; 
- - - - - - 0x009C27 02:9C17: 00        .byte $00   ; 
- - - - - - 0x009C28 02:9C18: 00        .byte $00   ; 
- - - - - - 0x009C29 02:9C19: 00        .byte $00   ; 
- D 0 - I - 0x009C2A 02:9C1A: 46        .byte $46   ; 
- D 0 - I - 0x009C2B 02:9C1B: 3F        .byte $3F   ; 
- D 0 - I - 0x009C2C 02:9C1C: 40        .byte $40   ; 
- D 0 - I - 0x009C2D 02:9C1D: 47        .byte $47   ; 
- D 0 - I - 0x009C2E 02:9C1E: 48        .byte $48   ; 
- D 0 - I - 0x009C2F 02:9C1F: 49        .byte $49   ; 
- D 0 - I - 0x009C30 02:9C20: 4A        .byte $4A   ; 
- D 0 - I - 0x009C31 02:9C21: 4B        .byte $4B   ; 
- D 0 - I - 0x009C32 02:9C22: 3E        .byte $3E   ; 
- - - - - - 0x009C33 02:9C23: 3F        .byte $3F   ; 
- D 0 - I - 0x009C34 02:9C24: 40        .byte $40   ; 
- D 0 - I - 0x009C35 02:9C25: 41        .byte $41   ; 
- D 0 - I - 0x009C36 02:9C26: 42        .byte $42   ; 
- - - - - - 0x009C37 02:9C27: 43        .byte $43   ; 
- - - - - - 0x009C38 02:9C28: 44        .byte $44   ; 
- D 0 - I - 0x009C39 02:9C29: 45        .byte $45   ; 



_off027_9C2A_02:
- - - - - - 0x009C3A 02:9C2A: 32        .byte $32   ; 
- D 0 - I - 0x009C3B 02:9C2B: 2B        .byte $2B   ; 
- - - - - - 0x009C3C 02:9C2C: 2C        .byte $2C   ; 
- D 0 - I - 0x009C3D 02:9C2D: 2D        .byte $2D   ; 
- - - - - - 0x009C3E 02:9C2E: 2E        .byte $2E   ; 
- - - - - - 0x009C3F 02:9C2F: 2F        .byte $2F   ; 
- - - - - - 0x009C40 02:9C30: 30        .byte $30   ; 
- - - - - - 0x009C41 02:9C31: 31        .byte $31   ; 
- - - - - - 0x009C42 02:9C32: 00        .byte $00   ; 
- - - - - - 0x009C43 02:9C33: 00        .byte $00   ; 
- - - - - - 0x009C44 02:9C34: 00        .byte $00   ; 
- - - - - - 0x009C45 02:9C35: 00        .byte $00   ; 
- - - - - - 0x009C46 02:9C36: 00        .byte $00   ; 
- - - - - - 0x009C47 02:9C37: 00        .byte $00   ; 
- - - - - - 0x009C48 02:9C38: 00        .byte $00   ; 
- - - - - - 0x009C49 02:9C39: 00        .byte $00   ; 
- - - - - - 0x009C4A 02:9C3A: 2A        .byte $2A   ; 
- - - - - - 0x009C4B 02:9C3B: 2B        .byte $2B   ; 
- - - - - - 0x009C4C 02:9C3C: 2C        .byte $2C   ; 
- - - - - - 0x009C4D 02:9C3D: 2D        .byte $2D   ; 
- - - - - - 0x009C4E 02:9C3E: 2E        .byte $2E   ; 
- - - - - - 0x009C4F 02:9C3F: 2F        .byte $2F   ; 
- - - - - - 0x009C50 02:9C40: 30        .byte $30   ; 
- - - - - - 0x009C51 02:9C41: 31        .byte $31   ; 
- - - - - - 0x009C52 02:9C42: 00        .byte $00   ; 
- - - - - - 0x009C53 02:9C43: 00        .byte $00   ; 
- - - - - - 0x009C54 02:9C44: 00        .byte $00   ; 
- - - - - - 0x009C55 02:9C45: 00        .byte $00   ; 
- - - - - - 0x009C56 02:9C46: 00        .byte $00   ; 
- - - - - - 0x009C57 02:9C47: 00        .byte $00   ; 
- D 0 - I - 0x009C58 02:9C48: 51        .byte $51   ; 
- D 0 - I - 0x009C59 02:9C49: 4C        .byte $4C   ; 
- D 0 - I - 0x009C5A 02:9C4A: 4D        .byte $4D   ; 
- D 0 - I - 0x009C5B 02:9C4B: 52        .byte $52   ; 
- D 0 - I - 0x009C5C 02:9C4C: 53        .byte $53   ; 
- - - - - - 0x009C5D 02:9C4D: 54        .byte $54   ; 
- - - - - - 0x009C5E 02:9C4E: 55        .byte $55   ; 
- D 0 - I - 0x009C5F 02:9C4F: 56        .byte $56   ; 
- - - - - - 0x009C60 02:9C50: 3A        .byte $3A   ; 
- - - - - - 0x009C61 02:9C51: 4C        .byte $4C   ; 
- - - - - - 0x009C62 02:9C52: 4D        .byte $4D   ; 
- D 0 - I - 0x009C63 02:9C53: 4E        .byte $4E   ; 
- D 0 - I - 0x009C64 02:9C54: 0B        .byte $0B   ; 
- - - - - - 0x009C65 02:9C55: 4F        .byte $4F   ; 
- - - - - - 0x009C66 02:9C56: 50        .byte $50   ; 
- D 0 - I - 0x009C67 02:9C57: 7D        .byte $7D   ; 
- - - - - - 0x009C68 02:9C58: 00        .byte $00   ; 
- - - - - - 0x009C69 02:9C59: 00        .byte $00   ; 
- - - - - - 0x009C6A 02:9C5A: 00        .byte $00   ; 
- D 0 - I - 0x009C6B 02:9C5B: 00        .byte $00   ; 
- - - - - - 0x009C6C 02:9C5C: 00        .byte $00   ; 
- - - - - - 0x009C6D 02:9C5D: 00        .byte $00   ; 
- - - - - - 0x009C6E 02:9C5E: 00        .byte $00   ; 
- - - - - - 0x009C6F 02:9C5F: 00        .byte $00   ; 
- - - - - - 0x009C70 02:9C60: 00        .byte $00   ; 
- - - - - - 0x009C71 02:9C61: 00        .byte $00   ; 
- - - - - - 0x009C72 02:9C62: 00        .byte $00   ; 
- - - - - - 0x009C73 02:9C63: 00        .byte $00   ; 
- - - - - - 0x009C74 02:9C64: 00        .byte $00   ; 
- - - - - - 0x009C75 02:9C65: 00        .byte $00   ; 
- - - - - - 0x009C76 02:9C66: 57        .byte $57   ; 
- - - - - - 0x009C77 02:9C67: 58        .byte $58   ; 
- - - - - - 0x009C78 02:9C68: 59        .byte $59   ; 
- D 0 - I - 0x009C79 02:9C69: 25        .byte $25   ; 
- D 0 - I - 0x009C7A 02:9C6A: 24        .byte $24   ; 
- - - - - - 0x009C7B 02:9C6B: 29        .byte $29   ; 
- D 0 - I - 0x009C7C 02:9C6C: 28        .byte $28   ; 
- D 0 - I - 0x009C7D 02:9C6D: 5A        .byte $5A   ; 
- - - - - - 0x009C7E 02:9C6E: 5B        .byte $5B   ; 
- D 0 - I - 0x009C7F 02:9C6F: 5C        .byte $5C   ; 
- D 0 - I - 0x009C80 02:9C70: 5D        .byte $5D   ; 



_off027_9C71_03:
- - - - - - 0x009C81 02:9C71: 00        .byte $00   ; 
- - - - - - 0x009C82 02:9C72: 00        .byte $00   ; 
- - - - - - 0x009C83 02:9C73: 00        .byte $00   ; 
- - - - - - 0x009C84 02:9C74: 00        .byte $00   ; 
- - - - - - 0x009C85 02:9C75: 00        .byte $00   ; 
- - - - - - 0x009C86 02:9C76: 00        .byte $00   ; 
- - - - - - 0x009C87 02:9C77: 00        .byte $00   ; 
- - - - - - 0x009C88 02:9C78: 00        .byte $00   ; 
- - - - - - 0x009C89 02:9C79: 71        .byte $71   ; 
- - - - - - 0x009C8A 02:9C7A: 58        .byte $58   ; 
- D 0 - I - 0x009C8B 02:9C7B: 6C        .byte $6C   ; 
- - - - - - 0x009C8C 02:9C7C: 70        .byte $70   ; 
- D 0 - I - 0x009C8D 02:9C7D: 62        .byte $62   ; 
- D 0 - I - 0x009C8E 02:9C7E: 6F        .byte $6F   ; 
- D 0 - I - 0x009C8F 02:9C7F: 6D        .byte $6D   ; 
- D 0 - I - 0x009C90 02:9C80: 6E        .byte $6E   ; 
- - - - - - 0x009C91 02:9C81: 00        .byte $00   ; 
- D 0 - I - 0x009C92 02:9C82: 00        .byte $00   ; 
- D 0 - I - 0x009C93 02:9C83: 00        .byte $00   ; 
- D 0 - I - 0x009C94 02:9C84: 00        .byte $00   ; 
- - - - - - 0x009C95 02:9C85: 00        .byte $00   ; 
- D 0 - I - 0x009C96 02:9C86: 00        .byte $00   ; 
- D 0 - I - 0x009C97 02:9C87: 00        .byte $00   ; 
- - - - - - 0x009C98 02:9C88: 00        .byte $00   ; 
- - - - - - 0x009C99 02:9C89: 00        .byte $00   ; 
- - - - - - 0x009C9A 02:9C8A: 00        .byte $00   ; 
- - - - - - 0x009C9B 02:9C8B: 00        .byte $00   ; 
- - - - - - 0x009C9C 02:9C8C: 00        .byte $00   ; 
- - - - - - 0x009C9D 02:9C8D: 00        .byte $00   ; 
- - - - - - 0x009C9E 02:9C8E: 00        .byte $00   ; 
- - - - - - 0x009C9F 02:9C8F: 00        .byte $00   ; 
- - - - - - 0x009CA0 02:9C90: 00        .byte $00   ; 
- - - - - - 0x009CA1 02:9C91: 00        .byte $00   ; 
- D 0 - I - 0x009CA2 02:9C92: 6A        .byte $6A   ; 
- D 0 - I - 0x009CA3 02:9C93: 69        .byte $69   ; 
- D 0 - I - 0x009CA4 02:9C94: 3A        .byte $3A   ; 
- - - - - - 0x009CA5 02:9C95: 68        .byte $68   ; 
- D 0 - I - 0x009CA6 02:9C96: 6B        .byte $6B   ; 
- D 0 - I - 0x009CA7 02:9C97: 3D        .byte $3D   ; 
- D 0 - I - 0x009CA8 02:9C98: 7E        .byte $7E   ; 
- D 0 - I - 0x009CA9 02:9C99: 3C        .byte $3C   ; 
- - - - - - 0x009CAA 02:9C9A: 00        .byte $00   ; 
- - - - - - 0x009CAB 02:9C9B: 00        .byte $00   ; 
- - - - - - 0x009CAC 02:9C9C: 00        .byte $00   ; 
- - - - - - 0x009CAD 02:9C9D: 00        .byte $00   ; 
- - - - - - 0x009CAE 02:9C9E: 00        .byte $00   ; 
- - - - - - 0x009CAF 02:9C9F: 00        .byte $00   ; 
- - - - - - 0x009CB0 02:9CA0: 00        .byte $00   ; 
- - - - - - 0x009CB1 02:9CA1: 00        .byte $00   ; 
- - - - - - 0x009CB2 02:9CA2: 00        .byte $00   ; 
- - - - - - 0x009CB3 02:9CA3: 00        .byte $00   ; 
- - - - - - 0x009CB4 02:9CA4: 00        .byte $00   ; 
- - - - - - 0x009CB5 02:9CA5: 00        .byte $00   ; 
- - - - - - 0x009CB6 02:9CA6: 6A        .byte $6A   ; 
- - - - - - 0x009CB7 02:9CA7: 73        .byte $73   ; 
- - - - - - 0x009CB8 02:9CA8: 74        .byte $74   ; 
- D 0 - I - 0x009CB9 02:9CA9: 63        .byte $63   ; 
- D 0 - I - 0x009CBA 02:9CAA: 6B        .byte $6B   ; 
- D 0 - I - 0x009CBB 02:9CAB: 75        .byte $75   ; 
- D 0 - I - 0x009CBC 02:9CAC: 67        .byte $67   ; 



_off027_9CAD_04:
- D 0 - I - 0x009CBD 02:9CAD: 00        .byte $00   ; 
- - - - - - 0x009CBE 02:9CAE: 00        .byte $00   ; 
- - - - - - 0x009CBF 02:9CAF: 61        .byte $61   ; 
- D 0 - I - 0x009CC0 02:9CB0: 64        .byte $64   ; 
- D 0 - I - 0x009CC1 02:9CB1: 63        .byte $63   ; 
- D 0 - I - 0x009CC2 02:9CB2: 65        .byte $65   ; 
- - - - - - 0x009CC3 02:9CB3: 00        .byte $00   ; 
- - - - - - 0x009CC4 02:9CB4: 00        .byte $00   ; 
- - - - - - 0x009CC5 02:9CB5: 00        .byte $00   ; 
- - - - - - 0x009CC6 02:9CB6: 00        .byte $00   ; 
- - - - - - 0x009CC7 02:9CB7: 00        .byte $00   ; 
- - - - - - 0x009CC8 02:9CB8: 00        .byte $00   ; 
- - - - - - 0x009CC9 02:9CB9: 00        .byte $00   ; 
- - - - - - 0x009CCA 02:9CBA: 00        .byte $00   ; 
- - - - - - 0x009CCB 02:9CBB: 00        .byte $00   ; 
- - - - - - 0x009CCC 02:9CBC: 00        .byte $00   ; 
- - - - - - 0x009CCD 02:9CBD: 00        .byte $00   ; 
- - - - - - 0x009CCE 02:9CBE: 00        .byte $00   ; 
- - - - - - 0x009CCF 02:9CBF: 00        .byte $00   ; 
- - - - - - 0x009CD0 02:9CC0: 00        .byte $00   ; 
- D 0 - I - 0x009CD1 02:9CC1: 62        .byte $62   ; 
- D 0 - I - 0x009CD2 02:9CC2: 66        .byte $66   ; 
- - - - - - 0x009CD3 02:9CC3: 00        .byte $00   ; 
- - - - - - 0x009CD4 02:9CC4: 00        .byte $00   ; 
- - - - - - 0x009CD5 02:9CC5: 00        .byte $00   ; 
- - - - - - 0x009CD6 02:9CC6: 00        .byte $00   ; 
- - - - - - 0x009CD7 02:9CC7: 00        .byte $00   ; 
- - - - - - 0x009CD8 02:9CC8: 00        .byte $00   ; 
- - - - - - 0x009CD9 02:9CC9: 00        .byte $00   ; 
- D 0 - I - 0x009CDA 02:9CCA: 62        .byte $62   ; 
- D 0 - I - 0x009CDB 02:9CCB: 66        .byte $66   ; 
- - - - - - 0x009CDC 02:9CCC: 00        .byte $00   ; 
- - - - - - 0x009CDD 02:9CCD: 00        .byte $00   ; 
- D 0 - I - 0x009CDE 02:9CCE: 08        .byte $08   ; 
- - - - - - 0x009CDF 02:9CCF: 6B        .byte $6B   ; 
- - - - - - 0x009CE0 02:9CD0: 00        .byte $00   ; 
- D 0 - I - 0x009CE1 02:9CD1: 76        .byte $76   ; 
- - - - - - 0x009CE2 02:9CD2: 77        .byte $77   ; 
- - - - - - 0x009CE3 02:9CD3: 00        .byte $00   ; 
- - - - - - 0x009CE4 02:9CD4: 00        .byte $00   ; 
- - - - - - 0x009CE5 02:9CD5: 00        .byte $00   ; 
- - - - - - 0x009CE6 02:9CD6: 00        .byte $00   ; 
- - - - - - 0x009CE7 02:9CD7: 00        .byte $00   ; 
- - - - - - 0x009CE8 02:9CD8: 00        .byte $00   ; 
- - - - - - 0x009CE9 02:9CD9: 1E        .byte $1E   ; 
- - - - - - 0x009CEA 02:9CDA: 1D        .byte $1D   ; 
- - - - - - 0x009CEB 02:9CDB: 00        .byte $00   ; 
- - - - - - 0x009CEC 02:9CDC: 00        .byte $00   ; 
- - - - - - 0x009CED 02:9CDD: 00        .byte $00   ; 
- - - - - - 0x009CEE 02:9CDE: 00        .byte $00   ; 
- - - - - - 0x009CEF 02:9CDF: 00        .byte $00   ; 
- - - - - - 0x009CF0 02:9CE0: 00        .byte $00   ; 
- - - - - - 0x009CF1 02:9CE1: 00        .byte $00   ; 
- - - - - - 0x009CF2 02:9CE2: 00        .byte $00   ; 
- D 0 - I - 0x009CF3 02:9CE3: 0C        .byte $0C   ; 
- - - - - - 0x009CF4 02:9CE4: 1D        .byte $1D   ; 
- - - - - - 0x009CF5 02:9CE5: 00        .byte $00   ; 
- - - - - - 0x009CF6 02:9CE6: 00        .byte $00   ; 
- - - - - - 0x009CF7 02:9CE7: 00        .byte $00   ; 
- - - - - - 0x009CF8 02:9CE8: 00        .byte $00   ; 
- - - - - - 0x009CF9 02:9CE9: 00        .byte $00   ; 
- - - - - - 0x009CFA 02:9CEA: 00        .byte $00   ; 
- - - - - - 0x009CFB 02:9CEB: 00        .byte $00   ; 
- - - - - - 0x009CFC 02:9CEC: 00        .byte $00   ; 
- D 0 - I - 0x009CFD 02:9CED: 1E        .byte $1E   ; 
- D 0 - I - 0x009CFE 02:9CEE: 1D        .byte $1D   ; 



tbl_987A:
- D 0 - - - 0x00988A 02:987A: 9B B2     .word _off019_D2AB_00
- D 0 - - - 0x00988C 02:987C: D1 B4     .word _off019_D4E1_01
- D 0 - - - 0x00988E 02:987E: 33 B6     .word _off019_D643_02
- D 0 - - - 0x009890 02:9880: 39 BB     .word _off019_DB49_03
- D 0 - - - 0x009892 02:9882: FF B8     .word _off019_D90F_04
- D 0 - - - 0x009894 02:9884: 6E BD     .word _off019_DD7E_05
- D 0 - - - 0x009896 02:9886: 02 BE     .word _off019_DE12_06
- D 0 - - - 0x009898 02:9888: DF B7     .word _off019_D7EF_07
- D 0 - - - 0x00989A 02:988A: 85 BD     .word _off019_DD95_08
- D 0 - - - 0x00989C 02:988C: 87 BE     .word _off019_DE97_09
- D 0 - - - 0x00989E 02:988E: D7 BE     .word _off019_DEE7_0A
- D 0 - - - 0x0098A0 02:9890: 39 BF     .word _off019_DF49_0B
- D 0 - - - 0x0098A2 02:9892: 90 BF     .word _off019_DFA0_0C
- D 0 - - - 0x0098A4 02:9894: CF BF     .word _off019_DFDF_0D
- - - - - - 0x0098A6 02:9896: E8 BF     .word _off019_DFF8_0E



_off019_D2AB_00:
- D 1 - I - 0x00D2AB 03:B29B: 6B B3     .word off_00_B36B_01
- D 1 - I - 0x00D2AD 03:B29D: 6F B3     .word off_00_B36F_02
- D 1 - I - 0x00D2AF 03:B29F: 73 B3     .word off_00_B373_03
- D 1 - I - 0x00D2B1 03:B2A1: 77 B3     .word off_00_B377_04
- - - - - - 0x00D2B3 03:B2A3: 7B B3     .word off_00_B37B_05
- - - - - - 0x00D2B5 03:B2A5: 82 B3     .word off_00_B382_06
- D 1 - I - 0x00D2B7 03:B2A7: 89 B3     .word off_00_B389_07
- D 1 - I - 0x00D2B9 03:B2A9: 8C B3     .word off_00_B38C_08
- D 1 - I - 0x00D2BB 03:B2AB: 8F B3     .word off_00_B38F_09
- D 1 - I - 0x00D2BD 03:B2AD: 92 B3     .word off_00_B392_0A
- D 1 - I - 0x00D2BF 03:B2AF: 95 B3     .word off_00_B395_0B
- D 1 - I - 0x00D2C1 03:B2B1: 98 B3     .word off_00_B398_0C
- D 1 - I - 0x00D2C3 03:B2B3: 9B B3     .word off_00_B39B_0D
- D 1 - I - 0x00D2C5 03:B2B5: 9E B3     .word off_00_B39E_0E
- D 1 - I - 0x00D2C7 03:B2B7: A1 B3     .word off_00_B3A1_0F
- D 1 - I - 0x00D2C9 03:B2B9: A4 B3     .word off_00_B3A4_10
- D 1 - I - 0x00D2CB 03:B2BB: A7 B3     .word off_00_B3A7_11
- D 1 - I - 0x00D2CD 03:B2BD: AA B3     .word off_00_B3AA_12
- - - - - - 0x00D2CF 03:B2BF: AD B3     .word off_00_B3AD_13
- - - - - - 0x00D2D1 03:B2C1: B3 B3     .word off_00_B3B3_14
- - - - - - 0x00D2D3 03:B2C3: B9 B3     .word off_00_B3B9_15
- - - - - - 0x00D2D5 03:B2C5: BF B3     .word off_00_B3BF_16
- D 1 - I - 0x00D2D7 03:B2C7: C5 B3     .word off_00_B3C5_17
- D 1 - I - 0x00D2D9 03:B2C9: C9 B3     .word off_00_B3C9_18
- D 1 - I - 0x00D2DB 03:B2CB: CC B3     .word off_00_B3CC_19
- - - - - - 0x00D2DD 03:B2CD: CF B3     .word off_00_B3CF_1A
- - - - - - 0x00D2DF 03:B2CF: D2 B3     .word off_00_B3D2_1B
- - - - - - 0x00D2E1 03:B2D1: D5 B3     .word off_00_B3D5_1C
- - - - - - 0x00D2E3 03:B2D3: D9 B3     .word off_00_B3D9_1D
- D 1 - I - 0x00D2E5 03:B2D5: DC B3     .word off_00_B3DC_1E
- D 1 - I - 0x00D2E7 03:B2D7: E0 B3     .word off_00_B3E0_1F
- D 1 - I - 0x00D2E9 03:B2D9: E4 B3     .word off_00_B3E4_20
- D 1 - I - 0x00D2EB 03:B2DB: E8 B3     .word off_00_B3E8_21
- D 1 - I - 0x00D2ED 03:B2DD: EC B3     .word off_00_B3EC_22
- D 1 - I - 0x00D2EF 03:B2DF: EF B3     .word off_00_B3EF_23
- D 1 - I - 0x00D2F1 03:B2E1: F2 B3     .word off_00_B3F2_24
- D 1 - I - 0x00D2F3 03:B2E3: F5 B3     .word off_00_B3F5_25
- D 1 - I - 0x00D2F5 03:B2E5: F8 B3     .word off_00_B3F8_26
- D 1 - I - 0x00D2F7 03:B2E7: FB B3     .word off_00_B3FB_27
- D 1 - I - 0x00D2F9 03:B2E9: FE B3     .word off_00_B3FE_28
- D 1 - I - 0x00D2FB 03:B2EB: 01 B4     .word off_00_B401_29
- D 1 - I - 0x00D2FD 03:B2ED: 04 B4     .word off_00_B404_2A
- D 1 - I - 0x00D2FF 03:B2EF: 07 B4     .word off_00_B407_2B
- D 1 - I - 0x00D301 03:B2F1: 0A B4     .word off_00_B40A_2C
- D 1 - I - 0x00D303 03:B2F3: 0D B4     .word off_00_B40D_2D
- D 1 - I - 0x00D305 03:B2F5: 10 B4     .word off_00_B410_2E
- - - - - - 0x00D307 03:B2F7: 14 B4     .word off_00_B414_2F
- - - - - - 0x00D309 03:B2F9: 17 B4     .word off_00_B417_30
- D 1 - I - 0x00D30B 03:B2FB: 1A B4     .word off_00_B41A_31
- D 1 - I - 0x00D30D 03:B2FD: 1D B4     .word off_00_B41D_32
- D 1 - I - 0x00D30F 03:B2FF: 20 B4     .word off_00_B420_33
- D 1 - I - 0x00D311 03:B301: 24 B4     .word off_00_B424_34
- D 1 - I - 0x00D313 03:B303: 27 B4     .word off_00_B427_35
- D 1 - I - 0x00D315 03:B305: 2B B4     .word off_00_B42B_36
- D 1 - I - 0x00D317 03:B307: 2F B4     .word off_00_B42F_37
- D 1 - I - 0x00D319 03:B309: 33 B4     .word off_00_B433_38
- D 1 - I - 0x00D31B 03:B30B: 37 B4     .word off_00_B437_39
- D 1 - I - 0x00D31D 03:B30D: 3A B4     .word off_00_B43A_3A
- D 1 - I - 0x00D31F 03:B30F: 3D B4     .word off_00_B43D_3B
- D 1 - I - 0x00D321 03:B311: 40 B4     .word off_00_B440_3C
- D 1 - I - 0x00D323 03:B313: 43 B4     .word off_00_B443_3D
- D 1 - I - 0x00D325 03:B315: 46 B4     .word off_00_B446_3E
- D 1 - I - 0x00D327 03:B317: 49 B4     .word off_00_B449_3F
- D 1 - I - 0x00D329 03:B319: 4C B4     .word off_00_B44C_40
- D 1 - I - 0x00D32B 03:B31B: 4F B4     .word off_00_B44F_41
- D 1 - I - 0x00D32D 03:B31D: 52 B4     .word off_00_B452_42
- D 1 - I - 0x00D32F 03:B31F: 55 B4     .word off_00_B455_43
- D 1 - I - 0x00D331 03:B321: 58 B4     .word off_00_B458_44
- D 1 - I - 0x00D333 03:B323: 5B B4     .word off_00_B45B_45
- D 1 - I - 0x00D335 03:B325: 5F B4     .word off_00_B45F_46
- D 1 - I - 0x00D337 03:B327: 63 B4     .word off_00_B463_47
- D 1 - I - 0x00D339 03:B329: 66 B4     .word off_00_B466_48
- D 1 - I - 0x00D33B 03:B32B: 69 B4     .word off_00_B469_49
- - - - - - 0x00D33D 03:B32D: 6C B4     .word off_00_B46C_4A
- - - - - - 0x00D33F 03:B32F: 6F B4     .word off_00_B46F_4B
- D 1 - I - 0x00D341 03:B331: 72 B4     .word off_00_B472_4C
- D 1 - I - 0x00D343 03:B333: 76 B4     .word off_00_B476_4D
- - - - - - 0x00D345 03:B335: 7A B4     .word off_00_B47A_4E
- D 1 - I - 0x00D347 03:B337: 7E B4     .word off_00_B47E_4F
- D 1 - I - 0x00D349 03:B339: 82 B4     .word off_00_B482_50
- D 1 - I - 0x00D34B 03:B33B: 85 B4     .word off_00_B485_51
- D 1 - I - 0x00D34D 03:B33D: 88 B4     .word off_00_B488_52
- D 1 - I - 0x00D34F 03:B33F: 8B B4     .word off_00_B48B_53
- D 1 - I - 0x00D351 03:B341: 8E B4     .word off_00_B48E_54
- D 1 - I - 0x00D353 03:B343: 91 B4     .word off_00_B491_55
- D 1 - I - 0x00D355 03:B345: 94 B4     .word off_00_B494_56
- D 1 - I - 0x00D357 03:B347: 97 B4     .word off_00_B497_57
- D 1 - I - 0x00D359 03:B349: 9A B4     .word off_00_B49A_58
- D 1 - I - 0x00D35B 03:B34B: 9D B4     .word off_00_B49D_59
- - - - - - 0x00D35D 03:B34D: A0 B4     .word off_00_B4A0_5A
- D 1 - I - 0x00D35F 03:B34F: A3 B4     .word off_00_B4A3_5B
- D 1 - I - 0x00D361 03:B351: A6 B4     .word off_00_B4A6_5C
- D 1 - I - 0x00D363 03:B353: AA B4     .word off_00_B4AA_5D
- D 1 - I - 0x00D365 03:B355: AE B4     .word off_00_B4AE_5E
- D 1 - I - 0x00D367 03:B357: B1 B4     .word off_00_B4B1_5F
- D 1 - I - 0x00D369 03:B359: B4 B4     .word off_00_B4B4_60
- D 1 - I - 0x00D36B 03:B35B: B7 B4     .word off_00_B4B7_61
- D 1 - I - 0x00D36D 03:B35D: BA B4     .word off_00_B4BA_62
- - - - - - 0x00D36F 03:B35F: BE B4     .word off_00_B4BE_63
- - - - - - 0x00D371 03:B361: C2 B4     .word off_00_B4C2_64
- D 1 - I - 0x00D373 03:B363: C5 B4     .word off_00_B4C5_65
- D 1 - I - 0x00D375 03:B365: C8 B4     .word off_00_B4C8_66
- - - - - - 0x00D377 03:B367: CB B4     .word off_00_B4CB_67
- - - - - - 0x00D379 03:B369: CE B4     .word off_00_B4CE_68



off_00_B36B_01:
- D 1 - I - 0x00D37B 03:B36B: FC        .byte $FC   ; 
- D 1 - I - 0x00D37C 03:B36C: 07        .byte $07   ; 
- D 1 - I - 0x00D37D 03:B36D: 04        .byte $04   ; 
- D 1 - I - 0x00D37E 03:B36E: 01        .byte $01   ; 



off_00_B36F_02:
- D 1 - I - 0x00D37F 03:B36F: FC        .byte $FC   ; 
- D 1 - I - 0x00D380 03:B370: 07        .byte $07   ; 
- D 1 - I - 0x00D381 03:B371: 04        .byte $04   ; 
- D 1 - I - 0x00D382 03:B372: 05        .byte $05   ; 



off_00_B373_03:
- D 1 - I - 0x00D383 03:B373: FC        .byte $FC   ; 
- D 1 - I - 0x00D384 03:B374: 07        .byte $07   ; 
- D 1 - I - 0x00D385 03:B375: 04        .byte $04   ; 
- D 1 - I - 0x00D386 03:B376: 09        .byte $09   ; 



off_00_B377_04:
- D 1 - I - 0x00D387 03:B377: FC        .byte $FC   ; 
- D 1 - I - 0x00D388 03:B378: 07        .byte $07   ; 
- D 1 - I - 0x00D389 03:B379: 04        .byte $04   ; 
- D 1 - I - 0x00D38A 03:B37A: 0D        .byte $0D   ; 



off_00_B37B_05:
- - - - - - 0x00D38B 03:B37B: FD        .byte $FD   ; 
- - - - - - 0x00D38C 03:B37C: 05        .byte $05   ; 
- - - - - - 0x00D38D 03:B37D: 11        .byte $11   ; 
- - - - - - 0x00D38E 03:B37E: 02        .byte $02   ; 
- - - - - - 0x00D38F 03:B37F: 03        .byte $03   ; 
- - - - - - 0x00D390 03:B380: 12        .byte $12   ; 
- - - - - - 0x00D391 03:B381: FF        .byte $FF   ; 



off_00_B382_06:
- - - - - - 0x00D392 03:B382: FD        .byte $FD   ; 
- - - - - - 0x00D393 03:B383: 05        .byte $05   ; 
- - - - - - 0x00D394 03:B384: 13        .byte $13   ; 
- - - - - - 0x00D395 03:B385: 06        .byte $06   ; 
- - - - - - 0x00D396 03:B386: 07        .byte $07   ; 
- - - - - - 0x00D397 03:B387: 14        .byte $14   ; 
- - - - - - 0x00D398 03:B388: FF        .byte $FF   ; 



off_00_B389_07:
- D 1 - I - 0x00D399 03:B389: 16        .byte $16   ; 
- D 1 - I - 0x00D39A 03:B38A: 04        .byte $04   ; 
- D 1 - I - 0x00D39B 03:B38B: FF        .byte $FF   ; 



off_00_B38C_08:
- D 1 - I - 0x00D39C 03:B38C: 15        .byte $15   ; 
- D 1 - I - 0x00D39D 03:B38D: 08        .byte $08   ; 
- D 1 - I - 0x00D39E 03:B38E: FF        .byte $FF   ; 



off_00_B38F_09:
- D 1 - I - 0x00D39F 03:B38F: 18        .byte $18   ; 
- D 1 - I - 0x00D3A0 03:B390: 04        .byte $04   ; 
- - - - - - 0x00D3A1 03:B391: FF        .byte $FF   ; 



off_00_B392_0A:
- D 1 - I - 0x00D3A2 03:B392: 17        .byte $17   ; 
- D 1 - I - 0x00D3A3 03:B393: 08        .byte $08   ; 
- D 1 - I - 0x00D3A4 03:B394: FF        .byte $FF   ; 



off_00_B395_0B:
- D 1 - I - 0x00D3A5 03:B395: 1A        .byte $1A   ; 
- D 1 - I - 0x00D3A6 03:B396: 05        .byte $05   ; 
- D 1 - I - 0x00D3A7 03:B397: FF        .byte $FF   ; 



off_00_B398_0C:
- D 1 - I - 0x00D3A8 03:B398: 1C        .byte $1C   ; 
- D 1 - I - 0x00D3A9 03:B399: 05        .byte $05   ; 
- D 1 - I - 0x00D3AA 03:B39A: FF        .byte $FF   ; 



off_00_B39B_0D:
- D 1 - I - 0x00D3AB 03:B39B: 19        .byte $19   ; 
- D 1 - I - 0x00D3AC 03:B39C: 08        .byte $08   ; 
- D 1 - I - 0x00D3AD 03:B39D: FF        .byte $FF   ; 



off_00_B39E_0E:
- D 1 - I - 0x00D3AE 03:B39E: 1B        .byte $1B   ; 
- D 1 - I - 0x00D3AF 03:B39F: 08        .byte $08   ; 
- D 1 - I - 0x00D3B0 03:B3A0: FF        .byte $FF   ; 



off_00_B3A1_0F:
- D 1 - I - 0x00D3B1 03:B3A1: 1E        .byte $1E   ; 
- D 1 - I - 0x00D3B2 03:B3A2: 05        .byte $05   ; 
- - - - - - 0x00D3B3 03:B3A3: FF        .byte $FF   ; 



off_00_B3A4_10:
- D 1 - I - 0x00D3B4 03:B3A4: 20        .byte $20   ; 
- D 1 - I - 0x00D3B5 03:B3A5: 05        .byte $05   ; 
- D 1 - I - 0x00D3B6 03:B3A6: FF        .byte $FF   ; 



off_00_B3A7_11:
- D 1 - I - 0x00D3B7 03:B3A7: 1D        .byte $1D   ; 
- D 1 - I - 0x00D3B8 03:B3A8: 08        .byte $08   ; 
- D 1 - I - 0x00D3B9 03:B3A9: FF        .byte $FF   ; 



off_00_B3AA_12:
- D 1 - I - 0x00D3BA 03:B3AA: 1F        .byte $1F   ; 
- D 1 - I - 0x00D3BB 03:B3AB: 08        .byte $08   ; 
- D 1 - I - 0x00D3BC 03:B3AC: FF        .byte $FF   ; 



off_00_B3AD_13:
- - - - - - 0x00D3BD 03:B3AD: FD        .byte $FD   ; 
- - - - - - 0x00D3BE 03:B3AE: 05        .byte $05   ; 
- - - - - - 0x00D3BF 03:B3AF: 1A        .byte $1A   ; 
- - - - - - 0x00D3C0 03:B3B0: 21        .byte $21   ; 
- - - - - - 0x00D3C1 03:B3B1: 22        .byte $22   ; 
- - - - - - 0x00D3C2 03:B3B2: FF        .byte $FF   ; 



off_00_B3B3_14:
- - - - - - 0x00D3C3 03:B3B3: FD        .byte $FD   ; 
- - - - - - 0x00D3C4 03:B3B4: 05        .byte $05   ; 
- - - - - - 0x00D3C5 03:B3B5: 1C        .byte $1C   ; 
- - - - - - 0x00D3C6 03:B3B6: 23        .byte $23   ; 
- - - - - - 0x00D3C7 03:B3B7: 24        .byte $24   ; 
- - - - - - 0x00D3C8 03:B3B8: FF        .byte $FF   ; 



off_00_B3B9_15:
- - - - - - 0x00D3C9 03:B3B9: FD        .byte $FD   ; 
- - - - - - 0x00D3CA 03:B3BA: 05        .byte $05   ; 
- - - - - - 0x00D3CB 03:B3BB: 1E        .byte $1E   ; 
- - - - - - 0x00D3CC 03:B3BC: 25        .byte $25   ; 
- - - - - - 0x00D3CD 03:B3BD: 26        .byte $26   ; 
- - - - - - 0x00D3CE 03:B3BE: FF        .byte $FF   ; 



off_00_B3BF_16:
- - - - - - 0x00D3CF 03:B3BF: FD        .byte $FD   ; 
- - - - - - 0x00D3D0 03:B3C0: 05        .byte $05   ; 
- - - - - - 0x00D3D1 03:B3C1: 20        .byte $20   ; 
- - - - - - 0x00D3D2 03:B3C2: 27        .byte $27   ; 
- - - - - - 0x00D3D3 03:B3C3: 28        .byte $28   ; 
- - - - - - 0x00D3D4 03:B3C4: FF        .byte $FF   ; 



off_00_B3C5_17:
- D 1 - I - 0x00D3D5 03:B3C5: FC        .byte $FC   ; 
- D 1 - I - 0x00D3D6 03:B3C6: 03        .byte $03   ; 
- D 1 - I - 0x00D3D7 03:B3C7: 04        .byte $04   ; 
- D 1 - I - 0x00D3D8 03:B3C8: 29        .byte $29   ; 



off_00_B3C9_18:
- D 1 - I - 0x00D3D9 03:B3C9: 2D        .byte $2D   ; 
- D 1 - I - 0x00D3DA 03:B3CA: 07        .byte $07   ; 
- D 1 - I - 0x00D3DB 03:B3CB: FF        .byte $FF   ; 



off_00_B3CC_19:
- D 1 - I - 0x00D3DC 03:B3CC: 2E        .byte $2E   ; 
- D 1 - I - 0x00D3DD 03:B3CD: 05        .byte $05   ; 
- D 1 - I - 0x00D3DE 03:B3CE: FF        .byte $FF   ; 



off_00_B3CF_1A:
- - - - - - 0x00D3DF 03:B3CF: 2F        .byte $2F   ; 
- - - - - - 0x00D3E0 03:B3D0: 05        .byte $05   ; 
- - - - - - 0x00D3E1 03:B3D1: FF        .byte $FF   ; 



off_00_B3D2_1B:
- - - - - - 0x00D3E2 03:B3D2: 30        .byte $30   ; 
- - - - - - 0x00D3E3 03:B3D3: 05        .byte $05   ; 
- - - - - - 0x00D3E4 03:B3D4: FF        .byte $FF   ; 



off_00_B3D5_1C:
- - - - - - 0x00D3E5 03:B3D5: FC        .byte $FC   ; 
- - - - - - 0x00D3E6 03:B3D6: 0A        .byte $0A   ; 
- - - - - - 0x00D3E7 03:B3D7: 02        .byte $02   ; 
- - - - - - 0x00D3E8 03:B3D8: 31        .byte $31   ; 



off_00_B3D9_1D:
- - - - - - 0x00D3E9 03:B3D9: 31        .byte $31   ; 
- - - - - - 0x00D3EA 03:B3DA: 05        .byte $05   ; 
- - - - - - 0x00D3EB 03:B3DB: FF        .byte $FF   ; 



off_00_B3DC_1E:
- D 1 - I - 0x00D3EC 03:B3DC: FC        .byte $FC   ; 
- D 1 - I - 0x00D3ED 03:B3DD: 07        .byte $07   ; 
- D 1 - I - 0x00D3EE 03:B3DE: 04        .byte $04   ; 
- D 1 - I - 0x00D3EF 03:B3DF: 37        .byte $37   ; 



off_00_B3E0_1F:
- D 1 - I - 0x00D3F0 03:B3E0: FC        .byte $FC   ; 
- D 1 - I - 0x00D3F1 03:B3E1: 07        .byte $07   ; 
- D 1 - I - 0x00D3F2 03:B3E2: 04        .byte $04   ; 
- D 1 - I - 0x00D3F3 03:B3E3: 3B        .byte $3B   ; 



off_00_B3E4_20:
- D 1 - I - 0x00D3F4 03:B3E4: FC        .byte $FC   ; 
- D 1 - I - 0x00D3F5 03:B3E5: 07        .byte $07   ; 
- D 1 - I - 0x00D3F6 03:B3E6: 04        .byte $04   ; 
- D 1 - I - 0x00D3F7 03:B3E7: 3F        .byte $3F   ; 



off_00_B3E8_21:
- D 1 - I - 0x00D3F8 03:B3E8: FC        .byte $FC   ; 
- D 1 - I - 0x00D3F9 03:B3E9: 07        .byte $07   ; 
- D 1 - I - 0x00D3FA 03:B3EA: 04        .byte $04   ; 
- D 1 - I - 0x00D3FB 03:B3EB: 43        .byte $43   ; 



off_00_B3EC_22:
- D 1 - I - 0x00D3FC 03:B3EC: 48        .byte $48   ; 
- D 1 - I - 0x00D3FD 03:B3ED: 05        .byte $05   ; 
- - - - - - 0x00D3FE 03:B3EE: FF        .byte $FF   ; 



off_00_B3EF_23:
- D 1 - I - 0x00D3FF 03:B3EF: 4A        .byte $4A   ; 
- D 1 - I - 0x00D400 03:B3F0: 05        .byte $05   ; 
- - - - - - 0x00D401 03:B3F1: FF        .byte $FF   ; 



off_00_B3F2_24:
- D 1 - I - 0x00D402 03:B3F2: 47        .byte $47   ; 
- D 1 - I - 0x00D403 03:B3F3: 08        .byte $08   ; 
- - - - - - 0x00D404 03:B3F4: FF        .byte $FF   ; 



off_00_B3F5_25:
- D 1 - I - 0x00D405 03:B3F5: 49        .byte $49   ; 
- D 1 - I - 0x00D406 03:B3F6: 08        .byte $08   ; 
- D 1 - I - 0x00D407 03:B3F7: FF        .byte $FF   ; 



off_00_B3F8_26:
- D 1 - I - 0x00D408 03:B3F8: 4C        .byte $4C   ; 
- D 1 - I - 0x00D409 03:B3F9: 07        .byte $07   ; 
- D 1 - I - 0x00D40A 03:B3FA: FF        .byte $FF   ; 



off_00_B3FB_27:
- D 1 - I - 0x00D40B 03:B3FB: 4E        .byte $4E   ; 
- D 1 - I - 0x00D40C 03:B3FC: 07        .byte $07   ; 
- - - - - - 0x00D40D 03:B3FD: FF        .byte $FF   ; 



off_00_B3FE_28:
- D 1 - I - 0x00D40E 03:B3FE: 4B        .byte $4B   ; 
- D 1 - I - 0x00D40F 03:B3FF: 08        .byte $08   ; 
- D 1 - I - 0x00D410 03:B400: FF        .byte $FF   ; 



off_00_B401_29:
- D 1 - I - 0x00D411 03:B401: 4D        .byte $4D   ; 
- D 1 - I - 0x00D412 03:B402: 08        .byte $08   ; 
- D 1 - I - 0x00D413 03:B403: FF        .byte $FF   ; 



off_00_B404_2A:
- D 1 - I - 0x00D414 03:B404: 50        .byte $50   ; 
- D 1 - I - 0x00D415 03:B405: 07        .byte $07   ; 
- - - - - - 0x00D416 03:B406: FF        .byte $FF   ; 



off_00_B407_2B:
- D 1 - I - 0x00D417 03:B407: 52        .byte $52   ; 
- D 1 - I - 0x00D418 03:B408: 07        .byte $07   ; 
- - - - - - 0x00D419 03:B409: FF        .byte $FF   ; 



off_00_B40A_2C:
- D 1 - I - 0x00D41A 03:B40A: 4F        .byte $4F   ; 
- D 1 - I - 0x00D41B 03:B40B: 08        .byte $08   ; 
- - - - - - 0x00D41C 03:B40C: FF        .byte $FF   ; 



off_00_B40D_2D:
- D 1 - I - 0x00D41D 03:B40D: 51        .byte $51   ; 
- D 1 - I - 0x00D41E 03:B40E: 08        .byte $08   ; 
- D 1 - I - 0x00D41F 03:B40F: FF        .byte $FF   ; 



off_00_B410_2E:
- D 1 - I - 0x00D420 03:B410: FC        .byte $FC   ; 
- D 1 - I - 0x00D421 03:B411: 03        .byte $03   ; 
- D 1 - I - 0x00D422 03:B412: 04        .byte $04   ; 
- D 1 - I - 0x00D423 03:B413: 53        .byte $53   ; 



off_00_B414_2F:
- - - - - - 0x00D424 03:B414: 57        .byte $57   ; 
- - - - - - 0x00D425 03:B415: 08        .byte $08   ; 
- - - - - - 0x00D426 03:B416: FF        .byte $FF   ; 



off_00_B417_30:
- - - - - - 0x00D427 03:B417: 58        .byte $58   ; 
- - - - - - 0x00D428 03:B418: 08        .byte $08   ; 
- - - - - - 0x00D429 03:B419: FF        .byte $FF   ; 



off_00_B41A_31:
- D 1 - I - 0x00D42A 03:B41A: 59        .byte $59   ; 
- D 1 - I - 0x00D42B 03:B41B: 08        .byte $08   ; 
- D 1 - I - 0x00D42C 03:B41C: FF        .byte $FF   ; 



off_00_B41D_32:
- D 1 - I - 0x00D42D 03:B41D: 5A        .byte $5A   ; 
- D 1 - I - 0x00D42E 03:B41E: 08        .byte $08   ; 
- D 1 - I - 0x00D42F 03:B41F: FF        .byte $FF   ; 



off_00_B420_33:
- D 1 - I - 0x00D430 03:B420: FC        .byte $FC   ; 
- D 1 - I - 0x00D431 03:B421: 0A        .byte $0A   ; 
- D 1 - I - 0x00D432 03:B422: 02        .byte $02   ; 
- D 1 - I - 0x00D433 03:B423: 5B        .byte $5B   ; 



off_00_B424_34:
- D 1 - I - 0x00D434 03:B424: 5B        .byte $5B   ; 
- D 1 - I - 0x00D435 03:B425: 08        .byte $08   ; 
- D 1 - I - 0x00D436 03:B426: FF        .byte $FF   ; 



off_00_B427_35:
- D 1 - I - 0x00D437 03:B427: FC        .byte $FC   ; 
- D 1 - I - 0x00D438 03:B428: 07        .byte $07   ; 
- D 1 - I - 0x00D439 03:B429: 04        .byte $04   ; 
- D 1 - I - 0x00D43A 03:B42A: 61        .byte $61   ; 



off_00_B42B_36:
- D 1 - I - 0x00D43B 03:B42B: FC        .byte $FC   ; 
- D 1 - I - 0x00D43C 03:B42C: 07        .byte $07   ; 
- D 1 - I - 0x00D43D 03:B42D: 04        .byte $04   ; 
- D 1 - I - 0x00D43E 03:B42E: 65        .byte $65   ; 



off_00_B42F_37:
- D 1 - I - 0x00D43F 03:B42F: FC        .byte $FC   ; 
- D 1 - I - 0x00D440 03:B430: 07        .byte $07   ; 
- D 1 - I - 0x00D441 03:B431: 04        .byte $04   ; 
- D 1 - I - 0x00D442 03:B432: 69        .byte $69   ; 



off_00_B433_38:
- D 1 - I - 0x00D443 03:B433: FC        .byte $FC   ; 
- D 1 - I - 0x00D444 03:B434: 07        .byte $07   ; 
- D 1 - I - 0x00D445 03:B435: 04        .byte $04   ; 
- D 1 - I - 0x00D446 03:B436: 6D        .byte $6D   ; 



off_00_B437_39:
- D 1 - I - 0x00D447 03:B437: 71        .byte $71   ; 
- D 1 - I - 0x00D448 03:B438: 05        .byte $05   ; 
- D 1 - I - 0x00D449 03:B439: FF        .byte $FF   ; 



off_00_B43A_3A:
- D 1 - I - 0x00D44A 03:B43A: 72        .byte $72   ; 
- D 1 - I - 0x00D44B 03:B43B: 05        .byte $05   ; 
- D 1 - I - 0x00D44C 03:B43C: FF        .byte $FF   ; 



off_00_B43D_3B:
- D 1 - I - 0x00D44D 03:B43D: 73        .byte $73   ; 
- D 1 - I - 0x00D44E 03:B43E: 05        .byte $05   ; 
- D 1 - I - 0x00D44F 03:B43F: FF        .byte $FF   ; 



off_00_B440_3C:
- D 1 - I - 0x00D450 03:B440: 74        .byte $74   ; 
- D 1 - I - 0x00D451 03:B441: 05        .byte $05   ; 
- D 1 - I - 0x00D452 03:B442: FF        .byte $FF   ; 



off_00_B443_3D:
- D 1 - I - 0x00D453 03:B443: 75        .byte $75   ; 
- D 1 - I - 0x00D454 03:B444: 05        .byte $05   ; 
- D 1 - I - 0x00D455 03:B445: FF        .byte $FF   ; 



off_00_B446_3E:
- D 1 - I - 0x00D456 03:B446: 76        .byte $76   ; 
- D 1 - I - 0x00D457 03:B447: 05        .byte $05   ; 
- - - - - - 0x00D458 03:B448: FF        .byte $FF   ; 



off_00_B449_3F:
- D 1 - I - 0x00D459 03:B449: 77        .byte $77   ; 
- D 1 - I - 0x00D45A 03:B44A: 05        .byte $05   ; 
- D 1 - I - 0x00D45B 03:B44B: FF        .byte $FF   ; 



off_00_B44C_40:
- D 1 - I - 0x00D45C 03:B44C: 78        .byte $78   ; 
- D 1 - I - 0x00D45D 03:B44D: 05        .byte $05   ; 
- D 1 - I - 0x00D45E 03:B44E: FF        .byte $FF   ; 



off_00_B44F_41:
- D 1 - I - 0x00D45F 03:B44F: 79        .byte $79   ; 
- D 1 - I - 0x00D460 03:B450: 05        .byte $05   ; 
- D 1 - I - 0x00D461 03:B451: FF        .byte $FF   ; 



off_00_B452_42:
- D 1 - I - 0x00D462 03:B452: 7A        .byte $7A   ; 
- D 1 - I - 0x00D463 03:B453: 05        .byte $05   ; 
- - - - - - 0x00D464 03:B454: FF        .byte $FF   ; 



off_00_B455_43:
- D 1 - I - 0x00D465 03:B455: 7B        .byte $7B   ; 
- D 1 - I - 0x00D466 03:B456: 05        .byte $05   ; 
- D 1 - I - 0x00D467 03:B457: FF        .byte $FF   ; 



off_00_B458_44:
- D 1 - I - 0x00D468 03:B458: 7C        .byte $7C   ; 
- D 1 - I - 0x00D469 03:B459: 05        .byte $05   ; 
- - - - - - 0x00D46A 03:B45A: FF        .byte $FF   ; 



off_00_B45B_45:
- D 1 - I - 0x00D46B 03:B45B: FC        .byte $FC   ; 
- D 1 - I - 0x00D46C 03:B45C: 03        .byte $03   ; 
- D 1 - I - 0x00D46D 03:B45D: 04        .byte $04   ; 
- D 1 - I - 0x00D46E 03:B45E: 7D        .byte $7D   ; 



off_00_B45F_46:
- D 1 - I - 0x00D46F 03:B45F: FC        .byte $FC   ; 
- D 1 - I - 0x00D470 03:B460: 0A        .byte $0A   ; 
- D 1 - I - 0x00D471 03:B461: 02        .byte $02   ; 
- D 1 - I - 0x00D472 03:B462: 85        .byte $85   ; 



off_00_B463_47:
- D 1 - I - 0x00D473 03:B463: 85        .byte $85   ; 
- D 1 - I - 0x00D474 03:B464: 05        .byte $05   ; 
- D 1 - I - 0x00D475 03:B465: FF        .byte $FF   ; 



off_00_B466_48:
- D 1 - I - 0x00D476 03:B466: 87        .byte $87   ; 
- D 1 - I - 0x00D477 03:B467: 05        .byte $05   ; 
- D 1 - I - 0x00D478 03:B468: FF        .byte $FF   ; 



off_00_B469_49:
- D 1 - I - 0x00D479 03:B469: 88        .byte $88   ; 
- D 1 - I - 0x00D47A 03:B46A: 05        .byte $05   ; 
- D 1 - I - 0x00D47B 03:B46B: FF        .byte $FF   ; 



off_00_B46C_4A:
- - - - - - 0x00D47C 03:B46C: 89        .byte $89   ; 
- - - - - - 0x00D47D 03:B46D: 05        .byte $05   ; 
- - - - - - 0x00D47E 03:B46E: FF        .byte $FF   ; 



off_00_B46F_4B:
- - - - - - 0x00D47F 03:B46F: 8A        .byte $8A   ; 
- - - - - - 0x00D480 03:B470: 05        .byte $05   ; 
- - - - - - 0x00D481 03:B471: FF        .byte $FF   ; 



off_00_B472_4C:
- D 1 - I - 0x00D482 03:B472: FC        .byte $FC   ; 
- D 1 - I - 0x00D483 03:B473: 07        .byte $07   ; 
- D 1 - I - 0x00D484 03:B474: 04        .byte $04   ; 
- D 1 - I - 0x00D485 03:B475: 8B        .byte $8B   ; 



off_00_B476_4D:
- D 1 - I - 0x00D486 03:B476: FC        .byte $FC   ; 
- D 1 - I - 0x00D487 03:B477: 07        .byte $07   ; 
- D 1 - I - 0x00D488 03:B478: 04        .byte $04   ; 
- D 1 - I - 0x00D489 03:B479: 8F        .byte $8F   ; 



off_00_B47A_4E:
- - - - - - 0x00D48A 03:B47A: FC        .byte $FC   ; 
- - - - - - 0x00D48B 03:B47B: 07        .byte $07   ; 
- - - - - - 0x00D48C 03:B47C: 04        .byte $04   ; 
- - - - - - 0x00D48D 03:B47D: 93        .byte $93   ; 



off_00_B47E_4F:
- D 1 - I - 0x00D48E 03:B47E: FC        .byte $FC   ; 
- D 1 - I - 0x00D48F 03:B47F: 07        .byte $07   ; 
- D 1 - I - 0x00D490 03:B480: 04        .byte $04   ; 
- D 1 - I - 0x00D491 03:B481: 97        .byte $97   ; 



off_00_B482_50:
- D 1 - I - 0x00D492 03:B482: 9B        .byte $9B   ; 
- D 1 - I - 0x00D493 03:B483: 05        .byte $05   ; 
- D 1 - I - 0x00D494 03:B484: FF        .byte $FF   ; 



off_00_B485_51:
- D 1 - I - 0x00D495 03:B485: 9C        .byte $9C   ; 
- D 1 - I - 0x00D496 03:B486: 05        .byte $05   ; 
- - - - - - 0x00D497 03:B487: FF        .byte $FF   ; 



off_00_B488_52:
- D 1 - I - 0x00D498 03:B488: 9D        .byte $9D   ; 
- D 1 - I - 0x00D499 03:B489: 05        .byte $05   ; 
- D 1 - I - 0x00D49A 03:B48A: FF        .byte $FF   ; 



off_00_B48B_53:
- D 1 - I - 0x00D49B 03:B48B: 9E        .byte $9E   ; 
- D 1 - I - 0x00D49C 03:B48C: 05        .byte $05   ; 
- - - - - - 0x00D49D 03:B48D: FF        .byte $FF   ; 



off_00_B48E_54:
- D 1 - I - 0x00D49E 03:B48E: 9F        .byte $9F   ; 
- D 1 - I - 0x00D49F 03:B48F: 05        .byte $05   ; 
- D 1 - I - 0x00D4A0 03:B490: FF        .byte $FF   ; 



off_00_B491_55:
- D 1 - I - 0x00D4A1 03:B491: A0        .byte $A0   ; 
- D 1 - I - 0x00D4A2 03:B492: 05        .byte $05   ; 
- - - - - - 0x00D4A3 03:B493: FF        .byte $FF   ; 



off_00_B494_56:
- D 1 - I - 0x00D4A4 03:B494: A1        .byte $A1   ; 
- D 1 - I - 0x00D4A5 03:B495: 05        .byte $05   ; 
- - - - - - 0x00D4A6 03:B496: FF        .byte $FF   ; 



off_00_B497_57:
- D 1 - I - 0x00D4A7 03:B497: A2        .byte $A2   ; 
- D 1 - I - 0x00D4A8 03:B498: 05        .byte $05   ; 
- - - - - - 0x00D4A9 03:B499: FF        .byte $FF   ; 



off_00_B49A_58:
- D 1 - I - 0x00D4AA 03:B49A: A3        .byte $A3   ; 
- D 1 - I - 0x00D4AB 03:B49B: 05        .byte $05   ; 
- D 1 - I - 0x00D4AC 03:B49C: FF        .byte $FF   ; 



off_00_B49D_59:
- D 1 - I - 0x00D4AD 03:B49D: A4        .byte $A4   ; 
- D 1 - I - 0x00D4AE 03:B49E: 05        .byte $05   ; 
- - - - - - 0x00D4AF 03:B49F: FF        .byte $FF   ; 



off_00_B4A0_5A:
- - - - - - 0x00D4B0 03:B4A0: A5        .byte $A5   ; 
- - - - - - 0x00D4B1 03:B4A1: 05        .byte $05   ; 
- - - - - - 0x00D4B2 03:B4A2: FF        .byte $FF   ; 



off_00_B4A3_5B:
- D 1 - I - 0x00D4B3 03:B4A3: A6        .byte $A6   ; 
- D 1 - I - 0x00D4B4 03:B4A4: 05        .byte $05   ; 
- - - - - - 0x00D4B5 03:B4A5: FF        .byte $FF   ; 



off_00_B4A6_5C:
- D 1 - I - 0x00D4B6 03:B4A6: FC        .byte $FC   ; 
- D 1 - I - 0x00D4B7 03:B4A7: 07        .byte $07   ; 
- D 1 - I - 0x00D4B8 03:B4A8: 04        .byte $04   ; 
- D 1 - I - 0x00D4B9 03:B4A9: A7        .byte $A7   ; 



off_00_B4AA_5D:
- D 1 - I - 0x00D4BA 03:B4AA: FC        .byte $FC   ; 
- D 1 - I - 0x00D4BB 03:B4AB: 07        .byte $07   ; 
- D 1 - I - 0x00D4BC 03:B4AC: 04        .byte $04   ; 
- D 1 - I - 0x00D4BD 03:B4AD: AB        .byte $AB   ; 



off_00_B4AE_5E:
- D 1 - I - 0x00D4BE 03:B4AE: AF        .byte $AF   ; 
- D 1 - I - 0x00D4BF 03:B4AF: 05        .byte $05   ; 
- D 1 - I - 0x00D4C0 03:B4B0: FF        .byte $FF   ; 



off_00_B4B1_5F:
- D 1 - I - 0x00D4C1 03:B4B1: B0        .byte $B0   ; 
- D 1 - I - 0x00D4C2 03:B4B2: 05        .byte $05   ; 
- D 1 - I - 0x00D4C3 03:B4B3: FF        .byte $FF   ; 



off_00_B4B4_60:
- D 1 - I - 0x00D4C4 03:B4B4: B1        .byte $B1   ; 
- D 1 - I - 0x00D4C5 03:B4B5: 05        .byte $05   ; 
- D 1 - I - 0x00D4C6 03:B4B6: FF        .byte $FF   ; 



off_00_B4B7_61:
- D 1 - I - 0x00D4C7 03:B4B7: B2        .byte $B2   ; 
- D 1 - I - 0x00D4C8 03:B4B8: 05        .byte $05   ; 
- D 1 - I - 0x00D4C9 03:B4B9: FF        .byte $FF   ; 



off_00_B4BA_62:
- D 1 - I - 0x00D4CA 03:B4BA: FC        .byte $FC   ; 
- D 1 - I - 0x00D4CB 03:B4BB: 03        .byte $03   ; 
- D 1 - I - 0x00D4CC 03:B4BC: 04        .byte $04   ; 
- D 1 - I - 0x00D4CD 03:B4BD: B3        .byte $B3   ; 



off_00_B4BE_63:
- - - - - - 0x00D4CE 03:B4BE: FC        .byte $FC   ; 
- - - - - - 0x00D4CF 03:B4BF: 0A        .byte $0A   ; 
- - - - - - 0x00D4D0 03:B4C0: 02        .byte $02   ; 
- - - - - - 0x00D4D1 03:B4C1: BB        .byte $BB   ; 



off_00_B4C2_64:
- - - - - - 0x00D4D2 03:B4C2: BB        .byte $BB   ; 
- - - - - - 0x00D4D3 03:B4C3: 05        .byte $05   ; 
- - - - - - 0x00D4D4 03:B4C4: FF        .byte $FF   ; 



off_00_B4C5_65:
- D 1 - I - 0x00D4D5 03:B4C5: BD        .byte $BD   ; 
- D 1 - I - 0x00D4D6 03:B4C6: 05        .byte $05   ; 
- D 1 - I - 0x00D4D7 03:B4C7: FF        .byte $FF   ; 



off_00_B4C8_66:
- D 1 - I - 0x00D4D8 03:B4C8: BE        .byte $BE   ; 
- D 1 - I - 0x00D4D9 03:B4C9: 05        .byte $05   ; 
- - - - - - 0x00D4DA 03:B4CA: FF        .byte $FF   ; 



off_00_B4CB_67:
- - - - - - 0x00D4DB 03:B4CB: BF        .byte $BF   ; 
- - - - - - 0x00D4DC 03:B4CC: 05        .byte $05   ; 
- - - - - - 0x00D4DD 03:B4CD: FF        .byte $FF   ; 



off_00_B4CE_68:
- - - - - - 0x00D4DE 03:B4CE: C0        .byte $C0   ; 
- - - - - - 0x00D4DF 03:B4CF: 05        .byte $05   ; 
- - - - - - 0x00D4E0 03:B4D0: FF        .byte $FF   ; 



_off019_D4E1_01:
- D 1 - I - 0x00D4E1 03:B4D1: 49 B5     .word off_01_B549_01
- D 1 - I - 0x00D4E3 03:B4D3: 4D B5     .word off_01_B54D_02
- D 1 - I - 0x00D4E5 03:B4D5: 54 B5     .word off_01_B554_03
- D 1 - I - 0x00D4E7 03:B4D7: 5B B5     .word off_01_B55B_04
- D 1 - I - 0x00D4E9 03:B4D9: 5F B5     .word off_01_B55F_05
- D 1 - I - 0x00D4EB 03:B4DB: 63 B5     .word off_01_B563_06
- D 1 - I - 0x00D4ED 03:B4DD: 67 B5     .word off_01_B567_07
- D 1 - I - 0x00D4EF 03:B4DF: 6B B5     .word off_01_B56B_08
- D 1 - I - 0x00D4F1 03:B4E1: 6F B5     .word off_01_B56F_09
- - - - - - 0x00D4F3 03:B4E3: 72 B5     .word off_01_B572_0A
- - - - - - 0x00D4F5 03:B4E5: 75 B5     .word off_01_B575_0B
- - - - - - 0x00D4F7 03:B4E7: 78 B5     .word off_01_B578_0C
- - - - - - 0x00D4F9 03:B4E9: 7B B5     .word off_01_B57B_0D
- - - - - - 0x00D4FB 03:B4EB: 7E B5     .word off_01_B57E_0E
- D 1 - I - 0x00D4FD 03:B4ED: 81 B5     .word off_01_B581_0F
- - - - - - 0x00D4FF 03:B4EF: 84 B5     .word off_01_B584_10
- D 1 - I - 0x00D501 03:B4F1: 87 B5     .word off_01_B587_11
- - - - - - 0x00D503 03:B4F3: 8A B5     .word off_01_B58A_12
- D 1 - I - 0x00D505 03:B4F5: 8D B5     .word off_01_B58D_13
- D 1 - I - 0x00D507 03:B4F7: 90 B5     .word off_01_B590_14
- D 1 - I - 0x00D509 03:B4F9: 93 B5     .word off_01_B593_15
- - - - - - 0x00D50B 03:B4FB: 96 B5     .word off_01_B596_16
- D 1 - I - 0x00D50D 03:B4FD: 99 B5     .word off_01_B599_17
- D 1 - I - 0x00D50F 03:B4FF: 9C B5     .word off_01_B59C_18
- - - - - - 0x00D511 03:B501: 9F B5     .word off_01_B59F_19
- - - - - - 0x00D513 03:B503: A2 B5     .word off_01_B5A2_1A
- - - - - - 0x00D515 03:B505: A5 B5     .word off_01_B5A5_1B
- - - - - - 0x00D517 03:B507: A8 B5     .word off_01_B5A8_1C
- D 1 - I - 0x00D519 03:B509: AB B5     .word off_01_B5AB_1D
- D 1 - I - 0x00D51B 03:B50B: BB B5     .word off_01_B5BB_1E
- D 1 - I - 0x00D51D 03:B50D: BF B5     .word off_01_B5BF_1F
- D 1 - I - 0x00D51F 03:B50F: C6 B5     .word off_01_B5C6_20
- D 1 - I - 0x00D521 03:B511: CD B5     .word off_01_B5CD_21
- D 1 - I - 0x00D523 03:B513: D4 B5     .word off_01_B5D4_22
- D 1 - I - 0x00D525 03:B515: DB B5     .word off_01_B5DB_23
- D 1 - I - 0x00D527 03:B517: DF B5     .word off_01_B5DF_24
- D 1 - I - 0x00D529 03:B519: E3 B5     .word off_01_B5E3_25
- D 1 - I - 0x00D52B 03:B51B: E7 B5     .word off_01_B5E7_26
- D 1 - I - 0x00D52D 03:B51D: EA B5     .word off_01_B5EA_27
- D 1 - I - 0x00D52F 03:B51F: ED B5     .word off_01_B5ED_28
- D 1 - I - 0x00D531 03:B521: F0 B5     .word off_01_B5F0_29
- D 1 - I - 0x00D533 03:B523: F3 B5     .word off_01_B5F3_2A
- - - - - - 0x00D535 03:B525: F6 B5     .word off_01_B5F6_2B
- D 1 - I - 0x00D537 03:B527: F9 B5     .word off_01_B5F9_2C
- D 1 - I - 0x00D539 03:B529: FC B5     .word off_01_B5FC_2D
- D 1 - I - 0x00D53B 03:B52B: FF B5     .word off_01_B5FF_2E
- D 1 - I - 0x00D53D 03:B52D: 02 B6     .word off_01_B602_2F
- D 1 - I - 0x00D53F 03:B52F: 05 B6     .word off_01_B605_30
- D 1 - I - 0x00D541 03:B531: 08 B6     .word off_01_B608_31
- D 1 - I - 0x00D543 03:B533: 0B B6     .word off_01_B60B_32
- D 1 - I - 0x00D545 03:B535: 0E B6     .word off_01_B60E_33
- D 1 - I - 0x00D547 03:B537: 11 B6     .word off_01_B611_34
- D 1 - I - 0x00D549 03:B539: 14 B6     .word off_01_B614_35
- D 1 - I - 0x00D54B 03:B53B: 17 B6     .word off_01_B617_36
- D 1 - I - 0x00D54D 03:B53D: 1A B6     .word off_01_B61A_37
- - - - - - 0x00D54F 03:B53F: 1D B6     .word off_01_B61D_38
- - - - - - 0x00D551 03:B541: 20 B6     .word off_01_B620_39
- - - - - - 0x00D553 03:B543: 23 B6     .word off_01_B623_3A
- D 1 - I - 0x00D555 03:B545: B6 B5     .word off_01_B5B6_3B
- D 1 - I - 0x00D557 03:B547: 2E B6     .word off_01_B62E_3C


; ??? todo
off_01_B549_01:
- D 1 - I - 0x00D559 03:B549: FC        .byte $FC   ; 
- D 1 - I - 0x00D55A 03:B54A: 07        .byte $07   ; 
- D 1 - I - 0x00D55B 03:B54B: 04        .byte $04   ; 
- D 1 - I - 0x00D55C 03:B54C: 01        .byte $01   ; 



off_01_B54D_02:
- D 1 - I - 0x00D55D 03:B54D: FD        .byte $FD   ; 
- D 1 - I - 0x00D55E 03:B54E: 07        .byte $07   ; 
- D 1 - I - 0x00D55F 03:B54F: 05        .byte $05   ; 
- D 1 - I - 0x00D560 03:B550: 06        .byte $06   ; 
- D 1 - I - 0x00D561 03:B551: 07        .byte $07   ; 
- D 1 - I - 0x00D562 03:B552: 3B        .byte $3B   ; 
- D 1 - I - 0x00D563 03:B553: FF        .byte $FF   ; 



off_01_B554_03:
- D 1 - I - 0x00D564 03:B554: FD        .byte $FD   ; 
- D 1 - I - 0x00D565 03:B555: 07        .byte $07   ; 
- D 1 - I - 0x00D566 03:B556: 08        .byte $08   ; 
- - - - - - 0x00D567 03:B557: 09        .byte $09   ; 
- - - - - - 0x00D568 03:B558: 0A        .byte $0A   ; 
- - - - - - 0x00D569 03:B559: 3C        .byte $3C   ; 
- - - - - - 0x00D56A 03:B55A: FF        .byte $FF   ; 



off_01_B55B_04:
- D 1 - I - 0x00D56B 03:B55B: FC        .byte $FC   ; 
- D 1 - I - 0x00D56C 03:B55C: 07        .byte $07   ; 
- D 1 - I - 0x00D56D 03:B55D: 04        .byte $04   ; 
- D 1 - I - 0x00D56E 03:B55E: 0B        .byte $0B   ; 



off_01_B55F_05:
- D 1 - I - 0x00D56F 03:B55F: FC        .byte $FC   ; 
- D 1 - I - 0x00D570 03:B560: 07        .byte $07   ; 
- D 1 - I - 0x00D571 03:B561: 04        .byte $04   ; 
- D 1 - I - 0x00D572 03:B562: 0F        .byte $0F   ; 



off_01_B563_06:
- D 1 - I - 0x00D573 03:B563: FC        .byte $FC   ; 
- D 1 - I - 0x00D574 03:B564: 07        .byte $07   ; 
- D 1 - I - 0x00D575 03:B565: 04        .byte $04   ; 
- D 1 - I - 0x00D576 03:B566: 13        .byte $13   ; 



off_01_B567_07:
- D 1 - I - 0x00D577 03:B567: FC        .byte $FC   ; 
- D 1 - I - 0x00D578 03:B568: 07        .byte $07   ; 
- D 1 - I - 0x00D579 03:B569: 04        .byte $04   ; 
- D 1 - I - 0x00D57A 03:B56A: 17        .byte $17   ; 



off_01_B56B_08:
- D 1 - I - 0x00D57B 03:B56B: FC        .byte $FC   ; 
- D 1 - I - 0x00D57C 03:B56C: 07        .byte $07   ; 
- D 1 - I - 0x00D57D 03:B56D: 04        .byte $04   ; 
- D 1 - I - 0x00D57E 03:B56E: 1B        .byte $1B   ; 



off_01_B56F_09:
- D 1 - I - 0x00D57F 03:B56F: 1F        .byte $1F   ; 
- D 1 - I - 0x00D580 03:B570: 05        .byte $05   ; 
- - - - - - 0x00D581 03:B571: FF        .byte $FF   ; 



off_01_B572_0A:
- - - - - - 0x00D582 03:B572: 21        .byte $21   ; 
- - - - - - 0x00D583 03:B573: 05        .byte $05   ; 
- - - - - - 0x00D584 03:B574: FF        .byte $FF   ; 



off_01_B575_0B:
- - - - - - 0x00D585 03:B575: 23        .byte $23   ; 
- - - - - - 0x00D586 03:B576: 05        .byte $05   ; 
- - - - - - 0x00D587 03:B577: FF        .byte $FF   ; 



off_01_B578_0C:
- - - - - - 0x00D588 03:B578: 26        .byte $26   ; 
- - - - - - 0x00D589 03:B579: 05        .byte $05   ; 
- - - - - - 0x00D58A 03:B57A: FF        .byte $FF   ; 



off_01_B57B_0D:
- - - - - - 0x00D58B 03:B57B: 28        .byte $28   ; 
- - - - - - 0x00D58C 03:B57C: 05        .byte $05   ; 
- - - - - - 0x00D58D 03:B57D: FF        .byte $FF   ; 



off_01_B57E_0E:
- - - - - - 0x00D58E 03:B57E: 29        .byte $29   ; 
- - - - - - 0x00D58F 03:B57F: 05        .byte $05   ; 
- - - - - - 0x00D590 03:B580: FF        .byte $FF   ; 



off_01_B581_0F:
- D 1 - I - 0x00D591 03:B581: 2B        .byte $2B   ; 
- D 1 - I - 0x00D592 03:B582: 05        .byte $05   ; 
- - - - - - 0x00D593 03:B583: FF        .byte $FF   ; 



off_01_B584_10:
- - - - - - 0x00D594 03:B584: 2E        .byte $2E   ; 
- - - - - - 0x00D595 03:B585: 05        .byte $05   ; 
- - - - - - 0x00D596 03:B586: FF        .byte $FF   ; 



off_01_B587_11:
- D 1 - I - 0x00D597 03:B587: 20        .byte $20   ; 
- D 1 - I - 0x00D598 03:B588: 05        .byte $05   ; 
- D 1 - I - 0x00D599 03:B589: FF        .byte $FF   ; 



off_01_B58A_12:
- - - - - - 0x00D59A 03:B58A: 22        .byte $22   ; 
- - - - - - 0x00D59B 03:B58B: 05        .byte $05   ; 
- - - - - - 0x00D59C 03:B58C: FF        .byte $FF   ; 



off_01_B58D_13:
- D 1 - I - 0x00D59D 03:B58D: 24        .byte $24   ; 
- D 1 - I - 0x00D59E 03:B58E: 05        .byte $05   ; 
- - - - - - 0x00D59F 03:B58F: FF        .byte $FF   ; 



off_01_B590_14:
- D 1 - I - 0x00D5A0 03:B590: 25        .byte $25   ; 
- D 1 - I - 0x00D5A1 03:B591: 05        .byte $05   ; 
- - - - - - 0x00D5A2 03:B592: FF        .byte $FF   ; 



off_01_B593_15:
- D 1 - I - 0x00D5A3 03:B593: 27        .byte $27   ; 
- D 1 - I - 0x00D5A4 03:B594: 05        .byte $05   ; 
- - - - - - 0x00D5A5 03:B595: FF        .byte $FF   ; 



off_01_B596_16:
- - - - - - 0x00D5A6 03:B596: 2A        .byte $2A   ; 
- - - - - - 0x00D5A7 03:B597: 05        .byte $05   ; 
- - - - - - 0x00D5A8 03:B598: FF        .byte $FF   ; 



off_01_B599_17:
- D 1 - I - 0x00D5A9 03:B599: 2C        .byte $2C   ; 
- D 1 - I - 0x00D5AA 03:B59A: 05        .byte $05   ; 
- - - - - - 0x00D5AB 03:B59B: FF        .byte $FF   ; 



off_01_B59C_18:
- D 1 - I - 0x00D5AC 03:B59C: 2D        .byte $2D   ; 
- D 1 - I - 0x00D5AD 03:B59D: 05        .byte $05   ; 
- - - - - - 0x00D5AE 03:B59E: FF        .byte $FF   ; 



off_01_B59F_19:
- - - - - - 0x00D5AF 03:B59F: 3D        .byte $3D   ; 
- - - - - - 0x00D5B0 03:B5A0: 05        .byte $05   ; 
- - - - - - 0x00D5B1 03:B5A1: FF        .byte $FF   ; 



off_01_B5A2_1A:
- - - - - - 0x00D5B2 03:B5A2: 3F        .byte $3F   ; 
- - - - - - 0x00D5B3 03:B5A3: 05        .byte $05   ; 
- - - - - - 0x00D5B4 03:B5A4: FF        .byte $FF   ; 



off_01_B5A5_1B:
- - - - - - 0x00D5B5 03:B5A5: 3E        .byte $3E   ; 
- - - - - - 0x00D5B6 03:B5A6: 05        .byte $05   ; 
- - - - - - 0x00D5B7 03:B5A7: FF        .byte $FF   ; 



off_01_B5A8_1C:
- - - - - - 0x00D5B8 03:B5A8: 40        .byte $40   ; 
- - - - - - 0x00D5B9 03:B5A9: 05        .byte $05   ; 
- - - - - - 0x00D5BA 03:B5AA: FF        .byte $FF   ; 



off_01_B5AB_1D:
- D 1 - I - 0x00D5BB 03:B5AB: 41        .byte $41   ; 
- D 1 - I - 0x00D5BC 03:B5AC: 0B        .byte $0B   ; 
- D 1 - I - 0x00D5BD 03:B5AD: 42        .byte $42   ; 
- D 1 - I - 0x00D5BE 03:B5AE: 0B        .byte $0B   ; 
- D 1 - I - 0x00D5BF 03:B5AF: 43        .byte $43   ; 
- D 1 - I - 0x00D5C0 03:B5B0: 0B        .byte $0B   ; 
- D 1 - I - 0x00D5C1 03:B5B1: 44        .byte $44   ; 
- D 1 - I - 0x00D5C2 03:B5B2: 08        .byte $08   ; 
- D 1 - I - 0x00D5C3 03:B5B3: 45        .byte $45   ; 
- D 1 - I - 0x00D5C4 03:B5B4: 08        .byte $08   ; 
- - - - - - 0x00D5C5 03:B5B5: FE        .byte $FE   ; 



off_01_B5B6_3B:
- D 1 - I - 0x00D5C6 03:B5B6: 41        .byte $41   ; 
- D 1 - I - 0x00D5C7 03:B5B7: 0B        .byte $0B   ; 
- D 1 - I - 0x00D5C8 03:B5B8: 42        .byte $42   ; 
- D 1 - I - 0x00D5C9 03:B5B9: 0B        .byte $0B   ; 
- D 1 - I - 0x00D5CA 03:B5BA: FE        .byte $FE   ; 



off_01_B5BB_1E:
- D 1 - I - 0x00D5CB 03:B5BB: FC        .byte $FC   ; 
- D 1 - I - 0x00D5CC 03:B5BC: 07        .byte $07   ; 
- D 1 - I - 0x00D5CD 03:B5BD: 04        .byte $04   ; 
- D 1 - I - 0x00D5CE 03:B5BE: 48        .byte $48   ; 



off_01_B5BF_1F:
- D 1 - I - 0x00D5CF 03:B5BF: FD        .byte $FD   ; 
- D 1 - I - 0x00D5D0 03:B5C0: 07        .byte $07   ; 
- D 1 - I - 0x00D5D1 03:B5C1: 4C        .byte $4C   ; 
- D 1 - I - 0x00D5D2 03:B5C2: 4D        .byte $4D   ; 
- D 1 - I - 0x00D5D3 03:B5C3: 4E        .byte $4E   ; 
- D 1 - I - 0x00D5D4 03:B5C4: 82        .byte $82   ; 
- D 1 - I - 0x00D5D5 03:B5C5: FF        .byte $FF   ; 



off_01_B5C6_20:
- D 1 - I - 0x00D5D6 03:B5C6: FD        .byte $FD   ; 
- D 1 - I - 0x00D5D7 03:B5C7: 07        .byte $07   ; 
- D 1 - I - 0x00D5D8 03:B5C8: 4F        .byte $4F   ; 
- D 1 - I - 0x00D5D9 03:B5C9: 50        .byte $50   ; 
- D 1 - I - 0x00D5DA 03:B5CA: 51        .byte $51   ; 
- D 1 - I - 0x00D5DB 03:B5CB: 83        .byte $83   ; 
- D 1 - I - 0x00D5DC 03:B5CC: FF        .byte $FF   ; 



off_01_B5CD_21:
- D 1 - I - 0x00D5DD 03:B5CD: FD        .byte $FD   ; 
- D 1 - I - 0x00D5DE 03:B5CE: 07        .byte $07   ; 
- D 1 - I - 0x00D5DF 03:B5CF: 52        .byte $52   ; 
- D 1 - I - 0x00D5E0 03:B5D0: 53        .byte $53   ; 
- D 1 - I - 0x00D5E1 03:B5D1: 54        .byte $54   ; 
- D 1 - I - 0x00D5E2 03:B5D2: 80        .byte $80   ; 
- D 1 - I - 0x00D5E3 03:B5D3: FF        .byte $FF   ; 



off_01_B5D4_22:
- D 1 - I - 0x00D5E4 03:B5D4: FD        .byte $FD   ; 
- D 1 - I - 0x00D5E5 03:B5D5: 07        .byte $07   ; 
- D 1 - I - 0x00D5E6 03:B5D6: 55        .byte $55   ; 
- D 1 - I - 0x00D5E7 03:B5D7: 56        .byte $56   ; 
- D 1 - I - 0x00D5E8 03:B5D8: 57        .byte $57   ; 
- D 1 - I - 0x00D5E9 03:B5D9: 81        .byte $81   ; 
- D 1 - I - 0x00D5EA 03:B5DA: FF        .byte $FF   ; 



off_01_B5DB_23:
- D 1 - I - 0x00D5EB 03:B5DB: FC        .byte $FC   ; 
- D 1 - I - 0x00D5EC 03:B5DC: 07        .byte $07   ; 
- D 1 - I - 0x00D5ED 03:B5DD: 04        .byte $04   ; 
- D 1 - I - 0x00D5EE 03:B5DE: 58        .byte $58   ; 



off_01_B5DF_24:
- D 1 - I - 0x00D5EF 03:B5DF: FC        .byte $FC   ; 
- D 1 - I - 0x00D5F0 03:B5E0: 07        .byte $07   ; 
- D 1 - I - 0x00D5F1 03:B5E1: 04        .byte $04   ; 
- D 1 - I - 0x00D5F2 03:B5E2: 5C        .byte $5C   ; 



off_01_B5E3_25:
- D 1 - I - 0x00D5F3 03:B5E3: FC        .byte $FC   ; 
- D 1 - I - 0x00D5F4 03:B5E4: 07        .byte $07   ; 
- D 1 - I - 0x00D5F5 03:B5E5: 04        .byte $04   ; 
- D 1 - I - 0x00D5F6 03:B5E6: 60        .byte $60   ; 



off_01_B5E7_26:
- D 1 - I - 0x00D5F7 03:B5E7: 65        .byte $65   ; 
- D 1 - I - 0x00D5F8 03:B5E8: 07        .byte $07   ; 
- D 1 - I - 0x00D5F9 03:B5E9: FF        .byte $FF   ; 



off_01_B5EA_27:
- D 1 - I - 0x00D5FA 03:B5EA: 67        .byte $67   ; 
- D 1 - I - 0x00D5FB 03:B5EB: 07        .byte $07   ; 
- - - - - - 0x00D5FC 03:B5EC: FF        .byte $FF   ; 



off_01_B5ED_28:
- D 1 - I - 0x00D5FD 03:B5ED: 69        .byte $69   ; 
- D 1 - I - 0x00D5FE 03:B5EE: 07        .byte $07   ; 
- - - - - - 0x00D5FF 03:B5EF: FF        .byte $FF   ; 



off_01_B5F0_29:
- D 1 - I - 0x00D600 03:B5F0: 6A        .byte $6A   ; 
- D 1 - I - 0x00D601 03:B5F1: 07        .byte $07   ; 
- - - - - - 0x00D602 03:B5F2: FF        .byte $FF   ; 



off_01_B5F3_2A:
- D 1 - I - 0x00D603 03:B5F3: 6C        .byte $6C   ; 
- D 1 - I - 0x00D604 03:B5F4: 07        .byte $07   ; 
- - - - - - 0x00D605 03:B5F5: FF        .byte $FF   ; 



off_01_B5F6_2B:
- - - - - - 0x00D606 03:B5F6: 6F        .byte $6F   ; 
- - - - - - 0x00D607 03:B5F7: 07        .byte $07   ; 
- - - - - - 0x00D608 03:B5F8: FF        .byte $FF   ; 



off_01_B5F9_2C:
- D 1 - I - 0x00D609 03:B5F9: 71        .byte $71   ; 
- D 1 - I - 0x00D60A 03:B5FA: 07        .byte $07   ; 
- - - - - - 0x00D60B 03:B5FB: FF        .byte $FF   ; 



off_01_B5FC_2D:
- D 1 - I - 0x00D60C 03:B5FC: 73        .byte $73   ; 
- D 1 - I - 0x00D60D 03:B5FD: 07        .byte $07   ; 
- - - - - - 0x00D60E 03:B5FE: FF        .byte $FF   ; 



off_01_B5FF_2E:
- D 1 - I - 0x00D60F 03:B5FF: 64        .byte $64   ; 
- D 1 - I - 0x00D610 03:B600: 05        .byte $05   ; 
- D 1 - I - 0x00D611 03:B601: FF        .byte $FF   ; 



off_01_B602_2F:
- D 1 - I - 0x00D612 03:B602: 66        .byte $66   ; 
- D 1 - I - 0x00D613 03:B603: 05        .byte $05   ; 
- D 1 - I - 0x00D614 03:B604: FF        .byte $FF   ; 



off_01_B605_30:
- D 1 - I - 0x00D615 03:B605: 68        .byte $68   ; 
- D 1 - I - 0x00D616 03:B606: 05        .byte $05   ; 
- D 1 - I - 0x00D617 03:B607: FF        .byte $FF   ; 



off_01_B608_31:
- D 1 - I - 0x00D618 03:B608: 6B        .byte $6B   ; 
- D 1 - I - 0x00D619 03:B609: 05        .byte $05   ; 
- D 1 - I - 0x00D61A 03:B60A: FF        .byte $FF   ; 



off_01_B60B_32:
- D 1 - I - 0x00D61B 03:B60B: 6D        .byte $6D   ; 
- D 1 - I - 0x00D61C 03:B60C: 05        .byte $05   ; 
- D 1 - I - 0x00D61D 03:B60D: FF        .byte $FF   ; 



off_01_B60E_33:
- D 1 - I - 0x00D61E 03:B60E: 6E        .byte $6E   ; 
- D 1 - I - 0x00D61F 03:B60F: 05        .byte $05   ; 
- D 1 - I - 0x00D620 03:B610: FF        .byte $FF   ; 



off_01_B611_34:
- D 1 - I - 0x00D621 03:B611: 70        .byte $70   ; 
- D 1 - I - 0x00D622 03:B612: 05        .byte $05   ; 
- D 1 - I - 0x00D623 03:B613: FF        .byte $FF   ; 



off_01_B614_35:
- D 1 - I - 0x00D624 03:B614: 72        .byte $72   ; 
- D 1 - I - 0x00D625 03:B615: 05        .byte $05   ; 
- D 1 - I - 0x00D626 03:B616: FF        .byte $FF   ; 



off_01_B617_36:
- D 1 - I - 0x00D627 03:B617: 84        .byte $84   ; 
- D 1 - I - 0x00D628 03:B618: 05        .byte $05   ; 
- D 1 - I - 0x00D629 03:B619: FF        .byte $FF   ; 



off_01_B61A_37:
- D 1 - I - 0x00D62A 03:B61A: 86        .byte $86   ; 
- D 1 - I - 0x00D62B 03:B61B: 05        .byte $05   ; 
- D 1 - I - 0x00D62C 03:B61C: FF        .byte $FF   ; 



off_01_B61D_38:
- - - - - - 0x00D62D 03:B61D: 85        .byte $85   ; 
- - - - - - 0x00D62E 03:B61E: 05        .byte $05   ; 
- - - - - - 0x00D62F 03:B61F: FF        .byte $FF   ; 



off_01_B620_39:
- - - - - - 0x00D630 03:B620: 87        .byte $87   ; 
- - - - - - 0x00D631 03:B621: 05        .byte $05   ; 
- - - - - - 0x00D632 03:B622: FF        .byte $FF   ; 



off_01_B623_3A:
- - - - - - 0x00D633 03:B623: 88        .byte $88   ; 
- - - - - - 0x00D634 03:B624: 0B        .byte $0B   ; 
- - - - - - 0x00D635 03:B625: 89        .byte $89   ; 
- - - - - - 0x00D636 03:B626: 0B        .byte $0B   ; 
- - - - - - 0x00D637 03:B627: 8A        .byte $8A   ; 
- - - - - - 0x00D638 03:B628: 0B        .byte $0B   ; 
- - - - - - 0x00D639 03:B629: 8B        .byte $8B   ; 
- - - - - - 0x00D63A 03:B62A: 08        .byte $08   ; 
- - - - - - 0x00D63B 03:B62B: 8C        .byte $8C   ; 
- - - - - - 0x00D63C 03:B62C: 08        .byte $08   ; 
- - - - - - 0x00D63D 03:B62D: FE        .byte $FE   ; 



off_01_B62E_3C:
- D 1 - I - 0x00D63E 03:B62E: 88        .byte $88   ; 
- D 1 - I - 0x00D63F 03:B62F: 0B        .byte $0B   ; 
- D 1 - I - 0x00D640 03:B630: 89        .byte $89   ; 
- D 1 - I - 0x00D641 03:B631: 0B        .byte $0B   ; 
- D 1 - I - 0x00D642 03:B632: FE        .byte $FE   ; 



_off019_D643_02:
- D 1 - I - 0x00D643 03:B633: CB B6     .word off_02_B6CB_01
- D 1 - I - 0x00D645 03:B635: CF B6     .word off_02_B6CF_02
- - - - - - 0x00D647 03:B637: D3 B6     .word off_02_B6D3_03
- D 1 - I - 0x00D649 03:B639: D7 B6     .word off_02_B6D7_04
- - - - - - 0x00D64B 03:B63B: DB B6     .word off_02_B6DB_05
- - - - - - 0x00D64D 03:B63D: DF B6     .word off_02_B6DF_06
- - - - - - 0x00D64F 03:B63F: E3 B6     .word off_02_B6E3_07
- - - - - - 0x00D651 03:B641: E7 B6     .word off_02_B6E7_08
- D 1 - I - 0x00D653 03:B643: EB B6     .word off_02_B6EB_09
- - - - - - 0x00D655 03:B645: EE B6     .word off_02_B6EE_0A
- - - - - - 0x00D657 03:B647: F1 B6     .word off_02_B6F1_0B
- - - - - - 0x00D659 03:B649: F4 B6     .word off_02_B6F4_0C
- - - - - - 0x00D65B 03:B64B: F7 B6     .word off_02_B6F7_0D
- - - - - - 0x00D65D 03:B64D: FA B6     .word off_02_B6FA_0E
- - - - - - 0x00D65F 03:B64F: FD B6     .word off_02_B6FD_0F
- - - - - - 0x00D661 03:B651: 00 B7     .word off_02_B700_10
- - - - - - 0x00D663 03:B653: 03 B7     .word off_02_B703_11
- - - - - - 0x00D665 03:B655: 06 B7     .word off_02_B706_12
- - - - - - 0x00D667 03:B657: 09 B7     .word off_02_B709_13
- - - - - - 0x00D669 03:B659: 0C B7     .word off_02_B70C_14
- - - - - - 0x00D66B 03:B65B: 0F B7     .word off_02_B70F_15
- - - - - - 0x00D66D 03:B65D: 12 B7     .word off_02_B712_16
- - - - - - 0x00D66F 03:B65F: 15 B7     .word off_02_B715_17
- - - - - - 0x00D671 03:B661: 18 B7     .word off_02_B718_18
- - - - - - 0x00D673 03:B663: 1B B7     .word off_02_B71B_19
- - - - - - 0x00D675 03:B665: 28 B7     .word off_02_B728_1A
- - - - - - 0x00D677 03:B667: 2D B7     .word off_02_B72D_1B
- - - - - - 0x00D679 03:B669: 30 B7     .word off_02_B730_1C
- - - - - - 0x00D67B 03:B66B: 33 B7     .word off_02_B733_1D
- - - - - - 0x00D67D 03:B66D: 36 B7     .word off_02_B736_1E
- D 1 - I - 0x00D67F 03:B66F: 39 B7     .word off_02_B739_1F
- D 1 - I - 0x00D681 03:B671: 3D B7     .word off_02_B73D_20
- D 1 - I - 0x00D683 03:B673: 41 B7     .word off_02_B741_21
- D 1 - I - 0x00D685 03:B675: 45 B7     .word off_02_B745_22
- D 1 - I - 0x00D687 03:B677: 49 B7     .word off_02_B749_23
- D 1 - I - 0x00D689 03:B679: 4D B7     .word off_02_B74D_24
- D 1 - I - 0x00D68B 03:B67B: 51 B7     .word off_02_B751_25
- D 1 - I - 0x00D68D 03:B67D: 55 B7     .word off_02_B755_26
- D 1 - I - 0x00D68F 03:B67F: 59 B7     .word off_02_B759_27
- - - - - - 0x00D691 03:B681: 5C B7     .word off_02_B75C_28
- - - - - - 0x00D693 03:B683: 5F B7     .word off_02_B75F_29
- D 1 - I - 0x00D695 03:B685: 62 B7     .word off_02_B762_2A
- D 1 - I - 0x00D697 03:B687: 65 B7     .word off_02_B765_2B
- - - - - - 0x00D699 03:B689: 68 B7     .word off_02_B768_2C
- - - - - - 0x00D69B 03:B68B: 6B B7     .word off_02_B76B_2D
- D 1 - I - 0x00D69D 03:B68D: 6E B7     .word off_02_B76E_2E
- D 1 - I - 0x00D69F 03:B68F: 71 B7     .word off_02_B771_2F
- - - - - - 0x00D6A1 03:B691: 74 B7     .word off_02_B774_30
- - - - - - 0x00D6A3 03:B693: 77 B7     .word off_02_B777_31
- D 1 - I - 0x00D6A5 03:B695: 7A B7     .word off_02_B77A_32
- D 1 - I - 0x00D6A7 03:B697: 7D B7     .word off_02_B77D_33
- - - - - - 0x00D6A9 03:B699: 80 B7     .word off_02_B780_34
- - - - - - 0x00D6AB 03:B69B: 83 B7     .word off_02_B783_35
- D 1 - I - 0x00D6AD 03:B69D: 86 B7     .word off_02_B786_36
- - - - - - 0x00D6AF 03:B69F: 89 B7     .word off_02_B789_37
- - - - - - 0x00D6B1 03:B6A1: 8C B7     .word off_02_B78C_38
- D 1 - I - 0x00D6B3 03:B6A3: 8F B7     .word off_02_B78F_39
- D 1 - I - 0x00D6B5 03:B6A5: 92 B7     .word off_02_B792_3A
- - - - - - 0x00D6B7 03:B6A7: 95 B7     .word off_02_B795_3B
- - - - - - 0x00D6B9 03:B6A9: A2 B7     .word off_02_B7A2_3C
- D 1 - I - 0x00D6BB 03:B6AB: A7 B7     .word off_02_B7A7_3D
- D 1 - I - 0x00D6BD 03:B6AD: AB B7     .word off_02_B7AB_3E
- D 1 - I - 0x00D6BF 03:B6AF: AF B7     .word off_02_B7AF_3F
- D 1 - I - 0x00D6C1 03:B6B1: B3 B7     .word off_02_B7B3_40
- D 1 - I - 0x00D6C3 03:B6B3: B7 B7     .word off_02_B7B7_41
- D 1 - I - 0x00D6C5 03:B6B5: BB B7     .word off_02_B7BB_42
- D 1 - I - 0x00D6C7 03:B6B7: BF B7     .word off_02_B7BF_43
- D 1 - I - 0x00D6C9 03:B6B9: C3 B7     .word off_02_B7C3_44
- - - - - - 0x00D6CB 03:B6BB: C7 B7     .word off_02_B7C7_45
- D 1 - I - 0x00D6CD 03:B6BD: CA B7     .word off_02_B7CA_46
- D 1 - I - 0x00D6CF 03:B6BF: CD B7     .word off_02_B7CD_47
- - - - - - 0x00D6D1 03:B6C1: D0 B7     .word off_02_B7D0_48
- D 1 - I - 0x00D6D3 03:B6C3: D3 B7     .word off_02_B7D3_49
- D 1 - I - 0x00D6D5 03:B6C5: D6 B7     .word off_02_B7D6_4A
- D 1 - I - 0x00D6D7 03:B6C7: D9 B7     .word off_02_B7D9_4B
- D 1 - I - 0x00D6D9 03:B6C9: DC B7     .word off_02_B7DC_4C



off_02_B6CB_01:
- D 1 - I - 0x00D6DB 03:B6CB: FC        .byte $FC   ; 
- D 1 - I - 0x00D6DC 03:B6CC: 07        .byte $07   ; 
- D 1 - I - 0x00D6DD 03:B6CD: 04        .byte $04   ; 
- D 1 - I - 0x00D6DE 03:B6CE: 01        .byte $01   ; 



off_02_B6CF_02:
- D 1 - I - 0x00D6DF 03:B6CF: FC        .byte $FC   ; 
- D 1 - I - 0x00D6E0 03:B6D0: 07        .byte $07   ; 
- D 1 - I - 0x00D6E1 03:B6D1: 04        .byte $04   ; 
- D 1 - I - 0x00D6E2 03:B6D2: 05        .byte $05   ; 



off_02_B6D3_03:
- - - - - - 0x00D6E3 03:B6D3: FC        .byte $FC   ; 
- - - - - - 0x00D6E4 03:B6D4: 07        .byte $07   ; 
- - - - - - 0x00D6E5 03:B6D5: 04        .byte $04   ; 
- - - - - - 0x00D6E6 03:B6D6: 09        .byte $09   ; 



off_02_B6D7_04:
- D 1 - I - 0x00D6E7 03:B6D7: FC        .byte $FC   ; 
- D 1 - I - 0x00D6E8 03:B6D8: 07        .byte $07   ; 
- D 1 - I - 0x00D6E9 03:B6D9: 04        .byte $04   ; 
- D 1 - I - 0x00D6EA 03:B6DA: 0D        .byte $0D   ; 



off_02_B6DB_05:
- - - - - - 0x00D6EB 03:B6DB: FC        .byte $FC   ; 
- - - - - - 0x00D6EC 03:B6DC: 07        .byte $07   ; 
- - - - - - 0x00D6ED 03:B6DD: 04        .byte $04   ; 
- - - - - - 0x00D6EE 03:B6DE: 11        .byte $11   ; 



off_02_B6DF_06:
- - - - - - 0x00D6EF 03:B6DF: FC        .byte $FC   ; 
- - - - - - 0x00D6F0 03:B6E0: 07        .byte $07   ; 
- - - - - - 0x00D6F1 03:B6E1: 04        .byte $04   ; 
- - - - - - 0x00D6F2 03:B6E2: 15        .byte $15   ; 



off_02_B6E3_07:
- - - - - - 0x00D6F3 03:B6E3: FC        .byte $FC   ; 
- - - - - - 0x00D6F4 03:B6E4: 07        .byte $07   ; 
- - - - - - 0x00D6F5 03:B6E5: 04        .byte $04   ; 
- - - - - - 0x00D6F6 03:B6E6: 19        .byte $19   ; 



off_02_B6E7_08:
- - - - - - 0x00D6F7 03:B6E7: FC        .byte $FC   ; 
- - - - - - 0x00D6F8 03:B6E8: 09        .byte $09   ; 
- - - - - - 0x00D6F9 03:B6E9: 04        .byte $04   ; 
- - - - - - 0x00D6FA 03:B6EA: 1D        .byte $1D   ; 



off_02_B6EB_09:
- D 1 - I - 0x00D6FB 03:B6EB: 21        .byte $21   ; 
- D 1 - I - 0x00D6FC 03:B6EC: 05        .byte $05   ; 
- D 1 - I - 0x00D6FD 03:B6ED: FF        .byte $FF   ; 



off_02_B6EE_0A:
- - - - - - 0x00D6FE 03:B6EE: 22        .byte $22   ; 
- - - - - - 0x00D6FF 03:B6EF: 05        .byte $05   ; 
- - - - - - 0x00D700 03:B6F0: FF        .byte $FF   ; 



off_02_B6F1_0B:
- - - - - - 0x00D701 03:B6F1: 23        .byte $23   ; 
- - - - - - 0x00D702 03:B6F2: 05        .byte $05   ; 
- - - - - - 0x00D703 03:B6F3: FF        .byte $FF   ; 



off_02_B6F4_0C:
- - - - - - 0x00D704 03:B6F4: 24        .byte $24   ; 
- - - - - - 0x00D705 03:B6F5: 05        .byte $05   ; 
- - - - - - 0x00D706 03:B6F6: FF        .byte $FF   ; 



off_02_B6F7_0D:
- - - - - - 0x00D707 03:B6F7: 25        .byte $25   ; 
- - - - - - 0x00D708 03:B6F8: 05        .byte $05   ; 
- - - - - - 0x00D709 03:B6F9: FF        .byte $FF   ; 



off_02_B6FA_0E:
- - - - - - 0x00D70A 03:B6FA: 26        .byte $26   ; 
- - - - - - 0x00D70B 03:B6FB: 05        .byte $05   ; 
- - - - - - 0x00D70C 03:B6FC: FF        .byte $FF   ; 



off_02_B6FD_0F:
- - - - - - 0x00D70D 03:B6FD: 27        .byte $27   ; 
- - - - - - 0x00D70E 03:B6FE: 05        .byte $05   ; 
- - - - - - 0x00D70F 03:B6FF: FF        .byte $FF   ; 



off_02_B700_10:
- - - - - - 0x00D710 03:B700: 28        .byte $28   ; 
- - - - - - 0x00D711 03:B701: 05        .byte $05   ; 
- - - - - - 0x00D712 03:B702: FF        .byte $FF   ; 



off_02_B703_11:
- - - - - - 0x00D713 03:B703: 29        .byte $29   ; 
- - - - - - 0x00D714 03:B704: 00        .byte $00   ; 
- - - - - - 0x00D715 03:B705: FF        .byte $FF   ; 



off_02_B706_12:
- - - - - - 0x00D716 03:B706: 2A        .byte $2A   ; 
- - - - - - 0x00D717 03:B707: 05        .byte $05   ; 
- - - - - - 0x00D718 03:B708: FF        .byte $FF   ; 



off_02_B709_13:
- - - - - - 0x00D719 03:B709: 2B        .byte $2B   ; 
- - - - - - 0x00D71A 03:B70A: 05        .byte $05   ; 
- - - - - - 0x00D71B 03:B70B: FF        .byte $FF   ; 



off_02_B70C_14:
- - - - - - 0x00D71C 03:B70C: 2C        .byte $2C   ; 
- - - - - - 0x00D71D 03:B70D: 05        .byte $05   ; 
- - - - - - 0x00D71E 03:B70E: FF        .byte $FF   ; 



off_02_B70F_15:
- - - - - - 0x00D71F 03:B70F: 2D        .byte $2D   ; 
- - - - - - 0x00D720 03:B710: 05        .byte $05   ; 
- - - - - - 0x00D721 03:B711: FF        .byte $FF   ; 



off_02_B712_16:
- - - - - - 0x00D722 03:B712: 2E        .byte $2E   ; 
- - - - - - 0x00D723 03:B713: 05        .byte $05   ; 
- - - - - - 0x00D724 03:B714: FF        .byte $FF   ; 



off_02_B715_17:
- - - - - - 0x00D725 03:B715: 2F        .byte $2F   ; 
- - - - - - 0x00D726 03:B716: 05        .byte $05   ; 
- - - - - - 0x00D727 03:B717: FF        .byte $FF   ; 



off_02_B718_18:
- - - - - - 0x00D728 03:B718: 30        .byte $30   ; 
- - - - - - 0x00D729 03:B719: 05        .byte $05   ; 
- - - - - - 0x00D72A 03:B71A: FF        .byte $FF   ; 



off_02_B71B_19:
- - - - - - 0x00D72B 03:B71B: 31        .byte $31   ; 
- - - - - - 0x00D72C 03:B71C: 0A        .byte $0A   ; 
- - - - - - 0x00D72D 03:B71D: 32        .byte $32   ; 
- - - - - - 0x00D72E 03:B71E: 0B        .byte $0B   ; 
- - - - - - 0x00D72F 03:B71F: 33        .byte $33   ; 
- - - - - - 0x00D730 03:B720: 0B        .byte $0B   ; 
- - - - - - 0x00D731 03:B721: 34        .byte $34   ; 
- - - - - - 0x00D732 03:B722: 08        .byte $08   ; 
- - - - - - 0x00D733 03:B723: 35        .byte $35   ; 
- - - - - - 0x00D734 03:B724: 08        .byte $08   ; 
- - - - - - 0x00D735 03:B725: 36        .byte $36   ; 
- - - - - - 0x00D736 03:B726: 08        .byte $08   ; 
- - - - - - 0x00D737 03:B727: FE        .byte $FE   ; 



off_02_B728_1A:
- - - - - - 0x00D738 03:B728: 31        .byte $31   ; 
- - - - - - 0x00D739 03:B729: 0F        .byte $0F   ; 
- - - - - - 0x00D73A 03:B72A: 32        .byte $32   ; 
- - - - - - 0x00D73B 03:B72B: 17        .byte $17   ; 
- - - - - - 0x00D73C 03:B72C: FE        .byte $FE   ; 



off_02_B72D_1B:
- - - - - - 0x00D73D 03:B72D: 37        .byte $37   ; 
- - - - - - 0x00D73E 03:B72E: 05        .byte $05   ; 
- - - - - - 0x00D73F 03:B72F: FF        .byte $FF   ; 



off_02_B730_1C:
- - - - - - 0x00D740 03:B730: 38        .byte $38   ; 
- - - - - - 0x00D741 03:B731: 05        .byte $05   ; 
- - - - - - 0x00D742 03:B732: FF        .byte $FF   ; 



off_02_B733_1D:
- - - - - - 0x00D743 03:B733: 39        .byte $39   ; 
- - - - - - 0x00D744 03:B734: 05        .byte $05   ; 
- - - - - - 0x00D745 03:B735: FF        .byte $FF   ; 



off_02_B736_1E:
- - - - - - 0x00D746 03:B736: 3A        .byte $3A   ; 
- - - - - - 0x00D747 03:B737: 05        .byte $05   ; 
- - - - - - 0x00D748 03:B738: FF        .byte $FF   ; 



off_02_B739_1F:
- D 1 - I - 0x00D749 03:B739: FC        .byte $FC   ; 
- D 1 - I - 0x00D74A 03:B73A: 07        .byte $07   ; 
- D 1 - I - 0x00D74B 03:B73B: 04        .byte $04   ; 
- D 1 - I - 0x00D74C 03:B73C: 3E        .byte $3E   ; 



off_02_B73D_20:
- D 1 - I - 0x00D74D 03:B73D: FC        .byte $FC   ; 
- D 1 - I - 0x00D74E 03:B73E: 07        .byte $07   ; 
- D 1 - I - 0x00D74F 03:B73F: 04        .byte $04   ; 
- D 1 - I - 0x00D750 03:B740: 42        .byte $42   ; 



off_02_B741_21:
- D 1 - I - 0x00D751 03:B741: FC        .byte $FC   ; 
- D 1 - I - 0x00D752 03:B742: 07        .byte $07   ; 
- D 1 - I - 0x00D753 03:B743: 04        .byte $04   ; 
- D 1 - I - 0x00D754 03:B744: 46        .byte $46   ; 



off_02_B745_22:
- D 1 - I - 0x00D755 03:B745: FC        .byte $FC   ; 
- D 1 - I - 0x00D756 03:B746: 07        .byte $07   ; 
- D 1 - I - 0x00D757 03:B747: 04        .byte $04   ; 
- D 1 - I - 0x00D758 03:B748: 4A        .byte $4A   ; 



off_02_B749_23:
- D 1 - I - 0x00D759 03:B749: FC        .byte $FC   ; 
- D 1 - I - 0x00D75A 03:B74A: 07        .byte $07   ; 
- D 1 - I - 0x00D75B 03:B74B: 04        .byte $04   ; 
- D 1 - I - 0x00D75C 03:B74C: 4E        .byte $4E   ; 



off_02_B74D_24:
- D 1 - I - 0x00D75D 03:B74D: FC        .byte $FC   ; 
- D 1 - I - 0x00D75E 03:B74E: 07        .byte $07   ; 
- D 1 - I - 0x00D75F 03:B74F: 04        .byte $04   ; 
- D 1 - I - 0x00D760 03:B750: 52        .byte $52   ; 



off_02_B751_25:
- D 1 - I - 0x00D761 03:B751: FC        .byte $FC   ; 
- D 1 - I - 0x00D762 03:B752: 07        .byte $07   ; 
- D 1 - I - 0x00D763 03:B753: 04        .byte $04   ; 
- D 1 - I - 0x00D764 03:B754: 56        .byte $56   ; 



off_02_B755_26:
- D 1 - I - 0x00D765 03:B755: FC        .byte $FC   ; 
- D 1 - I - 0x00D766 03:B756: 07        .byte $07   ; 
- D 1 - I - 0x00D767 03:B757: 04        .byte $04   ; 
- D 1 - I - 0x00D768 03:B758: 5A        .byte $5A   ; 



off_02_B759_27:
- D 1 - I - 0x00D769 03:B759: 5F        .byte $5F   ; 
- D 1 - I - 0x00D76A 03:B75A: 05        .byte $05   ; 
- - - - - - 0x00D76B 03:B75B: FF        .byte $FF   ; 



off_02_B75C_28:
- - - - - - 0x00D76C 03:B75C: 61        .byte $61   ; 
- - - - - - 0x00D76D 03:B75D: 05        .byte $05   ; 
- - - - - - 0x00D76E 03:B75E: FF        .byte $FF   ; 



off_02_B75F_29:
- - - - - - 0x00D76F 03:B75F: 63        .byte $63   ; 
- - - - - - 0x00D770 03:B760: 05        .byte $05   ; 
- - - - - - 0x00D771 03:B761: FF        .byte $FF   ; 



off_02_B762_2A:
- D 1 - I - 0x00D772 03:B762: 65        .byte $65   ; 
- D 1 - I - 0x00D773 03:B763: 05        .byte $05   ; 
- - - - - - 0x00D774 03:B764: FF        .byte $FF   ; 



off_02_B765_2B:
- D 1 - I - 0x00D775 03:B765: 67        .byte $67   ; 
- D 1 - I - 0x00D776 03:B766: 05        .byte $05   ; 
- - - - - - 0x00D777 03:B767: FF        .byte $FF   ; 



off_02_B768_2C:
- - - - - - 0x00D778 03:B768: 69        .byte $69   ; 
- - - - - - 0x00D779 03:B769: 05        .byte $05   ; 
- - - - - - 0x00D77A 03:B76A: FF        .byte $FF   ; 



off_02_B76B_2D:
- - - - - - 0x00D77B 03:B76B: 6B        .byte $6B   ; 
- - - - - - 0x00D77C 03:B76C: 05        .byte $05   ; 
- - - - - - 0x00D77D 03:B76D: FF        .byte $FF   ; 



off_02_B76E_2E:
- D 1 - I - 0x00D77E 03:B76E: 6D        .byte $6D   ; 
- D 1 - I - 0x00D77F 03:B76F: 05        .byte $05   ; 
- - - - - - 0x00D780 03:B770: FF        .byte $FF   ; 



off_02_B771_2F:
- D 1 - I - 0x00D781 03:B771: 5E        .byte $5E   ; 
- D 1 - I - 0x00D782 03:B772: 05        .byte $05   ; 
- - - - - - 0x00D783 03:B773: FF        .byte $FF   ; 



off_02_B774_30:
- - - - - - 0x00D784 03:B774: 60        .byte $60   ; 
- - - - - - 0x00D785 03:B775: 05        .byte $05   ; 
- - - - - - 0x00D786 03:B776: FF        .byte $FF   ; 



off_02_B777_31:
- - - - - - 0x00D787 03:B777: 62        .byte $62   ; 
- - - - - - 0x00D788 03:B778: 05        .byte $05   ; 
- - - - - - 0x00D789 03:B779: FF        .byte $FF   ; 



off_02_B77A_32:
- D 1 - I - 0x00D78A 03:B77A: 64        .byte $64   ; 
- D 1 - I - 0x00D78B 03:B77B: 05        .byte $05   ; 
- D 1 - I - 0x00D78C 03:B77C: FF        .byte $FF   ; 



off_02_B77D_33:
- D 1 - I - 0x00D78D 03:B77D: 66        .byte $66   ; 
- D 1 - I - 0x00D78E 03:B77E: 05        .byte $05   ; 
- D 1 - I - 0x00D78F 03:B77F: FF        .byte $FF   ; 



off_02_B780_34:
- - - - - - 0x00D790 03:B780: 68        .byte $68   ; 
- - - - - - 0x00D791 03:B781: 05        .byte $05   ; 
- - - - - - 0x00D792 03:B782: FF        .byte $FF   ; 



off_02_B783_35:
- - - - - - 0x00D793 03:B783: 6A        .byte $6A   ; 
- - - - - - 0x00D794 03:B784: 05        .byte $05   ; 
- - - - - - 0x00D795 03:B785: FF        .byte $FF   ; 



off_02_B786_36:
- D 1 - I - 0x00D796 03:B786: 6C        .byte $6C   ; 
- D 1 - I - 0x00D797 03:B787: 05        .byte $05   ; 
- - - - - - 0x00D798 03:B788: FF        .byte $FF   ; 



off_02_B789_37:
- - - - - - 0x00D799 03:B789: 6E        .byte $6E   ; 
- - - - - - 0x00D79A 03:B78A: 05        .byte $05   ; 
- - - - - - 0x00D79B 03:B78B: FF        .byte $FF   ; 



off_02_B78C_38:
- - - - - - 0x00D79C 03:B78C: 70        .byte $70   ; 
- - - - - - 0x00D79D 03:B78D: 05        .byte $05   ; 
- - - - - - 0x00D79E 03:B78E: FF        .byte $FF   ; 



off_02_B78F_39:
- D 1 - I - 0x00D79F 03:B78F: 6F        .byte $6F   ; 
- D 1 - I - 0x00D7A0 03:B790: 05        .byte $05   ; 
- D 1 - I - 0x00D7A1 03:B791: FF        .byte $FF   ; 



off_02_B792_3A:
- D 1 - I - 0x00D7A2 03:B792: 71        .byte $71   ; 
- D 1 - I - 0x00D7A3 03:B793: 05        .byte $05   ; 
- D 1 - I - 0x00D7A4 03:B794: FF        .byte $FF   ; 



off_02_B795_3B:
- - - - - - 0x00D7A5 03:B795: 72        .byte $72   ; 
- - - - - - 0x00D7A6 03:B796: 0A        .byte $0A   ; 
- - - - - - 0x00D7A7 03:B797: 73        .byte $73   ; 
- - - - - - 0x00D7A8 03:B798: 0B        .byte $0B   ; 
- - - - - - 0x00D7A9 03:B799: 74        .byte $74   ; 
- - - - - - 0x00D7AA 03:B79A: 0B        .byte $0B   ; 
- - - - - - 0x00D7AB 03:B79B: 75        .byte $75   ; 
- - - - - - 0x00D7AC 03:B79C: 08        .byte $08   ; 
- - - - - - 0x00D7AD 03:B79D: 76        .byte $76   ; 
- - - - - - 0x00D7AE 03:B79E: 08        .byte $08   ; 
- - - - - - 0x00D7AF 03:B79F: 77        .byte $77   ; 
- - - - - - 0x00D7B0 03:B7A0: 08        .byte $08   ; 
- - - - - - 0x00D7B1 03:B7A1: FE        .byte $FE   ; 



off_02_B7A2_3C:
- - - - - - 0x00D7B2 03:B7A2: 72        .byte $72   ; 
- - - - - - 0x00D7B3 03:B7A3: 0F        .byte $0F   ; 
- - - - - - 0x00D7B4 03:B7A4: 73        .byte $73   ; 
- - - - - - 0x00D7B5 03:B7A5: 17        .byte $17   ; 
- - - - - - 0x00D7B6 03:B7A6: FE        .byte $FE   ; 



off_02_B7A7_3D:
- D 1 - I - 0x00D7B7 03:B7A7: FC        .byte $FC   ; 
- D 1 - I - 0x00D7B8 03:B7A8: 08        .byte $08   ; 
- D 1 - I - 0x00D7B9 03:B7A9: 04        .byte $04   ; 
- D 1 - I - 0x00D7BA 03:B7AA: 78        .byte $78   ; 



off_02_B7AB_3E:
- D 1 - I - 0x00D7BB 03:B7AB: FC        .byte $FC   ; 
- D 1 - I - 0x00D7BC 03:B7AC: 08        .byte $08   ; 
- D 1 - I - 0x00D7BD 03:B7AD: 04        .byte $04   ; 
- D 1 - I - 0x00D7BE 03:B7AE: 7C        .byte $7C   ; 



off_02_B7AF_3F:
- D 1 - I - 0x00D7BF 03:B7AF: FC        .byte $FC   ; 
- D 1 - I - 0x00D7C0 03:B7B0: 08        .byte $08   ; 
- D 1 - I - 0x00D7C1 03:B7B1: 04        .byte $04   ; 
- D 1 - I - 0x00D7C2 03:B7B2: 80        .byte $80   ; 



off_02_B7B3_40:
- D 1 - I - 0x00D7C3 03:B7B3: FC        .byte $FC   ; 
- D 1 - I - 0x00D7C4 03:B7B4: 08        .byte $08   ; 
- D 1 - I - 0x00D7C5 03:B7B5: 04        .byte $04   ; 
- D 1 - I - 0x00D7C6 03:B7B6: 84        .byte $84   ; 



off_02_B7B7_41:
- D 1 - I - 0x00D7C7 03:B7B7: FC        .byte $FC   ; 
- D 1 - I - 0x00D7C8 03:B7B8: 08        .byte $08   ; 
- D 1 - I - 0x00D7C9 03:B7B9: 04        .byte $04   ; 
- D 1 - I - 0x00D7CA 03:B7BA: 88        .byte $88   ; 



off_02_B7BB_42:
- D 1 - I - 0x00D7CB 03:B7BB: FC        .byte $FC   ; 
- D 1 - I - 0x00D7CC 03:B7BC: 08        .byte $08   ; 
- D 1 - I - 0x00D7CD 03:B7BD: 04        .byte $04   ; 
- D 1 - I - 0x00D7CE 03:B7BE: 8C        .byte $8C   ; 



off_02_B7BF_43:
- D 1 - I - 0x00D7CF 03:B7BF: FC        .byte $FC   ; 
- D 1 - I - 0x00D7D0 03:B7C0: 08        .byte $08   ; 
- D 1 - I - 0x00D7D1 03:B7C1: 04        .byte $04   ; 
- D 1 - I - 0x00D7D2 03:B7C2: 90        .byte $90   ; 



off_02_B7C3_44:
- D 1 - I - 0x00D7D3 03:B7C3: FC        .byte $FC   ; 
- D 1 - I - 0x00D7D4 03:B7C4: 08        .byte $08   ; 
- D 1 - I - 0x00D7D5 03:B7C5: 04        .byte $04   ; 
- D 1 - I - 0x00D7D6 03:B7C6: 94        .byte $94   ; 



off_02_B7C7_45:
- - - - - - 0x00D7D7 03:B7C7: 98        .byte $98   ; 
- - - - - - 0x00D7D8 03:B7C8: 05        .byte $05   ; 
- - - - - - 0x00D7D9 03:B7C9: FF        .byte $FF   ; 



off_02_B7CA_46:
- D 1 - I - 0x00D7DA 03:B7CA: 99        .byte $99   ; 
- D 1 - I - 0x00D7DB 03:B7CB: 05        .byte $05   ; 
- - - - - - 0x00D7DC 03:B7CC: FF        .byte $FF   ; 



off_02_B7CD_47:
- D 1 - I - 0x00D7DD 03:B7CD: 9A        .byte $9A   ; 
- D 1 - I - 0x00D7DE 03:B7CE: 05        .byte $05   ; 
- - - - - - 0x00D7DF 03:B7CF: FF        .byte $FF   ; 



off_02_B7D0_48:
- - - - - - 0x00D7E0 03:B7D0: 9B        .byte $9B   ; 
- - - - - - 0x00D7E1 03:B7D1: 05        .byte $05   ; 
- - - - - - 0x00D7E2 03:B7D2: FF        .byte $FF   ; 



off_02_B7D3_49:
- D 1 - I - 0x00D7E3 03:B7D3: 9C        .byte $9C   ; 
- D 1 - I - 0x00D7E4 03:B7D4: 05        .byte $05   ; 
- - - - - - 0x00D7E5 03:B7D5: FF        .byte $FF   ; 



off_02_B7D6_4A:
- D 1 - I - 0x00D7E6 03:B7D6: 9D        .byte $9D   ; 
- D 1 - I - 0x00D7E7 03:B7D7: 05        .byte $05   ; 
- D 1 - I - 0x00D7E8 03:B7D8: FF        .byte $FF   ; 



off_02_B7D9_4B:
- D 1 - I - 0x00D7E9 03:B7D9: 9E        .byte $9E   ; 
- D 1 - I - 0x00D7EA 03:B7DA: 05        .byte $05   ; 
- - - - - - 0x00D7EB 03:B7DB: FF        .byte $FF   ; 



off_02_B7DC_4C:
- D 1 - I - 0x00D7EC 03:B7DC: 9F        .byte $9F   ; 
- D 1 - I - 0x00D7ED 03:B7DD: 05        .byte $05   ; 
- D 1 - I - 0x00D7EE 03:B7DE: FF        .byte $FF   ; 



_off019_D7EF_07:
- D 1 - I - 0x00D7EF 03:B7DF: 21 B8     .word off_07_B821_01
- D 1 - I - 0x00D7F1 03:B7E1: 2A B8     .word off_07_B82A_02
- D 1 - I - 0x00D7F3 03:B7E3: 2E B8     .word off_07_B82E_03
- D 1 - I - 0x00D7F5 03:B7E5: 32 B8     .word off_07_B832_04
- D 1 - I - 0x00D7F7 03:B7E7: 36 B8     .word off_07_B836_05
- D 1 - I - 0x00D7F9 03:B7E9: 41 B8     .word off_07_B841_06
- D 1 - I - 0x00D7FB 03:B7EB: 4C B8     .word off_07_B84C_07
- D 1 - I - 0x00D7FD 03:B7ED: 57 B8     .word off_07_B857_08
- D 1 - I - 0x00D7FF 03:B7EF: 62 B8     .word off_07_B862_09
- D 1 - I - 0x00D801 03:B7F1: 6D B8     .word off_07_B86D_0A
- D 1 - I - 0x00D803 03:B7F3: 78 B8     .word off_07_B878_0B
- D 1 - I - 0x00D805 03:B7F5: 83 B8     .word off_07_B883_0C
- D 1 - I - 0x00D807 03:B7F7: 8E B8     .word off_07_B88E_0D
- D 1 - I - 0x00D809 03:B7F9: 92 B8     .word off_07_B892_0E
- D 1 - I - 0x00D80B 03:B7FB: 96 B8     .word off_07_B896_0F
- D 1 - I - 0x00D80D 03:B7FD: 9A B8     .word off_07_B89A_10
- D 1 - I - 0x00D80F 03:B7FF: 9E B8     .word off_07_B89E_11
- D 1 - I - 0x00D811 03:B801: A2 B8     .word off_07_B8A2_12
- D 1 - I - 0x00D813 03:B803: A6 B8     .word off_07_B8A6_13
- D 1 - I - 0x00D815 03:B805: AA B8     .word off_07_B8AA_14
- D 1 - I - 0x00D817 03:B807: AE B8     .word off_07_B8AE_15
- D 1 - I - 0x00D819 03:B809: B9 B8     .word off_07_B8B9_16
- D 1 - I - 0x00D81B 03:B80B: C4 B8     .word off_07_B8C4_17
- D 1 - I - 0x00D81D 03:B80D: CF B8     .word off_07_B8CF_18
- D 1 - I - 0x00D81F 03:B80F: E3 B8     .word off_07_B8E3_19
- D 1 - I - 0x00D821 03:B811: E8 B8     .word off_07_B8E8_1A
- D 1 - I - 0x00D823 03:B813: EC B8     .word off_07_B8EC_1B
- D 1 - I - 0x00D825 03:B815: F0 B8     .word off_07_B8F0_1C
- D 1 - I - 0x00D827 03:B817: F3 B8     .word off_07_B8F3_1D
- D 1 - I - 0x00D829 03:B819: F6 B8     .word off_07_B8F6_1E
- D 1 - I - 0x00D82B 03:B81B: F9 B8     .word off_07_B8F9_1F
- D 1 - I - 0x00D82D 03:B81D: FC B8     .word off_07_B8FC_20
- D 1 - I - 0x00D82F 03:B81F: DA B8     .word off_07_B8DA_21



off_07_B821_01:
- D 1 - I - 0x00D831 03:B821: 01        .byte $01   ; 
- D 1 - I - 0x00D832 03:B822: 04        .byte $04   ; 
- D 1 - I - 0x00D833 03:B823: 02        .byte $02   ; 
- D 1 - I - 0x00D834 03:B824: 03        .byte $03   ; 
- D 1 - I - 0x00D835 03:B825: 03        .byte $03   ; 
- D 1 - I - 0x00D836 03:B826: 05        .byte $05   ; 
- D 1 - I - 0x00D837 03:B827: 04        .byte $04   ; 
- D 1 - I - 0x00D838 03:B828: 05        .byte $05   ; 
- D 1 - I - 0x00D839 03:B829: FE        .byte $FE   ; 



off_07_B82A_02:
- D 1 - I - 0x00D83A 03:B82A: FC        .byte $FC   ; 
- D 1 - I - 0x00D83B 03:B82B: 04        .byte $04   ; 
- D 1 - I - 0x00D83C 03:B82C: 04        .byte $04   ; 
- D 1 - I - 0x00D83D 03:B82D: 09        .byte $09   ; 



off_07_B82E_03:
- D 1 - I - 0x00D83E 03:B82E: FC        .byte $FC   ; 
- D 1 - I - 0x00D83F 03:B82F: 05        .byte $05   ; 
- D 1 - I - 0x00D840 03:B830: 02        .byte $02   ; 
- D 1 - I - 0x00D841 03:B831: 0D        .byte $0D   ; 



off_07_B832_04:
- D 1 - I - 0x00D842 03:B832: FC        .byte $FC   ; 
- D 1 - I - 0x00D843 03:B833: 07        .byte $07   ; 
- D 1 - I - 0x00D844 03:B834: 02        .byte $02   ; 
- D 1 - I - 0x00D845 03:B835: 0F        .byte $0F   ; 



off_07_B836_05:
- D 1 - I - 0x00D846 03:B836: 11        .byte $11   ; 
- D 1 - I - 0x00D847 03:B837: 03        .byte $03   ; 
- D 1 - I - 0x00D848 03:B838: 12        .byte $12   ; 
- D 1 - I - 0x00D849 03:B839: 02        .byte $02   ; 
- D 1 - I - 0x00D84A 03:B83A: 13        .byte $13   ; 
- D 1 - I - 0x00D84B 03:B83B: 01        .byte $01   ; 
- D 1 - I - 0x00D84C 03:B83C: 14        .byte $14   ; 
- D 1 - I - 0x00D84D 03:B83D: 01        .byte $01   ; 
- D 1 - I - 0x00D84E 03:B83E: 61        .byte $61   ; 
- D 1 - I - 0x00D84F 03:B83F: 01        .byte $01   ; 
- D 1 - I - 0x00D850 03:B840: FF        .byte $FF   ; 



off_07_B841_06:
- D 1 - I - 0x00D851 03:B841: 15        .byte $15   ; 
- D 1 - I - 0x00D852 03:B842: 03        .byte $03   ; 
- D 1 - I - 0x00D853 03:B843: 16        .byte $16   ; 
- D 1 - I - 0x00D854 03:B844: 02        .byte $02   ; 
- D 1 - I - 0x00D855 03:B845: 17        .byte $17   ; 
- D 1 - I - 0x00D856 03:B846: 01        .byte $01   ; 
- D 1 - I - 0x00D857 03:B847: 18        .byte $18   ; 
- D 1 - I - 0x00D858 03:B848: 01        .byte $01   ; 
- D 1 - I - 0x00D859 03:B849: 62        .byte $62   ; 
- D 1 - I - 0x00D85A 03:B84A: 01        .byte $01   ; 
- D 1 - I - 0x00D85B 03:B84B: FF        .byte $FF   ; 



off_07_B84C_07:
- D 1 - I - 0x00D85C 03:B84C: 19        .byte $19   ; 
- D 1 - I - 0x00D85D 03:B84D: 03        .byte $03   ; 
- D 1 - I - 0x00D85E 03:B84E: 1A        .byte $1A   ; 
- D 1 - I - 0x00D85F 03:B84F: 02        .byte $02   ; 
- D 1 - I - 0x00D860 03:B850: 1B        .byte $1B   ; 
- D 1 - I - 0x00D861 03:B851: 01        .byte $01   ; 
- D 1 - I - 0x00D862 03:B852: 1C        .byte $1C   ; 
- D 1 - I - 0x00D863 03:B853: 01        .byte $01   ; 
- D 1 - I - 0x00D864 03:B854: 63        .byte $63   ; 
- D 1 - I - 0x00D865 03:B855: 01        .byte $01   ; 
- D 1 - I - 0x00D866 03:B856: FF        .byte $FF   ; 



off_07_B857_08:
- D 1 - I - 0x00D867 03:B857: 1D        .byte $1D   ; 
- D 1 - I - 0x00D868 03:B858: 03        .byte $03   ; 
- D 1 - I - 0x00D869 03:B859: 1E        .byte $1E   ; 
- D 1 - I - 0x00D86A 03:B85A: 02        .byte $02   ; 
- D 1 - I - 0x00D86B 03:B85B: 1F        .byte $1F   ; 
- D 1 - I - 0x00D86C 03:B85C: 01        .byte $01   ; 
- D 1 - I - 0x00D86D 03:B85D: 20        .byte $20   ; 
- D 1 - I - 0x00D86E 03:B85E: 01        .byte $01   ; 
- D 1 - I - 0x00D86F 03:B85F: 64        .byte $64   ; 
- D 1 - I - 0x00D870 03:B860: 01        .byte $01   ; 
- D 1 - I - 0x00D871 03:B861: FF        .byte $FF   ; 



off_07_B862_09:
- D 1 - I - 0x00D872 03:B862: 21        .byte $21   ; 
- D 1 - I - 0x00D873 03:B863: 03        .byte $03   ; 
- D 1 - I - 0x00D874 03:B864: 22        .byte $22   ; 
- D 1 - I - 0x00D875 03:B865: 02        .byte $02   ; 
- D 1 - I - 0x00D876 03:B866: 23        .byte $23   ; 
- D 1 - I - 0x00D877 03:B867: 01        .byte $01   ; 
- D 1 - I - 0x00D878 03:B868: 24        .byte $24   ; 
- D 1 - I - 0x00D879 03:B869: 01        .byte $01   ; 
- D 1 - I - 0x00D87A 03:B86A: 65        .byte $65   ; 
- D 1 - I - 0x00D87B 03:B86B: 01        .byte $01   ; 
- D 1 - I - 0x00D87C 03:B86C: FF        .byte $FF   ; 



off_07_B86D_0A:
- D 1 - I - 0x00D87D 03:B86D: 25        .byte $25   ; 
- D 1 - I - 0x00D87E 03:B86E: 03        .byte $03   ; 
- D 1 - I - 0x00D87F 03:B86F: 26        .byte $26   ; 
- D 1 - I - 0x00D880 03:B870: 02        .byte $02   ; 
- D 1 - I - 0x00D881 03:B871: 27        .byte $27   ; 
- D 1 - I - 0x00D882 03:B872: 01        .byte $01   ; 
- D 1 - I - 0x00D883 03:B873: 28        .byte $28   ; 
- D 1 - I - 0x00D884 03:B874: 01        .byte $01   ; 
- D 1 - I - 0x00D885 03:B875: 66        .byte $66   ; 
- D 1 - I - 0x00D886 03:B876: 01        .byte $01   ; 
- D 1 - I - 0x00D887 03:B877: FF        .byte $FF   ; 



off_07_B878_0B:
- D 1 - I - 0x00D888 03:B878: 29        .byte $29   ; 
- D 1 - I - 0x00D889 03:B879: 03        .byte $03   ; 
- D 1 - I - 0x00D88A 03:B87A: 2A        .byte $2A   ; 
- D 1 - I - 0x00D88B 03:B87B: 02        .byte $02   ; 
- D 1 - I - 0x00D88C 03:B87C: 2B        .byte $2B   ; 
- D 1 - I - 0x00D88D 03:B87D: 01        .byte $01   ; 
- D 1 - I - 0x00D88E 03:B87E: 2C        .byte $2C   ; 
- D 1 - I - 0x00D88F 03:B87F: 01        .byte $01   ; 
- D 1 - I - 0x00D890 03:B880: 67        .byte $67   ; 
- D 1 - I - 0x00D891 03:B881: 01        .byte $01   ; 
- D 1 - I - 0x00D892 03:B882: FF        .byte $FF   ; 



off_07_B883_0C:
- D 1 - I - 0x00D893 03:B883: 2D        .byte $2D   ; 
- D 1 - I - 0x00D894 03:B884: 03        .byte $03   ; 
- D 1 - I - 0x00D895 03:B885: 2E        .byte $2E   ; 
- D 1 - I - 0x00D896 03:B886: 02        .byte $02   ; 
- D 1 - I - 0x00D897 03:B887: 2F        .byte $2F   ; 
- D 1 - I - 0x00D898 03:B888: 01        .byte $01   ; 
- D 1 - I - 0x00D899 03:B889: 30        .byte $30   ; 
- D 1 - I - 0x00D89A 03:B88A: 01        .byte $01   ; 
- D 1 - I - 0x00D89B 03:B88B: 68        .byte $68   ; 
- D 1 - I - 0x00D89C 03:B88C: 01        .byte $01   ; 
- D 1 - I - 0x00D89D 03:B88D: FF        .byte $FF   ; 



off_07_B88E_0D:
- D 1 - I - 0x00D89E 03:B88E: FC        .byte $FC   ; 
- D 1 - I - 0x00D89F 03:B88F: 01        .byte $01   ; 
- D 1 - I - 0x00D8A0 03:B890: 06        .byte $06   ; 
- D 1 - I - 0x00D8A1 03:B891: 31        .byte $31   ; 



off_07_B892_0E:
- D 1 - I - 0x00D8A2 03:B892: FC        .byte $FC   ; 
- D 1 - I - 0x00D8A3 03:B893: 01        .byte $01   ; 
- D 1 - I - 0x00D8A4 03:B894: 06        .byte $06   ; 
- D 1 - I - 0x00D8A5 03:B895: 37        .byte $37   ; 



off_07_B896_0F:
- D 1 - I - 0x00D8A6 03:B896: FC        .byte $FC   ; 
- D 1 - I - 0x00D8A7 03:B897: 01        .byte $01   ; 
- D 1 - I - 0x00D8A8 03:B898: 06        .byte $06   ; 
- D 1 - I - 0x00D8A9 03:B899: 3D        .byte $3D   ; 



off_07_B89A_10:
- D 1 - I - 0x00D8AA 03:B89A: FC        .byte $FC   ; 
- D 1 - I - 0x00D8AB 03:B89B: 01        .byte $01   ; 
- D 1 - I - 0x00D8AC 03:B89C: 06        .byte $06   ; 
- D 1 - I - 0x00D8AD 03:B89D: 43        .byte $43   ; 



off_07_B89E_11:
- D 1 - I - 0x00D8AE 03:B89E: FC        .byte $FC   ; 
- D 1 - I - 0x00D8AF 03:B89F: 01        .byte $01   ; 
- D 1 - I - 0x00D8B0 03:B8A0: 06        .byte $06   ; 
- D 1 - I - 0x00D8B1 03:B8A1: 49        .byte $49   ; 



off_07_B8A2_12:
- D 1 - I - 0x00D8B2 03:B8A2: FC        .byte $FC   ; 
- D 1 - I - 0x00D8B3 03:B8A3: 01        .byte $01   ; 
- D 1 - I - 0x00D8B4 03:B8A4: 06        .byte $06   ; 
- D 1 - I - 0x00D8B5 03:B8A5: 4F        .byte $4F   ; 



off_07_B8A6_13:
- D 1 - I - 0x00D8B6 03:B8A6: FC        .byte $FC   ; 
- D 1 - I - 0x00D8B7 03:B8A7: 01        .byte $01   ; 
- D 1 - I - 0x00D8B8 03:B8A8: 06        .byte $06   ; 
- D 1 - I - 0x00D8B9 03:B8A9: 55        .byte $55   ; 



off_07_B8AA_14:
- D 1 - I - 0x00D8BA 03:B8AA: FC        .byte $FC   ; 
- D 1 - I - 0x00D8BB 03:B8AB: 01        .byte $01   ; 
- D 1 - I - 0x00D8BC 03:B8AC: 06        .byte $06   ; 
- D 1 - I - 0x00D8BD 03:B8AD: 5B        .byte $5B   ; 



off_07_B8AE_15:
- D 1 - I - 0x00D8BE 03:B8AE: FD        .byte $FD   ; 
- D 1 - I - 0x00D8BF 03:B8AF: 02        .byte $02   ; 
- D 1 - I - 0x00D8C0 03:B8B0: 6E        .byte $6E   ; 
- D 1 - I - 0x00D8C1 03:B8B1: 6F        .byte $6F   ; 
- D 1 - I - 0x00D8C2 03:B8B2: 70        .byte $70   ; 
- D 1 - I - 0x00D8C3 03:B8B3: 71        .byte $71   ; 
- D 1 - I - 0x00D8C4 03:B8B4: 72        .byte $72   ; 
- - - - - - 0x00D8C5 03:B8B5: 73        .byte $73   ; 
- - - - - - 0x00D8C6 03:B8B6: 74        .byte $74   ; 
- - - - - - 0x00D8C7 03:B8B7: 75        .byte $75   ; 
- - - - - - 0x00D8C8 03:B8B8: FE        .byte $FE   ; 



off_07_B8B9_16:
- D 1 - I - 0x00D8C9 03:B8B9: FD        .byte $FD   ; 
- D 1 - I - 0x00D8CA 03:B8BA: 02        .byte $02   ; 
- D 1 - I - 0x00D8CB 03:B8BB: 76        .byte $76   ; 
- D 1 - I - 0x00D8CC 03:B8BC: 77        .byte $77   ; 
- D 1 - I - 0x00D8CD 03:B8BD: 78        .byte $78   ; 
- D 1 - I - 0x00D8CE 03:B8BE: 79        .byte $79   ; 
- D 1 - I - 0x00D8CF 03:B8BF: 7A        .byte $7A   ; 
- - - - - - 0x00D8D0 03:B8C0: 7B        .byte $7B   ; 
- - - - - - 0x00D8D1 03:B8C1: 7C        .byte $7C   ; 
- - - - - - 0x00D8D2 03:B8C2: 7D        .byte $7D   ; 
- - - - - - 0x00D8D3 03:B8C3: FE        .byte $FE   ; 



off_07_B8C4_17:
- D 1 - I - 0x00D8D4 03:B8C4: FD        .byte $FD   ; 
- D 1 - I - 0x00D8D5 03:B8C5: 02        .byte $02   ; 
- D 1 - I - 0x00D8D6 03:B8C6: 7E        .byte $7E   ; 
- D 1 - I - 0x00D8D7 03:B8C7: 7F        .byte $7F   ; 
- D 1 - I - 0x00D8D8 03:B8C8: 80        .byte $80   ; 
- D 1 - I - 0x00D8D9 03:B8C9: 81        .byte $81   ; 
- D 1 - I - 0x00D8DA 03:B8CA: 82        .byte $82   ; 
- - - - - - 0x00D8DB 03:B8CB: 83        .byte $83   ; 
- - - - - - 0x00D8DC 03:B8CC: 84        .byte $84   ; 
- - - - - - 0x00D8DD 03:B8CD: 85        .byte $85   ; 
- - - - - - 0x00D8DE 03:B8CE: FE        .byte $FE   ; 



off_07_B8CF_18:
- D 1 - I - 0x00D8DF 03:B8CF: FD        .byte $FD   ; 
- D 1 - I - 0x00D8E0 03:B8D0: 02        .byte $02   ; 
- D 1 - I - 0x00D8E1 03:B8D1: 86        .byte $86   ; 
- D 1 - I - 0x00D8E2 03:B8D2: 87        .byte $87   ; 
- D 1 - I - 0x00D8E3 03:B8D3: 88        .byte $88   ; 
- D 1 - I - 0x00D8E4 03:B8D4: 89        .byte $89   ; 
- D 1 - I - 0x00D8E5 03:B8D5: 8A        .byte $8A   ; 
- - - - - - 0x00D8E6 03:B8D6: 8B        .byte $8B   ; 
- - - - - - 0x00D8E7 03:B8D7: 8C        .byte $8C   ; 
- - - - - - 0x00D8E8 03:B8D8: 8D        .byte $8D   ; 
- - - - - - 0x00D8E9 03:B8D9: FE        .byte $FE   ; 



off_07_B8DA_21:
- D 1 - I - 0x00D8EA 03:B8DA: 01        .byte $01   ; 
- D 1 - I - 0x00D8EB 03:B8DB: 01        .byte $01   ; 
- D 1 - I - 0x00D8EC 03:B8DC: 02        .byte $02   ; 
- D 1 - I - 0x00D8ED 03:B8DD: 03        .byte $03   ; 
- D 1 - I - 0x00D8EE 03:B8DE: 03        .byte $03   ; 
- D 1 - I - 0x00D8EF 03:B8DF: 03        .byte $03   ; 
- D 1 - I - 0x00D8F0 03:B8E0: 04        .byte $04   ; 
- D 1 - I - 0x00D8F1 03:B8E1: 03        .byte $03   ; 
- D 1 - I - 0x00D8F2 03:B8E2: FE        .byte $FE   ; 



off_07_B8E3_19:
- D 1 - I - 0x00D8F3 03:B8E3: 8F        .byte $8F   ; 
- D 1 - I - 0x00D8F4 03:B8E4: 08        .byte $08   ; 
- - - - - - 0x00D8F5 03:B8E5: 93        .byte $93   ; 
- - - - - - 0x00D8F6 03:B8E6: 08        .byte $08   ; 
- - - - - - 0x00D8F7 03:B8E7: FF        .byte $FF   ; 



off_07_B8E8_1A:
- D 1 - I - 0x00D8F8 03:B8E8: FC        .byte $FC   ; 
- D 1 - I - 0x00D8F9 03:B8E9: 08        .byte $08   ; 
- D 1 - I - 0x00D8FA 03:B8EA: 02        .byte $02   ; 
- D 1 - I - 0x00D8FB 03:B8EB: 94        .byte $94   ; 



off_07_B8EC_1B:
- D 1 - I - 0x00D8FC 03:B8EC: FC        .byte $FC   ; 
- D 1 - I - 0x00D8FD 03:B8ED: 08        .byte $08   ; 
- D 1 - I - 0x00D8FE 03:B8EE: 02        .byte $02   ; 
- D 1 - I - 0x00D8FF 03:B8EF: 96        .byte $96   ; 



off_07_B8F0_1C:
- D 1 - I - 0x00D900 03:B8F0: 05        .byte $05   ; 
- D 1 - I - 0x00D901 03:B8F1: 08        .byte $08   ; 
- D 1 - I - 0x00D902 03:B8F2: FF        .byte $FF   ; 



off_07_B8F3_1D:
- D 1 - I - 0x00D903 03:B8F3: 06        .byte $06   ; 
- D 1 - I - 0x00D904 03:B8F4: 08        .byte $08   ; 
- D 1 - I - 0x00D905 03:B8F5: FF        .byte $FF   ; 



off_07_B8F6_1E:
- D 1 - I - 0x00D906 03:B8F6: 08        .byte $08   ; 
- D 1 - I - 0x00D907 03:B8F7: 08        .byte $08   ; 
- - - - - - 0x00D908 03:B8F8: FF        .byte $FF   ; 



off_07_B8F9_1F:
- D 1 - I - 0x00D909 03:B8F9: 07        .byte $07   ; 
- D 1 - I - 0x00D90A 03:B8FA: 08        .byte $08   ; 
- D 1 - I - 0x00D90B 03:B8FB: FF        .byte $FF   ; 



off_07_B8FC_20:
- D 1 - I - 0x00D90C 03:B8FC: 6B        .byte $6B   ; 
- D 1 - I - 0x00D90D 03:B8FD: 05        .byte $05   ; 
- - - - - - 0x00D90E 03:B8FE: FF        .byte $FF   ; 



_off019_D90F_04:
- D 1 - I - 0x00D90F 03:B8FF: C3 B9     .word off_04_B9C3_01
- D 1 - I - 0x00D911 03:B901: C7 B9     .word off_04_B9C7_02
- - - - - - 0x00D913 03:B903: CB B9     .word off_04_B9CB_03
- D 1 - I - 0x00D915 03:B905: D0 B9     .word off_04_B9D0_04
- D 1 - I - 0x00D917 03:B907: D5 B9     .word off_04_B9D5_05
- D 1 - I - 0x00D919 03:B909: DA B9     .word off_04_B9DA_06
- D 1 - I - 0x00D91B 03:B90B: DF B9     .word off_04_B9DF_07
- D 1 - I - 0x00D91D 03:B90D: E2 B9     .word off_04_B9E2_08
- D 1 - I - 0x00D91F 03:B90F: E5 B9     .word off_04_B9E5_09
- D 1 - I - 0x00D921 03:B911: E8 B9     .word off_04_B9E8_0A
- - - - - - 0x00D923 03:B913: EB B9     .word off_04_B9EB_0B
- - - - - - 0x00D925 03:B915: EE B9     .word off_04_B9EE_0C
- D 1 - I - 0x00D927 03:B917: F1 B9     .word off_04_B9F1_0D
- D 1 - I - 0x00D929 03:B919: F4 B9     .word off_04_B9F4_0E
- D 1 - I - 0x00D92B 03:B91B: F7 B9     .word off_04_B9F7_0F
- D 1 - I - 0x00D92D 03:B91D: FA B9     .word off_04_B9FA_10
- D 1 - I - 0x00D92F 03:B91F: FD B9     .word off_04_B9FD_11
- D 1 - I - 0x00D931 03:B921: 00 BA     .word off_04_BA00_12
- - - - - - 0x00D933 03:B923: 03 BA     .word off_04_BA03_13
- - - - - - 0x00D935 03:B925: 07 BA     .word off_04_BA07_14
- D 1 - I - 0x00D937 03:B927: 11 BA     .word off_04_BA11_15
- D 1 - I - 0x00D939 03:B929: 1A BA     .word off_04_BA1A_16
- - - - - - 0x00D93B 03:B92B: 23 BA     .word off_04_BA23_17
- D 1 - I - 0x00D93D 03:B92D: 23 BA     .word off_04_BA23_18
- D 1 - I - 0x00D93F 03:B92F: 26 BA     .word off_04_BA26_19
- D 1 - I - 0x00D941 03:B931: 29 BA     .word off_04_BA29_1A
- D 1 - I - 0x00D943 03:B933: 2C BA     .word off_04_BA2C_1B
- D 1 - I - 0x00D945 03:B935: 2F BA     .word off_04_BA2F_1C
- D 1 - I - 0x00D947 03:B937: 32 BA     .word off_04_BA32_1D
- D 1 - I - 0x00D949 03:B939: 35 BA     .word off_04_BA35_1E
- D 1 - I - 0x00D94B 03:B93B: 3C BA     .word off_04_BA3C_1F
- D 1 - I - 0x00D94D 03:B93D: 49 BA     .word off_04_BA49_20
- D 1 - I - 0x00D94F 03:B93F: 4D BA     .word off_04_BA4D_21
- D 1 - I - 0x00D951 03:B941: 51 BA     .word off_04_BA51_22
- - - - - - 0x00D953 03:B943: 56 BA     .word off_04_BA56_23
- - - - - - 0x00D955 03:B945: 5B BA     .word off_04_BA5B_24
- D 1 - I - 0x00D957 03:B947: 5B BA     .word off_04_BA5B_25
- - - - - - 0x00D959 03:B949: 60 BA     .word off_04_BA60_26
- D 1 - I - 0x00D95B 03:B94B: 65 BA     .word off_04_BA65_27
- D 1 - I - 0x00D95D 03:B94D: 68 BA     .word off_04_BA68_28
- D 1 - I - 0x00D95F 03:B94F: 77 BA     .word off_04_BA77_29
- - - - - - 0x00D961 03:B951: 7B BA     .word off_04_BA7B_2A
- - - - - - 0x00D963 03:B953: 7F BA     .word off_04_BA7F_2B
- - - - - - 0x00D965 03:B955: 83 BA     .word off_04_BA83_2C
- - - - - - 0x00D967 03:B957: 87 BA     .word off_04_BA87_2D
- - - - - - 0x00D969 03:B959: 90 BA     .word off_04_BA90_2E
- D 1 - I - 0x00D96B 03:B95B: 99 BA     .word off_04_BA99_2F
- - - - - - 0x00D96D 03:B95D: 9C BA     .word off_04_BA9C_30
- D 1 - I - 0x00D96F 03:B95F: 9F BA     .word off_04_BA9F_31
- - - - - - 0x00D971 03:B961: A2 BA     .word off_04_BAA2_32
- D 1 - I - 0x00D973 03:B963: A5 BA     .word off_04_BAA5_33
- - - - - - 0x00D975 03:B965: A8 BA     .word off_04_BAA8_34
- D 1 - I - 0x00D977 03:B967: B7 BA     .word off_04_BAB7_35
- D 1 - I - 0x00D979 03:B969: BB BA     .word off_04_BABB_36
- D 1 - I - 0x00D97B 03:B96B: BF BA     .word off_04_BABF_37
- - - - - - 0x00D97D 03:B96D: C8 BA     .word off_04_BAC8_38
- D 1 - I - 0x00D97F 03:B96F: D1 BA     .word off_04_BAD1_39
- D 1 - I - 0x00D981 03:B971: D4 BA     .word off_04_BAD4_3A
- D 1 - I - 0x00D983 03:B973: D7 BA     .word off_04_BAD7_3B
- D 1 - I - 0x00D985 03:B975: DA BA     .word off_04_BADA_3C
- D 1 - I - 0x00D987 03:B977: DD BA     .word off_04_BADD_3D
- D 1 - I - 0x00D989 03:B979: E0 BA     .word off_04_BAE0_3E
- - - - - - 0x00D98B 03:B97B: EF BA     .word off_04_BAEF_3F
- - - - - - 0x00D98D 03:B97D: F4 BA     .word off_04_BAF4_40
- D 1 - I - 0x00D98F 03:B97F: F9 BA     .word off_04_BAF9_41
- D 1 - I - 0x00D991 03:B981: FE BA     .word off_04_BAFE_42
- - - - - - 0x00D993 03:B983: 03 BB     .word off_04_BB03_43
- - - - - - 0x00D995 03:B985: 08 BB     .word off_04_BB08_44
- D 1 - I - 0x00D997 03:B987: 0D BB     .word off_04_BB0D_45
- D 1 - I - 0x00D999 03:B989: 10 BB     .word off_04_BB10_46
- D 1 - I - 0x00D99B 03:B98B: 13 BB     .word off_04_BB13_47
- D 1 - I - 0x00D99D 03:B98D: 16 BB     .word off_04_BB16_48
- - - - - - 0x00D99F 03:B98F: 19 BB     .word off_04_BB19_49
- - - - - - 0x00D9A1 03:B991: 1C BB     .word off_04_BB1C_4A
- D 1 - I - 0x00D9A3 03:B993: 1F BB     .word off_04_BB1F_4B
- D 1 - I - 0x00D9A5 03:B995: 22 BB     .word off_04_BB22_4C
- D 1 - I - 0x00D9A7 03:B997: 25 BB     .word off_04_BB25_4D
- D 1 - I - 0x00D9A9 03:B999: 28 BB     .word off_04_BB28_4E
- D 1 - I - 0x00D9AB 03:B99B: 0B BA     .word off_04_BA0B_4F
- D 1 - I - 0x00D9AD 03:B99D: 0E BA     .word off_04_BA0E_50
- D 1 - I - 0x00D9AF 03:B99F: 43 BA     .word off_04_BA43_51
- D 1 - I - 0x00D9B1 03:B9A1: 46 BA     .word off_04_BA46_52
- D 1 - I - 0x00D9B3 03:B9A3: 6B BA     .word off_04_BA6B_53
- D 1 - I - 0x00D9B5 03:B9A5: 6E BA     .word off_04_BA6E_54
- D 1 - I - 0x00D9B7 03:B9A7: 71 BA     .word off_04_BA71_55
- D 1 - I - 0x00D9B9 03:B9A9: 74 BA     .word off_04_BA74_56
- - - - - - 0x00D9BB 03:B9AB: AB BA     .word off_04_BAAB_57
- - - - - - 0x00D9BD 03:B9AD: AE BA     .word off_04_BAAE_58
- - - - - - 0x00D9BF 03:B9AF: B1 BA     .word off_04_BAB1_59
- - - - - - 0x00D9C1 03:B9B1: B4 BA     .word off_04_BAB4_5A
- D 1 - I - 0x00D9C3 03:B9B3: E3 BA     .word off_04_BAE3_5B
- D 1 - I - 0x00D9C5 03:B9B5: E6 BA     .word off_04_BAE6_5C
- - - - - - 0x00D9C7 03:B9B7: E9 BA     .word off_04_BAE9_5D
- - - - - - 0x00D9C9 03:B9B9: EC BA     .word off_04_BAEC_5E
- D 1 - I - 0x00D9CB 03:B9BB: 2B BB     .word off_04_BB2B_5F
- D 1 - I - 0x00D9CD 03:B9BD: 2F BB     .word off_04_BB2F_60
- - - - - - 0x00D9CF 03:B9BF: 33 BB     .word off_04_BB33_61
- - - - - - 0x00D9D1 03:B9C1: 36 BB     .word off_04_BB36_62



off_04_B9C3_01:
- D 1 - I - 0x00D9D3 03:B9C3: FC        .byte $FC   ; 
- D 1 - I - 0x00D9D4 03:B9C4: 07        .byte $07   ; 
- D 1 - I - 0x00D9D5 03:B9C5: 04        .byte $04   ; 
- D 1 - I - 0x00D9D6 03:B9C6: 01        .byte $01   ; 



off_04_B9C7_02:
- D 1 - I - 0x00D9D7 03:B9C7: FC        .byte $FC   ; 
- D 1 - I - 0x00D9D8 03:B9C8: 07        .byte $07   ; 
- D 1 - I - 0x00D9D9 03:B9C9: 04        .byte $04   ; 
- D 1 - I - 0x00D9DA 03:B9CA: 05        .byte $05   ; 



off_04_B9CB_03:
- - - - - - 0x00D9DB 03:B9CB: 09        .byte $09   ; 
- - - - - - 0x00D9DC 03:B9CC: 08        .byte $08   ; 
- - - - - - 0x00D9DD 03:B9CD: 0A        .byte $0A   ; 
- - - - - - 0x00D9DE 03:B9CE: 06        .byte $06   ; 
- - - - - - 0x00D9DF 03:B9CF: FE        .byte $FE   ; 



off_04_B9D0_04:
- D 1 - I - 0x00D9E0 03:B9D0: 0B        .byte $0B   ; 
- D 1 - I - 0x00D9E1 03:B9D1: 08        .byte $08   ; 
- D 1 - I - 0x00D9E2 03:B9D2: 0C        .byte $0C   ; 
- D 1 - I - 0x00D9E3 03:B9D3: 06        .byte $06   ; 
- D 1 - I - 0x00D9E4 03:B9D4: FE        .byte $FE   ; 



off_04_B9D5_05:
- D 1 - I - 0x00D9E5 03:B9D5: 0D        .byte $0D   ; 
- D 1 - I - 0x00D9E6 03:B9D6: 08        .byte $08   ; 
- D 1 - I - 0x00D9E7 03:B9D7: 0E        .byte $0E   ; 
- D 1 - I - 0x00D9E8 03:B9D8: 06        .byte $06   ; 
- D 1 - I - 0x00D9E9 03:B9D9: FE        .byte $FE   ; 



off_04_B9DA_06:
- D 1 - I - 0x00D9EA 03:B9DA: 0F        .byte $0F   ; 
- D 1 - I - 0x00D9EB 03:B9DB: 08        .byte $08   ; 
- D 1 - I - 0x00D9EC 03:B9DC: 10        .byte $10   ; 
- D 1 - I - 0x00D9ED 03:B9DD: 06        .byte $06   ; 
- D 1 - I - 0x00D9EE 03:B9DE: FE        .byte $FE   ; 



off_04_B9DF_07:
- D 1 - I - 0x00D9EF 03:B9DF: 11        .byte $11   ; 
- D 1 - I - 0x00D9F0 03:B9E0: 05        .byte $05   ; 
- D 1 - I - 0x00D9F1 03:B9E1: FF        .byte $FF   ; 



off_04_B9E2_08:
- D 1 - I - 0x00D9F2 03:B9E2: 12        .byte $12   ; 
- D 1 - I - 0x00D9F3 03:B9E3: 05        .byte $05   ; 
- D 1 - I - 0x00D9F4 03:B9E4: FF        .byte $FF   ; 



off_04_B9E5_09:
- D 1 - I - 0x00D9F5 03:B9E5: 13        .byte $13   ; 
- D 1 - I - 0x00D9F6 03:B9E6: 05        .byte $05   ; 
- D 1 - I - 0x00D9F7 03:B9E7: FF        .byte $FF   ; 



off_04_B9E8_0A:
- D 1 - I - 0x00D9F8 03:B9E8: 14        .byte $14   ; 
- D 1 - I - 0x00D9F9 03:B9E9: 05        .byte $05   ; 
- D 1 - I - 0x00D9FA 03:B9EA: FF        .byte $FF   ; 



off_04_B9EB_0B:
- - - - - - 0x00D9FB 03:B9EB: 15        .byte $15   ; 
- - - - - - 0x00D9FC 03:B9EC: 05        .byte $05   ; 
- - - - - - 0x00D9FD 03:B9ED: FF        .byte $FF   ; 



off_04_B9EE_0C:
- - - - - - 0x00D9FE 03:B9EE: 16        .byte $16   ; 
- - - - - - 0x00D9FF 03:B9EF: 05        .byte $05   ; 
- - - - - - 0x00DA00 03:B9F0: FF        .byte $FF   ; 



off_04_B9F1_0D:
- D 1 - I - 0x00DA01 03:B9F1: 09        .byte $09   ; 
- D 1 - I - 0x00DA02 03:B9F2: 05        .byte $05   ; 
- D 1 - I - 0x00DA03 03:B9F3: FF        .byte $FF   ; 



off_04_B9F4_0E:
- D 1 - I - 0x00DA04 03:B9F4: 0B        .byte $0B   ; 
- D 1 - I - 0x00DA05 03:B9F5: 05        .byte $05   ; 
- D 1 - I - 0x00DA06 03:B9F6: FF        .byte $FF   ; 



off_04_B9F7_0F:
- D 1 - I - 0x00DA07 03:B9F7: 0D        .byte $0D   ; 
- D 1 - I - 0x00DA08 03:B9F8: 05        .byte $05   ; 
- D 1 - I - 0x00DA09 03:B9F9: FF        .byte $FF   ; 



off_04_B9FA_10:
- D 1 - I - 0x00DA0A 03:B9FA: 0F        .byte $0F   ; 
- D 1 - I - 0x00DA0B 03:B9FB: 05        .byte $05   ; 
- D 1 - I - 0x00DA0C 03:B9FC: FF        .byte $FF   ; 



off_04_B9FD_11:
- D 1 - I - 0x00DA0D 03:B9FD: 17        .byte $17   ; 
- D 1 - I - 0x00DA0E 03:B9FE: 08        .byte $08   ; 
- D 1 - I - 0x00DA0F 03:B9FF: FF        .byte $FF   ; 



off_04_BA00_12:
- D 1 - I - 0x00DA10 03:BA00: 18        .byte $18   ; 
- D 1 - I - 0x00DA11 03:BA01: 08        .byte $08   ; 
- D 1 - I - 0x00DA12 03:BA02: FF        .byte $FF   ; 



off_04_BA03_13:
- - - - - - 0x00DA13 03:BA03: FC        .byte $FC   ; 
- - - - - - 0x00DA14 03:BA04: 07        .byte $07   ; 
- - - - - - 0x00DA15 03:BA05: 04        .byte $04   ; 
- - - - - - 0x00DA16 03:BA06: 19        .byte $19   ; 



off_04_BA07_14:
- - - - - - 0x00DA17 03:BA07: FC        .byte $FC   ; 
- - - - - - 0x00DA18 03:BA08: 07        .byte $07   ; 
- - - - - - 0x00DA19 03:BA09: 04        .byte $04   ; 
- - - - - - 0x00DA1A 03:BA0A: 1D        .byte $1D   ; 



off_04_BA0B_4F:
- D 1 - I - 0x00DA1B 03:BA0B: 21        .byte $21   ; 
- D 1 - I - 0x00DA1C 03:BA0C: 08        .byte $08   ; 
- D 1 - I - 0x00DA1D 03:BA0D: FF        .byte $FF   ; 



off_04_BA0E_50:
- D 1 - I - 0x00DA1E 03:BA0E: 24        .byte $24   ; 
- D 1 - I - 0x00DA1F 03:BA0F: 08        .byte $08   ; 
- D 1 - I - 0x00DA20 03:BA10: FF        .byte $FF   ; 



off_04_BA11_15:
- D 1 - I - 0x00DA21 03:BA11: 21        .byte $21   ; 
- D 1 - I - 0x00DA22 03:BA12: 07        .byte $07   ; 
- D 1 - I - 0x00DA23 03:BA13: 22        .byte $22   ; 
- D 1 - I - 0x00DA24 03:BA14: 05        .byte $05   ; 
- D 1 - I - 0x00DA25 03:BA15: 27        .byte $27   ; 
- D 1 - I - 0x00DA26 03:BA16: 05        .byte $05   ; 
- D 1 - I - 0x00DA27 03:BA17: 23        .byte $23   ; 
- D 1 - I - 0x00DA28 03:BA18: 07        .byte $07   ; 
- D 1 - I - 0x00DA29 03:BA19: FE        .byte $FE   ; 



off_04_BA1A_16:
- D 1 - I - 0x00DA2A 03:BA1A: 24        .byte $24   ; 
- D 1 - I - 0x00DA2B 03:BA1B: 07        .byte $07   ; 
- D 1 - I - 0x00DA2C 03:BA1C: 25        .byte $25   ; 
- D 1 - I - 0x00DA2D 03:BA1D: 05        .byte $05   ; 
- D 1 - I - 0x00DA2E 03:BA1E: 28        .byte $28   ; 
- D 1 - I - 0x00DA2F 03:BA1F: 05        .byte $05   ; 
- D 1 - I - 0x00DA30 03:BA20: 26        .byte $26   ; 
- D 1 - I - 0x00DA31 03:BA21: 07        .byte $07   ; 
- D 1 - I - 0x00DA32 03:BA22: FE        .byte $FE   ; 



off_04_BA23_17:
off_04_BA23_18:
- D 1 - I - 0x00DA33 03:BA23: 2B        .byte $2B   ; 
- D 1 - I - 0x00DA34 03:BA24: 05        .byte $05   ; 
- D 1 - I - 0x00DA35 03:BA25: FF        .byte $FF   ; 



off_04_BA26_19:
- D 1 - I - 0x00DA36 03:BA26: 2C        .byte $2C   ; 
- D 1 - I - 0x00DA37 03:BA27: 05        .byte $05   ; 
- D 1 - I - 0x00DA38 03:BA28: FF        .byte $FF   ; 



off_04_BA29_1A:
- D 1 - I - 0x00DA39 03:BA29: 2D        .byte $2D   ; 
- D 1 - I - 0x00DA3A 03:BA2A: 05        .byte $05   ; 
- D 1 - I - 0x00DA3B 03:BA2B: FE        .byte $FE   ; 



off_04_BA2C_1B:
- D 1 - I - 0x00DA3C 03:BA2C: 2E        .byte $2E   ; 
- D 1 - I - 0x00DA3D 03:BA2D: 05        .byte $05   ; 
- D 1 - I - 0x00DA3E 03:BA2E: FE        .byte $FE   ; 



off_04_BA2F_1C:
- D 1 - I - 0x00DA3F 03:BA2F: 2F        .byte $2F   ; 
- D 1 - I - 0x00DA40 03:BA30: 05        .byte $05   ; 
- D 1 - I - 0x00DA41 03:BA31: FE        .byte $FE   ; 



off_04_BA32_1D:
- D 1 - I - 0x00DA42 03:BA32: 30        .byte $30   ; 
- D 1 - I - 0x00DA43 03:BA33: 05        .byte $05   ; 
- D 1 - I - 0x00DA44 03:BA34: FE        .byte $FE   ; 



off_04_BA35_1E:
- D 1 - I - 0x00DA45 03:BA35: FD        .byte $FD   ; 
- D 1 - I - 0x00DA46 03:BA36: 06        .byte $06   ; 
- D 1 - I - 0x00DA47 03:BA37: 31        .byte $31   ; 
- D 1 - I - 0x00DA48 03:BA38: 32        .byte $32   ; 
- D 1 - I - 0x00DA49 03:BA39: 29        .byte $29   ; 
- D 1 - I - 0x00DA4A 03:BA3A: 33        .byte $33   ; 
- D 1 - I - 0x00DA4B 03:BA3B: FE        .byte $FE   ; 



off_04_BA3C_1F:
- D 1 - I - 0x00DA4C 03:BA3C: FD        .byte $FD   ; 
- D 1 - I - 0x00DA4D 03:BA3D: 06        .byte $06   ; 
- D 1 - I - 0x00DA4E 03:BA3E: 34        .byte $34   ; 
- D 1 - I - 0x00DA4F 03:BA3F: 35        .byte $35   ; 
- D 1 - I - 0x00DA50 03:BA40: 2A        .byte $2A   ; 
- D 1 - I - 0x00DA51 03:BA41: 36        .byte $36   ; 
- D 1 - I - 0x00DA52 03:BA42: FE        .byte $FE   ; 



off_04_BA43_51:
- D 1 - I - 0x00DA53 03:BA43: 31        .byte $31   ; 
- D 1 - I - 0x00DA54 03:BA44: 0C        .byte $0C   ; 
- D 1 - I - 0x00DA55 03:BA45: FF        .byte $FF   ; 



off_04_BA46_52:
- D 1 - I - 0x00DA56 03:BA46: 34        .byte $34   ; 
- D 1 - I - 0x00DA57 03:BA47: 0C        .byte $0C   ; 
- D 1 - I - 0x00DA58 03:BA48: FF        .byte $FF   ; 



off_04_BA49_20:
- D 1 - I - 0x00DA59 03:BA49: FC        .byte $FC   ; 
- D 1 - I - 0x00DA5A 03:BA4A: 07        .byte $07   ; 
- D 1 - I - 0x00DA5B 03:BA4B: 04        .byte $04   ; 
- D 1 - I - 0x00DA5C 03:BA4C: 37        .byte $37   ; 



off_04_BA4D_21:
- D 1 - I - 0x00DA5D 03:BA4D: FC        .byte $FC   ; 
- D 1 - I - 0x00DA5E 03:BA4E: 07        .byte $07   ; 
- D 1 - I - 0x00DA5F 03:BA4F: 04        .byte $04   ; 
- D 1 - I - 0x00DA60 03:BA50: 3B        .byte $3B   ; 



off_04_BA51_22:
- D 1 - I - 0x00DA61 03:BA51: 3F        .byte $3F   ; 
- D 1 - I - 0x00DA62 03:BA52: 05        .byte $05   ; 
- D 1 - I - 0x00DA63 03:BA53: 40        .byte $40   ; 
- D 1 - I - 0x00DA64 03:BA54: 05        .byte $05   ; 
- D 1 - I - 0x00DA65 03:BA55: FE        .byte $FE   ; 



off_04_BA56_23:
- - - - - - 0x00DA66 03:BA56: 41        .byte $41   ; 
- - - - - - 0x00DA67 03:BA57: 05        .byte $05   ; 
- - - - - - 0x00DA68 03:BA58: 42        .byte $42   ; 
- - - - - - 0x00DA69 03:BA59: 05        .byte $05   ; 
- - - - - - 0x00DA6A 03:BA5A: FE        .byte $FE   ; 



off_04_BA5B_24:
off_04_BA5B_25:
- D 1 - I - 0x00DA6B 03:BA5B: 47        .byte $47   ; 
- D 1 - I - 0x00DA6C 03:BA5C: 05        .byte $05   ; 
- D 1 - I - 0x00DA6D 03:BA5D: 48        .byte $48   ; 
- D 1 - I - 0x00DA6E 03:BA5E: 05        .byte $05   ; 
- D 1 - I - 0x00DA6F 03:BA5F: FE        .byte $FE   ; 



off_04_BA60_26:
- - - - - - 0x00DA70 03:BA60: 49        .byte $49   ; 
- - - - - - 0x00DA71 03:BA61: 05        .byte $05   ; 
- - - - - - 0x00DA72 03:BA62: 4A        .byte $4A   ; 
- - - - - - 0x00DA73 03:BA63: 05        .byte $05   ; 
- - - - - - 0x00DA74 03:BA64: FE        .byte $FE   ; 



off_04_BA65_27:
- D 1 - I - 0x00DA75 03:BA65: 4B        .byte $4B   ; 
- D 1 - I - 0x00DA76 03:BA66: 05        .byte $05   ; 
- D 1 - I - 0x00DA77 03:BA67: FF        .byte $FF   ; 



off_04_BA68_28:
- D 1 - I - 0x00DA78 03:BA68: 4C        .byte $4C   ; 
- D 1 - I - 0x00DA79 03:BA69: 05        .byte $05   ; 
- D 1 - I - 0x00DA7A 03:BA6A: FF        .byte $FF   ; 



off_04_BA6B_53:
- D 1 - I - 0x00DA7B 03:BA6B: 3F        .byte $3F   ; 
- D 1 - I - 0x00DA7C 03:BA6C: 05        .byte $05   ; 
- D 1 - I - 0x00DA7D 03:BA6D: FF        .byte $FF   ; 



off_04_BA6E_54:
- D 1 - I - 0x00DA7E 03:BA6E: 41        .byte $41   ; 
- D 1 - I - 0x00DA7F 03:BA6F: 05        .byte $05   ; 
- D 1 - I - 0x00DA80 03:BA70: FF        .byte $FF   ; 



off_04_BA71_55:
- D 1 - I - 0x00DA81 03:BA71: 47        .byte $47   ; 
- D 1 - I - 0x00DA82 03:BA72: 05        .byte $05   ; 
- D 1 - I - 0x00DA83 03:BA73: FF        .byte $FF   ; 



off_04_BA74_56:
- D 1 - I - 0x00DA84 03:BA74: 49        .byte $49   ; 
- D 1 - I - 0x00DA85 03:BA75: 05        .byte $05   ; 
- D 1 - I - 0x00DA86 03:BA76: FF        .byte $FF   ; 



off_04_BA77_29:
- D 1 - I - 0x00DA87 03:BA77: FC        .byte $FC   ; 
- D 1 - I - 0x00DA88 03:BA78: 07        .byte $07   ; 
- D 1 - I - 0x00DA89 03:BA79: 04        .byte $04   ; 
- D 1 - I - 0x00DA8A 03:BA7A: 4D        .byte $4D   ; 



off_04_BA7B_2A:
- - - - - - 0x00DA8B 03:BA7B: FC        .byte $FC   ; 
- - - - - - 0x00DA8C 03:BA7C: 07        .byte $07   ; 
- - - - - - 0x00DA8D 03:BA7D: 04        .byte $04   ; 
- - - - - - 0x00DA8E 03:BA7E: 51        .byte $51   ; 



off_04_BA7F_2B:
- - - - - - 0x00DA8F 03:BA7F: FC        .byte $FC   ; 
- - - - - - 0x00DA90 03:BA80: 09        .byte $09   ; 
- - - - - - 0x00DA91 03:BA81: 03        .byte $03   ; 
- - - - - - 0x00DA92 03:BA82: 55        .byte $55   ; 



off_04_BA83_2C:
- - - - - - 0x00DA93 03:BA83: FC        .byte $FC   ; 
- - - - - - 0x00DA94 03:BA84: 09        .byte $09   ; 
- - - - - - 0x00DA95 03:BA85: 03        .byte $03   ; 
- - - - - - 0x00DA96 03:BA86: 58        .byte $58   ; 



off_04_BA87_2D:
- - - - - - 0x00DA97 03:BA87: 5B        .byte $5B   ; 
- - - - - - 0x00DA98 03:BA88: 02        .byte $02   ; 
- - - - - - 0x00DA99 03:BA89: 5C        .byte $5C   ; 
- - - - - - 0x00DA9A 03:BA8A: 02        .byte $02   ; 
- - - - - - 0x00DA9B 03:BA8B: 5D        .byte $5D   ; 
- - - - - - 0x00DA9C 03:BA8C: 07        .byte $07   ; 
- - - - - - 0x00DA9D 03:BA8D: 5E        .byte $5E   ; 
- - - - - - 0x00DA9E 03:BA8E: 07        .byte $07   ; 
- - - - - - 0x00DA9F 03:BA8F: FE        .byte $FE   ; 



off_04_BA90_2E:
- - - - - - 0x00DAA0 03:BA90: 5F        .byte $5F   ; 
- - - - - - 0x00DAA1 03:BA91: 02        .byte $02   ; 
- - - - - - 0x00DAA2 03:BA92: 60        .byte $60   ; 
- - - - - - 0x00DAA3 03:BA93: 02        .byte $02   ; 
- - - - - - 0x00DAA4 03:BA94: 61        .byte $61   ; 
- - - - - - 0x00DAA5 03:BA95: 07        .byte $07   ; 
- - - - - - 0x00DAA6 03:BA96: 62        .byte $62   ; 
- - - - - - 0x00DAA7 03:BA97: 07        .byte $07   ; 
- - - - - - 0x00DAA8 03:BA98: FE        .byte $FE   ; 



off_04_BA99_2F:
- D 1 - I - 0x00DAA9 03:BA99: 63        .byte $63   ; 
- D 1 - I - 0x00DAAA 03:BA9A: 05        .byte $05   ; 
- D 1 - I - 0x00DAAB 03:BA9B: FF        .byte $FF   ; 



off_04_BA9C_30:
- - - - - - 0x00DAAC 03:BA9C: 64        .byte $64   ; 
- - - - - - 0x00DAAD 03:BA9D: 05        .byte $05   ; 
- - - - - - 0x00DAAE 03:BA9E: FF        .byte $FF   ; 



off_04_BA9F_31:
- D 1 - I - 0x00DAAF 03:BA9F: 65        .byte $65   ; 
- D 1 - I - 0x00DAB0 03:BAA0: 05        .byte $05   ; 
- D 1 - I - 0x00DAB1 03:BAA1: FE        .byte $FE   ; 



off_04_BAA2_32:
- - - - - - 0x00DAB2 03:BAA2: 66        .byte $66   ; 
- - - - - - 0x00DAB3 03:BAA3: 05        .byte $05   ; 
- - - - - - 0x00DAB4 03:BAA4: FE        .byte $FE   ; 



off_04_BAA5_33:
- D 1 - I - 0x00DAB5 03:BAA5: 67        .byte $67   ; 
- D 1 - I - 0x00DAB6 03:BAA6: 05        .byte $05   ; 
- D 1 - I - 0x00DAB7 03:BAA7: FE        .byte $FE   ; 



off_04_BAA8_34:
- - - - - - 0x00DAB8 03:BAA8: 68        .byte $68   ; 
- - - - - - 0x00DAB9 03:BAA9: 05        .byte $05   ; 
- - - - - - 0x00DABA 03:BAAA: FE        .byte $FE   ; 



off_04_BAAB_57:
- - - - - - 0x00DABB 03:BAAB: 4D        .byte $4D   ; 
- - - - - - 0x00DABC 03:BAAC: 08        .byte $08   ; 
- - - - - - 0x00DABD 03:BAAD: FF        .byte $FF   ; 



off_04_BAAE_58:
- - - - - - 0x00DABE 03:BAAE: 51        .byte $51   ; 
- - - - - - 0x00DABF 03:BAAF: 08        .byte $08   ; 
- - - - - - 0x00DAC0 03:BAB0: FF        .byte $FF   ; 



off_04_BAB1_59:
- - - - - - 0x00DAC1 03:BAB1: 5C        .byte $5C   ; 
- - - - - - 0x00DAC2 03:BAB2: 08        .byte $08   ; 
- - - - - - 0x00DAC3 03:BAB3: FF        .byte $FF   ; 



off_04_BAB4_5A:
- - - - - - 0x00DAC4 03:BAB4: 60        .byte $60   ; 
- - - - - - 0x00DAC5 03:BAB5: 08        .byte $08   ; 
- - - - - - 0x00DAC6 03:BAB6: FF        .byte $FF   ; 



off_04_BAB7_35:
- D 1 - I - 0x00DAC7 03:BAB7: FC        .byte $FC   ; 
- D 1 - I - 0x00DAC8 03:BAB8: 07        .byte $07   ; 
- D 1 - I - 0x00DAC9 03:BAB9: 04        .byte $04   ; 
- D 1 - I - 0x00DACA 03:BABA: 69        .byte $69   ; 



off_04_BABB_36:
- D 1 - I - 0x00DACB 03:BABB: FC        .byte $FC   ; 
- D 1 - I - 0x00DACC 03:BABC: 07        .byte $07   ; 
- D 1 - I - 0x00DACD 03:BABD: 04        .byte $04   ; 
- D 1 - I - 0x00DACE 03:BABE: 6D        .byte $6D   ; 



off_04_BABF_37:
- D 1 - I - 0x00DACF 03:BABF: 71        .byte $71   ; 
- D 1 - I - 0x00DAD0 03:BAC0: 08        .byte $08   ; 
- D 1 - I - 0x00DAD1 03:BAC1: 72        .byte $72   ; 
- D 1 - I - 0x00DAD2 03:BAC2: 03        .byte $03   ; 
- D 1 - I - 0x00DAD3 03:BAC3: 73        .byte $73   ; 
- D 1 - I - 0x00DAD4 03:BAC4: 09        .byte $09   ; 
- D 1 - I - 0x00DAD5 03:BAC5: 74        .byte $74   ; 
- D 1 - I - 0x00DAD6 03:BAC6: 09        .byte $09   ; 
- D 1 - I - 0x00DAD7 03:BAC7: FE        .byte $FE   ; 



off_04_BAC8_38:
- - - - - - 0x00DAD8 03:BAC8: 75        .byte $75   ; 
- - - - - - 0x00DAD9 03:BAC9: 08        .byte $08   ; 
- - - - - - 0x00DADA 03:BACA: 76        .byte $76   ; 
- - - - - - 0x00DADB 03:BACB: 03        .byte $03   ; 
- - - - - - 0x00DADC 03:BACC: 77        .byte $77   ; 
- - - - - - 0x00DADD 03:BACD: 09        .byte $09   ; 
- - - - - - 0x00DADE 03:BACE: 78        .byte $78   ; 
- - - - - - 0x00DADF 03:BACF: 09        .byte $09   ; 
- - - - - - 0x00DAE0 03:BAD0: FE        .byte $FE   ; 



off_04_BAD1_39:
- D 1 - I - 0x00DAE1 03:BAD1: 79        .byte $79   ; 
- D 1 - I - 0x00DAE2 03:BAD2: 05        .byte $05   ; 
- D 1 - I - 0x00DAE3 03:BAD3: FE        .byte $FE   ; 



off_04_BAD4_3A:
- D 1 - I - 0x00DAE4 03:BAD4: 7A        .byte $7A   ; 
- D 1 - I - 0x00DAE5 03:BAD5: 05        .byte $05   ; 
- D 1 - I - 0x00DAE6 03:BAD6: FE        .byte $FE   ; 



off_04_BAD7_3B:
- D 1 - I - 0x00DAE7 03:BAD7: 7B        .byte $7B   ; 
- D 1 - I - 0x00DAE8 03:BAD8: 05        .byte $05   ; 
- D 1 - I - 0x00DAE9 03:BAD9: FE        .byte $FE   ; 



off_04_BADA_3C:
- D 1 - I - 0x00DAEA 03:BADA: 7C        .byte $7C   ; 
- D 1 - I - 0x00DAEB 03:BADB: 05        .byte $05   ; 
- D 1 - I - 0x00DAEC 03:BADC: FE        .byte $FE   ; 



off_04_BADD_3D:
- D 1 - I - 0x00DAED 03:BADD: 7D        .byte $7D   ; 
- D 1 - I - 0x00DAEE 03:BADE: 05        .byte $05   ; 
- D 1 - I - 0x00DAEF 03:BADF: FF        .byte $FF   ; 



off_04_BAE0_3E:
- D 1 - I - 0x00DAF0 03:BAE0: 7E        .byte $7E   ; 
- D 1 - I - 0x00DAF1 03:BAE1: 05        .byte $05   ; 
- D 1 - I - 0x00DAF2 03:BAE2: FF        .byte $FF   ; 



off_04_BAE3_5B:
- D 1 - I - 0x00DAF3 03:BAE3: 71        .byte $71   ; 
- D 1 - I - 0x00DAF4 03:BAE4: 08        .byte $08   ; 
- D 1 - I - 0x00DAF5 03:BAE5: FF        .byte $FF   ; 



off_04_BAE6_5C:
- D 1 - I - 0x00DAF6 03:BAE6: 75        .byte $75   ; 
- D 1 - I - 0x00DAF7 03:BAE7: 08        .byte $08   ; 
- - - - - - 0x00DAF8 03:BAE8: FF        .byte $FF   ; 



off_04_BAE9_5D:
- - - - - - 0x00DAF9 03:BAE9: 69        .byte $69   ; 
- - - - - - 0x00DAFA 03:BAEA: 08        .byte $08   ; 
- - - - - - 0x00DAFB 03:BAEB: FF        .byte $FF   ; 



off_04_BAEC_5E:
- - - - - - 0x00DAFC 03:BAEC: 6D        .byte $6D   ; 
- - - - - - 0x00DAFD 03:BAED: 08        .byte $08   ; 
- - - - - - 0x00DAFE 03:BAEE: FF        .byte $FF   ; 



off_04_BAEF_3F:
- - - - - - 0x00DAFF 03:BAEF: 7F        .byte $7F   ; 
- - - - - - 0x00DB00 03:BAF0: 06        .byte $06   ; 
- - - - - - 0x00DB01 03:BAF1: 80        .byte $80   ; 
- - - - - - 0x00DB02 03:BAF2: 06        .byte $06   ; 
- - - - - - 0x00DB03 03:BAF3: FE        .byte $FE   ; 



off_04_BAF4_40:
- - - - - - 0x00DB04 03:BAF4: 81        .byte $81   ; 
- - - - - - 0x00DB05 03:BAF5: 06        .byte $06   ; 
- - - - - - 0x00DB06 03:BAF6: 82        .byte $82   ; 
- - - - - - 0x00DB07 03:BAF7: 06        .byte $06   ; 
- - - - - - 0x00DB08 03:BAF8: FE        .byte $FE   ; 



off_04_BAF9_41:
- D 1 - I - 0x00DB09 03:BAF9: 83        .byte $83   ; 
- D 1 - I - 0x00DB0A 03:BAFA: 06        .byte $06   ; 
- D 1 - I - 0x00DB0B 03:BAFB: 84        .byte $84   ; 
- D 1 - I - 0x00DB0C 03:BAFC: 06        .byte $06   ; 
- D 1 - I - 0x00DB0D 03:BAFD: FE        .byte $FE   ; 



off_04_BAFE_42:
- D 1 - I - 0x00DB0E 03:BAFE: 85        .byte $85   ; 
- D 1 - I - 0x00DB0F 03:BAFF: 06        .byte $06   ; 
- D 1 - I - 0x00DB10 03:BB00: 86        .byte $86   ; 
- D 1 - I - 0x00DB11 03:BB01: 06        .byte $06   ; 
- D 1 - I - 0x00DB12 03:BB02: FE        .byte $FE   ; 



off_04_BB03_43:
- - - - - - 0x00DB13 03:BB03: 87        .byte $87   ; 
- - - - - - 0x00DB14 03:BB04: 06        .byte $06   ; 
- - - - - - 0x00DB15 03:BB05: 88        .byte $88   ; 
- - - - - - 0x00DB16 03:BB06: 06        .byte $06   ; 
- - - - - - 0x00DB17 03:BB07: FE        .byte $FE   ; 



off_04_BB08_44:
- - - - - - 0x00DB18 03:BB08: 89        .byte $89   ; 
- - - - - - 0x00DB19 03:BB09: 06        .byte $06   ; 
- - - - - - 0x00DB1A 03:BB0A: 8A        .byte $8A   ; 
- - - - - - 0x00DB1B 03:BB0B: 06        .byte $06   ; 
- - - - - - 0x00DB1C 03:BB0C: FE        .byte $FE   ; 



off_04_BB0D_45:
- D 1 - I - 0x00DB1D 03:BB0D: 7F        .byte $7F   ; 
- D 1 - I - 0x00DB1E 03:BB0E: 05        .byte $05   ; 
- D 1 - I - 0x00DB1F 03:BB0F: FF        .byte $FF   ; 



off_04_BB10_46:
- D 1 - I - 0x00DB20 03:BB10: 81        .byte $81   ; 
- D 1 - I - 0x00DB21 03:BB11: 05        .byte $05   ; 
- D 1 - I - 0x00DB22 03:BB12: FF        .byte $FF   ; 



off_04_BB13_47:
- D 1 - I - 0x00DB23 03:BB13: 83        .byte $83   ; 
- D 1 - I - 0x00DB24 03:BB14: 05        .byte $05   ; 
- D 1 - I - 0x00DB25 03:BB15: FF        .byte $FF   ; 



off_04_BB16_48:
- D 1 - I - 0x00DB26 03:BB16: 85        .byte $85   ; 
- D 1 - I - 0x00DB27 03:BB17: 05        .byte $05   ; 
- D 1 - I - 0x00DB28 03:BB18: FF        .byte $FF   ; 



off_04_BB19_49:
- - - - - - 0x00DB29 03:BB19: 87        .byte $87   ; 
- - - - - - 0x00DB2A 03:BB1A: 05        .byte $05   ; 
- - - - - - 0x00DB2B 03:BB1B: FF        .byte $FF   ; 



off_04_BB1C_4A:
- - - - - - 0x00DB2C 03:BB1C: 89        .byte $89   ; 
- - - - - - 0x00DB2D 03:BB1D: 05        .byte $05   ; 
- - - - - - 0x00DB2E 03:BB1E: FF        .byte $FF   ; 



off_04_BB1F_4B:
- D 1 - I - 0x00DB2F 03:BB1F: 8B        .byte $8B   ; 
- D 1 - I - 0x00DB30 03:BB20: 05        .byte $05   ; 
- D 1 - I - 0x00DB31 03:BB21: FE        .byte $FE   ; 



off_04_BB22_4C:
- D 1 - I - 0x00DB32 03:BB22: 8C        .byte $8C   ; 
- D 1 - I - 0x00DB33 03:BB23: 05        .byte $05   ; 
- D 1 - I - 0x00DB34 03:BB24: FE        .byte $FE   ; 



off_04_BB25_4D:
- D 1 - I - 0x00DB35 03:BB25: 8D        .byte $8D   ; 
- D 1 - I - 0x00DB36 03:BB26: 05        .byte $05   ; 
- D 1 - I - 0x00DB37 03:BB27: FE        .byte $FE   ; 



off_04_BB28_4E:
- D 1 - I - 0x00DB38 03:BB28: 8E        .byte $8E   ; 
- D 1 - I - 0x00DB39 03:BB29: 05        .byte $05   ; 
- D 1 - I - 0x00DB3A 03:BB2A: FE        .byte $FE   ; 



off_04_BB2B_5F:
- D 1 - I - 0x00DB3B 03:BB2B: FC        .byte $FC   ; 
- D 1 - I - 0x00DB3C 03:BB2C: 07        .byte $07   ; 
- D 1 - I - 0x00DB3D 03:BB2D: 04        .byte $04   ; 
- D 1 - I - 0x00DB3E 03:BB2E: 8F        .byte $8F   ; 



off_04_BB2F_60:
- D 1 - I - 0x00DB3F 03:BB2F: FC        .byte $FC   ; 
- D 1 - I - 0x00DB40 03:BB30: 07        .byte $07   ; 
- D 1 - I - 0x00DB41 03:BB31: 04        .byte $04   ; 
- D 1 - I - 0x00DB42 03:BB32: 93        .byte $93   ; 



off_04_BB33_61:
- - - - - - 0x00DB43 03:BB33: 91        .byte $91   ; 
- - - - - - 0x00DB44 03:BB34: 05        .byte $05   ; 
- - - - - - 0x00DB45 03:BB35: FF        .byte $FF   ; 



off_04_BB36_62:
- - - - - - 0x00DB46 03:BB36: 95        .byte $95   ; 
- - - - - - 0x00DB47 03:BB37: 05        .byte $05   ; 
- - - - - - 0x00DB48 03:BB38: FF        .byte $FF   ; 



_off019_DB49_03:
- D 1 - I - 0x00DB49 03:BB39: E7 BB     .word off_03_BBE7_01
- D 1 - I - 0x00DB4B 03:BB3B: EB BB     .word off_03_BBEB_02
- D 1 - I - 0x00DB4D 03:BB3D: F2 BB     .word off_03_BBF2_03
- D 1 - I - 0x00DB4F 03:BB3F: F9 BB     .word off_03_BBF9_04
- D 1 - I - 0x00DB51 03:BB41: 00 BC     .word off_03_BC00_05
- D 1 - I - 0x00DB53 03:BB43: 07 BC     .word off_03_BC07_06
- D 1 - I - 0x00DB55 03:BB45: 0B BC     .word off_03_BC0B_07
- D 1 - I - 0x00DB57 03:BB47: 0F BC     .word off_03_BC0F_08
- D 1 - I - 0x00DB59 03:BB49: 13 BC     .word off_03_BC13_09
- - - - - - 0x00DB5B 03:BB4B: 18 BC     .word off_03_BC18_0A
- D 1 - I - 0x00DB5D 03:BB4D: 1D BC     .word off_03_BC1D_0B
- - - - - - 0x00DB5F 03:BB4F: 22 BC     .word off_03_BC22_0C
- D 1 - I - 0x00DB61 03:BB51: 27 BC     .word off_03_BC27_0D
- D 1 - I - 0x00DB63 03:BB53: 2C BC     .word off_03_BC2C_0E
- D 1 - I - 0x00DB65 03:BB55: 31 BC     .word off_03_BC31_0F
- D 1 - I - 0x00DB67 03:BB57: 36 BC     .word off_03_BC36_10
- - - - - - 0x00DB69 03:BB59: 53 BC     .word off_03_BC53_11
- D 1 - I - 0x00DB6B 03:BB5B: 53 BC     .word off_03_BC53_12
- D 1 - I - 0x00DB6D 03:BB5D: 57 BC     .word off_03_BC57_13
- D 1 - I - 0x00DB6F 03:BB5F: 5C BC     .word off_03_BC5C_14
- D 1 - I - 0x00DB71 03:BB61: 60 BC     .word off_03_BC60_15
- D 1 - I - 0x00DB73 03:BB63: 66 BC     .word off_03_BC66_16
- D 1 - I - 0x00DB75 03:BB65: 6A BC     .word off_03_BC6A_17
- D 1 - I - 0x00DB77 03:BB67: 6F BC     .word off_03_BC6F_18
- D 1 - I - 0x00DB79 03:BB69: 75 BC     .word off_03_BC75_19
- D 1 - I - 0x00DB7B 03:BB6B: 88 BC     .word off_03_BC88_1A
- D 1 - I - 0x00DB7D 03:BB6D: 8C BC     .word off_03_BC8C_1B
- D 1 - I - 0x00DB7F 03:BB6F: 90 BC     .word off_03_BC90_1C
- D 1 - I - 0x00DB81 03:BB71: 94 BC     .word off_03_BC94_1D
- D 1 - I - 0x00DB83 03:BB73: 98 BC     .word off_03_BC98_1E
- D 1 - I - 0x00DB85 03:BB75: 9C BC     .word off_03_BC9C_1F
- D 1 - I - 0x00DB87 03:BB77: A0 BC     .word off_03_BCA0_20
- D 1 - I - 0x00DB89 03:BB79: A4 BC     .word off_03_BCA4_21
- D 1 - I - 0x00DB8B 03:BB7B: A8 BC     .word off_03_BCA8_22
- D 1 - I - 0x00DB8D 03:BB7D: AD BC     .word off_03_BCAD_23
- D 1 - I - 0x00DB8F 03:BB7F: B2 BC     .word off_03_BCB2_24
- - - - - - 0x00DB91 03:BB81: B7 BC     .word off_03_BCB7_25
- D 1 - I - 0x00DB93 03:BB83: BC BC     .word off_03_BCBC_26
- D 1 - I - 0x00DB95 03:BB85: C1 BC     .word off_03_BCC1_27
- D 1 - I - 0x00DB97 03:BB87: C6 BC     .word off_03_BCC6_28
- D 1 - I - 0x00DB99 03:BB89: CB BC     .word off_03_BCCB_29
- D 1 - I - 0x00DB9B 03:BB8B: E8 BC     .word off_03_BCE8_2A
- D 1 - I - 0x00DB9D 03:BB8D: EB BC     .word off_03_BCEB_2B
- D 1 - I - 0x00DB9F 03:BB8F: EE BC     .word off_03_BCEE_2C
- D 1 - I - 0x00DBA1 03:BB91: F1 BC     .word off_03_BCF1_2D
- D 1 - I - 0x00DBA3 03:BB93: F4 BC     .word off_03_BCF4_2E
- - - - - - 0x00DBA5 03:BB95: F8 BC     .word off_03_BCF8_2F
- D 1 - I - 0x00DBA7 03:BB97: FF BC     .word off_03_BCFF_30
- D 1 - I - 0x00DBA9 03:BB99: 06 BD     .word off_03_BD06_31
- D 1 - I - 0x00DBAB 03:BB9B: 0D BD     .word off_03_BD0D_32
- - - - - - 0x00DBAD 03:BB9D: 14 BD     .word off_03_BD14_33
- - - - - - 0x00DBAF 03:BB9F: 18 BD     .word off_03_BD18_34
- D 1 - I - 0x00DBB1 03:BBA1: 1C BD     .word off_03_BD1C_35
- D 1 - I - 0x00DBB3 03:BBA3: 20 BD     .word off_03_BD20_36
- - - - - - 0x00DBB5 03:BBA5: 25 BD     .word off_03_BD25_37
- D 1 - I - 0x00DBB7 03:BBA7: 2A BD     .word off_03_BD2A_38
- D 1 - I - 0x00DBB9 03:BBA9: 2F BD     .word off_03_BD2F_39
- D 1 - I - 0x00DBBB 03:BBAB: 34 BD     .word off_03_BD34_3A
- D 1 - I - 0x00DBBD 03:BBAD: 39 BD     .word off_03_BD39_3B
- D 1 - I - 0x00DBBF 03:BBAF: 3E BD     .word off_03_BD3E_3C
- D 1 - I - 0x00DBC1 03:BBB1: 43 BD     .word off_03_BD43_3D
- D 1 - I - 0x00DBC3 03:BBB3: 48 BD     .word off_03_BD48_3E
- D 1 - I - 0x00DBC5 03:BBB5: 55 BD     .word off_03_BD55_3F
- D 1 - I - 0x00DBC7 03:BBB7: 62 BD     .word off_03_BD62_40
- D 1 - I - 0x00DBC9 03:BBB9: 65 BD     .word off_03_BD65_41
- D 1 - I - 0x00DBCB 03:BBBB: 68 BD     .word off_03_BD68_42
- D 1 - I - 0x00DBCD 03:BBBD: 6B BD     .word off_03_BD6B_43
- D 1 - I - 0x00DBCF 03:BBBF: 3B BC     .word off_03_BC3B_44
- D 1 - I - 0x00DBD1 03:BBC1: 3E BC     .word off_03_BC3E_45
- D 1 - I - 0x00DBD3 03:BBC3: 41 BC     .word off_03_BC41_46
- D 1 - I - 0x00DBD5 03:BBC5: 44 BC     .word off_03_BC44_47
- D 1 - I - 0x00DBD7 03:BBC7: 47 BC     .word off_03_BC47_48
- D 1 - I - 0x00DBD9 03:BBC9: 4A BC     .word off_03_BC4A_49
- D 1 - I - 0x00DBDB 03:BBCB: 4D BC     .word off_03_BC4D_4A
- D 1 - I - 0x00DBDD 03:BBCD: 50 BC     .word off_03_BC50_4B
- D 1 - I - 0x00DBDF 03:BBCF: D0 BC     .word off_03_BCD0_4C
- D 1 - I - 0x00DBE1 03:BBD1: D3 BC     .word off_03_BCD3_4D
- D 1 - I - 0x00DBE3 03:BBD3: D6 BC     .word off_03_BCD6_4E
- D 1 - I - 0x00DBE5 03:BBD5: D9 BC     .word off_03_BCD9_4F
- D 1 - I - 0x00DBE7 03:BBD7: DC BC     .word off_03_BCDC_50
- D 1 - I - 0x00DBE9 03:BBD9: DF BC     .word off_03_BCDF_51
- D 1 - I - 0x00DBEB 03:BBDB: E2 BC     .word off_03_BCE2_52
- D 1 - I - 0x00DBED 03:BBDD: E5 BC     .word off_03_BCE5_53
- D 1 - I - 0x00DBEF 03:BBDF: 7C BC     .word off_03_BC7C_54
- D 1 - I - 0x00DBF1 03:BBE1: 7F BC     .word off_03_BC7F_55
- D 1 - I - 0x00DBF3 03:BBE3: 82 BC     .word off_03_BC82_56
- D 1 - I - 0x00DBF5 03:BBE5: 85 BC     .word off_03_BC85_57



off_03_BBE7_01:
- D 1 - I - 0x00DBF7 03:BBE7: FC        .byte $FC   ; 
- D 1 - I - 0x00DBF8 03:BBE8: 06        .byte $06   ; 
- D 1 - I - 0x00DBF9 03:BBE9: 04        .byte $04   ; 
- D 1 - I - 0x00DBFA 03:BBEA: 01        .byte $01   ; 



off_03_BBEB_02:
- D 1 - I - 0x00DBFB 03:BBEB: FD        .byte $FD   ; 
- D 1 - I - 0x00DBFC 03:BBEC: 06        .byte $06   ; 
- D 1 - I - 0x00DBFD 03:BBED: 05        .byte $05   ; 
- D 1 - I - 0x00DBFE 03:BBEE: 06        .byte $06   ; 
- D 1 - I - 0x00DBFF 03:BBEF: 07        .byte $07   ; 
- D 1 - I - 0x00DC00 03:BBF0: 32        .byte $32   ; 
- D 1 - I - 0x00DC01 03:BBF1: FF        .byte $FF   ; 



off_03_BBF2_03:
- D 1 - I - 0x00DC02 03:BBF2: FD        .byte $FD   ; 
- D 1 - I - 0x00DC03 03:BBF3: 06        .byte $06   ; 
- D 1 - I - 0x00DC04 03:BBF4: 08        .byte $08   ; 
- D 1 - I - 0x00DC05 03:BBF5: 09        .byte $09   ; 
- D 1 - I - 0x00DC06 03:BBF6: 0A        .byte $0A   ; 
- D 1 - I - 0x00DC07 03:BBF7: 33        .byte $33   ; 
- - - - - - 0x00DC08 03:BBF8: FF        .byte $FF   ; 



off_03_BBF9_04:
- D 1 - I - 0x00DC09 03:BBF9: FD        .byte $FD   ; 
- D 1 - I - 0x00DC0A 03:BBFA: 06        .byte $06   ; 
- D 1 - I - 0x00DC0B 03:BBFB: 0B        .byte $0B   ; 
- D 1 - I - 0x00DC0C 03:BBFC: 0C        .byte $0C   ; 
- D 1 - I - 0x00DC0D 03:BBFD: 0D        .byte $0D   ; 
- D 1 - I - 0x00DC0E 03:BBFE: 34        .byte $34   ; 
- - - - - - 0x00DC0F 03:BBFF: FF        .byte $FF   ; 



off_03_BC00_05:
- D 1 - I - 0x00DC10 03:BC00: FD        .byte $FD   ; 
- D 1 - I - 0x00DC11 03:BC01: 06        .byte $06   ; 
- D 1 - I - 0x00DC12 03:BC02: 0E        .byte $0E   ; 
- D 1 - I - 0x00DC13 03:BC03: 0F        .byte $0F   ; 
- D 1 - I - 0x00DC14 03:BC04: 10        .byte $10   ; 
- D 1 - I - 0x00DC15 03:BC05: 35        .byte $35   ; 
- - - - - - 0x00DC16 03:BC06: FF        .byte $FF   ; 



off_03_BC07_06:
- D 1 - I - 0x00DC17 03:BC07: FC        .byte $FC   ; 
- D 1 - I - 0x00DC18 03:BC08: 06        .byte $06   ; 
- D 1 - I - 0x00DC19 03:BC09: 04        .byte $04   ; 
- D 1 - I - 0x00DC1A 03:BC0A: 11        .byte $11   ; 



off_03_BC0B_07:
- D 1 - I - 0x00DC1B 03:BC0B: FC        .byte $FC   ; 
- D 1 - I - 0x00DC1C 03:BC0C: 06        .byte $06   ; 
- D 1 - I - 0x00DC1D 03:BC0D: 04        .byte $04   ; 
- D 1 - I - 0x00DC1E 03:BC0E: 15        .byte $15   ; 



off_03_BC0F_08:
- D 1 - I - 0x00DC1F 03:BC0F: FC        .byte $FC   ; 
- D 1 - I - 0x00DC20 03:BC10: 06        .byte $06   ; 
- D 1 - I - 0x00DC21 03:BC11: 04        .byte $04   ; 
- D 1 - I - 0x00DC22 03:BC12: 19        .byte $19   ; 



off_03_BC13_09:
- D 1 - I - 0x00DC23 03:BC13: 1D        .byte $1D   ; 
- D 1 - I - 0x00DC24 03:BC14: 05        .byte $05   ; 
- D 1 - I - 0x00DC25 03:BC15: 1E        .byte $1E   ; 
- D 1 - I - 0x00DC26 03:BC16: 05        .byte $05   ; 
- D 1 - I - 0x00DC27 03:BC17: FE        .byte $FE   ; 



off_03_BC18_0A:
- - - - - - 0x00DC28 03:BC18: 1F        .byte $1F   ; 
- - - - - - 0x00DC29 03:BC19: 05        .byte $05   ; 
- - - - - - 0x00DC2A 03:BC1A: 20        .byte $20   ; 
- - - - - - 0x00DC2B 03:BC1B: 05        .byte $05   ; 
- - - - - - 0x00DC2C 03:BC1C: FE        .byte $FE   ; 



off_03_BC1D_0B:
- D 1 - I - 0x00DC2D 03:BC1D: 21        .byte $21   ; 
- D 1 - I - 0x00DC2E 03:BC1E: 05        .byte $05   ; 
- D 1 - I - 0x00DC2F 03:BC1F: 22        .byte $22   ; 
- D 1 - I - 0x00DC30 03:BC20: 05        .byte $05   ; 
- D 1 - I - 0x00DC31 03:BC21: FE        .byte $FE   ; 



off_03_BC22_0C:
- - - - - - 0x00DC32 03:BC22: 24        .byte $24   ; 
- - - - - - 0x00DC33 03:BC23: 05        .byte $05   ; 
- - - - - - 0x00DC34 03:BC24: 23        .byte $23   ; 
- - - - - - 0x00DC35 03:BC25: 05        .byte $05   ; 
- - - - - - 0x00DC36 03:BC26: FE        .byte $FE   ; 



off_03_BC27_0D:
- D 1 - I - 0x00DC37 03:BC27: 26        .byte $26   ; 
- D 1 - I - 0x00DC38 03:BC28: 05        .byte $05   ; 
- D 1 - I - 0x00DC39 03:BC29: 25        .byte $25   ; 
- D 1 - I - 0x00DC3A 03:BC2A: 05        .byte $05   ; 
- D 1 - I - 0x00DC3B 03:BC2B: FE        .byte $FE   ; 



off_03_BC2C_0E:
- D 1 - I - 0x00DC3C 03:BC2C: 28        .byte $28   ; 
- D 1 - I - 0x00DC3D 03:BC2D: 05        .byte $05   ; 
- D 1 - I - 0x00DC3E 03:BC2E: 27        .byte $27   ; 
- D 1 - I - 0x00DC3F 03:BC2F: 05        .byte $05   ; 
- D 1 - I - 0x00DC40 03:BC30: FE        .byte $FE   ; 



off_03_BC31_0F:
- D 1 - I - 0x00DC41 03:BC31: 29        .byte $29   ; 
- D 1 - I - 0x00DC42 03:BC32: 05        .byte $05   ; 
- D 1 - I - 0x00DC43 03:BC33: 2A        .byte $2A   ; 
- D 1 - I - 0x00DC44 03:BC34: 05        .byte $05   ; 
- D 1 - I - 0x00DC45 03:BC35: FE        .byte $FE   ; 



off_03_BC36_10:
- D 1 - I - 0x00DC46 03:BC36: 2B        .byte $2B   ; 
- D 1 - I - 0x00DC47 03:BC37: 05        .byte $05   ; 
- D 1 - I - 0x00DC48 03:BC38: 2C        .byte $2C   ; 
- D 1 - I - 0x00DC49 03:BC39: 05        .byte $05   ; 
- D 1 - I - 0x00DC4A 03:BC3A: FE        .byte $FE   ; 



off_03_BC3B_44:
- D 1 - I - 0x00DC4B 03:BC3B: 1D        .byte $1D   ; 
- D 1 - I - 0x00DC4C 03:BC3C: 05        .byte $05   ; 
- D 1 - I - 0x00DC4D 03:BC3D: FF        .byte $FF   ; 



off_03_BC3E_45:
- D 1 - I - 0x00DC4E 03:BC3E: 1F        .byte $1F   ; 
- D 1 - I - 0x00DC4F 03:BC3F: 05        .byte $05   ; 
- D 1 - I - 0x00DC50 03:BC40: FF        .byte $FF   ; 



off_03_BC41_46:
- D 1 - I - 0x00DC51 03:BC41: 21        .byte $21   ; 
- D 1 - I - 0x00DC52 03:BC42: 05        .byte $05   ; 
- D 1 - I - 0x00DC53 03:BC43: FF        .byte $FF   ; 



off_03_BC44_47:
- D 1 - I - 0x00DC54 03:BC44: 24        .byte $24   ; 
- D 1 - I - 0x00DC55 03:BC45: 05        .byte $05   ; 
- D 1 - I - 0x00DC56 03:BC46: FF        .byte $FF   ; 



off_03_BC47_48:
- D 1 - I - 0x00DC57 03:BC47: 26        .byte $26   ; 
- D 1 - I - 0x00DC58 03:BC48: 05        .byte $05   ; 
- D 1 - I - 0x00DC59 03:BC49: FF        .byte $FF   ; 



off_03_BC4A_49:
- D 1 - I - 0x00DC5A 03:BC4A: 28        .byte $28   ; 
- D 1 - I - 0x00DC5B 03:BC4B: 05        .byte $05   ; 
- D 1 - I - 0x00DC5C 03:BC4C: FF        .byte $FF   ; 



off_03_BC4D_4A:
- D 1 - I - 0x00DC5D 03:BC4D: 29        .byte $29   ; 
- D 1 - I - 0x00DC5E 03:BC4E: 05        .byte $05   ; 
- D 1 - I - 0x00DC5F 03:BC4F: FF        .byte $FF   ; 



off_03_BC50_4B:
- D 1 - I - 0x00DC60 03:BC50: 2B        .byte $2B   ; 
- D 1 - I - 0x00DC61 03:BC51: 05        .byte $05   ; 
- D 1 - I - 0x00DC62 03:BC52: FF        .byte $FF   ; 



off_03_BC53_11:
off_03_BC53_12:
- D 1 - I - 0x00DC63 03:BC53: FC        .byte $FC   ; 
- D 1 - I - 0x00DC64 03:BC54: 08        .byte $08   ; 
- D 1 - I - 0x00DC65 03:BC55: 04        .byte $04   ; 
- D 1 - I - 0x00DC66 03:BC56: 36        .byte $36   ; 



off_03_BC57_13:
- D 1 - I - 0x00DC67 03:BC57: FD        .byte $FD   ; 
- D 1 - I - 0x00DC68 03:BC58: 02        .byte $02   ; 
- D 1 - I - 0x00DC69 03:BC59: 3E        .byte $3E   ; 
- D 1 - I - 0x00DC6A 03:BC5A: 3F        .byte $3F   ; 
- D 1 - I - 0x00DC6B 03:BC5B: FF        .byte $FF   ; 



off_03_BC5C_14:
- D 1 - I - 0x00DC6C 03:BC5C: FC        .byte $FC   ; 
- D 1 - I - 0x00DC6D 03:BC5D: 07        .byte $07   ; 
- D 1 - I - 0x00DC6E 03:BC5E: 03        .byte $03   ; 
- D 1 - I - 0x00DC6F 03:BC5F: 3E        .byte $3E   ; 



off_03_BC60_15:
- D 1 - I - 0x00DC70 03:BC60: FD        .byte $FD   ; 
- D 1 - I - 0x00DC71 03:BC61: 06        .byte $06   ; 
- D 1 - I - 0x00DC72 03:BC62: 41        .byte $41   ; 
- D 1 - I - 0x00DC73 03:BC63: 40        .byte $40   ; 
- D 1 - I - 0x00DC74 03:BC64: 3E        .byte $3E   ; 
- - - - - - 0x00DC75 03:BC65: FF        .byte $FF   ; 



off_03_BC66_16:
- D 1 - I - 0x00DC76 03:BC66: FC        .byte $FC   ; 
- D 1 - I - 0x00DC77 03:BC67: 08        .byte $08   ; 
- D 1 - I - 0x00DC78 03:BC68: 04        .byte $04   ; 
- D 1 - I - 0x00DC79 03:BC69: 3A        .byte $3A   ; 



off_03_BC6A_17:
- D 1 - I - 0x00DC7A 03:BC6A: FD        .byte $FD   ; 
- D 1 - I - 0x00DC7B 03:BC6B: 02        .byte $02   ; 
- D 1 - I - 0x00DC7C 03:BC6C: 42        .byte $42   ; 
- D 1 - I - 0x00DC7D 03:BC6D: 43        .byte $43   ; 
- D 1 - I - 0x00DC7E 03:BC6E: FF        .byte $FF   ; 



off_03_BC6F_18:
- D 1 - I - 0x00DC7F 03:BC6F: FD        .byte $FD   ; 
- D 1 - I - 0x00DC80 03:BC70: 07        .byte $07   ; 
- D 1 - I - 0x00DC81 03:BC71: 42        .byte $42   ; 
- D 1 - I - 0x00DC82 03:BC72: 44        .byte $44   ; 
- D 1 - I - 0x00DC83 03:BC73: 45        .byte $45   ; 
- - - - - - 0x00DC84 03:BC74: FF        .byte $FF   ; 



off_03_BC75_19:
- D 1 - I - 0x00DC85 03:BC75: 45        .byte $45   ; 
- D 1 - I - 0x00DC86 03:BC76: 06        .byte $06   ; 
- D 1 - I - 0x00DC87 03:BC77: 44        .byte $44   ; 
- D 1 - I - 0x00DC88 03:BC78: 0B        .byte $0B   ; 
- - - - - - 0x00DC89 03:BC79: 43        .byte $43   ; 
- - - - - - 0x00DC8A 03:BC7A: 04        .byte $04   ; 
- - - - - - 0x00DC8B 03:BC7B: FF        .byte $FF   ; 



off_03_BC7C_54:
- D 1 - I - 0x00DC8C 03:BC7C: 3E        .byte $3E   ; 
- D 1 - I - 0x00DC8D 03:BC7D: 02        .byte $02   ; 
- D 1 - I - 0x00DC8E 03:BC7E: FF        .byte $FF   ; 



off_03_BC7F_55:
- D 1 - I - 0x00DC8F 03:BC7F: 42        .byte $42   ; 
- D 1 - I - 0x00DC90 03:BC80: 02        .byte $02   ; 
- D 1 - I - 0x00DC91 03:BC81: FF        .byte $FF   ; 



off_03_BC82_56:
- D 1 - I - 0x00DC92 03:BC82: 41        .byte $41   ; 
- D 1 - I - 0x00DC93 03:BC83: 06        .byte $06   ; 
- - - - - - 0x00DC94 03:BC84: FF        .byte $FF   ; 



off_03_BC85_57:
- D 1 - I - 0x00DC95 03:BC85: 45        .byte $45   ; 
- D 1 - I - 0x00DC96 03:BC86: 06        .byte $06   ; 
- - - - - - 0x00DC97 03:BC87: FF        .byte $FF   ; 



off_03_BC88_1A:
- D 1 - I - 0x00DC98 03:BC88: FC        .byte $FC   ; 
- D 1 - I - 0x00DC99 03:BC89: 07        .byte $07   ; 
- D 1 - I - 0x00DC9A 03:BC8A: 04        .byte $04   ; 
- D 1 - I - 0x00DC9B 03:BC8B: 46        .byte $46   ; 



off_03_BC8C_1B:
- D 1 - I - 0x00DC9C 03:BC8C: FC        .byte $FC   ; 
- D 1 - I - 0x00DC9D 03:BC8D: 07        .byte $07   ; 
- D 1 - I - 0x00DC9E 03:BC8E: 04        .byte $04   ; 
- D 1 - I - 0x00DC9F 03:BC8F: 4A        .byte $4A   ; 



off_03_BC90_1C:
- D 1 - I - 0x00DCA0 03:BC90: FC        .byte $FC   ; 
- D 1 - I - 0x00DCA1 03:BC91: 07        .byte $07   ; 
- D 1 - I - 0x00DCA2 03:BC92: 04        .byte $04   ; 
- D 1 - I - 0x00DCA3 03:BC93: 4E        .byte $4E   ; 



off_03_BC94_1D:
- D 1 - I - 0x00DCA4 03:BC94: FC        .byte $FC   ; 
- D 1 - I - 0x00DCA5 03:BC95: 07        .byte $07   ; 
- D 1 - I - 0x00DCA6 03:BC96: 04        .byte $04   ; 
- D 1 - I - 0x00DCA7 03:BC97: 52        .byte $52   ; 



off_03_BC98_1E:
- D 1 - I - 0x00DCA8 03:BC98: FC        .byte $FC   ; 
- D 1 - I - 0x00DCA9 03:BC99: 07        .byte $07   ; 
- D 1 - I - 0x00DCAA 03:BC9A: 04        .byte $04   ; 
- D 1 - I - 0x00DCAB 03:BC9B: 56        .byte $56   ; 



off_03_BC9C_1F:
- D 1 - I - 0x00DCAC 03:BC9C: FC        .byte $FC   ; 
- D 1 - I - 0x00DCAD 03:BC9D: 07        .byte $07   ; 
- D 1 - I - 0x00DCAE 03:BC9E: 04        .byte $04   ; 
- D 1 - I - 0x00DCAF 03:BC9F: 5A        .byte $5A   ; 



off_03_BCA0_20:
- D 1 - I - 0x00DCB0 03:BCA0: FC        .byte $FC   ; 
- D 1 - I - 0x00DCB1 03:BCA1: 07        .byte $07   ; 
- D 1 - I - 0x00DCB2 03:BCA2: 04        .byte $04   ; 
- D 1 - I - 0x00DCB3 03:BCA3: 5E        .byte $5E   ; 



off_03_BCA4_21:
- D 1 - I - 0x00DCB4 03:BCA4: FC        .byte $FC   ; 
- D 1 - I - 0x00DCB5 03:BCA5: 07        .byte $07   ; 
- D 1 - I - 0x00DCB6 03:BCA6: 04        .byte $04   ; 
- D 1 - I - 0x00DCB7 03:BCA7: 62        .byte $62   ; 



off_03_BCA8_22:
- D 1 - I - 0x00DCB8 03:BCA8: 66        .byte $66   ; 
- D 1 - I - 0x00DCB9 03:BCA9: 05        .byte $05   ; 
- D 1 - I - 0x00DCBA 03:BCAA: 67        .byte $67   ; 
- D 1 - I - 0x00DCBB 03:BCAB: 05        .byte $05   ; 
- D 1 - I - 0x00DCBC 03:BCAC: FE        .byte $FE   ; 



off_03_BCAD_23:
- D 1 - I - 0x00DCBD 03:BCAD: 68        .byte $68   ; 
- D 1 - I - 0x00DCBE 03:BCAE: 05        .byte $05   ; 
- D 1 - I - 0x00DCBF 03:BCAF: 69        .byte $69   ; 
- D 1 - I - 0x00DCC0 03:BCB0: 05        .byte $05   ; 
- D 1 - I - 0x00DCC1 03:BCB1: FE        .byte $FE   ; 



off_03_BCB2_24:
- D 1 - I - 0x00DCC2 03:BCB2: 6A        .byte $6A   ; 
- D 1 - I - 0x00DCC3 03:BCB3: 05        .byte $05   ; 
- D 1 - I - 0x00DCC4 03:BCB4: 6B        .byte $6B   ; 
- D 1 - I - 0x00DCC5 03:BCB5: 05        .byte $05   ; 
- D 1 - I - 0x00DCC6 03:BCB6: FE        .byte $FE   ; 



off_03_BCB7_25:
- - - - - - 0x00DCC7 03:BCB7: 6C        .byte $6C   ; 
- - - - - - 0x00DCC8 03:BCB8: 05        .byte $05   ; 
- - - - - - 0x00DCC9 03:BCB9: 6D        .byte $6D   ; 
- - - - - - 0x00DCCA 03:BCBA: 05        .byte $05   ; 
- - - - - - 0x00DCCB 03:BCBB: FE        .byte $FE   ; 



off_03_BCBC_26:
- D 1 - I - 0x00DCCC 03:BCBC: 6E        .byte $6E   ; 
- D 1 - I - 0x00DCCD 03:BCBD: 05        .byte $05   ; 
- D 1 - I - 0x00DCCE 03:BCBE: 6F        .byte $6F   ; 
- D 1 - I - 0x00DCCF 03:BCBF: 05        .byte $05   ; 
- D 1 - I - 0x00DCD0 03:BCC0: FE        .byte $FE   ; 



off_03_BCC1_27:
- D 1 - I - 0x00DCD1 03:BCC1: 70        .byte $70   ; 
- D 1 - I - 0x00DCD2 03:BCC2: 05        .byte $05   ; 
- D 1 - I - 0x00DCD3 03:BCC3: 71        .byte $71   ; 
- D 1 - I - 0x00DCD4 03:BCC4: 05        .byte $05   ; 
- D 1 - I - 0x00DCD5 03:BCC5: FE        .byte $FE   ; 



off_03_BCC6_28:
- D 1 - I - 0x00DCD6 03:BCC6: 72        .byte $72   ; 
- D 1 - I - 0x00DCD7 03:BCC7: 05        .byte $05   ; 
- D 1 - I - 0x00DCD8 03:BCC8: 73        .byte $73   ; 
- D 1 - I - 0x00DCD9 03:BCC9: 05        .byte $05   ; 
- D 1 - I - 0x00DCDA 03:BCCA: FE        .byte $FE   ; 



off_03_BCCB_29:
- D 1 - I - 0x00DCDB 03:BCCB: 74        .byte $74   ; 
- D 1 - I - 0x00DCDC 03:BCCC: 05        .byte $05   ; 
- D 1 - I - 0x00DCDD 03:BCCD: 75        .byte $75   ; 
- D 1 - I - 0x00DCDE 03:BCCE: 05        .byte $05   ; 
- D 1 - I - 0x00DCDF 03:BCCF: FE        .byte $FE   ; 



off_03_BCD0_4C:
- D 1 - I - 0x00DCE0 03:BCD0: 66        .byte $66   ; 
- D 1 - I - 0x00DCE1 03:BCD1: 05        .byte $05   ; 
- D 1 - I - 0x00DCE2 03:BCD2: FF        .byte $FF   ; 



off_03_BCD3_4D:
- D 1 - I - 0x00DCE3 03:BCD3: 68        .byte $68   ; 
- D 1 - I - 0x00DCE4 03:BCD4: 05        .byte $05   ; 
- D 1 - I - 0x00DCE5 03:BCD5: FF        .byte $FF   ; 



off_03_BCD6_4E:
- D 1 - I - 0x00DCE6 03:BCD6: 6A        .byte $6A   ; 
- D 1 - I - 0x00DCE7 03:BCD7: 05        .byte $05   ; 
- D 1 - I - 0x00DCE8 03:BCD8: FF        .byte $FF   ; 



off_03_BCD9_4F:
- D 1 - I - 0x00DCE9 03:BCD9: 6C        .byte $6C   ; 
- D 1 - I - 0x00DCEA 03:BCDA: 05        .byte $05   ; 
- D 1 - I - 0x00DCEB 03:BCDB: FF        .byte $FF   ; 



off_03_BCDC_50:
- D 1 - I - 0x00DCEC 03:BCDC: 6E        .byte $6E   ; 
- D 1 - I - 0x00DCED 03:BCDD: 05        .byte $05   ; 
- D 1 - I - 0x00DCEE 03:BCDE: FF        .byte $FF   ; 



off_03_BCDF_51:
- D 1 - I - 0x00DCEF 03:BCDF: 70        .byte $70   ; 
- D 1 - I - 0x00DCF0 03:BCE0: 05        .byte $05   ; 
- D 1 - I - 0x00DCF1 03:BCE1: FF        .byte $FF   ; 



off_03_BCE2_52:
- D 1 - I - 0x00DCF2 03:BCE2: 72        .byte $72   ; 
- D 1 - I - 0x00DCF3 03:BCE3: 05        .byte $05   ; 
- D 1 - I - 0x00DCF4 03:BCE4: FF        .byte $FF   ; 



off_03_BCE5_53:
- D 1 - I - 0x00DCF5 03:BCE5: 74        .byte $74   ; 
- D 1 - I - 0x00DCF6 03:BCE6: 05        .byte $05   ; 
- D 1 - I - 0x00DCF7 03:BCE7: FF        .byte $FF   ; 



off_03_BCE8_2A:
- D 1 - I - 0x00DCF8 03:BCE8: 76        .byte $76   ; 
- D 1 - I - 0x00DCF9 03:BCE9: 05        .byte $05   ; 
- D 1 - I - 0x00DCFA 03:BCEA: FF        .byte $FF   ; 



off_03_BCEB_2B:
- D 1 - I - 0x00DCFB 03:BCEB: 77        .byte $77   ; 
- D 1 - I - 0x00DCFC 03:BCEC: 05        .byte $05   ; 
- D 1 - I - 0x00DCFD 03:BCED: FF        .byte $FF   ; 



off_03_BCEE_2C:
- D 1 - I - 0x00DCFE 03:BCEE: 78        .byte $78   ; 
- D 1 - I - 0x00DCFF 03:BCEF: 05        .byte $05   ; 
- D 1 - I - 0x00DD00 03:BCF0: FF        .byte $FF   ; 



off_03_BCF1_2D:
- D 1 - I - 0x00DD01 03:BCF1: 79        .byte $79   ; 
- D 1 - I - 0x00DD02 03:BCF2: 05        .byte $05   ; 
- D 1 - I - 0x00DD03 03:BCF3: FF        .byte $FF   ; 



off_03_BCF4_2E:
- D 1 - I - 0x00DD04 03:BCF4: FC        .byte $FC   ; 
- D 1 - I - 0x00DD05 03:BCF5: 07        .byte $07   ; 
- D 1 - I - 0x00DD06 03:BCF6: 04        .byte $04   ; 
- D 1 - I - 0x00DD07 03:BCF7: 7A        .byte $7A   ; 



off_03_BCF8_2F:
- - - - - - 0x00DD08 03:BCF8: FD        .byte $FD   ; 
- - - - - - 0x00DD09 03:BCF9: 07        .byte $07   ; 
- - - - - - 0x00DD0A 03:BCFA: 7E        .byte $7E   ; 
- - - - - - 0x00DD0B 03:BCFB: 7F        .byte $7F   ; 
- - - - - - 0x00DD0C 03:BCFC: 80        .byte $80   ; 
- - - - - - 0x00DD0D 03:BCFD: 7F        .byte $7F   ; 
- - - - - - 0x00DD0E 03:BCFE: FF        .byte $FF   ; 



off_03_BCFF_30:
- D 1 - I - 0x00DD0F 03:BCFF: FD        .byte $FD   ; 
- D 1 - I - 0x00DD10 03:BD00: 07        .byte $07   ; 
- D 1 - I - 0x00DD11 03:BD01: 81        .byte $81   ; 
- D 1 - I - 0x00DD12 03:BD02: 82        .byte $82   ; 
- D 1 - I - 0x00DD13 03:BD03: 83        .byte $83   ; 
- - - - - - 0x00DD14 03:BD04: 82        .byte $82   ; 
- - - - - - 0x00DD15 03:BD05: FF        .byte $FF   ; 



off_03_BD06_31:
- D 1 - I - 0x00DD16 03:BD06: FD        .byte $FD   ; 
- D 1 - I - 0x00DD17 03:BD07: 07        .byte $07   ; 
- D 1 - I - 0x00DD18 03:BD08: 84        .byte $84   ; 
- D 1 - I - 0x00DD19 03:BD09: 85        .byte $85   ; 
- D 1 - I - 0x00DD1A 03:BD0A: 86        .byte $86   ; 
- D 1 - I - 0x00DD1B 03:BD0B: AC        .byte $AC   ; 
- - - - - - 0x00DD1C 03:BD0C: FF        .byte $FF   ; 



off_03_BD0D_32:
- D 1 - I - 0x00DD1D 03:BD0D: FD        .byte $FD   ; 
- D 1 - I - 0x00DD1E 03:BD0E: 07        .byte $07   ; 
- D 1 - I - 0x00DD1F 03:BD0F: 87        .byte $87   ; 
- D 1 - I - 0x00DD20 03:BD10: 88        .byte $88   ; 
- D 1 - I - 0x00DD21 03:BD11: 89        .byte $89   ; 
- D 1 - I - 0x00DD22 03:BD12: AD        .byte $AD   ; 
- - - - - - 0x00DD23 03:BD13: FF        .byte $FF   ; 



off_03_BD14_33:
- - - - - - 0x00DD24 03:BD14: FC        .byte $FC   ; 
- - - - - - 0x00DD25 03:BD15: 07        .byte $07   ; 
- - - - - - 0x00DD26 03:BD16: 04        .byte $04   ; 
- - - - - - 0x00DD27 03:BD17: 8A        .byte $8A   ; 



off_03_BD18_34:
- - - - - - 0x00DD28 03:BD18: FC        .byte $FC   ; 
- - - - - - 0x00DD29 03:BD19: 07        .byte $07   ; 
- - - - - - 0x00DD2A 03:BD1A: 04        .byte $04   ; 
- - - - - - 0x00DD2B 03:BD1B: 8E        .byte $8E   ; 



off_03_BD1C_35:
- D 1 - I - 0x00DD2C 03:BD1C: FC        .byte $FC   ; 
- D 1 - I - 0x00DD2D 03:BD1D: 07        .byte $07   ; 
- D 1 - I - 0x00DD2E 03:BD1E: 04        .byte $04   ; 
- D 1 - I - 0x00DD2F 03:BD1F: 92        .byte $92   ; 



off_03_BD20_36:
- D 1 - I - 0x00DD30 03:BD20: 96        .byte $96   ; 
- D 1 - I - 0x00DD31 03:BD21: 05        .byte $05   ; 
- D 1 - I - 0x00DD32 03:BD22: 97        .byte $97   ; 
- D 1 - I - 0x00DD33 03:BD23: 05        .byte $05   ; 
- D 1 - I - 0x00DD34 03:BD24: FE        .byte $FE   ; 



off_03_BD25_37:
- - - - - - 0x00DD35 03:BD25: 9A        .byte $9A   ; 
- - - - - - 0x00DD36 03:BD26: 05        .byte $05   ; 
- - - - - - 0x00DD37 03:BD27: 9B        .byte $9B   ; 
- - - - - - 0x00DD38 03:BD28: 05        .byte $05   ; 
- - - - - - 0x00DD39 03:BD29: FE        .byte $FE   ; 



off_03_BD2A_38:
- D 1 - I - 0x00DD3A 03:BD2A: 98        .byte $98   ; 
- D 1 - I - 0x00DD3B 03:BD2B: 05        .byte $05   ; 
- D 1 - I - 0x00DD3C 03:BD2C: 99        .byte $99   ; 
- D 1 - I - 0x00DD3D 03:BD2D: 05        .byte $05   ; 
- D 1 - I - 0x00DD3E 03:BD2E: FE        .byte $FE   ; 



off_03_BD2F_39:
- D 1 - I - 0x00DD3F 03:BD2F: 9C        .byte $9C   ; 
- D 1 - I - 0x00DD40 03:BD30: 05        .byte $05   ; 
- D 1 - I - 0x00DD41 03:BD31: 9D        .byte $9D   ; 
- D 1 - I - 0x00DD42 03:BD32: 05        .byte $05   ; 
- D 1 - I - 0x00DD43 03:BD33: FE        .byte $FE   ; 



off_03_BD34_3A:
- D 1 - I - 0x00DD44 03:BD34: 9E        .byte $9E   ; 
- D 1 - I - 0x00DD45 03:BD35: 05        .byte $05   ; 
- D 1 - I - 0x00DD46 03:BD36: 9F        .byte $9F   ; 
- D 1 - I - 0x00DD47 03:BD37: 05        .byte $05   ; 
- D 1 - I - 0x00DD48 03:BD38: FE        .byte $FE   ; 



off_03_BD39_3B:
- D 1 - I - 0x00DD49 03:BD39: A0        .byte $A0   ; 
- D 1 - I - 0x00DD4A 03:BD3A: 05        .byte $05   ; 
- D 1 - I - 0x00DD4B 03:BD3B: A1        .byte $A1   ; 
- D 1 - I - 0x00DD4C 03:BD3C: 05        .byte $05   ; 
- D 1 - I - 0x00DD4D 03:BD3D: FE        .byte $FE   ; 



off_03_BD3E_3C:
- D 1 - I - 0x00DD4E 03:BD3E: A2        .byte $A2   ; 
- D 1 - I - 0x00DD4F 03:BD3F: 05        .byte $05   ; 
- D 1 - I - 0x00DD50 03:BD40: A3        .byte $A3   ; 
- D 1 - I - 0x00DD51 03:BD41: 05        .byte $05   ; 
- D 1 - I - 0x00DD52 03:BD42: FE        .byte $FE   ; 



off_03_BD43_3D:
- D 1 - I - 0x00DD53 03:BD43: A4        .byte $A4   ; 
- D 1 - I - 0x00DD54 03:BD44: 05        .byte $05   ; 
- D 1 - I - 0x00DD55 03:BD45: A5        .byte $A5   ; 
- D 1 - I - 0x00DD56 03:BD46: 05        .byte $05   ; 
- D 1 - I - 0x00DD57 03:BD47: FE        .byte $FE   ; 



off_03_BD48_3E:
- D 1 - I - 0x00DD58 03:BD48: A6        .byte $A6   ; 
- D 1 - I - 0x00DD59 03:BD49: 0A        .byte $0A   ; 
- D 1 - I - 0x00DD5A 03:BD4A: 9C        .byte $9C   ; 
- D 1 - I - 0x00DD5B 03:BD4B: 09        .byte $09   ; 
- D 1 - I - 0x00DD5C 03:BD4C: 98        .byte $98   ; 
- D 1 - I - 0x00DD5D 03:BD4D: 08        .byte $08   ; 
- D 1 - I - 0x00DD5E 03:BD4E: A8        .byte $A8   ; 
- D 1 - I - 0x00DD5F 03:BD4F: 0A        .byte $0A   ; 
- D 1 - I - 0x00DD60 03:BD50: A9        .byte $A9   ; 
- D 1 - I - 0x00DD61 03:BD51: 08        .byte $08   ; 
- D 1 - I - 0x00DD62 03:BD52: 9C        .byte $9C   ; 
- D 1 - I - 0x00DD63 03:BD53: 07        .byte $07   ; 
- D 1 - I - 0x00DD64 03:BD54: FF        .byte $FF   ; 



off_03_BD55_3F:
- D 1 - I - 0x00DD65 03:BD55: A7        .byte $A7   ; 
- D 1 - I - 0x00DD66 03:BD56: 0F        .byte $0F   ; 
- D 1 - I - 0x00DD67 03:BD57: 9E        .byte $9E   ; 
- D 1 - I - 0x00DD68 03:BD58: 09        .byte $09   ; 
- D 1 - I - 0x00DD69 03:BD59: 9A        .byte $9A   ; 
- D 1 - I - 0x00DD6A 03:BD5A: 08        .byte $08   ; 
- D 1 - I - 0x00DD6B 03:BD5B: AA        .byte $AA   ; 
- D 1 - I - 0x00DD6C 03:BD5C: 0F        .byte $0F   ; 
- D 1 - I - 0x00DD6D 03:BD5D: AB        .byte $AB   ; 
- D 1 - I - 0x00DD6E 03:BD5E: 0A        .byte $0A   ; 
- D 1 - I - 0x00DD6F 03:BD5F: 9E        .byte $9E   ; 
- D 1 - I - 0x00DD70 03:BD60: 07        .byte $07   ; 
- D 1 - I - 0x00DD71 03:BD61: FF        .byte $FF   ; 



off_03_BD62_40:
- D 1 - I - 0x00DD72 03:BD62: AE        .byte $AE   ; 
- D 1 - I - 0x00DD73 03:BD63: 05        .byte $05   ; 
- D 1 - I - 0x00DD74 03:BD64: FF        .byte $FF   ; 



off_03_BD65_41:
- D 1 - I - 0x00DD75 03:BD65: AF        .byte $AF   ; 
- D 1 - I - 0x00DD76 03:BD66: 05        .byte $05   ; 
- D 1 - I - 0x00DD77 03:BD67: FF        .byte $FF   ; 



off_03_BD68_42:
- D 1 - I - 0x00DD78 03:BD68: B0        .byte $B0   ; 
- D 1 - I - 0x00DD79 03:BD69: 05        .byte $05   ; 
- D 1 - I - 0x00DD7A 03:BD6A: FF        .byte $FF   ; 



off_03_BD6B_43:
- D 1 - I - 0x00DD7B 03:BD6B: B1        .byte $B1   ; 
- D 1 - I - 0x00DD7C 03:BD6C: 05        .byte $05   ; 
- D 1 - I - 0x00DD7D 03:BD6D: FF        .byte $FF   ; 



_off019_DD7E_05:
- D 1 - I - 0x00DD7E 03:BD6E: 76 BD     .word off_05_BD76_01
- - - - - - 0x00DD80 03:BD70: 7A BD     .word off_05_BD7A_02
- - - - - - 0x00DD82 03:BD72: 7A BD     .word off_05_BD7A_03
- D 1 - I - 0x00DD84 03:BD74: 81 BD     .word off_05_BD81_04



off_05_BD76_01:
- D 1 - I - 0x00DD86 03:BD76: FC        .byte $FC   ; 
- D 1 - I - 0x00DD87 03:BD77: 05        .byte $05   ; 
- D 1 - I - 0x00DD88 03:BD78: 04        .byte $04   ; 
- D 1 - I - 0x00DD89 03:BD79: 03        .byte $03   ; 



off_05_BD7A_02:
off_05_BD7A_03:
- - - - - - 0x00DD8A 03:BD7A: FD        .byte $FD   ; 
- - - - - - 0x00DD8B 03:BD7B: 03        .byte $03   ; 
- - - - - - 0x00DD8C 03:BD7C: 0D        .byte $0D   ; 
- - - - - - 0x00DD8D 03:BD7D: 0E        .byte $0E   ; 
- - - - - - 0x00DD8E 03:BD7E: 0F        .byte $0F   ; 
- - - - - - 0x00DD8F 03:BD7F: 10        .byte $10   ; 
- - - - - - 0x00DD90 03:BD80: FE        .byte $FE   ; 



off_05_BD81_04:
- D 1 - I - 0x00DD91 03:BD81: FC        .byte $FC   ; 
- D 1 - I - 0x00DD92 03:BD82: 03        .byte $03   ; 
- D 1 - I - 0x00DD93 03:BD83: 04        .byte $04   ; 
- D 1 - I - 0x00DD94 03:BD84: 17        .byte $17   ; 



_off019_DD95_08:
- - - - - - 0x00DD95 03:BD85: A5 BD     .word off_08_BDA5_00
- D 1 - I - 0x00DD97 03:BD87: A9 BD     .word off_08_BDA9_01
- D 1 - I - 0x00DD99 03:BD89: AD BD     .word off_08_BDAD_02
- D 1 - I - 0x00DD9B 03:BD8B: B1 BD     .word off_08_BDB1_03
- D 1 - I - 0x00DD9D 03:BD8D: B8 BD     .word off_08_BDB8_04
- D 1 - I - 0x00DD9F 03:BD8F: BF BD     .word off_08_BDBF_05
- D 1 - I - 0x00DDA1 03:BD91: C6 BD     .word off_08_BDC6_06
- D 1 - I - 0x00DDA3 03:BD93: CD BD     .word off_08_BDCD_07
- D 1 - I - 0x00DDA5 03:BD95: D4 BD     .word off_08_BDD4_08
- D 1 - I - 0x00DDA7 03:BD97: DB BD     .word off_08_BDDB_09
- - - - - - 0x00DDA9 03:BD99: E2 BD     .word off_08_BDE2_0A
- D 1 - I - 0x00DDAB 03:BD9B: E9 BD     .word off_08_BDE9_0B
- D 1 - I - 0x00DDAD 03:BD9D: ED BD     .word off_08_BDED_0C
- D 1 - I - 0x00DDAF 03:BD9F: F1 BD     .word off_08_BDF1_0D
- D 1 - I - 0x00DDB1 03:BDA1: FA BD     .word off_08_BDFA_0E
- - - - - - 0x00DDB3 03:BDA3: FE BD     .word off_08_BDFE_0F



off_08_BDA5_00:
- - - - - - 0x00DDB5 03:BDA5: FC        .byte $FC   ; 
- - - - - - 0x00DDB6 03:BDA6: 03        .byte $03   ; 
- - - - - - 0x00DDB7 03:BDA7: 04        .byte $04   ; 
- - - - - - 0x00DDB8 03:BDA8: 01        .byte $01   ; 



off_08_BDA9_01:
- D 1 - I - 0x00DDB9 03:BDA9: FC        .byte $FC   ; 
- D 1 - I - 0x00DDBA 03:BDAA: 03        .byte $03   ; 
- D 1 - I - 0x00DDBB 03:BDAB: 04        .byte $04   ; 
- D 1 - I - 0x00DDBC 03:BDAC: 05        .byte $05   ; 



off_08_BDAD_02:
- D 1 - I - 0x00DDBD 03:BDAD: FC        .byte $FC   ; 
- D 1 - I - 0x00DDBE 03:BDAE: 01        .byte $01   ; 
- D 1 - I - 0x00DDBF 03:BDAF: 04        .byte $04   ; 
- D 1 - I - 0x00DDC0 03:BDB0: 19        .byte $19   ; 



off_08_BDB1_03:
- D 1 - I - 0x00DDC1 03:BDB1: FD        .byte $FD   ; 
- D 1 - I - 0x00DDC2 03:BDB2: 04        .byte $04   ; 
- D 1 - I - 0x00DDC3 03:BDB3: 1D        .byte $1D   ; 
- D 1 - I - 0x00DDC4 03:BDB4: 1E        .byte $1E   ; 
- D 1 - I - 0x00DDC5 03:BDB5: 1D        .byte $1D   ; 
- D 1 - I - 0x00DDC6 03:BDB6: 1E        .byte $1E   ; 
- D 1 - I - 0x00DDC7 03:BDB7: FE        .byte $FE   ; 



off_08_BDB8_04:
- D 1 - I - 0x00DDC8 03:BDB8: FD        .byte $FD   ; 
- D 1 - I - 0x00DDC9 03:BDB9: 03        .byte $03   ; 
- D 1 - I - 0x00DDCA 03:BDBA: 1F        .byte $1F   ; 
- D 1 - I - 0x00DDCB 03:BDBB: 20        .byte $20   ; 
- D 1 - I - 0x00DDCC 03:BDBC: 1F        .byte $1F   ; 
- D 1 - I - 0x00DDCD 03:BDBD: 20        .byte $20   ; 
- D 1 - I - 0x00DDCE 03:BDBE: FE        .byte $FE   ; 



off_08_BDBF_05:
- D 1 - I - 0x00DDCF 03:BDBF: FD        .byte $FD   ; 
- D 1 - I - 0x00DDD0 03:BDC0: 04        .byte $04   ; 
- D 1 - I - 0x00DDD1 03:BDC1: 21        .byte $21   ; 
- - - - - - 0x00DDD2 03:BDC2: 22        .byte $22   ; 
- - - - - - 0x00DDD3 03:BDC3: 21        .byte $21   ; 
- - - - - - 0x00DDD4 03:BDC4: 22        .byte $22   ; 
- - - - - - 0x00DDD5 03:BDC5: FE        .byte $FE   ; 



off_08_BDC6_06:
- D 1 - I - 0x00DDD6 03:BDC6: FD        .byte $FD   ; 
- D 1 - I - 0x00DDD7 03:BDC7: 03        .byte $03   ; 
- D 1 - I - 0x00DDD8 03:BDC8: 23        .byte $23   ; 
- D 1 - I - 0x00DDD9 03:BDC9: 24        .byte $24   ; 
- D 1 - I - 0x00DDDA 03:BDCA: 23        .byte $23   ; 
- D 1 - I - 0x00DDDB 03:BDCB: 24        .byte $24   ; 
- D 1 - I - 0x00DDDC 03:BDCC: FE        .byte $FE   ; 



off_08_BDCD_07:
- D 1 - I - 0x00DDDD 03:BDCD: FD        .byte $FD   ; 
- D 1 - I - 0x00DDDE 03:BDCE: 04        .byte $04   ; 
- D 1 - I - 0x00DDDF 03:BDCF: 25        .byte $25   ; 
- D 1 - I - 0x00DDE0 03:BDD0: 26        .byte $26   ; 
- D 1 - I - 0x00DDE1 03:BDD1: 25        .byte $25   ; 
- D 1 - I - 0x00DDE2 03:BDD2: 26        .byte $26   ; 
- D 1 - I - 0x00DDE3 03:BDD3: FE        .byte $FE   ; 



off_08_BDD4_08:
- D 1 - I - 0x00DDE4 03:BDD4: FD        .byte $FD   ; 
- D 1 - I - 0x00DDE5 03:BDD5: 04        .byte $04   ; 
- D 1 - I - 0x00DDE6 03:BDD6: 27        .byte $27   ; 
- D 1 - I - 0x00DDE7 03:BDD7: 28        .byte $28   ; 
- D 1 - I - 0x00DDE8 03:BDD8: 27        .byte $27   ; 
- D 1 - I - 0x00DDE9 03:BDD9: 28        .byte $28   ; 
- D 1 - I - 0x00DDEA 03:BDDA: FE        .byte $FE   ; 



off_08_BDDB_09:
- D 1 - I - 0x00DDEB 03:BDDB: FD        .byte $FD   ; 
- D 1 - I - 0x00DDEC 03:BDDC: 04        .byte $04   ; 
- D 1 - I - 0x00DDED 03:BDDD: 29        .byte $29   ; 
- D 1 - I - 0x00DDEE 03:BDDE: 2A        .byte $2A   ; 
- D 1 - I - 0x00DDEF 03:BDDF: 29        .byte $29   ; 
- D 1 - I - 0x00DDF0 03:BDE0: 2A        .byte $2A   ; 
- D 1 - I - 0x00DDF1 03:BDE1: FE        .byte $FE   ; 



off_08_BDE2_0A:
- - - - - - 0x00DDF2 03:BDE2: FD        .byte $FD   ; 
- - - - - - 0x00DDF3 03:BDE3: 04        .byte $04   ; 
- - - - - - 0x00DDF4 03:BDE4: 2B        .byte $2B   ; 
- - - - - - 0x00DDF5 03:BDE5: 2C        .byte $2C   ; 
- - - - - - 0x00DDF6 03:BDE6: 2B        .byte $2B   ; 
- - - - - - 0x00DDF7 03:BDE7: 2C        .byte $2C   ; 
- - - - - - 0x00DDF8 03:BDE8: FE        .byte $FE   ; 



off_08_BDE9_0B:
- D 1 - I - 0x00DDF9 03:BDE9: FC        .byte $FC   ; 
- D 1 - I - 0x00DDFA 03:BDEA: 05        .byte $05   ; 
- D 1 - I - 0x00DDFB 03:BDEB: 05        .byte $05   ; 
- D 1 - I - 0x00DDFC 03:BDEC: 31        .byte $31   ; 



off_08_BDED_0C:
- D 1 - I - 0x00DDFD 03:BDED: FC        .byte $FC   ; 
- D 1 - I - 0x00DDFE 03:BDEE: 01        .byte $01   ; 
- D 1 - I - 0x00DDFF 03:BDEF: 04        .byte $04   ; 
- D 1 - I - 0x00DE00 03:BDF0: 36        .byte $36   ; 



off_08_BDF1_0D:
- D 1 - I - 0x00DE01 03:BDF1: 38        .byte $38   ; 
- D 1 - I - 0x00DE02 03:BDF2: 01        .byte $01   ; 
- D 1 - I - 0x00DE03 03:BDF3: 39        .byte $39   ; 
- D 1 - I - 0x00DE04 03:BDF4: 01        .byte $01   ; 
- D 1 - I - 0x00DE05 03:BDF5: 3A        .byte $3A   ; 
- D 1 - I - 0x00DE06 03:BDF6: 01        .byte $01   ; 
- D 1 - I - 0x00DE07 03:BDF7: 3B        .byte $3B   ; 
- D 1 - I - 0x00DE08 03:BDF8: 02        .byte $02   ; 
- D 1 - I - 0x00DE09 03:BDF9: FF        .byte $FF   ; 



off_08_BDFA_0E:
- D 1 - I - 0x00DE0A 03:BDFA: FC        .byte $FC   ; 
- D 1 - I - 0x00DE0B 03:BDFB: 01        .byte $01   ; 
- D 1 - I - 0x00DE0C 03:BDFC: 02        .byte $02   ; 
- D 1 - I - 0x00DE0D 03:BDFD: 42        .byte $42   ; 



off_08_BDFE_0F:
- - - - - - 0x00DE0E 03:BDFE: FC        .byte $FC   ; 
- - - - - - 0x00DE0F 03:BDFF: 01        .byte $01   ; 
- - - - - - 0x00DE10 03:BE00: 02        .byte $02   ; 
- - - - - - 0x00DE11 03:BE01: 40        .byte $40   ; 



_off019_DE12_06:
- D 1 - I - 0x00DE12 03:BE02: 22 BE     .word off_06_BE22_01
- D 1 - I - 0x00DE14 03:BE04: 26 BE     .word off_06_BE26_02
- D 1 - I - 0x00DE16 03:BE06: 2A BE     .word off_06_BE2A_03
- D 1 - I - 0x00DE18 03:BE08: 35 BE     .word off_06_BE35_04
- D 1 - I - 0x00DE1A 03:BE0A: 40 BE     .word off_06_BE40_05
- D 1 - I - 0x00DE1C 03:BE0C: 44 BE     .word off_06_BE44_06
- D 1 - I - 0x00DE1E 03:BE0E: 4D BE     .word off_06_BE4D_07
- D 1 - I - 0x00DE20 03:BE10: 56 BE     .word off_06_BE56_08
- D 1 - I - 0x00DE22 03:BE12: 5F BE     .word off_06_BE5F_09
- D 1 - I - 0x00DE24 03:BE14: 68 BE     .word off_06_BE68_0A
- D 1 - I - 0x00DE26 03:BE16: 73 BE     .word off_06_BE73_0B
- D 1 - I - 0x00DE28 03:BE18: 76 BE     .word off_06_BE76_0C
- D 1 - I - 0x00DE2A 03:BE1A: 79 BE     .word off_06_BE79_0D
- D 1 - I - 0x00DE2C 03:BE1C: 7D BE     .word off_06_BE7D_0E
- D 1 - I - 0x00DE2E 03:BE1E: 81 BE     .word off_06_BE81_0F
- D 1 - I - 0x00DE30 03:BE20: 84 BE     .word off_06_BE84_10



off_06_BE22_01:
- D 1 - I - 0x00DE32 03:BE22: FC        .byte $FC   ; 
- D 1 - I - 0x00DE33 03:BE23: 07        .byte $07   ; 
- D 1 - I - 0x00DE34 03:BE24: 04        .byte $04   ; 
- D 1 - I - 0x00DE35 03:BE25: 01        .byte $01   ; 



off_06_BE26_02:
- D 1 - I - 0x00DE36 03:BE26: FC        .byte $FC   ; 
- D 1 - I - 0x00DE37 03:BE27: 07        .byte $07   ; 
- D 1 - I - 0x00DE38 03:BE28: 04        .byte $04   ; 
- D 1 - I - 0x00DE39 03:BE29: 05        .byte $05   ; 



off_06_BE2A_03:
- D 1 - I - 0x00DE3A 03:BE2A: 09        .byte $09   ; 
- D 1 - I - 0x00DE3B 03:BE2B: 09        .byte $09   ; 
- D 1 - I - 0x00DE3C 03:BE2C: 0A        .byte $0A   ; 
- D 1 - I - 0x00DE3D 03:BE2D: 06        .byte $06   ; 
- D 1 - I - 0x00DE3E 03:BE2E: 0B        .byte $0B   ; 
- D 1 - I - 0x00DE3F 03:BE2F: 06        .byte $06   ; 
- D 1 - I - 0x00DE40 03:BE30: 0C        .byte $0C   ; 
- D 1 - I - 0x00DE41 03:BE31: 08        .byte $08   ; 
- D 1 - I - 0x00DE42 03:BE32: 0E        .byte $0E   ; 
- D 1 - I - 0x00DE43 03:BE33: 06        .byte $06   ; 
- - - - - - 0x00DE44 03:BE34: FF        .byte $FF   ; 



off_06_BE35_04:
- D 1 - I - 0x00DE45 03:BE35: 0F        .byte $0F   ; 
- D 1 - I - 0x00DE46 03:BE36: 09        .byte $09   ; 
- D 1 - I - 0x00DE47 03:BE37: 0A        .byte $0A   ; 
- D 1 - I - 0x00DE48 03:BE38: 06        .byte $06   ; 
- D 1 - I - 0x00DE49 03:BE39: 0B        .byte $0B   ; 
- D 1 - I - 0x00DE4A 03:BE3A: 06        .byte $06   ; 
- D 1 - I - 0x00DE4B 03:BE3B: 10        .byte $10   ; 
- D 1 - I - 0x00DE4C 03:BE3C: 08        .byte $08   ; 
- D 1 - I - 0x00DE4D 03:BE3D: 11        .byte $11   ; 
- D 1 - I - 0x00DE4E 03:BE3E: 06        .byte $06   ; 
- - - - - - 0x00DE4F 03:BE3F: FF        .byte $FF   ; 



off_06_BE40_05:
- D 1 - I - 0x00DE50 03:BE40: FC        .byte $FC   ; 
- D 1 - I - 0x00DE51 03:BE41: 08        .byte $08   ; 
- D 1 - I - 0x00DE52 03:BE42: 04        .byte $04   ; 
- D 1 - I - 0x00DE53 03:BE43: 09        .byte $09   ; 



off_06_BE44_06:
- D 1 - I - 0x00DE54 03:BE44: 14        .byte $14   ; 
- D 1 - I - 0x00DE55 03:BE45: 07        .byte $07   ; 
- D 1 - I - 0x00DE56 03:BE46: 13        .byte $13   ; 
- D 1 - I - 0x00DE57 03:BE47: 09        .byte $09   ; 
- D 1 - I - 0x00DE58 03:BE48: 14        .byte $14   ; 
- D 1 - I - 0x00DE59 03:BE49: 07        .byte $07   ; 
- D 1 - I - 0x00DE5A 03:BE4A: 15        .byte $15   ; 
- D 1 - I - 0x00DE5B 03:BE4B: 07        .byte $07   ; 
- - - - - - 0x00DE5C 03:BE4C: FE        .byte $FE   ; 



off_06_BE4D_07:
- D 1 - I - 0x00DE5D 03:BE4D: 15        .byte $15   ; 
- D 1 - I - 0x00DE5E 03:BE4E: 07        .byte $07   ; 
- D 1 - I - 0x00DE5F 03:BE4F: 14        .byte $14   ; 
- D 1 - I - 0x00DE60 03:BE50: 07        .byte $07   ; 
- D 1 - I - 0x00DE61 03:BE51: 13        .byte $13   ; 
- D 1 - I - 0x00DE62 03:BE52: 0B        .byte $0B   ; 
- D 1 - I - 0x00DE63 03:BE53: 14        .byte $14   ; 
- D 1 - I - 0x00DE64 03:BE54: 08        .byte $08   ; 
- - - - - - 0x00DE65 03:BE55: FE        .byte $FE   ; 



off_06_BE56_08:
- D 1 - I - 0x00DE66 03:BE56: 18        .byte $18   ; 
- D 1 - I - 0x00DE67 03:BE57: 07        .byte $07   ; 
- D 1 - I - 0x00DE68 03:BE58: 17        .byte $17   ; 
- D 1 - I - 0x00DE69 03:BE59: 09        .byte $09   ; 
- D 1 - I - 0x00DE6A 03:BE5A: 18        .byte $18   ; 
- D 1 - I - 0x00DE6B 03:BE5B: 07        .byte $07   ; 
- D 1 - I - 0x00DE6C 03:BE5C: 19        .byte $19   ; 
- D 1 - I - 0x00DE6D 03:BE5D: 07        .byte $07   ; 
- - - - - - 0x00DE6E 03:BE5E: FE        .byte $FE   ; 



off_06_BE5F_09:
- D 1 - I - 0x00DE6F 03:BE5F: 19        .byte $19   ; 
- D 1 - I - 0x00DE70 03:BE60: 07        .byte $07   ; 
- D 1 - I - 0x00DE71 03:BE61: 18        .byte $18   ; 
- D 1 - I - 0x00DE72 03:BE62: 07        .byte $07   ; 
- D 1 - I - 0x00DE73 03:BE63: 17        .byte $17   ; 
- D 1 - I - 0x00DE74 03:BE64: 0B        .byte $0B   ; 
- D 1 - I - 0x00DE75 03:BE65: 18        .byte $18   ; 
- D 1 - I - 0x00DE76 03:BE66: 08        .byte $08   ; 
- - - - - - 0x00DE77 03:BE67: FE        .byte $FE   ; 



off_06_BE68_0A:
- D 1 - I - 0x00DE78 03:BE68: 1B        .byte $1B   ; 
- D 1 - I - 0x00DE79 03:BE69: 0C        .byte $0C   ; 
- D 1 - I - 0x00DE7A 03:BE6A: 1C        .byte $1C   ; 
- D 1 - I - 0x00DE7B 03:BE6B: 0C        .byte $0C   ; 
- D 1 - I - 0x00DE7C 03:BE6C: 1D        .byte $1D   ; 
- D 1 - I - 0x00DE7D 03:BE6D: 10        .byte $10   ; 
- D 1 - I - 0x00DE7E 03:BE6E: 1E        .byte $1E   ; 
- D 1 - I - 0x00DE7F 03:BE6F: 0C        .byte $0C   ; 
- D 1 - I - 0x00DE80 03:BE70: 1F        .byte $1F   ; 
- D 1 - I - 0x00DE81 03:BE71: 0C        .byte $0C   ; 
- - - - - - 0x00DE82 03:BE72: FF        .byte $FF   ; 



off_06_BE73_0B:
- D 1 - I - 0x00DE83 03:BE73: 16        .byte $16   ; 
- D 1 - I - 0x00DE84 03:BE74: 05        .byte $05   ; 
- D 1 - I - 0x00DE85 03:BE75: FF        .byte $FF   ; 



off_06_BE76_0C:
- D 1 - I - 0x00DE86 03:BE76: 1A        .byte $1A   ; 
- D 1 - I - 0x00DE87 03:BE77: 05        .byte $05   ; 
- D 1 - I - 0x00DE88 03:BE78: FF        .byte $FF   ; 



off_06_BE79_0D:
- D 1 - I - 0x00DE89 03:BE79: FC        .byte $FC   ; 
- D 1 - I - 0x00DE8A 03:BE7A: 07        .byte $07   ; 
- D 1 - I - 0x00DE8B 03:BE7B: 02        .byte $02   ; 
- D 1 - I - 0x00DE8C 03:BE7C: 0D        .byte $0D   ; 



off_06_BE7D_0E:
- D 1 - I - 0x00DE8D 03:BE7D: FC        .byte $FC   ; 
- D 1 - I - 0x00DE8E 03:BE7E: 07        .byte $07   ; 
- D 1 - I - 0x00DE8F 03:BE7F: 02        .byte $02   ; 
- D 1 - I - 0x00DE90 03:BE80: 11        .byte $11   ; 



off_06_BE81_0F:
- D 1 - I - 0x00DE91 03:BE81: 0E        .byte $0E   ; 
- D 1 - I - 0x00DE92 03:BE82: 07        .byte $07   ; 
- D 1 - I - 0x00DE93 03:BE83: FF        .byte $FF   ; 



off_06_BE84_10:
- D 1 - I - 0x00DE94 03:BE84: 12        .byte $12   ; 
- D 1 - I - 0x00DE95 03:BE85: 07        .byte $07   ; 
- D 1 - I - 0x00DE96 03:BE86: FF        .byte $FF   ; 



_off019_DE97_09:
- D 1 - I - 0x00DE97 03:BE87: A1 BE     .word off_09_BEA1_01
- D 1 - I - 0x00DE99 03:BE89: A5 BE     .word off_09_BEA5_02
- D 1 - I - 0x00DE9B 03:BE8B: A8 BE     .word off_09_BEA8_03
- D 1 - I - 0x00DE9D 03:BE8D: AC BE     .word off_09_BEAC_04
- D 1 - I - 0x00DE9F 03:BE8F: AF BE     .word off_09_BEAF_05
- D 1 - I - 0x00DEA1 03:BE91: B3 BE     .word off_09_BEB3_06
- D 1 - I - 0x00DEA3 03:BE93: B7 BE     .word off_09_BEB7_07
- D 1 - I - 0x00DEA5 03:BE95: BB BE     .word off_09_BEBB_08
- D 1 - I - 0x00DEA7 03:BE97: BF BE     .word off_09_BEBF_09
- D 1 - I - 0x00DEA9 03:BE99: C3 BE     .word off_09_BEC3_0A
- - - - - - 0x00DEAB 03:BE9B: C7 BE     .word off_09_BEC7_0B
- D 1 - I - 0x00DEAD 03:BE9D: CA BE     .word off_09_BECA_0C
- D 1 - I - 0x00DEAF 03:BE9F: D3 BE     .word off_09_BED3_0D



off_09_BEA1_01:
- D 1 - I - 0x00DEB1 03:BEA1: FC        .byte $FC   ; 
- D 1 - I - 0x00DEB2 03:BEA2: 04        .byte $04   ; 
- D 1 - I - 0x00DEB3 03:BEA3: 04        .byte $04   ; 
- D 1 - I - 0x00DEB4 03:BEA4: 01        .byte $01   ; 



off_09_BEA5_02:
- D 1 - I - 0x00DEB5 03:BEA5: 04        .byte $04   ; 
- D 1 - I - 0x00DEB6 03:BEA6: 04        .byte $04   ; 
- D 1 - I - 0x00DEB7 03:BEA7: FF        .byte $FF   ; 



off_09_BEA8_03:
- D 1 - I - 0x00DEB8 03:BEA8: FC        .byte $FC   ; 
- D 1 - I - 0x00DEB9 03:BEA9: 05        .byte $05   ; 
- D 1 - I - 0x00DEBA 03:BEAA: 04        .byte $04   ; 
- D 1 - I - 0x00DEBB 03:BEAB: 05        .byte $05   ; 



off_09_BEAC_04:
- D 1 - I - 0x00DEBC 03:BEAC: 03        .byte $03   ; 
- D 1 - I - 0x00DEBD 03:BEAD: 06        .byte $06   ; 
- D 1 - I - 0x00DEBE 03:BEAE: FF        .byte $FF   ; 



off_09_BEAF_05:
- D 1 - I - 0x00DEBF 03:BEAF: FC        .byte $FC   ; 
- D 1 - I - 0x00DEC0 03:BEB0: 05        .byte $05   ; 
- D 1 - I - 0x00DEC1 03:BEB1: 04        .byte $04   ; 
- D 1 - I - 0x00DEC2 03:BEB2: 17        .byte $17   ; 



off_09_BEB3_06:
- D 1 - I - 0x00DEC3 03:BEB3: FC        .byte $FC   ; 
- D 1 - I - 0x00DEC4 03:BEB4: 05        .byte $05   ; 
- D 1 - I - 0x00DEC5 03:BEB5: 04        .byte $04   ; 
- D 1 - I - 0x00DEC6 03:BEB6: 1B        .byte $1B   ; 



off_09_BEB7_07:
- D 1 - I - 0x00DEC7 03:BEB7: FC        .byte $FC   ; 
- D 1 - I - 0x00DEC8 03:BEB8: 05        .byte $05   ; 
- D 1 - I - 0x00DEC9 03:BEB9: 04        .byte $04   ; 
- D 1 - I - 0x00DECA 03:BEBA: 1F        .byte $1F   ; 



off_09_BEBB_08:
- D 1 - I - 0x00DECB 03:BEBB: FC        .byte $FC   ; 
- D 1 - I - 0x00DECC 03:BEBC: 09        .byte $09   ; 
- D 1 - I - 0x00DECD 03:BEBD: 08        .byte $08   ; 
- D 1 - I - 0x00DECE 03:BEBE: 09        .byte $09   ; 



off_09_BEBF_09:
- D 1 - I - 0x00DECF 03:BEBF: FC        .byte $FC   ; 
- D 1 - I - 0x00DED0 03:BEC0: 05        .byte $05   ; 
- D 1 - I - 0x00DED1 03:BEC1: 08        .byte $08   ; 
- D 1 - I - 0x00DED2 03:BEC2: 09        .byte $09   ; 



off_09_BEC3_0A:
- D 1 - I - 0x00DED3 03:BEC3: FC        .byte $FC   ; 
- D 1 - I - 0x00DED4 03:BEC4: 0A        .byte $0A   ; 
- D 1 - I - 0x00DED5 03:BEC5: 04        .byte $04   ; 
- D 1 - I - 0x00DED6 03:BEC6: 11        .byte $11   ; 



off_09_BEC7_0B:
- - - - - - 0x00DED7 03:BEC7: 02        .byte $02   ; 
- - - - - - 0x00DED8 03:BEC8: 0D        .byte $0D   ; 
- - - - - - 0x00DED9 03:BEC9: FF        .byte $FF   ; 



off_09_BECA_0C:
- D 1 - I - 0x00DEDA 03:BECA: FD        .byte $FD   ; 
- D 1 - I - 0x00DEDB 03:BECB: 0B        .byte $0B   ; 
- D 1 - I - 0x00DEDC 03:BECC: 20        .byte $20   ; 
- D 1 - I - 0x00DEDD 03:BECD: 23        .byte $23   ; 
- D 1 - I - 0x00DEDE 03:BECE: 24        .byte $24   ; 
- D 1 - I - 0x00DEDF 03:BECF: 25        .byte $25   ; 
- D 1 - I - 0x00DEE0 03:BED0: 26        .byte $26   ; 
- D 1 - I - 0x00DEE1 03:BED1: 27        .byte $27   ; 
- - - - - - 0x00DEE2 03:BED2: FF        .byte $FF   ; 



off_09_BED3_0D:
- D 1 - I - 0x00DEE3 03:BED3: FC        .byte $FC   ; 
- D 1 - I - 0x00DEE4 03:BED4: 08        .byte $08   ; 
- D 1 - I - 0x00DEE5 03:BED5: 03        .byte $03   ; 
- D 1 - I - 0x00DEE6 03:BED6: 28        .byte $28   ; 



_off019_DEE7_0A:
- D 1 - I - 0x00DEE7 03:BED7: F7 BE     .word off_0A_BEF7_01
- D 1 - I - 0x00DEE9 03:BED9: FB BE     .word off_0A_BEFB_02
- - - - - - 0x00DEEB 03:BEDB: 07 BF     .word off_0A_BF07_03
- - - - - - 0x00DEED 03:BEDD: 07 BF     .word off_0A_BF07_04
- D 1 - I - 0x00DEEF 03:BEDF: FF BE     .word off_0A_BEFF_05
- D 1 - I - 0x00DEF1 03:BEE1: 03 BF     .word off_0A_BF03_06
- D 1 - I - 0x00DEF3 03:BEE3: 07 BF     .word off_0A_BF07_07
- D 1 - I - 0x00DEF5 03:BEE5: 10 BF     .word off_0A_BF10_08
- D 1 - I - 0x00DEF7 03:BEE7: 15 BF     .word off_0A_BF15_09
- D 1 - I - 0x00DEF9 03:BEE9: 1E BF     .word off_0A_BF1E_0A
- D 1 - I - 0x00DEFB 03:BEEB: 23 BF     .word off_0A_BF23_0B
- D 1 - I - 0x00DEFD 03:BEED: 28 BF     .word off_0A_BF28_0C
- D 1 - I - 0x00DEFF 03:BEEF: 2D BF     .word off_0A_BF2D_0D
- D 1 - I - 0x00DF01 03:BEF1: 30 BF     .word off_0A_BF30_0E
- - - - - - 0x00DF03 03:BEF3: 33 BF     .word off_0A_BF33_0F
- - - - - - 0x00DF05 03:BEF5: 36 BF     .word off_0A_BF36_10



off_0A_BEF7_01:
- D 1 - I - 0x00DF07 03:BEF7: FC        .byte $FC   ; 
- D 1 - I - 0x00DF08 03:BEF8: 01        .byte $01   ; 
- D 1 - I - 0x00DF09 03:BEF9: 04        .byte $04   ; 
- D 1 - I - 0x00DF0A 03:BEFA: 15        .byte $15   ; 



off_0A_BEFB_02:
- D 1 - I - 0x00DF0B 03:BEFB: FC        .byte $FC   ; 
- D 1 - I - 0x00DF0C 03:BEFC: 04        .byte $04   ; 
- D 1 - I - 0x00DF0D 03:BEFD: 09        .byte $09   ; 
- D 1 - I - 0x00DF0E 03:BEFE: 19        .byte $19   ; 



off_0A_BEFF_05:
- D 1 - I - 0x00DF0F 03:BEFF: FC        .byte $FC   ; 
- D 1 - I - 0x00DF10 03:BF00: 03        .byte $03   ; 
- D 1 - I - 0x00DF11 03:BF01: 04        .byte $04   ; 
- D 1 - I - 0x00DF12 03:BF02: 01        .byte $01   ; 



off_0A_BF03_06:
- D 1 - I - 0x00DF13 03:BF03: FC        .byte $FC   ; 
- D 1 - I - 0x00DF14 03:BF04: 03        .byte $03   ; 
- D 1 - I - 0x00DF15 03:BF05: 04        .byte $04   ; 
- D 1 - I - 0x00DF16 03:BF06: 05        .byte $05   ; 



off_0A_BF07_03:
off_0A_BF07_04:
off_0A_BF07_07:
- D 1 - I - 0x00DF17 03:BF07: 0A        .byte $0A   ; 
- D 1 - I - 0x00DF18 03:BF08: 04        .byte $04   ; 
- D 1 - I - 0x00DF19 03:BF09: 0B        .byte $0B   ; 
- D 1 - I - 0x00DF1A 03:BF0A: 04        .byte $04   ; 
- D 1 - I - 0x00DF1B 03:BF0B: 0C        .byte $0C   ; 
- D 1 - I - 0x00DF1C 03:BF0C: 06        .byte $06   ; 
- D 1 - I - 0x00DF1D 03:BF0D: 0B        .byte $0B   ; 
- D 1 - I - 0x00DF1E 03:BF0E: 04        .byte $04   ; 
- D 1 - I - 0x00DF1F 03:BF0F: FF        .byte $FF   ; 



off_0A_BF10_08:
- D 1 - I - 0x00DF20 03:BF10: 0B        .byte $0B   ; 
- D 1 - I - 0x00DF21 03:BF11: 04        .byte $04   ; 
- D 1 - I - 0x00DF22 03:BF12: 0A        .byte $0A   ; 
- D 1 - I - 0x00DF23 03:BF13: 04        .byte $04   ; 
- D 1 - I - 0x00DF24 03:BF14: FF        .byte $FF   ; 



off_0A_BF15_09:
- D 1 - I - 0x00DF25 03:BF15: 0E        .byte $0E   ; 
- D 1 - I - 0x00DF26 03:BF16: 04        .byte $04   ; 
- D 1 - I - 0x00DF27 03:BF17: 0F        .byte $0F   ; 
- D 1 - I - 0x00DF28 03:BF18: 04        .byte $04   ; 
- D 1 - I - 0x00DF29 03:BF19: 10        .byte $10   ; 
- D 1 - I - 0x00DF2A 03:BF1A: 06        .byte $06   ; 
- D 1 - I - 0x00DF2B 03:BF1B: 0F        .byte $0F   ; 
- D 1 - I - 0x00DF2C 03:BF1C: 04        .byte $04   ; 
- D 1 - I - 0x00DF2D 03:BF1D: FF        .byte $FF   ; 



off_0A_BF1E_0A:
- D 1 - I - 0x00DF2E 03:BF1E: 0F        .byte $0F   ; 
- D 1 - I - 0x00DF2F 03:BF1F: 04        .byte $04   ; 
- D 1 - I - 0x00DF30 03:BF20: 0E        .byte $0E   ; 
- D 1 - I - 0x00DF31 03:BF21: 04        .byte $04   ; 
- D 1 - I - 0x00DF32 03:BF22: FF        .byte $FF   ; 



off_0A_BF23_0B:
- D 1 - I - 0x00DF33 03:BF23: 11        .byte $11   ; 
- D 1 - I - 0x00DF34 03:BF24: 0F        .byte $0F   ; 
- D 1 - I - 0x00DF35 03:BF25: 12        .byte $12   ; 
- D 1 - I - 0x00DF36 03:BF26: 1F        .byte $1F   ; 
- D 1 - I - 0x00DF37 03:BF27: FF        .byte $FF   ; 



off_0A_BF28_0C:
- D 1 - I - 0x00DF38 03:BF28: 13        .byte $13   ; 
- D 1 - I - 0x00DF39 03:BF29: 1B        .byte $1B   ; 
- D 1 - I - 0x00DF3A 03:BF2A: 14        .byte $14   ; 
- D 1 - I - 0x00DF3B 03:BF2B: 1B        .byte $1B   ; 
- D 1 - I - 0x00DF3C 03:BF2C: FE        .byte $FE   ; 



off_0A_BF2D_0D:
- D 1 - I - 0x00DF3D 03:BF2D: 09        .byte $09   ; 
- D 1 - I - 0x00DF3E 03:BF2E: 07        .byte $07   ; 
- D 1 - I - 0x00DF3F 03:BF2F: FF        .byte $FF   ; 



off_0A_BF30_0E:
- D 1 - I - 0x00DF40 03:BF30: 0D        .byte $0D   ; 
- D 1 - I - 0x00DF41 03:BF31: 07        .byte $07   ; 
- D 1 - I - 0x00DF42 03:BF32: FF        .byte $FF   ; 



off_0A_BF33_0F:
- - - - - - 0x00DF43 03:BF33: 0B        .byte $0B   ; 
- - - - - - 0x00DF44 03:BF34: 04        .byte $04   ; 
- - - - - - 0x00DF45 03:BF35: FF        .byte $FF   ; 



off_0A_BF36_10:
- - - - - - 0x00DF46 03:BF36: 0F        .byte $0F   ; 
- - - - - - 0x00DF47 03:BF37: 04        .byte $04   ; 
- - - - - - 0x00DF48 03:BF38: FF        .byte $FF   ; 



_off019_DF49_0B:
- D 1 - I - 0x00DF49 03:BF39: 4F BF     .word off_0B_BF4F_01
- D 1 - I - 0x00DF4B 03:BF3B: 52 BF     .word off_0B_BF52_02
- D 1 - I - 0x00DF4D 03:BF3D: 5D BF     .word off_0B_BF5D_03
- D 1 - I - 0x00DF4F 03:BF3F: 61 BF     .word off_0B_BF61_04
- D 1 - I - 0x00DF51 03:BF41: 68 BF     .word off_0B_BF68_05
- D 1 - I - 0x00DF53 03:BF43: 6C BF     .word off_0B_BF6C_06
- D 1 - I - 0x00DF55 03:BF45: 70 BF     .word off_0B_BF70_07
- D 1 - I - 0x00DF57 03:BF47: 74 BF     .word off_0B_BF74_08
- D 1 - I - 0x00DF59 03:BF49: 7F BF     .word off_0B_BF7F_09
- - - - - - 0x00DF5B 03:BF4B: 8A BF     .word off_0B_BF8A_0A
- - - - - - 0x00DF5D 03:BF4D: 8D BF     .word off_0B_BF8D_0B



off_0B_BF4F_01:
- D 1 - I - 0x00DF5F 03:BF4F: 01        .byte $01   ; 
- D 1 - I - 0x00DF60 03:BF50: 0F        .byte $0F   ; 
- - - - - - 0x00DF61 03:BF51: FF        .byte $FF   ; 



off_0B_BF52_02:
- D 1 - I - 0x00DF62 03:BF52: 02        .byte $02   ; 
- D 1 - I - 0x00DF63 03:BF53: 1D        .byte $1D   ; 
- D 1 - I - 0x00DF64 03:BF54: 03        .byte $03   ; 
- D 1 - I - 0x00DF65 03:BF55: 1A        .byte $1A   ; 
- D 1 - I - 0x00DF66 03:BF56: 04        .byte $04   ; 
- D 1 - I - 0x00DF67 03:BF57: 1A        .byte $1A   ; 
- D 1 - I - 0x00DF68 03:BF58: 05        .byte $05   ; 
- D 1 - I - 0x00DF69 03:BF59: 0D        .byte $0D   ; 
- D 1 - I - 0x00DF6A 03:BF5A: 06        .byte $06   ; 
- D 1 - I - 0x00DF6B 03:BF5B: 1A        .byte $1A   ; 
- - - - - - 0x00DF6C 03:BF5C: FF        .byte $FF   ; 



off_0B_BF5D_03:
- D 1 - I - 0x00DF6D 03:BF5D: FC        .byte $FC   ; 
- D 1 - I - 0x00DF6E 03:BF5E: 09        .byte $09   ; 
- D 1 - I - 0x00DF6F 03:BF5F: 05        .byte $05   ; 
- D 1 - I - 0x00DF70 03:BF60: 07        .byte $07   ; 



off_0B_BF61_04:
- D 1 - I - 0x00DF71 03:BF61: 03        .byte $03   ; 
- D 1 - I - 0x00DF72 03:BF62: 0B        .byte $0B   ; 
- D 1 - I - 0x00DF73 03:BF63: 04        .byte $04   ; 
- D 1 - I - 0x00DF74 03:BF64: 19        .byte $19   ; 
- D 1 - I - 0x00DF75 03:BF65: 0C        .byte $0C   ; 
- D 1 - I - 0x00DF76 03:BF66: 5F        .byte $5F   ; 
- D 1 - I - 0x00DF77 03:BF67: FE        .byte $FE   ; 



off_0B_BF68_05:
- D 1 - I - 0x00DF78 03:BF68: FC        .byte $FC   ; 
- D 1 - I - 0x00DF79 03:BF69: 04        .byte $04   ; 
- D 1 - I - 0x00DF7A 03:BF6A: 04        .byte $04   ; 
- D 1 - I - 0x00DF7B 03:BF6B: 0D        .byte $0D   ; 



off_0B_BF6C_06:
- D 1 - I - 0x00DF7C 03:BF6C: FC        .byte $FC   ; 
- D 1 - I - 0x00DF7D 03:BF6D: 06        .byte $06   ; 
- D 1 - I - 0x00DF7E 03:BF6E: 04        .byte $04   ; 
- D 1 - I - 0x00DF7F 03:BF6F: 11        .byte $11   ; 



off_0B_BF70_07:
- D 1 - I - 0x00DF80 03:BF70: FC        .byte $FC   ; 
- D 1 - I - 0x00DF81 03:BF71: 06        .byte $06   ; 
- D 1 - I - 0x00DF82 03:BF72: 04        .byte $04   ; 
- D 1 - I - 0x00DF83 03:BF73: 15        .byte $15   ; 



off_0B_BF74_08:
- D 1 - I - 0x00DF84 03:BF74: 19        .byte $19   ; 
- D 1 - I - 0x00DF85 03:BF75: 04        .byte $04   ; 
- D 1 - I - 0x00DF86 03:BF76: 1A        .byte $1A   ; 
- D 1 - I - 0x00DF87 03:BF77: 06        .byte $06   ; 
- D 1 - I - 0x00DF88 03:BF78: 1B        .byte $1B   ; 
- D 1 - I - 0x00DF89 03:BF79: 04        .byte $04   ; 
- D 1 - I - 0x00DF8A 03:BF7A: 1C        .byte $1C   ; 
- D 1 - I - 0x00DF8B 03:BF7B: 04        .byte $04   ; 
- D 1 - I - 0x00DF8C 03:BF7C: 1D        .byte $1D   ; 
- D 1 - I - 0x00DF8D 03:BF7D: 07        .byte $07   ; 
- - - - - - 0x00DF8E 03:BF7E: FE        .byte $FE   ; 



off_0B_BF7F_09:
- D 1 - I - 0x00DF8F 03:BF7F: 1E        .byte $1E   ; 
- D 1 - I - 0x00DF90 03:BF80: 04        .byte $04   ; 
- D 1 - I - 0x00DF91 03:BF81: 1F        .byte $1F   ; 
- D 1 - I - 0x00DF92 03:BF82: 06        .byte $06   ; 
- D 1 - I - 0x00DF93 03:BF83: 20        .byte $20   ; 
- D 1 - I - 0x00DF94 03:BF84: 04        .byte $04   ; 
- D 1 - I - 0x00DF95 03:BF85: 21        .byte $21   ; 
- D 1 - I - 0x00DF96 03:BF86: 04        .byte $04   ; 
- D 1 - I - 0x00DF97 03:BF87: 22        .byte $22   ; 
- D 1 - I - 0x00DF98 03:BF88: 07        .byte $07   ; 
- - - - - - 0x00DF99 03:BF89: FE        .byte $FE   ; 



off_0B_BF8A_0A:
- - - - - - 0x00DF9A 03:BF8A: 19        .byte $19   ; 
- - - - - - 0x00DF9B 03:BF8B: 04        .byte $04   ; 
- - - - - - 0x00DF9C 03:BF8C: FF        .byte $FF   ; 



off_0B_BF8D_0B:
- - - - - - 0x00DF9D 03:BF8D: 1E        .byte $1E   ; 
- - - - - - 0x00DF9E 03:BF8E: 04        .byte $04   ; 
- - - - - - 0x00DF9F 03:BF8F: FF        .byte $FF   ; 



_off019_DFA0_0C:
- D 1 - I - 0x00DFA0 03:BF90: AA BF     .word off_0C_BFAA_01
- D 1 - I - 0x00DFA2 03:BF92: AE BF     .word off_0C_BFAE_02
- D 1 - I - 0x00DFA4 03:BF94: B2 BF     .word off_0C_BFB2_03
- D 1 - I - 0x00DFA6 03:BF96: B6 BF     .word off_0C_BFB6_04
- D 1 - I - 0x00DFA8 03:BF98: BA BF     .word off_0C_BFBA_05
- D 1 - I - 0x00DFAA 03:BF9A: BE BF     .word off_0C_BFBE_06
- D 1 - I - 0x00DFAC 03:BF9C: C2 BF     .word off_0C_BFC2_07
- - - - - - 0x00DFAE 03:BF9E: C6 BF     .word off_0C_BFC6_08
- - - - - - 0x00DFB0 03:BFA0: C6 BF     .word off_0C_BFC6_09
- - - - - - 0x00DFB2 03:BFA2: C6 BF     .word off_0C_BFC6_0A
- D 1 - I - 0x00DFB4 03:BFA4: C6 BF     .word off_0C_BFC6_0B
- D 1 - I - 0x00DFB6 03:BFA6: C9 BF     .word off_0C_BFC9_0C
- D 1 - I - 0x00DFB8 03:BFA8: CC BF     .word off_0C_BFCC_0D



off_0C_BFAA_01:
- D 1 - I - 0x00DFBA 03:BFAA: FC        .byte $FC   ; 
- D 1 - I - 0x00DFBB 03:BFAB: 07        .byte $07   ; 
- D 1 - I - 0x00DFBC 03:BFAC: 02        .byte $02   ; 
- D 1 - I - 0x00DFBD 03:BFAD: 01        .byte $01   ; 



off_0C_BFAE_02:
- D 1 - I - 0x00DFBE 03:BFAE: FC        .byte $FC   ; 
- D 1 - I - 0x00DFBF 03:BFAF: 07        .byte $07   ; 
- D 1 - I - 0x00DFC0 03:BFB0: 02        .byte $02   ; 
- D 1 - I - 0x00DFC1 03:BFB1: 05        .byte $05   ; 



off_0C_BFB2_03:
- D 1 - I - 0x00DFC2 03:BFB2: FC        .byte $FC   ; 
- D 1 - I - 0x00DFC3 03:BFB3: 07        .byte $07   ; 
- D 1 - I - 0x00DFC4 03:BFB4: 02        .byte $02   ; 
- D 1 - I - 0x00DFC5 03:BFB5: 07        .byte $07   ; 



off_0C_BFB6_04:
- D 1 - I - 0x00DFC6 03:BFB6: FC        .byte $FC   ; 
- D 1 - I - 0x00DFC7 03:BFB7: 08        .byte $08   ; 
- D 1 - I - 0x00DFC8 03:BFB8: 04        .byte $04   ; 
- D 1 - I - 0x00DFC9 03:BFB9: 09        .byte $09   ; 



off_0C_BFBA_05:
- D 1 - I - 0x00DFCA 03:BFBA: FC        .byte $FC   ; 
- D 1 - I - 0x00DFCB 03:BFBB: 08        .byte $08   ; 
- D 1 - I - 0x00DFCC 03:BFBC: 04        .byte $04   ; 
- D 1 - I - 0x00DFCD 03:BFBD: 0D        .byte $0D   ; 



off_0C_BFBE_06:
- D 1 - I - 0x00DFCE 03:BFBE: FC        .byte $FC   ; 
- D 1 - I - 0x00DFCF 03:BFBF: 07        .byte $07   ; 
- D 1 - I - 0x00DFD0 03:BFC0: 04        .byte $04   ; 
- D 1 - I - 0x00DFD1 03:BFC1: 11        .byte $11   ; 



off_0C_BFC2_07:
- D 1 - I - 0x00DFD2 03:BFC2: FC        .byte $FC   ; 
- D 1 - I - 0x00DFD3 03:BFC3: 07        .byte $07   ; 
- D 1 - I - 0x00DFD4 03:BFC4: 04        .byte $04   ; 
- D 1 - I - 0x00DFD5 03:BFC5: 15        .byte $15   ; 



off_0C_BFC6_08:
off_0C_BFC6_09:
off_0C_BFC6_0A:
off_0C_BFC6_0B:
- D 1 - I - 0x00DFD6 03:BFC6: 02        .byte $02   ; 
- D 1 - I - 0x00DFD7 03:BFC7: 0A        .byte $0A   ; 
- - - - - - 0x00DFD8 03:BFC8: FF        .byte $FF   ; 



off_0C_BFC9_0C:
- D 1 - I - 0x00DFD9 03:BFC9: 06        .byte $06   ; 
- D 1 - I - 0x00DFDA 03:BFCA: 0A        .byte $0A   ; 
- - - - - - 0x00DFDB 03:BFCB: FF        .byte $FF   ; 



off_0C_BFCC_0D:
- D 1 - I - 0x00DFDC 03:BFCC: 08        .byte $08   ; 
- D 1 - I - 0x00DFDD 03:BFCD: 0A        .byte $0A   ; 
- - - - - - 0x00DFDE 03:BFCE: FF        .byte $FF   ; 



_off019_DFDF_0D:
- D 1 - I - 0x00DFDF 03:BFCF: D3 BF     .word off_0D_BFD3_01
- D 1 - I - 0x00DFE1 03:BFD1: D7 BF     .word off_0D_BFD7_02



off_0D_BFD3_01:
- D 1 - I - 0x00DFE3 03:BFD3: FC        .byte $FC   ; 
- D 1 - I - 0x00DFE4 03:BFD4: 04        .byte $04   ; 
- D 1 - I - 0x00DFE5 03:BFD5: 04        .byte $04   ; 
- D 1 - I - 0x00DFE6 03:BFD6: 01        .byte $01   ; 



off_0D_BFD7_02:
- D 1 - I - 0x00DFE7 03:BFD7: 05        .byte $05   ; 
- D 1 - I - 0x00DFE8 03:BFD8: 07        .byte $07   ; 
- D 1 - I - 0x00DFE9 03:BFD9: 06        .byte $06   ; 
- D 1 - I - 0x00DFEA 03:BFDA: 09        .byte $09   ; 
- D 1 - I - 0x00DFEB 03:BFDB: 07        .byte $07   ; 
- D 1 - I - 0x00DFEC 03:BFDC: 09        .byte $09   ; 
- D 1 - I - 0x00DFED 03:BFDD: 08        .byte $08   ; 
- D 1 - I - 0x00DFEE 03:BFDE: 0A        .byte $0A   ; 
- D 1 - I - 0x00DFEF 03:BFDF: 09        .byte $09   ; 
- D 1 - I - 0x00DFF0 03:BFE0: 09        .byte $09   ; 
- D 1 - I - 0x00DFF1 03:BFE1: 0A        .byte $0A   ; 
- D 1 - I - 0x00DFF2 03:BFE2: 0A        .byte $0A   ; 
- D 1 - I - 0x00DFF3 03:BFE3: 0B        .byte $0B   ; 
- D 1 - I - 0x00DFF4 03:BFE4: 0A        .byte $0A   ; 
- D 1 - I - 0x00DFF5 03:BFE5: 0C        .byte $0C   ; 
- D 1 - I - 0x00DFF6 03:BFE6: 15        .byte $15   ; 
- - - - - - 0x00DFF7 03:BFE7: FF        .byte $FF   ; 



_off019_DFF8_0E:
- - - - - - 0x00DFF8 03:BFE8: EC BF     .word off_0E_BFEC_01
- - - - - - 0x00DFFA 03:BFEA: F0 BF     .word off_0E_BFF0_02



off_0E_BFEC_01:
- - - - - - 0x00DFFC 03:BFEC: FC        .byte $FC   ; 
- - - - - - 0x00DFFD 03:BFED: 01        .byte $01   ; 
- - - - - - 0x00DFFE 03:BFEE: 04        .byte $04   ; 
- - - - - - 0x00DFFF 03:BFEF: 01        .byte $01   ; 



off_0E_BFF0_02:
- - - - - - 0x00E000 03:BFF0: FC        .byte $FC   ; 
- - - - - - 0x00E001 03:BFF1: 01        .byte $01   ; 
- - - - - - 0x00E002 03:BFF2: 04        .byte $04   ; 
- - - - - - 0x00E003 03:BFF3: 05        .byte $05   ; 
- - - - - - 0x00E004 03:BFF4: FF        .byte $FF   ; 



.out .sprintf("Free bytes in bank 18: 0x%04X [%d]", ($D140 - *), ($D140 - *))



.segment "DPCM_18"
.incbin "DPCM.bin"
.org $D140  ; for listing file



