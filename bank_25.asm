.segment "BANK_25"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $C000  ; for listing file
; 0x04A010-0x04C00F



; банк в паре с 24 (8000)



.export off_0x01693A_02
off_0x01693A_02:
- D 1 - I - 0x01693A 05:A92A: 02        .byte $02   ; size X
- D 1 - I - 0x01693B 05:A92B: 02        .byte $02   ; size Y
- D 1 - I - 0x01693C 05:A92C: D6        .byte $D6, $D7   ; 01 
- D 1 - I - 0x01693E 05:A92E: 92        .byte $92, $93   ; 02 



.export off_0x016940_00
off_0x016940_00:
- D 1 - I - 0x016940 05:A930: 02        .byte $02   ; size X
- D 1 - I - 0x016941 05:A931: 02        .byte $02   ; size Y
- D 1 - I - 0x016942 05:A932: D8        .byte $D8, $D9   ; 01 
- D 1 - I - 0x016944 05:A934: 94        .byte $94, $95   ; 02 



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



.export _off022_0x016946_00
_off022_0x016946_00:
- D 1 - I - 0x016946 05:A936: 04        .byte $04   ; size X
- D 1 - I - 0x016947 05:A937: 04        .byte $04   ; size Y
- D 1 - I - 0x016948 05:A938: 4C        .byte $4C, $86, $86, $86   ; 01 
- D 1 - I - 0x01694C 05:A93C: 4C        .byte $4C, $85, $85, $85   ; 02 
- D 1 - I - 0x016950 05:A940: 00        .byte $00, $00, $00, $00   ; 03 
- D 1 - I - 0x016954 05:A944: 00        .byte $00, $00, $00, $00   ; 04 



.export _off022_0x016958_01
_off022_0x016958_01:
- D 1 - I - 0x016958 05:A948: 04        .byte $04   ; size X
- D 1 - I - 0x016959 05:A949: 04        .byte $04   ; size Y
- D 1 - I - 0x01695A 05:A94A: 00        .byte $00, $00, $00, $00   ; 01 
- D 1 - I - 0x01695E 05:A94E: 4C        .byte $4C, $86, $86, $86   ; 02 
- D 1 - I - 0x016962 05:A952: 4C        .byte $4C, $85, $85, $85   ; 03 
- D 1 - I - 0x016966 05:A956: 00        .byte $00, $00, $00, $00   ; 04 



.export _off022_0x01696A_02
_off022_0x01696A_02:
- D 1 - I - 0x01696A 05:A95A: 04        .byte $04   ; size X
- D 1 - I - 0x01696B 05:A95B: 04        .byte $04   ; size Y
- D 1 - I - 0x01696C 05:A95C: 00        .byte $00, $00, $00, $00   ; 01 
- D 1 - I - 0x016970 05:A960: 00        .byte $00, $00, $00, $00   ; 02 
- D 1 - I - 0x016974 05:A964: 4C        .byte $4C, $86, $86, $86   ; 03 
- D 1 - I - 0x016978 05:A968: 4C        .byte $4C, $85, $85, $85   ; 04 



.export _off022_0x01697C_05
_off022_0x01697C_05:
- D 1 - I - 0x01697C 05:A96C: 04        .byte $04   ; size X
- D 1 - I - 0x01697D 05:A96D: 04        .byte $04   ; size Y
- D 1 - I - 0x01697E 05:A96E: 86        .byte $86, $86, $86, $4C   ; 01 
- D 1 - I - 0x016982 05:A972: 85        .byte $85, $85, $85, $4C   ; 02 
- D 1 - I - 0x016986 05:A976: 00        .byte $00, $00, $00, $00   ; 03 
- D 1 - I - 0x01698A 05:A97A: 00        .byte $00, $00, $00, $00   ; 04 



.export _off022_0x01698E_04
_off022_0x01698E_04:
- D 1 - I - 0x01698E 05:A97E: 04        .byte $04   ; size X
- D 1 - I - 0x01698F 05:A97F: 04        .byte $04   ; size Y
- D 1 - I - 0x016990 05:A980: 00        .byte $00, $00, $00, $00   ; 01 
- D 1 - I - 0x016994 05:A984: 86        .byte $86, $86, $86, $4C   ; 02 
- D 1 - I - 0x016998 05:A988: 85        .byte $85, $85, $85, $4C   ; 03 
- D 1 - I - 0x01699C 05:A98C: 00        .byte $00, $00, $00, $00   ; 04 



.export _off022_0x0169A0_03
_off022_0x0169A0_03:
- D 1 - I - 0x0169A0 05:A990: 04        .byte $04   ; size X
- D 1 - I - 0x0169A1 05:A991: 04        .byte $04   ; size Y
- D 1 - I - 0x0169A2 05:A992: 00        .byte $00, $00, $00, $00   ; 01 
- D 1 - I - 0x0169A6 05:A996: 00        .byte $00, $00, $00, $00   ; 02 
- D 1 - I - 0x0169AA 05:A99A: 86        .byte $86, $86, $86, $4C   ; 03 
- D 1 - I - 0x0169AE 05:A99E: 85        .byte $85, $85, $85, $4C   ; 04 



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



.export _off007_0x0168F1_01
_off007_0x0168F1_01:
- - - - - - 0x0168F1 05:A8E1: 15        .byte $15   ; size X
- - - - - - 0x0168F2 05:A8E2: 01        .byte $01   ; size Y
- - - - - - 0x0168F3 05:A8E3: 13        .byte $13, $18, $1F, $1F, $23, $15, $00, $11, $1E, $1F, $24, $18, $15, $22, $00, $20   ; 
- - - - - - 0x016903 05:A8F3: 1C        .byte $1C, $11, $29, $15, $22   ; 01 



.export _off007_0x016908_00
_off007_0x016908_00:
- - - - - - 0x016908 05:A8F8: 15        .byte $15   ; size X
- - - - - - 0x016909 05:A8F9: 01        .byte $01   ; size Y
- - - - - - 0x01690A 05:A8FA: 23        .byte $23, $15, $1C, $15, $13, $24, $00, $1D, $11, $19, $1E, $00, $20, $1C, $11, $29   ; 
- - - - - - 0x01691A 05:A90A: 15        .byte $15, $22, $00, $00, $00   ; 01 



.export _off007_0x01691F_02
_off007_0x01691F_02:
- - - - - - 0x01691F 05:A90F: 15        .byte $15   ; size X
- - - - - - 0x016920 05:A910: 01        .byte $01   ; size Y
- - - - - - 0x016921 05:A911: 13        .byte $13, $11, $1E, $1E, $1F, $24, $00, $25, $23, $15, $00, $23, $25, $12, $00, $20   ; 
- - - - - - 0x016931 05:A921: 1C        .byte $1C, $11, $29, $15, $22   ; 01 


; todo
.export _off007_0x016936_03
_off007_0x016936_03:
- D 1 - I - 0x016936 05:A926: 01        .byte $01   ; placeholder (смотреть 0x0166F3)
- D 1 - I - 0x016937 05:A927: 15        .byte $15   ; 0x01DBAA
- D 1 - I - 0x016938 05:A928: 00        .byte $00   ; 0x01DBB6
- D 1 - I - 0x016939 05:A929: FF        .byte $FF   ; 0x01DBAA



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



.export _off002_0x014816_00_program_
_off002_0x014816_00_program_:
- D 0 - I - 0x014816 05:8806: 09        .byte $09, $01, $20, $22, $1F, $17, $22, $11, $1D, $00, $00   ; 



.export _off002_0x014821_01_character
_off002_0x014821_01_character:
- D 0 - I - 0x014821 05:8811: 09        .byte $09, $01, $13, $18, $11, $22, $11, $13, $24, $15, $22   ; 



.export _off002_0x01482C_02_sound
_off002_0x01482C_02_sound:
- D 0 - I - 0x01482C 05:881C: 09        .byte $09, $01, $23, $1F, $25, $1E, $14, $00, $00, $00, $00   ; 



.export _off002_0x014837_0D_sd_assist
_off002_0x014837_0D_sd_assist:
- D 0 - I - 0x014837 05:8827: 09        .byte $09, $01, $23, $14, $00, $11, $23, $23, $19, $23, $24   ; 



.export _off002_0x014842_03_takemoto
_off002_0x014842_03_takemoto:
- D 0 - I - 0x014842 05:8832: 09        .byte $09, $01, $24, $11, $1B, $15, $1D, $1F, $24, $1F, $00   ; 



