.segment "BANK_14"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $8000  ; for listing file
; 0x028010-0x03000F



.export tbl_0x000011_spr_data



tbl_0x000011_spr_data:
- D 0 - - - 0x000011 00:8001: 70 9A     .word _off032_9A70_00
- D 0 - - - 0x000013 00:8003: 01 A0     .word _off032_A001_01
- D 0 - - - 0x000015 00:8005: F7 A5     .word _off032_A5F7_02
- D 0 - - - 0x000017 00:8007: 66 91     .word _off032_9166_03
- D 0 - - - 0x000019 00:8009: C0 A2     .word _off032_A2C0_04
- D 0 - - - 0x00001B 00:800B: 61 B0     .word _off032_B061_05
- D 0 - - - 0x00001D 00:800D: 61 AA     .word _off032_AA61_06
- D 0 - - - 0x00001F 00:800F: 1F 80     .word _off032_801F_07
- D 0 - - - 0x000021 00:8011: FB B1     .word _off032_B1FB_08
- D 0 - - - 0x000023 00:8013: A5 86     .word _off032_86A5_09
- D 0 - - - 0x000025 00:8015: F9 AC     .word _off032_ACF9_0A
- D 0 - - - 0x000027 00:8017: DE AD     .word _off032_ADDE_0B
- D 0 - - - 0x000029 00:8019: 3E B9     .word _off032_B93E_0C
- D 0 - - - 0x00002B 00:801B: CD BC     .word _off032_BCCD_0D
- - - - - - 0x00002D 00:801D: 71 B2     .word _off032_B271_0E



_off032_801F_07:
- - - - - - 0x00002F 00:801F: 53 81     .word off_07_8153_00
- D 0 - I - 0x000031 00:8021: 53 81     .word off_07_8153_01
- D 0 - I - 0x000033 00:8023: 5D 81     .word off_07_815D_02
- D 0 - I - 0x000035 00:8025: 7D 81     .word off_07_817D_03
- D 0 - I - 0x000037 00:8027: 9D 81     .word off_07_819D_04
- D 0 - I - 0x000039 00:8029: B1 81     .word off_07_81B1_05
- D 0 - I - 0x00003B 00:802B: B6 81     .word off_07_81B6_06
- D 0 - I - 0x00003D 00:802D: BB 81     .word off_07_81BB_07
- D 0 - I - 0x00003F 00:802F: C0 81     .word off_07_81C0_08
- D 0 - I - 0x000041 00:8031: C5 81     .word off_07_81C5_09
- D 0 - I - 0x000043 00:8033: CA 81     .word off_07_81CA_0A
- D 0 - I - 0x000045 00:8035: CD 81     .word off_07_81CD_0B
- D 0 - I - 0x000047 00:8037: D2 81     .word off_07_81D2_0C
- D 0 - I - 0x000049 00:8039: D5 81     .word off_07_81D5_0D
- D 0 - I - 0x00004B 00:803B: DA 81     .word off_07_81DA_0E
- D 0 - I - 0x00004D 00:803D: DF 81     .word off_07_81DF_0F
- D 0 - I - 0x00004F 00:803F: E4 81     .word off_07_81E4_10
- D 0 - I - 0x000051 00:8041: E9 81     .word off_07_81E9_11
- D 0 - I - 0x000053 00:8043: EE 81     .word off_07_81EE_12
- D 0 - I - 0x000055 00:8045: F8 81     .word off_07_81F8_13
- D 0 - I - 0x000057 00:8047: 07 82     .word off_07_8207_14
- D 0 - I - 0x000059 00:8049: 11 82     .word off_07_8211_15
- D 0 - I - 0x00005B 00:804B: 16 82     .word off_07_8216_16
- D 0 - I - 0x00005D 00:804D: 20 82     .word off_07_8220_17
- D 0 - I - 0x00005F 00:804F: 2F 82     .word off_07_822F_18
- D 0 - I - 0x000061 00:8051: 39 82     .word off_07_8239_19
- D 0 - I - 0x000063 00:8053: 3E 82     .word off_07_823E_1A
- D 0 - I - 0x000065 00:8055: 48 82     .word off_07_8248_1B
- D 0 - I - 0x000067 00:8057: 57 82     .word off_07_8257_1C
- D 0 - I - 0x000069 00:8059: 61 82     .word off_07_8261_1D
- D 0 - I - 0x00006B 00:805B: 64 82     .word off_07_8264_1E
- D 0 - I - 0x00006D 00:805D: 67 82     .word off_07_8267_1F
- D 0 - I - 0x00006F 00:805F: 6A 82     .word off_07_826A_20
- D 0 - I - 0x000071 00:8061: 6D 82     .word off_07_826D_21
- D 0 - I - 0x000073 00:8063: 70 82     .word off_07_8270_22
- D 0 - I - 0x000075 00:8065: 73 82     .word off_07_8273_23
- D 0 - I - 0x000077 00:8067: 76 82     .word off_07_8276_24
- D 0 - I - 0x000079 00:8069: 79 82     .word off_07_8279_25
- D 0 - I - 0x00007B 00:806B: 7E 82     .word off_07_827E_26
- D 0 - I - 0x00007D 00:806D: 88 82     .word off_07_8288_27
- D 0 - I - 0x00007F 00:806F: 97 82     .word off_07_8297_28
- D 0 - I - 0x000081 00:8071: A1 82     .word off_07_82A1_29
- D 0 - I - 0x000083 00:8073: A6 82     .word off_07_82A6_2A
- D 0 - I - 0x000085 00:8075: B0 82     .word off_07_82B0_2B
- D 0 - I - 0x000087 00:8077: BF 82     .word off_07_82BF_2C
- D 0 - I - 0x000089 00:8079: C9 82     .word off_07_82C9_2D
- D 0 - I - 0x00008B 00:807B: CC 82     .word off_07_82CC_2E
- D 0 - I - 0x00008D 00:807D: CF 82     .word off_07_82CF_2F
- D 0 - I - 0x00008F 00:807F: D2 82     .word off_07_82D2_30
- D 0 - I - 0x000091 00:8081: D5 82     .word off_07_82D5_31
- D 0 - I - 0x000093 00:8083: DD 82     .word off_07_82DD_32
- D 0 - I - 0x000095 00:8085: E8 82     .word off_07_82E8_33
- D 0 - I - 0x000097 00:8087: F8 82     .word off_07_82F8_34
- D 0 - I - 0x000099 00:8089: 03 83     .word off_07_8303_35
- D 0 - I - 0x00009B 00:808B: 0E 83     .word off_07_830E_36
- D 0 - I - 0x00009D 00:808D: 19 83     .word off_07_8319_37
- D 0 - I - 0x00009F 00:808F: 21 83     .word off_07_8321_38
- D 0 - I - 0x0000A1 00:8091: 2C 83     .word off_07_832C_39
- D 0 - I - 0x0000A3 00:8093: 3C 83     .word off_07_833C_3A
- D 0 - I - 0x0000A5 00:8095: 47 83     .word off_07_8347_3B
- D 0 - I - 0x0000A7 00:8097: 52 83     .word off_07_8352_3C
- D 0 - I - 0x0000A9 00:8099: 5D 83     .word off_07_835D_3D
- D 0 - I - 0x0000AB 00:809B: 62 83     .word off_07_8362_3E
- D 0 - I - 0x0000AD 00:809D: 6A 83     .word off_07_836A_3F
- D 0 - I - 0x0000AF 00:809F: 77 83     .word off_07_8377_40
- D 0 - I - 0x0000B1 00:80A1: 7F 83     .word off_07_837F_41
- D 0 - I - 0x0000B3 00:80A3: 87 83     .word off_07_8387_42
- D 0 - I - 0x0000B5 00:80A5: 8F 83     .word off_07_838F_43
- D 0 - I - 0x0000B7 00:80A7: 92 83     .word off_07_8392_44
- D 0 - I - 0x0000B9 00:80A9: 95 83     .word off_07_8395_45
- D 0 - I - 0x0000BB 00:80AB: 98 83     .word off_07_8398_46
- D 0 - I - 0x0000BD 00:80AD: 9B 83     .word off_07_839B_47
- D 0 - I - 0x0000BF 00:80AF: 9E 83     .word off_07_839E_48
- D 0 - I - 0x0000C1 00:80B1: A1 83     .word off_07_83A1_49
- D 0 - I - 0x0000C3 00:80B3: A4 83     .word off_07_83A4_4A
- D 0 - I - 0x0000C5 00:80B5: A7 83     .word off_07_83A7_4B
- D 0 - I - 0x0000C7 00:80B7: AA 83     .word off_07_83AA_4C
- D 0 - I - 0x0000C9 00:80B9: AD 83     .word off_07_83AD_4D
- D 0 - I - 0x0000CB 00:80BB: B0 83     .word off_07_83B0_4E
- D 0 - I - 0x0000CD 00:80BD: B3 83     .word off_07_83B3_4F
- D 0 - I - 0x0000CF 00:80BF: BB 83     .word off_07_83BB_50
- D 0 - I - 0x0000D1 00:80C1: C8 83     .word off_07_83C8_51
- D 0 - I - 0x0000D3 00:80C3: DA 83     .word off_07_83DA_52
- D 0 - I - 0x0000D5 00:80C5: E7 83     .word off_07_83E7_53
- D 0 - I - 0x0000D7 00:80C7: F4 83     .word off_07_83F4_54
- D 0 - I - 0x0000D9 00:80C9: 01 84     .word off_07_8401_55
- D 0 - I - 0x0000DB 00:80CB: 06 84     .word off_07_8406_56
- D 0 - I - 0x0000DD 00:80CD: 0E 84     .word off_07_840E_57
- D 0 - I - 0x0000DF 00:80CF: 1D 84     .word off_07_841D_58
- D 0 - I - 0x0000E1 00:80D1: 25 84     .word off_07_8425_59
- D 0 - I - 0x0000E3 00:80D3: 2D 84     .word off_07_842D_5A
- D 0 - I - 0x0000E5 00:80D5: 35 84     .word off_07_8435_5B
- D 0 - I - 0x0000E7 00:80D7: 38 84     .word off_07_8438_5C
- D 0 - I - 0x0000E9 00:80D9: 3B 84     .word off_07_843B_5D
- D 0 - I - 0x0000EB 00:80DB: 3E 84     .word off_07_843E_5E
- D 0 - I - 0x0000ED 00:80DD: 41 84     .word off_07_8441_5F
- D 0 - I - 0x0000EF 00:80DF: 44 84     .word off_07_8444_60
- D 0 - I - 0x0000F1 00:80E1: 47 84     .word off_07_8447_61
- D 0 - I - 0x0000F3 00:80E3: 51 84     .word off_07_8451_62
- D 0 - I - 0x0000F5 00:80E5: 5B 84     .word off_07_845B_63
- D 0 - I - 0x0000F7 00:80E7: 65 84     .word off_07_8465_64
- D 0 - I - 0x0000F9 00:80E9: 68 84     .word off_07_8468_65
- D 0 - I - 0x0000FB 00:80EB: 6B 84     .word off_07_846B_66
- D 0 - I - 0x0000FD 00:80ED: 75 84     .word off_07_8475_67
- D 0 - I - 0x0000FF 00:80EF: 7F 84     .word off_07_847F_68
- - - - - - 0x000101 00:80F1: 82 84     .word off_07_8482_69
- - - - - - 0x000103 00:80F3: 82 84     .word off_07_8482_6A
- D 0 - I - 0x000105 00:80F5: 82 84     .word off_07_8482_6B
- - - - - - 0x000107 00:80F7: 8C 84     .word off_07_848C_6C
- - - - - - 0x000109 00:80F9: 8C 84     .word off_07_848C_6D
- D 0 - I - 0x00010B 00:80FB: 91 84     .word off_07_8491_6E
- D 0 - I - 0x00010D 00:80FD: A3 84     .word off_07_84A3_6F
- D 0 - I - 0x00010F 00:80FF: B8 84     .word off_07_84B8_70
- D 0 - I - 0x000111 00:8101: CB 84     .word off_07_84CB_71
- D 0 - I - 0x000113 00:8103: DE 84     .word off_07_84DE_72
- - - - - - 0x000115 00:8105: EE 84     .word off_07_84EE_73
- - - - - - 0x000117 00:8107: FE 84     .word off_07_84FE_74
- - - - - - 0x000119 00:8109: 06 85     .word off_07_8506_75
- D 0 - I - 0x00011B 00:810B: 0E 85     .word off_07_850E_76
- D 0 - I - 0x00011D 00:810D: 16 85     .word off_07_8516_77
- D 0 - I - 0x00011F 00:810F: 29 85     .word off_07_8529_78
- D 0 - I - 0x000121 00:8111: 3C 85     .word off_07_853C_79
- D 0 - I - 0x000123 00:8113: 4F 85     .word off_07_854F_7A
- - - - - - 0x000125 00:8115: 5F 85     .word off_07_855F_7B
- - - - - - 0x000127 00:8117: 6F 85     .word off_07_856F_7C
- - - - - - 0x000129 00:8119: 77 85     .word off_07_8577_7D
- D 0 - I - 0x00012B 00:811B: 7F 85     .word off_07_857F_7E
- D 0 - I - 0x00012D 00:811D: 82 85     .word off_07_8582_7F
- D 0 - I - 0x00012F 00:811F: 85 85     .word off_07_8585_80
- D 0 - I - 0x000131 00:8121: 88 85     .word off_07_8588_81
- D 0 - I - 0x000133 00:8123: 8B 85     .word off_07_858B_82
- - - - - - 0x000135 00:8125: 8E 85     .word off_07_858E_83
- - - - - - 0x000137 00:8127: 91 85     .word off_07_8591_84
- - - - - - 0x000139 00:8129: 94 85     .word off_07_8594_85
- D 0 - I - 0x00013B 00:812B: 97 85     .word off_07_8597_86
- D 0 - I - 0x00013D 00:812D: A9 85     .word off_07_85A9_87
- D 0 - I - 0x00013F 00:812F: BE 85     .word off_07_85BE_88
- D 0 - I - 0x000141 00:8131: D7 85     .word off_07_85D7_89
- D 0 - I - 0x000143 00:8133: EE 85     .word off_07_85EE_8A
- - - - - - 0x000145 00:8135: 00 86     .word off_07_8600_8B
- - - - - - 0x000147 00:8137: 10 86     .word off_07_8610_8C
- - - - - - 0x000149 00:8139: 18 86     .word off_07_8618_8D
- D 0 - I - 0x00014B 00:813B: 20 86     .word off_07_8620_8E
- D 0 - I - 0x00014D 00:813D: 2A 86     .word off_07_862A_8F
- D 0 - I - 0x00014F 00:813F: 4E 86     .word off_07_864E_90
- D 0 - I - 0x000151 00:8141: 5F 86     .word off_07_865F_91
- D 0 - I - 0x000153 00:8143: 6D 86     .word off_07_866D_92
- - - - - - 0x000155 00:8145: 2F 86     .word off_07_862F_93
- D 0 - I - 0x000157 00:8147: 34 86     .word off_07_8634_94
- - - - - - 0x000159 00:8149: 39 86     .word off_07_8639_95
- D 0 - I - 0x00015B 00:814B: 3E 86     .word off_07_863E_96
- - - - - - 0x00015D 00:814D: 46 86     .word off_07_8646_97
- D 0 - I - 0x00015F 00:814F: 7B 86     .word off_07_867B_98
- D 0 - I - 0x000161 00:8151: 9B 86     .word off_07_869B_99



off_07_8153_00:
off_07_8153_01:
- D 0 - I - 0x000163 00:8153: 81        .byte $81   ; counter
- D 0 - I - 0x000164 00:8154: 03        .byte $03   ; spr_A
- D 0 - I - 0x000165 00:8155: F8        .byte $F8, $F5, $F8   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x000168 00:8158: 01        .byte $01   ; 
- D 0 - I - 0x000169 00:8159: 43        .byte $43   ; 
- D 0 - I - 0x00016A 00:815A: 00        .byte $00, $F5, $F8   ; 



off_07_815D_02:
- D 0 - I - 0x00016D 00:815D: 82        .byte $82   ; counter
- D 0 - I - 0x00016E 00:815E: 03        .byte $03   ; spr_A
- D 0 - I - 0x00016F 00:815F: F0        .byte $F0, $F7, $F0   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x000172 00:8162: F8        .byte $F8, $F9, $F0   ; 

- D 0 - I - 0x000175 00:8165: 82        .byte $82   ; 
- D 0 - I - 0x000176 00:8166: 43        .byte $43   ; 
- D 0 - I - 0x000177 00:8167: 08        .byte $08, $F7, $F0   ; 
- D 0 - I - 0x00017A 00:816A: 00        .byte $00, $F9, $F0   ; 

- D 0 - I - 0x00017D 00:816D: 82        .byte $82   ; 
- D 0 - I - 0x00017E 00:816E: 83        .byte $83   ; 
- D 0 - I - 0x00017F 00:816F: F0        .byte $F0, $F7, $00   ; 
- D 0 - I - 0x000182 00:8172: F8        .byte $F8, $F9, $00   ; 

- D 0 - I - 0x000185 00:8175: 02        .byte $02   ; 
- D 0 - I - 0x000186 00:8176: C3        .byte $C3   ; 
- D 0 - I - 0x000187 00:8177: 08        .byte $08, $F7, $00   ; 
- D 0 - I - 0x00018A 00:817A: 00        .byte $00, $F9, $00   ; 



off_07_817D_03:
- D 0 - I - 0x00018D 00:817D: 82        .byte $82   ; counter
- D 0 - I - 0x00018E 00:817E: 03        .byte $03   ; spr_A
- D 0 - I - 0x00018F 00:817F: F0        .byte $F0, $FB, $F0   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x000192 00:8182: F8        .byte $F8, $FD, $F0   ; 

- D 0 - I - 0x000195 00:8185: 82        .byte $82   ; 
- D 0 - I - 0x000196 00:8186: 43        .byte $43   ; 
- D 0 - I - 0x000197 00:8187: 08        .byte $08, $FB, $F0   ; 
- D 0 - I - 0x00019A 00:818A: 00        .byte $00, $FD, $F0   ; 

- D 0 - I - 0x00019D 00:818D: 82        .byte $82   ; 
- D 0 - I - 0x00019E 00:818E: 83        .byte $83   ; 
- D 0 - I - 0x00019F 00:818F: F0        .byte $F0, $FB, $00   ; 
- D 0 - I - 0x0001A2 00:8192: F8        .byte $F8, $FD, $00   ; 

- D 0 - I - 0x0001A5 00:8195: 02        .byte $02   ; 
- D 0 - I - 0x0001A6 00:8196: C3        .byte $C3   ; 
- D 0 - I - 0x0001A7 00:8197: 08        .byte $08, $FB, $00   ; 
- D 0 - I - 0x0001AA 00:819A: 00        .byte $00, $FD, $00   ; 



off_07_819D_04:
- D 0 - I - 0x0001AD 00:819D: 81        .byte $81   ; counter
- D 0 - I - 0x0001AE 00:819E: 03        .byte $03   ; spr_A
- D 0 - I - 0x0001AF 00:819F: F0        .byte $F0, $FF, $F0   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x0001B2 00:81A2: 81        .byte $81   ; 
- D 0 - I - 0x0001B3 00:81A3: 43        .byte $43   ; 
- D 0 - I - 0x0001B4 00:81A4: 08        .byte $08, $FF, $F0   ; 

- D 0 - I - 0x0001B7 00:81A7: 81        .byte $81   ; 
- D 0 - I - 0x0001B8 00:81A8: 83        .byte $83   ; 
- D 0 - I - 0x0001B9 00:81A9: F0        .byte $F0, $FF, $00   ; 

- D 0 - I - 0x0001BC 00:81AC: 01        .byte $01   ; 
- D 0 - I - 0x0001BD 00:81AD: C3        .byte $C3   ; 
- D 0 - I - 0x0001BE 00:81AE: 08        .byte $08, $FF, $00   ; 



off_07_81B1_05:
- D 0 - I - 0x0001C1 00:81B1: 01        .byte $01   ; counter
- D 0 - I - 0x0001C2 00:81B2: 03        .byte $03   ; spr_A
- D 0 - I - 0x0001C3 00:81B3: FC        .byte $FC, $F3, $F9   ; spr_X, spr_T, spr_Y



off_07_81B6_06:
- D 0 - I - 0x0001C6 00:81B6: 01        .byte $01   ; counter
- D 0 - I - 0x0001C7 00:81B7: 03        .byte $03   ; spr_A
- D 0 - I - 0x0001C8 00:81B8: FC        .byte $FC, $F1, $F9   ; spr_X, spr_T, spr_Y



off_07_81BB_07:
- D 0 - I - 0x0001CB 00:81BB: 01        .byte $01   ; counter
- D 0 - I - 0x0001CC 00:81BC: 00        .byte $00   ; spr_A
- D 0 - I - 0x0001CD 00:81BD: FC        .byte $FC, $F1, $F9   ; spr_X, spr_T, spr_Y



off_07_81C0_08:
- D 0 - I - 0x0001D0 00:81C0: 01        .byte $01   ; counter
- D 0 - I - 0x0001D1 00:81C1: 03        .byte $03   ; spr_A
- D 0 - I - 0x0001D2 00:81C2: FC        .byte $FC, $EF, $F9   ; spr_X, spr_T, spr_Y



off_07_81CA_0A:
- D 0 - I - 0x0001DA 00:81CA: FF        .byte $FF   ; 
off_07_81C5_09:
- D 0 - I - 0x0001D5 00:81C5: 01        .byte $01   ; counter
- D 0 - I - 0x0001D6 00:81C6: 00        .byte $00   ; spr_A
- D 0 - I - 0x0001D7 00:81C7: FC        .byte $FC, $ED, $F8   ; spr_X, spr_T, spr_Y



off_07_81D2_0C:
- D 0 - I - 0x0001E2 00:81D2: FF        .byte $FF   ; 
off_07_81CD_0B:
- D 0 - I - 0x0001DD 00:81CD: 01        .byte $01   ; counter
- D 0 - I - 0x0001DE 00:81CE: C0        .byte $C0   ; spr_A
- D 0 - I - 0x0001DF 00:81CF: FC        .byte $FC, $ED, $F8   ; spr_X, spr_T, spr_Y



off_07_81D5_0D:
- D 0 - I - 0x0001E5 00:81D5: 01        .byte $01   ; counter
- D 0 - I - 0x0001E6 00:81D6: 03        .byte $03   ; spr_A
- D 0 - I - 0x0001E7 00:81D7: FC        .byte $FC, $EB, $F6   ; spr_X, spr_T, spr_Y



off_07_81DA_0E:
- D 0 - I - 0x0001EA 00:81DA: 01        .byte $01   ; counter
- D 0 - I - 0x0001EB 00:81DB: 00        .byte $00   ; spr_A
- D 0 - I - 0x0001EC 00:81DC: FC        .byte $FC, $EB, $F6   ; spr_X, spr_T, spr_Y



off_07_81DF_0F:
- D 0 - I - 0x0001EF 00:81DF: 01        .byte $01   ; counter
- D 0 - I - 0x0001F0 00:81E0: 01        .byte $01   ; spr_A
- D 0 - I - 0x0001F1 00:81E1: FC        .byte $FC, $E9, $F8   ; spr_X, spr_T, spr_Y



off_07_81E4_10:
- D 0 - I - 0x0001F4 00:81E4: 01        .byte $01   ; counter
- D 0 - I - 0x0001F5 00:81E5: 03        .byte $03   ; spr_A
- D 0 - I - 0x0001F6 00:81E6: FC        .byte $FC, $E9, $F9   ; spr_X, spr_T, spr_Y



off_07_826D_21:
- D 0 - I - 0x00027D 00:826D: FF        .byte $FF   ; 
off_07_81E9_11:
- D 0 - I - 0x0001F9 00:81E9: 01        .byte $01   ; counter
- D 0 - I - 0x0001FA 00:81EA: 00        .byte $00   ; spr_A
- D 0 - I - 0x0001FB 00:81EB: FB        .byte $FB, $E7, $F9   ; spr_X, spr_T, spr_Y



off_07_8270_22:
- D 0 - I - 0x000280 00:8270: FF        .byte $FF   ; 
off_07_81EE_12:
- D 0 - I - 0x0001FE 00:81EE: 81        .byte $81   ; counter
- D 0 - I - 0x0001FF 00:81EF: 00        .byte $00   ; spr_A
- D 0 - I - 0x000200 00:81F0: FB        .byte $FB, $E7, $F9   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x000203 00:81F3: 01        .byte $01   ; 
- D 0 - I - 0x000204 00:81F4: 03        .byte $03   ; 
- D 0 - I - 0x000205 00:81F5: F2        .byte $F2, $E1, $F9   ; 



off_07_8273_23:
- D 0 - I - 0x000283 00:8273: FF        .byte $FF   ; 
off_07_81F8_13:
- D 0 - I - 0x000208 00:81F8: 81        .byte $81   ; counter
- D 0 - I - 0x000209 00:81F9: 00        .byte $00   ; spr_A
- D 0 - I - 0x00020A 00:81FA: FB        .byte $FB, $E7, $F9   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x00020D 00:81FD: 81        .byte $81   ; 
- D 0 - I - 0x00020E 00:81FE: 03        .byte $03   ; 
- D 0 - I - 0x00020F 00:81FF: EB        .byte $EB, $F5, $F9   ; 

- D 0 - I - 0x000212 00:8202: 01        .byte $01   ; 
- D 0 - I - 0x000213 00:8203: 43        .byte $43   ; 
- D 0 - I - 0x000214 00:8204: F3        .byte $F3, $F5, $F9   ; 



off_07_8276_24:
- D 0 - I - 0x000286 00:8276: FF        .byte $FF   ; 
off_07_8207_14:
- D 0 - I - 0x000217 00:8207: 81        .byte $81   ; counter
- D 0 - I - 0x000218 00:8208: 00        .byte $00   ; spr_A
- D 0 - I - 0x000219 00:8209: FB        .byte $FB, $E7, $F9   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x00021C 00:820C: 01        .byte $01   ; 
- D 0 - I - 0x00021D 00:820D: 03        .byte $03   ; 
- D 0 - I - 0x00021E 00:820E: EB        .byte $EB, $E1, $F9   ; 



off_07_8261_1D:
- D 0 - I - 0x000271 00:8261: FF        .byte $FF   ; 
off_07_8211_15:
- D 0 - I - 0x000221 00:8211: 01        .byte $01   ; counter
- D 0 - I - 0x000222 00:8212: 00        .byte $00   ; spr_A
- D 0 - I - 0x000223 00:8213: FB        .byte $FB, $E5, $FA   ; spr_X, spr_T, spr_Y



off_07_8264_1E:
- D 0 - I - 0x000274 00:8264: FF        .byte $FF   ; 
off_07_8216_16:
- D 0 - I - 0x000226 00:8216: 81        .byte $81   ; counter
- D 0 - I - 0x000227 00:8217: 00        .byte $00   ; spr_A
- D 0 - I - 0x000228 00:8218: FB        .byte $FB, $E5, $FA   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x00022B 00:821B: 01        .byte $01   ; 
- D 0 - I - 0x00022C 00:821C: 03        .byte $03   ; 
- D 0 - I - 0x00022D 00:821D: F6        .byte $F6, $E1, $00   ; 



off_07_8267_1F:
- D 0 - I - 0x000277 00:8267: FF        .byte $FF   ; 
off_07_8220_17:
- D 0 - I - 0x000230 00:8220: 81        .byte $81   ; counter
- D 0 - I - 0x000231 00:8221: 00        .byte $00   ; spr_A
- D 0 - I - 0x000232 00:8222: FB        .byte $FB, $E5, $FA   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x000235 00:8225: 81        .byte $81   ; 
- D 0 - I - 0x000236 00:8226: 03        .byte $03   ; 
- D 0 - I - 0x000237 00:8227: EF        .byte $EF, $F5, $02   ; 

- D 0 - I - 0x00023A 00:822A: 01        .byte $01   ; 
- D 0 - I - 0x00023B 00:822B: 43        .byte $43   ; 
- D 0 - I - 0x00023C 00:822C: F7        .byte $F7, $F5, $02   ; 



off_07_826A_20:
- D 0 - I - 0x00027A 00:826A: FF        .byte $FF   ; 
off_07_822F_18:
- D 0 - I - 0x00023F 00:822F: 81        .byte $81   ; counter
- D 0 - I - 0x000240 00:8230: 00        .byte $00   ; spr_A
- D 0 - I - 0x000241 00:8231: FB        .byte $FB, $E5, $FA   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x000244 00:8234: 01        .byte $01   ; 
- D 0 - I - 0x000245 00:8235: 03        .byte $03   ; 
- D 0 - I - 0x000246 00:8236: F0        .byte $F0, $E1, $06   ; 



off_07_8239_19:
- D 0 - I - 0x000249 00:8239: 01        .byte $01   ; counter
- D 0 - I - 0x00024A 00:823A: 00        .byte $00   ; spr_A
- D 0 - I - 0x00024B 00:823B: FC        .byte $FC, $E3, $FB   ; spr_X, spr_T, spr_Y



off_07_823E_1A:
- D 0 - I - 0x00024E 00:823E: 81        .byte $81   ; counter
- D 0 - I - 0x00024F 00:823F: 00        .byte $00   ; spr_A
- D 0 - I - 0x000250 00:8240: FC        .byte $FC, $E3, $FB   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x000253 00:8243: 01        .byte $01   ; 
- D 0 - I - 0x000254 00:8244: 03        .byte $03   ; 
- D 0 - I - 0x000255 00:8245: FC        .byte $FC, $E1, $04   ; 



off_07_8248_1B:
- D 0 - I - 0x000258 00:8248: 81        .byte $81   ; counter
- D 0 - I - 0x000259 00:8249: 00        .byte $00   ; spr_A
- D 0 - I - 0x00025A 00:824A: FC        .byte $FC, $E3, $FB   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x00025D 00:824D: 81        .byte $81   ; counter
- D 0 - I - 0x00025E 00:824E: 03        .byte $03   ; spr_A
- D 0 - I - 0x00025F 00:824F: F8        .byte $F8, $F5, $06   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x000262 00:8252: 01        .byte $01   ; 
- D 0 - I - 0x000263 00:8253: 43        .byte $43   ; 
- D 0 - I - 0x000264 00:8254: 00        .byte $00, $F5, $06   ; 



off_07_8257_1C:
- D 0 - I - 0x000267 00:8257: 81        .byte $81   ; counter
- D 0 - I - 0x000268 00:8258: 00        .byte $00   ; spr_A
- D 0 - I - 0x000269 00:8259: FC        .byte $FC, $E3, $FB   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x00026C 00:825C: 01        .byte $01   ; 
- D 0 - I - 0x00026D 00:825D: 03        .byte $03   ; 
- D 0 - I - 0x00026E 00:825E: FC        .byte $FC, $E1, $0C   ; 



off_07_82C9_2D:
- D 0 - I - 0x0002D9 00:82C9: FF        .byte $FF   ; 
off_07_8279_25:
- D 0 - I - 0x000289 00:8279: 01        .byte $01   ; counter
- D 0 - I - 0x00028A 00:827A: C0        .byte $C0   ; spr_A
- D 0 - I - 0x00028B 00:827B: FE        .byte $FE, $E5, $F7   ; spr_X, spr_T, spr_Y



off_07_82CC_2E:
- D 0 - I - 0x0002DC 00:82CC: FF        .byte $FF   ; 
off_07_827E_26:
- D 0 - I - 0x00028E 00:827E: 81        .byte $81   ; counter
- D 0 - I - 0x00028F 00:827F: C0        .byte $C0   ; spr_A
- D 0 - I - 0x000290 00:8280: FE        .byte $FE, $E5, $F7   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x000293 00:8283: 01        .byte $01   ; 
- D 0 - I - 0x000294 00:8284: C3        .byte $C3   ; 
- D 0 - I - 0x000295 00:8285: 04        .byte $04, $E1, $F1   ; 



off_07_82CF_2F:
- D 0 - I - 0x0002DF 00:82CF: FF        .byte $FF   ; 
off_07_8288_27:
- D 0 - I - 0x000298 00:8288: 81        .byte $81   ; counter
- D 0 - I - 0x000299 00:8289: C0        .byte $C0   ; spr_A
- D 0 - I - 0x00029A 00:828A: FE        .byte $FE, $E5, $F7   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x00029D 00:828D: 81        .byte $81   ; 
- D 0 - I - 0x00029E 00:828E: 03        .byte $03   ; 
- D 0 - I - 0x00029F 00:828F: 02        .byte $02, $F5, $EE   ; 

- D 0 - I - 0x0002A2 00:8292: 01        .byte $01   ; 
- D 0 - I - 0x0002A3 00:8293: 43        .byte $43   ; 
- D 0 - I - 0x0002A4 00:8294: 0A        .byte $0A, $F5, $EE   ; 



off_07_82D2_30:
- D 0 - I - 0x0002E2 00:82D2: FF        .byte $FF   ; 
off_07_8297_28:
- D 0 - I - 0x0002A7 00:8297: 81        .byte $81   ; counter
- D 0 - I - 0x0002A8 00:8298: C0        .byte $C0   ; spr_A
- D 0 - I - 0x0002A9 00:8299: FE        .byte $FE, $E5, $F7   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x0002AC 00:829C: 01        .byte $01   ; 
- D 0 - I - 0x0002AD 00:829D: C3        .byte $C3   ; 
- D 0 - I - 0x0002AE 00:829E: 09        .byte $09, $E1, $EC   ; 



off_07_82A1_29:
- D 0 - I - 0x0002B1 00:82A1: 01        .byte $01   ; counter
- D 0 - I - 0x0002B2 00:82A2: 80        .byte $80   ; spr_A
- D 0 - I - 0x0002B3 00:82A3: FC        .byte $FC, $E3, $F6   ; spr_X, spr_T, spr_Y



off_07_82A6_2A:
- D 0 - I - 0x0002B6 00:82A6: 81        .byte $81   ; counter
- D 0 - I - 0x0002B7 00:82A7: 80        .byte $80   ; spr_A
- D 0 - I - 0x0002B8 00:82A8: FC        .byte $FC, $E3, $F6   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x0002BB 00:82AB: 01        .byte $01   ; 
- D 0 - I - 0x0002BC 00:82AC: 83        .byte $83   ; 
- D 0 - I - 0x0002BD 00:82AD: FC        .byte $FC, $E1, $EE   ; 



off_07_82B0_2B:
- D 0 - I - 0x0002C0 00:82B0: 81        .byte $81   ; counter
- D 0 - I - 0x0002C1 00:82B1: 80        .byte $80   ; spr_A
- D 0 - I - 0x0002C2 00:82B2: FC        .byte $FC, $E3, $F6   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x0002C5 00:82B5: 81        .byte $81   ; 
- D 0 - I - 0x0002C6 00:82B6: 03        .byte $03   ; 
- D 0 - I - 0x0002C7 00:82B7: F8        .byte $F8, $F5, $EB   ; 

- D 0 - I - 0x0002CA 00:82BA: 01        .byte $01   ; 
- D 0 - I - 0x0002CB 00:82BB: 43        .byte $43   ; 
- D 0 - I - 0x0002CC 00:82BC: 00        .byte $00, $F5, $EB   ; 



off_07_82BF_2C:
- D 0 - I - 0x0002CF 00:82BF: 81        .byte $81   ; counter
- D 0 - I - 0x0002D0 00:82C0: 80        .byte $80   ; spr_A
- D 0 - I - 0x0002D1 00:82C1: FC        .byte $FC, $E3, $F6   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x0002D4 00:82C4: 01        .byte $01   ; 
- D 0 - I - 0x0002D5 00:82C5: 83        .byte $83   ; 
- D 0 - I - 0x0002D6 00:82C6: FC        .byte $FC, $E1, $E4   ; 



off_07_83A1_49:
- D 0 - I - 0x0003B1 00:83A1: FF        .byte $FF   ; 
off_07_82D5_31:
- D 0 - I - 0x0002E5 00:82D5: 02        .byte $02   ; counter
- D 0 - I - 0x0002E6 00:82D6: 03        .byte $03   ; spr_A
- D 0 - I - 0x0002E7 00:82D7: F6        .byte $F6, $DD, $FA   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x0002EA 00:82DA: FE        .byte $FE, $DF, $FA   ; 



off_07_83A4_4A:
- D 0 - I - 0x0003B4 00:83A4: FF        .byte $FF   ; 
off_07_82DD_32:
- D 0 - I - 0x0002ED 00:82DD: 03        .byte $03   ; counter
- D 0 - I - 0x0002EE 00:82DE: 03        .byte $03   ; spr_A
- D 0 - I - 0x0002EF 00:82DF: F6        .byte $F6, $DD, $FA   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x0002F2 00:82E2: FE        .byte $FE, $DF, $FA   ; 
- D 0 - I - 0x0002F5 00:82E5: EE        .byte $EE, $E1, $FA   ; 



off_07_83A7_4B:
- D 0 - I - 0x0003B7 00:83A7: FF        .byte $FF   ; 
off_07_82E8_33:
- D 0 - I - 0x0002F8 00:82E8: 83        .byte $83   ; counter
- D 0 - I - 0x0002F9 00:82E9: 03        .byte $03   ; spr_A
- D 0 - I - 0x0002FA 00:82EA: F6        .byte $F6, $DD, $FA   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x0002FD 00:82ED: FE        .byte $FE, $DF, $FA   ; 
- D 0 - I - 0x000300 00:82F0: E6        .byte $E6, $F5, $FA   ; 

- D 0 - I - 0x000303 00:82F3: 01        .byte $01   ; 
- D 0 - I - 0x000304 00:82F4: 43        .byte $43   ; 
- D 0 - I - 0x000305 00:82F5: EE        .byte $EE, $F5, $FA   ; 



off_07_83AA_4C:
- D 0 - I - 0x0003BA 00:83AA: FF        .byte $FF   ; 
off_07_82F8_34:
- D 0 - I - 0x000308 00:82F8: 03        .byte $03   ; counter
- D 0 - I - 0x000309 00:82F9: 03        .byte $03   ; spr_A
- D 0 - I - 0x00030A 00:82FA: F6        .byte $F6, $DD, $FA   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x00030D 00:82FD: FE        .byte $FE, $DF, $FA   ; 
- D 0 - I - 0x000310 00:8300: E9        .byte $E9, $E1, $FA   ; 



off_07_83AD_4D:
- D 0 - I - 0x0003BD 00:83AD: FF        .byte $FF   ; 
off_07_8303_35:
- D 0 - I - 0x000313 00:8303: 03        .byte $03   ; counter
- D 0 - I - 0x000314 00:8304: 03        .byte $03   ; spr_A
- D 0 - I - 0x000315 00:8305: F6        .byte $F6, $DD, $FA   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x000318 00:8308: FE        .byte $FE, $DF, $FA   ; 
- D 0 - I - 0x00031B 00:830B: E1        .byte $E1, $E1, $FA   ; 



off_07_83B0_4E:
- D 0 - I - 0x0003C0 00:83B0: FF        .byte $FF   ; 
off_07_830E_36:
- D 0 - I - 0x00031E 00:830E: 03        .byte $03   ; counter
- D 0 - I - 0x00031F 00:830F: 03        .byte $03   ; spr_A
- D 0 - I - 0x000320 00:8310: F6        .byte $F6, $DD, $FA   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x000323 00:8313: FE        .byte $FE, $DF, $FA   ; 
- D 0 - I - 0x000326 00:8316: DF        .byte $DF, $EF, $FA   ; 



off_07_838F_43:
- D 0 - I - 0x00039F 00:838F: FF        .byte $FF   ; 
off_07_8319_37:
- D 0 - I - 0x000329 00:8319: 02        .byte $02   ; counter
- D 0 - I - 0x00032A 00:831A: 03        .byte $03   ; spr_A
- D 0 - I - 0x00032B 00:831B: F5        .byte $F5, $D9, $FC   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x00032E 00:831E: FD        .byte $FD, $DB, $FC   ; 



off_07_8392_44:
- D 0 - I - 0x0003A2 00:8392: FF        .byte $FF   ; 
off_07_8321_38:
- D 0 - I - 0x000331 00:8321: 03        .byte $03   ; counter
- D 0 - I - 0x000332 00:8322: 03        .byte $03   ; spr_A
- D 0 - I - 0x000333 00:8323: FD        .byte $FD, $DB, $FC   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x000336 00:8326: F1        .byte $F1, $E1, $04   ; 
- D 0 - I - 0x000339 00:8329: F5        .byte $F5, $D9, $FC   ; 



off_07_8395_45:
- D 0 - I - 0x0003A5 00:8395: FF        .byte $FF   ; 
off_07_832C_39:
- D 0 - I - 0x00033C 00:832C: 83        .byte $83   ; counter
- D 0 - I - 0x00033D 00:832D: 03        .byte $03   ; spr_A
- D 0 - I - 0x00033E 00:832E: F5        .byte $F5, $D9, $FC   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x000341 00:8331: FD        .byte $FD, $DB, $FC   ; 
- D 0 - I - 0x000344 00:8334: EB        .byte $EB, $F5, $06   ; 

- D 0 - I - 0x000347 00:8337: 01        .byte $01   ; counter
- D 0 - I - 0x000348 00:8338: 43        .byte $43   ; spr_A
- D 0 - I - 0x000349 00:8339: F3        .byte $F3, $F5, $06   ; spr_X, spr_T, spr_Y



off_07_8398_46:
- D 0 - I - 0x0003A8 00:8398: FF        .byte $FF   ; 
off_07_833C_3A:
- D 0 - I - 0x00034C 00:833C: 03        .byte $03   ; counter
- D 0 - I - 0x00034D 00:833D: 03        .byte $03   ; spr_A
- D 0 - I - 0x00034E 00:833E: F5        .byte $F5, $D9, $FC   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x000351 00:8341: FD        .byte $FD, $DB, $FC   ; 
- D 0 - I - 0x000354 00:8344: EE        .byte $EE, $E1, $06   ; 



off_07_839B_47:
- D 0 - I - 0x0003AB 00:839B: FF        .byte $FF   ; 
off_07_8347_3B:
- D 0 - I - 0x000357 00:8347: 03        .byte $03   ; counter
- D 0 - I - 0x000358 00:8348: 03        .byte $03   ; spr_A
- D 0 - I - 0x000359 00:8349: F5        .byte $F5, $D9, $FC   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x00035C 00:834C: FD        .byte $FD, $DB, $FC   ; 
- D 0 - I - 0x00035F 00:834F: E9        .byte $E9, $E1, $0C   ; 



off_07_839E_48:
- D 0 - I - 0x0003AE 00:839E: FF        .byte $FF   ; 
off_07_8352_3C:
- D 0 - I - 0x000362 00:8352: 03        .byte $03   ; counter
- D 0 - I - 0x000363 00:8353: 03        .byte $03   ; spr_A
- D 0 - I - 0x000364 00:8354: F5        .byte $F5, $D9, $FC   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x000367 00:8357: FD        .byte $FD, $DB, $FC   ; 
- D 0 - I - 0x00036A 00:835A: E6        .byte $E6, $EF, $0E   ; 



off_07_835D_3D:
- D 0 - I - 0x00036D 00:835D: 01        .byte $01   ; counter
- D 0 - I - 0x00036E 00:835E: 03        .byte $03   ; spr_A
- D 0 - I - 0x00036F 00:835F: FC        .byte $FC, $D7, $FB   ; spr_X, spr_T, spr_Y



off_07_8362_3E:
- D 0 - I - 0x000372 00:8362: 02        .byte $02   ; counter
- D 0 - I - 0x000373 00:8363: 03        .byte $03   ; spr_A
- D 0 - I - 0x000374 00:8364: FC        .byte $FC, $D7, $FB   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x000377 00:8367: FC        .byte $FC, $E1, $07   ; 



off_07_836A_3F:
- D 0 - I - 0x00037A 00:836A: 82        .byte $82   ; counter
- D 0 - I - 0x00037B 00:836B: 03        .byte $03   ; spr_A
- D 0 - I - 0x00037C 00:836C: FC        .byte $FC, $D7, $FB   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x00037F 00:836F: F8        .byte $F8, $F5, $0B   ; 

- D 0 - I - 0x000382 00:8372: 01        .byte $01   ; 
- D 0 - I - 0x000383 00:8373: 43        .byte $43   ; 
- D 0 - I - 0x000384 00:8374: 00        .byte $00, $F5, $0B   ; 



off_07_8377_40:
- D 0 - I - 0x000387 00:8377: 02        .byte $02   ; counter
- D 0 - I - 0x000388 00:8378: 03        .byte $03   ; spr_A
- D 0 - I - 0x000389 00:8379: FC        .byte $FC, $D7, $FB   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x00038C 00:837C: FC        .byte $FC, $E1, $0B   ; 



off_07_837F_41:
- D 0 - I - 0x00038F 00:837F: 02        .byte $02   ; counter
- D 0 - I - 0x000390 00:8380: 03        .byte $03   ; spr_A
- D 0 - I - 0x000391 00:8381: FC        .byte $FC, $D7, $FB   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x000394 00:8384: FC        .byte $FC, $E1, $0F   ; 



off_07_8387_42:
- D 0 - I - 0x000397 00:8387: 02        .byte $02   ; counter
- D 0 - I - 0x000398 00:8388: 03        .byte $03   ; spr_A
- D 0 - I - 0x000399 00:8389: FC        .byte $FC, $D7, $FB   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x00039C 00:838C: FC        .byte $FC, $EF, $13   ; 



off_07_8435_5B:
- D 0 - I - 0x000445 00:8435: FF        .byte $FF   ; 
off_07_83B3_4F:
- D 0 - I - 0x0003C3 00:83B3: 02        .byte $02   ; counter
- D 0 - I - 0x0003C4 00:83B4: C3        .byte $C3   ; spr_A
- D 0 - I - 0x0003C5 00:83B5: FC        .byte $FC, $DB, $F5   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x0003C8 00:83B8: 04        .byte $04, $D9, $F5   ; 



off_07_8438_5C:
- D 0 - I - 0x000448 00:8438: FF        .byte $FF   ; 
off_07_83BB_50:
- D 0 - I - 0x0003CB 00:83BB: 82        .byte $82   ; counter
- D 0 - I - 0x0003CC 00:83BC: C3        .byte $C3   ; spr_A
- D 0 - I - 0x0003CD 00:83BD: FC        .byte $FC, $DB, $F5   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x0003D0 00:83C0: 04        .byte $04, $D9, $F5   ; 

- D 0 - I - 0x0003D3 00:83C3: 01        .byte $01   ; 
- D 0 - I - 0x0003D4 00:83C4: 03        .byte $03   ; 
- D 0 - I - 0x0003D5 00:83C5: 07        .byte $07, $E1, $EE   ; 



off_07_843B_5D:
- D 0 - I - 0x00044B 00:843B: FF        .byte $FF   ; 
off_07_83C8_51:
- D 0 - I - 0x0003D8 00:83C8: 82        .byte $82   ; counter
- D 0 - I - 0x0003D9 00:83C9: C3        .byte $C3   ; spr_A
- D 0 - I - 0x0003DA 00:83CA: FC        .byte $FC, $DB, $F5   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x0003DD 00:83CD: 04        .byte $04, $D9, $F5   ; 

- D 0 - I - 0x0003E0 00:83D0: 81        .byte $81   ; 
- D 0 - I - 0x0003E1 00:83D1: 03        .byte $03   ; 
- D 0 - I - 0x0003E2 00:83D2: 06        .byte $06, $F5, $EA   ; 

- D 0 - I - 0x0003E5 00:83D5: 01        .byte $01   ; 
- D 0 - I - 0x0003E6 00:83D6: 43        .byte $43   ; 
- D 0 - I - 0x0003E7 00:83D7: 0E        .byte $0E, $F5, $EA   ; 



off_07_843E_5E:
- D 0 - I - 0x00044E 00:843E: FF        .byte $FF   ; 
off_07_83DA_52:
- D 0 - I - 0x0003EA 00:83DA: 82        .byte $82   ; counter
- D 0 - I - 0x0003EB 00:83DB: C3        .byte $C3   ; spr_A
- D 0 - I - 0x0003EC 00:83DC: FC        .byte $FC, $DB, $F5   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x0003EF 00:83DF: 04        .byte $04, $D9, $F5   ; 

- D 0 - I - 0x0003F2 00:83E2: 01        .byte $01   ; 
- D 0 - I - 0x0003F3 00:83E3: 43        .byte $43   ; 
- D 0 - I - 0x0003F4 00:83E4: 0A        .byte $0A, $E1, $EA   ; 



off_07_8441_5F:
- D 0 - I - 0x000451 00:8441: FF        .byte $FF   ; 
off_07_83E7_53:
- D 0 - I - 0x0003F7 00:83E7: 82        .byte $82   ; counter
- D 0 - I - 0x0003F8 00:83E8: C3        .byte $C3   ; spr_A
- D 0 - I - 0x0003F9 00:83E9: FC        .byte $FC, $DB, $F5   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x0003FC 00:83EC: 04        .byte $04, $D9, $F5   ; 

- D 0 - I - 0x0003FF 00:83EF: 01        .byte $01   ; 
- D 0 - I - 0x000400 00:83F0: 43        .byte $43   ; 
- D 0 - I - 0x000401 00:83F1: 0F        .byte $0F, $E1, $E4   ; 



off_07_8444_60:
- D 0 - I - 0x000454 00:8444: FF        .byte $FF   ; 
off_07_83F4_54:
- D 0 - I - 0x000404 00:83F4: 82        .byte $82   ; counter
- D 0 - I - 0x000405 00:83F5: C3        .byte $C3   ; spr_A
- D 0 - I - 0x000406 00:83F6: FC        .byte $FC, $DB, $F5   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x000409 00:83F9: 04        .byte $04, $D9, $F5   ; 

- D 0 - I - 0x00040C 00:83FC: 01        .byte $01   ; 
- D 0 - I - 0x00040D 00:83FD: 43        .byte $43   ; 
- D 0 - I - 0x00040E 00:83FE: 12        .byte $12, $EF, $E2   ; 



off_07_8401_55:
- D 0 - I - 0x000411 00:8401: 01        .byte $01   ; counter
- D 0 - I - 0x000412 00:8402: 83        .byte $83   ; spr_A
- D 0 - I - 0x000413 00:8403: FC        .byte $FC, $D7, $F6   ; spr_X, spr_T, spr_Y



off_07_8406_56:
- D 0 - I - 0x000416 00:8406: 02        .byte $02   ; counter
- D 0 - I - 0x000417 00:8407: 83        .byte $83   ; spr_A
- D 0 - I - 0x000418 00:8408: FC        .byte $FC, $D7, $F6   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x00041B 00:840B: FC        .byte $FC, $E1, $EA   ; 



off_07_840E_57:
- D 0 - I - 0x00041E 00:840E: 81        .byte $81   ; counter
- D 0 - I - 0x00041F 00:840F: 83        .byte $83   ; spr_A
- D 0 - I - 0x000420 00:8410: FC        .byte $FC, $D7, $F6   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x000423 00:8413: 81        .byte $81   ; 
- D 0 - I - 0x000424 00:8414: 03        .byte $03   ; 
- D 0 - I - 0x000425 00:8415: F8        .byte $F8, $F5, $E6   ; 

- D 0 - I - 0x000428 00:8418: 01        .byte $01   ; 
- D 0 - I - 0x000429 00:8419: 43        .byte $43   ; 
- D 0 - I - 0x00042A 00:841A: 00        .byte $00, $F5, $E6   ; 



off_07_841D_58:
- D 0 - I - 0x00042D 00:841D: 02        .byte $02   ; counter
- D 0 - I - 0x00042E 00:841E: 83        .byte $83   ; spr_A
- D 0 - I - 0x00042F 00:841F: FC        .byte $FC, $D7, $F6   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x000432 00:8422: FC        .byte $FC, $E1, $E6   ; 



off_07_8425_59:
- D 0 - I - 0x000435 00:8425: 02        .byte $02   ; counter
- D 0 - I - 0x000436 00:8426: 83        .byte $83   ; spr_A
- D 0 - I - 0x000437 00:8427: FC        .byte $FC, $D7, $F6   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x00043A 00:842A: FC        .byte $FC, $E1, $DA   ; 



off_07_842D_5A:
- D 0 - I - 0x00043D 00:842D: 02        .byte $02   ; counter
- D 0 - I - 0x00043E 00:842E: 83        .byte $83   ; spr_A
- D 0 - I - 0x00043F 00:842F: FC        .byte $FC, $D7, $F6   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x000442 00:8432: FC        .byte $FC, $EF, $D6   ; 



off_07_8468_65:
- D 0 - I - 0x000478 00:8468: FF        .byte $FF   ; 
off_07_8447_61:
- D 0 - I - 0x000457 00:8447: 81        .byte $81   ; counter
- D 0 - I - 0x000458 00:8448: 00        .byte $00   ; spr_A
- D 0 - I - 0x000459 00:8449: FB        .byte $FB, $E7, $F9   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x00045C 00:844C: 01        .byte $01   ; 
- D 0 - I - 0x00045D 00:844D: 03        .byte $03   ; 
- D 0 - I - 0x00045E 00:844E: E5        .byte $E5, $EF, $F9   ; 



off_07_8465_64:
- D 0 - I - 0x000475 00:8465: FF        .byte $FF   ; 
off_07_8451_62:
- D 0 - I - 0x000461 00:8451: 81        .byte $81   ; counter
- D 0 - I - 0x000462 00:8452: 00        .byte $00   ; spr_A
- D 0 - I - 0x000463 00:8453: FB        .byte $FB, $E5, $FA   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x000466 00:8456: 01        .byte $01   ; 
- D 0 - I - 0x000467 00:8457: 03        .byte $03   ; 
- D 0 - I - 0x000468 00:8458: ED        .byte $ED, $EF, $0A   ; 



off_07_845B_63:
- D 0 - I - 0x00046B 00:845B: 81        .byte $81   ; counter
- D 0 - I - 0x00046C 00:845C: 00        .byte $00   ; spr_A
- D 0 - I - 0x00046D 00:845D: FC        .byte $FC, $E3, $FB   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x000470 00:8460: 01        .byte $01   ; 
- D 0 - I - 0x000471 00:8461: 03        .byte $03   ; 
- D 0 - I - 0x000472 00:8462: FC        .byte $FC, $EF, $10   ; 



off_07_847F_68:
- D 0 - I - 0x00048F 00:847F: FF        .byte $FF   ; 
off_07_846B_66:
- D 0 - I - 0x00047B 00:846B: 81        .byte $81   ; counter
- D 0 - I - 0x00047C 00:846C: C0        .byte $C0   ; spr_A
- D 0 - I - 0x00047D 00:846D: FE        .byte $FE, $E5, $F7   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x000480 00:8470: 01        .byte $01   ; 
- D 0 - I - 0x000481 00:8471: 03        .byte $03   ; 
- D 0 - I - 0x000482 00:8472: 0D        .byte $0D, $EF, $E8   ; 



off_07_8475_67:
- D 0 - I - 0x000485 00:8475: 81        .byte $81   ; counter
- D 0 - I - 0x000486 00:8476: 80        .byte $80   ; spr_A
- D 0 - I - 0x000487 00:8477: FC        .byte $FC, $E3, $F6   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x00048A 00:847A: 01        .byte $01   ; 
- D 0 - I - 0x00048B 00:847B: 03        .byte $03   ; 
- D 0 - I - 0x00048C 00:847C: FC        .byte $FC, $EF, $DE   ; 



off_07_8482_69:
off_07_8482_6A:
off_07_8482_6B:
- D 0 - I - 0x000492 00:8482: 81        .byte $81   ; counter
- D 0 - I - 0x000493 00:8483: 03        .byte $03   ; spr_A
- D 0 - I - 0x000494 00:8484: F8        .byte $F8, $C1, $F8   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x000497 00:8487: 01        .byte $01   ; 
- D 0 - I - 0x000498 00:8488: C3        .byte $C3   ; 
- D 0 - I - 0x000499 00:8489: 00        .byte $00, $C1, $F8   ; 



off_07_848C_6C:
off_07_848C_6D:
- - - - - - 0x00049C 00:848C: 01        .byte $01   ; counter
- - - - - - 0x00049D 00:848D: 00        .byte $00   ; spr_A
- - - - - - 0x00049E 00:848E: FC        .byte $FC, $F3, $F9   ; spr_X, spr_T, spr_Y



off_07_8491_6E:
- D 0 - I - 0x0004A1 00:8491: 81        .byte $81   ; counter
- D 0 - I - 0x0004A2 00:8492: 03        .byte $03   ; spr_A
- D 0 - I - 0x0004A3 00:8493: E9        .byte $E9, $D5, $F6   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x0004A6 00:8496: 81        .byte $81   ; 
- D 0 - I - 0x0004A7 00:8497: 43        .byte $43   ; 
- D 0 - I - 0x0004A8 00:8498: F1        .byte $F1, $D5, $F6   ; 

- D 0 - I - 0x0004AB 00:849B: 02        .byte $02   ; 
- D 0 - I - 0x0004AC 00:849C: 03        .byte $03   ; 
- D 0 - I - 0x0004AD 00:849D: FD        .byte $FD, $D1, $F8   ; 
- D 0 - I - 0x0004B0 00:84A0: 0B        .byte $0B, $D1, $F0   ; 



off_07_84A3_6F:
- D 0 - I - 0x0004B3 00:84A3: 81        .byte $81   ; counter
- D 0 - I - 0x0004B4 00:84A4: 03        .byte $03   ; spr_A
- D 0 - I - 0x0004B5 00:84A5: E9        .byte $E9, $D3, $F8   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x0004B8 00:84A8: 82        .byte $82   ; 
- D 0 - I - 0x0004B9 00:84A9: 43        .byte $43   ; 
- D 0 - I - 0x0004BA 00:84AA: F1        .byte $F1, $D3, $F8   ; 
- D 0 - I - 0x0004BD 00:84AD: 01        .byte $01, $D3, $F8   ; 

- D 0 - I - 0x0004C0 00:84B0: 02        .byte $02   ; 
- D 0 - I - 0x0004C1 00:84B1: 03        .byte $03   ; 
- D 0 - I - 0x0004C2 00:84B2: F9        .byte $F9, $D3, $F8   ; 
- D 0 - I - 0x0004C5 00:84B5: 0D        .byte $0D, $D1, $F8   ; 



off_07_84B8_70:
- D 0 - I - 0x0004C8 00:84B8: 83        .byte $83   ; counter
- D 0 - I - 0x0004C9 00:84B9: 03        .byte $03   ; spr_A
- D 0 - I - 0x0004CA 00:84BA: ED        .byte $ED, $D1, $F8   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x0004CD 00:84BD: F9        .byte $F9, $D5, $F6   ; 
- D 0 - I - 0x0004D0 00:84C0: 09        .byte $09, $D3, $F8   ; 

- D 0 - I - 0x0004D3 00:84C3: 02        .byte $02   ; 
- D 0 - I - 0x0004D4 00:84C4: 43        .byte $43   ; 
- D 0 - I - 0x0004D5 00:84C5: 01        .byte $01, $D5, $F6   ; 
- D 0 - I - 0x0004D8 00:84C8: 11        .byte $11, $D3, $F8   ; 



off_07_84CB_71:
- D 0 - I - 0x0004DB 00:84CB: 82        .byte $82   ; counter
- D 0 - I - 0x0004DC 00:84CC: 43        .byte $43   ; spr_A
- D 0 - I - 0x0004DD 00:84CD: 11        .byte $11, $D5, $F6   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x0004E0 00:84D0: 01        .byte $01, $D3, $F8   ; 

- D 0 - I - 0x0004E3 00:84D3: 03        .byte $03   ; 
- D 0 - I - 0x0004E4 00:84D4: 03        .byte $03   ; 
- D 0 - I - 0x0004E5 00:84D5: 09        .byte $09, $D5, $F6   ; 
- D 0 - I - 0x0004E8 00:84D8: F9        .byte $F9, $D3, $F8   ; 
- D 0 - I - 0x0004EB 00:84DB: ED        .byte $ED, $D1, $F1   ; 



off_07_84DE_72:
- D 0 - I - 0x0004EE 00:84DE: 83        .byte $83   ; counter
- D 0 - I - 0x0004EF 00:84DF: 03        .byte $03   ; spr_A
- D 0 - I - 0x0004F0 00:84E0: ED        .byte $ED, $D1, $F8   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x0004F3 00:84E3: FD        .byte $FD, $D1, $FA   ; 
- D 0 - I - 0x0004F6 00:84E6: 09        .byte $09, $D3, $F8   ; 

- D 0 - I - 0x0004F9 00:84E9: 01        .byte $01   ; 
- D 0 - I - 0x0004FA 00:84EA: 43        .byte $43   ; 
- D 0 - I - 0x0004FB 00:84EB: 11        .byte $11, $D3, $F8   ; 



off_07_84EE_73:
- - - - - - 0x0004FE 00:84EE: 82        .byte $82   ; counter
- - - - - - 0x0004FF 00:84EF: 43        .byte $43   ; spr_A
- - - - - - 0x000500 00:84F0: 0E        .byte $0E, $D1, $F9   ; spr_X, spr_T, spr_Y
- - - - - - 0x000503 00:84F3: F1        .byte $F1, $D3, $F8   ; 

- - - - - - 0x000506 00:84F6: 02        .byte $02   ; 
- - - - - - 0x000507 00:84F7: 03        .byte $03   ; 
- - - - - - 0x000508 00:84F8: E9        .byte $E9, $D3, $F8   ; 
- - - - - - 0x00050B 00:84FB: FD        .byte $FD, $D1, $F0   ; 



off_07_84FE_74:
- - - - - - 0x00050E 00:84FE: 02        .byte $02   ; counter
- - - - - - 0x00050F 00:84FF: 43        .byte $43   ; spr_A
- - - - - - 0x000510 00:8500: F5        .byte $F5, $D1, $F6   ; spr_X, spr_T, spr_Y
- - - - - - 0x000513 00:8503: 05        .byte $05, $D1, $F8   ; 



off_07_8506_75:
- - - - - - 0x000516 00:8506: 02        .byte $02   ; counter
- - - - - - 0x000517 00:8507: 03        .byte $03   ; spr_A
- - - - - - 0x000518 00:8508: F4        .byte $F4, $D1, $EF   ; spr_X, spr_T, spr_Y
- - - - - - 0x00051B 00:850B: 03        .byte $03, $D1, $F2   ; 



off_07_857F_7E:
- D 0 - I - 0x00058F 00:857F: FF        .byte $FF   ; 
off_07_850E_76:
- D 0 - I - 0x00051E 00:850E: 02        .byte $02   ; counter
- D 0 - I - 0x00051F 00:850F: 03        .byte $03   ; spr_A
- D 0 - I - 0x000520 00:8510: 09        .byte $09, $D1, $E1   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x000523 00:8513: E9        .byte $E9, $D3, $03   ; 



off_07_8582_7F:
- D 0 - I - 0x000592 00:8582: FF        .byte $FF   ; 
off_07_8516_77:
- D 0 - I - 0x000526 00:8516: 82        .byte $82   ; counter
- D 0 - I - 0x000527 00:8517: 03        .byte $03   ; spr_A
- D 0 - I - 0x000528 00:8518: E9        .byte $E9, $D3, $01   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x00052B 00:851B: F9        .byte $F9, $D3, $F1   ; 

- D 0 - I - 0x00052E 00:851E: 03        .byte $03   ; 
- D 0 - I - 0x00052F 00:851F: 43        .byte $43   ; 
- D 0 - I - 0x000530 00:8520: F1        .byte $F1, $D3, $01   ; 
- D 0 - I - 0x000533 00:8523: 01        .byte $01, $D3, $F1   ; 
- D 0 - I - 0x000536 00:8526: 0C        .byte $0C, $D1, $E3   ; 



off_07_8585_80:
- D 0 - I - 0x000595 00:8585: FF        .byte $FF   ; 
off_07_8529_78:
- D 0 - I - 0x000539 00:8529: 82        .byte $82   ; counter
- D 0 - I - 0x00053A 00:852A: 03        .byte $03   ; spr_A
- D 0 - I - 0x00053B 00:852B: F9        .byte $F9, $D5, $F3   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x00053E 00:852E: 09        .byte $09, $D3, $E1   ; 

- D 0 - I - 0x000541 00:8531: 03        .byte $03   ; 
- D 0 - I - 0x000542 00:8532: 43        .byte $43   ; 
- D 0 - I - 0x000543 00:8533: ED        .byte $ED, $D1, $01   ; 
- D 0 - I - 0x000546 00:8536: 01        .byte $01, $D5, $F3   ; 
- D 0 - I - 0x000549 00:8539: 11        .byte $11, $D3, $E1   ; 



off_07_8588_81:
- D 0 - I - 0x000598 00:8588: FF        .byte $FF   ; 
off_07_853C_79:
- D 0 - I - 0x00054C 00:853C: 82        .byte $82   ; counter
- D 0 - I - 0x00054D 00:853D: 43        .byte $43   ; spr_A
- D 0 - I - 0x00054E 00:853E: 01        .byte $01, $D3, $F1   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x000551 00:8541: 11        .byte $11, $D5, $E3   ; 

- D 0 - I - 0x000554 00:8544: 03        .byte $03   ; 
- D 0 - I - 0x000555 00:8545: 03        .byte $03   ; 
- D 0 - I - 0x000556 00:8546: F9        .byte $F9, $D3, $F1   ; 
- D 0 - I - 0x000559 00:8549: 09        .byte $09, $D5, $E3   ; 
- D 0 - I - 0x00055C 00:854C: ED        .byte $ED, $D1, $FF   ; 



off_07_858B_82:
- D 0 - I - 0x00059B 00:858B: FF        .byte $FF   ; 
off_07_854F_7A:
- D 0 - I - 0x00055F 00:854F: 83        .byte $83   ; counter
- D 0 - I - 0x000560 00:8550: 03        .byte $03   ; spr_A
- D 0 - I - 0x000561 00:8551: ED        .byte $ED, $D1, $01   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x000564 00:8554: FD        .byte $FD, $D1, $F1   ; 
- D 0 - I - 0x000567 00:8557: 09        .byte $09, $D3, $E1   ; 

- D 0 - I - 0x00056A 00:855A: 01        .byte $01   ; 
- D 0 - I - 0x00056B 00:855B: 43        .byte $43   ; 
- D 0 - I - 0x00056C 00:855C: 11        .byte $11, $D3, $E1   ; 



off_07_858E_83:
- - - - - - 0x00059E 00:858E: FF        .byte $FF   ; 
off_07_855F_7B:
- - - - - - 0x00056F 00:855F: 81        .byte $81   ; counter
- - - - - - 0x000570 00:8560: 43        .byte $43   ; spr_A
- - - - - - 0x000571 00:8561: F1        .byte $F1, $D3, $01   ; spr_X, spr_T, spr_Y

- - - - - - 0x000574 00:8564: 03        .byte $03   ; 
- - - - - - 0x000575 00:8565: 03        .byte $03   ; 
- - - - - - 0x000576 00:8566: E9        .byte $E9, $D3, $01   ; 
- - - - - - 0x000579 00:8569: 0C        .byte $0C, $D1, $E1   ; 
- - - - - - 0x00057C 00:856C: FE        .byte $FE, $D1, $ED   ; 



off_07_8591_84:
- - - - - - 0x0005A1 00:8591: FF        .byte $FF   ; 
off_07_856F_7C:
- - - - - - 0x00057F 00:856F: 02        .byte $02   ; counter
- - - - - - 0x000580 00:8570: 03        .byte $03   ; spr_A
- - - - - - 0x000581 00:8571: F1        .byte $F1, $D1, $F9   ; spr_X, spr_T, spr_Y
- - - - - - 0x000584 00:8574: 01        .byte $01, $D1, $E9   ; 



off_07_8594_85:
- - - - - - 0x0005A4 00:8594: FF        .byte $FF   ; 
off_07_8577_7D:
- - - - - - 0x000587 00:8577: 02        .byte $02   ; counter
- - - - - - 0x000588 00:8578: 03        .byte $03   ; spr_A
- - - - - - 0x000589 00:8579: F1        .byte $F1, $D1, $F5   ; spr_X, spr_T, spr_Y
- - - - - - 0x00058C 00:857C: 01        .byte $01, $D1, $E5   ; 



off_07_8597_86:
- D 0 - I - 0x0005A7 00:8597: 81        .byte $81   ; counter
- D 0 - I - 0x0005A8 00:8598: 03        .byte $03   ; spr_A
- D 0 - I - 0x0005A9 00:8599: F8        .byte $F8, $D5, $11   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x0005AC 00:859C: 82        .byte $82   ; 
- D 0 - I - 0x0005AD 00:859D: 43        .byte $43   ; 
- D 0 - I - 0x0005AE 00:859E: 00        .byte $00, $D5, $11   ; 
- D 0 - I - 0x0005B1 00:85A1: FB        .byte $FB, $D1, $F9   ; 

- D 0 - I - 0x0005B4 00:85A4: 01        .byte $01   ; 
- D 0 - I - 0x0005B5 00:85A5: 03        .byte $03   ; 
- D 0 - I - 0x0005B6 00:85A6: 00        .byte $00, $D1, $E1   ; 



off_07_85A9_87:
- D 0 - I - 0x0005B9 00:85A9: 81        .byte $81   ; counter
- D 0 - I - 0x0005BA 00:85AA: 43        .byte $43   ; spr_A
- D 0 - I - 0x0005BB 00:85AB: 00        .byte $00, $D3, $10   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x0005BE 00:85AE: 82        .byte $82   ; 
- D 0 - I - 0x0005BF 00:85AF: 03        .byte $03   ; 
- D 0 - I - 0x0005C0 00:85B0: F8        .byte $F8, $D3, $10   ; 
- D 0 - I - 0x0005C3 00:85B3: F8        .byte $F8, $D3, $F9   ; 

- D 0 - I - 0x0005C6 00:85B6: 02        .byte $02   ; 
- D 0 - I - 0x0005C7 00:85B7: 43        .byte $43   ; 
- D 0 - I - 0x0005C8 00:85B8: 00        .byte $00, $D3, $F9   ; 
- D 0 - I - 0x0005CB 00:85BB: F8        .byte $F8, $D1, $E1   ; 



off_07_85BE_88:
- D 0 - I - 0x0005CE 00:85BE: 81        .byte $81   ; counter
- D 0 - I - 0x0005CF 00:85BF: 43        .byte $43   ; spr_A
- D 0 - I - 0x0005D0 00:85C0: FA        .byte $FA, $D1, $11   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x0005D3 00:85C3: 81        .byte $81   ; 
- D 0 - I - 0x0005D4 00:85C4: 03        .byte $03   ; 
- D 0 - I - 0x0005D5 00:85C5: F8        .byte $F8, $D5, $F9   ; 

- D 0 - I - 0x0005D8 00:85C8: 81        .byte $81   ; 
- D 0 - I - 0x0005D9 00:85C9: 43        .byte $43   ; 
- D 0 - I - 0x0005DA 00:85CA: 00        .byte $00, $D5, $F9   ; 

- D 0 - I - 0x0005DD 00:85CD: 81        .byte $81   ; 
- D 0 - I - 0x0005DE 00:85CE: 03        .byte $03   ; 
- D 0 - I - 0x0005DF 00:85CF: F8        .byte $F8, $D3, $E1   ; 

- D 0 - I - 0x0005E2 00:85D2: 01        .byte $01   ; 
- D 0 - I - 0x0005E3 00:85D3: 43        .byte $43   ; 
- D 0 - I - 0x0005E4 00:85D4: 00        .byte $00, $D3, $E1   ; 



off_07_85D7_89:
- D 0 - I - 0x0005E7 00:85D7: 81        .byte $81   ; counter
- D 0 - I - 0x0005E8 00:85D8: 03        .byte $03   ; spr_A
- D 0 - I - 0x0005E9 00:85D9: F8        .byte $F8, $D3, $F9   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x0005EC 00:85DC: 81        .byte $81   ; 
- D 0 - I - 0x0005ED 00:85DD: 43        .byte $43   ; 
- D 0 - I - 0x0005EE 00:85DE: 00        .byte $00, $D3, $F9   ; 

- D 0 - I - 0x0005F1 00:85E1: 81        .byte $81   ; 
- D 0 - I - 0x0005F2 00:85E2: 03        .byte $03   ; 
- D 0 - I - 0x0005F3 00:85E3: FA        .byte $FA, $D5, $E1   ; 

- D 0 - I - 0x0005F6 00:85E6: 02        .byte $02   ; 
- D 0 - I - 0x0005F7 00:85E7: 43        .byte $43   ; 
- D 0 - I - 0x0005F8 00:85E8: 02        .byte $02, $D5, $E1   ; 
- D 0 - I - 0x0005FB 00:85EB: F8        .byte $F8, $D1, $11   ; 



off_07_85EE_8A:
- D 0 - I - 0x0005FE 00:85EE: 81        .byte $81   ; counter
- D 0 - I - 0x0005FF 00:85EF: 43        .byte $43   ; spr_A
- D 0 - I - 0x000600 00:85F0: FB        .byte $FB, $D1, $11   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x000603 00:85F3: 82        .byte $82   ; 
- D 0 - I - 0x000604 00:85F4: 03        .byte $03   ; 
- D 0 - I - 0x000605 00:85F5: FA        .byte $FA, $D1, $F9   ; 
- D 0 - I - 0x000608 00:85F8: F8        .byte $F8, $D3, $E1   ; 

- D 0 - I - 0x00060B 00:85FB: 01        .byte $01   ; 
- D 0 - I - 0x00060C 00:85FC: 43        .byte $43   ; 
- D 0 - I - 0x00060D 00:85FD: 00        .byte $00, $D3, $E1   ; 



off_07_8600_8B:
- - - - - - 0x000610 00:8600: 81        .byte $81   ; counter
- - - - - - 0x000611 00:8601: 43        .byte $43   ; spr_A
- - - - - - 0x000612 00:8602: 01        .byte $01, $D3, $11   ; spr_X, spr_T, spr_Y

- - - - - - 0x000615 00:8605: 03        .byte $03   ; 
- - - - - - 0x000616 00:8606: 03        .byte $03   ; 
- - - - - - 0x000617 00:8607: F9        .byte $F9, $D3, $11   ; 
- - - - - - 0x00061A 00:860A: F8        .byte $F8, $D1, $E1   ; 
- - - - - - 0x00061D 00:860D: FA        .byte $FA, $D1, $F7   ; 



off_07_8610_8C:
- - - - - - 0x000620 00:8610: 02        .byte $02   ; counter
- - - - - - 0x000621 00:8611: 03        .byte $03   ; spr_A
- - - - - - 0x000622 00:8612: FB        .byte $FB, $D1, $F1   ; spr_X, spr_T, spr_Y
- - - - - - 0x000625 00:8615: FE        .byte $FE, $D1, $09   ; 



off_07_8618_8D:
- - - - - - 0x000628 00:8618: 02        .byte $02   ; counter
- - - - - - 0x000629 00:8619: 03        .byte $03   ; spr_A
- - - - - - 0x00062A 00:861A: F8        .byte $F8, $D1, $E7   ; spr_X, spr_T, spr_Y
- - - - - - 0x00062D 00:861D: FE        .byte $FE, $D1, $01   ; 



off_07_8620_8E:
- D 0 - I - 0x000630 00:8620: 81        .byte $81   ; counter
- D 0 - I - 0x000631 00:8621: 03        .byte $03   ; spr_A
- D 0 - I - 0x000632 00:8622: F8        .byte $F8, $C7, $F9   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x000635 00:8625: 01        .byte $01   ; 
- D 0 - I - 0x000636 00:8626: 43        .byte $43   ; 
- D 0 - I - 0x000637 00:8627: 00        .byte $00, $C7, $F9   ; 



off_07_862A_8F:
- D 0 - I - 0x00063A 00:862A: 01        .byte $01   ; counter
- D 0 - I - 0x00063B 00:862B: 00        .byte $00   ; spr_A
- D 0 - I - 0x00063C 00:862C: F9        .byte $F9, $ED, $F9   ; spr_X, spr_T, spr_Y



off_07_862F_93:
- - - - - - 0x00063F 00:862F: 01        .byte $01   ; counter
- - - - - - 0x000640 00:8630: C0        .byte $C0   ; spr_A
- - - - - - 0x000641 00:8631: F9        .byte $F9, $ED, $F9   ; spr_X, spr_T, spr_Y



off_07_8634_94:
- D 0 - I - 0x000644 00:8634: 01        .byte $01   ; counter
- D 0 - I - 0x000645 00:8635: 00        .byte $00   ; spr_A
- D 0 - I - 0x000646 00:8636: F9        .byte $F9, $CF, $F9   ; spr_X, spr_T, spr_Y



off_07_8639_95:
- - - - - - 0x000649 00:8639: 01        .byte $01   ; counter
- - - - - - 0x00064A 00:863A: C0        .byte $C0   ; spr_A
- - - - - - 0x00064B 00:863B: F9        .byte $F9, $CF, $F9   ; spr_X, spr_T, spr_Y



off_07_863E_96:
- D 0 - I - 0x00064E 00:863E: 02        .byte $02   ; counter
- D 0 - I - 0x00064F 00:863F: 00        .byte $00   ; spr_A
- D 0 - I - 0x000650 00:8640: F5        .byte $F5, $CB, $F9   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x000653 00:8643: FD        .byte $FD, $CD, $F9   ; 



off_07_8646_97:
- - - - - - 0x000656 00:8646: 02        .byte $02   ; counter
- - - - - - 0x000657 00:8647: C0        .byte $C0   ; spr_A
- - - - - - 0x000658 00:8648: FD        .byte $FD, $CB, $F9   ; spr_X, spr_T, spr_Y
- - - - - - 0x00065B 00:864B: F5        .byte $F5, $CD, $F9   ; 



off_07_864E_90:
- D 0 - I - 0x00065E 00:864E: 05        .byte $05   ; counter
- D 0 - I - 0x00065F 00:864F: 00        .byte $00   ; spr_A
- D 0 - I - 0x000660 00:8650: F0        .byte $F0, $31, $00   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x000663 00:8653: F8        .byte $F8, $33, $00   ; 
- D 0 - I - 0x000666 00:8656: 00        .byte $00, $35, $00   ; 
- D 0 - I - 0x000669 00:8659: 08        .byte $08, $37, $00   ; 
- D 0 - I - 0x00066C 00:865C: 10        .byte $10, $37, $08   ; 



off_07_865F_91:
- D 0 - I - 0x00066F 00:865F: 04        .byte $04   ; counter
- D 0 - I - 0x000670 00:8660: 00        .byte $00   ; spr_A
- D 0 - I - 0x000671 00:8661: F0        .byte $F0, $D7, $00   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x000674 00:8664: F8        .byte $F8, $DF, $00   ; 
- D 0 - I - 0x000677 00:8667: 00        .byte $00, $DB, $00   ; 
- D 0 - I - 0x00067A 00:866A: 08        .byte $08, $DD, $00   ; 



off_07_866D_92:
- D 0 - I - 0x00067D 00:866D: 04        .byte $04   ; counter
- D 0 - I - 0x00067E 00:866E: 00        .byte $00   ; spr_A
- D 0 - I - 0x00067F 00:866F: F0        .byte $F0, $D7, $00   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x000682 00:8672: F8        .byte $F8, $D9, $00   ; 
- D 0 - I - 0x000685 00:8675: 00        .byte $00, $DB, $00   ; 
- D 0 - I - 0x000688 00:8678: 08        .byte $08, $DD, $00   ; 



off_07_867B_98:
- D 0 - I - 0x00068B 00:867B: 82        .byte $82   ; counter
- D 0 - I - 0x00068C 00:867C: 02        .byte $02   ; spr_A
- D 0 - I - 0x00068D 00:867D: F0        .byte $F0, $D5, $F0   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x000690 00:8680: F8        .byte $F8, $D7, $F0   ; 

- D 0 - I - 0x000693 00:8683: 82        .byte $82   ; 
- D 0 - I - 0x000694 00:8684: 42        .byte $42   ; 
- D 0 - I - 0x000695 00:8685: 00        .byte $00, $D7, $F0   ; 
- D 0 - I - 0x000698 00:8688: 08        .byte $08, $D5, $F0   ; 

- D 0 - I - 0x00069B 00:868B: 82        .byte $82   ; 
- D 0 - I - 0x00069C 00:868C: 82        .byte $82   ; 
- D 0 - I - 0x00069D 00:868D: F0        .byte $F0, $D5, $00   ; 
- D 0 - I - 0x0006A0 00:8690: F8        .byte $F8, $D7, $00   ; 

- D 0 - I - 0x0006A3 00:8693: 02        .byte $02   ; 
- D 0 - I - 0x0006A4 00:8694: C2        .byte $C2   ; 
- D 0 - I - 0x0006A5 00:8695: 00        .byte $00, $D7, $00   ; 
- D 0 - I - 0x0006A8 00:8698: 08        .byte $08, $D5, $00   ; 



off_07_869B_99:
- D 0 - I - 0x0006AB 00:869B: 81        .byte $81   ; counter
- D 0 - I - 0x0006AC 00:869C: 02        .byte $02   ; spr_A
- D 0 - I - 0x0006AD 00:869D: F8        .byte $F8, $D3, $00   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x0006B0 00:86A0: 01        .byte $01   ; 
- D 0 - I - 0x0006B1 00:86A1: 42        .byte $42   ; 
- D 0 - I - 0x0006B2 00:86A2: 00        .byte $00, $D3, $00   ; 



_off032_86A5_09:
- - - - - - 0x0006B5 00:86A5: FB 86     .word off_09_86FB_00
- D 0 - I - 0x0006B7 00:86A7: FB 86     .word off_09_86FB_01
- D 0 - I - 0x0006B9 00:86A9: 47 87     .word off_09_8747_02
- D 0 - I - 0x0006BB 00:86AB: 90 87     .word off_09_8790_03
- D 0 - I - 0x0006BD 00:86AD: D4 87     .word off_09_87D4_04
- D 0 - I - 0x0006BF 00:86AF: 1A 88     .word off_09_881A_05
- D 0 - I - 0x0006C1 00:86B1: 5E 88     .word off_09_885E_06
- D 0 - I - 0x0006C3 00:86B3: A4 88     .word off_09_88A4_07
- D 0 - I - 0x0006C5 00:86B5: E6 88     .word off_09_88E6_08
- D 0 - I - 0x0006C7 00:86B7: 28 89     .word off_09_8928_09
- D 0 - I - 0x0006C9 00:86B9: 6C 89     .word off_09_896C_0A
- D 0 - I - 0x0006CB 00:86BB: BD 89     .word off_09_89BD_0B
- D 0 - I - 0x0006CD 00:86BD: FF 89     .word off_09_89FF_0C
- D 0 - I - 0x0006CF 00:86BF: 41 8A     .word off_09_8A41_0D
- D 0 - I - 0x0006D1 00:86C1: 8D 8A     .word off_09_8A8D_0E
- D 0 - I - 0x0006D3 00:86C3: D3 8A     .word off_09_8AD3_0F
- D 0 - I - 0x0006D5 00:86C5: 13 8B     .word off_09_8B13_10
- D 0 - I - 0x0006D7 00:86C7: 55 8B     .word off_09_8B55_11
- D 0 - I - 0x0006D9 00:86C9: A3 8B     .word off_09_8BA3_12
- D 0 - I - 0x0006DB 00:86CB: E5 8B     .word off_09_8BE5_13
- - - - - - 0x0006DD 00:86CD: 27 8C     .word off_09_8C27_14
- - - - - - 0x0006DF 00:86CF: 6F 8C     .word off_09_8C6F_15
- - - - - - 0x0006E1 00:86D1: AF 8C     .word off_09_8CAF_16
- D 0 - I - 0x0006E3 00:86D3: ED 8C     .word off_09_8CED_17
- D 0 - I - 0x0006E5 00:86D5: 38 8D     .word off_09_8D38_18
- D 0 - I - 0x0006E7 00:86D7: 7D 8D     .word off_09_8D7D_19
- D 0 - I - 0x0006E9 00:86D9: C2 8D     .word off_09_8DC2_1A
- D 0 - I - 0x0006EB 00:86DB: 07 8E     .word off_09_8E07_1B
- D 0 - I - 0x0006ED 00:86DD: 0A 8E     .word off_09_8E0A_1C
- D 0 - I - 0x0006EF 00:86DF: 0D 8E     .word off_09_8E0D_1D
- D 0 - I - 0x0006F1 00:86E1: 10 8E     .word off_09_8E10_1E
- D 0 - I - 0x0006F3 00:86E3: 13 8E     .word off_09_8E13_1F
- D 0 - I - 0x0006F5 00:86E5: 5D 8E     .word off_09_8E5D_20
- D 0 - I - 0x0006F7 00:86E7: A7 8E     .word off_09_8EA7_21
- D 0 - I - 0x0006F9 00:86E9: F1 8E     .word off_09_8EF1_22
- D 0 - I - 0x0006FB 00:86EB: 3B 8F     .word off_09_8F3B_23
- D 0 - I - 0x0006FD 00:86ED: 87 8F     .word off_09_8F87_24
- D 0 - I - 0x0006FF 00:86EF: CE 8F     .word off_09_8FCE_25
- D 0 - I - 0x000701 00:86F1: 12 90     .word off_09_9012_26
- D 0 - I - 0x000703 00:86F3: 54 90     .word off_09_9054_27
- D 0 - I - 0x000705 00:86F5: 94 90     .word off_09_9094_28
- D 0 - I - 0x000707 00:86F7: D8 90     .word off_09_90D8_29
- D 0 - I - 0x000709 00:86F9: 1C 91     .word off_09_911C_2A



off_09_86FB_00:
off_09_86FB_01:
- D 0 - I - 0x00070B 00:86FB: 81        .byte $81   ; counter
- D 0 - I - 0x00070C 00:86FC: 02        .byte $02   ; spr_A
- D 0 - I - 0x00070D 00:86FD: F9        .byte $F9, $81, $DE   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x000710 00:8700: 81        .byte $81   ; 
- D 0 - I - 0x000711 00:8701: 42        .byte $42   ; 
- D 0 - I - 0x000712 00:8702: 01        .byte $01, $81, $DE   ; 

- D 0 - I - 0x000715 00:8705: 84        .byte $84   ; 
- D 0 - I - 0x000716 00:8706: 02        .byte $02   ; 
- D 0 - I - 0x000717 00:8707: E9        .byte $E9, $A3, $E0   ; 
- D 0 - I - 0x00071A 00:870A: F1        .byte $F1, $A5, $E0   ; 
- D 0 - I - 0x00071D 00:870D: E1        .byte $E1, $A1, $E0   ; 
- D 0 - I - 0x000720 00:8710: E1        .byte $E1, $A7, $F0   ; 

- D 0 - I - 0x000723 00:8713: 81        .byte $81   ; 
- D 0 - I - 0x000724 00:8714: 03        .byte $03   ; 
- D 0 - I - 0x000725 00:8715: F1        .byte $F1, $A9, $F0   ; 

- D 0 - I - 0x000728 00:8718: 81        .byte $81   ; 
- D 0 - I - 0x000729 00:8719: 43        .byte $43   ; 
- D 0 - I - 0x00072A 00:871A: 09        .byte $09, $A9, $F0   ; 

- D 0 - I - 0x00072D 00:871D: 84        .byte $84   ; 
- D 0 - I - 0x00072E 00:871E: 42        .byte $42   ; 
- D 0 - I - 0x00072F 00:871F: 09        .byte $09, $A5, $E1   ; 
- D 0 - I - 0x000732 00:8722: 19        .byte $19, $A1, $E1   ; 
- D 0 - I - 0x000735 00:8725: 11        .byte $11, $A3, $E1   ; 
- D 0 - I - 0x000738 00:8728: 19        .byte $19, $A7, $F1   ; 

- D 0 - I - 0x00073B 00:872B: 81        .byte $81   ; 
- D 0 - I - 0x00073C 00:872C: 43        .byte $43   ; 
- D 0 - I - 0x00073D 00:872D: F9        .byte $F9, $B9, $00   ; 

- D 0 - I - 0x000740 00:8730: 82        .byte $82   ; 
- D 0 - I - 0x000741 00:8731: 03        .byte $03   ; 
- D 0 - I - 0x000742 00:8732: 01        .byte $01, $B9, $00   ; 
- D 0 - I - 0x000745 00:8735: F9        .byte $F9, $B5, $F0   ; 

- D 0 - I - 0x000748 00:8738: 81        .byte $81   ; 
- D 0 - I - 0x000749 00:8739: 43        .byte $43   ; 
- D 0 - I - 0x00074A 00:873A: 01        .byte $01, $B5, $F0   ; 

- D 0 - I - 0x00074D 00:873D: 81        .byte $81   ; 
- D 0 - I - 0x00074E 00:873E: 02        .byte $02   ; 
- D 0 - I - 0x00074F 00:873F: F9        .byte $F9, $83, $EE   ; 

- D 0 - I - 0x000752 00:8742: 01        .byte $01   ; 
- D 0 - I - 0x000753 00:8743: 42        .byte $42   ; 
- D 0 - I - 0x000754 00:8744: 01        .byte $01, $83, $EE   ; 



off_09_8747_02:
- D 0 - I - 0x000757 00:8747: 81        .byte $81   ; counter
- D 0 - I - 0x000758 00:8748: 02        .byte $02   ; spr_A
- D 0 - I - 0x000759 00:8749: F9        .byte $F9, $81, $E0   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x00075C 00:874C: 81        .byte $81   ; 
- D 0 - I - 0x00075D 00:874D: 42        .byte $42   ; 
- D 0 - I - 0x00075E 00:874E: 01        .byte $01, $81, $E0   ; 

- D 0 - I - 0x000761 00:8751: 81        .byte $81   ; 
- D 0 - I - 0x000762 00:8752: 43        .byte $43   ; 
- D 0 - I - 0x000763 00:8753: 09        .byte $09, $A9, $F0   ; 

- D 0 - I - 0x000766 00:8756: 84        .byte $84   ; 
- D 0 - I - 0x000767 00:8757: 42        .byte $42   ; 
- D 0 - I - 0x000768 00:8758: 09        .byte $09, $A5, $E0   ; 
- D 0 - I - 0x00076B 00:875B: 19        .byte $19, $A1, $E0   ; 
- D 0 - I - 0x00076E 00:875E: 11        .byte $11, $A3, $E0   ; 
- D 0 - I - 0x000771 00:8761: 19        .byte $19, $A7, $F0   ; 

- D 0 - I - 0x000774 00:8764: 81        .byte $81   ; 
- D 0 - I - 0x000775 00:8765: 43        .byte $43   ; 
- D 0 - I - 0x000776 00:8766: F9        .byte $F9, $B9, $00   ; 

- D 0 - I - 0x000779 00:8769: 81        .byte $81   ; 
- D 0 - I - 0x00077A 00:876A: 03        .byte $03   ; 
- D 0 - I - 0x00077B 00:876B: 01        .byte $01, $B9, $00   ; 

- D 0 - I - 0x00077E 00:876E: 84        .byte $84   ; 
- D 0 - I - 0x00077F 00:876F: 02        .byte $02   ; 
- D 0 - I - 0x000780 00:8770: E9        .byte $E9, $9D, $F4   ; 
- D 0 - I - 0x000783 00:8773: F1        .byte $F1, $9F, $F4   ; 
- D 0 - I - 0x000786 00:8776: E9        .byte $E9, $99, $E4   ; 
- D 0 - I - 0x000789 00:8779: F1        .byte $F1, $9B, $E4   ; 

- D 0 - I - 0x00078C 00:877C: 81        .byte $81   ; 
- D 0 - I - 0x00078D 00:877D: 03        .byte $03   ; 
- D 0 - I - 0x00078E 00:877E: F9        .byte $F9, $B5, $F0   ; 

- D 0 - I - 0x000791 00:8781: 81        .byte $81   ; 
- D 0 - I - 0x000792 00:8782: 43        .byte $43   ; 
- D 0 - I - 0x000793 00:8783: 01        .byte $01, $B5, $F0   ; 

- D 0 - I - 0x000796 00:8786: 81        .byte $81   ; 
- D 0 - I - 0x000797 00:8787: 02        .byte $02   ; 
- D 0 - I - 0x000798 00:8788: F9        .byte $F9, $83, $F0   ; 

- D 0 - I - 0x00079B 00:878B: 01        .byte $01   ; 
- D 0 - I - 0x00079C 00:878C: 42        .byte $42   ; 
- D 0 - I - 0x00079D 00:878D: 01        .byte $01, $83, $F0   ; 



off_09_8790_03:
- D 0 - I - 0x0007A0 00:8790: 81        .byte $81   ; counter
- D 0 - I - 0x0007A1 00:8791: 02        .byte $02   ; spr_A
- D 0 - I - 0x0007A2 00:8792: F9        .byte $F9, $81, $E0   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x0007A5 00:8795: 81        .byte $81   ; 
- D 0 - I - 0x0007A6 00:8796: 42        .byte $42   ; 
- D 0 - I - 0x0007A7 00:8797: 01        .byte $01, $81, $E0   ; 

- D 0 - I - 0x0007AA 00:879A: 81        .byte $81   ; 
- D 0 - I - 0x0007AB 00:879B: 43        .byte $43   ; 
- D 0 - I - 0x0007AC 00:879C: F9        .byte $F9, $B9, $00   ; 

- D 0 - I - 0x0007AF 00:879F: 81        .byte $81   ; 
- D 0 - I - 0x0007B0 00:87A0: 03        .byte $03   ; 
- D 0 - I - 0x0007B1 00:87A1: 01        .byte $01, $B9, $00   ; 

- D 0 - I - 0x0007B4 00:87A4: 84        .byte $84   ; 
- D 0 - I - 0x0007B5 00:87A5: 02        .byte $02   ; 
- D 0 - I - 0x0007B6 00:87A6: E9        .byte $E9, $91, $E0   ; 
- D 0 - I - 0x0007B9 00:87A9: F1        .byte $F1, $93, $E0   ; 
- D 0 - I - 0x0007BC 00:87AC: E9        .byte $E9, $95, $F0   ; 
- D 0 - I - 0x0007BF 00:87AF: F1        .byte $F1, $97, $F0   ; 

- D 0 - I - 0x0007C2 00:87B2: 84        .byte $84   ; 
- D 0 - I - 0x0007C3 00:87B3: 42        .byte $42   ; 
- D 0 - I - 0x0007C4 00:87B4: 09        .byte $09, $9B, $E4   ; 
- D 0 - I - 0x0007C7 00:87B7: 11        .byte $11, $99, $E4   ; 
- D 0 - I - 0x0007CA 00:87BA: 11        .byte $11, $9D, $F4   ; 
- D 0 - I - 0x0007CD 00:87BD: 09        .byte $09, $9F, $F4   ; 

- D 0 - I - 0x0007D0 00:87C0: 81        .byte $81   ; 
- D 0 - I - 0x0007D1 00:87C1: 03        .byte $03   ; 
- D 0 - I - 0x0007D2 00:87C2: F9        .byte $F9, $B5, $F0   ; 

- D 0 - I - 0x0007D5 00:87C5: 81        .byte $81   ; 
- D 0 - I - 0x0007D6 00:87C6: 43        .byte $43   ; 
- D 0 - I - 0x0007D7 00:87C7: 01        .byte $01, $B5, $F0   ; 

- D 0 - I - 0x0007DA 00:87CA: 81        .byte $81   ; 
- D 0 - I - 0x0007DB 00:87CB: 02        .byte $02   ; 
- D 0 - I - 0x0007DC 00:87CC: F9        .byte $F9, $83, $F0   ; 

- D 0 - I - 0x0007DF 00:87CF: 01        .byte $01   ; 
- D 0 - I - 0x0007E0 00:87D0: 42        .byte $42   ; 
- D 0 - I - 0x0007E1 00:87D1: 01        .byte $01, $83, $F0   ; 



off_09_87D4_04:
- D 0 - I - 0x0007E4 00:87D4: 81        .byte $81   ; counter
- D 0 - I - 0x0007E5 00:87D5: 02        .byte $02   ; spr_A
- D 0 - I - 0x0007E6 00:87D6: F1        .byte $F1, $93, $E0   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x0007E9 00:87D9: 81        .byte $81   ; 
- D 0 - I - 0x0007EA 00:87DA: 42        .byte $42   ; 
- D 0 - I - 0x0007EB 00:87DB: 09        .byte $09, $93, $E0   ; 

- D 0 - I - 0x0007EE 00:87DE: 83        .byte $83   ; 
- D 0 - I - 0x0007EF 00:87DF: 02        .byte $02   ; 
- D 0 - I - 0x0007F0 00:87E0: E9        .byte $E9, $95, $F0   ; 
- D 0 - I - 0x0007F3 00:87E3: F1        .byte $F1, $97, $F0   ; 
- D 0 - I - 0x0007F6 00:87E6: E9        .byte $E9, $91, $E0   ; 

- D 0 - I - 0x0007F9 00:87E9: 82        .byte $82   ; 
- D 0 - I - 0x0007FA 00:87EA: 42        .byte $42   ; 
- D 0 - I - 0x0007FB 00:87EB: 11        .byte $11, $95, $F0   ; 
- D 0 - I - 0x0007FE 00:87EE: 11        .byte $11, $91, $E0   ; 

- D 0 - I - 0x000801 00:87F1: 81        .byte $81   ; 
- D 0 - I - 0x000802 00:87F2: 03        .byte $03   ; 
- D 0 - I - 0x000803 00:87F3: F9        .byte $F9, $B5, $F0   ; 

- D 0 - I - 0x000806 00:87F6: 82        .byte $82   ; 
- D 0 - I - 0x000807 00:87F7: 43        .byte $43   ; 
- D 0 - I - 0x000808 00:87F8: 01        .byte $01, $B5, $F0   ; 
- D 0 - I - 0x00080B 00:87FB: F9        .byte $F9, $B9, $00   ; 

- D 0 - I - 0x00080E 00:87FE: 81        .byte $81   ; 
- D 0 - I - 0x00080F 00:87FF: 03        .byte $03   ; 
- D 0 - I - 0x000810 00:8800: 01        .byte $01, $B9, $00   ; 

- D 0 - I - 0x000813 00:8803: 81        .byte $81   ; 
- D 0 - I - 0x000814 00:8804: 02        .byte $02   ; 
- D 0 - I - 0x000815 00:8805: F9        .byte $F9, $85, $DF   ; 

- D 0 - I - 0x000818 00:8808: 82        .byte $82   ; 
- D 0 - I - 0x000819 00:8809: 42        .byte $42   ; 
- D 0 - I - 0x00081A 00:880A: 01        .byte $01, $85, $DF   ; 
- D 0 - I - 0x00081D 00:880D: 09        .byte $09, $97, $F0   ; 

- D 0 - I - 0x000820 00:8810: 81        .byte $81   ; 
- D 0 - I - 0x000821 00:8811: 02        .byte $02   ; 
- D 0 - I - 0x000822 00:8812: F9        .byte $F9, $87, $EF   ; 

- D 0 - I - 0x000825 00:8815: 01        .byte $01   ; 
- D 0 - I - 0x000826 00:8816: 42        .byte $42   ; 
- D 0 - I - 0x000827 00:8817: 01        .byte $01, $87, $EF   ; 



off_09_881A_05:
- D 0 - I - 0x00082A 00:881A: 81        .byte $81   ; counter
- D 0 - I - 0x00082B 00:881B: 02        .byte $02   ; spr_A
- D 0 - I - 0x00082C 00:881C: F1        .byte $F1, $93, $E0   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x00082F 00:881F: 81        .byte $81   ; 
- D 0 - I - 0x000830 00:8820: 42        .byte $42   ; 
- D 0 - I - 0x000831 00:8821: 09        .byte $09, $93, $E0   ; 

- D 0 - I - 0x000834 00:8824: 83        .byte $83   ; 
- D 0 - I - 0x000835 00:8825: 02        .byte $02   ; 
- D 0 - I - 0x000836 00:8826: E9        .byte $E9, $95, $F0   ; 
- D 0 - I - 0x000839 00:8829: F1        .byte $F1, $97, $F0   ; 
- D 0 - I - 0x00083C 00:882C: E9        .byte $E9, $91, $E0   ; 

- D 0 - I - 0x00083F 00:882F: 82        .byte $82   ; 
- D 0 - I - 0x000840 00:8830: 42        .byte $42   ; 
- D 0 - I - 0x000841 00:8831: 11        .byte $11, $95, $F0   ; 
- D 0 - I - 0x000844 00:8834: 11        .byte $11, $91, $E0   ; 

- D 0 - I - 0x000847 00:8837: 81        .byte $81   ; 
- D 0 - I - 0x000848 00:8838: 03        .byte $03   ; 
- D 0 - I - 0x000849 00:8839: F9        .byte $F9, $B5, $F0   ; 

- D 0 - I - 0x00084C 00:883C: 82        .byte $82   ; 
- D 0 - I - 0x00084D 00:883D: 43        .byte $43   ; 
- D 0 - I - 0x00084E 00:883E: 01        .byte $01, $B5, $F0   ; 
- D 0 - I - 0x000851 00:8841: F9        .byte $F9, $B9, $00   ; 

- D 0 - I - 0x000854 00:8844: 81        .byte $81   ; 
- D 0 - I - 0x000855 00:8845: 03        .byte $03   ; 
- D 0 - I - 0x000856 00:8846: 01        .byte $01, $B9, $00   ; 

- D 0 - I - 0x000859 00:8849: 81        .byte $81   ; 
- D 0 - I - 0x00085A 00:884A: 02        .byte $02   ; 
- D 0 - I - 0x00085B 00:884B: F9        .byte $F9, $89, $DB   ; 

- D 0 - I - 0x00085E 00:884E: 83        .byte $83   ; 
- D 0 - I - 0x00085F 00:884F: 42        .byte $42   ; 
- D 0 - I - 0x000860 00:8850: 01        .byte $01, $89, $DB   ; 
- D 0 - I - 0x000863 00:8853: 01        .byte $01, $8B, $EB   ; 
- D 0 - I - 0x000866 00:8856: 09        .byte $09, $97, $F0   ; 

- D 0 - I - 0x000869 00:8859: 01        .byte $01   ; 
- D 0 - I - 0x00086A 00:885A: 02        .byte $02   ; 
- D 0 - I - 0x00086B 00:885B: F9        .byte $F9, $8B, $EB   ; 



off_09_885E_06:
- D 0 - I - 0x00086E 00:885E: 81        .byte $81   ; counter
- D 0 - I - 0x00086F 00:885F: 02        .byte $02   ; spr_A
- D 0 - I - 0x000870 00:8860: F1        .byte $F1, $93, $DE   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x000873 00:8863: 81        .byte $81   ; 
- D 0 - I - 0x000874 00:8864: 42        .byte $42   ; 
- D 0 - I - 0x000875 00:8865: 09        .byte $09, $93, $DE   ; 

- D 0 - I - 0x000878 00:8868: 83        .byte $83   ; 
- D 0 - I - 0x000879 00:8869: 02        .byte $02   ; 
- D 0 - I - 0x00087A 00:886A: E9        .byte $E9, $95, $EE   ; 
- D 0 - I - 0x00087D 00:886D: F1        .byte $F1, $97, $EE   ; 
- D 0 - I - 0x000880 00:8870: E9        .byte $E9, $91, $DE   ; 

- D 0 - I - 0x000883 00:8873: 82        .byte $82   ; 
- D 0 - I - 0x000884 00:8874: 42        .byte $42   ; 
- D 0 - I - 0x000885 00:8875: 11        .byte $11, $95, $EE   ; 
- D 0 - I - 0x000888 00:8878: 11        .byte $11, $91, $DE   ; 

- D 0 - I - 0x00088B 00:887B: 81        .byte $81   ; 
- D 0 - I - 0x00088C 00:887C: 03        .byte $03   ; 
- D 0 - I - 0x00088D 00:887D: F9        .byte $F9, $B5, $F0   ; 

- D 0 - I - 0x000890 00:8880: 82        .byte $82   ; 
- D 0 - I - 0x000891 00:8881: 43        .byte $43   ; 
- D 0 - I - 0x000892 00:8882: 01        .byte $01, $B5, $F0   ; 
- D 0 - I - 0x000895 00:8885: F9        .byte $F9, $B9, $00   ; 

- D 0 - I - 0x000898 00:8888: 81        .byte $81   ; 
- D 0 - I - 0x000899 00:8889: 03        .byte $03   ; 
- D 0 - I - 0x00089A 00:888A: 01        .byte $01, $B9, $00   ; 

- D 0 - I - 0x00089D 00:888D: 81        .byte $81   ; 
- D 0 - I - 0x00089E 00:888E: 02        .byte $02   ; 
- D 0 - I - 0x00089F 00:888F: F9        .byte $F9, $8D, $E0   ; 

- D 0 - I - 0x0008A2 00:8892: 82        .byte $82   ; 
- D 0 - I - 0x0008A3 00:8893: 42        .byte $42   ; 
- D 0 - I - 0x0008A4 00:8894: 01        .byte $01, $8D, $E0   ; 
- D 0 - I - 0x0008A7 00:8897: 01        .byte $01, $8B, $F0   ; 

- D 0 - I - 0x0008AA 00:889A: 81        .byte $81   ; 
- D 0 - I - 0x0008AB 00:889B: 02        .byte $02   ; 
- D 0 - I - 0x0008AC 00:889C: F9        .byte $F9, $8B, $F0   ; 

- D 0 - I - 0x0008AF 00:889F: 01        .byte $01   ; 
- D 0 - I - 0x0008B0 00:88A0: 42        .byte $42   ; 
- D 0 - I - 0x0008B1 00:88A1: 09        .byte $09, $97, $EE   ; 



off_09_88A4_07:
- D 0 - I - 0x0008B4 00:88A4: 81        .byte $81   ; counter
- D 0 - I - 0x0008B5 00:88A5: 02        .byte $02   ; spr_A
- D 0 - I - 0x0008B6 00:88A6: F1        .byte $F1, $93, $E0   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x0008B9 00:88A9: 81        .byte $81   ; 
- D 0 - I - 0x0008BA 00:88AA: 42        .byte $42   ; 
- D 0 - I - 0x0008BB 00:88AB: 09        .byte $09, $93, $E0   ; 

- D 0 - I - 0x0008BE 00:88AE: 83        .byte $83   ; 
- D 0 - I - 0x0008BF 00:88AF: 02        .byte $02   ; 
- D 0 - I - 0x0008C0 00:88B0: E9        .byte $E9, $95, $F0   ; 
- D 0 - I - 0x0008C3 00:88B3: F1        .byte $F1, $97, $F0   ; 
- D 0 - I - 0x0008C6 00:88B6: E9        .byte $E9, $91, $E0   ; 

- D 0 - I - 0x0008C9 00:88B9: 82        .byte $82   ; 
- D 0 - I - 0x0008CA 00:88BA: 42        .byte $42   ; 
- D 0 - I - 0x0008CB 00:88BB: 11        .byte $11, $95, $F0   ; 
- D 0 - I - 0x0008CE 00:88BE: 11        .byte $11, $91, $E0   ; 

- D 0 - I - 0x0008D1 00:88C1: 81        .byte $81   ; 
- D 0 - I - 0x0008D2 00:88C2: 03        .byte $03   ; 
- D 0 - I - 0x0008D3 00:88C3: F9        .byte $F9, $B5, $F0   ; 

- D 0 - I - 0x0008D6 00:88C6: 82        .byte $82   ; 
- D 0 - I - 0x0008D7 00:88C7: 43        .byte $43   ; 
- D 0 - I - 0x0008D8 00:88C8: 01        .byte $01, $B5, $F0   ; 
- D 0 - I - 0x0008DB 00:88CB: F9        .byte $F9, $B9, $00   ; 

- D 0 - I - 0x0008DE 00:88CE: 81        .byte $81   ; 
- D 0 - I - 0x0008DF 00:88CF: 03        .byte $03   ; 
- D 0 - I - 0x0008E0 00:88D0: 01        .byte $01, $B9, $00   ; 

- D 0 - I - 0x0008E3 00:88D3: 82        .byte $82   ; 
- D 0 - I - 0x0008E4 00:88D4: 02        .byte $02   ; 
- D 0 - I - 0x0008E5 00:88D5: F8        .byte $F8, $89, $E1   ; 
- D 0 - I - 0x0008E8 00:88D8: F8        .byte $F8, $8B, $F1   ; 

- D 0 - I - 0x0008EB 00:88DB: 03        .byte $03   ; 
- D 0 - I - 0x0008EC 00:88DC: 42        .byte $42   ; 
- D 0 - I - 0x0008ED 00:88DD: 00        .byte $00, $89, $E1   ; 
- D 0 - I - 0x0008F0 00:88E0: 00        .byte $00, $8B, $F1   ; 
- D 0 - I - 0x0008F3 00:88E3: 09        .byte $09, $97, $F0   ; 



off_09_88E6_08:
- D 0 - I - 0x0008F6 00:88E6: 81        .byte $81   ; counter
- D 0 - I - 0x0008F7 00:88E7: 02        .byte $02   ; spr_A
- D 0 - I - 0x0008F8 00:88E8: F1        .byte $F1, $93, $DF   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x0008FB 00:88EB: 81        .byte $81   ; 
- D 0 - I - 0x0008FC 00:88EC: 42        .byte $42   ; 
- D 0 - I - 0x0008FD 00:88ED: 09        .byte $09, $93, $DD   ; 

- D 0 - I - 0x000900 00:88F0: 83        .byte $83   ; 
- D 0 - I - 0x000901 00:88F1: 02        .byte $02   ; 
- D 0 - I - 0x000902 00:88F2: E9        .byte $E9, $95, $EF   ; 
- D 0 - I - 0x000905 00:88F5: F1        .byte $F1, $97, $EF   ; 
- D 0 - I - 0x000908 00:88F8: E9        .byte $E9, $91, $DF   ; 

- D 0 - I - 0x00090B 00:88FB: 82        .byte $82   ; 
- D 0 - I - 0x00090C 00:88FC: 42        .byte $42   ; 
- D 0 - I - 0x00090D 00:88FD: 11        .byte $11, $95, $ED   ; 
- D 0 - I - 0x000910 00:8900: 11        .byte $11, $91, $DD   ; 

- D 0 - I - 0x000913 00:8903: 81        .byte $81   ; 
- D 0 - I - 0x000914 00:8904: 03        .byte $03   ; 
- D 0 - I - 0x000915 00:8905: F9        .byte $F9, $B5, $F0   ; 

- D 0 - I - 0x000918 00:8908: 82        .byte $82   ; 
- D 0 - I - 0x000919 00:8909: 43        .byte $43   ; 
- D 0 - I - 0x00091A 00:890A: 01        .byte $01, $B5, $F0   ; 
- D 0 - I - 0x00091D 00:890D: F9        .byte $F9, $B9, $00   ; 

- D 0 - I - 0x000920 00:8910: 81        .byte $81   ; 
- D 0 - I - 0x000921 00:8911: 03        .byte $03   ; 
- D 0 - I - 0x000922 00:8912: 01        .byte $01, $B9, $00   ; 

- D 0 - I - 0x000925 00:8915: 82        .byte $82   ; 
- D 0 - I - 0x000926 00:8916: 02        .byte $02   ; 
- D 0 - I - 0x000927 00:8917: FA        .byte $FA, $8D, $DF   ; 
- D 0 - I - 0x00092A 00:891A: FA        .byte $FA, $8B, $EF   ; 

- D 0 - I - 0x00092D 00:891D: 03        .byte $03   ; 
- D 0 - I - 0x00092E 00:891E: 42        .byte $42   ; 
- D 0 - I - 0x00092F 00:891F: 02        .byte $02, $8D, $DF   ; 
- D 0 - I - 0x000932 00:8922: 02        .byte $02, $8B, $EF   ; 
- D 0 - I - 0x000935 00:8925: 09        .byte $09, $97, $ED   ; 



off_09_8928_09:
- D 0 - I - 0x000938 00:8928: 81        .byte $81   ; counter
- D 0 - I - 0x000939 00:8929: 02        .byte $02   ; spr_A
- D 0 - I - 0x00093A 00:892A: F9        .byte $F9, $81, $E0   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x00093D 00:892D: 81        .byte $81   ; 
- D 0 - I - 0x00093E 00:892E: 42        .byte $42   ; 
- D 0 - I - 0x00093F 00:892F: 01        .byte $01, $81, $E0   ; 

- D 0 - I - 0x000942 00:8932: 81        .byte $81   ; 
- D 0 - I - 0x000943 00:8933: 03        .byte $03   ; 
- D 0 - I - 0x000944 00:8934: F9        .byte $F9, $B5, $F0   ; 

- D 0 - I - 0x000947 00:8937: 81        .byte $81   ; 
- D 0 - I - 0x000948 00:8938: 43        .byte $43   ; 
- D 0 - I - 0x000949 00:8939: 01        .byte $01, $B5, $F0   ; 

- D 0 - I - 0x00094C 00:893C: 84        .byte $84   ; 
- D 0 - I - 0x00094D 00:893D: 02        .byte $02   ; 
- D 0 - I - 0x00094E 00:893E: E9        .byte $E9, $99, $E4   ; 
- D 0 - I - 0x000951 00:8941: F1        .byte $F1, $9B, $E4   ; 
- D 0 - I - 0x000954 00:8944: E9        .byte $E9, $9D, $F4   ; 
- D 0 - I - 0x000957 00:8947: F1        .byte $F1, $9F, $F4   ; 

- D 0 - I - 0x00095A 00:894A: 84        .byte $84   ; 
- D 0 - I - 0x00095B 00:894B: 42        .byte $42   ; 
- D 0 - I - 0x00095C 00:894C: 11        .byte $11, $99, $E4   ; 
- D 0 - I - 0x00095F 00:894F: 09        .byte $09, $9B, $E4   ; 
- D 0 - I - 0x000962 00:8952: 11        .byte $11, $9D, $F4   ; 
- D 0 - I - 0x000965 00:8955: 09        .byte $09, $9F, $F4   ; 

- D 0 - I - 0x000968 00:8958: 81        .byte $81   ; 
- D 0 - I - 0x000969 00:8959: 43        .byte $43   ; 
- D 0 - I - 0x00096A 00:895A: F9        .byte $F9, $BD, $00   ; 

- D 0 - I - 0x00096D 00:895D: 81        .byte $81   ; 
- D 0 - I - 0x00096E 00:895E: 03        .byte $03   ; 
- D 0 - I - 0x00096F 00:895F: 01        .byte $01, $B9, $00   ; 

- D 0 - I - 0x000972 00:8962: 81        .byte $81   ; 
- D 0 - I - 0x000973 00:8963: 02        .byte $02   ; 
- D 0 - I - 0x000974 00:8964: F9        .byte $F9, $83, $F0   ; 
- D 0 - I - 0x000977 00:8967: 01        .byte $01   ; 
- D 0 - I - 0x000978 00:8968: 42        .byte $42   ; 
- D 0 - I - 0x000979 00:8969: 01        .byte $01, $83, $F0   ; 



off_09_896C_0A:
- D 0 - I - 0x00097C 00:896C: 81        .byte $81   ; counter
- D 0 - I - 0x00097D 00:896D: 02        .byte $02   ; spr_A
- D 0 - I - 0x00097E 00:896E: F8        .byte $F8, $81, $E0   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x000981 00:8971: 81        .byte $81   ; 
- D 0 - I - 0x000982 00:8972: 42        .byte $42   ; 
- D 0 - I - 0x000983 00:8973: 00        .byte $00, $81, $E0   ; 

- D 0 - I - 0x000986 00:8976: 85        .byte $85   ; 
- D 0 - I - 0x000987 00:8977: 02        .byte $02   ; 
- D 0 - I - 0x000988 00:8978: E9        .byte $E9, $AD, $F0   ; 
- D 0 - I - 0x00098B 00:897B: F1        .byte $F1, $AF, $F0   ; 
- D 0 - I - 0x00098E 00:897E: EE        .byte $EE, $B1, $00   ; 
- D 0 - I - 0x000991 00:8981: EE        .byte $EE, $B3, $10   ; 
- D 0 - I - 0x000994 00:8984: F1        .byte $F1, $93, $E0   ; 

- D 0 - I - 0x000997 00:8987: 84        .byte $84   ; 
- D 0 - I - 0x000998 00:8988: 42        .byte $42   ; 
- D 0 - I - 0x000999 00:8989: 09        .byte $09, $A5, $E0   ; 
- D 0 - I - 0x00099C 00:898C: 11        .byte $11, $A3, $E0   ; 
- D 0 - I - 0x00099F 00:898F: 19        .byte $19, $A1, $E0   ; 
- D 0 - I - 0x0009A2 00:8992: 19        .byte $19, $A7, $F0   ; 

- D 0 - I - 0x0009A5 00:8995: 81        .byte $81   ; 
- D 0 - I - 0x0009A6 00:8996: 43        .byte $43   ; 
- D 0 - I - 0x0009A7 00:8997: 09        .byte $09, $A9, $F0   ; 

- D 0 - I - 0x0009AA 00:899A: 81        .byte $81   ; 
- D 0 - I - 0x0009AB 00:899B: 03        .byte $03   ; 
- D 0 - I - 0x0009AC 00:899C: F9        .byte $F9, $B5, $F0   ; 

- D 0 - I - 0x0009AF 00:899F: 81        .byte $81   ; 
- D 0 - I - 0x0009B0 00:89A0: 43        .byte $43   ; 
- D 0 - I - 0x0009B1 00:89A1: 01        .byte $01, $B5, $F0   ; 

- D 0 - I - 0x0009B4 00:89A4: 81        .byte $81   ; 
- D 0 - I - 0x0009B5 00:89A5: 03        .byte $03   ; 
- D 0 - I - 0x0009B6 00:89A6: F9        .byte $F9, $BB, $00   ; 

- D 0 - I - 0x0009B9 00:89A9: 81        .byte $81   ; 
- D 0 - I - 0x0009BA 00:89AA: 02        .byte $02   ; 
- D 0 - I - 0x0009BB 00:89AB: F8        .byte $F8, $83, $F0   ; 

- D 0 - I - 0x0009BE 00:89AE: 81        .byte $81   ; 
- D 0 - I - 0x0009BF 00:89AF: 42        .byte $42   ; 
- D 0 - I - 0x0009C0 00:89B0: 00        .byte $00, $83, $F0   ; 

- D 0 - I - 0x0009C3 00:89B3: 81        .byte $81   ; 
- D 0 - I - 0x0009C4 00:89B4: 02        .byte $02   ; 
- D 0 - I - 0x0009C5 00:89B5: E9        .byte $E9, $AB, $E0   ; 

- D 0 - I - 0x0009C8 00:89B8: 01        .byte $01   ; 
- D 0 - I - 0x0009C9 00:89B9: 03        .byte $03   ; 
- D 0 - I - 0x0009CA 00:89BA: 01        .byte $01, $B9, $00   ; 



off_09_89BD_0B:
- D 0 - I - 0x0009CD 00:89BD: 81        .byte $81   ; counter
- D 0 - I - 0x0009CE 00:89BE: 02        .byte $02   ; spr_A
- D 0 - I - 0x0009CF 00:89BF: F9        .byte $F9, $85, $E0   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x0009D2 00:89C2: 81        .byte $81   ; 
- D 0 - I - 0x0009D3 00:89C3: 42        .byte $42   ; 
- D 0 - I - 0x0009D4 00:89C4: 01        .byte $01, $85, $E0   ; 

- D 0 - I - 0x0009D7 00:89C7: 84        .byte $84   ; 
- D 0 - I - 0x0009D8 00:89C8: 02        .byte $02   ; 
- D 0 - I - 0x0009D9 00:89C9: F1        .byte $F1, $93, $E0   ; 
- D 0 - I - 0x0009DC 00:89CC: F1        .byte $F1, $97, $F0   ; 
- D 0 - I - 0x0009DF 00:89CF: E9        .byte $E9, $91, $E0   ; 
- D 0 - I - 0x0009E2 00:89D2: E9        .byte $E9, $95, $F0   ; 

- D 0 - I - 0x0009E5 00:89D5: 84        .byte $84   ; 
- D 0 - I - 0x0009E6 00:89D6: 42        .byte $42   ; 
- D 0 - I - 0x0009E7 00:89D7: 11        .byte $11, $99, $E4   ; 
- D 0 - I - 0x0009EA 00:89DA: 09        .byte $09, $9B, $E4   ; 
- D 0 - I - 0x0009ED 00:89DD: 11        .byte $11, $9D, $F4   ; 
- D 0 - I - 0x0009F0 00:89E0: 09        .byte $09, $9F, $F4   ; 

- D 0 - I - 0x0009F3 00:89E3: 81        .byte $81   ; 
- D 0 - I - 0x0009F4 00:89E4: 03        .byte $03   ; 
- D 0 - I - 0x0009F5 00:89E5: F9        .byte $F9, $B5, $F0   ; 

- D 0 - I - 0x0009F8 00:89E8: 81        .byte $81   ; 
- D 0 - I - 0x0009F9 00:89E9: 43        .byte $43   ; 
- D 0 - I - 0x0009FA 00:89EA: 01        .byte $01, $B5, $F0   ; 

- D 0 - I - 0x0009FD 00:89ED: 82        .byte $82   ; 
- D 0 - I - 0x0009FE 00:89EE: 03        .byte $03   ; 
- D 0 - I - 0x0009FF 00:89EF: 01        .byte $01, $B9, $00   ; 
- D 0 - I - 0x000A02 00:89F2: F9        .byte $F9, $B7, $00   ; 

- D 0 - I - 0x000A05 00:89F5: 81        .byte $81   ; 
- D 0 - I - 0x000A06 00:89F6: 02        .byte $02   ; 
- D 0 - I - 0x000A07 00:89F7: F9        .byte $F9, $87, $F0   ; 

- D 0 - I - 0x000A0A 00:89FA: 01        .byte $01   ; 
- D 0 - I - 0x000A0B 00:89FB: 42        .byte $42   ; 
- D 0 - I - 0x000A0C 00:89FC: 01        .byte $01, $87, $F0   ; 



off_09_89FF_0C:
- D 0 - I - 0x000A0F 00:89FF: 81        .byte $81   ; counter
- D 0 - I - 0x000A10 00:8A00: 02        .byte $02   ; spr_A
- D 0 - I - 0x000A11 00:8A01: F9        .byte $F9, $89, $DE   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x000A14 00:8A04: 81        .byte $81   ; 
- D 0 - I - 0x000A15 00:8A05: 42        .byte $42   ; 
- D 0 - I - 0x000A16 00:8A06: 01        .byte $01, $89, $DE   ; 

- D 0 - I - 0x000A19 00:8A09: 84        .byte $84   ; 
- D 0 - I - 0x000A1A 00:8A0A: 02        .byte $02   ; 
- D 0 - I - 0x000A1B 00:8A0B: F1        .byte $F1, $9B, $E4   ; 
- D 0 - I - 0x000A1E 00:8A0E: E9        .byte $E9, $99, $E4   ; 
- D 0 - I - 0x000A21 00:8A11: E9        .byte $E9, $9D, $F4   ; 
- D 0 - I - 0x000A24 00:8A14: F1        .byte $F1, $9F, $F4   ; 

- D 0 - I - 0x000A27 00:8A17: 84        .byte $84   ; 
- D 0 - I - 0x000A28 00:8A18: 42        .byte $42   ; 
- D 0 - I - 0x000A29 00:8A19: 09        .byte $09, $93, $E0   ; 
- D 0 - I - 0x000A2C 00:8A1C: 11        .byte $11, $91, $E0   ; 
- D 0 - I - 0x000A2F 00:8A1F: 11        .byte $11, $95, $F0   ; 
- D 0 - I - 0x000A32 00:8A22: 09        .byte $09, $97, $F0   ; 

- D 0 - I - 0x000A35 00:8A25: 81        .byte $81   ; 
- D 0 - I - 0x000A36 00:8A26: 03        .byte $03   ; 
- D 0 - I - 0x000A37 00:8A27: F9        .byte $F9, $B5, $F0   ; 

- D 0 - I - 0x000A3A 00:8A2A: 81        .byte $81   ; 
- D 0 - I - 0x000A3B 00:8A2B: 43        .byte $43   ; 
- D 0 - I - 0x000A3C 00:8A2C: 01        .byte $01, $B5, $F0   ; 

- D 0 - I - 0x000A3F 00:8A2F: 82        .byte $82   ; 
- D 0 - I - 0x000A40 00:8A30: 03        .byte $03   ; 
- D 0 - I - 0x000A41 00:8A31: F9        .byte $F9, $BB, $00   ; 
- D 0 - I - 0x000A44 00:8A34: 01        .byte $01, $BD, $00   ; 

- D 0 - I - 0x000A47 00:8A37: 81        .byte $81   ; 
- D 0 - I - 0x000A48 00:8A38: 02        .byte $02   ; 
- D 0 - I - 0x000A49 00:8A39: F9        .byte $F9, $8B, $EE   ; 

- D 0 - I - 0x000A4C 00:8A3C: 01        .byte $01   ; 
- D 0 - I - 0x000A4D 00:8A3D: 42        .byte $42   ; 
- D 0 - I - 0x000A4E 00:8A3E: 01        .byte $01, $8B, $EE   ; 



off_09_8A41_0D:
- D 0 - I - 0x000A51 00:8A41: 81        .byte $81   ; counter
- D 0 - I - 0x000A52 00:8A42: 02        .byte $02   ; spr_A
- D 0 - I - 0x000A53 00:8A43: F9        .byte $F9, $8D, $E0   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x000A56 00:8A46: 81        .byte $81   ; 
- D 0 - I - 0x000A57 00:8A47: 42        .byte $42   ; 
- D 0 - I - 0x000A58 00:8A48: 01        .byte $01, $89, $E0   ; 

- D 0 - I - 0x000A5B 00:8A4B: 84        .byte $84   ; 
- D 0 - I - 0x000A5C 00:8A4C: 02        .byte $02   ; 
- D 0 - I - 0x000A5D 00:8A4D: F1        .byte $F1, $A5, $E0   ; 
- D 0 - I - 0x000A60 00:8A50: E9        .byte $E9, $A3, $E0   ; 
- D 0 - I - 0x000A63 00:8A53: E1        .byte $E1, $A1, $E0   ; 
- D 0 - I - 0x000A66 00:8A56: E1        .byte $E1, $A7, $F0   ; 

- D 0 - I - 0x000A69 00:8A59: 81        .byte $81   ; 
- D 0 - I - 0x000A6A 00:8A5A: 03        .byte $03   ; 
- D 0 - I - 0x000A6B 00:8A5B: F9        .byte $F9, $B5, $F0   ; 

- D 0 - I - 0x000A6E 00:8A5E: 81        .byte $81   ; 
- D 0 - I - 0x000A6F 00:8A5F: 43        .byte $43   ; 
- D 0 - I - 0x000A70 00:8A60: 01        .byte $01, $B5, $F0   ; 

- D 0 - I - 0x000A73 00:8A63: 81        .byte $81   ; 
- D 0 - I - 0x000A74 00:8A64: 03        .byte $03   ; 
- D 0 - I - 0x000A75 00:8A65: F1        .byte $F1, $A9, $F0   ; 

- D 0 - I - 0x000A78 00:8A68: 81        .byte $81   ; 
- D 0 - I - 0x000A79 00:8A69: 02        .byte $02   ; 
- D 0 - I - 0x000A7A 00:8A6A: F1        .byte $F1, $A9, $F0   ; 

- D 0 - I - 0x000A7D 00:8A6D: 82        .byte $82   ; 
- D 0 - I - 0x000A7E 00:8A6E: 43        .byte $43   ; 
- D 0 - I - 0x000A7F 00:8A6F: F9        .byte $F9, $BD, $00   ; 
- D 0 - I - 0x000A82 00:8A72: 01        .byte $01, $BB, $00   ; 

- D 0 - I - 0x000A85 00:8A75: 84        .byte $84   ; 
- D 0 - I - 0x000A86 00:8A76: 42        .byte $42   ; 
- D 0 - I - 0x000A87 00:8A77: 09        .byte $09, $9B, $E4   ; 
- D 0 - I - 0x000A8A 00:8A7A: 11        .byte $11, $99, $E4   ; 
- D 0 - I - 0x000A8D 00:8A7D: 11        .byte $11, $9D, $F4   ; 
- D 0 - I - 0x000A90 00:8A80: 09        .byte $09, $9F, $F4   ; 

- D 0 - I - 0x000A93 00:8A83: 81        .byte $81   ; 
- D 0 - I - 0x000A94 00:8A84: 02        .byte $02   ; 
- D 0 - I - 0x000A95 00:8A85: F9        .byte $F9, $8B, $F0   ; 

- D 0 - I - 0x000A98 00:8A88: 01        .byte $01   ; 
- D 0 - I - 0x000A99 00:8A89: 42        .byte $42   ; 
- D 0 - I - 0x000A9A 00:8A8A: 01        .byte $01, $8B, $F0   ; 



off_09_8A8D_0E:
- D 0 - I - 0x000A9D 00:8A8D: 81        .byte $81   ; counter
- D 0 - I - 0x000A9E 00:8A8E: 42        .byte $42   ; spr_A
- D 0 - I - 0x000A9F 00:8A8F: 01        .byte $01, $8D, $E0   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x000AA2 00:8A92: 85        .byte $85   ; 
- D 0 - I - 0x000AA3 00:8A93: 02        .byte $02   ; 
- D 0 - I - 0x000AA4 00:8A94: F9        .byte $F9, $89, $E0   ; 
- D 0 - I - 0x000AA7 00:8A97: F1        .byte $F1, $9B, $E4   ; 
- D 0 - I - 0x000AAA 00:8A9A: E9        .byte $E9, $99, $E4   ; 
- D 0 - I - 0x000AAD 00:8A9D: E9        .byte $E9, $9D, $F4   ; 
- D 0 - I - 0x000AB0 00:8AA0: F1        .byte $F1, $9F, $F4   ; 

- D 0 - I - 0x000AB3 00:8AA3: 81        .byte $81   ; 
- D 0 - I - 0x000AB4 00:8AA4: 03        .byte $03   ; 
- D 0 - I - 0x000AB5 00:8AA5: F9        .byte $F9, $B5, $F0   ; 

- D 0 - I - 0x000AB8 00:8AA8: 81        .byte $81   ; 
- D 0 - I - 0x000AB9 00:8AA9: 43        .byte $43   ; 
- D 0 - I - 0x000ABA 00:8AAA: 01        .byte $01, $B5, $F0   ; 

- D 0 - I - 0x000ABD 00:8AAD: 85        .byte $85   ; 
- D 0 - I - 0x000ABE 00:8AAE: 42        .byte $42   ; 
- D 0 - I - 0x000ABF 00:8AAF: 11        .byte $11, $AB, $E0   ; 
- D 0 - I - 0x000AC2 00:8AB2: 11        .byte $11, $AD, $F0   ; 
- D 0 - I - 0x000AC5 00:8AB5: 09        .byte $09, $93, $E0   ; 
- D 0 - I - 0x000AC8 00:8AB8: 0C        .byte $0C, $B1, $00   ; 
- D 0 - I - 0x000ACB 00:8ABB: 0C        .byte $0C, $B3, $10   ; 

- D 0 - I - 0x000ACE 00:8ABE: 82        .byte $82   ; 
- D 0 - I - 0x000ACF 00:8ABF: 43        .byte $43   ; 
- D 0 - I - 0x000AD0 00:8AC0: F9        .byte $F9, $B9, $00   ; 
- D 0 - I - 0x000AD3 00:8AC3: 01        .byte $01, $B7, $00   ; 

- D 0 - I - 0x000AD6 00:8AC6: 81        .byte $81   ; 
- D 0 - I - 0x000AD7 00:8AC7: 02        .byte $02   ; 
- D 0 - I - 0x000AD8 00:8AC8: F9        .byte $F9, $8F, $F0   ; 

- D 0 - I - 0x000ADB 00:8ACB: 02        .byte $02   ; 
- D 0 - I - 0x000ADC 00:8ACC: 42        .byte $42   ; 
- D 0 - I - 0x000ADD 00:8ACD: 01        .byte $01, $8F, $F0   ; 
- D 0 - I - 0x000AE0 00:8AD0: 09        .byte $09, $AF, $F0   ; 



off_09_8AD3_0F:
- D 0 - I - 0x000AE3 00:8AD3: 81        .byte $81   ; counter
- D 0 - I - 0x000AE4 00:8AD4: 02        .byte $02   ; spr_A
- D 0 - I - 0x000AE5 00:8AD5: F9        .byte $F9, $8D, $DE   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x000AE8 00:8AD8: 81        .byte $81   ; 
- D 0 - I - 0x000AE9 00:8AD9: 42        .byte $42   ; 
- D 0 - I - 0x000AEA 00:8ADA: 01        .byte $01, $8D, $DE   ; 

- D 0 - I - 0x000AED 00:8ADD: 84        .byte $84   ; 
- D 0 - I - 0x000AEE 00:8ADE: 02        .byte $02   ; 
- D 0 - I - 0x000AEF 00:8ADF: F1        .byte $F1, $93, $E0   ; 
- D 0 - I - 0x000AF2 00:8AE2: E9        .byte $E9, $95, $F0   ; 
- D 0 - I - 0x000AF5 00:8AE5: F1        .byte $F1, $97, $F0   ; 
- D 0 - I - 0x000AF8 00:8AE8: E9        .byte $E9, $91, $E0   ; 

- D 0 - I - 0x000AFB 00:8AEB: 84        .byte $84   ; 
- D 0 - I - 0x000AFC 00:8AEC: 42        .byte $42   ; 
- D 0 - I - 0x000AFD 00:8AED: 11        .byte $11, $91, $E0   ; 
- D 0 - I - 0x000B00 00:8AF0: 11        .byte $11, $95, $F0   ; 
- D 0 - I - 0x000B03 00:8AF3: 09        .byte $09, $93, $E0   ; 
- D 0 - I - 0x000B06 00:8AF6: 09        .byte $09, $97, $F0   ; 

- D 0 - I - 0x000B09 00:8AF9: 81        .byte $81   ; 
- D 0 - I - 0x000B0A 00:8AFA: 03        .byte $03   ; 
- D 0 - I - 0x000B0B 00:8AFB: F9        .byte $F9, $B5, $F0   ; 

- D 0 - I - 0x000B0E 00:8AFE: 83        .byte $83   ; 
- D 0 - I - 0x000B0F 00:8AFF: 43        .byte $43   ; 
- D 0 - I - 0x000B10 00:8B00: 01        .byte $01, $B5, $F0   ; 
- D 0 - I - 0x000B13 00:8B03: 01        .byte $01, $BB, $00   ; 
- D 0 - I - 0x000B16 00:8B06: F9        .byte $F9, $B9, $00   ; 

- D 0 - I - 0x000B19 00:8B09: 81        .byte $81   ; 
- D 0 - I - 0x000B1A 00:8B0A: 02        .byte $02   ; 
- D 0 - I - 0x000B1B 00:8B0B: F9        .byte $F9, $8F, $EE   ; 

- D 0 - I - 0x000B1E 00:8B0E: 01        .byte $01   ; 
- D 0 - I - 0x000B1F 00:8B0F: 42        .byte $42   ; 
- D 0 - I - 0x000B20 00:8B10: 01        .byte $01, $8F, $EE   ; 



off_09_8B13_10:
- D 0 - I - 0x000B23 00:8B13: 81        .byte $81   ; counter
- D 0 - I - 0x000B24 00:8B14: 02        .byte $02   ; spr_A
- D 0 - I - 0x000B25 00:8B15: F9        .byte $F9, $85, $E0   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x000B28 00:8B18: 81        .byte $81   ; 
- D 0 - I - 0x000B29 00:8B19: 42        .byte $42   ; 
- D 0 - I - 0x000B2A 00:8B1A: 01        .byte $01, $85, $E0   ; 

- D 0 - I - 0x000B2D 00:8B1D: 84        .byte $84   ; 
- D 0 - I - 0x000B2E 00:8B1E: 02        .byte $02   ; 
- D 0 - I - 0x000B2F 00:8B1F: E9        .byte $E9, $91, $E0   ; 
- D 0 - I - 0x000B32 00:8B22: F1        .byte $F1, $93, $E0   ; 
- D 0 - I - 0x000B35 00:8B25: E9        .byte $E9, $95, $F0   ; 
- D 0 - I - 0x000B38 00:8B28: F1        .byte $F1, $97, $F0   ; 

- D 0 - I - 0x000B3B 00:8B2B: 84        .byte $84   ; 
- D 0 - I - 0x000B3C 00:8B2C: 42        .byte $42   ; 
- D 0 - I - 0x000B3D 00:8B2D: 11        .byte $11, $91, $E0   ; 
- D 0 - I - 0x000B40 00:8B30: 09        .byte $09, $93, $E0   ; 
- D 0 - I - 0x000B43 00:8B33: 11        .byte $11, $95, $F0   ; 
- D 0 - I - 0x000B46 00:8B36: 09        .byte $09, $97, $F0   ; 

- D 0 - I - 0x000B49 00:8B39: 81        .byte $81   ; 
- D 0 - I - 0x000B4A 00:8B3A: 03        .byte $03   ; 
- D 0 - I - 0x000B4B 00:8B3B: F9        .byte $F9, $B5, $F0   ; 

- D 0 - I - 0x000B4E 00:8B3E: 82        .byte $82   ; 
- D 0 - I - 0x000B4F 00:8B3F: 43        .byte $43   ; 
- D 0 - I - 0x000B50 00:8B40: 01        .byte $01, $B5, $F0   ; 
- D 0 - I - 0x000B53 00:8B43: F9        .byte $F9, $B9, $00   ; 

- D 0 - I - 0x000B56 00:8B46: 81        .byte $81   ; 
- D 0 - I - 0x000B57 00:8B47: 03        .byte $03   ; 
- D 0 - I - 0x000B58 00:8B48: 01        .byte $01, $BD, $00   ; 

- D 0 - I - 0x000B5B 00:8B4B: 81        .byte $81   ; 
- D 0 - I - 0x000B5C 00:8B4C: 02        .byte $02   ; 
- D 0 - I - 0x000B5D 00:8B4D: F9        .byte $F9, $87, $F0   ; 

- D 0 - I - 0x000B60 00:8B50: 01        .byte $01   ; 
- D 0 - I - 0x000B61 00:8B51: 42        .byte $42   ; 
- D 0 - I - 0x000B62 00:8B52: 01        .byte $01, $87, $F0   ; 



off_09_8B55_11:
- D 0 - I - 0x000B65 00:8B55: 81        .byte $81   ; counter
- D 0 - I - 0x000B66 00:8B56: 02        .byte $02   ; spr_A
- D 0 - I - 0x000B67 00:8B57: F9        .byte $F9, $81, $E0   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x000B6A 00:8B5A: 81        .byte $81   ; 
- D 0 - I - 0x000B6B 00:8B5B: 42        .byte $42   ; 
- D 0 - I - 0x000B6C 00:8B5C: 01        .byte $01, $81, $E0   ; 

- D 0 - I - 0x000B6F 00:8B5F: 86        .byte $86   ; 
- D 0 - I - 0x000B70 00:8B60: 02        .byte $02   ; 
- D 0 - I - 0x000B71 00:8B61: F1        .byte $F1, $93, $E0   ; 
- D 0 - I - 0x000B74 00:8B64: E9        .byte $E9, $AB, $E0   ; 
- D 0 - I - 0x000B77 00:8B67: E9        .byte $E9, $AD, $F0   ; 
- D 0 - I - 0x000B7A 00:8B6A: F1        .byte $F1, $AF, $F0   ; 
- D 0 - I - 0x000B7D 00:8B6D: EE        .byte $EE, $B1, $00   ; 
- D 0 - I - 0x000B80 00:8B70: EE        .byte $EE, $B3, $10   ; 

- D 0 - I - 0x000B83 00:8B73: 86        .byte $86   ; 
- D 0 - I - 0x000B84 00:8B74: 42        .byte $42   ; 
- D 0 - I - 0x000B85 00:8B75: 09        .byte $09, $93, $E0   ; 
- D 0 - I - 0x000B88 00:8B78: 11        .byte $11, $AB, $E0   ; 
- D 0 - I - 0x000B8B 00:8B7B: 11        .byte $11, $AD, $F0   ; 
- D 0 - I - 0x000B8E 00:8B7E: 09        .byte $09, $AF, $F0   ; 
- D 0 - I - 0x000B91 00:8B81: 0C        .byte $0C, $B1, $00   ; 
- D 0 - I - 0x000B94 00:8B84: 0C        .byte $0C, $B3, $10   ; 

- D 0 - I - 0x000B97 00:8B87: 81        .byte $81   ; 
- D 0 - I - 0x000B98 00:8B88: 03        .byte $03   ; 
- D 0 - I - 0x000B99 00:8B89: F9        .byte $F9, $B5, $F0   ; 

- D 0 - I - 0x000B9C 00:8B8C: 81        .byte $81   ; 
- D 0 - I - 0x000B9D 00:8B8D: 43        .byte $43   ; 
- D 0 - I - 0x000B9E 00:8B8E: 01        .byte $01, $B5, $F0   ; 

- D 0 - I - 0x000BA1 00:8B91: 82        .byte $82   ; 
- D 0 - I - 0x000BA2 00:8B92: 03        .byte $03   ; 
- D 0 - I - 0x000BA3 00:8B93: F9        .byte $F9, $BB, $00   ; 
- D 0 - I - 0x000BA6 00:8B96: 01        .byte $01, $B9, $00   ; 

- D 0 - I - 0x000BA9 00:8B99: 81        .byte $81   ; 
- D 0 - I - 0x000BAA 00:8B9A: 02        .byte $02   ; 
- D 0 - I - 0x000BAB 00:8B9B: F9        .byte $F9, $83, $F0   ; 

- D 0 - I - 0x000BAE 00:8B9E: 01        .byte $01   ; 
- D 0 - I - 0x000BAF 00:8B9F: 42        .byte $42   ; 
- D 0 - I - 0x000BB0 00:8BA0: 01        .byte $01, $83, $F0   ; 



off_09_8BA3_12:
- D 0 - I - 0x000BB3 00:8BA3: 81        .byte $81   ; counter
- D 0 - I - 0x000BB4 00:8BA4: 02        .byte $02   ; spr_A
- D 0 - I - 0x000BB5 00:8BA5: F9        .byte $F9, $8D, $DD   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x000BB8 00:8BA8: 81        .byte $81   ; 
- D 0 - I - 0x000BB9 00:8BA9: 42        .byte $42   ; 
- D 0 - I - 0x000BBA 00:8BAA: 01        .byte $01, $8D, $DD   ; 

- D 0 - I - 0x000BBD 00:8BAD: 84        .byte $84   ; 
- D 0 - I - 0x000BBE 00:8BAE: 02        .byte $02   ; 
- D 0 - I - 0x000BBF 00:8BAF: E9        .byte $E9, $91, $E0   ; 
- D 0 - I - 0x000BC2 00:8BB2: F1        .byte $F1, $93, $E0   ; 
- D 0 - I - 0x000BC5 00:8BB5: E9        .byte $E9, $95, $F0   ; 
- D 0 - I - 0x000BC8 00:8BB8: F1        .byte $F1, $97, $F0   ; 

- D 0 - I - 0x000BCB 00:8BBB: 83        .byte $83   ; 
- D 0 - I - 0x000BCC 00:8BBC: 42        .byte $42   ; 
- D 0 - I - 0x000BCD 00:8BBD: 11        .byte $11, $91, $E0   ; 
- D 0 - I - 0x000BD0 00:8BC0: 11        .byte $11, $95, $F0   ; 
- D 0 - I - 0x000BD3 00:8BC3: 09        .byte $09, $93, $E0   ; 

- D 0 - I - 0x000BD6 00:8BC6: 81        .byte $81   ; 
- D 0 - I - 0x000BD7 00:8BC7: 03        .byte $03   ; 
- D 0 - I - 0x000BD8 00:8BC8: F9        .byte $F9, $B5, $F0   ; 

- D 0 - I - 0x000BDB 00:8BCB: 81        .byte $81   ; 
- D 0 - I - 0x000BDC 00:8BCC: 43        .byte $43   ; 
- D 0 - I - 0x000BDD 00:8BCD: 01        .byte $01, $B5, $F0   ; 

- D 0 - I - 0x000BE0 00:8BD0: 82        .byte $82   ; 
- D 0 - I - 0x000BE1 00:8BD1: 03        .byte $03   ; 
- D 0 - I - 0x000BE2 00:8BD2: F9        .byte $F9, $B7, $00   ; 
- D 0 - I - 0x000BE5 00:8BD5: 01        .byte $01, $B9, $00   ; 

- D 0 - I - 0x000BE8 00:8BD8: 81        .byte $81   ; 
- D 0 - I - 0x000BE9 00:8BD9: 02        .byte $02   ; 
- D 0 - I - 0x000BEA 00:8BDA: F9        .byte $F9, $8F, $ED   ; 

- D 0 - I - 0x000BED 00:8BDD: 02        .byte $02   ; 
- D 0 - I - 0x000BEE 00:8BDE: 42        .byte $42   ; 
- D 0 - I - 0x000BEF 00:8BDF: 01        .byte $01, $8F, $ED   ; 
- D 0 - I - 0x000BF2 00:8BE2: 09        .byte $09, $97, $F0   ; 



off_09_8BE5_13:
- D 0 - I - 0x000BF5 00:8BE5: 81        .byte $81   ; counter
- D 0 - I - 0x000BF6 00:8BE6: 02        .byte $02   ; spr_A
- D 0 - I - 0x000BF7 00:8BE7: F9        .byte $F9, $89, $E0   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x000BFA 00:8BEA: 81        .byte $81   ; 
- D 0 - I - 0x000BFB 00:8BEB: 42        .byte $42   ; 
- D 0 - I - 0x000BFC 00:8BEC: 01        .byte $01, $89, $E0   ; 

- D 0 - I - 0x000BFF 00:8BEF: 84        .byte $84   ; 
- D 0 - I - 0x000C00 00:8BF0: 02        .byte $02   ; 
- D 0 - I - 0x000C01 00:8BF1: E9        .byte $E9, $99, $E4   ; 
- D 0 - I - 0x000C04 00:8BF4: F1        .byte $F1, $9B, $E4   ; 
- D 0 - I - 0x000C07 00:8BF7: E9        .byte $E9, $9D, $F4   ; 
- D 0 - I - 0x000C0A 00:8BFA: F1        .byte $F1, $9F, $F4   ; 

- D 0 - I - 0x000C0D 00:8BFD: 84        .byte $84   ; 
- D 0 - I - 0x000C0E 00:8BFE: 42        .byte $42   ; 
- D 0 - I - 0x000C0F 00:8BFF: 09        .byte $09, $9B, $E4   ; 
- D 0 - I - 0x000C12 00:8C02: 11        .byte $11, $99, $E4   ; 
- D 0 - I - 0x000C15 00:8C05: 11        .byte $11, $9D, $F4   ; 
- D 0 - I - 0x000C18 00:8C08: 09        .byte $09, $9F, $F4   ; 

- D 0 - I - 0x000C1B 00:8C0B: 81        .byte $81   ; 
- D 0 - I - 0x000C1C 00:8C0C: 03        .byte $03   ; 
- D 0 - I - 0x000C1D 00:8C0D: F9        .byte $F9, $B5, $F0   ; 

- D 0 - I - 0x000C20 00:8C10: 81        .byte $81   ; 
- D 0 - I - 0x000C21 00:8C11: 43        .byte $43   ; 
- D 0 - I - 0x000C22 00:8C12: 01        .byte $01, $B5, $F0   ; 

- D 0 - I - 0x000C25 00:8C15: 82        .byte $82   ; 
- D 0 - I - 0x000C26 00:8C16: 03        .byte $03   ; 
- D 0 - I - 0x000C27 00:8C17: 01        .byte $01, $BD, $00   ; 
- D 0 - I - 0x000C2A 00:8C1A: F9        .byte $F9, $BB, $00   ; 

- D 0 - I - 0x000C2D 00:8C1D: 81        .byte $81   ; 
- D 0 - I - 0x000C2E 00:8C1E: 02        .byte $02   ; 
- D 0 - I - 0x000C2F 00:8C1F: F9        .byte $F9, $8B, $F0   ; 

- D 0 - I - 0x000C32 00:8C22: 01        .byte $01   ; 
- D 0 - I - 0x000C33 00:8C23: 42        .byte $42   ; 
- D 0 - I - 0x000C34 00:8C24: 01        .byte $01, $8B, $F0   ; 



off_09_8C27_14:
- - - - - - 0x000C37 00:8C27: 81        .byte $81   ; counter
- - - - - - 0x000C38 00:8C28: 02        .byte $02   ; spr_A
- - - - - - 0x000C39 00:8C29: F9        .byte $F9, $8D, $E0   ; spr_X, spr_T, spr_Y

- - - - - - 0x000C3C 00:8C2C: 81        .byte $81   ; 
- - - - - - 0x000C3D 00:8C2D: 42        .byte $42   ; 
- - - - - - 0x000C3E 00:8C2E: 01        .byte $01, $89, $E0   ; 

- - - - - - 0x000C41 00:8C31: 84        .byte $84   ; 
- - - - - - 0x000C42 00:8C32: 02        .byte $02   ; 
- - - - - - 0x000C43 00:8C33: F1        .byte $F1, $A5, $E0   ; 
- - - - - - 0x000C46 00:8C36: E9        .byte $E9, $A3, $E0   ; 
- - - - - - 0x000C49 00:8C39: E1        .byte $E1, $A1, $E0   ; 
- - - - - - 0x000C4C 00:8C3C: E1        .byte $E1, $A7, $F0   ; 

- - - - - - 0x000C4F 00:8C3F: 82        .byte $82   ; 
- - - - - - 0x000C50 00:8C40: 03        .byte $03   ; 
- - - - - - 0x000C51 00:8C41: F1        .byte $F1, $A9, $F0   ; 
- - - - - - 0x000C54 00:8C44: F9        .byte $F9, $B5, $F0   ; 

- - - - - - 0x000C57 00:8C47: 81        .byte $81   ; 
- - - - - - 0x000C58 00:8C48: 43        .byte $43   ; 
- - - - - - 0x000C59 00:8C49: 01        .byte $01, $B5, $F0   ; 

- - - - - - 0x000C5C 00:8C4C: 84        .byte $84   ; 
- - - - - - 0x000C5D 00:8C4D: 42        .byte $42   ; 
- - - - - - 0x000C5E 00:8C4E: 09        .byte $09, $A5, $E0   ; 
- - - - - - 0x000C61 00:8C51: 11        .byte $11, $A3, $E0   ; 
- - - - - - 0x000C64 00:8C54: 19        .byte $19, $A1, $E0   ; 
- - - - - - 0x000C67 00:8C57: 19        .byte $19, $A7, $F0   ; 

- - - - - - 0x000C6A 00:8C5A: 83        .byte $83   ; 
- - - - - - 0x000C6B 00:8C5B: 43        .byte $43   ; 
- - - - - - 0x000C6C 00:8C5C: 09        .byte $09, $A9, $F0   ; 
- - - - - - 0x000C6F 00:8C5F: F9        .byte $F9, $BD, $00   ; 
- - - - - - 0x000C72 00:8C62: 01        .byte $01, $BB, $00   ; 

- - - - - - 0x000C75 00:8C65: 81        .byte $81   ; 
- - - - - - 0x000C76 00:8C66: 02        .byte $02   ; 
- - - - - - 0x000C77 00:8C67: F9        .byte $F9, $8F, $F0   ; 

- - - - - - 0x000C7A 00:8C6A: 01        .byte $01   ; 
- - - - - - 0x000C7B 00:8C6B: 42        .byte $42   ; 
- - - - - - 0x000C7C 00:8C6C: 01        .byte $01, $8F, $F0   ; 



off_09_8C6F_15:
- - - - - - 0x000C7F 00:8C6F: 81        .byte $81   ; counter
- - - - - - 0x000C80 00:8C70: 02        .byte $02   ; spr_A
- - - - - - 0x000C81 00:8C71: F9        .byte $F9, $85, $E0   ; spr_X, spr_T, spr_Y

- - - - - - 0x000C84 00:8C74: 81        .byte $81   ; 
- - - - - - 0x000C85 00:8C75: 42        .byte $42   ; 
- - - - - - 0x000C86 00:8C76: 01        .byte $01, $85, $E0   ; 

- - - - - - 0x000C89 00:8C79: 84        .byte $84   ; 
- - - - - - 0x000C8A 00:8C7A: 02        .byte $02   ; 
- - - - - - 0x000C8B 00:8C7B: F1        .byte $F1, $9B, $E4   ; 
- - - - - - 0x000C8E 00:8C7E: E9        .byte $E9, $99, $E4   ; 
- - - - - - 0x000C91 00:8C81: E9        .byte $E9, $9D, $F4   ; 
- - - - - - 0x000C94 00:8C84: F1        .byte $F1, $9F, $F4   ; 

- - - - - - 0x000C97 00:8C87: 84        .byte $84   ; 
- - - - - - 0x000C98 00:8C88: 42        .byte $42   ; 
- - - - - - 0x000C99 00:8C89: 09        .byte $09, $9B, $E4   ; 
- - - - - - 0x000C9C 00:8C8C: 11        .byte $11, $99, $E4   ; 
- - - - - - 0x000C9F 00:8C8F: 11        .byte $11, $9D, $F4   ; 
- - - - - - 0x000CA2 00:8C92: 09        .byte $09, $9F, $F4   ; 

- - - - - - 0x000CA5 00:8C95: 81        .byte $81   ; 
- - - - - - 0x000CA6 00:8C96: 03        .byte $03   ; 
- - - - - - 0x000CA7 00:8C97: F9        .byte $F9, $B5, $F0   ; 

- - - - - - 0x000CAA 00:8C9A: 83        .byte $83   ; 
- - - - - - 0x000CAB 00:8C9B: 43        .byte $43   ; 
- - - - - - 0x000CAC 00:8C9C: 01        .byte $01, $B5, $F0   ; 
- - - - - - 0x000CAF 00:8C9F: F9        .byte $F9, $B9, $00   ; 
- - - - - - 0x000CB2 00:8CA2: 01        .byte $01, $B7, $00   ; 

- - - - - - 0x000CB5 00:8CA5: 81        .byte $81   ; 
- - - - - - 0x000CB6 00:8CA6: 02        .byte $02   ; 
- - - - - - 0x000CB7 00:8CA7: F9        .byte $F9, $87, $F0   ; 

- - - - - - 0x000CBA 00:8CAA: 01        .byte $01   ; 
- - - - - - 0x000CBB 00:8CAB: 42        .byte $42   ; 
- - - - - - 0x000CBC 00:8CAC: 01        .byte $01, $87, $F0   ; 



off_09_8CAF_16:
- - - - - - 0x000CBF 00:8CAF: 81        .byte $81   ; counter
- - - - - - 0x000CC0 00:8CB0: 02        .byte $02   ; spr_A
- - - - - - 0x000CC1 00:8CB1: F9        .byte $F9, $85, $E0   ; spr_X, spr_T, spr_Y

- - - - - - 0x000CC4 00:8CB4: 85        .byte $85   ; 
- - - - - - 0x000CC5 00:8CB5: 42        .byte $42   ; 
- - - - - - 0x000CC6 00:8CB6: 01        .byte $01, $85, $E0   ; 
- - - - - - 0x000CC9 00:8CB9: 09        .byte $09, $9B, $E4   ; 
- - - - - - 0x000CCC 00:8CBC: 11        .byte $11, $99, $E4   ; 
- - - - - - 0x000CCF 00:8CBF: 11        .byte $11, $9D, $F4   ; 
- - - - - - 0x000CD2 00:8CC2: 09        .byte $09, $9F, $F4   ; 

- - - - - - 0x000CD5 00:8CC5: 84        .byte $84   ; 
- - - - - - 0x000CD6 00:8CC6: 02        .byte $02   ; 
- - - - - - 0x000CD7 00:8CC7: F1        .byte $F1, $93, $E0   ; 
- - - - - - 0x000CDA 00:8CCA: E9        .byte $E9, $95, $F0   ; 
- - - - - - 0x000CDD 00:8CCD: F1        .byte $F1, $97, $F0   ; 
- - - - - - 0x000CE0 00:8CD0: E9        .byte $E9, $91, $E0   ; 

- - - - - - 0x000CE3 00:8CD3: 81        .byte $81   ; 
- - - - - - 0x000CE4 00:8CD4: 03        .byte $03   ; 
- - - - - - 0x000CE5 00:8CD5: F9        .byte $F9, $B5, $F0   ; 

- - - - - - 0x000CE8 00:8CD8: 83        .byte $83   ; 
- - - - - - 0x000CE9 00:8CD9: 43        .byte $43   ; 
- - - - - - 0x000CEA 00:8CDA: 01        .byte $01, $B5, $F0   ; 
- - - - - - 0x000CED 00:8CDD: 01        .byte $01, $BB, $00   ; 
- - - - - - 0x000CF0 00:8CE0: F9        .byte $F9, $B9, $00   ; 

- - - - - - 0x000CF3 00:8CE3: 81        .byte $81   ; 
- - - - - - 0x000CF4 00:8CE4: 02        .byte $02   ; 
- - - - - - 0x000CF5 00:8CE5: F9        .byte $F9, $87, $F0   ; 

- - - - - - 0x000CF8 00:8CE8: 01        .byte $01   ; 
- - - - - - 0x000CF9 00:8CE9: 42        .byte $42   ; 
- - - - - - 0x000CFA 00:8CEA: 01        .byte $01, $87, $F0   ; 



off_09_8E07_1B:
- D 0 - I - 0x000E17 00:8E07: FF        .byte $FF   ; 
off_09_8CED_17:
- D 0 - I - 0x000CFD 00:8CED: 85        .byte $85   ; counter
- D 0 - I - 0x000CFE 00:8CEE: 02        .byte $02   ; spr_A
- D 0 - I - 0x000CFF 00:8CEF: E9        .byte $E9, $AD, $F0   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x000D02 00:8CF2: F1        .byte $F1, $AF, $F0   ; 
- D 0 - I - 0x000D05 00:8CF5: EE        .byte $EE, $B1, $00   ; 
- D 0 - I - 0x000D08 00:8CF8: EE        .byte $EE, $B3, $10   ; 
- D 0 - I - 0x000D0B 00:8CFB: F1        .byte $F1, $93, $E0   ; 

- D 0 - I - 0x000D0E 00:8CFE: 84        .byte $84   ; 
- D 0 - I - 0x000D0F 00:8CFF: 42        .byte $42   ; 
- D 0 - I - 0x000D10 00:8D00: 09        .byte $09, $A5, $E0   ; 
- D 0 - I - 0x000D13 00:8D03: 11        .byte $11, $A3, $E0   ; 
- D 0 - I - 0x000D16 00:8D06: 19        .byte $19, $A1, $E0   ; 
- D 0 - I - 0x000D19 00:8D09: 19        .byte $19, $A7, $F0   ; 

- D 0 - I - 0x000D1C 00:8D0C: 81        .byte $81   ; 
- D 0 - I - 0x000D1D 00:8D0D: 43        .byte $43   ; 
- D 0 - I - 0x000D1E 00:8D0E: 09        .byte $09, $A9, $F0   ; 

- D 0 - I - 0x000D21 00:8D11: 81        .byte $81   ; 
- D 0 - I - 0x000D22 00:8D12: 03        .byte $03   ; 
- D 0 - I - 0x000D23 00:8D13: F9        .byte $F9, $B5, $F0   ; 

- D 0 - I - 0x000D26 00:8D16: 81        .byte $81   ; 
- D 0 - I - 0x000D27 00:8D17: 43        .byte $43   ; 
- D 0 - I - 0x000D28 00:8D18: 01        .byte $01, $B5, $F0   ; 

- D 0 - I - 0x000D2B 00:8D1B: 82        .byte $82   ; 
- D 0 - I - 0x000D2C 00:8D1C: 02        .byte $02   ; 
- D 0 - I - 0x000D2D 00:8D1D: F8        .byte $F8, $85, $E2   ; 
- D 0 - I - 0x000D30 00:8D20: F8        .byte $F8, $87, $F2   ; 

- D 0 - I - 0x000D33 00:8D23: 82        .byte $82   ; 
- D 0 - I - 0x000D34 00:8D24: 42        .byte $42   ; 
- D 0 - I - 0x000D35 00:8D25: 00        .byte $00, $85, $E2   ; 
- D 0 - I - 0x000D38 00:8D28: 00        .byte $00, $87, $F2   ; 

- D 0 - I - 0x000D3B 00:8D2B: 81        .byte $81   ; 
- D 0 - I - 0x000D3C 00:8D2C: 02        .byte $02   ; 
- D 0 - I - 0x000D3D 00:8D2D: E9        .byte $E9, $AB, $E0   ; 

- D 0 - I - 0x000D40 00:8D30: 02        .byte $02   ; 
- D 0 - I - 0x000D41 00:8D31: 03        .byte $03   ; 
- D 0 - I - 0x000D42 00:8D32: 01        .byte $01, $B9, $00   ; 
- D 0 - I - 0x000D45 00:8D35: F9        .byte $F9, $BB, $00   ; 



off_09_8E0A_1C:
- D 0 - I - 0x000E1A 00:8E0A: FF        .byte $FF   ; 
off_09_8D38_18:
- D 0 - I - 0x000D48 00:8D38: 84        .byte $84   ; counter
- D 0 - I - 0x000D49 00:8D39: 42        .byte $42   ; spr_A
- D 0 - I - 0x000D4A 00:8D3A: 09        .byte $09, $A5, $E1   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x000D4D 00:8D3D: 11        .byte $11, $A3, $E1   ; 
- D 0 - I - 0x000D50 00:8D40: 19        .byte $19, $A1, $E1   ; 
- D 0 - I - 0x000D53 00:8D43: 19        .byte $19, $A7, $F1   ; 

- D 0 - I - 0x000D56 00:8D46: 81        .byte $81   ; 
- D 0 - I - 0x000D57 00:8D47: 43        .byte $43   ; 
- D 0 - I - 0x000D58 00:8D48: 09        .byte $09, $A9, $F0   ; 

- D 0 - I - 0x000D5B 00:8D4B: 81        .byte $81   ; 
- D 0 - I - 0x000D5C 00:8D4C: 03        .byte $03   ; 
- D 0 - I - 0x000D5D 00:8D4D: F9        .byte $F9, $B5, $F0   ; 

- D 0 - I - 0x000D60 00:8D50: 81        .byte $81   ; 
- D 0 - I - 0x000D61 00:8D51: 43        .byte $43   ; 
- D 0 - I - 0x000D62 00:8D52: 01        .byte $01, $B5, $F0   ; 

- D 0 - I - 0x000D65 00:8D55: 81        .byte $81   ; 
- D 0 - I - 0x000D66 00:8D56: 02        .byte $02   ; 
- D 0 - I - 0x000D67 00:8D57: F8        .byte $F8, $87, $F1   ; 

- D 0 - I - 0x000D6A 00:8D5A: 82        .byte $82   ; 
- D 0 - I - 0x000D6B 00:8D5B: 42        .byte $42   ; 
- D 0 - I - 0x000D6C 00:8D5C: 00        .byte $00, $85, $E1   ; 
- D 0 - I - 0x000D6F 00:8D5F: 00        .byte $00, $87, $F1   ; 

- D 0 - I - 0x000D72 00:8D62: 85        .byte $85   ; 
- D 0 - I - 0x000D73 00:8D63: 02        .byte $02   ; 
- D 0 - I - 0x000D74 00:8D64: F1        .byte $F1, $9B, $E4   ; 
- D 0 - I - 0x000D77 00:8D67: E9        .byte $E9, $99, $E4   ; 
- D 0 - I - 0x000D7A 00:8D6A: E9        .byte $E9, $9D, $F4   ; 
- D 0 - I - 0x000D7D 00:8D6D: F1        .byte $F1, $9F, $F4   ; 
- D 0 - I - 0x000D80 00:8D70: F8        .byte $F8, $85, $E1   ; 

- D 0 - I - 0x000D83 00:8D73: 81        .byte $81   ; 
- D 0 - I - 0x000D84 00:8D74: 03        .byte $03   ; 
- D 0 - I - 0x000D85 00:8D75: 01        .byte $01, $BD, $00   ; 

- D 0 - I - 0x000D88 00:8D78: 01        .byte $01   ; 
- D 0 - I - 0x000D89 00:8D79: 43        .byte $43   ; 
- D 0 - I - 0x000D8A 00:8D7A: F9        .byte $F9, $BD, $00   ; 



off_09_8E0D_1D:
- D 0 - I - 0x000E1D 00:8E0D: FF        .byte $FF   ; 
off_09_8D7D_19:
- D 0 - I - 0x000D8D 00:8D7D: 84        .byte $84   ; counter
- D 0 - I - 0x000D8E 00:8D7E: 42        .byte $42   ; spr_A
- D 0 - I - 0x000D8F 00:8D7F: 09        .byte $09, $A5, $E3   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x000D92 00:8D82: 11        .byte $11, $A3, $E3   ; 
- D 0 - I - 0x000D95 00:8D85: 19        .byte $19, $A1, $E3   ; 
- D 0 - I - 0x000D98 00:8D88: 19        .byte $19, $A7, $F3   ; 

- D 0 - I - 0x000D9B 00:8D8B: 81        .byte $81   ; 
- D 0 - I - 0x000D9C 00:8D8C: 43        .byte $43   ; 
- D 0 - I - 0x000D9D 00:8D8D: 09        .byte $09, $A9, $F0   ; 

- D 0 - I - 0x000DA0 00:8D90: 81        .byte $81   ; 
- D 0 - I - 0x000DA1 00:8D91: 03        .byte $03   ; 
- D 0 - I - 0x000DA2 00:8D92: F9        .byte $F9, $B5, $F0   ; 

- D 0 - I - 0x000DA5 00:8D95: 81        .byte $81   ; 
- D 0 - I - 0x000DA6 00:8D96: 43        .byte $43   ; 
- D 0 - I - 0x000DA7 00:8D97: 01        .byte $01, $B5, $F0   ; 

- D 0 - I - 0x000DAA 00:8D9A: 82        .byte $82   ; 
- D 0 - I - 0x000DAB 00:8D9B: 02        .byte $02   ; 
- D 0 - I - 0x000DAC 00:8D9C: F9        .byte $F9, $85, $DD   ; 
- D 0 - I - 0x000DAF 00:8D9F: F9        .byte $F9, $87, $ED   ; 

- D 0 - I - 0x000DB2 00:8DA2: 82        .byte $82   ; 
- D 0 - I - 0x000DB3 00:8DA3: 42        .byte $42   ; 
- D 0 - I - 0x000DB4 00:8DA4: 01        .byte $01, $85, $DD   ; 
- D 0 - I - 0x000DB7 00:8DA7: 01        .byte $01, $87, $ED   ; 

- D 0 - I - 0x000DBA 00:8DAA: 81        .byte $81   ; 
- D 0 - I - 0x000DBB 00:8DAB: 43        .byte $43   ; 
- D 0 - I - 0x000DBC 00:8DAC: F9        .byte $F9, $B9, $00   ; 

- D 0 - I - 0x000DBF 00:8DAF: 84        .byte $84   ; 
- D 0 - I - 0x000DC0 00:8DB0: 02        .byte $02   ; 
- D 0 - I - 0x000DC1 00:8DB1: F1        .byte $F1, $93, $E0   ; 
- D 0 - I - 0x000DC4 00:8DB4: E9        .byte $E9, $91, $E0   ; 
- D 0 - I - 0x000DC7 00:8DB7: E9        .byte $E9, $95, $F0   ; 
- D 0 - I - 0x000DCA 00:8DBA: F1        .byte $F1, $97, $F0   ; 

- D 0 - I - 0x000DCD 00:8DBD: 01        .byte $01   ; 
- D 0 - I - 0x000DCE 00:8DBE: 43        .byte $43   ; 
- D 0 - I - 0x000DCF 00:8DBF: 01        .byte $01, $BB, $00   ; 



off_09_8E10_1E:
- D 0 - I - 0x000E20 00:8E10: FF        .byte $FF   ; 
off_09_8DC2_1A:
- D 0 - I - 0x000DD2 00:8DC2: 84        .byte $84   ; counter
- D 0 - I - 0x000DD3 00:8DC3: 42        .byte $42   ; spr_A
- D 0 - I - 0x000DD4 00:8DC4: 09        .byte $09, $A5, $E4   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x000DD7 00:8DC7: 11        .byte $11, $A3, $E4   ; 
- D 0 - I - 0x000DDA 00:8DCA: 19        .byte $19, $A1, $E4   ; 
- D 0 - I - 0x000DDD 00:8DCD: 19        .byte $19, $A7, $F4   ; 

- D 0 - I - 0x000DE0 00:8DD0: 81        .byte $81   ; 
- D 0 - I - 0x000DE1 00:8DD1: 43        .byte $43   ; 
- D 0 - I - 0x000DE2 00:8DD2: 09        .byte $09, $A9, $F0   ; 

- D 0 - I - 0x000DE5 00:8DD5: 81        .byte $81   ; 
- D 0 - I - 0x000DE6 00:8DD6: 03        .byte $03   ; 
- D 0 - I - 0x000DE7 00:8DD7: F9        .byte $F9, $B5, $F0   ; 

- D 0 - I - 0x000DEA 00:8DDA: 81        .byte $81   ; 
- D 0 - I - 0x000DEB 00:8DDB: 43        .byte $43   ; 
- D 0 - I - 0x000DEC 00:8DDC: 01        .byte $01, $B5, $F0   ; 

- D 0 - I - 0x000DEF 00:8DDF: 82        .byte $82   ; 
- D 0 - I - 0x000DF0 00:8DE0: 02        .byte $02   ; 
- D 0 - I - 0x000DF1 00:8DE1: F9        .byte $F9, $85, $DF   ; 
- D 0 - I - 0x000DF4 00:8DE4: F9        .byte $F9, $87, $EF   ; 

- D 0 - I - 0x000DF7 00:8DE7: 82        .byte $82   ; 
- D 0 - I - 0x000DF8 00:8DE8: 42        .byte $42   ; 
- D 0 - I - 0x000DF9 00:8DE9: 01        .byte $01, $85, $DF   ; 
- D 0 - I - 0x000DFC 00:8DEC: 01        .byte $01, $87, $EF   ; 

- D 0 - I - 0x000DFF 00:8DEF: 84        .byte $84   ; 
- D 0 - I - 0x000E00 00:8DF0: 02        .byte $02   ; 
- D 0 - I - 0x000E01 00:8DF1: F1        .byte $F1, $9B, $E4   ; 
- D 0 - I - 0x000E04 00:8DF4: E9        .byte $E9, $99, $E4   ; 
- D 0 - I - 0x000E07 00:8DF7: E9        .byte $E9, $9D, $F4   ; 
- D 0 - I - 0x000E0A 00:8DFA: F1        .byte $F1, $9F, $F4   ; 

- D 0 - I - 0x000E0D 00:8DFD: 81        .byte $81   ; 
- D 0 - I - 0x000E0E 00:8DFE: 43        .byte $43   ; 
- D 0 - I - 0x000E0F 00:8DFF: F9        .byte $F9, $BD, $00   ; 

- D 0 - I - 0x000E12 00:8E02: 01        .byte $01   ; 
- D 0 - I - 0x000E13 00:8E03: 03        .byte $03   ; 
- D 0 - I - 0x000E14 00:8E04: 01        .byte $01, $BD, $00   ; 



off_09_8E13_1F:
- D 0 - I - 0x000E23 00:8E13: 81        .byte $81   ; counter
- D 0 - I - 0x000E24 00:8E14: 02        .byte $02   ; spr_A
- D 0 - I - 0x000E25 00:8E15: F9        .byte $F9, $8D, $DC   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x000E28 00:8E18: 81        .byte $81   ; 
- D 0 - I - 0x000E29 00:8E19: 42        .byte $42   ; 
- D 0 - I - 0x000E2A 00:8E1A: 01        .byte $01, $89, $DC   ; 

- D 0 - I - 0x000E2D 00:8E1D: 84        .byte $84   ; 
- D 0 - I - 0x000E2E 00:8E1E: 02        .byte $02   ; 
- D 0 - I - 0x000E2F 00:8E1F: F1        .byte $F1, $A5, $E3   ; 
- D 0 - I - 0x000E32 00:8E22: E9        .byte $E9, $A3, $E3   ; 
- D 0 - I - 0x000E35 00:8E25: E1        .byte $E1, $A1, $E3   ; 
- D 0 - I - 0x000E38 00:8E28: E1        .byte $E1, $A7, $F3   ; 

- D 0 - I - 0x000E3B 00:8E2B: 82        .byte $82   ; 
- D 0 - I - 0x000E3C 00:8E2C: 03        .byte $03   ; 
- D 0 - I - 0x000E3D 00:8E2D: F1        .byte $F1, $A9, $F0   ; 
- D 0 - I - 0x000E40 00:8E30: F9        .byte $F9, $B5, $F0   ; 

- D 0 - I - 0x000E43 00:8E33: 81        .byte $81   ; 
- D 0 - I - 0x000E44 00:8E34: 43        .byte $43   ; 
- D 0 - I - 0x000E45 00:8E35: 01        .byte $01, $B5, $F0   ; 

- D 0 - I - 0x000E48 00:8E38: 84        .byte $84   ; 
- D 0 - I - 0x000E49 00:8E39: 42        .byte $42   ; 
- D 0 - I - 0x000E4A 00:8E3A: 09        .byte $09, $A5, $E3   ; 
- D 0 - I - 0x000E4D 00:8E3D: 11        .byte $11, $A3, $E3   ; 
- D 0 - I - 0x000E50 00:8E40: 19        .byte $19, $A1, $E3   ; 
- D 0 - I - 0x000E53 00:8E43: 19        .byte $19, $A7, $F3   ; 

- D 0 - I - 0x000E56 00:8E46: 82        .byte $82   ; 
- D 0 - I - 0x000E57 00:8E47: 43        .byte $43   ; 
- D 0 - I - 0x000E58 00:8E48: 09        .byte $09, $A9, $F0   ; 
- D 0 - I - 0x000E5B 00:8E4B: F9        .byte $F9, $B9, $00   ; 

- D 0 - I - 0x000E5E 00:8E4E: 81        .byte $81   ; 
- D 0 - I - 0x000E5F 00:8E4F: 03        .byte $03   ; 
- D 0 - I - 0x000E60 00:8E50: 01        .byte $01, $B9, $00   ; 

- D 0 - I - 0x000E63 00:8E53: 81        .byte $81   ; 
- D 0 - I - 0x000E64 00:8E54: 02        .byte $02   ; 
- D 0 - I - 0x000E65 00:8E55: F9        .byte $F9, $8B, $EC   ; 

- D 0 - I - 0x000E68 00:8E58: 01        .byte $01   ; 
- D 0 - I - 0x000E69 00:8E59: 42        .byte $42   ; 
- D 0 - I - 0x000E6A 00:8E5A: 01        .byte $01, $8B, $EC   ; 



off_09_8E5D_20:
- D 0 - I - 0x000E6D 00:8E5D: 84        .byte $84   ; counter
- D 0 - I - 0x000E6E 00:8E5E: 02        .byte $02   ; spr_A
- D 0 - I - 0x000E6F 00:8E5F: F1        .byte $F1, $A5, $E2   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x000E72 00:8E62: E9        .byte $E9, $A3, $E2   ; 
- D 0 - I - 0x000E75 00:8E65: E1        .byte $E1, $A1, $E2   ; 
- D 0 - I - 0x000E78 00:8E68: E1        .byte $E1, $A7, $F2   ; 

- D 0 - I - 0x000E7B 00:8E6B: 82        .byte $82   ; 
- D 0 - I - 0x000E7C 00:8E6C: 03        .byte $03   ; 
- D 0 - I - 0x000E7D 00:8E6D: F1        .byte $F1, $A9, $F0   ; 
- D 0 - I - 0x000E80 00:8E70: F9        .byte $F9, $B5, $F0   ; 

- D 0 - I - 0x000E83 00:8E73: 81        .byte $81   ; 
- D 0 - I - 0x000E84 00:8E74: 43        .byte $43   ; 
- D 0 - I - 0x000E85 00:8E75: 01        .byte $01, $B5, $F0   ; 

- D 0 - I - 0x000E88 00:8E78: 84        .byte $84   ; 
- D 0 - I - 0x000E89 00:8E79: 42        .byte $42   ; 
- D 0 - I - 0x000E8A 00:8E7A: 09        .byte $09, $A5, $E2   ; 
- D 0 - I - 0x000E8D 00:8E7D: 11        .byte $11, $A3, $E2   ; 
- D 0 - I - 0x000E90 00:8E80: 19        .byte $19, $A1, $E2   ; 
- D 0 - I - 0x000E93 00:8E83: 19        .byte $19, $A7, $F2   ; 

- D 0 - I - 0x000E96 00:8E86: 82        .byte $82   ; 
- D 0 - I - 0x000E97 00:8E87: 43        .byte $43   ; 
- D 0 - I - 0x000E98 00:8E88: 09        .byte $09, $A9, $F0   ; 
- D 0 - I - 0x000E9B 00:8E8B: F9        .byte $F9, $B9, $00   ; 

- D 0 - I - 0x000E9E 00:8E8E: 81        .byte $81   ; 
- D 0 - I - 0x000E9F 00:8E8F: 03        .byte $03   ; 
- D 0 - I - 0x000EA0 00:8E90: 01        .byte $01, $B9, $00   ; 

- D 0 - I - 0x000EA3 00:8E93: 81        .byte $81   ; 
- D 0 - I - 0x000EA4 00:8E94: 02        .byte $02   ; 
- D 0 - I - 0x000EA5 00:8E95: F9        .byte $F9, $8B, $ED   ; 

- D 0 - I - 0x000EA8 00:8E98: 81        .byte $81   ; 
- D 0 - I - 0x000EA9 00:8E99: 42        .byte $42   ; 
- D 0 - I - 0x000EAA 00:8E9A: 01        .byte $01, $8B, $ED   ; 

- D 0 - I - 0x000EAD 00:8E9D: 81        .byte $81   ; 
- D 0 - I - 0x000EAE 00:8E9E: 02        .byte $02   ; 
- D 0 - I - 0x000EAF 00:8E9F: F9        .byte $F9, $89, $DD   ; 

- D 0 - I - 0x000EB2 00:8EA2: 01        .byte $01   ; 
- D 0 - I - 0x000EB3 00:8EA3: 42        .byte $42   ; 
- D 0 - I - 0x000EB4 00:8EA4: 01        .byte $01, $8D, $DD   ; 



off_09_8EA7_21:
- D 0 - I - 0x000EB7 00:8EA7: 81        .byte $81   ; counter
- D 0 - I - 0x000EB8 00:8EA8: 42        .byte $42   ; spr_A
- D 0 - I - 0x000EB9 00:8EA9: 01        .byte $01, $89, $DD   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x000EBC 00:8EAC: 84        .byte $84   ; 
- D 0 - I - 0x000EBD 00:8EAD: 02        .byte $02   ; 
- D 0 - I - 0x000EBE 00:8EAE: F1        .byte $F1, $A5, $E1   ; 
- D 0 - I - 0x000EC1 00:8EB1: E9        .byte $E9, $A3, $E1   ; 
- D 0 - I - 0x000EC4 00:8EB4: E1        .byte $E1, $A1, $E1   ; 
- D 0 - I - 0x000EC7 00:8EB7: E1        .byte $E1, $A7, $F1   ; 

- D 0 - I - 0x000ECA 00:8EBA: 82        .byte $82   ; 
- D 0 - I - 0x000ECB 00:8EBB: 03        .byte $03   ; 
- D 0 - I - 0x000ECC 00:8EBC: F1        .byte $F1, $A9, $F0   ; 
- D 0 - I - 0x000ECF 00:8EBF: F9        .byte $F9, $B5, $F0   ; 

- D 0 - I - 0x000ED2 00:8EC2: 81        .byte $81   ; 
- D 0 - I - 0x000ED3 00:8EC3: 43        .byte $43   ; 
- D 0 - I - 0x000ED4 00:8EC4: 01        .byte $01, $B5, $F0   ; 

- D 0 - I - 0x000ED7 00:8EC7: 84        .byte $84   ; 
- D 0 - I - 0x000ED8 00:8EC8: 42        .byte $42   ; 
- D 0 - I - 0x000ED9 00:8EC9: 09        .byte $09, $A5, $E1   ; 
- D 0 - I - 0x000EDC 00:8ECC: 11        .byte $11, $A3, $E1   ; 
- D 0 - I - 0x000EDF 00:8ECF: 19        .byte $19, $A1, $E1   ; 
- D 0 - I - 0x000EE2 00:8ED2: 19        .byte $19, $A7, $F1   ; 

- D 0 - I - 0x000EE5 00:8ED5: 82        .byte $82   ; 
- D 0 - I - 0x000EE6 00:8ED6: 43        .byte $43   ; 
- D 0 - I - 0x000EE7 00:8ED7: 09        .byte $09, $A9, $F0   ; 
- D 0 - I - 0x000EEA 00:8EDA: F9        .byte $F9, $B9, $00   ; 

- D 0 - I - 0x000EED 00:8EDD: 81        .byte $81   ; 
- D 0 - I - 0x000EEE 00:8EDE: 03        .byte $03   ; 
- D 0 - I - 0x000EEF 00:8EDF: 01        .byte $01, $B9, $00   ; 

- D 0 - I - 0x000EF2 00:8EE2: 81        .byte $81   ; 
- D 0 - I - 0x000EF3 00:8EE3: 02        .byte $02   ; 
- D 0 - I - 0x000EF4 00:8EE4: F9        .byte $F9, $8B, $ED   ; 

- D 0 - I - 0x000EF7 00:8EE7: 81        .byte $81   ; 
- D 0 - I - 0x000EF8 00:8EE8: 42        .byte $42   ; 
- D 0 - I - 0x000EF9 00:8EE9: 01        .byte $01, $8B, $ED   ; 

- D 0 - I - 0x000EFC 00:8EEC: 01        .byte $01   ; 
- D 0 - I - 0x000EFD 00:8EED: 02        .byte $02   ; 
- D 0 - I - 0x000EFE 00:8EEE: F9        .byte $F9, $89, $DD   ; 



off_09_8EF1_22:
- D 0 - I - 0x000F01 00:8EF1: 84        .byte $84   ; counter
- D 0 - I - 0x000F02 00:8EF2: 02        .byte $02   ; spr_A
- D 0 - I - 0x000F03 00:8EF3: F1        .byte $F1, $A5, $E0   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x000F06 00:8EF6: E9        .byte $E9, $A3, $E0   ; 
- D 0 - I - 0x000F09 00:8EF9: E1        .byte $E1, $A1, $E0   ; 
- D 0 - I - 0x000F0C 00:8EFC: E1        .byte $E1, $A7, $F0   ; 

- D 0 - I - 0x000F0F 00:8EFF: 82        .byte $82   ; 
- D 0 - I - 0x000F10 00:8F00: 03        .byte $03   ; 
- D 0 - I - 0x000F11 00:8F01: F1        .byte $F1, $A9, $F0   ; 
- D 0 - I - 0x000F14 00:8F04: F9        .byte $F9, $B5, $F0   ; 

- D 0 - I - 0x000F17 00:8F07: 81        .byte $81   ; 
- D 0 - I - 0x000F18 00:8F08: 43        .byte $43   ; 
- D 0 - I - 0x000F19 00:8F09: 01        .byte $01, $B5, $F0   ; 

- D 0 - I - 0x000F1C 00:8F0C: 84        .byte $84   ; 
- D 0 - I - 0x000F1D 00:8F0D: 42        .byte $42   ; 
- D 0 - I - 0x000F1E 00:8F0E: 09        .byte $09, $A5, $E0   ; 
- D 0 - I - 0x000F21 00:8F11: 11        .byte $11, $A3, $E0   ; 
- D 0 - I - 0x000F24 00:8F14: 19        .byte $19, $A1, $E0   ; 
- D 0 - I - 0x000F27 00:8F17: 19        .byte $19, $A7, $F0   ; 

- D 0 - I - 0x000F2A 00:8F1A: 82        .byte $82   ; 
- D 0 - I - 0x000F2B 00:8F1B: 43        .byte $43   ; 
- D 0 - I - 0x000F2C 00:8F1C: 09        .byte $09, $A9, $F0   ; 
- D 0 - I - 0x000F2F 00:8F1F: F9        .byte $F9, $B9, $00   ; 

- D 0 - I - 0x000F32 00:8F22: 81        .byte $81   ; 
- D 0 - I - 0x000F33 00:8F23: 03        .byte $03   ; 
- D 0 - I - 0x000F34 00:8F24: 01        .byte $01, $B9, $00   ; 

- D 0 - I - 0x000F37 00:8F27: 81        .byte $81   ; 
- D 0 - I - 0x000F38 00:8F28: 02        .byte $02   ; 
- D 0 - I - 0x000F39 00:8F29: F9        .byte $F9, $8D, $DE   ; 

- D 0 - I - 0x000F3C 00:8F2C: 81        .byte $81   ; 
- D 0 - I - 0x000F3D 00:8F2D: 42        .byte $42   ; 
- D 0 - I - 0x000F3E 00:8F2E: 01        .byte $01, $8D, $DE   ; 

- D 0 - I - 0x000F41 00:8F31: 81        .byte $81   ; 
- D 0 - I - 0x000F42 00:8F32: 02        .byte $02   ; 
- D 0 - I - 0x000F43 00:8F33: F9        .byte $F9, $8F, $EE   ; 

- D 0 - I - 0x000F46 00:8F36: 01        .byte $01   ; 
- D 0 - I - 0x000F47 00:8F37: 42        .byte $42   ; 
- D 0 - I - 0x000F48 00:8F38: 01        .byte $01, $8F, $EE   ; 



off_09_8F3B_23:
- D 0 - I - 0x000F4B 00:8F3B: 84        .byte $84   ; counter
- D 0 - I - 0x000F4C 00:8F3C: 02        .byte $02   ; spr_A
- D 0 - I - 0x000F4D 00:8F3D: E9        .byte $E9, $A3, $E8   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x000F50 00:8F40: F1        .byte $F1, $A5, $E8   ; 
- D 0 - I - 0x000F53 00:8F43: E1        .byte $E1, $A1, $E8   ; 
- D 0 - I - 0x000F56 00:8F46: E1        .byte $E1, $A7, $F8   ; 

- D 0 - I - 0x000F59 00:8F49: 81        .byte $81   ; 
- D 0 - I - 0x000F5A 00:8F4A: 03        .byte $03   ; 
- D 0 - I - 0x000F5B 00:8F4B: F1        .byte $F1, $A9, $F8   ; 

- D 0 - I - 0x000F5E 00:8F4E: 81        .byte $81   ; 
- D 0 - I - 0x000F5F 00:8F4F: 43        .byte $43   ; 
- D 0 - I - 0x000F60 00:8F50: 09        .byte $09, $A9, $F8   ; 

- D 0 - I - 0x000F63 00:8F53: 84        .byte $84   ; 
- D 0 - I - 0x000F64 00:8F54: 42        .byte $42   ; 
- D 0 - I - 0x000F65 00:8F55: 09        .byte $09, $A5, $E8   ; 
- D 0 - I - 0x000F68 00:8F58: 19        .byte $19, $A1, $E8   ; 
- D 0 - I - 0x000F6B 00:8F5B: 11        .byte $11, $A3, $E8   ; 
- D 0 - I - 0x000F6E 00:8F5E: 19        .byte $19, $A7, $F8   ; 

- D 0 - I - 0x000F71 00:8F61: 81        .byte $81   ; 
- D 0 - I - 0x000F72 00:8F62: 03        .byte $03   ; 
- D 0 - I - 0x000F73 00:8F63: F9        .byte $F9, $B5, $F8   ; 

- D 0 - I - 0x000F76 00:8F66: 81        .byte $81   ; 
- D 0 - I - 0x000F77 00:8F67: 43        .byte $43   ; 
- D 0 - I - 0x000F78 00:8F68: 01        .byte $01, $B5, $F8   ; 

- D 0 - I - 0x000F7B 00:8F6B: 81        .byte $81   ; 
- D 0 - I - 0x000F7C 00:8F6C: 03        .byte $03   ; 
- D 0 - I - 0x000F7D 00:8F6D: 01        .byte $01, $BD, $08   ; 

- D 0 - I - 0x000F80 00:8F70: 81        .byte $81   ; 
- D 0 - I - 0x000F81 00:8F71: 43        .byte $43   ; 
- D 0 - I - 0x000F82 00:8F72: F9        .byte $F9, $BD, $08   ; 

- D 0 - I - 0x000F85 00:8F75: 81        .byte $81   ; 
- D 0 - I - 0x000F86 00:8F76: 02        .byte $02   ; 
- D 0 - I - 0x000F87 00:8F77: F9        .byte $F9, $89, $E6   ; 

- D 0 - I - 0x000F8A 00:8F7A: 82        .byte $82   ; 
- D 0 - I - 0x000F8B 00:8F7B: 42        .byte $42   ; 
- D 0 - I - 0x000F8C 00:8F7C: 01        .byte $01, $89, $E6   ; 
- D 0 - I - 0x000F8F 00:8F7F: 01        .byte $01, $8F, $F6   ; 

- D 0 - I - 0x000F92 00:8F82: 01        .byte $01   ; 
- D 0 - I - 0x000F93 00:8F83: 02        .byte $02   ; 
- D 0 - I - 0x000F94 00:8F84: F9        .byte $F9, $8F, $F6   ; 



off_09_8F87_24:
- D 0 - I - 0x000F97 00:8F87: 84        .byte $84   ; counter
- D 0 - I - 0x000F98 00:8F88: 42        .byte $42   ; spr_A
- D 0 - I - 0x000F99 00:8F89: 09        .byte $09, $A5, $F0   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x000F9C 00:8F8C: 11        .byte $11, $A3, $F0   ; 
- D 0 - I - 0x000F9F 00:8F8F: 19        .byte $19, $A1, $F0   ; 
- D 0 - I - 0x000FA2 00:8F92: 19        .byte $19, $A7, $00   ; 

- D 0 - I - 0x000FA5 00:8F95: 81        .byte $81   ; 
- D 0 - I - 0x000FA6 00:8F96: 43        .byte $43   ; 
- D 0 - I - 0x000FA7 00:8F97: 09        .byte $09, $A9, $00   ; 

- D 0 - I - 0x000FAA 00:8F9A: 81        .byte $81   ; 
- D 0 - I - 0x000FAB 00:8F9B: 03        .byte $03   ; 
- D 0 - I - 0x000FAC 00:8F9C: F9        .byte $F9, $B5, $00   ; 

- D 0 - I - 0x000FAF 00:8F9F: 81        .byte $81   ; 
- D 0 - I - 0x000FB0 00:8FA0: 43        .byte $43   ; 
- D 0 - I - 0x000FB1 00:8FA1: 01        .byte $01, $B5, $00   ; 

- D 0 - I - 0x000FB4 00:8FA4: 81        .byte $81   ; 
- D 0 - I - 0x000FB5 00:8FA5: 03        .byte $03   ; 
- D 0 - I - 0x000FB6 00:8FA6: F9        .byte $F9, $B7, $10   ; 

- D 0 - I - 0x000FB9 00:8FA9: 81        .byte $81   ; 
- D 0 - I - 0x000FBA 00:8FAA: 43        .byte $43   ; 
- D 0 - I - 0x000FBB 00:8FAB: 01        .byte $01, $B7, $10   ; 

- D 0 - I - 0x000FBE 00:8FAE: 85        .byte $85   ; 
- D 0 - I - 0x000FBF 00:8FAF: 02        .byte $02   ; 
- D 0 - I - 0x000FC0 00:8FB0: F1        .byte $F1, $9B, $F4   ; 
- D 0 - I - 0x000FC3 00:8FB3: E9        .byte $E9, $99, $F4   ; 
- D 0 - I - 0x000FC6 00:8FB6: E9        .byte $E9, $9D, $04   ; 
- D 0 - I - 0x000FC9 00:8FB9: F1        .byte $F1, $9F, $04   ; 
- D 0 - I - 0x000FCC 00:8FBC: F9        .byte $F9, $8D, $EE   ; 

- D 0 - I - 0x000FCF 00:8FBF: 81        .byte $81   ; 
- D 0 - I - 0x000FD0 00:8FC0: 42        .byte $42   ; 
- D 0 - I - 0x000FD1 00:8FC1: 01        .byte $01, $8D, $EE   ; 

- D 0 - I - 0x000FD4 00:8FC4: 81        .byte $81   ; 
- D 0 - I - 0x000FD5 00:8FC5: 02        .byte $02   ; 
- D 0 - I - 0x000FD6 00:8FC6: F9        .byte $F9, $8B, $FE   ; 

- D 0 - I - 0x000FD9 00:8FC9: 01        .byte $01   ; 
- D 0 - I - 0x000FDA 00:8FCA: 42        .byte $42   ; 
- D 0 - I - 0x000FDB 00:8FCB: 01        .byte $01, $8B, $FE   ; 



off_09_8FCE_25:
- D 0 - I - 0x000FDE 00:8FCE: 81        .byte $81   ; counter
- D 0 - I - 0x000FDF 00:8FCF: 03        .byte $03   ; spr_A
- D 0 - I - 0x000FE0 00:8FD0: F9        .byte $F9, $B5, $00   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x000FE3 00:8FD3: 81        .byte $81   ; 
- D 0 - I - 0x000FE4 00:8FD4: 43        .byte $43   ; 
- D 0 - I - 0x000FE5 00:8FD5: 01        .byte $01, $B5, $00   ; 

- D 0 - I - 0x000FE8 00:8FD8: 81        .byte $81   ; 
- D 0 - I - 0x000FE9 00:8FD9: 03        .byte $03   ; 
- D 0 - I - 0x000FEA 00:8FDA: F9        .byte $F9, $B7, $10   ; 

- D 0 - I - 0x000FED 00:8FDD: 81        .byte $81   ; 
- D 0 - I - 0x000FEE 00:8FDE: 43        .byte $43   ; 
- D 0 - I - 0x000FEF 00:8FDF: 01        .byte $01, $B7, $10   ; 

- D 0 - I - 0x000FF2 00:8FE2: 84        .byte $84   ; 
- D 0 - I - 0x000FF3 00:8FE3: 02        .byte $02   ; 
- D 0 - I - 0x000FF4 00:8FE4: F1        .byte $F1, $9B, $F4   ; 
- D 0 - I - 0x000FF7 00:8FE7: E9        .byte $E9, $99, $F4   ; 
- D 0 - I - 0x000FFA 00:8FEA: E9        .byte $E9, $9D, $04   ; 
- D 0 - I - 0x000FFD 00:8FED: F1        .byte $F1, $9F, $04   ; 

- D 0 - I - 0x001000 00:8FF0: 84        .byte $84   ; 
- D 0 - I - 0x001001 00:8FF1: 42        .byte $42   ; 
- D 0 - I - 0x001002 00:8FF2: 09        .byte $09, $9B, $F4   ; 
- D 0 - I - 0x001005 00:8FF5: 11        .byte $11, $99, $F4   ; 
- D 0 - I - 0x001008 00:8FF8: 11        .byte $11, $9D, $04   ; 
- D 0 - I - 0x00100B 00:8FFB: 09        .byte $09, $9F, $04   ; 

- D 0 - I - 0x00100E 00:8FFE: 81        .byte $81   ; 
- D 0 - I - 0x00100F 00:8FFF: 02        .byte $02   ; 
- D 0 - I - 0x001010 00:9000: F9        .byte $F9, $89, $F0   ; 

- D 0 - I - 0x001013 00:9003: 81        .byte $81   ; 
- D 0 - I - 0x001014 00:9004: 42        .byte $42   ; 
- D 0 - I - 0x001015 00:9005: 01        .byte $01, $89, $F0   ; 

- D 0 - I - 0x001018 00:9008: 81        .byte $81   ; 
- D 0 - I - 0x001019 00:9009: 02        .byte $02   ; 
- D 0 - I - 0x00101A 00:900A: F9        .byte $F9, $8B, $00   ; 

- D 0 - I - 0x00101D 00:900D: 01        .byte $01   ; 
- D 0 - I - 0x00101E 00:900E: 42        .byte $42   ; 
- D 0 - I - 0x00101F 00:900F: 01        .byte $01, $8B, $00   ; 



off_09_9012_26:
- D 0 - I - 0x001022 00:9012: 81        .byte $81   ; counter
- D 0 - I - 0x001023 00:9013: 03        .byte $03   ; spr_A
- D 0 - I - 0x001024 00:9014: F9        .byte $F9, $B5, $00   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x001027 00:9017: 81        .byte $81   ; 
- D 0 - I - 0x001028 00:9018: 43        .byte $43   ; 
- D 0 - I - 0x001029 00:9019: 01        .byte $01, $B5, $00   ; 

- D 0 - I - 0x00102C 00:901C: 81        .byte $81   ; 
- D 0 - I - 0x00102D 00:901D: 03        .byte $03   ; 
- D 0 - I - 0x00102E 00:901E: F9        .byte $F9, $B7, $10   ; 

- D 0 - I - 0x001031 00:9021: 81        .byte $81   ; 
- D 0 - I - 0x001032 00:9022: 43        .byte $43   ; 
- D 0 - I - 0x001033 00:9023: 01        .byte $01, $B7, $10   ; 

- D 0 - I - 0x001036 00:9026: 84        .byte $84   ; 
- D 0 - I - 0x001037 00:9027: 42        .byte $42   ; 
- D 0 - I - 0x001038 00:9028: 09        .byte $09, $9B, $F4   ; 
- D 0 - I - 0x00103B 00:902B: 11        .byte $11, $99, $F4   ; 
- D 0 - I - 0x00103E 00:902E: 11        .byte $11, $9D, $04   ; 
- D 0 - I - 0x001041 00:9031: 09        .byte $09, $9F, $04   ; 

- D 0 - I - 0x001044 00:9034: 85        .byte $85   ; 
- D 0 - I - 0x001045 00:9035: 02        .byte $02   ; 
- D 0 - I - 0x001046 00:9036: E9        .byte $E9, $91, $F0   ; 
- D 0 - I - 0x001049 00:9039: F1        .byte $F1, $93, $F0   ; 
- D 0 - I - 0x00104C 00:903C: E9        .byte $E9, $95, $00   ; 
- D 0 - I - 0x00104F 00:903F: F1        .byte $F1, $97, $00   ; 
- D 0 - I - 0x001052 00:9042: F9        .byte $F9, $85, $F0   ; 

- D 0 - I - 0x001055 00:9045: 81        .byte $81   ; 
- D 0 - I - 0x001056 00:9046: 42        .byte $42   ; 
- D 0 - I - 0x001057 00:9047: 01        .byte $01, $85, $F0   ; 

- D 0 - I - 0x00105A 00:904A: 81        .byte $81   ; 
- D 0 - I - 0x00105B 00:904B: 02        .byte $02   ; 
- D 0 - I - 0x00105C 00:904C: F9        .byte $F9, $87, $00   ; 

- D 0 - I - 0x00105F 00:904F: 01        .byte $01   ; 
- D 0 - I - 0x001060 00:9050: 42        .byte $42   ; 
- D 0 - I - 0x001061 00:9051: 01        .byte $01, $87, $00   ; 



off_09_9054_27:
- D 0 - I - 0x001064 00:9054: 81        .byte $81   ; counter
- D 0 - I - 0x001065 00:9055: 03        .byte $03   ; spr_A
- D 0 - I - 0x001066 00:9056: F9        .byte $F9, $B5, $00   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x001069 00:9059: 81        .byte $81   ; 
- D 0 - I - 0x00106A 00:905A: 43        .byte $43   ; 
- D 0 - I - 0x00106B 00:905B: 01        .byte $01, $B5, $00   ; 

- D 0 - I - 0x00106E 00:905E: 81        .byte $81   ; 
- D 0 - I - 0x00106F 00:905F: 03        .byte $03   ; 
- D 0 - I - 0x001070 00:9060: F9        .byte $F9, $B7, $10   ; 

- D 0 - I - 0x001073 00:9063: 81        .byte $81   ; 
- D 0 - I - 0x001074 00:9064: 43        .byte $43   ; 
- D 0 - I - 0x001075 00:9065: 01        .byte $01, $B7, $10   ; 

- D 0 - I - 0x001078 00:9068: 84        .byte $84   ; 
- D 0 - I - 0x001079 00:9069: 02        .byte $02   ; 
- D 0 - I - 0x00107A 00:906A: E9        .byte $E9, $91, $F0   ; 
- D 0 - I - 0x00107D 00:906D: F1        .byte $F1, $93, $F0   ; 
- D 0 - I - 0x001080 00:9070: E9        .byte $E9, $95, $00   ; 
- D 0 - I - 0x001083 00:9073: F1        .byte $F1, $97, $00   ; 

- D 0 - I - 0x001086 00:9076: 84        .byte $84   ; 
- D 0 - I - 0x001087 00:9077: 42        .byte $42   ; 
- D 0 - I - 0x001088 00:9078: 09        .byte $09, $93, $F0   ; 
- D 0 - I - 0x00108B 00:907B: 11        .byte $11, $95, $00   ; 
- D 0 - I - 0x00108E 00:907E: 09        .byte $09, $97, $00   ; 
- D 0 - I - 0x001091 00:9081: 11        .byte $11, $91, $F0   ; 

- D 0 - I - 0x001094 00:9084: 82        .byte $82   ; 
- D 0 - I - 0x001095 00:9085: 02        .byte $02   ; 
- D 0 - I - 0x001096 00:9086: F9        .byte $F9, $81, $F0   ; 
- D 0 - I - 0x001099 00:9089: F9        .byte $F9, $83, $00   ; 

- D 0 - I - 0x00109C 00:908C: 02        .byte $02   ; 
- D 0 - I - 0x00109D 00:908D: 42        .byte $42   ; 
- D 0 - I - 0x00109E 00:908E: 01        .byte $01, $81, $F0   ; 
- D 0 - I - 0x0010A1 00:9091: 01        .byte $01, $83, $00   ; 



off_09_9094_28:
- D 0 - I - 0x0010A4 00:9094: 88        .byte $88   ; counter
- D 0 - I - 0x0010A5 00:9095: 02        .byte $02   ; spr_A
- D 0 - I - 0x0010A6 00:9096: E9        .byte $E9, $81, $F0   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x0010A9 00:9099: F1        .byte $F1, $83, $F0   ; 
- D 0 - I - 0x0010AC 00:909C: E1        .byte $E1, $85, $00   ; 
- D 0 - I - 0x0010AF 00:909F: E9        .byte $E9, $87, $00   ; 
- D 0 - I - 0x0010B2 00:90A2: F1        .byte $F1, $89, $00   ; 
- D 0 - I - 0x0010B5 00:90A5: E1        .byte $E1, $8B, $10   ; 
- D 0 - I - 0x0010B8 00:90A8: E9        .byte $E9, $8D, $10   ; 
- D 0 - I - 0x0010BB 00:90AB: F1        .byte $F1, $8F, $10   ; 

- D 0 - I - 0x0010BE 00:90AE: 88        .byte $88   ; 
- D 0 - I - 0x0010BF 00:90AF: 42        .byte $42   ; 
- D 0 - I - 0x0010C0 00:90B0: 09        .byte $09, $83, $F0   ; 
- D 0 - I - 0x0010C3 00:90B3: 11        .byte $11, $81, $F0   ; 
- D 0 - I - 0x0010C6 00:90B6: 19        .byte $19, $85, $00   ; 
- D 0 - I - 0x0010C9 00:90B9: 11        .byte $11, $87, $00   ; 
- D 0 - I - 0x0010CC 00:90BC: 09        .byte $09, $89, $00   ; 
- D 0 - I - 0x0010CF 00:90BF: 19        .byte $19, $8B, $10   ; 
- D 0 - I - 0x0010D2 00:90C2: 11        .byte $11, $8D, $10   ; 
- D 0 - I - 0x0010D5 00:90C5: 09        .byte $09, $8F, $10   ; 

- D 0 - I - 0x0010D8 00:90C8: 82        .byte $82   ; 
- D 0 - I - 0x0010D9 00:90C9: 02        .byte $02   ; 
- D 0 - I - 0x0010DA 00:90CA: F9        .byte $F9, $91, $00   ; 
- D 0 - I - 0x0010DD 00:90CD: F9        .byte $F9, $93, $10   ; 

- D 0 - I - 0x0010E0 00:90D0: 02        .byte $02   ; 
- D 0 - I - 0x0010E1 00:90D1: 42        .byte $42   ; 
- D 0 - I - 0x0010E2 00:90D2: 01        .byte $01, $91, $00   ; 
- D 0 - I - 0x0010E5 00:90D5: 01        .byte $01, $93, $10   ; 



off_09_90D8_29:
- D 0 - I - 0x0010E8 00:90D8: 88        .byte $88   ; counter
- D 0 - I - 0x0010E9 00:90D9: 02        .byte $02   ; spr_A
- D 0 - I - 0x0010EA 00:90DA: E9        .byte $E9, $81, $F8   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x0010ED 00:90DD: F1        .byte $F1, $83, $F8   ; 
- D 0 - I - 0x0010F0 00:90E0: E1        .byte $E1, $85, $08   ; 
- D 0 - I - 0x0010F3 00:90E3: E9        .byte $E9, $87, $08   ; 
- D 0 - I - 0x0010F6 00:90E6: F1        .byte $F1, $89, $08   ; 
- D 0 - I - 0x0010F9 00:90E9: E1        .byte $E1, $8B, $18   ; 
- D 0 - I - 0x0010FC 00:90EC: E9        .byte $E9, $8D, $18   ; 
- D 0 - I - 0x0010FF 00:90EF: F1        .byte $F1, $8F, $18   ; 

- D 0 - I - 0x001102 00:90F2: 88        .byte $88   ; 
- D 0 - I - 0x001103 00:90F3: 42        .byte $42   ; 
- D 0 - I - 0x001104 00:90F4: 09        .byte $09, $83, $F8   ; 
- D 0 - I - 0x001107 00:90F7: 11        .byte $11, $81, $F8   ; 
- D 0 - I - 0x00110A 00:90FA: 19        .byte $19, $85, $08   ; 
- D 0 - I - 0x00110D 00:90FD: 11        .byte $11, $87, $08   ; 
- D 0 - I - 0x001110 00:9100: 09        .byte $09, $89, $08   ; 
- D 0 - I - 0x001113 00:9103: 19        .byte $19, $8B, $18   ; 
- D 0 - I - 0x001116 00:9106: 11        .byte $11, $8D, $18   ; 
- D 0 - I - 0x001119 00:9109: 09        .byte $09, $8F, $18   ; 

- D 0 - I - 0x00111C 00:910C: 82        .byte $82   ; 
- D 0 - I - 0x00111D 00:910D: 02        .byte $02   ; 
- D 0 - I - 0x00111E 00:910E: F9        .byte $F9, $91, $08   ; 
- D 0 - I - 0x001121 00:9111: F9        .byte $F9, $93, $18   ; 

- D 0 - I - 0x001124 00:9114: 02        .byte $02   ; 
- D 0 - I - 0x001125 00:9115: 42        .byte $42   ; 
- D 0 - I - 0x001126 00:9116: 01        .byte $01, $91, $08   ; 
- D 0 - I - 0x001129 00:9119: 01        .byte $01, $93, $18   ; 



off_09_911C_2A:
- D 0 - I - 0x00112C 00:911C: 8C        .byte $8C   ; counter
- D 0 - I - 0x00112D 00:911D: 02        .byte $02   ; spr_A
- D 0 - I - 0x00112E 00:911E: 01        .byte $01, $BB, $30   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001131 00:9121: 09        .byte $09, $BD, $30   ; 
- D 0 - I - 0x001134 00:9124: 11        .byte $11, $BF, $30   ; 
- D 0 - I - 0x001137 00:9127: F9        .byte $F9, $B9, $30   ; 
- D 0 - I - 0x00113A 00:912A: F1        .byte $F1, $B7, $30   ; 
- D 0 - I - 0x00113D 00:912D: E9        .byte $E9, $B5, $30   ; 
- D 0 - I - 0x001140 00:9130: 11        .byte $11, $B3, $20   ; 
- D 0 - I - 0x001143 00:9133: 09        .byte $09, $B1, $20   ; 
- D 0 - I - 0x001146 00:9136: 01        .byte $01, $AF, $20   ; 
- D 0 - I - 0x001149 00:9139: F9        .byte $F9, $AD, $20   ; 
- D 0 - I - 0x00114C 00:913C: F1        .byte $F1, $AB, $20   ; 
- D 0 - I - 0x00114F 00:913F: E9        .byte $E9, $A9, $20   ; 

- D 0 - I - 0x001152 00:9142: 81        .byte $81   ; 
- D 0 - I - 0x001153 00:9143: 03        .byte $03   ; 
- D 0 - I - 0x001154 00:9144: 09        .byte $09, $A7, $10   ; 

- D 0 - I - 0x001157 00:9147: 83        .byte $83   ; 
- D 0 - I - 0x001158 00:9148: 02        .byte $02   ; 
- D 0 - I - 0x001159 00:9149: 01        .byte $01, $A5, $10   ; 
- D 0 - I - 0x00115C 00:914C: F9        .byte $F9, $A3, $10   ; 
- D 0 - I - 0x00115F 00:914F: F1        .byte $F1, $A1, $10   ; 

- D 0 - I - 0x001162 00:9152: 06        .byte $06   ; 
- D 0 - I - 0x001163 00:9153: 03        .byte $03   ; 
- D 0 - I - 0x001164 00:9154: E9        .byte $E9, $9F, $10   ; 
- D 0 - I - 0x001167 00:9157: 09        .byte $09, $9D, $00   ; 
- D 0 - I - 0x00116A 00:915A: 01        .byte $01, $9B, $00   ; 
- D 0 - I - 0x00116D 00:915D: F9        .byte $F9, $99, $00   ; 
- D 0 - I - 0x001170 00:9160: F1        .byte $F1, $97, $00   ; 
- D 0 - I - 0x001173 00:9163: E9        .byte $E9, $95, $00   ; 



_off032_9166_03:
- - - - - - 0x001176 00:9166: CA 92     .word off_03_92CA_00
- D 0 - I - 0x001178 00:9168: CA 92     .word off_03_92CA_01
- D 0 - I - 0x00117A 00:916A: DA 92     .word off_03_92DA_02
- D 0 - I - 0x00117C 00:916C: E7 92     .word off_03_92E7_03
- - - - - - 0x00117E 00:916E: F7 92     .word off_03_92F7_04
- D 0 - I - 0x001180 00:9170: 06 93     .word off_03_9306_05
- D 0 - I - 0x001182 00:9172: 14 93     .word off_03_9314_06
- D 0 - I - 0x001184 00:9174: 1F 93     .word off_03_931F_07
- D 0 - I - 0x001186 00:9176: 2D 93     .word off_03_932D_08
- D 0 - I - 0x001188 00:9178: 30 93     .word off_03_9330_09
- D 0 - I - 0x00118A 00:917A: 33 93     .word off_03_9333_0A
- D 0 - I - 0x00118C 00:917C: 36 93     .word off_03_9336_0B
- D 0 - I - 0x00118E 00:917E: 44 93     .word off_03_9344_0C
- D 0 - I - 0x001190 00:9180: 4F 93     .word off_03_934F_0D
- D 0 - I - 0x001192 00:9182: 5D 93     .word off_03_935D_0E
- D 0 - I - 0x001194 00:9184: 60 93     .word off_03_9360_0F
- D 0 - I - 0x001196 00:9186: 63 93     .word off_03_9363_10
- D 0 - I - 0x001198 00:9188: 66 93     .word off_03_9366_11
- D 0 - I - 0x00119A 00:918A: 74 93     .word off_03_9374_12
- D 0 - I - 0x00119C 00:918C: 7F 93     .word off_03_937F_13
- D 0 - I - 0x00119E 00:918E: 8A 93     .word off_03_938A_14
- D 0 - I - 0x0011A0 00:9190: 95 93     .word off_03_9395_15
- D 0 - I - 0x0011A2 00:9192: 98 93     .word off_03_9398_16
- D 0 - I - 0x0011A4 00:9194: 9B 93     .word off_03_939B_17
- D 0 - I - 0x0011A6 00:9196: 9E 93     .word off_03_939E_18
- D 0 - I - 0x0011A8 00:9198: A1 93     .word off_03_93A1_19
- D 0 - I - 0x0011AA 00:919A: B1 93     .word off_03_93B1_1A
- D 0 - I - 0x0011AC 00:919C: C3 93     .word off_03_93C3_1B
- D 0 - I - 0x0011AE 00:919E: D3 93     .word off_03_93D3_1C
- D 0 - I - 0x0011B0 00:91A0: E5 93     .word off_03_93E5_1D
- D 0 - I - 0x0011B2 00:91A2: F5 93     .word off_03_93F5_1E
- D 0 - I - 0x0011B4 00:91A4: 05 94     .word off_03_9405_1F
- - - - - - 0x0011B6 00:91A6: 15 94     .word off_03_9415_20
- D 0 - I - 0x0011B8 00:91A8: 25 94     .word off_03_9425_21
- D 0 - I - 0x0011BA 00:91AA: 28 94     .word off_03_9428_22
- - - - - - 0x0011BC 00:91AC: 2B 94     .word off_03_942B_23
- D 0 - I - 0x0011BE 00:91AE: 3B 94     .word off_03_943B_24
- D 0 - I - 0x0011C0 00:91B0: 4B 94     .word off_03_944B_25
- D 0 - I - 0x0011C2 00:91B2: 4E 94     .word off_03_944E_26
- D 0 - I - 0x0011C4 00:91B4: 51 94     .word off_03_9451_27
- D 0 - I - 0x0011C6 00:91B6: 5F 94     .word off_03_945F_28
- D 0 - I - 0x0011C8 00:91B8: 6D 94     .word off_03_946D_29
- D 0 - I - 0x0011CA 00:91BA: 70 94     .word off_03_9470_2A
- D 0 - I - 0x0011CC 00:91BC: 73 94     .word off_03_9473_2B
- D 0 - I - 0x0011CE 00:91BE: 83 94     .word off_03_9483_2C
- - - - - - 0x0011D0 00:91C0: 93 94     .word off_03_9493_2D
- - - - - - 0x0011D2 00:91C2: 93 94     .word off_03_9493_2E
- - - - - - 0x0011D4 00:91C4: 93 94     .word off_03_9493_2F
- - - - - - 0x0011D6 00:91C6: 93 94     .word off_03_9493_30
- - - - - - 0x0011D8 00:91C8: 93 94     .word off_03_9493_31
- D 0 - I - 0x0011DA 00:91CA: 93 94     .word off_03_9493_32
- D 0 - I - 0x0011DC 00:91CC: 9E 94     .word off_03_949E_33
- D 0 - I - 0x0011DE 00:91CE: A1 94     .word off_03_94A1_34
- D 0 - I - 0x0011E0 00:91D0: AC 94     .word off_03_94AC_35
- D 0 - I - 0x0011E2 00:91D2: AF 94     .word off_03_94AF_36
- D 0 - I - 0x0011E4 00:91D4: CF 94     .word off_03_94CF_37
- D 0 - I - 0x0011E6 00:91D6: EC 94     .word off_03_94EC_38
- - - - - - 0x0011E8 00:91D8: 0C 95     .word off_03_950C_39
- D 0 - I - 0x0011EA 00:91DA: 29 95     .word off_03_9529_3A
- D 0 - I - 0x0011EC 00:91DC: 2C 95     .word off_03_952C_3B
- D 0 - I - 0x0011EE 00:91DE: 2F 95     .word off_03_952F_3C
- - - - - - 0x0011F0 00:91E0: 32 95     .word off_03_9532_3D
- D 0 - I - 0x0011F2 00:91E2: 35 95     .word off_03_9535_3E
- D 0 - I - 0x0011F4 00:91E4: 57 95     .word off_03_9557_3F
- D 0 - I - 0x0011F6 00:91E6: 79 95     .word off_03_9579_40
- D 0 - I - 0x0011F8 00:91E8: 99 95     .word off_03_9599_41
- D 0 - I - 0x0011FA 00:91EA: B3 95     .word off_03_95B3_42
- D 0 - I - 0x0011FC 00:91EC: B6 95     .word off_03_95B6_43
- D 0 - I - 0x0011FE 00:91EE: B9 95     .word off_03_95B9_44
- D 0 - I - 0x001200 00:91F0: BC 95     .word off_03_95BC_45
- D 0 - I - 0x001202 00:91F2: BF 95     .word off_03_95BF_46
- D 0 - I - 0x001204 00:91F4: CD 95     .word off_03_95CD_47
- D 0 - I - 0x001206 00:91F6: D8 95     .word off_03_95D8_48
- D 0 - I - 0x001208 00:91F8: E8 95     .word off_03_95E8_49
- D 0 - I - 0x00120A 00:91FA: F5 95     .word off_03_95F5_4A
- D 0 - I - 0x00120C 00:91FC: 03 96     .word off_03_9603_4B
- D 0 - I - 0x00120E 00:91FE: 0E 96     .word off_03_960E_4C
- D 0 - I - 0x001210 00:9200: 1C 96     .word off_03_961C_4D
- D 0 - I - 0x001212 00:9202: 27 96     .word off_03_9627_4E
- D 0 - I - 0x001214 00:9204: 2A 96     .word off_03_962A_4F
- D 0 - I - 0x001216 00:9206: 2D 96     .word off_03_962D_50
- D 0 - I - 0x001218 00:9208: 30 96     .word off_03_9630_51
- D 0 - I - 0x00121A 00:920A: 33 96     .word off_03_9633_52
- D 0 - I - 0x00121C 00:920C: 44 96     .word off_03_9644_53
- D 0 - I - 0x00121E 00:920E: 52 96     .word off_03_9652_54
- D 0 - I - 0x001220 00:9210: 63 96     .word off_03_9663_55
- D 0 - I - 0x001222 00:9212: 71 96     .word off_03_9671_56
- D 0 - I - 0x001224 00:9214: 74 96     .word off_03_9674_57
- D 0 - I - 0x001226 00:9216: 77 96     .word off_03_9677_58
- D 0 - I - 0x001228 00:9218: 7A 96     .word off_03_967A_59
- D 0 - I - 0x00122A 00:921A: 7D 96     .word off_03_967D_5A
- D 0 - I - 0x00122C 00:921C: 8B 96     .word off_03_968B_5B
- D 0 - I - 0x00122E 00:921E: 96 96     .word off_03_9696_5C
- D 0 - I - 0x001230 00:9220: A1 96     .word off_03_96A1_5D
- D 0 - I - 0x001232 00:9222: AC 96     .word off_03_96AC_5E
- D 0 - I - 0x001234 00:9224: AF 96     .word off_03_96AF_5F
- D 0 - I - 0x001236 00:9226: B2 96     .word off_03_96B2_60
- D 0 - I - 0x001238 00:9228: B5 96     .word off_03_96B5_61
- D 0 - I - 0x00123A 00:922A: B8 96     .word off_03_96B8_62
- D 0 - I - 0x00123C 00:922C: C6 96     .word off_03_96C6_63
- D 0 - I - 0x00123E 00:922E: D8 96     .word off_03_96D8_64
- D 0 - I - 0x001240 00:9230: E8 96     .word off_03_96E8_65
- D 0 - I - 0x001242 00:9232: F8 96     .word off_03_96F8_66
- D 0 - I - 0x001244 00:9234: 06 97     .word off_03_9706_67
- D 0 - I - 0x001246 00:9236: 14 97     .word off_03_9714_68
- D 0 - I - 0x001248 00:9238: 24 97     .word off_03_9724_69
- D 0 - I - 0x00124A 00:923A: 36 97     .word off_03_9736_6A
- D 0 - I - 0x00124C 00:923C: 39 97     .word off_03_9739_6B
- D 0 - I - 0x00124E 00:923E: 3C 97     .word off_03_973C_6C
- - - - - - 0x001250 00:9240: 4F 97     .word off_03_974F_6D
- D 0 - I - 0x001252 00:9242: 62 97     .word off_03_9762_6E
- D 0 - I - 0x001254 00:9244: 65 97     .word off_03_9765_6F
- D 0 - I - 0x001256 00:9246: 68 97     .word off_03_9768_70
- D 0 - I - 0x001258 00:9248: 76 97     .word off_03_9776_71
- D 0 - I - 0x00125A 00:924A: 84 97     .word off_03_9784_72
- D 0 - I - 0x00125C 00:924C: 87 97     .word off_03_9787_73
- D 0 - I - 0x00125E 00:924E: 8A 97     .word off_03_978A_74
- D 0 - I - 0x001260 00:9250: 98 97     .word off_03_9798_75
- D 0 - I - 0x001262 00:9252: A6 97     .word off_03_97A6_76
- D 0 - I - 0x001264 00:9254: B6 97     .word off_03_97B6_77
- D 0 - I - 0x001266 00:9256: C6 97     .word off_03_97C6_78
- D 0 - I - 0x001268 00:9258: D4 97     .word off_03_97D4_79
- D 0 - I - 0x00126A 00:925A: E2 97     .word off_03_97E2_7A
- D 0 - I - 0x00126C 00:925C: F2 97     .word off_03_97F2_7B
- D 0 - I - 0x00126E 00:925E: FF 97     .word off_03_97FF_7C
- D 0 - I - 0x001270 00:9260: 0F 98     .word off_03_980F_7D
- - - - - - 0x001272 00:9262: 1C 98     .word off_03_981C_7E
- - - - - - 0x001274 00:9264: 2C 98     .word off_03_982C_7F
- - - - - - 0x001276 00:9266: 39 98     .word off_03_9839_80
- D 0 - I - 0x001278 00:9268: 49 98     .word off_03_9849_81
- D 0 - I - 0x00127A 00:926A: 4C 98     .word off_03_984C_82
- D 0 - I - 0x00127C 00:926C: 4F 98     .word off_03_984F_83
- D 0 - I - 0x00127E 00:926E: 52 98     .word off_03_9852_84
- D 0 - I - 0x001280 00:9270: 65 98     .word off_03_9865_85
- D 0 - I - 0x001282 00:9272: 75 98     .word off_03_9875_86
- D 0 - I - 0x001284 00:9274: 88 98     .word off_03_9888_87
- D 0 - I - 0x001286 00:9276: 8B 98     .word off_03_988B_88
- D 0 - I - 0x001288 00:9278: 8E 98     .word off_03_988E_89
- - - - - - 0x00128A 00:927A: 91 98     .word off_03_9891_8A
- - - - - - 0x00128C 00:927C: A1 98     .word off_03_98A1_8B
- - - - - - 0x00128E 00:927E: AE 98     .word off_03_98AE_8C
- - - - - - 0x001290 00:9280: BB 98     .word off_03_98BB_8D
- - - - - - 0x001292 00:9282: C8 98     .word off_03_98C8_8E
- - - - - - 0x001294 00:9284: CB 98     .word off_03_98CB_8F
- - - - - - 0x001296 00:9286: CE 98     .word off_03_98CE_90
- - - - - - 0x001298 00:9288: D1 98     .word off_03_98D1_91
- D 0 - I - 0x00129A 00:928A: D4 98     .word off_03_98D4_92
- D 0 - I - 0x00129C 00:928C: E4 98     .word off_03_98E4_93
- D 0 - I - 0x00129E 00:928E: F6 98     .word off_03_98F6_94
- - - - - - 0x0012A0 00:9290: 06 99     .word off_03_9906_95
- D 0 - I - 0x0012A2 00:9292: 18 99     .word off_03_9918_96
- D 0 - I - 0x0012A4 00:9294: 28 99     .word off_03_9928_97
- D 0 - I - 0x0012A6 00:9296: 38 99     .word off_03_9938_98
- D 0 - I - 0x0012A8 00:9298: 48 99     .word off_03_9948_99
- D 0 - I - 0x0012AA 00:929A: 58 99     .word off_03_9958_9A
- - - - - - 0x0012AC 00:929C: 5B 99     .word off_03_995B_9B
- D 0 - I - 0x0012AE 00:929E: 5E 99     .word off_03_995E_9C
- D 0 - I - 0x0012B0 00:92A0: 71 99     .word off_03_9971_9D
- D 0 - I - 0x0012B2 00:92A2: 84 99     .word off_03_9984_9E
- D 0 - I - 0x0012B4 00:92A4: 87 99     .word off_03_9987_9F
- D 0 - I - 0x0012B6 00:92A6: 8A 99     .word off_03_998A_A0
- D 0 - I - 0x0012B8 00:92A8: 9A 99     .word off_03_999A_A1
- D 0 - I - 0x0012BA 00:92AA: AA 99     .word off_03_99AA_A2
- D 0 - I - 0x0012BC 00:92AC: AD 99     .word off_03_99AD_A3
- D 0 - I - 0x0012BE 00:92AE: B0 99     .word off_03_99B0_A4
- D 0 - I - 0x0012C0 00:92B0: C0 99     .word off_03_99C0_A5
- D 0 - I - 0x0012C2 00:92B2: D0 99     .word off_03_99D0_A6
- D 0 - I - 0x0012C4 00:92B4: E0 99     .word off_03_99E0_A7
- D 0 - I - 0x0012C6 00:92B6: F0 99     .word off_03_99F0_A8
- D 0 - I - 0x0012C8 00:92B8: 03 9A     .word off_03_9A03_A9
- D 0 - I - 0x0012CA 00:92BA: 13 9A     .word off_03_9A13_AA
- D 0 - I - 0x0012CC 00:92BC: 16 9A     .word off_03_9A16_AB
- D 0 - I - 0x0012CE 00:92BE: 19 9A     .word off_03_9A19_AC
- D 0 - I - 0x0012D0 00:92C0: 29 9A     .word off_03_9A29_AD
- D 0 - I - 0x0012D2 00:92C2: 2C 9A     .word off_03_9A2C_AE
- D 0 - I - 0x0012D4 00:92C4: 3E 9A     .word off_03_9A3E_AF
- D 0 - I - 0x0012D6 00:92C6: 4E 9A     .word off_03_9A4E_B0
- D 0 - I - 0x0012D8 00:92C8: 60 9A     .word off_03_9A60_B1



off_03_92CA_00:
off_03_92CA_01:
- D 0 - I - 0x0012DA 00:92CA: 81        .byte $81   ; counter
- D 0 - I - 0x0012DB 00:92CB: 41        .byte $41   ; spr_A
- D 0 - I - 0x0012DC 00:92CC: FF        .byte $FF, $B1, $F0   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x0012DF 00:92CF: 03        .byte $03   ; 
- D 0 - I - 0x0012E0 00:92D0: 01        .byte $01   ; 
- D 0 - I - 0x0012E1 00:92D1: F7        .byte $F7, $B1, $F0   ; 
- D 0 - I - 0x0012E4 00:92D4: F7        .byte $F7, $01, $00   ; 
- D 0 - I - 0x0012E7 00:92D7: FF        .byte $FF, $03, $00   ; 



off_03_92DA_02:
- D 0 - I - 0x0012EA 00:92DA: 82        .byte $82   ; counter
- D 0 - I - 0x0012EB 00:92DB: 01        .byte $01   ; spr_A
- D 0 - I - 0x0012EC 00:92DC: FB        .byte $FB, $05, $00   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x0012EF 00:92DF: F7        .byte $F7, $B1, $F2   ; 

- D 0 - I - 0x0012F2 00:92E2: 01        .byte $01   ; 
- D 0 - I - 0x0012F3 00:92E3: 41        .byte $41   ; 
- D 0 - I - 0x0012F4 00:92E4: FF        .byte $FF, $B1, $F2   ; 



off_03_92E7_03:
- D 0 - I - 0x0012F7 00:92E7: 83        .byte $83   ; counter
- D 0 - I - 0x0012F8 00:92E8: 41        .byte $41   ; spr_A
- D 0 - I - 0x0012F9 00:92E9: FF        .byte $FF, $01, $00   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x0012FC 00:92EC: F7        .byte $F7, $03, $00   ; 
- D 0 - I - 0x0012FF 00:92EF: 00        .byte $00, $B1, $F0   ; 

- D 0 - I - 0x001302 00:92F2: 01        .byte $01   ; 
- D 0 - I - 0x001303 00:92F3: 01        .byte $01   ; 
- D 0 - I - 0x001304 00:92F4: F8        .byte $F8, $B1, $F0   ; 



off_03_92F7_04:
- - - - - - 0x001307 00:92F7: 81        .byte $81   ; counter
- - - - - - 0x001308 00:92F8: 41        .byte $41   ; spr_A
- - - - - - 0x001309 00:92F9: FB        .byte $FB, $05, $00   ; spr_X, spr_T, spr_Y

- - - - - - 0x00130C 00:92FC: 81        .byte $81   ; 
- - - - - - 0x00130D 00:92FD: 01        .byte $01   ; 
- - - - - - 0x00130E 00:92FE: F8        .byte $F8, $B1, $F2   ; 

- - - - - - 0x001311 00:9301: 01        .byte $01   ; 
- - - - - - 0x001312 00:9302: 41        .byte $41   ; 
- - - - - - 0x001313 00:9303: 00        .byte $00, $B1, $F2   ; 



off_03_932D_08:
- D 0 - I - 0x00133D 00:932D: FF        .byte $FF   ; 
off_03_9306_05:
- D 0 - I - 0x001316 00:9306: 04        .byte $04   ; counter
- D 0 - I - 0x001317 00:9307: 01        .byte $01   ; spr_A
- D 0 - I - 0x001318 00:9308: F9        .byte $F9, $B3, $EF   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x00131B 00:930B: 01        .byte $01, $B5, $EF   ; 
- D 0 - I - 0x00131E 00:930E: FA        .byte $FA, $07, $FF   ; 
- D 0 - I - 0x001321 00:9311: 02        .byte $02, $09, $FF   ; 



off_03_9330_09:
- D 0 - I - 0x001340 00:9330: FF        .byte $FF   ; 
off_03_9314_06:
- D 0 - I - 0x001324 00:9314: 03        .byte $03   ; counter
- D 0 - I - 0x001325 00:9315: 01        .byte $01   ; spr_A
- D 0 - I - 0x001326 00:9316: FD        .byte $FD, $0B, $00   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001329 00:9319: F7        .byte $F7, $B3, $F2   ; 
- D 0 - I - 0x00132C 00:931C: FF        .byte $FF, $B5, $F2   ; 



off_03_9333_0A:
- D 0 - I - 0x001343 00:9333: FF        .byte $FF   ; 
off_03_931F_07:
- D 0 - I - 0x00132F 00:931F: 04        .byte $04   ; counter
- D 0 - I - 0x001330 00:9320: 01        .byte $01   ; spr_A
- D 0 - I - 0x001331 00:9321: F4        .byte $F4, $B3, $EF   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001334 00:9324: FC        .byte $FC, $B5, $EF   ; 
- D 0 - I - 0x001337 00:9327: F8        .byte $F8, $0D, $FF   ; 
- D 0 - I - 0x00133A 00:932A: 00        .byte $00, $0F, $FF   ; 



off_03_935D_0E:
- D 0 - I - 0x00136D 00:935D: FF        .byte $FF   ; 
off_03_9336_0B:
- D 0 - I - 0x001346 00:9336: 04        .byte $04   ; counter
- D 0 - I - 0x001347 00:9337: 01        .byte $01   ; spr_A
- D 0 - I - 0x001348 00:9338: F7        .byte $F7, $B7, $F0   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x00134B 00:933B: FF        .byte $FF, $B9, $F0   ; 
- D 0 - I - 0x00134E 00:933E: F6        .byte $F6, $11, $00   ; 
- D 0 - I - 0x001351 00:9341: FE        .byte $FE, $13, $00   ; 



off_03_9360_0F:
- D 0 - I - 0x001370 00:9360: FF        .byte $FF   ; 
off_03_9344_0C:
- D 0 - I - 0x001354 00:9344: 03        .byte $03   ; counter
- D 0 - I - 0x001355 00:9345: 01        .byte $01   ; spr_A
- D 0 - I - 0x001356 00:9346: F7        .byte $F7, $B7, $F3   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001359 00:9349: FF        .byte $FF, $B9, $F3   ; 
- D 0 - I - 0x00135C 00:934C: FC        .byte $FC, $15, $01   ; 



off_03_9363_10:
- D 0 - I - 0x001373 00:9363: FF        .byte $FF   ; 
off_03_934F_0D:
- D 0 - I - 0x00135F 00:934F: 04        .byte $04   ; counter
- D 0 - I - 0x001360 00:9350: 01        .byte $01   ; spr_A
- D 0 - I - 0x001361 00:9351: F6        .byte $F6, $B7, $F0   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001364 00:9354: FE        .byte $FE, $B9, $F0   ; 
- D 0 - I - 0x001367 00:9357: F8        .byte $F8, $17, $00   ; 
- D 0 - I - 0x00136A 00:935A: 00        .byte $00, $19, $00   ; 



off_03_9395_15:
- D 0 - I - 0x0013A5 00:9395: FF        .byte $FF   ; 
off_03_9366_11:
- D 0 - I - 0x001376 00:9366: 04        .byte $04   ; counter
- D 0 - I - 0x001377 00:9367: 01        .byte $01   ; spr_A
- D 0 - I - 0x001378 00:9368: F8        .byte $F8, $BB, $EF   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x00137B 00:936B: 00        .byte $00, $BD, $EF   ; 
- D 0 - I - 0x00137E 00:936E: F9        .byte $F9, $1B, $FF   ; 
- D 0 - I - 0x001381 00:9371: 01        .byte $01, $1D, $FF   ; 



off_03_9398_16:
- D 0 - I - 0x0013A8 00:9398: FF        .byte $FF   ; 
off_03_9374_12:
- D 0 - I - 0x001384 00:9374: 03        .byte $03   ; counter
- D 0 - I - 0x001385 00:9375: 01        .byte $01   ; spr_A
- D 0 - I - 0x001386 00:9376: F8        .byte $F8, $BB, $F1   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001389 00:9379: 00        .byte $00, $BD, $F1   ; 
- D 0 - I - 0x00138C 00:937C: FD        .byte $FD, $1F, $00   ; 



off_03_939B_17:
- D 0 - I - 0x0013AB 00:939B: FF        .byte $FF   ; 
off_03_937F_13:
- D 0 - I - 0x00138F 00:937F: 03        .byte $03   ; counter
- D 0 - I - 0x001390 00:9380: 01        .byte $01   ; spr_A
- D 0 - I - 0x001391 00:9381: FB        .byte $FB, $BB, $EF   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001394 00:9384: 03        .byte $03, $BD, $EF   ; 
- D 0 - I - 0x001397 00:9387: FF        .byte $FF, $21, $FF   ; 



off_03_939E_18:
- D 0 - I - 0x0013AE 00:939E: FF        .byte $FF   ; 
off_03_938A_14:
- D 0 - I - 0x00139A 00:938A: 03        .byte $03   ; counter
- D 0 - I - 0x00139B 00:938B: 01        .byte $01   ; spr_A
- D 0 - I - 0x00139C 00:938C: FB        .byte $FB, $BB, $F1   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x00139F 00:938F: 03        .byte $03, $BD, $F1   ; 
- D 0 - I - 0x0013A2 00:9392: 00        .byte $00, $1F, $00   ; 



off_03_93A1_19:
- D 0 - I - 0x0013B1 00:93A1: 83        .byte $83   ; counter
- D 0 - I - 0x0013B2 00:93A2: 01        .byte $01   ; spr_A
- D 0 - I - 0x0013B3 00:93A3: F9        .byte $F9, $23, $FE   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x0013B6 00:93A6: 01        .byte $01, $25, $FE   ; 
- D 0 - I - 0x0013B9 00:93A9: F8        .byte $F8, $BF, $EE   ; 

- D 0 - I - 0x0013BC 00:93AC: 01        .byte $01   ; 
- D 0 - I - 0x0013BD 00:93AD: 41        .byte $41   ; 
- D 0 - I - 0x0013BE 00:93AE: 00        .byte $00, $BF, $EE   ; 



off_03_93B1_1A:
- D 0 - I - 0x0013C1 00:93B1: 81        .byte $81   ; counter
- D 0 - I - 0x0013C2 00:93B2: 01        .byte $01   ; spr_A
- D 0 - I - 0x0013C3 00:93B3: F9        .byte $F9, $27, $FE   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x0013C6 00:93B6: 82        .byte $82   ; 
- D 0 - I - 0x0013C7 00:93B7: 41        .byte $41   ; 
- D 0 - I - 0x0013C8 00:93B8: 01        .byte $01, $23, $FE   ; 
- D 0 - I - 0x0013CB 00:93BB: 00        .byte $00, $BF, $F0   ; 

- D 0 - I - 0x0013CE 00:93BE: 01        .byte $01   ; 
- D 0 - I - 0x0013CF 00:93BF: 01        .byte $01   ; 
- D 0 - I - 0x0013D0 00:93C0: F8        .byte $F8, $BF, $F0   ; 



off_03_93C3_1B:
- D 0 - I - 0x0013D3 00:93C3: 83        .byte $83   ; counter
- D 0 - I - 0x0013D4 00:93C4: 41        .byte $41   ; spr_A
- D 0 - I - 0x0013D5 00:93C5: 01        .byte $01, $23, $FE   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x0013D8 00:93C8: F9        .byte $F9, $25, $FE   ; 
- D 0 - I - 0x0013DB 00:93CB: 02        .byte $02, $BF, $EE   ; 

- D 0 - I - 0x0013DE 00:93CE: 01        .byte $01   ; 
- D 0 - I - 0x0013DF 00:93CF: 01        .byte $01   ; 
- D 0 - I - 0x0013E0 00:93D0: FA        .byte $FA, $BF, $EE   ; 



off_03_93D3_1C:
- D 0 - I - 0x0013E3 00:93D3: 81        .byte $81   ; counter
- D 0 - I - 0x0013E4 00:93D4: 41        .byte $41   ; spr_A
- D 0 - I - 0x0013E5 00:93D5: 01        .byte $01, $27, $FE   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x0013E8 00:93D8: 82        .byte $82   ; 
- D 0 - I - 0x0013E9 00:93D9: 01        .byte $01   ; 
- D 0 - I - 0x0013EA 00:93DA: F9        .byte $F9, $23, $FE   ; 
- D 0 - I - 0x0013ED 00:93DD: FA        .byte $FA, $BF, $F0   ; 

- D 0 - I - 0x0013F0 00:93E0: 01        .byte $01   ; 
- D 0 - I - 0x0013F1 00:93E1: 41        .byte $41   ; 
- D 0 - I - 0x0013F2 00:93E2: 02        .byte $02, $BF, $F0   ; 



off_03_93E5_1D:
- D 0 - I - 0x0013F5 00:93E5: 83        .byte $83   ; counter
- D 0 - I - 0x0013F6 00:93E6: 01        .byte $01   ; spr_A
- D 0 - I - 0x0013F7 00:93E7: FB        .byte $FB, $29, $FF   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x0013FA 00:93EA: 03        .byte $03, $2B, $FF   ; 
- D 0 - I - 0x0013FD 00:93ED: F9        .byte $F9, $B1, $EF   ; 

- D 0 - I - 0x001400 00:93F0: 01        .byte $01   ; 
- D 0 - I - 0x001401 00:93F1: 41        .byte $41   ; 
- D 0 - I - 0x001402 00:93F2: 01        .byte $01, $B1, $EF   ; 



off_03_93F5_1E:
- D 0 - I - 0x001405 00:93F5: 83        .byte $83   ; counter
- D 0 - I - 0x001406 00:93F6: 01        .byte $01   ; spr_A
- D 0 - I - 0x001407 00:93F7: FB        .byte $FB, $29, $FF   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x00140A 00:93FA: 03        .byte $03, $2B, $FF   ; 
- D 0 - I - 0x00140D 00:93FD: F9        .byte $F9, $B1, $F1   ; 

- D 0 - I - 0x001410 00:9400: 01        .byte $01   ; 
- D 0 - I - 0x001411 00:9401: 41        .byte $41   ; 
- D 0 - I - 0x001412 00:9402: 01        .byte $01, $B1, $F1   ; 



off_03_9425_21:
- D 0 - I - 0x001435 00:9425: FF        .byte $FF   ; 
off_03_9405_1F:
- D 0 - I - 0x001415 00:9405: 82        .byte $82   ; counter
- D 0 - I - 0x001416 00:9406: 41        .byte $41   ; spr_A
- D 0 - I - 0x001417 00:9407: FE        .byte $FE, $29, $FF   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x00141A 00:940A: F6        .byte $F6, $2B, $FF   ; 

- D 0 - I - 0x00141D 00:940D: 02        .byte $02   ; 
- D 0 - I - 0x00141E 00:940E: 01        .byte $01   ; 
- D 0 - I - 0x00141F 00:940F: F6        .byte $F6, $B3, $EF   ; 
- D 0 - I - 0x001422 00:9412: FE        .byte $FE, $B5, $EF   ; 



off_03_9428_22:
- D 0 - I - 0x001438 00:9428: FF        .byte $FF   ; 
off_03_9415_20:
- D 0 - I - 0x001425 00:9415: 82        .byte $82   ; counter
- D 0 - I - 0x001426 00:9416: 41        .byte $41   ; spr_A
- D 0 - I - 0x001427 00:9417: FE        .byte $FE, $29, $FF   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x00142A 00:941A: F6        .byte $F6, $2B, $FF   ; 

- D 0 - I - 0x00142D 00:941D: 02        .byte $02   ; 
- D 0 - I - 0x00142E 00:941E: 01        .byte $01   ; 
- D 0 - I - 0x00142F 00:941F: F8        .byte $F8, $B3, $F1   ; 
- D 0 - I - 0x001432 00:9422: 00        .byte $00, $B5, $F1   ; 



off_03_944B_25:
- D 0 - I - 0x00145B 00:944B: FF        .byte $FF   ; 
off_03_942B_23:
- D 0 - I - 0x00143B 00:942B: 82        .byte $82   ; counter
- D 0 - I - 0x00143C 00:942C: 41        .byte $41   ; spr_A
- D 0 - I - 0x00143D 00:942D: FE        .byte $FE, $29, $FF   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001440 00:9430: F6        .byte $F6, $2B, $FF   ; 

- D 0 - I - 0x001443 00:9433: 02        .byte $02   ; 
- D 0 - I - 0x001444 00:9434: 01        .byte $01   ; 
- D 0 - I - 0x001445 00:9435: F6        .byte $F6, $B7, $EF   ; 
- D 0 - I - 0x001448 00:9438: FE        .byte $FE, $B9, $EF   ; 



off_03_944E_26:
- D 0 - I - 0x00145E 00:944E: FF        .byte $FF   ; 
off_03_943B_24:
- D 0 - I - 0x00144B 00:943B: 82        .byte $82   ; counter
- D 0 - I - 0x00144C 00:943C: 41        .byte $41   ; spr_A
- D 0 - I - 0x00144D 00:943D: FE        .byte $FE, $29, $FF   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001450 00:9440: F6        .byte $F6, $2B, $FF   ; 

- D 0 - I - 0x001453 00:9443: 02        .byte $02   ; 
- D 0 - I - 0x001454 00:9444: 01        .byte $01   ; 
- D 0 - I - 0x001455 00:9445: F8        .byte $F8, $B7, $F0   ; 
- D 0 - I - 0x001458 00:9448: 00        .byte $00, $B9, $F0   ; 



off_03_946D_29:
- D 0 - I - 0x00147D 00:946D: FF        .byte $FF   ; 
off_03_9451_27:
- D 0 - I - 0x001461 00:9451: 04        .byte $04   ; counter
- D 0 - I - 0x001462 00:9452: 01        .byte $01   ; spr_A
- D 0 - I - 0x001463 00:9453: FA        .byte $FA, $2D, $FE   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001466 00:9456: 02        .byte $02, $2F, $FE   ; 
- D 0 - I - 0x001469 00:9459: F9        .byte $F9, $BB, $EF   ; 
- D 0 - I - 0x00146C 00:945C: 01        .byte $01, $BD, $EF   ; 



off_03_9470_2A:
- D 0 - I - 0x001480 00:9470: FF        .byte $FF   ; 
off_03_945F_28:
- D 0 - I - 0x00146F 00:945F: 04        .byte $04   ; counter
- D 0 - I - 0x001470 00:9460: 01        .byte $01   ; spr_A
- D 0 - I - 0x001471 00:9461: FA        .byte $FA, $2D, $FE   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001474 00:9464: 02        .byte $02, $2F, $FE   ; 
- D 0 - I - 0x001477 00:9467: FA        .byte $FA, $BB, $EE   ; 
- D 0 - I - 0x00147A 00:946A: 02        .byte $02, $BD, $EE   ; 



off_03_9473_2B:
- D 0 - I - 0x001483 00:9473: 83        .byte $83   ; counter
- D 0 - I - 0x001484 00:9474: 01        .byte $01   ; spr_A
- D 0 - I - 0x001485 00:9475: FA        .byte $FA, $2D, $FE   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001488 00:9478: 02        .byte $02, $2F, $FE   ; 
- D 0 - I - 0x00148B 00:947B: FA        .byte $FA, $BF, $EE   ; 

- D 0 - I - 0x00148E 00:947E: 01        .byte $01   ; 
- D 0 - I - 0x00148F 00:947F: 41        .byte $41   ; 
- D 0 - I - 0x001490 00:9480: 02        .byte $02, $BF, $EE   ; 



off_03_9483_2C:
- D 0 - I - 0x001493 00:9483: 83        .byte $83   ; counter
- D 0 - I - 0x001494 00:9484: 01        .byte $01   ; spr_A
- D 0 - I - 0x001495 00:9485: FA        .byte $FA, $2D, $FE   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001498 00:9488: 02        .byte $02, $2F, $FE   ; 
- D 0 - I - 0x00149B 00:948B: FA        .byte $FA, $BF, $EF   ; 

- D 0 - I - 0x00149E 00:948E: 01        .byte $01   ; 
- D 0 - I - 0x00149F 00:948F: 41        .byte $41   ; 
- D 0 - I - 0x0014A0 00:9490: 02        .byte $02, $BF, $EF   ; 



off_03_949E_33:
- D 0 - I - 0x0014AE 00:949E: FF        .byte $FF   ; 
off_03_9493_2D:
off_03_9493_2E:
off_03_9493_2F:
off_03_9493_30:
off_03_9493_31:
off_03_9493_32:
- D 0 - I - 0x0014A3 00:9493: 03        .byte $03   ; counter
- D 0 - I - 0x0014A4 00:9494: 01        .byte $01   ; spr_A
- D 0 - I - 0x0014A5 00:9495: F5        .byte $F5, $B3, $F1   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x0014A8 00:9498: FD        .byte $FD, $B5, $F1   ; 
- D 0 - I - 0x0014AB 00:949B: FB        .byte $FB, $0B, $00   ; 



off_03_94AC_35:
- D 0 - I - 0x0014BC 00:94AC: FF        .byte $FF   ; 
off_03_94A1_34:
- D 0 - I - 0x0014B1 00:94A1: 03        .byte $03   ; counter
- D 0 - I - 0x0014B2 00:94A2: 01        .byte $01   ; spr_A
- D 0 - I - 0x0014B3 00:94A3: F6        .byte $F6, $B7, $F3   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x0014B6 00:94A6: FE        .byte $FE, $B9, $F3   ; 
- D 0 - I - 0x0014B9 00:94A9: FB        .byte $FB, $15, $01   ; 



off_03_9529_3A:
- D 0 - I - 0x001539 00:9529: FF        .byte $FF   ; 
off_03_94AF_36:
- D 0 - I - 0x0014BF 00:94AF: 0A        .byte $0A   ; counter
- D 0 - I - 0x0014C0 00:94B0: 00        .byte $00   ; spr_A
- D 0 - I - 0x0014C1 00:94B1: F6        .byte $F6, $91, $01   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x0014C4 00:94B4: EE        .byte $EE, $8F, $01   ; 
- D 0 - I - 0x0014C7 00:94B7: FE        .byte $FE, $93, $01   ; 
- D 0 - I - 0x0014CA 00:94BA: F1        .byte $F1, $81, $E1   ; 
- D 0 - I - 0x0014CD 00:94BD: F9        .byte $F9, $83, $E1   ; 
- D 0 - I - 0x0014D0 00:94C0: 01        .byte $01, $85, $E1   ; 
- D 0 - I - 0x0014D3 00:94C3: F1        .byte $F1, $87, $F1   ; 
- D 0 - I - 0x0014D6 00:94C6: F9        .byte $F9, $89, $F1   ; 
- D 0 - I - 0x0014D9 00:94C9: 01        .byte $01, $8B, $F1   ; 
- D 0 - I - 0x0014DC 00:94CC: F8        .byte $F8, $8D, $01   ; 



off_03_952C_3B:
- D 0 - I - 0x00153C 00:952C: FF        .byte $FF   ; 
off_03_94CF_37:
- D 0 - I - 0x0014DF 00:94CF: 09        .byte $09   ; counter
- D 0 - I - 0x0014E0 00:94D0: 00        .byte $00   ; spr_A
- D 0 - I - 0x0014E1 00:94D1: F9        .byte $F9, $95, $01   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x0014E4 00:94D4: 01        .byte $01, $97, $01   ; 
- D 0 - I - 0x0014E7 00:94D7: F2        .byte $F2, $81, $E4   ; 
- D 0 - I - 0x0014EA 00:94DA: FA        .byte $FA, $83, $E4   ; 
- D 0 - I - 0x0014ED 00:94DD: 02        .byte $02, $85, $E4   ; 
- D 0 - I - 0x0014F0 00:94E0: F2        .byte $F2, $87, $F4   ; 
- D 0 - I - 0x0014F3 00:94E3: FA        .byte $FA, $89, $F4   ; 
- D 0 - I - 0x0014F6 00:94E6: 02        .byte $02, $8B, $F4   ; 
- D 0 - I - 0x0014F9 00:94E9: FA        .byte $FA, $8D, $04   ; 



off_03_952F_3C:
- D 0 - I - 0x00153F 00:952F: FF        .byte $FF   ; 
off_03_94EC_38:
- D 0 - I - 0x0014FC 00:94EC: 0A        .byte $0A   ; counter
- D 0 - I - 0x0014FD 00:94ED: 00        .byte $00   ; spr_A
- D 0 - I - 0x0014FE 00:94EE: F0        .byte $F0, $99, $01   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001501 00:94F1: F8        .byte $F8, $9B, $01   ; 
- D 0 - I - 0x001504 00:94F4: 00        .byte $00, $9D, $01   ; 
- D 0 - I - 0x001507 00:94F7: EF        .byte $EF, $81, $E1   ; 
- D 0 - I - 0x00150A 00:94FA: F7        .byte $F7, $83, $E1   ; 
- D 0 - I - 0x00150D 00:94FD: EF        .byte $EF, $87, $F1   ; 
- D 0 - I - 0x001510 00:9500: F7        .byte $F7, $89, $F1   ; 
- D 0 - I - 0x001513 00:9503: FF        .byte $FF, $85, $E1   ; 
- D 0 - I - 0x001516 00:9506: FF        .byte $FF, $8B, $F1   ; 
- D 0 - I - 0x001519 00:9509: F6        .byte $F6, $8D, $01   ; 



off_03_9532_3D:
- - - - - - 0x001542 00:9532: FF        .byte $FF   ; 
off_03_950C_39:
- - - - - - 0x00151C 00:950C: 09        .byte $09   ; counter
- - - - - - 0x00151D 00:950D: 00        .byte $00   ; spr_A
- - - - - - 0x00151E 00:950E: F9        .byte $F9, $95, $01   ; spr_X, spr_T, spr_Y
- - - - - - 0x001521 00:9511: 01        .byte $01, $97, $01   ; 
- - - - - - 0x001524 00:9514: F2        .byte $F2, $81, $E4   ; 
- - - - - - 0x001527 00:9517: FA        .byte $FA, $83, $E4   ; 
- - - - - - 0x00152A 00:951A: 02        .byte $02, $85, $E4   ; 
- - - - - - 0x00152D 00:951D: F2        .byte $F2, $87, $F4   ; 
- - - - - - 0x001530 00:9520: FA        .byte $FA, $89, $F4   ; 
- - - - - - 0x001533 00:9523: 02        .byte $02, $8B, $F4   ; 
- - - - - - 0x001536 00:9526: FA        .byte $FA, $8D, $04   ; 



off_03_95B3_42:
- D 0 - I - 0x0015C3 00:95B3: FF        .byte $FF   ; 
off_03_9535_3E:
- D 0 - I - 0x001545 00:9535: 83        .byte $83   ; counter
- D 0 - I - 0x001546 00:9536: 00        .byte $00   ; spr_A
- D 0 - I - 0x001547 00:9537: F8        .byte $F8, $9F, $01   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x00154A 00:953A: 00        .byte $00, $A1, $01   ; 
- D 0 - I - 0x00154D 00:953D: 08        .byte $08, $A3, $01   ; 

- D 0 - I - 0x001550 00:9540: 07        .byte $07   ; 
- D 0 - I - 0x001551 00:9541: 40        .byte $40   ; 
- D 0 - I - 0x001552 00:9542: 08        .byte $08, $81, $E1   ; 
- D 0 - I - 0x001555 00:9545: 00        .byte $00, $83, $E1   ; 
- D 0 - I - 0x001558 00:9548: F8        .byte $F8, $85, $E1   ; 
- D 0 - I - 0x00155B 00:954B: 08        .byte $08, $87, $F1   ; 
- D 0 - I - 0x00155E 00:954E: 00        .byte $00, $89, $F1   ; 
- D 0 - I - 0x001561 00:9551: F8        .byte $F8, $8B, $F1   ; 
- D 0 - I - 0x001564 00:9554: 01        .byte $01, $8D, $01   ; 



off_03_95B6_43:
- D 0 - I - 0x0015C6 00:95B6: FF        .byte $FF   ; 
off_03_9557_3F:
- D 0 - I - 0x001567 00:9557: 83        .byte $83   ; counter
- D 0 - I - 0x001568 00:9558: 00        .byte $00   ; spr_A
- D 0 - I - 0x001569 00:9559: F8        .byte $F8, $9F, $01   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x00156C 00:955C: 00        .byte $00, $A1, $01   ; 
- D 0 - I - 0x00156F 00:955F: 08        .byte $08, $A3, $01   ; 

- D 0 - I - 0x001572 00:9562: 07        .byte $07   ; 
- D 0 - I - 0x001573 00:9563: 40        .byte $40   ; 
- D 0 - I - 0x001574 00:9564: 08        .byte $08, $81, $E3   ; 
- D 0 - I - 0x001577 00:9567: 00        .byte $00, $83, $E3   ; 
- D 0 - I - 0x00157A 00:956A: F8        .byte $F8, $85, $E3   ; 
- D 0 - I - 0x00157D 00:956D: 08        .byte $08, $87, $F3   ; 
- D 0 - I - 0x001580 00:9570: 00        .byte $00, $89, $F3   ; 
- D 0 - I - 0x001583 00:9573: F8        .byte $F8, $8B, $F3   ; 
- D 0 - I - 0x001586 00:9576: 01        .byte $01, $8D, $03   ; 



off_03_95B9_44:
- D 0 - I - 0x0015C9 00:95B9: FF        .byte $FF   ; 
off_03_9579_40:
- D 0 - I - 0x001589 00:9579: 0A        .byte $0A   ; counter
- D 0 - I - 0x00158A 00:957A: 40        .byte $40   ; spr_A
- D 0 - I - 0x00158B 00:957B: 08        .byte $08, $B7, $E0   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x00158E 00:957E: 00        .byte $00, $B9, $E0   ; 
- D 0 - I - 0x001591 00:9581: 08        .byte $08, $BB, $F0   ; 
- D 0 - I - 0x001594 00:9584: 00        .byte $00, $BD, $F0   ; 
- D 0 - I - 0x001597 00:9587: F8        .byte $F8, $BF, $F0   ; 
- D 0 - I - 0x00159A 00:958A: F8        .byte $F8, $A9, $E0   ; 
- D 0 - I - 0x00159D 00:958D: F0        .byte $F0, $AB, $E0   ; 
- D 0 - I - 0x0015A0 00:9590: F0        .byte $F0, $B1, $F0   ; 
- D 0 - I - 0x0015A3 00:9593: 00        .byte $00, $B3, $00   ; 
- D 0 - I - 0x0015A6 00:9596: F8        .byte $F8, $B5, $00   ; 



off_03_95BC_45:
- D 0 - I - 0x0015CC 00:95BC: FF        .byte $FF   ; 
off_03_9599_41:
- D 0 - I - 0x0015A9 00:9599: 08        .byte $08   ; counter
- D 0 - I - 0x0015AA 00:959A: 40        .byte $40   ; spr_A
- D 0 - I - 0x0015AB 00:959B: F8        .byte $F8, $A9, $E0   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x0015AE 00:959E: F0        .byte $F0, $AB, $E0   ; 
- D 0 - I - 0x0015B1 00:95A1: F0        .byte $F0, $B1, $F0   ; 
- D 0 - I - 0x0015B4 00:95A4: 00        .byte $00, $B3, $00   ; 
- D 0 - I - 0x0015B7 00:95A7: F8        .byte $F8, $B5, $00   ; 
- D 0 - I - 0x0015BA 00:95AA: 00        .byte $00, $A7, $E0   ; 
- D 0 - I - 0x0015BD 00:95AD: 00        .byte $00, $AD, $F0   ; 
- D 0 - I - 0x0015C0 00:95B0: F8        .byte $F8, $AF, $F0   ; 



off_03_95BF_46:
- D 0 - I - 0x0015CF 00:95BF: 04        .byte $04   ; counter
- D 0 - I - 0x0015D0 00:95C0: 00        .byte $00   ; spr_A
- D 0 - I - 0x0015D1 00:95C1: F9        .byte $F9, $A3, $F0   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x0015D4 00:95C4: 01        .byte $01, $A5, $F0   ; 
- D 0 - I - 0x0015D7 00:95C7: F9        .byte $F9, $01, $00   ; 
- D 0 - I - 0x0015DA 00:95CA: 01        .byte $01, $03, $00   ; 



off_03_95CD_47:
- D 0 - I - 0x0015DD 00:95CD: 03        .byte $03   ; counter
- D 0 - I - 0x0015DE 00:95CE: 00        .byte $00   ; spr_A
- D 0 - I - 0x0015DF 00:95CF: F9        .byte $F9, $A3, $F2   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x0015E2 00:95D2: 01        .byte $01, $A5, $F2   ; 
- D 0 - I - 0x0015E5 00:95D5: FC        .byte $FC, $05, $00   ; 



off_03_95D8_48:
- D 0 - I - 0x0015E8 00:95D8: 82        .byte $82   ; counter
- D 0 - I - 0x0015E9 00:95D9: 40        .byte $40   ; spr_A
- D 0 - I - 0x0015EA 00:95DA: 01        .byte $01, $01, $00   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x0015ED 00:95DD: F9        .byte $F9, $03, $00   ; 

- D 0 - I - 0x0015F0 00:95E0: 02        .byte $02   ; 
- D 0 - I - 0x0015F1 00:95E1: 00        .byte $00   ; 
- D 0 - I - 0x0015F2 00:95E2: FB        .byte $FB, $A3, $F0   ; 
- D 0 - I - 0x0015F5 00:95E5: 03        .byte $03, $A5, $F0   ; 



off_03_95E8_49:
- D 0 - I - 0x0015F8 00:95E8: 82        .byte $82   ; counter
- D 0 - I - 0x0015F9 00:95E9: 00        .byte $00   ; spr_A
- D 0 - I - 0x0015FA 00:95EA: FB        .byte $FB, $A3, $F2   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x0015FD 00:95ED: 03        .byte $03, $A5, $F2   ; 

- D 0 - I - 0x001600 00:95F0: 01        .byte $01   ; 
- D 0 - I - 0x001601 00:95F1: 40        .byte $40   ; 
- D 0 - I - 0x001602 00:95F2: FE        .byte $FE, $05, $00   ; 



off_03_9627_4E:
- D 0 - I - 0x001637 00:9627: FF        .byte $FF   ; 
off_03_95F5_4A:
- D 0 - I - 0x001605 00:95F5: 04        .byte $04   ; counter
- D 0 - I - 0x001606 00:95F6: 00        .byte $00   ; spr_A
- D 0 - I - 0x001607 00:95F7: F6        .byte $F6, $A7, $F0   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x00160A 00:95FA: FE        .byte $FE, $A9, $F0   ; 
- D 0 - I - 0x00160D 00:95FD: F9        .byte $F9, $07, $00   ; 
- D 0 - I - 0x001610 00:9600: 01        .byte $01, $09, $00   ; 



off_03_962A_4F:
- D 0 - I - 0x00163A 00:962A: FF        .byte $FF   ; 
off_03_9603_4B:
- D 0 - I - 0x001613 00:9603: 03        .byte $03   ; counter
- D 0 - I - 0x001614 00:9604: 00        .byte $00   ; spr_A
- D 0 - I - 0x001615 00:9605: FB        .byte $FB, $0B, $02   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001618 00:9608: F3        .byte $F3, $A7, $F3   ; 
- D 0 - I - 0x00161B 00:960B: FB        .byte $FB, $A9, $F3   ; 



off_03_962D_50:
- D 0 - I - 0x00163D 00:962D: FF        .byte $FF   ; 
off_03_960E_4C:
- D 0 - I - 0x00161E 00:960E: 04        .byte $04   ; counter
- D 0 - I - 0x00161F 00:960F: 00        .byte $00   ; spr_A
- D 0 - I - 0x001620 00:9610: F2        .byte $F2, $A7, $F0   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001623 00:9613: FA        .byte $FA, $A9, $F0   ; 
- D 0 - I - 0x001626 00:9616: F7        .byte $F7, $0D, $00   ; 
- D 0 - I - 0x001629 00:9619: FF        .byte $FF, $0F, $00   ; 



off_03_9630_51:
- D 0 - I - 0x001640 00:9630: FF        .byte $FF   ; 
off_03_961C_4D:
- D 0 - I - 0x00162C 00:961C: 03        .byte $03   ; counter
- D 0 - I - 0x00162D 00:961D: 00        .byte $00   ; spr_A
- D 0 - I - 0x00162E 00:961E: FA        .byte $FA, $0B, $02   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001631 00:9621: F4        .byte $F4, $A7, $F3   ; 
- D 0 - I - 0x001634 00:9624: FC        .byte $FC, $A9, $F3   ; 



off_03_9671_56:
- D 0 - I - 0x001681 00:9671: FF        .byte $FF   ; 
off_03_9633_52:
- D 0 - I - 0x001643 00:9633: 05        .byte $05   ; counter
- D 0 - I - 0x001644 00:9634: 00        .byte $00   ; spr_A
- D 0 - I - 0x001645 00:9635: EE        .byte $EE, $AB, $F0   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001648 00:9638: F6        .byte $F6, $AD, $F0   ; 
- D 0 - I - 0x00164B 00:963B: FE        .byte $FE, $AF, $F0   ; 
- D 0 - I - 0x00164E 00:963E: F9        .byte $F9, $11, $00   ; 
- D 0 - I - 0x001651 00:9641: 01        .byte $01, $13, $00   ; 



off_03_9674_57:
- D 0 - I - 0x001684 00:9674: FF        .byte $FF   ; 
off_03_9644_53:
- D 0 - I - 0x001654 00:9644: 04        .byte $04   ; counter
- D 0 - I - 0x001655 00:9645: 00        .byte $00   ; spr_A
- D 0 - I - 0x001656 00:9646: F0        .byte $F0, $AB, $F2   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001659 00:9649: F8        .byte $F8, $AD, $F2   ; 
- D 0 - I - 0x00165C 00:964C: 00        .byte $00, $AF, $F2   ; 
- D 0 - I - 0x00165F 00:964F: 00        .byte $00, $15, $01   ; 



off_03_9677_58:
- D 0 - I - 0x001687 00:9677: FF        .byte $FF   ; 
off_03_9652_54:
- D 0 - I - 0x001662 00:9652: 05        .byte $05   ; counter
- D 0 - I - 0x001663 00:9653: 00        .byte $00   ; spr_A
- D 0 - I - 0x001664 00:9654: F9        .byte $F9, $17, $00   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001667 00:9657: 01        .byte $01, $19, $00   ; 
- D 0 - I - 0x00166A 00:965A: ED        .byte $ED, $AB, $F0   ; 
- D 0 - I - 0x00166D 00:965D: F5        .byte $F5, $AD, $F0   ; 
- D 0 - I - 0x001670 00:9660: FD        .byte $FD, $AF, $F0   ; 



off_03_967A_59:
- D 0 - I - 0x00168A 00:967A: FF        .byte $FF   ; 
off_03_9663_55:
- D 0 - I - 0x001673 00:9663: 04        .byte $04   ; counter
- D 0 - I - 0x001674 00:9664: 00        .byte $00   ; spr_A
- D 0 - I - 0x001675 00:9665: EF        .byte $EF, $AB, $F2   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001678 00:9668: F7        .byte $F7, $AD, $F2   ; 
- D 0 - I - 0x00167B 00:966B: FF        .byte $FF, $AF, $F2   ; 
- D 0 - I - 0x00167E 00:966E: FF        .byte $FF, $15, $01   ; 



off_03_96AC_5E:
- D 0 - I - 0x0016BC 00:96AC: FF        .byte $FF   ; 
off_03_967D_5A:
- D 0 - I - 0x00168D 00:967D: 04        .byte $04   ; counter
- D 0 - I - 0x00168E 00:967E: 00        .byte $00   ; spr_A
- D 0 - I - 0x00168F 00:967F: FA        .byte $FA, $1B, $00   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001692 00:9682: 02        .byte $02, $1D, $00   ; 
- D 0 - I - 0x001695 00:9685: F8        .byte $F8, $B1, $F0   ; 
- D 0 - I - 0x001698 00:9688: 00        .byte $00, $B3, $F0   ; 



off_03_96AF_5F:
- D 0 - I - 0x0016BF 00:96AF: FF        .byte $FF   ; 
off_03_968B_5B:
- D 0 - I - 0x00169B 00:968B: 03        .byte $03   ; counter
- D 0 - I - 0x00169C 00:968C: 00        .byte $00   ; spr_A
- D 0 - I - 0x00169D 00:968D: FE        .byte $FE, $1F, $01   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x0016A0 00:9690: F8        .byte $F8, $B1, $F2   ; 
- D 0 - I - 0x0016A3 00:9693: 00        .byte $00, $B3, $F2   ; 



off_03_96B2_60:
- D 0 - I - 0x0016C2 00:96B2: FF        .byte $FF   ; 
off_03_9696_5C:
- D 0 - I - 0x0016A6 00:9696: 03        .byte $03   ; counter
- D 0 - I - 0x0016A7 00:9697: 00        .byte $00   ; spr_A
- D 0 - I - 0x0016A8 00:9698: FF        .byte $FF, $21, $00   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x0016AB 00:969B: FA        .byte $FA, $B1, $F0   ; 
- D 0 - I - 0x0016AE 00:969E: 02        .byte $02, $B3, $F0   ; 



off_03_96B5_61:
- D 0 - I - 0x0016C5 00:96B5: FF        .byte $FF   ; 
off_03_96A1_5D:
- D 0 - I - 0x0016B1 00:96A1: 03        .byte $03   ; counter
- D 0 - I - 0x0016B2 00:96A2: 00        .byte $00   ; spr_A
- D 0 - I - 0x0016B3 00:96A3: FF        .byte $FF, $1F, $01   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x0016B6 00:96A6: FA        .byte $FA, $B1, $F2   ; 
- D 0 - I - 0x0016B9 00:96A9: 02        .byte $02, $B3, $F2   ; 



off_03_96B8_62:
- D 0 - I - 0x0016C8 00:96B8: 04        .byte $04   ; counter
- D 0 - I - 0x0016C9 00:96B9: 00        .byte $00   ; spr_A
- D 0 - I - 0x0016CA 00:96BA: F9        .byte $F9, $B5, $F0   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x0016CD 00:96BD: 01        .byte $01, $B7, $F0   ; 
- D 0 - I - 0x0016D0 00:96C0: FA        .byte $FA, $23, $00   ; 
- D 0 - I - 0x0016D3 00:96C3: 02        .byte $02, $25, $00   ; 



off_03_96C6_63:
- D 0 - I - 0x0016D6 00:96C6: 81        .byte $81   ; counter
- D 0 - I - 0x0016D7 00:96C7: 00        .byte $00   ; spr_A
- D 0 - I - 0x0016D8 00:96C8: FA        .byte $FA, $27, $00   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x0016DB 00:96CB: 81        .byte $81   ; 
- D 0 - I - 0x0016DC 00:96CC: 40        .byte $40   ; 
- D 0 - I - 0x0016DD 00:96CD: 02        .byte $02, $23, $00   ; 

- D 0 - I - 0x0016E0 00:96D0: 02        .byte $02   ; 
- D 0 - I - 0x0016E1 00:96D1: 00        .byte $00   ; 
- D 0 - I - 0x0016E2 00:96D2: FA        .byte $FA, $B5, $F2   ; 
- D 0 - I - 0x0016E5 00:96D5: 02        .byte $02, $B7, $F2   ; 



off_03_96D8_64:
- D 0 - I - 0x0016E8 00:96D8: 82        .byte $82   ; counter
- D 0 - I - 0x0016E9 00:96D9: 40        .byte $40   ; spr_A
- D 0 - I - 0x0016EA 00:96DA: 02        .byte $02, $23, $00   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x0016ED 00:96DD: FA        .byte $FA, $25, $00   ; 

- D 0 - I - 0x0016F0 00:96E0: 02        .byte $02   ; 
- D 0 - I - 0x0016F1 00:96E1: 00        .byte $00   ; 
- D 0 - I - 0x0016F2 00:96E2: FB        .byte $FB, $B5, $F0   ; 
- D 0 - I - 0x0016F5 00:96E5: 03        .byte $03, $B7, $F0   ; 



off_03_96E8_65:
- D 0 - I - 0x0016F8 00:96E8: 83        .byte $83   ; counter
- D 0 - I - 0x0016F9 00:96E9: 00        .byte $00   ; spr_A
- D 0 - I - 0x0016FA 00:96EA: FA        .byte $FA, $B5, $F2   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x0016FD 00:96ED: 02        .byte $02, $B7, $F2   ; 
- D 0 - I - 0x001700 00:96F0: FA        .byte $FA, $23, $00   ; 

- D 0 - I - 0x001703 00:96F3: 01        .byte $01   ; 
- D 0 - I - 0x001704 00:96F4: 40        .byte $40   ; 
- D 0 - I - 0x001705 00:96F5: 02        .byte $02, $27, $00   ; 



off_03_96F8_66:
- D 0 - I - 0x001708 00:96F8: 04        .byte $04   ; counter
- D 0 - I - 0x001709 00:96F9: 00        .byte $00   ; spr_A
- D 0 - I - 0x00170A 00:96FA: FA        .byte $FA, $29, $00   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x00170D 00:96FD: 02        .byte $02, $2B, $00   ; 
- D 0 - I - 0x001710 00:9700: FA        .byte $FA, $A3, $F0   ; 
- D 0 - I - 0x001713 00:9703: 02        .byte $02, $A5, $F0   ; 



off_03_9706_67:
- D 0 - I - 0x001716 00:9706: 04        .byte $04   ; counter
- D 0 - I - 0x001717 00:9707: 00        .byte $00   ; spr_A
- D 0 - I - 0x001718 00:9708: FA        .byte $FA, $A3, $F2   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x00171B 00:970B: 02        .byte $02, $A5, $F2   ; 
- D 0 - I - 0x00171E 00:970E: FA        .byte $FA, $29, $00   ; 
- D 0 - I - 0x001721 00:9711: 02        .byte $02, $2B, $00   ; 



off_03_9736_6A:
- D 0 - I - 0x001746 00:9736: FF        .byte $FF   ; 
off_03_9714_68:
- D 0 - I - 0x001724 00:9714: 82        .byte $82   ; counter
- D 0 - I - 0x001725 00:9715: 40        .byte $40   ; spr_A
- D 0 - I - 0x001726 00:9716: 02        .byte $02, $29, $00   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001729 00:9719: FA        .byte $FA, $2B, $00   ; 

- D 0 - I - 0x00172C 00:971C: 02        .byte $02   ; 
- D 0 - I - 0x00172D 00:971D: 00        .byte $00   ; 
- D 0 - I - 0x00172E 00:971E: F8        .byte $F8, $A7, $F0   ; 
- D 0 - I - 0x001731 00:9721: 00        .byte $00, $A9, $F0   ; 



off_03_9739_6B:
- D 0 - I - 0x001749 00:9739: FF        .byte $FF   ; 
off_03_9724_69:
- D 0 - I - 0x001734 00:9724: 81        .byte $81   ; counter
- D 0 - I - 0x001735 00:9725: 40        .byte $40   ; spr_A
- D 0 - I - 0x001736 00:9726: FA        .byte $FA, $2B, $00   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x001739 00:9729: 82        .byte $82   ; 
- D 0 - I - 0x00173A 00:972A: 00        .byte $00   ; 
- D 0 - I - 0x00173B 00:972B: F9        .byte $F9, $A7, $F2   ; 
- D 0 - I - 0x00173E 00:972E: 01        .byte $01, $A9, $F2   ; 

- D 0 - I - 0x001741 00:9731: 01        .byte $01   ; 
- D 0 - I - 0x001742 00:9732: 40        .byte $40   ; 
- D 0 - I - 0x001743 00:9733: 02        .byte $02, $29, $00   ; 



off_03_9762_6E:
- D 0 - I - 0x001772 00:9762: FF        .byte $FF   ; 
off_03_973C_6C:
- D 0 - I - 0x00174C 00:973C: 82        .byte $82   ; counter
- D 0 - I - 0x00174D 00:973D: 40        .byte $40   ; spr_A
- D 0 - I - 0x00174E 00:973E: 02        .byte $02, $29, $00   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001751 00:9741: FA        .byte $FA, $2B, $00   ; 

- D 0 - I - 0x001754 00:9744: 03        .byte $03   ; 
- D 0 - I - 0x001755 00:9745: 00        .byte $00   ; 
- D 0 - I - 0x001756 00:9746: F0        .byte $F0, $AB, $F1   ; 
- D 0 - I - 0x001759 00:9749: F8        .byte $F8, $AD, $F1   ; 
- D 0 - I - 0x00175C 00:974C: 00        .byte $00, $AF, $F1   ; 



off_03_9765_6F:
- D 0 - I - 0x001775 00:9765: FF        .byte $FF   ; 
off_03_974F_6D:
- D 0 - I - 0x00175F 00:974F: 82        .byte $82   ; counter
- D 0 - I - 0x001760 00:9750: 40        .byte $40   ; spr_A
- D 0 - I - 0x001761 00:9751: 02        .byte $02, $29, $00   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001764 00:9754: FA        .byte $FA, $2B, $00   ; 

- D 0 - I - 0x001767 00:9757: 03        .byte $03   ; 
- D 0 - I - 0x001768 00:9758: 00        .byte $00   ; 
- D 0 - I - 0x001769 00:9759: F2        .byte $F2, $AB, $F1   ; 
- D 0 - I - 0x00176C 00:975C: FA        .byte $FA, $AD, $F2   ; 
- D 0 - I - 0x00176F 00:975F: 02        .byte $02, $AF, $F2   ; 



off_03_9784_72:
- D 0 - I - 0x001794 00:9784: FF        .byte $FF   ; 
off_03_9768_70:
- D 0 - I - 0x001778 00:9768: 04        .byte $04   ; counter
- D 0 - I - 0x001779 00:9769: 00        .byte $00   ; spr_A
- D 0 - I - 0x00177A 00:976A: FA        .byte $FA, $2D, $00   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x00177D 00:976D: 02        .byte $02, $2F, $00   ; 
- D 0 - I - 0x001780 00:9770: FA        .byte $FA, $B1, $F0   ; 
- D 0 - I - 0x001783 00:9773: 02        .byte $02, $B3, $F0   ; 



off_03_9787_73:
- D 0 - I - 0x001797 00:9787: FF        .byte $FF   ; 
off_03_9776_71:
- D 0 - I - 0x001786 00:9776: 04        .byte $04   ; counter
- D 0 - I - 0x001787 00:9777: 00        .byte $00   ; spr_A
- D 0 - I - 0x001788 00:9778: FA        .byte $FA, $2D, $00   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x00178B 00:977B: 02        .byte $02, $2F, $00   ; 
- D 0 - I - 0x00178E 00:977E: F8        .byte $F8, $B1, $F2   ; 
- D 0 - I - 0x001791 00:9781: 00        .byte $00, $B3, $F2   ; 



off_03_978A_74:
- D 0 - I - 0x00179A 00:978A: 04        .byte $04   ; counter
- D 0 - I - 0x00179B 00:978B: 00        .byte $00   ; spr_A
- D 0 - I - 0x00179C 00:978C: FA        .byte $FA, $2D, $00   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x00179F 00:978F: 02        .byte $02, $2F, $00   ; 
- D 0 - I - 0x0017A2 00:9792: F9        .byte $F9, $B5, $F0   ; 
- D 0 - I - 0x0017A5 00:9795: 01        .byte $01, $B7, $F0   ; 



off_03_9798_75:
- D 0 - I - 0x0017A8 00:9798: 04        .byte $04   ; counter
- D 0 - I - 0x0017A9 00:9799: 00        .byte $00   ; spr_A
- D 0 - I - 0x0017AA 00:979A: FA        .byte $FA, $2D, $00   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x0017AD 00:979D: 02        .byte $02, $2F, $00   ; 
- D 0 - I - 0x0017B0 00:97A0: F8        .byte $F8, $B5, $F2   ; 
- D 0 - I - 0x0017B3 00:97A3: 00        .byte $00, $B7, $F2   ; 



off_03_97A6_76:
- D 0 - I - 0x0017B6 00:97A6: 83        .byte $83   ; counter
- D 0 - I - 0x0017B7 00:97A7: 00        .byte $00   ; spr_A
- D 0 - I - 0x0017B8 00:97A8: FA        .byte $FA, $BD, $F0   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x0017BB 00:97AB: 02        .byte $02, $BF, $F0   ; 
- D 0 - I - 0x0017BE 00:97AE: FA        .byte $FA, $31, $00   ; 

- D 0 - I - 0x0017C1 00:97B1: 01        .byte $01   ; 
- D 0 - I - 0x0017C2 00:97B2: 40        .byte $40   ; 
- D 0 - I - 0x0017C3 00:97B3: 02        .byte $02, $31, $00   ; 



off_03_97B6_77:
- D 0 - I - 0x0017C6 00:97B6: 83        .byte $83   ; counter
- D 0 - I - 0x0017C7 00:97B7: 80        .byte $80   ; spr_A
- D 0 - I - 0x0017C8 00:97B8: FA        .byte $FA, $BD, $00   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x0017CB 00:97BB: 02        .byte $02, $BF, $00   ; 
- D 0 - I - 0x0017CE 00:97BE: FA        .byte $FA, $31, $F0   ; 

- D 0 - I - 0x0017D1 00:97C1: 01        .byte $01   ; 
- D 0 - I - 0x0017D2 00:97C2: C0        .byte $C0   ; 
- D 0 - I - 0x0017D3 00:97C3: 02        .byte $02, $31, $F0   ; 



off_03_97C6_78:
- D 0 - I - 0x0017D6 00:97C6: 04        .byte $04   ; counter
- D 0 - I - 0x0017D7 00:97C7: 00        .byte $00   ; spr_A
- D 0 - I - 0x0017D8 00:97C8: FA        .byte $FA, $B9, $F0   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x0017DB 00:97CB: 02        .byte $02, $BB, $F0   ; 
- D 0 - I - 0x0017DE 00:97CE: FA        .byte $FA, $33, $00   ; 
- D 0 - I - 0x0017E1 00:97D1: 02        .byte $02, $35, $00   ; 



off_03_97D4_79:
- D 0 - I - 0x0017E4 00:97D4: 04        .byte $04   ; counter
- D 0 - I - 0x0017E5 00:97D5: 80        .byte $80   ; spr_A
- D 0 - I - 0x0017E6 00:97D6: FA        .byte $FA, $B9, $00   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x0017E9 00:97D9: 02        .byte $02, $BB, $00   ; 
- D 0 - I - 0x0017EC 00:97DC: FA        .byte $FA, $33, $F0   ; 
- D 0 - I - 0x0017EF 00:97DF: 02        .byte $02, $35, $F0   ; 



off_03_97E2_7A:
- D 0 - I - 0x0017F2 00:97E2: 82        .byte $82   ; counter
- D 0 - I - 0x0017F3 00:97E3: 02        .byte $02   ; spr_A
- D 0 - I - 0x0017F4 00:97E4: FA        .byte $FA, $8F, $F0   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x0017F7 00:97E7: 02        .byte $02, $91, $F0   ; 

- D 0 - I - 0x0017FA 00:97EA: 02        .byte $02   ; 
- D 0 - I - 0x0017FB 00:97EB: 00        .byte $00   ; 
- D 0 - I - 0x0017FC 00:97EC: FA        .byte $FA, $01, $00   ; 
- D 0 - I - 0x0017FF 00:97EF: 02        .byte $02, $03, $00   ; 



off_03_97F2_7B:
- D 0 - I - 0x001802 00:97F2: 82        .byte $82   ; counter
- D 0 - I - 0x001803 00:97F3: 02        .byte $02   ; spr_A
- D 0 - I - 0x001804 00:97F4: FA        .byte $FA, $8F, $F2   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001807 00:97F7: 02        .byte $02, $91, $F2   ; 

- D 0 - I - 0x00180A 00:97FA: 01        .byte $01   ; 
- D 0 - I - 0x00180B 00:97FB: 00        .byte $00   ; 
- D 0 - I - 0x00180C 00:97FC: FD        .byte $FD, $05, $01   ; 



off_03_97FF_7C:
- D 0 - I - 0x00180F 00:97FF: 82        .byte $82   ; counter
- D 0 - I - 0x001810 00:9800: 40        .byte $40   ; spr_A
- D 0 - I - 0x001811 00:9801: 02        .byte $02, $01, $00   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001814 00:9804: FA        .byte $FA, $03, $00   ; 

- D 0 - I - 0x001817 00:9807: 02        .byte $02   ; 
- D 0 - I - 0x001818 00:9808: 02        .byte $02   ; 
- D 0 - I - 0x001819 00:9809: FC        .byte $FC, $8F, $F0   ; 
- D 0 - I - 0x00181C 00:980C: 04        .byte $04, $91, $F0   ; 



off_03_980F_7D:
- D 0 - I - 0x00181F 00:980F: 82        .byte $82   ; counter
- D 0 - I - 0x001820 00:9810: 02        .byte $02   ; spr_A
- D 0 - I - 0x001821 00:9811: FC        .byte $FC, $8F, $F2   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001824 00:9814: 04        .byte $04, $91, $F2   ; 

- D 0 - I - 0x001827 00:9817: 01        .byte $01   ; 
- D 0 - I - 0x001828 00:9818: 40        .byte $40   ; 
- D 0 - I - 0x001829 00:9819: FF        .byte $FF, $05, $01   ; 



off_03_9849_81:
- D 0 - I - 0x001859 00:9849: FF        .byte $FF   ; 
off_03_981C_7E:
- D 0 - I - 0x00182C 00:981C: 82        .byte $82   ; counter
- D 0 - I - 0x00182D 00:981D: 00        .byte $00   ; spr_A
- D 0 - I - 0x00182E 00:981E: FA        .byte $FA, $07, $00   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001831 00:9821: 02        .byte $02, $09, $00   ; 

- D 0 - I - 0x001834 00:9824: 02        .byte $02   ; 
- D 0 - I - 0x001835 00:9825: 02        .byte $02   ; 
- D 0 - I - 0x001836 00:9826: FA        .byte $FA, $93, $F0   ; 
- D 0 - I - 0x001839 00:9829: 02        .byte $02, $95, $F0   ; 



off_03_984C_82:
- D 0 - I - 0x00185C 00:984C: FF        .byte $FF   ; 
off_03_982C_7F:
- D 0 - I - 0x00183C 00:982C: 81        .byte $81   ; counter
- D 0 - I - 0x00183D 00:982D: 00        .byte $00   ; spr_A
- D 0 - I - 0x00183E 00:982E: FC        .byte $FC, $0B, $02   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x001841 00:9831: 02        .byte $02   ; 
- D 0 - I - 0x001842 00:9832: 02        .byte $02   ; 
- D 0 - I - 0x001843 00:9833: F8        .byte $F8, $93, $F2   ; 
- D 0 - I - 0x001846 00:9836: 00        .byte $00, $95, $F2   ; 



off_03_984F_83:
- D 0 - I - 0x00185F 00:984F: FF        .byte $FF   ; 
off_03_9839_80:
- D 0 - I - 0x001849 00:9839: 82        .byte $82   ; counter
- D 0 - I - 0x00184A 00:983A: 02        .byte $02   ; spr_A
- D 0 - I - 0x00184B 00:983B: F5        .byte $F5, $93, $F0   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x00184E 00:983E: FD        .byte $FD, $95, $F0   ; 

- D 0 - I - 0x001851 00:9841: 02        .byte $02   ; 
- D 0 - I - 0x001852 00:9842: 00        .byte $00   ; 
- D 0 - I - 0x001853 00:9843: F8        .byte $F8, $0D, $00   ; 
- D 0 - I - 0x001856 00:9846: 00        .byte $00, $0F, $00   ; 



off_03_9888_87:
- D 0 - I - 0x001898 00:9888: FF        .byte $FF   ; 
off_03_9852_84:
- D 0 - I - 0x001862 00:9852: 83        .byte $83   ; counter
- D 0 - I - 0x001863 00:9853: 02        .byte $02   ; spr_A
- D 0 - I - 0x001864 00:9854: F5        .byte $F5, $97, $F0   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001867 00:9857: FD        .byte $FD, $99, $F0   ; 
- D 0 - I - 0x00186A 00:985A: ED        .byte $ED, $AF, $F0   ; 

- D 0 - I - 0x00186D 00:985D: 02        .byte $02   ; 
- D 0 - I - 0x00186E 00:985E: 00        .byte $00   ; 
- D 0 - I - 0x00186F 00:985F: F6        .byte $F6, $11, $00   ; 
- D 0 - I - 0x001872 00:9862: FE        .byte $FE, $13, $00   ; 



off_03_988B_88:
- D 0 - I - 0x00189B 00:988B: FF        .byte $FF   ; 
off_03_9865_85:
- D 0 - I - 0x001875 00:9865: 81        .byte $81   ; counter
- D 0 - I - 0x001876 00:9866: 00        .byte $00   ; spr_A
- D 0 - I - 0x001877 00:9867: FC        .byte $FC, $15, $02   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x00187A 00:986A: 03        .byte $03   ; 
- D 0 - I - 0x00187B 00:986B: 02        .byte $02   ; 
- D 0 - I - 0x00187C 00:986C: F4        .byte $F4, $97, $F2   ; 
- D 0 - I - 0x00187F 00:986F: FC        .byte $FC, $99, $F2   ; 
- D 0 - I - 0x001882 00:9872: EC        .byte $EC, $AF, $F2   ; 



off_03_988E_89:
- D 0 - I - 0x00189E 00:988E: FF        .byte $FF   ; 
off_03_9875_86:
- D 0 - I - 0x001885 00:9875: 82        .byte $82   ; counter
- D 0 - I - 0x001886 00:9876: 00        .byte $00   ; spr_A
- D 0 - I - 0x001887 00:9877: F6        .byte $F6, $17, $00   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x00188A 00:987A: FE        .byte $FE, $19, $00   ; 

- D 0 - I - 0x00188D 00:987D: 03        .byte $03   ; 
- D 0 - I - 0x00188E 00:987E: 02        .byte $02   ; 
- D 0 - I - 0x00188F 00:987F: F3        .byte $F3, $97, $F0   ; 
- D 0 - I - 0x001892 00:9882: FB        .byte $FB, $99, $F0   ; 
- D 0 - I - 0x001895 00:9885: EB        .byte $EB, $AF, $F0   ; 



off_03_98C8_8E:
- - - - - - 0x0018D8 00:98C8: FF        .byte $FF   ; 
off_03_9891_8A:
- - - - - - 0x0018A1 00:9891: 82        .byte $82   ; counter
- - - - - - 0x0018A2 00:9892: 00        .byte $00   ; spr_A
- - - - - - 0x0018A3 00:9893: F9        .byte $F9, $1B, $FF   ; spr_X, spr_T, spr_Y
- - - - - - 0x0018A6 00:9896: 01        .byte $01, $1D, $FF   ; 

- - - - - - 0x0018A9 00:9899: 02        .byte $02   ; 
- - - - - - 0x0018AA 00:989A: 02        .byte $02   ; 
- - - - - - 0x0018AB 00:989B: F8        .byte $F8, $9B, $EF   ; 
- - - - - - 0x0018AE 00:989E: 00        .byte $00, $9D, $EF   ; 



off_03_98CB_8F:
- - - - - - 0x0018DB 00:98CB: FF        .byte $FF   ; 
off_03_98A1_8B:
- - - - - - 0x0018B1 00:98A1: 81        .byte $81   ; counter
- - - - - - 0x0018B2 00:98A2: 00        .byte $00   ; spr_A
- - - - - - 0x0018B3 00:98A3: FD        .byte $FD, $1F, $00   ; spr_X, spr_T, spr_Y

- - - - - - 0x0018B6 00:98A6: 02        .byte $02   ; 
- - - - - - 0x0018B7 00:98A7: 02        .byte $02   ; 
- - - - - - 0x0018B8 00:98A8: F8        .byte $F8, $9B, $F1   ; 
- - - - - - 0x0018BB 00:98AB: 00        .byte $00, $9D, $F1   ; 



off_03_98CE_90:
- - - - - - 0x0018DE 00:98CE: FF        .byte $FF   ; 
off_03_98AE_8C:
- - - - - - 0x0018BE 00:98AE: 81        .byte $81   ; counter
- - - - - - 0x0018BF 00:98AF: 00        .byte $00   ; spr_A
- - - - - - 0x0018C0 00:98B0: FE        .byte $FE, $21, $FF   ; spr_X, spr_T, spr_Y

- - - - - - 0x0018C3 00:98B3: 02        .byte $02   ; 
- - - - - - 0x0018C4 00:98B4: 02        .byte $02   ; 
- - - - - - 0x0018C5 00:98B5: FA        .byte $FA, $9B, $EF   ; 
- - - - - - 0x0018C8 00:98B8: 02        .byte $02, $9D, $EF   ; 



off_03_98D1_91:
- - - - - - 0x0018E1 00:98D1: FF        .byte $FF   ; 
off_03_98BB_8D:
- - - - - - 0x0018CB 00:98BB: 81        .byte $81   ; counter
- - - - - - 0x0018CC 00:98BC: 00        .byte $00   ; spr_A
- - - - - - 0x0018CD 00:98BD: FF        .byte $FF, $1F, $00   ; spr_X, spr_T, spr_Y

- - - - - - 0x0018D0 00:98C0: 02        .byte $02   ; 
- - - - - - 0x0018D1 00:98C1: 02        .byte $02   ; 
- - - - - - 0x0018D2 00:98C2: FA        .byte $FA, $9B, $F1   ; 
- - - - - - 0x0018D5 00:98C5: 02        .byte $02, $9D, $F1   ; 



off_03_98D4_92:
- D 0 - I - 0x0018E4 00:98D4: 82        .byte $82   ; counter
- D 0 - I - 0x0018E5 00:98D5: 00        .byte $00   ; spr_A
- D 0 - I - 0x0018E6 00:98D6: F9        .byte $F9, $23, $FF   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x0018E9 00:98D9: 01        .byte $01, $25, $FF   ; 

- D 0 - I - 0x0018EC 00:98DC: 02        .byte $02   ; 
- D 0 - I - 0x0018ED 00:98DD: 02        .byte $02   ; 
- D 0 - I - 0x0018EE 00:98DE: F8        .byte $F8, $9F, $EF   ; 
- D 0 - I - 0x0018F1 00:98E1: 00        .byte $00, $A1, $EF   ; 



off_03_98E4_93:
- D 0 - I - 0x0018F4 00:98E4: 81        .byte $81   ; counter
- D 0 - I - 0x0018F5 00:98E5: 00        .byte $00   ; spr_A
- D 0 - I - 0x0018F6 00:98E6: F9        .byte $F9, $27, $FF   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x0018F9 00:98E9: 81        .byte $81   ; 
- D 0 - I - 0x0018FA 00:98EA: 40        .byte $40   ; 
- D 0 - I - 0x0018FB 00:98EB: 01        .byte $01, $23, $FF   ; 

- D 0 - I - 0x0018FE 00:98EE: 02        .byte $02   ; 
- D 0 - I - 0x0018FF 00:98EF: 02        .byte $02   ; 
- D 0 - I - 0x001900 00:98F0: F9        .byte $F9, $9F, $F1   ; 
- D 0 - I - 0x001903 00:98F3: 01        .byte $01, $A1, $F1   ; 



off_03_98F6_94:
- D 0 - I - 0x001906 00:98F6: 82        .byte $82   ; counter
- D 0 - I - 0x001907 00:98F7: 02        .byte $02   ; spr_A
- D 0 - I - 0x001908 00:98F8: FA        .byte $FA, $9F, $EF   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x00190B 00:98FB: 02        .byte $02, $A1, $EF   ; 

- D 0 - I - 0x00190E 00:98FE: 02        .byte $02   ; 
- D 0 - I - 0x00190F 00:98FF: 40        .byte $40   ; 
- D 0 - I - 0x001910 00:9900: 01        .byte $01, $23, $FF   ; 
- D 0 - I - 0x001913 00:9903: F9        .byte $F9, $25, $FF   ; 



off_03_9906_95:
- - - - - - 0x001916 00:9906: 81        .byte $81   ; counter
- - - - - - 0x001917 00:9907: 40        .byte $40   ; spr_A
- - - - - - 0x001918 00:9908: 01        .byte $01, $27, $FF   ; spr_X, spr_T, spr_Y

- - - - - - 0x00191B 00:990B: 81        .byte $81   ; 
- - - - - - 0x00191C 00:990C: 00        .byte $00   ; 
- - - - - - 0x00191D 00:990D: F9        .byte $F9, $23, $FF   ; 

- - - - - - 0x001920 00:9910: 02        .byte $02   ; 
- - - - - - 0x001921 00:9911: 02        .byte $02   ; 
- - - - - - 0x001922 00:9912: FA        .byte $FA, $9F, $F1   ; 
- - - - - - 0x001925 00:9915: 02        .byte $02, $A1, $F1   ; 



off_03_9918_96:
- D 0 - I - 0x001928 00:9918: 82        .byte $82   ; counter
- D 0 - I - 0x001929 00:9919: 00        .byte $00   ; spr_A
- D 0 - I - 0x00192A 00:991A: FB        .byte $FB, $29, $FF   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x00192D 00:991D: 03        .byte $03, $2B, $FF   ; 

- D 0 - I - 0x001930 00:9920: 02        .byte $02   ; 
- D 0 - I - 0x001931 00:9921: 02        .byte $02   ; 
- D 0 - I - 0x001932 00:9922: FB        .byte $FB, $8F, $EF   ; 
- D 0 - I - 0x001935 00:9925: 03        .byte $03, $91, $EF   ; 



off_03_9928_97:
- D 0 - I - 0x001938 00:9928: 82        .byte $82   ; counter
- D 0 - I - 0x001939 00:9929: 00        .byte $00   ; spr_A
- D 0 - I - 0x00193A 00:992A: FB        .byte $FB, $29, $FF   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x00193D 00:992D: 03        .byte $03, $2B, $FF   ; 

- D 0 - I - 0x001940 00:9930: 02        .byte $02   ; 
- D 0 - I - 0x001941 00:9931: 02        .byte $02   ; 
- D 0 - I - 0x001942 00:9932: FA        .byte $FA, $8F, $F1   ; 
- D 0 - I - 0x001945 00:9935: 02        .byte $02, $91, $F1   ; 



off_03_9958_9A:
- D 0 - I - 0x001968 00:9958: FF        .byte $FF   ; 
off_03_9938_98:
- D 0 - I - 0x001948 00:9938: 82        .byte $82   ; counter
- D 0 - I - 0x001949 00:9939: 40        .byte $40   ; spr_A
- D 0 - I - 0x00194A 00:993A: FE        .byte $FE, $29, $FF   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x00194D 00:993D: F6        .byte $F6, $2B, $FF   ; 

- D 0 - I - 0x001950 00:9940: 02        .byte $02   ; 
- D 0 - I - 0x001951 00:9941: 02        .byte $02   ; 
- D 0 - I - 0x001952 00:9942: F6        .byte $F6, $93, $EF   ; 
- D 0 - I - 0x001955 00:9945: FE        .byte $FE, $95, $EF   ; 



off_03_995B_9B:
- - - - - - 0x00196B 00:995B: FF        .byte $FF   ; 
off_03_9948_99:
- D 0 - I - 0x001958 00:9948: 82        .byte $82   ; counter
- D 0 - I - 0x001959 00:9949: 40        .byte $40   ; spr_A
- D 0 - I - 0x00195A 00:994A: FE        .byte $FE, $29, $FF   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x00195D 00:994D: F6        .byte $F6, $2B, $FF   ; 

- D 0 - I - 0x001960 00:9950: 02        .byte $02   ; 
- D 0 - I - 0x001961 00:9951: 02        .byte $02   ; 
- D 0 - I - 0x001962 00:9952: F8        .byte $F8, $93, $F0   ; 
- D 0 - I - 0x001965 00:9955: 00        .byte $00, $95, $F0   ; 



off_03_9984_9E:
- D 0 - I - 0x001994 00:9984: FF        .byte $FF   ; 
off_03_995E_9C:
- D 0 - I - 0x00196E 00:995E: 82        .byte $82   ; counter
- D 0 - I - 0x00196F 00:995F: 40        .byte $40   ; spr_A
- D 0 - I - 0x001970 00:9960: FE        .byte $FE, $29, $FF   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001973 00:9963: F6        .byte $F6, $2B, $FF   ; 

- D 0 - I - 0x001976 00:9966: 03        .byte $03   ; 
- D 0 - I - 0x001977 00:9967: 02        .byte $02   ; 
- D 0 - I - 0x001978 00:9968: F5        .byte $F5, $97, $EF   ; 
- D 0 - I - 0x00197B 00:996B: FD        .byte $FD, $99, $EF   ; 
- D 0 - I - 0x00197E 00:996E: ED        .byte $ED, $AF, $EF   ; 



off_03_9987_9F:
- D 0 - I - 0x001997 00:9987: FF        .byte $FF   ; 
off_03_9971_9D:
- D 0 - I - 0x001981 00:9971: 82        .byte $82   ; counter
- D 0 - I - 0x001982 00:9972: 40        .byte $40   ; spr_A
- D 0 - I - 0x001983 00:9973: FE        .byte $FE, $29, $FF   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001986 00:9976: F6        .byte $F6, $2B, $FF   ; 

- D 0 - I - 0x001989 00:9979: 03        .byte $03   ; 
- D 0 - I - 0x00198A 00:997A: 02        .byte $02   ; 
- D 0 - I - 0x00198B 00:997B: F7        .byte $F7, $97, $F0   ; 
- D 0 - I - 0x00198E 00:997E: FF        .byte $FF, $99, $F0   ; 
- D 0 - I - 0x001991 00:9981: EF        .byte $EF, $AF, $F0   ; 



off_03_99AA_A2:
- D 0 - I - 0x0019BA 00:99AA: FF        .byte $FF   ; 
off_03_998A_A0:
- D 0 - I - 0x00199A 00:998A: 82        .byte $82   ; counter
- D 0 - I - 0x00199B 00:998B: 40        .byte $40   ; spr_A
- D 0 - I - 0x00199C 00:998C: FE        .byte $FE, $29, $FF   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x00199F 00:998F: F6        .byte $F6, $2B, $FF   ; 

- D 0 - I - 0x0019A2 00:9992: 02        .byte $02   ; 
- D 0 - I - 0x0019A3 00:9993: 02        .byte $02   ; 
- D 0 - I - 0x0019A4 00:9994: F6        .byte $F6, $9B, $EF   ; 
- D 0 - I - 0x0019A7 00:9997: FE        .byte $FE, $9D, $EF   ; 



off_03_99AD_A3:
- D 0 - I - 0x0019BD 00:99AD: FF        .byte $FF   ; 
off_03_999A_A1:
- D 0 - I - 0x0019AA 00:999A: 82        .byte $82   ; counter
- D 0 - I - 0x0019AB 00:999B: 40        .byte $40   ; spr_A
- D 0 - I - 0x0019AC 00:999C: FE        .byte $FE, $29, $FF   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x0019AF 00:999F: F6        .byte $F6, $2B, $FF   ; 

- D 0 - I - 0x0019B2 00:99A2: 02        .byte $02   ; 
- D 0 - I - 0x0019B3 00:99A3: 02        .byte $02   ; 
- D 0 - I - 0x0019B4 00:99A4: F5        .byte $F5, $9B, $F1   ; 
- D 0 - I - 0x0019B7 00:99A7: FD        .byte $FD, $9D, $F1   ; 



off_03_99B0_A4:
- D 0 - I - 0x0019C0 00:99B0: 82        .byte $82   ; counter
- D 0 - I - 0x0019C1 00:99B1: 00        .byte $00   ; spr_A
- D 0 - I - 0x0019C2 00:99B2: FB        .byte $FB, $29, $FF   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x0019C5 00:99B5: 03        .byte $03, $2B, $FF   ; 

- D 0 - I - 0x0019C8 00:99B8: 02        .byte $02   ; 
- D 0 - I - 0x0019C9 00:99B9: 42        .byte $42   ; 
- D 0 - I - 0x0019CA 00:99BA: 03        .byte $03, $9F, $EF   ; 
- D 0 - I - 0x0019CD 00:99BD: FB        .byte $FB, $A1, $EF   ; 



off_03_99C0_A5:
- D 0 - I - 0x0019D0 00:99C0: 82        .byte $82   ; counter
- D 0 - I - 0x0019D1 00:99C1: 00        .byte $00   ; spr_A
- D 0 - I - 0x0019D2 00:99C2: FB        .byte $FB, $29, $FF   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x0019D5 00:99C5: 03        .byte $03, $2B, $FF   ; 

- D 0 - I - 0x0019D8 00:99C8: 02        .byte $02   ; 
- D 0 - I - 0x0019D9 00:99C9: 42        .byte $42   ; 
- D 0 - I - 0x0019DA 00:99CA: 03        .byte $03, $9F, $F1   ; 
- D 0 - I - 0x0019DD 00:99CD: FB        .byte $FB, $A1, $F1   ; 



off_03_99D0_A6:
- D 0 - I - 0x0019E0 00:99D0: 82        .byte $82   ; counter
- D 0 - I - 0x0019E1 00:99D1: 40        .byte $40   ; spr_A
- D 0 - I - 0x0019E2 00:99D2: FE        .byte $FE, $29, $FF   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x0019E5 00:99D5: F6        .byte $F6, $2B, $FF   ; 

- D 0 - I - 0x0019E8 00:99D8: 02        .byte $02   ; 
- D 0 - I - 0x0019E9 00:99D9: 02        .byte $02   ; 
- D 0 - I - 0x0019EA 00:99DA: F6        .byte $F6, $9B, $EF   ; 
- D 0 - I - 0x0019ED 00:99DD: FE        .byte $FE, $9D, $EF   ; 



off_03_99E0_A7:
- D 0 - I - 0x0019F0 00:99E0: 82        .byte $82   ; counter
- D 0 - I - 0x0019F1 00:99E1: 00        .byte $00   ; spr_A
- D 0 - I - 0x0019F2 00:99E2: FB        .byte $FB, $29, $FF   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x0019F5 00:99E5: 03        .byte $03, $2B, $FF   ; 

- D 0 - I - 0x0019F8 00:99E8: 02        .byte $02   ; 
- D 0 - I - 0x0019F9 00:99E9: 42        .byte $42   ; 
- D 0 - I - 0x0019FA 00:99EA: 03        .byte $03, $9B, $EF   ; 
- D 0 - I - 0x0019FD 00:99ED: FB        .byte $FB, $9D, $EF   ; 



off_03_9A13_AA:
- D 0 - I - 0x001A23 00:9A13: FF        .byte $FF   ; 
off_03_99F0_A8:
- D 0 - I - 0x001A00 00:99F0: 82        .byte $82   ; counter
- D 0 - I - 0x001A01 00:99F1: 40        .byte $40   ; spr_A
- D 0 - I - 0x001A02 00:99F2: FE        .byte $FE, $29, $FF   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001A05 00:99F5: F6        .byte $F6, $2B, $FF   ; 

- D 0 - I - 0x001A08 00:99F8: 03        .byte $03   ; 
- D 0 - I - 0x001A09 00:99F9: 02        .byte $02   ; 
- D 0 - I - 0x001A0A 00:99FA: F6        .byte $F6, $A3, $DF   ; 
- D 0 - I - 0x001A0D 00:99FD: F6        .byte $F6, $A5, $EF   ; 
- D 0 - I - 0x001A10 00:9A00: FE        .byte $FE, $A7, $EF   ; 



off_03_9A16_AB:
- D 0 - I - 0x001A26 00:9A16: FF        .byte $FF   ; 
off_03_9A03_A9:
- D 0 - I - 0x001A13 00:9A03: 82        .byte $82   ; counter
- D 0 - I - 0x001A14 00:9A04: 40        .byte $40   ; spr_A
- D 0 - I - 0x001A15 00:9A05: FE        .byte $FE, $29, $FF   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001A18 00:9A08: F6        .byte $F6, $2B, $FF   ; 

- D 0 - I - 0x001A1B 00:9A0B: 02        .byte $02   ; 
- D 0 - I - 0x001A1C 00:9A0C: 02        .byte $02   ; 
- D 0 - I - 0x001A1D 00:9A0D: FE        .byte $FE, $A7, $EF   ; 
- D 0 - I - 0x001A20 00:9A10: F6        .byte $F6, $A9, $EF   ; 



off_03_9A29_AD:
- D 0 - I - 0x001A39 00:9A29: FF        .byte $FF   ; 
off_03_9A19_AC:
- D 0 - I - 0x001A29 00:9A19: 81        .byte $81   ; counter
- D 0 - I - 0x001A2A 00:9A1A: 00        .byte $00   ; spr_A
- D 0 - I - 0x001A2B 00:9A1B: FA        .byte $FA, $15, $01   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x001A2E 00:9A1E: 03        .byte $03   ; 
- D 0 - I - 0x001A2F 00:9A1F: 02        .byte $02   ; 
- D 0 - I - 0x001A30 00:9A20: F3        .byte $F3, $97, $F2   ; 
- D 0 - I - 0x001A33 00:9A23: FB        .byte $FB, $99, $F2   ; 
- D 0 - I - 0x001A36 00:9A26: EB        .byte $EB, $AF, $F2   ; 



off_03_9A2C_AE:
- D 0 - I - 0x001A3C 00:9A2C: 82        .byte $82   ; counter
- D 0 - I - 0x001A3D 00:9A2D: 02        .byte $02   ; spr_A
- D 0 - I - 0x001A3E 00:9A2E: F9        .byte $F9, $9B, $F0   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001A41 00:9A31: 01        .byte $01, $9D, $F0   ; 

- D 0 - I - 0x001A44 00:9A34: 81        .byte $81   ; 
- D 0 - I - 0x001A45 00:9A35: 00        .byte $00   ; 
- D 0 - I - 0x001A46 00:9A36: F9        .byte $F9, $31, $00   ; 

- D 0 - I - 0x001A49 00:9A39: 01        .byte $01   ; 
- D 0 - I - 0x001A4A 00:9A3A: 40        .byte $40   ; 
- D 0 - I - 0x001A4B 00:9A3B: 01        .byte $01, $31, $00   ; 



off_03_9A3E_AF:
- D 0 - I - 0x001A4E 00:9A3E: 82        .byte $82   ; counter
- D 0 - I - 0x001A4F 00:9A3F: 02        .byte $02   ; spr_A
- D 0 - I - 0x001A50 00:9A40: F8        .byte $F8, $AB, $EF   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001A53 00:9A43: 00        .byte $00, $AD, $EF   ; 

- D 0 - I - 0x001A56 00:9A46: 02        .byte $02   ; 
- D 0 - I - 0x001A57 00:9A47: 00        .byte $00   ; 
- D 0 - I - 0x001A58 00:9A48: F8        .byte $F8, $33, $FF   ; 
- D 0 - I - 0x001A5B 00:9A4B: 00        .byte $00, $35, $FF   ; 



off_03_9A4E_B0:
- D 0 - I - 0x001A5E 00:9A4E: 82        .byte $82   ; counter
- D 0 - I - 0x001A5F 00:9A4F: 82        .byte $82   ; spr_A
- D 0 - I - 0x001A60 00:9A50: F8        .byte $F8, $9B, $01   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001A63 00:9A53: 00        .byte $00, $9D, $01   ; 

- D 0 - I - 0x001A66 00:9A56: 81        .byte $81   ; 
- D 0 - I - 0x001A67 00:9A57: 80        .byte $80   ; 
- D 0 - I - 0x001A68 00:9A58: F8        .byte $F8, $31, $F1   ; 

- D 0 - I - 0x001A6B 00:9A5B: 01        .byte $01   ; 
- D 0 - I - 0x001A6C 00:9A5C: C0        .byte $C0   ; 
- D 0 - I - 0x001A6D 00:9A5D: 00        .byte $00, $31, $F1   ; 



off_03_9A60_B1:
- D 0 - I - 0x001A70 00:9A60: 82        .byte $82   ; counter
- D 0 - I - 0x001A71 00:9A61: 82        .byte $82   ; spr_A
- D 0 - I - 0x001A72 00:9A62: F8        .byte $F8, $AB, $02   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001A75 00:9A65: 00        .byte $00, $AD, $02   ; 

- D 0 - I - 0x001A78 00:9A68: 02        .byte $02   ; 
- D 0 - I - 0x001A79 00:9A69: 80        .byte $80   ; 
- D 0 - I - 0x001A7A 00:9A6A: F8        .byte $F8, $33, $F2   ; 
- D 0 - I - 0x001A7D 00:9A6D: 00        .byte $00, $35, $F2   ; 



_off032_9A70_00:
- - - - - - 0x001A80 00:9A70: F2 9B     .word off_00_9BF2_00
- D 0 - I - 0x001A82 00:9A72: F2 9B     .word off_00_9BF2_01
- D 0 - I - 0x001A84 00:9A74: 05 9C     .word off_00_9C05_02
- D 0 - I - 0x001A86 00:9A76: 18 9C     .word off_00_9C18_03
- D 0 - I - 0x001A88 00:9A78: 2B 9C     .word off_00_9C2B_04
- D 0 - I - 0x001A8A 00:9A7A: 3E 9C     .word off_00_9C3E_05
- D 0 - I - 0x001A8C 00:9A7C: 41 9C     .word off_00_9C41_06
- D 0 - I - 0x001A8E 00:9A7E: 44 9C     .word off_00_9C44_07
- D 0 - I - 0x001A90 00:9A80: 47 9C     .word off_00_9C47_08
- D 0 - I - 0x001A92 00:9A82: 4A 9C     .word off_00_9C4A_09
- D 0 - I - 0x001A94 00:9A84: 5A 9C     .word off_00_9C5A_0A
- D 0 - I - 0x001A96 00:9A86: 6A 9C     .word off_00_9C6A_0B
- D 0 - I - 0x001A98 00:9A88: 7A 9C     .word off_00_9C7A_0C
- D 0 - I - 0x001A9A 00:9A8A: 8A 9C     .word off_00_9C8A_0D
- - - - - - 0x001A9C 00:9A8C: 8D 9C     .word off_00_9C8D_0E
- - - - - - 0x001A9E 00:9A8E: 90 9C     .word off_00_9C90_0F
- - - - - - 0x001AA0 00:9A90: 93 9C     .word off_00_9C93_10
- - - - - - 0x001AA2 00:9A92: 96 9C     .word off_00_9C96_11
- - - - - - 0x001AA4 00:9A94: A9 9C     .word off_00_9CA9_12
- - - - - - 0x001AA6 00:9A96: BC 9C     .word off_00_9CBC_13
- - - - - - 0x001AA8 00:9A98: BF 9C     .word off_00_9CBF_14
- D 0 - I - 0x001AAA 00:9A9A: C2 9C     .word off_00_9CC2_15
- D 0 - I - 0x001AAC 00:9A9C: D2 9C     .word off_00_9CD2_16
- D 0 - I - 0x001AAE 00:9A9E: E6 9C     .word off_00_9CE6_17
- D 0 - I - 0x001AB0 00:9AA0: E9 9C     .word off_00_9CE9_18
- D 0 - I - 0x001AB2 00:9AA2: EC 9C     .word off_00_9CEC_19
- D 0 - I - 0x001AB4 00:9AA4: FF 9C     .word off_00_9CFF_1A
- D 0 - I - 0x001AB6 00:9AA6: 12 9D     .word off_00_9D12_1B
- D 0 - I - 0x001AB8 00:9AA8: 15 9D     .word off_00_9D15_1C
- D 0 - I - 0x001ABA 00:9AAA: 18 9D     .word off_00_9D18_1D
- D 0 - I - 0x001ABC 00:9AAC: 2B 9D     .word off_00_9D2B_1E
- D 0 - I - 0x001ABE 00:9AAE: 3E 9D     .word off_00_9D3E_1F
- D 0 - I - 0x001AC0 00:9AB0: 41 9D     .word off_00_9D41_20
- - - - - - 0x001AC2 00:9AB2: 44 9D     .word off_00_9D44_21
- - - - - - 0x001AC4 00:9AB4: 57 9D     .word off_00_9D57_22
- - - - - - 0x001AC6 00:9AB6: 6A 9D     .word off_00_9D6A_23
- - - - - - 0x001AC8 00:9AB8: 6D 9D     .word off_00_9D6D_24
- - - - - - 0x001ACA 00:9ABA: 70 9D     .word off_00_9D70_25
- - - - - - 0x001ACC 00:9ABC: 83 9D     .word off_00_9D83_26
- - - - - - 0x001ACE 00:9ABE: 98 9D     .word off_00_9D98_27
- - - - - - 0x001AD0 00:9AC0: 9B 9D     .word off_00_9D9B_28
- D 0 - I - 0x001AD2 00:9AC2: 9E 9D     .word off_00_9D9E_29
- D 0 - I - 0x001AD4 00:9AC4: A8 9D     .word off_00_9DA8_2A
- D 0 - I - 0x001AD6 00:9AC6: B2 9D     .word off_00_9DB2_2B
- D 0 - I - 0x001AD8 00:9AC8: B5 9D     .word off_00_9DB5_2C
- D 0 - I - 0x001ADA 00:9ACA: B8 9D     .word off_00_9DB8_2D
- D 0 - I - 0x001ADC 00:9ACC: C5 9D     .word off_00_9DC5_2E
- - - - - - 0x001ADE 00:9ACE: DB 9D     .word off_00_9DDB_2F
- - - - - - 0x001AE0 00:9AD0: DE 9D     .word off_00_9DDE_30
- - - - - - 0x001AE2 00:9AD2: E1 9D     .word off_00_9DE1_31
- - - - - - 0x001AE4 00:9AD4: F1 9D     .word off_00_9DF1_32
- - - - - - 0x001AE6 00:9AD6: F4 9D     .word off_00_9DF4_33
- - - - - - 0x001AE8 00:9AD8: F4 9D     .word off_00_9DF4_34
- - - - - - 0x001AEA 00:9ADA: F4 9D     .word off_00_9DF4_35
- - - - - - 0x001AEC 00:9ADC: F4 9D     .word off_00_9DF4_36
- D 0 - I - 0x001AEE 00:9ADE: F4 9D     .word off_00_9DF4_37
- D 0 - I - 0x001AF0 00:9AE0: 05 9E     .word off_00_9E05_38
- D 0 - I - 0x001AF2 00:9AE2: 16 9E     .word off_00_9E16_39
- D 0 - I - 0x001AF4 00:9AE4: 27 9E     .word off_00_9E27_3A
- D 0 - I - 0x001AF6 00:9AE6: 38 9E     .word off_00_9E38_3B
- D 0 - I - 0x001AF8 00:9AE8: 3B 9E     .word off_00_9E3B_3C
- D 0 - I - 0x001AFA 00:9AEA: 3E 9E     .word off_00_9E3E_3D
- D 0 - I - 0x001AFC 00:9AEC: 41 9E     .word off_00_9E41_3E
- D 0 - I - 0x001AFE 00:9AEE: 44 9E     .word off_00_9E44_3F
- D 0 - I - 0x001B00 00:9AF0: 55 9E     .word off_00_9E55_40
- D 0 - I - 0x001B02 00:9AF2: 66 9E     .word off_00_9E66_41
- D 0 - I - 0x001B04 00:9AF4: 77 9E     .word off_00_9E77_42
- D 0 - I - 0x001B06 00:9AF6: 88 9E     .word off_00_9E88_43
- D 0 - I - 0x001B08 00:9AF8: 8B 9E     .word off_00_9E8B_44
- D 0 - I - 0x001B0A 00:9AFA: 8E 9E     .word off_00_9E8E_45
- - - - - - 0x001B0C 00:9AFC: 91 9E     .word off_00_9E91_46
- D 0 - I - 0x001B0E 00:9AFE: 94 9E     .word off_00_9E94_47
- D 0 - I - 0x001B10 00:9B00: A7 9E     .word off_00_9EA7_48
- D 0 - I - 0x001B12 00:9B02: BA 9E     .word off_00_9EBA_49
- D 0 - I - 0x001B14 00:9B04: BD 9E     .word off_00_9EBD_4A
- D 0 - I - 0x001B16 00:9B06: C0 9E     .word off_00_9EC0_4B
- D 0 - I - 0x001B18 00:9B08: D1 9E     .word off_00_9ED1_4C
- D 0 - I - 0x001B1A 00:9B0A: E2 9E     .word off_00_9EE2_4D
- D 0 - I - 0x001B1C 00:9B0C: E5 9E     .word off_00_9EE5_4E
- D 0 - I - 0x001B1E 00:9B0E: E8 9E     .word off_00_9EE8_4F
- D 0 - I - 0x001B20 00:9B10: F9 9E     .word off_00_9EF9_50
- D 0 - I - 0x001B22 00:9B12: 0A 9F     .word off_00_9F0A_51
- D 0 - I - 0x001B24 00:9B14: 0D 9F     .word off_00_9F0D_52
- D 0 - I - 0x001B26 00:9B16: 10 9F     .word off_00_9F10_53
- D 0 - I - 0x001B28 00:9B18: 18 9F     .word off_00_9F18_54
- D 0 - I - 0x001B2A 00:9B1A: 20 9F     .word off_00_9F20_55
- D 0 - I - 0x001B2C 00:9B1C: 23 9F     .word off_00_9F23_56
- - - - - - 0x001B2E 00:9B1E: 26 9F     .word off_00_9F26_57
- - - - - - 0x001B30 00:9B20: 31 9F     .word off_00_9F31_58
- D 0 - I - 0x001B32 00:9B22: 45 9F     .word off_00_9F45_59
- D 0 - I - 0x001B34 00:9B24: 48 9F     .word off_00_9F48_5A
- D 0 - I - 0x001B36 00:9B26: 4B 9F     .word off_00_9F4B_5B
- D 0 - I - 0x001B38 00:9B28: 59 9F     .word off_00_9F59_5C
- - - - - - 0x001B3A 00:9B2A: 5C 9F     .word off_00_9F5C_5D
- - - - - - 0x001B3C 00:9B2C: 5C 9F     .word off_00_9F5C_5E
- - - - - - 0x001B3E 00:9B2E: 5C 9F     .word off_00_9F5C_5F
- - - - - - 0x001B40 00:9B30: 5C 9F     .word off_00_9F5C_60
- D 0 - I - 0x001B42 00:9B32: 5C 9F     .word off_00_9F5C_61
- D 0 - I - 0x001B44 00:9B34: 6F 9F     .word off_00_9F6F_62
- D 0 - I - 0x001B46 00:9B36: 82 9F     .word off_00_9F82_63
- D 0 - I - 0x001B48 00:9B38: 95 9F     .word off_00_9F95_64
- D 0 - I - 0x001B4A 00:9B3A: A8 9F     .word off_00_9FA8_65
- D 0 - I - 0x001B4C 00:9B3C: AB 9F     .word off_00_9FAB_66
- D 0 - I - 0x001B4E 00:9B3E: AE 9F     .word off_00_9FAE_67
- D 0 - I - 0x001B50 00:9B40: B1 9F     .word off_00_9FB1_68
- D 0 - I - 0x001B52 00:9B42: B4 9F     .word off_00_9FB4_69
- D 0 - I - 0x001B54 00:9B44: CA 9F     .word off_00_9FCA_6A
- D 0 - I - 0x001B56 00:9B46: E0 9F     .word off_00_9FE0_6B
- D 0 - I - 0x001B58 00:9B48: F6 9F     .word off_00_9FF6_6C
- D 0 - I - 0x001B5A 00:9B4A: 0C A0     .word off_00_A00C_6D
- D 0 - I - 0x001B5C 00:9B4C: 0F A0     .word off_00_A00F_6E
- D 0 - I - 0x001B5E 00:9B4E: 12 A0     .word off_00_A012_6F
- D 0 - I - 0x001B60 00:9B50: 15 A0     .word off_00_A015_70
- D 0 - I - 0x001B62 00:9B52: 18 A0     .word off_00_A018_71
- D 0 - I - 0x001B64 00:9B54: 2B A0     .word off_00_A02B_72
- D 0 - I - 0x001B66 00:9B56: 3E A0     .word off_00_A03E_73
- D 0 - I - 0x001B68 00:9B58: 41 A0     .word off_00_A041_74
- D 0 - I - 0x001B6A 00:9B5A: 44 A0     .word off_00_A044_75
- D 0 - I - 0x001B6C 00:9B5C: 57 A0     .word off_00_A057_76
- D 0 - I - 0x001B6E 00:9B5E: 6A A0     .word off_00_A06A_77
- D 0 - I - 0x001B70 00:9B60: 6D A0     .word off_00_A06D_78
- D 0 - I - 0x001B72 00:9B62: 70 A0     .word off_00_A070_79
- D 0 - I - 0x001B74 00:9B64: 83 A0     .word off_00_A083_7A
- D 0 - I - 0x001B76 00:9B66: 96 A0     .word off_00_A096_7B
- D 0 - I - 0x001B78 00:9B68: 99 A0     .word off_00_A099_7C
- D 0 - I - 0x001B7A 00:9B6A: 9C A0     .word off_00_A09C_7D
- D 0 - I - 0x001B7C 00:9B6C: A6 A0     .word off_00_A0A6_7E
- D 0 - I - 0x001B7E 00:9B6E: B0 A0     .word off_00_A0B0_7F
- D 0 - I - 0x001B80 00:9B70: B3 A0     .word off_00_A0B3_80
- - - - - - 0x001B82 00:9B72: B6 A0     .word off_00_A0B6_81
- - - - - - 0x001B84 00:9B74: B6 A0     .word off_00_A0B6_82
- - - - - - 0x001B86 00:9B76: B6 A0     .word off_00_A0B6_83
- - - - - - 0x001B88 00:9B78: B6 A0     .word off_00_A0B6_84
- D 0 - I - 0x001B8A 00:9B7A: B6 A0     .word off_00_A0B6_85
- D 0 - I - 0x001B8C 00:9B7C: C6 A0     .word off_00_A0C6_86
- D 0 - I - 0x001B8E 00:9B7E: C9 A0     .word off_00_A0C9_87
- D 0 - I - 0x001B90 00:9B80: D6 A0     .word off_00_A0D6_88
- - - - - - 0x001B92 00:9B82: EE A0     .word off_00_A0EE_89
- - - - - - 0x001B94 00:9B84: F1 A0     .word off_00_A0F1_8A
- D 0 - I - 0x001B96 00:9B86: F4 A0     .word off_00_A0F4_8B
- D 0 - I - 0x001B98 00:9B88: 05 A1     .word off_00_A105_8C
- D 0 - I - 0x001B9A 00:9B8A: 16 A1     .word off_00_A116_8D
- D 0 - I - 0x001B9C 00:9B8C: 27 A1     .word off_00_A127_8E
- D 0 - I - 0x001B9E 00:9B8E: 38 A1     .word off_00_A138_8F
- D 0 - I - 0x001BA0 00:9B90: 3B A1     .word off_00_A13B_90
- D 0 - I - 0x001BA2 00:9B92: 3E A1     .word off_00_A13E_91
- D 0 - I - 0x001BA4 00:9B94: 41 A1     .word off_00_A141_92
- - - - - - 0x001BA6 00:9B96: 44 A1     .word off_00_A144_93
- - - - - - 0x001BA8 00:9B98: 55 A1     .word off_00_A155_94
- - - - - - 0x001BAA 00:9B9A: 66 A1     .word off_00_A166_95
- - - - - - 0x001BAC 00:9B9C: 77 A1     .word off_00_A177_96
- D 0 - I - 0x001BAE 00:9B9E: 88 A1     .word off_00_A188_97
- D 0 - I - 0x001BB0 00:9BA0: 8B A1     .word off_00_A18B_98
- - - - - - 0x001BB2 00:9BA2: 8E A1     .word off_00_A18E_99
- - - - - - 0x001BB4 00:9BA4: 91 A1     .word off_00_A191_9A
- D 0 - I - 0x001BB6 00:9BA6: 94 A1     .word off_00_A194_9B
- D 0 - I - 0x001BB8 00:9BA8: A9 A1     .word off_00_A1A9_9C
- D 0 - I - 0x001BBA 00:9BAA: BE A1     .word off_00_A1BE_9D
- D 0 - I - 0x001BBC 00:9BAC: C1 A1     .word off_00_A1C1_9E
- D 0 - I - 0x001BBE 00:9BAE: C4 A1     .word off_00_A1C4_9F
- D 0 - I - 0x001BC0 00:9BB0: D5 A1     .word off_00_A1D5_A0
- D 0 - I - 0x001BC2 00:9BB2: E6 A1     .word off_00_A1E6_A1
- D 0 - I - 0x001BC4 00:9BB4: E9 A1     .word off_00_A1E9_A2
- D 0 - I - 0x001BC6 00:9BB6: EC A1     .word off_00_A1EC_A3
- D 0 - I - 0x001BC8 00:9BB8: FA A1     .word off_00_A1FA_A4
- - - - - - 0x001BCA 00:9BBA: 08 A2     .word off_00_A208_A5
- D 0 - I - 0x001BCC 00:9BBC: 0B A2     .word off_00_A20B_A6
- D 0 - I - 0x001BCE 00:9BBE: 0E A2     .word off_00_A20E_A7
- D 0 - I - 0x001BD0 00:9BC0: 1C A2     .word off_00_A21C_A8
- D 0 - I - 0x001BD2 00:9BC2: 2A A2     .word off_00_A22A_A9
- D 0 - I - 0x001BD4 00:9BC4: 38 A2     .word off_00_A238_AA
- D 0 - I - 0x001BD6 00:9BC6: 46 A2     .word off_00_A246_AB
- D 0 - I - 0x001BD8 00:9BC8: 49 A2     .word off_00_A249_AC
- D 0 - I - 0x001BDA 00:9BCA: 4C A2     .word off_00_A24C_AD
- D 0 - I - 0x001BDC 00:9BCC: 4F A2     .word off_00_A24F_AE
- D 0 - I - 0x001BDE 00:9BCE: 52 A2     .word off_00_A252_AF
- D 0 - I - 0x001BE0 00:9BD0: 60 A2     .word off_00_A260_B0
- D 0 - I - 0x001BE2 00:9BD2: 6E A2     .word off_00_A26E_B1
- D 0 - I - 0x001BE4 00:9BD4: 71 A2     .word off_00_A271_B2
- D 0 - I - 0x001BE6 00:9BD6: 74 A2     .word off_00_A274_B3
- D 0 - I - 0x001BE8 00:9BD8: 7C A2     .word off_00_A27C_B4
- D 0 - I - 0x001BEA 00:9BDA: 84 A2     .word off_00_A284_B5
- D 0 - I - 0x001BEC 00:9BDC: 87 A2     .word off_00_A287_B6
- - - - - - 0x001BEE 00:9BDE: 8A A2     .word off_00_A28A_B7
- - - - - - 0x001BF0 00:9BE0: 8A A2     .word off_00_A28A_B8
- - - - - - 0x001BF2 00:9BE2: 8A A2     .word off_00_A28A_B9
- - - - - - 0x001BF4 00:9BE4: 8A A2     .word off_00_A28A_BA
- - - - - - 0x001BF6 00:9BE6: 8A A2     .word off_00_A28A_BB
- - - - - - 0x001BF8 00:9BE8: 98 A2     .word off_00_A298_BC
- D 0 - I - 0x001BFA 00:9BEA: 9B A2     .word off_00_A29B_BD
- D 0 - I - 0x001BFC 00:9BEC: A6 A2     .word off_00_A2A6_BE
- - - - - - 0x001BFE 00:9BEE: BA A2     .word off_00_A2BA_BF
- - - - - - 0x001C00 00:9BF0: BD A2     .word off_00_A2BD_C0



off_00_9C3E_05:
- D 0 - I - 0x001C4E 00:9C3E: FF        .byte $FF   ; 
off_00_9BF2_00:
off_00_9BF2_01:
- D 0 - I - 0x001C02 00:9BF2: 83        .byte $83   ; counter
- D 0 - I - 0x001C03 00:9BF3: 01        .byte $01   ; spr_A
- D 0 - I - 0x001C04 00:9BF4: F5        .byte $F5, $2B, $EF   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001C07 00:9BF7: FD        .byte $FD, $2D, $EF   ; 
- D 0 - I - 0x001C0A 00:9BFA: 05        .byte $05, $2F, $EF   ; 

- D 0 - I - 0x001C0D 00:9BFD: 02        .byte $02   ; 
- D 0 - I - 0x001C0E 00:9BFE: 00        .byte $00   ; 
- D 0 - I - 0x001C0F 00:9BFF: F5        .byte $F5, $01, $FF   ; 
- D 0 - I - 0x001C12 00:9C02: FD        .byte $FD, $03, $FF   ; 



off_00_9C41_06:
- D 0 - I - 0x001C51 00:9C41: FF        .byte $FF   ; 
off_00_9C05_02:
- D 0 - I - 0x001C15 00:9C05: 83        .byte $83   ; counter
- D 0 - I - 0x001C16 00:9C06: 01        .byte $01   ; spr_A
- D 0 - I - 0x001C17 00:9C07: F5        .byte $F5, $31, $EF   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001C1A 00:9C0A: FD        .byte $FD, $33, $EF   ; 
- D 0 - I - 0x001C1D 00:9C0D: 05        .byte $05, $35, $EF   ; 

- D 0 - I - 0x001C20 00:9C10: 02        .byte $02   ; 
- D 0 - I - 0x001C21 00:9C11: 00        .byte $00   ; 
- D 0 - I - 0x001C22 00:9C12: F5        .byte $F5, $05, $FF   ; 
- D 0 - I - 0x001C25 00:9C15: FD        .byte $FD, $07, $FF   ; 



off_00_9C44_07:
- D 0 - I - 0x001C54 00:9C44: FF        .byte $FF   ; 
off_00_9C18_03:
- D 0 - I - 0x001C28 00:9C18: 83        .byte $83   ; counter
- D 0 - I - 0x001C29 00:9C19: 01        .byte $01   ; spr_A
- D 0 - I - 0x001C2A 00:9C1A: FA        .byte $FA, $37, $EF   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001C2D 00:9C1D: 02        .byte $02, $39, $EF   ; 
- D 0 - I - 0x001C30 00:9C20: 0A        .byte $0A, $35, $ED   ; 

- D 0 - I - 0x001C33 00:9C23: 02        .byte $02   ; 
- D 0 - I - 0x001C34 00:9C24: 00        .byte $00   ; 
- D 0 - I - 0x001C35 00:9C25: F7        .byte $F7, $09, $FF   ; 
- D 0 - I - 0x001C38 00:9C28: FF        .byte $FF, $0B, $FF   ; 



off_00_9C47_08:
- D 0 - I - 0x001C57 00:9C47: FF        .byte $FF   ; 
off_00_9C2B_04:
- D 0 - I - 0x001C3B 00:9C2B: 83        .byte $83   ; counter
- D 0 - I - 0x001C3C 00:9C2C: 01        .byte $01   ; spr_A
- D 0 - I - 0x001C3D 00:9C2D: F5        .byte $F5, $31, $EF   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001C40 00:9C30: FD        .byte $FD, $33, $EF   ; 
- D 0 - I - 0x001C43 00:9C33: 05        .byte $05, $35, $EF   ; 

- D 0 - I - 0x001C46 00:9C36: 02        .byte $02   ; 
- D 0 - I - 0x001C47 00:9C37: 00        .byte $00   ; 
- D 0 - I - 0x001C48 00:9C38: F6        .byte $F6, $0D, $FF   ; 
- D 0 - I - 0x001C4B 00:9C3B: FE        .byte $FE, $0F, $FF   ; 



off_00_9C8A_0D:
- D 0 - I - 0x001C9A 00:9C8A: FF        .byte $FF   ; 
off_00_9C4A_09:
- D 0 - I - 0x001C5A 00:9C4A: 82        .byte $82   ; counter
- D 0 - I - 0x001C5B 00:9C4B: 01        .byte $01   ; spr_A
- D 0 - I - 0x001C5C 00:9C4C: F6        .byte $F6, $3B, $EF   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001C5F 00:9C4F: FE        .byte $FE, $3D, $EF   ; 

- D 0 - I - 0x001C62 00:9C52: 02        .byte $02   ; 
- D 0 - I - 0x001C63 00:9C53: 00        .byte $00   ; 
- D 0 - I - 0x001C64 00:9C54: F5        .byte $F5, $01, $FF   ; 
- D 0 - I - 0x001C67 00:9C57: FD        .byte $FD, $03, $FF   ; 



off_00_9C8D_0E:
- - - - - - 0x001C9D 00:9C8D: FF        .byte $FF   ; 
off_00_9C5A_0A:
- D 0 - I - 0x001C6A 00:9C5A: 82        .byte $82   ; counter
- D 0 - I - 0x001C6B 00:9C5B: 01        .byte $01   ; spr_A
- D 0 - I - 0x001C6C 00:9C5C: F7        .byte $F7, $3B, $F0   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001C6F 00:9C5F: FF        .byte $FF, $3D, $F0   ; 

- D 0 - I - 0x001C72 00:9C62: 02        .byte $02   ; 
- D 0 - I - 0x001C73 00:9C63: 00        .byte $00   ; 
- D 0 - I - 0x001C74 00:9C64: F5        .byte $F5, $05, $FF   ; 
- D 0 - I - 0x001C77 00:9C67: FD        .byte $FD, $07, $FF   ; 



off_00_9C90_0F:
- - - - - - 0x001CA0 00:9C90: FF        .byte $FF   ; 
off_00_9C6A_0B:
- D 0 - I - 0x001C7A 00:9C6A: 82        .byte $82   ; counter
- D 0 - I - 0x001C7B 00:9C6B: 01        .byte $01   ; spr_A
- D 0 - I - 0x001C7C 00:9C6C: F9        .byte $F9, $3B, $EF   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001C7F 00:9C6F: 01        .byte $01, $3D, $EF   ; 

- D 0 - I - 0x001C82 00:9C72: 02        .byte $02   ; 
- D 0 - I - 0x001C83 00:9C73: 00        .byte $00   ; 
- D 0 - I - 0x001C84 00:9C74: F7        .byte $F7, $09, $FF   ; 
- D 0 - I - 0x001C87 00:9C77: FF        .byte $FF, $0B, $FF   ; 



off_00_9C93_10:
- - - - - - 0x001CA3 00:9C93: FF        .byte $FF   ; 
off_00_9C7A_0C:
- D 0 - I - 0x001C8A 00:9C7A: 82        .byte $82   ; counter
- D 0 - I - 0x001C8B 00:9C7B: 01        .byte $01   ; spr_A
- D 0 - I - 0x001C8C 00:9C7C: F7        .byte $F7, $3B, $F0   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001C8F 00:9C7F: FF        .byte $FF, $3D, $F0   ; 

- D 0 - I - 0x001C92 00:9C82: 02        .byte $02   ; 
- D 0 - I - 0x001C93 00:9C83: 00        .byte $00   ; 
- D 0 - I - 0x001C94 00:9C84: F6        .byte $F6, $0D, $FF   ; 
- D 0 - I - 0x001C97 00:9C87: FE        .byte $FE, $0F, $FF   ; 



off_00_9CBC_13:
- - - - - - 0x001CCC 00:9CBC: FF        .byte $FF   ; 
off_00_9C96_11:
- - - - - - 0x001CA6 00:9C96: 83        .byte $83   ; counter
- - - - - - 0x001CA7 00:9C97: 01        .byte $01   ; spr_A
- - - - - - 0x001CA8 00:9C98: F5        .byte $F5, $2B, $EF   ; spr_X, spr_T, spr_Y
- - - - - - 0x001CAB 00:9C9B: FD        .byte $FD, $53, $EF   ; 
- - - - - - 0x001CAE 00:9C9E: 05        .byte $05, $55, $EF   ; 

- - - - - - 0x001CB1 00:9CA1: 02        .byte $02   ; 
- - - - - - 0x001CB2 00:9CA2: 00        .byte $00   ; 
- - - - - - 0x001CB3 00:9CA3: F5        .byte $F5, $01, $FF   ; 
- - - - - - 0x001CB6 00:9CA6: FD        .byte $FD, $03, $FF   ; 



off_00_9CBF_14:
- - - - - - 0x001CCF 00:9CBF: FF        .byte $FF   ; 
off_00_9CA9_12:
- - - - - - 0x001CB9 00:9CA9: 83        .byte $83   ; counter
- - - - - - 0x001CBA 00:9CAA: 01        .byte $01   ; spr_A
- - - - - - 0x001CBB 00:9CAB: F5        .byte $F5, $31, $EF   ; spr_X, spr_T, spr_Y
- - - - - - 0x001CBE 00:9CAE: FD        .byte $FD, $4F, $EF   ; 
- - - - - - 0x001CC1 00:9CB1: 05        .byte $05, $51, $EF   ; 

- - - - - - 0x001CC4 00:9CB4: 02        .byte $02   ; 
- - - - - - 0x001CC5 00:9CB5: 00        .byte $00   ; 
- - - - - - 0x001CC6 00:9CB6: F6        .byte $F6, $0D, $FF   ; 
- - - - - - 0x001CC9 00:9CB9: FE        .byte $FE, $0F, $FF   ; 



off_00_9CE6_17:
- D 0 - I - 0x001CF6 00:9CE6: FF        .byte $FF   ; 
off_00_9CC2_15:
- D 0 - I - 0x001CD2 00:9CC2: 82        .byte $82   ; counter
- D 0 - I - 0x001CD3 00:9CC3: 01        .byte $01   ; spr_A
- D 0 - I - 0x001CD4 00:9CC4: F5        .byte $F5, $3F, $EF   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001CD7 00:9CC7: FD        .byte $FD, $41, $EF   ; 

- D 0 - I - 0x001CDA 00:9CCA: 02        .byte $02   ; 
- D 0 - I - 0x001CDB 00:9CCB: 40        .byte $40   ; 
- D 0 - I - 0x001CDC 00:9CCC: FD        .byte $FD, $CD, $FF   ; 
- D 0 - I - 0x001CDF 00:9CCF: F5        .byte $F5, $CF, $FF   ; 



off_00_9CE9_18:
- D 0 - I - 0x001CF9 00:9CE9: FF        .byte $FF   ; 
off_00_9CD2_16:
- D 0 - I - 0x001CE2 00:9CD2: 81        .byte $81   ; counter
- D 0 - I - 0x001CE3 00:9CD3: 01        .byte $01   ; spr_A
- D 0 - I - 0x001CE4 00:9CD4: FD        .byte $FD, $41, $F0   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x001CE7 00:9CD7: 81        .byte $81   ; 
- D 0 - I - 0x001CE8 00:9CD8: 40        .byte $40   ; 
- D 0 - I - 0x001CE9 00:9CD9: FD        .byte $FD, $CD, $FF   ; 

- D 0 - I - 0x001CEC 00:9CDC: 81        .byte $81   ; 
- D 0 - I - 0x001CED 00:9CDD: 01        .byte $01   ; 
- D 0 - I - 0x001CEE 00:9CDE: F5        .byte $F5, $3F, $F0   ; 

- D 0 - I - 0x001CF1 00:9CE1: 01        .byte $01   ; 
- D 0 - I - 0x001CF2 00:9CE2: 40        .byte $40   ; 
- D 0 - I - 0x001CF3 00:9CE3: F5        .byte $F5, $CF, $FF   ; 



off_00_9D12_1B:
- D 0 - I - 0x001D22 00:9D12: FF        .byte $FF   ; 
off_00_9CEC_19:
- D 0 - I - 0x001CFC 00:9CEC: 83        .byte $83   ; counter
- D 0 - I - 0x001CFD 00:9CED: 01        .byte $01   ; spr_A
- D 0 - I - 0x001CFE 00:9CEE: F4        .byte $F4, $2B, $F0   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001D01 00:9CF1: FC        .byte $FC, $2D, $F0   ; 
- D 0 - I - 0x001D04 00:9CF4: 04        .byte $04, $2F, $F0   ; 

- D 0 - I - 0x001D07 00:9CF7: 02        .byte $02   ; 
- D 0 - I - 0x001D08 00:9CF8: 00        .byte $00   ; 
- D 0 - I - 0x001D09 00:9CF9: F5        .byte $F5, $11, $FF   ; 
- D 0 - I - 0x001D0C 00:9CFC: FD        .byte $FD, $13, $FF   ; 



off_00_9D15_1C:
- D 0 - I - 0x001D25 00:9D15: FF        .byte $FF   ; 
off_00_9CFF_1A:
- D 0 - I - 0x001D0F 00:9CFF: 83        .byte $83   ; counter
- D 0 - I - 0x001D10 00:9D00: 01        .byte $01   ; spr_A
- D 0 - I - 0x001D11 00:9D01: F3        .byte $F3, $31, $EF   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001D14 00:9D04: FB        .byte $FB, $33, $EF   ; 
- D 0 - I - 0x001D17 00:9D07: 03        .byte $03, $35, $EF   ; 

- D 0 - I - 0x001D1A 00:9D0A: 02        .byte $02   ; 
- D 0 - I - 0x001D1B 00:9D0B: 00        .byte $00   ; 
- D 0 - I - 0x001D1C 00:9D0C: F5        .byte $F5, $11, $FF   ; 
- D 0 - I - 0x001D1F 00:9D0F: FD        .byte $FD, $13, $FF   ; 



off_00_9D3E_1F:
- D 0 - I - 0x001D4E 00:9D3E: FF        .byte $FF   ; 
off_00_9D18_1D:
- D 0 - I - 0x001D28 00:9D18: 83        .byte $83   ; counter
- D 0 - I - 0x001D29 00:9D19: 01        .byte $01   ; spr_A
- D 0 - I - 0x001D2A 00:9D1A: F4        .byte $F4, $2B, $F5   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001D2D 00:9D1D: FC        .byte $FC, $2D, $F5   ; 
- D 0 - I - 0x001D30 00:9D20: 04        .byte $04, $2F, $F5   ; 

- D 0 - I - 0x001D33 00:9D23: 02        .byte $02   ; 
- D 0 - I - 0x001D34 00:9D24: 00        .byte $00   ; 
- D 0 - I - 0x001D35 00:9D25: F5        .byte $F5, $27, $04   ; 
- D 0 - I - 0x001D38 00:9D28: FD        .byte $FD, $29, $04   ; 



off_00_9D41_20:
- D 0 - I - 0x001D51 00:9D41: FF        .byte $FF   ; 
off_00_9D2B_1E:
- D 0 - I - 0x001D3B 00:9D2B: 83        .byte $83   ; counter
- D 0 - I - 0x001D3C 00:9D2C: 01        .byte $01   ; spr_A
- D 0 - I - 0x001D3D 00:9D2D: F3        .byte $F3, $31, $F4   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001D40 00:9D30: FB        .byte $FB, $33, $F4   ; 
- D 0 - I - 0x001D43 00:9D33: 03        .byte $03, $35, $F4   ; 

- D 0 - I - 0x001D46 00:9D36: 02        .byte $02   ; 
- D 0 - I - 0x001D47 00:9D37: 00        .byte $00   ; 
- D 0 - I - 0x001D48 00:9D38: F5        .byte $F5, $27, $04   ; 
- D 0 - I - 0x001D4B 00:9D3B: FD        .byte $FD, $29, $04   ; 



off_00_9D6A_23:
- - - - - - 0x001D7A 00:9D6A: FF        .byte $FF   ; 
off_00_9D44_21:
- - - - - - 0x001D54 00:9D44: 82        .byte $82   ; counter
- - - - - - 0x001D55 00:9D45: 00        .byte $00   ; spr_A
- - - - - - 0x001D56 00:9D46: F5        .byte $F5, $11, $FF   ; spr_X, spr_T, spr_Y
- - - - - - 0x001D59 00:9D49: FD        .byte $FD, $13, $FF   ; 

- - - - - - 0x001D5C 00:9D4C: 03        .byte $03   ; 
- - - - - - 0x001D5D 00:9D4D: 01        .byte $01   ; 
- - - - - - 0x001D5E 00:9D4E: F3        .byte $F3, $31, $EF   ; 
- - - - - - 0x001D61 00:9D51: FB        .byte $FB, $4F, $EF   ; 
- - - - - - 0x001D64 00:9D54: 03        .byte $03, $51, $EF   ; 



off_00_9D6D_24:
- - - - - - 0x001D7D 00:9D6D: FF        .byte $FF   ; 
off_00_9D57_22:
- - - - - - 0x001D67 00:9D57: 83        .byte $83   ; counter
- - - - - - 0x001D68 00:9D58: 01        .byte $01   ; spr_A
- - - - - - 0x001D69 00:9D59: F4        .byte $F4, $2B, $EF   ; spr_X, spr_T, spr_Y
- - - - - - 0x001D6C 00:9D5C: FC        .byte $FC, $53, $EF   ; 
- - - - - - 0x001D6F 00:9D5F: 04        .byte $04, $55, $EF   ; 

- - - - - - 0x001D72 00:9D62: 02        .byte $02   ; 
- - - - - - 0x001D73 00:9D63: 00        .byte $00   ; 
- - - - - - 0x001D74 00:9D64: F5        .byte $F5, $11, $FF   ; 
- - - - - - 0x001D77 00:9D67: FD        .byte $FD, $13, $FF   ; 



off_00_9D98_27:
- - - - - - 0x001DA8 00:9D98: FF        .byte $FF   ; 
off_00_9D70_25:
- - - - - - 0x001D80 00:9D70: 83        .byte $83   ; counter
- - - - - - 0x001D81 00:9D71: 01        .byte $01   ; spr_A
- - - - - - 0x001D82 00:9D72: F3        .byte $F3, $31, $F4   ; spr_X, spr_T, spr_Y
- - - - - - 0x001D85 00:9D75: FB        .byte $FB, $4F, $F4   ; 
- - - - - - 0x001D88 00:9D78: 03        .byte $03, $51, $F4   ; 

- - - - - - 0x001D8B 00:9D7B: 02        .byte $02   ; 
- - - - - - 0x001D8C 00:9D7C: 00        .byte $00   ; 
- - - - - - 0x001D8D 00:9D7D: F5        .byte $F5, $27, $04   ; 
- - - - - - 0x001D90 00:9D80: FD        .byte $FD, $29, $04   ; 



off_00_9D9B_28:
- - - - - - 0x001DAB 00:9D9B: FF        .byte $FF   ; 
off_00_9D83_26:
- - - - - - 0x001D93 00:9D83: 81        .byte $81   ; counter
- - - - - - 0x001D94 00:9D84: 01        .byte $01   ; spr_A
- - - - - - 0x001D95 00:9D85: F4        .byte $F4, $2B, $F4   ; spr_X, spr_T, spr_Y

- - - - - - 0x001D98 00:9D88: 82        .byte $82   ; 
- - - - - - 0x001D99 00:9D89: 00        .byte $00   ; 
- - - - - - 0x001D9A 00:9D8A: F5        .byte $F5, $27, $04   ; 
- - - - - - 0x001D9D 00:9D8D: FD        .byte $FD, $29, $04   ; 

- - - - - - 0x001DA0 00:9D90: 02        .byte $02   ; 
- - - - - - 0x001DA1 00:9D91: 01        .byte $01   ; 
- - - - - - 0x001DA2 00:9D92: FC        .byte $FC, $53, $F4   ; 
- - - - - - 0x001DA5 00:9D95: 04        .byte $04, $55, $F4   ; 



off_00_9DB5_2C:
- D 0 - I - 0x001DC5 00:9DB5: FF        .byte $FF   ; 
off_00_9D9E_29:
- D 0 - I - 0x001DAE 00:9D9E: 81        .byte $81   ; counter
- D 0 - I - 0x001DAF 00:9D9F: 01        .byte $01   ; spr_A
- D 0 - I - 0x001DB0 00:9DA0: F8        .byte $F8, $43, $FA   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x001DB3 00:9DA3: 01        .byte $01   ; 
- D 0 - I - 0x001DB4 00:9DA4: 00        .byte $00   ; 
- D 0 - I - 0x001DB5 00:9DA5: 00        .byte $00, $15, $FA   ; 



off_00_9DB2_2B:
- D 0 - I - 0x001DC2 00:9DB2: FF        .byte $FF   ; 
off_00_9DA8_2A:
- D 0 - I - 0x001DB8 00:9DA8: 81        .byte $81   ; counter
- D 0 - I - 0x001DB9 00:9DA9: 81        .byte $81   ; spr_A
- D 0 - I - 0x001DBA 00:9DAA: F8        .byte $F8, $43, $FA   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x001DBD 00:9DAD: 01        .byte $01   ; 
- D 0 - I - 0x001DBE 00:9DAE: 80        .byte $80   ; 
- D 0 - I - 0x001DBF 00:9DAF: 00        .byte $00, $15, $FA   ; 



off_00_9DDB_2F:
- - - - - - 0x001DEB 00:9DDB: FF        .byte $FF   ; 
off_00_9DB8_2D:
- D 0 - I - 0x001DC8 00:9DB8: 81        .byte $81   ; counter
- D 0 - I - 0x001DC9 00:9DB9: 01        .byte $01   ; spr_A
- D 0 - I - 0x001DCA 00:9DBA: F3        .byte $F3, $45, $F8   ; spr_X, spr_T, spr_Y

- D 0 - I - 0x001DCD 00:9DBD: 02        .byte $02   ; 
- D 0 - I - 0x001DCE 00:9DBE: 00        .byte $00   ; 
- D 0 - I - 0x001DCF 00:9DBF: FB        .byte $FB, $17, $F8   ; 
- D 0 - I - 0x001DD2 00:9DC2: 03        .byte $03, $19, $F8   ; 



off_00_9DDE_30:
- - - - - - 0x001DEE 00:9DDE: FF        .byte $FF   ; 
off_00_9DC5_2E:
- D 0 - I - 0x001DD5 00:9DC5: 83        .byte $83   ; counter
- D 0 - I - 0x001DD6 00:9DC6: 01        .byte $01   ; spr_A
- D 0 - I - 0x001DD7 00:9DC7: F4        .byte $F4, $47, $F4   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001DDA 00:9DCA: FC        .byte $FC, $49, $F4   ; 
- D 0 - I - 0x001DDD 00:9DCD: F0        .byte $F0, $1B, $04   ; 

- D 0 - I - 0x001DE0 00:9DD0: 03        .byte $03   ; 
- D 0 - I - 0x001DE1 00:9DD1: 00        .byte $00   ; 
- D 0 - I - 0x001DE2 00:9DD2: F8        .byte $F8, $1D, $04   ; 
- D 0 - I - 0x001DE5 00:9DD5: 00        .byte $00, $1F, $04   ; 
- D 0 - I - 0x001DE8 00:9DD8: 08        .byte $08, $21, $04   ; 



off_00_9DF1_32:
- - - - - - 0x001E01 00:9DF1: FF        .byte $FF   ; 
off_00_9DE1_31:
- - - - - - 0x001DF1 00:9DE1: 82        .byte $82   ; counter
- - - - - - 0x001DF2 00:9DE2: 01        .byte $01   ; spr_A
- - - - - - 0x001DF3 00:9DE3: F9        .byte $F9, $4B, $F1   ; spr_X, spr_T, spr_Y
- - - - - - 0x001DF6 00:9DE6: 01        .byte $01, $4D, $F1   ; 

- - - - - - 0x001DF9 00:9DE9: 02        .byte $02   ; 
- - - - - - 0x001DFA 00:9DEA: 00        .byte $00   ; 
- - - - - - 0x001DFB 00:9DEB: F9        .byte $F9, $23, $01   ; 
- - - - - - 0x001DFE 00:9DEE: 01        .byte $01, $25, $01   ; 



off_00_9E38_3B:
- D 0 - I - 0x001E48 00:9E38: FF        .byte $FF   ; 
off_00_9DF4_33:
off_00_9DF4_34:
off_00_9DF4_35:
off_00_9DF4_36:
off_00_9DF4_37:
- D 0 - I - 0x001E04 00:9DF4: 05        .byte $05   ; counter
- D 0 - I - 0x001E05 00:9DF5: 01        .byte $01   ; spr_A
- D 0 - I - 0x001E06 00:9DF6: F7        .byte $F7, $59, $EF   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001E09 00:9DF9: FF        .byte $FF, $5B, $EF   ; 
- D 0 - I - 0x001E0C 00:9DFC: 07        .byte $07, $5D, $EF   ; 
- D 0 - I - 0x001E0F 00:9DFF: F5        .byte $F5, $01, $FF   ; 
- D 0 - I - 0x001E12 00:9E02: FD        .byte $FD, $03, $FF   ; 



off_00_9E3B_3C:
- D 0 - I - 0x001E4B 00:9E3B: FF        .byte $FF   ; 
off_00_9E05_38:
- D 0 - I - 0x001E15 00:9E05: 05        .byte $05   ; counter
- D 0 - I - 0x001E16 00:9E06: 01        .byte $01   ; spr_A
- D 0 - I - 0x001E17 00:9E07: F8        .byte $F8, $5F, $F0   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001E1A 00:9E0A: 00        .byte $00, $61, $F0   ; 
- D 0 - I - 0x001E1D 00:9E0D: 08        .byte $08, $63, $F0   ; 
- D 0 - I - 0x001E20 00:9E10: F5        .byte $F5, $05, $FF   ; 
- D 0 - I - 0x001E23 00:9E13: FD        .byte $FD, $07, $FF   ; 



off_00_9E3E_3D:
- D 0 - I - 0x001E4E 00:9E3E: FF        .byte $FF   ; 
off_00_9E16_39:
- D 0 - I - 0x001E26 00:9E16: 05        .byte $05   ; counter
- D 0 - I - 0x001E27 00:9E17: 01        .byte $01   ; spr_A
- D 0 - I - 0x001E28 00:9E18: F7        .byte $F7, $09, $FF   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001E2B 00:9E1B: FF        .byte $FF, $0B, $FF   ; 
- D 0 - I - 0x001E2E 00:9E1E: FA        .byte $FA, $59, $EF   ; 
- D 0 - I - 0x001E31 00:9E21: 02        .byte $02, $5B, $EF   ; 
- D 0 - I - 0x001E34 00:9E24: 0A        .byte $0A, $5D, $EF   ; 



off_00_9E41_3E:
- D 0 - I - 0x001E51 00:9E41: FF        .byte $FF   ; 
off_00_9E27_3A:
- D 0 - I - 0x001E37 00:9E27: 05        .byte $05   ; counter
- D 0 - I - 0x001E38 00:9E28: 01        .byte $01   ; spr_A
- D 0 - I - 0x001E39 00:9E29: F8        .byte $F8, $5F, $F0   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001E3C 00:9E2C: 00        .byte $00, $61, $F0   ; 
- D 0 - I - 0x001E3F 00:9E2F: 08        .byte $08, $63, $F0   ; 
- D 0 - I - 0x001E42 00:9E32: F6        .byte $F6, $0D, $FF   ; 
- D 0 - I - 0x001E45 00:9E35: FE        .byte $FE, $0F, $FF   ; 



off_00_9E88_43:
- D 0 - I - 0x001E98 00:9E88: FF        .byte $FF   ; 
off_00_9E44_3F:
- D 0 - I - 0x001E54 00:9E44: 05        .byte $05   ; counter
- D 0 - I - 0x001E55 00:9E45: 01        .byte $01   ; spr_A
- D 0 - I - 0x001E56 00:9E46: F7        .byte $F7, $65, $EF   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001E59 00:9E49: FF        .byte $FF, $67, $EF   ; 
- D 0 - I - 0x001E5C 00:9E4C: 01        .byte $01, $69, $DF   ; 
- D 0 - I - 0x001E5F 00:9E4F: F5        .byte $F5, $01, $FF   ; 
- D 0 - I - 0x001E62 00:9E52: FD        .byte $FD, $03, $FF   ; 



off_00_9E8B_44:
- D 0 - I - 0x001E9B 00:9E8B: FF        .byte $FF   ; 
off_00_9E55_40:
- D 0 - I - 0x001E65 00:9E55: 05        .byte $05   ; counter
- D 0 - I - 0x001E66 00:9E56: 01        .byte $01   ; spr_A
- D 0 - I - 0x001E67 00:9E57: F8        .byte $F8, $65, $F1   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001E6A 00:9E5A: 00        .byte $00, $67, $F1   ; 
- D 0 - I - 0x001E6D 00:9E5D: 02        .byte $02, $69, $E1   ; 
- D 0 - I - 0x001E70 00:9E60: F5        .byte $F5, $05, $FF   ; 
- D 0 - I - 0x001E73 00:9E63: FD        .byte $FD, $07, $FF   ; 



off_00_9E8E_45:
- D 0 - I - 0x001E9E 00:9E8E: FF        .byte $FF   ; 
off_00_9E66_41:
- D 0 - I - 0x001E76 00:9E66: 05        .byte $05   ; counter
- D 0 - I - 0x001E77 00:9E67: 01        .byte $01   ; spr_A
- D 0 - I - 0x001E78 00:9E68: F7        .byte $F7, $09, $FF   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001E7B 00:9E6B: FF        .byte $FF, $0B, $FF   ; 
- D 0 - I - 0x001E7E 00:9E6E: FA        .byte $FA, $65, $EF   ; 
- D 0 - I - 0x001E81 00:9E71: 02        .byte $02, $67, $EF   ; 
- D 0 - I - 0x001E84 00:9E74: 04        .byte $04, $69, $DF   ; 



off_00_9E91_46:
- - - - - - 0x001EA1 00:9E91: FF        .byte $FF   ; 
off_00_9E77_42:
- D 0 - I - 0x001E87 00:9E77: 05        .byte $05   ; counter
- D 0 - I - 0x001E88 00:9E78: 01        .byte $01   ; spr_A
- D 0 - I - 0x001E89 00:9E79: F8        .byte $F8, $65, $F1   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001E8C 00:9E7C: 00        .byte $00, $67, $F1   ; 
- D 0 - I - 0x001E8F 00:9E7F: 02        .byte $02, $69, $E1   ; 
- D 0 - I - 0x001E92 00:9E82: F6        .byte $F6, $0D, $FF   ; 
- D 0 - I - 0x001E95 00:9E85: FE        .byte $FE, $0F, $FF   ; 



off_00_9EBA_49:
- D 0 - I - 0x001ECA 00:9EBA: FF        .byte $FF   ; 
off_00_9E94_47:
- D 0 - I - 0x001EA4 00:9E94: 82        .byte $82   ; counter
- D 0 - I - 0x001EA5 00:9E95: 41        .byte $41   ; spr_A
- D 0 - I - 0x001EA6 00:9E96: FD        .byte $FD, $CD, $FF   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001EA9 00:9E99: F5        .byte $F5, $CF, $FF   ; 

- D 0 - I - 0x001EAC 00:9E9C: 03        .byte $03   ; 
- D 0 - I - 0x001EAD 00:9E9D: 01        .byte $01   ; 
- D 0 - I - 0x001EAE 00:9E9E: F4        .byte $F4, $6B, $EF   ; 
- D 0 - I - 0x001EB1 00:9EA1: FC        .byte $FC, $6D, $EF   ; 
- D 0 - I - 0x001EB4 00:9EA4: F9        .byte $F9, $6F, $DF   ; 



off_00_9EBD_4A:
- D 0 - I - 0x001ECD 00:9EBD: FF        .byte $FF   ; 
off_00_9EA7_48:
- D 0 - I - 0x001EB7 00:9EA7: 83        .byte $83   ; counter
- D 0 - I - 0x001EB8 00:9EA8: 01        .byte $01   ; spr_A
- D 0 - I - 0x001EB9 00:9EA9: F4        .byte $F4, $6B, $F0   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001EBC 00:9EAC: FC        .byte $FC, $6D, $F0   ; 
- D 0 - I - 0x001EBF 00:9EAF: F9        .byte $F9, $6F, $E0   ; 

- D 0 - I - 0x001EC2 00:9EB2: 02        .byte $02   ; 
- D 0 - I - 0x001EC3 00:9EB3: 41        .byte $41   ; 
- D 0 - I - 0x001EC4 00:9EB4: FD        .byte $FD, $CD, $FF   ; 
- D 0 - I - 0x001EC7 00:9EB7: F5        .byte $F5, $CF, $FF   ; 



off_00_9EE2_4D:
- D 0 - I - 0x001EF2 00:9EE2: FF        .byte $FF   ; 
off_00_9EC0_4B:
- D 0 - I - 0x001ED0 00:9EC0: 05        .byte $05   ; counter
- D 0 - I - 0x001ED1 00:9EC1: 01        .byte $01   ; spr_A
- D 0 - I - 0x001ED2 00:9EC2: F6        .byte $F6, $59, $EF   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001ED5 00:9EC5: FE        .byte $FE, $5B, $EF   ; 
- D 0 - I - 0x001ED8 00:9EC8: 06        .byte $06, $5D, $EF   ; 
- D 0 - I - 0x001EDB 00:9ECB: F5        .byte $F5, $11, $FF   ; 
- D 0 - I - 0x001EDE 00:9ECE: FD        .byte $FD, $13, $FF   ; 



off_00_9EE5_4E:
- D 0 - I - 0x001EF5 00:9EE5: FF        .byte $FF   ; 
off_00_9ED1_4C:
- D 0 - I - 0x001EE1 00:9ED1: 05        .byte $05   ; counter
- D 0 - I - 0x001EE2 00:9ED2: 01        .byte $01   ; spr_A
- D 0 - I - 0x001EE3 00:9ED3: F5        .byte $F5, $5F, $EF   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001EE6 00:9ED6: FD        .byte $FD, $61, $EF   ; 
- D 0 - I - 0x001EE9 00:9ED9: 05        .byte $05, $63, $EF   ; 
- D 0 - I - 0x001EEC 00:9EDC: F5        .byte $F5, $11, $FF   ; 
- D 0 - I - 0x001EEF 00:9EDF: FD        .byte $FD, $13, $FF   ; 



off_00_9F0A_51:
- D 0 - I - 0x001F1A 00:9F0A: FF        .byte $FF   ; 
off_00_9EE8_4F:
- D 0 - I - 0x001EF8 00:9EE8: 05        .byte $05   ; counter
- D 0 - I - 0x001EF9 00:9EE9: 01        .byte $01   ; spr_A
- D 0 - I - 0x001EFA 00:9EEA: F6        .byte $F6, $59, $F4   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001EFD 00:9EED: FE        .byte $FE, $5B, $F4   ; 
- D 0 - I - 0x001F00 00:9EF0: 06        .byte $06, $5D, $F4   ; 
- D 0 - I - 0x001F03 00:9EF3: F5        .byte $F5, $27, $04   ; 
- D 0 - I - 0x001F06 00:9EF6: FD        .byte $FD, $29, $04   ; 



off_00_9F0D_52:
- D 0 - I - 0x001F1D 00:9F0D: FF        .byte $FF   ; 
off_00_9EF9_50:
- D 0 - I - 0x001F09 00:9EF9: 05        .byte $05   ; counter
- D 0 - I - 0x001F0A 00:9EFA: 01        .byte $01   ; spr_A
- D 0 - I - 0x001F0B 00:9EFB: F5        .byte $F5, $5F, $F4   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001F0E 00:9EFE: FD        .byte $FD, $61, $F4   ; 
- D 0 - I - 0x001F11 00:9F01: 05        .byte $05, $63, $F4   ; 
- D 0 - I - 0x001F14 00:9F04: F5        .byte $F5, $27, $04   ; 
- D 0 - I - 0x001F17 00:9F07: FD        .byte $FD, $29, $04   ; 



off_00_9F23_56:
- D 0 - I - 0x001F33 00:9F23: FF        .byte $FF   ; 
off_00_9F10_53:
- D 0 - I - 0x001F20 00:9F10: 02        .byte $02   ; counter
- D 0 - I - 0x001F21 00:9F11: 01        .byte $01   ; spr_A
- D 0 - I - 0x001F22 00:9F12: 00        .byte $00, $15, $F8   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001F25 00:9F15: F8        .byte $F8, $71, $F8   ; 



off_00_9F20_55:
- D 0 - I - 0x001F30 00:9F20: FF        .byte $FF   ; 
off_00_9F18_54:
- D 0 - I - 0x001F28 00:9F18: 02        .byte $02   ; counter
- D 0 - I - 0x001F29 00:9F19: 81        .byte $81   ; spr_A
- D 0 - I - 0x001F2A 00:9F1A: 00        .byte $00, $15, $F8   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001F2D 00:9F1D: F8        .byte $F8, $71, $F8   ; 



off_00_9F45_59:
- D 0 - I - 0x001F55 00:9F45: FF        .byte $FF   ; 
off_00_9F26_57:
- D 0 - I - 0x001F36 00:9F26: 03        .byte $03   ; counter
- D 0 - I - 0x001F37 00:9F27: 01        .byte $01   ; spr_A
- D 0 - I - 0x001F38 00:9F28: FB        .byte $FB, $17, $F7   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001F3B 00:9F2B: 03        .byte $03, $19, $F7   ; 
- D 0 - I - 0x001F3E 00:9F2E: F3        .byte $F3, $77, $F7   ; 



off_00_9F48_5A:
- D 0 - I - 0x001F58 00:9F48: FF        .byte $FF   ; 
off_00_9F31_58:
- D 0 - I - 0x001F41 00:9F31: 06        .byte $06   ; counter
- D 0 - I - 0x001F42 00:9F32: 01        .byte $01   ; spr_A
- D 0 - I - 0x001F43 00:9F33: F0        .byte $F0, $1B, $04   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001F46 00:9F36: F8        .byte $F8, $1D, $04   ; 
- D 0 - I - 0x001F49 00:9F39: 00        .byte $00, $1F, $04   ; 
- D 0 - I - 0x001F4C 00:9F3C: 08        .byte $08, $21, $04   ; 
- D 0 - I - 0x001F4F 00:9F3F: F4        .byte $F4, $73, $F4   ; 
- D 0 - I - 0x001F52 00:9F42: FC        .byte $FC, $75, $F4   ; 



off_00_9F59_5C:
- D 0 - I - 0x001F69 00:9F59: FF        .byte $FF   ; 
off_00_9F4B_5B:
- D 0 - I - 0x001F5B 00:9F4B: 04        .byte $04   ; counter
- D 0 - I - 0x001F5C 00:9F4C: 01        .byte $01   ; spr_A
- D 0 - I - 0x001F5D 00:9F4D: F9        .byte $F9, $7B, $F1   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001F60 00:9F50: 01        .byte $01, $7D, $F1   ; 
- D 0 - I - 0x001F63 00:9F53: F9        .byte $F9, $23, $01   ; 
- D 0 - I - 0x001F66 00:9F56: 01        .byte $01, $25, $01   ; 



off_00_9FA8_65:
- D 0 - I - 0x001FB8 00:9FA8: FF        .byte $FF   ; 
off_00_9F5C_5D:
off_00_9F5C_5E:
off_00_9F5C_5F:
off_00_9F5C_60:
off_00_9F5C_61:
- D 0 - I - 0x001F6C 00:9F5C: 82        .byte $82   ; counter
- D 0 - I - 0x001F6D 00:9F5D: 01        .byte $01   ; spr_A
- D 0 - I - 0x001F6E 00:9F5E: F5        .byte $F5, $01, $FF   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001F71 00:9F61: FD        .byte $FD, $03, $FF   ; 

- D 0 - I - 0x001F74 00:9F64: 03        .byte $03   ; 
- D 0 - I - 0x001F75 00:9F65: 00        .byte $00   ; 
- D 0 - I - 0x001F76 00:9F66: F5        .byte $F5, $5D, $EF   ; 
- D 0 - I - 0x001F79 00:9F69: FD        .byte $FD, $5F, $EF   ; 
- D 0 - I - 0x001F7C 00:9F6C: 05        .byte $05, $61, $EF   ; 



off_00_9FAB_66:
- D 0 - I - 0x001FBB 00:9FAB: FF        .byte $FF   ; 
off_00_9F6F_62:
- D 0 - I - 0x001F7F 00:9F6F: 82        .byte $82   ; counter
- D 0 - I - 0x001F80 00:9F70: 01        .byte $01   ; spr_A
- D 0 - I - 0x001F81 00:9F71: F5        .byte $F5, $05, $FF   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001F84 00:9F74: FD        .byte $FD, $07, $FF   ; 

- D 0 - I - 0x001F87 00:9F77: 03        .byte $03   ; 
- D 0 - I - 0x001F88 00:9F78: 00        .byte $00   ; 
- D 0 - I - 0x001F89 00:9F79: F5        .byte $F5, $63, $EF   ; 
- D 0 - I - 0x001F8C 00:9F7C: FD        .byte $FD, $65, $EF   ; 
- D 0 - I - 0x001F8F 00:9F7F: 05        .byte $05, $67, $EF   ; 



off_00_9FAE_67:
- D 0 - I - 0x001FBE 00:9FAE: FF        .byte $FF   ; 
off_00_9F82_63:
- D 0 - I - 0x001F92 00:9F82: 82        .byte $82   ; counter
- D 0 - I - 0x001F93 00:9F83: 01        .byte $01   ; spr_A
- D 0 - I - 0x001F94 00:9F84: F7        .byte $F7, $09, $FF   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001F97 00:9F87: FF        .byte $FF, $0B, $FF   ; 

- D 0 - I - 0x001F9A 00:9F8A: 03        .byte $03   ; 
- D 0 - I - 0x001F9B 00:9F8B: 00        .byte $00   ; 
- D 0 - I - 0x001F9C 00:9F8C: F8        .byte $F8, $5D, $EF   ; 
- D 0 - I - 0x001F9F 00:9F8F: 00        .byte $00, $5F, $EF   ; 
- D 0 - I - 0x001FA2 00:9F92: 08        .byte $08, $61, $EF   ; 



off_00_9FB1_68:
- D 0 - I - 0x001FC1 00:9FB1: FF        .byte $FF   ; 
off_00_9F95_64:
- D 0 - I - 0x001FA5 00:9F95: 82        .byte $82   ; counter
- D 0 - I - 0x001FA6 00:9F96: 01        .byte $01   ; spr_A
- D 0 - I - 0x001FA7 00:9F97: F6        .byte $F6, $0D, $FF   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001FAA 00:9F9A: FE        .byte $FE, $0F, $FF   ; 

- D 0 - I - 0x001FAD 00:9F9D: 03        .byte $03   ; 
- D 0 - I - 0x001FAE 00:9F9E: 00        .byte $00   ; 
- D 0 - I - 0x001FAF 00:9F9F: F5        .byte $F5, $63, $EF   ; 
- D 0 - I - 0x001FB2 00:9FA2: FD        .byte $FD, $65, $EF   ; 
- D 0 - I - 0x001FB5 00:9FA5: 05        .byte $05, $67, $EF   ; 



off_00_A00C_6D:
- D 1 - I - 0x00201C 00:A00C: FF        .byte $FF   ; 
off_00_9FB4_69:
- D 0 - I - 0x001FC4 00:9FB4: 82        .byte $82   ; counter
- D 0 - I - 0x001FC5 00:9FB5: 01        .byte $01   ; spr_A
- D 0 - I - 0x001FC6 00:9FB6: F5        .byte $F5, $01, $FF   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001FC9 00:9FB9: FD        .byte $FD, $03, $FF   ; 

- D 0 - I - 0x001FCC 00:9FBC: 04        .byte $04   ; 
- D 0 - I - 0x001FCD 00:9FBD: 00        .byte $00   ; 
- D 0 - I - 0x001FCE 00:9FBE: F2        .byte $F2, $6D, $EF   ; 
- D 0 - I - 0x001FD1 00:9FC1: FA        .byte $FA, $6F, $EF   ; 
- D 0 - I - 0x001FD4 00:9FC4: FA        .byte $FA, $69, $DF   ; 
- D 0 - I - 0x001FD7 00:9FC7: 02        .byte $02, $6B, $E5   ; 



off_00_A00F_6E:
- D 1 - I - 0x00201F 00:A00F: FF        .byte $FF   ; 
off_00_9FCA_6A:
- D 0 - I - 0x001FDA 00:9FCA: 84        .byte $84   ; counter
- D 0 - I - 0x001FDB 00:9FCB: 00        .byte $00   ; spr_A
- D 0 - I - 0x001FDC 00:9FCC: F3        .byte $F3, $6D, $F0   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001FDF 00:9FCF: FB        .byte $FB, $6F, $F0   ; 
- D 0 - I - 0x001FE2 00:9FD2: FB        .byte $FB, $69, $E0   ; 
- D 0 - I - 0x001FE5 00:9FD5: 03        .byte $03, $6B, $E6   ; 

- D 0 - I - 0x001FE8 00:9FD8: 02        .byte $02   ; 
- D 0 - I - 0x001FE9 00:9FD9: 01        .byte $01   ; 
- D 0 - I - 0x001FEA 00:9FDA: F5        .byte $F5, $05, $FF   ; 
- D 0 - I - 0x001FED 00:9FDD: FD        .byte $FD, $07, $FF   ; 



off_00_A012_6F:
- D 1 - I - 0x002022 00:A012: FF        .byte $FF   ; 
off_00_9FE0_6B:
- D 0 - I - 0x001FF0 00:9FE0: 84        .byte $84   ; counter
- D 0 - I - 0x001FF1 00:9FE1: 00        .byte $00   ; spr_A
- D 0 - I - 0x001FF2 00:9FE2: F5        .byte $F5, $6D, $EF   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x001FF5 00:9FE5: FD        .byte $FD, $6F, $EF   ; 
- D 0 - I - 0x001FF8 00:9FE8: FD        .byte $FD, $69, $DF   ; 
- D 0 - I - 0x001FFB 00:9FEB: 05        .byte $05, $6B, $E5   ; 

- D 0 - I - 0x001FFE 00:9FEE: 02        .byte $02   ; 
- D 0 - I - 0x001FFF 00:9FEF: 01        .byte $01   ; 
- D 0 - I - 0x002000 00:9FF0: F7        .byte $F7, $09, $FF   ; 
- D 0 - I - 0x002003 00:9FF3: FF        .byte $FF, $0B, $FF   ; 



off_00_A015_70:
- D 1 - I - 0x002025 00:A015: FF        .byte $FF   ; 
off_00_9FF6_6C:
- D 0 - I - 0x002006 00:9FF6: 84        .byte $84   ; counter
- D 0 - I - 0x002007 00:9FF7: 00        .byte $00   ; spr_A
- D 0 - I - 0x002008 00:9FF8: F3        .byte $F3, $6D, $F0   ; spr_X, spr_T, spr_Y
- D 0 - I - 0x00200B 00:9FFB: FB        .byte $FB, $6F, $F0   ; 
- D 0 - I - 0x00200E 00:9FFE: FB        .byte $FB, $69, $E0   ; 
- D 1 - I - 0x002011 00:A001: 03        .byte $03, $6B, $E6   ; 

- D 1 - I - 0x002014 00:A004: 02        .byte $02   ; 
- D 1 - I - 0x002015 00:A005: 01        .byte $01   ; 
- D 1 - I - 0x002016 00:A006: F6        .byte $F6, $0D, $FF   ; 
- D 1 - I - 0x002019 00:A009: FE        .byte $FE, $0F, $FF   ; 



off_00_A03E_73:
- D 1 - I - 0x00204E 00:A03E: FF        .byte $FF   ; 
off_00_A018_71:
- D 1 - I - 0x002028 00:A018: 82        .byte $82   ; counter
- D 1 - I - 0x002029 00:A019: 41        .byte $41   ; spr_A
- D 1 - I - 0x00202A 00:A01A: FC        .byte $FC, $CD, $FF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x00202D 00:A01D: F4        .byte $F4, $CF, $FF   ; 

- D 1 - I - 0x002030 00:A020: 03        .byte $03   ; counter
- D 1 - I - 0x002031 00:A021: 00        .byte $00   ; spr_A
- D 1 - I - 0x002032 00:A022: F8        .byte $F8, $71, $DF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002035 00:A025: F8        .byte $F8, $73, $EF   ; 
- D 1 - I - 0x002038 00:A028: F0        .byte $F0, $6D, $EF   ; 



off_00_A041_74:
- D 1 - I - 0x002051 00:A041: FF        .byte $FF   ; 
off_00_A02B_72:
- D 1 - I - 0x00203B 00:A02B: 82        .byte $82   ; counter
- D 1 - I - 0x00203C 00:A02C: 41        .byte $41   ; spr_A
- D 1 - I - 0x00203D 00:A02D: FC        .byte $FC, $CD, $FF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002040 00:A030: F4        .byte $F4, $CF, $FF   ; 

- D 1 - I - 0x002043 00:A033: 03        .byte $03   ; counter
- D 1 - I - 0x002044 00:A034: 00        .byte $00   ; spr_A
- D 1 - I - 0x002045 00:A035: F8        .byte $F8, $73, $F0   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002048 00:A038: F0        .byte $F0, $6D, $EE   ; 
- D 1 - I - 0x00204B 00:A03B: F8        .byte $F8, $71, $E0   ; 



off_00_A06A_77:
- D 1 - I - 0x00207A 00:A06A: FF        .byte $FF   ; 
off_00_A044_75:
- D 1 - I - 0x002054 00:A044: 82        .byte $82   ; counter
- D 1 - I - 0x002055 00:A045: 01        .byte $01   ; spr_A
- D 1 - I - 0x002056 00:A046: F5        .byte $F5, $11, $FF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002059 00:A049: FD        .byte $FD, $13, $FF   ; 

- D 1 - I - 0x00205C 00:A04C: 03        .byte $03   ; 
- D 1 - I - 0x00205D 00:A04D: 00        .byte $00   ; 
- D 1 - I - 0x00205E 00:A04E: F4        .byte $F4, $5D, $EF   ; 
- D 1 - I - 0x002061 00:A051: FC        .byte $FC, $5F, $EF   ; 
- D 1 - I - 0x002064 00:A054: 04        .byte $04, $61, $EF   ; 



off_00_A06D_78:
- D 1 - I - 0x00207D 00:A06D: FF        .byte $FF   ; 
off_00_A057_76:
- D 1 - I - 0x002067 00:A057: 82        .byte $82   ; counter
- D 1 - I - 0x002068 00:A058: 01        .byte $01   ; spr_A
- D 1 - I - 0x002069 00:A059: F5        .byte $F5, $11, $FF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x00206C 00:A05C: FD        .byte $FD, $13, $FF   ; 

- D 1 - I - 0x00206F 00:A05F: 03        .byte $03   ; 
- D 1 - I - 0x002070 00:A060: 00        .byte $00   ; 
- D 1 - I - 0x002071 00:A061: F2        .byte $F2, $63, $EF   ; 
- D 1 - I - 0x002074 00:A064: FA        .byte $FA, $65, $EF   ; 
- D 1 - I - 0x002077 00:A067: 02        .byte $02, $67, $EF   ; 



off_00_A096_7B:
- D 1 - I - 0x0020A6 00:A096: FF        .byte $FF   ; 
off_00_A070_79:
- D 1 - I - 0x002080 00:A070: 83        .byte $83   ; counter
- D 1 - I - 0x002081 00:A071: 40        .byte $40   ; spr_A
- D 1 - I - 0x002082 00:A072: FD        .byte $FD, $5D, $F3   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002085 00:A075: F5        .byte $F5, $5F, $F3   ; 
- D 1 - I - 0x002088 00:A078: ED        .byte $ED, $61, $F3   ; 

- D 1 - I - 0x00208B 00:A07B: 02        .byte $02   ; 
- D 1 - I - 0x00208C 00:A07C: 41        .byte $41   ; 
- D 1 - I - 0x00208D 00:A07D: FC        .byte $FC, $27, $03   ; 
- D 1 - I - 0x002090 00:A080: F4        .byte $F4, $29, $03   ; 



off_00_A099_7C:
- D 1 - I - 0x0020A9 00:A099: FF        .byte $FF   ; 
off_00_A083_7A:
- D 1 - I - 0x002093 00:A083: 83        .byte $83   ; counter
- D 1 - I - 0x002094 00:A084: 40        .byte $40   ; spr_A
- D 1 - I - 0x002095 00:A085: FF        .byte $FF, $63, $F3   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002098 00:A088: F7        .byte $F7, $65, $F3   ; 
- D 1 - I - 0x00209B 00:A08B: EF        .byte $EF, $67, $F3   ; 

- D 1 - I - 0x00209E 00:A08E: 02        .byte $02   ; 
- D 1 - I - 0x00209F 00:A08F: 41        .byte $41   ; 
- D 1 - I - 0x0020A0 00:A090: FC        .byte $FC, $27, $03   ; 
- D 1 - I - 0x0020A3 00:A093: F4        .byte $F4, $29, $03   ; 



off_00_A0B3_80:
- D 1 - I - 0x0020C3 00:A0B3: FF        .byte $FF   ; 
off_00_A09C_7D:
- D 1 - I - 0x0020AC 00:A09C: 81        .byte $81   ; counter
- D 1 - I - 0x0020AD 00:A09D: 01        .byte $01   ; spr_A
- D 1 - I - 0x0020AE 00:A09E: 00        .byte $00, $15, $F9   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x0020B1 00:A0A1: 01        .byte $01   ; 
- D 1 - I - 0x0020B2 00:A0A2: 00        .byte $00   ; 
- D 1 - I - 0x0020B3 00:A0A3: F8        .byte $F8, $75, $F9   ; 



off_00_A0B0_7F:
- D 1 - I - 0x0020C0 00:A0B0: FF        .byte $FF   ; 
off_00_A0A6_7E:
- D 1 - I - 0x0020B6 00:A0A6: 81        .byte $81   ; counter
- D 1 - I - 0x0020B7 00:A0A7: 81        .byte $81   ; spr_A
- D 1 - I - 0x0020B8 00:A0A8: 00        .byte $00, $15, $F9   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x0020BB 00:A0AB: 01        .byte $01   ; 
- D 1 - I - 0x0020BC 00:A0AC: 80        .byte $80   ; 
- D 1 - I - 0x0020BD 00:A0AD: F8        .byte $F8, $75, $F9   ; 



off_00_A0C6_86:
- D 1 - I - 0x0020D6 00:A0C6: FF        .byte $FF   ; 
off_00_A0B6_81:
off_00_A0B6_82:
off_00_A0B6_83:
off_00_A0B6_84:
off_00_A0B6_85:
- D 1 - I - 0x0020C6 00:A0B6: 82        .byte $82   ; counter
- D 1 - I - 0x0020C7 00:A0B7: 01        .byte $01   ; spr_A
- D 1 - I - 0x0020C8 00:A0B8: F9        .byte $F9, $23, $01   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0020CB 00:A0BB: 01        .byte $01, $25, $01   ; 

- D 1 - I - 0x0020CE 00:A0BE: 02        .byte $02   ; 
- D 1 - I - 0x0020CF 00:A0BF: 00        .byte $00   ; 
- D 1 - I - 0x0020D0 00:A0C0: F9        .byte $F9, $7D, $F1   ; 
- D 1 - I - 0x0020D3 00:A0C3: 01        .byte $01, $7F, $F1   ; 



off_00_A0EE_89:
- - - - - - 0x0020FE 00:A0EE: FF        .byte $FF   ; 
off_00_A0C9_87:
- D 1 - I - 0x0020D9 00:A0C9: 82        .byte $82   ; counter
- D 1 - I - 0x0020DA 00:A0CA: 01        .byte $01   ; spr_A
- D 1 - I - 0x0020DB 00:A0CB: FC        .byte $FC, $17, $F9   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0020DE 00:A0CE: 04        .byte $04, $19, $F9   ; 

- D 1 - I - 0x0020E1 00:A0D1: 01        .byte $01   ; 
- D 1 - I - 0x0020E2 00:A0D2: 00        .byte $00   ; 
- D 1 - I - 0x0020E3 00:A0D3: F4        .byte $F4, $7B, $F9   ; 



off_00_A0F1_8A:
- - - - - - 0x002101 00:A0F1: FF        .byte $FF   ; 
off_00_A0D6_88:
- D 1 - I - 0x0020E6 00:A0D6: 81        .byte $81   ; counter
- D 1 - I - 0x0020E7 00:A0D7: 00        .byte $00   ; spr_A
- D 1 - I - 0x0020E8 00:A0D8: F4        .byte $F4, $1B, $04   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x0020EB 00:A0DB: 83        .byte $83   ; 
- D 1 - I - 0x0020EC 00:A0DC: 01        .byte $01   ; 
- D 1 - I - 0x0020ED 00:A0DD: FC        .byte $FC, $1D, $04   ; 
- D 1 - I - 0x0020F0 00:A0E0: 04        .byte $04, $1F, $04   ; 
- D 1 - I - 0x0020F3 00:A0E3: 0C        .byte $0C, $21, $04   ; 

- D 1 - I - 0x0020F6 00:A0E6: 02        .byte $02   ; 
- D 1 - I - 0x0020F7 00:A0E7: 00        .byte $00   ; 
- D 1 - I - 0x0020F8 00:A0E8: F8        .byte $F8, $77, $F4   ; 
- D 1 - I - 0x0020FB 00:A0EB: 00        .byte $00, $79, $F4   ; 



off_00_A138_8F:
- D 1 - I - 0x002148 00:A138: FF        .byte $FF   ; 
off_00_A0F4_8B:
- D 1 - I - 0x002104 00:A0F4: 05        .byte $05   ; counter
- D 1 - I - 0x002105 00:A0F5: 00        .byte $00   ; spr_A
- D 1 - I - 0x002106 00:A0F6: F5        .byte $F5, $59, $EF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002109 00:A0F9: FD        .byte $FD, $5B, $EF   ; 
- D 1 - I - 0x00210C 00:A0FC: F5        .byte $F5, $01, $FF   ; 
- D 1 - I - 0x00210F 00:A0FF: FD        .byte $FD, $03, $FF   ; 
- D 1 - I - 0x002112 00:A102: 05        .byte $05, $5D, $EF   ; 



off_00_A13B_90:
- D 1 - I - 0x00214B 00:A13B: FF        .byte $FF   ; 
off_00_A105_8C:
- D 1 - I - 0x002115 00:A105: 05        .byte $05   ; counter
- D 1 - I - 0x002116 00:A106: 00        .byte $00   ; spr_A
- D 1 - I - 0x002117 00:A107: F5        .byte $F5, $05, $FF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x00211A 00:A10A: F6        .byte $F6, $59, $F0   ; 
- D 1 - I - 0x00211D 00:A10D: FE        .byte $FE, $5B, $F0   ; 
- D 1 - I - 0x002120 00:A110: 06        .byte $06, $5D, $F0   ; 
- D 1 - I - 0x002123 00:A113: FD        .byte $FD, $07, $FF   ; 



off_00_A13E_91:
- D 1 - I - 0x00214E 00:A13E: FF        .byte $FF   ; 
off_00_A116_8D:
- D 1 - I - 0x002126 00:A116: 05        .byte $05   ; counter
- D 1 - I - 0x002127 00:A117: 00        .byte $00   ; spr_A
- D 1 - I - 0x002128 00:A118: F7        .byte $F7, $09, $FF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x00212B 00:A11B: FF        .byte $FF, $0B, $FF   ; 
- D 1 - I - 0x00212E 00:A11E: F8        .byte $F8, $59, $EF   ; 
- D 1 - I - 0x002131 00:A121: 00        .byte $00, $5B, $EF   ; 
- D 1 - I - 0x002134 00:A124: 08        .byte $08, $5D, $EF   ; 



off_00_A141_92:
- D 1 - I - 0x002151 00:A141: FF        .byte $FF   ; 
off_00_A127_8E:
- D 1 - I - 0x002137 00:A127: 05        .byte $05   ; counter
- D 1 - I - 0x002138 00:A128: 00        .byte $00   ; spr_A
- D 1 - I - 0x002139 00:A129: F6        .byte $F6, $0D, $FF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x00213C 00:A12C: F6        .byte $F6, $59, $F0   ; 
- D 1 - I - 0x00213F 00:A12F: FE        .byte $FE, $5B, $F0   ; 
- D 1 - I - 0x002142 00:A132: 06        .byte $06, $5D, $F0   ; 
- D 1 - I - 0x002145 00:A135: FE        .byte $FE, $0F, $FF   ; 



off_00_A188_97:
- D 1 - I - 0x002198 00:A188: FF        .byte $FF   ; 
off_00_A144_93:
- D 1 - I - 0x002154 00:A144: 05        .byte $05   ; counter
- D 1 - I - 0x002155 00:A145: 00        .byte $00   ; spr_A
- D 1 - I - 0x002156 00:A146: F5        .byte $F5, $59, $EF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002159 00:A149: FD        .byte $FD, $5B, $EF   ; 
- D 1 - I - 0x00215C 00:A14C: F5        .byte $F5, $01, $FF   ; 
- D 1 - I - 0x00215F 00:A14F: FD        .byte $FD, $03, $FF   ; 
- D 1 - I - 0x002162 00:A152: 05        .byte $05, $61, $ED   ; 



off_00_A18B_98:
- D 1 - I - 0x00219B 00:A18B: FF        .byte $FF   ; 
off_00_A155_94:
- D 1 - I - 0x002165 00:A155: 05        .byte $05   ; counter
- D 1 - I - 0x002166 00:A156: 00        .byte $00   ; spr_A
- D 1 - I - 0x002167 00:A157: F5        .byte $F5, $05, $FF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x00216A 00:A15A: F6        .byte $F6, $59, $F0   ; 
- D 1 - I - 0x00216D 00:A15D: FE        .byte $FE, $5B, $F0   ; 
- D 1 - I - 0x002170 00:A160: FD        .byte $FD, $07, $FF   ; 
- D 1 - I - 0x002173 00:A163: 06        .byte $06, $61, $EE   ; 



off_00_A18E_99:
- - - - - - 0x00219E 00:A18E: FF        .byte $FF   ; 
off_00_A166_95:
- - - - - - 0x002176 00:A166: 05        .byte $05   ; counter
- - - - - - 0x002177 00:A167: 00        .byte $00   ; spr_A
- - - - - - 0x002178 00:A168: F7        .byte $F7, $09, $FF   ; spr_X, spr_T, spr_Y
- - - - - - 0x00217B 00:A16B: FF        .byte $FF, $0B, $FF   ; 
- - - - - - 0x00217E 00:A16E: F8        .byte $F8, $59, $EF   ; 
- - - - - - 0x002181 00:A171: 00        .byte $00, $5B, $EF   ; 
- - - - - - 0x002184 00:A174: 08        .byte $08, $61, $ED   ; 



off_00_A191_9A:
- - - - - - 0x0021A1 00:A191: FF        .byte $FF   ; 
off_00_A177_96:
- - - - - - 0x002187 00:A177: 05        .byte $05   ; counter
- - - - - - 0x002188 00:A178: 00        .byte $00   ; spr_A
- - - - - - 0x002189 00:A179: F6        .byte $F6, $0D, $FF   ; spr_X, spr_T, spr_Y
- - - - - - 0x00218C 00:A17C: F6        .byte $F6, $59, $F0   ; 
- - - - - - 0x00218F 00:A17F: FE        .byte $FE, $5B, $F0   ; 
- - - - - - 0x002192 00:A182: FE        .byte $FE, $0F, $FF   ; 
- - - - - - 0x002195 00:A185: 06        .byte $06, $61, $EE   ; 



off_00_A1BE_9D:
- D 1 - I - 0x0021CE 00:A1BE: FF        .byte $FF   ; 
off_00_A194_9B:
- D 1 - I - 0x0021A4 00:A194: 82        .byte $82   ; counter
- D 1 - I - 0x0021A5 00:A195: 00        .byte $00   ; spr_A
- D 1 - I - 0x0021A6 00:A196: F4        .byte $F4, $63, $EF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0021A9 00:A199: FC        .byte $FC, $67, $EF   ; 

- D 1 - I - 0x0021AC 00:A19C: 81        .byte $81   ; 
- D 1 - I - 0x0021AD 00:A19D: 01        .byte $01   ; 
- D 1 - I - 0x0021AE 00:A19E: FC        .byte $FC, $65, $DF   ; 

- D 1 - I - 0x0021B1 00:A1A1: 02        .byte $02   ; 
- D 1 - I - 0x0021B2 00:A1A2: 40        .byte $40   ; 
- D 1 - I - 0x0021B3 00:A1A3: FC        .byte $FC, $CD, $FF   ; 
- D 1 - I - 0x0021B6 00:A1A6: F4        .byte $F4, $CF, $FF   ; 



off_00_A1C1_9E:
- D 1 - I - 0x0021D1 00:A1C1: FF        .byte $FF   ; 
off_00_A1A9_9C:
- D 1 - I - 0x0021B9 00:A1A9: 82        .byte $82   ; counter
- D 1 - I - 0x0021BA 00:A1AA: 40        .byte $40   ; spr_A
- D 1 - I - 0x0021BB 00:A1AB: FC        .byte $FC, $CD, $FF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0021BE 00:A1AE: F4        .byte $F4, $CF, $FF   ; 

- D 1 - I - 0x0021C1 00:A1B1: 82        .byte $82   ; 
- D 1 - I - 0x0021C2 00:A1B2: 00        .byte $00   ; 
- D 1 - I - 0x0021C3 00:A1B3: F3        .byte $F3, $63, $EF   ; 
- D 1 - I - 0x0021C6 00:A1B6: FB        .byte $FB, $67, $F0   ; 

- D 1 - I - 0x0021C9 00:A1B9: 01        .byte $01   ; 
- D 1 - I - 0x0021CA 00:A1BA: 01        .byte $01   ; 
- D 1 - I - 0x0021CB 00:A1BB: FB        .byte $FB, $65, $E0   ; 



off_00_A1E6_A1:
- D 1 - I - 0x0021F6 00:A1E6: FF        .byte $FF   ; 
off_00_A1C4_9F:
- D 1 - I - 0x0021D4 00:A1C4: 05        .byte $05   ; counter
- D 1 - I - 0x0021D5 00:A1C5: 00        .byte $00   ; spr_A
- D 1 - I - 0x0021D6 00:A1C6: F4        .byte $F4, $27, $03   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0021D9 00:A1C9: FC        .byte $FC, $29, $03   ; 
- D 1 - I - 0x0021DC 00:A1CC: F4        .byte $F4, $59, $F3   ; 
- D 1 - I - 0x0021DF 00:A1CF: FC        .byte $FC, $5B, $F3   ; 
- D 1 - I - 0x0021E2 00:A1D2: 04        .byte $04, $5D, $F3   ; 



off_00_A1E9_A2:
- D 1 - I - 0x0021F9 00:A1E9: FF        .byte $FF   ; 
off_00_A1D5_A0:
- D 1 - I - 0x0021E5 00:A1D5: 05        .byte $05   ; counter
- D 1 - I - 0x0021E6 00:A1D6: 00        .byte $00   ; spr_A
- D 1 - I - 0x0021E7 00:A1D7: F4        .byte $F4, $27, $03   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0021EA 00:A1DA: FC        .byte $FC, $29, $03   ; 
- D 1 - I - 0x0021ED 00:A1DD: F3        .byte $F3, $59, $F3   ; 
- D 1 - I - 0x0021F0 00:A1E0: FB        .byte $FB, $5B, $F3   ; 
- D 1 - I - 0x0021F3 00:A1E3: 03        .byte $03, $61, $F2   ; 



off_00_A208_A5:
- - - - - - 0x002218 00:A208: FF        .byte $FF   ; 
off_00_A1EC_A3:
- D 1 - I - 0x0021FC 00:A1EC: 04        .byte $04   ; counter
- D 1 - I - 0x0021FD 00:A1ED: 00        .byte $00   ; spr_A
- D 1 - I - 0x0021FE 00:A1EE: F4        .byte $F4, $79, $F9   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002201 00:A1F1: FC        .byte $FC, $7B, $F9   ; 
- D 1 - I - 0x002204 00:A1F4: 04        .byte $04, $7D, $F9   ; 
- D 1 - I - 0x002207 00:A1F7: 0C        .byte $0C, $7F, $F9   ; 



off_00_A20B_A6:
- D 1 - I - 0x00221B 00:A20B: FF        .byte $FF   ; 
off_00_A1FA_A4:
- D 1 - I - 0x00220A 00:A1FA: 04        .byte $04   ; counter
- D 1 - I - 0x00220B 00:A1FB: 00        .byte $00   ; spr_A
- D 1 - I - 0x00220C 00:A1FC: F4        .byte $F4, $79, $F9   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x00220F 00:A1FF: FC        .byte $FC, $7B, $F9   ; 
- D 1 - I - 0x002212 00:A202: 03        .byte $03, $7D, $F9   ; 
- D 1 - I - 0x002215 00:A205: 0B        .byte $0B, $7F, $F9   ; 



off_00_A246_AB:
- D 1 - I - 0x002256 00:A246: FF        .byte $FF   ; 
off_00_A20E_A7:
- D 1 - I - 0x00221E 00:A20E: 04        .byte $04   ; counter
- D 1 - I - 0x00221F 00:A20F: 00        .byte $00   ; spr_A
- D 1 - I - 0x002220 00:A210: F5        .byte $F5, $01, $FF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002223 00:A213: FD        .byte $FD, $03, $FF   ; 
- D 1 - I - 0x002226 00:A216: FF        .byte $FF, $6B, $F0   ; 
- D 1 - I - 0x002229 00:A219: F7        .byte $F7, $69, $F0   ; 



off_00_A249_AC:
- D 1 - I - 0x002259 00:A249: FF        .byte $FF   ; 
off_00_A21C_A8:
- D 1 - I - 0x00222C 00:A21C: 04        .byte $04   ; counter
- D 1 - I - 0x00222D 00:A21D: 00        .byte $00   ; spr_A
- D 1 - I - 0x00222E 00:A21E: F5        .byte $F5, $05, $FF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002231 00:A221: FD        .byte $FD, $07, $FF   ; 
- D 1 - I - 0x002234 00:A224: 00        .byte $00, $6B, $F1   ; 
- D 1 - I - 0x002237 00:A227: F8        .byte $F8, $69, $F1   ; 



off_00_A24C_AD:
- D 1 - I - 0x00225C 00:A24C: FF        .byte $FF   ; 
off_00_A22A_A9:
- D 1 - I - 0x00223A 00:A22A: 04        .byte $04   ; counter
- D 1 - I - 0x00223B 00:A22B: 00        .byte $00   ; spr_A
- D 1 - I - 0x00223C 00:A22C: F7        .byte $F7, $09, $FF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x00223F 00:A22F: FF        .byte $FF, $0B, $FF   ; 
- D 1 - I - 0x002242 00:A232: 02        .byte $02, $6B, $F0   ; 
- D 1 - I - 0x002245 00:A235: FA        .byte $FA, $71, $F0   ; 



off_00_A24F_AE:
- D 1 - I - 0x00225F 00:A24F: FF        .byte $FF   ; 
off_00_A238_AA:
- D 1 - I - 0x002248 00:A238: 04        .byte $04   ; counter
- D 1 - I - 0x002249 00:A239: 00        .byte $00   ; spr_A
- D 1 - I - 0x00224A 00:A23A: F6        .byte $F6, $0D, $FF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x00224D 00:A23D: FE        .byte $FE, $0F, $FF   ; 
- D 1 - I - 0x002250 00:A240: 00        .byte $00, $6B, $F1   ; 
- D 1 - I - 0x002253 00:A243: F8        .byte $F8, $71, $F1   ; 



off_00_A26E_B1:
- D 1 - I - 0x00227E 00:A26E: FF        .byte $FF   ; 
off_00_A252_AF:
- D 1 - I - 0x002262 00:A252: 04        .byte $04   ; counter
- D 1 - I - 0x002263 00:A253: 00        .byte $00   ; spr_A
- D 1 - I - 0x002264 00:A254: F6        .byte $F6, $69, $F5   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002267 00:A257: FE        .byte $FE, $6B, $F5   ; 
- D 1 - I - 0x00226A 00:A25A: F6        .byte $F6, $6D, $05   ; 
- D 1 - I - 0x00226D 00:A25D: FE        .byte $FE, $6F, $05   ; 



off_00_A271_B2:
- D 1 - I - 0x002281 00:A271: FF        .byte $FF   ; 
off_00_A260_B0:
- D 1 - I - 0x002270 00:A260: 04        .byte $04   ; counter
- D 1 - I - 0x002271 00:A261: 00        .byte $00   ; spr_A
- D 1 - I - 0x002272 00:A262: F6        .byte $F6, $71, $F5   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002275 00:A265: FE        .byte $FE, $6B, $F5   ; 
- D 1 - I - 0x002278 00:A268: F6        .byte $F6, $6D, $05   ; 
- D 1 - I - 0x00227B 00:A26B: FE        .byte $FE, $6F, $05   ; 



off_00_A287_B6:
- D 1 - I - 0x002297 00:A287: FF        .byte $FF   ; 
off_00_A274_B3:
- D 1 - I - 0x002284 00:A274: 02        .byte $02   ; counter
- D 1 - I - 0x002285 00:A275: 00        .byte $00   ; spr_A
- D 1 - I - 0x002286 00:A276: F9        .byte $F9, $73, $F9   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002289 00:A279: 01        .byte $01, $15, $F9   ; 



off_00_A284_B5:
- D 1 - I - 0x002294 00:A284: FF        .byte $FF   ; 
off_00_A27C_B4:
- D 1 - I - 0x00228C 00:A27C: 02        .byte $02   ; counter
- D 1 - I - 0x00228D 00:A27D: 80        .byte $80   ; spr_A
- D 1 - I - 0x00228E 00:A27E: F9        .byte $F9, $73, $F9   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002291 00:A281: 01        .byte $01, $15, $F9   ; 



off_00_A298_BC:
- - - - - - 0x0022A8 00:A298: FF        .byte $FF   ; 
off_00_A28A_B7:
off_00_A28A_B8:
off_00_A28A_B9:
off_00_A28A_BA:
off_00_A28A_BB:
- - - - - - 0x00229A 00:A28A: 04        .byte $04   ; counter
- - - - - - 0x00229B 00:A28B: 00        .byte $00   ; spr_A
- - - - - - 0x00229C 00:A28C: F9        .byte $F9, $5F, $F1   ; spr_X, spr_T, spr_Y
- - - - - - 0x00229F 00:A28F: 01        .byte $01, $CB, $F1   ; 
- - - - - - 0x0022A2 00:A292: F9        .byte $F9, $23, $01   ; 
- - - - - - 0x0022A5 00:A295: 01        .byte $01, $25, $01   ; 



off_00_A2BA_BF:
- - - - - - 0x0022CA 00:A2BA: FF        .byte $FF   ; 
off_00_A29B_BD:
- D 1 - I - 0x0022AB 00:A29B: 03        .byte $03   ; counter
- D 1 - I - 0x0022AC 00:A29C: 00        .byte $00   ; spr_A
- D 1 - I - 0x0022AD 00:A29D: FC        .byte $FC, $17, $F9   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0022B0 00:A2A0: 04        .byte $04, $19, $F9   ; 
- D 1 - I - 0x0022B3 00:A2A3: F4        .byte $F4, $63, $F9   ; 



off_00_A2BD_C0:
- - - - - - 0x0022CD 00:A2BD: FF        .byte $FF   ; 
off_00_A2A6_BE:
- D 1 - I - 0x0022B6 00:A2A6: 06        .byte $06   ; counter
- D 1 - I - 0x0022B7 00:A2A7: 00        .byte $00   ; spr_A
- D 1 - I - 0x0022B8 00:A2A8: EF        .byte $EF, $1B, $04   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0022BB 00:A2AB: F7        .byte $F7, $1D, $04   ; 
- D 1 - I - 0x0022BE 00:A2AE: FF        .byte $FF, $1F, $04   ; 
- D 1 - I - 0x0022C1 00:A2B1: 07        .byte $07, $21, $04   ; 
- D 1 - I - 0x0022C4 00:A2B4: F3        .byte $F3, $75, $F4   ; 
- D 1 - I - 0x0022C7 00:A2B7: FB        .byte $FB, $77, $F4   ; 



_off032_A2C0_04:
- - - - - - 0x0022D0 00:A2C0: EE A3     .word off_04_A3EE_00
- D 1 - I - 0x0022D2 00:A2C2: EE A3     .word off_04_A3EE_01
- D 1 - I - 0x0022D4 00:A2C4: FE A3     .word off_04_A3FE_02
- D 1 - I - 0x0022D6 00:A2C6: 0E A4     .word off_04_A40E_03
- D 1 - I - 0x0022D8 00:A2C8: 1E A4     .word off_04_A41E_04
- D 1 - I - 0x0022DA 00:A2CA: 2E A4     .word off_04_A42E_05
- D 1 - I - 0x0022DC 00:A2CC: 31 A4     .word off_04_A431_06
- D 1 - I - 0x0022DE 00:A2CE: 34 A4     .word off_04_A434_07
- D 1 - I - 0x0022E0 00:A2D0: 37 A4     .word off_04_A437_08
- D 1 - I - 0x0022E2 00:A2D2: 3A A4     .word off_04_A43A_09
- - - - - - 0x0022E4 00:A2D4: 4D A4     .word off_04_A44D_0A
- D 1 - I - 0x0022E6 00:A2D6: 60 A4     .word off_04_A460_0B
- D 1 - I - 0x0022E8 00:A2D8: 63 A4     .word off_04_A463_0C
- D 1 - I - 0x0022EA 00:A2DA: 66 A4     .word off_04_A466_0D
- D 1 - I - 0x0022EC 00:A2DC: 7B A4     .word off_04_A47B_0E
- D 1 - I - 0x0022EE 00:A2DE: 8E A4     .word off_04_A48E_0F
- D 1 - I - 0x0022F0 00:A2E0: 91 A4     .word off_04_A491_10
- D 1 - I - 0x0022F2 00:A2E2: 94 A4     .word off_04_A494_11
- D 1 - I - 0x0022F4 00:A2E4: A1 A4     .word off_04_A4A1_12
- D 1 - I - 0x0022F6 00:A2E6: B7 A4     .word off_04_A4B7_13
- D 1 - I - 0x0022F8 00:A2E8: BA A4     .word off_04_A4BA_14
- - - - - - 0x0022FA 00:A2EA: BD A4     .word off_04_A4BD_15
- - - - - - 0x0022FC 00:A2EC: CD A4     .word off_04_A4CD_16
- D 1 - I - 0x0022FE 00:A2EE: D0 A4     .word off_04_A4D0_17
- D 1 - I - 0x002300 00:A2F0: E1 A4     .word off_04_A4E1_18
- - - - - - 0x002302 00:A2F2: E4 A4     .word off_04_A4E4_19
- - - - - - 0x002304 00:A2F4: F4 A4     .word off_04_A4F4_1A
- - - - - - 0x002306 00:A2F6: 04 A5     .word off_04_A504_1B
- - - - - - 0x002308 00:A2F8: 14 A5     .word off_04_A514_1C
- - - - - - 0x00230A 00:A2FA: 24 A5     .word off_04_A524_1D
- - - - - - 0x00230C 00:A2FC: 27 A5     .word off_04_A527_1E
- - - - - - 0x00230E 00:A2FE: 2A A5     .word off_04_A52A_1F
- - - - - - 0x002310 00:A300: 2D A5     .word off_04_A52D_20
- D 1 - I - 0x002312 00:A302: 30 A5     .word off_04_A530_21
- D 1 - I - 0x002314 00:A304: 40 A5     .word off_04_A540_22
- D 1 - I - 0x002316 00:A306: 50 A5     .word off_04_A550_23
- D 1 - I - 0x002318 00:A308: 63 A5     .word off_04_A563_24
- D 1 - I - 0x00231A 00:A30A: 66 A5     .word off_04_A566_25
- D 1 - I - 0x00231C 00:A30C: 69 A5     .word off_04_A569_26
- D 1 - I - 0x00231E 00:A30E: 6C A5     .word off_04_A56C_27
- D 1 - I - 0x002320 00:A310: 81 A5     .word off_04_A581_28
- D 1 - I - 0x002322 00:A312: 84 A5     .word off_04_A584_29
- D 1 - I - 0x002324 00:A314: 97 A5     .word off_04_A597_2A
- D 1 - I - 0x002326 00:A316: 9A A5     .word off_04_A59A_2B
- D 1 - I - 0x002328 00:A318: AA A5     .word off_04_A5AA_2C
- D 1 - I - 0x00232A 00:A31A: AD A5     .word off_04_A5AD_2D
- D 1 - I - 0x00232C 00:A31C: BA A5     .word off_04_A5BA_2E
- D 1 - I - 0x00232E 00:A31E: D2 A5     .word off_04_A5D2_2F
- D 1 - I - 0x002330 00:A320: D5 A5     .word off_04_A5D5_30
- D 1 - I - 0x002332 00:A322: D8 A5     .word off_04_A5D8_31
- D 1 - I - 0x002334 00:A324: E8 A5     .word off_04_A5E8_32
- D 1 - I - 0x002336 00:A326: F8 A5     .word off_04_A5F8_33
- D 1 - I - 0x002338 00:A328: 0B A6     .word off_04_A60B_34
- D 1 - I - 0x00233A 00:A32A: 0E A6     .word off_04_A60E_35
- D 1 - I - 0x00233C 00:A32C: 11 A6     .word off_04_A611_36
- D 1 - I - 0x00233E 00:A32E: 14 A6     .word off_04_A614_37
- D 1 - I - 0x002340 00:A330: 2B A6     .word off_04_A62B_38
- D 1 - I - 0x002342 00:A332: 42 A6     .word off_04_A642_39
- D 1 - I - 0x002344 00:A334: 59 A6     .word off_04_A659_3A
- D 1 - I - 0x002346 00:A336: 70 A6     .word off_04_A670_3B
- D 1 - I - 0x002348 00:A338: 73 A6     .word off_04_A673_3C
- D 1 - I - 0x00234A 00:A33A: 76 A6     .word off_04_A676_3D
- D 1 - I - 0x00234C 00:A33C: 79 A6     .word off_04_A679_3E
- D 1 - I - 0x00234E 00:A33E: 7C A6     .word off_04_A67C_3F
- D 1 - I - 0x002350 00:A340: 93 A6     .word off_04_A693_40
- D 1 - I - 0x002352 00:A342: AA A6     .word off_04_A6AA_41
- - - - - - 0x002354 00:A344: AD A6     .word off_04_A6AD_42
- - - - - - 0x002356 00:A346: B0 A6     .word off_04_A6B0_43
- - - - - - 0x002358 00:A348: B0 A6     .word off_04_A6B0_44
- - - - - - 0x00235A 00:A34A: B0 A6     .word off_04_A6B0_45
- - - - - - 0x00235C 00:A34C: B0 A6     .word off_04_A6B0_46
- D 1 - I - 0x00235E 00:A34E: B0 A6     .word off_04_A6B0_47
- D 1 - I - 0x002360 00:A350: B3 A6     .word off_04_A6B3_48
- D 1 - I - 0x002362 00:A352: B6 A6     .word off_04_A6B6_49
- - - - - - 0x002364 00:A354: CD A6     .word off_04_A6CD_4A
- D 1 - I - 0x002366 00:A356: E4 A6     .word off_04_A6E4_4B
- D 1 - I - 0x002368 00:A358: FB A6     .word off_04_A6FB_4C
- D 1 - I - 0x00236A 00:A35A: FE A6     .word off_04_A6FE_4D
- D 1 - I - 0x00236C 00:A35C: 0E A7     .word off_04_A70E_4E
- - - - - - 0x00236E 00:A35E: 1E A7     .word off_04_A71E_4F
- - - - - - 0x002370 00:A360: 2E A7     .word off_04_A72E_50
- - - - - - 0x002372 00:A362: 3E A7     .word off_04_A73E_51
- - - - - - 0x002374 00:A364: 41 A7     .word off_04_A741_52
- - - - - - 0x002376 00:A366: 44 A7     .word off_04_A744_53
- - - - - - 0x002378 00:A368: 47 A7     .word off_04_A747_54
- - - - - - 0x00237A 00:A36A: 4A A7     .word off_04_A74A_55
- - - - - - 0x00237C 00:A36C: 5A A7     .word off_04_A75A_56
- - - - - - 0x00237E 00:A36E: 6D A7     .word off_04_A76D_57
- - - - - - 0x002380 00:A370: 7D A7     .word off_04_A77D_58
- - - - - - 0x002382 00:A372: 80 A7     .word off_04_A780_59
- - - - - - 0x002384 00:A374: 83 A7     .word off_04_A783_5A
- - - - - - 0x002386 00:A376: 86 A7     .word off_04_A786_5B
- - - - - - 0x002388 00:A378: 96 A7     .word off_04_A796_5C
- - - - - - 0x00238A 00:A37A: A6 A7     .word off_04_A7A6_5D
- - - - - - 0x00238C 00:A37C: B9 A7     .word off_04_A7B9_5E
- - - - - - 0x00238E 00:A37E: CC A7     .word off_04_A7CC_5F
- - - - - - 0x002390 00:A380: CF A7     .word off_04_A7CF_60
- - - - - - 0x002392 00:A382: D2 A7     .word off_04_A7D2_61
- - - - - - 0x002394 00:A384: D5 A7     .word off_04_A7D5_62
- D 1 - I - 0x002396 00:A386: D8 A7     .word off_04_A7D8_63
- - - - - - 0x002398 00:A388: E9 A7     .word off_04_A7E9_64
- D 1 - I - 0x00239A 00:A38A: EC A7     .word off_04_A7EC_65
- - - - - - 0x00239C 00:A38C: F9 A7     .word off_04_A7F9_66
- D 1 - I - 0x00239E 00:A38E: FC A7     .word off_04_A7FC_67
- - - - - - 0x0023A0 00:A390: 12 A8     .word off_04_A812_68
- D 1 - I - 0x0023A2 00:A392: 15 A8     .word off_04_A815_69
- D 1 - I - 0x0023A4 00:A394: 2F A8     .word off_04_A82F_6A
- D 1 - I - 0x0023A6 00:A396: 4B A8     .word off_04_A84B_6B
- D 1 - I - 0x0023A8 00:A398: 65 A8     .word off_04_A865_6C
- D 1 - I - 0x0023AA 00:A39A: 7F A8     .word off_04_A87F_6D
- D 1 - I - 0x0023AC 00:A39C: 82 A8     .word off_04_A882_6E
- - - - - - 0x0023AE 00:A39E: 85 A8     .word off_04_A885_6F
- - - - - - 0x0023B0 00:A3A0: 88 A8     .word off_04_A888_70
- D 1 - I - 0x0023B2 00:A3A2: 8B A8     .word off_04_A88B_71
- D 1 - I - 0x0023B4 00:A3A4: A5 A8     .word off_04_A8A5_72
- D 1 - I - 0x0023B6 00:A3A6: C9 A8     .word off_04_A8C9_73
- D 1 - I - 0x0023B8 00:A3A8: E8 A8     .word off_04_A8E8_74
- D 1 - I - 0x0023BA 00:A3AA: 05 A9     .word off_04_A905_75
- - - - - - 0x0023BC 00:A3AC: 08 A9     .word off_04_A908_76
- - - - - - 0x0023BE 00:A3AE: 0B A9     .word off_04_A90B_77
- - - - - - 0x0023C0 00:A3B0: 0E A9     .word off_04_A90E_78
- D 1 - I - 0x0023C2 00:A3B2: 11 A9     .word off_04_A911_79
- D 1 - I - 0x0023C4 00:A3B4: 2B A9     .word off_04_A92B_7A
- D 1 - I - 0x0023C6 00:A3B6: 2E A9     .word off_04_A92E_7B
- D 1 - I - 0x0023C8 00:A3B8: 44 A9     .word off_04_A944_7C
- D 1 - I - 0x0023CA 00:A3BA: 47 A9     .word off_04_A947_7D
- D 1 - I - 0x0023CC 00:A3BC: 61 A9     .word off_04_A961_7E
- D 1 - I - 0x0023CE 00:A3BE: 64 A9     .word off_04_A964_7F
- - - - - - 0x0023D0 00:A3C0: 77 A9     .word off_04_A977_80
- D 1 - I - 0x0023D2 00:A3C2: 8C A9     .word off_04_A98C_81
- - - - - - 0x0023D4 00:A3C4: 8F A9     .word off_04_A98F_82
- D 1 - I - 0x0023D6 00:A3C6: 92 A9     .word off_04_A992_83
- D 1 - I - 0x0023D8 00:A3C8: A5 A9     .word off_04_A9A5_84
- D 1 - I - 0x0023DA 00:A3CA: B8 A9     .word off_04_A9B8_85
- D 1 - I - 0x0023DC 00:A3CC: BB A9     .word off_04_A9BB_86
- - - - - - 0x0023DE 00:A3CE: BE A9     .word off_04_A9BE_87
- - - - - - 0x0023E0 00:A3D0: CC A9     .word off_04_A9CC_88
- - - - - - 0x0023E2 00:A3D2: DA A9     .word off_04_A9DA_89
- - - - - - 0x0023E4 00:A3D4: DD A9     .word off_04_A9DD_8A
- D 1 - I - 0x0023E6 00:A3D6: E0 A9     .word off_04_A9E0_8B
- D 1 - I - 0x0023E8 00:A3D8: ED A9     .word off_04_A9ED_8C
- D 1 - I - 0x0023EA 00:A3DA: F0 A9     .word off_04_A9F0_8D
- D 1 - I - 0x0023EC 00:A3DC: 06 AA     .word off_04_AA06_8E
- D 1 - I - 0x0023EE 00:A3DE: 09 AA     .word off_04_AA09_8F
- D 1 - I - 0x0023F0 00:A3E0: 1C AA     .word off_04_AA1C_90
- D 1 - I - 0x0023F2 00:A3E2: 2F AA     .word off_04_AA2F_91
- D 1 - I - 0x0023F4 00:A3E4: 42 AA     .word off_04_AA42_92
- D 1 - I - 0x0023F6 00:A3E6: 55 AA     .word off_04_AA55_93
- - - - - - 0x0023F8 00:A3E8: 58 AA     .word off_04_AA58_94
- - - - - - 0x0023FA 00:A3EA: 5B AA     .word off_04_AA5B_95
- - - - - - 0x0023FC 00:A3EC: 5E AA     .word off_04_AA5E_96



off_04_A42E_05:
- D 1 - I - 0x00243E 00:A42E: FF        .byte $FF   ; 
off_04_A3EE_00:
off_04_A3EE_01:
- D 1 - I - 0x0023FE 00:A3EE: 82        .byte $82   ; counter
- D 1 - I - 0x0023FF 00:A3EF: 01        .byte $01   ; spr_A
- D 1 - I - 0x002400 00:A3F0: F6        .byte $F6, $81, $EF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002403 00:A3F3: FE        .byte $FE, $83, $EF   ; 

- D 1 - I - 0x002406 00:A3F6: 02        .byte $02   ; 
- D 1 - I - 0x002407 00:A3F7: 41        .byte $41   ; 
- D 1 - I - 0x002408 00:A3F8: 00        .byte $00, $01, $FF   ; 
- D 1 - I - 0x00240B 00:A3FB: F8        .byte $F8, $03, $FF   ; 



off_04_A431_06:
- D 1 - I - 0x002441 00:A431: FF        .byte $FF   ; 
off_04_A3FE_02:
- D 1 - I - 0x00240E 00:A3FE: 82        .byte $82   ; counter
- D 1 - I - 0x00240F 00:A3FF: 41        .byte $41   ; spr_A
- D 1 - I - 0x002410 00:A400: 00        .byte $00, $05, $FF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002413 00:A403: F8        .byte $F8, $07, $FF   ; 

- D 1 - I - 0x002416 00:A406: 02        .byte $02   ; 
- D 1 - I - 0x002417 00:A407: 01        .byte $01   ; 
- D 1 - I - 0x002418 00:A408: F6        .byte $F6, $85, $F0   ; 
- D 1 - I - 0x00241B 00:A40B: FE        .byte $FE, $87, $F0   ; 



off_04_A434_07:
- D 1 - I - 0x002444 00:A434: FF        .byte $FF   ; 
off_04_A40E_03:
- D 1 - I - 0x00241E 00:A40E: 82        .byte $82   ; counter
- D 1 - I - 0x00241F 00:A40F: 01        .byte $01   ; spr_A
- D 1 - I - 0x002420 00:A410: F2        .byte $F2, $89, $EF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002423 00:A413: FA        .byte $FA, $8B, $EF   ; 

- D 1 - I - 0x002426 00:A416: 02        .byte $02   ; 
- D 1 - I - 0x002427 00:A417: 41        .byte $41   ; 
- D 1 - I - 0x002428 00:A418: FE        .byte $FE, $09, $FF   ; 
- D 1 - I - 0x00242B 00:A41B: F6        .byte $F6, $0B, $FF   ; 



off_04_A437_08:
- D 1 - I - 0x002447 00:A437: FF        .byte $FF   ; 
off_04_A41E_04:
- D 1 - I - 0x00242E 00:A41E: 82        .byte $82   ; counter
- D 1 - I - 0x00242F 00:A41F: 41        .byte $41   ; spr_A
- D 1 - I - 0x002430 00:A420: FF        .byte $FF, $0D, $FF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002433 00:A423: F7        .byte $F7, $0F, $FF   ; 

- D 1 - I - 0x002436 00:A426: 02        .byte $02   ; 
- D 1 - I - 0x002437 00:A427: 01        .byte $01   ; 
- D 1 - I - 0x002438 00:A428: F6        .byte $F6, $85, $F0   ; 
- D 1 - I - 0x00243B 00:A42B: FE        .byte $FE, $87, $F0   ; 



off_04_A460_0B:
- D 1 - I - 0x002470 00:A460: FF        .byte $FF   ; 
off_04_A43A_09:
- D 1 - I - 0x00244A 00:A43A: 83        .byte $83   ; counter
- D 1 - I - 0x00244B 00:A43B: 01        .byte $01   ; spr_A
- D 1 - I - 0x00244C 00:A43C: EE        .byte $EE, $8D, $EF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x00244F 00:A43F: F6        .byte $F6, $8F, $EF   ; 
- D 1 - I - 0x002452 00:A442: FE        .byte $FE, $91, $EF   ; 

- D 1 - I - 0x002455 00:A445: 02        .byte $02   ; 
- D 1 - I - 0x002456 00:A446: 41        .byte $41   ; 
- D 1 - I - 0x002457 00:A447: 00        .byte $00, $11, $FF   ; 
- D 1 - I - 0x00245A 00:A44A: F8        .byte $F8, $13, $FF   ; 



off_04_A463_0C:
- D 1 - I - 0x002473 00:A463: FF        .byte $FF   ; 
off_04_A44D_0A:
- D 1 - I - 0x00245D 00:A44D: 83        .byte $83   ; counter
- D 1 - I - 0x00245E 00:A44E: 01        .byte $01   ; spr_A
- D 1 - I - 0x00245F 00:A44F: EE        .byte $EE, $93, $EC   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002462 00:A452: F6        .byte $F6, $95, $EF   ; 
- D 1 - I - 0x002465 00:A455: FE        .byte $FE, $91, $EF   ; 

- D 1 - I - 0x002468 00:A458: 02        .byte $02   ; 
- D 1 - I - 0x002469 00:A459: 41        .byte $41   ; 
- D 1 - I - 0x00246A 00:A45A: 00        .byte $00, $11, $FF   ; 
- D 1 - I - 0x00246D 00:A45D: F8        .byte $F8, $13, $FF   ; 



off_04_A48E_0F:
- D 1 - I - 0x00249E 00:A48E: FF        .byte $FF   ; 
off_04_A466_0D:
- D 1 - I - 0x002476 00:A466: 82        .byte $82   ; counter
- D 1 - I - 0x002477 00:A467: 01        .byte $01   ; spr_A
- D 1 - I - 0x002478 00:A468: EE        .byte $EE, $8D, $F4   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x00247B 00:A46B: FE        .byte $FE, $91, $F4   ; 

- D 1 - I - 0x00247E 00:A46E: 82        .byte $82   ; 
- D 1 - I - 0x00247F 00:A46F: 41        .byte $41   ; 
- D 1 - I - 0x002480 00:A470: 00        .byte $00, $27, $04   ; 
- D 1 - I - 0x002483 00:A473: F8        .byte $F8, $29, $04   ; 

- D 1 - I - 0x002486 00:A476: 01        .byte $01   ; 
- D 1 - I - 0x002487 00:A477: 01        .byte $01   ; 
- D 1 - I - 0x002488 00:A478: F6        .byte $F6, $97, $F4   ; 



off_04_A491_10:
- D 1 - I - 0x0024A1 00:A491: FF        .byte $FF   ; 
off_04_A47B_0E:
- D 1 - I - 0x00248B 00:A47B: 83        .byte $83   ; counter
- D 1 - I - 0x00248C 00:A47C: 01        .byte $01   ; spr_A
- D 1 - I - 0x00248D 00:A47D: EE        .byte $EE, $93, $F1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002490 00:A480: F6        .byte $F6, $99, $F4   ; 
- D 1 - I - 0x002493 00:A483: FE        .byte $FE, $91, $F4   ; 

- D 1 - I - 0x002496 00:A486: 02        .byte $02   ; 
- D 1 - I - 0x002497 00:A487: 41        .byte $41   ; 
- D 1 - I - 0x002498 00:A488: 00        .byte $00, $27, $04   ; 
- D 1 - I - 0x00249B 00:A48B: F8        .byte $F8, $29, $04   ; 



off_04_A4B7_13:
- D 1 - I - 0x0024C7 00:A4B7: FF        .byte $FF   ; 
off_04_A494_11:
- D 1 - I - 0x0024A4 00:A494: 81        .byte $81   ; counter
- D 1 - I - 0x0024A5 00:A495: 01        .byte $01   ; spr_A
- D 1 - I - 0x0024A6 00:A496: 01        .byte $01, $9B, $F9   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x0024A9 00:A499: 02        .byte $02   ; 
- D 1 - I - 0x0024AA 00:A49A: 41        .byte $41   ; 
- D 1 - I - 0x0024AB 00:A49B: F9        .byte $F9, $17, $F9   ; 
- D 1 - I - 0x0024AE 00:A49E: F1        .byte $F1, $19, $F9   ; 



off_04_A4BA_14:
- D 1 - I - 0x0024CA 00:A4BA: FF        .byte $FF   ; 
off_04_A4A1_12:
- D 1 - I - 0x0024B1 00:A4A1: 84        .byte $84   ; counter
- D 1 - I - 0x0024B2 00:A4A2: 41        .byte $41   ; spr_A
- D 1 - I - 0x0024B3 00:A4A3: 06        .byte $06, $1B, $01   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0024B6 00:A4A6: FE        .byte $FE, $1D, $01   ; 
- D 1 - I - 0x0024B9 00:A4A9: F6        .byte $F6, $1F, $01   ; 
- D 1 - I - 0x0024BC 00:A4AC: EE        .byte $EE, $21, $01   ; 

- D 1 - I - 0x0024BF 00:A4AF: 02        .byte $02   ; 
- D 1 - I - 0x0024C0 00:A4B0: 01        .byte $01   ; 
- D 1 - I - 0x0024C1 00:A4B1: F9        .byte $F9, $9D, $F1   ; 
- D 1 - I - 0x0024C4 00:A4B4: 01        .byte $01, $9F, $F1   ; 



off_04_A4CD_16:
- - - - - - 0x0024DD 00:A4CD: FF        .byte $FF   ; 
off_04_A4BD_15:
- - - - - - 0x0024CD 00:A4BD: 82        .byte $82   ; counter
- - - - - - 0x0024CE 00:A4BE: 01        .byte $01   ; spr_A
- - - - - - 0x0024CF 00:A4BF: F7        .byte $F7, $A1, $EF   ; spr_X, spr_T, spr_Y
- - - - - - 0x0024D2 00:A4C2: FF        .byte $FF, $A3, $EF   ; 

- - - - - - 0x0024D5 00:A4C5: 02        .byte $02   ; 
- - - - - - 0x0024D6 00:A4C6: 41        .byte $41   ; 
- - - - - - 0x0024D7 00:A4C7: FF        .byte $FF, $CD, $FF   ; 
- - - - - - 0x0024DA 00:A4CA: F7        .byte $F7, $CF, $FF   ; 



off_04_A4E1_18:
- D 1 - I - 0x0024F1 00:A4E1: FF        .byte $FF   ; 
off_04_A4D0_17:
- D 1 - I - 0x0024E0 00:A4D0: 05        .byte $05   ; counter
- D 1 - I - 0x0024E1 00:A4D1: 01        .byte $01   ; spr_A
- D 1 - I - 0x0024E2 00:A4D2: F0        .byte $F0, $93, $ED   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0024E5 00:A4D5: F8        .byte $F8, $99, $F0   ; 
- D 1 - I - 0x0024E8 00:A4D8: 00        .byte $00, $91, $F0   ; 
- D 1 - I - 0x0024EB 00:A4DB: F8        .byte $F8, $A5, $00   ; 
- D 1 - I - 0x0024EE 00:A4DE: 00        .byte $00, $A7, $00   ; 



off_04_A524_1D:
- - - - - - 0x002534 00:A524: FF        .byte $FF   ; 
off_04_A4E4_19:
- - - - - - 0x0024F4 00:A4E4: 82        .byte $82   ; counter
- - - - - - 0x0024F5 00:A4E5: 00        .byte $00   ; spr_A
- - - - - - 0x0024F6 00:A4E6: F6        .byte $F6, $81, $EF   ; spr_X, spr_T, spr_Y
- - - - - - 0x0024F9 00:A4E9: FE        .byte $FE, $83, $EF   ; 

- - - - - - 0x0024FC 00:A4EC: 02        .byte $02   ; 
- - - - - - 0x0024FD 00:A4ED: 42        .byte $42   ; 
- - - - - - 0x0024FE 00:A4EE: 00        .byte $00, $01, $FF   ; 
- - - - - - 0x002501 00:A4F1: F8        .byte $F8, $03, $FF   ; 



off_04_A527_1E:
- - - - - - 0x002537 00:A527: FF        .byte $FF   ; 
off_04_A4F4_1A:
- - - - - - 0x002504 00:A4F4: 82        .byte $82   ; counter
- - - - - - 0x002505 00:A4F5: 42        .byte $42   ; spr_A
- - - - - - 0x002506 00:A4F6: 00        .byte $00, $05, $FF   ; spr_X, spr_T, spr_Y
- - - - - - 0x002509 00:A4F9: F8        .byte $F8, $07, $FF   ; 

- - - - - - 0x00250C 00:A4FC: 02        .byte $02   ; 
- - - - - - 0x00250D 00:A4FD: 00        .byte $00   ; 
- - - - - - 0x00250E 00:A4FE: F6        .byte $F6, $85, $F0   ; 
- - - - - - 0x002511 00:A501: FE        .byte $FE, $87, $F0   ; 



off_04_A52A_1F:
- - - - - - 0x00253A 00:A52A: FF        .byte $FF   ; 
off_04_A504_1B:
- - - - - - 0x002514 00:A504: 82        .byte $82   ; counter
- - - - - - 0x002515 00:A505: 00        .byte $00   ; spr_A
- - - - - - 0x002516 00:A506: F2        .byte $F2, $89, $EF   ; spr_X, spr_T, spr_Y
- - - - - - 0x002519 00:A509: FA        .byte $FA, $8B, $EF   ; 

- - - - - - 0x00251C 00:A50C: 02        .byte $02   ; 
- - - - - - 0x00251D 00:A50D: 42        .byte $42   ; 
- - - - - - 0x00251E 00:A50E: FE        .byte $FE, $09, $FF   ; 
- - - - - - 0x002521 00:A511: F6        .byte $F6, $0B, $FF   ; 



off_04_A52D_20:
- - - - - - 0x00253D 00:A52D: FF        .byte $FF   ; 
off_04_A514_1C:
- - - - - - 0x002524 00:A514: 82        .byte $82   ; counter
- - - - - - 0x002525 00:A515: 42        .byte $42   ; spr_A
- - - - - - 0x002526 00:A516: FF        .byte $FF, $0D, $FF   ; spr_X, spr_T, spr_Y
- - - - - - 0x002529 00:A519: F7        .byte $F7, $0F, $FF   ; 

- - - - - - 0x00252C 00:A51C: 02        .byte $02   ; 
- - - - - - 0x00252D 00:A51D: 00        .byte $00   ; 
- - - - - - 0x00252E 00:A51E: F6        .byte $F6, $85, $F0   ; 
- - - - - - 0x002531 00:A521: F9        .byte $F9, $A7, $00   ; 



off_04_A563_24:
- D 1 - I - 0x002573 00:A563: FF        .byte $FF   ; 
off_04_A530_21:
- D 1 - I - 0x002540 00:A530: 82        .byte $82   ; counter
- D 1 - I - 0x002541 00:A531: 00        .byte $00   ; spr_A
- D 1 - I - 0x002542 00:A532: FC        .byte $FC, $A9, $EE   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002545 00:A535: 04        .byte $04, $AB, $EE   ; 

- D 1 - I - 0x002548 00:A538: 02        .byte $02   ; 
- D 1 - I - 0x002549 00:A539: 02        .byte $02   ; 
- D 1 - I - 0x00254A 00:A53A: FA        .byte $FA, $CD, $FE   ; 
- D 1 - I - 0x00254D 00:A53D: 02        .byte $02, $CF, $FE   ; 



off_04_A566_25:
- D 1 - I - 0x002576 00:A566: FF        .byte $FF   ; 
off_04_A540_22:
- D 1 - I - 0x002550 00:A540: 82        .byte $82   ; counter
- D 1 - I - 0x002551 00:A541: 00        .byte $00   ; spr_A
- D 1 - I - 0x002552 00:A542: FA        .byte $FA, $AD, $EE   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002555 00:A545: 02        .byte $02, $AF, $EE   ; 

- D 1 - I - 0x002558 00:A548: 02        .byte $02   ; 
- D 1 - I - 0x002559 00:A549: 02        .byte $02   ; 
- D 1 - I - 0x00255A 00:A54A: FA        .byte $FA, $CD, $FE   ; 
- D 1 - I - 0x00255D 00:A54D: 02        .byte $02, $CF, $FE   ; 



off_04_A569_26:
- D 1 - I - 0x002579 00:A569: FF        .byte $FF   ; 
off_04_A550_23:
- D 1 - I - 0x002560 00:A550: 83        .byte $83   ; counter
- D 1 - I - 0x002561 00:A551: 00        .byte $00   ; spr_A
- D 1 - I - 0x002562 00:A552: F7        .byte $F7, $B1, $EE   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002565 00:A555: FF        .byte $FF, $B3, $EE   ; 
- D 1 - I - 0x002568 00:A558: F3        .byte $F3, $B5, $FE   ; 

- D 1 - I - 0x00256B 00:A55B: 02        .byte $02   ; 
- D 1 - I - 0x00256C 00:A55C: 02        .byte $02   ; 
- D 1 - I - 0x00256D 00:A55D: FA        .byte $FA, $CD, $FE   ; 
- D 1 - I - 0x002570 00:A560: 02        .byte $02, $CF, $FE   ; 



off_04_A581_28:
- D 1 - I - 0x002591 00:A581: FF        .byte $FF   ; 
off_04_A56C_27:
- D 1 - I - 0x00257C 00:A56C: 81        .byte $81   ; counter
- D 1 - I - 0x00257D 00:A56D: 00        .byte $00   ; spr_A
- D 1 - I - 0x00257E 00:A56E: FA        .byte $FA, $AD, $EE   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x002581 00:A571: 82        .byte $82   ; 
- D 1 - I - 0x002582 00:A572: 02        .byte $02   ; 
- D 1 - I - 0x002583 00:A573: FA        .byte $FA, $CD, $FE   ; 
- D 1 - I - 0x002586 00:A576: 02        .byte $02, $CF, $FE   ; 

- D 1 - I - 0x002589 00:A579: 02        .byte $02   ; 
- D 1 - I - 0x00258A 00:A57A: 00        .byte $00   ; 
- D 1 - I - 0x00258B 00:A57B: FA        .byte $FA, $B7, $DE   ; 
- D 1 - I - 0x00258E 00:A57E: 02        .byte $02, $B9, $EE   ; 



off_04_A597_2A:
- D 1 - I - 0x0025A7 00:A597: FF        .byte $FF   ; 
off_04_A584_29:
- D 1 - I - 0x002594 00:A584: 82        .byte $82   ; counter
- D 1 - I - 0x002595 00:A585: 42        .byte $42   ; spr_A
- D 1 - I - 0x002596 00:A586: 01        .byte $01, $27, $FE   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002599 00:A589: F9        .byte $F9, $29, $FE   ; 

- D 1 - I - 0x00259C 00:A58C: 03        .byte $03   ; 
- D 1 - I - 0x00259D 00:A58D: 00        .byte $00   ; 
- D 1 - I - 0x00259E 00:A58E: F9        .byte $F9, $AD, $EE   ; 
- D 1 - I - 0x0025A1 00:A591: 01        .byte $01, $B9, $EE   ; 
- D 1 - I - 0x0025A4 00:A594: F9        .byte $F9, $B7, $DE   ; 



off_04_A5AA_2C:
- D 1 - I - 0x0025BA 00:A5AA: FF        .byte $FF   ; 
off_04_A59A_2B:
- D 1 - I - 0x0025AA 00:A59A: 82        .byte $82   ; counter
- D 1 - I - 0x0025AB 00:A59B: 02        .byte $02   ; spr_A
- D 1 - I - 0x0025AC 00:A59C: F8        .byte $F8, $A5, $00   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0025AF 00:A59F: 00        .byte $00, $A7, $00   ; 

- D 1 - I - 0x0025B2 00:A5A2: 02        .byte $02   ; 
- D 1 - I - 0x0025B3 00:A5A3: 00        .byte $00   ; 
- D 1 - I - 0x0025B4 00:A5A4: F6        .byte $F6, $89, $F0   ; 
- D 1 - I - 0x0025B7 00:A5A7: FE        .byte $FE, $8B, $F0   ; 



off_04_A5D2_2F:
- D 1 - I - 0x0025E2 00:A5D2: FF        .byte $FF   ; 
off_04_A5AD_2D:
- D 1 - I - 0x0025BD 00:A5AD: 81        .byte $81   ; counter
- D 1 - I - 0x0025BE 00:A5AE: 00        .byte $00   ; spr_A
- D 1 - I - 0x0025BF 00:A5AF: 01        .byte $01, $9B, $F9   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x0025C2 00:A5B2: 02        .byte $02   ; 
- D 1 - I - 0x0025C3 00:A5B3: 42        .byte $42   ; 
- D 1 - I - 0x0025C4 00:A5B4: F9        .byte $F9, $17, $F9   ; 
- D 1 - I - 0x0025C7 00:A5B7: F1        .byte $F1, $19, $F9   ; 



off_04_A5D5_30:
- D 1 - I - 0x0025E5 00:A5D5: FF        .byte $FF   ; 
off_04_A5BA_2E:
- D 1 - I - 0x0025CA 00:A5BA: 82        .byte $82   ; counter
- D 1 - I - 0x0025CB 00:A5BB: 00        .byte $00   ; spr_A
- D 1 - I - 0x0025CC 00:A5BC: F9        .byte $F9, $9D, $F1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0025CF 00:A5BF: 01        .byte $01, $9F, $F1   ; 

- D 1 - I - 0x0025D2 00:A5C2: 81        .byte $81   ; 
- D 1 - I - 0x0025D3 00:A5C3: 40        .byte $40   ; 
- D 1 - I - 0x0025D4 00:A5C4: 06        .byte $06, $1B, $01   ; 

- D 1 - I - 0x0025D7 00:A5C7: 03        .byte $03   ; 
- D 1 - I - 0x0025D8 00:A5C8: 42        .byte $42   ; 
- D 1 - I - 0x0025D9 00:A5C9: FE        .byte $FE, $1D, $01   ; 
- D 1 - I - 0x0025DC 00:A5CC: F6        .byte $F6, $1F, $01   ; 
- D 1 - I - 0x0025DF 00:A5CF: EE        .byte $EE, $21, $01   ; 



off_04_A60B_34:
- D 1 - I - 0x00261B 00:A60B: FF        .byte $FF   ; 
off_04_A5D8_31:
- D 1 - I - 0x0025E8 00:A5D8: 82        .byte $82   ; counter
- D 1 - I - 0x0025E9 00:A5D9: 42        .byte $42   ; spr_A
- D 1 - I - 0x0025EA 00:A5DA: 01        .byte $01, $27, $FE   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0025ED 00:A5DD: F9        .byte $F9, $29, $FE   ; 

- D 1 - I - 0x0025F0 00:A5E0: 02        .byte $02   ; 
- D 1 - I - 0x0025F1 00:A5E1: 00        .byte $00   ; 
- D 1 - I - 0x0025F2 00:A5E2: FB        .byte $FB, $A9, $EE   ; 
- D 1 - I - 0x0025F5 00:A5E5: 03        .byte $03, $AB, $EE   ; 



off_04_A60E_35:
- D 1 - I - 0x00261E 00:A60E: FF        .byte $FF   ; 
off_04_A5E8_32:
- D 1 - I - 0x0025F8 00:A5E8: 82        .byte $82   ; counter
- D 1 - I - 0x0025F9 00:A5E9: 42        .byte $42   ; spr_A
- D 1 - I - 0x0025FA 00:A5EA: 01        .byte $01, $27, $FE   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0025FD 00:A5ED: F9        .byte $F9, $29, $FE   ; 

- D 1 - I - 0x002600 00:A5F0: 02        .byte $02   ; 
- D 1 - I - 0x002601 00:A5F1: 00        .byte $00   ; 
- D 1 - I - 0x002602 00:A5F2: F9        .byte $F9, $AD, $EE   ; 
- D 1 - I - 0x002605 00:A5F5: 01        .byte $01, $AF, $EE   ; 



off_04_A611_36:
- D 1 - I - 0x002621 00:A611: FF        .byte $FF   ; 
off_04_A5F8_33:
- D 1 - I - 0x002608 00:A5F8: 82        .byte $82   ; counter
- D 1 - I - 0x002609 00:A5F9: 42        .byte $42   ; spr_A
- D 1 - I - 0x00260A 00:A5FA: 01        .byte $01, $27, $FE   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x00260D 00:A5FD: F9        .byte $F9, $29, $FE   ; 

- D 1 - I - 0x002610 00:A600: 03        .byte $03   ; 
- D 1 - I - 0x002611 00:A601: 00        .byte $00   ; 
- D 1 - I - 0x002612 00:A602: F6        .byte $F6, $B1, $EE   ; 
- D 1 - I - 0x002615 00:A605: FE        .byte $FE, $B3, $EE   ; 
- D 1 - I - 0x002618 00:A608: F2        .byte $F2, $B5, $FE   ; 



off_04_A670_3B:
- D 1 - I - 0x002680 00:A670: FF        .byte $FF   ; 
off_04_A614_37:
- D 1 - I - 0x002624 00:A614: 82        .byte $82   ; counter
- D 1 - I - 0x002625 00:A615: 42        .byte $42   ; spr_A
- D 1 - I - 0x002626 00:A616: 00        .byte $00, $01, $FF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002629 00:A619: F8        .byte $F8, $03, $FF   ; 

- D 1 - I - 0x00262C 00:A61C: 81        .byte $81   ; 
- D 1 - I - 0x00262D 00:A61D: 00        .byte $00   ; 
- D 1 - I - 0x00262E 00:A61E: F6        .byte $F6, $BB, $EF   ; 

- D 1 - I - 0x002631 00:A621: 81        .byte $81   ; 
- D 1 - I - 0x002632 00:A622: 02        .byte $02   ; 
- D 1 - I - 0x002633 00:A623: FE        .byte $FE, $BD, $EF   ; 

- D 1 - I - 0x002636 00:A626: 01        .byte $01   ; 
- D 1 - I - 0x002637 00:A627: 01        .byte $01   ; 
- D 1 - I - 0x002638 00:A628: 04        .byte $04, $BF, $F2   ; 



off_04_A673_3C:
- D 1 - I - 0x002683 00:A673: FF        .byte $FF   ; 
off_04_A62B_38:
- D 1 - I - 0x00263B 00:A62B: 82        .byte $82   ; counter
- D 1 - I - 0x00263C 00:A62C: 42        .byte $42   ; spr_A
- D 1 - I - 0x00263D 00:A62D: 00        .byte $00, $05, $FF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002640 00:A630: F8        .byte $F8, $07, $FF   ; 

- D 1 - I - 0x002643 00:A633: 81        .byte $81   ; 
- D 1 - I - 0x002644 00:A634: 00        .byte $00   ; 
- D 1 - I - 0x002645 00:A635: F5        .byte $F5, $BB, $F0   ; 

- D 1 - I - 0x002648 00:A638: 81        .byte $81   ; 
- D 1 - I - 0x002649 00:A639: 02        .byte $02   ; 
- D 1 - I - 0x00264A 00:A63A: FD        .byte $FD, $BD, $F0   ; 

- D 1 - I - 0x00264D 00:A63D: 01        .byte $01   ; 
- D 1 - I - 0x00264E 00:A63E: 01        .byte $01   ; 
- D 1 - I - 0x00264F 00:A63F: 04        .byte $04, $BF, $F1   ; 



off_04_A676_3D:
- D 1 - I - 0x002686 00:A676: FF        .byte $FF   ; 
off_04_A642_39:
- D 1 - I - 0x002652 00:A642: 82        .byte $82   ; counter
- D 1 - I - 0x002653 00:A643: 42        .byte $42   ; spr_A
- D 1 - I - 0x002654 00:A644: FE        .byte $FE, $09, $FF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002657 00:A647: F6        .byte $F6, $0B, $FF   ; 

- D 1 - I - 0x00265A 00:A64A: 81        .byte $81   ; 
- D 1 - I - 0x00265B 00:A64B: 00        .byte $00   ; 
- D 1 - I - 0x00265C 00:A64C: F3        .byte $F3, $BB, $EF   ; 

- D 1 - I - 0x00265F 00:A64F: 81        .byte $81   ; 
- D 1 - I - 0x002660 00:A650: 02        .byte $02   ; 
- D 1 - I - 0x002661 00:A651: FB        .byte $FB, $BD, $EF   ; 

- D 1 - I - 0x002664 00:A654: 01        .byte $01   ; 
- D 1 - I - 0x002665 00:A655: 01        .byte $01   ; 
- D 1 - I - 0x002666 00:A656: 01        .byte $01, $BF, $F1   ; 



off_04_A679_3E:
- D 1 - I - 0x002689 00:A679: FF        .byte $FF   ; 
off_04_A659_3A:
- D 1 - I - 0x002669 00:A659: 82        .byte $82   ; counter
- D 1 - I - 0x00266A 00:A65A: 42        .byte $42   ; spr_A
- D 1 - I - 0x00266B 00:A65B: FF        .byte $FF, $0D, $FF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x00266E 00:A65E: F7        .byte $F7, $0F, $FF   ; 

- D 1 - I - 0x002671 00:A661: 81        .byte $81   ; 
- D 1 - I - 0x002672 00:A662: 00        .byte $00   ; 
- D 1 - I - 0x002673 00:A663: F5        .byte $F5, $BB, $F0   ; 

- D 1 - I - 0x002676 00:A666: 81        .byte $81   ; 
- D 1 - I - 0x002677 00:A667: 02        .byte $02   ; 
- D 1 - I - 0x002678 00:A668: FD        .byte $FD, $BD, $F0   ; 

- D 1 - I - 0x00267B 00:A66B: 01        .byte $01   ; 
- D 1 - I - 0x00267C 00:A66C: 01        .byte $01   ; 
- D 1 - I - 0x00267D 00:A66D: 03        .byte $03, $BF, $F1   ; 



off_04_A6AA_41:
- D 1 - I - 0x0026BA 00:A6AA: FF        .byte $FF   ; 
off_04_A67C_3F:
- D 1 - I - 0x00268C 00:A67C: 82        .byte $82   ; counter
- D 1 - I - 0x00268D 00:A67D: 02        .byte $02   ; spr_A
- D 1 - I - 0x00268E 00:A67E: F7        .byte $F7, $CD, $FD   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002691 00:A681: FF        .byte $FF, $CF, $FD   ; 

- D 1 - I - 0x002694 00:A684: 81        .byte $81   ; 
- D 1 - I - 0x002695 00:A685: 00        .byte $00   ; 
- D 1 - I - 0x002696 00:A686: F6        .byte $F6, $BB, $EF   ; 

- D 1 - I - 0x002699 00:A689: 81        .byte $81   ; 
- D 1 - I - 0x00269A 00:A68A: 02        .byte $02   ; 
- D 1 - I - 0x00269B 00:A68B: FE        .byte $FE, $BD, $EF   ; 

- D 1 - I - 0x00269E 00:A68E: 01        .byte $01   ; 
- D 1 - I - 0x00269F 00:A68F: 01        .byte $01   ; 
- D 1 - I - 0x0026A0 00:A690: 04        .byte $04, $BF, $F0   ; 



off_04_A6AD_42:
- - - - - - 0x0026BD 00:A6AD: FF        .byte $FF   ; 
off_04_A693_40:
- D 1 - I - 0x0026A3 00:A693: 82        .byte $82   ; counter
- D 1 - I - 0x0026A4 00:A694: 02        .byte $02   ; spr_A
- D 1 - I - 0x0026A5 00:A695: F7        .byte $F7, $CD, $FD   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0026A8 00:A698: FF        .byte $FF, $CF, $FD   ; 

- D 1 - I - 0x0026AB 00:A69B: 81        .byte $81   ; 
- D 1 - I - 0x0026AC 00:A69C: 00        .byte $00   ; 
- D 1 - I - 0x0026AD 00:A69D: F4        .byte $F4, $BB, $EF   ; 

- D 1 - I - 0x0026B0 00:A6A0: 81        .byte $81   ; 
- D 1 - I - 0x0026B1 00:A6A1: 02        .byte $02   ; 
- D 1 - I - 0x0026B2 00:A6A2: FC        .byte $FC, $BD, $EF   ; 

- D 1 - I - 0x0026B5 00:A6A5: 01        .byte $01   ; 
- D 1 - I - 0x0026B6 00:A6A6: 01        .byte $01   ; 
- D 1 - I - 0x0026B7 00:A6A7: 03        .byte $03, $BF, $F1   ; 



off_04_A6B0_43:
off_04_A6B0_44:
off_04_A6B0_45:
off_04_A6B0_46:
off_04_A6B0_47:
- D 1 - I - 0x0026C0 00:A6B0: FF        .byte $FF   ; 
off_04_A6B6_49:
- D 1 - I - 0x0026C6 00:A6B6: 82        .byte $82   ; counter
- D 1 - I - 0x0026C7 00:A6B7: 02        .byte $02   ; spr_A
- D 1 - I - 0x0026C8 00:A6B8: F8        .byte $F8, $27, $FE   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0026CB 00:A6BB: 00        .byte $00, $29, $FE   ; 

- D 1 - I - 0x0026CE 00:A6BE: 81        .byte $81   ; 
- D 1 - I - 0x0026CF 00:A6BF: 40        .byte $40   ; 
- D 1 - I - 0x0026D0 00:A6C0: 01        .byte $01, $BB, $EF   ; 

- D 1 - I - 0x0026D3 00:A6C3: 81        .byte $81   ; 
- D 1 - I - 0x0026D4 00:A6C4: 42        .byte $42   ; 
- D 1 - I - 0x0026D5 00:A6C5: F9        .byte $F9, $BD, $EF   ; 

- D 1 - I - 0x0026D8 00:A6C8: 01        .byte $01   ; 
- D 1 - I - 0x0026D9 00:A6C9: 41        .byte $41   ; 
- D 1 - I - 0x0026DA 00:A6CA: F3        .byte $F3, $BF, $F0   ; 



off_04_A6B3_48:
- D 1 - I - 0x0026C3 00:A6B3: FF        .byte $FF   ; 
off_04_A6CD_4A:
- D 1 - I - 0x0026DD 00:A6CD: 82        .byte $82   ; counter
- D 1 - I - 0x0026DE 00:A6CE: 02        .byte $02   ; spr_A
- D 1 - I - 0x0026DF 00:A6CF: F8        .byte $F8, $27, $FE   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0026E2 00:A6D2: 00        .byte $00, $29, $FE   ; 

- D 1 - I - 0x0026E5 00:A6D5: 81        .byte $81   ; 
- D 1 - I - 0x0026E6 00:A6D6: 40        .byte $40   ; 
- D 1 - I - 0x0026E7 00:A6D7: 00        .byte $00, $BB, $EE   ; 

- D 1 - I - 0x0026EA 00:A6DA: 81        .byte $81   ; 
- D 1 - I - 0x0026EB 00:A6DB: 42        .byte $42   ; 
- D 1 - I - 0x0026EC 00:A6DC: F8        .byte $F8, $BD, $EE   ; 

- D 1 - I - 0x0026EF 00:A6DF: 01        .byte $01   ; 
- D 1 - I - 0x0026F0 00:A6E0: 41        .byte $41   ; 
- D 1 - I - 0x0026F1 00:A6E1: F2        .byte $F2, $BF, $F0   ; 



off_04_A6FB_4C:
- D 1 - I - 0x00270B 00:A6FB: FF        .byte $FF   ; 
off_04_A6E4_4B:
- D 1 - I - 0x0026F4 00:A6E4: 81        .byte $81   ; counter
- D 1 - I - 0x0026F5 00:A6E5: 00        .byte $00   ; spr_A
- D 1 - I - 0x0026F6 00:A6E6: F8        .byte $F8, $BB, $F0   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x0026F9 00:A6E9: 81        .byte $81   ; 
- D 1 - I - 0x0026FA 00:A6EA: 02        .byte $02   ; 
- D 1 - I - 0x0026FB 00:A6EB: 00        .byte $00, $BD, $F0   ; 

- D 1 - I - 0x0026FE 00:A6EE: 81        .byte $81   ; 
- D 1 - I - 0x0026FF 00:A6EF: 01        .byte $01   ; 
- D 1 - I - 0x002700 00:A6F0: 06        .byte $06, $BF, $F0   ; 

- D 1 - I - 0x002703 00:A6F3: 02        .byte $02   ; 
- D 1 - I - 0x002704 00:A6F4: 02        .byte $02   ; 
- D 1 - I - 0x002705 00:A6F5: F8        .byte $F8, $A5, $00   ; 
- D 1 - I - 0x002708 00:A6F8: 00        .byte $00, $A7, $00   ; 



off_04_A73E_51:
- - - - - - 0x00274E 00:A73E: FF        .byte $FF   ; 
off_04_A6FE_4D:
- D 1 - I - 0x00270E 00:A6FE: 82        .byte $82   ; counter
- D 1 - I - 0x00270F 00:A6FF: 02        .byte $02   ; spr_A
- D 1 - I - 0x002710 00:A700: F8        .byte $F8, $81, $EF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002713 00:A703: 00        .byte $00, $83, $EF   ; 

- D 1 - I - 0x002716 00:A706: 02        .byte $02   ; 
- D 1 - I - 0x002717 00:A707: 42        .byte $42   ; 
- D 1 - I - 0x002718 00:A708: 00        .byte $00, $01, $FF   ; 
- D 1 - I - 0x00271B 00:A70B: F8        .byte $F8, $03, $FF   ; 



off_04_A741_52:
- - - - - - 0x002751 00:A741: FF        .byte $FF   ; 
off_04_A70E_4E:
- D 1 - I - 0x00271E 00:A70E: 82        .byte $82   ; counter
- D 1 - I - 0x00271F 00:A70F: 42        .byte $42   ; spr_A
- D 1 - I - 0x002720 00:A710: 00        .byte $00, $05, $FF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002723 00:A713: F8        .byte $F8, $07, $FF   ; 

- D 1 - I - 0x002726 00:A716: 02        .byte $02   ; 
- D 1 - I - 0x002727 00:A717: 02        .byte $02   ; 
- D 1 - I - 0x002728 00:A718: F6        .byte $F6, $85, $F0   ; 
- D 1 - I - 0x00272B 00:A71B: FE        .byte $FE, $87, $F0   ; 



off_04_A744_53:
- - - - - - 0x002754 00:A744: FF        .byte $FF   ; 
off_04_A71E_4F:
- - - - - - 0x00272E 00:A71E: 82        .byte $82   ; counter
- - - - - - 0x00272F 00:A71F: 42        .byte $42   ; spr_A
- - - - - - 0x002730 00:A720: FE        .byte $FE, $09, $FF   ; spr_X, spr_T, spr_Y
- - - - - - 0x002733 00:A723: F6        .byte $F6, $0B, $FF   ; 

- - - - - - 0x002736 00:A726: 02        .byte $02   ; 
- - - - - - 0x002737 00:A727: 02        .byte $02   ; 
- - - - - - 0x002738 00:A728: F2        .byte $F2, $89, $EF   ; 
- - - - - - 0x00273B 00:A72B: FA        .byte $FA, $8B, $EF   ; 



off_04_A747_54:
- - - - - - 0x002757 00:A747: FF        .byte $FF   ; 
off_04_A72E_50:
- - - - - - 0x00273E 00:A72E: 82        .byte $82   ; counter
- - - - - - 0x00273F 00:A72F: 42        .byte $42   ; spr_A
- - - - - - 0x002740 00:A730: FF        .byte $FF, $0D, $FF   ; spr_X, spr_T, spr_Y
- - - - - - 0x002743 00:A733: F7        .byte $F7, $0F, $FF   ; 

- - - - - - 0x002746 00:A736: 02        .byte $02   ; 
- - - - - - 0x002747 00:A737: 02        .byte $02   ; 
- - - - - - 0x002748 00:A738: F6        .byte $F6, $85, $F0   ; 
- - - - - - 0x00274B 00:A73B: FE        .byte $FE, $87, $F0   ; 



off_04_A77D_58:
- - - - - - 0x00278D 00:A77D: FF        .byte $FF   ; 
off_04_A74A_55:
- - - - - - 0x00275A 00:A74A: 82        .byte $82   ; counter
- - - - - - 0x00275B 00:A74B: 42        .byte $42   ; spr_A
- - - - - - 0x00275C 00:A74C: 02        .byte $02, $CD, $FD   ; spr_X, spr_T, spr_Y
- - - - - - 0x00275F 00:A74F: FA        .byte $FA, $CF, $FD   ; 

- - - - - - 0x002762 00:A752: 02        .byte $02   ; 
- - - - - - 0x002763 00:A753: 02        .byte $02   ; 
- - - - - - 0x002764 00:A754: FA        .byte $FA, $A1, $ED   ; 
- - - - - - 0x002767 00:A757: 02        .byte $02, $A3, $ED   ; 



off_04_A780_59:
- - - - - - 0x002790 00:A780: FF        .byte $FF   ; 
off_04_A75A_56:
- - - - - - 0x00276A 00:A75A: 82        .byte $82   ; counter
- - - - - - 0x00276B 00:A75B: 42        .byte $42   ; spr_A
- - - - - - 0x00276C 00:A75C: 02        .byte $02, $CD, $FD   ; spr_X, spr_T, spr_Y
- - - - - - 0x00276F 00:A75F: FA        .byte $FA, $CF, $FD   ; 

- - - - - - 0x002772 00:A762: 03        .byte $03   ; 
- - - - - - 0x002773 00:A763: 02        .byte $02   ; 
- - - - - - 0x002774 00:A764: FA        .byte $FA, $A1, $ED   ; 
- - - - - - 0x002777 00:A767: 02        .byte $02, $A5, $ED   ; 
- - - - - - 0x00277A 00:A76A: 0A        .byte $0A, $A7, $ED   ; 



off_04_A783_5A:
- - - - - - 0x002793 00:A783: FF        .byte $FF   ; 
off_04_A76D_57:
- - - - - - 0x00277D 00:A76D: 82        .byte $82   ; counter
- - - - - - 0x00277E 00:A76E: 42        .byte $42   ; spr_A
- - - - - - 0x00277F 00:A76F: 02        .byte $02, $CD, $FD   ; spr_X, spr_T, spr_Y
- - - - - - 0x002782 00:A772: FA        .byte $FA, $CF, $FD   ; 

- - - - - - 0x002785 00:A775: 02        .byte $02   ; 
- - - - - - 0x002786 00:A776: 02        .byte $02   ; 
- - - - - - 0x002787 00:A777: FA        .byte $FA, $A1, $ED   ; 
- - - - - - 0x00278A 00:A77A: 02        .byte $02, $A9, $ED   ; 



off_04_A7CC_5F:
- - - - - - 0x0027DC 00:A7CC: FF        .byte $FF   ; 
off_04_A786_5B:
- - - - - - 0x002796 00:A786: 82        .byte $82   ; counter
- - - - - - 0x002797 00:A787: 42        .byte $42   ; spr_A
- - - - - - 0x002798 00:A788: 01        .byte $01, $11, $FD   ; spr_X, spr_T, spr_Y
- - - - - - 0x00279B 00:A78B: F9        .byte $F9, $13, $FD   ; 

- - - - - - 0x00279E 00:A78E: 02        .byte $02   ; 
- - - - - - 0x00279F 00:A78F: 02        .byte $02   ; 
- - - - - - 0x0027A0 00:A790: FA        .byte $FA, $81, $ED   ; 
- - - - - - 0x0027A3 00:A793: 02        .byte $02, $83, $ED   ; 



off_04_A7CF_60:
- - - - - - 0x0027DF 00:A7CF: FF        .byte $FF   ; 
off_04_A796_5C:
- - - - - - 0x0027A6 00:A796: 82        .byte $82   ; counter
- - - - - - 0x0027A7 00:A797: 42        .byte $42   ; spr_A
- - - - - - 0x0027A8 00:A798: 01        .byte $01, $11, $FD   ; spr_X, spr_T, spr_Y
- - - - - - 0x0027AB 00:A79B: F9        .byte $F9, $13, $FD   ; 

- - - - - - 0x0027AE 00:A79E: 02        .byte $02   ; 
- - - - - - 0x0027AF 00:A79F: 02        .byte $02   ; 
- - - - - - 0x0027B0 00:A7A0: F7        .byte $F7, $89, $ED   ; 
- - - - - - 0x0027B3 00:A7A3: FF        .byte $FF, $8B, $ED   ; 



off_04_A7D2_61:
- - - - - - 0x0027E2 00:A7D2: FF        .byte $FF   ; 
off_04_A7A6_5D:
- - - - - - 0x0027B6 00:A7A6: 83        .byte $83   ; counter
- - - - - - 0x0027B7 00:A7A7: 02        .byte $02   ; spr_A
- - - - - - 0x0027B8 00:A7A8: EF        .byte $EF, $8D, $F3   ; spr_X, spr_T, spr_Y
- - - - - - 0x0027BB 00:A7AB: F7        .byte $F7, $8F, $F3   ; 
- - - - - - 0x0027BE 00:A7AE: FF        .byte $FF, $91, $F3   ; 

- - - - - - 0x0027C1 00:A7B1: 02        .byte $02   ; 
- - - - - - 0x0027C2 00:A7B2: 42        .byte $42   ; 
- - - - - - 0x0027C3 00:A7B3: 01        .byte $01, $27, $02   ; 
- - - - - - 0x0027C6 00:A7B6: F9        .byte $F9, $29, $02   ; 



off_04_A7D5_62:
- - - - - - 0x0027E5 00:A7D5: FF        .byte $FF   ; 
off_04_A7B9_5E:
- - - - - - 0x0027C9 00:A7B9: 83        .byte $83   ; counter
- - - - - - 0x0027CA 00:A7BA: 02        .byte $02   ; spr_A
- - - - - - 0x0027CB 00:A7BB: EF        .byte $EF, $93, $EF   ; spr_X, spr_T, spr_Y
- - - - - - 0x0027CE 00:A7BE: F7        .byte $F7, $95, $F2   ; 
- - - - - - 0x0027D1 00:A7C1: FF        .byte $FF, $91, $F2   ; 

- - - - - - 0x0027D4 00:A7C4: 02        .byte $02   ; 
- - - - - - 0x0027D5 00:A7C5: 42        .byte $42   ; 
- - - - - - 0x0027D6 00:A7C6: 01        .byte $01, $27, $02   ; 
- - - - - - 0x0027D9 00:A7C9: F9        .byte $F9, $29, $02   ; 



off_04_A7E9_64:
- - - - - - 0x0027F9 00:A7E9: FF        .byte $FF   ; 
off_04_A7D8_63:
- D 1 - I - 0x0027E8 00:A7D8: 05        .byte $05   ; counter
- D 1 - I - 0x0027E9 00:A7D9: 02        .byte $02   ; spr_A
- D 1 - I - 0x0027EA 00:A7DA: F0        .byte $F0, $93, $ED   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0027ED 00:A7DD: F8        .byte $F8, $95, $F0   ; 
- D 1 - I - 0x0027F0 00:A7E0: 00        .byte $00, $91, $F0   ; 
- D 1 - I - 0x0027F3 00:A7E3: F8        .byte $F8, $97, $00   ; 
- D 1 - I - 0x0027F6 00:A7E6: 00        .byte $00, $99, $00   ; 



off_04_A7F9_66:
- - - - - - 0x002809 00:A7F9: FF        .byte $FF   ; 
off_04_A7EC_65:
- D 1 - I - 0x0027FC 00:A7EC: 82        .byte $82   ; counter
- D 1 - I - 0x0027FD 00:A7ED: 42        .byte $42   ; spr_A
- D 1 - I - 0x0027FE 00:A7EE: FA        .byte $FA, $17, $F7   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002801 00:A7F1: F2        .byte $F2, $19, $F7   ; 

- D 1 - I - 0x002804 00:A7F4: 01        .byte $01   ; 
- D 1 - I - 0x002805 00:A7F5: 02        .byte $02   ; 
- D 1 - I - 0x002806 00:A7F6: 02        .byte $02, $9B, $F7   ; 



off_04_A812_68:
- - - - - - 0x002822 00:A812: FF        .byte $FF   ; 
off_04_A7FC_67:
- D 1 - I - 0x00280C 00:A7FC: 82        .byte $82   ; counter
- D 1 - I - 0x00280D 00:A7FD: 02        .byte $02   ; spr_A
- D 1 - I - 0x00280E 00:A7FE: FB        .byte $FB, $9D, $F1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002811 00:A801: 03        .byte $03, $9F, $F1   ; 

- D 1 - I - 0x002814 00:A804: 04        .byte $04   ; 
- D 1 - I - 0x002815 00:A805: 42        .byte $42   ; 
- D 1 - I - 0x002816 00:A806: 06        .byte $06, $1B, $01   ; 
- D 1 - I - 0x002819 00:A809: FE        .byte $FE, $1D, $01   ; 
- D 1 - I - 0x00281C 00:A80C: F6        .byte $F6, $1F, $01   ; 
- D 1 - I - 0x00281F 00:A80F: EE        .byte $EE, $21, $01   ; 



off_04_A87F_6D:
- D 1 - I - 0x00288F 00:A87F: FF        .byte $FF   ; 
off_04_A815_69:
- D 1 - I - 0x002825 00:A815: 82        .byte $82   ; counter
- D 1 - I - 0x002826 00:A816: 01        .byte $01   ; spr_A
- D 1 - I - 0x002827 00:A817: EF        .byte $EF, $AB, $EF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x00282A 00:A81A: F7        .byte $F7, $AD, $EF   ; 

- D 1 - I - 0x00282D 00:A81D: 81        .byte $81   ; 
- D 1 - I - 0x00282E 00:A81E: 00        .byte $00   ; 
- D 1 - I - 0x00282F 00:A81F: FF        .byte $FF, $AF, $EF   ; 

- D 1 - I - 0x002832 00:A822: 81        .byte $81   ; 
- D 1 - I - 0x002833 00:A823: 41        .byte $41   ; 
- D 1 - I - 0x002834 00:A824: 07        .byte $07, $AB, $EF   ; 

- D 1 - I - 0x002837 00:A827: 02        .byte $02   ; 
- D 1 - I - 0x002838 00:A828: 40        .byte $40   ; 
- D 1 - I - 0x002839 00:A829: 00        .byte $00, $01, $FF   ; 
- D 1 - I - 0x00283C 00:A82C: F8        .byte $F8, $03, $FF   ; 



off_04_A882_6E:
- D 1 - I - 0x002892 00:A882: FF        .byte $FF   ; 
off_04_A82F_6A:
- D 1 - I - 0x00283F 00:A82F: 82        .byte $82   ; counter
- D 1 - I - 0x002840 00:A830: 01        .byte $01   ; spr_A
- D 1 - I - 0x002841 00:A831: EE        .byte $EE, $B7, $F1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002844 00:A834: 06        .byte $06, $BD, $F1   ; 

- D 1 - I - 0x002847 00:A837: 81        .byte $81   ; 
- D 1 - I - 0x002848 00:A838: 40        .byte $40   ; 
- D 1 - I - 0x002849 00:A839: F8        .byte $F8, $07, $FF   ; 

- D 1 - I - 0x00284C 00:A83C: 81        .byte $81   ; 
- D 1 - I - 0x00284D 00:A83D: 01        .byte $01   ; 
- D 1 - I - 0x00284E 00:A83E: F6        .byte $F6, $BF, $F1   ; 

- D 1 - I - 0x002851 00:A841: 81        .byte $81   ; 
- D 1 - I - 0x002852 00:A842: 40        .byte $40   ; 
- D 1 - I - 0x002853 00:A843: 00        .byte $00, $05, $FF   ; 

- D 1 - I - 0x002856 00:A846: 01        .byte $01   ; 
- D 1 - I - 0x002857 00:A847: 00        .byte $00   ; 
- D 1 - I - 0x002858 00:A848: FE        .byte $FE, $BB, $F1   ; 



off_04_A885_6F:
- - - - - - 0x002895 00:A885: FF        .byte $FF   ; 
off_04_A84B_6B:
- D 1 - I - 0x00285B 00:A84B: 82        .byte $82   ; counter
- D 1 - I - 0x00285C 00:A84C: 40        .byte $40   ; spr_A
- D 1 - I - 0x00285D 00:A84D: FE        .byte $FE, $09, $FF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002860 00:A850: F6        .byte $F6, $0B, $FF   ; 

- D 1 - I - 0x002863 00:A853: 82        .byte $82   ; 
- D 1 - I - 0x002864 00:A854: 01        .byte $01   ; 
- D 1 - I - 0x002865 00:A855: EC        .byte $EC, $AB, $EF   ; 
- D 1 - I - 0x002868 00:A858: F4        .byte $F4, $AD, $EF   ; 

- D 1 - I - 0x00286B 00:A85B: 81        .byte $81   ; 
- D 1 - I - 0x00286C 00:A85C: 00        .byte $00   ; 
- D 1 - I - 0x00286D 00:A85D: FC        .byte $FC, $AF, $EF   ; 

- D 1 - I - 0x002870 00:A860: 01        .byte $01   ; 
- D 1 - I - 0x002871 00:A861: 41        .byte $41   ; 
- D 1 - I - 0x002872 00:A862: 04        .byte $04, $AB, $EF   ; 



off_04_A888_70:
- - - - - - 0x002898 00:A888: FF        .byte $FF   ; 
off_04_A865_6C:
- D 1 - I - 0x002875 00:A865: 82        .byte $82   ; counter
- D 1 - I - 0x002876 00:A866: 40        .byte $40   ; spr_A
- D 1 - I - 0x002877 00:A867: FF        .byte $FF, $0D, $FF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x00287A 00:A86A: F7        .byte $F7, $0F, $FF   ; 

- D 1 - I - 0x00287D 00:A86D: 82        .byte $82   ; 
- D 1 - I - 0x00287E 00:A86E: 01        .byte $01   ; 
- D 1 - I - 0x00287F 00:A86F: EE        .byte $EE, $B7, $F1   ; 
- D 1 - I - 0x002882 00:A872: F6        .byte $F6, $BF, $F1   ; 

- D 1 - I - 0x002885 00:A875: 81        .byte $81   ; 
- D 1 - I - 0x002886 00:A876: 00        .byte $00   ; 
- D 1 - I - 0x002887 00:A877: FE        .byte $FE, $BB, $F1   ; 

- D 1 - I - 0x00288A 00:A87A: 01        .byte $01   ; 
- D 1 - I - 0x00288B 00:A87B: 01        .byte $01   ; 
- D 1 - I - 0x00288C 00:A87C: 06        .byte $06, $BD, $F1   ; 



off_04_A905_75:
- D 1 - I - 0x002915 00:A905: FF        .byte $FF   ; 
off_04_A88B_71:
- D 1 - I - 0x00289B 00:A88B: 82        .byte $82   ; counter
- D 1 - I - 0x00289C 00:A88C: 01        .byte $01   ; spr_A
- D 1 - I - 0x00289D 00:A88D: F0        .byte $F0, $AB, $EE   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0028A0 00:A890: F8        .byte $F8, $AD, $EE   ; 

- D 1 - I - 0x0028A3 00:A893: 81        .byte $81   ; 
- D 1 - I - 0x0028A4 00:A894: 00        .byte $00   ; 
- D 1 - I - 0x0028A5 00:A895: 00        .byte $00, $AF, $EE   ; 

- D 1 - I - 0x0028A8 00:A898: 81        .byte $81   ; 
- D 1 - I - 0x0028A9 00:A899: 41        .byte $41   ; 
- D 1 - I - 0x0028AA 00:A89A: 08        .byte $08, $AB, $EE   ; 

- D 1 - I - 0x0028AD 00:A89D: 02        .byte $02   ; 
- D 1 - I - 0x0028AE 00:A89E: 40        .byte $40   ; 
- D 1 - I - 0x0028AF 00:A89F: 01        .byte $01, $27, $FE   ; 
- D 1 - I - 0x0028B2 00:A8A2: F9        .byte $F9, $29, $FE   ; 



off_04_A908_76:
- - - - - - 0x002918 00:A908: FF        .byte $FF   ; 
off_04_A8A5_72:
- D 1 - I - 0x0028B5 00:A8A5: 82        .byte $82   ; counter
- D 1 - I - 0x0028B6 00:A8A6: 01        .byte $01   ; spr_A
- D 1 - I - 0x0028B7 00:A8A7: F0        .byte $F0, $AB, $EE   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0028BA 00:A8AA: F8        .byte $F8, $AD, $EE   ; 

- D 1 - I - 0x0028BD 00:A8AD: 81        .byte $81   ; 
- D 1 - I - 0x0028BE 00:A8AE: 00        .byte $00   ; 
- D 1 - I - 0x0028BF 00:A8AF: 00        .byte $00, $AF, $EE   ; 

- D 1 - I - 0x0028C2 00:A8B2: 81        .byte $81   ; 
- D 1 - I - 0x0028C3 00:A8B3: 41        .byte $41   ; 
- D 1 - I - 0x0028C4 00:A8B4: 08        .byte $08, $AB, $EE   ; 

- D 1 - I - 0x0028C7 00:A8B7: 82        .byte $82   ; 
- D 1 - I - 0x0028C8 00:A8B8: 40        .byte $40   ; 
- D 1 - I - 0x0028C9 00:A8B9: 01        .byte $01, $27, $FE   ; 
- D 1 - I - 0x0028CC 00:A8BC: F9        .byte $F9, $29, $FE   ; 

- D 1 - I - 0x0028CF 00:A8BF: 81        .byte $81   ; 
- D 1 - I - 0x0028D0 00:A8C0: 03        .byte $03   ; 
- D 1 - I - 0x0028D1 00:A8C1: E1        .byte $E1, $F5, $EE   ; 

- D 1 - I - 0x0028D4 00:A8C4: 01        .byte $01   ; 
- D 1 - I - 0x0028D5 00:A8C5: 43        .byte $43   ; 
- D 1 - I - 0x0028D6 00:A8C6: E9        .byte $E9, $F5, $EE   ; 



off_04_A90B_77:
- - - - - - 0x00291B 00:A90B: FF        .byte $FF   ; 
off_04_A8C9_73:
- D 1 - I - 0x0028D9 00:A8C9: 82        .byte $82   ; counter
- D 1 - I - 0x0028DA 00:A8CA: 40        .byte $40   ; spr_A
- D 1 - I - 0x0028DB 00:A8CB: 01        .byte $01, $27, $FE   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0028DE 00:A8CE: F9        .byte $F9, $29, $FE   ; 

- D 1 - I - 0x0028E1 00:A8D1: 82        .byte $82   ; 
- D 1 - I - 0x0028E2 00:A8D2: 03        .byte $03   ; 
- D 1 - I - 0x0028E3 00:A8D3: F2        .byte $F2, $B7, $EE   ; 
- D 1 - I - 0x0028E6 00:A8D6: FA        .byte $FA, $B9, $EE   ; 

- D 1 - I - 0x0028E9 00:A8D9: 81        .byte $81   ; 
- D 1 - I - 0x0028EA 00:A8DA: 00        .byte $00   ; 
- D 1 - I - 0x0028EB 00:A8DB: 02        .byte $02, $BB, $EE   ; 

- D 1 - I - 0x0028EE 00:A8DE: 81        .byte $81   ; 
- D 1 - I - 0x0028EF 00:A8DF: 01        .byte $01   ; 
- D 1 - I - 0x0028F0 00:A8E0: 0A        .byte $0A, $BD, $EE   ; 

- D 1 - I - 0x0028F3 00:A8E3: 01        .byte $01   ; 
- D 1 - I - 0x0028F4 00:A8E4: 03        .byte $03   ; 
- D 1 - I - 0x0028F5 00:A8E5: E1        .byte $E1, $FF, $EE   ; 



off_04_A90E_78:
- - - - - - 0x00291E 00:A90E: FF        .byte $FF   ; 
off_04_A8E8_74:
- D 1 - I - 0x0028F8 00:A8E8: 82        .byte $82   ; counter
- D 1 - I - 0x0028F9 00:A8E9: 40        .byte $40   ; spr_A
- D 1 - I - 0x0028FA 00:A8EA: 01        .byte $01, $27, $FE   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0028FD 00:A8ED: F9        .byte $F9, $29, $FE   ; 

- D 1 - I - 0x002900 00:A8F0: 81        .byte $81   ; 
- D 1 - I - 0x002901 00:A8F1: 00        .byte $00   ; 
- D 1 - I - 0x002902 00:A8F2: 01        .byte $01, $BB, $EE   ; 

- D 1 - I - 0x002905 00:A8F5: 83        .byte $83   ; 
- D 1 - I - 0x002906 00:A8F6: 01        .byte $01   ; 
- D 1 - I - 0x002907 00:A8F7: 09        .byte $09, $BD, $EE   ; 
- D 1 - I - 0x00290A 00:A8FA: F1        .byte $F1, $B7, $EE   ; 
- D 1 - I - 0x00290D 00:A8FD: F9        .byte $F9, $B9, $EE   ; 

- D 1 - I - 0x002910 00:A900: 01        .byte $01   ; 
- D 1 - I - 0x002911 00:A901: 43        .byte $43   ; 
- D 1 - I - 0x002912 00:A902: E9        .byte $E9, $FF, $EE   ; 



off_04_A92B_7A:
- D 1 - I - 0x00293B 00:A92B: FF        .byte $FF   ; 
off_04_A911_79:
- D 1 - I - 0x002921 00:A911: 82        .byte $82   ; counter
- D 1 - I - 0x002922 00:A912: 00        .byte $00   ; spr_A
- D 1 - I - 0x002923 00:A913: FA        .byte $FA, $B1, $F7   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002926 00:A916: 02        .byte $02, $B3, $F7   ; 

- D 1 - I - 0x002929 00:A919: 81        .byte $81   ; 
- D 1 - I - 0x00292A 00:A91A: 40        .byte $40   ; 
- D 1 - I - 0x00292B 00:A91B: F2        .byte $F2, $19, $F7   ; 

- D 1 - I - 0x00292E 00:A91E: 82        .byte $82   ; 
- D 1 - I - 0x00292F 00:A91F: 01        .byte $01   ; 
- D 1 - I - 0x002930 00:A920: FA        .byte $FA, $B5, $E7   ; 
- D 1 - I - 0x002933 00:A923: F2        .byte $F2, $AB, $E7   ; 

- D 1 - I - 0x002936 00:A926: 01        .byte $01   ; 
- D 1 - I - 0x002937 00:A927: 41        .byte $41   ; 
- D 1 - I - 0x002938 00:A928: 02        .byte $02, $AB, $E7   ; 



off_04_A944_7C:
- D 1 - I - 0x002954 00:A944: FF        .byte $FF   ; 
off_04_A92E_7B:
- D 1 - I - 0x00293E 00:A92E: 82        .byte $82   ; counter
- D 1 - I - 0x00293F 00:A92F: 00        .byte $00   ; spr_A
- D 1 - I - 0x002940 00:A930: FB        .byte $FB, $9D, $F1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002943 00:A933: 03        .byte $03, $9F, $F1   ; 

- D 1 - I - 0x002946 00:A936: 04        .byte $04   ; 
- D 1 - I - 0x002947 00:A937: 40        .byte $40   ; 
- D 1 - I - 0x002948 00:A938: 06        .byte $06, $1B, $01   ; 
- D 1 - I - 0x00294B 00:A93B: FE        .byte $FE, $1D, $01   ; 
- D 1 - I - 0x00294E 00:A93E: F6        .byte $F6, $1F, $01   ; 
- D 1 - I - 0x002951 00:A941: EE        .byte $EE, $21, $01   ; 



off_04_A961_7E:
- D 1 - I - 0x002971 00:A961: FF        .byte $FF   ; 
off_04_A947_7D:
- D 1 - I - 0x002957 00:A947: 82        .byte $82   ; counter
- D 1 - I - 0x002958 00:A948: 01        .byte $01   ; spr_A
- D 1 - I - 0x002959 00:A949: F0        .byte $F0, $AB, $F0   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x00295C 00:A94C: F8        .byte $F8, $AD, $F0   ; 

- D 1 - I - 0x00295F 00:A94F: 81        .byte $81   ; 
- D 1 - I - 0x002960 00:A950: 00        .byte $00   ; 
- D 1 - I - 0x002961 00:A951: 00        .byte $00, $AF, $F0   ; 

- D 1 - I - 0x002964 00:A954: 81        .byte $81   ; 
- D 1 - I - 0x002965 00:A955: 41        .byte $41   ; 
- D 1 - I - 0x002966 00:A956: 08        .byte $08, $AB, $F0   ; 

- D 1 - I - 0x002969 00:A959: 02        .byte $02   ; 
- D 1 - I - 0x00296A 00:A95A: 00        .byte $00   ; 
- D 1 - I - 0x00296B 00:A95B: F8        .byte $F8, $97, $00   ; 
- D 1 - I - 0x00296E 00:A95E: 00        .byte $00, $99, $00   ; 



off_04_A98C_81:
- D 1 - I - 0x00299C 00:A98C: FF        .byte $FF   ; 
off_04_A964_7F:
- D 1 - I - 0x002974 00:A964: 83        .byte $83   ; counter
- D 1 - I - 0x002975 00:A965: 01        .byte $01   ; spr_A
- D 1 - I - 0x002976 00:A966: EE        .byte $EE, $AB, $F2   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002979 00:A969: F6        .byte $F6, $AD, $EF   ; 
- D 1 - I - 0x00297C 00:A96C: FE        .byte $FE, $AF, $EF   ; 

- D 1 - I - 0x00297F 00:A96F: 02        .byte $02   ; 
- D 1 - I - 0x002980 00:A970: 41        .byte $41   ; 
- D 1 - I - 0x002981 00:A971: FF        .byte $FF, $11, $FF   ; 
- D 1 - I - 0x002984 00:A974: F7        .byte $F7, $13, $FF   ; 



off_04_A98F_82:
- - - - - - 0x00299F 00:A98F: FF        .byte $FF   ; 
off_04_A977_80:
- - - - - - 0x002987 00:A977: 81        .byte $81   ; counter
- - - - - - 0x002988 00:A978: 01        .byte $01   ; spr_A
- - - - - - 0x002989 00:A979: ED        .byte $ED, $AB, $F3   ; spr_X, spr_T, spr_Y

- - - - - - 0x00298C 00:A97C: 82        .byte $82   ; 
- - - - - - 0x00298D 00:A97D: 41        .byte $41   ; 
- - - - - - 0x00298E 00:A97E: FF        .byte $FF, $11, $FF   ; 
- - - - - - 0x002991 00:A981: F7        .byte $F7, $13, $FF   ; 

- - - - - - 0x002994 00:A984: 02        .byte $02   ; 
- - - - - - 0x002995 00:A985: 01        .byte $01   ; 
- - - - - - 0x002996 00:A986: FD        .byte $FD, $AF, $F0   ; 
- - - - - - 0x002999 00:A989: F5        .byte $F5, $AD, $F0   ; 



off_04_A9B8_85:
- D 1 - I - 0x0029C8 00:A9B8: FF        .byte $FF   ; 
off_04_A992_83:
- D 1 - I - 0x0029A2 00:A992: 82        .byte $82   ; counter
- D 1 - I - 0x0029A3 00:A993: 41        .byte $41   ; spr_A
- D 1 - I - 0x0029A4 00:A994: 01        .byte $01, $27, $FE   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0029A7 00:A997: F9        .byte $F9, $29, $FE   ; 

- D 1 - I - 0x0029AA 00:A99A: 03        .byte $03   ; 
- D 1 - I - 0x0029AB 00:A99B: 01        .byte $01   ; 
- D 1 - I - 0x0029AC 00:A99C: F1        .byte $F1, $B1, $EE   ; 
- D 1 - I - 0x0029AF 00:A99F: F9        .byte $F9, $B3, $EE   ; 
- D 1 - I - 0x0029B2 00:A9A2: 01        .byte $01, $B5, $EE   ; 



off_04_A9BB_86:
- D 1 - I - 0x0029CB 00:A9BB: FF        .byte $FF   ; 
off_04_A9A5_84:
- D 1 - I - 0x0029B5 00:A9A5: 82        .byte $82   ; counter
- D 1 - I - 0x0029B6 00:A9A6: 41        .byte $41   ; spr_A
- D 1 - I - 0x0029B7 00:A9A7: 01        .byte $01, $27, $FE   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0029BA 00:A9AA: F9        .byte $F9, $29, $FE   ; 

- D 1 - I - 0x0029BD 00:A9AD: 03        .byte $03   ; 
- D 1 - I - 0x0029BE 00:A9AE: 01        .byte $01   ; 
- D 1 - I - 0x0029BF 00:A9AF: F2        .byte $F2, $B1, $EF   ; 
- D 1 - I - 0x0029C2 00:A9B2: FA        .byte $FA, $B3, $EF   ; 
- D 1 - I - 0x0029C5 00:A9B5: 02        .byte $02, $B5, $EF   ; 



off_04_A9DA_89:
- - - - - - 0x0029EA 00:A9DA: FF        .byte $FF   ; 
off_04_A9BE_87:
- - - - - - 0x0029CE 00:A9BE: 04        .byte $04   ; counter
- - - - - - 0x0029CF 00:A9BF: 01        .byte $01   ; spr_A
- - - - - - 0x0029D0 00:A9C0: F7        .byte $F7, $CD, $FD   ; spr_X, spr_T, spr_Y
- - - - - - 0x0029D3 00:A9C3: FF        .byte $FF, $CF, $FD   ; 
- - - - - - 0x0029D6 00:A9C6: FE        .byte $FE, $B9, $ED   ; 
- - - - - - 0x0029D9 00:A9C9: F6        .byte $F6, $B7, $EA   ; 



off_04_A9DD_8A:
- - - - - - 0x0029ED 00:A9DD: FF        .byte $FF   ; 
off_04_A9CC_88:
- - - - - - 0x0029DC 00:A9CC: 04        .byte $04   ; counter
- - - - - - 0x0029DD 00:A9CD: 01        .byte $01   ; spr_A
- - - - - - 0x0029DE 00:A9CE: F7        .byte $F7, $CD, $FD   ; spr_X, spr_T, spr_Y
- - - - - - 0x0029E1 00:A9D1: FF        .byte $FF, $CF, $FD   ; 
- - - - - - 0x0029E4 00:A9D4: F7        .byte $F7, $B7, $EB   ; 
- - - - - - 0x0029E7 00:A9D7: FF        .byte $FF, $B9, $ED   ; 



off_04_A9ED_8C:
- D 1 - I - 0x0029FD 00:A9ED: FF        .byte $FF   ; 
off_04_A9E0_8B:
- D 1 - I - 0x0029F0 00:A9E0: 81        .byte $81   ; counter
- D 1 - I - 0x0029F1 00:A9E1: 01        .byte $01   ; spr_A
- D 1 - I - 0x0029F2 00:A9E2: 02        .byte $02, $BB, $F7   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x0029F5 00:A9E5: 02        .byte $02   ; 
- D 1 - I - 0x0029F6 00:A9E6: 41        .byte $41   ; 
- D 1 - I - 0x0029F7 00:A9E7: FA        .byte $FA, $17, $F7   ; 
- D 1 - I - 0x0029FA 00:A9EA: F2        .byte $F2, $19, $F7   ; 



off_04_AA06_8E:
- D 1 - I - 0x002A16 00:AA06: FF        .byte $FF   ; 
off_04_A9F0_8D:
- D 1 - I - 0x002A00 00:A9F0: 82        .byte $82   ; counter
- D 1 - I - 0x002A01 00:A9F1: 01        .byte $01   ; spr_A
- D 1 - I - 0x002A02 00:A9F2: F9        .byte $F9, $BD, $F0   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002A05 00:A9F5: 01        .byte $01, $BF, $F0   ; 

- D 1 - I - 0x002A08 00:A9F8: 04        .byte $04   ; 
- D 1 - I - 0x002A09 00:A9F9: 41        .byte $41   ; 
- D 1 - I - 0x002A0A 00:A9FA: 06        .byte $06, $1B, $00   ; 
- D 1 - I - 0x002A0D 00:A9FD: FE        .byte $FE, $1D, $00   ; 
- D 1 - I - 0x002A10 00:AA00: F6        .byte $F6, $1F, $00   ; 
- D 1 - I - 0x002A13 00:AA03: EE        .byte $EE, $21, $00   ; 



off_04_AA55_93:
- D 1 - I - 0x002A65 00:AA55: FF        .byte $FF   ; 
off_04_AA09_8F:
- D 1 - I - 0x002A19 00:AA09: 82        .byte $82   ; counter
- D 1 - I - 0x002A1A 00:AA0A: 41        .byte $41   ; spr_A
- D 1 - I - 0x002A1B 00:AA0B: 00        .byte $00, $01, $FF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002A1E 00:AA0E: F8        .byte $F8, $03, $FF   ; 

- D 1 - I - 0x002A21 00:AA11: 03        .byte $03   ; 
- D 1 - I - 0x002A22 00:AA12: 01        .byte $01   ; 
- D 1 - I - 0x002A23 00:AA13: EF        .byte $EF, $B1, $EF   ; 
- D 1 - I - 0x002A26 00:AA16: F7        .byte $F7, $A9, $EF   ; 
- D 1 - I - 0x002A29 00:AA19: FF        .byte $FF, $B5, $EF   ; 



off_04_AA58_94:
- - - - - - 0x002A68 00:AA58: FF        .byte $FF   ; 
off_04_AA1C_90:
- D 1 - I - 0x002A2C 00:AA1C: 82        .byte $82   ; counter
- D 1 - I - 0x002A2D 00:AA1D: 41        .byte $41   ; spr_A
- D 1 - I - 0x002A2E 00:AA1E: 00        .byte $00, $05, $FF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002A31 00:AA21: F8        .byte $F8, $07, $FF   ; 

- D 1 - I - 0x002A34 00:AA24: 03        .byte $03   ; 
- D 1 - I - 0x002A35 00:AA25: 01        .byte $01   ; 
- D 1 - I - 0x002A36 00:AA26: EE        .byte $EE, $B1, $F0   ; 
- D 1 - I - 0x002A39 00:AA29: F6        .byte $F6, $A9, $F0   ; 
- D 1 - I - 0x002A3C 00:AA2C: FE        .byte $FE, $B5, $F0   ; 



off_04_AA5B_95:
- - - - - - 0x002A6B 00:AA5B: FF        .byte $FF   ; 
off_04_AA2F_91:
- D 1 - I - 0x002A3F 00:AA2F: 82        .byte $82   ; counter
- D 1 - I - 0x002A40 00:AA30: 41        .byte $41   ; spr_A
- D 1 - I - 0x002A41 00:AA31: FE        .byte $FE, $09, $FF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002A44 00:AA34: F6        .byte $F6, $0B, $FF   ; 

- D 1 - I - 0x002A47 00:AA37: 03        .byte $03   ; 
- D 1 - I - 0x002A48 00:AA38: 01        .byte $01   ; 
- D 1 - I - 0x002A49 00:AA39: EC        .byte $EC, $B1, $EF   ; 
- D 1 - I - 0x002A4C 00:AA3C: F4        .byte $F4, $A9, $EF   ; 
- D 1 - I - 0x002A4F 00:AA3F: FC        .byte $FC, $B5, $EF   ; 



off_04_AA5E_96:
- - - - - - 0x002A6E 00:AA5E: FF        .byte $FF   ; 
off_04_AA42_92:
- D 1 - I - 0x002A52 00:AA42: 82        .byte $82   ; counter
- D 1 - I - 0x002A53 00:AA43: 41        .byte $41   ; spr_A
- D 1 - I - 0x002A54 00:AA44: FF        .byte $FF, $0D, $FF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002A57 00:AA47: F7        .byte $F7, $0F, $FF   ; 

- D 1 - I - 0x002A5A 00:AA4A: 03        .byte $03   ; 
- D 1 - I - 0x002A5B 00:AA4B: 01        .byte $01   ; 
- D 1 - I - 0x002A5C 00:AA4C: EE        .byte $EE, $B1, $F0   ; 
- D 1 - I - 0x002A5F 00:AA4F: F6        .byte $F6, $A9, $F0   ; 
- D 1 - I - 0x002A62 00:AA52: FE        .byte $FE, $B5, $F0   ; 



_off032_AA61_06:
- - - - - - 0x002A71 00:AA61: A1 AA     .word off_06_AAA1_00
- D 1 - I - 0x002A73 00:AA63: A1 AA     .word off_06_AAA1_01
- D 1 - I - 0x002A75 00:AA65: C8 AA     .word off_06_AAC8_02
- D 1 - I - 0x002A77 00:AA67: E3 AA     .word off_06_AAE3_03
- D 1 - I - 0x002A79 00:AA69: 04 AB     .word off_06_AB04_04
- D 1 - I - 0x002A7B 00:AA6B: 25 AB     .word off_06_AB25_05
- D 1 - I - 0x002A7D 00:AA6D: 28 AB     .word off_06_AB28_06
- D 1 - I - 0x002A7F 00:AA6F: 2B AB     .word off_06_AB2B_07
- D 1 - I - 0x002A81 00:AA71: 2E AB     .word off_06_AB2E_08
- D 1 - I - 0x002A83 00:AA73: 31 AB     .word off_06_AB31_09
- D 1 - I - 0x002A85 00:AA75: 4D AB     .word off_06_AB4D_0A
- D 1 - I - 0x002A87 00:AA77: 69 AB     .word off_06_AB69_0B
- D 1 - I - 0x002A89 00:AA79: 85 AB     .word off_06_AB85_0C
- D 1 - I - 0x002A8B 00:AA7B: A1 AB     .word off_06_ABA1_0D
- D 1 - I - 0x002A8D 00:AA7D: C5 AB     .word off_06_ABC5_0E
- D 1 - I - 0x002A8F 00:AA7F: E9 AB     .word off_06_ABE9_0F
- D 1 - I - 0x002A91 00:AA81: EC AB     .word off_06_ABEC_10
- D 1 - I - 0x002A93 00:AA83: EF AB     .word off_06_ABEF_11
- D 1 - I - 0x002A95 00:AA85: F2 AB     .word off_06_ABF2_12
- D 1 - I - 0x002A97 00:AA87: F5 AB     .word off_06_ABF5_13
- D 1 - I - 0x002A99 00:AA89: 0C AC     .word off_06_AC0C_14
- D 1 - I - 0x002A9B 00:AA8B: 2D AC     .word off_06_AC2D_15
- D 1 - I - 0x002A9D 00:AA8D: 51 AC     .word off_06_AC51_16
- D 1 - I - 0x002A9F 00:AA8F: 71 AC     .word off_06_AC71_17
- D 1 - I - 0x002AA1 00:AA91: 74 AC     .word off_06_AC74_18
- D 1 - I - 0x002AA3 00:AA93: 77 AC     .word off_06_AC77_19
- D 1 - I - 0x002AA5 00:AA95: 7A AC     .word off_06_AC7A_1A
- D 1 - I - 0x002AA7 00:AA97: 7D AC     .word off_06_AC7D_1B
- D 1 - I - 0x002AA9 00:AA99: 9A AC     .word off_06_AC9A_1C
- D 1 - I - 0x002AAB 00:AA9B: B4 AC     .word off_06_ACB4_1D
- D 1 - I - 0x002AAD 00:AA9D: C8 AC     .word off_06_ACC8_1E
- D 1 - I - 0x002AAF 00:AA9F: DF AC     .word off_06_ACDF_1F



off_06_AB25_05:
- D 1 - I - 0x002B35 00:AB25: FF        .byte $FF   ; 
off_06_AAA1_00:
off_06_AAA1_01:
- D 1 - I - 0x002AB1 00:AAA1: 84        .byte $84   ; counter
- D 1 - I - 0x002AB2 00:AAA2: 02        .byte $02   ; spr_A
- D 1 - I - 0x002AB3 00:AAA3: EF        .byte $EF, $81, $E1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002AB6 00:AAA6: F7        .byte $F7, $83, $E1   ; 
- D 1 - I - 0x002AB9 00:AAA9: FF        .byte $FF, $85, $E1   ; 
- D 1 - I - 0x002ABC 00:AAAC: 07        .byte $07, $87, $E1   ; 

- D 1 - I - 0x002ABF 00:AAAF: 81        .byte $81   ; 
- D 1 - I - 0x002AC0 00:AAB0: 00        .byte $00   ; 
- D 1 - I - 0x002AC1 00:AAB1: EF        .byte $EF, $89, $F1   ; 

- D 1 - I - 0x002AC4 00:AAB4: 06        .byte $06   ; 
- D 1 - I - 0x002AC5 00:AAB5: 02        .byte $02   ; 
- D 1 - I - 0x002AC6 00:AAB6: F7        .byte $F7, $8B, $F1   ; 
- D 1 - I - 0x002AC9 00:AAB9: FF        .byte $FF, $8D, $F1   ; 
- D 1 - I - 0x002ACC 00:AABC: 07        .byte $07, $8F, $F1   ; 
- D 1 - I - 0x002ACF 00:AABF: F7        .byte $F7, $91, $01   ; 
- D 1 - I - 0x002AD2 00:AAC2: FF        .byte $FF, $93, $01   ; 
- D 1 - I - 0x002AD5 00:AAC5: 07        .byte $07, $95, $01   ; 



off_06_AB28_06:
- D 1 - I - 0x002B38 00:AB28: FF        .byte $FF   ; 
off_06_AAC8_02:
- D 1 - I - 0x002AD8 00:AAC8: 82        .byte $82   ; counter
- D 1 - I - 0x002AD9 00:AAC9: 02        .byte $02   ; spr_A
- D 1 - I - 0x002ADA 00:AACA: F0        .byte $F0, $97, $E1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002ADD 00:AACD: F8        .byte $F8, $99, $E1   ; 

- D 1 - I - 0x002AE0 00:AAD0: 81        .byte $81   ; 
- D 1 - I - 0x002AE1 00:AAD1: 00        .byte $00   ; 
- D 1 - I - 0x002AE2 00:AAD2: EC        .byte $EC, $9B, $F1   ; 

- D 1 - I - 0x002AE5 00:AAD5: 04        .byte $04   ; 
- D 1 - I - 0x002AE6 00:AAD6: 02        .byte $02   ; 
- D 1 - I - 0x002AE7 00:AAD7: F4        .byte $F4, $9D, $F1   ; 
- D 1 - I - 0x002AEA 00:AADA: FC        .byte $FC, $9F, $F1   ; 
- D 1 - I - 0x002AED 00:AADD: F8        .byte $F8, $A1, $01   ; 
- D 1 - I - 0x002AF0 00:AAE0: 00        .byte $00, $A3, $01   ; 



off_06_AB2B_07:
- D 1 - I - 0x002B3B 00:AB2B: FF        .byte $FF   ; 
off_06_AAE3_03:
- D 1 - I - 0x002AF3 00:AAE3: 83        .byte $83   ; counter
- D 1 - I - 0x002AF4 00:AAE4: 02        .byte $02   ; spr_A
- D 1 - I - 0x002AF5 00:AAE5: EC        .byte $EC, $AF, $E1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002AF8 00:AAE8: F4        .byte $F4, $B1, $E1   ; 
- D 1 - I - 0x002AFB 00:AAEB: FC        .byte $FC, $B3, $E1   ; 

- D 1 - I - 0x002AFE 00:AAEE: 81        .byte $81   ; 
- D 1 - I - 0x002AFF 00:AAEF: 00        .byte $00   ; 
- D 1 - I - 0x002B00 00:AAF0: EC        .byte $EC, $B5, $F1   ; 

- D 1 - I - 0x002B03 00:AAF3: 05        .byte $05   ; 
- D 1 - I - 0x002B04 00:AAF4: 02        .byte $02   ; 
- D 1 - I - 0x002B05 00:AAF5: F4        .byte $F4, $B7, $F1   ; 
- D 1 - I - 0x002B08 00:AAF8: FC        .byte $FC, $B9, $F1   ; 
- D 1 - I - 0x002B0B 00:AAFB: F4        .byte $F4, $BB, $01   ; 
- D 1 - I - 0x002B0E 00:AAFE: FC        .byte $FC, $BD, $01   ; 
- D 1 - I - 0x002B11 00:AB01: 04        .byte $04, $BF, $01   ; 



off_06_AB2E_08:
- D 1 - I - 0x002B3E 00:AB2E: FF        .byte $FF   ; 
off_06_AB04_04:
- D 1 - I - 0x002B14 00:AB04: 82        .byte $82   ; counter
- D 1 - I - 0x002B15 00:AB05: 02        .byte $02   ; spr_A
- D 1 - I - 0x002B16 00:AB06: EE        .byte $EE, $97, $E1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002B19 00:AB09: F6        .byte $F6, $99, $E1   ; 

- D 1 - I - 0x002B1C 00:AB0C: 81        .byte $81   ; 
- D 1 - I - 0x002B1D 00:AB0D: 00        .byte $00   ; 
- D 1 - I - 0x002B1E 00:AB0E: EA        .byte $EA, $9B, $F1   ; 

- D 1 - I - 0x002B21 00:AB11: 06        .byte $06   ; 
- D 1 - I - 0x002B22 00:AB12: 02        .byte $02   ; 
- D 1 - I - 0x002B23 00:AB13: F2        .byte $F2, $9D, $F1   ; 
- D 1 - I - 0x002B26 00:AB16: FA        .byte $FA, $A5, $F1   ; 
- D 1 - I - 0x002B29 00:AB19: 02        .byte $02, $A7, $F1   ; 
- D 1 - I - 0x002B2C 00:AB1C: F6        .byte $F6, $A9, $01   ; 
- D 1 - I - 0x002B2F 00:AB1F: FE        .byte $FE, $AB, $01   ; 
- D 1 - I - 0x002B32 00:AB22: 06        .byte $06, $AD, $01   ; 



off_06_ABE9_0F:
- D 1 - I - 0x002BF9 00:ABE9: FF        .byte $FF   ; 
off_06_AB31_09:
- D 1 - I - 0x002B41 00:AB31: 87        .byte $87   ; counter
- D 1 - I - 0x002B42 00:AB32: 02        .byte $02   ; spr_A
- D 1 - I - 0x002B43 00:AB33: 08        .byte $08, $8D, $01   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002B46 00:AB36: 10        .byte $10, $8F, $01   ; 
- D 1 - I - 0x002B49 00:AB39: 00        .byte $00, $8B, $01   ; 
- D 1 - I - 0x002B4C 00:AB3C: 08        .byte $08, $89, $F1   ; 
- D 1 - I - 0x002B4F 00:AB3F: 00        .byte $00, $87, $F1   ; 
- D 1 - I - 0x002B52 00:AB42: 00        .byte $00, $83, $E1   ; 
- D 1 - I - 0x002B55 00:AB45: F8        .byte $F8, $81, $E1   ; 

- D 1 - I - 0x002B58 00:AB48: 01        .byte $01   ; 
- D 1 - I - 0x002B59 00:AB49: 00        .byte $00   ; 
- D 1 - I - 0x002B5A 00:AB4A: F8        .byte $F8, $85, $F1   ; 



off_06_AB4D_0A:
- D 1 - I - 0x002B5D 00:AB4D: 84        .byte $84   ; counter
- D 1 - I - 0x002B5E 00:AB4E: 02        .byte $02   ; spr_A
- D 1 - I - 0x002B5F 00:AB4F: F0        .byte $F0, $91, $F1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002B62 00:AB52: F8        .byte $F8, $93, $F1   ; 
- D 1 - I - 0x002B65 00:AB55: F0        .byte $F0, $95, $01   ; 
- D 1 - I - 0x002B68 00:AB58: F8        .byte $F8, $97, $01   ; 

- D 1 - I - 0x002B6B 00:AB5B: 04        .byte $04   ; 
- D 1 - I - 0x002B6C 00:AB5C: 42        .byte $42   ; 
- D 1 - I - 0x002B6D 00:AB5D: 08        .byte $08, $91, $F1   ; 
- D 1 - I - 0x002B70 00:AB60: 00        .byte $00, $93, $F1   ; 
- D 1 - I - 0x002B73 00:AB63: 08        .byte $08, $95, $01   ; 
- D 1 - I - 0x002B76 00:AB66: 00        .byte $00, $97, $01   ; 



off_06_AB69_0B:
- D 1 - I - 0x002B79 00:AB69: 84        .byte $84   ; counter
- D 1 - I - 0x002B7A 00:AB6A: 82        .byte $82   ; spr_A
- D 1 - I - 0x002B7B 00:AB6B: F0        .byte $F0, $91, $01   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002B7E 00:AB6E: F8        .byte $F8, $93, $01   ; 
- D 1 - I - 0x002B81 00:AB71: F0        .byte $F0, $95, $F1   ; 
- D 1 - I - 0x002B84 00:AB74: F8        .byte $F8, $97, $F1   ; 

- D 1 - I - 0x002B87 00:AB77: 04        .byte $04   ; 
- D 1 - I - 0x002B88 00:AB78: C2        .byte $C2   ; 
- D 1 - I - 0x002B89 00:AB79: 08        .byte $08, $91, $01   ; 
- D 1 - I - 0x002B8C 00:AB7C: 00        .byte $00, $93, $01   ; 
- D 1 - I - 0x002B8F 00:AB7F: 08        .byte $08, $95, $F1   ; 
- D 1 - I - 0x002B92 00:AB82: 00        .byte $00, $97, $F1   ; 



off_06_ABEC_10:
- D 1 - I - 0x002BFC 00:ABEC: FF        .byte $FF   ; 
off_06_AB85_0C:
- D 1 - I - 0x002B95 00:AB85: 86        .byte $86   ; counter
- D 1 - I - 0x002B96 00:AB86: 02        .byte $02   ; spr_A
- D 1 - I - 0x002B97 00:AB87: F8        .byte $F8, $A5, $01   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002B9A 00:AB8A: 00        .byte $00, $A7, $01   ; 
- D 1 - I - 0x002B9D 00:AB8D: F8        .byte $F8, $A1, $F1   ; 
- D 1 - I - 0x002BA0 00:AB90: 00        .byte $00, $A3, $F1   ; 
- D 1 - I - 0x002BA3 00:AB93: F0        .byte $F0, $9F, $F1   ; 
- D 1 - I - 0x002BA6 00:AB96: 00        .byte $00, $9D, $E1   ; 

- D 1 - I - 0x002BA9 00:AB99: 02        .byte $02   ; 
- D 1 - I - 0x002BAA 00:AB9A: 00        .byte $00   ; 
- D 1 - I - 0x002BAB 00:AB9B: F0        .byte $F0, $99, $E1   ; 
- D 1 - I - 0x002BAE 00:AB9E: F8        .byte $F8, $9B, $E1   ; 



off_06_ABEF_11:
- D 1 - I - 0x002BFF 00:ABEF: FF        .byte $FF   ; 
off_06_ABA1_0D:
- D 1 - I - 0x002BB1 00:ABA1: 86        .byte $86   ; counter
- D 1 - I - 0x002BB2 00:ABA2: 02        .byte $02   ; spr_A
- D 1 - I - 0x002BB3 00:ABA3: 00        .byte $00, $BB, $01   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002BB6 00:ABA6: F8        .byte $F8, $B9, $01   ; 
- D 1 - I - 0x002BB9 00:ABA9: F0        .byte $F0, $B7, $01   ; 
- D 1 - I - 0x002BBC 00:ABAC: F0        .byte $F0, $B1, $F1   ; 
- D 1 - I - 0x002BBF 00:ABAF: F8        .byte $F8, $B3, $F1   ; 
- D 1 - I - 0x002BC2 00:ABB2: 00        .byte $00, $B5, $F1   ; 

- D 1 - I - 0x002BC5 00:ABB5: 82        .byte $82   ; 
- D 1 - I - 0x002BC6 00:ABB6: 00        .byte $00   ; 
- D 1 - I - 0x002BC7 00:ABB7: E0        .byte $E0, $A9, $F1   ; 
- D 1 - I - 0x002BCA 00:ABBA: E8        .byte $E8, $AB, $F1   ; 

- D 1 - I - 0x002BCD 00:ABBD: 02        .byte $02   ; 
- D 1 - I - 0x002BCE 00:ABBE: 02        .byte $02   ; 
- D 1 - I - 0x002BCF 00:ABBF: F0        .byte $F0, $AD, $E1   ; 
- D 1 - I - 0x002BD2 00:ABC2: F8        .byte $F8, $AF, $E1   ; 



off_06_ABF2_12:
- D 1 - I - 0x002C02 00:ABF2: FF        .byte $FF   ; 
off_06_ABC5_0E:
- D 1 - I - 0x002BD5 00:ABC5: 88        .byte $88   ; counter
- D 1 - I - 0x002BD6 00:ABC6: 02        .byte $02   ; spr_A
- D 1 - I - 0x002BD7 00:ABC7: 00        .byte $00, $BB, $01   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002BDA 00:ABCA: F8        .byte $F8, $B9, $01   ; 
- D 1 - I - 0x002BDD 00:ABCD: F0        .byte $F0, $B7, $01   ; 
- D 1 - I - 0x002BE0 00:ABD0: F0        .byte $F0, $B1, $F1   ; 
- D 1 - I - 0x002BE3 00:ABD3: F8        .byte $F8, $B3, $F1   ; 
- D 1 - I - 0x002BE6 00:ABD6: 00        .byte $00, $B5, $F1   ; 
- D 1 - I - 0x002BE9 00:ABD9: F0        .byte $F0, $AD, $E1   ; 
- D 1 - I - 0x002BEC 00:ABDC: F8        .byte $F8, $AF, $E1   ; 

- D 1 - I - 0x002BEF 00:ABDF: 81        .byte $81   ; 
- D 1 - I - 0x002BF0 00:ABE0: 00        .byte $00   ; 
- D 1 - I - 0x002BF1 00:ABE1: ED        .byte $ED, $BD, $E1   ; 

- D 1 - I - 0x002BF4 00:ABE4: 01        .byte $01   ; 
- D 1 - I - 0x002BF5 00:ABE5: 02        .byte $02   ; 
- D 1 - I - 0x002BF6 00:ABE6: ED        .byte $ED, $BF, $F1   ; 



off_06_AC71_17:
- D 1 - I - 0x002C81 00:AC71: FF        .byte $FF   ; 
off_06_ABF5_13:
- D 1 - I - 0x002C05 00:ABF5: 07        .byte $07   ; counter
- D 1 - I - 0x002C06 00:ABF6: 02        .byte $02   ; spr_A
- D 1 - I - 0x002C07 00:ABF7: F0        .byte $F0, $81, $F1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002C0A 00:ABFA: F8        .byte $F8, $83, $F1   ; 
- D 1 - I - 0x002C0D 00:ABFD: 00        .byte $00, $85, $F1   ; 
- D 1 - I - 0x002C10 00:AC00: 08        .byte $08, $87, $F1   ; 
- D 1 - I - 0x002C13 00:AC03: F8        .byte $F8, $89, $01   ; 
- D 1 - I - 0x002C16 00:AC06: 00        .byte $00, $8B, $01   ; 
- D 1 - I - 0x002C19 00:AC09: 08        .byte $08, $8D, $01   ; 



off_06_AC74_18:
- D 1 - I - 0x002C84 00:AC74: FF        .byte $FF   ; 
off_06_AC0C_14:
- D 1 - I - 0x002C1C 00:AC0C: 85        .byte $85   ; counter
- D 1 - I - 0x002C1D 00:AC0D: 02        .byte $02   ; spr_A
- D 1 - I - 0x002C1E 00:AC0E: F8        .byte $F8, $9D, $01   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002C21 00:AC11: 00        .byte $00, $9F, $01   ; 
- D 1 - I - 0x002C24 00:AC14: 04        .byte $04, $9B, $F1   ; 
- D 1 - I - 0x002C27 00:AC17: FC        .byte $FC, $99, $F1   ; 
- D 1 - I - 0x002C2A 00:AC1A: F4        .byte $F4, $97, $F1   ; 

- D 1 - I - 0x002C2D 00:AC1D: 81        .byte $81   ; 
- D 1 - I - 0x002C2E 00:AC1E: 00        .byte $00   ; 
- D 1 - I - 0x002C2F 00:AC1F: EC        .byte $EC, $95, $F1   ; 

- D 1 - I - 0x002C32 00:AC22: 03        .byte $03   ; 
- D 1 - I - 0x002C33 00:AC23: 02        .byte $02   ; 
- D 1 - I - 0x002C34 00:AC24: 00        .byte $00, $93, $E1   ; 
- D 1 - I - 0x002C37 00:AC27: F8        .byte $F8, $91, $E1   ; 
- D 1 - I - 0x002C3A 00:AC2A: F0        .byte $F0, $8F, $E1   ; 



off_06_AC77_19:
- D 1 - I - 0x002C87 00:AC77: FF        .byte $FF   ; 
off_06_AC2D_15:
- D 1 - I - 0x002C3D 00:AC2D: 88        .byte $88   ; counter
- D 1 - I - 0x002C3E 00:AC2E: 02        .byte $02   ; spr_A
- D 1 - I - 0x002C3F 00:AC2F: F8        .byte $F8, $9D, $01   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002C42 00:AC32: 00        .byte $00, $BF, $01   ; 
- D 1 - I - 0x002C45 00:AC35: 01        .byte $01, $BD, $F1   ; 
- D 1 - I - 0x002C48 00:AC38: F9        .byte $F9, $BB, $F1   ; 
- D 1 - I - 0x002C4B 00:AC3B: 03        .byte $03, $B9, $E1   ; 
- D 1 - I - 0x002C4E 00:AC3E: FB        .byte $FB, $B7, $E1   ; 
- D 1 - I - 0x002C51 00:AC41: F3        .byte $F3, $B5, $E1   ; 
- D 1 - I - 0x002C54 00:AC44: 00        .byte $00, $B3, $D1   ; 

- D 1 - I - 0x002C57 00:AC47: 81        .byte $81   ; 
- D 1 - I - 0x002C58 00:AC48: 00        .byte $00   ; 
- D 1 - I - 0x002C59 00:AC49: F8        .byte $F8, $B1, $D1   ; 

- D 1 - I - 0x002C5C 00:AC4C: 01        .byte $01   ; 
- D 1 - I - 0x002C5D 00:AC4D: 02        .byte $02   ; 
- D 1 - I - 0x002C5E 00:AC4E: F0        .byte $F0, $AF, $D1   ; 



off_06_AC7A_1A:
- D 1 - I - 0x002C8A 00:AC7A: FF        .byte $FF   ; 
off_06_AC51_16:
- D 1 - I - 0x002C61 00:AC51: 0A        .byte $0A   ; counter
- D 1 - I - 0x002C62 00:AC52: 02        .byte $02   ; spr_A
- D 1 - I - 0x002C63 00:AC53: 05        .byte $05, $93, $E5   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002C66 00:AC56: FD        .byte $FD, $91, $E5   ; 
- D 1 - I - 0x002C69 00:AC59: F5        .byte $F5, $8F, $E5   ; 
- D 1 - I - 0x002C6C 00:AC5C: F0        .byte $F0, $A1, $F5   ; 
- D 1 - I - 0x002C6F 00:AC5F: F8        .byte $F8, $A3, $F5   ; 
- D 1 - I - 0x002C72 00:AC62: 00        .byte $00, $A5, $F5   ; 
- D 1 - I - 0x002C75 00:AC65: 08        .byte $08, $A7, $F5   ; 
- D 1 - I - 0x002C78 00:AC68: F0        .byte $F0, $A9, $05   ; 
- D 1 - I - 0x002C7B 00:AC6B: F8        .byte $F8, $AB, $05   ; 
- D 1 - I - 0x002C7E 00:AC6E: 00        .byte $00, $AD, $05   ; 



off_06_AC7D_1B:
- D 1 - I - 0x002C8D 00:AC7D: 09        .byte $09   ; counter
- D 1 - I - 0x002C8E 00:AC7E: 02        .byte $02   ; spr_A
- D 1 - I - 0x002C8F 00:AC7F: F0        .byte $F0, $81, $E9   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002C92 00:AC82: F8        .byte $F8, $83, $E9   ; 
- D 1 - I - 0x002C95 00:AC85: 00        .byte $00, $85, $E9   ; 
- D 1 - I - 0x002C98 00:AC88: F0        .byte $F0, $87, $F9   ; 
- D 1 - I - 0x002C9B 00:AC8B: F8        .byte $F8, $89, $F9   ; 
- D 1 - I - 0x002C9E 00:AC8E: 00        .byte $00, $8B, $F9   ; 
- D 1 - I - 0x002CA1 00:AC91: F0        .byte $F0, $8D, $09   ; 
- D 1 - I - 0x002CA4 00:AC94: F8        .byte $F8, $8F, $09   ; 
- D 1 - I - 0x002CA7 00:AC97: 00        .byte $00, $91, $09   ; 



off_06_AC9A_1C:
- D 1 - I - 0x002CAA 00:AC9A: 08        .byte $08   ; counter
- D 1 - I - 0x002CAB 00:AC9B: 02        .byte $02   ; spr_A
- D 1 - I - 0x002CAC 00:AC9C: E8        .byte $E8, $81, $E9   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002CAF 00:AC9F: F0        .byte $F0, $83, $E9   ; 
- D 1 - I - 0x002CB2 00:ACA2: F8        .byte $F8, $85, $E9   ; 
- D 1 - I - 0x002CB5 00:ACA5: E8        .byte $E8, $93, $F9   ; 
- D 1 - I - 0x002CB8 00:ACA8: F0        .byte $F0, $95, $F9   ; 
- D 1 - I - 0x002CBB 00:ACAB: F8        .byte $F8, $97, $F9   ; 
- D 1 - I - 0x002CBE 00:ACAE: F0        .byte $F0, $99, $09   ; 
- D 1 - I - 0x002CC1 00:ACB1: F8        .byte $F8, $9B, $09   ; 



off_06_ACB4_1D:
- D 1 - I - 0x002CC4 00:ACB4: 06        .byte $06   ; counter
- D 1 - I - 0x002CC5 00:ACB5: 02        .byte $02   ; spr_A
- D 1 - I - 0x002CC6 00:ACB6: E0        .byte $E0, $A3, $01   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002CC9 00:ACB9: F0        .byte $F0, $A7, $01   ; 
- D 1 - I - 0x002CCC 00:ACBC: E8        .byte $E8, $A5, $01   ; 
- D 1 - I - 0x002CCF 00:ACBF: E0        .byte $E0, $9D, $F1   ; 
- D 1 - I - 0x002CD2 00:ACC2: E8        .byte $E8, $9F, $F1   ; 
- D 1 - I - 0x002CD5 00:ACC5: F0        .byte $F0, $A1, $F1   ; 



off_06_ACC8_1E:
- D 1 - I - 0x002CD8 00:ACC8: 07        .byte $07   ; counter
- D 1 - I - 0x002CD9 00:ACC9: 02        .byte $02   ; spr_A
- D 1 - I - 0x002CDA 00:ACCA: F0        .byte $F0, $AF, $01   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002CDD 00:ACCD: E8        .byte $E8, $AD, $01   ; 
- D 1 - I - 0x002CE0 00:ACD0: E0        .byte $E0, $AB, $01   ; 
- D 1 - I - 0x002CE3 00:ACD3: D8        .byte $D8, $A9, $01   ; 
- D 1 - I - 0x002CE6 00:ACD6: DB        .byte $DB, $9D, $F1   ; 
- D 1 - I - 0x002CE9 00:ACD9: E3        .byte $E3, $9F, $F1   ; 
- D 1 - I - 0x002CEC 00:ACDC: EB        .byte $EB, $A1, $F1   ; 



off_06_ACDF_1F:
- D 1 - I - 0x002CEF 00:ACDF: 08        .byte $08   ; counter
- D 1 - I - 0x002CF0 00:ACE0: 02        .byte $02   ; spr_A
- D 1 - I - 0x002CF1 00:ACE1: D8        .byte $D8, $B1, $F6   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002CF4 00:ACE4: E0        .byte $E0, $B3, $F6   ; 
- D 1 - I - 0x002CF7 00:ACE7: E8        .byte $E8, $B5, $F6   ; 
- D 1 - I - 0x002CFA 00:ACEA: D0        .byte $D0, $B7, $06   ; 
- D 1 - I - 0x002CFD 00:ACED: D8        .byte $D8, $B9, $06   ; 
- D 1 - I - 0x002D00 00:ACF0: E0        .byte $E0, $BB, $06   ; 
- D 1 - I - 0x002D03 00:ACF3: E8        .byte $E8, $BD, $06   ; 
- D 1 - I - 0x002D06 00:ACF6: F0        .byte $F0, $BF, $06   ; 



_off032_ACF9_0A:
- - - - - - 0x002D09 00:ACF9: 3D AD     .word off_0A_AD3D_00
- D 1 - I - 0x002D0B 00:ACFB: 3D AD     .word off_0A_AD3D_01
- D 1 - I - 0x002D0D 00:ACFD: 65 AD     .word off_0A_AD65_02
- D 1 - I - 0x002D0F 00:ACFF: 87 AD     .word off_0A_AD87_03
- D 1 - I - 0x002D11 00:AD01: A9 AD     .word off_0A_ADA9_04
- D 1 - I - 0x002D13 00:AD03: CE AD     .word off_0A_ADCE_05
- D 1 - I - 0x002D15 00:AD05: D1 AD     .word off_0A_ADD1_06
- D 1 - I - 0x002D17 00:AD07: D4 AD     .word off_0A_ADD4_07
- D 1 - I - 0x002D19 00:AD09: D7 AD     .word off_0A_ADD7_08
- D 1 - I - 0x002D1B 00:AD0B: DA AD     .word off_0A_ADDA_09
- D 1 - I - 0x002D1D 00:AD0D: FF AD     .word off_0A_ADFF_0A
- D 1 - I - 0x002D1F 00:AD0F: 2A AE     .word off_0A_AE2A_0B
- D 1 - I - 0x002D21 00:AD11: 4E AE     .word off_0A_AE4E_0C
- D 1 - I - 0x002D23 00:AD13: 69 AE     .word off_0A_AE69_0D
- D 1 - I - 0x002D25 00:AD15: 6C AE     .word off_0A_AE6C_0E
- D 1 - I - 0x002D27 00:AD17: 6F AE     .word off_0A_AE6F_0F
- D 1 - I - 0x002D29 00:AD19: 72 AE     .word off_0A_AE72_10
- D 1 - I - 0x002D2B 00:AD1B: 75 AE     .word off_0A_AE75_11
- D 1 - I - 0x002D2D 00:AD1D: A1 AE     .word off_0A_AEA1_12
- D 1 - I - 0x002D2F 00:AD1F: D6 AE     .word off_0A_AED6_13
- D 1 - I - 0x002D31 00:AD21: FB AE     .word off_0A_AEFB_14
- D 1 - I - 0x002D33 00:AD23: 1D AF     .word off_0A_AF1D_15
- D 1 - I - 0x002D35 00:AD25: 3D AF     .word off_0A_AF3D_16
- D 1 - I - 0x002D37 00:AD27: 5D AF     .word off_0A_AF5D_17
- D 1 - I - 0x002D39 00:AD29: 67 AF     .word off_0A_AF67_18
- D 1 - I - 0x002D3B 00:AD2B: 71 AF     .word off_0A_AF71_19
- D 1 - I - 0x002D3D 00:AD2D: 95 AF     .word off_0A_AF95_1A
- D 1 - I - 0x002D3F 00:AD2F: B7 AF     .word off_0A_AFB7_1B
- D 1 - I - 0x002D41 00:AD31: D9 AF     .word off_0A_AFD9_1C
- D 1 - I - 0x002D43 00:AD33: FB AF     .word off_0A_AFFB_1D
- D 1 - I - 0x002D45 00:AD35: 1D B0     .word off_0A_B01D_1E
- D 1 - I - 0x002D47 00:AD37: 2E B0     .word off_0A_B02E_1F
- D 1 - I - 0x002D49 00:AD39: 3F B0     .word off_0A_B03F_20
- - - - - - 0x002D4B 00:AD3B: 50 B0     .word off_0A_B050_21



off_0A_ADCE_05:
- D 1 - I - 0x002DDE 00:ADCE: FF        .byte $FF   ; 
off_0A_AD3D_00:
off_0A_AD3D_01:
- D 1 - I - 0x002D4D 00:AD3D: 85        .byte $85   ; counter
- D 1 - I - 0x002D4E 00:AD3E: 01        .byte $01   ; spr_A
- D 1 - I - 0x002D4F 00:AD3F: E8        .byte $E8, $81, $01   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002D52 00:AD42: F0        .byte $F0, $83, $01   ; 
- D 1 - I - 0x002D55 00:AD45: F8        .byte $F8, $85, $F1   ; 
- D 1 - I - 0x002D58 00:AD48: 00        .byte $00, $87, $F1   ; 
- D 1 - I - 0x002D5B 00:AD4B: 08        .byte $08, $89, $F1   ; 

- D 1 - I - 0x002D5E 00:AD4E: 07        .byte $07   ; 
- D 1 - I - 0x002D5F 00:AD4F: 02        .byte $02   ; 
- D 1 - I - 0x002D60 00:AD50: F8        .byte $F8, $8B, $01   ; 
- D 1 - I - 0x002D63 00:AD53: 00        .byte $00, $8D, $01   ; 
- D 1 - I - 0x002D66 00:AD56: 08        .byte $08, $8F, $01   ; 
- D 1 - I - 0x002D69 00:AD59: F0        .byte $F0, $91, $11   ; 
- D 1 - I - 0x002D6C 00:AD5C: F8        .byte $F8, $93, $11   ; 
- D 1 - I - 0x002D6F 00:AD5F: 00        .byte $00, $95, $11   ; 
- D 1 - I - 0x002D72 00:AD62: 08        .byte $08, $97, $11   ; 



off_0A_ADD1_06:
- D 1 - I - 0x002DE1 00:ADD1: FF        .byte $FF   ; 
off_0A_AD65_02:
- D 1 - I - 0x002D75 00:AD65: 83        .byte $83   ; counter
- D 1 - I - 0x002D76 00:AD66: 01        .byte $01   ; spr_A
- D 1 - I - 0x002D77 00:AD67: F8        .byte $F8, $99, $F1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002D7A 00:AD6A: 00        .byte $00, $9B, $F1   ; 
- D 1 - I - 0x002D7D 00:AD6D: 08        .byte $08, $9D, $F1   ; 

- D 1 - I - 0x002D80 00:AD70: 07        .byte $07   ; 
- D 1 - I - 0x002D81 00:AD71: 02        .byte $02   ; 
- D 1 - I - 0x002D82 00:AD72: F8        .byte $F8, $9F, $01   ; 
- D 1 - I - 0x002D85 00:AD75: 00        .byte $00, $A1, $01   ; 
- D 1 - I - 0x002D88 00:AD78: 08        .byte $08, $A3, $01   ; 
- D 1 - I - 0x002D8B 00:AD7B: F0        .byte $F0, $91, $11   ; 
- D 1 - I - 0x002D8E 00:AD7E: F8        .byte $F8, $93, $11   ; 
- D 1 - I - 0x002D91 00:AD81: 00        .byte $00, $95, $11   ; 
- D 1 - I - 0x002D94 00:AD84: 08        .byte $08, $97, $11   ; 



off_0A_ADD4_07:
- D 1 - I - 0x002DE4 00:ADD4: FF        .byte $FF   ; 
off_0A_AD87_03:
- D 1 - I - 0x002D97 00:AD87: 83        .byte $83   ; counter
- D 1 - I - 0x002D98 00:AD88: 01        .byte $01   ; spr_A
- D 1 - I - 0x002D99 00:AD89: F8        .byte $F8, $A5, $F1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002D9C 00:AD8C: 00        .byte $00, $A7, $F1   ; 
- D 1 - I - 0x002D9F 00:AD8F: 08        .byte $08, $A9, $F1   ; 

- D 1 - I - 0x002DA2 00:AD92: 07        .byte $07   ; 
- D 1 - I - 0x002DA3 00:AD93: 02        .byte $02   ; 
- D 1 - I - 0x002DA4 00:AD94: F8        .byte $F8, $AB, $01   ; 
- D 1 - I - 0x002DA7 00:AD97: 00        .byte $00, $AD, $01   ; 
- D 1 - I - 0x002DAA 00:AD9A: 08        .byte $08, $AF, $01   ; 
- D 1 - I - 0x002DAD 00:AD9D: F0        .byte $F0, $91, $11   ; 
- D 1 - I - 0x002DB0 00:ADA0: F8        .byte $F8, $93, $11   ; 
- D 1 - I - 0x002DB3 00:ADA3: 00        .byte $00, $95, $11   ; 
- D 1 - I - 0x002DB6 00:ADA6: 08        .byte $08, $97, $11   ; 



off_0A_ADD7_08:
- D 1 - I - 0x002DE7 00:ADD7: FF        .byte $FF   ; 
off_0A_ADA9_04:
- D 1 - I - 0x002DB9 00:ADA9: 84        .byte $84   ; counter
- D 1 - I - 0x002DBA 00:ADAA: 01        .byte $01   ; spr_A
- D 1 - I - 0x002DBB 00:ADAB: F0        .byte $F0, $B1, $F1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002DBE 00:ADAE: F8        .byte $F8, $B3, $F1   ; 
- D 1 - I - 0x002DC1 00:ADB1: 00        .byte $00, $B5, $F1   ; 
- D 1 - I - 0x002DC4 00:ADB4: 08        .byte $08, $B7, $F1   ; 

- D 1 - I - 0x002DC7 00:ADB7: 07        .byte $07   ; 
- D 1 - I - 0x002DC8 00:ADB8: 02        .byte $02   ; 
- D 1 - I - 0x002DC9 00:ADB9: F8        .byte $F8, $B9, $01   ; 
- D 1 - I - 0x002DCC 00:ADBC: 00        .byte $00, $BB, $01   ; 
- D 1 - I - 0x002DCF 00:ADBF: 08        .byte $08, $BD, $01   ; 
- D 1 - I - 0x002DD2 00:ADC2: F0        .byte $F0, $91, $11   ; 
- D 1 - I - 0x002DD5 00:ADC5: F8        .byte $F8, $93, $11   ; 
- D 1 - I - 0x002DD8 00:ADC8: 00        .byte $00, $95, $11   ; 
- D 1 - I - 0x002DDB 00:ADCB: 08        .byte $08, $97, $11   ; 



off_0A_AE69_0D:
- D 1 - I - 0x002E79 00:AE69: FF        .byte $FF   ; 
off_0A_ADDA_09:
- D 1 - I - 0x002DEA 00:ADDA: 86        .byte $86   ; counter
- D 1 - I - 0x002DEB 00:ADDB: 01        .byte $01   ; spr_A
- D 1 - I - 0x002DEC 00:ADDC: F0        .byte $F0, $81, $E9   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002DEF 00:ADDF: F8        .byte $F8, $83, $E1   ; 
- D 1 - I - 0x002DF2 00:ADE2: 00        .byte $00, $85, $E1   ; 
- D 1 - I - 0x002DF5 00:ADE5: 08        .byte $08, $87, $E1   ; 
- D 1 - I - 0x002DF8 00:ADE8: F8        .byte $F8, $89, $F1   ; 
- D 1 - I - 0x002DFB 00:ADEB: 00        .byte $00, $8B, $F1   ; 

- D 1 - I - 0x002DFE 00:ADEE: 05        .byte $05   ; 
- D 1 - I - 0x002DFF 00:ADEF: 02        .byte $02   ; 
- D 1 - I - 0x002E00 00:ADF0: 08        .byte $08, $8D, $F1   ; 
- D 1 - I - 0x002E03 00:ADF3: F8        .byte $F8, $8F, $01   ; 
- D 1 - I - 0x002E06 00:ADF6: 00        .byte $00, $91, $01   ; 
- D 1 - I - 0x002E09 00:ADF9: 08        .byte $08, $93, $01   ; 
- D 1 - I - 0x002E0C 00:ADFC: 08        .byte $08, $95, $11   ; 



off_0A_AE6C_0E:
- D 1 - I - 0x002E7C 00:AE6C: FF        .byte $FF   ; 
off_0A_ADFF_0A:
- D 1 - I - 0x002E0F 00:ADFF: 86        .byte $86   ; counter
- D 1 - I - 0x002E10 00:AE00: 01        .byte $01   ; spr_A
- D 1 - I - 0x002E11 00:AE01: F0        .byte $F0, $81, $E9   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002E14 00:AE04: F8        .byte $F8, $83, $E1   ; 
- D 1 - I - 0x002E17 00:AE07: 00        .byte $00, $85, $E1   ; 
- D 1 - I - 0x002E1A 00:AE0A: 08        .byte $08, $87, $E1   ; 
- D 1 - I - 0x002E1D 00:AE0D: F8        .byte $F8, $89, $F1   ; 
- D 1 - I - 0x002E20 00:AE10: 00        .byte $00, $8B, $F1   ; 

- D 1 - I - 0x002E23 00:AE13: 07        .byte $07   ; 
- D 1 - I - 0x002E24 00:AE14: 02        .byte $02   ; 
- D 1 - I - 0x002E25 00:AE15: 08        .byte $08, $8D, $F1   ; 
- D 1 - I - 0x002E28 00:AE18: F8        .byte $F8, $97, $01   ; 
- D 1 - I - 0x002E2B 00:AE1B: 00        .byte $00, $99, $01   ; 
- D 1 - I - 0x002E2E 00:AE1E: 08        .byte $08, $9B, $01   ; 
- D 1 - I - 0x002E31 00:AE21: F8        .byte $F8, $9D, $11   ; 
- D 1 - I - 0x002E34 00:AE24: 00        .byte $00, $9F, $11   ; 
- D 1 - I - 0x002E37 00:AE27: 08        .byte $08, $A1, $11   ; 



off_0A_AE6F_0F:
- D 1 - I - 0x002E7F 00:AE6F: FF        .byte $FF   ; 
off_0A_AE2A_0B:
- D 1 - I - 0x002E3A 00:AE2A: 81        .byte $81   ; counter
- D 1 - I - 0x002E3B 00:AE2B: 02        .byte $02   ; spr_A
- D 1 - I - 0x002E3C 00:AE2C: F0        .byte $F0, $A3, $F1   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x002E3F 00:AE2F: 82        .byte $82   ; 
- D 1 - I - 0x002E40 00:AE30: 01        .byte $01   ; 
- D 1 - I - 0x002E41 00:AE31: F8        .byte $F8, $A5, $F1   ; 
- D 1 - I - 0x002E44 00:AE34: 00        .byte $00, $A7, $F1   ; 

- D 1 - I - 0x002E47 00:AE37: 07        .byte $07   ; 
- D 1 - I - 0x002E48 00:AE38: 02        .byte $02   ; 
- D 1 - I - 0x002E49 00:AE39: F8        .byte $F8, $B1, $11   ; 
- D 1 - I - 0x002E4C 00:AE3C: 00        .byte $00, $9F, $11   ; 
- D 1 - I - 0x002E4F 00:AE3F: 08        .byte $08, $A1, $11   ; 
- D 1 - I - 0x002E52 00:AE42: 08        .byte $08, $AF, $01   ; 
- D 1 - I - 0x002E55 00:AE45: 00        .byte $00, $AD, $01   ; 
- D 1 - I - 0x002E58 00:AE48: 08        .byte $08, $A9, $F1   ; 
- D 1 - I - 0x002E5B 00:AE4B: F8        .byte $F8, $AB, $01   ; 



off_0A_AE72_10:
- D 1 - I - 0x002E82 00:AE72: FF        .byte $FF   ; 
off_0A_AE4E_0C:
- D 1 - I - 0x002E5E 00:AE4E: 83        .byte $83   ; counter
- D 1 - I - 0x002E5F 00:AE4F: 02        .byte $02   ; spr_A
- D 1 - I - 0x002E60 00:AE50: F8        .byte $F8, $BB, $11   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002E63 00:AE53: 00        .byte $00, $BD, $11   ; 
- D 1 - I - 0x002E66 00:AE56: 08        .byte $08, $BF, $11   ; 

- D 1 - I - 0x002E69 00:AE59: 83        .byte $83   ; 
- D 1 - I - 0x002E6A 00:AE5A: 01        .byte $01   ; 
- D 1 - I - 0x002E6B 00:AE5B: F0        .byte $F0, $B3, $09   ; 
- D 1 - I - 0x002E6E 00:AE5E: F8        .byte $F8, $B5, $01   ; 
- D 1 - I - 0x002E71 00:AE61: 00        .byte $00, $B7, $01   ; 

- D 1 - I - 0x002E74 00:AE64: 01        .byte $01   ; 
- D 1 - I - 0x002E75 00:AE65: 02        .byte $02   ; 
- D 1 - I - 0x002E76 00:AE66: 08        .byte $08, $B9, $01   ; 



off_0A_AE75_11:
- D 1 - I - 0x002E85 00:AE75: 82        .byte $82   ; counter
- D 1 - I - 0x002E86 00:AE76: 01        .byte $01   ; spr_A
- D 1 - I - 0x002E87 00:AE77: F0        .byte $F0, $81, $F1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002E8A 00:AE7A: F8        .byte $F8, $83, $F1   ; 

- D 1 - I - 0x002E8D 00:AE7D: 84        .byte $84   ; 
- D 1 - I - 0x002E8E 00:AE7E: 02        .byte $02   ; 
- D 1 - I - 0x002E8F 00:AE7F: F0        .byte $F0, $85, $01   ; 
- D 1 - I - 0x002E92 00:AE82: F8        .byte $F8, $87, $01   ; 
- D 1 - I - 0x002E95 00:AE85: F0        .byte $F0, $89, $11   ; 
- D 1 - I - 0x002E98 00:AE88: F8        .byte $F8, $8B, $11   ; 

- D 1 - I - 0x002E9B 00:AE8B: 82        .byte $82   ; 
- D 1 - I - 0x002E9C 00:AE8C: 41        .byte $41   ; 
- D 1 - I - 0x002E9D 00:AE8D: 08        .byte $08, $81, $F1   ; 
- D 1 - I - 0x002EA0 00:AE90: 00        .byte $00, $83, $F1   ; 

- D 1 - I - 0x002EA3 00:AE93: 04        .byte $04   ; 
- D 1 - I - 0x002EA4 00:AE94: 42        .byte $42   ; 
- D 1 - I - 0x002EA5 00:AE95: 08        .byte $08, $85, $01   ; 
- D 1 - I - 0x002EA8 00:AE98: 00        .byte $00, $87, $01   ; 
- D 1 - I - 0x002EAB 00:AE9B: 08        .byte $08, $89, $11   ; 
- D 1 - I - 0x002EAE 00:AE9E: 00        .byte $00, $8B, $11   ; 



off_0A_AEA1_12:
- D 1 - I - 0x002EB1 00:AEA1: 83        .byte $83   ; counter
- D 1 - I - 0x002EB2 00:AEA2: 01        .byte $01   ; spr_A
- D 1 - I - 0x002EB3 00:AEA3: F8        .byte $F8, $8D, $E1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002EB6 00:AEA6: F0        .byte $F0, $8F, $F1   ; 
- D 1 - I - 0x002EB9 00:AEA9: F8        .byte $F8, $91, $F1   ; 

- D 1 - I - 0x002EBC 00:AEAC: 84        .byte $84   ; 
- D 1 - I - 0x002EBD 00:AEAD: 02        .byte $02   ; 
- D 1 - I - 0x002EBE 00:AEAE: F0        .byte $F0, $93, $01   ; 
- D 1 - I - 0x002EC1 00:AEB1: F8        .byte $F8, $95, $01   ; 
- D 1 - I - 0x002EC4 00:AEB4: F0        .byte $F0, $89, $11   ; 
- D 1 - I - 0x002EC7 00:AEB7: F8        .byte $F8, $8B, $11   ; 

- D 1 - I - 0x002ECA 00:AEBA: 83        .byte $83   ; 
- D 1 - I - 0x002ECB 00:AEBB: 41        .byte $41   ; 
- D 1 - I - 0x002ECC 00:AEBC: 00        .byte $00, $8D, $E1   ; 
- D 1 - I - 0x002ECF 00:AEBF: 00        .byte $00, $91, $F1   ; 
- D 1 - I - 0x002ED2 00:AEC2: 08        .byte $08, $8F, $F1   ; 

- D 1 - I - 0x002ED5 00:AEC5: 04        .byte $04   ; 
- D 1 - I - 0x002ED6 00:AEC6: 42        .byte $42   ; 
- D 1 - I - 0x002ED7 00:AEC7: 08        .byte $08, $93, $01   ; 
- D 1 - I - 0x002EDA 00:AECA: 00        .byte $00, $95, $01   ; 
- D 1 - I - 0x002EDD 00:AECD: 08        .byte $08, $89, $11   ; 
- D 1 - I - 0x002EE0 00:AED0: 00        .byte $00, $8B, $11   ; 



off_0A_AED6_13:
- D 1 - I - 0x002EE6 00:AED6: 83        .byte $83   ; counter
- D 1 - I - 0x002EE7 00:AED7: 01        .byte $01   ; spr_A
- D 1 - I - 0x002EE8 00:AED8: F8        .byte $F8, $97, $F1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002EEB 00:AEDB: 00        .byte $00, $99, $F1   ; 
- D 1 - I - 0x002EEE 00:AEDE: 08        .byte $08, $9B, $F1   ; 

- D 1 - I - 0x002EF1 00:AEE1: 08        .byte $08   ; 
- D 1 - I - 0x002EF2 00:AEE2: 02        .byte $02   ; 
- D 1 - I - 0x002EF3 00:AEE3: F0        .byte $F0, $9D, $01   ; 
- D 1 - I - 0x002EF6 00:AEE6: F8        .byte $F8, $9F, $01   ; 
- D 1 - I - 0x002EF9 00:AEE9: 00        .byte $00, $A1, $01   ; 
- D 1 - I - 0x002EFC 00:AEEC: 08        .byte $08, $A3, $01   ; 
- D 1 - I - 0x002EFF 00:AEEF: F0        .byte $F0, $A5, $11   ; 
- D 1 - I - 0x002F02 00:AEF2: F8        .byte $F8, $A7, $11   ; 
- D 1 - I - 0x002F05 00:AEF5: 00        .byte $00, $A9, $11   ; 
- D 1 - I - 0x002F08 00:AEF8: 08        .byte $08, $AB, $11   ; 



off_0A_AEFB_14:
- D 1 - I - 0x002F0B 00:AEFB: 88        .byte $88   ; counter
- D 1 - I - 0x002F0C 00:AEFC: 02        .byte $02   ; spr_A
- D 1 - I - 0x002F0D 00:AEFD: F0        .byte $F0, $B9, $11   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002F10 00:AF00: F8        .byte $F8, $BB, $11   ; 
- D 1 - I - 0x002F13 00:AF03: 00        .byte $00, $BD, $11   ; 
- D 1 - I - 0x002F16 00:AF06: 08        .byte $08, $BF, $11   ; 
- D 1 - I - 0x002F19 00:AF09: 00        .byte $00, $B1, $01   ; 
- D 1 - I - 0x002F1C 00:AF0C: 08        .byte $08, $B3, $01   ; 
- D 1 - I - 0x002F1F 00:AF0F: F8        .byte $F8, $AF, $01   ; 
- D 1 - I - 0x002F22 00:AF12: F0        .byte $F0, $AD, $01   ; 

- D 1 - I - 0x002F25 00:AF15: 02        .byte $02   ; 
- D 1 - I - 0x002F26 00:AF16: 01        .byte $01   ; 
- D 1 - I - 0x002F27 00:AF17: 10        .byte $10, $B5, $01   ; 
- D 1 - I - 0x002F2A 00:AF1A: 18        .byte $18, $B7, $01   ; 



off_0A_AF1D_15:
- D 1 - I - 0x002F2D 00:AF1D: 82        .byte $82   ; counter
- D 1 - I - 0x002F2E 00:AF1E: 03        .byte $03   ; spr_A
- D 1 - I - 0x002F2F 00:AF1F: F0        .byte $F0, $A1, $F8   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002F32 00:AF22: F8        .byte $F8, $A3, $F8   ; 

- D 1 - I - 0x002F35 00:AF25: 82        .byte $82   ; 
- D 1 - I - 0x002F36 00:AF26: 43        .byte $43   ; 
- D 1 - I - 0x002F37 00:AF27: 08        .byte $08, $A1, $F8   ; 
- D 1 - I - 0x002F3A 00:AF2A: 00        .byte $00, $A3, $F8   ; 

- D 1 - I - 0x002F3D 00:AF2D: 82        .byte $82   ; 
- D 1 - I - 0x002F3E 00:AF2E: 83        .byte $83   ; 
- D 1 - I - 0x002F3F 00:AF2F: F0        .byte $F0, $A1, $08   ; 
- D 1 - I - 0x002F42 00:AF32: F8        .byte $F8, $A3, $08   ; 

- D 1 - I - 0x002F45 00:AF35: 02        .byte $02   ; 
- D 1 - I - 0x002F46 00:AF36: C3        .byte $C3   ; 
- D 1 - I - 0x002F47 00:AF37: 08        .byte $08, $A1, $08   ; 
- D 1 - I - 0x002F4A 00:AF3A: 00        .byte $00, $A3, $08   ; 



off_0A_AF3D_16:
- D 1 - I - 0x002F4D 00:AF3D: 82        .byte $82   ; counter
- D 1 - I - 0x002F4E 00:AF3E: 03        .byte $03   ; spr_A
- D 1 - I - 0x002F4F 00:AF3F: F0        .byte $F0, $A5, $F8   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002F52 00:AF42: F8        .byte $F8, $A7, $F8   ; 

- D 1 - I - 0x002F55 00:AF45: 82        .byte $82   ; 
- D 1 - I - 0x002F56 00:AF46: 43        .byte $43   ; 
- D 1 - I - 0x002F57 00:AF47: 08        .byte $08, $A5, $F8   ; 
- D 1 - I - 0x002F5A 00:AF4A: 00        .byte $00, $A7, $F8   ; 

- D 1 - I - 0x002F5D 00:AF4D: 82        .byte $82   ; 
- D 1 - I - 0x002F5E 00:AF4E: 83        .byte $83   ; 
- D 1 - I - 0x002F5F 00:AF4F: F0        .byte $F0, $A5, $08   ; 
- D 1 - I - 0x002F62 00:AF52: F8        .byte $F8, $A7, $08   ; 

- D 1 - I - 0x002F65 00:AF55: 02        .byte $02   ; 
- D 1 - I - 0x002F66 00:AF56: C3        .byte $C3   ; 
- D 1 - I - 0x002F67 00:AF57: 08        .byte $08, $A5, $08   ; 
- D 1 - I - 0x002F6A 00:AF5A: 00        .byte $00, $A7, $08   ; 



off_0A_AF5D_17:
- D 1 - I - 0x002F6D 00:AF5D: 81        .byte $81   ; counter
- D 1 - I - 0x002F6E 00:AF5E: 03        .byte $03   ; spr_A
- D 1 - I - 0x002F6F 00:AF5F: F8        .byte $F8, $A9, $00   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x002F72 00:AF62: 01        .byte $01   ; 
- D 1 - I - 0x002F73 00:AF63: 43        .byte $43   ; 
- D 1 - I - 0x002F74 00:AF64: 00        .byte $00, $A9, $00   ; 



off_0A_AF67_18:
- D 1 - I - 0x002F77 00:AF67: 81        .byte $81   ; counter
- D 1 - I - 0x002F78 00:AF68: 03        .byte $03   ; spr_A
- D 1 - I - 0x002F79 00:AF69: F8        .byte $F8, $AB, $00   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x002F7C 00:AF6C: 01        .byte $01   ; 
- D 1 - I - 0x002F7D 00:AF6D: 43        .byte $43   ; 
- D 1 - I - 0x002F7E 00:AF6E: 00        .byte $00, $AB, $00   ; 



off_0A_AF71_19:
- D 1 - I - 0x002F81 00:AF71: 84        .byte $84   ; counter
- D 1 - I - 0x002F82 00:AF72: 03        .byte $03   ; spr_A
- D 1 - I - 0x002F83 00:AF73: F8        .byte $F8, $81, $D9   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002F86 00:AF76: F8        .byte $F8, $81, $E9   ; 
- D 1 - I - 0x002F89 00:AF79: F8        .byte $F8, $81, $F9   ; 
- D 1 - I - 0x002F8C 00:AF7C: F8        .byte $F8, $81, $09   ; 

- D 1 - I - 0x002F8F 00:AF7F: 85        .byte $85   ; 
- D 1 - I - 0x002F90 00:AF80: 43        .byte $43   ; 
- D 1 - I - 0x002F91 00:AF81: 00        .byte $00, $81, $D9   ; 
- D 1 - I - 0x002F94 00:AF84: 00        .byte $00, $81, $E9   ; 
- D 1 - I - 0x002F97 00:AF87: 00        .byte $00, $81, $F9   ; 
- D 1 - I - 0x002F9A 00:AF8A: 00        .byte $00, $81, $09   ; 
- D 1 - I - 0x002F9D 00:AF8D: 00        .byte $00, $83, $19   ; 

- D 1 - I - 0x002FA0 00:AF90: 01        .byte $01   ; 
- D 1 - I - 0x002FA1 00:AF91: 03        .byte $03   ; 
- D 1 - I - 0x002FA2 00:AF92: F8        .byte $F8, $83, $19   ; 



off_0A_AF95_1A:
- D 1 - I - 0x002FA5 00:AF95: 85        .byte $85   ; counter
- D 1 - I - 0x002FA6 00:AF96: 03        .byte $03   ; spr_A
- D 1 - I - 0x002FA7 00:AF97: F8        .byte $F8, $85, $D9   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002FAA 00:AF9A: F8        .byte $F8, $85, $E9   ; 
- D 1 - I - 0x002FAD 00:AF9D: F8        .byte $F8, $85, $F9   ; 
- D 1 - I - 0x002FB0 00:AFA0: F8        .byte $F8, $85, $09   ; 
- D 1 - I - 0x002FB3 00:AFA3: F8        .byte $F8, $87, $19   ; 

- D 1 - I - 0x002FB6 00:AFA6: 05        .byte $05   ; 
- D 1 - I - 0x002FB7 00:AFA7: 43        .byte $43   ; 
- D 1 - I - 0x002FB8 00:AFA8: 00        .byte $00, $85, $D9   ; 
- D 1 - I - 0x002FBB 00:AFAB: 00        .byte $00, $85, $E9   ; 
- D 1 - I - 0x002FBE 00:AFAE: 00        .byte $00, $85, $F9   ; 
- D 1 - I - 0x002FC1 00:AFB1: 00        .byte $00, $85, $09   ; 
- D 1 - I - 0x002FC4 00:AFB4: 00        .byte $00, $87, $19   ; 



off_0A_AFB7_1B:
- D 1 - I - 0x002FC7 00:AFB7: 85        .byte $85   ; counter
- D 1 - I - 0x002FC8 00:AFB8: 03        .byte $03   ; spr_A
- D 1 - I - 0x002FC9 00:AFB9: F8        .byte $F8, $89, $D9   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002FCC 00:AFBC: F8        .byte $F8, $89, $E9   ; 
- D 1 - I - 0x002FCF 00:AFBF: F8        .byte $F8, $89, $F9   ; 
- D 1 - I - 0x002FD2 00:AFC2: F8        .byte $F8, $89, $09   ; 
- D 1 - I - 0x002FD5 00:AFC5: F8        .byte $F8, $8B, $19   ; 

- D 1 - I - 0x002FD8 00:AFC8: 05        .byte $05   ; 
- D 1 - I - 0x002FD9 00:AFC9: 43        .byte $43   ; 
- D 1 - I - 0x002FDA 00:AFCA: 00        .byte $00, $89, $D9   ; 
- D 1 - I - 0x002FDD 00:AFCD: 00        .byte $00, $89, $E9   ; 
- D 1 - I - 0x002FE0 00:AFD0: 00        .byte $00, $89, $F9   ; 
- D 1 - I - 0x002FE3 00:AFD3: 00        .byte $00, $89, $09   ; 
- D 1 - I - 0x002FE6 00:AFD6: 00        .byte $00, $8B, $19   ; 



off_0A_AFD9_1C:
- D 1 - I - 0x002FE9 00:AFD9: 85        .byte $85   ; counter
- D 1 - I - 0x002FEA 00:AFDA: 03        .byte $03   ; spr_A
- D 1 - I - 0x002FEB 00:AFDB: F8        .byte $F8, $8D, $D9   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x002FEE 00:AFDE: F8        .byte $F8, $8D, $E9   ; 
- D 1 - I - 0x002FF1 00:AFE1: F8        .byte $F8, $8D, $F9   ; 
- D 1 - I - 0x002FF4 00:AFE4: F8        .byte $F8, $8D, $09   ; 
- D 1 - I - 0x002FF7 00:AFE7: F8        .byte $F8, $8F, $19   ; 

- D 1 - I - 0x002FFA 00:AFEA: 05        .byte $05   ; 
- D 1 - I - 0x002FFB 00:AFEB: 43        .byte $43   ; 
- D 1 - I - 0x002FFC 00:AFEC: 00        .byte $00, $8D, $D9   ; 
- D 1 - I - 0x002FFF 00:AFEF: 00        .byte $00, $8D, $E9   ; 
- D 1 - I - 0x003002 00:AFF2: 00        .byte $00, $8D, $F9   ; 
- D 1 - I - 0x003005 00:AFF5: 00        .byte $00, $8D, $09   ; 
- D 1 - I - 0x003008 00:AFF8: 00        .byte $00, $8F, $19   ; 



off_0A_AFFB_1D:
- D 1 - I - 0x00300B 00:AFFB: 85        .byte $85   ; counter
- D 1 - I - 0x00300C 00:AFFC: 03        .byte $03   ; spr_A
- D 1 - I - 0x00300D 00:AFFD: F8        .byte $F8, $91, $D9   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x003010 00:B000: F8        .byte $F8, $91, $E9   ; 
- D 1 - I - 0x003013 00:B003: F8        .byte $F8, $91, $F9   ; 
- D 1 - I - 0x003016 00:B006: F8        .byte $F8, $91, $09   ; 
- D 1 - I - 0x003019 00:B009: F8        .byte $F8, $93, $19   ; 

- D 1 - I - 0x00301C 00:B00C: 05        .byte $05   ; 
- D 1 - I - 0x00301D 00:B00D: 43        .byte $43   ; 
- D 1 - I - 0x00301E 00:B00E: 00        .byte $00, $91, $D9   ; 
- D 1 - I - 0x003021 00:B011: 00        .byte $00, $91, $E9   ; 
- D 1 - I - 0x003024 00:B014: 00        .byte $00, $91, $F9   ; 
- D 1 - I - 0x003027 00:B017: 00        .byte $00, $91, $09   ; 
- D 1 - I - 0x00302A 00:B01A: 00        .byte $00, $93, $19   ; 



off_0A_B01D_1E:
- D 1 - I - 0x00302D 00:B01D: 05        .byte $05   ; counter
- D 1 - I - 0x00302E 00:B01E: 03        .byte $03   ; spr_A
- D 1 - I - 0x00302F 00:B01F: FC        .byte $FC, $95, $D9   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x003032 00:B022: FC        .byte $FC, $95, $E9   ; 
- D 1 - I - 0x003035 00:B025: FC        .byte $FC, $95, $F9   ; 
- D 1 - I - 0x003038 00:B028: FC        .byte $FC, $95, $09   ; 
- D 1 - I - 0x00303B 00:B02B: FC        .byte $FC, $97, $19   ; 



off_0A_B02E_1F:
- D 1 - I - 0x00303E 00:B02E: 05        .byte $05   ; counter
- D 1 - I - 0x00303F 00:B02F: 03        .byte $03   ; spr_A
- D 1 - I - 0x003040 00:B030: FC        .byte $FC, $99, $D9   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x003043 00:B033: FC        .byte $FC, $99, $E9   ; 
- D 1 - I - 0x003046 00:B036: FC        .byte $FC, $99, $F9   ; 
- D 1 - I - 0x003049 00:B039: FC        .byte $FC, $99, $09   ; 
- D 1 - I - 0x00304C 00:B03C: FC        .byte $FC, $9B, $19   ; 



off_0A_B03F_20:
- D 1 - I - 0x00304F 00:B03F: 05        .byte $05   ; counter
- D 1 - I - 0x003050 00:B040: 03        .byte $03   ; spr_A
- D 1 - I - 0x003051 00:B041: FC        .byte $FC, $9D, $D9   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x003054 00:B044: FC        .byte $FC, $9D, $E9   ; 
- D 1 - I - 0x003057 00:B047: FC        .byte $FC, $9D, $F9   ; 
- D 1 - I - 0x00305A 00:B04A: FC        .byte $FC, $9D, $09   ; 
- D 1 - I - 0x00305D 00:B04D: FC        .byte $FC, $9D, $19   ; 



off_0A_B050_21:
- - - - - - 0x003060 00:B050: 05        .byte $05   ; counter
- - - - - - 0x003061 00:B051: 03        .byte $03   ; spr_A
- - - - - - 0x003062 00:B052: FC        .byte $FC, $9F, $D9   ; spr_X, spr_T, spr_Y
- - - - - - 0x003065 00:B055: FC        .byte $FC, $9F, $E9   ; 
- - - - - - 0x003068 00:B058: FC        .byte $FC, $9F, $F9   ; 
- - - - - - 0x00306B 00:B05B: FC        .byte $FC, $9F, $09   ; 
- - - - - - 0x00306E 00:B05E: FC        .byte $FC, $9F, $19   ; 



_off032_B061_05:
- - - - - - 0x003071 00:B061: 9B B0     .word off_05_B09B_00
- D 1 - I - 0x003073 00:B063: 9B B0     .word off_05_B09B_01
- D 1 - I - 0x003075 00:B065: C9 B0     .word off_05_B0C9_02
- D 1 - I - 0x003077 00:B067: E3 B0     .word off_05_B0E3_03
- D 1 - I - 0x003079 00:B069: F9 B0     .word off_05_B0F9_04
- D 1 - I - 0x00307B 00:B06B: 0F B1     .word off_05_B10F_05
- D 1 - I - 0x00307D 00:B06D: 25 B1     .word off_05_B125_06
- D 1 - I - 0x00307F 00:B06F: 3B B1     .word off_05_B13B_07
- D 1 - I - 0x003081 00:B071: 40 B1     .word off_05_B140_08
- - - - - - 0x003083 00:B073: 9B B0     .word off_05_B09B_09
- D 1 - I - 0x003085 00:B075: 45 B1     .word off_05_B145_0A
- D 1 - I - 0x003087 00:B077: EE B1     .word off_05_B1EE_0B
- - - - - - 0x003089 00:B079: 9B B0     .word off_05_B09B_0C
- - - - - - 0x00308B 00:B07B: 24 B2     .word off_05_B224_0D
- - - - - - 0x00308D 00:B07D: 34 B2     .word off_05_B234_0E
- - - - - - 0x00308F 00:B07F: 44 B2     .word off_05_B244_0F
- - - - - - 0x003091 00:B081: 49 B2     .word off_05_B249_10
- - - - - - 0x003093 00:B083: 9B B0     .word off_05_B09B_11
- - - - - - 0x003095 00:B085: 9B B0     .word off_05_B09B_12
- - - - - - 0x003097 00:B087: 9B B0     .word off_05_B09B_13
- D 1 - I - 0x003099 00:B089: 75 B1     .word off_05_B175_14
- D 1 - I - 0x00309B 00:B08B: 93 B1     .word off_05_B193_15
- - - - - - 0x00309D 00:B08D: A1 B1     .word off_05_B1A1_16
- D 1 - I - 0x00309F 00:B08F: A1 B1     .word off_05_B1A1_17
- D 1 - I - 0x0030A1 00:B091: B1 B1     .word off_05_B1B1_18
- D 1 - I - 0x0030A3 00:B093: BF B1     .word off_05_B1BF_19
- D 1 - I - 0x0030A5 00:B095: D9 B1     .word off_05_B1D9_1A
- - - - - - 0x0030A7 00:B097: 0E B2     .word off_05_B20E_1B
- - - - - - 0x0030A9 00:B099: 53 B2     .word off_05_B253_1C



off_05_B09B_00:
off_05_B09B_01:
off_05_B09B_09:
off_05_B09B_0C:
off_05_B09B_11:
off_05_B09B_12:
off_05_B09B_13:
- D 1 - I - 0x0030AB 00:B09B: 86        .byte $86   ; counter
- D 1 - I - 0x0030AC 00:B09C: 03        .byte $03   ; spr_A
- D 1 - I - 0x0030AD 00:B09D: F0        .byte $F0, $81, $EB   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0030B0 00:B0A0: F8        .byte $F8, $83, $EB   ; 
- D 1 - I - 0x0030B3 00:B0A3: F0        .byte $F0, $85, $FB   ; 
- D 1 - I - 0x0030B6 00:B0A6: F8        .byte $F8, $87, $FB   ; 
- D 1 - I - 0x0030B9 00:B0A9: F0        .byte $F0, $89, $0B   ; 
- D 1 - I - 0x0030BC 00:B0AC: F8        .byte $F8, $8B, $0B   ; 

- D 1 - I - 0x0030BF 00:B0AF: 83        .byte $83   ; 
- D 1 - I - 0x0030C0 00:B0B0: 43        .byte $43   ; 
- D 1 - I - 0x0030C1 00:B0B1: 08        .byte $08, $81, $EB   ; 
- D 1 - I - 0x0030C4 00:B0B4: 00        .byte $00, $83, $EB   ; 
- D 1 - I - 0x0030C7 00:B0B7: 08        .byte $08, $85, $FB   ; 

- D 1 - I - 0x0030CA 00:B0BA: 81        .byte $81   ; 
- D 1 - I - 0x0030CB 00:B0BB: 03        .byte $03   ; 
- D 1 - I - 0x0030CC 00:B0BC: 00        .byte $00, $87, $FB   ; 

- D 1 - I - 0x0030CF 00:B0BF: 81        .byte $81   ; 
- D 1 - I - 0x0030D0 00:B0C0: 43        .byte $43   ; 
- D 1 - I - 0x0030D1 00:B0C1: 08        .byte $08, $89, $0B   ; 

- D 1 - I - 0x0030D4 00:B0C4: 01        .byte $01   ; 
- D 1 - I - 0x0030D5 00:B0C5: 03        .byte $03   ; 
- D 1 - I - 0x0030D6 00:B0C6: 00        .byte $00, $8B, $0B   ; 



off_05_B0C9_02:
- D 1 - I - 0x0030D9 00:B0C9: 82        .byte $82   ; counter
- D 1 - I - 0x0030DA 00:B0CA: 02        .byte $02   ; spr_A
- D 1 - I - 0x0030DB 00:B0CB: F5        .byte $F5, $8D, $F1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0030DE 00:B0CE: FD        .byte $FD, $8F, $F1   ; 

- D 1 - I - 0x0030E1 00:B0D1: 81        .byte $81   ; 
- D 1 - I - 0x0030E2 00:B0D2: 42        .byte $42   ; 
- D 1 - I - 0x0030E3 00:B0D3: 05        .byte $05, $8D, $F1   ; 

- D 1 - I - 0x0030E6 00:B0D6: 82        .byte $82   ; 
- D 1 - I - 0x0030E7 00:B0D7: 03        .byte $03   ; 
- D 1 - I - 0x0030E8 00:B0D8: F5        .byte $F5, $91, $01   ; 
- D 1 - I - 0x0030EB 00:B0DB: FD        .byte $FD, $93, $01   ; 

- D 1 - I - 0x0030EE 00:B0DE: 01        .byte $01   ; 
- D 1 - I - 0x0030EF 00:B0DF: 43        .byte $43   ; 
- D 1 - I - 0x0030F0 00:B0E0: 05        .byte $05, $91, $01   ; 



off_05_B0E3_03:
- D 1 - I - 0x0030F3 00:B0E3: 85        .byte $85   ; counter
- D 1 - I - 0x0030F4 00:B0E4: 02        .byte $02   ; spr_A
- D 1 - I - 0x0030F5 00:B0E5: F9        .byte $F9, $95, $F1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0030F8 00:B0E8: 01        .byte $01, $97, $F1   ; 
- D 1 - I - 0x0030FB 00:B0EB: F9        .byte $F9, $9B, $01   ; 
- D 1 - I - 0x0030FE 00:B0EE: 01        .byte $01, $9D, $01   ; 
- D 1 - I - 0x003101 00:B0F1: F1        .byte $F1, $99, $F1   ; 

- D 1 - I - 0x003104 00:B0F4: 01        .byte $01   ; 
- D 1 - I - 0x003105 00:B0F5: 42        .byte $42   ; 
- D 1 - I - 0x003106 00:B0F6: F2        .byte $F2, $9D, $01   ; 



off_05_B0F9_04:
- D 1 - I - 0x003109 00:B0F9: 85        .byte $85   ; counter
- D 1 - I - 0x00310A 00:B0FA: 02        .byte $02   ; spr_A
- D 1 - I - 0x00310B 00:B0FB: F3        .byte $F3, $9F, $F1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x00310E 00:B0FE: FB        .byte $FB, $A1, $F1   ; 
- D 1 - I - 0x003111 00:B101: 03        .byte $03, $A3, $F1   ; 
- D 1 - I - 0x003114 00:B104: F3        .byte $F3, $A5, $01   ; 
- D 1 - I - 0x003117 00:B107: FB        .byte $FB, $A7, $01   ; 

- D 1 - I - 0x00311A 00:B10A: 01        .byte $01   ; 
- D 1 - I - 0x00311B 00:B10B: 42        .byte $42   ; 
- D 1 - I - 0x00311C 00:B10C: 03        .byte $03, $A5, $01   ; 



off_05_B10F_05:
- D 1 - I - 0x00311F 00:B10F: 85        .byte $85   ; counter
- D 1 - I - 0x003120 00:B110: 42        .byte $42   ; spr_A
- D 1 - I - 0x003121 00:B111: FF        .byte $FF, $9F, $F1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x003124 00:B114: F7        .byte $F7, $A1, $F1   ; 
- D 1 - I - 0x003127 00:B117: EF        .byte $EF, $A3, $F1   ; 
- D 1 - I - 0x00312A 00:B11A: FF        .byte $FF, $A5, $01   ; 
- D 1 - I - 0x00312D 00:B11D: F7        .byte $F7, $A7, $01   ; 

- D 1 - I - 0x003130 00:B120: 01        .byte $01   ; 
- D 1 - I - 0x003131 00:B121: 02        .byte $02   ; 
- D 1 - I - 0x003132 00:B122: EF        .byte $EF, $A5, $01   ; 



off_05_B125_06:
- D 1 - I - 0x003135 00:B125: 85        .byte $85   ; counter
- D 1 - I - 0x003136 00:B126: 42        .byte $42   ; spr_A
- D 1 - I - 0x003137 00:B127: F9        .byte $F9, $95, $F1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x00313A 00:B12A: F1        .byte $F1, $97, $F1   ; 
- D 1 - I - 0x00313D 00:B12D: F9        .byte $F9, $9B, $01   ; 
- D 1 - I - 0x003140 00:B130: F1        .byte $F1, $9D, $01   ; 
- D 1 - I - 0x003143 00:B133: 01        .byte $01, $99, $F1   ; 

- D 1 - I - 0x003146 00:B136: 01        .byte $01   ; 
- D 1 - I - 0x003147 00:B137: 02        .byte $02   ; 
- D 1 - I - 0x003148 00:B138: 00        .byte $00, $9D, $01   ; 



off_05_B13B_07:
- D 1 - I - 0x00314B 00:B13B: 01        .byte $01   ; counter
- D 1 - I - 0x00314C 00:B13C: 02        .byte $02   ; spr_A
- D 1 - I - 0x00314D 00:B13D: FD        .byte $FD, $8F, $FC   ; spr_X, spr_T, spr_Y



off_05_B140_08:
- D 1 - I - 0x003150 00:B140: 01        .byte $01   ; counter
- D 1 - I - 0x003151 00:B141: 02        .byte $02   ; spr_A
- D 1 - I - 0x003152 00:B142: FD        .byte $FD, $91, $F8   ; spr_X, spr_T, spr_Y



off_05_B145_0A:
- D 1 - I - 0x003155 00:B145: 83        .byte $83   ; counter
- D 1 - I - 0x003156 00:B146: 02        .byte $02   ; spr_A
- D 1 - I - 0x003157 00:B147: F8        .byte $F8, $95, $CB   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x00315A 00:B14A: F0        .byte $F0, $97, $DB   ; 
- D 1 - I - 0x00315D 00:B14D: F0        .byte $F0, $97, $EB   ; 

- D 1 - I - 0x003160 00:B150: 83        .byte $83   ; 
- D 1 - I - 0x003161 00:B151: 42        .byte $42   ; 
- D 1 - I - 0x003162 00:B152: 00        .byte $00, $95, $CB   ; 
- D 1 - I - 0x003165 00:B155: 08        .byte $08, $97, $DB   ; 
- D 1 - I - 0x003168 00:B158: 08        .byte $08, $97, $EB   ; 

- D 1 - I - 0x00316B 00:B15B: 82        .byte $82   ; 
- D 1 - I - 0x00316C 00:B15C: 02        .byte $02   ; 
- D 1 - I - 0x00316D 00:B15D: F0        .byte $F0, $9B, $FB   ; 
- D 1 - I - 0x003170 00:B160: F8        .byte $F8, $9D, $FB   ; 

- D 1 - I - 0x003173 00:B163: 82        .byte $82   ; 
- D 1 - I - 0x003174 00:B164: 42        .byte $42   ; 
- D 1 - I - 0x003175 00:B165: 08        .byte $08, $9B, $FB   ; 
- D 1 - I - 0x003178 00:B168: 00        .byte $00, $9D, $FB   ; 

- D 1 - I - 0x00317B 00:B16B: 81        .byte $81   ; 
- D 1 - I - 0x00317C 00:B16C: 02        .byte $02   ; 
- D 1 - I - 0x00317D 00:B16D: F0        .byte $F0, $A7, $CB   ; 

- D 1 - I - 0x003180 00:B170: 01        .byte $01   ; 
- D 1 - I - 0x003181 00:B171: 42        .byte $42   ; 
- D 1 - I - 0x003182 00:B172: 08        .byte $08, $A7, $CB   ; 



off_05_B175_14:
- D 1 - I - 0x003185 00:B175: 82        .byte $82   ; counter
- D 1 - I - 0x003186 00:B176: 02        .byte $02   ; spr_A
- D 1 - I - 0x003187 00:B177: F0        .byte $F0, $91, $FE   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x00318A 00:B17A: F8        .byte $F8, $93, $FE   ; 

- D 1 - I - 0x00318D 00:B17D: 82        .byte $82   ; 
- D 1 - I - 0x00318E 00:B17E: 42        .byte $42   ; 
- D 1 - I - 0x00318F 00:B17F: 08        .byte $08, $91, $FE   ; 
- D 1 - I - 0x003192 00:B182: 00        .byte $00, $93, $FE   ; 

- D 1 - I - 0x003195 00:B185: 04        .byte $04   ; 
- D 1 - I - 0x003196 00:B186: 02        .byte $02   ; 
- D 1 - I - 0x003197 00:B187: F0        .byte $F0, $8D, $0E   ; 
- D 1 - I - 0x00319A 00:B18A: F8        .byte $F8, $8D, $0E   ; 
- D 1 - I - 0x00319D 00:B18D: 00        .byte $00, $8D, $0E   ; 
- D 1 - I - 0x0031A0 00:B190: 08        .byte $08, $8D, $0E   ; 



off_05_B193_15:
- D 1 - I - 0x0031A3 00:B193: 04        .byte $04   ; counter
- D 1 - I - 0x0031A4 00:B194: 00        .byte $00   ; spr_A
- D 1 - I - 0x0031A5 00:B195: 00        .byte $00, $A5, $00   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0031A8 00:B198: 00        .byte $00, $A9, $10   ; 
- D 1 - I - 0x0031AB 00:B19B: 08        .byte $08, $A7, $00   ; 
- D 1 - I - 0x0031AE 00:B19E: 08        .byte $08, $AB, $10   ; 



off_05_B1A1_16:
off_05_B1A1_17:
- D 1 - I - 0x0031B1 00:B1A1: 82        .byte $82   ; counter
- D 1 - I - 0x0031B2 00:B1A2: 03        .byte $03   ; spr_A
- D 1 - I - 0x0031B3 00:B1A3: 01        .byte $01, $81, $F1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0031B6 00:B1A6: 09        .byte $09, $83, $F1   ; 

- D 1 - I - 0x0031B9 00:B1A9: 02        .byte $02   ; 
- D 1 - I - 0x0031BA 00:B1AA: 83        .byte $83   ; 
- D 1 - I - 0x0031BB 00:B1AB: 01        .byte $01, $81, $01   ; 
- D 1 - I - 0x0031BE 00:B1AE: 09        .byte $09, $83, $01   ; 



off_05_B1B1_18:
- D 1 - I - 0x0031C1 00:B1B1: 04        .byte $04   ; counter
- D 1 - I - 0x0031C2 00:B1B2: 03        .byte $03   ; spr_A
- D 1 - I - 0x0031C3 00:B1B3: 01        .byte $01, $85, $F1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0031C6 00:B1B6: 09        .byte $09, $87, $F1   ; 
- D 1 - I - 0x0031C9 00:B1B9: 01        .byte $01, $89, $01   ; 
- D 1 - I - 0x0031CC 00:B1BC: 09        .byte $09, $87, $01   ; 



off_05_B1BF_19:
- D 1 - I - 0x0031CF 00:B1BF: 81        .byte $81   ; counter
- D 1 - I - 0x0031D0 00:B1C0: 83        .byte $83   ; spr_A
- D 1 - I - 0x0031D1 00:B1C1: F1        .byte $F1, $89, $F1   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x0031D4 00:B1C4: 81        .byte $81   ; 
- D 1 - I - 0x0031D5 00:B1C5: 03        .byte $03   ; 
- D 1 - I - 0x0031D6 00:B1C6: F1        .byte $F1, $8D, $01   ; 

- D 1 - I - 0x0031D9 00:B1C9: 81        .byte $81   ; 
- D 1 - I - 0x0031DA 00:B1CA: C3        .byte $C3   ; 
- D 1 - I - 0x0031DB 00:B1CB: F9        .byte $F9, $85, $01   ; 

- D 1 - I - 0x0031DE 00:B1CE: 03        .byte $03   ; 
- D 1 - I - 0x0031DF 00:B1CF: 03        .byte $03   ; 
- D 1 - I - 0x0031E0 00:B1D0: 01        .byte $01, $93, $F1   ; 
- D 1 - I - 0x0031E3 00:B1D3: 09        .byte $09, $95, $F1   ; 
- D 1 - I - 0x0031E6 00:B1D6: 09        .byte $09, $A1, $01   ; 



off_05_B1D9_1A:
- D 1 - I - 0x0031E9 00:B1D9: 82        .byte $82   ; counter
- D 1 - I - 0x0031EA 00:B1DA: 03        .byte $03   ; spr_A
- D 1 - I - 0x0031EB 00:B1DB: F1        .byte $F1, $A3, $F1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0031EE 00:B1DE: F9        .byte $F9, $A5, $F1   ; 

- D 1 - I - 0x0031F1 00:B1E1: 81        .byte $81   ; 
- D 1 - I - 0x0031F2 00:B1E2: 43        .byte $43   ; 
- D 1 - I - 0x0031F3 00:B1E3: 01        .byte $01, $85, $F1   ; 

- D 1 - I - 0x0031F6 00:B1E6: 02        .byte $02   ; 
- D 1 - I - 0x0031F7 00:B1E7: 03        .byte $03   ; 
- D 1 - I - 0x0031F8 00:B1E8: F1        .byte $F1, $A7, $01   ; 
- D 1 - I - 0x0031FB 00:B1EB: F9        .byte $F9, $A9, $01   ; 



off_05_B1EE_0B:
- D 1 - I - 0x0031FE 00:B1EE: 0A        .byte $0A   ; counter
- D 1 - I - 0x0031FF 00:B1EF: 02        .byte $02   ; spr_A
- D 1 - I - 0x003200 00:B1F0: E9        .byte $E9, $81, $F9   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x003203 00:B1F3: F1        .byte $F1, $83, $F9   ; 
- D 1 - I - 0x003206 00:B1F6: F9        .byte $F9, $85, $F9   ; 
- D 1 - I - 0x003209 00:B1F9: 01        .byte $01, $87, $F9   ; 
- D 1 - I - 0x00320C 00:B1FC: 09        .byte $09, $89, $F9   ; 
- D 1 - I - 0x00320F 00:B1FF: E9        .byte $E9, $8B, $09   ; 
- D 1 - I - 0x003212 00:B202: F1        .byte $F1, $8D, $09   ; 
- D 1 - I - 0x003215 00:B205: F9        .byte $F9, $8F, $09   ; 
- D 1 - I - 0x003218 00:B208: 01        .byte $01, $91, $09   ; 
- D 1 - I - 0x00321B 00:B20B: 09        .byte $09, $93, $09   ; 



off_05_B20E_1B:
- - - - - - 0x00321E 00:B20E: 83        .byte $83   ; counter
- - - - - - 0x00321F 00:B20F: 02        .byte $02   ; spr_A
- - - - - - 0x003220 00:B210: F9        .byte $F9, $95, $E9   ; spr_X, spr_T, spr_Y
- - - - - - 0x003223 00:B213: F9        .byte $F9, $97, $F9   ; 
- - - - - - 0x003226 00:B216: F9        .byte $F9, $99, $09   ; 
- - - - - - 0x003229 00:B219: 03        .byte $03   ; 
- - - - - - 0x00322A 00:B21A: 42        .byte $42   ; 
- - - - - - 0x00322B 00:B21B: 01        .byte $01, $95, $E9   ; 
- - - - - - 0x00322E 00:B21E: 01        .byte $01, $97, $F9   ; 
- - - - - - 0x003231 00:B221: 01        .byte $01, $99, $09   ; 



off_05_B224_0D:
- - - - - - 0x003234 00:B224: 82        .byte $82   ; counter
- - - - - - 0x003235 00:B225: 03        .byte $03   ; spr_A
- - - - - - 0x003236 00:B226: F8        .byte $F8, $99, $F1   ; spr_X, spr_T, spr_Y
- - - - - - 0x003239 00:B229: F8        .byte $F8, $9F, $01   ; 

- - - - - - 0x00323C 00:B22C: 02        .byte $02   ; 
- - - - - - 0x00323D 00:B22D: 43        .byte $43   ; 
- - - - - - 0x00323E 00:B22E: 00        .byte $00, $99, $F1   ; 
- - - - - - 0x003241 00:B231: 00        .byte $00, $9F, $01   ; 



off_05_B234_0E:
- - - - - - 0x003244 00:B234: 82        .byte $82   ; counter
- - - - - - 0x003245 00:B235: 03        .byte $03   ; spr_A
- - - - - - 0x003246 00:B236: F8        .byte $F8, $A1, $F1   ; spr_X, spr_T, spr_Y
- - - - - - 0x003249 00:B239: F8        .byte $F8, $A3, $01   ; 

- - - - - - 0x00324C 00:B23C: 02        .byte $02   ; 
- - - - - - 0x00324D 00:B23D: 43        .byte $43   ; 
- - - - - - 0x00324E 00:B23E: 00        .byte $00, $A1, $F1   ; 
- - - - - - 0x003251 00:B241: 00        .byte $00, $A3, $01   ; 



off_05_B244_0F:
- - - - - - 0x003254 00:B244: 01        .byte $01   ; counter
- - - - - - 0x003255 00:B245: 03        .byte $03   ; spr_A
- - - - - - 0x003256 00:B246: FC        .byte $FC, $A5, $F6   ; spr_X, spr_T, spr_Y



off_05_B249_10:
- - - - - - 0x003259 00:B249: 81        .byte $81   ; counter
- - - - - - 0x00325A 00:B24A: 03        .byte $03   ; spr_A
- - - - - - 0x00325B 00:B24B: F8        .byte $F8, $8F, $F9   ; spr_X, spr_T, spr_Y

- - - - - - 0x00325E 00:B24E: 01        .byte $01   ; 
- - - - - - 0x00325F 00:B24F: 43        .byte $43   ; 
- - - - - - 0x003260 00:B250: 00        .byte $00, $8F, $F9   ; 



off_05_B253_1C:
- - - - - - 0x003263 00:B253: 81        .byte $81   ; counter
- - - - - - 0x003264 00:B254: 03        .byte $03   ; spr_A
- - - - - - 0x003265 00:B255: F1        .byte $F1, $C3, $00   ; spr_X, spr_T, spr_Y

- - - - - - 0x003268 00:B258: 81        .byte $81   ; 
- - - - - - 0x003269 00:B259: 00        .byte $00   ; 
- - - - - - 0x00326A 00:B25A: F1        .byte $F1, $C5, $10   ; 

- - - - - - 0x00326D 00:B25D: 81        .byte $81   ; 
- - - - - - 0x00326E 00:B25E: 03        .byte $03   ; 
- - - - - - 0x00326F 00:B25F: F9        .byte $F9, $C9, $10   ; 

- - - - - - 0x003272 00:B262: 81        .byte $81   ; 
- - - - - - 0x003273 00:B263: 43        .byte $43   ; 
- - - - - - 0x003274 00:B264: 09        .byte $09, $C3, $00   ; 

- - - - - - 0x003277 00:B267: 81        .byte $81   ; 
- - - - - - 0x003278 00:B268: 40        .byte $40   ; 
- - - - - - 0x003279 00:B269: 09        .byte $09, $C5, $10   ; 

- - - - - - 0x00327C 00:B26C: 01        .byte $01   ; 
- - - - - - 0x00327D 00:B26D: 43        .byte $43   ; 
- - - - - - 0x00327E 00:B26E: 01        .byte $01, $C9, $10   ; 



_off032_BCCD_0D:
- - - - - - 0x007CDD 01:BCCD: E7 BC     .word off_0D_BCE7_00
- D 1 - I - 0x007CDF 01:BCCF: E7 BC     .word off_0D_BCE7_01
- D 1 - I - 0x007CE1 01:BCD1: 07 BD     .word off_0D_BD07_02
- D 1 - I - 0x007CE3 01:BCD3: 43 BD     .word off_0D_BD43_03
- D 1 - I - 0x007CE5 01:BCD5: 68 BD     .word off_0D_BD68_04
- D 1 - I - 0x007CE7 01:BCD7: 8B BD     .word off_0D_BD8B_05
- D 1 - I - 0x007CE9 01:BCD9: A5 BD     .word off_0D_BDA5_06
- D 1 - I - 0x007CEB 01:BCDB: D1 BD     .word off_0D_BDD1_07
- D 1 - I - 0x007CED 01:BCDD: FD BD     .word off_0D_BDFD_08
- D 1 - I - 0x007CEF 01:BCDF: 23 BE     .word off_0D_BE23_09
- D 1 - I - 0x007CF1 01:BCE1: 49 BE     .word off_0D_BE49_0A
- D 1 - I - 0x007CF3 01:BCE3: 74 BE     .word off_0D_BE74_0B
- D 1 - I - 0x007CF5 01:BCE5: 9F BE     .word off_0D_BE9F_0C



off_0D_BCE7_00:
off_0D_BCE7_01:
- D 1 - I - 0x007CF7 01:BCE7: 82        .byte $82   ; counter
- D 1 - I - 0x007CF8 01:BCE8: 03        .byte $03   ; spr_A
- D 1 - I - 0x007CF9 01:BCE9: F0        .byte $F0, $83, $F1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x007CFC 01:BCEC: F8        .byte $F8, $81, $F1   ; 

- D 1 - I - 0x007CFF 01:BCEF: 81        .byte $81   ; 
- D 1 - I - 0x007D00 01:BCF0: 83        .byte $83   ; 
- D 1 - I - 0x007D01 01:BCF1: F0        .byte $F0, $81, $01   ; 

- D 1 - I - 0x007D04 01:BCF4: 81        .byte $81   ; 
- D 1 - I - 0x007D05 01:BCF5: 03        .byte $03   ; 
- D 1 - I - 0x007D06 01:BCF6: F8        .byte $F8, $85, $01   ; 

- D 1 - I - 0x007D09 01:BCF9: 04        .byte $04   ; 
- D 1 - I - 0x007D0A 01:BCFA: C3        .byte $C3   ; 
- D 1 - I - 0x007D0B 01:BCFB: 00        .byte $00, $85, $F1   ; 
- D 1 - I - 0x007D0E 01:BCFE: 08        .byte $08, $81, $E9   ; 
- D 1 - I - 0x007D11 01:BD01: 00        .byte $00, $81, $01   ; 
- D 1 - I - 0x007D14 01:BD04: 08        .byte $08, $83, $01   ; 



off_0D_BD07_02:
- D 1 - I - 0x007D17 01:BD07: 81        .byte $81   ; counter
- D 1 - I - 0x007D18 01:BD08: 03        .byte $03   ; spr_A
- D 1 - I - 0x007D19 01:BD09: F0        .byte $F0, $81, $F1   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x007D1C 01:BD0C: 81        .byte $81   ; 
- D 1 - I - 0x007D1D 01:BD0D: 43        .byte $43   ; 
- D 1 - I - 0x007D1E 01:BD0E: E8        .byte $E8, $83, $01   ; 

- D 1 - I - 0x007D21 01:BD11: 82        .byte $82   ; 
- D 1 - I - 0x007D22 01:BD12: 03        .byte $03   ; 
- D 1 - I - 0x007D23 01:BD13: F0        .byte $F0, $85, $11   ; 
- D 1 - I - 0x007D26 01:BD16: E8        .byte $E8, $81, $09   ; 

- D 1 - I - 0x007D29 01:BD19: 81        .byte $81   ; 
- D 1 - I - 0x007D2A 01:BD1A: 83        .byte $83   ; 
- D 1 - I - 0x007D2B 01:BD1B: E8        .byte $E8, $81, $09   ; 

- D 1 - I - 0x007D2E 01:BD1E: 85        .byte $85   ; 
- D 1 - I - 0x007D2F 01:BD1F: 03        .byte $03   ; 
- D 1 - I - 0x007D30 01:BD20: F8        .byte $F8, $81, $01   ; 
- D 1 - I - 0x007D33 01:BD23: F8        .byte $F8, $81, $11   ; 
- D 1 - I - 0x007D36 01:BD26: 00        .byte $00, $81, $01   ; 
- D 1 - I - 0x007D39 01:BD29: 00        .byte $00, $81, $11   ; 
- D 1 - I - 0x007D3C 01:BD2C: 08        .byte $08, $85, $01   ; 

- D 1 - I - 0x007D3F 01:BD2F: 81        .byte $81   ; 
- D 1 - I - 0x007D40 01:BD30: 43        .byte $43   ; 
- D 1 - I - 0x007D41 01:BD31: 08        .byte $08, $85, $11   ; 

- D 1 - I - 0x007D44 01:BD34: 81        .byte $81   ; 
- D 1 - I - 0x007D45 01:BD35: 03        .byte $03   ; 
- D 1 - I - 0x007D46 01:BD36: 10        .byte $10, $83, $01   ; 

- D 1 - I - 0x007D49 01:BD39: 81        .byte $81   ; 
- D 1 - I - 0x007D4A 01:BD3A: 43        .byte $43   ; 
- D 1 - I - 0x007D4B 01:BD3B: 10        .byte $10, $81, $11   ; 

- D 1 - I - 0x007D4E 01:BD3E: 01        .byte $01   ; 
- D 1 - I - 0x007D4F 01:BD3F: 03        .byte $03   ; 
- D 1 - I - 0x007D50 01:BD40: 08        .byte $08, $81, $F1   ; 



off_0D_BD43_03:
- D 1 - I - 0x007D53 01:BD43: 86        .byte $86   ; counter
- D 1 - I - 0x007D54 01:BD44: 03        .byte $03   ; spr_A
- D 1 - I - 0x007D55 01:BD45: E8        .byte $E8, $85, $F9   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x007D58 01:BD48: F8        .byte $F8, $81, $F9   ; 
- D 1 - I - 0x007D5B 01:BD4B: F0        .byte $F0, $81, $09   ; 
- D 1 - I - 0x007D5E 01:BD4E: E8        .byte $E8, $83, $09   ; 
- D 1 - I - 0x007D61 01:BD51: F8        .byte $F8, $81, $19   ; 
- D 1 - I - 0x007D64 01:BD54: 00        .byte $00, $83, $19   ; 

- D 1 - I - 0x007D67 01:BD57: 05        .byte $05   ; 
- D 1 - I - 0x007D68 01:BD58: 43        .byte $43   ; 
- D 1 - I - 0x007D69 01:BD59: 08        .byte $08, $83, $09   ; 
- D 1 - I - 0x007D6C 01:BD5C: 08        .byte $08, $85, $F9   ; 
- D 1 - I - 0x007D6F 01:BD5F: 18        .byte $18, $81, $F9   ; 
- D 1 - I - 0x007D72 01:BD62: 10        .byte $10, $81, $09   ; 
- D 1 - I - 0x007D75 01:BD65: 18        .byte $18, $81, $19   ; 



off_0D_BD68_04:
- D 1 - I - 0x007D78 01:BD68: 83        .byte $83   ; counter
- D 1 - I - 0x007D79 01:BD69: 03        .byte $03   ; spr_A
- D 1 - I - 0x007D7A 01:BD6A: 08        .byte $08, $81, $F9   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x007D7D 01:BD6D: F8        .byte $F8, $81, $09   ; 
- D 1 - I - 0x007D80 01:BD70: E0        .byte $E0, $81, $01   ; 

- D 1 - I - 0x007D83 01:BD73: 81        .byte $81   ; 
- D 1 - I - 0x007D84 01:BD74: 43        .byte $43   ; 
- D 1 - I - 0x007D85 01:BD75: 10        .byte $10, $81, $09   ; 

- D 1 - I - 0x007D88 01:BD78: 83        .byte $83   ; 
- D 1 - I - 0x007D89 01:BD79: 03        .byte $03   ; 
- D 1 - I - 0x007D8A 01:BD7A: 10        .byte $10, $81, $19   ; 
- D 1 - I - 0x007D8D 01:BD7D: F8        .byte $F8, $81, $19   ; 
- D 1 - I - 0x007D90 01:BD80: 04        .byte $04, $81, $29   ; 

- D 1 - I - 0x007D93 01:BD83: 02        .byte $02   ; 
- D 1 - I - 0x007D94 01:BD84: 43        .byte $43   ; 
- D 1 - I - 0x007D95 01:BD85: E0        .byte $E0, $81, $29   ; 
- D 1 - I - 0x007D98 01:BD88: 20        .byte $20, $81, $29   ; 



off_0D_BD8B_05:
- D 1 - I - 0x007D9B 01:BD8B: 81        .byte $81   ; counter
- D 1 - I - 0x007D9C 01:BD8C: 01        .byte $01   ; spr_A
- D 1 - I - 0x007D9D 01:BD8D: F8        .byte $F8, $87, $F9   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x007DA0 01:BD90: 82        .byte $82   ; 
- D 1 - I - 0x007DA1 01:BD91: 02        .byte $02   ; 
- D 1 - I - 0x007DA2 01:BD92: F0        .byte $F0, $89, $01   ; 
- D 1 - I - 0x007DA5 01:BD95: F8        .byte $F8, $8B, $09   ; 

- D 1 - I - 0x007DA8 01:BD98: 81        .byte $81   ; 
- D 1 - I - 0x007DA9 01:BD99: 41        .byte $41   ; 
- D 1 - I - 0x007DAA 01:BD9A: 00        .byte $00, $87, $F9   ; 

- D 1 - I - 0x007DAD 01:BD9D: 02        .byte $02   ; 
- D 1 - I - 0x007DAE 01:BD9E: 42        .byte $42   ; 
- D 1 - I - 0x007DAF 01:BD9F: 08        .byte $08, $89, $01   ; 
- D 1 - I - 0x007DB2 01:BDA2: 00        .byte $00, $8B, $09   ; 



off_0D_BDA5_06:
- D 1 - I - 0x007DB5 01:BDA5: 82        .byte $82   ; counter
- D 1 - I - 0x007DB6 01:BDA6: 01        .byte $01   ; spr_A
- D 1 - I - 0x007DB7 01:BDA7: F0        .byte $F0, $8D, $F9   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x007DBA 01:BDAA: F8        .byte $F8, $8F, $F9   ; 

- D 1 - I - 0x007DBD 01:BDAD: 84        .byte $84   ; 
- D 1 - I - 0x007DBE 01:BDAE: 02        .byte $02   ; 
- D 1 - I - 0x007DBF 01:BDAF: F0        .byte $F0, $91, $09   ; 
- D 1 - I - 0x007DC2 01:BDB2: F8        .byte $F8, $93, $09   ; 
- D 1 - I - 0x007DC5 01:BDB5: F0        .byte $F0, $95, $19   ; 
- D 1 - I - 0x007DC8 01:BDB8: F8        .byte $F8, $97, $19   ; 

- D 1 - I - 0x007DCB 01:BDBB: 82        .byte $82   ; 
- D 1 - I - 0x007DCC 01:BDBC: 41        .byte $41   ; 
- D 1 - I - 0x007DCD 01:BDBD: 08        .byte $08, $8D, $F9   ; 
- D 1 - I - 0x007DD0 01:BDC0: 00        .byte $00, $8F, $F9   ; 

- D 1 - I - 0x007DD3 01:BDC3: 04        .byte $04   ; 
- D 1 - I - 0x007DD4 01:BDC4: 42        .byte $42   ; 
- D 1 - I - 0x007DD5 01:BDC5: 08        .byte $08, $91, $09   ; 
- D 1 - I - 0x007DD8 01:BDC8: 00        .byte $00, $93, $09   ; 
- D 1 - I - 0x007DDB 01:BDCB: 08        .byte $08, $95, $19   ; 
- D 1 - I - 0x007DDE 01:BDCE: 00        .byte $00, $97, $19   ; 



off_0D_BDD1_07:
- D 1 - I - 0x007DE1 01:BDD1: 82        .byte $82   ; counter
- D 1 - I - 0x007DE2 01:BDD2: 01        .byte $01   ; spr_A
- D 1 - I - 0x007DE3 01:BDD3: F0        .byte $F0, $8D, $09   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x007DE6 01:BDD6: F8        .byte $F8, $8F, $09   ; 

- D 1 - I - 0x007DE9 01:BDD9: 84        .byte $84   ; 
- D 1 - I - 0x007DEA 01:BDDA: 02        .byte $02   ; 
- D 1 - I - 0x007DEB 01:BDDB: F0        .byte $F0, $91, $19   ; 
- D 1 - I - 0x007DEE 01:BDDE: F8        .byte $F8, $93, $19   ; 
- D 1 - I - 0x007DF1 01:BDE1: F0        .byte $F0, $95, $29   ; 
- D 1 - I - 0x007DF4 01:BDE4: F8        .byte $F8, $97, $29   ; 

- D 1 - I - 0x007DF7 01:BDE7: 82        .byte $82   ; 
- D 1 - I - 0x007DF8 01:BDE8: 41        .byte $41   ; 
- D 1 - I - 0x007DF9 01:BDE9: 08        .byte $08, $8D, $09   ; 
- D 1 - I - 0x007DFC 01:BDEC: 00        .byte $00, $8F, $09   ; 

- D 1 - I - 0x007DFF 01:BDEF: 04        .byte $04   ; 
- D 1 - I - 0x007E00 01:BDF0: 42        .byte $42   ; 
- D 1 - I - 0x007E01 01:BDF1: 08        .byte $08, $91, $19   ; 
- D 1 - I - 0x007E04 01:BDF4: 00        .byte $00, $93, $19   ; 
- D 1 - I - 0x007E07 01:BDF7: 08        .byte $08, $95, $29   ; 
- D 1 - I - 0x007E0A 01:BDFA: 00        .byte $00, $97, $29   ; 



off_0D_BDFD_08:
- D 1 - I - 0x007E0D 01:BDFD: 81        .byte $81   ; counter
- D 1 - I - 0x007E0E 01:BDFE: 01        .byte $01   ; spr_A
- D 1 - I - 0x007E0F 01:BDFF: F8        .byte $F8, $99, $21   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x007E12 01:BE02: 84        .byte $84   ; 
- D 1 - I - 0x007E13 01:BE03: 02        .byte $02   ; 
- D 1 - I - 0x007E14 01:BE04: F0        .byte $F0, $9B, $31   ; 
- D 1 - I - 0x007E17 01:BE07: F8        .byte $F8, $9D, $31   ; 
- D 1 - I - 0x007E1A 01:BE0A: F0        .byte $F0, $9F, $41   ; 
- D 1 - I - 0x007E1D 01:BE0D: F8        .byte $F8, $A1, $41   ; 

- D 1 - I - 0x007E20 01:BE10: 81        .byte $81   ; 
- D 1 - I - 0x007E21 01:BE11: 41        .byte $41   ; 
- D 1 - I - 0x007E22 01:BE12: 00        .byte $00, $99, $21   ; 

- D 1 - I - 0x007E25 01:BE15: 04        .byte $04   ; 
- D 1 - I - 0x007E26 01:BE16: 42        .byte $42   ; 
- D 1 - I - 0x007E27 01:BE17: 08        .byte $08, $9B, $31   ; 
- D 1 - I - 0x007E2A 01:BE1A: 00        .byte $00, $9D, $31   ; 
- D 1 - I - 0x007E2D 01:BE1D: 08        .byte $08, $9F, $41   ; 
- D 1 - I - 0x007E30 01:BE20: 00        .byte $00, $A1, $41   ; 



off_0D_BE23_09:
- D 1 - I - 0x007E33 01:BE23: 82        .byte $82   ; counter
- D 1 - I - 0x007E34 01:BE24: 02        .byte $02   ; spr_A
- D 1 - I - 0x007E35 01:BE25: F0        .byte $F0, $9F, $41   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x007E38 01:BE28: F8        .byte $F8, $A1, $41   ; 

- D 1 - I - 0x007E3B 01:BE2B: 82        .byte $82   ; 
- D 1 - I - 0x007E3C 01:BE2C: 42        .byte $42   ; 
- D 1 - I - 0x007E3D 01:BE2D: 08        .byte $08, $9F, $41   ; 
- D 1 - I - 0x007E40 01:BE30: 00        .byte $00, $A1, $41   ; 

- D 1 - I - 0x007E43 01:BE33: 83        .byte $83   ; 
- D 1 - I - 0x007E44 01:BE34: 01        .byte $01   ; 
- D 1 - I - 0x007E45 01:BE35: E8        .byte $E8, $A3, $31   ; 
- D 1 - I - 0x007E48 01:BE38: F0        .byte $F0, $A5, $31   ; 
- D 1 - I - 0x007E4B 01:BE3B: F8        .byte $F8, $A7, $31   ; 

- D 1 - I - 0x007E4E 01:BE3E: 03        .byte $03   ; 
- D 1 - I - 0x007E4F 01:BE3F: 41        .byte $41   ; 
- D 1 - I - 0x007E50 01:BE40: 10        .byte $10, $A3, $31   ; 
- D 1 - I - 0x007E53 01:BE43: 08        .byte $08, $A5, $31   ; 
- D 1 - I - 0x007E56 01:BE46: 00        .byte $00, $A7, $31   ; 



off_0D_BE49_0A:
- D 1 - I - 0x007E59 01:BE49: 82        .byte $82   ; counter
- D 1 - I - 0x007E5A 01:BE4A: 02        .byte $02   ; spr_A
- D 1 - I - 0x007E5B 01:BE4B: F0        .byte $F0, $9F, $41   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x007E5E 01:BE4E: F8        .byte $F8, $A1, $41   ; 

- D 1 - I - 0x007E61 01:BE51: 81        .byte $81   ; 
- D 1 - I - 0x007E62 01:BE52: 41        .byte $41   ; 
- D 1 - I - 0x007E63 01:BE53: 00        .byte $00, $99, $21   ; 

- D 1 - I - 0x007E66 01:BE56: 84        .byte $84   ; 
- D 1 - I - 0x007E67 01:BE57: 42        .byte $42   ; 
- D 1 - I - 0x007E68 01:BE58: 08        .byte $08, $9B, $31   ; 
- D 1 - I - 0x007E6B 01:BE5B: 00        .byte $00, $9D, $31   ; 
- D 1 - I - 0x007E6E 01:BE5E: 08        .byte $08, $9F, $41   ; 
- D 1 - I - 0x007E71 01:BE61: 00        .byte $00, $A1, $41   ; 

- D 1 - I - 0x007E74 01:BE64: 82        .byte $82   ; 
- D 1 - I - 0x007E75 01:BE65: 01        .byte $01   ; 
- D 1 - I - 0x007E76 01:BE66: F0        .byte $F0, $A9, $21   ; 
- D 1 - I - 0x007E79 01:BE69: F8        .byte $F8, $AB, $21   ; 

- D 1 - I - 0x007E7C 01:BE6C: 02        .byte $02   ; 
- D 1 - I - 0x007E7D 01:BE6D: 02        .byte $02   ; 
- D 1 - I - 0x007E7E 01:BE6E: F0        .byte $F0, $AD, $31   ; 
- D 1 - I - 0x007E81 01:BE71: F8        .byte $F8, $AF, $31   ; 



off_0D_BE74_0B:
- D 1 - I - 0x007E84 01:BE74: 82        .byte $82   ; counter
- D 1 - I - 0x007E85 01:BE75: 02        .byte $02   ; spr_A
- D 1 - I - 0x007E86 01:BE76: F0        .byte $F0, $9F, $41   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x007E89 01:BE79: F8        .byte $F8, $A1, $41   ; 

- D 1 - I - 0x007E8C 01:BE7C: 81        .byte $81   ; 
- D 1 - I - 0x007E8D 01:BE7D: 41        .byte $41   ; 
- D 1 - I - 0x007E8E 01:BE7E: 00        .byte $00, $99, $21   ; 

- D 1 - I - 0x007E91 01:BE81: 84        .byte $84   ; 
- D 1 - I - 0x007E92 01:BE82: 42        .byte $42   ; 
- D 1 - I - 0x007E93 01:BE83: 08        .byte $08, $9B, $31   ; 
- D 1 - I - 0x007E96 01:BE86: 00        .byte $00, $9D, $31   ; 
- D 1 - I - 0x007E99 01:BE89: 08        .byte $08, $9F, $41   ; 
- D 1 - I - 0x007E9C 01:BE8C: 00        .byte $00, $A1, $41   ; 

- D 1 - I - 0x007E9F 01:BE8F: 83        .byte $83   ; 
- D 1 - I - 0x007EA0 01:BE90: 01        .byte $01   ; 
- D 1 - I - 0x007EA1 01:BE91: E8        .byte $E8, $B1, $31   ; 
- D 1 - I - 0x007EA4 01:BE94: F0        .byte $F0, $B3, $31   ; 
- D 1 - I - 0x007EA7 01:BE97: F8        .byte $F8, $B5, $21   ; 

- D 1 - I - 0x007EAA 01:BE9A: 01        .byte $01   ; 
- D 1 - I - 0x007EAB 01:BE9B: 02        .byte $02   ; 
- D 1 - I - 0x007EAC 01:BE9C: F8        .byte $F8, $B7, $31   ; 



off_0D_BE9F_0C:
- D 1 - I - 0x007EAF 01:BE9F: 82        .byte $82   ; counter
- D 1 - I - 0x007EB0 01:BEA0: 02        .byte $02   ; spr_A
- D 1 - I - 0x007EB1 01:BEA1: F0        .byte $F0, $9F, $41   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x007EB4 01:BEA4: F8        .byte $F8, $A1, $41   ; 

- D 1 - I - 0x007EB7 01:BEA7: 81        .byte $81   ; 
- D 1 - I - 0x007EB8 01:BEA8: 41        .byte $41   ; 
- D 1 - I - 0x007EB9 01:BEA9: 00        .byte $00, $99, $21   ; 

- D 1 - I - 0x007EBC 01:BEAC: 84        .byte $84   ; 
- D 1 - I - 0x007EBD 01:BEAD: 42        .byte $42   ; 
- D 1 - I - 0x007EBE 01:BEAE: 08        .byte $08, $9B, $31   ; 
- D 1 - I - 0x007EC1 01:BEB1: 00        .byte $00, $9D, $31   ; 
- D 1 - I - 0x007EC4 01:BEB4: 08        .byte $08, $9F, $41   ; 
- D 1 - I - 0x007EC7 01:BEB7: 00        .byte $00, $A1, $41   ; 

- D 1 - I - 0x007ECA 01:BEBA: 81        .byte $81   ; 
- D 1 - I - 0x007ECB 01:BEBB: 01        .byte $01   ; 
- D 1 - I - 0x007ECC 01:BEBC: F8        .byte $F8, $BB, $21   ; 

- D 1 - I - 0x007ECF 01:BEBF: 81        .byte $81   ; 
- D 1 - I - 0x007ED0 01:BEC0: 02        .byte $02   ; 
- D 1 - I - 0x007ED1 01:BEC1: F8        .byte $F8, $BF, $31   ; 

- D 1 - I - 0x007ED4 01:BEC4: 02        .byte $02   ; 
- D 1 - I - 0x007ED5 01:BEC5: 01        .byte $01   ; 
- D 1 - I - 0x007ED6 01:BEC6: F0        .byte $F0, $B9, $21   ; 
- D 1 - I - 0x007ED9 01:BEC9: F0        .byte $F0, $BD, $31   ; 



_off032_B271_0E:
- - - - - - 0x003281 00:B271: 83 B2     .word off_0E_B283_00
- - - - - - 0x003283 00:B273: 83 B2     .word off_0E_B283_01
- - - - - - 0x003285 00:B275: 9D B2     .word off_0E_B29D_02
- - - - - - 0x003287 00:B277: B9 B2     .word off_0E_B2B9_03
- - - - - - 0x003289 00:B279: DA B2     .word off_0E_B2DA_04
- - - - - - 0x00328B 00:B27B: F9 B2     .word off_0E_B2F9_05
- - - - - - 0x00328D 00:B27D: FC B2     .word off_0E_B2FC_06
- - - - - - 0x00328F 00:B27F: FF B2     .word off_0E_B2FF_07
- - - - - - 0x003291 00:B281: 02 B3     .word off_0E_B302_08



off_0E_B2F9_05:
- - - - - - 0x003309 00:B2F9: FF        .byte $FF   ; 
off_0E_B283_00:
off_0E_B283_01:
- - - - - - 0x003293 00:B283: 82        .byte $82   ; counter
- - - - - - 0x003294 00:B284: 00        .byte $00   ; spr_A
- - - - - - 0x003295 00:B285: F8        .byte $F8, $9F, $F9   ; spr_X, spr_T, spr_Y
- - - - - - 0x003298 00:B288: 08        .byte $08, $A1, $F9   ; 

- - - - - - 0x00329B 00:B28B: 82        .byte $82   ; 
- - - - - - 0x00329C 00:B28C: 01        .byte $01   ; 
- - - - - - 0x00329D 00:B28D: 00        .byte $00, $9D, $F9   ; 
- - - - - - 0x0032A0 00:B290: F0        .byte $F0, $9D, $F9   ; 

- - - - - - 0x0032A3 00:B293: 81        .byte $81   ; 
- - - - - - 0x0032A4 00:B294: 43        .byte $43   ; 
- - - - - - 0x0032A5 00:B295: E8        .byte $E8, $F5, $F9   ; 

- - - - - - 0x0032A8 00:B298: 01        .byte $01   ; 
- - - - - - 0x0032A9 00:B299: 03        .byte $03   ; 
- - - - - - 0x0032AA 00:B29A: E0        .byte $E0, $F5, $F9   ; 



off_0E_B2FC_06:
- - - - - - 0x00330C 00:B2FC: FF        .byte $FF   ; 
off_0E_B29D_02:
- - - - - - 0x0032AD 00:B29D: 81        .byte $81   ; counter
- - - - - - 0x0032AE 00:B29E: 00        .byte $00   ; spr_A
- - - - - - 0x0032AF 00:B29F: F8        .byte $F8, $9F, $F9   ; spr_X, spr_T, spr_Y

- - - - - - 0x0032B2 00:B2A2: 81        .byte $81   ; 
- - - - - - 0x0032B3 00:B2A3: 01        .byte $01   ; 
- - - - - - 0x0032B4 00:B2A4: 00        .byte $00, $9D, $F9   ; 

- - - - - - 0x0032B7 00:B2A7: 81        .byte $81   ; 
- - - - - - 0x0032B8 00:B2A8: 00        .byte $00   ; 
- - - - - - 0x0032B9 00:B2A9: 08        .byte $08, $A1, $F9   ; 

- - - - - - 0x0032BC 00:B2AC: 82        .byte $82   ; 
- - - - - - 0x0032BD 00:B2AD: 03        .byte $03   ; 
- - - - - - 0x0032BE 00:B2AE: F0        .byte $F0, $9D, $F9   ; 
- - - - - - 0x0032C1 00:B2B1: D8        .byte $D8, $F5, $F9   ; 

- - - - - - 0x0032C4 00:B2B4: 01        .byte $01   ; 
- - - - - - 0x0032C5 00:B2B5: 43        .byte $43   ; 
- - - - - - 0x0032C6 00:B2B6: E0        .byte $E0, $F5, $F9   ; 



off_0E_B2FF_07:
- - - - - - 0x00330F 00:B2FF: FF        .byte $FF   ; 
off_0E_B2B9_03:
- - - - - - 0x0032C9 00:B2B9: 81        .byte $81   ; counter
- - - - - - 0x0032CA 00:B2BA: 00        .byte $00   ; spr_A
- - - - - - 0x0032CB 00:B2BB: F8        .byte $F8, $9F, $F9   ; spr_X, spr_T, spr_Y

- - - - - - 0x0032CE 00:B2BE: 81        .byte $81   ; 
- - - - - - 0x0032CF 00:B2BF: 01        .byte $01   ; 
- - - - - - 0x0032D0 00:B2C0: 00        .byte $00, $9D, $F9   ; 

- - - - - - 0x0032D3 00:B2C3: 82        .byte $82   ; 
- - - - - - 0x0032D4 00:B2C4: 00        .byte $00   ; 
- - - - - - 0x0032D5 00:B2C5: 08        .byte $08, $A1, $F9   ; 
- - - - - - 0x0032D8 00:B2C8: F0        .byte $F0, $9D, $F9   ; 

- - - - - - 0x0032DB 00:B2CB: 81        .byte $81   ; 
- - - - - - 0x0032DC 00:B2CC: 03        .byte $03   ; 
- - - - - - 0x0032DD 00:B2CD: D0        .byte $D0, $F5, $F9   ; 

- - - - - - 0x0032E0 00:B2D0: 81        .byte $81   ; 
- - - - - - 0x0032E1 00:B2D1: 43        .byte $43   ; 
- - - - - - 0x0032E2 00:B2D2: D8        .byte $D8, $F5, $F9   ; 

- - - - - - 0x0032E5 00:B2D5: 01        .byte $01   ; 
- - - - - - 0x0032E6 00:B2D6: 03        .byte $03   ; 
- - - - - - 0x0032E7 00:B2D7: E8        .byte $E8, $E1, $F9   ; 



off_0E_B302_08:
- - - - - - 0x003312 00:B302: FF        .byte $FF   ; 
off_0E_B2DA_04:
- - - - - - 0x0032EA 00:B2DA: 81        .byte $81   ; counter
- - - - - - 0x0032EB 00:B2DB: 00        .byte $00   ; spr_A
- - - - - - 0x0032EC 00:B2DC: F8        .byte $F8, $9F, $F9   ; spr_X, spr_T, spr_Y

- - - - - - 0x0032EF 00:B2DF: 81        .byte $81   ; 
- - - - - - 0x0032F0 00:B2E0: 01        .byte $01   ; 
- - - - - - 0x0032F1 00:B2E1: 00        .byte $00, $9D, $F9   ; 

- - - - - - 0x0032F4 00:B2E4: 82        .byte $82   ; 
- - - - - - 0x0032F5 00:B2E5: 00        .byte $00   ; 
- - - - - - 0x0032F6 00:B2E6: 08        .byte $08, $A1, $F9   ; 
- - - - - - 0x0032F9 00:B2E9: F0        .byte $F0, $9D, $F9   ; 

- - - - - - 0x0032FC 00:B2EC: 82        .byte $82   ; 
- - - - - - 0x0032FD 00:B2ED: 03        .byte $03   ; 
- - - - - - 0x0032FE 00:B2EE: C0        .byte $C0, $E1, $F9   ; 
- - - - - - 0x003301 00:B2F1: C8        .byte $C8, $F5, $F9   ; 

- - - - - - 0x003304 00:B2F4: 01        .byte $01   ; 
- - - - - - 0x003305 00:B2F5: 43        .byte $43   ; 
- - - - - - 0x003306 00:B2F6: D0        .byte $D0, $F5, $F9   ; 



_off032_A001_01:
- - - - - - 0x004011 01:A001: 1B A1     .word off_01_A11B_00
- D 1 - I - 0x004013 01:A003: 1B A1     .word off_01_A11B_01
- D 1 - I - 0x004015 01:A005: 2B A1     .word off_01_A12B_02
- D 1 - I - 0x004017 01:A007: 38 A1     .word off_01_A138_03
- D 1 - I - 0x004019 01:A009: 48 A1     .word off_01_A148_04
- D 1 - I - 0x00401B 01:A00B: 55 A1     .word off_01_A155_05
- D 1 - I - 0x00401D 01:A00D: 65 A1     .word off_01_A165_06
- D 1 - I - 0x00401F 01:A00F: 72 A1     .word off_01_A172_07
- D 1 - I - 0x004021 01:A011: 82 A1     .word off_01_A182_08
- - - - - - 0x004023 01:A013: 85 A1     .word off_01_A185_09
- - - - - - 0x004025 01:A015: 88 A1     .word off_01_A188_0A
- D 1 - I - 0x004027 01:A017: 8B A1     .word off_01_A18B_0B
- D 1 - I - 0x004029 01:A019: 9B A1     .word off_01_A19B_0C
- D 1 - I - 0x00402B 01:A01B: A8 A1     .word off_01_A1A8_0D
- - - - - - 0x00402D 01:A01D: B8 A1     .word off_01_A1B8_0E
- D 1 - I - 0x00402F 01:A01F: C5 A1     .word off_01_A1C5_0F
- D 1 - I - 0x004031 01:A021: C8 A1     .word off_01_A1C8_10
- D 1 - I - 0x004033 01:A023: CB A1     .word off_01_A1CB_11
- D 1 - I - 0x004035 01:A025: CE A1     .word off_01_A1CE_12
- D 1 - I - 0x004037 01:A027: D1 A1     .word off_01_A1D1_13
- D 1 - I - 0x004039 01:A029: E1 A1     .word off_01_A1E1_14
- D 1 - I - 0x00403B 01:A02B: EE A1     .word off_01_A1EE_15
- - - - - - 0x00403D 01:A02D: FB A1     .word off_01_A1FB_16
- D 1 - I - 0x00403F 01:A02F: 08 A2     .word off_01_A208_17
- D 1 - I - 0x004041 01:A031: 0B A2     .word off_01_A20B_18
- D 1 - I - 0x004043 01:A033: 0E A2     .word off_01_A20E_19
- - - - - - 0x004045 01:A035: 11 A2     .word off_01_A211_1A
- D 1 - I - 0x004047 01:A037: 14 A2     .word off_01_A214_1B
- - - - - - 0x004049 01:A039: 26 A2     .word off_01_A226_1C
- - - - - - 0x00404B 01:A03B: 38 A2     .word off_01_A238_1D
- - - - - - 0x00404D 01:A03D: 48 A2     .word off_01_A248_1E
- D 1 - I - 0x00404F 01:A03F: 5A A2     .word off_01_A25A_1F
- D 1 - I - 0x004051 01:A041: 6A A2     .word off_01_A26A_20
- - - - - - 0x004053 01:A043: 7A A2     .word off_01_A27A_21
- - - - - - 0x004055 01:A045: 8A A2     .word off_01_A28A_22
- - - - - - 0x004057 01:A047: 9A A2     .word off_01_A29A_23
- D 1 - I - 0x004059 01:A049: 9D A2     .word off_01_A29D_24
- D 1 - I - 0x00405B 01:A04B: A0 A2     .word off_01_A2A0_25
- - - - - - 0x00405D 01:A04D: B0 A2     .word off_01_A2B0_26
- D 1 - I - 0x00405F 01:A04F: C0 A2     .word off_01_A2C0_27
- - - - - - 0x004061 01:A051: C3 A2     .word off_01_A2C3_28
- - - - - - 0x004063 01:A053: C6 A2     .word off_01_A2C6_29
- - - - - - 0x004065 01:A055: D6 A2     .word off_01_A2D6_2A
- D 1 - I - 0x004067 01:A057: E6 A2     .word off_01_A2E6_2B
- D 1 - I - 0x004069 01:A059: E9 A2     .word off_01_A2E9_2C
- D 1 - I - 0x00406B 01:A05B: EC A2     .word off_01_A2EC_2D
- - - - - - 0x00406D 01:A05D: FC A2     .word off_01_A2FC_2E
- - - - - - 0x00406F 01:A05F: 0C A3     .word off_01_A30C_2F
- - - - - - 0x004071 01:A061: 0C A3     .word off_01_A30C_30
- - - - - - 0x004073 01:A063: 0C A3     .word off_01_A30C_31
- - - - - - 0x004075 01:A065: 0C A3     .word off_01_A30C_32
- - - - - - 0x004077 01:A067: 0C A3     .word off_01_A30C_33
- - - - - - 0x004079 01:A069: 0C A3     .word off_01_A30C_34
- - - - - - 0x00407B 01:A06B: 0C A3     .word off_01_A30C_35
- - - - - - 0x00407D 01:A06D: 0C A3     .word off_01_A30C_36
- - - - - - 0x00407F 01:A06F: 0C A3     .word off_01_A30C_37
- - - - - - 0x004081 01:A071: 0C A3     .word off_01_A30C_38
- - - - - - 0x004083 01:A073: 0C A3     .word off_01_A30C_39
- - - - - - 0x004085 01:A075: 0C A3     .word off_01_A30C_3A
- D 1 - I - 0x004087 01:A077: 0C A3     .word off_01_A30C_3B
- - - - - - 0x004089 01:A079: 19 A3     .word off_01_A319_3C
- - - - - - 0x00408B 01:A07B: 1C A3     .word off_01_A31C_3D
- - - - - - 0x00408D 01:A07D: 2E A3     .word off_01_A32E_3E
- - - - - - 0x00408F 01:A07F: 40 A3     .word off_01_A340_3F
- - - - - - 0x004091 01:A081: 50 A3     .word off_01_A350_40
- D 1 - I - 0x004093 01:A083: 60 A3     .word off_01_A360_41
- D 1 - I - 0x004095 01:A085: 72 A3     .word off_01_A372_42
- D 1 - I - 0x004097 01:A087: 7C A3     .word off_01_A37C_43
- D 1 - I - 0x004099 01:A089: 86 A3     .word off_01_A386_44
- D 1 - I - 0x00409B 01:A08B: 90 A3     .word off_01_A390_45
- - - - - - 0x00409D 01:A08D: 9A A3     .word off_01_A39A_46
- - - - - - 0x00409F 01:A08F: 9A A3     .word off_01_A39A_47
- D 1 - I - 0x0040A1 01:A091: 9A A3     .word off_01_A39A_48
- D 1 - I - 0x0040A3 01:A093: A8 A3     .word off_01_A3A8_49
- D 1 - I - 0x0040A5 01:A095: B3 A3     .word off_01_A3B3_4A
- D 1 - I - 0x0040A7 01:A097: C3 A3     .word off_01_A3C3_4B
- D 1 - I - 0x0040A9 01:A099: D0 A3     .word off_01_A3D0_4C
- D 1 - I - 0x0040AB 01:A09B: DE A3     .word off_01_A3DE_4D
- D 1 - I - 0x0040AD 01:A09D: E9 A3     .word off_01_A3E9_4E
- D 1 - I - 0x0040AF 01:A09F: F7 A3     .word off_01_A3F7_4F
- D 1 - I - 0x0040B1 01:A0A1: FA A3     .word off_01_A3FA_50
- D 1 - I - 0x0040B3 01:A0A3: FD A3     .word off_01_A3FD_51
- D 1 - I - 0x0040B5 01:A0A5: 00 A4     .word off_01_A400_52
- D 1 - I - 0x0040B7 01:A0A7: 11 A4     .word off_01_A411_53
- D 1 - I - 0x0040B9 01:A0A9: 1F A4     .word off_01_A41F_54
- D 1 - I - 0x0040BB 01:A0AB: 30 A4     .word off_01_A430_55
- D 1 - I - 0x0040BD 01:A0AD: 33 A4     .word off_01_A433_56
- D 1 - I - 0x0040BF 01:A0AF: 36 A4     .word off_01_A436_57
- D 1 - I - 0x0040C1 01:A0B1: 39 A4     .word off_01_A439_58
- D 1 - I - 0x0040C3 01:A0B3: 47 A4     .word off_01_A447_59
- D 1 - I - 0x0040C5 01:A0B5: 52 A4     .word off_01_A452_5A
- D 1 - I - 0x0040C7 01:A0B7: 5D A4     .word off_01_A45D_5B
- D 1 - I - 0x0040C9 01:A0B9: 68 A4     .word off_01_A468_5C
- D 1 - I - 0x0040CB 01:A0BB: 6B A4     .word off_01_A46B_5D
- D 1 - I - 0x0040CD 01:A0BD: 6E A4     .word off_01_A46E_5E
- D 1 - I - 0x0040CF 01:A0BF: 71 A4     .word off_01_A471_5F
- D 1 - I - 0x0040D1 01:A0C1: 74 A4     .word off_01_A474_60
- D 1 - I - 0x0040D3 01:A0C3: 82 A4     .word off_01_A482_61
- D 1 - I - 0x0040D5 01:A0C5: 94 A4     .word off_01_A494_62
- D 1 - I - 0x0040D7 01:A0C7: A4 A4     .word off_01_A4A4_63
- D 1 - I - 0x0040D9 01:A0C9: B6 A4     .word off_01_A4B6_64
- D 1 - I - 0x0040DB 01:A0CB: C4 A4     .word off_01_A4C4_65
- D 1 - I - 0x0040DD 01:A0CD: D2 A4     .word off_01_A4D2_66
- D 1 - I - 0x0040DF 01:A0CF: E2 A4     .word off_01_A4E2_67
- D 1 - I - 0x0040E1 01:A0D1: F2 A4     .word off_01_A4F2_68
- D 1 - I - 0x0040E3 01:A0D3: F5 A4     .word off_01_A4F5_69
- D 1 - I - 0x0040E5 01:A0D5: F8 A4     .word off_01_A4F8_6A
- D 1 - I - 0x0040E7 01:A0D7: 0B A5     .word off_01_A50B_6B
- D 1 - I - 0x0040E9 01:A0D9: 1E A5     .word off_01_A51E_6C
- D 1 - I - 0x0040EB 01:A0DB: 21 A5     .word off_01_A521_6D
- D 1 - I - 0x0040ED 01:A0DD: 24 A5     .word off_01_A524_6E
- - - - - - 0x0040EF 01:A0DF: 32 A5     .word off_01_A532_6F
- D 1 - I - 0x0040F1 01:A0E1: 40 A5     .word off_01_A540_70
- D 1 - I - 0x0040F3 01:A0E3: 43 A5     .word off_01_A543_71
- D 1 - I - 0x0040F5 01:A0E5: 46 A5     .word off_01_A546_72
- D 1 - I - 0x0040F7 01:A0E7: 54 A5     .word off_01_A554_73
- - - - - - 0x0040F9 01:A0E9: 62 A5     .word off_01_A562_74
- - - - - - 0x0040FB 01:A0EB: 62 A5     .word off_01_A562_75
- - - - - - 0x0040FD 01:A0ED: 62 A5     .word off_01_A562_76
- - - - - - 0x0040FF 01:A0EF: 62 A5     .word off_01_A562_77
- - - - - - 0x004101 01:A0F1: 62 A5     .word off_01_A562_78
- - - - - - 0x004103 01:A0F3: 62 A5     .word off_01_A562_79
- - - - - - 0x004105 01:A0F5: 62 A5     .word off_01_A562_7A
- - - - - - 0x004107 01:A0F7: 62 A5     .word off_01_A562_7B
- - - - - - 0x004109 01:A0F9: 62 A5     .word off_01_A562_7C
- - - - - - 0x00410B 01:A0FB: 62 A5     .word off_01_A562_7D
- - - - - - 0x00410D 01:A0FD: 62 A5     .word off_01_A562_7E
- - - - - - 0x00410F 01:A0FF: 62 A5     .word off_01_A562_7F
- D 1 - I - 0x004111 01:A101: 62 A5     .word off_01_A562_80
- D 1 - I - 0x004113 01:A103: 70 A5     .word off_01_A570_81
- D 1 - I - 0x004115 01:A105: 73 A5     .word off_01_A573_82
- D 1 - I - 0x004117 01:A107: 7E A5     .word off_01_A57E_83
- D 1 - I - 0x004119 01:A109: 81 A5     .word off_01_A581_84
- - - - - - 0x00411B 01:A10B: 93 A5     .word off_01_A593_85
- D 1 - I - 0x00411D 01:A10D: A5 A5     .word off_01_A5A5_86
- - - - - - 0x00411F 01:A10F: B3 A5     .word off_01_A5B3_87
- D 1 - I - 0x004121 01:A111: C1 A5     .word off_01_A5C1_88
- D 1 - I - 0x004123 01:A113: D1 A5     .word off_01_A5D1_89
- - - - - - 0x004125 01:A115: D9 A5     .word off_01_A5D9_8A
- - - - - - 0x004127 01:A117: E3 A5     .word off_01_A5E3_8B
- - - - - - 0x004129 01:A119: ED A5     .word off_01_A5ED_8C



off_01_A11B_00:
off_01_A11B_01:
- D 1 - I - 0x00412B 01:A11B: 82        .byte $82   ; counter
- D 1 - I - 0x00412C 01:A11C: 00        .byte $00   ; spr_A
- D 1 - I - 0x00412D 01:A11D: F7        .byte $F7, $01, $00   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004130 01:A120: FF        .byte $FF, $03, $00   ; 

- D 1 - I - 0x004133 01:A123: 02        .byte $02   ; 
- D 1 - I - 0x004134 01:A124: 01        .byte $01   ; 
- D 1 - I - 0x004135 01:A125: F7        .byte $F7, $43, $F0   ; 
- D 1 - I - 0x004138 01:A128: FF        .byte $FF, $45, $F0   ; 



off_01_A12B_02:
- D 1 - I - 0x00413B 01:A12B: 81        .byte $81   ; counter
- D 1 - I - 0x00413C 01:A12C: 00        .byte $00   ; spr_A
- D 1 - I - 0x00413D 01:A12D: FA        .byte $FA, $05, $01   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x004140 01:A130: 02        .byte $02   ; 
- D 1 - I - 0x004141 01:A131: 01        .byte $01   ; 
- D 1 - I - 0x004142 01:A132: F7        .byte $F7, $43, $F2   ; 
- D 1 - I - 0x004145 01:A135: FF        .byte $FF, $45, $F2   ; 



off_01_A138_03:
- D 1 - I - 0x004148 01:A138: 82        .byte $82   ; counter
- D 1 - I - 0x004149 01:A139: 40        .byte $40   ; spr_A
- D 1 - I - 0x00414A 01:A13A: FF        .byte $FF, $01, $00   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x00414D 01:A13D: F7        .byte $F7, $03, $00   ; 

- D 1 - I - 0x004150 01:A140: 02        .byte $02   ; 
- D 1 - I - 0x004151 01:A141: 01        .byte $01   ; 
- D 1 - I - 0x004152 01:A142: F9        .byte $F9, $43, $F0   ; 
- D 1 - I - 0x004155 01:A145: 01        .byte $01, $45, $F0   ; 



off_01_A148_04:
- D 1 - I - 0x004158 01:A148: 81        .byte $81   ; counter
- D 1 - I - 0x004159 01:A149: 40        .byte $40   ; spr_A
- D 1 - I - 0x00415A 01:A14A: FC        .byte $FC, $05, $01   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x00415D 01:A14D: 02        .byte $02   ; 
- D 1 - I - 0x00415E 01:A14E: 01        .byte $01   ; 
- D 1 - I - 0x00415F 01:A14F: F9        .byte $F9, $43, $F2   ; 
- D 1 - I - 0x004162 01:A152: 01        .byte $01, $45, $F2   ; 



off_01_A182_08:
- D 1 - I - 0x004192 01:A182: FF        .byte $FF   ; 
off_01_A155_05:
- D 1 - I - 0x004165 01:A155: 82        .byte $82   ; counter
- D 1 - I - 0x004166 01:A156: 00        .byte $00   ; spr_A
- D 1 - I - 0x004167 01:A157: FA        .byte $FA, $07, $FF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x00416A 01:A15A: 02        .byte $02, $09, $FF   ; 

- D 1 - I - 0x00416D 01:A15D: 02        .byte $02   ; 
- D 1 - I - 0x00416E 01:A15E: 01        .byte $01   ; 
- D 1 - I - 0x00416F 01:A15F: FA        .byte $FA, $47, $EF   ; 
- D 1 - I - 0x004172 01:A162: 02        .byte $02, $49, $EF   ; 



off_01_A185_09:
- - - - - - 0x004195 01:A185: FF        .byte $FF   ; 
off_01_A165_06:
- D 1 - I - 0x004175 01:A165: 82        .byte $82   ; counter
- D 1 - I - 0x004176 01:A166: 01        .byte $01   ; spr_A
- D 1 - I - 0x004177 01:A167: F9        .byte $F9, $47, $F1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x00417A 01:A16A: 01        .byte $01, $49, $F1   ; 

- D 1 - I - 0x00417D 01:A16D: 01        .byte $01   ; 
- D 1 - I - 0x00417E 01:A16E: 00        .byte $00   ; 
- D 1 - I - 0x00417F 01:A16F: FD        .byte $FD, $0B, $00   ; 



off_01_A188_0A:
- - - - - - 0x004198 01:A188: FF        .byte $FF   ; 
off_01_A172_07:
- D 1 - I - 0x004182 01:A172: 82        .byte $82   ; counter
- D 1 - I - 0x004183 01:A173: 00        .byte $00   ; spr_A
- D 1 - I - 0x004184 01:A174: F8        .byte $F8, $0D, $FF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004187 01:A177: 00        .byte $00, $0F, $FF   ; 

- D 1 - I - 0x00418A 01:A17A: 02        .byte $02   ; 
- D 1 - I - 0x00418B 01:A17B: 01        .byte $01   ; 
- D 1 - I - 0x00418C 01:A17C: F6        .byte $F6, $47, $EF   ; 
- D 1 - I - 0x00418F 01:A17F: FE        .byte $FE, $49, $EF   ; 



off_01_A1C5_0F:
- D 1 - I - 0x0041D5 01:A1C5: FF        .byte $FF   ; 
off_01_A18B_0B:
- D 1 - I - 0x00419B 01:A18B: 82        .byte $82   ; counter
- D 1 - I - 0x00419C 01:A18C: 00        .byte $00   ; spr_A
- D 1 - I - 0x00419D 01:A18D: F6        .byte $F6, $11, $00   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0041A0 01:A190: FE        .byte $FE, $13, $00   ; 

- D 1 - I - 0x0041A3 01:A193: 02        .byte $02   ; 
- D 1 - I - 0x0041A4 01:A194: 01        .byte $01   ; 
- D 1 - I - 0x0041A5 01:A195: F3        .byte $F3, $4B, $F0   ; 
- D 1 - I - 0x0041A8 01:A198: FB        .byte $FB, $4D, $F0   ; 



off_01_A1C8_10:
- D 1 - I - 0x0041D8 01:A1C8: FF        .byte $FF   ; 
off_01_A19B_0C:
- D 1 - I - 0x0041AB 01:A19B: 81        .byte $81   ; counter
- D 1 - I - 0x0041AC 01:A19C: 00        .byte $00   ; spr_A
- D 1 - I - 0x0041AD 01:A19D: FB        .byte $FB, $15, $00   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x0041B0 01:A1A0: 02        .byte $02   ; 
- D 1 - I - 0x0041B1 01:A1A1: 01        .byte $01   ; 
- D 1 - I - 0x0041B2 01:A1A2: F2        .byte $F2, $4B, $F2   ; 
- D 1 - I - 0x0041B5 01:A1A5: FA        .byte $FA, $4D, $F2   ; 



off_01_A1CB_11:
- D 1 - I - 0x0041DB 01:A1CB: FF        .byte $FF   ; 
off_01_A1A8_0D:
- D 1 - I - 0x0041B8 01:A1A8: 82        .byte $82   ; counter
- D 1 - I - 0x0041B9 01:A1A9: 00        .byte $00   ; spr_A
- D 1 - I - 0x0041BA 01:A1AA: F6        .byte $F6, $17, $00   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0041BD 01:A1AD: FE        .byte $FE, $19, $00   ; 

- D 1 - I - 0x0041C0 01:A1B0: 02        .byte $02   ; 
- D 1 - I - 0x0041C1 01:A1B1: 01        .byte $01   ; 
- D 1 - I - 0x0041C2 01:A1B2: F1        .byte $F1, $4B, $F0   ; 
- D 1 - I - 0x0041C5 01:A1B5: F9        .byte $F9, $4D, $F0   ; 



off_01_A1CE_12:
- D 1 - I - 0x0041DE 01:A1CE: FF        .byte $FF   ; 
off_01_A1B8_0E:
- D 1 - I - 0x0041C8 01:A1B8: 81        .byte $81   ; counter
- D 1 - I - 0x0041C9 01:A1B9: 00        .byte $00   ; spr_A
- D 1 - I - 0x0041CA 01:A1BA: FA        .byte $FA, $15, $00   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x0041CD 01:A1BD: 02        .byte $02   ; 
- D 1 - I - 0x0041CE 01:A1BE: 01        .byte $01   ; 
- D 1 - I - 0x0041CF 01:A1BF: F2        .byte $F2, $4B, $F2   ; 
- D 1 - I - 0x0041D2 01:A1C2: FA        .byte $FA, $4D, $F2   ; 



off_01_A208_17:
- D 1 - I - 0x004218 01:A208: FF        .byte $FF   ; 
off_01_A1D1_13:
- D 1 - I - 0x0041E1 01:A1D1: 82        .byte $82   ; counter
- D 1 - I - 0x0041E2 01:A1D2: 01        .byte $01   ; spr_A
- D 1 - I - 0x0041E3 01:A1D3: FA        .byte $FA, $4F, $F0   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0041E6 01:A1D6: 02        .byte $02, $51, $F0   ; 

- D 1 - I - 0x0041E9 01:A1D9: 02        .byte $02   ; 
- D 1 - I - 0x0041EA 01:A1DA: 00        .byte $00   ; 
- D 1 - I - 0x0041EB 01:A1DB: FB        .byte $FB, $1B, $00   ; 
- D 1 - I - 0x0041EE 01:A1DE: 03        .byte $03, $1D, $00   ; 



off_01_A20B_18:
- D 1 - I - 0x00421B 01:A20B: FF        .byte $FF   ; 
off_01_A1E1_14:
- D 1 - I - 0x0041F1 01:A1E1: 82        .byte $82   ; counter
- D 1 - I - 0x0041F2 01:A1E2: 01        .byte $01   ; spr_A
- D 1 - I - 0x0041F3 01:A1E3: FA        .byte $FA, $4F, $F2   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0041F6 01:A1E6: 02        .byte $02, $51, $F2   ; 

- D 1 - I - 0x0041F9 01:A1E9: 01        .byte $01   ; 
- D 1 - I - 0x0041FA 01:A1EA: 00        .byte $00   ; 
- D 1 - I - 0x0041FB 01:A1EB: FF        .byte $FF, $1F, $01   ; 



off_01_A20E_19:
- D 1 - I - 0x00421E 01:A20E: FF        .byte $FF   ; 
off_01_A1EE_15:
- D 1 - I - 0x0041FE 01:A1EE: 82        .byte $82   ; counter
- D 1 - I - 0x0041FF 01:A1EF: 01        .byte $01   ; spr_A
- D 1 - I - 0x004200 01:A1F0: FC        .byte $FC, $4F, $F0   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004203 01:A1F3: 04        .byte $04, $51, $F0   ; 

- D 1 - I - 0x004206 01:A1F6: 01        .byte $01   ; 
- D 1 - I - 0x004207 01:A1F7: 00        .byte $00   ; 
- D 1 - I - 0x004208 01:A1F8: 00        .byte $00, $21, $00   ; 



off_01_A211_1A:
- - - - - - 0x004221 01:A211: FF        .byte $FF   ; 
off_01_A1FB_16:
- - - - - - 0x00420B 01:A1FB: 82        .byte $82   ; counter
- - - - - - 0x00420C 01:A1FC: 01        .byte $01   ; spr_A
- - - - - - 0x00420D 01:A1FD: FC        .byte $FC, $4F, $F2   ; spr_X, spr_T, spr_Y
- - - - - - 0x004210 01:A200: 04        .byte $04, $51, $F2   ; 

- - - - - - 0x004213 01:A203: 01        .byte $01   ; 
- - - - - - 0x004214 01:A204: 00        .byte $00   ; 
- - - - - - 0x004215 01:A205: 00        .byte $00, $1F, $01   ; 



off_01_A214_1B:
- D 1 - I - 0x004224 01:A214: 81        .byte $81   ; counter
- D 1 - I - 0x004225 01:A215: 01        .byte $01   ; spr_A
- D 1 - I - 0x004226 01:A216: 02        .byte $02, $55, $F0   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x004229 01:A219: 82        .byte $82   ; 
- D 1 - I - 0x00422A 01:A21A: 00        .byte $00   ; 
- D 1 - I - 0x00422B 01:A21B: FB        .byte $FB, $23, $00   ; 
- D 1 - I - 0x00422E 01:A21E: 03        .byte $03, $25, $00   ; 

- D 1 - I - 0x004231 01:A221: 01        .byte $01   ; 
- D 1 - I - 0x004232 01:A222: 01        .byte $01   ; 
- D 1 - I - 0x004233 01:A223: FA        .byte $FA, $53, $F0   ; 



off_01_A226_1C:
- - - - - - 0x004236 01:A226: 81        .byte $81   ; counter
- - - - - - 0x004237 01:A227: 00        .byte $00   ; spr_A
- - - - - - 0x004238 01:A228: FB        .byte $FB, $27, $00   ; spr_X, spr_T, spr_Y

- - - - - - 0x00423B 01:A22B: 81        .byte $81   ; 
- - - - - - 0x00423C 01:A22C: 40        .byte $40   ; 
- - - - - - 0x00423D 01:A22D: 03        .byte $03, $23, $00   ; 

- - - - - - 0x004240 01:A230: 02        .byte $02   ; 
- - - - - - 0x004241 01:A231: 01        .byte $01   ; 
- - - - - - 0x004242 01:A232: 03        .byte $03, $55, $F2   ; 
- - - - - - 0x004245 01:A235: FB        .byte $FB, $53, $F2   ; 



off_01_A238_1D:
- - - - - - 0x004248 01:A238: 82        .byte $82   ; counter
- - - - - - 0x004249 01:A239: 01        .byte $01   ; spr_A
- - - - - - 0x00424A 01:A23A: FC        .byte $FC, $53, $F0   ; spr_X, spr_T, spr_Y
- - - - - - 0x00424D 01:A23D: 04        .byte $04, $55, $F0   ; 

- - - - - - 0x004250 01:A240: 02        .byte $02   ; 
- - - - - - 0x004251 01:A241: 40        .byte $40   ; 
- - - - - - 0x004252 01:A242: 03        .byte $03, $23, $00   ; 
- - - - - - 0x004255 01:A245: FB        .byte $FB, $25, $00   ; 



off_01_A248_1E:
- - - - - - 0x004258 01:A248: 81        .byte $81   ; counter
- - - - - - 0x004259 01:A249: 40        .byte $40   ; spr_A
- - - - - - 0x00425A 01:A24A: 03        .byte $03, $27, $00   ; spr_X, spr_T, spr_Y

- - - - - - 0x00425D 01:A24D: 81        .byte $81   ; 
- - - - - - 0x00425E 01:A24E: 00        .byte $00   ; 
- - - - - - 0x00425F 01:A24F: FB        .byte $FB, $23, $00   ; 

- - - - - - 0x004262 01:A252: 02        .byte $02   ; 
- - - - - - 0x004263 01:A253: 01        .byte $01   ; 
- - - - - - 0x004264 01:A254: FB        .byte $FB, $53, $F2   ; 
- - - - - - 0x004267 01:A257: 03        .byte $03, $55, $F2   ; 



off_01_A25A_1F:
- D 1 - I - 0x00426A 01:A25A: 82        .byte $82   ; counter
- D 1 - I - 0x00426B 01:A25B: 00        .byte $00   ; spr_A
- D 1 - I - 0x00426C 01:A25C: FB        .byte $FB, $29, $FF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x00426F 01:A25F: 03        .byte $03, $2B, $FF   ; 

- D 1 - I - 0x004272 01:A262: 02        .byte $02   ; 
- D 1 - I - 0x004273 01:A263: 01        .byte $01   ; 
- D 1 - I - 0x004274 01:A264: FB        .byte $FB, $43, $EF   ; 
- D 1 - I - 0x004277 01:A267: 03        .byte $03, $45, $EF   ; 



off_01_A26A_20:
- D 1 - I - 0x00427A 01:A26A: 82        .byte $82   ; counter
- D 1 - I - 0x00427B 01:A26B: 00        .byte $00   ; spr_A
- D 1 - I - 0x00427C 01:A26C: FB        .byte $FB, $29, $FF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x00427F 01:A26F: 03        .byte $03, $2B, $FF   ; 

- D 1 - I - 0x004282 01:A272: 02        .byte $02   ; 
- D 1 - I - 0x004283 01:A273: 01        .byte $01   ; 
- D 1 - I - 0x004284 01:A274: FA        .byte $FA, $43, $F0   ; 
- D 1 - I - 0x004287 01:A277: 02        .byte $02, $45, $F0   ; 



off_01_A29A_23:
- - - - - - 0x0042AA 01:A29A: FF        .byte $FF   ; 
off_01_A27A_21:
- - - - - - 0x00428A 01:A27A: 82        .byte $82   ; counter
- - - - - - 0x00428B 01:A27B: 40        .byte $40   ; spr_A
- - - - - - 0x00428C 01:A27C: FE        .byte $FE, $29, $FF   ; spr_X, spr_T, spr_Y
- - - - - - 0x00428F 01:A27F: F6        .byte $F6, $2B, $FF   ; 

- - - - - - 0x004292 01:A282: 02        .byte $02   ; 
- - - - - - 0x004293 01:A283: 01        .byte $01   ; 
- - - - - - 0x004294 01:A284: F6        .byte $F6, $47, $EF   ; 
- - - - - - 0x004297 01:A287: FE        .byte $FE, $49, $EF   ; 



off_01_A29D_24:
- D 1 - I - 0x0042AD 01:A29D: FF        .byte $FF   ; 
off_01_A28A_22:
- D 1 - I - 0x00429A 01:A28A: 82        .byte $82   ; counter
- D 1 - I - 0x00429B 01:A28B: 40        .byte $40   ; spr_A
- D 1 - I - 0x00429C 01:A28C: FE        .byte $FE, $29, $FF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x00429F 01:A28F: F6        .byte $F6, $2B, $FF   ; 

- D 1 - I - 0x0042A2 01:A292: 02        .byte $02   ; 
- D 1 - I - 0x0042A3 01:A293: 01        .byte $01   ; 
- D 1 - I - 0x0042A4 01:A294: F7        .byte $F7, $47, $F0   ; 
- D 1 - I - 0x0042A7 01:A297: FF        .byte $FF, $49, $F0   ; 



off_01_A2C0_27:
- D 1 - I - 0x0042D0 01:A2C0: FF        .byte $FF   ; 
off_01_A2A0_25:
- D 1 - I - 0x0042B0 01:A2A0: 82        .byte $82   ; counter
- D 1 - I - 0x0042B1 01:A2A1: 40        .byte $40   ; spr_A
- D 1 - I - 0x0042B2 01:A2A2: FE        .byte $FE, $29, $FF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0042B5 01:A2A5: F6        .byte $F6, $2B, $FF   ; 

- D 1 - I - 0x0042B8 01:A2A8: 02        .byte $02   ; 
- D 1 - I - 0x0042B9 01:A2A9: 01        .byte $01   ; 
- D 1 - I - 0x0042BA 01:A2AA: F4        .byte $F4, $4B, $F0   ; 
- D 1 - I - 0x0042BD 01:A2AD: FC        .byte $FC, $4D, $F0   ; 



off_01_A2C3_28:
- - - - - - 0x0042D3 01:A2C3: FF        .byte $FF   ; 
off_01_A2B0_26:
- - - - - - 0x0042C0 01:A2B0: 82        .byte $82   ; counter
- - - - - - 0x0042C1 01:A2B1: 40        .byte $40   ; spr_A
- - - - - - 0x0042C2 01:A2B2: FE        .byte $FE, $29, $FF   ; spr_X, spr_T, spr_Y
- - - - - - 0x0042C5 01:A2B5: F6        .byte $F6, $2B, $FF   ; 

- - - - - - 0x0042C8 01:A2B8: 02        .byte $02   ; 
- - - - - - 0x0042C9 01:A2B9: 01        .byte $01   ; 
- - - - - - 0x0042CA 01:A2BA: F6        .byte $F6, $4B, $F0   ; 
- - - - - - 0x0042CD 01:A2BD: FE        .byte $FE, $4D, $F0   ; 



off_01_A2E6_2B:
- D 1 - I - 0x0042F6 01:A2E6: FF        .byte $FF   ; 
off_01_A2C6_29:
- D 1 - I - 0x0042D6 01:A2C6: 82        .byte $82   ; counter
- D 1 - I - 0x0042D7 01:A2C7: 00        .byte $00   ; spr_A
- D 1 - I - 0x0042D8 01:A2C8: FA        .byte $FA, $2D, $FE   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0042DB 01:A2CB: 02        .byte $02, $2F, $FE   ; 

- D 1 - I - 0x0042DE 01:A2CE: 02        .byte $02   ; 
- D 1 - I - 0x0042DF 01:A2CF: 01        .byte $01   ; 
- D 1 - I - 0x0042E0 01:A2D0: F8        .byte $F8, $4F, $F0   ; 
- D 1 - I - 0x0042E3 01:A2D3: 00        .byte $00, $51, $F0   ; 



off_01_A2E9_2C:
- D 1 - I - 0x0042F9 01:A2E9: FF        .byte $FF   ; 
off_01_A2D6_2A:
- D 1 - I - 0x0042E6 01:A2D6: 82        .byte $82   ; counter
- D 1 - I - 0x0042E7 01:A2D7: 00        .byte $00   ; spr_A
- D 1 - I - 0x0042E8 01:A2D8: FA        .byte $FA, $2D, $FE   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0042EB 01:A2DB: 02        .byte $02, $2F, $FE   ; 

- D 1 - I - 0x0042EE 01:A2DE: 02        .byte $02   ; 
- D 1 - I - 0x0042EF 01:A2DF: 01        .byte $01   ; 
- D 1 - I - 0x0042F0 01:A2E0: FA        .byte $FA, $4F, $EE   ; 
- D 1 - I - 0x0042F3 01:A2E3: 02        .byte $02, $51, $EE   ; 



off_01_A2EC_2D:
- D 1 - I - 0x0042FC 01:A2EC: 82        .byte $82   ; counter
- D 1 - I - 0x0042FD 01:A2ED: 00        .byte $00   ; spr_A
- D 1 - I - 0x0042FE 01:A2EE: FA        .byte $FA, $2D, $FE   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004301 01:A2F1: 02        .byte $02, $2F, $FE   ; 

- D 1 - I - 0x004304 01:A2F4: 02        .byte $02   ; 
- D 1 - I - 0x004305 01:A2F5: 01        .byte $01   ; 
- D 1 - I - 0x004306 01:A2F6: FA        .byte $FA, $53, $EE   ; 
- D 1 - I - 0x004309 01:A2F9: 02        .byte $02, $55, $EE   ; 



off_01_A2FC_2E:
- - - - - - 0x00430C 01:A2FC: 82        .byte $82   ; counter
- - - - - - 0x00430D 01:A2FD: 00        .byte $00   ; spr_A
- - - - - - 0x00430E 01:A2FE: FA        .byte $FA, $2D, $FE   ; spr_X, spr_T, spr_Y
- - - - - - 0x004311 01:A301: 02        .byte $02, $2F, $FE   ; 

- - - - - - 0x004314 01:A304: 02        .byte $02   ; 
- - - - - - 0x004315 01:A305: 01        .byte $01   ; 
- - - - - - 0x004316 01:A306: F9        .byte $F9, $53, $F0   ; 
- - - - - - 0x004319 01:A309: 01        .byte $01, $55, $F0   ; 



off_01_A319_3C:
- - - - - - 0x004329 01:A319: FF        .byte $FF   ; 
off_01_A30C_2F:
off_01_A30C_30:
off_01_A30C_31:
off_01_A30C_32:
off_01_A30C_33:
off_01_A30C_34:
off_01_A30C_35:
off_01_A30C_36:
off_01_A30C_37:
off_01_A30C_38:
off_01_A30C_39:
off_01_A30C_3A:
off_01_A30C_3B:
- D 1 - I - 0x00431C 01:A30C: 82        .byte $82   ; counter
- D 1 - I - 0x00431D 01:A30D: 01        .byte $01   ; spr_A
- D 1 - I - 0x00431E 01:A30E: F6        .byte $F6, $47, $F1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004321 01:A311: FE        .byte $FE, $49, $F1   ; 

- D 1 - I - 0x004324 01:A314: 01        .byte $01   ; 
- D 1 - I - 0x004325 01:A315: 00        .byte $00   ; 
- D 1 - I - 0x004326 01:A316: FA        .byte $FA, $0B, $00   ; 



off_01_A31C_3D:
- - - - - - 0x00432C 01:A31C: 82        .byte $82   ; counter
- - - - - - 0x00432D 01:A31D: 01        .byte $01   ; spr_A
- - - - - - 0x00432E 01:A31E: F9        .byte $F9, $3B, $F0   ; spr_X, spr_T, spr_Y
- - - - - - 0x004331 01:A321: 01        .byte $01, $3D, $F0   ; 

- - - - - - 0x004334 01:A324: 81        .byte $81   ; 
- - - - - - 0x004335 01:A325: 00        .byte $00   ; 
- - - - - - 0x004336 01:A326: F9        .byte $F9, $31, $00   ; 

- - - - - - 0x004339 01:A329: 01        .byte $01   ; 
- - - - - - 0x00433A 01:A32A: 40        .byte $40   ; 
- - - - - - 0x00433B 01:A32B: 01        .byte $01, $31, $00   ; 



off_01_A32E_3E:
- - - - - - 0x00433E 01:A32E: 82        .byte $82   ; counter
- - - - - - 0x00433F 01:A32F: 81        .byte $81   ; spr_A
- - - - - - 0x004340 01:A330: F9        .byte $F9, $3B, $01   ; spr_X, spr_T, spr_Y
- - - - - - 0x004343 01:A333: 01        .byte $01, $3D, $01   ; 

- - - - - - 0x004346 01:A336: 81        .byte $81   ; 
- - - - - - 0x004347 01:A337: 80        .byte $80   ; 
- - - - - - 0x004348 01:A338: F9        .byte $F9, $31, $F1   ; 

- - - - - - 0x00434B 01:A33B: 01        .byte $01   ; 
- - - - - - 0x00434C 01:A33C: C0        .byte $C0   ; 
- - - - - - 0x00434D 01:A33D: 01        .byte $01, $31, $F1   ; 



off_01_A340_3F:
- - - - - - 0x004350 01:A340: 82        .byte $82   ; counter
- - - - - - 0x004351 01:A341: 01        .byte $01   ; spr_A
- - - - - - 0x004352 01:A342: F9        .byte $F9, $3F, $EF   ; spr_X, spr_T, spr_Y
- - - - - - 0x004355 01:A345: 01        .byte $01, $41, $EF   ; 

- - - - - - 0x004358 01:A348: 02        .byte $02   ; 
- - - - - - 0x004359 01:A349: 00        .byte $00   ; 
- - - - - - 0x00435A 01:A34A: F9        .byte $F9, $33, $FF   ; 
- - - - - - 0x00435D 01:A34D: 01        .byte $01, $35, $FF   ; 



off_01_A350_40:
- - - - - - 0x004360 01:A350: 82        .byte $82   ; counter
- - - - - - 0x004361 01:A351: 81        .byte $81   ; spr_A
- - - - - - 0x004362 01:A352: F9        .byte $F9, $3F, $02   ; spr_X, spr_T, spr_Y
- - - - - - 0x004365 01:A355: 01        .byte $01, $41, $02   ; 

- - - - - - 0x004368 01:A358: 02        .byte $02   ; 
- - - - - - 0x004369 01:A359: 80        .byte $80   ; 
- - - - - - 0x00436A 01:A35A: F9        .byte $F9, $33, $F2   ; 
- - - - - - 0x00436D 01:A35D: 01        .byte $01, $35, $F2   ; 



off_01_A360_41:
- D 1 - I - 0x004370 01:A360: 81        .byte $81   ; counter
- D 1 - I - 0x004371 01:A361: 00        .byte $00   ; spr_A
- D 1 - I - 0x004372 01:A362: F8        .byte $F8, $31, $00   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x004375 01:A365: 81        .byte $81   ; 
- D 1 - I - 0x004376 01:A366: 40        .byte $40   ; 
- D 1 - I - 0x004377 01:A367: 00        .byte $00, $31, $00   ; 

- D 1 - I - 0x00437A 01:A36A: 02        .byte $02   ; 
- D 1 - I - 0x00437B 01:A36B: 01        .byte $01   ; 
- D 1 - I - 0x00437C 01:A36C: F8        .byte $F8, $53, $F1   ; 
- D 1 - I - 0x00437F 01:A36F: 00        .byte $00, $55, $F1   ; 



off_01_A372_42:
- D 1 - I - 0x004382 01:A372: 81        .byte $81   ; counter
- D 1 - I - 0x004383 01:A373: 01        .byte $01   ; spr_A
- D 1 - I - 0x004384 01:A374: F9        .byte $F9, $37, $FA   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x004387 01:A377: 01        .byte $01   ; 
- D 1 - I - 0x004388 01:A378: 00        .byte $00   ; 
- D 1 - I - 0x004389 01:A379: 01        .byte $01, $39, $FA   ; 



off_01_A37C_43:
- D 1 - I - 0x00438C 01:A37C: 81        .byte $81   ; counter
- D 1 - I - 0x00438D 01:A37D: 00        .byte $00   ; spr_A
- D 1 - I - 0x00438E 01:A37E: F9        .byte $F9, $C3, $00   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x004391 01:A381: 01        .byte $01   ; 
- D 1 - I - 0x004392 01:A382: 40        .byte $40   ; 
- D 1 - I - 0x004393 01:A383: 01        .byte $01, $C3, $00   ; 



off_01_A386_44:
- D 1 - I - 0x004396 01:A386: 81        .byte $81   ; counter
- D 1 - I - 0x004397 01:A387: 00        .byte $00   ; spr_A
- D 1 - I - 0x004398 01:A388: F9        .byte $F9, $C5, $00   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x00439B 01:A38B: 01        .byte $01   ; 
- D 1 - I - 0x00439C 01:A38C: 40        .byte $40   ; 
- D 1 - I - 0x00439D 01:A38D: 01        .byte $01, $C5, $00   ; 



off_01_A390_45:
- D 1 - I - 0x0043A0 01:A390: 81        .byte $81   ; counter
- D 1 - I - 0x0043A1 01:A391: 00        .byte $00   ; spr_A
- D 1 - I - 0x0043A2 01:A392: F6        .byte $F6, $C5, $00   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x0043A5 01:A395: 01        .byte $01   ; 
- D 1 - I - 0x0043A6 01:A396: 40        .byte $40   ; 
- D 1 - I - 0x0043A7 01:A397: 04        .byte $04, $C5, $00   ; 



off_01_A39A_46:
off_01_A39A_47:
off_01_A39A_48:
- D 1 - I - 0x0043AA 01:A39A: 04        .byte $04   ; counter
- D 1 - I - 0x0043AB 01:A39B: 01        .byte $01   ; spr_A
- D 1 - I - 0x0043AC 01:A39C: F7        .byte $F7, $01, $00   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0043AF 01:A39F: FF        .byte $FF, $03, $00   ; 
- D 1 - I - 0x0043B2 01:A3A2: F8        .byte $F8, $63, $F0   ; 
- D 1 - I - 0x0043B5 01:A3A5: 00        .byte $00, $65, $F0   ; 



off_01_A3A8_49:
- D 1 - I - 0x0043B8 01:A3A8: 03        .byte $03   ; counter
- D 1 - I - 0x0043B9 01:A3A9: 01        .byte $01   ; spr_A
- D 1 - I - 0x0043BA 01:A3AA: F8        .byte $F8, $63, $F2   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0043BD 01:A3AD: 00        .byte $00, $65, $F2   ; 
- D 1 - I - 0x0043C0 01:A3B0: FA        .byte $FA, $05, $01   ; 



off_01_A3B3_4A:
- D 1 - I - 0x0043C3 01:A3B3: 82        .byte $82   ; counter
- D 1 - I - 0x0043C4 01:A3B4: 01        .byte $01   ; spr_A
- D 1 - I - 0x0043C5 01:A3B5: FA        .byte $FA, $63, $F0   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0043C8 01:A3B8: 02        .byte $02, $65, $F0   ; 

- D 1 - I - 0x0043CB 01:A3BB: 02        .byte $02   ; 
- D 1 - I - 0x0043CC 01:A3BC: 41        .byte $41   ; 
- D 1 - I - 0x0043CD 01:A3BD: FF        .byte $FF, $01, $00   ; 
- D 1 - I - 0x0043D0 01:A3C0: F7        .byte $F7, $03, $00   ; 



off_01_A3C3_4B:
- D 1 - I - 0x0043D3 01:A3C3: 82        .byte $82   ; counter
- D 1 - I - 0x0043D4 01:A3C4: 01        .byte $01   ; spr_A
- D 1 - I - 0x0043D5 01:A3C5: FA        .byte $FA, $63, $F2   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0043D8 01:A3C8: 02        .byte $02, $65, $F2   ; 

- D 1 - I - 0x0043DB 01:A3CB: 01        .byte $01   ; 
- D 1 - I - 0x0043DC 01:A3CC: 41        .byte $41   ; 
- D 1 - I - 0x0043DD 01:A3CD: FC        .byte $FC, $05, $01   ; 



off_01_A3F7_4F:
- D 1 - I - 0x004407 01:A3F7: FF        .byte $FF   ; 
off_01_A3D0_4C:
- D 1 - I - 0x0043E0 01:A3D0: 04        .byte $04   ; counter
- D 1 - I - 0x0043E1 01:A3D1: 01        .byte $01   ; spr_A
- D 1 - I - 0x0043E2 01:A3D2: FA        .byte $FA, $07, $FF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0043E5 01:A3D5: 02        .byte $02, $09, $FF   ; 
- D 1 - I - 0x0043E8 01:A3D8: FA        .byte $FA, $67, $EF   ; 
- D 1 - I - 0x0043EB 01:A3DB: 02        .byte $02, $69, $EF   ; 



off_01_A3FA_50:
- D 1 - I - 0x00440A 01:A3FA: FF        .byte $FF   ; 
off_01_A3DE_4D:
- D 1 - I - 0x0043EE 01:A3DE: 03        .byte $03   ; counter
- D 1 - I - 0x0043EF 01:A3DF: 01        .byte $01   ; spr_A
- D 1 - I - 0x0043F0 01:A3E0: FD        .byte $FD, $0B, $00   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0043F3 01:A3E3: F8        .byte $F8, $67, $F1   ; 
- D 1 - I - 0x0043F6 01:A3E6: 00        .byte $00, $69, $F1   ; 



off_01_A3FD_51:
- D 1 - I - 0x00440D 01:A3FD: FF        .byte $FF   ; 
off_01_A3E9_4E:
- D 1 - I - 0x0043F9 01:A3E9: 04        .byte $04   ; counter
- D 1 - I - 0x0043FA 01:A3EA: 01        .byte $01   ; spr_A
- D 1 - I - 0x0043FB 01:A3EB: F8        .byte $F8, $0D, $FF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0043FE 01:A3EE: 00        .byte $00, $0F, $FF   ; 
- D 1 - I - 0x004401 01:A3F1: F7        .byte $F7, $67, $EF   ; 
- D 1 - I - 0x004404 01:A3F4: FF        .byte $FF, $69, $EF   ; 



off_01_A430_55:
- D 1 - I - 0x004440 01:A430: FF        .byte $FF   ; 
off_01_A400_52:
- D 1 - I - 0x004410 01:A400: 05        .byte $05   ; counter
- D 1 - I - 0x004411 01:A401: 01        .byte $01   ; spr_A
- D 1 - I - 0x004412 01:A402: F6        .byte $F6, $11, $00   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004415 01:A405: FE        .byte $FE, $13, $00   ; 
- D 1 - I - 0x004418 01:A408: EC        .byte $EC, $6B, $F0   ; 
- D 1 - I - 0x00441B 01:A40B: F4        .byte $F4, $6D, $F0   ; 
- D 1 - I - 0x00441E 01:A40E: FC        .byte $FC, $6F, $F0   ; 



off_01_A433_56:
- D 1 - I - 0x004443 01:A433: FF        .byte $FF   ; 
off_01_A411_53:
- D 1 - I - 0x004421 01:A411: 04        .byte $04   ; counter
- D 1 - I - 0x004422 01:A412: 01        .byte $01   ; spr_A
- D 1 - I - 0x004423 01:A413: FC        .byte $FC, $15, $00   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004426 01:A416: EC        .byte $EC, $6B, $F2   ; 
- D 1 - I - 0x004429 01:A419: F4        .byte $F4, $6D, $F2   ; 
- D 1 - I - 0x00442C 01:A41C: FC        .byte $FC, $6F, $F2   ; 



off_01_A436_57:
- D 1 - I - 0x004446 01:A436: FF        .byte $FF   ; 
off_01_A41F_54:
- D 1 - I - 0x00442F 01:A41F: 05        .byte $05   ; counter
- D 1 - I - 0x004430 01:A420: 01        .byte $01   ; spr_A
- D 1 - I - 0x004431 01:A421: EA        .byte $EA, $6B, $F0   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004434 01:A424: F2        .byte $F2, $6D, $F0   ; 
- D 1 - I - 0x004437 01:A427: FA        .byte $FA, $6F, $F0   ; 
- D 1 - I - 0x00443A 01:A42A: F6        .byte $F6, $17, $00   ; 
- D 1 - I - 0x00443D 01:A42D: FE        .byte $FE, $19, $00   ; 



off_01_A468_5C:
- D 1 - I - 0x004478 01:A468: FF        .byte $FF   ; 
off_01_A439_58:
- D 1 - I - 0x004449 01:A439: 04        .byte $04   ; counter
- D 1 - I - 0x00444A 01:A43A: 01        .byte $01   ; spr_A
- D 1 - I - 0x00444B 01:A43B: FB        .byte $FB, $1B, $00   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x00444E 01:A43E: 03        .byte $03, $1D, $00   ; 
- D 1 - I - 0x004451 01:A441: F9        .byte $F9, $71, $F0   ; 
- D 1 - I - 0x004454 01:A444: 01        .byte $01, $73, $F0   ; 



off_01_A46B_5D:
- D 1 - I - 0x00447B 01:A46B: FF        .byte $FF   ; 
off_01_A447_59:
- D 1 - I - 0x004457 01:A447: 03        .byte $03   ; counter
- D 1 - I - 0x004458 01:A448: 01        .byte $01   ; spr_A
- D 1 - I - 0x004459 01:A449: FF        .byte $FF, $1F, $01   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x00445C 01:A44C: F9        .byte $F9, $71, $F2   ; 
- D 1 - I - 0x00445F 01:A44F: 01        .byte $01, $73, $F2   ; 



off_01_A46E_5E:
- D 1 - I - 0x00447E 01:A46E: FF        .byte $FF   ; 
off_01_A452_5A:
- D 1 - I - 0x004462 01:A452: 03        .byte $03   ; counter
- D 1 - I - 0x004463 01:A453: 01        .byte $01   ; spr_A
- D 1 - I - 0x004464 01:A454: 00        .byte $00, $21, $00   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004467 01:A457: FB        .byte $FB, $71, $F0   ; 
- D 1 - I - 0x00446A 01:A45A: 03        .byte $03, $73, $F0   ; 



off_01_A471_5F:
- D 1 - I - 0x004481 01:A471: FF        .byte $FF   ; 
off_01_A45D_5B:
- D 1 - I - 0x00446D 01:A45D: 03        .byte $03   ; counter
- D 1 - I - 0x00446E 01:A45E: 01        .byte $01   ; spr_A
- D 1 - I - 0x00446F 01:A45F: 00        .byte $00, $1F, $01   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004472 01:A462: FB        .byte $FB, $71, $F2   ; 
- D 1 - I - 0x004475 01:A465: 03        .byte $03, $73, $F2   ; 



off_01_A474_60:
- D 1 - I - 0x004484 01:A474: 04        .byte $04   ; counter
- D 1 - I - 0x004485 01:A475: 01        .byte $01   ; spr_A
- D 1 - I - 0x004486 01:A476: FB        .byte $FB, $23, $00   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004489 01:A479: 03        .byte $03, $25, $00   ; 
- D 1 - I - 0x00448C 01:A47C: FA        .byte $FA, $75, $F0   ; 
- D 1 - I - 0x00448F 01:A47F: 02        .byte $02, $77, $F0   ; 



off_01_A482_61:
- D 1 - I - 0x004492 01:A482: 81        .byte $81   ; counter
- D 1 - I - 0x004493 01:A483: 01        .byte $01   ; spr_A
- D 1 - I - 0x004494 01:A484: FB        .byte $FB, $27, $00   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x004497 01:A487: 81        .byte $81   ; 
- D 1 - I - 0x004498 01:A488: 41        .byte $41   ; 
- D 1 - I - 0x004499 01:A489: 03        .byte $03, $23, $00   ; 

- D 1 - I - 0x00449C 01:A48C: 02        .byte $02   ; 
- D 1 - I - 0x00449D 01:A48D: 01        .byte $01   ; 
- D 1 - I - 0x00449E 01:A48E: FA        .byte $FA, $75, $F2   ; 
- D 1 - I - 0x0044A1 01:A491: 02        .byte $02, $77, $F2   ; 



off_01_A494_62:
- D 1 - I - 0x0044A4 01:A494: 82        .byte $82   ; counter
- D 1 - I - 0x0044A5 01:A495: 41        .byte $41   ; spr_A
- D 1 - I - 0x0044A6 01:A496: 03        .byte $03, $23, $00   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0044A9 01:A499: FB        .byte $FB, $25, $00   ; 

- D 1 - I - 0x0044AC 01:A49C: 02        .byte $02   ; 
- D 1 - I - 0x0044AD 01:A49D: 01        .byte $01   ; 
- D 1 - I - 0x0044AE 01:A49E: FC        .byte $FC, $75, $F0   ; 
- D 1 - I - 0x0044B1 01:A4A1: 04        .byte $04, $77, $F0   ; 



off_01_A4A4_63:
- D 1 - I - 0x0044B4 01:A4A4: 81        .byte $81   ; counter
- D 1 - I - 0x0044B5 01:A4A5: 01        .byte $01   ; spr_A
- D 1 - I - 0x0044B6 01:A4A6: FB        .byte $FB, $23, $00   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x0044B9 01:A4A9: 81        .byte $81   ; 
- D 1 - I - 0x0044BA 01:A4AA: 41        .byte $41   ; 
- D 1 - I - 0x0044BB 01:A4AB: 03        .byte $03, $27, $00   ; 

- D 1 - I - 0x0044BE 01:A4AE: 02        .byte $02   ; 
- D 1 - I - 0x0044BF 01:A4AF: 01        .byte $01   ; 
- D 1 - I - 0x0044C0 01:A4B0: FC        .byte $FC, $75, $F2   ; 
- D 1 - I - 0x0044C3 01:A4B3: 04        .byte $04, $77, $F2   ; 



off_01_A4B6_64:
- D 1 - I - 0x0044C6 01:A4B6: 04        .byte $04   ; counter
- D 1 - I - 0x0044C7 01:A4B7: 01        .byte $01   ; spr_A
- D 1 - I - 0x0044C8 01:A4B8: FB        .byte $FB, $29, $FF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0044CB 01:A4BB: 03        .byte $03, $2B, $FF   ; 
- D 1 - I - 0x0044CE 01:A4BE: FC        .byte $FC, $63, $EF   ; 
- D 1 - I - 0x0044D1 01:A4C1: 04        .byte $04, $65, $EF   ; 



off_01_A4C4_65:
- D 1 - I - 0x0044D4 01:A4C4: 04        .byte $04   ; counter
- D 1 - I - 0x0044D5 01:A4C5: 01        .byte $01   ; spr_A
- D 1 - I - 0x0044D6 01:A4C6: FB        .byte $FB, $63, $F0   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0044D9 01:A4C9: 03        .byte $03, $65, $F0   ; 
- D 1 - I - 0x0044DC 01:A4CC: FB        .byte $FB, $29, $FF   ; 
- D 1 - I - 0x0044DF 01:A4CF: 03        .byte $03, $2B, $FF   ; 



off_01_A4F2_68:
- D 1 - I - 0x004502 01:A4F2: FF        .byte $FF   ; 
off_01_A4D2_66:
- D 1 - I - 0x0044E2 01:A4D2: 82        .byte $82   ; counter
- D 1 - I - 0x0044E3 01:A4D3: 41        .byte $41   ; spr_A
- D 1 - I - 0x0044E4 01:A4D4: F6        .byte $F6, $2B, $FF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0044E7 01:A4D7: FE        .byte $FE, $29, $FF   ; 

- D 1 - I - 0x0044EA 01:A4DA: 02        .byte $02   ; 
- D 1 - I - 0x0044EB 01:A4DB: 01        .byte $01   ; 
- D 1 - I - 0x0044EC 01:A4DC: F7        .byte $F7, $67, $EF   ; 
- D 1 - I - 0x0044EF 01:A4DF: FF        .byte $FF, $69, $EF   ; 



off_01_A4F5_69:
- D 1 - I - 0x004505 01:A4F5: FF        .byte $FF   ; 
off_01_A4E2_67:
- D 1 - I - 0x0044F2 01:A4E2: 82        .byte $82   ; counter
- D 1 - I - 0x0044F3 01:A4E3: 41        .byte $41   ; spr_A
- D 1 - I - 0x0044F4 01:A4E4: F6        .byte $F6, $2B, $FF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0044F7 01:A4E7: FE        .byte $FE, $29, $FF   ; 

- D 1 - I - 0x0044FA 01:A4EA: 02        .byte $02   ; 
- D 1 - I - 0x0044FB 01:A4EB: 01        .byte $01   ; 
- D 1 - I - 0x0044FC 01:A4EC: F8        .byte $F8, $67, $F0   ; 
- D 1 - I - 0x0044FF 01:A4EF: 00        .byte $00, $69, $F0   ; 



off_01_A51E_6C:
- D 1 - I - 0x00452E 01:A51E: FF        .byte $FF   ; 
off_01_A4F8_6A:
- D 1 - I - 0x004508 01:A4F8: 83        .byte $83   ; counter
- D 1 - I - 0x004509 01:A4F9: 01        .byte $01   ; spr_A
- D 1 - I - 0x00450A 01:A4FA: EB        .byte $EB, $6B, $F0   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x00450D 01:A4FD: F3        .byte $F3, $6D, $F0   ; 
- D 1 - I - 0x004510 01:A500: FB        .byte $FB, $6F, $F0   ; 

- D 1 - I - 0x004513 01:A503: 02        .byte $02   ; 
- D 1 - I - 0x004514 01:A504: 41        .byte $41   ; 
- D 1 - I - 0x004515 01:A505: F6        .byte $F6, $2B, $FF   ; 
- D 1 - I - 0x004518 01:A508: FE        .byte $FE, $29, $FF   ; 



off_01_A521_6D:
- D 1 - I - 0x004531 01:A521: FF        .byte $FF   ; 
off_01_A50B_6B:
- D 1 - I - 0x00451B 01:A50B: 83        .byte $83   ; counter
- D 1 - I - 0x00451C 01:A50C: 01        .byte $01   ; spr_A
- D 1 - I - 0x00451D 01:A50D: ED        .byte $ED, $6B, $F0   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004520 01:A510: F5        .byte $F5, $6D, $F0   ; 
- D 1 - I - 0x004523 01:A513: FD        .byte $FD, $6F, $F0   ; 

- D 1 - I - 0x004526 01:A516: 02        .byte $02   ; 
- D 1 - I - 0x004527 01:A517: 41        .byte $41   ; 
- D 1 - I - 0x004528 01:A518: F6        .byte $F6, $2B, $FF   ; 
- D 1 - I - 0x00452B 01:A51B: FE        .byte $FE, $29, $FF   ; 



off_01_A540_70:
- D 1 - I - 0x004550 01:A540: FF        .byte $FF   ; 
off_01_A524_6E:
- D 1 - I - 0x004534 01:A524: 04        .byte $04   ; counter
- D 1 - I - 0x004535 01:A525: 01        .byte $01   ; spr_A
- D 1 - I - 0x004536 01:A526: FA        .byte $FA, $2D, $FE   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004539 01:A529: 02        .byte $02, $2F, $FE   ; 
- D 1 - I - 0x00453C 01:A52C: FA        .byte $FA, $71, $EE   ; 
- D 1 - I - 0x00453F 01:A52F: 02        .byte $02, $73, $EE   ; 



off_01_A543_71:
- D 1 - I - 0x004553 01:A543: FF        .byte $FF   ; 
off_01_A532_6F:
- D 1 - I - 0x004542 01:A532: 04        .byte $04   ; counter
- D 1 - I - 0x004543 01:A533: 01        .byte $01   ; spr_A
- D 1 - I - 0x004544 01:A534: FA        .byte $FA, $2D, $FE   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004547 01:A537: 02        .byte $02, $2F, $FE   ; 
- D 1 - I - 0x00454A 01:A53A: F8        .byte $F8, $71, $F0   ; 
- D 1 - I - 0x00454D 01:A53D: 00        .byte $00, $73, $F0   ; 



off_01_A546_72:
- D 1 - I - 0x004556 01:A546: 04        .byte $04   ; counter
- D 1 - I - 0x004557 01:A547: 01        .byte $01   ; spr_A
- D 1 - I - 0x004558 01:A548: FA        .byte $FA, $2D, $FE   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x00455B 01:A54B: 02        .byte $02, $2F, $FE   ; 
- D 1 - I - 0x00455E 01:A54E: FA        .byte $FA, $75, $EE   ; 
- D 1 - I - 0x004561 01:A551: 02        .byte $02, $77, $EE   ; 



off_01_A554_73:
- D 1 - I - 0x004564 01:A554: 04        .byte $04   ; counter
- D 1 - I - 0x004565 01:A555: 01        .byte $01   ; spr_A
- D 1 - I - 0x004566 01:A556: FA        .byte $FA, $2D, $FE   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004569 01:A559: 02        .byte $02, $2F, $FE   ; 
- D 1 - I - 0x00456C 01:A55C: F9        .byte $F9, $75, $F0   ; 
- D 1 - I - 0x00456F 01:A55F: 01        .byte $01, $77, $F0   ; 



off_01_A570_81:
- D 1 - I - 0x004580 01:A570: FF        .byte $FF   ; 
off_01_A562_74:
off_01_A562_75:
off_01_A562_76:
off_01_A562_77:
off_01_A562_78:
off_01_A562_79:
off_01_A562_7A:
off_01_A562_7B:
off_01_A562_7C:
off_01_A562_7D:
off_01_A562_7E:
off_01_A562_7F:
off_01_A562_80:
- D 1 - I - 0x004572 01:A562: 04        .byte $04   ; counter
- D 1 - I - 0x004573 01:A563: 01        .byte $01   ; spr_A
- D 1 - I - 0x004574 01:A564: FA        .byte $FA, $15, $00   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004577 01:A567: EA        .byte $EA, $6B, $F2   ; 
- D 1 - I - 0x00457A 01:A56A: F2        .byte $F2, $6D, $F2   ; 
- D 1 - I - 0x00457D 01:A56D: FA        .byte $FA, $6F, $F2   ; 



off_01_A57E_83:
- D 1 - I - 0x00458E 01:A57E: FF        .byte $FF   ; 
off_01_A573_82:
- D 1 - I - 0x004583 01:A573: 03        .byte $03   ; counter
- D 1 - I - 0x004584 01:A574: 01        .byte $01   ; spr_A
- D 1 - I - 0x004585 01:A575: FB        .byte $FB, $0B, $00   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004588 01:A578: F6        .byte $F6, $67, $F1   ; 
- D 1 - I - 0x00458B 01:A57B: FE        .byte $FE, $69, $F1   ; 



off_01_A581_84:
- D 1 - I - 0x004591 01:A581: 81        .byte $81   ; counter
- D 1 - I - 0x004592 01:A582: 01        .byte $01   ; spr_A
- D 1 - I - 0x004593 01:A583: F9        .byte $F9, $31, $00   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x004596 01:A586: 81        .byte $81   ; 
- D 1 - I - 0x004597 01:A587: 41        .byte $41   ; 
- D 1 - I - 0x004598 01:A588: 01        .byte $01, $31, $00   ; 

- D 1 - I - 0x00459B 01:A58B: 02        .byte $02   ; 
- D 1 - I - 0x00459C 01:A58C: 01        .byte $01   ; 
- D 1 - I - 0x00459D 01:A58D: F9        .byte $F9, $79, $F0   ; 
- D 1 - I - 0x0045A0 01:A590: 01        .byte $01, $7B, $F0   ; 



off_01_A593_85:
- - - - - - 0x0045A3 01:A593: 81        .byte $81   ; counter
- - - - - - 0x0045A4 01:A594: 81        .byte $81   ; spr_A
- - - - - - 0x0045A5 01:A595: F9        .byte $F9, $31, $F1   ; spr_X, spr_T, spr_Y

- - - - - - 0x0045A8 01:A598: 81        .byte $81   ; 
- - - - - - 0x0045A9 01:A599: C1        .byte $C1   ; 
- - - - - - 0x0045AA 01:A59A: 01        .byte $01, $31, $F1   ; 

- - - - - - 0x0045AD 01:A59D: 02        .byte $02   ; 
- - - - - - 0x0045AE 01:A59E: 81        .byte $81   ; 
- - - - - - 0x0045AF 01:A59F: F9        .byte $F9, $79, $01   ; 
- - - - - - 0x0045B2 01:A5A2: 01        .byte $01, $7B, $01   ; 



off_01_A5A5_86:
- D 1 - I - 0x0045B5 01:A5A5: 04        .byte $04   ; counter
- D 1 - I - 0x0045B6 01:A5A6: 01        .byte $01   ; spr_A
- D 1 - I - 0x0045B7 01:A5A7: F9        .byte $F9, $7D, $EF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0045BA 01:A5AA: 01        .byte $01, $7F, $EF   ; 
- D 1 - I - 0x0045BD 01:A5AD: F9        .byte $F9, $33, $FF   ; 
- D 1 - I - 0x0045C0 01:A5B0: 01        .byte $01, $35, $FF   ; 



off_01_A5B3_87:
- - - - - - 0x0045C3 01:A5B3: 04        .byte $04   ; counter
- - - - - - 0x0045C4 01:A5B4: 81        .byte $81   ; spr_A
- - - - - - 0x0045C5 01:A5B5: F9        .byte $F9, $7D, $02   ; spr_X, spr_T, spr_Y
- - - - - - 0x0045C8 01:A5B8: 01        .byte $01, $7F, $02   ; 
- - - - - - 0x0045CB 01:A5BB: F9        .byte $F9, $33, $F2   ; 
- - - - - - 0x0045CE 01:A5BE: 01        .byte $01, $35, $F2   ; 



off_01_A5C1_88:
- D 1 - I - 0x0045D1 01:A5C1: 81        .byte $81   ; counter
- D 1 - I - 0x0045D2 01:A5C2: 41        .byte $41   ; spr_A
- D 1 - I - 0x0045D3 01:A5C3: 01        .byte $01, $31, $00   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x0045D6 01:A5C6: 03        .byte $03   ; 
- D 1 - I - 0x0045D7 01:A5C7: 01        .byte $01   ; 
- D 1 - I - 0x0045D8 01:A5C8: F9        .byte $F9, $31, $00   ; 
- D 1 - I - 0x0045DB 01:A5CB: F9        .byte $F9, $71, $F1   ; 
- D 1 - I - 0x0045DE 01:A5CE: 01        .byte $01, $73, $F1   ; 



off_01_A5D1_89:
- D 1 - I - 0x0045E1 01:A5D1: 02        .byte $02   ; counter
- D 1 - I - 0x0045E2 01:A5D2: 01        .byte $01   ; spr_A
- D 1 - I - 0x0045E3 01:A5D3: F9        .byte $F9, $37, $FA   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0045E6 01:A5D6: 01        .byte $01, $39, $FA   ; 



off_01_A5D9_8A:
- - - - - - 0x0045E9 01:A5D9: 81        .byte $81   ; counter
- - - - - - 0x0045EA 01:A5DA: 00        .byte $00   ; spr_A
- - - - - - 0x0045EB 01:A5DB: F9        .byte $F9, $C3, $00   ; spr_X, spr_T, spr_Y

- - - - - - 0x0045EE 01:A5DE: 01        .byte $01   ; 
- - - - - - 0x0045EF 01:A5DF: 40        .byte $40   ; 
- - - - - - 0x0045F0 01:A5E0: 01        .byte $01, $C3, $00   ; 



off_01_A5E3_8B:
- - - - - - 0x0045F3 01:A5E3: 81        .byte $81   ; counter
- - - - - - 0x0045F4 01:A5E4: 00        .byte $00   ; spr_A
- - - - - - 0x0045F5 01:A5E5: F9        .byte $F9, $C5, $00   ; spr_X, spr_T, spr_Y

- - - - - - 0x0045F8 01:A5E8: 01        .byte $01   ; 
- - - - - - 0x0045F9 01:A5E9: 40        .byte $40   ; 
- - - - - - 0x0045FA 01:A5EA: 01        .byte $01, $C5, $00   ; 



off_01_A5ED_8C:
- - - - - - 0x0045FD 01:A5ED: 81        .byte $81   ; counter
- - - - - - 0x0045FE 01:A5EE: 00        .byte $00   ; spr_A
- - - - - - 0x0045FF 01:A5EF: F6        .byte $F6, $C5, $00   ; spr_X, spr_T, spr_Y

- - - - - - 0x004602 01:A5F2: 01        .byte $01   ; 
- - - - - - 0x004603 01:A5F3: 40        .byte $40   ; 
- - - - - - 0x004604 01:A5F4: 04        .byte $04, $C5, $00   ; 



_off032_A5F7_02:
- - - - - - 0x004607 01:A5F7: 37 A7     .word off_02_A737_00
- D 1 - I - 0x004609 01:A5F9: 37 A7     .word off_02_A737_01
- D 1 - I - 0x00460B 01:A5FB: 47 A7     .word off_02_A747_02
- D 1 - I - 0x00460D 01:A5FD: 54 A7     .word off_02_A754_03
- D 1 - I - 0x00460F 01:A5FF: 64 A7     .word off_02_A764_04
- D 1 - I - 0x004611 01:A601: 71 A7     .word off_02_A771_05
- D 1 - I - 0x004613 01:A603: 81 A7     .word off_02_A781_06
- D 1 - I - 0x004615 01:A605: 8E A7     .word off_02_A78E_07
- D 1 - I - 0x004617 01:A607: 9E A7     .word off_02_A79E_08
- - - - - - 0x004619 01:A609: AB A7     .word off_02_A7AB_09
- - - - - - 0x00461B 01:A60B: AE A7     .word off_02_A7AE_0A
- - - - - - 0x00461D 01:A60D: B1 A7     .word off_02_A7B1_0B
- - - - - - 0x00461F 01:A60F: B4 A7     .word off_02_A7B4_0C
- D 1 - I - 0x004621 01:A611: B7 A7     .word off_02_A7B7_0D
- D 1 - I - 0x004623 01:A613: CA A7     .word off_02_A7CA_0E
- - - - - - 0x004625 01:A615: DA A7     .word off_02_A7DA_0F
- - - - - - 0x004627 01:A617: ED A7     .word off_02_A7ED_10
- - - - - - 0x004629 01:A619: FD A7     .word off_02_A7FD_11
- - - - - - 0x00462B 01:A61B: 00 A8     .word off_02_A800_12
- - - - - - 0x00462D 01:A61D: 03 A8     .word off_02_A803_13
- - - - - - 0x00462F 01:A61F: 06 A8     .word off_02_A806_14
- - - - - - 0x004631 01:A621: 09 A8     .word off_02_A809_15
- - - - - - 0x004633 01:A623: 19 A8     .word off_02_A819_16
- - - - - - 0x004635 01:A625: 26 A8     .word off_02_A826_17
- - - - - - 0x004637 01:A627: 33 A8     .word off_02_A833_18
- - - - - - 0x004639 01:A629: 40 A8     .word off_02_A840_19
- - - - - - 0x00463B 01:A62B: 43 A8     .word off_02_A843_1A
- - - - - - 0x00463D 01:A62D: 46 A8     .word off_02_A846_1B
- - - - - - 0x00463F 01:A62F: 49 A8     .word off_02_A849_1C
- - - - - - 0x004641 01:A631: 4C A8     .word off_02_A84C_1D
- - - - - - 0x004643 01:A633: 5E A8     .word off_02_A85E_1E
- - - - - - 0x004645 01:A635: 70 A8     .word off_02_A870_1F
- - - - - - 0x004647 01:A637: 80 A8     .word off_02_A880_20
- D 1 - I - 0x004649 01:A639: 92 A8     .word off_02_A892_21
- - - - - - 0x00464B 01:A63B: A2 A8     .word off_02_A8A2_22
- - - - - - 0x00464D 01:A63D: B2 A8     .word off_02_A8B2_23
- - - - - - 0x00464F 01:A63F: B5 A8     .word off_02_A8B5_24
- - - - - - 0x004651 01:A641: C8 A8     .word off_02_A8C8_25
- - - - - - 0x004653 01:A643: CB A8     .word off_02_A8CB_26
- - - - - - 0x004655 01:A645: DB A8     .word off_02_A8DB_27
- - - - - - 0x004657 01:A647: DE A8     .word off_02_A8DE_28
- - - - - - 0x004659 01:A649: EE A8     .word off_02_A8EE_29
- - - - - - 0x00465B 01:A64B: FE A8     .word off_02_A8FE_2A
- - - - - - 0x00465D 01:A64D: 0E A9     .word off_02_A90E_2B
- - - - - - 0x00465F 01:A64F: 11 A9     .word off_02_A911_2C
- - - - - - 0x004661 01:A651: 24 A9     .word off_02_A924_2D
- - - - - - 0x004663 01:A653: 27 A9     .word off_02_A927_2E
- - - - - - 0x004665 01:A655: 37 A9     .word off_02_A937_2F
- - - - - - 0x004667 01:A657: 3A A9     .word off_02_A93A_30
- - - - - - 0x004669 01:A659: 4A A9     .word off_02_A94A_31
- - - - - - 0x00466B 01:A65B: 5C A9     .word off_02_A95C_32
- - - - - - 0x00466D 01:A65D: 66 A9     .word off_02_A966_33
- - - - - - 0x00466F 01:A65F: 70 A9     .word off_02_A970_34
- - - - - - 0x004671 01:A661: 7A A9     .word off_02_A97A_35
- - - - - - 0x004673 01:A663: 84 A9     .word off_02_A984_36
- - - - - - 0x004675 01:A665: 98 A9     .word off_02_A998_37
- - - - - - 0x004677 01:A667: AA A9     .word off_02_A9AA_38
- - - - - - 0x004679 01:A669: BA A9     .word off_02_A9BA_39
- - - - - - 0x00467B 01:A66B: CC A9     .word off_02_A9CC_3A
- - - - - - 0x00467D 01:A66D: DC A9     .word off_02_A9DC_3B
- - - - - - 0x00467F 01:A66F: DC A9     .word off_02_A9DC_3C
- - - - - - 0x004681 01:A671: DC A9     .word off_02_A9DC_3D
- D 1 - I - 0x004683 01:A673: DC A9     .word off_02_A9DC_3E
- D 1 - I - 0x004685 01:A675: EA A9     .word off_02_A9EA_3F
- D 1 - I - 0x004687 01:A677: F5 A9     .word off_02_A9F5_40
- D 1 - I - 0x004689 01:A679: 05 AA     .word off_02_AA05_41
- D 1 - I - 0x00468B 01:A67B: 12 AA     .word off_02_AA12_42
- D 1 - I - 0x00468D 01:A67D: 20 AA     .word off_02_AA20_43
- D 1 - I - 0x00468F 01:A67F: 2B AA     .word off_02_AA2B_44
- D 1 - I - 0x004691 01:A681: 39 AA     .word off_02_AA39_45
- D 1 - I - 0x004693 01:A683: 44 AA     .word off_02_AA44_46
- D 1 - I - 0x004695 01:A685: 47 AA     .word off_02_AA47_47
- D 1 - I - 0x004697 01:A687: 4A AA     .word off_02_AA4A_48
- D 1 - I - 0x004699 01:A689: 4D AA     .word off_02_AA4D_49
- D 1 - I - 0x00469B 01:A68B: 50 AA     .word off_02_AA50_4A
- D 1 - I - 0x00469D 01:A68D: 61 AA     .word off_02_AA61_4B
- D 1 - I - 0x00469F 01:A68F: 6F AA     .word off_02_AA6F_4C
- D 1 - I - 0x0046A1 01:A691: 80 AA     .word off_02_AA80_4D
- D 1 - I - 0x0046A3 01:A693: 8E AA     .word off_02_AA8E_4E
- D 1 - I - 0x0046A5 01:A695: 91 AA     .word off_02_AA91_4F
- D 1 - I - 0x0046A7 01:A697: 94 AA     .word off_02_AA94_50
- D 1 - I - 0x0046A9 01:A699: 97 AA     .word off_02_AA97_51
- D 1 - I - 0x0046AB 01:A69B: 9A AA     .word off_02_AA9A_52
- D 1 - I - 0x0046AD 01:A69D: A8 AA     .word off_02_AAA8_53
- - - - - - 0x0046AF 01:A69F: B3 AA     .word off_02_AAB3_54
- - - - - - 0x0046B1 01:A6A1: BE AA     .word off_02_AABE_55
- D 1 - I - 0x0046B3 01:A6A3: C9 AA     .word off_02_AAC9_56
- D 1 - I - 0x0046B5 01:A6A5: CC AA     .word off_02_AACC_57
- D 1 - I - 0x0046B7 01:A6A7: CF AA     .word off_02_AACF_58
- D 1 - I - 0x0046B9 01:A6A9: D2 AA     .word off_02_AAD2_59
- D 1 - I - 0x0046BB 01:A6AB: D5 AA     .word off_02_AAD5_5A
- D 1 - I - 0x0046BD 01:A6AD: E3 AA     .word off_02_AAE3_5B
- D 1 - I - 0x0046BF 01:A6AF: F5 AA     .word off_02_AAF5_5C
- D 1 - I - 0x0046C1 01:A6B1: 05 AB     .word off_02_AB05_5D
- D 1 - I - 0x0046C3 01:A6B3: 15 AB     .word off_02_AB15_5E
- D 1 - I - 0x0046C5 01:A6B5: 23 AB     .word off_02_AB23_5F
- - - - - - 0x0046C7 01:A6B7: 31 AB     .word off_02_AB31_60
- - - - - - 0x0046C9 01:A6B9: 41 AB     .word off_02_AB41_61
- - - - - - 0x0046CB 01:A6BB: 53 AB     .word off_02_AB53_62
- - - - - - 0x0046CD 01:A6BD: 56 AB     .word off_02_AB56_63
- D 1 - I - 0x0046CF 01:A6BF: 59 AB     .word off_02_AB59_64
- D 1 - I - 0x0046D1 01:A6C1: 6C AB     .word off_02_AB6C_65
- D 1 - I - 0x0046D3 01:A6C3: 81 AB     .word off_02_AB81_66
- D 1 - I - 0x0046D5 01:A6C5: 84 AB     .word off_02_AB84_67
- - - - - - 0x0046D7 01:A6C7: 87 AB     .word off_02_AB87_68
- - - - - - 0x0046D9 01:A6C9: 95 AB     .word off_02_AB95_69
- - - - - - 0x0046DB 01:A6CB: A3 AB     .word off_02_ABA3_6A
- - - - - - 0x0046DD 01:A6CD: A6 AB     .word off_02_ABA6_6B
- D 1 - I - 0x0046DF 01:A6CF: A9 AB     .word off_02_ABA9_6C
- D 1 - I - 0x0046E1 01:A6D1: B7 AB     .word off_02_ABB7_6D
- - - - - - 0x0046E3 01:A6D3: C5 AB     .word off_02_ABC5_6E
- D 1 - I - 0x0046E5 01:A6D5: D7 AB     .word off_02_ABD7_6F
- - - - - - 0x0046E7 01:A6D7: E9 AB     .word off_02_ABE9_70
- D 1 - I - 0x0046E9 01:A6D9: F7 AB     .word off_02_ABF7_71
- - - - - - 0x0046EB 01:A6DB: 05 AC     .word off_02_AC05_72
- - - - - - 0x0046ED 01:A6DD: 17 AC     .word off_02_AC17_73
- - - - - - 0x0046EF 01:A6DF: 1F AC     .word off_02_AC1F_74
- - - - - - 0x0046F1 01:A6E1: 29 AC     .word off_02_AC29_75
- - - - - - 0x0046F3 01:A6E3: 33 AC     .word off_02_AC33_76
- - - - - - 0x0046F5 01:A6E5: 3D AC     .word off_02_AC3D_77
- D 1 - I - 0x0046F7 01:A6E7: 51 AC     .word off_02_AC51_78
- D 1 - I - 0x0046F9 01:A6E9: 5F AC     .word off_02_AC5F_79
- D 1 - I - 0x0046FB 01:A6EB: 6A AC     .word off_02_AC6A_7A
- D 1 - I - 0x0046FD 01:A6ED: 7A AC     .word off_02_AC7A_7B
- D 1 - I - 0x0046FF 01:A6EF: 87 AC     .word off_02_AC87_7C
- D 1 - I - 0x004701 01:A6F1: 97 AC     .word off_02_AC97_7D
- D 1 - I - 0x004703 01:A6F3: A4 AC     .word off_02_ACA4_7E
- - - - - - 0x004705 01:A6F5: B4 AC     .word off_02_ACB4_7F
- D 1 - I - 0x004707 01:A6F7: C1 AC     .word off_02_ACC1_80
- D 1 - I - 0x004709 01:A6F9: C4 AC     .word off_02_ACC4_81
- - - - - - 0x00470B 01:A6FB: C7 AC     .word off_02_ACC7_82
- - - - - - 0x00470D 01:A6FD: CA AC     .word off_02_ACCA_83
- D 1 - I - 0x00470F 01:A6FF: CD AC     .word off_02_ACCD_84
- D 1 - I - 0x004711 01:A701: DD AC     .word off_02_ACDD_85
- D 1 - I - 0x004713 01:A703: EA AC     .word off_02_ACEA_86
- D 1 - I - 0x004715 01:A705: FA AC     .word off_02_ACFA_87
- D 1 - I - 0x004717 01:A707: 07 AD     .word off_02_AD07_88
- D 1 - I - 0x004719 01:A709: 0A AD     .word off_02_AD0A_89
- D 1 - I - 0x00471B 01:A70B: 0D AD     .word off_02_AD0D_8A
- D 1 - I - 0x00471D 01:A70D: 10 AD     .word off_02_AD10_8B
- D 1 - I - 0x00471F 01:A70F: 13 AD     .word off_02_AD13_8C
- D 1 - I - 0x004721 01:A711: 23 AD     .word off_02_AD23_8D
- - - - - - 0x004723 01:A713: 30 AD     .word off_02_AD30_8E
- - - - - - 0x004725 01:A715: 3D AD     .word off_02_AD3D_8F
- D 1 - I - 0x004727 01:A717: 4A AD     .word off_02_AD4A_90
- D 1 - I - 0x004729 01:A719: 4D AD     .word off_02_AD4D_91
- D 1 - I - 0x00472B 01:A71B: 50 AD     .word off_02_AD50_92
- D 1 - I - 0x00472D 01:A71D: 53 AD     .word off_02_AD53_93
- D 1 - I - 0x00472F 01:A71F: 56 AD     .word off_02_AD56_94
- D 1 - I - 0x004731 01:A721: 64 AD     .word off_02_AD64_95
- D 1 - I - 0x004733 01:A723: 76 AD     .word off_02_AD76_96
- D 1 - I - 0x004735 01:A725: 86 AD     .word off_02_AD86_97
- - - - - - 0x004737 01:A727: 96 AD     .word off_02_AD96_98
- D 1 - I - 0x004739 01:A729: A4 AD     .word off_02_ADA4_99
- D 1 - I - 0x00473B 01:A72B: A7 AD     .word off_02_ADA7_9A
- - - - - - 0x00473D 01:A72D: B7 AD     .word off_02_ADB7_9B
- D 1 - I - 0x00473F 01:A72F: BA AD     .word off_02_ADBA_9C
- D 1 - I - 0x004741 01:A731: C8 AD     .word off_02_ADC8_9D
- D 1 - I - 0x004743 01:A733: CB AD     .word off_02_ADCB_9E
- D 1 - I - 0x004745 01:A735: DB AD     .word off_02_ADDB_9F



off_02_A737_00:
off_02_A737_01:
- D 1 - I - 0x004747 01:A737: 82        .byte $82   ; counter
- D 1 - I - 0x004748 01:A738: 01        .byte $01   ; spr_A
- D 1 - I - 0x004749 01:A739: FC        .byte $FC, $01, $00   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x00474C 01:A73C: 04        .byte $04, $03, $00   ; 

- D 1 - I - 0x00474F 01:A73F: 02        .byte $02   ; 
- D 1 - I - 0x004750 01:A740: 00        .byte $00   ; 
- D 1 - I - 0x004751 01:A741: FA        .byte $FA, $63, $F0   ; 
- D 1 - I - 0x004754 01:A744: 02        .byte $02, $65, $F0   ; 



off_02_A747_02:
- D 1 - I - 0x004757 01:A747: 81        .byte $81   ; counter
- D 1 - I - 0x004758 01:A748: 01        .byte $01   ; spr_A
- D 1 - I - 0x004759 01:A749: FF        .byte $FF, $05, $00   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x00475C 01:A74C: 02        .byte $02   ; 
- D 1 - I - 0x00475D 01:A74D: 00        .byte $00   ; 
- D 1 - I - 0x00475E 01:A74E: FA        .byte $FA, $63, $F1   ; 
- D 1 - I - 0x004761 01:A751: 02        .byte $02, $65, $F1   ; 



off_02_A754_03:
- D 1 - I - 0x004764 01:A754: 82        .byte $82   ; counter
- D 1 - I - 0x004765 01:A755: 41        .byte $41   ; spr_A
- D 1 - I - 0x004766 01:A756: 04        .byte $04, $01, $00   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004769 01:A759: FC        .byte $FC, $03, $00   ; 

- D 1 - I - 0x00476C 01:A75C: 02        .byte $02   ; 
- D 1 - I - 0x00476D 01:A75D: 00        .byte $00   ; 
- D 1 - I - 0x00476E 01:A75E: FC        .byte $FC, $63, $F0   ; 
- D 1 - I - 0x004771 01:A761: 04        .byte $04, $65, $F0   ; 



off_02_A764_04:
- D 1 - I - 0x004774 01:A764: 81        .byte $81   ; counter
- D 1 - I - 0x004775 01:A765: 41        .byte $41   ; spr_A
- D 1 - I - 0x004776 01:A766: 01        .byte $01, $05, $00   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x004779 01:A769: 02        .byte $02   ; 
- D 1 - I - 0x00477A 01:A76A: 00        .byte $00   ; 
- D 1 - I - 0x00477B 01:A76B: FC        .byte $FC, $63, $F1   ; 
- D 1 - I - 0x00477E 01:A76E: 04        .byte $04, $65, $F1   ; 



off_02_A7AB_09:
- - - - - - 0x0047BB 01:A7AB: FF        .byte $FF   ; 
off_02_A771_05:
- D 1 - I - 0x004781 01:A771: 82        .byte $82   ; counter
- D 1 - I - 0x004782 01:A772: 01        .byte $01   ; spr_A
- D 1 - I - 0x004783 01:A773: FA        .byte $FA, $07, $FF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004786 01:A776: 02        .byte $02, $09, $FF   ; 

- D 1 - I - 0x004789 01:A779: 02        .byte $02   ; 
- D 1 - I - 0x00478A 01:A77A: 00        .byte $00   ; 
- D 1 - I - 0x00478B 01:A77B: F9        .byte $F9, $67, $EF   ; 
- D 1 - I - 0x00478E 01:A77E: 01        .byte $01, $69, $EF   ; 



off_02_A7AE_0A:
- - - - - - 0x0047BE 01:A7AE: FF        .byte $FF   ; 
off_02_A781_06:
- D 1 - I - 0x004791 01:A781: 82        .byte $82   ; counter
- D 1 - I - 0x004792 01:A782: 00        .byte $00   ; spr_A
- D 1 - I - 0x004793 01:A783: F8        .byte $F8, $67, $F1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004796 01:A786: 00        .byte $00, $69, $F1   ; 

- D 1 - I - 0x004799 01:A789: 01        .byte $01   ; 
- D 1 - I - 0x00479A 01:A78A: 01        .byte $01   ; 
- D 1 - I - 0x00479B 01:A78B: FD        .byte $FD, $0B, $00   ; 



off_02_A7B1_0B:
- - - - - - 0x0047C1 01:A7B1: FF        .byte $FF   ; 
off_02_A78E_07:
- D 1 - I - 0x00479E 01:A78E: 82        .byte $82   ; counter
- D 1 - I - 0x00479F 01:A78F: 01        .byte $01   ; spr_A
- D 1 - I - 0x0047A0 01:A790: F8        .byte $F8, $0D, $FF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0047A3 01:A793: 00        .byte $00, $0F, $FF   ; 

- D 1 - I - 0x0047A6 01:A796: 02        .byte $02   ; 
- D 1 - I - 0x0047A7 01:A797: 00        .byte $00   ; 
- D 1 - I - 0x0047A8 01:A798: F4        .byte $F4, $67, $EF   ; 
- D 1 - I - 0x0047AB 01:A79B: FC        .byte $FC, $69, $EF   ; 



off_02_A7B4_0C:
- - - - - - 0x0047C4 01:A7B4: FF        .byte $FF   ; 
off_02_A79E_08:
- D 1 - I - 0x0047AE 01:A79E: 82        .byte $82   ; counter
- D 1 - I - 0x0047AF 01:A79F: 00        .byte $00   ; spr_A
- D 1 - I - 0x0047B0 01:A7A0: F6        .byte $F6, $67, $F1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0047B3 01:A7A3: FE        .byte $FE, $69, $F1   ; 

- D 1 - I - 0x0047B6 01:A7A6: 01        .byte $01   ; 
- D 1 - I - 0x0047B7 01:A7A7: 01        .byte $01   ; 
- D 1 - I - 0x0047B8 01:A7A8: FB        .byte $FB, $0B, $00   ; 



off_02_A7FD_11:
- - - - - - 0x00480D 01:A7FD: FF        .byte $FF   ; 
off_02_A7B7_0D:
- D 1 - I - 0x0047C7 01:A7B7: 82        .byte $82   ; counter
- D 1 - I - 0x0047C8 01:A7B8: 01        .byte $01   ; spr_A
- D 1 - I - 0x0047C9 01:A7B9: F6        .byte $F6, $11, $00   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0047CC 01:A7BC: FE        .byte $FE, $13, $00   ; 

- D 1 - I - 0x0047CF 01:A7BF: 03        .byte $03   ; 
- D 1 - I - 0x0047D0 01:A7C0: 00        .byte $00   ; 
- D 1 - I - 0x0047D1 01:A7C1: F0        .byte $F0, $6B, $F0   ; 
- D 1 - I - 0x0047D4 01:A7C4: F8        .byte $F8, $6D, $F0   ; 
- D 1 - I - 0x0047D7 01:A7C7: 00        .byte $00, $6F, $F0   ; 



off_02_A800_12:
- - - - - - 0x004810 01:A800: FF        .byte $FF   ; 
off_02_A7CA_0E:
- D 1 - I - 0x0047DA 01:A7CA: 81        .byte $81   ; counter
- D 1 - I - 0x0047DB 01:A7CB: 01        .byte $01   ; spr_A
- D 1 - I - 0x0047DC 01:A7CC: FC        .byte $FC, $15, $01   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x0047DF 01:A7CF: 03        .byte $03   ; 
- D 1 - I - 0x0047E0 01:A7D0: 00        .byte $00   ; 
- D 1 - I - 0x0047E1 01:A7D1: F0        .byte $F0, $6B, $F2   ; 
- D 1 - I - 0x0047E4 01:A7D4: F8        .byte $F8, $6D, $F2   ; 
- D 1 - I - 0x0047E7 01:A7D7: 00        .byte $00, $6F, $F2   ; 



off_02_A803_13:
- - - - - - 0x004813 01:A803: FF        .byte $FF   ; 
off_02_A7DA_0F:
- - - - - - 0x0047EA 01:A7DA: 82        .byte $82   ; counter
- - - - - - 0x0047EB 01:A7DB: 01        .byte $01   ; spr_A
- - - - - - 0x0047EC 01:A7DC: F6        .byte $F6, $17, $00   ; spr_X, spr_T, spr_Y
- - - - - - 0x0047EF 01:A7DF: FE        .byte $FE, $19, $00   ; 

- - - - - - 0x0047F2 01:A7E2: 03        .byte $03   ; 
- - - - - - 0x0047F3 01:A7E3: 00        .byte $00   ; 
- - - - - - 0x0047F4 01:A7E4: EE        .byte $EE, $6B, $F0   ; 
- - - - - - 0x0047F7 01:A7E7: F6        .byte $F6, $6D, $F0   ; 
- - - - - - 0x0047FA 01:A7EA: FE        .byte $FE, $6F, $F0   ; 



off_02_A806_14:
- - - - - - 0x004816 01:A806: FF        .byte $FF   ; 
off_02_A7ED_10:
- - - - - - 0x0047FD 01:A7ED: 81        .byte $81   ; counter
- - - - - - 0x0047FE 01:A7EE: 01        .byte $01   ; spr_A
- - - - - - 0x0047FF 01:A7EF: FA        .byte $FA, $15, $01   ; spr_X, spr_T, spr_Y

- - - - - - 0x004802 01:A7F2: 03        .byte $03   ; 
- - - - - - 0x004803 01:A7F3: 00        .byte $00   ; 
- - - - - - 0x004804 01:A7F4: EE        .byte $EE, $6B, $F2   ; 
- - - - - - 0x004807 01:A7F7: F6        .byte $F6, $6D, $F2   ; 
- - - - - - 0x00480A 01:A7FA: FE        .byte $FE, $6F, $F2   ; 



off_02_A840_19:
- - - - - - 0x004850 01:A840: FF        .byte $FF   ; 
off_02_A809_15:
- - - - - - 0x004819 01:A809: 82        .byte $82   ; counter
- - - - - - 0x00481A 01:A80A: 01        .byte $01   ; spr_A
- - - - - - 0x00481B 01:A80B: FB        .byte $FB, $1B, $00   ; spr_X, spr_T, spr_Y
- - - - - - 0x00481E 01:A80E: 03        .byte $03, $1D, $00   ; 

- - - - - - 0x004821 01:A811: 02        .byte $02   ; 
- - - - - - 0x004822 01:A812: 00        .byte $00   ; 
- - - - - - 0x004823 01:A813: F9        .byte $F9, $71, $F0   ; 
- - - - - - 0x004826 01:A816: 01        .byte $01, $73, $F0   ; 



off_02_A843_1A:
- - - - - - 0x004853 01:A843: FF        .byte $FF   ; 
off_02_A819_16:
- - - - - - 0x004829 01:A819: 81        .byte $81   ; counter
- - - - - - 0x00482A 01:A81A: 01        .byte $01   ; spr_A
- - - - - - 0x00482B 01:A81B: FF        .byte $FF, $1F, $01   ; spr_X, spr_T, spr_Y

- - - - - - 0x00482E 01:A81E: 02        .byte $02   ; 
- - - - - - 0x00482F 01:A81F: 00        .byte $00   ; 
- - - - - - 0x004830 01:A820: F9        .byte $F9, $71, $F2   ; 
- - - - - - 0x004833 01:A823: 01        .byte $01, $73, $F2   ; 



off_02_A846_1B:
- - - - - - 0x004856 01:A846: FF        .byte $FF   ; 
off_02_A826_17:
- - - - - - 0x004836 01:A826: 81        .byte $81   ; counter
- - - - - - 0x004837 01:A827: 01        .byte $01   ; spr_A
- - - - - - 0x004838 01:A828: 00        .byte $00, $21, $00   ; spr_X, spr_T, spr_Y

- - - - - - 0x00483B 01:A82B: 02        .byte $02   ; 
- - - - - - 0x00483C 01:A82C: 00        .byte $00   ; 
- - - - - - 0x00483D 01:A82D: FB        .byte $FB, $71, $F0   ; 
- - - - - - 0x004840 01:A830: 03        .byte $03, $73, $F0   ; 



off_02_A849_1C:
- - - - - - 0x004859 01:A849: FF        .byte $FF   ; 
off_02_A833_18:
- - - - - - 0x004843 01:A833: 82        .byte $82   ; counter
- - - - - - 0x004844 01:A834: 00        .byte $00   ; spr_A
- - - - - - 0x004845 01:A835: FB        .byte $FB, $71, $F2   ; spr_X, spr_T, spr_Y
- - - - - - 0x004848 01:A838: 03        .byte $03, $73, $F2   ; 

- - - - - - 0x00484B 01:A83B: 01        .byte $01   ; 
- - - - - - 0x00484C 01:A83C: 01        .byte $01   ; 
- - - - - - 0x00484D 01:A83D: 00        .byte $00, $1F, $01   ; 



off_02_A84C_1D:
- - - - - - 0x00485C 01:A84C: 81        .byte $81   ; counter
- - - - - - 0x00485D 01:A84D: 01        .byte $01   ; spr_A
- - - - - - 0x00485E 01:A84E: 03        .byte $03, $25, $00   ; spr_X, spr_T, spr_Y

- - - - - - 0x004861 01:A851: 82        .byte $82   ; 
- - - - - - 0x004862 01:A852: 00        .byte $00   ; 
- - - - - - 0x004863 01:A853: FA        .byte $FA, $75, $F0   ; 
- - - - - - 0x004866 01:A856: 02        .byte $02, $77, $F0   ; 

- - - - - - 0x004869 01:A859: 01        .byte $01   ; 
- - - - - - 0x00486A 01:A85A: 01        .byte $01   ; 
- - - - - - 0x00486B 01:A85B: FB        .byte $FB, $23, $00   ; 



off_02_A85E_1E:
- - - - - - 0x00486E 01:A85E: 81        .byte $81   ; counter
- - - - - - 0x00486F 01:A85F: 41        .byte $41   ; spr_A
- - - - - - 0x004870 01:A860: 03        .byte $03, $23, $00   ; spr_X, spr_T, spr_Y

- - - - - - 0x004873 01:A863: 82        .byte $82   ; 
- - - - - - 0x004874 01:A864: 00        .byte $00   ; 
- - - - - - 0x004875 01:A865: FA        .byte $FA, $75, $F2   ; 
- - - - - - 0x004878 01:A868: 02        .byte $02, $77, $F2   ; 

- - - - - - 0x00487B 01:A86B: 01        .byte $01   ; 
- - - - - - 0x00487C 01:A86C: 01        .byte $01   ; 
- - - - - - 0x00487D 01:A86D: FB        .byte $FB, $27, $00   ; 



off_02_A870_1F:
- - - - - - 0x004880 01:A870: 82        .byte $82   ; counter
- - - - - - 0x004881 01:A871: 41        .byte $41   ; spr_A
- - - - - - 0x004882 01:A872: 03        .byte $03, $23, $00   ; spr_X, spr_T, spr_Y
- - - - - - 0x004885 01:A875: FB        .byte $FB, $25, $00   ; 

- - - - - - 0x004888 01:A878: 02        .byte $02   ; 
- - - - - - 0x004889 01:A879: 00        .byte $00   ; 
- - - - - - 0x00488A 01:A87A: FC        .byte $FC, $75, $F0   ; 
- - - - - - 0x00488D 01:A87D: 04        .byte $04, $77, $F0   ; 



off_02_A880_20:
- - - - - - 0x004890 01:A880: 81        .byte $81   ; counter
- - - - - - 0x004891 01:A881: 01        .byte $01   ; spr_A
- - - - - - 0x004892 01:A882: FB        .byte $FB, $23, $00   ; spr_X, spr_T, spr_Y

- - - - - - 0x004895 01:A885: 82        .byte $82   ; 
- - - - - - 0x004896 01:A886: 00        .byte $00   ; 
- - - - - - 0x004897 01:A887: FC        .byte $FC, $75, $F2   ; 
- - - - - - 0x00489A 01:A88A: 04        .byte $04, $77, $F2   ; 

- - - - - - 0x00489D 01:A88D: 01        .byte $01   ; 
- - - - - - 0x00489E 01:A88E: 41        .byte $41   ; 
- - - - - - 0x00489F 01:A88F: 03        .byte $03, $27, $00   ; 



off_02_A892_21:
- D 1 - I - 0x0048A2 01:A892: 82        .byte $82   ; counter
- D 1 - I - 0x0048A3 01:A893: 00        .byte $00   ; spr_A
- D 1 - I - 0x0048A4 01:A894: F9        .byte $F9, $63, $EF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0048A7 01:A897: 01        .byte $01, $65, $EF   ; 

- D 1 - I - 0x0048AA 01:A89A: 02        .byte $02   ; 
- D 1 - I - 0x0048AB 01:A89B: 01        .byte $01   ; 
- D 1 - I - 0x0048AC 01:A89C: FB        .byte $FB, $29, $FF   ; 
- D 1 - I - 0x0048AF 01:A89F: 03        .byte $03, $2B, $FF   ; 



off_02_A8B2_23:
- - - - - - 0x0048C2 01:A8B2: FF        .byte $FF   ; 
off_02_A8A2_22:
- - - - - - 0x0048B2 01:A8A2: 82        .byte $82   ; counter
- - - - - - 0x0048B3 01:A8A3: 41        .byte $41   ; spr_A
- - - - - - 0x0048B4 01:A8A4: FE        .byte $FE, $29, $FF   ; spr_X, spr_T, spr_Y
- - - - - - 0x0048B7 01:A8A7: F6        .byte $F6, $2B, $FF   ; 

- - - - - - 0x0048BA 01:A8AA: 02        .byte $02   ; 
- - - - - - 0x0048BB 01:A8AB: 00        .byte $00   ; 
- - - - - - 0x0048BC 01:A8AC: F6        .byte $F6, $67, $EF   ; 
- - - - - - 0x0048BF 01:A8AF: FE        .byte $FE, $69, $EF   ; 



off_02_A8C8_25:
- - - - - - 0x0048D8 01:A8C8: FF        .byte $FF   ; 
off_02_A8B5_24:
- - - - - - 0x0048C5 01:A8B5: 82        .byte $82   ; counter
- - - - - - 0x0048C6 01:A8B6: 41        .byte $41   ; spr_A
- - - - - - 0x0048C7 01:A8B7: FE        .byte $FE, $29, $FF   ; spr_X, spr_T, spr_Y
- - - - - - 0x0048CA 01:A8BA: F6        .byte $F6, $2B, $FF   ; 

- - - - - - 0x0048CD 01:A8BD: 03        .byte $03   ; 
- - - - - - 0x0048CE 01:A8BE: 00        .byte $00   ; 
- - - - - - 0x0048CF 01:A8BF: EE        .byte $EE, $6B, $F0   ; 
- - - - - - 0x0048D2 01:A8C2: F6        .byte $F6, $6D, $F0   ; 
- - - - - - 0x0048D5 01:A8C5: FE        .byte $FE, $6F, $F0   ; 



off_02_A8DB_27:
- - - - - - 0x0048EB 01:A8DB: FF        .byte $FF   ; 
off_02_A8CB_26:
- - - - - - 0x0048DB 01:A8CB: 82        .byte $82   ; counter
- - - - - - 0x0048DC 01:A8CC: 01        .byte $01   ; spr_A
- - - - - - 0x0048DD 01:A8CD: FA        .byte $FA, $2D, $FE   ; spr_X, spr_T, spr_Y
- - - - - - 0x0048E0 01:A8D0: 02        .byte $02, $2F, $FE   ; 

- - - - - - 0x0048E3 01:A8D3: 02        .byte $02   ; 
- - - - - - 0x0048E4 01:A8D4: 00        .byte $00   ; 
- - - - - - 0x0048E5 01:A8D5: F9        .byte $F9, $71, $EF   ; 
- - - - - - 0x0048E8 01:A8D8: 01        .byte $01, $73, $EF   ; 



off_02_A8DE_28:
- - - - - - 0x0048EE 01:A8DE: 82        .byte $82   ; counter
- - - - - - 0x0048EF 01:A8DF: 01        .byte $01   ; spr_A
- - - - - - 0x0048F0 01:A8E0: FA        .byte $FA, $2D, $FE   ; spr_X, spr_T, spr_Y
- - - - - - 0x0048F3 01:A8E3: 02        .byte $02, $2F, $FE   ; 

- - - - - - 0x0048F6 01:A8E6: 02        .byte $02   ; 
- - - - - - 0x0048F7 01:A8E7: 00        .byte $00   ; 
- - - - - - 0x0048F8 01:A8E8: FA        .byte $FA, $75, $EE   ; 
- - - - - - 0x0048FB 01:A8EB: 02        .byte $02, $77, $EE   ; 



off_02_A8EE_29:
- - - - - - 0x0048FE 01:A8EE: 82        .byte $82   ; counter
- - - - - - 0x0048FF 01:A8EF: 00        .byte $00   ; spr_A
- - - - - - 0x004900 01:A8F0: F8        .byte $F8, $63, $F0   ; spr_X, spr_T, spr_Y
- - - - - - 0x004903 01:A8F3: 00        .byte $00, $65, $F0   ; 

- - - - - - 0x004906 01:A8F6: 02        .byte $02   ; 
- - - - - - 0x004907 01:A8F7: 01        .byte $01   ; 
- - - - - - 0x004908 01:A8F8: FB        .byte $FB, $29, $FF   ; 
- - - - - - 0x00490B 01:A8FB: 03        .byte $03, $2B, $FF   ; 



off_02_A90E_2B:
- - - - - - 0x00491E 01:A90E: FF        .byte $FF   ; 
off_02_A8FE_2A:
- - - - - - 0x00490E 01:A8FE: 82        .byte $82   ; counter
- - - - - - 0x00490F 01:A8FF: 41        .byte $41   ; spr_A
- - - - - - 0x004910 01:A900: FE        .byte $FE, $29, $FF   ; spr_X, spr_T, spr_Y
- - - - - - 0x004913 01:A903: F6        .byte $F6, $2B, $FF   ; 

- - - - - - 0x004916 01:A906: 02        .byte $02   ; 
- - - - - - 0x004917 01:A907: 00        .byte $00   ; 
- - - - - - 0x004918 01:A908: F8        .byte $F8, $67, $F1   ; 
- - - - - - 0x00491B 01:A90B: 00        .byte $00, $69, $F1   ; 



off_02_A924_2D:
- - - - - - 0x004934 01:A924: FF        .byte $FF   ; 
off_02_A911_2C:
- - - - - - 0x004921 01:A911: 82        .byte $82   ; counter
- - - - - - 0x004922 01:A912: 41        .byte $41   ; spr_A
- - - - - - 0x004923 01:A913: FE        .byte $FE, $29, $FF   ; spr_X, spr_T, spr_Y
- - - - - - 0x004926 01:A916: F6        .byte $F6, $2B, $FF   ; 

- - - - - - 0x004929 01:A919: 03        .byte $03   ; 
- - - - - - 0x00492A 01:A91A: 00        .byte $00   ; 
- - - - - - 0x00492B 01:A91B: F1        .byte $F1, $6B, $F0   ; 
- - - - - - 0x00492E 01:A91E: F9        .byte $F9, $6D, $F0   ; 
- - - - - - 0x004931 01:A921: 01        .byte $01, $6F, $F0   ; 



off_02_A937_2F:
- - - - - - 0x004947 01:A937: FF        .byte $FF   ; 
off_02_A927_2E:
- - - - - - 0x004937 01:A927: 82        .byte $82   ; counter
- - - - - - 0x004938 01:A928: 01        .byte $01   ; spr_A
- - - - - - 0x004939 01:A929: FA        .byte $FA, $2D, $FE   ; spr_X, spr_T, spr_Y
- - - - - - 0x00493C 01:A92C: 02        .byte $02, $2F, $FE   ; 

- - - - - - 0x00493F 01:A92F: 02        .byte $02   ; 
- - - - - - 0x004940 01:A930: 00        .byte $00   ; 
- - - - - - 0x004941 01:A931: F9        .byte $F9, $71, $EF   ; 
- - - - - - 0x004944 01:A934: 01        .byte $01, $73, $EF   ; 



off_02_A93A_30:
- - - - - - 0x00494A 01:A93A: 82        .byte $82   ; counter
- - - - - - 0x00494B 01:A93B: 01        .byte $01   ; spr_A
- - - - - - 0x00494C 01:A93C: FA        .byte $FA, $2D, $FE   ; spr_X, spr_T, spr_Y
- - - - - - 0x00494F 01:A93F: 02        .byte $02, $2F, $FE   ; 

- - - - - - 0x004952 01:A942: 02        .byte $02   ; 
- - - - - - 0x004953 01:A943: 00        .byte $00   ; 
- - - - - - 0x004954 01:A944: FB        .byte $FB, $75, $F0   ; 
- - - - - - 0x004957 01:A947: 03        .byte $03, $77, $F0   ; 



off_02_A94A_31:
- - - - - - 0x00495A 01:A94A: 82        .byte $82   ; counter
- - - - - - 0x00495B 01:A94B: 00        .byte $00   ; spr_A
- - - - - - 0x00495C 01:A94C: F9        .byte $F9, $71, $F0   ; spr_X, spr_T, spr_Y
- - - - - - 0x00495F 01:A94F: 01        .byte $01, $73, $F0   ; 

- - - - - - 0x004962 01:A952: 81        .byte $81   ; 
- - - - - - 0x004963 01:A953: 01        .byte $01   ; 
- - - - - - 0x004964 01:A954: F9        .byte $F9, $31, $00   ; 

- - - - - - 0x004967 01:A957: 01        .byte $01   ; 
- - - - - - 0x004968 01:A958: 41        .byte $41   ; 
- - - - - - 0x004969 01:A959: 01        .byte $01, $31, $00   ; 



off_02_A95C_32:
- - - - - - 0x00496C 01:A95C: 81        .byte $81   ; counter
- - - - - - 0x00496D 01:A95D: 00        .byte $00   ; spr_A
- - - - - - 0x00496E 01:A95E: F9        .byte $F9, $37, $FA   ; spr_X, spr_T, spr_Y

- - - - - - 0x004971 01:A961: 01        .byte $01   ; 
- - - - - - 0x004972 01:A962: 01        .byte $01   ; 
- - - - - - 0x004973 01:A963: 01        .byte $01, $39, $FA   ; 



off_02_A966_33:
- - - - - - 0x004976 01:A966: 81        .byte $81   ; counter
- - - - - - 0x004977 01:A967: 00        .byte $00   ; spr_A
- - - - - - 0x004978 01:A968: F9        .byte $F9, $C3, $00   ; spr_X, spr_T, spr_Y

- - - - - - 0x00497B 01:A96B: 01        .byte $01   ; 
- - - - - - 0x00497C 01:A96C: 40        .byte $40   ; 
- - - - - - 0x00497D 01:A96D: 01        .byte $01, $C3, $00   ; 



off_02_A970_34:
- - - - - - 0x004980 01:A970: 81        .byte $81   ; counter
- - - - - - 0x004981 01:A971: 00        .byte $00   ; spr_A
- - - - - - 0x004982 01:A972: F9        .byte $F9, $C5, $00   ; spr_X, spr_T, spr_Y

- - - - - - 0x004985 01:A975: 01        .byte $01   ; 
- - - - - - 0x004986 01:A976: 40        .byte $40   ; 
- - - - - - 0x004987 01:A977: 01        .byte $01, $C5, $00   ; 



off_02_A97A_35:
- - - - - - 0x00498A 01:A97A: 81        .byte $81   ; counter
- - - - - - 0x00498B 01:A97B: 00        .byte $00   ; spr_A
- - - - - - 0x00498C 01:A97C: F6        .byte $F6, $C5, $00   ; spr_X, spr_T, spr_Y

- - - - - - 0x00498F 01:A97F: 01        .byte $01   ; 
- - - - - - 0x004990 01:A980: 40        .byte $40   ; 
- - - - - - 0x004991 01:A981: 04        .byte $04, $C5, $00   ; 



off_02_A984_36:
- - - - - - 0x004994 01:A984: 81        .byte $81   ; counter
- - - - - - 0x004995 01:A985: 00        .byte $00   ; spr_A
- - - - - - 0x004996 01:A986: F5        .byte $F5, $C9, $F8   ; spr_X, spr_T, spr_Y

- - - - - - 0x004999 01:A989: 81        .byte $81   ; 
- - - - - - 0x00499A 01:A98A: 80        .byte $80   ; 
- - - - - - 0x00499B 01:A98B: F5        .byte $F5, $C9, $08   ; 

- - - - - - 0x00499E 01:A98E: 81        .byte $81   ; 
- - - - - - 0x00499F 01:A98F: 40        .byte $40   ; 
- - - - - - 0x0049A0 01:A990: 05        .byte $05, $C9, $F8   ; 

- - - - - - 0x0049A3 01:A993: 01        .byte $01   ; 
- - - - - - 0x0049A4 01:A994: C0        .byte $C0   ; 
- - - - - - 0x0049A5 01:A995: 05        .byte $05, $C9, $08   ; 



off_02_A998_37:
- - - - - - 0x0049A8 01:A998: 82        .byte $82   ; counter
- - - - - - 0x0049A9 01:A999: 00        .byte $00   ; spr_A
- - - - - - 0x0049AA 01:A99A: F9        .byte $F9, $79, $F0   ; spr_X, spr_T, spr_Y
- - - - - - 0x0049AD 01:A99D: 01        .byte $01, $7B, $F0   ; 

- - - - - - 0x0049B0 01:A9A0: 81        .byte $81   ; 
- - - - - - 0x0049B1 01:A9A1: 01        .byte $01   ; 
- - - - - - 0x0049B2 01:A9A2: F9        .byte $F9, $31, $00   ; 



- - - - - - 0x0049B5 01:A9A5: 01        .byte $01   ; 
- - - - - - 0x0049B6 01:A9A6: 41        .byte $41   ; 
- - - - - - 0x0049B7 01:A9A7: 01        .byte $01, $31, $00   ; 



off_02_A9AA_38:
- - - - - - 0x0049BA 01:A9AA: 82        .byte $82   ; counter
- - - - - - 0x0049BB 01:A9AB: 00        .byte $00   ; spr_A
- - - - - - 0x0049BC 01:A9AC: F9        .byte $F9, $7D, $EF   ; spr_X, spr_T, spr_Y
- - - - - - 0x0049BF 01:A9AF: 01        .byte $01, $7F, $EF   ; 

- - - - - - 0x0049C2 01:A9B2: 02        .byte $02   ; 
- - - - - - 0x0049C3 01:A9B3: 01        .byte $01   ; 
- - - - - - 0x0049C4 01:A9B4: F9        .byte $F9, $33, $FF   ; 
- - - - - - 0x0049C7 01:A9B7: 01        .byte $01, $35, $FF   ; 



off_02_A9BA_39:
- - - - - - 0x0049CA 01:A9BA: 82        .byte $82   ; counter
- - - - - - 0x0049CB 01:A9BB: 80        .byte $80   ; spr_A
- - - - - - 0x0049CC 01:A9BC: F9        .byte $F9, $79, $01   ; spr_X, spr_T, spr_Y
- - - - - - 0x0049CF 01:A9BF: 01        .byte $01, $7B, $01   ; 

- - - - - - 0x0049D2 01:A9C2: 81        .byte $81   ; 
- - - - - - 0x0049D3 01:A9C3: 81        .byte $81   ; 
- - - - - - 0x0049D4 01:A9C4: F9        .byte $F9, $31, $F1   ; 

- - - - - - 0x0049D7 01:A9C7: 01        .byte $01   ; 
- - - - - - 0x0049D8 01:A9C8: C1        .byte $C1   ; 
- - - - - - 0x0049D9 01:A9C9: 01        .byte $01, $31, $F1   ; 



off_02_A9CC_3A:
- - - - - - 0x0049DC 01:A9CC: 82        .byte $82   ; counter
- - - - - - 0x0049DD 01:A9CD: 80        .byte $80   ; spr_A
- - - - - - 0x0049DE 01:A9CE: F9        .byte $F9, $7D, $02   ; spr_X, spr_T, spr_Y
- - - - - - 0x0049E1 01:A9D1: 01        .byte $01, $7F, $02   ; 

- - - - - - 0x0049E4 01:A9D4: 02        .byte $02   ; 
- - - - - - 0x0049E5 01:A9D5: 81        .byte $81   ; 
- - - - - - 0x0049E6 01:A9D6: F9        .byte $F9, $33, $F2   ; 
- - - - - - 0x0049E9 01:A9D9: 01        .byte $01, $35, $F2   ; 



off_02_A9DC_3B:
off_02_A9DC_3C:
off_02_A9DC_3D:
off_02_A9DC_3E:
- D 1 - I - 0x0049EC 01:A9DC: 04        .byte $04   ; counter
- D 1 - I - 0x0049ED 01:A9DD: 00        .byte $00   ; spr_A
- D 1 - I - 0x0049EE 01:A9DE: 04        .byte $04, $03, $00   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0049F1 01:A9E1: FC        .byte $FC, $59, $F0   ; 
- D 1 - I - 0x0049F4 01:A9E4: 04        .byte $04, $5B, $F0   ; 
- D 1 - I - 0x0049F7 01:A9E7: FC        .byte $FC, $01, $00   ; 



off_02_A9EA_3F:
- D 1 - I - 0x0049FA 01:A9EA: 03        .byte $03   ; counter
- D 1 - I - 0x0049FB 01:A9EB: 00        .byte $00   ; spr_A
- D 1 - I - 0x0049FC 01:A9EC: FF        .byte $FF, $05, $01   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0049FF 01:A9EF: FC        .byte $FC, $59, $F2   ; 
- D 1 - I - 0x004A02 01:A9F2: 04        .byte $04, $5B, $F2   ; 



off_02_A9F5_40:
- D 1 - I - 0x004A05 01:A9F5: 82        .byte $82   ; counter
- D 1 - I - 0x004A06 01:A9F6: 40        .byte $40   ; spr_A
- D 1 - I - 0x004A07 01:A9F7: 04        .byte $04, $01, $00   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x004A0A 01:A9FA: FC        .byte $FC, $03, $00   ; 
- D 1 - I - 0x004A0D 01:A9FD: 02        .byte $02   ; 
- D 1 - I - 0x004A0E 01:A9FE: 00        .byte $00   ; 
- D 1 - I - 0x004A0F 01:A9FF: FE        .byte $FE, $59, $F0   ; 
- D 1 - I - 0x004A12 01:AA02: 06        .byte $06, $5B, $F0   ; 



off_02_AA05_41:
- D 1 - I - 0x004A15 01:AA05: 81        .byte $81   ; counter
- D 1 - I - 0x004A16 01:AA06: 40        .byte $40   ; spr_A
- D 1 - I - 0x004A17 01:AA07: 01        .byte $01, $05, $00   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x004A1A 01:AA0A: 02        .byte $02   ; 
- D 1 - I - 0x004A1B 01:AA0B: 00        .byte $00   ; 
- D 1 - I - 0x004A1C 01:AA0C: FE        .byte $FE, $59, $F2   ; 
- D 1 - I - 0x004A1F 01:AA0F: 06        .byte $06, $5B, $F2   ; 



off_02_AA44_46:
- D 1 - I - 0x004A54 01:AA44: FF        .byte $FF   ; 
off_02_AA12_42:
- D 1 - I - 0x004A22 01:AA12: 04        .byte $04   ; counter
- D 1 - I - 0x004A23 01:AA13: 00        .byte $00   ; spr_A
- D 1 - I - 0x004A24 01:AA14: FA        .byte $FA, $07, $FF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004A27 01:AA17: 02        .byte $02, $09, $FF   ; 
- D 1 - I - 0x004A2A 01:AA1A: F7        .byte $F7, $5D, $EF   ; 
- D 1 - I - 0x004A2D 01:AA1D: FF        .byte $FF, $5F, $EF   ; 



off_02_AA47_47:
- D 1 - I - 0x004A57 01:AA47: FF        .byte $FF   ; 
off_02_AA20_43:
- D 1 - I - 0x004A30 01:AA20: 03        .byte $03   ; counter
- D 1 - I - 0x004A31 01:AA21: 00        .byte $00   ; spr_A
- D 1 - I - 0x004A32 01:AA22: FD        .byte $FD, $0B, $00   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004A35 01:AA25: F6        .byte $F6, $5D, $F1   ; 
- D 1 - I - 0x004A38 01:AA28: FE        .byte $FE, $5F, $F1   ; 



off_02_AA4A_48:
- D 1 - I - 0x004A5A 01:AA4A: FF        .byte $FF   ; 
off_02_AA2B_44:
- D 1 - I - 0x004A3B 01:AA2B: 04        .byte $04   ; counter
- D 1 - I - 0x004A3C 01:AA2C: 00        .byte $00   ; spr_A
- D 1 - I - 0x004A3D 01:AA2D: F8        .byte $F8, $0D, $FF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004A40 01:AA30: 00        .byte $00, $0F, $FF   ; 
- D 1 - I - 0x004A43 01:AA33: F3        .byte $F3, $5D, $EF   ; 
- D 1 - I - 0x004A46 01:AA36: FB        .byte $FB, $5F, $EF   ; 



off_02_AA4D_49:
- D 1 - I - 0x004A5D 01:AA4D: FF        .byte $FF   ; 
off_02_AA39_45:
- D 1 - I - 0x004A49 01:AA39: 03        .byte $03   ; counter
- D 1 - I - 0x004A4A 01:AA3A: 00        .byte $00   ; spr_A
- D 1 - I - 0x004A4B 01:AA3B: FA        .byte $FA, $0B, $00   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004A4E 01:AA3E: F3        .byte $F3, $5D, $F1   ; 
- D 1 - I - 0x004A51 01:AA41: FB        .byte $FB, $5F, $F1   ; 



off_02_AA8E_4E:
- D 1 - I - 0x004A9E 01:AA8E: FF        .byte $FF   ; 
off_02_AA50_4A:
- D 1 - I - 0x004A60 01:AA50: 05        .byte $05   ; counter
- D 1 - I - 0x004A61 01:AA51: 00        .byte $00   ; spr_A
- D 1 - I - 0x004A62 01:AA52: F6        .byte $F6, $11, $00   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004A65 01:AA55: FE        .byte $FE, $13, $00   ; 
- D 1 - I - 0x004A68 01:AA58: EC        .byte $EC, $61, $F0   ; 
- D 1 - I - 0x004A6B 01:AA5B: F4        .byte $F4, $63, $F0   ; 
- D 1 - I - 0x004A6E 01:AA5E: FC        .byte $FC, $65, $F0   ; 



off_02_AA91_4F:
- D 1 - I - 0x004AA1 01:AA91: FF        .byte $FF   ; 
off_02_AA61_4B:
- D 1 - I - 0x004A71 01:AA61: 04        .byte $04   ; counter
- D 1 - I - 0x004A72 01:AA62: 00        .byte $00   ; spr_A
- D 1 - I - 0x004A73 01:AA63: FC        .byte $FC, $65, $F2   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004A76 01:AA66: F4        .byte $F4, $63, $F2   ; 
- D 1 - I - 0x004A79 01:AA69: EC        .byte $EC, $61, $F1   ; 
- D 1 - I - 0x004A7C 01:AA6C: FC        .byte $FC, $15, $00   ; 



off_02_AA94_50:
- D 1 - I - 0x004AA4 01:AA94: FF        .byte $FF   ; 
off_02_AA6F_4C:
- D 1 - I - 0x004A7F 01:AA6F: 05        .byte $05   ; counter
- D 1 - I - 0x004A80 01:AA70: 00        .byte $00   ; spr_A
- D 1 - I - 0x004A81 01:AA71: F6        .byte $F6, $17, $00   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004A84 01:AA74: FE        .byte $FE, $19, $00   ; 
- D 1 - I - 0x004A87 01:AA77: F3        .byte $F3, $63, $F0   ; 
- D 1 - I - 0x004A8A 01:AA7A: EB        .byte $EB, $61, $F0   ; 
- D 1 - I - 0x004A8D 01:AA7D: FB        .byte $FB, $65, $F0   ; 



off_02_AA97_51:
- D 1 - I - 0x004AA7 01:AA97: FF        .byte $FF   ; 
off_02_AA80_4D:
- D 1 - I - 0x004A90 01:AA80: 04        .byte $04   ; counter
- D 1 - I - 0x004A91 01:AA81: 00        .byte $00   ; spr_A
- D 1 - I - 0x004A92 01:AA82: FA        .byte $FA, $15, $00   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004A95 01:AA85: F2        .byte $F2, $63, $F2   ; 
- D 1 - I - 0x004A98 01:AA88: FA        .byte $FA, $65, $F2   ; 
- D 1 - I - 0x004A9B 01:AA8B: EA        .byte $EA, $61, $F1   ; 



off_02_AAC9_56:
- D 1 - I - 0x004AD9 01:AAC9: FF        .byte $FF   ; 
off_02_AA9A_52:
- D 1 - I - 0x004AAA 01:AA9A: 04        .byte $04   ; counter
- D 1 - I - 0x004AAB 01:AA9B: 00        .byte $00   ; spr_A
- D 1 - I - 0x004AAC 01:AA9C: FB        .byte $FB, $1B, $00   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004AAF 01:AA9F: 03        .byte $03, $1D, $00   ; 
- D 1 - I - 0x004AB2 01:AAA2: F9        .byte $F9, $67, $F0   ; 
- D 1 - I - 0x004AB5 01:AAA5: 01        .byte $01, $69, $F0   ; 



off_02_AACC_57:
- D 1 - I - 0x004ADC 01:AACC: FF        .byte $FF   ; 
off_02_AAA8_53:
- D 1 - I - 0x004AB8 01:AAA8: 03        .byte $03   ; counter
- D 1 - I - 0x004AB9 01:AAA9: 00        .byte $00   ; spr_A
- D 1 - I - 0x004ABA 01:AAAA: FF        .byte $FF, $1F, $01   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004ABD 01:AAAD: FA        .byte $FA, $67, $F2   ; 
- D 1 - I - 0x004AC0 01:AAB0: 02        .byte $02, $69, $F2   ; 



off_02_AACF_58:
- D 1 - I - 0x004ADF 01:AACF: FF        .byte $FF   ; 
off_02_AAB3_54:
- D 1 - I - 0x004AC3 01:AAB3: 03        .byte $03   ; counter
- D 1 - I - 0x004AC4 01:AAB4: 00        .byte $00   ; spr_A
- D 1 - I - 0x004AC5 01:AAB5: 00        .byte $00, $21, $00   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004AC8 01:AAB8: FC        .byte $FC, $67, $F0   ; 
- D 1 - I - 0x004ACB 01:AABB: 04        .byte $04, $69, $F0   ; 



off_02_AAD2_59:
- D 1 - I - 0x004AE2 01:AAD2: FF        .byte $FF   ; 
off_02_AABE_55:
- D 1 - I - 0x004ACE 01:AABE: 03        .byte $03   ; counter
- D 1 - I - 0x004ACF 01:AABF: 00        .byte $00   ; spr_A
- D 1 - I - 0x004AD0 01:AAC0: 00        .byte $00, $1F, $01   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004AD3 01:AAC3: FC        .byte $FC, $67, $F2   ; 
- D 1 - I - 0x004AD6 01:AAC6: 04        .byte $04, $69, $F2   ; 



off_02_AAD5_5A:
- D 1 - I - 0x004AE5 01:AAD5: 04        .byte $04   ; counter
- D 1 - I - 0x004AE6 01:AAD6: 00        .byte $00   ; spr_A
- D 1 - I - 0x004AE7 01:AAD7: FB        .byte $FB, $23, $00   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004AEA 01:AADA: 03        .byte $03, $25, $00   ; 
- D 1 - I - 0x004AED 01:AADD: FA        .byte $FA, $6B, $F0   ; 
- D 1 - I - 0x004AF0 01:AAE0: 02        .byte $02, $6D, $F0   ; 



off_02_AAE3_5B:
- D 1 - I - 0x004AF3 01:AAE3: 81        .byte $81   ; counter
- D 1 - I - 0x004AF4 01:AAE4: 00        .byte $00   ; spr_A
- D 1 - I - 0x004AF5 01:AAE5: FB        .byte $FB, $27, $00   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x004AF8 01:AAE8: 81        .byte $81   ; 
- D 1 - I - 0x004AF9 01:AAE9: 40        .byte $40   ; 
- D 1 - I - 0x004AFA 01:AAEA: 03        .byte $03, $23, $00   ; 

- D 1 - I - 0x004AFD 01:AAED: 02        .byte $02   ; 
- D 1 - I - 0x004AFE 01:AAEE: 00        .byte $00   ; 
- D 1 - I - 0x004AFF 01:AAEF: FB        .byte $FB, $6B, $F2   ; 
- D 1 - I - 0x004B02 01:AAF2: 03        .byte $03, $6D, $F2   ; 



off_02_AAF5_5C:
- D 1 - I - 0x004B05 01:AAF5: 82        .byte $82   ; counter
- D 1 - I - 0x004B06 01:AAF6: 40        .byte $40   ; spr_A
- D 1 - I - 0x004B07 01:AAF7: 03        .byte $03, $23, $00   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004B0A 01:AAFA: FB        .byte $FB, $25, $00   ; 

- D 1 - I - 0x004B0D 01:AAFD: 02        .byte $02   ; 
- D 1 - I - 0x004B0E 01:AAFE: 00        .byte $00   ; 
- D 1 - I - 0x004B0F 01:AAFF: FC        .byte $FC, $6B, $F0   ; 
- D 1 - I - 0x004B12 01:AB02: 04        .byte $04, $6D, $F0   ; 



off_02_AB05_5D:
- D 1 - I - 0x004B15 01:AB05: 81        .byte $81   ; counter
- D 1 - I - 0x004B16 01:AB06: 40        .byte $40   ; spr_A
- D 1 - I - 0x004B17 01:AB07: 03        .byte $03, $27, $00   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x004B1A 01:AB0A: 03        .byte $03   ; 
- D 1 - I - 0x004B1B 01:AB0B: 00        .byte $00   ; 
- D 1 - I - 0x004B1C 01:AB0C: FB        .byte $FB, $23, $00   ; 
- D 1 - I - 0x004B1F 01:AB0F: FB        .byte $FB, $6B, $F2   ; 
- D 1 - I - 0x004B22 01:AB12: 03        .byte $03, $6D, $F2   ; 



off_02_AB15_5E:
- D 1 - I - 0x004B25 01:AB15: 04        .byte $04   ; counter
- D 1 - I - 0x004B26 01:AB16: 00        .byte $00   ; spr_A
- D 1 - I - 0x004B27 01:AB17: FB        .byte $FB, $29, $FF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004B2A 01:AB1A: 03        .byte $03, $2B, $FF   ; 
- D 1 - I - 0x004B2D 01:AB1D: FB        .byte $FB, $59, $EF   ; 
- D 1 - I - 0x004B30 01:AB20: 03        .byte $03, $5B, $EF   ; 



off_02_AB23_5F:
- D 1 - I - 0x004B33 01:AB23: 04        .byte $04   ; counter
- D 1 - I - 0x004B34 01:AB24: 00        .byte $00   ; spr_A
- D 1 - I - 0x004B35 01:AB25: FB        .byte $FB, $29, $FF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004B38 01:AB28: 03        .byte $03, $2B, $FF   ; 
- D 1 - I - 0x004B3B 01:AB2B: FA        .byte $FA, $59, $F1   ; 
- D 1 - I - 0x004B3E 01:AB2E: 02        .byte $02, $5B, $F1   ; 



off_02_AB53_62:
- - - - - - 0x004B63 01:AB53: FF        .byte $FF   ; 
off_02_AB31_60:
- - - - - - 0x004B41 01:AB31: 82        .byte $82   ; counter
- - - - - - 0x004B42 01:AB32: 40        .byte $40   ; spr_A
- - - - - - 0x004B43 01:AB33: FE        .byte $FE, $29, $FF   ; spr_X, spr_T, spr_Y
- - - - - - 0x004B46 01:AB36: F6        .byte $F6, $2B, $FF   ; 

- - - - - - 0x004B49 01:AB39: 02        .byte $02   ; 
- - - - - - 0x004B4A 01:AB3A: 00        .byte $00   ; 
- - - - - - 0x004B4B 01:AB3B: F4        .byte $F4, $5D, $EF   ; 
- - - - - - 0x004B4E 01:AB3E: FC        .byte $FC, $5F, $EF   ; 



off_02_AB56_63:
- - - - - - 0x004B66 01:AB56: FF        .byte $FF   ; 
off_02_AB41_61:
- - - - - - 0x004B51 01:AB41: 81        .byte $81   ; counter
- - - - - - 0x004B52 01:AB42: 40        .byte $40   ; spr_A
- - - - - - 0x004B53 01:AB43: F6        .byte $F6, $2B, $FF   ; spr_X, spr_T, spr_Y

- - - - - - 0x004B56 01:AB46: 82        .byte $82   ; 
- - - - - - 0x004B57 01:AB47: 00        .byte $00   ; 
- - - - - - 0x004B58 01:AB48: F5        .byte $F5, $5D, $F0   ; 
- - - - - - 0x004B5B 01:AB4B: FD        .byte $FD, $5F, $F0   ; 

- - - - - - 0x004B5E 01:AB4E: 01        .byte $01   ; 
- - - - - - 0x004B5F 01:AB4F: 40        .byte $40   ; 
- - - - - - 0x004B60 01:AB50: FE        .byte $FE, $29, $FF   ; 



off_02_AB81_66:
- D 1 - I - 0x004B91 01:AB81: FF        .byte $FF   ; 
off_02_AB59_64:
- D 1 - I - 0x004B69 01:AB59: 82        .byte $82   ; counter
- D 1 - I - 0x004B6A 01:AB5A: 40        .byte $40   ; spr_A
- D 1 - I - 0x004B6B 01:AB5B: FE        .byte $FE, $29, $FF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004B6E 01:AB5E: F6        .byte $F6, $2B, $FF   ; 

- D 1 - I - 0x004B71 01:AB61: 03        .byte $03   ; 
- D 1 - I - 0x004B72 01:AB62: 00        .byte $00   ; 
- D 1 - I - 0x004B73 01:AB63: EC        .byte $EC, $61, $F0   ; 
- D 1 - I - 0x004B76 01:AB66: F4        .byte $F4, $63, $F0   ; 
- D 1 - I - 0x004B79 01:AB69: FC        .byte $FC, $65, $F0   ; 



off_02_AB84_67:
- D 1 - I - 0x004B94 01:AB84: FF        .byte $FF   ; 
off_02_AB6C_65:
- D 1 - I - 0x004B7C 01:AB6C: 81        .byte $81   ; counter
- D 1 - I - 0x004B7D 01:AB6D: 40        .byte $40   ; spr_A
- D 1 - I - 0x004B7E 01:AB6E: F6        .byte $F6, $2B, $FF   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x004B81 01:AB71: 83        .byte $83   ; 
- D 1 - I - 0x004B82 01:AB72: 00        .byte $00   ; 
- D 1 - I - 0x004B83 01:AB73: EE        .byte $EE, $61, $F0   ; 
- D 1 - I - 0x004B86 01:AB76: F6        .byte $F6, $63, $F1   ; 
- D 1 - I - 0x004B89 01:AB79: FE        .byte $FE, $65, $F1   ; 

- D 1 - I - 0x004B8C 01:AB7C: 01        .byte $01   ; 
- D 1 - I - 0x004B8D 01:AB7D: 40        .byte $40   ; 
- D 1 - I - 0x004B8E 01:AB7E: FE        .byte $FE, $29, $FF   ; 



off_02_ABA3_6A:
- - - - - - 0x004BB3 01:ABA3: FF        .byte $FF   ; 
off_02_AB87_68:
- - - - - - 0x004B97 01:AB87: 04        .byte $04   ; counter
- - - - - - 0x004B98 01:AB88: 00        .byte $00   ; spr_A
- - - - - - 0x004B99 01:AB89: FA        .byte $FA, $2D, $FE   ; spr_X, spr_T, spr_Y
- - - - - - 0x004B9C 01:AB8C: 02        .byte $02, $2F, $FE   ; 
- - - - - - 0x004B9F 01:AB8F: FA        .byte $FA, $67, $EE   ; 
- - - - - - 0x004BA2 01:AB92: 02        .byte $02, $69, $EE   ; 



off_02_ABA6_6B:
- - - - - - 0x004BB6 01:ABA6: FF        .byte $FF   ; 
off_02_AB95_69:
- - - - - - 0x004BA5 01:AB95: 04        .byte $04   ; counter
- - - - - - 0x004BA6 01:AB96: 00        .byte $00   ; spr_A
- - - - - - 0x004BA7 01:AB97: FA        .byte $FA, $2D, $FE   ; spr_X, spr_T, spr_Y
- - - - - - 0x004BAA 01:AB9A: 02        .byte $02, $2F, $FE   ; 
- - - - - - 0x004BAD 01:AB9D: F9        .byte $F9, $67, $EF   ; 
- - - - - - 0x004BB0 01:ABA0: 01        .byte $01, $69, $EF   ; 



off_02_ABA9_6C:
- D 1 - I - 0x004BB9 01:ABA9: 04        .byte $04   ; counter
- D 1 - I - 0x004BBA 01:ABAA: 00        .byte $00   ; spr_A
- D 1 - I - 0x004BBB 01:ABAB: FA        .byte $FA, $2D, $FE   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004BBE 01:ABAE: 02        .byte $02, $2F, $FE   ; 
- D 1 - I - 0x004BC1 01:ABB1: FA        .byte $FA, $6B, $EE   ; 
- D 1 - I - 0x004BC4 01:ABB4: 02        .byte $02, $6D, $EE   ; 



off_02_ABB7_6D:
- D 1 - I - 0x004BC7 01:ABB7: 04        .byte $04   ; counter
- D 1 - I - 0x004BC8 01:ABB8: 00        .byte $00   ; spr_A
- D 1 - I - 0x004BC9 01:ABB9: FA        .byte $FA, $2D, $FE   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004BCC 01:ABBC: 02        .byte $02, $2F, $FE   ; 
- D 1 - I - 0x004BCF 01:ABBF: F9        .byte $F9, $6B, $EF   ; 
- D 1 - I - 0x004BD2 01:ABC2: 01        .byte $01, $6D, $EF   ; 



off_02_ABC5_6E:
- - - - - - 0x004BD5 01:ABC5: 81        .byte $81   ; counter
- - - - - - 0x004BD6 01:ABC6: 00        .byte $00   ; spr_A
- - - - - - 0x004BD7 01:ABC7: F9        .byte $F9, $31, $00   ; spr_X, spr_T, spr_Y

- - - - - - 0x004BDA 01:ABCA: 81        .byte $81   ; 
- - - - - - 0x004BDB 01:ABCB: 40        .byte $40   ; 
- - - - - - 0x004BDC 01:ABCC: 01        .byte $01, $31, $00   ; 

- - - - - - 0x004BDF 01:ABCF: 02        .byte $02   ; 
- - - - - - 0x004BE0 01:ABD0: 00        .byte $00   ; 
- - - - - - 0x004BE1 01:ABD1: F9        .byte $F9, $79, $F0   ; 
- - - - - - 0x004BE4 01:ABD4: 01        .byte $01, $7B, $F0   ; 



off_02_ABD7_6F:
- D 1 - I - 0x004BE7 01:ABD7: 81        .byte $81   ; counter
- D 1 - I - 0x004BE8 01:ABD8: 80        .byte $80   ; spr_A
- D 1 - I - 0x004BE9 01:ABD9: F9        .byte $F9, $31, $F1   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x004BEC 01:ABDC: 81        .byte $81   ; 
- D 1 - I - 0x004BED 01:ABDD: C0        .byte $C0   ; 
- D 1 - I - 0x004BEE 01:ABDE: 01        .byte $01, $31, $F1   ; 

- D 1 - I - 0x004BF1 01:ABE1: 02        .byte $02   ; 
- D 1 - I - 0x004BF2 01:ABE2: 80        .byte $80   ; 
- D 1 - I - 0x004BF3 01:ABE3: F9        .byte $F9, $79, $01   ; 
- D 1 - I - 0x004BF6 01:ABE6: 01        .byte $01, $7B, $01   ; 



off_02_ABE9_70:
- - - - - - 0x004BF9 01:ABE9: 04        .byte $04   ; counter
- - - - - - 0x004BFA 01:ABEA: 00        .byte $00   ; spr_A
- - - - - - 0x004BFB 01:ABEB: F9        .byte $F9, $33, $FF   ; spr_X, spr_T, spr_Y
- - - - - - 0x004BFE 01:ABEE: 01        .byte $01, $35, $FF   ; 
- - - - - - 0x004C01 01:ABF1: F9        .byte $F9, $7D, $EF   ; 
- - - - - - 0x004C04 01:ABF4: 01        .byte $01, $7F, $EF   ; 



off_02_ABF7_71:
- D 1 - I - 0x004C07 01:ABF7: 04        .byte $04   ; 
- D 1 - I - 0x004C08 01:ABF8: 80        .byte $80   ; 
- D 1 - I - 0x004C09 01:ABF9: F9        .byte $F9, $33, $F2   ; 
- D 1 - I - 0x004C0C 01:ABFC: 01        .byte $01, $35, $F2   ; 
- D 1 - I - 0x004C0F 01:ABFF: F9        .byte $F9, $7D, $02   ; 
- D 1 - I - 0x004C12 01:AC02: 01        .byte $01, $7F, $02   ; 



off_02_AC05_72:
- - - - - - 0x004C15 01:AC05: 81        .byte $81   ; counter
- - - - - - 0x004C16 01:AC06: 00        .byte $00   ; spr_A
- - - - - - 0x004C17 01:AC07: F9        .byte $F9, $31, $00   ; spr_X, spr_T, spr_Y

- - - - - - 0x004C1A 01:AC0A: 81        .byte $81   ; 
- - - - - - 0x004C1B 01:AC0B: 40        .byte $40   ; 
- - - - - - 0x004C1C 01:AC0C: 01        .byte $01, $31, $00   ; 

- - - - - - 0x004C1F 01:AC0F: 02        .byte $02   ; 
- - - - - - 0x004C20 01:AC10: 00        .byte $00   ; 
- - - - - - 0x004C21 01:AC11: F9        .byte $F9, $6B, $F0   ; 
- - - - - - 0x004C24 01:AC14: 01        .byte $01, $6D, $F0   ; 



off_02_AC17_73:
- - - - - - 0x004C27 01:AC17: 02        .byte $02   ; counter
- - - - - - 0x004C28 01:AC18: 00        .byte $00   ; spr_A
- - - - - - 0x004C29 01:AC19: F9        .byte $F9, $37, $FA   ; spr_X, spr_T, spr_Y
- - - - - - 0x004C2C 01:AC1C: 01        .byte $01, $39, $FA   ; 



off_02_AC1F_74:
- - - - - - 0x004C2F 01:AC1F: 81        .byte $81   ; counter
- - - - - - 0x004C30 01:AC20: 00        .byte $00   ; spr_A
- - - - - - 0x004C31 01:AC21: F9        .byte $F9, $C3, $00   ; spr_X, spr_T, spr_Y

- - - - - - 0x004C34 01:AC24: 01        .byte $01   ; 
- - - - - - 0x004C35 01:AC25: 40        .byte $40   ; 
- - - - - - 0x004C36 01:AC26: 01        .byte $01, $C3, $00   ; 



off_02_AC29_75:
- - - - - - 0x004C39 01:AC29: 81        .byte $81   ; counter
- - - - - - 0x004C3A 01:AC2A: 00        .byte $00   ; spr_A
- - - - - - 0x004C3B 01:AC2B: F9        .byte $F9, $C5, $00   ; spr_X, spr_T, spr_Y

- - - - - - 0x004C3E 01:AC2E: 01        .byte $01   ; 
- - - - - - 0x004C3F 01:AC2F: 40        .byte $40   ; 
- - - - - - 0x004C40 01:AC30: 01        .byte $01, $C5, $00   ; 



off_02_AC33_76:
- - - - - - 0x004C43 01:AC33: 81        .byte $81   ; counter
- - - - - - 0x004C44 01:AC34: 00        .byte $00   ; spr_A
- - - - - - 0x004C45 01:AC35: F6        .byte $F6, $C5, $00   ; spr_X, spr_T, spr_Y

- - - - - - 0x004C48 01:AC38: 01        .byte $01   ; 
- - - - - - 0x004C49 01:AC39: 40        .byte $40   ; 
- - - - - - 0x004C4A 01:AC3A: 04        .byte $04, $C5, $00   ; 



off_02_AC3D_77:
- - - - - - 0x004C4D 01:AC3D: 81        .byte $81   ; counter
- - - - - - 0x004C4E 01:AC3E: 00        .byte $00   ; spr_A
- - - - - - 0x004C4F 01:AC3F: F5        .byte $F5, $C9, $F8   ; spr_X, spr_T, spr_Y

- - - - - - 0x004C52 01:AC42: 81        .byte $81   ; 
- - - - - - 0x004C53 01:AC43: 80        .byte $80   ; 
- - - - - - 0x004C54 01:AC44: F5        .byte $F5, $C9, $08   ; 

- - - - - - 0x004C57 01:AC47: 81        .byte $81   ; 
- - - - - - 0x004C58 01:AC48: 40        .byte $40   ; 
- - - - - - 0x004C59 01:AC49: 05        .byte $05, $C9, $F8   ; 

- - - - - - 0x004C5C 01:AC4C: 01        .byte $01   ; 
- - - - - - 0x004C5D 01:AC4D: C0        .byte $C0   ; 
- - - - - - 0x004C5E 01:AC4E: 05        .byte $05, $C9, $08   ; 



off_02_AC51_78:
- D 1 - I - 0x004C61 01:AC51: 04        .byte $04   ; counter
- D 1 - I - 0x004C62 01:AC52: 00        .byte $00   ; spr_A
- D 1 - I - 0x004C63 01:AC53: 04        .byte $04, $03, $00   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004C66 01:AC56: FC        .byte $FC, $01, $00   ; 
- D 1 - I - 0x004C69 01:AC59: FD        .byte $FD, $6F, $F0   ; 
- D 1 - I - 0x004C6C 01:AC5C: 05        .byte $05, $71, $F0   ; 



off_02_AC5F_79:
- D 1 - I - 0x004C6F 01:AC5F: 03        .byte $03   ; counter
- D 1 - I - 0x004C70 01:AC60: 00        .byte $00   ; spr_A
- D 1 - I - 0x004C71 01:AC61: FF        .byte $FF, $05, $00   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004C74 01:AC64: FD        .byte $FD, $6F, $F2   ; 
- D 1 - I - 0x004C77 01:AC67: 05        .byte $05, $71, $F2   ; 



off_02_AC6A_7A:
- D 1 - I - 0x004C7A 01:AC6A: 82        .byte $82   ; counter
- D 1 - I - 0x004C7B 01:AC6B: 40        .byte $40   ; spr_A
- D 1 - I - 0x004C7C 01:AC6C: 04        .byte $04, $01, $00   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004C7F 01:AC6F: FC        .byte $FC, $03, $00   ; 

- D 1 - I - 0x004C82 01:AC72: 02        .byte $02   ; 
- D 1 - I - 0x004C83 01:AC73: 00        .byte $00   ; 
- D 1 - I - 0x004C84 01:AC74: 07        .byte $07, $71, $F0   ; 
- D 1 - I - 0x004C87 01:AC77: FF        .byte $FF, $77, $F0   ; 



off_02_AC7A_7B:
- D 1 - I - 0x004C8A 01:AC7A: 81        .byte $81   ; counter
- D 1 - I - 0x004C8B 01:AC7B: 40        .byte $40   ; spr_A
- D 1 - I - 0x004C8C 01:AC7C: 01        .byte $01, $05, $00   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x004C8F 01:AC7F: 02        .byte $02   ; 
- D 1 - I - 0x004C90 01:AC80: 00        .byte $00   ; 
- D 1 - I - 0x004C91 01:AC81: 07        .byte $07, $71, $F2   ; 
- D 1 - I - 0x004C94 01:AC84: FF        .byte $FF, $77, $F2   ; 



off_02_ACC1_80:
- D 1 - I - 0x004CD1 01:ACC1: FF        .byte $FF   ; 
off_02_AC87_7C:
- D 1 - I - 0x004C97 01:AC87: 82        .byte $82   ; counter
- D 1 - I - 0x004C98 01:AC88: 00        .byte $00   ; spr_A
- D 1 - I - 0x004C99 01:AC89: FA        .byte $FA, $07, $FF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004C9C 01:AC8C: 02        .byte $02, $09, $FF   ; 

- D 1 - I - 0x004C9F 01:AC8F: 02        .byte $02   ; 
- D 1 - I - 0x004CA0 01:AC90: 40        .byte $40   ; 
- D 1 - I - 0x004CA1 01:AC91: F7        .byte $F7, $71, $F0   ; 
- D 1 - I - 0x004CA4 01:AC94: FF        .byte $FF, $6F, $F0   ; 



off_02_ACC4_81:
- D 1 - I - 0x004CD4 01:ACC4: FF        .byte $FF   ; 
off_02_AC97_7D:
- D 1 - I - 0x004CA7 01:AC97: 81        .byte $81   ; counter
- D 1 - I - 0x004CA8 01:AC98: 00        .byte $00   ; spr_A
- D 1 - I - 0x004CA9 01:AC99: FD        .byte $FD, $0B, $00   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x004CAC 01:AC9C: 02        .byte $02   ; 
- D 1 - I - 0x004CAD 01:AC9D: 40        .byte $40   ; 
- D 1 - I - 0x004CAE 01:AC9E: F6        .byte $F6, $71, $F3   ; 
- D 1 - I - 0x004CB1 01:ACA1: FE        .byte $FE, $6F, $F3   ; 



off_02_ACC7_82:
- - - - - - 0x004CD7 01:ACC7: FF        .byte $FF   ; 
off_02_ACA4_7E:
- D 1 - I - 0x004CB4 01:ACA4: 82        .byte $82   ; counter
- D 1 - I - 0x004CB5 01:ACA5: 00        .byte $00   ; spr_A
- D 1 - I - 0x004CB6 01:ACA6: F8        .byte $F8, $0D, $FF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004CB9 01:ACA9: 00        .byte $00, $0F, $FF   ; 

- D 1 - I - 0x004CBC 01:ACAC: 02        .byte $02   ; 
- D 1 - I - 0x004CBD 01:ACAD: 40        .byte $40   ; 
- D 1 - I - 0x004CBE 01:ACAE: FB        .byte $FB, $77, $EF   ; 
- D 1 - I - 0x004CC1 01:ACB1: F3        .byte $F3, $71, $EF   ; 



off_02_ACCA_83:
- - - - - - 0x004CDA 01:ACCA: FF        .byte $FF   ; 
off_02_ACB4_7F:
- - - - - - 0x004CC4 01:ACB4: 81        .byte $81   ; counter
- - - - - - 0x004CC5 01:ACB5: 00        .byte $00   ; spr_A
- - - - - - 0x004CC6 01:ACB6: FB        .byte $FB, $0B, $00   ; spr_X, spr_T, spr_Y

- - - - - - 0x004CC9 01:ACB9: 02        .byte $02   ; 
- - - - - - 0x004CCA 01:ACBA: 40        .byte $40   ; 
- - - - - - 0x004CCB 01:ACBB: FD        .byte $FD, $77, $F3   ; 
- - - - - - 0x004CCE 01:ACBE: F5        .byte $F5, $71, $F3   ; 



off_02_AD07_88:
- D 1 - I - 0x004D17 01:AD07: FF        .byte $FF   ; 
off_02_ACCD_84:
- D 1 - I - 0x004CDD 01:ACCD: 82        .byte $82   ; counter
- D 1 - I - 0x004CDE 01:ACCE: 00        .byte $00   ; spr_A
- D 1 - I - 0x004CDF 01:ACCF: F6        .byte $F6, $11, $00   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004CE2 01:ACD2: FE        .byte $FE, $13, $00   ; 

- D 1 - I - 0x004CE5 01:ACD5: 02        .byte $02   ; 
- D 1 - I - 0x004CE6 01:ACD6: 40        .byte $40   ; 
- D 1 - I - 0x004CE7 01:ACD7: FD        .byte $FD, $6F, $F0   ; 
- D 1 - I - 0x004CEA 01:ACDA: F5        .byte $F5, $71, $F0   ; 



off_02_AD0A_89:
- D 1 - I - 0x004D1A 01:AD0A: FF        .byte $FF   ; 
off_02_ACDD_85:
- D 1 - I - 0x004CED 01:ACDD: 81        .byte $81   ; counter
- D 1 - I - 0x004CEE 01:ACDE: 00        .byte $00   ; spr_A
- D 1 - I - 0x004CEF 01:ACDF: FC        .byte $FC, $15, $00   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x004CF2 01:ACE2: 02        .byte $02   ; 
- D 1 - I - 0x004CF3 01:ACE3: 40        .byte $40   ; 
- D 1 - I - 0x004CF4 01:ACE4: FE        .byte $FE, $6F, $F1   ; 
- D 1 - I - 0x004CF7 01:ACE7: F6        .byte $F6, $71, $F1   ; 



off_02_AD0D_8A:
- D 1 - I - 0x004D1D 01:AD0D: FF        .byte $FF   ; 
off_02_ACEA_86:
- D 1 - I - 0x004CFA 01:ACEA: 82        .byte $82   ; counter
- D 1 - I - 0x004CFB 01:ACEB: 00        .byte $00   ; spr_A
- D 1 - I - 0x004CFC 01:ACEC: F6        .byte $F6, $17, $00   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004CFF 01:ACEF: FE        .byte $FE, $19, $00   ; 

- D 1 - I - 0x004D02 01:ACF2: 02        .byte $02   ; 
- D 1 - I - 0x004D03 01:ACF3: 40        .byte $40   ; 
- D 1 - I - 0x004D04 01:ACF4: FC        .byte $FC, $6F, $F0   ; 
- D 1 - I - 0x004D07 01:ACF7: F4        .byte $F4, $71, $F0   ; 



off_02_AD10_8B:
- D 1 - I - 0x004D20 01:AD10: FF        .byte $FF   ; 
off_02_ACFA_87:
- D 1 - I - 0x004D0A 01:ACFA: 81        .byte $81   ; counter
- D 1 - I - 0x004D0B 01:ACFB: 00        .byte $00   ; spr_A
- D 1 - I - 0x004D0C 01:ACFC: FA        .byte $FA, $15, $00   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x004D0F 01:ACFF: 02        .byte $02   ; 
- D 1 - I - 0x004D10 01:AD00: 40        .byte $40   ; 
- D 1 - I - 0x004D11 01:AD01: FE        .byte $FE, $6F, $F1   ; 
- D 1 - I - 0x004D14 01:AD04: F6        .byte $F6, $71, $F1   ; 



off_02_AD4A_90:
- D 1 - I - 0x004D5A 01:AD4A: FF        .byte $FF   ; 
off_02_AD13_8C:
- D 1 - I - 0x004D23 01:AD13: 82        .byte $82   ; counter
- D 1 - I - 0x004D24 01:AD14: 00        .byte $00   ; spr_A
- D 1 - I - 0x004D25 01:AD15: FB        .byte $FB, $1B, $00   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004D28 01:AD18: 03        .byte $03, $1D, $00   ; 

- D 1 - I - 0x004D2B 01:AD1B: 02        .byte $02   ; 
- D 1 - I - 0x004D2C 01:AD1C: 40        .byte $40   ; 
- D 1 - I - 0x004D2D 01:AD1D: 00        .byte $00, $6F, $F0   ; 
- D 1 - I - 0x004D30 01:AD20: F8        .byte $F8, $71, $F0   ; 



off_02_AD4D_91:
- D 1 - I - 0x004D5D 01:AD4D: FF        .byte $FF   ; 
off_02_AD23_8D:
- D 1 - I - 0x004D33 01:AD23: 81        .byte $81   ; counter
- D 1 - I - 0x004D34 01:AD24: 00        .byte $00   ; spr_A
- D 1 - I - 0x004D35 01:AD25: FF        .byte $FF, $1F, $01   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x004D38 01:AD28: 02        .byte $02   ; 
- D 1 - I - 0x004D39 01:AD29: 40        .byte $40   ; 
- D 1 - I - 0x004D3A 01:AD2A: 01        .byte $01, $6F, $F2   ; 
- D 1 - I - 0x004D3D 01:AD2D: F9        .byte $F9, $71, $F2   ; 



off_02_AD50_92:
- D 1 - I - 0x004D60 01:AD50: FF        .byte $FF   ; 
off_02_AD30_8E:
- D 1 - I - 0x004D40 01:AD30: 81        .byte $81   ; counter
- D 1 - I - 0x004D41 01:AD31: 00        .byte $00   ; spr_A
- D 1 - I - 0x004D42 01:AD32: 00        .byte $00, $21, $00   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x004D45 01:AD35: 02        .byte $02   ; 
- D 1 - I - 0x004D46 01:AD36: 40        .byte $40   ; 
- D 1 - I - 0x004D47 01:AD37: 02        .byte $02, $6F, $F1   ; 
- D 1 - I - 0x004D4A 01:AD3A: FA        .byte $FA, $71, $F1   ; 



off_02_AD53_93:
- D 1 - I - 0x004D63 01:AD53: FF        .byte $FF   ; 
off_02_AD3D_8F:
- D 1 - I - 0x004D4D 01:AD3D: 81        .byte $81   ; counter
- D 1 - I - 0x004D4E 01:AD3E: 00        .byte $00   ; spr_A
- D 1 - I - 0x004D4F 01:AD3F: 00        .byte $00, $1F, $01   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x004D52 01:AD42: 02        .byte $02   ; 
- D 1 - I - 0x004D53 01:AD43: 40        .byte $40   ; 
- D 1 - I - 0x004D54 01:AD44: 02        .byte $02, $6F, $F2   ; 
- D 1 - I - 0x004D57 01:AD47: FA        .byte $FA, $71, $F2   ; 



off_02_AD56_94:
- D 1 - I - 0x004D66 01:AD56: 04        .byte $04   ; counter
- D 1 - I - 0x004D67 01:AD57: 00        .byte $00   ; spr_A
- D 1 - I - 0x004D68 01:AD58: FB        .byte $FB, $23, $00   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004D6B 01:AD5B: 03        .byte $03, $25, $00   ; 
- D 1 - I - 0x004D6E 01:AD5E: FA        .byte $FA, $73, $F0   ; 
- D 1 - I - 0x004D71 01:AD61: 02        .byte $02, $75, $F0   ; 



off_02_AD64_95:
- D 1 - I - 0x004D74 01:AD64: 81        .byte $81   ; counter
- D 1 - I - 0x004D75 01:AD65: 00        .byte $00   ; spr_A
- D 1 - I - 0x004D76 01:AD66: FB        .byte $FB, $27, $00   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x004D79 01:AD69: 81        .byte $81   ; 
- D 1 - I - 0x004D7A 01:AD6A: 40        .byte $40   ; 
- D 1 - I - 0x004D7B 01:AD6B: 03        .byte $03, $23, $00   ; 

- D 1 - I - 0x004D7E 01:AD6E: 02        .byte $02   ; 
- D 1 - I - 0x004D7F 01:AD6F: 00        .byte $00   ; 
- D 1 - I - 0x004D80 01:AD70: FA        .byte $FA, $73, $F2   ; 
- D 1 - I - 0x004D83 01:AD73: 02        .byte $02, $75, $F2   ; 



off_02_AD76_96:
- D 1 - I - 0x004D86 01:AD76: 82        .byte $82   ; counter
- D 1 - I - 0x004D87 01:AD77: 40        .byte $40   ; spr_A
- D 1 - I - 0x004D88 01:AD78: 03        .byte $03, $23, $00   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004D8B 01:AD7B: FB        .byte $FB, $25, $00   ; 

- D 1 - I - 0x004D8E 01:AD7E: 02        .byte $02   ; 
- D 1 - I - 0x004D8F 01:AD7F: 00        .byte $00   ; 
- D 1 - I - 0x004D90 01:AD80: FC        .byte $FC, $73, $F0   ; 
- D 1 - I - 0x004D93 01:AD83: 04        .byte $04, $75, $F0   ; 



off_02_AD86_97:
- D 1 - I - 0x004D96 01:AD86: 81        .byte $81   ; counter
- D 1 - I - 0x004D97 01:AD87: 40        .byte $40   ; spr_A
- D 1 - I - 0x004D98 01:AD88: 03        .byte $03, $27, $00   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004D9B 01:AD8B: 03        .byte $03   ; 
- D 1 - I - 0x004D9C 01:AD8C: 00        .byte $00   ; 
- D 1 - I - 0x004D9D 01:AD8D: FB        .byte $FB, $23, $00   ; 
- D 1 - I - 0x004DA0 01:AD90: FC        .byte $FC, $73, $F2   ; 
- D 1 - I - 0x004DA3 01:AD93: 04        .byte $04, $75, $F2   ; 



off_02_ADA4_99:
- D 1 - I - 0x004DB4 01:ADA4: FF        .byte $FF   ; 
off_02_AD96_98:
- D 1 - I - 0x004DA6 01:AD96: 04        .byte $04   ; counter
- D 1 - I - 0x004DA7 01:AD97: 40        .byte $40   ; spr_A
- D 1 - I - 0x004DA8 01:AD98: FE        .byte $FE, $29, $FF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004DAB 01:AD9B: F6        .byte $F6, $2B, $FF   ; 
- D 1 - I - 0x004DAE 01:AD9E: FE        .byte $FE, $77, $F0   ; 
- D 1 - I - 0x004DB1 01:ADA1: F6        .byte $F6, $71, $F0   ; 



off_02_ADB7_9B:
- - - - - - 0x004DC7 01:ADB7: FF        .byte $FF   ; 
off_02_ADA7_9A:
- D 1 - I - 0x004DB7 01:ADA7: 82        .byte $82   ; counter
- D 1 - I - 0x004DB8 01:ADA8: 00        .byte $00   ; spr_A
- D 1 - I - 0x004DB9 01:ADA9: FA        .byte $FA, $2D, $FE   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004DBC 01:ADAC: 02        .byte $02, $2F, $FE   ; 

- D 1 - I - 0x004DBF 01:ADAF: 02        .byte $02   ; 
- D 1 - I - 0x004DC0 01:ADB0: 40        .byte $40   ; 
- D 1 - I - 0x004DC1 01:ADB1: 00        .byte $00, $77, $EE   ; 
- D 1 - I - 0x004DC4 01:ADB4: F8        .byte $F8, $71, $EE   ; 



off_02_ADC8_9D:
- D 1 - I - 0x004DD8 01:ADC8: FF        .byte $FF   ; 
off_02_ADBA_9C:
- D 1 - I - 0x004DCA 01:ADBA: 04        .byte $04   ; counter
- D 1 - I - 0x004DCB 01:ADBB: 40        .byte $40   ; spr_A
- D 1 - I - 0x004DCC 01:ADBC: FE        .byte $FE, $29, $FF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004DCF 01:ADBF: F6        .byte $F6, $2B, $FF   ; 
- D 1 - I - 0x004DD2 01:ADC2: FE        .byte $FE, $6F, $F2   ; 
- D 1 - I - 0x004DD5 01:ADC5: F6        .byte $F6, $71, $F2   ; 



off_02_ADDB_9F:
- D 1 - I - 0x004DEB 01:ADDB: FF        .byte $FF   ; 
off_02_ADCB_9E:
- D 1 - I - 0x004DDB 01:ADCB: 82        .byte $82   ; counter
- D 1 - I - 0x004DDC 01:ADCC: 00        .byte $00   ; spr_A
- D 1 - I - 0x004DDD 01:ADCD: FA        .byte $FA, $2D, $FE   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004DE0 01:ADD0: 02        .byte $02, $2F, $FE   ; 

- D 1 - I - 0x004DE3 01:ADD3: 02        .byte $02   ; 
- D 1 - I - 0x004DE4 01:ADD4: 40        .byte $40   ; 
- D 1 - I - 0x004DE5 01:ADD5: 00        .byte $00, $6F, $F0   ; 
- D 1 - I - 0x004DE8 01:ADD8: F8        .byte $F8, $71, $F0   ; 



_off032_ADDE_0B:
- - - - - - 0x004DEE 01:ADDE: 24 AE     .word off_0B_AE24_00
- D 1 - I - 0x004DF0 01:ADE0: 9E AE     .word off_0B_AE9E_01
- D 1 - I - 0x004DF2 01:ADE2: C5 AE     .word off_0B_AEC5_02
- D 1 - I - 0x004DF4 01:ADE4: E5 AE     .word off_0B_AEE5_03
- D 1 - I - 0x004DF6 01:ADE6: 05 AF     .word off_0B_AF05_04
- D 1 - I - 0x004DF8 01:ADE8: 25 AF     .word off_0B_AF25_05
- D 1 - I - 0x004DFA 01:ADEA: 4F AF     .word off_0B_AF4F_06
- D 1 - I - 0x004DFC 01:ADEC: 77 AF     .word off_0B_AF77_07
- D 1 - I - 0x004DFE 01:ADEE: A1 AF     .word off_0B_AFA1_08
- D 1 - I - 0x004E00 01:ADF0: D0 AF     .word off_0B_AFD0_09
- D 1 - I - 0x004E02 01:ADF2: 02 B0     .word off_0B_B002_0A
- D 1 - I - 0x004E04 01:ADF4: 40 B0     .word off_0B_B040_0B
- D 1 - I - 0x004E06 01:ADF6: 72 B0     .word off_0B_B072_0C
- D 1 - I - 0x004E08 01:ADF8: 24 AE     .word off_0B_AE24_0D
- D 1 - I - 0x004E0A 01:ADFA: 42 AE     .word off_0B_AE42_0E
- D 1 - I - 0x004E0C 01:ADFC: 60 AE     .word off_0B_AE60_0F
- D 1 - I - 0x004E0E 01:ADFE: 7E AE     .word off_0B_AE7E_10
- D 1 - I - 0x004E10 01:AE00: 94 B0     .word off_0B_B094_11
- D 1 - I - 0x004E12 01:AE02: BA B0     .word off_0B_B0BA_12
- D 1 - I - 0x004E14 01:AE04: DA B0     .word off_0B_B0DA_13
- D 1 - I - 0x004E16 01:AE06: 02 B1     .word off_0B_B102_14
- D 1 - I - 0x004E18 01:AE08: 27 B1     .word off_0B_B127_15
- - - - - - 0x004E1A 01:AE0A: 2A B1     .word off_0B_B12A_16
- - - - - - 0x004E1C 01:AE0C: 2D B1     .word off_0B_B12D_17
- - - - - - 0x004E1E 01:AE0E: 30 B1     .word off_0B_B130_18
- D 1 - I - 0x004E20 01:AE10: 33 B1     .word off_0B_B133_19
- D 1 - I - 0x004E22 01:AE12: 5B B1     .word off_0B_B15B_1A
- D 1 - I - 0x004E24 01:AE14: 7D B1     .word off_0B_B17D_1B
- D 1 - I - 0x004E26 01:AE16: 9F B1     .word off_0B_B19F_1C
- D 1 - I - 0x004E28 01:AE18: C8 B1     .word off_0B_B1C8_1D
- D 1 - I - 0x004E2A 01:AE1A: EC B1     .word off_0B_B1EC_1E
- D 1 - I - 0x004E2C 01:AE1C: EF B1     .word off_0B_B1EF_1F
- D 1 - I - 0x004E2E 01:AE1E: F2 B1     .word off_0B_B1F2_20
- D 1 - I - 0x004E30 01:AE20: F5 B1     .word off_0B_B1F5_21
- D 1 - I - 0x004E32 01:AE22: F8 B1     .word off_0B_B1F8_22



off_0B_AE24_00:
off_0B_AE24_0D:
- D 1 - I - 0x004E34 01:AE24: 82        .byte $82   ; counter
- D 1 - I - 0x004E35 01:AE25: 01        .byte $01   ; spr_A
- D 1 - I - 0x004E36 01:AE26: F9        .byte $F9, $91, $E9   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004E39 01:AE29: 01        .byte $01, $93, $E9   ; 

- D 1 - I - 0x004E3C 01:AE2C: 83        .byte $83   ; 
- D 1 - I - 0x004E3D 01:AE2D: 02        .byte $02   ; 
- D 1 - I - 0x004E3E 01:AE2E: F9        .byte $F9, $A7, $F9   ; 
- D 1 - I - 0x004E41 01:AE31: 01        .byte $01, $9B, $F9   ; 
- D 1 - I - 0x004E44 01:AE34: 01        .byte $01, $BF, $09   ; 

- D 1 - I - 0x004E47 01:AE37: 03        .byte $03   ; 
- D 1 - I - 0x004E48 01:AE38: 00        .byte $00   ; 
- D 1 - I - 0x004E49 01:AE39: F9        .byte $F9, $BD, $09   ; 
- D 1 - I - 0x004E4C 01:AE3C: F1        .byte $F1, $BB, $09   ; 
- D 1 - I - 0x004E4F 01:AE3F: F1        .byte $F1, $B9, $F9   ; 



off_0B_AE42_0E:
- D 1 - I - 0x004E52 01:AE42: 82        .byte $82   ; counter
- D 1 - I - 0x004E53 01:AE43: 41        .byte $41   ; spr_A
- D 1 - I - 0x004E54 01:AE44: FC        .byte $FC, $91, $E9   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004E57 01:AE47: F4        .byte $F4, $93, $E9   ; 

- D 1 - I - 0x004E5A 01:AE4A: 83        .byte $83   ; 
- D 1 - I - 0x004E5B 01:AE4B: 42        .byte $42   ; 
- D 1 - I - 0x004E5C 01:AE4C: FC        .byte $FC, $A7, $F9   ; 
- D 1 - I - 0x004E5F 01:AE4F: F4        .byte $F4, $9B, $F9   ; 
- D 1 - I - 0x004E62 01:AE52: F4        .byte $F4, $BF, $09   ; 

- D 1 - I - 0x004E65 01:AE55: 03        .byte $03   ; 
- D 1 - I - 0x004E66 01:AE56: 40        .byte $40   ; 
- D 1 - I - 0x004E67 01:AE57: FC        .byte $FC, $BD, $09   ; 
- D 1 - I - 0x004E6A 01:AE5A: 04        .byte $04, $BB, $09   ; 
- D 1 - I - 0x004E6D 01:AE5D: 04        .byte $04, $B9, $F9   ; 



off_0B_AE60_0F:
- D 1 - I - 0x004E70 01:AE60: 82        .byte $82   ; counter
- D 1 - I - 0x004E71 01:AE61: C1        .byte $C1   ; spr_A
- D 1 - I - 0x004E72 01:AE62: FE        .byte $FE, $91, $0C   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004E75 01:AE65: F6        .byte $F6, $93, $0C   ; 

- D 1 - I - 0x004E78 01:AE68: 83        .byte $83   ; 
- D 1 - I - 0x004E79 01:AE69: C2        .byte $C2   ; 
- D 1 - I - 0x004E7A 01:AE6A: FE        .byte $FE, $99, $FC   ; 
- D 1 - I - 0x004E7D 01:AE6D: F6        .byte $F6, $9B, $FC   ; 
- D 1 - I - 0x004E80 01:AE70: F6        .byte $F6, $BF, $EC   ; 

- D 1 - I - 0x004E83 01:AE73: 03        .byte $03   ; 
- D 1 - I - 0x004E84 01:AE74: C0        .byte $C0   ; 
- D 1 - I - 0x004E85 01:AE75: FE        .byte $FE, $BD, $EC   ; 
- D 1 - I - 0x004E88 01:AE78: 06        .byte $06, $BB, $EC   ; 
- D 1 - I - 0x004E8B 01:AE7B: 06        .byte $06, $B9, $FC   ; 



off_0B_AE7E_10:
- D 1 - I - 0x004E8E 01:AE7E: 82        .byte $82   ; counter
- D 1 - I - 0x004E8F 01:AE7F: 81        .byte $81   ; spr_A
- D 1 - I - 0x004E90 01:AE80: F9        .byte $F9, $91, $09   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004E93 01:AE83: 01        .byte $01, $93, $09   ; 

- D 1 - I - 0x004E96 01:AE86: 82        .byte $82   ; 
- D 1 - I - 0x004E97 01:AE87: 82        .byte $82   ; 
- D 1 - I - 0x004E98 01:AE88: F9        .byte $F9, $99, $F9   ; 
- D 1 - I - 0x004E9B 01:AE8B: 01        .byte $01, $9B, $F9   ; 

- D 1 - I - 0x004E9E 01:AE8E: 83        .byte $83   ; 
- D 1 - I - 0x004E9F 01:AE8F: 80        .byte $80   ; 
- D 1 - I - 0x004EA0 01:AE90: F1        .byte $F1, $B9, $F9   ; 
- D 1 - I - 0x004EA3 01:AE93: F1        .byte $F1, $BB, $E9   ; 
- D 1 - I - 0x004EA6 01:AE96: F9        .byte $F9, $BD, $E9   ; 

- D 1 - I - 0x004EA9 01:AE99: 01        .byte $01   ; 
- D 1 - I - 0x004EAA 01:AE9A: 82        .byte $82   ; 
- D 1 - I - 0x004EAB 01:AE9B: 01        .byte $01, $BF, $E9   ; 



off_0B_AE9E_01:
- D 1 - I - 0x004EAE 01:AE9E: 82        .byte $82   ; counter
- D 1 - I - 0x004EAF 01:AE9F: 01        .byte $01   ; spr_A
- D 1 - I - 0x004EB0 01:AEA0: FB        .byte $FB, $91, $E0   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004EB3 01:AEA3: 03        .byte $03, $93, $E0   ; 

- D 1 - I - 0x004EB6 01:AEA6: 81        .byte $81   ; 
- D 1 - I - 0x004EB7 01:AEA7: 02        .byte $02   ; 
- D 1 - I - 0x004EB8 01:AEA8: 03        .byte $03, $9B, $F0   ; 

- D 1 - I - 0x004EBB 01:AEAB: 83        .byte $83   ; 
- D 1 - I - 0x004EBC 01:AEAC: 00        .byte $00   ; 
- D 1 - I - 0x004EBD 01:AEAD: F9        .byte $F9, $9D, $00   ; 
- D 1 - I - 0x004EC0 01:AEB0: 01        .byte $01, $9F, $00   ; 
- D 1 - I - 0x004EC3 01:AEB3: 01        .byte $01, $A1, $10   ; 

- D 1 - I - 0x004EC6 01:AEB6: 81        .byte $81   ; 
- D 1 - I - 0x004EC7 01:AEB7: 02        .byte $02   ; 
- D 1 - I - 0x004EC8 01:AEB8: FB        .byte $FB, $A7, $F0   ; 

- D 1 - I - 0x004ECB 01:AEBB: 81        .byte $81   ; 
- D 1 - I - 0x004ECC 01:AEBC: 01        .byte $01   ; 
- D 1 - I - 0x004ECD 01:AEBD: F3        .byte $F3, $A5, $F0   ; 

- D 1 - I - 0x004ED0 01:AEC0: 01        .byte $01   ; 
- D 1 - I - 0x004ED1 01:AEC1: 00        .byte $00   ; 
- D 1 - I - 0x004ED2 01:AEC2: F3        .byte $F3, $A3, $E0   ; 



off_0B_AEC5_02:
- D 1 - I - 0x004ED5 01:AEC5: 83        .byte $83   ; counter
- D 1 - I - 0x004ED6 01:AEC6: 00        .byte $00   ; spr_A
- D 1 - I - 0x004ED7 01:AEC7: F9        .byte $F9, $81, $00   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004EDA 01:AECA: 01        .byte $01, $83, $00   ; 
- D 1 - I - 0x004EDD 01:AECD: 01        .byte $01, $85, $10   ; 

- D 1 - I - 0x004EE0 01:AED0: 81        .byte $81   ; 
- D 1 - I - 0x004EE1 01:AED1: 01        .byte $01   ; 
- D 1 - I - 0x004EE2 01:AED2: F1        .byte $F1, $87, $F0   ; 

- D 1 - I - 0x004EE5 01:AED5: 81        .byte $81   ; 
- D 1 - I - 0x004EE6 01:AED6: 00        .byte $00   ; 
- D 1 - I - 0x004EE7 01:AED7: F1        .byte $F1, $8F, $00   ; 

- D 1 - I - 0x004EEA 01:AEDA: 03        .byte $03   ; 
- D 1 - I - 0x004EEB 01:AEDB: 02        .byte $02   ; 
- D 1 - I - 0x004EEC 01:AEDC: F9        .byte $F9, $91, $00   ; 
- D 1 - I - 0x004EEF 01:AEDF: F9        .byte $F9, $8B, $F0   ; 
- D 1 - I - 0x004EF2 01:AEE2: 01        .byte $01, $8D, $F0   ; 



off_0B_AEE5_03:
- D 1 - I - 0x004EF5 01:AEE5: 83        .byte $83   ; counter
- D 1 - I - 0x004EF6 01:AEE6: 00        .byte $00   ; spr_A
- D 1 - I - 0x004EF7 01:AEE7: 00        .byte $00, $99, $F9   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004EFA 01:AEEA: F8        .byte $F8, $9F, $09   ; 
- D 1 - I - 0x004EFD 01:AEED: 00        .byte $00, $A1, $09   ; 

- D 1 - I - 0x004F00 01:AEF0: 83        .byte $83   ; 
- D 1 - I - 0x004F01 01:AEF1: 02        .byte $02   ; 
- D 1 - I - 0x004F02 01:AEF2: F8        .byte $F8, $97, $F9   ; 
- D 1 - I - 0x004F05 01:AEF5: F0        .byte $F0, $95, $F9   ; 
- D 1 - I - 0x004F08 01:AEF8: F0        .byte $F0, $9D, $09   ; 

- D 1 - I - 0x004F0B 01:AEFB: 81        .byte $81   ; 
- D 1 - I - 0x004F0C 01:AEFC: 01        .byte $01   ; 
- D 1 - I - 0x004F0D 01:AEFD: E8        .byte $E8, $93, $F9   ; 

- D 1 - I - 0x004F10 01:AF00: 01        .byte $01   ; 
- D 1 - I - 0x004F11 01:AF01: 00        .byte $00   ; 
- D 1 - I - 0x004F12 01:AF02: E8        .byte $E8, $9B, $09   ; 



off_0B_AF05_04:
- D 1 - I - 0x004F15 01:AF05: 83        .byte $83   ; counter
- D 1 - I - 0x004F16 01:AF06: 00        .byte $00   ; spr_A
- D 1 - I - 0x004F17 01:AF07: 00        .byte $00, $99, $F9   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004F1A 01:AF0A: F8        .byte $F8, $9F, $09   ; 
- D 1 - I - 0x004F1D 01:AF0D: 00        .byte $00, $A1, $09   ; 

- D 1 - I - 0x004F20 01:AF10: 83        .byte $83   ; 
- D 1 - I - 0x004F21 01:AF11: 02        .byte $02   ; 
- D 1 - I - 0x004F22 01:AF12: F8        .byte $F8, $97, $F9   ; 
- D 1 - I - 0x004F25 01:AF15: F0        .byte $F0, $95, $F9   ; 
- D 1 - I - 0x004F28 01:AF18: F0        .byte $F0, $9D, $09   ; 

- D 1 - I - 0x004F2B 01:AF1B: 81        .byte $81   ; 
- D 1 - I - 0x004F2C 01:AF1C: 01        .byte $01   ; 
- D 1 - I - 0x004F2D 01:AF1D: E8        .byte $E8, $87, $F9   ; 

- D 1 - I - 0x004F30 01:AF20: 01        .byte $01   ; 
- D 1 - I - 0x004F31 01:AF21: 00        .byte $00   ; 
- D 1 - I - 0x004F32 01:AF22: E8        .byte $E8, $89, $09   ; 



off_0B_AF25_05:
- D 1 - I - 0x004F35 01:AF25: 83        .byte $83   ; counter
- D 1 - I - 0x004F36 01:AF26: 00        .byte $00   ; spr_A
- D 1 - I - 0x004F37 01:AF27: 00        .byte $00, $99, $F9   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004F3A 01:AF2A: F8        .byte $F8, $9F, $09   ; 
- D 1 - I - 0x004F3D 01:AF2D: 00        .byte $00, $A1, $09   ; 

- D 1 - I - 0x004F40 01:AF30: 83        .byte $83   ; 
- D 1 - I - 0x004F41 01:AF31: 02        .byte $02   ; 
- D 1 - I - 0x004F42 01:AF32: F8        .byte $F8, $97, $F9   ; 
- D 1 - I - 0x004F45 01:AF35: F0        .byte $F0, $95, $F9   ; 
- D 1 - I - 0x004F48 01:AF38: F0        .byte $F0, $9D, $09   ; 

- D 1 - I - 0x004F4B 01:AF3B: 81        .byte $81   ; 
- D 1 - I - 0x004F4C 01:AF3C: 03        .byte $03   ; 
- D 1 - I - 0x004F4D 01:AF3D: E1        .byte $E1, $C1, $F8   ; 

- D 1 - I - 0x004F50 01:AF40: 81        .byte $81   ; 
- D 1 - I - 0x004F51 01:AF41: 43        .byte $43   ; 
- D 1 - I - 0x004F52 01:AF42: E9        .byte $E9, $C1, $F8   ; 

- D 1 - I - 0x004F55 01:AF45: 81        .byte $81   ; 
- D 1 - I - 0x004F56 01:AF46: 01        .byte $01   ; 
- D 1 - I - 0x004F57 01:AF47: E8        .byte $E8, $93, $F9   ; 

- D 1 - I - 0x004F5A 01:AF4A: 01        .byte $01   ; 
- D 1 - I - 0x004F5B 01:AF4B: 00        .byte $00   ; 
- D 1 - I - 0x004F5C 01:AF4C: E8        .byte $E8, $9B, $09   ; 



off_0B_AF4F_06:
- D 1 - I - 0x004F5F 01:AF4F: 83        .byte $83   ; counter
- D 1 - I - 0x004F60 01:AF50: 00        .byte $00   ; spr_A
- D 1 - I - 0x004F61 01:AF51: 00        .byte $00, $99, $F9   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004F64 01:AF54: F8        .byte $F8, $9F, $09   ; 
- D 1 - I - 0x004F67 01:AF57: 00        .byte $00, $A1, $09   ; 

- D 1 - I - 0x004F6A 01:AF5A: 83        .byte $83   ; 
- D 1 - I - 0x004F6B 01:AF5B: 02        .byte $02   ; 
- D 1 - I - 0x004F6C 01:AF5C: F8        .byte $F8, $97, $F9   ; 
- D 1 - I - 0x004F6F 01:AF5F: F0        .byte $F0, $95, $F9   ; 
- D 1 - I - 0x004F72 01:AF62: F0        .byte $F0, $9D, $09   ; 

- D 1 - I - 0x004F75 01:AF65: 81        .byte $81   ; 
- D 1 - I - 0x004F76 01:AF66: 01        .byte $01   ; 
- D 1 - I - 0x004F77 01:AF67: E8        .byte $E8, $93, $F9   ; 

- D 1 - I - 0x004F7A 01:AF6A: 82        .byte $82   ; 
- D 1 - I - 0x004F7B 01:AF6B: 00        .byte $00   ; 
- D 1 - I - 0x004F7C 01:AF6C: E8        .byte $E8, $9B, $09   ; 
- D 1 - I - 0x004F7F 01:AF6F: E8        .byte $E8, $A3, $E9   ; 

- D 1 - I - 0x004F82 01:AF72: 01        .byte $01   ; 
- D 1 - I - 0x004F83 01:AF73: 02        .byte $02   ; 
- D 1 - I - 0x004F84 01:AF74: F0        .byte $F0, $A5, $E9   ; 



off_0B_AF77_07:
- D 1 - I - 0x004F87 01:AF77: 83        .byte $83   ; counter
- D 1 - I - 0x004F88 01:AF78: 00        .byte $00   ; spr_A
- D 1 - I - 0x004F89 01:AF79: 00        .byte $00, $99, $F9   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004F8C 01:AF7C: F8        .byte $F8, $9F, $09   ; 
- D 1 - I - 0x004F8F 01:AF7F: 00        .byte $00, $A1, $09   ; 

- D 1 - I - 0x004F92 01:AF82: 82        .byte $82   ; 
- D 1 - I - 0x004F93 01:AF83: 02        .byte $02   ; 
- D 1 - I - 0x004F94 01:AF84: F8        .byte $F8, $97, $F9   ; 
- D 1 - I - 0x004F97 01:AF87: F0        .byte $F0, $9D, $09   ; 

- D 1 - I - 0x004F9A 01:AF8A: 82        .byte $82   ; 
- D 1 - I - 0x004F9B 01:AF8B: 00        .byte $00   ; 
- D 1 - I - 0x004F9C 01:AF8C: E8        .byte $E8, $9B, $09   ; 
- D 1 - I - 0x004F9F 01:AF8F: E8        .byte $E8, $A3, $E9   ; 

- D 1 - I - 0x004FA2 01:AF92: 81        .byte $81   ; 
- D 1 - I - 0x004FA3 01:AF93: 02        .byte $02   ; 
- D 1 - I - 0x004FA4 01:AF94: F0        .byte $F0, $A5, $E9   ; 

- D 1 - I - 0x004FA7 01:AF97: 81        .byte $81   ; 
- D 1 - I - 0x004FA8 01:AF98: 01        .byte $01   ; 
- D 1 - I - 0x004FA9 01:AF99: E8        .byte $E8, $AB, $F9   ; 

- D 1 - I - 0x004FAC 01:AF9C: 01        .byte $01   ; 
- D 1 - I - 0x004FAD 01:AF9D: 02        .byte $02   ; 
- D 1 - I - 0x004FAE 01:AF9E: F0        .byte $F0, $A9, $F9   ; 



off_0B_AFA1_08:
- D 1 - I - 0x004FB1 01:AFA1: 83        .byte $83   ; counter
- D 1 - I - 0x004FB2 01:AFA2: 00        .byte $00   ; spr_A
- D 1 - I - 0x004FB3 01:AFA3: 00        .byte $00, $99, $F9   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004FB6 01:AFA6: F8        .byte $F8, $9F, $09   ; 
- D 1 - I - 0x004FB9 01:AFA9: 00        .byte $00, $A1, $09   ; 

- D 1 - I - 0x004FBC 01:AFAC: 82        .byte $82   ; 
- D 1 - I - 0x004FBD 01:AFAD: 02        .byte $02   ; 
- D 1 - I - 0x004FBE 01:AFAE: F8        .byte $F8, $97, $F9   ; 
- D 1 - I - 0x004FC1 01:AFB1: F0        .byte $F0, $9D, $09   ; 

- D 1 - I - 0x004FC4 01:AFB4: 82        .byte $82   ; 
- D 1 - I - 0x004FC5 01:AFB5: 00        .byte $00   ; 
- D 1 - I - 0x004FC6 01:AFB6: E8        .byte $E8, $9B, $09   ; 
- D 1 - I - 0x004FC9 01:AFB9: E9        .byte $E9, $A3, $EA   ; 

- D 1 - I - 0x004FCC 01:AFBC: 81        .byte $81   ; 
- D 1 - I - 0x004FCD 01:AFBD: 02        .byte $02   ; 
- D 1 - I - 0x004FCE 01:AFBE: F1        .byte $F1, $A5, $EA   ; 

- D 1 - I - 0x004FD1 01:AFC1: 81        .byte $81   ; 
- D 1 - I - 0x004FD2 01:AFC2: 01        .byte $01   ; 
- D 1 - I - 0x004FD3 01:AFC3: E8        .byte $E8, $AB, $F8   ; 

- D 1 - I - 0x004FD6 01:AFC6: 81        .byte $81   ; 
- D 1 - I - 0x004FD7 01:AFC7: 02        .byte $02   ; 
- D 1 - I - 0x004FD8 01:AFC8: F0        .byte $F0, $A9, $F9   ; 

- D 1 - I - 0x004FDB 01:AFCB: 01        .byte $01   ; 
- D 1 - I - 0x004FDC 01:AFCC: 03        .byte $03   ; 
- D 1 - I - 0x004FDD 01:AFCD: E8        .byte $E8, $B7, $D9   ; 



off_0B_AFD0_09:
- D 1 - I - 0x004FE0 01:AFD0: 83        .byte $83   ; counter
- D 1 - I - 0x004FE1 01:AFD1: 00        .byte $00   ; spr_A
- D 1 - I - 0x004FE2 01:AFD2: 00        .byte $00, $99, $F9   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004FE5 01:AFD5: F8        .byte $F8, $9F, $09   ; 
- D 1 - I - 0x004FE8 01:AFD8: 00        .byte $00, $A1, $09   ; 

- D 1 - I - 0x004FEB 01:AFDB: 82        .byte $82   ; 
- D 1 - I - 0x004FEC 01:AFDC: 02        .byte $02   ; 
- D 1 - I - 0x004FED 01:AFDD: F8        .byte $F8, $97, $F9   ; 
- D 1 - I - 0x004FF0 01:AFE0: F0        .byte $F0, $9D, $09   ; 

- D 1 - I - 0x004FF3 01:AFE3: 82        .byte $82   ; 
- D 1 - I - 0x004FF4 01:AFE4: 00        .byte $00   ; 
- D 1 - I - 0x004FF5 01:AFE5: E8        .byte $E8, $9B, $09   ; 
- D 1 - I - 0x004FF8 01:AFE8: E8        .byte $E8, $A3, $E9   ; 

- D 1 - I - 0x004FFB 01:AFEB: 82        .byte $82   ; 
- D 1 - I - 0x004FFC 01:AFEC: 02        .byte $02   ; 
- D 1 - I - 0x004FFD 01:AFED: F0        .byte $F0, $A5, $E9   ; 
- D 1 - I - 0x005000 01:AFF0: F0        .byte $F0, $A9, $F9   ; 

- D 1 - I - 0x005003 01:AFF3: 81        .byte $81   ; 
- D 1 - I - 0x005004 01:AFF4: 01        .byte $01   ; 
- D 1 - I - 0x005005 01:AFF5: E8        .byte $E8, $A7, $F9   ; 

- D 1 - I - 0x005008 01:AFF8: 81        .byte $81   ; 
- D 1 - I - 0x005009 01:AFF9: 03        .byte $03   ; 
- D 1 - I - 0x00500A 01:AFFA: E4        .byte $E4, $BB, $D7   ; 

- D 1 - I - 0x00500D 01:AFFD: 01        .byte $01   ; 
- D 1 - I - 0x00500E 01:AFFE: 43        .byte $43   ; 
- D 1 - I - 0x00500F 01:AFFF: EC        .byte $EC, $BB, $D7   ; 



off_0B_B002_0A:
- D 1 - I - 0x005012 01:B002: 83        .byte $83   ; counter
- D 1 - I - 0x005013 01:B003: 00        .byte $00   ; spr_A
- D 1 - I - 0x005014 01:B004: 00        .byte $00, $99, $F9   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x005017 01:B007: F8        .byte $F8, $9F, $09   ; 
- D 1 - I - 0x00501A 01:B00A: 00        .byte $00, $A1, $09   ; 

- D 1 - I - 0x00501D 01:B00D: 82        .byte $82   ; 
- D 1 - I - 0x00501E 01:B00E: 02        .byte $02   ; 
- D 1 - I - 0x00501F 01:B00F: F8        .byte $F8, $97, $F9   ; 
- D 1 - I - 0x005022 01:B012: F0        .byte $F0, $9D, $09   ; 

- D 1 - I - 0x005025 01:B015: 82        .byte $82   ; 
- D 1 - I - 0x005026 01:B016: 00        .byte $00   ; 
- D 1 - I - 0x005027 01:B017: E8        .byte $E8, $9B, $09   ; 
- D 1 - I - 0x00502A 01:B01A: E9        .byte $E9, $A3, $E9   ; 

- D 1 - I - 0x00502D 01:B01D: 81        .byte $81   ; 
- D 1 - I - 0x00502E 01:B01E: 02        .byte $02   ; 
- D 1 - I - 0x00502F 01:B01F: F1        .byte $F1, $A5, $E9   ; 

- D 1 - I - 0x005032 01:B022: 81        .byte $81   ; 
- D 1 - I - 0x005033 01:B023: 01        .byte $01   ; 
- D 1 - I - 0x005034 01:B024: E8        .byte $E8, $AB, $F9   ; 

- D 1 - I - 0x005037 01:B027: 81        .byte $81   ; 
- D 1 - I - 0x005038 01:B028: 02        .byte $02   ; 
- D 1 - I - 0x005039 01:B029: F0        .byte $F0, $A9, $F9   ; 

- D 1 - I - 0x00503C 01:B02C: 81        .byte $81   ; 
- D 1 - I - 0x00503D 01:B02D: 03        .byte $03   ; 
- D 1 - I - 0x00503E 01:B02E: E4        .byte $E4, $BB, $C9   ; 

- D 1 - I - 0x005041 01:B031: 81        .byte $81   ; 
- D 1 - I - 0x005042 01:B032: 43        .byte $43   ; 
- D 1 - I - 0x005043 01:B033: EC        .byte $EC, $BB, $C9   ; 

- D 1 - I - 0x005046 01:B036: 81        .byte $81   ; 
- D 1 - I - 0x005047 01:B037: 03        .byte $03   ; 
- D 1 - I - 0x005048 01:B038: E4        .byte $E4, $BD, $D9   ; 

- D 1 - I - 0x00504B 01:B03B: 01        .byte $01   ; 
- D 1 - I - 0x00504C 01:B03C: 43        .byte $43   ; 
- D 1 - I - 0x00504D 01:B03D: EC        .byte $EC, $BD, $D9   ; 



off_0B_B040_0B:
- D 1 - I - 0x005050 01:B040: 83        .byte $83   ; counter
- D 1 - I - 0x005051 01:B041: 00        .byte $00   ; spr_A
- D 1 - I - 0x005052 01:B042: 00        .byte $00, $99, $F9   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x005055 01:B045: F8        .byte $F8, $9F, $09   ; 
- D 1 - I - 0x005058 01:B048: 00        .byte $00, $A1, $09   ; 

- D 1 - I - 0x00505B 01:B04B: 82        .byte $82   ; 
- D 1 - I - 0x00505C 01:B04C: 02        .byte $02   ; 
- D 1 - I - 0x00505D 01:B04D: F8        .byte $F8, $97, $F9   ; 
- D 1 - I - 0x005060 01:B050: F0        .byte $F0, $9D, $09   ; 

- D 1 - I - 0x005063 01:B053: 82        .byte $82   ; 
- D 1 - I - 0x005064 01:B054: 00        .byte $00   ; 
- D 1 - I - 0x005065 01:B055: E8        .byte $E8, $9B, $09   ; 
- D 1 - I - 0x005068 01:B058: E8        .byte $E8, $A3, $E9   ; 

- D 1 - I - 0x00506B 01:B05B: 82        .byte $82   ; 
- D 1 - I - 0x00506C 01:B05C: 02        .byte $02   ; 
- D 1 - I - 0x00506D 01:B05D: F0        .byte $F0, $A5, $E9   ; 
- D 1 - I - 0x005070 01:B060: F0        .byte $F0, $A9, $F9   ; 

- D 1 - I - 0x005073 01:B063: 81        .byte $81   ; 
- D 1 - I - 0x005074 01:B064: 03        .byte $03   ; 
- D 1 - I - 0x005075 01:B065: E4        .byte $E4, $BF, $C8   ; 

- D 1 - I - 0x005078 01:B068: 81        .byte $81   ; 
- D 1 - I - 0x005079 01:B069: 43        .byte $43   ; 
- D 1 - I - 0x00507A 01:B06A: EC        .byte $EC, $BF, $C8   ; 

- D 1 - I - 0x00507D 01:B06D: 01        .byte $01   ; 
- D 1 - I - 0x00507E 01:B06E: 01        .byte $01   ; 
- D 1 - I - 0x00507F 01:B06F: E8        .byte $E8, $A7, $F8   ; 



off_0B_B072_0C:
- D 1 - I - 0x005082 01:B072: 83        .byte $83   ; counter
- D 1 - I - 0x005083 01:B073: 00        .byte $00   ; spr_A
- D 1 - I - 0x005084 01:B074: 00        .byte $00, $99, $F9   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x005087 01:B077: F8        .byte $F8, $9F, $09   ; 
- D 1 - I - 0x00508A 01:B07A: 00        .byte $00, $A1, $09   ; 

- D 1 - I - 0x00508D 01:B07D: 81        .byte $81   ; 
- D 1 - I - 0x00508E 01:B07E: 01        .byte $01   ; 
- D 1 - I - 0x00508F 01:B07F: E8        .byte $E8, $AD, $F9   ; 

- D 1 - I - 0x005092 01:B082: 82        .byte $82   ; 
- D 1 - I - 0x005093 01:B083: 02        .byte $02   ; 
- D 1 - I - 0x005094 01:B084: F0        .byte $F0, $AF, $F9   ; 
- D 1 - I - 0x005097 01:B087: F8        .byte $F8, $B1, $F9   ; 

- D 1 - I - 0x00509A 01:B08A: 81        .byte $81   ; 
- D 1 - I - 0x00509B 01:B08B: 01        .byte $01   ; 
- D 1 - I - 0x00509C 01:B08C: E8        .byte $E8, $B3, $09   ; 

- D 1 - I - 0x00509F 01:B08F: 01        .byte $01   ; 
- D 1 - I - 0x0050A0 01:B090: 02        .byte $02   ; 
- D 1 - I - 0x0050A1 01:B091: F0        .byte $F0, $B5, $09   ; 



off_0B_B127_15:
- D 1 - I - 0x005137 01:B127: FF        .byte $FF   ; 
off_0B_B094_11:
- D 1 - I - 0x0050A4 01:B094: 84        .byte $84   ; counter
- D 1 - I - 0x0050A5 01:B095: 01        .byte $01   ; spr_A
- D 1 - I - 0x0050A6 01:B096: F1        .byte $F1, $81, $F1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0050A9 01:B099: F9        .byte $F9, $83, $F1   ; 
- D 1 - I - 0x0050AC 01:B09C: 01        .byte $01, $85, $F1   ; 
- D 1 - I - 0x0050AF 01:B09F: 09        .byte $09, $87, $F9   ; 

- D 1 - I - 0x0050B2 01:B0A2: 82        .byte $82   ; 
- D 1 - I - 0x0050B3 01:B0A3: 02        .byte $02   ; 
- D 1 - I - 0x0050B4 01:B0A4: F1        .byte $F1, $89, $01   ; 
- D 1 - I - 0x0050B7 01:B0A7: F9        .byte $F9, $8B, $01   ; 

- D 1 - I - 0x0050BA 01:B0AA: 81        .byte $81   ; 
- D 1 - I - 0x0050BB 01:B0AB: 01        .byte $01   ; 
- D 1 - I - 0x0050BC 01:B0AC: 01        .byte $01, $8D, $01   ; 

- D 1 - I - 0x0050BF 01:B0AF: 03        .byte $03   ; 
- D 1 - I - 0x0050C0 01:B0B0: 02        .byte $02   ; 
- D 1 - I - 0x0050C1 01:B0B1: F1        .byte $F1, $8F, $11   ; 
- D 1 - I - 0x0050C4 01:B0B4: F9        .byte $F9, $91, $11   ; 
- D 1 - I - 0x0050C7 01:B0B7: 01        .byte $01, $93, $11   ; 



off_0B_B12A_16:
- - - - - - 0x00513A 01:B12A: FF        .byte $FF   ; 
off_0B_B0BA_12:
- D 1 - I - 0x0050CA 01:B0BA: 82        .byte $82   ; counter
- D 1 - I - 0x0050CB 01:B0BB: 01        .byte $01   ; spr_A
- D 1 - I - 0x0050CC 01:B0BC: F9        .byte $F9, $95, $F1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0050CF 01:B0BF: 01        .byte $01, $97, $F1   ; 

- D 1 - I - 0x0050D2 01:B0C2: 82        .byte $82   ; 
- D 1 - I - 0x0050D3 01:B0C3: 02        .byte $02   ; 
- D 1 - I - 0x0050D4 01:B0C4: F1        .byte $F1, $99, $01   ; 
- D 1 - I - 0x0050D7 01:B0C7: F9        .byte $F9, $9B, $01   ; 

- D 1 - I - 0x0050DA 01:B0CA: 82        .byte $82   ; 
- D 1 - I - 0x0050DB 01:B0CB: 01        .byte $01   ; 
- D 1 - I - 0x0050DC 01:B0CC: 01        .byte $01, $9D, $01   ; 
- D 1 - I - 0x0050DF 01:B0CF: 09        .byte $09, $9F, $01   ; 

- D 1 - I - 0x0050E2 01:B0D2: 02        .byte $02   ; 
- D 1 - I - 0x0050E3 01:B0D3: 02        .byte $02   ; 
- D 1 - I - 0x0050E4 01:B0D4: F1        .byte $F1, $A1, $11   ; 
- D 1 - I - 0x0050E7 01:B0D7: F9        .byte $F9, $A3, $11   ; 



off_0B_B12D_17:
- - - - - - 0x00513D 01:B12D: FF        .byte $FF   ; 
off_0B_B0DA_13:
- D 1 - I - 0x0050EA 01:B0DA: 83        .byte $83   ; counter
- D 1 - I - 0x0050EB 01:B0DB: 01        .byte $01   ; spr_A
- D 1 - I - 0x0050EC 01:B0DC: F9        .byte $F9, $A5, $F1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0050EF 01:B0DF: 01        .byte $01, $A7, $F1   ; 
- D 1 - I - 0x0050F2 01:B0E2: 09        .byte $09, $A9, $F1   ; 

- D 1 - I - 0x0050F5 01:B0E5: 82        .byte $82   ; 
- D 1 - I - 0x0050F6 01:B0E6: 02        .byte $02   ; 
- D 1 - I - 0x0050F7 01:B0E7: F9        .byte $F9, $AB, $01   ; 
- D 1 - I - 0x0050FA 01:B0EA: 01        .byte $01, $AD, $01   ; 

- D 1 - I - 0x0050FD 01:B0ED: 81        .byte $81   ; 
- D 1 - I - 0x0050FE 01:B0EE: 01        .byte $01   ; 
- D 1 - I - 0x0050FF 01:B0EF: 09        .byte $09, $AF, $01   ; 

- D 1 - I - 0x005102 01:B0F2: 83        .byte $83   ; 
- D 1 - I - 0x005103 01:B0F3: 02        .byte $02   ; 
- D 1 - I - 0x005104 01:B0F4: F1        .byte $F1, $B1, $11   ; 
- D 1 - I - 0x005107 01:B0F7: F9        .byte $F9, $B3, $11   ; 
- D 1 - I - 0x00510A 01:B0FA: 01        .byte $01, $B5, $11   ; 

- D 1 - I - 0x00510D 01:B0FD: 01        .byte $01   ; 
- D 1 - I - 0x00510E 01:B0FE: 01        .byte $01   ; 
- D 1 - I - 0x00510F 01:B0FF: 11        .byte $11, $9F, $FB   ; 



off_0B_B130_18:
- - - - - - 0x005140 01:B130: FF        .byte $FF   ; 
off_0B_B102_14:
- D 1 - I - 0x005112 01:B102: 82        .byte $82   ; counter
- D 1 - I - 0x005113 01:B103: 01        .byte $01   ; spr_A
- D 1 - I - 0x005114 01:B104: F9        .byte $F9, $95, $F1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x005117 01:B107: 01        .byte $01, $97, $F1   ; 

- D 1 - I - 0x00511A 01:B10A: 82        .byte $82   ; 
- D 1 - I - 0x00511B 01:B10B: 02        .byte $02   ; 
- D 1 - I - 0x00511C 01:B10C: F1        .byte $F1, $99, $01   ; 
- D 1 - I - 0x00511F 01:B10F: F9        .byte $F9, $B7, $01   ; 

- D 1 - I - 0x005122 01:B112: 81        .byte $81   ; 
- D 1 - I - 0x005123 01:B113: 01        .byte $01   ; 
- D 1 - I - 0x005124 01:B114: 01        .byte $01, $B9, $01   ; 

- D 1 - I - 0x005127 01:B117: 83        .byte $83   ; 
- D 1 - I - 0x005128 01:B118: 02        .byte $02   ; 
- D 1 - I - 0x005129 01:B119: F1        .byte $F1, $BB, $11   ; 
- D 1 - I - 0x00512C 01:B11C: F9        .byte $F9, $BD, $11   ; 
- D 1 - I - 0x00512F 01:B11F: 01        .byte $01, $BF, $11   ; 

- D 1 - I - 0x005132 01:B122: 01        .byte $01   ; 
- D 1 - I - 0x005133 01:B123: 01        .byte $01   ; 
- D 1 - I - 0x005134 01:B124: 09        .byte $09, $9F, $01   ; 



off_0B_B1EC_1E:
- D 1 - I - 0x0051FC 01:B1EC: FF        .byte $FF   ; 
off_0B_B133_19:
- D 1 - I - 0x005143 01:B133: 85        .byte $85   ; counter
- D 1 - I - 0x005144 01:B134: 01        .byte $01   ; spr_A
- D 1 - I - 0x005145 01:B135: F8        .byte $F8, $81, $F1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x005148 01:B138: 00        .byte $00, $83, $F1   ; 
- D 1 - I - 0x00514B 01:B13B: 08        .byte $08, $85, $F1   ; 
- D 1 - I - 0x00514E 01:B13E: E8        .byte $E8, $87, $01   ; 
- D 1 - I - 0x005151 01:B141: F0        .byte $F0, $89, $01   ; 

- D 1 - I - 0x005154 01:B144: 07        .byte $07   ; 
- D 1 - I - 0x005155 01:B145: 02        .byte $02   ; 
- D 1 - I - 0x005156 01:B146: F8        .byte $F8, $8B, $01   ; 
- D 1 - I - 0x005159 01:B149: 00        .byte $00, $8D, $01   ; 
- D 1 - I - 0x00515C 01:B14C: 08        .byte $08, $8F, $01   ; 
- D 1 - I - 0x00515F 01:B14F: F0        .byte $F0, $91, $11   ; 
- D 1 - I - 0x005162 01:B152: F8        .byte $F8, $93, $11   ; 
- D 1 - I - 0x005165 01:B155: 00        .byte $00, $95, $11   ; 
- D 1 - I - 0x005168 01:B158: 08        .byte $08, $97, $11   ; 



off_0B_B1EF_1F:
- D 1 - I - 0x0051FF 01:B1EF: FF        .byte $FF   ; 
off_0B_B15B_1A:
- D 1 - I - 0x00516B 01:B15B: 84        .byte $84   ; counter
- D 1 - I - 0x00516C 01:B15C: 01        .byte $01   ; spr_A
- D 1 - I - 0x00516D 01:B15D: F0        .byte $F0, $99, $F1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x005170 01:B160: F8        .byte $F8, $9B, $F1   ; 
- D 1 - I - 0x005173 01:B163: 00        .byte $00, $9D, $F1   ; 
- D 1 - I - 0x005176 01:B166: 08        .byte $08, $9F, $F1   ; 

- D 1 - I - 0x005179 01:B169: 06        .byte $06   ; 
- D 1 - I - 0x00517A 01:B16A: 02        .byte $02   ; 
- D 1 - I - 0x00517B 01:B16B: F8        .byte $F8, $A1, $01   ; 
- D 1 - I - 0x00517E 01:B16E: 00        .byte $00, $A3, $01   ; 
- D 1 - I - 0x005181 01:B171: F0        .byte $F0, $91, $11   ; 
- D 1 - I - 0x005184 01:B174: F8        .byte $F8, $93, $11   ; 
- D 1 - I - 0x005187 01:B177: 00        .byte $00, $95, $11   ; 
- D 1 - I - 0x00518A 01:B17A: 08        .byte $08, $97, $11   ; 



off_0B_B1F2_20:
- D 1 - I - 0x005202 01:B1F2: FF        .byte $FF   ; 
off_0B_B17D_1B:
- D 1 - I - 0x00518D 01:B17D: 84        .byte $84   ; counter
- D 1 - I - 0x00518E 01:B17E: 01        .byte $01   ; spr_A
- D 1 - I - 0x00518F 01:B17F: FD        .byte $FD, $A5, $E1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x005192 01:B182: F8        .byte $F8, $A7, $F1   ; 
- D 1 - I - 0x005195 01:B185: 00        .byte $00, $A9, $F1   ; 
- D 1 - I - 0x005198 01:B188: F0        .byte $F0, $AB, $01   ; 

- D 1 - I - 0x00519B 01:B18B: 06        .byte $06   ; 
- D 1 - I - 0x00519C 01:B18C: 02        .byte $02   ; 
- D 1 - I - 0x00519D 01:B18D: F8        .byte $F8, $AD, $01   ; 
- D 1 - I - 0x0051A0 01:B190: 00        .byte $00, $AF, $01   ; 
- D 1 - I - 0x0051A3 01:B193: F0        .byte $F0, $91, $11   ; 
- D 1 - I - 0x0051A6 01:B196: F8        .byte $F8, $93, $11   ; 
- D 1 - I - 0x0051A9 01:B199: 00        .byte $00, $95, $11   ; 
- D 1 - I - 0x0051AC 01:B19C: 08        .byte $08, $97, $11   ; 



off_0B_B1F5_21:
- D 1 - I - 0x005205 01:B1F5: FF        .byte $FF   ; 
off_0B_B19F_1C:
- D 1 - I - 0x0051AF 01:B19F: 83        .byte $83   ; counter
- D 1 - I - 0x0051B0 01:B1A0: 01        .byte $01   ; spr_A
- D 1 - I - 0x0051B1 01:B1A1: F0        .byte $F0, $B1, $F1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0051B4 01:B1A4: F8        .byte $F8, $B3, $F1   ; 
- D 1 - I - 0x0051B7 01:B1A7: 00        .byte $00, $B5, $F1   ; 

- D 1 - I - 0x0051BA 01:B1AA: 81        .byte $81   ; 
- D 1 - I - 0x0051BB 01:B1AB: 02        .byte $02   ; 
- D 1 - I - 0x0051BC 01:B1AC: E8        .byte $E8, $B7, $01   ; 

- D 1 - I - 0x0051BF 01:B1AF: 82        .byte $82   ; 
- D 1 - I - 0x0051C0 01:B1B0: 01        .byte $01   ; 
- D 1 - I - 0x0051C1 01:B1B1: F0        .byte $F0, $B9, $01   ; 
- D 1 - I - 0x0051C4 01:B1B4: F8        .byte $F8, $BB, $01   ; 

- D 1 - I - 0x0051C7 01:B1B7: 05        .byte $05   ; 
- D 1 - I - 0x0051C8 01:B1B8: 02        .byte $02   ; 
- D 1 - I - 0x0051C9 01:B1B9: 00        .byte $00, $BD, $01   ; 
- D 1 - I - 0x0051CC 01:B1BC: F0        .byte $F0, $91, $11   ; 
- D 1 - I - 0x0051CF 01:B1BF: F8        .byte $F8, $93, $11   ; 
- D 1 - I - 0x0051D2 01:B1C2: 00        .byte $00, $95, $11   ; 
- D 1 - I - 0x0051D5 01:B1C5: 08        .byte $08, $97, $11   ; 



off_0B_B1F8_22:
- D 1 - I - 0x005208 01:B1F8: FF        .byte $FF   ; 
off_0B_B1C8_1D:
- D 1 - I - 0x0051D8 01:B1C8: 84        .byte $84   ; counter
- D 1 - I - 0x0051D9 01:B1C9: 01        .byte $01   ; spr_A
- D 1 - I - 0x0051DA 01:B1CA: F0        .byte $F0, $B1, $F1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0051DD 01:B1CD: F8        .byte $F8, $B3, $F1   ; 
- D 1 - I - 0x0051E0 01:B1D0: 00        .byte $00, $B5, $F1   ; 
- D 1 - I - 0x0051E3 01:B1D3: F8        .byte $F8, $BB, $01   ; 

- D 1 - I - 0x0051E6 01:B1D6: 85        .byte $85   ; 
- D 1 - I - 0x0051E7 01:B1D7: 02        .byte $02   ; 
- D 1 - I - 0x0051E8 01:B1D8: 00        .byte $00, $BD, $01   ; 
- D 1 - I - 0x0051EB 01:B1DB: F0        .byte $F0, $91, $11   ; 
- D 1 - I - 0x0051EE 01:B1DE: F8        .byte $F8, $93, $11   ; 
- D 1 - I - 0x0051F1 01:B1E1: 00        .byte $00, $95, $11   ; 
- D 1 - I - 0x0051F4 01:B1E4: 08        .byte $08, $97, $11   ; 

- D 1 - I - 0x0051F7 01:B1E7: 01        .byte $01   ; 
- D 1 - I - 0x0051F8 01:B1E8: 01        .byte $01   ; 
- D 1 - I - 0x0051F9 01:B1E9: F0        .byte $F0, $BF, $01   ; 



_off032_B1FB_08:
- - - - - - 0x00520B 01:B1FB: 83 B2     .word off_08_B283_00
- - - - - - 0x00520D 01:B1FD: 83 B2     .word off_08_B283_01
- - - - - - 0x00520F 01:B1FF: 83 B2     .word off_08_B283_02
- - - - - - 0x005211 01:B201: 83 B2     .word off_08_B283_03
- - - - - - 0x005213 01:B203: 83 B2     .word off_08_B283_04
- D 1 - I - 0x005215 01:B205: 83 B2     .word off_08_B283_05
- D 1 - I - 0x005217 01:B207: DF B2     .word off_08_B2DF_06
- D 1 - I - 0x005219 01:B209: 3B B3     .word off_08_B33B_07
- D 1 - I - 0x00521B 01:B20B: 97 B3     .word off_08_B397_08
- D 1 - I - 0x00521D 01:B20D: F3 B3     .word off_08_B3F3_09
- D 1 - I - 0x00521F 01:B20F: FD B3     .word off_08_B3FD_0A
- D 1 - I - 0x005221 01:B211: 05 B4     .word off_08_B405_0B
- D 1 - I - 0x005223 01:B213: 0D B4     .word off_08_B40D_0C
- D 1 - I - 0x005225 01:B215: 15 B4     .word off_08_B415_0D
- D 1 - I - 0x005227 01:B217: 1F B4     .word off_08_B41F_0E
- D 1 - I - 0x005229 01:B219: 22 B4     .word off_08_B422_0F
- D 1 - I - 0x00522B 01:B21B: 25 B4     .word off_08_B425_10
- - - - - - 0x00522D 01:B21D: 83 B2     .word off_08_B283_11
- - - - - - 0x00522F 01:B21F: 83 B2     .word off_08_B283_12
- - - - - - 0x005231 01:B221: 83 B2     .word off_08_B283_13
- - - - - - 0x005233 01:B223: 83 B2     .word off_08_B283_14
- - - - - - 0x005235 01:B225: 83 B2     .word off_08_B283_15
- - - - - - 0x005237 01:B227: 83 B2     .word off_08_B283_16
- - - - - - 0x005239 01:B229: 83 B2     .word off_08_B283_17
- - - - - - 0x00523B 01:B22B: 83 B2     .word off_08_B283_18
- D 1 - I - 0x00523D 01:B22D: 28 B4     .word off_08_B428_19
- D 1 - I - 0x00523F 01:B22F: 43 B4     .word off_08_B443_1A
- D 1 - I - 0x005241 01:B231: 6C B4     .word off_08_B46C_1B
- D 1 - I - 0x005243 01:B233: 98 B4     .word off_08_B498_1C
- D 1 - I - 0x005245 01:B235: C1 B4     .word off_08_B4C1_1D
- D 1 - I - 0x005247 01:B237: DF B4     .word off_08_B4DF_1E
- D 1 - I - 0x005249 01:B239: FD B4     .word off_08_B4FD_1F
- D 1 - I - 0x00524B 01:B23B: 1B B5     .word off_08_B51B_20
- D 1 - I - 0x00524D 01:B23D: 39 B5     .word off_08_B539_21
- - - - - - 0x00524F 01:B23F: 5A B5     .word off_08_B55A_22
- D 1 - I - 0x005251 01:B241: 7B B5     .word off_08_B57B_23
- D 1 - I - 0x005253 01:B243: 7E B5     .word off_08_B57E_24
- D 1 - I - 0x005255 01:B245: 81 B5     .word off_08_B581_25
- D 1 - I - 0x005257 01:B247: 84 B5     .word off_08_B584_26
- D 1 - I - 0x005259 01:B249: 87 B5     .word off_08_B587_27
- D 1 - I - 0x00525B 01:B24B: A5 B5     .word off_08_B5A5_28
- D 1 - I - 0x00525D 01:B24D: C3 B5     .word off_08_B5C3_29
- D 1 - I - 0x00525F 01:B24F: E3 B5     .word off_08_B5E3_2A
- - - - - - 0x005261 01:B251: 03 B6     .word off_08_B603_2B
- - - - - - 0x005263 01:B253: 06 B6     .word off_08_B606_2C
- - - - - - 0x005265 01:B255: 09 B6     .word off_08_B609_2D
- - - - - - 0x005267 01:B257: 09 B6     .word off_08_B609_2E
- - - - - - 0x005269 01:B259: 27 B6     .word off_08_B627_2F
- - - - - - 0x00526B 01:B25B: 47 B6     .word off_08_B647_30
- D 1 - I - 0x00526D 01:B25D: 47 B6     .word off_08_B647_31
- D 1 - I - 0x00526F 01:B25F: 9D B6     .word off_08_B69D_32
- D 1 - I - 0x005271 01:B261: FD B6     .word off_08_B6FD_33
- D 1 - I - 0x005273 01:B263: 67 B7     .word off_08_B767_34
- D 1 - I - 0x005275 01:B265: C7 B7     .word off_08_B7C7_35
- D 1 - I - 0x005277 01:B267: 1D B8     .word off_08_B81D_36
- D 1 - I - 0x005279 01:B269: 40 B8     .word off_08_B840_37
- D 1 - I - 0x00527B 01:B26B: 74 B8     .word off_08_B874_38
- D 1 - I - 0x00527D 01:B26D: 88 B8     .word off_08_B888_39
- D 1 - I - 0x00527F 01:B26F: A2 B8     .word off_08_B8A2_3A
- D 1 - I - 0x005281 01:B271: C6 B8     .word off_08_B8C6_3B
- D 1 - I - 0x005283 01:B273: D4 B8     .word off_08_B8D4_3C
- - - - - - 0x005285 01:B275: EE B8     .word off_08_B8EE_3D
- D 1 - I - 0x005287 01:B277: F3 B8     .word off_08_B8F3_3E
- D 1 - I - 0x005289 01:B279: F8 B8     .word off_08_B8F8_3F
- - - - - - 0x00528B 01:B27B: FB B8     .word off_08_B8FB_40
- - - - - - 0x00528D 01:B27D: 19 B9     .word off_08_B919_41
- D 1 - I - 0x00528F 01:B27F: 38 B9     .word off_08_B938_42
- D 1 - I - 0x005291 01:B281: 3B B9     .word off_08_B93B_43



off_08_B283_00:
off_08_B283_01:
off_08_B283_02:
off_08_B283_03:
off_08_B283_04:
off_08_B283_05:
off_08_B283_11:
off_08_B283_12:
off_08_B283_13:
off_08_B283_14:
off_08_B283_15:
off_08_B283_16:
off_08_B283_17:
off_08_B283_18:
- D 1 - I - 0x005293 01:B283: 88        .byte $88   ; counter
- D 1 - I - 0x005294 01:B284: 43        .byte $43   ; spr_A
- D 1 - I - 0x005295 01:B285: 19        .byte $19, $81, $F0   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x005298 01:B288: 11        .byte $11, $81, $F0   ; 
- D 1 - I - 0x00529B 01:B28B: 09        .byte $09, $81, $F0   ; 
- D 1 - I - 0x00529E 01:B28E: 01        .byte $01, $81, $F0   ; 
- D 1 - I - 0x0052A1 01:B291: 19        .byte $19, $83, $00   ; 
- D 1 - I - 0x0052A4 01:B294: 11        .byte $11, $83, $00   ; 
- D 1 - I - 0x0052A7 01:B297: 09        .byte $09, $83, $00   ; 
- D 1 - I - 0x0052AA 01:B29A: 01        .byte $01, $83, $00   ; 

- D 1 - I - 0x0052AD 01:B29D: 85        .byte $85   ; 
- D 1 - I - 0x0052AE 01:B29E: 42        .byte $42   ; 
- D 1 - I - 0x0052AF 01:B29F: F9        .byte $F9, $85, $F0   ; 
- D 1 - I - 0x0052B2 01:B2A2: F1        .byte $F1, $87, $F0   ; 
- D 1 - I - 0x0052B5 01:B2A5: E9        .byte $E9, $89, $F0   ; 
- D 1 - I - 0x0052B8 01:B2A8: E1        .byte $E1, $8B, $F0   ; 
- D 1 - I - 0x0052BB 01:B2AB: F9        .byte $F9, $8D, $00   ; 

- D 1 - I - 0x0052BE 01:B2AE: 82        .byte $82   ; 
- D 1 - I - 0x0052BF 01:B2AF: 43        .byte $43   ; 
- D 1 - I - 0x0052C0 01:B2B0: F1        .byte $F1, $8F, $00   ; 
- D 1 - I - 0x0052C3 01:B2B3: E9        .byte $E9, $91, $00   ; 

- D 1 - I - 0x0052C6 01:B2B6: 82        .byte $82   ; 
- D 1 - I - 0x0052C7 01:B2B7: 42        .byte $42   ; 
- D 1 - I - 0x0052C8 01:B2B8: E1        .byte $E1, $93, $00   ; 
- D 1 - I - 0x0052CB 01:B2BB: 19        .byte $19, $95, $10   ; 

- D 1 - I - 0x0052CE 01:B2BE: 81        .byte $81   ; 
- D 1 - I - 0x0052CF 01:B2BF: 02        .byte $02   ; 
- D 1 - I - 0x0052D0 01:B2C0: 11        .byte $11, $95, $10   ; 

- D 1 - I - 0x0052D3 01:B2C3: 81        .byte $81   ; 
- D 1 - I - 0x0052D4 01:B2C4: 42        .byte $42   ; 
- D 1 - I - 0x0052D5 01:B2C5: 09        .byte $09, $95, $10   ; 

- D 1 - I - 0x0052D8 01:B2C8: 81        .byte $81   ; 
- D 1 - I - 0x0052D9 01:B2C9: 02        .byte $02   ; 
- D 1 - I - 0x0052DA 01:B2CA: 01        .byte $01, $95, $10   ; 

- D 1 - I - 0x0052DD 01:B2CD: 82        .byte $82   ; 
- D 1 - I - 0x0052DE 01:B2CE: 42        .byte $42   ; 
- D 1 - I - 0x0052DF 01:B2CF: F9        .byte $F9, $97, $10   ; 
- D 1 - I - 0x0052E2 01:B2D2: F1        .byte $F1, $95, $10   ; 

- D 1 - I - 0x0052E5 01:B2D5: 81        .byte $81   ; 
- D 1 - I - 0x0052E6 01:B2D6: 02        .byte $02   ; 
- D 1 - I - 0x0052E7 01:B2D7: E9        .byte $E9, $95, $10   ; 

- D 1 - I - 0x0052EA 01:B2DA: 01        .byte $01   ; 
- D 1 - I - 0x0052EB 01:B2DB: 42        .byte $42   ; 
- D 1 - I - 0x0052EC 01:B2DC: E1        .byte $E1, $99, $10   ; 



off_08_B2DF_06:
- D 1 - I - 0x0052EF 01:B2DF: 88        .byte $88   ; counter
- D 1 - I - 0x0052F0 01:B2E0: 43        .byte $43   ; spr_A
- D 1 - I - 0x0052F1 01:B2E1: 19        .byte $19, $81, $F1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0052F4 01:B2E4: 11        .byte $11, $81, $F1   ; 
- D 1 - I - 0x0052F7 01:B2E7: 09        .byte $09, $81, $F1   ; 
- D 1 - I - 0x0052FA 01:B2EA: 01        .byte $01, $81, $F1   ; 
- D 1 - I - 0x0052FD 01:B2ED: 19        .byte $19, $83, $01   ; 
- D 1 - I - 0x005300 01:B2F0: 11        .byte $11, $83, $01   ; 
- D 1 - I - 0x005303 01:B2F3: 09        .byte $09, $83, $01   ; 
- D 1 - I - 0x005306 01:B2F6: 01        .byte $01, $83, $01   ; 

- D 1 - I - 0x005309 01:B2F9: 85        .byte $85   ; 
- D 1 - I - 0x00530A 01:B2FA: 42        .byte $42   ; 
- D 1 - I - 0x00530B 01:B2FB: F9        .byte $F9, $85, $F1   ; 
- D 1 - I - 0x00530E 01:B2FE: F1        .byte $F1, $87, $F1   ; 
- D 1 - I - 0x005311 01:B301: E9        .byte $E9, $89, $F1   ; 
- D 1 - I - 0x005314 01:B304: E1        .byte $E1, $8B, $F1   ; 
- D 1 - I - 0x005317 01:B307: F9        .byte $F9, $8D, $01   ; 

- D 1 - I - 0x00531A 01:B30A: 82        .byte $82   ; 
- D 1 - I - 0x00531B 01:B30B: 43        .byte $43   ; 
- D 1 - I - 0x00531C 01:B30C: F1        .byte $F1, $8F, $01   ; 
- D 1 - I - 0x00531F 01:B30F: E9        .byte $E9, $91, $01   ; 

- D 1 - I - 0x005322 01:B312: 82        .byte $82   ; 
- D 1 - I - 0x005323 01:B313: 42        .byte $42   ; 
- D 1 - I - 0x005324 01:B314: E1        .byte $E1, $93, $01   ; 
- D 1 - I - 0x005327 01:B317: 19        .byte $19, $95, $12   ; 

- D 1 - I - 0x00532A 01:B31A: 81        .byte $81   ; 
- D 1 - I - 0x00532B 01:B31B: 02        .byte $02   ; 
- D 1 - I - 0x00532C 01:B31C: 11        .byte $11, $95, $12   ; 

- D 1 - I - 0x00532F 01:B31F: 81        .byte $81   ; 
- D 1 - I - 0x005330 01:B320: 42        .byte $42   ; 
- D 1 - I - 0x005331 01:B321: 09        .byte $09, $95, $11   ; 

- D 1 - I - 0x005334 01:B324: 81        .byte $81   ; 
- D 1 - I - 0x005335 01:B325: 02        .byte $02   ; 
- D 1 - I - 0x005336 01:B326: 01        .byte $01, $95, $11   ; 

- D 1 - I - 0x005339 01:B329: 82        .byte $82   ; 
- D 1 - I - 0x00533A 01:B32A: 42        .byte $42   ; 
- D 1 - I - 0x00533B 01:B32B: F9        .byte $F9, $97, $11   ; 
- D 1 - I - 0x00533E 01:B32E: F1        .byte $F1, $95, $11   ; 

- D 1 - I - 0x005341 01:B331: 81        .byte $81   ; 
- D 1 - I - 0x005342 01:B332: 02        .byte $02   ; 
- D 1 - I - 0x005343 01:B333: E9        .byte $E9, $95, $11   ; 

- D 1 - I - 0x005346 01:B336: 01        .byte $01   ; 
- D 1 - I - 0x005347 01:B337: 42        .byte $42   ; 
- D 1 - I - 0x005348 01:B338: E1        .byte $E1, $99, $11   ; 



off_08_B33B_07:
- D 1 - I - 0x00534B 01:B33B: 88        .byte $88   ; counter
- D 1 - I - 0x00534C 01:B33C: 43        .byte $43   ; spr_A
- D 1 - I - 0x00534D 01:B33D: 19        .byte $19, $81, $F0   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x005350 01:B340: 11        .byte $11, $81, $F0   ; 
- D 1 - I - 0x005353 01:B343: 09        .byte $09, $81, $F0   ; 
- D 1 - I - 0x005356 01:B346: 01        .byte $01, $81, $F0   ; 
- D 1 - I - 0x005359 01:B349: 19        .byte $19, $83, $00   ; 
- D 1 - I - 0x00535C 01:B34C: 11        .byte $11, $83, $00   ; 
- D 1 - I - 0x00535F 01:B34F: 09        .byte $09, $83, $00   ; 
- D 1 - I - 0x005362 01:B352: 01        .byte $01, $83, $00   ; 

- D 1 - I - 0x005365 01:B355: 85        .byte $85   ; 
- D 1 - I - 0x005366 01:B356: 42        .byte $42   ; 
- D 1 - I - 0x005367 01:B357: F9        .byte $F9, $85, $F0   ; 
- D 1 - I - 0x00536A 01:B35A: F1        .byte $F1, $87, $F0   ; 
- D 1 - I - 0x00536D 01:B35D: E9        .byte $E9, $89, $F0   ; 
- D 1 - I - 0x005370 01:B360: E1        .byte $E1, $8B, $F0   ; 
- D 1 - I - 0x005373 01:B363: F9        .byte $F9, $8D, $00   ; 

- D 1 - I - 0x005376 01:B366: 82        .byte $82   ; 
- D 1 - I - 0x005377 01:B367: 43        .byte $43   ; 
- D 1 - I - 0x005378 01:B368: F1        .byte $F1, $8F, $00   ; 
- D 1 - I - 0x00537B 01:B36B: E9        .byte $E9, $91, $00   ; 

- D 1 - I - 0x00537E 01:B36E: 82        .byte $82   ; 
- D 1 - I - 0x00537F 01:B36F: 42        .byte $42   ; 
- D 1 - I - 0x005380 01:B370: E1        .byte $E1, $93, $00   ; 
- D 1 - I - 0x005383 01:B373: 19        .byte $19, $95, $10   ; 

- D 1 - I - 0x005386 01:B376: 81        .byte $81   ; 
- D 1 - I - 0x005387 01:B377: 02        .byte $02   ; 
- D 1 - I - 0x005388 01:B378: 11        .byte $11, $95, $10   ; 

- D 1 - I - 0x00538B 01:B37B: 81        .byte $81   ; 
- D 1 - I - 0x00538C 01:B37C: 42        .byte $42   ; 
- D 1 - I - 0x00538D 01:B37D: 09        .byte $09, $95, $12   ; 

- D 1 - I - 0x005390 01:B380: 81        .byte $81   ; 
- D 1 - I - 0x005391 01:B381: 02        .byte $02   ; 
- D 1 - I - 0x005392 01:B382: 01        .byte $01, $95, $12   ; 

- D 1 - I - 0x005395 01:B385: 82        .byte $82   ; 
- D 1 - I - 0x005396 01:B386: 42        .byte $42   ; 
- D 1 - I - 0x005397 01:B387: F9        .byte $F9, $97, $10   ; 
- D 1 - I - 0x00539A 01:B38A: F1        .byte $F1, $95, $10   ; 

- D 1 - I - 0x00539D 01:B38D: 81        .byte $81   ; 
- D 1 - I - 0x00539E 01:B38E: 02        .byte $02   ; 
- D 1 - I - 0x00539F 01:B38F: E9        .byte $E9, $95, $10   ; 

- D 1 - I - 0x0053A2 01:B392: 01        .byte $01   ; 
- D 1 - I - 0x0053A3 01:B393: 42        .byte $42   ; 
- D 1 - I - 0x0053A4 01:B394: E1        .byte $E1, $99, $10   ; 



off_08_B397_08:
- D 1 - I - 0x0053A7 01:B397: 88        .byte $88   ; counter
- D 1 - I - 0x0053A8 01:B398: 43        .byte $43   ; spr_A
- D 1 - I - 0x0053A9 01:B399: 19        .byte $19, $81, $F1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0053AC 01:B39C: 11        .byte $11, $81, $F1   ; 
- D 1 - I - 0x0053AF 01:B39F: 09        .byte $09, $81, $F1   ; 
- D 1 - I - 0x0053B2 01:B3A2: 01        .byte $01, $81, $F1   ; 
- D 1 - I - 0x0053B5 01:B3A5: 19        .byte $19, $83, $01   ; 
- D 1 - I - 0x0053B8 01:B3A8: 11        .byte $11, $83, $01   ; 
- D 1 - I - 0x0053BB 01:B3AB: 09        .byte $09, $83, $01   ; 
- D 1 - I - 0x0053BE 01:B3AE: 01        .byte $01, $83, $01   ; 

- D 1 - I - 0x0053C1 01:B3B1: 85        .byte $85   ; 
- D 1 - I - 0x0053C2 01:B3B2: 42        .byte $42   ; 
- D 1 - I - 0x0053C3 01:B3B3: F9        .byte $F9, $85, $F1   ; 
- D 1 - I - 0x0053C6 01:B3B6: F1        .byte $F1, $87, $F1   ; 
- D 1 - I - 0x0053C9 01:B3B9: E9        .byte $E9, $89, $F1   ; 
- D 1 - I - 0x0053CC 01:B3BC: E1        .byte $E1, $8B, $F1   ; 
- D 1 - I - 0x0053CF 01:B3BF: F9        .byte $F9, $8D, $01   ; 

- D 1 - I - 0x0053D2 01:B3C2: 82        .byte $82   ; 
- D 1 - I - 0x0053D3 01:B3C3: 43        .byte $43   ; 
- D 1 - I - 0x0053D4 01:B3C4: F1        .byte $F1, $8F, $01   ; 
- D 1 - I - 0x0053D7 01:B3C7: E9        .byte $E9, $91, $01   ; 

- D 1 - I - 0x0053DA 01:B3CA: 82        .byte $82   ; 
- D 1 - I - 0x0053DB 01:B3CB: 42        .byte $42   ; 
- D 1 - I - 0x0053DC 01:B3CC: E1        .byte $E1, $93, $01   ; 
- D 1 - I - 0x0053DF 01:B3CF: 19        .byte $19, $95, $12   ; 

- D 1 - I - 0x0053E2 01:B3D2: 81        .byte $81   ; 
- D 1 - I - 0x0053E3 01:B3D3: 02        .byte $02   ; 
- D 1 - I - 0x0053E4 01:B3D4: 11        .byte $11, $95, $12   ; 

- D 1 - I - 0x0053E7 01:B3D7: 81        .byte $81   ; 
- D 1 - I - 0x0053E8 01:B3D8: 42        .byte $42   ; 
- D 1 - I - 0x0053E9 01:B3D9: 09        .byte $09, $95, $11   ; 

- D 1 - I - 0x0053EC 01:B3DC: 81        .byte $81   ; 
- D 1 - I - 0x0053ED 01:B3DD: 02        .byte $02   ; 
- D 1 - I - 0x0053EE 01:B3DE: 01        .byte $01, $95, $11   ; 

- D 1 - I - 0x0053F1 01:B3E1: 82        .byte $82   ; 
- D 1 - I - 0x0053F2 01:B3E2: 42        .byte $42   ; 
- D 1 - I - 0x0053F3 01:B3E3: F9        .byte $F9, $97, $11   ; 
- D 1 - I - 0x0053F6 01:B3E6: F1        .byte $F1, $95, $13   ; 

- D 1 - I - 0x0053F9 01:B3E9: 81        .byte $81   ; 
- D 1 - I - 0x0053FA 01:B3EA: 02        .byte $02   ; 
- D 1 - I - 0x0053FB 01:B3EB: E9        .byte $E9, $95, $13   ; 

- D 1 - I - 0x0053FE 01:B3EE: 01        .byte $01   ; 
- D 1 - I - 0x0053FF 01:B3EF: 42        .byte $42   ; 
- D 1 - I - 0x005400 01:B3F0: E1        .byte $E1, $99, $11   ; 



off_08_B3F3_09:
- D 1 - I - 0x005403 01:B3F3: 81        .byte $81   ; counter
- D 1 - I - 0x005404 01:B3F4: 01        .byte $01   ; spr_A
- D 1 - I - 0x005405 01:B3F5: F8        .byte $F8, $9B, $F8   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x005408 01:B3F8: 01        .byte $01   ; 
- D 1 - I - 0x005409 01:B3F9: 41        .byte $41   ; 
- D 1 - I - 0x00540A 01:B3FA: 00        .byte $00, $9B, $F8   ; 



off_08_B425_10:
- D 1 - I - 0x005435 01:B425: FF        .byte $FF   ; 
off_08_B3FD_0A:
- D 1 - I - 0x00540D 01:B3FD: 02        .byte $02   ; counter
- D 1 - I - 0x00540E 01:B3FE: 01        .byte $01   ; spr_A
- D 1 - I - 0x00540F 01:B3FF: F8        .byte $F8, $9D, $F8   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x005412 01:B402: 00        .byte $00, $9F, $F8   ; 



off_08_B422_0F:
- D 1 - I - 0x005432 01:B422: FF        .byte $FF   ; 
off_08_B405_0B:
- D 1 - I - 0x005415 01:B405: 02        .byte $02   ; counter
- D 1 - I - 0x005416 01:B406: 01        .byte $01   ; spr_A
- D 1 - I - 0x005417 01:B407: F8        .byte $F8, $A1, $F8   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x00541A 01:B40A: 00        .byte $00, $A3, $F8   ; 



off_08_B41F_0E:
- D 1 - I - 0x00542F 01:B41F: FF        .byte $FF   ; 
off_08_B40D_0C:
- D 1 - I - 0x00541D 01:B40D: 02        .byte $02   ; counter
- D 1 - I - 0x00541E 01:B40E: 01        .byte $01   ; spr_A
- D 1 - I - 0x00541F 01:B40F: F8        .byte $F8, $A5, $F8   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x005422 01:B412: 00        .byte $00, $A7, $F8   ; 



off_08_B415_0D:
- D 1 - I - 0x005425 01:B415: 81        .byte $81   ; counter
- D 1 - I - 0x005426 01:B416: 01        .byte $01   ; spr_A
- D 1 - I - 0x005427 01:B417: F8        .byte $F8, $A9, $F8   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x00542A 01:B41A: 01        .byte $01   ; 
- D 1 - I - 0x00542B 01:B41B: 41        .byte $41   ; 
- D 1 - I - 0x00542C 01:B41C: 00        .byte $00, $A9, $F8   ; 



off_08_B428_19:
- D 1 - I - 0x005438 01:B428: 82        .byte $82   ; counter
- D 1 - I - 0x005439 01:B429: 03        .byte $03   ; spr_A
- D 1 - I - 0x00543A 01:B42A: FE        .byte $FE, $87, $CA   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x00543D 01:B42D: FE        .byte $FE, $87, $DA   ; 

- D 1 - I - 0x005440 01:B430: 81        .byte $81   ; 
- D 1 - I - 0x005441 01:B431: 43        .byte $43   ; 
- D 1 - I - 0x005442 01:B432: FE        .byte $FE, $89, $0A   ; 

- D 1 - I - 0x005445 01:B435: 04        .byte $04   ; 
- D 1 - I - 0x005446 01:B436: 03        .byte $03   ; 
- D 1 - I - 0x005447 01:B437: FE        .byte $FE, $87, $1A   ; 
- D 1 - I - 0x00544A 01:B43A: FE        .byte $FE, $87, $2A   ; 
- D 1 - I - 0x00544D 01:B43D: FE        .byte $FE, $87, $3A   ; 
- D 1 - I - 0x005450 01:B440: FE        .byte $FE, $89, $EA   ; 



off_08_B443_1A:
- D 1 - I - 0x005453 01:B443: 81        .byte $81   ; counter
- D 1 - I - 0x005454 01:B444: 43        .byte $43   ; spr_A
- D 1 - I - 0x005455 01:B445: 06        .byte $06, $85, $F2   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x005458 01:B448: 81        .byte $81   ; 
- D 1 - I - 0x005459 01:B449: 83        .byte $83   ; 
- D 1 - I - 0x00545A 01:B44A: F6        .byte $F6, $85, $02   ; 

- D 1 - I - 0x00545D 01:B44D: 84        .byte $84   ; 
- D 1 - I - 0x00545E 01:B44E: 43        .byte $43   ; 
- D 1 - I - 0x00545F 01:B44F: 26        .byte $26, $85, $D2   ; 
- D 1 - I - 0x005462 01:B452: 1E        .byte $1E, $85, $DA   ; 
- D 1 - I - 0x005465 01:B455: 16        .byte $16, $85, $E2   ; 
- D 1 - I - 0x005468 01:B458: 0E        .byte $0E, $85, $EA   ; 

- D 1 - I - 0x00546B 01:B45B: 05        .byte $05   ; 
- D 1 - I - 0x00546C 01:B45C: 83        .byte $83   ; 
- D 1 - I - 0x00546D 01:B45D: EE        .byte $EE, $85, $0A   ; 
- D 1 - I - 0x005470 01:B460: E6        .byte $E6, $85, $12   ; 
- D 1 - I - 0x005473 01:B463: DE        .byte $DE, $85, $1A   ; 
- D 1 - I - 0x005476 01:B466: D6        .byte $D6, $85, $22   ; 
- D 1 - I - 0x005479 01:B469: CE        .byte $CE, $85, $2A   ; 



off_08_B46C_1B:
- D 1 - I - 0x00547C 01:B46C: 86        .byte $86   ; counter
- D 1 - I - 0x00547D 01:B46D: 03        .byte $03   ; spr_A
- D 1 - I - 0x00547E 01:B46E: 36        .byte $36, $8D, $FA   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x005481 01:B471: 2E        .byte $2E, $8D, $FA   ; 
- D 1 - I - 0x005484 01:B474: 26        .byte $26, $8D, $FA   ; 
- D 1 - I - 0x005487 01:B477: 1E        .byte $1E, $8D, $FA   ; 
- D 1 - I - 0x00548A 01:B47A: 16        .byte $16, $8B, $FA   ; 
- D 1 - I - 0x00548D 01:B47D: 0E        .byte $0E, $8B, $FA   ; 
- D 1 - I - 0x005490 01:B480: 81        .byte $81   ; 
- D 1 - I - 0x005491 01:B481: 83        .byte $83   ; 
- D 1 - I - 0x005492 01:B482: EE        .byte $EE, $8B, $F2   ; 

- D 1 - I - 0x005495 01:B485: 84        .byte $84   ; 
- D 1 - I - 0x005496 01:B486: 03        .byte $03   ; 
- D 1 - I - 0x005497 01:B487: DE        .byte $DE, $8D, $FA   ; 
- D 1 - I - 0x00549A 01:B48A: D6        .byte $D6, $8D, $FA   ; 
- D 1 - I - 0x00549D 01:B48D: CE        .byte $CE, $8D, $FA   ; 
- D 1 - I - 0x0054A0 01:B490: C6        .byte $C6, $8D, $FA   ; 

- D 1 - I - 0x0054A3 01:B493: 01        .byte $01   ; 
- D 1 - I - 0x0054A4 01:B494: 83        .byte $83   ; 
- D 1 - I - 0x0054A5 01:B495: E6        .byte $E6, $8B, $F2   ; 



off_08_B498_1C:
- D 1 - I - 0x0054A8 01:B498: 81        .byte $81   ; counter
- D 1 - I - 0x0054A9 01:B499: C3        .byte $C3   ; spr_A
- D 1 - I - 0x0054AA 01:B49A: 06        .byte $06, $85, $02   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0054AD 01:B49D: 81        .byte $81   ; 
- D 1 - I - 0x0054AE 01:B49E: 03        .byte $03   ; 
- D 1 - I - 0x0054AF 01:B49F: F6        .byte $F6, $85, $F2   ; 

- D 1 - I - 0x0054B2 01:B4A2: 85        .byte $85   ; 
- D 1 - I - 0x0054B3 01:B4A3: C3        .byte $C3   ; 
- D 1 - I - 0x0054B4 01:B4A4: 0E        .byte $0E, $85, $0A   ; 
- D 1 - I - 0x0054B7 01:B4A7: 16        .byte $16, $85, $12   ; 
- D 1 - I - 0x0054BA 01:B4AA: 1E        .byte $1E, $85, $1A   ; 
- D 1 - I - 0x0054BD 01:B4AD: 26        .byte $26, $85, $22   ; 
- D 1 - I - 0x0054C0 01:B4B0: 2E        .byte $2E, $85, $2A   ; 

- D 1 - I - 0x0054C3 01:B4B3: 04        .byte $04   ; 
- D 1 - I - 0x0054C4 01:B4B4: 03        .byte $03   ; 
- D 1 - I - 0x0054C5 01:B4B5: EE        .byte $EE, $85, $EA   ; 
- D 1 - I - 0x0054C8 01:B4B8: E6        .byte $E6, $85, $E2   ; 
- D 1 - I - 0x0054CB 01:B4BB: DE        .byte $DE, $85, $DA   ; 
- D 1 - I - 0x0054CE 01:B4BE: D6        .byte $D6, $85, $D2   ; 



off_08_B581_25:
- D 1 - I - 0x005591 01:B581: FF        .byte $FF   ; 
off_08_B4C1_1D:
- D 1 - I - 0x0054D1 01:B4C1: 82        .byte $82   ; counter
- D 1 - I - 0x0054D2 01:B4C2: 00        .byte $00   ; spr_A
- D 1 - I - 0x0054D3 01:B4C3: 05        .byte $05, $9D, $EA   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0054D6 01:B4C6: 0D        .byte $0D, $9F, $EA   ; 

- D 1 - I - 0x0054D9 01:B4C9: 82        .byte $82   ; 
- D 1 - I - 0x0054DA 01:B4CA: 42        .byte $42   ; 
- D 1 - I - 0x0054DB 01:B4CB: 10        .byte $10, $29, $FA   ; 
- D 1 - I - 0x0054DE 01:B4CE: 08        .byte $08, $2B, $FA   ; 

- D 1 - I - 0x0054E1 01:B4D1: 04        .byte $04   ; 
- D 1 - I - 0x0054E2 01:B4D2: 01        .byte $01   ; 
- D 1 - I - 0x0054E3 01:B4D3: F6        .byte $F6, $81, $E8   ; 
- D 1 - I - 0x0054E6 01:B4D6: FE        .byte $FE, $83, $E8   ; 
- D 1 - I - 0x0054E9 01:B4D9: F8        .byte $F8, $85, $F8   ; 
- D 1 - I - 0x0054EC 01:B4DC: 00        .byte $00, $87, $F8   ; 



off_08_B584_26:
- D 1 - I - 0x005594 01:B584: FF        .byte $FF   ; 
off_08_B4DF_1E:
- D 1 - I - 0x0054EF 01:B4DF: 82        .byte $82   ; counter
- D 1 - I - 0x0054F0 01:B4E0: 00        .byte $00   ; spr_A
- D 1 - I - 0x0054F1 01:B4E1: 07        .byte $07, $9D, $EA   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0054F4 01:B4E4: 0F        .byte $0F, $9F, $EA   ; 

- D 1 - I - 0x0054F7 01:B4E7: 82        .byte $82   ; 
- D 1 - I - 0x0054F8 01:B4E8: 42        .byte $42   ; 
- D 1 - I - 0x0054F9 01:B4E9: 10        .byte $10, $29, $FA   ; 
- D 1 - I - 0x0054FC 01:B4EC: 08        .byte $08, $2B, $FA   ; 

- D 1 - I - 0x0054FF 01:B4EF: 04        .byte $04   ; 
- D 1 - I - 0x005500 01:B4F0: 01        .byte $01   ; 
- D 1 - I - 0x005501 01:B4F1: F8        .byte $F8, $81, $E8   ; 
- D 1 - I - 0x005504 01:B4F4: 00        .byte $00, $83, $E8   ; 
- D 1 - I - 0x005507 01:B4F7: F8        .byte $F8, $85, $F8   ; 
- D 1 - I - 0x00550A 01:B4FA: 00        .byte $00, $87, $F8   ; 



off_08_B57B_23:
- D 1 - I - 0x00558B 01:B57B: FF        .byte $FF   ; 
off_08_B4FD_1F:
- D 1 - I - 0x00550D 01:B4FD: 82        .byte $82   ; counter
- D 1 - I - 0x00550E 01:B4FE: 00        .byte $00   ; spr_A
- D 1 - I - 0x00550F 01:B4FF: 06        .byte $06, $B1, $E5   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x005512 01:B502: 0E        .byte $0E, $B3, $E5   ; 

- D 1 - I - 0x005515 01:B505: 82        .byte $82   ; 
- D 1 - I - 0x005516 01:B506: 02        .byte $02   ; 
- D 1 - I - 0x005517 01:B507: 07        .byte $07, $2D, $F5   ; 
- D 1 - I - 0x00551A 01:B50A: 0F        .byte $0F, $2F, $F5   ; 

- D 1 - I - 0x00551D 01:B50D: 04        .byte $04   ; 
- D 1 - I - 0x00551E 01:B50E: 01        .byte $01   ; 
- D 1 - I - 0x00551F 01:B50F: F8        .byte $F8, $89, $E8   ; 
- D 1 - I - 0x005522 01:B512: 00        .byte $00, $8B, $E8   ; 
- D 1 - I - 0x005525 01:B515: F8        .byte $F8, $8D, $F8   ; 
- D 1 - I - 0x005528 01:B518: 00        .byte $00, $8F, $F8   ; 



off_08_B57E_24:
- D 1 - I - 0x00558E 01:B57E: FF        .byte $FF   ; 
off_08_B51B_20:
- D 1 - I - 0x00552B 01:B51B: 82        .byte $82   ; counter
- D 1 - I - 0x00552C 01:B51C: 00        .byte $00   ; spr_A
- D 1 - I - 0x00552D 01:B51D: 04        .byte $04, $B1, $E7   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x005530 01:B520: 0C        .byte $0C, $B3, $E7   ; 

- D 1 - I - 0x005533 01:B523: 82        .byte $82   ; 
- D 1 - I - 0x005534 01:B524: 02        .byte $02   ; 
- D 1 - I - 0x005535 01:B525: 07        .byte $07, $2D, $F5   ; 
- D 1 - I - 0x005538 01:B528: 0F        .byte $0F, $2F, $F5   ; 

- D 1 - I - 0x00553B 01:B52B: 04        .byte $04   ; 
- D 1 - I - 0x00553C 01:B52C: 01        .byte $01   ; 
- D 1 - I - 0x00553D 01:B52D: F9        .byte $F9, $89, $E8   ; 
- D 1 - I - 0x005540 01:B530: 01        .byte $01, $8B, $E8   ; 
- D 1 - I - 0x005543 01:B533: F8        .byte $F8, $8D, $F8   ; 
- D 1 - I - 0x005546 01:B536: 00        .byte $00, $8F, $F8   ; 



off_08_B539_21:
- D 1 - I - 0x005549 01:B539: 82        .byte $82   ; counter
- D 1 - I - 0x00554A 01:B53A: 00        .byte $00   ; spr_A
- D 1 - I - 0x00554B 01:B53B: FA        .byte $FA, $B5, $E3   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x00554E 01:B53E: 02        .byte $02, $B7, $E3   ; 

- D 1 - I - 0x005551 01:B541: 81        .byte $81   ; 
- D 1 - I - 0x005552 01:B542: 02        .byte $02   ; 
- D 1 - I - 0x005553 01:B543: 02        .byte $02, $2F, $F2   ; 

- D 1 - I - 0x005556 01:B546: 81        .byte $81   ; 
- D 1 - I - 0x005557 01:B547: 01        .byte $01   ; 
- D 1 - I - 0x005558 01:B548: F8        .byte $F8, $91, $E8   ; 

- D 1 - I - 0x00555B 01:B54B: 81        .byte $81   ; 
- D 1 - I - 0x00555C 01:B54C: 41        .byte $41   ; 
- D 1 - I - 0x00555D 01:B54D: 00        .byte $00, $91, $E8   ; 

- D 1 - I - 0x005560 01:B550: 81        .byte $81   ; 
- D 1 - I - 0x005561 01:B551: 01        .byte $01   ; 
- D 1 - I - 0x005562 01:B552: F8        .byte $F8, $93, $F8   ; 

- D 1 - I - 0x005565 01:B555: 01        .byte $01   ; 
- D 1 - I - 0x005566 01:B556: 41        .byte $41   ; 
- D 1 - I - 0x005567 01:B557: 00        .byte $00, $93, $F8   ; 



off_08_B55A_22:
- - - - - - 0x00556A 01:B55A: 82        .byte $82   ; counter
- - - - - - 0x00556B 01:B55B: 00        .byte $00   ; spr_A
- - - - - - 0x00556C 01:B55C: F9        .byte $F9, $B5, $E5   ; spr_X, spr_T, spr_Y
- - - - - - 0x00556F 01:B55F: 01        .byte $01, $B7, $E5   ; 

- - - - - - 0x005572 01:B562: 81        .byte $81   ; 
- - - - - - 0x005573 01:B563: 02        .byte $02   ; 
- - - - - - 0x005574 01:B564: 02        .byte $02, $2F, $F2   ; 

- - - - - - 0x005577 01:B567: 81        .byte $81   ; 
- - - - - - 0x005578 01:B568: 01        .byte $01   ; 
- - - - - - 0x005579 01:B569: F8        .byte $F8, $91, $E8   ; 

- - - - - - 0x00557C 01:B56C: 81        .byte $81   ; 
- - - - - - 0x00557D 01:B56D: 41        .byte $41   ; 
- - - - - - 0x00557E 01:B56E: 00        .byte $00, $91, $E8   ; 

- - - - - - 0x005581 01:B571: 81        .byte $81   ; 
- - - - - - 0x005582 01:B572: 01        .byte $01   ; 
- - - - - - 0x005583 01:B573: F8        .byte $F8, $93, $F8   ; 

- - - - - - 0x005586 01:B576: 01        .byte $01   ; 
- - - - - - 0x005587 01:B577: 41        .byte $41   ; 
- - - - - - 0x005588 01:B578: 00        .byte $00, $93, $F8   ; 



off_08_B603_2B:
- - - - - - 0x005613 01:B603: FF        .byte $FF   ; 
off_08_B587_27:
- D 1 - I - 0x005597 01:B587: 84        .byte $84   ; counter
- D 1 - I - 0x005598 01:B588: 01        .byte $01   ; spr_A
- D 1 - I - 0x005599 01:B589: 00        .byte $00, $97, $E8   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x00559C 01:B58C: F8        .byte $F8, $99, $F8   ; 
- D 1 - I - 0x00559F 01:B58F: 00        .byte $00, $9B, $F8   ; 
- D 1 - I - 0x0055A2 01:B592: F8        .byte $F8, $95, $E8   ; 

- D 1 - I - 0x0055A5 01:B595: 82        .byte $82   ; 
- D 1 - I - 0x0055A6 01:B596: 40        .byte $40   ; 
- D 1 - I - 0x0055A7 01:B597: F5        .byte $F5, $A7, $EF   ; 
- D 1 - I - 0x0055AA 01:B59A: ED        .byte $ED, $A9, $EF   ; 

- D 1 - I - 0x0055AD 01:B59D: 02        .byte $02   ; 
- D 1 - I - 0x0055AE 01:B59E: 02        .byte $02   ; 
- D 1 - I - 0x0055AF 01:B59F: EB        .byte $EB, $29, $FF   ; 
- D 1 - I - 0x0055B2 01:B5A2: F3        .byte $F3, $2B, $FF   ; 



off_08_B606_2C:
- - - - - - 0x005616 01:B606: FF        .byte $FF   ; 
off_08_B5A5_28:
- D 1 - I - 0x0055B5 01:B5A5: 84        .byte $84   ; counter
- D 1 - I - 0x0055B6 01:B5A6: 01        .byte $01   ; spr_A
- D 1 - I - 0x0055B7 01:B5A7: FF        .byte $FF, $97, $E8   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0055BA 01:B5AA: F8        .byte $F8, $99, $F8   ; 
- D 1 - I - 0x0055BD 01:B5AD: 00        .byte $00, $9B, $F8   ; 
- D 1 - I - 0x0055C0 01:B5B0: F7        .byte $F7, $95, $E8   ; 

- D 1 - I - 0x0055C3 01:B5B3: 82        .byte $82   ; 
- D 1 - I - 0x0055C4 01:B5B4: 40        .byte $40   ; 
- D 1 - I - 0x0055C5 01:B5B5: F4        .byte $F4, $A7, $F0   ; 
- D 1 - I - 0x0055C8 01:B5B8: EC        .byte $EC, $A9, $F0   ; 

- D 1 - I - 0x0055CB 01:B5BB: 02        .byte $02   ; 
- D 1 - I - 0x0055CC 01:B5BC: 02        .byte $02   ; 
- D 1 - I - 0x0055CD 01:B5BD: EB        .byte $EB, $29, $FF   ; 
- D 1 - I - 0x0055D0 01:B5C0: F3        .byte $F3, $2B, $FF   ; 



off_08_B5C3_29:
- D 1 - I - 0x0055D3 01:B5C3: 82        .byte $82   ; counter
- D 1 - I - 0x0055D4 01:B5C4: 01        .byte $01   ; spr_A
- D 1 - I - 0x0055D5 01:B5C5: F8        .byte $F8, $91, $E8   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0055D8 01:B5C8: F8        .byte $F8, $93, $F8   ; 

- D 1 - I - 0x0055DB 01:B5CB: 82        .byte $82   ; 
- D 1 - I - 0x0055DC 01:B5CC: 41        .byte $41   ; 
- D 1 - I - 0x0055DD 01:B5CD: 00        .byte $00, $91, $E8   ; 
- D 1 - I - 0x0055E0 01:B5D0: 00        .byte $00, $93, $F8   ; 

- D 1 - I - 0x0055E3 01:B5D3: 82        .byte $82   ; 
- D 1 - I - 0x0055E4 01:B5D4: 00        .byte $00   ; 
- D 1 - I - 0x0055E5 01:B5D5: F8        .byte $F8, $A3, $F5   ; 
- D 1 - I - 0x0055E8 01:B5D8: 00        .byte $00, $A5, $F5   ; 

- D 1 - I - 0x0055EB 01:B5DB: 02        .byte $02   ; 
- D 1 - I - 0x0055EC 01:B5DC: 02        .byte $02   ; 
- D 1 - I - 0x0055ED 01:B5DD: F8        .byte $F8, $29, $05   ; 
- D 1 - I - 0x0055F0 01:B5E0: 00        .byte $00, $2B, $05   ; 



off_08_B5E3_2A:
- D 1 - I - 0x0055F3 01:B5E3: 82        .byte $82   ; counter
- D 1 - I - 0x0055F4 01:B5E4: 01        .byte $01   ; spr_A
- D 1 - I - 0x0055F5 01:B5E5: F8        .byte $F8, $91, $EA   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0055F8 01:B5E8: F8        .byte $F8, $93, $F8   ; 

- D 1 - I - 0x0055FB 01:B5EB: 82        .byte $82   ; 
- D 1 - I - 0x0055FC 01:B5EC: 41        .byte $41   ; 
- D 1 - I - 0x0055FD 01:B5ED: 00        .byte $00, $91, $EA   ; 
- D 1 - I - 0x005600 01:B5F0: 00        .byte $00, $93, $F8   ; 

- D 1 - I - 0x005603 01:B5F3: 82        .byte $82   ; 
- D 1 - I - 0x005604 01:B5F4: 00        .byte $00   ; 
- D 1 - I - 0x005605 01:B5F5: F7        .byte $F7, $A3, $F6   ; 
- D 1 - I - 0x005608 01:B5F8: FF        .byte $FF, $A5, $F6   ; 

- D 1 - I - 0x00560B 01:B5FB: 02        .byte $02   ; 
- D 1 - I - 0x00560C 01:B5FC: 02        .byte $02   ; 
- D 1 - I - 0x00560D 01:B5FD: F8        .byte $F8, $29, $05   ; 
- D 1 - I - 0x005610 01:B600: 00        .byte $00, $2B, $05   ; 



off_08_B609_2D:
off_08_B609_2E:
- - - - - - 0x005619 01:B609: 84        .byte $84   ; counter
- - - - - - 0x00561A 01:B60A: 41        .byte $41   ; spr_A
- - - - - - 0x00561B 01:B60B: 3A        .byte $3A, $81, $30   ; spr_X, spr_T, spr_Y
- - - - - - 0x00561E 01:B60E: 32        .byte $32, $83, $30   ; 
- - - - - - 0x005621 01:B611: 38        .byte $38, $85, $40   ; 
- - - - - - 0x005624 01:B614: 30        .byte $30, $87, $40   ; 

- - - - - - 0x005627 01:B617: 82        .byte $82   ; 
- - - - - - 0x005628 01:B618: 40        .byte $40   ; 
- - - - - - 0x005629 01:B619: 29        .byte $29, $9D, $32   ; 
- - - - - - 0x00562C 01:B61C: 21        .byte $21, $9F, $32   ; 

- - - - - - 0x00562F 01:B61F: 02        .byte $02   ; 
- - - - - - 0x005630 01:B620: 02        .byte $02   ; 
- - - - - - 0x005631 01:B621: 20        .byte $20, $29, $42   ; 
- - - - - - 0x005634 01:B624: 28        .byte $28, $2B, $42   ; 



off_08_B627_2F:
- - - - - - 0x005637 01:B627: 82        .byte $82   ; counter
- - - - - - 0x005638 01:B628: 01        .byte $01   ; spr_A
- - - - - - 0x005639 01:B629: 30        .byte $30, $91, $30   ; spr_X, spr_T, spr_Y
- - - - - - 0x00563C 01:B62C: 30        .byte $30, $93, $40   ; 

- - - - - - 0x00563F 01:B62F: 82        .byte $82   ; 
- - - - - - 0x005640 01:B630: 41        .byte $41   ; 
- - - - - - 0x005641 01:B631: 38        .byte $38, $91, $30   ; 
- - - - - - 0x005644 01:B634: 38        .byte $38, $93, $40   ; 

- - - - - - 0x005647 01:B637: 82        .byte $82   ; 
- - - - - - 0x005648 01:B638: 00        .byte $00   ; 
- - - - - - 0x005649 01:B639: 30        .byte $30, $A3, $3D   ; 
- - - - - - 0x00564C 01:B63C: 38        .byte $38, $A5, $3D   ; 

- - - - - - 0x00564F 01:B63F: 02        .byte $02   ; 
- - - - - - 0x005650 01:B640: 02        .byte $02   ; 
- - - - - - 0x005651 01:B641: 30        .byte $30, $29, $4D   ; 
- - - - - - 0x005654 01:B644: 38        .byte $38, $2B, $4D   ; 



off_08_B647_30:
off_08_B647_31:
- D 1 - I - 0x005657 01:B647: 8C        .byte $8C   ; counter
- D 1 - I - 0x005658 01:B648: 02        .byte $02   ; spr_A
- D 1 - I - 0x005659 01:B649: 01        .byte $01, $81, $D1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x00565C 01:B64C: 09        .byte $09, $83, $D1   ; 
- D 1 - I - 0x00565F 01:B64F: 01        .byte $01, $85, $E1   ; 
- D 1 - I - 0x005662 01:B652: 09        .byte $09, $87, $E1   ; 
- D 1 - I - 0x005665 01:B655: 01        .byte $01, $89, $F1   ; 
- D 1 - I - 0x005668 01:B658: 09        .byte $09, $8B, $F1   ; 
- D 1 - I - 0x00566B 01:B65B: 01        .byte $01, $89, $01   ; 
- D 1 - I - 0x00566E 01:B65E: 09        .byte $09, $8B, $01   ; 
- D 1 - I - 0x005671 01:B661: 09        .byte $09, $8D, $11   ; 
- D 1 - I - 0x005674 01:B664: 09        .byte $09, $91, $21   ; 
- D 1 - I - 0x005677 01:B667: 01        .byte $01, $89, $11   ; 
- D 1 - I - 0x00567A 01:B66A: 01        .byte $01, $8F, $21   ; 

- D 1 - I - 0x00567D 01:B66D: 8C        .byte $8C   ; 
- D 1 - I - 0x00567E 01:B66E: 42        .byte $42   ; 
- D 1 - I - 0x00567F 01:B66F: F9        .byte $F9, $81, $D1   ; 
- D 1 - I - 0x005682 01:B672: F1        .byte $F1, $83, $D1   ; 
- D 1 - I - 0x005685 01:B675: F9        .byte $F9, $85, $E1   ; 
- D 1 - I - 0x005688 01:B678: F1        .byte $F1, $87, $E1   ; 
- D 1 - I - 0x00568B 01:B67B: F9        .byte $F9, $89, $F1   ; 
- D 1 - I - 0x00568E 01:B67E: F1        .byte $F1, $8B, $F1   ; 
- D 1 - I - 0x005691 01:B681: F9        .byte $F9, $89, $01   ; 
- D 1 - I - 0x005694 01:B684: F1        .byte $F1, $8B, $01   ; 
- D 1 - I - 0x005697 01:B687: F1        .byte $F1, $8D, $11   ; 
- D 1 - I - 0x00569A 01:B68A: F9        .byte $F9, $89, $11   ; 
- D 1 - I - 0x00569D 01:B68D: F1        .byte $F1, $91, $21   ; 
- D 1 - I - 0x0056A0 01:B690: F9        .byte $F9, $8F, $21   ; 

- D 1 - I - 0x0056A3 01:B693: 81        .byte $81   ; 
- D 1 - I - 0x0056A4 01:B694: 02        .byte $02   ; 
- D 1 - I - 0x0056A5 01:B695: F9        .byte $F9, $93, $31   ; 

- D 1 - I - 0x0056A8 01:B698: 01        .byte $01   ; 
- D 1 - I - 0x0056A9 01:B699: 42        .byte $42   ; 
- D 1 - I - 0x0056AA 01:B69A: 01        .byte $01, $93, $31   ; 



off_08_B69D_32:
- D 1 - I - 0x0056AD 01:B69D: 8C        .byte $8C   ; counter
- D 1 - I - 0x0056AE 01:B69E: 02        .byte $02   ; spr_A
- D 1 - I - 0x0056AF 01:B69F: 00        .byte $00, $81, $D2   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0056B2 01:B6A2: 08        .byte $08, $83, $D2   ; 
- D 1 - I - 0x0056B5 01:B6A5: 00        .byte $00, $85, $E2   ; 
- D 1 - I - 0x0056B8 01:B6A8: 08        .byte $08, $87, $E2   ; 
- D 1 - I - 0x0056BB 01:B6AB: 00        .byte $00, $89, $F2   ; 
- D 1 - I - 0x0056BE 01:B6AE: 08        .byte $08, $8B, $F2   ; 
- D 1 - I - 0x0056C1 01:B6B1: 00        .byte $00, $89, $02   ; 
- D 1 - I - 0x0056C4 01:B6B4: 08        .byte $08, $8B, $02   ; 
- D 1 - I - 0x0056C7 01:B6B7: 08        .byte $08, $8D, $12   ; 
- D 1 - I - 0x0056CA 01:B6BA: 08        .byte $08, $91, $22   ; 
- D 1 - I - 0x0056CD 01:B6BD: 00        .byte $00, $89, $12   ; 
- D 1 - I - 0x0056D0 01:B6C0: 00        .byte $00, $8F, $22   ; 

- D 1 - I - 0x0056D3 01:B6C3: 8C        .byte $8C   ; 
- D 1 - I - 0x0056D4 01:B6C4: 42        .byte $42   ; 
- D 1 - I - 0x0056D5 01:B6C5: F8        .byte $F8, $81, $D2   ; 
- D 1 - I - 0x0056D8 01:B6C8: F0        .byte $F0, $83, $D2   ; 
- D 1 - I - 0x0056DB 01:B6CB: F8        .byte $F8, $85, $E2   ; 
- D 1 - I - 0x0056DE 01:B6CE: F0        .byte $F0, $87, $E2   ; 
- D 1 - I - 0x0056E1 01:B6D1: F8        .byte $F8, $89, $F2   ; 
- D 1 - I - 0x0056E4 01:B6D4: F0        .byte $F0, $8B, $F2   ; 
- D 1 - I - 0x0056E7 01:B6D7: F8        .byte $F8, $89, $02   ; 
- D 1 - I - 0x0056EA 01:B6DA: F0        .byte $F0, $8B, $02   ; 
- D 1 - I - 0x0056ED 01:B6DD: F0        .byte $F0, $8D, $12   ; 
- D 1 - I - 0x0056F0 01:B6E0: F8        .byte $F8, $89, $12   ; 
- D 1 - I - 0x0056F3 01:B6E3: F0        .byte $F0, $91, $22   ; 
- D 1 - I - 0x0056F6 01:B6E6: F8        .byte $F8, $8F, $22   ; 

- D 1 - I - 0x0056F9 01:B6E9: 81        .byte $81   ; 
- D 1 - I - 0x0056FA 01:B6EA: 02        .byte $02   ; 
- D 1 - I - 0x0056FB 01:B6EB: F9        .byte $F9, $95, $31   ; 

- D 1 - I - 0x0056FE 01:B6EE: 81        .byte $81   ; 
- D 1 - I - 0x0056FF 01:B6EF: 42        .byte $42   ; 
- D 1 - I - 0x005700 01:B6F0: 01        .byte $01, $95, $31   ; 

- D 1 - I - 0x005703 01:B6F3: 81        .byte $81   ; 
- D 1 - I - 0x005704 01:B6F4: 02        .byte $02   ; 
- D 1 - I - 0x005705 01:B6F5: F9        .byte $F9, $93, $41   ; 

- D 1 - I - 0x005708 01:B6F8: 01        .byte $01   ; 
- D 1 - I - 0x005709 01:B6F9: 42        .byte $42   ; 
- D 1 - I - 0x00570A 01:B6FA: 01        .byte $01, $93, $41   ; 



off_08_B6FD_33:
- D 1 - I - 0x00570D 01:B6FD: 8C        .byte $8C   ; counter
- D 1 - I - 0x00570E 01:B6FE: 02        .byte $02   ; spr_A
- D 1 - I - 0x00570F 01:B6FF: 01        .byte $01, $81, $D1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x005712 01:B702: 09        .byte $09, $83, $D1   ; 
- D 1 - I - 0x005715 01:B705: 01        .byte $01, $85, $E1   ; 
- D 1 - I - 0x005718 01:B708: 09        .byte $09, $87, $E1   ; 
- D 1 - I - 0x00571B 01:B70B: 01        .byte $01, $89, $F1   ; 
- D 1 - I - 0x00571E 01:B70E: 09        .byte $09, $8B, $F1   ; 
- D 1 - I - 0x005721 01:B711: 01        .byte $01, $89, $01   ; 
- D 1 - I - 0x005724 01:B714: 09        .byte $09, $8B, $01   ; 
- D 1 - I - 0x005727 01:B717: 09        .byte $09, $8D, $11   ; 
- D 1 - I - 0x00572A 01:B71A: 09        .byte $09, $91, $21   ; 
- D 1 - I - 0x00572D 01:B71D: 01        .byte $01, $89, $11   ; 
- D 1 - I - 0x005730 01:B720: 01        .byte $01, $8F, $21   ; 

- D 1 - I - 0x005733 01:B723: 8C        .byte $8C   ; 
- D 1 - I - 0x005734 01:B724: 42        .byte $42   ; 
- D 1 - I - 0x005735 01:B725: F9        .byte $F9, $81, $D1   ; 
- D 1 - I - 0x005738 01:B728: F1        .byte $F1, $83, $D1   ; 
- D 1 - I - 0x00573B 01:B72B: F9        .byte $F9, $85, $E1   ; 
- D 1 - I - 0x00573E 01:B72E: F1        .byte $F1, $87, $E1   ; 
- D 1 - I - 0x005741 01:B731: F9        .byte $F9, $89, $F1   ; 
- D 1 - I - 0x005744 01:B734: F1        .byte $F1, $8B, $F1   ; 
- D 1 - I - 0x005747 01:B737: F9        .byte $F9, $89, $01   ; 
- D 1 - I - 0x00574A 01:B73A: F1        .byte $F1, $8B, $01   ; 
- D 1 - I - 0x00574D 01:B73D: F1        .byte $F1, $8D, $11   ; 
- D 1 - I - 0x005750 01:B740: F9        .byte $F9, $89, $11   ; 
- D 1 - I - 0x005753 01:B743: F1        .byte $F1, $91, $21   ; 
- D 1 - I - 0x005756 01:B746: F9        .byte $F9, $8F, $21   ; 

- D 1 - I - 0x005759 01:B749: 81        .byte $81   ; 
- D 1 - I - 0x00575A 01:B74A: 02        .byte $02   ; 
- D 1 - I - 0x00575B 01:B74B: F9        .byte $F9, $97, $31   ; 

- D 1 - I - 0x00575E 01:B74E: 81        .byte $81   ; 
- D 1 - I - 0x00575F 01:B74F: 42        .byte $42   ; 
- D 1 - I - 0x005760 01:B750: 01        .byte $01, $97, $31   ; 

- D 1 - I - 0x005763 01:B753: 81        .byte $81   ; 
- D 1 - I - 0x005764 01:B754: 02        .byte $02   ; 
- D 1 - I - 0x005765 01:B755: F9        .byte $F9, $99, $41   ; 

- D 1 - I - 0x005768 01:B758: 81        .byte $81   ; 
- D 1 - I - 0x005769 01:B759: 42        .byte $42   ; 
- D 1 - I - 0x00576A 01:B75A: 01        .byte $01, $99, $41   ; 

- D 1 - I - 0x00576D 01:B75D: 81        .byte $81   ; 
- D 1 - I - 0x00576E 01:B75E: 02        .byte $02   ; 
- D 1 - I - 0x00576F 01:B75F: F1        .byte $F1, $97, $41   ; 

- D 1 - I - 0x005772 01:B762: 01        .byte $01   ; 
- D 1 - I - 0x005773 01:B763: 42        .byte $42   ; 
- D 1 - I - 0x005774 01:B764: 09        .byte $09, $97, $41   ; 



off_08_B767_34:
- D 1 - I - 0x005777 01:B767: 8C        .byte $8C   ; counter
- D 1 - I - 0x005778 01:B768: 02        .byte $02   ; spr_A
- D 1 - I - 0x005779 01:B769: 02        .byte $02, $81, $D2   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x00577C 01:B76C: 0A        .byte $0A, $83, $D2   ; 
- D 1 - I - 0x00577F 01:B76F: 02        .byte $02, $85, $E2   ; 
- D 1 - I - 0x005782 01:B772: 0A        .byte $0A, $87, $E2   ; 
- D 1 - I - 0x005785 01:B775: 02        .byte $02, $89, $F2   ; 
- D 1 - I - 0x005788 01:B778: 0A        .byte $0A, $8B, $F2   ; 
- D 1 - I - 0x00578B 01:B77B: 02        .byte $02, $89, $02   ; 
- D 1 - I - 0x00578E 01:B77E: 0A        .byte $0A, $8B, $02   ; 
- D 1 - I - 0x005791 01:B781: 0A        .byte $0A, $8D, $12   ; 
- D 1 - I - 0x005794 01:B784: 0A        .byte $0A, $91, $22   ; 
- D 1 - I - 0x005797 01:B787: 02        .byte $02, $89, $12   ; 
- D 1 - I - 0x00579A 01:B78A: 02        .byte $02, $8F, $22   ; 

- D 1 - I - 0x00579D 01:B78D: 8C        .byte $8C   ; 
- D 1 - I - 0x00579E 01:B78E: 42        .byte $42   ; 
- D 1 - I - 0x00579F 01:B78F: FA        .byte $FA, $81, $D2   ; 
- D 1 - I - 0x0057A2 01:B792: F2        .byte $F2, $83, $D2   ; 
- D 1 - I - 0x0057A5 01:B795: FA        .byte $FA, $85, $E2   ; 
- D 1 - I - 0x0057A8 01:B798: F2        .byte $F2, $87, $E2   ; 
- D 1 - I - 0x0057AB 01:B79B: FA        .byte $FA, $89, $F2   ; 
- D 1 - I - 0x0057AE 01:B79E: F2        .byte $F2, $8B, $F2   ; 
- D 1 - I - 0x0057B1 01:B7A1: FA        .byte $FA, $89, $02   ; 
- D 1 - I - 0x0057B4 01:B7A4: F2        .byte $F2, $8B, $02   ; 
- D 1 - I - 0x0057B7 01:B7A7: F2        .byte $F2, $8D, $12   ; 
- D 1 - I - 0x0057BA 01:B7AA: FA        .byte $FA, $89, $12   ; 
- D 1 - I - 0x0057BD 01:B7AD: F2        .byte $F2, $91, $22   ; 
- D 1 - I - 0x0057C0 01:B7B0: FA        .byte $FA, $8F, $22   ; 

- D 1 - I - 0x0057C3 01:B7B3: 81        .byte $81   ; 
- D 1 - I - 0x0057C4 01:B7B4: 02        .byte $02   ; 
- D 1 - I - 0x0057C5 01:B7B5: F9        .byte $F9, $97, $39   ; 

- D 1 - I - 0x0057C8 01:B7B8: 81        .byte $81   ; 
- D 1 - I - 0x0057C9 01:B7B9: 42        .byte $42   ; 
- D 1 - I - 0x0057CA 01:B7BA: 01        .byte $01, $97, $39   ; 

- D 1 - I - 0x0057CD 01:B7BD: 81        .byte $81   ; 
- D 1 - I - 0x0057CE 01:B7BE: 02        .byte $02   ; 
- D 1 - I - 0x0057CF 01:B7BF: F1        .byte $F1, $97, $41   ; 

- D 1 - I - 0x0057D2 01:B7C2: 01        .byte $01   ; 
- D 1 - I - 0x0057D3 01:B7C3: 42        .byte $42   ; 
- D 1 - I - 0x0057D4 01:B7C4: 09        .byte $09, $97, $41   ; 



off_08_B7C7_35:
- D 1 - I - 0x0057D7 01:B7C7: 8C        .byte $8C   ; counter
- D 1 - I - 0x0057D8 01:B7C8: 02        .byte $02   ; spr_A
- D 1 - I - 0x0057D9 01:B7C9: 00        .byte $00, $81, $D2   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0057DC 01:B7CC: 08        .byte $08, $83, $D2   ; 
- D 1 - I - 0x0057DF 01:B7CF: 00        .byte $00, $85, $E2   ; 
- D 1 - I - 0x0057E2 01:B7D2: 08        .byte $08, $87, $E2   ; 
- D 1 - I - 0x0057E5 01:B7D5: 00        .byte $00, $89, $F2   ; 
- D 1 - I - 0x0057E8 01:B7D8: 08        .byte $08, $8B, $F2   ; 
- D 1 - I - 0x0057EB 01:B7DB: 00        .byte $00, $89, $02   ; 
- D 1 - I - 0x0057EE 01:B7DE: 08        .byte $08, $8B, $02   ; 
- D 1 - I - 0x0057F1 01:B7E1: 08        .byte $08, $8D, $12   ; 
- D 1 - I - 0x0057F4 01:B7E4: 08        .byte $08, $91, $22   ; 
- D 1 - I - 0x0057F7 01:B7E7: 00        .byte $00, $89, $12   ; 
- D 1 - I - 0x0057FA 01:B7EA: 00        .byte $00, $8F, $22   ; 

- D 1 - I - 0x0057FD 01:B7ED: 8C        .byte $8C   ; 
- D 1 - I - 0x0057FE 01:B7EE: 42        .byte $42   ; 
- D 1 - I - 0x0057FF 01:B7EF: F8        .byte $F8, $81, $D2   ; 
- D 1 - I - 0x005802 01:B7F2: F0        .byte $F0, $83, $D2   ; 
- D 1 - I - 0x005805 01:B7F5: F8        .byte $F8, $85, $E2   ; 
- D 1 - I - 0x005808 01:B7F8: F0        .byte $F0, $87, $E2   ; 
- D 1 - I - 0x00580B 01:B7FB: F8        .byte $F8, $89, $F2   ; 
- D 1 - I - 0x00580E 01:B7FE: F0        .byte $F0, $8B, $F2   ; 
- D 1 - I - 0x005811 01:B801: F8        .byte $F8, $89, $02   ; 
- D 1 - I - 0x005814 01:B804: F0        .byte $F0, $8B, $02   ; 
- D 1 - I - 0x005817 01:B807: F0        .byte $F0, $8D, $12   ; 
- D 1 - I - 0x00581A 01:B80A: F8        .byte $F8, $89, $12   ; 
- D 1 - I - 0x00581D 01:B80D: F0        .byte $F0, $91, $22   ; 
- D 1 - I - 0x005820 01:B810: F8        .byte $F8, $8F, $22   ; 

- D 1 - I - 0x005823 01:B813: 81        .byte $81   ; 
- D 1 - I - 0x005824 01:B814: 02        .byte $02   ; 
- D 1 - I - 0x005825 01:B815: F9        .byte $F9, $97, $41   ; 

- D 1 - I - 0x005828 01:B818: 01        .byte $01   ; 
- D 1 - I - 0x005829 01:B819: 42        .byte $42   ; 
- D 1 - I - 0x00582A 01:B81A: 01        .byte $01, $97, $41   ; 



off_08_B81D_36:
- D 1 - I - 0x00582D 01:B81D: 82        .byte $82   ; counter
- D 1 - I - 0x00582E 01:B81E: 03        .byte $03   ; spr_A
- D 1 - I - 0x00582F 01:B81F: F1        .byte $F1, $9B, $F1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x005832 01:B822: F9        .byte $F9, $9D, $F1   ; 

- D 1 - I - 0x005835 01:B825: 82        .byte $82   ; 
- D 1 - I - 0x005836 01:B826: 43        .byte $43   ; 
- D 1 - I - 0x005837 01:B827: 09        .byte $09, $9B, $F1   ; 
- D 1 - I - 0x00583A 01:B82A: 01        .byte $01, $9D, $F1   ; 

- D 1 - I - 0x00583D 01:B82D: 82        .byte $82   ; 
- D 1 - I - 0x00583E 01:B82E: 83        .byte $83   ; 
- D 1 - I - 0x00583F 01:B82F: F1        .byte $F1, $9B, $01   ; 
- D 1 - I - 0x005842 01:B832: F9        .byte $F9, $9D, $01   ; 

- D 1 - I - 0x005845 01:B835: 03        .byte $03   ; 
- D 1 - I - 0x005846 01:B836: C3        .byte $C3   ; 
- D 1 - I - 0x005847 01:B837: F9        .byte $F9, $9D, $01   ; 
- D 1 - I - 0x00584A 01:B83A: 09        .byte $09, $9B, $01   ; 
- D 1 - I - 0x00584D 01:B83D: 01        .byte $01, $9D, $01   ; 



off_08_B840_37:
- D 1 - I - 0x005850 01:B840: 81        .byte $81   ; counter
- D 1 - I - 0x005851 01:B841: 03        .byte $03   ; spr_A
- D 1 - I - 0x005852 01:B842: F9        .byte $F9, $9F, $F1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x005855 01:B845: 81        .byte $81   ; 
- D 1 - I - 0x005856 01:B846: 43        .byte $43   ; 
- D 1 - I - 0x005857 01:B847: 01        .byte $01, $9F, $F1   ; 

- D 1 - I - 0x00585A 01:B84A: 81        .byte $81   ; 
- D 1 - I - 0x00585B 01:B84B: 83        .byte $83   ; 
- D 1 - I - 0x00585C 01:B84C: F9        .byte $F9, $9F, $01   ; 

- D 1 - I - 0x00585F 01:B84F: 81        .byte $81   ; 
- D 1 - I - 0x005860 01:B850: C3        .byte $C3   ; 
- D 1 - I - 0x005861 01:B851: 01        .byte $01, $9F, $01   ; 

- D 1 - I - 0x005864 01:B854: 82        .byte $82   ; 
- D 1 - I - 0x005865 01:B855: 03        .byte $03   ; 
- D 1 - I - 0x005866 01:B856: E9        .byte $E9, $9B, $F1   ; 
- D 1 - I - 0x005869 01:B859: F1        .byte $F1, $9D, $F1   ; 

- D 1 - I - 0x00586C 01:B85C: 82        .byte $82   ; 
- D 1 - I - 0x00586D 01:B85D: 43        .byte $43   ; 
- D 1 - I - 0x00586E 01:B85E: 09        .byte $09, $9D, $F1   ; 
- D 1 - I - 0x005871 01:B861: 11        .byte $11, $9B, $F1   ; 

- D 1 - I - 0x005874 01:B864: 82        .byte $82   ; 
- D 1 - I - 0x005875 01:B865: 83        .byte $83   ; 
- D 1 - I - 0x005876 01:B866: E9        .byte $E9, $9B, $01   ; 
- D 1 - I - 0x005879 01:B869: F1        .byte $F1, $9D, $01   ; 

- D 1 - I - 0x00587C 01:B86C: 02        .byte $02   ; 
- D 1 - I - 0x00587D 01:B86D: C3        .byte $C3   ; 
- D 1 - I - 0x00587E 01:B86E: 11        .byte $11, $9B, $01   ; 
- D 1 - I - 0x005881 01:B871: 09        .byte $09, $9D, $01   ; 



off_08_B874_38:
- D 1 - I - 0x005884 01:B874: 81        .byte $81   ; counter
- D 1 - I - 0x005885 01:B875: 03        .byte $03   ; spr_A
- D 1 - I - 0x005886 01:B876: F9        .byte $F9, $A1, $F1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x005889 01:B879: 81        .byte $81   ; 
- D 1 - I - 0x00588A 01:B87A: 43        .byte $43   ; 
- D 1 - I - 0x00588B 01:B87B: 01        .byte $01, $A1, $F1   ; 

- D 1 - I - 0x00588E 01:B87E: 81        .byte $81   ; 
- D 1 - I - 0x00588F 01:B87F: 03        .byte $03   ; 
- D 1 - I - 0x005890 01:B880: F9        .byte $F9, $A5, $01   ; 

- D 1 - I - 0x005893 01:B883: 01        .byte $01   ; 
- D 1 - I - 0x005894 01:B884: 43        .byte $43   ; 
- D 1 - I - 0x005895 01:B885: 01        .byte $01, $A5, $01   ; 



off_08_B888_39:
- D 1 - I - 0x005898 01:B888: 81        .byte $81   ; counter
- D 1 - I - 0x005899 01:B889: 03        .byte $03   ; spr_A
- D 1 - I - 0x00589A 01:B88A: F9        .byte $F9, $A1, $F1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x00589D 01:B88D: 81        .byte $81   ; 
- D 1 - I - 0x00589E 01:B88E: 43        .byte $43   ; 
- D 1 - I - 0x00589F 01:B88F: 01        .byte $01, $A1, $F1   ; 

- D 1 - I - 0x0058A2 01:B892: 82        .byte $82   ; 
- D 1 - I - 0x0058A3 01:B893: 03        .byte $03   ; 
- D 1 - I - 0x0058A4 01:B894: F9        .byte $F9, $A3, $01   ; 
- D 1 - I - 0x0058A7 01:B897: F9        .byte $F9, $A5, $11   ; 

- D 1 - I - 0x0058AA 01:B89A: 02        .byte $02   ; 
- D 1 - I - 0x0058AB 01:B89B: 43        .byte $43   ; 
- D 1 - I - 0x0058AC 01:B89C: 01        .byte $01, $A3, $01   ; 
- D 1 - I - 0x0058AF 01:B89F: 01        .byte $01, $A5, $11   ; 



off_08_B8A2_3A:
- D 1 - I - 0x0058B2 01:B8A2: 81        .byte $81   ; counter
- D 1 - I - 0x0058B3 01:B8A3: 03        .byte $03   ; spr_A
- D 1 - I - 0x0058B4 01:B8A4: F9        .byte $F9, $A1, $F1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0058B7 01:B8A7: 81        .byte $81   ; 
- D 1 - I - 0x0058B8 01:B8A8: 43        .byte $43   ; 
- D 1 - I - 0x0058B9 01:B8A9: 01        .byte $01, $A1, $F1   ; 

- D 1 - I - 0x0058BC 01:B8AC: 82        .byte $82   ; 
- D 1 - I - 0x0058BD 01:B8AD: 03        .byte $03   ; 
- D 1 - I - 0x0058BE 01:B8AE: F9        .byte $F9, $A3, $01   ; 
- D 1 - I - 0x0058C1 01:B8B1: F9        .byte $F9, $A3, $11   ; 

- D 1 - I - 0x0058C4 01:B8B4: 82        .byte $82   ; 
- D 1 - I - 0x0058C5 01:B8B5: 43        .byte $43   ; 
- D 1 - I - 0x0058C6 01:B8B6: 01        .byte $01, $A3, $01   ; 
- D 1 - I - 0x0058C9 01:B8B9: 01        .byte $01, $A3, $11   ; 

- D 1 - I - 0x0058CC 01:B8BC: 81        .byte $81   ; 
- D 1 - I - 0x0058CD 01:B8BD: 03        .byte $03   ; 
- D 1 - I - 0x0058CE 01:B8BE: F9        .byte $F9, $A5, $21   ; 

- D 1 - I - 0x0058D1 01:B8C1: 01        .byte $01   ; 
- D 1 - I - 0x0058D2 01:B8C2: 43        .byte $43   ; 
- D 1 - I - 0x0058D3 01:B8C3: 01        .byte $01, $A5, $21   ; 



off_08_B8C6_3B:
- D 1 - I - 0x0058D6 01:B8C6: 04        .byte $04   ; counter
- D 1 - I - 0x0058D7 01:B8C7: 03        .byte $03   ; spr_A
- D 1 - I - 0x0058D8 01:B8C8: FD        .byte $FD, $A7, $F1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0058DB 01:B8CB: FD        .byte $FD, $A7, $01   ; 
- D 1 - I - 0x0058DE 01:B8CE: FD        .byte $FD, $A9, $11   ; 
- D 1 - I - 0x0058E1 01:B8D1: FD        .byte $FD, $AB, $21   ; 



off_08_B8D4_3C:
- D 1 - I - 0x0058E4 01:B8D4: 08        .byte $08   ; counter
- D 1 - I - 0x0058E5 01:B8D5: 02        .byte $02   ; spr_A
- D 1 - I - 0x0058E6 01:B8D6: 08        .byte $08, $85, $F1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0058E9 01:B8D9: 10        .byte $10, $87, $F1   ; 
- D 1 - I - 0x0058EC 01:B8DC: F8        .byte $F8, $89, $01   ; 
- D 1 - I - 0x0058EF 01:B8DF: 00        .byte $00, $8B, $01   ; 
- D 1 - I - 0x0058F2 01:B8E2: 08        .byte $08, $8D, $01   ; 
- D 1 - I - 0x0058F5 01:B8E5: 10        .byte $10, $8F, $01   ; 
- D 1 - I - 0x0058F8 01:B8E8: F8        .byte $F8, $99, $F1   ; 
- D 1 - I - 0x0058FB 01:B8EB: 00        .byte $00, $9B, $F1   ; 



off_08_B8F8_3F:
- D 1 - I - 0x005908 01:B8F8: FF        .byte $FF   ; 
off_08_B8EE_3D:
- D 1 - I - 0x0058FE 01:B8EE: 01        .byte $01   ; counter
- D 1 - I - 0x0058FF 01:B8EF: 01        .byte $01   ; spr_A
- D 1 - I - 0x005900 01:B8F0: FC        .byte $FC, $81, $F9   ; spr_X, spr_T, spr_Y



off_08_B8F3_3E:
- D 1 - I - 0x005903 01:B8F3: 01        .byte $01   ; counter
- D 1 - I - 0x005904 01:B8F4: 01        .byte $01   ; spr_A
- D 1 - I - 0x005905 01:B8F5: FC        .byte $FC, $83, $F9   ; spr_X, spr_T, spr_Y



off_08_B938_42:
- D 1 - I - 0x005948 01:B938: FF        .byte $FF   ; 
off_08_B8FB_40:
- D 1 - I - 0x00590B 01:B8FB: 81        .byte $81   ; counter
- D 1 - I - 0x00590C 01:B8FC: 00        .byte $00   ; spr_A
- D 1 - I - 0x00590D 01:B8FD: F8        .byte $F8, $9F, $F9   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x005910 01:B900: 81        .byte $81   ; 
- D 1 - I - 0x005911 01:B901: 01        .byte $01   ; 
- D 1 - I - 0x005912 01:B902: 00        .byte $00, $9D, $F9   ; 

- D 1 - I - 0x005915 01:B905: 81        .byte $81   ; 
- D 1 - I - 0x005916 01:B906: 00        .byte $00   ; 
- D 1 - I - 0x005917 01:B907: 08        .byte $08, $A1, $F9   ; 

- D 1 - I - 0x00591A 01:B90A: 81        .byte $81   ; 
- D 1 - I - 0x00591B 01:B90B: 01        .byte $01   ; 
- D 1 - I - 0x00591C 01:B90C: F0        .byte $F0, $9D, $F9   ; 

- D 1 - I - 0x00591F 01:B90F: 81        .byte $81   ; 
- D 1 - I - 0x005920 01:B910: 03        .byte $03   ; 
- D 1 - I - 0x005921 01:B911: E0        .byte $E0, $93, $F9   ; 

- D 1 - I - 0x005924 01:B914: 01        .byte $01   ; 
- D 1 - I - 0x005925 01:B915: 43        .byte $43   ; 
- D 1 - I - 0x005926 01:B916: E8        .byte $E8, $93, $F9   ; 



off_08_B93B_43:
- D 1 - I - 0x00594B 01:B93B: FF        .byte $FF   ; 
off_08_B919_41:
- D 1 - I - 0x005929 01:B919: 81        .byte $81   ; counter
- D 1 - I - 0x00592A 01:B91A: 00        .byte $00   ; spr_A
- D 1 - I - 0x00592B 01:B91B: F8        .byte $F8, $9F, $F9   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x00592E 01:B91E: 81        .byte $81   ; 
- D 1 - I - 0x00592F 01:B91F: 01        .byte $01   ; 
- D 1 - I - 0x005930 01:B920: 00        .byte $00, $9D, $F9   ; 

- D 1 - I - 0x005933 01:B923: 81        .byte $81   ; 
- D 1 - I - 0x005934 01:B924: 00        .byte $00   ; 
- D 1 - I - 0x005935 01:B925: 08        .byte $08, $A1, $F9   ; 

- D 1 - I - 0x005938 01:B928: 83        .byte $83   ; 
- D 1 - I - 0x005939 01:B929: 03        .byte $03   ; 
- D 1 - I - 0x00593A 01:B92A: F0        .byte $F0, $9D, $F9   ; 
- D 1 - I - 0x00593D 01:B92D: E0        .byte $E0, $95, $F9   ; 
- D 1 - I - 0x005940 01:B930: D8        .byte $D8, $97, $F9   ; 

- D 1 - I - 0x005943 01:B933: 01        .byte $01   ; 
- D 1 - I - 0x005944 01:B934: 43        .byte $43   ; 
- D 1 - I - 0x005945 01:B935: E8        .byte $E8, $95, $F9   ; 



_off032_B93E_0C:
- - - - - - 0x00594E 01:B93E: 70 B9     .word off_0C_B970_00
- D 1 - I - 0x005950 01:B940: 70 B9     .word off_0C_B970_01
- D 1 - I - 0x005952 01:B942: A4 B9     .word off_0C_B9A4_02
- - - - - - 0x005954 01:B944: 70 B9     .word off_0C_B970_03
- - - - - - 0x005956 01:B946: 70 B9     .word off_0C_B970_04
- D 1 - I - 0x005958 01:B948: D2 B9     .word off_0C_B9D2_05
- D 1 - I - 0x00595A 01:B94A: F7 B9     .word off_0C_B9F7_06
- D 1 - I - 0x00595C 01:B94C: 1E BA     .word off_0C_BA1E_07
- D 1 - I - 0x00595E 01:B94E: 21 BA     .word off_0C_BA21_08
- D 1 - I - 0x005960 01:B950: 24 BA     .word off_0C_BA24_09
- D 1 - I - 0x005962 01:B952: 47 BA     .word off_0C_BA47_0A
- D 1 - I - 0x005964 01:B954: 67 BA     .word off_0C_BA67_0B
- D 1 - I - 0x005966 01:B956: 8A BA     .word off_0C_BA8A_0C
- D 1 - I - 0x005968 01:B958: AA BA     .word off_0C_BAAA_0D
- D 1 - I - 0x00596A 01:B95A: AD BA     .word off_0C_BAAD_0E
- D 1 - I - 0x00596C 01:B95C: B0 BA     .word off_0C_BAB0_0F
- D 1 - I - 0x00596E 01:B95E: B3 BA     .word off_0C_BAB3_10
- D 1 - I - 0x005970 01:B960: B6 BA     .word off_0C_BAB6_11
- D 1 - I - 0x005972 01:B962: E5 BA     .word off_0C_BAE5_12
- D 1 - I - 0x005974 01:B964: 0B BB     .word off_0C_BB0B_13
- D 1 - I - 0x005976 01:B966: 3A BB     .word off_0C_BB3A_14
- D 1 - I - 0x005978 01:B968: 6C BB     .word off_0C_BB6C_15
- D 1 - I - 0x00597A 01:B96A: 6F BB     .word off_0C_BB6F_16
- D 1 - I - 0x00597C 01:B96C: 72 BB     .word off_0C_BB72_17
- D 1 - I - 0x00597E 01:B96E: 75 BB     .word off_0C_BB75_18



off_0C_B970_00:
off_0C_B970_01:
off_0C_B970_03:
off_0C_B970_04:
- D 1 - I - 0x005980 01:B970: 81        .byte $81   ; counter
- D 1 - I - 0x005981 01:B971: 01        .byte $01   ; spr_A
- D 1 - I - 0x005982 01:B972: F9        .byte $F9, $81, $E2   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x005985 01:B975: 81        .byte $81   ; 
- D 1 - I - 0x005986 01:B976: 41        .byte $41   ; 
- D 1 - I - 0x005987 01:B977: 01        .byte $01, $81, $E2   ; 

- D 1 - I - 0x00598A 01:B97A: 82        .byte $82   ; 
- D 1 - I - 0x00598B 01:B97B: 02        .byte $02   ; 
- D 1 - I - 0x00598C 01:B97C: F1        .byte $F1, $83, $F2   ; 
- D 1 - I - 0x00598F 01:B97F: F9        .byte $F9, $85, $F2   ; 

- D 1 - I - 0x005992 01:B982: 82        .byte $82   ; 
- D 1 - I - 0x005993 01:B983: 42        .byte $42   ; 
- D 1 - I - 0x005994 01:B984: 09        .byte $09, $83, $F2   ; 
- D 1 - I - 0x005997 01:B987: 01        .byte $01, $85, $F2   ; 

- D 1 - I - 0x00599A 01:B98A: 82        .byte $82   ; 
- D 1 - I - 0x00599B 01:B98B: 00        .byte $00   ; 
- D 1 - I - 0x00599C 01:B98C: F1        .byte $F1, $89, $00   ; 
- D 1 - I - 0x00599F 01:B98F: F9        .byte $F9, $8B, $00   ; 

- D 1 - I - 0x0059A2 01:B992: 82        .byte $82   ; 
- D 1 - I - 0x0059A3 01:B993: 40        .byte $40   ; 
- D 1 - I - 0x0059A4 01:B994: 09        .byte $09, $89, $00   ; 
- D 1 - I - 0x0059A7 01:B997: 01        .byte $01, $8B, $00   ; 

- D 1 - I - 0x0059AA 01:B99A: 81        .byte $81   ; 
- D 1 - I - 0x0059AB 01:B99B: 00        .byte $00   ; 
- D 1 - I - 0x0059AC 01:B99C: F9        .byte $F9, $87, $00   ; 

- D 1 - I - 0x0059AF 01:B99F: 01        .byte $01   ; 
- D 1 - I - 0x0059B0 01:B9A0: 40        .byte $40   ; 
- D 1 - I - 0x0059B1 01:B9A1: 01        .byte $01, $87, $00   ; 



off_0C_B9A4_02:
- D 1 - I - 0x0059B4 01:B9A4: 81        .byte $81   ; counter
- D 1 - I - 0x0059B5 01:B9A5: 01        .byte $01   ; spr_A
- D 1 - I - 0x0059B6 01:B9A6: F9        .byte $F9, $8D, $E0   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x0059B9 01:B9A9: 81        .byte $81   ; 
- D 1 - I - 0x0059BA 01:B9AA: 02        .byte $02   ; 
- D 1 - I - 0x0059BB 01:B9AB: F9        .byte $F9, $8F, $F0   ; 

- D 1 - I - 0x0059BE 01:B9AE: 81        .byte $81   ; 
- D 1 - I - 0x0059BF 01:B9AF: 41        .byte $41   ; 
- D 1 - I - 0x0059C0 01:B9B0: 01        .byte $01, $8D, $E0   ; 

- D 1 - I - 0x0059C3 01:B9B3: 81        .byte $81   ; 
- D 1 - I - 0x0059C4 01:B9B4: 42        .byte $42   ; 
- D 1 - I - 0x0059C5 01:B9B5: 01        .byte $01, $8F, $F0   ; 

- D 1 - I - 0x0059C8 01:B9B8: 81        .byte $81   ; 
- D 1 - I - 0x0059C9 01:B9B9: 02        .byte $02   ; 
- D 1 - I - 0x0059CA 01:B9BA: F1        .byte $F1, $83, $F0   ; 

- D 1 - I - 0x0059CD 01:B9BD: 81        .byte $81   ; 
- D 1 - I - 0x0059CE 01:B9BE: 42        .byte $42   ; 
- D 1 - I - 0x0059CF 01:B9BF: 09        .byte $09, $83, $F0   ; 

- D 1 - I - 0x0059D2 01:B9C2: 82        .byte $82   ; 
- D 1 - I - 0x0059D3 01:B9C3: 00        .byte $00   ; 
- D 1 - I - 0x0059D4 01:B9C4: F1        .byte $F1, $89, $00   ; 
- D 1 - I - 0x0059D7 01:B9C7: F9        .byte $F9, $8B, $00   ; 

- D 1 - I - 0x0059DA 01:B9CA: 02        .byte $02   ; 
- D 1 - I - 0x0059DB 01:B9CB: 40        .byte $40   ; 
- D 1 - I - 0x0059DC 01:B9CC: 09        .byte $09, $89, $00   ; 
- D 1 - I - 0x0059DF 01:B9CF: 01        .byte $01, $8B, $00   ; 



off_0C_BA1E_07:
- D 1 - I - 0x005A2E 01:BA1E: FF        .byte $FF   ; 
off_0C_B9D2_05:
- D 1 - I - 0x0059E2 01:B9D2: 82        .byte $82   ; counter
- D 1 - I - 0x0059E3 01:B9D3: 01        .byte $01   ; spr_A
- D 1 - I - 0x0059E4 01:B9D4: F9        .byte $F9, $91, $E0   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0059E7 01:B9D7: 01        .byte $01, $93, $E0   ; 

- D 1 - I - 0x0059EA 01:B9DA: 81        .byte $81   ; 
- D 1 - I - 0x0059EB 01:B9DB: 00        .byte $00   ; 
- D 1 - I - 0x0059EC 01:B9DC: E9        .byte $E9, $95, $F0   ; 

- D 1 - I - 0x0059EF 01:B9DF: 81        .byte $81   ; 
- D 1 - I - 0x0059F0 01:B9E0: 01        .byte $01   ; 
- D 1 - I - 0x0059F1 01:B9E1: F1        .byte $F1, $97, $F0   ; 

- D 1 - I - 0x0059F4 01:B9E4: 82        .byte $82   ; 
- D 1 - I - 0x0059F5 01:B9E5: 02        .byte $02   ; 
- D 1 - I - 0x0059F6 01:B9E6: F9        .byte $F9, $99, $F0   ; 
- D 1 - I - 0x0059F9 01:B9E9: 01        .byte $01, $9B, $F0   ; 

- D 1 - I - 0x0059FC 01:B9EC: 03        .byte $03   ; 
- D 1 - I - 0x0059FD 01:B9ED: 00        .byte $00   ; 
- D 1 - I - 0x0059FE 01:B9EE: F9        .byte $F9, $9D, $00   ; 
- D 1 - I - 0x005A01 01:B9F1: 01        .byte $01, $9F, $00   ; 
- D 1 - I - 0x005A04 01:B9F4: 01        .byte $01, $A1, $10   ; 



off_0C_BA21_08:
- D 1 - I - 0x005A31 01:BA21: FF        .byte $FF   ; 
off_0C_B9F7_06:
- D 1 - I - 0x005A07 01:B9F7: 82        .byte $82   ; counter
- D 1 - I - 0x005A08 01:B9F8: 01        .byte $01   ; spr_A
- D 1 - I - 0x005A09 01:B9F9: FB        .byte $FB, $91, $E0   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x005A0C 01:B9FC: 03        .byte $03, $93, $E0   ; 

- D 1 - I - 0x005A0F 01:B9FF: 81        .byte $81   ; 
- D 1 - I - 0x005A10 01:BA00: 02        .byte $02   ; 
- D 1 - I - 0x005A11 01:BA01: 03        .byte $03, $9B, $F0   ; 

- D 1 - I - 0x005A14 01:BA04: 83        .byte $83   ; 
- D 1 - I - 0x005A15 01:BA05: 00        .byte $00   ; 
- D 1 - I - 0x005A16 01:BA06: F9        .byte $F9, $9D, $00   ; 
- D 1 - I - 0x005A19 01:BA09: 01        .byte $01, $9F, $00   ; 
- D 1 - I - 0x005A1C 01:BA0C: 01        .byte $01, $A1, $10   ; 

- D 1 - I - 0x005A1F 01:BA0F: 81        .byte $81   ; 
- D 1 - I - 0x005A20 01:BA10: 02        .byte $02   ; 
- D 1 - I - 0x005A21 01:BA11: FB        .byte $FB, $A7, $F0   ; 

- D 1 - I - 0x005A24 01:BA14: 81        .byte $81   ; 
- D 1 - I - 0x005A25 01:BA15: 01        .byte $01   ; 
- D 1 - I - 0x005A26 01:BA16: F3        .byte $F3, $A5, $F0   ; 

- D 1 - I - 0x005A29 01:BA19: 01        .byte $01   ; 
- D 1 - I - 0x005A2A 01:BA1A: 00        .byte $00   ; 
- D 1 - I - 0x005A2B 01:BA1B: F3        .byte $F3, $A3, $E0   ; 



off_0C_BAAA_0D:
- D 1 - I - 0x005ABA 01:BAAA: FF        .byte $FF   ; 
off_0C_BA24_09:
- D 1 - I - 0x005A34 01:BA24: 82        .byte $82   ; counter
- D 1 - I - 0x005A35 01:BA25: 01        .byte $01   ; spr_A
- D 1 - I - 0x005A36 01:BA26: F6        .byte $F6, $91, $E0   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x005A39 01:BA29: FE        .byte $FE, $93, $E0   ; 

- D 1 - I - 0x005A3C 01:BA2C: 82        .byte $82   ; 
- D 1 - I - 0x005A3D 01:BA2D: 02        .byte $02   ; 
- D 1 - I - 0x005A3E 01:BA2E: FE        .byte $FE, $9B, $F0   ; 
- D 1 - I - 0x005A41 01:BA31: F6        .byte $F6, $A7, $F0   ; 

- D 1 - I - 0x005A44 01:BA34: 81        .byte $81   ; 
- D 1 - I - 0x005A45 01:BA35: 01        .byte $01   ; 
- D 1 - I - 0x005A46 01:BA36: EE        .byte $EE, $A5, $F0   ; 

- D 1 - I - 0x005A49 01:BA39: 04        .byte $04   ; 
- D 1 - I - 0x005A4A 01:BA3A: 00        .byte $00   ; 
- D 1 - I - 0x005A4B 01:BA3B: EE        .byte $EE, $A3, $E0   ; 
- D 1 - I - 0x005A4E 01:BA3E: F1        .byte $F1, $A9, $00   ; 
- D 1 - I - 0x005A51 01:BA41: F9        .byte $F9, $AB, $00   ; 
- D 1 - I - 0x005A54 01:BA44: 01        .byte $01, $AD, $00   ; 



off_0C_BAAD_0E:
- D 1 - I - 0x005ABD 01:BAAD: FF        .byte $FF   ; 
off_0C_BA47_0A:
- D 1 - I - 0x005A57 01:BA47: 82        .byte $82   ; counter
- D 1 - I - 0x005A58 01:BA48: 01        .byte $01   ; spr_A
- D 1 - I - 0x005A59 01:BA49: F6        .byte $F6, $91, $E3   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x005A5C 01:BA4C: FE        .byte $FE, $93, $E3   ; 

- D 1 - I - 0x005A5F 01:BA4F: 82        .byte $82   ; 
- D 1 - I - 0x005A60 01:BA50: 02        .byte $02   ; 
- D 1 - I - 0x005A61 01:BA51: FE        .byte $FE, $9B, $F3   ; 
- D 1 - I - 0x005A64 01:BA54: F6        .byte $F6, $A7, $F3   ; 

- D 1 - I - 0x005A67 01:BA57: 81        .byte $81   ; 
- D 1 - I - 0x005A68 01:BA58: 01        .byte $01   ; 
- D 1 - I - 0x005A69 01:BA59: EE        .byte $EE, $A5, $F3   ; 

- D 1 - I - 0x005A6C 01:BA5C: 03        .byte $03   ; 
- D 1 - I - 0x005A6D 01:BA5D: 00        .byte $00   ; 
- D 1 - I - 0x005A6E 01:BA5E: EE        .byte $EE, $A3, $E3   ; 
- D 1 - I - 0x005A71 01:BA61: F9        .byte $F9, $AF, $00   ; 
- D 1 - I - 0x005A74 01:BA64: 01        .byte $01, $B1, $00   ; 



off_0C_BAB0_0F:
- D 1 - I - 0x005AC0 01:BAB0: FF        .byte $FF   ; 
off_0C_BA67_0B:
- D 1 - I - 0x005A77 01:BA67: 82        .byte $82   ; counter
- D 1 - I - 0x005A78 01:BA68: 01        .byte $01   ; spr_A
- D 1 - I - 0x005A79 01:BA69: F4        .byte $F4, $91, $E0   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x005A7C 01:BA6C: FC        .byte $FC, $93, $E0   ; 

- D 1 - I - 0x005A7F 01:BA6F: 82        .byte $82   ; 
- D 1 - I - 0x005A80 01:BA70: 02        .byte $02   ; 
- D 1 - I - 0x005A81 01:BA71: FC        .byte $FC, $9B, $F0   ; 
- D 1 - I - 0x005A84 01:BA74: F4        .byte $F4, $A7, $F0   ; 

- D 1 - I - 0x005A87 01:BA77: 81        .byte $81   ; 
- D 1 - I - 0x005A88 01:BA78: 01        .byte $01   ; 
- D 1 - I - 0x005A89 01:BA79: EC        .byte $EC, $A5, $F0   ; 

- D 1 - I - 0x005A8C 01:BA7C: 04        .byte $04   ; 
- D 1 - I - 0x005A8D 01:BA7D: 00        .byte $00   ; 
- D 1 - I - 0x005A8E 01:BA7E: EC        .byte $EC, $A3, $E0   ; 
- D 1 - I - 0x005A91 01:BA81: F4        .byte $F4, $B3, $00   ; 
- D 1 - I - 0x005A94 01:BA84: FC        .byte $FC, $B5, $00   ; 
- D 1 - I - 0x005A97 01:BA87: 04        .byte $04, $B7, $00   ; 



off_0C_BAB3_10:
- D 1 - I - 0x005AC3 01:BAB3: FF        .byte $FF   ; 
off_0C_BA8A_0C:
- D 1 - I - 0x005A9A 01:BA8A: 82        .byte $82   ; counter
- D 1 - I - 0x005A9B 01:BA8B: 01        .byte $01   ; spr_A
- D 1 - I - 0x005A9C 01:BA8C: F6        .byte $F6, $91, $E3   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x005A9F 01:BA8F: FE        .byte $FE, $93, $E3   ; 

- D 1 - I - 0x005AA2 01:BA92: 82        .byte $82   ; 
- D 1 - I - 0x005AA3 01:BA93: 02        .byte $02   ; 
- D 1 - I - 0x005AA4 01:BA94: FE        .byte $FE, $9B, $F3   ; 
- D 1 - I - 0x005AA7 01:BA97: F6        .byte $F6, $A7, $F3   ; 

- D 1 - I - 0x005AAA 01:BA9A: 81        .byte $81   ; 
- D 1 - I - 0x005AAB 01:BA9B: 01        .byte $01   ; 
- D 1 - I - 0x005AAC 01:BA9C: EE        .byte $EE, $A5, $F3   ; 

- D 1 - I - 0x005AAF 01:BA9F: 03        .byte $03   ; 
- D 1 - I - 0x005AB0 01:BAA0: 00        .byte $00   ; 
- D 1 - I - 0x005AB1 01:BAA1: EE        .byte $EE, $A3, $E3   ; 
- D 1 - I - 0x005AB4 01:BAA4: F9        .byte $F9, $AF, $00   ; 
- D 1 - I - 0x005AB7 01:BAA7: 01        .byte $01, $B1, $00   ; 



off_0C_BB6C_15:
- D 1 - I - 0x005B7C 01:BB6C: FF        .byte $FF   ; 
off_0C_BAB6_11:
- D 1 - I - 0x005AC6 01:BAB6: 83        .byte $83   ; counter
- D 1 - I - 0x005AC7 01:BAB7: 00        .byte $00   ; spr_A
- D 1 - I - 0x005AC8 01:BAB8: F1        .byte $F1, $A9, $00   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x005ACB 01:BABB: F9        .byte $F9, $AB, $00   ; 
- D 1 - I - 0x005ACE 01:BABE: 01        .byte $01, $AD, $00   ; 

- D 1 - I - 0x005AD1 01:BAC1: 81        .byte $81   ; 
- D 1 - I - 0x005AD2 01:BAC2: 01        .byte $01   ; 
- D 1 - I - 0x005AD3 01:BAC3: F7        .byte $F7, $81, $E0   ; 

- D 1 - I - 0x005AD6 01:BAC6: 82        .byte $82   ; 
- D 1 - I - 0x005AD7 01:BAC7: 02        .byte $02   ; 
- D 1 - I - 0x005AD8 01:BAC8: EF        .byte $EF, $83, $F0   ; 
- D 1 - I - 0x005ADB 01:BACB: F7        .byte $F7, $85, $F0   ; 

- D 1 - I - 0x005ADE 01:BACE: 81        .byte $81   ; 
- D 1 - I - 0x005ADF 01:BACF: 00        .byte $00   ; 
- D 1 - I - 0x005AE0 01:BAD0: F7        .byte $F7, $87, $00   ; 

- D 1 - I - 0x005AE3 01:BAD3: 81        .byte $81   ; 
- D 1 - I - 0x005AE4 01:BAD4: 41        .byte $41   ; 
- D 1 - I - 0x005AE5 01:BAD5: FF        .byte $FF, $81, $E0   ; 

- D 1 - I - 0x005AE8 01:BAD8: 82        .byte $82   ; 
- D 1 - I - 0x005AE9 01:BAD9: 42        .byte $42   ; 
- D 1 - I - 0x005AEA 01:BADA: 07        .byte $07, $83, $F0   ; 
- D 1 - I - 0x005AED 01:BADD: FF        .byte $FF, $85, $F0   ; 

- D 1 - I - 0x005AF0 01:BAE0: 01        .byte $01   ; 
- D 1 - I - 0x005AF1 01:BAE1: 40        .byte $40   ; 
- D 1 - I - 0x005AF2 01:BAE2: FF        .byte $FF, $87, $00   ; 



off_0C_BB6F_16:
- D 1 - I - 0x005B7F 01:BB6F: FF        .byte $FF   ; 
off_0C_BAE5_12:
- D 1 - I - 0x005AF5 01:BAE5: 81        .byte $81   ; counter
- D 1 - I - 0x005AF6 01:BAE6: 00        .byte $00   ; spr_A
- D 1 - I - 0x005AF7 01:BAE7: 01        .byte $01, $B1, $00   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x005AFA 01:BAEA: 81        .byte $81   ; 
- D 1 - I - 0x005AFB 01:BAEB: 02        .byte $02   ; 
- D 1 - I - 0x005AFC 01:BAEC: EE        .byte $EE, $83, $F2   ; 

- D 1 - I - 0x005AFF 01:BAEF: 81        .byte $81   ; 
- D 1 - I - 0x005B00 01:BAF0: 01        .byte $01   ; 
- D 1 - I - 0x005B01 01:BAF1: F6        .byte $F6, $8D, $E2   ; 

- D 1 - I - 0x005B04 01:BAF4: 81        .byte $81   ; 
- D 1 - I - 0x005B05 01:BAF5: 02        .byte $02   ; 
- D 1 - I - 0x005B06 01:BAF6: F6        .byte $F6, $8F, $F2   ; 

- D 1 - I - 0x005B09 01:BAF9: 81        .byte $81   ; 
- D 1 - I - 0x005B0A 01:BAFA: 41        .byte $41   ; 
- D 1 - I - 0x005B0B 01:BAFB: FE        .byte $FE, $8D, $E2   ; 

- D 1 - I - 0x005B0E 01:BAFE: 82        .byte $82   ; 
- D 1 - I - 0x005B0F 01:BAFF: 42        .byte $42   ; 
- D 1 - I - 0x005B10 01:BB00: FE        .byte $FE, $8F, $F2   ; 
- D 1 - I - 0x005B13 01:BB03: 06        .byte $06, $83, $F2   ; 

- D 1 - I - 0x005B16 01:BB06: 01        .byte $01   ; 
- D 1 - I - 0x005B17 01:BB07: 00        .byte $00   ; 
- D 1 - I - 0x005B18 01:BB08: F9        .byte $F9, $AF, $00   ; 



off_0C_BB72_17:
- D 1 - I - 0x005B82 01:BB72: FF        .byte $FF   ; 
off_0C_BB0B_13:
- D 1 - I - 0x005B1B 01:BB0B: 83        .byte $83   ; counter
- D 1 - I - 0x005B1C 01:BB0C: 00        .byte $00   ; spr_A
- D 1 - I - 0x005B1D 01:BB0D: F1        .byte $F1, $B3, $00   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x005B20 01:BB10: F9        .byte $F9, $B5, $00   ; 
- D 1 - I - 0x005B23 01:BB13: 01        .byte $01, $B7, $00   ; 

- D 1 - I - 0x005B26 01:BB16: 81        .byte $81   ; 
- D 1 - I - 0x005B27 01:BB17: 01        .byte $01   ; 
- D 1 - I - 0x005B28 01:BB18: F4        .byte $F4, $81, $E0   ; 

- D 1 - I - 0x005B2B 01:BB1B: 82        .byte $82   ; 
- D 1 - I - 0x005B2C 01:BB1C: 02        .byte $02   ; 
- D 1 - I - 0x005B2D 01:BB1D: EC        .byte $EC, $83, $F0   ; 
- D 1 - I - 0x005B30 01:BB20: F4        .byte $F4, $85, $F0   ; 

- D 1 - I - 0x005B33 01:BB23: 81        .byte $81   ; 
- D 1 - I - 0x005B34 01:BB24: 00        .byte $00   ; 
- D 1 - I - 0x005B35 01:BB25: F4        .byte $F4, $87, $00   ; 

- D 1 - I - 0x005B38 01:BB28: 81        .byte $81   ; 
- D 1 - I - 0x005B39 01:BB29: 41        .byte $41   ; 
- D 1 - I - 0x005B3A 01:BB2A: FC        .byte $FC, $81, $E0   ; 

- D 1 - I - 0x005B3D 01:BB2D: 82        .byte $82   ; 
- D 1 - I - 0x005B3E 01:BB2E: 42        .byte $42   ; 
- D 1 - I - 0x005B3F 01:BB2F: 04        .byte $04, $83, $F0   ; 
- D 1 - I - 0x005B42 01:BB32: FC        .byte $FC, $85, $F0   ; 

- D 1 - I - 0x005B45 01:BB35: 01        .byte $01   ; 
- D 1 - I - 0x005B46 01:BB36: 40        .byte $40   ; 
- D 1 - I - 0x005B47 01:BB37: FC        .byte $FC, $87, $00   ; 



off_0C_BB75_18:
- D 1 - I - 0x005B85 01:BB75: FF        .byte $FF   ; 
off_0C_BB3A_14:
- D 1 - I - 0x005B4A 01:BB3A: 81        .byte $81   ; counter
- D 1 - I - 0x005B4B 01:BB3B: 00        .byte $00   ; spr_A
- D 1 - I - 0x005B4C 01:BB3C: 01        .byte $01, $B1, $00   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x005B4F 01:BB3F: 81        .byte $81   ; 
- D 1 - I - 0x005B50 01:BB40: 02        .byte $02   ; 
- D 1 - I - 0x005B51 01:BB41: EE        .byte $EE, $83, $F2   ; 

- D 1 - I - 0x005B54 01:BB44: 81        .byte $81   ; 
- D 1 - I - 0x005B55 01:BB45: 42        .byte $42   ; 
- D 1 - I - 0x005B56 01:BB46: 06        .byte $06, $83, $F2   ; 

- D 1 - I - 0x005B59 01:BB49: 81        .byte $81   ; 
- D 1 - I - 0x005B5A 01:BB4A: 00        .byte $00   ; 
- D 1 - I - 0x005B5B 01:BB4B: F9        .byte $F9, $AF, $00   ; 

- D 1 - I - 0x005B5E 01:BB4E: 81        .byte $81   ; 
- D 1 - I - 0x005B5F 01:BB4F: 01        .byte $01   ; 
- D 1 - I - 0x005B60 01:BB50: F6        .byte $F6, $81, $E2   ; 

- D 1 - I - 0x005B63 01:BB53: 81        .byte $81   ; 
- D 1 - I - 0x005B64 01:BB54: 02        .byte $02   ; 
- D 1 - I - 0x005B65 01:BB55: F6        .byte $F6, $85, $F2   ; 

- D 1 - I - 0x005B68 01:BB58: 81        .byte $81   ; 
- D 1 - I - 0x005B69 01:BB59: 41        .byte $41   ; 
- D 1 - I - 0x005B6A 01:BB5A: FE        .byte $FE, $81, $E2   ; 

- D 1 - I - 0x005B6D 01:BB5D: 81        .byte $81   ; 
- D 1 - I - 0x005B6E 01:BB5E: 42        .byte $42   ; 
- D 1 - I - 0x005B6F 01:BB5F: FE        .byte $FE, $85, $F2   ; 

- D 1 - I - 0x005B72 01:BB62: 81        .byte $81   ; 
- D 1 - I - 0x005B73 01:BB63: 00        .byte $00   ; 
- D 1 - I - 0x005B74 01:BB64: F6        .byte $F6, $87, $02   ; 

- D 1 - I - 0x005B77 01:BB67: 01        .byte $01   ; 
- D 1 - I - 0x005B78 01:BB68: 40        .byte $40   ; 
- D 1 - I - 0x005B79 01:BB69: FE        .byte $FE, $87, $02   ; 



.out .sprintf("Free bytes in bank 14: 0x%04X [%d]", ($D140 - *), ($D140 - *))



.segment "DPCM_14"
.incbin "DPCM.bin"
.org $D140  ; for listing file



