.segment "BANK_2C"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $8000  ; for listing file
; 0x058010-0x06000F



.out .sprintf("Free bytes in bank 2C: 0x%04X [%d]", ($D140 - *), ($D140 - *))



.segment "DPCM_2C"
.incbin "DPCM.bin"
.org $D140  ; for listing file



