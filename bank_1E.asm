.segment "BANK_1E"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $6000  ; for listing file
; 0x03C010-0x03E00F



.export tbl_0x01C011_for_4010_4013
.export _off000_0x01CF10_A4_00
.export _off000_0x01CF5C_A4_01
.export _off000_0x01CFAD_A4_02
.export _off000_0x01CFDF_A4_03
.export sub_0x01D072
.export sub_0x01D184
.export sub_0x01D1A7
.export sub_0x01D1B8
.export loc_0x01D1B8
.export loc_0x01D1CE
.export sub_0x01D225_prepare_pointers_for_static_screen
.export sub_0x01D230_disable_rendering_and_set_scroll_00
.export sub_0x01D24C_draw_text
.export loc_0x01D287_write_to_buffer___unk_X
.export sub_0x01D287_write_to_buffer___unk_X
.export sub_0x01D289_write_to_buffer
.export sub_0x01D595
.export loc_0x01D595
.export sub_0x01D68E
.export loc_0x01D68E
.export sub_0x01D718_execute_indirect_jump_0000
.export loc_0x01D718_execute_indirect_jump_0000
.export sub_0x01D9D2
.export sub_0x01DA4B
.export loc_0x01DA87
.export sub_0x01DAAA_execute_indirect_jump_0000
.export sub_0x01DAD9_write_byte_to_ppu_buffer
.export loc_0x01DAD9_write_byte_to_ppu_buffer
.export sub_0x01DDBD
.export sub_0x01DE34_write_A_to_buffer_and_INX
.export loc_0x01DEC5
.export loc_0x01E01E
.export sub_0x01E02E
.export sub_0x01D009
.export ofs_006_0x01D1B8_19
.export ofs_006_0x01D1B8_1A
.export sub_0x01D2E1
.export sub_0x01D689
.export ofs_006_0x01D9BC_14
.export tbl_0x01DA5D_nametable_attributes
.export tbl_0x01DA67_metatiles
.export tbl_0x01DA71_metatile_indexes
.export sub_0x01DA7B
.export ofs_006_0x01DA7B_1C
.export ofs_006_0x01DA81_1B
.export ofs_006_0x01DA85_05
.export ofs_006_0x01DA85_06
.export ofs_006_0x01DA85_0C
.export sub_0x01DAD1_close_ppu_buffer
.export loc_0x01DAD1_close_ppu_buffer
.export sub_0x01DDDF
.export loc_0x01DE34_write_A_to_buffer_and_INX
.export sub_0x01DF01



tbl_0x01C011_for_4010_4013:
;                                              +-------------------- 4010
;                                              |    +--------------- 4011
;                                              |    |    +---------- 4012
;                                              |    |    |    +----- 4013
;                                              |    |    |    |
- D 2 - - - 0x01C011 07:C001: 0F        .byte $0F, $00, $00, $4C   ; AC 
- D 2 - - - 0x01C015 07:C005: 0F        .byte $0F, $00, $13, $4C   ; AD 
- D 2 - - - 0x01C019 07:C009: 0F        .byte $0F, $3F, $26, $28   ; AE 
- D 2 - - - 0x01C01D 07:C00D: 0F        .byte $0F, $00, $26, $28   ; AF 
- D 2 - - - 0x01C021 07:C011: 0D        .byte $0D, $4F, $30, $24   ; B0 
- D 2 - - - 0x01C025 07:C015: 0E        .byte $0E, $4F, $30, $24   ; B1 
- D 2 - - - 0x01C029 07:C019: 0F        .byte $0F, $4F, $30, $24   ; B2 
- D 2 - - - 0x01C02D 07:C01D: 0F        .byte $0F, $3F, $39, $08   ; B3 


; bzk warning, CF00 byte is a part of DPCM, but not included in binary
_off000_0x01CF10_A4_00:
- D 2 - - A 0x01CF10 07:CF00: E0        .byte con_se_cb_E0   ; 
- D 2 - I - 0x01CF11 07:CF01: 02        .byte $02   ; 
- D 2 - I - 0x01CF12 07:CF02: 35        .byte $35   ; 
- D 2 - I - 0x01CF13 07:CF03: 80        .byte $80   ; 
- D 2 - I - 0x01CF14 07:CF04: 00        .byte $00   ; 
- D 2 - I - 0x01CF15 07:CF05: E2        .byte con_se_cb_E2, $3B   ; 
- D 2 - I - 0x01CF17 07:CF07: F1        .byte con_se_cb_F1   ; 
- D 2 - I - 0x01CF18 07:CF08: 81        .byte $81   ; 
- D 2 - I - 0x01CF19 07:CF09: 91        .byte $91   ; 
- D 2 - I - 0x01CF1A 07:CF0A: A1        .byte $A1   ; 
- D 2 - I - 0x01CF1B 07:CF0B: B1        .byte $B1   ; 
- D 2 - I - 0x01CF1C 07:CF0C: C1        .byte $C1   ; 
- D 2 - I - 0x01CF1D 07:CF0D: F2        .byte con_se_cb_F2   ; 
- D 2 - I - 0x01CF1E 07:CF0E: 11        .byte $11   ; 
- D 2 - I - 0x01CF1F 07:CF0F: 21        .byte $21   ; 
- D 2 - I - 0x01CF20 07:CF10: 31        .byte $31   ; 
- D 2 - I - 0x01CF21 07:CF11: 41        .byte $41   ; 
- D 2 - I - 0x01CF22 07:CF12: 51        .byte $51   ; 
- D 2 - I - 0x01CF23 07:CF13: E0        .byte con_se_cb_E0   ; 
- D 2 - I - 0x01CF24 07:CF14: 07        .byte $07   ; 
- D 2 - I - 0x01CF25 07:CF15: 77        .byte $77   ; 
- D 2 - I - 0x01CF26 07:CF16: 83        .byte $83   ; 
- D 2 - I - 0x01CF27 07:CF17: C6        .byte $C6   ; 
- D 2 - I - 0x01CF28 07:CF18: 31        .byte $31   ; 
- D 2 - I - 0x01CF29 07:CF19: EA        .byte con_se_cb_EA, $03   ; 
- D 2 - I - 0x01CF2B 07:CF1B: E8        .byte con_se_cb_E8, $8C   ; 
- D 2 - I - 0x01CF2D 07:CF1D: F3        .byte con_se_cb_F3   ; 
- D 2 - I - 0x01CF2E 07:CF1E: 31        .byte $31   ; 
- D 2 - I - 0x01CF2F 07:CF1F: 21        .byte $21   ; 
- D 2 - I - 0x01CF30 07:CF20: F2        .byte con_se_cb_F2   ; 
- D 2 - I - 0x01CF31 07:CF21: A1        .byte $A1   ; 
- D 2 - I - 0x01CF32 07:CF22: F3        .byte con_se_cb_F3   ; 
- D 2 - I - 0x01CF33 07:CF23: 11        .byte $11   ; 
- D 2 - I - 0x01CF34 07:CF24: F2        .byte con_se_cb_F2   ; 
- D 2 - I - 0x01CF35 07:CF25: C1        .byte $C1   ; 
- D 2 - I - 0x01CF36 07:CF26: 81        .byte $81   ; 
- D 2 - I - 0x01CF37 07:CF27: 31        .byte $31   ; 
- D 2 - I - 0x01CF38 07:CF28: 91        .byte $91   ; 
- D 2 - I - 0x01CF39 07:CF29: 81        .byte $81   ; 
- D 2 - I - 0x01CF3A 07:CF2A: 31        .byte $31   ; 
- D 2 - I - 0x01CF3B 07:CF2B: E7        .byte con_se_cb_E7, $50, $27   ; 
- D 2 - I - 0x01CF3E 07:CF2E: EA        .byte con_se_cb_EA, $00   ; 
- D 2 - I - 0x01CF40 07:CF30: E2        .byte con_se_cb_E2, $31   ; 
- D 2 - I - 0x01CF42 07:CF32: E1        .byte con_se_cb_E1, $0E   ; 
- D 2 - I - 0x01CF44 07:CF34: 29        .byte $29   ; 
- D 2 - I - 0x01CF45 07:CF35: E1        .byte con_se_cb_E1, $07   ; 
- D 2 - I - 0x01CF47 07:CF37: 01        .byte $01   ; 
- D 2 - I - 0x01CF48 07:CF38: EA        .byte con_se_cb_EA, $03   ; 
- D 2 - I - 0x01CF4A 07:CF3A: E2        .byte con_se_cb_E2, $3B   ; 
- D 2 - I - 0x01CF4C 07:CF3C: F2        .byte con_se_cb_F2   ; 
- D 2 - I - 0x01CF4D 07:CF3D: A1        .byte $A1   ; 
- D 2 - I - 0x01CF4E 07:CF3E: F3        .byte con_se_cb_F3   ; 
- D 2 - I - 0x01CF4F 07:CF3F: 11        .byte $11   ; 
- D 2 - I - 0x01CF50 07:CF40: E2        .byte con_se_cb_E2, $31   ; 
- D 2 - I - 0x01CF52 07:CF42: E5        .byte con_se_cb_E5, $18   ; 
- D 2 - I - 0x01CF54 07:CF44: EA        .byte con_se_cb_EA, $00   ; 
- D 2 - I - 0x01CF56 07:CF46: EC        .byte con_se_cb_EC, $2F, $11, $0A   ; 
- D 2 - I - 0x01CF5A 07:CF4A: 33        .byte $33   ; 
- D 2 - I - 0x01CF5B 07:CF4B: FF        .byte con_se_cb_stop   ; 



_off000_0x01CF5C_A4_01:
- D 2 - I - 0x01CF5C 07:CF4C: E9        .byte con_se_cb_E9, $03   ; 
- D 2 - I - 0x01CF5E 07:CF4E: E0        .byte con_se_cb_E0   ; 
- D 2 - I - 0x01CF5F 07:CF4F: 02        .byte $02   ; 
- D 2 - I - 0x01CF60 07:CF50: 74        .byte $74   ; 
- D 2 - I - 0x01CF61 07:CF51: 80        .byte $80   ; 
- D 2 - I - 0x01CF62 07:CF52: 00        .byte $00   ; 
- D 2 - I - 0x01CF63 07:CF53: F0        .byte con_se_cb_F0   ; 
- D 2 - I - 0x01CF64 07:CF54: 51        .byte $51   ; 
- D 2 - I - 0x01CF65 07:CF55: 61        .byte $61   ; 
- D 2 - I - 0x01CF66 07:CF56: 71        .byte $71   ; 
- D 2 - I - 0x01CF67 07:CF57: 81        .byte $81   ; 
- D 2 - I - 0x01CF68 07:CF58: 91        .byte $91   ; 
- D 2 - I - 0x01CF69 07:CF59: A1        .byte $A1   ; 
- D 2 - I - 0x01CF6A 07:CF5A: B1        .byte $B1   ; 
- D 2 - I - 0x01CF6B 07:CF5B: C1        .byte $C1   ; 
- D 2 - I - 0x01CF6C 07:CF5C: F1        .byte con_se_cb_F1   ; 
- D 2 - I - 0x01CF6D 07:CF5D: 11        .byte $11   ; 
- D 2 - I - 0x01CF6E 07:CF5E: 21        .byte $21   ; 
- D 2 - I - 0x01CF6F 07:CF5F: E0        .byte con_se_cb_E0   ; 
- D 2 - I - 0x01CF70 07:CF60: 07        .byte $07   ; 
- D 2 - I - 0x01CF71 07:CF61: 79        .byte $79   ; 
- D 2 - I - 0x01CF72 07:CF62: 83        .byte $83   ; 
- D 2 - I - 0x01CF73 07:CF63: C6        .byte $C6   ; 
- D 2 - I - 0x01CF74 07:CF64: E2        .byte con_se_cb_E2, $3B   ; 
- D 2 - I - 0x01CF76 07:CF66: EA        .byte con_se_cb_EA, $03   ; 
- D 2 - I - 0x01CF78 07:CF68: F0        .byte con_se_cb_F0   ; 
- D 2 - I - 0x01CF79 07:CF69: 31        .byte $31   ; 
- D 2 - I - 0x01CF7A 07:CF6A: E9        .byte con_se_cb_E9, $00   ; 
- D 2 - I - 0x01CF7C 07:CF6C: E8        .byte con_se_cb_E8, $83   ; 
- D 2 - I - 0x01CF7E 07:CF6E: F3        .byte con_se_cb_F3   ; 
- D 2 - I - 0x01CF7F 07:CF6F: 31        .byte $31   ; 
- D 2 - I - 0x01CF80 07:CF70: 21        .byte $21   ; 
- D 2 - I - 0x01CF81 07:CF71: F2        .byte con_se_cb_F2   ; 
- D 2 - I - 0x01CF82 07:CF72: A1        .byte $A1   ; 
- D 2 - I - 0x01CF83 07:CF73: F3        .byte con_se_cb_F3   ; 
- D 2 - I - 0x01CF84 07:CF74: 11        .byte $11   ; 
- D 2 - I - 0x01CF85 07:CF75: F2        .byte con_se_cb_F2   ; 
- D 2 - I - 0x01CF86 07:CF76: C1        .byte $C1   ; 
- D 2 - I - 0x01CF87 07:CF77: 81        .byte $81   ; 
- D 2 - I - 0x01CF88 07:CF78: 31        .byte $31   ; 
- D 2 - I - 0x01CF89 07:CF79: 91        .byte $91   ; 
- D 2 - I - 0x01CF8A 07:CF7A: 81        .byte $81   ; 
- D 2 - I - 0x01CF8B 07:CF7B: 31        .byte $31   ; 
- D 2 - I - 0x01CF8C 07:CF7C: EA        .byte con_se_cb_EA, $00   ; 
- D 2 - I - 0x01CF8E 07:CF7E: E7        .byte con_se_cb_E7, $50, $26   ; 
- D 2 - I - 0x01CF91 07:CF81: E2        .byte con_se_cb_E2, $31   ; 
- D 2 - I - 0x01CF93 07:CF83: E1        .byte con_se_cb_E1, $0E   ; 
- D 2 - I - 0x01CF95 07:CF85: 2A        .byte $2A   ; 
- D 2 - I - 0x01CF96 07:CF86: E1        .byte con_se_cb_E1, $07   ; 
- D 2 - I - 0x01CF98 07:CF88: E8        .byte con_se_cb_E8, $00   ; 
- D 2 - I - 0x01CF9A 07:CF8A: E9        .byte con_se_cb_E9, $01   ; 
- D 2 - I - 0x01CF9C 07:CF8C: E2        .byte con_se_cb_E2, $00   ; 
- D 2 - I - 0x01CF9E 07:CF8E: E0        .byte con_se_cb_E0   ; 
- D 2 - I - 0x01CF9F 07:CF8F: 07        .byte $07   ; 
- D 2 - I - 0x01CFA0 07:CF90: 71        .byte $71   ; 
- D 2 - I - 0x01CFA1 07:CF91: 80        .byte $80   ; 
- D 2 - I - 0x01CFA2 07:CF92: 00        .byte $00   ; 
- D 2 - I - 0x01CFA3 07:CF93: F1        .byte con_se_cb_F1   ; 
- D 2 - I - 0x01CFA4 07:CF94: A1        .byte $A1   ; 
- D 2 - I - 0x01CFA5 07:CF95: F2        .byte con_se_cb_F2   ; 
- D 2 - I - 0x01CFA6 07:CF96: 11        .byte $11   ; 
- D 2 - I - 0x01CFA7 07:CF97: EC        .byte con_se_cb_EC, $2F, $11, $0A   ; 
- D 2 - I - 0x01CFAB 07:CF9B: 33        .byte $33   ; 
- D 2 - I - 0x01CFAC 07:CF9C: FF        .byte con_se_cb_stop   ; 



_off000_0x01CFAD_A4_02:
- D 2 - I - 0x01CFAD 07:CF9D: E0        .byte con_se_cb_E0   ; 
- D 2 - I - 0x01CFAE 07:CF9E: 02        .byte $02   ; 
- D 2 - I - 0x01CFAF 07:CF9F: 00        .byte $00   ; 
- D 2 - I - 0x01CFB0 07:CFA0: F0        .byte con_se_cb_F0   ; 
- D 2 - I - 0x01CFB1 07:CFA1: 51        .byte $51   ; 
- D 2 - I - 0x01CFB2 07:CFA2: 61        .byte $61   ; 
- D 2 - I - 0x01CFB3 07:CFA3: 71        .byte $71   ; 
- D 2 - I - 0x01CFB4 07:CFA4: 81        .byte $81   ; 
- D 2 - I - 0x01CFB5 07:CFA5: 91        .byte $91   ; 
- D 2 - I - 0x01CFB6 07:CFA6: A1        .byte $A1   ; 
- D 2 - I - 0x01CFB7 07:CFA7: B1        .byte $B1   ; 
- D 2 - I - 0x01CFB8 07:CFA8: C1        .byte $C1   ; 
- D 2 - I - 0x01CFB9 07:CFA9: F1        .byte con_se_cb_F1   ; 
- D 2 - I - 0x01CFBA 07:CFAA: 11        .byte $11   ; 
- D 2 - I - 0x01CFBB 07:CFAB: 21        .byte $21   ; 
- D 2 - I - 0x01CFBC 07:CFAC: E0        .byte con_se_cb_E0   ; 
- D 2 - I - 0x01CFBD 07:CFAD: 07        .byte $07   ; 
- D 2 - I - 0x01CFBE 07:CFAE: 05        .byte $05   ; 
- D 2 - I - 0x01CFBF 07:CFAF: F2        .byte con_se_cb_F2   ; 
- D 2 - I - 0x01CFC0 07:CFB0: 31        .byte $31   ; 
- D 2 - I - 0x01CFC1 07:CFB1: F3        .byte con_se_cb_F3   ; 
- D 2 - I - 0x01CFC2 07:CFB2: 31        .byte $31   ; 
- D 2 - I - 0x01CFC3 07:CFB3: F2        .byte con_se_cb_F2   ; 
- D 2 - I - 0x01CFC4 07:CFB4: A1        .byte $A1   ; 
- D 2 - I - 0x01CFC5 07:CFB5: 61        .byte $61   ; 
- D 2 - I - 0x01CFC6 07:CFB6: 11        .byte $11   ; 
- D 2 - I - 0x01CFC7 07:CFB7: 51        .byte $51   ; 
- D 2 - I - 0x01CFC8 07:CFB8: 81        .byte $81   ; 
- D 2 - I - 0x01CFC9 07:CFB9: A1        .byte $A1   ; 
- D 2 - I - 0x01CFCA 07:CFBA: 91        .byte $91   ; 
- D 2 - I - 0x01CFCB 07:CFBB: B1        .byte $B1   ; 
- D 2 - I - 0x01CFCC 07:CFBC: C1        .byte $C1   ; 
- D 2 - I - 0x01CFCD 07:CFBD: E0        .byte con_se_cb_E0   ; 
- D 2 - I - 0x01CFCE 07:CFBE: 07        .byte $07   ; 
- D 2 - I - 0x01CFCF 07:CFBF: 00        .byte $00   ; 
- D 2 - I - 0x01CFD0 07:CFC0: E7        .byte con_se_cb_E7, $55, $32   ; 
- D 2 - I - 0x01CFD3 07:CFC3: F3        .byte con_se_cb_F3   ; 
- D 2 - I - 0x01CFD4 07:CFC4: 20        .byte $20   ; 
- D 2 - I - 0x01CFD5 07:CFC5: 23        .byte $23   ; 
- D 2 - I - 0x01CFD6 07:CFC6: E0        .byte con_se_cb_E0   ; 
- D 2 - I - 0x01CFD7 07:CFC7: 07        .byte $07   ; 
- D 2 - I - 0x01CFD8 07:CFC8: 05        .byte $05   ; 
- D 2 - I - 0x01CFD9 07:CFC9: F1        .byte con_se_cb_F1   ; 
- D 2 - I - 0x01CFDA 07:CFCA: A1        .byte $A1   ; 
- D 2 - I - 0x01CFDB 07:CFCB: F2        .byte con_se_cb_F2   ; 
- D 2 - I - 0x01CFDC 07:CFCC: 11        .byte $11   ; 
- D 2 - I - 0x01CFDD 07:CFCD: 32        .byte $32   ; 
- D 2 - I - 0x01CFDE 07:CFCE: FF        .byte con_se_cb_stop   ; 



_off000_0x01CFDF_A4_03:
- D 2 - I - 0x01CFDF 07:CFCF: E0        .byte con_se_cb_E0   ; 
- D 2 - I - 0x01CFE0 07:CFD0: 02        .byte $02   ; 
- D 2 - I - 0x01CFE1 07:CFD1: 0A        .byte $0A   ; 
- D 2 - I - 0x01CFE2 07:CFD2: E1        .byte con_se_cb_E1, $07   ; 
- D 2 - I - 0x01CFE4 07:CFD4: 51        .byte $51   ; 
- D 2 - I - 0x01CFE5 07:CFD5: 91        .byte $91   ; 
- D 2 - I - 0x01CFE6 07:CFD6: 81        .byte $81   ; 
- D 2 - I - 0x01CFE7 07:CFD7: 71        .byte $71   ; 
- D 2 - I - 0x01CFE8 07:CFD8: B1        .byte $B1   ; 
- D 2 - I - 0x01CFE9 07:CFD9: 91        .byte $91   ; 
- D 2 - I - 0x01CFEA 07:CFDA: 81        .byte $81   ; 
- D 2 - I - 0x01CFEB 07:CFDB: 71        .byte $71   ; 
- D 2 - I - 0x01CFEC 07:CFDC: B1        .byte $B1   ; 
- D 2 - I - 0x01CFED 07:CFDD: C1        .byte $C1   ; 
- D 2 - I - 0x01CFEE 07:CFDE: C1        .byte $C1   ; 
- D 2 - I - 0x01CFEF 07:CFDF: 36        .byte $36   ; 
- D 2 - I - 0x01CFF0 07:CFE0: E1        .byte con_se_cb_E1, $01   ; 
- D 2 - I - 0x01CFF2 07:CFE2: 94        .byte $94   ; 
- D 2 - I - 0x01CFF3 07:CFE3: 95        .byte $95   ; 
- D 2 - I - 0x01CFF4 07:CFE4: 75        .byte $75   ; 
- D 2 - I - 0x01CFF5 07:CFE5: 84        .byte $84   ; 
- D 2 - I - 0x01CFF6 07:CFE6: 85        .byte $85   ; 
- D 2 - I - 0x01CFF7 07:CFE7: 85        .byte $85   ; 
- D 2 - I - 0x01CFF8 07:CFE8: 74        .byte $74   ; 
- D 2 - I - 0x01CFF9 07:CFE9: 75        .byte $75   ; 
- D 2 - I - 0x01CFFA 07:CFEA: 85        .byte $85   ; 
- D 2 - I - 0x01CFFB 07:CFEB: 94        .byte $94   ; 
- D 2 - I - 0x01CFFC 07:CFEC: 95        .byte $95   ; 
- D 2 - I - 0x01CFFD 07:CFED: 75        .byte $75   ; 
- D 2 - I - 0x01CFFE 07:CFEE: 84        .byte $84   ; 
- D 2 - I - 0x01CFFF 07:CFEF: 85        .byte $85   ; 
- D 2 - I - 0x01D000 07:CFF0: 85        .byte $85   ; 
- D 2 - I - 0x01D001 07:CFF1: 74        .byte $74   ; 
- D 2 - I - 0x01D002 07:CFF2: 75        .byte $75   ; 
- D 2 - I - 0x01D003 07:CFF3: 75        .byte $75   ; 
- D 2 - I - 0x01D004 07:CFF4: B7        .byte $B7   ; 
- D 2 - I - 0x01D005 07:CFF5: C7        .byte $C7   ; 
- D 2 - I - 0x01D006 07:CFF6: C7        .byte $C7   ; 
- D 2 - I - 0x01D007 07:CFF7: 51        .byte $51   ; 
- D 2 - I - 0x01D008 07:CFF8: FF        .byte con_se_cb_stop   ; 



sub_0x01D009:
C - - - - - 0x01D009 07:CFF9: A9 0A     LDA #con_prg_pair + $0A
C - - - - - 0x01D00B 07:CFFB: 20 4C F3  JSR sub_0x01F35C_prg_bankswitch
C - - - - - 0x01D00E 07:CFFE: 20 EE BF  JSR sub_0x007FFE_copy_buttons
C - - - - - 0x01D011 07:D001: E6 23     INC ram_frm_cnt
C - - - - - 0x01D013 07:D003: A0 3D     LDY #$3D
C - - - - - 0x01D015 07:D005: A5 75     LDA ram_stage
C - - - - - 0x01D017 07:D007: C9 03     CMP #$03
C - - - - - 0x01D019 07:D009: D0 02     BNE bra_D00D
C - - - - - 0x01D01B 07:D00B: A0 3D     LDY #$3D
bra_D00D:
; bzk optimize, Y is always 3D despite conditions
C - - - - - 0x01D01D 07:D00D: 84 3F     STY ram_garbage_loop_counter
; bzk optimize, code is executed each frame
; I suppose there is no need to constantly overwite this address
; it should be one only once here 0x01436E
C - - - - - 0x01D01F 07:D00F: 0A        ASL
C - - - - - 0x01D020 07:D010: 85 88     STA ram_x2_stage
C - - - - - 0x01D022 07:D012: A5 20     LDA ram_script_hi
C - - - - - 0x01D024 07:D014: 0A        ASL
C - - - - - 0x01D025 07:D015: A8        TAY
C - - - - - 0x01D026 07:D016: B9 23 D0  LDA tbl_D023,Y
C - - - - - 0x01D029 07:D019: 85 00     STA ram_0000_t19_jmp
C - - - - - 0x01D02B 07:D01B: B9 24 D0  LDA tbl_D023 + $01,Y
C - - - - - 0x01D02E 07:D01E: 85 01     STA ram_0000_t19_jmp + $01
C - - - - - 0x01D030 07:D020: 6C 00 00  JMP (ram_0000_t19_jmp)



tbl_D023:
- D 2 - - - 0x01D033 07:D023: 2F D0     .word ofs_000_D02F_00
- D 2 - - - 0x01D035 07:D025: 69 D0     .word ofs_000_D069_01
- D 2 - - - 0x01D037 07:D027: 77 D0     .word ofs_000_D077_02
- D 2 - - - 0x01D039 07:D029: DE D6     .word ofs_000_D6DE_03_gameplay
- D 2 - - - 0x01D03B 07:D02B: 80 D0     .word ofs_000_D080_04
- D 2 - - - 0x01D03D 07:D02D: 88 D0     .word ofs_000_D088_05_game_over



ofs_000_D02F_00:
; con_0020_00
C - - J - - 0x01D03F 07:D02F: A6 21     LDX ram_0021_t01
C - - - - - 0x01D041 07:D031: D0 12     BNE bra_D045
; X = 00
C - - - - - 0x01D043 07:D033: 86 27     STX ram_0027_useless_00
C - - - - - 0x01D045 07:D035: 20 F9 F2  JSR sub_0x01F309_clear_0040_00DF
C - - - - - 0x01D048 07:D038: 20 09 F3  JSR sub_0x01F319_clear_0400_07FF
C - - - - - 0x01D04B 07:D03B: 20 1C F3  JSR sub_0x01F32C
C - - - - - 0x01D04E 07:D03E: A9 7C     LDA #con_chr_bank + $7C
C - - - - - 0x01D050 07:D040: 85 77     STA ram_chr_bank
bra_D042:
C - - - - - 0x01D052 07:D042: E6 21     INC ram_0021_t01
bra_D044_RTS:
C - - - - - 0x01D054 07:D044: 60        RTS
bra_D045:
C - - - - - 0x01D055 07:D045: CA        DEX
C - - - - - 0x01D056 07:D046: D0 14     BNE bra_D05C
C - - - - - 0x01D058 07:D048: A9 07     LDA #con_prg_pair + $07
C - - - - - 0x01D05A 07:D04A: 20 4C F3  JSR sub_0x01F35C_prg_bankswitch
C - - - - - 0x01D05D 07:D04D: 20 01 80  JSR sub_0x014011
C - - - - - 0x01D060 07:D050: A5 22     LDA ram_0022_t02
C - - - - - 0x01D062 07:D052: C9 3A     CMP #$3A
C - - - - - 0x01D064 07:D054: D0 EE     BNE bra_D044_RTS
C - - - - - 0x01D066 07:D056: A9 40     LDA #$40
C - - - - - 0x01D068 07:D058: 85 4A     STA ram_004A_temp
C - - - - - 0x01D06A 07:D05A: D0 E6     BNE bra_D042    ; jmp
bra_D05C:
C - - - - - 0x01D06C 07:D05C: C6 4A     DEC ram_004A_temp
C - - - - - 0x01D06E 07:D05E: D0 E4     BNE bra_D044_RTS
loc_D060_prepare_next_script:
; -> con_0020_02
; -> con_0020_gameplay
C D 2 - - - 0x01D070 07:D060: E6 20     INC ram_script_hi
loc_D062:
sub_D062:
sub_0x01D072:
C D 2 - - - 0x01D072 07:D062: A9 00     LDA #$00
C - - - - - 0x01D074 07:D064: 85 21     STA ram_0021_t01
C - - - - - 0x01D076 07:D066: 85 22     STA ram_0022_t02
C - - - - - 0x01D078 07:D068: 60        RTS



ofs_000_D069_01:
; con_0020_01
C - - J - - 0x01D079 07:D069: A5 42     LDA ram_btn_hold_1
C - - - - - 0x01D07B 07:D06B: 05 40     ORA ram_btn_press_1
C - - - - - 0x01D07D 07:D06D: 29 10     AND #con_btn_Start
C - - - - - 0x01D07F 07:D06F: D0 D3     BNE bra_D044_RTS
C - - - - - 0x01D081 07:D071: 20 97 D1  JSR sub_D197
C - - - - - 0x01D084 07:D074: 4C 60 D0  JMP loc_D060_prepare_next_script



ofs_000_D077_02:
; con_0020_02
C - - J - - 0x01D087 07:D077: 20 97 D1  JSR sub_D197
C - - - - - 0x01D08A 07:D07A: 20 FD F2  JSR sub_0x01F30D_clear_0060_00DF
C - - - - - 0x01D08D 07:D07D: 4C 60 D0  JMP loc_D060_prepare_next_script



