.segment "BANK_25"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $8000  ; for listing file
; 0x04A010-0x04C00F



.out .sprintf("Free bytes in bank 25: 0x%04X [%d]", ($A000 - *), ($A000 - *))



