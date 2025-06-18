.segment "BANK_10"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $8000  ; for listing file
; 0x020010-0x02400F



.out .sprintf("Free bytes in bank 10: 0x%04X [%d]", ($C000 - *), ($C000 - *))



