.segment "BANK_1C"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $8000  ; for listing file
; 0x038010-0x04000F



.export _off012_0x0169B2_00_clear_nametables
_off012_0x0169B2_00_clear_nametables:
; con_D22A_clear_nametables
.export _off012_0x0169B2_02
_off012_0x0169B2_02:
; con_D22A_02
.export _off012_0x0169B2_06
_off012_0x0169B2_06:
; con_D22A_06
; 00-7E = print byte xx times
; 80-FE = print a list of bytes xx times
; 7F = change ppu address
; FF = end token
- D 1 - I - 0x0169B2 05:A9A2: 00 20     .word $2000 ; 

- D 1 - I - 0x0169B4 05:A9A4: 78        .byte $78   ; 
- D 1 - I - 0x0169B5 05:A9A5: 00        .byte $00   ; 

- D 1 - I - 0x0169B6 05:A9A6: 78        .byte $78   ; 
- D 1 - I - 0x0169B7 05:A9A7: 00        .byte $00   ; 

- D 1 - I - 0x0169B8 05:A9A8: 78        .byte $78   ; 
- D 1 - I - 0x0169B9 05:A9A9: 00        .byte $00   ; 

- D 1 - I - 0x0169BA 05:A9AA: 78        .byte $78   ; 
- D 1 - I - 0x0169BB 05:A9AB: 00        .byte $00   ; 

- D 1 - I - 0x0169BC 05:A9AC: 78        .byte $78   ; 
- D 1 - I - 0x0169BD 05:A9AD: 00        .byte $00   ; 

- D 1 - I - 0x0169BE 05:A9AE: 78        .byte $78   ; 
- D 1 - I - 0x0169BF 05:A9AF: 00        .byte $00   ; 

- D 1 - I - 0x0169C0 05:A9B0: 78        .byte $78   ; 
- D 1 - I - 0x0169C1 05:A9B1: 00        .byte $00   ; 

- D 1 - I - 0x0169C2 05:A9B2: 78        .byte $78   ; 
- D 1 - I - 0x0169C3 05:A9B3: 00        .byte $00   ; 

- D 1 - I - 0x0169C4 05:A9B4: 40        .byte $40   ; 
- D 1 - I - 0x0169C5 05:A9B5: 00        .byte $00   ; 

- D 1 - I - 0x0169C6 05:A9B6: 7F        .byte $7F   ; change ppu address
- D 1 - I - 0x0169C7 05:A9B7: 00 24     .word $2400 ; 

- D 1 - I - 0x0169C9 05:A9B9: 78        .byte $78   ; 
- D 1 - I - 0x0169CA 05:A9BA: 00        .byte $00   ; 

- D 1 - I - 0x0169CB 05:A9BB: 78        .byte $78   ; 
- D 1 - I - 0x0169CC 05:A9BC: 00        .byte $00   ; 

- D 1 - I - 0x0169CD 05:A9BD: 78        .byte $78   ; 
- D 1 - I - 0x0169CE 05:A9BE: 00        .byte $00   ; 

- D 1 - I - 0x0169CF 05:A9BF: 78        .byte $78   ; 
- D 1 - I - 0x0169D0 05:A9C0: 00        .byte $00   ; 

- D 1 - I - 0x0169D1 05:A9C1: 78        .byte $78   ; 
- D 1 - I - 0x0169D2 05:A9C2: 00        .byte $00   ; 

- D 1 - I - 0x0169D3 05:A9C3: 78        .byte $78   ; 
- D 1 - I - 0x0169D4 05:A9C4: 00        .byte $00   ; 

- D 1 - I - 0x0169D5 05:A9C5: 78        .byte $78   ; 
- D 1 - I - 0x0169D6 05:A9C6: 00        .byte $00   ; 

- D 1 - I - 0x0169D7 05:A9C7: 78        .byte $78   ; 
- D 1 - I - 0x0169D8 05:A9C8: 00        .byte $00   ; 

- D 1 - I - 0x0169D9 05:A9C9: 40        .byte $40   ; 
- D 1 - I - 0x0169DA 05:A9CA: 00        .byte $00   ; 

- D 1 - I - 0x0169DB 05:A9CB: FF        .byte $FF   ; end token



.export _off012_0x007EDC_08_cutscene_phone
_off012_0x007EDC_08_cutscene_phone:
; con_D22A_cutscene_phone
; 00-7E = print byte xx times
; 80-FE = print a list of bytes xx times
; 7F = change ppu address
; FF = end token
- D 1 - I - 0x007EDC 01:BECC: 00 20     .word $2000 ; 

- D 1 - I - 0x007EDE 01:BECE: 7E        .byte $7E   ; 
- D 1 - I - 0x007EDF 01:BECF: 00        .byte $00   ; 

- D 1 - I - 0x007EE0 01:BED0: 11        .byte $11   ; 
- D 1 - I - 0x007EE1 01:BED1: 00        .byte $00   ; 

- D 1 - I - 0x007EE2 01:BED2: 85        .byte $80 + $05   ; 
- D 1 - I - 0x007EE3 01:BED3: 81        .byte $81, $94, $95, $96, $97   ; 

- D 1 - I - 0x007EE8 01:BED8: 1B        .byte $1B   ; 
- D 1 - I - 0x007EE9 01:BED9: 00        .byte $00   ; 

- D 1 - I - 0x007EEA 01:BEDA: 85        .byte $80 + $05   ; 
- D 1 - I - 0x007EEB 01:BEDB: 82        .byte $82, $98, $99, $9A, $9B   ; 

- D 1 - I - 0x007EF0 01:BEE0: 1C        .byte $1C   ; 
- D 1 - I - 0x007EF1 01:BEE1: 00        .byte $00   ; 

- D 1 - I - 0x007EF2 01:BEE2: 84        .byte $80 + $04   ; 
- D 1 - I - 0x007EF3 01:BEE3: 9C        .byte $9C, $9D, $9E, $9F   ; 

- D 1 - I - 0x007EF7 01:BEE7: 1A        .byte $1A   ; 
- D 1 - I - 0x007EF8 01:BEE8: 00        .byte $00   ; 

- D 1 - I - 0x007EF9 01:BEE9: 86        .byte $80 + $06   ; 
- D 1 - I - 0x007EFA 01:BEEA: 83        .byte $83, $84, $A0, $A1, $A2, $A3   ; 

- D 1 - I - 0x007F00 01:BEF0: 1A        .byte $1A   ; 
- D 1 - I - 0x007F01 01:BEF1: 00        .byte $00   ; 

- D 1 - I - 0x007F02 01:BEF2: 8A        .byte $80 + $0A   ; 
- D 1 - I - 0x007F03 01:BEF3: 85        .byte $85, $86, $A4, $A5, $A6, $A7, $A8, $A9, $AA, $AB   ; 

- D 1 - I - 0x007F0D 01:BEFD: 16        .byte $16   ; 
- D 1 - I - 0x007F0E 01:BEFE: 00        .byte $00   ; 

- D 1 - I - 0x007F0F 01:BEFF: 8B        .byte $80 + $0B   ; 
- D 1 - I - 0x007F10 01:BF00: 87        .byte $87, $88, $AC, $AD, $AE, $AF, $B0, $B1, $B2, $B3, $B4   ; 

- D 1 - I - 0x007F1B 01:BF0B: 15        .byte $15   ; 
- D 1 - I - 0x007F1C 01:BF0C: 00        .byte $00   ; 

- D 1 - I - 0x007F1D 01:BF0D: 8C        .byte $80 + $0C   ; 
- D 1 - I - 0x007F1E 01:BF0E: 89        .byte $89, $8A, $B5, $B6, $B7, $B8, $B9, $BA, $BB, $BC, $BD, $BE   ; 

- D 1 - I - 0x007F2A 01:BF1A: 13        .byte $13   ; 
- D 1 - I - 0x007F2B 01:BF1B: 00        .byte $00   ; 

- D 1 - I - 0x007F2C 01:BF1C: 8D        .byte $80 + $0D   ; 
- D 1 - I - 0x007F2D 01:BF1D: 8B        .byte $8B, $8C, $8D, $BF, $C0, $C1, $C2, $C3, $C4, $C5, $C6, $C7, $C8   ; 

- D 1 - I - 0x007F3A 01:BF2A: 13        .byte $13   ; 
- D 1 - I - 0x007F3B 01:BF2B: 00        .byte $00   ; 

- D 1 - I - 0x007F3C 01:BF2C: 8D        .byte $80 + $0D   ; 
- D 1 - I - 0x007F3D 01:BF2D: 8E        .byte $8E, $8F, $90, $C9, $CA, $CB, $CC, $CD, $CE, $CF, $D0, $D1, $D2   ; 

- D 1 - I - 0x007F4A 01:BF3A: 13        .byte $13   ; 
- D 1 - I - 0x007F4B 01:BF3B: 00        .byte $00   ; 

- D 1 - I - 0x007F4C 01:BF3C: 8D        .byte $80 + $0D   ; 
- D 1 - I - 0x007F4D 01:BF3D: 91        .byte $91, $92, $93, $D3, $D4, $D5, $D6, $D7, $D8, $D9, $DA, $DB, $DC   ; 

- D 1 - I - 0x007F5A 01:BF4A: 0E        .byte $0E   ; 
- D 1 - I - 0x007F5B 01:BF4B: 00        .byte $00   ; 

- D 1 - I - 0x007F5C 01:BF4C: 8A        .byte $80 + $0A   ; 
- D 1 - I - 0x007F5D 01:BF4D: DD        .byte $DD, $DE, $DF, $E0, $00, $E1, $E2, $00, $ED, $EE   ; 

- D 1 - I - 0x007F67 01:BF57: 03        .byte $03   ; 
- D 1 - I - 0x007F68 01:BF58: CB        .byte $CB   ; 

- D 1 - I - 0x007F69 01:BF59: 84        .byte $80 + $04   ; 
- D 1 - I - 0x007F6A 01:BF5A: EF        .byte $EF, $F0, $F1, $F2   ; 

- D 1 - I - 0x007F6E 01:BF5E: 0E        .byte $0E   ; 
- D 1 - I - 0x007F6F 01:BF5F: 00        .byte $00   ; 

- D 1 - I - 0x007F70 01:BF60: 91        .byte $80 + $11   ; 
- D 1 - I - 0x007F71 01:BF61: E3        .byte $E3, $E4, $E5, $E6, $E7, $00, $E8, $00, $00, $F3, $F4, $F5, $F6, $F6, $F7, $F8   ; 
- D 1 - I - 0x007F81 01:BF71: F9        .byte $F9   ; 

- D 1 - I - 0x007F82 01:BF72: 08        .byte $08   ; 
- D 1 - I - 0x007F83 01:BF73: 00        .byte $00   ; 

- D 1 - I - 0x007F84 01:BF74: 20        .byte $20   ; 
- D 1 - I - 0x007F85 01:BF75: E9        .byte $E9   ; 

- D 1 - I - 0x007F86 01:BF76: 20        .byte $20   ; 
- D 1 - I - 0x007F87 01:BF77: EA        .byte $EA   ; 

- D 1 - I - 0x007F88 01:BF78: 20        .byte $20   ; 
- D 1 - I - 0x007F89 01:BF79: EB        .byte $EB   ; 

- D 1 - I - 0x007F8A 01:BF7A: 20        .byte $20   ; 
- D 1 - I - 0x007F8B 01:BF7B: EC        .byte $EC   ; 

- D 1 - I - 0x007F8C 01:BF7C: 7E        .byte $7E   ; 
- D 1 - I - 0x007F8D 01:BF7D: 00        .byte $00   ; 

- D 1 - I - 0x007F8E 01:BF7E: 7E        .byte $7E   ; 
- D 1 - I - 0x007F8F 01:BF7F: 00        .byte $00   ; 

- D 1 - I - 0x007F90 01:BF80: 59        .byte $59   ; 
- D 1 - I - 0x007F91 01:BF81: 00        .byte $00   ; 

- D 1 - I - 0x007F92 01:BF82: 81        .byte $80 + $01   ; 
- D 1 - I - 0x007F93 01:BF83: 10        .byte $10   ; 

- D 1 - I - 0x007F94 01:BF84: 03        .byte $03   ; 
- D 1 - I - 0x007F95 01:BF85: 00        .byte $00   ; 

- D 1 - I - 0x007F96 01:BF86: 84        .byte $80 + $04   ; 
- D 1 - I - 0x007F97 01:BF87: 80        .byte $80, $A0, $00, $01   ; 

- D 1 - I - 0x007F9B 01:BF8B: 03        .byte $03   ; 
- D 1 - I - 0x007F9C 01:BF8C: 00        .byte $00   ; 

- D 1 - I - 0x007F9D 01:BF8D: 08        .byte $08   ; 
- D 1 - I - 0x007F9E 01:BF8E: FF        .byte $FF   ; 

- D 1 - I - 0x007F9F 01:BF8F: 08        .byte $08   ; 
- D 1 - I - 0x007FA0 01:BF90: 0F        .byte $0F   ; 

- D 1 - I - 0x007FA1 01:BF91: 10        .byte $10   ; 
- D 1 - I - 0x007FA2 01:BF92: 00        .byte $00   ; 

- D 1 - I - 0x007FA3 01:BF93: FF        .byte $FF   ; end token



.export _off012_0x015564_04_title_screen
_off012_0x015564_04_title_screen:
; con_D22A_title_screen
; 00-7E = print byte xx times
; 80-FE = print a list of bytes xx times
; 7F = change ppu address
; FF = end token
- D 0 - I - 0x015564 05:9554: 00 20     .word $2000 ; 

- D 0 - I - 0x015566 05:9556: 7E        .byte $7E   ; 
- D 0 - I - 0x015567 05:9557: 00        .byte $00   ; 

- D 0 - I - 0x015568 05:9558: 0C        .byte $0C   ; 
- D 0 - I - 0x015569 05:9559: 00        .byte $00   ; 

- D 0 - I - 0x01556A 05:955A: 8C        .byte $80 + $0C   ; 
- D 0 - I - 0x01556B 05:955B: D0        .byte $D0, $C0, $D2, $EC, $ED, $EE, $EF, $D9, $CC, $CD, $CE, $CF   ; 

- D 0 - I - 0x015577 05:9567: 14        .byte $14   ; 
- D 0 - I - 0x015578 05:9568: 00        .byte $00   ; 

- D 0 - I - 0x015579 05:9569: 8D        .byte $80 + $0D   ; 
- D 0 - I - 0x01557A 05:956A: FB        .byte $FB, $AB, $D1, $FC, $FD, $FE, $DA, $DB, $DC, $DD, $DE, $DF, $BF   ; 

- D 0 - I - 0x015587 05:9577: 14        .byte $14   ; 
- D 0 - I - 0x015588 05:9578: 00        .byte $00   ; 

- D 0 - I - 0x015589 05:9579: 81        .byte $80 + $01   ; 
- D 0 - I - 0x01558A 05:957A: BB        .byte $BB   ; 

- D 0 - I - 0x01558B 05:957B: 3A        .byte $3A   ; 
- D 0 - I - 0x01558C 05:957C: 00        .byte $00   ; 

