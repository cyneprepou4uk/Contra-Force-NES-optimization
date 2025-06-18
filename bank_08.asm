.segment "BANK_08"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $8000  ; for listing file
; 0x010010-0x01400F



.export sub_0x012A1F_update_sound_engine
.export ofs_006_0x012A1F_02_update_sound_engine
.export ofs_006_0x013261_1E
.export sub_0x013296
.export ofs_006_0x013296_03
.export ofs_006_0x0133E6_01
.export ofs_006_0x013FCB_25



; bzk garbage, unused bank id
- D 0 - - - 0x010010 04:8000: 08        .byte con_prg_bank + $08   ; 



sub_8001_music_control_bytes_E0_FE:
C D 0 - - - 0x010011 04:8001: 38        SEC
C - - - - - 0x010012 04:8002: E9 E0     SBC #$E0
C - - - - - 0x010014 04:8004: 0A        ASL
C - - - - - 0x010015 04:8005: AA        TAX
C - - - - - 0x010016 04:8006: BD 18 80  LDA tbl_8018_music_control_bytes,X
C - - - - - 0x010019 04:8009: 85 E2     STA ram_00E2_se_t03_jmp
C - - - - - 0x01001B 04:800B: BD 19 80  LDA tbl_8018_music_control_bytes + $01,X
loc_800E:
C D 0 - - - 0x01001E 04:800E: 85 E3     STA ram_00E2_se_t03_jmp + $01
C - - - - - 0x010020 04:8010: A6 EC     LDX ram_00EC_se_channel_index
C - - - - - 0x010022 04:8012: C8        INY
C - - - - - 0x010023 04:8013: B1 E0     LDA (ram_00E0_se_t01_music_data),Y
C - - - - - 0x010025 04:8015: 6C E2 00  JMP (ram_00E2_se_t03_jmp)



tbl_8018_music_control_bytes:
; see con_se_cb
- D 0 - - - 0x010028 04:8018: 84 80     .word ofs_010_8084_E0
- D 0 - - - 0x01002A 04:801A: B0 80     .word ofs_010_80B0_E1
- D 0 - - - 0x01002C 04:801C: B4 80     .word ofs_010_80B4_E2
- D 0 - - - 0x01002E 04:801E: C5 80     .word ofs_010_80C5_E3
- D 0 - - - 0x010030 04:8020: F0 80     .word ofs_010_80F0_E4
- D 0 - - - 0x010032 04:8022: 04 81     .word ofs_010_8104_E5
- D 0 - - - 0x010034 04:8024: 0A 81     .word ofs_010_810A_E6
- D 0 - - - 0x010036 04:8026: 24 81     .word ofs_010_8124_E7
- D 0 - - - 0x010038 04:8028: 39 81     .word ofs_010_8139_E8
- D 0 - - - 0x01003A 04:802A: 3D 81     .word ofs_010_813D_E9
- D 0 - - - 0x01003C 04:802C: 41 81     .word ofs_010_8141_EA
- D 0 - - - 0x01003E 04:802E: 49 81     .word ofs_010_8149_EB
- D 0 - - - 0x010040 04:8030: 65 81     .word ofs_010_8165_EC
- - - - - - 0x010042 04:8032: 82 81     .word ofs_010_8182_ED   ; unused, index doesn't exist (specifically for music)
- - - - - - 0x010044 04:8034: 82 81     .word ofs_010_8182_EE   ; unused, index doesn't exist
- - - - - - 0x010046 04:8036: 82 81     .word ofs_010_8182_EF   ; unused, index doesn't exist
- D 0 - - - 0x010048 04:8038: 82 81     .word ofs_010_8182_F0
- D 0 - - - 0x01004A 04:803A: 82 81     .word ofs_010_8182_F1
- D 0 - - - 0x01004C 04:803C: 82 81     .word ofs_010_8182_F2
- D 0 - - - 0x01004E 04:803E: 82 81     .word ofs_010_8182_F3
- D 0 - - - 0x010050 04:8040: 82 81     .word ofs_010_8182_F4
- - - - - - 0x010052 04:8042: 82 81     .word ofs_010_8182_F5   ; unused, index doesn't exist
- - - - - - 0x010054 04:8044: 8B 81     .word ofs_010_818B_F6   ; unused, index doesn't exist
- - - - - - 0x010056 04:8046: 8B 81     .word ofs_010_818B_F7   ; unused, index doesn't exist
- - - - - - 0x010058 04:8048: 8B 81     .word ofs_010_818B_F8   ; unused, index doesn't exist
- - - - - - 0x01005A 04:804A: 8B 81     .word ofs_010_818B_F9   ; unused, index doesn't exist
- - - - - - 0x01005C 04:804C: 8B 81     .word ofs_010_818B_FA   ; unused, index doesn't exist
- D 0 - - - 0x01005E 04:804E: 8B 81     .word ofs_010_818B_FB
- D 0 - - - 0x010060 04:8050: A3 81     .word ofs_010_81A3_FC
- D 0 - - - 0x010062 04:8052: BB 81     .word ofs_010_81BB_FD_jsr
- D 0 - - - 0x010064 04:8054: E4 81     .word ofs_010_81E4_FE_jmp



sub_8056_sfx_control_bytes_E8_EE:
C - - - - - 0x010066 04:8056: 38        SEC
C - - - - - 0x010067 04:8057: E9 E8     SBC #$E8
C - - - - - 0x010069 04:8059: 0A        ASL
C - - - - - 0x01006A 04:805A: AA        TAX
C - - - - - 0x01006B 04:805B: BD 66 80  LDA tbl_8066_sfx_control_bytes,X
C - - - - - 0x01006E 04:805E: 85 E2     STA ram_00E2_se_t03_jmp
C - - - - - 0x010070 04:8060: BD 67 80  LDA tbl_8066_sfx_control_bytes + $01,X
C - - - - - 0x010073 04:8063: 4C 0E 80  JMP loc_800E



tbl_8066_sfx_control_bytes:
; see con_se_cb
- D 0 - - - 0x010076 04:8066: B0 80     .word ofs_011_80B0_E8
- D 0 - - - 0x010078 04:8068: C1 80     .word ofs_011_80C1_E9
- D 0 - - - 0x01007A 04:806A: 32 85     .word ofs_011_8532_EA
- D 0 - - - 0x01007C 04:806C: 3D 81     .word ofs_011_813D_EB
- D 0 - - - 0x01007E 04:806E: 74 80     .word ofs_011_8074_EC
- D 0 - - - 0x010080 04:8070: 7E 80     .word ofs_011_807E_ED
- - - - - - 0x010082 04:8072: 7C 80     .word ofs_011_807C_EE   ; unused, index doesn't exist



ofs_011_8074_EC:
; con_se_cb_EC
C - - J - - 0x010084 04:8074: BD 5E 05  LDA ram_055E_se,X
C - - - - - 0x010087 04:8077: 09 04     ORA #$04
C - - - - - 0x010089 04:8079: 9D 5E 05  STA ram_055E_se,X
ofs_011_807C_EE:
; con_se_cb_EE
C - - - - - 0x01008C 04:807C: 88        DEY
C - - - - - 0x01008D 04:807D: 60        RTS



sub_807E:
ofs_011_807E_ED:
; con_se_cb_ED
C - - - - - 0x01008E 04:807E: 29 0F     AND #$0F
C - - - - - 0x010090 04:8080: 9D A8 05  STA ram_05A8_se,X
C - - - - - 0x010093 04:8083: 60        RTS



ofs_010_8084_E0:
; con_se_cb_E0
C - - J - - 0x010094 04:8084: 9D 4C 05  STA ram_054C_se,X
C - - - - - 0x010097 04:8087: E0 03     CPX #$03
C - - - - - 0x010099 04:8089: F0 28     BEQ bra_80B3_RTS
C - - - - - 0x01009B 04:808B: C8        INY
C - - - - - 0x01009C 04:808C: B1 E0     LDA (ram_00E0_se_t01_music_data),Y
C - - - - - 0x01009E 04:808E: E0 02     CPX #$02
C - - - - - 0x0100A0 04:8090: F0 46     BEQ bra_80D8
C - - - - - 0x0100A2 04:8092: 29 F0     AND #$F0
C - - - - - 0x0100A4 04:8094: 9D A3 05  STA ram_05A3_se,X
C - - - - - 0x0100A7 04:8097: 20 D0 80  JSR sub_80D0
C - - - - - 0x0100AA 04:809A: C8        INY
C - - - - - 0x0100AB 04:809B: B1 E0     LDA (ram_00E0_se_t01_music_data),Y
C - - - - - 0x0100AD 04:809D: 30 08     BMI bra_80A7
C - - - - - 0x0100AF 04:809F: BD FD 05  LDA ram_05FD_se,X
C - - - - - 0x0100B2 04:80A2: 9D A8 05  STA ram_05A8_se,X
C - - - - - 0x0100B5 04:80A5: B1 E0     LDA (ram_00E0_se_t01_music_data),Y
bra_80A7:
C - - - - - 0x0100B7 04:80A7: 20 F0 80  JSR sub_80F0
C - - - - - 0x0100BA 04:80AA: C8        INY
C - - - - - 0x0100BB 04:80AB: B1 E0     LDA (ram_00E0_se_t01_music_data),Y
C - - - - - 0x0100BD 04:80AD: 4C 04 81  JMP loc_8104



ofs_010_80B0_E1:
; con_se_cb_E1
ofs_011_80B0_E8:
; con_se_cb_E8
C - - J - - 0x0100C0 04:80B0: 9D 4C 05  STA ram_054C_se,X
bra_80B3_RTS:
C - - - - - 0x0100C3 04:80B3: 60        RTS



ofs_010_80B4_E2:
; con_se_cb_E2
C - - J - - 0x0100C4 04:80B4: 9D 1D 03  STA ram_031D_se,X
C - - - - - 0x0100C7 04:80B7: F0 0B     BEQ bra_80C4_RTS
C - - - - - 0x0100C9 04:80B9: 29 0F     AND #$0F
C - - - - - 0x0100CB 04:80BB: D0 07     BNE bra_80C4_RTS
C - - - - - 0x0100CD 04:80BD: B1 E0     LDA (ram_00E0_se_t01_music_data),Y
C - - - - - 0x0100CF 04:80BF: 29 F0     AND #$F0
ofs_011_80C1_E9:
; con_se_cb_E9
C - - - - - 0x0100D1 04:80C1: 9D A3 05  STA ram_05A3_se,X
bra_80C4_RTS:
C - - - - - 0x0100D4 04:80C4: 60        RTS



ofs_010_80C5_E3:
; con_se_cb_E3
C - - J - - 0x0100D5 04:80C5: E0 02     CPX #$02
C - - - - - 0x0100D7 04:80C7: F0 0F     BEQ bra_80D8
; / 10
C - - - - - 0x0100D9 04:80C9: 4A        LSR
C - - - - - 0x0100DA 04:80CA: 4A        LSR
C - - - - - 0x0100DB 04:80CB: 4A        LSR
C - - - - - 0x0100DC 04:80CC: 4A        LSR
C - - - - - 0x0100DD 04:80CD: 9D 09 03  STA ram_0309_se,X
sub_80D0:
C - - - - - 0x0100E0 04:80D0: B1 E0     LDA (ram_00E0_se_t01_music_data),Y
C - - - - - 0x0100E2 04:80D2: 29 0F     AND #$0F
bra_80D4:
loc_80D4:
C - - - - - 0x0100E4 04:80D4: 9D FD 05  STA ram_05FD_se,X
C - - - - - 0x0100E7 04:80D7: 60        RTS
bra_80D8:
C - - - - - 0x0100E8 04:80D8: 29 F0     AND #$F0
C - - - - - 0x0100EA 04:80DA: F0 0D     BEQ bra_80E9
- - - - - - 0x0100EC 04:80DC: A9 00     LDA #$00
- - - - - - 0x0100EE 04:80DE: 8D F9 05  STA ram_05F7_se + $02
- - - - - - 0x0100F1 04:80E1: B1 E0     LDA (ram_00E0_se_t01_music_data),Y
- - - - - - 0x0100F3 04:80E3: 38        SEC
- - - - - - 0x0100F4 04:80E4: E9 10     SBC #$10
- - - - - - 0x0100F6 04:80E6: 4C D4 80  JMP loc_80D4
bra_80E9:
C - - - - - 0x0100F9 04:80E9: 20 04 81  JSR sub_8104
C - - - - - 0x0100FC 04:80EC: A9 90     LDA #$90
C - - - - - 0x0100FE 04:80EE: D0 E4     BNE bra_80D4    ; jmp



sub_80F0:
ofs_010_80F0_E4:
; con_se_cb_E4
C - - - - - 0x010100 04:80F0: 30 06     BMI bra_80F8
C - - - - - 0x010102 04:80F2: 38        SEC
C - - - - - 0x010103 04:80F3: 2A        ROL
C - - - - - 0x010104 04:80F4: 9D 15 03  STA ram_0315_se,X
C - - - - - 0x010107 04:80F7: 60        RTS
bra_80F8:
C - - - - - 0x010108 04:80F8: 38        SEC
C - - - - - 0x010109 04:80F9: E9 70     SBC #$70
C - - - - - 0x01010B 04:80FB: 9D 0F 03  STA ram_030F_se,X
C - - - - - 0x01010E 04:80FE: A9 00     LDA #$00
C - - - - - 0x010110 04:8100: 9D 15 03  STA ram_0315_se,X
C - - - - - 0x010113 04:8103: 60        RTS



loc_8104:   ; bzk optimize, point to 0x010116, or write this code at 0x0100BD
sub_8104:
ofs_010_8104_E5:
; con_se_cb_E5
; bzk optimize, A already has proper byte
C D 0 - - - 0x010114 04:8104: B1 E0     LDA (ram_00E0_se_t01_music_data),Y
C - - - - - 0x010116 04:8106: 9D F7 05  STA ram_05F7_se,X
C - - - - - 0x010119 04:8109: 60        RTS



ofs_010_810A_E6:
; con_se_cb_E6
C - - J - - 0x01011A 04:810A: F0 14     BEQ bra_8120
; / 10
C - - - - - 0x01011C 04:810C: 4A        LSR
C - - - - - 0x01011D 04:810D: 4A        LSR
C - - - - - 0x01011E 04:810E: 4A        LSR
C - - - - - 0x01011F 04:810F: 4A        LSR
C - - - - - 0x010120 04:8110: DD FD 05  CMP ram_05FD_se,X
C - - - - - 0x010123 04:8113: 90 04     BCC bra_8119
C - - - - - 0x010125 04:8115: A9 00     LDA #$00
C - - - - - 0x010127 04:8117: F0 07     BEQ bra_8120    ; jmp
bra_8119:
C - - - - - 0x010129 04:8119: 9D 13 03  STA ram_0313_se,X
C - - - - - 0x01012C 04:811C: B1 E0     LDA (ram_00E0_se_t01_music_data),Y
C - - - - - 0x01012E 04:811E: 29 0F     AND #$0F
bra_8120:
C - - - - - 0x010130 04:8120: 9D 11 03  STA ram_0311_se,X
C - - - - - 0x010133 04:8123: 60        RTS



ofs_010_8124_E7:
; con_se_cb_E7
C - - J - - 0x010134 04:8124: 9D BE 05  STA ram_05BE_se,X
C - - - - - 0x010137 04:8127: D0 09     BNE bra_8132
; if 00
C - - - - - 0x010139 04:8129: BD F4 05  LDA ram_05F4_se,X
C - - - - - 0x01013C 04:812C: 29 7F     AND #$7F
C - - - - - 0x01013E 04:812E: 9D F4 05  STA ram_05F4_se,X
C - - - - - 0x010141 04:8131: 60        RTS
bra_8132:
C - - - - - 0x010142 04:8132: C8        INY
C - - - - - 0x010143 04:8133: B1 E0     LDA (ram_00E0_se_t01_music_data),Y
C - - - - - 0x010145 04:8135: 9D C4 05  STA ram_05C4_se,X
C - - - - - 0x010148 04:8138: 60        RTS



ofs_010_8139_E8:
; con_se_cb_E8
C - - J - - 0x010149 04:8139: 9D 04 03  STA ram_0304_se,X
C - - - - - 0x01014C 04:813C: 60        RTS



ofs_010_813D_E9:
; con_se_cb_E9
ofs_011_813D_EB:
; con_se_cb_EB
C - - J - - 0x01014D 04:813D: 9D 9E 05  STA ram_059E_se,X
C - - - - - 0x010150 04:8140: 60        RTS



ofs_010_8141_EA:
; con_se_cb_EA
C - - J - - 0x010151 04:8141: F0 02     BEQ bra_8145
C - - - - - 0x010153 04:8143: 09 10     ORA #$10
bra_8145:
C - - - - - 0x010155 04:8145: 9D A5 05  STA ram_05A3_se + $02,X
C - - - - - 0x010158 04:8148: 60        RTS



ofs_010_8149_EB:
; con_se_cb_EB
C - - J - - 0x010159 04:8149: 9D D3 05  STA ram_05D3_se,X
C - - - - - 0x01015C 04:814C: F0 16     BEQ bra_8164_RTS
C - - - - - 0x01015E 04:814E: C8        INY
C - - - - - 0x01015F 04:814F: B1 E0     LDA (ram_00E0_se_t01_music_data),Y
C - - - - - 0x010161 04:8151: 38        SEC
C - - - - - 0x010162 04:8152: 6A        ROR
C - - - - - 0x010163 04:8153: 6A        ROR
C - - - - - 0x010164 04:8154: 6A        ROR
C - - - - - 0x010165 04:8155: 4A        LSR
C - - - - - 0x010166 04:8156: 9D D6 05  STA ram_05D6_se,X
C - - - - - 0x010169 04:8159: C8        INY
C - - - - - 0x01016A 04:815A: B1 E0     LDA (ram_00E0_se_t01_music_data),Y
C - - - - - 0x01016C 04:815C: 9D DC 05  STA ram_05DC_se,X
C - - - - - 0x01016F 04:815F: A9 00     LDA #$00
C - - - - - 0x010171 04:8161: 9D E2 05  STA ram_05E2_se,X
bra_8164_RTS:
C - - - - - 0x010174 04:8164: 60        RTS



ofs_010_8165_EC:
; con_se_cb_EC
C - - J - - 0x010175 04:8165: 9D E2 05  STA ram_05E2_se,X
C - - - - - 0x010178 04:8168: F0 17     BEQ bra_8181_RTS
C - - - - - 0x01017A 04:816A: C8        INY
C - - - - - 0x01017B 04:816B: B1 E0     LDA (ram_00E0_se_t01_music_data),Y
C - - - - - 0x01017D 04:816D: 4A        LSR
C - - - - - 0x01017E 04:816E: 6A        ROR
; / 04
C - - - - - 0x01017F 04:816F: 4A        LSR
C - - - - - 0x010180 04:8170: 4A        LSR
C - - - - - 0x010181 04:8171: 9D E5 05  STA ram_05E5_se,X
C - - - - - 0x010184 04:8174: C8        INY
C - - - - - 0x010185 04:8175: B1 E0     LDA (ram_00E0_se_t01_music_data),Y
C - - - - - 0x010187 04:8177: 29 0F     AND #$0F
C - - - - - 0x010189 04:8179: 9D E8 05  STA ram_05E8_se,X
C - - - - - 0x01018C 04:817C: A9 00     LDA #$00
C - - - - - 0x01018E 04:817E: 9D D3 05  STA ram_05D3_se,X
bra_8181_RTS:
C - - - - - 0x010191 04:8181: 60        RTS



ofs_010_8182_ED:
; con_se_cb_ED
ofs_010_8182_EE:
; con_se_cb_EE
ofs_010_8182_EF:
; con_se_cb_EF
ofs_010_8182_F0:
; con_se_cb_F0
ofs_010_8182_F1:
; con_se_cb_F1
ofs_010_8182_F2:
; con_se_cb_F2
ofs_010_8182_F3:
; con_se_cb_F3
ofs_010_8182_F4:
; con_se_cb_F4
ofs_010_8182_F5:
; con_se_cb_F5
C - - J - - 0x010192 04:8182: 88        DEY
C - - - - - 0x010193 04:8183: B1 E0     LDA (ram_00E0_se_t01_music_data),Y
C - - - - - 0x010195 04:8185: 29 0F     AND #$0F
C - - - - - 0x010197 04:8187: 9D B2 05  STA ram_05B2_se,X
C - - - - - 0x01019A 04:818A: 60        RTS



ofs_010_818B_F6:
; con_se_cb_F6
ofs_010_818B_F7:
; con_se_cb_F7
ofs_010_818B_F8:
; con_se_cb_F8
ofs_010_818B_F9:
; con_se_cb_F9
ofs_010_818B_FA:
; con_se_cb_FA
ofs_010_818B_FB:
; con_se_cb_FB
C - - J - - 0x01019B 04:818B: 98        TYA
C - - - - - 0x01019C 04:818C: 18        CLC
C - - - - - 0x01019D 04:818D: 65 E0     ADC ram_00E0_se_t01_music_data
C - - - - - 0x01019F 04:818F: 9D 6A 05  STA ram_056A_se,X
C - - - - - 0x0101A2 04:8192: A9 00     LDA #$00
C - - - - - 0x0101A4 04:8194: 65 E1     ADC ram_00E0_se_t01_music_data + $01
C - - - - - 0x0101A6 04:8196: 9D 64 05  STA ram_0564_se,X
C - - - - - 0x0101A9 04:8199: BD 5E 05  LDA ram_055E_se,X
C - - - - - 0x0101AC 04:819C: 29 FE     AND #$FE
C - - - - - 0x0101AE 04:819E: 9D 5E 05  STA ram_055E_se,X
C - - - - - 0x0101B1 04:81A1: 88        DEY
C - - - - - 0x0101B2 04:81A2: 60        RTS



ofs_010_81A3_FC:
; con_se_cb_FC
C - - J - - 0x0101B3 04:81A3: 98        TYA
C - - - - - 0x0101B4 04:81A4: 18        CLC
C - - - - - 0x0101B5 04:81A5: 65 E0     ADC ram_00E0_se_t01_music_data
C - - - - - 0x0101B7 04:81A7: 9D 7C 05  STA ram_057C_se,X
C - - - - - 0x0101BA 04:81AA: A9 00     LDA #$00
C - - - - - 0x0101BC 04:81AC: 65 E1     ADC ram_00E0_se_t01_music_data + $01
C - - - - - 0x0101BE 04:81AE: 9D 76 05  STA ram_0576_se,X
C - - - - - 0x0101C1 04:81B1: BD 5E 05  LDA ram_055E_se,X
C - - - - - 0x0101C4 04:81B4: 09 01     ORA #$01
C - - - - - 0x0101C6 04:81B6: 9D 5E 05  STA ram_055E_se,X
C - - - - - 0x0101C9 04:81B9: 88        DEY
C - - - - - 0x0101CA 04:81BA: 60        RTS



ofs_010_81BB_FD_jsr:
; con_se_cb_jsr
C - - J - - 0x0101CB 04:81BB: 85 E2     STA ram_00E2_se_t04_ptr_lo
C - - - - - 0x0101CD 04:81BD: C8        INY
C - - - - - 0x0101CE 04:81BE: B1 E0     LDA (ram_00E0_se_t01_music_data),Y
C - - - - - 0x0101D0 04:81C0: 85 E3     STA ram_00E3_se_t01_ptr_hi
C - - - - - 0x0101D2 04:81C2: C8        INY
C - - - - - 0x0101D3 04:81C3: 98        TYA
C - - - - - 0x0101D4 04:81C4: 18        CLC
C - - - - - 0x0101D5 04:81C5: 65 E0     ADC ram_00E0_se_t01_music_data
C - - - - - 0x0101D7 04:81C7: 9D 8E 05  STA ram_058E_se,X
C - - - - - 0x0101DA 04:81CA: A9 00     LDA #$00
C - - - - - 0x0101DC 04:81CC: 65 E1     ADC ram_00E0_se_t01_music_data + $01
C - - - - - 0x0101DE 04:81CE: 9D 88 05  STA ram_0588_se,X
C - - - - - 0x0101E1 04:81D1: A5 E2     LDA ram_00E2_se_t04_ptr_lo
C - - - - - 0x0101E3 04:81D3: 85 E0     STA ram_00E0_se_t01_music_data
C - - - - - 0x0101E5 04:81D5: A5 E3     LDA ram_00E3_se_t01_ptr_hi
C - - - - - 0x0101E7 04:81D7: 85 E1     STA ram_00E0_se_t01_music_data + $01
C - - - - - 0x0101E9 04:81D9: A0 FF     LDY #$FF
C - - - - - 0x0101EB 04:81DB: BD 5E 05  LDA ram_055E_se,X
C - - - - - 0x0101EE 04:81DE: 09 02     ORA #$02
C - - - - - 0x0101F0 04:81E0: 9D 5E 05  STA ram_055E_se,X
C - - - - - 0x0101F3 04:81E3: 60        RTS



ofs_010_81E4_FE_jmp:
; con_se_cb_jmp
C - - J - - 0x0101F4 04:81E4: C9 FF     CMP #$FF
C - - - - - 0x0101F6 04:81E6: F0 50     BEQ bra_8238_FF
C - - - - - 0x0101F8 04:81E8: BD 5E 05  LDA ram_055E_se,X
C - - - - - 0x0101FB 04:81EB: 4A        LSR
C - - - - - 0x0101FC 04:81EC: B0 25     BCS bra_8213
C - - - - - 0x0101FE 04:81EE: B1 E0     LDA (ram_00E0_se_t01_music_data),Y
C - - - - - 0x010200 04:81F0: FE 70 05  INC ram_0570_se,X
C - - - - - 0x010203 04:81F3: DD 70 05  CMP ram_0570_se,X
C - - - - - 0x010206 04:81F6: F0 0D     BEQ bra_8205
C - - - - - 0x010208 04:81F8: BD 6A 05  LDA ram_056A_se,X
C - - - - - 0x01020B 04:81FB: 85 E0     STA ram_00E0_se_t01_music_data
C - - - - - 0x01020D 04:81FD: BD 64 05  LDA ram_0564_se,X
C - - - - - 0x010210 04:8200: 85 E1     STA ram_00E0_se_t01_music_data + $01
C - - - - - 0x010212 04:8202: A0 FF     LDY #$FF
C - - - - - 0x010214 04:8204: 60        RTS
bra_8205:
C - - - - - 0x010215 04:8205: BD 5E 05  LDA ram_055E_se,X
C - - - - - 0x010218 04:8208: 09 01     ORA #$01
C - - - - - 0x01021A 04:820A: 9D 5E 05  STA ram_055E_se,X
C - - - - - 0x01021D 04:820D: A9 00     LDA #$00
C - - - - - 0x01021F 04:820F: 9D 70 05  STA ram_0570_se,X
C - - - - - 0x010222 04:8212: 60        RTS
bra_8213:
C - - - - - 0x010223 04:8213: B1 E0     LDA (ram_00E0_se_t01_music_data),Y
C - - - - - 0x010225 04:8215: FE 82 05  INC ram_0582_se,X
C - - - - - 0x010228 04:8218: DD 82 05  CMP ram_0582_se,X
C - - - - - 0x01022B 04:821B: F0 0D     BEQ bra_822A
C - - - - - 0x01022D 04:821D: BD 7C 05  LDA ram_057C_se,X
C - - - - - 0x010230 04:8220: 85 E0     STA ram_00E0_se_t01_music_data
C - - - - - 0x010232 04:8222: BD 76 05  LDA ram_0576_se,X
C - - - - - 0x010235 04:8225: 85 E1     STA ram_00E0_se_t01_music_data + $01
C - - - - - 0x010237 04:8227: A0 FF     LDY #$FF
C - - - - - 0x010239 04:8229: 60        RTS
bra_822A:
C - - - - - 0x01023A 04:822A: BD 5E 05  LDA ram_055E_se,X
C - - - - - 0x01023D 04:822D: 29 FE     AND #$FE
C - - - - - 0x01023F 04:822F: 9D 5E 05  STA ram_055E_se,X
C - - - - - 0x010242 04:8232: A9 00     LDA #$00
C - - - - - 0x010244 04:8234: 9D 82 05  STA ram_0582_se,X
C - - - - - 0x010247 04:8237: 60        RTS
bra_8238_FF:
C - - - - - 0x010248 04:8238: C8        INY
C - - - - - 0x010249 04:8239: B1 E0     LDA (ram_00E0_se_t01_music_data),Y
C - - - - - 0x01024B 04:823B: 85 E2     STA ram_00E2_se_t05_ptr_lo
C - - - - - 0x01024D 04:823D: C8        INY
C - - - - - 0x01024E 04:823E: B1 E0     LDA (ram_00E0_se_t01_music_data),Y
C - - - - - 0x010250 04:8240: 85 E1     STA ram_00E0_se_t01_music_data + $01
C - - - - - 0x010252 04:8242: A5 E2     LDA ram_00E2_se_t05_ptr_lo
C - - - - - 0x010254 04:8244: 85 E0     STA ram_00E0_se_t01_music_data
C - - - - - 0x010256 04:8246: A0 FF     LDY #$FF
C - - - - - 0x010258 04:8248: 60        RTS



tbl_8249:
; 01 con_music_01
- D 0 - I - 0x010259 04:8249: 05        .byte $10 * $00 + $05   ; 
- D 0 - I - 0x01025A 04:824A: D9 85     .word _off000_85D9_01_05
; 02 con_music_02
- D 0 - I - 0x01025C 04:824C: 05        .byte $10 * $00 + $05   ; 
- D 0 - I - 0x01025D 04:824D: DD 85     .word _off000_85DD_02_05
; 03 con_music_03
- D 0 - I - 0x01025F 04:824F: 05        .byte $10 * $00 + $05   ; 
- D 0 - I - 0x010260 04:8250: E6 85     .word _off000_85E6_03_05
; 04 con_music_04
- D 0 - I - 0x010262 04:8252: 15        .byte $10 * $01 + $05   ; 
- D 0 - I - 0x010263 04:8253: 08 8C     .word _off000_8C08_04_05
- D 0 - I - 0x010265 04:8255: 04        .byte $04   ; 
- D 0 - I - 0x010266 04:8256: 0D 8C     .word _off000_8C0D_04_04_disable
; 06 con_music_06
- D 0 - I - 0x010268 04:8258: 14        .byte $10 * $01 + $04   ; 
- D 0 - I - 0x010269 04:8259: FE 88     .word _off000_88FE_06_04_disable
- D 0 - I - 0x01026B 04:825B: 05        .byte $05   ; 
- D 0 - I - 0x01026C 04:825C: F4 88     .word _off000_88F4_06_05
; 08 con_music_08
- D 0 - I - 0x01026E 04:825E: 14        .byte $10 * $01 + $04   ; 
- D 0 - I - 0x01026F 04:825F: 6E 8B     .word _off000_8B6E_08_04
- D 0 - I - 0x010271 04:8261: 05        .byte $05   ; 
- D 0 - I - 0x010272 04:8262: 7B 8B     .word _off000_8B7B_08_05_disable
; 0A con_music_0A
- D 0 - I - 0x010274 04:8264: 14        .byte $10 * $01 + $04   ; 
- D 0 - I - 0x010275 04:8265: 80 88     .word _off000_8880_0A_04
- D 0 - I - 0x010277 04:8267: 05        .byte $05   ; 
- D 0 - I - 0x010278 04:8268: 8E 88     .word _off000_888E_0A_05
; 0C con_music_0C
- D 0 - I - 0x01027A 04:826A: 14        .byte $10 * $01 + $04   ; 
- D 0 - I - 0x01027B 04:826B: F0 85     .word _off000_85F0_0C_04
- D 0 - I - 0x01027D 04:826D: 05        .byte $05   ; 
- D 0 - I - 0x01027E 04:826E: 13 86     .word _off000_8613_0C_05
; 0E con_music_0E
- D 0 - I - 0x010280 04:8270: 14        .byte $10 * $01 + $04   ; 
- D 0 - I - 0x010281 04:8271: E4 89     .word _off000_89E4_0E_04
- D 0 - I - 0x010283 04:8273: 05        .byte $05   ; 
- D 0 - I - 0x010284 04:8274: 08 8A     .word _off000_8A08_0E_05
; 10 con_music_10
- D 0 - I - 0x010286 04:8276: 14        .byte $10 * $01 + $04   ; 
- D 0 - I - 0x010287 04:8277: 2E 8B     .word _off000_8B2E_10_04
- D 0 - I - 0x010289 04:8279: 05        .byte $05   ; 
- D 0 - I - 0x01028A 04:827A: 44 8B     .word _off000_8B44_10_05
; 12 con_music_12
- D 0 - I - 0x01028C 04:827C: 14        .byte $10 * $01 + $04   ; 
- D 0 - I - 0x01028D 04:827D: C4 86     .word _off000_86C4_12_04
- D 0 - I - 0x01028F 04:827F: 05        .byte $05   ; 
- D 0 - I - 0x010290 04:8280: EB 86     .word _off000_86EB_12_05
; 14 con_music_14
- D 0 - I - 0x010292 04:8282: 14        .byte $10 * $01 + $04   ; 
- D 0 - I - 0x010293 04:8283: 0E 87     .word _off000_870E_14_04_disable
- D 0 - I - 0x010295 04:8285: 05        .byte $05   ; 
- D 0 - I - 0x010296 04:8286: 00 87     .word _off000_8700_14_05
; 16 con_music_16
- D 0 - I - 0x010298 04:8288: 14        .byte $10 * $01 + $04   ; 
- D 0 - I - 0x010299 04:8289: 1C 87     .word _off000_871C_16_04
- D 0 - I - 0x01029B 04:828B: 05        .byte $05   ; 
- D 0 - I - 0x01029C 04:828C: 0F 87     .word _off000_870F_16_05
; 18 con_music_18
- D 0 - I - 0x01029E 04:828E: 14        .byte $10 * $01 + $04   ; 
- D 0 - I - 0x01029F 04:828F: 6B 86     .word _off000_866B_18_04_disable
- D 0 - I - 0x0102A1 04:8291: 05        .byte $05   ; 
- D 0 - I - 0x0102A2 04:8292: 5A 86     .word _off000_865A_18_05
; 1A con_music_1A
- D 0 - I - 0x0102A4 04:8294: 14        .byte $10 * $01 + $04   ; 
- D 0 - I - 0x0102A5 04:8295: A9 8C     .word _off000_8CA9_1A_04
- D 0 - I - 0x0102A7 04:8297: 05        .byte $05   ; 
- D 0 - I - 0x0102A8 04:8298: D9 8C     .word _off000_8CD9_1A_05
; 1C con_music_1C
- D 0 - I - 0x0102AA 04:829A: 14        .byte $10 * $01 + $04   ; 
- D 0 - I - 0x0102AB 04:829B: 92 8D     .word _off000_8D92_1C_04
- D 0 - I - 0x0102AD 04:829D: 05        .byte $05   ; 
- D 0 - I - 0x0102AE 04:829E: A2 8D     .word _off000_8DA2_1C_05
; 1E con_music_1E
- D 0 - I - 0x0102B0 04:82A0: 14        .byte $10 * $01 + $04   ; 
- D 0 - I - 0x0102B1 04:82A1: 19 8A     .word _off000_8A19_1E_04
- D 0 - I - 0x0102B3 04:82A3: 05        .byte $05   ; 
- D 0 - I - 0x0102B4 04:82A4: 35 8A     .word _off000_8A35_1E_05
; 20 con_music_20
- D 0 - I - 0x0102B6 04:82A6: 14        .byte $10 * $01 + $04   ; 
- D 0 - I - 0x0102B7 04:82A7: CF 8B     .word _off000_8BCF_20_04
- D 0 - I - 0x0102B9 04:82A9: 05        .byte $05   ; 
- D 0 - I - 0x0102BA 04:82AA: F6 8B     .word _off000_8BF6_20_05
; 22 con_music_22
- D 0 - I - 0x0102BC 04:82AC: 14        .byte $10 * $01 + $04   ; 
- D 0 - I - 0x0102BD 04:82AD: 5F 8C     .word _off000_8C5F_22_04_disable
- D 0 - I - 0x0102BF 04:82AF: 05        .byte $05   ; 
- D 0 - I - 0x0102C0 04:82B0: 4D 8C     .word _off000_8C4D_22_05
; 24 con_music_24
- D 0 - I - 0x0102C2 04:82B2: 14        .byte $10 * $01 + $04   ; 
- D 0 - I - 0x0102C3 04:82B3: 0D 88     .word _off000_880D_24_04
- D 0 - I - 0x0102C5 04:82B5: 05        .byte $05   ; 
- D 0 - I - 0x0102C6 04:82B6: 2A 88     .word _off000_882A_24_05
; 26 con_music_26
- D 0 - I - 0x0102C8 04:82B8: 14        .byte $10 * $01 + $04   ; 
- D 0 - I - 0x0102C9 04:82B9: 84 87     .word _off000_8784_26_04
- D 0 - I - 0x0102CB 04:82BB: 05        .byte $05   ; 
- D 0 - I - 0x0102CC 04:82BC: AB 87     .word _off000_87AB_26_05
; 28 con_music_28
- D 0 - I - 0x0102CE 04:82BE: 14        .byte $10 * $01 + $04   ; 
- D 0 - I - 0x0102CF 04:82BF: B8 87     .word _off000_87B8_28_04
- D 0 - I - 0x0102D1 04:82C1: 05        .byte $05   ; 
- D 0 - I - 0x0102D2 04:82C2: CD 87     .word _off000_87CD_28_05
; 2A con_music_2A
- D 0 - I - 0x0102D4 04:82C4: 14        .byte $10 * $01 + $04   ; 
- D 0 - I - 0x0102D5 04:82C5: 89 8A     .word _off000_8A89_2A_04
- D 0 - I - 0x0102D7 04:82C7: 05        .byte $05   ; 
- D 0 - I - 0x0102D8 04:82C8: 99 8A     .word _off000_8A99_2A_05
; 2C con_music_2C
- D 0 - I - 0x0102DA 04:82CA: 14        .byte $10 * $01 + $04   ; 
- D 0 - I - 0x0102DB 04:82CB: 26 86     .word _off000_8626_2C_04
- D 0 - I - 0x0102DD 04:82CD: 05        .byte $05   ; 
- D 0 - I - 0x0102DE 04:82CE: 43 86     .word _off000_8643_2C_05
; 2E con_music_2E
- D 0 - I - 0x0102E0 04:82D0: 14        .byte $10 * $01 + $04   ; 
- D 0 - I - 0x0102E1 04:82D1: 1F 89     .word _off000_891F_2E_04_disable
- D 0 - I - 0x0102E3 04:82D3: 05        .byte $05   ; 
- D 0 - I - 0x0102E4 04:82D4: FF 88     .word _off000_88FF_2E_05
; 30 con_music_30
- D 0 - I - 0x0102E6 04:82D6: 14        .byte $10 * $01 + $04   ; 
- D 0 - I - 0x0102E7 04:82D7: DD 87     .word _off000_87DD_30_04
- D 0 - I - 0x0102E9 04:82D9: 05        .byte $05   ; 
- D 0 - I - 0x0102EA 04:82DA: F2 87     .word _off000_87F2_30_05
; 32 con_music_32
- - - - - - 0x0102EC 04:82DC: 14        .byte $10 * $01 + $04   ; 
- - - - - - 0x0102ED 04:82DD: 32 89     .word _off000_8932_32_04_disable
- - - - - - 0x0102EF 04:82DF: 05        .byte $05   ; 
- - - - - - 0x0102F0 04:82E0: 20 89     .word _off000_8920_32_05
; 34 con_music_34
- D 0 - I - 0x0102F2 04:82E2: 14        .byte $10 * $01 + $04   ; 
- D 0 - I - 0x0102F3 04:82E3: BF 88     .word _off000_88BF_34_04
- D 0 - I - 0x0102F5 04:82E5: 05        .byte $05   ; 
- D 0 - I - 0x0102F6 04:82E6: E0 88     .word _off000_88E0_34_05
; 36 con_music_36
- D 0 - I - 0x0102F8 04:82E8: 14        .byte $10 * $01 + $04   ; 
- D 0 - I - 0x0102F9 04:82E9: 3C 88     .word _off000_883C_36_04
- D 0 - I - 0x0102FB 04:82EB: 05        .byte $05   ; 
- D 0 - I - 0x0102FC 04:82EC: 64 88     .word _off000_8864_36_05
; 38 con_music_38
- D 0 - I - 0x0102FE 04:82EE: 14        .byte $10 * $01 + $04   ; 
- D 0 - I - 0x0102FF 04:82EF: 09 8D     .word _off000_8D09_38_04
- D 0 - I - 0x010301 04:82F1: 05        .byte $05   ; 
- D 0 - I - 0x010302 04:82F2: 22 8D     .word _off000_8D22_38_05_disable
; 3A con_music_3A
- D 0 - I - 0x010304 04:82F4: 14        .byte $10 * $01 + $04   ; 
- D 0 - I - 0x010305 04:82F5: 92 8C     .word _off000_8C92_3A_04
- D 0 - I - 0x010307 04:82F7: 05        .byte $05   ; 
- D 0 - I - 0x010308 04:82F8: A8 8C     .word _off000_8CA8_3A_05_disable
; 3C con_music_3C
- D 0 - I - 0x01030A 04:82FA: 14        .byte $10 * $01 + $04   ; 
- D 0 - I - 0x01030B 04:82FB: E6 8C     .word _off000_8CE6_3C_04
- D 0 - I - 0x01030D 04:82FD: 05        .byte $05   ; 
- D 0 - I - 0x01030E 04:82FE: FC 8C     .word _off000_8CFC_3C_05
; 3E con_music_3E
- D 0 - I - 0x010310 04:8300: 14        .byte $10 * $01 + $04   ; 
- D 0 - I - 0x010311 04:8301: 4C 89     .word _off000_894C_3E_04
- D 0 - I - 0x010313 04:8303: 05        .byte $05   ; 
- D 0 - I - 0x010314 04:8304: 85 89     .word _off000_8985_3E_05
; 40 con_music_40
- D 0 - I - 0x010316 04:8306: 14        .byte $10 * $01 + $04   ; 
- D 0 - I - 0x010317 04:8307: 7C 89     .word _off000_897C_40_04
- D 0 - I - 0x010319 04:8309: 05        .byte $05   ; 
- D 0 - I - 0x01031A 04:830A: 92 89     .word _off000_8992_40_05
; 42 con_music_42
- D 0 - I - 0x01031C 04:830C: 14        .byte $10 * $01 + $04   ; 
- D 0 - I - 0x01031D 04:830D: 0E 8C     .word _off000_8C0E_42_04
- D 0 - I - 0x01031F 04:830F: 05        .byte $05   ; 
- D 0 - I - 0x010320 04:8310: 3D 8C     .word _off000_8C3D_42_05
; 44 con_music_44
- D 0 - I - 0x010322 04:8312: 14        .byte $10 * $01 + $04   ; 
- D 0 - I - 0x010323 04:8313: 6C 86     .word _off000_866C_44_04
- D 0 - I - 0x010325 04:8315: 05        .byte $05   ; 
- D 0 - I - 0x010326 04:8316: 90 86     .word _off000_8690_44_05
; 46 con_music_46
- - - - - - 0x010328 04:8318: 14        .byte $10 * $01 + $04   ; 
- - - - - - 0x010329 04:8319: 87 86     .word _off000_8687_46_04
- - - - - - 0x01032B 04:831B: 05        .byte $05   ; 
- - - - - - 0x01032C 04:831C: 95 86     .word _off000_8695_46_05
; 48 con_music_48
- D 0 - I - 0x01032E 04:831E: 14        .byte $10 * $01 + $04   ; 
- D 0 - I - 0x01032F 04:831F: 9C 86     .word _off000_869C_48_04
- D 0 - I - 0x010331 04:8321: 05        .byte $05   ; 
- D 0 - I - 0x010332 04:8322: BB 86     .word _off000_86BB_48_05
; 4A con_music_4A
- D 0 - I - 0x010334 04:8324: 14        .byte $10 * $01 + $04   ; 
- D 0 - I - 0x010335 04:8325: 60 8C     .word _off000_8C60_4A_04
- D 0 - I - 0x010337 04:8327: 05        .byte $05   ; 
- D 0 - I - 0x010338 04:8328: 78 8C     .word _off000_8C78_4A_05
; 4C con_music_4C
- D 0 - I - 0x01033A 04:832A: 14        .byte $10 * $01 + $04   ; 
- D 0 - I - 0x01033B 04:832B: 29 87     .word _off000_8729_4C_04
- D 0 - I - 0x01033D 04:832D: 05        .byte $05   ; 
- D 0 - I - 0x01033E 04:832E: 5D 87     .word _off000_875D_4C_05_disable
; 4E con_music_4E
- D 0 - I - 0x010340 04:8330: 14        .byte $10 * $01 + $04   ; 
- D 0 - I - 0x010341 04:8331: 5E 87     .word _off000_875E_4E_04
- D 0 - I - 0x010343 04:8333: 05        .byte $05   ; 
- D 0 - I - 0x010344 04:8334: 75 87     .word _off000_8775_4E_05
; 50 con_music_50
- D 0 - I - 0x010346 04:8336: 24        .byte $10 * $02 + $04   ; 
- D 0 - I - 0x010347 04:8337: 42 8A     .word _off000_8A42_50_04
- D 0 - I - 0x010349 04:8339: 01        .byte $01   ; 
- D 0 - I - 0x01034A 04:833A: 4D 8A     .word _off000_8A4D_50_01
- D 0 - I - 0x01034C 04:833C: 05        .byte $05   ; 
- D 0 - I - 0x01034D 04:833D: 79 8A     .word _off000_8A79_50_05
; 53 con_music_53
- D 0 - I - 0x01034F 04:833F: 14        .byte $10 * $01 + $04   ; 
- D 0 - I - 0x010350 04:8340: 2D 8B     .word _off000_8B2D_53_04_disable
- D 0 - I - 0x010352 04:8342: 05        .byte $05   ; 
- D 0 - I - 0x010353 04:8343: 1D 8B     .word _off000_8B1D_53_05
; 55 con_music_55
- D 0 - I - 0x010355 04:8345: 24        .byte $10 * $02 + $04   ; 
- D 0 - I - 0x010356 04:8346: 23 8D     .word _off000_8D23_55_04
- D 0 - I - 0x010358 04:8348: 01        .byte $01   ; 
- D 0 - I - 0x010359 04:8349: 3D 8D     .word _off000_8D3D_55_01
- D 0 - I - 0x01035B 04:834B: 05        .byte $05   ; 
- D 0 - I - 0x01035C 04:834C: 66 8D     .word _off000_8D66_55_05
; 58 con_music_58
- D 0 - I - 0x01035E 04:834E: 05        .byte $10 * $00 + $05   ; 
- D 0 - I - 0x01035F 04:834F: 4F 8B     .word _off000_8B4F_58_05
; 59con_music_ 5
- D 0 - I - 0x010361 04:8351: 14        .byte $10 * $01 + $04   ; 
- D 0 - I - 0x010362 04:8352: B8 88     .word _off000_88B8_59_04
- D 0 - I - 0x010364 04:8354: 05        .byte $05   ; 
- D 0 - I - 0x010365 04:8355: 95 88     .word _off000_8895_59_05
; 5B con_music_5B
- D 0 - I - 0x010367 04:8357: 14        .byte $10 * $01 + $04   ; 
- D 0 - I - 0x010368 04:8358: AE 8B     .word _off000_8BAE_5B_04
- D 0 - I - 0x01036A 04:835A: 05        .byte $05   ; 
- D 0 - I - 0x01036B 04:835B: BF 8B     .word _off000_8BBF_5B_05
; 5D con_music_5D
- D 0 - I - 0x01036D 04:835D: 14        .byte $10 * $01 + $04   ; 
- D 0 - I - 0x01036E 04:835E: 98 89     .word _off000_8998_5D_04
- D 0 - I - 0x010370 04:8360: 05        .byte $05   ; 
- D 0 - I - 0x010371 04:8361: C1 89     .word _off000_89C1_5D_05
; 5F con_music_5F
- D 0 - I - 0x010373 04:8363: 14        .byte $10 * $01 + $04   ; 
- D 0 - I - 0x010374 04:8364: 7C 8B     .word _off000_8B7C_5F_04
- D 0 - I - 0x010376 04:8366: 05        .byte $05   ; 
- D 0 - I - 0x010377 04:8367: 92 8B     .word _off000_8B92_5F_05
; 61 con_music_61
- D 0 - I - 0x010379 04:8369: 04        .byte $10 * $00 + $04   ; 
- D 0 - I - 0x01037A 04:836A: A8 8A     .word _off000_8AA8_61_04
; 62 con_music_62
- D 0 - I - 0x01037C 04:836C: 04        .byte $10 * $00 + $04   ; 
- D 0 - I - 0x01037D 04:836D: B8 8A     .word _off000_8AB8_62_04
; 63 con_music_63
- D 0 - I - 0x01037F 04:836F: 04        .byte $10 * $00 + $04   ; 
- D 0 - I - 0x010380 04:8370: 33 89     .word _off000_8933_63_04
; 64 con_music_64
- D 0 - I - 0x010382 04:8372: 24        .byte $10 * $02 + $04   ; 
- D 0 - I - 0x010383 04:8373: C3 8A     .word _off000_8AC3_64_04
- D 0 - I - 0x010385 04:8375: 01        .byte $01   ; 
- D 0 - I - 0x010386 04:8376: CC 8A     .word _off000_8ACC_64_01
- D 0 - I - 0x010388 04:8378: 05        .byte $05   ; 
- D 0 - I - 0x010389 04:8379: D7 8A     .word _off000_8AD7_64_05
; 67 con_music_67
- D 0 - I - 0x01038B 04:837B: 30        .byte $10 * $03 + $00   ; 
- D 0 - I - 0x01038C 04:837C: BA A9     .word _off000_A9BA_67_00
- D 0 - I - 0x01038E 04:837E: 01        .byte $01   ; 
- D 0 - I - 0x01038F 04:837F: 97 A9     .word _off000_A997_67_01
- D 0 - I - 0x010391 04:8381: 02        .byte $02   ; 
- D 0 - I - 0x010392 04:8382: E3 A9     .word _off000_A9E3_67_02
- D 0 - I - 0x010394 04:8384: 03        .byte $03   ; 
- D 0 - I - 0x010395 04:8385: FB A9     .word _off000_A9FB_67_03
; 6B con_music_6B
- D 0 - I - 0x010397 04:8387: 40        .byte $10 * $04 + $00   ; 
- D 0 - I - 0x010398 04:8388: 40 8E     .word _off000_8E40_6B_00
- D 0 - I - 0x01039A 04:838A: 01        .byte $01   ; 
- D 0 - I - 0x01039B 04:838B: AA 8D     .word _off000_8DAA_6B_01
- D 0 - I - 0x01039D 04:838D: 02        .byte $02   ; 
- D 0 - I - 0x01039E 04:838E: D8 8E     .word _off000_8ED8_6B_02
- D 0 - I - 0x0103A0 04:8390: 03        .byte $03   ; 
- D 0 - I - 0x0103A1 04:8391: 3F 8F     .word _off000_8F3F_6B_03
- D 0 - I - 0x0103A3 04:8393: 05        .byte $05   ; 
- D 0 - I - 0x0103A4 04:8394: A0 8F     .word _off000_8FA0_6B_05
; 70 con_music_70
- D 0 - I - 0x0103A6 04:8396: 30        .byte $10 * $03 + $00   ; 
- D 0 - I - 0x0103A7 04:8397: 2A 90     .word _off000_902A_70_00
- D 0 - I - 0x0103A9 04:8399: 01        .byte $01   ; 
- D 0 - I - 0x0103AA 04:839A: A7 8F     .word _off000_8FA7_70_01
- D 0 - I - 0x0103AC 04:839C: 02        .byte $02   ; 
- D 0 - I - 0x0103AD 04:839D: 9A 90     .word _off000_909A_70_02
- D 0 - I - 0x0103AF 04:839F: 03        .byte $03   ; 
- D 0 - I - 0x0103B0 04:83A0: D9 90     .word _off000_90D9_70_03
; 74 con_music_74
- D 0 - I - 0x0103B2 04:83A2: 30        .byte $10 * $03 + $00   ; 
- D 0 - I - 0x0103B3 04:83A3: 64 92     .word _off000_9264_74_00
- D 0 - I - 0x0103B5 04:83A5: 01        .byte $01   ; 
- D 0 - I - 0x0103B6 04:83A6: 26 91     .word _off000_9126_74_01
- D 0 - I - 0x0103B8 04:83A8: 02        .byte $02   ; 
- D 0 - I - 0x0103B9 04:83A9: 93 93     .word _off000_9393_74_02
- D 0 - I - 0x0103BB 04:83AB: 03        .byte $03   ; 
- D 0 - I - 0x0103BC 04:83AC: 5E 94     .word _off000_945E_74_03
; 78 con_music_78
- D 0 - I - 0x0103BE 04:83AE: 30        .byte $10 * $03 + $00   ; 
- D 0 - I - 0x0103BF 04:83AF: 67 92     .word _off000_9267_78_00
- D 0 - I - 0x0103C1 04:83B1: 01        .byte $01   ; 
- D 0 - I - 0x0103C2 04:83B2: 29 91     .word _off000_9129_78_01
- D 0 - I - 0x0103C4 04:83B4: 02        .byte $02   ; 
- D 0 - I - 0x0103C5 04:83B5: A1 93     .word _off000_93A1_78_02
- D 0 - I - 0x0103C7 04:83B7: 03        .byte $03   ; 
- D 0 - I - 0x0103C8 04:83B8: 6A 94     .word _off000_946A_78_03
; 7C con_music_7C
- D 0 - I - 0x0103CA 04:83BA: 30        .byte $10 * $03 + $00   ; 
- D 0 - I - 0x0103CB 04:83BB: 10 B6     .word _off000_B610_7C_00
- D 0 - I - 0x0103CD 04:83BD: 01        .byte $01   ; 
- D 0 - I - 0x0103CE 04:83BE: 00 B4     .word _off000_B400_7C_01
- D 0 - I - 0x0103D0 04:83C0: 02        .byte $02   ; 
- D 0 - I - 0x0103D1 04:83C1: 56 B8     .word _off000_B856_7C_02
- D 0 - I - 0x0103D3 04:83C3: 03        .byte $03   ; 
- D 0 - I - 0x0103D4 04:83C4: F3 B8     .word _off000_B8F3_7C_03
; 80 con_music_80
- D 0 - I - 0x0103D6 04:83C6: 30        .byte $10 * $03 + $00   ; 
- D 0 - I - 0x0103D7 04:83C7: C2 97     .word _off000_97C2_80_00
- D 0 - I - 0x0103D9 04:83C9: 01        .byte $01   ; 
- D 0 - I - 0x0103DA 04:83CA: 65 96     .word _off000_9665_80_01
- D 0 - I - 0x0103DC 04:83CC: 02        .byte $02   ; 
- D 0 - I - 0x0103DD 04:83CD: 6D 99     .word _off000_996D_80_02
- D 0 - I - 0x0103DF 04:83CF: 03        .byte $03   ; 
- D 0 - I - 0x0103E0 04:83D0: 26 9A     .word _off000_9A26_80_03
; 84 con_music_84
- D 0 - I - 0x0103E2 04:83D2: 30        .byte $10 * $03 + $00   ; 
- D 0 - I - 0x0103E3 04:83D3: 4E 9C     .word _off000_9C4E_84_00
- D 0 - I - 0x0103E5 04:83D5: 01        .byte $01   ; 
- D 0 - I - 0x0103E6 04:83D6: 16 9B     .word _off000_9B16_84_01
- D 0 - I - 0x0103E8 04:83D8: 02        .byte $02   ; 
- D 0 - I - 0x0103E9 04:83D9: 6E 9D     .word _off000_9D6E_84_02
- D 0 - I - 0x0103EB 04:83DB: 03        .byte $03   ; 
- D 0 - I - 0x0103EC 04:83DC: 49 9E     .word _off000_9E49_84_03
; 88 con_music_88
- D 0 - I - 0x0103EE 04:83DE: 30        .byte $10 * $03 + $00   ; 
- D 0 - I - 0x0103EF 04:83DF: D4 9F     .word _off000_9FD4_88_00
- D 0 - I - 0x0103F1 04:83E1: 01        .byte $01   ; 
- D 0 - I - 0x0103F2 04:83E2: B3 9F     .word _off000_9FB3_88_01
- D 0 - I - 0x0103F4 04:83E4: 02        .byte $02   ; 
- D 0 - I - 0x0103F5 04:83E5: F7 9F     .word _off000_9FF7_88_02
- D 0 - I - 0x0103F7 04:83E7: 03        .byte $03   ; 
- D 0 - I - 0x0103F8 04:83E8: 18 A0     .word _off000_A018_88_03
; 8C con_music_8C
- D 0 - I - 0x0103FA 04:83EA: 30        .byte $10 * $03 + $00   ; 
- D 0 - I - 0x0103FB 04:83EB: D7 9F     .word _off000_9FD7_8C_00
- D 0 - I - 0x0103FD 04:83ED: 01        .byte $01   ; 
- D 0 - I - 0x0103FE 04:83EE: B6 9F     .word _off000_9FB6_8C_01
- D 0 - I - 0x010400 04:83F0: 02        .byte $02   ; 
- D 0 - I - 0x010401 04:83F1: FA 9F     .word _off000_9FFA_8C_02
- D 0 - I - 0x010403 04:83F3: 03        .byte $03   ; 
- D 0 - I - 0x010404 04:83F4: 1B A0     .word _off000_A01B_8C_03
; 90 con_music_90
- D 0 - I - 0x010406 04:83F6: 30        .byte $10 * $03 + $00   ; 
- D 0 - I - 0x010407 04:83F7: B5 A4     .word _off000_A4B5_90_00
- D 0 - I - 0x010409 04:83F9: 01        .byte $01   ; 
- D 0 - I - 0x01040A 04:83FA: AF A3     .word _off000_A3AF_90_01
- D 0 - I - 0x01040C 04:83FC: 02        .byte $02   ; 
- D 0 - I - 0x01040D 04:83FD: 9A A5     .word _off000_A59A_90_02
- D 0 - I - 0x01040F 04:83FF: 03        .byte $03   ; 
- D 0 - I - 0x010410 04:8400: E4 A5     .word _off000_A5E4_90_03
; 94 con_music_94
- - - - - - 0x010412 04:8402: 30        .byte $10 * $03 + $00   ; 
- - - - - - 0x010413 04:8403: C5 A4     .word _off000_A4C5_94_00
- - - - - - 0x010415 04:8405: 01        .byte $01   ; 
- - - - - - 0x010416 04:8406: B7 A3     .word _off000_A3B7_94_01
- - - - - - 0x010418 04:8408: 02        .byte $02   ; 
- - - - - - 0x010419 04:8409: A6 A5     .word _off000_A5A6_94_02
- - - - - - 0x01041B 04:840B: 03        .byte $03   ; 
- - - - - - 0x01041C 04:840C: EB A5     .word _off000_A5EB_94_03
; 98 con_music_98
- D 0 - I - 0x01041E 04:840E: 30        .byte $10 * $03 + $00   ; 
- D 0 - I - 0x01041F 04:840F: 2A A7     .word _off000_A72A_98_00_disable
- D 0 - I - 0x010421 04:8411: 01        .byte $01   ; 
- D 0 - I - 0x010422 04:8412: 25 A6     .word _off000_A625_98_01
- D 0 - I - 0x010424 04:8414: 02        .byte $02   ; 
- D 0 - I - 0x010425 04:8415: 2B A7     .word _off000_A72B_98_02
- D 0 - I - 0x010427 04:8417: 03        .byte $03   ; 
- D 0 - I - 0x010428 04:8418: 97 A7     .word _off000_A797_98_03
; 9C con_music_9C
- D 0 - I - 0x01042A 04:841A: 30        .byte $10 * $03 + $00   ; 
- D 0 - I - 0x01042B 04:841B: EC A7     .word _off000_A7EC_9C_00
- D 0 - I - 0x01042D 04:841D: 01        .byte $01   ; 
- D 0 - I - 0x01042E 04:841E: 28 A8     .word _off000_A828_9C_01
- D 0 - I - 0x010430 04:8420: 02        .byte $02   ; 
- D 0 - I - 0x010431 04:8421: 74 A8     .word _off000_A874_9C_02
- D 0 - I - 0x010433 04:8423: 03        .byte $03   ; 
- D 0 - I - 0x010434 04:8424: 94 A8     .word _off000_A894_9C_03
; A0 con_music_A0
- D 0 - I - 0x010436 04:8426: 30        .byte $10 * $03 + $00   ; 
- D 0 - I - 0x010437 04:8427: C6 A8     .word _off000_A8C6_A0_00
- D 0 - I - 0x010439 04:8429: 01        .byte $01   ; 
- D 0 - I - 0x01043A 04:842A: B8 A8     .word _off000_A8B8_A0_01
- D 0 - I - 0x01043C 04:842C: 02        .byte $02   ; 
- D 0 - I - 0x01043D 04:842D: D4 A8     .word _off000_A8D4_A0_02
- D 0 - I - 0x01043F 04:842F: 03        .byte $03   ; 
- D 0 - I - 0x010440 04:8430: E2 A8     .word _off000_A8E2_A0_03
; A4 con_music_A4
- D 0 - I - 0x010442 04:8432: 30        .byte $10 * $03 + $00   ; 
- D 0 - I - 0x010443 04:8433: 00        .word _off000_0x01CF10_A4_00
- D 0 - I - 0x010445 04:8435: 01        .byte $01   ; 
- D 0 - I - 0x010446 04:8436: 4C CF     .word _off000_0x01CF5C_A4_01
- D 0 - I - 0x010448 04:8438: 02        .byte $02   ; 
- D 0 - I - 0x010449 04:8439: 9D CF     .word _off000_0x01CFAD_A4_02
- D 0 - I - 0x01044B 04:843B: 03        .byte $03   ; 
- D 0 - I - 0x01044C 04:843C: CF CF     .word _off000_0x01CFDF_A4_03
; A8 con_music_A8
- D 0 - I - 0x01044E 04:843E: 30        .byte $10 * $03 + $00   ; 
- D 0 - I - 0x01044F 04:843F: 06 BC     .word _off000_BC06_A8_00
- D 0 - I - 0x010451 04:8441: 01        .byte $01   ; 
- D 0 - I - 0x010452 04:8442: D3 B9     .word _off000_B9D3_A8_01
- D 0 - I - 0x010454 04:8444: 02        .byte $02   ; 
- D 0 - I - 0x010455 04:8445: 83 BE     .word _off000_BE83_A8_02
- D 0 - I - 0x010457 04:8447: 03        .byte $03   ; 
- D 0 - I - 0x010458 04:8448: 2B BF     .word _off000_BF2B_A8_03



loc_844A:
C D 0 - - - 0x01045A 04:844A: B1 E0     LDA (ram_00E0_se_t01_music_data),Y
C - - - - - 0x01045C 04:844C: F0 27     BEQ bra_8475
C - - - - - 0x01045E 04:844E: C9 E6     CMP #$E6
C - - - - - 0x010460 04:8450: 90 12     BCC bra_8464
; E6-FF
C - - - - - 0x010462 04:8452: C9 FB     CMP #$FB
C - - - - - 0x010464 04:8454: 90 06     BCC bra_845C
; FB-FF
C - - - - - 0x010466 04:8456: 20 01 80  JSR sub_8001_music_control_bytes_E0_FE
C - - - - - 0x010469 04:8459: 4C 71 84  JMP loc_8471_read_next_byte
bra_845C:
; E6-FA
C - - - - - 0x01046C 04:845C: E0 05     CPX #$05
C - - - - - 0x01046E 04:845E: F0 04     BEQ bra_8464
C - - - - - 0x010470 04:8460: C9 F0     CMP #$F0
C - - - - - 0x010472 04:8462: 90 0A     BCC bra_846E_E6_EF
bra_8464:
C - - - - - 0x010474 04:8464: C9 10     CMP #$10
C - - - - - 0x010476 04:8466: B0 0D     BCS bra_8475
; 00-0F
C - - - - - 0x010478 04:8468: 20 1A 85  JSR sub_851A
C - - - - - 0x01047B 04:846B: 4C 71 84  JMP loc_8471_read_next_byte
bra_846E_E6_EF:
C - - - - - 0x01047E 04:846E: 20 56 80  JSR sub_8056_sfx_control_bytes_E8_EE
loc_8471_read_next_byte:
C D 0 - - - 0x010481 04:8471: C8        INY
C - - - - - 0x010482 04:8472: 4C 8F AA  JMP loc_AA8F_read_next_byte
bra_8475:
C - - - - - 0x010485 04:8475: E0 05     CPX #$05
C - - - - - 0x010487 04:8477: D0 05     BNE bra_847E
C - - - - - 0x010489 04:8479: C9 10     CMP #$10
C - - - - - 0x01048B 04:847B: D0 01     BNE bra_847E
C - - - - - 0x01048D 04:847D: C8        INY
bra_847E:
C - - - - - 0x01048E 04:847E: BD 4C 05  LDA ram_054C_se,X
C - - - - - 0x010491 04:8481: 9D 40 05  STA ram_0540_se,X
C - - - - - 0x010494 04:8484: B1 E0     LDA (ram_00E0_se_t01_music_data),Y
; / 10
C - - - - - 0x010496 04:8486: 4A        LSR
C - - - - - 0x010497 04:8487: 4A        LSR
C - - - - - 0x010498 04:8488: 4A        LSR
C - - - - - 0x010499 04:8489: 4A        LSR
C - - - - - 0x01049A 04:848A: E0 05     CPX #$05
C - - - - - 0x01049C 04:848C: D0 03     BNE bra_8491
C - - - - - 0x01049E 04:848E: 4C FE 84  JMP loc_84FE
bra_8491:
C - - - - - 0x0104A1 04:8491: 85 E2     STA ram_00E2_se_t09
C - - - - - 0x0104A3 04:8493: BD AD 05  LDA ram_05AD_se,X
C - - - - - 0x0104A6 04:8496: C9 88     CMP #$88
C - - - - - 0x0104A8 04:8498: D0 02     BNE bra_849C
C - - - - - 0x0104AA 04:849A: A9 7F     LDA #$7F
bra_849C:
C - - - - - 0x0104AC 04:849C: 20 0F 85  JSR sub_850F
C - - - - - 0x0104AF 04:849F: BD A3 05  LDA ram_05A3_se,X
C - - - - - 0x0104B2 04:84A2: 29 10     AND #$10
C - - - - - 0x0104B4 04:84A4: D0 06     BNE bra_84AC
- - - - - - 0x0104B6 04:84A6: BD A3 05  LDA ram_05A3_se,X
- - - - - - 0x0104B9 04:84A9: 4C B9 84  JMP loc_84B9
bra_84AC:
C - - - - - 0x0104BC 04:84AC: A5 E2     LDA ram_00E2_se_t09
C - - - - - 0x0104BE 04:84AE: 38        SEC
C - - - - - 0x0104BF 04:84AF: FD A8 05  SBC ram_05A8_se,X
C - - - - - 0x0104C2 04:84B2: B0 02     BCS bra_84B6
- - - - - - 0x0104C4 04:84B4: A9 00     LDA #$00
bra_84B6:
C - - - - - 0x0104C6 04:84B6: 1D A3 05  ORA ram_05A3_se,X
loc_84B9:
C - - - - - 0x0104C9 04:84B9: 20 02 AF  JSR sub_AF02
C - - - - - 0x0104CC 04:84BC: BD 5E 05  LDA ram_055E_se,X
C - - - - - 0x0104CF 04:84BF: 29 04     AND #$04
C - - - - - 0x0104D1 04:84C1: F0 11     BEQ bra_84D4
C - - - - - 0x0104D3 04:84C3: B1 E0     LDA (ram_00E0_se_t01_music_data),Y
C - - - - - 0x0104D5 04:84C5: 29 0F     AND #$0F
C - - - - - 0x0104D7 04:84C7: F0 32     BEQ bra_84FB
C - - - - - 0x0104D9 04:84C9: BD 94 05  LDA ram_0594_se,X
C - - - - - 0x0104DC 04:84CC: 85 E9     STA ram_00E9_se_t02
C - - - - - 0x0104DE 04:84CE: BD 99 05  LDA ram_0599_se,X
C - - - - - 0x0104E1 04:84D1: 4C EA 84  JMP loc_84EA
bra_84D4:
C - - - - - 0x0104E4 04:84D4: B1 E0     LDA (ram_00E0_se_t01_music_data),Y
C - - - - - 0x0104E6 04:84D6: 29 0F     AND #$0F
C - - - - - 0x0104E8 04:84D8: 85 E9     STA ram_00E9_se_t02
C - - - - - 0x0104EA 04:84DA: B1 E0     LDA (ram_00E0_se_t01_music_data),Y
C - - - - - 0x0104EC 04:84DC: D0 09     BNE bra_84E7
C - - - - - 0x0104EE 04:84DE: A9 7F     LDA #$7F
C - - - - - 0x0104F0 04:84E0: 20 0F 85  JSR sub_850F
C - - - - - 0x0104F3 04:84E3: A9 00     LDA #$00
C - - - - - 0x0104F5 04:84E5: F0 03     BEQ bra_84EA    ; jmp
bra_84E7:
C - - - - - 0x0104F7 04:84E7: C8        INY
C - - - - - 0x0104F8 04:84E8: B1 E0     LDA (ram_00E0_se_t01_music_data),Y
bra_84EA:
loc_84EA:
C D 0 - - - 0x0104FA 04:84EA: 85 E8     STA ram_00E8_se_t02
C - - - - - 0x0104FC 04:84EC: 20 14 B1  JSR sub_B114
C - - - - - 0x0104FF 04:84EF: BD AD 05  LDA ram_05AD_se,X
C - - - - - 0x010502 04:84F2: C9 88     CMP #$88
C - - - - - 0x010504 04:84F4: D0 05     BNE bra_84FB
C - - - - - 0x010506 04:84F6: A9 7F     LDA #$7F
C - - - - - 0x010508 04:84F8: 9D AD 05  STA ram_05AD_se,X
bra_84FB:
C - - - - - 0x01050B 04:84FB: 4C 9E AC  JMP loc_AC9E
loc_84FE:
C D 0 - - - 0x01050E 04:84FE: 09 30     ORA #$30
C - - - - - 0x010510 04:8500: 8D 0C 40  STA $400C
C - - - - - 0x010513 04:8503: B1 E0     LDA (ram_00E0_se_t01_music_data),Y
C - - - - - 0x010515 04:8505: 29 0F     AND #$0F
C - - - - - 0x010517 04:8507: 85 E8     STA ram_00E8_se_t02
C - - - - - 0x010519 04:8509: 20 35 B1  JSR sub_B135
C - - - - - 0x01051C 04:850C: 4C 9E AC  JMP loc_AC9E



sub_850F:
C - - - - - 0x01051F 04:850F: 20 8E B1  JSR sub_B18E
C - - - - - 0x010522 04:8512: B0 03     BCS bra_8517
C - - - - - 0x010524 04:8514: 9D 01 40  STA $4001,X ; 4001 4005
bra_8517:
C - - - - - 0x010527 04:8517: A6 EC     LDX ram_00EC_se_channel_index
bra_8519_RTS:
C - - - - - 0x010529 04:8519: 60        RTS



sub_851A:
C - - - - - 0x01052A 04:851A: 9D 4C 05  STA ram_054C_se,X
C - - - - - 0x01052D 04:851D: E0 05     CPX #$05
C - - - - - 0x01052F 04:851F: F0 F8     BEQ bra_8519_RTS
C - - - - - 0x010531 04:8521: BD 5E 05  LDA ram_055E_se,X
C - - - - - 0x010534 04:8524: 29 FB     AND #$FB
C - - - - - 0x010536 04:8526: 9D 5E 05  STA ram_055E_se,X
C - - - - - 0x010539 04:8529: C8        INY
C - - - - - 0x01053A 04:852A: B1 E0     LDA (ram_00E0_se_t01_music_data),Y
C - - - - - 0x01053C 04:852C: 9D A3 05  STA ram_05A3_se,X
C - - - - - 0x01053F 04:852F: C8        INY
C - - - - - 0x010540 04:8530: B1 E0     LDA (ram_00E0_se_t01_music_data),Y
ofs_011_8532_EA:
; con_se_cb_EA
C - - - - - 0x010542 04:8532: C9 88     CMP #$88
C - - - - - 0x010544 04:8534: D0 07     BNE bra_853D
C - - - - - 0x010546 04:8536: 1E AD 05  ASL ram_05AD_se,X
C - - - - - 0x010549 04:8539: B0 02     BCS bra_853D
C - - - - - 0x01054B 04:853B: A9 7F     LDA #$7F
bra_853D:
C - - - - - 0x01054D 04:853D: 9D AD 05  STA ram_05AD_se,X
C - - - - - 0x010550 04:8540: 60        RTS



loc_8541:
C D 0 - - - 0x010551 04:8541: 20 A0 B1  JSR sub_B1A0
C - - - - - 0x010554 04:8544: B1 E0     LDA (ram_00E0_se_t01_music_data),Y
; / 10
C - - - - - 0x010556 04:8546: 4A        LSR
C - - - - - 0x010557 04:8547: 4A        LSR
C - - - - - 0x010558 04:8548: 4A        LSR
C - - - - - 0x010559 04:8549: 4A        LSR
C - - - - - 0x01055A 04:854A: AA        TAX
C - - - - - 0x01055B 04:854B: CA        DEX
C - - - - - 0x01055C 04:854C: BD 59 85  LDA tbl_8559,X
C - - - - - 0x01055F 04:854F: A6 EC     LDX ram_00EC_se_channel_index
C - - - - - 0x010561 04:8551: 85 EE     STA ram_00EE_se
C - - - - - 0x010563 04:8553: 20 86 B2  JSR sub_B286
C - - - - - 0x010566 04:8556: 4C 9E AC  JMP loc_AC9E



tbl_8559:
- D 0 - - - 0x010569 04:8559: 01        .byte $01   ; 10
- D 0 - - - 0x01056A 04:855A: 03        .byte $03   ; 20
- D 0 - - - 0x01056B 04:855B: 02        .byte $02   ; 30
- D 0 - - - 0x01056C 04:855C: AD        .byte $AD   ; 40
- D 0 - - - 0x01056D 04:855D: AC        .byte $AC   ; 50
- D 0 - - - 0x01056E 04:855E: AF        .byte $AF   ; 60
- D 0 - - - 0x01056F 04:855F: B0        .byte $B0   ; 70
- D 0 - - - 0x010570 04:8560: B1        .byte $B1   ; 80
- D 0 - - - 0x010571 04:8561: B2        .byte $B2   ; 90
- - - - - - 0x010572 04:8562: AE        .byte $AE   ; A0
- D 0 - - - 0x010573 04:8563: AE        .byte $AE   ; B0
- D 0 - - - 0x010574 04:8564: B3        .byte $B3   ; C0



sub_8565:
C - - - - - 0x010575 04:8565: 38        SEC
C - - - - - 0x010576 04:8566: E9 AC     SBC #$AC
; * 04
C - - - - - 0x010578 04:8568: 0A        ASL
C - - - - - 0x010579 04:8569: 0A        ASL
C - - - - - 0x01057A 04:856A: AA        TAX
; bzk optimize, useless LDA
C - - - - - 0x01057B 04:856B: BD 02 C0  LDA tbl_0x01C011_for_4010_4013 + $01,X
C - - - - - 0x01057E 04:856E: A9 0F     LDA #$0F
C - - - - - 0x010580 04:8570: 8D 15 40  STA $4015
C - - - - - 0x010583 04:8573: BD 01 C0  LDA tbl_0x01C011_for_4010_4013,X
C - - - - - 0x010586 04:8576: 8D 10 40  STA $4010
C - - - - - 0x010589 04:8579: BD 02 C0  LDA tbl_0x01C011_for_4010_4013 + $01,X
C - - - - - 0x01058C 04:857C: 8D 11 40  STA $4011
C - - - - - 0x01058F 04:857F: BD 03 C0  LDA tbl_0x01C011_for_4010_4013 + $02,X
C - - - - - 0x010592 04:8582: 8D 12 40  STA $4012
C - - - - - 0x010595 04:8585: BD 04 C0  LDA tbl_0x01C011_for_4010_4013 + $03,X
C - - - - - 0x010598 04:8588: 8D 13 40  STA $4013
C - - - - - 0x01059B 04:858B: A9 1F     LDA #$1F
C - - - - - 0x01059D 04:858D: 8D 15 40  STA $4015
C - - - - - 0x0105A0 04:8590: A2 03     LDX #$03
C - - - - - 0x0105A2 04:8592: 60        RTS



tbl_8593:
- D 0 - - - 0x0105A3 04:8593: 95 85     .word tbl_8595



tbl_8595:
- D 0 - I - 0x0105A5 04:8595: 16        .byte $16   ; 
- D 0 - I - 0x0105A6 04:8596: 17        .byte $17   ; 
- D 0 - I - 0x0105A7 04:8597: 16        .byte $16   ; 
- D 0 - I - 0x0105A8 04:8598: FF        .byte $FF   ; 



tbl_8599:
- D 0 - - - 0x0105A9 04:8599: A9 85     .word off_85A9_50
- D 0 - - - 0x0105AB 04:859B: B4 85     .word off_85B4_51
- D 0 - - - 0x0105AD 04:859D: B5 85     .word off_85B5_52
- D 0 - - - 0x0105AF 04:859F: B8 85     .word off_85B8_53
- D 0 - - - 0x0105B1 04:85A1: BD 85     .word off_85BD_54
- D 0 - - - 0x0105B3 04:85A3: C2 85     .word off_85C2_55
- D 0 - - - 0x0105B5 04:85A5: C7 85     .word off_85C7_56
- D 0 - - - 0x0105B7 04:85A7: CE 85     .word off_85CE_57



off_85A9_50:
- D 0 - I - 0x0105B9 04:85A9: FB        .byte $FB   ; 
- D 0 - I - 0x0105BA 04:85AA: 11        .byte $11   ; 
- D 0 - I - 0x0105BB 04:85AB: 12        .byte $12   ; 
- D 0 - I - 0x0105BC 04:85AC: 11        .byte $11   ; 
- D 0 - I - 0x0105BD 04:85AD: 20        .byte $20   ; 
- D 0 - I - 0x0105BE 04:85AE: 1F        .byte $1F   ; 
- D 0 - I - 0x0105BF 04:85AF: 1E        .byte $1E   ; 
- D 0 - I - 0x0105C0 04:85B0: 1F        .byte $1F   ; 
- D 0 - I - 0x0105C1 04:85B1: 20        .byte $20   ; 
- D 0 - I - 0x0105C2 04:85B2: FE        .byte $FE   ; 
- D 0 - I - 0x0105C3 04:85B3: FF        .byte $FF   ; 



off_85B4_51:
- D 0 - I - 0x0105C4 04:85B4: 1D        .byte $1D   ; 
off_85B5_52:
- D 0 - I - 0x0105C5 04:85B5: 1F        .byte $1F   ; 
- D 0 - I - 0x0105C6 04:85B6: 10        .byte $10   ; 
- D 0 - I - 0x0105C7 04:85B7: FF        .byte $FF   ; 



off_85B8_53:
- D 0 - I - 0x0105C8 04:85B8: 1F        .byte $1F   ; 
- D 0 - I - 0x0105C9 04:85B9: 30        .byte $30   ; 
- D 0 - I - 0x0105CA 04:85BA: 13        .byte $13   ; 
- - - - - - 0x0105CB 04:85BB: 14        .byte $14   ; 
- - - - - - 0x0105CC 04:85BC: FF        .byte $FF   ; 



off_85BD_54:
- D 0 - I - 0x0105CD 04:85BD: FB        .byte $FB   ; 
- D 0 - I - 0x0105CE 04:85BE: 81        .byte $81   ; 
- D 0 - I - 0x0105CF 04:85BF: 82        .byte $82   ; 
- - - - - - 0x0105D0 04:85C0: FE        .byte $FE   ; 
- - - - - - 0x0105D1 04:85C1: FF        .byte $FF   ; 



off_85C2_55:
- D 0 - I - 0x0105D2 04:85C2: FB        .byte $FB   ; 
- D 0 - I - 0x0105D3 04:85C3: 21        .byte $21   ; 
- D 0 - I - 0x0105D4 04:85C4: 2F        .byte $2F   ; 
- D 0 - I - 0x0105D5 04:85C5: FE        .byte $FE   ; 
- D 0 - I - 0x0105D6 04:85C6: FF        .byte $FF   ; 



off_85C7_56:
- D 0 - I - 0x0105D7 04:85C7: FB        .byte $FB   ; 
- D 0 - I - 0x0105D8 04:85C8: 21        .byte $21   ; 
- D 0 - I - 0x0105D9 04:85C9: 20        .byte $20   ; 
- D 0 - I - 0x0105DA 04:85CA: 2F        .byte $2F   ; 
- D 0 - I - 0x0105DB 04:85CB: 20        .byte $20   ; 
- D 0 - I - 0x0105DC 04:85CC: FE        .byte $FE   ; 
- D 0 - I - 0x0105DD 04:85CD: FF        .byte $FF   ; 



off_85CE_57:
- D 0 - I - 0x0105DE 04:85CE: FB        .byte $FB   ; 
- D 0 - I - 0x0105DF 04:85CF: 11        .byte $11   ; 
- D 0 - I - 0x0105E0 04:85D0: 12        .byte $12   ; 
- D 0 - I - 0x0105E1 04:85D1: 11        .byte $11   ; 
- D 0 - I - 0x0105E2 04:85D2: 10        .byte $10   ; 
- D 0 - I - 0x0105E3 04:85D3: 1F        .byte $1F   ; 
- D 0 - I - 0x0105E4 04:85D4: 1E        .byte $1E   ; 
- D 0 - I - 0x0105E5 04:85D5: 1F        .byte $1F   ; 
- D 0 - I - 0x0105E6 04:85D6: 10        .byte $10   ; 
- D 0 - I - 0x0105E7 04:85D7: FE        .byte $FE   ; 
- D 0 - I - 0x0105E8 04:85D8: FF        .byte $FF   ; 



_off000_85D9_01_05:
- D 0 - I - 0x0105E9 04:85D9: 01        .byte $01   ; 
- D 0 - I - 0x0105EA 04:85DA: 52        .byte $52   ; 
- D 0 - I - 0x0105EB 04:85DB: 11        .byte $11   ; 
- D 0 - I - 0x0105EC 04:85DC: FF        .byte con_se_cb_stop   ; 



_off000_85DD_02_05:
- D 0 - I - 0x0105ED 04:85DD: 01        .byte $01   ; 
- D 0 - I - 0x0105EE 04:85DE: 52        .byte $52   ; 
- D 0 - I - 0x0105EF 04:85DF: 05        .byte $05   ; 
- D 0 - I - 0x0105F0 04:85E0: 41        .byte $41   ; 
- D 0 - I - 0x0105F1 04:85E1: 31        .byte $31   ; 
- D 0 - I - 0x0105F2 04:85E2: 21        .byte $21   ; 
- D 0 - I - 0x0105F3 04:85E3: 11        .byte $11   ; 
- D 0 - I - 0x0105F4 04:85E4: 11        .byte $11   ; 
- D 0 - I - 0x0105F5 04:85E5: FF        .byte con_se_cb_stop   ; 



_off000_85E6_03_05:
- D 0 - I - 0x0105F6 04:85E6: 01        .byte $01   ; 
- D 0 - I - 0x0105F7 04:85E7: CE        .byte $CE   ; 
- D 0 - I - 0x0105F8 04:85E8: 76        .byte $76   ; 
- D 0 - I - 0x0105F9 04:85E9: 34        .byte $34   ; 
- D 0 - I - 0x0105FA 04:85EA: 43        .byte $43   ; 
- D 0 - I - 0x0105FB 04:85EB: 24        .byte $24   ; 
- D 0 - I - 0x0105FC 04:85EC: 13        .byte $13   ; 
- - - - - - 0x0105FD 04:85ED: 12        .byte $12   ; 
- - - - - - 0x0105FE 04:85EE: 12        .byte $12   ; 
- - - - - - 0x0105FF 04:85EF: FF        .byte con_se_cb_stop   ; 



_off000_85F0_0C_04:
- D 0 - I - 0x010600 04:85F0: 01        .byte $01, $F0, $8A   ; 
- D 0 - I - 0x010603 04:85F3: F3        .byte $F3   ; 
- D 0 - I - 0x010604 04:85F4: 40        .byte $40   ; 
- D 0 - I - 0x010605 04:85F5: C4        .byte $C4   ; 
- D 0 - I - 0x010606 04:85F6: 40        .byte $40   ; 
- D 0 - I - 0x010607 04:85F7: 65        .byte $65   ; 
- D 0 - I - 0x010608 04:85F8: 40        .byte $40   ; 
- D 0 - I - 0x010609 04:85F9: B3        .byte $B3   ; 
- D 0 - I - 0x01060A 04:85FA: 60        .byte $60   ; 
- D 0 - I - 0x01060B 04:85FB: A3        .byte $A3   ; 
- D 0 - I - 0x01060C 04:85FC: 80        .byte $80   ; 
- D 0 - I - 0x01060D 04:85FD: 94        .byte $94   ; 
- D 0 - I - 0x01060E 04:85FE: 50        .byte $50   ; 
- D 0 - I - 0x01060F 04:85FF: 40        .byte $40   ; 
- D 0 - I - 0x010610 04:8600: DE        .byte $DE   ; 
- D 0 - I - 0x010611 04:8601: 04        .byte $04, $30, $85   ; 
- D 0 - I - 0x010614 04:8604: 30        .byte $30   ; 
- D 0 - I - 0x010615 04:8605: B4        .byte $B4   ; 
- D 0 - I - 0x010616 04:8606: 40        .byte $40   ; 
- D 0 - I - 0x010617 04:8607: D0        .byte $D0   ; 
- D 0 - I - 0x010618 04:8608: 40        .byte $40   ; 
- D 0 - I - 0x010619 04:8609: FE        .byte $FE   ; 
- D 0 - I - 0x01061A 04:860A: 31        .byte $31   ; 
- D 0 - I - 0x01061B 04:860B: 36        .byte $36   ; 
- D 0 - I - 0x01061C 04:860C: 21        .byte $21   ; 
- D 0 - I - 0x01061D 04:860D: 77        .byte $77   ; 
- D 0 - I - 0x01061E 04:860E: 31        .byte $31   ; 
- D 0 - I - 0x01061F 04:860F: B1        .byte $B1   ; 
- D 0 - I - 0x010620 04:8610: 22        .byte $22   ; 
- D 0 - I - 0x010621 04:8611: 10        .byte $10   ; 
- D 0 - I - 0x010622 04:8612: FF        .byte con_se_cb_stop   ; 



_off000_8613_0C_05:
- D 0 - I - 0x010623 04:8613: 01        .byte $01   ; 
- D 0 - I - 0x010624 04:8614: 10        .byte $10   ; 
- D 0 - I - 0x010625 04:8615: FD        .byte $FD   ; 
- D 0 - I - 0x010626 04:8616: 10        .byte $10   ; 
- D 0 - I - 0x010627 04:8617: FE        .byte $FE   ; 
- D 0 - I - 0x010628 04:8618: BE        .byte $BE   ; 
- D 0 - I - 0x010629 04:8619: AF        .byte $AF   ; 
- D 0 - I - 0x01062A 04:861A: BC        .byte $BC   ; 
- D 0 - I - 0x01062B 04:861B: AD        .byte $AD   ; 
- D 0 - I - 0x01062C 04:861C: 6B        .byte $6B   ; 
- D 0 - I - 0x01062D 04:861D: 6A        .byte $6A   ; 
- D 0 - I - 0x01062E 04:861E: 6B        .byte $6B   ; 
- D 0 - I - 0x01062F 04:861F: 05        .byte $05   ; 
- D 0 - I - 0x010630 04:8620: 5B        .byte $5B   ; 
- D 0 - I - 0x010631 04:8621: 4C        .byte $4C   ; 
- D 0 - I - 0x010632 04:8622: 4D        .byte $4D   ; 
- D 0 - I - 0x010633 04:8623: 3E        .byte $3E   ; 
- D 0 - I - 0x010634 04:8624: 2F        .byte $2F   ; 
- D 0 - I - 0x010635 04:8625: FF        .byte con_se_cb_stop   ; 



_off000_8626_2C_04:
- D 0 - I - 0x010636 04:8626: 02        .byte $02, $B0, $82   ; 
- D 0 - I - 0x010639 04:8629: F2        .byte $F2   ; 
- D 0 - I - 0x01063A 04:862A: C0        .byte $C0   ; 
- D 0 - I - 0x01063B 04:862B: EA        .byte con_se_cb_EA, $83   ; 
- D 0 - I - 0x01063D 04:862D: E2        .byte $E2   ; 
- D 0 - I - 0x01063E 04:862E: F0        .byte $F0   ; 
- D 0 - I - 0x01063F 04:862F: EA        .byte con_se_cb_EA, $84   ; 
- D 0 - I - 0x010641 04:8631: B4        .byte $B4   ; 
- D 0 - I - 0x010642 04:8632: 80        .byte $80   ; 
- D 0 - I - 0x010643 04:8633: EA        .byte con_se_cb_EA, $82   ; 
- D 0 - I - 0x010645 04:8635: E2        .byte $E2   ; 
- D 0 - I - 0x010646 04:8636: A0        .byte $A0   ; 
- D 0 - I - 0x010647 04:8637: 05        .byte $05, $B0, $84   ; 
- D 0 - I - 0x01064A 04:863A: A3        .byte $A3   ; 
- D 0 - I - 0x01064B 04:863B: 50        .byte $50   ; 
- D 0 - I - 0x01064C 04:863C: 74        .byte $74   ; 
- D 0 - I - 0x01064D 04:863D: 20        .byte $20   ; 
- D 0 - I - 0x01064E 04:863E: 55        .byte $55   ; 
- D 0 - I - 0x01064F 04:863F: 30        .byte $30   ; 
- D 0 - I - 0x010650 04:8640: 34        .byte $34   ; 
- D 0 - I - 0x010651 04:8641: 40        .byte $40   ; 
- D 0 - I - 0x010652 04:8642: FF        .byte con_se_cb_stop   ; 



_off000_8643_2C_05:
- D 0 - I - 0x010653 04:8643: 01        .byte $01   ; 
- D 0 - I - 0x010654 04:8644: EF        .byte $EF   ; 
- D 0 - I - 0x010655 04:8645: ED        .byte $ED   ; 
- D 0 - I - 0x010656 04:8646: AC        .byte $AC   ; 
- D 0 - I - 0x010657 04:8647: AE        .byte $AE   ; 
- D 0 - I - 0x010658 04:8648: BF        .byte $BF   ; 
- D 0 - I - 0x010659 04:8649: 00        .byte $00   ; 
- D 0 - I - 0x01065A 04:864A: DB        .byte $DB   ; 
- D 0 - I - 0x01065B 04:864B: DF        .byte $DF   ; 
- D 0 - I - 0x01065C 04:864C: DC        .byte $DC   ; 
- D 0 - I - 0x01065D 04:864D: 03        .byte $03   ; 
- D 0 - I - 0x01065E 04:864E: CD        .byte $CD   ; 
- D 0 - I - 0x01065F 04:864F: BC        .byte $BC   ; 
- D 0 - I - 0x010660 04:8650: 8B        .byte $8B   ; 
- D 0 - I - 0x010661 04:8651: 7A        .byte $7A   ; 
- D 0 - I - 0x010662 04:8652: 69        .byte $69   ; 
- D 0 - I - 0x010663 04:8653: 5C        .byte $5C   ; 
- D 0 - I - 0x010664 04:8654: 4B        .byte $4B   ; 
- D 0 - I - 0x010665 04:8655: 3A        .byte $3A   ; 
- D 0 - I - 0x010666 04:8656: 39        .byte $39   ; 
- D 0 - I - 0x010667 04:8657: 2C        .byte $2C   ; 
- D 0 - I - 0x010668 04:8658: 1B        .byte $1B   ; 
- D 0 - I - 0x010669 04:8659: FF        .byte con_se_cb_stop   ; 



_off000_865A_18_05:
- D 0 - I - 0x01066A 04:865A: 01        .byte $01   ; 
- D 0 - I - 0x01066B 04:865B: E9        .byte $E9   ; 
- D 0 - I - 0x01066C 04:865C: FA        .byte $FA   ; 
- D 0 - I - 0x01066D 04:865D: 6E        .byte $6E   ; 
- D 0 - I - 0x01066E 04:865E: EE        .byte $EE   ; 
- D 0 - I - 0x01066F 04:865F: 03        .byte $03   ; 
- D 0 - I - 0x010670 04:8660: E6        .byte $E6   ; 
- D 0 - I - 0x010671 04:8661: D8        .byte $D8   ; 
- D 0 - I - 0x010672 04:8662: B9        .byte $B9   ; 
- D 0 - I - 0x010673 04:8663: AB        .byte $AB   ; 
- D 0 - I - 0x010674 04:8664: 8C        .byte $8C   ; 
- D 0 - I - 0x010675 04:8665: 6D        .byte $6D   ; 
- D 0 - I - 0x010676 04:8666: 4D        .byte $4D   ; 
- D 0 - I - 0x010677 04:8667: 3E        .byte $3E   ; 
- D 0 - I - 0x010678 04:8668: 2E        .byte $2E   ; 
- D 0 - I - 0x010679 04:8669: 1E        .byte $1E   ; 
- D 0 - I - 0x01067A 04:866A: 1F        .byte $1F   ; 
_off000_866B_18_04_disable:
- D 0 - I - 0x01067B 04:866B: FF        .byte con_se_cb_stop   ; 



_off000_866C_44_04:
- D 0 - I - 0x01067C 04:866C: 03        .byte $03, $30, $86   ; 
- D 0 - I - 0x01067F 04:866F: 97        .byte $97   ; 
- D 0 - I - 0x010680 04:8670: C0        .byte $C0   ; 
- D 0 - I - 0x010681 04:8671: 97        .byte $97   ; 
- D 0 - I - 0x010682 04:8672: 90        .byte $90   ; 
- D 0 - I - 0x010683 04:8673: 97        .byte $97   ; 
- D 0 - I - 0x010684 04:8674: 60        .byte $60   ; 
- D 0 - I - 0x010685 04:8675: 97        .byte $97   ; 
- D 0 - I - 0x010686 04:8676: 30        .byte $30   ; 
- D 0 - I - 0x010687 04:8677: 97        .byte $97   ; 
- D 0 - I - 0x010688 04:8678: 00        .byte $00   ; 
- D 0 - I - 0x010689 04:8679: 96        .byte $96   ; 
- D 0 - I - 0x01068A 04:867A: D0        .byte $D0   ; 
- D 0 - I - 0x01068B 04:867B: 96        .byte $96   ; 
- D 0 - I - 0x01068C 04:867C: A0        .byte $A0   ; 
- D 0 - I - 0x01068D 04:867D: 96        .byte $96   ; 
- D 0 - I - 0x01068E 04:867E: 80        .byte $80   ; 
- D 0 - I - 0x01068F 04:867F: 96        .byte $96   ; 
- D 0 - I - 0x010690 04:8680: 60        .byte $60   ; 
- D 0 - I - 0x010691 04:8681: 96        .byte $96   ; 
- D 0 - I - 0x010692 04:8682: 40        .byte $40   ; 
- D 0 - I - 0x010693 04:8683: 96        .byte $96   ; 
- D 0 - I - 0x010694 04:8684: 20        .byte $20   ; 
- D 0 - I - 0x010695 04:8685: 96        .byte $96   ; 
- D 0 - I - 0x010696 04:8686: 00        .byte $00   ; 
_off000_8687_46_04:
- D 0 - I - 0x010697 04:8687: 03        .byte $03, $30, $86   ; 
loc_FE_868A:
- D 0 - I - 0x01069A 04:868A: 95        .byte $95   ; 
- D 0 - I - 0x01069B 04:868B: E0        .byte $E0   ; 
- D 0 - I - 0x01069C 04:868C: FE        .byte con_se_cb_jmp, $FF   ; 
- D 0 - I - 0x01069E 04:868E: 8A 86     .word loc_FE_868A



_off000_8690_44_05:
- D 0 - I - 0x0106A0 04:8690: 08        .byte $08   ; 
- D 0 - I - 0x0106A1 04:8691: 1D        .byte $1D   ; 
- D 0 - I - 0x0106A2 04:8692: 2C        .byte $2C   ; 
- D 0 - I - 0x0106A3 04:8693: 3B        .byte $3B   ; 
- D 0 - I - 0x0106A4 04:8694: 4B        .byte $4B   ; 
_off000_8695_46_05:
- D 0 - I - 0x0106A5 04:8695: 08        .byte $08   ; 
loc_FE_8696:
- D 0 - I - 0x0106A6 04:8696: 5B        .byte $5B   ; 
- D 0 - I - 0x0106A7 04:8697: 4B        .byte $4B   ; 
- D 0 - I - 0x0106A8 04:8698: FE        .byte con_se_cb_jmp, $FF   ; 
- D 0 - I - 0x0106AA 04:869A: 96 86     .word loc_FE_8696



_off000_869C_48_04:
- D 0 - I - 0x0106AC 04:869C: 03        .byte $03, $30, $86   ; 
- D 0 - I - 0x0106AF 04:869F: 85        .byte $85   ; 
- D 0 - I - 0x0106B0 04:86A0: E0        .byte $E0   ; 
- D 0 - I - 0x0106B1 04:86A1: EC        .byte con_se_cb_EC   ; 
- D 0 - I - 0x0106B2 04:86A2: 81        .byte $81   ; 
- D 0 - I - 0x0106B3 04:86A3: 81        .byte $81   ; 
- D 0 - I - 0x0106B4 04:86A4: 71        .byte $71   ; 
- D 0 - I - 0x0106B5 04:86A5: 71        .byte $71   ; 
- D 0 - I - 0x0106B6 04:86A6: 61        .byte $61   ; 
- D 0 - I - 0x0106B7 04:86A7: 61        .byte $61   ; 
- D 0 - I - 0x0106B8 04:86A8: 61        .byte $61   ; 
- D 0 - I - 0x0106B9 04:86A9: 51        .byte $51   ; 
- D 0 - I - 0x0106BA 04:86AA: 51        .byte $51   ; 
- D 0 - I - 0x0106BB 04:86AB: 51        .byte $51   ; 
- D 0 - I - 0x0106BC 04:86AC: 41        .byte $41   ; 
- D 0 - I - 0x0106BD 04:86AD: 41        .byte $41   ; 
- D 0 - I - 0x0106BE 04:86AE: 41        .byte $41   ; 
- D 0 - I - 0x0106BF 04:86AF: 31        .byte $31   ; 
- D 0 - I - 0x0106C0 04:86B0: 31        .byte $31   ; 
- D 0 - I - 0x0106C1 04:86B1: 31        .byte $31   ; 
- D 0 - I - 0x0106C2 04:86B2: 21        .byte $21   ; 
- D 0 - I - 0x0106C3 04:86B3: 21        .byte $21   ; 
- D 0 - I - 0x0106C4 04:86B4: 21        .byte $21   ; 
- D 0 - I - 0x0106C5 04:86B5: 21        .byte $21   ; 
- D 0 - I - 0x0106C6 04:86B6: 11        .byte $11   ; 
- D 0 - I - 0x0106C7 04:86B7: 11        .byte $11   ; 
- D 0 - I - 0x0106C8 04:86B8: 11        .byte $11   ; 
- D 0 - I - 0x0106C9 04:86B9: 11        .byte $11   ; 
- D 0 - I - 0x0106CA 04:86BA: FF        .byte con_se_cb_stop   ; 



_off000_86BB_48_05:
- D 0 - I - 0x0106CB 04:86BB: 0F        .byte $0F   ; 
- D 0 - I - 0x0106CC 04:86BC: 5B        .byte $5B   ; 
- D 0 - I - 0x0106CD 04:86BD: 4B        .byte $4B   ; 
- D 0 - I - 0x0106CE 04:86BE: 3B        .byte $3B   ; 
- D 0 - I - 0x0106CF 04:86BF: 2B        .byte $2B   ; 
- D 0 - I - 0x0106D0 04:86C0: 2B        .byte $2B   ; 
- D 0 - I - 0x0106D1 04:86C1: 1B        .byte $1B   ; 
- D 0 - I - 0x0106D2 04:86C2: 1B        .byte $1B   ; 
- D 0 - I - 0x0106D3 04:86C3: FF        .byte con_se_cb_stop   ; 



_off000_86C4_12_04:
- D 0 - I - 0x0106D4 04:86C4: 01        .byte $01, $F0, $8A   ; 
- D 0 - I - 0x0106D7 04:86C7: F3        .byte $F3   ; 
- D 0 - I - 0x0106D8 04:86C8: C0        .byte $C0   ; 
- D 0 - I - 0x0106D9 04:86C9: C4        .byte $C4   ; 
- D 0 - I - 0x0106DA 04:86CA: C0        .byte $C0   ; 
- D 0 - I - 0x0106DB 04:86CB: 75        .byte $75   ; 
- D 0 - I - 0x0106DC 04:86CC: C0        .byte $C0   ; 
- D 0 - I - 0x0106DD 04:86CD: 65        .byte $65   ; 
- D 0 - I - 0x0106DE 04:86CE: D0        .byte $D0   ; 
- D 0 - I - 0x0106DF 04:86CF: D3        .byte $D3   ; 
- D 0 - I - 0x0106E0 04:86D0: F0        .byte $F0   ; 
- D 0 - I - 0x0106E1 04:86D1: B4        .byte $B4   ; 
- D 0 - I - 0x0106E2 04:86D2: 10        .byte $10   ; 
- D 0 - I - 0x0106E3 04:86D3: A4        .byte $A4   ; 
- D 0 - I - 0x0106E4 04:86D4: E0        .byte $E0   ; 
- D 0 - I - 0x0106E5 04:86D5: 56        .byte $56   ; 
- D 0 - I - 0x0106E6 04:86D6: 30        .byte $30   ; 
- D 0 - I - 0x0106E7 04:86D7: 50        .byte $50   ; 
- D 0 - I - 0x0106E8 04:86D8: EE        .byte $EE   ; 
- D 0 - I - 0x0106E9 04:86D9: 04        .byte $04, $F0, $85   ; 
- D 0 - I - 0x0106EC 04:86DC: 40        .byte $40   ; 
- D 0 - I - 0x0106ED 04:86DD: F2        .byte $F2   ; 
- D 0 - I - 0x0106EE 04:86DE: 51        .byte $51   ; 
- D 0 - I - 0x0106EF 04:86DF: 28        .byte $28   ; 
- D 0 - I - 0x0106F0 04:86E0: 51        .byte $51   ; 
- D 0 - I - 0x0106F1 04:86E1: 6D        .byte $6D   ; 
- D 0 - I - 0x0106F2 04:86E2: 41        .byte $41   ; 
- D 0 - I - 0x0106F3 04:86E3: BA        .byte $BA   ; 
- D 0 - I - 0x0106F4 04:86E4: 32        .byte $32   ; 
- D 0 - I - 0x0106F5 04:86E5: 1E        .byte $1E   ; 
- D 0 - I - 0x0106F6 04:86E6: 22        .byte $22   ; 
- D 0 - I - 0x0106F7 04:86E7: 78        .byte $78   ; 
- D 0 - I - 0x0106F8 04:86E8: 32        .byte $32   ; 
- D 0 - I - 0x0106F9 04:86E9: D0        .byte $D0   ; 
- D 0 - I - 0x0106FA 04:86EA: FF        .byte con_se_cb_stop   ; 



_off000_86EB_12_05:
- D 0 - I - 0x0106FB 04:86EB: 01        .byte $01   ; 
- D 0 - I - 0x0106FC 04:86EC: 10        .byte $10   ; 
- D 0 - I - 0x0106FD 04:86ED: FD        .byte $FD   ; 
- D 0 - I - 0x0106FE 04:86EE: 10        .byte $10   ; 
- D 0 - I - 0x0106FF 04:86EF: FE        .byte $FE   ; 
- D 0 - I - 0x010700 04:86F0: BE        .byte $BE   ; 
- D 0 - I - 0x010701 04:86F1: AF        .byte $AF   ; 
- D 0 - I - 0x010702 04:86F2: DD        .byte $DD   ; 
- D 0 - I - 0x010703 04:86F3: CD        .byte $CD   ; 
- D 0 - I - 0x010704 04:86F4: 7C        .byte $7C   ; 
- D 0 - I - 0x010705 04:86F5: 7C        .byte $7C   ; 
- D 0 - I - 0x010706 04:86F6: 7B        .byte $7B   ; 
- D 0 - I - 0x010707 04:86F7: 05        .byte $05   ; 
- D 0 - I - 0x010708 04:86F8: 6C        .byte $6C   ; 
- D 0 - I - 0x010709 04:86F9: 6D        .byte $6D   ; 
- D 0 - I - 0x01070A 04:86FA: 6E        .byte $6E   ; 
- D 0 - I - 0x01070B 04:86FB: 6E        .byte $6E   ; 
- D 0 - I - 0x01070C 04:86FC: 5E        .byte $5E   ; 
- D 0 - I - 0x01070D 04:86FD: 4F        .byte $4F   ; 
- D 0 - I - 0x01070E 04:86FE: 3F        .byte $3F   ; 
- D 0 - I - 0x01070F 04:86FF: FF        .byte con_se_cb_stop   ; 



_off000_8700_14_05:
- D 0 - I - 0x010710 04:8700: 02        .byte $02   ; 
- D 0 - I - 0x010711 04:8701: 6D        .byte $6D   ; 
- D 0 - I - 0x010712 04:8702: 01        .byte $01   ; 
- D 0 - I - 0x010713 04:8703: 79        .byte $79   ; 
- D 0 - I - 0x010714 04:8704: F6        .byte $F6   ; 
- D 0 - I - 0x010715 04:8705: A4        .byte $A4   ; 
- D 0 - I - 0x010716 04:8706: E8        .byte $E8   ; 
- D 0 - I - 0x010717 04:8707: 09        .byte $09   ; 
- D 0 - I - 0x010718 04:8708: EE        .byte $EE   ; 
- D 0 - I - 0x010719 04:8709: AE        .byte $AE   ; 
- D 0 - I - 0x01071A 04:870A: 06        .byte $06   ; 
- D 0 - I - 0x01071B 04:870B: 9E        .byte $9E   ; 
- D 0 - I - 0x01071C 04:870C: 3E        .byte $3E   ; 
- D 0 - I - 0x01071D 04:870D: 2E        .byte $2E   ; 
_off000_870E_14_04_disable:
- D 0 - I - 0x01071E 04:870E: FF        .byte con_se_cb_stop   ; 



_off000_870F_16_05:
- D 0 - I - 0x01071F 04:870F: 01        .byte $01   ; 
- D 0 - I - 0x010720 04:8710: CA        .byte $CA   ; 
- D 0 - I - 0x010721 04:8711: 6B        .byte $6B   ; 
- D 0 - I - 0x010722 04:8712: 4D        .byte $4D   ; 
- D 0 - I - 0x010723 04:8713: 2E        .byte $2E   ; 
- D 0 - I - 0x010724 04:8714: B6        .byte $B6   ; 
- D 0 - I - 0x010725 04:8715: 9C        .byte $9C   ; 
- D 0 - I - 0x010726 04:8716: 6D        .byte $6D   ; 
- D 0 - I - 0x010727 04:8717: 00        .byte $00   ; 
- D 0 - I - 0x010728 04:8718: 00        .byte $00   ; 
- D 0 - I - 0x010729 04:8719: 27        .byte $27   ; 
- D 0 - I - 0x01072A 04:871A: 2C        .byte $2C   ; 
- D 0 - I - 0x01072B 04:871B: FF        .byte con_se_cb_stop   ; 



_off000_871C_16_04:
- D 0 - I - 0x01072C 04:871C: 01        .byte $01, $B0, $88   ; 
- D 0 - I - 0x01072F 04:871F: 40        .byte $40   ; 
- D 0 - I - 0x010730 04:8720: 1B        .byte $1B   ; 
- D 0 - I - 0x010731 04:8721: 00        .byte $00   ; 
- D 0 - I - 0x010732 04:8722: 00        .byte $00   ; 
- D 0 - I - 0x010733 04:8723: 00        .byte $00   ; 
- D 0 - I - 0x010734 04:8724: 20        .byte $20   ; 
- D 0 - I - 0x010735 04:8725: 14        .byte $14   ; 
- D 0 - I - 0x010736 04:8726: 10        .byte $10   ; 
- D 0 - I - 0x010737 04:8727: 14        .byte $14   ; 
- D 0 - I - 0x010738 04:8728: FF        .byte con_se_cb_stop   ; 



_off000_8729_4C_04:
- D 0 - I - 0x010739 04:8729: 01        .byte $01, $F0, $85   ; 
- D 0 - I - 0x01073C 04:872C: 81        .byte $81   ; 
- D 0 - I - 0x01073D 04:872D: 1A        .byte $1A   ; 
- D 0 - I - 0x01073E 04:872E: 90        .byte $90   ; 
- D 0 - I - 0x01073F 04:872F: FE        .byte $FE   ; 
- D 0 - I - 0x010740 04:8730: A0        .byte $A0   ; 
- D 0 - I - 0x010741 04:8731: E8        .byte $E8   ; 
- D 0 - I - 0x010742 04:8732: B0        .byte $B0   ; 
- D 0 - I - 0x010743 04:8733: DB        .byte $DB   ; 
- D 0 - I - 0x010744 04:8734: B0        .byte $B0   ; 
- D 0 - I - 0x010745 04:8735: CB        .byte $CB   ; 
- D 0 - I - 0x010746 04:8736: B0        .byte $B0   ; 
- D 0 - I - 0x010747 04:8737: BC        .byte $BC   ; 
- D 0 - I - 0x010748 04:8738: B0        .byte $B0   ; 
- D 0 - I - 0x010749 04:8739: B1        .byte $B1   ; 
- D 0 - I - 0x01074A 04:873A: FD        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x01074B 04:873B: 49 87     .word sub_FD_8749
- D 0 - I - 0x01074D 04:873D: ED        .byte con_se_cb_ED, $05   ; 
- D 0 - I - 0x01074F 04:873F: FD        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x010750 04:8740: 49 87     .word sub_FD_8749
- D 0 - I - 0x010752 04:8742: ED        .byte con_se_cb_ED, $08   ; 
- D 0 - I - 0x010754 04:8744: FD        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x010755 04:8745: 49 87     .word sub_FD_8749
- D 0 - I - 0x010757 04:8747: ED        .byte con_se_cb_ED, $09   ; 
sub_FD_8749:
- D 0 - I - 0x010759 04:8749: B0        .byte $B0   ; 
- D 0 - I - 0x01075A 04:874A: A2        .byte $A2   ; 
- D 0 - I - 0x01075B 04:874B: B0        .byte $B0   ; 
- D 0 - I - 0x01075C 04:874C: 95        .byte $95   ; 
- D 0 - I - 0x01075D 04:874D: B0        .byte $B0   ; 
- D 0 - I - 0x01075E 04:874E: 8D        .byte $8D   ; 
- D 0 - I - 0x01075F 04:874F: B0        .byte $B0   ; 
- D 0 - I - 0x010760 04:8750: 84        .byte $84   ; 
- D 0 - I - 0x010761 04:8751: A0        .byte $A0   ; 
- D 0 - I - 0x010762 04:8752: 7A        .byte $7A   ; 
- D 0 - I - 0x010763 04:8753: A0        .byte $A0   ; 
- D 0 - I - 0x010764 04:8754: 6D        .byte $6D   ; 
- D 0 - I - 0x010765 04:8755: A0        .byte $A0   ; 
- D 0 - I - 0x010766 04:8756: 64        .byte $64   ; 
- D 0 - I - 0x010767 04:8757: 90        .byte $90   ; 
- D 0 - I - 0x010768 04:8758: 57        .byte $57   ; 
- D 0 - I - 0x010769 04:8759: 90        .byte $90   ; 
- D 0 - I - 0x01076A 04:875A: 4E        .byte $4E   ; 
- D 0 - I - 0x01076B 04:875B: 90        .byte $90   ; 
- D 0 - I - 0x01076C 04:875C: 48        .byte $48   ; 
_off000_875D_4C_05_disable:
- D 0 - I - 0x01076D 04:875D: FF        .byte con_se_cb_stop   ; 



_off000_875E_4E_04:
- D 0 - I - 0x01076E 04:875E: 01        .byte $01, $B0, $88   ; 
- D 0 - I - 0x010771 04:8761: D0        .byte $D0   ; 
- D 0 - I - 0x010772 04:8762: 1F        .byte $1F   ; 
- D 0 - I - 0x010773 04:8763: 02        .byte $02, $30, $88   ; 
- D 0 - I - 0x010776 04:8766: 00        .byte $00   ; 
- D 0 - I - 0x010777 04:8767: 00        .byte $00   ; 
- D 0 - I - 0x010778 04:8768: E0        .byte $E0   ; 
- D 0 - I - 0x010779 04:8769: 12        .byte $12   ; 
- D 0 - I - 0x01077A 04:876A: EC        .byte con_se_cb_EC   ; 
- D 0 - I - 0x01077B 04:876B: D0        .byte $D0   ; 
- D 0 - I - 0x01077C 04:876C: C0        .byte $C0   ; 
- D 0 - I - 0x01077D 04:876D: A0        .byte $A0   ; 
- D 0 - I - 0x01077E 04:876E: 60        .byte $60   ; 
- D 0 - I - 0x01077F 04:876F: 40        .byte $40   ; 
- D 0 - I - 0x010780 04:8770: 20        .byte $20   ; 
- D 0 - I - 0x010781 04:8771: 40        .byte $40   ; 
- D 0 - I - 0x010782 04:8772: 30        .byte $30   ; 
- D 0 - I - 0x010783 04:8773: 20        .byte $20   ; 
- D 0 - I - 0x010784 04:8774: FF        .byte con_se_cb_stop   ; 



_off000_8775_4E_05:
- D 0 - I - 0x010785 04:8775: 01        .byte $01   ; 
- D 0 - I - 0x010786 04:8776: E8        .byte $E8   ; 
- D 0 - I - 0x010787 04:8777: 02        .byte $02   ; 
- D 0 - I - 0x010788 04:8778: 1A        .byte $1A   ; 
- D 0 - I - 0x010789 04:8779: 00        .byte $00   ; 
- D 0 - I - 0x01078A 04:877A: A6        .byte $A6   ; 
- D 0 - I - 0x01078B 04:877B: 85        .byte $85   ; 
- D 0 - I - 0x01078C 04:877C: 74        .byte $74   ; 
- D 0 - I - 0x01078D 04:877D: 53        .byte $53   ; 
- D 0 - I - 0x01078E 04:877E: 33        .byte $33   ; 
- D 0 - I - 0x01078F 04:877F: 13        .byte $13   ; 
- D 0 - I - 0x010790 04:8780: 27        .byte $27   ; 
- D 0 - I - 0x010791 04:8781: 26        .byte $26   ; 
- D 0 - I - 0x010792 04:8782: 15        .byte $15   ; 
- D 0 - I - 0x010793 04:8783: FF        .byte con_se_cb_stop   ; 



_off000_8784_26_04:
- D 0 - I - 0x010794 04:8784: 01        .byte $01, $F0, $88   ; 
- D 0 - I - 0x010797 04:8787: FB        .byte con_se_cb_FB   ; 
- D 0 - I - 0x010798 04:8788: A3        .byte $A3   ; 
- D 0 - I - 0x010799 04:8789: 60        .byte $60   ; 
- D 0 - I - 0x01079A 04:878A: 92        .byte $92   ; 
- D 0 - I - 0x01079B 04:878B: 60        .byte $60   ; 
- D 0 - I - 0x01079C 04:878C: FE        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x01079D 04:878D: 1A        .byte $1A   ; 
- D 0 - I - 0x01079E 04:878E: FB        .byte con_se_cb_FB   ; 
- D 0 - I - 0x01079F 04:878F: 63        .byte $63   ; 
- D 0 - I - 0x0107A0 04:8790: 60        .byte $60   ; 
- D 0 - I - 0x0107A1 04:8791: 52        .byte $52   ; 
- D 0 - I - 0x0107A2 04:8792: 60        .byte $60   ; 
- D 0 - I - 0x0107A3 04:8793: FE        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x0107A4 04:8794: 09        .byte $09   ; 
- D 0 - I - 0x0107A5 04:8795: FB        .byte con_se_cb_FB   ; 
- D 0 - I - 0x0107A6 04:8796: 43        .byte $43   ; 
- D 0 - I - 0x0107A7 04:8797: 60        .byte $60   ; 
- D 0 - I - 0x0107A8 04:8798: 32        .byte $32   ; 
- D 0 - I - 0x0107A9 04:8799: 60        .byte $60   ; 
- D 0 - I - 0x0107AA 04:879A: FE        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x0107AB 04:879B: 09        .byte $09   ; 
- D 0 - I - 0x0107AC 04:879C: FB        .byte con_se_cb_FB   ; 
- D 0 - I - 0x0107AD 04:879D: 33        .byte $33   ; 
- D 0 - I - 0x0107AE 04:879E: 60        .byte $60   ; 
- D 0 - I - 0x0107AF 04:879F: 22        .byte $22   ; 
- D 0 - I - 0x0107B0 04:87A0: 60        .byte $60   ; 
- D 0 - I - 0x0107B1 04:87A1: FE        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x0107B2 04:87A2: 09        .byte $09   ; 
- - - - - - 0x0107B3 04:87A3: FB        .byte con_se_cb_FB   ; 
- - - - - - 0x0107B4 04:87A4: 23        .byte $23   ; 
- - - - - - 0x0107B5 04:87A5: 60        .byte $60   ; 
- - - - - - 0x0107B6 04:87A6: 12        .byte $12   ; 
- - - - - - 0x0107B7 04:87A7: 60        .byte $60   ; 
- - - - - - 0x0107B8 04:87A8: FE        .byte con_se_cb_jmp   ; 
- - - - - - 0x0107B9 04:87A9: 09        .byte $09   ; 
- - - - - - 0x0107BA 04:87AA: FF        .byte con_se_cb_stop   ; 



_off000_87AB_26_05:
- D 0 - I - 0x0107BB 04:87AB: 0A        .byte $0A   ; 
- D 0 - I - 0x0107BC 04:87AC: 5D        .byte $5D   ; 
- D 0 - I - 0x0107BD 04:87AD: 5D        .byte $5D   ; 
- D 0 - I - 0x0107BE 04:87AE: 5D        .byte $5D   ; 
- D 0 - I - 0x0107BF 04:87AF: 5D        .byte $5D   ; 
- D 0 - I - 0x0107C0 04:87B0: 4D        .byte $4D   ; 
- D 0 - I - 0x0107C1 04:87B1: 4D        .byte $4D   ; 
- D 0 - I - 0x0107C2 04:87B2: 4D        .byte $4D   ; 
- D 0 - I - 0x0107C3 04:87B3: 3D        .byte $3D   ; 
- D 0 - I - 0x0107C4 04:87B4: 2D        .byte $2D   ; 
- D 0 - I - 0x0107C5 04:87B5: 2D        .byte $2D   ; 
- - - - - - 0x0107C6 04:87B6: 1D        .byte $1D   ; 
- - - - - - 0x0107C7 04:87B7: FF        .byte con_se_cb_stop   ; 



_off000_87B8_28_04:
- D 0 - I - 0x0107C8 04:87B8: 01        .byte $01, $B0, $83   ; 
- D 0 - I - 0x0107CB 04:87BB: C2        .byte $C2   ; 
- D 0 - I - 0x0107CC 04:87BC: A0        .byte $A0   ; 
- D 0 - I - 0x0107CD 04:87BD: EC        .byte con_se_cb_EC   ; 
- D 0 - I - 0x0107CE 04:87BE: 80        .byte $80   ; 
- D 0 - I - 0x0107CF 04:87BF: 70        .byte $70   ; 
- D 0 - I - 0x0107D0 04:87C0: C1        .byte $C1   ; 
- D 0 - I - 0x0107D1 04:87C1: B0        .byte $B0   ; 
- D 0 - I - 0x0107D2 04:87C2: A0        .byte $A0   ; 
- D 0 - I - 0x0107D3 04:87C3: 90        .byte $90   ; 
- D 0 - I - 0x0107D4 04:87C4: 80        .byte $80   ; 
- D 0 - I - 0x0107D5 04:87C5: 70        .byte $70   ; 
- D 0 - I - 0x0107D6 04:87C6: 60        .byte $60   ; 
- D 0 - I - 0x0107D7 04:87C7: 50        .byte $50   ; 
- D 0 - I - 0x0107D8 04:87C8: 00        .byte $00   ; 
- D 0 - I - 0x0107D9 04:87C9: 00        .byte $00   ; 
- D 0 - I - 0x0107DA 04:87CA: 31        .byte $31   ; 
- D 0 - I - 0x0107DB 04:87CB: 20        .byte $20   ; 
- D 0 - I - 0x0107DC 04:87CC: FF        .byte con_se_cb_stop   ; 



_off000_87CD_28_05:
- D 0 - I - 0x0107DD 04:87CD: 01        .byte $01   ; 
- D 0 - I - 0x0107DE 04:87CE: DA        .byte $DA   ; 
- D 0 - I - 0x0107DF 04:87CF: 02        .byte $02   ; 
- D 0 - I - 0x0107E0 04:87D0: CF        .byte $CF   ; 
- D 0 - I - 0x0107E1 04:87D1: 03        .byte $03   ; 
- D 0 - I - 0x0107E2 04:87D2: CB        .byte $CB   ; 
- D 0 - I - 0x0107E3 04:87D3: 7C        .byte $7C   ; 
- D 0 - I - 0x0107E4 04:87D4: 7E        .byte $7E   ; 
- D 0 - I - 0x0107E5 04:87D5: 5B        .byte $5B   ; 
- D 0 - I - 0x0107E6 04:87D6: 6E        .byte $6E   ; 
- D 0 - I - 0x0107E7 04:87D7: 3B        .byte $3B   ; 
- D 0 - I - 0x0107E8 04:87D8: 4E        .byte $4E   ; 
- D 0 - I - 0x0107E9 04:87D9: 2B        .byte $2B   ; 
- D 0 - I - 0x0107EA 04:87DA: 3E        .byte $3E   ; 
- D 0 - I - 0x0107EB 04:87DB: 1B        .byte $1B   ; 
- D 0 - I - 0x0107EC 04:87DC: FF        .byte con_se_cb_stop   ; 



_off000_87DD_30_04:
- D 0 - I - 0x0107ED 04:87DD: 07        .byte $07, $B0, $82   ; 
- D 0 - I - 0x0107F0 04:87E0: E1        .byte $E1   ; 
- D 0 - I - 0x0107F1 04:87E1: 41        .byte $41   ; 
- D 0 - I - 0x0107F2 04:87E2: 06        .byte $06, $70, $82   ; 
- D 0 - I - 0x0107F5 04:87E5: A0        .byte $A0   ; 
- D 0 - I - 0x0107F6 04:87E6: 48        .byte $48   ; 
- D 0 - I - 0x0107F7 04:87E7: 90        .byte $90   ; 
- D 0 - I - 0x0107F8 04:87E8: 50        .byte $50   ; 
- D 0 - I - 0x0107F9 04:87E9: 70        .byte $70   ; 
- D 0 - I - 0x0107FA 04:87EA: 60        .byte $60   ; 
- D 0 - I - 0x0107FB 04:87EB: 40        .byte $40   ; 
- D 0 - I - 0x0107FC 04:87EC: 70        .byte $70   ; 
- D 0 - I - 0x0107FD 04:87ED: 20        .byte $20   ; 
- D 0 - I - 0x0107FE 04:87EE: 80        .byte $80   ; 
- D 0 - I - 0x0107FF 04:87EF: 10        .byte $10   ; 
- D 0 - I - 0x010800 04:87F0: 90        .byte $90   ; 
- D 0 - I - 0x010801 04:87F1: FF        .byte con_se_cb_stop   ; 



_off000_87F2_30_05:
- D 0 - I - 0x010802 04:87F2: 01        .byte $01   ; 
- D 0 - I - 0x010803 04:87F3: BB        .byte $BB   ; 
- D 0 - I - 0x010804 04:87F4: AC        .byte $AC   ; 
- D 0 - I - 0x010805 04:87F5: 9D        .byte $9D   ; 
- D 0 - I - 0x010806 04:87F6: 7E        .byte $7E   ; 
- D 0 - I - 0x010807 04:87F7: 5F        .byte $5F   ; 
- D 0 - I - 0x010808 04:87F8: 5C        .byte $5C   ; 
- D 0 - I - 0x010809 04:87F9: 6B        .byte $6B   ; 
- D 0 - I - 0x01080A 04:87FA: 5A        .byte $5A   ; 
- D 0 - I - 0x01080B 04:87FB: 4A        .byte $4A   ; 
- D 0 - I - 0x01080C 04:87FC: 39        .byte $39   ; 
- D 0 - I - 0x01080D 04:87FD: 39        .byte $39   ; 
- D 0 - I - 0x01080E 04:87FE: 5B        .byte $5B   ; 
- D 0 - I - 0x01080F 04:87FF: 4A        .byte $4A   ; 
- D 0 - I - 0x010810 04:8800: 3A        .byte $3A   ; 
- D 0 - I - 0x010811 04:8801: 29        .byte $29   ; 
- D 0 - I - 0x010812 04:8802: 29        .byte $29   ; 
- D 0 - I - 0x010813 04:8803: 4B        .byte $4B   ; 
- D 0 - I - 0x010814 04:8804: 3A        .byte $3A   ; 
- D 0 - I - 0x010815 04:8805: 2A        .byte $2A   ; 
- D 0 - I - 0x010816 04:8806: 19        .byte $19   ; 
- D 0 - I - 0x010817 04:8807: 19        .byte $19   ; 
- D 0 - I - 0x010818 04:8808: 3B        .byte $3B   ; 
- D 0 - I - 0x010819 04:8809: 2A        .byte $2A   ; 
- D 0 - I - 0x01081A 04:880A: 1A        .byte $1A   ; 
- D 0 - I - 0x01081B 04:880B: 19        .byte $19   ; 
- D 0 - I - 0x01081C 04:880C: FF        .byte con_se_cb_stop   ; 



_off000_880D_24_04:
- D 0 - I - 0x01081D 04:880D: 01        .byte $01, $30, $82   ; 
- D 0 - I - 0x010820 04:8810: B0        .byte $B0   ; 
- D 0 - I - 0x010821 04:8811: E0        .byte $E0   ; 
- D 0 - I - 0x010822 04:8812: EC        .byte con_se_cb_EC   ; 
- D 0 - I - 0x010823 04:8813: A0        .byte $A0   ; 
- D 0 - I - 0x010824 04:8814: 90        .byte $90   ; 
- D 0 - I - 0x010825 04:8815: 70        .byte $70   ; 
- D 0 - I - 0x010826 04:8816: 50        .byte $50   ; 
- D 0 - I - 0x010827 04:8817: 02        .byte $02, $30, $83   ; 
- D 0 - I - 0x01082A 04:881A: 80        .byte $80   ; 
- D 0 - I - 0x01082B 04:881B: F8        .byte $F8   ; 
- D 0 - I - 0x01082C 04:881C: EC        .byte $EC   ; 
- D 0 - I - 0x01082D 04:881D: 80        .byte $80   ; 
- - - - - - 0x01082E 04:881E: 50        .byte $50   ; 
- - - - - - 0x01082F 04:881F: 30        .byte $30   ; 
- - - - - - 0x010830 04:8820: 20        .byte $20   ; 
- - - - - - 0x010831 04:8821: 20        .byte $20   ; 
- - - - - - 0x010832 04:8822: 10        .byte $10   ; 
- - - - - - 0x010833 04:8823: 10        .byte $10   ; 
- - - - - - 0x010834 04:8824: 08        .byte $08   ; 
- - - - - - 0x010835 04:8825: 30        .byte $30   ; 
- - - - - - 0x010836 04:8826: 83        .byte $83   ; 
- - - - - - 0x010837 04:8827: 20        .byte $20   ; 
- - - - - - 0x010838 04:8828: F8        .byte $F8   ; 
- - - - - - 0x010839 04:8829: FF        .byte con_se_cb_stop   ; 



_off000_882A_24_05:
- D 0 - I - 0x01083A 04:882A: 02        .byte $02   ; 
- D 0 - I - 0x01083B 04:882B: DB        .byte $DB   ; 
- D 0 - I - 0x01083C 04:882C: 01        .byte $01   ; 
- D 0 - I - 0x01083D 04:882D: 79        .byte $79   ; 
- D 0 - I - 0x01083E 04:882E: 02        .byte $02   ; 
- D 0 - I - 0x01083F 04:882F: 4A        .byte $4A   ; 
- D 0 - I - 0x010840 04:8830: EB        .byte $EB   ; 
- D 0 - I - 0x010841 04:8831: 7A        .byte $7A   ; 
- D 0 - I - 0x010842 04:8832: 6A        .byte $6A   ; 
- D 0 - I - 0x010843 04:8833: 5B        .byte $5B   ; 
- D 0 - I - 0x010844 04:8834: 4C        .byte $4C   ; 
- D 0 - I - 0x010845 04:8835: 3D        .byte $3D   ; 
- D 0 - I - 0x010846 04:8836: 2D        .byte $2D   ; 
- D 0 - I - 0x010847 04:8837: 3A        .byte $3A   ; 
- D 0 - I - 0x010848 04:8838: 2B        .byte $2B   ; 
- D 0 - I - 0x010849 04:8839: 2C        .byte $2C   ; 
- D 0 - I - 0x01084A 04:883A: 1D        .byte $1D   ; 
- D 0 - I - 0x01084B 04:883B: FF        .byte con_se_cb_stop   ; 



_off000_883C_36_04:
- D 0 - I - 0x01084C 04:883C: 01        .byte $01, $B0, $8A   ; 
- D 0 - I - 0x01084F 04:883F: F3        .byte $F3   ; 
- D 0 - I - 0x010850 04:8840: 74        .byte $74   ; 
- D 0 - I - 0x010851 04:8841: F2        .byte $F2   ; 
- D 0 - I - 0x010852 04:8842: 53        .byte $53   ; 
- D 0 - I - 0x010853 04:8843: E5        .byte $E5   ; 
- D 0 - I - 0x010854 04:8844: 48        .byte $48   ; 
- D 0 - I - 0x010855 04:8845: 73        .byte $73   ; 
- D 0 - I - 0x010856 04:8846: 37        .byte $37   ; 
- D 0 - I - 0x010857 04:8847: 45        .byte $45   ; 
- D 0 - I - 0x010858 04:8848: 46        .byte $46   ; 
- D 0 - I - 0x010859 04:8849: 02        .byte $02, $B0, $83   ; 
- D 0 - I - 0x01085C 04:884C: 00        .byte $00   ; 
- D 0 - I - 0x01085D 04:884D: F2        .byte $F2   ; 
- D 0 - I - 0x01085E 04:884E: 76        .byte $76   ; 
- D 0 - I - 0x01085F 04:884F: F1        .byte $F1   ; 
- D 0 - I - 0x010860 04:8850: C5        .byte $C5   ; 
- D 0 - I - 0x010861 04:8851: D2        .byte $D2   ; 
- D 0 - I - 0x010862 04:8852: 67        .byte $67   ; 
- D 0 - I - 0x010863 04:8853: 91        .byte $91   ; 
- D 0 - I - 0x010864 04:8854: D6        .byte $D6   ; 
- D 0 - I - 0x010865 04:8855: 83        .byte $83   ; 
- D 0 - I - 0x010866 04:8856: 24        .byte $24   ; 
- D 0 - I - 0x010867 04:8857: 72        .byte $72   ; 
- D 0 - I - 0x010868 04:8858: 56        .byte $56   ; 
- D 0 - I - 0x010869 04:8859: 63        .byte $63   ; 
- D 0 - I - 0x01086A 04:885A: 28        .byte $28   ; 
- D 0 - I - 0x01086B 04:885B: 52        .byte $52   ; 
- D 0 - I - 0x01086C 04:885C: 29        .byte $29   ; 
- D 0 - I - 0x01086D 04:885D: 41        .byte $41   ; 
- D 0 - I - 0x01086E 04:885E: F6        .byte $F6   ; 
- D 0 - I - 0x01086F 04:885F: 32        .byte $32   ; 
- D 0 - I - 0x010870 04:8860: 78        .byte $78   ; 
- D 0 - I - 0x010871 04:8861: 23        .byte $23   ; 
- D 0 - I - 0x010872 04:8862: 56        .byte $56   ; 
- D 0 - I - 0x010873 04:8863: FF        .byte con_se_cb_stop   ; 



_off000_8864_36_05:
- D 0 - I - 0x010874 04:8864: 01        .byte $01   ; 
- D 0 - I - 0x010875 04:8865: 10        .byte $10   ; 
- D 0 - I - 0x010876 04:8866: FE        .byte $FE   ; 
- D 0 - I - 0x010877 04:8867: EF        .byte $EF   ; 
- D 0 - I - 0x010878 04:8868: 8E        .byte $8E   ; 
- D 0 - I - 0x010879 04:8869: 6F        .byte $6F   ; 
- D 0 - I - 0x01087A 04:886A: 4F        .byte $4F   ; 
- D 0 - I - 0x01087B 04:886B: 00        .byte $00   ; 
- D 0 - I - 0x01087C 04:886C: 02        .byte $02   ; 
- D 0 - I - 0x01087D 04:886D: 10        .byte $10   ; 
- D 0 - I - 0x01087E 04:886E: FE        .byte $FE   ; 
- D 0 - I - 0x01087F 04:886F: 10        .byte $10   ; 
- D 0 - I - 0x010880 04:8870: FD        .byte $FD   ; 
- D 0 - I - 0x010881 04:8871: DD 8E     .word sub_FD_8EDD
- D 0 - I - 0x010883 04:8873: 7E        .byte $7E   ; 
- D 0 - I - 0x010884 04:8874: 6F        .byte $6F   ; 
- D 0 - I - 0x010885 04:8875: 6D        .byte $6D   ; 
- D 0 - I - 0x010886 04:8876: 5E        .byte $5E   ; 
- D 0 - I - 0x010887 04:8877: 5F        .byte $5F   ; 
- D 0 - I - 0x010888 04:8878: 4D        .byte $4D   ; 
- D 0 - I - 0x010889 04:8879: 4E        .byte $4E   ; 
- D 0 - I - 0x01088A 04:887A: 3F        .byte $3F   ; 
- D 0 - I - 0x01088B 04:887B: 2D        .byte $2D   ; 
- D 0 - I - 0x01088C 04:887C: 2E        .byte $2E   ; 
- D 0 - I - 0x01088D 04:887D: 2F        .byte $2F   ; 
- D 0 - I - 0x01088E 04:887E: 1E        .byte $1E   ; 
- D 0 - I - 0x01088F 04:887F: FF        .byte con_se_cb_stop   ; 



_off000_8880_0A_04:
- D 0 - I - 0x010890 04:8880: 01        .byte $01, $30, $A2   ; 
- D 0 - I - 0x010893 04:8883: C3        .byte $C3   ; 
- D 0 - I - 0x010894 04:8884: DA        .byte $DA   ; 
- D 0 - I - 0x010895 04:8885: 94        .byte $94   ; 
- D 0 - I - 0x010896 04:8886: 87        .byte $87   ; 
- D 0 - I - 0x010897 04:8887: 84        .byte $84   ; 
- D 0 - I - 0x010898 04:8888: E7        .byte $E7   ; 
- D 0 - I - 0x010899 04:8889: 65        .byte $65   ; 
- D 0 - I - 0x01089A 04:888A: 67        .byte $67   ; 
- D 0 - I - 0x01089B 04:888B: 35        .byte $35   ; 
- D 0 - I - 0x01089C 04:888C: D7        .byte $D7   ; 
- D 0 - I - 0x01089D 04:888D: FF        .byte con_se_cb_stop   ; 



_off000_888E_0A_05:
- D 0 - I - 0x01089E 04:888E: 01        .byte $01   ; 
- D 0 - I - 0x01089F 04:888F: CD        .byte $CD   ; 
- D 0 - I - 0x0108A0 04:8890: BD        .byte $BD   ; 
- D 0 - I - 0x0108A1 04:8891: 5D        .byte $5D   ; 
- D 0 - I - 0x0108A2 04:8892: 4E        .byte $4E   ; 
- D 0 - I - 0x0108A3 04:8893: 3E        .byte $3E   ; 
- D 0 - I - 0x0108A4 04:8894: FF        .byte con_se_cb_stop   ; 



_off000_8895_59_05:
- D 0 - I - 0x0108A5 04:8895: 02        .byte $02   ; 
- D 0 - I - 0x0108A6 04:8896: DB        .byte $DB   ; 
- D 0 - I - 0x0108A7 04:8897: EA        .byte $EA   ; 
- D 0 - I - 0x0108A8 04:8898: 03        .byte $03   ; 
- D 0 - I - 0x0108A9 04:8899: 29        .byte $29   ; 
- D 0 - I - 0x0108AA 04:889A: 02        .byte $02   ; 
- D 0 - I - 0x0108AB 04:889B: EB        .byte $EB   ; 
- D 0 - I - 0x0108AC 04:889C: EA        .byte $EA   ; 
- D 0 - I - 0x0108AD 04:889D: EA        .byte $EA   ; 
- D 0 - I - 0x0108AE 04:889E: E9        .byte $E9   ; 
- D 0 - I - 0x0108AF 04:889F: D8        .byte $D8   ; 
- D 0 - I - 0x0108B0 04:88A0: C9        .byte $C9   ; 
- D 0 - I - 0x0108B1 04:88A1: B8        .byte $B8   ; 
- D 0 - I - 0x0108B2 04:88A2: A7        .byte $A7   ; 
- D 0 - I - 0x0108B3 04:88A3: 98        .byte $98   ; 
- D 0 - I - 0x0108B4 04:88A4: 89        .byte $89   ; 
- D 0 - I - 0x0108B5 04:88A5: 7A        .byte $7A   ; 
- D 0 - I - 0x0108B6 04:88A6: 7A        .byte $7A   ; 
- D 0 - I - 0x0108B7 04:88A7: 79        .byte $79   ; 
- D 0 - I - 0x0108B8 04:88A8: 68        .byte $68   ; 
- D 0 - I - 0x0108B9 04:88A9: 69        .byte $69   ; 
- D 0 - I - 0x0108BA 04:88AA: 58        .byte $58   ; 
- D 0 - I - 0x0108BB 04:88AB: 57        .byte $57   ; 
- D 0 - I - 0x0108BC 04:88AC: 48        .byte $48   ; 
- D 0 - I - 0x0108BD 04:88AD: 49        .byte $49   ; 
- D 0 - I - 0x0108BE 04:88AE: 4A        .byte $4A   ; 
- D 0 - I - 0x0108BF 04:88AF: 4A        .byte $4A   ; 
- D 0 - I - 0x0108C0 04:88B0: 49        .byte $49   ; 
- D 0 - I - 0x0108C1 04:88B1: 38        .byte $38   ; 
- D 0 - I - 0x0108C2 04:88B2: 39        .byte $39   ; 
- D 0 - I - 0x0108C3 04:88B3: 28        .byte $28   ; 
- D 0 - I - 0x0108C4 04:88B4: 27        .byte $27   ; 
- D 0 - I - 0x0108C5 04:88B5: 18        .byte $18   ; 
- D 0 - I - 0x0108C6 04:88B6: 19        .byte $19   ; 
- D 0 - I - 0x0108C7 04:88B7: FF        .byte con_se_cb_stop   ; 



_off000_88B8_59_04:
- D 0 - I - 0x0108C8 04:88B8: 01        .byte $01, $30, $88   ; 
- D 0 - I - 0x0108CB 04:88BB: E8        .byte con_se_cb_E8, $38   ; 
- D 0 - I - 0x0108CD 04:88BD: 00        .byte $00   ; 
- D 0 - I - 0x0108CE 04:88BE: FF        .byte con_se_cb_stop   ; 



_off000_88BF_34_04:
- D 0 - I - 0x0108CF 04:88BF: 05        .byte $05, $F0, $82   ; 
- D 0 - I - 0x0108D2 04:88C2: D2        .byte $D2   ; 
- D 0 - I - 0x0108D3 04:88C3: 22        .byte $22   ; 
- D 0 - I - 0x0108D4 04:88C4: 02        .byte $02, $70, $87   ; 
- D 0 - I - 0x0108D7 04:88C7: 50        .byte $50   ; 
- D 0 - I - 0x0108D8 04:88C8: 22        .byte $22   ; 
- D 0 - I - 0x0108D9 04:88C9: 50        .byte $50   ; 
- D 0 - I - 0x0108DA 04:88CA: 1B        .byte $1B   ; 
- D 0 - I - 0x0108DB 04:88CB: 40        .byte $40   ; 
- D 0 - I - 0x0108DC 04:88CC: 2A        .byte $2A   ; 
- D 0 - I - 0x0108DD 04:88CD: 40        .byte $40   ; 
- D 0 - I - 0x0108DE 04:88CE: 20        .byte $20   ; 
- D 0 - I - 0x0108DF 04:88CF: 00        .byte $00   ; 
- D 0 - I - 0x0108E0 04:88D0: 30        .byte $30   ; 
- D 0 - I - 0x0108E1 04:88D1: 14        .byte $14   ; 
- D 0 - I - 0x0108E2 04:88D2: 30        .byte $30   ; 
- D 0 - I - 0x0108E3 04:88D3: 0A        .byte $0A   ; 
- D 0 - I - 0x0108E4 04:88D4: 30        .byte $30   ; 
- D 0 - I - 0x0108E5 04:88D5: 11        .byte $11   ; 
- D 0 - I - 0x0108E6 04:88D6: 30        .byte $30   ; 
- D 0 - I - 0x0108E7 04:88D7: 1B        .byte $1B   ; 
- D 0 - I - 0x0108E8 04:88D8: 00        .byte $00   ; 
- D 0 - I - 0x0108E9 04:88D9: 20        .byte $20   ; 
- D 0 - I - 0x0108EA 04:88DA: 13        .byte $13   ; 
- D 0 - I - 0x0108EB 04:88DB: 20        .byte $20   ; 
- D 0 - I - 0x0108EC 04:88DC: 20        .byte $20   ; 
- D 0 - I - 0x0108ED 04:88DD: 10        .byte $10   ; 
- D 0 - I - 0x0108EE 04:88DE: 10        .byte $10   ; 
- D 0 - I - 0x0108EF 04:88DF: FF        .byte con_se_cb_stop   ; 



_off000_88E0_34_05:
- D 0 - I - 0x0108F0 04:88E0: 01        .byte $01   ; 
- D 0 - I - 0x0108F1 04:88E1: DD        .byte $DD   ; 
- D 0 - I - 0x0108F2 04:88E2: EF        .byte $EF   ; 
- D 0 - I - 0x0108F3 04:88E3: ED        .byte $ED   ; 
- D 0 - I - 0x0108F4 04:88E4: EC        .byte $EC   ; 
- D 0 - I - 0x0108F5 04:88E5: CB        .byte $CB   ; 
- D 0 - I - 0x0108F6 04:88E6: CA        .byte $CA   ; 
- D 0 - I - 0x0108F7 04:88E7: CA        .byte $CA   ; 
- D 0 - I - 0x0108F8 04:88E8: BA        .byte $BA   ; 
- D 0 - I - 0x0108F9 04:88E9: BA        .byte $BA   ; 
- D 0 - I - 0x0108FA 04:88EA: AA        .byte $AA   ; 
- D 0 - I - 0x0108FB 04:88EB: 9A        .byte $9A   ; 
- D 0 - I - 0x0108FC 04:88EC: 05        .byte $05   ; 
- D 0 - I - 0x0108FD 04:88ED: 8A        .byte $8A   ; 
- D 0 - I - 0x0108FE 04:88EE: 6A        .byte $6A   ; 
- D 0 - I - 0x0108FF 04:88EF: 5A        .byte $5A   ; 
- D 0 - I - 0x010900 04:88F0: 39        .byte $39   ; 
- D 0 - I - 0x010901 04:88F1: 29        .byte $29   ; 
- D 0 - I - 0x010902 04:88F2: 19        .byte $19   ; 
- - - - - - 0x010903 04:88F3: FF        .byte con_se_cb_stop   ; 



_off000_88F4_06_05:
- D 0 - I - 0x010904 04:88F4: 01        .byte $01   ; 
- D 0 - I - 0x010905 04:88F5: 8B        .byte $8B   ; 
- D 0 - I - 0x010906 04:88F6: 5C        .byte $5C   ; 
- D 0 - I - 0x010907 04:88F7: 00        .byte $00   ; 
- D 0 - I - 0x010908 04:88F8: 7A        .byte $7A   ; 
- D 0 - I - 0x010909 04:88F9: 5B        .byte $5B   ; 
- D 0 - I - 0x01090A 04:88FA: 4B        .byte $4B   ; 
- D 0 - I - 0x01090B 04:88FB: 3B        .byte $3B   ; 
- D 0 - I - 0x01090C 04:88FC: 4B        .byte $4B   ; 
- D 0 - I - 0x01090D 04:88FD: 3B        .byte $3B   ; 
_off000_88FE_06_04_disable:
- D 0 - I - 0x01090E 04:88FE: FF        .byte con_se_cb_stop   ; 



_off000_88FF_2E_05:
- D 0 - I - 0x01090F 04:88FF: 04        .byte $04   ; 
- D 0 - I - 0x010910 04:8900: 10        .byte $10   ; 
- D 0 - I - 0x010911 04:8901: FE        .byte $FE   ; 
- D 0 - I - 0x010912 04:8902: F8        .byte $F8   ; 
- D 0 - I - 0x010913 04:8903: 87        .byte $87   ; 
- D 0 - I - 0x010914 04:8904: 10        .byte $10   ; 
- D 0 - I - 0x010915 04:8905: FD        .byte $FD   ; 
- D 0 - I - 0x010916 04:8906: 10        .byte $10   ; 
- D 0 - I - 0x010917 04:8907: FB        .byte $FB   ; 
- D 0 - I - 0x010918 04:8908: 10        .byte $10   ; 
- D 0 - I - 0x010919 04:8909: FE        .byte $FE   ; 
- D 0 - I - 0x01091A 04:890A: 10        .byte $10   ; 
- D 0 - I - 0x01091B 04:890B: FC        .byte $FC   ; 
- D 0 - I - 0x01091C 04:890C: 10        .byte $10   ; 
- D 0 - I - 0x01091D 04:890D: FD        .byte $FD   ; 
- D 0 - I - 0x01091E 04:890E: 10        .byte $10   ; 
- D 0 - I - 0x01091F 04:890F: FC        .byte $FC   ; 
- D 0 - I - 0x010920 04:8910: EC        .byte $EC   ; 
- D 0 - I - 0x010921 04:8911: 05        .byte $05   ; 
- D 0 - I - 0x010922 04:8912: ED        .byte $ED   ; 
- D 0 - I - 0x010923 04:8913: DE        .byte $DE   ; 
- D 0 - I - 0x010924 04:8914: CE        .byte $CE   ; 
- D 0 - I - 0x010925 04:8915: BE        .byte $BE   ; 
- D 0 - I - 0x010926 04:8916: AE        .byte $AE   ; 
- D 0 - I - 0x010927 04:8917: 9E        .byte $9E   ; 
- D 0 - I - 0x010928 04:8918: 8E        .byte $8E   ; 
- D 0 - I - 0x010929 04:8919: 7E        .byte $7E   ; 
- D 0 - I - 0x01092A 04:891A: 6E        .byte $6E   ; 
- D 0 - I - 0x01092B 04:891B: 5E        .byte $5E   ; 
- D 0 - I - 0x01092C 04:891C: 4E        .byte $4E   ; 
- D 0 - I - 0x01092D 04:891D: 3E        .byte $3E   ; 
- D 0 - I - 0x01092E 04:891E: 2E        .byte $2E   ; 
_off000_891F_2E_04_disable:
- D 0 - I - 0x01092F 04:891F: FF        .byte con_se_cb_stop   ; 



_off000_8920_32_05:
- - - - - - 0x010930 04:8920: 01        .byte $01, $BA, $C9   ; 
- - - - - - 0x010933 04:8923: D8        .byte $D8   ; 
- - - - - - 0x010934 04:8924: E7        .byte $E7   ; 
- - - - - - 0x010935 04:8925: F1        .byte $F1   ; 
- - - - - - 0x010936 04:8926: 02        .byte $02, $E2, $D3   ; 
- - - - - - 0x010939 04:8929: 03        .byte $03, $C7, $B7   ; 
- - - - - - 0x01093C 04:892C: A8        .byte $A8   ; 
- - - - - - 0x01093D 04:892D: 88        .byte $88   ; 
- - - - - - 0x01093E 04:892E: 78        .byte $78   ; 
- - - - - - 0x01093F 04:892F: 68        .byte $68   ; 
- - - - - - 0x010940 04:8930: 37        .byte $37   ; 
- - - - - - 0x010941 04:8931: 26        .byte $26   ; 
_off000_8932_32_04_disable:
- - - - - - 0x010942 04:8932: FF        .byte con_se_cb_stop   ; 



_off000_8933_63_04:
- D 0 - I - 0x010943 04:8933: 01        .byte $01, $B0, $88   ; 
- D 0 - I - 0x010946 04:8936: FC        .byte con_se_cb_FC   ; 
- D 0 - I - 0x010947 04:8937: FB        .byte con_se_cb_FB   ; 
- D 0 - I - 0x010948 04:8938: A0        .byte $A0   ; 
- D 0 - I - 0x010949 04:8939: BC        .byte $BC   ; 
- D 0 - I - 0x01094A 04:893A: A0        .byte $A0   ; 
- D 0 - I - 0x01094B 04:893B: 9E        .byte $9E   ; 
- D 0 - I - 0x01094C 04:893C: FE        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x01094D 04:893D: 12        .byte $12   ; 
- D 0 - I - 0x01094E 04:893E: FB        .byte con_se_cb_FB   ; 
- D 0 - I - 0x01094F 04:893F: 10        .byte $10   ; 
- D 0 - I - 0x010950 04:8940: BC        .byte $BC   ; 
- D 0 - I - 0x010951 04:8941: 10        .byte $10   ; 
- D 0 - I - 0x010952 04:8942: 9E        .byte $9E   ; 
- D 0 - I - 0x010953 04:8943: FE        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x010954 04:8944: 12        .byte $12   ; 
- D 0 - I - 0x010955 04:8945: FB        .byte con_se_cb_FB   ; 
- D 0 - I - 0x010956 04:8946: 00        .byte $00   ; 
- D 0 - I - 0x010957 04:8947: FE        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x010958 04:8948: 10        .byte $10   ; 
- D 0 - I - 0x010959 04:8949: FE        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x01095A 04:894A: 02        .byte $02   ; 
- - - - - - 0x01095B 04:894B: FF        .byte con_se_cb_stop   ; 



_off000_894C_3E_04:
- D 0 - I - 0x01095C 04:894C: 07        .byte $07, $30, $88   ; 
- D 0 - I - 0x01095F 04:894F: FB        .byte con_se_cb_FB   ; 
- D 0 - I - 0x010960 04:8950: 10        .byte $10   ; 
- D 0 - I - 0x010961 04:8951: 34        .byte $34   ; 
- D 0 - I - 0x010962 04:8952: FE        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x010963 04:8953: 14        .byte $14   ; 
- D 0 - I - 0x010964 04:8954: E9        .byte con_se_cb_E9, $70   ; 
- D 0 - I - 0x010966 04:8956: 10        .byte $10   ; 
- D 0 - I - 0x010967 04:8957: 35        .byte $35   ; 
- D 0 - I - 0x010968 04:8958: 10        .byte $10   ; 
- D 0 - I - 0x010969 04:8959: 36        .byte $36   ; 
- D 0 - I - 0x01096A 04:895A: 10        .byte $10   ; 
- D 0 - I - 0x01096B 04:895B: 37        .byte $37   ; 
- D 0 - I - 0x01096C 04:895C: 10        .byte $10   ; 
- D 0 - I - 0x01096D 04:895D: 38        .byte $38   ; 
- D 0 - I - 0x01096E 04:895E: 10        .byte $10   ; 
- D 0 - I - 0x01096F 04:895F: 39        .byte $39   ; 
- D 0 - I - 0x010970 04:8960: 10        .byte $10   ; 
- D 0 - I - 0x010971 04:8961: 3A        .byte $3A   ; 
- D 0 - I - 0x010972 04:8962: 10        .byte $10   ; 
- D 0 - I - 0x010973 04:8963: 3B        .byte $3B   ; 
- D 0 - I - 0x010974 04:8964: 10        .byte $10   ; 
- D 0 - I - 0x010975 04:8965: 3C        .byte $3C   ; 
- D 0 - I - 0x010976 04:8966: 10        .byte $10   ; 
- D 0 - I - 0x010977 04:8967: 3D        .byte $3D   ; 
- D 0 - I - 0x010978 04:8968: 10        .byte $10   ; 
- D 0 - I - 0x010979 04:8969: 3E        .byte $3E   ; 
- D 0 - I - 0x01097A 04:896A: 20        .byte $20   ; 
- D 0 - I - 0x01097B 04:896B: 3F        .byte $3F   ; 
- D 0 - I - 0x01097C 04:896C: 20        .byte $20   ; 
- D 0 - I - 0x01097D 04:896D: 40        .byte $40   ; 
- D 0 - I - 0x01097E 04:896E: 20        .byte $20   ; 
- D 0 - I - 0x01097F 04:896F: 41        .byte $41   ; 
- D 0 - I - 0x010980 04:8970: 20        .byte $20   ; 
- D 0 - I - 0x010981 04:8971: 42        .byte $42   ; 
- D 0 - I - 0x010982 04:8972: 20        .byte $20   ; 
- D 0 - I - 0x010983 04:8973: 43        .byte $43   ; 
- D 0 - I - 0x010984 04:8974: 20        .byte $20   ; 
- D 0 - I - 0x010985 04:8975: 44        .byte $44   ; 
- D 0 - I - 0x010986 04:8976: 30        .byte $30   ; 
- D 0 - I - 0x010987 04:8977: 45        .byte $45   ; 
- D 0 - I - 0x010988 04:8978: 30        .byte $30   ; 
- D 0 - I - 0x010989 04:8979: 46        .byte $46   ; 
- D 0 - I - 0x01098A 04:897A: 30        .byte $30   ; 
- D 0 - I - 0x01098B 04:897B: 47        .byte $47   ; 



_off000_897C_40_04:
- D 0 - I - 0x01098C 04:897C: 0F        .byte $0F, $70, $88   ; 
loc_FE_897F:
- D 0 - I - 0x01098F 04:897F: 40        .byte $40   ; 
- D 0 - I - 0x010990 04:8980: 48        .byte $48   ; 
- D 0 - I - 0x010991 04:8981: FE        .byte con_se_cb_jmp, $FF   ; 
- D 0 - I - 0x010993 04:8983: 7F 89     .word loc_FE_897F



_off000_8985_3E_05:
- D 0 - I - 0x010995 04:8985: 0F        .byte $0F   ; 
- D 0 - I - 0x010996 04:8986: FB        .byte con_se_cb_FB   ; 
- D 0 - I - 0x010997 04:8987: 1A        .byte $1A   ; 
- D 0 - I - 0x010998 04:8988: FE        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x010999 04:8989: 0A        .byte $0A   ; 
- D 0 - I - 0x01099A 04:898A: 2B        .byte $2B   ; 
- D 0 - I - 0x01099B 04:898B: 3B        .byte $3B   ; 
- D 0 - I - 0x01099C 04:898C: 4B        .byte $4B   ; 
- D 0 - I - 0x01099D 04:898D: 5C        .byte $5C   ; 
- D 0 - I - 0x01099E 04:898E: 6C        .byte $6C   ; 
- D 0 - I - 0x01099F 04:898F: 7C        .byte $7C   ; 
- D 0 - I - 0x0109A0 04:8990: 8D        .byte $8D   ; 
- D 0 - I - 0x0109A1 04:8991: 9D        .byte $9D   ; 



_off000_8992_40_05:
- D 0 - I - 0x0109A2 04:8992: 0F        .byte $0F   ; 
loc_FE_8993:
- D 0 - I - 0x0109A3 04:8993: AD        .byte $AD   ; 
- D 0 - I - 0x0109A4 04:8994: FE        .byte con_se_cb_jmp, $FF   ; 
- D 0 - I - 0x0109A6 04:8996: 93 89     .word loc_FE_8993



_off000_8998_5D_04:
- D 0 - I - 0x0109A8 04:8998: 03        .byte $03, $B0, $82   ; 
- D 0 - I - 0x0109AB 04:899B: F1        .byte $F1   ; 
- D 0 - I - 0x0109AC 04:899C: 41        .byte $41   ; 
- D 0 - I - 0x0109AD 04:899D: A1        .byte $A1   ; 
- D 0 - I - 0x0109AE 04:899E: 90        .byte $90   ; 
- D 0 - I - 0x0109AF 04:899F: 06        .byte $06, $70, $83   ; 
- D 0 - I - 0x0109B2 04:89A2: C0        .byte $C0   ; 
- D 0 - I - 0x0109B3 04:89A3: 44        .byte $44   ; 
- D 0 - I - 0x0109B4 04:89A4: B0        .byte $B0   ; 
- D 0 - I - 0x0109B5 04:89A5: 60        .byte $60   ; 
- D 0 - I - 0x0109B6 04:89A6: 90        .byte $90   ; 
- D 0 - I - 0x0109B7 04:89A7: 88        .byte $88   ; 
- D 0 - I - 0x0109B8 04:89A8: 90        .byte $90   ; 
- D 0 - I - 0x0109B9 04:89A9: 60        .byte $60   ; 
- D 0 - I - 0x0109BA 04:89AA: 80        .byte $80   ; 
- D 0 - I - 0x0109BB 04:89AB: 78        .byte $78   ; 
- D 0 - I - 0x0109BC 04:89AC: 60        .byte $60   ; 
- D 0 - I - 0x0109BD 04:89AD: B0        .byte $B0   ; 
- D 0 - I - 0x0109BE 04:89AE: 70        .byte $70   ; 
- D 0 - I - 0x0109BF 04:89AF: 78        .byte $78   ; 
- D 0 - I - 0x0109C0 04:89B0: 60        .byte $60   ; 
- D 0 - I - 0x0109C1 04:89B1: A0        .byte $A0   ; 
- D 0 - I - 0x0109C2 04:89B2: 50        .byte $50   ; 
- D 0 - I - 0x0109C3 04:89B3: F0        .byte $F0   ; 
- D 0 - I - 0x0109C4 04:89B4: 40        .byte $40   ; 
- D 0 - I - 0x0109C5 04:89B5: 90        .byte $90   ; 
- D 0 - I - 0x0109C6 04:89B6: 30        .byte $30   ; 
- D 0 - I - 0x0109C7 04:89B7: C0        .byte $C0   ; 
- D 0 - I - 0x0109C8 04:89B8: 21        .byte $21   ; 
- D 0 - I - 0x0109C9 04:89B9: 00        .byte $00   ; 
- D 0 - I - 0x0109CA 04:89BA: 20        .byte $20   ; 
- D 0 - I - 0x0109CB 04:89BB: B0        .byte $B0   ; 
- D 0 - I - 0x0109CC 04:89BC: 11        .byte $11   ; 
- D 0 - I - 0x0109CD 04:89BD: 00        .byte $00   ; 
- D 0 - I - 0x0109CE 04:89BE: 11        .byte $11   ; 
- D 0 - I - 0x0109CF 04:89BF: 30        .byte $30   ; 
- D 0 - I - 0x0109D0 04:89C0: FF        .byte con_se_cb_stop   ; 



_off000_89C1_5D_05:
- D 0 - I - 0x0109D1 04:89C1: 02        .byte $02   ; 
- D 0 - I - 0x0109D2 04:89C2: AC        .byte $AC   ; 
- D 0 - I - 0x0109D3 04:89C3: 7E        .byte $7E   ; 
- D 0 - I - 0x0109D4 04:89C4: 5D        .byte $5D   ; 
- D 0 - I - 0x0109D5 04:89C5: 04        .byte $04   ; 
- D 0 - I - 0x0109D6 04:89C6: 77        .byte $77   ; 
- D 0 - I - 0x0109D7 04:89C7: 78        .byte $78   ; 
- D 0 - I - 0x0109D8 04:89C8: 05        .byte $05   ; 
- D 0 - I - 0x0109D9 04:89C9: 77        .byte $77   ; 
- D 0 - I - 0x0109DA 04:89CA: 78        .byte $78   ; 
- D 0 - I - 0x0109DB 04:89CB: 04        .byte $04   ; 
- D 0 - I - 0x0109DC 04:89CC: 68        .byte $68   ; 
- D 0 - I - 0x0109DD 04:89CD: 69        .byte $69   ; 
- D 0 - I - 0x0109DE 04:89CE: 05        .byte $05   ; 
- D 0 - I - 0x0109DF 04:89CF: 68        .byte $68   ; 
- D 0 - I - 0x0109E0 04:89D0: 69        .byte $69   ; 
- D 0 - I - 0x0109E1 04:89D1: 04        .byte $04   ; 
- D 0 - I - 0x0109E2 04:89D2: 58        .byte $58   ; 
- D 0 - I - 0x0109E3 04:89D3: 59        .byte $59   ; 
- D 0 - I - 0x0109E4 04:89D4: 05        .byte $05   ; 
- D 0 - I - 0x0109E5 04:89D5: 5A        .byte $5A   ; 
- D 0 - I - 0x0109E6 04:89D6: 5B        .byte $5B   ; 
- D 0 - I - 0x0109E7 04:89D7: 04        .byte $04   ; 
- D 0 - I - 0x0109E8 04:89D8: 4A        .byte $4A   ; 
- D 0 - I - 0x0109E9 04:89D9: 4B        .byte $4B   ; 
- D 0 - I - 0x0109EA 04:89DA: 05        .byte $05   ; 
- D 0 - I - 0x0109EB 04:89DB: 4C        .byte $4C   ; 
- D 0 - I - 0x0109EC 04:89DC: 4D        .byte $4D   ; 
- D 0 - I - 0x0109ED 04:89DD: 04        .byte $04   ; 
- D 0 - I - 0x0109EE 04:89DE: 3C        .byte $3C   ; 
- D 0 - I - 0x0109EF 04:89DF: 3D        .byte $3D   ; 
- D 0 - I - 0x0109F0 04:89E0: 05        .byte $05   ; 
- D 0 - I - 0x0109F1 04:89E1: 3E        .byte $3E   ; 
- D 0 - I - 0x0109F2 04:89E2: 3F        .byte $3F   ; 
- D 0 - I - 0x0109F3 04:89E3: FF        .byte con_se_cb_stop   ; 



_off000_89E4_0E_04:
- D 0 - I - 0x0109F4 04:89E4: 01        .byte $01, $F0, $83   ; 
- D 0 - I - 0x0109F7 04:89E7: FB        .byte con_se_cb_FB   ; 
- D 0 - I - 0x0109F8 04:89E8: C2        .byte $C2   ; 
- D 0 - I - 0x0109F9 04:89E9: 0B        .byte $0B   ; 
- D 0 - I - 0x0109FA 04:89EA: 60        .byte $60   ; 
- D 0 - I - 0x0109FB 04:89EB: D5        .byte $D5   ; 
- D 0 - I - 0x0109FC 04:89EC: 71        .byte $71   ; 
- D 0 - I - 0x0109FD 04:89ED: 85        .byte $85   ; 
- D 0 - I - 0x0109FE 04:89EE: FE        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x0109FF 04:89EF: 02        .byte $02   ; 
- D 0 - I - 0x010A00 04:89F0: 00        .byte $00   ; 
- D 0 - I - 0x010A01 04:89F1: 03        .byte $03, $F0, $83   ; 
- D 0 - I - 0x010A04 04:89F4: 30        .byte $30   ; 
- D 0 - I - 0x010A05 04:89F5: FB        .byte $FB   ; 
- D 0 - I - 0x010A06 04:89F6: E8        .byte con_se_cb_E8, $01   ; 
- D 0 - I - 0x010A08 04:89F8: 00        .byte $00   ; 
- D 0 - I - 0x010A09 04:89F9: E8        .byte con_se_cb_E8, $05   ; 
- D 0 - I - 0x010A0B 04:89FB: 41        .byte $41   ; 
- D 0 - I - 0x010A0C 04:89FC: 1B        .byte $1B   ; 
- D 0 - I - 0x010A0D 04:89FD: 41        .byte $41   ; 
- D 0 - I - 0x010A0E 04:89FE: 66        .byte $66   ; 
- D 0 - I - 0x010A0F 04:89FF: 31        .byte $31   ; 
- D 0 - I - 0x010A10 04:8A00: B3        .byte $B3   ; 
- D 0 - I - 0x010A11 04:8A01: 22        .byte $22   ; 
- D 0 - I - 0x010A12 04:8A02: 14        .byte $14   ; 
- D 0 - I - 0x010A13 04:8A03: 12        .byte $12   ; 
- D 0 - I - 0x010A14 04:8A04: 9D        .byte $9D   ; 
- D 0 - I - 0x010A15 04:8A05: 13        .byte $13   ; 
- D 0 - I - 0x010A16 04:8A06: 49        .byte $49   ; 
- D 0 - I - 0x010A17 04:8A07: FF        .byte con_se_cb_stop   ; 



_off000_8A08_0E_05:
- D 0 - I - 0x010A18 04:8A08: 01        .byte $01   ; 
- D 0 - I - 0x010A19 04:8A09: FB        .byte con_se_cb_FB   ; 
- D 0 - I - 0x010A1A 04:8A0A: E8        .byte $E8   ; 
- D 0 - I - 0x010A1B 04:8A0B: DE        .byte $DE   ; 
- D 0 - I - 0x010A1C 04:8A0C: 29        .byte $29   ; 
- D 0 - I - 0x010A1D 04:8A0D: 18        .byte $18   ; 
- D 0 - I - 0x010A1E 04:8A0E: FE        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x010A1F 04:8A0F: 02        .byte $02   ; 
- D 0 - I - 0x010A20 04:8A10: 03        .byte $03   ; 
- D 0 - I - 0x010A21 04:8A11: 79        .byte $79   ; 
- D 0 - I - 0x010A22 04:8A12: 2E        .byte $2E   ; 
- D 0 - I - 0x010A23 04:8A13: 3E        .byte $3E   ; 
- D 0 - I - 0x010A24 04:8A14: 29        .byte $29   ; 
- D 0 - I - 0x010A25 04:8A15: 2D        .byte $2D   ; 
- D 0 - I - 0x010A26 04:8A16: 1B        .byte $1B   ; 
- D 0 - I - 0x010A27 04:8A17: 1C        .byte $1C   ; 
- D 0 - I - 0x010A28 04:8A18: FF        .byte con_se_cb_stop   ; 



_off000_8A19_1E_04:
- D 0 - I - 0x010A29 04:8A19: 02        .byte $02, $F0, $83   ; 
- D 0 - I - 0x010A2C 04:8A1C: B2        .byte $B2   ; 
- D 0 - I - 0x010A2D 04:8A1D: 00        .byte $00   ; 
- D 0 - I - 0x010A2E 04:8A1E: 01        .byte $01, $30, $83   ; 
- D 0 - I - 0x010A31 04:8A21: A0        .byte $A0   ; 
- D 0 - I - 0x010A32 04:8A22: 91        .byte $91   ; 
- D 0 - I - 0x010A33 04:8A23: 90        .byte $90   ; 
- D 0 - I - 0x010A34 04:8A24: C1        .byte $C1   ; 
- D 0 - I - 0x010A35 04:8A25: 80        .byte $80   ; 
- D 0 - I - 0x010A36 04:8A26: F1        .byte $F1   ; 
- D 0 - I - 0x010A37 04:8A27: 71        .byte $71   ; 
- D 0 - I - 0x010A38 04:8A28: 21        .byte $21   ; 
- D 0 - I - 0x010A39 04:8A29: 02        .byte $02, $F0, $83   ; 
- D 0 - I - 0x010A3C 04:8A2C: 50        .byte $50   ; 
- D 0 - I - 0x010A3D 04:8A2D: 52        .byte $52   ; 
- D 0 - I - 0x010A3E 04:8A2E: 30        .byte $30   ; 
- D 0 - I - 0x010A3F 04:8A2F: FE        .byte $FE   ; 
- D 0 - I - 0x010A40 04:8A30: 21        .byte $21   ; 
- D 0 - I - 0x010A41 04:8A31: C2        .byte $C2   ; 
- D 0 - I - 0x010A42 04:8A32: 11        .byte $11   ; 
- D 0 - I - 0x010A43 04:8A33: DA        .byte $DA   ; 
- D 0 - I - 0x010A44 04:8A34: FF        .byte con_se_cb_stop   ; 



_off000_8A35_1E_05:
- D 0 - I - 0x010A45 04:8A35: 02        .byte $02   ; 
- D 0 - I - 0x010A46 04:8A36: DE        .byte $DE   ; 
- D 0 - I - 0x010A47 04:8A37: AA        .byte $AA   ; 
- D 0 - I - 0x010A48 04:8A38: 8A        .byte $8A   ; 
- D 0 - I - 0x010A49 04:8A39: 78        .byte $78   ; 
- D 0 - I - 0x010A4A 04:8A3A: 5A        .byte $5A   ; 
- D 0 - I - 0x010A4B 04:8A3B: 03        .byte $03   ; 
- D 0 - I - 0x010A4C 04:8A3C: 3B        .byte $3B   ; 
- D 0 - I - 0x010A4D 04:8A3D: 3D        .byte $3D   ; 
- D 0 - I - 0x010A4E 04:8A3E: 2E        .byte $2E   ; 
- D 0 - I - 0x010A4F 04:8A3F: 2C        .byte $2C   ; 
- D 0 - I - 0x010A50 04:8A40: 1D        .byte $1D   ; 
- D 0 - I - 0x010A51 04:8A41: FF        .byte con_se_cb_stop   ; 



_off000_8A42_50_04:
- D 0 - I - 0x010A52 04:8A42: 04        .byte $04, $30, $83   ; 
- D 0 - I - 0x010A55 04:8A45: D2        .byte $D2   ; 
- D 0 - I - 0x010A56 04:8A46: 30        .byte $30   ; 
- D 0 - I - 0x010A57 04:8A47: B2        .byte $B2   ; 
- D 0 - I - 0x010A58 04:8A48: FE        .byte $FE   ; 
- D 0 - I - 0x010A59 04:8A49: FD        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x010A5A 04:8A4A: 57 8A     .word sub_FD_8A57
- D 0 - I - 0x010A5C 04:8A4C: FF        .byte con_se_cb_stop   ; 



_off000_8A4D_50_01:
- D 0 - I - 0x010A5D 04:8A4D: 01        .byte $01, $B0, $84   ; 
- D 0 - I - 0x010A60 04:8A50: 00        .byte $00   ; 
- D 0 - I - 0x010A61 04:8A51: E8        .byte con_se_cb_E8, $08   ; 
- D 0 - I - 0x010A63 04:8A53: D2        .byte $D2   ; 
- D 0 - I - 0x010A64 04:8A54: 60        .byte $60   ; 
- D 0 - I - 0x010A65 04:8A55: EA        .byte con_se_cb_EA, $04   ; 
sub_FD_8A57:
- D 0 - I - 0x010A67 04:8A57: 09        .byte $09, $F0, $84   ; 
- D 0 - I - 0x010A6A 04:8A5A: E1        .byte $E1   ; 
- D 0 - I - 0x010A6B 04:8A5B: 22        .byte $22   ; 
- D 0 - I - 0x010A6C 04:8A5C: E1        .byte $E1   ; 
- D 0 - I - 0x010A6D 04:8A5D: 44        .byte $44   ; 
- D 0 - I - 0x010A6E 04:8A5E: E8        .byte con_se_cb_E8, $0A   ; 
- D 0 - I - 0x010A70 04:8A60: E1        .byte $E1   ; 
- D 0 - I - 0x010A71 04:8A61: 66        .byte $66   ; 
- D 0 - I - 0x010A72 04:8A62: D1        .byte $D1   ; 
- D 0 - I - 0x010A73 04:8A63: 88        .byte $88   ; 
- D 0 - I - 0x010A74 04:8A64: E8        .byte con_se_cb_E8, $0B   ; 
- D 0 - I - 0x010A76 04:8A66: C1        .byte $C1   ; 
- D 0 - I - 0x010A77 04:8A67: AA        .byte $AA   ; 
- D 0 - I - 0x010A78 04:8A68: B1        .byte $B1   ; 
- D 0 - I - 0x010A79 04:8A69: CC        .byte $CC   ; 
- D 0 - I - 0x010A7A 04:8A6A: E8        .byte con_se_cb_E8, $0C   ; 
- D 0 - I - 0x010A7C 04:8A6C: A1        .byte $A1   ; 
- D 0 - I - 0x010A7D 04:8A6D: EE        .byte $EE   ; 
- D 0 - I - 0x010A7E 04:8A6E: 92        .byte $92   ; 
- D 0 - I - 0x010A7F 04:8A6F: 11        .byte $11   ; 
- D 0 - I - 0x010A80 04:8A70: 72        .byte $72   ; 
- D 0 - I - 0x010A81 04:8A71: 33        .byte $33   ; 
- D 0 - I - 0x010A82 04:8A72: 52        .byte $52   ; 
- D 0 - I - 0x010A83 04:8A73: 55        .byte $55   ; 
- D 0 - I - 0x010A84 04:8A74: 32        .byte $32   ; 
- D 0 - I - 0x010A85 04:8A75: 77        .byte $77   ; 
- D 0 - I - 0x010A86 04:8A76: 12        .byte $12   ; 
- D 0 - I - 0x010A87 04:8A77: 99        .byte $99   ; 
- D 0 - I - 0x010A88 04:8A78: FF        .byte con_se_cb_stop   ; 



_off000_8A79_50_05:
- D 0 - I - 0x010A89 04:8A79: 02        .byte $02   ; 
- D 0 - I - 0x010A8A 04:8A7A: EE        .byte $EE   ; 
- D 0 - I - 0x010A8B 04:8A7B: DD        .byte $DD   ; 
- D 0 - I - 0x010A8C 04:8A7C: DF        .byte $DF   ; 
- D 0 - I - 0x010A8D 04:8A7D: AC        .byte $AC   ; 
- D 0 - I - 0x010A8E 04:8A7E: 0C        .byte $0C   ; 
- D 0 - I - 0x010A8F 04:8A7F: 37        .byte $37   ; 
- D 0 - I - 0x010A90 04:8A80: 48        .byte $48   ; 
- D 0 - I - 0x010A91 04:8A81: 59        .byte $59   ; 
- D 0 - I - 0x010A92 04:8A82: 6A        .byte $6A   ; 
- D 0 - I - 0x010A93 04:8A83: 6B        .byte $6B   ; 
- D 0 - I - 0x010A94 04:8A84: 6C        .byte $6C   ; 
- D 0 - I - 0x010A95 04:8A85: 6D        .byte $6D   ; 
- D 0 - I - 0x010A96 04:8A86: 7E        .byte $7E   ; 
- D 0 - I - 0x010A97 04:8A87: 7F        .byte $7F   ; 
- D 0 - I - 0x010A98 04:8A88: FF        .byte con_se_cb_stop   ; 



_off000_8A89_2A_04:
- D 0 - I - 0x010A99 04:8A89: 03        .byte $03, $70, $81   ; 
- D 0 - I - 0x010A9C 04:8A8C: 60        .byte $60   ; 
- D 0 - I - 0x010A9D 04:8A8D: 40        .byte $40   ; 
- D 0 - I - 0x010A9E 04:8A8E: 03        .byte $03, $70, $8D   ; 
- D 0 - I - 0x010AA1 04:8A91: A1        .byte $A1   ; 
- D 0 - I - 0x010AA2 04:8A92: D0        .byte $D0   ; 
- D 0 - I - 0x010AA3 04:8A93: 04        .byte $04, $70, $8D   ; 
- D 0 - I - 0x010AA6 04:8A96: 50        .byte $50   ; 
- D 0 - I - 0x010AA7 04:8A97: A0        .byte $A0   ; 
- D 0 - I - 0x010AA8 04:8A98: FF        .byte con_se_cb_stop   ; 



_off000_8A99_2A_05:
- D 0 - I - 0x010AA9 04:8A99: 01        .byte $01   ; 
- D 0 - I - 0x010AAA 04:8A9A: DD        .byte $DD   ; 
- D 0 - I - 0x010AAB 04:8A9B: DE        .byte $DE   ; 
- D 0 - I - 0x010AAC 04:8A9C: CC        .byte $CC   ; 
- D 0 - I - 0x010AAD 04:8A9D: BB        .byte $BB   ; 
- D 0 - I - 0x010AAE 04:8A9E: AA        .byte $AA   ; 
- D 0 - I - 0x010AAF 04:8A9F: A9        .byte $A9   ; 
- D 0 - I - 0x010AB0 04:8AA0: A8        .byte $A8   ; 
- D 0 - I - 0x010AB1 04:8AA1: A7        .byte $A7   ; 
- D 0 - I - 0x010AB2 04:8AA2: A6        .byte $A6   ; 
- D 0 - I - 0x010AB3 04:8AA3: 85        .byte $85   ; 
- D 0 - I - 0x010AB4 04:8AA4: 54        .byte $54   ; 
- D 0 - I - 0x010AB5 04:8AA5: 33        .byte $33   ; 
- D 0 - I - 0x010AB6 04:8AA6: 22        .byte $22   ; 
- D 0 - I - 0x010AB7 04:8AA7: FF        .byte con_se_cb_stop   ; 



_off000_8AA8_61_04:
- D 0 - I - 0x010AB8 04:8AA8: 04        .byte $04, $30, $89   ; 
- D 0 - I - 0x010ABB 04:8AAB: D1        .byte $D1   ; 
- D 0 - I - 0x010ABC 04:8AAC: 00        .byte $00   ; 
- D 0 - I - 0x010ABD 04:8AAD: D0        .byte $D0   ; 
- D 0 - I - 0x010ABE 04:8AAE: 40        .byte $40   ; 
- D 0 - I - 0x010ABF 04:8AAF: 61        .byte $61   ; 
- D 0 - I - 0x010AC0 04:8AB0: 00        .byte $00   ; 
- D 0 - I - 0x010AC1 04:8AB1: 20        .byte $20   ; 
- D 0 - I - 0x010AC2 04:8AB2: 40        .byte $40   ; 
- D 0 - I - 0x010AC3 04:8AB3: 21        .byte $21   ; 
- D 0 - I - 0x010AC4 04:8AB4: 00        .byte $00   ; 
- D 0 - I - 0x010AC5 04:8AB5: 10        .byte $10   ; 
- D 0 - I - 0x010AC6 04:8AB6: 40        .byte $40   ; 
- D 0 - I - 0x010AC7 04:8AB7: FF        .byte con_se_cb_stop   ; 



_off000_8AB8_62_04:
- D 0 - I - 0x010AC8 04:8AB8: 09        .byte $09, $F0, $9A   ; 
- D 0 - I - 0x010ACB 04:8ABB: F0        .byte $F0   ; 
- D 0 - I - 0x010ACC 04:8ABC: A0        .byte $A0   ; 
- D 0 - I - 0x010ACD 04:8ABD: EC        .byte con_se_cb_EC   ; 
- D 0 - I - 0x010ACE 04:8ABE: B1        .byte $B1   ; 
- D 0 - I - 0x010ACF 04:8ABF: 61        .byte $61   ; 
- D 0 - I - 0x010AD0 04:8AC0: 31        .byte $31   ; 
- D 0 - I - 0x010AD1 04:8AC1: 11        .byte $11   ; 
- D 0 - I - 0x010AD2 04:8AC2: FF        .byte con_se_cb_stop   ; 



_off000_8AC3_64_04:
- D 0 - I - 0x010AD3 04:8AC3: 04        .byte $04, $F0, $82   ; 
- D 0 - I - 0x010AD6 04:8AC6: F1        .byte $F1   ; 
- D 0 - I - 0x010AD7 04:8AC7: 00        .byte $00   ; 
- D 0 - I - 0x010AD8 04:8AC8: FD        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x010AD9 04:8AC9: 01 8B     .word sub_FD_8B01
- D 0 - I - 0x010ADB 04:8ACB: FF        .byte con_se_cb_stop   ; 



_off000_8ACC_64_01:
- D 0 - I - 0x010ADC 04:8ACC: 04        .byte $04, $F0, $82   ; 
- D 0 - I - 0x010ADF 04:8ACF: F0        .byte $F0   ; 
- D 0 - I - 0x010AE0 04:8AD0: E0        .byte $E0   ; 
- D 0 - I - 0x010AE1 04:8AD1: EB        .byte con_se_cb_EB, $02   ; 
- D 0 - I - 0x010AE3 04:8AD3: FD        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x010AE4 04:8AD4: 01 8B     .word sub_FD_8B01
- D 0 - I - 0x010AE6 04:8AD6: FF        .byte con_se_cb_stop   ; 



_off000_8AD7_64_05:
- D 0 - I - 0x010AE7 04:8AD7: 01        .byte $01   ; 
- D 0 - I - 0x010AE8 04:8AD8: F8        .byte $F8   ; 
- D 0 - I - 0x010AE9 04:8AD9: 10        .byte $10   ; 
- D 0 - I - 0x010AEA 04:8ADA: FE        .byte $FE   ; 
- D 0 - I - 0x010AEB 04:8ADB: 00        .byte $00   ; 
- D 0 - I - 0x010AEC 04:8ADC: 04        .byte $04   ; 
- D 0 - I - 0x010AED 04:8ADD: F6        .byte $F6   ; 
- D 0 - I - 0x010AEE 04:8ADE: 01        .byte $01   ; 
- D 0 - I - 0x010AEF 04:8ADF: 10        .byte $10   ; 
- D 0 - I - 0x010AF0 04:8AE0: FB        .byte $FB   ; 
- D 0 - I - 0x010AF1 04:8AE1: EC        .byte $EC   ; 
- D 0 - I - 0x010AF2 04:8AE2: BD        .byte $BD   ; 
- D 0 - I - 0x010AF3 04:8AE3: BC        .byte $BC   ; 
- D 0 - I - 0x010AF4 04:8AE4: BD        .byte $BD   ; 
- D 0 - I - 0x010AF5 04:8AE5: BC        .byte $BC   ; 
- D 0 - I - 0x010AF6 04:8AE6: BB        .byte $BB   ; 
- D 0 - I - 0x010AF7 04:8AE7: 9A        .byte $9A   ; 
- D 0 - I - 0x010AF8 04:8AE8: 9A        .byte $9A   ; 
- D 0 - I - 0x010AF9 04:8AE9: 9A        .byte $9A   ; 
- D 0 - I - 0x010AFA 04:8AEA: 02        .byte $02   ; 
- D 0 - I - 0x010AFB 04:8AEB: 7B        .byte $7B   ; 
- D 0 - I - 0x010AFC 04:8AEC: 7C        .byte $7C   ; 
- D 0 - I - 0x010AFD 04:8AED: 7D        .byte $7D   ; 
- D 0 - I - 0x010AFE 04:8AEE: 5E        .byte $5E   ; 
- D 0 - I - 0x010AFF 04:8AEF: 5D        .byte $5D   ; 
- D 0 - I - 0x010B00 04:8AF0: 5C        .byte $5C   ; 
- D 0 - I - 0x010B01 04:8AF1: 3D        .byte $3D   ; 
- D 0 - I - 0x010B02 04:8AF2: 3C        .byte $3C   ; 
- D 0 - I - 0x010B03 04:8AF3: 3C        .byte $3C   ; 
- D 0 - I - 0x010B04 04:8AF4: 3B        .byte $3B   ; 
- D 0 - I - 0x010B05 04:8AF5: 2B        .byte $2B   ; 
- D 0 - I - 0x010B06 04:8AF6: 2B        .byte $2B   ; 
- D 0 - I - 0x010B07 04:8AF7: 2C        .byte $2C   ; 
- D 0 - I - 0x010B08 04:8AF8: 2D        .byte $2D   ; 
- D 0 - I - 0x010B09 04:8AF9: 2D        .byte $2D   ; 
- D 0 - I - 0x010B0A 04:8AFA: 2E        .byte $2E   ; 
- D 0 - I - 0x010B0B 04:8AFB: 1B        .byte $1B   ; 
- D 0 - I - 0x010B0C 04:8AFC: 1B        .byte $1B   ; 
- D 0 - I - 0x010B0D 04:8AFD: 1C        .byte $1C   ; 
- D 0 - I - 0x010B0E 04:8AFE: 1D        .byte $1D   ; 
- D 0 - I - 0x010B0F 04:8AFF: 1D        .byte $1D   ; 
- D 0 - I - 0x010B10 04:8B00: FF        .byte con_se_cb_stop   ; 



sub_FD_8B01:
- D 0 - I - 0x010B11 04:8B01: EA        .byte con_se_cb_EA, $83   ; 
- D 0 - I - 0x010B13 04:8B03: F0        .byte $F0   ; 
- D 0 - I - 0x010B14 04:8B04: 68        .byte $68   ; 
- D 0 - I - 0x010B15 04:8B05: E0        .byte $E0   ; 
- D 0 - I - 0x010B16 04:8B06: 85        .byte $85   ; 
- D 0 - I - 0x010B17 04:8B07: B0        .byte $B0   ; 
- D 0 - I - 0x010B18 04:8B08: A7        .byte $A7   ; 
- D 0 - I - 0x010B19 04:8B09: 71        .byte $71   ; 
- D 0 - I - 0x010B1A 04:8B0A: 00        .byte $00   ; 
- D 0 - I - 0x010B1B 04:8B0B: 51        .byte $51   ; 
- D 0 - I - 0x010B1C 04:8B0C: 31        .byte $31   ; 
- D 0 - I - 0x010B1D 04:8B0D: FB        .byte con_se_cb_FB   ; 
- D 0 - I - 0x010B1E 04:8B0E: 20        .byte $20   ; 
- D 0 - I - 0x010B1F 04:8B0F: 68        .byte $68   ; 
- D 0 - I - 0x010B20 04:8B10: 20        .byte $20   ; 
- D 0 - I - 0x010B21 04:8B11: 85        .byte $85   ; 
- D 0 - I - 0x010B22 04:8B12: 20        .byte $20   ; 
- D 0 - I - 0x010B23 04:8B13: A7        .byte $A7   ; 
- D 0 - I - 0x010B24 04:8B14: 11        .byte $11   ; 
- D 0 - I - 0x010B25 04:8B15: 00        .byte $00   ; 
- D 0 - I - 0x010B26 04:8B16: 11        .byte $11   ; 
- D 0 - I - 0x010B27 04:8B17: 31        .byte $31   ; 
- D 0 - I - 0x010B28 04:8B18: ED        .byte con_se_cb_ED, $01   ; 
- D 0 - I - 0x010B2A 04:8B1A: FE        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x010B2B 04:8B1B: 02        .byte $02   ; 
- D 0 - I - 0x010B2C 04:8B1C: FF        .byte con_se_cb_stop   ; 



_off000_8B1D_53_05:
- D 0 - I - 0x010B2D 04:8B1D: 01        .byte $01   ; 
- D 0 - I - 0x010B2E 04:8B1E: 8C        .byte $8C   ; 
- D 0 - I - 0x010B2F 04:8B1F: AC        .byte $AC   ; 
- D 0 - I - 0x010B30 04:8B20: DD        .byte $DD   ; 
- D 0 - I - 0x010B31 04:8B21: ED        .byte $ED   ; 
- D 0 - I - 0x010B32 04:8B22: 2E        .byte $2E   ; 
- D 0 - I - 0x010B33 04:8B23: 8E        .byte $8E   ; 
- D 0 - I - 0x010B34 04:8B24: 9F        .byte $9F   ; 
- D 0 - I - 0x010B35 04:8B25: 5F        .byte $5F   ; 
- D 0 - I - 0x010B36 04:8B26: 3F        .byte $3F   ; 
- D 0 - I - 0x010B37 04:8B27: 1F        .byte $1F   ; 
- D 0 - I - 0x010B38 04:8B28: 2E        .byte $2E   ; 
- D 0 - I - 0x010B39 04:8B29: 2E        .byte $2E   ; 
- D 0 - I - 0x010B3A 04:8B2A: 2F        .byte $2F   ; 
- D 0 - I - 0x010B3B 04:8B2B: 1F        .byte $1F   ; 
- D 0 - I - 0x010B3C 04:8B2C: 1F        .byte $1F   ; 
_off000_8B2D_53_04_disable:
- D 0 - I - 0x010B3D 04:8B2D: FF        .byte con_se_cb_stop   ; 



_off000_8B2E_10_04:
- D 0 - I - 0x010B3E 04:8B2E: 02        .byte $02, $30, $85   ; 
- D 0 - I - 0x010B41 04:8B31: 30        .byte $30   ; 
- D 0 - I - 0x010B42 04:8B32: 90        .byte $90   ; 
- D 0 - I - 0x010B43 04:8B33: EC        .byte con_se_cb_EC   ; 
- D 0 - I - 0x010B44 04:8B34: 40        .byte $40   ; 
- D 0 - I - 0x010B45 04:8B35: 60        .byte $60   ; 
- D 0 - I - 0x010B46 04:8B36: 70        .byte $70   ; 
- D 0 - I - 0x010B47 04:8B37: 70        .byte $70   ; 
- D 0 - I - 0x010B48 04:8B38: 80        .byte $80   ; 
- D 0 - I - 0x010B49 04:8B39: 02        .byte $02, $30, $85   ; 
- D 0 - I - 0x010B4C 04:8B3C: 10        .byte $10   ; 
- D 0 - I - 0x010B4D 04:8B3D: B0        .byte $B0   ; 
- D 0 - I - 0x010B4E 04:8B3E: EC        .byte con_se_cb_EC   ; 
- D 0 - I - 0x010B4F 04:8B3F: 20        .byte $20   ; 
- D 0 - I - 0x010B50 04:8B40: 20        .byte $20   ; 
- D 0 - I - 0x010B51 04:8B41: 20        .byte $20   ; 
- D 0 - I - 0x010B52 04:8B42: 10        .byte $10   ; 
- D 0 - I - 0x010B53 04:8B43: FF        .byte con_se_cb_stop   ; 



_off000_8B44_10_05:
- D 0 - I - 0x010B54 04:8B44: 02        .byte $02   ; 
- D 0 - I - 0x010B55 04:8B45: 23        .byte $23   ; 
- D 0 - I - 0x010B56 04:8B46: 24        .byte $24   ; 
- D 0 - I - 0x010B57 04:8B47: 26        .byte $26   ; 
- D 0 - I - 0x010B58 04:8B48: 28        .byte $28   ; 
- D 0 - I - 0x010B59 04:8B49: 29        .byte $29   ; 
- D 0 - I - 0x010B5A 04:8B4A: 2A        .byte $2A   ; 
- D 0 - I - 0x010B5B 04:8B4B: 17        .byte $17   ; 
- D 0 - I - 0x010B5C 04:8B4C: 18        .byte $18   ; 
- D 0 - I - 0x010B5D 04:8B4D: 19        .byte $19   ; 
- D 0 - I - 0x010B5E 04:8B4E: FF        .byte con_se_cb_stop   ; 



_off000_8B4F_58_05:
- D 0 - I - 0x010B5F 04:8B4F: 01        .byte $01   ; 
- D 0 - I - 0x010B60 04:8B50: 44        .byte $44   ; 
- D 0 - I - 0x010B61 04:8B51: 85        .byte $85   ; 
- D 0 - I - 0x010B62 04:8B52: 02        .byte $02   ; 
- D 0 - I - 0x010B63 04:8B53: BD        .byte $BD   ; 
- D 0 - I - 0x010B64 04:8B54: DC        .byte $DC   ; 
- D 0 - I - 0x010B65 04:8B55: 10        .byte $10   ; 
- D 0 - I - 0x010B66 04:8B56: FB        .byte $FB   ; 
- D 0 - I - 0x010B67 04:8B57: AD        .byte $AD   ; 
- D 0 - I - 0x010B68 04:8B58: 8D        .byte $8D   ; 
- D 0 - I - 0x010B69 04:8B59: AA        .byte $AA   ; 
- D 0 - I - 0x010B6A 04:8B5A: 88        .byte $88   ; 
- D 0 - I - 0x010B6B 04:8B5B: 86        .byte $86   ; 
- D 0 - I - 0x010B6C 04:8B5C: 4C        .byte $4C   ; 
- D 0 - I - 0x010B6D 04:8B5D: 4A        .byte $4A   ; 
- D 0 - I - 0x010B6E 04:8B5E: 48        .byte $48   ; 
- D 0 - I - 0x010B6F 04:8B5F: 46        .byte $46   ; 
- D 0 - I - 0x010B70 04:8B60: 2D        .byte $2D   ; 
- D 0 - I - 0x010B71 04:8B61: 2B        .byte $2B   ; 
- D 0 - I - 0x010B72 04:8B62: 29        .byte $29   ; 
- D 0 - I - 0x010B73 04:8B63: 27        .byte $27   ; 
- D 0 - I - 0x010B74 04:8B64: 29        .byte $29   ; 
- D 0 - I - 0x010B75 04:8B65: 2A        .byte $2A   ; 
- D 0 - I - 0x010B76 04:8B66: 2B        .byte $2B   ; 
- D 0 - I - 0x010B77 04:8B67: 2C        .byte $2C   ; 
- D 0 - I - 0x010B78 04:8B68: 2D        .byte $2D   ; 
- D 0 - I - 0x010B79 04:8B69: FB        .byte con_se_cb_FB   ; 
- D 0 - I - 0x010B7A 04:8B6A: 3D        .byte $3D   ; 
- D 0 - I - 0x010B7B 04:8B6B: FE        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x010B7C 04:8B6C: 50        .byte $50   ; 
- - - - - - 0x010B7D 04:8B6D: FF        .byte con_se_cb_stop   ; 



_off000_8B6E_08_04:
- D 0 - I - 0x010B7E 04:8B6E: 01        .byte $01, $B0, $88   ; 
- D 0 - I - 0x010B81 04:8B71: 76        .byte $76   ; 
- D 0 - I - 0x010B82 04:8B72: A0        .byte $A0   ; 
- D 0 - I - 0x010B83 04:8B73: 76        .byte $76   ; 
- D 0 - I - 0x010B84 04:8B74: C0        .byte $C0   ; 
- D 0 - I - 0x010B85 04:8B75: 76        .byte $76   ; 
- D 0 - I - 0x010B86 04:8B76: E0        .byte $E0   ; 
- D 0 - I - 0x010B87 04:8B77: 76        .byte $76   ; 
- D 0 - I - 0x010B88 04:8B78: C0        .byte $C0   ; 
- D 0 - I - 0x010B89 04:8B79: 76        .byte $76   ; 
- D 0 - I - 0x010B8A 04:8B7A: A0        .byte $A0   ; 
_off000_8B7B_08_05_disable:
- D 0 - I - 0x010B8B 04:8B7B: FF        .byte con_se_cb_stop   ; 



_off000_8B7C_5F_04:
- D 0 - I - 0x010B8C 04:8B7C: 01        .byte $01, $F0, $84   ; 
- D 0 - I - 0x010B8F 04:8B7F: E8        .byte con_se_cb_E8, $11   ; 
- D 0 - I - 0x010B91 04:8B81: A0        .byte $A0   ; 
- D 0 - I - 0x010B92 04:8B82: 8C        .byte $8C   ; 
- D 0 - I - 0x010B93 04:8B83: E8        .byte con_se_cb_E8, $02   ; 
- D 0 - I - 0x010B95 04:8B85: 00        .byte $00   ; 
- D 0 - I - 0x010B96 04:8B86: 0B        .byte $0B, $F0, $83   ; 
- D 0 - I - 0x010B99 04:8B89: D1        .byte $D1   ; 
- D 0 - I - 0x010B9A 04:8B8A: E0        .byte $E0   ; 
- D 0 - I - 0x010B9B 04:8B8B: EC        .byte con_se_cb_EC   ; 
- D 0 - I - 0x010B9C 04:8B8C: B1        .byte $B1   ; 
- D 0 - I - 0x010B9D 04:8B8D: 91        .byte $91   ; 
- D 0 - I - 0x010B9E 04:8B8E: 71        .byte $71   ; 
- D 0 - I - 0x010B9F 04:8B8F: 51        .byte $51   ; 
- D 0 - I - 0x010BA0 04:8B90: 31        .byte $31   ; 
- D 0 - I - 0x010BA1 04:8B91: FF        .byte con_se_cb_stop   ; 



_off000_8B92_5F_05:
- D 0 - I - 0x010BA2 04:8B92: 02        .byte $02   ; 
- D 0 - I - 0x010BA3 04:8B93: 14        .byte $14   ; 
- D 0 - I - 0x010BA4 04:8B94: 25        .byte $25   ; 
- D 0 - I - 0x010BA5 04:8B95: 36        .byte $36   ; 
- D 0 - I - 0x010BA6 04:8B96: 37        .byte $37   ; 
- D 0 - I - 0x010BA7 04:8B97: 38        .byte $38   ; 
- D 0 - I - 0x010BA8 04:8B98: 39        .byte $39   ; 
- D 0 - I - 0x010BA9 04:8B99: 3A        .byte $3A   ; 
- D 0 - I - 0x010BAA 04:8B9A: 3B        .byte $3B   ; 
- D 0 - I - 0x010BAB 04:8B9B: 3C        .byte $3C   ; 
- D 0 - I - 0x010BAC 04:8B9C: 3D        .byte $3D   ; 
- D 0 - I - 0x010BAD 04:8B9D: 03        .byte $03   ; 
- D 0 - I - 0x010BAE 04:8B9E: 00        .byte $00   ; 
- D 0 - I - 0x010BAF 04:8B9F: 7D        .byte $7D   ; 
- D 0 - I - 0x010BB0 04:8BA0: 4E        .byte $4E   ; 
- D 0 - I - 0x010BB1 04:8BA1: 00        .byte $00   ; 
- D 0 - I - 0x010BB2 04:8BA2: 02        .byte $02   ; 
- D 0 - I - 0x010BB3 04:8BA3: 00        .byte $00   ; 
- D 0 - I - 0x010BB4 04:8BA4: 03        .byte $03   ; 
- D 0 - I - 0x010BB5 04:8BA5: 5D        .byte $5D   ; 
- D 0 - I - 0x010BB6 04:8BA6: 3E        .byte $3E   ; 
- D 0 - I - 0x010BB7 04:8BA7: 00        .byte $00   ; 
- D 0 - I - 0x010BB8 04:8BA8: 02        .byte $02   ; 
- D 0 - I - 0x010BB9 04:8BA9: 00        .byte $00   ; 
- D 0 - I - 0x010BBA 04:8BAA: 03        .byte $03   ; 
- D 0 - I - 0x010BBB 04:8BAB: 2D        .byte $2D   ; 
- D 0 - I - 0x010BBC 04:8BAC: 1E        .byte $1E   ; 
- D 0 - I - 0x010BBD 04:8BAD: FF        .byte con_se_cb_stop   ; 



_off000_8BAE_5B_04:
- D 0 - I - 0x010BBE 04:8BAE: 02        .byte $02   ; 
- D 0 - I - 0x010BBF 04:8BAF: F0        .byte $F0   ; 
- D 0 - I - 0x010BC0 04:8BB0: 85        .byte $85   ; 
- D 0 - I - 0x010BC1 04:8BB1: 50        .byte $50   ; 
- D 0 - I - 0x010BC2 04:8BB2: A0        .byte $A0   ; 
- D 0 - I - 0x010BC3 04:8BB3: EC        .byte $EC   ; 
- D 0 - I - 0x010BC4 04:8BB4: E8        .byte $E8   ; 
- D 0 - I - 0x010BC5 04:8BB5: 24        .byte $24   ; 
- D 0 - I - 0x010BC6 04:8BB6: 80        .byte $80   ; 
- D 0 - I - 0x010BC7 04:8BB7: 09        .byte $09   ; 
- D 0 - I - 0x010BC8 04:8BB8: F0        .byte $F0   ; 
- D 0 - I - 0x010BC9 04:8BB9: 85        .byte $85   ; 
- D 0 - I - 0x010BCA 04:8BBA: 43        .byte $43   ; 
- D 0 - I - 0x010BCB 04:8BBB: 90        .byte $90   ; 
- D 0 - I - 0x010BCC 04:8BBC: 23        .byte $23   ; 
- D 0 - I - 0x010BCD 04:8BBD: 90        .byte $90   ; 
- D 0 - I - 0x010BCE 04:8BBE: FF        .byte $FF   ; 



_off000_8BBF_5B_05:
- D 0 - I - 0x010BCF 04:8BBF: 02        .byte $02   ; 
- D 0 - I - 0x010BD0 04:8BC0: 22        .byte $22   ; 
- D 0 - I - 0x010BD1 04:8BC1: 33        .byte $33   ; 
- D 0 - I - 0x010BD2 04:8BC2: 34        .byte $34   ; 
- D 0 - I - 0x010BD3 04:8BC3: 45        .byte $45   ; 
- D 0 - I - 0x010BD4 04:8BC4: 46        .byte $46   ; 
- D 0 - I - 0x010BD5 04:8BC5: 47        .byte $47   ; 
- D 0 - I - 0x010BD6 04:8BC6: 48        .byte $48   ; 
- D 0 - I - 0x010BD7 04:8BC7: 49        .byte $49   ; 
- D 0 - I - 0x010BD8 04:8BC8: 03        .byte $03   ; 
- D 0 - I - 0x010BD9 04:8BC9: 4A        .byte $4A   ; 
- D 0 - I - 0x010BDA 04:8BCA: 4B        .byte $4B   ; 
- D 0 - I - 0x010BDB 04:8BCB: 4C        .byte $4C   ; 
- D 0 - I - 0x010BDC 04:8BCC: 4D        .byte $4D   ; 
- D 0 - I - 0x010BDD 04:8BCD: 4E        .byte $4E   ; 
- D 0 - I - 0x010BDE 04:8BCE: FF        .byte $FF   ; 



_off000_8BCF_20_04:
- D 0 - I - 0x010BDF 04:8BCF: 01        .byte $01, $F0, $83   ; 
- D 0 - I - 0x010BE2 04:8BD2: FB        .byte con_se_cb_FB   ; 
- D 0 - I - 0x010BE3 04:8BD3: C2        .byte $C2   ; 
- D 0 - I - 0x010BE4 04:8BD4: 5B        .byte $5B   ; 
- D 0 - I - 0x010BE5 04:8BD5: 81        .byte $81   ; 
- D 0 - I - 0x010BE6 04:8BD6: 1D        .byte $1D   ; 
- D 0 - I - 0x010BE7 04:8BD7: 71        .byte $71   ; 
- D 0 - I - 0x010BE8 04:8BD8: E5        .byte $E5   ; 
- D 0 - I - 0x010BE9 04:8BD9: 70        .byte $70   ; 
- D 0 - I - 0x010BEA 04:8BDA: 08        .byte $08   ; 
- D 0 - I - 0x010BEB 04:8BDB: FE        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x010BEC 04:8BDC: 02        .byte $02   ; 
- D 0 - I - 0x010BED 04:8BDD: 06        .byte $06, $F0, $83   ; 
- D 0 - I - 0x010BF0 04:8BE0: 61        .byte $61   ; 
- D 0 - I - 0x010BF1 04:8BE1: 02        .byte $02   ; 
- D 0 - I - 0x010BF2 04:8BE2: E8        .byte con_se_cb_E8, $01   ; 
- D 0 - I - 0x010BF4 04:8BE4: 60        .byte $60   ; 
- D 0 - I - 0x010BF5 04:8BE5: 08        .byte $08   ; 
- D 0 - I - 0x010BF6 04:8BE6: 06        .byte $06, $F0, $83   ; 
- D 0 - I - 0x010BF9 04:8BE9: 51        .byte $51   ; 
- D 0 - I - 0x010BFA 04:8BEA: 3B        .byte $3B   ; 
- D 0 - I - 0x010BFB 04:8BEB: 41        .byte $41   ; 
- D 0 - I - 0x010BFC 04:8BEC: 86        .byte $86   ; 
- D 0 - I - 0x010BFD 04:8BED: 31        .byte $31   ; 
- D 0 - I - 0x010BFE 04:8BEE: E3        .byte $E3   ; 
- D 0 - I - 0x010BFF 04:8BEF: 22        .byte $22   ; 
- D 0 - I - 0x010C00 04:8BF0: 64        .byte $64   ; 
- D 0 - I - 0x010C01 04:8BF1: 13        .byte $13   ; 
- D 0 - I - 0x010C02 04:8BF2: 0D        .byte $0D   ; 
- D 0 - I - 0x010C03 04:8BF3: 13        .byte $13   ; 
- D 0 - I - 0x010C04 04:8BF4: C9        .byte $C9   ; 
- D 0 - I - 0x010C05 04:8BF5: FF        .byte con_se_cb_stop   ; 



_off000_8BF6_20_05:
- D 0 - I - 0x010C06 04:8BF6: 01        .byte $01   ; 
- D 0 - I - 0x010C07 04:8BF7: FB        .byte con_se_cb_FB   ; 
- D 0 - I - 0x010C08 04:8BF8: F9        .byte $F9   ; 
- D 0 - I - 0x010C09 04:8BF9: DE        .byte $DE   ; 
- D 0 - I - 0x010C0A 04:8BFA: 2A        .byte $2A   ; 
- D 0 - I - 0x010C0B 04:8BFB: 19        .byte $19   ; 
- D 0 - I - 0x010C0C 04:8BFC: FE        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x010C0D 04:8BFD: 02        .byte $02   ; 
- D 0 - I - 0x010C0E 04:8BFE: 03        .byte $03   ; 
- D 0 - I - 0x010C0F 04:8BFF: 7B        .byte $7B   ; 
- D 0 - I - 0x010C10 04:8C00: 2E        .byte $2E   ; 
- D 0 - I - 0x010C11 04:8C01: 3E        .byte $3E   ; 
- D 0 - I - 0x010C12 04:8C02: 2B        .byte $2B   ; 
- D 0 - I - 0x010C13 04:8C03: 00        .byte $00   ; 
- D 0 - I - 0x010C14 04:8C04: 3B        .byte $3B   ; 
- D 0 - I - 0x010C15 04:8C05: 2D        .byte $2D   ; 
- D 0 - I - 0x010C16 04:8C06: 1B        .byte $1B   ; 
- D 0 - I - 0x010C17 04:8C07: FF        .byte con_se_cb_stop   ; 



_off000_8C08_04_05:
- D 0 - I - 0x010C18 04:8C08: 01        .byte $01   ; 
- D 0 - I - 0x010C19 04:8C09: AB        .byte $AB   ; 
- D 0 - I - 0x010C1A 04:8C0A: 00        .byte $00   ; 
- D 0 - I - 0x010C1B 04:8C0B: 03        .byte $03   ; 
- D 0 - I - 0x010C1C 04:8C0C: 32        .byte $32   ; 
_off000_8C0D_04_04_disable:
- D 0 - I - 0x010C1D 04:8C0D: FF        .byte con_se_cb_stop   ; 



_off000_8C0E_42_04:
- D 0 - I - 0x010C1E 04:8C0E: 07        .byte $07, $70, $88   ; 
- D 0 - I - 0x010C21 04:8C11: FB        .byte con_se_cb_FB   ; 
- D 0 - I - 0x010C22 04:8C12: 40        .byte $40   ; 
- D 0 - I - 0x010C23 04:8C13: 48        .byte $48   ; 
- D 0 - I - 0x010C24 04:8C14: FE        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x010C25 04:8C15: 02        .byte $02   ; 
- D 0 - I - 0x010C26 04:8C16: 30        .byte $30   ; 
- D 0 - I - 0x010C27 04:8C17: 47        .byte $47   ; 
- D 0 - I - 0x010C28 04:8C18: 30        .byte $30   ; 
- D 0 - I - 0x010C29 04:8C19: 46        .byte $46   ; 
- D 0 - I - 0x010C2A 04:8C1A: 30        .byte $30   ; 
- D 0 - I - 0x010C2B 04:8C1B: 45        .byte $45   ; 
- D 0 - I - 0x010C2C 04:8C1C: 20        .byte $20   ; 
- D 0 - I - 0x010C2D 04:8C1D: 44        .byte $44   ; 
- D 0 - I - 0x010C2E 04:8C1E: 20        .byte $20   ; 
- D 0 - I - 0x010C2F 04:8C1F: 43        .byte $43   ; 
- D 0 - I - 0x010C30 04:8C20: 20        .byte $20   ; 
- D 0 - I - 0x010C31 04:8C21: 42        .byte $42   ; 
- D 0 - I - 0x010C32 04:8C22: 20        .byte $20   ; 
- D 0 - I - 0x010C33 04:8C23: 41        .byte $41   ; 
- D 0 - I - 0x010C34 04:8C24: 20        .byte $20   ; 
- D 0 - I - 0x010C35 04:8C25: 40        .byte $40   ; 
- D 0 - I - 0x010C36 04:8C26: 20        .byte $20   ; 
- D 0 - I - 0x010C37 04:8C27: 3F        .byte $3F   ; 
- D 0 - I - 0x010C38 04:8C28: 10        .byte $10   ; 
- D 0 - I - 0x010C39 04:8C29: 3E        .byte $3E   ; 
- D 0 - I - 0x010C3A 04:8C2A: 10        .byte $10   ; 
- D 0 - I - 0x010C3B 04:8C2B: 3D        .byte $3D   ; 
- D 0 - I - 0x010C3C 04:8C2C: 10        .byte $10   ; 
- D 0 - I - 0x010C3D 04:8C2D: 3C        .byte $3C   ; 
- D 0 - I - 0x010C3E 04:8C2E: 10        .byte $10   ; 
- D 0 - I - 0x010C3F 04:8C2F: 3B        .byte $3B   ; 
- D 0 - I - 0x010C40 04:8C30: 10        .byte $10   ; 
- D 0 - I - 0x010C41 04:8C31: 3A        .byte $3A   ; 
- D 0 - I - 0x010C42 04:8C32: 10        .byte $10   ; 
- D 0 - I - 0x010C43 04:8C33: 39        .byte $39   ; 
- D 0 - I - 0x010C44 04:8C34: 10        .byte $10   ; 
- D 0 - I - 0x010C45 04:8C35: 38        .byte $38   ; 
- D 0 - I - 0x010C46 04:8C36: 10        .byte $10   ; 
- D 0 - I - 0x010C47 04:8C37: 37        .byte $37   ; 
- D 0 - I - 0x010C48 04:8C38: 10        .byte $10   ; 
- D 0 - I - 0x010C49 04:8C39: 36        .byte $36   ; 
- D 0 - I - 0x010C4A 04:8C3A: 10        .byte $10   ; 
- D 0 - I - 0x010C4B 04:8C3B: 35        .byte $35   ; 
- D 0 - I - 0x010C4C 04:8C3C: FF        .byte con_se_cb_stop   ; 



_off000_8C3D_42_05:
- D 0 - I - 0x010C4D 04:8C3D: 0F        .byte $0F   ; 
- D 0 - I - 0x010C4E 04:8C3E: BD        .byte $BD   ; 
- D 0 - I - 0x010C4F 04:8C3F: AD        .byte $AD   ; 
- D 0 - I - 0x010C50 04:8C40: 9D        .byte $9D   ; 
- D 0 - I - 0x010C51 04:8C41: 8D        .byte $8D   ; 
- D 0 - I - 0x010C52 04:8C42: 7C        .byte $7C   ; 
- D 0 - I - 0x010C53 04:8C43: 6C        .byte $6C   ; 
- D 0 - I - 0x010C54 04:8C44: 5C        .byte $5C   ; 
- D 0 - I - 0x010C55 04:8C45: 4C        .byte $4C   ; 
- D 0 - I - 0x010C56 04:8C46: 3B        .byte $3B   ; 
- D 0 - I - 0x010C57 04:8C47: 2B        .byte $2B   ; 
- D 0 - I - 0x010C58 04:8C48: 2B        .byte $2B   ; 
- D 0 - I - 0x010C59 04:8C49: 1A        .byte $1A   ; 
- D 0 - I - 0x010C5A 04:8C4A: 1A        .byte $1A   ; 
- D 0 - I - 0x010C5B 04:8C4B: 1A        .byte $1A   ; 
- D 0 - I - 0x010C5C 04:8C4C: FF        .byte con_se_cb_stop   ; 



_off000_8C4D_22_05:
- D 0 - I - 0x010C5D 04:8C4D: 01        .byte $01   ; 
- D 0 - I - 0x010C5E 04:8C4E: F9        .byte $F9   ; 
- D 0 - I - 0x010C5F 04:8C4F: FA        .byte $FA   ; 
- D 0 - I - 0x010C60 04:8C50: 6E        .byte $6E   ; 
- D 0 - I - 0x010C61 04:8C51: 05        .byte $05   ; 
- D 0 - I - 0x010C62 04:8C52: 10        .byte $10   ; 
- D 0 - I - 0x010C63 04:8C53: FE        .byte $FE   ; 
- D 0 - I - 0x010C64 04:8C54: F7        .byte $F7   ; 
- D 0 - I - 0x010C65 04:8C55: F9        .byte $F9   ; 
- D 0 - I - 0x010C66 04:8C56: CA        .byte $CA   ; 
- D 0 - I - 0x010C67 04:8C57: BC        .byte $BC   ; 
- D 0 - I - 0x010C68 04:8C58: 9D        .byte $9D   ; 
- D 0 - I - 0x010C69 04:8C59: 6D        .byte $6D   ; 
- D 0 - I - 0x010C6A 04:8C5A: 4D        .byte $4D   ; 
- D 0 - I - 0x010C6B 04:8C5B: 3E        .byte $3E   ; 
- D 0 - I - 0x010C6C 04:8C5C: 2E        .byte $2E   ; 
- D 0 - I - 0x010C6D 04:8C5D: 1E        .byte $1E   ; 
- D 0 - I - 0x010C6E 04:8C5E: 1F        .byte $1F   ; 
_off000_8C5F_22_04_disable:
- D 0 - I - 0x010C6F 04:8C5F: FF        .byte con_se_cb_stop   ; 



_off000_8C60_4A_04:
- D 0 - I - 0x010C70 04:8C60: 06        .byte $06, $B0, $83   ; 
- D 0 - I - 0x010C73 04:8C63: E1        .byte $E1   ; 
- D 0 - I - 0x010C74 04:8C64: EE        .byte $EE   ; 
- D 0 - I - 0x010C75 04:8C65: C1        .byte $C1   ; 
- D 0 - I - 0x010C76 04:8C66: 6A        .byte $6A   ; 
- D 0 - I - 0x010C77 04:8C67: E8        .byte con_se_cb_E8, $07   ; 
- D 0 - I - 0x010C79 04:8C69: E1        .byte $E1   ; 
- D 0 - I - 0x010C7A 04:8C6A: F2        .byte $F2   ; 
- D 0 - I - 0x010C7B 04:8C6B: 08        .byte $08, $B0, $82   ; 
- D 0 - I - 0x010C7E 04:8C6E: B0        .byte $B0   ; 
- D 0 - I - 0x010C7F 04:8C6F: 77        .byte $77   ; 
- D 0 - I - 0x010C80 04:8C70: EC        .byte con_se_cb_EC   ; 
- D 0 - I - 0x010C81 04:8C71: A1        .byte $A1   ; 
- D 0 - I - 0x010C82 04:8C72: 91        .byte $91   ; 
- D 0 - I - 0x010C83 04:8C73: 71        .byte $71   ; 
- D 0 - I - 0x010C84 04:8C74: 51        .byte $51   ; 
- D 0 - I - 0x010C85 04:8C75: 31        .byte $31   ; 
- D 0 - I - 0x010C86 04:8C76: 11        .byte $11   ; 
- D 0 - I - 0x010C87 04:8C77: FF        .byte con_se_cb_stop   ; 



_off000_8C78_4A_05:
- D 0 - I - 0x010C88 04:8C78: 02        .byte $02   ; 
- D 0 - I - 0x010C89 04:8C79: FB        .byte con_se_cb_FB   ; 
- D 0 - I - 0x010C8A 04:8C7A: EE        .byte $EE   ; 
- D 0 - I - 0x010C8B 04:8C7B: 10        .byte $10   ; 
- D 0 - I - 0x010C8C 04:8C7C: FD        .byte $FD   ; 
- D 0 - I - 0x010C8D 04:8C7D: B9        .byte $B9   ; 
- D 0 - I - 0x010C8E 04:8C7E: AF        .byte $AF   ; 
- D 0 - I - 0x010C8F 04:8C7F: FE        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x010C90 04:8C80: 02        .byte $02   ; 
- D 0 - I - 0x010C91 04:8C81: 10        .byte $10   ; 
- D 0 - I - 0x010C92 04:8C82: FE        .byte $FE   ; 
- D 0 - I - 0x010C93 04:8C83: 02        .byte $02   ; 
- D 0 - I - 0x010C94 04:8C84: B8        .byte $B8   ; 
- D 0 - I - 0x010C95 04:8C85: CB        .byte $CB   ; 
- D 0 - I - 0x010C96 04:8C86: 05        .byte $05   ; 
- D 0 - I - 0x010C97 04:8C87: CC        .byte $CC   ; 
- D 0 - I - 0x010C98 04:8C88: BC        .byte $BC   ; 
- D 0 - I - 0x010C99 04:8C89: AD        .byte $AD   ; 
- D 0 - I - 0x010C9A 04:8C8A: 9D        .byte $9D   ; 
- D 0 - I - 0x010C9B 04:8C8B: 8D        .byte $8D   ; 
- D 0 - I - 0x010C9C 04:8C8C: 7E        .byte $7E   ; 
- D 0 - I - 0x010C9D 04:8C8D: 6E        .byte $6E   ; 
- D 0 - I - 0x010C9E 04:8C8E: 4E        .byte $4E   ; 
- D 0 - I - 0x010C9F 04:8C8F: 3F        .byte $3F   ; 
- D 0 - I - 0x010CA0 04:8C90: 2F        .byte $2F   ; 
- D 0 - I - 0x010CA1 04:8C91: FF        .byte con_se_cb_stop   ; 



_off000_8C92_3A_04:
- D 0 - I - 0x010CA2 04:8C92: 01        .byte $01, $F0, $8E   ; 
- D 0 - I - 0x010CA5 04:8C95: FB        .byte con_se_cb_FB   ; 
- D 0 - I - 0x010CA6 04:8C96: 01        .byte $01, $F0, $8E   ; 
- D 0 - I - 0x010CA9 04:8C99: E8        .byte con_se_cb_E8, $11   ; 
- D 0 - I - 0x010CAB 04:8C9B: 51        .byte $51   ; 
- D 0 - I - 0x010CAC 04:8C9C: F0        .byte $F0   ; 
- D 0 - I - 0x010CAD 04:8C9D: 0D        .byte $0D, $F0, $88   ; 
- D 0 - I - 0x010CB0 04:8CA0: 51        .byte $51   ; 
- D 0 - I - 0x010CB1 04:8CA1: 21        .byte $21   ; 
- D 0 - I - 0x010CB2 04:8CA2: EC        .byte con_se_cb_EC   ; 
- D 0 - I - 0x010CB3 04:8CA3: 50        .byte $50   ; 
- D 0 - I - 0x010CB4 04:8CA4: 10        .byte $10   ; 
- D 0 - I - 0x010CB5 04:8CA5: 20        .byte $20   ; 
- D 0 - I - 0x010CB6 04:8CA6: FE        .byte $FE   ; 
- D 0 - I - 0x010CB7 04:8CA7: 05        .byte $05   ; 
_off000_8CA8_3A_05_disable:
- D 0 - I - 0x010CB8 04:8CA8: FF        .byte con_se_cb_stop   ; 



_off000_8CA9_1A_04:
- D 0 - I - 0x010CB9 04:8CA9: 01        .byte $01, $B0, $81   ; 
- D 0 - I - 0x010CBC 04:8CAC: 72        .byte $72   ; 
- D 0 - I - 0x010CBD 04:8CAD: 00        .byte $00   ; 
- D 0 - I - 0x010CBE 04:8CAE: 81        .byte $81   ; 
- D 0 - I - 0x010CBF 04:8CAF: 80        .byte $80   ; 
- D 0 - I - 0x010CC0 04:8CB0: 91        .byte $91   ; 
- D 0 - I - 0x010CC1 04:8CB1: 00        .byte $00   ; 
- D 0 - I - 0x010CC2 04:8CB2: B0        .byte $B0   ; 
- D 0 - I - 0x010CC3 04:8CB3: B0        .byte $B0   ; 
- D 0 - I - 0x010CC4 04:8CB4: B0        .byte $B0   ; 
- D 0 - I - 0x010CC5 04:8CB5: 90        .byte $90   ; 
- D 0 - I - 0x010CC6 04:8CB6: A0        .byte $A0   ; 
- D 0 - I - 0x010CC7 04:8CB7: C0        .byte $C0   ; 
- D 0 - I - 0x010CC8 04:8CB8: A0        .byte $A0   ; 
- D 0 - I - 0x010CC9 04:8CB9: A0        .byte $A0   ; 
- D 0 - I - 0x010CCA 04:8CBA: 90        .byte $90   ; 
- D 0 - I - 0x010CCB 04:8CBB: D0        .byte $D0   ; 
- D 0 - I - 0x010CCC 04:8CBC: 90        .byte $90   ; 
- D 0 - I - 0x010CCD 04:8CBD: B0        .byte $B0   ; 
- D 0 - I - 0x010CCE 04:8CBE: 80        .byte $80   ; 
- D 0 - I - 0x010CCF 04:8CBF: E0        .byte $E0   ; 
- D 0 - I - 0x010CD0 04:8CC0: 80        .byte $80   ; 
- D 0 - I - 0x010CD1 04:8CC1: C0        .byte $C0   ; 
- D 0 - I - 0x010CD2 04:8CC2: 70        .byte $70   ; 
- D 0 - I - 0x010CD3 04:8CC3: F0        .byte $F0   ; 
- D 0 - I - 0x010CD4 04:8CC4: 70        .byte $70   ; 
- D 0 - I - 0x010CD5 04:8CC5: D0        .byte $D0   ; 
- D 0 - I - 0x010CD6 04:8CC6: 51        .byte $51   ; 
- D 0 - I - 0x010CD7 04:8CC7: 00        .byte $00   ; 
- D 0 - I - 0x010CD8 04:8CC8: 50        .byte $50   ; 
- D 0 - I - 0x010CD9 04:8CC9: E0        .byte $E0   ; 
- D 0 - I - 0x010CDA 04:8CCA: 41        .byte $41   ; 
- D 0 - I - 0x010CDB 04:8CCB: 10        .byte $10   ; 
- D 0 - I - 0x010CDC 04:8CCC: 40        .byte $40   ; 
- D 0 - I - 0x010CDD 04:8CCD: F0        .byte $F0   ; 
- D 0 - I - 0x010CDE 04:8CCE: 30        .byte $30   ; 
- D 0 - I - 0x010CDF 04:8CCF: F0        .byte $F0   ; 
- D 0 - I - 0x010CE0 04:8CD0: 30        .byte $30   ; 
- D 0 - I - 0x010CE1 04:8CD1: D0        .byte $D0   ; 
- D 0 - I - 0x010CE2 04:8CD2: 21        .byte $21   ; 
- D 0 - I - 0x010CE3 04:8CD3: 00        .byte $00   ; 
- D 0 - I - 0x010CE4 04:8CD4: 20        .byte $20   ; 
- D 0 - I - 0x010CE5 04:8CD5: E0        .byte $E0   ; 
- D 0 - I - 0x010CE6 04:8CD6: 11        .byte $11   ; 
- D 0 - I - 0x010CE7 04:8CD7: 10        .byte $10   ; 
- D 0 - I - 0x010CE8 04:8CD8: FF        .byte con_se_cb_stop   ; 



_off000_8CD9_1A_05:
- D 0 - I - 0x010CE9 04:8CD9: 02        .byte $02   ; 
- D 0 - I - 0x010CEA 04:8CDA: 62        .byte $62   ; 
- D 0 - I - 0x010CEB 04:8CDB: 55        .byte $55   ; 
- D 0 - I - 0x010CEC 04:8CDC: 57        .byte $57   ; 
- D 0 - I - 0x010CED 04:8CDD: FB        .byte con_se_cb_FB   ; 
- D 0 - I - 0x010CEE 04:8CDE: 49        .byte $49   ; 
- D 0 - I - 0x010CEF 04:8CDF: 47        .byte $47   ; 
- D 0 - I - 0x010CF0 04:8CE0: FE        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x010CF1 04:8CE1: 03        .byte $03   ; 
- D 0 - I - 0x010CF2 04:8CE2: 03        .byte $03   ; 
- D 0 - I - 0x010CF3 04:8CE3: 3A        .byte $3A   ; 
- D 0 - I - 0x010CF4 04:8CE4: 2B        .byte $2B   ; 
- D 0 - I - 0x010CF5 04:8CE5: FF        .byte con_se_cb_stop   ; 



_off000_8CE6_3C_04:
- D 0 - I - 0x010CF6 04:8CE6: 04        .byte $04, $B0, $82   ; 
- D 0 - I - 0x010CF9 04:8CE9: E3        .byte $E3   ; 
- D 0 - I - 0x010CFA 04:8CEA: 03        .byte $03   ; 
- D 0 - I - 0x010CFB 04:8CEB: 02        .byte $02, $B0, $86   ; 
- D 0 - I - 0x010CFE 04:8CEE: A3        .byte $A3   ; 
- D 0 - I - 0x010CFF 04:8CEF: A0        .byte $A0   ; 
- D 0 - I - 0x010D00 04:8CF0: EC        .byte con_se_cb_EC   ; 
- D 0 - I - 0x010D01 04:8CF1: 90        .byte $90   ; 
- D 0 - I - 0x010D02 04:8CF2: 80        .byte $80   ; 
- D 0 - I - 0x010D03 04:8CF3: 70        .byte $70   ; 
- D 0 - I - 0x010D04 04:8CF4: 60        .byte $60   ; 
- D 0 - I - 0x010D05 04:8CF5: E8        .byte con_se_cb_E8, $04   ; 
- D 0 - I - 0x010D07 04:8CF7: 50        .byte $50   ; 
- D 0 - I - 0x010D08 04:8CF8: 40        .byte $40   ; 
- D 0 - I - 0x010D09 04:8CF9: 30        .byte $30   ; 
- D 0 - I - 0x010D0A 04:8CFA: 20        .byte $20   ; 
- D 0 - I - 0x010D0B 04:8CFB: FF        .byte con_se_cb_stop   ; 



_off000_8CFC_3C_05:
- D 0 - I - 0x010D0C 04:8CFC: 02        .byte $02   ; 
- D 0 - I - 0x010D0D 04:8CFD: CA        .byte $CA   ; 
- D 0 - I - 0x010D0E 04:8CFE: 00        .byte $00   ; 
- D 0 - I - 0x010D0F 04:8CFF: 02        .byte $02   ; 
- D 0 - I - 0x010D10 04:8D00: CD        .byte $CD   ; 
- D 0 - I - 0x010D11 04:8D01: 04        .byte $04   ; 
- D 0 - I - 0x010D12 04:8D02: AD        .byte $AD   ; 
- D 0 - I - 0x010D13 04:8D03: 8D        .byte $8D   ; 
- D 0 - I - 0x010D14 04:8D04: 7D        .byte $7D   ; 
- D 0 - I - 0x010D15 04:8D05: 6E        .byte $6E   ; 
- D 0 - I - 0x010D16 04:8D06: 4E        .byte $4E   ; 
- D 0 - I - 0x010D17 04:8D07: 2E        .byte $2E   ; 
- D 0 - I - 0x010D18 04:8D08: FF        .byte con_se_cb_stop   ; 



_off000_8D09_38_04:
- D 0 - I - 0x010D19 04:8D09: 01        .byte $01, $30, $87   ; 
- D 0 - I - 0x010D1C 04:8D0C: FB        .byte con_se_cb_FB   ; 
- D 0 - I - 0x010D1D 04:8D0D: E3        .byte $E3   ; 
- D 0 - I - 0x010D1E 04:8D0E: 03        .byte $03   ; 
- D 0 - I - 0x010D1F 04:8D0F: E3        .byte $E3   ; 
- D 0 - I - 0x010D20 04:8D10: 70        .byte $70   ; 
- D 0 - I - 0x010D21 04:8D11: FE        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x010D22 04:8D12: 02        .byte $02   ; 
- D 0 - I - 0x010D23 04:8D13: 00        .byte $00   ; 
- D 0 - I - 0x010D24 04:8D14: FB        .byte con_se_cb_FB   ; 
- D 0 - I - 0x010D25 04:8D15: E3        .byte $E3   ; 
- D 0 - I - 0x010D26 04:8D16: 03        .byte $03   ; 
- D 0 - I - 0x010D27 04:8D17: E3        .byte $E3   ; 
- D 0 - I - 0x010D28 04:8D18: 70        .byte $70   ; 
- D 0 - I - 0x010D29 04:8D19: FE        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x010D2A 04:8D1A: 05        .byte $05   ; 
- D 0 - I - 0x010D2B 04:8D1B: FB        .byte con_se_cb_FB   ; 
- D 0 - I - 0x010D2C 04:8D1C: 23        .byte $23   ; 
- D 0 - I - 0x010D2D 04:8D1D: 03        .byte $03   ; 
- D 0 - I - 0x010D2E 04:8D1E: 23        .byte $23   ; 
- D 0 - I - 0x010D2F 04:8D1F: 70        .byte $70   ; 
- D 0 - I - 0x010D30 04:8D20: FE        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x010D31 04:8D21: 04        .byte $04   ; 
_off000_8D22_38_05_disable:
- D 0 - I - 0x010D32 04:8D22: FF        .byte con_se_cb_stop   ; 



_off000_8D23_55_04:
- D 0 - I - 0x010D33 04:8D23: 08        .byte $08, $B0, $83   ; 
- D 0 - I - 0x010D36 04:8D26: FB        .byte con_se_cb_FB   ; 
- D 0 - I - 0x010D37 04:8D27: F1        .byte $F1   ; 
- D 0 - I - 0x010D38 04:8D28: 9E        .byte $9E   ; 
- D 0 - I - 0x010D39 04:8D29: FE        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x010D3A 04:8D2A: 15        .byte $15   ; 
- D 0 - I - 0x010D3B 04:8D2B: 0F        .byte $0F, $F0, $85   ; 
- D 0 - I - 0x010D3E 04:8D2E: C1        .byte $C1   ; 
- D 0 - I - 0x010D3F 04:8D2F: 50        .byte $50   ; 
- D 0 - I - 0x010D40 04:8D30: A1        .byte $A1   ; 
- D 0 - I - 0x010D41 04:8D31: 70        .byte $70   ; 
- D 0 - I - 0x010D42 04:8D32: 81        .byte $81   ; 
- D 0 - I - 0x010D43 04:8D33: 90        .byte $90   ; 
- D 0 - I - 0x010D44 04:8D34: 61        .byte $61   ; 
- D 0 - I - 0x010D45 04:8D35: B0        .byte $B0   ; 
- D 0 - I - 0x010D46 04:8D36: 41        .byte $41   ; 
- D 0 - I - 0x010D47 04:8D37: E0        .byte $E0   ; 
- D 0 - I - 0x010D48 04:8D38: 32        .byte $32   ; 
- D 0 - I - 0x010D49 04:8D39: 20        .byte $20   ; 
- D 0 - I - 0x010D4A 04:8D3A: 22        .byte $22   ; 
- D 0 - I - 0x010D4B 04:8D3B: 60        .byte $60   ; 
- D 0 - I - 0x010D4C 04:8D3C: FF        .byte con_se_cb_stop   ; 



_off000_8D3D_55_01:
- D 0 - I - 0x010D4D 04:8D3D: 01        .byte $01, $30, $83   ; 
- D 0 - I - 0x010D50 04:8D40: 00        .byte $00   ; 
- D 0 - I - 0x010D51 04:8D41: E8        .byte con_se_cb_E8, $08   ; 
- D 0 - I - 0x010D53 04:8D43: FB        .byte con_se_cb_FB   ; 
- D 0 - I - 0x010D54 04:8D44: 80        .byte $80   ; 
- D 0 - I - 0x010D55 04:8D45: CF        .byte $CF   ; 
- D 0 - I - 0x010D56 04:8D46: FE        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x010D57 04:8D47: 10        .byte $10   ; 
- D 0 - I - 0x010D58 04:8D48: 0A        .byte $0A, $30, $82   ; 
- D 0 - I - 0x010D5B 04:8D4B: FB        .byte con_se_cb_FB   ; 
- D 0 - I - 0x010D5C 04:8D4C: F0        .byte $F0   ; 
- D 0 - I - 0x010D5D 04:8D4D: 19        .byte $19   ; 
- D 0 - I - 0x010D5E 04:8D4E: FE        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x010D5F 04:8D4F: 03        .byte $03   ; 
- D 0 - I - 0x010D60 04:8D50: 0A        .byte $0A, $B0, $84   ; 
- D 0 - I - 0x010D63 04:8D53: F2        .byte $F2   ; 
- D 0 - I - 0x010D64 04:8D54: 40        .byte $40   ; 
- D 0 - I - 0x010D65 04:8D55: EC        .byte con_se_cb_EC   ; 
- D 0 - I - 0x010D66 04:8D56: D1        .byte $D1   ; 
- D 0 - I - 0x010D67 04:8D57: C1        .byte $C1   ; 
- D 0 - I - 0x010D68 04:8D58: B1        .byte $B1   ; 
- D 0 - I - 0x010D69 04:8D59: A1        .byte $A1   ; 
- D 0 - I - 0x010D6A 04:8D5A: 91        .byte $91   ; 
- D 0 - I - 0x010D6B 04:8D5B: 81        .byte $81   ; 
- D 0 - I - 0x010D6C 04:8D5C: 71        .byte $71   ; 
- D 0 - I - 0x010D6D 04:8D5D: 61        .byte $61   ; 
- D 0 - I - 0x010D6E 04:8D5E: 51        .byte $51   ; 
- D 0 - I - 0x010D6F 04:8D5F: 41        .byte $41   ; 
- D 0 - I - 0x010D70 04:8D60: 31        .byte $31   ; 
- D 0 - I - 0x010D71 04:8D61: 31        .byte $31   ; 
- - - - - - 0x010D72 04:8D62: 21        .byte $21   ; 
- - - - - - 0x010D73 04:8D63: 21        .byte $21   ; 
- - - - - - 0x010D74 04:8D64: 11        .byte $11   ; 
- - - - - - 0x010D75 04:8D65: FF        .byte con_se_cb_stop   ; 



_off000_8D66_55_05:
- D 0 - I - 0x010D76 04:8D66: 01        .byte $01   ; 
- D 0 - I - 0x010D77 04:8D67: FB        .byte con_se_cb_FB   ; 
- D 0 - I - 0x010D78 04:8D68: 10        .byte $10   ; 
- D 0 - I - 0x010D79 04:8D69: FD        .byte $FD   ; 
- D 0 - I - 0x010D7A 04:8D6A: EE        .byte $EE   ; 
- D 0 - I - 0x010D7B 04:8D6B: 03        .byte $03   ; 
- D 0 - I - 0x010D7C 04:8D6C: DE        .byte $DE   ; 
- D 0 - I - 0x010D7D 04:8D6D: CF        .byte $CF   ; 
- D 0 - I - 0x010D7E 04:8D6E: 01        .byte $01   ; 
- D 0 - I - 0x010D7F 04:8D6F: FE        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x010D80 04:8D70: 10        .byte $10   ; 
- D 0 - I - 0x010D81 04:8D71: 01        .byte $01   ; 
- D 0 - I - 0x010D82 04:8D72: FB        .byte con_se_cb_FB   ; 
- D 0 - I - 0x010D83 04:8D73: 02        .byte $02   ; 
- D 0 - I - 0x010D84 04:8D74: 10        .byte $10   ; 
- D 0 - I - 0x010D85 04:8D75: FC        .byte $FC   ; 
- D 0 - I - 0x010D86 04:8D76: 95        .byte $95   ; 
- D 0 - I - 0x010D87 04:8D77: 88        .byte $88   ; 
- D 0 - I - 0x010D88 04:8D78: 3A        .byte $3A   ; 
- D 0 - I - 0x010D89 04:8D79: 2C        .byte $2C   ; 
- D 0 - I - 0x010D8A 04:8D7A: FE        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x010D8B 04:8D7B: 03        .byte $03   ; 
- D 0 - I - 0x010D8C 04:8D7C: 04        .byte $04   ; 
- D 0 - I - 0x010D8D 04:8D7D: ED        .byte $ED   ; 
- D 0 - I - 0x010D8E 04:8D7E: 7D        .byte $7D   ; 
- D 0 - I - 0x010D8F 04:8D7F: 0B        .byte $0B   ; 
- D 0 - I - 0x010D90 04:8D80: ED        .byte $ED   ; 
- D 0 - I - 0x010D91 04:8D81: DD        .byte $DD   ; 
- D 0 - I - 0x010D92 04:8D82: CD        .byte $CD   ; 
- D 0 - I - 0x010D93 04:8D83: BD        .byte $BD   ; 
- D 0 - I - 0x010D94 04:8D84: AD        .byte $AD   ; 
- D 0 - I - 0x010D95 04:8D85: 9D        .byte $9D   ; 
- D 0 - I - 0x010D96 04:8D86: 8D        .byte $8D   ; 
- D 0 - I - 0x010D97 04:8D87: 7D        .byte $7D   ; 
- D 0 - I - 0x010D98 04:8D88: 6D        .byte $6D   ; 
- D 0 - I - 0x010D99 04:8D89: 5D        .byte $5D   ; 
- D 0 - I - 0x010D9A 04:8D8A: 0F        .byte $0F   ; 
- D 0 - I - 0x010D9B 04:8D8B: 4E        .byte $4E   ; 
- - - - - - 0x010D9C 04:8D8C: 3E        .byte $3E   ; 
- - - - - - 0x010D9D 04:8D8D: 2E        .byte $2E   ; 
- - - - - - 0x010D9E 04:8D8E: 2E        .byte $2E   ; 
- - - - - - 0x010D9F 04:8D8F: 1E        .byte $1E   ; 
- - - - - - 0x010DA0 04:8D90: 1E        .byte $1E   ; 
- - - - - - 0x010DA1 04:8D91: FF        .byte con_se_cb_stop   ; 



_off000_8D92_1C_04:
- D 0 - I - 0x010DA2 04:8D92: 01        .byte $01, $30, $85   ; 
- D 0 - I - 0x010DA5 04:8D95: 40        .byte $40   ; 
- D 0 - I - 0x010DA6 04:8D96: 0D        .byte $0D   ; 
- D 0 - I - 0x010DA7 04:8D97: 40        .byte $40   ; 
- D 0 - I - 0x010DA8 04:8D98: 14        .byte $14   ; 
- D 0 - I - 0x010DA9 04:8D99: 30        .byte $30   ; 
- D 0 - I - 0x010DAA 04:8D9A: 1A        .byte $1A   ; 
- D 0 - I - 0x010DAB 04:8D9B: 30        .byte $30   ; 
- D 0 - I - 0x010DAC 04:8D9C: 12        .byte $12   ; 
- D 0 - I - 0x010DAD 04:8D9D: 20        .byte $20   ; 
- D 0 - I - 0x010DAE 04:8D9E: 0F        .byte $0F   ; 
- D 0 - I - 0x010DAF 04:8D9F: 10        .byte $10   ; 
- D 0 - I - 0x010DB0 04:8DA0: 16        .byte $16   ; 
- D 0 - I - 0x010DB1 04:8DA1: FF        .byte con_se_cb_stop   ; 



_off000_8DA2_1C_05:
- D 0 - I - 0x010DB2 04:8DA2: 01        .byte $01   ; 
- D 0 - I - 0x010DB3 04:8DA3: 6A        .byte $6A   ; 
- D 0 - I - 0x010DB4 04:8DA4: 55        .byte $55   ; 
- D 0 - I - 0x010DB5 04:8DA5: 5A        .byte $5A   ; 
- D 0 - I - 0x010DB6 04:8DA6: 44        .byte $44   ; 
- D 0 - I - 0x010DB7 04:8DA7: 2A        .byte $2A   ; 
- D 0 - I - 0x010DB8 04:8DA8: 13        .byte $13   ; 
- D 0 - I - 0x010DB9 04:8DA9: FF        .byte con_se_cb_stop   ; 



_off000_8DAA_6B_01:
- D 0 - I - 0x010DBA 04:8DAA: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x010DBB 04:8DAB: 05        .byte $05   ; 
- D 0 - I - 0x010DBC 04:8DAC: 33        .byte $33   ; 
- D 0 - I - 0x010DBD 04:8DAD: 81        .byte $81   ; 
- D 0 - I - 0x010DBE 04:8DAE: 34        .byte $34   ; 
- D 0 - I - 0x010DBF 04:8DAF: E6        .byte con_se_cb_E6, $21   ; 
- D 0 - I - 0x010DC1 04:8DB1: 01        .byte $01   ; 
- D 0 - I - 0x010DC2 04:8DB2: E1        .byte con_se_cb_E1, $0A   ; 
- D 0 - I - 0x010DC4 04:8DB4: FD        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x010DC5 04:8DB5: 5E 8F     .word sub_FD_8F5E
- D 0 - I - 0x010DC7 04:8DB7: FD        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x010DC8 04:8DB8: 68 8F     .word sub_FD_8F68
- D 0 - I - 0x010DCA 04:8DBA: FD        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x010DCB 04:8DBB: 5E 8F     .word sub_FD_8F5E
- D 0 - I - 0x010DCD 04:8DBD: FD        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x010DCE 04:8DBE: 72 8F     .word sub_FD_8F72
- D 0 - I - 0x010DD0 04:8DC0: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x010DD1 04:8DC1: 0F        .byte $0F   ; 
- D 0 - I - 0x010DD2 04:8DC2: 34        .byte $34   ; 
- D 0 - I - 0x010DD3 04:8DC3: 80        .byte $80   ; 
- D 0 - I - 0x010DD4 04:8DC4: 72        .byte $72   ; 
- D 0 - I - 0x010DD5 04:8DC5: E7        .byte con_se_cb_E7, $56, $31   ; 
- D 0 - I - 0x010DD8 04:8DC8: E6        .byte con_se_cb_E6, $1A   ; 
- D 0 - I - 0x010DDA 04:8DCA: 9B        .byte $9B   ; 
- D 0 - I - 0x010DDB 04:8DCB: E6        .byte con_se_cb_E6, $00   ; 
- D 0 - I - 0x010DDD 04:8DCD: D0        .byte $D0   ; 
- D 0 - I - 0x010DDE 04:8DCE: E7        .byte con_se_cb_E7, $54, $04   ; 
- D 0 - I - 0x010DE1 04:8DD1: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x010DE2 04:8DD2: 08        .byte $08   ; 
- D 0 - I - 0x010DE3 04:8DD3: 38        .byte $38   ; 
- D 0 - I - 0x010DE4 04:8DD4: 83        .byte $83   ; 
- D 0 - I - 0x010DE5 04:8DD5: 15        .byte $15   ; 
- D 0 - I - 0x010DE6 04:8DD6: FD        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x010DE7 04:8DD7: 8B 8F     .word sub_FD_8F8B
- D 0 - I - 0x010DE9 04:8DD9: E7        .byte con_se_cb_E7, $50, $43   ; 
- D 0 - I - 0x010DEC 04:8DDC: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x010DED 04:8DDD: 01        .byte $01   ; 
- D 0 - I - 0x010DEE 04:8DDE: 76        .byte $76   ; 
- D 0 - I - 0x010DEF 04:8DDF: 82        .byte $82   ; 
- D 0 - I - 0x010DF0 04:8DE0: 13        .byte $13   ; 
- D 0 - I - 0x010DF1 04:8DE1: E2        .byte con_se_cb_E2, $37   ; 
- D 0 - I - 0x010DF3 04:8DE3: EA        .byte con_se_cb_EA, $03   ; 
- D 0 - I - 0x010DF5 04:8DE5: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x010DF6 04:8DE6: B2        .byte $B2   ; 
- D 0 - I - 0x010DF7 04:8DE7: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x010DF8 04:8DE8: 12        .byte $12   ; 
- D 0 - I - 0x010DF9 04:8DE9: E1        .byte con_se_cb_E1, $04   ; 
- D 0 - I - 0x010DFB 04:8DEB: EB        .byte con_se_cb_EB, $03, $10, $02   ; 
- D 0 - I - 0x010DFF 04:8DEF: 23        .byte $23   ; 
- D 0 - I - 0x010E00 04:8DF0: E1        .byte con_se_cb_E1, $08   ; 
- D 0 - I - 0x010E02 04:8DF2: E5        .byte con_se_cb_E5, $11   ; 
- D 0 - I - 0x010E04 04:8DF4: 16        .byte $16   ; 
- D 0 - I - 0x010E05 04:8DF5: E5        .byte con_se_cb_E5, $13   ; 
- D 0 - I - 0x010E07 04:8DF7: 22        .byte $22   ; 
- D 0 - I - 0x010E08 04:8DF8: E5        .byte con_se_cb_E5, $11   ; 
- D 0 - I - 0x010E0A 04:8DFA: 48        .byte $48   ; 
- D 0 - I - 0x010E0B 04:8DFB: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x010E0C 04:8DFC: B6        .byte $B6   ; 
- D 0 - I - 0x010E0D 04:8DFD: E5        .byte con_se_cb_E5, $13   ; 
- D 0 - I - 0x010E0F 04:8DFF: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x010E10 04:8E00: 42        .byte $42   ; 
- D 0 - I - 0x010E11 04:8E01: E5        .byte con_se_cb_E5, $11   ; 
- D 0 - I - 0x010E13 04:8E03: 28        .byte $28   ; 
- D 0 - I - 0x010E14 04:8E04: E5        .byte con_se_cb_E5, $A4   ; 
- D 0 - I - 0x010E16 04:8E06: EA        .byte con_se_cb_EA, $00   ; 
- D 0 - I - 0x010E18 04:8E08: E2        .byte con_se_cb_E2, $00   ; 
- D 0 - I - 0x010E1A 04:8E0A: E1        .byte con_se_cb_E1, $10   ; 
- D 0 - I - 0x010E1C 04:8E0C: 1E        .byte $1E   ; 
- D 0 - I - 0x010E1D 04:8E0D: E1        .byte con_se_cb_E1, $08   ; 
- D 0 - I - 0x010E1F 04:8E0F: 02        .byte $02   ; 
- D 0 - I - 0x010E20 04:8E10: EA        .byte con_se_cb_EA, $03   ; 
- D 0 - I - 0x010E22 04:8E12: E2        .byte con_se_cb_E2, $37   ; 
- D 0 - I - 0x010E24 04:8E14: E1        .byte con_se_cb_E1, $01   ; 
- D 0 - I - 0x010E26 04:8E16: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x010E27 04:8E17: B2        .byte $B2   ; 
- D 0 - I - 0x010E28 04:8E18: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x010E29 04:8E19: 12        .byte $12   ; 
- D 0 - I - 0x010E2A 04:8E1A: E1        .byte con_se_cb_E1, $04   ; 
- D 0 - I - 0x010E2C 04:8E1C: 23        .byte $23   ; 
- D 0 - I - 0x010E2D 04:8E1D: E1        .byte con_se_cb_E1, $08   ; 
- D 0 - I - 0x010E2F 04:8E1F: 16        .byte $16   ; 
- D 0 - I - 0x010E30 04:8E20: 22        .byte $22   ; 
- D 0 - I - 0x010E31 04:8E21: E5        .byte con_se_cb_E5, $11   ; 
- D 0 - I - 0x010E33 04:8E23: 48        .byte $48   ; 
- D 0 - I - 0x010E34 04:8E24: 56        .byte $56   ; 
- D 0 - I - 0x010E35 04:8E25: E5        .byte con_se_cb_E5, $13   ; 
- D 0 - I - 0x010E37 04:8E27: 82        .byte $82   ; 
- D 0 - I - 0x010E38 04:8E28: EA        .byte con_se_cb_EA, $00   ; 
- D 0 - I - 0x010E3A 04:8E2A: E2        .byte con_se_cb_E2, $00   ; 
- D 0 - I - 0x010E3C 04:8E2C: E5        .byte con_se_cb_E5, $A4   ; 
- D 0 - I - 0x010E3E 04:8E2E: B0        .byte $B0   ; 
- D 0 - I - 0x010E3F 04:8E2F: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x010E40 04:8E30: 01        .byte $01   ; 
- D 0 - I - 0x010E41 04:8E31: 74        .byte $74   ; 
- D 0 - I - 0x010E42 04:8E32: 81        .byte $81   ; 
- D 0 - I - 0x010E43 04:8E33: 13        .byte $13   ; 
- D 0 - I - 0x010E44 04:8E34: A5        .byte $A5   ; 
- D 0 - I - 0x010E45 04:8E35: B5        .byte $B5   ; 
- D 0 - I - 0x010E46 04:8E36: C6        .byte $C6   ; 
- D 0 - I - 0x010E47 04:8E37: E5        .byte con_se_cb_E5, $A3   ; 
- D 0 - I - 0x010E49 04:8E39: E6        .byte con_se_cb_E6, $32   ; 
- D 0 - I - 0x010E4B 04:8E3B: E1        .byte con_se_cb_E1, $08   ; 
- D 0 - I - 0x010E4D 04:8E3D: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x010E4E 04:8E3E: 10        .byte $10   ; 
- D 0 - I - 0x010E4F 04:8E3F: FF        .byte con_se_cb_stop   ; 



_off000_8E40_6B_00:
- D 0 - I - 0x010E50 04:8E40: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x010E51 04:8E41: 14        .byte $14   ; 
- D 0 - I - 0x010E52 04:8E42: 31        .byte $31   ; 
- D 0 - I - 0x010E53 04:8E43: 80        .byte $80   ; 
- D 0 - I - 0x010E54 04:8E44: 00        .byte $00   ; 
- D 0 - I - 0x010E55 04:8E45: 01        .byte $01   ; 
- D 0 - I - 0x010E56 04:8E46: E1        .byte con_se_cb_E1, $0A   ; 
- D 0 - I - 0x010E58 04:8E48: E7        .byte con_se_cb_E7, $55, $01   ; 
- D 0 - I - 0x010E5B 04:8E4B: FD        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x010E5C 04:8E4C: 5E 8F     .word sub_FD_8F5E
- D 0 - I - 0x010E5E 04:8E4E: FD        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x010E5F 04:8E4F: 68 8F     .word sub_FD_8F68
- D 0 - I - 0x010E61 04:8E51: FD        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x010E62 04:8E52: 5E 8F     .word sub_FD_8F5E
- D 0 - I - 0x010E64 04:8E54: FD        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x010E65 04:8E55: 72 8F     .word sub_FD_8F72
- D 0 - I - 0x010E67 04:8E57: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x010E68 04:8E58: 0F        .byte $0F   ; 
- D 0 - I - 0x010E69 04:8E59: 33        .byte $33   ; 
- D 0 - I - 0x010E6A 04:8E5A: 80        .byte $80   ; 
- D 0 - I - 0x010E6B 04:8E5B: 72        .byte $72   ; 
- D 0 - I - 0x010E6C 04:8E5C: E6        .byte con_se_cb_E6, $1F   ; 
- D 0 - I - 0x010E6E 04:8E5E: 9A        .byte $9A   ; 
- D 0 - I - 0x010E6F 04:8E5F: E6        .byte con_se_cb_E6, $00   ; 
- D 0 - I - 0x010E71 04:8E61: D0        .byte $D0   ; 
- D 0 - I - 0x010E72 04:8E62: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x010E73 04:8E63: 08        .byte $08   ; 
- D 0 - I - 0x010E74 04:8E64: 36        .byte $36   ; 
- D 0 - I - 0x010E75 04:8E65: 83        .byte $83   ; 
- D 0 - I - 0x010E76 04:8E66: 15        .byte $15   ; 
- D 0 - I - 0x010E77 04:8E67: FD        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x010E78 04:8E68: 8B 8F     .word sub_FD_8F8B
- D 0 - I - 0x010E7A 04:8E6A: E6        .byte con_se_cb_E6, $41   ; 
- D 0 - I - 0x010E7C 04:8E6C: E7        .byte con_se_cb_E7, $50, $33   ; 
- D 0 - I - 0x010E7F 04:8E6F: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x010E80 04:8E70: 01        .byte $01   ; 
- D 0 - I - 0x010E81 04:8E71: 75        .byte $75   ; 
- D 0 - I - 0x010E82 04:8E72: 82        .byte $82   ; 
- D 0 - I - 0x010E83 04:8E73: 13        .byte $13   ; 
- D 0 - I - 0x010E84 04:8E74: E2        .byte con_se_cb_E2, $37   ; 
- D 0 - I - 0x010E86 04:8E76: EA        .byte con_se_cb_EA, $03   ; 
- D 0 - I - 0x010E88 04:8E78: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x010E89 04:8E79: 72        .byte $72   ; 
- D 0 - I - 0x010E8A 04:8E7A: 82        .byte $82   ; 
- D 0 - I - 0x010E8B 04:8E7B: E1        .byte con_se_cb_E1, $04   ; 
- D 0 - I - 0x010E8D 04:8E7D: EB        .byte con_se_cb_EB, $03, $10, $02   ; 
- D 0 - I - 0x010E91 04:8E81: 93        .byte $93   ; 
- D 0 - I - 0x010E92 04:8E82: E1        .byte con_se_cb_E1, $08   ; 
- D 0 - I - 0x010E94 04:8E84: E5        .byte con_se_cb_E5, $11   ; 
- D 0 - I - 0x010E96 04:8E86: 86        .byte $86   ; 
- D 0 - I - 0x010E97 04:8E87: E5        .byte con_se_cb_E5, $13   ; 
- D 0 - I - 0x010E99 04:8E89: 92        .byte $92   ; 
- D 0 - I - 0x010E9A 04:8E8A: E5        .byte con_se_cb_E5, $11   ; 
- D 0 - I - 0x010E9C 04:8E8C: B8        .byte $B8   ; 
- D 0 - I - 0x010E9D 04:8E8D: 76        .byte $76   ; 
- D 0 - I - 0x010E9E 04:8E8E: E5        .byte con_se_cb_E5, $13   ; 
- D 0 - I - 0x010EA0 04:8E90: B2        .byte $B2   ; 
- D 0 - I - 0x010EA1 04:8E91: E5        .byte con_se_cb_E5, $11   ; 
- D 0 - I - 0x010EA3 04:8E93: 98        .byte $98   ; 
- D 0 - I - 0x010EA4 04:8E94: E5        .byte con_se_cb_E5, $A4   ; 
- D 0 - I - 0x010EA6 04:8E96: EA        .byte con_se_cb_EA, $00   ; 
- D 0 - I - 0x010EA8 04:8E98: E2        .byte con_se_cb_E2, $00   ; 
- D 0 - I - 0x010EAA 04:8E9A: 8A        .byte $8A   ; 
- D 0 - I - 0x010EAB 04:8E9B: 96        .byte $96   ; 
- D 0 - I - 0x010EAC 04:8E9C: BA        .byte $BA   ; 
- D 0 - I - 0x010EAD 04:8E9D: EA        .byte con_se_cb_EA, $03   ; 
- D 0 - I - 0x010EAF 04:8E9F: E2        .byte con_se_cb_E2, $37   ; 
- D 0 - I - 0x010EB1 04:8EA1: D2        .byte $D2   ; 
- D 0 - I - 0x010EB2 04:8EA2: E6        .byte con_se_cb_E6, $00   ; 
- D 0 - I - 0x010EB4 04:8EA4: E3        .byte con_se_cb_E3, $08   ; 
- D 0 - I - 0x010EB6 04:8EA6: F0        .byte con_se_cb_F0   ; 
- D 0 - I - 0x010EB7 04:8EA7: 22        .byte $22   ; 
- D 0 - I - 0x010EB8 04:8EA8: 21        .byte $21   ; 
- D 0 - I - 0x010EB9 04:8EA9: 21        .byte $21   ; 
- D 0 - I - 0x010EBA 04:8EAA: E6        .byte con_se_cb_E6, $41   ; 
- D 0 - I - 0x010EBC 04:8EAC: D0        .byte $D0   ; 
- D 0 - I - 0x010EBD 04:8EAD: E3        .byte con_se_cb_E3, $05   ; 
- D 0 - I - 0x010EBF 04:8EAF: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x010EC0 04:8EB0: E1        .byte con_se_cb_E1, $01   ; 
- D 0 - I - 0x010EC2 04:8EB2: 72        .byte $72   ; 
- D 0 - I - 0x010EC3 04:8EB3: 82        .byte $82   ; 
- D 0 - I - 0x010EC4 04:8EB4: E1        .byte con_se_cb_E1, $04   ; 
- D 0 - I - 0x010EC6 04:8EB6: 93        .byte $93   ; 
- D 0 - I - 0x010EC7 04:8EB7: E1        .byte con_se_cb_E1, $08   ; 
- D 0 - I - 0x010EC9 04:8EB9: 86        .byte $86   ; 
- D 0 - I - 0x010ECA 04:8EBA: E5        .byte con_se_cb_E5, $13   ; 
- D 0 - I - 0x010ECC 04:8EBC: 92        .byte $92   ; 
- D 0 - I - 0x010ECD 04:8EBD: E5        .byte con_se_cb_E5, $11   ; 
- D 0 - I - 0x010ECF 04:8EBF: B8        .byte $B8   ; 
- D 0 - I - 0x010ED0 04:8EC0: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x010ED1 04:8EC1: 26        .byte $26   ; 
- D 0 - I - 0x010ED2 04:8EC2: E5        .byte con_se_cb_E5, $13   ; 
- D 0 - I - 0x010ED4 04:8EC4: 52        .byte $52   ; 
- D 0 - I - 0x010ED5 04:8EC5: EA        .byte con_se_cb_EA, $00   ; 
- D 0 - I - 0x010ED7 04:8EC7: E2        .byte con_se_cb_E2, $00   ; 
- D 0 - I - 0x010ED9 04:8EC9: E5        .byte con_se_cb_E5, $A3   ; 
- D 0 - I - 0x010EDB 04:8ECB: E1        .byte con_se_cb_E1, $10   ; 
- D 0 - I - 0x010EDD 04:8ECD: 89        .byte $89   ; 
- D 0 - I - 0x010EDE 04:8ECE: E1        .byte con_se_cb_E1, $08   ; 
- D 0 - I - 0x010EE0 04:8ED0: E5        .byte con_se_cb_E5, $53   ; 
- D 0 - I - 0x010EE2 04:8ED2: E6        .byte con_se_cb_E6, $32   ; 
- D 0 - I - 0x010EE4 04:8ED4: E1        .byte con_se_cb_E1, $09   ; 
- D 0 - I - 0x010EE6 04:8ED6: 90        .byte $90   ; 
- D 0 - I - 0x010EE7 04:8ED7: FF        .byte con_se_cb_stop   ; 



_off000_8ED8_6B_02:
- D 0 - I - 0x010EE8 04:8ED8: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x010EE9 04:8ED9: 05        .byte $05   ; 
- D 0 - I - 0x010EEA 04:8EDA: 00        .byte $00   ; 
- D 0 - I - 0x010EEB 04:8EDB: E7        .byte con_se_cb_E7, $50   ; bzk +byte from 0x010EED
sub_FD_8EDD:
; bzk bug? should be pointing to 0x010EEE?
- D 0 - I - 0x010EED 04:8EDD: 32        .byte $32   ; 
- D 0 - I - 0x010EEE 04:8EDE: 01        .byte $01   ; 
- D 0 - I - 0x010EEF 04:8EDF: E1        .byte con_se_cb_E1, $0A   ; 
- D 0 - I - 0x010EF1 04:8EE1: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x010EF2 04:8EE2: 60        .byte $60   ; 
- D 0 - I - 0x010EF3 04:8EE3: E1        .byte con_se_cb_E1, $01   ; 
- D 0 - I - 0x010EF5 04:8EE5: 42        .byte $42   ; 
- D 0 - I - 0x010EF6 04:8EE6: 52        .byte $52   ; 
- D 0 - I - 0x010EF7 04:8EE7: 62        .byte $62   ; 
- D 0 - I - 0x010EF8 04:8EE8: 72        .byte $72   ; 
- D 0 - I - 0x010EF9 04:8EE9: 82        .byte $82   ; 
- D 0 - I - 0x010EFA 04:8EEA: E1        .byte con_se_cb_E1, $0A   ; 
- D 0 - I - 0x010EFC 04:8EEC: 9E        .byte $9E   ; 
- D 0 - I - 0x010EFD 04:8EED: E1        .byte con_se_cb_E1, $01   ; 
- D 0 - I - 0x010EFF 04:8EEF: 91        .byte $91   ; 
- D 0 - I - 0x010F00 04:8EF0: 85        .byte $85   ; 
- D 0 - I - 0x010F01 04:8EF1: 74        .byte $74   ; 
- D 0 - I - 0x010F02 04:8EF2: E1        .byte con_se_cb_E1, $0A   ; 
- D 0 - I - 0x010F04 04:8EF4: 60        .byte $60   ; 
- D 0 - I - 0x010F05 04:8EF5: E1        .byte con_se_cb_E1, $01   ; 
- D 0 - I - 0x010F07 04:8EF7: 62        .byte $62   ; 
- D 0 - I - 0x010F08 04:8EF8: 72        .byte $72   ; 
- D 0 - I - 0x010F09 04:8EF9: 83        .byte $83   ; 
- D 0 - I - 0x010F0A 04:8EFA: 93        .byte $93   ; 
- D 0 - I - 0x010F0B 04:8EFB: E1        .byte con_se_cb_E1, $0A   ; 
- D 0 - I - 0x010F0D 04:8EFD: 95        .byte $95   ; 
- D 0 - I - 0x010F0E 04:8EFE: E1        .byte con_se_cb_E1, $0C   ; 
- D 0 - I - 0x010F10 04:8F00: 92        .byte $92   ; 
- D 0 - I - 0x010F11 04:8F01: E1        .byte con_se_cb_E1, $0D   ; 
- D 0 - I - 0x010F13 04:8F03: 92        .byte $92   ; 
- D 0 - I - 0x010F14 04:8F04: E1        .byte con_se_cb_E1, $0E   ; 
- D 0 - I - 0x010F16 04:8F06: 92        .byte $92   ; 
- D 0 - I - 0x010F17 04:8F07: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x010F18 04:8F08: 0F        .byte $0F   ; 
- D 0 - I - 0x010F19 04:8F09: 02        .byte $02   ; 
- D 0 - I - 0x010F1A 04:8F0A: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x010F1B 04:8F0B: 9B        .byte $9B   ; 
- D 0 - I - 0x010F1C 04:8F0C: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x010F1D 04:8F0D: 08        .byte $08   ; 
- D 0 - I - 0x010F1E 04:8F0E: 05        .byte $05   ; 
- D 0 - I - 0x010F1F 04:8F0F: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x010F20 04:8F10: FB        .byte con_se_cb_FB   ; 
- D 0 - I - 0x010F21 04:8F11: 62        .byte $62   ; 
- D 0 - I - 0x010F22 04:8F12: 61        .byte $61   ; 
- D 0 - I - 0x010F23 04:8F13: 61        .byte $61   ; 
- D 0 - I - 0x010F24 04:8F14: 62        .byte $62   ; 
- D 0 - I - 0x010F25 04:8F15: 61        .byte $61   ; 
- D 0 - I - 0x010F26 04:8F16: 61        .byte $61   ; 
- D 0 - I - 0x010F27 04:8F17: 61        .byte $61   ; 
- D 0 - I - 0x010F28 04:8F18: 41        .byte $41   ; 
- D 0 - I - 0x010F29 04:8F19: 62        .byte $62   ; 
- D 0 - I - 0x010F2A 04:8F1A: 62        .byte $62   ; 
- D 0 - I - 0x010F2B 04:8F1B: 12        .byte $12   ; 
- D 0 - I - 0x010F2C 04:8F1C: FE        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x010F2D 04:8F1D: 05        .byte $05   ; 
- D 0 - I - 0x010F2E 04:8F1E: 62        .byte $62   ; 
- D 0 - I - 0x010F2F 04:8F1F: 61        .byte $61   ; 
- D 0 - I - 0x010F30 04:8F20: 61        .byte $61   ; 
- D 0 - I - 0x010F31 04:8F21: 62        .byte $62   ; 
- D 0 - I - 0x010F32 04:8F22: 61        .byte $61   ; 
- D 0 - I - 0x010F33 04:8F23: 61        .byte $61   ; 
- D 0 - I - 0x010F34 04:8F24: 42        .byte $42   ; 
- D 0 - I - 0x010F35 04:8F25: 41        .byte $41   ; 
- D 0 - I - 0x010F36 04:8F26: 41        .byte $41   ; 
- D 0 - I - 0x010F37 04:8F27: 42        .byte $42   ; 
- D 0 - I - 0x010F38 04:8F28: 41        .byte $41   ; 
- D 0 - I - 0x010F39 04:8F29: 41        .byte $41   ; 
- D 0 - I - 0x010F3A 04:8F2A: FB        .byte con_se_cb_FB   ; 
- D 0 - I - 0x010F3B 04:8F2B: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x010F3C 04:8F2C: 22        .byte $22   ; 
- D 0 - I - 0x010F3D 04:8F2D: 21        .byte $21   ; 
- D 0 - I - 0x010F3E 04:8F2E: 21        .byte $21   ; 
- D 0 - I - 0x010F3F 04:8F2F: 22        .byte $22   ; 
- D 0 - I - 0x010F40 04:8F30: 21        .byte $21   ; 
- D 0 - I - 0x010F41 04:8F31: 21        .byte $21   ; 
- D 0 - I - 0x010F42 04:8F32: 21        .byte $21   ; 
- D 0 - I - 0x010F43 04:8F33: 11        .byte $11   ; 
- D 0 - I - 0x010F44 04:8F34: 22        .byte $22   ; 
- D 0 - I - 0x010F45 04:8F35: 22        .byte $22   ; 
- D 0 - I - 0x010F46 04:8F36: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x010F47 04:8F37: 92        .byte $92   ; 
- D 0 - I - 0x010F48 04:8F38: FE        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x010F49 04:8F39: 03        .byte $03   ; 
- D 0 - I - 0x010F4A 04:8F3A: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x010F4B 04:8F3B: 09        .byte $09   ; 
- D 0 - I - 0x010F4C 04:8F3C: 02        .byte $02   ; 
- D 0 - I - 0x010F4D 04:8F3D: 60        .byte $60   ; 
- D 0 - I - 0x010F4E 04:8F3E: FF        .byte con_se_cb_stop   ; 



_off000_8F3F_6B_03:
- D 0 - I - 0x010F4F 04:8F3F: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x010F50 04:8F40: 05        .byte $05   ; 
- D 0 - I - 0x010F51 04:8F41: 01        .byte $01   ; 
- D 0 - I - 0x010F52 04:8F42: E1        .byte con_se_cb_E1, $01   ; 
- D 0 - I - 0x010F54 04:8F44: FB        .byte con_se_cb_FB   ; 
- D 0 - I - 0x010F55 04:8F45: 1A        .byte $1A   ; 
- D 0 - I - 0x010F56 04:8F46: FE        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x010F57 04:8F47: 36        .byte $36   ; 
- D 0 - I - 0x010F58 04:8F48: 1C        .byte $1C   ; 
- D 0 - I - 0x010F59 04:8F49: 1C        .byte $1C   ; 
- D 0 - I - 0x010F5A 04:8F4A: 1D        .byte $1D   ; 
- D 0 - I - 0x010F5B 04:8F4B: 1D        .byte $1D   ; 
- D 0 - I - 0x010F5C 04:8F4C: 1E        .byte $1E   ; 
- D 0 - I - 0x010F5D 04:8F4D: 1E        .byte $1E   ; 
- D 0 - I - 0x010F5E 04:8F4E: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x010F5F 04:8F4F: 0F        .byte $0F   ; 
- D 0 - I - 0x010F60 04:8F50: 3B        .byte $3B   ; 
- D 0 - I - 0x010F61 04:8F51: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x010F62 04:8F52: 08        .byte $08   ; 
- D 0 - I - 0x010F63 04:8F53: FB        .byte con_se_cb_FB   ; 
- D 0 - I - 0x010F64 04:8F54: C2        .byte $C2   ; 
- D 0 - I - 0x010F65 04:8F55: 11        .byte $11   ; 
- D 0 - I - 0x010F66 04:8F56: 11        .byte $11   ; 
- D 0 - I - 0x010F67 04:8F57: B2        .byte $B2   ; 
- D 0 - I - 0x010F68 04:8F58: 11        .byte $11   ; 
- D 0 - I - 0x010F69 04:8F59: 11        .byte $11   ; 
- D 0 - I - 0x010F6A 04:8F5A: FE        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x010F6B 04:8F5B: 12        .byte $12   ; 
- D 0 - I - 0x010F6C 04:8F5C: 30        .byte $30   ; 
- D 0 - I - 0x010F6D 04:8F5D: FF        .byte con_se_cb_stop   ; 



sub_FD_8F5E:
- D 0 - I - 0x010F6E 04:8F5E: FB        .byte con_se_cb_FB   ; 
- D 0 - I - 0x010F6F 04:8F5F: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x010F70 04:8F60: 61        .byte $61   ; 
- D 0 - I - 0x010F71 04:8F61: 91        .byte $91   ; 
- D 0 - I - 0x010F72 04:8F62: C1        .byte $C1   ; 
- D 0 - I - 0x010F73 04:8F63: F4        .byte con_se_cb_F4   ; 
- D 0 - I - 0x010F74 04:8F64: 51        .byte $51   ; 
- D 0 - I - 0x010F75 04:8F65: FE        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x010F76 04:8F66: 04        .byte $04   ; 
- D 0 - I - 0x010F77 04:8F67: FF        .byte con_se_cb_stop   ; 



sub_FD_8F68:
- D 0 - I - 0x010F78 04:8F68: FB        .byte con_se_cb_FB   ; 
- D 0 - I - 0x010F79 04:8F69: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x010F7A 04:8F6A: 91        .byte $91   ; 
- D 0 - I - 0x010F7B 04:8F6B: C1        .byte $C1   ; 
- D 0 - I - 0x010F7C 04:8F6C: F4        .byte con_se_cb_F4   ; 
- D 0 - I - 0x010F7D 04:8F6D: 61        .byte $61   ; 
- D 0 - I - 0x010F7E 04:8F6E: 81        .byte $81   ; 
- D 0 - I - 0x010F7F 04:8F6F: FE        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x010F80 04:8F70: 04        .byte $04   ; 
- D 0 - I - 0x010F81 04:8F71: FF        .byte con_se_cb_stop   ; 



sub_FD_8F72:
- D 0 - I - 0x010F82 04:8F72: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x010F83 04:8F73: 91        .byte $91   ; 
- D 0 - I - 0x010F84 04:8F74: C1        .byte $C1   ; 
- D 0 - I - 0x010F85 04:8F75: F4        .byte con_se_cb_F4   ; 
- D 0 - I - 0x010F86 04:8F76: 61        .byte $61   ; 
- D 0 - I - 0x010F87 04:8F77: 81        .byte $81   ; 
- D 0 - I - 0x010F88 04:8F78: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x010F89 04:8F79: 91        .byte $91   ; 
- D 0 - I - 0x010F8A 04:8F7A: C1        .byte $C1   ; 
- D 0 - I - 0x010F8B 04:8F7B: F4        .byte con_se_cb_F4   ; 
- D 0 - I - 0x010F8C 04:8F7C: E1        .byte con_se_cb_E1, $0C   ; 
- D 0 - I - 0x010F8E 04:8F7E: 61        .byte $61   ; 
- D 0 - I - 0x010F8F 04:8F7F: 81        .byte $81   ; 
- D 0 - I - 0x010F90 04:8F80: E1        .byte con_se_cb_E1, $0D   ; 
- D 0 - I - 0x010F92 04:8F82: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x010F93 04:8F83: 91        .byte $91   ; 
- D 0 - I - 0x010F94 04:8F84: C1        .byte $C1   ; 
- D 0 - I - 0x010F95 04:8F85: E1        .byte con_se_cb_E1, $0E   ; 
- D 0 - I - 0x010F97 04:8F87: F4        .byte con_se_cb_F4   ; 
- D 0 - I - 0x010F98 04:8F88: 61        .byte $61   ; 
- D 0 - I - 0x010F99 04:8F89: 81        .byte $81   ; 
- D 0 - I - 0x010F9A 04:8F8A: FF        .byte con_se_cb_stop   ; 



sub_FD_8F8B:
- D 0 - I - 0x010F9B 04:8F8B: E2        .byte con_se_cb_E2, $7A   ; 
- D 0 - I - 0x010F9D 04:8F8D: F0        .byte con_se_cb_F0   ; 
- D 0 - I - 0x010F9E 04:8F8E: FB        .byte con_se_cb_FB   ; 
- D 0 - I - 0x010F9F 04:8F8F: 62        .byte $62   ; 
- D 0 - I - 0x010FA0 04:8F90: 61        .byte $61   ; 
- D 0 - I - 0x010FA1 04:8F91: 61        .byte $61   ; 
- D 0 - I - 0x010FA2 04:8F92: 62        .byte $62   ; 
- D 0 - I - 0x010FA3 04:8F93: 61        .byte $61   ; 
- D 0 - I - 0x010FA4 04:8F94: 61        .byte $61   ; 
- D 0 - I - 0x010FA5 04:8F95: 61        .byte $61   ; 
- D 0 - I - 0x010FA6 04:8F96: 41        .byte $41   ; 
- D 0 - I - 0x010FA7 04:8F97: 62        .byte $62   ; 
- D 0 - I - 0x010FA8 04:8F98: 62        .byte $62   ; 
- D 0 - I - 0x010FA9 04:8F99: 12        .byte $12   ; 
- D 0 - I - 0x010FAA 04:8F9A: FE        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x010FAB 04:8F9B: 02        .byte $02   ; 
- D 0 - I - 0x010FAC 04:8F9C: 62        .byte $62   ; 
- D 0 - I - 0x010FAD 04:8F9D: 61        .byte $61   ; 
- D 0 - I - 0x010FAE 04:8F9E: 61        .byte $61   ; 
- D 0 - I - 0x010FAF 04:8F9F: FF        .byte con_se_cb_stop   ; 



_off000_8FA0_6B_05:
- D 0 - I - 0x010FB0 04:8FA0: 01        .byte $01   ; 
- D 0 - I - 0x010FB1 04:8FA1: 87        .byte $87   ; 
- D 0 - I - 0x010FB2 04:8FA2: 22        .byte $22   ; 
- D 0 - I - 0x010FB3 04:8FA3: 00        .byte $00   ; 
- D 0 - I - 0x010FB4 04:8FA4: 00        .byte $00   ; 
- D 0 - I - 0x010FB5 04:8FA5: 49        .byte $49   ; 
- D 0 - I - 0x010FB6 04:8FA6: FF        .byte con_se_cb_stop   ; 



_off000_8FA7_70_01:
- D 0 - I - 0x010FB7 04:8FA7: E1        .byte con_se_cb_E1, $07   ; 
- D 0 - I - 0x010FB9 04:8FA9: 06        .byte $06   ; 
loc_FE_8FAA:
- D 0 - I - 0x010FBA 04:8FAA: E8        .byte con_se_cb_E8, $82   ; 
- D 0 - I - 0x010FBC 04:8FAC: FB        .byte con_se_cb_FB   ; 
- D 0 - I - 0x010FBD 04:8FAD: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x010FBE 04:8FAE: 07        .byte $07   ; 
- D 0 - I - 0x010FBF 04:8FAF: 75        .byte $75   ; 
- D 0 - I - 0x010FC0 04:8FB0: 81        .byte $81   ; 
- D 0 - I - 0x010FC1 04:8FB1: 72        .byte $72   ; 
- D 0 - I - 0x010FC2 04:8FB2: E6        .byte con_se_cb_E6, $41   ; 
- D 0 - I - 0x010FC4 04:8FB4: E7        .byte con_se_cb_E7, $50, $34   ; 
- D 0 - I - 0x010FC7 04:8FB7: E2        .byte con_se_cb_E2, $B1   ; 
- D 0 - I - 0x010FC9 04:8FB9: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x010FCA 04:8FBA: 6C        .byte $6C   ; 
- D 0 - I - 0x010FCB 04:8FBB: 31        .byte $31   ; 
- D 0 - I - 0x010FCC 04:8FBC: 51        .byte $51   ; 
- D 0 - I - 0x010FCD 04:8FBD: 62        .byte $62   ; 
- D 0 - I - 0x010FCE 04:8FBE: 8C        .byte $8C   ; 
- D 0 - I - 0x010FCF 04:8FBF: 51        .byte $51   ; 
- D 0 - I - 0x010FD0 04:8FC0: 61        .byte $61   ; 
- D 0 - I - 0x010FD1 04:8FC1: 82        .byte $82   ; 
- D 0 - I - 0x010FD2 04:8FC2: B0        .byte $B0   ; 
- D 0 - I - 0x010FD3 04:8FC3: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x010FD4 04:8FC4: 1A        .byte $1A   ; 
- D 0 - I - 0x010FD5 04:8FC5: E5        .byte con_se_cb_E5, $17   ; 
- D 0 - I - 0x010FD7 04:8FC7: E2        .byte con_se_cb_E2, $B6   ; 
- D 0 - I - 0x010FD9 04:8FC9: F4        .byte con_se_cb_F4   ; 
- D 0 - I - 0x010FDA 04:8FCA: 51        .byte $51   ; 
- D 0 - I - 0x010FDB 04:8FCB: 61        .byte $61   ; 
- D 0 - I - 0x010FDC 04:8FCC: 51        .byte $51   ; 
- D 0 - I - 0x010FDD 04:8FCD: 11        .byte $11   ; 
- D 0 - I - 0x010FDE 04:8FCE: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x010FDF 04:8FCF: B1        .byte $B1   ; 
- D 0 - I - 0x010FE0 04:8FD0: A1        .byte $A1   ; 
- D 0 - I - 0x010FE1 04:8FD1: FE        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x010FE2 04:8FD2: 02        .byte $02   ; 
- D 0 - I - 0x010FE3 04:8FD3: E6        .byte con_se_cb_E6, $00   ; 
- D 0 - I - 0x010FE5 04:8FD5: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x010FE6 04:8FD6: 07        .byte $07   ; 
- D 0 - I - 0x010FE7 04:8FD7: 76        .byte $76   ; 
- D 0 - I - 0x010FE8 04:8FD8: 82        .byte $82   ; 
- D 0 - I - 0x010FE9 04:8FD9: 26        .byte $26   ; 
- D 0 - I - 0x010FEA 04:8FDA: E7        .byte con_se_cb_E7, $56, $21   ; 
- D 0 - I - 0x010FED 04:8FDD: E2        .byte con_se_cb_E2, $37   ; 
- D 0 - I - 0x010FEF 04:8FDF: FB        .byte con_se_cb_FB   ; 
- D 0 - I - 0x010FF0 04:8FE0: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x010FF1 04:8FE1: D0        .byte $D0   ; 
- D 0 - I - 0x010FF2 04:8FE2: 31        .byte $31   ; 
- D 0 - I - 0x010FF3 04:8FE3: D2        .byte $D2   ; 
- D 0 - I - 0x010FF4 04:8FE4: 31        .byte $31   ; 
- D 0 - I - 0x010FF5 04:8FE5: 31        .byte $31   ; 
- D 0 - I - 0x010FF6 04:8FE6: D0        .byte $D0   ; 
- D 0 - I - 0x010FF7 04:8FE7: 31        .byte $31   ; 
- D 0 - I - 0x010FF8 04:8FE8: D2        .byte $D2   ; 
- D 0 - I - 0x010FF9 04:8FE9: 31        .byte $31   ; 
- D 0 - I - 0x010FFA 04:8FEA: 31        .byte $31   ; 
- D 0 - I - 0x010FFB 04:8FEB: D0        .byte $D0   ; 
- D 0 - I - 0x010FFC 04:8FEC: 31        .byte $31   ; 
- D 0 - I - 0x010FFD 04:8FED: D2        .byte $D2   ; 
- D 0 - I - 0x010FFE 04:8FEE: 31        .byte $31   ; 
- D 0 - I - 0x010FFF 04:8FEF: D0        .byte $D0   ; 
- D 0 - I - 0x011000 04:8FF0: 51        .byte $51   ; 
- D 0 - I - 0x011001 04:8FF1: D2        .byte $D2   ; 
- D 0 - I - 0x011002 04:8FF2: 51        .byte $51   ; 
- D 0 - I - 0x011003 04:8FF3: D0        .byte $D0   ; 
- D 0 - I - 0x011004 04:8FF4: 61        .byte $61   ; 
- D 0 - I - 0x011005 04:8FF5: D2        .byte $D2   ; 
- D 0 - I - 0x011006 04:8FF6: 61        .byte $61   ; 
- D 0 - I - 0x011007 04:8FF7: FE        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x011008 04:8FF8: 03        .byte $03   ; 
- D 0 - I - 0x011009 04:8FF9: E1        .byte con_se_cb_E1, $01   ; 
- D 0 - I - 0x01100B 04:8FFB: D1        .byte $D1   ; 
- D 0 - I - 0x01100C 04:8FFC: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x01100D 04:8FFD: C1        .byte $C1   ; 
- D 0 - I - 0x01100E 04:8FFE: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x01100F 04:8FFF: 11        .byte $11   ; 
- D 0 - I - 0x011010 04:9000: 21        .byte $21   ; 
- D 0 - I - 0x011011 04:9001: E1        .byte con_se_cb_E1, $02   ; 
- D 0 - I - 0x011013 04:9003: 39        .byte $39   ; 
- D 0 - I - 0x011014 04:9004: E1        .byte con_se_cb_E1, $07   ; 
- D 0 - I - 0x011016 04:9006: D0        .byte $D0   ; 
- D 0 - I - 0x011017 04:9007: 52        .byte $52   ; 
- D 0 - I - 0x011018 04:9008: D6        .byte $D6   ; 
- D 0 - I - 0x011019 04:9009: 51        .byte $51   ; 
- D 0 - I - 0x01101A 04:900A: E1        .byte con_se_cb_E1, $01   ; 
- D 0 - I - 0x01101C 04:900C: D2        .byte $D2   ; 
- D 0 - I - 0x01101D 04:900D: 31        .byte $31   ; 
- D 0 - I - 0x01101E 04:900E: 41        .byte $41   ; 
- D 0 - I - 0x01101F 04:900F: 51        .byte $51   ; 
- D 0 - I - 0x011020 04:9010: E1        .byte con_se_cb_E1, $02   ; 
- D 0 - I - 0x011022 04:9012: D0        .byte $D0   ; 
- D 0 - I - 0x011023 04:9013: 69        .byte $69   ; 
- D 0 - I - 0x011024 04:9014: E1        .byte con_se_cb_E1, $07   ; 
- D 0 - I - 0x011026 04:9016: D0        .byte $D0   ; 
- D 0 - I - 0x011027 04:9017: 51        .byte $51   ; 
- D 0 - I - 0x011028 04:9018: D5        .byte $D5   ; 
- D 0 - I - 0x011029 04:9019: 51        .byte $51   ; 
- D 0 - I - 0x01102A 04:901A: 51        .byte $51   ; 
- D 0 - I - 0x01102B 04:901B: D2        .byte $D2   ; 
- D 0 - I - 0x01102C 04:901C: E1        .byte con_se_cb_E1, $01   ; 
- D 0 - I - 0x01102E 04:901E: 31        .byte $31   ; 
- D 0 - I - 0x01102F 04:901F: 41        .byte $41   ; 
- D 0 - I - 0x011030 04:9020: 51        .byte $51   ; 
- D 0 - I - 0x011031 04:9021: D0        .byte $D0   ; 
- D 0 - I - 0x011032 04:9022: 6B        .byte $6B   ; 
- D 0 - I - 0x011033 04:9023: E1        .byte con_se_cb_E1, $07   ; 
- D 0 - I - 0x011035 04:9025: 82        .byte $82   ; 
- D 0 - I - 0x011036 04:9026: FE        .byte con_se_cb_jmp, $FF   ; 
- D 0 - I - 0x011038 04:9028: AA 8F     .word loc_FE_8FAA



_off000_902A_70_00:
- D 0 - I - 0x01103A 04:902A: E1        .byte con_se_cb_E1, $07   ; 
- D 0 - I - 0x01103C 04:902C: 06        .byte $06   ; 
loc_FE_902D:
- D 0 - I - 0x01103D 04:902D: E8        .byte con_se_cb_E8, $82   ; 
- D 0 - I - 0x01103F 04:902F: FB        .byte con_se_cb_FB   ; 
- D 0 - I - 0x011040 04:9030: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x011041 04:9031: 07        .byte $07   ; 
- D 0 - I - 0x011042 04:9032: 73        .byte $73   ; 
- D 0 - I - 0x011043 04:9033: 81        .byte $81   ; 
- D 0 - I - 0x011044 04:9034: A2        .byte $A2   ; 
- D 0 - I - 0x011045 04:9035: E6        .byte con_se_cb_E6, $21   ; 
- D 0 - I - 0x011047 04:9037: E7        .byte con_se_cb_E7, $50, $34   ; 
- D 0 - I - 0x01104A 04:903A: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x01104B 04:903B: 10        .byte $10   ; 
- D 0 - I - 0x01104C 04:903C: 30        .byte $30   ; 
- D 0 - I - 0x01104D 04:903D: 60        .byte $60   ; 
- D 0 - I - 0x01104E 04:903E: 8A        .byte $8A   ; 
- D 0 - I - 0x01104F 04:903F: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x011050 04:9040: 07        .byte $07   ; 
- D 0 - I - 0x011051 04:9041: 72        .byte $72   ; 
- D 0 - I - 0x011052 04:9042: 80        .byte $80   ; 
- D 0 - I - 0x011053 04:9043: 44        .byte $44   ; 
- D 0 - I - 0x011054 04:9044: E6        .byte con_se_cb_E6, $13   ; 
- D 0 - I - 0x011056 04:9046: E9        .byte con_se_cb_E9, $01   ; 
- D 0 - I - 0x011058 04:9048: F4        .byte con_se_cb_F4   ; 
- D 0 - I - 0x011059 04:9049: 01        .byte $01   ; 
- D 0 - I - 0x01105A 04:904A: 51        .byte $51   ; 
- D 0 - I - 0x01105B 04:904B: 61        .byte $61   ; 
- D 0 - I - 0x01105C 04:904C: 51        .byte $51   ; 
- D 0 - I - 0x01105D 04:904D: 11        .byte $11   ; 
- D 0 - I - 0x01105E 04:904E: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x01105F 04:904F: B1        .byte $B1   ; 
- D 0 - I - 0x011060 04:9050: E9        .byte con_se_cb_E9, $00   ; 
- D 0 - I - 0x011062 04:9052: FE        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x011063 04:9053: 02        .byte $02   ; 
- D 0 - I - 0x011064 04:9054: E6        .byte con_se_cb_E6, $00   ; 
- D 0 - I - 0x011066 04:9056: E6        .byte con_se_cb_E6, $00   ; 
- D 0 - I - 0x011068 04:9058: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x011069 04:9059: 07        .byte $07   ; 
- D 0 - I - 0x01106A 04:905A: 74        .byte $74   ; 
- D 0 - I - 0x01106B 04:905B: 82        .byte $82   ; 
- D 0 - I - 0x01106C 04:905C: 26        .byte $26   ; 
- D 0 - I - 0x01106D 04:905D: E7        .byte con_se_cb_E7, $56, $21   ; 
- D 0 - I - 0x011070 04:9060: E2        .byte con_se_cb_E2, $37   ; 
- D 0 - I - 0x011072 04:9062: FB        .byte con_se_cb_FB   ; 
- D 0 - I - 0x011073 04:9063: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011074 04:9064: D0        .byte $D0   ; 
- D 0 - I - 0x011075 04:9065: A1        .byte $A1   ; 
- D 0 - I - 0x011076 04:9066: D2        .byte $D2   ; 
- D 0 - I - 0x011077 04:9067: A1        .byte $A1   ; 
- D 0 - I - 0x011078 04:9068: A1        .byte $A1   ; 
- D 0 - I - 0x011079 04:9069: D0        .byte $D0   ; 
- D 0 - I - 0x01107A 04:906A: A1        .byte $A1   ; 
- D 0 - I - 0x01107B 04:906B: D2        .byte $D2   ; 
- D 0 - I - 0x01107C 04:906C: A1        .byte $A1   ; 
- D 0 - I - 0x01107D 04:906D: A1        .byte $A1   ; 
- D 0 - I - 0x01107E 04:906E: D0        .byte $D0   ; 
- D 0 - I - 0x01107F 04:906F: A1        .byte $A1   ; 
- D 0 - I - 0x011080 04:9070: D2        .byte $D2   ; 
- D 0 - I - 0x011081 04:9071: A1        .byte $A1   ; 
- D 0 - I - 0x011082 04:9072: D0        .byte $D0   ; 
- D 0 - I - 0x011083 04:9073: C1        .byte $C1   ; 
- D 0 - I - 0x011084 04:9074: D2        .byte $D2   ; 
- D 0 - I - 0x011085 04:9075: C1        .byte $C1   ; 
- D 0 - I - 0x011086 04:9076: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x011087 04:9077: D0        .byte $D0   ; 
- D 0 - I - 0x011088 04:9078: 11        .byte $11   ; 
- D 0 - I - 0x011089 04:9079: D2        .byte $D2   ; 
- D 0 - I - 0x01108A 04:907A: 11        .byte $11   ; 
- D 0 - I - 0x01108B 04:907B: FE        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x01108C 04:907C: 03        .byte $03   ; 
- D 0 - I - 0x01108D 04:907D: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x01108E 04:907E: D0        .byte $D0   ; 
- D 0 - I - 0x01108F 04:907F: A3        .byte $A3   ; 
- D 0 - I - 0x011090 04:9080: C2        .byte $C2   ; 
- D 0 - I - 0x011091 04:9081: D1        .byte $D1   ; 
- D 0 - I - 0x011092 04:9082: C1        .byte $C1   ; 
- D 0 - I - 0x011093 04:9083: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x011094 04:9084: D0        .byte $D0   ; 
- D 0 - I - 0x011095 04:9085: 13        .byte $13   ; 
- D 0 - I - 0x011096 04:9086: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011097 04:9087: C1        .byte $C1   ; 
- D 0 - I - 0x011098 04:9088: D1        .byte $D1   ; 
- D 0 - I - 0x011099 04:9089: C1        .byte $C1   ; 
- D 0 - I - 0x01109A 04:908A: C1        .byte $C1   ; 
- D 0 - I - 0x01109B 04:908B: D0        .byte $D0   ; 
- D 0 - I - 0x01109C 04:908C: E1        .byte con_se_cb_E1, $01   ; 
- D 0 - I - 0x01109E 04:908E: A1        .byte $A1   ; 
- D 0 - I - 0x01109F 04:908F: B1        .byte $B1   ; 
- D 0 - I - 0x0110A0 04:9090: C1        .byte $C1   ; 
- D 0 - I - 0x0110A1 04:9091: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x0110A2 04:9092: 1B        .byte $1B   ; 
- D 0 - I - 0x0110A3 04:9093: E1        .byte con_se_cb_E1, $07   ; 
- D 0 - I - 0x0110A5 04:9095: 32        .byte $32   ; 
- D 0 - I - 0x0110A6 04:9096: FE        .byte con_se_cb_jmp, $FF   ; 
- D 0 - I - 0x0110A8 04:9098: 2D 90     .word loc_FE_902D



_off000_909A_70_02:
- D 0 - I - 0x0110AA 04:909A: E1        .byte con_se_cb_E1, $07   ; 
- D 0 - I - 0x0110AC 04:909C: 06        .byte $06   ; 
loc_FE_909D:
- D 0 - I - 0x0110AD 04:909D: E8        .byte con_se_cb_E8, $82   ; 
- D 0 - I - 0x0110AF 04:909F: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x0110B0 04:90A0: 07        .byte $07   ; 
- D 0 - I - 0x0110B1 04:90A1: 04        .byte $04   ; 
- D 0 - I - 0x0110B2 04:90A2: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x0110B3 04:90A3: FB        .byte con_se_cb_FB   ; 
- D 0 - I - 0x0110B4 04:90A4: 33        .byte $33   ; 
- D 0 - I - 0x0110B5 04:90A5: 33        .byte $33   ; 
- D 0 - I - 0x0110B6 04:90A6: 31        .byte $31   ; 
- D 0 - I - 0x0110B7 04:90A7: 31        .byte $31   ; 
- D 0 - I - 0x0110B8 04:90A8: 31        .byte $31   ; 
- D 0 - I - 0x0110B9 04:90A9: 11        .byte $11   ; 
- D 0 - I - 0x0110BA 04:90AA: 32        .byte $32   ; 
- D 0 - I - 0x0110BB 04:90AB: 34        .byte $34   ; 
- D 0 - I - 0x0110BC 04:90AC: FE        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x0110BD 04:90AD: 08        .byte $08   ; 
- D 0 - I - 0x0110BE 04:90AE: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x0110BF 04:90AF: 07        .byte $07   ; 
- D 0 - I - 0x0110C0 04:90B0: 03        .byte $03   ; 
- D 0 - I - 0x0110C1 04:90B1: FB        .byte con_se_cb_FB   ; 
- D 0 - I - 0x0110C2 04:90B2: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x0110C3 04:90B3: 31        .byte $31   ; 
- D 0 - I - 0x0110C4 04:90B4: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x0110C5 04:90B5: A1        .byte $A1   ; 
- D 0 - I - 0x0110C6 04:90B6: 61        .byte $61   ; 
- D 0 - I - 0x0110C7 04:90B7: 51        .byte $51   ; 
- D 0 - I - 0x0110C8 04:90B8: 31        .byte $31   ; 
- D 0 - I - 0x0110C9 04:90B9: 11        .byte $11   ; 
- D 0 - I - 0x0110CA 04:90BA: A1        .byte $A1   ; 
- D 0 - I - 0x0110CB 04:90BB: 61        .byte $61   ; 
- D 0 - I - 0x0110CC 04:90BC: 31        .byte $31   ; 
- D 0 - I - 0x0110CD 04:90BD: 11        .byte $11   ; 
- D 0 - I - 0x0110CE 04:90BE: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x0110CF 04:90BF: B1        .byte $B1   ; 
- D 0 - I - 0x0110D0 04:90C0: A1        .byte $A1   ; 
- D 0 - I - 0x0110D1 04:90C1: FE        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x0110D2 04:90C2: 03        .byte $03   ; 
- D 0 - I - 0x0110D3 04:90C3: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x0110D4 04:90C4: 31        .byte $31   ; 
- D 0 - I - 0x0110D5 04:90C5: 21        .byte $21   ; 
- D 0 - I - 0x0110D6 04:90C6: 31        .byte $31   ; 
- D 0 - I - 0x0110D7 04:90C7: 51        .byte $51   ; 
- D 0 - I - 0x0110D8 04:90C8: 31        .byte $31   ; 
- D 0 - I - 0x0110D9 04:90C9: 51        .byte $51   ; 
- D 0 - I - 0x0110DA 04:90CA: 61        .byte $61   ; 
- D 0 - I - 0x0110DB 04:90CB: 51        .byte $51   ; 
- D 0 - I - 0x0110DC 04:90CC: 61        .byte $61   ; 
- D 0 - I - 0x0110DD 04:90CD: 81        .byte $81   ; 
- D 0 - I - 0x0110DE 04:90CE: 61        .byte $61   ; 
- D 0 - I - 0x0110DF 04:90CF: 81        .byte $81   ; 
- D 0 - I - 0x0110E0 04:90D0: A1        .byte $A1   ; 
- D 0 - I - 0x0110E1 04:90D1: B1        .byte $B1   ; 
- D 0 - I - 0x0110E2 04:90D2: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x0110E3 04:90D3: 11        .byte $11   ; 
- D 0 - I - 0x0110E4 04:90D4: 21        .byte $21   ; 
- D 0 - I - 0x0110E5 04:90D5: FE        .byte con_se_cb_jmp, $FF   ; 
- D 0 - I - 0x0110E7 04:90D7: 9D 90     .word loc_FE_909D



_off000_90D9_70_03:
- D 0 - I - 0x0110E9 04:90D9: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x0110EA 04:90DA: 01        .byte $01   ; 
- D 0 - I - 0x0110EB 04:90DB: 94        .byte $94   ; 
- D 0 - I - 0x0110EC 04:90DC: 95        .byte $95   ; 
- D 0 - I - 0x0110ED 04:90DD: 95        .byte $95   ; 
- D 0 - I - 0x0110EE 04:90DE: 87        .byte $87   ; 
- D 0 - I - 0x0110EF 04:90DF: 87        .byte $87   ; 
- D 0 - I - 0x0110F0 04:90E0: 77        .byte $77   ; 
- D 0 - I - 0x0110F1 04:90E1: 77        .byte $77   ; 
loc_FE_90E2:
- D 0 - I - 0x0110F2 04:90E2: FB        .byte con_se_cb_FB   ; 
- D 0 - I - 0x0110F3 04:90E3: C1        .byte $C1   ; 
- D 0 - I - 0x0110F4 04:90E4: 36        .byte $36   ; 
- D 0 - I - 0x0110F5 04:90E5: 17        .byte $17   ; 
- D 0 - I - 0x0110F6 04:90E6: 17        .byte $17   ; 
- D 0 - I - 0x0110F7 04:90E7: C1        .byte $C1   ; 
- D 0 - I - 0x0110F8 04:90E8: 36        .byte $36   ; 
- D 0 - I - 0x0110F9 04:90E9: 17        .byte $17   ; 
- D 0 - I - 0x0110FA 04:90EA: 17        .byte $17   ; 
- D 0 - I - 0x0110FB 04:90EB: C1        .byte $C1   ; 
- D 0 - I - 0x0110FC 04:90EC: 16        .byte $16   ; 
- D 0 - I - 0x0110FD 04:90ED: C1        .byte $C1   ; 
- D 0 - I - 0x0110FE 04:90EE: 16        .byte $16   ; 
- D 0 - I - 0x0110FF 04:90EF: 3E        .byte $3E   ; 
- D 0 - I - 0x011100 04:90F0: 17        .byte $17   ; 
- D 0 - I - 0x011101 04:90F1: 17        .byte $17   ; 
- D 0 - I - 0x011102 04:90F2: B7        .byte $B7   ; 
- D 0 - I - 0x011103 04:90F3: B7        .byte $B7   ; 
- D 0 - I - 0x011104 04:90F4: 17        .byte $17   ; 
- D 0 - I - 0x011105 04:90F5: C7        .byte $C7   ; 
- D 0 - I - 0x011106 04:90F6: FE        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x011107 04:90F7: 07        .byte $07   ; 
- D 0 - I - 0x011108 04:90F8: C1        .byte $C1   ; 
- D 0 - I - 0x011109 04:90F9: 36        .byte $36   ; 
- D 0 - I - 0x01110A 04:90FA: 17        .byte $17   ; 
- D 0 - I - 0x01110B 04:90FB: 17        .byte $17   ; 
- D 0 - I - 0x01110C 04:90FC: C1        .byte $C1   ; 
- D 0 - I - 0x01110D 04:90FD: 36        .byte $36   ; 
- D 0 - I - 0x01110E 04:90FE: 17        .byte $17   ; 
- D 0 - I - 0x01110F 04:90FF: 17        .byte $17   ; 
- D 0 - I - 0x011110 04:9100: C1        .byte $C1   ; 
- D 0 - I - 0x011111 04:9101: 16        .byte $16   ; 
- D 0 - I - 0x011112 04:9102: 17        .byte $17   ; 
- D 0 - I - 0x011113 04:9103: 3E        .byte $3E   ; 
- D 0 - I - 0x011114 04:9104: 95        .byte $95   ; 
- D 0 - I - 0x011115 04:9105: 95        .byte $95   ; 
- D 0 - I - 0x011116 04:9106: 94        .byte $94   ; 
- D 0 - I - 0x011117 04:9107: 87        .byte $87   ; 
- D 0 - I - 0x011118 04:9108: 87        .byte $87   ; 
- D 0 - I - 0x011119 04:9109: 77        .byte $77   ; 
- D 0 - I - 0x01111A 04:910A: 77        .byte $77   ; 
- D 0 - I - 0x01111B 04:910B: FB        .byte con_se_cb_FB   ; 
- D 0 - I - 0x01111C 04:910C: C1        .byte $C1   ; 
- D 0 - I - 0x01111D 04:910D: 16        .byte $16   ; 
- D 0 - I - 0x01111E 04:910E: C1        .byte $C1   ; 
- D 0 - I - 0x01111F 04:910F: 16        .byte $16   ; 
- D 0 - I - 0x011120 04:9110: 17        .byte $17   ; 
- D 0 - I - 0x011121 04:9111: B7        .byte $B7   ; 
- D 0 - I - 0x011122 04:9112: 37        .byte $37   ; 
- D 0 - I - 0x011123 04:9113: B1        .byte $B1   ; 
- D 0 - I - 0x011124 04:9114: 16        .byte $16   ; 
- D 0 - I - 0x011125 04:9115: B1        .byte $B1   ; 
- D 0 - I - 0x011126 04:9116: 36        .byte $36   ; 
- D 0 - I - 0x011127 04:9117: 17        .byte $17   ; 
- D 0 - I - 0x011128 04:9118: B7        .byte $B7   ; 
- D 0 - I - 0x011129 04:9119: 97        .byte $97   ; 
- D 0 - I - 0x01112A 04:911A: 87        .byte $87   ; 
- D 0 - I - 0x01112B 04:911B: 77        .byte $77   ; 
- D 0 - I - 0x01112C 04:911C: FE        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x01112D 04:911D: 04        .byte $04   ; 
- D 0 - I - 0x01112E 04:911E: B7        .byte $B7   ; 
- D 0 - I - 0x01112F 04:911F: B7        .byte $B7   ; 
- D 0 - I - 0x011130 04:9120: B7        .byte $B7   ; 
- D 0 - I - 0x011131 04:9121: B7        .byte $B7   ; 
- D 0 - I - 0x011132 04:9122: FE        .byte con_se_cb_jmp, $FF   ; 
- D 0 - I - 0x011134 04:9124: E2 90     .word loc_FE_90E2



_off000_9126_74_01:
- D 0 - I - 0x011136 04:9126: E1        .byte con_se_cb_E1, $07   ; 
- D 0 - I - 0x011138 04:9128: 0C        .byte $0C   ; 
_off000_9129_78_01:
loc_FE_9129:
- D 0 - I - 0x011139 04:9129: E8        .byte con_se_cb_E8, $82   ; 
- D 0 - I - 0x01113B 04:912B: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x01113C 04:912C: 07        .byte $07   ; 
- D 0 - I - 0x01113D 04:912D: 31        .byte $31   ; 
- D 0 - I - 0x01113E 04:912E: 00        .byte $00   ; 
- D 0 - I - 0x01113F 04:912F: 25        .byte $25   ; 
- D 0 - I - 0x011140 04:9130: E2        .byte con_se_cb_E2, $3E   ; 
- D 0 - I - 0x011142 04:9132: EA        .byte con_se_cb_EA, $02   ; 
- D 0 - I - 0x011144 04:9134: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011145 04:9135: FB        .byte con_se_cb_FB   ; 
- D 0 - I - 0x011146 04:9136: 51        .byte $51   ; 
- D 0 - I - 0x011147 04:9137: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x011148 04:9138: 51        .byte $51   ; 
- D 0 - I - 0x011149 04:9139: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x01114A 04:913A: 51        .byte $51   ; 
- D 0 - I - 0x01114B 04:913B: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x01114C 04:913C: 31        .byte $31   ; 
- D 0 - I - 0x01114D 04:913D: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x01114E 04:913E: C1        .byte $C1   ; 
- D 0 - I - 0x01114F 04:913F: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x011150 04:9140: 11        .byte $11   ; 
- D 0 - I - 0x011151 04:9141: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011152 04:9142: A1        .byte $A1   ; 
- D 0 - I - 0x011153 04:9143: C1        .byte $C1   ; 
- D 0 - I - 0x011154 04:9144: 81        .byte $81   ; 
- D 0 - I - 0x011155 04:9145: A1        .byte $A1   ; 
- D 0 - I - 0x011156 04:9146: 71        .byte $71   ; 
- D 0 - I - 0x011157 04:9147: 81        .byte $81   ; 
- D 0 - I - 0x011158 04:9148: FE        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x011159 04:9149: 04        .byte $04   ; 
- D 0 - I - 0x01115A 04:914A: FD        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x01115B 04:914B: 00 96     .word sub_FD_9600
- D 0 - I - 0x01115D 04:914D: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x01115E 04:914E: C1        .byte $C1   ; 
- D 0 - I - 0x01115F 04:914F: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x011160 04:9150: 11        .byte $11   ; 
- D 0 - I - 0x011161 04:9151: 31        .byte $31   ; 
- D 0 - I - 0x011162 04:9152: 59        .byte $59   ; 
- D 0 - I - 0x011163 04:9153: E2        .byte con_se_cb_E2, $7A   ; 
- D 0 - I - 0x011165 04:9155: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x011166 04:9156: 07        .byte $07   ; 
- D 0 - I - 0x011167 04:9157: 32        .byte $32   ; 
- D 0 - I - 0x011168 04:9158: 00        .byte $00   ; 
- D 0 - I - 0x011169 04:9159: 16        .byte $16   ; 
- D 0 - I - 0x01116A 04:915A: E7        .byte con_se_cb_E7, $51, $01   ; 
- D 0 - I - 0x01116D 04:915D: E2        .byte con_se_cb_E2, $3E   ; 
- D 0 - I - 0x01116F 04:915F: EA        .byte con_se_cb_EA, $02   ; 
- D 0 - I - 0x011171 04:9161: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x011172 04:9162: 51        .byte $51   ; 
- D 0 - I - 0x011173 04:9163: F4        .byte con_se_cb_F4   ; 
- D 0 - I - 0x011174 04:9164: 51        .byte $51   ; 
- D 0 - I - 0x011175 04:9165: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x011176 04:9166: 51        .byte $51   ; 
- D 0 - I - 0x011177 04:9167: F4        .byte con_se_cb_F4   ; 
- D 0 - I - 0x011178 04:9168: 31        .byte $31   ; 
- D 0 - I - 0x011179 04:9169: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x01117A 04:916A: C1        .byte $C1   ; 
- D 0 - I - 0x01117B 04:916B: F4        .byte con_se_cb_F4   ; 
- D 0 - I - 0x01117C 04:916C: 11        .byte $11   ; 
- D 0 - I - 0x01117D 04:916D: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x01117E 04:916E: A1        .byte $A1   ; 
- D 0 - I - 0x01117F 04:916F: C1        .byte $C1   ; 
- D 0 - I - 0x011180 04:9170: 81        .byte $81   ; 
- D 0 - I - 0x011181 04:9171: A1        .byte $A1   ; 
- D 0 - I - 0x011182 04:9172: 71        .byte $71   ; 
- D 0 - I - 0x011183 04:9173: 81        .byte $81   ; 
- D 0 - I - 0x011184 04:9174: FD        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x011185 04:9175: 00 96     .word sub_FD_9600
- D 0 - I - 0x011187 04:9177: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011188 04:9178: C1        .byte $C1   ; 
- D 0 - I - 0x011189 04:9179: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x01118A 04:917A: 71        .byte $71   ; 
- D 0 - I - 0x01118B 04:917B: 31        .byte $31   ; 
- D 0 - I - 0x01118C 04:917C: 59        .byte $59   ; 
- D 0 - I - 0x01118D 04:917D: E6        .byte con_se_cb_E6, $00   ; 
- D 0 - I - 0x01118F 04:917F: FD        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x011190 04:9180: 24 96     .word sub_FD_9624
- D 0 - I - 0x011192 04:9182: D2        .byte $D2   ; 
- D 0 - I - 0x011193 04:9183: F0        .byte con_se_cb_F0   ; 
- D 0 - I - 0x011194 04:9184: 51        .byte $51   ; 
- D 0 - I - 0x011195 04:9185: D0        .byte $D0   ; 
- D 0 - I - 0x011196 04:9186: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x011197 04:9187: 31        .byte $31   ; 
- D 0 - I - 0x011198 04:9188: 31        .byte $31   ; 
- D 0 - I - 0x011199 04:9189: 52        .byte $52   ; 
- D 0 - I - 0x01119A 04:918A: D2        .byte $D2   ; 
- D 0 - I - 0x01119B 04:918B: F0        .byte con_se_cb_F0   ; 
- D 0 - I - 0x01119C 04:918C: 51        .byte $51   ; 
- D 0 - I - 0x01119D 04:918D: D0        .byte $D0   ; 
- D 0 - I - 0x01119E 04:918E: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x01119F 04:918F: 31        .byte $31   ; 
- D 0 - I - 0x0111A0 04:9190: D2        .byte $D2   ; 
- D 0 - I - 0x0111A1 04:9191: F0        .byte con_se_cb_F0   ; 
- D 0 - I - 0x0111A2 04:9192: 51        .byte $51   ; 
- D 0 - I - 0x0111A3 04:9193: D0        .byte $D0   ; 
- D 0 - I - 0x0111A4 04:9194: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x0111A5 04:9195: 52        .byte $52   ; 
- D 0 - I - 0x0111A6 04:9196: 32        .byte $32   ; 
- D 0 - I - 0x0111A7 04:9197: FD        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x0111A8 04:9198: 19 96     .word sub_FD_9619
- D 0 - I - 0x0111AA 04:919A: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x0111AB 04:919B: 81        .byte $81   ; 
- D 0 - I - 0x0111AC 04:919C: 71        .byte $71   ; 
- D 0 - I - 0x0111AD 04:919D: 31        .byte $31   ; 
- D 0 - I - 0x0111AE 04:919E: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x0111AF 04:919F: A6        .byte $A6   ; 
- D 0 - I - 0x0111B0 04:91A0: 81        .byte $81   ; 
- D 0 - I - 0x0111B1 04:91A1: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x0111B2 04:91A2: 31        .byte $31   ; 
- D 0 - I - 0x0111B3 04:91A3: 71        .byte $71   ; 
- D 0 - I - 0x0111B4 04:91A4: 82        .byte $82   ; 
- D 0 - I - 0x0111B5 04:91A5: 72        .byte $72   ; 
- D 0 - I - 0x0111B6 04:91A6: E2        .byte con_se_cb_E2, $37   ; 
- D 0 - I - 0x0111B8 04:91A8: E5        .byte con_se_cb_E5, $16   ; 
- D 0 - I - 0x0111BA 04:91AA: A2        .byte $A2   ; 
- D 0 - I - 0x0111BB 04:91AB: D0        .byte $D0   ; 
- D 0 - I - 0x0111BC 04:91AC: FD        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x0111BD 04:91AD: 24 96     .word sub_FD_9624
- D 0 - I - 0x0111BF 04:91AF: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x0111C0 04:91B0: 81        .byte $81   ; 
- D 0 - I - 0x0111C1 04:91B1: D3        .byte $D3   ; 
- D 0 - I - 0x0111C2 04:91B2: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x0111C3 04:91B3: A1        .byte $A1   ; 
- D 0 - I - 0x0111C4 04:91B4: D0        .byte $D0   ; 
- D 0 - I - 0x0111C5 04:91B5: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x0111C6 04:91B6: 71        .byte $71   ; 
- D 0 - I - 0x0111C7 04:91B7: D3        .byte $D3   ; 
- D 0 - I - 0x0111C8 04:91B8: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x0111C9 04:91B9: A1        .byte $A1   ; 
- D 0 - I - 0x0111CA 04:91BA: D0        .byte $D0   ; 
- D 0 - I - 0x0111CB 04:91BB: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x0111CC 04:91BC: 31        .byte $31   ; 
- D 0 - I - 0x0111CD 04:91BD: D3        .byte $D3   ; 
- D 0 - I - 0x0111CE 04:91BE: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x0111CF 04:91BF: A1        .byte $A1   ; 
- D 0 - I - 0x0111D0 04:91C0: E7        .byte con_se_cb_E7, $00   ; 
- D 0 - I - 0x0111D2 04:91C2: FD        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x0111D3 04:91C3: 19 96     .word sub_FD_9619
- D 0 - I - 0x0111D5 04:91C5: F4        .byte con_se_cb_F4   ; 
- D 0 - I - 0x0111D6 04:91C6: 11        .byte $11   ; 
- D 0 - I - 0x0111D7 04:91C7: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x0111D8 04:91C8: C1        .byte $C1   ; 
- D 0 - I - 0x0111D9 04:91C9: A1        .byte $A1   ; 
- D 0 - I - 0x0111DA 04:91CA: 86        .byte $86   ; 
- D 0 - I - 0x0111DB 04:91CB: 81        .byte $81   ; 
- D 0 - I - 0x0111DC 04:91CC: A1        .byte $A1   ; 
- D 0 - I - 0x0111DD 04:91CD: C1        .byte $C1   ; 
- D 0 - I - 0x0111DE 04:91CE: D0        .byte $D0   ; 
- D 0 - I - 0x0111DF 04:91CF: FD        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x0111E0 04:91D0: 24 96     .word sub_FD_9624
- D 0 - I - 0x0111E2 04:91D2: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x0111E3 04:91D3: 81        .byte $81   ; 
- D 0 - I - 0x0111E4 04:91D4: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x0111E5 04:91D5: C1        .byte $C1   ; 
- D 0 - I - 0x0111E6 04:91D6: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x0111E7 04:91D7: 71        .byte $71   ; 
- D 0 - I - 0x0111E8 04:91D8: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x0111E9 04:91D9: C1        .byte $C1   ; 
- D 0 - I - 0x0111EA 04:91DA: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x0111EB 04:91DB: 81        .byte $81   ; 
- D 0 - I - 0x0111EC 04:91DC: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x0111ED 04:91DD: C1        .byte $C1   ; 
- D 0 - I - 0x0111EE 04:91DE: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x0111EF 04:91DF: A1        .byte $A1   ; 
- D 0 - I - 0x0111F0 04:91E0: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x0111F1 04:91E1: C1        .byte $C1   ; 
- D 0 - I - 0x0111F2 04:91E2: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x0111F3 04:91E3: 81        .byte $81   ; 
- D 0 - I - 0x0111F4 04:91E4: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x0111F5 04:91E5: C1        .byte $C1   ; 
- D 0 - I - 0x0111F6 04:91E6: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x0111F7 04:91E7: 72        .byte $72   ; 
- D 0 - I - 0x0111F8 04:91E8: E7        .byte con_se_cb_E7, $50, $22   ; 
- D 0 - I - 0x0111FB 04:91EB: E2        .byte con_se_cb_E2, $00   ; 
- D 0 - I - 0x0111FD 04:91ED: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x0111FE 04:91EE: 07        .byte $07   ; 
- D 0 - I - 0x0111FF 04:91EF: 72        .byte $72   ; 
- D 0 - I - 0x011200 04:91F0: 00        .byte $00   ; 
- D 0 - I - 0x011201 04:91F1: 22        .byte $22   ; 
- D 0 - I - 0x011202 04:91F2: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x011203 04:91F3: 81        .byte $81   ; 
- D 0 - I - 0x011204 04:91F4: 71        .byte $71   ; 
- D 0 - I - 0x011205 04:91F5: 31        .byte $31   ; 
- D 0 - I - 0x011206 04:91F6: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011207 04:91F7: A6        .byte $A6   ; 
- D 0 - I - 0x011208 04:91F8: 81        .byte $81   ; 
- D 0 - I - 0x011209 04:91F9: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x01120A 04:91FA: 31        .byte $31   ; 
- D 0 - I - 0x01120B 04:91FB: 71        .byte $71   ; 
- D 0 - I - 0x01120C 04:91FC: 82        .byte $82   ; 
- D 0 - I - 0x01120D 04:91FD: 72        .byte $72   ; 
- D 0 - I - 0x01120E 04:91FE: 82        .byte $82   ; 
- D 0 - I - 0x01120F 04:91FF: D0        .byte $D0   ; 
- D 0 - I - 0x011210 04:9200: FD        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x011211 04:9201: 24 96     .word sub_FD_9624
- D 0 - I - 0x011213 04:9203: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011214 04:9204: A1        .byte $A1   ; 
- D 0 - I - 0x011215 04:9205: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x011216 04:9206: A1        .byte $A1   ; 
- D 0 - I - 0x011217 04:9207: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011218 04:9208: C1        .byte $C1   ; 
- D 0 - I - 0x011219 04:9209: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x01121A 04:920A: C1        .byte $C1   ; 
- D 0 - I - 0x01121B 04:920B: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x01121C 04:920C: 12        .byte $12   ; 
- D 0 - I - 0x01121D 04:920D: FD        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x01121E 04:920E: 49 95     .word sub_FD_9549
- D 0 - I - 0x011220 04:9210: FD        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x011221 04:9211: 2F 96     .word sub_FD_962F
- D 0 - I - 0x011223 04:9213: E7        .byte con_se_cb_E7, $50, $21   ; 
- D 0 - I - 0x011226 04:9216: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x011227 04:9217: 12        .byte $12   ; 
- D 0 - I - 0x011228 04:9218: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011229 04:9219: 81        .byte $81   ; 
- D 0 - I - 0x01122A 04:921A: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x01122B 04:921B: 11        .byte $11   ; 
- D 0 - I - 0x01122C 04:921C: 31        .byte $31   ; 
- D 0 - I - 0x01122D 04:921D: 51        .byte $51   ; 
- D 0 - I - 0x01122E 04:921E: 32        .byte $32   ; 
- D 0 - I - 0x01122F 04:921F: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011230 04:9220: A2        .byte $A2   ; 
- D 0 - I - 0x011231 04:9221: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x011232 04:9222: 32        .byte $32   ; 
- D 0 - I - 0x011233 04:9223: 51        .byte $51   ; 
- D 0 - I - 0x011234 04:9224: 21        .byte $21   ; 
- D 0 - I - 0x011235 04:9225: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011236 04:9226: A2        .byte $A2   ; 
- D 0 - I - 0x011237 04:9227: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x011238 04:9228: 51        .byte $51   ; 
- D 0 - I - 0x011239 04:9229: A1        .byte $A1   ; 
- D 0 - I - 0x01123A 04:922A: 82        .byte $82   ; 
- D 0 - I - 0x01123B 04:922B: 72        .byte $72   ; 
- D 0 - I - 0x01123C 04:922C: 32        .byte $32   ; 
- D 0 - I - 0x01123D 04:922D: FD        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x01123E 04:922E: 49 95     .word sub_FD_9549
- D 0 - I - 0x011240 04:9230: E7        .byte con_se_cb_E7, $00   ; 
- D 0 - I - 0x011242 04:9232: FD        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x011243 04:9233: 2F 96     .word sub_FD_962F
- D 0 - I - 0x011245 04:9235: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x011246 04:9236: 12        .byte $12   ; 
- D 0 - I - 0x011247 04:9237: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011248 04:9238: 81        .byte $81   ; 
- D 0 - I - 0x011249 04:9239: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x01124A 04:923A: 11        .byte $11   ; 
- D 0 - I - 0x01124B 04:923B: 31        .byte $31   ; 
- D 0 - I - 0x01124C 04:923C: 51        .byte $51   ; 
- D 0 - I - 0x01124D 04:923D: 32        .byte $32   ; 
- D 0 - I - 0x01124E 04:923E: 52        .byte $52   ; 
- D 0 - I - 0x01124F 04:923F: 72        .byte $72   ; 
- D 0 - I - 0x011250 04:9240: 81        .byte $81   ; 
- D 0 - I - 0x011251 04:9241: 51        .byte $51   ; 
- D 0 - I - 0x011252 04:9242: 11        .byte $11   ; 
- D 0 - I - 0x011253 04:9243: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011254 04:9244: A1        .byte $A1   ; 
- D 0 - I - 0x011255 04:9245: 81        .byte $81   ; 
- D 0 - I - 0x011256 04:9246: A1        .byte $A1   ; 
- D 0 - I - 0x011257 04:9247: E1        .byte con_se_cb_E1, $0A   ; 
- D 0 - I - 0x011259 04:9249: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x01125A 04:924A: 11        .byte $11   ; 
- D 0 - I - 0x01125B 04:924B: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x01125C 04:924C: A1        .byte $A1   ; 
- D 0 - I - 0x01125D 04:924D: D1        .byte $D1   ; 
- D 0 - I - 0x01125E 04:924E: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x01125F 04:924F: 0A        .byte $0A   ; 
- D 0 - I - 0x011260 04:9250: 78        .byte $78   ; 
- D 0 - I - 0x011261 04:9251: 81        .byte $81   ; 
- D 0 - I - 0x011262 04:9252: 17        .byte $17   ; 
- D 0 - I - 0x011263 04:9253: E2        .byte con_se_cb_E2, $3B   ; 
- D 0 - I - 0x011265 04:9255: EA        .byte con_se_cb_EA, $02   ; 
- D 0 - I - 0x011267 04:9257: E7        .byte con_se_cb_E7, $52, $04   ; 
- D 0 - I - 0x01126A 04:925A: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x01126B 04:925B: 81        .byte $81   ; 
- D 0 - I - 0x01126C 04:925C: E1        .byte con_se_cb_E1, $0E   ; 
- D 0 - I - 0x01126E 04:925E: D0        .byte $D0   ; 
- D 0 - I - 0x01126F 04:925F: A1        .byte $A1   ; 
- D 0 - I - 0x011270 04:9260: FE        .byte con_se_cb_jmp, $FF   ; 
- D 0 - I - 0x011272 04:9262: 29 91     .word loc_FE_9129



_off000_9264_74_00:
- D 0 - I - 0x011274 04:9264: E1        .byte con_se_cb_E1, $07   ; 
- D 0 - I - 0x011276 04:9266: 0C        .byte $0C   ; 
_off000_9267_78_00:
loc_FE_9267:
- D 0 - I - 0x011277 04:9267: E8        .byte con_se_cb_E8, $82   ; 
- D 0 - I - 0x011279 04:9269: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x01127A 04:926A: 07        .byte $07   ; 
- D 0 - I - 0x01127B 04:926B: 38        .byte $38   ; 
- D 0 - I - 0x01127C 04:926C: 83        .byte $83   ; 
- D 0 - I - 0x01127D 04:926D: 15        .byte $15   ; 
- D 0 - I - 0x01127E 04:926E: EA        .byte con_se_cb_EA, $03   ; 
- D 0 - I - 0x011280 04:9270: E2        .byte con_se_cb_E2, $BA   ; 
- D 0 - I - 0x011282 04:9272: FB        .byte con_se_cb_FB   ; 
- D 0 - I - 0x011283 04:9273: F0        .byte con_se_cb_F0   ; 
- D 0 - I - 0x011284 04:9274: 52        .byte $52   ; 
- D 0 - I - 0x011285 04:9275: 52        .byte $52   ; 
- D 0 - I - 0x011286 04:9276: D0        .byte $D0   ; 
- D 0 - I - 0x011287 04:9277: A1        .byte $A1   ; 
- D 0 - I - 0x011288 04:9278: C1        .byte $C1   ; 
- D 0 - I - 0x011289 04:9279: 51        .byte $51   ; 
- D 0 - I - 0x01128A 04:927A: C1        .byte $C1   ; 
- D 0 - I - 0x01128B 04:927B: 51        .byte $51   ; 
- D 0 - I - 0x01128C 04:927C: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x01128D 04:927D: 51        .byte $51   ; 
- D 0 - I - 0x01128E 04:927E: F0        .byte con_se_cb_F0   ; 
- D 0 - I - 0x01128F 04:927F: C1        .byte $C1   ; 
- D 0 - I - 0x011290 04:9280: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x011291 04:9281: 31        .byte $31   ; 
- D 0 - I - 0x011292 04:9282: FE        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x011293 04:9283: 04        .byte $04   ; 
- D 0 - I - 0x011294 04:9284: FD        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x011295 04:9285: 39 96     .word sub_FD_9639
- D 0 - I - 0x011297 04:9287: D0        .byte $D0   ; 
- D 0 - I - 0x011298 04:9288: E6        .byte con_se_cb_E6, $00   ; 
- D 0 - I - 0x01129A 04:928A: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x01129B 04:928B: 07        .byte $07   ; 
- D 0 - I - 0x01129C 04:928C: 78        .byte $78   ; 
- D 0 - I - 0x01129D 04:928D: 83        .byte $83   ; 
- D 0 - I - 0x01129E 04:928E: 15        .byte $15   ; 
- D 0 - I - 0x01129F 04:928F: EA        .byte con_se_cb_EA, $00   ; 
- D 0 - I - 0x0112A1 04:9291: E2        .byte con_se_cb_E2, $36   ; 
- D 0 - I - 0x0112A3 04:9293: F0        .byte con_se_cb_F0   ; 
- D 0 - I - 0x0112A4 04:9294: 52        .byte $52   ; 
- D 0 - I - 0x0112A5 04:9295: 52        .byte $52   ; 
- D 0 - I - 0x0112A6 04:9296: A1        .byte $A1   ; 
- D 0 - I - 0x0112A7 04:9297: C1        .byte $C1   ; 
- D 0 - I - 0x0112A8 04:9298: 51        .byte $51   ; 
- D 0 - I - 0x0112A9 04:9299: C1        .byte $C1   ; 
- D 0 - I - 0x0112AA 04:929A: 51        .byte $51   ; 
- D 0 - I - 0x0112AB 04:929B: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x0112AC 04:929C: 51        .byte $51   ; 
- D 0 - I - 0x0112AD 04:929D: F0        .byte con_se_cb_F0   ; 
- D 0 - I - 0x0112AE 04:929E: C1        .byte $C1   ; 
- D 0 - I - 0x0112AF 04:929F: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x0112B0 04:92A0: 31        .byte $31   ; 
- D 0 - I - 0x0112B1 04:92A1: FD        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x0112B2 04:92A2: 39 96     .word sub_FD_9639
- D 0 - I - 0x0112B4 04:92A4: D0        .byte $D0   ; 
- D 0 - I - 0x0112B5 04:92A5: E6        .byte con_se_cb_E6, $00   ; 
- D 0 - I - 0x0112B7 04:92A7: EA        .byte con_se_cb_EA, $00   ; 
- D 0 - I - 0x0112B9 04:92A9: E2        .byte con_se_cb_E2, $36   ; 
- D 0 - I - 0x0112BB 04:92AB: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x0112BC 04:92AC: 07        .byte $07   ; 
- D 0 - I - 0x0112BD 04:92AD: 75        .byte $75   ; 
- D 0 - I - 0x0112BE 04:92AE: 81        .byte $81   ; 
- D 0 - I - 0x0112BF 04:92AF: 18        .byte $18   ; 
- D 0 - I - 0x0112C0 04:92B0: E7        .byte con_se_cb_E7, $52, $04   ; 
- D 0 - I - 0x0112C3 04:92B3: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x0112C4 04:92B4: A1        .byte $A1   ; 
- D 0 - I - 0x0112C5 04:92B5: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x0112C6 04:92B6: A1        .byte $A1   ; 
- D 0 - I - 0x0112C7 04:92B7: A1        .byte $A1   ; 
- D 0 - I - 0x0112C8 04:92B8: C2        .byte $C2   ; 
- D 0 - I - 0x0112C9 04:92B9: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x0112CA 04:92BA: A1        .byte $A1   ; 
- D 0 - I - 0x0112CB 04:92BB: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x0112CC 04:92BC: A1        .byte $A1   ; 
- D 0 - I - 0x0112CD 04:92BD: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x0112CE 04:92BE: A1        .byte $A1   ; 
- D 0 - I - 0x0112CF 04:92BF: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x0112D0 04:92C0: C2        .byte $C2   ; 
- D 0 - I - 0x0112D1 04:92C1: A2        .byte $A2   ; 
- D 0 - I - 0x0112D2 04:92C2: FD        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x0112D3 04:92C3: 5B 96     .word sub_FD_965B
- D 0 - I - 0x0112D5 04:92C5: 31        .byte $31   ; 
- D 0 - I - 0x0112D6 04:92C6: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x0112D7 04:92C7: C1        .byte $C1   ; 
- D 0 - I - 0x0112D8 04:92C8: A1        .byte $A1   ; 
- D 0 - I - 0x0112D9 04:92C9: 73        .byte $73   ; 
- D 0 - I - 0x0112DA 04:92CA: 71        .byte $71   ; 
- D 0 - I - 0x0112DB 04:92CB: 51        .byte $51   ; 
- D 0 - I - 0x0112DC 04:92CC: 33        .byte $33   ; 
- D 0 - I - 0x0112DD 04:92CD: 31        .byte $31   ; 
- D 0 - I - 0x0112DE 04:92CE: E7        .byte con_se_cb_E7, $00   ; 
- D 0 - I - 0x0112E0 04:92D0: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x0112E1 04:92D1: A6        .byte $A6   ; 
- D 0 - I - 0x0112E2 04:92D2: E2        .byte con_se_cb_E2, $36   ; 
- D 0 - I - 0x0112E4 04:92D4: D0        .byte $D0   ; 
- D 0 - I - 0x0112E5 04:92D5: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x0112E6 04:92D6: 07        .byte $07   ; 
- D 0 - I - 0x0112E7 04:92D7: 75        .byte $75   ; 
- D 0 - I - 0x0112E8 04:92D8: 82        .byte $82   ; 
- D 0 - I - 0x0112E9 04:92D9: 18        .byte $18   ; 
- D 0 - I - 0x0112EA 04:92DA: E7        .byte con_se_cb_E7, $52, $02   ; 
- D 0 - I - 0x0112ED 04:92DD: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x0112EE 04:92DE: 31        .byte $31   ; 
- D 0 - I - 0x0112EF 04:92DF: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x0112F0 04:92E0: 31        .byte $31   ; 
- D 0 - I - 0x0112F1 04:92E1: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x0112F2 04:92E2: 31        .byte $31   ; 
- D 0 - I - 0x0112F3 04:92E3: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x0112F4 04:92E4: 31        .byte $31   ; 
- D 0 - I - 0x0112F5 04:92E5: A1        .byte $A1   ; 
- D 0 - I - 0x0112F6 04:92E6: 31        .byte $31   ; 
- D 0 - I - 0x0112F7 04:92E7: FD        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x0112F8 04:92E8: 5B 96     .word sub_FD_965B
- D 0 - I - 0x0112FA 04:92EA: A1        .byte $A1   ; 
- D 0 - I - 0x0112FB 04:92EB: 81        .byte $81   ; 
- D 0 - I - 0x0112FC 04:92EC: 61        .byte $61   ; 
- D 0 - I - 0x0112FD 04:92ED: 33        .byte $33   ; 
- D 0 - I - 0x0112FE 04:92EE: 31        .byte $31   ; 
- D 0 - I - 0x0112FF 04:92EF: 11        .byte $11   ; 
- D 0 - I - 0x011300 04:92F0: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011301 04:92F1: C4        .byte $C4   ; 
- D 0 - I - 0x011302 04:92F2: D0        .byte $D0   ; 
- D 0 - I - 0x011303 04:92F3: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x011304 04:92F4: 07        .byte $07   ; 
- D 0 - I - 0x011305 04:92F5: 76        .byte $76   ; 
- D 0 - I - 0x011306 04:92F6: 82        .byte $82   ; 
- D 0 - I - 0x011307 04:92F7: 18        .byte $18   ; 
- D 0 - I - 0x011308 04:92F8: E2        .byte con_se_cb_E2, $36   ; 
- D 0 - I - 0x01130A 04:92FA: E7        .byte con_se_cb_E7, $52, $03   ; 
- D 0 - I - 0x01130D 04:92FD: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x01130E 04:92FE: 51        .byte $51   ; 
- D 0 - I - 0x01130F 04:92FF: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x011310 04:9300: 81        .byte $81   ; 
- D 0 - I - 0x011311 04:9301: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011312 04:9302: 51        .byte $51   ; 
- D 0 - I - 0x011313 04:9303: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x011314 04:9304: 81        .byte $81   ; 
- D 0 - I - 0x011315 04:9305: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011316 04:9306: 51        .byte $51   ; 
- D 0 - I - 0x011317 04:9307: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x011318 04:9308: 81        .byte $81   ; 
- D 0 - I - 0x011319 04:9309: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x01131A 04:930A: 51        .byte $51   ; 
- D 0 - I - 0x01131B 04:930B: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x01131C 04:930C: 81        .byte $81   ; 
- D 0 - I - 0x01131D 04:930D: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x01131E 04:930E: 51        .byte $51   ; 
- D 0 - I - 0x01131F 04:930F: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x011320 04:9310: 81        .byte $81   ; 
- D 0 - I - 0x011321 04:9311: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011322 04:9312: 32        .byte $32   ; 
- D 0 - I - 0x011323 04:9313: E2        .byte con_se_cb_E2, $00   ; 
- D 0 - I - 0x011325 04:9315: E7        .byte con_se_cb_E7, $50, $11   ; 
- D 0 - I - 0x011328 04:9318: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x011329 04:9319: 07        .byte $07   ; 
- D 0 - I - 0x01132A 04:931A: 73        .byte $73   ; 
- D 0 - I - 0x01132B 04:931B: 00        .byte $00   ; 
- D 0 - I - 0x01132C 04:931C: 22        .byte $22   ; 
- D 0 - I - 0x01132D 04:931D: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x01132E 04:931E: 31        .byte $31   ; 
- D 0 - I - 0x01132F 04:931F: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011330 04:9320: C1        .byte $C1   ; 
- D 0 - I - 0x011331 04:9321: A1        .byte $A1   ; 
- D 0 - I - 0x011332 04:9322: 73        .byte $73   ; 
- D 0 - I - 0x011333 04:9323: 71        .byte $71   ; 
- D 0 - I - 0x011334 04:9324: 51        .byte $51   ; 
- D 0 - I - 0x011335 04:9325: 33        .byte $33   ; 
- D 0 - I - 0x011336 04:9326: 31        .byte $31   ; 
- D 0 - I - 0x011337 04:9327: A6        .byte $A6   ; 
- D 0 - I - 0x011338 04:9328: D0        .byte $D0   ; 
- D 0 - I - 0x011339 04:9329: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x01133A 04:932A: 07        .byte $07   ; 
- D 0 - I - 0x01133B 04:932B: 77        .byte $77   ; 
- D 0 - I - 0x01133C 04:932C: 82        .byte $82   ; 
- D 0 - I - 0x01133D 04:932D: 18        .byte $18   ; 
- D 0 - I - 0x01133E 04:932E: E2        .byte con_se_cb_E2, $3A   ; 
- D 0 - I - 0x011340 04:9330: E7        .byte con_se_cb_E7, $52, $03   ; 
- D 0 - I - 0x011343 04:9333: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011344 04:9334: 71        .byte $71   ; 
- D 0 - I - 0x011345 04:9335: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x011346 04:9336: 71        .byte $71   ; 
- D 0 - I - 0x011347 04:9337: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011348 04:9338: 81        .byte $81   ; 
- D 0 - I - 0x011349 04:9339: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x01134A 04:933A: 81        .byte $81   ; 
- D 0 - I - 0x01134B 04:933B: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x01134C 04:933C: A2        .byte $A2   ; 
- D 0 - I - 0x01134D 04:933D: FD        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x01134E 04:933E: 94 95     .word sub_FD_9594
- D 0 - I - 0x011350 04:9340: E2        .byte con_se_cb_E2, $B6   ; 
- D 0 - I - 0x011352 04:9342: E9        .byte con_se_cb_E9, $01   ; 
- D 0 - I - 0x011354 04:9344: E7        .byte con_se_cb_E7, $00   ; 
- D 0 - I - 0x011356 04:9346: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x011357 04:9347: 07        .byte $07   ; 
- D 0 - I - 0x011358 04:9348: B2        .byte $B2   ; 
- D 0 - I - 0x011359 04:9349: 80        .byte $80   ; 
- D 0 - I - 0x01135A 04:934A: 15        .byte $15   ; 
- D 0 - I - 0x01135B 04:934B: 02        .byte $02   ; 
- D 0 - I - 0x01135C 04:934C: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x01135D 04:934D: 12        .byte $12   ; 
- D 0 - I - 0x01135E 04:934E: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x01135F 04:934F: 81        .byte $81   ; 
- D 0 - I - 0x011360 04:9350: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x011361 04:9351: 11        .byte $11   ; 
- D 0 - I - 0x011362 04:9352: 31        .byte $31   ; 
- D 0 - I - 0x011363 04:9353: 51        .byte $51   ; 
- D 0 - I - 0x011364 04:9354: 32        .byte $32   ; 
- D 0 - I - 0x011365 04:9355: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011366 04:9356: A2        .byte $A2   ; 
- D 0 - I - 0x011367 04:9357: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x011368 04:9358: 32        .byte $32   ; 
- D 0 - I - 0x011369 04:9359: 51        .byte $51   ; 
- D 0 - I - 0x01136A 04:935A: 21        .byte $21   ; 
- D 0 - I - 0x01136B 04:935B: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x01136C 04:935C: A2        .byte $A2   ; 
- D 0 - I - 0x01136D 04:935D: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x01136E 04:935E: 51        .byte $51   ; 
- D 0 - I - 0x01136F 04:935F: A1        .byte $A1   ; 
- D 0 - I - 0x011370 04:9360: 82        .byte $82   ; 
- D 0 - I - 0x011371 04:9361: 72        .byte $72   ; 
- D 0 - I - 0x011372 04:9362: E9        .byte con_se_cb_E9, $00   ; 
- D 0 - I - 0x011374 04:9364: D0        .byte $D0   ; 
- D 0 - I - 0x011375 04:9365: FD        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x011376 04:9366: 94 95     .word sub_FD_9594
- D 0 - I - 0x011378 04:9368: E2        .byte con_se_cb_E2, $00   ; 
- D 0 - I - 0x01137A 04:936A: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x01137B 04:936B: 07        .byte $07   ; 
- D 0 - I - 0x01137C 04:936C: B3        .byte $B3   ; 
- D 0 - I - 0x01137D 04:936D: 00        .byte $00   ; 
- D 0 - I - 0x01137E 04:936E: 13        .byte $13   ; 
- D 0 - I - 0x01137F 04:936F: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011380 04:9370: 82        .byte $82   ; 
- D 0 - I - 0x011381 04:9371: 51        .byte $51   ; 
- D 0 - I - 0x011382 04:9372: 82        .byte $82   ; 
- D 0 - I - 0x011383 04:9373: A1        .byte $A1   ; 
- D 0 - I - 0x011384 04:9374: 72        .byte $72   ; 
- D 0 - I - 0x011385 04:9375: 82        .byte $82   ; 
- D 0 - I - 0x011386 04:9376: A2        .byte $A2   ; 
- D 0 - I - 0x011387 04:9377: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x011388 04:9378: 12        .byte $12   ; 
- D 0 - I - 0x011389 04:9379: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x01138A 04:937A: 81        .byte $81   ; 
- D 0 - I - 0x01138B 04:937B: 51        .byte $51   ; 
- D 0 - I - 0x01138C 04:937C: 11        .byte $11   ; 
- D 0 - I - 0x01138D 04:937D: 51        .byte $51   ; 
- D 0 - I - 0x01138E 04:937E: D1        .byte $D1   ; 
- D 0 - I - 0x01138F 04:937F: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x011390 04:9380: 0A        .byte $0A   ; 
- D 0 - I - 0x011391 04:9381: 77        .byte $77   ; 
- D 0 - I - 0x011392 04:9382: 82        .byte $82   ; 
- D 0 - I - 0x011393 04:9383: 17        .byte $17   ; 
- D 0 - I - 0x011394 04:9384: E2        .byte con_se_cb_E2, $3B   ; 
- D 0 - I - 0x011396 04:9386: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011397 04:9387: 81        .byte $81   ; 
- D 0 - I - 0x011398 04:9388: 51        .byte $51   ; 
- D 0 - I - 0x011399 04:9389: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x01139A 04:938A: 11        .byte $11   ; 
- D 0 - I - 0x01139B 04:938B: E1        .byte con_se_cb_E1, $0E   ; 
- D 0 - I - 0x01139D 04:938D: D0        .byte $D0   ; 
- D 0 - I - 0x01139E 04:938E: 51        .byte $51   ; 
- D 0 - I - 0x01139F 04:938F: FE        .byte con_se_cb_jmp, $FF   ; 
- D 0 - I - 0x0113A1 04:9391: 67 92     .word loc_FE_9267



_off000_9393_74_02:
- D 0 - I - 0x0113A3 04:9393: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x0113A4 04:9394: 07        .byte $07   ; 
- D 0 - I - 0x0113A5 04:9395: 03        .byte $03   ; 
- D 0 - I - 0x0113A6 04:9396: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x0113A7 04:9397: 32        .byte $32   ; 
- D 0 - I - 0x0113A8 04:9398: 31        .byte $31   ; 
- D 0 - I - 0x0113A9 04:9399: 31        .byte $31   ; 
- D 0 - I - 0x0113AA 04:939A: 31        .byte $31   ; 
- D 0 - I - 0x0113AB 04:939B: 31        .byte $31   ; 
- D 0 - I - 0x0113AC 04:939C: 12        .byte $12   ; 
- D 0 - I - 0x0113AD 04:939D: 11        .byte $11   ; 
- D 0 - I - 0x0113AE 04:939E: 11        .byte $11   ; 
- D 0 - I - 0x0113AF 04:939F: 11        .byte $11   ; 
- D 0 - I - 0x0113B0 04:93A0: 11        .byte $11   ; 
_off000_93A1_78_02:
loc_FE_93A1:
- D 0 - I - 0x0113B1 04:93A1: E8        .byte con_se_cb_E8, $0A   ; 
- D 0 - I - 0x0113B3 04:93A3: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x0113B4 04:93A4: 07        .byte $07   ; 
- D 0 - I - 0x0113B5 04:93A5: 05        .byte $05   ; 
- D 0 - I - 0x0113B6 04:93A6: FB        .byte con_se_cb_FB   ; 
- D 0 - I - 0x0113B7 04:93A7: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x0113B8 04:93A8: 52        .byte $52   ; 
- D 0 - I - 0x0113B9 04:93A9: 52        .byte $52   ; 
- D 0 - I - 0x0113BA 04:93AA: A1        .byte $A1   ; 
- D 0 - I - 0x0113BB 04:93AB: C1        .byte $C1   ; 
- D 0 - I - 0x0113BC 04:93AC: 51        .byte $51   ; 
- D 0 - I - 0x0113BD 04:93AD: C1        .byte $C1   ; 
- D 0 - I - 0x0113BE 04:93AE: 51        .byte $51   ; 
- D 0 - I - 0x0113BF 04:93AF: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x0113C0 04:93B0: 51        .byte $51   ; 
- D 0 - I - 0x0113C1 04:93B1: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x0113C2 04:93B2: 51        .byte $51   ; 
- D 0 - I - 0x0113C3 04:93B3: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x0113C4 04:93B4: 31        .byte $31   ; 
- D 0 - I - 0x0113C5 04:93B5: FE        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x0113C6 04:93B6: 08        .byte $08   ; 
- D 0 - I - 0x0113C7 04:93B7: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x0113C8 04:93B8: 07        .byte $07   ; 
- D 0 - I - 0x0113C9 04:93B9: 05        .byte $05   ; 
- D 0 - I - 0x0113CA 04:93BA: FB        .byte con_se_cb_FB   ; 
- D 0 - I - 0x0113CB 04:93BB: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x0113CC 04:93BC: 52        .byte $52   ; 
- D 0 - I - 0x0113CD 04:93BD: 52        .byte $52   ; 
- D 0 - I - 0x0113CE 04:93BE: A1        .byte $A1   ; 
- D 0 - I - 0x0113CF 04:93BF: C1        .byte $C1   ; 
- D 0 - I - 0x0113D0 04:93C0: 51        .byte $51   ; 
- D 0 - I - 0x0113D1 04:93C1: C1        .byte $C1   ; 
- D 0 - I - 0x0113D2 04:93C2: 51        .byte $51   ; 
- D 0 - I - 0x0113D3 04:93C3: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x0113D4 04:93C4: 51        .byte $51   ; 
- D 0 - I - 0x0113D5 04:93C5: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x0113D6 04:93C6: 51        .byte $51   ; 
- D 0 - I - 0x0113D7 04:93C7: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x0113D8 04:93C8: 31        .byte $31   ; 
- D 0 - I - 0x0113D9 04:93C9: FE        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x0113DA 04:93CA: 03        .byte $03   ; 
- D 0 - I - 0x0113DB 04:93CB: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x0113DC 04:93CC: 51        .byte $51   ; 
- D 0 - I - 0x0113DD 04:93CD: 31        .byte $31   ; 
- D 0 - I - 0x0113DE 04:93CE: 31        .byte $31   ; 
- D 0 - I - 0x0113DF 04:93CF: 52        .byte $52   ; 
- D 0 - I - 0x0113E0 04:93D0: 01        .byte $01   ; 
- D 0 - I - 0x0113E1 04:93D1: 32        .byte $32   ; 
- D 0 - I - 0x0113E2 04:93D2: 52        .byte $52   ; 
- D 0 - I - 0x0113E3 04:93D3: 32        .byte $32   ; 
- D 0 - I - 0x0113E4 04:93D4: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x0113E5 04:93D5: 07        .byte $07   ; 
- D 0 - I - 0x0113E6 04:93D6: 05        .byte $05   ; 
- D 0 - I - 0x0113E7 04:93D7: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x0113E8 04:93D8: 12        .byte $12   ; 
- D 0 - I - 0x0113E9 04:93D9: 12        .byte $12   ; 
- D 0 - I - 0x0113EA 04:93DA: 71        .byte $71   ; 
- D 0 - I - 0x0113EB 04:93DB: 81        .byte $81   ; 
- D 0 - I - 0x0113EC 04:93DC: 11        .byte $11   ; 
- D 0 - I - 0x0113ED 04:93DD: 81        .byte $81   ; 
- D 0 - I - 0x0113EE 04:93DE: 11        .byte $11   ; 
- D 0 - I - 0x0113EF 04:93DF: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x0113F0 04:93E0: 11        .byte $11   ; 
- D 0 - I - 0x0113F1 04:93E1: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x0113F2 04:93E2: 11        .byte $11   ; 
- D 0 - I - 0x0113F3 04:93E3: A1        .byte $A1   ; 
- D 0 - I - 0x0113F4 04:93E4: 32        .byte $32   ; 
- D 0 - I - 0x0113F5 04:93E5: 32        .byte $32   ; 
- D 0 - I - 0x0113F6 04:93E6: 81        .byte $81   ; 
- D 0 - I - 0x0113F7 04:93E7: A1        .byte $A1   ; 
- D 0 - I - 0x0113F8 04:93E8: 81        .byte $81   ; 
- D 0 - I - 0x0113F9 04:93E9: A1        .byte $A1   ; 
- D 0 - I - 0x0113FA 04:93EA: 71        .byte $71   ; 
- D 0 - I - 0x0113FB 04:93EB: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x0113FC 04:93EC: 31        .byte $31   ; 
- D 0 - I - 0x0113FD 04:93ED: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x0113FE 04:93EE: 31        .byte $31   ; 
- D 0 - I - 0x0113FF 04:93EF: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011400 04:93F0: 11        .byte $11   ; 
- D 0 - I - 0x011401 04:93F1: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x011402 04:93F2: 62        .byte $62   ; 
- D 0 - I - 0x011403 04:93F3: 62        .byte $62   ; 
- D 0 - I - 0x011404 04:93F4: 81        .byte $81   ; 
- D 0 - I - 0x011405 04:93F5: A1        .byte $A1   ; 
- D 0 - I - 0x011406 04:93F6: 61        .byte $61   ; 
- D 0 - I - 0x011407 04:93F7: A1        .byte $A1   ; 
- D 0 - I - 0x011408 04:93F8: 61        .byte $61   ; 
- D 0 - I - 0x011409 04:93F9: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x01140A 04:93FA: 31        .byte $31   ; 
- D 0 - I - 0x01140B 04:93FB: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x01140C 04:93FC: 31        .byte $31   ; 
- D 0 - I - 0x01140D 04:93FD: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x01140E 04:93FE: 11        .byte $11   ; 
- D 0 - I - 0x01140F 04:93FF: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x011410 04:9400: 52        .byte $52   ; 
- D 0 - I - 0x011411 04:9401: 52        .byte $52   ; 
- D 0 - I - 0x011412 04:9402: 31        .byte $31   ; 
- D 0 - I - 0x011413 04:9403: 51        .byte $51   ; 
- D 0 - I - 0x011414 04:9404: 51        .byte $51   ; 
- D 0 - I - 0x011415 04:9405: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011416 04:9406: 51        .byte $51   ; 
- D 0 - I - 0x011417 04:9407: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x011418 04:9408: 51        .byte $51   ; 
- D 0 - I - 0x011419 04:9409: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x01141A 04:940A: 31        .byte $31   ; 
- D 0 - I - 0x01141B 04:940B: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x01141C 04:940C: 51        .byte $51   ; 
- D 0 - I - 0x01141D 04:940D: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x01141E 04:940E: 11        .byte $11   ; 
- D 0 - I - 0x01141F 04:940F: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x011420 04:9410: 12        .byte $12   ; 
- D 0 - I - 0x011421 04:9411: 12        .byte $12   ; 
- D 0 - I - 0x011422 04:9412: 71        .byte $71   ; 
- D 0 - I - 0x011423 04:9413: 81        .byte $81   ; 
- D 0 - I - 0x011424 04:9414: 11        .byte $11   ; 
- D 0 - I - 0x011425 04:9415: 81        .byte $81   ; 
- D 0 - I - 0x011426 04:9416: 11        .byte $11   ; 
- D 0 - I - 0x011427 04:9417: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011428 04:9418: 11        .byte $11   ; 
- D 0 - I - 0x011429 04:9419: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x01142A 04:941A: 11        .byte $11   ; 
- D 0 - I - 0x01142B 04:941B: B1        .byte $B1   ; 
- D 0 - I - 0x01142C 04:941C: 32        .byte $32   ; 
- D 0 - I - 0x01142D 04:941D: 32        .byte $32   ; 
- D 0 - I - 0x01142E 04:941E: 81        .byte $81   ; 
- D 0 - I - 0x01142F 04:941F: A1        .byte $A1   ; 
- D 0 - I - 0x011430 04:9420: F0        .byte con_se_cb_F0   ; 
- D 0 - I - 0x011431 04:9421: A2        .byte $A2   ; 
- D 0 - I - 0x011432 04:9422: C2        .byte $C2   ; 
- D 0 - I - 0x011433 04:9423: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x011434 04:9424: 12        .byte $12   ; 
- D 0 - I - 0x011435 04:9425: FD        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x011436 04:9426: DB 95     .word sub_FD_95DB
- D 0 - I - 0x011438 04:9428: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x011439 04:9429: A2        .byte $A2   ; 
- D 0 - I - 0x01143A 04:942A: A2        .byte $A2   ; 
- D 0 - I - 0x01143B 04:942B: 51        .byte $51   ; 
- D 0 - I - 0x01143C 04:942C: A1        .byte $A1   ; 
- D 0 - I - 0x01143D 04:942D: C2        .byte $C2   ; 
- D 0 - I - 0x01143E 04:942E: C2        .byte $C2   ; 
- D 0 - I - 0x01143F 04:942F: 71        .byte $71   ; 
- D 0 - I - 0x011440 04:9430: C1        .byte $C1   ; 
- D 0 - I - 0x011441 04:9431: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011442 04:9432: 22        .byte $22   ; 
- D 0 - I - 0x011443 04:9433: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x011444 04:9434: A1        .byte $A1   ; 
- D 0 - I - 0x011445 04:9435: 51        .byte $51   ; 
- D 0 - I - 0x011446 04:9436: A1        .byte $A1   ; 
- D 0 - I - 0x011447 04:9437: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011448 04:9438: 21        .byte $21   ; 
- D 0 - I - 0x011449 04:9439: 32        .byte $32   ; 
- D 0 - I - 0x01144A 04:943A: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x01144B 04:943B: A2        .byte $A2   ; 
- D 0 - I - 0x01144C 04:943C: 42        .byte $42   ; 
- D 0 - I - 0x01144D 04:943D: FD        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x01144E 04:943E: DB 95     .word sub_FD_95DB
- D 0 - I - 0x011450 04:9440: A2        .byte $A2   ; 
- D 0 - I - 0x011451 04:9441: A2        .byte $A2   ; 
- D 0 - I - 0x011452 04:9442: 51        .byte $51   ; 
- D 0 - I - 0x011453 04:9443: A1        .byte $A1   ; 
- D 0 - I - 0x011454 04:9444: C2        .byte $C2   ; 
- D 0 - I - 0x011455 04:9445: C2        .byte $C2   ; 
- D 0 - I - 0x011456 04:9446: 71        .byte $71   ; 
- D 0 - I - 0x011457 04:9447: A1        .byte $A1   ; 
- D 0 - I - 0x011458 04:9448: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011459 04:9449: 12        .byte $12   ; 
- D 0 - I - 0x01145A 04:944A: 11        .byte $11   ; 
- D 0 - I - 0x01145B 04:944B: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x01145C 04:944C: 51        .byte $51   ; 
- D 0 - I - 0x01145D 04:944D: 81        .byte $81   ; 
- D 0 - I - 0x01145E 04:944E: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x01145F 04:944F: 11        .byte $11   ; 
- D 0 - I - 0x011460 04:9450: E1        .byte con_se_cb_E1, $0A   ; 
- D 0 - I - 0x011462 04:9452: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x011463 04:9453: 11        .byte $11   ; 
- D 0 - I - 0x011464 04:9454: A1        .byte $A1   ; 
- D 0 - I - 0x011465 04:9455: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x011466 04:9456: 81        .byte $81   ; 
- D 0 - I - 0x011467 04:9457: E1        .byte con_se_cb_E1, $0E   ; 
- D 0 - I - 0x011469 04:9459: A1        .byte $A1   ; 
- D 0 - I - 0x01146A 04:945A: FE        .byte con_se_cb_jmp, $FF   ; 
- D 0 - I - 0x01146C 04:945C: A1 93     .word loc_FE_93A1



_off000_945E_74_03:
- D 0 - I - 0x01146E 04:945E: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x01146F 04:945F: 01        .byte $01   ; 
- D 0 - I - 0x011470 04:9460: 5E        .byte $5E   ; 
- D 0 - I - 0x011471 04:9461: 57        .byte $57   ; 
- D 0 - I - 0x011472 04:9462: 57        .byte $57   ; 
- D 0 - I - 0x011473 04:9463: 57        .byte $57   ; 
- D 0 - I - 0x011474 04:9464: 57        .byte $57   ; 
- D 0 - I - 0x011475 04:9465: 4E        .byte $4E   ; 
- D 0 - I - 0x011476 04:9466: 47        .byte $47   ; 
- D 0 - I - 0x011477 04:9467: 47        .byte $47   ; 
- D 0 - I - 0x011478 04:9468: 47        .byte $47   ; 
- D 0 - I - 0x011479 04:9469: 47        .byte $47   ; 
_off000_946A_78_03:
loc_FE_946A:
- D 0 - I - 0x01147A 04:946A: FB        .byte con_se_cb_FB   ; 
- D 0 - I - 0x01147B 04:946B: C7        .byte $C7   ; 
- D 0 - I - 0x01147C 04:946C: 17        .byte $17   ; 
- D 0 - I - 0x01147D 04:946D: C7        .byte $C7   ; 
- D 0 - I - 0x01147E 04:946E: 17        .byte $17   ; 
- D 0 - I - 0x01147F 04:946F: B7        .byte $B7   ; 
- D 0 - I - 0x011480 04:9470: 17        .byte $17   ; 
- D 0 - I - 0x011481 04:9471: C7        .byte $C7   ; 
- D 0 - I - 0x011482 04:9472: 37        .byte $37   ; 
- D 0 - I - 0x011483 04:9473: 17        .byte $17   ; 
- D 0 - I - 0x011484 04:9474: B7        .byte $B7   ; 
- D 0 - I - 0x011485 04:9475: B7        .byte $B7   ; 
- D 0 - I - 0x011486 04:9476: 17        .byte $17   ; 
- D 0 - I - 0x011487 04:9477: FE        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x011488 04:9478: 03        .byte $03   ; 
- D 0 - I - 0x011489 04:9479: B7        .byte $B7   ; 
- D 0 - I - 0x01148A 04:947A: B7        .byte $B7   ; 
- D 0 - I - 0x01148B 04:947B: B7        .byte $B7   ; 
- D 0 - I - 0x01148C 04:947C: B7        .byte $B7   ; 
- D 0 - I - 0x01148D 04:947D: B7        .byte $B7   ; 
- D 0 - I - 0x01148E 04:947E: B7        .byte $B7   ; 
- D 0 - I - 0x01148F 04:947F: 93        .byte $93   ; 
- D 0 - I - 0x011490 04:9480: 94        .byte $94   ; 
- D 0 - I - 0x011491 04:9481: 87        .byte $87   ; 
- D 0 - I - 0x011492 04:9482: 87        .byte $87   ; 
- D 0 - I - 0x011493 04:9483: 77        .byte $77   ; 
- D 0 - I - 0x011494 04:9484: 77        .byte $77   ; 
- D 0 - I - 0x011495 04:9485: 77        .byte $77   ; 
- D 0 - I - 0x011496 04:9486: FB        .byte con_se_cb_FB   ; 
- D 0 - I - 0x011497 04:9487: C7        .byte $C7   ; 
- D 0 - I - 0x011498 04:9488: 17        .byte $17   ; 
- D 0 - I - 0x011499 04:9489: 17        .byte $17   ; 
- D 0 - I - 0x01149A 04:948A: B7        .byte $B7   ; 
- D 0 - I - 0x01149B 04:948B: 17        .byte $17   ; 
- D 0 - I - 0x01149C 04:948C: 17        .byte $17   ; 
- D 0 - I - 0x01149D 04:948D: C7        .byte $C7   ; 
- D 0 - I - 0x01149E 04:948E: 37        .byte $37   ; 
- D 0 - I - 0x01149F 04:948F: 17        .byte $17   ; 
- D 0 - I - 0x0114A0 04:9490: B7        .byte $B7   ; 
- D 0 - I - 0x0114A1 04:9491: C7        .byte $C7   ; 
- D 0 - I - 0x0114A2 04:9492: 17        .byte $17   ; 
- D 0 - I - 0x0114A3 04:9493: FE        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x0114A4 04:9494: 03        .byte $03   ; 
- D 0 - I - 0x0114A5 04:9495: C7        .byte $C7   ; 
- D 0 - I - 0x0114A6 04:9496: 17        .byte $17   ; 
- D 0 - I - 0x0114A7 04:9497: 17        .byte $17   ; 
- D 0 - I - 0x0114A8 04:9498: B7        .byte $B7   ; 
- D 0 - I - 0x0114A9 04:9499: 17        .byte $17   ; 
- D 0 - I - 0x0114AA 04:949A: 17        .byte $17   ; 
- D 0 - I - 0x0114AB 04:949B: 93        .byte $93   ; 
- D 0 - I - 0x0114AC 04:949C: 94        .byte $94   ; 
- D 0 - I - 0x0114AD 04:949D: 87        .byte $87   ; 
- D 0 - I - 0x0114AE 04:949E: 77        .byte $77   ; 
- D 0 - I - 0x0114AF 04:949F: B7        .byte $B7   ; 
- D 0 - I - 0x0114B0 04:94A0: B7        .byte $B7   ; 
- D 0 - I - 0x0114B1 04:94A1: B7        .byte $B7   ; 
- D 0 - I - 0x0114B2 04:94A2: FB        .byte con_se_cb_FB   ; 
- D 0 - I - 0x0114B3 04:94A3: C7        .byte $C7   ; 
- D 0 - I - 0x0114B4 04:94A4: 17        .byte $17   ; 
- D 0 - I - 0x0114B5 04:94A5: 17        .byte $17   ; 
- D 0 - I - 0x0114B6 04:94A6: B7        .byte $B7   ; 
- D 0 - I - 0x0114B7 04:94A7: 17        .byte $17   ; 
- D 0 - I - 0x0114B8 04:94A8: 17        .byte $17   ; 
- D 0 - I - 0x0114B9 04:94A9: C7        .byte $C7   ; 
- D 0 - I - 0x0114BA 04:94AA: 37        .byte $37   ; 
- D 0 - I - 0x0114BB 04:94AB: 17        .byte $17   ; 
- D 0 - I - 0x0114BC 04:94AC: B7        .byte $B7   ; 
- D 0 - I - 0x0114BD 04:94AD: C7        .byte $C7   ; 
- D 0 - I - 0x0114BE 04:94AE: 17        .byte $17   ; 
- D 0 - I - 0x0114BF 04:94AF: FE        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x0114C0 04:94B0: 03        .byte $03   ; 
- D 0 - I - 0x0114C1 04:94B1: C7        .byte $C7   ; 
- D 0 - I - 0x0114C2 04:94B2: 47        .byte $47   ; 
- D 0 - I - 0x0114C3 04:94B3: 47        .byte $47   ; 
- D 0 - I - 0x0114C4 04:94B4: 57        .byte $57   ; 
- D 0 - I - 0x0114C5 04:94B5: 17        .byte $17   ; 
- D 0 - I - 0x0114C6 04:94B6: 17        .byte $17   ; 
- D 0 - I - 0x0114C7 04:94B7: 47        .byte $47   ; 
- D 0 - I - 0x0114C8 04:94B8: 17        .byte $17   ; 
- D 0 - I - 0x0114C9 04:94B9: 57        .byte $57   ; 
- D 0 - I - 0x0114CA 04:94BA: 17        .byte $17   ; 
- D 0 - I - 0x0114CB 04:94BB: 47        .byte $47   ; 
- D 0 - I - 0x0114CC 04:94BC: 17        .byte $17   ; 
- D 0 - I - 0x0114CD 04:94BD: C7        .byte $C7   ; 
- D 0 - I - 0x0114CE 04:94BE: 17        .byte $17   ; 
- D 0 - I - 0x0114CF 04:94BF: 17        .byte $17   ; 
- D 0 - I - 0x0114D0 04:94C0: B7        .byte $B7   ; 
- D 0 - I - 0x0114D1 04:94C1: 17        .byte $17   ; 
- D 0 - I - 0x0114D2 04:94C2: 37        .byte $37   ; 
- D 0 - I - 0x0114D3 04:94C3: C7        .byte $C7   ; 
- D 0 - I - 0x0114D4 04:94C4: 17        .byte $17   ; 
- D 0 - I - 0x0114D5 04:94C5: 17        .byte $17   ; 
- D 0 - I - 0x0114D6 04:94C6: B7        .byte $B7   ; 
- D 0 - I - 0x0114D7 04:94C7: 17        .byte $17   ; 
- D 0 - I - 0x0114D8 04:94C8: 17        .byte $17   ; 
- D 0 - I - 0x0114D9 04:94C9: C7        .byte $C7   ; 
- D 0 - I - 0x0114DA 04:94CA: 17        .byte $17   ; 
- D 0 - I - 0x0114DB 04:94CB: 17        .byte $17   ; 
- D 0 - I - 0x0114DC 04:94CC: B7        .byte $B7   ; 
- D 0 - I - 0x0114DD 04:94CD: 17        .byte $17   ; 
- D 0 - I - 0x0114DE 04:94CE: 17        .byte $17   ; 
- D 0 - I - 0x0114DF 04:94CF: B7        .byte $B7   ; 
- D 0 - I - 0x0114E0 04:94D0: B7        .byte $B7   ; 
- D 0 - I - 0x0114E1 04:94D1: B7        .byte $B7   ; 
- D 0 - I - 0x0114E2 04:94D2: 97        .byte $97   ; 
- D 0 - I - 0x0114E3 04:94D3: 87        .byte $87   ; 
- D 0 - I - 0x0114E4 04:94D4: 77        .byte $77   ; 
- D 0 - I - 0x0114E5 04:94D5: C7        .byte $C7   ; 
- D 0 - I - 0x0114E6 04:94D6: 17        .byte $17   ; 
- D 0 - I - 0x0114E7 04:94D7: 17        .byte $17   ; 
- D 0 - I - 0x0114E8 04:94D8: B7        .byte $B7   ; 
- D 0 - I - 0x0114E9 04:94D9: 17        .byte $17   ; 
- D 0 - I - 0x0114EA 04:94DA: 37        .byte $37   ; 
- D 0 - I - 0x0114EB 04:94DB: C7        .byte $C7   ; 
- D 0 - I - 0x0114EC 04:94DC: 17        .byte $17   ; 
- D 0 - I - 0x0114ED 04:94DD: 17        .byte $17   ; 
- D 0 - I - 0x0114EE 04:94DE: B7        .byte $B7   ; 
- D 0 - I - 0x0114EF 04:94DF: 17        .byte $17   ; 
- D 0 - I - 0x0114F0 04:94E0: 17        .byte $17   ; 
- D 0 - I - 0x0114F1 04:94E1: B3        .byte $B3   ; 
- D 0 - I - 0x0114F2 04:94E2: B4        .byte $B4   ; 
- D 0 - I - 0x0114F3 04:94E3: B7        .byte $B7   ; 
- D 0 - I - 0x0114F4 04:94E4: B7        .byte $B7   ; 
- D 0 - I - 0x0114F5 04:94E5: 93        .byte $93   ; 
- D 0 - I - 0x0114F6 04:94E6: 94        .byte $94   ; 
- D 0 - I - 0x0114F7 04:94E7: 97        .byte $97   ; 
- D 0 - I - 0x0114F8 04:94E8: 97        .byte $97   ; 
- D 0 - I - 0x0114F9 04:94E9: 83        .byte $83   ; 
- D 0 - I - 0x0114FA 04:94EA: 84        .byte $84   ; 
- D 0 - I - 0x0114FB 04:94EB: 87        .byte $87   ; 
- D 0 - I - 0x0114FC 04:94EC: 87        .byte $87   ; 
- D 0 - I - 0x0114FD 04:94ED: 73        .byte $73   ; 
- D 0 - I - 0x0114FE 04:94EE: 74        .byte $74   ; 
- D 0 - I - 0x0114FF 04:94EF: 77        .byte $77   ; 
- D 0 - I - 0x011500 04:94F0: 77        .byte $77   ; 
- D 0 - I - 0x011501 04:94F1: C7        .byte $C7   ; 
- D 0 - I - 0x011502 04:94F2: 17        .byte $17   ; 
- D 0 - I - 0x011503 04:94F3: 17        .byte $17   ; 
- D 0 - I - 0x011504 04:94F4: B7        .byte $B7   ; 
- D 0 - I - 0x011505 04:94F5: 17        .byte $17   ; 
- D 0 - I - 0x011506 04:94F6: 37        .byte $37   ; 
- D 0 - I - 0x011507 04:94F7: C7        .byte $C7   ; 
- D 0 - I - 0x011508 04:94F8: 17        .byte $17   ; 
- D 0 - I - 0x011509 04:94F9: 17        .byte $17   ; 
- D 0 - I - 0x01150A 04:94FA: B7        .byte $B7   ; 
- D 0 - I - 0x01150B 04:94FB: B7        .byte $B7   ; 
- D 0 - I - 0x01150C 04:94FC: C7        .byte $C7   ; 
- D 0 - I - 0x01150D 04:94FD: C7        .byte $C7   ; 
- D 0 - I - 0x01150E 04:94FE: 17        .byte $17   ; 
- D 0 - I - 0x01150F 04:94FF: 17        .byte $17   ; 
- D 0 - I - 0x011510 04:9500: 93        .byte $93   ; 
- D 0 - I - 0x011511 04:9501: 94        .byte $94   ; 
- D 0 - I - 0x011512 04:9502: 83        .byte $83   ; 
- D 0 - I - 0x011513 04:9503: 84        .byte $84   ; 
- D 0 - I - 0x011514 04:9504: 73        .byte $73   ; 
- D 0 - I - 0x011515 04:9505: 74        .byte $74   ; 
- D 0 - I - 0x011516 04:9506: FB        .byte con_se_cb_FB   ; 
- D 0 - I - 0x011517 04:9507: B4        .byte $B4   ; 
- D 0 - I - 0x011518 04:9508: B5        .byte $B5   ; 
- D 0 - I - 0x011519 04:9509: C5        .byte $C5   ; 
- D 0 - I - 0x01151A 04:950A: FE        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x01151B 04:950B: 03        .byte $03   ; 
- D 0 - I - 0x01151C 04:950C: FD        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x01151D 04:950D: E7 95     .word sub_FD_95E7
- D 0 - I - 0x01151F 04:950F: C7        .byte $C7   ; 
- D 0 - I - 0x011520 04:9510: 17        .byte $17   ; 
- D 0 - I - 0x011521 04:9511: 17        .byte $17   ; 
- D 0 - I - 0x011522 04:9512: B7        .byte $B7   ; 
- D 0 - I - 0x011523 04:9513: 17        .byte $17   ; 
- D 0 - I - 0x011524 04:9514: 37        .byte $37   ; 
- D 0 - I - 0x011525 04:9515: C7        .byte $C7   ; 
- D 0 - I - 0x011526 04:9516: 17        .byte $17   ; 
- D 0 - I - 0x011527 04:9517: 17        .byte $17   ; 
- D 0 - I - 0x011528 04:9518: B7        .byte $B7   ; 
- D 0 - I - 0x011529 04:9519: 17        .byte $17   ; 
- D 0 - I - 0x01152A 04:951A: 17        .byte $17   ; 
- D 0 - I - 0x01152B 04:951B: C7        .byte $C7   ; 
- D 0 - I - 0x01152C 04:951C: 17        .byte $17   ; 
- D 0 - I - 0x01152D 04:951D: 17        .byte $17   ; 
- D 0 - I - 0x01152E 04:951E: B7        .byte $B7   ; 
- D 0 - I - 0x01152F 04:951F: 17        .byte $17   ; 
- D 0 - I - 0x011530 04:9520: 17        .byte $17   ; 
- D 0 - I - 0x011531 04:9521: B3        .byte $B3   ; 
- D 0 - I - 0x011532 04:9522: B4        .byte $B4   ; 
- D 0 - I - 0x011533 04:9523: B7        .byte $B7   ; 
- D 0 - I - 0x011534 04:9524: B7        .byte $B7   ; 
- D 0 - I - 0x011535 04:9525: 97        .byte $97   ; 
- D 0 - I - 0x011536 04:9526: 87        .byte $87   ; 
- D 0 - I - 0x011537 04:9527: 77        .byte $77   ; 
- D 0 - I - 0x011538 04:9528: FD        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x011539 04:9529: E7 95     .word sub_FD_95E7
- D 0 - I - 0x01153B 04:952B: C7        .byte $C7   ; 
- D 0 - I - 0x01153C 04:952C: 17        .byte $17   ; 
- D 0 - I - 0x01153D 04:952D: 17        .byte $17   ; 
- D 0 - I - 0x01153E 04:952E: B7        .byte $B7   ; 
- D 0 - I - 0x01153F 04:952F: 17        .byte $17   ; 
- D 0 - I - 0x011540 04:9530: 37        .byte $37   ; 
- D 0 - I - 0x011541 04:9531: C7        .byte $C7   ; 
- D 0 - I - 0x011542 04:9532: 17        .byte $17   ; 
- D 0 - I - 0x011543 04:9533: 17        .byte $17   ; 
- D 0 - I - 0x011544 04:9534: B7        .byte $B7   ; 
- D 0 - I - 0x011545 04:9535: 17        .byte $17   ; 
- D 0 - I - 0x011546 04:9536: 17        .byte $17   ; 
- D 0 - I - 0x011547 04:9537: C7        .byte $C7   ; 
- D 0 - I - 0x011548 04:9538: 17        .byte $17   ; 
- D 0 - I - 0x011549 04:9539: 17        .byte $17   ; 
- D 0 - I - 0x01154A 04:953A: B7        .byte $B7   ; 
- D 0 - I - 0x01154B 04:953B: 17        .byte $17   ; 
- D 0 - I - 0x01154C 04:953C: 17        .byte $17   ; 
- D 0 - I - 0x01154D 04:953D: B6        .byte $B6   ; 
- D 0 - I - 0x01154E 04:953E: B5        .byte $B5   ; 
- D 0 - I - 0x01154F 04:953F: 95        .byte $95   ; 
- D 0 - I - 0x011550 04:9540: 95        .byte $95   ; 
- D 0 - I - 0x011551 04:9541: 86        .byte $86   ; 
- D 0 - I - 0x011552 04:9542: 85        .byte $85   ; 
- D 0 - I - 0x011553 04:9543: 76        .byte $76   ; 
- D 0 - I - 0x011554 04:9544: 76        .byte $76   ; 
- D 0 - I - 0x011555 04:9545: FE        .byte con_se_cb_jmp, $FF   ; 
- D 0 - I - 0x011557 04:9547: 6A 94     .word loc_FE_946A



sub_FD_9549:
- D 0 - I - 0x011559 04:9549: E7        .byte con_se_cb_E7, $00   ; 
- D 0 - I - 0x01155B 04:954B: EA        .byte con_se_cb_EA, $02   ; 
- D 0 - I - 0x01155D 04:954D: D0        .byte $D0   ; 
- D 0 - I - 0x01155E 04:954E: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x01155F 04:954F: 07        .byte $07   ; 
- D 0 - I - 0x011560 04:9550: 77        .byte $77   ; 
- D 0 - I - 0x011561 04:9551: 82        .byte $82   ; 
- D 0 - I - 0x011562 04:9552: 13        .byte $13   ; 
- D 0 - I - 0x011563 04:9553: E2        .byte con_se_cb_E2, $37   ; 
- D 0 - I - 0x011565 04:9555: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x011566 04:9556: 81        .byte $81   ; 
- D 0 - I - 0x011567 04:9557: 71        .byte $71   ; 
- D 0 - I - 0x011568 04:9558: 81        .byte $81   ; 
- D 0 - I - 0x011569 04:9559: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x01156A 04:955A: 01        .byte $01   ; 
- D 0 - I - 0x01156B 04:955B: 78        .byte $78   ; 
- D 0 - I - 0x01156C 04:955C: 83        .byte $83   ; 
- D 0 - I - 0x01156D 04:955D: 16        .byte $16   ; 
- D 0 - I - 0x01156E 04:955E: D1        .byte $D1   ; 
- D 0 - I - 0x01156F 04:955F: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011570 04:9560: 54        .byte $54   ; 
- D 0 - I - 0x011571 04:9561: 73        .byte $73   ; 
- D 0 - I - 0x011572 04:9562: 84        .byte $84   ; 
- D 0 - I - 0x011573 04:9563: 93        .byte $93   ; 
- D 0 - I - 0x011574 04:9564: D0        .byte $D0   ; 
- D 0 - I - 0x011575 04:9565: A7        .byte $A7   ; 
- D 0 - I - 0x011576 04:9566: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x011577 04:9567: 07        .byte $07   ; 
- D 0 - I - 0x011578 04:9568: 79        .byte $79   ; 
- D 0 - I - 0x011579 04:9569: 84        .byte $84   ; 
- D 0 - I - 0x01157A 04:956A: 18        .byte $18   ; 
- D 0 - I - 0x01157B 04:956B: A2        .byte $A2   ; 
- D 0 - I - 0x01157C 04:956C: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x01157D 04:956D: 32        .byte $32   ; 
- D 0 - I - 0x01157E 04:956E: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x01157F 04:956F: C2        .byte $C2   ; 
- D 0 - I - 0x011580 04:9570: D0        .byte $D0   ; 
- D 0 - I - 0x011581 04:9571: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x011582 04:9572: 07        .byte $07   ; 
- D 0 - I - 0x011583 04:9573: 77        .byte $77   ; 
- D 0 - I - 0x011584 04:9574: 82        .byte $82   ; 
- D 0 - I - 0x011585 04:9575: 13        .byte $13   ; 
- D 0 - I - 0x011586 04:9576: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x011587 04:9577: C1        .byte $C1   ; 
- D 0 - I - 0x011588 04:9578: A1        .byte $A1   ; 
- D 0 - I - 0x011589 04:9579: C1        .byte $C1   ; 
- D 0 - I - 0x01158A 04:957A: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x01158B 04:957B: 01        .byte $01   ; 
- D 0 - I - 0x01158C 04:957C: 78        .byte $78   ; 
- D 0 - I - 0x01158D 04:957D: 83        .byte $83   ; 
- D 0 - I - 0x01158E 04:957E: 16        .byte $16   ; 
- D 0 - I - 0x01158F 04:957F: D1        .byte $D1   ; 
- D 0 - I - 0x011590 04:9580: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011591 04:9581: 54        .byte $54   ; 
- D 0 - I - 0x011592 04:9582: 73        .byte $73   ; 
- D 0 - I - 0x011593 04:9583: 84        .byte $84   ; 
- D 0 - I - 0x011594 04:9584: 93        .byte $93   ; 
- D 0 - I - 0x011595 04:9585: D0        .byte $D0   ; 
- D 0 - I - 0x011596 04:9586: A7        .byte $A7   ; 
- D 0 - I - 0x011597 04:9587: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x011598 04:9588: 07        .byte $07   ; 
- D 0 - I - 0x011599 04:9589: 7A        .byte $7A   ; 
- D 0 - I - 0x01159A 04:958A: 84        .byte $84   ; 
- D 0 - I - 0x01159B 04:958B: 18        .byte $18   ; 
- D 0 - I - 0x01159C 04:958C: A2        .byte $A2   ; 
- D 0 - I - 0x01159D 04:958D: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x01159E 04:958E: 32        .byte $32   ; 
- D 0 - I - 0x01159F 04:958F: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x0115A0 04:9590: C2        .byte $C2   ; 
- D 0 - I - 0x0115A1 04:9591: E2        .byte con_se_cb_E2, $00   ; 
- D 0 - I - 0x0115A3 04:9593: FF        .byte con_se_cb_stop   ; 



sub_FD_9594:
- D 0 - I - 0x0115A4 04:9594: EA        .byte con_se_cb_EA, $02   ; 
- D 0 - I - 0x0115A6 04:9596: D1        .byte $D1   ; 
- D 0 - I - 0x0115A7 04:9597: E7        .byte con_se_cb_E7, $00   ; 
- D 0 - I - 0x0115A9 04:9599: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x0115AA 04:959A: 07        .byte $07   ; 
- D 0 - I - 0x0115AB 04:959B: 77        .byte $77   ; 
- D 0 - I - 0x0115AC 04:959C: 82        .byte $82   ; 
- D 0 - I - 0x0115AD 04:959D: 13        .byte $13   ; 
- D 0 - I - 0x0115AE 04:959E: E2        .byte con_se_cb_E2, $37   ; 
- D 0 - I - 0x0115B0 04:95A0: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x0115B1 04:95A1: 51        .byte $51   ; 
- D 0 - I - 0x0115B2 04:95A2: 31        .byte $31   ; 
- D 0 - I - 0x0115B3 04:95A3: 51        .byte $51   ; 
- D 0 - I - 0x0115B4 04:95A4: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x0115B5 04:95A5: 01        .byte $01   ; 
- D 0 - I - 0x0115B6 04:95A6: 77        .byte $77   ; 
- D 0 - I - 0x0115B7 04:95A7: 82        .byte $82   ; 
- D 0 - I - 0x0115B8 04:95A8: 16        .byte $16   ; 
- D 0 - I - 0x0115B9 04:95A9: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x0115BA 04:95AA: 84        .byte $84   ; 
- D 0 - I - 0x0115BB 04:95AB: A3        .byte $A3   ; 
- D 0 - I - 0x0115BC 04:95AC: C4        .byte $C4   ; 
- D 0 - I - 0x0115BD 04:95AD: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x0115BE 04:95AE: 13        .byte $13   ; 
- D 0 - I - 0x0115BF 04:95AF: 37        .byte $37   ; 
- D 0 - I - 0x0115C0 04:95B0: E1        .byte con_se_cb_E1, $07   ; 
- D 0 - I - 0x0115C2 04:95B2: D0        .byte $D0   ; 
- D 0 - I - 0x0115C3 04:95B3: E5        .byte con_se_cb_E5, $18   ; 
- D 0 - I - 0x0115C5 04:95B5: 52        .byte $52   ; 
- D 0 - I - 0x0115C6 04:95B6: 82        .byte $82   ; 
- D 0 - I - 0x0115C7 04:95B7: 52        .byte $52   ; 
- D 0 - I - 0x0115C8 04:95B8: D1        .byte $D1   ; 
- D 0 - I - 0x0115C9 04:95B9: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x0115CA 04:95BA: 07        .byte $07   ; 
- D 0 - I - 0x0115CB 04:95BB: 77        .byte $77   ; 
- D 0 - I - 0x0115CC 04:95BC: 82        .byte $82   ; 
- D 0 - I - 0x0115CD 04:95BD: 13        .byte $13   ; 
- D 0 - I - 0x0115CE 04:95BE: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x0115CF 04:95BF: 81        .byte $81   ; 
- D 0 - I - 0x0115D0 04:95C0: 71        .byte $71   ; 
- D 0 - I - 0x0115D1 04:95C1: 81        .byte $81   ; 
- D 0 - I - 0x0115D2 04:95C2: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x0115D3 04:95C3: 01        .byte $01   ; 
- D 0 - I - 0x0115D4 04:95C4: 78        .byte $78   ; 
- D 0 - I - 0x0115D5 04:95C5: 83        .byte $83   ; 
- D 0 - I - 0x0115D6 04:95C6: 16        .byte $16   ; 
- D 0 - I - 0x0115D7 04:95C7: 84        .byte $84   ; 
- D 0 - I - 0x0115D8 04:95C8: A3        .byte $A3   ; 
- D 0 - I - 0x0115D9 04:95C9: C4        .byte $C4   ; 
- D 0 - I - 0x0115DA 04:95CA: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x0115DB 04:95CB: 13        .byte $13   ; 
- D 0 - I - 0x0115DC 04:95CC: 37        .byte $37   ; 
- D 0 - I - 0x0115DD 04:95CD: E1        .byte con_se_cb_E1, $07   ; 
- D 0 - I - 0x0115DF 04:95CF: D0        .byte $D0   ; 
- D 0 - I - 0x0115E0 04:95D0: E5        .byte con_se_cb_E5, $18   ; 
- D 0 - I - 0x0115E2 04:95D2: 52        .byte $52   ; 
- D 0 - I - 0x0115E3 04:95D3: 82        .byte $82   ; 
- D 0 - I - 0x0115E4 04:95D4: 52        .byte $52   ; 
- D 0 - I - 0x0115E5 04:95D5: E7        .byte con_se_cb_E7, $52, $04   ; 
- D 0 - I - 0x0115E8 04:95D8: EA        .byte con_se_cb_EA, $00   ; 
- D 0 - I - 0x0115EA 04:95DA: FF        .byte con_se_cb_stop   ; 



sub_FD_95DB:
- D 0 - I - 0x0115EB 04:95DB: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x0115EC 04:95DC: 53        .byte $53   ; 
- D 0 - I - 0x0115ED 04:95DD: 53        .byte $53   ; 
- D 0 - I - 0x0115EE 04:95DE: 52        .byte $52   ; 
- D 0 - I - 0x0115EF 04:95DF: 32        .byte $32   ; 
- D 0 - I - 0x0115F0 04:95E0: 52        .byte $52   ; 
- D 0 - I - 0x0115F1 04:95E1: 53        .byte $53   ; 
- D 0 - I - 0x0115F2 04:95E2: 53        .byte $53   ; 
- D 0 - I - 0x0115F3 04:95E3: 52        .byte $52   ; 
- D 0 - I - 0x0115F4 04:95E4: 32        .byte $32   ; 
- D 0 - I - 0x0115F5 04:95E5: 52        .byte $52   ; 
- D 0 - I - 0x0115F6 04:95E6: FF        .byte con_se_cb_stop   ; 



sub_FD_95E7:
- D 0 - I - 0x0115F7 04:95E7: C7        .byte $C7   ; 
- D 0 - I - 0x0115F8 04:95E8: 17        .byte $17   ; 
- D 0 - I - 0x0115F9 04:95E9: 17        .byte $17   ; 
- D 0 - I - 0x0115FA 04:95EA: B7        .byte $B7   ; 
- D 0 - I - 0x0115FB 04:95EB: 17        .byte $17   ; 
- D 0 - I - 0x0115FC 04:95EC: 17        .byte $17   ; 
- D 0 - I - 0x0115FD 04:95ED: FB        .byte con_se_cb_FB   ; 
- D 0 - I - 0x0115FE 04:95EE: B4        .byte $B4   ; 
- D 0 - I - 0x0115FF 04:95EF: B5        .byte $B5   ; 
- D 0 - I - 0x011600 04:95F0: C5        .byte $C5   ; 
- D 0 - I - 0x011601 04:95F1: FE        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x011602 04:95F2: 03        .byte $03   ; 
- D 0 - I - 0x011603 04:95F3: C7        .byte $C7   ; 
- D 0 - I - 0x011604 04:95F4: 17        .byte $17   ; 
- D 0 - I - 0x011605 04:95F5: 17        .byte $17   ; 
- D 0 - I - 0x011606 04:95F6: B7        .byte $B7   ; 
- D 0 - I - 0x011607 04:95F7: 17        .byte $17   ; 
- D 0 - I - 0x011608 04:95F8: 17        .byte $17   ; 
- D 0 - I - 0x011609 04:95F9: FB        .byte con_se_cb_FB   ; 
- D 0 - I - 0x01160A 04:95FA: B4        .byte $B4   ; 
- D 0 - I - 0x01160B 04:95FB: B5        .byte $B5   ; 
- D 0 - I - 0x01160C 04:95FC: C5        .byte $C5   ; 
- D 0 - I - 0x01160D 04:95FD: FE        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x01160E 04:95FE: 03        .byte $03   ; 
- D 0 - I - 0x01160F 04:95FF: FF        .byte con_se_cb_stop   ; 



sub_FD_9600:
- D 0 - I - 0x011610 04:9600: E2        .byte con_se_cb_E2, $00   ; 
- D 0 - I - 0x011612 04:9602: EA        .byte con_se_cb_EA, $00   ; 
- D 0 - I - 0x011614 04:9604: D0        .byte $D0   ; 
- D 0 - I - 0x011615 04:9605: E6        .byte con_se_cb_E6, $42   ; 
- D 0 - I - 0x011617 04:9607: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x011618 04:9608: 07        .byte $07   ; 
- D 0 - I - 0x011619 04:9609: 75        .byte $75   ; 
- D 0 - I - 0x01161A 04:960A: 82        .byte $82   ; 
- D 0 - I - 0x01161B 04:960B: 73        .byte $73   ; 
- D 0 - I - 0x01161C 04:960C: E7        .byte con_se_cb_E7, $50, $33   ; 
- D 0 - I - 0x01161F 04:960F: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x011620 04:9610: 71        .byte $71   ; 
- D 0 - I - 0x011621 04:9611: 81        .byte $81   ; 
- D 0 - I - 0x011622 04:9612: A1        .byte $A1   ; 
- D 0 - I - 0x011623 04:9613: 39        .byte $39   ; 
- D 0 - I - 0x011624 04:9614: 31        .byte $31   ; 
- D 0 - I - 0x011625 04:9615: 81        .byte $81   ; 
- D 0 - I - 0x011626 04:9616: 71        .byte $71   ; 
- D 0 - I - 0x011627 04:9617: 19        .byte $19   ; 
- D 0 - I - 0x011628 04:9618: FF        .byte con_se_cb_stop   ; 



sub_FD_9619:
- D 0 - I - 0x011629 04:9619: E2        .byte con_se_cb_E2, $00   ; 
- D 0 - I - 0x01162B 04:961B: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x01162C 04:961C: 07        .byte $07   ; 
- D 0 - I - 0x01162D 04:961D: 72        .byte $72   ; 
- D 0 - I - 0x01162E 04:961E: 00        .byte $00   ; 
- D 0 - I - 0x01162F 04:961F: 73        .byte $73   ; 
- D 0 - I - 0x011630 04:9620: E7        .byte con_se_cb_E7, $50, $23   ; 
- D 0 - I - 0x011633 04:9623: FF        .byte con_se_cb_stop   ; 



sub_FD_9624:
- D 0 - I - 0x011634 04:9624: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x011635 04:9625: 07        .byte $07   ; 
- D 0 - I - 0x011636 04:9626: 78        .byte $78   ; 
- D 0 - I - 0x011637 04:9627: 82        .byte $82   ; 
- D 0 - I - 0x011638 04:9628: 18        .byte $18   ; 
- D 0 - I - 0x011639 04:9629: E2        .byte con_se_cb_E2, $36   ; 
- D 0 - I - 0x01163B 04:962B: E7        .byte con_se_cb_E7, $52, $02   ; 
- D 0 - I - 0x01163E 04:962E: FF        .byte con_se_cb_stop   ; 



sub_FD_962F:
- D 0 - I - 0x01163F 04:962F: EA        .byte con_se_cb_EA, $00   ; 
- D 0 - I - 0x011641 04:9631: E2        .byte con_se_cb_E2, $B6   ; 
- D 0 - I - 0x011643 04:9633: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x011644 04:9634: 07        .byte $07   ; 
- D 0 - I - 0x011645 04:9635: B2        .byte $B2   ; 
- D 0 - I - 0x011646 04:9636: 00        .byte $00   ; 
- D 0 - I - 0x011647 04:9637: 13        .byte $13   ; 
- D 0 - I - 0x011648 04:9638: FF        .byte con_se_cb_stop   ; 



sub_FD_9639:
- D 0 - I - 0x011649 04:9639: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x01164A 04:963A: 07        .byte $07   ; 
- D 0 - I - 0x01164B 04:963B: 34        .byte $34   ; 
- D 0 - I - 0x01164C 04:963C: 81        .byte $81   ; 
- D 0 - I - 0x01164D 04:963D: 16        .byte $16   ; 
- D 0 - I - 0x01164E 04:963E: E6        .byte con_se_cb_E6, $31   ; 
- D 0 - I - 0x011650 04:9640: E2        .byte con_se_cb_E2, $36   ; 
- D 0 - I - 0x011652 04:9642: EA        .byte con_se_cb_EA, $02   ; 
- D 0 - I - 0x011654 04:9644: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x011655 04:9645: FB        .byte con_se_cb_FB   ; 
- D 0 - I - 0x011656 04:9646: 51        .byte $51   ; 
- D 0 - I - 0x011657 04:9647: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011658 04:9648: 51        .byte $51   ; 
- D 0 - I - 0x011659 04:9649: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x01165A 04:964A: 51        .byte $51   ; 
- D 0 - I - 0x01165B 04:964B: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x01165C 04:964C: 31        .byte $31   ; 
- D 0 - I - 0x01165D 04:964D: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x01165E 04:964E: A1        .byte $A1   ; 
- D 0 - I - 0x01165F 04:964F: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011660 04:9650: 11        .byte $11   ; 
- D 0 - I - 0x011661 04:9651: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x011662 04:9652: A1        .byte $A1   ; 
- D 0 - I - 0x011663 04:9653: C1        .byte $C1   ; 
- D 0 - I - 0x011664 04:9654: 81        .byte $81   ; 
- D 0 - I - 0x011665 04:9655: A1        .byte $A1   ; 
- D 0 - I - 0x011666 04:9656: 71        .byte $71   ; 
- D 0 - I - 0x011667 04:9657: 81        .byte $81   ; 
- D 0 - I - 0x011668 04:9658: FE        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x011669 04:9659: 03        .byte $03   ; 
- D 0 - I - 0x01166A 04:965A: FF        .byte con_se_cb_stop   ; 



sub_FD_965B:
- D 0 - I - 0x01166B 04:965B: E7        .byte con_se_cb_E7, $50, $11   ; 
- D 0 - I - 0x01166E 04:965E: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x01166F 04:965F: 07        .byte $07   ; 
- D 0 - I - 0x011670 04:9660: 73        .byte $73   ; 
- D 0 - I - 0x011671 04:9661: 00        .byte $00   ; 
- D 0 - I - 0x011672 04:9662: 22        .byte $22   ; 
- D 0 - I - 0x011673 04:9663: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x011674 04:9664: FF        .byte con_se_cb_stop   ; 



_off000_9665_80_01:
loc_FE_9665:
- D 0 - I - 0x011675 04:9665: E8        .byte con_se_cb_E8, $02   ; 
- D 0 - I - 0x011677 04:9667: FB        .byte con_se_cb_FB   ; 
- D 0 - I - 0x011678 04:9668: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x011679 04:9669: 01        .byte $01   ; 
- D 0 - I - 0x01167A 04:966A: 77        .byte $77   ; 
- D 0 - I - 0x01167B 04:966B: 83        .byte $83   ; 
- D 0 - I - 0x01167C 04:966C: 16        .byte $16   ; 
- D 0 - I - 0x01167D 04:966D: E2        .byte con_se_cb_E2, $3B   ; 
- D 0 - I - 0x01167F 04:966F: EA        .byte con_se_cb_EA, $03   ; 
- D 0 - I - 0x011681 04:9671: E7        .byte con_se_cb_E7, $50, $22   ; 
- D 0 - I - 0x011684 04:9674: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011685 04:9675: 61        .byte $61   ; 
- D 0 - I - 0x011686 04:9676: 71        .byte $71   ; 
- D 0 - I - 0x011687 04:9677: 81        .byte $81   ; 
- D 0 - I - 0x011688 04:9678: 94        .byte $94   ; 
- D 0 - I - 0x011689 04:9679: E1        .byte con_se_cb_E1, $07   ; 
- D 0 - I - 0x01168B 04:967B: 91        .byte $91   ; 
- D 0 - I - 0x01168C 04:967C: B2        .byte $B2   ; 
- D 0 - I - 0x01168D 04:967D: 91        .byte $91   ; 
- D 0 - I - 0x01168E 04:967E: 91        .byte $91   ; 
- D 0 - I - 0x01168F 04:967F: B1        .byte $B1   ; 
- D 0 - I - 0x011690 04:9680: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x011691 04:9681: 21        .byte $21   ; 
- D 0 - I - 0x011692 04:9682: 11        .byte $11   ; 
- D 0 - I - 0x011693 04:9683: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011694 04:9684: 91        .byte $91   ; 
- D 0 - I - 0x011695 04:9685: 61        .byte $61   ; 
- D 0 - I - 0x011696 04:9686: 91        .byte $91   ; 
- D 0 - I - 0x011697 04:9687: B1        .byte $B1   ; 
- D 0 - I - 0x011698 04:9688: D4        .byte $D4   ; 
- D 0 - I - 0x011699 04:9689: B1        .byte $B1   ; 
- D 0 - I - 0x01169A 04:968A: B1        .byte $B1   ; 
- D 0 - I - 0x01169B 04:968B: D0        .byte $D0   ; 
- D 0 - I - 0x01169C 04:968C: EB        .byte con_se_cb_EB, $0A, $10, $03   ; 
- D 0 - I - 0x0116A0 04:9690: 92        .byte $92   ; 
- D 0 - I - 0x0116A1 04:9691: E5        .byte con_se_cb_E5, $11   ; 
- D 0 - I - 0x0116A3 04:9693: 77        .byte $77   ; 
- D 0 - I - 0x0116A4 04:9694: EB        .byte con_se_cb_EB, $00   ; 
- D 0 - I - 0x0116A6 04:9696: FE        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x0116A7 04:9697: 02        .byte $02   ; 
- D 0 - I - 0x0116A8 04:9698: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x0116A9 04:9699: 07        .byte $07   ; 
- D 0 - I - 0x0116AA 04:969A: 35        .byte $35   ; 
- D 0 - I - 0x0116AB 04:969B: 82        .byte $82   ; 
- D 0 - I - 0x0116AC 04:969C: C4        .byte $C4   ; 
- D 0 - I - 0x0116AD 04:969D: E7        .byte con_se_cb_E7, $50, $22   ; 
- D 0 - I - 0x0116B0 04:96A0: EB        .byte con_se_cb_EB, $0C, $10, $03   ; 
- D 0 - I - 0x0116B4 04:96A4: E2        .byte con_se_cb_E2, $00   ; 
- D 0 - I - 0x0116B6 04:96A6: EA        .byte con_se_cb_EA, $00   ; 
- D 0 - I - 0x0116B8 04:96A8: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x0116B9 04:96A9: 6C        .byte $6C   ; 
- D 0 - I - 0x0116BA 04:96AA: EB        .byte con_se_cb_EB, $03, $10, $03   ; 
- D 0 - I - 0x0116BE 04:96AE: 96        .byte $96   ; 
- D 0 - I - 0x0116BF 04:96AF: E2        .byte con_se_cb_E2, $3A   ; 
- D 0 - I - 0x0116C1 04:96B1: E5        .byte con_se_cb_E5, $17   ; 
- D 0 - I - 0x0116C3 04:96B3: EA        .byte con_se_cb_EA, $03   ; 
- D 0 - I - 0x0116C5 04:96B5: 92        .byte $92   ; 
- D 0 - I - 0x0116C6 04:96B6: 72        .byte $72   ; 
- D 0 - I - 0x0116C7 04:96B7: 42        .byte $42   ; 
- D 0 - I - 0x0116C8 04:96B8: E5        .byte con_se_cb_E5, $84   ; 
- D 0 - I - 0x0116CA 04:96BA: EA        .byte con_se_cb_EA, $00   ; 
- D 0 - I - 0x0116CC 04:96BC: E2        .byte con_se_cb_E2, $00   ; 
- D 0 - I - 0x0116CE 04:96BE: 6C        .byte $6C   ; 
- D 0 - I - 0x0116CF 04:96BF: E1        .byte con_se_cb_E1, $01   ; 
- D 0 - I - 0x0116D1 04:96C1: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x0116D2 04:96C2: C1        .byte $C1   ; 
- D 0 - I - 0x0116D3 04:96C3: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x0116D4 04:96C4: 11        .byte $11   ; 
- D 0 - I - 0x0116D5 04:96C5: D0        .byte $D0   ; 
- D 0 - I - 0x0116D6 04:96C6: E1        .byte con_se_cb_E1, $0A   ; 
- D 0 - I - 0x0116D8 04:96C8: 24        .byte $24   ; 
- D 0 - I - 0x0116D9 04:96C9: E1        .byte con_se_cb_E1, $07   ; 
- D 0 - I - 0x0116DB 04:96CB: 76        .byte $76   ; 
- D 0 - I - 0x0116DC 04:96CC: EB        .byte con_se_cb_EB, $04, $10, $02   ; 
- D 0 - I - 0x0116E0 04:96D0: E2        .byte con_se_cb_E2, $00   ; 
- D 0 - I - 0x0116E2 04:96D2: EA        .byte con_se_cb_EA, $00   ; 
- D 0 - I - 0x0116E4 04:96D4: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x0116E5 04:96D5: 6C        .byte $6C   ; 
- D 0 - I - 0x0116E6 04:96D6: EB        .byte con_se_cb_EB, $03, $10, $03   ; 
- D 0 - I - 0x0116EA 04:96DA: 96        .byte $96   ; 
- D 0 - I - 0x0116EB 04:96DB: EA        .byte con_se_cb_EA, $03   ; 
- D 0 - I - 0x0116ED 04:96DD: E2        .byte con_se_cb_E2, $3A   ; 
- D 0 - I - 0x0116EF 04:96DF: E5        .byte con_se_cb_E5, $17   ; 
- D 0 - I - 0x0116F1 04:96E1: B2        .byte $B2   ; 
- D 0 - I - 0x0116F2 04:96E2: 92        .byte $92   ; 
- D 0 - I - 0x0116F3 04:96E3: 72        .byte $72   ; 
- D 0 - I - 0x0116F4 04:96E4: E5        .byte con_se_cb_E5, $84   ; 
- D 0 - I - 0x0116F6 04:96E6: EA        .byte con_se_cb_EA, $00   ; 
- D 0 - I - 0x0116F8 04:96E8: E2        .byte con_se_cb_E2, $00   ; 
- D 0 - I - 0x0116FA 04:96EA: 6C        .byte $6C   ; 
- D 0 - I - 0x0116FB 04:96EB: E1        .byte con_se_cb_E1, $01   ; 
- D 0 - I - 0x0116FD 04:96ED: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x0116FE 04:96EE: C1        .byte $C1   ; 
- D 0 - I - 0x0116FF 04:96EF: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011700 04:96F0: 11        .byte $11   ; 
- D 0 - I - 0x011701 04:96F1: D0        .byte $D0   ; 
- D 0 - I - 0x011702 04:96F2: E1        .byte con_se_cb_E1, $0A   ; 
- D 0 - I - 0x011704 04:96F4: 24        .byte $24   ; 
- D 0 - I - 0x011705 04:96F5: E1        .byte con_se_cb_E1, $07   ; 
- D 0 - I - 0x011707 04:96F7: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x011708 04:96F8: C3        .byte $C3   ; 
- D 0 - I - 0x011709 04:96F9: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x01170A 04:96FA: 72        .byte $72   ; 
- D 0 - I - 0x01170B 04:96FB: E1        .byte con_se_cb_E1, $01   ; 
- D 0 - I - 0x01170D 04:96FD: D2        .byte $D2   ; 
- D 0 - I - 0x01170E 04:96FE: 52        .byte $52   ; 
- D 0 - I - 0x01170F 04:96FF: 32        .byte $32   ; 
- D 0 - I - 0x011710 04:9700: 12        .byte $12   ; 
- D 0 - I - 0x011711 04:9701: F0        .byte con_se_cb_F0   ; 
- D 0 - I - 0x011712 04:9702: C1        .byte $C1   ; 
- D 0 - I - 0x011713 04:9703: D0        .byte $D0   ; 
- D 0 - I - 0x011714 04:9704: FD        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x011715 04:9705: BF 9A     .word sub_FD_9ABF
- D 0 - I - 0x011717 04:9707: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x011718 04:9708: 11        .byte $11   ; 
- D 0 - I - 0x011719 04:9709: 21        .byte $21   ; 
- D 0 - I - 0x01171A 04:970A: 41        .byte $41   ; 
- D 0 - I - 0x01171B 04:970B: 21        .byte $21   ; 
- D 0 - I - 0x01171C 04:970C: 13        .byte $13   ; 
- D 0 - I - 0x01171D 04:970D: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x01171E 04:970E: 91        .byte $91   ; 
- D 0 - I - 0x01171F 04:970F: B1        .byte $B1   ; 
- D 0 - I - 0x011720 04:9710: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x011721 04:9711: 11        .byte $11   ; 
- D 0 - I - 0x011722 04:9712: 21        .byte $21   ; 
- D 0 - I - 0x011723 04:9713: 41        .byte $41   ; 
- D 0 - I - 0x011724 04:9714: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x011725 04:9715: 01        .byte $01   ; 
- D 0 - I - 0x011726 04:9716: 75        .byte $75   ; 
- D 0 - I - 0x011727 04:9717: 82        .byte $82   ; 
- D 0 - I - 0x011728 04:9718: 44        .byte $44   ; 
- D 0 - I - 0x011729 04:9719: E2        .byte con_se_cb_E2, $3B   ; 
- D 0 - I - 0x01172B 04:971B: EA        .byte con_se_cb_EA, $02   ; 
- D 0 - I - 0x01172D 04:971D: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x01172E 04:971E: 41        .byte $41   ; 
- D 0 - I - 0x01172F 04:971F: 51        .byte $51   ; 
- D 0 - I - 0x011730 04:9720: 65        .byte $65   ; 
- D 0 - I - 0x011731 04:9721: E1        .byte con_se_cb_E1, $07   ; 
- D 0 - I - 0x011733 04:9723: 61        .byte $61   ; 
- D 0 - I - 0x011734 04:9724: 42        .byte $42   ; 
- D 0 - I - 0x011735 04:9725: 91        .byte $91   ; 
- D 0 - I - 0x011736 04:9726: 91        .byte $91   ; 
- D 0 - I - 0x011737 04:9727: 61        .byte $61   ; 
- D 0 - I - 0x011738 04:9728: D4        .byte $D4   ; 
- D 0 - I - 0x011739 04:9729: 91        .byte $91   ; 
- D 0 - I - 0x01173A 04:972A: D0        .byte $D0   ; 
- D 0 - I - 0x01173B 04:972B: 41        .byte $41   ; 
- D 0 - I - 0x01173C 04:972C: D4        .byte $D4   ; 
- D 0 - I - 0x01173D 04:972D: 61        .byte $61   ; 
- D 0 - I - 0x01173E 04:972E: 41        .byte $41   ; 
- D 0 - I - 0x01173F 04:972F: 91        .byte $91   ; 
- D 0 - I - 0x011740 04:9730: D0        .byte $D0   ; 
- D 0 - I - 0x011741 04:9731: E1        .byte con_se_cb_E1, $01   ; 
- D 0 - I - 0x011743 04:9733: 41        .byte $41   ; 
- D 0 - I - 0x011744 04:9734: 51        .byte $51   ; 
- D 0 - I - 0x011745 04:9735: 65        .byte $65   ; 
- D 0 - I - 0x011746 04:9736: E1        .byte con_se_cb_E1, $07   ; 
- D 0 - I - 0x011748 04:9738: 61        .byte $61   ; 
- D 0 - I - 0x011749 04:9739: 42        .byte $42   ; 
- D 0 - I - 0x01174A 04:973A: 91        .byte $91   ; 
- D 0 - I - 0x01174B 04:973B: 91        .byte $91   ; 
- D 0 - I - 0x01174C 04:973C: 61        .byte $61   ; 
- D 0 - I - 0x01174D 04:973D: D4        .byte $D4   ; 
- D 0 - I - 0x01174E 04:973E: 91        .byte $91   ; 
- D 0 - I - 0x01174F 04:973F: D0        .byte $D0   ; 
- D 0 - I - 0x011750 04:9740: 41        .byte $41   ; 
- D 0 - I - 0x011751 04:9741: D4        .byte $D4   ; 
- D 0 - I - 0x011752 04:9742: 61        .byte $61   ; 
- D 0 - I - 0x011753 04:9743: D0        .byte $D0   ; 
- D 0 - I - 0x011754 04:9744: 21        .byte $21   ; 
- D 0 - I - 0x011755 04:9745: 11        .byte $11   ; 
- D 0 - I - 0x011756 04:9746: E2        .byte con_se_cb_E2, $00   ; 
- D 0 - I - 0x011758 04:9748: EA        .byte con_se_cb_EA, $00   ; 
- D 0 - I - 0x01175A 04:974A: FD        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x01175B 04:974B: BF 9A     .word sub_FD_9ABF
- D 0 - I - 0x01175D 04:974D: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x01175E 04:974E: 07        .byte $07   ; 
- D 0 - I - 0x01175F 04:974F: 76        .byte $76   ; 
- D 0 - I - 0x011760 04:9750: 83        .byte $83   ; 
- D 0 - I - 0x011761 04:9751: 44        .byte $44   ; 
- D 0 - I - 0x011762 04:9752: E2        .byte con_se_cb_E2, $3B   ; 
- D 0 - I - 0x011764 04:9754: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x011765 04:9755: 11        .byte $11   ; 
- D 0 - I - 0x011766 04:9756: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011767 04:9757: 11        .byte $11   ; 
- D 0 - I - 0x011768 04:9758: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x011769 04:9759: 21        .byte $21   ; 
- D 0 - I - 0x01176A 04:975A: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x01176B 04:975B: 21        .byte $21   ; 
- D 0 - I - 0x01176C 04:975C: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x01176D 04:975D: 41        .byte $41   ; 
- D 0 - I - 0x01176E 04:975E: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x01176F 04:975F: 41        .byte $41   ; 
- D 0 - I - 0x011770 04:9760: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x011771 04:9761: 64        .byte $64   ; 
- D 0 - I - 0x011772 04:9762: D2        .byte $D2   ; 
- D 0 - I - 0x011773 04:9763: E1        .byte con_se_cb_E1, $01   ; 
- D 0 - I - 0x011775 04:9765: 52        .byte $52   ; 
- D 0 - I - 0x011776 04:9766: 32        .byte $32   ; 
- D 0 - I - 0x011777 04:9767: 12        .byte $12   ; 
- D 0 - I - 0x011778 04:9768: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011779 04:9769: C2        .byte $C2   ; 
- D 0 - I - 0x01177A 04:976A: A2        .byte $A2   ; 
- D 0 - I - 0x01177B 04:976B: 82        .byte $82   ; 
- D 0 - I - 0x01177C 04:976C: 62        .byte $62   ; 
- D 0 - I - 0x01177D 04:976D: D0        .byte $D0   ; 
- D 0 - I - 0x01177E 04:976E: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x01177F 04:976F: 07        .byte $07   ; 
- D 0 - I - 0x011780 04:9770: B5        .byte $B5   ; 
- D 0 - I - 0x011781 04:9771: 82        .byte $82   ; 
- D 0 - I - 0x011782 04:9772: 73        .byte $73   ; 
- D 0 - I - 0x011783 04:9773: E7        .byte con_se_cb_E7, $50, $42   ; 
- D 0 - I - 0x011786 04:9776: E2        .byte con_se_cb_E2, $31   ; 
- D 0 - I - 0x011788 04:9778: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011789 04:9779: 11        .byte $11   ; 
- D 0 - I - 0x01178A 04:977A: 21        .byte $21   ; 
- D 0 - I - 0x01178B 04:977B: 41        .byte $41   ; 
- D 0 - I - 0x01178C 04:977C: 21        .byte $21   ; 
- D 0 - I - 0x01178D 04:977D: 11        .byte $11   ; 
- D 0 - I - 0x01178E 04:977E: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x01178F 04:977F: 91        .byte $91   ; 
- D 0 - I - 0x011790 04:9780: B2        .byte $B2   ; 
- D 0 - I - 0x011791 04:9781: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011792 04:9782: 60        .byte $60   ; 
- D 0 - I - 0x011793 04:9783: E2        .byte con_se_cb_E2, $30   ; 
- D 0 - I - 0x011795 04:9785: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011796 04:9786: 21        .byte $21   ; 
- D 0 - I - 0x011797 04:9787: 41        .byte $41   ; 
- D 0 - I - 0x011798 04:9788: 61        .byte $61   ; 
- D 0 - I - 0x011799 04:9789: 41        .byte $41   ; 
- D 0 - I - 0x01179A 04:978A: 21        .byte $21   ; 
- D 0 - I - 0x01179B 04:978B: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x01179C 04:978C: C1        .byte $C1   ; 
- D 0 - I - 0x01179D 04:978D: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x01179E 04:978E: 22        .byte $22   ; 
- D 0 - I - 0x01179F 04:978F: 70        .byte $70   ; 
- D 0 - I - 0x0117A0 04:9790: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x0117A1 04:9791: 01        .byte $01   ; 
- D 0 - I - 0x0117A2 04:9792: 75        .byte $75   ; 
- D 0 - I - 0x0117A3 04:9793: 82        .byte $82   ; 
- D 0 - I - 0x0117A4 04:9794: 34        .byte $34   ; 
- D 0 - I - 0x0117A5 04:9795: E7        .byte con_se_cb_E7, $50, $22   ; 
- D 0 - I - 0x0117A8 04:9798: E2        .byte con_se_cb_E2, $3B   ; 
- D 0 - I - 0x0117AA 04:979A: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x0117AB 04:979B: 41        .byte $41   ; 
- D 0 - I - 0x0117AC 04:979C: 51        .byte $51   ; 
- D 0 - I - 0x0117AD 04:979D: 61        .byte $61   ; 
- D 0 - I - 0x0117AE 04:979E: E1        .byte con_se_cb_E1, $05   ; 
- D 0 - I - 0x0117B0 04:97A0: 65        .byte $65   ; 
- D 0 - I - 0x0117B1 04:97A1: E1        .byte con_se_cb_E1, $07   ; 
- D 0 - I - 0x0117B3 04:97A3: 61        .byte $61   ; 
- D 0 - I - 0x0117B4 04:97A4: 71        .byte $71   ; 
- D 0 - I - 0x0117B5 04:97A5: 44        .byte $44   ; 
- D 0 - I - 0x0117B6 04:97A6: 41        .byte $41   ; 
- D 0 - I - 0x0117B7 04:97A7: 61        .byte $61   ; 
- D 0 - I - 0x0117B8 04:97A8: 24        .byte $24   ; 
- D 0 - I - 0x0117B9 04:97A9: 21        .byte $21   ; 
- D 0 - I - 0x0117BA 04:97AA: 41        .byte $41   ; 
- D 0 - I - 0x0117BB 04:97AB: 12        .byte $12   ; 
- D 0 - I - 0x0117BC 04:97AC: E1        .byte con_se_cb_E1, $01   ; 
- D 0 - I - 0x0117BE 04:97AE: E2        .byte con_se_cb_E2, $00   ; 
- D 0 - I - 0x0117C0 04:97B0: D2        .byte $D2   ; 
- D 0 - I - 0x0117C1 04:97B1: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x0117C2 04:97B2: C2        .byte $C2   ; 
- D 0 - I - 0x0117C3 04:97B3: B1        .byte $B1   ; 
- D 0 - I - 0x0117C4 04:97B4: A1        .byte $A1   ; 
- D 0 - I - 0x0117C5 04:97B5: 91        .byte $91   ; 
- D 0 - I - 0x0117C6 04:97B6: 81        .byte $81   ; 
- D 0 - I - 0x0117C7 04:97B7: 71        .byte $71   ; 
- D 0 - I - 0x0117C8 04:97B8: D0        .byte $D0   ; 
- D 0 - I - 0x0117C9 04:97B9: E2        .byte con_se_cb_E2, $31   ; 
- D 0 - I - 0x0117CB 04:97BB: E1        .byte con_se_cb_E1, $07   ; 
- D 0 - I - 0x0117CD 04:97BD: 63        .byte $63   ; 
- D 0 - I - 0x0117CE 04:97BE: FE        .byte con_se_cb_jmp, $FF   ; 
- D 0 - I - 0x0117D0 04:97C0: 65 96     .word loc_FE_9665



_off000_97C2_80_00:
loc_FE_97C2:
- D 0 - I - 0x0117D2 04:97C2: E8        .byte con_se_cb_E8, $02   ; 
- D 0 - I - 0x0117D4 04:97C4: FB        .byte con_se_cb_FB   ; 
- D 0 - I - 0x0117D5 04:97C5: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x0117D6 04:97C6: 01        .byte $01   ; 
- D 0 - I - 0x0117D7 04:97C7: 75        .byte $75   ; 
- D 0 - I - 0x0117D8 04:97C8: 83        .byte $83   ; 
- D 0 - I - 0x0117D9 04:97C9: 16        .byte $16   ; 
- D 0 - I - 0x0117DA 04:97CA: E2        .byte con_se_cb_E2, $3B   ; 
- D 0 - I - 0x0117DC 04:97CC: EA        .byte con_se_cb_EA, $03   ; 
- D 0 - I - 0x0117DE 04:97CE: E7        .byte con_se_cb_E7, $50, $23   ; 
- D 0 - I - 0x0117E1 04:97D1: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x0117E2 04:97D2: 11        .byte $11   ; 
- D 0 - I - 0x0117E3 04:97D3: 21        .byte $21   ; 
- D 0 - I - 0x0117E4 04:97D4: 31        .byte $31   ; 
- D 0 - I - 0x0117E5 04:97D5: 44        .byte $44   ; 
- D 0 - I - 0x0117E6 04:97D6: E1        .byte con_se_cb_E1, $07   ; 
- D 0 - I - 0x0117E8 04:97D8: 41        .byte $41   ; 
- D 0 - I - 0x0117E9 04:97D9: 62        .byte $62   ; 
- D 0 - I - 0x0117EA 04:97DA: 41        .byte $41   ; 
- D 0 - I - 0x0117EB 04:97DB: 41        .byte $41   ; 
- D 0 - I - 0x0117EC 04:97DC: 61        .byte $61   ; 
- D 0 - I - 0x0117ED 04:97DD: 91        .byte $91   ; 
- D 0 - I - 0x0117EE 04:97DE: 81        .byte $81   ; 
- D 0 - I - 0x0117EF 04:97DF: 41        .byte $41   ; 
- D 0 - I - 0x0117F0 04:97E0: 11        .byte $11   ; 
- D 0 - I - 0x0117F1 04:97E1: 41        .byte $41   ; 
- D 0 - I - 0x0117F2 04:97E2: 61        .byte $61   ; 
- D 0 - I - 0x0117F3 04:97E3: D3        .byte $D3   ; 
- D 0 - I - 0x0117F4 04:97E4: 61        .byte $61   ; 
- D 0 - I - 0x0117F5 04:97E5: 61        .byte $61   ; 
- D 0 - I - 0x0117F6 04:97E6: D0        .byte $D0   ; 
- D 0 - I - 0x0117F7 04:97E7: EB        .byte con_se_cb_EB, $0A, $10, $03   ; 
- D 0 - I - 0x0117FB 04:97EB: 62        .byte $62   ; 
- D 0 - I - 0x0117FC 04:97EC: E5        .byte con_se_cb_E5, $11   ; 
- D 0 - I - 0x0117FE 04:97EE: 47        .byte $47   ; 
- D 0 - I - 0x0117FF 04:97EF: EB        .byte con_se_cb_EB, $00   ; 
- D 0 - I - 0x011801 04:97F1: FE        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x011802 04:97F2: 02        .byte $02   ; 
- D 0 - I - 0x011803 04:97F3: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x011804 04:97F4: 07        .byte $07   ; 
- D 0 - I - 0x011805 04:97F5: 35        .byte $35   ; 
- D 0 - I - 0x011806 04:97F6: 82        .byte $82   ; 
- D 0 - I - 0x011807 04:97F7: C4        .byte $C4   ; 
- D 0 - I - 0x011808 04:97F8: E7        .byte con_se_cb_E7, $50, $22   ; 
- D 0 - I - 0x01180B 04:97FB: EB        .byte con_se_cb_EB, $0C, $10, $03   ; 
- D 0 - I - 0x01180F 04:97FF: E2        .byte con_se_cb_E2, $00   ; 
- D 0 - I - 0x011811 04:9801: EA        .byte con_se_cb_EA, $00   ; 
- D 0 - I - 0x011813 04:9803: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011814 04:9804: 1C        .byte $1C   ; 
- D 0 - I - 0x011815 04:9805: EB        .byte con_se_cb_EB, $03, $10, $03   ; 
- D 0 - I - 0x011819 04:9809: 46        .byte $46   ; 
- D 0 - I - 0x01181A 04:980A: E5        .byte con_se_cb_E5, $17   ; 
- D 0 - I - 0x01181C 04:980C: E2        .byte con_se_cb_E2, $3A   ; 
- D 0 - I - 0x01181E 04:980E: EA        .byte con_se_cb_EA, $03   ; 
- D 0 - I - 0x011820 04:9810: 42        .byte $42   ; 
- D 0 - I - 0x011821 04:9811: 12        .byte $12   ; 
- D 0 - I - 0x011822 04:9812: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x011823 04:9813: B2        .byte $B2   ; 
- D 0 - I - 0x011824 04:9814: E5        .byte con_se_cb_E5, $84   ; 
- D 0 - I - 0x011826 04:9816: EA        .byte con_se_cb_EA, $00   ; 
- D 0 - I - 0x011828 04:9818: E2        .byte con_se_cb_E2, $00   ; 
- D 0 - I - 0x01182A 04:981A: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x01182B 04:981B: 1C        .byte $1C   ; 
- D 0 - I - 0x01182C 04:981C: E1        .byte con_se_cb_E1, $01   ; 
- D 0 - I - 0x01182E 04:981E: D2        .byte $D2   ; 
- D 0 - I - 0x01182F 04:981F: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x011830 04:9820: 71        .byte $71   ; 
- D 0 - I - 0x011831 04:9821: 81        .byte $81   ; 
- D 0 - I - 0x011832 04:9822: D0        .byte $D0   ; 
- D 0 - I - 0x011833 04:9823: E1        .byte con_se_cb_E1, $0A   ; 
- D 0 - I - 0x011835 04:9825: 94        .byte $94   ; 
- D 0 - I - 0x011836 04:9826: E1        .byte con_se_cb_E1, $07   ; 
- D 0 - I - 0x011838 04:9828: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011839 04:9829: 26        .byte $26   ; 
- D 0 - I - 0x01183A 04:982A: EB        .byte con_se_cb_EB, $04, $10, $02   ; 
- D 0 - I - 0x01183E 04:982E: E2        .byte con_se_cb_E2, $00   ; 
- D 0 - I - 0x011840 04:9830: EA        .byte con_se_cb_EA, $00   ; 
- D 0 - I - 0x011842 04:9832: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011843 04:9833: 1C        .byte $1C   ; 
- D 0 - I - 0x011844 04:9834: EB        .byte con_se_cb_EB, $03, $10, $03   ; 
- D 0 - I - 0x011848 04:9838: 46        .byte $46   ; 
- D 0 - I - 0x011849 04:9839: E5        .byte con_se_cb_E5, $17   ; 
- D 0 - I - 0x01184B 04:983B: E2        .byte con_se_cb_E2, $3A   ; 
- D 0 - I - 0x01184D 04:983D: EA        .byte con_se_cb_EA, $03   ; 
- D 0 - I - 0x01184F 04:983F: 62        .byte $62   ; 
- D 0 - I - 0x011850 04:9840: 42        .byte $42   ; 
- D 0 - I - 0x011851 04:9841: 22        .byte $22   ; 
- D 0 - I - 0x011852 04:9842: E5        .byte con_se_cb_E5, $84   ; 
- D 0 - I - 0x011854 04:9844: EA        .byte con_se_cb_EA, $00   ; 
- D 0 - I - 0x011856 04:9846: E2        .byte con_se_cb_E2, $00   ; 
- D 0 - I - 0x011858 04:9848: 1C        .byte $1C   ; 
- D 0 - I - 0x011859 04:9849: E1        .byte con_se_cb_E1, $01   ; 
- D 0 - I - 0x01185B 04:984B: D2        .byte $D2   ; 
- D 0 - I - 0x01185C 04:984C: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x01185D 04:984D: 71        .byte $71   ; 
- D 0 - I - 0x01185E 04:984E: 81        .byte $81   ; 
- D 0 - I - 0x01185F 04:984F: D0        .byte $D0   ; 
- D 0 - I - 0x011860 04:9850: E1        .byte con_se_cb_E1, $0A   ; 
- D 0 - I - 0x011862 04:9852: 94        .byte $94   ; 
- D 0 - I - 0x011863 04:9853: E1        .byte con_se_cb_E1, $07   ; 
- D 0 - I - 0x011865 04:9855: 73        .byte $73   ; 
- D 0 - I - 0x011866 04:9856: C2        .byte $C2   ; 
- D 0 - I - 0x011867 04:9857: E1        .byte con_se_cb_E1, $01   ; 
- D 0 - I - 0x011869 04:9859: D1        .byte $D1   ; 
- D 0 - I - 0x01186A 04:985A: A2        .byte $A2   ; 
- D 0 - I - 0x01186B 04:985B: 82        .byte $82   ; 
- D 0 - I - 0x01186C 04:985C: 62        .byte $62   ; 
- D 0 - I - 0x01186D 04:985D: 51        .byte $51   ; 
- D 0 - I - 0x01186E 04:985E: D0        .byte $D0   ; 
- D 0 - I - 0x01186F 04:985F: EB        .byte con_se_cb_EB, $00   ; 
- D 0 - I - 0x011871 04:9861: FD        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x011872 04:9862: D2 9A     .word sub_FD_9AD2
- D 0 - I - 0x011874 04:9864: 02        .byte $02   ; 
- D 0 - I - 0x011875 04:9865: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x011876 04:9866: 11        .byte $11   ; 
- D 0 - I - 0x011877 04:9867: 21        .byte $21   ; 
- D 0 - I - 0x011878 04:9868: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011879 04:9869: 91        .byte $91   ; 
- D 0 - I - 0x01187A 04:986A: B4        .byte $B4   ; 
- D 0 - I - 0x01187B 04:986B: 61        .byte $61   ; 
- D 0 - I - 0x01187C 04:986C: B1        .byte $B1   ; 
- D 0 - I - 0x01187D 04:986D: B1        .byte $B1   ; 
- D 0 - I - 0x01187E 04:986E: 91        .byte $91   ; 
- D 0 - I - 0x01187F 04:986F: B1        .byte $B1   ; 
- D 0 - I - 0x011880 04:9870: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x011881 04:9871: 11        .byte $11   ; 
- D 0 - I - 0x011882 04:9872: 21        .byte $21   ; 
- D 0 - I - 0x011883 04:9873: 41        .byte $41   ; 
- D 0 - I - 0x011884 04:9874: 21        .byte $21   ; 
- D 0 - I - 0x011885 04:9875: 13        .byte $13   ; 
- D 0 - I - 0x011886 04:9876: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011887 04:9877: 91        .byte $91   ; 
- D 0 - I - 0x011888 04:9878: B1        .byte $B1   ; 
- D 0 - I - 0x011889 04:9879: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x01188A 04:987A: 11        .byte $11   ; 
- D 0 - I - 0x01188B 04:987B: E7        .byte con_se_cb_E7, $00   ; 
- D 0 - I - 0x01188D 04:987D: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x01188E 04:987E: 01        .byte $01   ; 
- D 0 - I - 0x01188F 04:987F: 74        .byte $74   ; 
- D 0 - I - 0x011890 04:9880: 82        .byte $82   ; 
- D 0 - I - 0x011891 04:9881: 44        .byte $44   ; 
- D 0 - I - 0x011892 04:9882: E2        .byte con_se_cb_E2, $3B   ; 
- D 0 - I - 0x011894 04:9884: EA        .byte con_se_cb_EA, $03   ; 
- D 0 - I - 0x011896 04:9886: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011897 04:9887: B1        .byte $B1   ; 
- D 0 - I - 0x011898 04:9888: C1        .byte $C1   ; 
- D 0 - I - 0x011899 04:9889: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x01189A 04:988A: 15        .byte $15   ; 
- D 0 - I - 0x01189B 04:988B: E1        .byte con_se_cb_E1, $07   ; 
- D 0 - I - 0x01189D 04:988D: 11        .byte $11   ; 
- D 0 - I - 0x01189E 04:988E: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x01189F 04:988F: B2        .byte $B2   ; 
- D 0 - I - 0x0118A0 04:9890: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x0118A1 04:9891: 41        .byte $41   ; 
- D 0 - I - 0x0118A2 04:9892: 41        .byte $41   ; 
- D 0 - I - 0x0118A3 04:9893: 11        .byte $11   ; 
- D 0 - I - 0x0118A4 04:9894: D4        .byte $D4   ; 
- D 0 - I - 0x0118A5 04:9895: 41        .byte $41   ; 
- D 0 - I - 0x0118A6 04:9896: D0        .byte $D0   ; 
- D 0 - I - 0x0118A7 04:9897: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x0118A8 04:9898: B1        .byte $B1   ; 
- D 0 - I - 0x0118A9 04:9899: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x0118AA 04:989A: D4        .byte $D4   ; 
- D 0 - I - 0x0118AB 04:989B: 11        .byte $11   ; 
- D 0 - I - 0x0118AC 04:989C: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x0118AD 04:989D: B1        .byte $B1   ; 
- D 0 - I - 0x0118AE 04:989E: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x0118AF 04:989F: 41        .byte $41   ; 
- D 0 - I - 0x0118B0 04:98A0: D0        .byte $D0   ; 
- D 0 - I - 0x0118B1 04:98A1: E1        .byte con_se_cb_E1, $01   ; 
- D 0 - I - 0x0118B3 04:98A3: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x0118B4 04:98A4: B1        .byte $B1   ; 
- D 0 - I - 0x0118B5 04:98A5: C1        .byte $C1   ; 
- D 0 - I - 0x0118B6 04:98A6: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x0118B7 04:98A7: 15        .byte $15   ; 
- D 0 - I - 0x0118B8 04:98A8: E1        .byte con_se_cb_E1, $07   ; 
- D 0 - I - 0x0118BA 04:98AA: 11        .byte $11   ; 
- D 0 - I - 0x0118BB 04:98AB: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x0118BC 04:98AC: B2        .byte $B2   ; 
- D 0 - I - 0x0118BD 04:98AD: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x0118BE 04:98AE: 41        .byte $41   ; 
- D 0 - I - 0x0118BF 04:98AF: 41        .byte $41   ; 
- D 0 - I - 0x0118C0 04:98B0: 11        .byte $11   ; 
- D 0 - I - 0x0118C1 04:98B1: D4        .byte $D4   ; 
- D 0 - I - 0x0118C2 04:98B2: 41        .byte $41   ; 
- D 0 - I - 0x0118C3 04:98B3: D0        .byte $D0   ; 
- D 0 - I - 0x0118C4 04:98B4: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x0118C5 04:98B5: B1        .byte $B1   ; 
- D 0 - I - 0x0118C6 04:98B6: D4        .byte $D4   ; 
- D 0 - I - 0x0118C7 04:98B7: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x0118C8 04:98B8: 11        .byte $11   ; 
- D 0 - I - 0x0118C9 04:98B9: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x0118CA 04:98BA: D0        .byte $D0   ; 
- D 0 - I - 0x0118CB 04:98BB: 91        .byte $91   ; 
- D 0 - I - 0x0118CC 04:98BC: 81        .byte $81   ; 
- D 0 - I - 0x0118CD 04:98BD: E2        .byte con_se_cb_E2, $00   ; 
- D 0 - I - 0x0118CF 04:98BF: EA        .byte con_se_cb_EA, $00   ; 
- D 0 - I - 0x0118D1 04:98C1: FD        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x0118D2 04:98C2: D2 9A     .word sub_FD_9AD2
- D 0 - I - 0x0118D4 04:98C4: EB        .byte con_se_cb_EB, $02, $10, $02   ; 
- D 0 - I - 0x0118D8 04:98C8: 02        .byte $02   ; 
- D 0 - I - 0x0118D9 04:98C9: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x0118DA 04:98CA: 11        .byte $11   ; 
- D 0 - I - 0x0118DB 04:98CB: EB        .byte con_se_cb_EB, $00   ; 
- D 0 - I - 0x0118DD 04:98CD: 21        .byte $21   ; 
- D 0 - I - 0x0118DE 04:98CE: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x0118DF 04:98CF: 91        .byte $91   ; 
- D 0 - I - 0x0118E0 04:98D0: B4        .byte $B4   ; 
- D 0 - I - 0x0118E1 04:98D1: 61        .byte $61   ; 
- D 0 - I - 0x0118E2 04:98D2: B1        .byte $B1   ; 
- D 0 - I - 0x0118E3 04:98D3: B1        .byte $B1   ; 
- D 0 - I - 0x0118E4 04:98D4: E7        .byte con_se_cb_E7, $00   ; 
- D 0 - I - 0x0118E6 04:98D6: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x0118E7 04:98D7: 07        .byte $07   ; 
- D 0 - I - 0x0118E8 04:98D8: 75        .byte $75   ; 
- D 0 - I - 0x0118E9 04:98D9: 83        .byte $83   ; 
- D 0 - I - 0x0118EA 04:98DA: 44        .byte $44   ; 
- D 0 - I - 0x0118EB 04:98DB: E2        .byte con_se_cb_E2, $3B   ; 
- D 0 - I - 0x0118ED 04:98DD: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x0118EE 04:98DE: 61        .byte $61   ; 
- D 0 - I - 0x0118EF 04:98DF: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x0118F0 04:98E0: 61        .byte $61   ; 
- D 0 - I - 0x0118F1 04:98E1: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x0118F2 04:98E2: 71        .byte $71   ; 
- D 0 - I - 0x0118F3 04:98E3: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x0118F4 04:98E4: 71        .byte $71   ; 
- D 0 - I - 0x0118F5 04:98E5: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x0118F6 04:98E6: 91        .byte $91   ; 
- D 0 - I - 0x0118F7 04:98E7: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x0118F8 04:98E8: 91        .byte $91   ; 
- D 0 - I - 0x0118F9 04:98E9: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x0118FA 04:98EA: 14        .byte $14   ; 
- D 0 - I - 0x0118FB 04:98EB: D2        .byte $D2   ; 
- D 0 - I - 0x0118FC 04:98EC: E1        .byte con_se_cb_E1, $01   ; 
- D 0 - I - 0x0118FE 04:98EE: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x0118FF 04:98EF: C2        .byte $C2   ; 
- D 0 - I - 0x011900 04:98F0: A2        .byte $A2   ; 
- D 0 - I - 0x011901 04:98F1: 82        .byte $82   ; 
- D 0 - I - 0x011902 04:98F2: 62        .byte $62   ; 
- D 0 - I - 0x011903 04:98F3: 52        .byte $52   ; 
- D 0 - I - 0x011904 04:98F4: 32        .byte $32   ; 
- D 0 - I - 0x011905 04:98F5: 12        .byte $12   ; 
- D 0 - I - 0x011906 04:98F6: D0        .byte $D0   ; 
- D 0 - I - 0x011907 04:98F7: FD        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x011908 04:98F8: DB 9A     .word sub_FD_9ADB
- D 0 - I - 0x01190A 04:98FA: 11        .byte $11   ; 
- D 0 - I - 0x01190B 04:98FB: 21        .byte $21   ; 
- D 0 - I - 0x01190C 04:98FC: 41        .byte $41   ; 
- D 0 - I - 0x01190D 04:98FD: 21        .byte $21   ; 
- D 0 - I - 0x01190E 04:98FE: 11        .byte $11   ; 
- D 0 - I - 0x01190F 04:98FF: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x011910 04:9900: 91        .byte $91   ; 
- D 0 - I - 0x011911 04:9901: B2        .byte $B2   ; 
- D 0 - I - 0x011912 04:9902: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011913 04:9903: 62        .byte $62   ; 
- D 0 - I - 0x011914 04:9904: E7        .byte con_se_cb_E7, $50, $22   ; 
- D 0 - I - 0x011917 04:9907: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x011918 04:9908: 07        .byte $07   ; 
- D 0 - I - 0x011919 04:9909: B4        .byte $B4   ; 
- D 0 - I - 0x01191A 04:990A: 81        .byte $81   ; 
- D 0 - I - 0x01191B 04:990B: 74        .byte $74   ; 
- D 0 - I - 0x01191C 04:990C: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x01191D 04:990D: 11        .byte $11   ; 
- D 0 - I - 0x01191E 04:990E: 21        .byte $21   ; 
- D 0 - I - 0x01191F 04:990F: 41        .byte $41   ; 
- D 0 - I - 0x011920 04:9910: 21        .byte $21   ; 
- D 0 - I - 0x011921 04:9911: 11        .byte $11   ; 
- D 0 - I - 0x011922 04:9912: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x011923 04:9913: 91        .byte $91   ; 
- D 0 - I - 0x011924 04:9914: B2        .byte $B2   ; 
- D 0 - I - 0x011925 04:9915: 64        .byte $64   ; 
- D 0 - I - 0x011926 04:9916: FD        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x011927 04:9917: DB 9A     .word sub_FD_9ADB
- D 0 - I - 0x011929 04:9919: E2        .byte con_se_cb_E2, $30   ; 
- D 0 - I - 0x01192B 04:991B: 21        .byte $21   ; 
- D 0 - I - 0x01192C 04:991C: 41        .byte $41   ; 
- D 0 - I - 0x01192D 04:991D: 61        .byte $61   ; 
- D 0 - I - 0x01192E 04:991E: 41        .byte $41   ; 
- D 0 - I - 0x01192F 04:991F: 21        .byte $21   ; 
- D 0 - I - 0x011930 04:9920: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x011931 04:9921: C1        .byte $C1   ; 
- D 0 - I - 0x011932 04:9922: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011933 04:9923: 22        .byte $22   ; 
- D 0 - I - 0x011934 04:9924: 72        .byte $72   ; 
- D 0 - I - 0x011935 04:9925: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x011936 04:9926: 07        .byte $07   ; 
- D 0 - I - 0x011937 04:9927: 35        .byte $35   ; 
- D 0 - I - 0x011938 04:9928: 82        .byte $82   ; 
- D 0 - I - 0x011939 04:9929: 74        .byte $74   ; 
- D 0 - I - 0x01193A 04:992A: E7        .byte con_se_cb_E7, $50, $22   ; 
- D 0 - I - 0x01193D 04:992D: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x01193E 04:992E: C1        .byte $C1   ; 
- D 0 - I - 0x01193F 04:992F: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011940 04:9930: 21        .byte $21   ; 
- D 0 - I - 0x011941 04:9931: 41        .byte $41   ; 
- D 0 - I - 0x011942 04:9932: 21        .byte $21   ; 
- D 0 - I - 0x011943 04:9933: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x011944 04:9934: C1        .byte $C1   ; 
- D 0 - I - 0x011945 04:9935: B1        .byte $B1   ; 
- D 0 - I - 0x011946 04:9936: C2        .byte $C2   ; 
- D 0 - I - 0x011947 04:9937: 74        .byte $74   ; 
- D 0 - I - 0x011948 04:9938: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x011949 04:9939: 01        .byte $01   ; 
- D 0 - I - 0x01194A 04:993A: 74        .byte $74   ; 
- D 0 - I - 0x01194B 04:993B: 82        .byte $82   ; 
- D 0 - I - 0x01194C 04:993C: 34        .byte $34   ; 
- D 0 - I - 0x01194D 04:993D: E7        .byte con_se_cb_E7, $50, $22   ; 
- D 0 - I - 0x011950 04:9940: E2        .byte con_se_cb_E2, $3B   ; 
- D 0 - I - 0x011952 04:9942: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x011953 04:9943: A1        .byte $A1   ; 
- D 0 - I - 0x011954 04:9944: B1        .byte $B1   ; 
- D 0 - I - 0x011955 04:9945: C1        .byte $C1   ; 
- D 0 - I - 0x011956 04:9946: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011957 04:9947: E1        .byte con_se_cb_E1, $05   ; 
- D 0 - I - 0x011959 04:9949: 15        .byte $15   ; 
- D 0 - I - 0x01195A 04:994A: E1        .byte con_se_cb_E1, $07   ; 
- D 0 - I - 0x01195C 04:994C: 11        .byte $11   ; 
- D 0 - I - 0x01195D 04:994D: 21        .byte $21   ; 
- D 0 - I - 0x01195E 04:994E: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x01195F 04:994F: B4        .byte $B4   ; 
- D 0 - I - 0x011960 04:9950: B1        .byte $B1   ; 
- D 0 - I - 0x011961 04:9951: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011962 04:9952: 11        .byte $11   ; 
- D 0 - I - 0x011963 04:9953: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x011964 04:9954: 94        .byte $94   ; 
- D 0 - I - 0x011965 04:9955: 91        .byte $91   ; 
- D 0 - I - 0x011966 04:9956: B1        .byte $B1   ; 
- D 0 - I - 0x011967 04:9957: 82        .byte $82   ; 
- D 0 - I - 0x011968 04:9958: E1        .byte con_se_cb_E1, $01   ; 
- D 0 - I - 0x01196A 04:995A: E2        .byte con_se_cb_E2, $00   ; 
- D 0 - I - 0x01196C 04:995C: D2        .byte $D2   ; 
- D 0 - I - 0x01196D 04:995D: 72        .byte $72   ; 
- D 0 - I - 0x01196E 04:995E: 61        .byte $61   ; 
- D 0 - I - 0x01196F 04:995F: 51        .byte $51   ; 
- D 0 - I - 0x011970 04:9960: 41        .byte $41   ; 
- D 0 - I - 0x011971 04:9961: 31        .byte $31   ; 
- D 0 - I - 0x011972 04:9962: 21        .byte $21   ; 
- D 0 - I - 0x011973 04:9963: D0        .byte $D0   ; 
- D 0 - I - 0x011974 04:9964: E2        .byte con_se_cb_E2, $31   ; 
- D 0 - I - 0x011976 04:9966: E1        .byte con_se_cb_E1, $07   ; 
- D 0 - I - 0x011978 04:9968: 13        .byte $13   ; 
- D 0 - I - 0x011979 04:9969: FE        .byte con_se_cb_jmp, $FF   ; 
- D 0 - I - 0x01197B 04:996B: C2 97     .word loc_FE_97C2



_off000_996D_80_02:
loc_FE_996D:
- D 0 - I - 0x01197D 04:996D: E8        .byte con_se_cb_E8, $02   ; 
- D 0 - I - 0x01197F 04:996F: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x011980 04:9970: 07        .byte $07   ; 
- D 0 - I - 0x011981 04:9971: 03        .byte $03   ; 
- D 0 - I - 0x011982 04:9972: FB        .byte con_se_cb_FB   ; 
- D 0 - I - 0x011983 04:9973: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x011984 04:9974: B1        .byte $B1   ; 
- D 0 - I - 0x011985 04:9975: B1        .byte $B1   ; 
- D 0 - I - 0x011986 04:9976: 62        .byte $62   ; 
- D 0 - I - 0x011987 04:9977: B1        .byte $B1   ; 
- D 0 - I - 0x011988 04:9978: B1        .byte $B1   ; 
- D 0 - I - 0x011989 04:9979: 11        .byte $11   ; 
- D 0 - I - 0x01198A 04:997A: 41        .byte $41   ; 
- D 0 - I - 0x01198B 04:997B: 61        .byte $61   ; 
- D 0 - I - 0x01198C 04:997C: 41        .byte $41   ; 
- D 0 - I - 0x01198D 04:997D: 61        .byte $61   ; 
- D 0 - I - 0x01198E 04:997E: 91        .byte $91   ; 
- D 0 - I - 0x01198F 04:997F: B2        .byte $B2   ; 
- D 0 - I - 0x011990 04:9980: 01        .byte $01   ; 
- D 0 - I - 0x011991 04:9981: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011992 04:9982: 12        .byte $12   ; 
- D 0 - I - 0x011993 04:9983: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x011994 04:9984: B3        .byte $B3   ; 
- D 0 - I - 0x011995 04:9985: B1        .byte $B1   ; 
- D 0 - I - 0x011996 04:9986: 41        .byte $41   ; 
- D 0 - I - 0x011997 04:9987: 61        .byte $61   ; 
- D 0 - I - 0x011998 04:9988: 91        .byte $91   ; 
- D 0 - I - 0x011999 04:9989: FE        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x01199A 04:998A: 02        .byte $02   ; 
- D 0 - I - 0x01199B 04:998B: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x01199C 04:998C: 07        .byte $07   ; 
- D 0 - I - 0x01199D 04:998D: 05        .byte $05   ; 
- D 0 - I - 0x01199E 04:998E: FD        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x01199F 04:998F: E8 9A     .word sub_FD_9AE8
- D 0 - I - 0x0119A1 04:9991: 21        .byte $21   ; 
- D 0 - I - 0x0119A2 04:9992: 71        .byte $71   ; 
- D 0 - I - 0x0119A3 04:9993: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x0119A4 04:9994: C1        .byte $C1   ; 
- D 0 - I - 0x0119A5 04:9995: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x0119A6 04:9996: 41        .byte $41   ; 
- D 0 - I - 0x0119A7 04:9997: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x0119A8 04:9998: 91        .byte $91   ; 
- D 0 - I - 0x0119A9 04:9999: FD        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x0119AA 04:999A: 02 9B     .word sub_FD_9B02
- D 0 - I - 0x0119AC 04:999C: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x0119AD 04:999D: 71        .byte $71   ; 
- D 0 - I - 0x0119AE 04:999E: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x0119AF 04:999F: C1        .byte $C1   ; 
- D 0 - I - 0x0119B0 04:99A0: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x0119B1 04:99A1: 51        .byte $51   ; 
- D 0 - I - 0x0119B2 04:99A2: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x0119B3 04:99A3: A1        .byte $A1   ; 
- D 0 - I - 0x0119B4 04:99A4: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x0119B5 04:99A5: 11        .byte $11   ; 
- D 0 - I - 0x0119B6 04:99A6: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x0119B7 04:99A7: 71        .byte $71   ; 
- D 0 - I - 0x0119B8 04:99A8: FD        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x0119B9 04:99A9: E8 9A     .word sub_FD_9AE8
- D 0 - I - 0x0119BB 04:99AB: 11        .byte $11   ; 
- D 0 - I - 0x0119BC 04:99AC: 71        .byte $71   ; 
- D 0 - I - 0x0119BD 04:99AD: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x0119BE 04:99AE: C1        .byte $C1   ; 
- D 0 - I - 0x0119BF 04:99AF: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x0119C0 04:99B0: 51        .byte $51   ; 
- D 0 - I - 0x0119C1 04:99B1: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x0119C2 04:99B2: A1        .byte $A1   ; 
- D 0 - I - 0x0119C3 04:99B3: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x0119C4 04:99B4: FD        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x0119C5 04:99B5: 02 9B     .word sub_FD_9B02
- D 0 - I - 0x0119C7 04:99B7: C2        .byte $C2   ; 
- D 0 - I - 0x0119C8 04:99B8: C1        .byte $C1   ; 
- D 0 - I - 0x0119C9 04:99B9: C1        .byte $C1   ; 
- D 0 - I - 0x0119CA 04:99BA: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x0119CB 04:99BB: 71        .byte $71   ; 
- D 0 - I - 0x0119CC 04:99BC: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x0119CD 04:99BD: C1        .byte $C1   ; 
- D 0 - I - 0x0119CE 04:99BE: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x0119CF 04:99BF: 07        .byte $07   ; 
- D 0 - I - 0x0119D0 04:99C0: 03        .byte $03   ; 
- D 0 - I - 0x0119D1 04:99C1: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x0119D2 04:99C2: 72        .byte $72   ; 
- D 0 - I - 0x0119D3 04:99C3: 71        .byte $71   ; 
- D 0 - I - 0x0119D4 04:99C4: 71        .byte $71   ; 
- D 0 - I - 0x0119D5 04:99C5: B1        .byte $B1   ; 
- D 0 - I - 0x0119D6 04:99C6: 71        .byte $71   ; 
- D 0 - I - 0x0119D7 04:99C7: 71        .byte $71   ; 
- D 0 - I - 0x0119D8 04:99C8: B1        .byte $B1   ; 
- D 0 - I - 0x0119D9 04:99C9: 71        .byte $71   ; 
- D 0 - I - 0x0119DA 04:99CA: 71        .byte $71   ; 
- D 0 - I - 0x0119DB 04:99CB: 91        .byte $91   ; 
- D 0 - I - 0x0119DC 04:99CC: 71        .byte $71   ; 
- D 0 - I - 0x0119DD 04:99CD: 92        .byte $92   ; 
- D 0 - I - 0x0119DE 04:99CE: 91        .byte $91   ; 
- D 0 - I - 0x0119DF 04:99CF: 91        .byte $91   ; 
- D 0 - I - 0x0119E0 04:99D0: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x0119E1 04:99D1: 41        .byte $41   ; 
- D 0 - I - 0x0119E2 04:99D2: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x0119E3 04:99D3: 91        .byte $91   ; 
- D 0 - I - 0x0119E4 04:99D4: 91        .byte $91   ; 
- D 0 - I - 0x0119E5 04:99D5: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x0119E6 04:99D6: 41        .byte $41   ; 
- D 0 - I - 0x0119E7 04:99D7: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x0119E8 04:99D8: 91        .byte $91   ; 
- D 0 - I - 0x0119E9 04:99D9: A1        .byte $A1   ; 
- D 0 - I - 0x0119EA 04:99DA: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x0119EB 04:99DB: 51        .byte $51   ; 
- D 0 - I - 0x0119EC 04:99DC: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x0119ED 04:99DD: A1        .byte $A1   ; 
- D 0 - I - 0x0119EE 04:99DE: FB        .byte con_se_cb_FB   ; 
- D 0 - I - 0x0119EF 04:99DF: B2        .byte $B2   ; 
- D 0 - I - 0x0119F0 04:99E0: B2        .byte $B2   ; 
- D 0 - I - 0x0119F1 04:99E1: 61        .byte $61   ; 
- D 0 - I - 0x0119F2 04:99E2: 91        .byte $91   ; 
- D 0 - I - 0x0119F3 04:99E3: FE        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x0119F4 04:99E4: 04        .byte $04   ; 
- D 0 - I - 0x0119F5 04:99E5: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x0119F6 04:99E6: FB        .byte con_se_cb_FB   ; 
- D 0 - I - 0x0119F7 04:99E7: 72        .byte $72   ; 
- D 0 - I - 0x0119F8 04:99E8: 71        .byte $71   ; 
- D 0 - I - 0x0119F9 04:99E9: 71        .byte $71   ; 
- D 0 - I - 0x0119FA 04:99EA: B1        .byte $B1   ; 
- D 0 - I - 0x0119FB 04:99EB: 71        .byte $71   ; 
- D 0 - I - 0x0119FC 04:99EC: FE        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x0119FD 04:99ED: 02        .byte $02   ; 
- D 0 - I - 0x0119FE 04:99EE: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x0119FF 04:99EF: 11        .byte $11   ; 
- D 0 - I - 0x011A00 04:99F0: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x011A01 04:99F1: 61        .byte $61   ; 
- D 0 - I - 0x011A02 04:99F2: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011A03 04:99F3: 21        .byte $21   ; 
- D 0 - I - 0x011A04 04:99F4: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x011A05 04:99F5: 71        .byte $71   ; 
- D 0 - I - 0x011A06 04:99F6: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011A07 04:99F7: 41        .byte $41   ; 
- D 0 - I - 0x011A08 04:99F8: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x011A09 04:99F9: 91        .byte $91   ; 
- D 0 - I - 0x011A0A 04:99FA: A3        .byte $A3   ; 
- D 0 - I - 0x011A0B 04:99FB: A1        .byte $A1   ; 
- D 0 - I - 0x011A0C 04:99FC: A1        .byte $A1   ; 
- D 0 - I - 0x011A0D 04:99FD: A1        .byte $A1   ; 
- D 0 - I - 0x011A0E 04:99FE: FB        .byte con_se_cb_FB   ; 
- D 0 - I - 0x011A0F 04:99FF: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x011A10 04:9A00: B3        .byte $B3   ; 
- D 0 - I - 0x011A11 04:9A01: B1        .byte $B1   ; 
- D 0 - I - 0x011A12 04:9A02: B1        .byte $B1   ; 
- D 0 - I - 0x011A13 04:9A03: B1        .byte $B1   ; 
- D 0 - I - 0x011A14 04:9A04: B2        .byte $B2   ; 
- D 0 - I - 0x011A15 04:9A05: 92        .byte $92   ; 
- D 0 - I - 0x011A16 04:9A06: B2        .byte $B2   ; 
- D 0 - I - 0x011A17 04:9A07: FE        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x011A18 04:9A08: 02        .byte $02   ; 
- D 0 - I - 0x011A19 04:9A09: FB        .byte con_se_cb_FB   ; 
- D 0 - I - 0x011A1A 04:9A0A: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x011A1B 04:9A0B: C3        .byte $C3   ; 
- D 0 - I - 0x011A1C 04:9A0C: C1        .byte $C1   ; 
- D 0 - I - 0x011A1D 04:9A0D: C1        .byte $C1   ; 
- D 0 - I - 0x011A1E 04:9A0E: C1        .byte $C1   ; 
- D 0 - I - 0x011A1F 04:9A0F: C2        .byte $C2   ; 
- D 0 - I - 0x011A20 04:9A10: A2        .byte $A2   ; 
- D 0 - I - 0x011A21 04:9A11: C2        .byte $C2   ; 
- D 0 - I - 0x011A22 04:9A12: FE        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x011A23 04:9A13: 02        .byte $02   ; 
- D 0 - I - 0x011A24 04:9A14: FB        .byte con_se_cb_FB   ; 
- D 0 - I - 0x011A25 04:9A15: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011A26 04:9A16: 12        .byte $12   ; 
- D 0 - I - 0x011A27 04:9A17: 12        .byte $12   ; 
- D 0 - I - 0x011A28 04:9A18: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x011A29 04:9A19: 81        .byte $81   ; 
- D 0 - I - 0x011A2A 04:9A1A: B1        .byte $B1   ; 
- D 0 - I - 0x011A2B 04:9A1B: FE        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x011A2C 04:9A1C: 03        .byte $03   ; 
- D 0 - I - 0x011A2D 04:9A1D: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x011A2E 04:9A1E: 07        .byte $07   ; 
- D 0 - I - 0x011A2F 04:9A1F: 00        .byte $00   ; 
- D 0 - I - 0x011A30 04:9A20: 13        .byte $13   ; 
- D 0 - I - 0x011A31 04:9A21: 63        .byte $63   ; 
- D 0 - I - 0x011A32 04:9A22: FE        .byte con_se_cb_jmp, $FF   ; 
- D 0 - I - 0x011A34 04:9A24: 6D 99     .word loc_FE_996D



_off000_9A26_80_03:
loc_FE_9A26:
- D 0 - I - 0x011A36 04:9A26: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x011A37 04:9A27: 01        .byte $01   ; 
- D 0 - I - 0x011A38 04:9A28: FB        .byte con_se_cb_FB   ; 
- D 0 - I - 0x011A39 04:9A29: B3        .byte $B3   ; 
- D 0 - I - 0x011A3A 04:9A2A: B4        .byte $B4   ; 
- D 0 - I - 0x011A3B 04:9A2B: 87        .byte $87   ; 
- D 0 - I - 0x011A3C 04:9A2C: 87        .byte $87   ; 
- D 0 - I - 0x011A3D 04:9A2D: B7        .byte $B7   ; 
- D 0 - I - 0x011A3E 04:9A2E: B7        .byte $B7   ; 
- D 0 - I - 0x011A3F 04:9A2F: B7        .byte $B7   ; 
- D 0 - I - 0x011A40 04:9A30: 97        .byte $97   ; 
- D 0 - I - 0x011A41 04:9A31: 97        .byte $97   ; 
- D 0 - I - 0x011A42 04:9A32: 87        .byte $87   ; 
- D 0 - I - 0x011A43 04:9A33: 87        .byte $87   ; 
- D 0 - I - 0x011A44 04:9A34: 77        .byte $77   ; 
- D 0 - I - 0x011A45 04:9A35: 77        .byte $77   ; 
- D 0 - I - 0x011A46 04:9A36: B7        .byte $B7   ; 
- D 0 - I - 0x011A47 04:9A37: C7        .byte $C7   ; 
- D 0 - I - 0x011A48 04:9A38: C7        .byte $C7   ; 
- D 0 - I - 0x011A49 04:9A39: B1        .byte $B1   ; 
- D 0 - I - 0x011A4A 04:9A3A: 3D        .byte $3D   ; 
- D 0 - I - 0x011A4B 04:9A3B: B1        .byte $B1   ; 
- D 0 - I - 0x011A4C 04:9A3C: 3D        .byte $3D   ; 
- D 0 - I - 0x011A4D 04:9A3D: 13        .byte $13   ; 
- D 0 - I - 0x011A4E 04:9A3E: 14        .byte $14   ; 
- D 0 - I - 0x011A4F 04:9A3F: B3        .byte $B3   ; 
- D 0 - I - 0x011A50 04:9A40: B4        .byte $B4   ; 
- D 0 - I - 0x011A51 04:9A41: B7        .byte $B7   ; 
- D 0 - I - 0x011A52 04:9A42: B7        .byte $B7   ; 
- D 0 - I - 0x011A53 04:9A43: B7        .byte $B7   ; 
- D 0 - I - 0x011A54 04:9A44: FE        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x011A55 04:9A45: 02        .byte $02   ; 
- D 0 - I - 0x011A56 04:9A46: FB        .byte con_se_cb_FB   ; 
- D 0 - I - 0x011A57 04:9A47: C7        .byte $C7   ; 
- D 0 - I - 0x011A58 04:9A48: 17        .byte $17   ; 
- D 0 - I - 0x011A59 04:9A49: C7        .byte $C7   ; 
- D 0 - I - 0x011A5A 04:9A4A: B7        .byte $B7   ; 
- D 0 - I - 0x011A5B 04:9A4B: B7        .byte $B7   ; 
- D 0 - I - 0x011A5C 04:9A4C: 17        .byte $17   ; 
- D 0 - I - 0x011A5D 04:9A4D: C7        .byte $C7   ; 
- D 0 - I - 0x011A5E 04:9A4E: 17        .byte $17   ; 
- D 0 - I - 0x011A5F 04:9A4F: C7        .byte $C7   ; 
- D 0 - I - 0x011A60 04:9A50: B7        .byte $B7   ; 
- D 0 - I - 0x011A61 04:9A51: 17        .byte $17   ; 
- D 0 - I - 0x011A62 04:9A52: 17        .byte $17   ; 
- D 0 - I - 0x011A63 04:9A53: FE        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x011A64 04:9A54: 04        .byte $04   ; 
- D 0 - I - 0x011A65 04:9A55: FC        .byte con_se_cb_FC   ; 
- D 0 - I - 0x011A66 04:9A56: FB        .byte con_se_cb_FB   ; 
- D 0 - I - 0x011A67 04:9A57: C7        .byte $C7   ; 
- D 0 - I - 0x011A68 04:9A58: 17        .byte $17   ; 
- D 0 - I - 0x011A69 04:9A59: C7        .byte $C7   ; 
- D 0 - I - 0x011A6A 04:9A5A: B7        .byte $B7   ; 
- D 0 - I - 0x011A6B 04:9A5B: B7        .byte $B7   ; 
- D 0 - I - 0x011A6C 04:9A5C: 17        .byte $17   ; 
- D 0 - I - 0x011A6D 04:9A5D: C7        .byte $C7   ; 
- D 0 - I - 0x011A6E 04:9A5E: 17        .byte $17   ; 
- D 0 - I - 0x011A6F 04:9A5F: C7        .byte $C7   ; 
- D 0 - I - 0x011A70 04:9A60: B7        .byte $B7   ; 
- D 0 - I - 0x011A71 04:9A61: 17        .byte $17   ; 
- D 0 - I - 0x011A72 04:9A62: 17        .byte $17   ; 
- D 0 - I - 0x011A73 04:9A63: FE        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x011A74 04:9A64: 03        .byte $03   ; 
- D 0 - I - 0x011A75 04:9A65: C7        .byte $C7   ; 
- D 0 - I - 0x011A76 04:9A66: 17        .byte $17   ; 
- D 0 - I - 0x011A77 04:9A67: C7        .byte $C7   ; 
- D 0 - I - 0x011A78 04:9A68: B7        .byte $B7   ; 
- D 0 - I - 0x011A79 04:9A69: B7        .byte $B7   ; 
- D 0 - I - 0x011A7A 04:9A6A: 17        .byte $17   ; 
- D 0 - I - 0x011A7B 04:9A6B: 93        .byte $93   ; 
- D 0 - I - 0x011A7C 04:9A6C: 94        .byte $94   ; 
- D 0 - I - 0x011A7D 04:9A6D: 87        .byte $87   ; 
- D 0 - I - 0x011A7E 04:9A6E: 87        .byte $87   ; 
- D 0 - I - 0x011A7F 04:9A6F: B7        .byte $B7   ; 
- D 0 - I - 0x011A80 04:9A70: B7        .byte $B7   ; 
- D 0 - I - 0x011A81 04:9A71: B7        .byte $B7   ; 
- D 0 - I - 0x011A82 04:9A72: FE        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x011A83 04:9A73: 02        .byte $02   ; 
- D 0 - I - 0x011A84 04:9A74: C7        .byte $C7   ; 
- D 0 - I - 0x011A85 04:9A75: 17        .byte $17   ; 
- D 0 - I - 0x011A86 04:9A76: C7        .byte $C7   ; 
- D 0 - I - 0x011A87 04:9A77: B7        .byte $B7   ; 
- D 0 - I - 0x011A88 04:9A78: B7        .byte $B7   ; 
- D 0 - I - 0x011A89 04:9A79: 17        .byte $17   ; 
- D 0 - I - 0x011A8A 04:9A7A: C7        .byte $C7   ; 
- D 0 - I - 0x011A8B 04:9A7B: 17        .byte $17   ; 
- D 0 - I - 0x011A8C 04:9A7C: C7        .byte $C7   ; 
- D 0 - I - 0x011A8D 04:9A7D: B7        .byte $B7   ; 
- D 0 - I - 0x011A8E 04:9A7E: 17        .byte $17   ; 
- D 0 - I - 0x011A8F 04:9A7F: B7        .byte $B7   ; 
- D 0 - I - 0x011A90 04:9A80: B7        .byte $B7   ; 
- D 0 - I - 0x011A91 04:9A81: C7        .byte $C7   ; 
- D 0 - I - 0x011A92 04:9A82: B7        .byte $B7   ; 
- D 0 - I - 0x011A93 04:9A83: C7        .byte $C7   ; 
- D 0 - I - 0x011A94 04:9A84: B7        .byte $B7   ; 
- D 0 - I - 0x011A95 04:9A85: C7        .byte $C7   ; 
- D 0 - I - 0x011A96 04:9A86: B1        .byte $B1   ; 
- D 0 - I - 0x011A97 04:9A87: 3D        .byte $3D   ; 
- D 0 - I - 0x011A98 04:9A88: 07        .byte $07   ; 
- D 0 - I - 0x011A99 04:9A89: B7        .byte $B7   ; 
- D 0 - I - 0x011A9A 04:9A8A: 87        .byte $87   ; 
- D 0 - I - 0x011A9B 04:9A8B: 77        .byte $77   ; 
- D 0 - I - 0x011A9C 04:9A8C: FB        .byte con_se_cb_FB   ; 
- D 0 - I - 0x011A9D 04:9A8D: B7        .byte $B7   ; 
- D 0 - I - 0x011A9E 04:9A8E: 07        .byte $07   ; 
- D 0 - I - 0x011A9F 04:9A8F: B3        .byte $B3   ; 
- D 0 - I - 0x011AA0 04:9A90: B4        .byte $B4   ; 
- D 0 - I - 0x011AA1 04:9A91: B7        .byte $B7   ; 
- D 0 - I - 0x011AA2 04:9A92: B7        .byte $B7   ; 
- D 0 - I - 0x011AA3 04:9A93: B7        .byte $B7   ; 
- D 0 - I - 0x011AA4 04:9A94: BE        .byte $BE   ; 
- D 0 - I - 0x011AA5 04:9A95: BE        .byte $BE   ; 
- D 0 - I - 0x011AA6 04:9A96: BE        .byte $BE   ; 
- D 0 - I - 0x011AA7 04:9A97: B7        .byte $B7   ; 
- D 0 - I - 0x011AA8 04:9A98: B7        .byte $B7   ; 
- D 0 - I - 0x011AA9 04:9A99: B7        .byte $B7   ; 
- D 0 - I - 0x011AAA 04:9A9A: B7        .byte $B7   ; 
- D 0 - I - 0x011AAB 04:9A9B: B7        .byte $B7   ; 
- D 0 - I - 0x011AAC 04:9A9C: B3        .byte $B3   ; 
- D 0 - I - 0x011AAD 04:9A9D: B4        .byte $B4   ; 
- D 0 - I - 0x011AAE 04:9A9E: BE        .byte $BE   ; 
- D 0 - I - 0x011AAF 04:9A9F: BE        .byte $BE   ; 
- D 0 - I - 0x011AB0 04:9AA0: BE        .byte $BE   ; 
- D 0 - I - 0x011AB1 04:9AA1: FE        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x011AB2 04:9AA2: 02        .byte $02   ; 
- D 0 - I - 0x011AB3 04:9AA3: C7        .byte $C7   ; 
- D 0 - I - 0x011AB4 04:9AA4: 17        .byte $17   ; 
- D 0 - I - 0x011AB5 04:9AA5: C7        .byte $C7   ; 
- D 0 - I - 0x011AB6 04:9AA6: B7        .byte $B7   ; 
- D 0 - I - 0x011AB7 04:9AA7: B7        .byte $B7   ; 
- D 0 - I - 0x011AB8 04:9AA8: 17        .byte $17   ; 
- D 0 - I - 0x011AB9 04:9AA9: C7        .byte $C7   ; 
- D 0 - I - 0x011ABA 04:9AAA: 17        .byte $17   ; 
- D 0 - I - 0x011ABB 04:9AAB: C7        .byte $C7   ; 
- D 0 - I - 0x011ABC 04:9AAC: B7        .byte $B7   ; 
- D 0 - I - 0x011ABD 04:9AAD: 17        .byte $17   ; 
- D 0 - I - 0x011ABE 04:9AAE: B7        .byte $B7   ; 
- D 0 - I - 0x011ABF 04:9AAF: C7        .byte $C7   ; 
- D 0 - I - 0x011AC0 04:9AB0: 17        .byte $17   ; 
- D 0 - I - 0x011AC1 04:9AB1: C7        .byte $C7   ; 
- D 0 - I - 0x011AC2 04:9AB2: B7        .byte $B7   ; 
- D 0 - I - 0x011AC3 04:9AB3: B7        .byte $B7   ; 
- D 0 - I - 0x011AC4 04:9AB4: 17        .byte $17   ; 
- D 0 - I - 0x011AC5 04:9AB5: B7        .byte $B7   ; 
- D 0 - I - 0x011AC6 04:9AB6: B7        .byte $B7   ; 
- D 0 - I - 0x011AC7 04:9AB7: B7        .byte $B7   ; 
- D 0 - I - 0x011AC8 04:9AB8: B7        .byte $B7   ; 
- D 0 - I - 0x011AC9 04:9AB9: B7        .byte $B7   ; 
- D 0 - I - 0x011ACA 04:9ABA: B7        .byte $B7   ; 
- D 0 - I - 0x011ACB 04:9ABB: FE        .byte con_se_cb_jmp, $FF   ; 
- D 0 - I - 0x011ACD 04:9ABD: 26 9A     .word loc_FE_9A26



sub_FD_9ABF:
- D 0 - I - 0x011ACF 04:9ABF: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x011AD0 04:9AC0: 07        .byte $07   ; 
- D 0 - I - 0x011AD1 04:9AC1: B5        .byte $B5   ; 
- D 0 - I - 0x011AD2 04:9AC2: 82        .byte $82   ; 
- D 0 - I - 0x011AD3 04:9AC3: 43        .byte $43   ; 
- D 0 - I - 0x011AD4 04:9AC4: EB        .byte con_se_cb_EB, $00   ; 
- D 0 - I - 0x011AD6 04:9AC6: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x011AD7 04:9AC7: 11        .byte $11   ; 
- D 0 - I - 0x011AD8 04:9AC8: 21        .byte $21   ; 
- D 0 - I - 0x011AD9 04:9AC9: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011ADA 04:9ACA: 91        .byte $91   ; 
- D 0 - I - 0x011ADB 04:9ACB: B4        .byte $B4   ; 
- D 0 - I - 0x011ADC 04:9ACC: 61        .byte $61   ; 
- D 0 - I - 0x011ADD 04:9ACD: B1        .byte $B1   ; 
- D 0 - I - 0x011ADE 04:9ACE: B1        .byte $B1   ; 
- D 0 - I - 0x011ADF 04:9ACF: 91        .byte $91   ; 
- D 0 - I - 0x011AE0 04:9AD0: B1        .byte $B1   ; 
- D 0 - I - 0x011AE1 04:9AD1: FF        .byte con_se_cb_stop   ; 



sub_FD_9AD2:
- D 0 - I - 0x011AE2 04:9AD2: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x011AE3 04:9AD3: 07        .byte $07   ; 
- D 0 - I - 0x011AE4 04:9AD4: B2        .byte $B2   ; 
- D 0 - I - 0x011AE5 04:9AD5: 80        .byte $80   ; 
- D 0 - I - 0x011AE6 04:9AD6: 00        .byte $00   ; 
- D 0 - I - 0x011AE7 04:9AD7: E7        .byte con_se_cb_E7, $55, $01   ; 
- D 0 - I - 0x011AEA 04:9ADA: FF        .byte con_se_cb_stop   ; 



sub_FD_9ADB:
- D 0 - I - 0x011AEB 04:9ADB: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x011AEC 04:9ADC: 07        .byte $07   ; 
- D 0 - I - 0x011AED 04:9ADD: B2        .byte $B2   ; 
- D 0 - I - 0x011AEE 04:9ADE: 80        .byte $80   ; 
- D 0 - I - 0x011AEF 04:9ADF: 00        .byte $00   ; 
- D 0 - I - 0x011AF0 04:9AE0: E7        .byte con_se_cb_E7, $55, $01   ; 
- D 0 - I - 0x011AF3 04:9AE3: E2        .byte con_se_cb_E2, $00   ; 
- D 0 - I - 0x011AF5 04:9AE5: 02        .byte $02   ; 
- D 0 - I - 0x011AF6 04:9AE6: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011AF7 04:9AE7: FF        .byte con_se_cb_stop   ; 



sub_FD_9AE8:
- D 0 - I - 0x011AF8 04:9AE8: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x011AF9 04:9AE9: 07        .byte $07   ; 
- D 0 - I - 0x011AFA 04:9AEA: 05        .byte $05   ; 
- D 0 - I - 0x011AFB 04:9AEB: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x011AFC 04:9AEC: B2        .byte $B2   ; 
- D 0 - I - 0x011AFD 04:9AED: B1        .byte $B1   ; 
- D 0 - I - 0x011AFE 04:9AEE: B1        .byte $B1   ; 
- D 0 - I - 0x011AFF 04:9AEF: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011B00 04:9AF0: 61        .byte $61   ; 
- D 0 - I - 0x011B01 04:9AF1: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x011B02 04:9AF2: B1        .byte $B1   ; 
- D 0 - I - 0x011B03 04:9AF3: B2        .byte $B2   ; 
- D 0 - I - 0x011B04 04:9AF4: B2        .byte $B2   ; 
- D 0 - I - 0x011B05 04:9AF5: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011B06 04:9AF6: 62        .byte $62   ; 
- D 0 - I - 0x011B07 04:9AF7: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x011B08 04:9AF8: C2        .byte $C2   ; 
- D 0 - I - 0x011B09 04:9AF9: C1        .byte $C1   ; 
- D 0 - I - 0x011B0A 04:9AFA: C1        .byte $C1   ; 
- D 0 - I - 0x011B0B 04:9AFB: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011B0C 04:9AFC: 71        .byte $71   ; 
- D 0 - I - 0x011B0D 04:9AFD: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x011B0E 04:9AFE: C1        .byte $C1   ; 
- D 0 - I - 0x011B0F 04:9AFF: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011B10 04:9B00: 91        .byte $91   ; 
- D 0 - I - 0x011B11 04:9B01: FF        .byte con_se_cb_stop   ; 



sub_FD_9B02:
- D 0 - I - 0x011B12 04:9B02: B2        .byte $B2   ; 
- D 0 - I - 0x011B13 04:9B03: B1        .byte $B1   ; 
- D 0 - I - 0x011B14 04:9B04: B1        .byte $B1   ; 
- D 0 - I - 0x011B15 04:9B05: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011B16 04:9B06: 61        .byte $61   ; 
- D 0 - I - 0x011B17 04:9B07: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x011B18 04:9B08: B1        .byte $B1   ; 
- D 0 - I - 0x011B19 04:9B09: B2        .byte $B2   ; 
- D 0 - I - 0x011B1A 04:9B0A: B2        .byte $B2   ; 
- D 0 - I - 0x011B1B 04:9B0B: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011B1C 04:9B0C: 62        .byte $62   ; 
- D 0 - I - 0x011B1D 04:9B0D: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x011B1E 04:9B0E: A2        .byte $A2   ; 
- D 0 - I - 0x011B1F 04:9B0F: A1        .byte $A1   ; 
- D 0 - I - 0x011B20 04:9B10: A1        .byte $A1   ; 
- D 0 - I - 0x011B21 04:9B11: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011B22 04:9B12: 51        .byte $51   ; 
- D 0 - I - 0x011B23 04:9B13: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x011B24 04:9B14: A1        .byte $A1   ; 
- D 0 - I - 0x011B25 04:9B15: FF        .byte con_se_cb_stop   ; 



_off000_9B16_84_01:
loc_FE_9B16:
- D 0 - I - 0x011B26 04:9B16: FB        .byte con_se_cb_FB   ; 
- D 0 - I - 0x011B27 04:9B17: E6        .byte con_se_cb_E6, $61   ; 
- D 0 - I - 0x011B29 04:9B19: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x011B2A 04:9B1A: 06        .byte $06   ; 
- D 0 - I - 0x011B2B 04:9B1B: 77        .byte $77   ; 
- D 0 - I - 0x011B2C 04:9B1C: 83        .byte $83   ; 
- D 0 - I - 0x011B2D 04:9B1D: 15        .byte $15   ; 
- D 0 - I - 0x011B2E 04:9B1E: EB        .byte con_se_cb_EB, $02, $10, $02   ; 
- D 0 - I - 0x011B32 04:9B22: E2        .byte con_se_cb_E2, $37   ; 
- D 0 - I - 0x011B34 04:9B24: EA        .byte con_se_cb_EA, $03   ; 
- D 0 - I - 0x011B36 04:9B26: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x011B37 04:9B27: A1        .byte $A1   ; 
- D 0 - I - 0x011B38 04:9B28: 51        .byte $51   ; 
- D 0 - I - 0x011B39 04:9B29: 81        .byte $81   ; 
- D 0 - I - 0x011B3A 04:9B2A: A2        .byte $A2   ; 
- D 0 - I - 0x011B3B 04:9B2B: D3        .byte $D3   ; 
- D 0 - I - 0x011B3C 04:9B2C: 51        .byte $51   ; 
- D 0 - I - 0x011B3D 04:9B2D: 81        .byte $81   ; 
- D 0 - I - 0x011B3E 04:9B2E: A2        .byte $A2   ; 
- D 0 - I - 0x011B3F 04:9B2F: D4        .byte $D4   ; 
- D 0 - I - 0x011B40 04:9B30: 51        .byte $51   ; 
- D 0 - I - 0x011B41 04:9B31: 81        .byte $81   ; 
- D 0 - I - 0x011B42 04:9B32: A2        .byte $A2   ; 
- D 0 - I - 0x011B43 04:9B33: D5        .byte $D5   ; 
- D 0 - I - 0x011B44 04:9B34: 51        .byte $51   ; 
- D 0 - I - 0x011B45 04:9B35: EA        .byte con_se_cb_EA, $00   ; 
- D 0 - I - 0x011B47 04:9B37: 82        .byte $82   ; 
- D 0 - I - 0x011B48 04:9B38: EA        .byte con_se_cb_EA, $03   ; 
- D 0 - I - 0x011B4A 04:9B3A: E2        .byte con_se_cb_E2, $7A   ; 
- D 0 - I - 0x011B4C 04:9B3C: E6        .byte con_se_cb_E6, $00   ; 
- D 0 - I - 0x011B4E 04:9B3E: E3        .byte con_se_cb_E3, $18   ; 
- D 0 - I - 0x011B50 04:9B40: D0        .byte $D0   ; 
- D 0 - I - 0x011B51 04:9B41: E5        .byte con_se_cb_E5, $17   ; 
- D 0 - I - 0x011B53 04:9B43: F0        .byte con_se_cb_F0   ; 
- D 0 - I - 0x011B54 04:9B44: A3        .byte $A3   ; 
- D 0 - I - 0x011B55 04:9B45: A3        .byte $A3   ; 
- D 0 - I - 0x011B56 04:9B46: A1        .byte $A1   ; 
- D 0 - I - 0x011B57 04:9B47: A1        .byte $A1   ; 
- D 0 - I - 0x011B58 04:9B48: D5        .byte $D5   ; 
- D 0 - I - 0x011B59 04:9B49: A1        .byte $A1   ; 
- D 0 - I - 0x011B5A 04:9B4A: D0        .byte $D0   ; 
- D 0 - I - 0x011B5B 04:9B4B: C1        .byte $C1   ; 
- D 0 - I - 0x011B5C 04:9B4C: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x011B5D 04:9B4D: 11        .byte $11   ; 
- D 0 - I - 0x011B5E 04:9B4E: F0        .byte con_se_cb_F0   ; 
- D 0 - I - 0x011B5F 04:9B4F: C2        .byte $C2   ; 
- D 0 - I - 0x011B60 04:9B50: 82        .byte $82   ; 
- D 0 - I - 0x011B61 04:9B51: 51        .byte $51   ; 
- D 0 - I - 0x011B62 04:9B52: FE        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x011B63 04:9B53: 02        .byte $02   ; 
- D 0 - I - 0x011B64 04:9B54: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x011B65 04:9B55: 06        .byte $06   ; 
- D 0 - I - 0x011B66 04:9B56: 37        .byte $37   ; 
- D 0 - I - 0x011B67 04:9B57: 83        .byte $83   ; 
- D 0 - I - 0x011B68 04:9B58: 34        .byte $34   ; 
- D 0 - I - 0x011B69 04:9B59: E7        .byte con_se_cb_E7, $50, $22   ; 
- D 0 - I - 0x011B6C 04:9B5C: EA        .byte con_se_cb_EA, $00   ; 
- D 0 - I - 0x011B6E 04:9B5E: EC        .byte con_se_cb_EC, $0A, $11, $04   ; 
- D 0 - I - 0x011B72 04:9B62: E2        .byte con_se_cb_E2, $B7   ; 
- D 0 - I - 0x011B74 04:9B64: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x011B75 04:9B65: A4        .byte $A4   ; 
- D 0 - I - 0x011B76 04:9B66: C4        .byte $C4   ; 
- D 0 - I - 0x011B77 04:9B67: E5        .byte con_se_cb_E5, $55   ; 
- D 0 - I - 0x011B79 04:9B69: EC        .byte con_se_cb_EC, $00   ; 
- D 0 - I - 0x011B7B 04:9B6B: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011B7C 04:9B6C: 13        .byte $13   ; 
- D 0 - I - 0x011B7D 04:9B6D: 83        .byte $83   ; 
- D 0 - I - 0x011B7E 04:9B6E: E5        .byte con_se_cb_E5, $11   ; 
- D 0 - I - 0x011B80 04:9B70: 78        .byte $78   ; 
- D 0 - I - 0x011B81 04:9B71: 38        .byte $38   ; 
- D 0 - I - 0x011B82 04:9B72: E5        .byte con_se_cb_E5, $35   ; 
- D 0 - I - 0x011B84 04:9B74: 31        .byte $31   ; 
- D 0 - I - 0x011B85 04:9B75: 51        .byte $51   ; 
- D 0 - I - 0x011B86 04:9B76: E5        .byte con_se_cb_E5, $12   ; 
- D 0 - I - 0x011B88 04:9B78: 6E        .byte $6E   ; 
- D 0 - I - 0x011B89 04:9B79: E5        .byte con_se_cb_E5, $15   ; 
- D 0 - I - 0x011B8B 04:9B7B: 51        .byte $51   ; 
- D 0 - I - 0x011B8C 04:9B7C: 61        .byte $61   ; 
- D 0 - I - 0x011B8D 04:9B7D: E5        .byte con_se_cb_E5, $12   ; 
- D 0 - I - 0x011B8F 04:9B7F: 80        .byte $80   ; 
- D 0 - I - 0x011B90 04:9B80: E5        .byte con_se_cb_E5, $34   ; 
- D 0 - I - 0x011B92 04:9B82: EC        .byte con_se_cb_EC, $0A, $11, $04   ; 
- D 0 - I - 0x011B96 04:9B86: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x011B97 04:9B87: A4        .byte $A4   ; 
- D 0 - I - 0x011B98 04:9B88: C4        .byte $C4   ; 
- D 0 - I - 0x011B99 04:9B89: E5        .byte con_se_cb_E5, $75   ; 
- D 0 - I - 0x011B9B 04:9B8B: EC        .byte con_se_cb_EC, $00   ; 
- D 0 - I - 0x011B9D 04:9B8D: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011B9E 04:9B8E: 13        .byte $13   ; 
- D 0 - I - 0x011B9F 04:9B8F: 83        .byte $83   ; 
- D 0 - I - 0x011BA0 04:9B90: E5        .byte con_se_cb_E5, $11   ; 
- D 0 - I - 0x011BA2 04:9B92: 78        .byte $78   ; 
- D 0 - I - 0x011BA3 04:9B93: E7        .byte con_se_cb_E7, $56, $21   ; 
- D 0 - I - 0x011BA6 04:9B96: A8        .byte $A8   ; 
- D 0 - I - 0x011BA7 04:9B97: E7        .byte con_se_cb_E7, $50, $21   ; 
- D 0 - I - 0x011BAA 04:9B9A: E5        .byte con_se_cb_E5, $35   ; 
- D 0 - I - 0x011BAC 04:9B9C: A1        .byte $A1   ; 
- D 0 - I - 0x011BAD 04:9B9D: C1        .byte $C1   ; 
- D 0 - I - 0x011BAE 04:9B9E: E5        .byte con_se_cb_E5, $12   ; 
- D 0 - I - 0x011BB0 04:9BA0: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x011BB1 04:9BA1: 1E        .byte $1E   ; 
- D 0 - I - 0x011BB2 04:9BA2: E5        .byte con_se_cb_E5, $15   ; 
- D 0 - I - 0x011BB4 04:9BA4: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011BB5 04:9BA5: C1        .byte $C1   ; 
- D 0 - I - 0x011BB6 04:9BA6: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x011BB7 04:9BA7: 11        .byte $11   ; 
- D 0 - I - 0x011BB8 04:9BA8: E5        .byte con_se_cb_E5, $12   ; 
- D 0 - I - 0x011BBA 04:9BAA: 38        .byte $38   ; 
- D 0 - I - 0x011BBB 04:9BAB: E2        .byte con_se_cb_E2, $B1   ; 
- D 0 - I - 0x011BBD 04:9BAD: 57        .byte $57   ; 
- D 0 - I - 0x011BBE 04:9BAE: D3        .byte $D3   ; 
- D 0 - I - 0x011BBF 04:9BAF: E2        .byte con_se_cb_E2, $00   ; 
- D 0 - I - 0x011BC1 04:9BB1: E1        .byte con_se_cb_E1, $02   ; 
- D 0 - I - 0x011BC3 04:9BB3: 31        .byte $31   ; 
- D 0 - I - 0x011BC4 04:9BB4: 21        .byte $21   ; 
- D 0 - I - 0x011BC5 04:9BB5: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011BC6 04:9BB6: C1        .byte $C1   ; 
- D 0 - I - 0x011BC7 04:9BB7: D0        .byte $D0   ; 
- D 0 - I - 0x011BC8 04:9BB8: FD        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x011BC9 04:9BB9: 1B 9F     .word sub_FD_9F1B
- D 0 - I - 0x011BCB 04:9BBB: 32        .byte $32   ; 
- D 0 - I - 0x011BCC 04:9BBC: 32        .byte $32   ; 
- D 0 - I - 0x011BCD 04:9BBD: EA        .byte con_se_cb_EA, $03   ; 
- D 0 - I - 0x011BCF 04:9BBF: 11        .byte $11   ; 
- D 0 - I - 0x011BD0 04:9BC0: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011BD1 04:9BC1: C1        .byte $C1   ; 
- D 0 - I - 0x011BD2 04:9BC2: A1        .byte $A1   ; 
- D 0 - I - 0x011BD3 04:9BC3: C1        .byte $C1   ; 
- D 0 - I - 0x011BD4 04:9BC4: 81        .byte $81   ; 
- D 0 - I - 0x011BD5 04:9BC5: 51        .byte $51   ; 
- D 0 - I - 0x011BD6 04:9BC6: A1        .byte $A1   ; 
- D 0 - I - 0x011BD7 04:9BC7: 71        .byte $71   ; 
- D 0 - I - 0x011BD8 04:9BC8: 31        .byte $31   ; 
- D 0 - I - 0x011BD9 04:9BC9: 81        .byte $81   ; 
- D 0 - I - 0x011BDA 04:9BCA: 71        .byte $71   ; 
- D 0 - I - 0x011BDB 04:9BCB: EA        .byte con_se_cb_EA, $00   ; 
- D 0 - I - 0x011BDD 04:9BCD: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x011BDE 04:9BCE: 31        .byte $31   ; 
- D 0 - I - 0x011BDF 04:9BCF: 32        .byte $32   ; 
- D 0 - I - 0x011BE0 04:9BD0: 31        .byte $31   ; 
- D 0 - I - 0x011BE1 04:9BD1: FD        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x011BE2 04:9BD2: 25 9F     .word sub_FD_9F25
- D 0 - I - 0x011BE4 04:9BD4: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x011BE5 04:9BD5: 02        .byte $02   ; 
- D 0 - I - 0x011BE6 04:9BD6: 35        .byte $35   ; 
- D 0 - I - 0x011BE7 04:9BD7: 81        .byte $81   ; 
- D 0 - I - 0x011BE8 04:9BD8: 14        .byte $14   ; 
- D 0 - I - 0x011BE9 04:9BD9: E6        .byte con_se_cb_E6, $51   ; 
- D 0 - I - 0x011BEB 04:9BDB: EA        .byte con_se_cb_EA, $03   ; 
- D 0 - I - 0x011BED 04:9BDD: E2        .byte con_se_cb_E2, $77   ; 
- D 0 - I - 0x011BEF 04:9BDF: EB        .byte con_se_cb_EB, $01, $10, $03   ; 
- D 0 - I - 0x011BF3 04:9BE3: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011BF4 04:9BE4: A1        .byte $A1   ; 
- D 0 - I - 0x011BF5 04:9BE5: B1        .byte $B1   ; 
- D 0 - I - 0x011BF6 04:9BE6: C1        .byte $C1   ; 
- D 0 - I - 0x011BF7 04:9BE7: E1        .byte con_se_cb_E1, $06   ; 
- D 0 - I - 0x011BF9 04:9BE9: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x011BFA 04:9BEA: 12        .byte $12   ; 
- D 0 - I - 0x011BFB 04:9BEB: 33        .byte $33   ; 
- D 0 - I - 0x011BFC 04:9BEC: 52        .byte $52   ; 
- D 0 - I - 0x011BFD 04:9BED: 83        .byte $83   ; 
- D 0 - I - 0x011BFE 04:9BEE: 73        .byte $73   ; 
- D 0 - I - 0x011BFF 04:9BEF: 31        .byte $31   ; 
- D 0 - I - 0x011C00 04:9BF0: 51        .byte $51   ; 
- D 0 - I - 0x011C01 04:9BF1: 63        .byte $63   ; 
- D 0 - I - 0x011C02 04:9BF2: 83        .byte $83   ; 
- D 0 - I - 0x011C03 04:9BF3: 62        .byte $62   ; 
- D 0 - I - 0x011C04 04:9BF4: 53        .byte $53   ; 
- D 0 - I - 0x011C05 04:9BF5: 33        .byte $33   ; 
- D 0 - I - 0x011C06 04:9BF6: 12        .byte $12   ; 
- D 0 - I - 0x011C07 04:9BF7: E7        .byte con_se_cb_E7, $00   ; 
- D 0 - I - 0x011C09 04:9BF9: E6        .byte con_se_cb_E6, $00   ; 
- D 0 - I - 0x011C0B 04:9BFB: EB        .byte con_se_cb_EB, $00   ; 
- D 0 - I - 0x011C0D 04:9BFD: FD        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x011C0E 04:9BFE: 1B 9F     .word sub_FD_9F1B
- D 0 - I - 0x011C10 04:9C00: 31        .byte $31   ; 
- D 0 - I - 0x011C11 04:9C01: 11        .byte $11   ; 
- D 0 - I - 0x011C12 04:9C02: 32        .byte $32   ; 
- D 0 - I - 0x011C13 04:9C03: EA        .byte con_se_cb_EA, $03   ; 
- D 0 - I - 0x011C15 04:9C05: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011C16 04:9C06: C1        .byte $C1   ; 
- D 0 - I - 0x011C17 04:9C07: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x011C18 04:9C08: 11        .byte $11   ; 
- D 0 - I - 0x011C19 04:9C09: 81        .byte $81   ; 
- D 0 - I - 0x011C1A 04:9C0A: 71        .byte $71   ; 
- D 0 - I - 0x011C1B 04:9C0B: 31        .byte $31   ; 
- D 0 - I - 0x011C1C 04:9C0C: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011C1D 04:9C0D: A1        .byte $A1   ; 
- D 0 - I - 0x011C1E 04:9C0E: C1        .byte $C1   ; 
- D 0 - I - 0x011C1F 04:9C0F: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x011C20 04:9C10: 11        .byte $11   ; 
- D 0 - I - 0x011C21 04:9C11: 31        .byte $31   ; 
- D 0 - I - 0x011C22 04:9C12: 51        .byte $51   ; 
- D 0 - I - 0x011C23 04:9C13: 71        .byte $71   ; 
- D 0 - I - 0x011C24 04:9C14: EA        .byte con_se_cb_EA, $00   ; 
- D 0 - I - 0x011C26 04:9C16: 31        .byte $31   ; 
- D 0 - I - 0x011C27 04:9C17: 32        .byte $32   ; 
- D 0 - I - 0x011C28 04:9C18: 31        .byte $31   ; 
- D 0 - I - 0x011C29 04:9C19: E8        .byte con_se_cb_E8, $0C   ; 
- D 0 - I - 0x011C2B 04:9C1B: FD        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x011C2C 04:9C1C: 25 9F     .word sub_FD_9F25
- D 0 - I - 0x011C2E 04:9C1E: E8        .byte con_se_cb_E8, $00   ; 
- D 0 - I - 0x011C30 04:9C20: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x011C31 04:9C21: 02        .byte $02   ; 
- D 0 - I - 0x011C32 04:9C22: 35        .byte $35   ; 
- D 0 - I - 0x011C33 04:9C23: 82        .byte $82   ; 
- D 0 - I - 0x011C34 04:9C24: 14        .byte $14   ; 
- D 0 - I - 0x011C35 04:9C25: E6        .byte con_se_cb_E6, $51   ; 
- D 0 - I - 0x011C37 04:9C27: EA        .byte con_se_cb_EA, $03   ; 
- D 0 - I - 0x011C39 04:9C29: E2        .byte con_se_cb_E2, $77   ; 
- D 0 - I - 0x011C3B 04:9C2B: E7        .byte con_se_cb_E7, $51, $02   ; 
- D 0 - I - 0x011C3E 04:9C2E: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x011C3F 04:9C2F: 31        .byte $31   ; 
- D 0 - I - 0x011C40 04:9C30: 51        .byte $51   ; 
- D 0 - I - 0x011C41 04:9C31: E1        .byte con_se_cb_E1, $04   ; 
- D 0 - I - 0x011C43 04:9C33: 53        .byte $53   ; 
- D 0 - I - 0x011C44 04:9C34: 64        .byte $64   ; 
- D 0 - I - 0x011C45 04:9C35: 54        .byte $54   ; 
- D 0 - I - 0x011C46 04:9C36: 34        .byte $34   ; 
- D 0 - I - 0x011C47 04:9C37: 54        .byte $54   ; 
- D 0 - I - 0x011C48 04:9C38: 34        .byte $34   ; 
- D 0 - I - 0x011C49 04:9C39: 14        .byte $14   ; 
- D 0 - I - 0x011C4A 04:9C3A: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011C4B 04:9C3B: C4        .byte $C4   ; 
- D 0 - I - 0x011C4C 04:9C3C: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x011C4D 04:9C3D: 14        .byte $14   ; 
- D 0 - I - 0x011C4E 04:9C3E: E1        .byte con_se_cb_E1, $06   ; 
- D 0 - I - 0x011C50 04:9C40: EA        .byte con_se_cb_EA, $00   ; 
- D 0 - I - 0x011C52 04:9C42: E7        .byte con_se_cb_E7, $56, $22   ; 
- D 0 - I - 0x011C55 04:9C45: 34        .byte $34   ; 
- D 0 - I - 0x011C56 04:9C46: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011C57 04:9C47: C4        .byte $C4   ; 
- D 0 - I - 0x011C58 04:9C48: E6        .byte con_se_cb_E6, $00   ; 
- D 0 - I - 0x011C5A 04:9C4A: FE        .byte con_se_cb_jmp, $FF   ; 
- D 0 - I - 0x011C5C 04:9C4C: 16 9B     .word loc_FE_9B16



_off000_9C4E_84_00:
loc_FE_9C4E:
- D 0 - I - 0x011C5E 04:9C4E: FB        .byte con_se_cb_FB   ; 
- D 0 - I - 0x011C5F 04:9C4F: E6        .byte con_se_cb_E6, $41   ; 
- D 0 - I - 0x011C61 04:9C51: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x011C62 04:9C52: 06        .byte $06   ; 
- D 0 - I - 0x011C63 04:9C53: 76        .byte $76   ; 
- D 0 - I - 0x011C64 04:9C54: 82        .byte $82   ; 
- D 0 - I - 0x011C65 04:9C55: 15        .byte $15   ; 
- D 0 - I - 0x011C66 04:9C56: EB        .byte con_se_cb_EB, $02, $10, $02   ; 
- D 0 - I - 0x011C6A 04:9C5A: E2        .byte con_se_cb_E2, $37   ; 
- D 0 - I - 0x011C6C 04:9C5C: EA        .byte con_se_cb_EA, $03   ; 
- D 0 - I - 0x011C6E 04:9C5E: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x011C6F 04:9C5F: 51        .byte $51   ; 
- D 0 - I - 0x011C70 04:9C60: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011C71 04:9C61: C1        .byte $C1   ; 
- D 0 - I - 0x011C72 04:9C62: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x011C73 04:9C63: 31        .byte $31   ; 
- D 0 - I - 0x011C74 04:9C64: 52        .byte $52   ; 
- D 0 - I - 0x011C75 04:9C65: D3        .byte $D3   ; 
- D 0 - I - 0x011C76 04:9C66: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011C77 04:9C67: C1        .byte $C1   ; 
- D 0 - I - 0x011C78 04:9C68: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x011C79 04:9C69: 31        .byte $31   ; 
- D 0 - I - 0x011C7A 04:9C6A: 52        .byte $52   ; 
- D 0 - I - 0x011C7B 04:9C6B: D4        .byte $D4   ; 
- D 0 - I - 0x011C7C 04:9C6C: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011C7D 04:9C6D: C1        .byte $C1   ; 
- D 0 - I - 0x011C7E 04:9C6E: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x011C7F 04:9C6F: 31        .byte $31   ; 
- D 0 - I - 0x011C80 04:9C70: 52        .byte $52   ; 
- D 0 - I - 0x011C81 04:9C71: D5        .byte $D5   ; 
- D 0 - I - 0x011C82 04:9C72: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011C83 04:9C73: C1        .byte $C1   ; 
- D 0 - I - 0x011C84 04:9C74: EA        .byte con_se_cb_EA, $00   ; 
- D 0 - I - 0x011C86 04:9C76: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x011C87 04:9C77: 32        .byte $32   ; 
- D 0 - I - 0x011C88 04:9C78: D1        .byte $D1   ; 
- D 0 - I - 0x011C89 04:9C79: E2        .byte con_se_cb_E2, $B0   ; 
- D 0 - I - 0x011C8B 04:9C7B: E2        .byte con_se_cb_E2, $76   ; 
- D 0 - I - 0x011C8D 04:9C7D: EA        .byte con_se_cb_EA, $03   ; 
- D 0 - I - 0x011C8F 04:9C7F: E6        .byte con_se_cb_E6, $00   ; 
- D 0 - I - 0x011C91 04:9C81: E5        .byte con_se_cb_E5, $17   ; 
- D 0 - I - 0x011C93 04:9C83: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x011C94 04:9C84: 53        .byte $53   ; 
- D 0 - I - 0x011C95 04:9C85: 53        .byte $53   ; 
- D 0 - I - 0x011C96 04:9C86: 51        .byte $51   ; 
- D 0 - I - 0x011C97 04:9C87: 51        .byte $51   ; 
- D 0 - I - 0x011C98 04:9C88: D4        .byte $D4   ; 
- D 0 - I - 0x011C99 04:9C89: 51        .byte $51   ; 
- D 0 - I - 0x011C9A 04:9C8A: D1        .byte $D1   ; 
- D 0 - I - 0x011C9B 04:9C8B: 71        .byte $71   ; 
- D 0 - I - 0x011C9C 04:9C8C: 81        .byte $81   ; 
- D 0 - I - 0x011C9D 04:9C8D: 72        .byte $72   ; 
- D 0 - I - 0x011C9E 04:9C8E: 32        .byte $32   ; 
- D 0 - I - 0x011C9F 04:9C8F: C1        .byte $C1   ; 
- D 0 - I - 0x011CA0 04:9C90: D0        .byte $D0   ; 
- D 0 - I - 0x011CA1 04:9C91: FE        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x011CA2 04:9C92: 02        .byte $02   ; 
- D 0 - I - 0x011CA3 04:9C93: FD        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x011CA4 04:9C94: 40 9F     .word sub_FD_9F40
- D 0 - I - 0x011CA6 04:9C96: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x011CA7 04:9C97: A8        .byte $A8   ; 
- D 0 - I - 0x011CA8 04:9C98: E5        .byte con_se_cb_E5, $15   ; 
- D 0 - I - 0x011CAA 04:9C9A: A1        .byte $A1   ; 
- D 0 - I - 0x011CAB 04:9C9B: C1        .byte $C1   ; 
- D 0 - I - 0x011CAC 04:9C9C: E2        .byte con_se_cb_E2, $B1   ; 
- D 0 - I - 0x011CAE 04:9C9E: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011CAF 04:9C9F: 14        .byte $14   ; 
- D 0 - I - 0x011CB0 04:9CA0: FD        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x011CB1 04:9CA1: 5F 9F     .word sub_FD_9F5F
- D 0 - I - 0x011CB3 04:9CA3: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x011CB4 04:9CA4: C1        .byte $C1   ; 
- D 0 - I - 0x011CB5 04:9CA5: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011CB6 04:9CA6: 11        .byte $11   ; 
- D 0 - I - 0x011CB7 04:9CA7: E2        .byte con_se_cb_E2, $B1   ; 
- D 0 - I - 0x011CB9 04:9CA9: 34        .byte $34   ; 
- D 0 - I - 0x011CBA 04:9CAA: EA        .byte con_se_cb_EA, $03   ; 
- D 0 - I - 0x011CBC 04:9CAC: E2        .byte con_se_cb_E2, $BB   ; 
- D 0 - I - 0x011CBE 04:9CAE: D0        .byte $D0   ; 
- D 0 - I - 0x011CBF 04:9CAF: E2        .byte con_se_cb_E2, $70   ; 
- D 0 - I - 0x011CC1 04:9CB1: F0        .byte con_se_cb_F0   ; 
- D 0 - I - 0x011CC2 04:9CB2: 81        .byte $81   ; 
- D 0 - I - 0x011CC3 04:9CB3: 81        .byte $81   ; 
- D 0 - I - 0x011CC4 04:9CB4: 71        .byte $71   ; 
- D 0 - I - 0x011CC5 04:9CB5: 82        .byte $82   ; 
- D 0 - I - 0x011CC6 04:9CB6: 33        .byte $33   ; 
- D 0 - I - 0x011CC7 04:9CB7: 82        .byte $82   ; 
- D 0 - I - 0x011CC8 04:9CB8: C2        .byte $C2   ; 
- D 0 - I - 0x011CC9 04:9CB9: EA        .byte con_se_cb_EA, $00   ; 
- D 0 - I - 0x011CCB 04:9CBB: FD        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x011CCC 04:9CBC: 40 9F     .word sub_FD_9F40
- D 0 - I - 0x011CCE 04:9CBE: E7        .byte con_se_cb_E7, $56, $21   ; 
- D 0 - I - 0x011CD1 04:9CC1: 58        .byte $58   ; 
- D 0 - I - 0x011CD2 04:9CC2: E5        .byte con_se_cb_E5, $15   ; 
- D 0 - I - 0x011CD4 04:9CC4: 51        .byte $51   ; 
- D 0 - I - 0x011CD5 04:9CC5: 71        .byte $71   ; 
- D 0 - I - 0x011CD6 04:9CC6: E2        .byte con_se_cb_E2, $B1   ; 
- D 0 - I - 0x011CD8 04:9CC8: 84        .byte $84   ; 
- D 0 - I - 0x011CD9 04:9CC9: FD        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x011CDA 04:9CCA: 5F 9F     .word sub_FD_9F5F
- D 0 - I - 0x011CDC 04:9CCC: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011CDD 04:9CCD: 71        .byte $71   ; 
- D 0 - I - 0x011CDE 04:9CCE: 81        .byte $81   ; 
- D 0 - I - 0x011CDF 04:9CCF: E2        .byte con_se_cb_E2, $B1   ; 
- D 0 - I - 0x011CE1 04:9CD1: E5        .byte con_se_cb_E5, $11   ; 
- D 0 - I - 0x011CE3 04:9CD3: A8        .byte $A8   ; 
- D 0 - I - 0x011CE4 04:9CD4: C7        .byte $C7   ; 
- D 0 - I - 0x011CE5 04:9CD5: D2        .byte $D2   ; 
- D 0 - I - 0x011CE6 04:9CD6: E2        .byte con_se_cb_E2, $00   ; 
- D 0 - I - 0x011CE8 04:9CD8: E1        .byte con_se_cb_E1, $02   ; 
- D 0 - I - 0x011CEA 04:9CDA: A1        .byte $A1   ; 
- D 0 - I - 0x011CEB 04:9CDB: 81        .byte $81   ; 
- D 0 - I - 0x011CEC 04:9CDC: 71        .byte $71   ; 
- D 0 - I - 0x011CED 04:9CDD: FD        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x011CEE 04:9CDE: 73 9F     .word sub_FD_9F73
- D 0 - I - 0x011CF0 04:9CE0: 32        .byte $32   ; 
- D 0 - I - 0x011CF1 04:9CE1: 32        .byte $32   ; 
- D 0 - I - 0x011CF2 04:9CE2: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x011CF3 04:9CE3: 06        .byte $06   ; 
- D 0 - I - 0x011CF4 04:9CE4: 72        .byte $72   ; 
- D 0 - I - 0x011CF5 04:9CE5: 80        .byte $80   ; 
- D 0 - I - 0x011CF6 04:9CE6: 00        .byte $00   ; 
- D 0 - I - 0x011CF7 04:9CE7: EA        .byte con_se_cb_EA, $03   ; 
- D 0 - I - 0x011CF9 04:9CE9: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x011CFA 04:9CEA: 12        .byte $12   ; 
- D 0 - I - 0x011CFB 04:9CEB: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011CFC 04:9CEC: C1        .byte $C1   ; 
- D 0 - I - 0x011CFD 04:9CED: A1        .byte $A1   ; 
- D 0 - I - 0x011CFE 04:9CEE: C1        .byte $C1   ; 
- D 0 - I - 0x011CFF 04:9CEF: 81        .byte $81   ; 
- D 0 - I - 0x011D00 04:9CF0: 51        .byte $51   ; 
- D 0 - I - 0x011D01 04:9CF1: A1        .byte $A1   ; 
- D 0 - I - 0x011D02 04:9CF2: 71        .byte $71   ; 
- D 0 - I - 0x011D03 04:9CF3: 31        .byte $31   ; 
- D 0 - I - 0x011D04 04:9CF4: 81        .byte $81   ; 
- D 0 - I - 0x011D05 04:9CF5: EA        .byte con_se_cb_EA, $00   ; 
- D 0 - I - 0x011D07 04:9CF7: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x011D08 04:9CF8: 06        .byte $06   ; 
- D 0 - I - 0x011D09 04:9CF9: 77        .byte $77   ; 
- D 0 - I - 0x011D0A 04:9CFA: 83        .byte $83   ; 
- D 0 - I - 0x011D0B 04:9CFB: 15        .byte $15   ; 
- D 0 - I - 0x011D0C 04:9CFC: F0        .byte con_se_cb_F0   ; 
- D 0 - I - 0x011D0D 04:9CFD: 31        .byte $31   ; 
- D 0 - I - 0x011D0E 04:9CFE: 32        .byte $32   ; 
- D 0 - I - 0x011D0F 04:9CFF: 31        .byte $31   ; 
- D 0 - I - 0x011D10 04:9D00: FD        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x011D11 04:9D01: 81 9F     .word sub_FD_9F81
- D 0 - I - 0x011D13 04:9D03: FD        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x011D14 04:9D04: A3 9F     .word sub_FD_9FA3
- D 0 - I - 0x011D16 04:9D06: 31        .byte $31   ; 
- D 0 - I - 0x011D17 04:9D07: 41        .byte $41   ; 
- D 0 - I - 0x011D18 04:9D08: 51        .byte $51   ; 
- D 0 - I - 0x011D19 04:9D09: E1        .byte con_se_cb_E1, $06   ; 
- D 0 - I - 0x011D1B 04:9D0B: 62        .byte $62   ; 
- D 0 - I - 0x011D1C 04:9D0C: 83        .byte $83   ; 
- D 0 - I - 0x011D1D 04:9D0D: A2        .byte $A2   ; 
- D 0 - I - 0x011D1E 04:9D0E: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x011D1F 04:9D0F: 13        .byte $13   ; 
- D 0 - I - 0x011D20 04:9D10: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011D21 04:9D11: C3        .byte $C3   ; 
- D 0 - I - 0x011D22 04:9D12: 81        .byte $81   ; 
- D 0 - I - 0x011D23 04:9D13: A1        .byte $A1   ; 
- D 0 - I - 0x011D24 04:9D14: B3        .byte $B3   ; 
- D 0 - I - 0x011D25 04:9D15: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x011D26 04:9D16: 13        .byte $13   ; 
- D 0 - I - 0x011D27 04:9D17: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011D28 04:9D18: B2        .byte $B2   ; 
- D 0 - I - 0x011D29 04:9D19: A3        .byte $A3   ; 
- D 0 - I - 0x011D2A 04:9D1A: 83        .byte $83   ; 
- D 0 - I - 0x011D2B 04:9D1B: 62        .byte $62   ; 
- D 0 - I - 0x011D2C 04:9D1C: E7        .byte con_se_cb_E7, $00   ; 
- D 0 - I - 0x011D2E 04:9D1E: E6        .byte con_se_cb_E6, $00   ; 
- D 0 - I - 0x011D30 04:9D20: FD        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x011D31 04:9D21: 73 9F     .word sub_FD_9F73
- D 0 - I - 0x011D33 04:9D23: 31        .byte $31   ; 
- D 0 - I - 0x011D34 04:9D24: 11        .byte $11   ; 
- D 0 - I - 0x011D35 04:9D25: 32        .byte $32   ; 
- D 0 - I - 0x011D36 04:9D26: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x011D37 04:9D27: 06        .byte $06   ; 
- D 0 - I - 0x011D38 04:9D28: 72        .byte $72   ; 
- D 0 - I - 0x011D39 04:9D29: 80        .byte $80   ; 
- D 0 - I - 0x011D3A 04:9D2A: 00        .byte $00   ; 
- D 0 - I - 0x011D3B 04:9D2B: EA        .byte con_se_cb_EA, $03   ; 
- D 0 - I - 0x011D3D 04:9D2D: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011D3E 04:9D2E: C2        .byte $C2   ; 
- D 0 - I - 0x011D3F 04:9D2F: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x011D40 04:9D30: 11        .byte $11   ; 
- D 0 - I - 0x011D41 04:9D31: 81        .byte $81   ; 
- D 0 - I - 0x011D42 04:9D32: 71        .byte $71   ; 
- D 0 - I - 0x011D43 04:9D33: 31        .byte $31   ; 
- D 0 - I - 0x011D44 04:9D34: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011D45 04:9D35: A1        .byte $A1   ; 
- D 0 - I - 0x011D46 04:9D36: C1        .byte $C1   ; 
- D 0 - I - 0x011D47 04:9D37: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x011D48 04:9D38: 11        .byte $11   ; 
- D 0 - I - 0x011D49 04:9D39: 31        .byte $31   ; 
- D 0 - I - 0x011D4A 04:9D3A: 51        .byte $51   ; 
- D 0 - I - 0x011D4B 04:9D3B: EA        .byte con_se_cb_EA, $00   ; 
- D 0 - I - 0x011D4D 04:9D3D: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x011D4E 04:9D3E: 06        .byte $06   ; 
- D 0 - I - 0x011D4F 04:9D3F: 77        .byte $77   ; 
- D 0 - I - 0x011D50 04:9D40: 83        .byte $83   ; 
- D 0 - I - 0x011D51 04:9D41: 15        .byte $15   ; 
- D 0 - I - 0x011D52 04:9D42: F0        .byte con_se_cb_F0   ; 
- D 0 - I - 0x011D53 04:9D43: 31        .byte $31   ; 
- D 0 - I - 0x011D54 04:9D44: 32        .byte $32   ; 
- D 0 - I - 0x011D55 04:9D45: 31        .byte $31   ; 
- D 0 - I - 0x011D56 04:9D46: E8        .byte con_se_cb_E8, $0C   ; 
- D 0 - I - 0x011D58 04:9D48: FD        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x011D59 04:9D49: 81 9F     .word sub_FD_9F81
- D 0 - I - 0x011D5B 04:9D4B: E8        .byte con_se_cb_E8, $00   ; 
- D 0 - I - 0x011D5D 04:9D4D: FD        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x011D5E 04:9D4E: A3 9F     .word sub_FD_9FA3
- D 0 - I - 0x011D60 04:9D50: A1        .byte $A1   ; 
- D 0 - I - 0x011D61 04:9D51: B1        .byte $B1   ; 
- D 0 - I - 0x011D62 04:9D52: E1        .byte con_se_cb_E1, $04   ; 
- D 0 - I - 0x011D64 04:9D54: C3        .byte $C3   ; 
- D 0 - I - 0x011D65 04:9D55: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x011D66 04:9D56: 14        .byte $14   ; 
- D 0 - I - 0x011D67 04:9D57: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011D68 04:9D58: C4        .byte $C4   ; 
- D 0 - I - 0x011D69 04:9D59: A4        .byte $A4   ; 
- D 0 - I - 0x011D6A 04:9D5A: C4        .byte $C4   ; 
- D 0 - I - 0x011D6B 04:9D5B: A4        .byte $A4   ; 
- D 0 - I - 0x011D6C 04:9D5C: 84        .byte $84   ; 
- D 0 - I - 0x011D6D 04:9D5D: 74        .byte $74   ; 
- D 0 - I - 0x011D6E 04:9D5E: 84        .byte $84   ; 
- D 0 - I - 0x011D6F 04:9D5F: E1        .byte con_se_cb_E1, $06   ; 
- D 0 - I - 0x011D71 04:9D61: EA        .byte con_se_cb_EA, $00   ; 
- D 0 - I - 0x011D73 04:9D63: E7        .byte con_se_cb_E7, $56, $22   ; 
- D 0 - I - 0x011D76 04:9D66: A4        .byte $A4   ; 
- D 0 - I - 0x011D77 04:9D67: 74        .byte $74   ; 
- D 0 - I - 0x011D78 04:9D68: E6        .byte con_se_cb_E6, $00   ; 
- D 0 - I - 0x011D7A 04:9D6A: FE        .byte con_se_cb_jmp, $FF   ; 
- D 0 - I - 0x011D7C 04:9D6C: 4E 9C     .word loc_FE_9C4E



_off000_9D6E_84_02:
loc_FE_9D6E:
- D 0 - I - 0x011D7E 04:9D6E: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x011D7F 04:9D6F: 06        .byte $06   ; 
- D 0 - I - 0x011D80 04:9D70: 05        .byte $05   ; 
- D 0 - I - 0x011D81 04:9D71: FB        .byte con_se_cb_FB   ; 
- D 0 - I - 0x011D82 04:9D72: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x011D83 04:9D73: A1        .byte $A1   ; 
- D 0 - I - 0x011D84 04:9D74: 51        .byte $51   ; 
- D 0 - I - 0x011D85 04:9D75: 81        .byte $81   ; 
- D 0 - I - 0x011D86 04:9D76: A2        .byte $A2   ; 
- D 0 - I - 0x011D87 04:9D77: 09        .byte $09   ; 
- D 0 - I - 0x011D88 04:9D78: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x011D89 04:9D79: 01        .byte $01   ; 
- D 0 - I - 0x011D8A 04:9D7A: 00        .byte $00   ; 
- D 0 - I - 0x011D8B 04:9D7B: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x011D8C 04:9D7C: A1        .byte $A1   ; 
- D 0 - I - 0x011D8D 04:9D7D: 91        .byte $91   ; 
- D 0 - I - 0x011D8E 04:9D7E: 81        .byte $81   ; 
- D 0 - I - 0x011D8F 04:9D7F: 71        .byte $71   ; 
- D 0 - I - 0x011D90 04:9D80: 61        .byte $61   ; 
- D 0 - I - 0x011D91 04:9D81: 51        .byte $51   ; 
- D 0 - I - 0x011D92 04:9D82: 41        .byte $41   ; 
- D 0 - I - 0x011D93 04:9D83: 31        .byte $31   ; 
- D 0 - I - 0x011D94 04:9D84: 21        .byte $21   ; 
- D 0 - I - 0x011D95 04:9D85: 11        .byte $11   ; 
- D 0 - I - 0x011D96 04:9D86: F0        .byte con_se_cb_F0   ; 
- D 0 - I - 0x011D97 04:9D87: C1        .byte $C1   ; 
- D 0 - I - 0x011D98 04:9D88: B1        .byte $B1   ; 
- D 0 - I - 0x011D99 04:9D89: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x011D9A 04:9D8A: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x011D9B 04:9D8B: 06        .byte $06   ; 
- D 0 - I - 0x011D9C 04:9D8C: 05        .byte $05   ; 
- D 0 - I - 0x011D9D 04:9D8D: A3        .byte $A3   ; 
- D 0 - I - 0x011D9E 04:9D8E: A3        .byte $A3   ; 
- D 0 - I - 0x011D9F 04:9D8F: A1        .byte $A1   ; 
- D 0 - I - 0x011DA0 04:9D90: A2        .byte $A2   ; 
- D 0 - I - 0x011DA1 04:9D91: C1        .byte $C1   ; 
- D 0 - I - 0x011DA2 04:9D92: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011DA3 04:9D93: 11        .byte $11   ; 
- D 0 - I - 0x011DA4 04:9D94: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x011DA5 04:9D95: C2        .byte $C2   ; 
- D 0 - I - 0x011DA6 04:9D96: 82        .byte $82   ; 
- D 0 - I - 0x011DA7 04:9D97: 51        .byte $51   ; 
- D 0 - I - 0x011DA8 04:9D98: FE        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x011DA9 04:9D99: 02        .byte $02   ; 
- D 0 - I - 0x011DAA 04:9D9A: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x011DAB 04:9D9B: FB        .byte con_se_cb_FB   ; 
- D 0 - I - 0x011DAC 04:9D9C: A1        .byte $A1   ; 
- D 0 - I - 0x011DAD 04:9D9D: A2        .byte $A2   ; 
- D 0 - I - 0x011DAE 04:9D9E: 01        .byte $01   ; 
- D 0 - I - 0x011DAF 04:9D9F: A1        .byte $A1   ; 
- D 0 - I - 0x011DB0 04:9DA0: A1        .byte $A1   ; 
- D 0 - I - 0x011DB1 04:9DA1: 81        .byte $81   ; 
- D 0 - I - 0x011DB2 04:9DA2: A2        .byte $A2   ; 
- D 0 - I - 0x011DB3 04:9DA3: 53        .byte $53   ; 
- D 0 - I - 0x011DB4 04:9DA4: 82        .byte $82   ; 
- D 0 - I - 0x011DB5 04:9DA5: A2        .byte $A2   ; 
- D 0 - I - 0x011DB6 04:9DA6: 71        .byte $71   ; 
- D 0 - I - 0x011DB7 04:9DA7: 72        .byte $72   ; 
- D 0 - I - 0x011DB8 04:9DA8: 01        .byte $01   ; 
- D 0 - I - 0x011DB9 04:9DA9: 71        .byte $71   ; 
- D 0 - I - 0x011DBA 04:9DAA: 71        .byte $71   ; 
- D 0 - I - 0x011DBB 04:9DAB: 61        .byte $61   ; 
- D 0 - I - 0x011DBC 04:9DAC: 72        .byte $72   ; 
- D 0 - I - 0x011DBD 04:9DAD: 13        .byte $13   ; 
- D 0 - I - 0x011DBE 04:9DAE: 52        .byte $52   ; 
- D 0 - I - 0x011DBF 04:9DAF: 72        .byte $72   ; 
- D 0 - I - 0x011DC0 04:9DB0: 61        .byte $61   ; 
- D 0 - I - 0x011DC1 04:9DB1: 62        .byte $62   ; 
- D 0 - I - 0x011DC2 04:9DB2: 01        .byte $01   ; 
- D 0 - I - 0x011DC3 04:9DB3: 61        .byte $61   ; 
- D 0 - I - 0x011DC4 04:9DB4: 61        .byte $61   ; 
- D 0 - I - 0x011DC5 04:9DB5: 51        .byte $51   ; 
- D 0 - I - 0x011DC6 04:9DB6: 62        .byte $62   ; 
- D 0 - I - 0x011DC7 04:9DB7: 13        .byte $13   ; 
- D 0 - I - 0x011DC8 04:9DB8: 52        .byte $52   ; 
- D 0 - I - 0x011DC9 04:9DB9: 62        .byte $62   ; 
- D 0 - I - 0x011DCA 04:9DBA: 81        .byte $81   ; 
- D 0 - I - 0x011DCB 04:9DBB: 82        .byte $82   ; 
- D 0 - I - 0x011DCC 04:9DBC: 01        .byte $01   ; 
- D 0 - I - 0x011DCD 04:9DBD: 81        .byte $81   ; 
- D 0 - I - 0x011DCE 04:9DBE: 81        .byte $81   ; 
- D 0 - I - 0x011DCF 04:9DBF: 71        .byte $71   ; 
- D 0 - I - 0x011DD0 04:9DC0: 82        .byte $82   ; 
- D 0 - I - 0x011DD1 04:9DC1: 33        .byte $33   ; 
- D 0 - I - 0x011DD2 04:9DC2: 82        .byte $82   ; 
- D 0 - I - 0x011DD3 04:9DC3: C2        .byte $C2   ; 
- D 0 - I - 0x011DD4 04:9DC4: FE        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x011DD5 04:9DC5: 02        .byte $02   ; 
- D 0 - I - 0x011DD6 04:9DC6: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x011DD7 04:9DC7: 06        .byte $06   ; 
- D 0 - I - 0x011DD8 04:9DC8: 02        .byte $02   ; 
- D 0 - I - 0x011DD9 04:9DC9: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x011DDA 04:9DCA: 31        .byte $31   ; 
- D 0 - I - 0x011DDB 04:9DCB: 32        .byte $32   ; 
- D 0 - I - 0x011DDC 04:9DCC: 32        .byte $32   ; 
- D 0 - I - 0x011DDD 04:9DCD: F0        .byte con_se_cb_F0   ; 
- D 0 - I - 0x011DDE 04:9DCE: C3        .byte $C3   ; 
- D 0 - I - 0x011DDF 04:9DCF: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x011DE0 04:9DD0: 13        .byte $13   ; 
- D 0 - I - 0x011DE1 04:9DD1: 33        .byte $33   ; 
- D 0 - I - 0x011DE2 04:9DD2: 52        .byte $52   ; 
- D 0 - I - 0x011DE3 04:9DD3: 31        .byte $31   ; 
- D 0 - I - 0x011DE4 04:9DD4: 32        .byte $32   ; 
- D 0 - I - 0x011DE5 04:9DD5: 32        .byte $32   ; 
- D 0 - I - 0x011DE6 04:9DD6: 53        .byte $53   ; 
- D 0 - I - 0x011DE7 04:9DD7: 63        .byte $63   ; 
- D 0 - I - 0x011DE8 04:9DD8: 83        .byte $83   ; 
- D 0 - I - 0x011DE9 04:9DD9: A2        .byte $A2   ; 
- D 0 - I - 0x011DEA 04:9DDA: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x011DEB 04:9DDB: 06        .byte $06   ; 
- D 0 - I - 0x011DEC 04:9DDC: 05        .byte $05   ; 
- D 0 - I - 0x011DED 04:9DDD: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x011DEE 04:9DDE: A2        .byte $A2   ; 
- D 0 - I - 0x011DEF 04:9DDF: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011DF0 04:9DE0: A1        .byte $A1   ; 
- D 0 - I - 0x011DF1 04:9DE1: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x011DF2 04:9DE2: A2        .byte $A2   ; 
- D 0 - I - 0x011DF3 04:9DE3: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011DF4 04:9DE4: A1        .byte $A1   ; 
- D 0 - I - 0x011DF5 04:9DE5: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x011DF6 04:9DE6: A1        .byte $A1   ; 
- D 0 - I - 0x011DF7 04:9DE7: A1        .byte $A1   ; 
- D 0 - I - 0x011DF8 04:9DE8: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x011DF9 04:9DE9: 92        .byte $92   ; 
- D 0 - I - 0x011DFA 04:9DEA: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011DFB 04:9DEB: 91        .byte $91   ; 
- D 0 - I - 0x011DFC 04:9DEC: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x011DFD 04:9DED: 92        .byte $92   ; 
- D 0 - I - 0x011DFE 04:9DEE: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011DFF 04:9DEF: 91        .byte $91   ; 
- D 0 - I - 0x011E00 04:9DF0: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x011E01 04:9DF1: A1        .byte $A1   ; 
- D 0 - I - 0x011E02 04:9DF2: A1        .byte $A1   ; 
- D 0 - I - 0x011E03 04:9DF3: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x011E04 04:9DF4: 82        .byte $82   ; 
- D 0 - I - 0x011E05 04:9DF5: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011E06 04:9DF6: 81        .byte $81   ; 
- D 0 - I - 0x011E07 04:9DF7: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x011E08 04:9DF8: 82        .byte $82   ; 
- D 0 - I - 0x011E09 04:9DF9: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011E0A 04:9DFA: 81        .byte $81   ; 
- D 0 - I - 0x011E0B 04:9DFB: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x011E0C 04:9DFC: 81        .byte $81   ; 
- D 0 - I - 0x011E0D 04:9DFD: 81        .byte $81   ; 
- D 0 - I - 0x011E0E 04:9DFE: 72        .byte $72   ; 
- D 0 - I - 0x011E0F 04:9DFF: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011E10 04:9E00: 71        .byte $71   ; 
- D 0 - I - 0x011E11 04:9E01: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x011E12 04:9E02: 72        .byte $72   ; 
- D 0 - I - 0x011E13 04:9E03: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011E14 04:9E04: 71        .byte $71   ; 
- D 0 - I - 0x011E15 04:9E05: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x011E16 04:9E06: 31        .byte $31   ; 
- D 0 - I - 0x011E17 04:9E07: 51        .byte $51   ; 
- D 0 - I - 0x011E18 04:9E08: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x011E19 04:9E09: 06        .byte $06   ; 
- D 0 - I - 0x011E1A 04:9E0A: 02        .byte $02   ; 
- D 0 - I - 0x011E1B 04:9E0B: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x011E1C 04:9E0C: 31        .byte $31   ; 
- D 0 - I - 0x011E1D 04:9E0D: 31        .byte $31   ; 
- D 0 - I - 0x011E1E 04:9E0E: 11        .byte $11   ; 
- D 0 - I - 0x011E1F 04:9E0F: 32        .byte $32   ; 
- D 0 - I - 0x011E20 04:9E10: F0        .byte con_se_cb_F0   ; 
- D 0 - I - 0x011E21 04:9E11: C3        .byte $C3   ; 
- D 0 - I - 0x011E22 04:9E12: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x011E23 04:9E13: 12        .byte $12   ; 
- D 0 - I - 0x011E24 04:9E14: 01        .byte $01   ; 
- D 0 - I - 0x011E25 04:9E15: 33        .byte $33   ; 
- D 0 - I - 0x011E26 04:9E16: 52        .byte $52   ; 
- D 0 - I - 0x011E27 04:9E17: 31        .byte $31   ; 
- D 0 - I - 0x011E28 04:9E18: 32        .byte $32   ; 
- D 0 - I - 0x011E29 04:9E19: 32        .byte $32   ; 
- D 0 - I - 0x011E2A 04:9E1A: 53        .byte $53   ; 
- D 0 - I - 0x011E2B 04:9E1B: 63        .byte $63   ; 
- D 0 - I - 0x011E2C 04:9E1C: 83        .byte $83   ; 
- D 0 - I - 0x011E2D 04:9E1D: A2        .byte $A2   ; 
- D 0 - I - 0x011E2E 04:9E1E: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x011E2F 04:9E1F: 08        .byte $08   ; 
- D 0 - I - 0x011E30 04:9E20: 05        .byte $05   ; 
- D 0 - I - 0x011E31 04:9E21: FB        .byte con_se_cb_FB   ; 
- D 0 - I - 0x011E32 04:9E22: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x011E33 04:9E23: 51        .byte $51   ; 
- D 0 - I - 0x011E34 04:9E24: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011E35 04:9E25: 51        .byte $51   ; 
- D 0 - I - 0x011E36 04:9E26: FE        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x011E37 04:9E27: 03        .byte $03   ; 
- D 0 - I - 0x011E38 04:9E28: FB        .byte con_se_cb_FB   ; 
- D 0 - I - 0x011E39 04:9E29: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x011E3A 04:9E2A: 31        .byte $31   ; 
- D 0 - I - 0x011E3B 04:9E2B: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011E3C 04:9E2C: 31        .byte $31   ; 
- D 0 - I - 0x011E3D 04:9E2D: FE        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x011E3E 04:9E2E: 03        .byte $03   ; 
- D 0 - I - 0x011E3F 04:9E2F: FB        .byte con_se_cb_FB   ; 
- D 0 - I - 0x011E40 04:9E30: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x011E41 04:9E31: 11        .byte $11   ; 
- D 0 - I - 0x011E42 04:9E32: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011E43 04:9E33: 11        .byte $11   ; 
- D 0 - I - 0x011E44 04:9E34: FE        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x011E45 04:9E35: 03        .byte $03   ; 
- D 0 - I - 0x011E46 04:9E36: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x011E47 04:9E37: 01        .byte $01   ; 
- D 0 - I - 0x011E48 04:9E38: 00        .byte $00   ; 
- D 0 - I - 0x011E49 04:9E39: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x011E4A 04:9E3A: 61        .byte $61   ; 
- D 0 - I - 0x011E4B 04:9E3B: 71        .byte $71   ; 
- D 0 - I - 0x011E4C 04:9E3C: 81        .byte $81   ; 
- D 0 - I - 0x011E4D 04:9E3D: 91        .byte $91   ; 
- D 0 - I - 0x011E4E 04:9E3E: A1        .byte $A1   ; 
- D 0 - I - 0x011E4F 04:9E3F: B1        .byte $B1   ; 
- D 0 - I - 0x011E50 04:9E40: E1        .byte con_se_cb_E1, $06   ; 
- D 0 - I - 0x011E52 04:9E42: C3        .byte $C3   ; 
- D 0 - I - 0x011E53 04:9E43: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011E54 04:9E44: 34        .byte $34   ; 
- D 0 - I - 0x011E55 04:9E45: FE        .byte con_se_cb_jmp, $FF   ; 
- D 0 - I - 0x011E57 04:9E47: 6E 9D     .word loc_FE_9D6E



_off000_9E49_84_03:
loc_FE_9E49:
- D 0 - I - 0x011E59 04:9E49: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x011E5A 04:9E4A: 01        .byte $01   ; 
- D 0 - I - 0x011E5B 04:9E4B: 66        .byte $66   ; 
- D 0 - I - 0x011E5C 04:9E4C: 66        .byte $66   ; 
- D 0 - I - 0x011E5D 04:9E4D: 66        .byte $66   ; 
- D 0 - I - 0x011E5E 04:9E4E: 66        .byte $66   ; 
- D 0 - I - 0x011E5F 04:9E4F: 16        .byte $16   ; 
- D 0 - I - 0x011E60 04:9E50: 16        .byte $16   ; 
- D 0 - I - 0x011E61 04:9E51: 3C        .byte $3C   ; 
- D 0 - I - 0x011E62 04:9E52: 16        .byte $16   ; 
- D 0 - I - 0x011E63 04:9E53: 16        .byte $16   ; 
- D 0 - I - 0x011E64 04:9E54: 3C        .byte $3C   ; 
- D 0 - I - 0x011E65 04:9E55: 14        .byte $14   ; 
- D 0 - I - 0x011E66 04:9E56: 14        .byte $14   ; 
- D 0 - I - 0x011E67 04:9E57: 14        .byte $14   ; 
- D 0 - I - 0x011E68 04:9E58: 3C        .byte $3C   ; 
- D 0 - I - 0x011E69 04:9E59: C6        .byte $C6   ; 
- D 0 - I - 0x011E6A 04:9E5A: 16        .byte $16   ; 
- D 0 - I - 0x011E6B 04:9E5B: 16        .byte $16   ; 
- D 0 - I - 0x011E6C 04:9E5C: C6        .byte $C6   ; 
- D 0 - I - 0x011E6D 04:9E5D: 16        .byte $16   ; 
- D 0 - I - 0x011E6E 04:9E5E: 16        .byte $16   ; 
- D 0 - I - 0x011E6F 04:9E5F: C6        .byte $C6   ; 
- D 0 - I - 0x011E70 04:9E60: C6        .byte $C6   ; 
- D 0 - I - 0x011E71 04:9E61: 16        .byte $16   ; 
- D 0 - I - 0x011E72 04:9E62: 16        .byte $16   ; 
- D 0 - I - 0x011E73 04:9E63: 3C        .byte $3C   ; 
- D 0 - I - 0x011E74 04:9E64: 14        .byte $14   ; 
- D 0 - I - 0x011E75 04:9E65: 14        .byte $14   ; 
- D 0 - I - 0x011E76 04:9E66: 14        .byte $14   ; 
- D 0 - I - 0x011E77 04:9E67: 3C        .byte $3C   ; 
- D 0 - I - 0x011E78 04:9E68: B6        .byte $B6   ; 
- D 0 - I - 0x011E79 04:9E69: B6        .byte $B6   ; 
- D 0 - I - 0x011E7A 04:9E6A: B6        .byte $B6   ; 
- D 0 - I - 0x011E7B 04:9E6B: B6        .byte $B6   ; 
- D 0 - I - 0x011E7C 04:9E6C: 16        .byte $16   ; 
- D 0 - I - 0x011E7D 04:9E6D: 16        .byte $16   ; 
- D 0 - I - 0x011E7E 04:9E6E: 3C        .byte $3C   ; 
- D 0 - I - 0x011E7F 04:9E6F: 16        .byte $16   ; 
- D 0 - I - 0x011E80 04:9E70: 16        .byte $16   ; 
- D 0 - I - 0x011E81 04:9E71: 3C        .byte $3C   ; 
- D 0 - I - 0x011E82 04:9E72: 14        .byte $14   ; 
- D 0 - I - 0x011E83 04:9E73: 14        .byte $14   ; 
- D 0 - I - 0x011E84 04:9E74: 14        .byte $14   ; 
- D 0 - I - 0x011E85 04:9E75: 3C        .byte $3C   ; 
- D 0 - I - 0x011E86 04:9E76: C6        .byte $C6   ; 
- D 0 - I - 0x011E87 04:9E77: 16        .byte $16   ; 
- D 0 - I - 0x011E88 04:9E78: 16        .byte $16   ; 
- D 0 - I - 0x011E89 04:9E79: C6        .byte $C6   ; 
- D 0 - I - 0x011E8A 04:9E7A: 16        .byte $16   ; 
- D 0 - I - 0x011E8B 04:9E7B: 16        .byte $16   ; 
- D 0 - I - 0x011E8C 04:9E7C: C6        .byte $C6   ; 
- D 0 - I - 0x011E8D 04:9E7D: C6        .byte $C6   ; 
- D 0 - I - 0x011E8E 04:9E7E: 16        .byte $16   ; 
- D 0 - I - 0x011E8F 04:9E7F: 16        .byte $16   ; 
- D 0 - I - 0x011E90 04:9E80: 3C        .byte $3C   ; 
- D 0 - I - 0x011E91 04:9E81: B6        .byte $B6   ; 
- D 0 - I - 0x011E92 04:9E82: 96        .byte $96   ; 
- D 0 - I - 0x011E93 04:9E83: 86        .byte $86   ; 
- D 0 - I - 0x011E94 04:9E84: 76        .byte $76   ; 
- D 0 - I - 0x011E95 04:9E85: FC        .byte con_se_cb_FC   ; 
- D 0 - I - 0x011E96 04:9E86: FB        .byte con_se_cb_FB   ; 
- D 0 - I - 0x011E97 04:9E87: C6        .byte $C6   ; 
- D 0 - I - 0x011E98 04:9E88: C6        .byte $C6   ; 
- D 0 - I - 0x011E99 04:9E89: 16        .byte $16   ; 
- D 0 - I - 0x011E9A 04:9E8A: 16        .byte $16   ; 
- D 0 - I - 0x011E9B 04:9E8B: B6        .byte $B6   ; 
- D 0 - I - 0x011E9C 04:9E8C: 16        .byte $16   ; 
- D 0 - I - 0x011E9D 04:9E8D: 16        .byte $16   ; 
- D 0 - I - 0x011E9E 04:9E8E: 16        .byte $16   ; 
- D 0 - I - 0x011E9F 04:9E8F: C6        .byte $C6   ; 
- D 0 - I - 0x011EA0 04:9E90: 16        .byte $16   ; 
- D 0 - I - 0x011EA1 04:9E91: 16        .byte $16   ; 
- D 0 - I - 0x011EA2 04:9E92: B6        .byte $B6   ; 
- D 0 - I - 0x011EA3 04:9E93: 16        .byte $16   ; 
- D 0 - I - 0x011EA4 04:9E94: C6        .byte $C6   ; 
- D 0 - I - 0x011EA5 04:9E95: C6        .byte $C6   ; 
- D 0 - I - 0x011EA6 04:9E96: 16        .byte $16   ; 
- D 0 - I - 0x011EA7 04:9E97: FE        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x011EA8 04:9E98: 03        .byte $03   ; 
- D 0 - I - 0x011EA9 04:9E99: C6        .byte $C6   ; 
- D 0 - I - 0x011EAA 04:9E9A: C6        .byte $C6   ; 
- D 0 - I - 0x011EAB 04:9E9B: 16        .byte $16   ; 
- D 0 - I - 0x011EAC 04:9E9C: 16        .byte $16   ; 
- D 0 - I - 0x011EAD 04:9E9D: B6        .byte $B6   ; 
- D 0 - I - 0x011EAE 04:9E9E: 16        .byte $16   ; 
- D 0 - I - 0x011EAF 04:9E9F: 36        .byte $36   ; 
- D 0 - I - 0x011EB0 04:9EA0: 16        .byte $16   ; 
- D 0 - I - 0x011EB1 04:9EA1: C6        .byte $C6   ; 
- D 0 - I - 0x011EB2 04:9EA2: 16        .byte $16   ; 
- D 0 - I - 0x011EB3 04:9EA3: 16        .byte $16   ; 
- D 0 - I - 0x011EB4 04:9EA4: B6        .byte $B6   ; 
- D 0 - I - 0x011EB5 04:9EA5: 16        .byte $16   ; 
- D 0 - I - 0x011EB6 04:9EA6: 86        .byte $86   ; 
- D 0 - I - 0x011EB7 04:9EA7: 76        .byte $76   ; 
- D 0 - I - 0x011EB8 04:9EA8: B6        .byte $B6   ; 
- D 0 - I - 0x011EB9 04:9EA9: FE        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x011EBA 04:9EAA: 02        .byte $02   ; 
- D 0 - I - 0x011EBB 04:9EAB: FB        .byte con_se_cb_FB   ; 
- D 0 - I - 0x011EBC 04:9EAC: 56        .byte $56   ; 
- D 0 - I - 0x011EBD 04:9EAD: 5C        .byte $5C   ; 
- D 0 - I - 0x011EBE 04:9EAE: 5C        .byte $5C   ; 
- D 0 - I - 0x011EBF 04:9EAF: 16        .byte $16   ; 
- D 0 - I - 0x011EC0 04:9EB0: 16        .byte $16   ; 
- D 0 - I - 0x011EC1 04:9EB1: 16        .byte $16   ; 
- D 0 - I - 0x011EC2 04:9EB2: C6        .byte $C6   ; 
- D 0 - I - 0x011EC3 04:9EB3: 16        .byte $16   ; 
- D 0 - I - 0x011EC4 04:9EB4: 16        .byte $16   ; 
- D 0 - I - 0x011EC5 04:9EB5: B6        .byte $B6   ; 
- D 0 - I - 0x011EC6 04:9EB6: 16        .byte $16   ; 
- D 0 - I - 0x011EC7 04:9EB7: 16        .byte $16   ; 
- D 0 - I - 0x011EC8 04:9EB8: B6        .byte $B6   ; 
- D 0 - I - 0x011EC9 04:9EB9: B6        .byte $B6   ; 
- D 0 - I - 0x011ECA 04:9EBA: FE        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x011ECB 04:9EBB: 02        .byte $02   ; 
- D 0 - I - 0x011ECC 04:9EBC: C6        .byte $C6   ; 
- D 0 - I - 0x011ECD 04:9EBD: 96        .byte $96   ; 
- D 0 - I - 0x011ECE 04:9EBE: 96        .byte $96   ; 
- D 0 - I - 0x011ECF 04:9EBF: B6        .byte $B6   ; 
- D 0 - I - 0x011ED0 04:9EC0: 96        .byte $96   ; 
- D 0 - I - 0x011ED1 04:9EC1: 96        .byte $96   ; 
- D 0 - I - 0x011ED2 04:9EC2: B6        .byte $B6   ; 
- D 0 - I - 0x011ED3 04:9EC3: 96        .byte $96   ; 
- D 0 - I - 0x011ED4 04:9EC4: C6        .byte $C6   ; 
- D 0 - I - 0x011ED5 04:9EC5: 86        .byte $86   ; 
- D 0 - I - 0x011ED6 04:9EC6: 86        .byte $86   ; 
- D 0 - I - 0x011ED7 04:9EC7: B6        .byte $B6   ; 
- D 0 - I - 0x011ED8 04:9EC8: 86        .byte $86   ; 
- D 0 - I - 0x011ED9 04:9EC9: 86        .byte $86   ; 
- D 0 - I - 0x011EDA 04:9ECA: B6        .byte $B6   ; 
- D 0 - I - 0x011EDB 04:9ECB: 86        .byte $86   ; 
- D 0 - I - 0x011EDC 04:9ECC: C6        .byte $C6   ; 
- D 0 - I - 0x011EDD 04:9ECD: 76        .byte $76   ; 
- D 0 - I - 0x011EDE 04:9ECE: 76        .byte $76   ; 
- D 0 - I - 0x011EDF 04:9ECF: B6        .byte $B6   ; 
- D 0 - I - 0x011EE0 04:9ED0: 76        .byte $76   ; 
- D 0 - I - 0x011EE1 04:9ED1: 76        .byte $76   ; 
- D 0 - I - 0x011EE2 04:9ED2: B6        .byte $B6   ; 
- D 0 - I - 0x011EE3 04:9ED3: 76        .byte $76   ; 
- D 0 - I - 0x011EE4 04:9ED4: 94        .byte $94   ; 
- D 0 - I - 0x011EE5 04:9ED5: 94        .byte $94   ; 
- D 0 - I - 0x011EE6 04:9ED6: 94        .byte $94   ; 
- D 0 - I - 0x011EE7 04:9ED7: 84        .byte $84   ; 
- D 0 - I - 0x011EE8 04:9ED8: 84        .byte $84   ; 
- D 0 - I - 0x011EE9 04:9ED9: 84        .byte $84   ; 
- D 0 - I - 0x011EEA 04:9EDA: 76        .byte $76   ; 
- D 0 - I - 0x011EEB 04:9EDB: 76        .byte $76   ; 
- D 0 - I - 0x011EEC 04:9EDC: B6        .byte $B6   ; 
- D 0 - I - 0x011EED 04:9EDD: B6        .byte $B6   ; 
- D 0 - I - 0x011EEE 04:9EDE: 56        .byte $56   ; 
- D 0 - I - 0x011EEF 04:9EDF: 56        .byte $56   ; 
- D 0 - I - 0x011EF0 04:9EE0: 46        .byte $46   ; 
- D 0 - I - 0x011EF1 04:9EE1: 56        .byte $56   ; 
- D 0 - I - 0x011EF2 04:9EE2: 16        .byte $16   ; 
- D 0 - I - 0x011EF3 04:9EE3: C6        .byte $C6   ; 
- D 0 - I - 0x011EF4 04:9EE4: 16        .byte $16   ; 
- D 0 - I - 0x011EF5 04:9EE5: 16        .byte $16   ; 
- D 0 - I - 0x011EF6 04:9EE6: C6        .byte $C6   ; 
- D 0 - I - 0x011EF7 04:9EE7: 16        .byte $16   ; 
- D 0 - I - 0x011EF8 04:9EE8: 16        .byte $16   ; 
- D 0 - I - 0x011EF9 04:9EE9: C6        .byte $C6   ; 
- D 0 - I - 0x011EFA 04:9EEA: 16        .byte $16   ; 
- D 0 - I - 0x011EFB 04:9EEB: 16        .byte $16   ; 
- D 0 - I - 0x011EFC 04:9EEC: C6        .byte $C6   ; 
- D 0 - I - 0x011EFD 04:9EED: 16        .byte $16   ; 
- D 0 - I - 0x011EFE 04:9EEE: 56        .byte $56   ; 
- D 0 - I - 0x011EFF 04:9EEF: 5C        .byte $5C   ; 
- D 0 - I - 0x011F00 04:9EF0: 56        .byte $56   ; 
- D 0 - I - 0x011F01 04:9EF1: 16        .byte $16   ; 
- D 0 - I - 0x011F02 04:9EF2: C6        .byte $C6   ; 
- D 0 - I - 0x011F03 04:9EF3: 96        .byte $96   ; 
- D 0 - I - 0x011F04 04:9EF4: 86        .byte $86   ; 
- D 0 - I - 0x011F05 04:9EF5: C6        .byte $C6   ; 
- D 0 - I - 0x011F06 04:9EF6: 86        .byte $86   ; 
- D 0 - I - 0x011F07 04:9EF7: 76        .byte $76   ; 
- D 0 - I - 0x011F08 04:9EF8: C6        .byte $C6   ; 
- D 0 - I - 0x011F09 04:9EF9: 96        .byte $96   ; 
- D 0 - I - 0x011F0A 04:9EFA: 86        .byte $86   ; 
- D 0 - I - 0x011F0B 04:9EFB: C6        .byte $C6   ; 
- D 0 - I - 0x011F0C 04:9EFC: B6        .byte $B6   ; 
- D 0 - I - 0x011F0D 04:9EFD: C8        .byte $C8   ; 
- D 0 - I - 0x011F0E 04:9EFE: 18        .byte $18   ; 
- D 0 - I - 0x011F0F 04:9EFF: C8        .byte $C8   ; 
- D 0 - I - 0x011F10 04:9F00: C8        .byte $C8   ; 
- D 0 - I - 0x011F11 04:9F01: B8        .byte $B8   ; 
- D 0 - I - 0x011F12 04:9F02: B8        .byte $B8   ; 
- D 0 - I - 0x011F13 04:9F03: 98        .byte $98   ; 
- D 0 - I - 0x011F14 04:9F04: 98        .byte $98   ; 
- D 0 - I - 0x011F15 04:9F05: 88        .byte $88   ; 
- D 0 - I - 0x011F16 04:9F06: 88        .byte $88   ; 
- D 0 - I - 0x011F17 04:9F07: 78        .byte $78   ; 
- D 0 - I - 0x011F18 04:9F08: 78        .byte $78   ; 
- D 0 - I - 0x011F19 04:9F09: B8        .byte $B8   ; 
- D 0 - I - 0x011F1A 04:9F0A: C8        .byte $C8   ; 
- D 0 - I - 0x011F1B 04:9F0B: C8        .byte $C8   ; 
- D 0 - I - 0x011F1C 04:9F0C: B8        .byte $B8   ; 
- D 0 - I - 0x011F1D 04:9F0D: C8        .byte $C8   ; 
- D 0 - I - 0x011F1E 04:9F0E: C8        .byte $C8   ; 
- D 0 - I - 0x011F1F 04:9F0F: B6        .byte $B6   ; 
- D 0 - I - 0x011F20 04:9F10: B6        .byte $B6   ; 
- D 0 - I - 0x011F21 04:9F11: 96        .byte $96   ; 
- D 0 - I - 0x011F22 04:9F12: 96        .byte $96   ; 
- D 0 - I - 0x011F23 04:9F13: 86        .byte $86   ; 
- D 0 - I - 0x011F24 04:9F14: 86        .byte $86   ; 
- D 0 - I - 0x011F25 04:9F15: 76        .byte $76   ; 
- D 0 - I - 0x011F26 04:9F16: 76        .byte $76   ; 
- D 0 - I - 0x011F27 04:9F17: FE        .byte con_se_cb_jmp, $FF   ; 
- D 0 - I - 0x011F29 04:9F19: 49 9E     .word loc_FE_9E49



sub_FD_9F1B:
- D 0 - I - 0x011F2B 04:9F1B: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x011F2C 04:9F1C: 06        .byte $06   ; 
- D 0 - I - 0x011F2D 04:9F1D: 75        .byte $75   ; 
- D 0 - I - 0x011F2E 04:9F1E: 82        .byte $82   ; 
- D 0 - I - 0x011F2F 04:9F1F: 15        .byte $15   ; 
- D 0 - I - 0x011F30 04:9F20: E2        .byte con_se_cb_E2, $B6   ; 
- D 0 - I - 0x011F32 04:9F22: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x011F33 04:9F23: 31        .byte $31   ; 
- D 0 - I - 0x011F34 04:9F24: FF        .byte con_se_cb_stop   ; 



sub_FD_9F25:
- D 0 - I - 0x011F35 04:9F25: EA        .byte con_se_cb_EA, $03   ; 
- D 0 - I - 0x011F37 04:9F27: E1        .byte con_se_cb_E1, $04   ; 
- D 0 - I - 0x011F39 04:9F29: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x011F3A 04:9F2A: 51        .byte $51   ; 
- D 0 - I - 0x011F3B 04:9F2B: 61        .byte $61   ; 
- D 0 - I - 0x011F3C 04:9F2C: 71        .byte $71   ; 
- D 0 - I - 0x011F3D 04:9F2D: A1        .byte $A1   ; 
- D 0 - I - 0x011F3E 04:9F2E: C1        .byte $C1   ; 
- D 0 - I - 0x011F3F 04:9F2F: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011F40 04:9F30: 11        .byte $11   ; 
- D 0 - I - 0x011F41 04:9F31: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x011F42 04:9F32: A1        .byte $A1   ; 
- D 0 - I - 0x011F43 04:9F33: C1        .byte $C1   ; 
- D 0 - I - 0x011F44 04:9F34: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011F45 04:9F35: 11        .byte $11   ; 
- D 0 - I - 0x011F46 04:9F36: 31        .byte $31   ; 
- D 0 - I - 0x011F47 04:9F37: 51        .byte $51   ; 
- D 0 - I - 0x011F48 04:9F38: 61        .byte $61   ; 
- D 0 - I - 0x011F49 04:9F39: 31        .byte $31   ; 
- D 0 - I - 0x011F4A 04:9F3A: 51        .byte $51   ; 
- D 0 - I - 0x011F4B 04:9F3B: 61        .byte $61   ; 
- D 0 - I - 0x011F4C 04:9F3C: 81        .byte $81   ; 
- D 0 - I - 0x011F4D 04:9F3D: A1        .byte $A1   ; 
- D 0 - I - 0x011F4E 04:9F3E: C1        .byte $C1   ; 
- D 0 - I - 0x011F4F 04:9F3F: FF        .byte con_se_cb_stop   ; 



sub_FD_9F40:
- D 0 - I - 0x011F50 04:9F40: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x011F51 04:9F41: 06        .byte $06   ; 
- D 0 - I - 0x011F52 04:9F42: 36        .byte $36   ; 
- D 0 - I - 0x011F53 04:9F43: 82        .byte $82   ; 
- D 0 - I - 0x011F54 04:9F44: 34        .byte $34   ; 
- D 0 - I - 0x011F55 04:9F45: EA        .byte con_se_cb_EA, $00   ; 
- D 0 - I - 0x011F57 04:9F47: D2        .byte $D2   ; 
- D 0 - I - 0x011F58 04:9F48: E2        .byte con_se_cb_E2, $B7   ; 
- D 0 - I - 0x011F5A 04:9F4A: EC        .byte con_se_cb_EC, $06, $11, $04   ; 
- D 0 - I - 0x011F5E 04:9F4E: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x011F5F 04:9F4F: 54        .byte $54   ; 
- D 0 - I - 0x011F60 04:9F50: 74        .byte $74   ; 
- D 0 - I - 0x011F61 04:9F51: E5        .byte con_se_cb_E5, $15   ; 
- D 0 - I - 0x011F63 04:9F53: EC        .byte con_se_cb_EC, $00   ; 
- D 0 - I - 0x011F65 04:9F55: E7        .byte con_se_cb_E7, $50, $21   ; 
- D 0 - I - 0x011F68 04:9F58: 83        .byte $83   ; 
- D 0 - I - 0x011F69 04:9F59: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011F6A 04:9F5A: 33        .byte $33   ; 
- D 0 - I - 0x011F6B 04:9F5B: E5        .byte con_se_cb_E5, $11   ; 
- D 0 - I - 0x011F6D 04:9F5D: 28        .byte $28   ; 
- D 0 - I - 0x011F6E 04:9F5E: FF        .byte con_se_cb_stop   ; 



sub_FD_9F5F:
- D 0 - I - 0x011F6F 04:9F5F: D0        .byte $D0   ; 
- D 0 - I - 0x011F70 04:9F60: EA        .byte con_se_cb_EA, $03   ; 
- D 0 - I - 0x011F72 04:9F62: E2        .byte con_se_cb_E2, $70   ; 
- D 0 - I - 0x011F74 04:9F64: E2        .byte con_se_cb_E2, $3B   ; 
- D 0 - I - 0x011F76 04:9F66: F0        .byte con_se_cb_F0   ; 
- D 0 - I - 0x011F77 04:9F67: 61        .byte $61   ; 
- D 0 - I - 0x011F78 04:9F68: 61        .byte $61   ; 
- D 0 - I - 0x011F79 04:9F69: 51        .byte $51   ; 
- D 0 - I - 0x011F7A 04:9F6A: 62        .byte $62   ; 
- D 0 - I - 0x011F7B 04:9F6B: 13        .byte $13   ; 
- D 0 - I - 0x011F7C 04:9F6C: 62        .byte $62   ; 
- D 0 - I - 0x011F7D 04:9F6D: EA        .byte con_se_cb_EA, $00   ; 
- D 0 - I - 0x011F7F 04:9F6F: E2        .byte con_se_cb_E2, $30   ; 
- D 0 - I - 0x011F81 04:9F71: D2        .byte $D2   ; 
- D 0 - I - 0x011F82 04:9F72: FF        .byte con_se_cb_stop   ; 



sub_FD_9F73:
- D 0 - I - 0x011F83 04:9F73: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x011F84 04:9F74: 06        .byte $06   ; 
- D 0 - I - 0x011F85 04:9F75: 77        .byte $77   ; 
- D 0 - I - 0x011F86 04:9F76: 83        .byte $83   ; 
- D 0 - I - 0x011F87 04:9F77: 15        .byte $15   ; 
- D 0 - I - 0x011F88 04:9F78: D0        .byte $D0   ; 
- D 0 - I - 0x011F89 04:9F79: E7        .byte con_se_cb_E7, $55, $01   ; 
- D 0 - I - 0x011F8C 04:9F7C: E2        .byte con_se_cb_E2, $B6   ; 
- D 0 - I - 0x011F8E 04:9F7E: F0        .byte con_se_cb_F0   ; 
- D 0 - I - 0x011F8F 04:9F7F: 31        .byte $31   ; 
- D 0 - I - 0x011F90 04:9F80: FF        .byte con_se_cb_stop   ; 



sub_FD_9F81:
- D 0 - I - 0x011F91 04:9F81: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x011F92 04:9F82: 06        .byte $06   ; 
- D 0 - I - 0x011F93 04:9F83: 72        .byte $72   ; 
- D 0 - I - 0x011F94 04:9F84: 80        .byte $80   ; 
- D 0 - I - 0x011F95 04:9F85: 00        .byte $00   ; 
- D 0 - I - 0x011F96 04:9F86: 01        .byte $01   ; 
- D 0 - I - 0x011F97 04:9F87: EA        .byte con_se_cb_EA, $03   ; 
- D 0 - I - 0x011F99 04:9F89: E1        .byte con_se_cb_E1, $04   ; 
- D 0 - I - 0x011F9B 04:9F8B: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x011F9C 04:9F8C: 51        .byte $51   ; 
- D 0 - I - 0x011F9D 04:9F8D: 61        .byte $61   ; 
- D 0 - I - 0x011F9E 04:9F8E: 81        .byte $81   ; 
- D 0 - I - 0x011F9F 04:9F8F: A1        .byte $A1   ; 
- D 0 - I - 0x011FA0 04:9F90: C1        .byte $C1   ; 
- D 0 - I - 0x011FA1 04:9F91: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011FA2 04:9F92: 11        .byte $11   ; 
- D 0 - I - 0x011FA3 04:9F93: F1        .byte con_se_cb_F1   ; 
- D 0 - I - 0x011FA4 04:9F94: A1        .byte $A1   ; 
- D 0 - I - 0x011FA5 04:9F95: C1        .byte $C1   ; 
- D 0 - I - 0x011FA6 04:9F96: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011FA7 04:9F97: 11        .byte $11   ; 
- D 0 - I - 0x011FA8 04:9F98: 31        .byte $31   ; 
- D 0 - I - 0x011FA9 04:9F99: 51        .byte $51   ; 
- D 0 - I - 0x011FAA 04:9F9A: 61        .byte $61   ; 
- D 0 - I - 0x011FAB 04:9F9B: 31        .byte $31   ; 
- D 0 - I - 0x011FAC 04:9F9C: 51        .byte $51   ; 
- D 0 - I - 0x011FAD 04:9F9D: 61        .byte $61   ; 
- D 0 - I - 0x011FAE 04:9F9E: 81        .byte $81   ; 
- D 0 - I - 0x011FAF 04:9F9F: E1        .byte con_se_cb_E1, $01   ; 
- D 0 - I - 0x011FB1 04:9FA1: A2        .byte $A2   ; 
- D 0 - I - 0x011FB2 04:9FA2: FF        .byte con_se_cb_stop   ; 



sub_FD_9FA3:
- D 0 - I - 0x011FB3 04:9FA3: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x011FB4 04:9FA4: 02        .byte $02   ; 
- D 0 - I - 0x011FB5 04:9FA5: 34        .byte $34   ; 
- D 0 - I - 0x011FB6 04:9FA6: 81        .byte $81   ; 
- D 0 - I - 0x011FB7 04:9FA7: 14        .byte $14   ; 
- D 0 - I - 0x011FB8 04:9FA8: E6        .byte con_se_cb_E6, $41   ; 
- D 0 - I - 0x011FBA 04:9FAA: EA        .byte con_se_cb_EA, $03   ; 
- D 0 - I - 0x011FBC 04:9FAC: E2        .byte con_se_cb_E2, $77   ; 
- D 0 - I - 0x011FBE 04:9FAE: E7        .byte con_se_cb_E7, $51, $02   ; 
- D 0 - I - 0x011FC1 04:9FB1: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x011FC2 04:9FB2: FF        .byte con_se_cb_stop   ; 



_off000_9FB3_88_01:
- D 0 - I - 0x011FC3 04:9FB3: FD        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x011FC4 04:9FB4: 1C A2     .word sub_FD_A21C
_off000_9FB6_8C_01:
loc_FE_9FB6:
- D 0 - I - 0x011FC6 04:9FB6: FD        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x011FC7 04:9FB7: 3F A0     .word sub_FD_A03F
- D 0 - I - 0x011FC9 04:9FB9: E8        .byte con_se_cb_E8, $83   ; 
- D 0 - I - 0x011FCB 04:9FBB: FD        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x011FCC 04:9FBC: 3F A0     .word sub_FD_A03F
- D 0 - I - 0x011FCE 04:9FBE: E8        .byte con_se_cb_E8, $00   ; 
- D 0 - I - 0x011FD0 04:9FC0: FD        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x011FD1 04:9FC1: 3F A0     .word sub_FD_A03F
- D 0 - I - 0x011FD3 04:9FC3: E8        .byte con_se_cb_E8, $83   ; 
- D 0 - I - 0x011FD5 04:9FC5: FD        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x011FD6 04:9FC6: 3F A0     .word sub_FD_A03F
- D 0 - I - 0x011FD8 04:9FC8: FD        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x011FD9 04:9FC9: BC A0     .word sub_FD_A0BC
- D 0 - I - 0x011FDB 04:9FCB: E8        .byte con_se_cb_E8, $00   ; 
- D 0 - I - 0x011FDD 04:9FCD: FD        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x011FDE 04:9FCE: BF A1     .word sub_FD_A1BF
- D 0 - I - 0x011FE0 04:9FD0: FE        .byte con_se_cb_jmp, $FF   ; 
- D 0 - I - 0x011FE2 04:9FD2: B6 9F     .word loc_FE_9FB6



_off000_9FD4_88_00:
- D 0 - I - 0x011FE4 04:9FD4: FD        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x011FE5 04:9FD5: C3 A2     .word sub_FD_A2C3
_off000_9FD7_8C_00:
loc_FE_9FD7:
- D 0 - I - 0x011FE7 04:9FD7: FD        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x011FE8 04:9FD8: 6E A0     .word sub_FD_A06E
- D 0 - I - 0x011FEA 04:9FDA: E8        .byte con_se_cb_E8, $83   ; 
- D 0 - I - 0x011FEC 04:9FDC: FD        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x011FED 04:9FDD: 6E A0     .word sub_FD_A06E
- D 0 - I - 0x011FEF 04:9FDF: E8        .byte con_se_cb_E8, $00   ; 
- D 0 - I - 0x011FF1 04:9FE1: FD        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x011FF2 04:9FE2: 6E A0     .word sub_FD_A06E
- D 0 - I - 0x011FF4 04:9FE4: E8        .byte con_se_cb_E8, $83   ; 
- D 0 - I - 0x011FF6 04:9FE6: FD        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x011FF7 04:9FE7: 6E A0     .word sub_FD_A06E
- D 0 - I - 0x011FF9 04:9FE9: FD        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x011FFA 04:9FEA: 16 A1     .word sub_FD_A116
- D 0 - I - 0x011FFC 04:9FEC: E8        .byte con_se_cb_E8, $00   ; 
- D 0 - I - 0x011FFE 04:9FEE: EA        .byte con_se_cb_EA, $00   ; 
- D 0 - I - 0x012000 04:9FF0: FD        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x012001 04:9FF1: 2D A2     .word sub_FD_A22D
- D 0 - I - 0x012003 04:9FF3: FE        .byte con_se_cb_jmp, $FF   ; 
- D 0 - I - 0x012005 04:9FF5: D7 9F     .word loc_FE_9FD7



_off000_9FF7_88_02:
- D 0 - I - 0x012007 04:9FF7: FD        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x012008 04:9FF8: 3A A3     .word sub_FD_A33A
_off000_9FFA_8C_02:
loc_FE_9FFA:
- D 0 - I - 0x01200A 04:9FFA: FD        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x01200B 04:9FFB: A1 A0     .word sub_FD_A0A1
- D 0 - I - 0x01200D 04:9FFD: E8        .byte con_se_cb_E8, $83   ; 
- D 0 - I - 0x01200F 04:9FFF: FD        .byte con_se_cb_jsr   ; 
- D 1 - - - 0x012010 04:A000: A1 A0     .word sub_FD_A0A1
- D 1 - I - 0x012012 04:A002: E8        .byte con_se_cb_E8, $00   ; 
- D 1 - I - 0x012014 04:A004: FD        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x012015 04:A005: A1 A0     .word sub_FD_A0A1
- D 1 - I - 0x012017 04:A007: E8        .byte con_se_cb_E8, $83   ; 
- D 1 - I - 0x012019 04:A009: FD        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x01201A 04:A00A: A1 A0     .word sub_FD_A0A1
- D 1 - I - 0x01201C 04:A00C: FD        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x01201D 04:A00D: 86 A1     .word sub_FD_A186
- D 1 - I - 0x01201F 04:A00F: E8        .byte con_se_cb_E8, $00   ; 
- D 1 - I - 0x012021 04:A011: FD        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x012022 04:A012: D7 A2     .word sub_FD_A2D7
- D 1 - I - 0x012024 04:A014: FE        .byte con_se_cb_jmp, $FF   ; 
- D 1 - I - 0x012026 04:A016: FA 9F     .word loc_FE_9FFA



_off000_A018_88_03:
- D 1 - I - 0x012028 04:A018: FD        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x012029 04:A019: A5 A3     .word sub_FD_A3A5
_off000_A01B_8C_03:
loc_FE_A01B:
- D 1 - I - 0x01202B 04:A01B: FB        .byte con_se_cb_FB   ; 
- D 1 - I - 0x01202C 04:A01C: CC        .byte $CC   ; 
- D 1 - I - 0x01202D 04:A01D: 1C        .byte $1C   ; 
- D 1 - I - 0x01202E 04:A01E: BC        .byte $BC   ; 
- D 1 - I - 0x01202F 04:A01F: 1C        .byte $1C   ; 
- D 1 - I - 0x012030 04:A020: CC        .byte $CC   ; 
- D 1 - I - 0x012031 04:A021: 16        .byte $16   ; 
- D 1 - I - 0x012032 04:A022: B6        .byte $B6   ; 
- D 1 - I - 0x012033 04:A023: 1C        .byte $1C   ; 
- D 1 - I - 0x012034 04:A024: C1        .byte $C1   ; 
- D 1 - I - 0x012035 04:A025: 35        .byte $35   ; 
- D 1 - I - 0x012036 04:A026: 16        .byte $16   ; 
- D 1 - I - 0x012037 04:A027: 16        .byte $16   ; 
- D 1 - I - 0x012038 04:A028: B1        .byte $B1   ; 
- D 1 - I - 0x012039 04:A029: 35        .byte $35   ; 
- D 1 - I - 0x01203A 04:A02A: 16        .byte $16   ; 
- D 1 - I - 0x01203B 04:A02B: 16        .byte $16   ; 
- D 1 - I - 0x01203C 04:A02C: C1        .byte $C1   ; 
- D 1 - I - 0x01203D 04:A02D: 35        .byte $35   ; 
- D 1 - I - 0x01203E 04:A02E: 16        .byte $16   ; 
- D 1 - I - 0x01203F 04:A02F: 16        .byte $16   ; 
- D 1 - I - 0x012040 04:A030: B1        .byte $B1   ; 
- D 1 - I - 0x012041 04:A031: 35        .byte $35   ; 
- D 1 - I - 0x012042 04:A032: 16        .byte $16   ; 
- D 1 - I - 0x012043 04:A033: 16        .byte $16   ; 
- D 1 - I - 0x012044 04:A034: B6        .byte $B6   ; 
- D 1 - I - 0x012045 04:A035: B6        .byte $B6   ; 
- D 1 - I - 0x012046 04:A036: FE        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x012047 04:A037: 08        .byte $08   ; 
- D 1 - I - 0x012048 04:A038: FD        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x012049 04:A039: 45 A3     .word sub_FD_A345
- D 1 - I - 0x01204B 04:A03B: FE        .byte con_se_cb_jmp, $FF   ; 
- D 1 - I - 0x01204D 04:A03D: 1B A0     .word loc_FE_A01B



sub_FD_A03F:
- D 1 - I - 0x01204F 04:A03F: E0        .byte con_se_cb_E0   ; 
- D 1 - I - 0x012050 04:A040: 06        .byte $06   ; 
- D 1 - I - 0x012051 04:A041: 76        .byte $76   ; 
- D 1 - I - 0x012052 04:A042: 83        .byte $83   ; 
- D 1 - I - 0x012053 04:A043: 16        .byte $16   ; 
- D 1 - I - 0x012054 04:A044: E2        .byte con_se_cb_E2, $3A   ; 
- D 1 - I - 0x012056 04:A046: EA        .byte con_se_cb_EA, $01   ; 
- D 1 - I - 0x012058 04:A048: FB        .byte con_se_cb_FB   ; 
- D 1 - I - 0x012059 04:A049: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x01205A 04:A04A: A1        .byte $A1   ; 
- D 1 - I - 0x01205B 04:A04B: B1        .byte $B1   ; 
- D 1 - I - 0x01205C 04:A04C: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x01205D 04:A04D: 61        .byte $61   ; 
- D 1 - I - 0x01205E 04:A04E: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x01205F 04:A04F: B1        .byte $B1   ; 
- D 1 - I - 0x012060 04:A050: A1        .byte $A1   ; 
- D 1 - I - 0x012061 04:A051: B1        .byte $B1   ; 
- D 1 - I - 0x012062 04:A052: 81        .byte $81   ; 
- D 1 - I - 0x012063 04:A053: A1        .byte $A1   ; 
- D 1 - I - 0x012064 04:A054: 61        .byte $61   ; 
- D 1 - I - 0x012065 04:A055: 81        .byte $81   ; 
- D 1 - I - 0x012066 04:A056: 41        .byte $41   ; 
- D 1 - I - 0x012067 04:A057: 31        .byte $31   ; 
- D 1 - I - 0x012068 04:A058: 41        .byte $41   ; 
- D 1 - I - 0x012069 04:A059: 61        .byte $61   ; 
- D 1 - I - 0x01206A 04:A05A: 81        .byte $81   ; 
- D 1 - I - 0x01206B 04:A05B: 71        .byte $71   ; 
- D 1 - I - 0x01206C 04:A05C: 81        .byte $81   ; 
- D 1 - I - 0x01206D 04:A05D: B1        .byte $B1   ; 
- D 1 - I - 0x01206E 04:A05E: A1        .byte $A1   ; 
- D 1 - I - 0x01206F 04:A05F: 91        .byte $91   ; 
- D 1 - I - 0x012070 04:A060: A1        .byte $A1   ; 
- D 1 - I - 0x012071 04:A061: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x012072 04:A062: 11        .byte $11   ; 
- D 1 - I - 0x012073 04:A063: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x012074 04:A064: B1        .byte $B1   ; 
- D 1 - I - 0x012075 04:A065: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x012076 04:A066: 11        .byte $11   ; 
- D 1 - I - 0x012077 04:A067: 31        .byte $31   ; 
- D 1 - I - 0x012078 04:A068: 61        .byte $61   ; 
- D 1 - I - 0x012079 04:A069: 51        .byte $51   ; 
- D 1 - I - 0x01207A 04:A06A: 11        .byte $11   ; 
- D 1 - I - 0x01207B 04:A06B: FE        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x01207C 04:A06C: 02        .byte $02   ; 
- D 1 - I - 0x01207D 04:A06D: FF        .byte con_se_cb_stop   ; 



sub_FD_A06E:
- D 1 - I - 0x01207E 04:A06E: E0        .byte con_se_cb_E0   ; 
- D 1 - I - 0x01207F 04:A06F: 06        .byte $06   ; 
- D 1 - I - 0x012080 04:A070: 33        .byte $33   ; 
- D 1 - I - 0x012081 04:A071: 81        .byte $81   ; 
- D 1 - I - 0x012082 04:A072: 15        .byte $15   ; 
- D 1 - I - 0x012083 04:A073: E2        .byte con_se_cb_E2, $77   ; 
- D 1 - I - 0x012085 04:A075: EA        .byte con_se_cb_EA, $01   ; 
- D 1 - I - 0x012087 04:A077: FB        .byte con_se_cb_FB   ; 
- D 1 - I - 0x012088 04:A078: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x012089 04:A079: 81        .byte $81   ; 
- D 1 - I - 0x01208A 04:A07A: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x01208B 04:A07B: 31        .byte $31   ; 
- D 1 - I - 0x01208C 04:A07C: 11        .byte $11   ; 
- D 1 - I - 0x01208D 04:A07D: 31        .byte $31   ; 
- D 1 - I - 0x01208E 04:A07E: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x01208F 04:A07F: B1        .byte $B1   ; 
- D 1 - I - 0x012090 04:A080: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x012091 04:A081: 31        .byte $31   ; 
- D 1 - I - 0x012092 04:A082: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x012093 04:A083: A1        .byte $A1   ; 
- D 1 - I - 0x012094 04:A084: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x012095 04:A085: 31        .byte $31   ; 
- D 1 - I - 0x012096 04:A086: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x012097 04:A087: 81        .byte $81   ; 
- D 1 - I - 0x012098 04:A088: A1        .byte $A1   ; 
- D 1 - I - 0x012099 04:A089: 81        .byte $81   ; 
- D 1 - I - 0x01209A 04:A08A: A1        .byte $A1   ; 
- D 1 - I - 0x01209B 04:A08B: B1        .byte $B1   ; 
- D 1 - I - 0x01209C 04:A08C: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x01209D 04:A08D: 11        .byte $11   ; 
- D 1 - I - 0x01209E 04:A08E: 31        .byte $31   ; 
- D 1 - I - 0x01209F 04:A08F: 11        .byte $11   ; 
- D 1 - I - 0x0120A0 04:A090: 31        .byte $31   ; 
- D 1 - I - 0x0120A1 04:A091: 61        .byte $61   ; 
- D 1 - I - 0x0120A2 04:A092: 41        .byte $41   ; 
- D 1 - I - 0x0120A3 04:A093: 31        .byte $31   ; 
- D 1 - I - 0x0120A4 04:A094: 41        .byte $41   ; 
- D 1 - I - 0x0120A5 04:A095: 61        .byte $61   ; 
- D 1 - I - 0x0120A6 04:A096: 81        .byte $81   ; 
- D 1 - I - 0x0120A7 04:A097: A1        .byte $A1   ; 
- D 1 - I - 0x0120A8 04:A098: B1        .byte $B1   ; 
- D 1 - I - 0x0120A9 04:A099: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0120AA 04:A09A: 11        .byte $11   ; 
- D 1 - I - 0x0120AB 04:A09B: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0120AC 04:A09C: B1        .byte $B1   ; 
- D 1 - I - 0x0120AD 04:A09D: A1        .byte $A1   ; 
- D 1 - I - 0x0120AE 04:A09E: FE        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x0120AF 04:A09F: 02        .byte $02   ; 
- D 1 - I - 0x0120B0 04:A0A0: FF        .byte con_se_cb_stop   ; 



sub_FD_A0A1:
- D 1 - I - 0x0120B1 04:A0A1: FB        .byte con_se_cb_FB   ; 
- D 1 - I - 0x0120B2 04:A0A2: E0        .byte con_se_cb_E0   ; 
- D 1 - I - 0x0120B3 04:A0A3: 06        .byte $06   ; 
- D 1 - I - 0x0120B4 04:A0A4: 03        .byte $03   ; 
- D 1 - I - 0x0120B5 04:A0A5: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x0120B6 04:A0A6: 61        .byte $61   ; 
- D 1 - I - 0x0120B7 04:A0A7: 81        .byte $81   ; 
- D 1 - I - 0x0120B8 04:A0A8: 82        .byte $82   ; 
- D 1 - I - 0x0120B9 04:A0A9: 01        .byte $01   ; 
- D 1 - I - 0x0120BA 04:A0AA: 82        .byte $82   ; 
- D 1 - I - 0x0120BB 04:A0AB: 01        .byte $01   ; 
- D 1 - I - 0x0120BC 04:A0AC: 82        .byte $82   ; 
- D 1 - I - 0x0120BD 04:A0AD: 61        .byte $61   ; 
- D 1 - I - 0x0120BE 04:A0AE: 83        .byte $83   ; 
- D 1 - I - 0x0120BF 04:A0AF: E0        .byte con_se_cb_E0   ; 
- D 1 - I - 0x0120C0 04:A0B0: 06        .byte $06   ; 
- D 1 - I - 0x0120C1 04:A0B1: 02        .byte $02   ; 
- D 1 - I - 0x0120C2 04:A0B2: 13        .byte $13   ; 
- D 1 - I - 0x0120C3 04:A0B3: 33        .byte $33   ; 
- D 1 - I - 0x0120C4 04:A0B4: 63        .byte $63   ; 
- D 1 - I - 0x0120C5 04:A0B5: 83        .byte $83   ; 
- D 1 - I - 0x0120C6 04:A0B6: B1        .byte $B1   ; 
- D 1 - I - 0x0120C7 04:A0B7: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0120C8 04:A0B8: 11        .byte $11   ; 
- D 1 - I - 0x0120C9 04:A0B9: FE        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x0120CA 04:A0BA: 02        .byte $02   ; 
- D 1 - I - 0x0120CB 04:A0BB: FF        .byte con_se_cb_stop   ; 



sub_FD_A0BC:
- D 1 - I - 0x0120CC 04:A0BC: E0        .byte con_se_cb_E0   ; 
- D 1 - I - 0x0120CD 04:A0BD: 06        .byte $06   ; 
- D 1 - I - 0x0120CE 04:A0BE: 72        .byte $72   ; 
- D 1 - I - 0x0120CF 04:A0BF: 00        .byte $00   ; 
- D 1 - I - 0x0120D0 04:A0C0: 16        .byte $16   ; 
- D 1 - I - 0x0120D1 04:A0C1: E7        .byte con_se_cb_E7, $53, $01   ; 
- D 1 - I - 0x0120D4 04:A0C4: E2        .byte con_se_cb_E2, $3F   ; 
- D 1 - I - 0x0120D6 04:A0C6: EA        .byte con_se_cb_EA, $02   ; 
- D 1 - I - 0x0120D8 04:A0C8: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0120D9 04:A0C9: 11        .byte $11   ; 
- D 1 - I - 0x0120DA 04:A0CA: 11        .byte $11   ; 
- D 1 - I - 0x0120DB 04:A0CB: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0120DC 04:A0CC: B1        .byte $B1   ; 
- D 1 - I - 0x0120DD 04:A0CD: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0120DE 04:A0CE: 11        .byte $11   ; 
- D 1 - I - 0x0120DF 04:A0CF: D5        .byte $D5   ; 
- D 1 - I - 0x0120E0 04:A0D0: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0120E1 04:A0D1: B1        .byte $B1   ; 
- D 1 - I - 0x0120E2 04:A0D2: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0120E3 04:A0D3: 11        .byte $11   ; 
- D 1 - I - 0x0120E4 04:A0D4: D3        .byte $D3   ; 
- D 1 - I - 0x0120E5 04:A0D5: E2        .byte con_se_cb_E2, $31   ; 
- D 1 - I - 0x0120E7 04:A0D7: EA        .byte con_se_cb_EA, $00   ; 
- D 1 - I - 0x0120E9 04:A0D9: E7        .byte con_se_cb_E7, $50, $22   ; 
- D 1 - I - 0x0120EC 04:A0DC: E1        .byte con_se_cb_E1, $02   ; 
- D 1 - I - 0x0120EE 04:A0DE: 11        .byte $11   ; 
- D 1 - I - 0x0120EF 04:A0DF: 21        .byte $21   ; 
- D 1 - I - 0x0120F0 04:A0E0: 31        .byte $31   ; 
- D 1 - I - 0x0120F1 04:A0E1: E1        .byte con_se_cb_E1, $06   ; 
- D 1 - I - 0x0120F3 04:A0E3: E5        .byte con_se_cb_E5, $64   ; 
- D 1 - I - 0x0120F5 04:A0E5: E1        .byte con_se_cb_E1, $12   ; 
- D 1 - I - 0x0120F7 04:A0E7: 47        .byte $47   ; 
- D 1 - I - 0x0120F8 04:A0E8: E1        .byte con_se_cb_E1, $06   ; 
- D 1 - I - 0x0120FA 04:A0EA: D2        .byte $D2   ; 
- D 1 - I - 0x0120FB 04:A0EB: E5        .byte con_se_cb_E5, $16   ; 
- D 1 - I - 0x0120FD 04:A0ED: E7        .byte con_se_cb_E7, $53, $01   ; 
- D 1 - I - 0x012100 04:A0F0: E2        .byte con_se_cb_E2, $3F   ; 
- D 1 - I - 0x012102 04:A0F2: EA        .byte con_se_cb_EA, $02   ; 
- D 1 - I - 0x012104 04:A0F4: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x012105 04:A0F5: 11        .byte $11   ; 
- D 1 - I - 0x012106 04:A0F6: 11        .byte $11   ; 
- D 1 - I - 0x012107 04:A0F7: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x012108 04:A0F8: B1        .byte $B1   ; 
- D 1 - I - 0x012109 04:A0F9: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x01210A 04:A0FA: 11        .byte $11   ; 
- D 1 - I - 0x01210B 04:A0FB: D5        .byte $D5   ; 
- D 1 - I - 0x01210C 04:A0FC: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x01210D 04:A0FD: B1        .byte $B1   ; 
- D 1 - I - 0x01210E 04:A0FE: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x01210F 04:A0FF: 11        .byte $11   ; 
- D 1 - I - 0x012110 04:A100: D2        .byte $D2   ; 
- D 1 - I - 0x012111 04:A101: E2        .byte con_se_cb_E2, $31   ; 
- D 1 - I - 0x012113 04:A103: EA        .byte con_se_cb_EA, $00   ; 
- D 1 - I - 0x012115 04:A105: E7        .byte con_se_cb_E7, $50, $22   ; 
- D 1 - I - 0x012118 04:A108: E1        .byte con_se_cb_E1, $02   ; 
- D 1 - I - 0x01211A 04:A10A: 41        .byte $41   ; 
- D 1 - I - 0x01211B 04:A10B: 51        .byte $51   ; 
- D 1 - I - 0x01211C 04:A10C: 61        .byte $61   ; 
- D 1 - I - 0x01211D 04:A10D: E1        .byte con_se_cb_E1, $06   ; 
- D 1 - I - 0x01211F 04:A10F: E5        .byte con_se_cb_E5, $64   ; 
- D 1 - I - 0x012121 04:A111: D3        .byte $D3   ; 
- D 1 - I - 0x012122 04:A112: E1        .byte con_se_cb_E1, $12   ; 
- D 1 - I - 0x012124 04:A114: 77        .byte $77   ; 
- D 1 - I - 0x012125 04:A115: FF        .byte con_se_cb_stop   ; 



sub_FD_A116:
- D 1 - I - 0x012126 04:A116: E0        .byte con_se_cb_E0   ; 
- D 1 - I - 0x012127 04:A117: 06        .byte $06   ; 
- D 1 - I - 0x012128 04:A118: 73        .byte $73   ; 
- D 1 - I - 0x012129 04:A119: 00        .byte $00   ; 
- D 1 - I - 0x01212A 04:A11A: 16        .byte $16   ; 
- D 1 - I - 0x01212B 04:A11B: E7        .byte con_se_cb_E7, $53, $01   ; 
- D 1 - I - 0x01212E 04:A11E: E2        .byte con_se_cb_E2, $3F   ; 
- D 1 - I - 0x012130 04:A120: EA        .byte con_se_cb_EA, $02   ; 
- D 1 - I - 0x012132 04:A122: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x012133 04:A123: 91        .byte $91   ; 
- D 1 - I - 0x012134 04:A124: 91        .byte $91   ; 
- D 1 - I - 0x012135 04:A125: 71        .byte $71   ; 
- D 1 - I - 0x012136 04:A126: 91        .byte $91   ; 
- D 1 - I - 0x012137 04:A127: D5        .byte $D5   ; 
- D 1 - I - 0x012138 04:A128: 71        .byte $71   ; 
- D 1 - I - 0x012139 04:A129: 91        .byte $91   ; 
- D 1 - I - 0x01213A 04:A12A: D4        .byte $D4   ; 
- D 1 - I - 0x01213B 04:A12B: E1        .byte con_se_cb_E1, $02   ; 
- D 1 - I - 0x01213D 04:A12D: 91        .byte $91   ; 
- D 1 - I - 0x01213E 04:A12E: A1        .byte $A1   ; 
- D 1 - I - 0x01213F 04:A12F: B1        .byte $B1   ; 
- D 1 - I - 0x012140 04:A130: E5        .byte con_se_cb_E5, $13   ; 
- D 1 - I - 0x012142 04:A132: E7        .byte con_se_cb_E7, $50, $22   ; 
- D 1 - I - 0x012145 04:A135: E1        .byte con_se_cb_E1, $06   ; 
- D 1 - I - 0x012147 04:A137: C5        .byte $C5   ; 
- D 1 - I - 0x012148 04:A138: D0        .byte $D0   ; 
- D 1 - I - 0x012149 04:A139: E2        .byte con_se_cb_E2, $77   ; 
- D 1 - I - 0x01214B 04:A13B: E0        .byte con_se_cb_E0   ; 
- D 1 - I - 0x01214C 04:A13C: 06        .byte $06   ; 
- D 1 - I - 0x01214D 04:A13D: 37        .byte $37   ; 
- D 1 - I - 0x01214E 04:A13E: 83        .byte $83   ; 
- D 1 - I - 0x01214F 04:A13F: 2A        .byte $2A   ; 
- D 1 - I - 0x012150 04:A140: EA        .byte con_se_cb_EA, $03   ; 
- D 1 - I - 0x012152 04:A142: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x012153 04:A143: 42        .byte $42   ; 
- D 1 - I - 0x012154 04:A144: E5        .byte con_se_cb_E5, $15   ; 
- D 1 - I - 0x012156 04:A146: F0        .byte con_se_cb_F0   ; 
- D 1 - I - 0x012157 04:A147: 83        .byte $83   ; 
- D 1 - I - 0x012158 04:A148: A3        .byte $A3   ; 
- D 1 - I - 0x012159 04:A149: C3        .byte $C3   ; 
- D 1 - I - 0x01215A 04:A14A: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x01215B 04:A14B: 23        .byte $23   ; 
- D 1 - I - 0x01215C 04:A14C: 42        .byte $42   ; 
- D 1 - I - 0x01215D 04:A14D: E0        .byte con_se_cb_E0   ; 
- D 1 - I - 0x01215E 04:A14E: 06        .byte $06   ; 
- D 1 - I - 0x01215F 04:A14F: 73        .byte $73   ; 
- D 1 - I - 0x012160 04:A150: 00        .byte $00   ; 
- D 1 - I - 0x012161 04:A151: 16        .byte $16   ; 
- D 1 - I - 0x012162 04:A152: E7        .byte con_se_cb_E7, $53, $01   ; 
- D 1 - I - 0x012165 04:A155: E2        .byte con_se_cb_E2, $3F   ; 
- D 1 - I - 0x012167 04:A157: EA        .byte con_se_cb_EA, $02   ; 
- D 1 - I - 0x012169 04:A159: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x01216A 04:A15A: 91        .byte $91   ; 
- D 1 - I - 0x01216B 04:A15B: 91        .byte $91   ; 
- D 1 - I - 0x01216C 04:A15C: 71        .byte $71   ; 
- D 1 - I - 0x01216D 04:A15D: 91        .byte $91   ; 
- D 1 - I - 0x01216E 04:A15E: D5        .byte $D5   ; 
- D 1 - I - 0x01216F 04:A15F: 71        .byte $71   ; 
- D 1 - I - 0x012170 04:A160: 91        .byte $91   ; 
- D 1 - I - 0x012171 04:A161: D4        .byte $D4   ; 
- D 1 - I - 0x012172 04:A162: E1        .byte con_se_cb_E1, $02   ; 
- D 1 - I - 0x012174 04:A164: 11        .byte $11   ; 
- D 1 - I - 0x012175 04:A165: 21        .byte $21   ; 
- D 1 - I - 0x012176 04:A166: 31        .byte $31   ; 
- D 1 - I - 0x012177 04:A167: E5        .byte con_se_cb_E5, $13   ; 
- D 1 - I - 0x012179 04:A169: E7        .byte con_se_cb_E7, $50, $22   ; 
- D 1 - I - 0x01217C 04:A16C: E1        .byte con_se_cb_E1, $06   ; 
- D 1 - I - 0x01217E 04:A16E: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x01217F 04:A16F: 45        .byte $45   ; 
- D 1 - I - 0x012180 04:A170: D0        .byte $D0   ; 
- D 1 - I - 0x012181 04:A171: EA        .byte con_se_cb_EA, $02   ; 
- D 1 - I - 0x012183 04:A173: E2        .byte con_se_cb_E2, $77   ; 
- D 1 - I - 0x012185 04:A175: E0        .byte con_se_cb_E0   ; 
- D 1 - I - 0x012186 04:A176: 06        .byte $06   ; 
- D 1 - I - 0x012187 04:A177: 37        .byte $37   ; 
- D 1 - I - 0x012188 04:A178: 83        .byte $83   ; 
- D 1 - I - 0x012189 04:A179: 2A        .byte $2A   ; 
- D 1 - I - 0x01218A 04:A17A: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x01218B 04:A17B: 72        .byte $72   ; 
- D 1 - I - 0x01218C 04:A17C: E5        .byte con_se_cb_E5, $15   ; 
- D 1 - I - 0x01218E 04:A17E: F0        .byte con_se_cb_F0   ; 
- D 1 - I - 0x01218F 04:A17F: A3        .byte $A3   ; 
- D 1 - I - 0x012190 04:A180: C3        .byte $C3   ; 
- D 1 - I - 0x012191 04:A181: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x012192 04:A182: 23        .byte $23   ; 
- D 1 - I - 0x012193 04:A183: 43        .byte $43   ; 
- D 1 - I - 0x012194 04:A184: 62        .byte $62   ; 
- D 1 - I - 0x012195 04:A185: FF        .byte con_se_cb_stop   ; 



sub_FD_A186:
- D 1 - I - 0x012196 04:A186: E0        .byte con_se_cb_E0   ; 
- D 1 - I - 0x012197 04:A187: 06        .byte $06   ; 
- D 1 - I - 0x012198 04:A188: 03        .byte $03   ; 
- D 1 - I - 0x012199 04:A189: E7        .byte con_se_cb_E7, $50, $21   ; 
- D 1 - I - 0x01219C 04:A18C: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x01219D 04:A18D: 11        .byte $11   ; 
- D 1 - I - 0x01219E 04:A18E: 11        .byte $11   ; 
- D 1 - I - 0x01219F 04:A18F: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x0121A0 04:A190: B1        .byte $B1   ; 
- D 1 - I - 0x0121A1 04:A191: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0121A2 04:A192: 11        .byte $11   ; 
- D 1 - I - 0x0121A3 04:A193: 02        .byte $02   ; 
- D 1 - I - 0x0121A4 04:A194: E1        .byte con_se_cb_E1, $02   ; 
- D 1 - I - 0x0121A6 04:A196: 11        .byte $11   ; 
- D 1 - I - 0x0121A7 04:A197: 21        .byte $21   ; 
- D 1 - I - 0x0121A8 04:A198: 31        .byte $31   ; 
- D 1 - I - 0x0121A9 04:A199: E1        .byte con_se_cb_E1, $06   ; 
- D 1 - I - 0x0121AB 04:A19B: 45        .byte $45   ; 
- D 1 - I - 0x0121AC 04:A19C: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x0121AD 04:A19D: 42        .byte $42   ; 
- D 1 - I - 0x0121AE 04:A19E: F0        .byte con_se_cb_F0   ; 
- D 1 - I - 0x0121AF 04:A19F: 83        .byte $83   ; 
- D 1 - I - 0x0121B0 04:A1A0: A3        .byte $A3   ; 
- D 1 - I - 0x0121B1 04:A1A1: C3        .byte $C3   ; 
- D 1 - I - 0x0121B2 04:A1A2: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x0121B3 04:A1A3: 23        .byte $23   ; 
- D 1 - I - 0x0121B4 04:A1A4: 42        .byte $42   ; 
- D 1 - I - 0x0121B5 04:A1A5: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0121B6 04:A1A6: 11        .byte $11   ; 
- D 1 - I - 0x0121B7 04:A1A7: 11        .byte $11   ; 
- D 1 - I - 0x0121B8 04:A1A8: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x0121B9 04:A1A9: B1        .byte $B1   ; 
- D 1 - I - 0x0121BA 04:A1AA: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0121BB 04:A1AB: 12        .byte $12   ; 
- D 1 - I - 0x0121BC 04:A1AC: 01        .byte $01   ; 
- D 1 - I - 0x0121BD 04:A1AD: E1        .byte con_se_cb_E1, $02   ; 
- D 1 - I - 0x0121BF 04:A1AF: 41        .byte $41   ; 
- D 1 - I - 0x0121C0 04:A1B0: 51        .byte $51   ; 
- D 1 - I - 0x0121C1 04:A1B1: 61        .byte $61   ; 
- D 1 - I - 0x0121C2 04:A1B2: E1        .byte con_se_cb_E1, $06   ; 
- D 1 - I - 0x0121C4 04:A1B4: 75        .byte $75   ; 
- D 1 - I - 0x0121C5 04:A1B5: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x0121C6 04:A1B6: 72        .byte $72   ; 
- D 1 - I - 0x0121C7 04:A1B7: F0        .byte con_se_cb_F0   ; 
- D 1 - I - 0x0121C8 04:A1B8: A3        .byte $A3   ; 
- D 1 - I - 0x0121C9 04:A1B9: C3        .byte $C3   ; 
- D 1 - I - 0x0121CA 04:A1BA: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x0121CB 04:A1BB: 23        .byte $23   ; 
- D 1 - I - 0x0121CC 04:A1BC: 43        .byte $43   ; 
- D 1 - I - 0x0121CD 04:A1BD: 62        .byte $62   ; 
- D 1 - I - 0x0121CE 04:A1BE: FF        .byte con_se_cb_stop   ; 



sub_FD_A1BF:
- D 1 - I - 0x0121CF 04:A1BF: E0        .byte con_se_cb_E0   ; 
- D 1 - I - 0x0121D0 04:A1C0: 02        .byte $02   ; 
- D 1 - I - 0x0121D1 04:A1C1: 76        .byte $76   ; 
- D 1 - I - 0x0121D2 04:A1C2: 82        .byte $82   ; 
- D 1 - I - 0x0121D3 04:A1C3: 43        .byte $43   ; 
- D 1 - I - 0x0121D4 04:A1C4: E7        .byte con_se_cb_E7, $00   ; 
- D 1 - I - 0x0121D6 04:A1C6: E2        .byte con_se_cb_E2, $31   ; 
- D 1 - I - 0x0121D8 04:A1C8: D1        .byte $D1   ; 
- D 1 - I - 0x0121D9 04:A1C9: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0121DA 04:A1CA: 51        .byte $51   ; 
- D 1 - I - 0x0121DB 04:A1CB: 61        .byte $61   ; 
- D 1 - I - 0x0121DC 04:A1CC: 71        .byte $71   ; 
- D 1 - I - 0x0121DD 04:A1CD: D0        .byte $D0   ; 
- D 1 - I - 0x0121DE 04:A1CE: 86        .byte $86   ; 
- D 1 - I - 0x0121DF 04:A1CF: D1        .byte $D1   ; 
- D 1 - I - 0x0121E0 04:A1D0: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0121E1 04:A1D1: B1        .byte $B1   ; 
- D 1 - I - 0x0121E2 04:A1D2: C1        .byte $C1   ; 
- D 1 - I - 0x0121E3 04:A1D3: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0121E4 04:A1D4: 11        .byte $11   ; 
- D 1 - I - 0x0121E5 04:A1D5: D0        .byte $D0   ; 
- D 1 - I - 0x0121E6 04:A1D6: 26        .byte $26   ; 
- D 1 - I - 0x0121E7 04:A1D7: E1        .byte con_se_cb_E1, $06   ; 
- D 1 - I - 0x0121E9 04:A1D9: 81        .byte $81   ; 
- D 1 - I - 0x0121EA 04:A1DA: E7        .byte con_se_cb_E7, $50, $22   ; 
- D 1 - I - 0x0121ED 04:A1DD: 79        .byte $79   ; 
- D 1 - I - 0x0121EE 04:A1DE: E7        .byte con_se_cb_E7, $00   ; 
- D 1 - I - 0x0121F0 04:A1E0: E1        .byte con_se_cb_E1, $02   ; 
- D 1 - I - 0x0121F2 04:A1E2: D1        .byte $D1   ; 
- D 1 - I - 0x0121F3 04:A1E3: 31        .byte $31   ; 
- D 1 - I - 0x0121F4 04:A1E4: 41        .byte $41   ; 
- D 1 - I - 0x0121F5 04:A1E5: 51        .byte $51   ; 
- D 1 - I - 0x0121F6 04:A1E6: D0        .byte $D0   ; 
- D 1 - I - 0x0121F7 04:A1E7: 66        .byte $66   ; 
- D 1 - I - 0x0121F8 04:A1E8: D1        .byte $D1   ; 
- D 1 - I - 0x0121F9 04:A1E9: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0121FA 04:A1EA: 91        .byte $91   ; 
- D 1 - I - 0x0121FB 04:A1EB: A1        .byte $A1   ; 
- D 1 - I - 0x0121FC 04:A1EC: B1        .byte $B1   ; 
- D 1 - I - 0x0121FD 04:A1ED: D0        .byte $D0   ; 
- D 1 - I - 0x0121FE 04:A1EE: C6        .byte $C6   ; 
- D 1 - I - 0x0121FF 04:A1EF: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x012200 04:A1F0: 66        .byte $66   ; 
- D 1 - I - 0x012201 04:A1F1: 49        .byte $49   ; 
- D 1 - I - 0x012202 04:A1F2: 29        .byte $29   ; 
- D 1 - I - 0x012203 04:A1F3: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x012204 04:A1F4: B6        .byte $B6   ; 
- D 1 - I - 0x012205 04:A1F5: D1        .byte $D1   ; 
- D 1 - I - 0x012206 04:A1F6: 51        .byte $51   ; 
- D 1 - I - 0x012207 04:A1F7: 61        .byte $61   ; 
- D 1 - I - 0x012208 04:A1F8: 71        .byte $71   ; 
- D 1 - I - 0x012209 04:A1F9: D0        .byte $D0   ; 
- D 1 - I - 0x01220A 04:A1FA: 86        .byte $86   ; 
- D 1 - I - 0x01220B 04:A1FB: D1        .byte $D1   ; 
- D 1 - I - 0x01220C 04:A1FC: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x01220D 04:A1FD: B1        .byte $B1   ; 
- D 1 - I - 0x01220E 04:A1FE: C1        .byte $C1   ; 
- D 1 - I - 0x01220F 04:A1FF: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x012210 04:A200: 11        .byte $11   ; 
- D 1 - I - 0x012211 04:A201: D0        .byte $D0   ; 
- D 1 - I - 0x012212 04:A202: 26        .byte $26   ; 
- D 1 - I - 0x012213 04:A203: E1        .byte con_se_cb_E1, $06   ; 
- D 1 - I - 0x012215 04:A205: 81        .byte $81   ; 
- D 1 - I - 0x012216 04:A206: E7        .byte con_se_cb_E7, $50, $22   ; 
- D 1 - I - 0x012219 04:A209: 79        .byte $79   ; 
- D 1 - I - 0x01221A 04:A20A: E1        .byte con_se_cb_E1, $02   ; 
- D 1 - I - 0x01221C 04:A20C: E7        .byte con_se_cb_E7, $00   ; 
- D 1 - I - 0x01221E 04:A20E: D1        .byte $D1   ; 
- D 1 - I - 0x01221F 04:A20F: 31        .byte $31   ; 
- D 1 - I - 0x012220 04:A210: 41        .byte $41   ; 
- D 1 - I - 0x012221 04:A211: 51        .byte $51   ; 
- D 1 - I - 0x012222 04:A212: D0        .byte $D0   ; 
- D 1 - I - 0x012223 04:A213: 66        .byte $66   ; 
- D 1 - I - 0x012224 04:A214: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x012225 04:A215: C9        .byte $C9   ; 
- D 1 - I - 0x012226 04:A216: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x012227 04:A217: 66        .byte $66   ; 
- D 1 - I - 0x012228 04:A218: E1        .byte con_se_cb_E1, $06   ; 
- D 1 - I - 0x01222A 04:A21A: 44        .byte $44   ; 
- D 1 - I - 0x01222B 04:A21B: 28        .byte $28   ; 
sub_FD_A21C:
- D 1 - I - 0x01222C 04:A21C: E0        .byte con_se_cb_E0   ; 
- D 1 - I - 0x01222D 04:A21D: 02        .byte $02   ; 
- D 1 - I - 0x01222E 04:A21E: 76        .byte $76   ; 
- D 1 - I - 0x01222F 04:A21F: 82        .byte $82   ; 
- D 1 - I - 0x012230 04:A220: 16        .byte $16   ; 
- D 1 - I - 0x012231 04:A221: EA        .byte con_se_cb_EA, $02   ; 
- D 1 - I - 0x012233 04:A223: E2        .byte con_se_cb_E2, $3B   ; 
- D 1 - I - 0x012235 04:A225: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x012236 04:A226: 14        .byte $14   ; 
- D 1 - I - 0x012237 04:A227: 24        .byte $24   ; 
- D 1 - I - 0x012238 04:A228: 34        .byte $34   ; 
- D 1 - I - 0x012239 04:A229: 44        .byte $44   ; 
- D 1 - I - 0x01223A 04:A22A: 54        .byte $54   ; 
- D 1 - I - 0x01223B 04:A22B: 64        .byte $64   ; 
- D 1 - I - 0x01223C 04:A22C: FF        .byte con_se_cb_stop   ; 



sub_FD_A22D:
- D 1 - I - 0x01223D 04:A22D: E0        .byte con_se_cb_E0   ; 
- D 1 - I - 0x01223E 04:A22E: 02        .byte $02   ; 
- D 1 - I - 0x01223F 04:A22F: 78        .byte $78   ; 
- D 1 - I - 0x012240 04:A230: 82        .byte $82   ; 
- D 1 - I - 0x012241 04:A231: 43        .byte $43   ; 
- D 1 - I - 0x012242 04:A232: E7        .byte con_se_cb_E7, $00   ; 
- D 1 - I - 0x012244 04:A234: E2        .byte con_se_cb_E2, $31   ; 
- D 1 - I - 0x012246 04:A236: D4        .byte $D4   ; 
- D 1 - I - 0x012247 04:A237: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x012248 04:A238: 21        .byte $21   ; 
- D 1 - I - 0x012249 04:A239: 31        .byte $31   ; 
- D 1 - I - 0x01224A 04:A23A: 41        .byte $41   ; 
- D 1 - I - 0x01224B 04:A23B: 53        .byte $53   ; 
- D 1 - I - 0x01224C 04:A23C: D0        .byte $D0   ; 
- D 1 - I - 0x01224D 04:A23D: F0        .byte con_se_cb_F0   ; 
- D 1 - I - 0x01224E 04:A23E: 83        .byte $83   ; 
- D 1 - I - 0x01224F 04:A23F: D4        .byte $D4   ; 
- D 1 - I - 0x012250 04:A240: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x012251 04:A241: 81        .byte $81   ; 
- D 1 - I - 0x012252 04:A242: 91        .byte $91   ; 
- D 1 - I - 0x012253 04:A243: A1        .byte $A1   ; 
- D 1 - I - 0x012254 04:A244: B3        .byte $B3   ; 
- D 1 - I - 0x012255 04:A245: F0        .byte con_se_cb_F0   ; 
- D 1 - I - 0x012256 04:A246: D0        .byte $D0   ; 
- D 1 - I - 0x012257 04:A247: 83        .byte $83   ; 
- D 1 - I - 0x012258 04:A248: D4        .byte $D4   ; 
- D 1 - I - 0x012259 04:A249: E1        .byte con_se_cb_E1, $06   ; 
- D 1 - I - 0x01225B 04:A24B: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x01225C 04:A24C: 51        .byte $51   ; 
- D 1 - I - 0x01225D 04:A24D: E7        .byte con_se_cb_E7, $50, $22   ; 
- D 1 - I - 0x012260 04:A250: 43        .byte $43   ; 
- D 1 - I - 0x012261 04:A251: D0        .byte $D0   ; 
- D 1 - I - 0x012262 04:A252: F0        .byte con_se_cb_F0   ; 
- D 1 - I - 0x012263 04:A253: 71        .byte $71   ; 
- D 1 - I - 0x012264 04:A254: D7        .byte $D7   ; 
- D 1 - I - 0x012265 04:A255: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x012266 04:A256: 42        .byte $42   ; 
- D 1 - I - 0x012267 04:A257: D0        .byte $D0   ; 
- D 1 - I - 0x012268 04:A258: F0        .byte con_se_cb_F0   ; 
- D 1 - I - 0x012269 04:A259: 71        .byte $71   ; 
- D 1 - I - 0x01226A 04:A25A: 71        .byte $71   ; 
- D 1 - I - 0x01226B 04:A25B: 71        .byte $71   ; 
- D 1 - I - 0x01226C 04:A25C: D4        .byte $D4   ; 
- D 1 - I - 0x01226D 04:A25D: E1        .byte con_se_cb_E1, $02   ; 
- D 1 - I - 0x01226F 04:A25F: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x012270 04:A260: C1        .byte $C1   ; 
- D 1 - I - 0x012271 04:A261: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x012272 04:A262: 11        .byte $11   ; 
- D 1 - I - 0x012273 04:A263: 21        .byte $21   ; 
- D 1 - I - 0x012274 04:A264: 33        .byte $33   ; 
- D 1 - I - 0x012275 04:A265: D0        .byte $D0   ; 
- D 1 - I - 0x012276 04:A266: F0        .byte con_se_cb_F0   ; 
- D 1 - I - 0x012277 04:A267: 63        .byte $63   ; 
- D 1 - I - 0x012278 04:A268: D4        .byte $D4   ; 
- D 1 - I - 0x012279 04:A269: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x01227A 04:A26A: 41        .byte $41   ; 
- D 1 - I - 0x01227B 04:A26B: 51        .byte $51   ; 
- D 1 - I - 0x01227C 04:A26C: 61        .byte $61   ; 
- D 1 - I - 0x01227D 04:A26D: 73        .byte $73   ; 
- D 1 - I - 0x01227E 04:A26E: D0        .byte $D0   ; 
- D 1 - I - 0x01227F 04:A26F: F0        .byte con_se_cb_F0   ; 
- D 1 - I - 0x012280 04:A270: 63        .byte $63   ; 
- D 1 - I - 0x012281 04:A271: D4        .byte $D4   ; 
- D 1 - I - 0x012282 04:A272: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x012283 04:A273: 36        .byte $36   ; 
- D 1 - I - 0x012284 04:A274: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x012285 04:A275: B6        .byte $B6   ; 
- D 1 - I - 0x012286 04:A276: D0        .byte $D0   ; 
- D 1 - I - 0x012287 04:A277: F0        .byte con_se_cb_F0   ; 
- D 1 - I - 0x012288 04:A278: 53        .byte $53   ; 
- D 1 - I - 0x012289 04:A279: D4        .byte $D4   ; 
- D 1 - I - 0x01228A 04:A27A: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x01228B 04:A27B: 96        .byte $96   ; 
- D 1 - I - 0x01228C 04:A27C: D0        .byte $D0   ; 
- D 1 - I - 0x01228D 04:A27D: F0        .byte con_se_cb_F0   ; 
- D 1 - I - 0x01228E 04:A27E: 53        .byte $53   ; 
- D 1 - I - 0x01228F 04:A27F: D4        .byte $D4   ; 
- D 1 - I - 0x012290 04:A280: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x012291 04:A281: 73        .byte $73   ; 
- D 1 - I - 0x012292 04:A282: D0        .byte $D0   ; 
- D 1 - I - 0x012293 04:A283: F0        .byte con_se_cb_F0   ; 
- D 1 - I - 0x012294 04:A284: 53        .byte $53   ; 
- D 1 - I - 0x012295 04:A285: D4        .byte $D4   ; 
- D 1 - I - 0x012296 04:A286: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x012297 04:A287: 21        .byte $21   ; 
- D 1 - I - 0x012298 04:A288: 31        .byte $31   ; 
- D 1 - I - 0x012299 04:A289: 41        .byte $41   ; 
- D 1 - I - 0x01229A 04:A28A: 53        .byte $53   ; 
- D 1 - I - 0x01229B 04:A28B: D0        .byte $D0   ; 
- D 1 - I - 0x01229C 04:A28C: F0        .byte con_se_cb_F0   ; 
- D 1 - I - 0x01229D 04:A28D: 83        .byte $83   ; 
- D 1 - I - 0x01229E 04:A28E: D4        .byte $D4   ; 
- D 1 - I - 0x01229F 04:A28F: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x0122A0 04:A290: 81        .byte $81   ; 
- D 1 - I - 0x0122A1 04:A291: 91        .byte $91   ; 
- D 1 - I - 0x0122A2 04:A292: A1        .byte $A1   ; 
- D 1 - I - 0x0122A3 04:A293: B3        .byte $B3   ; 
- D 1 - I - 0x0122A4 04:A294: D0        .byte $D0   ; 
- D 1 - I - 0x0122A5 04:A295: F0        .byte con_se_cb_F0   ; 
- D 1 - I - 0x0122A6 04:A296: 83        .byte $83   ; 
- D 1 - I - 0x0122A7 04:A297: D4        .byte $D4   ; 
- D 1 - I - 0x0122A8 04:A298: E1        .byte con_se_cb_E1, $06   ; 
- D 1 - I - 0x0122AA 04:A29A: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0122AB 04:A29B: 51        .byte $51   ; 
- D 1 - I - 0x0122AC 04:A29C: E7        .byte con_se_cb_E7, $50, $22   ; 
- D 1 - I - 0x0122AF 04:A29F: 43        .byte $43   ; 
- D 1 - I - 0x0122B0 04:A2A0: D0        .byte $D0   ; 
- D 1 - I - 0x0122B1 04:A2A1: F0        .byte con_se_cb_F0   ; 
- D 1 - I - 0x0122B2 04:A2A2: 71        .byte $71   ; 
- D 1 - I - 0x0122B3 04:A2A3: D7        .byte $D7   ; 
- D 1 - I - 0x0122B4 04:A2A4: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0122B5 04:A2A5: 42        .byte $42   ; 
- D 1 - I - 0x0122B6 04:A2A6: D0        .byte $D0   ; 
- D 1 - I - 0x0122B7 04:A2A7: F0        .byte con_se_cb_F0   ; 
- D 1 - I - 0x0122B8 04:A2A8: 71        .byte $71   ; 
- D 1 - I - 0x0122B9 04:A2A9: 71        .byte $71   ; 
- D 1 - I - 0x0122BA 04:A2AA: 71        .byte $71   ; 
- D 1 - I - 0x0122BB 04:A2AB: D4        .byte $D4   ; 
- D 1 - I - 0x0122BC 04:A2AC: E1        .byte con_se_cb_E1, $02   ; 
- D 1 - I - 0x0122BE 04:A2AE: E7        .byte con_se_cb_E7, $00   ; 
- D 1 - I - 0x0122C0 04:A2B0: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x0122C1 04:A2B1: C1        .byte $C1   ; 
- D 1 - I - 0x0122C2 04:A2B2: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0122C3 04:A2B3: 11        .byte $11   ; 
- D 1 - I - 0x0122C4 04:A2B4: 21        .byte $21   ; 
- D 1 - I - 0x0122C5 04:A2B5: 33        .byte $33   ; 
- D 1 - I - 0x0122C6 04:A2B6: D0        .byte $D0   ; 
- D 1 - I - 0x0122C7 04:A2B7: F0        .byte con_se_cb_F0   ; 
- D 1 - I - 0x0122C8 04:A2B8: 63        .byte $63   ; 
- D 1 - I - 0x0122C9 04:A2B9: D4        .byte $D4   ; 
- D 1 - I - 0x0122CA 04:A2BA: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x0122CB 04:A2BB: 99        .byte $99   ; 
- D 1 - I - 0x0122CC 04:A2BC: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0122CD 04:A2BD: 36        .byte $36   ; 
- D 1 - I - 0x0122CE 04:A2BE: E1        .byte con_se_cb_E1, $06   ; 
- D 1 - I - 0x0122D0 04:A2C0: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x0122D1 04:A2C1: B4        .byte $B4   ; 
- D 1 - I - 0x0122D2 04:A2C2: 98        .byte $98   ; 
sub_FD_A2C3:
- D 1 - I - 0x0122D3 04:A2C3: E0        .byte con_se_cb_E0   ; 
- D 1 - I - 0x0122D4 04:A2C4: 02        .byte $02   ; 
- D 1 - I - 0x0122D5 04:A2C5: 78        .byte $78   ; 
- D 1 - I - 0x0122D6 04:A2C6: 82        .byte $82   ; 
- D 1 - I - 0x0122D7 04:A2C7: 16        .byte $16   ; 
- D 1 - I - 0x0122D8 04:A2C8: D3        .byte $D3   ; 
- D 1 - I - 0x0122D9 04:A2C9: EA        .byte con_se_cb_EA, $02   ; 
- D 1 - I - 0x0122DB 04:A2CB: E2        .byte con_se_cb_E2, $3B   ; 
- D 1 - I - 0x0122DD 04:A2CD: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0122DE 04:A2CE: 84        .byte $84   ; 
- D 1 - I - 0x0122DF 04:A2CF: 94        .byte $94   ; 
- D 1 - I - 0x0122E0 04:A2D0: A4        .byte $A4   ; 
- D 1 - I - 0x0122E1 04:A2D1: B4        .byte $B4   ; 
- D 1 - I - 0x0122E2 04:A2D2: C4        .byte $C4   ; 
- D 1 - I - 0x0122E3 04:A2D3: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0122E4 04:A2D4: 14        .byte $14   ; 
- D 1 - I - 0x0122E5 04:A2D5: D0        .byte $D0   ; 
- D 1 - I - 0x0122E6 04:A2D6: FF        .byte con_se_cb_stop   ; 



sub_FD_A2D7:
- D 1 - I - 0x0122E7 04:A2D7: E0        .byte con_se_cb_E0   ; 
- D 1 - I - 0x0122E8 04:A2D8: 06        .byte $06   ; 
- D 1 - I - 0x0122E9 04:A2D9: 03        .byte $03   ; 
- D 1 - I - 0x0122EA 04:A2DA: FB        .byte con_se_cb_FB   ; 
- D 1 - I - 0x0122EB 04:A2DB: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x0122EC 04:A2DC: 81        .byte $81   ; 
- D 1 - I - 0x0122ED 04:A2DD: 81        .byte $81   ; 
- D 1 - I - 0x0122EE 04:A2DE: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0122EF 04:A2DF: 81        .byte $81   ; 
- D 1 - I - 0x0122F0 04:A2E0: FE        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x0122F1 04:A2E1: 02        .byte $02   ; 
- D 1 - I - 0x0122F2 04:A2E2: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x0122F3 04:A2E3: 81        .byte $81   ; 
- D 1 - I - 0x0122F4 04:A2E4: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0122F5 04:A2E5: 81        .byte $81   ; 
- D 1 - I - 0x0122F6 04:A2E6: FB        .byte con_se_cb_FB   ; 
- D 1 - I - 0x0122F7 04:A2E7: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x0122F8 04:A2E8: 71        .byte $71   ; 
- D 1 - I - 0x0122F9 04:A2E9: 71        .byte $71   ; 
- D 1 - I - 0x0122FA 04:A2EA: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0122FB 04:A2EB: 71        .byte $71   ; 
- D 1 - I - 0x0122FC 04:A2EC: FE        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x0122FD 04:A2ED: 02        .byte $02   ; 
- D 1 - I - 0x0122FE 04:A2EE: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x0122FF 04:A2EF: 71        .byte $71   ; 
- D 1 - I - 0x012300 04:A2F0: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x012301 04:A2F1: 71        .byte $71   ; 
- D 1 - I - 0x012302 04:A2F2: FB        .byte con_se_cb_FB   ; 
- D 1 - I - 0x012303 04:A2F3: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x012304 04:A2F4: 61        .byte $61   ; 
- D 1 - I - 0x012305 04:A2F5: 61        .byte $61   ; 
- D 1 - I - 0x012306 04:A2F6: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x012307 04:A2F7: 61        .byte $61   ; 
- D 1 - I - 0x012308 04:A2F8: FE        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x012309 04:A2F9: 02        .byte $02   ; 
- D 1 - I - 0x01230A 04:A2FA: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x01230B 04:A2FB: 61        .byte $61   ; 
- D 1 - I - 0x01230C 04:A2FC: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x01230D 04:A2FD: 61        .byte $61   ; 
- D 1 - I - 0x01230E 04:A2FE: FB        .byte con_se_cb_FB   ; 
- D 1 - I - 0x01230F 04:A2FF: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x012310 04:A300: 51        .byte $51   ; 
- D 1 - I - 0x012311 04:A301: 51        .byte $51   ; 
- D 1 - I - 0x012312 04:A302: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x012313 04:A303: 51        .byte $51   ; 
- D 1 - I - 0x012314 04:A304: FE        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x012315 04:A305: 02        .byte $02   ; 
- D 1 - I - 0x012316 04:A306: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x012317 04:A307: 51        .byte $51   ; 
- D 1 - I - 0x012318 04:A308: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x012319 04:A309: 51        .byte $51   ; 
- D 1 - I - 0x01231A 04:A30A: FB        .byte con_se_cb_FB   ; 
- D 1 - I - 0x01231B 04:A30B: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x01231C 04:A30C: 81        .byte $81   ; 
- D 1 - I - 0x01231D 04:A30D: 81        .byte $81   ; 
- D 1 - I - 0x01231E 04:A30E: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x01231F 04:A30F: 81        .byte $81   ; 
- D 1 - I - 0x012320 04:A310: FE        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x012321 04:A311: 02        .byte $02   ; 
- D 1 - I - 0x012322 04:A312: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x012323 04:A313: 81        .byte $81   ; 
- D 1 - I - 0x012324 04:A314: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x012325 04:A315: 81        .byte $81   ; 
- D 1 - I - 0x012326 04:A316: FB        .byte con_se_cb_FB   ; 
- D 1 - I - 0x012327 04:A317: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x012328 04:A318: 71        .byte $71   ; 
- D 1 - I - 0x012329 04:A319: 71        .byte $71   ; 
- D 1 - I - 0x01232A 04:A31A: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x01232B 04:A31B: 71        .byte $71   ; 
- D 1 - I - 0x01232C 04:A31C: FE        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x01232D 04:A31D: 02        .byte $02   ; 
- D 1 - I - 0x01232E 04:A31E: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x01232F 04:A31F: 71        .byte $71   ; 
- D 1 - I - 0x012330 04:A320: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x012331 04:A321: 71        .byte $71   ; 
- D 1 - I - 0x012332 04:A322: FB        .byte con_se_cb_FB   ; 
- D 1 - I - 0x012333 04:A323: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x012334 04:A324: 61        .byte $61   ; 
- D 1 - I - 0x012335 04:A325: 61        .byte $61   ; 
- D 1 - I - 0x012336 04:A326: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x012337 04:A327: 61        .byte $61   ; 
- D 1 - I - 0x012338 04:A328: FE        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x012339 04:A329: 02        .byte $02   ; 
- D 1 - I - 0x01233A 04:A32A: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x01233B 04:A32B: 61        .byte $61   ; 
- D 1 - I - 0x01233C 04:A32C: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x01233D 04:A32D: 61        .byte $61   ; 
- D 1 - I - 0x01233E 04:A32E: 54        .byte $54   ; 
- D 1 - I - 0x01233F 04:A32F: E0        .byte con_se_cb_E0   ; 
- D 1 - I - 0x012340 04:A330: 02        .byte $02   ; 
- D 1 - I - 0x012341 04:A331: 00        .byte $00   ; 
- D 1 - I - 0x012342 04:A332: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x012343 04:A333: 21        .byte $21   ; 
- D 1 - I - 0x012344 04:A334: 31        .byte $31   ; 
- D 1 - I - 0x012345 04:A335: 41        .byte $41   ; 
- D 1 - I - 0x012346 04:A336: E0        .byte con_se_cb_E0   ; 
- D 1 - I - 0x012347 04:A337: 06        .byte $06   ; 
- D 1 - I - 0x012348 04:A338: 00        .byte $00   ; 
- D 1 - I - 0x012349 04:A339: 57        .byte $57   ; 
sub_FD_A33A:
- D 1 - I - 0x01234A 04:A33A: E0        .byte con_se_cb_E0   ; 
- D 1 - I - 0x01234B 04:A33B: 04        .byte $04   ; 
- D 1 - I - 0x01234C 04:A33C: 03        .byte $03   ; 
- D 1 - I - 0x01234D 04:A33D: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x01234E 04:A33E: 12        .byte $12   ; 
- D 1 - I - 0x01234F 04:A33F: 22        .byte $22   ; 
- D 1 - I - 0x012350 04:A340: 32        .byte $32   ; 
- D 1 - I - 0x012351 04:A341: 42        .byte $42   ; 
- D 1 - I - 0x012352 04:A342: 52        .byte $52   ; 
- D 1 - I - 0x012353 04:A343: 62        .byte $62   ; 
- D 1 - I - 0x012354 04:A344: FF        .byte con_se_cb_stop   ; 



sub_FD_A345:
- D 1 - I - 0x012355 04:A345: 26        .byte $26   ; 
- D 1 - I - 0x012356 04:A346: 26        .byte $26   ; 
- D 1 - I - 0x012357 04:A347: 26        .byte $26   ; 
- D 1 - I - 0x012358 04:A348: 26        .byte $26   ; 
- D 1 - I - 0x012359 04:A349: 16        .byte $16   ; 
- D 1 - I - 0x01235A 04:A34A: 16        .byte $16   ; 
- D 1 - I - 0x01235B 04:A34B: 36        .byte $36   ; 
- D 1 - I - 0x01235C 04:A34C: 16        .byte $16   ; 
- D 1 - I - 0x01235D 04:A34D: 16        .byte $16   ; 
- D 1 - I - 0x01235E 04:A34E: 16        .byte $16   ; 
- D 1 - I - 0x01235F 04:A34F: 16        .byte $16   ; 
- D 1 - I - 0x012360 04:A350: 16        .byte $16   ; 
- D 1 - I - 0x012361 04:A351: 26        .byte $26   ; 
- D 1 - I - 0x012362 04:A352: 26        .byte $26   ; 
- D 1 - I - 0x012363 04:A353: 36        .byte $36   ; 
- D 1 - I - 0x012364 04:A354: 16        .byte $16   ; 
- D 1 - I - 0x012365 04:A355: 16        .byte $16   ; 
- D 1 - I - 0x012366 04:A356: 36        .byte $36   ; 
- D 1 - I - 0x012367 04:A357: 16        .byte $16   ; 
- D 1 - I - 0x012368 04:A358: 16        .byte $16   ; 
- D 1 - I - 0x012369 04:A359: 36        .byte $36   ; 
- D 1 - I - 0x01236A 04:A35A: 16        .byte $16   ; 
- D 1 - I - 0x01236B 04:A35B: 16        .byte $16   ; 
- D 1 - I - 0x01236C 04:A35C: 16        .byte $16   ; 
- D 1 - I - 0x01236D 04:A35D: 26        .byte $26   ; 
- D 1 - I - 0x01236E 04:A35E: 26        .byte $26   ; 
- D 1 - I - 0x01236F 04:A35F: 26        .byte $26   ; 
- D 1 - I - 0x012370 04:A360: 26        .byte $26   ; 
- D 1 - I - 0x012371 04:A361: 26        .byte $26   ; 
- D 1 - I - 0x012372 04:A362: 26        .byte $26   ; 
- D 1 - I - 0x012373 04:A363: 26        .byte $26   ; 
- D 1 - I - 0x012374 04:A364: 26        .byte $26   ; 
- D 1 - I - 0x012375 04:A365: 16        .byte $16   ; 
- D 1 - I - 0x012376 04:A366: 16        .byte $16   ; 
- D 1 - I - 0x012377 04:A367: 36        .byte $36   ; 
- D 1 - I - 0x012378 04:A368: 16        .byte $16   ; 
- D 1 - I - 0x012379 04:A369: 16        .byte $16   ; 
- D 1 - I - 0x01237A 04:A36A: 16        .byte $16   ; 
- D 1 - I - 0x01237B 04:A36B: 16        .byte $16   ; 
- D 1 - I - 0x01237C 04:A36C: 16        .byte $16   ; 
- D 1 - I - 0x01237D 04:A36D: 26        .byte $26   ; 
- D 1 - I - 0x01237E 04:A36E: 26        .byte $26   ; 
- D 1 - I - 0x01237F 04:A36F: 36        .byte $36   ; 
- D 1 - I - 0x012380 04:A370: 16        .byte $16   ; 
- D 1 - I - 0x012381 04:A371: 16        .byte $16   ; 
- D 1 - I - 0x012382 04:A372: 36        .byte $36   ; 
- D 1 - I - 0x012383 04:A373: 16        .byte $16   ; 
- D 1 - I - 0x012384 04:A374: 16        .byte $16   ; 
- D 1 - I - 0x012385 04:A375: 36        .byte $36   ; 
- D 1 - I - 0x012386 04:A376: 16        .byte $16   ; 
- D 1 - I - 0x012387 04:A377: 16        .byte $16   ; 
- D 1 - I - 0x012388 04:A378: 16        .byte $16   ; 
- D 1 - I - 0x012389 04:A379: B6        .byte $B6   ; 
- D 1 - I - 0x01238A 04:A37A: 96        .byte $96   ; 
- D 1 - I - 0x01238B 04:A37B: 86        .byte $86   ; 
- D 1 - I - 0x01238C 04:A37C: 76        .byte $76   ; 
- D 1 - I - 0x01238D 04:A37D: FB        .byte con_se_cb_FB   ; 
- D 1 - I - 0x01238E 04:A37E: 76        .byte $76   ; 
- D 1 - I - 0x01238F 04:A37F: 96        .byte $96   ; 
- D 1 - I - 0x012390 04:A380: 86        .byte $86   ; 
- D 1 - I - 0x012391 04:A381: 76        .byte $76   ; 
- D 1 - I - 0x012392 04:A382: 96        .byte $96   ; 
- D 1 - I - 0x012393 04:A383: 86        .byte $86   ; 
- D 1 - I - 0x012394 04:A384: B6        .byte $B6   ; 
- D 1 - I - 0x012395 04:A385: B6        .byte $B6   ; 
- D 1 - I - 0x012396 04:A386: FE        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x012397 04:A387: 03        .byte $03   ; 
- D 1 - I - 0x012398 04:A388: FB        .byte con_se_cb_FB   ; 
- D 1 - I - 0x012399 04:A389: B4        .byte $B4   ; 
- D 1 - I - 0x01239A 04:A38A: 94        .byte $94   ; 
- D 1 - I - 0x01239B 04:A38B: 84        .byte $84   ; 
- D 1 - I - 0x01239C 04:A38C: 74        .byte $74   ; 
- D 1 - I - 0x01239D 04:A38D: B4        .byte $B4   ; 
- D 1 - I - 0x01239E 04:A38E: B4        .byte $B4   ; 
- D 1 - I - 0x01239F 04:A38F: FE        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x0123A0 04:A390: 02        .byte $02   ; 
- D 1 - I - 0x0123A1 04:A391: FB        .byte con_se_cb_FB   ; 
- D 1 - I - 0x0123A2 04:A392: 76        .byte $76   ; 
- D 1 - I - 0x0123A3 04:A393: 96        .byte $96   ; 
- D 1 - I - 0x0123A4 04:A394: 86        .byte $86   ; 
- D 1 - I - 0x0123A5 04:A395: 76        .byte $76   ; 
- D 1 - I - 0x0123A6 04:A396: 96        .byte $96   ; 
- D 1 - I - 0x0123A7 04:A397: 86        .byte $86   ; 
- D 1 - I - 0x0123A8 04:A398: B6        .byte $B6   ; 
- D 1 - I - 0x0123A9 04:A399: B6        .byte $B6   ; 
- D 1 - I - 0x0123AA 04:A39A: FE        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x0123AB 04:A39B: 03        .byte $03   ; 
- D 1 - I - 0x0123AC 04:A39C: C1        .byte $C1   ; 
- D 1 - I - 0x0123AD 04:A39D: 30        .byte $30   ; 
- D 1 - I - 0x0123AE 04:A39E: 07        .byte $07   ; 
- D 1 - I - 0x0123AF 04:A39F: C1        .byte $C1   ; 
- D 1 - I - 0x0123B0 04:A3A0: 30        .byte $30   ; 
- D 1 - I - 0x0123B1 04:A3A1: 07        .byte $07   ; 
- D 1 - I - 0x0123B2 04:A3A2: 3C        .byte $3C   ; 
- D 1 - I - 0x0123B3 04:A3A3: 16        .byte $16   ; 
- D 1 - I - 0x0123B4 04:A3A4: 16        .byte $16   ; 
sub_FD_A3A5:
- D 1 - I - 0x0123B5 04:A3A5: E0        .byte con_se_cb_E0   ; 
- D 1 - I - 0x0123B6 04:A3A6: 01        .byte $01   ; 
- D 1 - I - 0x0123B7 04:A3A7: 64        .byte $64   ; 
- D 1 - I - 0x0123B8 04:A3A8: 64        .byte $64   ; 
- D 1 - I - 0x0123B9 04:A3A9: 68        .byte $68   ; 
- D 1 - I - 0x0123BA 04:A3AA: 68        .byte $68   ; 
- D 1 - I - 0x0123BB 04:A3AB: 68        .byte $68   ; 
- D 1 - I - 0x0123BC 04:A3AC: 68        .byte $68   ; 
- D 1 - I - 0x0123BD 04:A3AD: 68        .byte $68   ; 
- D 1 - I - 0x0123BE 04:A3AE: FF        .byte con_se_cb_stop   ; 



_off000_A3AF_90_01:
- D 1 - I - 0x0123BF 04:A3AF: E0        .byte con_se_cb_E0   ; 
- D 1 - I - 0x0123C0 04:A3B0: 01        .byte $01   ; 
- D 1 - I - 0x0123C1 04:A3B1: 3A        .byte $3A   ; 
- D 1 - I - 0x0123C2 04:A3B2: 82        .byte $82   ; 
- D 1 - I - 0x0123C3 04:A3B3: 26        .byte $26   ; 
- D 1 - I - 0x0123C4 04:A3B4: FD        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x0123C5 04:A3B5: 46 A4     .word sub_FD_A446
_off000_A3B7_94_01:
loc_FE_A3B7:
- D 1 - I - 0x0123C7 04:A3B7: E0        .byte con_se_cb_E0   ; 
- D 1 - I - 0x0123C8 04:A3B8: 05        .byte $05   ; 
- D 1 - I - 0x0123C9 04:A3B9: 37        .byte $37   ; 
- D 1 - I - 0x0123CA 04:A3BA: 82        .byte $82   ; 
- D 1 - I - 0x0123CB 04:A3BB: 24        .byte $24   ; 
- D 1 - I - 0x0123CC 04:A3BC: E2        .byte con_se_cb_E2, $38   ; 
- D 1 - I - 0x0123CE 04:A3BE: FD        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x0123CF 04:A3BF: 70 A4     .word sub_FD_A470
- D 1 - I - 0x0123D1 04:A3C1: E8        .byte con_se_cb_E8, $05   ; 
- D 1 - I - 0x0123D3 04:A3C3: FD        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x0123D4 04:A3C4: 70 A4     .word sub_FD_A470
- D 1 - I - 0x0123D6 04:A3C6: E8        .byte con_se_cb_E8, $00   ; 
- D 1 - I - 0x0123D8 04:A3C8: E0        .byte con_se_cb_E0   ; 
- D 1 - I - 0x0123D9 04:A3C9: 05        .byte $05   ; 
- D 1 - I - 0x0123DA 04:A3CA: 78        .byte $78   ; 
- D 1 - I - 0x0123DB 04:A3CB: 82        .byte $82   ; 
- D 1 - I - 0x0123DC 04:A3CC: 24        .byte $24   ; 
- D 1 - I - 0x0123DD 04:A3CD: D1        .byte $D1   ; 
- D 1 - I - 0x0123DE 04:A3CE: E2        .byte con_se_cb_E2, $78   ; 
- D 1 - I - 0x0123E0 04:A3D0: EA        .byte con_se_cb_EA, $01   ; 
- D 1 - I - 0x0123E2 04:A3D2: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0123E3 04:A3D3: FD        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x0123E4 04:A3D4: 8F A4     .word sub_FD_A48F
- D 1 - I - 0x0123E6 04:A3D6: 81        .byte $81   ; 
- D 1 - I - 0x0123E7 04:A3D7: 71        .byte $71   ; 
- D 1 - I - 0x0123E8 04:A3D8: 61        .byte $61   ; 
- D 1 - I - 0x0123E9 04:A3D9: 51        .byte $51   ; 
- D 1 - I - 0x0123EA 04:A3DA: 41        .byte $41   ; 
- D 1 - I - 0x0123EB 04:A3DB: 31        .byte $31   ; 
- D 1 - I - 0x0123EC 04:A3DC: 21        .byte $21   ; 
- D 1 - I - 0x0123ED 04:A3DD: 11        .byte $11   ; 
- D 1 - I - 0x0123EE 04:A3DE: FD        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x0123EF 04:A3DF: 8F A4     .word sub_FD_A48F
- D 1 - I - 0x0123F1 04:A3E1: E2        .byte con_se_cb_E2, $F0   ; 
- D 1 - I - 0x0123F3 04:A3E3: E5        .byte con_se_cb_E5, $28   ; 
- D 1 - I - 0x0123F5 04:A3E5: D0        .byte $D0   ; 
- D 1 - I - 0x0123F6 04:A3E6: EA        .byte con_se_cb_EA, $00   ; 
- D 1 - I - 0x0123F8 04:A3E8: 81        .byte $81   ; 
- D 1 - I - 0x0123F9 04:A3E9: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0123FA 04:A3EA: 31        .byte $31   ; 
- D 1 - I - 0x0123FB 04:A3EB: 81        .byte $81   ; 
- D 1 - I - 0x0123FC 04:A3EC: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0123FD 04:A3ED: B1        .byte $B1   ; 
- D 1 - I - 0x0123FE 04:A3EE: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0123FF 04:A3EF: B1        .byte $B1   ; 
- D 1 - I - 0x012400 04:A3F0: 61        .byte $61   ; 
- D 1 - I - 0x012401 04:A3F1: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x012402 04:A3F2: 11        .byte $11   ; 
- D 1 - I - 0x012403 04:A3F3: 61        .byte $61   ; 
- D 1 - I - 0x012404 04:A3F4: E0        .byte con_se_cb_E0   ; 
- D 1 - I - 0x012405 04:A3F5: 05        .byte $05   ; 
- D 1 - I - 0x012406 04:A3F6: 77        .byte $77   ; 
- D 1 - I - 0x012407 04:A3F7: 82        .byte $82   ; 
- D 1 - I - 0x012408 04:A3F8: 24        .byte $24   ; 
- D 1 - I - 0x012409 04:A3F9: E2        .byte con_se_cb_E2, $37   ; 
- D 1 - I - 0x01240B 04:A3FB: EA        .byte con_se_cb_EA, $02   ; 
- D 1 - I - 0x01240D 04:A3FD: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x01240E 04:A3FE: 01        .byte $01   ; 
- D 1 - I - 0x01240F 04:A3FF: FD        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x012410 04:A400: 98 A4     .word sub_FD_A498
- D 1 - I - 0x012412 04:A402: E1        .byte con_se_cb_E1, $01   ; 
- D 1 - I - 0x012414 04:A404: 65        .byte $65   ; 
- D 1 - I - 0x012415 04:A405: 01        .byte $01   ; 
- D 1 - I - 0x012416 04:A406: D1        .byte $D1   ; 
- D 1 - I - 0x012417 04:A407: 64        .byte $64   ; 
- D 1 - I - 0x012418 04:A408: D0        .byte $D0   ; 
- D 1 - I - 0x012419 04:A409: E1        .byte con_se_cb_E1, $05   ; 
- D 1 - I - 0x01241B 04:A40B: FD        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x01241C 04:A40C: 98 A4     .word sub_FD_A498
- D 1 - I - 0x01241E 04:A40E: 61        .byte $61   ; 
- D 1 - I - 0x01241F 04:A40F: E7        .byte con_se_cb_E7, $57, $12   ; 
- D 1 - I - 0x012422 04:A412: E2        .byte con_se_cb_E2, $B8   ; 
- D 1 - I - 0x012424 04:A414: 45        .byte $45   ; 
- D 1 - I - 0x012425 04:A415: 32        .byte $32   ; 
- D 1 - I - 0x012426 04:A416: 31        .byte $31   ; 
- D 1 - I - 0x012427 04:A417: 42        .byte $42   ; 
- D 1 - I - 0x012428 04:A418: 32        .byte $32   ; 
- D 1 - I - 0x012429 04:A419: 41        .byte $41   ; 
- D 1 - I - 0x01242A 04:A41A: 63        .byte $63   ; 
- D 1 - I - 0x01242B 04:A41B: E0        .byte con_se_cb_E0   ; 
- D 1 - I - 0x01242C 04:A41C: 05        .byte $05   ; 
- D 1 - I - 0x01242D 04:A41D: B7        .byte $B7   ; 
- D 1 - I - 0x01242E 04:A41E: 82        .byte $82   ; 
- D 1 - I - 0x01242F 04:A41F: 36        .byte $36   ; 
- D 1 - I - 0x012430 04:A420: E7        .byte con_se_cb_E7, $00   ; 
- D 1 - I - 0x012432 04:A422: E2        .byte con_se_cb_E2, $77   ; 
- D 1 - I - 0x012434 04:A424: FD        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x012435 04:A425: AB A4     .word sub_FD_A4AB
- D 1 - I - 0x012437 04:A427: B2        .byte $B2   ; 
- D 1 - I - 0x012438 04:A428: A1        .byte $A1   ; 
- D 1 - I - 0x012439 04:A429: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x01243A 04:A42A: 31        .byte $31   ; 
- D 1 - I - 0x01243B 04:A42B: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x01243C 04:A42C: A1        .byte $A1   ; 
- D 1 - I - 0x01243D 04:A42D: 91        .byte $91   ; 
- D 1 - I - 0x01243E 04:A42E: E1        .byte con_se_cb_E1, $01   ; 
- D 1 - I - 0x012440 04:A430: A4        .byte $A4   ; 
- D 1 - I - 0x012441 04:A431: B3        .byte $B3   ; 
- D 1 - I - 0x012442 04:A432: C3        .byte $C3   ; 
- D 1 - I - 0x012443 04:A433: E1        .byte con_se_cb_E1, $05   ; 
- D 1 - I - 0x012445 04:A435: FD        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x012446 04:A436: AB A4     .word sub_FD_A4AB
- D 1 - I - 0x012448 04:A438: B1        .byte $B1   ; 
- D 1 - I - 0x012449 04:A439: A1        .byte $A1   ; 
- D 1 - I - 0x01244A 04:A43A: B1        .byte $B1   ; 
- D 1 - I - 0x01244B 04:A43B: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x01244C 04:A43C: 31        .byte $31   ; 
- D 1 - I - 0x01244D 04:A43D: 41        .byte $41   ; 
- D 1 - I - 0x01244E 04:A43E: 81        .byte $81   ; 
- D 1 - I - 0x01244F 04:A43F: B1        .byte $B1   ; 
- D 1 - I - 0x012450 04:A440: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x012451 04:A441: 41        .byte $41   ; 
- D 1 - I - 0x012452 04:A442: FE        .byte con_se_cb_jmp, $FF   ; 
- D 1 - I - 0x012454 04:A444: B7 A3     .word loc_FE_A3B7



sub_FD_A446:
- D 1 - I - 0x012456 04:A446: E2        .byte con_se_cb_E2, $38   ; 
- D 1 - I - 0x012458 04:A448: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x012459 04:A449: 34        .byte $34   ; 
- D 1 - I - 0x01245A 04:A44A: 01        .byte $01   ; 
- D 1 - I - 0x01245B 04:A44B: D3        .byte $D3   ; 
- D 1 - I - 0x01245C 04:A44C: 32        .byte $32   ; 
- D 1 - I - 0x01245D 04:A44D: D0        .byte $D0   ; 
- D 1 - I - 0x01245E 04:A44E: A4        .byte $A4   ; 
- D 1 - I - 0x01245F 04:A44F: 01        .byte $01   ; 
- D 1 - I - 0x012460 04:A450: D3        .byte $D3   ; 
- D 1 - I - 0x012461 04:A451: A2        .byte $A2   ; 
- D 1 - I - 0x012462 04:A452: D0        .byte $D0   ; 
- D 1 - I - 0x012463 04:A453: B4        .byte $B4   ; 
- D 1 - I - 0x012464 04:A454: 01        .byte $01   ; 
- D 1 - I - 0x012465 04:A455: D3        .byte $D3   ; 
- D 1 - I - 0x012466 04:A456: B2        .byte $B2   ; 
- D 1 - I - 0x012467 04:A457: D0        .byte $D0   ; 
- D 1 - I - 0x012468 04:A458: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x012469 04:A459: 44        .byte $44   ; 
- D 1 - I - 0x01246A 04:A45A: 01        .byte $01   ; 
- D 1 - I - 0x01246B 04:A45B: D3        .byte $D3   ; 
- D 1 - I - 0x01246C 04:A45C: 42        .byte $42   ; 
- D 1 - I - 0x01246D 04:A45D: D2        .byte $D2   ; 
- D 1 - I - 0x01246E 04:A45E: E5        .byte con_se_cb_E5, $00   ; 
- D 1 - I - 0x012470 04:A460: B6        .byte $B6   ; 
- D 1 - I - 0x012471 04:A461: E4        .byte con_se_cb_E4, $80   ; 
- D 1 - I - 0x012473 04:A463: D3        .byte $D3   ; 
- D 1 - I - 0x012474 04:A464: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x012475 04:A465: B6        .byte $B6   ; 
- D 1 - I - 0x012476 04:A466: E1        .byte con_se_cb_E1, $0A   ; 
- D 1 - I - 0x012478 04:A468: E7        .byte con_se_cb_E7, $57, $23   ; 
- D 1 - I - 0x01247B 04:A46B: BC        .byte $BC   ; 
- D 1 - I - 0x01247C 04:A46C: E7        .byte con_se_cb_E7, $00   ; 
- D 1 - I - 0x01247E 04:A46E: D0        .byte $D0   ; 
- D 1 - I - 0x01247F 04:A46F: FF        .byte con_se_cb_stop   ; 



sub_FD_A470:
- D 1 - I - 0x012480 04:A470: EA        .byte con_se_cb_EA, $02   ; 
- D 1 - I - 0x012482 04:A472: E7        .byte con_se_cb_E7, $00   ; 
- D 1 - I - 0x012484 04:A474: FB        .byte con_se_cb_FB   ; 
- D 1 - I - 0x012485 04:A475: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x012486 04:A476: 31        .byte $31   ; 
- D 1 - I - 0x012487 04:A477: 21        .byte $21   ; 
- D 1 - I - 0x012488 04:A478: 31        .byte $31   ; 
- D 1 - I - 0x012489 04:A479: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x01248A 04:A47A: 31        .byte $31   ; 
- D 1 - I - 0x01248B 04:A47B: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x01248C 04:A47C: 31        .byte $31   ; 
- D 1 - I - 0x01248D 04:A47D: 21        .byte $21   ; 
- D 1 - I - 0x01248E 04:A47E: 31        .byte $31   ; 
- D 1 - I - 0x01248F 04:A47F: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x012490 04:A480: 21        .byte $21   ; 
- D 1 - I - 0x012491 04:A481: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x012492 04:A482: 31        .byte $31   ; 
- D 1 - I - 0x012493 04:A483: 21        .byte $21   ; 
- D 1 - I - 0x012494 04:A484: 31        .byte $31   ; 
- D 1 - I - 0x012495 04:A485: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x012496 04:A486: 11        .byte $11   ; 
- D 1 - I - 0x012497 04:A487: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x012498 04:A488: 31        .byte $31   ; 
- D 1 - I - 0x012499 04:A489: 21        .byte $21   ; 
- D 1 - I - 0x01249A 04:A48A: 31        .byte $31   ; 
- D 1 - I - 0x01249B 04:A48B: C1        .byte $C1   ; 
- D 1 - I - 0x01249C 04:A48C: FE        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x01249D 04:A48D: 02        .byte $02   ; 
- D 1 - I - 0x01249E 04:A48E: FF        .byte con_se_cb_stop   ; 



sub_FD_A48F:
- D 1 - I - 0x01249F 04:A48F: A1        .byte $A1   ; 
- D 1 - I - 0x0124A0 04:A490: 91        .byte $91   ; 
- D 1 - I - 0x0124A1 04:A491: A1        .byte $A1   ; 
- D 1 - I - 0x0124A2 04:A492: B1        .byte $B1   ; 
- D 1 - I - 0x0124A3 04:A493: C1        .byte $C1   ; 
- D 1 - I - 0x0124A4 04:A494: B1        .byte $B1   ; 
- D 1 - I - 0x0124A5 04:A495: A1        .byte $A1   ; 
- D 1 - I - 0x0124A6 04:A496: 91        .byte $91   ; 
- D 1 - I - 0x0124A7 04:A497: FF        .byte con_se_cb_stop   ; 



sub_FD_A498:
- D 1 - I - 0x0124A8 04:A498: 31        .byte $31   ; 
- D 1 - I - 0x0124A9 04:A499: 21        .byte $21   ; 
- D 1 - I - 0x0124AA 04:A49A: 31        .byte $31   ; 
- D 1 - I - 0x0124AB 04:A49B: A1        .byte $A1   ; 
- D 1 - I - 0x0124AC 04:A49C: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0124AD 04:A49D: 31        .byte $31   ; 
- D 1 - I - 0x0124AE 04:A49E: 21        .byte $21   ; 
- D 1 - I - 0x0124AF 04:A49F: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0124B0 04:A4A0: 91        .byte $91   ; 
- D 1 - I - 0x0124B1 04:A4A1: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0124B2 04:A4A2: 11        .byte $11   ; 
- D 1 - I - 0x0124B3 04:A4A3: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0124B4 04:A4A4: 81        .byte $81   ; 
- D 1 - I - 0x0124B5 04:A4A5: B1        .byte $B1   ; 
- D 1 - I - 0x0124B6 04:A4A6: 61        .byte $61   ; 
- D 1 - I - 0x0124B7 04:A4A7: 91        .byte $91   ; 
- D 1 - I - 0x0124B8 04:A4A8: 41        .byte $41   ; 
- D 1 - I - 0x0124B9 04:A4A9: 11        .byte $11   ; 
- D 1 - I - 0x0124BA 04:A4AA: FF        .byte con_se_cb_stop   ; 



sub_FD_A4AB:
- D 1 - I - 0x0124BB 04:A4AB: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0124BC 04:A4AC: 14        .byte $14   ; 
- D 1 - I - 0x0124BD 04:A4AD: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0124BE 04:A4AE: C1        .byte $C1   ; 
- D 1 - I - 0x0124BF 04:A4AF: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0124C0 04:A4B0: 51        .byte $51   ; 
- D 1 - I - 0x0124C1 04:A4B1: 11        .byte $11   ; 
- D 1 - I - 0x0124C2 04:A4B2: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0124C3 04:A4B3: C1        .byte $C1   ; 
- D 1 - I - 0x0124C4 04:A4B4: FF        .byte con_se_cb_stop   ; 



_off000_A4B5_90_00:
- D 1 - I - 0x0124C5 04:A4B5: E0        .byte con_se_cb_E0   ; 
- D 1 - I - 0x0124C6 04:A4B6: 01        .byte $01   ; 
- D 1 - I - 0x0124C7 04:A4B7: 3A        .byte $3A   ; 
- D 1 - I - 0x0124C8 04:A4B8: 82        .byte $82   ; 
- D 1 - I - 0x0124C9 04:A4B9: 26        .byte $26   ; 
- D 1 - I - 0x0124CA 04:A4BA: E9        .byte con_se_cb_E9, $01   ; 
- D 1 - I - 0x0124CC 04:A4BC: E8        .byte con_se_cb_E8, $8C   ; 
- D 1 - I - 0x0124CE 04:A4BE: FD        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x0124CF 04:A4BF: 46 A4     .word sub_FD_A446
- D 1 - I - 0x0124D1 04:A4C1: E8        .byte con_se_cb_E8, $00   ; 
- D 1 - I - 0x0124D3 04:A4C3: E9        .byte con_se_cb_E9, $00   ; 
_off000_A4C5_94_00:
loc_FE_A4C5:
- D 1 - I - 0x0124D5 04:A4C5: E0        .byte con_se_cb_E0   ; 
- D 1 - I - 0x0124D6 04:A4C6: 05        .byte $05   ; 
- D 1 - I - 0x0124D7 04:A4C7: 76        .byte $76   ; 
- D 1 - I - 0x0124D8 04:A4C8: 81        .byte $81   ; 
- D 1 - I - 0x0124D9 04:A4C9: 24        .byte $24   ; 
- D 1 - I - 0x0124DA 04:A4CA: E2        .byte con_se_cb_E2, $78   ; 
- D 1 - I - 0x0124DC 04:A4CC: E8        .byte con_se_cb_E8, $89   ; 
- D 1 - I - 0x0124DE 04:A4CE: FD        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x0124DF 04:A4CF: 70 A4     .word sub_FD_A470
- D 1 - I - 0x0124E1 04:A4D1: E8        .byte con_se_cb_E8, $84   ; 
- D 1 - I - 0x0124E3 04:A4D3: FD        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x0124E4 04:A4D4: 70 A4     .word sub_FD_A470
- D 1 - I - 0x0124E6 04:A4D6: E8        .byte con_se_cb_E8, $00   ; 
- D 1 - I - 0x0124E8 04:A4D8: E0        .byte con_se_cb_E0   ; 
- D 1 - I - 0x0124E9 04:A4D9: 05        .byte $05   ; 
- D 1 - I - 0x0124EA 04:A4DA: 37        .byte $37   ; 
- D 1 - I - 0x0124EB 04:A4DB: 82        .byte $82   ; 
- D 1 - I - 0x0124EC 04:A4DC: 24        .byte $24   ; 
- D 1 - I - 0x0124ED 04:A4DD: E2        .byte con_se_cb_E2, $38   ; 
- D 1 - I - 0x0124EF 04:A4DF: E9        .byte con_se_cb_E9, $01   ; 
- D 1 - I - 0x0124F1 04:A4E1: EA        .byte con_se_cb_EA, $01   ; 
- D 1 - I - 0x0124F3 04:A4E3: E7        .byte con_se_cb_E7, $00   ; 
- D 1 - I - 0x0124F5 04:A4E5: D1        .byte $D1   ; 
- D 1 - I - 0x0124F6 04:A4E6: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0124F7 04:A4E7: FD        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x0124F8 04:A4E8: 85 A5     .word sub_FD_A585
- D 1 - I - 0x0124FA 04:A4EA: 81        .byte $81   ; 
- D 1 - I - 0x0124FB 04:A4EB: 71        .byte $71   ; 
- D 1 - I - 0x0124FC 04:A4EC: 81        .byte $81   ; 
- D 1 - I - 0x0124FD 04:A4ED: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0124FE 04:A4EE: 31        .byte $31   ; 
- D 1 - I - 0x0124FF 04:A4EF: 81        .byte $81   ; 
- D 1 - I - 0x012500 04:A4F0: 31        .byte $31   ; 
- D 1 - I - 0x012501 04:A4F1: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x012502 04:A4F2: 81        .byte $81   ; 
- D 1 - I - 0x012503 04:A4F3: 91        .byte $91   ; 
- D 1 - I - 0x012504 04:A4F4: FD        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x012505 04:A4F5: 85 A5     .word sub_FD_A585
- D 1 - I - 0x012507 04:A4F7: E2        .byte con_se_cb_E2, $F0   ; 
- D 1 - I - 0x012509 04:A4F9: E5        .byte con_se_cb_E5, $28   ; 
- D 1 - I - 0x01250B 04:A4FB: EA        .byte con_se_cb_EA, $00   ; 
- D 1 - I - 0x01250D 04:A4FD: D0        .byte $D0   ; 
- D 1 - I - 0x01250E 04:A4FE: 31        .byte $31   ; 
- D 1 - I - 0x01250F 04:A4FF: 81        .byte $81   ; 
- D 1 - I - 0x012510 04:A500: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x012511 04:A501: 31        .byte $31   ; 
- D 1 - I - 0x012512 04:A502: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x012513 04:A503: 61        .byte $61   ; 
- D 1 - I - 0x012514 04:A504: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x012515 04:A505: 61        .byte $61   ; 
- D 1 - I - 0x012516 04:A506: 11        .byte $11   ; 
- D 1 - I - 0x012517 04:A507: 81        .byte $81   ; 
- D 1 - I - 0x012518 04:A508: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x012519 04:A509: 11        .byte $11   ; 
- D 1 - I - 0x01251A 04:A50A: E0        .byte con_se_cb_E0   ; 
- D 1 - I - 0x01251B 04:A50B: 05        .byte $05   ; 
- D 1 - I - 0x01251C 04:A50C: 76        .byte $76   ; 
- D 1 - I - 0x01251D 04:A50D: 82        .byte $82   ; 
- D 1 - I - 0x01251E 04:A50E: 24        .byte $24   ; 
- D 1 - I - 0x01251F 04:A50F: E2        .byte con_se_cb_E2, $37   ; 
- D 1 - I - 0x012521 04:A511: E9        .byte con_se_cb_E9, $00   ; 
- D 1 - I - 0x012523 04:A513: EA        .byte con_se_cb_EA, $01   ; 
- D 1 - I - 0x012525 04:A515: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x012526 04:A516: 01        .byte $01   ; 
- D 1 - I - 0x012527 04:A517: FD        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x012528 04:A518: 90 A5     .word sub_FD_A590
- D 1 - I - 0x01252A 04:A51A: 11        .byte $11   ; 
- D 1 - I - 0x01252B 04:A51B: 61        .byte $61   ; 
- D 1 - I - 0x01252C 04:A51C: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x01252D 04:A51D: B1        .byte $B1   ; 
- D 1 - I - 0x01252E 04:A51E: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x01252F 04:A51F: 41        .byte $41   ; 
- D 1 - I - 0x012530 04:A520: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x012531 04:A521: 91        .byte $91   ; 
- D 1 - I - 0x012532 04:A522: 81        .byte $81   ; 
- D 1 - I - 0x012533 04:A523: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x012534 04:A524: E1        .byte con_se_cb_E1, $01   ; 
- D 1 - I - 0x012536 04:A526: 15        .byte $15   ; 
- D 1 - I - 0x012537 04:A527: 01        .byte $01   ; 
- D 1 - I - 0x012538 04:A528: D1        .byte $D1   ; 
- D 1 - I - 0x012539 04:A529: 14        .byte $14   ; 
- D 1 - I - 0x01253A 04:A52A: D0        .byte $D0   ; 
- D 1 - I - 0x01253B 04:A52B: E1        .byte con_se_cb_E1, $05   ; 
- D 1 - I - 0x01253D 04:A52D: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x01253E 04:A52E: FD        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x01253F 04:A52F: 90 A5     .word sub_FD_A590
- D 1 - I - 0x012541 04:A531: 31        .byte $31   ; 
- D 1 - I - 0x012542 04:A532: 61        .byte $61   ; 
- D 1 - I - 0x012543 04:A533: 11        .byte $11   ; 
- D 1 - I - 0x012544 04:A534: 41        .byte $41   ; 
- D 1 - I - 0x012545 04:A535: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x012546 04:A536: B1        .byte $B1   ; 
- D 1 - I - 0x012547 04:A537: 81        .byte $81   ; 
- D 1 - I - 0x012548 04:A538: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x012549 04:A539: 11        .byte $11   ; 
- D 1 - I - 0x01254A 04:A53A: E7        .byte con_se_cb_E7, $57, $12   ; 
- D 1 - I - 0x01254D 04:A53D: E2        .byte con_se_cb_E2, $B8   ; 
- D 1 - I - 0x01254F 04:A53F: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x012550 04:A540: C5        .byte $C5   ; 
- D 1 - I - 0x012551 04:A541: B2        .byte $B2   ; 
- D 1 - I - 0x012552 04:A542: B1        .byte $B1   ; 
- D 1 - I - 0x012553 04:A543: C2        .byte $C2   ; 
- D 1 - I - 0x012554 04:A544: B2        .byte $B2   ; 
- D 1 - I - 0x012555 04:A545: C1        .byte $C1   ; 
- D 1 - I - 0x012556 04:A546: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x012557 04:A547: 23        .byte $23   ; 
- D 1 - I - 0x012558 04:A548: E0        .byte con_se_cb_E0   ; 
- D 1 - I - 0x012559 04:A549: 05        .byte $05   ; 
- D 1 - I - 0x01255A 04:A54A: B8        .byte $B8   ; 
- D 1 - I - 0x01255B 04:A54B: 82        .byte $82   ; 
- D 1 - I - 0x01255C 04:A54C: 36        .byte $36   ; 
- D 1 - I - 0x01255D 04:A54D: E7        .byte con_se_cb_E7, $00   ; 
- D 1 - I - 0x01255F 04:A54F: E2        .byte con_se_cb_E2, $B8   ; 
- D 1 - I - 0x012561 04:A551: E9        .byte con_se_cb_E9, $01   ; 
- D 1 - I - 0x012563 04:A553: EA        .byte con_se_cb_EA, $01   ; 
- D 1 - I - 0x012565 04:A555: D2        .byte $D2   ; 
- D 1 - I - 0x012566 04:A556: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x012567 04:A557: 68        .byte $68   ; 
- D 1 - I - 0x012568 04:A558: 54        .byte $54   ; 
- D 1 - I - 0x012569 04:A559: D1        .byte $D1   ; 
- D 1 - I - 0x01256A 04:A55A: E5        .byte con_se_cb_E5, $13   ; 
- D 1 - I - 0x01256C 04:A55C: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x01256D 04:A55D: 51        .byte $51   ; 
- D 1 - I - 0x01256E 04:A55E: 41        .byte $41   ; 
- D 1 - I - 0x01256F 04:A55F: 31        .byte $31   ; 
- D 1 - I - 0x012570 04:A560: 21        .byte $21   ; 
- D 1 - I - 0x012571 04:A561: E5        .byte con_se_cb_E5, $36   ; 
- D 1 - I - 0x012573 04:A563: D1        .byte $D1   ; 
- D 1 - I - 0x012574 04:A564: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x012575 04:A565: 68        .byte $68   ; 
- D 1 - I - 0x012576 04:A566: E5        .byte con_se_cb_E5, $15   ; 
- D 1 - I - 0x012578 04:A568: E1        .byte con_se_cb_E1, $01   ; 
- D 1 - I - 0x01257A 04:A56A: E4        .byte con_se_cb_E4, $83   ; 
- D 1 - I - 0x01257C 04:A56C: EA        .byte con_se_cb_EA, $00   ; 
- D 1 - I - 0x01257E 04:A56E: E5        .byte con_se_cb_E5, $24   ; 
- D 1 - I - 0x012580 04:A570: E2        .byte con_se_cb_E2, $38   ; 
- D 1 - I - 0x012582 04:A572: D1        .byte $D1   ; 
- D 1 - I - 0x012583 04:A573: 34        .byte $34   ; 
- D 1 - I - 0x012584 04:A574: 23        .byte $23   ; 
- D 1 - I - 0x012585 04:A575: 13        .byte $13   ; 
- D 1 - I - 0x012586 04:A576: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x012587 04:A577: C4        .byte $C4   ; 
- D 1 - I - 0x012588 04:A578: B3        .byte $B3   ; 
- D 1 - I - 0x012589 04:A579: A3        .byte $A3   ; 
- D 1 - I - 0x01258A 04:A57A: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x01258B 04:A57B: 64        .byte $64   ; 
- D 1 - I - 0x01258C 04:A57C: 53        .byte $53   ; 
- D 1 - I - 0x01258D 04:A57D: 43        .byte $43   ; 
- D 1 - I - 0x01258E 04:A57E: 34        .byte $34   ; 
- D 1 - I - 0x01258F 04:A57F: 23        .byte $23   ; 
- D 1 - I - 0x012590 04:A580: 13        .byte $13   ; 
- D 1 - I - 0x012591 04:A581: FE        .byte con_se_cb_jmp, $FF   ; 
- D 1 - I - 0x012593 04:A583: C5 A4     .word loc_FE_A4C5



sub_FD_A585:
- D 1 - I - 0x012595 04:A585: A1        .byte $A1   ; 
- D 1 - I - 0x012596 04:A586: 91        .byte $91   ; 
- D 1 - I - 0x012597 04:A587: A1        .byte $A1   ; 
- D 1 - I - 0x012598 04:A588: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x012599 04:A589: 51        .byte $51   ; 
- D 1 - I - 0x01259A 04:A58A: A1        .byte $A1   ; 
- D 1 - I - 0x01259B 04:A58B: 51        .byte $51   ; 
- D 1 - I - 0x01259C 04:A58C: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x01259D 04:A58D: A1        .byte $A1   ; 
- D 1 - I - 0x01259E 04:A58E: 91        .byte $91   ; 
- D 1 - I - 0x01259F 04:A58F: FF        .byte con_se_cb_stop   ; 



sub_FD_A590:
- D 1 - I - 0x0125A0 04:A590: A1        .byte $A1   ; 
- D 1 - I - 0x0125A1 04:A591: 91        .byte $91   ; 
- D 1 - I - 0x0125A2 04:A592: A1        .byte $A1   ; 
- D 1 - I - 0x0125A3 04:A593: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0125A4 04:A594: 31        .byte $31   ; 
- D 1 - I - 0x0125A5 04:A595: A1        .byte $A1   ; 
- D 1 - I - 0x0125A6 04:A596: 91        .byte $91   ; 
- D 1 - I - 0x0125A7 04:A597: 41        .byte $41   ; 
- D 1 - I - 0x0125A8 04:A598: 81        .byte $81   ; 
- D 1 - I - 0x0125A9 04:A599: FF        .byte con_se_cb_stop   ; 



_off000_A59A_90_02:
- D 1 - I - 0x0125AA 04:A59A: E0        .byte con_se_cb_E0   ; 
- D 1 - I - 0x0125AB 04:A59B: 05        .byte $05   ; 
- D 1 - I - 0x0125AC 04:A59C: 05        .byte $05   ; 
- D 1 - I - 0x0125AD 04:A59D: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x0125AE 04:A59E: FB        .byte con_se_cb_FB   ; 
- D 1 - I - 0x0125AF 04:A59F: 32        .byte $32   ; 
- D 1 - I - 0x0125B0 04:A5A0: 32        .byte $32   ; 
- D 1 - I - 0x0125B1 04:A5A1: 04        .byte $04   ; 
- D 1 - I - 0x0125B2 04:A5A2: FE        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x0125B3 04:A5A3: 03        .byte $03   ; 
- D 1 - I - 0x0125B4 04:A5A4: 32        .byte $32   ; 
- D 1 - I - 0x0125B5 04:A5A5: 36        .byte $36   ; 



_off000_A5A6_94_02:
loc_FE_A5A6:
- D 1 - I - 0x0125B6 04:A5A6: E0        .byte con_se_cb_E0   ; 
- D 1 - I - 0x0125B7 04:A5A7: 05        .byte $05   ; 
- D 1 - I - 0x0125B8 04:A5A8: 05        .byte $05   ; 
- D 1 - I - 0x0125B9 04:A5A9: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0125BA 04:A5AA: FB        .byte con_se_cb_FB   ; 
- D 1 - I - 0x0125BB 04:A5AB: 32        .byte $32   ; 
- D 1 - I - 0x0125BC 04:A5AC: FE        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x0125BD 04:A5AD: 10        .byte $10   ; 
- D 1 - I - 0x0125BE 04:A5AE: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x0125BF 04:A5AF: FB        .byte con_se_cb_FB   ; 
- D 1 - I - 0x0125C0 04:A5B0: 82        .byte $82   ; 
- D 1 - I - 0x0125C1 04:A5B1: FE        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x0125C2 04:A5B2: 10        .byte $10   ; 
- D 1 - I - 0x0125C3 04:A5B3: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x0125C4 04:A5B4: A2        .byte $A2   ; 
- D 1 - I - 0x0125C5 04:A5B5: A2        .byte $A2   ; 
- D 1 - I - 0x0125C6 04:A5B6: A2        .byte $A2   ; 
- D 1 - I - 0x0125C7 04:A5B7: A2        .byte $A2   ; 
- D 1 - I - 0x0125C8 04:A5B8: 82        .byte $82   ; 
- D 1 - I - 0x0125C9 04:A5B9: 82        .byte $82   ; 
- D 1 - I - 0x0125CA 04:A5BA: 82        .byte $82   ; 
- D 1 - I - 0x0125CB 04:A5BB: 82        .byte $82   ; 
- D 1 - I - 0x0125CC 04:A5BC: A2        .byte $A2   ; 
- D 1 - I - 0x0125CD 04:A5BD: A2        .byte $A2   ; 
- D 1 - I - 0x0125CE 04:A5BE: A2        .byte $A2   ; 
- D 1 - I - 0x0125CF 04:A5BF: A2        .byte $A2   ; 
- D 1 - I - 0x0125D0 04:A5C0: 42        .byte $42   ; 
- D 1 - I - 0x0125D1 04:A5C1: B2        .byte $B2   ; 
- D 1 - I - 0x0125D2 04:A5C2: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0125D3 04:A5C3: 12        .byte $12   ; 
- D 1 - I - 0x0125D4 04:A5C4: 62        .byte $62   ; 
- D 1 - I - 0x0125D5 04:A5C5: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0125D6 04:A5C6: FB        .byte con_se_cb_FB   ; 
- D 1 - I - 0x0125D7 04:A5C7: 32        .byte $32   ; 
- D 1 - I - 0x0125D8 04:A5C8: FE        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x0125D9 04:A5C9: 10        .byte $10   ; 
- D 1 - I - 0x0125DA 04:A5CA: FB        .byte con_se_cb_FB   ; 
- D 1 - I - 0x0125DB 04:A5CB: 22        .byte $22   ; 
- D 1 - I - 0x0125DC 04:A5CC: FE        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x0125DD 04:A5CD: 08        .byte $08   ; 
- D 1 - I - 0x0125DE 04:A5CE: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0125DF 04:A5CF: FB        .byte con_se_cb_FB   ; 
- D 1 - I - 0x0125E0 04:A5D0: 32        .byte $32   ; 
- D 1 - I - 0x0125E1 04:A5D1: FE        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x0125E2 04:A5D2: 04        .byte $04   ; 
- D 1 - I - 0x0125E3 04:A5D3: FB        .byte con_se_cb_FB   ; 
- D 1 - I - 0x0125E4 04:A5D4: 22        .byte $22   ; 
- D 1 - I - 0x0125E5 04:A5D5: FE        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x0125E6 04:A5D6: 04        .byte $04   ; 
- D 1 - I - 0x0125E7 04:A5D7: FB        .byte con_se_cb_FB   ; 
- D 1 - I - 0x0125E8 04:A5D8: 32        .byte $32   ; 
- D 1 - I - 0x0125E9 04:A5D9: FE        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x0125EA 04:A5DA: 04        .byte $04   ; 
- D 1 - I - 0x0125EB 04:A5DB: 22        .byte $22   ; 
- D 1 - I - 0x0125EC 04:A5DC: 12        .byte $12   ; 
- D 1 - I - 0x0125ED 04:A5DD: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x0125EE 04:A5DE: C2        .byte $C2   ; 
- D 1 - I - 0x0125EF 04:A5DF: B2        .byte $B2   ; 
- D 1 - I - 0x0125F0 04:A5E0: FE        .byte con_se_cb_jmp, $FF   ; 
- D 1 - I - 0x0125F2 04:A5E2: A6 A5     .word loc_FE_A5A6



_off000_A5E4_90_03:
- D 1 - I - 0x0125F4 04:A5E4: E0        .byte con_se_cb_E0   ; 
- D 1 - I - 0x0125F5 04:A5E5: 05        .byte $05   ; 
- D 1 - I - 0x0125F6 04:A5E6: FB        .byte con_se_cb_FB   ; 
- D 1 - I - 0x0125F7 04:A5E7: 52        .byte $52   ; 
- D 1 - I - 0x0125F8 04:A5E8: 56        .byte $56   ; 
- D 1 - I - 0x0125F9 04:A5E9: FE        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x0125FA 04:A5EA: 04        .byte $04   ; 



_off000_A5EB_94_03:
loc_FE_A5EB:
- D 1 - I - 0x0125FB 04:A5EB: E0        .byte con_se_cb_E0   ; 
- D 1 - I - 0x0125FC 04:A5EC: 05        .byte $05   ; 
- D 1 - I - 0x0125FD 04:A5ED: 52        .byte $52   ; 
- D 1 - I - 0x0125FE 04:A5EE: 52        .byte $52   ; 
- D 1 - I - 0x0125FF 04:A5EF: FB        .byte con_se_cb_FB   ; 
- D 1 - I - 0x012600 04:A5F0: C2        .byte $C2   ; 
- D 1 - I - 0x012601 04:A5F1: FE        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x012602 04:A5F2: 0C        .byte $0C   ; 
- D 1 - I - 0x012603 04:A5F3: B1        .byte $B1   ; 
- D 1 - I - 0x012604 04:A5F4: B1        .byte $B1   ; 
- D 1 - I - 0x012605 04:A5F5: FB        .byte con_se_cb_FB   ; 
- D 1 - I - 0x012606 04:A5F6: B2        .byte $B2   ; 
- D 1 - I - 0x012607 04:A5F7: FE        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x012608 04:A5F8: 0F        .byte $0F   ; 
- D 1 - I - 0x012609 04:A5F9: FB        .byte con_se_cb_FB   ; 
- D 1 - I - 0x01260A 04:A5FA: B1        .byte $B1   ; 
- D 1 - I - 0x01260B 04:A5FB: FE        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x01260C 04:A5FC: 04        .byte $04   ; 
- D 1 - I - 0x01260D 04:A5FD: FB        .byte con_se_cb_FB   ; 
- D 1 - I - 0x01260E 04:A5FE: C2        .byte $C2   ; 
- D 1 - I - 0x01260F 04:A5FF: C2        .byte $C2   ; 
- D 1 - I - 0x012610 04:A600: B2        .byte $B2   ; 
- D 1 - I - 0x012611 04:A601: C2        .byte $C2   ; 
- D 1 - I - 0x012612 04:A602: FE        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x012613 04:A603: 03        .byte $03   ; 
- D 1 - I - 0x012614 04:A604: C2        .byte $C2   ; 
- D 1 - I - 0x012615 04:A605: C2        .byte $C2   ; 
- D 1 - I - 0x012616 04:A606: B2        .byte $B2   ; 
- D 1 - I - 0x012617 04:A607: 11        .byte $11   ; 
- D 1 - I - 0x012618 04:A608: B1        .byte $B1   ; 
- D 1 - I - 0x012619 04:A609: FB        .byte con_se_cb_FB   ; 
- D 1 - I - 0x01261A 04:A60A: B2        .byte $B2   ; 
- D 1 - I - 0x01261B 04:A60B: 11        .byte $11   ; 
- D 1 - I - 0x01261C 04:A60C: 11        .byte $11   ; 
- D 1 - I - 0x01261D 04:A60D: FE        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x01261E 04:A60E: 08        .byte $08   ; 
- D 1 - I - 0x01261F 04:A60F: FB        .byte con_se_cb_FB   ; 
- D 1 - I - 0x012620 04:A610: B2        .byte $B2   ; 
- D 1 - I - 0x012621 04:A611: FE        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x012622 04:A612: 08        .byte $08   ; 
- D 1 - I - 0x012623 04:A613: FB        .byte con_se_cb_FB   ; 
- D 1 - I - 0x012624 04:A614: C2        .byte $C2   ; 
- D 1 - I - 0x012625 04:A615: C2        .byte $C2   ; 
- D 1 - I - 0x012626 04:A616: B2        .byte $B2   ; 
- D 1 - I - 0x012627 04:A617: C2        .byte $C2   ; 
- D 1 - I - 0x012628 04:A618: FE        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x012629 04:A619: 03        .byte $03   ; 
- D 1 - I - 0x01262A 04:A61A: B1        .byte $B1   ; 
- D 1 - I - 0x01262B 04:A61B: B1        .byte $B1   ; 
- D 1 - I - 0x01262C 04:A61C: 11        .byte $11   ; 
- D 1 - I - 0x01262D 04:A61D: 11        .byte $11   ; 
- D 1 - I - 0x01262E 04:A61E: B1        .byte $B1   ; 
- D 1 - I - 0x01262F 04:A61F: B1        .byte $B1   ; 
- D 1 - I - 0x012630 04:A620: 32        .byte $32   ; 
- D 1 - I - 0x012631 04:A621: FE        .byte con_se_cb_jmp, $FF   ; 
- D 1 - I - 0x012633 04:A623: EB A5     .word loc_FE_A5EB



_off000_A625_98_01:
loc_FE_A625:
- D 1 - I - 0x012635 04:A625: E0        .byte con_se_cb_E0   ; 
- D 1 - I - 0x012636 04:A626: 06        .byte $06   ; 
- D 1 - I - 0x012637 04:A627: 36        .byte $36   ; 
- D 1 - I - 0x012638 04:A628: 83        .byte $83   ; 
- D 1 - I - 0x012639 04:A629: A1        .byte $A1   ; 
- D 1 - I - 0x01263A 04:A62A: EB        .byte con_se_cb_EB, $05, $10, $02   ; 
- D 1 - I - 0x01263E 04:A62E: E2        .byte con_se_cb_E2, $B1   ; 
- D 1 - I - 0x012640 04:A630: E7        .byte con_se_cb_E7, $50, $43   ; 
- D 1 - I - 0x012643 04:A633: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x012644 04:A634: EC        .byte con_se_cb_EC, $07, $10, $02   ; 
- D 1 - I - 0x012648 04:A638: E1        .byte con_se_cb_E1, $0C   ; 
- D 1 - I - 0x01264A 04:A63A: 3C        .byte $3C   ; 
- D 1 - I - 0x01264B 04:A63B: EC        .byte con_se_cb_EC, $00   ; 
- D 1 - I - 0x01264D 04:A63D: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x01264E 04:A63E: 3C        .byte $3C   ; 
- D 1 - I - 0x01264F 04:A63F: E0        .byte con_se_cb_E0   ; 
- D 1 - I - 0x012650 04:A640: 06        .byte $06   ; 
- D 1 - I - 0x012651 04:A641: 75        .byte $75   ; 
- D 1 - I - 0x012652 04:A642: 81        .byte $81   ; 
- D 1 - I - 0x012653 04:A643: 16        .byte $16   ; 
- D 1 - I - 0x012654 04:A644: E2        .byte con_se_cb_E2, $37   ; 
- D 1 - I - 0x012656 04:A646: EA        .byte con_se_cb_EA, $02   ; 
- D 1 - I - 0x012658 04:A648: EB        .byte con_se_cb_EB, $02, $10, $02   ; 
- D 1 - I - 0x01265C 04:A64C: FB        .byte con_se_cb_FB   ; 
- D 1 - I - 0x01265D 04:A64D: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x01265E 04:A64E: 32        .byte $32   ; 
- D 1 - I - 0x01265F 04:A64F: 62        .byte $62   ; 
- D 1 - I - 0x012660 04:A650: A2        .byte $A2   ; 
- D 1 - I - 0x012661 04:A651: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x012662 04:A652: 11        .byte $11   ; 
- D 1 - I - 0x012663 04:A653: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x012664 04:A654: 52        .byte $52   ; 
- D 1 - I - 0x012665 04:A655: 81        .byte $81   ; 
- D 1 - I - 0x012666 04:A656: C1        .byte $C1   ; 
- D 1 - I - 0x012667 04:A657: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x012668 04:A658: 31        .byte $31   ; 
- D 1 - I - 0x012669 04:A659: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x01266A 04:A65A: 62        .byte $62   ; 
- D 1 - I - 0x01266B 04:A65B: A2        .byte $A2   ; 
- D 1 - I - 0x01266C 04:A65C: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x01266D 04:A65D: 12        .byte $12   ; 
- D 1 - I - 0x01266E 04:A65E: 61        .byte $61   ; 
- D 1 - I - 0x01266F 04:A65F: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x012670 04:A660: 82        .byte $82   ; 
- D 1 - I - 0x012671 04:A661: C1        .byte $C1   ; 
- D 1 - I - 0x012672 04:A662: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x012673 04:A663: 31        .byte $31   ; 
- D 1 - I - 0x012674 04:A664: 81        .byte $81   ; 
- D 1 - I - 0x012675 04:A665: FE        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x012676 04:A666: 02        .byte $02   ; 
- D 1 - I - 0x012677 04:A667: D1        .byte $D1   ; 
- D 1 - I - 0x012678 04:A668: E6        .byte con_se_cb_E6, $41   ; 
- D 1 - I - 0x01267A 04:A66A: EB        .byte con_se_cb_EB, $01, $10, $01   ; 
- D 1 - I - 0x01267E 04:A66E: 81        .byte $81   ; 
- D 1 - I - 0x01267F 04:A66F: A1        .byte $A1   ; 
- D 1 - I - 0x012680 04:A670: 61        .byte $61   ; 
- D 1 - I - 0x012681 04:A671: 31        .byte $31   ; 
- D 1 - I - 0x012682 04:A672: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x012683 04:A673: 32        .byte $32   ; 
- D 1 - I - 0x012684 04:A674: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x012685 04:A675: 81        .byte $81   ; 
- D 1 - I - 0x012686 04:A676: A2        .byte $A2   ; 
- D 1 - I - 0x012687 04:A677: 31        .byte $31   ; 
- D 1 - I - 0x012688 04:A678: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x012689 04:A679: 32        .byte $32   ; 
- D 1 - I - 0x01268A 04:A67A: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x01268B 04:A67B: 81        .byte $81   ; 
- D 1 - I - 0x01268C 04:A67C: A1        .byte $A1   ; 
- D 1 - I - 0x01268D 04:A67D: 51        .byte $51   ; 
- D 1 - I - 0x01268E 04:A67E: 11        .byte $11   ; 
- D 1 - I - 0x01268F 04:A67F: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x012690 04:A680: 32        .byte $32   ; 
- D 1 - I - 0x012691 04:A681: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x012692 04:A682: 81        .byte $81   ; 
- D 1 - I - 0x012693 04:A683: A1        .byte $A1   ; 
- D 1 - I - 0x012694 04:A684: 11        .byte $11   ; 
- D 1 - I - 0x012695 04:A685: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x012696 04:A686: 33        .byte $33   ; 
- D 1 - I - 0x012697 04:A687: E6        .byte con_se_cb_E6, $00   ; 
- D 1 - I - 0x012699 04:A689: D0        .byte $D0   ; 
- D 1 - I - 0x01269A 04:A68A: F0        .byte con_se_cb_F0   ; 
- D 1 - I - 0x01269B 04:A68B: 32        .byte $32   ; 
- D 1 - I - 0x01269C 04:A68C: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x01269D 04:A68D: A1        .byte $A1   ; 
- D 1 - I - 0x01269E 04:A68E: F0        .byte con_se_cb_F0   ; 
- D 1 - I - 0x01269F 04:A68F: 31        .byte $31   ; 
- D 1 - I - 0x0126A0 04:A690: E7        .byte con_se_cb_E7, $50, $22   ; 
- D 1 - I - 0x0126A3 04:A693: E5        .byte con_se_cb_E5, $22   ; 
- D 1 - I - 0x0126A5 04:A695: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0126A6 04:A696: 14        .byte $14   ; 
- D 1 - I - 0x0126A7 04:A697: E5        .byte con_se_cb_E5, $16   ; 
- D 1 - I - 0x0126A9 04:A699: E1        .byte con_se_cb_E1, $04   ; 
- D 1 - I - 0x0126AB 04:A69B: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0126AC 04:A69C: C1        .byte $C1   ; 
- D 1 - I - 0x0126AD 04:A69D: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0126AE 04:A69E: 11        .byte $11   ; 
- D 1 - I - 0x0126AF 04:A69F: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0126B0 04:A6A0: C1        .byte $C1   ; 
- D 1 - I - 0x0126B1 04:A6A1: 81        .byte $81   ; 
- D 1 - I - 0x0126B2 04:A6A2: 31        .byte $31   ; 
- D 1 - I - 0x0126B3 04:A6A3: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x0126B4 04:A6A4: C1        .byte $C1   ; 
- D 1 - I - 0x0126B5 04:A6A5: E1        .byte con_se_cb_E1, $06   ; 
- D 1 - I - 0x0126B7 04:A6A7: EA        .byte con_se_cb_EA, $00   ; 
- D 1 - I - 0x0126B9 04:A6A9: EB        .byte con_se_cb_EB, $01, $10, $01   ; 
- D 1 - I - 0x0126BD 04:A6AD: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0126BE 04:A6AE: 61        .byte $61   ; 
- D 1 - I - 0x0126BF 04:A6AF: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x0126C0 04:A6B0: A1        .byte $A1   ; 
- D 1 - I - 0x0126C1 04:A6B1: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0126C2 04:A6B2: 81        .byte $81   ; 
- D 1 - I - 0x0126C3 04:A6B3: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x0126C4 04:A6B4: C1        .byte $C1   ; 
- D 1 - I - 0x0126C5 04:A6B5: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0126C6 04:A6B6: A1        .byte $A1   ; 
- D 1 - I - 0x0126C7 04:A6B7: 11        .byte $11   ; 
- D 1 - I - 0x0126C8 04:A6B8: C1        .byte $C1   ; 
- D 1 - I - 0x0126C9 04:A6B9: 31        .byte $31   ; 
- D 1 - I - 0x0126CA 04:A6BA: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0126CB 04:A6BB: 11        .byte $11   ; 
- D 1 - I - 0x0126CC 04:A6BC: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0126CD 04:A6BD: 51        .byte $51   ; 
- D 1 - I - 0x0126CE 04:A6BE: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0126CF 04:A6BF: 31        .byte $31   ; 
- D 1 - I - 0x0126D0 04:A6C0: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0126D1 04:A6C1: 81        .byte $81   ; 
- D 1 - I - 0x0126D2 04:A6C2: F0        .byte con_se_cb_F0   ; 
- D 1 - I - 0x0126D3 04:A6C3: 32        .byte $32   ; 
- D 1 - I - 0x0126D4 04:A6C4: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0126D5 04:A6C5: A1        .byte $A1   ; 
- D 1 - I - 0x0126D6 04:A6C6: F0        .byte con_se_cb_F0   ; 
- D 1 - I - 0x0126D7 04:A6C7: 31        .byte $31   ; 
- D 1 - I - 0x0126D8 04:A6C8: E5        .byte con_se_cb_E5, $11   ; 
- D 1 - I - 0x0126DA 04:A6CA: E7        .byte con_se_cb_E7, $50, $22   ; 
- D 1 - I - 0x0126DD 04:A6CD: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0126DE 04:A6CE: 13        .byte $13   ; 
- D 1 - I - 0x0126DF 04:A6CF: E1        .byte con_se_cb_E1, $02   ; 
- D 1 - I - 0x0126E1 04:A6D1: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0126E2 04:A6D2: C5        .byte $C5   ; 
- D 1 - I - 0x0126E3 04:A6D3: E5        .byte con_se_cb_E5, $16   ; 
- D 1 - I - 0x0126E5 04:A6D5: E1        .byte con_se_cb_E1, $04   ; 
- D 1 - I - 0x0126E7 04:A6D7: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0126E8 04:A6D8: 11        .byte $11   ; 
- D 1 - I - 0x0126E9 04:A6D9: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0126EA 04:A6DA: C1        .byte $C1   ; 
- D 1 - I - 0x0126EB 04:A6DB: 81        .byte $81   ; 
- D 1 - I - 0x0126EC 04:A6DC: 31        .byte $31   ; 
- D 1 - I - 0x0126ED 04:A6DD: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x0126EE 04:A6DE: C1        .byte $C1   ; 
- D 1 - I - 0x0126EF 04:A6DF: E1        .byte con_se_cb_E1, $06   ; 
- D 1 - I - 0x0126F1 04:A6E1: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0126F2 04:A6E2: 61        .byte $61   ; 
- D 1 - I - 0x0126F3 04:A6E3: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x0126F4 04:A6E4: A1        .byte $A1   ; 
- D 1 - I - 0x0126F5 04:A6E5: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0126F6 04:A6E6: 51        .byte $51   ; 
- D 1 - I - 0x0126F7 04:A6E7: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0126F8 04:A6E8: 81        .byte $81   ; 
- D 1 - I - 0x0126F9 04:A6E9: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0126FA 04:A6EA: 31        .byte $31   ; 
- D 1 - I - 0x0126FB 04:A6EB: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0126FC 04:A6EC: 61        .byte $61   ; 
- D 1 - I - 0x0126FD 04:A6ED: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0126FE 04:A6EE: 11        .byte $11   ; 
- D 1 - I - 0x0126FF 04:A6EF: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x012700 04:A6F0: 51        .byte $51   ; 
- D 1 - I - 0x012701 04:A6F1: C1        .byte $C1   ; 
- D 1 - I - 0x012702 04:A6F2: 31        .byte $31   ; 
- D 1 - I - 0x012703 04:A6F3: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x012704 04:A6F4: 11        .byte $11   ; 
- D 1 - I - 0x012705 04:A6F5: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x012706 04:A6F6: 51        .byte $51   ; 
- D 1 - I - 0x012707 04:A6F7: E0        .byte con_se_cb_E0   ; 
- D 1 - I - 0x012708 04:A6F8: 06        .byte $06   ; 
- D 1 - I - 0x012709 04:A6F9: 74        .byte $74   ; 
- D 1 - I - 0x01270A 04:A6FA: 80        .byte $80   ; 
- D 1 - I - 0x01270B 04:A6FB: 15        .byte $15   ; 
- D 1 - I - 0x01270C 04:A6FC: E2        .byte con_se_cb_E2, $76   ; 
- D 1 - I - 0x01270E 04:A6FE: EA        .byte con_se_cb_EA, $03   ; 
- D 1 - I - 0x012710 04:A700: E6        .byte con_se_cb_E6, $41   ; 
- D 1 - I - 0x012712 04:A702: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x012713 04:A703: 31        .byte $31   ; 
- D 1 - I - 0x012714 04:A704: 11        .byte $11   ; 
- D 1 - I - 0x012715 04:A705: 61        .byte $61   ; 
- D 1 - I - 0x012716 04:A706: 81        .byte $81   ; 
- D 1 - I - 0x012717 04:A707: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x012718 04:A708: 11        .byte $11   ; 
- D 1 - I - 0x012719 04:A709: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x01271A 04:A70A: 81        .byte $81   ; 
- D 1 - I - 0x01271B 04:A70B: 31        .byte $31   ; 
- D 1 - I - 0x01271C 04:A70C: 11        .byte $11   ; 
- D 1 - I - 0x01271D 04:A70D: 61        .byte $61   ; 
- D 1 - I - 0x01271E 04:A70E: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x01271F 04:A70F: 11        .byte $11   ; 
- D 1 - I - 0x012720 04:A710: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x012721 04:A711: 81        .byte $81   ; 
- D 1 - I - 0x012722 04:A712: 11        .byte $11   ; 
- D 1 - I - 0x012723 04:A713: 31        .byte $31   ; 
- D 1 - I - 0x012724 04:A714: 11        .byte $11   ; 
- D 1 - I - 0x012725 04:A715: 61        .byte $61   ; 
- D 1 - I - 0x012726 04:A716: 81        .byte $81   ; 
- D 1 - I - 0x012727 04:A717: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x012728 04:A718: 11        .byte $11   ; 
- D 1 - I - 0x012729 04:A719: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x01272A 04:A71A: 81        .byte $81   ; 
- D 1 - I - 0x01272B 04:A71B: 31        .byte $31   ; 
- D 1 - I - 0x01272C 04:A71C: 11        .byte $11   ; 
- D 1 - I - 0x01272D 04:A71D: 61        .byte $61   ; 
- D 1 - I - 0x01272E 04:A71E: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x01272F 04:A71F: 51        .byte $51   ; 
- D 1 - I - 0x012730 04:A720: 31        .byte $31   ; 
- D 1 - I - 0x012731 04:A721: 11        .byte $11   ; 
- D 1 - I - 0x012732 04:A722: EA        .byte con_se_cb_EA, $00   ; 
- D 1 - I - 0x012734 04:A724: E6        .byte con_se_cb_E6, $00   ; 
- D 1 - I - 0x012736 04:A726: FE        .byte con_se_cb_jmp, $FF   ; 
- D 1 - I - 0x012738 04:A728: 25 A6     .word loc_FE_A625



_off000_A72A_98_00_disable:
- D 1 - I - 0x01273A 04:A72A: FF        .byte con_se_cb_stop   ; 



_off000_A72B_98_02:
loc_FE_A72B:
- D 1 - I - 0x01273B 04:A72B: E0        .byte con_se_cb_E0   ; 
- D 1 - I - 0x01273C 04:A72C: 06        .byte $06   ; 
- D 1 - I - 0x01273D 04:A72D: 05        .byte $05   ; 
- D 1 - I - 0x01273E 04:A72E: FB        .byte con_se_cb_FB   ; 
- D 1 - I - 0x01273F 04:A72F: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x012740 04:A730: 32        .byte $32   ; 
- D 1 - I - 0x012741 04:A731: 32        .byte $32   ; 
- D 1 - I - 0x012742 04:A732: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x012743 04:A733: 52        .byte $52   ; 
- D 1 - I - 0x012744 04:A734: 31        .byte $31   ; 
- D 1 - I - 0x012745 04:A735: 62        .byte $62   ; 
- D 1 - I - 0x012746 04:A736: 31        .byte $31   ; 
- D 1 - I - 0x012747 04:A737: 12        .byte $12   ; 
- D 1 - I - 0x012748 04:A738: FE        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x012749 04:A739: 04        .byte $04   ; 
- D 1 - I - 0x01274A 04:A73A: FB        .byte con_se_cb_FB   ; 
- D 1 - I - 0x01274B 04:A73B: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x01274C 04:A73C: 32        .byte $32   ; 
- D 1 - I - 0x01274D 04:A73D: 32        .byte $32   ; 
- D 1 - I - 0x01274E 04:A73E: A2        .byte $A2   ; 
- D 1 - I - 0x01274F 04:A73F: 31        .byte $31   ; 
- D 1 - I - 0x012750 04:A740: 32        .byte $32   ; 
- D 1 - I - 0x012751 04:A741: 31        .byte $31   ; 
- D 1 - I - 0x012752 04:A742: C2        .byte $C2   ; 
- D 1 - I - 0x012753 04:A743: 32        .byte $32   ; 
- D 1 - I - 0x012754 04:A744: 32        .byte $32   ; 
- D 1 - I - 0x012755 04:A745: A2        .byte $A2   ; 
- D 1 - I - 0x012756 04:A746: 31        .byte $31   ; 
- D 1 - I - 0x012757 04:A747: 32        .byte $32   ; 
- D 1 - I - 0x012758 04:A748: 31        .byte $31   ; 
- D 1 - I - 0x012759 04:A749: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x01275A 04:A74A: 32        .byte $32   ; 
- D 1 - I - 0x01275B 04:A74B: FE        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x01275C 04:A74C: 02        .byte $02   ; 
- D 1 - I - 0x01275D 04:A74D: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x01275E 04:A74E: B2        .byte $B2   ; 
- D 1 - I - 0x01275F 04:A74F: B2        .byte $B2   ; 
- D 1 - I - 0x012760 04:A750: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x012761 04:A751: B2        .byte $B2   ; 
- D 1 - I - 0x012762 04:A752: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x012763 04:A753: B2        .byte $B2   ; 
- D 1 - I - 0x012764 04:A754: B2        .byte $B2   ; 
- D 1 - I - 0x012765 04:A755: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x012766 04:A756: B2        .byte $B2   ; 
- D 1 - I - 0x012767 04:A757: 12        .byte $12   ; 
- D 1 - I - 0x012768 04:A758: 12        .byte $12   ; 
- D 1 - I - 0x012769 04:A759: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x01276A 04:A75A: 12        .byte $12   ; 
- D 1 - I - 0x01276B 04:A75B: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x01276C 04:A75C: 12        .byte $12   ; 
- D 1 - I - 0x01276D 04:A75D: 12        .byte $12   ; 
- D 1 - I - 0x01276E 04:A75E: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x01276F 04:A75F: 12        .byte $12   ; 
- D 1 - I - 0x012770 04:A760: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x012771 04:A761: 32        .byte $32   ; 
- D 1 - I - 0x012772 04:A762: 32        .byte $32   ; 
- D 1 - I - 0x012773 04:A763: A2        .byte $A2   ; 
- D 1 - I - 0x012774 04:A764: 32        .byte $32   ; 
- D 1 - I - 0x012775 04:A765: 32        .byte $32   ; 
- D 1 - I - 0x012776 04:A766: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x012777 04:A767: 32        .byte $32   ; 
- D 1 - I - 0x012778 04:A768: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x012779 04:A769: 32        .byte $32   ; 
- D 1 - I - 0x01277A 04:A76A: 52        .byte $52   ; 
- D 1 - I - 0x01277B 04:A76B: 62        .byte $62   ; 
- D 1 - I - 0x01277C 04:A76C: 82        .byte $82   ; 
- D 1 - I - 0x01277D 04:A76D: A2        .byte $A2   ; 
- D 1 - I - 0x01277E 04:A76E: C2        .byte $C2   ; 
- D 1 - I - 0x01277F 04:A76F: 32        .byte $32   ; 
- D 1 - I - 0x012780 04:A770: 32        .byte $32   ; 
- D 1 - I - 0x012781 04:A771: A2        .byte $A2   ; 
- D 1 - I - 0x012782 04:A772: 32        .byte $32   ; 
- D 1 - I - 0x012783 04:A773: 32        .byte $32   ; 
- D 1 - I - 0x012784 04:A774: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x012785 04:A775: 32        .byte $32   ; 
- D 1 - I - 0x012786 04:A776: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x012787 04:A777: 32        .byte $32   ; 
- D 1 - I - 0x012788 04:A778: 52        .byte $52   ; 
- D 1 - I - 0x012789 04:A779: 62        .byte $62   ; 
- D 1 - I - 0x01278A 04:A77A: 82        .byte $82   ; 
- D 1 - I - 0x01278B 04:A77B: A2        .byte $A2   ; 
- D 1 - I - 0x01278C 04:A77C: B2        .byte $B2   ; 
- D 1 - I - 0x01278D 04:A77D: E0        .byte con_se_cb_E0   ; 
- D 1 - I - 0x01278E 04:A77E: 06        .byte $06   ; 
- D 1 - I - 0x01278F 04:A77F: 02        .byte $02   ; 
- D 1 - I - 0x012790 04:A780: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x012791 04:A781: B2        .byte $B2   ; 
- D 1 - I - 0x012792 04:A782: B2        .byte $B2   ; 
- D 1 - I - 0x012793 04:A783: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x012794 04:A784: B2        .byte $B2   ; 
- D 1 - I - 0x012795 04:A785: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x012796 04:A786: B2        .byte $B2   ; 
- D 1 - I - 0x012797 04:A787: B2        .byte $B2   ; 
- D 1 - I - 0x012798 04:A788: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x012799 04:A789: B2        .byte $B2   ; 
- D 1 - I - 0x01279A 04:A78A: 12        .byte $12   ; 
- D 1 - I - 0x01279B 04:A78B: 12        .byte $12   ; 
- D 1 - I - 0x01279C 04:A78C: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x01279D 04:A78D: 12        .byte $12   ; 
- D 1 - I - 0x01279E 04:A78E: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x01279F 04:A78F: 12        .byte $12   ; 
- D 1 - I - 0x0127A0 04:A790: B2        .byte $B2   ; 
- D 1 - I - 0x0127A1 04:A791: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0127A2 04:A792: 12        .byte $12   ; 
- D 1 - I - 0x0127A3 04:A793: FE        .byte con_se_cb_jmp, $FF   ; 
- D 1 - I - 0x0127A5 04:A795: 2B A7     .word loc_FE_A72B



_off000_A797_98_03:
loc_FE_A797:
- D 1 - I - 0x0127A7 04:A797: E0        .byte con_se_cb_E0   ; 
- D 1 - I - 0x0127A8 04:A798: 06        .byte $06   ; 
- D 1 - I - 0x0127A9 04:A799: FB        .byte con_se_cb_FB   ; 
- D 1 - I - 0x0127AA 04:A79A: 52        .byte $52   ; 
- D 1 - I - 0x0127AB 04:A79B: 52        .byte $52   ; 
- D 1 - I - 0x0127AC 04:A79C: B3        .byte $B3   ; 
- D 1 - I - 0x0127AD 04:A79D: B5        .byte $B5   ; 
- D 1 - I - 0x0127AE 04:A79E: FE        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x0127AF 04:A79F: 03        .byte $03   ; 
- D 1 - I - 0x0127B0 04:A7A0: 52        .byte $52   ; 
- D 1 - I - 0x0127B1 04:A7A1: 52        .byte $52   ; 
- D 1 - I - 0x0127B2 04:A7A2: B1        .byte $B1   ; 
- D 1 - I - 0x0127B3 04:A7A3: B2        .byte $B2   ; 
- D 1 - I - 0x0127B4 04:A7A4: B1        .byte $B1   ; 
- D 1 - I - 0x0127B5 04:A7A5: 91        .byte $91   ; 
- D 1 - I - 0x0127B6 04:A7A6: 81        .byte $81   ; 
- D 1 - I - 0x0127B7 04:A7A7: 71        .byte $71   ; 
- D 1 - I - 0x0127B8 04:A7A8: 71        .byte $71   ; 
- D 1 - I - 0x0127B9 04:A7A9: FB        .byte con_se_cb_FB   ; 
- D 1 - I - 0x0127BA 04:A7AA: C2        .byte $C2   ; 
- D 1 - I - 0x0127BB 04:A7AB: C2        .byte $C2   ; 
- D 1 - I - 0x0127BC 04:A7AC: B4        .byte $B4   ; 
- D 1 - I - 0x0127BD 04:A7AD: C3        .byte $C3   ; 
- D 1 - I - 0x0127BE 04:A7AE: B1        .byte $B1   ; 
- D 1 - I - 0x0127BF 04:A7AF: FE        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x0127C0 04:A7B0: 03        .byte $03   ; 
- D 1 - I - 0x0127C1 04:A7B1: C2        .byte $C2   ; 
- D 1 - I - 0x0127C2 04:A7B2: C2        .byte $C2   ; 
- D 1 - I - 0x0127C3 04:A7B3: B4        .byte $B4   ; 
- D 1 - I - 0x0127C4 04:A7B4: B1        .byte $B1   ; 
- D 1 - I - 0x0127C5 04:A7B5: 91        .byte $91   ; 
- D 1 - I - 0x0127C6 04:A7B6: 81        .byte $81   ; 
- D 1 - I - 0x0127C7 04:A7B7: 71        .byte $71   ; 
- D 1 - I - 0x0127C8 04:A7B8: FB        .byte con_se_cb_FB   ; 
- D 1 - I - 0x0127C9 04:A7B9: C2        .byte $C2   ; 
- D 1 - I - 0x0127CA 04:A7BA: B2        .byte $B2   ; 
- D 1 - I - 0x0127CB 04:A7BB: B2        .byte $B2   ; 
- D 1 - I - 0x0127CC 04:A7BC: B1        .byte $B1   ; 
- D 1 - I - 0x0127CD 04:A7BD: 91        .byte $91   ; 
- D 1 - I - 0x0127CE 04:A7BE: 81        .byte $81   ; 
- D 1 - I - 0x0127CF 04:A7BF: 81        .byte $81   ; 
- D 1 - I - 0x0127D0 04:A7C0: 71        .byte $71   ; 
- D 1 - I - 0x0127D1 04:A7C1: 71        .byte $71   ; 
- D 1 - I - 0x0127D2 04:A7C2: FE        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x0127D3 04:A7C3: 02        .byte $02   ; 
- D 1 - I - 0x0127D4 04:A7C4: FB        .byte con_se_cb_FB   ; 
- D 1 - I - 0x0127D5 04:A7C5: C2        .byte $C2   ; 
- D 1 - I - 0x0127D6 04:A7C6: C2        .byte $C2   ; 
- D 1 - I - 0x0127D7 04:A7C7: B4        .byte $B4   ; 
- D 1 - I - 0x0127D8 04:A7C8: C3        .byte $C3   ; 
- D 1 - I - 0x0127D9 04:A7C9: B1        .byte $B1   ; 
- D 1 - I - 0x0127DA 04:A7CA: C2        .byte $C2   ; 
- D 1 - I - 0x0127DB 04:A7CB: C2        .byte $C2   ; 
- D 1 - I - 0x0127DC 04:A7CC: 81        .byte $81   ; 
- D 1 - I - 0x0127DD 04:A7CD: 81        .byte $81   ; 
- D 1 - I - 0x0127DE 04:A7CE: 91        .byte $91   ; 
- D 1 - I - 0x0127DF 04:A7CF: 91        .byte $91   ; 
- D 1 - I - 0x0127E0 04:A7D0: E1        .byte con_se_cb_E1, $04   ; 
- D 1 - I - 0x0127E2 04:A7D2: 81        .byte $81   ; 
- D 1 - I - 0x0127E3 04:A7D3: 81        .byte $81   ; 
- D 1 - I - 0x0127E4 04:A7D4: 81        .byte $81   ; 
- D 1 - I - 0x0127E5 04:A7D5: 71        .byte $71   ; 
- D 1 - I - 0x0127E6 04:A7D6: 71        .byte $71   ; 
- D 1 - I - 0x0127E7 04:A7D7: 71        .byte $71   ; 
- D 1 - I - 0x0127E8 04:A7D8: E1        .byte con_se_cb_E1, $06   ; 
- D 1 - I - 0x0127EA 04:A7DA: FE        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x0127EB 04:A7DB: 02        .byte $02   ; 
- D 1 - I - 0x0127EC 04:A7DC: FB        .byte con_se_cb_FB   ; 
- D 1 - I - 0x0127ED 04:A7DD: C2        .byte $C2   ; 
- D 1 - I - 0x0127EE 04:A7DE: C2        .byte $C2   ; 
- D 1 - I - 0x0127EF 04:A7DF: B2        .byte $B2   ; 
- D 1 - I - 0x0127F0 04:A7E0: B1        .byte $B1   ; 
- D 1 - I - 0x0127F1 04:A7E1: 91        .byte $91   ; 
- D 1 - I - 0x0127F2 04:A7E2: 81        .byte $81   ; 
- D 1 - I - 0x0127F3 04:A7E3: 71        .byte $71   ; 
- D 1 - I - 0x0127F4 04:A7E4: B1        .byte $B1   ; 
- D 1 - I - 0x0127F5 04:A7E5: B1        .byte $B1   ; 
- D 1 - I - 0x0127F6 04:A7E6: FE        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x0127F7 04:A7E7: 02        .byte $02   ; 
- D 1 - I - 0x0127F8 04:A7E8: FE        .byte con_se_cb_jmp, $FF   ; 
- D 1 - I - 0x0127FA 04:A7EA: 97 A7     .word loc_FE_A797



_off000_A7EC_9C_00:
- D 1 - I - 0x0127FC 04:A7EC: E0        .byte con_se_cb_E0   ; 
- D 1 - I - 0x0127FD 04:A7ED: 02        .byte $02   ; 
- D 1 - I - 0x0127FE 04:A7EE: 76        .byte $76   ; 
- D 1 - I - 0x0127FF 04:A7EF: 82        .byte $82   ; 
- D 1 - I - 0x012800 04:A7F0: 15        .byte $15   ; 
- D 1 - I - 0x012801 04:A7F1: E7        .byte con_se_cb_E7, $56, $72   ; 
- D 1 - I - 0x012804 04:A7F4: EA        .byte con_se_cb_EA, $03   ; 
- D 1 - I - 0x012806 04:A7F6: E2        .byte con_se_cb_E2, $3B   ; 
- D 1 - I - 0x012808 04:A7F8: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x012809 04:A7F9: 11        .byte $11   ; 
- D 1 - I - 0x01280A 04:A7FA: 31        .byte $31   ; 
- D 1 - I - 0x01280B 04:A7FB: 51        .byte $51   ; 
- D 1 - I - 0x01280C 04:A7FC: 61        .byte $61   ; 
- D 1 - I - 0x01280D 04:A7FD: 81        .byte $81   ; 
- D 1 - I - 0x01280E 04:A7FE: A1        .byte $A1   ; 
- D 1 - I - 0x01280F 04:A7FF: C1        .byte $C1   ; 
- D 1 - I - 0x012810 04:A800: E1        .byte con_se_cb_E1, $04   ; 
- D 1 - I - 0x012812 04:A802: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x012813 04:A803: 12        .byte $12   ; 
- D 1 - I - 0x012814 04:A804: D6        .byte $D6   ; 
- D 1 - I - 0x012815 04:A805: 12        .byte $12   ; 
- D 1 - I - 0x012816 04:A806: D0        .byte $D0   ; 
- D 1 - I - 0x012817 04:A807: 36        .byte $36   ; 
- D 1 - I - 0x012818 04:A808: 62        .byte $62   ; 
- D 1 - I - 0x012819 04:A809: 52        .byte $52   ; 
- D 1 - I - 0x01281A 04:A80A: 12        .byte $12   ; 
- D 1 - I - 0x01281B 04:A80B: 36        .byte $36   ; 
- D 1 - I - 0x01281C 04:A80C: E5        .byte con_se_cb_E5, $13   ; 
- D 1 - I - 0x01281E 04:A80E: E2        .byte con_se_cb_E2, $37   ; 
- D 1 - I - 0x012820 04:A810: 8F        .byte $8F   ; 
- D 1 - I - 0x012821 04:A811: EA        .byte con_se_cb_EA, $00   ; 
- D 1 - I - 0x012823 04:A813: E7        .byte con_se_cb_E7, $55, $01   ; 
- D 1 - I - 0x012826 04:A816: E2        .byte con_se_cb_E2, $00   ; 
- D 1 - I - 0x012828 04:A818: E0        .byte con_se_cb_E0   ; 
- D 1 - I - 0x012829 04:A819: 04        .byte $04   ; 
- D 1 - I - 0x01282A 04:A81A: 72        .byte $72   ; 
- D 1 - I - 0x01282B 04:A81B: 81        .byte $81   ; 
- D 1 - I - 0x01282C 04:A81C: 00        .byte $00   ; 
- D 1 - I - 0x01282D 04:A81D: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x01282E 04:A81E: A1        .byte $A1   ; 
- D 1 - I - 0x01282F 04:A81F: B1        .byte $B1   ; 
- D 1 - I - 0x012830 04:A820: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x012831 04:A821: 11        .byte $11   ; 
- D 1 - I - 0x012832 04:A822: 31        .byte $31   ; 
- D 1 - I - 0x012833 04:A823: 11        .byte $11   ; 
- D 1 - I - 0x012834 04:A824: 31        .byte $31   ; 
- D 1 - I - 0x012835 04:A825: 51        .byte $51   ; 
- D 1 - I - 0x012836 04:A826: 61        .byte $61   ; 
- D 1 - I - 0x012837 04:A827: FF        .byte con_se_cb_stop   ; 



_off000_A828_9C_01:
- D 1 - I - 0x012838 04:A828: E0        .byte con_se_cb_E0   ; 
- D 1 - I - 0x012839 04:A829: 02        .byte $02   ; 
- D 1 - I - 0x01283A 04:A82A: 75        .byte $75   ; 
- D 1 - I - 0x01283B 04:A82B: 82        .byte $82   ; 
- D 1 - I - 0x01283C 04:A82C: 15        .byte $15   ; 
- D 1 - I - 0x01283D 04:A82D: E7        .byte con_se_cb_E7, $56, $51   ; 
- D 1 - I - 0x012840 04:A830: EA        .byte con_se_cb_EA, $03   ; 
- D 1 - I - 0x012842 04:A832: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x012843 04:A833: A1        .byte $A1   ; 
- D 1 - I - 0x012844 04:A834: C1        .byte $C1   ; 
- D 1 - I - 0x012845 04:A835: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x012846 04:A836: 11        .byte $11   ; 
- D 1 - I - 0x012847 04:A837: 31        .byte $31   ; 
- D 1 - I - 0x012848 04:A838: 51        .byte $51   ; 
- D 1 - I - 0x012849 04:A839: 61        .byte $61   ; 
- D 1 - I - 0x01284A 04:A83A: 81        .byte $81   ; 
- D 1 - I - 0x01284B 04:A83B: E1        .byte con_se_cb_E1, $04   ; 
- D 1 - I - 0x01284D 04:A83D: E2        .byte con_se_cb_E2, $3B   ; 
- D 1 - I - 0x01284F 04:A83F: D0        .byte $D0   ; 
- D 1 - I - 0x012850 04:A840: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x012851 04:A841: 82        .byte $82   ; 
- D 1 - I - 0x012852 04:A842: D4        .byte $D4   ; 
- D 1 - I - 0x012853 04:A843: 82        .byte $82   ; 
- D 1 - I - 0x012854 04:A844: D0        .byte $D0   ; 
- D 1 - I - 0x012855 04:A845: A6        .byte $A6   ; 
- D 1 - I - 0x012856 04:A846: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x012857 04:A847: 12        .byte $12   ; 
- D 1 - I - 0x012858 04:A848: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x012859 04:A849: C2        .byte $C2   ; 
- D 1 - I - 0x01285A 04:A84A: 62        .byte $62   ; 
- D 1 - I - 0x01285B 04:A84B: B6        .byte $B6   ; 
- D 1 - I - 0x01285C 04:A84C: E5        .byte con_se_cb_E5, $13   ; 
- D 1 - I - 0x01285E 04:A84E: E2        .byte con_se_cb_E2, $37   ; 
- D 1 - I - 0x012860 04:A850: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x012861 04:A851: 3A        .byte $3A   ; 
- D 1 - I - 0x012862 04:A852: D0        .byte $D0   ; 
- D 1 - I - 0x012863 04:A853: E0        .byte con_se_cb_E0   ; 
- D 1 - I - 0x012864 04:A854: 04        .byte $04   ; 
- D 1 - I - 0x012865 04:A855: 75        .byte $75   ; 
- D 1 - I - 0x012866 04:A856: 82        .byte $82   ; 
- D 1 - I - 0x012867 04:A857: 16        .byte $16   ; 
- D 1 - I - 0x012868 04:A858: EA        .byte con_se_cb_EA, $01   ; 
- D 1 - I - 0x01286A 04:A85A: E2        .byte con_se_cb_E2, $37   ; 
- D 1 - I - 0x01286C 04:A85C: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x01286D 04:A85D: B1        .byte $B1   ; 
- D 1 - I - 0x01286E 04:A85E: A1        .byte $A1   ; 
- D 1 - I - 0x01286F 04:A85F: B1        .byte $B1   ; 
- D 1 - I - 0x012870 04:A860: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x012871 04:A861: 11        .byte $11   ; 
- D 1 - I - 0x012872 04:A862: 31        .byte $31   ; 
- D 1 - I - 0x012873 04:A863: 11        .byte $11   ; 
- D 1 - I - 0x012874 04:A864: 31        .byte $31   ; 
- D 1 - I - 0x012875 04:A865: 51        .byte $51   ; 
- D 1 - I - 0x012876 04:A866: 61        .byte $61   ; 
- D 1 - I - 0x012877 04:A867: 51        .byte $51   ; 
- D 1 - I - 0x012878 04:A868: 61        .byte $61   ; 
- D 1 - I - 0x012879 04:A869: 81        .byte $81   ; 
- D 1 - I - 0x01287A 04:A86A: EA        .byte con_se_cb_EA, $00   ; 
- D 1 - I - 0x01287C 04:A86C: E7        .byte con_se_cb_E7, $00   ; 
- D 1 - I - 0x01287E 04:A86E: E2        .byte con_se_cb_E2, $00   ; 
- D 1 - I - 0x012880 04:A870: F0        .byte con_se_cb_F0   ; 
- D 1 - I - 0x012881 04:A871: 32        .byte $32   ; 
- D 1 - I - 0x012882 04:A872: 34        .byte $34   ; 
- D 1 - I - 0x012883 04:A873: FF        .byte con_se_cb_stop   ; 



_off000_A874_9C_02:
- D 1 - I - 0x012884 04:A874: E0        .byte con_se_cb_E0   ; 
- D 1 - I - 0x012885 04:A875: 02        .byte $02   ; 
- D 1 - I - 0x012886 04:A876: 02        .byte $02   ; 
- D 1 - I - 0x012887 04:A877: E7        .byte con_se_cb_E7, $56, $62   ; 
- D 1 - I - 0x01288A 04:A87A: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x01288B 04:A87B: A1        .byte $A1   ; 
- D 1 - I - 0x01288C 04:A87C: C1        .byte $C1   ; 
- D 1 - I - 0x01288D 04:A87D: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x01288E 04:A87E: 14        .byte $14   ; 
- D 1 - I - 0x01288F 04:A87F: 01        .byte $01   ; 
- D 1 - I - 0x012890 04:A880: E1        .byte con_se_cb_E1, $04   ; 
- D 1 - I - 0x012892 04:A882: 32        .byte $32   ; 
- D 1 - I - 0x012893 04:A883: 02        .byte $02   ; 
- D 1 - I - 0x012894 04:A884: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x012895 04:A885: B6        .byte $B6   ; 
- D 1 - I - 0x012896 04:A886: 82        .byte $82   ; 
- D 1 - I - 0x012897 04:A887: 62        .byte $62   ; 
- D 1 - I - 0x012898 04:A888: 82        .byte $82   ; 
- D 1 - I - 0x012899 04:A889: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x01289A 04:A88A: 16        .byte $16   ; 
- D 1 - I - 0x01289B 04:A88B: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x01289C 04:A88C: E1        .byte con_se_cb_E1, $08   ; 
- D 1 - I - 0x01289E 04:A88E: BB        .byte $BB   ; 
- D 1 - I - 0x01289F 04:A88F: E1        .byte con_se_cb_E1, $04   ; 
- D 1 - I - 0x0128A1 04:A891: 32        .byte $32   ; 
- D 1 - I - 0x0128A2 04:A892: 35        .byte $35   ; 
- D 1 - I - 0x0128A3 04:A893: FF        .byte con_se_cb_stop   ; 



_off000_A894_9C_03:
- D 1 - I - 0x0128A4 04:A894: E0        .byte con_se_cb_E0   ; 
- D 1 - I - 0x0128A5 04:A895: 01        .byte $01   ; 
- D 1 - I - 0x0128A6 04:A896: 02        .byte $02   ; 
- D 1 - I - 0x0128A7 04:A897: B4        .byte $B4   ; 
- D 1 - I - 0x0128A8 04:A898: 74        .byte $74   ; 
- D 1 - I - 0x0128A9 04:A899: C4        .byte $C4   ; 
- D 1 - I - 0x0128AA 04:A89A: B8        .byte $B8   ; 
- D 1 - I - 0x0128AB 04:A89B: C8        .byte $C8   ; 
- D 1 - I - 0x0128AC 04:A89C: B8        .byte $B8   ; 
- D 1 - I - 0x0128AD 04:A89D: C8        .byte $C8   ; 
- D 1 - I - 0x0128AE 04:A89E: C8        .byte $C8   ; 
- D 1 - I - 0x0128AF 04:A89F: B8        .byte $B8   ; 
- D 1 - I - 0x0128B0 04:A8A0: C8        .byte $C8   ; 
- D 1 - I - 0x0128B1 04:A8A1: C8        .byte $C8   ; 
- D 1 - I - 0x0128B2 04:A8A2: B8        .byte $B8   ; 
- D 1 - I - 0x0128B3 04:A8A3: C8        .byte $C8   ; 
- D 1 - I - 0x0128B4 04:A8A4: C8        .byte $C8   ; 
- D 1 - I - 0x0128B5 04:A8A5: B1        .byte $B1   ; 
- D 1 - I - 0x0128B6 04:A8A6: 3F        .byte $3F   ; 
- D 1 - I - 0x0128B7 04:A8A7: 0C        .byte $0C   ; 
- D 1 - I - 0x0128B8 04:A8A8: 0C        .byte $0C   ; 
- D 1 - I - 0x0128B9 04:A8A9: B4        .byte $B4   ; 
- D 1 - I - 0x0128BA 04:A8AA: B4        .byte $B4   ; 
- D 1 - I - 0x0128BB 04:A8AB: B4        .byte $B4   ; 
- D 1 - I - 0x0128BC 04:A8AC: B4        .byte $B4   ; 
- D 1 - I - 0x0128BD 04:A8AD: 94        .byte $94   ; 
- D 1 - I - 0x0128BE 04:A8AE: 94        .byte $94   ; 
- D 1 - I - 0x0128BF 04:A8AF: 94        .byte $94   ; 
- D 1 - I - 0x0128C0 04:A8B0: 94        .byte $94   ; 
- D 1 - I - 0x0128C1 04:A8B1: 84        .byte $84   ; 
- D 1 - I - 0x0128C2 04:A8B2: 84        .byte $84   ; 
- D 1 - I - 0x0128C3 04:A8B3: 84        .byte $84   ; 
- D 1 - I - 0x0128C4 04:A8B4: 84        .byte $84   ; 
- D 1 - I - 0x0128C5 04:A8B5: 58        .byte $58   ; 
- D 1 - I - 0x0128C6 04:A8B6: 58        .byte $58   ; 
- D 1 - I - 0x0128C7 04:A8B7: FF        .byte con_se_cb_stop   ; 



_off000_A8B8_A0_01:
loc_FE_A8B8:
- D 1 - I - 0x0128C8 04:A8B8: E8        .byte con_se_cb_E8, $02   ; 
- D 1 - I - 0x0128CA 04:A8BA: FD        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x0128CB 04:A8BB: 2C A9     .word sub_FD_A92C
- D 1 - I - 0x0128CD 04:A8BD: E8        .byte con_se_cb_E8, $05   ; 
- D 1 - I - 0x0128CF 04:A8BF: FD        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x0128D0 04:A8C0: 2C A9     .word sub_FD_A92C
- D 1 - I - 0x0128D2 04:A8C2: FE        .byte con_se_cb_jmp, $FF   ; 
- D 1 - I - 0x0128D4 04:A8C4: B8 A8     .word loc_FE_A8B8



_off000_A8C6_A0_00:
loc_FE_A8C6:
- D 1 - I - 0x0128D6 04:A8C6: E8        .byte con_se_cb_E8, $02   ; 
- D 1 - I - 0x0128D8 04:A8C8: FD        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x0128D9 04:A8C9: 4F A9     .word sub_FD_A94F
- D 1 - I - 0x0128DB 04:A8CB: E8        .byte con_se_cb_E8, $05   ; 
- D 1 - I - 0x0128DD 04:A8CD: FD        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x0128DE 04:A8CE: 4F A9     .word sub_FD_A94F
- D 1 - I - 0x0128E0 04:A8D0: FE        .byte con_se_cb_jmp, $FF   ; 
- D 1 - I - 0x0128E2 04:A8D2: C6 A8     .word loc_FE_A8C6



_off000_A8D4_A0_02:
loc_FE_A8D4:
- D 1 - I - 0x0128E4 04:A8D4: E8        .byte con_se_cb_E8, $02   ; 
- D 1 - I - 0x0128E6 04:A8D6: FD        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x0128E7 04:A8D7: 85 A9     .word sub_FD_A985
- D 1 - I - 0x0128E9 04:A8D9: E8        .byte con_se_cb_E8, $05   ; 
- D 1 - I - 0x0128EB 04:A8DB: FD        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x0128EC 04:A8DC: 85 A9     .word sub_FD_A985
- D 1 - I - 0x0128EE 04:A8DE: FE        .byte con_se_cb_jmp, $FF   ; 
- D 1 - I - 0x0128F0 04:A8E0: D4 A8     .word loc_FE_A8D4



_off000_A8E2_A0_03:
loc_FE_A8E2:
- D 1 - I - 0x0128F2 04:A8E2: E0        .byte con_se_cb_E0   ; 
- D 1 - I - 0x0128F3 04:A8E3: 01        .byte $01   ; 
- D 1 - I - 0x0128F4 04:A8E4: 77        .byte $77   ; 
- D 1 - I - 0x0128F5 04:A8E5: 77        .byte $77   ; 
- D 1 - I - 0x0128F6 04:A8E6: FB        .byte con_se_cb_FB   ; 
- D 1 - I - 0x0128F7 04:A8E7: BE        .byte $BE   ; 
- D 1 - I - 0x0128F8 04:A8E8: B5        .byte $B5   ; 
- D 1 - I - 0x0128F9 04:A8E9: B5        .byte $B5   ; 
- D 1 - I - 0x0128FA 04:A8EA: B4        .byte $B4   ; 
- D 1 - I - 0x0128FB 04:A8EB: BE        .byte $BE   ; 
- D 1 - I - 0x0128FC 04:A8EC: B5        .byte $B5   ; 
- D 1 - I - 0x0128FD 04:A8ED: B5        .byte $B5   ; 
- D 1 - I - 0x0128FE 04:A8EE: B4        .byte $B4   ; 
- D 1 - I - 0x0128FF 04:A8EF: B7        .byte $B7   ; 
- D 1 - I - 0x012900 04:A8F0: B7        .byte $B7   ; 
- D 1 - I - 0x012901 04:A8F1: BE        .byte $BE   ; 
- D 1 - I - 0x012902 04:A8F2: BE        .byte $BE   ; 
- D 1 - I - 0x012903 04:A8F3: B7        .byte $B7   ; 
- D 1 - I - 0x012904 04:A8F4: B7        .byte $B7   ; 
- D 1 - I - 0x012905 04:A8F5: FE        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x012906 04:A8F6: 03        .byte $03   ; 
- D 1 - I - 0x012907 04:A8F7: FB        .byte con_se_cb_FB   ; 
- D 1 - I - 0x012908 04:A8F8: BE        .byte $BE   ; 
- D 1 - I - 0x012909 04:A8F9: B5        .byte $B5   ; 
- D 1 - I - 0x01290A 04:A8FA: B5        .byte $B5   ; 
- D 1 - I - 0x01290B 04:A8FB: B4        .byte $B4   ; 
- D 1 - I - 0x01290C 04:A8FC: FE        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x01290D 04:A8FD: 02        .byte $02   ; 
- D 1 - I - 0x01290E 04:A8FE: B7        .byte $B7   ; 
- D 1 - I - 0x01290F 04:A8FF: B7        .byte $B7   ; 
- D 1 - I - 0x012910 04:A900: BE        .byte $BE   ; 
- D 1 - I - 0x012911 04:A901: B1        .byte $B1   ; 
- D 1 - I - 0x012912 04:A902: 15        .byte $15   ; 
- D 1 - I - 0x012913 04:A903: 14        .byte $14   ; 
- D 1 - I - 0x012914 04:A904: 14        .byte $14   ; 
- D 1 - I - 0x012915 04:A905: B1        .byte $B1   ; 
- D 1 - I - 0x012916 04:A906: 16        .byte $16   ; 
- D 1 - I - 0x012917 04:A907: B1        .byte $B1   ; 
- D 1 - I - 0x012918 04:A908: 16        .byte $16   ; 
- D 1 - I - 0x012919 04:A909: FB        .byte con_se_cb_FB   ; 
- D 1 - I - 0x01291A 04:A90A: BE        .byte $BE   ; 
- D 1 - I - 0x01291B 04:A90B: B5        .byte $B5   ; 
- D 1 - I - 0x01291C 04:A90C: B5        .byte $B5   ; 
- D 1 - I - 0x01291D 04:A90D: B4        .byte $B4   ; 
- D 1 - I - 0x01291E 04:A90E: BE        .byte $BE   ; 
- D 1 - I - 0x01291F 04:A90F: B5        .byte $B5   ; 
- D 1 - I - 0x012920 04:A910: B5        .byte $B5   ; 
- D 1 - I - 0x012921 04:A911: B4        .byte $B4   ; 
- D 1 - I - 0x012922 04:A912: B7        .byte $B7   ; 
- D 1 - I - 0x012923 04:A913: B7        .byte $B7   ; 
- D 1 - I - 0x012924 04:A914: BE        .byte $BE   ; 
- D 1 - I - 0x012925 04:A915: BE        .byte $BE   ; 
- D 1 - I - 0x012926 04:A916: B7        .byte $B7   ; 
- D 1 - I - 0x012927 04:A917: B7        .byte $B7   ; 
- D 1 - I - 0x012928 04:A918: FE        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x012929 04:A919: 03        .byte $03   ; 
- D 1 - I - 0x01292A 04:A91A: BE        .byte $BE   ; 
- D 1 - I - 0x01292B 04:A91B: B5        .byte $B5   ; 
- D 1 - I - 0x01292C 04:A91C: B5        .byte $B5   ; 
- D 1 - I - 0x01292D 04:A91D: B4        .byte $B4   ; 
- D 1 - I - 0x01292E 04:A91E: BE        .byte $BE   ; 
- D 1 - I - 0x01292F 04:A91F: B5        .byte $B5   ; 
- D 1 - I - 0x012930 04:A920: B5        .byte $B5   ; 
- D 1 - I - 0x012931 04:A921: B4        .byte $B4   ; 
- D 1 - I - 0x012932 04:A922: B7        .byte $B7   ; 
- D 1 - I - 0x012933 04:A923: B7        .byte $B7   ; 
- D 1 - I - 0x012934 04:A924: 97        .byte $97   ; 
- D 1 - I - 0x012935 04:A925: 97        .byte $97   ; 
- D 1 - I - 0x012936 04:A926: 87        .byte $87   ; 
- D 1 - I - 0x012937 04:A927: 87        .byte $87   ; 
- D 1 - I - 0x012938 04:A928: FE        .byte con_se_cb_jmp, $FF   ; 
- D 1 - I - 0x01293A 04:A92A: E2 A8     .word loc_FE_A8E2



sub_FD_A92C:
- D 1 - I - 0x01293C 04:A92C: FB        .byte con_se_cb_FB   ; 
- D 1 - I - 0x01293D 04:A92D: E0        .byte con_se_cb_E0   ; 
- D 1 - I - 0x01293E 04:A92E: 07        .byte $07   ; 
- D 1 - I - 0x01293F 04:A92F: 33        .byte $33   ; 
- D 1 - I - 0x012940 04:A930: 00        .byte $00   ; 
- D 1 - I - 0x012941 04:A931: 41        .byte $41   ; 
- D 1 - I - 0x012942 04:A932: E7        .byte con_se_cb_E7, $50, $33   ; 
- D 1 - I - 0x012945 04:A935: E2        .byte con_se_cb_E2, $B7   ; 
- D 1 - I - 0x012947 04:A937: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x012948 04:A938: 32        .byte $32   ; 
- D 1 - I - 0x012949 04:A939: 8E        .byte $8E   ; 
- D 1 - I - 0x01294A 04:A93A: 71        .byte $71   ; 
- D 1 - I - 0x01294B 04:A93B: 81        .byte $81   ; 
- D 1 - I - 0x01294C 04:A93C: 7E        .byte $7E   ; 
- D 1 - I - 0x01294D 04:A93D: 72        .byte $72   ; 
- D 1 - I - 0x01294E 04:A93E: 6C        .byte $6C   ; 
- D 1 - I - 0x01294F 04:A93F: 84        .byte $84   ; 
- D 1 - I - 0x012950 04:A940: 56        .byte $56   ; 
- D 1 - I - 0x012951 04:A941: E1        .byte con_se_cb_E1, $01   ; 
- D 1 - I - 0x012953 04:A943: 63        .byte $63   ; 
- D 1 - I - 0x012954 04:A944: 74        .byte $74   ; 
- D 1 - I - 0x012955 04:A945: 83        .byte $83   ; 
- D 1 - I - 0x012956 04:A946: 94        .byte $94   ; 
- D 1 - I - 0x012957 04:A947: E7        .byte con_se_cb_E7, $00   ; 
- D 1 - I - 0x012959 04:A949: E1        .byte con_se_cb_E1, $07   ; 
- D 1 - I - 0x01295B 04:A94B: A6        .byte $A6   ; 
- D 1 - I - 0x01295C 04:A94C: FE        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x01295D 04:A94D: 02        .byte $02   ; 
- D 1 - I - 0x01295E 04:A94E: FF        .byte con_se_cb_stop   ; 



sub_FD_A94F:
- D 1 - I - 0x01295F 04:A94F: FB        .byte con_se_cb_FB   ; 
- D 1 - I - 0x012960 04:A950: E0        .byte con_se_cb_E0   ; 
- D 1 - I - 0x012961 04:A951: 07        .byte $07   ; 
- D 1 - I - 0x012962 04:A952: 33        .byte $33   ; 
- D 1 - I - 0x012963 04:A953: 00        .byte $00   ; 
- D 1 - I - 0x012964 04:A954: A4        .byte $A4   ; 
- D 1 - I - 0x012965 04:A955: E7        .byte con_se_cb_E7, $50, $22   ; 
- D 1 - I - 0x012968 04:A958: E2        .byte con_se_cb_E2, $B1   ; 
- D 1 - I - 0x01296A 04:A95A: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x01296B 04:A95B: A2        .byte $A2   ; 
- D 1 - I - 0x01296C 04:A95C: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x01296D 04:A95D: 36        .byte $36   ; 
- D 1 - I - 0x01296E 04:A95E: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x01296F 04:A95F: C1        .byte $C1   ; 
- D 1 - I - 0x012970 04:A960: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x012971 04:A961: 21        .byte $21   ; 
- D 1 - I - 0x012972 04:A962: 34        .byte $34   ; 
- D 1 - I - 0x012973 04:A963: 54        .byte $54   ; 
- D 1 - I - 0x012974 04:A964: 28        .byte $28   ; 
- D 1 - I - 0x012975 04:A965: E7        .byte con_se_cb_E7, $50, $21   ; 
- D 1 - I - 0x012978 04:A968: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x012979 04:A969: A4        .byte $A4   ; 
- D 1 - I - 0x01297A 04:A96A: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x01297B 04:A96B: 24        .byte $24   ; 
- D 1 - I - 0x01297C 04:A96C: 16        .byte $16   ; 
- D 1 - I - 0x01297D 04:A96D: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x01297E 04:A96E: A1        .byte $A1   ; 
- D 1 - I - 0x01297F 04:A96F: B1        .byte $B1   ; 
- D 1 - I - 0x012980 04:A970: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x012981 04:A971: 14        .byte $14   ; 
- D 1 - I - 0x012982 04:A972: 34        .byte $34   ; 
- D 1 - I - 0x012983 04:A973: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x012984 04:A974: A6        .byte $A6   ; 
- D 1 - I - 0x012985 04:A975: E1        .byte con_se_cb_E1, $01   ; 
- D 1 - I - 0x012987 04:A977: B3        .byte $B3   ; 
- D 1 - I - 0x012988 04:A978: C4        .byte $C4   ; 
- D 1 - I - 0x012989 04:A979: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x01298A 04:A97A: 13        .byte $13   ; 
- D 1 - I - 0x01298B 04:A97B: 24        .byte $24   ; 
- D 1 - I - 0x01298C 04:A97C: E7        .byte con_se_cb_E7, $50, $22   ; 
- D 1 - I - 0x01298F 04:A97F: E1        .byte con_se_cb_E1, $07   ; 
- D 1 - I - 0x012991 04:A981: 36        .byte $36   ; 
- D 1 - I - 0x012992 04:A982: FE        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x012993 04:A983: 02        .byte $02   ; 
- D 1 - I - 0x012994 04:A984: FF        .byte con_se_cb_stop   ; 



sub_FD_A985:
- D 1 - I - 0x012995 04:A985: E0        .byte con_se_cb_E0   ; 
- D 1 - I - 0x012996 04:A986: 07        .byte $07   ; 
- D 1 - I - 0x012997 04:A987: 05        .byte $05   ; 
- D 1 - I - 0x012998 04:A988: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x012999 04:A989: FB        .byte con_se_cb_FB   ; 
- D 1 - I - 0x01299A 04:A98A: 52        .byte $52   ; 
- D 1 - I - 0x01299B 04:A98B: A4        .byte $A4   ; 
- D 1 - I - 0x01299C 04:A98C: A2        .byte $A2   ; 
- D 1 - I - 0x01299D 04:A98D: A1        .byte $A1   ; 
- D 1 - I - 0x01299E 04:A98E: A1        .byte $A1   ; 
- D 1 - I - 0x01299F 04:A98F: A1        .byte $A1   ; 
- D 1 - I - 0x0129A0 04:A990: 81        .byte $81   ; 
- D 1 - I - 0x0129A1 04:A991: A1        .byte $A1   ; 
- D 1 - I - 0x0129A2 04:A992: 01        .byte $01   ; 
- D 1 - I - 0x0129A3 04:A993: A2        .byte $A2   ; 
- D 1 - I - 0x0129A4 04:A994: FE        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x0129A5 04:A995: 08        .byte $08   ; 
- D 1 - I - 0x0129A6 04:A996: FF        .byte con_se_cb_stop   ; 



_off000_A997_67_01:
- D 1 - I - 0x0129A7 04:A997: E0        .byte con_se_cb_E0   ; 
- D 1 - I - 0x0129A8 04:A998: 01        .byte $01   ; 
- D 1 - I - 0x0129A9 04:A999: 7A        .byte $7A   ; 
- D 1 - I - 0x0129AA 04:A99A: 83        .byte $83   ; 
- D 1 - I - 0x0129AB 04:A99B: 16        .byte $16   ; 
- D 1 - I - 0x0129AC 04:A99C: D5        .byte $D5   ; 
- D 1 - I - 0x0129AD 04:A99D: E2        .byte con_se_cb_E2, $3B   ; 
- D 1 - I - 0x0129AF 04:A99F: EA        .byte con_se_cb_EA, $03   ; 
- D 1 - I - 0x0129B1 04:A9A1: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0129B2 04:A9A2: A1        .byte $A1   ; 
- D 1 - I - 0x0129B3 04:A9A3: B1        .byte $B1   ; 
- D 1 - I - 0x0129B4 04:A9A4: D0        .byte $D0   ; 
- D 1 - I - 0x0129B5 04:A9A5: E1        .byte con_se_cb_E1, $06   ; 
- D 1 - I - 0x0129B7 04:A9A7: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0129B8 04:A9A8: 11        .byte $11   ; 
- D 1 - I - 0x0129B9 04:A9A9: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0129BA 04:A9AA: 81        .byte $81   ; 
- D 1 - I - 0x0129BB 04:A9AB: 61        .byte $61   ; 
- D 1 - I - 0x0129BC 04:A9AC: 81        .byte $81   ; 
- D 1 - I - 0x0129BD 04:A9AD: EA        .byte con_se_cb_EA, $00   ; 
- D 1 - I - 0x0129BF 04:A9AF: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0129C0 04:A9B0: D1        .byte $D1   ; 
- D 1 - I - 0x0129C1 04:A9B1: 11        .byte $11   ; 
- D 1 - I - 0x0129C2 04:A9B2: 11        .byte $11   ; 
- D 1 - I - 0x0129C3 04:A9B3: E1        .byte con_se_cb_E1, $07   ; 
- D 1 - I - 0x0129C5 04:A9B5: 06        .byte $06   ; 
- D 1 - I - 0x0129C6 04:A9B6: FE        .byte con_se_cb_jmp, $FF   ; 
- D 1 - I - 0x0129C8 04:A9B8: AA 8F     .word loc_FE_8FAA



_off000_A9BA_67_00:
- D 1 - I - 0x0129CA 04:A9BA: E8        .byte con_se_cb_E8, $87   ; 
- D 1 - I - 0x0129CC 04:A9BC: E0        .byte con_se_cb_E0   ; 
- D 1 - I - 0x0129CD 04:A9BD: 01        .byte $01   ; 
- D 1 - I - 0x0129CE 04:A9BE: 78        .byte $78   ; 
- D 1 - I - 0x0129CF 04:A9BF: 83        .byte $83   ; 
- D 1 - I - 0x0129D0 04:A9C0: 16        .byte $16   ; 
- D 1 - I - 0x0129D1 04:A9C1: E2        .byte con_se_cb_E2, $37   ; 
- D 1 - I - 0x0129D3 04:A9C3: EA        .byte con_se_cb_EA, $03   ; 
- D 1 - I - 0x0129D5 04:A9C5: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0129D6 04:A9C6: A1        .byte $A1   ; 
- D 1 - I - 0x0129D7 04:A9C7: B1        .byte $B1   ; 
- D 1 - I - 0x0129D8 04:A9C8: E1        .byte con_se_cb_E1, $06   ; 
- D 1 - I - 0x0129DA 04:A9CA: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0129DB 04:A9CB: 11        .byte $11   ; 
- D 1 - I - 0x0129DC 04:A9CC: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0129DD 04:A9CD: 81        .byte $81   ; 
- D 1 - I - 0x0129DE 04:A9CE: 61        .byte $61   ; 
- D 1 - I - 0x0129DF 04:A9CF: 81        .byte $81   ; 
- D 1 - I - 0x0129E0 04:A9D0: EA        .byte con_se_cb_EA, $00   ; 
- D 1 - I - 0x0129E2 04:A9D2: E8        .byte con_se_cb_E8, $00   ; 
- D 1 - I - 0x0129E4 04:A9D4: F0        .byte con_se_cb_F0   ; 
- D 1 - I - 0x0129E5 04:A9D5: D0        .byte $D0   ; 
- D 1 - I - 0x0129E6 04:A9D6: 11        .byte $11   ; 
- D 1 - I - 0x0129E7 04:A9D7: 11        .byte $11   ; 
- D 1 - I - 0x0129E8 04:A9D8: E2        .byte con_se_cb_E2, $00   ; 
- D 1 - I - 0x0129EA 04:A9DA: E1        .byte con_se_cb_E1, $07   ; 
- D 1 - I - 0x0129EC 04:A9DC: D6        .byte $D6   ; 
- D 1 - I - 0x0129ED 04:A9DD: 11        .byte $11   ; 
- D 1 - I - 0x0129EE 04:A9DE: 05        .byte $05   ; 
- D 1 - I - 0x0129EF 04:A9DF: FE        .byte con_se_cb_jmp, $FF   ; 
- D 1 - I - 0x0129F1 04:A9E1: 2D 90     .word loc_FE_902D



_off000_A9E3_67_02:
- D 1 - I - 0x0129F3 04:A9E3: E0        .byte con_se_cb_E0   ; 
- D 1 - I - 0x0129F4 04:A9E4: 01        .byte $01   ; 
- D 1 - I - 0x0129F5 04:A9E5: 05        .byte $05   ; 
- D 1 - I - 0x0129F6 04:A9E6: 02        .byte $02   ; 
- D 1 - I - 0x0129F7 04:A9E7: E1        .byte con_se_cb_E1, $06   ; 
- D 1 - I - 0x0129F9 04:A9E9: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0129FA 04:A9EA: 11        .byte $11   ; 
- D 1 - I - 0x0129FB 04:A9EB: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x0129FC 04:A9EC: 81        .byte $81   ; 
- D 1 - I - 0x0129FD 04:A9ED: 61        .byte $61   ; 
- D 1 - I - 0x0129FE 04:A9EE: 81        .byte $81   ; 
- D 1 - I - 0x0129FF 04:A9EF: 11        .byte $11   ; 
- D 1 - I - 0x012A00 04:A9F0: 12        .byte $12   ; 
- D 1 - I - 0x012A01 04:A9F1: E1        .byte con_se_cb_E1, $01   ; 
- D 1 - I - 0x012A03 04:A9F3: 08        .byte $08   ; 
- D 1 - I - 0x012A04 04:A9F4: E1        .byte con_se_cb_E1, $07   ; 
- D 1 - I - 0x012A06 04:A9F6: 04        .byte $04   ; 
- D 1 - I - 0x012A07 04:A9F7: FE        .byte con_se_cb_jmp, $FF   ; 
- D 1 - I - 0x012A09 04:A9F9: 9D 90     .word loc_FE_909D



_off000_A9FB_67_03:
- D 1 - I - 0x012A0B 04:A9FB: E0        .byte con_se_cb_E0   ; 
- D 1 - I - 0x012A0C 04:A9FC: 01        .byte $01   ; 
- D 1 - I - 0x012A0D 04:A9FD: 02        .byte $02   ; 
- D 1 - I - 0x012A0E 04:A9FE: B6        .byte $B6   ; 
- D 1 - I - 0x012A0F 04:A9FF: 96        .byte $96   ; 
- D 1 - I - 0x012A10 04:AA00: 86        .byte $86   ; 
- D 1 - I - 0x012A11 04:AA01: 66        .byte $66   ; 
- D 1 - I - 0x012A12 04:AA02: 46        .byte $46   ; 
- D 1 - I - 0x012A13 04:AA03: 46        .byte $46   ; 
- D 1 - I - 0x012A14 04:AA04: 17        .byte $17   ; 
- D 1 - I - 0x012A15 04:AA05: 17        .byte $17   ; 
- D 1 - I - 0x012A16 04:AA06: 64        .byte $64   ; 
- D 1 - I - 0x012A17 04:AA07: 65        .byte $65   ; 
- D 1 - I - 0x012A18 04:AA08: 65        .byte $65   ; 
- D 1 - I - 0x012A19 04:AA09: 67        .byte $67   ; 
- D 1 - I - 0x012A1A 04:AA0A: 67        .byte $67   ; 
- D 1 - I - 0x012A1B 04:AA0B: FE        .byte con_se_cb_jmp, $FF   ; 
- D 1 - I - 0x012A1D 04:AA0D: E2 90     .word loc_FE_90E2



sub_0x012A1F_update_sound_engine:
ofs_006_0x012A1F_02_update_sound_engine:
; con_F3D6_02
C - - - - - 0x012A1F 04:AA0F: AD A1 05  LDA ram_059E_se + $03
C - - - - - 0x012A22 04:AA12: F0 03     BEQ bra_AA17
C - - - - - 0x012A24 04:AA14: 20 4A AA  JSR sub_AA4A
bra_AA17:
C - - - - - 0x012A27 04:AA17: AD 32 03  LDA ram_0332_flag
C - - - - - 0x012A2A 04:AA1A: F0 11     BEQ bra_AA2D
C - - - - - 0x012A2C 04:AA1C: CE 33 03  DEC ram_0333_counter
C - - - - - 0x012A2F 04:AA1F: D0 0C     BNE bra_AA2D
C - - - - - 0x012A31 04:AA21: A9 05     LDA #$05
C - - - - - 0x012A33 04:AA23: 8D 33 03  STA ram_0333_counter
C - - - - - 0x012A36 04:AA26: A9 0A     LDA #$0A
C - - - - - 0x012A38 04:AA28: 85 EE     STA ram_00EE_se
C - - - - - 0x012A3A 04:AA2A: 20 86 B2  JSR sub_B286
bra_AA2D:
C - - - - - 0x012A3D 04:AA2D: A2 00     LDX #$00
bra_AA2F_loop:
C - - - - - 0x012A3F 04:AA2F: 86 EC     STX ram_00EC_se_channel_index
C - - - - - 0x012A41 04:AA31: BD 44 AA  LDA tbl_AA44,X
C - - - - - 0x012A44 04:AA34: 85 ED     STA ram_00ED_se_t01
C - - - - - 0x012A46 04:AA36: BD 46 05  LDA ram_0546_se,X
C - - - - - 0x012A49 04:AA39: F0 03     BEQ bra_AA3E
C - - - - - 0x012A4B 04:AA3B: 20 77 AA  JSR sub_AA77
bra_AA3E:
C - - - - - 0x012A4E 04:AA3E: E8        INX
C - - - - - 0x012A4F 04:AA3F: E0 06     CPX #$06
C - - - - - 0x012A51 04:AA41: D0 EC     BNE bra_AA2F_loop
C - - - - - 0x012A53 04:AA43: 60        RTS



tbl_AA44:
- D 1 - - - 0x012A54 04:AA44: 00        .byte $00   ; 00 
- D 1 - - - 0x012A55 04:AA45: 04        .byte $04   ; 01 
- D 1 - - - 0x012A56 04:AA46: 08        .byte $08   ; 02 
- D 1 - - - 0x012A57 04:AA47: 0C        .byte $0C   ; 03 
- D 1 - - - 0x012A58 04:AA48: 00        .byte $00   ; 04 
- D 1 - - - 0x012A59 04:AA49: 0C        .byte $0C   ; 05 



sub_AA4A:
C - - - - - 0x012A5A 04:AA4A: C9 01     CMP #$01
C - - - - - 0x012A5C 04:AA4C: D0 03     BNE bra_AA51
C - - - - - 0x012A5E 04:AA4E: 4C D6 B3  JMP loc_B3D6
bra_AA51:
C - - - - - 0x012A61 04:AA51: C9 02     CMP #$02
C - - - - - 0x012A63 04:AA53: D0 0C     BNE bra_AA61
C - - - - - 0x012A65 04:AA55: AD AD 05  LDA ram_05AD_se
C - - - - - 0x012A68 04:AA58: C9 07     CMP #$07
C - - - - - 0x012A6A 04:AA5A: D0 05     BNE bra_AA61
C - - - - - 0x012A6C 04:AA5C: A9 00     LDA #$00
C - - - - - 0x012A6E 04:AA5E: 8D 49 05  STA ram_0546_se + $03
bra_AA61:
C - - - - - 0x012A71 04:AA61: EE AD 05  INC ram_05AD_se
C - - - - - 0x012A74 04:AA64: A9 0F     LDA #$0F
C - - - - - 0x012A76 04:AA66: CD AD 05  CMP ram_05AD_se
C - - - - - 0x012A79 04:AA69: D0 0B     BNE bra_AA76_RTS
C - - - - - 0x012A7B 04:AA6B: A9 00     LDA #$00
C - - - - - 0x012A7D 04:AA6D: 8D AD 05  STA ram_05AD_se
C - - - - - 0x012A80 04:AA70: EE 9C 05  INC ram_0599_se + $03
C - - - - - 0x012A83 04:AA73: CE A1 05  DEC ram_059E_se + $03
bra_AA76_RTS:
C - - - - - 0x012A86 04:AA76: 60        RTS



sub_AA77:
C - - - - - 0x012A87 04:AA77: DE 40 05  DEC ram_0540_se,X
C - - - - - 0x012A8A 04:AA7A: F0 07     BEQ bra_AA83
C - - - - - 0x012A8C 04:AA7C: E0 03     CPX #$03
C - - - - - 0x012A8E 04:AA7E: B0 F6     BCS bra_AA76_RTS
C - - - - - 0x012A90 04:AA80: 4C AE AC  JMP loc_ACAE
bra_AA83:
C - - - - - 0x012A93 04:AA83: BD 52 05  LDA ram_0552_se,X
C - - - - - 0x012A96 04:AA86: 85 E0     STA ram_00E0_se_t01_music_data
C - - - - - 0x012A98 04:AA88: BD 58 05  LDA ram_0558_se,X
C - - - - - 0x012A9B 04:AA8B: 85 E1     STA ram_00E0_se_t01_music_data + $01
C - - - - - 0x012A9D 04:AA8D: A0 00     LDY #$00
loc_AA8F_read_next_byte:
C D 1 - - - 0x012A9F 04:AA8F: B1 E0     LDA (ram_00E0_se_t01_music_data),Y
C - - - - - 0x012AA1 04:AA91: C9 FF     CMP #con_se_cb_stop
C - - - - - 0x012AA3 04:AA93: F0 5F     BEQ bra_AAF4_FF
C - - - - - 0x012AA5 04:AA95: BD 5E 05  LDA ram_055E_se,X
C - - - - - 0x012AA8 04:AA98: 0A        ASL
C - - - - - 0x012AA9 04:AA99: B0 03     BCS bra_AA9E
C - - - - - 0x012AAB 04:AA9B: 4C 4A 84  JMP loc_844A
bra_AA9E:
C - - - - - 0x012AAE 04:AA9E: B1 E0     LDA (ram_00E0_se_t01_music_data),Y
C - - - - - 0x012AB0 04:AAA0: C9 10     CMP #$10
C - - - - - 0x012AB2 04:AAA2: 90 23     BCC bra_AAC7
; 10-FF
C - - - - - 0x012AB4 04:AAA4: C9 DF     CMP #$DF
C - - - - - 0x012AB6 04:AAA6: 90 07     BCC bra_AAAF
; DF-FF
C - - - - - 0x012AB8 04:AAA8: 20 01 80  JSR sub_8001_music_control_bytes_E0_FE
loc_AAAB:
C D 1 - - - 0x012ABB 04:AAAB: C8        INY
C - - - - - 0x012ABC 04:AAAC: 4C 8F AA  JMP loc_AA8F_read_next_byte
bra_AAAF:
; 10-DE
C - - - - - 0x012ABF 04:AAAF: C9 D0     CMP #$D0
C - - - - - 0x012AC1 04:AAB1: 90 0A     BCC bra_AABD
; D0-DE
C - - - - - 0x012AC3 04:AAB3: E0 02     CPX #$02
C - - - - - 0x012AC5 04:AAB5: F0 0D     BEQ bra_AAC4
C - - - - - 0x012AC7 04:AAB7: 20 7E 80  JSR sub_807E
C - - - - - 0x012ACA 04:AABA: 4C AB AA  JMP loc_AAAB
bra_AABD:
C - - - - - 0x012ACD 04:AABD: E0 03     CPX #$03
C - - - - - 0x012ACF 04:AABF: D0 03     BNE bra_AAC4
; 03
C - - - - - 0x012AD1 04:AAC1: 4C 41 85  JMP loc_8541
bra_AAC4:
C - - - - - 0x012AD4 04:AAC4: 4C A0 AB  JMP loc_ABA0
bra_AAC7:
C - - - - - 0x012AD7 04:AAC7: 20 A0 B1  JSR sub_B1A0
C - - - - - 0x012ADA 04:AACA: E0 03     CPX #$03
C - - - - - 0x012ADC 04:AACC: D0 0E     BNE bra_AADC
; 03
C - - - - - 0x012ADE 04:AACE: AD 4B 05  LDA ram_0546_se + $05
C - - - - - 0x012AE1 04:AAD1: C9 03     CMP #$03
C - - - - - 0x012AE3 04:AAD3: B0 1C     BCS bra_AAF1
C - - - - - 0x012AE5 04:AAD5: A9 00     LDA #$00
C - - - - - 0x012AE7 04:AAD7: 8D 4B 05  STA ram_0546_se + $05
C - - - - - 0x012AEA 04:AADA: F0 12     BEQ bra_AAEE    ; jmp
bra_AADC:
C - - - - - 0x012AEC 04:AADC: BD F4 05  LDA ram_05F4_se,X
C - - - - - 0x012AEF 04:AADF: 09 10     ORA #$10
C - - - - - 0x012AF1 04:AAE1: 9D F4 05  STA ram_05F4_se,X
C - - - - - 0x012AF4 04:AAE4: E0 02     CPX #$02
C - - - - - 0x012AF6 04:AAE6: D0 06     BNE bra_AAEE
; 02
C - - - - - 0x012AF8 04:AAE8: 20 2E AB  JSR sub_AB2E
C - - - - - 0x012AFB 04:AAEB: 4C 9E AC  JMP loc_AC9E
bra_AAEE:
C - - - - - 0x012AFE 04:AAEE: 20 1F AB  JSR sub_AB1F
bra_AAF1:
C - - - - - 0x012B01 04:AAF1: 4C 9E AC  JMP loc_AC9E
bra_AAF4_FF:
C - - - - - 0x012B04 04:AAF4: BD 5E 05  LDA ram_055E_se,X
C - - - - - 0x012B07 04:AAF7: 29 02     AND #$02
C - - - - - 0x012B09 04:AAF9: F0 17     BEQ bra_AB12
C - - - - - 0x012B0B 04:AAFB: BD 5E 05  LDA ram_055E_se,X
C - - - - - 0x012B0E 04:AAFE: 29 FD     AND #$FD
C - - - - - 0x012B10 04:AB00: 9D 5E 05  STA ram_055E_se,X
C - - - - - 0x012B13 04:AB03: BD 8E 05  LDA ram_058E_se,X
C - - - - - 0x012B16 04:AB06: 85 E0     STA ram_00E0_se_t01_music_data
C - - - - - 0x012B18 04:AB08: BD 88 05  LDA ram_0588_se,X
C - - - - - 0x012B1B 04:AB0B: 85 E1     STA ram_00E0_se_t01_music_data + $01
C - - - - - 0x012B1D 04:AB0D: A0 00     LDY #$00
C - - - - - 0x012B1F 04:AB0F: 4C 8F AA  JMP loc_AA8F_read_next_byte
bra_AB12:
C - - - - - 0x012B22 04:AB12: A9 00     LDA #$00
C - - - - - 0x012B24 04:AB14: 9D 46 05  STA ram_0546_se,X
C - - - - - 0x012B27 04:AB17: E0 02     CPX #$02
C - - - - - 0x012B29 04:AB19: F0 09     BEQ bra_AB24
C - - - - - 0x012B2B 04:AB1B: E0 04     CPX #$04
C - - - - - 0x012B2D 04:AB1D: F0 15     BEQ bra_AB34
sub_AB1F:
C - - - - - 0x012B2F 04:AB1F: A9 30     LDA #$30
C - - - - - 0x012B31 04:AB21: 4C 02 AF  JMP loc_AF02
bra_AB24:
sub_AB24:
C - - - - - 0x012B34 04:AB24: A9 0B     LDA #$0B
C - - - - - 0x012B36 04:AB26: 8D 15 40  STA $4015
C - - - - - 0x012B39 04:AB29: A9 0F     LDA #$0F
C - - - - - 0x012B3B 04:AB2B: 8D 15 40  STA $4015
sub_AB2E:
loc_AB2E:
C D 1 - - - 0x012B3E 04:AB2E: A9 00     LDA #$00
C - - - - - 0x012B40 04:AB30: 8D 08 40  STA $4008
bra_AB33_RTS:
C - - - - - 0x012B43 04:AB33: 60        RTS
bra_AB34:
C - - - - - 0x012B44 04:AB34: A9 30     LDA #$30
C - - - - - 0x012B46 04:AB36: 8D 00 40  STA $4000
C - - - - - 0x012B49 04:AB39: A9 7F     LDA #$7F
C - - - - - 0x012B4B 04:AB3B: 8D 01 40  STA $4001
C - - - - - 0x012B4E 04:AB3E: AD 62 05  LDA ram_055E_se + $04
C - - - - - 0x012B51 04:AB41: 29 FB     AND #$FB
C - - - - - 0x012B53 04:AB43: 8D 62 05  STA ram_055E_se + $04
C - - - - - 0x012B56 04:AB46: AD 46 05  LDA ram_0546_se
C - - - - - 0x012B59 04:AB49: F0 05     BEQ bra_AB50
C - - - - - 0x012B5B 04:AB4B: 20 71 AB  JSR sub_AB71
C - - - - - 0x012B5E 04:AB4E: A6 EC     LDX ram_00EC_se_channel_index
bra_AB50:
C - - - - - 0x012B60 04:AB50: AD 46 05  LDA ram_0546_se
C - - - - - 0x012B63 04:AB53: C9 67     CMP #$67
C - - - - - 0x012B65 04:AB55: F0 DC     BEQ bra_AB33_RTS
C - - - - - 0x012B67 04:AB57: AD 30 03  LDA ram_0330_flag
C - - - - - 0x012B6A 04:AB5A: F0 04     BEQ bra_AB60
C - - - - - 0x012B6C 04:AB5C: A9 40     LDA #$40
C - - - - - 0x012B6E 04:AB5E: D0 07     BNE bra_AB67    ; jmp
bra_AB60:
C - - - - - 0x012B70 04:AB60: AD 31 03  LDA ram_0331_flag
C - - - - - 0x012B73 04:AB63: F0 CE     BEQ bra_AB33_RTS
- - - - - - 0x012B75 04:AB65: A9 46     LDA #$46
bra_AB67:
C - - - - - 0x012B77 04:AB67: 85 EE     STA ram_00EE_se
C - - - - - 0x012B79 04:AB69: A9 00     LDA #$00
C - - - - - 0x012B7B 04:AB6B: 8D 4B 05  STA ram_0546_se + $05
C - - - - - 0x012B7E 04:AB6E: 4C 86 B2  JMP loc_B286



sub_AB71:
C - - - - - 0x012B81 04:AB71: AD F4 05  LDA ram_05F4_se
C - - - - - 0x012B84 04:AB74: 29 10     AND #$10
C - - - - - 0x012B86 04:AB76: 05 EF     ORA ram_00EF_useless_00
C - - - - - 0x012B88 04:AB78: D0 1F     BNE bra_AB99
C - - - - - 0x012B8A 04:AB7A: AD 5E 05  LDA ram_055E_se
C - - - - - 0x012B8D 04:AB7D: 0A        ASL
C - - - - - 0x012B8E 04:AB7E: 90 19     BCC bra_AB99
C - - - - - 0x012B90 04:AB80: AD 07 03  LDA ram_0307_se
C - - - - - 0x012B93 04:AB83: A2 00     LDX #$00
; bzk optimize, useless STX
C - - - - - 0x012B95 04:AB85: 86 ED     STX ram_00ED_se_t02_useless
C - - - - - 0x012B97 04:AB87: 20 CE AE  JSR sub_AECE
bra_AB8A:
C - - - - - 0x012B9A 04:AB8A: AD 99 05  LDA ram_0599_se
C - - - - - 0x012B9D 04:AB8D: 8D 02 40  STA $4002
C - - - - - 0x012BA0 04:AB90: AD 94 05  LDA ram_0594_se
C - - - - - 0x012BA3 04:AB93: 09 08     ORA #$08
C - - - - - 0x012BA5 04:AB95: 8D 03 40  STA $4003
C - - - - - 0x012BA8 04:AB98: 60        RTS
bra_AB99:
C - - - - - 0x012BA9 04:AB99: A9 30     LDA #$30
C - - - - - 0x012BAB 04:AB9B: 8D 00 40  STA $4000
C - - - - - 0x012BAE 04:AB9E: D0 EA     BNE bra_AB8A    ; jmp



loc_ABA0:
C D 1 - - - 0x012BB0 04:ABA0: A9 00     LDA #$00
C - - - - - 0x012BB2 04:ABA2: 9D F4 05  STA ram_05F4_se,X
C - - - - - 0x012BB5 04:ABA5: 20 A0 B1  JSR sub_B1A0
C - - - - - 0x012BB8 04:ABA8: BD F7 05  LDA ram_05F7_se,X
C - - - - - 0x012BBB 04:ABAB: 29 0F     AND #$0F
C - - - - - 0x012BBD 04:ABAD: 20 B4 B1  JSR sub_B1B4
C - - - - - 0x012BC0 04:ABB0: 9D FA 05  STA ram_05FA_se,X
C - - - - - 0x012BC3 04:ABB3: E0 02     CPX #$02
C - - - - - 0x012BC5 04:ABB5: D0 1F     BNE bra_ABD6
C - - - - - 0x012BC7 04:ABB7: AD FF 05  LDA ram_05FD_se + $02
C - - - - - 0x012BCA 04:ABBA: 8D 08 40  STA $4008
C - - - - - 0x012BCD 04:ABBD: B1 E0     LDA (ram_00E0_se_t01_music_data),Y
C - - - - - 0x012BCF 04:ABBF: C9 D0     CMP #$D0
C - - - - - 0x012BD1 04:ABC1: B0 06     BCS bra_ABC9
C - - - - - 0x012BD3 04:ABC3: 8D 97 05  STA ram_0594_se + $03
C - - - - - 0x012BD6 04:ABC6: 4C 05 AC  JMP loc_AC05
bra_ABC9:
C - - - - - 0x012BD9 04:ABC9: BD B2 05  LDA ram_05B2_se,X
C - - - - - 0x012BDC 04:ABCC: 85 E3     STA ram_00E3_se_t04
C - - - - - 0x012BDE 04:ABCE: E6 E3     INC ram_00E3_se_t04
C - - - - - 0x012BE0 04:ABD0: AD 97 05  LDA ram_0594_se + $03
C - - - - - 0x012BE3 04:ABD3: 4C 0C AC  JMP loc_AC0C
bra_ABD6:
C - - - - - 0x012BE6 04:ABD6: BD 1D 03  LDA ram_031D_se,X
C - - - - - 0x012BE9 04:ABD9: 4A        LSR
C - - - - - 0x012BEA 04:ABDA: 90 08     BCC bra_ABE4
C - - - - - 0x012BEC 04:ABDC: BD F4 05  LDA ram_05F4_se,X
C - - - - - 0x012BEF 04:ABDF: 09 08     ORA #$08
C - - - - - 0x012BF1 04:ABE1: 9D F4 05  STA ram_05F4_se,X
bra_ABE4:
C - - - - - 0x012BF4 04:ABE4: BD 15 03  LDA ram_0315_se,X
C - - - - - 0x012BF7 04:ABE7: F0 06     BEQ bra_ABEF
C - - - - - 0x012BF9 04:ABE9: 20 B2 AE  JSR sub_AEB2
C - - - - - 0x012BFC 04:ABEC: 4C FD AB  JMP loc_ABFD
bra_ABEF:
C - - - - - 0x012BFF 04:ABEF: BD 11 03  LDA ram_0311_se,X
C - - - - - 0x012C02 04:ABF2: F0 06     BEQ bra_ABFA
C - - - - - 0x012C04 04:ABF4: 20 34 AE  JSR sub_AE34
C - - - - - 0x012C07 04:ABF7: 4C FD AB  JMP loc_ABFD
bra_ABFA:
C - - - - - 0x012C0A 04:ABFA: 20 00 AE  JSR sub_AE00
loc_ABFD:
C D 1 - - - 0x012C0D 04:ABFD: BD F4 05  LDA ram_05F4_se,X
C - - - - - 0x012C10 04:AC00: 29 F7     AND #$F7
C - - - - - 0x012C12 04:AC02: 9D F4 05  STA ram_05F4_se,X
loc_AC05:
C D 1 - - - 0x012C15 04:AC05: BD B2 05  LDA ram_05B2_se,X
C - - - - - 0x012C18 04:AC08: 85 E3     STA ram_00E3_se_t04
C - - - - - 0x012C1A 04:AC0A: B1 E0     LDA (ram_00E0_se_t01_music_data),Y
loc_AC0C:
; / 10
C D 1 - - - 0x012C1C 04:AC0C: 4A        LSR
C - - - - - 0x012C1D 04:AC0D: 4A        LSR
C - - - - - 0x012C1E 04:AC0E: 4A        LSR
C - - - - - 0x012C1F 04:AC0F: 4A        LSR
C - - - - - 0x012C20 04:AC10: 85 E4     STA ram_00E4_se_t01
C - - - - - 0x012C22 04:AC12: A9 0C     LDA #$0C
C - - - - - 0x012C24 04:AC14: 85 E2     STA ram_00E2_se_t08
C - - - - - 0x012C26 04:AC16: A5 E3     LDA ram_00E3_se_t04
C - - - - - 0x012C28 04:AC18: F0 03     BEQ bra_AC1D
C - - - - - 0x012C2A 04:AC1A: 20 DC B1  JSR sub_B1DC
bra_AC1D:
C - - - - - 0x012C2D 04:AC1D: 18        CLC
C - - - - - 0x012C2E 04:AC1E: 65 E4     ADC ram_00E4_se_t01
C - - - - - 0x012C30 04:AC20: 85 E2     STA ram_00E2_se_t10
C - - - - - 0x012C32 04:AC22: BD 04 03  LDA ram_0304_se,X
C - - - - - 0x012C35 04:AC25: F0 12     BEQ bra_AC39
C - - - - - 0x012C37 04:AC27: 30 05     BMI bra_AC2E
C - - - - - 0x012C39 04:AC29: 18        CLC
C - - - - - 0x012C3A 04:AC2A: 65 E2     ADC ram_00E2_se_t10
C - - - - - 0x012C3C 04:AC2C: D0 0D     BNE bra_AC3B
bra_AC2E:
C - - - - - 0x012C3E 04:AC2E: 29 7F     AND #$7F
C - - - - - 0x012C40 04:AC30: 85 E3     STA ram_00E3_se_t05
C - - - - - 0x012C42 04:AC32: A5 E2     LDA ram_00E2_se_t10
C - - - - - 0x012C44 04:AC34: 38        SEC
C - - - - - 0x012C45 04:AC35: E5 E3     SBC ram_00E3_se_t05
C - - - - - 0x012C47 04:AC37: D0 02     BNE bra_AC3B
bra_AC39:
C - - - - - 0x012C49 04:AC39: A5 E2     LDA ram_00E2_se_t10
bra_AC3B:
C - - - - - 0x012C4B 04:AC3B: C9 22     CMP #$22
C - - - - - 0x012C4D 04:AC3D: 90 07     BCC bra_AC46
; 22+
C - - - - - 0x012C4F 04:AC3F: 69 1F     ADC #$1F
C - - - - - 0x012C51 04:AC41: AA        TAX
C - - - - - 0x012C52 04:AC42: A9 00     LDA #$00
C - - - - - 0x012C54 04:AC44: F0 08     BEQ bra_AC4E    ; jmp
bra_AC46:
; 00-21
C - - - - - 0x012C56 04:AC46: 0A        ASL
C - - - - - 0x012C57 04:AC47: 38        SEC
C - - - - - 0x012C58 04:AC48: E9 02     SBC #$02
C - - - - - 0x012C5A 04:AC4A: AA        TAX
C - - - - - 0x012C5B 04:AC4B: BD E9 B1  LDA tbl_B1E8 + $01,X
bra_AC4E:
C - - - - - 0x012C5E 04:AC4E: 85 E9     STA ram_00E9_se_t01
C - - - - - 0x012C60 04:AC50: BD E8 B1  LDA tbl_B1E8,X
C - - - - - 0x012C63 04:AC53: 85 E8     STA ram_00E8_se_t01
C - - - - - 0x012C65 04:AC55: A6 EC     LDX ram_00EC_se_channel_index
C - - - - - 0x012C67 04:AC57: A5 E8     LDA ram_00E8_se_t01
C - - - - - 0x012C69 04:AC59: 9D B5 05  STA ram_05B5_se,X
C - - - - - 0x012C6C 04:AC5C: 9D EE 05  STA ram_05EE_se,X
C - - - - - 0x012C6F 04:AC5F: A5 E9     LDA ram_00E9_se_t01
C - - - - - 0x012C71 04:AC61: 9D B8 05  STA ram_05B8_se,X
C - - - - - 0x012C74 04:AC64: 9D F1 05  STA ram_05F1_se,X
C - - - - - 0x012C77 04:AC67: BD BE 05  LDA ram_05BE_se,X
C - - - - - 0x012C7A 04:AC6A: F0 03     BEQ bra_AC6F
C - - - - - 0x012C7C 04:AC6C: 20 3B B0  JSR sub_B03B
bra_AC6F:
C - - - - - 0x012C7F 04:AC6F: BD D3 05  LDA ram_05D3_se,X
C - - - - - 0x012C82 04:AC72: F0 03     BEQ bra_AC77
C - - - - - 0x012C84 04:AC74: 20 6A B0  JSR sub_B06A
bra_AC77:
C - - - - - 0x012C87 04:AC77: BD E2 05  LDA ram_05E2_se,X
C - - - - - 0x012C8A 04:AC7A: F0 09     BEQ bra_AC85
C - - - - - 0x012C8C 04:AC7C: BD E8 05  LDA ram_05E8_se,X
C - - - - - 0x012C8F 04:AC7F: 20 B4 B1  JSR sub_B1B4
C - - - - - 0x012C92 04:AC82: 9D EB 05  STA ram_05EB_se,X
bra_AC85:
C - - - - - 0x012C95 04:AC85: E0 02     CPX #$02
C - - - - - 0x012C97 04:AC87: D0 0A     BNE bra_AC93
; 02
C - - - - - 0x012C99 04:AC89: AD F6 05  LDA ram_05F4_se + $02
C - - - - - 0x012C9C 04:AC8C: 09 01     ORA #$01
C - - - - - 0x012C9E 04:AC8E: 8D F6 05  STA ram_05F4_se + $02
C - - - - - 0x012CA1 04:AC91: D0 08     BNE bra_AC9B    ; jmp
bra_AC93:
C - - - - - 0x012CA3 04:AC93: BD A5 05  LDA ram_05A3_se + $02,X
C - - - - - 0x012CA6 04:AC96: F0 03     BEQ bra_AC9B
C - - - - - 0x012CA8 04:AC98: 20 24 AF  JSR sub_AF24
bra_AC9B:
C - - - - - 0x012CAB 04:AC9B: 20 E0 B0  JSR sub_B0E0
loc_AC9E:
C D 1 - - - 0x012CAE 04:AC9E: C8        INY
C - - - - - 0x012CAF 04:AC9F: 98        TYA
C - - - - - 0x012CB0 04:ACA0: 18        CLC
C - - - - - 0x012CB1 04:ACA1: 65 E0     ADC ram_00E0_se_t01_music_data
C - - - - - 0x012CB3 04:ACA3: 9D 52 05  STA ram_0552_se,X
C - - - - - 0x012CB6 04:ACA6: A9 00     LDA #$00
C - - - - - 0x012CB8 04:ACA8: 65 E1     ADC ram_00E0_se_t01_music_data + $01
C - - - - - 0x012CBA 04:ACAA: 9D 58 05  STA ram_0558_se,X
bra_ACAD_RTS:
C - - - - - 0x012CBD 04:ACAD: 60        RTS



loc_ACAE:
C D 1 - - - 0x012CBE 04:ACAE: BD 5E 05  LDA ram_055E_se,X
C - - - - - 0x012CC1 04:ACB1: 0A        ASL
C - - - - - 0x012CC2 04:ACB2: 90 F9     BCC bra_ACAD_RTS
C - - - - - 0x012CC4 04:ACB4: BD F4 05  LDA ram_05F4_se,X
C - - - - - 0x012CC7 04:ACB7: 29 10     AND #$10
C - - - - - 0x012CC9 04:ACB9: D0 F2     BNE bra_ACAD_RTS
C - - - - - 0x012CCB 04:ACBB: E0 02     CPX #$02
C - - - - - 0x012CCD 04:ACBD: F0 26     BEQ bra_ACE5
C - - - - - 0x012CCF 04:ACBF: BD A5 05  LDA ram_05A3_se + $02,X
C - - - - - 0x012CD2 04:ACC2: F0 21     BEQ bra_ACE5
C - - - - - 0x012CD4 04:ACC4: DE AF 05  DEC ram_05AD_se + $02,X
C - - - - - 0x012CD7 04:ACC7: F0 0B     BEQ bra_ACD4
C - - - - - 0x012CD9 04:ACC9: BD 40 05  LDA ram_0540_se,X
C - - - - - 0x012CDC 04:ACCC: DD FA 05  CMP ram_05FA_se,X
C - - - - - 0x012CDF 04:ACCF: B0 14     BCS bra_ACE5
C - - - - - 0x012CE1 04:ACD1: 4C 5B AD  JMP loc_AD5B
bra_ACD4:
C - - - - - 0x012CE4 04:ACD4: 20 40 AF  JSR sub_AF40
C - - - - - 0x012CE7 04:ACD7: BD 40 05  LDA ram_0540_se,X
C - - - - - 0x012CEA 04:ACDA: DD FA 05  CMP ram_05FA_se,X
C - - - - - 0x012CED 04:ACDD: B0 06     BCS bra_ACE5
C - - - - - 0x012CEF 04:ACDF: 20 70 AF  JSR sub_AF70
C - - - - - 0x012CF2 04:ACE2: 4C 5B AD  JMP loc_AD5B
bra_ACE5:
C - - - - - 0x012CF5 04:ACE5: BD BE 05  LDA ram_05BE_se,X
C - - - - - 0x012CF8 04:ACE8: F0 20     BEQ bra_AD0A
C - - - - - 0x012CFA 04:ACEA: BD F4 05  LDA ram_05F4_se,X
C - - - - - 0x012CFD 04:ACED: 30 0B     BMI bra_ACFA
C - - - - - 0x012CFF 04:ACEF: DE C1 05  DEC ram_05C1_se,X
C - - - - - 0x012D02 04:ACF2: D0 16     BNE bra_AD0A
C - - - - - 0x012D04 04:ACF4: 20 90 AF  JSR sub_AF90
C - - - - - 0x012D07 04:ACF7: 4C 02 AD  JMP loc_AD02
bra_ACFA:
C - - - - - 0x012D0A 04:ACFA: DE BB 05  DEC ram_05BB_se,X
C - - - - - 0x012D0D 04:ACFD: D0 0B     BNE bra_AD0A
C - - - - - 0x012D0F 04:ACFF: 20 9D AF  JSR sub_AF9D
loc_AD02:
C D 1 - - - 0x012D12 04:AD02: BD F4 05  LDA ram_05F4_se,X
C - - - - - 0x012D15 04:AD05: 09 20     ORA #$20
C - - - - - 0x012D17 04:AD07: 9D F4 05  STA ram_05F4_se,X
bra_AD0A:
C - - - - - 0x012D1A 04:AD0A: BD D3 05  LDA ram_05D3_se,X
C - - - - - 0x012D1D 04:AD0D: F0 10     BEQ bra_AD1F
C - - - - - 0x012D1F 04:AD0F: BD DF 05  LDA ram_05DF_se,X
C - - - - - 0x012D22 04:AD12: F0 0B     BEQ bra_AD1F
C - - - - - 0x012D24 04:AD14: DE D9 05  DEC ram_05D9_se,X
C - - - - - 0x012D27 04:AD17: D0 42     BNE bra_AD5B
C - - - - - 0x012D29 04:AD19: 20 5C B0  JSR sub_B05C
C - - - - - 0x012D2C 04:AD1C: 4C 40 AD  JMP loc_AD40
bra_AD1F:
C - - - - - 0x012D2F 04:AD1F: BD E2 05  LDA ram_05E2_se,X
C - - - - - 0x012D32 04:AD22: F0 15     BEQ bra_AD39
C - - - - - 0x012D34 04:AD24: BD EB 05  LDA ram_05EB_se,X
C - - - - - 0x012D37 04:AD27: DD 40 05  CMP ram_0540_se,X
C - - - - - 0x012D3A 04:AD2A: 90 0D     BCC bra_AD39
C - - - - - 0x012D3C 04:AD2C: F0 05     BEQ bra_AD33
C - - - - - 0x012D3E 04:AD2E: DE D9 05  DEC ram_05D9_se,X
C - - - - - 0x012D41 04:AD31: D0 06     BNE bra_AD39
bra_AD33:
C - - - - - 0x012D43 04:AD33: 20 C5 B0  JSR sub_B0C5
C - - - - - 0x012D46 04:AD36: 4C 40 AD  JMP loc_AD40
bra_AD39:
C - - - - - 0x012D49 04:AD39: BD F4 05  LDA ram_05F4_se,X
C - - - - - 0x012D4C 04:AD3C: 29 20     AND #$20
C - - - - - 0x012D4E 04:AD3E: F0 0B     BEQ bra_AD4B
loc_AD40:
C D 1 - - - 0x012D50 04:AD40: 20 E0 B0  JSR sub_B0E0
C - - - - - 0x012D53 04:AD43: BD F4 05  LDA ram_05F4_se,X
C - - - - - 0x012D56 04:AD46: 29 DF     AND #$DF
C - - - - - 0x012D58 04:AD48: 9D F4 05  STA ram_05F4_se,X
bra_AD4B:
C - - - - - 0x012D5B 04:AD4B: E0 02     CPX #$02
C - - - - - 0x012D5D 04:AD4D: F0 0C     BEQ bra_AD5B
C - - - - - 0x012D5F 04:AD4F: BD 07 03  LDA ram_0307_se,X
C - - - - - 0x012D62 04:AD52: D0 07     BNE bra_AD5B
C - - - - - 0x012D64 04:AD54: BD F4 05  LDA ram_05F4_se,X
C - - - - - 0x012D67 04:AD57: 29 06     AND #$06
C - - - - - 0x012D69 04:AD59: F0 23     BEQ bra_AD7E_RTS
bra_AD5B:
loc_AD5B:
C D 1 - - - 0x012D6B 04:AD5B: BD 40 05  LDA ram_0540_se,X
C - - - - - 0x012D6E 04:AD5E: DD FA 05  CMP ram_05FA_se,X
C - - - - - 0x012D71 04:AD61: D0 03     BNE bra_AD66
C - - - - - 0x012D73 04:AD63: 4C AA AD  JMP loc_ADAA
bra_AD66:
C - - - - - 0x012D76 04:AD66: E0 02     CPX #$02
C - - - - - 0x012D78 04:AD68: F0 14     BEQ bra_AD7E_RTS
C - - - - - 0x012D7A 04:AD6A: DE 0B 03  DEC ram_030B_se,X
C - - - - - 0x012D7D 04:AD6D: D0 0F     BNE bra_AD7E_RTS
C - - - - - 0x012D7F 04:AD6F: BD 40 05  LDA ram_0540_se,X
C - - - - - 0x012D82 04:AD72: DD FA 05  CMP ram_05FA_se,X
C - - - - - 0x012D85 04:AD75: 90 19     BCC bra_AD90
C - - - - - 0x012D87 04:AD77: BD F4 05  LDA ram_05F4_se,X
C - - - - - 0x012D8A 04:AD7A: 29 06     AND #$06
C - - - - - 0x012D8C 04:AD7C: D0 01     BNE bra_AD7F
bra_AD7E_RTS:
C - - - - - 0x012D8E 04:AD7E: 60        RTS
bra_AD7F:
C - - - - - 0x012D8F 04:AD7F: C9 02     CMP #$02
C - - - - - 0x012D91 04:AD81: D0 03     BNE bra_AD86
C - - - - - 0x012D93 04:AD83: 4C DD AD  JMP loc_ADDD
bra_AD86:
C - - - - - 0x012D96 04:AD86: C9 04     CMP #$04
C - - - - - 0x012D98 04:AD88: D0 03     BNE bra_AD8D
C - - - - - 0x012D9A 04:AD8A: 4C 19 AE  JMP loc_AE19
bra_AD8D:
C - - - - - 0x012D9D 04:AD8D: 4C 45 AE  JMP loc_AE45
bra_AD90:
C - - - - - 0x012DA0 04:AD90: BD 1D 03  LDA ram_031D_se,X
C - - - - - 0x012DA3 04:AD93: 29 0C     AND #$0C
C - - - - - 0x012DA5 04:AD95: D0 E7     BNE bra_AD7E_RTS
bra_AD97:
C - - - - - 0x012DA7 04:AD97: BD F7 05  LDA ram_05F7_se,X
; / 10
C - - - - - 0x012DAA 04:AD9A: 4A        LSR
C - - - - - 0x012DAB 04:AD9B: 4A        LSR
C - - - - - 0x012DAC 04:AD9C: 4A        LSR
C - - - - - 0x012DAD 04:AD9D: 4A        LSR
C - - - - - 0x012DAE 04:AD9E: 9D 0B 03  STA ram_030B_se,X
C - - - - - 0x012DB1 04:ADA1: DE 07 03  DEC ram_0307_se,X
C - - - - - 0x012DB4 04:ADA4: BD 07 03  LDA ram_0307_se,X
C - - - - - 0x012DB7 04:ADA7: 4C C7 AE  JMP loc_AEC7



loc_ADAA:
C D 1 - - - 0x012DBA 04:ADAA: E0 02     CPX #$02
C - - - - - 0x012DBC 04:ADAC: D0 03     BNE bra_ADB1
C - - - - - 0x012DBE 04:ADAE: 4C 2E AB  JMP loc_AB2E
bra_ADB1:
C - - - - - 0x012DC1 04:ADB1: BD F7 05  LDA ram_05F7_se,X
; / 10
C - - - - - 0x012DC4 04:ADB4: 4A        LSR
C - - - - - 0x012DC5 04:ADB5: 4A        LSR
C - - - - - 0x012DC6 04:ADB6: 4A        LSR
C - - - - - 0x012DC7 04:ADB7: 4A        LSR
C - - - - - 0x012DC8 04:ADB8: F0 C4     BEQ bra_AD7E_RTS
C - - - - - 0x012DCA 04:ADBA: BD A5 05  LDA ram_05A3_se + $02,X
C - - - - - 0x012DCD 04:ADBD: F0 03     BEQ bra_ADC2
C - - - - - 0x012DCF 04:ADBF: 20 70 AF  JSR sub_AF70
bra_ADC2:
C - - - - - 0x012DD2 04:ADC2: BD 1D 03  LDA ram_031D_se,X
C - - - - - 0x012DD5 04:ADC5: 29 02     AND #$02
C - - - - - 0x012DD7 04:ADC7: F0 08     BEQ bra_ADD1
C - - - - - 0x012DD9 04:ADC9: BD F4 05  LDA ram_05F4_se,X
C - - - - - 0x012DDC 04:ADCC: 09 08     ORA #$08
C - - - - - 0x012DDE 04:ADCE: 9D F4 05  STA ram_05F4_se,X
bra_ADD1:
C - - - - - 0x012DE1 04:ADD1: BD 1D 03  LDA ram_031D_se,X
C - - - - - 0x012DE4 04:ADD4: 29 0C     AND #$0C
C - - - - - 0x012DE6 04:ADD6: F0 BF     BEQ bra_AD97
; / 04
C - - - - - 0x012DE8 04:ADD8: 4A        LSR
C - - - - - 0x012DE9 04:ADD9: 4A        LSR
C - - - - - 0x012DEA 04:ADDA: 4C CE AE  JMP loc_AECE



loc_ADDD:
C D 1 - - - 0x012DED 04:ADDD: DE 07 03  DEC ram_0307_se,X
C - - - - - 0x012DF0 04:ADE0: BD 07 03  LDA ram_0307_se,X
C - - - - - 0x012DF3 04:ADE3: 20 C7 AE  JSR sub_AEC7
C - - - - - 0x012DF6 04:ADE6: DE 0D 03  DEC ram_030D_se,X
loc_ADE9:
C D 1 - - - 0x012DF9 04:ADE9: F0 0B     BEQ bra_ADF6
C - - - - - 0x012DFB 04:ADEB: BD 0F 03  LDA ram_030F_se,X
; / 10
C - - - - - 0x012DFE 04:ADEE: 4A        LSR
C - - - - - 0x012DFF 04:ADEF: 4A        LSR
C - - - - - 0x012E00 04:ADF0: 4A        LSR
C - - - - - 0x012E01 04:ADF1: 4A        LSR
C - - - - - 0x012E02 04:ADF2: 9D 0B 03  STA ram_030B_se,X
C - - - - - 0x012E05 04:ADF5: 60        RTS
bra_ADF6:
sub_ADF6:
C - - - - - 0x012E06 04:ADF6: BD F4 05  LDA ram_05F4_se,X
C - - - - - 0x012E09 04:ADF9: 38        SEC
C - - - - - 0x012E0A 04:ADFA: E9 02     SBC #$02
C - - - - - 0x012E0C 04:ADFC: 9D F4 05  STA ram_05F4_se,X
C - - - - - 0x012E0F 04:ADFF: 60        RTS



sub_AE00:
C - - - - - 0x012E10 04:AE00: BD F4 05  LDA ram_05F4_se,X
C - - - - - 0x012E13 04:AE03: 09 02     ORA #$02
C - - - - - 0x012E15 04:AE05: 9D F4 05  STA ram_05F4_se,X
loc_AE08:
C D 1 - - - 0x012E18 04:AE08: BD FD 05  LDA ram_05FD_se,X
C - - - - - 0x012E1B 04:AE0B: 20 CB AE  JSR sub_AECB
C - - - - - 0x012E1E 04:AE0E: BD 0F 03  LDA ram_030F_se,X
C - - - - - 0x012E21 04:AE11: 29 0F     AND #$0F
C - - - - - 0x012E23 04:AE13: 9D 0D 03  STA ram_030D_se,X
C - - - - - 0x012E26 04:AE16: 4C E9 AD  JMP loc_ADE9



loc_AE19:
C D 1 - - - 0x012E29 04:AE19: FE 07 03  INC ram_0307_se,X
C - - - - - 0x012E2C 04:AE1C: BD 07 03  LDA ram_0307_se,X
C - - - - - 0x012E2F 04:AE1F: DD FD 05  CMP ram_05FD_se,X
C - - - - - 0x012E32 04:AE22: F0 0A     BEQ bra_AE2E
loc_AE24:
C D 1 - - - 0x012E34 04:AE24: 20 CE AE  JSR sub_AECE
C - - - - - 0x012E37 04:AE27: BD 11 03  LDA ram_0311_se,X
C - - - - - 0x012E3A 04:AE2A: 9D 0B 03  STA ram_030B_se,X
C - - - - - 0x012E3D 04:AE2D: 60        RTS
bra_AE2E:
C - - - - - 0x012E3E 04:AE2E: 20 F6 AD  JSR sub_ADF6
C - - - - - 0x012E41 04:AE31: 4C 08 AE  JMP loc_AE08



sub_AE34:
C - - - - - 0x012E44 04:AE34: BD F4 05  LDA ram_05F4_se,X
C - - - - - 0x012E47 04:AE37: 09 04     ORA #$04
C - - - - - 0x012E49 04:AE39: 9D F4 05  STA ram_05F4_se,X
C - - - - - 0x012E4C 04:AE3C: BD 13 03  LDA ram_0313_se,X
C - - - - - 0x012E4F 04:AE3F: 9D 07 03  STA ram_0307_se,X
C - - - - - 0x012E52 04:AE42: 4C 24 AE  JMP loc_AE24



loc_AE45:
sub_AE45:
C D 1 - - - 0x012E55 04:AE45: BD 15 03  LDA ram_0315_se,X
C - - - - - 0x012E58 04:AE48: 29 FE     AND #$FE
C - - - - - 0x012E5A 04:AE4A: A8        TAY
C - - - - - 0x012E5B 04:AE4B: B9 93 85  LDA tbl_8593,Y
C - - - - - 0x012E5E 04:AE4E: 85 E2     STA ram_00E2_se_t01_data
C - - - - - 0x012E60 04:AE50: B9 94 85  LDA tbl_8593 + $01,Y
C - - - - - 0x012E63 04:AE53: 85 E3     STA ram_00E2_se_t01_data + $01
loc_AE55:
C - - - - - 0x012E65 04:AE55: BC 17 03  LDY ram_0317_se,X
C - - - - - 0x012E68 04:AE58: B1 E2     LDA (ram_00E2_se_t01_data),Y
C - - - - - 0x012E6A 04:AE5A: C9 FB     CMP #$FB
C - - - - - 0x012E6C 04:AE5C: B0 11     BCS bra_AE6F_FB_FF
; 00-FA
; / 10
C - - - - - 0x012E6E 04:AE5E: 4A        LSR
C - - - - - 0x012E6F 04:AE5F: 4A        LSR
C - - - - - 0x012E70 04:AE60: 4A        LSR
C - - - - - 0x012E71 04:AE61: 4A        LSR
C - - - - - 0x012E72 04:AE62: 9D 0B 03  STA ram_030B_se,X
C - - - - - 0x012E75 04:AE65: B1 E2     LDA (ram_00E2_se_t01_data),Y
C - - - - - 0x012E77 04:AE67: 29 0F     AND #$0F
C - - - - - 0x012E79 04:AE69: FE 17 03  INC ram_0317_se,X
C - - - - - 0x012E7C 04:AE6C: 4C CB AE  JMP loc_AECB
bra_AE6F_FB_FF:
C - - - - - 0x012E7F 04:AE6F: D0 0B     BNE bra_AE7C_FC_FF
; FB
- - - - - - 0x012E81 04:AE71: C8        INY
- - - - - - 0x012E82 04:AE72: 98        TYA
- - - - - - 0x012E83 04:AE73: 9D 1B 03  STA ram_031B_se,X
- - - - - - 0x012E86 04:AE76: FE 17 03  INC ram_0317_se,X
- - - - - - 0x012E89 04:AE79: 4C 55 AE  JMP loc_AE55
bra_AE7C_FC_FF:
C - - - - - 0x012E8C 04:AE7C: C9 FF     CMP #$FF
C - - - - - 0x012E8E 04:AE7E: F0 29     BEQ bra_AEA9_FF
; FC-FE
- - - - - - 0x012E90 04:AE80: C8        INY
- - - - - - 0x012E91 04:AE81: B1 E2     LDA (ram_00E2_se_t01_data),Y
- - - - - - 0x012E93 04:AE83: C9 FF     CMP #$FF
- - - - - - 0x012E95 04:AE85: F0 08     BEQ bra_AE8F
- - - - - - 0x012E97 04:AE87: FE 19 03  INC ram_0319_se,X
- - - - - - 0x012E9A 04:AE8A: DD 19 03  CMP ram_0319_se,X
- - - - - - 0x012E9D 04:AE8D: F0 09     BEQ bra_AE98
bra_AE8F:
- - - - - - 0x012E9F 04:AE8F: BD 1B 03  LDA ram_031B_se,X
- - - - - - 0x012EA2 04:AE92: 9D 17 03  STA ram_0317_se,X
- - - - - - 0x012EA5 04:AE95: 4C 55 AE  JMP loc_AE55
bra_AE98:
- - - - - - 0x012EA8 04:AE98: A9 00     LDA #$00
- - - - - - 0x012EAA 04:AE9A: 9D 19 03  STA ram_0319_se,X
- - - - - - 0x012EAD 04:AE9D: 9D 1B 03  STA ram_031B_se,X
- - - - - - 0x012EB0 04:AEA0: FE 17 03  INC ram_0317_se,X
- - - - - - 0x012EB3 04:AEA3: FE 17 03  INC ram_0317_se,X
- - - - - - 0x012EB6 04:AEA6: 4C 55 AE  JMP loc_AE55
bra_AEA9_FF:
C - - - - - 0x012EB9 04:AEA9: BD F4 05  LDA ram_05F4_se,X
C - - - - - 0x012EBC 04:AEAC: 29 F9     AND #$F9
C - - - - - 0x012EBE 04:AEAE: 9D F4 05  STA ram_05F4_se,X
C - - - - - 0x012EC1 04:AEB1: 60        RTS



sub_AEB2:
C - - - - - 0x012EC2 04:AEB2: BD F4 05  LDA ram_05F4_se,X
C - - - - - 0x012EC5 04:AEB5: 09 06     ORA #$06
C - - - - - 0x012EC7 04:AEB7: 9D F4 05  STA ram_05F4_se,X
C - - - - - 0x012ECA 04:AEBA: A9 00     LDA #$00
C - - - - - 0x012ECC 04:AEBC: 9D 17 03  STA ram_0317_se,X
C - - - - - 0x012ECF 04:AEBF: 84 E4     STY ram_00E4_se_t02_save_Y
C - - - - - 0x012ED1 04:AEC1: 20 45 AE  JSR sub_AE45
C - - - - - 0x012ED4 04:AEC4: A4 E4     LDY ram_00E4_se_t02_save_Y
C - - - - - 0x012ED6 04:AEC6: 60        RTS



loc_AEC7:
sub_AEC7:
C D 1 - - - 0x012ED7 04:AEC7: F0 44     BEQ bra_AF0D
C - - - - - 0x012ED9 04:AEC9: 30 42     BMI bra_AF0D
sub_AECB:
loc_AECB:
C D 1 - - - 0x012EDB 04:AECB: 9D 07 03  STA ram_0307_se,X
sub_AECE:
loc_AECE:
C D 1 - - - 0x012EDE 04:AECE: 38        SEC
C - - - - - 0x012EDF 04:AECF: FD A8 05  SBC ram_05A8_se,X
C - - - - - 0x012EE2 04:AED2: F0 02     BEQ bra_AED6
C - - - - - 0x012EE4 04:AED4: 10 03     BPL bra_AED9
bra_AED6:
C - - - - - 0x012EE6 04:AED6: 20 1C AF  JSR sub_AF1C
bra_AED9:
C - - - - - 0x012EE9 04:AED9: DD 09 03  CMP ram_0309_se,X
C - - - - - 0x012EEC 04:AEDC: B0 03     BCS bra_AEE1
C - - - - - 0x012EEE 04:AEDE: BD 09 03  LDA ram_0309_se,X
bra_AEE1:
C - - - - - 0x012EF1 04:AEE1: 38        SEC
C - - - - - 0x012EF2 04:AEE2: ED 9C 05  SBC ram_0599_se + $03
C - - - - - 0x012EF5 04:AEE5: F0 02     BEQ bra_AEE9
C - - - - - 0x012EF7 04:AEE7: 10 03     BPL bra_AEEC
bra_AEE9:
C - - - - - 0x012EF9 04:AEE9: 20 1C AF  JSR sub_AF1C
bra_AEEC:
C - - - - - 0x012EFC 04:AEEC: 85 E2     STA ram_00E2_se_t11
C - - - - - 0x012EFE 04:AEEE: BD F4 05  LDA ram_05F4_se,X
C - - - - - 0x012F01 04:AEF1: 29 08     AND #$08
C - - - - - 0x012F03 04:AEF3: F0 08     BEQ bra_AEFD
C - - - - - 0x012F05 04:AEF5: BD 1D 03  LDA ram_031D_se,X
C - - - - - 0x012F08 04:AEF8: 29 F0     AND #$F0
C - - - - - 0x012F0A 04:AEFA: 4C 00 AF  JMP loc_AF00
bra_AEFD:
C - - - - - 0x012F0D 04:AEFD: BD A3 05  LDA ram_05A3_se,X
loc_AF00:
C D 1 - - - 0x012F10 04:AF00: 05 E2     ORA ram_00E2_se_t11
sub_AF02:
loc_AF02:
C D 1 - - - 0x012F12 04:AF02: 20 8E B1  JSR sub_B18E
C - - - - - 0x012F15 04:AF05: B0 03     BCS bra_AF0A
C - - - - - 0x012F17 04:AF07: 9D 00 40  STA $4000,X ; 4000 4004 400C
bra_AF0A:
C - - - - - 0x012F1A 04:AF0A: A6 EC     LDX ram_00EC_se_channel_index
C - - - - - 0x012F1C 04:AF0C: 60        RTS
bra_AF0D:
C - - - - - 0x012F1D 04:AF0D: BD F4 05  LDA ram_05F4_se,X
C - - - - - 0x012F20 04:AF10: 29 F9     AND #$F9
C - - - - - 0x012F22 04:AF12: 9D F4 05  STA ram_05F4_se,X
C - - - - - 0x012F25 04:AF15: A9 00     LDA #$00
C - - - - - 0x012F27 04:AF17: 9D 07 03  STA ram_0307_se,X
C - - - - - 0x012F2A 04:AF1A: F0 BD     BEQ bra_AED9    ; jmp



sub_AF1C:
C - - - - - 0x012F2C 04:AF1C: BD 07 03  LDA ram_0307_se,X
C - - - - - 0x012F2F 04:AF1F: F0 02     BEQ bra_AF23_RTS
C - - - - - 0x012F31 04:AF21: A9 01     LDA #$01
bra_AF23_RTS:
C - - - - - 0x012F33 04:AF23: 60        RTS



sub_AF24:
C - - - - - 0x012F34 04:AF24: 29 10     AND #$10
C - - - - - 0x012F36 04:AF26: F0 18     BEQ bra_AF40
C - - - - - 0x012F38 04:AF28: BD A5 05  LDA ram_05A3_se + $02,X
C - - - - - 0x012F3B 04:AF2B: 29 EF     AND #$EF
C - - - - - 0x012F3D 04:AF2D: 9D A5 05  STA ram_05A3_se + $02,X
C - - - - - 0x012F40 04:AF30: A9 03     LDA #$03
C - - - - - 0x012F42 04:AF32: 85 E3     STA ram_00E3_se_t06_loop_counter
C - - - - - 0x012F44 04:AF34: A9 00     LDA #$00
C - - - - - 0x012F46 04:AF36: 9D AA 05  STA ram_05A8_se + $02,X
bra_AF39_loop:
C - - - - - 0x012F49 04:AF39: 20 4A AF  JSR sub_AF4A
C - - - - - 0x012F4C 04:AF3C: C6 E3     DEC ram_00E3_se_t06_loop_counter
C - - - - - 0x012F4E 04:AF3E: D0 F9     BNE bra_AF39_loop
bra_AF40:
sub_AF40:
C - - - - - 0x012F50 04:AF40: 20 4A AF  JSR sub_AF4A
C - - - - - 0x012F53 04:AF43: BD 4C 05  LDA ram_054C_se,X
C - - - - - 0x012F56 04:AF46: 9D AF 05  STA ram_05AD_se + $02,X
C - - - - - 0x012F59 04:AF49: 60        RTS



sub_AF4A:
C - - - - - 0x012F5A 04:AF4A: FE AA 05  INC ram_05A8_se + $02,X
C - - - - - 0x012F5D 04:AF4D: BD AA 05  LDA ram_05A8_se + $02,X
C - - - - - 0x012F60 04:AF50: 29 03     AND #$03
C - - - - - 0x012F62 04:AF52: E0 01     CPX #$01
C - - - - - 0x012F64 04:AF54: D0 03     BNE bra_AF59
C - - - - - 0x012F66 04:AF56: 18        CLC
C - - - - - 0x012F67 04:AF57: 69 04     ADC #$04
bra_AF59:
C - - - - - 0x012F69 04:AF59: 85 E2     STA ram_00E2_se_t12
C - - - - - 0x012F6B 04:AF5B: BD EE 05  LDA ram_05EE_se,X
C - - - - - 0x012F6E 04:AF5E: A6 E2     LDX ram_00E2_se_t12
C - - - - - 0x012F70 04:AF60: 9D 1F 03  STA ram_031F_se,X
C - - - - - 0x012F73 04:AF63: A6 EC     LDX ram_00EC_se_channel_index
C - - - - - 0x012F75 04:AF65: BD F1 05  LDA ram_05F1_se,X
C - - - - - 0x012F78 04:AF68: A6 E2     LDX ram_00E2_se_t12
C - - - - - 0x012F7A 04:AF6A: 9D 27 03  STA ram_0327_se,X
C - - - - - 0x012F7D 04:AF6D: A6 EC     LDX ram_00EC_se_channel_index
C - - - - - 0x012F7F 04:AF6F: 60        RTS



sub_AF70:
C - - - - - 0x012F80 04:AF70: BD AA 05  LDA ram_05A8_se + $02,X
C - - - - - 0x012F83 04:AF73: 38        SEC
C - - - - - 0x012F84 04:AF74: FD A5 05  SBC ram_05A3_se + $02,X
C - - - - - 0x012F87 04:AF77: 29 03     AND #$03
C - - - - - 0x012F89 04:AF79: E0 01     CPX #$01
C - - - - - 0x012F8B 04:AF7B: D0 03     BNE bra_AF80
C - - - - - 0x012F8D 04:AF7D: 18        CLC
C - - - - - 0x012F8E 04:AF7E: 69 04     ADC #$04
bra_AF80:
C - - - - - 0x012F90 04:AF80: AA        TAX
C - - - - - 0x012F91 04:AF81: BD 1F 03  LDA ram_031F_se,X
C - - - - - 0x012F94 04:AF84: 85 E8     STA ram_00E8_se_t02
C - - - - - 0x012F96 04:AF86: BD 27 03  LDA ram_0327_se,X
C - - - - - 0x012F99 04:AF89: 85 E9     STA ram_00E9_se_t02
C - - - - - 0x012F9B 04:AF8B: A6 EC     LDX ram_00EC_se_channel_index
C - - - - - 0x012F9D 04:AF8D: 4C 14 B1  JMP loc_B114



sub_AF90:
C - - - - - 0x012FA0 04:AF90: BD F4 05  LDA ram_05F4_se,X
C - - - - - 0x012FA3 04:AF93: 09 80     ORA #$80
C - - - - - 0x012FA5 04:AF95: 9D F4 05  STA ram_05F4_se,X
C - - - - - 0x012FA8 04:AF98: A9 00     LDA #$00
C - - - - - 0x012FAA 04:AF9A: 9D C7 05  STA ram_05C7_se,X
sub_AF9D:
C - - - - - 0x012FAD 04:AF9D: BD BE 05  LDA ram_05BE_se,X
C - - - - - 0x012FB0 04:AFA0: 38        SEC
C - - - - - 0x012FB1 04:AFA1: E9 50     SBC #$50
C - - - - - 0x012FB3 04:AFA3: 0A        ASL
C - - - - - 0x012FB4 04:AFA4: A8        TAY
C - - - - - 0x012FB5 04:AFA5: B9 99 85  LDA tbl_8599,Y
C - - - - - 0x012FB8 04:AFA8: 85 E2     STA ram_00E2_se_t02_data
C - - - - - 0x012FBA 04:AFAA: B9 9A 85  LDA tbl_8599 + $01,Y
C - - - - - 0x012FBD 04:AFAD: 85 E3     STA ram_00E2_se_t02_data + $01
loc_AFAF:
C D 1 - - - 0x012FBF 04:AFAF: BC C7 05  LDY ram_05C7_se,X
C - - - - - 0x012FC2 04:AFB2: B1 E2     LDA (ram_00E2_se_t02_data),Y
C - - - - - 0x012FC4 04:AFB4: C9 FB     CMP #$FB
C - - - - - 0x012FC6 04:AFB6: B0 40     BCS bra_AFF8
; / 10
C - - - - - 0x012FC8 04:AFB8: 4A        LSR
C - - - - - 0x012FC9 04:AFB9: 4A        LSR
C - - - - - 0x012FCA 04:AFBA: 4A        LSR
C - - - - - 0x012FCB 04:AFBB: 4A        LSR
C - - - - - 0x012FCC 04:AFBC: 9D BB 05  STA ram_05BB_se,X
C - - - - - 0x012FCF 04:AFBF: B1 E2     LDA (ram_00E2_se_t02_data),Y
C - - - - - 0x012FD1 04:AFC1: FE C7 05  INC ram_05C7_se,X
C - - - - - 0x012FD4 04:AFC4: 29 0F     AND #$0F
C - - - - - 0x012FD6 04:AFC6: 85 E2     STA ram_00E2_se_t08
C - - - - - 0x012FD8 04:AFC8: C9 08     CMP #$08
C - - - - - 0x012FDA 04:AFCA: B0 0B     BCS bra_AFD7
; 00-07
C - - - - - 0x012FDC 04:AFCC: BD F4 05  LDA ram_05F4_se,X
C - - - - - 0x012FDF 04:AFCF: 09 40     ORA #$40
C - - - - - 0x012FE1 04:AFD1: 9D F4 05  STA ram_05F4_se,X
C - - - - - 0x012FE4 04:AFD4: 4C E6 AF  JMP loc_AFE6
bra_AFD7:
; 08-0F
C - - - - - 0x012FE7 04:AFD7: BD F4 05  LDA ram_05F4_se,X
C - - - - - 0x012FEA 04:AFDA: 29 BF     AND #$BF
C - - - - - 0x012FEC 04:AFDC: 9D F4 05  STA ram_05F4_se,X
C - - - - - 0x012FEF 04:AFDF: A9 10     LDA #$10
C - - - - - 0x012FF1 04:AFE1: 38        SEC
C - - - - - 0x012FF2 04:AFE2: E5 E2     SBC ram_00E2_se_t08
C - - - - - 0x012FF4 04:AFE4: 85 E2     STA ram_00E2_se_t08
loc_AFE6:
C D 1 - - - 0x012FF6 04:AFE6: A5 E2     LDA ram_00E2_se_t08
C - - - - - 0x012FF8 04:AFE8: F0 0A     BEQ bra_AFF4
C - - - - - 0x012FFA 04:AFEA: BD C4 05  LDA ram_05C4_se,X
C - - - - - 0x012FFD 04:AFED: 29 0F     AND #$0F
C - - - - - 0x012FFF 04:AFEF: F0 03     BEQ bra_AFF4
C - - - - - 0x013001 04:AFF1: 20 DC B1  JSR sub_B1DC
bra_AFF4:
C - - - - - 0x013004 04:AFF4: 9D D0 05  STA ram_05D0_se,X
C - - - - - 0x013007 04:AFF7: 60        RTS
bra_AFF8:
C - - - - - 0x013008 04:AFF8: D0 0B     BNE bra_B005
C - - - - - 0x01300A 04:AFFA: C8        INY
C - - - - - 0x01300B 04:AFFB: 98        TYA
C - - - - - 0x01300C 04:AFFC: 9D CD 05  STA ram_05CD_se,X
C - - - - - 0x01300F 04:AFFF: FE C7 05  INC ram_05C7_se,X
C - - - - - 0x013012 04:B002: 4C AF AF  JMP loc_AFAF
bra_B005:
C - - - - - 0x013015 04:B005: C9 FF     CMP #$FF
C - - - - - 0x013017 04:B007: F0 29     BEQ bra_B032
C - - - - - 0x013019 04:B009: C8        INY
C - - - - - 0x01301A 04:B00A: B1 E2     LDA (ram_00E2_se_t02_data),Y
C - - - - - 0x01301C 04:B00C: C9 FF     CMP #$FF
C - - - - - 0x01301E 04:B00E: F0 08     BEQ bra_B018_FF
- - - - - - 0x013020 04:B010: FE CA 05  INC ram_05CA_se,X
- - - - - - 0x013023 04:B013: DD CA 05  CMP ram_05CA_se,X
- - - - - - 0x013026 04:B016: F0 09     BEQ bra_B021
bra_B018_FF:
C - - - - - 0x013028 04:B018: BD CD 05  LDA ram_05CD_se,X
C - - - - - 0x01302B 04:B01B: 9D C7 05  STA ram_05C7_se,X
C - - - - - 0x01302E 04:B01E: 4C AF AF  JMP loc_AFAF
bra_B021:
- - - - - - 0x013031 04:B021: A9 00     LDA #$00
- - - - - - 0x013033 04:B023: 9D CA 05  STA ram_05CA_se,X
- - - - - - 0x013036 04:B026: 9D CD 05  STA ram_05CD_se,X
- - - - - - 0x013039 04:B029: FE C7 05  INC ram_05C7_se,X
- - - - - - 0x01303C 04:B02C: FE C7 05  INC ram_05C7_se,X
- - - - - - 0x01303F 04:B02F: 4C AF AF  JMP loc_AFAF
bra_B032:
C - - - - - 0x013042 04:B032: BD F4 05  LDA ram_05F4_se,X
C - - - - - 0x013045 04:B035: 29 7F     AND #$7F
C - - - - - 0x013047 04:B037: 9D F4 05  STA ram_05F4_se,X
C - - - - - 0x01304A 04:B03A: 60        RTS



sub_B03B:
C - - - - - 0x01304B 04:B03B: BD 4C 05  LDA ram_054C_se,X
C - - - - - 0x01304E 04:B03E: 85 E2     STA ram_00E2_se_t08
C - - - - - 0x013050 04:B040: BD C4 05  LDA ram_05C4_se,X
; / 10
C - - - - - 0x013053 04:B043: 4A        LSR
C - - - - - 0x013054 04:B044: 4A        LSR
C - - - - - 0x013055 04:B045: 4A        LSR
C - - - - - 0x013056 04:B046: 4A        LSR
C - - - - - 0x013057 04:B047: F0 03     BEQ bra_B04C
C - - - - - 0x013059 04:B049: 20 DC B1  JSR sub_B1DC
bra_B04C:
C - - - - - 0x01305C 04:B04C: 9D C1 05  STA ram_05C1_se,X
C - - - - - 0x01305F 04:B04F: BD C1 05  LDA ram_05C1_se,X
C - - - - - 0x013062 04:B052: D0 07     BNE bra_B05B_RTS
C - - - - - 0x013064 04:B054: 84 E4     STY ram_00E4_se_t03_save_Y
C - - - - - 0x013066 04:B056: 20 90 AF  JSR sub_AF90
C - - - - - 0x013069 04:B059: A4 E4     LDY ram_00E4_se_t03_save_Y
bra_B05B_RTS:
C - - - - - 0x01306B 04:B05B: 60        RTS



sub_B05C:
C - - - - - 0x01306C 04:B05C: DE DF 05  DEC ram_05DF_se,X
C - - - - - 0x01306F 04:B05F: A9 01     LDA #$01
C - - - - - 0x013071 04:B061: 20 B2 B0  JSR sub_B0B2
C - - - - - 0x013074 04:B064: 0A        ASL
C - - - - - 0x013075 04:B065: 90 1F     BCC bra_B086
- - - - - - 0x013077 04:B067: 4C 9F B0  JMP loc_B09F



sub_B06A:
C - - - - - 0x01307A 04:B06A: BD DC 05  LDA ram_05DC_se,X
C - - - - - 0x01307D 04:B06D: 9D DF 05  STA ram_05DF_se,X
C - - - - - 0x013080 04:B070: F0 3F     BEQ bra_B0B1_RTS
C - - - - - 0x013082 04:B072: 20 B2 B0  JSR sub_B0B2
C - - - - - 0x013085 04:B075: BD D6 05  LDA ram_05D6_se,X
C - - - - - 0x013088 04:B078: 29 20     AND #$20
C - - - - - 0x01308A 04:B07A: C9 20     CMP #$20
C - - - - - 0x01308C 04:B07C: 90 19     BCC bra_B097
- - - - - - 0x01308E 04:B07E: BD D6 05  LDA ram_05D6_se,X
- - - - - - 0x013091 04:B081: 09 80     ORA #$80
- - - - - - 0x013093 04:B083: 9D D6 05  STA ram_05D6_se,X
bra_B086:
loc_B086:
C D 1 - - - 0x013096 04:B086: BD B5 05  LDA ram_05B5_se,X
bra_B089_loop:
C - - - - - 0x013099 04:B089: 38        SEC
C - - - - - 0x01309A 04:B08A: E5 E3     SBC ram_00E3_se_t07
C - - - - - 0x01309C 04:B08C: B0 03     BCS bra_B091
C - - - - - 0x01309E 04:B08E: DE B8 05  DEC ram_05B8_se,X
bra_B091:
C - - - - - 0x0130A1 04:B091: C6 E2     DEC ram_00E2_se_t13
C - - - - - 0x0130A3 04:B093: D0 F4     BNE bra_B089_loop
C - - - - - 0x0130A5 04:B095: F0 17     BEQ bra_B0AE    ; jmp
bra_B097:
C - - - - - 0x0130A7 04:B097: BD D6 05  LDA ram_05D6_se,X
C - - - - - 0x0130AA 04:B09A: 29 7F     AND #$7F
C - - - - - 0x0130AC 04:B09C: 9D D6 05  STA ram_05D6_se,X
bra_B09F:
loc_B09F:
C - - - - - 0x0130AF 04:B09F: BD B5 05  LDA ram_05B5_se,X
bra_B0A2_loop:
C - - - - - 0x0130B2 04:B0A2: 18        CLC
C - - - - - 0x0130B3 04:B0A3: 65 E3     ADC ram_00E3_se_t07
C - - - - - 0x0130B5 04:B0A5: 90 03     BCC bra_B0AA
C - - - - - 0x0130B7 04:B0A7: FE B8 05  INC ram_05B8_se,X
bra_B0AA:
C - - - - - 0x0130BA 04:B0AA: C6 E2     DEC ram_00E2_se_t13
C - - - - - 0x0130BC 04:B0AC: D0 F4     BNE bra_B0A2_loop
bra_B0AE:
C - - - - - 0x0130BE 04:B0AE: 9D B5 05  STA ram_05B5_se,X
bra_B0B1_RTS:
C - - - - - 0x0130C1 04:B0B1: 60        RTS



sub_B0B2:
C - - - - - 0x0130C2 04:B0B2: 85 E2     STA ram_00E2_se_t13
C - - - - - 0x0130C4 04:B0B4: BD D3 05  LDA ram_05D3_se,X
C - - - - - 0x0130C7 04:B0B7: 85 E3     STA ram_00E3_se_t07
C - - - - - 0x0130C9 04:B0B9: BD D6 05  LDA ram_05D6_se,X
C - - - - - 0x0130CC 04:B0BC: 29 0F     AND #$0F
C - - - - - 0x0130CE 04:B0BE: 9D D9 05  STA ram_05D9_se,X
C - - - - - 0x0130D1 04:B0C1: BD D6 05  LDA ram_05D6_se,X
C - - - - - 0x0130D4 04:B0C4: 60        RTS



sub_B0C5:
C - - - - - 0x0130D5 04:B0C5: A9 01     LDA #$01
C - - - - - 0x0130D7 04:B0C7: 85 E2     STA ram_00E2_se_t13
C - - - - - 0x0130D9 04:B0C9: BD E2 05  LDA ram_05E2_se,X
C - - - - - 0x0130DC 04:B0CC: 85 E3     STA ram_00E3_se_t07
C - - - - - 0x0130DE 04:B0CE: BD E5 05  LDA ram_05E5_se,X
C - - - - - 0x0130E1 04:B0D1: 29 0F     AND #$0F
C - - - - - 0x0130E3 04:B0D3: 9D D9 05  STA ram_05D9_se,X
C - - - - - 0x0130E6 04:B0D6: BD E5 05  LDA ram_05E5_se,X
C - - - - - 0x0130E9 04:B0D9: 29 20     AND #$20
C - - - - - 0x0130EB 04:B0DB: D0 C2     BNE bra_B09F
C - - - - - 0x0130ED 04:B0DD: 4C 86 B0  JMP loc_B086



sub_B0E0:
C - - - - - 0x0130F0 04:B0E0: BD F4 05  LDA ram_05F4_se,X
C - - - - - 0x0130F3 04:B0E3: 30 04     BMI bra_B0E9
C - - - - - 0x0130F5 04:B0E5: A9 00     LDA #$00
C - - - - - 0x0130F7 04:B0E7: F0 07     BEQ bra_B0F0    ; jmp
bra_B0E9:
C - - - - - 0x0130F9 04:B0E9: 29 40     AND #$40
C - - - - - 0x0130FB 04:B0EB: D0 15     BNE bra_B102
C - - - - - 0x0130FD 04:B0ED: BD D0 05  LDA ram_05D0_se,X
bra_B0F0:
C - - - - - 0x013100 04:B0F0: 18        CLC
C - - - - - 0x013101 04:B0F1: 7D B5 05  ADC ram_05B5_se,X
C - - - - - 0x013104 04:B0F4: 85 E8     STA ram_00E8_se_t02
C - - - - - 0x013106 04:B0F6: BD B8 05  LDA ram_05B8_se,X
C - - - - - 0x013109 04:B0F9: 85 E9     STA ram_00E9_se_t02
C - - - - - 0x01310B 04:B0FB: 90 17     BCC bra_B114
C - - - - - 0x01310D 04:B0FD: E6 E9     INC ram_00E9_se_t02
C - - - - - 0x01310F 04:B0FF: 4C 14 B1  JMP loc_B114
bra_B102:
C - - - - - 0x013112 04:B102: BD B5 05  LDA ram_05B5_se,X
C - - - - - 0x013115 04:B105: 38        SEC
C - - - - - 0x013116 04:B106: FD D0 05  SBC ram_05D0_se,X
C - - - - - 0x013119 04:B109: 85 E8     STA ram_00E8_se_t02
C - - - - - 0x01311B 04:B10B: BD B8 05  LDA ram_05B8_se,X
C - - - - - 0x01311E 04:B10E: 85 E9     STA ram_00E9_se_t02
C - - - - - 0x013120 04:B110: B0 02     BCS bra_B114
C - - - - - 0x013122 04:B112: C6 E9     DEC ram_00E9_se_t02
bra_B114:
sub_B114:
loc_B114:
C D 1 - - - 0x013124 04:B114: BD 9E 05  LDA ram_059E_se,X
C - - - - - 0x013127 04:B117: F0 1C     BEQ bra_B135
C - - - - - 0x013129 04:B119: 30 0F     BMI bra_B12A
C - - - - - 0x01312B 04:B11B: A5 E8     LDA ram_00E8_se_t02
C - - - - - 0x01312D 04:B11D: 38        SEC
C - - - - - 0x01312E 04:B11E: FD 9E 05  SBC ram_059E_se,X
C - - - - - 0x013131 04:B121: 85 E8     STA ram_00E8_se_t02
C - - - - - 0x013133 04:B123: B0 10     BCS bra_B135
C - - - - - 0x013135 04:B125: C6 E9     DEC ram_00E9_se_t02
C - - - - - 0x013137 04:B127: 4C 35 B1  JMP loc_B135
bra_B12A:
C - - - - - 0x01313A 04:B12A: 29 7F     AND #$7F
C - - - - - 0x01313C 04:B12C: 18        CLC
C - - - - - 0x01313D 04:B12D: 65 E8     ADC ram_00E8_se_t02
C - - - - - 0x01313F 04:B12F: 85 E8     STA ram_00E8_se_t02
C - - - - - 0x013141 04:B131: 90 02     BCC bra_B135
- - - - - - 0x013143 04:B133: E6 E9     INC ram_00E9_se_t02
bra_B135:
sub_B135:
loc_B135:
C D 1 - - - 0x013145 04:B135: A5 E9     LDA ram_00E9_se_t02
C - - - - - 0x013147 04:B137: E0 05     CPX #$05
C - - - - - 0x013149 04:B139: F0 33     BEQ bra_B16E
C - - - - - 0x01314B 04:B13B: E0 02     CPX #$02
C - - - - - 0x01314D 04:B13D: D0 10     BNE bra_B14F
; 02
C - - - - - 0x01314F 04:B13F: AD F6 05  LDA ram_05F4_se + $02
C - - - - - 0x013152 04:B142: 4A        LSR
C - - - - - 0x013153 04:B143: BD F4 05  LDA ram_05F4_se,X
C - - - - - 0x013156 04:B146: 29 FE     AND #$FE
C - - - - - 0x013158 04:B148: 9D F4 05  STA ram_05F4_se,X
C - - - - - 0x01315B 04:B14B: A5 E9     LDA ram_00E9_se_t02
C - - - - - 0x01315D 04:B14D: B0 1C     BCS bra_B16B
bra_B14F:
C - - - - - 0x01315F 04:B14F: DD 94 05  CMP ram_0594_se,X
C - - - - - 0x013162 04:B152: D0 17     BNE bra_B16B
C - - - - - 0x013164 04:B154: E0 02     CPX #$02
C - - - - - 0x013166 04:B156: F0 22     BEQ bra_B17A
C - - - - - 0x013168 04:B158: BD 5E 05  LDA ram_055E_se,X
C - - - - - 0x01316B 04:B15B: 30 1D     BMI bra_B17A
C - - - - - 0x01316D 04:B15D: BD AD 05  LDA ram_05AD_se,X
C - - - - - 0x013170 04:B160: 30 07     BMI bra_B169
C - - - - - 0x013172 04:B162: BD A3 05  LDA ram_05A3_se,X
C - - - - - 0x013175 04:B165: 29 10     AND #$10
C - - - - - 0x013177 04:B167: D0 11     BNE bra_B17A
bra_B169:
C - - - - - 0x013179 04:B169: A5 E9     LDA ram_00E9_se_t02
bra_B16B:
C - - - - - 0x01317B 04:B16B: 9D 94 05  STA ram_0594_se,X
bra_B16E:
C - - - - - 0x01317E 04:B16E: 09 08     ORA #$08
C - - - - - 0x013180 04:B170: 20 8E B1  JSR sub_B18E
C - - - - - 0x013183 04:B173: B0 03     BCS bra_B178
C - - - - - 0x013185 04:B175: 9D 03 40  STA $4003,X ; 4003 4007 400B 400F
bra_B178:
C - - - - - 0x013188 04:B178: A6 EC     LDX ram_00EC_se_channel_index
bra_B17A:
C - - - - - 0x01318A 04:B17A: A5 E8     LDA ram_00E8_se_t02
C - - - - - 0x01318C 04:B17C: E0 05     CPX #$05
C - - - - - 0x01318E 04:B17E: F0 03     BEQ bra_B183
C - - - - - 0x013190 04:B180: 9D 99 05  STA ram_0599_se,X
bra_B183:
C - - - - - 0x013193 04:B183: 20 8E B1  JSR sub_B18E
C - - - - - 0x013196 04:B186: B0 03     BCS bra_B18B
C - - - - - 0x013198 04:B188: 9D 02 40  STA $4002,X ; 4002 4006 400A $00E
bra_B18B:
C - - - - - 0x01319B 04:B18B: A6 EC     LDX ram_00EC_se_channel_index
C - - - - - 0x01319D 04:B18D: 60        RTS



sub_B18E:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x01319E 04:B18E: 48        PHA
C - - - - - 0x01319F 04:B18F: E0 00     CPX #$00
C - - - - - 0x0131A1 04:B191: F0 05     BEQ bra_B198
C - - - - - 0x0131A3 04:B193: A6 ED     LDX ram_00ED_se_t01
bra_B195:
C - - - - - 0x0131A5 04:B195: 18        CLC
C - - - - - 0x0131A6 04:B196: 68        PLA
C - - - - - 0x0131A7 04:B197: 60        RTS
bra_B198:
C - - - - - 0x0131A8 04:B198: AD 4A 05  LDA ram_0546_se + $04
C - - - - - 0x0131AB 04:B19B: F0 F8     BEQ bra_B195
C - - - - - 0x0131AD 04:B19D: 38        SEC
C - - - - - 0x0131AE 04:B19E: 68        PLA
C - - - - - 0x0131AF 04:B19F: 60        RTS



sub_B1A0:
C - - - - - 0x0131B0 04:B1A0: BD 4C 05  LDA ram_054C_se,X
C - - - - - 0x0131B3 04:B1A3: 85 E2     STA ram_00E2_se_t08
C - - - - - 0x0131B5 04:B1A5: B1 E0     LDA (ram_00E0_se_t01_music_data),Y
C - - - - - 0x0131B7 04:B1A7: 29 0F     AND #$0F
C - - - - - 0x0131B9 04:B1A9: D0 02     BNE bra_B1AD
C - - - - - 0x0131BB 04:B1AB: A9 10     LDA #$10
bra_B1AD:
C - - - - - 0x0131BD 04:B1AD: 20 DC B1  JSR sub_B1DC
C - - - - - 0x0131C0 04:B1B0: 9D 40 05  STA ram_0540_se,X
C - - - - - 0x0131C3 04:B1B3: 60        RTS



sub_B1B4:
C - - - - - 0x0131C4 04:B1B4: F0 25     BEQ bra_B1DB_RTS
C - - - - - 0x0131C6 04:B1B6: 85 E3     STA ram_00E3_se_t02
C - - - - - 0x0131C8 04:B1B8: BD 40 05  LDA ram_0540_se,X
C - - - - - 0x0131CB 04:B1BB: 85 E2     STA ram_00E2_se_t14
C - - - - - 0x0131CD 04:B1BD: A6 E3     LDX ram_00E3_se_t02
C - - - - - 0x0131CF 04:B1BF: A9 00     LDA #$00
C - - - - - 0x0131D1 04:B1C1: 85 E3     STA ram_00E3_se_t03
bra_B1C3_loop:
C - - - - - 0x0131D3 04:B1C3: 18        CLC
C - - - - - 0x0131D4 04:B1C4: 65 E2     ADC ram_00E2_se_t14
C - - - - - 0x0131D6 04:B1C6: 90 02     BCC bra_B1CA
C - - - - - 0x0131D8 04:B1C8: E6 E3     INC ram_00E3_se_t03
bra_B1CA:
C - - - - - 0x0131DA 04:B1CA: CA        DEX
C - - - - - 0x0131DB 04:B1CB: D0 F6     BNE bra_B1C3_loop
C - - - - - 0x0131DD 04:B1CD: A6 EC     LDX ram_00EC_se_channel_index
; / 10
C - - - - - 0x0131DF 04:B1CF: 46 E3     LSR ram_00E3_se_t03
C - - - - - 0x0131E1 04:B1D1: 6A        ROR
C - - - - - 0x0131E2 04:B1D2: 46 E3     LSR ram_00E3_se_t03
C - - - - - 0x0131E4 04:B1D4: 6A        ROR
C - - - - - 0x0131E5 04:B1D5: 46 E3     LSR ram_00E3_se_t03
C - - - - - 0x0131E7 04:B1D7: 6A        ROR
C - - - - - 0x0131E8 04:B1D8: 46 E3     LSR ram_00E3_se_t03
C - - - - - 0x0131EA 04:B1DA: 6A        ROR
bra_B1DB_RTS:
C - - - - - 0x0131EB 04:B1DB: 60        RTS



sub_B1DC:
C - - - - - 0x0131EC 04:B1DC: AA        TAX
C - - - - - 0x0131ED 04:B1DD: A9 00     LDA #$00
bra_B1DF_loop:
C - - - - - 0x0131EF 04:B1DF: 18        CLC
C - - - - - 0x0131F0 04:B1E0: 65 E2     ADC ram_00E2_se_t08
C - - - - - 0x0131F2 04:B1E2: CA        DEX
C - - - - - 0x0131F3 04:B1E3: D0 FA     BNE bra_B1DF_loop
C - - - - - 0x0131F5 04:B1E5: A6 EC     LDX ram_00EC_se_channel_index
C - - - - - 0x0131F7 04:B1E7: 60        RTS



tbl_B1E8:
; 00-21
- D 1 - - - 0x0131F8 04:B1E8: AE        .byte $AE, $06   ; 01 
- D 1 - - - 0x0131FA 04:B1EA: 4E        .byte $4E, $06   ; 02 
- D 1 - - - 0x0131FC 04:B1EC: F4        .byte $F4, $05   ; 03 
- D 1 - - - 0x0131FE 04:B1EE: 9E        .byte $9E, $05   ; 04 
- D 1 - - - 0x013200 04:B1F0: 4D        .byte $4D, $05   ; 05 
- D 1 - - - 0x013202 04:B1F2: 01        .byte $01, $05   ; 06 
- D 1 - - - 0x013204 04:B1F4: C9        .byte $C9, $04   ; 07 
- D 1 - - - 0x013206 04:B1F6: 75        .byte $75, $04   ; 08 
- D 1 - - - 0x013208 04:B1F8: 35        .byte $35, $04   ; 09 
- D 1 - - - 0x01320A 04:B1FA: F9        .byte $F9, $03   ; 0A 
- D 1 - - - 0x01320C 04:B1FC: C0        .byte $C0, $03   ; 0B 
- D 1 - - - 0x01320E 04:B1FE: 8A        .byte $8A, $03   ; 0C 
- D 1 - - - 0x013210 04:B200: 57        .byte $57, $03   ; 0D 
- D 1 - - - 0x013212 04:B202: 27        .byte $27, $03   ; 0E 
- D 1 - - - 0x013214 04:B204: FA        .byte $FA, $02   ; 0F 
- D 1 - - - 0x013216 04:B206: CF        .byte $CF, $02   ; 10 
- D 1 - - - 0x013218 04:B208: A7        .byte $A7, $02   ; 11 
- D 1 - - - 0x01321A 04:B20A: 81        .byte $81, $02   ; 12 
- D 1 - - - 0x01321C 04:B20C: 5D        .byte $5D, $02   ; 13 
- D 1 - - - 0x01321E 04:B20E: 36        .byte $36, $02   ; 14 
- D 1 - - - 0x013220 04:B210: 16        .byte $16, $02   ; 15 
- D 1 - - - 0x013222 04:B212: FC        .byte $FC, $01   ; 16 
- D 1 - - - 0x013224 04:B214: E0        .byte $E0, $01   ; 17 
- D 1 - - - 0x013226 04:B216: C5        .byte $C5, $01   ; 18 
- D 1 - - - 0x013228 04:B218: AC        .byte $AC, $01   ; 19 
- D 1 - - - 0x01322A 04:B21A: 94        .byte $94, $01   ; 1A 
- D 1 - - - 0x01322C 04:B21C: 7D        .byte $7D, $01   ; 1B 
- D 1 - - - 0x01322E 04:B21E: 68        .byte $68, $01   ; 1C 
- D 1 - - - 0x013230 04:B220: 53        .byte $53, $01   ; 1D 
- D 1 - - - 0x013232 04:B222: 40        .byte $40, $01   ; 1E 
- D 1 - - - 0x013234 04:B224: 2E        .byte $2E, $01   ; 1F 
- D 1 - - - 0x013236 04:B226: 1D        .byte $1D, $01   ; 20 
- D 1 - - - 0x013238 04:B228: 0D        .byte $0D, $01   ; 21 
; 22+
- D 1 - - - 0x01323A 04:B22A: FE        .byte $FE   ; 22 
- D 1 - - - 0x01323B 04:B22B: F0        .byte $F0   ; 23 
- D 1 - - - 0x01323C 04:B22C: E2        .byte $E2   ; 24 
- D 1 - - - 0x01323D 04:B22D: D6        .byte $D6   ; 25 
- D 1 - - - 0x01323E 04:B22E: CA        .byte $CA   ; 26 
- D 1 - - - 0x01323F 04:B22F: BE        .byte $BE   ; 27 
- D 1 - - - 0x013240 04:B230: B4        .byte $B4   ; 28 
- D 1 - - - 0x013241 04:B231: AA        .byte $AA   ; 29 
- D 1 - - - 0x013242 04:B232: A0        .byte $A0   ; 2A 
- D 1 - - - 0x013243 04:B233: 97        .byte $97   ; 2B 
- D 1 - - - 0x013244 04:B234: 8F        .byte $8F   ; 2C 
- D 1 - - - 0x013245 04:B235: 87        .byte $87   ; 2D 
- D 1 - - - 0x013246 04:B236: 7F        .byte $7F   ; 2E 
- D 1 - - - 0x013247 04:B237: 77        .byte $77   ; 2F 
- D 1 - - - 0x013248 04:B238: 71        .byte $71   ; 30 
- D 1 - - - 0x013249 04:B239: 6B        .byte $6B   ; 31 
- D 1 - - - 0x01324A 04:B23A: 65        .byte $65   ; 32 
- D 1 - - - 0x01324B 04:B23B: 5F        .byte $5F   ; 33 
- D 1 - - - 0x01324C 04:B23C: 59        .byte $59   ; 34 
- D 1 - - - 0x01324D 04:B23D: 55        .byte $55   ; 35 
- D 1 - - - 0x01324E 04:B23E: 50        .byte $50   ; 36 
- - - - - - 0x01324F 04:B23F: 4B        .byte $4B   ; 37 
- D 1 - - - 0x013250 04:B240: 47        .byte $47   ; 38 
- D 1 - - - 0x013251 04:B241: 43        .byte $43   ; 39 
- - - - - - 0x013252 04:B242: 3F        .byte $3F   ; 3A 
- - - - - - 0x013253 04:B243: 3B        .byte $3B   ; 3B 
- - - - - - 0x013254 04:B244: 38        .byte $38   ; 3C 
- - - - - - 0x013255 04:B245: 35        .byte $35   ; 3D 
- - - - - - 0x013256 04:B246: 32        .byte $32   ; 3E 
- - - - - - 0x013257 04:B247: 2F        .byte $2F   ; 3F 
- - - - - - 0x013258 04:B248: 2C        .byte $2C   ; 40 
- - - - - - 0x013259 04:B249: 2A        .byte $2A   ; 41 
- - - - - - 0x01325A 04:B24A: 28        .byte $28   ; 42 
- - - - - - 0x01325B 04:B24B: 25        .byte $25   ; 43 
- - - - - - 0x01325C 04:B24C: 23        .byte $23   ; 44 
- - - - - - 0x01325D 04:B24D: 21        .byte $21   ; 45 
- - - - - - 0x01325E 04:B24E: 1F        .byte $1F   ; 46 
- - - - - - 0x01325F 04:B24F: 1D        .byte $1D   ; 47 
- - - - - - 0x013260 04:B250: 1B        .byte $1B   ; 48 



ofs_006_0x013261_1E:
; con_F3D6_1E
C - - J - - 0x013261 04:B251: AD 34 03  LDA ram_0334_copy_0332_flag
C - - - - - 0x013264 04:B254: 8D 32 03  STA ram_0332_flag
C - - - - - 0x013267 04:B257: A9 00     LDA #$00
C - - - - - 0x013269 04:B259: 8D 34 03  STA ram_0334_copy_0332_flag
C - - - - - 0x01326C 04:B25C: AD 2F 03  LDA ram_032F
C - - - - - 0x01326F 04:B25F: C9 74     CMP #$74
C - - - - - 0x013271 04:B261: F0 08     BEQ bra_B26B
C - - - - - 0x013273 04:B263: C9 88     CMP #$88
C - - - - - 0x013275 04:B265: F0 04     BEQ bra_B26B
C - - - - - 0x013277 04:B267: C9 90     CMP #$90
C - - - - - 0x013279 04:B269: D0 03     BNE bra_B26E
bra_B26B:
C - - - - - 0x01327B 04:B26B: 18        CLC
C - - - - - 0x01327C 04:B26C: 69 04     ADC #$04
bra_B26E:
C - - - - - 0x01327E 04:B26E: 85 EE     STA ram_00EE_se
C - - - - - 0x013280 04:B270: 20 86 B2  JSR sub_B286
C - - - - - 0x013283 04:B273: AD 30 03  LDA ram_0330_flag
C - - - - - 0x013286 04:B276: D0 06     BNE bra_B27E
C - - - - - 0x013288 04:B278: AD 31 03  LDA ram_0331_flag
C - - - - - 0x01328B 04:B27B: D0 05     BNE bra_B282
C - - - - - 0x01328D 04:B27D: 60        RTS
bra_B27E:
- - - - - - 0x01328E 04:B27E: A9 40     LDA #$40
- - - - - - 0x013290 04:B280: D0 02     BNE bra_B284    ; jmp
bra_B282:
- - - - - - 0x013292 04:B282: A9 46     LDA #$46
bra_B284:
- - - - - - 0x013294 04:B284: 85 EE     STA ram_00EE_se
sub_B286:
loc_B286:
sub_0x013296:
ofs_006_0x013296_03:
; con_F3D6_03
C D 1 - - - 0x013296 04:B286: 86 E4     STX ram_00E4_se_t04_save_X
C - - - - - 0x013298 04:B288: 84 E5     STY ram_00E5_se_t01_save_Y
C - - - - - 0x01329A 04:B28A: A5 EE     LDA ram_00EE_se
C - - - - - 0x01329C 04:B28C: C9 AC     CMP #$AC
C - - - - - 0x01329E 04:B28E: 90 06     BCC bra_B296    ; 00-AB
; AC+
C - - - - - 0x0132A0 04:B290: 20 65 85  JSR sub_8565
C - - - - - 0x0132A3 04:B293: 4C CF B3  JMP loc_B3CF
bra_B296:
C - - - - - 0x0132A6 04:B296: C9 67     CMP #$67
C - - - - - 0x0132A8 04:B298: 90 27     BCC bra_B2C1    ; 00-66
; 67-AB
C - - - - - 0x0132AA 04:B29A: D0 14     BNE bra_B2B0
; 67
C - - - - - 0x0132AC 04:B29C: AD 32 03  LDA ram_0332_flag
C - - - - - 0x0132AF 04:B29F: 8D 34 03  STA ram_0334_copy_0332_flag
C - - - - - 0x0132B2 04:B2A2: A9 00     LDA #$00
C - - - - - 0x0132B4 04:B2A4: 8D 32 03  STA ram_0332_flag
C - - - - - 0x0132B7 04:B2A7: AD 47 05  LDA ram_0546_se + $01
C - - - - - 0x0132BA 04:B2AA: 8D 2F 03  STA ram_032F
C - - - - - 0x0132BD 04:B2AD: 4C EB B2  JMP loc_B2EB
bra_B2B0:
C - - - - - 0x0132C0 04:B2B0: C9 A4     CMP #$A4
C - - - - - 0x0132C2 04:B2B2: D0 37     BNE bra_B2EB
; A4
C - - - - - 0x0132C4 04:B2B4: A9 00     LDA #$00
C - - - - - 0x0132C6 04:B2B6: 8D 30 03  STA ram_0330_flag
C - - - - - 0x0132C9 04:B2B9: 8D 31 03  STA ram_0331_flag
C - - - - - 0x0132CC 04:B2BC: 8D 32 03  STA ram_0332_flag
C - - - - - 0x0132CF 04:B2BF: F0 2A     BEQ bra_B2EB    ; jmp
bra_B2C1:
C - - - - - 0x0132D1 04:B2C1: C9 3E     CMP #$3E
C - - - - - 0x0132D3 04:B2C3: D0 04     BNE bra_B2C9
; 3E
C - - - - - 0x0132D5 04:B2C5: A9 01     LDA #$01
C - - - - - 0x0132D7 04:B2C7: D0 06     BNE bra_B2CF    ; jmp
bra_B2C9:
C - - - - - 0x0132D9 04:B2C9: C9 42     CMP #$42
C - - - - - 0x0132DB 04:B2CB: D0 05     BNE bra_B2D2
; 42
C - - - - - 0x0132DD 04:B2CD: A9 00     LDA #$00
bra_B2CF:
C - - - - - 0x0132DF 04:B2CF: 8D 30 03  STA ram_0330_flag
bra_B2D2:
C - - - - - 0x0132E2 04:B2D2: C9 44     CMP #$44
C - - - - - 0x0132E4 04:B2D4: D0 04     BNE bra_B2DA
; 44
C - - - - - 0x0132E6 04:B2D6: A9 01     LDA #$01
C - - - - - 0x0132E8 04:B2D8: D0 06     BNE bra_B2E0    ; jmp
bra_B2DA:
C - - - - - 0x0132EA 04:B2DA: C9 48     CMP #$48
C - - - - - 0x0132EC 04:B2DC: D0 05     BNE bra_B2E3
; 48
C - - - - - 0x0132EE 04:B2DE: A9 00     LDA #$00
bra_B2E0:
C - - - - - 0x0132F0 04:B2E0: 8D 31 03  STA ram_0331_flag
bra_B2E3:
C - - - - - 0x0132F3 04:B2E3: C9 50     CMP #$50
C - - - - - 0x0132F5 04:B2E5: F0 04     BEQ bra_B2EB    ; 50
C - - - - - 0x0132F7 04:B2E7: C9 55     CMP #$55
C - - - - - 0x0132F9 04:B2E9: D0 03     BNE bra_B2EE
; 50/55
bra_B2EB:
loc_B2EB:
C D 1 - - - 0x0132FB 04:B2EB: 20 D6 B3  JSR sub_B3D6
bra_B2EE:
C - - - - - 0x0132FE 04:B2EE: AD D4 B3  LDA tbl_B3D4
C - - - - - 0x013301 04:B2F1: 85 E6     STA ram_00E6_se_t01_data
C - - - - - 0x013303 04:B2F3: AD D5 B3  LDA tbl_B3D4 + $01
C - - - - - 0x013306 04:B2F6: 85 E7     STA ram_00E6_se_t01_data + $01
C - - - - - 0x013308 04:B2F8: A9 03     LDA #$03
C - - - - - 0x01330A 04:B2FA: 85 E2     STA ram_00E2_se_t07_loop_counter
bra_B2FC_loop:
C - - - - - 0x01330C 04:B2FC: A5 EE     LDA ram_00EE_se
C - - - - - 0x01330E 04:B2FE: 18        CLC
C - - - - - 0x01330F 04:B2FF: 65 E6     ADC ram_00E6_se_t01_data
C - - - - - 0x013311 04:B301: 85 E6     STA ram_00E6_se_t01_data
C - - - - - 0x013313 04:B303: A9 00     LDA #$00
C - - - - - 0x013315 04:B305: 65 E7     ADC ram_00E6_se_t01_data + $01
C - - - - - 0x013317 04:B307: 85 E7     STA ram_00E6_se_t01_data + $01
C - - - - - 0x013319 04:B309: C6 E2     DEC ram_00E2_se_t07_loop_counter
C - - - - - 0x01331B 04:B30B: D0 EF     BNE bra_B2FC_loop
C - - - - - 0x01331D 04:B30D: A0 00     LDY #$00
C - - - - - 0x01331F 04:B30F: B1 E6     LDA (ram_00E6_se_t01_data),Y
; / 10
C - - - - - 0x013321 04:B311: 4A        LSR
C - - - - - 0x013322 04:B312: 4A        LSR
C - - - - - 0x013323 04:B313: 4A        LSR
C - - - - - 0x013324 04:B314: 4A        LSR
C - - - - - 0x013325 04:B315: 85 E3     STA ram_00E3_se_t08_loop_counter
loc_B317_loop:
C D 1 - - - 0x013327 04:B317: B1 E6     LDA (ram_00E6_se_t01_data),Y
C - - - - - 0x013329 04:B319: 29 0F     AND #$0F
C - - - - - 0x01332B 04:B31B: AA        TAX
C - - - - - 0x01332C 04:B31C: A5 EE     LDA ram_00EE_se
C - - - - - 0x01332E 04:B31E: C9 04     CMP #$04
C - - - - - 0x013330 04:B320: B0 04     BCS bra_B326    ; 04+
; 00-03
C - - - - - 0x013332 04:B322: A9 03     LDA #$03
C - - - - - 0x013334 04:B324: D0 27     BNE bra_B34D    ; jmp
bra_B326:
C - - - - - 0x013336 04:B326: C9 19     CMP #$19
C - - - - - 0x013338 04:B328: B0 0A     BCS bra_B334    ; 19+
; 04-18
C - - - - - 0x01333A 04:B32A: C9 0C     CMP #$0C
C - - - - - 0x01333C 04:B32C: 90 12     BCC bra_B340    ; 04-0B
; 0C-18
C - - - - - 0x01333E 04:B32E: A9 18     LDA #$18
C - - - - - 0x013340 04:B330: 85 EE     STA ram_00EE_se
C - - - - - 0x013342 04:B332: D0 0C     BNE bra_B340    ; jmp
bra_B334:
C - - - - - 0x013344 04:B334: C9 60     CMP #$60
C - - - - - 0x013346 04:B336: B0 08     BCS bra_B340    ; 60+
; 19-5F
C - - - - - 0x013348 04:B338: C9 59     CMP #$59
C - - - - - 0x01334A 04:B33A: 90 04     BCC bra_B340    ; 19-58
; 59-5F
C - - - - - 0x01334C 04:B33C: A9 5F     LDA #$5F
C - - - - - 0x01334E 04:B33E: 85 EE     STA ram_00EE_se
bra_B340:
C - - - - - 0x013350 04:B340: C9 67     CMP #$67
C - - - - - 0x013352 04:B342: B0 09     BCS bra_B34D    ; 67+
C - - - - - 0x013354 04:B344: AD 49 05  LDA ram_0546_se + $03
C - - - - - 0x013357 04:B347: C9 9C     CMP #$9C
C - - - - - 0x013359 04:B349: F0 07     BEQ bra_B352
C - - - - - 0x01335B 04:B34B: A5 EE     LDA ram_00EE_se
bra_B34D:
C - - - - - 0x01335D 04:B34D: DD 46 05  CMP ram_0546_se,X
C - - - - - 0x013360 04:B350: B0 05     BCS bra_B357
bra_B352:
C - - - - - 0x013362 04:B352: C8        INY
C - - - - - 0x013363 04:B353: C8        INY
C - - - - - 0x013364 04:B354: 4C C7 B3  JMP loc_B3C7
bra_B357:
C - - - - - 0x013367 04:B357: C8        INY
C - - - - - 0x013368 04:B358: B1 E6     LDA (ram_00E6_se_t01_data),Y
C - - - - - 0x01336A 04:B35A: 9D 52 05  STA ram_0552_se,X
C - - - - - 0x01336D 04:B35D: 85 EA     STA ram_00EA_se_t01_data
C - - - - - 0x01336F 04:B35F: C8        INY
C - - - - - 0x013370 04:B360: B1 E6     LDA (ram_00E6_se_t01_data),Y
C - - - - - 0x013372 04:B362: 9D 58 05  STA ram_0558_se,X
C - - - - - 0x013375 04:B365: 85 EB     STA ram_00EA_se_t01_data + $01
C - - - - - 0x013377 04:B367: A9 01     LDA #$01
C - - - - - 0x013379 04:B369: 9D 40 05  STA ram_0540_se,X
C - - - - - 0x01337C 04:B36C: A9 00     LDA #$00
C - - - - - 0x01337E 04:B36E: 9D 70 05  STA ram_0570_se,X
C - - - - - 0x013381 04:B371: 9D 82 05  STA ram_0582_se,X
C - - - - - 0x013384 04:B374: E0 05     CPX #$05
C - - - - - 0x013386 04:B376: F0 34     BEQ bra_B3AC
C - - - - - 0x013388 04:B378: E0 03     CPX #$03
C - - - - - 0x01338A 04:B37A: F0 30     BEQ bra_B3AC
C - - - - - 0x01338C 04:B37C: A9 F8     LDA #$F8
C - - - - - 0x01338E 04:B37E: 9D 94 05  STA ram_0594_se,X
C - - - - - 0x013391 04:B381: A9 00     LDA #$00
C - - - - - 0x013393 04:B383: 9D 9E 05  STA ram_059E_se,X
C - - - - - 0x013396 04:B386: 9D A8 05  STA ram_05A8_se,X
C - - - - - 0x013399 04:B389: E0 04     CPX #$04
C - - - - - 0x01339B 04:B38B: B0 1F     BCS bra_B3AC
C - - - - - 0x01339D 04:B38D: 9D D3 05  STA ram_05D3_se,X
C - - - - - 0x0133A0 04:B390: 9D E2 05  STA ram_05E2_se,X
C - - - - - 0x0133A3 04:B393: 9D BE 05  STA ram_05BE_se,X
C - - - - - 0x0133A6 04:B396: 9D D0 05  STA ram_05D0_se,X
C - - - - - 0x0133A9 04:B399: 9D 04 03  STA ram_0304_se,X
C - - - - - 0x0133AC 04:B39C: E0 02     CPX #$02
C - - - - - 0x0133AE 04:B39E: F0 0C     BEQ bra_B3AC
C - - - - - 0x0133B0 04:B3A0: 9D A5 05  STA ram_05A3_se + $02,X
C - - - - - 0x0133B3 04:B3A3: 9D 11 03  STA ram_0311_se,X
C - - - - - 0x0133B6 04:B3A6: 9D 1D 03  STA ram_031D_se,X
C - - - - - 0x0133B9 04:B3A9: 9D 09 03  STA ram_0309_se,X
bra_B3AC:
C - - - - - 0x0133BC 04:B3AC: A5 EE     LDA ram_00EE_se
C - - - - - 0x0133BE 04:B3AE: 9D 46 05  STA ram_0546_se,X
C - - - - - 0x0133C1 04:B3B1: 84 E2     STY ram_00E2_se_t06
C - - - - - 0x0133C3 04:B3B3: A0 00     LDY #$00
C - - - - - 0x0133C5 04:B3B5: E0 04     CPX #$04
C - - - - - 0x0133C7 04:B3B7: 90 03     BCC bra_B3BC
; 04 05
C - - - - - 0x0133C9 04:B3B9: 18        CLC
C - - - - - 0x0133CA 04:B3BA: 90 04     BCC bra_B3C0    ; jmp
bra_B3BC:
C - - - - - 0x0133CC 04:B3BC: B1 EA     LDA (ram_00EA_se_t01_data),Y
C - - - - - 0x0133CE 04:B3BE: C9 10     CMP #$10
bra_B3C0:
C - - - - - 0x0133D0 04:B3C0: 98        TYA
C - - - - - 0x0133D1 04:B3C1: 6A        ROR
C - - - - - 0x0133D2 04:B3C2: 9D 5E 05  STA ram_055E_se,X
C - - - - - 0x0133D5 04:B3C5: A4 E2     LDY ram_00E2_se_t06
loc_B3C7:
C D 1 - - - 0x0133D7 04:B3C7: C6 E3     DEC ram_00E3_se_t08_loop_counter
C - - - - - 0x0133D9 04:B3C9: 30 04     BMI bra_B3CF
C - - - - - 0x0133DB 04:B3CB: C8        INY
C - - - - - 0x0133DC 04:B3CC: 4C 17 B3  JMP loc_B317_loop
bra_B3CF:
loc_B3CF:
C D 1 - - - 0x0133DF 04:B3CF: A6 E4     LDX ram_00E4_se_t04_save_X
C - - - - - 0x0133E1 04:B3D1: A4 E5     LDY ram_00E5_se_t01_save_Y
C - - - - - 0x0133E3 04:B3D3: 60        RTS



tbl_B3D4:
; bzk optimize
- D 1 - - - 0x0133E4 04:B3D4: 46 82     .word tbl_8249 - $03



loc_B3D6:
sub_B3D6:
ofs_006_0x0133E6_01:
; con_F3D6_01
C D 1 J - - 0x0133E6 04:B3D6: A2 07     LDX #$07
C - - - - - 0x0133E8 04:B3D8: A9 00     LDA #$00
bra_B3DA_loop:
; clear 0546-054C
; bzk bug, should be 0546-054B?
C - - - - - 0x0133EA 04:B3DA: CA        DEX
C - - - - - 0x0133EB 04:B3DB: 9D 46 05  STA ram_0546_se,X
C - - - - - 0x0133EE 04:B3DE: D0 FA     BNE bra_B3DA_loop
; A = 00
C - - - - - 0x0133F0 04:B3E0: 8D A1 05  STA ram_059E_se + $03
C - - - - - 0x0133F3 04:B3E3: 8D 9C 05  STA ram_0599_se + $03
C - - - - - 0x0133F6 04:B3E6: 8D AD 05  STA ram_05AD_se
C - - - - - 0x0133F9 04:B3E9: 20 24 AB  JSR sub_AB24
C - - - - - 0x0133FC 04:B3EC: A9 30     LDA #$30
C - - - - - 0x0133FE 04:B3EE: 8D 00 40  STA $4000
C - - - - - 0x013401 04:B3F1: 8D 04 40  STA $4004
C - - - - - 0x013404 04:B3F4: 8D 0C 40  STA $400C
C - - - - - 0x013407 04:B3F7: A9 7F     LDA #$7F
C - - - - - 0x013409 04:B3F9: 8D 01 40  STA $4001
C - - - - - 0x01340C 04:B3FC: 8D 05 40  STA $4005
C - - - - - 0x01340F 04:B3FF: 60        RTS



_off000_B400_7C_01:
loc_FE_B400:
- D 1 - I - 0x013410 04:B400: E0        .byte con_se_cb_E0   ; 
- D 1 - I - 0x013411 04:B401: 06        .byte $06   ; 
- D 1 - I - 0x013412 04:B402: B7        .byte $B7   ; 
- D 1 - I - 0x013413 04:B403: 83        .byte $83   ; 
- D 1 - I - 0x013414 04:B404: 35        .byte $35   ; 
- D 1 - I - 0x013415 04:B405: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x013416 04:B406: E9        .byte con_se_cb_E9, $01   ; 
- D 1 - I - 0x013418 04:B408: EA        .byte con_se_cb_EA, $03   ; 
- D 1 - I - 0x01341A 04:B40A: FD        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x01341B 04:B40B: D2 B5     .word sub_FD_B5D2
- D 1 - I - 0x01341D 04:B40D: 13        .byte $13   ; 
- D 1 - I - 0x01341E 04:B40E: FD        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x01341F 04:B40F: D2 B5     .word sub_FD_B5D2
- D 1 - I - 0x013421 04:B411: 11        .byte $11   ; 
- D 1 - I - 0x013422 04:B412: E0        .byte con_se_cb_E0   ; 
- D 1 - I - 0x013423 04:B413: 06        .byte $06   ; 
- D 1 - I - 0x013424 04:B414: 36        .byte $36   ; 
- D 1 - I - 0x013425 04:B415: 82        .byte $82   ; 
- D 1 - I - 0x013426 04:B416: 12        .byte $12   ; 
- D 1 - I - 0x013427 04:B417: E2        .byte con_se_cb_E2, $F5   ; 
- D 1 - I - 0x013429 04:B419: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x01342A 04:B41A: E9        .byte con_se_cb_E9, $00   ; 
- D 1 - I - 0x01342C 04:B41C: EA        .byte con_se_cb_EA, $02   ; 
- D 1 - I - 0x01342E 04:B41E: 61        .byte $61   ; 
- D 1 - I - 0x01342F 04:B41F: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x013430 04:B420: 11        .byte $11   ; 
- D 1 - I - 0x013431 04:B421: E0        .byte con_se_cb_E0   ; 
- D 1 - I - 0x013432 04:B422: 0C        .byte $0C   ; 
- D 1 - I - 0x013433 04:B423: 36        .byte $36   ; 
- D 1 - I - 0x013434 04:B424: 82        .byte $82   ; 
- D 1 - I - 0x013435 04:B425: 12        .byte $12   ; 
- D 1 - I - 0x013436 04:B426: E2        .byte con_se_cb_E2, $F5   ; 
- D 1 - I - 0x013438 04:B428: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x013439 04:B429: EA        .byte con_se_cb_EA, $02   ; 
- D 1 - I - 0x01343B 04:B42B: E7        .byte con_se_cb_E7, $57, $44   ; 
- D 1 - I - 0x01343E 04:B42E: CB        .byte $CB   ; 
- D 1 - I - 0x01343F 04:B42F: E5        .byte con_se_cb_E5, $26   ; 
- D 1 - I - 0x013441 04:B431: E1        .byte con_se_cb_E1, $06   ; 
- D 1 - I - 0x013443 04:B433: C1        .byte $C1   ; 
- D 1 - I - 0x013444 04:B434: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x013445 04:B435: 11        .byte $11   ; 
- D 1 - I - 0x013446 04:B436: E1        .byte con_se_cb_E1, $01   ; 
- D 1 - I - 0x013448 04:B438: 21        .byte $21   ; 
- D 1 - I - 0x013449 04:B439: 35        .byte $35   ; 
- D 1 - I - 0x01344A 04:B43A: E1        .byte con_se_cb_E1, $06   ; 
- D 1 - I - 0x01344C 04:B43C: 31        .byte $31   ; 
- D 1 - I - 0x01344D 04:B43D: 31        .byte $31   ; 
- D 1 - I - 0x01344E 04:B43E: 13        .byte $13   ; 
- D 1 - I - 0x01344F 04:B43F: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x013450 04:B440: C2        .byte $C2   ; 
- D 1 - I - 0x013451 04:B441: C3        .byte $C3   ; 
- D 1 - I - 0x013452 04:B442: E1        .byte con_se_cb_E1, $0C   ; 
- D 1 - I - 0x013454 04:B444: E7        .byte con_se_cb_E7, $57, $53   ; 
- D 1 - I - 0x013457 04:B447: E5        .byte con_se_cb_E5, $12   ; 
- D 1 - I - 0x013459 04:B449: AD        .byte $AD   ; 
- D 1 - I - 0x01345A 04:B44A: E2        .byte con_se_cb_E2, $F5   ; 
- D 1 - I - 0x01345C 04:B44C: E7        .byte con_se_cb_E7, $00   ; 
- D 1 - I - 0x01345E 04:B44E: E1        .byte con_se_cb_E1, $06   ; 
- D 1 - I - 0x013460 04:B450: 01        .byte $01   ; 
- D 1 - I - 0x013461 04:B451: 61        .byte $61   ; 
- D 1 - I - 0x013462 04:B452: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x013463 04:B453: 11        .byte $11   ; 
- D 1 - I - 0x013464 04:B454: E0        .byte con_se_cb_E0   ; 
- D 1 - I - 0x013465 04:B455: 0C        .byte $0C   ; 
- D 1 - I - 0x013466 04:B456: 36        .byte $36   ; 
- D 1 - I - 0x013467 04:B457: 82        .byte $82   ; 
- D 1 - I - 0x013468 04:B458: 12        .byte $12   ; 
- D 1 - I - 0x013469 04:B459: E2        .byte con_se_cb_E2, $F5   ; 
- D 1 - I - 0x01346B 04:B45B: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x01346C 04:B45C: E7        .byte con_se_cb_E7, $57, $33   ; 
- D 1 - I - 0x01346F 04:B45F: CF        .byte $CF   ; 
- D 1 - I - 0x013470 04:B460: E7        .byte con_se_cb_E7, $00   ; 
- D 1 - I - 0x013472 04:B462: E5        .byte con_se_cb_E5, $24   ; 
- D 1 - I - 0x013474 04:B464: E1        .byte con_se_cb_E1, $06   ; 
- D 1 - I - 0x013476 04:B466: C1        .byte $C1   ; 
- D 1 - I - 0x013477 04:B467: E5        .byte con_se_cb_E5, $00   ; 
- D 1 - I - 0x013479 04:B469: AD        .byte $AD   ; 
- D 1 - I - 0x01347A 04:B46A: E1        .byte con_se_cb_E1, $01   ; 
- D 1 - I - 0x01347C 04:B46C: E4        .byte con_se_cb_E4, $80   ; 
- D 1 - I - 0x01347E 04:B46E: D3        .byte $D3   ; 
- D 1 - I - 0x01347F 04:B46F: B1        .byte $B1   ; 
- D 1 - I - 0x013480 04:B470: C1        .byte $C1   ; 
- D 1 - I - 0x013481 04:B471: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x013482 04:B472: 12        .byte $12   ; 
- D 1 - I - 0x013483 04:B473: D2        .byte $D2   ; 
- D 1 - I - 0x013484 04:B474: 22        .byte $22   ; 
- D 1 - I - 0x013485 04:B475: 32        .byte $32   ; 
- D 1 - I - 0x013486 04:B476: 42        .byte $42   ; 
- D 1 - I - 0x013487 04:B477: 52        .byte $52   ; 
- D 1 - I - 0x013488 04:B478: D1        .byte $D1   ; 
- D 1 - I - 0x013489 04:B479: 63        .byte $63   ; 
- D 1 - I - 0x01348A 04:B47A: 73        .byte $73   ; 
- D 1 - I - 0x01348B 04:B47B: 83        .byte $83   ; 
- D 1 - I - 0x01348C 04:B47C: 93        .byte $93   ; 
- D 1 - I - 0x01348D 04:B47D: E1        .byte con_se_cb_E1, $06   ; 
- D 1 - I - 0x01348F 04:B47F: E1        .byte con_se_cb_E1, $0C   ; 
- D 1 - I - 0x013491 04:B481: E7        .byte con_se_cb_E7, $57, $32   ; 
- D 1 - I - 0x013494 04:B484: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x013495 04:B485: E4        .byte con_se_cb_E4, $81   ; 
- D 1 - I - 0x013497 04:B487: E5        .byte con_se_cb_E5, $11   ; 
- D 1 - I - 0x013499 04:B489: A8        .byte $A8   ; 
- D 1 - I - 0x01349A 04:B48A: E0        .byte con_se_cb_E0   ; 
- D 1 - I - 0x01349B 04:B48B: 06        .byte $06   ; 
- D 1 - I - 0x01349C 04:B48C: 78        .byte $78   ; 
- D 1 - I - 0x01349D 04:B48D: 81        .byte $81   ; 
- D 1 - I - 0x01349E 04:B48E: 24        .byte $24   ; 
- D 1 - I - 0x01349F 04:B48F: E2        .byte con_se_cb_E2, $34   ; 
- D 1 - I - 0x0134A1 04:B491: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0134A2 04:B492: EA        .byte con_se_cb_EA, $03   ; 
- D 1 - I - 0x0134A4 04:B494: E7        .byte con_se_cb_E7, $57, $22   ; 
- D 1 - I - 0x0134A7 04:B497: D2        .byte $D2   ; 
- D 1 - I - 0x0134A8 04:B498: 33        .byte $33   ; 
- D 1 - I - 0x0134A9 04:B499: 23        .byte $23   ; 
- D 1 - I - 0x0134AA 04:B49A: 32        .byte $32   ; 
- D 1 - I - 0x0134AB 04:B49B: 33        .byte $33   ; 
- D 1 - I - 0x0134AC 04:B49C: 23        .byte $23   ; 
- D 1 - I - 0x0134AD 04:B49D: 32        .byte $32   ; 
- D 1 - I - 0x0134AE 04:B49E: 63        .byte $63   ; 
- D 1 - I - 0x0134AF 04:B49F: 13        .byte $13   ; 
- D 1 - I - 0x0134B0 04:B4A0: 5A        .byte $5A   ; 
- D 1 - I - 0x0134B1 04:B4A1: 33        .byte $33   ; 
- D 1 - I - 0x0134B2 04:B4A2: 23        .byte $23   ; 
- D 1 - I - 0x0134B3 04:B4A3: 32        .byte $32   ; 
- D 1 - I - 0x0134B4 04:B4A4: 33        .byte $33   ; 
- D 1 - I - 0x0134B5 04:B4A5: 23        .byte $23   ; 
- D 1 - I - 0x0134B6 04:B4A6: 32        .byte $32   ; 
- D 1 - I - 0x0134B7 04:B4A7: E7        .byte con_se_cb_E7, $00   ; 
- D 1 - I - 0x0134B9 04:B4A9: E4        .byte con_se_cb_E4, $83   ; 
- D 1 - I - 0x0134BB 04:B4AB: E5        .byte con_se_cb_E5, $14   ; 
- D 1 - I - 0x0134BD 04:B4AD: E2        .byte con_se_cb_E2, $F5   ; 
- D 1 - I - 0x0134BF 04:B4AF: D0        .byte $D0   ; 
- D 1 - I - 0x0134C0 04:B4B0: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x0134C1 04:B4B1: 81        .byte $81   ; 
- D 1 - I - 0x0134C2 04:B4B2: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0134C3 04:B4B3: 83        .byte $83   ; 
- D 1 - I - 0x0134C4 04:B4B4: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x0134C5 04:B4B5: 61        .byte $61   ; 
- D 1 - I - 0x0134C6 04:B4B6: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0134C7 04:B4B7: 63        .byte $63   ; 
- D 1 - I - 0x0134C8 04:B4B8: 52        .byte $52   ; 
- D 1 - I - 0x0134C9 04:B4B9: 51        .byte $51   ; 
- D 1 - I - 0x0134CA 04:B4BA: 15        .byte $15   ; 
- D 1 - I - 0x0134CB 04:B4BB: E0        .byte con_se_cb_E0   ; 
- D 1 - I - 0x0134CC 04:B4BC: 06        .byte $06   ; 
- D 1 - I - 0x0134CD 04:B4BD: 78        .byte $78   ; 
- D 1 - I - 0x0134CE 04:B4BE: 83        .byte $83   ; 
- D 1 - I - 0x0134CF 04:B4BF: 24        .byte $24   ; 
- D 1 - I - 0x0134D0 04:B4C0: E2        .byte con_se_cb_E2, $34   ; 
- D 1 - I - 0x0134D2 04:B4C2: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0134D3 04:B4C3: E7        .byte con_se_cb_E7, $57, $22   ; 
- D 1 - I - 0x0134D6 04:B4C6: 33        .byte $33   ; 
- D 1 - I - 0x0134D7 04:B4C7: 23        .byte $23   ; 
- D 1 - I - 0x0134D8 04:B4C8: 32        .byte $32   ; 
- D 1 - I - 0x0134D9 04:B4C9: 33        .byte $33   ; 
- D 1 - I - 0x0134DA 04:B4CA: 23        .byte $23   ; 
- D 1 - I - 0x0134DB 04:B4CB: 32        .byte $32   ; 
- D 1 - I - 0x0134DC 04:B4CC: 62        .byte $62   ; 
- D 1 - I - 0x0134DD 04:B4CD: 61        .byte $61   ; 
- D 1 - I - 0x0134DE 04:B4CE: 12        .byte $12   ; 
- D 1 - I - 0x0134DF 04:B4CF: 11        .byte $11   ; 
- D 1 - I - 0x0134E0 04:B4D0: 56        .byte $56   ; 
- D 1 - I - 0x0134E1 04:B4D1: D2        .byte $D2   ; 
- D 1 - I - 0x0134E2 04:B4D2: E5        .byte con_se_cb_E5, $29   ; 
- D 1 - I - 0x0134E4 04:B4D4: 51        .byte $51   ; 
- D 1 - I - 0x0134E5 04:B4D5: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x0134E6 04:B4D6: A1        .byte $A1   ; 
- D 1 - I - 0x0134E7 04:B4D7: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0134E8 04:B4D8: 11        .byte $11   ; 
- D 1 - I - 0x0134E9 04:B4D9: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x0134EA 04:B4DA: 51        .byte $51   ; 
- D 1 - I - 0x0134EB 04:B4DB: D0        .byte $D0   ; 
- D 1 - I - 0x0134EC 04:B4DC: E5        .byte con_se_cb_E5, $23   ; 
- D 1 - I - 0x0134EE 04:B4DE: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0134EF 04:B4DF: 33        .byte $33   ; 
- D 1 - I - 0x0134F0 04:B4E0: 23        .byte $23   ; 
- D 1 - I - 0x0134F1 04:B4E1: 32        .byte $32   ; 
- D 1 - I - 0x0134F2 04:B4E2: 33        .byte $33   ; 
- D 1 - I - 0x0134F3 04:B4E3: 23        .byte $23   ; 
- D 1 - I - 0x0134F4 04:B4E4: 32        .byte $32   ; 
- D 1 - I - 0x0134F5 04:B4E5: E2        .byte con_se_cb_E2, $B5   ; 
- D 1 - I - 0x0134F7 04:B4E7: 31        .byte $31   ; 
- D 1 - I - 0x0134F8 04:B4E8: D1        .byte $D1   ; 
- D 1 - I - 0x0134F9 04:B4E9: 21        .byte $21   ; 
- D 1 - I - 0x0134FA 04:B4EA: 31        .byte $31   ; 
- D 1 - I - 0x0134FB 04:B4EB: D0        .byte $D0   ; 
- D 1 - I - 0x0134FC 04:B4EC: 51        .byte $51   ; 
- D 1 - I - 0x0134FD 04:B4ED: D1        .byte $D1   ; 
- D 1 - I - 0x0134FE 04:B4EE: 31        .byte $31   ; 
- D 1 - I - 0x0134FF 04:B4EF: 51        .byte $51   ; 
- D 1 - I - 0x013500 04:B4F0: D0        .byte $D0   ; 
- D 1 - I - 0x013501 04:B4F1: 61        .byte $61   ; 
- D 1 - I - 0x013502 04:B4F2: D1        .byte $D1   ; 
- D 1 - I - 0x013503 04:B4F3: 51        .byte $51   ; 
- D 1 - I - 0x013504 04:B4F4: 61        .byte $61   ; 
- D 1 - I - 0x013505 04:B4F5: D0        .byte $D0   ; 
- D 1 - I - 0x013506 04:B4F6: 81        .byte $81   ; 
- D 1 - I - 0x013507 04:B4F7: D1        .byte $D1   ; 
- D 1 - I - 0x013508 04:B4F8: 61        .byte $61   ; 
- D 1 - I - 0x013509 04:B4F9: 81        .byte $81   ; 
- D 1 - I - 0x01350A 04:B4FA: D0        .byte $D0   ; 
- D 1 - I - 0x01350B 04:B4FB: E2        .byte con_se_cb_E2, $75   ; 
- D 1 - I - 0x01350D 04:B4FD: EA        .byte con_se_cb_EA, $02   ; 
- D 1 - I - 0x01350F 04:B4FF: E4        .byte con_se_cb_E4, $81   ; 
- D 1 - I - 0x013511 04:B501: E5        .byte con_se_cb_E5, $13   ; 
- D 1 - I - 0x013513 04:B503: E1        .byte con_se_cb_E1, $01   ; 
- D 1 - I - 0x013515 04:B505: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x013516 04:B506: A3        .byte $A3   ; 
- D 1 - I - 0x013517 04:B507: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x013518 04:B508: 33        .byte $33   ; 
- D 1 - I - 0x013519 04:B509: 83        .byte $83   ; 
- D 1 - I - 0x01351A 04:B50A: A3        .byte $A3   ; 
- D 1 - I - 0x01351B 04:B50B: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x01351C 04:B50C: 13        .byte $13   ; 
- D 1 - I - 0x01351D 04:B50D: 53        .byte $53   ; 
- D 1 - I - 0x01351E 04:B50E: 83        .byte $83   ; 
- D 1 - I - 0x01351F 04:B50F: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x013520 04:B510: 13        .byte $13   ; 
- D 1 - I - 0x013521 04:B511: E0        .byte con_se_cb_E0   ; 
- D 1 - I - 0x013522 04:B512: 06        .byte $06   ; 
- D 1 - I - 0x013523 04:B513: 37        .byte $37   ; 
- D 1 - I - 0x013524 04:B514: 83        .byte $83   ; 
- D 1 - I - 0x013525 04:B515: 12        .byte $12   ; 
- D 1 - I - 0x013526 04:B516: E2        .byte con_se_cb_E2, $B7   ; 
- D 1 - I - 0x013528 04:B518: FD        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x013529 04:B519: E8 B5     .word sub_FD_B5E8
- D 1 - I - 0x01352B 04:B51B: E1        .byte con_se_cb_E1, $01   ; 
- D 1 - I - 0x01352D 04:B51D: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x01352E 04:B51E: 14        .byte $14   ; 
- D 1 - I - 0x01352F 04:B51F: D2        .byte $D2   ; 
- D 1 - I - 0x013530 04:B520: 14        .byte $14   ; 
- D 1 - I - 0x013531 04:B521: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x013532 04:B522: D0        .byte $D0   ; 
- D 1 - I - 0x013533 04:B523: C4        .byte $C4   ; 
- D 1 - I - 0x013534 04:B524: D2        .byte $D2   ; 
- D 1 - I - 0x013535 04:B525: C4        .byte $C4   ; 
- D 1 - I - 0x013536 04:B526: D0        .byte $D0   ; 
- D 1 - I - 0x013537 04:B527: 84        .byte $84   ; 
- D 1 - I - 0x013538 04:B528: D2        .byte $D2   ; 
- D 1 - I - 0x013539 04:B529: 84        .byte $84   ; 
- D 1 - I - 0x01353A 04:B52A: D0        .byte $D0   ; 
- D 1 - I - 0x01353B 04:B52B: 34        .byte $34   ; 
- D 1 - I - 0x01353C 04:B52C: D2        .byte $D2   ; 
- D 1 - I - 0x01353D 04:B52D: 34        .byte $34   ; 
- D 1 - I - 0x01353E 04:B52E: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x01353F 04:B52F: D0        .byte $D0   ; 
- D 1 - I - 0x013540 04:B530: C4        .byte $C4   ; 
- D 1 - I - 0x013541 04:B531: D2        .byte $D2   ; 
- D 1 - I - 0x013542 04:B532: C4        .byte $C4   ; 
- D 1 - I - 0x013543 04:B533: D0        .byte $D0   ; 
- D 1 - I - 0x013544 04:B534: 84        .byte $84   ; 
- D 1 - I - 0x013545 04:B535: D2        .byte $D2   ; 
- D 1 - I - 0x013546 04:B536: 84        .byte $84   ; 
- D 1 - I - 0x013547 04:B537: D0        .byte $D0   ; 
- D 1 - I - 0x013548 04:B538: E0        .byte con_se_cb_E0   ; 
- D 1 - I - 0x013549 04:B539: 06        .byte $06   ; 
- D 1 - I - 0x01354A 04:B53A: 77        .byte $77   ; 
- D 1 - I - 0x01354B 04:B53B: 83        .byte $83   ; 
- D 1 - I - 0x01354C 04:B53C: 12        .byte $12   ; 
- D 1 - I - 0x01354D 04:B53D: E2        .byte con_se_cb_E2, $B5   ; 
- D 1 - I - 0x01354F 04:B53F: FD        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x013550 04:B540: E8 B5     .word sub_FD_B5E8
- D 1 - I - 0x013552 04:B542: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x013553 04:B543: E4        .byte con_se_cb_E4, $81   ; 
- D 1 - I - 0x013555 04:B545: E5        .byte con_se_cb_E5, $15   ; 
- D 1 - I - 0x013557 04:B547: E1        .byte con_se_cb_E1, $01   ; 
- D 1 - I - 0x013559 04:B549: 14        .byte $14   ; 
- D 1 - I - 0x01355A 04:B54A: D2        .byte $D2   ; 
- D 1 - I - 0x01355B 04:B54B: 14        .byte $14   ; 
- D 1 - I - 0x01355C 04:B54C: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x01355D 04:B54D: D0        .byte $D0   ; 
- D 1 - I - 0x01355E 04:B54E: C4        .byte $C4   ; 
- D 1 - I - 0x01355F 04:B54F: D2        .byte $D2   ; 
- D 1 - I - 0x013560 04:B550: C4        .byte $C4   ; 
- D 1 - I - 0x013561 04:B551: D0        .byte $D0   ; 
- D 1 - I - 0x013562 04:B552: 84        .byte $84   ; 
- D 1 - I - 0x013563 04:B553: D2        .byte $D2   ; 
- D 1 - I - 0x013564 04:B554: 84        .byte $84   ; 
- D 1 - I - 0x013565 04:B555: D0        .byte $D0   ; 
- D 1 - I - 0x013566 04:B556: 12        .byte $12   ; 
- D 1 - I - 0x013567 04:B557: D2        .byte $D2   ; 
- D 1 - I - 0x013568 04:B558: 12        .byte $12   ; 
- D 1 - I - 0x013569 04:B559: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x01356A 04:B55A: D0        .byte $D0   ; 
- D 1 - I - 0x01356B 04:B55B: C2        .byte $C2   ; 
- D 1 - I - 0x01356C 04:B55C: D2        .byte $D2   ; 
- D 1 - I - 0x01356D 04:B55D: C2        .byte $C2   ; 
- D 1 - I - 0x01356E 04:B55E: D0        .byte $D0   ; 
- D 1 - I - 0x01356F 04:B55F: 82        .byte $82   ; 
- D 1 - I - 0x013570 04:B560: D2        .byte $D2   ; 
- D 1 - I - 0x013571 04:B561: 82        .byte $82   ; 
- D 1 - I - 0x013572 04:B562: D0        .byte $D0   ; 
- D 1 - I - 0x013573 04:B563: 12        .byte $12   ; 
- D 1 - I - 0x013574 04:B564: D2        .byte $D2   ; 
- D 1 - I - 0x013575 04:B565: 12        .byte $12   ; 
- D 1 - I - 0x013576 04:B566: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x013577 04:B567: D0        .byte $D0   ; 
- D 1 - I - 0x013578 04:B568: C2        .byte $C2   ; 
- D 1 - I - 0x013579 04:B569: D2        .byte $D2   ; 
- D 1 - I - 0x01357A 04:B56A: C2        .byte $C2   ; 
- D 1 - I - 0x01357B 04:B56B: D0        .byte $D0   ; 
- D 1 - I - 0x01357C 04:B56C: 82        .byte $82   ; 
- D 1 - I - 0x01357D 04:B56D: D2        .byte $D2   ; 
- D 1 - I - 0x01357E 04:B56E: 82        .byte $82   ; 
- D 1 - I - 0x01357F 04:B56F: D0        .byte $D0   ; 
- D 1 - I - 0x013580 04:B570: E0        .byte con_se_cb_E0   ; 
- D 1 - I - 0x013581 04:B571: 06        .byte $06   ; 
- D 1 - I - 0x013582 04:B572: B6        .byte $B6   ; 
- D 1 - I - 0x013583 04:B573: 81        .byte $81   ; 
- D 1 - I - 0x013584 04:B574: 13        .byte $13   ; 
- D 1 - I - 0x013585 04:B575: E2        .byte con_se_cb_E2, $35   ; 
- D 1 - I - 0x013587 04:B577: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x013588 04:B578: E9        .byte con_se_cb_E9, $00   ; 
- D 1 - I - 0x01358A 04:B57A: EA        .byte con_se_cb_EA, $03   ; 
- D 1 - I - 0x01358C 04:B57C: 31        .byte $31   ; 
- D 1 - I - 0x01358D 04:B57D: D3        .byte $D3   ; 
- D 1 - I - 0x01358E 04:B57E: 31        .byte $31   ; 
- D 1 - I - 0x01358F 04:B57F: 31        .byte $31   ; 
- D 1 - I - 0x013590 04:B580: D4        .byte $D4   ; 
- D 1 - I - 0x013591 04:B581: 31        .byte $31   ; 
- D 1 - I - 0x013592 04:B582: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x013593 04:B583: D0        .byte $D0   ; 
- D 1 - I - 0x013594 04:B584: 32        .byte $32   ; 
- D 1 - I - 0x013595 04:B585: 51        .byte $51   ; 
- D 1 - I - 0x013596 04:B586: 63        .byte $63   ; 
- D 1 - I - 0x013597 04:B587: 52        .byte $52   ; 
- D 1 - I - 0x013598 04:B588: 12        .byte $12   ; 
- D 1 - I - 0x013599 04:B589: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x01359A 04:B58A: 82        .byte $82   ; 
- D 1 - I - 0x01359B 04:B58B: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x01359C 04:B58C: 31        .byte $31   ; 
- D 1 - I - 0x01359D 04:B58D: D1        .byte $D1   ; 
- D 1 - I - 0x01359E 04:B58E: 31        .byte $31   ; 
- D 1 - I - 0x01359F 04:B58F: D3        .byte $D3   ; 
- D 1 - I - 0x0135A0 04:B590: 31        .byte $31   ; 
- D 1 - I - 0x0135A1 04:B591: D6        .byte $D6   ; 
- D 1 - I - 0x0135A2 04:B592: 31        .byte $31   ; 
- D 1 - I - 0x0135A3 04:B593: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0135A4 04:B594: D0        .byte $D0   ; 
- D 1 - I - 0x0135A5 04:B595: 31        .byte $31   ; 
- D 1 - I - 0x0135A6 04:B596: 51        .byte $51   ; 
- D 1 - I - 0x0135A7 04:B597: 61        .byte $61   ; 
- D 1 - I - 0x0135A8 04:B598: 83        .byte $83   ; 
- D 1 - I - 0x0135A9 04:B599: 52        .byte $52   ; 
- D 1 - I - 0x0135AA 04:B59A: 12        .byte $12   ; 
- D 1 - I - 0x0135AB 04:B59B: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0135AC 04:B59C: 12        .byte $12   ; 
- D 1 - I - 0x0135AD 04:B59D: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0135AE 04:B59E: 31        .byte $31   ; 
- D 1 - I - 0x0135AF 04:B59F: D5        .byte $D5   ; 
- D 1 - I - 0x0135B0 04:B5A0: 31        .byte $31   ; 
- D 1 - I - 0x0135B1 04:B5A1: D0        .byte $D0   ; 
- D 1 - I - 0x0135B2 04:B5A2: 31        .byte $31   ; 
- D 1 - I - 0x0135B3 04:B5A3: E5        .byte con_se_cb_E5, $00   ; 
- D 1 - I - 0x0135B5 04:B5A5: 3B        .byte $3B   ; 
- D 1 - I - 0x0135B6 04:B5A6: E5        .byte con_se_cb_E5, $23   ; 
- D 1 - I - 0x0135B8 04:B5A8: D4        .byte $D4   ; 
- D 1 - I - 0x0135B9 04:B5A9: E1        .byte con_se_cb_E1, $01   ; 
- D 1 - I - 0x0135BB 04:B5AB: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0135BC 04:B5AC: D3        .byte $D3   ; 
- D 1 - I - 0x0135BD 04:B5AD: 31        .byte $31   ; 
- D 1 - I - 0x0135BE 04:B5AE: 41        .byte $41   ; 
- D 1 - I - 0x0135BF 04:B5AF: 51        .byte $51   ; 
- D 1 - I - 0x0135C0 04:B5B0: D2        .byte $D2   ; 
- D 1 - I - 0x0135C1 04:B5B1: 61        .byte $61   ; 
- D 1 - I - 0x0135C2 04:B5B2: 71        .byte $71   ; 
- D 1 - I - 0x0135C3 04:B5B3: 81        .byte $81   ; 
- D 1 - I - 0x0135C4 04:B5B4: 91        .byte $91   ; 
- D 1 - I - 0x0135C5 04:B5B5: A1        .byte $A1   ; 
- D 1 - I - 0x0135C6 04:B5B6: B1        .byte $B1   ; 
- D 1 - I - 0x0135C7 04:B5B7: D1        .byte $D1   ; 
- D 1 - I - 0x0135C8 04:B5B8: C1        .byte $C1   ; 
- D 1 - I - 0x0135C9 04:B5B9: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x0135CA 04:B5BA: 11        .byte $11   ; 
- D 1 - I - 0x0135CB 04:B5BB: 21        .byte $21   ; 
- D 1 - I - 0x0135CC 04:B5BC: E1        .byte con_se_cb_E1, $06   ; 
- D 1 - I - 0x0135CE 04:B5BE: 31        .byte $31   ; 
- D 1 - I - 0x0135CF 04:B5BF: D5        .byte $D5   ; 
- D 1 - I - 0x0135D0 04:B5C0: 31        .byte $31   ; 
- D 1 - I - 0x0135D1 04:B5C1: D1        .byte $D1   ; 
- D 1 - I - 0x0135D2 04:B5C2: 31        .byte $31   ; 
- D 1 - I - 0x0135D3 04:B5C3: E7        .byte con_se_cb_E7, $57, $72   ; 
- D 1 - I - 0x0135D6 04:B5C6: E5        .byte con_se_cb_E5, $32   ; 
- D 1 - I - 0x0135D8 04:B5C8: 3D        .byte $3D   ; 
- D 1 - I - 0x0135D9 04:B5C9: E7        .byte con_se_cb_E7, $00   ; 
- D 1 - I - 0x0135DB 04:B5CB: E2        .byte con_se_cb_E2, $00   ; 
- D 1 - I - 0x0135DD 04:B5CD: D0        .byte $D0   ; 
- D 1 - I - 0x0135DE 04:B5CE: FE        .byte con_se_cb_jmp, $FF   ; 
- D 1 - I - 0x0135E0 04:B5D0: 00 B4     .word loc_FE_B400



sub_FD_B5D2:
- D 1 - I - 0x0135E2 04:B5D2: 32        .byte $32   ; 
- D 1 - I - 0x0135E3 04:B5D3: 31        .byte $31   ; 
- D 1 - I - 0x0135E4 04:B5D4: 31        .byte $31   ; 
- D 1 - I - 0x0135E5 04:B5D5: 61        .byte $61   ; 
- D 1 - I - 0x0135E6 04:B5D6: 82        .byte $82   ; 
- D 1 - I - 0x0135E7 04:B5D7: 32        .byte $32   ; 
- D 1 - I - 0x0135E8 04:B5D8: 32        .byte $32   ; 
- D 1 - I - 0x0135E9 04:B5D9: 31        .byte $31   ; 
- D 1 - I - 0x0135EA 04:B5DA: 62        .byte $62   ; 
- D 1 - I - 0x0135EB 04:B5DB: 81        .byte $81   ; 
- D 1 - I - 0x0135EC 04:B5DC: A1        .byte $A1   ; 
- D 1 - I - 0x0135ED 04:B5DD: 32        .byte $32   ; 
- D 1 - I - 0x0135EE 04:B5DE: 31        .byte $31   ; 
- D 1 - I - 0x0135EF 04:B5DF: 31        .byte $31   ; 
- D 1 - I - 0x0135F0 04:B5E0: 61        .byte $61   ; 
- D 1 - I - 0x0135F1 04:B5E1: 82        .byte $82   ; 
- D 1 - I - 0x0135F2 04:B5E2: 32        .byte $32   ; 
- D 1 - I - 0x0135F3 04:B5E3: 31        .byte $31   ; 
- D 1 - I - 0x0135F4 04:B5E4: 91        .byte $91   ; 
- D 1 - I - 0x0135F5 04:B5E5: 81        .byte $81   ; 
- D 1 - I - 0x0135F6 04:B5E6: 61        .byte $61   ; 
- D 1 - I - 0x0135F7 04:B5E7: FF        .byte con_se_cb_stop   ; 



sub_FD_B5E8:
- D 1 - I - 0x0135F8 04:B5E8: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0135F9 04:B5E9: EA        .byte con_se_cb_EA, $03   ; 
- D 1 - I - 0x0135FB 04:B5EB: E7        .byte con_se_cb_E7, $00   ; 
- D 1 - I - 0x0135FD 04:B5ED: 81        .byte $81   ; 
- D 1 - I - 0x0135FE 04:B5EE: A1        .byte $A1   ; 
- D 1 - I - 0x0135FF 04:B5EF: 61        .byte $61   ; 
- D 1 - I - 0x013600 04:B5F0: 31        .byte $31   ; 
- D 1 - I - 0x013601 04:B5F1: D3        .byte $D3   ; 
- D 1 - I - 0x013602 04:B5F2: 81        .byte $81   ; 
- D 1 - I - 0x013603 04:B5F3: A1        .byte $A1   ; 
- D 1 - I - 0x013604 04:B5F4: D0        .byte $D0   ; 
- D 1 - I - 0x013605 04:B5F5: 81        .byte $81   ; 
- D 1 - I - 0x013606 04:B5F6: A1        .byte $A1   ; 
- D 1 - I - 0x013607 04:B5F7: 51        .byte $51   ; 
- D 1 - I - 0x013608 04:B5F8: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x013609 04:B5F9: C1        .byte $C1   ; 
- D 1 - I - 0x01360A 04:B5FA: D3        .byte $D3   ; 
- D 1 - I - 0x01360B 04:B5FB: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x01360C 04:B5FC: 81        .byte $81   ; 
- D 1 - I - 0x01360D 04:B5FD: A1        .byte $A1   ; 
- D 1 - I - 0x01360E 04:B5FE: D0        .byte $D0   ; 
- D 1 - I - 0x01360F 04:B5FF: 81        .byte $81   ; 
- D 1 - I - 0x013610 04:B600: A1        .byte $A1   ; 
- D 1 - I - 0x013611 04:B601: 51        .byte $51   ; 
- D 1 - I - 0x013612 04:B602: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x013613 04:B603: C1        .byte $C1   ; 
- D 1 - I - 0x013614 04:B604: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x013615 04:B605: 81        .byte $81   ; 
- D 1 - I - 0x013616 04:B606: A1        .byte $A1   ; 
- D 1 - I - 0x013617 04:B607: 61        .byte $61   ; 
- D 1 - I - 0x013618 04:B608: 11        .byte $11   ; 
- D 1 - I - 0x013619 04:B609: D3        .byte $D3   ; 
- D 1 - I - 0x01361A 04:B60A: 81        .byte $81   ; 
- D 1 - I - 0x01361B 04:B60B: A1        .byte $A1   ; 
- D 1 - I - 0x01361C 04:B60C: D0        .byte $D0   ; 
- D 1 - I - 0x01361D 04:B60D: 81        .byte $81   ; 
- D 1 - I - 0x01361E 04:B60E: A1        .byte $A1   ; 
- D 1 - I - 0x01361F 04:B60F: FF        .byte con_se_cb_stop   ; 



_off000_B610_7C_00:
loc_FE_B610:
- D 1 - I - 0x013620 04:B610: E0        .byte con_se_cb_E0   ; 
- D 1 - I - 0x013621 04:B611: 06        .byte $06   ; 
- D 1 - I - 0x013622 04:B612: B7        .byte $B7   ; 
- D 1 - I - 0x013623 04:B613: 83        .byte $83   ; 
- D 1 - I - 0x013624 04:B614: 35        .byte $35   ; 
- D 1 - I - 0x013625 04:B615: F0        .byte con_se_cb_F0   ; 
- D 1 - I - 0x013626 04:B616: E9        .byte con_se_cb_E9, $81   ; 
- D 1 - I - 0x013628 04:B618: EA        .byte con_se_cb_EA, $03   ; 
- D 1 - I - 0x01362A 04:B61A: FD        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x01362B 04:B61B: D2 B5     .word sub_FD_B5D2
- D 1 - I - 0x01362D 04:B61D: 13        .byte $13   ; 
- D 1 - I - 0x01362E 04:B61E: FD        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x01362F 04:B61F: D2 B5     .word sub_FD_B5D2
- D 1 - I - 0x013631 04:B621: 11        .byte $11   ; 
- D 1 - I - 0x013632 04:B622: E0        .byte con_se_cb_E0   ; 
- D 1 - I - 0x013633 04:B623: 06        .byte $06   ; 
- D 1 - I - 0x013634 04:B624: 35        .byte $35   ; 
- D 1 - I - 0x013635 04:B625: 82        .byte $82   ; 
- D 1 - I - 0x013636 04:B626: 12        .byte $12   ; 
- D 1 - I - 0x013637 04:B627: E2        .byte con_se_cb_E2, $F5   ; 
- D 1 - I - 0x013639 04:B629: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x01363A 04:B62A: E9        .byte con_se_cb_E9, $00   ; 
- D 1 - I - 0x01363C 04:B62C: EA        .byte con_se_cb_EA, $02   ; 
- D 1 - I - 0x01363E 04:B62E: 11        .byte $11   ; 
- D 1 - I - 0x01363F 04:B62F: A1        .byte $A1   ; 
- D 1 - I - 0x013640 04:B630: E0        .byte con_se_cb_E0   ; 
- D 1 - I - 0x013641 04:B631: 0C        .byte $0C   ; 
- D 1 - I - 0x013642 04:B632: 37        .byte $37   ; 
- D 1 - I - 0x013643 04:B633: 82        .byte $82   ; 
- D 1 - I - 0x013644 04:B634: 00        .byte $00   ; 
- D 1 - I - 0x013645 04:B635: E2        .byte con_se_cb_E2, $F5   ; 
- D 1 - I - 0x013647 04:B637: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x013648 04:B638: E9        .byte con_se_cb_E9, $01   ; 
- D 1 - I - 0x01364A 04:B63A: EA        .byte con_se_cb_EA, $02   ; 
- D 1 - I - 0x01364C 04:B63C: E7        .byte con_se_cb_E7, $57, $44   ; 
- D 1 - I - 0x01364F 04:B63F: D2        .byte $D2   ; 
- D 1 - I - 0x013650 04:B640: 86        .byte $86   ; 
- D 1 - I - 0x013651 04:B641: E1        .byte con_se_cb_E1, $01   ; 
- D 1 - I - 0x013653 04:B643: D3        .byte $D3   ; 
- D 1 - I - 0x013654 04:B644: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x013655 04:B645: 82        .byte $82   ; 
- D 1 - I - 0x013656 04:B646: E4        .byte con_se_cb_E4, $81   ; 
- D 1 - I - 0x013658 04:B648: E5        .byte con_se_cb_E5, $11   ; 
- D 1 - I - 0x01365A 04:B64A: 91        .byte $91   ; 
- D 1 - I - 0x01365B 04:B64B: A1        .byte $A1   ; 
- D 1 - I - 0x01365C 04:B64C: B1        .byte $B1   ; 
- D 1 - I - 0x01365D 04:B64D: C1        .byte $C1   ; 
- D 1 - I - 0x01365E 04:B64E: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x01365F 04:B64F: 11        .byte $11   ; 
- D 1 - I - 0x013660 04:B650: 21        .byte $21   ; 
- D 1 - I - 0x013661 04:B651: 31        .byte $31   ; 
- D 1 - I - 0x013662 04:B652: 41        .byte $41   ; 
- D 1 - I - 0x013663 04:B653: 52        .byte $52   ; 
- D 1 - I - 0x013664 04:B654: 62        .byte $62   ; 
- D 1 - I - 0x013665 04:B655: 72        .byte $72   ; 
- D 1 - I - 0x013666 04:B656: 82        .byte $82   ; 
- D 1 - I - 0x013667 04:B657: 92        .byte $92   ; 
- D 1 - I - 0x013668 04:B658: A2        .byte $A2   ; 
- D 1 - I - 0x013669 04:B659: B2        .byte $B2   ; 
- D 1 - I - 0x01366A 04:B65A: E1        .byte con_se_cb_E1, $0C   ; 
- D 1 - I - 0x01366C 04:B65C: C3        .byte $C3   ; 
- D 1 - I - 0x01366D 04:B65D: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x01366E 04:B65E: E4        .byte con_se_cb_E4, $82   ; 
- D 1 - I - 0x013670 04:B660: E5        .byte con_se_cb_E5, $24   ; 
- D 1 - I - 0x013672 04:B662: E1        .byte con_se_cb_E1, $06   ; 
- D 1 - I - 0x013674 04:B664: D2        .byte $D2   ; 
- D 1 - I - 0x013675 04:B665: 81        .byte $81   ; 
- D 1 - I - 0x013676 04:B666: A1        .byte $A1   ; 
- D 1 - I - 0x013677 04:B667: E1        .byte con_se_cb_E1, $01   ; 
- D 1 - I - 0x013679 04:B669: B1        .byte $B1   ; 
- D 1 - I - 0x01367A 04:B66A: C5        .byte $C5   ; 
- D 1 - I - 0x01367B 04:B66B: E1        .byte con_se_cb_E1, $06   ; 
- D 1 - I - 0x01367D 04:B66D: C1        .byte $C1   ; 
- D 1 - I - 0x01367E 04:B66E: C1        .byte $C1   ; 
- D 1 - I - 0x01367F 04:B66F: A3        .byte $A3   ; 
- D 1 - I - 0x013680 04:B670: 82        .byte $82   ; 
- D 1 - I - 0x013681 04:B671: 83        .byte $83   ; 
- D 1 - I - 0x013682 04:B672: 62        .byte $62   ; 
- D 1 - I - 0x013683 04:B673: D2        .byte $D2   ; 
- D 1 - I - 0x013684 04:B674: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x013685 04:B675: EA        .byte con_se_cb_EA, $00   ; 
- D 1 - I - 0x013687 04:B677: C1        .byte $C1   ; 
- D 1 - I - 0x013688 04:B678: A1        .byte $A1   ; 
- D 1 - I - 0x013689 04:B679: C1        .byte $C1   ; 
- D 1 - I - 0x01368A 04:B67A: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x01368B 04:B67B: 31        .byte $31   ; 
- D 1 - I - 0x01368C 04:B67C: 11        .byte $11   ; 
- D 1 - I - 0x01368D 04:B67D: 61        .byte $61   ; 
- D 1 - I - 0x01368E 04:B67E: 51        .byte $51   ; 
- D 1 - I - 0x01368F 04:B67F: 81        .byte $81   ; 
- D 1 - I - 0x013690 04:B680: 61        .byte $61   ; 
- D 1 - I - 0x013691 04:B681: A1        .byte $A1   ; 
- D 1 - I - 0x013692 04:B682: 81        .byte $81   ; 
- D 1 - I - 0x013693 04:B683: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x013694 04:B684: C1        .byte $C1   ; 
- D 1 - I - 0x013695 04:B685: E7        .byte con_se_cb_E7, $57, $23   ; 
- D 1 - I - 0x013698 04:B688: AD        .byte $AD   ; 
- D 1 - I - 0x013699 04:B689: E2        .byte con_se_cb_E2, $F5   ; 
- D 1 - I - 0x01369B 04:B68B: E7        .byte con_se_cb_E7, $00   ; 
- D 1 - I - 0x01369D 04:B68D: D2        .byte $D2   ; 
- D 1 - I - 0x01369E 04:B68E: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x01369F 04:B68F: 11        .byte $11   ; 
- D 1 - I - 0x0136A0 04:B690: A1        .byte $A1   ; 
- D 1 - I - 0x0136A1 04:B691: D0        .byte $D0   ; 
- D 1 - I - 0x0136A2 04:B692: E0        .byte con_se_cb_E0   ; 
- D 1 - I - 0x0136A3 04:B693: 0C        .byte $0C   ; 
- D 1 - I - 0x0136A4 04:B694: 37        .byte $37   ; 
- D 1 - I - 0x0136A5 04:B695: 82        .byte $82   ; 
- D 1 - I - 0x0136A6 04:B696: 12        .byte $12   ; 
- D 1 - I - 0x0136A7 04:B697: E2        .byte con_se_cb_E2, $F5   ; 
- D 1 - I - 0x0136A9 04:B699: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0136AA 04:B69A: E9        .byte con_se_cb_E9, $00   ; 
- D 1 - I - 0x0136AC 04:B69C: EA        .byte con_se_cb_EA, $02   ; 
- D 1 - I - 0x0136AE 04:B69E: E7        .byte con_se_cb_E7, $57, $34   ; 
- D 1 - I - 0x0136B1 04:B6A1: D2        .byte $D2   ; 
- D 1 - I - 0x0136B2 04:B6A2: E1        .byte con_se_cb_E1, $06   ; 
- D 1 - I - 0x0136B4 04:B6A4: 8D        .byte $8D   ; 
- D 1 - I - 0x0136B5 04:B6A5: D1        .byte $D1   ; 
- D 1 - I - 0x0136B6 04:B6A6: E5        .byte con_se_cb_E5, $18   ; 
- D 1 - I - 0x0136B8 04:B6A8: E7        .byte con_se_cb_E7, $00   ; 
- D 1 - I - 0x0136BA 04:B6AA: D0        .byte $D0   ; 
- D 1 - I - 0x0136BB 04:B6AB: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x0136BC 04:B6AC: 31        .byte $31   ; 
- D 1 - I - 0x0136BD 04:B6AD: 11        .byte $11   ; 
- D 1 - I - 0x0136BE 04:B6AE: 31        .byte $31   ; 
- D 1 - I - 0x0136BF 04:B6AF: 51        .byte $51   ; 
- D 1 - I - 0x0136C0 04:B6B0: 31        .byte $31   ; 
- D 1 - I - 0x0136C1 04:B6B1: 61        .byte $61   ; 
- D 1 - I - 0x0136C2 04:B6B2: 51        .byte $51   ; 
- D 1 - I - 0x0136C3 04:B6B3: 81        .byte $81   ; 
- D 1 - I - 0x0136C4 04:B6B4: 61        .byte $61   ; 
- D 1 - I - 0x0136C5 04:B6B5: A1        .byte $A1   ; 
- D 1 - I - 0x0136C6 04:B6B6: 81        .byte $81   ; 
- D 1 - I - 0x0136C7 04:B6B7: C1        .byte $C1   ; 
- D 1 - I - 0x0136C8 04:B6B8: A1        .byte $A1   ; 
- D 1 - I - 0x0136C9 04:B6B9: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0136CA 04:B6BA: 11        .byte $11   ; 
- D 1 - I - 0x0136CB 04:B6BB: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x0136CC 04:B6BC: C1        .byte $C1   ; 
- D 1 - I - 0x0136CD 04:B6BD: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0136CE 04:B6BE: 31        .byte $31   ; 
- D 1 - I - 0x0136CF 04:B6BF: 11        .byte $11   ; 
- D 1 - I - 0x0136D0 04:B6C0: E5        .byte con_se_cb_E5, $24   ; 
- D 1 - I - 0x0136D2 04:B6C2: D2        .byte $D2   ; 
- D 1 - I - 0x0136D3 04:B6C3: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0136D4 04:B6C4: 51        .byte $51   ; 
- D 1 - I - 0x0136D5 04:B6C5: E4        .byte con_se_cb_E4, $82   ; 
- D 1 - I - 0x0136D7 04:B6C7: E5        .byte con_se_cb_E5, $00   ; 
- D 1 - I - 0x0136D9 04:B6C9: D2        .byte $D2   ; 
- D 1 - I - 0x0136DA 04:B6CA: 3D        .byte $3D   ; 
- D 1 - I - 0x0136DB 04:B6CB: E9        .byte con_se_cb_E9, $01   ; 
- D 1 - I - 0x0136DD 04:B6CD: E3        .byte con_se_cb_E3, $05   ; 
- D 1 - I - 0x0136DF 04:B6CF: E1        .byte con_se_cb_E1, $01   ; 
- D 1 - I - 0x0136E1 04:B6D1: E4        .byte con_se_cb_E4, $80   ; 
- D 1 - I - 0x0136E3 04:B6D3: E5        .byte con_se_cb_E5, $00   ; 
- D 1 - I - 0x0136E5 04:B6D5: D5        .byte $D5   ; 
- D 1 - I - 0x0136E6 04:B6D6: B1        .byte $B1   ; 
- D 1 - I - 0x0136E7 04:B6D7: C2        .byte $C2   ; 
- D 1 - I - 0x0136E8 04:B6D8: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0136E9 04:B6D9: 12        .byte $12   ; 
- D 1 - I - 0x0136EA 04:B6DA: D4        .byte $D4   ; 
- D 1 - I - 0x0136EB 04:B6DB: 22        .byte $22   ; 
- D 1 - I - 0x0136EC 04:B6DC: 32        .byte $32   ; 
- D 1 - I - 0x0136ED 04:B6DD: 42        .byte $42   ; 
- D 1 - I - 0x0136EE 04:B6DE: 52        .byte $52   ; 
- D 1 - I - 0x0136EF 04:B6DF: D3        .byte $D3   ; 
- D 1 - I - 0x0136F0 04:B6E0: 63        .byte $63   ; 
- D 1 - I - 0x0136F1 04:B6E1: 73        .byte $73   ; 
- D 1 - I - 0x0136F2 04:B6E2: 83        .byte $83   ; 
- D 1 - I - 0x0136F3 04:B6E3: 92        .byte $92   ; 
- D 1 - I - 0x0136F4 04:B6E4: E1        .byte con_se_cb_E1, $0C   ; 
- D 1 - I - 0x0136F6 04:B6E6: E7        .byte con_se_cb_E7, $57, $34   ; 
- D 1 - I - 0x0136F9 04:B6E9: D1        .byte $D1   ; 
- D 1 - I - 0x0136FA 04:B6EA: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0136FB 04:B6EB: E4        .byte con_se_cb_E4, $81   ; 
- D 1 - I - 0x0136FD 04:B6ED: E5        .byte con_se_cb_E5, $11   ; 
- D 1 - I - 0x0136FF 04:B6EF: A8        .byte $A8   ; 
- D 1 - I - 0x013700 04:B6F0: E7        .byte con_se_cb_E7, $00   ; 
- D 1 - I - 0x013702 04:B6F2: FD        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x013703 04:B6F3: 3E B8     .word sub_FD_B83E
- D 1 - I - 0x013705 04:B6F5: 13        .byte $13   ; 
- D 1 - I - 0x013706 04:B6F6: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x013707 04:B6F7: 83        .byte $83   ; 
- D 1 - I - 0x013708 04:B6F8: C2        .byte $C2   ; 
- D 1 - I - 0x013709 04:B6F9: E9        .byte con_se_cb_E9, $01   ; 
- D 1 - I - 0x01370B 04:B6FB: D0        .byte $D0   ; 
- D 1 - I - 0x01370C 04:B6FC: E2        .byte con_se_cb_E2, $30   ; 
- D 1 - I - 0x01370E 04:B6FE: E4        .byte con_se_cb_E4, $83   ; 
- D 1 - I - 0x013710 04:B700: E5        .byte con_se_cb_E5, $17   ; 
- D 1 - I - 0x013712 04:B702: F0        .byte con_se_cb_F0   ; 
- D 1 - I - 0x013713 04:B703: 63        .byte $63   ; 
- D 1 - I - 0x013714 04:B704: 13        .byte $13   ; 
- D 1 - I - 0x013715 04:B705: 52        .byte $52   ; 
- D 1 - I - 0x013716 04:B706: F0        .byte con_se_cb_F0   ; 
- D 1 - I - 0x013717 04:B707: E9        .byte con_se_cb_E9, $00   ; 
- D 1 - I - 0x013719 04:B709: D5        .byte $D5   ; 
- D 1 - I - 0x01371A 04:B70A: E4        .byte con_se_cb_E4, $81   ; 
- D 1 - I - 0x01371C 04:B70C: E5        .byte con_se_cb_E5, $26   ; 
- D 1 - I - 0x01371E 04:B70E: E2        .byte con_se_cb_E2, $70   ; 
- D 1 - I - 0x013720 04:B710: E2        .byte con_se_cb_E2, $34   ; 
- D 1 - I - 0x013722 04:B712: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x013723 04:B713: A3        .byte $A3   ; 
- D 1 - I - 0x013724 04:B714: 93        .byte $93   ; 
- D 1 - I - 0x013725 04:B715: A2        .byte $A2   ; 
- D 1 - I - 0x013726 04:B716: A3        .byte $A3   ; 
- D 1 - I - 0x013727 04:B717: 93        .byte $93   ; 
- D 1 - I - 0x013728 04:B718: A2        .byte $A2   ; 
- D 1 - I - 0x013729 04:B719: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x01372A 04:B71A: 31        .byte $31   ; 
- D 1 - I - 0x01372B 04:B71B: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x01372C 04:B71C: 33        .byte $33   ; 
- D 1 - I - 0x01372D 04:B71D: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x01372E 04:B71E: 11        .byte $11   ; 
- D 1 - I - 0x01372F 04:B71F: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x013730 04:B720: 13        .byte $13   ; 
- D 1 - I - 0x013731 04:B721: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x013732 04:B722: C2        .byte $C2   ; 
- D 1 - I - 0x013733 04:B723: C1        .byte $C1   ; 
- D 1 - I - 0x013734 04:B724: 85        .byte $85   ; 
- D 1 - I - 0x013735 04:B725: D0        .byte $D0   ; 
- D 1 - I - 0x013736 04:B726: FD        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x013737 04:B727: 3E B8     .word sub_FD_B83E
- D 1 - I - 0x013739 04:B729: 12        .byte $12   ; 
- D 1 - I - 0x01373A 04:B72A: 11        .byte $11   ; 
- D 1 - I - 0x01373B 04:B72B: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x01373C 04:B72C: 82        .byte $82   ; 
- D 1 - I - 0x01373D 04:B72D: 81        .byte $81   ; 
- D 1 - I - 0x01373E 04:B72E: C2        .byte $C2   ; 
- D 1 - I - 0x01373F 04:B72F: D0        .byte $D0   ; 
- D 1 - I - 0x013740 04:B730: E4        .byte con_se_cb_E4, $83   ; 
- D 1 - I - 0x013742 04:B732: E2        .byte con_se_cb_E2, $30   ; 
- D 1 - I - 0x013744 04:B734: E9        .byte con_se_cb_E9, $01   ; 
- D 1 - I - 0x013746 04:B736: F0        .byte con_se_cb_F0   ; 
- D 1 - I - 0x013747 04:B737: 63        .byte $63   ; 
- D 1 - I - 0x013748 04:B738: 13        .byte $13   ; 
- D 1 - I - 0x013749 04:B739: 52        .byte $52   ; 
- D 1 - I - 0x01374A 04:B73A: E2        .byte con_se_cb_E2, $70   ; 
- D 1 - I - 0x01374C 04:B73C: E2        .byte con_se_cb_E2, $34   ; 
- D 1 - I - 0x01374E 04:B73E: E9        .byte con_se_cb_E9, $00   ; 
- D 1 - I - 0x013750 04:B740: D5        .byte $D5   ; 
- D 1 - I - 0x013751 04:B741: E4        .byte con_se_cb_E4, $81   ; 
- D 1 - I - 0x013753 04:B743: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x013754 04:B744: A3        .byte $A3   ; 
- D 1 - I - 0x013755 04:B745: 93        .byte $93   ; 
- D 1 - I - 0x013756 04:B746: A2        .byte $A2   ; 
- D 1 - I - 0x013757 04:B747: A3        .byte $A3   ; 
- D 1 - I - 0x013758 04:B748: 93        .byte $93   ; 
- D 1 - I - 0x013759 04:B749: A2        .byte $A2   ; 
- D 1 - I - 0x01375A 04:B74A: E2        .byte con_se_cb_E2, $B5   ; 
- D 1 - I - 0x01375C 04:B74C: A1        .byte $A1   ; 
- D 1 - I - 0x01375D 04:B74D: D6        .byte $D6   ; 
- D 1 - I - 0x01375E 04:B74E: 91        .byte $91   ; 
- D 1 - I - 0x01375F 04:B74F: A1        .byte $A1   ; 
- D 1 - I - 0x013760 04:B750: D5        .byte $D5   ; 
- D 1 - I - 0x013761 04:B751: C1        .byte $C1   ; 
- D 1 - I - 0x013762 04:B752: D6        .byte $D6   ; 
- D 1 - I - 0x013763 04:B753: A1        .byte $A1   ; 
- D 1 - I - 0x013764 04:B754: C1        .byte $C1   ; 
- D 1 - I - 0x013765 04:B755: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x013766 04:B756: D5        .byte $D5   ; 
- D 1 - I - 0x013767 04:B757: 11        .byte $11   ; 
- D 1 - I - 0x013768 04:B758: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x013769 04:B759: D6        .byte $D6   ; 
- D 1 - I - 0x01376A 04:B75A: C1        .byte $C1   ; 
- D 1 - I - 0x01376B 04:B75B: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x01376C 04:B75C: 11        .byte $11   ; 
- D 1 - I - 0x01376D 04:B75D: D5        .byte $D5   ; 
- D 1 - I - 0x01376E 04:B75E: 31        .byte $31   ; 
- D 1 - I - 0x01376F 04:B75F: D6        .byte $D6   ; 
- D 1 - I - 0x013770 04:B760: 11        .byte $11   ; 
- D 1 - I - 0x013771 04:B761: 31        .byte $31   ; 
- D 1 - I - 0x013772 04:B762: D5        .byte $D5   ; 
- D 1 - I - 0x013773 04:B763: E2        .byte con_se_cb_E2, $75   ; 
- D 1 - I - 0x013775 04:B765: EA        .byte con_se_cb_EA, $02   ; 
- D 1 - I - 0x013777 04:B767: E4        .byte con_se_cb_E4, $81   ; 
- D 1 - I - 0x013779 04:B769: E5        .byte con_se_cb_E5, $13   ; 
- D 1 - I - 0x01377B 04:B76B: E1        .byte con_se_cb_E1, $01   ; 
- D 1 - I - 0x01377D 04:B76D: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x01377E 04:B76E: 33        .byte $33   ; 
- D 1 - I - 0x01377F 04:B76F: A3        .byte $A3   ; 
- D 1 - I - 0x013780 04:B770: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x013781 04:B771: 13        .byte $13   ; 
- D 1 - I - 0x013782 04:B772: 33        .byte $33   ; 
- D 1 - I - 0x013783 04:B773: 53        .byte $53   ; 
- D 1 - I - 0x013784 04:B774: 83        .byte $83   ; 
- D 1 - I - 0x013785 04:B775: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x013786 04:B776: 13        .byte $13   ; 
- D 1 - I - 0x013787 04:B777: 53        .byte $53   ; 
- D 1 - I - 0x013788 04:B778: E0        .byte con_se_cb_E0   ; 
- D 1 - I - 0x013789 04:B779: 06        .byte $06   ; 
- D 1 - I - 0x01378A 04:B77A: 3A        .byte $3A   ; 
- D 1 - I - 0x01378B 04:B77B: 81        .byte $81   ; 
- D 1 - I - 0x01378C 04:B77C: 00        .byte $00   ; 
- D 1 - I - 0x01378D 04:B77D: D0        .byte $D0   ; 
- D 1 - I - 0x01378E 04:B77E: E9        .byte con_se_cb_E9, $01   ; 
- D 1 - I - 0x013790 04:B780: F0        .byte con_se_cb_F0   ; 
- D 1 - I - 0x013791 04:B781: 31        .byte $31   ; 
- D 1 - I - 0x013792 04:B782: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x013793 04:B783: E7        .byte con_se_cb_E7, $00   ; 
- D 1 - I - 0x013795 04:B785: D8        .byte $D8   ; 
- D 1 - I - 0x013796 04:B786: 83        .byte $83   ; 
- D 1 - I - 0x013797 04:B787: FD        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x013798 04:B788: 1D B8     .word sub_FD_B81D
- D 1 - I - 0x01379A 04:B78A: D0        .byte $D0   ; 
- D 1 - I - 0x01379B 04:B78B: F0        .byte con_se_cb_F0   ; 
- D 1 - I - 0x01379C 04:B78C: 81        .byte $81   ; 
- D 1 - I - 0x01379D 04:B78D: D8        .byte $D8   ; 
- D 1 - I - 0x01379E 04:B78E: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x01379F 04:B78F: 81        .byte $81   ; 
- D 1 - I - 0x0137A0 04:B790: A1        .byte $A1   ; 
- D 1 - I - 0x0137A1 04:B791: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x0137A2 04:B792: E1        .byte con_se_cb_E1, $01   ; 
- D 1 - I - 0x0137A4 04:B794: 18        .byte $18   ; 
- D 1 - I - 0x0137A5 04:B795: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0137A6 04:B796: C8        .byte $C8   ; 
- D 1 - I - 0x0137A7 04:B797: 88        .byte $88   ; 
- D 1 - I - 0x0137A8 04:B798: 36        .byte $36   ; 
- D 1 - I - 0x0137A9 04:B799: D0        .byte $D0   ; 
- D 1 - I - 0x0137AA 04:B79A: F0        .byte con_se_cb_F0   ; 
- D 1 - I - 0x0137AB 04:B79B: 36        .byte $36   ; 
- D 1 - I - 0x0137AC 04:B79C: D8        .byte $D8   ; 
- D 1 - I - 0x0137AD 04:B79D: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0137AE 04:B79E: C4        .byte $C4   ; 
- D 1 - I - 0x0137AF 04:B79F: 88        .byte $88   ; 
- D 1 - I - 0x0137B0 04:B7A0: E1        .byte con_se_cb_E1, $06   ; 
- D 1 - I - 0x0137B2 04:B7A2: E9        .byte con_se_cb_E9, $01   ; 
- D 1 - I - 0x0137B4 04:B7A4: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0137B5 04:B7A5: E7        .byte con_se_cb_E7, $00   ; 
- D 1 - I - 0x0137B7 04:B7A7: D8        .byte $D8   ; 
- D 1 - I - 0x0137B8 04:B7A8: 81        .byte $81   ; 
- D 1 - I - 0x0137B9 04:B7A9: FD        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x0137BA 04:B7AA: 1D B8     .word sub_FD_B81D
- D 1 - I - 0x0137BC 04:B7AC: D0        .byte $D0   ; 
- D 1 - I - 0x0137BD 04:B7AD: F0        .byte con_se_cb_F0   ; 
- D 1 - I - 0x0137BE 04:B7AE: 81        .byte $81   ; 
- D 1 - I - 0x0137BF 04:B7AF: D8        .byte $D8   ; 
- D 1 - I - 0x0137C0 04:B7B0: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x0137C1 04:B7B1: E4        .byte con_se_cb_E4, $81   ; 
- D 1 - I - 0x0137C3 04:B7B3: E5        .byte con_se_cb_E5, $15   ; 
- D 1 - I - 0x0137C5 04:B7B5: E2        .byte con_se_cb_E2, $70   ; 
- D 1 - I - 0x0137C7 04:B7B7: E1        .byte con_se_cb_E1, $01   ; 
- D 1 - I - 0x0137C9 04:B7B9: 1C        .byte $1C   ; 
- D 1 - I - 0x0137CA 04:B7BA: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0137CB 04:B7BB: C8        .byte $C8   ; 
- D 1 - I - 0x0137CC 04:B7BC: 88        .byte $88   ; 
- D 1 - I - 0x0137CD 04:B7BD: 14        .byte $14   ; 
- D 1 - I - 0x0137CE 04:B7BE: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0137CF 04:B7BF: C4        .byte $C4   ; 
- D 1 - I - 0x0137D0 04:B7C0: 84        .byte $84   ; 
- D 1 - I - 0x0137D1 04:B7C1: 12        .byte $12   ; 
- D 1 - I - 0x0137D2 04:B7C2: D0        .byte $D0   ; 
- D 1 - I - 0x0137D3 04:B7C3: E0        .byte con_se_cb_E0   ; 
- D 1 - I - 0x0137D4 04:B7C4: 06        .byte $06   ; 
- D 1 - I - 0x0137D5 04:B7C5: BA        .byte $BA   ; 
- D 1 - I - 0x0137D6 04:B7C6: 81        .byte $81   ; 
- D 1 - I - 0x0137D7 04:B7C7: 23        .byte $23   ; 
- D 1 - I - 0x0137D8 04:B7C8: E2        .byte con_se_cb_E2, $35   ; 
- D 1 - I - 0x0137DA 04:B7CA: F0        .byte con_se_cb_F0   ; 
- D 1 - I - 0x0137DB 04:B7CB: E9        .byte con_se_cb_E9, $00   ; 
- D 1 - I - 0x0137DD 04:B7CD: EA        .byte con_se_cb_EA, $03   ; 
- D 1 - I - 0x0137DF 04:B7CF: E7        .byte con_se_cb_E7, $00   ; 
- D 1 - I - 0x0137E1 04:B7D1: B1        .byte $B1   ; 
- D 1 - I - 0x0137E2 04:B7D2: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0137E3 04:B7D3: D9        .byte $D9   ; 
- D 1 - I - 0x0137E4 04:B7D4: B1        .byte $B1   ; 
- D 1 - I - 0x0137E5 04:B7D5: B1        .byte $B1   ; 
- D 1 - I - 0x0137E6 04:B7D6: B1        .byte $B1   ; 
- D 1 - I - 0x0137E7 04:B7D7: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x0137E8 04:B7D8: D6        .byte $D6   ; 
- D 1 - I - 0x0137E9 04:B7D9: B2        .byte $B2   ; 
- D 1 - I - 0x0137EA 04:B7DA: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0137EB 04:B7DB: 11        .byte $11   ; 
- D 1 - I - 0x0137EC 04:B7DC: 33        .byte $33   ; 
- D 1 - I - 0x0137ED 04:B7DD: 12        .byte $12   ; 
- D 1 - I - 0x0137EE 04:B7DE: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x0137EF 04:B7DF: 82        .byte $82   ; 
- D 1 - I - 0x0137F0 04:B7E0: 52        .byte $52   ; 
- D 1 - I - 0x0137F1 04:B7E1: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x0137F2 04:B7E2: D0        .byte $D0   ; 
- D 1 - I - 0x0137F3 04:B7E3: 11        .byte $11   ; 
- D 1 - I - 0x0137F4 04:B7E4: D7        .byte $D7   ; 
- D 1 - I - 0x0137F5 04:B7E5: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0137F6 04:B7E6: B1        .byte $B1   ; 
- D 1 - I - 0x0137F7 04:B7E7: D9        .byte $D9   ; 
- D 1 - I - 0x0137F8 04:B7E8: B1        .byte $B1   ; 
- D 1 - I - 0x0137F9 04:B7E9: B1        .byte $B1   ; 
- D 1 - I - 0x0137FA 04:B7EA: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x0137FB 04:B7EB: D6        .byte $D6   ; 
- D 1 - I - 0x0137FC 04:B7EC: B1        .byte $B1   ; 
- D 1 - I - 0x0137FD 04:B7ED: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0137FE 04:B7EE: 11        .byte $11   ; 
- D 1 - I - 0x0137FF 04:B7EF: 31        .byte $31   ; 
- D 1 - I - 0x013800 04:B7F0: 53        .byte $53   ; 
- D 1 - I - 0x013801 04:B7F1: 12        .byte $12   ; 
- D 1 - I - 0x013802 04:B7F2: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x013803 04:B7F3: 82        .byte $82   ; 
- D 1 - I - 0x013804 04:B7F4: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x013805 04:B7F5: 82        .byte $82   ; 
- D 1 - I - 0x013806 04:B7F6: E2        .byte con_se_cb_E2, $00   ; 
- D 1 - I - 0x013808 04:B7F8: E0        .byte con_se_cb_E0   ; 
- D 1 - I - 0x013809 04:B7F9: 06        .byte $06   ; 
- D 1 - I - 0x01380A 04:B7FA: B8        .byte $B8   ; 
- D 1 - I - 0x01380B 04:B7FB: 83        .byte $83   ; 
- D 1 - I - 0x01380C 04:B7FC: 35        .byte $35   ; 
- D 1 - I - 0x01380D 04:B7FD: E9        .byte con_se_cb_E9, $81   ; 
- D 1 - I - 0x01380F 04:B7FF: EA        .byte con_se_cb_EA, $03   ; 
- D 1 - I - 0x013811 04:B801: F0        .byte con_se_cb_F0   ; 
- D 1 - I - 0x013812 04:B802: D0        .byte $D0   ; 
- D 1 - I - 0x013813 04:B803: 32        .byte $32   ; 
- D 1 - I - 0x013814 04:B804: 31        .byte $31   ; 
- D 1 - I - 0x013815 04:B805: 31        .byte $31   ; 
- D 1 - I - 0x013816 04:B806: 61        .byte $61   ; 
- D 1 - I - 0x013817 04:B807: 82        .byte $82   ; 
- D 1 - I - 0x013818 04:B808: 32        .byte $32   ; 
- D 1 - I - 0x013819 04:B809: 32        .byte $32   ; 
- D 1 - I - 0x01381A 04:B80A: 61        .byte $61   ; 
- D 1 - I - 0x01381B 04:B80B: 81        .byte $81   ; 
- D 1 - I - 0x01381C 04:B80C: A3        .byte $A3   ; 
- D 1 - I - 0x01381D 04:B80D: 32        .byte $32   ; 
- D 1 - I - 0x01381E 04:B80E: 31        .byte $31   ; 
- D 1 - I - 0x01381F 04:B80F: 31        .byte $31   ; 
- D 1 - I - 0x013820 04:B810: 61        .byte $61   ; 
- D 1 - I - 0x013821 04:B811: 82        .byte $82   ; 
- D 1 - I - 0x013822 04:B812: 32        .byte $32   ; 
- D 1 - I - 0x013823 04:B813: 31        .byte $31   ; 
- D 1 - I - 0x013824 04:B814: 91        .byte $91   ; 
- D 1 - I - 0x013825 04:B815: 81        .byte $81   ; 
- D 1 - I - 0x013826 04:B816: 61        .byte $61   ; 
- D 1 - I - 0x013827 04:B817: 13        .byte $13   ; 
- D 1 - I - 0x013828 04:B818: D0        .byte $D0   ; 
- D 1 - I - 0x013829 04:B819: FE        .byte con_se_cb_jmp, $FF   ; 
- D 1 - I - 0x01382B 04:B81B: 10 B6     .word loc_FE_B610



sub_FD_B81D:
- D 1 - I - 0x01382D 04:B81D: A1        .byte $A1   ; 
- D 1 - I - 0x01382E 04:B81E: 61        .byte $61   ; 
- D 1 - I - 0x01382F 04:B81F: 31        .byte $31   ; 
- D 1 - I - 0x013830 04:B820: 81        .byte $81   ; 
- D 1 - I - 0x013831 04:B821: D0        .byte $D0   ; 
- D 1 - I - 0x013832 04:B822: F0        .byte con_se_cb_F0   ; 
- D 1 - I - 0x013833 04:B823: 51        .byte $51   ; 
- D 1 - I - 0x013834 04:B824: D8        .byte $D8   ; 
- D 1 - I - 0x013835 04:B825: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x013836 04:B826: 81        .byte $81   ; 
- D 1 - I - 0x013837 04:B827: A1        .byte $A1   ; 
- D 1 - I - 0x013838 04:B828: 51        .byte $51   ; 
- D 1 - I - 0x013839 04:B829: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x01383A 04:B82A: C1        .byte $C1   ; 
- D 1 - I - 0x01383B 04:B82B: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x01383C 04:B82C: 81        .byte $81   ; 
- D 1 - I - 0x01383D 04:B82D: A1        .byte $A1   ; 
- D 1 - I - 0x01383E 04:B82E: 81        .byte $81   ; 
- D 1 - I - 0x01383F 04:B82F: D0        .byte $D0   ; 
- D 1 - I - 0x013840 04:B830: F0        .byte con_se_cb_F0   ; 
- D 1 - I - 0x013841 04:B831: 61        .byte $61   ; 
- D 1 - I - 0x013842 04:B832: D8        .byte $D8   ; 
- D 1 - I - 0x013843 04:B833: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x013844 04:B834: 51        .byte $51   ; 
- D 1 - I - 0x013845 04:B835: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x013846 04:B836: C1        .byte $C1   ; 
- D 1 - I - 0x013847 04:B837: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x013848 04:B838: 81        .byte $81   ; 
- D 1 - I - 0x013849 04:B839: A1        .byte $A1   ; 
- D 1 - I - 0x01384A 04:B83A: 61        .byte $61   ; 
- D 1 - I - 0x01384B 04:B83B: 11        .byte $11   ; 
- D 1 - I - 0x01384C 04:B83C: 81        .byte $81   ; 
- D 1 - I - 0x01384D 04:B83D: FF        .byte con_se_cb_stop   ; 



sub_FD_B83E:
- D 1 - I - 0x01384E 04:B83E: E0        .byte con_se_cb_E0   ; 
- D 1 - I - 0x01384F 04:B83F: 06        .byte $06   ; 
- D 1 - I - 0x013850 04:B840: 7A        .byte $7A   ; 
- D 1 - I - 0x013851 04:B841: 81        .byte $81   ; 
- D 1 - I - 0x013852 04:B842: 24        .byte $24   ; 
- D 1 - I - 0x013853 04:B843: E2        .byte con_se_cb_E2, $34   ; 
- D 1 - I - 0x013855 04:B845: D5        .byte $D5   ; 
- D 1 - I - 0x013856 04:B846: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x013857 04:B847: E9        .byte con_se_cb_E9, $00   ; 
- D 1 - I - 0x013859 04:B849: EA        .byte con_se_cb_EA, $01   ; 
- D 1 - I - 0x01385B 04:B84B: E7        .byte con_se_cb_E7, $57, $22   ; 
- D 1 - I - 0x01385E 04:B84E: A3        .byte $A3   ; 
- D 1 - I - 0x01385F 04:B84F: 93        .byte $93   ; 
- D 1 - I - 0x013860 04:B850: A2        .byte $A2   ; 
- D 1 - I - 0x013861 04:B851: A3        .byte $A3   ; 
- D 1 - I - 0x013862 04:B852: 93        .byte $93   ; 
- D 1 - I - 0x013863 04:B853: A2        .byte $A2   ; 
- D 1 - I - 0x013864 04:B854: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x013865 04:B855: FF        .byte con_se_cb_stop   ; 



_off000_B856_7C_02:
loc_FE_B856:
- D 1 - I - 0x013866 04:B856: E0        .byte con_se_cb_E0   ; 
- D 1 - I - 0x013867 04:B857: 06        .byte $06   ; 
- D 1 - I - 0x013868 04:B858: 05        .byte $05   ; 
- D 1 - I - 0x013869 04:B859: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x01386A 04:B85A: FB        .byte con_se_cb_FB   ; 
- D 1 - I - 0x01386B 04:B85B: 32        .byte $32   ; 
- D 1 - I - 0x01386C 04:B85C: 31        .byte $31   ; 
- D 1 - I - 0x01386D 04:B85D: 31        .byte $31   ; 
- D 1 - I - 0x01386E 04:B85E: 61        .byte $61   ; 
- D 1 - I - 0x01386F 04:B85F: 82        .byte $82   ; 
- D 1 - I - 0x013870 04:B860: 32        .byte $32   ; 
- D 1 - I - 0x013871 04:B861: 32        .byte $32   ; 
- D 1 - I - 0x013872 04:B862: 31        .byte $31   ; 
- D 1 - I - 0x013873 04:B863: 62        .byte $62   ; 
- D 1 - I - 0x013874 04:B864: 81        .byte $81   ; 
- D 1 - I - 0x013875 04:B865: A1        .byte $A1   ; 
- D 1 - I - 0x013876 04:B866: 32        .byte $32   ; 
- D 1 - I - 0x013877 04:B867: 31        .byte $31   ; 
- D 1 - I - 0x013878 04:B868: 31        .byte $31   ; 
- D 1 - I - 0x013879 04:B869: 61        .byte $61   ; 
- D 1 - I - 0x01387A 04:B86A: 82        .byte $82   ; 
- D 1 - I - 0x01387B 04:B86B: 32        .byte $32   ; 
- D 1 - I - 0x01387C 04:B86C: 31        .byte $31   ; 
- D 1 - I - 0x01387D 04:B86D: 91        .byte $91   ; 
- D 1 - I - 0x01387E 04:B86E: 81        .byte $81   ; 
- D 1 - I - 0x01387F 04:B86F: 61        .byte $61   ; 
- D 1 - I - 0x013880 04:B870: 13        .byte $13   ; 
- D 1 - I - 0x013881 04:B871: FE        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x013882 04:B872: 06        .byte $06   ; 
- D 1 - I - 0x013883 04:B873: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x013884 04:B874: FD        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x013885 04:B875: E7 B8     .word sub_FD_B8E7
- D 1 - I - 0x013887 04:B877: 13        .byte $13   ; 
- D 1 - I - 0x013888 04:B878: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x013889 04:B879: 83        .byte $83   ; 
- D 1 - I - 0x01388A 04:B87A: C4        .byte $C4   ; 
- D 1 - I - 0x01388B 04:B87B: 81        .byte $81   ; 
- D 1 - I - 0x01388C 04:B87C: 01        .byte $01   ; 
- D 1 - I - 0x01388D 04:B87D: 81        .byte $81   ; 
- D 1 - I - 0x01388E 04:B87E: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x01388F 04:B87F: 53        .byte $53   ; 
- D 1 - I - 0x013890 04:B880: FD        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x013891 04:B881: E7 B8     .word sub_FD_B8E7
- D 1 - I - 0x013893 04:B883: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x013894 04:B884: C4        .byte $C4   ; 
- D 1 - I - 0x013895 04:B885: A4        .byte $A4   ; 
- D 1 - I - 0x013896 04:B886: 83        .byte $83   ; 
- D 1 - I - 0x013897 04:B887: 55        .byte $55   ; 
- D 1 - I - 0x013898 04:B888: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x013899 04:B889: FD        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x01389A 04:B88A: E7 B8     .word sub_FD_B8E7
- D 1 - I - 0x01389C 04:B88C: 13        .byte $13   ; 
- D 1 - I - 0x01389D 04:B88D: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x01389E 04:B88E: 83        .byte $83   ; 
- D 1 - I - 0x01389F 04:B88F: C4        .byte $C4   ; 
- D 1 - I - 0x0138A0 04:B890: 81        .byte $81   ; 
- D 1 - I - 0x0138A1 04:B891: 01        .byte $01   ; 
- D 1 - I - 0x0138A2 04:B892: 81        .byte $81   ; 
- D 1 - I - 0x0138A3 04:B893: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0138A4 04:B894: 53        .byte $53   ; 
- D 1 - I - 0x0138A5 04:B895: FD        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x0138A6 04:B896: E7 B8     .word sub_FD_B8E7
- D 1 - I - 0x0138A8 04:B898: 33        .byte $33   ; 
- D 1 - I - 0x0138A9 04:B899: 53        .byte $53   ; 
- D 1 - I - 0x0138AA 04:B89A: 63        .byte $63   ; 
- D 1 - I - 0x0138AB 04:B89B: 83        .byte $83   ; 
- D 1 - I - 0x0138AC 04:B89C: A2        .byte $A2   ; 
- D 1 - I - 0x0138AD 04:B89D: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0138AE 04:B89E: 12        .byte $12   ; 
- D 1 - I - 0x0138AF 04:B89F: FB        .byte con_se_cb_FB   ; 
- D 1 - I - 0x0138B0 04:B8A0: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x0138B1 04:B8A1: 31        .byte $31   ; 
- D 1 - I - 0x0138B2 04:B8A2: 01        .byte $01   ; 
- D 1 - I - 0x0138B3 04:B8A3: 31        .byte $31   ; 
- D 1 - I - 0x0138B4 04:B8A4: 31        .byte $31   ; 
- D 1 - I - 0x0138B5 04:B8A5: D4        .byte $D4   ; 
- D 1 - I - 0x0138B6 04:B8A6: 51        .byte $51   ; 
- D 1 - I - 0x0138B7 04:B8A7: 01        .byte $01   ; 
- D 1 - I - 0x0138B8 04:B8A8: 51        .byte $51   ; 
- D 1 - I - 0x0138B9 04:B8A9: 51        .byte $51   ; 
- D 1 - I - 0x0138BA 04:B8AA: D4        .byte $D4   ; 
- D 1 - I - 0x0138BB 04:B8AB: 61        .byte $61   ; 
- D 1 - I - 0x0138BC 04:B8AC: 01        .byte $01   ; 
- D 1 - I - 0x0138BD 04:B8AD: 61        .byte $61   ; 
- D 1 - I - 0x0138BE 04:B8AE: 61        .byte $61   ; 
- D 1 - I - 0x0138BF 04:B8AF: D4        .byte $D4   ; 
- D 1 - I - 0x0138C0 04:B8B0: 81        .byte $81   ; 
- D 1 - I - 0x0138C1 04:B8B1: 83        .byte $83   ; 
- D 1 - I - 0x0138C2 04:B8B2: D4        .byte $D4   ; 
- D 1 - I - 0x0138C3 04:B8B3: FE        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x0138C4 04:B8B4: 02        .byte $02   ; 
- D 1 - I - 0x0138C5 04:B8B5: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x0138C6 04:B8B6: B1        .byte $B1   ; 
- D 1 - I - 0x0138C7 04:B8B7: 01        .byte $01   ; 
- D 1 - I - 0x0138C8 04:B8B8: B1        .byte $B1   ; 
- D 1 - I - 0x0138C9 04:B8B9: B1        .byte $B1   ; 
- D 1 - I - 0x0138CA 04:B8BA: D1        .byte $D1   ; 
- D 1 - I - 0x0138CB 04:B8BB: B2        .byte $B2   ; 
- D 1 - I - 0x0138CC 04:B8BC: B2        .byte $B2   ; 
- D 1 - I - 0x0138CD 04:B8BD: B1        .byte $B1   ; 
- D 1 - I - 0x0138CE 04:B8BE: B2        .byte $B2   ; 
- D 1 - I - 0x0138CF 04:B8BF: B2        .byte $B2   ; 
- D 1 - I - 0x0138D0 04:B8C0: B2        .byte $B2   ; 
- D 1 - I - 0x0138D1 04:B8C1: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0138D2 04:B8C2: 12        .byte $12   ; 
- D 1 - I - 0x0138D3 04:B8C3: 11        .byte $11   ; 
- D 1 - I - 0x0138D4 04:B8C4: 11        .byte $11   ; 
- D 1 - I - 0x0138D5 04:B8C5: D1        .byte $D1   ; 
- D 1 - I - 0x0138D6 04:B8C6: 11        .byte $11   ; 
- D 1 - I - 0x0138D7 04:B8C7: 01        .byte $01   ; 
- D 1 - I - 0x0138D8 04:B8C8: 12        .byte $12   ; 
- D 1 - I - 0x0138D9 04:B8C9: 11        .byte $11   ; 
- D 1 - I - 0x0138DA 04:B8CA: 12        .byte $12   ; 
- D 1 - I - 0x0138DB 04:B8CB: 12        .byte $12   ; 
- D 1 - I - 0x0138DC 04:B8CC: 12        .byte $12   ; 
- D 1 - I - 0x0138DD 04:B8CD: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x0138DE 04:B8CE: 32        .byte $32   ; 
- D 1 - I - 0x0138DF 04:B8CF: 31        .byte $31   ; 
- D 1 - I - 0x0138E0 04:B8D0: 31        .byte $31   ; 
- D 1 - I - 0x0138E1 04:B8D1: 61        .byte $61   ; 
- D 1 - I - 0x0138E2 04:B8D2: 82        .byte $82   ; 
- D 1 - I - 0x0138E3 04:B8D3: 32        .byte $32   ; 
- D 1 - I - 0x0138E4 04:B8D4: 32        .byte $32   ; 
- D 1 - I - 0x0138E5 04:B8D5: 61        .byte $61   ; 
- D 1 - I - 0x0138E6 04:B8D6: 81        .byte $81   ; 
- D 1 - I - 0x0138E7 04:B8D7: A3        .byte $A3   ; 
- D 1 - I - 0x0138E8 04:B8D8: 32        .byte $32   ; 
- D 1 - I - 0x0138E9 04:B8D9: 31        .byte $31   ; 
- D 1 - I - 0x0138EA 04:B8DA: 31        .byte $31   ; 
- D 1 - I - 0x0138EB 04:B8DB: 61        .byte $61   ; 
- D 1 - I - 0x0138EC 04:B8DC: 82        .byte $82   ; 
- D 1 - I - 0x0138ED 04:B8DD: 32        .byte $32   ; 
- D 1 - I - 0x0138EE 04:B8DE: 31        .byte $31   ; 
- D 1 - I - 0x0138EF 04:B8DF: 91        .byte $91   ; 
- D 1 - I - 0x0138F0 04:B8E0: 81        .byte $81   ; 
- D 1 - I - 0x0138F1 04:B8E1: 61        .byte $61   ; 
- D 1 - I - 0x0138F2 04:B8E2: 13        .byte $13   ; 
- D 1 - I - 0x0138F3 04:B8E3: FE        .byte con_se_cb_jmp, $FF   ; 
- D 1 - I - 0x0138F5 04:B8E5: 56 B8     .word loc_FE_B856



sub_FD_B8E7:
- D 1 - I - 0x0138F7 04:B8E7: FB        .byte con_se_cb_FB   ; 
- D 1 - I - 0x0138F8 04:B8E8: 31        .byte $31   ; 
- D 1 - I - 0x0138F9 04:B8E9: 21        .byte $21   ; 
- D 1 - I - 0x0138FA 04:B8EA: 31        .byte $31   ; 
- D 1 - I - 0x0138FB 04:B8EB: 63        .byte $63   ; 
- D 1 - I - 0x0138FC 04:B8EC: FE        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x0138FD 04:B8ED: 02        .byte $02   ; 
- D 1 - I - 0x0138FE 04:B8EE: 31        .byte $31   ; 
- D 1 - I - 0x0138FF 04:B8EF: 21        .byte $21   ; 
- D 1 - I - 0x013900 04:B8F0: 31        .byte $31   ; 
- D 1 - I - 0x013901 04:B8F1: 61        .byte $61   ; 
- D 1 - I - 0x013902 04:B8F2: FF        .byte con_se_cb_stop   ; 



_off000_B8F3_7C_03:
loc_FE_B8F3:
- D 1 - I - 0x013903 04:B8F3: E0        .byte con_se_cb_E0   ; 
- D 1 - I - 0x013904 04:B8F4: 06        .byte $06   ; 
- D 1 - I - 0x013905 04:B8F5: FB        .byte con_se_cb_FB   ; 
- D 1 - I - 0x013906 04:B8F6: FD        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x013907 04:B8F7: 87 B9     .word sub_FD_B987
- D 1 - I - 0x013909 04:B8F9: B2        .byte $B2   ; 
- D 1 - I - 0x01390A 04:B8FA: 54        .byte $54   ; 
- D 1 - I - 0x01390B 04:B8FB: FD        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x01390C 04:B8FC: 87 B9     .word sub_FD_B987
- D 1 - I - 0x01390E 04:B8FE: 52        .byte $52   ; 
- D 1 - I - 0x01390F 04:B8FF: 54        .byte $54   ; 
- D 1 - I - 0x013910 04:B900: FE        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x013911 04:B901: 03        .byte $03   ; 
- D 1 - I - 0x013912 04:B902: FD        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x013913 04:B903: 98 B9     .word sub_FD_B998
- D 1 - I - 0x013915 04:B905: FD        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x013916 04:B906: A5 B9     .word sub_FD_B9A5
- D 1 - I - 0x013918 04:B908: FD        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x013919 04:B909: 98 B9     .word sub_FD_B998
- D 1 - I - 0x01391B 04:B90B: 91        .byte $91   ; 
- D 1 - I - 0x01391C 04:B90C: 91        .byte $91   ; 
- D 1 - I - 0x01391D 04:B90D: 91        .byte $91   ; 
- D 1 - I - 0x01391E 04:B90E: 91        .byte $91   ; 
- D 1 - I - 0x01391F 04:B90F: 81        .byte $81   ; 
- D 1 - I - 0x013920 04:B910: 81        .byte $81   ; 
- D 1 - I - 0x013921 04:B911: 81        .byte $81   ; 
- D 1 - I - 0x013922 04:B912: 81        .byte $81   ; 
- D 1 - I - 0x013923 04:B913: 91        .byte $91   ; 
- D 1 - I - 0x013924 04:B914: 81        .byte $81   ; 
- D 1 - I - 0x013925 04:B915: 81        .byte $81   ; 
- D 1 - I - 0x013926 04:B916: 71        .byte $71   ; 
- D 1 - I - 0x013927 04:B917: E1        .byte con_se_cb_E1, $01   ; 
- D 1 - I - 0x013929 04:B919: B3        .byte $B3   ; 
- D 1 - I - 0x01392A 04:B91A: B3        .byte $B3   ; 
- D 1 - I - 0x01392B 04:B91B: B6        .byte $B6   ; 
- D 1 - I - 0x01392C 04:B91C: B6        .byte $B6   ; 
- D 1 - I - 0x01392D 04:B91D: B6        .byte $B6   ; 
- D 1 - I - 0x01392E 04:B91E: E1        .byte con_se_cb_E1, $06   ; 
- D 1 - I - 0x013930 04:B920: FD        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x013931 04:B921: 98 B9     .word sub_FD_B998
- D 1 - I - 0x013933 04:B923: FD        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x013934 04:B924: A5 B9     .word sub_FD_B9A5
- D 1 - I - 0x013936 04:B926: FD        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x013937 04:B927: 98 B9     .word sub_FD_B998
- D 1 - I - 0x013939 04:B929: 91        .byte $91   ; 
- D 1 - I - 0x01393A 04:B92A: 91        .byte $91   ; 
- D 1 - I - 0x01393B 04:B92B: 81        .byte $81   ; 
- D 1 - I - 0x01393C 04:B92C: 91        .byte $91   ; 
- D 1 - I - 0x01393D 04:B92D: 91        .byte $91   ; 
- D 1 - I - 0x01393E 04:B92E: 71        .byte $71   ; 
- D 1 - I - 0x01393F 04:B92F: 91        .byte $91   ; 
- D 1 - I - 0x013940 04:B930: 81        .byte $81   ; 
- D 1 - I - 0x013941 04:B931: 71        .byte $71   ; 
- D 1 - I - 0x013942 04:B932: 91        .byte $91   ; 
- D 1 - I - 0x013943 04:B933: 81        .byte $81   ; 
- D 1 - I - 0x013944 04:B934: 81        .byte $81   ; 
- D 1 - I - 0x013945 04:B935: E1        .byte con_se_cb_E1, $01   ; 
- D 1 - I - 0x013947 04:B937: FB        .byte con_se_cb_FB   ; 
- D 1 - I - 0x013948 04:B938: B3        .byte $B3   ; 
- D 1 - I - 0x013949 04:B939: FE        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x01394A 04:B93A: 08        .byte $08   ; 
- D 1 - I - 0x01394B 04:B93B: E1        .byte con_se_cb_E1, $06   ; 
- D 1 - I - 0x01394D 04:B93D: FD        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x01394E 04:B93E: BD B9     .word sub_FD_B9BD
- D 1 - I - 0x013950 04:B940: B4        .byte $B4   ; 
- D 1 - I - 0x013951 04:B941: B4        .byte $B4   ; 
- D 1 - I - 0x013952 04:B942: B8        .byte $B8   ; 
- D 1 - I - 0x013953 04:B943: B8        .byte $B8   ; 
- D 1 - I - 0x013954 04:B944: B8        .byte $B8   ; 
- D 1 - I - 0x013955 04:B945: B8        .byte $B8   ; 
- D 1 - I - 0x013956 04:B946: B8        .byte $B8   ; 
- D 1 - I - 0x013957 04:B947: E1        .byte con_se_cb_E1, $06   ; 
- D 1 - I - 0x013959 04:B949: FD        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x01395A 04:B94A: BD B9     .word sub_FD_B9BD
- D 1 - I - 0x01395C 04:B94C: B8        .byte $B8   ; 
- D 1 - I - 0x01395D 04:B94D: B8        .byte $B8   ; 
- D 1 - I - 0x01395E 04:B94E: B8        .byte $B8   ; 
- D 1 - I - 0x01395F 04:B94F: 84        .byte $84   ; 
- D 1 - I - 0x013960 04:B950: 84        .byte $84   ; 
- D 1 - I - 0x013961 04:B951: 84        .byte $84   ; 
- D 1 - I - 0x013962 04:B952: 84        .byte $84   ; 
- D 1 - I - 0x013963 04:B953: 74        .byte $74   ; 
- D 1 - I - 0x013964 04:B954: 74        .byte $74   ; 
- D 1 - I - 0x013965 04:B955: E0        .byte con_se_cb_E0   ; 
- D 1 - I - 0x013966 04:B956: 06        .byte $06   ; 
- D 1 - I - 0x013967 04:B957: C1        .byte $C1   ; 
- D 1 - I - 0x013968 04:B958: C1        .byte $C1   ; 
- D 1 - I - 0x013969 04:B959: B2        .byte $B2   ; 
- D 1 - I - 0x01396A 04:B95A: C1        .byte $C1   ; 
- D 1 - I - 0x01396B 04:B95B: C1        .byte $C1   ; 
- D 1 - I - 0x01396C 04:B95C: B1        .byte $B1   ; 
- D 1 - I - 0x01396D 04:B95D: C2        .byte $C2   ; 
- D 1 - I - 0x01396E 04:B95E: C1        .byte $C1   ; 
- D 1 - I - 0x01396F 04:B95F: B2        .byte $B2   ; 
- D 1 - I - 0x013970 04:B960: C2        .byte $C2   ; 
- D 1 - I - 0x013971 04:B961: B2        .byte $B2   ; 
- D 1 - I - 0x013972 04:B962: B1        .byte $B1   ; 
- D 1 - I - 0x013973 04:B963: B1        .byte $B1   ; 
- D 1 - I - 0x013974 04:B964: B2        .byte $B2   ; 
- D 1 - I - 0x013975 04:B965: C1        .byte $C1   ; 
- D 1 - I - 0x013976 04:B966: C1        .byte $C1   ; 
- D 1 - I - 0x013977 04:B967: B1        .byte $B1   ; 
- D 1 - I - 0x013978 04:B968: C2        .byte $C2   ; 
- D 1 - I - 0x013979 04:B969: C1        .byte $C1   ; 
- D 1 - I - 0x01397A 04:B96A: B2        .byte $B2   ; 
- D 1 - I - 0x01397B 04:B96B: C2        .byte $C2   ; 
- D 1 - I - 0x01397C 04:B96C: B2        .byte $B2   ; 
- D 1 - I - 0x01397D 04:B96D: C2        .byte $C2   ; 
- D 1 - I - 0x01397E 04:B96E: C1        .byte $C1   ; 
- D 1 - I - 0x01397F 04:B96F: C1        .byte $C1   ; 
- D 1 - I - 0x013980 04:B970: B1        .byte $B1   ; 
- D 1 - I - 0x013981 04:B971: B2        .byte $B2   ; 
- D 1 - I - 0x013982 04:B972: C2        .byte $C2   ; 
- D 1 - I - 0x013983 04:B973: C1        .byte $C1   ; 
- D 1 - I - 0x013984 04:B974: B2        .byte $B2   ; 
- D 1 - I - 0x013985 04:B975: 91        .byte $91   ; 
- D 1 - I - 0x013986 04:B976: 71        .byte $71   ; 
- D 1 - I - 0x013987 04:B977: 81        .byte $81   ; 
- D 1 - I - 0x013988 04:B978: 71        .byte $71   ; 
- D 1 - I - 0x013989 04:B979: C1        .byte $C1   ; 
- D 1 - I - 0x01398A 04:B97A: C2        .byte $C2   ; 
- D 1 - I - 0x01398B 04:B97B: C1        .byte $C1   ; 
- D 1 - I - 0x01398C 04:B97C: B1        .byte $B1   ; 
- D 1 - I - 0x01398D 04:B97D: C2        .byte $C2   ; 
- D 1 - I - 0x01398E 04:B97E: C2        .byte $C2   ; 
- D 1 - I - 0x01398F 04:B97F: C1        .byte $C1   ; 
- D 1 - I - 0x013990 04:B980: B2        .byte $B2   ; 
- D 1 - I - 0x013991 04:B981: B2        .byte $B2   ; 
- D 1 - I - 0x013992 04:B982: 32        .byte $32   ; 
- D 1 - I - 0x013993 04:B983: FE        .byte con_se_cb_jmp, $FF   ; 
- D 1 - I - 0x013995 04:B985: F3 B8     .word loc_FE_B8F3



sub_FD_B987:
- D 1 - I - 0x013997 04:B987: C2        .byte $C2   ; 
- D 1 - I - 0x013998 04:B988: C1        .byte $C1   ; 
- D 1 - I - 0x013999 04:B989: C1        .byte $C1   ; 
- D 1 - I - 0x01399A 04:B98A: B1        .byte $B1   ; 
- D 1 - I - 0x01399B 04:B98B: C2        .byte $C2   ; 
- D 1 - I - 0x01399C 04:B98C: C2        .byte $C2   ; 
- D 1 - I - 0x01399D 04:B98D: C2        .byte $C2   ; 
- D 1 - I - 0x01399E 04:B98E: C1        .byte $C1   ; 
- D 1 - I - 0x01399F 04:B98F: B4        .byte $B4   ; 
- D 1 - I - 0x0139A0 04:B990: C2        .byte $C2   ; 
- D 1 - I - 0x0139A1 04:B991: C1        .byte $C1   ; 
- D 1 - I - 0x0139A2 04:B992: C1        .byte $C1   ; 
- D 1 - I - 0x0139A3 04:B993: B1        .byte $B1   ; 
- D 1 - I - 0x0139A4 04:B994: C2        .byte $C2   ; 
- D 1 - I - 0x0139A5 04:B995: C2        .byte $C2   ; 
- D 1 - I - 0x0139A6 04:B996: C1        .byte $C1   ; 
- D 1 - I - 0x0139A7 04:B997: FF        .byte con_se_cb_stop   ; 



sub_FD_B998:
- D 1 - I - 0x0139A8 04:B998: C2        .byte $C2   ; 
- D 1 - I - 0x0139A9 04:B999: C1        .byte $C1   ; 
- D 1 - I - 0x0139AA 04:B99A: B1        .byte $B1   ; 
- D 1 - I - 0x0139AB 04:B99B: 92        .byte $92   ; 
- D 1 - I - 0x0139AC 04:B99C: C2        .byte $C2   ; 
- D 1 - I - 0x0139AD 04:B99D: C1        .byte $C1   ; 
- D 1 - I - 0x0139AE 04:B99E: B1        .byte $B1   ; 
- D 1 - I - 0x0139AF 04:B99F: 91        .byte $91   ; 
- D 1 - I - 0x0139B0 04:B9A0: 81        .byte $81   ; 
- D 1 - I - 0x0139B1 04:B9A1: 92        .byte $92   ; 
- D 1 - I - 0x0139B2 04:B9A2: 81        .byte $81   ; 
- D 1 - I - 0x0139B3 04:B9A3: 81        .byte $81   ; 
- D 1 - I - 0x0139B4 04:B9A4: FF        .byte con_se_cb_stop   ; 



sub_FD_B9A5:
- D 1 - I - 0x0139B5 04:B9A5: E1        .byte con_se_cb_E1, $01   ; 
- D 1 - I - 0x0139B7 04:B9A7: 93        .byte $93   ; 
- D 1 - I - 0x0139B8 04:B9A8: 93        .byte $93   ; 
- D 1 - I - 0x0139B9 04:B9A9: E1        .byte con_se_cb_E1, $06   ; 
- D 1 - I - 0x0139BB 04:B9AB: 81        .byte $81   ; 
- D 1 - I - 0x0139BC 04:B9AC: 91        .byte $91   ; 
- D 1 - I - 0x0139BD 04:B9AD: 71        .byte $71   ; 
- D 1 - I - 0x0139BE 04:B9AE: 92        .byte $92   ; 
- D 1 - I - 0x0139BF 04:B9AF: 81        .byte $81   ; 
- D 1 - I - 0x0139C0 04:B9B0: 71        .byte $71   ; 
- D 1 - I - 0x0139C1 04:B9B1: E1        .byte con_se_cb_E1, $01   ; 
- D 1 - I - 0x0139C3 04:B9B3: B3        .byte $B3   ; 
- D 1 - I - 0x0139C4 04:B9B4: B3        .byte $B3   ; 
- D 1 - I - 0x0139C5 04:B9B5: E1        .byte con_se_cb_E1, $06   ; 
- D 1 - I - 0x0139C7 04:B9B7: B1        .byte $B1   ; 
- D 1 - I - 0x0139C8 04:B9B8: B1        .byte $B1   ; 
- D 1 - I - 0x0139C9 04:B9B9: B2        .byte $B2   ; 
- D 1 - I - 0x0139CA 04:B9BA: B2        .byte $B2   ; 
- D 1 - I - 0x0139CB 04:B9BB: B1        .byte $B1   ; 
- D 1 - I - 0x0139CC 04:B9BC: FF        .byte con_se_cb_stop   ; 



sub_FD_B9BD:
- D 1 - I - 0x0139CD 04:B9BD: C2        .byte $C2   ; 
- D 1 - I - 0x0139CE 04:B9BE: C1        .byte $C1   ; 
- D 1 - I - 0x0139CF 04:B9BF: C1        .byte $C1   ; 
- D 1 - I - 0x0139D0 04:B9C0: B2        .byte $B2   ; 
- D 1 - I - 0x0139D1 04:B9C1: 91        .byte $91   ; 
- D 1 - I - 0x0139D2 04:B9C2: 81        .byte $81   ; 
- D 1 - I - 0x0139D3 04:B9C3: C2        .byte $C2   ; 
- D 1 - I - 0x0139D4 04:B9C4: C1        .byte $C1   ; 
- D 1 - I - 0x0139D5 04:B9C5: C1        .byte $C1   ; 
- D 1 - I - 0x0139D6 04:B9C6: 91        .byte $91   ; 
- D 1 - I - 0x0139D7 04:B9C7: 91        .byte $91   ; 
- D 1 - I - 0x0139D8 04:B9C8: 81        .byte $81   ; 
- D 1 - I - 0x0139D9 04:B9C9: 71        .byte $71   ; 
- D 1 - I - 0x0139DA 04:B9CA: C2        .byte $C2   ; 
- D 1 - I - 0x0139DB 04:B9CB: C1        .byte $C1   ; 
- D 1 - I - 0x0139DC 04:B9CC: C1        .byte $C1   ; 
- D 1 - I - 0x0139DD 04:B9CD: B2        .byte $B2   ; 
- D 1 - I - 0x0139DE 04:B9CE: 81        .byte $81   ; 
- D 1 - I - 0x0139DF 04:B9CF: 71        .byte $71   ; 
- D 1 - I - 0x0139E0 04:B9D0: E1        .byte con_se_cb_E1, $01   ; 
- D 1 - I - 0x0139E2 04:B9D2: FF        .byte con_se_cb_stop   ; 



_off000_B9D3_A8_01:
- D 1 - I - 0x0139E3 04:B9D3: E0        .byte con_se_cb_E0   ; 
- D 1 - I - 0x0139E4 04:B9D4: 01        .byte $01   ; 
- D 1 - I - 0x0139E5 04:B9D5: 75        .byte $75   ; 
- D 1 - I - 0x0139E6 04:B9D6: 81        .byte $81   ; 
- D 1 - I - 0x0139E7 04:B9D7: 14        .byte $14   ; 
- D 1 - I - 0x0139E8 04:B9D8: E7        .byte con_se_cb_E7, $57, $22   ; 
- D 1 - I - 0x0139EB 04:B9DB: E2        .byte con_se_cb_E2, $78   ; 
- D 1 - I - 0x0139ED 04:B9DD: D2        .byte $D2   ; 
- D 1 - I - 0x0139EE 04:B9DE: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0139EF 04:B9DF: 11        .byte $11   ; 
- D 1 - I - 0x0139F0 04:B9E0: 21        .byte $21   ; 
- D 1 - I - 0x0139F1 04:B9E1: D0        .byte $D0   ; 
- D 1 - I - 0x0139F2 04:B9E2: E1        .byte con_se_cb_E1, $07   ; 
- D 1 - I - 0x0139F4 04:B9E4: E6        .byte con_se_cb_E6, $31   ; 
- D 1 - I - 0x0139F6 04:B9E6: FB        .byte con_se_cb_FB   ; 
- D 1 - I - 0x0139F7 04:B9E7: 33        .byte $33   ; 
- D 1 - I - 0x0139F8 04:B9E8: 01        .byte $01   ; 
- D 1 - I - 0x0139F9 04:B9E9: D4        .byte $D4   ; 
- D 1 - I - 0x0139FA 04:B9EA: 32        .byte $32   ; 
- D 1 - I - 0x0139FB 04:B9EB: D0        .byte $D0   ; 
- D 1 - I - 0x0139FC 04:B9EC: 68        .byte $68   ; 
- D 1 - I - 0x0139FD 04:B9ED: D4        .byte $D4   ; 
- D 1 - I - 0x0139FE 04:B9EE: 62        .byte $62   ; 
- D 1 - I - 0x0139FF 04:B9EF: D0        .byte $D0   ; 
- D 1 - I - 0x013A00 04:B9F0: 83        .byte $83   ; 
- D 1 - I - 0x013A01 04:B9F1: 01        .byte $01   ; 
- D 1 - I - 0x013A02 04:B9F2: D4        .byte $D4   ; 
- D 1 - I - 0x013A03 04:B9F3: 82        .byte $82   ; 
- D 1 - I - 0x013A04 04:B9F4: E7        .byte con_se_cb_E7, $00   ; 
- D 1 - I - 0x013A06 04:B9F6: D0        .byte $D0   ; 
- D 1 - I - 0x013A07 04:B9F7: A8        .byte $A8   ; 
- D 1 - I - 0x013A08 04:B9F8: D4        .byte $D4   ; 
- D 1 - I - 0x013A09 04:B9F9: A2        .byte $A2   ; 
- D 1 - I - 0x013A0A 04:B9FA: E7        .byte con_se_cb_E7, $57, $22   ; 
- D 1 - I - 0x013A0D 04:B9FD: D0        .byte $D0   ; 
- D 1 - I - 0x013A0E 04:B9FE: FE        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x013A0F 04:B9FF: 02        .byte $02   ; 
- D 1 - I - 0x013A10 04:BA00: 34        .byte $34   ; 
- D 1 - I - 0x013A11 04:BA01: E1        .byte con_se_cb_E1, $01   ; 
- D 1 - I - 0x013A13 04:BA03: 01        .byte $01   ; 
- D 1 - I - 0x013A14 04:BA04: D4        .byte $D4   ; 
- D 1 - I - 0x013A15 04:BA05: 30        .byte $30   ; 
- D 1 - I - 0x013A16 04:BA06: E5        .byte con_se_cb_E5, $00   ; 
- D 1 - I - 0x013A18 04:BA08: E6        .byte con_se_cb_E6, $00   ; 
- D 1 - I - 0x013A1A 04:BA0A: D2        .byte $D2   ; 
- D 1 - I - 0x013A1B 04:BA0B: 81        .byte $81   ; 
- D 1 - I - 0x013A1C 04:BA0C: 91        .byte $91   ; 
- D 1 - I - 0x013A1D 04:BA0D: D1        .byte $D1   ; 
- D 1 - I - 0x013A1E 04:BA0E: E4        .byte con_se_cb_E4, $80   ; 
- D 1 - I - 0x013A20 04:BA10: A2        .byte $A2   ; 
- D 1 - I - 0x013A21 04:BA11: E4        .byte con_se_cb_E4, $81   ; 
- D 1 - I - 0x013A23 04:BA13: E5        .byte con_se_cb_E5, $14   ; 
- D 1 - I - 0x013A25 04:BA15: D0        .byte $D0   ; 
- D 1 - I - 0x013A26 04:BA16: FD        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x013A27 04:BA17: AA BB     .word sub_FD_BBAA
- D 1 - I - 0x013A29 04:BA19: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x013A2A 04:BA1A: 30        .byte $30   ; 
- D 1 - I - 0x013A2B 04:BA1B: E0        .byte con_se_cb_E0   ; 
- D 1 - I - 0x013A2C 04:BA1C: 07        .byte $07   ; 
- D 1 - I - 0x013A2D 04:BA1D: B8        .byte $B8   ; 
- D 1 - I - 0x013A2E 04:BA1E: 83        .byte $83   ; 
- D 1 - I - 0x013A2F 04:BA1F: 18        .byte $18   ; 
- D 1 - I - 0x013A30 04:BA20: D0        .byte $D0   ; 
- D 1 - I - 0x013A31 04:BA21: E7        .byte con_se_cb_E7, $00   ; 
- D 1 - I - 0x013A33 04:BA23: E6        .byte con_se_cb_E6, $00   ; 
- D 1 - I - 0x013A35 04:BA25: FD        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x013A36 04:BA26: E2 BB     .word sub_FD_BBE2
- D 1 - I - 0x013A38 04:BA28: FD        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x013A39 04:BA29: B9 BB     .word sub_FD_BBB9
- D 1 - I - 0x013A3B 04:BA2B: 61        .byte $61   ; 
- D 1 - I - 0x013A3C 04:BA2C: 81        .byte $81   ; 
- D 1 - I - 0x013A3D 04:BA2D: E7        .byte con_se_cb_E7, $57, $82   ; 
- D 1 - I - 0x013A40 04:BA30: 60        .byte $60   ; 
- D 1 - I - 0x013A41 04:BA31: 01        .byte $01   ; 
- D 1 - I - 0x013A42 04:BA32: E4        .byte con_se_cb_E4, $84   ; 
- D 1 - I - 0x013A44 04:BA34: E5        .byte con_se_cb_E5, $28   ; 
- D 1 - I - 0x013A46 04:BA36: EA        .byte con_se_cb_EA, $03   ; 
- D 1 - I - 0x013A48 04:BA38: D1        .byte $D1   ; 
- D 1 - I - 0x013A49 04:BA39: 61        .byte $61   ; 
- D 1 - I - 0x013A4A 04:BA3A: 81        .byte $81   ; 
- D 1 - I - 0x013A4B 04:BA3B: A1        .byte $A1   ; 
- D 1 - I - 0x013A4C 04:BA3C: D2        .byte $D2   ; 
- D 1 - I - 0x013A4D 04:BA3D: 61        .byte $61   ; 
- D 1 - I - 0x013A4E 04:BA3E: 81        .byte $81   ; 
- D 1 - I - 0x013A4F 04:BA3F: A1        .byte $A1   ; 
- D 1 - I - 0x013A50 04:BA40: D3        .byte $D3   ; 
- D 1 - I - 0x013A51 04:BA41: 61        .byte $61   ; 
- D 1 - I - 0x013A52 04:BA42: 81        .byte $81   ; 
- D 1 - I - 0x013A53 04:BA43: A1        .byte $A1   ; 
- D 1 - I - 0x013A54 04:BA44: D4        .byte $D4   ; 
- D 1 - I - 0x013A55 04:BA45: 61        .byte $61   ; 
- D 1 - I - 0x013A56 04:BA46: 81        .byte $81   ; 
- D 1 - I - 0x013A57 04:BA47: A1        .byte $A1   ; 
- D 1 - I - 0x013A58 04:BA48: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x013A59 04:BA49: 61        .byte $61   ; 
- D 1 - I - 0x013A5A 04:BA4A: 81        .byte $81   ; 
- D 1 - I - 0x013A5B 04:BA4B: A1        .byte $A1   ; 
- D 1 - I - 0x013A5C 04:BA4C: D0        .byte $D0   ; 
- D 1 - I - 0x013A5D 04:BA4D: EA        .byte con_se_cb_EA, $00   ; 
- D 1 - I - 0x013A5F 04:BA4F: E0        .byte con_se_cb_E0   ; 
- D 1 - I - 0x013A60 04:BA50: 07        .byte $07   ; 
- D 1 - I - 0x013A61 04:BA51: B6        .byte $B6   ; 
- D 1 - I - 0x013A62 04:BA52: 83        .byte $83   ; 
- D 1 - I - 0x013A63 04:BA53: 16        .byte $16   ; 
- D 1 - I - 0x013A64 04:BA54: E2        .byte con_se_cb_E2, $F8   ; 
- D 1 - I - 0x013A66 04:BA56: FD        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x013A67 04:BA57: 82 BB     .word sub_FD_BB82
- D 1 - I - 0x013A69 04:BA59: E0        .byte con_se_cb_E0   ; 
- D 1 - I - 0x013A6A 04:BA5A: 07        .byte $07   ; 
- D 1 - I - 0x013A6B 04:BA5B: F6        .byte $F6   ; 
- D 1 - I - 0x013A6C 04:BA5C: 83        .byte $83   ; 
- D 1 - I - 0x013A6D 04:BA5D: 16        .byte $16   ; 
- D 1 - I - 0x013A6E 04:BA5E: D0        .byte $D0   ; 
- D 1 - I - 0x013A6F 04:BA5F: E7        .byte con_se_cb_E7, $00   ; 
- D 1 - I - 0x013A71 04:BA61: E6        .byte con_se_cb_E6, $00   ; 
- D 1 - I - 0x013A73 04:BA63: E2        .byte con_se_cb_E2, $B8   ; 
- D 1 - I - 0x013A75 04:BA65: FD        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x013A76 04:BA66: B9 BB     .word sub_FD_BBB9
- D 1 - I - 0x013A78 04:BA68: 61        .byte $61   ; 
- D 1 - I - 0x013A79 04:BA69: 81        .byte $81   ; 
- D 1 - I - 0x013A7A 04:BA6A: E7        .byte con_se_cb_E7, $57, $82   ; 
- D 1 - I - 0x013A7D 04:BA6D: AE        .byte $AE   ; 
- D 1 - I - 0x013A7E 04:BA6E: D3        .byte $D3   ; 
- D 1 - I - 0x013A7F 04:BA6F: E1        .byte con_se_cb_E1, $01   ; 
- D 1 - I - 0x013A81 04:BA71: E5        .byte con_se_cb_E5, $00   ; 
- D 1 - I - 0x013A83 04:BA73: A1        .byte $A1   ; 
- D 1 - I - 0x013A84 04:BA74: B1        .byte $B1   ; 
- D 1 - I - 0x013A85 04:BA75: C1        .byte $C1   ; 
- D 1 - I - 0x013A86 04:BA76: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x013A87 04:BA77: 11        .byte $11   ; 
- D 1 - I - 0x013A88 04:BA78: 21        .byte $21   ; 
- D 1 - I - 0x013A89 04:BA79: 31        .byte $31   ; 
- D 1 - I - 0x013A8A 04:BA7A: 41        .byte $41   ; 
- D 1 - I - 0x013A8B 04:BA7B: 51        .byte $51   ; 
- D 1 - I - 0x013A8C 04:BA7C: 61        .byte $61   ; 
- D 1 - I - 0x013A8D 04:BA7D: 71        .byte $71   ; 
- D 1 - I - 0x013A8E 04:BA7E: 81        .byte $81   ; 
- D 1 - I - 0x013A8F 04:BA7F: 91        .byte $91   ; 
- D 1 - I - 0x013A90 04:BA80: D1        .byte $D1   ; 
- D 1 - I - 0x013A91 04:BA81: A2        .byte $A2   ; 
- D 1 - I - 0x013A92 04:BA82: E1        .byte con_se_cb_E1, $07   ; 
- D 1 - I - 0x013A94 04:BA84: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x013A95 04:BA85: A0        .byte $A0   ; 
- D 1 - I - 0x013A96 04:BA86: E0        .byte con_se_cb_E0   ; 
- D 1 - I - 0x013A97 04:BA87: 07        .byte $07   ; 
- D 1 - I - 0x013A98 04:BA88: F6        .byte $F6   ; 
- D 1 - I - 0x013A99 04:BA89: 83        .byte $83   ; 
- D 1 - I - 0x013A9A 04:BA8A: 16        .byte $16   ; 
- D 1 - I - 0x013A9B 04:BA8B: E2        .byte con_se_cb_E2, $B8   ; 
- D 1 - I - 0x013A9D 04:BA8D: FD        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x013A9E 04:BA8E: 82 BB     .word sub_FD_BB82
- D 1 - I - 0x013AA0 04:BA90: E0        .byte con_se_cb_E0   ; 
- D 1 - I - 0x013AA1 04:BA91: 07        .byte $07   ; 
- D 1 - I - 0x013AA2 04:BA92: F6        .byte $F6   ; 
- D 1 - I - 0x013AA3 04:BA93: 83        .byte $83   ; 
- D 1 - I - 0x013AA4 04:BA94: 14        .byte $14   ; 
- D 1 - I - 0x013AA5 04:BA95: D0        .byte $D0   ; 
- D 1 - I - 0x013AA6 04:BA96: EA        .byte con_se_cb_EA, $04   ; 
- D 1 - I - 0x013AA8 04:BA98: E7        .byte con_se_cb_E7, $57, $31   ; 
- D 1 - I - 0x013AAB 04:BA9B: E2        .byte con_se_cb_E2, $B8   ; 
- D 1 - I - 0x013AAD 04:BA9D: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x013AAE 04:BA9E: A1        .byte $A1   ; 
- D 1 - I - 0x013AAF 04:BA9F: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x013AB0 04:BAA0: 51        .byte $51   ; 
- D 1 - I - 0x013AB1 04:BAA1: A1        .byte $A1   ; 
- D 1 - I - 0x013AB2 04:BAA2: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x013AB3 04:BAA3: 31        .byte $31   ; 
- D 1 - I - 0x013AB4 04:BAA4: 11        .byte $11   ; 
- D 1 - I - 0x013AB5 04:BAA5: 31        .byte $31   ; 
- D 1 - I - 0x013AB6 04:BAA6: 11        .byte $11   ; 
- D 1 - I - 0x013AB7 04:BAA7: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x013AB8 04:BAA8: C1        .byte $C1   ; 
- D 1 - I - 0x013AB9 04:BAA9: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x013ABA 04:BAAA: C1        .byte $C1   ; 
- D 1 - I - 0x013ABB 04:BAAB: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x013ABC 04:BAAC: 81        .byte $81   ; 
- D 1 - I - 0x013ABD 04:BAAD: C1        .byte $C1   ; 
- D 1 - I - 0x013ABE 04:BAAE: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x013ABF 04:BAAF: 51        .byte $51   ; 
- D 1 - I - 0x013AC0 04:BAB0: 31        .byte $31   ; 
- D 1 - I - 0x013AC1 04:BAB1: 51        .byte $51   ; 
- D 1 - I - 0x013AC2 04:BAB2: 31        .byte $31   ; 
- D 1 - I - 0x013AC3 04:BAB3: 11        .byte $11   ; 
- D 1 - I - 0x013AC4 04:BAB4: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x013AC5 04:BAB5: 11        .byte $11   ; 
- D 1 - I - 0x013AC6 04:BAB6: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x013AC7 04:BAB7: A1        .byte $A1   ; 
- D 1 - I - 0x013AC8 04:BAB8: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x013AC9 04:BAB9: 61        .byte $61   ; 
- D 1 - I - 0x013ACA 04:BABA: 51        .byte $51   ; 
- D 1 - I - 0x013ACB 04:BABB: 31        .byte $31   ; 
- D 1 - I - 0x013ACC 04:BABC: 51        .byte $51   ; 
- D 1 - I - 0x013ACD 04:BABD: 31        .byte $31   ; 
- D 1 - I - 0x013ACE 04:BABE: 11        .byte $11   ; 
- D 1 - I - 0x013ACF 04:BABF: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x013AD0 04:BAC0: 31        .byte $31   ; 
- D 1 - I - 0x013AD1 04:BAC1: C1        .byte $C1   ; 
- D 1 - I - 0x013AD2 04:BAC2: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x013AD3 04:BAC3: 81        .byte $81   ; 
- D 1 - I - 0x013AD4 04:BAC4: 61        .byte $61   ; 
- D 1 - I - 0x013AD5 04:BAC5: 51        .byte $51   ; 
- D 1 - I - 0x013AD6 04:BAC6: 61        .byte $61   ; 
- D 1 - I - 0x013AD7 04:BAC7: 51        .byte $51   ; 
- D 1 - I - 0x013AD8 04:BAC8: 31        .byte $31   ; 
- D 1 - I - 0x013AD9 04:BAC9: E5        .byte con_se_cb_E5, $16   ; 
- D 1 - I - 0x013ADB 04:BACB: EA        .byte con_se_cb_EA, $01   ; 
- D 1 - I - 0x013ADD 04:BACD: FB        .byte con_se_cb_FB   ; 
- D 1 - I - 0x013ADE 04:BACE: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x013ADF 04:BACF: 31        .byte $31   ; 
- D 1 - I - 0x013AE0 04:BAD0: 51        .byte $51   ; 
- D 1 - I - 0x013AE1 04:BAD1: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x013AE2 04:BAD2: 51        .byte $51   ; 
- D 1 - I - 0x013AE3 04:BAD3: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x013AE4 04:BAD4: 31        .byte $31   ; 
- D 1 - I - 0x013AE5 04:BAD5: 51        .byte $51   ; 
- D 1 - I - 0x013AE6 04:BAD6: C1        .byte $C1   ; 
- D 1 - I - 0x013AE7 04:BAD7: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x013AE8 04:BAD8: C1        .byte $C1   ; 
- D 1 - I - 0x013AE9 04:BAD9: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x013AEA 04:BADA: 51        .byte $51   ; 
- D 1 - I - 0x013AEB 04:BADB: FE        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x013AEC 04:BADC: 02        .byte $02   ; 
- D 1 - I - 0x013AED 04:BADD: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x013AEE 04:BADE: 31        .byte $31   ; 
- D 1 - I - 0x013AEF 04:BADF: 51        .byte $51   ; 
- D 1 - I - 0x013AF0 04:BAE0: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x013AF1 04:BAE1: C1        .byte $C1   ; 
- D 1 - I - 0x013AF2 04:BAE2: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x013AF3 04:BAE3: 51        .byte $51   ; 
- D 1 - I - 0x013AF4 04:BAE4: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x013AF5 04:BAE5: A1        .byte $A1   ; 
- D 1 - I - 0x013AF6 04:BAE6: C1        .byte $C1   ; 
- D 1 - I - 0x013AF7 04:BAE7: 51        .byte $51   ; 
- D 1 - I - 0x013AF8 04:BAE8: C1        .byte $C1   ; 
- D 1 - I - 0x013AF9 04:BAE9: 51        .byte $51   ; 
- D 1 - I - 0x013AFA 04:BAEA: C1        .byte $C1   ; 
- D 1 - I - 0x013AFB 04:BAEB: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x013AFC 04:BAEC: 51        .byte $51   ; 
- D 1 - I - 0x013AFD 04:BAED: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x013AFE 04:BAEE: 11        .byte $11   ; 
- D 1 - I - 0x013AFF 04:BAEF: A1        .byte $A1   ; 
- D 1 - I - 0x013B00 04:BAF0: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x013B01 04:BAF1: 31        .byte $31   ; 
- D 1 - I - 0x013B02 04:BAF2: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x013B03 04:BAF3: 31        .byte $31   ; 
- D 1 - I - 0x013B04 04:BAF4: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x013B05 04:BAF5: A1        .byte $A1   ; 
loc_FE_BAF6:
- D 1 - I - 0x013B06 04:BAF6: D0        .byte $D0   ; 
- D 1 - I - 0x013B07 04:BAF7: EA        .byte con_se_cb_EA, $00   ; 
- D 1 - I - 0x013B09 04:BAF9: E7        .byte con_se_cb_E7, $57, $34   ; 
- D 1 - I - 0x013B0C 04:BAFC: FD        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x013B0D 04:BAFD: CB BB     .word sub_FD_BBCB
- D 1 - I - 0x013B0F 04:BAFF: 80        .byte $80   ; 
- D 1 - I - 0x013B10 04:BB00: 31        .byte $31   ; 
- D 1 - I - 0x013B11 04:BB01: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x013B12 04:BB02: C1        .byte $C1   ; 
- D 1 - I - 0x013B13 04:BB03: A1        .byte $A1   ; 
- D 1 - I - 0x013B14 04:BB04: CB        .byte $CB   ; 
- D 1 - I - 0x013B15 04:BB05: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x013B16 04:BB06: 31        .byte $31   ; 
- D 1 - I - 0x013B17 04:BB07: 51        .byte $51   ; 
- D 1 - I - 0x013B18 04:BB08: C1        .byte $C1   ; 
- D 1 - I - 0x013B19 04:BB09: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x013B1A 04:BB0A: 31        .byte $31   ; 
- D 1 - I - 0x013B1B 04:BB0B: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x013B1C 04:BB0C: A1        .byte $A1   ; 
- D 1 - I - 0x013B1D 04:BB0D: CD        .byte $CD   ; 
- D 1 - I - 0x013B1E 04:BB0E: FD        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x013B1F 04:BB0F: CB BB     .word sub_FD_BBCB
- D 1 - I - 0x013B21 04:BB11: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x013B22 04:BB12: 56        .byte $56   ; 
- D 1 - I - 0x013B23 04:BB13: 81        .byte $81   ; 
- D 1 - I - 0x013B24 04:BB14: 51        .byte $51   ; 
- D 1 - I - 0x013B25 04:BB15: E1        .byte con_se_cb_E1, $0E   ; 
- D 1 - I - 0x013B27 04:BB17: A3        .byte $A3   ; 
- D 1 - I - 0x013B28 04:BB18: E1        .byte con_se_cb_E1, $01   ; 
- D 1 - I - 0x013B2A 04:BB1A: 01        .byte $01   ; 
- D 1 - I - 0x013B2B 04:BB1B: D4        .byte $D4   ; 
- D 1 - I - 0x013B2C 04:BB1C: AC        .byte $AC   ; 
- D 1 - I - 0x013B2D 04:BB1D: D2        .byte $D2   ; 
- D 1 - I - 0x013B2E 04:BB1E: B1        .byte $B1   ; 
- D 1 - I - 0x013B2F 04:BB1F: D0        .byte $D0   ; 
- D 1 - I - 0x013B30 04:BB20: E1        .byte con_se_cb_E1, $07   ; 
- D 1 - I - 0x013B32 04:BB22: E7        .byte con_se_cb_E7, $57, $32   ; 
- D 1 - I - 0x013B35 04:BB25: CD        .byte $CD   ; 
- D 1 - I - 0x013B36 04:BB26: A1        .byte $A1   ; 
- D 1 - I - 0x013B37 04:BB27: 81        .byte $81   ; 
- D 1 - I - 0x013B38 04:BB28: 71        .byte $71   ; 
- D 1 - I - 0x013B39 04:BB29: 50        .byte $50   ; 
- D 1 - I - 0x013B3A 04:BB2A: E0        .byte con_se_cb_E0   ; 
- D 1 - I - 0x013B3B 04:BB2B: 07        .byte $07   ; 
- D 1 - I - 0x013B3C 04:BB2C: F6        .byte $F6   ; 
- D 1 - I - 0x013B3D 04:BB2D: 83        .byte $83   ; 
- D 1 - I - 0x013B3E 04:BB2E: 16        .byte $16   ; 
- D 1 - I - 0x013B3F 04:BB2F: D0        .byte $D0   ; 
- D 1 - I - 0x013B40 04:BB30: EA        .byte con_se_cb_EA, $00   ; 
- D 1 - I - 0x013B42 04:BB32: E7        .byte con_se_cb_E7, $57, $43   ; 
- D 1 - I - 0x013B45 04:BB35: E2        .byte con_se_cb_E2, $75   ; 
- D 1 - I - 0x013B47 04:BB37: FD        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x013B48 04:BB38: FB BB     .word sub_FD_BBFB
- D 1 - I - 0x013B4A 04:BB3A: E7        .byte con_se_cb_E7, $00   ; 
- D 1 - I - 0x013B4C 04:BB3C: 31        .byte $31   ; 
- D 1 - I - 0x013B4D 04:BB3D: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x013B4E 04:BB3E: A1        .byte $A1   ; 
- D 1 - I - 0x013B4F 04:BB3F: A1        .byte $A1   ; 
- D 1 - I - 0x013B50 04:BB40: E1        .byte con_se_cb_E1, $01   ; 
- D 1 - I - 0x013B52 04:BB42: CA        .byte $CA   ; 
- D 1 - I - 0x013B53 04:BB43: 01        .byte $01   ; 
- D 1 - I - 0x013B54 04:BB44: D5        .byte $D5   ; 
- D 1 - I - 0x013B55 04:BB45: CA        .byte $CA   ; 
- D 1 - I - 0x013B56 04:BB46: D0        .byte $D0   ; 
- D 1 - I - 0x013B57 04:BB47: E1        .byte con_se_cb_E1, $07   ; 
- D 1 - I - 0x013B59 04:BB49: E7        .byte con_se_cb_E7, $57, $43   ; 
- D 1 - I - 0x013B5C 04:BB4C: CC        .byte $CC   ; 
- D 1 - I - 0x013B5D 04:BB4D: FD        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x013B5E 04:BB4E: FB BB     .word sub_FD_BBFB
- D 1 - I - 0x013B60 04:BB50: 31        .byte $31   ; 
- D 1 - I - 0x013B61 04:BB51: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x013B62 04:BB52: A1        .byte $A1   ; 
- D 1 - I - 0x013B63 04:BB53: A1        .byte $A1   ; 
- D 1 - I - 0x013B64 04:BB54: C1        .byte $C1   ; 
- D 1 - I - 0x013B65 04:BB55: D3        .byte $D3   ; 
- D 1 - I - 0x013B66 04:BB56: C1        .byte $C1   ; 
- D 1 - I - 0x013B67 04:BB57: D0        .byte $D0   ; 
- D 1 - I - 0x013B68 04:BB58: CD        .byte $CD   ; 
- D 1 - I - 0x013B69 04:BB59: E2        .byte con_se_cb_E2, $F0   ; 
- D 1 - I - 0x013B6B 04:BB5B: E2        .byte con_se_cb_E2, $38   ; 
- D 1 - I - 0x013B6D 04:BB5D: E5        .byte con_se_cb_E5, $28   ; 
- D 1 - I - 0x013B6F 04:BB5F: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x013B70 04:BB60: 51        .byte $51   ; 
- D 1 - I - 0x013B71 04:BB61: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x013B72 04:BB62: A1        .byte $A1   ; 
- D 1 - I - 0x013B73 04:BB63: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x013B74 04:BB64: 52        .byte $52   ; 
- D 1 - I - 0x013B75 04:BB65: 51        .byte $51   ; 
- D 1 - I - 0x013B76 04:BB66: 51        .byte $51   ; 
- D 1 - I - 0x013B77 04:BB67: 71        .byte $71   ; 
- D 1 - I - 0x013B78 04:BB68: 83        .byte $83   ; 
- D 1 - I - 0x013B79 04:BB69: 72        .byte $72   ; 
- D 1 - I - 0x013B7A 04:BB6A: 52        .byte $52   ; 
- D 1 - I - 0x013B7B 04:BB6B: 32        .byte $32   ; 
- D 1 - I - 0x013B7C 04:BB6C: 51        .byte $51   ; 
- D 1 - I - 0x013B7D 04:BB6D: 11        .byte $11   ; 
- D 1 - I - 0x013B7E 04:BB6E: 51        .byte $51   ; 
- D 1 - I - 0x013B7F 04:BB6F: D3        .byte $D3   ; 
- D 1 - I - 0x013B80 04:BB70: 51        .byte $51   ; 
- D 1 - I - 0x013B81 04:BB71: D0        .byte $D0   ; 
- D 1 - I - 0x013B82 04:BB72: 51        .byte $51   ; 
- D 1 - I - 0x013B83 04:BB73: 71        .byte $71   ; 
- D 1 - I - 0x013B84 04:BB74: 81        .byte $81   ; 
- D 1 - I - 0x013B85 04:BB75: 72        .byte $72   ; 
- D 1 - I - 0x013B86 04:BB76: 31        .byte $31   ; 
- D 1 - I - 0x013B87 04:BB77: 71        .byte $71   ; 
- D 1 - I - 0x013B88 04:BB78: 81        .byte $81   ; 
- D 1 - I - 0x013B89 04:BB79: A1        .byte $A1   ; 
- D 1 - I - 0x013B8A 04:BB7A: 81        .byte $81   ; 
- D 1 - I - 0x013B8B 04:BB7B: A1        .byte $A1   ; 
- D 1 - I - 0x013B8C 04:BB7C: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x013B8D 04:BB7D: 31        .byte $31   ; 
- D 1 - I - 0x013B8E 04:BB7E: FE        .byte con_se_cb_jmp, $FF   ; 
- D 1 - I - 0x013B90 04:BB80: F6 BA     .word loc_FE_BAF6



sub_FD_BB82:
- D 1 - I - 0x013B92 04:BB82: D0        .byte $D0   ; 
- D 1 - I - 0x013B93 04:BB83: E7        .byte con_se_cb_E7, $57, $31   ; 
- D 1 - I - 0x013B96 04:BB86: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x013B97 04:BB87: 31        .byte $31   ; 
- D 1 - I - 0x013B98 04:BB88: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x013B99 04:BB89: A1        .byte $A1   ; 
- D 1 - I - 0x013B9A 04:BB8A: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x013B9B 04:BB8B: 31        .byte $31   ; 
- D 1 - I - 0x013B9C 04:BB8C: 67        .byte $67   ; 
- D 1 - I - 0x013B9D 04:BB8D: 01        .byte $01   ; 
- D 1 - I - 0x013B9E 04:BB8E: D4        .byte $D4   ; 
- D 1 - I - 0x013B9F 04:BB8F: 61        .byte $61   ; 
- D 1 - I - 0x013BA0 04:BB90: D0        .byte $D0   ; 
- D 1 - I - 0x013BA1 04:BB91: 33        .byte $33   ; 
- D 1 - I - 0x013BA2 04:BB92: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x013BA3 04:BB93: A1        .byte $A1   ; 
- D 1 - I - 0x013BA4 04:BB94: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x013BA5 04:BB95: 31        .byte $31   ; 
- D 1 - I - 0x013BA6 04:BB96: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x013BA7 04:BB97: A1        .byte $A1   ; 
- D 1 - I - 0x013BA8 04:BB98: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x013BA9 04:BB99: 31        .byte $31   ; 
- D 1 - I - 0x013BAA 04:BB9A: 87        .byte $87   ; 
- D 1 - I - 0x013BAB 04:BB9B: 01        .byte $01   ; 
- D 1 - I - 0x013BAC 04:BB9C: D4        .byte $D4   ; 
- D 1 - I - 0x013BAD 04:BB9D: 81        .byte $81   ; 
- D 1 - I - 0x013BAE 04:BB9E: 01        .byte $01   ; 
- D 1 - I - 0x013BAF 04:BB9F: D0        .byte $D0   ; 
- D 1 - I - 0x013BB0 04:BBA0: 62        .byte $62   ; 
- D 1 - I - 0x013BB1 04:BBA1: 81        .byte $81   ; 
- D 1 - I - 0x013BB2 04:BBA2: 62        .byte $62   ; 
- D 1 - I - 0x013BB3 04:BBA3: E7        .byte con_se_cb_E7, $57, $44   ; 
- D 1 - I - 0x013BB6 04:BBA6: E1        .byte con_se_cb_E1, $0E   ; 
- D 1 - I - 0x013BB8 04:BBA8: 3F        .byte $3F   ; 
- D 1 - I - 0x013BB9 04:BBA9: FF        .byte con_se_cb_stop   ; 



sub_FD_BBAA:
- D 1 - I - 0x013BBA 04:BBAA: E1        .byte con_se_cb_E1, $07   ; 
- D 1 - I - 0x013BBC 04:BBAC: A3        .byte $A3   ; 
- D 1 - I - 0x013BBD 04:BBAD: E6        .byte con_se_cb_E6, $31   ; 
- D 1 - I - 0x013BBF 04:BBAF: 82        .byte $82   ; 
- D 1 - I - 0x013BC0 04:BBB0: 62        .byte $62   ; 
- D 1 - I - 0x013BC1 04:BBB1: 52        .byte $52   ; 
- D 1 - I - 0x013BC2 04:BBB2: 34        .byte $34   ; 
- D 1 - I - 0x013BC3 04:BBB3: 52        .byte $52   ; 
- D 1 - I - 0x013BC4 04:BBB4: 2A        .byte $2A   ; 
- D 1 - I - 0x013BC5 04:BBB5: 36        .byte $36   ; 
- D 1 - I - 0x013BC6 04:BBB6: 86        .byte $86   ; 
- D 1 - I - 0x013BC7 04:BBB7: A4        .byte $A4   ; 
- D 1 - I - 0x013BC8 04:BBB8: FF        .byte con_se_cb_stop   ; 



sub_FD_BBB9:
- D 1 - I - 0x013BC9 04:BBB9: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x013BCA 04:BBBA: 31        .byte $31   ; 
- D 1 - I - 0x013BCB 04:BBBB: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x013BCC 04:BBBC: A1        .byte $A1   ; 
- D 1 - I - 0x013BCD 04:BBBD: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x013BCE 04:BBBE: 31        .byte $31   ; 
- D 1 - I - 0x013BCF 04:BBBF: 69        .byte $69   ; 
- D 1 - I - 0x013BD0 04:BBC0: 33        .byte $33   ; 
- D 1 - I - 0x013BD1 04:BBC1: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x013BD2 04:BBC2: A1        .byte $A1   ; 
- D 1 - I - 0x013BD3 04:BBC3: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x013BD4 04:BBC4: 31        .byte $31   ; 
- D 1 - I - 0x013BD5 04:BBC5: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x013BD6 04:BBC6: A1        .byte $A1   ; 
- D 1 - I - 0x013BD7 04:BBC7: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x013BD8 04:BBC8: 31        .byte $31   ; 
- D 1 - I - 0x013BD9 04:BBC9: 8B        .byte $8B   ; 
- D 1 - I - 0x013BDA 04:BBCA: FF        .byte con_se_cb_stop   ; 



sub_FD_BBCB:
- D 1 - I - 0x013BDB 04:BBCB: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x013BDC 04:BBCC: 31        .byte $31   ; 
- D 1 - I - 0x013BDD 04:BBCD: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x013BDE 04:BBCE: C1        .byte $C1   ; 
- D 1 - I - 0x013BDF 04:BBCF: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x013BE0 04:BBD0: 31        .byte $31   ; 
- D 1 - I - 0x013BE1 04:BBD1: E1        .byte con_se_cb_E1, $0E   ; 
- D 1 - I - 0x013BE3 04:BBD3: 55        .byte $55   ; 
- D 1 - I - 0x013BE4 04:BBD4: E1        .byte con_se_cb_E1, $01   ; 
- D 1 - I - 0x013BE6 04:BBD6: 01        .byte $01   ; 
- D 1 - I - 0x013BE7 04:BBD7: D5        .byte $D5   ; 
- D 1 - I - 0x013BE8 04:BBD8: 54        .byte $54   ; 
- D 1 - I - 0x013BE9 04:BBD9: D2        .byte $D2   ; 
- D 1 - I - 0x013BEA 04:BBDA: A1        .byte $A1   ; 
- D 1 - I - 0x013BEB 04:BBDB: B1        .byte $B1   ; 
- D 1 - I - 0x013BEC 04:BBDC: D0        .byte $D0   ; 
- D 1 - I - 0x013BED 04:BBDD: E1        .byte con_se_cb_E1, $07   ; 
- D 1 - I - 0x013BEF 04:BBDF: C1        .byte $C1   ; 
- D 1 - I - 0x013BF0 04:BBE0: A1        .byte $A1   ; 
- D 1 - I - 0x013BF1 04:BBE1: FF        .byte con_se_cb_stop   ; 



sub_FD_BBE2:
- D 1 - I - 0x013BF2 04:BBE2: E2        .byte con_se_cb_E2, $F1   ; 
- D 1 - I - 0x013BF4 04:BBE4: FB        .byte con_se_cb_FB   ; 
- D 1 - I - 0x013BF5 04:BBE5: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x013BF6 04:BBE6: 36        .byte $36   ; 
- D 1 - I - 0x013BF7 04:BBE7: 64        .byte $64   ; 
- D 1 - I - 0x013BF8 04:BBE8: 62        .byte $62   ; 
- D 1 - I - 0x013BF9 04:BBE9: 62        .byte $62   ; 
- D 1 - I - 0x013BFA 04:BBEA: 32        .byte $32   ; 
- D 1 - I - 0x013BFB 04:BBEB: 36        .byte $36   ; 
- D 1 - I - 0x013BFC 04:BBEC: 84        .byte $84   ; 
- D 1 - I - 0x013BFD 04:BBED: 82        .byte $82   ; 
- D 1 - I - 0x013BFE 04:BBEE: 62        .byte $62   ; 
- D 1 - I - 0x013BFF 04:BBEF: 32        .byte $32   ; 
- D 1 - I - 0x013C00 04:BBF0: FE        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x013C01 04:BBF1: 02        .byte $02   ; 
- D 1 - I - 0x013C02 04:BBF2: E3        .byte con_se_cb_E3, $06   ; 
- D 1 - I - 0x013C04 04:BBF4: E4        .byte con_se_cb_E4, $83   ; 
- D 1 - I - 0x013C06 04:BBF6: E5        .byte con_se_cb_E5, $16   ; 
- D 1 - I - 0x013C08 04:BBF8: E2        .byte con_se_cb_E2, $B8   ; 
- D 1 - I - 0x013C0A 04:BBFA: FF        .byte con_se_cb_stop   ; 



sub_FD_BBFB:
- D 1 - I - 0x013C0B 04:BBFB: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x013C0C 04:BBFC: 51        .byte $51   ; 
- D 1 - I - 0x013C0D 04:BBFD: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x013C0E 04:BBFE: C1        .byte $C1   ; 
- D 1 - I - 0x013C0F 04:BBFF: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x013C10 04:BC00: 51        .byte $51   ; 
- D 1 - I - 0x013C11 04:BC01: D5        .byte $D5   ; 
- D 1 - I - 0x013C12 04:BC02: 51        .byte $51   ; 
- D 1 - I - 0x013C13 04:BC03: D0        .byte $D0   ; 
- D 1 - I - 0x013C14 04:BC04: 5A        .byte $5A   ; 
- D 1 - I - 0x013C15 04:BC05: FF        .byte con_se_cb_stop   ; 



_off000_BC06_A8_00:
- D 1 - I - 0x013C16 04:BC06: E0        .byte con_se_cb_E0   ; 
- D 1 - I - 0x013C17 04:BC07: 01        .byte $01   ; 
- D 1 - I - 0x013C18 04:BC08: 74        .byte $74   ; 
- D 1 - I - 0x013C19 04:BC09: 81        .byte $81   ; 
- D 1 - I - 0x013C1A 04:BC0A: 14        .byte $14   ; 
- D 1 - I - 0x013C1B 04:BC0B: 02        .byte $02   ; 
- D 1 - I - 0x013C1C 04:BC0C: E1        .byte con_se_cb_E1, $07   ; 
- D 1 - I - 0x013C1E 04:BC0E: E9        .byte con_se_cb_E9, $00   ; 
- D 1 - I - 0x013C20 04:BC10: E2        .byte con_se_cb_E2, $78   ; 
- D 1 - I - 0x013C22 04:BC12: E7        .byte con_se_cb_E7, $57, $22   ; 
- D 1 - I - 0x013C25 04:BC15: FB        .byte con_se_cb_FB   ; 
- D 1 - I - 0x013C26 04:BC16: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x013C27 04:BC17: A3        .byte $A3   ; 
- D 1 - I - 0x013C28 04:BC18: 01        .byte $01   ; 
- D 1 - I - 0x013C29 04:BC19: D4        .byte $D4   ; 
- D 1 - I - 0x013C2A 04:BC1A: A2        .byte $A2   ; 
- D 1 - I - 0x013C2B 04:BC1B: D0        .byte $D0   ; 
- D 1 - I - 0x013C2C 04:BC1C: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x013C2D 04:BC1D: 38        .byte $38   ; 
- D 1 - I - 0x013C2E 04:BC1E: D4        .byte $D4   ; 
- D 1 - I - 0x013C2F 04:BC1F: 32        .byte $32   ; 
- D 1 - I - 0x013C30 04:BC20: D0        .byte $D0   ; 
- D 1 - I - 0x013C31 04:BC21: 33        .byte $33   ; 
- D 1 - I - 0x013C32 04:BC22: 01        .byte $01   ; 
- D 1 - I - 0x013C33 04:BC23: D4        .byte $D4   ; 
- D 1 - I - 0x013C34 04:BC24: 32        .byte $32   ; 
- D 1 - I - 0x013C35 04:BC25: D0        .byte $D0   ; 
- D 1 - I - 0x013C36 04:BC26: 28        .byte $28   ; 
- D 1 - I - 0x013C37 04:BC27: D4        .byte $D4   ; 
- D 1 - I - 0x013C38 04:BC28: 22        .byte $22   ; 
- D 1 - I - 0x013C39 04:BC29: D0        .byte $D0   ; 
- D 1 - I - 0x013C3A 04:BC2A: FE        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x013C3B 04:BC2B: 02        .byte $02   ; 
- D 1 - I - 0x013C3C 04:BC2C: E9        .byte con_se_cb_E9, $01   ; 
- D 1 - I - 0x013C3E 04:BC2E: E1        .byte con_se_cb_E1, $01   ; 
- D 1 - I - 0x013C40 04:BC30: E8        .byte con_se_cb_E8, $0C   ; 
- D 1 - I - 0x013C42 04:BC32: E2        .byte con_se_cb_E2, $B0   ; 
- D 1 - I - 0x013C44 04:BC34: E4        .byte con_se_cb_E4, $80   ; 
- D 1 - I - 0x013C46 04:BC36: E5        .byte con_se_cb_E5, $00   ; 
- D 1 - I - 0x013C48 04:BC38: 07        .byte $07   ; 
- D 1 - I - 0x013C49 04:BC39: D3        .byte $D3   ; 
- D 1 - I - 0x013C4A 04:BC3A: 30        .byte $30   ; 
- D 1 - I - 0x013C4B 04:BC3B: E1        .byte con_se_cb_E1, $02   ; 
- D 1 - I - 0x013C4D 04:BC3D: 01        .byte $01   ; 
- D 1 - I - 0x013C4E 04:BC3E: D4        .byte $D4   ; 
- D 1 - I - 0x013C4F 04:BC3F: 3D        .byte $3D   ; 
- D 1 - I - 0x013C50 04:BC40: D3        .byte $D3   ; 
- D 1 - I - 0x013C51 04:BC41: E1        .byte con_se_cb_E1, $01   ; 
- D 1 - I - 0x013C53 04:BC43: E5        .byte con_se_cb_E5, $00   ; 
- D 1 - I - 0x013C55 04:BC45: E6        .byte con_se_cb_E6, $00   ; 
- D 1 - I - 0x013C57 04:BC47: 51        .byte $51   ; 
- D 1 - I - 0x013C58 04:BC48: 61        .byte $61   ; 
- D 1 - I - 0x013C59 04:BC49: 81        .byte $81   ; 
- D 1 - I - 0x013C5A 04:BC4A: D3        .byte $D3   ; 
- D 1 - I - 0x013C5B 04:BC4B: E4        .byte con_se_cb_E4, $80   ; 
- D 1 - I - 0x013C5D 04:BC4D: A2        .byte $A2   ; 
- D 1 - I - 0x013C5E 04:BC4E: E4        .byte con_se_cb_E4, $81   ; 
- D 1 - I - 0x013C60 04:BC50: E5        .byte con_se_cb_E5, $14   ; 
- D 1 - I - 0x013C62 04:BC52: D2        .byte $D2   ; 
- D 1 - I - 0x013C63 04:BC53: FD        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x013C64 04:BC54: AA BB     .word sub_FD_BBAA
- D 1 - I - 0x013C66 04:BC56: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x013C67 04:BC57: 3F        .byte $3F   ; 
- D 1 - I - 0x013C68 04:BC58: E0        .byte con_se_cb_E0   ; 
- D 1 - I - 0x013C69 04:BC59: 07        .byte $07   ; 
- D 1 - I - 0x013C6A 04:BC5A: B8        .byte $B8   ; 
- D 1 - I - 0x013C6B 04:BC5B: 83        .byte $83   ; 
- D 1 - I - 0x013C6C 04:BC5C: 18        .byte $18   ; 
- D 1 - I - 0x013C6D 04:BC5D: D0        .byte $D0   ; 
- D 1 - I - 0x013C6E 04:BC5E: E7        .byte con_se_cb_E7, $00   ; 
- D 1 - I - 0x013C70 04:BC60: E6        .byte con_se_cb_E6, $00   ; 
- D 1 - I - 0x013C72 04:BC62: E9        .byte con_se_cb_E9, $01   ; 
- D 1 - I - 0x013C74 04:BC64: E8        .byte con_se_cb_E8, $8C   ; 
- D 1 - I - 0x013C76 04:BC66: FD        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x013C77 04:BC67: E2 BB     .word sub_FD_BBE2
- D 1 - I - 0x013C79 04:BC69: FD        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x013C7A 04:BC6A: B9 BB     .word sub_FD_BBB9
- D 1 - I - 0x013C7C 04:BC6C: E8        .byte con_se_cb_E8, $00   ; 
- D 1 - I - 0x013C7E 04:BC6E: 31        .byte $31   ; 
- D 1 - I - 0x013C7F 04:BC6F: 51        .byte $51   ; 
- D 1 - I - 0x013C80 04:BC70: E7        .byte con_se_cb_E7, $57, $82   ; 
- D 1 - I - 0x013C83 04:BC73: E1        .byte con_se_cb_E1, $0E   ; 
- D 1 - I - 0x013C85 04:BC75: A0        .byte $A0   ; 
- D 1 - I - 0x013C86 04:BC76: E0        .byte con_se_cb_E0   ; 
- D 1 - I - 0x013C87 04:BC77: 07        .byte $07   ; 
- D 1 - I - 0x013C88 04:BC78: B6        .byte $B6   ; 
- D 1 - I - 0x013C89 04:BC79: 83        .byte $83   ; 
- D 1 - I - 0x013C8A 04:BC7A: 16        .byte $16   ; 
- D 1 - I - 0x013C8B 04:BC7B: E2        .byte con_se_cb_E2, $F8   ; 
- D 1 - I - 0x013C8D 04:BC7D: D0        .byte $D0   ; 
- D 1 - I - 0x013C8E 04:BC7E: FD        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x013C8F 04:BC7F: 3A BE     .word sub_FD_BE3A
- D 1 - I - 0x013C91 04:BC81: E9        .byte con_se_cb_E9, $01   ; 
- D 1 - I - 0x013C93 04:BC83: E4        .byte con_se_cb_E4, $82   ; 
- D 1 - I - 0x013C95 04:BC85: E5        .byte con_se_cb_E5, $15   ; 
- D 1 - I - 0x013C97 04:BC87: E1        .byte con_se_cb_E1, $07   ; 
- D 1 - I - 0x013C99 04:BC89: 01        .byte $01   ; 
- D 1 - I - 0x013C9A 04:BC8A: D2        .byte $D2   ; 
- D 1 - I - 0x013C9B 04:BC8B: E9        .byte con_se_cb_E9, $01   ; 
- D 1 - I - 0x013C9D 04:BC8D: EA        .byte con_se_cb_EA, $03   ; 
- D 1 - I - 0x013C9F 04:BC8F: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x013CA0 04:BC90: A1        .byte $A1   ; 
- D 1 - I - 0x013CA1 04:BC91: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x013CA2 04:BC92: 11        .byte $11   ; 
- D 1 - I - 0x013CA3 04:BC93: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x013CA4 04:BC94: C1        .byte $C1   ; 
- D 1 - I - 0x013CA5 04:BC95: 81        .byte $81   ; 
- D 1 - I - 0x013CA6 04:BC96: 31        .byte $31   ; 
- D 1 - I - 0x013CA7 04:BC97: 11        .byte $11   ; 
- D 1 - I - 0x013CA8 04:BC98: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x013CA9 04:BC99: C1        .byte $C1   ; 
- D 1 - I - 0x013CAA 04:BC9A: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x013CAB 04:BC9B: 31        .byte $31   ; 
- D 1 - I - 0x013CAC 04:BC9C: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x013CAD 04:BC9D: A1        .byte $A1   ; 
- D 1 - I - 0x013CAE 04:BC9E: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x013CAF 04:BC9F: 11        .byte $11   ; 
- D 1 - I - 0x013CB0 04:BCA0: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x013CB1 04:BCA1: C1        .byte $C1   ; 
- D 1 - I - 0x013CB2 04:BCA2: 81        .byte $81   ; 
- D 1 - I - 0x013CB3 04:BCA3: 31        .byte $31   ; 
- D 1 - I - 0x013CB4 04:BCA4: 11        .byte $11   ; 
- D 1 - I - 0x013CB5 04:BCA5: F0        .byte con_se_cb_F0   ; 
- D 1 - I - 0x013CB6 04:BCA6: C1        .byte $C1   ; 
- D 1 - I - 0x013CB7 04:BCA7: EA        .byte con_se_cb_EA, $00   ; 
- D 1 - I - 0x013CB9 04:BCA9: E0        .byte con_se_cb_E0   ; 
- D 1 - I - 0x013CBA 04:BCAA: 07        .byte $07   ; 
- D 1 - I - 0x013CBB 04:BCAB: F6        .byte $F6   ; 
- D 1 - I - 0x013CBC 04:BCAC: 83        .byte $83   ; 
- D 1 - I - 0x013CBD 04:BCAD: 16        .byte $16   ; 
- D 1 - I - 0x013CBE 04:BCAE: D0        .byte $D0   ; 
- D 1 - I - 0x013CBF 04:BCAF: E7        .byte con_se_cb_E7, $00   ; 
- D 1 - I - 0x013CC1 04:BCB1: E6        .byte con_se_cb_E6, $00   ; 
- D 1 - I - 0x013CC3 04:BCB3: E9        .byte con_se_cb_E9, $01   ; 
- D 1 - I - 0x013CC5 04:BCB5: E8        .byte con_se_cb_E8, $8C   ; 
- D 1 - I - 0x013CC7 04:BCB7: E2        .byte con_se_cb_E2, $B8   ; 
- D 1 - I - 0x013CC9 04:BCB9: FD        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x013CCA 04:BCBA: B9 BB     .word sub_FD_BBB9
- D 1 - I - 0x013CCC 04:BCBC: E8        .byte con_se_cb_E8, $00   ; 
- D 1 - I - 0x013CCE 04:BCBE: 31        .byte $31   ; 
- D 1 - I - 0x013CCF 04:BCBF: 51        .byte $51   ; 
- D 1 - I - 0x013CD0 04:BCC0: E7        .byte con_se_cb_E7, $57, $82   ; 
- D 1 - I - 0x013CD3 04:BCC3: 6E        .byte $6E   ; 
- D 1 - I - 0x013CD4 04:BCC4: D5        .byte $D5   ; 
- D 1 - I - 0x013CD5 04:BCC5: E1        .byte con_se_cb_E1, $01   ; 
- D 1 - I - 0x013CD7 04:BCC7: E5        .byte con_se_cb_E5, $00   ; 
- D 1 - I - 0x013CD9 04:BCC9: 02        .byte $02   ; 
- D 1 - I - 0x013CDA 04:BCCA: A1        .byte $A1   ; 
- D 1 - I - 0x013CDB 04:BCCB: B1        .byte $B1   ; 
- D 1 - I - 0x013CDC 04:BCCC: C1        .byte $C1   ; 
- D 1 - I - 0x013CDD 04:BCCD: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x013CDE 04:BCCE: 11        .byte $11   ; 
- D 1 - I - 0x013CDF 04:BCCF: 21        .byte $21   ; 
- D 1 - I - 0x013CE0 04:BCD0: 31        .byte $31   ; 
- D 1 - I - 0x013CE1 04:BCD1: 41        .byte $41   ; 
- D 1 - I - 0x013CE2 04:BCD2: 51        .byte $51   ; 
- D 1 - I - 0x013CE3 04:BCD3: 61        .byte $61   ; 
- D 1 - I - 0x013CE4 04:BCD4: 71        .byte $71   ; 
- D 1 - I - 0x013CE5 04:BCD5: 81        .byte $81   ; 
- D 1 - I - 0x013CE6 04:BCD6: 91        .byte $91   ; 
- D 1 - I - 0x013CE7 04:BCD7: D1        .byte $D1   ; 
- D 1 - I - 0x013CE8 04:BCD8: E1        .byte con_se_cb_E1, $07   ; 
- D 1 - I - 0x013CEA 04:BCDA: E7        .byte con_se_cb_E7, $57, $82   ; 
- D 1 - I - 0x013CED 04:BCDD: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x013CEE 04:BCDE: A0        .byte $A0   ; 
- D 1 - I - 0x013CEF 04:BCDF: E0        .byte con_se_cb_E0   ; 
- D 1 - I - 0x013CF0 04:BCE0: 07        .byte $07   ; 
- D 1 - I - 0x013CF1 04:BCE1: F6        .byte $F6   ; 
- D 1 - I - 0x013CF2 04:BCE2: 83        .byte $83   ; 
- D 1 - I - 0x013CF3 04:BCE3: 16        .byte $16   ; 
- D 1 - I - 0x013CF4 04:BCE4: E2        .byte con_se_cb_E2, $B8   ; 
- D 1 - I - 0x013CF6 04:BCE6: D0        .byte $D0   ; 
- D 1 - I - 0x013CF7 04:BCE7: FD        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x013CF8 04:BCE8: 3A BE     .word sub_FD_BE3A
- D 1 - I - 0x013CFA 04:BCEA: E1        .byte con_se_cb_E1, $07   ; 
- D 1 - I - 0x013CFC 04:BCEC: D1        .byte $D1   ; 
- D 1 - I - 0x013CFD 04:BCED: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x013CFE 04:BCEE: 01        .byte $01   ; 
- D 1 - I - 0x013CFF 04:BCEF: 11        .byte $11   ; 
- D 1 - I - 0x013D00 04:BCF0: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x013D01 04:BCF1: A1        .byte $A1   ; 
- D 1 - I - 0x013D02 04:BCF2: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x013D03 04:BCF3: 12        .byte $12   ; 
- D 1 - I - 0x013D04 04:BCF4: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x013D05 04:BCF5: C1        .byte $C1   ; 
- D 1 - I - 0x013D06 04:BCF6: 81        .byte $81   ; 
- D 1 - I - 0x013D07 04:BCF7: 32        .byte $32   ; 
- D 1 - I - 0x013D08 04:BCF8: 11        .byte $11   ; 
- D 1 - I - 0x013D09 04:BCF9: F0        .byte con_se_cb_F0   ; 
- D 1 - I - 0x013D0A 04:BCFA: A1        .byte $A1   ; 
- D 1 - I - 0x013D0B 04:BCFB: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x013D0C 04:BCFC: 12        .byte $12   ; 
- D 1 - I - 0x013D0D 04:BCFD: F0        .byte con_se_cb_F0   ; 
- D 1 - I - 0x013D0E 04:BCFE: C1        .byte $C1   ; 
- D 1 - I - 0x013D0F 04:BCFF: 81        .byte $81   ; 
- D 1 - I - 0x013D10 04:BD00: 31        .byte $31   ; 
- D 1 - I - 0x013D11 04:BD01: E0        .byte con_se_cb_E0   ; 
- D 1 - I - 0x013D12 04:BD02: 07        .byte $07   ; 
- D 1 - I - 0x013D13 04:BD03: F5        .byte $F5   ; 
- D 1 - I - 0x013D14 04:BD04: 83        .byte $83   ; 
- D 1 - I - 0x013D15 04:BD05: 14        .byte $14   ; 
- D 1 - I - 0x013D16 04:BD06: D0        .byte $D0   ; 
- D 1 - I - 0x013D17 04:BD07: EA        .byte con_se_cb_EA, $04   ; 
- D 1 - I - 0x013D19 04:BD09: E7        .byte con_se_cb_E7, $57, $31   ; 
- D 1 - I - 0x013D1C 04:BD0C: E2        .byte con_se_cb_E2, $B8   ; 
- D 1 - I - 0x013D1E 04:BD0E: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x013D1F 04:BD0F: 51        .byte $51   ; 
- D 1 - I - 0x013D20 04:BD10: A1        .byte $A1   ; 
- D 1 - I - 0x013D21 04:BD11: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x013D22 04:BD12: 51        .byte $51   ; 
- D 1 - I - 0x013D23 04:BD13: A1        .byte $A1   ; 
- D 1 - I - 0x013D24 04:BD14: 81        .byte $81   ; 
- D 1 - I - 0x013D25 04:BD15: A1        .byte $A1   ; 
- D 1 - I - 0x013D26 04:BD16: 81        .byte $81   ; 
- D 1 - I - 0x013D27 04:BD17: 61        .byte $61   ; 
- D 1 - I - 0x013D28 04:BD18: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x013D29 04:BD19: 61        .byte $61   ; 
- D 1 - I - 0x013D2A 04:BD1A: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x013D2B 04:BD1B: 31        .byte $31   ; 
- D 1 - I - 0x013D2C 04:BD1C: 81        .byte $81   ; 
- D 1 - I - 0x013D2D 04:BD1D: C1        .byte $C1   ; 
- D 1 - I - 0x013D2E 04:BD1E: A1        .byte $A1   ; 
- D 1 - I - 0x013D2F 04:BD1F: C1        .byte $C1   ; 
- D 1 - I - 0x013D30 04:BD20: A1        .byte $A1   ; 
- D 1 - I - 0x013D31 04:BD21: 81        .byte $81   ; 
- D 1 - I - 0x013D32 04:BD22: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x013D33 04:BD23: 81        .byte $81   ; 
- D 1 - I - 0x013D34 04:BD24: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x013D35 04:BD25: 11        .byte $11   ; 
- D 1 - I - 0x013D36 04:BD26: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x013D37 04:BD27: 31        .byte $31   ; 
- D 1 - I - 0x013D38 04:BD28: 11        .byte $11   ; 
- D 1 - I - 0x013D39 04:BD29: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x013D3A 04:BD2A: C1        .byte $C1   ; 
- D 1 - I - 0x013D3B 04:BD2B: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x013D3C 04:BD2C: 11        .byte $11   ; 
- D 1 - I - 0x013D3D 04:BD2D: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x013D3E 04:BD2E: C1        .byte $C1   ; 
- D 1 - I - 0x013D3F 04:BD2F: A1        .byte $A1   ; 
- D 1 - I - 0x013D40 04:BD30: E9        .byte con_se_cb_E9, $01   ; 
- D 1 - I - 0x013D42 04:BD32: D3        .byte $D3   ; 
- D 1 - I - 0x013D43 04:BD33: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x013D44 04:BD34: 32        .byte $32   ; 
- D 1 - I - 0x013D45 04:BD35: C1        .byte $C1   ; 
- D 1 - I - 0x013D46 04:BD36: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x013D47 04:BD37: 81        .byte $81   ; 
- D 1 - I - 0x013D48 04:BD38: 61        .byte $61   ; 
- D 1 - I - 0x013D49 04:BD39: 51        .byte $51   ; 
- D 1 - I - 0x013D4A 04:BD3A: 61        .byte $61   ; 
- D 1 - I - 0x013D4B 04:BD3B: 51        .byte $51   ; 
- D 1 - I - 0x013D4C 04:BD3C: EA        .byte con_se_cb_EA, $02   ; 
- D 1 - I - 0x013D4E 04:BD3E: D0        .byte $D0   ; 
- D 1 - I - 0x013D4F 04:BD3F: E5        .byte con_se_cb_E5, $16   ; 
- D 1 - I - 0x013D51 04:BD41: FB        .byte con_se_cb_FB   ; 
- D 1 - I - 0x013D52 04:BD42: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x013D53 04:BD43: A1        .byte $A1   ; 
- D 1 - I - 0x013D54 04:BD44: C1        .byte $C1   ; 
- D 1 - I - 0x013D55 04:BD45: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x013D56 04:BD46: C1        .byte $C1   ; 
- D 1 - I - 0x013D57 04:BD47: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x013D58 04:BD48: A1        .byte $A1   ; 
- D 1 - I - 0x013D59 04:BD49: C1        .byte $C1   ; 
- D 1 - I - 0x013D5A 04:BD4A: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x013D5B 04:BD4B: 51        .byte $51   ; 
- D 1 - I - 0x013D5C 04:BD4C: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x013D5D 04:BD4D: 51        .byte $51   ; 
- D 1 - I - 0x013D5E 04:BD4E: C1        .byte $C1   ; 
- D 1 - I - 0x013D5F 04:BD4F: FE        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x013D60 04:BD50: 02        .byte $02   ; 
- D 1 - I - 0x013D61 04:BD51: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x013D62 04:BD52: A1        .byte $A1   ; 
- D 1 - I - 0x013D63 04:BD53: C1        .byte $C1   ; 
- D 1 - I - 0x013D64 04:BD54: 51        .byte $51   ; 
- D 1 - I - 0x013D65 04:BD55: C1        .byte $C1   ; 
- D 1 - I - 0x013D66 04:BD56: 31        .byte $31   ; 
- D 1 - I - 0x013D67 04:BD57: 51        .byte $51   ; 
- D 1 - I - 0x013D68 04:BD58: F0        .byte con_se_cb_F0   ; 
- D 1 - I - 0x013D69 04:BD59: C1        .byte $C1   ; 
- D 1 - I - 0x013D6A 04:BD5A: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x013D6B 04:BD5B: 51        .byte $51   ; 
- D 1 - I - 0x013D6C 04:BD5C: F0        .byte con_se_cb_F0   ; 
- D 1 - I - 0x013D6D 04:BD5D: C1        .byte $C1   ; 
- D 1 - I - 0x013D6E 04:BD5E: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x013D6F 04:BD5F: 51        .byte $51   ; 
- D 1 - I - 0x013D70 04:BD60: C1        .byte $C1   ; 
- D 1 - I - 0x013D71 04:BD61: F0        .byte con_se_cb_F0   ; 
- D 1 - I - 0x013D72 04:BD62: 81        .byte $81   ; 
- D 1 - I - 0x013D73 04:BD63: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x013D74 04:BD64: 51        .byte $51   ; 
- D 1 - I - 0x013D75 04:BD65: A1        .byte $A1   ; 
- D 1 - I - 0x013D76 04:BD66: F0        .byte con_se_cb_F0   ; 
- D 1 - I - 0x013D77 04:BD67: A1        .byte $A1   ; 
- D 1 - I - 0x013D78 04:BD68: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x013D79 04:BD69: 31        .byte $31   ; 
loc_FE_BD6A:
- D 1 - I - 0x013D7A 04:BD6A: E0        .byte con_se_cb_E0   ; 
- D 1 - I - 0x013D7B 04:BD6B: 07        .byte $07   ; 
- D 1 - I - 0x013D7C 04:BD6C: F5        .byte $F5   ; 
- D 1 - I - 0x013D7D 04:BD6D: 83        .byte $83   ; 
- D 1 - I - 0x013D7E 04:BD6E: 16        .byte $16   ; 
- D 1 - I - 0x013D7F 04:BD6F: D0        .byte $D0   ; 
- D 1 - I - 0x013D80 04:BD70: EA        .byte con_se_cb_EA, $00   ; 
- D 1 - I - 0x013D82 04:BD72: E7        .byte con_se_cb_E7, $57, $34   ; 
- D 1 - I - 0x013D85 04:BD75: E2        .byte con_se_cb_E2, $B8   ; 
- D 1 - I - 0x013D87 04:BD77: FD        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x013D88 04:BD78: 61 BE     .word sub_FD_BE61
- D 1 - I - 0x013D8A 04:BD7A: 58        .byte $58   ; 
- D 1 - I - 0x013D8B 04:BD7B: D1        .byte $D1   ; 
- D 1 - I - 0x013D8C 04:BD7C: EA        .byte con_se_cb_EA, $03   ; 
- D 1 - I - 0x013D8E 04:BD7E: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x013D8F 04:BD7F: 31        .byte $31   ; 
- D 1 - I - 0x013D90 04:BD80: 51        .byte $51   ; 
- D 1 - I - 0x013D91 04:BD81: C1        .byte $C1   ; 
- D 1 - I - 0x013D92 04:BD82: 31        .byte $31   ; 
- D 1 - I - 0x013D93 04:BD83: 51        .byte $51   ; 
- D 1 - I - 0x013D94 04:BD84: A1        .byte $A1   ; 
- D 1 - I - 0x013D95 04:BD85: 51        .byte $51   ; 
- D 1 - I - 0x013D96 04:BD86: C1        .byte $C1   ; 
- D 1 - I - 0x013D97 04:BD87: EA        .byte con_se_cb_EA, $00   ; 
- D 1 - I - 0x013D99 04:BD89: D0        .byte $D0   ; 
- D 1 - I - 0x013D9A 04:BD8A: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x013D9B 04:BD8B: 81        .byte $81   ; 
- D 1 - I - 0x013D9C 04:BD8C: 51        .byte $51   ; 
- D 1 - I - 0x013D9D 04:BD8D: 31        .byte $31   ; 
- D 1 - I - 0x013D9E 04:BD8E: 5B        .byte $5B   ; 
- D 1 - I - 0x013D9F 04:BD8F: A1        .byte $A1   ; 
- D 1 - I - 0x013DA0 04:BD90: C1        .byte $C1   ; 
- D 1 - I - 0x013DA1 04:BD91: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x013DA2 04:BD92: 51        .byte $51   ; 
- D 1 - I - 0x013DA3 04:BD93: 81        .byte $81   ; 
- D 1 - I - 0x013DA4 04:BD94: 31        .byte $31   ; 
- D 1 - I - 0x013DA5 04:BD95: 55        .byte $55   ; 
- D 1 - I - 0x013DA6 04:BD96: EA        .byte con_se_cb_EA, $03   ; 
- D 1 - I - 0x013DA8 04:BD98: D1        .byte $D1   ; 
- D 1 - I - 0x013DA9 04:BD99: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x013DAA 04:BD9A: 51        .byte $51   ; 
- D 1 - I - 0x013DAB 04:BD9B: 31        .byte $31   ; 
- D 1 - I - 0x013DAC 04:BD9C: 51        .byte $51   ; 
- D 1 - I - 0x013DAD 04:BD9D: C1        .byte $C1   ; 
- D 1 - I - 0x013DAE 04:BD9E: 51        .byte $51   ; 
- D 1 - I - 0x013DAF 04:BD9F: 31        .byte $31   ; 
- D 1 - I - 0x013DB0 04:BDA0: 51        .byte $51   ; 
- D 1 - I - 0x013DB1 04:BDA1: A1        .byte $A1   ; 
- D 1 - I - 0x013DB2 04:BDA2: EA        .byte con_se_cb_EA, $00   ; 
- D 1 - I - 0x013DB4 04:BDA4: D0        .byte $D0   ; 
- D 1 - I - 0x013DB5 04:BDA5: FD        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x013DB6 04:BDA6: 61 BE     .word sub_FD_BE61
- D 1 - I - 0x013DB8 04:BDA8: C6        .byte $C6   ; 
- D 1 - I - 0x013DB9 04:BDA9: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x013DBA 04:BDAA: 31        .byte $31   ; 
- D 1 - I - 0x013DBB 04:BDAB: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x013DBC 04:BDAC: C1        .byte $C1   ; 
- D 1 - I - 0x013DBD 04:BDAD: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x013DBE 04:BDAE: 58        .byte $58   ; 
- D 1 - I - 0x013DBF 04:BDAF: E7        .byte con_se_cb_E7, $57, $32   ; 
- D 1 - I - 0x013DC2 04:BDB2: 8D        .byte $8D   ; 
- D 1 - I - 0x013DC3 04:BDB3: 71        .byte $71   ; 
- D 1 - I - 0x013DC4 04:BDB4: 51        .byte $51   ; 
- D 1 - I - 0x013DC5 04:BDB5: 31        .byte $31   ; 
- D 1 - I - 0x013DC6 04:BDB6: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x013DC7 04:BDB7: C4        .byte $C4   ; 
- D 1 - I - 0x013DC8 04:BDB8: D1        .byte $D1   ; 
- D 1 - I - 0x013DC9 04:BDB9: EA        .byte con_se_cb_EA, $03   ; 
- D 1 - I - 0x013DCB 04:BDBB: FB        .byte con_se_cb_FB   ; 
- D 1 - I - 0x013DCC 04:BDBC: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x013DCD 04:BDBD: 51        .byte $51   ; 
- D 1 - I - 0x013DCE 04:BDBE: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x013DCF 04:BDBF: C1        .byte $C1   ; 
- D 1 - I - 0x013DD0 04:BDC0: 51        .byte $51   ; 
- D 1 - I - 0x013DD1 04:BDC1: FE        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x013DD2 04:BDC2: 03        .byte $03   ; 
- D 1 - I - 0x013DD3 04:BDC3: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x013DD4 04:BDC4: C1        .byte $C1   ; 
- D 1 - I - 0x013DD5 04:BDC5: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x013DD6 04:BDC6: 51        .byte $51   ; 
- D 1 - I - 0x013DD7 04:BDC7: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x013DD8 04:BDC8: 51        .byte $51   ; 
- D 1 - I - 0x013DD9 04:BDC9: D0        .byte $D0   ; 
- D 1 - I - 0x013DDA 04:BDCA: EA        .byte con_se_cb_EA, $00   ; 
- D 1 - I - 0x013DDC 04:BDCC: FD        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x013DDD 04:BDCD: 6A BE     .word sub_FD_BE6A
- D 1 - I - 0x013DDF 04:BDCF: E1        .byte con_se_cb_E1, $01   ; 
- D 1 - I - 0x013DE1 04:BDD1: 5A        .byte $5A   ; 
- D 1 - I - 0x013DE2 04:BDD2: 01        .byte $01   ; 
- D 1 - I - 0x013DE3 04:BDD3: D5        .byte $D5   ; 
- D 1 - I - 0x013DE4 04:BDD4: 5A        .byte $5A   ; 
- D 1 - I - 0x013DE5 04:BDD5: D0        .byte $D0   ; 
- D 1 - I - 0x013DE6 04:BDD6: E1        .byte con_se_cb_E1, $07   ; 
- D 1 - I - 0x013DE8 04:BDD8: 54        .byte $54   ; 
- D 1 - I - 0x013DE9 04:BDD9: E7        .byte con_se_cb_E7, $00   ; 
- D 1 - I - 0x013DEB 04:BDDB: E1        .byte con_se_cb_E1, $01   ; 
- D 1 - I - 0x013DED 04:BDDD: EA        .byte con_se_cb_EA, $01   ; 
- D 1 - I - 0x013DEF 04:BDDF: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x013DF0 04:BDE0: D2        .byte $D2   ; 
- D 1 - I - 0x013DF1 04:BDE1: E2        .byte con_se_cb_E2, $F0   ; 
- D 1 - I - 0x013DF3 04:BDE3: E2        .byte con_se_cb_E2, $BE   ; 
- D 1 - I - 0x013DF5 04:BDE5: 41        .byte $41   ; 
- D 1 - I - 0x013DF6 04:BDE6: E5        .byte con_se_cb_E5, $28   ; 
- D 1 - I - 0x013DF8 04:BDE8: D1        .byte $D1   ; 
- D 1 - I - 0x013DF9 04:BDE9: 56        .byte $56   ; 
- D 1 - I - 0x013DFA 04:BDEA: 77        .byte $77   ; 
- D 1 - I - 0x013DFB 04:BDEB: 87        .byte $87   ; 
- D 1 - I - 0x013DFC 04:BDEC: 77        .byte $77   ; 
- D 1 - I - 0x013DFD 04:BDED: 57        .byte $57   ; 
- D 1 - I - 0x013DFE 04:BDEE: 37        .byte $37   ; 
- D 1 - I - 0x013DFF 04:BDEF: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x013E00 04:BDF0: C7        .byte $C7   ; 
- D 1 - I - 0x013E01 04:BDF1: A7        .byte $A7   ; 
- D 1 - I - 0x013E02 04:BDF2: FD        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x013E03 04:BDF3: 6A BE     .word sub_FD_BE6A
- D 1 - I - 0x013E05 04:BDF5: 51        .byte $51   ; 
- D 1 - I - 0x013E06 04:BDF6: D3        .byte $D3   ; 
- D 1 - I - 0x013E07 04:BDF7: 51        .byte $51   ; 
- D 1 - I - 0x013E08 04:BDF8: D0        .byte $D0   ; 
- D 1 - I - 0x013E09 04:BDF9: 55        .byte $55   ; 
- D 1 - I - 0x013E0A 04:BDFA: E7        .byte con_se_cb_E7, $00   ; 
- D 1 - I - 0x013E0C 04:BDFC: E2        .byte con_se_cb_E2, $F0   ; 
- D 1 - I - 0x013E0E 04:BDFE: E2        .byte con_se_cb_E2, $BE   ; 
- D 1 - I - 0x013E10 04:BE00: E5        .byte con_se_cb_E5, $28   ; 
- D 1 - I - 0x013E12 04:BE02: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x013E13 04:BE03: D1        .byte $D1   ; 
- D 1 - I - 0x013E14 04:BE04: 51        .byte $51   ; 
- D 1 - I - 0x013E15 04:BE05: 71        .byte $71   ; 
- D 1 - I - 0x013E16 04:BE06: 81        .byte $81   ; 
- D 1 - I - 0x013E17 04:BE07: 71        .byte $71   ; 
- D 1 - I - 0x013E18 04:BE08: 81        .byte $81   ; 
- D 1 - I - 0x013E19 04:BE09: 71        .byte $71   ; 
- D 1 - I - 0x013E1A 04:BE0A: 81        .byte $81   ; 
- D 1 - I - 0x013E1B 04:BE0B: A1        .byte $A1   ; 
- D 1 - I - 0x013E1C 04:BE0C: E2        .byte con_se_cb_E2, $F0   ; 
- D 1 - I - 0x013E1E 04:BE0E: E2        .byte con_se_cb_E2, $38   ; 
- D 1 - I - 0x013E20 04:BE10: E5        .byte con_se_cb_E5, $28   ; 
- D 1 - I - 0x013E22 04:BE12: D0        .byte $D0   ; 
- D 1 - I - 0x013E23 04:BE13: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x013E24 04:BE14: A1        .byte $A1   ; 
- D 1 - I - 0x013E25 04:BE15: 51        .byte $51   ; 
- D 1 - I - 0x013E26 04:BE16: A2        .byte $A2   ; 
- D 1 - I - 0x013E27 04:BE17: A1        .byte $A1   ; 
- D 1 - I - 0x013E28 04:BE18: A1        .byte $A1   ; 
- D 1 - I - 0x013E29 04:BE19: C1        .byte $C1   ; 
- D 1 - I - 0x013E2A 04:BE1A: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x013E2B 04:BE1B: 13        .byte $13   ; 
- D 1 - I - 0x013E2C 04:BE1C: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x013E2D 04:BE1D: C2        .byte $C2   ; 
- D 1 - I - 0x013E2E 04:BE1E: A2        .byte $A2   ; 
- D 1 - I - 0x013E2F 04:BE1F: 82        .byte $82   ; 
- D 1 - I - 0x013E30 04:BE20: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x013E31 04:BE21: 11        .byte $11   ; 
- D 1 - I - 0x013E32 04:BE22: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x013E33 04:BE23: 81        .byte $81   ; 
- D 1 - I - 0x013E34 04:BE24: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x013E35 04:BE25: 11        .byte $11   ; 
- D 1 - I - 0x013E36 04:BE26: D3        .byte $D3   ; 
- D 1 - I - 0x013E37 04:BE27: 11        .byte $11   ; 
- D 1 - I - 0x013E38 04:BE28: D0        .byte $D0   ; 
- D 1 - I - 0x013E39 04:BE29: 11        .byte $11   ; 
- D 1 - I - 0x013E3A 04:BE2A: 31        .byte $31   ; 
- D 1 - I - 0x013E3B 04:BE2B: 51        .byte $51   ; 
- D 1 - I - 0x013E3C 04:BE2C: 32        .byte $32   ; 
- D 1 - I - 0x013E3D 04:BE2D: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x013E3E 04:BE2E: A1        .byte $A1   ; 
- D 1 - I - 0x013E3F 04:BE2F: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x013E40 04:BE30: 31        .byte $31   ; 
- D 1 - I - 0x013E41 04:BE31: 51        .byte $51   ; 
- D 1 - I - 0x013E42 04:BE32: 71        .byte $71   ; 
- D 1 - I - 0x013E43 04:BE33: 51        .byte $51   ; 
- D 1 - I - 0x013E44 04:BE34: 71        .byte $71   ; 
- D 1 - I - 0x013E45 04:BE35: A1        .byte $A1   ; 
- D 1 - I - 0x013E46 04:BE36: FE        .byte con_se_cb_jmp, $FF   ; 
- D 1 - I - 0x013E48 04:BE38: 6A BD     .word loc_FE_BD6A



sub_FD_BE3A:
- D 1 - I - 0x013E4A 04:BE3A: E7        .byte con_se_cb_E7, $57, $31   ; 
- D 1 - I - 0x013E4D 04:BE3D: E6        .byte con_se_cb_E6, $00   ; 
- D 1 - I - 0x013E4F 04:BE3F: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x013E50 04:BE40: A1        .byte $A1   ; 
- D 1 - I - 0x013E51 04:BE41: 31        .byte $31   ; 
- D 1 - I - 0x013E52 04:BE42: A1        .byte $A1   ; 
- D 1 - I - 0x013E53 04:BE43: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x013E54 04:BE44: 17        .byte $17   ; 
- D 1 - I - 0x013E55 04:BE45: 01        .byte $01   ; 
- D 1 - I - 0x013E56 04:BE46: D4        .byte $D4   ; 
- D 1 - I - 0x013E57 04:BE47: 11        .byte $11   ; 
- D 1 - I - 0x013E58 04:BE48: D0        .byte $D0   ; 
- D 1 - I - 0x013E59 04:BE49: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x013E5A 04:BE4A: A3        .byte $A3   ; 
- D 1 - I - 0x013E5B 04:BE4B: 31        .byte $31   ; 
- D 1 - I - 0x013E5C 04:BE4C: A1        .byte $A1   ; 
- D 1 - I - 0x013E5D 04:BE4D: 31        .byte $31   ; 
- D 1 - I - 0x013E5E 04:BE4E: A1        .byte $A1   ; 
- D 1 - I - 0x013E5F 04:BE4F: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x013E60 04:BE50: 37        .byte $37   ; 
- D 1 - I - 0x013E61 04:BE51: 01        .byte $01   ; 
- D 1 - I - 0x013E62 04:BE52: D4        .byte $D4   ; 
- D 1 - I - 0x013E63 04:BE53: 31        .byte $31   ; 
- D 1 - I - 0x013E64 04:BE54: 01        .byte $01   ; 
- D 1 - I - 0x013E65 04:BE55: D0        .byte $D0   ; 
- D 1 - I - 0x013E66 04:BE56: 12        .byte $12   ; 
- D 1 - I - 0x013E67 04:BE57: 31        .byte $31   ; 
- D 1 - I - 0x013E68 04:BE58: 12        .byte $12   ; 
- D 1 - I - 0x013E69 04:BE59: E1        .byte con_se_cb_E1, $0E   ; 
- D 1 - I - 0x013E6B 04:BE5B: E7        .byte con_se_cb_E7, $57, $42   ; 
- D 1 - I - 0x013E6E 04:BE5E: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x013E6F 04:BE5F: A7        .byte $A7   ; 
- D 1 - I - 0x013E70 04:BE60: FF        .byte con_se_cb_stop   ; 



sub_FD_BE61:
- D 1 - I - 0x013E71 04:BE61: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x013E72 04:BE62: 81        .byte $81   ; 
- D 1 - I - 0x013E73 04:BE63: 51        .byte $51   ; 
- D 1 - I - 0x013E74 04:BE64: 81        .byte $81   ; 
- D 1 - I - 0x013E75 04:BE65: AB        .byte $AB   ; 
- D 1 - I - 0x013E76 04:BE66: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x013E77 04:BE67: 81        .byte $81   ; 
- D 1 - I - 0x013E78 04:BE68: 71        .byte $71   ; 
- D 1 - I - 0x013E79 04:BE69: FF        .byte con_se_cb_stop   ; 



sub_FD_BE6A:
- D 1 - I - 0x013E7A 04:BE6A: E0        .byte con_se_cb_E0   ; 
- D 1 - I - 0x013E7B 04:BE6B: 07        .byte $07   ; 
- D 1 - I - 0x013E7C 04:BE6C: F5        .byte $F5   ; 
- D 1 - I - 0x013E7D 04:BE6D: 83        .byte $83   ; 
- D 1 - I - 0x013E7E 04:BE6E: 16        .byte $16   ; 
- D 1 - I - 0x013E7F 04:BE6F: D0        .byte $D0   ; 
- D 1 - I - 0x013E80 04:BE70: EA        .byte con_se_cb_EA, $00   ; 
- D 1 - I - 0x013E82 04:BE72: E7        .byte con_se_cb_E7, $57, $43   ; 
- D 1 - I - 0x013E85 04:BE75: E2        .byte con_se_cb_E2, $75   ; 
- D 1 - I - 0x013E87 04:BE77: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x013E88 04:BE78: C1        .byte $C1   ; 
- D 1 - I - 0x013E89 04:BE79: 51        .byte $51   ; 
- D 1 - I - 0x013E8A 04:BE7A: C1        .byte $C1   ; 
- D 1 - I - 0x013E8B 04:BE7B: D5        .byte $D5   ; 
- D 1 - I - 0x013E8C 04:BE7C: C1        .byte $C1   ; 
- D 1 - I - 0x013E8D 04:BE7D: D0        .byte $D0   ; 
- D 1 - I - 0x013E8E 04:BE7E: CA        .byte $CA   ; 
- D 1 - I - 0x013E8F 04:BE7F: A1        .byte $A1   ; 
- D 1 - I - 0x013E90 04:BE80: 31        .byte $31   ; 
- D 1 - I - 0x013E91 04:BE81: 31        .byte $31   ; 
- D 1 - I - 0x013E92 04:BE82: FF        .byte con_se_cb_stop   ; 



_off000_BE83_A8_02:
- D 1 - I - 0x013E93 04:BE83: E0        .byte con_se_cb_E0   ; 
- D 1 - I - 0x013E94 04:BE84: 01        .byte $01   ; 
- D 1 - I - 0x013E95 04:BE85: 01        .byte $01   ; 
- D 1 - I - 0x013E96 04:BE86: 02        .byte $02   ; 
- D 1 - I - 0x013E97 04:BE87: E1        .byte con_se_cb_E1, $07   ; 
- D 1 - I - 0x013E99 04:BE89: FD        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x013E9A 04:BE8A: 20 BF     .word sub_FD_BF20
- D 1 - I - 0x013E9C 04:BE8C: 3A        .byte $3A   ; 
- D 1 - I - 0x013E9D 04:BE8D: A2        .byte $A2   ; 
- D 1 - I - 0x013E9E 04:BE8E: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x013E9F 04:BE8F: 32        .byte $32   ; 
- D 1 - I - 0x013EA0 04:BE90: 62        .byte $62   ; 
- D 1 - I - 0x013EA1 04:BE91: 56        .byte $56   ; 
- D 1 - I - 0x013EA2 04:BE92: 86        .byte $86   ; 
- D 1 - I - 0x013EA3 04:BE93: A4        .byte $A4   ; 
- D 1 - I - 0x013EA4 04:BE94: FD        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x013EA5 04:BE95: 20 BF     .word sub_FD_BF20
- D 1 - I - 0x013EA7 04:BE97: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x013EA8 04:BE98: 30        .byte $30   ; 
- D 1 - I - 0x013EA9 04:BE99: E3        .byte con_se_cb_E3, $00   ; 
- D 1 - I - 0x013EAB 04:BE9B: D0        .byte $D0   ; 
- D 1 - I - 0x013EAC 04:BE9C: E3        .byte con_se_cb_E3, $02   ; 
- D 1 - I - 0x013EAE 04:BE9E: FB        .byte con_se_cb_FB   ; 
- D 1 - I - 0x013EAF 04:BE9F: 35        .byte $35   ; 
- D 1 - I - 0x013EB0 04:BEA0: 01        .byte $01   ; 
- D 1 - I - 0x013EB1 04:BEA1: 63        .byte $63   ; 
- D 1 - I - 0x013EB2 04:BEA2: 01        .byte $01   ; 
- D 1 - I - 0x013EB3 04:BEA3: 61        .byte $61   ; 
- D 1 - I - 0x013EB4 04:BEA4: 01        .byte $01   ; 
- D 1 - I - 0x013EB5 04:BEA5: 61        .byte $61   ; 
- D 1 - I - 0x013EB6 04:BEA6: 01        .byte $01   ; 
- D 1 - I - 0x013EB7 04:BEA7: 31        .byte $31   ; 
- D 1 - I - 0x013EB8 04:BEA8: 01        .byte $01   ; 
- D 1 - I - 0x013EB9 04:BEA9: 35        .byte $35   ; 
- D 1 - I - 0x013EBA 04:BEAA: 01        .byte $01   ; 
- D 1 - I - 0x013EBB 04:BEAB: 83        .byte $83   ; 
- D 1 - I - 0x013EBC 04:BEAC: 01        .byte $01   ; 
- D 1 - I - 0x013EBD 04:BEAD: 81        .byte $81   ; 
- D 1 - I - 0x013EBE 04:BEAE: 01        .byte $01   ; 
- D 1 - I - 0x013EBF 04:BEAF: 61        .byte $61   ; 
- D 1 - I - 0x013EC0 04:BEB0: 01        .byte $01   ; 
- D 1 - I - 0x013EC1 04:BEB1: 31        .byte $31   ; 
- D 1 - I - 0x013EC2 04:BEB2: 01        .byte $01   ; 
- D 1 - I - 0x013EC3 04:BEB3: FE        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x013EC4 04:BEB4: 0A        .byte $0A   ; 
- D 1 - I - 0x013EC5 04:BEB5: A3        .byte $A3   ; 
- D 1 - I - 0x013EC6 04:BEB6: A3        .byte $A3   ; 
- D 1 - I - 0x013EC7 04:BEB7: A2        .byte $A2   ; 
- D 1 - I - 0x013EC8 04:BEB8: C3        .byte $C3   ; 
- D 1 - I - 0x013EC9 04:BEB9: C3        .byte $C3   ; 
- D 1 - I - 0x013ECA 04:BEBA: C2        .byte $C2   ; 
- D 1 - I - 0x013ECB 04:BEBB: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x013ECC 04:BEBC: 13        .byte $13   ; 
- D 1 - I - 0x013ECD 04:BEBD: 13        .byte $13   ; 
- D 1 - I - 0x013ECE 04:BEBE: 12        .byte $12   ; 
- D 1 - I - 0x013ECF 04:BEBF: 33        .byte $33   ; 
- D 1 - I - 0x013ED0 04:BEC0: 33        .byte $33   ; 
- D 1 - I - 0x013ED1 04:BEC1: 32        .byte $32   ; 
- D 1 - I - 0x013ED2 04:BEC2: E3        .byte con_se_cb_E3, $04   ; 
- D 1 - I - 0x013ED4 04:BEC4: FB        .byte con_se_cb_FB   ; 
- D 1 - I - 0x013ED5 04:BEC5: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x013ED6 04:BEC6: 52        .byte $52   ; 
- D 1 - I - 0x013ED7 04:BEC7: 51        .byte $51   ; 
- D 1 - I - 0x013ED8 04:BEC8: 51        .byte $51   ; 
- D 1 - I - 0x013ED9 04:BEC9: D1        .byte $D1   ; 
- D 1 - I - 0x013EDA 04:BECA: 52        .byte $52   ; 
- D 1 - I - 0x013EDB 04:BECB: 51        .byte $51   ; 
- D 1 - I - 0x013EDC 04:BECC: FE        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x013EDD 04:BECD: 02        .byte $02   ; 
- D 1 - I - 0x013EDE 04:BECE: FB        .byte con_se_cb_FB   ; 
- D 1 - I - 0x013EDF 04:BECF: 51        .byte $51   ; 
- D 1 - I - 0x013EE0 04:BED0: 51        .byte $51   ; 
- D 1 - I - 0x013EE1 04:BED1: D2        .byte $D2   ; 
- D 1 - I - 0x013EE2 04:BED2: FE        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x013EE3 04:BED3: 02        .byte $02   ; 
- D 1 - I - 0x013EE4 04:BED4: 52        .byte $52   ; 
- D 1 - I - 0x013EE5 04:BED5: 51        .byte $51   ; 
- D 1 - I - 0x013EE6 04:BED6: 12        .byte $12   ; 
- D 1 - I - 0x013EE7 04:BED7: 11        .byte $11   ; 
- D 1 - I - 0x013EE8 04:BED8: 32        .byte $32   ; 
loc_FE_BED9:
- D 1 - I - 0x013EE9 04:BED9: E3        .byte con_se_cb_E3, $05   ; 
- D 1 - I - 0x013EEB 04:BEDB: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x013EEC 04:BEDC: FB        .byte con_se_cb_FB   ; 
- D 1 - I - 0x013EED 04:BEDD: 56        .byte $56   ; 
- D 1 - I - 0x013EEE 04:BEDE: 84        .byte $84   ; 
- D 1 - I - 0x013EEF 04:BEDF: 81        .byte $81   ; 
- D 1 - I - 0x013EF0 04:BEE0: 01        .byte $01   ; 
- D 1 - I - 0x013EF1 04:BEE1: 81        .byte $81   ; 
- D 1 - I - 0x013EF2 04:BEE2: 01        .byte $01   ; 
- D 1 - I - 0x013EF3 04:BEE3: 52        .byte $52   ; 
- D 1 - I - 0x013EF4 04:BEE4: 56        .byte $56   ; 
- D 1 - I - 0x013EF5 04:BEE5: A4        .byte $A4   ; 
- D 1 - I - 0x013EF6 04:BEE6: A1        .byte $A1   ; 
- D 1 - I - 0x013EF7 04:BEE7: 01        .byte $01   ; 
- D 1 - I - 0x013EF8 04:BEE8: 81        .byte $81   ; 
- D 1 - I - 0x013EF9 04:BEE9: 01        .byte $01   ; 
- D 1 - I - 0x013EFA 04:BEEA: 52        .byte $52   ; 
- D 1 - I - 0x013EFB 04:BEEB: FE        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x013EFC 04:BEEC: 04        .byte $04   ; 
- D 1 - I - 0x013EFD 04:BEED: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x013EFE 04:BEEE: 56        .byte $56   ; 
- D 1 - I - 0x013EFF 04:BEEF: 54        .byte $54   ; 
- D 1 - I - 0x013F00 04:BEF0: 52        .byte $52   ; 
- D 1 - I - 0x013F01 04:BEF1: D2        .byte $D2   ; 
- D 1 - I - 0x013F02 04:BEF2: 52        .byte $52   ; 
- D 1 - I - 0x013F03 04:BEF3: 56        .byte $56   ; 
- D 1 - I - 0x013F04 04:BEF4: 52        .byte $52   ; 
- D 1 - I - 0x013F05 04:BEF5: 51        .byte $51   ; 
- D 1 - I - 0x013F06 04:BEF6: 51        .byte $51   ; 
- D 1 - I - 0x013F07 04:BEF7: D2        .byte $D2   ; 
- D 1 - I - 0x013F08 04:BEF8: 31        .byte $31   ; 
- D 1 - I - 0x013F09 04:BEF9: 31        .byte $31   ; 
- D 1 - I - 0x013F0A 04:BEFA: D2        .byte $D2   ; 
- D 1 - I - 0x013F0B 04:BEFB: 16        .byte $16   ; 
- D 1 - I - 0x013F0C 04:BEFC: 14        .byte $14   ; 
- D 1 - I - 0x013F0D 04:BEFD: 12        .byte $12   ; 
- D 1 - I - 0x013F0E 04:BEFE: D2        .byte $D2   ; 
- D 1 - I - 0x013F0F 04:BEFF: 12        .byte $12   ; 
- D 1 - I - 0x013F10 04:BF00: 16        .byte $16   ; 
- D 1 - I - 0x013F11 04:BF01: D2        .byte $D2   ; 
- D 1 - I - 0x013F12 04:BF02: 11        .byte $11   ; 
- D 1 - I - 0x013F13 04:BF03: 11        .byte $11   ; 
- D 1 - I - 0x013F14 04:BF04: D2        .byte $D2   ; 
- D 1 - I - 0x013F15 04:BF05: F0        .byte con_se_cb_F0   ; 
- D 1 - I - 0x013F16 04:BF06: C1        .byte $C1   ; 
- D 1 - I - 0x013F17 04:BF07: C1        .byte $C1   ; 
- D 1 - I - 0x013F18 04:BF08: D2        .byte $D2   ; 
- D 1 - I - 0x013F19 04:BF09: A6        .byte $A6   ; 
- D 1 - I - 0x013F1A 04:BF0A: A3        .byte $A3   ; 
- D 1 - I - 0x013F1B 04:BF0B: A1        .byte $A1   ; 
- D 1 - I - 0x013F1C 04:BF0C: D2        .byte $D2   ; 
- D 1 - I - 0x013F1D 04:BF0D: C2        .byte $C2   ; 
- D 1 - I - 0x013F1E 04:BF0E: D2        .byte $D2   ; 
- D 1 - I - 0x013F1F 04:BF0F: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x013F20 04:BF10: 12        .byte $12   ; 
- D 1 - I - 0x013F21 04:BF11: 12        .byte $12   ; 
- D 1 - I - 0x013F22 04:BF12: D2        .byte $D2   ; 
- D 1 - I - 0x013F23 04:BF13: 11        .byte $11   ; 
- D 1 - I - 0x013F24 04:BF14: 32        .byte $32   ; 
- D 1 - I - 0x013F25 04:BF15: 31        .byte $31   ; 
- D 1 - I - 0x013F26 04:BF16: D2        .byte $D2   ; 
- D 1 - I - 0x013F27 04:BF17: 31        .byte $31   ; 
- D 1 - I - 0x013F28 04:BF18: 31        .byte $31   ; 
- D 1 - I - 0x013F29 04:BF19: A1        .byte $A1   ; 
- D 1 - I - 0x013F2A 04:BF1A: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x013F2B 04:BF1B: 31        .byte $31   ; 
- D 1 - I - 0x013F2C 04:BF1C: FE        .byte con_se_cb_jmp, $FF   ; 
- D 1 - I - 0x013F2E 04:BF1E: D9 BE     .word loc_FE_BED9



sub_FD_BF20:
- D 1 - I - 0x013F30 04:BF20: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x013F31 04:BF21: 3A        .byte $3A   ; 
- D 1 - I - 0x013F32 04:BF22: A2        .byte $A2   ; 
- D 1 - I - 0x013F33 04:BF23: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x013F34 04:BF24: 32        .byte $32   ; 
- D 1 - I - 0x013F35 04:BF25: 62        .byte $62   ; 
- D 1 - I - 0x013F36 04:BF26: 56        .byte $56   ; 
- D 1 - I - 0x013F37 04:BF27: 26        .byte $26   ; 
- D 1 - I - 0x013F38 04:BF28: F1        .byte con_se_cb_F1   ; 
- D 1 - I - 0x013F39 04:BF29: A4        .byte $A4   ; 
- D 1 - I - 0x013F3A 04:BF2A: FF        .byte con_se_cb_stop   ; 



_off000_BF2B_A8_03:
- D 1 - I - 0x013F3B 04:BF2B: E0        .byte con_se_cb_E0   ; 
- D 1 - I - 0x013F3C 04:BF2C: 01        .byte $01   ; 
- D 1 - I - 0x013F3D 04:BF2D: 02        .byte $02   ; 
- D 1 - I - 0x013F3E 04:BF2E: E0        .byte con_se_cb_E0   ; 
- D 1 - I - 0x013F3F 04:BF2F: 07        .byte $07   ; 
- D 1 - I - 0x013F40 04:BF30: FB        .byte con_se_cb_FB   ; 
- D 1 - I - 0x013F41 04:BF31: 00        .byte $00   ; 
- D 1 - I - 0x013F42 04:BF32: FE        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x013F43 04:BF33: 08        .byte $08   ; 
- D 1 - I - 0x013F44 04:BF34: E0        .byte con_se_cb_E0   ; 
- D 1 - I - 0x013F45 04:BF35: 01        .byte $01   ; 
- D 1 - I - 0x013F46 04:BF36: FB        .byte con_se_cb_FB   ; 
- D 1 - I - 0x013F47 04:BF37: 57        .byte $57   ; 
- D 1 - I - 0x013F48 04:BF38: 17        .byte $17   ; 
- D 1 - I - 0x013F49 04:BF39: BE        .byte $BE   ; 
- D 1 - I - 0x013F4A 04:BF3A: FD        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x013F4B 04:BF3B: 8A BF     .word sub_FD_BF8A
- D 1 - I - 0x013F4D 04:BF3D: 57        .byte $57   ; 
- D 1 - I - 0x013F4E 04:BF3E: 17        .byte $17   ; 
- D 1 - I - 0x013F4F 04:BF3F: 5E        .byte $5E   ; 
- D 1 - I - 0x013F50 04:BF40: FD        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x013F51 04:BF41: 8A BF     .word sub_FD_BF8A
- D 1 - I - 0x013F53 04:BF43: FE        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x013F54 04:BF44: 05        .byte $05   ; 
- D 1 - I - 0x013F55 04:BF45: C7        .byte $C7   ; 
- D 1 - I - 0x013F56 04:BF46: 17        .byte $17   ; 
- D 1 - I - 0x013F57 04:BF47: FD        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x013F58 04:BF48: A4 BF     .word sub_FD_BFA4
- D 1 - I - 0x013F5A 04:BF4A: 17        .byte $17   ; 
- D 1 - I - 0x013F5B 04:BF4B: B7        .byte $B7   ; 
- D 1 - I - 0x013F5C 04:BF4C: B7        .byte $B7   ; 
- D 1 - I - 0x013F5D 04:BF4D: C7        .byte $C7   ; 
- D 1 - I - 0x013F5E 04:BF4E: C7        .byte $C7   ; 
- D 1 - I - 0x013F5F 04:BF4F: FD        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x013F60 04:BF50: A4 BF     .word sub_FD_BFA4
- D 1 - I - 0x013F62 04:BF52: B7        .byte $B7   ; 
- D 1 - I - 0x013F63 04:BF53: B7        .byte $B7   ; 
- D 1 - I - 0x013F64 04:BF54: B7        .byte $B7   ; 
- D 1 - I - 0x013F65 04:BF55: C7        .byte $C7   ; 
- D 1 - I - 0x013F66 04:BF56: 17        .byte $17   ; 
- D 1 - I - 0x013F67 04:BF57: B7        .byte $B7   ; 
- D 1 - I - 0x013F68 04:BF58: 37        .byte $37   ; 
- D 1 - I - 0x013F69 04:BF59: 9E        .byte $9E   ; 
- D 1 - I - 0x013F6A 04:BF5A: 87        .byte $87   ; 
- D 1 - I - 0x013F6B 04:BF5B: 77        .byte $77   ; 
- D 1 - I - 0x013F6C 04:BF5C: C7        .byte $C7   ; 
- D 1 - I - 0x013F6D 04:BF5D: 17        .byte $17   ; 
- D 1 - I - 0x013F6E 04:BF5E: B7        .byte $B7   ; 
- D 1 - I - 0x013F6F 04:BF5F: 37        .byte $37   ; 
- D 1 - I - 0x013F70 04:BF60: B7        .byte $B7   ; 
- D 1 - I - 0x013F71 04:BF61: B7        .byte $B7   ; 
- D 1 - I - 0x013F72 04:BF62: 87        .byte $87   ; 
- D 1 - I - 0x013F73 04:BF63: 77        .byte $77   ; 
- D 1 - I - 0x013F74 04:BF64: C7        .byte $C7   ; 
- D 1 - I - 0x013F75 04:BF65: 17        .byte $17   ; 
- D 1 - I - 0x013F76 04:BF66: B7        .byte $B7   ; 
- D 1 - I - 0x013F77 04:BF67: 37        .byte $37   ; 
- D 1 - I - 0x013F78 04:BF68: C7        .byte $C7   ; 
- D 1 - I - 0x013F79 04:BF69: 17        .byte $17   ; 
- D 1 - I - 0x013F7A 04:BF6A: B7        .byte $B7   ; 
- D 1 - I - 0x013F7B 04:BF6B: 37        .byte $37   ; 
- D 1 - I - 0x013F7C 04:BF6C: BE        .byte $BE   ; 
- D 1 - I - 0x013F7D 04:BF6D: B7        .byte $B7   ; 
- D 1 - I - 0x013F7E 04:BF6E: BE        .byte $BE   ; 
- D 1 - I - 0x013F7F 04:BF6F: B7        .byte $B7   ; 
- D 1 - I - 0x013F80 04:BF70: B7        .byte $B7   ; 
- D 1 - I - 0x013F81 04:BF71: C7        .byte $C7   ; 
loc_FE_BF72:
- D 1 - I - 0x013F82 04:BF72: FB        .byte con_se_cb_FB   ; 
- D 1 - I - 0x013F83 04:BF73: C7        .byte $C7   ; 
- D 1 - I - 0x013F84 04:BF74: 17        .byte $17   ; 
- D 1 - I - 0x013F85 04:BF75: C7        .byte $C7   ; 
- D 1 - I - 0x013F86 04:BF76: 17        .byte $17   ; 
- D 1 - I - 0x013F87 04:BF77: FD        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x013F88 04:BF78: AE BF     .word sub_FD_BFAE
- D 1 - I - 0x013F8A 04:BF7A: FE        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x013F8B 04:BF7B: 08        .byte $08   ; 
- D 1 - I - 0x013F8C 04:BF7C: FB        .byte con_se_cb_FB   ; 
- D 1 - I - 0x013F8D 04:BF7D: C7        .byte $C7   ; 
- D 1 - I - 0x013F8E 04:BF7E: 17        .byte $17   ; 
- D 1 - I - 0x013F8F 04:BF7F: C7        .byte $C7   ; 
- D 1 - I - 0x013F90 04:BF80: C7        .byte $C7   ; 
- D 1 - I - 0x013F91 04:BF81: FD        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x013F92 04:BF82: AE BF     .word sub_FD_BFAE
- D 1 - I - 0x013F94 04:BF84: FE        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x013F95 04:BF85: 06        .byte $06   ; 
- D 1 - I - 0x013F96 04:BF86: FE        .byte con_se_cb_jmp, $FF   ; 
- D 1 - I - 0x013F98 04:BF88: 72 BF     .word loc_FE_BF72



sub_FD_BF8A:
- D 1 - I - 0x013F9A 04:BF8A: BE        .byte $BE   ; 
- D 1 - I - 0x013F9B 04:BF8B: B3        .byte $B3   ; 
- D 1 - I - 0x013F9C 04:BF8C: B4        .byte $B4   ; 
- D 1 - I - 0x013F9D 04:BF8D: B3        .byte $B3   ; 
- D 1 - I - 0x013F9E 04:BF8E: B4        .byte $B4   ; 
- D 1 - I - 0x013F9F 04:BF8F: BE        .byte $BE   ; 
- D 1 - I - 0x013FA0 04:BF90: BE        .byte $BE   ; 
- D 1 - I - 0x013FA1 04:BF91: B7        .byte $B7   ; 
- D 1 - I - 0x013FA2 04:BF92: B7        .byte $B7   ; 
- D 1 - I - 0x013FA3 04:BF93: B7        .byte $B7   ; 
- D 1 - I - 0x013FA4 04:BF94: B7        .byte $B7   ; 
- D 1 - I - 0x013FA5 04:BF95: B7        .byte $B7   ; 
- D 1 - I - 0x013FA6 04:BF96: B7        .byte $B7   ; 
- D 1 - I - 0x013FA7 04:BF97: BE        .byte $BE   ; 
- D 1 - I - 0x013FA8 04:BF98: BE        .byte $BE   ; 
- D 1 - I - 0x013FA9 04:BF99: B3        .byte $B3   ; 
- D 1 - I - 0x013FAA 04:BF9A: B4        .byte $B4   ; 
- D 1 - I - 0x013FAB 04:BF9B: B3        .byte $B3   ; 
- D 1 - I - 0x013FAC 04:BF9C: B4        .byte $B4   ; 
- D 1 - I - 0x013FAD 04:BF9D: BE        .byte $BE   ; 
- D 1 - I - 0x013FAE 04:BF9E: BE        .byte $BE   ; 
- D 1 - I - 0x013FAF 04:BF9F: B7        .byte $B7   ; 
- D 1 - I - 0x013FB0 04:BFA0: B7        .byte $B7   ; 
- D 1 - I - 0x013FB1 04:BFA1: B7        .byte $B7   ; 
- D 1 - I - 0x013FB2 04:BFA2: B7        .byte $B7   ; 
- D 1 - I - 0x013FB3 04:BFA3: FF        .byte con_se_cb_stop   ; 



sub_FD_BFA4:
- D 1 - I - 0x013FB4 04:BFA4: CE        .byte $CE   ; 
- D 1 - I - 0x013FB5 04:BFA5: CE        .byte $CE   ; 
- D 1 - I - 0x013FB6 04:BFA6: B3        .byte $B3   ; 
- D 1 - I - 0x013FB7 04:BFA7: B4        .byte $B4   ; 
- D 1 - I - 0x013FB8 04:BFA8: B3        .byte $B3   ; 
- D 1 - I - 0x013FB9 04:BFA9: B4        .byte $B4   ; 
- D 1 - I - 0x013FBA 04:BFAA: CE        .byte $CE   ; 
- D 1 - I - 0x013FBB 04:BFAB: CE        .byte $CE   ; 
- D 1 - I - 0x013FBC 04:BFAC: B7        .byte $B7   ; 
- D 1 - I - 0x013FBD 04:BFAD: FF        .byte con_se_cb_stop   ; 



sub_FD_BFAE:
- D 1 - I - 0x013FBE 04:BFAE: B7        .byte $B7   ; 
- D 1 - I - 0x013FBF 04:BFAF: 17        .byte $17   ; 
- D 1 - I - 0x013FC0 04:BFB0: C7        .byte $C7   ; 
- D 1 - I - 0x013FC1 04:BFB1: B7        .byte $B7   ; 
- D 1 - I - 0x013FC2 04:BFB2: 17        .byte $17   ; 
- D 1 - I - 0x013FC3 04:BFB3: B7        .byte $B7   ; 
- D 1 - I - 0x013FC4 04:BFB4: 17        .byte $17   ; 
- D 1 - I - 0x013FC5 04:BFB5: C7        .byte $C7   ; 
- D 1 - I - 0x013FC6 04:BFB6: B7        .byte $B7   ; 
- D 1 - I - 0x013FC7 04:BFB7: 17        .byte $17   ; 
- D 1 - I - 0x013FC8 04:BFB8: C7        .byte $C7   ; 
- D 1 - I - 0x013FC9 04:BFB9: B7        .byte $B7   ; 
- D 1 - I - 0x013FCA 04:BFBA: FF        .byte con_se_cb_stop   ; 



ofs_006_0x013FCB_25:
; con_F3D6_25
; bzk bug, value in 0001 can be from ram_0001_t15_table_index
C - - J - - 0x013FCB 04:BFBB: A5 01     LDA ram_0001_t15_table_index
C - - - - - 0x013FCD 04:BFBD: C9 0F     CMP #$0F
C - - - - - 0x013FCF 04:BFBF: D0 28     BNE bra_BFE9_RTS
C - - - - - 0x013FD1 04:BFC1: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x013FD4 04:BFC4: 29 40     AND #$40
C - - - - - 0x013FD6 04:BFC6: F0 21     BEQ bra_BFE9_RTS
- - - - - - 0x013FD8 04:BFC8: BD D2 07  LDA ram_07D2_unk,X
- - - - - - 0x013FDB 04:BFCB: 29 01     AND #$01
- - - - - - 0x013FDD 04:BFCD: D0 1A     BNE bra_BFE9_RTS
- - - - - - 0x013FDF 04:BFCF: EA        NOP
- - - - - - 0x013FE0 04:BFD0: AC A2 03  LDY ram_03A2
- - - - - - 0x013FE3 04:BFD3: B9 B2 06  LDA ram_06B2_obj,Y
- - - - - - 0x013FE6 04:BFD6: 30 12     BMI bra_BFEA
- - - - - - 0x013FE8 04:BFD8: BD 4E 06  LDA ram_obj_pos_X,X
- - - - - - 0x013FEB 04:BFDB: D9 4E 06  CMP ram_obj_pos_X,Y
- - - - - - 0x013FEE 04:BFDE: 90 09     BCC bra_BFE9_RTS
- - - - - - 0x013FF0 04:BFE0: BD 4E 06  LDA ram_obj_pos_X,X
- - - - - - 0x013FF3 04:BFE3: 18        CLC
- - - - - - 0x013FF4 04:BFE4: 69 05     ADC #$05
- - - - - - 0x013FF6 04:BFE6: 9D 4E 06  STA ram_obj_pos_X,X
bra_BFE9_RTS:
C - - - - - 0x013FF9 04:BFE9: 60        RTS
bra_BFEA:
- - - - - - 0x013FFA 04:BFEA: BD 4E 06  LDA ram_obj_pos_X,X
- - - - - - 0x013FFD 04:BFED: D9 4E 06  CMP ram_obj_pos_X,Y
- - - - - - 0x014000 04:BFF0: B0 09     BCS bra_BFFB_RTS
- - - - - - 0x014002 04:BFF2: BD 4E 06  LDA ram_obj_pos_X,X
- - - - - - 0x014005 04:BFF5: 38        SEC
- - - - - - 0x014006 04:BFF6: E9 05     SBC #$05
- - - - - - 0x014008 04:BFF8: 9D 4E 06  STA ram_obj_pos_X,X
bra_BFFB_RTS:
- - - - - - 0x01400B 04:BFFB: 60        RTS


; bzk garbage
- - - - - - 0x01400C 04:BFFC: FF        .byte $FF, $FF, $FF, $FF   ; 



.out .sprintf("Free bytes in bank 08: 0x%04X [%d]", ($C000 - *), ($C000 - *))



