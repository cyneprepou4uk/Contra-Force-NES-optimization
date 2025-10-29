.segment "BANK_03"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $A000  ; for listing file
; 0x006010-0x00800F



.out .sprintf("Free bytes in bank 03: 0x%04X [%d]", ($C000 - *), ($C000 - *))