ofs_000_D080_04:
; con_0020_04
C - - J - - 0x01D090 07:D080: A9 07     LDA #con_prg_pair + $07
C - - - - - 0x01D092 07:D082: 20 4C F3  JSR sub_0x01F35C_prg_bankswitch
C - - - - - 0x01D095 07:D085: 4C 20 80  JMP loc_0x014030



ofs_000_D088_05_game_over:
; con_0020_game_over
C - - J - - 0x01D098 07:D088: A4 21     LDY ram_0021_t01
C - - - - - 0x01D09A 07:D08A: D0 0A     BNE bra_D096
C - - - - - 0x01D09C 07:D08C: C6 4A     DEC ram_004A_t02_game_over_screen_delay
C - - - - - 0x01D09E 07:D08E: D0 33     BNE bra_D0C3_RTS
; display game over screen
C - - - - - 0x01D0A0 07:D090: A9 02     LDA #$02
C - - - - - 0x01D0A2 07:D092: 85 25     STA ram_disable_rendering_timer
C - - - - - 0x01D0A4 07:D094: D0 2B     BNE bra_D0C1    ; jmp
bra_D096:
C - - - - - 0x01D0A6 07:D096: 88        DEY
C - - - - - 0x01D0A7 07:D097: D0 2B     BNE bra_D0C4
C - - - - - 0x01D0A9 07:D099: 20 23 D2  JSR sub_D223_set_scroll_00
; Y = 00
C - - - - - 0x01D0AC 07:D09C: 84 5A     STY ram_005A_flag
C - - - - - 0x01D0AE 07:D09E: 84 83     STY ram_bullet_counter
C - - - - - 0x01D0B0 07:D0A0: 84 84     STY ram_bullet_counter + $01
; counter before game over options will appear at game over screen
C - - - - - 0x01D0B2 07:D0A2: 84 4A     STY ram_004A_t01_game_over_options_delay
C - - - - - 0x01D0B4 07:D0A4: A5 FF     LDA ram_for_2000
C - - - - - 0x01D0B6 07:D0A6: 29 FC     AND #$FC
C - - - - - 0x01D0B8 07:D0A8: 85 FF     STA ram_for_2000
C - - - - - 0x01D0BA 07:D0AA: A9 7C     LDA #con_chr_bank + $7C
C - - - - - 0x01D0BC 07:D0AC: 85 77     STA ram_chr_bank
C - - - - - 0x01D0BE 07:D0AE: A9 0A     LDA #con_prg_pair + $0A
C - - - - - 0x01D0C0 07:D0B0: 20 4C F3  JSR sub_0x01F35C_prg_bankswitch
C - - - - - 0x01D0C3 07:D0B3: 20 94 BF  JSR sub_0x007FA4_clear_data
C - - - - - 0x01D0C6 07:D0B6: 20 97 D1  JSR sub_D197
C - - - - - 0x01D0C9 07:D0B9: 20 27 F3  JSR sub_0x01F337
C - - - - - 0x01D0CC 07:D0BC: A9 A4     LDA #con_music_A4
C - - - - - 0x01D0CE 07:D0BE: 20 CA FE  JSR sub_0x01FEDA_add_music_to_queue
bra_D0C1:
loc_D0C1:
C D 2 - - - 0x01D0D1 07:D0C1: E6 21     INC ram_0021_t01
bra_D0C3_RTS:
C - - - - - 0x01D0D3 07:D0C3: 60        RTS
bra_D0C4:
C - - - - - 0x01D0D4 07:D0C4: 88        DEY
C - - - - - 0x01D0D5 07:D0C5: D0 04     BNE bra_D0CB
C - - - - - 0x01D0D7 07:D0C7: A9 14     LDA #con_D280_game_over
C - - - - - 0x01D0D9 07:D0C9: D0 12     BNE bra_D0DD    ; jmp
bra_D0CB:
C - - - - - 0x01D0DB 07:D0CB: 88        DEY
C - - - - - 0x01D0DC 07:D0CC: D0 15     BNE bra_D0E3
C - - - - - 0x01D0DE 07:D0CE: C6 4A     DEC ram_004A_t01_game_over_options_delay
C - - - - - 0x01D0E0 07:D0D0: D0 F1     BNE bra_D0C3_RTS
; draw game over options
C - - - - - 0x01D0E2 07:D0D2: A9 00     LDA #$00
C - - - - - 0x01D0E4 07:D0D4: 85 22     STA ram_0022_t01
C - - - - - 0x01D0E6 07:D0D6: A9 21     LDA #con_D280_continue
C - - - - - 0x01D0E8 07:D0D8: 20 3C D2  JSR sub_D23C_draw_text
C - - - - - 0x01D0EB 07:D0DB: A9 2C     LDA #con_D280_end
bra_D0DD:
C - - - - - 0x01D0ED 07:D0DD: 20 3C D2  JSR sub_D23C_draw_text
C - - - - - 0x01D0F0 07:D0E0: 4C C1 D0  JMP loc_D0C1
bra_D0E3:
C - - - - - 0x01D0F3 07:D0E3: 88        DEY
C - - - - - 0x01D0F4 07:D0E4: D0 32     BNE bra_D118
C - - - - - 0x01D0F6 07:D0E6: A5 40     LDA ram_btn_press_1
C - - - - - 0x01D0F8 07:D0E8: 05 42     ORA ram_btn_hold_1
C - - - - - 0x01D0FA 07:D0EA: 29 10     AND #con_btn_Start
C - - - - - 0x01D0FC 07:D0EC: F0 07     BEQ bra_D0F5
C - - - - - 0x01D101 07:D0F1: E6 21     INC ram_0021_t01
C - - - - - 0x01D103 07:D0F3: D0 17     BNE bra_D10C
bra_D0F5:
C - - - - - 0x01D105 07:D0F5: A5 40     LDA ram_btn_press_1
C - - - - - 0x01D107 07:D0F7: 29 0C     AND #con_btns_UD
C - - - - - 0x01D109 07:D0F9: F0 0B     BEQ bra_D106
C - - - - - 0x01D10B 07:D0FB: A9 00     LDA #$00
C - - - - - 0x01D10D 07:D0FD: 20 0E D1  JSR sub_D10E
C - - - - - 0x01D110 07:D100: A5 22     LDA ram_0022_t01
C - - - - - 0x01D112 07:D102: 49 01     EOR #$01
C - - - - - 0x01D114 07:D104: 85 22     STA ram_0022_t01
bra_D106:
C - - - - - 0x01D116 07:D106: A5 23     LDA ram_frm_cnt
C - - - - - 0x01D118 07:D108: 29 10     AND #$10
C - - - - - 0x01D11A 07:D10A: F0 02     BEQ bra_D10E
bra_D10C:
C - - - - - 0x01D11C 07:D10C: A9 80     LDA #$80
bra_D10E:
sub_D10E:
C - - - - - 0x01D11E 07:D10E: A4 22     LDY ram_0022_t01
C - - - - - 0x01D120 07:D110: 19 16 D1  ORA tbl_D116,Y
C - - - - - 0x01D123 07:D113: 4C 3C D2  JMP loc_D23C_draw_text



tbl_D116:
- D 2 - - - 0x01D126 07:D116: 21        .byte con_D280_continue   ; 00 
- D 2 - - - 0x01D127 07:D117: 2C        .byte con_D280_end   ; 01 



bra_D118:
C - - - - - 0x01D128 07:D118: A5 22     LDA ram_0022_t01
C - - - - - 0x01D12A 07:D11A: F0 07     BEQ bra_D123
C - - - - - 0x01D12C 07:D11C: A9 00     LDA #con_0020_00
C - - - - - 0x01D12E 07:D11E: 85 20     STA ram_script_hi
C - - - - - 0x01D130 07:D120: 4C 62 D0  JMP loc_D062
bra_D123:
C - - - - - 0x01D133 07:D123: A9 62     LDA #con_music_62
C - - - - - 0x01D135 07:D125: 20 CA FE  JSR sub_0x01FEDA_add_music_to_queue
C - - - - - 0x01D138 07:D128: 20 74 D1  JSR sub_D174
C - - - - - 0x01D13B 07:D12B: 8D C8 07  STA ram_07C8_unk
C - - - - - 0x01D13E 07:D12E: 8D C9 07  STA ram_07C8_unk + $01
C - - - - - 0x01D141 07:D131: 85 00     STA ram_0000_t6C
C - - - - - 0x01D143 07:D133: A0 03     LDY #$03
bra_D135_loop:
C - - - - - 0x01D145 07:D135: B9 7F 00  LDA ram_player_stats,Y
C - - - - - 0x01D148 07:D138: C9 30     CMP #$30
C - - - - - 0x01D14A 07:D13A: 90 02     BCC bra_D13E
C - - - - - 0x01D14C 07:D13C: A9 30     LDA #$30
bra_D13E:
C - - - - - 0x01D14E 07:D13E: 05 00     ORA ram_0000_t6C
C - - - - - 0x01D150 07:D140: 85 00     STA ram_0000_t6C
C - - - - - 0x01D152 07:D142: 88        DEY
C - - - - - 0x01D153 07:D143: 10 F0     BPL bra_D135_loop
C - - - - - 0x01D155 07:D145: 85 00     STA ram_0000_t6D
C - - - - - 0x01D157 07:D147: A0 01     LDY #$01
C - - - - - 0x01D159 07:D149: A9 20     LDA #$20
bra_D14B_loop:
C - - - - - 0x01D15B 07:D14B: AA        TAX
C - - - - - 0x01D15C 07:D14C: 25 00     AND ram_0000_t6D
C - - - - - 0x01D15E 07:D14E: F0 0A     BEQ bra_D15A
C - - - - - 0x01D160 07:D150: A9 2E     LDA #$2E
C - - - - - 0x01D162 07:D152: 99 82 07  STA ram_0782_unk,Y
C - - - - - 0x01D165 07:D155: A9 0A     LDA #$0A
C - - - - - 0x01D167 07:D157: 99 82 06  STA ram_0682_obj,Y
bra_D15A:
C - - - - - 0x01D16A 07:D15A: 8A        TXA
C - - - - - 0x01D16B 07:D15B: 4A        LSR
C - - - - - 0x01D16C 07:D15C: 88        DEY
C - - - - - 0x01D16D 07:D15D: 10 EC     BPL bra_D14B_loop
C - - - - - 0x01D16F 07:D15F: A0 02     LDY #$02
C - - - - - 0x01D171 07:D161: 84 44     STY ram_script_lo
C - - - - - 0x01D173 07:D163: C8        INY ; 03 con_0020_gameplay
C - - - - - 0x01D174 07:D164: 84 20     STY ram_script_hi
C - - - - - 0x01D176 07:D166: 20 35 F6  JSR sub_0x01F645_set_default_3_lives
C - - - - - 0x01D179 07:D169: 4C 62 D0  JMP loc_D062



sub_D174:
sub_0x01D184:
C - - - - - 0x01D184 07:D174: A9 21     LDA #con_F3D6_21
C - - - - - 0x01D186 07:D176: 20 B3 F3  JSR sub_0x01F3C3_execute_script
C - - - - - 0x01D189 07:D179: A9 00     LDA #$00
C - - - - - 0x01D18B 07:D17B: 8D 98 06  STA ram_0682_obj + $16
C - - - - - 0x01D18E 07:D17E: 8D 99 06  STA ram_0682_obj + $17
C - - - - - 0x01D191 07:D181: 60        RTS



sub_D197:
loc_D197:
sub_0x01D1A7:
C D 2 - - - 0x01D1A7 07:D197: A5 36     LDA ram_prg_banks_pair
C - - - - - 0x01D1A9 07:D199: 48        PHA
C - - - - - 0x01D1AA 07:D19A: A9 01     LDA #con_prg_pair + $01
C - - - - - 0x01D1AC 07:D19C: 20 4C F3  JSR sub_0x01F35C_prg_bankswitch
C - - - - - 0x01D1AF 07:D19F: A2 00     LDX #con_D22A_clear_nametables
C - - - - - 0x01D1B1 07:D1A1: 20 A8 D1  JSR sub_D1A8
C - - - - - 0x01D1B4 07:D1A4: 68        PLA
C - - - - - 0x01D1B5 07:D1A5: 4C 4C F3  JMP loc_0x01F35C_prg_bankswitch



sub_D1A8:
sub_0x01D1B8:
loc_0x01D1B8:
ofs_006_0x01D1B8_19:
; con_F3D6_19
ofs_006_0x01D1B8_1A:
; con_F3D6_1A
C D 2 - - - 0x01D1B8 07:D1A8: 20 15 D2  JSR sub_D215_prepare_pointers_for_static_screen
C - - - - - 0x01D1BB 07:D1AB: 20 20 D2  JSR sub_D220_disable_rendering_and_set_scroll_00
loc_D1AE_loop:
C D 2 - - - 0x01D1BE 07:D1AE: AD 02 20  LDA $2002
C - - - - - 0x01D1C1 07:D1B1: A0 01     LDY #$01
C - - - - - 0x01D1C3 07:D1B3: B1 00     LDA (ram_0000_t0C_static_screen_data),Y
C - - - - - 0x01D1C5 07:D1B5: 8D 06 20  STA $2006
C - - - - - 0x01D1C8 07:D1B8: 88        DEY ; 00
C - - - - - 0x01D1C9 07:D1B9: B1 00     LDA (ram_0000_t0C_static_screen_data),Y
C - - - - - 0x01D1CB 07:D1BB: 8D 06 20  STA $2006
loc_0x01D1CE:
C D 2 - - - 0x01D1CE 07:D1BE: A2 00     LDX #$00
C - - - - - 0x01D1D0 07:D1C0: A9 02     LDA #$02
loc_D1C2_loop:
C D 2 - - - 0x01D1D2 07:D1C2: 20 0B D2  JSR sub_D20B_increase_0000_pointer_by_A
C - - - - - 0x01D1D5 07:D1C5: A0 00     LDY #$00
C - - - - - 0x01D1D7 07:D1C7: B1 00     LDA (ram_0000_t0C_static_screen_data),Y
C - - - - - 0x01D1D9 07:D1C9: C9 FF     CMP #$FF
C - - - - - 0x01D1DB 07:D1CB: F0 3B     BEQ bra_D208_FF
C - - - - - 0x01D1DD 07:D1CD: C9 7F     CMP #$7F
C - - - - - 0x01D1DF 07:D1CF: F0 2F     BEQ bra_D200_7F
C - - - - - 0x01D1E1 07:D1D1: A8        TAY
C - - - - - 0x01D1E2 07:D1D2: 10 1A     BPL bra_D1EE
; 80-FE
C - - - - - 0x01D1E4 07:D1D4: 29 7F     AND #$7F
C - - - - - 0x01D1E6 07:D1D6: 85 02     STA ram_0002_t55
C - - - - - 0x01D1E8 07:D1D8: A0 01     LDY #$01
bra_D1DA_loop:
C - - - - - 0x01D1EA 07:D1DA: B1 00     LDA (ram_0000_t0C_static_screen_data),Y
C - - - - - 0x01D1EC 07:D1DC: 8D 07 20  STA $2007
C - - - - - 0x01D1EF 07:D1DF: C4 02     CPY ram_0002_t55
C - - - - - 0x01D1F1 07:D1E1: F0 03     BEQ bra_D1E6
C - - - - - 0x01D1F3 07:D1E3: C8        INY
C - - - - - 0x01D1F4 07:D1E4: D0 F4     BNE bra_D1DA_loop   ; jmp?
bra_D1E6:
C - - - - - 0x01D1F6 07:D1E6: A9 01     LDA #$01
C - - - - - 0x01D1F8 07:D1E8: 18        CLC
C - - - - - 0x01D1F9 07:D1E9: 65 02     ADC ram_0002_t55
bra_D1EB:
C - - - - - 0x01D1FB 07:D1EB: 4C C2 D1  JMP loc_D1C2_loop
bra_D1EE:
; 00-7E
C - - - - - 0x01D1FE 07:D1EE: A0 01     LDY #$01
C - - - - - 0x01D200 07:D1F0: 85 02     STA ram_0002_t56
C - - - - - 0x01D202 07:D1F2: B1 00     LDA (ram_0000_t0C_static_screen_data),Y
C - - - - - 0x01D204 07:D1F4: A4 02     LDY ram_0002_t56
bra_D1F6_loop:
C - - - - - 0x01D206 07:D1F6: 8D 07 20  STA $2007
C - - - - - 0x01D209 07:D1F9: 88        DEY
C - - - - - 0x01D20A 07:D1FA: D0 FA     BNE bra_D1F6_loop
C - - - - - 0x01D20C 07:D1FC: A9 02     LDA #$02
C - - - - - 0x01D20E 07:D1FE: D0 EB     BNE bra_D1EB    ; jmp
bra_D200_7F:
C - - - - - 0x01D210 07:D200: A9 01     LDA #$01
C - - - - - 0x01D212 07:D202: 20 0B D2  JSR sub_D20B_increase_0000_pointer_by_A
C - - - - - 0x01D215 07:D205: 4C AE D1  JMP loc_D1AE_loop
bra_D208_FF:
C - - - - - 0x01D218 07:D208: 4C 70 FE  JMP loc_0x01FE80



sub_D20B_increase_0000_pointer_by_A:
; in
    ; A = how much to add
    ; X = address offset
; bzk optimize, X is always 00
C - - - - - 0x01D21B 07:D20B: 18        CLC
C - - - - - 0x01D21C 07:D20C: 75 00     ADC ram_0000_t0C_static_screen_data,X
C - - - - - 0x01D21E 07:D20E: 95 00     STA ram_0000_t0C_static_screen_data,X
C - - - - - 0x01D220 07:D210: 90 02     BCC bra_D214_RTS    ; if not overflow
C - - - - - 0x01D222 07:D212: F6 01     INC ram_0000_t0C_static_screen_data + $01,X
bra_D214_RTS:
C - - - - - 0x01D224 07:D214: 60        RTS



sub_D215_prepare_pointers_for_static_screen:
sub_0x01D225_prepare_pointers_for_static_screen:
C - - - - - 0x01D225 07:D215: BD 2A D2  LDA tbl_D22A_static_screens,X
C - - - - - 0x01D228 07:D218: 85 00     STA ram_0000_t0C_static_screen_data
C - - - - - 0x01D22A 07:D21A: BD 2B D2  LDA tbl_D22A_static_screens + $01,X
C - - - - - 0x01D22D 07:D21D: 85 01     STA ram_0000_t0C_static_screen_data + $01
C - - - - - 0x01D22F 07:D21F: 60        RTS



sub_D220_disable_rendering_and_set_scroll_00:
sub_0x01D230_disable_rendering_and_set_scroll_00:
C - - - - - 0x01D230 07:D220: 20 93 FE  JSR sub_0x01FEA3_disable_rendering
sub_D223_set_scroll_00:
C - - - - - 0x01D233 07:D223: A9 00     LDA #$00
C - - - - - 0x01D235 07:D225: 85 FD     STA ram_scroll_X
C - - - - - 0x01D237 07:D227: 85 FC     STA ram_scroll_Y
C - - - - - 0x01D239 07:D229: 60        RTS



tbl_D22A_static_screens:
; bank is selected via 0x01F372 when code jumps to it
; see con_D22A
- D 2 - - - 0x01D23A 07:D22A: A2 A9     .word _off012_0x0169B2_00_clear_nametables
- - - - - - 0x01D23C 07:D22C: A2 A9     .word _off012_0x0169B2_02   ; unused, index doesn't exist
- D 2 - - - 0x01D23E 07:D22E: 54 95     .word _off012_0x015564_04_title_screen
- - - - - - 0x01D240 07:D230: A2 A9     .word _off012_0x0169B2_06   ; unused, index doesn't exist
- D 2 - - - 0x01D242 07:D232: CC BE     .word _off012_0x007EDC_08_cutscene_phone
- D 2 - - - 0x01D244 07:D234: 7A AD     .word _off012_0x016D8A_0A_cutscene_crime
- D 2 - - - 0x01D246 07:D236: 09 BD     .word _off012_0x01BD19_0C_pause
- D 2 - - - 0x01D248 07:D238: D3 92     .word _off012_0x0152E3_0E_player_select
- D 2 - - - 0x01D24A 07:D23A: 23 BE     .word _off012_0x017E33_10_credits



sub_D23C_draw_text:
loc_D23C_draw_text:
sub_0x01D24C_draw_text:
; in
    ; A
        ; +80 = hide text
C D 2 - - - 0x01D24C 07:D23C: 0A        ASL
C - - - - - 0x01D24D 07:D23D: A8        TAY
C - - - - - 0x01D24E 07:D23E: 90 04     BCC bra_D244
C - - - - - 0x01D250 07:D240: A9 00     LDA #$00
C - - - - - 0x01D252 07:D242: F0 02     BEQ bra_D246    ; jmp
bra_D244:
C - - - - - 0x01D254 07:D244: A9 FF     LDA #$FF
bra_D246:
C - - - - - 0x01D256 07:D246: 85 02     STA ram_0002_t57_hide_text_flag
C - - - - - 0x01D258 07:D248: 98        TYA
C - - - - - 0x01D259 07:D249: 4A        LSR
C - - - - - 0x01D25A 07:D24A: A8        TAY
C - - - - - 0x01D25B 07:D24B: A9 01     LDA #$01
C - - - - - 0x01D25D 07:D24D: 20 77 D2  JSR sub_D277_write_to_buffer___unk_X
C - - - - - 0x01D260 07:D250: B9 80 D2  LDA tbl_D280_menu_text,Y
C - - - - - 0x01D263 07:D253: 20 79 D2  JSR sub_D279_write_to_buffer
C - - - - - 0x01D266 07:D256: C8        INY
C - - - - - 0x01D267 07:D257: B9 80 D2  LDA tbl_D280_menu_text,Y
C - - - - - 0x01D26A 07:D25A: 20 79 D2  JSR sub_D279_write_to_buffer
C - - - - - 0x01D26D 07:D25D: C8        INY
loc_D25E_loop:
C D 2 - - - 0x01D26E 07:D25E: B9 80 D2  LDA tbl_D280_menu_text,Y
C - - - - - 0x01D271 07:D261: C8        INY
C - - - - - 0x01D272 07:D262: C9 7F     CMP #$7F
C - - - - - 0x01D274 07:D264: F0 0F     BEQ bra_D275_close_buffer
C - - - - - 0x01D276 07:D266: AA        TAX
C - - - - - 0x01D277 07:D267: A5 02     LDA ram_0002_t57_hide_text_flag
C - - - - - 0x01D279 07:D269: F0 04     BEQ bra_D26F_print_letter
; replace letter with space
C - - - - - 0x01D27B 07:D26B: 8A        TXA
C - - - - - 0x01D27C 07:D26C: 38        SEC
C - - - - - 0x01D27D 07:D26D: E9 30     SBC #$30
bra_D26F_print_letter:
C - - - - - 0x01D27F 07:D26F: 20 77 D2  JSR sub_D277_write_to_buffer___unk_X
C - - - - - 0x01D282 07:D272: 4C 5E D2  JMP loc_D25E_loop
bra_D275_close_buffer:
C - - - - - 0x01D285 07:D275: A9 FF     LDA #$FF
sub_D277_write_to_buffer___unk_X:
loc_0x01D287_write_to_buffer___unk_X:
sub_0x01D287_write_to_buffer___unk_X:
C D 2 - - - 0x01D287 07:D277: A6 26     LDX ram_buffer_index
sub_D279_write_to_buffer:
sub_0x01D289_write_to_buffer:
C - - - - - 0x01D289 07:D279: 9D 00 01  STA ram_ppu_buffer_1,X
C - - - - - 0x01D28C 07:D27C: E8        INX
C - - - - - 0x01D28D 07:D27D: 86 26     STX ram_buffer_index
C - - - - - 0x01D28F 07:D27F: 60        RTS



tbl_D280_menu_text:
; 00 con_D280_push_start_button
- D 2 - - - 0x01D290 07:D280: 88 22     .word $2288 ; 
- D 2 - - - 0x01D292 07:D282: 50        .byte $50, $55, $53, $48, $30   ; PUSH
- D 2 - - - 0x01D297 07:D287: 53        .byte $53, $54, $41, $52, $54, $30   ; START
- D 2 - - - 0x01D29D 07:D28D: 42        .byte $42, $55, $54, $54, $4F, $4E   ; BUTTON
- D 2 - - - 0x01D2A3 07:D293: 7F        .byte $7F   ; end token
; 14 con_D280_game_over
- D 2 - - - 0x01D2A4 07:D294: CB 21     .word $21CB ; 
- D 2 - - - 0x01D2A6 07:D296: 47        .byte $47, $41, $4D, $45, $30, $30   ; GAME
- D 2 - - - 0x01D2AC 07:D29C: 4F        .byte $4F, $56, $45, $52   ; OVER
- D 2 - - - 0x01D2B0 07:D2A0: 7F        .byte $7F   ; end token
; 21 con_D280_continue
- D 2 - - - 0x01D2B1 07:D2A1: 0C 22     .word $220C ; 
- D 2 - - - 0x01D2B3 07:D2A3: 43        .byte $43, $4F, $4E, $54, $49, $4E, $55, $45   ; CONTINUE
- D 2 - - - 0x01D2BB 07:D2AB: 7F        .byte $7F   ; end token
; 2C con_D280_end
- D 2 - - - 0x01D2BC 07:D2AC: 4C 22     .word $224C ; 
- D 2 - - - 0x01D2BE 07:D2AE: 45        .byte $45, $4E, $44   ; END
- D 2 - - - 0x01D2C1 07:D2B1: 7F        .byte $7F   ; end token
; 32 con_D280_konami_1 KONAMI (upper half)
- D 2 - - - 0x01D2C2 07:D2B2: EA 21     .word $21EA ; 
- D 2 - - - 0x01D2C4 07:D2B4: 00        .byte $00, $F0, $02, $1C, $1D, $1E, $1F, $09, $FC, $FD, $FE, $FF   ; 
- D 2 - - - 0x01D2D0 07:D2C0: 7F        .byte $7F   ; end token
; 41 con_D280_konami_2 KONAMI (lower half)
- D 2 - - - 0x01D2D1 07:D2C1: 0A 22     .word $220A ; 
- D 2 - - - 0x01D2D3 07:D2C3: 2B        .byte $2B, $DB, $01, $2C, $2D, $2E, $0A, $0B, $0C, $0D, $0E, $0F, $EF   ; 
- D 2 - - - 0x01D2E0 07:D2D0: 7F        .byte $7F   ; end token



sub_0x01D2E1:
C - - - - - 0x01D2E1 07:D2D1: A5 35     LDA ram_base_oam_offset
C - - - - - 0x01D2E3 07:D2D3: 18        CLC
C - - - - - 0x01D2E4 07:D2D4: 69 4C     ADC #$4C
C - - - - - 0x01D2E6 07:D2D6: 85 35     STA ram_base_oam_offset
C - - - - - 0x01D2E8 07:D2D8: AA        TAX
C - - - - - 0x01D2E9 07:D2D9: A9 40     LDA #$40
C - - - - - 0x01D2EB 07:D2DB: 85 01     STA ram_0001_t37_sprites_counter
C - - - - - 0x01D2ED 07:D2DD: A5 45     LDA ram_pause_flag
C - - - - - 0x01D2EF 07:D2DF: F0 3D     BEQ bra_D31E
C - - - - - 0x01D2F1 07:D2E1: A5 5B     LDA ram_005B_script
C - - - - - 0x01D2F3 07:D2E3: C9 03     CMP #$03
C - - - - - 0x01D2F5 07:D2E5: 90 61     BCC bra_D348
C - - - - - 0x01D2F7 07:D2E7: C9 08     CMP #$08
C - - - - - 0x01D2F9 07:D2E9: B0 5D     BCS bra_D348
C - - - - - 0x01D2FB 07:D2EB: A9 18     LDA #$18
C - - - - - 0x01D2FD 07:D2ED: 85 11     STA ram_0011_t02_pos_X_lo
; bzk optimize, useless LDA + STA
C - - - - - 0x01D2FF 07:D2EF: A9 00     LDA #$00
C - - - - - 0x01D301 07:D2F1: 85 08     STA ram_0008_t20_useless
C - - - - - 0x01D303 07:D2F3: A5 21     LDA ram_0021_t02
C - - - - - 0x01D305 07:D2F5: 29 03     AND #$03
C - - - - - 0x01D307 07:D2F7: A8        TAY
C - - - - - 0x01D308 07:D2F8: B9 6B D5  LDA tbl_D56B,Y
C - - - - - 0x01D30B 07:D2FB: 85 10     STA ram_0010_t08_spr_Y
C - - - - - 0x01D30F 07:D2FF: 20 05 D3  JSR sub_D305
C - - - - - 0x01D312 07:D302: 4C 48 D3  JMP loc_D348



sub_D305:
C - - - - - 0x01D315 07:D305: B9 6F D5  LDA #< tbl_D571
C - - - - - 0x01D318 07:D308: 85 02     STA ram_0002_t04_data
C - - - - - 0x01D31A 07:D30A: B9 70 D5  LDA #> tbl_D571
C - - - - - 0x01D31D 07:D30D: 85 03     STA ram_0002_t04_data + $01
C - - - - - 0x01D31F 07:D30F: A9 00     LDA #$00
C - - - - - 0x01D321 07:D311: 85 12     STA ram_0012_t04_spr_A
C - - - - - 0x01D323 07:D313: 85 13     STA ram_0013_t04_pos_X_hi
; bzk optimize, useless STA
C - - - - - 0x01D325 07:D315: 85 14     STA ram_0014_t10_useless
C - - - - - 0x01D327 07:D317: A9 C3     LDA #$C3
C - - - - - 0x01D329 07:D319: 85 18     STA ram_0018_t16
C - - - - - 0x01D32B 07:D31B: 4C FF D3  JMP loc_D3FF



