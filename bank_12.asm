.segment "BANK_12"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $8000  ; for listing file
; 0x024010-0x02800F



.out .sprintf("Free bytes in bank 12: 0x%04X [%d]", ($C000 - *), ($C000 - *))



