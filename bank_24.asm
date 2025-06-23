.segment "BANK_24"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $8000  ; for listing file
; 0x048010-0x05000F



.out .sprintf("Free bytes in bank 24: 0x%04X [%d]", ($D140 - *), ($D140 - *))



.segment "DPCM_24"
.incbin "DPCM.bin"
.org $D140  ; for listing file