bra_D31E:
C - - - - - 0x01D32E 07:D31E: A9 1A     LDA #$1A
C - - - - - 0x01D330 07:D320: 85 0A     STA ram_000A_t15_loop_counter
C - - - - - 0x01D332 07:D322: A5 23     LDA ram_frm_cnt
C - - - - - 0x01D334 07:D324: 29 0F     AND #$0F
C - - - - - 0x01D336 07:D326: A8        TAY
C - - - - - 0x01D337 07:D327: B9 5B D5  LDA tbl_D55B,Y
C - - - - - 0x01D33A 07:D32A: 85 08     STA ram_0008_t11_object_index
C - - - - - 0x01D33C 07:D32C: A8        TAY
bra_D32D_loop:
C - - - - - 0x01D33D 07:D32D: B9 1A 06  LDA ram_obj_animation_lo,Y
C - - - - - 0x01D340 07:D330: F0 03     BEQ bra_D335
C - - - - - 0x01D342 07:D332: 20 5B D3  JSR sub_D35B
bra_D335:
C - - - - - 0x01D345 07:D335: A5 01     LDA ram_0001_t37_sprites_counter
C - - - - - 0x01D347 07:D337: F0 0F     BEQ bra_D348
C - - - - - 0x01D349 07:D339: A4 08     LDY ram_0008_t11_object_index
C - - - - - 0x01D34B 07:D33B: C8        INY
C - - - - - 0x01D34C 07:D33C: C0 1A     CPY #$1A
C - - - - - 0x01D34E 07:D33E: 90 02     BCC bra_D342
C - - - - - 0x01D350 07:D340: A0 00     LDY #$00
bra_D342:
C - - - - - 0x01D352 07:D342: 84 08     STY ram_0008_t11_object_index
C - - - - - 0x01D354 07:D344: C6 0A     DEC ram_000A_t15_loop_counter
C - - - - - 0x01D356 07:D346: D0 E5     BNE bra_D32D_loop
bra_D348:
loc_D348:
C D 2 - - - 0x01D358 07:D348: A5 01     LDA ram_0001_t37_sprites_counter
C - - - - - 0x01D35A 07:D34A: F0 0E     BEQ bra_D35A_RTS
bra_D34C_loop:
C - - - - - 0x01D35C 07:D34C: A9 F4     LDA #$F4
C - - - - - 0x01D35E 07:D34E: 9D 00 02  STA ram_spr_Y,X
C - - - - - 0x01D361 07:D351: 8A        TXA
C - - - - - 0x01D362 07:D352: 18        CLC
C - - - - - 0x01D363 07:D353: 69 C4     ADC #$C4
C - - - - - 0x01D365 07:D355: AA        TAX
C - - - - - 0x01D366 07:D356: C6 01     DEC ram_0001_t37_sprites_counter
C - - - - - 0x01D368 07:D358: D0 F2     BNE bra_D34C_loop
bra_D35A_RTS:
C - - - - - 0x01D36A 07:D35A: 60        RTS



sub_D35B:
; in
    ; A = 
C - - - - - 0x01D36B 07:D35B: 85 10     STA ram_0010_t09_animation_id
C - - - - - 0x01D36D 07:D35D: B9 00 06  LDA ram_0600_obj,Y
; / 08
C - - - - - 0x01D370 07:D360: 4A        LSR
C - - - - - 0x01D371 07:D361: 4A        LSR
C - - - - - 0x01D372 07:D362: 4A        LSR
C - - - - - 0x01D373 07:D363: 29 1E     AND #$1E
C - - - - - 0x01D375 07:D365: A8        TAY
C - - - - - 0x01D376 07:D366: B9 3B D5  LDA tbl_D53B,Y
C - - - - - 0x01D379 07:D369: 85 13     STA ram_0013_t04_pos_X_hi
C - - - - - 0x01D37B 07:D36B: B9 3C D5  LDA tbl_D53C,Y
C - - - - - 0x01D37E 07:D36E: D0 EA     BNE bra_D35A_RTS
; A = 00
; bzk optimize, useless STA
C - - - - - 0x01D380 07:D370: 85 14     STA ram_0014_t11_useless
C - - - - - 0x01D382 07:D372: A4 08     LDY ram_0008_t11_object_index
C - - - - - 0x01D384 07:D374: B9 34 06  LDA ram_obj_animation_hi,Y
C - - - - - 0x01D387 07:D377: 29 3C     AND #$3C
C - - - - - 0x01D389 07:D379: 4A        LSR
C - - - - - 0x01D38A 07:D37A: 20 F0 FB  JSR sub_0x01FC00
C - - - - - 0x01D38D 07:D37D: A8        TAY
C - - - - - 0x01D38E 07:D37E: A5 10     LDA ram_0010_t09_animation_id
C - - - - - 0x01D390 07:D380: 0A        ASL
C - - - - - 0x01D391 07:D381: 90 0D     BCC bra_D390_00_7F
; 80-FF
C - - - - - 0x01D393 07:D383: 18        CLC
C - - - - - 0x01D394 07:D384: 79 01 80  ADC tbl_0x000011_spr_data,Y
C - - - - - 0x01D397 07:D387: 85 10     STA ram_0010_t02_data
C - - - - - 0x01D399 07:D389: B9 02 80  LDA tbl_0x000011_spr_data + $01,Y
C - - - - - 0x01D39C 07:D38C: 69 01     ADC #$01
C - - - - - 0x01D39E 07:D38E: D0 0B     BNE bra_D39B    ; jmp
bra_D390_00_7F:
C - - - - - 0x01D3A0 07:D390: 18        CLC
C - - - - - 0x01D3A1 07:D391: 79 01 80  ADC tbl_0x000011_spr_data,Y
C - - - - - 0x01D3A4 07:D394: 85 10     STA ram_0010_t02_data
C - - - - - 0x01D3A6 07:D396: B9 02 80  LDA tbl_0x000011_spr_data + $01,Y
C - - - - - 0x01D3A9 07:D399: 69 00     ADC #$00
bra_D39B:
C - - - - - 0x01D3AB 07:D39B: 85 11     STA ram_0010_t02_data + $01
C - - - - - 0x01D3AD 07:D39D: A0 00     LDY #$00
C - - - - - 0x01D3AF 07:D39F: B1 10     LDA (ram_0010_t02_data),Y
C - - - - - 0x01D3B1 07:D3A1: 85 02     STA ram_0002_t04_data
C - - - - - 0x01D3B3 07:D3A3: C8        INY ; 01
C - - - - - 0x01D3B4 07:D3A4: B1 10     LDA (ram_0010_t02_data),Y
C - - - - - 0x01D3B6 07:D3A6: 85 03     STA ram_0002_t04_data + $01
C - - - - - 0x01D3B8 07:D3A8: A4 08     LDY ram_0008_t11_object_index
C - - - - - 0x01D3BA 07:D3AA: B9 4E 06  LDA ram_obj_pos_X,Y
C - - - - - 0x01D3BD 07:D3AD: 85 11     STA ram_0011_t02_pos_X_lo
C - - - - - 0x01D3BF 07:D3AF: B9 68 06  LDA ram_obj_pos_Y,Y
C - - - - - 0x01D3C2 07:D3B2: 85 10     STA ram_0010_t08_spr_Y
C - - - - - 0x01D3C4 07:D3B4: A9 C3     LDA #$C3
C - - - - - 0x01D3C6 07:D3B6: 85 18     STA ram_0018_t16
C - - - - - 0x01D3C8 07:D3B8: B9 34 06  LDA ram_obj_animation_hi,Y
C - - - - - 0x01D3CB 07:D3BB: 10 09     BPL bra_D3C6    ; if in front of bg
; if behind bg
C - - - - - 0x01D3CD 07:D3BD: B9 34 06  LDA ram_obj_animation_hi,Y
C - - - - - 0x01D3D0 07:D3C0: 29 03     AND #$03
C - - - - - 0x01D3D2 07:D3C2: 09 20     ORA #$20
C - - - - - 0x01D3D4 07:D3C4: D0 02     BNE bra_D3C8    ; jmp
bra_D3C6:
C - - - - - 0x01D3D6 07:D3C6: 29 03     AND #$03
bra_D3C8:
C - - - - - 0x01D3D8 07:D3C8: 85 12     STA ram_0012_t04_spr_A
C - - - - - 0x01D3DA 07:D3CA: 29 03     AND #$03
C - - - - - 0x01D3DC 07:D3CC: F0 04     BEQ bra_D3D2
C - - - - - 0x01D3DE 07:D3CE: A9 C0     LDA #$C0
C - - - - - 0x01D3E0 07:D3D0: 85 18     STA ram_0018_t16
bra_D3D2:
C - - - - - 0x01D3E2 07:D3D2: A5 08     LDA ram_0008_t11_object_index
C - - - - - 0x01D3E4 07:D3D4: C9 02     CMP #$02
C - - - - - 0x01D3E6 07:D3D6: B0 27     BCS bra_D3FF
C - - - - - 0x01D3E8 07:D3D8: A5 C0     LDA ram_00C0_combined_players_id
C - - - - - 0x01D3EA 07:D3DA: 0A        ASL
C - - - - - 0x01D3EB 07:D3DB: 18        CLC
C - - - - - 0x01D3EC 07:D3DC: 65 08     ADC ram_0008_t11_object_index
C - - - - - 0x01D3EE 07:D3DE: A8        TAY
C - - - - - 0x01D3EF 07:D3DF: A5 75     LDA ram_stage
C - - - - - 0x01D3F1 07:D3E1: 29 01     AND #$01
C - - - - - 0x01D3F3 07:D3E3: D0 0D     BNE bra_D3F2
C - - - - - 0x01D3F5 07:D3E5: B9 C4 D4  LDA tbl_D4C4,Y
C - - - - - 0x01D3F8 07:D3E8: 85 1E     STA ram_001E_t13
C - - - - - 0x01D3FA 07:D3EA: B9 E2 D4  LDA tbl_D4E2,Y
C - - - - - 0x01D3FD 07:D3ED: 85 1D     STA ram_001D_t10
C - - - - - 0x01D3FF 07:D3EF: 4C 25 D4  JMP loc_D425
bra_D3F2:
C - - - - - 0x01D402 07:D3F2: B9 00 D5  LDA tbl_D500,Y
C - - - - - 0x01D405 07:D3F5: 85 1E     STA ram_001E_t13
C - - - - - 0x01D407 07:D3F7: B9 1D D5  LDA tbl_D51D,Y
C - - - - - 0x01D40A 07:D3FA: 85 1D     STA ram_001D_t10
C - - - - - 0x01D40C 07:D3FC: 4C 25 D4  JMP loc_D425
bra_D3FF:
loc_D3FF:
C D 2 - - - 0x01D40F 07:D3FF: 20 A7 D4  JSR sub_D4A7_clear_001B_001C_001D
bra_D402_loop:
C - - - - - 0x01D412 07:D402: 20 59 D4  JSR sub_D459
bra_D405_loop:
C - - - - - 0x01D415 07:D405: 20 8A D4  JSR sub_D48A
C - - - - - 0x01D418 07:D408: F0 03     BEQ bra_D40D
C - - - - - 0x01D41A 07:D40A: C8        INY
C - - - - - 0x01D41B 07:D40B: D0 0E     BNE bra_D41B    ; jmp
bra_D40D:
C - - - - - 0x01D41D 07:D40D: A5 19     LDA ram_0019_t02_spr_A
C - - - - - 0x01D41F 07:D40F: 45 1C     EOR ram_001C_t10_spr_A_flip
C - - - - - 0x01D421 07:D411: 9D 02 02  STA ram_spr_A,X
C - - - - - 0x01D424 07:D414: B1 02     LDA (ram_0002_t04_data),Y
C - - - - - 0x01D426 07:D416: 20 B0 D4  JSR sub_D4B0
C - - - - - 0x01D429 07:D419: F0 09     BEQ bra_D424_RTS
bra_D41B:
C - - - - - 0x01D42B 07:D41B: C8        INY
C - - - - - 0x01D42C 07:D41C: C6 00     DEC ram_0000_t6F_loop_counter
C - - - - - 0x01D42E 07:D41E: D0 E5     BNE bra_D405_loop
C - - - - - 0x01D430 07:D420: A5 1A     LDA ram_001A_t08_lo
C - - - - - 0x01D432 07:D422: 30 DE     BMI bra_D402_loop
bra_D424_RTS:
C - - - - - 0x01D434 07:D424: 60        RTS



loc_D425:
C D 2 - - - 0x01D435 07:D425: 20 A7 D4  JSR sub_D4A7_clear_001B_001C_001D
loc_D428_loop:
C D 2 - - - 0x01D438 07:D428: 20 59 D4  JSR sub_D459
bra_D42B_loop:
C - - - - - 0x01D43B 07:D42B: 20 8A D4  JSR sub_D48A
C - - - - - 0x01D43E 07:D42E: F0 03     BEQ bra_D433
C - - - - - 0x01D440 07:D430: C8        INY
C - - - - - 0x01D441 07:D431: D0 19     BNE bra_D44C    ; jmp
bra_D433:
C - - - - - 0x01D443 07:D433: A5 19     LDA ram_0019_t02_spr_A
C - - - - - 0x01D445 07:D435: 45 1C     EOR ram_001C_t10_spr_A_flip
C - - - - - 0x01D447 07:D437: 9D 02 02  STA ram_spr_A,X
C - - - - - 0x01D44A 07:D43A: B1 02     LDA (ram_0002_t04_data),Y
C - - - - - 0x01D44C 07:D43C: C5 1D     CMP ram_001D_t10
C - - - - - 0x01D44E 07:D43E: 90 07     BCC bra_D447
C - - - - - 0x01D450 07:D440: C9 C0     CMP #$C0
C - - - - - 0x01D452 07:D442: B0 03     BCS bra_D447
C - - - - - 0x01D454 07:D444: 38        SEC
C - - - - - 0x01D455 07:D445: E5 1E     SBC ram_001E_t13
bra_D447:
C - - - - - 0x01D457 07:D447: 20 B0 D4  JSR sub_D4B0
C - - - - - 0x01D45A 07:D44A: F0 0C     BEQ bra_D458_RTS
bra_D44C:
C - - - - - 0x01D45C 07:D44C: C8        INY
C - - - - - 0x01D45D 07:D44D: C6 00     DEC ram_0000_t6F_loop_counter
C - - - - - 0x01D45F 07:D44F: D0 DA     BNE bra_D42B_loop
C - - - - - 0x01D461 07:D451: A5 1A     LDA ram_001A_t08_lo
; BZK optimize, BMI to D428
C - - - - - 0x01D463 07:D453: 10 03     BPL bra_D458_RTS
C - - - - - 0x01D465 07:D455: 4C 28 D4  JMP loc_D428_loop
bra_D458_RTS:
C - - - - - 0x01D468 07:D458: 60        RTS



sub_D459:
; out
    ; ram_0019_t02_spr_A
C - - - - - 0x01D469 07:D459: A9 FF     LDA #$FF
C - - - - - 0x01D46B 07:D45B: D1 02     CMP (ram_0002_t04_data),Y
C - - - - - 0x01D46D 07:D45D: D0 18     BNE bra_D477
; A = FF
; bzk optimize, in bank 00 and 02, instead of FF pointers, point directly
; to where needed from the start. remove FF comparsion and
; this part of code up to 0x01D485.
; although this code still could be necessary
; because of writes to additional addresses
C - - - - - 0x01D46F 07:D45F: 85 1B     STA ram_001B_t02_hi
C - - - - - 0x01D471 07:D461: A9 08     LDA #$08
C - - - - - 0x01D473 07:D463: 85 1F     STA ram_001F_t14
C - - - - - 0x01D475 07:D465: A9 40     LDA #$40
C - - - - - 0x01D477 07:D467: 85 1C     STA ram_001C_t10_spr_A_flip
C - - - - - 0x01D479 07:D469: C8        INY
C - - - - - 0x01D47A 07:D46A: B1 02     LDA (ram_0002_t04_data),Y
C - - - - - 0x01D47C 07:D46C: 48        PHA
C - - - - - 0x01D47D 07:D46D: C8        INY
C - - - - - 0x01D47E 07:D46E: B1 02     LDA (ram_0002_t04_data),Y
C - - - - - 0x01D480 07:D470: 85 03     STA ram_0002_t04_data + $01
C - - - - - 0x01D482 07:D472: 68        PLA
C - - - - - 0x01D483 07:D473: 85 02     STA ram_0002_t04_data
C - - - - - 0x01D485 07:D475: A0 00     LDY #$00
bra_D477:
C - - - - - 0x01D487 07:D477: B1 02     LDA (ram_0002_t04_data),Y
C - - - - - 0x01D489 07:D479: 85 1A     STA ram_001A_t08_lo
C - - - - - 0x01D48B 07:D47B: 29 7F     AND #$7F
C - - - - - 0x01D48D 07:D47D: 85 00     STA ram_0000_t6F_loop_counter
C - - - - - 0x01D48F 07:D47F: C8        INY
C - - - - - 0x01D490 07:D480: B1 02     LDA (ram_0002_t04_data),Y
C - - - - - 0x01D492 07:D482: 25 18     AND ram_0018_t16
C - - - - - 0x01D494 07:D484: 05 12     ORA ram_0012_t04_spr_A
C - - - - - 0x01D496 07:D486: 85 19     STA ram_0019_t02_spr_A
C - - - - - 0x01D498 07:D488: C8        INY
C - - - - - 0x01D499 07:D489: 60        RTS



sub_D48A:
; out
    ; Z
        ; 0 = 
        ; 1 = 
C - - - - - 0x01D49A 07:D48A: A9 00     LDA #$00
C - - - - - 0x01D49C 07:D48C: 85 0E     STA ram_000E_t05
C - - - - - 0x01D49E 07:D48E: B1 02     LDA (ram_0002_t04_data),Y
C - - - - - 0x01D4A0 07:D490: 45 1B     EOR ram_001B_t02_hi
C - - - - - 0x01D4A2 07:D492: 38        SEC
C - - - - - 0x01D4A3 07:D493: E5 1F     SBC ram_001F_t14
C - - - - - 0x01D4A5 07:D495: 10 02     BPL bra_D499
C - - - - - 0x01D4A7 07:D497: C6 0E     DEC ram_000E_t05    ; -> FF
bra_D499:
C - - - - - 0x01D4A9 07:D499: 18        CLC
C - - - - - 0x01D4AA 07:D49A: 65 11     ADC ram_0011_t02_pos_X_lo
C - - - - - 0x01D4AC 07:D49C: 9D 03 02  STA ram_spr_X,X
C - - - - - 0x01D4AF 07:D49F: A5 13     LDA ram_0013_t04_pos_X_hi
C - - - - - 0x01D4B1 07:D4A1: 65 0E     ADC ram_000E_t05    ; 00/FF
C - - - - - 0x01D4B3 07:D4A3: C8        INY
C - - - - - 0x01D4B4 07:D4A4: 29 01     AND #$01
C - - - - - 0x01D4B6 07:D4A6: 60        RTS



sub_D4A7_clear_001B_001C_001D:
C - - - - - 0x01D4B7 07:D4A7: A0 00     LDY #$00
C - - - - - 0x01D4B9 07:D4A9: 84 1B     STY ram_001B_t02_hi
C - - - - - 0x01D4BB 07:D4AB: 84 1C     STY ram_001C_t10_spr_A_flip
C - - - - - 0x01D4BD 07:D4AD: 84 1F     STY ram_001F_t14
C - - - - - 0x01D4BF 07:D4AF: 60        RTS



sub_D4B0:
C - - - - - 0x01D4C0 07:D4B0: 9D 01 02  STA ram_spr_T,X
C - - - - - 0x01D4C3 07:D4B3: C8        INY
C - - - - - 0x01D4C4 07:D4B4: B1 02     LDA (ram_0002_t04_data),Y
; bzk optimize, A is always 00, see 0x01D583
C - - - - - 0x01D4C6 07:D4B6: 18        CLC
C - - - - - 0x01D4C7 07:D4B7: 65 10     ADC ram_0010_t08_spr_Y
C - - - - - 0x01D4C9 07:D4B9: 9D 00 02  STA ram_spr_Y,X
C - - - - - 0x01D4CC 07:D4BC: 8A        TXA
C - - - - - 0x01D4CD 07:D4BD: 18        CLC
C - - - - - 0x01D4CE 07:D4BE: 69 C4     ADC #$C4
C - - - - - 0x01D4D0 07:D4C0: AA        TAX
C - - - - - 0x01D4D1 07:D4C1: C6 01     DEC ram_0001_t37_sprites_counter
C - - - - - 0x01D4D3 07:D4C3: 60        RTS


; ??? 4 таблицы
tbl_D4C4:
- D 2 - - - 0x01D4D4 07:D4C4: 00        .byte $00   ; 
- D 2 - - - 0x01D4D5 07:D4C5: 00        .byte $00   ; 
- D 2 - - - 0x01D4D6 07:D4C6: 00        .byte $00   ; 
- D 2 - - - 0x01D4D7 07:D4C7: 00        .byte $00   ; 
- D 2 - - - 0x01D4D8 07:D4C8: 00        .byte $00   ; 
- D 2 - - - 0x01D4D9 07:D4C9: 00        .byte $00   ; 
- D 2 - - - 0x01D4DA 07:D4CA: 00        .byte $00   ; 
- D 2 - - - 0x01D4DB 07:D4CB: 00        .byte $00   ; 
- D 2 - - - 0x01D4DC 07:D4CC: 00        .byte $00   ; 
- - - - - - 0x01D4DD 07:D4CD: 00        .byte $00   ; 
- - - - - - 0x01D4DE 07:D4CE: 00        .byte $00   ; 
- - - - - - 0x01D4DF 07:D4CF: 00        .byte $00   ; 
- - - - - - 0x01D4E0 07:D4D0: 00        .byte $00   ; 
- - - - - - 0x01D4E1 07:D4D1: 28        .byte $28   ; 
- - - - - - 0x01D4E2 07:D4D2: 00        .byte $00   ; 
- - - - - - 0x01D4E3 07:D4D3: 28        .byte $28   ; 
- D 2 - - - 0x01D4E4 07:D4D4: 00        .byte $00   ; 
- D 2 - - - 0x01D4E5 07:D4D5: 00        .byte $00   ; 
- - - - - - 0x01D4E6 07:D4D6: 28        .byte $28   ; 
- - - - - - 0x01D4E7 07:D4D7: 00        .byte $00   ; 
- - - - - - 0x01D4E8 07:D4D8: 00        .byte $00   ; 
- - - - - - 0x01D4E9 07:D4D9: 00        .byte $00   ; 
- - - - - - 0x01D4EA 07:D4DA: 28        .byte $28   ; 
- - - - - - 0x01D4EB 07:D4DB: 00        .byte $00   ; 
- D 2 - - - 0x01D4EC 07:D4DC: 00        .byte $00   ; 
- - - - - - 0x01D4ED 07:D4DD: 00        .byte $00   ; 
- - - - - - 0x01D4EE 07:D4DE: 28        .byte $28   ; 
- - - - - - 0x01D4EF 07:D4DF: 00        .byte $00   ; 
- - - - - - 0x01D4F0 07:D4E0: 00        .byte $00   ; 
- - - - - - 0x01D4F1 07:D4E1: 28        .byte $28   ; 



tbl_D4E2:
- D 2 - - - 0x01D4F2 07:D4E2: 00        .byte $00   ; 
- D 2 - - - 0x01D4F3 07:D4E3: 00        .byte $00   ; 
- D 2 - - - 0x01D4F4 07:D4E4: 00        .byte $00   ; 
- D 2 - - - 0x01D4F5 07:D4E5: 00        .byte $00   ; 
- D 2 - - - 0x01D4F6 07:D4E6: 00        .byte $00   ; 
- D 2 - - - 0x01D4F7 07:D4E7: 00        .byte $00   ; 
- D 2 - - - 0x01D4F8 07:D4E8: 00        .byte $00   ; 
- D 2 - - - 0x01D4F9 07:D4E9: 00        .byte $00   ; 
- D 2 - - - 0x01D4FA 07:D4EA: 00        .byte $00   ; 
- - - - - - 0x01D4FB 07:D4EB: 00        .byte $00   ; 
- - - - - - 0x01D4FC 07:D4EC: 00        .byte $00   ; 
- - - - - - 0x01D4FD 07:D4ED: 00        .byte $00   ; 
- - - - - - 0x01D4FE 07:D4EE: 00        .byte $00   ; 
- - - - - - 0x01D4FF 07:D4EF: 5A        .byte $5A   ; 
- - - - - - 0x01D500 07:D4F0: 00        .byte $00   ; 
- - - - - - 0x01D501 07:D4F1: 58        .byte $58   ; 
- D 2 - - - 0x01D502 07:D4F2: 00        .byte $00   ; 
- D 2 - - - 0x01D503 07:D4F3: 00        .byte $00   ; 
- - - - - - 0x01D504 07:D4F4: 5A        .byte $5A   ; 
- - - - - - 0x01D505 07:D4F5: 00        .byte $00   ; 
- - - - - - 0x01D506 07:D4F6: 00        .byte $00   ; 
- - - - - - 0x01D507 07:D4F7: 00        .byte $00   ; 
- - - - - - 0x01D508 07:D4F8: 5A        .byte $5A   ; 
- - - - - - 0x01D509 07:D4F9: 00        .byte $00   ; 
- D 2 - - - 0x01D50A 07:D4FA: 00        .byte $00   ; 
- - - - - - 0x01D50B 07:D4FB: 00        .byte $00   ; 
- - - - - - 0x01D50C 07:D4FC: 58        .byte $58   ; 
- - - - - - 0x01D50D 07:D4FD: 00        .byte $00   ; 
- - - - - - 0x01D50E 07:D4FE: 00        .byte $00   ; 
- - - - - - 0x01D50F 07:D4FF: 5A        .byte $5A   ; 



tbl_D500:
- D 2 - - - 0x01D510 07:D500: 00        .byte $00   ; 
- - - - - - 0x01D511 07:D501: 00        .byte $00   ; 
- D 2 - - - 0x01D512 07:D502: 00        .byte $00   ; 
- D 2 - - - 0x01D513 07:D503: 00        .byte $00   ; 
- - - - - - 0x01D514 07:D504: 00        .byte $00   ; 
- - - - - - 0x01D515 07:D505: 00        .byte $00   ; 
- - - - - - 0x01D516 07:D506: 00        .byte $00   ; 
- - - - - - 0x01D517 07:D507: 00        .byte $00   ; 
- D 2 - - - 0x01D518 07:D508: 00        .byte $00   ; 
- D 2 - - - 0x01D519 07:D509: 00        .byte $00   ; 
- - - - - - 0x01D51A 07:D50A: 00        .byte $00   ; 
- - - - - - 0x01D51B 07:D50B: 00        .byte $00   ; 
- - - - - - 0x01D51C 07:D50C: 00        .byte $00   ; 
- - - - - - 0x01D51D 07:D50D: 20        .byte $20   ; 
- - - - - - 0x01D51E 07:D50E: 00        .byte $00   ; 
- - - - - - 0x01D51F 07:D50F: 1E        .byte $1E   ; 
- D 2 - - - 0x01D520 07:D510: 00        .byte $00   ; 
- - - - - - 0x01D521 07:D511: 00        .byte $00   ; 
- - - - - - 0x01D522 07:D512: 20        .byte $20   ; 
- - - - - - 0x01D523 07:D513: 00        .byte $00   ; 
- - - - - - 0x01D524 07:D514: 00        .byte $00   ; 
- - - - - - 0x01D525 07:D515: 00        .byte $00   ; 
- - - - - - 0x01D526 07:D516: 00        .byte $00   ; 
- - - - - - 0x01D527 07:D517: 1E        .byte $1E   ; 
- D 2 - - - 0x01D528 07:D518: 00        .byte $00   ; 
- - - - - - 0x01D529 07:D519: 00        .byte $00   ; 
- - - - - - 0x01D52A 07:D51A: 1E        .byte $1E   ; 
- - - - - - 0x01D52B 07:D51B: 00        .byte $00   ; 
- - - - - - 0x01D52C 07:D51C: 1E        .byte $1E   ; 



tbl_D51D:
- D 2 - - - 0x01D52D 07:D51D: 00        .byte $00   ; 
- - - - - - 0x01D52E 07:D51E: 00        .byte $00   ; 
- D 2 - - - 0x01D52F 07:D51F: 00        .byte $00   ; 
- D 2 - - - 0x01D530 07:D520: 00        .byte $00   ; 
- - - - - - 0x01D531 07:D521: 00        .byte $00   ; 
- - - - - - 0x01D532 07:D522: 00        .byte $00   ; 
- - - - - - 0x01D533 07:D523: 00        .byte $00   ; 
- - - - - - 0x01D534 07:D524: 00        .byte $00   ; 
- D 2 - - - 0x01D535 07:D525: 00        .byte $00   ; 
- D 2 - - - 0x01D536 07:D526: 00        .byte $00   ; 
- - - - - - 0x01D537 07:D527: 00        .byte $00   ; 
- - - - - - 0x01D538 07:D528: 00        .byte $00   ; 
- - - - - - 0x01D539 07:D529: 00        .byte $00   ; 
- - - - - - 0x01D53A 07:D52A: 62        .byte $62   ; 
- - - - - - 0x01D53B 07:D52B: 00        .byte $00   ; 
- - - - - - 0x01D53C 07:D52C: 58        .byte $58   ; 
- D 2 - - - 0x01D53D 07:D52D: 00        .byte $00   ; 
- - - - - - 0x01D53E 07:D52E: 00        .byte $00   ; 
- - - - - - 0x01D53F 07:D52F: 62        .byte $62   ; 
- - - - - - 0x01D540 07:D530: 00        .byte $00   ; 
- - - - - - 0x01D541 07:D531: 00        .byte $00   ; 
- - - - - - 0x01D542 07:D532: 00        .byte $00   ; 
- - - - - - 0x01D543 07:D533: 00        .byte $00   ; 
- - - - - - 0x01D544 07:D534: 58        .byte $58   ; 
- D 2 - - - 0x01D545 07:D535: 00        .byte $00   ; 
- - - - - - 0x01D546 07:D536: 00        .byte $00   ; 
- - - - - - 0x01D547 07:D537: 58        .byte $58   ; 
- - - - - - 0x01D548 07:D538: 00        .byte $00   ; 
- - - - - - 0x01D549 07:D539: 58        .byte $58   ; 
- - - - - - 0x01D54A 07:D53A: 00        .byte $00   ; 


