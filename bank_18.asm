.segment "BANK_18"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $8000  ; for listing file
; 0x030010-0x03400F



.out .sprintf("Free bytes in bank 18: 0x%04X [%d]", ($C000 - *), ($C000 - *))