- D 0 - I - 0x01558D 05:957D: 86        .byte $80 + $06   ; 
- D 0 - I - 0x01558E 05:957E: 42        .byte $42, $43, $44, $45, $46, $47   ; 

- D 0 - I - 0x015594 05:9584: 19        .byte $19   ; 
- D 0 - I - 0x015595 05:9585: 00        .byte $00   ; 

- D 0 - I - 0x015596 05:9586: 89        .byte $80 + $09   ; 
- D 0 - I - 0x015597 05:9587: 51        .byte $51, $52, $53, $54, $55, $56, $57, $58, $59   ; 

- D 0 - I - 0x0155A0 05:9590: 16        .byte $16   ; 
- D 0 - I - 0x0155A1 05:9591: 00        .byte $00   ; 

- D 0 - I - 0x0155A2 05:9592: 8A        .byte $80 + $0A   ; 
- D 0 - I - 0x0155A3 05:9593: 60        .byte $60, $61, $62, $63, $64, $65, $66, $67, $68, $69   ; 

- D 0 - I - 0x0155AD 05:959D: 16        .byte $16   ; 
- D 0 - I - 0x0155AE 05:959E: 00        .byte $00   ; 

- D 0 - I - 0x0155AF 05:959F: 83        .byte $80 + $03   ; 
- D 0 - I - 0x0155B0 05:95A0: 70        .byte $70, $71, $72   ; 

- D 0 - I - 0x0155B3 05:95A3: 04        .byte $04   ; 
- D 0 - I - 0x0155B4 05:95A4: 00        .byte $00   ; 

- D 0 - I - 0x0155B5 05:95A5: 82        .byte $80 + $02   ; 
- D 0 - I - 0x0155B6 05:95A6: 77        .byte $77, $78   ; 

- D 0 - I - 0x0155B8 05:95A8: 17        .byte $17   ; 
- D 0 - I - 0x0155B9 05:95A9: 00        .byte $00   ; 

- D 0 - I - 0x0155BA 05:95AA: 96        .byte $80 + $16   ; 
- D 0 - I - 0x0155BB 05:95AB: 80        .byte $80, $81, $82, $00, $00, $73, $84, $85, $86, $87, $88, $89, $8A, $8B, $8C, $8D   ; 
- D 0 - I - 0x0155CB 05:95BB: 8E        .byte $8E, $8F, $74, $75, $76, $79   ; 

- D 0 - I - 0x0155D1 05:95C1: 0A        .byte $0A   ; 
- D 0 - I - 0x0155D2 05:95C2: 00        .byte $00   ; 

- D 0 - I - 0x0155D3 05:95C3: 97        .byte $80 + $17   ; 
- D 0 - I - 0x0155D4 05:95C4: 90        .byte $90, $91, $92, $00, $00, $83, $94, $95, $96, $97, $98, $99, $9A, $9B, $9C, $9D   ; 
- D 0 - I - 0x0155E4 05:95D4: 9E        .byte $9E, $9F, $5A, $5B, $5C, $5D, $5E   ; 

- D 0 - I - 0x0155EB 05:95DB: 09        .byte $09   ; 
- D 0 - I - 0x0155EC 05:95DC: 00        .byte $00   ; 

- D 0 - I - 0x0155ED 05:95DD: 98        .byte $80 + $18   ; 
- D 0 - I - 0x0155EE 05:95DE: A0        .byte $A0, $A1, $A2, $00, $00, $93, $A4, $A5, $A6, $A7, $A8, $A9, $AA, $00, $AC, $AD   ; 
- D 0 - I - 0x0155FE 05:95EE: 6C        .byte $6C, $AF, $6A, $6B, $6C, $6D, $6E, $6F   ; 

- D 0 - I - 0x015606 05:95F6: 08        .byte $08   ; 
- D 0 - I - 0x015607 05:95F7: 00        .byte $00   ; 

- D 0 - I - 0x015608 05:95F8: 98        .byte $80 + $18   ; 
- D 0 - I - 0x015609 05:95F9: B0        .byte $B0, $B1, $B2, $B3, $00, $A3, $B4, $B4, $B6, $B7, $B8, $B9, $BA, $00, $BC, $BD   ; 
- D 0 - I - 0x015619 05:9609: BE        .byte $BE, $7D, $7A, $7B, $7C, $7D, $7E, $7F   ; 

- D 0 - I - 0x015621 05:9611: 09        .byte $09   ; 
- D 0 - I - 0x015622 05:9612: 00        .byte $00   ; 

- D 0 - I - 0x015623 05:9613: 99        .byte $80 + $19   ; 
- D 0 - I - 0x015624 05:9614: C1        .byte $C1, $C2, $C3, $C4, $C5, $C6, $C7, $C8, $C9, $CA, $CB, $00, $00, $E0, $E1, $E2   ; 
- D 0 - I - 0x015634 05:9624: E3        .byte $E3, $E4, $E5, $E6, $E7, $E8, $E9, $EA, $EB   ; 

- D 0 - I - 0x01563D 05:962D: 09        .byte $09   ; 
- D 0 - I - 0x01563E 05:962E: 00        .byte $00   ; 

- D 0 - I - 0x01563F 05:962F: 86        .byte $80 + $06   ; 
- D 0 - I - 0x015640 05:9630: D3        .byte $D3, $D4, $D5, $D6, $D7, $D8   ; 

- D 0 - I - 0x015646 05:9636: 05        .byte $05   ; 
- D 0 - I - 0x015647 05:9637: 00        .byte $00   ; 

- D 0 - I - 0x015648 05:9638: 8B        .byte $80 + $0B   ; 
- D 0 - I - 0x015649 05:9639: F0        .byte $F0, $F1, $F2, $F3, $F4, $F5, $F6, $F7, $F8, $F9, $FA   ; 

- D 0 - I - 0x015654 05:9644: 4B        .byte $4B   ; 
- D 0 - I - 0x015655 05:9645: 00        .byte $00   ; 

- D 0 - I - 0x015656 05:9646: 91        .byte $80 + $11   ; 
- D 0 - I - 0x015657 05:9647: 20        .byte $20, $25, $23, $18, $00, $23, $24, $11, $22, $24, $00, $12, $25, $24, $24, $1F   ; 
- D 0 - I - 0x015667 05:9657: 1E        .byte $1E   ; 

- D 0 - I - 0x015668 05:9658: 51        .byte $51   ; 
- D 0 - I - 0x015669 05:9659: 00        .byte $00   ; 

- D 0 - I - 0x01566A 05:965A: 8D        .byte $80 + $0D   ; 
- D 0 - I - 0x01566B 05:965B: 24        .byte $24, $1D, $00, $11, $1E, $14, $00, $10, $00, $01, $09, $09, $02   ; 

- D 0 - I - 0x015678 05:9668: 12        .byte $12   ; 
- D 0 - I - 0x015679 05:9669: 00        .byte $00   ; 

- D 0 - I - 0x01567A 05:966A: 90        .byte $80 + $10   ; 
- D 0 - I - 0x01567B 05:966B: 1B        .byte $1B, $1F, $1E, $11, $1D, $19, $00, $00, $13, $1F, $2C, $2D, $1C, $24, $14, $2C   ; 

- D 0 - I - 0x01568B 05:967B: 13        .byte $13   ; 
- D 0 - I - 0x01568C 05:967C: 00        .byte $00   ; 

- D 0 - I - 0x01568D 05:967D: 8B        .byte $80 + $0B   ; 
- D 0 - I - 0x01568E 05:967E: 1C        .byte $1C, $19, $13, $15, $1E, $23, $15, $14, $00, $12, $29   ; 

- D 0 - I - 0x015699 05:9689: 0E        .byte $0E   ; 
- D 0 - I - 0x01569A 05:968A: 00        .byte $00   ; 

- D 0 - I - 0x01569B 05:968B: 98        .byte $80 + $18   ; 
- D 0 - I - 0x01569C 05:968C: 1E        .byte $1E, $19, $1E, $24, $15, $1E, $14, $1F, $00, $1F, $16, $00, $11, $1D, $15, $22   ; 
- D 0 - I - 0x0156AC 05:969C: 19        .byte $19, $13, $11, $00, $19, $1E, $13, $2C   ; 

- D 0 - I - 0x0156B4 05:96A4: 74        .byte $74   ; 
- D 0 - I - 0x0156B5 05:96A5: 00        .byte $00   ; 

- D 0 - I - 0x0156B6 05:96A6: 83        .byte $80 + $03   ; 
- D 0 - I - 0x0156B7 05:96A7: 05        .byte $05, $55, $55   ; 

- D 0 - I - 0x0156BA 05:96AA: 06        .byte $06   ; 
- D 0 - I - 0x0156BB 05:96AB: 00        .byte $00   ; 

- D 0 - I - 0x0156BC 05:96AC: 05        .byte $05   ; 
- D 0 - I - 0x0156BD 05:96AD: AA        .byte $AA   ; 

- D 0 - I - 0x0156BE 05:96AE: 05        .byte $05   ; 
- D 0 - I - 0x0156BF 05:96AF: 00        .byte $00   ; 

- D 0 - I - 0x0156C0 05:96B0: 87        .byte $80 + $07   ; 
- D 0 - I - 0x0156C1 05:96B1: 0C        .byte $0C, $0F, $0F, $07, $00, $00, $4A   ; 

- D 0 - I - 0x0156C8 05:96B8: 03        .byte $03   ; 
- D 0 - I - 0x0156C9 05:96B9: 5A        .byte $5A   ; 

- D 0 - I - 0x0156CA 05:96BA: 84        .byte $80 + $04   ; 
- D 0 - I - 0x0156CB 05:96BB: 02        .byte $02, $00, $00, $50   ; 

- D 0 - I - 0x0156CF 05:96BF: 04        .byte $04   ; 
- D 0 - I - 0x0156D0 05:96C0: 55        .byte $55   ; 

- D 0 - I - 0x0156D1 05:96C1: 82        .byte $80 + $02   ; 
- D 0 - I - 0x0156D2 05:96C2: 51        .byte $51, $10   ; 

- D 0 - I - 0x0156D4 05:96C4: 07        .byte $07   ; 
- D 0 - I - 0x0156D5 05:96C5: 00        .byte $00   ; 

- D 0 - I - 0x0156D6 05:96C6: 81        .byte $80 + $01   ; 
- D 0 - I - 0x0156D7 05:96C7: 03        .byte $03   ; 

- D 0 - I - 0x0156D8 05:96C8: FF        .byte $FF   ; end token



.export _off012_0x016D8A_0A_cutscene_crime
_off012_0x016D8A_0A_cutscene_crime:
; con_D22A_cutscene_crime
; 00-7E = print byte xx times
; 80-FE = print a list of bytes xx times
; 7F = change ppu address
; FF = end token
- D 1 - I - 0x016D8A 05:AD7A: 00 20     .word $2000 ; 

- D 1 - I - 0x016D8C 05:AD7C: 18        .byte $18   ; 
- D 1 - I - 0x016D8D 05:AD7D: 80        .byte $80   ; 

- D 1 - I - 0x016D8E 05:AD7E: 81        .byte $80 + $01   ; 
- D 1 - I - 0x016D8F 05:AD7F: 8C        .byte $8C   ; 

- D 1 - I - 0x016D90 05:AD80: 07        .byte $07   ; 
- D 1 - I - 0x016D91 05:AD81: 00        .byte $00   ; 

- D 1 - I - 0x016D92 05:AD82: 0E        .byte $0E   ; 
- D 1 - I - 0x016D93 05:AD83: 80        .byte $80   ; 

- D 1 - I - 0x016D94 05:AD84: 81        .byte $80 + $01   ; 
- D 1 - I - 0x016D95 05:AD85: 81        .byte $81   ; 

- D 1 - I - 0x016D96 05:AD86: 05        .byte $05   ; 
- D 1 - I - 0x016D97 05:AD87: 80        .byte $80   ; 

- D 1 - I - 0x016D98 05:AD88: 81        .byte $80 + $01   ; 
- D 1 - I - 0x016D99 05:AD89: 81        .byte $81   ; 

- D 1 - I - 0x016D9A 05:AD8A: 03        .byte $03   ; 
- D 1 - I - 0x016D9B 05:AD8B: 80        .byte $80   ; 

- D 1 - I - 0x016D9C 05:AD8C: 81        .byte $80 + $01   ; 
- D 1 - I - 0x016D9D 05:AD8D: 84        .byte $84   ; 

- D 1 - I - 0x016D9E 05:AD8E: 07        .byte $07   ; 
- D 1 - I - 0x016D9F 05:AD8F: 00        .byte $00   ; 

- D 1 - I - 0x016DA0 05:AD90: 0A        .byte $0A   ; 
- D 1 - I - 0x016DA1 05:AD91: 80        .byte $80   ; 

- D 1 - I - 0x016DA2 05:AD92: 86        .byte $80 + $06   ; 
- D 1 - I - 0x016DA3 05:AD93: 82        .byte $82, $83, $80, $84, $00, $86   ; 

- D 1 - I - 0x016DA9 05:AD99: 03        .byte $03   ; 
- D 1 - I - 0x016DAA 05:AD9A: 80        .byte $80   ; 

- D 1 - I - 0x016DAB 05:AD9B: 86        .byte $80 + $06   ; 
- D 1 - I - 0x016DAC 05:AD9C: AE        .byte $AE, $00, $AF, $80, $80, $AE   ; 

- D 1 - I - 0x016DB2 05:ADA2: 07        .byte $07   ; 
- D 1 - I - 0x016DB3 05:ADA3: 00        .byte $00   ; 

- D 1 - I - 0x016DB4 05:ADA4: 07        .byte $07   ; 
- D 1 - I - 0x016DB5 05:ADA5: 80        .byte $80   ; 

- D 1 - I - 0x016DB6 05:ADA6: 91        .byte $80 + $11   ; 
- D 1 - I - 0x016DB7 05:ADA7: 87        .byte $87, $88, $89, $80, $84, $8A, $8B, $00, $00, $AF, $80, $B0, $00, $00, $B1, $80   ; 
- D 1 - I - 0x016DC7 05:ADB7: 84        .byte $84   ; 

- D 1 - I - 0x016DC8 05:ADB8: 08        .byte $08   ; 
- D 1 - I - 0x016DC9 05:ADB9: 00        .byte $00   ; 

- D 1 - I - 0x016DCA 05:ADBA: 08        .byte $08   ; 
- D 1 - I - 0x016DCB 05:ADBB: 80        .byte $80   ; 

- D 1 - I - 0x016DCC 05:ADBC: 84        .byte $80 + $04   ; 
- D 1 - I - 0x016DCD 05:ADBD: 8C        .byte $8C, $8D, $8E, $8B   ; 

- D 1 - I - 0x016DD1 05:ADC1: 05        .byte $05   ; 
- D 1 - I - 0x016DD2 05:ADC2: 00        .byte $00   ; 

- D 1 - I - 0x016DD3 05:ADC3: 87        .byte $80 + $07   ; 
- D 1 - I - 0x016DD4 05:ADC4: 8A        .byte $8A, $AE, $00, $00, $8D, $8E, $AE   ; 