.export _off002_0x01484D_04_ozawa
_off002_0x01484D_04_ozawa:
- D 0 - I - 0x01484D 05:883D: 09        .byte $09, $01, $1F, $2A, $11, $27, $11, $00, $00, $00, $00   ; 



.export _off002_0x014858_05_shigemoto
_off002_0x014858_05_shigemoto:
- D 0 - I - 0x014858 05:8848: 09        .byte $09, $01, $23, $18, $19, $17, $15, $1D, $1F, $24, $1F   ; 



.export _off002_0x014863_06_horie
_off002_0x014863_06_horie:
- D 0 - I - 0x014863 05:8853: 09        .byte $09, $01, $18, $1F, $22, $19, $15, $00, $00, $00, $00   ; 



.export _off002_0x01486E_07_matsubara
_off002_0x01486E_07_matsubara:
- D 0 - I - 0x01486E 05:885E: 09        .byte $09, $01, $1D, $11, $24, $23, $25, $12, $11, $22, $11   ; 



.export _off002_0x014879_08_manno
_off002_0x014879_08_manno:
- D 0 - I - 0x014879 05:8869: 09        .byte $09, $01, $1D, $11, $1E, $1E, $1F, $00, $00, $00, $00   ; 



.export _off002_0x014884_09_tomita
_off002_0x014884_09_tomita:
- D 0 - I - 0x014884 05:8874: 09        .byte $09, $01, $24, $1F, $1D, $19, $24, $11, $00, $00, $00   ; 



.export _off002_0x01488F_0B_funahasi
_off002_0x01488F_0B_funahasi:
- D 0 - I - 0x01488F 05:887F: 09        .byte $09, $01, $16, $25, $1E, $11, $18, $11, $23, $19, $00   ; 



.export _off002_0x01489A_0C_chuma
_off002_0x01489A_0C_chuma:
- D 0 - I - 0x01489A 05:888A: 09        .byte $09, $01, $13, $18, $25, $1D, $11, $00, $00, $00, $00   ; 



.export _off002_0x0148A5_0A___clear
_off002_0x0148A5_0A___clear:
- D 0 - I - 0x0148A5 05:8895: 09        .byte $09, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



.export _off026_0x016B2A_00
_off026_0x016B2A_00:
; con_8F57_00
.export _off026_0x016B2A_08
_off026_0x016B2A_08:
; con_8F57_08
- D 1 - I - 0x016B2A 05:AB1A: 04        .byte $04   ; size X
- D 1 - I - 0x016B2B 05:AB1B: 02        .byte $02   ; size Y
- D 1 - I - 0x016B2C 05:AB1C: DF        .byte $DF, $00, $00, $E2   ; 01 
- D 1 - I - 0x016B30 05:AB20: E0        .byte $E0, $00, $00, $E1   ; 02 



.export _off026_0x016B20_04
_off026_0x016B20_04:
; con_8F57_04
.export _off026_0x016B20_0C
_off026_0x016B20_0C:
; con_8F57_0C
- D 1 - I - 0x016B20 05:AB10: 04        .byte $04   ; size X
- D 1 - I - 0x016B21 05:AB11: 02        .byte $02   ; size Y
- D 1 - I - 0x016B22 05:AB12: DD        .byte $DD, $DE, $DD, $DE   ; 01 
- D 1 - I - 0x016B26 05:AB16: E3        .byte $E3, $E4, $E3, $E4   ; 02 



.export _off026_0x016CD8_18
_off026_0x016CD8_18:
; con_8F57_18
.export _off026_0x016CD8_20
_off026_0x016CD8_20:
; con_8F57_20
- D 1 - I - 0x016CD8 05:ACC8: 04        .byte $04   ; size X
- D 1 - I - 0x016CD9 05:ACC9: 02        .byte $02   ; size Y
- D 1 - I - 0x016CDA 05:ACCA: B6        .byte $B6, $B7, $B8, $B9   ; 01 
- D 1 - I - 0x016CDE 05:ACCE: BE        .byte $BE, $BF, $90, $91   ; 02 



.export _off026_0x016CE2_1C
_off026_0x016CE2_1C:
; con_8F57_1C
.export _off026_0x016CE2_24
_off026_0x016CE2_24:
; con_8F57_24
- D 1 - I - 0x016CE2 05:ACD2: 04        .byte $04   ; size X
- D 1 - I - 0x016CE3 05:ACD3: 02        .byte $02   ; size Y
- D 1 - I - 0x016CE4 05:ACD4: BA        .byte $BA, $BB, $BC, $BD   ; 01 
- D 1 - I - 0x016CE8 05:ACD8: 92        .byte $92, $93, $94, $95   ; 02 



.export _off026_0x016CEC_10
_off026_0x016CEC_10:
; con_8F57_10
- D 1 - I - 0x016CEC 05:ACDC: 01        .byte $01   ; size X
- D 1 - I - 0x016CED 05:ACDD: 04        .byte $04   ; size Y
- D 1 - I - 0x016CEE 05:ACDE: A8        .byte $A8   ; 01 
- D 1 - I - 0x016CEF 05:ACDF: A9        .byte $A9   ; 02 
- D 1 - I - 0x016CF0 05:ACE0: AA        .byte $AA   ; 03 
- D 1 - I - 0x016CF1 05:ACE1: AB        .byte $AB   ; 04 



.export _off026_0x016CF2_14
_off026_0x016CF2_14:
; con_8F57_14
- D 1 - I - 0x016CF2 05:ACE2: 01        .byte $01   ; size X
- D 1 - I - 0x016CF3 05:ACE3: 04        .byte $04   ; size Y
- D 1 - I - 0x016CF4 05:ACE4: AC        .byte $AC   ; 01 
- D 1 - I - 0x016CF5 05:ACE5: AD        .byte $AD   ; 02 
- D 1 - I - 0x016CF6 05:ACE6: AE        .byte $AE   ; 03 
- D 1 - I - 0x016CF7 05:ACE7: AF        .byte $AF   ; 04 



.export _off026_0x016CF8_28
_off026_0x016CF8_28:
; con_8F57_28
- - - - - - 0x016CF8 05:ACE8: 04        .byte $04   ; size X
- - - - - - 0x016CF9 05:ACE9: 03        .byte $03   ; size Y
- - - - - - 0x016CFA 05:ACEA: 05        .byte $05, $06, $07, $00   ; 01 
- - - - - - 0x016CFE 05:ACEE: 0C        .byte $0C, $0D, $0E, $00   ; 02 
- - - - - - 0x016D02 05:ACF2: 00        .byte $00, $00, $00, $00   ; 03 



.export _off026_0x016D06_2C
_off026_0x016D06_2C:
; con_8F57_2C
- D 1 - I - 0x016D06 05:ACF6: 04        .byte $04   ; size X
- D 1 - I - 0x016D07 05:ACF7: 03        .byte $03   ; size Y
- D 1 - I - 0x016D08 05:ACF8: 08        .byte $08, $09, $0A, $00   ; 01 
- D 1 - I - 0x016D0C 05:ACFC: 0F        .byte $0F, $10, $11, $00   ; 02 
- D 1 - I - 0x016D10 05:AD00: 13        .byte $13, $14, $00, $00   ; 03 



.export _off026_0x016D14_30
_off026_0x016D14_30:
; con_8F57_30
- D 1 - I - 0x016D14 05:AD04: 04        .byte $04   ; size X
- D 1 - I - 0x016D15 05:AD05: 03        .byte $03   ; size Y
- D 1 - I - 0x016D16 05:AD06: 00        .byte $00, $88, $89, $00   ; 01 
- D 1 - I - 0x016D1A 05:AD0A: 00        .byte $00, $BD, $9D, $00   ; 02 
- D 1 - I - 0x016D1E 05:AD0E: 00        .byte $00, $A0, $A1, $00   ; 03 



.export _off026_0x016D22_34
_off026_0x016D22_34:
; con_8F57_34
- D 1 - I - 0x016D22 05:AD12: 04        .byte $04   ; size X
- D 1 - I - 0x016D23 05:AD13: 03        .byte $03   ; size Y
- D 1 - I - 0x016D24 05:AD14: 00        .byte $00, $83, $84, $85   ; 01 
- D 1 - I - 0x016D28 05:AD18: 00        .byte $00, $8A, $8B, $8C   ; 02 
- D 1 - I - 0x016D2C 05:AD1C: 00        .byte $00, $00, $9E, $9F   ; 03 



