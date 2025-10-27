.segment "BANK_23"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $A000  ; for listing file
; 0x046010-0x04800F



.out .sprintf("Free bytes in bank 23: 0x%04X [%d]", ($C000 - *), ($C000 - *))



