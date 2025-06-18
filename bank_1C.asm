.segment "BANK_1C"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $C000  ; for listing file
; 0x038010-0x03A00F



.out .sprintf("Free bytes in bank 1C: 0x%04X [%d]", ($E000 - *), ($E000 - *))



