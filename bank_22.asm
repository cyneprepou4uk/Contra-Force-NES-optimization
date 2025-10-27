.segment "BANK_22"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $A000  ; for listing file
; 0x044010-0x04600F



.out .sprintf("Free bytes in bank 22: 0x%04X [%d]", ($C000 - *), ($C000 - *))