- D 1 - I - 0x016DDB 05:ADCB: 08        .byte $08   ; 
- D 1 - I - 0x016DDC 05:ADCC: 00        .byte $00   ; 

- D 1 - I - 0x016DDD 05:ADCD: 02        .byte $02   ; 
- D 1 - I - 0x016DDE 05:ADCE: 80        .byte $80   ; 

- D 1 - I - 0x016DDF 05:ADCF: 81        .byte $80 + $01   ; 
- D 1 - I - 0x016DE0 05:ADD0: 83        .byte $83   ; 

- D 1 - I - 0x016DE1 05:ADD1: 05        .byte $05   ; 
- D 1 - I - 0x016DE2 05:ADD2: 80        .byte $80   ; 

- D 1 - I - 0x016DE3 05:ADD3: 81        .byte $80 + $01   ; 
- D 1 - I - 0x016DE4 05:ADD4: 84        .byte $84   ; 

- D 1 - I - 0x016DE5 05:ADD5: 17        .byte $17   ; 
- D 1 - I - 0x016DE6 05:ADD6: 00        .byte $00   ; 

- D 1 - I - 0x016DE7 05:ADD7: 84        .byte $80 + $04   ; 
- D 1 - I - 0x016DE8 05:ADD8: 80        .byte $80, $8B, $8F, $90   ; 

- D 1 - I - 0x016DEC 05:ADDC: 04        .byte $04   ; 
- D 1 - I - 0x016DED 05:ADDD: 80        .byte $80   ; 

- D 1 - I - 0x016DEE 05:ADDE: 81        .byte $80 + $01   ; 
- D 1 - I - 0x016DEF 05:ADDF: 84        .byte $84   ; 

- D 1 - I - 0x016DF0 05:ADE0: 06        .byte $06   ; 
- D 1 - I - 0x016DF1 05:ADE1: 00        .byte $00   ; 

- D 1 - I - 0x016DF2 05:ADE2: 85        .byte $80 + $05   ; 
- D 1 - I - 0x016DF3 05:ADE3: 91        .byte $91, $B2, $B3, $B4, $B5   ; 

- D 1 - I - 0x016DF8 05:ADE8: 0C        .byte $0C   ; 
- D 1 - I - 0x016DF9 05:ADE9: 00        .byte $00   ; 

- D 1 - I - 0x016DFA 05:ADEA: 83        .byte $80 + $03   ; 
- D 1 - I - 0x016DFB 05:ADEB: 80        .byte $80, $8C, $86   ; 

- D 1 - I - 0x016DFE 05:ADEE: 05        .byte $05   ; 
- D 1 - I - 0x016DFF 05:ADEF: 80        .byte $80   ; 

- D 1 - I - 0x016E00 05:ADF0: 81        .byte $80 + $01   ; 
- D 1 - I - 0x016E01 05:ADF1: 92        .byte $92   ; 

- D 1 - I - 0x016E02 05:ADF2: 06        .byte $06   ; 
- D 1 - I - 0x016E03 05:ADF3: 00        .byte $00   ; 

- D 1 - I - 0x016E04 05:ADF4: 85        .byte $80 + $05   ; 
- D 1 - I - 0x016E05 05:ADF5: 93        .byte $93, $B6, $B7, $B8, $B9   ; 

- D 1 - I - 0x016E0A 05:ADFA: 0C        .byte $0C   ; 
- D 1 - I - 0x016E0B 05:ADFB: 00        .byte $00   ; 

- D 1 - I - 0x016E0C 05:ADFC: 02        .byte $02   ; 
- D 1 - I - 0x016E0D 05:ADFD: 80        .byte $80   ; 

- D 1 - I - 0x016E0E 05:ADFE: 88        .byte $80 + $08   ; 
- D 1 - I - 0x016E0F 05:ADFF: 87        .byte $87, $83, $80, $82, $94, $89, $80, $84   ; 

- D 1 - I - 0x016E17 05:AE07: 04        .byte $04   ; 
- D 1 - I - 0x016E18 05:AE08: 00        .byte $00   ; 

- D 1 - I - 0x016E19 05:AE09: 85        .byte $80 + $05   ; 
- D 1 - I - 0x016E1A 05:AE0A: 96        .byte $96, $97, $BA, $BB, $BC   ; 

- D 1 - I - 0x016E1F 05:AE0F: 0D        .byte $0D   ; 
- D 1 - I - 0x016E20 05:AE10: 00        .byte $00   ; 

- D 1 - I - 0x016E21 05:AE11: 03        .byte $03   ; 
- D 1 - I - 0x016E22 05:AE12: 80        .byte $80   ; 

- D 1 - I - 0x016E23 05:AE13: 87        .byte $80 + $07   ; 
- D 1 - I - 0x016E24 05:AE14: 8C        .byte $8C, $98, $80, $9A, $9B, $8E, $8B   ; 

- D 1 - I - 0x016E2B 05:AE1B: 04        .byte $04   ; 
- D 1 - I - 0x016E2C 05:AE1C: 00        .byte $00   ; 

- D 1 - I - 0x016E2D 05:AE1D: 86        .byte $80 + $06   ; 
- D 1 - I - 0x016E2E 05:AE1E: 9C        .byte $9C, $9D, $BD, $BE, $BF, $C0   ; 

- D 1 - I - 0x016E34 05:AE24: 03        .byte $03   ; 
- D 1 - I - 0x016E35 05:AE25: 00        .byte $00   ; 

- D 1 - I - 0x016E36 05:AE26: 82        .byte $80 + $02   ; 
- D 1 - I - 0x016E37 05:AE27: C1        .byte $C1, $C2   ; 

- D 1 - I - 0x016E39 05:AE29: 07        .byte $07   ; 
- D 1 - I - 0x016E3A 05:AE2A: 00        .byte $00   ; 

- D 1 - I - 0x016E3B 05:AE2B: 03        .byte $03   ; 
- D 1 - I - 0x016E3C 05:AE2C: 80        .byte $80   ; 

- D 1 - I - 0x016E3D 05:AE2D: 86        .byte $80 + $06   ; 
- D 1 - I - 0x016E3E 05:AE2E: 84        .byte $84, $00, $9E, $9F, $A0, $A1   ; 

- D 1 - I - 0x016E44 05:AE34: 04        .byte $04   ; 
- D 1 - I - 0x016E45 05:AE35: 00        .byte $00   ; 

- D 1 - I - 0x016E46 05:AE36: 8E        .byte $80 + $0E   ; 
- D 1 - I - 0x016E47 05:AE37: A2        .byte $A2, $A3, $00, $C3, $C4, $C5, $C6, $C7, $00, $C8, $C9, $CA, $CB, $CC   ; 

- D 1 - I - 0x016E55 05:AE45: 05        .byte $05   ; 
- D 1 - I - 0x016E56 05:AE46: 00        .byte $00   ; 

- D 1 - I - 0x016E57 05:AE47: 03        .byte $03   ; 
- D 1 - I - 0x016E58 05:AE48: 80        .byte $80   ; 

- D 1 - I - 0x016E59 05:AE49: 86        .byte $80 + $06   ; 
- D 1 - I - 0x016E5A 05:AE4A: 92        .byte $92, $00, $00, $A4, $A5, $A6   ; 

- D 1 - I - 0x016E60 05:AE50: 04        .byte $04   ; 
- D 1 - I - 0x016E61 05:AE51: 00        .byte $00   ; 

- D 1 - I - 0x016E62 05:AE52: 8E        .byte $80 + $0E   ; 
- D 1 - I - 0x016E63 05:AE53: A7        .byte $A7, $A8, $A9, $CD, $CE, $00, $CF, $D0, $00, $D1, $D2, $D3, $D4, $D5   ; 

- D 1 - I - 0x016E71 05:AE61: 05        .byte $05   ; 
- D 1 - I - 0x016E72 05:AE62: 00        .byte $00   ; 

- D 1 - I - 0x016E73 05:AE63: 04        .byte $04   ; 
- D 1 - I - 0x016E74 05:AE64: 80        .byte $80   ; 

- D 1 - I - 0x016E75 05:AE65: 81        .byte $80 + $01   ; 
- D 1 - I - 0x016E76 05:AE66: 84        .byte $84   ; 

- D 1 - I - 0x016E77 05:AE67: 09        .byte $09   ; 
- D 1 - I - 0x016E78 05:AE68: 00        .byte $00   ; 

- D 1 - I - 0x016E79 05:AE69: 8C        .byte $80 + $0C   ; 
- D 1 - I - 0x016E7A 05:AE6A: AA        .byte $AA, $AB, $D6, $D7, $CF, $D8, $00, $D9, $DA, $DB, $DC, $DD   ; 

- D 1 - I - 0x016E86 05:AE76: 06        .byte $06   ; 
- D 1 - I - 0x016E87 05:AE77: 00        .byte $00   ; 

- D 1 - I - 0x016E88 05:AE78: 85        .byte $80 + $05   ; 
- D 1 - I - 0x016E89 05:AE79: 82        .byte $82, $88, $AC, $8E, $8B   ; 

- D 1 - I - 0x016E8E 05:AE7E: 0B        .byte $0B   ; 
- D 1 - I - 0x016E8F 05:AE7F: 00        .byte $00   ; 

- D 1 - I - 0x016E90 05:AE80: 89        .byte $80 + $09   ; 
- D 1 - I - 0x016E91 05:AE81: DE        .byte $DE, $DF, $E0, $00, $00, $E1, $E2, $E3, $E4   ; 

- D 1 - I - 0x016E9A 05:AE8A: 07        .byte $07   ; 
- D 1 - I - 0x016E9B 05:AE8B: 00        .byte $00   ; 

- D 1 - I - 0x016E9C 05:AE8C: 82        .byte $80 + $02   ; 
- D 1 - I - 0x016E9D 05:AE8D: 80        .byte $80, $8C   ; 

- D 1 - I - 0x016E9F 05:AE8F: 0E        .byte $0E   ; 
- D 1 - I - 0x016EA0 05:AE90: 00        .byte $00   ; 

- D 1 - I - 0x016EA1 05:AE91: 83        .byte $80 + $03   ; 
- D 1 - I - 0x016EA2 05:AE92: E5        .byte $E5, $E6, $D8   ; 

- D 1 - I - 0x016EA5 05:AE95: 03        .byte $03   ; 
- D 1 - I - 0x016EA6 05:AE96: 00        .byte $00   ; 

- D 1 - I - 0x016EA7 05:AE97: 84        .byte $80 + $04   ; 
- D 1 - I - 0x016EA8 05:AE98: E7        .byte $E7, $E8, $E9, $EA   ; 

- D 1 - I - 0x016EAC 05:AE9C: 06        .byte $06   ; 
- D 1 - I - 0x016EAD 05:AE9D: 00        .byte $00   ; 

- D 1 - I - 0x016EAE 05:AE9E: 82        .byte $80 + $02   ; 
- D 1 - I - 0x016EAF 05:AE9F: 80        .byte $80, $AD   ; 

- D 1 - I - 0x016EB1 05:AEA1: 0E        .byte $0E   ; 
- D 1 - I - 0x016EB2 05:AEA2: 00        .byte $00   ; 

- D 1 - I - 0x016EB3 05:AEA3: 82        .byte $80 + $02   ; 
- D 1 - I - 0x016EB4 05:AEA4: EB        .byte $EB, $EC   ; 

- D 1 - I - 0x016EB6 05:AEA6: 04        .byte $04   ; 
- D 1 - I - 0x016EB7 05:AEA7: 00        .byte $00   ; 

- D 1 - I - 0x016EB8 05:AEA8: 84        .byte $80 + $04   ; 
- D 1 - I - 0x016EB9 05:AEA9: ED        .byte $ED, $EE, $EF, $F0   ; 

- D 1 - I - 0x016EBD 05:AEAD: 06        .byte $06   ; 
- D 1 - I - 0x016EBE 05:AEAE: 00        .byte $00   ; 

- D 1 - I - 0x016EBF 05:AEAF: 82        .byte $80 + $02   ; 
- D 1 - I - 0x016EC0 05:AEB0: 80        .byte $80, $92   ; 

- D 1 - I - 0x016EC2 05:AEB2: 14        .byte $14   ; 
- D 1 - I - 0x016EC3 05:AEB3: 00        .byte $00   ; 

- D 1 - I - 0x016EC4 05:AEB4: 84        .byte $80 + $04   ; 
- D 1 - I - 0x016EC5 05:AEB5: F1        .byte $F1, $F2, $F3, $F4   ; 

- D 1 - I - 0x016EC9 05:AEB9: 06        .byte $06   ; 
- D 1 - I - 0x016ECA 05:AEBA: 00        .byte $00   ; 

- D 1 - I - 0x016ECB 05:AEBB: 02        .byte $02   ; 
- D 1 - I - 0x016ECC 05:AEBC: 80        .byte $80   ; 

- D 1 - I - 0x016ECD 05:AEBD: 81        .byte $80 + $01   ; 
- D 1 - I - 0x016ECE 05:AEBE: 84        .byte $84   ; 

- D 1 - I - 0x016ECF 05:AEBF: 12        .byte $12   ; 
- D 1 - I - 0x016ED0 05:AEC0: 00        .byte $00   ; 

- D 1 - I - 0x016ED1 05:AEC1: 85        .byte $80 + $05   ; 
- D 1 - I - 0x016ED2 05:AEC2: F5        .byte $F5, $F6, $00, $F7, $F8   ; 

- D 1 - I - 0x016ED7 05:AEC7: 06        .byte $06   ; 
- D 1 - I - 0x016ED8 05:AEC8: 00        .byte $00   ; 

- D 1 - I - 0x016ED9 05:AEC9: 83        .byte $80 + $03   ; 
- D 1 - I - 0x016EDA 05:AECA: AC        .byte $AC, $8E, $8B   ; 

- D 1 - I - 0x016EDD 05:AECD: 12        .byte $12   ; 
- D 1 - I - 0x016EDE 05:AECE: 00        .byte $00   ; 

- D 1 - I - 0x016EDF 05:AECF: 85        .byte $80 + $05   ; 
- D 1 - I - 0x016EE0 05:AED0: F9        .byte $F9, $FA, $00, $FB, $FC   ; 

- D 1 - I - 0x016EE5 05:AED5: 1B        .byte $1B   ; 
- D 1 - I - 0x016EE6 05:AED6: 00        .byte $00   ; 

- D 1 - I - 0x016EE7 05:AED7: 82        .byte $80 + $02   ; 
- D 1 - I - 0x016EE8 05:AED8: FD        .byte $FD, $FE   ; 

- D 1 - I - 0x016EEA 05:AEDA: 7E        .byte $7E   ; 
- D 1 - I - 0x016EEB 05:AEDB: 00        .byte $00   ; 

- D 1 - I - 0x016EEC 05:AEDC: 7E        .byte $7E   ; 
- D 1 - I - 0x016EED 05:AEDD: 00        .byte $00   ; 

- D 1 - I - 0x016EEE 05:AEDE: 4D        .byte $4D   ; 
- D 1 - I - 0x016EEF 05:AEDF: 00        .byte $00   ; 

