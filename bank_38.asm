.segment "BANK_38"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $8000  ; for listing file
; 0x070010-0x07800F



.out .sprintf("Free bytes in bank 38: 0x%04X [%d]", ($D140 - *), ($D140 - *))



.segment "DPCM_38"
.incbin "DPCM.bin"
.org $D140  ; for listing file



