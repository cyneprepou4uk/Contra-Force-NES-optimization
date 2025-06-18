.segment "BANK_0E"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $8000  ; for listing file
; 0x01C010-0x02000F



.out .sprintf("Free bytes in bank 0E: 0x%04X [%d]", ($C000 - *), ($C000 - *))