- D 1 - I - 0x016EF0 05:AEE0: 06        .byte $06   ; 
- D 1 - I - 0x016EF1 05:AEE1: FF        .byte $FF   ; 

- D 1 - I - 0x016EF2 05:AEE2: 9B        .byte $80 + $1B   ; 
- D 1 - I - 0x016EF3 05:AEE3: 33        .byte $33, $00, $FF, $FF, $3F, $00, $0F, $0F, $00, $00, $FF, $FF, $33, $00, $54, $88   ; 
- D 1 - I - 0x016F03 05:AEF3: A2        .byte $A2, $00, $3F, $03, $00, $00, $01, $8A, $22, $00, $FF   ; 

- D 1 - I - 0x016F0E 05:AEFE: 04        .byte $04   ; 
- D 1 - I - 0x016F0F 05:AEFF: 00        .byte $00   ; 

- D 1 - I - 0x016F10 05:AF00: 82        .byte $80 + $02   ; 
- D 1 - I - 0x016F11 05:AF01: AA        .byte $AA, $22   ; 

- D 1 - I - 0x016F13 05:AF03: 19        .byte $19   ; 
- D 1 - I - 0x016F14 05:AF04: 00        .byte $00   ; 

- D 1 - I - 0x016F15 05:AF05: FF        .byte $FF   ; end token



.export _off012_0x01BD19_0C_pause
_off012_0x01BD19_0C_pause:
; con_D22A_pause
; 00-7E = print byte xx times
; 80-FE = print a list of bytes xx times
; 7F = change ppu address
; FF = end token
- D 1 - I - 0x01BD19 06:BD09: 00 20     .word $2000 ; 

- D 1 - I - 0x01BD1B 06:BD0B: FE        .byte $80 + $7E   ; 
- D 1 - I - 0x01BD1C 06:BD0C: 80        .byte $80, $81, $82, $83, $80, $81, $82, $83, $80, $81, $82, $83, $80, $81, $80, $81   ; 
- D 1 - I - 0x01BD2C 06:BD1C: 87        .byte $87, $88, $80, $81, $80, $81, $82, $83, $80, $81, $82, $83, $80, $81, $80, $81   ; 
- D 1 - I - 0x01BD3C 06:BD2C: 81        .byte $81, $84, $85, $86, $81, $84, $85, $86, $81, $84, $85, $86, $81, $84, $81, $84   ; 
- D 1 - I - 0x01BD4C 06:BD3C: 93        .byte $93, $94, $81, $84, $81, $84, $85, $86, $81, $84, $85, $86, $81, $84, $81, $84   ; 
- D 1 - I - 0x01BD5C 06:BD4C: 82        .byte $82, $83, $87, $88, $89, $8A, $8B, $8C, $8C, $8D, $8E, $8F, $87, $90, $91, $92   ; 
- D 1 - I - 0x01BD6C 06:BD5C: 91        .byte $91, $8A, $CE, $81, $82, $83, $87, $88, $82, $83, $87, $88, $82, $83, $82, $83   ; 
- D 1 - I - 0x01BD7C 06:BD6C: 85        .byte $85, $86, $93, $94, $95, $96, $97, $98, $98, $99, $9A, $9B, $93, $9C, $9D, $9E   ; 
- D 1 - I - 0x01BD8C 06:BD7C: 9D        .byte $9D, $96, $A2, $84, $85, $86, $93, $94, $85, $86, $93, $94, $85, $86, $86   ; 

- D 1 - I - 0x01BD9B 06:BD8B: 85        .byte $80 + $05   ; 
- D 1 - I - 0x01BD9C 06:BD8C: 86        .byte $86, $87, $88, $87, $9F   ; 

- D 1 - I - 0x01BDA1 06:BD91: 04        .byte $04   ; 
- D 1 - I - 0x01BDA2 06:BD92: A0        .byte $A0   ; 

- D 1 - I - 0x01BDA3 06:BD93: 81        .byte $80 + $01   ; 
- D 1 - I - 0x01BDA4 06:BD94: A1        .byte $A1   ; 

- D 1 - I - 0x01BDA5 06:BD95: 05        .byte $05   ; 
- D 1 - I - 0x01BDA6 06:BD96: A0        .byte $A0   ; 

- D 1 - I - 0x01BDA7 06:BD97: 81        .byte $80 + $01   ; 
- D 1 - I - 0x01BDA8 06:BD98: A1        .byte $A1   ; 

- D 1 - I - 0x01BDA9 06:BD99: 0E        .byte $0E   ; 
- D 1 - I - 0x01BDAA 06:BD9A: A0        .byte $A0   ; 

- D 1 - I - 0x01BDAB 06:BD9B: 92        .byte $80 + $12   ; 
- D 1 - I - 0x01BDAC 06:BD9C: CF        .byte $CF, $87, $88, $93, $94, $93, $A2, $A3, $A4, $A5, $A6, $A2, $12, $25, $22, $1E   ; 
- D 1 - I - 0x01BDBC 06:BDAC: 23        .byte $23, $A2   ; 

- D 1 - I - 0x01BDBE 06:BDAE: 0E        .byte $0E   ; 
- D 1 - I - 0x01BDBF 06:BDAF: 00        .byte $00   ; 

- D 1 - I - 0x01BDC0 06:BDB0: 8C        .byte $80 + $0C   ; 
- D 1 - I - 0x01BDC1 06:BDB1: A2        .byte $A2, $93, $94, $87, $88, $87, $A2, $A8, $A9, $AA, $AB, $A2   ; 

- D 1 - I - 0x01BDCD 06:BDBD: 05        .byte $05   ; 
- D 1 - I - 0x01BDCE 06:BDBE: 00        .byte $00   ; 

- D 1 - I - 0x01BDCF 06:BDBF: 81        .byte $80 + $01   ; 
- D 1 - I - 0x01BDD0 06:BDC0: A2        .byte $A2   ; 

- D 1 - I - 0x01BDD1 06:BDC1: 0E        .byte $0E   ; 
- D 1 - I - 0x01BDD2 06:BDC2: 00        .byte $00   ; 

- D 1 - I - 0x01BDD3 06:BDC3: 8E        .byte $80 + $0E   ; 
- D 1 - I - 0x01BDD4 06:BDC4: A2        .byte $A2, $87, $88, $93, $94, $93, $A2, $AC, $AD, $AE, $AF, $A2, $00, $3A   ; 

- D 1 - I - 0x01BDE2 06:BDD2: 03        .byte $03   ; 
- D 1 - I - 0x01BDE3 06:BDD3: 00        .byte $00   ; 

- D 1 - I - 0x01BDE4 06:BDD4: 81        .byte $80 + $01   ; 
- D 1 - I - 0x01BDE5 06:BDD5: A2        .byte $A2   ; 

- D 1 - I - 0x01BDE6 06:BDD6: 0E        .byte $0E   ; 
- D 1 - I - 0x01BDE7 06:BDD7: 00        .byte $00   ; 

- D 1 - I - 0x01BDE8 06:BDD8: 8C        .byte $80 + $0C   ; 
- D 1 - I - 0x01BDE9 06:BDD9: A2        .byte $A2, $93, $94, $87, $88, $87, $A2, $B0, $B1, $B2, $B3, $A2   ; 

- D 1 - I - 0x01BDF5 06:BDE5: 05        .byte $05   ; 
- D 1 - I - 0x01BDF6 06:BDE6: 00        .byte $00   ; 

- D 1 - I - 0x01BDF7 06:BDE7: 81        .byte $80 + $01   ; 
- D 1 - I - 0x01BDF8 06:BDE8: A2        .byte $A2   ; 

- D 1 - I - 0x01BDF9 06:BDE9: 0E        .byte $0E   ; 
- D 1 - I - 0x01BDFA 06:BDEA: 00        .byte $00   ; 

- D 1 - I - 0x01BDFB 06:BDEB: 87        .byte $80 + $07   ; 
- D 1 - I - 0x01BDFC 06:BDEC: A2        .byte $A2, $87, $88, $93, $94, $93, $B4   ; 

- D 1 - I - 0x01BE03 06:BDF3: 04        .byte $04   ; 
- D 1 - I - 0x01BE04 06:BDF4: A0        .byte $A0   ; 

- D 1 - I - 0x01BE05 06:BDF5: 81        .byte $80 + $01   ; 
- D 1 - I - 0x01BE06 06:BDF6: B5        .byte $B5   ; 

- D 1 - I - 0x01BE07 06:BDF7: 05        .byte $05   ; 
- D 1 - I - 0x01BE08 06:BDF8: A0        .byte $A0   ; 

- D 1 - I - 0x01BE09 06:BDF9: 81        .byte $80 + $01   ; 
- D 1 - I - 0x01BE0A 06:BDFA: B5        .byte $B5   ; 

- D 1 - I - 0x01BE0B 06:BDFB: 0E        .byte $0E   ; 
- D 1 - I - 0x01BE0C 06:BDFC: A0        .byte $A0   ; 

- D 1 - I - 0x01BE0D 06:BDFD: 92        .byte $80 + $12   ; 
- D 1 - I - 0x01BE0E 06:BDFE: D0        .byte $D0, $93, $94, $87, $88, $B6, $A2, $B7, $B8, $B9, $BA, $A2, $23, $1D, $19, $24   ; 
- D 1 - I - 0x01BE1E 06:BE0E: 18        .byte $18, $A2   ; 

- D 1 - I - 0x01BE20 06:BE10: 0E        .byte $0E   ; 
- D 1 - I - 0x01BE21 06:BE11: 00        .byte $00   ; 

- D 1 - I - 0x01BE22 06:BE12: 8C        .byte $80 + $0C   ; 
- D 1 - I - 0x01BE23 06:BE13: A2        .byte $A2, $87, $88, $93, $94, $BB, $A2, $BC, $BD, $BE, $BF, $A2   ; 

- D 1 - I - 0x01BE2F 06:BE1F: 05        .byte $05   ; 
- D 1 - I - 0x01BE30 06:BE20: 00        .byte $00   ; 

- D 1 - I - 0x01BE31 06:BE21: 81        .byte $80 + $01   ; 
- D 1 - I - 0x01BE32 06:BE22: A2        .byte $A2   ; 

- D 1 - I - 0x01BE33 06:BE23: 0E        .byte $0E   ; 
- D 1 - I - 0x01BE34 06:BE24: 00        .byte $00   ; 

- D 1 - I - 0x01BE35 06:BE25: 8E        .byte $80 + $0E   ; 
- D 1 - I - 0x01BE36 06:BE26: A2        .byte $A2, $93, $94, $B6, $C0, $B6, $A2, $C1, $C2, $C3, $C4, $A2, $00, $3A   ; 

- D 1 - I - 0x01BE44 06:BE34: 03        .byte $03   ; 
- D 1 - I - 0x01BE45 06:BE35: 00        .byte $00   ; 

- D 1 - I - 0x01BE46 06:BE36: 81        .byte $80 + $01   ; 
- D 1 - I - 0x01BE47 06:BE37: A2        .byte $A2   ; 

- D 1 - I - 0x01BE48 06:BE38: 0E        .byte $0E   ; 
- D 1 - I - 0x01BE49 06:BE39: 00        .byte $00   ; 

- D 1 - I - 0x01BE4A 06:BE3A: 8C        .byte $80 + $0C   ; 
- D 1 - I - 0x01BE4B 06:BE3B: A2        .byte $A2, $B6, $C0, $BB, $C5, $BB, $A2, $C6, $C7, $C8, $C9, $A2   ; 

- D 1 - I - 0x01BE57 06:BE47: 05        .byte $05   ; 
- D 1 - I - 0x01BE58 06:BE48: 00        .byte $00   ; 

- D 1 - I - 0x01BE59 06:BE49: 81        .byte $80 + $01   ; 
- D 1 - I - 0x01BE5A 06:BE4A: A2        .byte $A2   ; 

- D 1 - I - 0x01BE5B 06:BE4B: 0E        .byte $0E   ; 
- D 1 - I - 0x01BE5C 06:BE4C: 00        .byte $00   ; 

- D 1 - I - 0x01BE5D 06:BE4D: 87        .byte $80 + $07   ; 
- D 1 - I - 0x01BE5E 06:BE4E: A2        .byte $A2, $BB, $C5, $B6, $C0, $B6, $B4   ; 

- D 1 - I - 0x01BE65 06:BE55: 04        .byte $04   ; 
- D 1 - I - 0x01BE66 06:BE56: A0        .byte $A0   ; 

- D 1 - I - 0x01BE67 06:BE57: 81        .byte $80 + $01   ; 
- D 1 - I - 0x01BE68 06:BE58: B5        .byte $B5   ; 

- D 1 - I - 0x01BE69 06:BE59: 05        .byte $05   ; 
- D 1 - I - 0x01BE6A 06:BE5A: A0        .byte $A0   ; 

- D 1 - I - 0x01BE6B 06:BE5B: 81        .byte $80 + $01   ; 
- D 1 - I - 0x01BE6C 06:BE5C: B5        .byte $B5   ; 

- D 1 - I - 0x01BE6D 06:BE5D: 0E        .byte $0E   ; 
- D 1 - I - 0x01BE6E 06:BE5E: A0        .byte $A0   ; 

- D 1 - I - 0x01BE6F 06:BE5F: 92        .byte $80 + $12   ; 
- D 1 - I - 0x01BE70 06:BE60: D0        .byte $D0, $B6, $C0, $BB, $C5, $BB, $A2, $CA, $CB, $CC, $CD, $A2, $19, $22, $1F, $1E   ; 
- D 1 - I - 0x01BE80 06:BE70: 00        .byte $00, $A2   ; 

- D 1 - I - 0x01BE82 06:BE72: 0E        .byte $0E   ; 
- D 1 - I - 0x01BE83 06:BE73: 00        .byte $00   ; 

- D 1 - I - 0x01BE84 06:BE74: 8C        .byte $80 + $0C   ; 
- D 1 - I - 0x01BE85 06:BE75: A2        .byte $A2, $BB, $C5, $B6, $C0, $B6, $A2, $D1, $D2, $D3, $D4, $A2   ; 

- D 1 - I - 0x01BE91 06:BE81: 05        .byte $05   ; 
- D 1 - I - 0x01BE92 06:BE82: 00        .byte $00   ; 

- D 1 - I - 0x01BE93 06:BE83: 81        .byte $80 + $01   ; 
- D 1 - I - 0x01BE94 06:BE84: A2        .byte $A2   ; 

- D 1 - I - 0x01BE95 06:BE85: 0E        .byte $0E   ; 
- D 1 - I - 0x01BE96 06:BE86: 00        .byte $00   ; 

- D 1 - I - 0x01BE97 06:BE87: 8E        .byte $80 + $0E   ; 
- D 1 - I - 0x01BE98 06:BE88: A2        .byte $A2, $B6, $C0, $BB, $C5, $BB, $A2, $D5, $D6, $D7, $D8, $A2, $00, $3A   ; 

- D 1 - I - 0x01BEA6 06:BE96: 03        .byte $03   ; 
- D 1 - I - 0x01BEA7 06:BE97: 00        .byte $00   ; 