.export _off026_0x016D30_38
_off026_0x016D30_38:
; con_8F57_38
- - - - - - 0x016D30 05:AD20: 04        .byte $04   ; size X
- - - - - - 0x016D31 05:AD21: 03        .byte $03   ; size Y
- - - - - - 0x016D32 05:AD22: 00        .byte $00, $4D, $86, $87   ; 01 
- - - - - - 0x016D36 05:AD26: 00        .byte $00, $8D, $8E, $8F   ; 02 
- - - - - - 0x016D3A 05:AD2A: 00        .byte $00, $00, $00, $00   ; 03 



.export _off026_0x016D3E_3C
_off026_0x016D3E_3C:
; con_8F57_3C
- D 1 - I - 0x016D3E 05:AD2E: 02        .byte $02   ; size X
- D 1 - I - 0x016D3F 05:AD2F: 02        .byte $02   ; size Y
- D 1 - I - 0x016D40 05:AD30: A2        .byte $A2, $A3   ; 01 
- D 1 - I - 0x016D42 05:AD32: AC        .byte $AC, $AD   ; 02 



.export _off026_0x016D44_40
_off026_0x016D44_40:
; con_8F57_40
- D 1 - I - 0x016D44 05:AD34: 02        .byte $02   ; size X
- D 1 - I - 0x016D45 05:AD35: 03        .byte $03   ; size Y
- D 1 - I - 0x016D46 05:AD36: A2        .byte $A2, $A3   ; 01 
- D 1 - I - 0x016D48 05:AD38: A6        .byte $A6, $A7   ; 02 
- D 1 - I - 0x016D4A 05:AD3A: AC        .byte $AC, $AD   ; 03 



.export _off026_0x016D4C_44
_off026_0x016D4C_44:
; con_8F57_44
- D 1 - I - 0x016D4C 05:AD3C: 02        .byte $02   ; size X
- D 1 - I - 0x016D4D 05:AD3D: 03        .byte $03   ; size Y
- D 1 - I - 0x016D4E 05:AD3E: B4        .byte $B4, $B5   ; 01 
- D 1 - I - 0x016D50 05:AD40: A6        .byte $A6, $A7   ; 02 
- D 1 - I - 0x016D52 05:AD42: AC        .byte $AC, $AD   ; 03 



.export _off026_0x016D54_48
_off026_0x016D54_48:
; con_8F57_48
- D 1 - I - 0x016D54 05:AD44: 02        .byte $02   ; size X
- D 1 - I - 0x016D55 05:AD45: 02        .byte $02   ; size Y
- D 1 - I - 0x016D56 05:AD46: B4        .byte $B4, $B5   ; 01 
- D 1 - I - 0x016D58 05:AD48: AC        .byte $AC, $AD   ; 02 



.export _off026_0x016D5A_4C
_off026_0x016D5A_4C:
; con_8F57_4C
- D 1 - I - 0x016D5A 05:AD4A: 04        .byte $04   ; size X
- D 1 - I - 0x016D5B 05:AD4B: 03        .byte $03   ; size Y
- D 1 - I - 0x016D5C 05:AD4C: 4C        .byte $4C, $4D, $4E, $00   ; 01 
- D 1 - I - 0x016D60 05:AD50: 50        .byte $50, $51, $52, $00   ; 02 
- D 1 - I - 0x016D64 05:AD54: 00        .byte $00, $00, $00, $00   ; 03 



.export _off026_0x016D68_50
_off026_0x016D68_50:
; con_8F57_50
- D 1 - I - 0x016D68 05:AD58: 02        .byte $02   ; size X
- D 1 - I - 0x016D69 05:AD59: 03        .byte $03   ; size Y
- D 1 - I - 0x016D6A 05:AD5A: B4        .byte $B4, $B5   ; 01 
- D 1 - I - 0x016D6C 05:AD5C: A8        .byte $A8, $A9   ; 02 
- D 1 - I - 0x016D6E 05:AD5E: 00        .byte $00, $00   ; 03 



.export _off026_0x016D70_54
_off026_0x016D70_54:
; con_8F57_54
- D 1 - I - 0x016D70 05:AD60: 02        .byte $02   ; size X
- D 1 - I - 0x016D71 05:AD61: 03        .byte $03   ; size Y
- D 1 - I - 0x016D72 05:AD62: B2        .byte $B2, $B3   ; 01 
- D 1 - I - 0x016D74 05:AD64: B8        .byte $B8, $B9   ; 02 
- D 1 - I - 0x016D76 05:AD66: 00        .byte $00, $00   ; 03 



.export _off026_0x016D78_58
_off026_0x016D78_58:
; con_8F57_58
- D 1 - I - 0x016D78 05:AD68: 04        .byte $04   ; size X
- D 1 - I - 0x016D79 05:AD69: 04        .byte $04   ; size Y
- D 1 - I - 0x016D7A 05:AD6A: AA        .byte $AA, $AB, $B6, $B7   ; 01 
- D 1 - I - 0x016D7E 05:AD6E: AE        .byte $AE, $AF, $AF, $BA   ; 02 
- D 1 - I - 0x016D82 05:AD72: 00        .byte $00, $B0, $BB, $00   ; 03 
- D 1 - I - 0x016D86 05:AD76: 00        .byte $00, $B1, $BC, $00   ; 04 



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



.export _off025_0x016AD8_00
_off025_0x016AD8_00:
- D 1 - I - 0x016AD8 05:AAC8: 04        .byte $04   ; size X
- D 1 - I - 0x016AD9 05:AAC9: 04        .byte $04   ; size Y
- D 1 - I - 0x016ADA 05:AACA: C9        .byte $C9, $C9, $C9, $C9   ; 01 
- D 1 - I - 0x016ADE 05:AACE: CA        .byte $CA, $CA, $CA, $CA   ; 02 
- D 1 - I - 0x016AE2 05:AAD2: CB        .byte $CB, $CB, $CB, $CB   ; 03 
- D 1 - I - 0x016AE6 05:AAD6: CC        .byte $CC, $CC, $CC, $CC   ; 04 



.export _off025_0x016AEA_01
_off025_0x016AEA_01:
- D 1 - I - 0x016AEA 05:AADA: 04        .byte $04   ; size X
- D 1 - I - 0x016AEB 05:AADB: 04        .byte $04   ; size Y
- D 1 - I - 0x016AEC 05:AADC: C9        .byte $C9, $CD, $D1, $C9   ; 01 
- D 1 - I - 0x016AF0 05:AAE0: CA        .byte $CA, $CE, $D2, $CA   ; 02 
- D 1 - I - 0x016AF4 05:AAE4: CB        .byte $CB, $CF, $D3, $CB   ; 03 
- D 1 - I - 0x016AF8 05:AAE8: CC        .byte $CC, $D0, $D4, $CC   ; 04 



.export _off025_0x016AFC_02
_off025_0x016AFC_02:
- D 1 - I - 0x016AFC 05:AAEC: 04        .byte $04   ; size X
- D 1 - I - 0x016AFD 05:AAED: 04        .byte $04   ; size Y
- D 1 - I - 0x016AFE 05:AAEE: C9        .byte $C9, $00, $00, $C9   ; 01 
- D 1 - I - 0x016B02 05:AAF2: CA        .byte $CA, $00, $00, $CA   ; 02 
- D 1 - I - 0x016B06 05:AAF6: CB        .byte $CB, $00, $00, $CB   ; 03 
- D 1 - I - 0x016B0A 05:AAFA: CC        .byte $CC, $00, $00, $CC   ; 04 



.export _off025_0x016B0E_03
_off025_0x016B0E_03:
- D 1 - I - 0x016B0E 05:AAFE: 04        .byte $04   ; size X
- D 1 - I - 0x016B0F 05:AAFF: 04        .byte $04   ; size Y
- D 1 - I - 0x016B10 05:AB00: CD        .byte $CD, $00, $00, $D1   ; 01 
- D 1 - I - 0x016B14 05:AB04: CE        .byte $CE, $00, $00, $D2   ; 02 
- D 1 - I - 0x016B18 05:AB08: CF        .byte $CF, $00, $00, $D3   ; 03 
- D 1 - I - 0x016B1C 05:AB0C: D0        .byte $D0, $00, $00, $D4   ; 04 



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



