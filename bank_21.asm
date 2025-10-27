.segment "BANK_21"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $A000  ; for listing file
; 0x042010-0x04400F



.out .sprintf("Free bytes in bank 21: 0x%04X [%d]", ($C000 - *), ($C000 - *))



