.segment "BANK_1D"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $C000  ; for listing file
; 0x03A010-0x03C00F



.out .sprintf("Free bytes in bank 1D: 0x%04X [%d]", ($C000 - *), ($C000 - *))