.export _off031_0x0169DC_00
_off031_0x0169DC_00:
- D 1 - I - 0x0169DC 05:A9CC: 04        .byte $04   ; size X
- D 1 - I - 0x0169DD 05:A9CD: 04        .byte $04   ; size Y
- D 1 - I - 0x0169DE 05:A9CE: C2        .byte $C2, $C3, $C4, $C5   ; 01 
- D 1 - I - 0x0169E2 05:A9D2: C6        .byte $C6, $C7, $C7, $C8   ; 02 
- D 1 - I - 0x0169E6 05:A9D6: BE        .byte $BE, $BE, $BE, $BE   ; 03 
- D 1 - I - 0x0169EA 05:A9DA: BE        .byte $BE, $BF, $BE, $BF   ; 04 



.export _off031_0x0169EE_01
_off031_0x0169EE_01:
- D 1 - I - 0x0169EE 05:A9DE: 04        .byte $04   ; size X
- D 1 - I - 0x0169EF 05:A9DF: 05        .byte $05   ; size Y
- D 1 - I - 0x0169F0 05:A9E0: 00        .byte $00, $C0, $C1, $BE   ; 01 
- D 1 - I - 0x0169F4 05:A9E4: C2        .byte $C2, $C3, $C4, $C5   ; 02 
- D 1 - I - 0x0169F8 05:A9E8: C6        .byte $C6, $C7, $C7, $C8   ; 03 
- D 1 - I - 0x0169FC 05:A9EC: BE        .byte $BE, $BE, $BE, $BE   ; 04 
- D 1 - I - 0x016A00 05:A9F0: BE        .byte $BE, $BF, $BE, $BF   ; 05 



.export _off031_0x016A04_02
_off031_0x016A04_02:
.export _off031_0x016A04_03
_off031_0x016A04_03:
.export _off031_0x016A04_04
_off031_0x016A04_04:
.export _off031_0x016A04_05
_off031_0x016A04_05:
.export _off031_0x016A04_06
_off031_0x016A04_06:
- D 1 - I - 0x016A04 05:A9F4: 04        .byte $04   ; size X
- D 1 - I - 0x016A05 05:A9F5: 05        .byte $05   ; size Y
- D 1 - I - 0x016A06 05:A9F6: BE        .byte $BE, $C0, $C1, $BF   ; 01 
- D 1 - I - 0x016A0A 05:A9FA: C2        .byte $C2, $C3, $C4, $C5   ; 02 
- D 1 - I - 0x016A0E 05:A9FE: C6        .byte $C6, $C7, $C7, $C8   ; 03 
- D 1 - I - 0x016A12 05:AA02: BE        .byte $BE, $BE, $BE, $BE   ; 04 
- D 1 - I - 0x016A16 05:AA06: BE        .byte $BE, $BF, $BE, $BF   ; 05 



.export _off031_0x016A1A_07
_off031_0x016A1A_07:
- D 1 - I - 0x016A1A 05:AA0A: 04        .byte $04   ; size X
- D 1 - I - 0x016A1B 05:AA0B: 05        .byte $05   ; size Y
- D 1 - I - 0x016A1C 05:AA0C: BE        .byte $BE, $C0, $C1, $BF   ; 01 
- D 1 - I - 0x016A20 05:AA10: C2        .byte $C2, $C3, $C4, $C5   ; 02 
- D 1 - I - 0x016A24 05:AA14: C6        .byte $C6, $C7, $C7, $C8   ; 03 
- D 1 - I - 0x016A28 05:AA18: BE        .byte $BE, $BE, $BE, $BE   ; 04 
- D 1 - I - 0x016A2C 05:AA1C: D6        .byte $D6, $D6, $D6, $D6   ; 05 



.export _off031_0x016A30_08
_off031_0x016A30_08:
- D 1 - I - 0x016A30 05:AA20: 04        .byte $04   ; size X
- D 1 - I - 0x016A31 05:AA21: 04        .byte $04   ; size Y
- D 1 - I - 0x016A32 05:AA22: BE        .byte $BE, $C0, $C1, $BF   ; 01 
- D 1 - I - 0x016A36 05:AA26: C2        .byte $C2, $C3, $C4, $C5   ; 02 
- D 1 - I - 0x016A3A 05:AA2A: C6        .byte $C6, $C7, $C7, $C8   ; 03 
- D 1 - I - 0x016A3E 05:AA2E: D6        .byte $D6, $D6, $D6, $D6   ; 04 



.export _off031_0x016A42_09
_off031_0x016A42_09:
- D 1 - I - 0x016A42 05:AA32: 04        .byte $04   ; size X
- D 1 - I - 0x016A43 05:AA33: 03        .byte $03   ; size Y
- D 1 - I - 0x016A44 05:AA34: BE        .byte $BE, $C0, $C1, $BF   ; 01 
- D 1 - I - 0x016A48 05:AA38: C2        .byte $C2, $C3, $C4, $C5   ; 02 
- D 1 - I - 0x016A4C 05:AA3C: C6        .byte $C6, $C7, $C7, $C8   ; 03 



.export _off031_0x016A50_0A
_off031_0x016A50_0A:
- D 1 - I - 0x016A50 05:AA40: 04        .byte $04   ; size X
- D 1 - I - 0x016A51 05:AA41: 05        .byte $05   ; size Y
- D 1 - I - 0x016A52 05:AA42: 00        .byte $00, $00, $00, $00   ; 01 
- D 1 - I - 0x016A56 05:AA46: BE        .byte $BE, $BE, $BE, $BE   ; 02 
- D 1 - I - 0x016A5A 05:AA4A: BE        .byte $BE, $BF, $BE, $BF   ; 03 
- D 1 - I - 0x016A5E 05:AA4E: BE        .byte $BE, $BF, $BE, $BF   ; 04 
- D 1 - I - 0x016A62 05:AA52: BE        .byte $BE, $BF, $BE, $BF   ; 05 



.export _off031_0x016A66_0B
_off031_0x016A66_0B:
- - - - - - 0x016A66 05:AA56: 04        .byte $04   ; size X
- - - - - - 0x016A67 05:AA57: 06        .byte $06   ; size Y
- - - - - - 0x016A68 05:AA58: BE        .byte $BE, $BF, $BE, $BF   ; 01 
- - - - - - 0x016A6C 05:AA5C: BE        .byte $BE, $BF, $BE, $BF   ; 02 
- - - - - - 0x016A70 05:AA60: BE        .byte $BE, $BF, $BE, $BF   ; 03 
- - - - - - 0x016A74 05:AA64: BE        .byte $BE, $BF, $BE, $BF   ; 04 
- - - - - - 0x016A78 05:AA68: BE        .byte $BE, $BF, $BE, $BF   ; 05 
- - - - - - 0x016A7C 05:AA6C: D6        .byte $D6, $D6, $D6, $D6   ; 06 



.export _off031_0x016A80_0C
_off031_0x016A80_0C:
- - - - - - 0x016A80 05:AA70: 04        .byte $04   ; size X
- - - - - - 0x016A81 05:AA71: 05        .byte $05   ; size Y
- - - - - - 0x016A82 05:AA72: C2        .byte $C2, $C3, $C4, $C5   ; 01 
- - - - - - 0x016A86 05:AA76: C6        .byte $C6, $C7, $C7, $C8   ; 02 
- - - - - - 0x016A8A 05:AA7A: 00        .byte $00, $00, $00, $00   ; 03 
- - - - - - 0x016A8E 05:AA7E: BE        .byte $BE, $BF, $BE, $BF   ; 04 
- - - - - - 0x016A92 05:AA82: BE        .byte $BE, $BF, $BE, $BF   ; 05 



.export _off031_0x016A96_0D
_off031_0x016A96_0D:
- D 1 - I - 0x016A96 05:AA86: 04        .byte $04   ; size X
- D 1 - I - 0x016A97 05:AA87: 05        .byte $05   ; size Y
- D 1 - I - 0x016A98 05:AA88: BE        .byte $BE, $C0, $C1, $BF   ; 01 
- D 1 - I - 0x016A9C 05:AA8C: C2        .byte $C2, $C3, $C4, $C5   ; 02 
- D 1 - I - 0x016AA0 05:AA90: C6        .byte $C6, $C7, $C7, $C8   ; 03 
- D 1 - I - 0x016AA4 05:AA94: BE        .byte $BE, $BE, $BE, $BE   ; 04 
- D 1 - I - 0x016AA8 05:AA98: D5        .byte $D5, $D6, $D6, $D6   ; 05 