; ???
tbl_D53B:
- D 2 - - - 0x01D54B 07:D53B: 00        .byte $00   ; 
tbl_D53C:
- D 2 - - - 0x01D54C 07:D53C: 00        .byte $00   ; 
- D 2 - - - 0x01D54D 07:D53D: 01        .byte $01   ; 
- D 2 - - - 0x01D54E 07:D53E: 00        .byte $00   ; 
- D 2 - - - 0x01D54F 07:D53F: FF        .byte $FF   ; 
- D 2 - - - 0x01D550 07:D540: 00        .byte $00   ; 
- - - - - - 0x01D551 07:D541: 00        .byte $00   ; 
- - - - - - 0x01D552 07:D542: 00        .byte $00   ; 
- D 2 - - - 0x01D553 07:D543: 00        .byte $00   ; 
- D 2 - - - 0x01D554 07:D544: 01        .byte $01   ; 
- - - - - - 0x01D555 07:D545: 01        .byte $01   ; 
- - - - - - 0x01D556 07:D546: 01        .byte $01   ; 
- - - - - - 0x01D557 07:D547: FF        .byte $FF   ; 
- - - - - - 0x01D558 07:D548: 01        .byte $01   ; 
- - - - - - 0x01D559 07:D549: 00        .byte $00   ; 
- - - - - - 0x01D55A 07:D54A: 01        .byte $01   ; 
- D 2 - - - 0x01D55B 07:D54B: 00        .byte $00   ; 
- D 2 - - - 0x01D55C 07:D54C: FF        .byte $FF   ; 
- - - - - - 0x01D55D 07:D54D: 01        .byte $01   ; 
- - - - - - 0x01D55E 07:D54E: FF        .byte $FF   ; 
- - - - - - 0x01D55F 07:D54F: FF        .byte $FF   ; 
- - - - - - 0x01D560 07:D550: FF        .byte $FF   ; 
- - - - - - 0x01D561 07:D551: 00        .byte $00   ; 
- - - - - - 0x01D562 07:D552: FF        .byte $FF   ; 
- - - - - - 0x01D563 07:D553: 00        .byte $00   ; 
- - - - - - 0x01D564 07:D554: 00        .byte $00   ; 
- - - - - - 0x01D565 07:D555: 01        .byte $01   ; 
- - - - - - 0x01D566 07:D556: 00        .byte $00   ; 
- - - - - - 0x01D567 07:D557: FF        .byte $FF   ; 
- - - - - - 0x01D568 07:D558: 00        .byte $00   ; 
- - - - - - 0x01D569 07:D559: 00        .byte $00   ; 
- - - - - - 0x01D56A 07:D55A: 00        .byte $00   ; 



tbl_D55B:
- D 2 - - - 0x01D56B 07:D55B: 07        .byte $07   ; 00 
- D 2 - - - 0x01D56C 07:D55C: 0E        .byte $0E   ; 01 
- D 2 - - - 0x01D56D 07:D55D: 15        .byte $15   ; 02 
- D 2 - - - 0x01D56E 07:D55E: 04        .byte $04   ; 03 
- D 2 - - - 0x01D56F 07:D55F: 0B        .byte $0B   ; 04 
- D 2 - - - 0x01D570 07:D560: 12        .byte $12   ; 05 
- D 2 - - - 0x01D571 07:D561: 01        .byte $01   ; 06 
- D 2 - - - 0x01D572 07:D562: 08        .byte $08   ; 07 
- D 2 - - - 0x01D573 07:D563: 0F        .byte $0F   ; 08 
- D 2 - - - 0x01D574 07:D564: 16        .byte $16   ; 09 
- D 2 - - - 0x01D575 07:D565: 05        .byte $05   ; 0A 
- D 2 - - - 0x01D576 07:D566: 0C        .byte $0C   ; 0B 
- D 2 - - - 0x01D577 07:D567: 13        .byte $13   ; 0C 
- D 2 - - - 0x01D578 07:D568: 02        .byte $02   ; 0D 
- D 2 - - - 0x01D579 07:D569: 09        .byte $09   ; 0E 
- D 2 - - - 0x01D57A 07:D56A: 10        .byte $10   ; 0F 



tbl_D56B:
- D 2 - - - 0x01D57B 07:D56B: 28        .byte $28   ; 00 
- D 2 - - - 0x01D57C 07:D56C: 50        .byte $50   ; 01 
- D 2 - - - 0x01D57D 07:D56D: 78        .byte $78   ; 02 
- D 2 - - - 0x01D57E 07:D56E: A0        .byte $A0   ; 03 



tbl_D571:
- D 2 - I - 0x01D581 07:D571: 04        .byte $04   ; 
- D 2 - I - 0x01D582 07:D572: 00        .byte $00   ; 
; bzk optimize, 3rd byte is always 00
;                                              +--------------- spr_X
;                                              |    +---------- 
;                                              |    |    +----- spr_Y
;                                              |    |    |
- D 2 - I - 0x01D583 07:D573: F0        .byte $F0, $D7, $00   ; 
- D 2 - I - 0x01D586 07:D576: F8        .byte $F8, $DF, $00   ; 
- D 2 - I - 0x01D589 07:D579: 00        .byte $00, $DB, $00   ; 
- D 2 - I - 0x01D58C 07:D57C: 08        .byte $08, $DD, $00   ; 



tbl_D57F_for_2000:
- D 2 - - - 0x01D58F 07:D57F: 30        .byte $30   ; 01 
- D 2 - - - 0x01D590 07:D580: 34        .byte $34   ; 02 
- D 2 - - - 0x01D591 07:D581: 30        .byte $30   ; 03 
- D 2 - - - 0x01D592 07:D582: 30        .byte $30   ; 04 
- - - - - - 0x01D593 07:D583: 34        .byte $34   ; 05 
- D 2 - - - 0x01D594 07:D584: 30        .byte $30   ; 06 



sub_0x01D595:
loc_0x01D595:
C D 2 - - - 0x01D595 07:D585: A5 2B     LDA ram_002B_flags
C - - - - - 0x01D597 07:D587: 29 03     AND #$01 + $02
C - - - - - 0x01D599 07:D589: F0 09     BEQ bra_D594
C - - - - - 0x01D59B 07:D58B: A5 26     LDA ram_buffer_index
C - - - - - 0x01D59D 07:D58D: F0 02     BEQ bra_D591
C - - - - - 0x01D59F 07:D58F: E6 3E     INC ram_003E_brightness_counter
bra_D591:
C - - - - - 0x01D5A1 07:D591: 4C 1A D6  JMP loc_D61A
bra_D594:
C - - - - - 0x01D5A4 07:D594: BA        TSX
C - - - - - 0x01D5A5 07:D595: 8E A0 03  STX ram_save_stack_pointer
C - - - - - 0x01D5A8 07:D598: A2 FF     LDX #$FF
C - - - - - 0x01D5AA 07:D59A: 9A        TXS
loc_D59B_loop:
bra_D59B_loop:
C D 2 - - - 0x01D5AB 07:D59B: 68        PLA
C - - - - - 0x01D5AC 07:D59C: F0 1D     BEQ bra_D5BB_00
C - - - - - 0x01D5AE 07:D59E: AA        TAX
C - - - - - 0x01D5AF 07:D59F: BD 7E D5  LDA tbl_D57F_for_2000 - $01,X
C - - - - - 0x01D5B2 07:D5A2: 8D 00 20  STA $2000
C - - - - - 0x01D5B5 07:D5A5: 68        PLA
C - - - - - 0x01D5B6 07:D5A6: 85 16     STA ram_0016_t05_ppu_addr_lo
C - - - - - 0x01D5B8 07:D5A8: 68        PLA
C - - - - - 0x01D5B9 07:D5A9: 85 17     STA ram_0017_t01_ppu_addr_hi
C - - - - - 0x01D5BB 07:D5AB: 8D 06 20  STA $2006
C - - - - - 0x01D5BE 07:D5AE: A5 16     LDA ram_0016_t05_ppu_addr_lo
C - - - - - 0x01D5C0 07:D5B0: 8D 06 20  STA $2006
C - - - - - 0x01D5C3 07:D5B3: E0 03     CPX #$03
C - - - - - 0x01D5C5 07:D5B5: 90 15     BCC bra_D5CC
C - - - - - 0x01D5C7 07:D5B7: F0 24     BEQ bra_D5DD
C - - - - - 0x01D5C9 07:D5B9: B0 2D     BCS bra_D5E8    ; jmp
bra_D5BB_00:
; A = 00
C - - - - - 0x01D5CD 07:D5BD: 8D 00 01  STA ram_ppu_buffer_1
C - - - - - 0x01D5D0 07:D5C0: 85 26     STA ram_buffer_index
C - - - - - 0x01D5D2 07:D5C2: AE A0 03  LDX ram_save_stack_pointer
C - - - - - 0x01D5D5 07:D5C5: 9A        TXS
C - - - - - 0x01D5D6 07:D5C6: 60        RTS



bra_D5C9_loop:
C - - - - - 0x01D5D9 07:D5C9: 8D 07 20  STA $2007
bra_D5CC:
C - - - - - 0x01D5DC 07:D5CC: 68        PLA
C - - - - - 0x01D5DD 07:D5CD: C9 FF     CMP #$FF
C - - - - - 0x01D5DF 07:D5CF: D0 F8     BNE bra_D5C9_loop
C - - - - - 0x01D5E1 07:D5D1: A5 17     LDA ram_0017_t01_ppu_addr_hi
C - - - - - 0x01D5E3 07:D5D3: C9 3F     CMP #$3F
C - - - - - 0x01D5E5 07:D5D5: D0 03     BNE bra_D5DA
- - - - - - 0x01D5E7 07:D5D7: 20 68 D6  JSR sub_D668
bra_D5DA:
C - - - - - 0x01D5EA 07:D5DA: 4C 9B D5  JMP loc_D59B_loop
bra_D5DD:
C - - - - - 0x01D5ED 07:D5DD: 68        PLA
C - - - - - 0x01D5EE 07:D5DE: AA        TAX
C - - - - - 0x01D5EF 07:D5DF: 68        PLA
bra_D5E0_loop:
C - - - - - 0x01D5F0 07:D5E0: 8D 07 20  STA $2007
C - - - - - 0x01D5F3 07:D5E3: CA        DEX
C - - - - - 0x01D5F4 07:D5E4: D0 FA     BNE bra_D5E0_loop
C - - - - - 0x01D5F6 07:D5E6: F0 B3     BEQ bra_D59B_loop    ; jmp
bra_D5E8:
C - - - - - 0x01D5F8 07:D5E8: E0 06     CPX #$06
C - - - - - 0x01D5FA 07:D5EA: F0 0C     BEQ bra_D5F8
C - - - - - 0x01D5FC 07:D5EC: 68        PLA
C - - - - - 0x01D5FD 07:D5ED: AA        TAX
bra_D5EE_loop:
C - - - - - 0x01D5FE 07:D5EE: 68        PLA
C - - - - - 0x01D5FF 07:D5EF: 8D 07 20  STA $2007
C - - - - - 0x01D602 07:D5F2: CA        DEX
C - - - - - 0x01D603 07:D5F3: D0 F9     BNE bra_D5EE_loop
C - - - - - 0x01D605 07:D5F5: 4C 9B D5  JMP loc_D59B_loop
bra_D5F8:
C - - - - - 0x01D608 07:D5F8: 68        PLA
C - - - - - 0x01D609 07:D5F9: AA        TAX
bra_D5FA_loop:
C - - - - - 0x01D60A 07:D5FA: AD 02 20  LDA $2002
C - - - - - 0x01D60D 07:D5FD: A5 17     LDA ram_0017_t01_ppu_addr_hi
C - - - - - 0x01D60F 07:D5FF: 8D 06 20  STA $2006
C - - - - - 0x01D612 07:D602: A5 16     LDA ram_0016_t05_ppu_addr_lo
C - - - - - 0x01D614 07:D604: 8D 06 20  STA $2006
C - - - - - 0x01D617 07:D607: 68        PLA
C - - - - - 0x01D618 07:D608: 8D 07 20  STA $2007
C - - - - - 0x01D61B 07:D60B: A5 16     LDA ram_0016_t05_ppu_addr_lo
C - - - - - 0x01D61D 07:D60D: 18        CLC
C - - - - - 0x01D61E 07:D60E: 69 08     ADC #$08
C - - - - - 0x01D620 07:D610: 09 C0     ORA #$C0
C - - - - - 0x01D622 07:D612: 85 16     STA ram_0016_t05_ppu_addr_lo
C - - - - - 0x01D624 07:D614: CA        DEX
C - - - - - 0x01D625 07:D615: D0 E3     BNE bra_D5FA_loop
C - - - - - 0x01D627 07:D617: 4C 9B D5  JMP loc_D59B_loop



loc_D61A:
C D 2 - - - 0x01D62A 07:D61A: A5 FF     LDA ram_for_2000
C - - - - - 0x01D62C 07:D61C: 29 18     AND #$18
C - - - - - 0x01D62E 07:D61E: 8D 00 20  STA $2000
C - - - - - 0x01D631 07:D621: A5 2B     LDA ram_002B_flags
C - - - - - 0x01D633 07:D623: 29 01     AND #$01
C - - - - - 0x01D635 07:D625: F0 31     BEQ bra_D658
C - - - - - 0x01D637 07:D627: A5 2B     LDA ram_002B_flags
C - - - - - 0x01D639 07:D629: 29 FE     AND #$01 ^ $FF
C - - - - - 0x01D63B 07:D62B: 85 2B     STA ram_002B_flags
C - - - - - 0x01D63D 07:D62D: A0 00     LDY #$00    ; 3F00
bra_D62F:
C - - - - - 0x01D63F 07:D62F: AD 02 20  LDA $2002
C - - - - - 0x01D642 07:D632: A9 3F     LDA #$3F
C - - - - - 0x01D644 07:D634: 8D 06 20  STA $2006
C - - - - - 0x01D647 07:D637: 8C 06 20  STY $2006
C - - - - - 0x01D64A 07:D63A: A2 10     LDX #$10
C - - - - - 0x01D64C 07:D63C: A5 2B     LDA ram_002B_flags
C - - - - - 0x01D64E 07:D63E: 29 80     AND #$80
C - - - - - 0x01D650 07:D640: F0 0C     BEQ bra_D64E
bra_D642_loop:
C - - - - - 0x01D652 07:D642: B9 D0 03  LDA ram_brightnes_buffer,Y
C - - - - - 0x01D655 07:D645: 8D 07 20  STA $2007
C - - - - - 0x01D658 07:D648: C8        INY
C - - - - - 0x01D659 07:D649: CA        DEX
C - - - - - 0x01D65A 07:D64A: D0 F6     BNE bra_D642_loop
C - - - - - 0x01D65C 07:D64C: F0 0A     BEQ bra_D658    ; jmp
bra_D64E:
bra_D64E_loop:
C - - - - - 0x01D65E 07:D64E: B9 B0 03  LDA ram_palette_buffer,Y
C - - - - - 0x01D661 07:D651: 8D 07 20  STA $2007
C - - - - - 0x01D664 07:D654: C8        INY
C - - - - - 0x01D665 07:D655: CA        DEX
C - - - - - 0x01D666 07:D656: D0 F6     BNE bra_D64E_loop
bra_D658:
C - - - - - 0x01D668 07:D658: A5 2B     LDA ram_002B_flags
C - - - - - 0x01D66A 07:D65A: 29 02     AND #$02
C - - - - - 0x01D66C 07:D65C: F0 0A     BEQ bra_D668
C - - - - - 0x01D66E 07:D65E: A5 2B     LDA ram_002B_flags
C - - - - - 0x01D670 07:D660: 29 7D     AND #($80 + $02) ^ $FF
C - - - - - 0x01D672 07:D662: 85 2B     STA ram_002B_flags
C - - - - - 0x01D674 07:D664: A0 10     LDY #$10    ; 3F10
C - - - - - 0x01D676 07:D666: D0 C7     BNE bra_D62F    ; jmp
bra_D668:
sub_D668:
C - - - - - 0x01D678 07:D668: A9 3F     LDA #> $3F00
C - - - - - 0x01D67A 07:D66A: 8D 06 20  STA $2006
C - - - - - 0x01D67D 07:D66D: A9 00     LDA #< $3F00
C - - - - - 0x01D67F 07:D66F: 8D 06 20  STA $2006
; A = 00
C - - - - - 0x01D682 07:D672: 8D 06 20  STA $2006
C - - - - - 0x01D685 07:D675: 8D 06 20  STA $2006
C - - - - - 0x01D688 07:D678: 60        RTS



sub_0x01D689:
C - - - - - 0x01D689 07:D679: AD 5C 03  LDA ram_035C_flag
C - - - - - 0x01D68C 07:D67C: D0 3B     BNE bra_D6B9_RTS
sub_0x01D68E:
loc_0x01D68E:
C D 2 - - - 0x01D68E 07:D67E: A6 39     LDX ram_buffer_index_2
C - - - - - 0x01D690 07:D680: A9 00     LDA #$00
C - - - - - 0x01D692 07:D682: 9D 60 01  STA ram_ppu_buffer_2,X
C - - - - - 0x01D695 07:D685: BA        TSX
C - - - - - 0x01D696 07:D686: 8E A0 03  STX ram_save_stack_pointer
C - - - - - 0x01D699 07:D689: A2 5F     LDX #$5F
C - - - - - 0x01D69B 07:D68B: 9A        TXS
loc_D68C_loop:
bra_D68C_loop:
C D 2 - - - 0x01D69C 07:D68C: 68        PLA
C - - - - - 0x01D69D 07:D68D: F0 1F     BEQ bra_D6AE
C - - - - - 0x01D69F 07:D68F: AA        TAX
C - - - - - 0x01D6A0 07:D690: BD 7E D5  LDA tbl_D57F_for_2000 - $01,X
C - - - - - 0x01D6A3 07:D693: 05 FF     ORA ram_for_2000
C - - - - - 0x01D6A5 07:D695: 09 80     ORA #$80
C - - - - - 0x01D6A7 07:D697: 8D 00 20  STA $2000
C - - - - - 0x01D6AA 07:D69A: 68        PLA
C - - - - - 0x01D6AB 07:D69B: 85 56     STA ram_0056_t01_ppu_addr_lo
C - - - - - 0x01D6AD 07:D69D: 68        PLA
C - - - - - 0x01D6AE 07:D69E: 8D 06 20  STA $2006
C - - - - - 0x01D6B1 07:D6A1: A5 56     LDA ram_0056_t01_ppu_addr_lo
C - - - - - 0x01D6B3 07:D6A3: 8D 06 20  STA $2006
C - - - - - 0x01D6B6 07:D6A6: E0 03     CPX #$03
C - - - - - 0x01D6B8 07:D6A8: F0 1D     BEQ bra_D6C7
C - - - - - 0x01D6BA 07:D6AA: 90 13     BCC bra_D6BF
C - - - - - 0x01D6BC 07:D6AC: B0 24     BCS bra_D6D2    ; jmp
bra_D6AE:
C - - - - - 0x01D6BE 07:D6AE: A9 00     LDA #$00
C - - - - - 0x01D6C0 07:D6B0: 8D 60 01  STA ram_ppu_buffer_2
C - - - - - 0x01D6C3 07:D6B3: 85 39     STA ram_buffer_index_2
C - - - - - 0x01D6C5 07:D6B5: AE A0 03  LDX ram_save_stack_pointer
C - - - - - 0x01D6C8 07:D6B8: 9A        TXS
bra_D6B9_RTS:
C - - - - - 0x01D6C9 07:D6B9: 60        RTS



bra_D6BC_loop:
C - - - - - 0x01D6CC 07:D6BC: 8D 07 20  STA $2007
bra_D6BF:
C - - - - - 0x01D6CF 07:D6BF: 68        PLA
C - - - - - 0x01D6D0 07:D6C0: C9 FF     CMP #$FF
C - - - - - 0x01D6D2 07:D6C2: D0 F8     BNE bra_D6BC_loop
C - - - - - 0x01D6D4 07:D6C4: 4C 8C D6  JMP loc_D68C_loop
bra_D6C7:
C - - - - - 0x01D6D7 07:D6C7: 68        PLA
C - - - - - 0x01D6D8 07:D6C8: AA        TAX
C - - - - - 0x01D6D9 07:D6C9: 68        PLA
bra_D6CA_loop:
C - - - - - 0x01D6DA 07:D6CA: 8D 07 20  STA $2007
C - - - - - 0x01D6DD 07:D6CD: CA        DEX
C - - - - - 0x01D6DE 07:D6CE: D0 FA     BNE bra_D6CA_loop
C - - - - - 0x01D6E0 07:D6D0: F0 BA     BEQ bra_D68C_loop   ; jmp
bra_D6D2:
C - - - - - 0x01D6E2 07:D6D2: 68        PLA
C - - - - - 0x01D6E3 07:D6D3: AA        TAX
bra_D6D4_loop:
C - - - - - 0x01D6E4 07:D6D4: 68        PLA
C - - - - - 0x01D6E5 07:D6D5: 8D 07 20  STA $2007
C - - - - - 0x01D6E8 07:D6D8: CA        DEX
C - - - - - 0x01D6E9 07:D6D9: D0 F9     BNE bra_D6D4_loop
C - - - - - 0x01D6EB 07:D6DB: 4C 8C D6  JMP loc_D68C_loop



ofs_000_D6DE_03_gameplay:
; con_0020_gameplay
C - - J - - 0x01D6EE 07:D6DE: A9 04     LDA #$04
C - - - - - 0x01D6F0 07:D6E0: C5 44     CMP ram_script_lo
C - - - - - 0x01D6F2 07:D6E2: D0 18     BNE bra_D6FC
C - - - - - 0x01D6F4 07:D6E4: AD 40 03  LDA ram_0340_flag
C - - - - - 0x01D6F7 07:D6E7: 30 13     BMI bra_D6FC
C - - - - - 0x01D6F9 07:D6E9: A5 BB     LDA ram_00BB_flag
C - - - - - 0x01D6FB 07:D6EB: D0 0F     BNE bra_D6FC
C - - - - - 0x01D6FD 07:D6ED: 20 18 DA  JSR sub_DA18
C - - - - - 0x01D700 07:D6F0: A5 45     LDA ram_pause_flag
C - - - - - 0x01D702 07:D6F2: F0 08     BEQ bra_D6FC
C - - - - - 0x01D704 07:D6F4: A9 01     LDA #con_prg_pair + $01
C - - - - - 0x01D706 07:D6F6: 20 4C F3  JSR sub_0x01F35C_prg_bankswitch
C - - - - - 0x01D709 07:D6F9: 4C F3 A2  JMP loc_0x016303
bra_D6FC:
C - - - - - 0x01D70C 07:D6FC: A5 44     LDA ram_script_lo
C - - - - - 0x01D70E 07:D6FE: 0A        ASL
C - - - - - 0x01D70F 07:D6FF: A8        TAY
C - - - - - 0x01D710 07:D700: B9 0D D7  LDA tbl_D70D,Y
C - - - - - 0x01D713 07:D703: 85 00     STA ram_0000_t1B_jmp
C - - - - - 0x01D715 07:D705: B9 0E D7  LDA tbl_D70D + $01,Y
sub_0x01D718_execute_indirect_jump_0000:
loc_0x01D718_execute_indirect_jump_0000:
C D 2 - - - 0x01D718 07:D708: 85 01     STA ram_0000_t1B_jmp + $01
C - - - - - 0x01D71A 07:D70A: 6C 00 00  JMP (ram_0000_t1B_jmp)



tbl_D70D:
- D 2 - - - 0x01D71D 07:D70D: 17 D7     .word ofs_001_D717_00
- D 2 - - - 0x01D71F 07:D70F: 57 D7     .word ofs_001_D757_01
- D 2 - - - 0x01D721 07:D711: F4 D8     .word ofs_001_D8F4_02
- D 2 - - - 0x01D723 07:D713: 51 D9     .word ofs_001_D951_03
- D 2 - - - 0x01D725 07:D715: 69 D9     .word ofs_001_D969_04_gameplay



ofs_001_D717_00:
C - - J - - 0x01D727 07:D717: A9 07     LDA #$07    ; con_prg_pair + $07
C - - - - - 0x01D729 07:D719: 85 25     STA ram_disable_rendering_timer
C - - - - - 0x01D72B 07:D71B: 20 4C F3  JSR sub_0x01F35C_prg_bankswitch
C - - - - - 0x01D72E 07:D71E: A2 0E     LDX #con_D22A_player_select
C - - - - - 0x01D730 07:D720: 20 A8 D1  JSR sub_D1A8
C - - - - - 0x01D733 07:D723: E6 44     INC ram_script_lo
C - - - - - 0x01D735 07:D725: A9 00     LDA #$00    ; con_chr_bank + $00
C - - - - - 0x01D737 07:D727: 85 75     STA ram_stage
C - - - - - 0x01D739 07:D729: 85 78     STA ram_chr_bank + $01
C - - - - - 0x01D73B 07:D72B: 85 22     STA ram_0021_t03 + $01
C - - - - - 0x01D73D 07:D72D: 85 21     STA ram_0021_t03
C - - - - - 0x01D73F 07:D72F: A2 01     LDX #$01
bra_D731_loop:
C - - - - - 0x01D741 07:D731: A9 91     LDA #$91
C - - - - - 0x01D743 07:D733: 9D 1A 06  STA ram_obj_animation_lo,X
C - - - - - 0x01D746 07:D736: A9 1C     LDA #$1C
C - - - - - 0x01D748 07:D738: 9D 34 06  STA ram_obj_animation_hi,X
C - - - - - 0x01D74B 07:D73B: A9 C0     LDA #$C0
C - - - - - 0x01D74D 07:D73D: 9D 4E 06  STA ram_obj_pos_X,X
C - - - - - 0x01D750 07:D740: CA        DEX
C - - - - - 0x01D751 07:D741: 10 EE     BPL bra_D731_loop
C - - - - - 0x01D753 07:D743: A9 05     LDA #$05
C - - - - - 0x01D755 07:D745: A0 01     LDY #$01
C - - - - - 0x01D757 07:D747: 20 B1 F4  JSR sub_0x01F4C1
C - - - - - 0x01D75A 07:D74A: A9 7C     LDA #con_chr_bank + $7C
C - - - - - 0x01D75C 07:D74C: 85 77     STA ram_chr_bank
C - - - - - 0x01D75E 07:D74E: A9 13     LDA #con_chr_bank + $13
C - - - - - 0x01D760 07:D750: 85 7C     STA ram_chr_bank + $05
C - - - - - 0x01D762 07:D752: A9 70     LDA #con_music_70
C - - - - - 0x01D764 07:D754: 4C CA FE  JMP loc_0x01FEDA_add_music_to_queue



ofs_001_D757_01:
C - - J - - 0x01D767 07:D757: A2 00     LDX #$00
bra_D759_loop:
C - - - - - 0x01D769 07:D759: B4 21     LDY ram_0021_t03,X
C - - - - - 0x01D76B 07:D75B: 84 08     STY ram_0008_t12_flag
bra_D75D:
C - - - - - 0x01D76D 07:D75D: B4 21     LDY ram_0021_t03,X
C - - - - - 0x01D76F 07:D75F: B5 40     LDA ram_btn_press_1,X
C - - - - - 0x01D771 07:D761: 29 0F     AND #con_btns_Dpad
C - - - - - 0x01D773 07:D763: F0 2D     BEQ bra_D792
C - - - - - 0x01D775 07:D765: 29 0A     AND #con_btns_UL
C - - - - - 0x01D777 07:D767: D0 04     BNE bra_D76D
C - - - - - 0x01D779 07:D769: 88        DEY
C - - - - - 0x01D77A 07:D76A: 4C 6E D7  JMP loc_D76E
bra_D76D:
C - - - - - 0x01D77D 07:D76D: C8        INY
loc_D76E:
C D 2 - - - 0x01D77E 07:D76E: 98        TYA
C - - - - - 0x01D77F 07:D76F: 10 04     BPL bra_D775
C - - - - - 0x01D781 07:D771: A9 04     LDA #$04
C - - - - - 0x01D783 07:D773: D0 06     BNE bra_D77B   ; jmp
bra_D775:
C - - - - - 0x01D785 07:D775: C9 05     CMP #$05
C - - - - - 0x01D787 07:D777: 90 02     BCC bra_D77B
C - - - - - 0x01D789 07:D779: A9 00     LDA #$00
bra_D77B:
C - - - - - 0x01D78B 07:D77B: 95 21     STA ram_0021_t03,X
C - - - - - 0x01D78D 07:D77D: 85 00     STA ram_0000_t7A
C - - - - - 0x01D78F 07:D77F: 8A        TXA
C - - - - - 0x01D790 07:D780: 49 01     EOR #$01
C - - - - - 0x01D792 07:D782: A8        TAY
C - - - - - 0x01D793 07:D783: A5 00     LDA ram_0000_t7A
C - - - - - 0x01D795 07:D785: D9 21 00  CMP ram_0021_t03,Y
C - - - - - 0x01D798 07:D788: F0 D3     BEQ bra_D75D
C - - - - - 0x01D79A 07:D78A: 20 0E D8  JSR sub_D80E
C - - - - - 0x01D79D 07:D78D: A9 61     LDA #con_music_61
C - - - - - 0x01D79F 07:D78F: 4C CA FE  JMP loc_0x01FEDA_add_music_to_queue
bra_D792:
C - - - - - 0x01D7A2 07:D792: BD 78 D8  LDA tbl_D878,X
C - - - - - 0x01D7A5 07:D795: 9D 1A 06  STA ram_obj_animation_lo,X
C - - - - - 0x01D7A8 07:D798: A9 1C     LDA #$1C
C - - - - - 0x01D7AA 07:D79A: 9D 34 06  STA ram_obj_animation_hi,X
C - - - - - 0x01D7AD 07:D79D: B5 21     LDA ram_0021_t03,X
C - - - - - 0x01D7AF 07:D79F: 0A        ASL
C - - - - - 0x01D7B0 07:D7A0: A8        TAY
C - - - - - 0x01D7B1 07:D7A1: B9 7A D8  LDA tbl_D87A_positions,Y
C - - - - - 0x01D7B4 07:D7A4: 9D 4E 06  STA ram_obj_pos_X,X
C - - - - - 0x01D7B7 07:D7A7: B9 7B D8  LDA tbl_D87A_positions + $01,Y
C - - - - - 0x01D7BA 07:D7AA: 9D 68 06  STA ram_obj_pos_Y,X
C - - - - - 0x01D7BD 07:D7AD: B5 21     LDA ram_0021_t03,X
C - - - - - 0x01D7BF 07:D7AF: D0 0F     BNE bra_D7C0
C - - - - - 0x01D7C1 07:D7B1: A9 08     LDA #$08
C - - - - - 0x01D7C3 07:D7B3: E0 00     CPX #$00
C - - - - - 0x01D7C5 07:D7B5: D0 02     BNE bra_D7B9
C - - - - - 0x01D7C7 07:D7B7: A9 F8     LDA #$F8
bra_D7B9:
C - - - - - 0x01D7C9 07:D7B9: 18        CLC
C - - - - - 0x01D7CA 07:D7BA: 7D 68 06  ADC ram_obj_pos_Y,X
C - - - - - 0x01D7CD 07:D7BD: 9D 68 06  STA ram_obj_pos_Y,X
bra_D7C0:
C - - - - - 0x01D7D0 07:D7C0: A5 42     LDA ram_btn_hold_1
C - - - - - 0x01D7D2 07:D7C2: 05 43     ORA ram_btn_hold_1 + $01
C - - - - - 0x01D7D4 07:D7C4: 29 10     AND #con_btn_Start
C - - - - - 0x01D7D6 07:D7C6: D0 09     BNE bra_D7D1
bra_D7C8:
C - - - - - 0x01D7D8 07:D7C8: 20 24 D8  JSR sub_D824
C - - - - - 0x01D7DB 07:D7CB: E8        INX
C - - - - - 0x01D7DC 07:D7CC: E0 02     CPX #$02
C - - - - - 0x01D7DE 07:D7CE: D0 89     BNE bra_D759_loop
C - - - - - 0x01D7E0 07:D7D0: 60        RTS
bra_D7D1:
C - - - - - 0x01D7E1 07:D7D1: A5 21     LDA ram_0021_t03
C - - - - - 0x01D7E3 07:D7D3: 05 22     ORA ram_0021_t03 + $01
C - - - - - 0x01D7E5 07:D7D5: F0 F1     BEQ bra_D7C8
C - - - - - 0x01D7E7 07:D7D7: A9 62     LDA #con_music_62
C - - - - - 0x01D7E9 07:D7D9: 20 CA FE  JSR sub_0x01FEDA_add_music_to_queue
C - - - - - 0x01D7EC 07:D7DC: E6 44     INC ram_script_lo
C - - - - - 0x01D7EE 07:D7DE: 20 39 DA  JSR sub_DA39
C - - - - - 0x01D7F1 07:D7E1: A4 21     LDY ram_0021_t03
C - - - - - 0x01D7F3 07:D7E3: F0 0D     BEQ bra_D7F2
C - - - - - 0x01D7F5 07:D7E5: 88        DEY
C - - - - - 0x01D7F6 07:D7E6: 84 B1     STY ram_current_player
C - - - - - 0x01D7F8 07:D7E8: A9 2E     LDA #$2E
C - - - - - 0x01D7FA 07:D7EA: 8D 82 07  STA ram_0782_unk
C - - - - - 0x01D7FD 07:D7ED: A9 10     LDA #$10
C - - - - - 0x01D7FF 07:D7EF: 99 7F 00  STA ram_player_stats,Y
bra_D7F2:
C - - - - - 0x01D802 07:D7F2: A4 22     LDY ram_0021_t03 + $01
C - - - - - 0x01D804 07:D7F4: F0 0D     BEQ bra_D803
C - - - - - 0x01D806 07:D7F6: 88        DEY
C - - - - - 0x01D807 07:D7F7: 84 B2     STY ram_current_player + $01
C - - - - - 0x01D809 07:D7F9: A9 2E     LDA #$2E
C - - - - - 0x01D80B 07:D7FB: 8D 83 07  STA ram_0782_unk + $01
C - - - - - 0x01D80E 07:D7FE: A9 20     LDA #$20
C - - - - - 0x01D810 07:D800: 99 7F 00  STA ram_player_stats,Y
bra_D803:
C - - - - - 0x01D813 07:D803: 20 62 D0  JSR sub_D062
C - - - - - 0x01D816 07:D806: A9 03     LDA #$03
C - - - - - 0x01D818 07:D808: 8D A1 05  STA ram_059E_se + $03
C - - - - - 0x01D81B 07:D80B: 4C 35 F6  JMP loc_0x01F645_set_default_3_lives



