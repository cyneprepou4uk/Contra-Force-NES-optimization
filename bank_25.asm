.segment "BANK_25"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $C000  ; for listing file
; 0x04A010-0x04C00F



; банк в паре с 24 (8000)



.out .sprintf("Free bytes in bank 25: 0x%04X [%d]", ($D140 - *), ($D140 - *))



.segment "DPCM_25"
.incbin "DPCM.bin"
.org $D140  ; for listing file



