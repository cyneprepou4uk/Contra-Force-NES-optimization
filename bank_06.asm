.segment "BANK_06"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $A000  ; for listing file
; 0x00C010-0x00E00F



.out .sprintf("Free bytes in bank 06: 0x%04X [%d]", ($C000 - *), ($C000 - *))



