.segment "BANK_2B"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $8000  ; for listing file
; 0x056010-0x05800F



.out .sprintf("Free bytes in bank 2B: 0x%04X [%d]", ($C000 - *), ($C000 - *))