- D 1 - I - 0x01BEA8 06:BE98: 81        .byte $80 + $01   ; 
- D 1 - I - 0x01BEA9 06:BE99: A2        .byte $A2   ; 

- D 1 - I - 0x01BEAA 06:BE9A: 0E        .byte $0E   ; 
- D 1 - I - 0x01BEAB 06:BE9B: 00        .byte $00   ; 

- D 1 - I - 0x01BEAC 06:BE9C: 8C        .byte $80 + $0C   ; 
- D 1 - I - 0x01BEAD 06:BE9D: A2        .byte $A2, $BB, $C5, $B6, $C0, $B6, $A2, $D9, $DA, $DB, $DC, $A2   ; 

- D 1 - I - 0x01BEB9 06:BEA9: 05        .byte $05   ; 
- D 1 - I - 0x01BEBA 06:BEAA: 00        .byte $00   ; 

- D 1 - I - 0x01BEBB 06:BEAB: 81        .byte $80 + $01   ; 
- D 1 - I - 0x01BEBC 06:BEAC: A2        .byte $A2   ; 

- D 1 - I - 0x01BEBD 06:BEAD: 0E        .byte $0E   ; 
- D 1 - I - 0x01BEBE 06:BEAE: 00        .byte $00   ; 

- D 1 - I - 0x01BEBF 06:BEAF: 87        .byte $80 + $07   ; 
- D 1 - I - 0x01BEC0 06:BEB0: A2        .byte $A2, $B6, $C0, $BB, $C5, $BB, $B4   ; 

- D 1 - I - 0x01BEC7 06:BEB7: 04        .byte $04   ; 
- D 1 - I - 0x01BEC8 06:BEB8: A0        .byte $A0   ; 

- D 1 - I - 0x01BEC9 06:BEB9: 81        .byte $80 + $01   ; 
- D 1 - I - 0x01BECA 06:BEBA: B5        .byte $B5   ; 

- D 1 - I - 0x01BECB 06:BEBB: 05        .byte $05   ; 
- D 1 - I - 0x01BECC 06:BEBC: A0        .byte $A0   ; 

- D 1 - I - 0x01BECD 06:BEBD: 81        .byte $80 + $01   ; 
- D 1 - I - 0x01BECE 06:BEBE: B5        .byte $B5   ; 

- D 1 - I - 0x01BECF 06:BEBF: 0E        .byte $0E   ; 
- D 1 - I - 0x01BED0 06:BEC0: A0        .byte $A0   ; 

- D 1 - I - 0x01BED1 06:BEC1: 92        .byte $80 + $12   ; 
- D 1 - I - 0x01BED2 06:BEC2: D0        .byte $D0, $BB, $C5, $B6, $C0, $B6, $A2, $DD, $DE, $DF, $E0, $A2, $12, $15, $11, $1E   ; 
- D 1 - I - 0x01BEE2 06:BED2: 23        .byte $23, $A2   ; 

- D 1 - I - 0x01BEE4 06:BED4: 0E        .byte $0E   ; 
- D 1 - I - 0x01BEE5 06:BED5: 00        .byte $00   ; 

- D 1 - I - 0x01BEE6 06:BED6: 8C        .byte $80 + $0C   ; 
- D 1 - I - 0x01BEE7 06:BED7: A2        .byte $A2, $B6, $C0, $BB, $C5, $BB, $A2, $E1, $E2, $E3, $E4, $A2   ; 

- D 1 - I - 0x01BEF3 06:BEE3: 05        .byte $05   ; 
- D 1 - I - 0x01BEF4 06:BEE4: 00        .byte $00   ; 

- D 1 - I - 0x01BEF5 06:BEE5: 81        .byte $80 + $01   ; 
- D 1 - I - 0x01BEF6 06:BEE6: A2        .byte $A2   ; 

- D 1 - I - 0x01BEF7 06:BEE7: 0E        .byte $0E   ; 
- D 1 - I - 0x01BEF8 06:BEE8: 00        .byte $00   ; 

- D 1 - I - 0x01BEF9 06:BEE9: 8E        .byte $80 + $0E   ; 
- D 1 - I - 0x01BEFA 06:BEEA: A2        .byte $A2, $BB, $C5, $B6, $C0, $B6, $A2, $E5, $E6, $E7, $E8, $A2, $00, $3A   ; 

- D 1 - I - 0x01BF08 06:BEF8: 03        .byte $03   ; 
- D 1 - I - 0x01BF09 06:BEF9: 00        .byte $00   ; 

- D 1 - I - 0x01BF0A 06:BEFA: 81        .byte $80 + $01   ; 
- D 1 - I - 0x01BF0B 06:BEFB: A2        .byte $A2   ; 

- D 1 - I - 0x01BF0C 06:BEFC: 0E        .byte $0E   ; 
- D 1 - I - 0x01BF0D 06:BEFD: 00        .byte $00   ; 

- D 1 - I - 0x01BF0E 06:BEFE: 8C        .byte $80 + $0C   ; 
- D 1 - I - 0x01BF0F 06:BEFF: A2        .byte $A2, $B6, $C0, $BB, $C5, $BB, $A2, $00, $E9, $EA, $EB, $A2   ; 

- D 1 - I - 0x01BF1B 06:BF0B: 05        .byte $05   ; 
- D 1 - I - 0x01BF1C 06:BF0C: 00        .byte $00   ; 

- D 1 - I - 0x01BF1D 06:BF0D: 81        .byte $80 + $01   ; 
- D 1 - I - 0x01BF1E 06:BF0E: A2        .byte $A2   ; 

- D 1 - I - 0x01BF1F 06:BF0F: 0E        .byte $0E   ; 
- D 1 - I - 0x01BF20 06:BF10: 00        .byte $00   ; 

- D 1 - I - 0x01BF21 06:BF11: 87        .byte $80 + $07   ; 
- D 1 - I - 0x01BF22 06:BF12: A2        .byte $A2, $BB, $C5, $B6, $C0, $B6, $B4   ; 

- D 1 - I - 0x01BF29 06:BF19: 04        .byte $04   ; 
- D 1 - I - 0x01BF2A 06:BF1A: A0        .byte $A0   ; 

- D 1 - I - 0x01BF2B 06:BF1B: 81        .byte $80 + $01   ; 
- D 1 - I - 0x01BF2C 06:BF1C: EC        .byte $EC   ; 

- D 1 - I - 0x01BF2D 06:BF1D: 05        .byte $05   ; 
- D 1 - I - 0x01BF2E 06:BF1E: A0        .byte $A0   ; 

- D 1 - I - 0x01BF2F 06:BF1F: 81        .byte $80 + $01   ; 
- D 1 - I - 0x01BF30 06:BF20: EC        .byte $EC   ; 

- D 1 - I - 0x01BF31 06:BF21: 0E        .byte $0E   ; 
- D 1 - I - 0x01BF32 06:BF22: A0        .byte $A0   ; 

- D 1 - I - 0x01BF33 06:BF23: 87        .byte $80 + $07   ; 
- D 1 - I - 0x01BF34 06:BF24: D0        .byte $D0, $B6, $C0, $BB, $C5, $BB, $A2   ; 

- D 1 - I - 0x01BF3B 06:BF2B: 19        .byte $19   ; 
- D 1 - I - 0x01BF3C 06:BF2C: 00        .byte $00   ; 

- D 1 - I - 0x01BF3D 06:BF2D: 87        .byte $80 + $07   ; 
- D 1 - I - 0x01BF3E 06:BF2E: A2        .byte $A2, $BB, $C5, $B6, $C0, $B6, $ED   ; 

- D 1 - I - 0x01BF45 06:BF35: 19        .byte $19   ; 
- D 1 - I - 0x01BF46 06:BF36: A0        .byte $A0   ; 

- D 1 - I - 0x01BF47 06:BF37: E3        .byte $80 + $63   ; 
- D 1 - I - 0x01BF48 06:BF38: FE        .byte $FE, $B6, $C0, $BB, $C5, $BB, $C5, $BB, $C5, $BB, $C5, $BB, $C5, $BB, $C5, $BB   ; 
- D 1 - I - 0x01BF58 06:BF48: C5        .byte $C5, $BB, $C5, $BB, $C5, $BB, $C5, $BB, $C5, $BB, $C5, $BB, $C5, $BB, $C5, $BB   ; 
- D 1 - I - 0x01BF68 06:BF58: C5        .byte $C5, $BB, $C5, $B6, $C0, $B6, $C0, $B6, $C0, $B6, $C0, $B6, $C0, $B6, $C0, $B6   ; 
- D 1 - I - 0x01BF78 06:BF68: C0        .byte $C0, $B6, $C0, $B6, $C0, $B6, $C0, $B6, $C0, $B6, $C0, $B6, $C0, $B6, $C0, $B6   ; 
- D 1 - I - 0x01BF88 06:BF78: C0        .byte $C0, $B6, $C0, $BB, $C5, $BB, $C5, $BB, $C5, $BB, $C5, $BB, $C5, $BB, $C5, $BB   ; 
- D 1 - I - 0x01BF98 06:BF88: C5        .byte $C5, $BB, $C5, $BB, $C5, $BB, $C5, $BB, $C5, $BB, $C5, $BB, $C5, $BB, $C5, $BB   ; 
- D 1 - I - 0x01BFA8 06:BF98: C5        .byte $C5, $BB, $C5   ; 

- D 1 - I - 0x01BFAB 06:BF9B: 09        .byte $09   ; 
- D 1 - I - 0x01BFAC 06:BF9C: FF        .byte $FF   ; 

- D 1 - I - 0x01BFAD 06:BF9D: 83        .byte $80 + $03   ; 
- D 1 - I - 0x01BFAE 06:BF9E: 00        .byte $00, $FF, $FB   ; 

- D 1 - I - 0x01BFB1 06:BFA1: 03        .byte $03   ; 
- D 1 - I - 0x01BFB2 06:BFA2: FA        .byte $FA   ; 

- D 1 - I - 0x01BFB3 06:BFA3: 85        .byte $80 + $05   ; 
- D 1 - I - 0x01BFB4 06:BFA4: FE        .byte $FE, $FF, $00, $FF, $BF   ; 

- D 1 - I - 0x01BFB9 06:BFA9: 03        .byte $03   ; 
- D 1 - I - 0x01BFBA 06:BFAA: AF        .byte $AF   ; 

- D 1 - I - 0x01BFBB 06:BFAB: 85        .byte $80 + $05   ; 
- D 1 - I - 0x01BFBC 06:BFAC: EF        .byte $EF, $FF, $50, $FF, $BF   ; 

- D 1 - I - 0x01BFC1 06:BFB1: 03        .byte $03   ; 
- D 1 - I - 0x01BFC2 06:BFB2: AF        .byte $AF   ; 

- D 1 - I - 0x01BFC3 06:BFB3: 83        .byte $80 + $03   ; 
- D 1 - I - 0x01BFC4 06:BFB4: EF        .byte $EF, $FF, $44   ; 

- D 1 - I - 0x01BFC7 06:BFB7: 07        .byte $07   ; 
- D 1 - I - 0x01BFC8 06:BFB8: FF        .byte $FF   ; 

- D 1 - I - 0x01BFC9 06:BFB9: 83        .byte $80 + $03   ; 
- D 1 - I - 0x01BFCA 06:BFBA: 05        .byte $05, $FF, $FB   ; 

- D 1 - I - 0x01BFCD 06:BFBD: 03        .byte $03   ; 
- D 1 - I - 0x01BFCE 06:BFBE: FA        .byte $FA   ; 

- D 1 - I - 0x01BFCF 06:BFBF: 82        .byte $80 + $02   ; 
- D 1 - I - 0x01BFD0 06:BFC0: FE        .byte $FE, $FF   ; 

- D 1 - I - 0x01BFD2 06:BFC2: 06        .byte $06   ; 
- D 1 - I - 0x01BFD3 06:BFC3: F5        .byte $F5   ; 

- D 1 - I - 0x01BFD4 06:BFC4: 81        .byte $80 + $01   ; 
- D 1 - I - 0x01BFD5 06:BFC5: FD        .byte $FD   ; 

- D 1 - I - 0x01BFD6 06:BFC6: 08        .byte $08   ; 
- D 1 - I - 0x01BFD7 06:BFC7: FF        .byte $FF   ; 

- D 1 - I - 0x01BFD8 06:BFC8: FF        .byte $FF   ; end token



.export _off012_0x0152E3_0E_player_select
_off012_0x0152E3_0E_player_select:
; con_D22A_player_select
; 00-7E = print byte xx times
; 80-FE = print a list of bytes xx times
; 7F = change ppu address
; FF = end token
- D 0 - I - 0x0152E3 05:92D3: 00 20     .word $2000 ; 

- D 0 - I - 0x0152E5 05:92D5: 04        .byte $04   ; 
- D 0 - I - 0x0152E6 05:92D6: 80        .byte $80   ; 

- D 0 - I - 0x0152E7 05:92D7: 81        .byte $80 + $01   ; 
- D 0 - I - 0x0152E8 05:92D8: 81        .byte $81   ; 

- D 0 - I - 0x0152E9 05:92D9: 0F        .byte $0F   ; 
- D 0 - I - 0x0152EA 05:92DA: 82        .byte $82   ; 

- D 0 - I - 0x0152EB 05:92DB: 82        .byte $80 + $02   ; 
- D 0 - I - 0x0152EC 05:92DC: 8F        .byte $8F, $90   ; 

- D 0 - I - 0x0152EE 05:92DE: 0D        .byte $0D   ; 
- D 0 - I - 0x0152EF 05:92DF: 80        .byte $80   ; 

- D 0 - I - 0x0152F0 05:92E0: 81        .byte $80 + $01   ; 
- D 0 - I - 0x0152F1 05:92E1: 81        .byte $81   ; 

- D 0 - I - 0x0152F2 05:92E2: 0F        .byte $0F   ; 
- D 0 - I - 0x0152F3 05:92E3: 82        .byte $82   ; 

- D 0 - I - 0x0152F4 05:92E4: 82        .byte $80 + $02   ; 
- D 0 - I - 0x0152F5 05:92E5: 8F        .byte $8F, $90   ; 

- D 0 - I - 0x0152F7 05:92E7: 0D        .byte $0D   ; 
- D 0 - I - 0x0152F8 05:92E8: 80        .byte $80   ; 

- D 0 - I - 0x0152F9 05:92E9: 81        .byte $80 + $01   ; 
- D 0 - I - 0x0152FA 05:92EA: 81        .byte $81   ; 

- D 0 - I - 0x0152FB 05:92EB: 0F        .byte $0F   ; 
- D 0 - I - 0x0152FC 05:92EC: 82        .byte $82   ; 

- D 0 - I - 0x0152FD 05:92ED: 82        .byte $80 + $02   ; 
- D 0 - I - 0x0152FE 05:92EE: 8F        .byte $8F, $90   ; 

- D 0 - I - 0x015300 05:92F0: 0D        .byte $0D   ; 
- D 0 - I - 0x015301 05:92F1: 80        .byte $80   ; 

