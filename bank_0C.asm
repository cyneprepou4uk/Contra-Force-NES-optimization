.segment "BANK_0C"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $8000  ; for listing file
; 0x018010-0x02000F



.out .sprintf("Free bytes in bank 0C: 0x%04X [%d]", ($D140 - *), ($D140 - *))



.segment "DPCM_0C"
.incbin "DPCM.bin"
.org $D140  ; for listing file



