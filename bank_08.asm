.segment "BANK_08"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $8000  ; for listing file
; 0x010010-0x01400F



.out .sprintf("Free bytes in bank 08: 0x%04X [%d]", ($C000 - *), ($C000 - *))



