.segment "BANK_10"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $8000  ; for listing file
; 0x020010-0x02800F



.out .sprintf("Free bytes in bank 10: 0x%04X [%d]", ($D140 - *), ($D140 - *))



.segment "DPCM_10"
.incbin "DPCM.bin"
.org $D140  ; for listing file



