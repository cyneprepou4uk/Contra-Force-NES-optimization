.segment "BANK_20"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $A000  ; for listing file
; 0x040010-0x04200F



.out .sprintf("Free bytes in bank 20: 0x%04X [%d]", ($C000 - *), ($C000 - *))



