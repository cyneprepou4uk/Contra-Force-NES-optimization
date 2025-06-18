.segment "BANK_1C"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $8000  ; for listing file
; 0x038010-0x03C00F



.out .sprintf("Free bytes in bank 1C: 0x%04X [%d]", ($C000 - *), ($C000 - *))



