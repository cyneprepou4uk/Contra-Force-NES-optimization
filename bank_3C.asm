.segment "BANK_3C"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $C000  ; for listing file
; 0x078010-0x07A00F



.out .sprintf("Free bytes in bank 3C: 0x%04X [%d]", ($E000 - *), ($E000 - *))



