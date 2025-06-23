.segment "BANK_34"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $8000  ; for listing file
; 0x068010-0x07000F



.out .sprintf("Free bytes in bank 34: 0x%04X [%d]", ($D140 - *), ($D140 - *))



.segment "DPCM_34"
.incbin "DPCM.bin"
.org $D140  ; for listing file