- D 0 - I - 0x015302 05:92F2: 81        .byte $80 + $01   ; 
- D 0 - I - 0x015303 05:92F3: 81        .byte $81   ; 

- D 0 - I - 0x015304 05:92F4: 0F        .byte $0F   ; 
- D 0 - I - 0x015305 05:92F5: 82        .byte $82   ; 

- D 0 - I - 0x015306 05:92F6: 82        .byte $80 + $02   ; 
- D 0 - I - 0x015307 05:92F7: 8F        .byte $8F, $90   ; 

- D 0 - I - 0x015309 05:92F9: 05        .byte $05   ; 
- D 0 - I - 0x01530A 05:92FA: 80        .byte $80   ; 

- D 0 - I - 0x01530B 05:92FB: 81        .byte $80 + $01   ; 
- D 0 - I - 0x01530C 05:92FC: 91        .byte $91   ; 

- D 0 - I - 0x01530D 05:92FD: 04        .byte $04   ; 
- D 0 - I - 0x01530E 05:92FE: 92        .byte $92   ; 

- D 0 - I - 0x01530F 05:92FF: 84        .byte $80 + $04   ; 
- D 0 - I - 0x015310 05:9300: B7        .byte $B7, $80, $80, $81   ; 

- D 0 - I - 0x015314 05:9304: 05        .byte $05   ; 
- D 0 - I - 0x015315 05:9305: 82        .byte $82   ; 

- D 0 - I - 0x015316 05:9306: 8D        .byte $80 + $0D   ; 
- D 0 - I - 0x015317 05:9307: 83        .byte $83, $84, $85, $86, $87, $83, $82, $88, $87, $84, $87, $B8, $B9   ; 

- D 0 - I - 0x015324 05:9314: 05        .byte $05   ; 
- D 0 - I - 0x015325 05:9315: 80        .byte $80   ; 

- D 0 - I - 0x015326 05:9316: 88        .byte $80 + $08   ; 
- D 0 - I - 0x015327 05:9317: 93        .byte $93, $27, $11, $19, $24, $BA, $80, $80   ; 

- D 0 - I - 0x01532F 05:931F: 06        .byte $06   ; 
- D 0 - I - 0x015330 05:9320: 82        .byte $82   ; 

- D 0 - I - 0x015331 05:9321: 88        .byte $80 + $08   ; 
- D 0 - I - 0x015332 05:9322: 89        .byte $89, $8A, $8B, $8C, $8A, $8D, $82, $8E   ; 

- D 0 - I - 0x01533A 05:932A: 03        .byte $03   ; 
- D 0 - I - 0x01533B 05:932B: 8A        .byte $8A   ; 

- D 0 - I - 0x01533C 05:932C: 82        .byte $80 + $02   ; 
- D 0 - I - 0x01533D 05:932D: BB        .byte $BB, $BC   ; 

- D 0 - I - 0x01533F 05:932F: 05        .byte $05   ; 
- D 0 - I - 0x015340 05:9330: 80        .byte $80   ; 

- D 0 - I - 0x015341 05:9331: 81        .byte $80 + $01   ; 
- D 0 - I - 0x015342 05:9332: BD        .byte $BD   ; 

- D 0 - I - 0x015343 05:9333: 04        .byte $04   ; 
- D 0 - I - 0x015344 05:9334: BE        .byte $BE   ; 

- D 0 - I - 0x015345 05:9335: 83        .byte $80 + $03   ; 
- D 0 - I - 0x015346 05:9336: BF        .byte $BF, $80, $80   ; 

- D 0 - I - 0x015349 05:9339: 0E        .byte $0E   ; 
- D 0 - I - 0x01534A 05:933A: 82        .byte $82   ; 

- D 0 - I - 0x01534B 05:933B: 82        .byte $80 + $02   ; 
- D 0 - I - 0x01534C 05:933C: 8F        .byte $8F, $90   ; 

- D 0 - I - 0x01534E 05:933E: 10        .byte $10   ; 
- D 0 - I - 0x01534F 05:933F: 80        .byte $80   ; 

- D 0 - I - 0x015350 05:9340: 03        .byte $03   ; 
- D 0 - I - 0x015351 05:9341: 82        .byte $82   ; 

- D 0 - I - 0x015352 05:9342: 81        .byte $80 + $01   ; 
- D 0 - I - 0x015353 05:9343: 91        .byte $91   ; 

- D 0 - I - 0x015354 05:9344: 0C        .byte $0C   ; 
- D 0 - I - 0x015355 05:9345: 92        .byte $92   ; 

- D 0 - I - 0x015356 05:9346: 82        .byte $80 + $02   ; 
- D 0 - I - 0x015357 05:9347: B7        .byte $B7, $91   ; 

- D 0 - I - 0x015359 05:9349: 0C        .byte $0C   ; 
- D 0 - I - 0x01535A 05:934A: 92        .byte $92   ; 

- D 0 - I - 0x01535B 05:934B: 82        .byte $80 + $02   ; 
- D 0 - I - 0x01535C 05:934C: B7        .byte $B7, $80   ; 

- D 0 - I - 0x01535E 05:934E: 03        .byte $03   ; 
- D 0 - I - 0x01535F 05:934F: 82        .byte $82   ; 

- D 0 - I - 0x015360 05:9350: 89        .byte $80 + $09   ; 
- D 0 - I - 0x015361 05:9351: 93        .byte $93, $00, $95, $96, $97, $98, $98, $99, $9A   ; 

- D 0 - I - 0x01536A 05:935A: 04        .byte $04   ; 
- D 0 - I - 0x01536B 05:935B: 98        .byte $98   ; 

- D 0 - I - 0x01536C 05:935C: 89        .byte $80 + $09   ; 
- D 0 - I - 0x01536D 05:935D: BA        .byte $BA, $93, $00, $C0, $C1, $C2, $98, $99, $9A   ; 

- D 0 - I - 0x015376 05:9366: 05        .byte $05   ; 
- D 0 - I - 0x015377 05:9367: 98        .byte $98   ; 

- D 0 - I - 0x015378 05:9368: 82        .byte $80 + $02   ; 
- D 0 - I - 0x015379 05:9369: BA        .byte $BA, $80   ; 

- D 0 - I - 0x01537B 05:936B: 03        .byte $03   ; 
- D 0 - I - 0x01537C 05:936C: 82        .byte $82   ; 

- D 0 - I - 0x01537D 05:936D: 89        .byte $80 + $09   ; 
- D 0 - I - 0x01537E 05:936E: 93        .byte $93, $9B, $9C, $9D, $9E, $98, $98, $9F, $A0   ; 

- D 0 - I - 0x015387 05:9377: 04        .byte $04   ; 
- D 0 - I - 0x015388 05:9378: 98        .byte $98   ; 

- D 0 - I - 0x015389 05:9379: 8B        .byte $80 + $0B   ; 
- D 0 - I - 0x01538A 05:937A: BA        .byte $BA, $93, $00, $C3, $C4, $C5, $98, $9F, $A0, $98, $C6   ; 

- D 0 - I - 0x015395 05:9385: 03        .byte $03   ; 
- D 0 - I - 0x015396 05:9386: 98        .byte $98   ; 

- D 0 - I - 0x015397 05:9387: 82        .byte $80 + $02   ; 
- D 0 - I - 0x015398 05:9388: BA        .byte $BA, $80   ; 

- D 0 - I - 0x01539A 05:938A: 03        .byte $03   ; 
- D 0 - I - 0x01539B 05:938B: 82        .byte $82   ; 

- D 0 - I - 0x01539C 05:938C: 85        .byte $80 + $05   ; 
- D 0 - I - 0x01539D 05:938D: 93        .byte $93, $00, $A1, $A2, $A3   ; 

- D 0 - I - 0x0153A2 05:9392: 08        .byte $08   ; 
- D 0 - I - 0x0153A3 05:9393: 98        .byte $98   ; 

- D 0 - I - 0x0153A4 05:9394: 90        .byte $80 + $10   ; 
- D 0 - I - 0x0153A5 05:9395: BA        .byte $BA, $93, $C7, $C8, $C9, $CA, $98, $98, $CB, $CC, $CD, $AC, $AC, $98, $BA, $80   ; 

- D 0 - I - 0x0153B5 05:93A5: 03        .byte $03   ; 
- D 0 - I - 0x0153B6 05:93A6: 82        .byte $82   ; 

- D 0 - I - 0x0153B7 05:93A7: 93        .byte $80 + $13   ; 
- D 0 - I - 0x0153B8 05:93A8: 93        .byte $93, $A4, $A5, $A6, $A7, $98, $A8, $A9, $98, $AA, $AB, $AC, $98, $BA, $93, $00   ; 
- D 0 - I - 0x0153C8 05:93B8: CE        .byte $CE, $CF, $D0   ; 

- D 0 - I - 0x0153CB 05:93BB: 04        .byte $04   ; 
- D 0 - I - 0x0153CC 05:93BC: 98        .byte $98   ; 

- D 0 - I - 0x0153CD 05:93BD: 81        .byte $80 + $01   ; 
- D 0 - I - 0x0153CE 05:93BE: C6        .byte $C6   ; 

- D 0 - I - 0x0153CF 05:93BF: 03        .byte $03   ; 
- D 0 - I - 0x0153D0 05:93C0: 98        .byte $98   ; 

- D 0 - I - 0x0153D1 05:93C1: 82        .byte $80 + $02   ; 
- D 0 - I - 0x0153D2 05:93C2: BA        .byte $BA, $80   ; 

- D 0 - I - 0x0153D4 05:93C4: 03        .byte $03   ; 
- D 0 - I - 0x0153D5 05:93C5: 82        .byte $82   ; 

- D 0 - I - 0x0153D6 05:93C6: 9D        .byte $80 + $1D   ; 
- D 0 - I - 0x0153D7 05:93C7: 93        .byte $93, $AD, $AE, $AF, $B0, $98, $B1, $B2, $98, $B3, $B4, $98, $98, $BA, $93, $D1   ; 
- D 0 - I - 0x0153E7 05:93D7: D2        .byte $D2, $D3, $D4, $98, $98, $CB, $AA, $AB, $D5, $D5, $98, $BA, $80   ; 

- D 0 - I - 0x0153F4 05:93E4: 03        .byte $03   ; 
- D 0 - I - 0x0153F5 05:93E5: 82        .byte $82   ; 

- D 0 - I - 0x0153F6 05:93E6: 85        .byte $80 + $05   ; 
- D 0 - I - 0x0153F7 05:93E7: 93        .byte $93, $00, $B5, $B6, $00   ; 

- D 0 - I - 0x0153FC 05:93EC: 08        .byte $08   ; 
- D 0 - I - 0x0153FD 05:93ED: 98        .byte $98   ; 

- D 0 - I - 0x0153FE 05:93EE: 86        .byte $80 + $06   ; 
- D 0 - I - 0x0153FF 05:93EF: BA        .byte $BA, $93, $D6, $D7, $D8, $00   ; 

- D 0 - I - 0x015405 05:93F5: 03        .byte $03   ; 
- D 0 - I - 0x015406 05:93F6: 98        .byte $98   ; 

- D 0 - I - 0x015407 05:93F7: 82        .byte $80 + $02   ; 
- D 0 - I - 0x015408 05:93F8: 9F        .byte $9F, $A0   ; 

- D 0 - I - 0x01540A 05:93FA: 03        .byte $03   ; 
- D 0 - I - 0x01540B 05:93FB: 98        .byte $98   ; 

- D 0 - I - 0x01540C 05:93FC: 82        .byte $80 + $02   ; 
- D 0 - I - 0x01540D 05:93FD: BA        .byte $BA, $80   ; 

- D 0 - I - 0x01540F 05:93FF: 03        .byte $03   ; 
- D 0 - I - 0x015410 05:9400: 82        .byte $82   ; 

- D 0 - I - 0x015411 05:9401: 81        .byte $80 + $01   ; 
- D 0 - I - 0x015412 05:9402: 93        .byte $93   ; 

- D 0 - I - 0x015413 05:9403: 0C        .byte $0C   ; 
- D 0 - I - 0x015414 05:9404: 00        .byte $00   ; 

- D 0 - I - 0x015415 05:9405: 82        .byte $80 + $02   ; 
- D 0 - I - 0x015416 05:9406: BA        .byte $BA, $93   ; 

- D 0 - I - 0x015418 05:9408: 0C        .byte $0C   ; 
- D 0 - I - 0x015419 05:9409: 00        .byte $00   ; 

- D 0 - I - 0x01541A 05:940A: 82        .byte $80 + $02   ; 
- D 0 - I - 0x01541B 05:940B: BA        .byte $BA, $80   ; 

- D 0 - I - 0x01541D 05:940D: 03        .byte $03   ; 
- D 0 - I - 0x01541E 05:940E: 82        .byte $82   ; 

- D 0 - I - 0x01541F 05:940F: 81        .byte $80 + $01   ; 
- D 0 - I - 0x015420 05:9410: 93        .byte $93   ; 

- D 0 - I - 0x015421 05:9411: 03        .byte $03   ; 
- D 0 - I - 0x015422 05:9412: 00        .byte $00   ; 

- D 0 - I - 0x015423 05:9413: 85        .byte $80 + $05   ; 
- D 0 - I - 0x015424 05:9414: 12        .byte $12, $25, $22, $1E, $23   ; BURNS

- D 0 - I - 0x015429 05:9419: 04        .byte $04   ; 
- D 0 - I - 0x01542A 05:941A: 00        .byte $00   ; 

- D 0 - I - 0x01542B 05:941B: 82        .byte $80 + $02   ; 
- D 0 - I - 0x01542C 05:941C: BA        .byte $BA, $93   ; 

- D 0 - I - 0x01542E 05:941E: 03        .byte $03   ; 
- D 0 - I - 0x01542F 05:941F: 00        .byte $00   ; 

- D 0 - I - 0x015430 05:9420: 85        .byte $80 + $05   ; 
- D 0 - I - 0x015431 05:9421: 23        .byte $23, $1D, $19, $24, $18   ; SMITH

- D 0 - I - 0x015436 05:9426: 04        .byte $04   ; 
- D 0 - I - 0x015437 05:9427: 00        .byte $00   ; 

- D 0 - I - 0x015438 05:9428: 82        .byte $80 + $02   ; 
- D 0 - I - 0x015439 05:9429: BA        .byte $BA, $80   ; 

- D 0 - I - 0x01543B 05:942B: 03        .byte $03   ; 
- D 0 - I - 0x01543C 05:942C: 82        .byte $82   ; 

- D 0 - I - 0x01543D 05:942D: 81        .byte $80 + $01   ; 
- D 0 - I - 0x01543E 05:942E: BD        .byte $BD   ; 

- D 0 - I - 0x01543F 05:942F: 0C        .byte $0C   ; 
- D 0 - I - 0x015440 05:9430: BE        .byte $BE   ; 

- D 0 - I - 0x015441 05:9431: 82        .byte $80 + $02   ; 
- D 0 - I - 0x015442 05:9432: BF        .byte $BF, $BD   ; 

- D 0 - I - 0x015444 05:9434: 0C        .byte $0C   ; 
- D 0 - I - 0x015445 05:9435: BE        .byte $BE   ; 

