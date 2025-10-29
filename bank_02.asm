.segment "BANK_02"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $A000  ; for listing file
; 0x004010-0x00600F



.out .sprintf("Free bytes in bank 02: 0x%04X [%d]", ($C000 - *), ($C000 - *))



