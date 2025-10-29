.segment "BANK_26"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $8000  ; for listing file
; 0x04C010-0x05000F



.out .sprintf("Free bytes in bank 26: 0x%04X [%d]", ($C000 - *), ($C000 - *))