sub_D80E:
C - - - - - 0x01D81E 07:D80E: 8A        TXA
C - - - - - 0x01D81F 07:D80F: 48        PHA
C - - - - - 0x01D820 07:D810: A5 08     LDA ram_0008_t12_flag
C - - - - - 0x01D822 07:D812: F0 54     BEQ bra_D868
C - - - - - 0x01D824 07:D814: 20 6B D8  JSR sub_D86B_prepare_ppu_address
C - - - - - 0x01D827 07:D817: B9 8A D8  LDA tbl_D88C_nmt_attributes - $02,Y
C - - - - - 0x01D82A 07:D81A: 85 06     STA ram_0006_t01_data
C - - - - - 0x01D82C 07:D81C: B9 8B D8  LDA tbl_D88C_nmt_attributes - $01,Y
C - - - - - 0x01D82F 07:D81F: 85 07     STA ram_0006_t01_data + $01
C - - - - - 0x01D831 07:D821: 4C 37 D8  JMP loc_D837



sub_D824:
C - - - - - 0x01D834 07:D824: 8A        TXA
C - - - - - 0x01D835 07:D825: 48        PHA
C - - - - - 0x01D836 07:D826: B5 21     LDA ram_0021_t03,X
C - - - - - 0x01D838 07:D828: F0 3E     BEQ bra_D868
C - - - - - 0x01D83A 07:D82A: 20 6B D8  JSR sub_D86B_prepare_ppu_address
C - - - - - 0x01D83D 07:D82D: B9 C2 D8  LDA tbl_D8C4 - $02,Y
C - - - - - 0x01D840 07:D830: 85 06     STA ram_0006_t01_data
C - - - - - 0x01D842 07:D832: B9 C3 D8  LDA tbl_D8C4 - $01,Y
C - - - - - 0x01D845 07:D835: 85 07     STA ram_0006_t01_data + $01
loc_D837:
C D 2 - - - 0x01D847 07:D837: A9 03     LDA #$03
C - - - - - 0x01D849 07:D839: 85 04     STA ram_0004_t24_loop_counter
C - - - - - 0x01D84B 07:D83B: A0 00     LDY #$00
bra_D83D_loop:
C - - - - - 0x01D84D 07:D83D: A9 04     LDA #$04
C - - - - - 0x01D84F 07:D83F: 20 77 D2  JSR sub_D277_write_to_buffer___unk_X
C - - - - - 0x01D852 07:D842: A5 00     LDA ram_0000_t7B_ppu_addr_lo
C - - - - - 0x01D854 07:D844: 20 77 D2  JSR sub_D277_write_to_buffer___unk_X
C - - - - - 0x01D857 07:D847: A5 01     LDA ram_0001_t48_ppu_addr_hi
C - - - - - 0x01D859 07:D849: 20 77 D2  JSR sub_D277_write_to_buffer___unk_X
C - - - - - 0x01D85C 07:D84C: A9 04     LDA #$04
C - - - - - 0x01D85E 07:D84E: 20 77 D2  JSR sub_D277_write_to_buffer___unk_X
C - - - - - 0x01D861 07:D851: 85 05     STA ram_0005_t12_loop_counter
bra_D853_loop:
C - - - - - 0x01D863 07:D853: B1 06     LDA (ram_0006_t01_data),Y
C - - - - - 0x01D865 07:D855: 20 77 D2  JSR sub_D277_write_to_buffer___unk_X
C - - - - - 0x01D868 07:D858: C8        INY
C - - - - - 0x01D869 07:D859: C6 05     DEC ram_0005_t12_loop_counter
C - - - - - 0x01D86B 07:D85B: D0 F6     BNE bra_D853_loop
C - - - - - 0x01D86D 07:D85D: A5 00     LDA ram_0000_t7B_ppu_addr_lo
C - - - - - 0x01D86F 07:D85F: 18        CLC
C - - - - - 0x01D870 07:D860: 69 08     ADC #$08
C - - - - - 0x01D872 07:D862: 85 00     STA ram_0000_t7B_ppu_addr_lo
C - - - - - 0x01D874 07:D864: C6 04     DEC ram_0004_t24_loop_counter
C - - - - - 0x01D876 07:D866: D0 D5     BNE bra_D83D_loop
bra_D868:
C - - - - - 0x01D878 07:D868: 68        PLA
C - - - - - 0x01D879 07:D869: AA        TAX
C - - - - - 0x01D87A 07:D86A: 60        RTS



sub_D86B_prepare_ppu_address:
C - - - - - 0x01D87B 07:D86B: 0A        ASL
C - - - - - 0x01D87C 07:D86C: A8        TAY
C - - - - - 0x01D87D 07:D86D: B9 82 D8  LDA tbl_D884_ppu_address - $02,Y
C - - - - - 0x01D880 07:D870: 85 00     STA ram_0000_t7B_ppu_addr_lo
C - - - - - 0x01D882 07:D872: B9 83 D8  LDA tbl_D884_ppu_address - $02 + $01,Y
C - - - - - 0x01D885 07:D875: 85 01     STA ram_0001_t48_ppu_addr_hi
C - - - - - 0x01D887 07:D877: 60        RTS



tbl_D878:
- D 2 - - - 0x01D888 07:D878: 91        .byte $91   ; 00 
- D 2 - - - 0x01D889 07:D879: 92        .byte $92   ; 01 



tbl_D87A_positions:
;                                              +---------- pos_X
;                                              |    +----- pos_Y
;                                              |    |
- D 2 - - - 0x01D88A 07:D87A: B2        .byte $B2, $20   ; 00 
- D 2 - - - 0x01D88C 07:D87C: 18        .byte $18, $50   ; 01 
- D 2 - - - 0x01D88E 07:D87E: 88        .byte $88, $50   ; 02 
- D 2 - - - 0x01D890 07:D880: 18        .byte $18, $A0   ; 03 
- D 2 - - - 0x01D892 07:D882: 88        .byte $88, $A0   ; 04 



tbl_D884_ppu_address:
- D 2 - - - 0x01D894 07:D884: C8 23     .word $23C8 ; 01 
- D 2 - - - 0x01D896 07:D886: CC 23     .word $23CC ; 02 
- D 2 - - - 0x01D898 07:D888: E0 23     .word $23E0 ; 03 
- D 2 - - - 0x01D89A 07:D88A: E4 23     .word $23E4 ; 04 



tbl_D88C_nmt_attributes:
- D 2 - - - 0x01D89C 07:D88C: 94 D8     .word off_D894_01
- D 2 - - - 0x01D89E 07:D88E: A0 D8     .word off_D8A0_02
- D 2 - - - 0x01D8A0 07:D890: AC D8     .word off_D8AC_03
- D 2 - - - 0x01D8A2 07:D892: B8 D8     .word off_D8B8_04



off_D894_01:
- D 2 - I - 0x01D8A4 07:D894: FF        .byte $FF   ; 
- D 2 - I - 0x01D8A5 07:D895: FF        .byte $FF   ; 
- D 2 - I - 0x01D8A6 07:D896: FF        .byte $FF   ; 
- D 2 - I - 0x01D8A7 07:D897: FF        .byte $FF   ; 
- D 2 - I - 0x01D8A8 07:D898: FF        .byte $FF   ; 
- D 2 - I - 0x01D8A9 07:D899: AA        .byte $AA   ; 
- D 2 - I - 0x01D8AA 07:D89A: AA        .byte $AA   ; 
- D 2 - I - 0x01D8AB 07:D89B: AA        .byte $AA   ; 
- D 2 - I - 0x01D8AC 07:D89C: FF        .byte $FF   ; 
- D 2 - I - 0x01D8AD 07:D89D: AA        .byte $AA   ; 
- D 2 - I - 0x01D8AE 07:D89E: AA        .byte $AA   ; 
- D 2 - I - 0x01D8AF 07:D89F: AA        .byte $AA   ; 

off_D8A0_02:
- D 2 - I - 0x01D8B0 07:D8A0: FF        .byte $FF   ; 
- D 2 - I - 0x01D8B1 07:D8A1: FF        .byte $FF   ; 
- D 2 - I - 0x01D8B2 07:D8A2: FF        .byte $FF   ; 
- D 2 - I - 0x01D8B3 07:D8A3: FF        .byte $FF   ; 
- D 2 - I - 0x01D8B4 07:D8A4: BB        .byte $BB   ; 
- D 2 - I - 0x01D8B5 07:D8A5: AA        .byte $AA   ; 
- D 2 - I - 0x01D8B6 07:D8A6: AA        .byte $AA   ; 
- D 2 - I - 0x01D8B7 07:D8A7: EE        .byte $EE   ; 
- D 2 - I - 0x01D8B8 07:D8A8: BB        .byte $BB   ; 
- D 2 - I - 0x01D8B9 07:D8A9: AA        .byte $AA   ; 
- D 2 - I - 0x01D8BA 07:D8AA: AA        .byte $AA   ; 
- D 2 - I - 0x01D8BB 07:D8AB: EE        .byte $EE   ; 

off_D8AC_03:
- D 2 - I - 0x01D8BC 07:D8AC: FF        .byte $FF   ; 
- D 2 - I - 0x01D8BD 07:D8AD: AF        .byte $AF   ; 
- D 2 - I - 0x01D8BE 07:D8AE: AF        .byte $AF   ; 
- D 2 - I - 0x01D8BF 07:D8AF: AF        .byte $AF   ; 
- D 2 - I - 0x01D8C0 07:D8B0: FF        .byte $FF   ; 
- D 2 - I - 0x01D8C1 07:D8B1: AA        .byte $AA   ; 
- D 2 - I - 0x01D8C2 07:D8B2: AA        .byte $AA   ; 
- D 2 - I - 0x01D8C3 07:D8B3: AA        .byte $AA   ; 
- D 2 - I - 0x01D8C4 07:D8B4: FF        .byte $FF   ; 
- D 2 - I - 0x01D8C5 07:D8B5: FA        .byte $FA   ; 
- D 2 - I - 0x01D8C6 07:D8B6: FA        .byte $FA   ; 
- D 2 - I - 0x01D8C7 07:D8B7: FA        .byte $FA   ; 

off_D8B8_04:
- D 2 - I - 0x01D8C8 07:D8B8: BF        .byte $BF   ; 
- D 2 - I - 0x01D8C9 07:D8B9: AF        .byte $AF   ; 
- D 2 - I - 0x01D8CA 07:D8BA: AF        .byte $AF   ; 
- D 2 - I - 0x01D8CB 07:D8BB: EF        .byte $EF   ; 
- D 2 - I - 0x01D8CC 07:D8BC: BB        .byte $BB   ; 
- D 2 - I - 0x01D8CD 07:D8BD: AA        .byte $AA   ; 
- D 2 - I - 0x01D8CE 07:D8BE: AA        .byte $AA   ; 
- D 2 - I - 0x01D8CF 07:D8BF: EE        .byte $EE   ; 
- D 2 - I - 0x01D8D0 07:D8C0: FB        .byte $FB   ; 
- D 2 - I - 0x01D8D1 07:D8C1: FA        .byte $FA   ; 
- D 2 - I - 0x01D8D2 07:D8C2: FA        .byte $FA   ; 
- D 2 - I - 0x01D8D3 07:D8C3: FE        .byte $FE   ; 



tbl_D8C4:
- D 2 - - - 0x01D8D4 07:D8C4: D4 D8     .word off_D8D4_01
- D 2 - - - 0x01D8D6 07:D8C6: E8 D8     .word off_D8E8_02
- D 2 - - - 0x01D8D8 07:D8C8: CC D8     .word off_D8CC_03
- D 2 - - - 0x01D8DA 07:D8CA: E0 D8     .word off_D8E0_04



off_D8CC_03:
- D 2 - I - 0x01D8DC 07:D8CC: FF        .byte $FF   ; 
- D 2 - I - 0x01D8DD 07:D8CD: 5F        .byte $5F   ; 
- D 2 - I - 0x01D8DE 07:D8CE: FF        .byte $FF   ; 
- D 2 - I - 0x01D8DF 07:D8CF: FF        .byte $FF   ; 
- D 2 - I - 0x01D8E0 07:D8D0: FF        .byte $FF   ; 
- D 2 - I - 0x01D8E1 07:D8D1: 44        .byte $44   ; 
- D 2 - I - 0x01D8E2 07:D8D2: FF        .byte $FF   ; 
- D 2 - I - 0x01D8E3 07:D8D3: FF        .byte $FF   ; 
off_D8D4_01:    ; common bytes
- D 2 - I - 0x01D8E4 07:D8D4: FF        .byte $FF   ; 
- D 2 - I - 0x01D8E5 07:D8D5: FF        .byte $FF   ; 
- D 2 - I - 0x01D8E6 07:D8D6: FF        .byte $FF   ; 
- D 2 - I - 0x01D8E7 07:D8D7: FF        .byte $FF   ; 
- D 2 - I - 0x01D8E8 07:D8D8: FF        .byte $FF   ; 
- D 2 - I - 0x01D8E9 07:D8D9: 00        .byte $00   ; 
- D 2 - I - 0x01D8EA 07:D8DA: FF        .byte $FF   ; 
- D 2 - I - 0x01D8EB 07:D8DB: FF        .byte $FF   ; 
- D 2 - I - 0x01D8EC 07:D8DC: FF        .byte $FF   ; 
- D 2 - I - 0x01D8ED 07:D8DD: F0        .byte $F0   ; 
- D 2 - I - 0x01D8EE 07:D8DE: FF        .byte $FF   ; 
- D 2 - I - 0x01D8EF 07:D8DF: FF        .byte $FF   ; 

off_D8E0_04:
- D 2 - I - 0x01D8F0 07:D8E0: 7F        .byte $7F   ; 
- D 2 - I - 0x01D8F1 07:D8E1: DF        .byte $DF   ; 
- D 2 - I - 0x01D8F2 07:D8E2: FF        .byte $FF   ; 
- D 2 - I - 0x01D8F3 07:D8E3: FF        .byte $FF   ; 
- D 2 - I - 0x01D8F4 07:D8E4: 37        .byte $37   ; 
- D 2 - I - 0x01D8F5 07:D8E5: CD        .byte $CD   ; 
- D 2 - I - 0x01D8F6 07:D8E6: FF        .byte $FF   ; 
- D 2 - I - 0x01D8F7 07:D8E7: FF        .byte $FF   ; 
off_D8E8_02:    ; common bytes
- D 2 - I - 0x01D8F8 07:D8E8: FF        .byte $FF   ; 
- D 2 - I - 0x01D8F9 07:D8E9: FF        .byte $FF   ; 
- D 2 - I - 0x01D8FA 07:D8EA: FF        .byte $FF   ; 
- D 2 - I - 0x01D8FB 07:D8EB: FF        .byte $FF   ; 
- D 2 - I - 0x01D8FC 07:D8EC: 33        .byte $33   ; 
- D 2 - I - 0x01D8FD 07:D8ED: CC        .byte $CC   ; 
- D 2 - I - 0x01D8FE 07:D8EE: FF        .byte $FF   ; 
- D 2 - I - 0x01D8FF 07:D8EF: FF        .byte $FF   ; 
- D 2 - I - 0x01D900 07:D8F0: F7        .byte $F7   ; 
- D 2 - I - 0x01D901 07:D8F1: FC        .byte $FC   ; 
- D 2 - I - 0x01D902 07:D8F2: FF        .byte $FF   ; 
- D 2 - I - 0x01D903 07:D8F3: FF        .byte $FF   ; 



ofs_001_D8F4_02:
C - - J - - 0x01D904 07:D8F4: A4 21     LDY ram_0021_t01
C - - - - - 0x01D906 07:D8F6: D0 0A     BNE bra_D902
C - - - - - 0x01D908 07:D8F8: 20 1A F5  JSR sub_0x01F52A
C - - - - - 0x01D90B 07:D8FB: 90 26     BCC bra_D923_RTS
C - - - - - 0x01D90D 07:D8FD: E6 21     INC ram_0021_t01
C - - - - - 0x01D90F 07:D8FF: 4C 97 D1  JMP loc_D197
bra_D902:
C - - - - - 0x01D912 07:D902: 88        DEY
C - - - - - 0x01D913 07:D903: D0 1F     BNE bra_D924
C - - - - - 0x01D915 07:D905: A9 00     LDA #$00
C - - - - - 0x01D917 07:D907: 85 69     STA ram_0069
C - - - - - 0x01D919 07:D909: A5 75     LDA ram_stage
C - - - - - 0x01D91B 07:D90B: F0 02     BEQ bra_D90F
C - - - - - 0x01D91D 07:D90D: A9 01     LDA #$01
bra_D90F:
C - - - - - 0x01D91F 07:D90F: 85 34     STA ram_mirroring
C - - - - - 0x01D921 07:D911: A9 02     LDA #con_prg_pair + $02
C - - - - - 0x01D923 07:D913: 20 4C F3  JSR sub_0x01F35C_prg_bankswitch
C - - - - - 0x01D926 07:D916: 20 01 80  JSR sub_0x008011
bra_D919:
C - - - - - 0x01D929 07:D919: A9 01     LDA #con_prg_pair + $01
C - - - - - 0x01D92B 07:D91B: 20 4C F3  JSR sub_0x01F35C_prg_bankswitch
C - - - - - 0x01D92E 07:D91E: 20 44 98  JSR sub_0x015854
C - - - - - 0x01D931 07:D921: E6 21     INC ram_0021_t01
bra_D923_RTS:
C - - - - - 0x01D933 07:D923: 60        RTS
bra_D924:
C - - - - - 0x01D934 07:D924: 88        DEY
C - - - - - 0x01D935 07:D925: F0 F2     BEQ bra_D919
; bzk optimize, useless LDA + STA
C - - - - - 0x01D937 07:D927: A9 00     LDA #$00
C - - - - - 0x01D939 07:D929: 85 21     STA ram_0021_t04_useless
C - - - - - 0x01D93B 07:D92B: E6 44     INC ram_script_lo
C - - - - - 0x01D93D 07:D92D: 20 36 D9  JSR sub_D936
C - - - - - 0x01D940 07:D930: 20 C8 F8  JSR sub_0x01F8D8_prepare_irq_data
C - - - - - 0x01D943 07:D933: 4C 8B 9E  JMP loc_0x015E9B



sub_D936:
C - - - - - 0x01D946 07:D936: A5 75     LDA ram_stage
C - - - - - 0x01D948 07:D938: 09 10     ORA #$10
C - - - - - 0x01D94A 07:D93A: 8D 64 03  STA ram_0364
C - - - - - 0x01D94D 07:D93D: A0 01     LDY #$01
C - - - - - 0x01D94F 07:D93F: 20 B1 F4  JSR sub_0x01F4C1
C - - - - - 0x01D952 07:D942: A9 00     LDA #$00
C - - - - - 0x01D954 07:D944: 85 2B     STA ram_002B_flags
C - - - - - 0x01D956 07:D946: A9 01     LDA #con_prg_pair + $01
C - - - - - 0x01D958 07:D948: 20 4C F3  JSR sub_0x01F35C_prg_bankswitch
C - - - - - 0x01D95B 07:D94B: 20 69 9F  JSR sub_0x015F79
C - - - - - 0x01D95E 07:D94E: 4C C2 D9  JMP loc_D9C2



ofs_001_D951_03:
C - - J - - 0x01D961 07:D951: 20 69 F5  JSR sub_0x01F579
C - - - - - 0x01D964 07:D954: 90 CD     BCC bra_D923_RTS
C - - - - - 0x01D966 07:D956: E6 44     INC ram_script_lo
C - - - - - 0x01D968 07:D958: A4 75     LDY ram_stage
C - - - - - 0x01D96A 07:D95A: B9 64 D9  LDA tbl_D964_stage_music,Y
C - - - - - 0x01D96D 07:D95D: C9 FF     CMP #$FF
C - - - - - 0x01D96F 07:D95F: F0 C2     BEQ bra_D923_RTS
C - - - - - 0x01D971 07:D961: 4C CA FE  JMP loc_0x01FEDA_add_music_to_queue



tbl_D964_stage_music:
- D 2 - - - 0x01D974 07:D964: 74        .byte con_music_74   ; 00 stage 1
- D 2 - - - 0x01D975 07:D965: 7C        .byte con_music_7C   ; 01 stage 2
- D 2 - - - 0x01D976 07:D966: 80        .byte con_music_80   ; 02 stage 3
- D 2 - - - 0x01D977 07:D967: 84        .byte con_music_84   ; 03 stage 4
- D 2 - - - 0x01D978 07:D968: FF        .byte $FF   ; 04 stage 5



ofs_001_D969_04_gameplay:
C - - J - - 0x01D979 07:D969: A5 3E     LDA ram_003E_brightness_counter
C - - - - - 0x01D97B 07:D96B: F0 05     BEQ bra_D972
C - - - - - 0x01D97D 07:D96D: A9 00     LDA #$00
C - - - - - 0x01D97F 07:D96F: 85 3E     STA ram_003E_brightness_counter
bra_D971_RTS:
C - - - - - 0x01D981 07:D971: 60        RTS
bra_D972:
C - - - - - 0x01D982 07:D972: A9 00     LDA #con_prg_pair + $00
C - - - - - 0x01D984 07:D974: 20 4C F3  JSR sub_0x01F35C_prg_bankswitch
C - - - - - 0x01D987 07:D977: 20 7D BA  JSR sub_0x003A8D
C - - - - - 0x01D98A 07:D97A: A5 6B     LDA ram_006B
C - - - - - 0x01D98C 07:D97C: 05 6C     ORA ram_006C
C - - - - - 0x01D98E 07:D97E: 05 69     ORA ram_0069
C - - - - - 0x01D990 07:D980: 05 6A     ORA ram_006A
C - - - - - 0x01D992 07:D982: F0 03     BEQ bra_D987
C - - - - - 0x01D994 07:D984: 20 C1 F6  JSR sub_0x01F6D1
bra_D987:
C - - - - - 0x01D997 07:D987: A9 01     LDA #con_prg_pair + $01
C - - - - - 0x01D999 07:D989: 20 4C F3  JSR sub_0x01F35C_prg_bankswitch
C - - - - - 0x01D99C 07:D98C: 20 AC D9  JSR sub_D9AC
C - - - - - 0x01D99F 07:D98F: 20 94 F9  JSR sub_0x01F9A4
C - - - - - 0x01D9A2 07:D992: A5 BB     LDA ram_00BB_flag
C - - - - - 0x01D9A4 07:D994: D0 DB     BNE bra_D971_RTS
C - - - - - 0x01D9A6 07:D996: A9 05     LDA #con_prg_pair + $05
C - - - - - 0x01D9A8 07:D998: 20 4C F3  JSR sub_0x01F35C_prg_bankswitch
C - - - - - 0x01D9AB 07:D99B: 20 01 A0  JSR sub_0x00C011
C - - - - - 0x01D9AE 07:D99E: A9 02     LDA #con_prg_pair + $02
C - - - - - 0x01D9B0 07:D9A0: 20 4C F3  JSR sub_0x01F35C_prg_bankswitch
C - - - - - 0x01D9B3 07:D9A3: 20 B6 80  JSR sub_0x0080C6
C - - - - - 0x01D9B6 07:D9A6: 20 32 81  JSR sub_0x008142
C - - - - - 0x01D9B9 07:D9A9: 4C 7A B3  JMP loc_0x00B38A



sub_D9AC:
ofs_006_0x01D9BC_14:
; con_F3D6_14
C - - - - - 0x01D9BC 07:D9AC: A5 BB     LDA ram_00BB_flag
C - - - - - 0x01D9BE 07:D9AE: F0 03     BEQ bra_D9B3
C - - - - - 0x01D9C0 07:D9B0: 20 FD 96  JSR sub_0x01570D
bra_D9B3:
C - - - - - 0x01D9C3 07:D9B3: 20 69 9F  JSR sub_0x015F79
C - - - - - 0x01D9C6 07:D9B6: 20 68 99  JSR sub_0x015978
C - - - - - 0x01D9C9 07:D9B9: 20 F6 F5  JSR sub_0x01F606
C - - - - - 0x01D9CC 07:D9BC: 20 C2 D9  JSR sub_D9C2
C - - - - - 0x01D9CF 07:D9BF: 4C C2 ED  JMP loc_0x01EDD2



loc_D9C2:
sub_D9C2:
sub_0x01D9D2:
C D 2 - - - 0x01D9D2 07:D9C2: AD 41 03  LDA ram_0341
C - - - - - 0x01D9D5 07:D9C5: D0 07     BNE bra_D9CE
C - - - - - 0x01D9D7 07:D9C7: A4 75     LDY ram_stage
C - - - - - 0x01D9D9 07:D9C9: B9 13 DA  LDA tbl_DA13,Y
C - - - - - 0x01D9DC 07:D9CC: 85 7C     STA ram_chr_bank + $05
bra_D9CE:
C - - - - - 0x01D9DE 07:D9CE: AD 43 03  LDA ram_0343
C - - - - - 0x01D9E1 07:D9D1: F0 0F     BEQ bra_D9E2
C - - - - - 0x01D9E3 07:D9D3: AD 42 03  LDA ram_0342
C - - - - - 0x01D9E6 07:D9D6: F0 04     BEQ bra_D9DC
C - - - - - 0x01D9E8 07:D9D8: C9 05     CMP #$05
C - - - - - 0x01D9EA 07:D9DA: D0 5C     BNE bra_DA38_RTS
bra_D9DC:
C - - - - - 0x01D9EC 07:D9DC: A5 20     LDA ram_script_hi
C - - - - - 0x01D9EE 07:D9DE: C9 04     CMP #con_0020_04
C - - - - - 0x01D9F0 07:D9E0: F0 56     BEQ bra_DA38_RTS
bra_D9E2:
C - - - - - 0x01D9F2 07:D9E2: A4 86     LDY ram_0086_table_index
C - - - - - 0x01D9F4 07:D9E4: C0 02     CPY #$02
C - - - - - 0x01D9F6 07:D9E6: F0 06     BEQ bra_D9EE
bra_D9E8:
C - - - - - 0x01D9F8 07:D9E8: B9 F8 D9  LDA tbl_D9F8,Y
bra_D9EB:
C - - - - - 0x01D9FB 07:D9EB: 4C 48 F4  JMP loc_0x01F458_select_bg_chr_bank_pair
bra_D9EE:
C - - - - - 0x01D9FE 07:D9EE: A5 23     LDA ram_frm_cnt
C - - - - - 0x01DA00 07:D9F0: 29 10     AND #$10
C - - - - - 0x01DA02 07:D9F2: F0 F4     BEQ bra_D9E8
C - - - - - 0x01DA04 07:D9F4: A9 04     LDA #$04
C - - - - - 0x01DA06 07:D9F6: D0 F3     BNE bra_D9EB    ; jmp