- D 0 - I - 0x015446 05:9436: 86        .byte $80 + $06   ; 
- D 0 - I - 0x015447 05:9437: BF        .byte $BF, $80, $82, $82, $8F, $91   ; 

- D 0 - I - 0x01544D 05:943D: 0C        .byte $0C   ; 
- D 0 - I - 0x01544E 05:943E: 92        .byte $92   ; 

- D 0 - I - 0x01544F 05:943F: 82        .byte $80 + $02   ; 
- D 0 - I - 0x015450 05:9440: B7        .byte $B7, $91   ; 

- D 0 - I - 0x015452 05:9442: 0C        .byte $0C   ; 
- D 0 - I - 0x015453 05:9443: 92        .byte $92   ; 

- D 0 - I - 0x015454 05:9444: 86        .byte $80 + $06   ; 
- D 0 - I - 0x015455 05:9445: B7        .byte $B7, $80, $82, $8F, $90, $93   ; 

- D 0 - I - 0x01545B 05:944B: 04        .byte $04   ; 
- D 0 - I - 0x01545C 05:944C: 00        .byte $00   ; 

- D 0 - I - 0x01545D 05:944D: 02        .byte $02   ; 
- D 0 - I - 0x01545E 05:944E: 98        .byte $98   ; 

- D 0 - I - 0x01545F 05:944F: 82        .byte $80 + $02   ; 
- D 0 - I - 0x015460 05:9450: 99        .byte $99, $9A   ; 

- D 0 - I - 0x015462 05:9452: 04        .byte $04   ; 
- D 0 - I - 0x015463 05:9453: 98        .byte $98   ; 

- D 0 - I - 0x015464 05:9454: 82        .byte $80 + $02   ; 
- D 0 - I - 0x015465 05:9455: BA        .byte $BA, $93   ; 

- D 0 - I - 0x015467 05:9457: 04        .byte $04   ; 
- D 0 - I - 0x015468 05:9458: 00        .byte $00   ; 

- D 0 - I - 0x015469 05:9459: 02        .byte $02   ; 
- D 0 - I - 0x01546A 05:945A: 98        .byte $98   ; 

- D 0 - I - 0x01546B 05:945B: 82        .byte $80 + $02   ; 
- D 0 - I - 0x01546C 05:945C: 99        .byte $99, $9A   ; 

- D 0 - I - 0x01546E 05:945E: 04        .byte $04   ; 
- D 0 - I - 0x01546F 05:945F: 98        .byte $98   ; 

- D 0 - I - 0x015470 05:9460: 8E        .byte $80 + $0E   ; 
- D 0 - I - 0x015471 05:9461: BA        .byte $BA, $80, $8F, $90, $80, $93, $00, $D9, $DA, $DB, $98, $98, $9F, $A0   ; 

- D 0 - I - 0x01547F 05:946F: 04        .byte $04   ; 
- D 0 - I - 0x015480 05:9470: 98        .byte $98   ; 

- D 0 - I - 0x015481 05:9471: 8A        .byte $80 + $0A   ; 
- D 0 - I - 0x015482 05:9472: BA        .byte $BA, $93, $E9, $EA, $EB, $EC, $98, $98, $9F, $A0   ; 

- D 0 - I - 0x01548C 05:947C: 04        .byte $04   ; 
- D 0 - I - 0x01548D 05:947D: 98        .byte $98   ; 

- D 0 - I - 0x01548E 05:947E: 8A        .byte $80 + $0A   ; 
- D 0 - I - 0x01548F 05:947F: BA        .byte $BA, $80, $90, $80, $80, $93, $00, $DC, $DD, $DE   ; 

- D 0 - I - 0x015499 05:9489: 04        .byte $04   ; 
- D 0 - I - 0x01549A 05:948A: 98        .byte $98   ; 

- D 0 - I - 0x01549B 05:948B: 8A        .byte $80 + $0A   ; 
- D 0 - I - 0x01549C 05:948C: AA        .byte $AA, $AB, $D5, $98, $BA, $93, $ED, $EE, $EF, $F0   ; 

- D 0 - I - 0x0154A6 05:9496: 08        .byte $08   ; 
- D 0 - I - 0x0154A7 05:9497: 98        .byte $98   ; 

- D 0 - I - 0x0154A8 05:9498: 81        .byte $80 + $01   ; 
- D 0 - I - 0x0154A9 05:9499: BA        .byte $BA   ; 

- D 0 - I - 0x0154AA 05:949A: 04        .byte $04   ; 
- D 0 - I - 0x0154AB 05:949B: 80        .byte $80   ; 

- D 0 - I - 0x0154AC 05:949C: 85        .byte $80 + $05   ; 
- D 0 - I - 0x0154AD 05:949D: 93        .byte $93, $DF, $E0, $E1, $E2   ; 

- D 0 - I - 0x0154B2 05:94A2: 04        .byte $04   ; 
- D 0 - I - 0x0154B3 05:94A3: 98        .byte $98   ; 

- D 0 - I - 0x0154B4 05:94A4: 81        .byte $80 + $01   ; 
- D 0 - I - 0x0154B5 05:94A5: B3        .byte $B3   ; 

- D 0 - I - 0x0154B6 05:94A6: 03        .byte $03   ; 
- D 0 - I - 0x0154B7 05:94A7: 98        .byte $98   ; 

- D 0 - I - 0x0154B8 05:94A8: 8F        .byte $80 + $0F   ; 
- D 0 - I - 0x0154B9 05:94A9: BA        .byte $BA, $93, $F1, $F2, $F3, $F4, $98, $98, $F5, $F6, $98, $F7, $98, $98, $BA   ; 

- D 0 - I - 0x0154C8 05:94B8: 04        .byte $04   ; 
- D 0 - I - 0x0154C9 05:94B9: 80        .byte $80   ; 

- D 0 - I - 0x0154CA 05:94BA: 9C        .byte $80 + $1C   ; 
- D 0 - I - 0x0154CB 05:94BB: 93        .byte $93, $00, $E3, $E4, $E5, $98, $98, $AA, $D5, $AB, $D5, $D5, $98, $BA, $93, $00   ; 
- D 0 - I - 0x0154DB 05:94CB: F8        .byte $F8, $F9, $FA, $98, $98, $FB, $FC, $98, $FD, $98, $98, $BA   ; 

- D 0 - I - 0x0154E7 05:94D7: 04        .byte $04   ; 
- D 0 - I - 0x0154E8 05:94D8: 80        .byte $80   ; 

- D 0 - I - 0x0154E9 05:94D9: 85        .byte $80 + $05   ; 
- D 0 - I - 0x0154EA 05:94DA: 93        .byte $93, $00, $E6, $E7, $E8   ; 

- D 0 - I - 0x0154EF 05:94DF: 04        .byte $04   ; 
- D 0 - I - 0x0154F0 05:94E0: 98        .byte $98   ; 

- D 0 - I - 0x0154F1 05:94E1: 81        .byte $80 + $01   ; 
- D 0 - I - 0x0154F2 05:94E2: B4        .byte $B4   ; 

- D 0 - I - 0x0154F3 05:94E3: 03        .byte $03   ; 
- D 0 - I - 0x0154F4 05:94E4: 98        .byte $98   ; 

- D 0 - I - 0x0154F5 05:94E5: 86        .byte $80 + $06   ; 
- D 0 - I - 0x0154F6 05:94E6: BA        .byte $BA, $93, $00, $00, $FE, $94   ; 

- D 0 - I - 0x0154FC 05:94EC: 08        .byte $08   ; 
- D 0 - I - 0x0154FD 05:94ED: 98        .byte $98   ; 

- D 0 - I - 0x0154FE 05:94EE: 81        .byte $80 + $01   ; 
- D 0 - I - 0x0154FF 05:94EF: BA        .byte $BA   ; 

- D 0 - I - 0x015500 05:94F0: 04        .byte $04   ; 
- D 0 - I - 0x015501 05:94F1: 80        .byte $80   ; 

- D 0 - I - 0x015502 05:94F2: 81        .byte $80 + $01   ; 
- D 0 - I - 0x015503 05:94F3: 93        .byte $93   ; 

- D 0 - I - 0x015504 05:94F4: 0C        .byte $0C   ; 
- D 0 - I - 0x015505 05:94F5: 00        .byte $00   ; 

- D 0 - I - 0x015506 05:94F6: 82        .byte $80 + $02   ; 
- D 0 - I - 0x015507 05:94F7: BA        .byte $BA, $93   ; 

- D 0 - I - 0x015509 05:94F9: 0C        .byte $0C   ; 
- D 0 - I - 0x01550A 05:94FA: 00        .byte $00   ; 

- D 0 - I - 0x01550B 05:94FB: 81        .byte $80 + $01   ; 
- D 0 - I - 0x01550C 05:94FC: BA        .byte $BA   ; 

- D 0 - I - 0x01550D 05:94FD: 04        .byte $04   ; 
- D 0 - I - 0x01550E 05:94FE: 80        .byte $80   ; 

- D 0 - I - 0x01550F 05:94FF: 81        .byte $80 + $01   ; 
- D 0 - I - 0x015510 05:9500: 93        .byte $93   ; 

- D 0 - I - 0x015511 05:9501: 03        .byte $03   ; 
- D 0 - I - 0x015512 05:9502: 00        .byte $00   ; 

- D 0 - I - 0x015513 05:9503: 84        .byte $80 + $04   ; 
- D 0 - I - 0x015514 05:9504: 19        .byte $19, $22, $1F, $1E   ; IRON

- D 0 - I - 0x015518 05:9508: 05        .byte $05   ; 
- D 0 - I - 0x015519 05:9509: 00        .byte $00   ; 

- D 0 - I - 0x01551A 05:950A: 82        .byte $80 + $02   ; 
- D 0 - I - 0x01551B 05:950B: BA        .byte $BA, $93   ; 

- D 0 - I - 0x01551D 05:950D: 03        .byte $03   ; 
- D 0 - I - 0x01551E 05:950E: 00        .byte $00   ; 

- D 0 - I - 0x01551F 05:950F: 85        .byte $80 + $05   ; 
- D 0 - I - 0x015520 05:9510: 12        .byte $12, $15, $11, $1E, $23   ; BEANS

- D 0 - I - 0x015525 05:9515: 04        .byte $04   ; 
- D 0 - I - 0x015526 05:9516: 00        .byte $00   ; 

- D 0 - I - 0x015527 05:9517: 81        .byte $80 + $01   ; 
- D 0 - I - 0x015528 05:9518: BA        .byte $BA   ; 

- D 0 - I - 0x015529 05:9519: 04        .byte $04   ; 
- D 0 - I - 0x01552A 05:951A: 80        .byte $80   ; 

- D 0 - I - 0x01552B 05:951B: 81        .byte $80 + $01   ; 
- D 0 - I - 0x01552C 05:951C: BD        .byte $BD   ; 

- D 0 - I - 0x01552D 05:951D: 0C        .byte $0C   ; 
- D 0 - I - 0x01552E 05:951E: BE        .byte $BE   ; 

- D 0 - I - 0x01552F 05:951F: 82        .byte $80 + $02   ; 
- D 0 - I - 0x015530 05:9520: BF        .byte $BF, $BD   ; 

- D 0 - I - 0x015532 05:9522: 0C        .byte $0C   ; 
- D 0 - I - 0x015533 05:9523: BE        .byte $BE   ; 

- D 0 - I - 0x015534 05:9524: 81        .byte $80 + $01   ; 
- D 0 - I - 0x015535 05:9525: BF        .byte $BF   ; 

- D 0 - I - 0x015536 05:9526: 61        .byte $61   ; 
- D 0 - I - 0x015537 05:9527: 80        .byte $80   ; 

- D 0 - I - 0x015538 05:9528: 11        .byte $11   ; 
- D 0 - I - 0x015539 05:9529: FF        .byte $FF   ; 

- D 0 - I - 0x01553A 05:952A: 03        .byte $03   ; 
- D 0 - I - 0x01553B 05:952B: AA        .byte $AA   ; 

- D 0 - I - 0x01553C 05:952C: 8D        .byte $80 + $0D   ; 
- D 0 - I - 0x01553D 05:952D: BB        .byte $BB, $AA, $AA, $EE, $FF, $AA, $AA, $8A, $BB, $AA, $AA, $EE, $FF   ; 

- D 0 - I - 0x01554A 05:953A: 03        .byte $03   ; 
- D 0 - I - 0x01554B 05:953B: AF        .byte $AF   ; 

- D 0 - I - 0x01554C 05:953C: 85        .byte $80 + $05   ; 
- D 0 - I - 0x01554D 05:953D: BF        .byte $BF, $AF, $AF, $EF, $FF   ; 

- D 0 - I - 0x015552 05:9542: 03        .byte $03   ; 
- D 0 - I - 0x015553 05:9543: AA        .byte $AA   ; 

- D 0 - I - 0x015554 05:9544: 85        .byte $80 + $05   ; 
- D 0 - I - 0x015555 05:9545: BB        .byte $BB, $AA, $AA, $EE, $FF   ; 

- D 0 - I - 0x01555A 05:954A: 03        .byte $03   ; 
- D 0 - I - 0x01555B 05:954B: FA        .byte $FA   ; 

- D 0 - I - 0x01555C 05:954C: 84        .byte $80 + $04   ; 
- D 0 - I - 0x01555D 05:954D: FB        .byte $FB, $FA, $FA, $FE   ; 

- D 0 - I - 0x015561 05:9551: 08        .byte $08   ; 
- D 0 - I - 0x015562 05:9552: FF        .byte $FF   ; 

- D 0 - I - 0x015563 05:9553: FF        .byte $FF   ; end token



.export _off012_0x017E33_10_credits
_off012_0x017E33_10_credits:
; con_D22A_credits
; 00-7E = print byte xx times
; 80-FE = print a list of bytes xx times
; 7F = change ppu address
; FF = end token
; first 2 bytes are not read, because 0x0146DB jumps to 0x01D1CE
- - - - - - 0x017E33 05:BE23: 00 20     .word $2000 ; 

- D 1 - I - 0x017E35 05:BE25: 40        .byte $40   ; 
- D 1 - I - 0x017E36 05:BE26: 40        .byte $40   ; 

- D 1 - I - 0x017E37 05:BE27: A0        .byte $80 + $20   ; 
- D 1 - I - 0x017E38 05:BE28: 41        .byte $41, $42, $41, $42, $41, $42, $41, $42, $41, $42, $41, $42, $41, $42, $41, $42   ; 
- D 1 - I - 0x017E48 05:BE38: 41        .byte $41, $42, $41, $42, $41, $42, $41, $42, $41, $42, $41, $42, $41, $42, $41, $42   ; 

- D 1 - I - 0x017E58 05:BE48: 19        .byte $19   ; 
- D 1 - I - 0x017E59 05:BE49: 43        .byte $43   ; 

- D 1 - I - 0x017E5A 05:BE4A: 81        .byte $80 + $01   ; 
- D 1 - I - 0x017E5B 05:BE4B: 94        .byte $94   ; 

