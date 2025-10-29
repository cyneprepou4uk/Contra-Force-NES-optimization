.segment "BANK_2A"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $8000  ; for listing file
; 0x054010-0x05600F



.out .sprintf("Free bytes in bank 2A: 0x%04X [%d]", ($C000 - *), ($C000 - *))