tbl_D9F8:
- D 2 - - - 0x01DA08 07:D9F8: 00        .byte con_chr_pair + $00   ; 00 
- D 2 - - - 0x01DA09 07:D9F9: 01        .byte con_chr_pair + $01   ; 01 
- D 2 - - - 0x01DA0A 07:D9FA: 02        .byte con_chr_pair + $02   ; 02 
- D 2 - - - 0x01DA0B 07:D9FB: 03        .byte con_chr_pair + $03   ; 03 
- D 2 - - - 0x01DA0C 07:D9FC: 03        .byte con_chr_pair + $03   ; 04 
- D 2 - - - 0x01DA0D 07:D9FD: 06        .byte con_chr_pair + $06   ; 05 
- D 2 - - - 0x01DA0E 07:D9FE: 07        .byte con_chr_pair + $07   ; 06 
- D 2 - - - 0x01DA0F 07:D9FF: 08        .byte con_chr_pair + $08   ; 07 
- D 2 - - - 0x01DA10 07:DA00: 09        .byte con_chr_pair + $09   ; 08 
- D 2 - - - 0x01DA11 07:DA01: 0A        .byte con_chr_pair + $0A   ; 09 
- D 2 - - - 0x01DA12 07:DA02: 0B        .byte con_chr_pair + $0B   ; 0A 
- D 2 - - - 0x01DA13 07:DA03: 0C        .byte con_chr_pair + $0C   ; 0B 
- - - - - - 0x01DA14 07:DA04: 0D        .byte con_chr_pair + $0D   ; 0C 
- D 2 - - - 0x01DA15 07:DA05: 0E        .byte con_chr_pair + $0E   ; 0D 
- D 2 - - - 0x01DA16 07:DA06: 0F        .byte con_chr_pair + $0F   ; 0E 
- D 2 - - - 0x01DA17 07:DA07: 10        .byte con_chr_pair + $10   ; 0F 
- D 2 - - - 0x01DA18 07:DA08: 11        .byte con_chr_pair + $11   ; 10 
- D 2 - - - 0x01DA19 07:DA09: 12        .byte con_chr_pair + $12   ; 11 
- D 2 - - - 0x01DA1A 07:DA0A: 13        .byte con_chr_pair + $13   ; 12 
- D 2 - - - 0x01DA1B 07:DA0B: 14        .byte con_chr_pair + $14   ; 13 
- D 2 - - - 0x01DA1C 07:DA0C: 15        .byte con_chr_pair + $15   ; 14 
- D 2 - - - 0x01DA1D 07:DA0D: 16        .byte con_chr_pair + $16   ; 15 
- D 2 - - - 0x01DA1E 07:DA0E: 17        .byte con_chr_pair + $17   ; 16 
- D 2 - - - 0x01DA1F 07:DA0F: 17        .byte con_chr_pair + $17   ; 17 
- D 2 - - - 0x01DA20 07:DA10: 18        .byte con_chr_pair + $18   ; 18 
- D 2 - - - 0x01DA21 07:DA11: 19        .byte con_chr_pair + $19   ; 19 
- D 2 - - - 0x01DA22 07:DA12: 1A        .byte con_chr_pair + $1A   ; 1A 



tbl_DA13:
- D 2 - - - 0x01DA23 07:DA13: 0D        .byte con_chr_bank + $0D   ; 00 stage 1
- D 2 - - - 0x01DA24 07:DA14: 1A        .byte con_chr_bank + $1A   ; 01 stage 2
- D 2 - - - 0x01DA25 07:DA15: 0D        .byte con_chr_bank + $0D   ; 02 stage 3
- D 2 - - - 0x01DA26 07:DA16: 1A        .byte con_chr_bank + $1A   ; 03 stage 4
- D 2 - - - 0x01DA27 07:DA17: 0D        .byte con_chr_bank + $0D   ; 04 stage 5



sub_DA18:
C - - - - - 0x01DA28 07:DA18: A5 27     LDA ram_0027_useless_00
C - - - - - 0x01DA2A 07:DA1A: 05 46     ORA ram_0046_useless_00
C - - - - - 0x01DA2C 07:DA1C: 05 25     ORA ram_disable_rendering_timer
C - - - - - 0x01DA2E 07:DA1E: D0 18     BNE bra_DA38_RTS
C - - - - - 0x01DA30 07:DA20: A5 40     LDA ram_btn_press_1
C - - - - - 0x01DA32 07:DA22: 05 41     ORA ram_btn_press_1 + $01
C - - - - - 0x01DA34 07:DA24: A4 45     LDY ram_pause_flag
C - - - - - 0x01DA36 07:DA26: D0 10     BNE bra_DA38_RTS
C - - - - - 0x01DA38 07:DA28: 29 10     AND #con_btn_Start
C - - - - - 0x01DA3A 07:DA2A: F0 0C     BEQ bra_DA38_RTS
C - - - - - 0x01DA3C 07:DA2C: AD 5B 03  LDA ram_035B_flag
C - - - - - 0x01DA3F 07:DA2F: D0 07     BNE bra_DA38_RTS
C - - - - - 0x01DA41 07:DA31: E6 45     INC ram_pause_flag
C - - - - - 0x01DA43 07:DA33: A9 67     LDA #con_music_67
C - - - - - 0x01DA45 07:DA35: 4C CA FE  JMP loc_0x01FEDA_add_music_to_queue
bra_DA38_RTS:
C - - - - - 0x01DA48 07:DA38: 60        RTS



sub_DA39:
C - - - - - 0x01DA49 07:DA39: A2 15     LDX #$15
sub_0x01DA4B:
bra_DA3B_loop:
C - - - - - 0x01DA4B 07:DA3B: A9 00     LDA #$00
C - - - - - 0x01DA4D 07:DA3D: 9D 1A 06  STA ram_obj_animation_lo,X
C - - - - - 0x01DA50 07:DA40: 9D 68 06  STA ram_obj_pos_Y,X
C - - - - - 0x01DA53 07:DA43: 9D 4E 06  STA ram_obj_pos_X,X
C - - - - - 0x01DA56 07:DA46: 9D 34 06  STA ram_obj_animation_hi,X
C - - - - - 0x01DA59 07:DA49: CA        DEX
C - - - - - 0x01DA5A 07:DA4A: 10 EF     BPL bra_DA3B_loop
C - - - - - 0x01DA5C 07:DA4C: 60        RTS



tbl_0x01DA5D_nametable_attributes:
- D 2 - - - 0x01DA5D 07:DA4D: 91 8F     .word _off030_0x018FA1_00_stage_1
- D 2 - - - 0x01DA5F 07:DA4F: 9A A6     .word _off030_0x01A6AA_02_stage_2
- D 2 - - - 0x01DA61 07:DA51: D1 AE     .word _off030_0x006EE1_04_stage_3
- D 2 - - - 0x01DA63 07:DA53: 4A BC     .word _off030_0x01BC5A_06_stage_4
- D 2 - - - 0x01DA65 07:DA55: 4E BC     .word _off030_0x007C5E_08_stage_5



tbl_0x01DA67_metatiles:
; 4x4 tiles
- D 2 - - - 0x01DA67 07:DA57: 01 86     .word _off029_0x018611_00_stage_1
- D 2 - - - 0x01DA69 07:DA59: AA 96     .word _off029_0x0196BA_02_stage_2
- D 2 - - - 0x01DA6B 07:DA5B: 01 A6     .word _off029_0x006611_04_stage_3
- D 2 - - - 0x01DA6D 07:DA5D: 5A B0     .word _off029_0x01B06A_06_stage_4
- D 2 - - - 0x01DA6F 07:DA5F: 5E B4     .word _off029_0x00746E_08_stage_5



tbl_0x01DA71_metatile_indexes:
- D 2 - - - 0x01DA71 07:DA61: 01 80     .word _off028_0x018011_00_stage_1
- D 2 - - - 0x01DA73 07:DA63: 2A 90     .word _off028_0x01903A_02_stage_2
- D 2 - - - 0x01DA75 07:DA65: 01 A0     .word _off028_0x006011_04_stage_3
- D 2 - - - 0x01DA77 07:DA67: 9A A7     .word _off028_0x01A7AA_06_stage_4
- D 2 - - - 0x01DA79 07:DA69: 5E AF     .word _off028_0x006F6E_08_stage_5



sub_0x01DA7B:
ofs_006_0x01DA7B_1C:
; con_F3D6_1C
C - - - - - 0x01DA7B 07:DA6B: A4 75     LDY ram_stage
C - - - - - 0x01DA7D 07:DA6D: C0 02     CPY #$02
C - - - - - 0x01DA7F 07:DA6F: 90 04     BCC bra_DA75
ofs_006_0x01DA81_1B:
; con_F3D6_1B
C - - - - - 0x01DA81 07:DA71: A5 1F     LDA ram_001F_t01
C - - - - - 0x01DA83 07:DA73: D0 09     BNE bra_DA7E
bra_DA75:
ofs_006_0x01DA85_05:
; con_F3D6_05
ofs_006_0x01DA85_06:
; con_F3D6_06
ofs_006_0x01DA85_0C:
; con_F3D6_0C
C - - J - - 0x01DA85 07:DA75: A5 1F     LDA ram_001F_t01
loc_0x01DA87:
C D 2 - - - 0x01DA87 07:DA77: A0 00     LDY #$00
C - - - - - 0x01DA89 07:DA79: 84 3D     STY ram_003D_t02_flag
C - - - - - 0x01DA8B 07:DA7B: 8C 56 03  STY ram_0356_flag
bra_DA7E:
C - - - - - 0x01DA8E 07:DA7E: AC 56 03  LDY ram_0356_flag
C - - - - - 0x01DA91 07:DA81: D0 06     BNE bra_DA89
C - - - - - 0x01DA93 07:DA83: A6 26     LDX ram_buffer_index
C - - - - - 0x01DA95 07:DA85: E0 20     CPX #$20
C - - - - - 0x01DA97 07:DA87: B0 10     BCS bra_DA99_RTS
bra_DA89:
C - - - - - 0x01DA99 07:DA89: 0A        ASL
C - - - - - 0x01DA9A 07:DA8A: A8        TAY
C - - - - - 0x01DA9B 07:DA8B: B9 9D DA  LDA tbl_DA9D,Y
C - - - - - 0x01DA9E 07:DA8E: 85 00     STA ram_0000_t1A_jmp
C - - - - - 0x01DAA0 07:DA90: B9 9E DA  LDA tbl_DA9D + $01,Y
C - - - - - 0x01DAA3 07:DA93: 85 01     STA ram_0000_t1A_jmp + $01
C - - - - - 0x01DAA5 07:DA95: 20 9A DA  JSR sub_DA9A_execute_indirect_jump_0000
C - - - - - 0x01DAA8 07:DA98: 18        CLC
bra_DA99_RTS:
C - - - - - 0x01DAA9 07:DA99: 60        RTS



sub_DA9A_execute_indirect_jump_0000:
sub_0x01DAAA_execute_indirect_jump_0000:
C - - - - - 0x01DAAA 07:DA9A: 6C 00 00  JMP (ram_0000_t1A_jmp)



tbl_DA9D:
; see con_DA9D
- D 2 - - - 0x01DAAD 07:DA9D: 18 DC     .word ofs_002_DC18_00
- D 2 - - - 0x01DAAF 07:DA9F: D2 E3     .word ofs_002_0x01E3E2_01
- D 2 - - - 0x01DAB1 07:DAA1: 64 E2     .word ofs_002_0x01E274_02
- D 2 - - - 0x01DAB3 07:DAA3: C2 E1     .word ofs_002_0x01E1D2_03
- D 2 - - - 0x01DAB5 07:DAA5: F0 EC     .word ofs_002_0x01ED00_04
- D 2 - - - 0x01DAB7 07:DAA7: 12 DD     .word ofs_002_DD12_05
- D 2 - - - 0x01DAB9 07:DAA9: E5 DB     .word ofs_002_DBE5_06
- D 2 - - - 0x01DABB 07:DAAB: 69 DB     .word ofs_002_DB69_07
- D 2 - - - 0x01DABD 07:DAAD: 5F DB     .word ofs_002_DB5F_08
- D 2 - - - 0x01DABF 07:DAAF: 97 E1     .word ofs_002_0x01E1A7_09
- - - - - - 0x01DAC1 07:DAB1: D3 DA     .word ofs_002_DAD3_0A   ; unused, index doesn't exist
- D 2 - - - 0x01DAC3 07:DAB3: E8 DC     .word ofs_002_DCE8_0B
- - - - - - 0x01DAC5 07:DAB5: 1C E1     .word ofs_002_0x01E12C_0C   ; unused, index doesn't exist
- D 2 - - - 0x01DAC7 07:DAB7: 95 E3     .word ofs_002_0x01E3A5_0D
- D 2 - - - 0x01DAC9 07:DAB9: D2 DC     .word ofs_002_DCD2_0E
- D 2 - - - 0x01DACB 07:DABB: C7 DC     .word ofs_002_DCC7_0F
- D 2 - - - 0x01DACD 07:DABD: 42 E2     .word ofs_002_0x01E252_10
- D 2 - - - 0x01DACF 07:DABF: 2F E1     .word ofs_002_0x01E13F_11



sub_0x01DAD1_close_ppu_buffer:
loc_0x01DAD1_close_ppu_buffer:
C D 2 - - - 0x01DAD1 07:DAC1: A9 FF     LDA #$FF
C - - - - - 0x01DAD3 07:DAC3: 20 C9 DA  JSR sub_DAC9_write_byte_to_ppu_buffer
C - - - - - 0x01DAD6 07:DAC6: 86 26     STX ram_buffer_index
C - - - - - 0x01DAD8 07:DAC8: 60        RTS



sub_DAC9_write_byte_to_ppu_buffer:
sub_0x01DAD9_write_byte_to_ppu_buffer:
loc_0x01DAD9_write_byte_to_ppu_buffer:
C D 2 - - - 0x01DAD9 07:DAC9: 9D 00 01  STA ram_ppu_buffer_1,X
C - - - - - 0x01DADC 07:DACC: E8        INX
C - - - - - 0x01DADD 07:DACD: 60        RTS



ofs_002_DAD3_0A:
; con_DA9D_0A
; bzk garbage up to 0x01DB6C
- - - - - - 0x01DAE3 07:DAD3: A5 0F     LDA ram_000F_temp
- - - - - - 0x01DAE5 07:DAD5: 85 0D     STA ram_000D_temp
- - - - - - 0x01DAE7 07:DAD7: A5 0E     LDA ram_000E_temp
- - - - - - 0x01DAE9 07:DAD9: 85 0C     STA ram_000C_temp
- - - - - - 0x01DAEB 07:DADB: A6 26     LDX ram_buffer_index
- - - - - - 0x01DAED 07:DADD: A0 FF     LDY #$FF
loc_DADF_loop:
- - - - - - 0x01DAEF 07:DADF: A5 04     LDA ram_0004_temp
- - - - - - 0x01DAF1 07:DAE1: 85 00     STA ram_0000_temp
- - - - - - 0x01DAF3 07:DAE3: A5 05     LDA ram_0005_temp
- - - - - - 0x01DAF5 07:DAE5: 85 01     STA ram_0001_temp
- - - - - - 0x01DAF7 07:DAE7: A5 0D     LDA ram_000D_temp
- - - - - - 0x01DAF9 07:DAE9: 18        CLC
- - - - - - 0x01DAFA 07:DAEA: 65 00     ADC ram_0000_temp
- - - - - - 0x01DAFC 07:DAEC: 85 00     STA ram_0000_temp
loc_DAEE_loop:
bra_DAEE_loop:
- - - - - - 0x01DAFE 07:DAEE: C8        INY
- - - - - - 0x01DAFF 07:DAEF: A5 0D     LDA ram_000D_temp
- - - - - - 0x01DB01 07:DAF1: F0 0A     BEQ bra_DAFD
- - - - - - 0x01DB03 07:DAF3: 38        SEC
- - - - - - 0x01DB04 07:DAF4: F1 02     SBC (ram_0002_t02_ppu_data),Y
- - - - - - 0x01DB06 07:DAF6: 90 05     BCC bra_DAFD
- - - - - - 0x01DB08 07:DAF8: 85 0D     STA ram_000D_temp
- - - - - - 0x01DB0A 07:DAFA: C8        INY
- - - - - - 0x01DB0B 07:DAFB: D0 F1     BNE bra_DAEE_loop
bra_DAFD:
- - - - - - 0x01DB0D 07:DAFD: 86 26     STX ram_buffer_index
- - - - - - 0x01DB0F 07:DAFF: A9 03     LDA #$03
- - - - - - 0x01DB11 07:DB01: 20 C9 DA  JSR sub_DAC9_write_byte_to_ppu_buffer
- - - - - - 0x01DB14 07:DB04: A5 00     LDA ram_0000_temp
- - - - - - 0x01DB16 07:DB06: 20 C9 DA  JSR sub_DAC9_write_byte_to_ppu_buffer
- - - - - - 0x01DB19 07:DB09: A5 01     LDA ram_0001_temp
- - - - - - 0x01DB1B 07:DB0B: 20 C9 DA  JSR sub_DAC9_write_byte_to_ppu_buffer
- - - - - - 0x01DB1E 07:DB0E: B1 02     LDA (ram_0002_t02_ppu_data),Y
- - - - - - 0x01DB20 07:DB10: C9 FF     CMP #$FF
- - - - - - 0x01DB22 07:DB12: F0 39     BEQ bra_DB4D
- - - - - - 0x01DB24 07:DB14: 38        SEC
- - - - - - 0x01DB25 07:DB15: E5 0D     SBC ram_000D_temp
- - - - - - 0x01DB27 07:DB17: 85 06     STA ram_0006_temp
- - - - - - 0x01DB29 07:DB19: A9 00     LDA #$00
- - - - - - 0x01DB2B 07:DB1B: 85 0D     STA ram_000D_temp
- - - - - - 0x01DB2D 07:DB1D: A5 0C     LDA ram_000C_temp
- - - - - - 0x01DB2F 07:DB1F: 38        SEC
- - - - - - 0x01DB30 07:DB20: E5 06     SBC ram_0006_temp
- - - - - - 0x01DB32 07:DB22: 90 0C     BCC bra_DB30
- - - - - - 0x01DB34 07:DB24: 85 0C     STA ram_000C_temp
- - - - - - 0x01DB36 07:DB26: A5 06     LDA ram_0006_temp
- - - - - - 0x01DB38 07:DB28: D0 10     BNE bra_DB3A
bra_DB2A:
- - - - - - 0x01DB3A 07:DB2A: C8        INY
- - - - - - 0x01DB3B 07:DB2B: A6 26     LDX ram_buffer_index
- - - - - - 0x01DB3D 07:DB2D: 4C EE DA  JMP loc_DAEE_loop
bra_DB30:
- - - - - - 0x01DB40 07:DB30: A5 0C     LDA ram_000C_temp
- - - - - - 0x01DB42 07:DB32: F0 F6     BEQ bra_DB2A
- - - - - - 0x01DB44 07:DB34: 48        PHA
- - - - - - 0x01DB45 07:DB35: A9 00     LDA #$00
- - - - - - 0x01DB47 07:DB37: 85 0C     STA ram_000C_temp
- - - - - - 0x01DB49 07:DB39: 68        PLA
bra_DB3A:
- - - - - - 0x01DB4A 07:DB3A: 20 C9 DA  JSR sub_DAC9_write_byte_to_ppu_buffer
- - - - - - 0x01DB4D 07:DB3D: C8        INY
- - - - - - 0x01DB4E 07:DB3E: B1 02     LDA (ram_0002_t02_ppu_data),Y
- - - - - - 0x01DB50 07:DB40: 20 C9 DA  JSR sub_DAC9_write_byte_to_ppu_buffer
- - - - - - 0x01DB53 07:DB43: A5 06     LDA ram_0006_temp
- - - - - - 0x01DB55 07:DB45: 18        CLC
- - - - - - 0x01DB56 07:DB46: 65 00     ADC ram_0000_temp
- - - - - - 0x01DB58 07:DB48: 85 00     STA ram_0000_temp
- - - - - - 0x01DB5A 07:DB4A: 4C EE DA  JMP loc_DAEE_loop
bra_DB4D:
- - - - - - 0x01DB5D 07:DB4D: A5 0E     LDA ram_000E_temp
- - - - - - 0x01DB5F 07:DB4F: 85 0C     STA ram_000C_temp
- - - - - - 0x01DB61 07:DB51: A5 0F     LDA ram_000F_temp
- - - - - - 0x01DB63 07:DB53: 85 0D     STA ram_000D_temp
- - - - - - 0x01DB65 07:DB55: 20 BD DB  JSR sub_DBBD_increase_ppu_address_by_0020
- - - - - - 0x01DB68 07:DB58: C6 07     DEC ram_0007_temp
- - - - - - 0x01DB6A 07:DB5A: F0 13     BEQ bra_DB6F_RTS
- - - - - - 0x01DB6C 07:DB5C: 4C DF DA  JMP loc_DADF_loop



ofs_002_DB5F_08:
; con_DA9D_08
C - - J - - 0x01DB6F 07:DB5F: A6 26     LDX ram_buffer_index
C - - - - - 0x01DB71 07:DB61: E0 20     CPX #$20
C - - - - - 0x01DB73 07:DB63: B0 0A     BCS bra_DB6F_RTS
C - - - - - 0x01DB75 07:DB65: A0 FF     LDY #$FF
C - - - - - 0x01DB77 07:DB67: D0 17     BNE bra_DB80    ; jmp



ofs_002_DB69_07:
; con_DA9D_07
C - - J - - 0x01DB79 07:DB69: A6 26     LDX ram_buffer_index
C - - - - - 0x01DB7B 07:DB6B: E0 20     CPX #$20
C - - - - - 0x01DB7D 07:DB6D: 90 01     BCC bra_DB70
bra_DB6F_RTS:
- - - - - - 0x01DB7F 07:DB6F: 60        RTS
bra_DB70:
C - - - - - 0x01DB80 07:DB70: A0 00     LDY #$00
C - - - - - 0x01DB82 07:DB72: B1 02     LDA (ram_0002_t02_ppu_data),Y
C - - - - - 0x01DB84 07:DB74: 85 04     STA ram_0004_t06_ppu_addr_lo
C - - - - - 0x01DB86 07:DB76: C8        INY ; 01
C - - - - - 0x01DB87 07:DB77: B1 02     LDA (ram_0002_t02_ppu_data),Y
C - - - - - 0x01DB89 07:DB79: 85 05     STA ram_0005_t06_ppu_addr_hi
C - - - - - 0x01DB8B 07:DB7B: C8        INY ; 02
C - - - - - 0x01DB8C 07:DB7C: B1 02     LDA (ram_0002_t02_ppu_data),Y
C - - - - - 0x01DB8E 07:DB7E: 85 07     STA ram_0007_t02_loop_counter
bra_DB80:
bra_DB80_loop:
; copy default ppu address
C - - - - - 0x01DB90 07:DB80: A5 04     LDA ram_0004_t06_ppu_addr_lo
C - - - - - 0x01DB92 07:DB82: 85 00     STA ram_0000_t7C_ppu_addr_lo
C - - - - - 0x01DB94 07:DB84: A5 05     LDA ram_0005_t06_ppu_addr_hi
C - - - - - 0x01DB96 07:DB86: 85 01     STA ram_0001_t49_ppu_addr_hi
loc_DB88_loop:
C D 2 - - - 0x01DB98 07:DB88: 86 26     STX ram_buffer_index
C - - - - - 0x01DB9A 07:DB8A: C8        INY
C - - - - - 0x01DB9B 07:DB8B: A9 03     LDA #$03
C - - - - - 0x01DB9D 07:DB8D: 20 C9 DA  JSR sub_DAC9_write_byte_to_ppu_buffer
C - - - - - 0x01DBA0 07:DB90: A5 00     LDA ram_0000_t7C_ppu_addr_lo
C - - - - - 0x01DBA2 07:DB92: 20 C9 DA  JSR sub_DAC9_write_byte_to_ppu_buffer
C - - - - - 0x01DBA5 07:DB95: A5 01     LDA ram_0001_t49_ppu_addr_hi
C - - - - - 0x01DBA7 07:DB97: 20 C9 DA  JSR sub_DAC9_write_byte_to_ppu_buffer
C - - - - - 0x01DBAA 07:DB9A: B1 02     LDA (ram_0002_t02_ppu_data),Y
; bzk optimize, CMP + BEQ first, then STA
C - - - - - 0x01DBAC 07:DB9C: 85 06     STA ram_0006_t07
C - - - - - 0x01DBAE 07:DB9E: C9 FF     CMP #$FF
C - - - - - 0x01DBB0 07:DBA0: F0 13     BEQ bra_DBB5_FF
C - - - - - 0x01DBB2 07:DBA2: 20 C9 DA  JSR sub_DAC9_write_byte_to_ppu_buffer
C - - - - - 0x01DBB5 07:DBA5: C8        INY
C - - - - - 0x01DBB6 07:DBA6: B1 02     LDA (ram_0002_t02_ppu_data),Y
C - - - - - 0x01DBB8 07:DBA8: 20 C9 DA  JSR sub_DAC9_write_byte_to_ppu_buffer
C - - - - - 0x01DBBB 07:DBAB: A5 06     LDA ram_0006_t07
C - - - - - 0x01DBBD 07:DBAD: 18        CLC
C - - - - - 0x01DBBE 07:DBAE: 65 00     ADC ram_0000_t7C_ppu_addr_lo
C - - - - - 0x01DBC0 07:DBB0: 85 00     STA ram_0000_t7C_ppu_addr_lo
C - - - - - 0x01DBC2 07:DBB2: 4C 88 DB  JMP loc_DB88_loop
bra_DBB5_FF:
C - - - - - 0x01DBC5 07:DBB5: 20 BD DB  JSR sub_DBBD_increase_ppu_address_by_0020
C - - - - - 0x01DBC8 07:DBB8: C6 07     DEC ram_0007_t02_loop_counter
C - - - - - 0x01DBCA 07:DBBA: D0 C4     BNE bra_DB80_loop
C - - - - - 0x01DBCC 07:DBBC: 60        RTS



sub_DBBD_increase_ppu_address_by_0020:
C - - - - - 0x01DBCD 07:DBBD: A6 26     LDX ram_buffer_index
C - - - - - 0x01DBCF 07:DBBF: A5 04     LDA ram_0004_t06_ppu_addr_lo
C - - - - - 0x01DBD1 07:DBC1: 18        CLC
C - - - - - 0x01DBD2 07:DBC2: 69 20     ADC #< $0020
C - - - - - 0x01DBD4 07:DBC4: 85 04     STA ram_0004_t06_ppu_addr_lo
C - - - - - 0x01DBD6 07:DBC6: A5 05     LDA ram_0005_t06_ppu_addr_hi
C - - - - - 0x01DBD8 07:DBC8: 69 00     ADC #> $0020
C - - - - - 0x01DBDA 07:DBCA: 85 05     STA ram_0005_t06_ppu_addr_hi
C - - - - - 0x01DBDC 07:DBCC: 29 03     AND #$03
C - - - - - 0x01DBDE 07:DBCE: C9 03     CMP #$03
C - - - - - 0x01DBE0 07:DBD0: D0 12     BNE bra_DBE4_RTS
C - - - - - 0x01DBE2 07:DBD2: A5 04     LDA ram_0004_t06_ppu_addr_lo
C - - - - - 0x01DBE4 07:DBD4: C9 C0     CMP #$C0
C - - - - - 0x01DBE6 07:DBD6: 90 0C     BCC bra_DBE4_RTS
; if overflow (xxC0+)
- - - - - - 0x01DBE8 07:DBD8: 29 1F     AND #$1F
- - - - - - 0x01DBEA 07:DBDA: 85 04     STA ram_0004_t06_ppu_addr_lo
- - - - - - 0x01DBEC 07:DBDC: A5 05     LDA ram_0005_t06_ppu_addr_hi
- - - - - - 0x01DBEE 07:DBDE: 49 0C     EOR #$0C
- - - - - - 0x01DBF0 07:DBE0: 29 2C     AND #$2C
- - - - - - 0x01DBF2 07:DBE2: 85 05     STA ram_0005_t06_ppu_addr_hi
bra_DBE4_RTS:
C - - - - - 0x01DBF4 07:DBE4: 60        RTS



ofs_002_DBE5_06:
; con_DA9D_06
C - - J - - 0x01DBF5 07:DBE5: AD 56 03  LDA ram_0356_flag
C - - - - - 0x01DBF8 07:DBE8: F0 15     BEQ bra_DBFF
C - - - - - 0x01DBFA 07:DBEA: A5 39     LDA ram_buffer_index_2
C - - - - - 0x01DBFC 07:DBEC: C9 20     CMP #$20
C - - - - - 0x01DBFE 07:DBEE: B0 0E     BCS bra_DBFE_RTS
C - - - - - 0x01DC00 07:DBF0: 18        CLC
C - - - - - 0x01DC01 07:DBF1: 69 60     ADC #$60
C - - - - - 0x01DC03 07:DBF3: AA        TAX
C - - - - - 0x01DC04 07:DBF4: 20 0C DC  JSR sub_DC0C
C - - - - - 0x01DC07 07:DBF7: 8A        TXA
C - - - - - 0x01DC08 07:DBF8: 38        SEC
C - - - - - 0x01DC09 07:DBF9: E9 60     SBC #$60
C - - - - - 0x01DC0B 07:DBFB: 85 39     STA ram_buffer_index_2
C - - - - - 0x01DC0D 07:DBFD: 18        CLC
bra_DBFE_RTS:
C - - - - - 0x01DC0E 07:DBFE: 60        RTS
bra_DBFF:
C - - - - - 0x01DC0F 07:DBFF: A6 26     LDX ram_buffer_index
C - - - - - 0x01DC11 07:DC01: E0 20     CPX #$20
C - - - - - 0x01DC13 07:DC03: B0 F9     BCS bra_DBFE_RTS
C - - - - - 0x01DC15 07:DC05: 20 0C DC  JSR sub_DC0C
C - - - - - 0x01DC18 07:DC08: 86 26     STX ram_buffer_index
C - - - - - 0x01DC1A 07:DC0A: 18        CLC
C - - - - - 0x01DC1B 07:DC0B: 60        RTS



sub_DC0C:
C - - - - - 0x01DC1C 07:DC0C: A5 06     LDA ram_0006_t05_ppu_addr_lo
C - - - - - 0x01DC1E 07:DC0E: 85 00     STA ram_0000_t7D_ppu_addr_lo
C - - - - - 0x01DC20 07:DC10: A5 07     LDA ram_0007_t01_ppu_addr_hi
C - - - - - 0x01DC22 07:DC12: 85 01     STA ram_0001_t50_ppu_addr_hi
C - - - - - 0x01DC24 07:DC14: A0 00     LDY #$00
C - - - - - 0x01DC26 07:DC16: F0 12     BEQ bra_DC2A    ; jmp