.export _off031_0x016AAC_0E
_off031_0x016AAC_0E:
- D 1 - I - 0x016AAC 05:AA9C: 04        .byte $04   ; size X
- D 1 - I - 0x016AAD 05:AA9D: 04        .byte $04   ; size Y
- D 1 - I - 0x016AAE 05:AA9E: BE        .byte $BE, $C0, $C1, $BF   ; 01 
- D 1 - I - 0x016AB2 05:AAA2: C2        .byte $C2, $C3, $C4, $C5   ; 02 
- D 1 - I - 0x016AB6 05:AAA6: C6        .byte $C6, $C7, $C7, $C8   ; 03 
- D 1 - I - 0x016ABA 05:AAAA: D5        .byte $D5, $D6, $D6, $D6   ; 04 



.export _off031_0x016ABE_0F
_off031_0x016ABE_0F:
- D 1 - I - 0x016ABE 05:AAAE: 04        .byte $04   ; size X
- D 1 - I - 0x016ABF 05:AAAF: 06        .byte $06   ; size Y
- D 1 - I - 0x016AC0 05:AAB0: BE        .byte $BE, $BF, $BE, $BF   ; 01 
- D 1 - I - 0x016AC4 05:AAB4: BE        .byte $BE, $BF, $BE, $BF   ; 02 
- D 1 - I - 0x016AC8 05:AAB8: BE        .byte $BE, $BF, $BE, $BF   ; 03 
- D 1 - I - 0x016ACC 05:AABC: BE        .byte $BE, $BF, $BE, $BF   ; 04 
- D 1 - I - 0x016AD0 05:AAC0: BE        .byte $BE, $BF, $BE, $BF   ; 05 
- D 1 - I - 0x016AD4 05:AAC4: D5        .byte $D5, $D6, $D6, $D6   ; 06 



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



.export _off011_0x016B34_02
_off011_0x016B34_02:
- D 1 - I - 0x016B34 05:AB24: 04        .byte $04   ; size X
- D 1 - I - 0x016B35 05:AB25: 0B        .byte $0B   ; size Y
- D 1 - I - 0x016B36 05:AB26: 00        .byte $00, $00, $00, $00   ; 01 
- D 1 - I - 0x016B3A 05:AB2A: 80        .byte $80, $81, $81, $82   ; 02 
- D 1 - I - 0x016B3E 05:AB2E: 83        .byte $83, $84, $84, $85   ; 03 
- D 1 - I - 0x016B42 05:AB32: 86        .byte $86, $87, $87, $88   ; 04 
- D 1 - I - 0x016B46 05:AB36: 89        .byte $89, $8A, $8A, $8B   ; 05 
- D 1 - I - 0x016B4A 05:AB3A: 89        .byte $89, $8A, $8A, $8B   ; 06 
- D 1 - I - 0x016B4E 05:AB3E: 8C        .byte $8C, $8D, $8D, $8E   ; 07 
- D 1 - I - 0x016B52 05:AB42: 86        .byte $86, $87, $87, $88   ; 08 
- D 1 - I - 0x016B56 05:AB46: 89        .byte $89, $8A, $8A, $8B   ; 09 
- D 1 - I - 0x016B5A 05:AB4A: 89        .byte $89, $8A, $8A, $8B   ; 0A 
- D 1 - I - 0x016B5E 05:AB4E: 8C        .byte $8C, $8D, $8D, $8E   ; 0B 



.export _off011_0x016B62_00
_off011_0x016B62_00:
- D 1 - I - 0x016B62 05:AB52: 04        .byte $04   ; size X
- D 1 - I - 0x016B63 05:AB53: 07        .byte $07   ; size Y
- D 1 - I - 0x016B64 05:AB54: 00        .byte $00, $00, $00, $00   ; 01 
- D 1 - I - 0x016B68 05:AB58: 80        .byte $80, $81, $81, $82   ; 02 
- D 1 - I - 0x016B6C 05:AB5C: 83        .byte $83, $84, $84, $85   ; 03 
- D 1 - I - 0x016B70 05:AB60: 86        .byte $86, $87, $87, $88   ; 04 
- D 1 - I - 0x016B74 05:AB64: 89        .byte $89, $8A, $8A, $8B   ; 05 
- D 1 - I - 0x016B78 05:AB68: 89        .byte $89, $8A, $8A, $8B   ; 06 
- D 1 - I - 0x016B7C 05:AB6C: 8C        .byte $8C, $8D, $8D, $8E   ; 07 



.export _off011_0x016B80_04
_off011_0x016B80_04:
- D 1 - I - 0x016B80 05:AB70: 04        .byte $04   ; size X
- D 1 - I - 0x016B81 05:AB71: 06        .byte $06   ; size Y
- D 1 - I - 0x016B82 05:AB72: 00        .byte $00, $00, $00, $00   ; 01 
- D 1 - I - 0x016B86 05:AB76: 00        .byte $00, $00, $00, $00   ; 02 
- D 1 - I - 0x016B8A 05:AB7A: 00        .byte $00, $00, $00, $00   ; 03 
- D 1 - I - 0x016B8E 05:AB7E: 00        .byte $00, $00, $00, $00   ; 04 
- D 1 - I - 0x016B92 05:AB82: FD        .byte $FD, $FD, $FD, $FD   ; 05 
- D 1 - I - 0x016B96 05:AB86: FE        .byte $FE, $FE, $FE, $FE   ; 06 



.export _off011_0x016B9A_06
_off011_0x016B9A_06:
- D 1 - I - 0x016B9A 05:AB8A: 04        .byte $04   ; size X
- D 1 - I - 0x016B9B 05:AB8B: 06        .byte $06   ; size Y
- D 1 - I - 0x016B9C 05:AB8C: 00        .byte $00, $00, $00, $00   ; 01 
- D 1 - I - 0x016BA0 05:AB90: 00        .byte $00, $00, $00, $00   ; 02 
- D 1 - I - 0x016BA4 05:AB94: 00        .byte $00, $00, $00, $00   ; 03 
- D 1 - I - 0x016BA8 05:AB98: 00        .byte $00, $00, $00, $00   ; 04 
- D 1 - I - 0x016BAC 05:AB9C: 80        .byte $80, $81, $81, $82   ; 05 
- D 1 - I - 0x016BB0 05:ABA0: 83        .byte $83, $84, $84, $85   ; 06 



.export _off011_0x016BB4_08
_off011_0x016BB4_08:    ; never used, no such index
- - - - - - 0x016BB4 05:ABA4: 04        .byte $04   ; size X
- - - - - - 0x016BB5 05:ABA5: 04        .byte $04   ; size Y
- - - - - - 0x016BB6 05:ABA6: 00        .byte $00, $00, $00, $00   ; 01 
- - - - - - 0x016BBA 05:ABAA: 00        .byte $00, $00, $00, $00   ; 02 
- - - - - - 0x016BBE 05:ABAE: 80        .byte $80, $81, $81, $82   ; 03 
- - - - - - 0x016BC2 05:ABB2: 83        .byte $83, $84, $84, $85   ; 04 



.export _off011_0x016BC6_12
_off011_0x016BC6_12:
- D 1 - I - 0x016BC6 05:ABB6: 04        .byte $04   ; size X
- D 1 - I - 0x016BC7 05:ABB7: 08        .byte $08   ; size Y
- D 1 - I - 0x016BC8 05:ABB8: 26        .byte $26, $24, $26, $24   ; 01 
- D 1 - I - 0x016BCC 05:ABBC: 00        .byte $00, $27, $28, $27   ; 02 
- D 1 - I - 0x016BD0 05:ABC0: 00        .byte $00, $25, $24, $25   ; 03 
- D 1 - I - 0x016BD4 05:ABC4: 00        .byte $00, $00, $00, $00   ; 04 
- D 1 - I - 0x016BD8 05:ABC8: 2B        .byte $2B, $00, $00, $2D   ; 05 
- D 1 - I - 0x016BDC 05:ABCC: 2C        .byte $2C, $00, $00, $2E   ; 06 
- D 1 - I - 0x016BE0 05:ABD0: 2C        .byte $2C, $00, $00, $2E   ; 07 
- D 1 - I - 0x016BE4 05:ABD4: 00        .byte $00, $00, $00, $00   ; 08 



