.segment "BANK_20"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $8000  ; for listing file
; 0x040010-0x04800F



.out .sprintf("Free bytes in bank 20: 0x%04X [%d]", ($D140 - *), ($D140 - *))



.segment "DPCM_20"
.incbin "DPCM.bin"
.org $D140  ; for listing file