ofs_002_DC18_00:
; con_DA9D_00
C - - J - - 0x01DC28 07:DC18: A0 00     LDY #$00
C - - - - - 0x01DC2A 07:DC1A: B1 02     LDA (ram_0002_t02_ppu_data),Y
C - - - - - 0x01DC2C 07:DC1C: 85 00     STA ram_0000_t7D_ppu_addr_lo
C - - - - - 0x01DC2E 07:DC1E: C8        INY ; 01
C - - - - - 0x01DC2F 07:DC1F: B1 02     LDA (ram_0002_t02_ppu_data),Y
C - - - - - 0x01DC31 07:DC21: 85 01     STA ram_0001_t50_ppu_addr_hi
C - - - - - 0x01DC33 07:DC23: C8        INY
C - - - - - 0x01DC34 07:DC24: 20 2A DC  JSR sub_DC2A
C - - - - - 0x01DC37 07:DC27: 86 26     STX ram_buffer_index
C - - - - - 0x01DC39 07:DC29: 60        RTS



bra_DC2A:
sub_DC2A:
C - - - - - 0x01DC3A 07:DC2A: B1 02     LDA (ram_0002_t02_ppu_data),Y
C - - - - - 0x01DC3C 07:DC2C: 85 04     STA ram_0004_t25_loop_counter
C - - - - - 0x01DC3E 07:DC2E: 85 07     STA ram_0007_t10
C - - - - - 0x01DC40 07:DC30: C8        INY
C - - - - - 0x01DC41 07:DC31: B1 02     LDA (ram_0002_t02_ppu_data),Y
C - - - - - 0x01DC43 07:DC33: 85 05     STA ram_0005_t08_tiles_counter
C - - - - - 0x01DC45 07:DC35: C8        INY
C - - - - - 0x01DC46 07:DC36: 84 08     STY ram_0008_t13_data_index
C - - - - - 0x01DC48 07:DC38: C5 04     CMP ram_0004_t25_loop_counter
C - - - - - 0x01DC4A 07:DC3A: B0 49     BCS bra_DC85_loop
bra_DC3C_loop:
C - - - - - 0x01DC4C 07:DC3C: A9 01     LDA #$01
C - - - - - 0x01DC4E 07:DC3E: 20 C9 DA  JSR sub_DAC9_write_byte_to_ppu_buffer
C - - - - - 0x01DC51 07:DC41: A5 00     LDA ram_0000_t7D_ppu_addr_lo
C - - - - - 0x01DC53 07:DC43: 20 C9 DA  JSR sub_DAC9_write_byte_to_ppu_buffer
C - - - - - 0x01DC56 07:DC46: A5 01     LDA ram_0001_t50_ppu_addr_hi
C - - - - - 0x01DC58 07:DC48: 20 C9 DA  JSR sub_DAC9_write_byte_to_ppu_buffer
C - - - - - 0x01DC5B 07:DC4B: A5 04     LDA ram_0004_t25_loop_counter
C - - - - - 0x01DC5D 07:DC4D: 85 06     STA ram_0006_t16_loop_counter
bra_DC4F_loop:
C - - - - - 0x01DC5F 07:DC4F: B1 02     LDA (ram_0002_t02_ppu_data),Y
C - - - - - 0x01DC61 07:DC51: 20 C9 DA  JSR sub_DAC9_write_byte_to_ppu_buffer
C - - - - - 0x01DC64 07:DC54: C8        INY
C - - - - - 0x01DC65 07:DC55: C6 06     DEC ram_0006_t16_loop_counter
C - - - - - 0x01DC67 07:DC57: D0 F6     BNE bra_DC4F_loop
C - - - - - 0x01DC69 07:DC59: A9 FF     LDA #$FF
C - - - - - 0x01DC6B 07:DC5B: 20 C9 DA  JSR sub_DAC9_write_byte_to_ppu_buffer
C - - - - - 0x01DC6E 07:DC5E: A5 00     LDA ram_0000_t7D_ppu_addr_lo
C - - - - - 0x01DC70 07:DC60: 18        CLC
C - - - - - 0x01DC71 07:DC61: 69 20     ADC #< $0020
C - - - - - 0x01DC73 07:DC63: 85 00     STA ram_0000_t7D_ppu_addr_lo
C - - - - - 0x01DC75 07:DC65: A5 01     LDA ram_0001_t50_ppu_addr_hi
C - - - - - 0x01DC77 07:DC67: 69 00     ADC #> $0020
C - - - - - 0x01DC79 07:DC69: 85 01     STA ram_0001_t50_ppu_addr_hi
C - - - - - 0x01DC7B 07:DC6B: 29 03     AND #$03
C - - - - - 0x01DC7D 07:DC6D: C9 03     CMP #$03
C - - - - - 0x01DC7F 07:DC6F: D0 0F     BNE bra_DC80
C - - - - - 0x01DC81 07:DC71: A5 00     LDA ram_0000_t7D_ppu_addr_lo
C - - - - - 0x01DC83 07:DC73: 38        SEC
C - - - - - 0x01DC84 07:DC74: E9 C0     SBC #$C0
C - - - - - 0x01DC86 07:DC76: 90 08     BCC bra_DC80
; bzk optimize, useless STA + LDA
- - - - - - 0x01DC88 07:DC78: 85 00     STA ram_0000_t7D_ppu_addr_lo
- - - - - - 0x01DC8A 07:DC7A: A5 00     LDA ram_0000_t7D_ppu_addr_lo
- - - - - - 0x01DC8C 07:DC7C: 49 0C     EOR #$0C
- - - - - - 0x01DC8E 07:DC7E: 85 00     STA ram_0000_t7D_ppu_addr_lo
bra_DC80:
C - - - - - 0x01DC90 07:DC80: C6 05     DEC ram_0005_t08_tiles_counter
C - - - - - 0x01DC92 07:DC82: D0 B8     BNE bra_DC3C_loop
C - - - - - 0x01DC94 07:DC84: 60        RTS
bra_DC85_loop:
C - - - - - 0x01DC95 07:DC85: A9 02     LDA #$02
C - - - - - 0x01DC97 07:DC87: 20 C9 DA  JSR sub_DAC9_write_byte_to_ppu_buffer
C - - - - - 0x01DC9A 07:DC8A: A5 00     LDA ram_0000_t7D_ppu_addr_lo
C - - - - - 0x01DC9C 07:DC8C: 20 C9 DA  JSR sub_DAC9_write_byte_to_ppu_buffer
C - - - - - 0x01DC9F 07:DC8F: A5 01     LDA ram_0001_t50_ppu_addr_hi
C - - - - - 0x01DCA1 07:DC91: 20 C9 DA  JSR sub_DAC9_write_byte_to_ppu_buffer
C - - - - - 0x01DCA4 07:DC94: A5 05     LDA ram_0005_t08_tiles_counter
C - - - - - 0x01DCA6 07:DC96: 85 06     STA ram_0006_t08_loop_counter
C - - - - - 0x01DCA8 07:DC98: A4 08     LDY ram_0008_t13_data_index
bra_DC9A_loop:
C - - - - - 0x01DCAA 07:DC9A: B1 02     LDA (ram_0002_t02_ppu_data),Y
C - - - - - 0x01DCAC 07:DC9C: 20 C9 DA  JSR sub_DAC9_write_byte_to_ppu_buffer
C - - - - - 0x01DCAF 07:DC9F: 98        TYA
C - - - - - 0x01DCB0 07:DCA0: 18        CLC
C - - - - - 0x01DCB1 07:DCA1: 65 07     ADC ram_0007_t10
C - - - - - 0x01DCB3 07:DCA3: A8        TAY
C - - - - - 0x01DCB4 07:DCA4: C6 06     DEC ram_0006_t08_loop_counter
C - - - - - 0x01DCB6 07:DCA6: D0 F2     BNE bra_DC9A_loop
C - - - - - 0x01DCB8 07:DCA8: E6 08     INC ram_0008_t13_data_index
C - - - - - 0x01DCBA 07:DCAA: A9 FF     LDA #$FF
C - - - - - 0x01DCBC 07:DCAC: 20 C9 DA  JSR sub_DAC9_write_byte_to_ppu_buffer
C - - - - - 0x01DCBF 07:DCAF: A5 00     LDA ram_0000_t7D_ppu_addr_lo
C - - - - - 0x01DCC1 07:DCB1: 29 E0     AND #$E0
C - - - - - 0x01DCC3 07:DCB3: 48        PHA
C - - - - - 0x01DCC4 07:DCB4: A5 00     LDA ram_0000_t7D_ppu_addr_lo
C - - - - - 0x01DCC6 07:DCB6: 18        CLC
C - - - - - 0x01DCC7 07:DCB7: 69 01     ADC #$01
C - - - - - 0x01DCC9 07:DCB9: 29 1F     AND #$1F
C - - - - - 0x01DCCB 07:DCBB: 85 00     STA ram_0000_t7E
C - - - - - 0x01DCCD 07:DCBD: 68        PLA
C - - - - - 0x01DCCE 07:DCBE: 05 00     ORA ram_0000_t7E
C - - - - - 0x01DCD0 07:DCC0: 85 00     STA ram_0000_t7D_ppu_addr_lo
C - - - - - 0x01DCD2 07:DCC2: C6 04     DEC ram_0004_t25_loop_counter
C - - - - - 0x01DCD4 07:DCC4: D0 BF     BNE bra_DC85_loop
C - - - - - 0x01DCD6 07:DCC6: 60        RTS



ofs_002_DCC7_0F:
; con_DA9D_0F
C - - J - - 0x01DCD7 07:DCC7: A5 05     LDA ram_0005_t07_ppu_addr_lo
C - - - - - 0x01DCD9 07:DCC9: 85 00     STA ram_0000_t73_ppu_addr_lo
C - - - - - 0x01DCDB 07:DCCB: A5 06     LDA ram_0006_t06_ppu_addr_hi
C - - - - - 0x01DCDD 07:DCCD: 85 01     STA ram_0001_t14_ppu_addr_hi
C - - - - - 0x01DCDF 07:DCCF: 4C D5 DC  JMP loc_DCD5



ofs_002_DCD2_0E:
; con_DA9D_0E
C - - J - - 0x01DCE2 07:DCD2: 20 54 DD  JSR sub_DD54
loc_DCD5:
C D 2 - - - 0x01DCE5 07:DCD5: 20 4F DD  JSR sub_DD4F
C - - - - - 0x01DCE8 07:DCD8: B0 3D     BCS bra_DD17_RTS
C - - - - - 0x01DCEA 07:DCDA: A5 1E     LDA ram_001E_t08
C - - - - - 0x01DCEC 07:DCDC: F0 54     BEQ bra_DD32
C - - - - - 0x01DCEE 07:DCDE: C9 02     CMP #$02
C - - - - - 0x01DCF0 07:DCE0: D0 59     BNE bra_DD3B
C - - - - - 0x01DCF2 07:DCE2: 20 9C DD  JSR sub_DD9C_restore_ppu_address
C - - - - - 0x01DCF5 07:DCE5: 4C 2F E1  JMP loc_0x01E13F



ofs_002_DCE8_0B:
; con_DA9D_0B
C - - J - - 0x01DCF8 07:DCE8: 20 4F DD  JSR sub_DD4F
C - - - - - 0x01DCFB 07:DCEB: B0 2A     BCS bra_DD17_RTS
C - - - - - 0x01DCFD 07:DCED: 20 A5 DD  JSR sub_DDA5
C - - - - - 0x01DD00 07:DCF0: C4 DE     CPY ram_00DE
C - - - - - 0x01DD02 07:DCF2: D0 06     BNE bra_DCFA
C - - - - - 0x01DD04 07:DCF4: C8        INY
C - - - - - 0x01DD05 07:DCF5: C8        INY
C - - - - - 0x01DD06 07:DCF6: 98        TYA
C - - - - - 0x01DD07 07:DCF7: 20 CF DD  JSR sub_DDCF
bra_DCFA:
C - - - - - 0x01DD0A 07:DCFA: 84 DF     STY ram_00DF
C - - - - - 0x01DD0C 07:DCFC: A9 02     LDA #$02
C - - - - - 0x01DD0E 07:DCFE: AC 6D 03  LDY ram_036D_flag
C - - - - - 0x01DD11 07:DD01: D0 01     BNE bra_DD04
C - - - - - 0x01DD13 07:DD03: 0A        ASL
bra_DD04:
C - - - - - 0x01DD14 07:DD04: 25 67     AND ram_0067
C - - - - - 0x01DD16 07:DD06: F0 33     BEQ bra_DD3B
C - - - - - 0x01DD18 07:DD08: 20 32 DD  JSR sub_DD32
C - - - - - 0x01DD1B 07:DD0B: A5 75     LDA ram_stage
C - - - - - 0x01DD1D 07:DD0D: F0 08     BEQ bra_DD17_RTS
C - - - - - 0x01DD1F 07:DD0F: 4C 1C E1  JMP loc_0x01E12C



ofs_002_DD12_05:
; con_DA9D_05
C - - J - - 0x01DD22 07:DD12: 20 4F DD  JSR sub_DD4F
C - - - - - 0x01DD25 07:DD15: 90 01     BCC bra_DD18
bra_DD17_RTS:
- - - - - - 0x01DD27 07:DD17: 60        RTS
bra_DD18:
C - - - - - 0x01DD28 07:DD18: 20 26 E1  JSR sub_0x01E136_copy_ppu_address
C - - - - - 0x01DD2B 07:DD1B: 20 6D DD  JSR sub_DD6D
C - - - - - 0x01DD2E 07:DD1E: B0 06     BCS bra_DD26
C - - - - - 0x01DD30 07:DD20: 20 54 DD  JSR sub_DD54
C - - - - - 0x01DD33 07:DD23: 20 9C DD  JSR sub_DD9C_restore_ppu_address
bra_DD26:
C - - - - - 0x01DD36 07:DD26: A9 02     LDA #$02
C - - - - - 0x01DD38 07:DD28: AC 6D 03  LDY ram_036D_flag
C - - - - - 0x01DD3B 07:DD2B: D0 01     BNE bra_DD2E
C - - - - - 0x01DD3D 07:DD2D: 0A        ASL
bra_DD2E:
C - - - - - 0x01DD3E 07:DD2E: 25 67     AND ram_0067
C - - - - - 0x01DD40 07:DD30: F0 09     BEQ bra_DD3B
bra_DD32:
sub_DD32:
C - - - - - 0x01DD42 07:DD32: A0 00     LDY #$00
C - - - - - 0x01DD44 07:DD34: 20 29 DE  JSR sub_DE29
C - - - - - 0x01DD47 07:DD37: A0 02     LDY #$02
C - - - - - 0x01DD49 07:DD39: D0 0C     BNE bra_DD47    ; jmp
bra_DD3B:
C - - - - - 0x01DD4B 07:DD3B: A9 40     LDA #$40
C - - - - - 0x01DD4D 07:DD3D: 20 FF DD  JSR sub_DDFF
C - - - - - 0x01DD50 07:DD40: A0 04     LDY #$04
C - - - - - 0x01DD52 07:DD42: 20 29 DE  JSR sub_DE29
C - - - - - 0x01DD55 07:DD45: A0 06     LDY #$06
bra_DD47:
C - - - - - 0x01DD57 07:DD47: A9 20     LDA #$20
C - - - - - 0x01DD59 07:DD49: 20 FF DD  JSR sub_DDFF
C - - - - - 0x01DD5C 07:DD4C: 4C 29 DE  JMP loc_DE29



sub_DD4F:
C - - - - - 0x01DD5F 07:DD4F: A6 39     LDX ram_buffer_index_2
C - - - - - 0x01DD61 07:DD51: E0 20     CPX #$20
C - - - - - 0x01DD63 07:DD53: 60        RTS



sub_DD54:
C - - - - - 0x01DD64 07:DD54: A5 D0     LDA ram_00D0
C - - - - - 0x01DD66 07:DD56: C9 03     CMP #$03
C - - - - - 0x01DD68 07:DD58: 90 03     BCC bra_DD5D
- - - - - - 0x01DD6A 07:DD5A: 4C 26 E1  JMP loc_0x01E136_copy_ppu_address
bra_DD5D:
C - - - - - 0x01DD6D 07:DD5D: 20 A5 DD  JSR sub_DDA5
C - - - - - 0x01DD70 07:DD60: 84 DE     STY ram_00DE
C - - - - - 0x01DD72 07:DD62: A5 63     LDA ram_0063_hi
C - - - - - 0x01DD74 07:DD64: 85 B7     STA ram_00B7_hi
C - - - - - 0x01DD76 07:DD66: A5 64     LDA ram_0064_lo
C - - - - - 0x01DD78 07:DD68: 29 E0     AND #$E0
C - - - - - 0x01DD7A 07:DD6A: 85 B8     STA ram_00B8_lo
C - - - - - 0x01DD7C 07:DD6C: 60        RTS



sub_DD6D:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x01DD7D 07:DD6D: A0 20     LDY #$20
C - - - - - 0x01DD7F 07:DD6F: A5 64     LDA ram_0064_lo
C - - - - - 0x01DD81 07:DD71: 29 F8     AND #$F8
C - - - - - 0x01DD83 07:DD73: 38        SEC
C - - - - - 0x01DD84 07:DD74: E5 B8     SBC ram_00B8_lo
C - - - - - 0x01DD86 07:DD76: 85 0A     STA ram_000A_t16_lo
C - - - - - 0x01DD88 07:DD78: A5 63     LDA ram_0063_hi
C - - - - - 0x01DD8A 07:DD7A: E5 B7     SBC ram_00B7_hi
C - - - - - 0x01DD8C 07:DD7C: 85 0B     STA ram_000B_t02_hi
C - - - - - 0x01DD8E 07:DD7E: 10 13     BPL bra_DD93
C - - - - - 0x01DD90 07:DD80: A5 0A     LDA ram_000A_t16_lo
C - - - - - 0x01DD92 07:DD82: 49 FF     EOR #$FF
C - - - - - 0x01DD94 07:DD84: 18        CLC
C - - - - - 0x01DD95 07:DD85: 69 01     ADC #< $0001
C - - - - - 0x01DD97 07:DD87: 85 0A     STA ram_000A_t16_lo
C - - - - - 0x01DD99 07:DD89: A5 0B     LDA ram_000B_t02_hi
C - - - - - 0x01DD9B 07:DD8B: 49 FF     EOR #$FF
C - - - - - 0x01DD9D 07:DD8D: 69 00     ADC #> $0001
C - - - - - 0x01DD9F 07:DD8F: 85 0B     STA ram_000B_t02_hi
C - - - - - 0x01DDA1 07:DD91: A0 18     LDY #$18
bra_DD93:
C - - - - - 0x01DDA3 07:DD93: A5 0B     LDA ram_000B_t02_hi
C - - - - - 0x01DDA5 07:DD95: D0 03     BNE bra_DD9A
C - - - - - 0x01DDA7 07:DD97: C4 0A     CPY ram_000A_t16_lo
C - - - - - 0x01DDA9 07:DD99: 60        RTS
bra_DD9A:
- - - - - - 0x01DDAA 07:DD9A: 38        SEC
- - - - - - 0x01DDAB 07:DD9B: 60        RTS



sub_DD9C_restore_ppu_address:
C - - - - - 0x01DDAC 07:DD9C: A5 00     LDA ram_0000_t73_ppu_addr_lo
C - - - - - 0x01DDAE 07:DD9E: 85 BA     STA ram_00BA_ppu_addr_lo
C - - - - - 0x01DDB0 07:DDA0: A5 01     LDA ram_0001_t14_ppu_addr_hi
C - - - - - 0x01DDB2 07:DDA2: 85 B9     STA ram_00B9_ppu_addr_hi
C - - - - - 0x01DDB4 07:DDA4: 60        RTS



sub_DDA5:
C - - - - - 0x01DDB5 07:DDA5: A5 DC     LDA ram_00DC
C - - - - - 0x01DDB7 07:DDA7: 85 02     STA ram_0002_t12_hi
C - - - - - 0x01DDB9 07:DDA9: A5 DD     LDA ram_00DD
C - - - - - 0x01DDBB 07:DDAB: 85 03     STA ram_0003_t06_lo
sub_0x01DDBD:
C - - - - - 0x01DDBD 07:DDAD: A5 02     LDA ram_0002_t12_hi
C - - - - - 0x01DDBF 07:DDAF: 29 01     AND #$01
; bzk optimize, useless STA
C - - - - - 0x01DDC1 07:DDB1: 85 02     STA ram_0002_t62_useless
C - - - - - 0x01DDC3 07:DDB3: F0 12     BEQ bra_DDC7
C - - - - - 0x01DDC5 07:DDB5: A5 03     LDA ram_0003_t06_lo
C - - - - - 0x01DDC7 07:DDB7: 38        SEC
C - - - - - 0x01DDC8 07:DDB8: E9 10     SBC #$10
C - - - - - 0x01DDCA 07:DDBA: B0 04     BCS bra_DDC0
C - - - - - 0x01DDCC 07:DDBC: 29 E0     AND #$E0
C - - - - - 0x01DDCE 07:DDBE: D0 09     BNE bra_DDC9
bra_DDC0:
C - - - - - 0x01DDD0 07:DDC0: 29 E0     AND #$E0
C - - - - - 0x01DDD2 07:DDC2: 4A        LSR
C - - - - - 0x01DDD3 07:DDC3: 09 80     ORA #$80
C - - - - - 0x01DDD5 07:DDC5: D0 05     BNE bra_DDCC    ; jmp
bra_DDC7:
C - - - - - 0x01DDD7 07:DDC7: A5 03     LDA ram_0003_t06_lo
bra_DDC9:
C - - - - - 0x01DDD9 07:DDC9: 29 E0     AND #$E0
; / 10
C - - - - - 0x01DDDB 07:DDCB: 4A        LSR
bra_DDCC:
; / 08
C - - - - - 0x01DDDC 07:DDCC: 4A        LSR
C - - - - - 0x01DDDD 07:DDCD: 4A        LSR
C - - - - - 0x01DDDE 07:DDCE: 4A        LSR
sub_DDCF:
sub_0x01DDDF:
C - - - - - 0x01DDDF 07:DDCF: A8        TAY
C - - - - - 0x01DDE0 07:DDD0: 38        SEC
C - - - - - 0x01DDE1 07:DDD1: E9 1E     SBC #$1E
C - - - - - 0x01DDE3 07:DDD3: 90 01     BCC bra_DDD6
C - - - - - 0x01DDE5 07:DDD5: A8        TAY
bra_DDD6:
C - - - - - 0x01DDE6 07:DDD6: B9 E1 DD  LDA tbl_DDE1_ppu_address,Y
C - - - - - 0x01DDE9 07:DDD9: 85 00     STA ram_0000_t73_ppu_addr_lo
C - - - - - 0x01DDEB 07:DDDB: B9 E2 DD  LDA tbl_DDE1_ppu_address + $01,Y
C - - - - - 0x01DDEE 07:DDDE: 85 01     STA ram_0001_t14_ppu_addr_hi
C - - - - - 0x01DDF0 07:DDE0: 60        RTS



tbl_DDE1_ppu_address:
- D 2 - - - 0x01DDF1 07:DDE1: 40 2C     .word $2C40 ; 
- D 2 - - - 0x01DDF3 07:DDE3: C0 2C     .word $2CC0 ; 
- D 2 - - - 0x01DDF5 07:DDE5: 40 2D     .word $2D40 ; 
- D 2 - - - 0x01DDF7 07:DDE7: C0 2D     .word $2DC0 ; 
- D 2 - - - 0x01DDF9 07:DDE9: 40 2E     .word $2E40 ; 
- D 2 - - - 0x01DDFB 07:DDEB: C0 2E     .word $2EC0 ; 
- D 2 - - - 0x01DDFD 07:DDED: 40 2F     .word $2F40 ; 
- D 2 - - - 0x01DDFF 07:DDEF: 00 20     .word $2000 ; 
- D 2 - - - 0x01DE01 07:DDF1: 80 20     .word $2080 ; 
- D 2 - - - 0x01DE03 07:DDF3: 00 21     .word $2100 ; 
- D 2 - - - 0x01DE05 07:DDF5: 80 21     .word $2180 ; 
- D 2 - - - 0x01DE07 07:DDF7: 00 22     .word $2200 ; 
- D 2 - - - 0x01DE09 07:DDF9: 80 22     .word $2280 ; 
- D 2 - - - 0x01DE0B 07:DDFB: 00 23     .word $2300 ; 
- D 2 - - - 0x01DE0D 07:DDFD: 80 23     .word $2380 ; 



sub_DDFF:
; in
    ; A = 
; bzk optimize, useless STA
C - - - - - 0x01DE0F 07:DDFF: 85 02     STA ram_0002_t64_useless
C - - - - - 0x01DE11 07:DE01: 18        CLC
C - - - - - 0x01DE12 07:DE02: 65 00     ADC ram_0000_t73_ppu_addr_lo
C - - - - - 0x01DE14 07:DE04: 85 00     STA ram_0000_t73_ppu_addr_lo
C - - - - - 0x01DE16 07:DE06: A5 01     LDA ram_0001_t14_ppu_addr_hi
C - - - - - 0x01DE18 07:DE08: 69 00     ADC #$00
C - - - - - 0x01DE1A 07:DE0A: 85 01     STA ram_0001_t14_ppu_addr_hi
C - - - - - 0x01DE1C 07:DE0C: 29 23     AND #$23
C - - - - - 0x01DE1E 07:DE0E: C9 23     CMP #$23
C - - - - - 0x01DE20 07:DE10: D0 11     BNE bra_DE23_RTS
C - - - - - 0x01DE22 07:DE12: A5 00     LDA ram_0000_t73_ppu_addr_lo
C - - - - - 0x01DE24 07:DE14: 38        SEC
C - - - - - 0x01DE25 07:DE15: E9 C0     SBC #$C0
C - - - - - 0x01DE27 07:DE17: 90 0A     BCC bra_DE23_RTS
C - - - - - 0x01DE29 07:DE19: 85 00     STA ram_0000_t73_ppu_addr_lo
C - - - - - 0x01DE2B 07:DE1B: A5 01     LDA ram_0001_t14_ppu_addr_hi
C - - - - - 0x01DE2D 07:DE1D: 49 0C     EOR #$0C
C - - - - - 0x01DE2F 07:DE1F: 29 2C     AND #$2C
C - - - - - 0x01DE31 07:DE21: 85 01     STA ram_0001_t14_ppu_addr_hi
bra_DE23_RTS:
C - - - - - 0x01DE33 07:DE23: 60        RTS



sub_DE24_write_A_to_buffer_and_INX:
loc_DE24_write_A_to_buffer_and_INX:
sub_0x01DE34_write_A_to_buffer_and_INX:
loc_0x01DE34_write_A_to_buffer_and_INX:
C D 2 - - - 0x01DE34 07:DE24: 9D 60 01  STA ram_ppu_buffer_2,X
C - - - - - 0x01DE37 07:DE27: E8        INX
C - - - - - 0x01DE38 07:DE28: 60        RTS



sub_DE29:
loc_DE29:
; in
    ; Y = 
C D 2 - - - 0x01DE39 07:DE29: A9 00     LDA #$00
C - - - - - 0x01DE3B 07:DE2B: 85 04     STA ram_0004_t26
C - - - - - 0x01DE3D 07:DE2D: 84 05     STY ram_0005_t13
C - - - - - 0x01DE3F 07:DE2F: C0 00     CPY #$00
C - - - - - 0x01DE41 07:DE31: F0 1C     BEQ bra_DE4F
C - - - - - 0x01DE43 07:DE33: A9 01     LDA #$01
C - - - - - 0x01DE45 07:DE35: 20 24 DE  JSR sub_DE24_write_A_to_buffer_and_INX
C - - - - - 0x01DE48 07:DE38: A5 00     LDA ram_0000_t73_ppu_addr_lo
C - - - - - 0x01DE4A 07:DE3A: 20 24 DE  JSR sub_DE24_write_A_to_buffer_and_INX
C - - - - - 0x01DE4D 07:DE3D: A5 01     LDA ram_0001_t14_ppu_addr_hi
C - - - - - 0x01DE4F 07:DE3F: 20 24 DE  JSR sub_DE24_write_A_to_buffer_and_INX
C - - - - - 0x01DE52 07:DE42: A5 05     LDA ram_0005_t13
C - - - - - 0x01DE54 07:DE44: 4A        LSR
C - - - - - 0x01DE55 07:DE45: A8        TAY
C - - - - - 0x01DE56 07:DE46: 88        DEY
C - - - - - 0x01DE57 07:DE47: F0 13     BEQ bra_DE5C
C - - - - - 0x01DE59 07:DE49: 88        DEY
C - - - - - 0x01DE5A 07:DE4A: F0 31     BEQ bra_DE7D
C - - - - - 0x01DE5C 07:DE4C: 88        DEY
C - - - - - 0x01DE5D 07:DE4D: F0 49     BEQ bra_DE98
bra_DE4F:
C - - - - - 0x01DE5F 07:DE4F: A5 00     LDA ram_0000_t73_ppu_addr_lo
C - - - - - 0x01DE61 07:DE51: 85 02     STA ram_0002_t59_ppu_addr_lo
C - - - - - 0x01DE63 07:DE53: A5 01     LDA ram_0001_t14_ppu_addr_hi
C - - - - - 0x01DE65 07:DE55: 85 03     STA ram_0003_t14_ppu_addr_hi
C - - - - - 0x01DE67 07:DE57: A9 20     LDA #$20
C - - - - - 0x01DE69 07:DE59: 4C 79 E1  JMP loc_0x01E189
bra_DE5C:
C - - - - - 0x01DE6C 07:DE5C: 20 CF DE  JSR sub_DECF
C - - - - - 0x01DE6F 07:DE5F: B0 09     BCS bra_DE6A
C - - - - - 0x01DE71 07:DE61: 20 FB DE  JSR sub_DEFB
C - - - - - 0x01DE74 07:DE64: 20 12 DF  JSR sub_DF12
C - - - - - 0x01DE77 07:DE67: 20 5C DF  JSR sub_DF5C
bra_DE6A:
C - - - - - 0x01DE7A 07:DE6A: E6 04     INC ram_0004_t26
C - - - - - 0x01DE7C 07:DE6C: 20 C7 DE  JSR sub_DEC7
C - - - - - 0x01DE7F 07:DE6F: B0 3F     BCS bra_DEB0
C - - - - - 0x01DE81 07:DE71: 20 FB DE  JSR sub_DEFB
C - - - - - 0x01DE84 07:DE74: 20 12 DF  JSR sub_DF12
C - - - - - 0x01DE87 07:DE77: 20 5C DF  JSR sub_DF5C
C - - - - - 0x01DE8A 07:DE7A: 4C B0 DE  JMP loc_DEB0
bra_DE7D:
C - - - - - 0x01DE8D 07:DE7D: 20 CF DE  JSR sub_DECF
C - - - - - 0x01DE90 07:DE80: B0 06     BCS bra_DE88
C - - - - - 0x01DE92 07:DE82: 20 81 DF  JSR sub_DF81
C - - - - - 0x01DE95 07:DE85: 20 5C DF  JSR sub_DF5C
bra_DE88:
C - - - - - 0x01DE98 07:DE88: E6 04     INC ram_0004_t26
C - - - - - 0x01DE9A 07:DE8A: 20 C7 DE  JSR sub_DEC7
C - - - - - 0x01DE9D 07:DE8D: B0 21     BCS bra_DEB0
C - - - - - 0x01DE9F 07:DE8F: 20 81 DF  JSR sub_DF81
C - - - - - 0x01DEA2 07:DE92: 20 5C DF  JSR sub_DF5C
C - - - - - 0x01DEA5 07:DE95: 4C B0 DE  JMP loc_DEB0
bra_DE98:
C - - - - - 0x01DEA8 07:DE98: 20 CF DE  JSR sub_DECF
C - - - - - 0x01DEAB 07:DE9B: B0 06     BCS bra_DEA3
C - - - - - 0x01DEAD 07:DE9D: 20 28 E0  JSR sub_0x01E038
C - - - - - 0x01DEB0 07:DEA0: 20 5C DF  JSR sub_DF5C
bra_DEA3:
C - - - - - 0x01DEB3 07:DEA3: E6 04     INC ram_0004_t26
C - - - - - 0x01DEB5 07:DEA5: 20 C7 DE  JSR sub_DEC7
C - - - - - 0x01DEB8 07:DEA8: B0 06     BCS bra_DEB0
C - - - - - 0x01DEBA 07:DEAA: 20 28 E0  JSR sub_0x01E038
C - - - - - 0x01DEBD 07:DEAD: 20 5C DF  JSR sub_DF5C
bra_DEB0:
loc_DEB0:
C D 2 - - - 0x01DEC0 07:DEB0: A9 02     LDA #$02
C - - - - - 0x01DEC2 07:DEB2: 20 BD DE  JSR sub_DEBD
loc_0x01DEC5:
C - - - - - 0x01DEC5 07:DEB5: A9 FF     LDA #$FF
C - - - - - 0x01DEC7 07:DEB7: 20 24 DE  JSR sub_DE24_write_A_to_buffer_and_INX
C - - - - - 0x01DECA 07:DEBA: 86 39     STX ram_buffer_index_2
C - - - - - 0x01DECC 07:DEBC: 60        RTS



