.segment "BANK_30"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $8000  ; for listing file
; 0x060010-0x06800F



.out .sprintf("Free bytes in bank 30: 0x%04X [%d]", ($D140 - *), ($D140 - *))



.segment "DPCM_30"
.incbin "DPCM.bin"
.org $D140  ; for listing file