- D 1 - I - 0x017E5C 05:BE4C: 06        .byte $06   ; 
- D 1 - I - 0x017E5D 05:BE4D: 43        .byte $43   ; 

- D 1 - I - 0x017E5E 05:BE4E: A0        .byte $80 + $20   ; 
- D 1 - I - 0x017E5F 05:BE4F: 44        .byte $44, $45, $44, $45, $44, $45, $44, $45, $44, $45, $44, $45, $44, $45, $44, $45   ; 
- D 1 - I - 0x017E6F 05:BE5F: 44        .byte $44, $45, $44, $45, $44, $45, $44, $45, $44, $45, $44, $45, $44, $45, $44, $45   ; 

- D 1 - I - 0x017E7F 05:BE6F: 04        .byte $04   ; 
- D 1 - I - 0x017E80 05:BE70: 46        .byte $46   ; 

- D 1 - I - 0x017E81 05:BE71: 81        .byte $80 + $01   ; 
- D 1 - I - 0x017E82 05:BE72: 47        .byte $47   ; 

- D 1 - I - 0x017E83 05:BE73: 03        .byte $03   ; 
- D 1 - I - 0x017E84 05:BE74: 46        .byte $46   ; 

- D 1 - I - 0x017E85 05:BE75: 89        .byte $80 + $09   ; 
- D 1 - I - 0x017E86 05:BE76: 48        .byte $48, $47, $46, $48, $46, $47, $49, $46, $47   ; 

- D 1 - I - 0x017E8F 05:BE7F: 03        .byte $03   ; 
- D 1 - I - 0x017E90 05:BE80: 46        .byte $46   ; 

- D 1 - I - 0x017E91 05:BE81: 86        .byte $80 + $06   ; 
- D 1 - I - 0x017E92 05:BE82: 95        .byte $95, $96, $46, $46, $95, $96   ; 

- D 1 - I - 0x017E98 05:BE88: 04        .byte $04   ; 
- D 1 - I - 0x017E99 05:BE89: 46        .byte $46   ; 

- D 1 - I - 0x017E9A 05:BE8A: 90        .byte $80 + $10   ; 
- D 1 - I - 0x017E9B 05:BE8B: 95        .byte $95, $96, $4A, $49, $4A, $4B, $49, $4B, $4C, $48, $4D, $4E, $48, $48, $4C, $49   ; 

- D 1 - I - 0x017EAB 05:BE9B: 04        .byte $04   ; 
- D 1 - I - 0x017EAC 05:BE9C: 48        .byte $48   ; 

- D 1 - I - 0x017EAD 05:BE9D: 9F        .byte $80 + $1F   ; 
- D 1 - I - 0x017EAE 05:BE9E: 4C        .byte $4C, $48, $53, $48, $49, $4B, $53, $48, $4B, $4B, $4A, $4B, $53, $48, $4A, $49   ; 
- D 1 - I - 0x017EBE 05:BEAE: 4A        .byte $4A, $49, $49, $48, $49, $48, $4F, $50, $51, $48, $48, $40, $40, $52, $97   ; 

- D 1 - I - 0x017ECD 05:BEBD: 03        .byte $03   ; 
- D 1 - I - 0x017ECE 05:BEBE: 48        .byte $48   ; 

- D 1 - I - 0x017ECF 05:BEBF: 90        .byte $80 + $10   ; 
- D 1 - I - 0x017ED0 05:BEC0: 53        .byte $53, $48, $49, $48, $53, $48, $49, $49, $4C, $48, $53, $48, $53, $48, $4B, $49   ; 

- D 1 - I - 0x017EE0 05:BED0: 03        .byte $03   ; 
- D 1 - I - 0x017EE1 05:BED1: 48        .byte $48   ; 

- D 1 - I - 0x017EE2 05:BED2: 94        .byte $80 + $14   ; 
- D 1 - I - 0x017EE3 05:BED3: 54        .byte $54, $55, $56, $57, $58, $40, $59, $5A, $5B, $98, $40, $40, $99, $9A, $40, $9B   ; 
- D 1 - I - 0x017EF3 05:BEE3: 9C        .byte $9C, $9D, $40, $49   ; 

- D 1 - I - 0x017EF7 05:BEE7: 03        .byte $03   ; 
- D 1 - I - 0x017EF8 05:BEE8: 48        .byte $48   ; 

- D 1 - I - 0x017EF9 05:BEE9: 82        .byte $80 + $02   ; 
- D 1 - I - 0x017EFA 05:BEEA: 53        .byte $53, $48   ; 

- D 1 - I - 0x017EFC 05:BEEC: 06        .byte $06   ; 
- D 1 - I - 0x017EFD 05:BEED: 40        .byte $40   ; 

- D 1 - I - 0x017EFE 05:BEEE: 94        .byte $80 + $14   ; 
- D 1 - I - 0x017EFF 05:BEEF: 5C        .byte $5C, $5D, $5E, $5F, $60, $61, $62, $63, $64, $65, $9E, $40, $9F, $A0, $A1, $A2   ; 
- D 1 - I - 0x017F0F 05:BEFF: 40        .byte $40, $A3, $A4, $A5   ; 

- D 1 - I - 0x017F13 05:BF03: 0C        .byte $0C   ; 
- D 1 - I - 0x017F14 05:BF04: 40        .byte $40   ; 

- D 1 - I - 0x017F15 05:BF05: 94        .byte $80 + $14   ; 
- D 1 - I - 0x017F16 05:BF06: 66        .byte $66, $67, $68, $69, $6A, $6B, $6C, $6D, $6E, $6F, $A6, $40, $A7, $A8, $A9, $AA   ; 
- D 1 - I - 0x017F26 05:BF16: AB        .byte $AB, $AC, $AD, $AE   ; 

- D 1 - I - 0x017F2A 05:BF1A: 0C        .byte $0C   ; 
- D 1 - I - 0x017F2B 05:BF1B: 40        .byte $40   ; 

- D 1 - I - 0x017F2C 05:BF1C: 94        .byte $80 + $14   ; 
- D 1 - I - 0x017F2D 05:BF1D: 70        .byte $70, $71, $72, $73, $74, $75, $76, $40, $77, $78, $AF, $40, $B0, $B1, $B2, $B3   ; 
- D 1 - I - 0x017F3D 05:BF2D: 40        .byte $40, $B4, $B5, $B6   ; 

- D 1 - I - 0x017F41 05:BF31: 0D        .byte $0D   ; 
- D 1 - I - 0x017F42 05:BF32: 40        .byte $40   ; 

- D 1 - I - 0x017F43 05:BF33: 93        .byte $80 + $13   ; 
- D 1 - I - 0x017F44 05:BF34: 79        .byte $79, $7A, $7B, $7C, $7D, $40, $40, $7E, $7F, $B7, $40, $B8, $B9, $BA, $BB, $40   ; 
- D 1 - I - 0x017F54 05:BF44: BC        .byte $BC, $BD, $BE   ; 

- D 1 - I - 0x017F57 05:BF47: 0D        .byte $0D   ; 
- D 1 - I - 0x017F58 05:BF48: 40        .byte $40   ; 

- D 1 - I - 0x017F59 05:BF49: 84        .byte $80 + $04   ; 
- D 1 - I - 0x017F5A 05:BF4A: 80        .byte $80, $81, $82, $83   ; 

- D 1 - I - 0x017F5E 05:BF4E: 03        .byte $03   ; 
- D 1 - I - 0x017F5F 05:BF4F: 40        .byte $40   ; 

- D 1 - I - 0x017F60 05:BF50: 8C        .byte $80 + $0C   ; 
- D 1 - I - 0x017F61 05:BF51: 84        .byte $84, $85, $BF, $40, $C0, $C1, $C2, $C3, $40, $C4, $C5, $C6   ; 

- D 1 - I - 0x017F6D 05:BF5D: 0D        .byte $0D   ; 
- D 1 - I - 0x017F6E 05:BF5E: 40        .byte $40   ; 

- D 1 - I - 0x017F6F 05:BF5F: 93        .byte $80 + $13   ; 
- D 1 - I - 0x017F70 05:BF60: 86        .byte $86, $87, $88, $89, $40, $40, $8A, $8B, $8C, $40, $40, $C7, $C8, $C9, $CA, $40   ; 
- D 1 - I - 0x017F80 05:BF70: CB        .byte $CB, $CC, $CD   ; 

- D 1 - I - 0x017F83 05:BF73: 0D        .byte $0D   ; 
- D 1 - I - 0x017F84 05:BF74: 40        .byte $40   ; 

- D 1 - I - 0x017F85 05:BF75: 93        .byte $80 + $13   ; 
- D 1 - I - 0x017F86 05:BF76: 8D        .byte $8D, $8E, $8F, $90, $40, $40, $91, $92, $93, $40, $40, $CE, $CF, $D0, $D1, $40   ; 
- D 1 - I - 0x017F96 05:BF86: 40        .byte $40, $D2, $D3   ; 

- D 1 - I - 0x017F99 05:BF89: 0D        .byte $0D   ; 
- D 1 - I - 0x017F9A 05:BF8A: 40        .byte $40   ; 

- D 1 - I - 0x017F9B 05:BF8B: 8C        .byte $80 + $0C   ; 
- D 1 - I - 0x017F9C 05:BF8C: D4        .byte $D4, $D5, $D6, $D7, $D8, $40, $40, $D9, $DA, $FB, $40, $FC   ; 

- D 1 - I - 0x017FA8 05:BF98: 14        .byte $14   ; 
- D 1 - I - 0x017FA9 05:BF99: 40        .byte $40   ; 

- D 1 - I - 0x017FAA 05:BF9A: 8A        .byte $80 + $0A   ; 
- D 1 - I - 0x017FAB 05:BF9B: DB        .byte $DB, $DC, $DD, $DE, $DF, $40, $40, $E0, $E1, $FD   ; 

- D 1 - I - 0x017FB5 05:BFA5: 16        .byte $16   ; 
- D 1 - I - 0x017FB6 05:BFA6: 40        .byte $40   ; 

- D 1 - I - 0x017FB7 05:BFA7: 88        .byte $80 + $08   ; 
- D 1 - I - 0x017FB8 05:BFA8: E2        .byte $E2, $E3, $E4, $E5, $E6, $40, $E7, $E8   ; 

- D 1 - I - 0x017FC0 05:BFB0: 18        .byte $18   ; 
- D 1 - I - 0x017FC1 05:BFB1: 40        .byte $40   ; 

- D 1 - I - 0x017FC2 05:BFB2: 85        .byte $80 + $05   ; 
- D 1 - I - 0x017FC3 05:BFB3: E9        .byte $E9, $EA, $EB, $EC, $ED   ; 

- D 1 - I - 0x017FC8 05:BFB8: 1B        .byte $1B   ; 
- D 1 - I - 0x017FC9 05:BFB9: 40        .byte $40   ; 

- D 1 - I - 0x017FCA 05:BFBA: 85        .byte $80 + $05   ; 
- D 1 - I - 0x017FCB 05:BFBB: EE        .byte $EE, $EF, $F0, $F1, $F2   ; 

- D 1 - I - 0x017FD0 05:BFC0: 1A        .byte $1A   ; 
- D 1 - I - 0x017FD1 05:BFC1: 40        .byte $40   ; 

- D 1 - I - 0x017FD2 05:BFC2: 86        .byte $80 + $06   ; 
- D 1 - I - 0x017FD3 05:BFC3: F3        .byte $F3, $F4, $F5, $F6, $F7, $F8   ; 

- D 1 - I - 0x017FD9 05:BFC9: 1E        .byte $1E   ; 
- D 1 - I - 0x017FDA 05:BFCA: 40        .byte $40   ; 

- D 1 - I - 0x017FDB 05:BFCB: 82        .byte $80 + $02   ; 
- D 1 - I - 0x017FDC 05:BFCC: F9        .byte $F9, $FA   ; 

- D 1 - I - 0x017FDE 05:BFCE: 14        .byte $14   ; 
- D 1 - I - 0x017FDF 05:BFCF: 40        .byte $40   ; 

- D 1 - I - 0x017FE0 05:BFD0: 20        .byte $20   ; 
- D 1 - I - 0x017FE1 05:BFD1: FE        .byte $FE   ; 

- D 1 - I - 0x017FE2 05:BFD2: 60        .byte $60   ; 
- D 1 - I - 0x017FE3 05:BFD3: 00        .byte $00   ; 

- D 1 - I - 0x017FE4 05:BFD4: 20        .byte $20   ; 
- D 1 - I - 0x017FE5 05:BFD5: FE        .byte $FE   ; 

- D 1 - I - 0x017FE6 05:BFD6: 40        .byte $40   ; 
- D 1 - I - 0x017FE7 05:BFD7: 40        .byte $40   ; 

- D 1 - I - 0x017FE8 05:BFD8: 0A        .byte $0A   ; 
- D 1 - I - 0x017FE9 05:BFD9: AA        .byte $AA   ; 

- D 1 - I - 0x017FEA 05:BFDA: 83        .byte $80 + $03   ; 
- D 1 - I - 0x017FEB 05:BFDB: CA        .byte $CA, $EA, $BA   ; 

- D 1 - I - 0x017FEE 05:BFDE: 04        .byte $04   ; 
- D 1 - I - 0x017FEF 05:BFDF: AA        .byte $AA   ; 

- D 1 - I - 0x017FF0 05:BFE0: 8D        .byte $80 + $0D   ; 
- D 1 - I - 0x017FF1 05:BFE1: 6E        .byte $6E, $4C, $55, $DD, $FF, $BB, $AA, $AA, $E2, $AE, $56, $65, $99   ; 

- D 1 - I - 0x017FFE 05:BFEE: 06        .byte $06   ; 
- D 1 - I - 0x017FFF 05:BFEF: AA        .byte $AA   ; 

- D 1 - I - 0x018000 05:BFF0: 81        .byte $80 + $01   ; 
- D 1 - I - 0x018001 05:BFF1: A6        .byte $A6   ; 

- D 1 - I - 0x018002 05:BFF2: 03        .byte $03   ; 
- D 1 - I - 0x018003 05:BFF3: AA        .byte $AA   ; 

- D 1 - I - 0x018004 05:BFF4: 83        .byte $80 + $03   ; 
- D 1 - I - 0x018005 05:BFF5: 5A        .byte $5A, $56, $55   ; 

- D 1 - I - 0x018008 05:BFF8: 05        .byte $05   ; 
- D 1 - I - 0x018009 05:BFF9: 5A        .byte $5A   ; 

- D 1 - I - 0x01800A 05:BFFA: 08        .byte $08   ; 
- D 1 - I - 0x01800B 05:BFFB: 55        .byte $55   ; 

- D 1 - I - 0x01800C 05:BFFC: 08        .byte $08   ; 
- D 1 - I - 0x01800D 05:BFFD: 00        .byte $00   ; 

- D 1 - I - 0x01800E 05:BFFE: FF        .byte $FF   ; end token



.out .sprintf("Free bytes in bank 1C: 0x%04X [%d]", ($D140 - *), ($D140 - *))



.segment "DPCM_1C"
.incbin "DPCM.bin"
.org $D140  ; for listing file