sub_DEBD:
loc_DEBD:
C D 2 - - - 0x01DECD 07:DEBD: A8        TAY
C - - - - - 0x01DECE 07:DEBE: A9 00     LDA #$00
bra_DEC0_loop:
C - - - - - 0x01DED0 07:DEC0: 20 24 DE  JSR sub_DE24_write_A_to_buffer_and_INX
C - - - - - 0x01DED3 07:DEC3: 88        DEY
C - - - - - 0x01DED4 07:DEC4: D0 FA     BNE bra_DEC0_loop
C - - - - - 0x01DED6 07:DEC6: 60        RTS



sub_DEC7:
C - - - - - 0x01DED7 07:DEC7: A9 00     LDA #$00
C - - - - - 0x01DED9 07:DEC9: 20 24 DE  JSR sub_DE24_write_A_to_buffer_and_INX
C - - - - - 0x01DEDC 07:DECC: 4C D4 DE  JMP loc_DED4



sub_DECF:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x01DEDF 07:DECF: A9 03     LDA #$03
C - - - - - 0x01DEE1 07:DED1: 20 BD DE  JSR sub_DEBD
loc_DED4:
C D 2 - - - 0x01DEE4 07:DED4: A4 04     LDY ram_0004_t26
C - - - - - 0x01DEE6 07:DED6: B9 82 07  LDA ram_0782_unk,Y
C - - - - - 0x01DEE9 07:DED9: F0 0F     BEQ bra_DEEA
C - - - - - 0x01DEEB 07:DEDB: B9 B1 00  LDA ram_current_player,Y
C - - - - - 0x01DEEE 07:DEDE: 29 0F     AND #$0F
C - - - - - 0x01DEF0 07:DEE0: A8        TAY
C - - - - - 0x01DEF1 07:DEE1: 84 0F     STY ram_000F_t06_player_index
C - - - - - 0x01DEF3 07:DEE3: B9 B3 00  LDA ram_lives,Y
C - - - - - 0x01DEF6 07:DEE6: F0 02     BEQ bra_DEEA
C - - - - - 0x01DEF8 07:DEE8: 18        CLC
C - - - - - 0x01DEF9 07:DEE9: 60        RTS
bra_DEEA:
C - - - - - 0x01DEFA 07:DEEA: A9 0D     LDA #$0D
C - - - - - 0x01DEFC 07:DEEC: 20 BD DE  JSR sub_DEBD
C - - - - - 0x01DEFF 07:DEEF: 38        SEC
C - - - - - 0x01DF00 07:DEF0: 60        RTS



sub_DEF1:
sub_0x01DF01:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x01DF01 07:DEF1: A4 0F     LDY ram_000F_t06_player_index
C - - - - - 0x01DF03 07:DEF3: B9 7F 00  LDA ram_player_stats,Y
C - - - - - 0x01DF06 07:DEF6: 29 F0     AND #$F0
C - - - - - 0x01DF08 07:DEF8: C9 30     CMP #$30
bra_DEFA_RTS:
C - - - - - 0x01DF0A 07:DEFA: 60        RTS



sub_DEFB:
C - - - - - 0x01DF0B 07:DEFB: 20 F1 DE  JSR sub_DEF1
C - - - - - 0x01DF0E 07:DEFE: 90 02     BCC bra_DF02
C - - - - - 0x01DF10 07:DF00: A9 30     LDA #$30
bra_DF02:
; / 04
C - - - - - 0x01DF12 07:DF02: 4A        LSR
C - - - - - 0x01DF13 07:DF03: 4A        LSR
C - - - - - 0x01DF14 07:DF04: A8        TAY
bra_DF05_loop:
C - - - - - 0x01DF15 07:DF05: B9 92 E0  LDA tbl_E092,Y
C - - - - - 0x01DF18 07:DF08: C9 FF     CMP #$FF
C - - - - - 0x01DF1A 07:DF0A: F0 EE     BEQ bra_DEFA_RTS
C - - - - - 0x01DF1C 07:DF0C: 20 24 DE  JSR sub_DE24_write_A_to_buffer_and_INX
C - - - - - 0x01DF1F 07:DF0F: C8        INY
C - - - - - 0x01DF20 07:DF10: D0 F3     BNE bra_DF05_loop    ; jmp



tbl_E092:
- - - - - - 0x01E0A2 07:E092: 00        .byte $00   ; 
- - - - - - 0x01E0A3 07:E093: 00        .byte $00   ; 
- - - - - - 0x01E0A4 07:E094: 00        .byte $00   ; 
- - - - - - 0x01E0A5 07:E095: FF        .byte $FF   ; 

- D 3 - - - 0x01E0A6 07:E096: 01        .byte $01   ; 
- D 3 - - - 0x01E0A7 07:E097: 20        .byte $20   ; 
- D 3 - - - 0x01E0A8 07:E098: 0B        .byte $0B   ; 
- D 3 - - - 0x01E0A9 07:E099: FF        .byte $FF   ; 

- D 3 - - - 0x01E0AA 07:E09A: 02        .byte $02   ; 
- D 3 - - - 0x01E0AB 07:E09B: 20        .byte $20   ; 
- D 3 - - - 0x01E0AC 07:E09C: 0B        .byte $0B   ; 
- D 3 - - - 0x01E0AD 07:E09D: FF        .byte $FF   ; 

- D 3 - - - 0x01E0AE 07:E09E: 13        .byte $13   ; 
- D 3 - - - 0x01E0AF 07:E09F: 20        .byte $20   ; 
- D 3 - - - 0x01E0B0 07:E0A0: 25        .byte $25   ; 
- D 3 - - - 0x01E0B1 07:E0A1: FF        .byte $FF   ; 



sub_DF12:
C - - - - - 0x01DF22 07:DF12: 20 F1 DE  JSR sub_DEF1
C - - - - - 0x01DF25 07:DF15: B0 40     BCS bra_DF57
C - - - - - 0x01DF27 07:DF17: A0 00     LDY #$00
C - - - - - 0x01DF29 07:DF19: 84 08     STY ram_0008_t14
C - - - - - 0x01DF2B 07:DF1B: 84 09     STY ram_0009_t05
C - - - - - 0x01DF2D 07:DF1D: A5 04     LDA ram_0004_t26
C - - - - - 0x01DF2F 07:DF1F: F0 02     BEQ bra_DF23
C - - - - - 0x01DF31 07:DF21: A0 03     LDY #$03
bra_DF23:
loc_DF23_loop:
C D 2 - - - 0x01DF33 07:DF23: B9 6E 00  LDA ram_score,Y
C - - - - - 0x01DF36 07:DF26: 29 F0     AND #$F0
; / 10
C - - - - - 0x01DF38 07:DF28: 4A        LSR
C - - - - - 0x01DF39 07:DF29: 4A        LSR
C - - - - - 0x01DF3A 07:DF2A: 4A        LSR
C - - - - - 0x01DF3B 07:DF2B: 4A        LSR
C - - - - - 0x01DF3C 07:DF2C: D0 0F     BNE bra_DF3D
C - - - - - 0x01DF3E 07:DF2E: F0 07     BEQ bra_DF37    ; jmp
bra_DF30_loop:
C - - - - - 0x01DF40 07:DF30: B9 6E 00  LDA ram_score,Y
C - - - - - 0x01DF43 07:DF33: 29 0F     AND #$0F
C - - - - - 0x01DF45 07:DF35: D0 06     BNE bra_DF3D
bra_DF37:
C - - - - - 0x01DF47 07:DF37: A5 09     LDA ram_0009_t05
; bzk optimize, BEQ to 0x01DF4F
C - - - - - 0x01DF49 07:DF39: F0 02     BEQ bra_DF3D
C - - - - - 0x01DF4B 07:DF3B: A9 0A     LDA #$0A
bra_DF3D:   ; A = 00
C - - - - - 0x01DF4D 07:DF3D: 85 09     STA ram_0009_t05
C - - - - - 0x01DF4F 07:DF3F: 20 24 DE  JSR sub_DE24_write_A_to_buffer_and_INX
C - - - - - 0x01DF52 07:DF42: E6 08     INC ram_0008_t14
C - - - - - 0x01DF54 07:DF44: A5 08     LDA ram_0008_t14
C - - - - - 0x01DF56 07:DF46: C9 06     CMP #$06
C - - - - - 0x01DF58 07:DF48: F0 08     BEQ bra_DF52
C - - - - - 0x01DF5A 07:DF4A: 29 01     AND #$01
C - - - - - 0x01DF5C 07:DF4C: D0 E2     BNE bra_DF30_loop
C - - - - - 0x01DF5E 07:DF4E: C8        INY
C - - - - - 0x01DF5F 07:DF4F: 4C 23 DF  JMP loc_DF23_loop
bra_DF52:
C - - - - - 0x01DF62 07:DF52: A9 0A     LDA #$0A
C - - - - - 0x01DF64 07:DF54: 4C 24 DE  JMP loc_DE24_write_A_to_buffer_and_INX
bra_DF57:
C - - - - - 0x01DF67 07:DF57: A9 07     LDA #$07
C - - - - - 0x01DF69 07:DF59: 4C BD DE  JMP loc_DEBD



sub_DF5C:
C - - - - - 0x01DF6C 07:DF5C: A4 0F     LDY ram_000F_t06_player_index
C - - - - - 0x01DF6E 07:DF5E: B9 A2 E0  LDA tbl_E0A2,Y
C - - - - - 0x01DF71 07:DF61: 85 08     STA ram_0008_t02
C - - - - - 0x01DF73 07:DF63: A5 05     LDA ram_0005_t13
C - - - - - 0x01DF75 07:DF65: 4A        LSR
C - - - - - 0x01DF76 07:DF66: A8        TAY
C - - - - - 0x01DF77 07:DF67: 88        DEY
C - - - - - 0x01DF78 07:DF68: B9 A6 E0  LDA tbl_E0A6,Y
C - - - - - 0x01DF7B 07:DF6B: 18        CLC
C - - - - - 0x01DF7C 07:DF6C: 65 08     ADC ram_0008_t02
C - - - - - 0x01DF7E 07:DF6E: A8        TAY
C - - - - - 0x01DF7F 07:DF6F: A9 03     LDA #$03
C - - - - - 0x01DF81 07:DF71: 85 08     STA ram_0008_t03
bra_DF73_loop:
C - - - - - 0x01DF83 07:DF73: B9 A9 E0  LDA tbl_E0A9,Y
C - - - - - 0x01DF86 07:DF76: 20 24 DE  JSR sub_DE24_write_A_to_buffer_and_INX
; bzk bug, 0006 contains unrelevant value, like
; ram_0006_t15
; ram_0006_t04
; ram_0006_t06_ppu_addr_hi
; ram_0006_t01_data
; ram_0006_t07
; ram_0006_t16_loop_counter
C - - - - - 0x01DF89 07:DF79: C6 06     DEC ram_0006_t03
C - - - - - 0x01DF8B 07:DF7B: C8        INY
C - - - - - 0x01DF8C 07:DF7C: C6 08     DEC ram_0008_t03
C - - - - - 0x01DF8E 07:DF7E: D0 F3     BNE bra_DF73_loop
C - - - - - 0x01DF90 07:DF80: 60        RTS



tbl_E0A9:
; 00 
- D 3 - - - 0x01E0B9 07:E0A9: 80        .byte $80   ; 
- D 3 - - - 0x01E0BA 07:E0AA: 81        .byte $81   ; 
- D 3 - - - 0x01E0BB 07:E0AB: 82        .byte $82   ; 

- D 3 - - - 0x01E0BC 07:E0AC: 90        .byte $90   ; 
- D 3 - - - 0x01E0BD 07:E0AD: 91        .byte $91   ; 
- D 3 - - - 0x01E0BE 07:E0AE: 92        .byte $92   ; 

- D 3 - - - 0x01E0BF 07:E0AF: A0        .byte $A0   ; 
- D 3 - - - 0x01E0C0 07:E0B0: A1        .byte $A1   ; 
- D 3 - - - 0x01E0C1 07:E0B1: A2        .byte $A2   ; 


; 09 
- D 3 - - - 0x01E0C2 07:E0B2: 83        .byte $83   ; 
- D 3 - - - 0x01E0C3 07:E0B3: 84        .byte $84   ; 
- D 3 - - - 0x01E0C4 07:E0B4: 85        .byte $85   ; 

- D 3 - - - 0x01E0C5 07:E0B5: 93        .byte $93   ; 
- D 3 - - - 0x01E0C6 07:E0B6: 94        .byte $94   ; 
- D 3 - - - 0x01E0C7 07:E0B7: 95        .byte $95   ; 

- D 3 - - - 0x01E0C8 07:E0B8: A3        .byte $A3   ; 
- D 3 - - - 0x01E0C9 07:E0B9: A4        .byte $A4   ; 
- D 3 - - - 0x01E0CA 07:E0BA: A5        .byte $A5   ; 


; 12 
- D 3 - - - 0x01E0CB 07:E0BB: 89        .byte $89   ; 
- D 3 - - - 0x01E0CC 07:E0BC: 8A        .byte $8A   ; 
- D 3 - - - 0x01E0CD 07:E0BD: 8B        .byte $8B   ; 

- D 3 - - - 0x01E0CE 07:E0BE: 99        .byte $99   ; 
- D 3 - - - 0x01E0CF 07:E0BF: 9A        .byte $9A   ; 
- D 3 - - - 0x01E0D0 07:E0C0: 9B        .byte $9B   ; 

- D 3 - - - 0x01E0D1 07:E0C1: A9        .byte $A9   ; 
- D 3 - - - 0x01E0D2 07:E0C2: AA        .byte $AA   ; 
- D 3 - - - 0x01E0D3 07:E0C3: AB        .byte $AB   ; 


; 1B 
- D 3 - - - 0x01E0D4 07:E0C4: 86        .byte $86   ; 
- D 3 - - - 0x01E0D5 07:E0C5: 87        .byte $87   ; 
- D 3 - - - 0x01E0D6 07:E0C6: 88        .byte $88   ; 

- D 3 - - - 0x01E0D7 07:E0C7: 96        .byte $96   ; 
- D 3 - - - 0x01E0D8 07:E0C8: 97        .byte $97   ; 
- D 3 - - - 0x01E0D9 07:E0C9: 98        .byte $98   ; 

- D 3 - - - 0x01E0DA 07:E0CA: A6        .byte $A6   ; 
- D 3 - - - 0x01E0DB 07:E0CB: A7        .byte $A7   ; 
- D 3 - - - 0x01E0DC 07:E0CC: A8        .byte $A8   ; 



tbl_E0A2:
- D 3 - - - 0x01E0B2 07:E0A2: 00        .byte $00   ; 00 
- D 3 - - - 0x01E0B3 07:E0A3: 09        .byte $09   ; 01 
- D 3 - - - 0x01E0B4 07:E0A4: 12        .byte $12   ; 02 
- D 3 - - - 0x01E0B5 07:E0A5: 1B        .byte $1B   ; 03 



tbl_E0A6:
- D 3 - - - 0x01E0B6 07:E0A6: 00        .byte $00   ; 
- D 3 - - - 0x01E0B7 07:E0A7: 03        .byte $03   ; 
- D 3 - - - 0x01E0B8 07:E0A8: 06        .byte $06   ; 



sub_DF81:
C - - - - - 0x01DF91 07:DF81: 20 F1 DE  JSR sub_DEF1
C - - - - - 0x01DF94 07:DF84: 90 03     BCC bra_DF89
C - - - - - 0x01DF96 07:DF86: 4C 0B E0  JMP loc_E00B
bra_DF89:
C - - - - - 0x01DF99 07:DF89: A4 0F     LDY ram_000F_t06_player_index
C - - - - - 0x01DF9B 07:DF8B: B9 7F 00  LDA ram_player_stats,Y
C - - - - - 0x01DF9E 07:DF8E: 29 0F     AND #$0F
C - - - - - 0x01DFA0 07:DF90: D0 04     BNE bra_DF96
C - - - - - 0x01DFA2 07:DF92: A9 01     LDA #$01
C - - - - - 0x01DFA4 07:DF94: D0 01     BNE bra_DF97    ; jmp
bra_DF96:
C - - - - - 0x01DFA6 07:DF96: 0A        ASL
bra_DF97:
C - - - - - 0x01DFA7 07:DF97: 85 0A     STA ram_000A_t17
C - - - - - 0x01DFA9 07:DF99: A4 04     LDY ram_0004_t26
C - - - - - 0x01DFAB 07:DF9B: B9 B1 00  LDA ram_current_player,Y
C - - - - - 0x01DFAE 07:DF9E: 29 F0     AND #$F0
C - - - - - 0x01DFB0 07:DFA0: F0 03     BEQ bra_DFA5
; / 08
C - - - - - 0x01DFB2 07:DFA2: 4A        LSR
C - - - - - 0x01DFB3 07:DFA3: 4A        LSR
C - - - - - 0x01DFB4 07:DFA4: 4A        LSR
bra_DFA5:
C - - - - - 0x01DFB5 07:DFA5: 38        SEC
C - - - - - 0x01DFB6 07:DFA6: E9 02     SBC #$02
C - - - - - 0x01DFB8 07:DFA8: 85 0B     STA ram_000B_t15
C - - - - - 0x01DFBA 07:DFAA: A9 0A     LDA #$0A
C - - - - - 0x01DFBC 07:DFAC: 85 08     STA ram_0008_t15
C - - - - - 0x01DFBE 07:DFAE: A4 04     LDY ram_0004_t26
C - - - - - 0x01DFC0 07:DFB0: B9 B1 00  LDA ram_current_player,Y
C - - - - - 0x01DFC3 07:DFB3: 29 0F     AND #$0F
C - - - - - 0x01DFC5 07:DFB5: A8        TAY
C - - - - - 0x01DFC6 07:DFB6: B9 CD E0  LDA tbl_E0CD,Y
C - - - - - 0x01DFCA 07:DFBA: 84 0C     STA ram_000C_t11
bra_DFBC_loop:
C - - - - - 0x01DFCC 07:DFBC: A5 0A     LDA ram_000A_t17
C - - - - - 0x01DFCE 07:DFBE: 29 01     AND #$01
C - - - - - 0x01DFD0 07:DFC0: F0 18     BEQ bra_DFDA
C - - - - - 0x01DFD2 07:DFC2: A4 08     LDY ram_0008_t15
C - - - - - 0x01DFD4 07:DFC4: 88        DEY
C - - - - - 0x01DFD5 07:DFC5: A5 0B     LDA ram_000B_t15
C - - - - - 0x01DFD7 07:DFC7: F0 09     BEQ bra_DFD2
C - - - - - 0x01DFD9 07:DFC9: C9 FF     CMP #$FF
C - - - - - 0x01DFDB 07:DFCB: F0 05     BEQ bra_DFD2
C - - - - - 0x01DFDD 07:DFCD: B9 D1 E0  LDA tbl_E0D1,Y
C - - - - - 0x01DFE0 07:DFD0: D0 1D     BNE bra_DFEF    ; jmp
bra_DFD2:
C - - - - - 0x01DFE2 07:DFD2: B9 D1 E0  LDA tbl_E0D1,Y
C - - - - - 0x01DFE5 07:DFD5: 38        SEC
C - - - - - 0x01DFE6 07:DFD6: E9 10     SBC #$10
C - - - - - 0x01DFE8 07:DFD8: D0 15     BNE bra_DFEF    ; jmp
bra_DFDA:
C - - - - - 0x01DFEA 07:DFDA: A4 0C     LDY ram_000C_t11
C - - - - - 0x01DFEC 07:DFDC: A5 0B     LDA ram_000B_t15
C - - - - - 0x01DFEE 07:DFDE: F0 09     BEQ bra_DFE9
C - - - - - 0x01DFF0 07:DFE0: C9 FF     CMP #$FF
C - - - - - 0x01DFF2 07:DFE2: F0 05     BEQ bra_DFE9
C - - - - - 0x01DFF4 07:DFE4: B9 DC E0  LDA tbl_E0DC,Y
C - - - - - 0x01DFF7 07:DFE7: D0 06     BNE bra_DFEF    ; jmp
bra_DFE9:
C - - - - - 0x01DFF9 07:DFE9: B9 DC E0  LDA tbl_E0DC,Y
C - - - - - 0x01DFFC 07:DFEC: 38        SEC
C - - - - - 0x01DFFD 07:DFED: E9 10     SBC #$10
bra_DFEF:
C - - - - - 0x01DFFF 07:DFEF: 20 24 DE  JSR sub_DE24_write_A_to_buffer_and_INX
C - - - - - 0x01E002 07:DFF2: E6 0C     INC ram_000C_t11
C - - - - - 0x01E004 07:DFF4: C6 0B     DEC ram_000B_t15
C - - - - - 0x01E006 07:DFF6: A5 08     LDA ram_0008_t15
C - - - - - 0x01E008 07:DFF8: 29 01     AND #$01
C - - - - - 0x01E00A 07:DFFA: F0 02     BEQ bra_DFFE
C - - - - - 0x01E00C 07:DFFC: 46 0A     LSR ram_000A_t17
bra_DFFE:
C - - - - - 0x01E00E 07:DFFE: C6 08     DEC ram_0008_t15
C D 3 - - - 0x01E010 07:E000: D0 BA     BNE bra_DFBC_loop
C - - - - - 0x01E012 07:E002: 60        RTS



tbl_E0CD:
- D 3 - - - 0x01E0DD 07:E0CD: 00        .byte $00   ; 00 
- D 3 - - - 0x01E0DE 07:E0CE: 0A        .byte $0A   ; 01 
- D 3 - - - 0x01E0DF 07:E0CF: 14        .byte $14   ; 02 
- D 3 - - - 0x01E0E0 07:E0D0: 1E        .byte $1E   ; 03 



tbl_E0D1:
- D 3 - - - 0x01E0E1 07:E0D1: AD        .byte $AD   ; 
- D 3 - - - 0x01E0E2 07:E0D2: AC        .byte $AC   ; 
- D 3 - - - 0x01E0E3 07:E0D3: AD        .byte $AD   ; 
- D 3 - - - 0x01E0E4 07:E0D4: AC        .byte $AC   ; 
- D 3 - - - 0x01E0E5 07:E0D5: AD        .byte $AD   ; 
- D 3 - - - 0x01E0E6 07:E0D6: AC        .byte $AC   ; 
- D 3 - - - 0x01E0E7 07:E0D7: AD        .byte $AD   ; 
- D 3 - - - 0x01E0E8 07:E0D8: AC        .byte $AC   ; 
- D 3 - - - 0x01E0E9 07:E0D9: AD        .byte $AD   ; 
- D 3 - - - 0x01E0EA 07:E0DA: AC        .byte $AC   ; 
- - - - - - 0x01E0EB 07:E0DB: AD        .byte $AD   ; 



tbl_E0DC:
- D 3 - - - 0x01E0EC 07:E0DC: CB        .byte $CB   ; 
- D 3 - - - 0x01E0ED 07:E0DD: CC        .byte $CC   ; 
- D 3 - - - 0x01E0EE 07:E0DE: C2        .byte $C2   ; 
- D 3 - - - 0x01E0EF 07:E0DF: C3        .byte $C3   ; 
- D 3 - - - 0x01E0F0 07:E0E0: C6        .byte $C6   ; 
- D 3 - - - 0x01E0F1 07:E0E1: C3        .byte $C3   ; 
- D 3 - - - 0x01E0F2 07:E0E2: C4        .byte $C4   ; 
- D 3 - - - 0x01E0F3 07:E0E3: CA        .byte $CA   ; 
- D 3 - - - 0x01E0F4 07:E0E4: C8        .byte $C8   ; 
- D 3 - - - 0x01E0F5 07:E0E5: C9        .byte $C9   ; 
- D 3 - - - 0x01E0F6 07:E0E6: CB        .byte $CB   ; 
- D 3 - - - 0x01E0F7 07:E0E7: CC        .byte $CC   ; 
- D 3 - - - 0x01E0F8 07:E0E8: CB        .byte $CB   ; 
- D 3 - - - 0x01E0F9 07:E0E9: CD        .byte $CD   ; 
- D 3 - - - 0x01E0FA 07:E0EA: C2        .byte $C2   ; 
- D 3 - - - 0x01E0FB 07:E0EB: C5        .byte $C5   ; 
- D 3 - - - 0x01E0FC 07:E0EC: C4        .byte $C4   ; 
- D 3 - - - 0x01E0FD 07:E0ED: CA        .byte $CA   ; 
- D 3 - - - 0x01E0FE 07:E0EE: C8        .byte $C8   ; 
- D 3 - - - 0x01E0FF 07:E0EF: C9        .byte $C9   ; 
- D 3 - - - 0x01E100 07:E0F0: CB        .byte $CB   ; 
- D 3 - - - 0x01E101 07:E0F1: CC        .byte $CC   ; 
- D 3 - - - 0x01E102 07:E0F2: C0        .byte $C0   ; 
- D 3 - - - 0x01E103 07:E0F3: C1        .byte $C1   ; 
- D 3 - - - 0x01E104 07:E0F4: CB        .byte $CB   ; 
- D 3 - - - 0x01E105 07:E0F5: CE        .byte $CE   ; 
- D 3 - - - 0x01E106 07:E0F6: C4        .byte $C4   ; 
- D 3 - - - 0x01E107 07:E0F7: CA        .byte $CA   ; 
- D 3 - - - 0x01E108 07:E0F8: C8        .byte $C8   ; 
- D 3 - - - 0x01E109 07:E0F9: C9        .byte $C9   ; 
- D 3 - - - 0x01E10A 07:E0FA: CB        .byte $CB   ; 
- D 3 - - - 0x01E10B 07:E0FB: CC        .byte $CC   ; 
- D 3 - - - 0x01E10C 07:E0FC: C4        .byte $C4   ; 
- D 3 - - - 0x01E10D 07:E0FD: C7        .byte $C7   ; 
- D 3 - - - 0x01E10E 07:E0FE: C4        .byte $C4   ; 
- D 3 - - - 0x01E10F 07:E0FF: C5        .byte $C5   ; 
- D 3 - - - 0x01E110 07:E100: C4        .byte $C4   ; 
- D 3 - - - 0x01E111 07:E101: CA        .byte $CA   ; 
- D 3 - - - 0x01E112 07:E102: C8        .byte $C8   ; 
- D 3 - - - 0x01E113 07:E103: C9        .byte $C9   ; 



loc_E00B:
C D 3 - - - 0x01E01B 07:E00B: 20 1E E0  JSR sub_E01E
loc_0x01E01E:
C - - - - - 0x01E01E 07:E00E: 09 E0     ORA #$E0
C - - - - - 0x01E020 07:E010: 20 24 DE  JSR sub_DE24_write_A_to_buffer_and_INX
C - - - - - 0x01E023 07:E013: 18        CLC
C - - - - - 0x01E024 07:E014: 69 01     ADC #$01
C - - - - - 0x01E026 07:E016: 20 24 DE  JSR sub_DE24_write_A_to_buffer_and_INX
C - - - - - 0x01E029 07:E019: A9 01     LDA #$01
C - - - - - 0x01E02B 07:E01B: 4C BD DE  JMP loc_DEBD



sub_E01E:
sub_0x01E02E:
C - - - - - 0x01E02E 07:E01E: A9 07     LDA #$07
C - - - - - 0x01E030 07:E020: 20 BD DE  JSR sub_DEBD
C - - - - - 0x01E033 07:E023: AD 69 03  LDA ram_0369_counter
C - - - - - 0x01E036 07:E026: 0A        ASL
C - - - - - 0x01E037 07:E027: 60        RTS



.out .sprintf("Free bytes in bank 1E: 0x%04X [%d]", ($8000 - *), ($8000 - *))