.export _off011_0x016BE8_0C
_off011_0x016BE8_0C:
- D 1 - I - 0x016BE8 05:ABD8: 04        .byte $04   ; size X
- D 1 - I - 0x016BE9 05:ABD9: 0B        .byte $0B   ; size Y
- D 1 - I - 0x016BEA 05:ABDA: 00        .byte $00, $00, $00, $00   ; 01 
- D 1 - I - 0x016BEE 05:ABDE: B0        .byte $B0, $B1, $B1, $B2   ; 02 
- D 1 - I - 0x016BF2 05:ABE2: B3        .byte $B3, $B4, $B4, $B5   ; 03 
- D 1 - I - 0x016BF6 05:ABE6: B6        .byte $B6, $B7, $B7, $B8   ; 04 
- D 1 - I - 0x016BFA 05:ABEA: B9        .byte $B9, $BA, $BA, $BB   ; 05 
- D 1 - I - 0x016BFE 05:ABEE: B9        .byte $B9, $BA, $BA, $BB   ; 06 
- D 1 - I - 0x016C02 05:ABF2: BC        .byte $BC, $BD, $BD, $BE   ; 07 
- D 1 - I - 0x016C06 05:ABF6: B6        .byte $B6, $B7, $B7, $B8   ; 08 
- D 1 - I - 0x016C0A 05:ABFA: B9        .byte $B9, $BA, $BA, $BB   ; 09 
- D 1 - I - 0x016C0E 05:ABFE: B9        .byte $B9, $BA, $BA, $BB   ; 0A 
- D 1 - I - 0x016C12 05:AC02: BC        .byte $BC, $BD, $BD, $BE   ; 0B 



.export _off011_0x016C16_0A
_off011_0x016C16_0A:
- D 1 - I - 0x016C16 05:AC06: 04        .byte $04   ; size X
- D 1 - I - 0x016C17 05:AC07: 07        .byte $07   ; size Y
- D 1 - I - 0x016C18 05:AC08: 00        .byte $00, $00, $00, $00   ; 01 
- D 1 - I - 0x016C1C 05:AC0C: B0        .byte $B0, $B1, $B1, $B2   ; 02 
- D 1 - I - 0x016C20 05:AC10: B3        .byte $B3, $B4, $B4, $B5   ; 03 
- D 1 - I - 0x016C24 05:AC14: B6        .byte $B6, $B7, $B7, $B8   ; 04 
- D 1 - I - 0x016C28 05:AC18: B9        .byte $B9, $BA, $BA, $BB   ; 05 
- D 1 - I - 0x016C2C 05:AC1C: B9        .byte $B9, $BA, $BA, $BB   ; 06 
- D 1 - I - 0x016C30 05:AC20: BC        .byte $BC, $BD, $BD, $BE   ; 07 



.export _off011_0x016C34_18
_off011_0x016C34_18:
- D 1 - I - 0x016C34 05:AC24: 04        .byte $04   ; size X
- D 1 - I - 0x016C35 05:AC25: 08        .byte $08   ; size Y
- D 1 - I - 0x016C36 05:AC26: B6        .byte $B6, $B7, $B7, $B8   ; 01 
- D 1 - I - 0x016C3A 05:AC2A: B9        .byte $B9, $BA, $BA, $BB   ; 02 
- D 1 - I - 0x016C3E 05:AC2E: B9        .byte $B9, $BA, $BA, $BB   ; 03 
- D 1 - I - 0x016C42 05:AC32: BC        .byte $BC, $BD, $BD, $BE   ; 04 
- D 1 - I - 0x016C46 05:AC36: B6        .byte $B6, $B7, $B7, $B8   ; 05 
- D 1 - I - 0x016C4A 05:AC3A: B9        .byte $B9, $BA, $BA, $BB   ; 06 
- D 1 - I - 0x016C4E 05:AC3E: B9        .byte $B9, $BA, $BA, $BB   ; 07 
- D 1 - I - 0x016C52 05:AC42: BC        .byte $BC, $BD, $BD, $BE   ; 08 



.export _off011_0x016C56_16
_off011_0x016C56_16:
- D 1 - I - 0x016C56 05:AC46: 04        .byte $04   ; size X
- D 1 - I - 0x016C57 05:AC47: 04        .byte $04   ; size Y
- D 1 - I - 0x016C58 05:AC48: B6        .byte $B6, $B7, $B7, $B8   ; 01 
- D 1 - I - 0x016C5C 05:AC4C: B9        .byte $B9, $BA, $BA, $BB   ; 02 
- D 1 - I - 0x016C60 05:AC50: B9        .byte $B9, $BA, $BA, $BB   ; 03 
- D 1 - I - 0x016C64 05:AC54: BC        .byte $BC, $BD, $BD, $BE   ; 04 



.export _off011_0x016C68_0E
_off011_0x016C68_0E:
- D 1 - I - 0x016C68 05:AC58: 04        .byte $04   ; size X
- D 1 - I - 0x016C69 05:AC59: 06        .byte $06   ; size Y
- D 1 - I - 0x016C6A 05:AC5A: 00        .byte $00, $00, $00, $00   ; 01 
- D 1 - I - 0x016C6E 05:AC5E: 00        .byte $00, $00, $00, $00   ; 02 
- D 1 - I - 0x016C72 05:AC62: 00        .byte $00, $00, $00, $00   ; 03 
- D 1 - I - 0x016C76 05:AC66: 67        .byte $67, $5F, $5F, $67   ; 04 
- D 1 - I - 0x016C7A 05:AC6A: 90        .byte $90, $91, $91, $90   ; 05 
- D 1 - I - 0x016C7E 05:AC6E: 95        .byte $95, $96, $96, $97   ; 06 



.export _off011_0x016C82_10
_off011_0x016C82_10:
- D 1 - I - 0x016C82 05:AC72: 04        .byte $04   ; size X
- D 1 - I - 0x016C83 05:AC73: 06        .byte $06   ; size Y
- D 1 - I - 0x016C84 05:AC74: 00        .byte $00, $00, $00, $00   ; 01 
- D 1 - I - 0x016C88 05:AC78: 00        .byte $00, $00, $00, $00   ; 02 
- D 1 - I - 0x016C8C 05:AC7C: 00        .byte $00, $00, $00, $00   ; 03 
- D 1 - I - 0x016C90 05:AC80: 00        .byte $00, $00, $00, $00   ; 04 
- D 1 - I - 0x016C94 05:AC84: B0        .byte $B0, $B1, $B1, $B2   ; 05 
- D 1 - I - 0x016C98 05:AC88: B3        .byte $B3, $B4, $B4, $B5   ; 06 



.export _off011_0x016C9C_14
_off011_0x016C9C_14:
- D 1 - I - 0x016C9C 05:AC8C: 04        .byte $04   ; size X
- D 1 - I - 0x016C9D 05:AC8D: 0A        .byte $0A   ; size Y
- D 1 - I - 0x016C9E 05:AC8E: 00        .byte $00, $00, $00, $00   ; 01 
- D 1 - I - 0x016CA2 05:AC92: 00        .byte $00, $00, $00, $00   ; 02 
- D 1 - I - 0x016CA6 05:AC96: 00        .byte $00, $00, $00, $00   ; 03 
- D 1 - I - 0x016CAA 05:AC9A: 00        .byte $00, $00, $00, $00   ; 04 
- D 1 - I - 0x016CAE 05:AC9E: 00        .byte $00, $00, $00, $00   ; 05 
- D 1 - I - 0x016CB2 05:ACA2: 00        .byte $00, $00, $00, $00   ; 06 
- D 1 - I - 0x016CB6 05:ACA6: 00        .byte $00, $00, $00, $00   ; 07 
- D 1 - I - 0x016CBA 05:ACAA: 00        .byte $00, $00, $00, $00   ; 08 
- D 1 - I - 0x016CBE 05:ACAE: 00        .byte $00, $00, $00, $00   ; 09 
- D 1 - I - 0x016CC2 05:ACB2: 00        .byte $00, $00, $00, $00   ; 0A 



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



.export off_0x016CC6
off_0x016CC6:
- D 1 - I - 0x016CC6 05:ACB6: 04        .byte $04   ; size X
- D 1 - I - 0x016CC7 05:ACB7: 04        .byte $04   ; size Y
- D 1 - I - 0x016CC8 05:ACB8: 06        .byte $06, $06, $06, $06   ; 01 
- D 1 - I - 0x016CCC 05:ACBC: 06        .byte $06, $61, $6C, $06   ; 02 
- D 1 - I - 0x016CD0 05:ACC0: 06        .byte $06, $78, $79, $06   ; 03 
- D 1 - I - 0x016CD4 05:ACC4: 06        .byte $06, $06, $06, $06   ; 04 



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



