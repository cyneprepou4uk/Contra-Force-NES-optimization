.segment "BANK_07"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $A000  ; for listing file
; 0x00E010-0x01000F



.out .sprintf("Free bytes in bank 07: 0x%04X [%d]", ($C000 - *), ($C000 - *))



