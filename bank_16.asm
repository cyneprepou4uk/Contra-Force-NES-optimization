.segment "BANK_16"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $8000  ; for listing file
; 0x02C010-0x03000F



.out .sprintf("Free bytes in bank 16: 0x%04X [%d]", ($C000 - *), ($C000 - *))