.export _off001_0x014416_00
_off001_0x014416_00:
- D 0 - I - 0x014416 05:8406: 0A 22     .word $220A ; ppu address
- D 0 - I - 0x014418 05:8408: 0C        .byte $0C   ; columns
- D 0 - I - 0x014419 05:8409: 01        .byte $01   ; rows
- D 0 - I - 0x01441A 05:840A: 1E        .byte $1E, $15, $1F, $13, $19, $24, $29, $00, $01, $09, $09, $02   ; 01 



.export _off001_0x014426_01
_off001_0x014426_01:
- D 0 - I - 0x014426 05:8416: 14 21     .word $2114 ; ppu address
- D 0 - I - 0x014428 05:8418: 04        .byte $04   ; columns
- D 0 - I - 0x014429 05:8419: 05        .byte $05   ; rows
- D 0 - I - 0x01442A 05:841A: 80        .byte $80, $81, $82, $83   ; 01 
- D 0 - I - 0x01442E 05:841E: 90        .byte $90, $91, $92, $93   ; 02 
- D 0 - I - 0x014432 05:8422: A0        .byte $A0, $A1, $A2, $A3   ; 03 
- D 0 - I - 0x014436 05:8426: B0        .byte $B0, $B1, $B2, $B3   ; 04 
- D 0 - I - 0x01443A 05:842A: DC        .byte $DC, $DD, $DE, $DF   ; 05 



.export _off001_0x01443E_02
_off001_0x01443E_02:
- D 0 - I - 0x01443E 05:842E: 14 21     .word $2114 ; ppu address
- D 0 - I - 0x014440 05:8430: 04        .byte $04   ; columns
- D 0 - I - 0x014441 05:8431: 05        .byte $05   ; rows
- D 0 - I - 0x014442 05:8432: 84        .byte $84, $85, $86, $87   ; 01 
- D 0 - I - 0x014446 05:8436: 94        .byte $94, $95, $96, $97   ; 02 
- D 0 - I - 0x01444A 05:843A: A4        .byte $A4, $A5, $A6, $A7   ; 03 
- D 0 - I - 0x01444E 05:843E: B4        .byte $B4, $B5, $B6, $B7   ; 04 
- D 0 - I - 0x014452 05:8442: EC        .byte $EC, $ED, $EE, $EF   ; 05 



.export _off001_0x014456_03
_off001_0x014456_03:
- D 0 - I - 0x014456 05:8446: 14 21     .word $2114 ; ppu address
- D 0 - I - 0x014458 05:8448: 04        .byte $04   ; columns
- D 0 - I - 0x014459 05:8449: 05        .byte $05   ; rows
- D 0 - I - 0x01445A 05:844A: 88        .byte $88, $89, $8A, $8B   ; 01 
- D 0 - I - 0x01445E 05:844E: 98        .byte $98, $99, $9A, $9B   ; 02 
- D 0 - I - 0x014462 05:8452: A8        .byte $A8, $A9, $AA, $AB   ; 03 
- D 0 - I - 0x014466 05:8456: B8        .byte $B8, $B9, $BA, $BB   ; 04 
- D 0 - I - 0x01446A 05:845A: FB        .byte $FB, $FC, $FD, $FE   ; 05 



.export _off001_0x01446E_04
_off001_0x01446E_04:
- D 0 - I - 0x01446E 05:845E: 14 21     .word $2114 ; ppu address
- D 0 - I - 0x014470 05:8460: 04        .byte $04   ; columns
- D 0 - I - 0x014471 05:8461: 05        .byte $05   ; rows
- D 0 - I - 0x014472 05:8462: 8C        .byte $8C, $8D, $8E, $8F   ; 01 
- D 0 - I - 0x014476 05:8466: 9C        .byte $9C, $9D, $9E, $9F   ; 02 
- D 0 - I - 0x01447A 05:846A: AC        .byte $AC, $AD, $AE, $AF   ; 03 
- D 0 - I - 0x01447E 05:846E: BC        .byte $BC, $BD, $BE, $BF   ; 04 
- D 0 - I - 0x014482 05:8472: CC        .byte $CC, $CD, $CE, $CF   ; 05 



.export _off001_0x014486_05
_off001_0x014486_05:
- D 0 - I - 0x014486 05:8476: 08 21     .word $2108 ; ppu address
- D 0 - I - 0x014488 05:8478: 04        .byte $04   ; columns
- D 0 - I - 0x014489 05:8479: 05        .byte $05   ; rows
- D 0 - I - 0x01448A 05:847A: C0        .byte $C0, $C1, $C2, $C3   ; 01 
- D 0 - I - 0x01448E 05:847E: D0        .byte $D0, $D1, $D2, $D3   ; 02 
- D 0 - I - 0x014492 05:8482: E0        .byte $E0, $E1, $E2, $E3   ; 03 
- D 0 - I - 0x014496 05:8486: F0        .byte $F0, $F1, $F2, $F3   ; 04 
- D 0 - I - 0x01449A 05:848A: 40        .byte $40, $41, $48, $49   ; 05 



.export _off001_0x01449E_06
_off001_0x01449E_06:
- D 0 - I - 0x01449E 05:848E: 08 21     .word $2108 ; ppu address
- D 0 - I - 0x0144A0 05:8490: 04        .byte $04   ; columns
- D 0 - I - 0x0144A1 05:8491: 05        .byte $05   ; rows
- D 0 - I - 0x0144A2 05:8492: C4        .byte $C4, $C5, $C6, $C7   ; 01 
- D 0 - I - 0x0144A6 05:8496: D4        .byte $D4, $D5, $D6, $D7   ; 02 
- D 0 - I - 0x0144AA 05:849A: E4        .byte $E4, $E5, $E6, $E7   ; 03 
- D 0 - I - 0x0144AE 05:849E: F4        .byte $F4, $F5, $F6, $F7   ; 04 
- D 0 - I - 0x0144B2 05:84A2: 4A        .byte $4A, $4B, $4C, $4D   ; 05 



.export _off001_0x0144B6_07
_off001_0x0144B6_07:
- D 0 - I - 0x0144B6 05:84A6: 08 21     .word $2108 ; ppu address
- D 0 - I - 0x0144B8 05:84A8: 04        .byte $04   ; columns
- D 0 - I - 0x0144B9 05:84A9: 05        .byte $05   ; rows
- D 0 - I - 0x0144BA 05:84AA: C8        .byte $C8, $C9, $CA, $CB   ; 01 
- D 0 - I - 0x0144BE 05:84AE: D8        .byte $D8, $D9, $DA, $DB   ; 02 
- D 0 - I - 0x0144C2 05:84B2: E8        .byte $E8, $E9, $EA, $EB   ; 03 
- D 0 - I - 0x0144C6 05:84B6: F0        .byte $F0, $F8, $F9, $FA   ; 04 
- D 0 - I - 0x0144CA 05:84BA: 4E        .byte $4E, $4F, $50, $5F   ; 05 



.export _off001_0x0144CE_08
_off001_0x0144CE_08:
- D 0 - I - 0x0144CE 05:84BE: A8 20     .word $20A8 ; ppu address
- D 0 - I - 0x0144D0 05:84C0: 06        .byte $06   ; columns
- D 0 - I - 0x0144D1 05:84C1: 08        .byte $08   ; rows
- D 0 - I - 0x0144D2 05:84C2: C6        .byte $C6, $C9, $C7, $C8, $C9, $CA   ; 01 
- D 0 - I - 0x0144D8 05:84C8: C0        .byte $C0, $D6, $D7, $D8, $D9, $DA   ; 02 
- D 0 - I - 0x0144DE 05:84CE: C0        .byte $C0, $E6, $E7, $E8, $E9, $DA   ; 03 
- D 0 - I - 0x0144E4 05:84D4: C0        .byte $C0, $F6, $F7, $F8, $F9, $DA   ; 04 
- D 0 - I - 0x0144EA 05:84DA: C0        .byte $C0, $C1, $C2, $C3, $C4, $C5   ; 05 
- D 0 - I - 0x0144F0 05:84E0: D0        .byte $D0, $D1, $D2, $D3, $D4, $D5   ; 06 
- D 0 - I - 0x0144F6 05:84E6: E0        .byte $E0, $E1, $E2, $E3, $E4, $E5   ; 07 
- D 0 - I - 0x0144FC 05:84EC: F0        .byte $F0, $F1, $F2, $F3, $F4, $F5   ; 08 



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



