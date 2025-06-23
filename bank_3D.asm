.segment "BANK_3D"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $C000  ; for listing file
; 0x07A010-0x07C00F



.segment "DPCM_3D"
.incbin "DPCM.bin"
.org $D140  ; for listing file



.out .sprintf("Free bytes in bank 1D: 0x%04X [%d]", ($E000 - *), ($E000 - *))



