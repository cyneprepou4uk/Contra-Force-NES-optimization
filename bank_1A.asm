.segment "BANK_1A"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $8000  ; for listing file
; 0x034010-0x03800F



.out .sprintf("Free bytes in bank 1A: 0x%04X [%d]", ($C000 - *), ($C000 - *))



