.segment "BANK_1D"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $C000  ; for listing file
; 0x03A010-0x03C00F



.incbin "DPCM.bin"



tbl_0x01C011_for_4010_4013:
;                                              +-------------------- 4010
;                                              |    +--------------- 4011
;                                              |    |    +---------- 4012
;                                              |    |    |    +----- 4013
;                                              |    |    |    |
- D 2 - - - 0x01C011 07:C001: 0F        .byte $0F, $00, $00, $4C   ; AC 
- D 2 - - - 0x01C015 07:C005: 0F        .byte $0F, $00, $13, $4C   ; AD 
- D 2 - - - 0x01C019 07:C009: 0F        .byte $0F, $3F, $26, $28   ; AE 
- D 2 - - - 0x01C01D 07:C00D: 0F        .byte $0F, $00, $26, $28   ; AF 
- D 2 - - - 0x01C021 07:C011: 0D        .byte $0D, $4F, $30, $24   ; B0 
- D 2 - - - 0x01C025 07:C015: 0E        .byte $0E, $4F, $30, $24   ; B1 
- D 2 - - - 0x01C029 07:C019: 0F        .byte $0F, $4F, $30, $24   ; B2 
- D 2 - - - 0x01C02D 07:C01D: 0F        .byte $0F, $3F, $39, $08   ; B3 



.export tbl_0x01C011_for_4010_4013



.out .sprintf("Free bytes in bank 1D: 0x%04X [%d]", ($E000 - *), ($E000 - *))