.export _off006_0x01675F_00
_off006_0x01675F_00:
- D 1 - I - 0x01675F 05:A74F: 0D        .byte $0D   ; size X
- D 1 - I - 0x016760 05:A750: 01        .byte $01   ; size Y
- D 1 - I - 0x016761 05:A751: 00        .byte $00, $00, $00, $1E, $1F, $00, $25, $23, $15, $00, $00, $00, $00   ; 01 



.export _off006_0x01676E_02
_off006_0x01676E_02:
- D 1 - I - 0x01676E 05:A75E: 0D        .byte $0D   ; size X
- D 1 - I - 0x01676F 05:A75F: 01        .byte $01   ; size Y
- D 1 - I - 0x016770 05:A760: 00        .byte $00, $00, $00, $01, $20, $1C, $11, $29, $15, $22, $00, $00, $00   ; 01 



.export _off006_0x01677D_04
_off006_0x01677D_04:
- D 1 - I - 0x01677D 05:A76D: 0D        .byte $0D   ; size X
- D 1 - I - 0x01677E 05:A76E: 01        .byte $01   ; size Y
- D 1 - I - 0x01677F 05:A76F: 00        .byte $00, $00, $00, $02, $20, $1C, $11, $29, $15, $22, $00, $00, $00   ; 01 



.export _off006_0x01678C_06
_off006_0x01678C_06:
- D 1 - I - 0x01678C 05:A77C: 0D        .byte $0D   ; size X
- D 1 - I - 0x01678D 05:A77D: 04        .byte $04   ; size Y
- D 1 - I - 0x01678E 05:A77E: 00        .byte $00, $16, $22, $1F, $1E, $24, $00, $13, $1F, $26, $15, $22, $00   ; 01 
- D 1 - I - 0x01679B 05:A78B: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 02 
- D 1 - I - 0x0167A8 05:A798: 00        .byte $00, $F1, $F2, $00, $00, $00, $F1, $F2, $F5, $F6, $13, $20, $25   ; 03 
- D 1 - I - 0x0167B5 05:A7A5: 00        .byte $00, $F9, $FA, $00, $00, $00, $F9, $FA, $00, $FC, $00, $00, $00   ; 04 



.export _off006_0x0167C2_08
_off006_0x0167C2_08:
- D 1 - I - 0x0167C2 05:A7B2: 0D        .byte $0D   ; size X
- D 1 - I - 0x0167C3 05:A7B3: 04        .byte $04   ; size Y
- D 1 - I - 0x0167C4 05:A7B4: 00        .byte $00, $12, $11, $13, $1B, $00, $13, $1F, $26, $15, $22, $00, $00   ; 01 
- D 1 - I - 0x0167D1 05:A7C1: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 02 
- D 1 - I - 0x0167DE 05:A7CE: 13        .byte $13, $20, $25, $F3, $F4, $F0, $00, $00, $00, $00, $00, $F1, $F2   ; 03 
- D 1 - I - 0x0167EB 05:A7DB: 00        .byte $00, $00, $00, $FB, $00, $F8, $00, $00, $00, $00, $00, $F9, $FA   ; 04 



.export _off006_0x0167F8_0A
_off006_0x0167F8_0A:
- D 1 - I - 0x0167F8 05:A7E8: 0D        .byte $0D   ; size X
- D 1 - I - 0x0167F9 05:A7E9: 04        .byte $04   ; size Y
- D 1 - I - 0x0167FA 05:A7EA: 00        .byte $00, $22, $1F, $25, $1E, $14, $00, $13, $1F, $26, $15, $22, $00   ; 01 
- D 1 - I - 0x016807 05:A7F7: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 02 
- D 1 - I - 0x016814 05:A804: 13        .byte $13, $20, $25, $F3, $F4, $F0, $00, $F5, $F6, $00, $00, $F1, $F2   ; 03 
- D 1 - I - 0x016821 05:A811: 00        .byte $00, $00, $00, $FB, $00, $F8, $00, $00, $FC, $00, $00, $F9, $FA   ; 04 



.export _off006_0x01682E_0C
_off006_0x01682E_0C:
- D 1 - I - 0x01682E 05:A81E: 0D        .byte $0D   ; size X
- D 1 - I - 0x01682F 05:A81F: 04        .byte $04   ; size Y
- D 1 - I - 0x016830 05:A820: 00        .byte $00, $16, $22, $1F, $1E, $24, $00, $1B, $15, $15, $20, $00, $00   ; 01 
- D 1 - I - 0x01683D 05:A82D: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 02 
- D 1 - I - 0x01684A 05:A83A: 00        .byte $00, $F1, $F2, $00, $00, $00, $F1, $F2, $00, $00, $13, $20, $25   ; 03 
- D 1 - I - 0x016857 05:A847: 00        .byte $00, $F9, $FA, $00, $00, $00, $F9, $FA, $00, $00, $00, $00, $00   ; 04 



.export _off006_0x016864_0E
_off006_0x016864_0E:
- D 1 - I - 0x016864 05:A854: 0D        .byte $0D   ; size X
- D 1 - I - 0x016865 05:A855: 04        .byte $04   ; size Y
- D 1 - I - 0x016866 05:A856: 00        .byte $00, $12, $11, $13, $1B, $00, $1B, $15, $15, $20, $00, $00, $00   ; 01 
- D 1 - I - 0x016873 05:A863: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 02 
- D 1 - I - 0x016880 05:A870: 13        .byte $13, $20, $25, $F3, $F4, $F0, $00, $00, $00, $00, $00, $F1, $F2   ; 03 
- D 1 - I - 0x01688D 05:A87D: 00        .byte $00, $00, $00, $FB, $00, $F8, $00, $00, $00, $00, $00, $F9, $FA   ; 04 



.export _off006_0x01689A_10
_off006_0x01689A_10:
- D 1 - I - 0x01689A 05:A88A: 0D        .byte $0D   ; size X
- D 1 - I - 0x01689B 05:A88B: 04        .byte $04   ; size Y
- D 1 - I - 0x01689C 05:A88C: 00        .byte $00, $11, $23, $23, $19, $23, $24, $00, $13, $1F, $26, $15, $22   ; 01 
- D 1 - I - 0x0168A9 05:A899: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 02 
- D 1 - I - 0x0168B6 05:A8A6: 13        .byte $13, $20, $25, $F1, $F2, $EE, $EF, $00, $00, $F1, $F2, $EE, $EF   ; 03 
- D 1 - I - 0x0168C3 05:A8B3: 00        .byte $00, $00, $00, $F9, $FA, $00, $00, $00, $00, $F9, $FA, $00, $00   ; 04 



.export _off006_0x0168D0_12
_off006_0x0168D0_12:
- - - - - - 0x0168D0 05:A8C0: 0D        .byte $0D   ; size X
- - - - - - 0x0168D1 05:A8C1: 01        .byte $01   ; size Y
- - - - - - 0x0168D2 05:A8C2: 00        .byte $00, $00, $00, $14, $15, $11, $14, $00, $00, $00, $00, $00, $00   ; 01 


; todo
.export _off006_0x0168DF_14
_off006_0x0168DF_14:
- D 1 - I - 0x0168DF 05:A8CF: 03        .byte $03   ; placeholder (смотреть 0x0166A2)
- D 1 - I - 0x0168E0 05:A8D0: 0D        .byte $0D   ; 0x01DBAA
- D 1 - I - 0x0168E1 05:A8D1: 00        .byte $00   ; 0x01DBB6
- D 1 - I - 0x0168E2 05:A8D2: FF        .byte $FF   ; 0x01DBAA
- D 1 - I - 0x0168E3 05:A8D3: 0D        .byte $0D   ; 0x01DBAA
- D 1 - I - 0x0168E4 05:A8D4: 00        .byte $00   ; 0x01DBB6
- D 1 - I - 0x0168E5 05:A8D5: FF        .byte $FF   ; 0x01DBAA
- D 1 - I - 0x0168E6 05:A8D6: 0D        .byte $0D   ; 0x01DBAA
- D 1 - I - 0x0168E7 05:A8D7: 00        .byte $00   ; 0x01DBB6
- D 1 - I - 0x0168E8 05:A8D8: FF        .byte $FF   ; 0x01DBAA




.out .sprintf("Free bytes in bank 25: 0x%04X [%d]", ($D140 - *), ($D140 - *))



.segment "DPCM_25"
.incbin "DPCM.bin"
.org $D140  ; for listing file



