.segment "BANK_14"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $8000  ; for listing file
; 0x028010-0x02C00F



.out .sprintf("Free bytes in bank 14: 0x%04X [%d]", ($C000 - *), ($C000 - *))



