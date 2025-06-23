.segment "BANK_28"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $8000  ; for listing file
; 0x050010-0x05800F



.out .sprintf("Free bytes in bank 28: 0x%04X [%d]", ($D140 - *), ($D140 - *))



.segment "DPCM_28"
.incbin "DPCM.bin"
.org $D140  ; for listing file



