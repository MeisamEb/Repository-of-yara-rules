rule _Nullsoft_Install_System_v20_
{
	meta:
		description = "Nullsoft Install System v2.0"
	strings:
		$0 = {83 EC 0C 53 55 56 57 C7 44 24 10 70 92 40 00 33 DB C6 44 24 14 20 FF 15 2C 70 40 00 53 FF 15 84 72 40 00 BE 00 54 43 00 BF 00 04 00 00 56 57 A3 A8 EC 42 00 FF 15 C4 70 40 00 E8 8D FF FF FF 8B 2D 90 70 40 00 85 C0 75 21 68 FB 03 00 00 56 FF 15 5C 71 40 00}
	condition:
		$0
}
rule _AHTeam_EP_Protector_03_fake_Microsoft_Visual_Cpp_70__FEUERRADER_
{
	meta:
		description = "AHTeam EP Protector 0.3 (fake Microsoft Visual C++ 7.0) -> FEUERRADER"
	strings:
		$0 = {90 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 90 FF E0 6A 00 68 ?? ?? ?? ?? E8 ?? ?? ?? ?? BF ?? ?? ?? ?? 8B C7 E8 ?? ?? ?? ?? 89 65 00 8B F4 89 3E 56 FF 15 ?? ?? ?? ?? 8B 4E ?? 89 0D ?? ?? ?? 00 8B 46 00 A3}
	condition:
		$0 at entrypoint
}
rule _Vx_Keypress1212_
{
	meta:
		description = "Vx: Keypress.1212"
	strings:
		$0 = {E8 ?? ?? E8 ?? ?? E8 ?? ?? E8 ?? ?? ?? ?? E8 ?? ?? ?? ?? E8 ?? ?? ?? ?? EA ?? ?? ?? ?? 1E 33 DB 8E DB BB}
	condition:
		$0 at entrypoint
}
rule _E2C_by_DoP_
{
	meta:
		description = "E2C by DoP"
	strings:
		$0 = {BE ?? ?? BF ?? ?? B9 ?? ?? FC 57 F3 A5 C3}
	condition:
		$0 at entrypoint
}
rule _PC_Guard_for_Win32_v500__SofProBlagoje_Ceklic_
{
	meta:
		description = "PC Guard for Win32 v5.00 -> SofPro/Blagoje Ceklic"
	strings:
		$0 = {FC 55 50 E8 00 00 00 00 5D 60 E8 03 00 00 00 83 EB 0E EB 01 0C 58 EB 01 35 40 EB 01 36 FF E0 0B 61 B8 ?? ?? ?? 00 EB 01 E3 60 E8 03 00 00 00 D2 EB 0B 58 EB 01 48 40 EB 01 35 FF E0 E7 61 2B E8 9C EB 01 D5 9D EB 01 0B 58 60 E8 03 00 00 00 83 EB 0E EB 01 0C}
	condition:
		$0 at entrypoint
}
rule _LaunchAnywhere_v4001_
{
	meta:
		description = "LaunchAnywhere v4.0.0.1"
	strings:
		$0 = {55 89 E5 53 83 EC 48 55 B8 FF FF FF FF 50 50 68 E0 3E 42 00 64 FF 35 00 00 00 00 64 89 25 00 00 00 00 68 C0 69 44 00 E8 E4 80 FF FF 59 E8 4E 29 00 00 E8 C9 0D 00 00 85 C0 75 08 6A FF E8 6E 2B 00 00 59 E8 A8 2C 00 00 E8 23 2E 00 00 FF 15 4C C2 44 00 89 C3}
	condition:
		$0 at entrypoint
}
rule _PECompact_v09781_
{
	meta:
		description = "PECompact v0.978.1"
	strings:
		$0 = {EB 06 68 ?? ?? ?? ?? C3 9C 60 E8 02 ?? ?? ?? 33 C0 8B C4 83 C0 04 93 8B E3 8B 5B FC 81 EB 49 87 40 ?? 87 DD 8B 85 CE 87}
	condition:
		$0 at entrypoint
}
rule _RLPack_Full_Edition_117_iBox_LZMA__Ap0x_
{
	meta:
		description = "RLPack Full Edition 1.17 iBox [LZMA] -> Ap0x"
	strings:
		$0 = {60 E8 00 00 00 00 8B 2C 24 83 C4 04 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 8D B5 67 30 00 00 8D 9D 66 03 00 00 33 FF ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 6A 40 68 ?? ?? ?? ?? 68 ?? ?? ?? ?? 6A}
	condition:
		$0 at entrypoint
}
rule _Petite_v14_
{
	meta:
		description = "Petite v1.4"
	strings:
		$0 = {B8 ?? ?? ?? ?? 66 9C 60 50 8B D8 03 00 68 ?? ?? ?? ?? 6A 00}
	condition:
		$0 at entrypoint
}
rule _VcAsm_Protector__VcAsm_
{
	meta:
		description = "VcAsm Protector -> VcAsm"
	strings:
		$0 = {55 8B EC 6A FF 68 ?? ?? ?? ?? 68 ?? ?? ?? ?? 64 A1 00 00 00 00 50 64 89 25 00 00 00 00 E8 03 00 00 00 C7 84 00 58 EB 01 E9 83 C0 07 50 C3}
	condition:
		$0 at entrypoint
}
rule _PECompact_v134__v140b1_
{
	meta:
		description = "PECompact v1.34 - v1.40b1"
	strings:
		$0 = {EB 06 68 ?? ?? ?? ?? C3 9C 60 E8 02 ?? ?? ?? 33 C0 8B C4 83 C0 04 93 8B E3 8B 5B FC 81 EB 0F 80 40 ?? 87 DD 8B 85 A6 80 40 ?? 01 85 03 80 40 ?? 66 C7 85 ?? 00 80 ?? 40 90 90 01 85 9E 80 ?? 40 BB F8 10}
	condition:
		$0 at entrypoint
}
rule _tElock_051__tE_
{
	meta:
		description = "tElock 0.51 -> tE!"
	strings:
		$0 = {C1 EE 00 66 8B C9 EB 01 EB 60 EB 01 EB 9C E8 00 00 00 00 5E 83 C6 5E 8B FE 68 79 01 00 00 59 EB 01 EB AC 54 E8 03 00 00 00 5C EB 08 8D 64 24 04 FF 64 24 FC 6A 05 D0 2C 24 72 01 E8 01 24 24 5C F7 DC EB 02 CD 20 8D 64 24 FE F7 DC EB 02 CD 20 FE C8 E8 00 00 00 00 32 C1 EB 02 82 0D AA EB 03 82 0D 58 EB 02 1D 7A 49 EB 05 E8 01 00 00 00 7F AE 14 7E A0 77 76 75 74}
	condition:
		$0 at entrypoint
}
rule _PECompact_v14xp_
{
	meta:
		description = "PECompact v1.4x+"
	strings:
		$0 = {EB 06 68 ?? ?? ?? ?? C3 9C 60 E8 02 ?? ?? ?? 33 C0 8B C4 83 C0 04 93 8B E3 8B 5B FC 81}
	condition:
		$0 at entrypoint
}
rule _VcasmProtector_10e__vcasm_
{
	meta:
		description = "Vcasm-Protector 1.0e -> vcasm"
	strings:
		$0 = {EB 0A 5B 56 50 72 6F 74 65 63 74 5D}
	condition:
		$0 at entrypoint
}
rule _bambam_004__bedrock_
{
	meta:
		description = "bambam 0.04 -> bedrock"
	strings:
		$0 = {BF ?? ?? ?? ?? 83 C9 FF 33 C0 68 ?? ?? ?? ?? F2 AE F7 D1 49 51 68 ?? ?? ?? ?? E8 11 0A 00 00 83 C4 0C 68 ?? ?? ?? ?? FF 15 ?? ?? ?? ?? 8B F0 BF ?? ?? ?? ?? 83 C9 FF 33 C0 F2 AE F7 D1 49 BF ?? ?? ?? ?? 8B D1 68 ?? ?? ?? ?? C1 E9 02 F3 AB 8B CA 83 E1 03 F3 AA BF ?? ?? ?? ?? 83 C9 FF 33 C0 F2 AE F7 D1 49 51 68 ?? ?? ?? ?? E8 C0 09 00 00}
	condition:
		$0 at entrypoint
}
rule _UPX_290_LZMA_Delphi_stub__Markus_Oberhumer_Laszlo_Molnar__John_Reiser_
{
	meta:
		description = "UPX 2.90 [LZMA] (Delphi stub) -> Markus Oberhumer, Laszlo Molnar & John Reiser"
	strings:
		$0 = {60 BE ?? ?? ?? ?? 8D BE ?? ?? ?? ?? C7 87 ?? ?? ?? ?? ?? ?? ?? ?? 57 83 CD FF 89 E5 8D 9C 24 ?? ?? ?? ?? 31 C0 50 39 DC 75 FB 46 46 53 68 ?? ?? ?? ?? 57 83 C3 04 53 68 ?? ?? ?? ?? 56 83 C3 04}
	condition:
		$0 at entrypoint
}
rule _Armadillo_v4000053__Silicon_Realms_Toolworks_
{
	meta:
		description = "Armadillo v4.00.0053 -> Silicon Realms Toolworks"
	strings:
		$0 = {55 8B EC 6A FF 68 20 8B 4B 00 68 80 E4 48 00 64 A1 00 00 00 00 50 64 89 25 00 00 00 00 83 EC 58 53 56 57 89 65 E8 FF 15 88 31 4B 00 33 D2 8A D4 89 15 A4 A1 4B 00 8B C8 81 E1 FF 00 00 00 89 0D A0 A1 4B 00 C1 E1 08 03 CA 89 0D 9C A1 4B 00 C1 E8 10 A3 98 A1}
	condition:
		$0 at entrypoint
}
rule _EPack_14_lite_final__by_6aHguT_
{
	meta:
		description = "!EPack 1.4 lite (final) - by 6aHguT"
	strings:
		$0 = {33 C0 8B C0 68 ?? ?? ?? ?? 68 ?? ?? ?? ?? E8}
	condition:
		$0 at entrypoint
}
rule _VProtector_V10E__vcasm_
{
	meta:
		description = "VProtector V1.0E -> vcasm"
	strings:
		$0 = {EB 0A 5B 56 50 72 6F 74 65 63 74 5D E8 24 00 00 00 8B 44 24 04 8B 00 3D 04 00 00 80 75 08 8B 64 24 08 EB 04 58 EB 0C E9 64 8F 05 00 00 00 00 74 F3 75 F1 EB 24 64 FF 35 00 00 00 00}
	condition:
		$0 at entrypoint
}
rule _Petite_22__c199899_Ian_Luck_
{
	meta:
		description = "Petite 2.2 -> (c)1998-99 Ian Luck"
	strings:
		$0 = {68 ?? ?? ?? ?? 64 FF 35 00 00 00 00 64 89 25 00 00 00 00 66 9C 60 50 68 00 00 ?? ?? 8B 3C 24 8B 30 66 81 C7 80 07 8D 74 06 08 89 38 8B 5E 10 50 56 6A 02 68 80 08 00 00 57 6A ?? 6A 06 56 6A 04 68 80 08 00 00 57 FF D3 83 EE 08 59 F3 A5 59 66}
	condition:
		$0 at entrypoint
}
rule _Vx_Kuku886_
{
	meta:
		description = "Vx: Kuku.886"
	strings:
		$0 = {06 1E 50 8C C8 8E D8 BA 70 03 B8 24 25 CD 21 ?? ?? ?? ?? ?? 90 B4 2F CD 21 53}
	condition:
		$0 at entrypoint
}
rule _ROD_High_TECH__Ayman_
{
	meta:
		description = "ROD High TECH -> Ayman"
	strings:
		$0 = {60 8B 15 1D 13 40 00 F7 E0 8D 82 83 19 00 00 E8 58 0C 00 00}
	condition:
		$0 at entrypoint
}
rule _PECompact_v155_
{
	meta:
		description = "PECompact v1.55"
	strings:
		$0 = {EB 06 68 ?? ?? ?? ?? C3 9C 60 E8 02 ?? ?? ?? 33 C0 8B C4 83 C0 04 93 8B E3 8B 5B FC 81 EB 0F 80 40 ?? 87 DD 8B 85 A2 80 40 ?? 01 85 03 80 40 ?? 66 C7 85 ?? 80 40 ?? 90 90 01 85 9E 80 40 ?? BB 2D 12}
	condition:
		$0 at entrypoint
}
rule _PECompact_v100_
{
	meta:
		description = "PECompact v1.00"
	strings:
		$0 = {EB 06 68 ?? ?? ?? ?? C3 9C 60 E8 02 ?? ?? ?? 33 C0 8B C4 83 C0 04 93 8B E3 8B 5B FC 81 EB C4 84 40 ?? 87 DD 8B 85 49 85}
	condition:
		$0 at entrypoint
}
rule _Armadillo_v260_
{
	meta:
		description = "Armadillo v2.60"
	strings:
		$0 = {55 8B EC 6A FF 68 D0 ?? ?? ?? 68 34 ?? ?? ?? 64 A1 ?? ?? ?? ?? 50 64 89 25 ?? ?? ?? ?? 83 EC 58 53 56 57 89 65 E8 FF 15 68 ?? ?? ?? 33 D2 8A D4 89 15 84}
	condition:
		$0 at entrypoint
}
rule _Vx_VirusConstructorbased_
{
	meta:
		description = "Vx: VirusConstructor.based"
	strings:
		$0 = {BB ?? ?? B9 ?? ?? 2E ?? ?? ?? ?? 43 43 ?? ?? 8B EC CC 8B ?? ?? 81 ?? ?? ?? 06 1E B8 ?? ?? CD 21 3D ?? ?? ?? ?? 8C D8 48 8E D8}
		$1 = {E8 ?? ?? 5D 81 ?? ?? ?? 06 1E E8 ?? ?? E8 ?? ?? ?? ?? 2E ?? ?? ?? ?? ?? ?? B4 4A BB FF FF CD 21 83 ?? ?? B4 4A CD 21}
	condition:
		$0 at entrypoint or $1 at entrypoint
}
rule _Splash_Bitmap_v100_With_Unpack_Code__BoB__Bobsoft_
{
	meta:
		description = "Splash Bitmap v1.00 (With Unpack Code) --> BoB / Bobsoft"
	strings:
		$0 = {E8 00 00 00 00 60 8B 6C 24 20 55 81 ED ?? ?? ?? ?? 8D BD ?? ?? ?? ?? 8D 8D ?? ?? ?? ?? 29 F9 31 C0 FC F3 AA 8B 04 24 48 66 25 00 F0 66 81 38 4D 5A 75 F4 8B 48 3C 81 3C 01 50 45 00 00 75 E8 89 85 ?? ?? ?? ?? 6A 40}
	condition:
		$0 at entrypoint
}
rule _Armadillo_v420__Silicon_Realms_Toolworks_
{
	meta:
		description = "Armadillo v4.20 -> Silicon Realms Toolworks"
	strings:
		$0 = {55 8B EC 6A FF 68 F8 8E 4C 00 68 F0 EA 49 00 64 A1 00 00 00 00 50 64 89 25 00 00 00 00 83 EC 58 53 56 57 89 65 E8 FF 15 88 31 4C 00 33 D2 8A D4 89 15 84 A5 4C 00 8B C8 81 E1 FF 00 00 00 89 0D 80 A5 4C 00 C1 E1 08 03 CA 89 0D 7C A5 4C 00 C1 E8 10 A3 78 A5}
	condition:
		$0 at entrypoint
}
rule _EXECryptor_V21X__softcompletecom_
{
	meta:
		description = "EXECryptor V2.1X -> softcomplete.com"
	strings:
		$0 = {83 C6 14 8B 55 FC E9 ?? FF FF FF}
		$1 = {E9 ?? ?? ?? ?? 66 9C 60 50 8D 88 ?? ?? ?? ?? 8D 90 04 16 ?? ?? 8B DC 8B E1}
	condition:
		$0 or $1 at entrypoint
}
rule _Obsidium_V1258V133X__Obsidium_Software_
{
	meta:
		description = "Obsidium V1.2.5.8-V1.3.3.X -> Obsidium Software"
	strings:
		$0 = {EB 01 ?? E8 ?? 00 00 00 EB 02 ?? ?? EB}
	condition:
		$0 at entrypoint
}
rule _Microsoft_Visual_Cpp_V80_
{
	meta:
		description = "Microsoft Visual C++ V8.0"
	strings:
		$0 = {6A 14 68 ?? ?? ?? ?? E8 ?? ?? ?? ?? BB 94 00 00 00 53 6A 00 8B ?? ?? ?? ?? ?? FF D7 50 FF ?? ?? ?? ?? ?? 8B F0 85 F6 75 0A 6A 12 E8 ?? ?? ?? ?? 59 EB 18 89 1E 56 FF ?? ?? ?? ?? ?? 56 85 C0 75 14 50 FF D7 50 FF ?? ?? ?? ?? ?? B8}
	condition:
		$0 at entrypoint
}
rule _Enigma_Protector_1X__Sukhov_Vladimir__Serge_N_Markin_
{
	meta:
		description = "Enigma Protector 1.X -> Sukhov Vladimir & Serge N. Markin"
	strings:
		$0 = {00 00 00 56 69 72 74 75 61 6C 41 6C 6C 6F 63 00 00 00 56 69 72 74 75 61 6C 46 72 65 65 00 00 00 47 65 74 4D 6F 64 75 6C 65 48 61 6E 64 6C 65 41 00 00 00 47 65 74 50 72 6F 63 41 64 64 72 65 73 73 00 00 00 45 78 69 74 50 72 6F 63 65 73 73 00 00 00 4C 6F 61 64 4C 69 62 72 61 72 79 41 00 00 00 4D 65 73 73 61 67 65 42 6F 78 41 00 00 00 52 65 67 43 6C 6F 73 65 4B 65 79 00 00 00 53 79 73 46 72 65 65 53 74 72 69 6E 67 00 00 00 43 72 65 61 74 65 46 6F 6E 74 41 00 00 00 53 68 65 6C 6C 45 78 65 63 75 74 65 41 00 00}
	condition:
		$0
}
rule _WWPack32_v100_v111_v112_v120_
{
	meta:
		description = "WWPack32 v1.00, v1.11, v1.12, v1.20"
	strings:
		$0 = {53 55 8B E8 33 DB EB 60 0D 0A 0D 0A 57 57 50 61 63 6B 33 32}
	condition:
		$0 at entrypoint
}
rule _NME_11_Public__by_redlime_
{
	meta:
		description = "NME 1.1 Public - by redlime"
	strings:
		$0 = {55 8B EC 83 C4 F0 53 56 B8 30 35 14 13 E8 9A E6 FF FF 33 C0 55 68 6C 36 14 13 64 FF 30 64 89 20 B8 08 5C 14 13 BA 84 36 14 13 E8 7D E2 FF FF E8 C0 EA FF FF 8B 15 CC 45 14 13 A1 C8 45 14 13 E8 04 F8 FF FF 8B 15 D0 45 14 13 A1 C8 45 14 13 E8 F4 F7 FF FF 8B 15 CC 45 14 13 A1 C8 45 14 13 E8 2C F9 FF FF A3 F8 5A 14 13 8B 15 D0 45 14 13 A1 C8 45 14 13 E8 17 F9 FF FF A3 FC 5A 14 13 B8 04 5C 14 13 E8 20 FB FF FF 8B D8 85 DB 74 48 B8 00 5B 14 13 8B 15 C4 45 14 13 E8 1E E7 FF FF A1 04 5C 14 13 E8 A8 DA FF FF ?? ?? ?? ?? 5C 14 13 50 8B CE 8B D3 B8 00 5B 14 13 ?? ?? ?? ?? FF 8B C6 E8 DF FB FF FF 8B C6 E8 9C DA FF FF B8 00 5B 14 13 E8 72 E7 FF FF 33 C0 5A 59 59 64 89 10 68 73 36 14 13 C3 E9 0F DF FF FF EB F8 5E 5B E8 7E E0 FF FF 00 00 FF FF FF FF 0C 00 00 00 4E 4D 45 20 31 2E 31 20 53 74 75 62}
	condition:
		$0
}
rule _PureBasic_4x_DLL__Neil_Hodgson_
{
	meta:
		description = "PureBasic 4.x DLL -> Neil Hodgson"
	strings:
		$0 = {83 7C 24 08 01 75 0E 8B 44 24 04 A3 ?? ?? ?? 10 E8 22 00 00 00 83 7C 24 08 02 75 00 83 7C 24 08 00 75 05 E8 ?? 00 00 00 83 7C 24 08 03 75 00 B8 01 00 00 00 C2 0C 00 68 00 00 00 00 68 00 10 00 00 68 00 00 00 00 E8 ?? 0F 00 00 A3}
	condition:
		$0 at entrypoint
}
rule _PUNiSHER_V15_FEUERRADER_
{
	meta:
		description = "PUNiSHER V1.5-> FEUERRADER"
	strings:
		$0 = {3F 00 00 80 66 20 ?? 00 7E 20 ?? 00 92 20 ?? 00 A4 20 ?? 00 00 00 00 00 4B 45 52 4E 45 4C 33 32}
	condition:
		$0
}
rule _ACProtect_V20__risco_
{
	meta:
		description = "ACProtect V2.0 -> risco"
	strings:
		$0 = {68 ?? ?? ?? ?? 68 ?? ?? ?? ?? C3 C3}
	condition:
		$0 at entrypoint
}
rule _PECompact_v140__v145_
{
	meta:
		description = "PECompact v1.40 - v1.45"
	strings:
		$0 = {EB 06 68 ?? ?? ?? ?? C3 9C 60 E8 02 ?? ?? ?? 33 C0 8B C4 83 C0 04 93 8B E3 8B 5B FC 81 EB 0F A0 40 ?? 87 DD 8B 85 A6 A0 40 ?? 01 85 03 A0 40 ?? 66 C7 85 ?? A0 40 ?? 90 90 01 85 9E A0 40 ?? BB C3 11}
	condition:
		$0 at entrypoint
}
rule _Armadillo_v180_
{
	meta:
		description = "Armadillo v1.80"
	strings:
		$0 = {55 8B EC 6A FF 68 E8 C1 00 00 68 F4 86 00 00 64 A1 00 00 00 00 50 64 89 25 00 00 00 00 83 EC 58}
	condition:
		$0 at entrypoint
}
rule _BJFnt_v12_RC_
{
	meta:
		description = ".BJFnt v1.2 RC"
	strings:
		$0 = {EB 02 69 B1 83 EC 04 EB 03 CD 20 EB EB 01 EB 9C EB 01 EB EB}
	condition:
		$0 at entrypoint
}
rule _Upack_V036__Dwing_
{
	meta:
		description = "Upack V0.36 -> Dwing"
	strings:
		$0 = {0B 01 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 18 10 00 00 10 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? 00 10 00 00 00 02 00 00 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 00 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 00 00 00 00 0A 00 00 00 00 00 00 00 00 00 00 00 ?? ?? ?? ?? 14 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 47 65 74 50 72 6F 63 41 64 64 72 65 73 73 00 FF 76 08 FF 76 0C BE 1C 01}
		$1 = {BE ?? ?? ?? ?? FF 36 E9 C3 00 00 00}
	condition:
		$0 at entrypoint or $1 at entrypoint
}
rule _MASM32_
{
	meta:
		description = "MASM32"
	strings:
		$0 = {6A ?? 68 00 30 40 00 68 ?? 30 40 00 6A 00 E8 07 00 00 00 6A 00 E8 06 00 00 00 FF 25 08 20}
	condition:
		$0 at entrypoint
}
rule _eXPressor_V1451__CGSoftLabs_
{
	meta:
		description = "eXPressor V1.4.5.1 -> CGSoftLabs"
	strings:
		$0 = {55 8B EC 83 EC 58 53 56 57 83 65 DC 00 F3 EB 0C 65 58 50 72 2D 76 2E 31 2E 34 2E 00 A1 00 ?? ?? 00 05 00 ?? ?? 00 A3 08 ?? ?? 00 A1 08 ?? ?? 00 B9 81 ?? ?? 00 2B 48 18 89 0D 0C ?? ?? 00 83 3D}
	condition:
		$0 at entrypoint
}
rule _NET_executable__Microsoft_
{
	meta:
		description = ".NET executable -> Microsoft"
	strings:
		$0 = {00 00 00 00 00 00 00 00 5F 43 6F 72 45 78 65 4D 61 69 6E 00 6D 73 63 6F 72 65 65 2E 64 6C 6C 00 00 00 00 00 FF 25}
	condition:
		$0
}
rule _CrypWrap_vxx_
{
	meta:
		description = "CrypWrap vx.x"
	strings:
		$0 = {E8 B8 ?? ?? ?? E8 90 02 ?? ?? 83 F8 ?? 75 07 6A ?? E8 ?? ?? ?? ?? FF 15 49 8F 40 ?? A9 ?? ?? ?? 80 74 0E}
	condition:
		$0 at entrypoint
}
rule _Pelles_C_300_400_450_EXE_X86_CRTLIB_
{
	meta:
		description = "Pelles C 3.00, 4.00, 4.50 EXE (X86 CRT-LIB)"
	strings:
		$0 = {55 89 E5 6A FF 68 ?? ?? ?? ?? 68 ?? ?? ?? ?? 64 FF 35 ?? ?? ?? ?? 64 89 25 ?? ?? ?? ?? 83 EC ?? 53 56 57 89 65 E8 68 00 00 00 02 E8 ?? ?? ?? ?? 59 A3}
	condition:
		$0 at entrypoint
}
rule _Special_EXE_Pasword_Protector_V101_Eng__Pavol_Cerven_
{
	meta:
		description = "Special EXE Pasword Protector V1.01 (Eng) -> Pavol Cerven"
	strings:
		$0 = {60 E8 00 00 00 00 5D 81 ED 06 00 00 00 89 AD 8C 01 00 00 8B C5 2B 85 FE 75 00 00 89 85 3E}
	condition:
		$0 at entrypoint
}
rule _PseudoSigner_01_PESHiELD_025__Anorganix_
{
	meta:
		description = "PseudoSigner 0.1 [PESHiELD 0.25] --> Anorganix"
	strings:
		$0 = {60 E8 2B 00 00 00 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 CC CC E9}
	condition:
		$0 at entrypoint
}
rule _FSG_v110_Eng__dulekxt__Borland_Delphi__Microsoft_Visual_Cpp_
{
	meta:
		description = "FSG v1.10 (Eng) -> dulek/xt -> (Borland Delphi / Microsoft Visual C++)"
	strings:
		$0 = {1B DB E8 02 00 00 00 1A 0D 5B 68 80 ?? ?? 00 E8 01 00 00 00 EA 5A 58 EB 02 CD 20 68 F4 00 00 00 EB 02 CD 20 5E 0F B6 D0 80 CA 5C 8B 38 EB 01 35 EB 02 DC 97 81 EF F7 65 17 43 E8 02 00 00 00 97 CB 5B 81 C7 B2 8B A1 0C 8B D1 83 EF 17 EB 02 0C 65 83 EF 43 13}
		$1 = {C1 C8 10 EB 01 0F BF 03 74 66 77 C1 E9 1D 68 83 ?? ?? 77 EB 02 CD 20 5E EB 02 CD 20 2B F7}
	condition:
		$0 at entrypoint or $1 at entrypoint
}
rule _MESS_v120_
{
	meta:
		description = "MESS v1.20"
	strings:
		$0 = {FA B9 ?? ?? F3 ?? ?? E3 ?? EB ?? EB ?? B6}
	condition:
		$0 at entrypoint
}
rule _PCShrink_071_beta_
{
	meta:
		description = "PCShrink 0.71 beta"
	strings:
		$0 = {01 AD 54 3A 40 00 FF B5 50 3A 40 00 6A 40 FF 95 88 3A 40 00}
	condition:
		$0 at entrypoint
}
rule _Crunch_5_Fusion_4_
{
	meta:
		description = "Crunch 5 Fusion 4"
	strings:
		$0 = {EB 15 03 ?? ?? ?? 06 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 68 ?? ?? ?? ?? 55 E8}
	condition:
		$0
}
rule _Alex_Protector_v04_beta_1_by_Alex_
{
	meta:
		description = "Alex Protector v0.4 beta 1 by Alex"
	strings:
		$0 = {60 E8 01 00 00 00 C7 83 C4 04 33 C9 E8 01 00 00 00 68 83 C4 04 E8 01 00 00 00 68 83 C4 04 B9 ?? 00 00 00 E8 01 00 00 00 68 83 C4 04 E8 00 00 00 00 E8 01 00 00 00 C7 83 C4 04 8B 2C 24 83 C4 04 E8 01 00 00 00 A9 83 C4 04 81 ED 3C 13 40 00 E8 01 00 00 00 68}
	condition:
		$0
}
rule _Shrinker_v32_
{
	meta:
		description = "Shrinker v3.2"
	strings:
		$0 = {83 3D ?? ?? ?? ?? ?? 55 8B EC 56 57 75 65 68 00 01 ?? ?? E8 ?? E6 FF FF 83 C4 04 8B 75 08 A3 ?? ?? ?? ?? 85 F6 74 1D 68 FF}
	condition:
		$0 at entrypoint
}
rule _EXE32Pack_v136_
{
	meta:
		description = "EXE32Pack v1.36"
	strings:
		$0 = {3B C0 74 02 81 83 55 3B C0 74 02 81 83 53 3B C9 74 01 BC ?? ?? ?? ?? 02 81 ?? ?? ?? ?? ?? ?? ?? 3B DB 74 01 BE 5D 8B D5 81 ED CC 8D 40}
	condition:
		$0 at entrypoint
}
rule _eXPressorProtection_150X__CGSoftLabs_
{
	meta:
		description = "eXPressor.Protection 1.5.0.X -> CGSoftLabs"
	strings:
		$0 = {EB 01 68 EB 01 ?? ?? ?? ?? 83 EC 0C 53 56 57 EB 01 ?? 83 3D ?? ?? ?? ?? 00 74 08 EB 01 E9 E9 56 01 00 00 EB 02 E8 E9 C7 05 ?? ?? ?? ?? 01 00 00 00 EB 01 C2 E8 E2 05 00 00 EB 02 DA 9F 68 ?? ?? ?? ?? 68 ?? ?? ?? ?? B8 ?? ?? ?? ?? FF D0 59 59 EB 01 C8 EB 02 66 F0 68 ?? ?? ?? ?? E8 0E 05 00 00 59 EB 01 DD 83 65 F4 00 EB 07 8B 45 F4 40 89 45 F4 83 7D F4 61 73 1F EB 02 DA 1A 8B 45 F4 0F ?? ?? ?? ?? ?? ?? 33 45 F4 8B 4D F4 88 ?? ?? ?? ?? ?? EB 01 EB EB}
	condition:
		$0
}
rule _DBPE_v233__Ding_Boy_
{
	meta:
		description = "DBPE v2.33 -> Ding Boy"
	strings:
		$0 = {EB 20 ?? ?? 40 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 9C 55 57 56 52 51 53 9C E8 ?? ?? ?? ?? 5D 81 ED ?? ?? ?? ?? 9C 6A 10 73 0B EB 02 C1 51 E8 06 ?? ?? ?? C4 11 73 F7 5B CD 83 C4 04 EB 02 99 EB FF 0C 24 71}
	condition:
		$0 at entrypoint
}
rule _Armadillo_v19x_
{
	meta:
		description = "Armadillo v1.9x"
	strings:
		$0 = {55 8B EC 6A FF 68 98 ?? ?? ?? 68 10 ?? ?? ?? 64 A1 ?? ?? ?? ?? 50 64 89 25 ?? ?? ?? ?? 83 EC 58 53 56 57 89 65 E8 FF 15}
	condition:
		$0 at entrypoint
}
rule _Alex_Protector_10_beta_2_by_Alex_
{
	meta:
		description = "Alex Protector 1.0 beta 2 by Alex"
	strings:
		$0 = {60 E8 00 00 00 00 5D 81 ED 06 10 40 00 E8 24 00 00 00 EB 01 E9 8B 44 24 0C EB 03 EB 03 C7 EB FB E8 01 00 00 00 A8 83 C4 04 83 80 B8 00 00 00 02 33 C0 EB 01 E9 C3 58 83 C4 04 EB 03 EB 03 C7 EB FB E8 01 00 00 00 A8 83 C4 04 50 64 FF 35 00 00 00 00 64 89 25}
	condition:
		$0
}
rule _PROPACK_v208_emphasis_on_packed_size_locked_
{
	meta:
		description = "PRO-PACK v2.08, emphasis on packed size, locked"
	strings:
		$0 = {83 EC ?? 8B EC BE ?? ?? FC E8 ?? ?? 05 ?? ?? 8B C8 E8 ?? ?? 8B}
	condition:
		$0 at entrypoint
}
rule _PCPEC_alpha__preview_
{
	meta:
		description = "PCPEC alpha - preview"
	strings:
		$0 = {53 51 52 56 57 55 E8 00 00 00 00 5D 8B CD 81 ED 33 30 40 00}
	condition:
		$0 at entrypoint
}
rule _Packanoid__Arkanoid_
{
	meta:
		description = "Packanoid -> Arkanoid"
	strings:
		$0 = {BF 00 10 40 00 BE ?? ?? ?? 00 E8 9D 00 00 00 B8}
	condition:
		$0 at entrypoint
}
rule _RCryptor_v16__Vaska_
{
	meta:
		description = "RCryptor v1.6 -> Vaska"
	strings:
		$0 = {33 D0 68 ?? ?? ?? ?? FF D2}
		$1 = {33 D0 68 ?? ?? ?? ?? FF D2 B8 ?? ?? ?? ?? 3D ?? ?? ?? ?? 74 06 80 30 ?? 40 EB F3}
	condition:
		$0 at entrypoint or $1 at entrypoint
}
rule _DIET_v144_v145f_
{
	meta:
		description = "DIET v1.44, v1.45f"
	strings:
		$0 = {F8 9C 06 1E 57 56 52 51 53 50 0E FC 8C C8 BA ?? ?? 03 D0 52}
	condition:
		$0 at entrypoint
}
rule _Armadillo_v210b2_
{
	meta:
		description = "Armadillo v2.10b2"
	strings:
		$0 = {55 8B EC 6A FF 68 18 12 41 00 68 24 A0 40 00 64 A1 00 00 00 00 50 64 89 25 00 00 00 00 83 EC 58}
	condition:
		$0 at entrypoint
}
rule _RLPack_Full_Edition_117_iBox_aPLib__Ap0x_
{
	meta:
		description = "RLPack Full Edition 1.17 iBox [aPLib] -> Ap0x"
	strings:
		$0 = {60 E8 00 00 00 00 8B 2C 24 83 C4 04 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 8D B5 79 29 00 00 8D 9D 2C 03 00 00 33 FF ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? EB 0F FF 74 37 04 FF 34}
	condition:
		$0 at entrypoint
}
rule _CodeCrypt_v014b_
{
	meta:
		description = "CodeCrypt v0.14b"
	strings:
		$0 = {E9 C5 02 00 00 EB 02 83 3D 58 EB 02 FF 1D 5B EB 02 0F C7 5F}
	condition:
		$0 at entrypoint
}
rule _EXECryptor_226_minimum_protection_
{
	meta:
		description = "EXECryptor 2.2.6 (minimum protection)"
	strings:
		$0 = {50 68 ?? ?? ?? ?? 58 81 E0 ?? ?? ?? ?? E9 ?? ?? ?? 00 87 0C 24 59 E8 ?? ?? ?? 00 89 45 F8 E9 ?? ?? ?? ?? 0F 83 ?? ?? ?? 00 E9 ?? ?? ?? ?? 87 14 24 5A 57 68 ?? ?? ?? ?? E9 ?? ?? ?? ?? 58 81 C0 ?? ?? ?? ?? 2B 05 ?? ?? ?? ?? 81 C8 ?? ?? ?? ?? 81 E0 ?? ?? ?? ?? E9 ?? ?? ?? 00 C3 E9 ?? ?? ?? ?? C3 BF ?? ?? ?? ?? 81 CB ?? ?? ?? ?? BA ?? ?? ?? ?? 52 E9 ?? ?? ?? 00 E8 ?? ?? ?? 00 E9 ?? ?? ?? 00 E9 ?? ?? ?? ?? 87 34 24 5E 66 8B 00 66 25 ?? ?? E9 ?? ?? ?? ?? 8B CD 87 0C 24 8B EC 51 89 EC 5D 8B 05 ?? ?? ?? ?? 09 C0 E9 ?? ?? ?? ?? 59 81 C1 ?? ?? ?? ?? C1 C1 ?? 23 0D ?? ?? ?? ?? 81 F9 ?? ?? ?? ?? E9 ?? ?? ?? ?? C3 E9 ?? ?? ?? 00 13 D0 0B F9 E9 ?? ?? ?? ?? 51 E8 ?? ?? ?? ?? 8B 64 24 08 31 C0 64 8F 05 00 00 00 00 5A E9 ?? ?? ?? ?? 3C A4 0F 85 ?? ?? ?? 00 8B 45 FC 66 81 38 ?? ?? 0F 84 05 00 00 00 E9 ?? ?? ?? ?? 0F 84 ?? ?? ?? ?? E9 ?? ?? ?? ?? 87 3C 24 5F 31 DB 31 C9 31 D2 68 ?? ?? ?? ?? E9 ?? ?? ?? ?? 89 45 FC 33 C0 89 45 F4 83 7D FC 00 E9 ?? ?? ?? ?? 53 52 8B D1 87 14 24 81 C0 ?? ?? ?? ?? 0F 88 ?? ?? ?? ?? 3B CB}
	condition:
		$0 at entrypoint
}
rule _Mew_10_execoder_10___Northfox_HCC_
{
	meta:
		description = "Mew 10 exe-coder 1.0  -> Northfox [HCC]"
	strings:
		$0 = {33 C0 E9 ?? ?? FF FF 6A ?? ?? ?? ?? ?? 70}
	condition:
		$0 at entrypoint
}
rule _PseudoSigner_02_PESHiELD_025__Anorganix_
{
	meta:
		description = "PseudoSigner 0.2 [PESHiELD 0.25] --> Anorganix"
	strings:
		$0 = {60 E8 2B 00 00 00 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 CC CC}
	condition:
		$0 at entrypoint
}
rule _yP_v10b_by_Ashkbiz_Danehkar_
{
	meta:
		description = "yP v1.0b by Ashkbiz Danehkar"
	strings:
		$0 = {55 8B EC 53 56 57 60 E8 00 00 00 00 5D 81 ED 4C 32 40 00 E8 03 00 00 00 EB 01 ?? B9 EA 47 40 00 81 E9 E9 32 40 00 8B D5 81 C2 E9 32 40 00 8D 3A 8B F7 33 C0 E8 04 00 00 00 90 EB 01 C2 E8 03 00 00 00 EB 01 ?? AC ?? ?? ?? ?? ?? ?? ?? EB 01 E8}
	condition:
		$0
}
rule _RLP_V073beta__ap0x_
{
	meta:
		description = "RLP V0.7.3.beta -> ap0x"
	strings:
		$0 = {2E 72 6C 70 00 00 00 00 00 50 00 00 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 00 00 00 00 00 00 00 00 00 00 00 00 20 00 00 E0}
	condition:
		$0
}
rule _PE_Admin_10_EncryptPE_12003518_Sold__Flying_Cat_
{
	meta:
		description = "PE_Admin 1.0 (EncryptPE 1.2003.5.18 Sold) -> Flying Cat"
	strings:
		$0 = {60 9C 64 FF 35 00 00 00 00 E8 79 01 00 00 90 00 00 00 00 00 00 00 00 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 00 00 00 00 6B 65 72 6E 65 6C 33 32 2E 64 6C 6C 00 00 00 47 65 74 53 79 73 74 65 6D 44 69 72 65 63 74 6F 72 79 41 00 00 00 43 72 65 61 74 65 46 69 6C 65 41 00 00 00 43 72 65 61 74 65 46 69 6C 65 4D 61 70 70 69 6E 67 41 00 00 00 4D 61 70 56 69 65 77 4F 66 46 69 6C 65 00 00 00 55 6E 6D 61 70 56 69 65 77 4F 66 46 69 6C 65 00 00 00 43 6C 6F 73 65 48 61 6E 64 6C 65 00 00 00 4C 6F 61 64 4C 69 62 72 61 72 79 41 00 00 00 47 65 74 50 72 6F 63 41 64 64 72 65 73 73 00 00 00 45 78 69 74 50 72 6F 63 65 73 73}
		$1 = {60 9C 64 FF 35 00 00 00 00 E8 79 01 00 00 90 00 00 00 00 00 00 00 00 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 00 00 00 00 6B 65 72 6E 65 6C 33 32 2E 64 6C 6C 00 00 00 47 65 74 53 79 73 74 65 6D 44 69 72 65 63 74 6F 72 79 41 00 00 00 43 72 65 61 74 65 46 69 6C 65 41 00 00 00 43 72 65 61 74 65 46 69 6C 65 4D 61 70 70 69 6E 67 41 00 00 00 4D 61 70 56 69 65 77 4F 66 46 69 6C 65 00 00 00 55 6E 6D 61 70 56 69 65 77 4F 66 46 69 6C 65 00 00 00 43 6C 6F 73 65 48 61 6E 64 6C 65 00 00 00 4C 6F 61 64 4C 69 62 72 61 72 79 41 00 00 00 47 65 74 50 72 6F 63 41 64 64 72 65 73 73 00 00 00 45 78 69 74 50 72 6F 63 65 73 73 00 00 00 00}
	condition:
		$0 at entrypoint or $1 at entrypoint
}
rule _InstallAnywhere_61__Zero_G_Software_Inc_
{
	meta:
		description = "InstallAnywhere 6.1 -> Zero G Software Inc"
	strings:
		$0 = {60 BE 00 A0 42 00 8D BE 00 70 FD FF 57 83 CD FF EB 10 90 90 90 90 90 90 8A 06 46 88 07 47 01 DB 75 07 8B 1E 83 EE FC 11 DB 72 ED B8 01 00 00 00 01 DB 75 07 8B 1E 83 EE FC 11 DB 11 C0 01 DB 73 EF 75 09 8B 1E 83 EE FC 11 DB 73 E4 31 C9 83 E8 03 72 0D C1 E0}
	condition:
		$0 at entrypoint
}
rule _Shrink_v10_
{
	meta:
		description = "Shrink v1.0"
	strings:
		$0 = {50 9C FC BE ?? ?? BF ?? ?? 57 B9 ?? ?? F3 A4 8B ?? ?? ?? BE ?? ?? BF ?? ?? F3 A4 C3}
	condition:
		$0 at entrypoint
}
rule _RCryptor_16c__Vaska_
{
	meta:
		description = "RCryptor 1.6c -> Vaska"
	strings:
		$0 = {8B C7 03 04 24 2B C7 80 38 50 0F 85 1B 8B 1F FF 68 ?? ?? ?? ?? B8 ?? ?? ?? ?? 3D ?? ?? ?? ?? 74 06 80 30 ?? 40 EB F3 B8 ?? ?? ?? ?? 3D ?? ?? ?? ?? 74 06 80 30 ?? 40 EB F3}
	condition:
		$0 at entrypoint
}
rule _PE_Diminisher_v01__Teraphy_
{
	meta:
		description = "PE Diminisher v0.1 -> Teraphy"
	strings:
		$0 = {53 51 52 56 57 55 E8 00 00 00 00 5D 8B D5 81 ED A2 30 40 00 2B 95 91 33 40 00 81 EA 0B 00 00 00 89 95 9A 33 40 00 80 BD 99 33 40 00 00 74 50 E8 02 01 00 00 8B FD 8D 9D 9A 33 40 00 8B 1B 8D 87}
	condition:
		$0 at entrypoint
}
rule _ChinaProtect__dummy_
{
	meta:
		description = "ChinaProtect -> dummy"
	strings:
		$0 = {C3 E8 ?? ?? ?? ?? B9 ?? ?? ?? ?? E8 ?? ?? ?? ?? FF 30 C3 B9 ?? ?? ?? ?? E8 ?? ?? ?? ?? FF 30 C3 B9 ?? ?? ?? ?? E8 ?? ?? ?? ?? FF 30 C3 B9 ?? ?? ?? ?? E8 ?? ?? ?? ?? FF 30 C3 56 8B ?? ?? ?? 6A 40 68 00 10 00 00 8D ?? ?? 50 6A 00 E8 ?? ?? ?? ?? 89 30 83 C0 04 5E C3 8B 44 ?? ?? 56 8D ?? ?? 68 00 40 00 00 FF 36 56 E8 ?? ?? ?? ?? 68 00 80 00 00 6A 00 56 E8 ?? ?? ?? ?? 5E C3}
	condition:
		$0
}
rule _Armadillo_v410__Silicon_Realms_Toolworks_
{
	meta:
		description = "Armadillo v4.10 -> Silicon Realms Toolworks"
	strings:
		$0 = {55 8B EC 6A FF 68 F8 8E 4C 00 68 D0 EA 49 00 64 A1 00 00 00 00 50 64 89 25 00 00 00 00 83 EC 58 53 56 57 89 65 E8 FF 15 88 31 4C 00 33 D2 8A D4 89 15 7C A5 4C 00 8B C8 81 E1 FF 00 00 00 89 0D 78 A5 4C 00 C1 E1 08 03 CA 89 0D 74 A5 4C 00 C1 E8 10 A3 70 A5}
	condition:
		$0 at entrypoint
}
rule _PseudoSigner_02_Borland_Delphi_DLL__Anorganix_
{
	meta:
		description = "PseudoSigner 0.2 [Borland Delphi DLL] --> Anorganix"
	strings:
		$0 = {55 8B EC 83 C4 B4 B8 90 90 90 90 E8 00 00 00 00 E8 00 00 00 00 8D 40 00}
	condition:
		$0 at entrypoint
}
rule _FSG_v110_Eng__dulekxt__Borland_Delphi__Microsoft_Visual_Cpp__ASM_
{
	meta:
		description = "FSG v1.10 (Eng) -> dulek/xt -> (Borland Delphi / Microsoft Visual C++ / ASM)"
	strings:
		$0 = {EB 02 CD 20 EB 02 CD 20 EB 02 CD 20 C1 E6 18 BB 80 ?? ?? 00 EB 02 82 B8 EB 01 10 8D 05 F4}
	condition:
		$0 at entrypoint
}
rule _Sentinel_SuperPro_Automatic_Protection_v640__Safenet_
{
	meta:
		description = "Sentinel SuperPro (Automatic Protection) v6.4.0 -> Safenet"
	strings:
		$0 = {68 ?? ?? ?? ?? 6A 01 6A 00 FF 15 ?? ?? ?? ?? A3 ?? ?? ?? ?? FF 15 ?? ?? ?? ?? 33 C9 3D B7 00 00 00 A1 ?? ?? ?? ?? 0F 94 C1 85 C0 89 0D ?? ?? ?? ?? 0F 85 ?? ?? ?? ?? 55 56 C7 05 ?? ?? ?? ?? 01 00 00 00 FF 15 ?? ?? ?? ?? 01 05 ?? ?? ?? ?? FF 15}
	condition:
		$0 at entrypoint
}
rule _ENIGMA_Protector_V11V12_Sukhov_Vladimir_
{
	meta:
		description = "ENIGMA Protector V1.1-V1.2-> Sukhov Vladimir"
	strings:
		$0 = {60 E8 00 00 00 00 5D 83 ED 06 81}
	condition:
		$0 at entrypoint
}
rule _Macromedia_Windows_Flash_ProjectorPlayer_v60_
{
	meta:
		description = "Macromedia Windows Flash Projector/Player v6.0"
	strings:
		$0 = {83 EC 44 56 FF 15 24 81 49 00 8B F0 8A 06 3C 22 75 1C 8A 46 01 46 3C 22 74 0C 84 C0 74 08 8A 46 01 46 3C 22 75 F4 80 3E 22 75 0F 46 EB 0C}
	condition:
		$0 at entrypoint
}
rule _DevCpp_4992__Bloodshed_Software_
{
	meta:
		description = "Dev-C++ 4.9.9.2 -> Bloodshed Software"
	strings:
		$0 = {55 89 E5 83 EC 08 C7 04 24 01 00 00 00 FF 15 ?? ?? ?? 00 E8 C8 FE FF FF 90 8D B4 26 00 00 00 00 55 89 E5 83 EC 08 C7 04 24 02 00 00 00 FF 15 ?? ?? ?? 00 E8 A8 FE FF FF 90 8D B4 26 00 00 00 00 55 8B 0D ?? ?? ?? 00 89 E5 5D FF E1 8D 74 26 00 55 8B 0D}
	condition:
		$0 at entrypoint
}
rule _PECompact_v098_
{
	meta:
		description = "PECompact v0.98"
	strings:
		$0 = {EB 06 68 ?? ?? ?? ?? C3 9C 60 E8 02 ?? ?? ?? 33 C0 8B C4 83 C0 04 93 8B E3 8B 5B FC 81 EB D7 84 40 ?? 87 DD 8B 85 5C 85}
	condition:
		$0 at entrypoint
}
rule _Upack_V010V011__Dwing_
{
	meta:
		description = "Upack V0.10-V0.11 -> Dwing"
	strings:
		$0 = {BE ?? ?? ?? ?? AD 8B F8 95 A5 33 C0 33 C9 AB 48 AB F7 D8 B1 ?? F3 AB C1 E0 ?? B5 ?? F3 AB AD 50 97 51 AD 87 F5 58 8D 54 86 5C FF D5 72 5A 2C ?? 73 ?? B0 ?? 3C ?? 72 02 2C ?? 50 0F B6 5F FF C1 E3 ?? B3 ?? 8D 1C 5B 8D ?? ?? ?? ?? ?? ?? B0 ?? 67 E3 29 8B D7 2B 56 0C 8A 2A 33 D2 84 E9 0F 95 C6 52 FE C6 8A D0 8D 14 93 FF D5}
	condition:
		$0 at entrypoint
}
rule _EmbedPE_v124__cyclotron_
{
	meta:
		description = "EmbedPE v1.24 -> cyclotron"
	strings:
		$0 = {83 EC 50 60 68 ?? ?? ?? ?? E8 CB FF 00 00}
	condition:
		$0 at entrypoint
}
rule _MSLRH_v032a_fake_SVKP_111__emadicius_
{
	meta:
		description = "[MSLRH] v0.32a (fake SVKP 1.11) -> emadicius"
	strings:
		$0 = {60 E8 00 00 00 00 5D 81 ED 06 00 00 00 64 A0 23 00 00 00 83 C5 06 61 EB 05 E8 EB 04 40 00 EB FA E8 0A 00 00 00 E8 EB 0C 00 00 E8 F6 FF FF FF E8 F2 FF FF FF 83 C4 08 74 04 75 02 EB 02 EB 01 81 50 E8 02 00 00 00 29 5A 58 6B C0 03 E8 02 00 00 00 29 5A 83 C4 04 58 74 04 75 02 EB 02 EB 01 81 0F 31 50 0F 31 E8 0A 00 00 00 E8 EB 0C 00 00 E8 F6 FF FF FF E8 F2 FF FF FF 83 C4 08 2B 04 24 74 04 75 02 EB 02 EB 01}
	condition:
		$0 at entrypoint
}
rule _Soft_Defender_v10__v11_
{
	meta:
		description = "Soft Defender v1.0 - v1.1"
	strings:
		$0 = {74 07 75 05 19 32 67 E8 E8 74 1F 75 1D E8 68 39 44 CD ?? 59 9C 50 74 0A 75 08 E8 59 C2 04 ?? 55 8B EC E8 F4 FF FF FF 56 57 53 78 0F 79 0D E8 34 99 47 49 34 33 EF 31 34 52 47 23 68 A2 AF 47 01 59 E8 ?? ?? ?? ?? 58 05 BA 01 ?? ?? 03 C8 74 BE 75 BC E8}
	condition:
		$0 at entrypoint
}
rule _Anslym_Crypter_
{
	meta:
		description = "Anslym Crypter"
	strings:
		$0 = {55 8B EC 83 C4 F0 53 56 B8 38 17 05 10 E8 5A 45 FB FF 33 C0 55 68 21 1C 05 10 64 FF 30 64 89 20 EB 08 FC FC FC FC FC FC 27 54 E8 85 4C FB FF 6A 00 E8 0E 47 FB FF 6A 0A E8 27 49 FB FF E8 EA 47 FB FF 6A 0A 68 30 1C 05 10 A1 60 56 05 10 50 E8 68 47 FB FF 8B D8 85 DB 0F 84 B6 02 00 00 53 A1 60 56 05 10 50 E8 F2 48 FB FF 8B F0 85 F6 0F 84 A0 02 00 00 E8 F3}
	condition:
		$0 at entrypoint
}
rule _PE_Encrypt_10__Liwuyue_
{
	meta:
		description = "PE Encrypt 1.0 -> Liwuyue"
	strings:
		$0 = {55 8B EC 83 C4 D0 53 56 57 8D 75 FC 8B 44 24 30 25 00 00 FF FF 81 38 4D 5A 90 00 74 07 2D 00 10 00 00 EB F1 89 45 FC E8 C8 FF FF FF 2D 0F 05 00 00 89 45 F4 8B 06 8B 40 3C 03 06 8B 40 78 03 06 8B C8 8B 51 20 03 16 8B 59 24 03 1E 89 5D F0 8B 59 1C 03 1E 89 5D EC 8B 41 18 8B C8 49 85 C9 72 5A 41 33 C0 8B D8 C1 E3 02 03 DA 8B 3B 03 3E 81 3F 47 65 74 50 75 40 8B DF 83 C3 04 81 3B 72 6F 63 41 75 33 8B DF 83 C3 08 81 3B 64 64 72 65 75 26 83 C7 0C 66 81 3F 73 73}
	condition:
		$0 at entrypoint
}
rule _Upack_v031_beta__Dwing_
{
	meta:
		description = "Upack v0.31 beta -> Dwing"
	strings:
		$0 = {E9 ?? ?? ?? ?? 42 79 44 77 69 6E 67 40 00 00 00 50 45 00 00 4C 01 02 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 31}
	condition:
		$0 at entrypoint
}
rule _PEiDBundle_v102__v104__BoB__BobSoft_
{
	meta:
		description = "PEiD-Bundle v1.02 - v1.04 --> BoB / BobSoft"
	strings:
		$0 = {60 E8 ?? 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 36 ?? ?? ?? 2E ?? ?? ?? 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 01 00 00 80 00 00 00 00 4B 65 72 6E 65 6C 33 32 2E 44}
	condition:
		$0 at entrypoint
}
rule _ThemidaWinLicense_V10XV17X_DLL__Oreans_Technologies_
{
	meta:
		description = "Themida/WinLicense V1.0.X-V1.7.X DLL -> Oreans Technologies"
	strings:
		$0 = {B8 ?? ?? ?? ?? 60 0B C0 74 58 E8 00 00 00 00 58 05 ?? ?? ?? ?? 80 38 E9 75 03 61 EB 35 E8 00 00 00 00 58 25 00 F0 FF FF 33 FF 66 BB ?? ?? 66 83 ?? ?? 66 39 18 75 12 0F B7 50 3C 03 D0 BB ?? ?? ?? ?? 83 C3 ?? 39 1A 74 07 2D 00 10 00 00 EB DA 8B F8 B8 ?? ?? ?? ?? 03 C7 B9 ?? ?? ?? ?? 03 CF EB 0A B8 ?? ?? ?? ?? B9 ?? ?? ?? ?? 50 51 E8 84 00 00 00 E8 00 00 00 00 58 2D ?? ?? ?? ?? B9 ?? ?? ?? ?? C6 00 E9 83 E9 ?? 89 48 01 61 E9}
	condition:
		$0 at entrypoint
}
rule _NJoy_10__NEX_
{
	meta:
		description = "N-Joy 1.0 -> NEX"
	strings:
		$0 = {55 8B EC 83 C4 F0 B8 9C 3B 40 00 E8 8C FC FF FF 6A 00 68 E4 39 40 00 6A 0A 6A 00 E8 40 FD FF FF E8 EF F5 FF FF 8D 40 00}
	condition:
		$0 at entrypoint
}
rule _Hyings_PEArmor_075exe__Hying_CCG_
{
	meta:
		description = "Hying's PE-Armor 0.75.exe -> Hying [CCG]"
	strings:
		$0 = {00 00 00 00 00 00 00 00 ?? ?? 00 00 00 00 00 00 ?? ?? 01 00 00 00 00 00 00 00 00 00 56 69 72 74 75 61 6C 41 6C 6C 6F 63 00 00 00 00 00 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 00 00 00 00 00 00 00 00 00 74 ?? ?? ?? 00 00 00 00 00}
	condition:
		$0
}
rule _LTC_v13_
{
	meta:
		description = "LTC v1.3"
	strings:
		$0 = {54 E8 00 00 00 00 5D 8B C5 81 ED F6 73 40 00 2B 85 87 75 40 00 83 E8 06}
	condition:
		$0 at entrypoint
}
rule _Thinstall_3035__Jtit_
{
	meta:
		description = "Thinstall 3.035 -> Jtit"
	strings:
		$0 = {9C 60 68 53 74 41 6C 68 54 68 49 6E E8 00 00 00 00 58 BB 37 1F 00 00 2B C3 50 68 ?? ?? ?? ?? 68 00 28 00 00 68 04 01 00 00 E8 BA FE FF FF E9 90 FF FF FF CC CC CC CC CC CC CC 55 8B EC 83 C4 F4 FC 53 57 56 8B 75 08 8B 7D 0C C7 45 FC 08 00 00 00 33 DB BA 00}
		$1 = {9C 60 68 53 74 41 6C 68 54 68 49 6E E8 00 00 00 00 58 BB 37 1F 00 00 2B C3 50 68 ?? ?? ?? ?? 68 00 28 00 00 68 04 01 00 00 E8 BA FE FF FF E9 90 FF FF FF CC CC CC CC CC CC CC 55 8B EC 83 C4 F4 FC 53 57 56 8B 75 08 8B 7D 0C C7 45 FC 08 00 00 00 33 DB BA 00 00 00 80 43 33 C0 E8 19 01 00 00 73 0E 8B 4D F8 E8 27 01 00 00 02 45 F7 AA EB E9 E8 04 01 00 00 0F 82 96 00 00 00 E8 F9 00 00 00 73 5B B9 04 00 00 00 E8 05 01 00 00 48 74 DE 0F 89 C6 00 00 00 E8 DF 00 00 00 73 1B 55 BD 00 01 00 00 E8 DF 00 00 00 88 07 47 4D 75 F5 E8 C7 00 00 00 72 E9 5D EB A2 B9 01 00 00 00 E8 D0 00 00 00 83 C0 07 89 45 F8 C6 45 F7 00 83 F8 08 74 89 E8 B1 00 00 00 88 45 F7 E9 7C FF FF FF B9 07 00 00 00 E8 AA 00 00 00 50 33 C9 B1 02 E8 A0 00 00 00 8B C8 41 41 58 0B C0 74 04 8B D8 EB 5E 83 F9 02 74 6A 41 E8 88 00 00 00 89 45 FC E9 48 FF FF FF E8 87 00 00 00 49 E2 09 8B C3 E8 7D 00 00 00 EB 3A 49 8B C1 55 8B 4D FC 8B E8 33 C0 D3 E5 E8 5D 00 00 00 0B C5 5D 8B D8 E8 5F 00 00 00 3D 00 00 01 00 73 14 3D FF 37 00 00 73 0E 3D 7F 02 00 00 73 08 83 F8 7F 77 04 41 41 41 41 56 8B F7 2B F0 F3 A4 5E E9 F0 FE FF FF 33 C0 EB 05 8B C7 2B 45 0C 5E 5F 5B C9 C2 08 00 03 D2 75 08 8B 16 83 C6 04 F9 13 D2 C3 B9 08 00 00 00 E8 01 00 00 00 C3 33 C0 E8 E1 FF FF FF 13 C0 E2 F7 C3 33 C9 41 E8 D4 FF FF FF 13 C9 E8 CD FF FF FF 72 F2 C3}
	condition:
		$0 at entrypoint or $1 at entrypoint
}
rule _ExeSmasher_vxx_
{
	meta:
		description = "ExeSmasher vx.x"
	strings:
		$0 = {9C FE 03 ?? 60 BE ?? ?? 41 ?? 8D BE ?? 10 FF FF 57 83 CD FF EB 10}
	condition:
		$0 at entrypoint
}
rule _NsPack_V13__LiuXingPing_
{
	meta:
		description = "NsPack V1.3 -> LiuXingPing"
	strings:
		$0 = {9C 60 E8 00 00 00 00 5D B8 B3 85 40 00 2D AC 85 40 00}
	condition:
		$0 at entrypoint
}
rule _HACKSTOP_v110p1_
{
	meta:
		description = "HACKSTOP v1.10p1"
	strings:
		$0 = {B4 30 CD 21 86 E0 3D 00 03 73 ?? B4 2F CD 21 B4 2A CD 21 B4 2C CD 21 B0 FF B4 4C CD 21 50 B8 ?? ?? 58 EB}
	condition:
		$0 at entrypoint
}
rule _MSLRH_v32a__emadicius_
{
	meta:
		description = "[MSLRH] v32a -> emadicius"
	strings:
		$0 = {EB 05 E8 EB 04 40 00 EB FA E8 0A 00 00 00 E8 EB 0C 00 00 E8 F6 FF FF FF E8 F2 FF FF FF 83 C4 08 74 04 75 02 EB 02 EB 01 81 E8 0A 00 00 00 E8 EB 0C 00 00 E8 F6 FF FF FF E8 F2 FF FF FF 83 C4 08 74 04 75 02 EB 02 EB 01 81 50 E8 02 00 00 00 29 5A 58 6B C0 03 E8 02 00 00 00 29 5A 83 C4 04 58 74 04 75 02 EB 02 EB 01 81 0F 31 50 0F 31 E8 0A 00 00 00 E8 EB 0C 00 00 E8 F6 FF FF FF E8 F2 FF FF FF 83 C4 08 2B 04 24 74 04 75 02 EB 02 EB 01 81 83 C4 04 E8 0A 00 00 00 E8 EB 0C 00 00 E8 F6 FF FF FF E8 F2 FF FF FF 83 C4 08 3D FF 0F 00 00 EB 01 68 EB 02 CD 20 EB 01 E8 76 1B EB 01 68 EB 02 CD 20 EB 01 E8 CC 66 B8 FE 00 74 04 75 02 EB 02 EB 01 81 66 E7 64 E8 0A 00 00 00 E8 EB 0C 00 00 E8 F6 FF FF FF E8 F2 FF FF FF 83 C4 08 74 04 75 02 EB 02 EB 01 81 0F 31 50 0F 31}
	condition:
		$0 at entrypoint
}
rule _FishPE_V10X__hellfish_
{
	meta:
		description = "FishPE V1.0X -> hellfish"
	strings:
		$0 = {60 E8 ?? ?? ?? ?? C3 90 09 00 00 00 2C 00 00 00 ?? ?? ?? ?? C4 03 00 00 BC A0 00 00 00 40 01 00 ?? ?? ?? ?? 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 99 00 00 00 00 8A 00 00 00 10 00 00 ?? ?? 00 00 ?? ?? ?? ?? 00 00 02 00 00 00 A0 00 00 18 01 00 00 ?? ?? ?? ?? 00 00 0C 00 00 00 B0 00 00 38 0A 00 00 ?? ?? ?? ?? 00 00 00 00 00 00 C0 00 00 40 39 00 00 ?? ?? ?? ?? 00 00 08 00 00 00 00 01 00 C8 06 00 00}
	condition:
		$0 at entrypoint
}
rule _KByS_V028__shoooo_
{
	meta:
		description = "KByS V0.28 -> shoooo"
	strings:
		$0 = {68 ?? ?? ?? ?? E8 01 00 00 00 C3 C3 60 8B 74 24 24 8B 7C 24 28 FC B2 80 33 DB A4}
	condition:
		$0 at entrypoint
}
rule _eXPressor_v1451__CGSoftLabs_
{
	meta:
		description = "eXPressor v1.4.5.1 -> CGSoftLabs"
	strings:
		$0 = {55 8B EC 83 EC 58 53 56 57 83 65 DC 00 F3 EB 0C 65 58 50 72 2D 76 2E 31 2E 34 2E 00 A1 00 ?? ?? ?? 05 00 ?? ?? ?? A3 08 ?? ?? ?? A1 08 ?? ?? ?? B9 81 ?? ?? ?? 2B 48 18 89 0D 0C ?? ?? ?? 83 3D 10 ?? ?? ?? 00 74 16 A1 08 ?? ?? ?? 8B 0D 0C ?? ?? ?? 03 48 14}
		$1 = {55 8B EC 83 EC 58 53 56 57 83 65 DC 00 F3 EB 0C 65 58 50 72 2D 76 2E 31 2E 34 2E 00 A1 00 ?? ?? ?? 05 00 ?? ?? ?? A3 08 ?? ?? ?? A1 08 ?? ?? ?? B9 81 ?? ?? ?? 2B 48 18 89 0D 0C ?? ?? ?? 83 3D 10 ?? ?? ?? 00 74 16 A1 08 ?? ?? ?? 8B 0D 0C ?? ?? ?? 03 48 14 89 4D CC}
	condition:
		$0 at entrypoint or $1 at entrypoint
}
rule _PECompact_v140b2__v140b4_
{
	meta:
		description = "PECompact v1.40b2 - v1.40b4"
	strings:
		$0 = {EB 06 68 ?? ?? ?? ?? C3 9C 60 E8 02 ?? ?? ?? 33 C0 8B C4 83 C0 04 93 8B E3 8B 5B FC 81 EB 0F A0 40 ?? 87 DD 8B 85 A6 A0 40 ?? 01 85 03 A0 40 ?? 66 C7 85 ?? A0 40 ?? 90 90 01 85 9E A0 40 ?? BB 86 11}
	condition:
		$0 at entrypoint
}
rule _Vx_Kuku448_
{
	meta:
		description = "Vx: Kuku.448"
	strings:
		$0 = {AE 75 ED E2 F8 89 3E ?? ?? BA ?? ?? 0E 07 BF ?? ?? EB}
	condition:
		$0 at entrypoint
}
rule _NsPacK_V31__LiuXingPing_
{
	meta:
		description = "NsPacK V3.1 -> LiuXingPing"
	strings:
		$0 = {9C 60 E8 00 00 00 00 5D 83 ED 07 8D 9D ?? ?? ?? ?? 8A 03 3C 00 74}
	condition:
		$0 at entrypoint
}
rule _GHF_Protector_pack_only__GPcH_
{
	meta:
		description = "GHF Protector (pack only) --> GPcH"
	strings:
		$0 = {60 68 ?? ?? ?? ?? B8 ?? ?? ?? ?? FF 10 68 ?? ?? ?? ?? 50 B8 ?? ?? ?? ?? FF 10 68 00 00 00 00 6A 40 FF D0 89 05 ?? ?? ?? ?? 89 C7 BE ?? ?? ?? ?? 60 FC B2 80 31 DB A4 B3 02 E8 6D 00 00 00 73 F6 31 C9 E8 64 00 00 00 73 1C 31 C0 E8 5B 00 00 00 73 23 B3 02 41 B0 10 E8 4F 00 00 00 10 C0 73 F7 75 3F AA EB D4 E8 4D 00 00 00 29 D9 75 10 E8 42 00 00 00 EB 28 AC D1 E8 74 4D 11 C9 EB 1C 91 48 C1 E0 08 AC E8 2C 00 00 00 3D 00 7D 00 00 73 0A 80 FC 05 73 06 83 F8 7F 77 02 41 41 95 89 E8 B3 01 56 89 FE 29 C6 F3 A4 5E EB 8E 00 D2 75 05 8A 16 46 10 D2 C3 31 C9 41 E8 EE FF FF FF 11 C9 E8 E7 FF FF FF 72 F2 C3 61 B9 FC FF FF FF 8B 1C 08 89 99 ?? ?? ?? ?? E2 F5 90 90 BA ?? ?? ?? ?? BE ?? ?? ?? ?? 01 D6 8B 46 0C 85 C0 0F 84 87 00 00 00 01 D0 89 C3 50 B8 ?? ?? ?? ?? FF 10 85 C0 75 08 53 B8 ?? ?? ?? ?? FF 10 89 05 ?? ?? ?? ?? C7 05 ?? ?? ?? ?? 00 00 00 00 BA ?? ?? ?? ?? 8B 06 85 C0 75 03 8B 46 10 01 D0 03 05 ?? ?? ?? ?? 8B 18 8B 7E 10 01 D7 03 3D ?? ?? ?? ?? 85 DB 74 2B F7 C3 00 00 00 80 75 04 01 D3 43 43 81 E3 FF FF FF 0F 53 FF 35 ?? ?? ?? ?? B8 ?? ?? ?? ?? FF 10 89 07 83 05 ?? ?? ?? ?? 04 EB AE 83 C6 14 BA ?? ?? ?? ?? E9 6E FF FF FF 68 ?? ?? ?? ?? B8 ?? ?? ?? ?? FF 10 68 ?? ?? ?? ?? 50 B8 ?? ?? ?? ?? FF 10 8B 15 ?? ?? ?? ?? 52 FF D0 61 BA ?? ?? ?? ?? FF E2 90 C3}
		$1 = {60 68 ?? ?? ?? ?? B8 ?? ?? ?? ?? FF 10 68 ?? ?? ?? ?? 50 B8 ?? ?? ?? ?? FF 10 68 00 00 00 00 6A 40 FF D0 89 05 ?? ?? ?? ?? 89 C7 BE ?? ?? ?? ?? 60 FC B2 80 31 DB A4 B3 02 E8 6D 00 00 00 73 F6 31 C9 E8 64 00 00 00 73 1C 31 C0 E8 5B 00 00 00 73 23 B3 02 41}
	condition:
		$0 at entrypoint or $1
}
rule _Vx_Necropolis_
{
	meta:
		description = "Vx: Necropolis"
	strings:
		$0 = {50 FC AD 33 C2 AB 8B D0 E2 F8}
	condition:
		$0 at entrypoint
}
rule _PseudoSigner_01_DEF_10__Anorganix_
{
	meta:
		description = "PseudoSigner 0.1 [DEF 1.0] --> Anorganix"
	strings:
		$0 = {BE 00 01 40 00 6A 05 59 80 7E 07 00 74 11 8B 46 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 83 C1 01 E9}
	condition:
		$0 at entrypoint
}
rule _FSG_v110_Eng__bartxt__WinRARSFX_
{
	meta:
		description = "FSG v1.10 (Eng) -> bart/xt -> WinRAR-SFX"
	strings:
		$0 = {80 E9 A1 C1 C1 13 68 E4 16 75 46 C1 C1 05 5E EB 01 9D 68 64 86 37 46 EB 02 8C E0 5F F7 D0}
		$1 = {EB 01 02 EB 02 CD 20 B8 80 ?? 42 00 EB 01 55 BE F4 00 00 00 13 DF 13 D8 0F B6 38 D1 F3 F7}
	condition:
		$0 at entrypoint or $1 at entrypoint
}
rule _PE_Lock_NT_v201_
{
	meta:
		description = "PE Lock NT v2.01"
	strings:
		$0 = {EB 03 CD 20 EB EB 01 EB 1E EB 01 EB EB 02 CD 20 9C EB 03 CD}
	condition:
		$0 at entrypoint
}
rule _Dropper_Creator_V01__Conflict_
{
	meta:
		description = "Dropper Creator V0.1 -> Conflict"
	strings:
		$0 = {60 E8 00 00 00 00 5D 8D 05 ?? ?? ?? ?? 29 C5 8D 85 ?? ?? ?? ?? 31 C0 64 03 40 30 78 0C 8B 40 0C 8B 70 1C AD 8B 40 08 EB 09}
	condition:
		$0
}
rule _PureBasic_DLL__Neil_Hodgson_
{
	meta:
		description = "PureBasic DLL -> Neil Hodgson"
	strings:
		$0 = {83 7C 24 08 01 75 ?? 8B 44 24 04 A3 ?? ?? ?? 10 E8}
	condition:
		$0 at entrypoint
}
rule _PECompact_v156_
{
	meta:
		description = "PECompact v1.56"
	strings:
		$0 = {EB 06 68 ?? ?? ?? ?? C3 9C 60 E8 02 ?? ?? ?? 33 C0 8B C4 83 C0 04 93 8B E3 8B 5B FC 81 EB 0F 90 40 ?? 87 DD 8B 85 A2 90 40 ?? 01 85 03 90 40 ?? 66 C7 85 ?? 90 40 ?? 90 90 01 85 9E 90 40 ?? BB 2D 12}
	condition:
		$0 at entrypoint
}
rule _CodeCrypt_v016b__v0163b_
{
	meta:
		description = "CodeCrypt v0.16b - v0.163b"
	strings:
		$0 = {E9 2E 03 00 00 EB 02 83 3D 58 EB 02 FF 1D 5B EB 02 0F C7 5F}
	condition:
		$0 at entrypoint
}
rule _Armadillo_v200_
{
	meta:
		description = "Armadillo v2.00"
	strings:
		$0 = {55 8B EC 6A FF 68 00 02 41 00 68 C4 A0 40 00 64 A1 00 00 00 00 50 64 89 25 00 00 00 00 83 EC 58}
	condition:
		$0 at entrypoint
}
rule _PuNkMoD_1x__PuNkDuDe_
{
	meta:
		description = "PuNkMoD 1.x -> PuNkDuDe"
	strings:
		$0 = {94 B9 ?? ?? 00 00 BC ?? ?? ?? ?? 80 34 0C}
	condition:
		$0
}
rule _RLPack_118_Dll_aPlib_043__ap0x_
{
	meta:
		description = "RLPack 1.18 Dll (aPlib 0.43) -> ap0x"
	strings:
		$0 = {80 7C 24 08 01 0F 85 5C 01 00 00 60 E8 00 00 00 00 8B 2C 24 83 C4 ?? 8D B5 1A 04 00 00 8D 9D C1 02 00 00 33 FF E8 61 01 00 00 EB 0F FF 74 37 04 FF 34 37 FF D3 83 C4 ?? 83 C7 ?? 83 3C 37 00 75 EB 83 BD 06 04 00 00 00 74 0E 83 BD 0A 04 00 00 00 74 05 E8 D7 01 00 00 8D 74 37 04 53 6A ?? 68 ?? ?? ?? ?? 68 ?? ?? ?? ?? 6A ?? FF 95 A7 03 00 00 89 85 16 04 00 00 5B FF B5 16 04 00 00 56 FF D3 83 C4 ?? 8B B5 16 04 00 00 8B C6 EB 01}
	condition:
		$0 at entrypoint
}
rule _WWPACK_v305c4_Unextractable_p_Password_checking_
{
	meta:
		description = "WWPACK v3.05c4 (Unextractable + Password checking)"
	strings:
		$0 = {03 05 80 1B B8 ?? ?? 8C CA 03 D0 8C C9 81 C1 ?? ?? 51 B9 ?? ?? 51 06 06 B1 ?? 51 8C D3}
	condition:
		$0 at entrypoint
}
rule _Duals_eXe_10_
{
	meta:
		description = "Dual's eXe 1.0"
	strings:
		$0 = {55 8B EC 81 EC 00 05 00 00 E8 00 00 00 00 5D 81 ED 0E 00 00 00 8D 85 08 03 00 00 89 28 33 FF 8D 85 7D 02 00 00 8D 8D 08 03 00 00 2B C8 8B 9D 58 03 00 00 E8 1C 02 00 00 8D 9D 61 02 00 00 8D B5 7C 02 00 00 46 80 3E 00 74 24 56 FF 95 0A 04 00 00 46 80 3E 00}
	condition:
		$0 at entrypoint
}
rule _MSLRH_v032a_fake_yodas_cryptor_12__emadicius_
{
	meta:
		description = "[MSLRH] v0.32a (fake yoda's cryptor 1.2) -> emadicius"
	strings:
		$0 = {60 E8 00 00 00 00 5D 81 ED F3 1D 40 00 B9 7B 09 00 00 8D BD 3B 1E 40 00 8B F7 AC 90 2C 8A C0 C0 78 90 04 62 EB 01 00 61 EB 05 E8 EB 04 40 00 EB FA E8 0A 00 00 00 E8 EB 0C 00 00 E8 F6 FF FF FF E8 F2 FF FF FF 83 C4 08 74 04 75 02 EB 02 EB 01 81 50 E8 02 00 00 00 29 5A 58 6B C0 03 E8 02 00 00 00 29 5A 83 C4 04 58 74 04 75 02 EB 02 EB 01 81 0F 31 50 0F 31 E8 0A 00 00 00 E8 EB 0C 00 00 E8 F6 FF FF FF E8 F2 FF FF FF}
	condition:
		$0 at entrypoint
}
rule _ASPack_v211b__Alexey_Solodovnikov_
{
	meta:
		description = "ASPack v2.11b -> Alexey Solodovnikov"
	strings:
		$0 = {60 E8 02 00 00 00 EB 09 5D 55 81 ED 39 39 44 00 C3 E9 3D 04 00 00}
	condition:
		$0 at entrypoint
}
rule _SDProtector_1x__Randy_Li_
{
	meta:
		description = "SDProtector 1.x -> Randy Li"
	strings:
		$0 = {55 8B EC 6A FF 68 1D 32 13 05 68 88 88 88 08 64 A1 00 00 00 00 50 64 89 25 00 00 00 00 58 64 A3 00 00 00 00 58 58 58 58 8B E8 E8 3B 00 00 00 E8 01 00 00 00 FF 58 05 53 00 00 00 51 8B 4C 24 10 89 81 B8 00 00 00 B8 55 01 00 00 89 41 20 33 C0 89 41 04 89 41}
	condition:
		$0 at entrypoint
}
rule _Vx_FaxFreeTopo_
{
	meta:
		description = "Vx: FaxFree.Topo"
	strings:
		$0 = {FA 06 33 C0 8E C0 B8 ?? ?? 26 ?? ?? ?? ?? 50 8C C8 26 ?? ?? ?? ?? 50 CC 58 9D 58 26 ?? ?? ?? ?? 58 26 ?? ?? ?? ?? 07 FB}
	condition:
		$0 at entrypoint
}
rule _App_Encryptor__Silent_Team_
{
	meta:
		description = "App Encryptor -> Silent Team"
	strings:
		$0 = {60 E8 00 00 00 00 5D 81 ED 1F 1F 40 00 B9 7B 09 00 00 8D BD 67 1F 40 00 8B F7 AC}
	condition:
		$0 at entrypoint
}
rule _32Lite_v003a_
{
	meta:
		description = "32Lite v0.03a"
	strings:
		$0 = {60 06 FC 1E 07 BE ?? ?? ?? ?? 6A 04 68 ?? 10 ?? ?? 68}
	condition:
		$0 at entrypoint
}
rule _Armadillo_v190c_
{
	meta:
		description = "Armadillo v1.90c"
	strings:
		$0 = {55 8B EC 6A FF 68 10 F2 40 00 68 74 9D 40 00 64 A1 00 00 00 00 50 64 89 25 00 00 00 00 83 EC 58}
	condition:
		$0 at entrypoint
}
rule _PseudoSigner_01_Borland_Delphi_50_KOLMCK__Anorganix_
{
	meta:
		description = "PseudoSigner 0.1 [Borland Delphi 5.0 KOL/MCK] --> Anorganix"
	strings:
		$0 = {55 8B EC 90 90 90 90 68 ?? ?? ?? ?? 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 00 FF 90 90 90 90 90 90 90 90 00 01 90 90 90 90 90 90 90 90 90 EB 04 00 00 00 01 90 90 90 90 90 90 90 00 01 90 90 90 90 90 90 90 90 90}
	condition:
		$0 at entrypoint
}
rule _PseudoSigner_01_PEX_099__Anorganix_
{
	meta:
		description = "PseudoSigner 0.1 [PEX 0.99] --> Anorganix"
	strings:
		$0 = {60 E8 01 00 00 00 55 83 C4 04 E8 01 00 00 00 90 5D 81 FF FF FF 00 01 E9}
	condition:
		$0 at entrypoint
}
rule _AsCrypt_v01__SToRM__2_
{
	meta:
		description = "AsCrypt v0.1 -> SToRM - #2"
	strings:
		$0 = {80 ?? ?? ?? 83 ?? ?? ?? ?? 90 90 90 83 ?? ?? E2}
	condition:
		$0
}
rule _BobSoft_Mini_Delphi__BoB__BobSoft_
{
	meta:
		description = "BobSoft Mini Delphi -> BoB / BobSoft"
	strings:
		$0 = {55 8B EC 83 C4 F0 53 56 B8 ?? ?? ?? ?? E8 ?? ?? ?? ?? 33 C0 55 68 ?? ?? ?? ?? 64 FF 30 64 89 20 B8}
		$1 = {55 8B EC 83 C4 F0 53 B8 ?? ?? ?? ?? E8 ?? ?? ?? ?? 33 C0 55 68 ?? ?? ?? ?? 64 FF 30 64 89 20 B8 ?? ?? ?? ?? E8}
		$2 = {55 8B EC 83 C4 F0 B8 ?? ?? ?? ?? E8}
	condition:
		$0 at entrypoint or $1 at entrypoint or $2 at entrypoint
}
rule _RECrypt_v07x__Crudd_RET_h1_
{
	meta:
		description = "RE-Crypt v0.7x -> Crudd [RET] (h1)"
	strings:
		$0 = {60 E8 00 00 00 00 5D 81 ED F3 1D 40 00 B9 7B 09 00 00 8D BD 3B 1E 40 00 8B F7 61 60 E8 00 00 00 00 5D 55 81 04 24 0A 00 00 00 C3 8B F5 81 C5 ?? ?? 00 00 89 6D 34 89 75 38 8B 7D 38 81 E7 00 FF FF FF 81 C7 48 00 00 00 47 03 7D 60 8B 4D 5C 83 F9 00 7E 0F 8B}
	condition:
		$0 at entrypoint
}
rule _DSHIELD_
{
	meta:
		description = "DSHIELD"
	strings:
		$0 = {06 E8 ?? ?? 5E 83 EE ?? 16 17 9C 58 B9 ?? ?? 25 ?? ?? 2E}
	condition:
		$0 at entrypoint
}
rule _Fusion_10__jaNooNi_
{
	meta:
		description = "Fusion 1.0 -> jaNooNi"
	strings:
		$0 = {68 04 30 40 00 68 04 30 40 00 E8 09 03 00 00 68 04 30 40 00 E8 C7 02 00 00}
	condition:
		$0 at entrypoint
}
rule _RCryptor_v1__Vaska_
{
	meta:
		description = "RCryptor v1.?? -> Vaska"
	strings:
		$0 = {90 58 90 50 90 8B 00 90 3C 50 90 58 0F 85 67 D6 EF 11 50 68}
		$1 = {90 58 90 50 90 8B 00 90 3C 50 90 58 0F 85 67 D6 EF 11 50 68 ?? ?? ?? ?? B8 ?? ?? ?? ?? 3D ?? ?? ?? ?? 74 06 80 30 ?? 40 EB F3}
	condition:
		$0 at entrypoint or $1 at entrypoint
}
rule _Obsidium_V12X__Obsidium_Software_
{
	meta:
		description = "Obsidium V1.2.X -> Obsidium Software"
	strings:
		$0 = {E8 0E 00 00 00 33 C0 8B 54 24 0C 83 82 B8 00 00 00 0D C3 64 67 FF 36 00 00 64 67 89 26 00 00 50 33 C0 8B 00 C3 E9 FA 00 00 00 E8 D5 FF FF FF 58 64 67 8F 06 00 00 83 C4 04 E8 2B 13 00 00}
	condition:
		$0 at entrypoint
}
rule _PE_Crypt_15__BitShape_Software_
{
	meta:
		description = "PE Crypt 1.5 -> BitShape Software"
	strings:
		$0 = {60 E8 00 00 00 00 5D 81 ED 55 20 40 00 B9 7B 09 00 00 8D BD 9D 20 40 00 8B F7 AC ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? AA E2 CC}
	condition:
		$0 at entrypoint
}
rule _PseudoSigner_02_MinGW_GCC_2x__Anorganix_
{
	meta:
		description = "PseudoSigner 0.2 [MinGW GCC 2.x] --> Anorganix"
	strings:
		$0 = {55 89 E5 E8 02 00 00 00 C9 C3 90 90 45 58 45}
	condition:
		$0 at entrypoint
}
rule _Private_EXE_v20a_
{
	meta:
		description = "Private EXE v2.0a"
	strings:
		$0 = {53 E8 00 00 00 00 5B 8B C3 2D}
	condition:
		$0 at entrypoint
}
rule _ACProtect_14x__RISCO_soft_
{
	meta:
		description = "ACProtect 1.4x -> RISCO soft"
	strings:
		$0 = {47 65 74 50 72 6F 63 41 64 64 72 65 73 73 00 00 00 47 65 74 4D 6F 64 75 6C 65 48 61 6E 64 6C 65 41 00 00 00 4C 6F 61 64 4C 69 62 72 61 72 79 41 00 00 00 45 78 69 74 50 72 6F 63 65 73 73 00 00 00 4D 65 73 73 61 67 65 42 6F 78 41 00 90 4D 69 6E 65 49 6D 70}
	condition:
		$0
}
rule _NsPack_34__North_Star_
{
	meta:
		description = "NsPack 3.4 -> North Star"
	strings:
		$0 = {9C 60 E8 00 00 00 00 5D 83 ED 07 8D 85 ?? ?? FF FF 80 38 01 0F 84 42 02 00 00 C6 00 01 8B D5 2B 95 ?? ?? FF FF 89 95 ?? ?? FF FF 01 95 ?? ?? FF FF 8D B5 ?? ?? FF FF 01 16 60 6A 40 68 00 10 00 00 68 00 10 00 00 6A 00 FF 95 ?? ?? FF FF 85 C0 0F 84 6A 03 00 00 89 85 ?? ?? FF FF E8 00 00 00 00 5B B9 68 03 00 00 03 D9 50 53 E8 B1 02 00 00 61 8B 36 8B FD 03 BD ?? ?? FF FF 8B DF 83 3F 00 75 0A 83 C7 04 B9 00 00 00 00 EB 16 B9 01 00 00 00 03 3B 83 C3 04 83 3B 00 74 36 01 13 8B 33 03 7B 04 57 51 52 53 FF B5 ?? ?? FF FF FF B5 ?? ?? FF FF 8B D6 8B CF 8B 85 ?? ?? FF FF 05 AA 05 00 00 FF D0 5B 5A 59 5F 83 F9 00 74 05 83 C3 08 EB C5}
	condition:
		$0 at entrypoint
}
rule _UPX_Modified_Stub_c__Farbrausch_Consumer_Consulting_
{
	meta:
		description = "UPX Modified Stub c -> Farb-rausch Consumer Consulting"
	strings:
		$0 = {60 BE ?? ?? ?? ?? 8D BE ?? ?? ?? ?? 57 83 CD FF FC B2 80 E8 00 00 00 00 5B 83 C3 66 A4 FF D3 73 FB 31 C9 FF D3 73 14 31 C0 FF D3 73 1D 41 B0 10 FF D3 10 C0 73 FA 75 3C AA EB E2 E8 4A 00 00 00 49 E2 10 E8 40 00 00 00 EB 28 AC D1 E8 74 45 11 C9 EB 1C 91 48}
	condition:
		$0 at entrypoint
}
rule _ACProtect_v135__risco_software_Inc__Anticrack_Software_
{
	meta:
		description = "ACProtect v1.35 -> risco software Inc. & Anticrack Software"
	strings:
		$0 = {4B 45 52 4E 45 4C 33 32 2E 44 4C 4C 00 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 55 53 45 52 33 32 2E 44 4C 4C 00 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 00 47 65 74 50 72 6F 63}
	condition:
		$0
}
rule _Pohernah_103__by_Kas_
{
	meta:
		description = "Pohernah 1.0.3 - by Kas"
	strings:
		$0 = {60 E8 00 00 00 00 5D 81 ED 2A 27 40 00 31 C0 40 83 F0 06 40 3D 40 1F 00 00 75 07 BE 6A 27 40 00 EB 02 EB EB 8B 85 9E 28 40 00 83 F8 01 75 17 31 C0 01 EE 3D 99 00 00 00 74 0C 8B 8D 86 28 40 00 30 0E 40 46 EB ED ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 56 57 4F F7 D7 21 FE 89 F0 5F 5E C3 60 83 F0 05 40 90 48 83 F0 05 89 C6 89 D7 60 E8 0B 00 00 00 61 83 C7 08 83 E9 07 E2 F1 61 C3 57 8B 1F 8B 4F 04 68 B9 79 37 9E 5A 42 89 D0 48 C1 E0 05 BF 20 00 00 00 4A 89 DD C1 E5 04 29 E9 8B 6E 08 31 DD 29 E9 89 DD C1 ED 05 31 C5 29 E9 2B 4E 0C 89 CD C1 E5 04 29 EB 8B 2E 31 CD 29 EB 89 CD C1 ED 05 31 C5 29 EB 2B 5E 04 29 D0 4F 75 C8 5F 89 1F 89 4F 04 C3}
	condition:
		$0 at entrypoint
}
rule _VcAsm_Protector_V10X_VcAsm_
{
	meta:
		description = "VcAsm Protector V1.0X-> VcAsm"
	strings:
		$0 = {55 8B EC 6A FF 68 ?? ?? ?? ?? 68 ?? ?? ?? ?? 64 A1 00 00 00 00 50 64 89 25 00 00 00 00 E8 03 00 00 00}
	condition:
		$0 at entrypoint
}
rule _EncryptPE_V220070411__WFS_
{
	meta:
		description = "EncryptPE V2.2007.04.11 -> WFS"
	strings:
		$0 = {60 9C 64 FF 35 00 00 00 00 E8 1B 02 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 00 00 00 00 6B 65 72 6E 65 6C 33 32 2E 64 6C 6C 00 00 00 47 65 74 54 65 6D 70 50 61 74 68 41 00 00 00 43 72 65 61 74 65 46 69 6C 65 41 00 00 00 43 72 65 61 74 65 46 69 6C 65 4D 61 70 70 69 6E 67 41 00 00 00 4D 61 70 56 69 65 77 4F 66 46 69 6C 65 00 00 00 55 6E 6D 61 70 56 69 65 77 4F 66 46 69 6C 65 00 00 00 43 6C 6F 73 65 48 61 6E 64 6C 65 00 00 00 4C 6F 61 64 4C 69 62 72 61 72 79 41 00 00 00 47 65 74 50 72 6F 63 41 64 64 72 65 73 73 00 00 00 45 78 69 74 50 72 6F 63 65 73 73}
	condition:
		$0 at entrypoint
}
rule _PseudoSigner_01_ASPack_2xx_Heuristic__Anorganix_
{
	meta:
		description = "PseudoSigner 0.1 [ASPack 2.xx Heuristic] --> Anorganix"
	strings:
		$0 = {90 90 90 90 68 ?? ?? ?? ?? 67 64 FF 36 00 00 67 64 89 26 00 00 F1 90 90 90 90 A8 03 00 00 61 75 08 B8 01 00 00 00 C2 0C 00 68 00 00 00 00 C3 8B 85 26 04 00 00 8D 8D 3B 04 00 00 51 50 FF 95}
	condition:
		$0 at entrypoint
}
rule _PseudoSigner_02_LCC_Win32_DLL__Anorganix_
{
	meta:
		description = "PseudoSigner 0.2 [LCC Win32 DLL] --> Anorganix"
	strings:
		$0 = {55 89 E5 53 56 57 83 7D 0C 01 75 05 E8 17 90 90 90 FF 75 10 FF 75 0C FF 75 08 A1}
	condition:
		$0 at entrypoint
}
rule _PseudoSigner_02_Microsoft_Visual_Basic_50__60__Anorganix_
{
	meta:
		description = "PseudoSigner 0.2 [Microsoft Visual Basic 5.0 - 6.0] --> Anorganix"
	strings:
		$0 = {68 ?? ?? ?? ?? E8 0A 00 00 00 00 00 00 00 00 00 30 00 00 00}
	condition:
		$0 at entrypoint
}
rule _WebCops_EXE__LINK_Data_Security_
{
	meta:
		description = "WebCops [EXE] -> LINK Data Security"
	strings:
		$0 = {EB 03 05 EB 02 EB FC 55 EB 03 EB 04 05 EB FB EB 53 E8 04 00 00 00 72}
	condition:
		$0 at entrypoint
}
rule _FreeJoiner_Small_build_033__GlOFF_
{
	meta:
		description = "FreeJoiner Small (build 033) -> GlOFF"
	strings:
		$0 = {50 66 33 C3 66 8B C1 58 E8 AC FD FF FF 6A 00 E8 0D 00 00 00 CC FF 25 78 10 40 00 FF 25 7C 10 40 00 FF 25 80 10 40 00 FF 25 84 10 40 00 FF 25 88 10 40 00 FF 25 8C 10 40 00 FF 25 90 10 40 00 FF 25 94 10 40 00 FF 25 98 10 40 00 FF 25 9C 10 40 00 FF 25 A0 10 40 00 FF 25 A4 10 40 00 FF 25 AC 10 40 00}
	condition:
		$0 at entrypoint
}
rule _Inno_Setup_Module_v109a_
{
	meta:
		description = "Inno Setup Module v1.09a"
	strings:
		$0 = {55 8B EC 83 C4 C0 53 56 57 33 C0 89 45 F0 89 45 C4 89 45 C0 E8 A7 7F FF FF E8 FA 92 FF FF E8 F1 B3 FF FF 33 C0}
	condition:
		$0 at entrypoint
}
rule _MSLRH_v032a_fake_PESHiELD_025__emadicius_
{
	meta:
		description = "[MSLRH] v0.32a (fake PESHiELD 0.25) -> emadicius"
	strings:
		$0 = {60 E8 2B 00 00 00 0D 0A 0D 0A 0D 0A 52 65 67 69 73 74 41 72 65 64 20 74 6F 3A 20 4E 4F 4E 2D 43 4F 4D 4D 45 52 43 49 41 4C 21 21 0D 0A 0D 0A 0D 00 58 61 EB 05 E8 EB 04 40 00 EB FA E8 0A 00 00 00 E8 EB 0C 00 00 E8 F6 FF FF FF E8 F2 FF FF FF 83 C4 08 74 04 75 02 EB 02 EB 01 81 50 E8 02 00 00 00 29 5A 58 6B C0 03 E8 02 00 00 00 29 5A 83 C4 04 58 74 04 75 02 EB 02 EB 01 81 0F 31 50 0F 31 E8 0A 00 00 00 E8 EB 0C 00 00 E8 F6 FF FF FF E8 F2 FF FF FF}
	condition:
		$0 at entrypoint
}
rule _PEStubOEP_v1x_
{
	meta:
		description = "PEStubOEP v1.x"
	strings:
		$0 = {40 48 BE 00 ?? ?? 00 40 48 60 33 C0 B8 ?? ?? ?? 00 FF E0 C3 C3}
	condition:
		$0
}
rule _SafeGuard_V10X__simonzh2000_
{
	meta:
		description = "SafeGuard V1.0X -> simonzh2000"
	strings:
		$0 = {E8 00 00 00 00 EB 29 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 59 9C 81 C1 E2 FF FF FF EB 01 ?? 9D FF E1}
	condition:
		$0 at entrypoint
}
rule _tElock_099c_Private_ECLIPSE__tE_
{
	meta:
		description = "tElock 0.99c (Private ECLIPSE) -> tE!"
	strings:
		$0 = {E9 3F DF FF FF 00 00 00 ?? ?? ?? ?? 04 ?? ?? 00 00 00 00 00 00 00 00 00 24 ?? ?? 00 14 ?? ?? 00 0C ?? ?? 00 00 00 00 00 00 00 00 00 31 ?? ?? 00 1C ?? ?? 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 3C ?? ?? 00 00 00 00 00 4F ?? ?? 00 00 00 00 00 3C ?? ?? 00 00 00 00 00 4F ?? ?? 00 00 00 00 00 6B 65 72 6E 65 6C 33 32 2E 64 6C 6C 00 75 73 65}
	condition:
		$0 at entrypoint
}
rule _Mew_11_SE_v12_Eng__Northfox_
{
	meta:
		description = "Mew 11 SE v1.2 (Eng) -> Northfox"
	strings:
		$0 = {E9 ?? ?? ?? FF 0C ?? ?? 00 00 00 00 00 00 00 00 00 ?? ?? ?? 00 0C}
	condition:
		$0 at entrypoint
}
rule _Aase_Crypter__by_santasdad_
{
	meta:
		description = "Aase Crypter - by santasdad"
	strings:
		$0 = {55 8B EC 83 C4 F0 53 B8 A0 3E 00 10 E8 93 DE FF FF 68 F8 42 00 10 E8 79 DF FF FF 68 00 43 00 10 68 0C 43 00 10 E8 42 DF FF FF 50 E8 44 DF FF FF A3 98 66 00 10 83 3D 98 66 00 10 00 75 13 6A 00 68 18 43 00 10 68 1C 43 00 10 6A 00 E8 4B DF FF FF 68 2C 43 00 10 68 0C 43 ?? ?? ?? ?? DF FF FF 50 E8 0E DF FF FF A3 94 66 00 10 83 3D 94 66 00 10 00 75 13 6A 00 68 18 43 00 10 68 38 43 00 10 6A 00 E8 15 DF FF FF 68 48 43 00 10 68 0C 43 00 10 E8 D6 DE FF FF 50 E8 D8 DE FF FF A3 A0 66 00 10 83 3D A0 66 00 10 00 75 13 6A 00 68 18 43 00 10 68 58 43 00 10 6A 00 E8 DF DE FF FF 68 6C 43 00 10 68 0C 43 00 10 E8 A0 DE FF FF 50 E8 A2 DE FF FF}
	condition:
		$0
}
rule _ThemidaWinLicense_V18XV19X___Oreans_Technologies_
{
	meta:
		description = "Themida/WinLicense V1.8.X-V1.9.X  -> Oreans Technologies"
	strings:
		$0 = {B8 ?? ?? ?? ?? 60 0B C0 74 68 E8 00 00 00 00 58 05 53 00 00 00 80 38 E9 75 13 61 EB 45 DB 2D ?? ?? ?? ?? FF FF FF FF FF FF FF FF 3D ?? ?? ?? ?? 00 00 58 25 00 F0 FF FF 33 FF 66 BB ?? ?? 66 83 ?? ?? 66 39 18 75 12 0F B7 50 3C 03 D0 BB ?? ?? ?? ?? 83 C3 ?? 39 1A 74 07 2D ?? ?? ?? ?? EB DA 8B F8 B8 ?? ?? ?? ?? 03 C7 B9 ?? ?? ?? ?? 03 CF EB 0A B8 ?? ?? ?? ?? B9 ?? ?? ?? ?? 50 51 E8 ?? ?? ?? ?? E8 ?? ?? ?? ?? 58 2D ?? ?? ?? ?? B9 ?? ?? ?? ?? C6 00 E9 83 E9 05 89 48 01 61 E9}
	condition:
		$0 at entrypoint
}
rule _FileShield_
{
	meta:
		description = "FileShield"
	strings:
		$0 = {50 1E EB ?? 90 00 00 8B D8}
	condition:
		$0 at entrypoint
}
rule _UPX_Protector_v10x_2_
{
	meta:
		description = "UPX Protector v1.0x (2)"
	strings:
		$0 = {EB ?? ?? ?? ?? ?? 8A 06 46 88 07 47 01 DB 75 07 8B 1E 83 EE FC 11 DB}
	condition:
		$0
}
rule _Petite_12__c1998_Ian_Luck_
{
	meta:
		description = "Petite 1.2 -> (c)1998 Ian Luck"
	strings:
		$0 = {66 9C 60 E8 CA 00 00 00 03 00 04 00 05 00 06 00 07 00 08 00 09 00 0A 00 0B 00 0D 00 0F 00 11 00 13 00 17 00 1B 00 1F 00 23 00 2B 00 33 00 3B 00 43 00 53 00 63 00 73 00 83 00 A3 00 C3 00 E3 00 02 01 00 00 00 00 00 00 00 00 00 00 00 00 01 01 01 01 02 02 02}
	condition:
		$0 at entrypoint
}
rule _RLPack__Ap0x_
{
	meta:
		description = "RLPack --> Ap0x"
	strings:
		$0 = {60 E8 00 00 00 00 8B 2C 24 83 C4 04 8D B5 2C 0A 00 00 8D 9D 22 02 00 00 33 FF E8 83 01 00 00 6A 40 68 00 10 00 00 68 00 20 0C 00 6A 00 FF 95 CD 09 00 00 89 85 14 0A 00 00 EB 14 60 FF B5 14 0A}
		$1 = {60 E8 00 00 00 00 8B 2C 24 83 C4 04 8D B5 5A 0A 00 00 8D 9D 40 02 00 00 33 FF E8 83 01 00 00 6A 40 68 00 10 00 00 68 00 20 0C 00 6A 00 FF 95 EB 09 00 00 89 85 3A 0A 00 00 EB 14 60 FF B5 3A 0A}
		$2 = {60 E8 00 00 00 00 8B 2C 24 83 C4 04 EB 03 0C 00 00 EB 03 0C 00 00 8D B5 CB 22 00 00 8D 9D F0 02 00 00 33 FF E8 47 02 00 00 EB 03 15 00 00 6A 40 68 00 10 00 00 68 00 20 0C 00 6A 00 FF 95 9B 0A}
		$3 = {60 E8 00 00 00 00 8B 2C 24 83 C4 04 8D B5 2C 0A 00 00 8D 9D 22 02 00 00 33 FF E8 ?? ?? ?? ?? 6A 40 68 ?? ?? ?? ?? 68 ?? ?? ?? ?? 6A 00 FF 95 CD 09 00 00 89 85 ?? ?? ?? ?? EB 14 60 FF B5 14 0A}
		$4 = {60 E8 00 00 00 00 8B 2C 24 83 C4 04 8D B5 5A 0A 00 00 8D 9D 40 02 00 00 33 FF E8 ?? ?? ?? ?? 6A 40 68 ?? ?? ?? ?? 68 ?? ?? ?? ?? 6A 00 FF 95 EB 09 00 00 89 85 ?? ?? ?? ?? EB 14 60 FF B5 3A 0A}
		$5 = {60 E8 00 00 00 00 8B 2C 24 83 C4 04 EB 03 ?? ?? ?? EB 03 ?? ?? ?? 8D B5 CB 22 00 00 8D 9D F0 02 00 00 33 FF E8 ?? ?? ?? ?? EB 03 ?? ?? ?? 6A 40 68 ?? ?? ?? ?? 68 ?? ?? ?? ?? 6A 00 FF 95 9B 0A}
	condition:
		$0 at entrypoint or $1 at entrypoint or $2 at entrypoint or $3 at entrypoint or $4 at entrypoint or $5 at entrypoint
}
rule _RCryptor_v20_Hide_EP__Vaska_
{
	meta:
		description = "RCryptor v2.0 (Hide EP) --> Vaska"
	strings:
		$0 = {F7 D1 83 F1 FF 6A 00 F7 D1 83 F1 FF 81 04 24 DC 20 ?? 00 F7 D1 83 F1 FF E8 00 00 00 00 F7 D1 83 F1 FF C3}
	condition:
		$0 at entrypoint
}
rule _aPack_v098b__Jibz_
{
	meta:
		description = "aPack v0.98b -> Jibz"
	strings:
		$0 = {93 07 1F 05 ?? ?? 8E D0 BC ?? ?? EA}
	condition:
		$0
}
rule _NSIS_Installer__NullSoft_
{
	meta:
		description = "NSIS Installer --> NullSoft"
	strings:
		$0 = {83 EC 20 53 55 56 33 DB 57 89 5C 24 18 C7 44 24 10 ?? ?? ?? ?? C6 44 24 14 20 FF 15 30 70 40 00 53 FF 15 80 72 40 00 68 ?? ?? ?? ?? 68 ?? ?? ?? ?? A3 ?? ?? ?? ?? E8 ?? ?? ?? ?? BE}
	condition:
		$0 at entrypoint
}
rule _EmbedPE_113__cyclotron_
{
	meta:
		description = "EmbedPE 1.13 -> cyclotron"
	strings:
		$0 = {83 EC 50 60 68 5D B9 52 5A E8 2F 99 00 00 DC 99 F3 57 05 68 B8 5E 2D C6 DA FD 48 63 05 3C 71 B8 5E 97 7C 36 7E 32 7C 08 4F 06 51 64 10 A3 F1 4E CF 25 CB 80 D2 99 54 46 ED E1 D3 46 86 2D 10 68 93 83 5C 46 4D 43 9B 8C D6 7C BB 99 69 97 71 2A 2F A3 38 6B 33}
	condition:
		$0 at entrypoint
}
rule _Noodlecrypt2__rsc_
{
	meta:
		description = "Noodlecrypt2 -> r!sc"
	strings:
		$0 = {EB 01 9A E8 76 00 00 00}
	condition:
		$0 at entrypoint
}
rule _ASPack_v105b__Alexey_Solodovnikov_
{
	meta:
		description = "ASPack v1.05b -> Alexey Solodovnikov"
	strings:
		$0 = {60 E8 ?? ?? ?? ?? 5D 81 ED CE 3A 44 ?? B8 C8 3A 44 ?? 03 C5 2B 85 B5 3E 44 ?? 89 85 C1 3E 44 ?? 80 BD AC 3E 44}
	condition:
		$0 at entrypoint
}
rule _MicroJoiner_16__coban2k_
{
	meta:
		description = "MicroJoiner 1.6 -> coban2k"
	strings:
		$0 = {33 C0 64 8B 38 48 8B C8 F2 AF AF 8B 1F 66 33 DB 66 81 3B}
	condition:
		$0 at entrypoint
}
rule _Vx_Necropolis1963_
{
	meta:
		description = "Vx: Necropolis.1963"
	strings:
		$0 = {B4 30 CD 21 3C 03 ?? ?? B8 00 12 CD 2F 3C FF B8 ?? ?? ?? ?? B4 4A BB 40 01 CD 21 ?? ?? FA 0E 17 BC ?? ?? E8 ?? ?? FB A1 ?? ?? 0B C0}
	condition:
		$0 at entrypoint
}
rule _Upack_v0399__Dwing_
{
	meta:
		description = "Upack v0.399 -> Dwing"
	strings:
		$0 = {0B 01 4C 6F 61 64 4C 69 62 72 61 72 79 41 00 00 18 10 00 00 10 00 00 00 00 ?? ?? 00 00 00 40 00 00 10 00 00 00 02 00 00 04 00 00 00 00 00 3A 00 04 00 00 00 00 00 00 00 00 ?? ?? 00 00 02 00 00 00 00 00 00 ?? 00 00 00 00 00 10 00 00 ?? 00 00 00 00 10 00 00 10 00 00 00 00 00 00 0A 00 00 00 00 00 00 00 00 00 00 00 EE ?? ?? 00 14 00 00 00 00 ?? ?? 00 ?? ?? 00 00 FF 76 38 AD 50 8B 3E BE F0 ?? ?? 00 6A 27 59 F3 A5 FF 76 04 83 C8 FF 8B DF AB EB 1C 00 00 00 00 47 65 74 50 72 6F 63 41 64 64 72 65 73 73 00 00 ?? ?? ?? 00 ?? 00 00 00 40 AB 40 B1 04 F3 AB C1 E0 0A B5}
		$1 = {BE B0 11 ?? ?? AD 50 FF 76 34 EB 7C 48 01 ?? ?? 0B 01 4C 6F 61 64 4C 69 62 72 61 72 79 41 00 00 18 10 00 00 10 00 00 00 00 ?? ?? ?? 00 00 ?? ?? 00 10 00 00 00 02 00 00 04 00 00 00 00 00 3A 00 04 00 00 00 00 00 00 00 00 ?? ?? ?? 00 02 00 00 00 00 00 00}
		$2 = {BE B0 11 ?? ?? AD 50 FF 76 34 EB 7C 48 01 ?? ?? 0B 01 4C 6F 61 64 4C 69 62 72 61 72 79 41 00 00 18 10 00 00 10 00 00 00 00 ?? ?? ?? 00 00 ?? ?? 00 10 00 00 00 02 00 00 04 00 00 00 00 00 3A 00 04 00 00 00 00 00 00 00 00 ?? ?? ?? 00 02 00 00 00 00 00 00 ?? 00 00 ?? 00 00 10 00 00 ?? ?? 00 00 00 10 00 00 10 00 00 00 00 00 00 0A 00 00 00 00 00 00 00 00 00 00 00 EE ?? ?? ?? 14 00 00 00 00 ?? ?? ?? ?? ?? 00 00 FF 76 38 AD 50 8B 3E BE F0 ?? ?? ?? 6A 27 59 F3 A5 FF 76 04 83 C8 FF 8B DF AB EB 1C 00 00 00 00 47 65 74 50 72 6F 63 41 64 64 72 65 73 73 00 00 ?? ?? ?? ?? ?? 00 00 00 40 AB 40 B1 04 F3 AB C1 E0 0A B5 ?? F3 AB 8B 7E 0C 57 51 E9 ?? ?? ?? ?? 56 10 E2 E3 B1 04 D3 E0 03 E8 8D 53 18 33 C0 55 40 51 D3 E0 8B EA 91 FF 56 4C 99 59 D1 E8 13 D2 E2 FA 5D 03 EA 45 59 89 6B 08 56 8B F7 2B F5 F3 A4 AC 5E B1 80 AA 3B}
	condition:
		$0 at entrypoint or $1 at entrypoint or $2 at entrypoint
}
rule _Obsidium_v1300__Obsidium_Software_
{
	meta:
		description = "Obsidium v1.3.0.0 -> Obsidium Software"
	strings:
		$0 = {EB 04 25 80 34 CA E8 29 00 00 00 EB 02 C1 81 EB 01 3A 8B 54 24 0C EB 02 32 92 83 82 B8 00 00 00 22 EB 02 F2 7F 33 C0 EB 04 65 7E 14 79 C3 EB 04 05 AD 7F 45 EB 04 05 65 0B E8 64 67 FF 36 00 00 EB 04 0D F6 A8 7F 64 67 89 26 00 00 EB 04 8D 68 C7 FB EB 01 6B}
		$1 = {EB 04 25 80 34 CA E8 29 00 00 00 EB 02 C1 81 EB 01 3A 8B 54 24 0C EB 02 32 92 83 82 B8 00 00 00 22 EB 02 F2 7F 33 C0 EB 04 65 7E 14 79 C3 EB 04 05 AD 7F 45 EB 04 05 65 0B E8 64 67 FF 36 00 00 EB 04 0D F6 A8 7F 64 67 89 26 00 00 EB 04 8D 68 C7 FB EB 01 6B 50 EB 03 8A 0B 93 33 C0 EB 02 28 B9 8B 00 EB 01 04 C3 EB 04 65 B3 54 0A E9 FA 00 00 00 EB 01 A2 E8 D5 FF FF FF EB 02 2B 49 EB 03 7C 3E 76 58 EB 04 B8 94 92 56 EB 01 72 64 67 8F 06 00 00 EB 02 23 72 83 C4 04 EB 02 A9 CB E8 47 26 00 00}
	condition:
		$0 at entrypoint or $1 at entrypoint
}
rule _PEQuake_006_forgat_
{
	meta:
		description = "PEQuake 0.06-> forgat"
	strings:
		$0 = {E8 A5 00 00 00 2D ?? ?? 00 00 00 00 00 00 00 00 00 3D ?? ?? 00 2D ?? ?? 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 4A ?? ?? 00 5B ?? ?? 00 6E ?? ?? 00 00 00 00 00 6B 45 72 4E 65 4C 33 32 2E 64 4C 6C 00 00 00 47 65 74 50 72 6F 63 41 64 64 72 65 73 73 00 00 00 47 65 74 4D 6F 64 75 6C 65 48 61 6E 64 6C 65 41 00 00 00 4C 6F 61 64 4C 69 62 72 61 72 79 41 00 ?? ?? 00 00 56 69 72 74 75 61 6C 41 6C 6C 6F 63 00 00 00 00 00 00}
	condition:
		$0
}
rule _Metrowerks_CodeWarrior_DLL_v20_
{
	meta:
		description = "Metrowerks CodeWarrior (DLL) v2.0"
	strings:
		$0 = {55 89 E5 53 56 57 8B 75 0C 8B 5D 10 83 FE 01 74 05 83 FE 02 75 12 53 56 FF 75 08 E8 6E FF FF FF 09 C0 75 04 31 C0 EB 21 53 56 FF 75 08 E8 ?? ?? ?? ?? 89 C7 09 F6 74 05 83 FE 03 75 0A 53 56 FF 75 08 E8 47 FF FF FF 89 F8 8D 65 F4 5F 5E 5B 5D C2 0C 00 C9}
	condition:
		$0
}
rule _PseudoSigner_02_VideoLanClient__Anorganix_
{
	meta:
		description = "PseudoSigner 0.2 [Video-Lan-Client] --> Anorganix"
	strings:
		$0 = {55 89 E5 83 EC 08 90 90 90 90 90 90 90 90 90 90 90 90 90 90 01 FF FF 01 01 01 00 01 90 90 90 90 90 90 90 90 90 90 90 90 90 90 00 01 00 01 00 01 90 90 00 01}
	condition:
		$0 at entrypoint
}
rule _Upack_Unknown_DLL___Dwing_
{
	meta:
		description = "Upack_Unknown (DLL ???) -> Dwing"
	strings:
		$0 = {60 E8 09 00 00 00 17 CD 00 00 E9 06 02}
	condition:
		$0 at entrypoint
}
rule _AHTeam_EP_Protector_03_fake_XtremeProtector_105__FEUERRADER_
{
	meta:
		description = "AHTeam EP Protector 0.3 (fake Xtreme-Protector 1.05) -> FEUERRADER"
	strings:
		$0 = {90 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 90 FF E0 E8 00 00 00 00 5D 81 00 00 00 00 00 6A 45 E8 A3 00 00 00 68 00 00 00 00 E8}
	condition:
		$0 at entrypoint
}
rule _ExeSplitter_13_SplitpCrypt_Method__Bill_Prisoner__TPOC_
{
	meta:
		description = "ExeSplitter 1.3 (Split+Crypt Method) -> Bill Prisoner / TPOC"
	strings:
		$0 = {15 10 05 23 14 56 57 57 48 12 0B 16 66 66 66 66 66 66 66 66 66 02 C7 56 66 66 66 ED 26 6A ED 26 6A ED 66 E3 A6 69 E2 39 64 66 66 ED 2E 56 E6 5F 0D 12 61 E6 5F 2D 12 64 8D 81 E6 1F 6A 55 12 64 8D B9 ED 26 7E A5 33 ED 8A 8D 69 21 03 12 36 14 09 05 27 02 02 14 03 15 15 27 ED 2B 6A ED 13 6E ED B8 65 10 5A EB 10 7E EB 10 06 ED 50 65 95 30 ED 10 46 65 95 55 B4 ED A0 ED 50 65 95 37 ED 2B 6A EB DF AB 76 26 66 3F DF 68 66 66 66 9A 95 C0 6D AF 13 64}
		$1 = {E8 00 00 00 00 5D 81 ED 05 10 40 00 B9 ?? ?? ?? ?? 8D 85 1D 10 40 00 80 30 66 40 E2 FA 8F 98 67 66 66 ?? ?? ?? ?? ?? ?? ?? 66}
	condition:
		$0 or $1 at entrypoint
}
rule _MSLRH_v032a_fake_PEX_099__emadicius_
{
	meta:
		description = "[MSLRH] v0.32a (fake PEX 0.99) -> emadicius"
	strings:
		$0 = {60 E8 01 00 00 00 E8 83 C4 04 E8 01 00 00 00 E9 5D 81 ED FF 22 40 00 61 EB 05 E8 EB 04 40 00 EB FA E8 0A 00 00 00 E8 EB 0C 00 00 E8 F6 FF FF FF E8 F2 FF FF FF 83 C4 08 74 04 75 02 EB 02 EB 01 81 50 E8 02 00 00 00 29 5A 58 6B C0 03 E8 02 00 00 00 29 5A 83 C4 04 58 74 04 75 02 EB 02 EB 01 81 0F 31 50 0F 31 E8 0A 00 00 00 E8 EB 0C 00 00 E8 F6 FF FF FF E8 F2 FF FF FF 83 C4 08 2B 04 24 74 04 75 02 EB 02 EB 01}
	condition:
		$0 at entrypoint
}
rule _SimbiOZ_13__Extranger_
{
	meta:
		description = "SimbiOZ 1.3 -> Extranger"
	strings:
		$0 = {57 57 8D 7C 24 04 50 B8 00 ?? ?? ?? AB 58 5F C3}
	condition:
		$0 at entrypoint
}
rule _MSLRH_v032a_fake_Neolite_20__emadicius_
{
	meta:
		description = "[MSLRH] v0.32a (fake Neolite 2.0) -> emadicius"
	strings:
		$0 = {E9 A6 00 00 00 B0 7B 40 00 78 60 40 00 7C 60 40 00 00 00 00 00 B0 3F 00 00 12 62 40 00 4E 65 6F 4C 69 74 65 20 45 78 65 63 75 74 61 62 6C 65 20 46 69 6C 65 20 43 6F 6D 70 72 65 73 73 6F 72 0D 0A 43 6F 70 79 72 69 67 68 74 20 28 63 29 20 31 39 39 38 2C 31 39 39 39 20 4E 65 6F 57 6F 72 78 20 49 6E 63 0D 0A 50 6F 72 74 69 6F 6E 73 20 43 6F 70 79 72 69 67 68 74 20 28 63 29 20 31 39 39 37 2D 31 39 39 39 20 4C 65 65 20 48 61 73 69 75 6B 0D 0A 41 6C 6C 20 52 69 67 68 74 73 20 52 65 73 65 72 76 65 64 2E 00 00 00 00 EB 05 E8 EB 04 40 00 EB FA E8 0A 00 00 00 E8 EB 0C 00 00 E8 F6 FF FF FF E8 F2 FF FF FF 83 C4 08 74 04 75 02 EB 02 EB 01 81 50 E8 02 00 00 00 29 5A 58 6B C0 03 E8 02 00 00 00 29 5A 83 C4 04 58 74 04 75 02 EB 02 EB 01 81 0F 31 50 0F 31 E8 0A 00 00 00 E8 EB 0C 00 00 E8 F6 FF FF FF E8 F2 FF FF FF 83 C4 08 2B 04 24 74 04 75 02 EB 02 EB 01}
	condition:
		$0 at entrypoint
}
rule _AntiDote_12Demo__SISTeam_
{
	meta:
		description = "AntiDote 1.2.Demo -> SIS-Team"
	strings:
		$0 = {E8 F7 FE FF FF 05 CB 22 00 00 FF E0 E8 EB FE FF FF 05 BB 19 00 00 FF E0 E8 BD 00 00 00 08 B2 62 00 01 52 17 0C 0F 2C 2B 20 7F 52 79 01 30 07 17 29 4F 01 3C 30 2B 5A 3D C7 26 11 26 06 59 0E 78 2E 10 14 0B 13 1A 1A 3F 64 1D 71 33 57 21 09 24 8B 1B 09 37 08 61 0F 1D 1D 2A 01 87 35 4C 07 39 0B}
	condition:
		$0
}
rule _EXE32Pack_v137_
{
	meta:
		description = "EXE32Pack v1.37"
	strings:
		$0 = {3B C0 74 02 81 83 55 3B C0 74 02 81 83 53 3B C9 74 01 BC ?? ?? ?? ?? 02 81 ?? ?? ?? ?? ?? ?? ?? 3B DB 74 01 BE 5D 8B D5 81 ED 4C 8E 40}
	condition:
		$0 at entrypoint
}
rule _ASPack_v10804__Alexey_Solodovnikov_
{
	meta:
		description = "ASPack v1.08.04 -> Alexey Solodovnikov"
	strings:
		$0 = {60 E8 41 06 00 00 EB 41}
	condition:
		$0 at entrypoint
}
rule _SmokesCrypt_v12_
{
	meta:
		description = "SmokesCrypt v1.2"
	strings:
		$0 = {60 B8 ?? ?? ?? ?? B8 ?? ?? ?? ?? 8A 14 08 80 F2 ?? 88 14 08 41 83 F9 ?? 75 F1}
	condition:
		$0 at entrypoint
}
rule _Armadillo_50_Dll__Silicon_Realms_Toolworks_
{
	meta:
		description = "Armadillo 5.0 Dll -> Silicon Realms Toolworks"
	strings:
		$0 = {83 7C 24 08 01 75 05 E8 DE 4B 00 00 FF 74 24 04 8B 4C 24 10 8B 54 24 0C E8 ED FE FF FF 59 C2 0C 00 6A 0C 68 ?? ?? ?? ?? E8 E5 24 00 00 8B 4D 08 33 FF 3B CF 76 2E 6A E0 58 33 D2 F7 F1 3B 45 0C 1B C0 40 75 1F E8 8F 15 00 00 C7 00 0C 00 00 00 57 57 57 57 57 E8 20 15 00 00 83 C4 14 33 C0 E9 D5 00 00 00 0F AF 4D 0C 8B F1 89 75 08 3B F7 75 03 33 F6 46 33 DB 89 5D E4 83 FE E0 77 69 83 3D ?? ?? ?? ?? 03 75 4B 83 C6 0F 83 E6 F0 89 75 0C 8B 45 08 3B 05 ?? ?? ?? ?? 77 37 6A 04 E8 D7 23 00 00 59 89 7D FC FF 75 08 E8 EC 53 00 00 59 89 45 E4 C7 45 FC FE FF FF FF E8 5F 00 00 00 8B 5D E4 3B DF 74 11 FF 75 08 57 53 E8 2B C5 FF FF 83 C4 0C 3B DF 75 61 56 6A 08 FF 35 ?? ?? ?? ?? FF 15 ?? ?? ?? ?? 8B D8 3B DF 75 4C 39 3D ?? ?? ?? ?? 74 33 56 E8 19 ED FF FF 59 85 C0 0F 85 72 FF FF FF 8B 45 10 3B C7 0F 84 50 FF FF FF C7 00 0C 00 00 00 E9 45 FF FF FF 33 FF 8B 75 0C 6A 04 E8 7D 22 00 00 59 C3}
	condition:
		$0 at entrypoint
}
rule _Obsidium_v1304__Obsidium_Software_
{
	meta:
		description = "Obsidium v1.3.0.4 -> Obsidium Software"
	strings:
		$0 = {EB 02 ?? ?? E8 25 00 00 00 EB 04 ?? ?? ?? ?? EB 01 ?? 8B 54 24 0C EB 01 ?? 83 82 B8 00 00 00 23 EB 01 ?? 33 C0 EB 02 ?? ?? C3 EB 02 ?? ?? EB 04 ?? ?? ?? ?? 64 67 FF 36 00 00 EB 03 ?? ?? ?? 64 67 89 26 00 00 EB 02 ?? ?? EB 01 ?? 50 EB 01 ?? 33 C0 EB 01}
		$1 = {EB 02 ?? ?? E8 25 00 00 00 EB 04 ?? ?? ?? ?? EB 01 ?? 8B 54 24 0C EB 01 ?? 83 82 B8 00 00 00 23 EB 01 ?? 33 C0 EB 02 ?? ?? C3 EB 02 ?? ?? EB 04 ?? ?? ?? ?? 64 67 FF 36 00 00 EB 03 ?? ?? ?? 64 67 89 26 00 00 EB 02 ?? ?? EB 01 ?? 50 EB 01 ?? 33 C0 EB 01 ?? 8B 00 EB 01 ?? C3 EB 02 ?? ?? E9 FA 00 00 00 EB 02 ?? ?? E8 D5 FF FF FF EB 03 ?? ?? ?? EB 04 ?? ?? ?? ?? 58 EB 02 ?? ?? EB 04 ?? ?? ?? ?? 64 67 8F 06 00 00 EB 03 ?? ?? ?? 83 C4 04 EB 01 ?? E8 3B 26 00 00}
	condition:
		$0 at entrypoint or $1 at entrypoint
}
rule _RLPack_118_LZMA_430__ap0x_
{
	meta:
		description = "RLPack 1.18 (LZMA 4.30) -> ap0x"
	strings:
		$0 = {60 E8 00 00 00 00 8B 2C 24 83 C4 ?? 8D B5 21 0B 00 00 8D 9D FF 02 00 00 33 FF E8 9F 01 00 00 6A ?? 68 ?? ?? ?? ?? 68 ?? ?? ?? ?? 6A 00 FF 95 AA 0A 00 00 89 85 F9 0A 00 00 EB 14 60 FF B5 F9 0A 00 00 FF 34 37 FF 74 37 04 FF D3 61 83 C7 ?? 83 3C 37 00 75 E6 83 BD 0D 0B 00 00 00 74 0E 83 BD 11 0B 00 00 00 74 05 E8 F6 01 00 00 8D 74 37 04 53 6A ?? 68 ?? ?? ?? ?? 68 ?? ?? ?? ?? 6A 00 FF 95 AA 0A 00 00 89 85 1D 0B 00 00 5B 60 FF B5 F9 0A 00 00 56 FF B5 1D 0B 00 00 FF D3 61 8B B5 1D 0B 00 00 8B C6 EB 01}
	condition:
		$0 at entrypoint
}
rule _Thinstall_Embedded_19X__Jitit_
{
	meta:
		description = "Thinstall Embedded 1.9X -> Jitit"
	strings:
		$0 = {55 8B EC 51 53 56 57 6A 00 6A 00 FF 15 ?? ?? ?? ?? 50 E8 87 FC FF FF 59 59 A1 ?? ?? ?? ?? 8B 40 10 03 05 ?? ?? ?? ?? 89 45 FC 8B 45 FC FF E0 5F 5E 5B C9 C3 00 00 00}
	condition:
		$0 at entrypoint
}
rule _InstallShield_2000_
{
	meta:
		description = "InstallShield 2000"
	strings:
		$0 = {55 8B EC 6A FF 68 ?? ?? ?? ?? 68 ?? ?? ?? ?? 64 A1 ?? ?? ?? ?? 50 64 89 25 ?? ?? ?? ?? 83 C4 ?? 53 56 57}
	condition:
		$0 at entrypoint
}
rule _yzpack_20__UsAr_
{
	meta:
		description = "yzpack 2.0 -> UsAr"
	strings:
		$0 = {25 ?? ?? ?? ?? 61 87 CC 55 45 45 55 81 ED CA 00 00 00 55 A4 B3 02 FF 14 24 73 F8 33 C9 FF 14 24 73 18 33 C0 FF 14 24 73 1F B3 02 41 B0 10 FF 14 24 12 C0 73 F9 75 3C AA EB DC FF 54 24 04 2B CB 75 0F FF 54 24 08 EB 27 AC D1 E8 74 30 13 C9 EB 1B 91 48 C1 E0 08 AC FF 54 24 08 3D 00 7D 00 00 73 0A 80 FC 05 73 06 83 F8 7F 77 02 41 41 95 8B C5 B3 01 56 8B F7 2B F0 F3 A4 5E EB 99 BD ?? ?? ?? ?? FF 65 28}
	condition:
		$0 at entrypoint
}
rule _UltraPro_V10__SafeNet_
{
	meta:
		description = "UltraPro V1.0 -> SafeNet"
	strings:
		$0 = {A1 ?? ?? ?? ?? 85 C0 0F 85 3B 06 00 00 55 56 C7 05 ?? ?? ?? ?? 01 00 00 00 FF 15}
	condition:
		$0 at entrypoint
}
rule _CipherWall_SelfExtratorDecryptor_GUI_v15_
{
	meta:
		description = "CipherWall Self-Extrator/Decryptor (GUI) v1.5"
	strings:
		$0 = {90 61 BE 00 10 42 00 8D BE 00 00 FE FF C7 87 C0 20 02 00 F9 89 C7 6A 57 83 CD FF EB 0E 90 90 90 90 8A 06 46 88 07 47 01 DB 75 07 8B 1E 83 EE FC 11 DB 72 ED B8 01 00 00 00 01 DB 75 07 8B 1E 83 EE FC 11 DB 11 C0 01 DB 73 EF 75 09 8B 1E 83 EE FC 11 DB 73 E4}
	condition:
		$0 at entrypoint
}
rule _Obsidium_1322__Obsidium_Software_
{
	meta:
		description = "Obsidium 1.3.2.2 -> Obsidium Software"
	strings:
		$0 = {EB 04 ?? ?? ?? ?? E8 2A 00 00 00 EB 03 ?? ?? ?? EB 04 ?? ?? ?? ?? 8B 54 24 0C EB 02 ?? ?? 83 82 B8 00 00 00 26 EB 04 ?? ?? ?? ?? 33 C0 EB 02 ?? ?? C3 EB 01 ?? EB 03 ?? ?? ?? 64 67 FF 36 00 00 EB 02 ?? ?? 64 67 89 26 00 00 EB 02 ?? ?? EB 01 ?? 50 EB 04 ?? ?? ?? ?? 33 C0 EB 04 ?? ?? ?? ?? 8B 00 EB 02 ?? ?? C3 EB 03 ?? ?? ?? E9 FA 00 00 00 EB 04 ?? ?? ?? ?? E8 D5 FF FF FF EB 02 ?? ?? EB 04 ?? ?? ?? ?? 58 EB 01 ?? EB 01 ?? 64 67 8F 06 00 00 EB 01 ?? 83 C4 04 EB 04}
	condition:
		$0 at entrypoint
}
rule _ACProtect_v190g__Risco_software_Inc_
{
	meta:
		description = "ACProtect v1.90g -> Risco software Inc."
	strings:
		$0 = {60 0F 87 02 00 00 00 1B F8 E8 01 00 00 00 73 83 04 24 06 C3}
	condition:
		$0 at entrypoint
}
rule _PECompact_v110b4_
{
	meta:
		description = "PECompact v1.10b4"
	strings:
		$0 = {EB 06 68 ?? ?? ?? ?? C3 9C 60 E8 02 ?? ?? ?? 33 C0 8B C4 83 C0 04 93 8B E3 8B 5B FC 81 EB 0F 60 40 ?? 87 DD 8B 85 95 60 40 ?? 01 85 03 60 40 ?? 66 C7 85 ?? 60 40 ?? 90 90 BB 44}
	condition:
		$0 at entrypoint
}
rule _EXE_Stealth_v274_
{
	meta:
		description = "EXE Stealth v2.74"
	strings:
		$0 = {EB 00 EB 17 53 68 61 72 65 77 61 72 65 20 2D 20 45 78 65 53 74 65 61 6C 74 68 00 60 90 E8 00 00 00 00 5D 81 ED C4 27 40 00 B9 15 00 00 00 83 C1 04 83 C1 01 EB 05 EB FE 83 C7 56 EB 00 83 E9 02 81 C1 78 43 27 65 EB 00 81 C1 10 25 94 00 81 E9 63 85 00 00 B9}
	condition:
		$0
}
rule _FSG_131__dulekxt_
{
	meta:
		description = "FSG 1.31 -> dulek/xt"
	strings:
		$0 = {BE ?? ?? ?? 00 BF ?? ?? ?? 00 BB ?? ?? ?? 00 53 BB ?? ?? ?? 00 B2 80}
	condition:
		$0 at entrypoint
}
rule _RJcrush_v100_
{
	meta:
		description = "RJcrush v1.00"
	strings:
		$0 = {06 FC 8C C8 BA ?? ?? 03 D0 52 BA ?? ?? 52 BA ?? ?? 03 C2 8B D8 05 ?? ?? 8E DB 8E C0 33 F6 33 FF B9}
	condition:
		$0 at entrypoint
}
rule _Obsidium_V1350__Obsidium_Software_
{
	meta:
		description = "Obsidium V1.3.5.0 -> Obsidium Software"
	strings:
		$0 = {EB 03 ?? ?? ?? E8 ?? ?? ?? ?? EB 02 ?? ?? EB 04 ?? ?? ?? ?? 8B 54 24 0C EB 04 ?? ?? ?? ?? 83 82 B8 00 00 00 20 EB 03 ?? ?? ?? 33 C0 EB 01 ?? C3 EB 02 ?? ?? EB 03 ?? ?? ?? 64 67 FF 36 00 00 EB 03 ?? ?? ?? 64 67 89 26 00 00 EB 01 ?? EB 04 ?? ?? ?? ?? 50 EB 04 ?? ?? ?? ?? 33 C0 EB 04 ?? ?? ?? ?? 8B 00 EB 03 ?? ?? ?? C3 EB 02 ?? ?? E9 FA 00 00 00 EB 01 ?? E8 ?? ?? ?? ?? EB 01 ?? EB 02 ?? ?? 58 EB 04 ?? ?? ?? ?? EB 02 ?? ?? 64 67 8F 06 00 00 EB 02 ?? ?? 83 C4 04 EB 01 ?? E8}
	condition:
		$0 at entrypoint
}
rule _ACProtect_V14X__risco_
{
	meta:
		description = "ACProtect V1.4X -> risco"
	strings:
		$0 = {60 E8 01 00 00 00 7C 83 04 24 06 C3}
	condition:
		$0 at entrypoint
}
rule _PseudoSigner_02_Armadillo_300__Anorganix_
{
	meta:
		description = "PseudoSigner 0.2 [Armadillo 3.00] --> Anorganix"
	strings:
		$0 = {60 E8 2A 00 00 00 5D 50 51 EB 0F B9 EB 0F B8 EB 07 B9 EB 0F 90 EB 08 FD EB 0B F2 EB F5 EB F6 F2 EB 08 FD EB E9 F3 EB E4 FC E9 59 58 50 51 EB 85}
	condition:
		$0 at entrypoint
}
rule _XCR_v012_
{
	meta:
		description = "XCR v0.12"
	strings:
		$0 = {60 9C E8 ?? ?? ?? ?? 8B DD 5D 81 ED ?? ?? ?? ?? 89 9D}
	condition:
		$0 at entrypoint
}
rule _EXECryptor_2223_compressed_code__wwwstrongbitcom_
{
	meta:
		description = "EXECryptor 2.2/2.3 (compressed code) -> www.strongbit.com"
	strings:
		$0 = {E8 00 00 00 00 58 ?? ?? ?? ?? ?? 8B 1C 24 81 EB ?? ?? ?? ?? B8 ?? ?? ?? ?? 50 6A 04 68 00 10 00 00 50 6A 00 B8 C4 ?? ?? ?? 8B 04 18 FF D0 59 BA ?? ?? ?? ?? 01 DA 52 53 50 89 C7 89 D6 FC F3 A4 B9 ?? ?? ?? ?? 01 D9 FF D1 58 8B 1C 24 68 00 80 00 00 6A 00 50}
		$1 = {E8 00 00 00 00 58 ?? ?? ?? ?? ?? 8B 1C 24 81 EB ?? ?? ?? ?? B8 ?? ?? ?? ?? 50 6A 04 68 00 10 00 00 50 6A 00 B8 C4 ?? ?? ?? 8B 04 18 FF D0 59 BA ?? ?? ?? ?? 01 DA 52 53 50 89 C7 89 D6 FC F3 A4 B9 ?? ?? ?? ?? 01 D9 FF D1 58 8B 1C 24 68 00 80 00 00 6A 00 50 B8 C8 ?? ?? ?? 8B 04 18 FF D0 59 58 5B 83 EB 05 C6 03 B8 43 89 03 83 C3 04 C6 03 C3 09 C9 74 46 89 C3 E8 A0 00 00 00 FC AD 83 F8 FF 74 38 53 89 CB 01 C3 01 0B 83 C3 04 AC 3C FE 73 07 25 FF 00 00 00 EB ED 81 C3 FE 00 00 00 09 C0 7A 09 66 AD 25 FF FF 00 00 EB DA AD 4E 25 FF FF FF 00 3D FF FF FF 00 75 CC ?? ?? ?? ?? ?? C3}
	condition:
		$0 or $1
}
rule _PENinja_
{
	meta:
		description = "PENinja"
	strings:
		$0 = {90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90}
	condition:
		$0 at entrypoint
}
rule _XPack_v142_
{
	meta:
		description = "X-Pack v1.4.2"
	strings:
		$0 = {72 ?? C3 8B DE 83 ?? ?? C1 ?? ?? 8C D8 03 C3 8E D8 8B DF 83 ?? ?? C1 ?? ?? 8C C0 03 C3 8E C0 C3}
	condition:
		$0
}
rule _PESpin_v11__Cyberbob_
{
	meta:
		description = "PESpin v1.1 -> Cyberbob"
	strings:
		$0 = {EB 01 68 60 E8 00 00 00 00 8B 1C 24 83 C3 12 81 2B E8 B1 06 00 FE 4B FD 82 2C 24 7D DE 46 00 0B E4 74 9E 75 01 C7 81 73 04 D7 7A F7 2F 81 73 19 77 00 43 B7 F6 C3 6B B7 00 00 F9 FF E3 C9 C2 08 00 A3 68 72 01 FF 5D 33 C9 41 E2 17 EB 07 EA EB 01 EB EB 0D FF}
	condition:
		$0 at entrypoint
}
rule _PolyCryptor_by_SMT_Version_v3v4_
{
	meta:
		description = "PolyCryptor by SMT Version %v3.%v4"
	strings:
		$0 = {EB ?? 28 50 6F 6C 79 53 63 72 79 70 74 20 ?? ?? ?? 20 62 79 20 53 4D 54 29}
	condition:
		$0 at entrypoint
}
rule _Ding_Boys_PElock_v007_
{
	meta:
		description = "Ding Boy's PE-lock v0.07"
	strings:
		$0 = {55 57 56 52 51 53 E8 00 00 00 00 5D 8B D5 81 ED 23 35 40 00}
	condition:
		$0 at entrypoint
}
rule _ExeJoiner_10__Yoda_
{
	meta:
		description = "ExeJoiner 1.0 -> Yoda"
	strings:
		$0 = {68 00 10 40 00 68 04 01 00 00 E8 39 03 00 00 05 00 10 40 00 C6 00 5C 68 04 01 00 00 68 04 11 40 00 6A 00 E8 1A 03 00 00 6A 00 68 80 00 00 00 6A 03 6A 00 6A 01 68 00 00 00 80 68 04 11 40 00 E8 EC 02 00 00 83 F8 FF 0F 84 83 02 00 00 A3 08 12 40 00 6A 00 50 E8 E2 02 00 00 83 F8 FF 0F 84 6D 02 00 00 A3 0C 12 40 00 8B D8 83 EB 04 6A 00 6A 00 53 FF 35 08 12 40 00 E8 E3 02 00 00 6A 00 68 3C 12 40 00 6A 04 68 1E 12 40 00 FF 35 08 12 40 00 E8 C4 02 00 00 83 EB 04 6A 00 6A 00 53 FF 35 08 12 40 00}
	condition:
		$0 at entrypoint
}
rule _SVK_Protector_v132_Eng__Pavol_Cerven_
{
	meta:
		description = "SVK Protector v1.32 (Eng) -> Pavol Cerven"
	strings:
		$0 = {60 E8 00 00 00 00 5D 81 ED 06 00 00 00 EB 05 B8 06 36 42 00 64 A0 23 00 00 00 EB 03 C7 84 E8 84 C0 EB 03 C7 84 E9 75 67 B9 49 00 00 00 8D B5 C5 02 00 00 56 80 06 44 46 E2 FA 8B 8D C1 02 00 00 5E 55 51 6A 00 56 FF 95 0C 61 00 00 59 5D 40 85 C0 75 3C 80 3E}
	condition:
		$0 at entrypoint
}
rule _JExeCompressor_10__by_Arash_Veyskarami_
{
	meta:
		description = "JExeCompressor 1.0 - by Arash Veyskarami"
	strings:
		$0 = {8D 2D D3 4A E5 14 0F BB F7 0F BA E5 73 0F AF D5 8D 0D 0C 9F E6 11 C0 F8 EF F6 DE 80 DC 5B F6 DA 0F A5 C1 0F C1 F1 1C F3 4A 81 E1 8C 1F 66 91 0F BE C6 11 EE 0F C0 E7 33 D9 64 F2 C0 DC 73 0F C0 D5 55 8B EC BA C0 1F 41 00 8B C2 B9 97 00 00 00 80 32 79 50 B8 02 00 00 00 50 03 14 24 58 58 51 2B C9 B9 01 00 00 00 83 EA 01 E2 FB 59 E2 E1 FF E0}
	condition:
		$0 at entrypoint
}
rule _Armadillo_v300a_
{
	meta:
		description = "Armadillo v3.00a"
	strings:
		$0 = {60 E8 ?? ?? ?? ?? 5D 50 51 EB 0F B9 EB 0F B8 EB 07 B9 EB 0F 90 EB 08 FD EB 0B F2 EB F5 EB F6 F2 EB 08 FD EB E9 F3 EB E4 FC E9 59 58 50 51 EB}
	condition:
		$0 at entrypoint
}
rule _xPEP_03x__xIkUg_
{
	meta:
		description = "xPEP 0.3x -> xIkUg"
	strings:
		$0 = {55 53 56 51 52 57 E8 16 00 00 00}
	condition:
		$0 at entrypoint
}
rule _SoftComp_1x__BG_Soft_PT_
{
	meta:
		description = "SoftComp 1.x -> BG Soft PT"
	strings:
		$0 = {E8 00 00 00 00 81 2C 24 3A 10 41 00 5D E8 00 00 00 00 81 2C 24 31 01 00 00 8B 85 2A 0F 41 00 29 04 24 8B 04 24 89 85 2A 0F 41 00 58 8B 85 2A 0F 41 00}
	condition:
		$0
}
rule _EXECryptor_2xx_max_compressed_resources_
{
	meta:
		description = "EXECryptor 2.xx (max. compressed resources)"
	strings:
		$0 = {55 8B EC 83 C4 EC FC 53 57 56 89 45 FC 89 55 F8 89 C6 89 D7 66 81 3E 4A 43 0F 85 23 01 00 00 83 C6 0A C7 45 F4 08 00 00 00 31 DB BA 00 00 00 80 43 31 C0 E8 11 01 00 00 73 0E 8B 4D F0 E8 1F 01 00 00 02 45 EF AA EB E9 E8 FC 00 00 00 0F 82 97 00 00 00 E8 F1 00 00 00 73 5B B9 04 00 00 00 E8 FD 00 00 00 48 74 DE 0F 89 C7 00 00 00 E8 D7 00 00 00 73 1B 55 BD 00 01 00 00 E8 D7 00 00 00 88 07 47 4D 75 F5 E8 BF 00 00 00 72 E9 5D EB A2 B9 01 00 00 00 E8 C8 00 00 00 83 C0 07 89 45 F0 C6 45 EF 00 83 F8 08 74 89 E8 A9 00 00 00 88 45 EF E9 7C FF FF FF B9 07 00 00 00 E8 A2 00 00 00 50}
	condition:
		$0
}
rule _Vx_VCL_
{
	meta:
		description = "Vx: VCL"
	strings:
		$0 = {AC B9 00 80 F2 AE B9 04 00 AC AE 75 ?? E2 FA 89}
	condition:
		$0 at entrypoint
}
rule _eXpressor_v11__CGSoftLabs_
{
	meta:
		description = "eXpressor v1.1 -> CGSoftLabs"
	strings:
		$0 = {E9 15 13 00 00 E9 F0 12 00 00 E9 58 12 00 00 E9 AF 0C 00 00 E9 AE 02 00 00 E9 B4 0B 00 00 E9 E0 0C 00 00}
	condition:
		$0 at entrypoint
}
rule _Armadillo_v25x__v26x_
{
	meta:
		description = "Armadillo v2.5x - v2.6x"
	strings:
		$0 = {55 8B EC 6A FF 68 ?? ?? ?? ?? 68 ?? ?? ?? ?? 64 A1 00 00 00 00 50 64 89 25 00 00 00 00 83 EC 58 53 56 57 89 65 E8 FF 15 58 ?? ?? ?? 33 D2 8A D4 89 15 EC}
	condition:
		$0 at entrypoint
}
rule _RLPack_Full_Edition_117_DLL_aPLib__Ap0x_
{
	meta:
		description = "RLPack Full Edition 1.17 DLL [aPLib] -> Ap0x"
	strings:
		$0 = {80 7C 24 08 01 0F 85 ?? ?? ?? ?? 60 E8 00 00 00 00 8B 2C 24 83 C4 04 8D B5 53 03 00 00 8D 9D 02 02 00 00 33 FF E8 ?? ?? ?? ?? EB 0F FF 74 37 04 FF 34 37 FF D3 83 C4 08 83 C7 08 83 3C 37 00 75}
	condition:
		$0 at entrypoint
}
rule _PE_Pack_v099_
{
	meta:
		description = "PE Pack v0.99"
	strings:
		$0 = {60 E8 ?? ?? ?? ?? 5D 83 ED 06 80 BD E0 04 ?? ?? 01 0F 84 F2}
	condition:
		$0 at entrypoint
}
rule _PUNiSHER_v15_DEMO__FEUERRADERAHTeam_
{
	meta:
		description = "PUNiSHER v1.5 (DEMO) -> FEUERRADER/AHTeam"
	strings:
		$0 = {EB 04 83 A4 BC CE 60 EB 04 80 BC 04 11 E8 00 00 00 00 81 2C 24 CA C2 41 00 EB 04 64 6B 88 18 5D E8 00 00 00 00 EB 04 64 6B 88 18 81 2C 24 86 00 00 00 EB 04 64 6B 88 18 8B 85 9C C2 41 00 EB 04 64 6B 88 18 29 04 24 EB 04 64 6B 88 18 EB 04 64 6B 88 18 8B 04}
		$1 = {EB 04 83 A4 BC CE 60 EB 04 80 BC 04 11 E8 00 00 00 00 81 2C 24 CA C2 41 00 EB 04 64 6B 88 18 5D E8 00 00 00 00 EB 04 64 6B 88 18 81 2C 24 86 00 00 00 EB 04 64 6B 88 18 8B 85 9C C2 41 00 EB 04 64 6B 88 18 29 04 24 EB 04 64 6B 88 18 EB 04 64 6B 88 18 8B 04 24 EB 04 64 6B 88 18 89 85 9C C2 41 00 EB 04 64 6B 88 18 58 68 9F 6F 56 B6 50 E8 5D 00 00 00 EB FF 71 78 C2 50 00 EB D3 5B F3 68 89 5C 24 48 5C 24 58 FF 8D 5C 24 58 5B 83 C3 4C 75 F4 5A 8D 71 78 75 09 81 F3 EB FF 52 BA 01 00 83 EB FC 4A FF 71 0F 75 19 8B 5C 24 00 00 81 33 50 53 8B 1B 0F FF C6 75 1B 81 F3 EB 87 1C 24 8B 8B 04 24 83 EC FC EB 01 E8 83 EC FC E9 E7 00 00 00 58 EB FF F0 EB FF C0 83 E8 FD EB FF 30 E8 C9 00 00 00 89 E0 EB FF D0 EB FF 71 0F 83 C0 01 EB FF 70 F0 71 EE EB FA EB 83 C0 14 EB FF 70 ED}
	condition:
		$0 at entrypoint or $1 at entrypoint
}
rule _eXPressor_v13__CGSoftLabs_
{
	meta:
		description = "eXPressor v1.3 -> CGSoftLabs"
	strings:
		$0 = {45 78 50 72 2D 76 2E 31 2E 33 2E}
		$1 = {55 8B EC 83 EC ?? 53 56 57 EB 0C 45 78 50 72 2D 76 2E 31 2E 33 2E 2E B8 ?? ?? ?? ?? 2B 05 ?? ?? ?? ?? A3 ?? ?? ?? ?? 83 3D ?? ?? ?? ?? 00 74 13 A1 ?? ?? ?? ?? 03 05 ?? ?? ?? ?? 89 ?? ?? E9 ?? ?? 00 00 C7 05}
	condition:
		$0 or $1 at entrypoint
}
rule _EXEStealth_276_Unregistered__WebtoolMaster_
{
	meta:
		description = "EXEStealth 2.76 Unregistered -> WebtoolMaster"
	strings:
		$0 = {EB ?? 45 78 65 53 74 65 61 6C 74 68 20 56 32 20 53 68 61 72 65 77 61 72 65 20}
	condition:
		$0
}
rule _Obsidium_1333__Obsidium_Software_
{
	meta:
		description = "Obsidium 1.3.3.3 -> Obsidium Software"
	strings:
		$0 = {EB 02 ?? ?? E8 29 00 00 00 EB 03 ?? ?? ?? EB 03 ?? ?? ?? 8B 54 24 0C EB 01 ?? 83 82 B8 00 00 00 28 EB 03 ?? ?? ?? 33 C0 EB 01 ?? C3 EB 04 ?? ?? ?? ?? EB 02 ?? ?? 64 67 FF 36 00 00 EB 04 ?? ?? ?? ?? 64 67 89 26 00 00 EB 02 ?? ?? EB 04 ?? ?? ?? ?? 50 EB 04}
		$1 = {EB 02 ?? ?? E8 29 00 00 00 EB 03 ?? ?? ?? EB 03 ?? ?? ?? 8B 54 24 0C EB 01 ?? 83 82 B8 00 00 00 28 EB 03 ?? ?? ?? 33 C0 EB 01 ?? C3 EB 04 ?? ?? ?? ?? EB 02 ?? ?? 64 67 FF 36 00 00 EB 04 ?? ?? ?? ?? 64 67 89 26 00 00 EB 02 ?? ?? EB 04 ?? ?? ?? ?? 50 EB 04 ?? ?? ?? ?? 33 C0 EB 01 ?? 8B 00 EB 03 ?? ?? ?? C3 EB 03 ?? ?? ?? E9 FA 00 00 00 EB 03 ?? ?? ?? E8 D5 FF FF FF EB 04 ?? ?? ?? ?? EB 04 ?? ?? ?? ?? 58 EB 01 ?? EB 03 ?? ?? ?? 64 67 8F 06 00 00 EB 04 ?? ?? ?? ?? 83 C4 04 EB 04 ?? ?? ?? ?? E8 2B 27}
	condition:
		$0 at entrypoint or $1 at entrypoint
}
rule _CreateInstall_Stub_vxx_
{
	meta:
		description = "CreateInstall Stub vx.x"
	strings:
		$0 = {55 8B EC 81 EC 20 02 00 00 53 56 57 6A 00 FF 15 18 61 40 00 68 00 70 40 00 89 45 08 FF 15 14 61 40 00 85 C0 74 27 6A 00 A1 00 20 40 00 50 FF 15 3C 61 40 00 8B F0 6A 06 56 FF 15 38 61 40 00 6A 03 56 FF 15 38 61 40 00 E9 36 03 00 00 68 02 7F 00 00 33 F6 56}
	condition:
		$0 at entrypoint
}
rule _SuckStop_v111_
{
	meta:
		description = "SuckStop v1.11"
	strings:
		$0 = {EB ?? ?? ?? BE ?? ?? B4 30 CD 21 EB ?? 9B}
	condition:
		$0 at entrypoint
}
rule _WWPACK_v305c4_Unextractable_p_Virus_Shield_
{
	meta:
		description = "WWPACK v3.05c4 (Unextractable + Virus Shield)"
	strings:
		$0 = {03 05 40 1B B8 ?? ?? 8C CA 03 D0 8C C9 81 C1 ?? ?? 51 B9 ?? ?? 51 06 06 B1 ?? 51 8C D3}
	condition:
		$0 at entrypoint
}
rule _ASPack_v211c__Alexey_Solodovnikov_
{
	meta:
		description = "ASPack v2.11c -> Alexey Solodovnikov"
	strings:
		$0 = {60 E8 02 00 00 00 EB 09 5D 55 81 ED 39 39 44 00 C3 E9 59 04 00 00}
	condition:
		$0 at entrypoint
}
rule _PC_Shrinker_v020_
{
	meta:
		description = "PC Shrinker v0.20"
	strings:
		$0 = {E8 E8 01 ?? ?? 60 01 AD B3 27 40 ?? 68}
	condition:
		$0 at entrypoint
}
rule _Upack_v037__v038_Beta_Strip_base_relocation_table_Option_Dwing_
{
	meta:
		description = "Upack v0.37 ~ v0.38 Beta (Strip base relocation table Option)-> Dwing"
	strings:
		$0 = {53 18 33 C0 55 40 51 D3 E0 8B EA 91 FF 56 4C 33}
	condition:
		$0
}
rule _UPX_20030X__Markus_Oberhumer__Laszlo_Molnar__John_Reiser_
{
	meta:
		description = "UPX 2.00-3.0X -> Markus Oberhumer & Laszlo Molnar & John Reiser"
	strings:
		$0 = {5E 89 F7 B9 ?? ?? ?? ?? 8A 07 47 2C E8 3C 01 77 F7 80 3F ?? 75 F2 8B 07 8A 5F 04 66 C1 E8 08 C1 C0 10 86 C4 29 F8 80 EB E8 01 F0 89 07 83 C7 05 88 D8 E2 D9 8D ?? ?? ?? ?? ?? 8B 07 09 C0 74 3C 8B 5F 04 8D ?? ?? ?? ?? ?? ?? 01 F3 50 83 C7 08 FF ?? ?? ?? ?? ?? 95 8A 07 47 08 C0 74 DC 89 F9 57 48 F2 AE 55 FF ?? ?? ?? ?? ?? 09 C0 74 07 89 03 83 C3 04 EB E1 FF ?? ?? ?? ?? ?? 8B AE ?? ?? ?? ?? 8D BE 00 F0 FF FF BB 00 10 00 00 50 54 6A 04 53 57 FF D5 8D 87 ?? ?? ?? ?? 80 20 7F 80 60 28 7F 58 50 54 50 53 57 FF D5 58 61 8D 44 24 80 6A 00 39 C4 75 FA 83 EC 80 E9}
	condition:
		$0
}
rule _PEProtect_09_by_Cristoph_Gabler_1998_
{
	meta:
		description = "PE-Protect 0.9 by Cristoph Gabler 1998"
	strings:
		$0 = {50 45 2D 50 52 4F 54 45 43 54 20 30 2E 39}
	condition:
		$0
}
rule _RSCs_Process_Patcher_v14_
{
	meta:
		description = "R!SC's Process Patcher v1.4"
	strings:
		$0 = {E8 E1 01 00 00 80 38 22 75 13 80 38 00 74 2E 80 38 20 75 06 80 78 FF 22 74 18 40 EB ED 80 38 00 74 1B EB 19 40 80 78 FF 20 75 F9 80 38 00 74 0D EB 0B 40 80 38 00 74 05 80 38 22 74 00 8B F8 B8 04 60 40 00 68 00 20 40 00 C7 05 A2 20 40 00 44 00 00 00 68 92}
	condition:
		$0
}
rule _FSG_v110_Eng__dulekxt__Microsoft_Visual_Basic_50__60_
{
	meta:
		description = "FSG v1.10 (Eng) -> dulek/xt -> (Microsoft Visual Basic 5.0 / 6.0)"
	strings:
		$0 = {C1 CB 10 EB 01 0F B9 03 74 F6 EE 0F B6 D3 8D 05 83 ?? ?? EF 80 F3 F6 2B C1 EB 01 DE 68 77}
	condition:
		$0 at entrypoint
}
rule _MS_Visual_Cpp_v8_DLL_hsmall_sig1_
{
	meta:
		description = "MS Visual C++ v.8 DLL (h-small sig1)"
	strings:
		$0 = {8B FF 55 8B EC 83 7D 0C 01 75 05 E8 ?? ?? ?? FF 5D E9 D6 FE FF FF CC CC CC CC CC}
	condition:
		$0 at entrypoint
}
rule _SoftProtect__SoftProtectbyru_
{
	meta:
		description = "SoftProtect -> SoftProtect.by.ru"
	strings:
		$0 = {EB 01 E3 60 E8 03 ?? ?? ?? D2 EB 0B 58 EB 01 48 40 EB 01 35 FF E0 E7 61 60 E8 03 ?? ?? ?? 83 EB 0E EB 01 0C 58 EB 01 35 40 EB 01 36 FF E0 0B 61 EB 01 83 9C EB 01 D5 EB 08 35 9D EB 01 89 EB 03 0B EB F7 E8 ?? ?? ?? ?? 58 E8 ?? ?? ?? ?? 59 83 01 01 80 39 5C}
	condition:
		$0 at entrypoint
}
rule _yodas_Protector_v101__Ashkbiz_Danehkar_
{
	meta:
		description = "yoda's Protector v1.01 -> Ashkbiz Danehkar"
	strings:
		$0 = {55 8B EC 53 56 57 E8 03 00 00 00 EB 01 ?? E8 86 00 00 00 E8 03 00 00 00 EB 01 ?? E8 79 00 00 00 E8 03 00 00 00 EB 01 ?? E8 A4 00 00 00 E8 03 00 00 00 EB 01 ?? E8 97 00 00 00 E8 03 00 00 00 EB 01 ?? E8 2D 00 00 00 E8 03 00 00 00 EB 01 ?? 60 E8 00 00 00 00}
	condition:
		$0 at entrypoint
}
rule _GameGuard_v20065xx_exe__sign_by_hot_UNP_
{
	meta:
		description = "GameGuard v2006.5.x.x (*.exe) -> sign by hot_UNP"
	strings:
		$0 = {31 FF 74 06 61 E9 4A 4D 50 30 5A BA 7D 00 00 00 80 7C 24 08 01 E9 00 00 00 00 60 BE 00}
	condition:
		$0 at entrypoint
}
rule _Armadillo_v220b1_
{
	meta:
		description = "Armadillo v2.20b1"
	strings:
		$0 = {55 8B EC 6A FF 68 30 12 41 00 68 A4 A5 40 00 64 A1 00 00 00 00 50 64 89 25 00 00 00 00 83 EC 58}
	condition:
		$0 at entrypoint
}
rule _FSG_v11_
{
	meta:
		description = "FSG v1.1"
	strings:
		$0 = {BB D0 01 40 ?? BF ?? 10 40 ?? BE ?? ?? ?? ?? FC B2 80 8A 06 46 88 07 47 02 D2 75 05 8A 16}
	condition:
		$0 at entrypoint
}
rule _PECrypter_
{
	meta:
		description = "PE-Crypter"
	strings:
		$0 = {60 E8 00 00 00 00 5D EB 26}
	condition:
		$0 at entrypoint
}
rule _EXE_joiner__Amok_
{
	meta:
		description = "EXE joiner -> Amok"
	strings:
		$0 = {A1 14 A1 40 00 C1 E0 02 A3 18 A1 40}
	condition:
		$0 at entrypoint
}
rule _NTPacker_10__ErazerZ_
{
	meta:
		description = "NTPacker 1.0 -> ErazerZ"
	strings:
		$0 = {55 8B EC 83 C4 E0 53 33 C0 89 45 E0 89 45 E4 89 45 E8 89 45 EC B8 ?? ?? 40 00 E8 ?? ?? FF FF 33 C0 55 68 ?? ?? 40 00 64 FF 30 64 89 20 8D 4D EC BA ?? ?? 40 00 A1 ?? ?? 40 00 E8 ?? FC FF FF 8B 55 EC B8 ?? ?? 40 00 E8 ?? ?? FF FF 8D 4D E8 BA ?? ?? 40 00 A1 ?? ?? 40 00 E8 ?? FE FF FF 8B 55 E8 B8 ?? ?? 40 00 E8 ?? ?? FF FF B8 ?? ?? 40 00 E8 ?? FB FF FF 8B D8 A1 ?? ?? 40 00 BA ?? ?? 40 00 E8 ?? ?? FF FF 75 26 8B D3 A1 ?? ?? 40 00 E8 ?? ?? FF FF 84 C0 75 2A 8D 55 E4 33 C0 E8 ?? ?? FF FF 8B 45 E4 8B D3 E8 ?? ?? FF FF EB 14 8D 55 E0 33 C0 E8 ?? ?? FF FF 8B 45 E0 8B D3 E8 ?? ?? FF FF 6A 00 E8 ?? ?? FF FF 33 C0 5A 59 59 64 89 10 68 ?? ?? 40 00 8D 45 E0 BA 04 00 00 00 E8 ?? ?? FF FF C3 E9 ?? ?? FF FF EB EB 5B E8 ?? ?? FF FF 00 00 00 FF FF FF FF 01 00 00 00 25 00 00 00 FF FF FF FF 01 00 00 00 5C 00 00 00 FF FF FF FF 06 00 00 00 53 45 52 56 45 52 00 00 FF FF FF FF 01 00 00 00 31}
	condition:
		$0 at entrypoint
}
rule _PAKSFX_Archive_
{
	meta:
		description = "PAK-SFX Archive"
	strings:
		$0 = {55 8B EC 83 ?? ?? A1 ?? ?? 2E ?? ?? ?? 2E ?? ?? ?? ?? ?? 8C D7 8E C7 8D ?? ?? BE ?? ?? FC AC 3C 0D}
	condition:
		$0 at entrypoint
}
rule _DevCpp_v4_
{
	meta:
		description = "Dev-C++ v4"
	strings:
		$0 = {55 89 E5 83 EC 08 83 C4 F4 6A ?? A1 ?? ?? ?? 00 FF D0 E8 ?? FF FF FF}
	condition:
		$0
}
rule _Thinstall_25___
{
	meta:
		description = "Thinstall 2.5 -> ???"
	strings:
		$0 = {55 8B EC B8 ?? ?? ?? ?? BB ?? ?? ?? ?? 50 E8 00 00 00 00 58 2D A7 1A 00 00 B9 6C 1A 00 00 BA 20 1B 00 00 BE 00 10 00 00 BF B0 53 00 00 BD EC 1A 00 00 03 E8 81 75 00 ?? ?? ?? ?? 81 75 04 ?? ?? ?? ?? 81 75 08 ?? ?? ?? ?? 81 75 0C ?? ?? ?? ?? 81 75 10}
	condition:
		$0 at entrypoint
}
rule _PseudoSigner_02_WATCOM_CCpp_EXE__Anorganix_
{
	meta:
		description = "PseudoSigner 0.2 [WATCOM C/C++ EXE] --> Anorganix"
	strings:
		$0 = {E9 00 00 00 00 90 90 90 90 57 41}
	condition:
		$0 at entrypoint
}
rule _Thinstall_Embedded_24222428__Jitit_
{
	meta:
		description = "Thinstall Embedded 2.422-2.428 -> Jitit"
	strings:
		$0 = {55 8B EC B8 ?? ?? ?? ?? BB ?? ?? ?? ?? 50 E8 00 00 00 00 58 2D 9B 1A 00 00 B9 84 1A 00 00 BA 14 1B 00 00 BE 00 10 00 00 BF B0 53 00 00 BD E0 1A 00 00 03 E8 81 75 00 ?? ?? ?? ?? 81 75 04 ?? ?? ?? ?? 81 75 08 ?? ?? ?? ?? 81 75 0C ?? ?? ?? ?? 81 75 10}
	condition:
		$0 at entrypoint
}
rule _Vx_Grazie883_
{
	meta:
		description = "Vx: Grazie.883"
	strings:
		$0 = {1E 0E 1F 50 06 BF 70 03 B4 1A BA 70 03 CD 21 B4 47 B2 00 BE 32 04 CD 21}
	condition:
		$0 at entrypoint
}
rule _ThemidaWinLicense_V1802_p__Oreans_Technologies_
{
	meta:
		description = "Themida/WinLicense V1.8.0.2 + -> Oreans Technologies"
	strings:
		$0 = {B8 00 00 00 00 60 0B C0 74 68 E8 00 00 00 00 58 05 ?? 00 00 00 80 38 E9 75 ?? 61 EB ?? DB 2D ?? ?? ?? ?? FF FF FF FF FF FF FF FF 3D 40 E8 00 00 00 00}
	condition:
		$0 at entrypoint
}
rule _PECompact_v2xx_
{
	meta:
		description = "PECompact v2.xx"
	strings:
		$0 = {B8 ?? ?? ?? 00 50 64 FF 35 00 00 00 00 64 89 25 00 00 00 00 33 C0 89 08 50 45 43 6F 6D 70 61 63 74 32 00}
	condition:
		$0
}
rule _PEArmor_04600759__hying_
{
	meta:
		description = "PE-Armor 0.460-0.759 -> hying"
	strings:
		$0 = {00 00 00 00 00 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 00 00 00 00 4B 45 52 4E 45 4C 33 32 2E 64 6C 6C 00 00 00 00 47 65 74 50 72 6F 63 41 64 64 72 65 73 73 00 00 00 47 65 74 4D 6F 64 75 6C 65 48 61 6E 64 6C 65 41 00 00 00 4C 6F 61 64 4C 69 62 72 61 72 79 41 00}
	condition:
		$0
}
rule _EncryptPE_12003518__WFS_
{
	meta:
		description = "EncryptPE 1.2003.5.18 -> WFS"
	strings:
		$0 = {60 9C 64 FF 35 00 00 00 00 E8 79}
	condition:
		$0 at entrypoint
}
rule _AsCrypt_v01__SToRM__3_
{
	meta:
		description = "AsCrypt v0.1 -> SToRM - #3"
	strings:
		$0 = {80 ?? ?? ?? 83 ?? ?? ?? ?? 90 90 90 51 ?? ?? ?? 01 00 00 00 83 ?? ?? E2}
	condition:
		$0
}
rule _PseudoSigner_01_MinGW_GCC_2x__Anorganix_
{
	meta:
		description = "PseudoSigner 0.1 [MinGW GCC 2.x] --> Anorganix"
	strings:
		$0 = {55 89 E5 E8 02 00 00 00 C9 C3 90 90 45 58 45 E9}
	condition:
		$0 at entrypoint
}
rule _Minke_V101__Codius_
{
	meta:
		description = "Minke V1.0.1 -> Codius"
	strings:
		$0 = {26 3D 4F 38 C2 82 37 B8 F3 24 42 03 17 9B 3A 83 01 00 00 CC 00 00 00 00 06 00 00 00 01 64 53 74 75 62 00 10 55 54 79 70 65 73 00 00 C7 53 79 73 74 65 6D 00 00 81 53 79 73 49 6E 69 74 00 0C 4B 57 69 6E 64 6F 77 73 00 00 8A 75 46 75 6E 63 74 69 6F 6E 73}
	condition:
		$0
}
rule _PEiDBundle_v100__v101__BoB__BobSoft_
{
	meta:
		description = "PEiD-Bundle v1.00 - v1.01 --> BoB / BobSoft"
	strings:
		$0 = {60 E8 ?? 02 00 00 8B 44 24 04 52 48 66 31 C0 66 81 38 4D 5A 75 F5 8B 50 3C 81 3C 02 50 45 00 00 75 E9 5A C2 04 00 60 89 DD 89 C3 8B 45 3C 8B 54 28 78 01 EA 52 8B 52 20 01 EA 31 C9 41 8B 34 8A}
	condition:
		$0 at entrypoint
}
rule _VProtector_V10_Build_20041213_test__vcasm_
{
	meta:
		description = "VProtector V1.0 [Build 2004.12.13] test! -> vcasm"
	strings:
		$0 = {55 8B EC 6A FF 68 1A 89 40 00 68 56 89 40 00 64 A1 00 00 00 00 50 64 89 25 00 00 00 00 E8 03 00 00 00 C7 84 00 58 EB 01 E9 83 C0 07 50}
	condition:
		$0 at entrypoint
}
rule _SEAAXE_v22_
{
	meta:
		description = "SEA-AXE v2.2"
	strings:
		$0 = {FC BC ?? ?? 0E 1F A3 ?? ?? E8 ?? ?? A1 ?? ?? 8B ?? ?? ?? 2B C3 8E C0 B1 03 D3 E3 8B CB BF ?? ?? 8B F7 F3 A5}
	condition:
		$0 at entrypoint
}
rule _Software_Compress_v14_LITE__BG_Software_Protect_Technologies_
{
	meta:
		description = "Software Compress v1.4 LITE -> BG Software Protect Technologies"
	strings:
		$0 = {E8 00 00 00 00 81 2C 24 AA 1A 41 00 5D E8 00 00 00 00 83 2C 24 6E 8B 85 5D 1A 41 00 29 04 24 8B 04 24 89 85 5D 1A 41 00 58 8B 85 5D 1A 41 00 8B 50 3C 03 D0 8B 92 80 00 00 00 03 D0 8B 4A 58 89 8D 49 1A 41 00 8B 4A 5C 89 8D 4D 1A 41 00 8B 4A 60 89 8D 55 1A}
		$1 = {E8 00 00 00 00 81 2C 24 AA 1A 41 00 5D E8 00 00 00 00 83 2C 24 6E 8B 85 5D 1A 41 00 29 04 24 8B 04 24 89 85 5D 1A 41 00 58 8B 85 5D 1A 41 00 8B 50 3C 03 D0 8B 92 80 00 00 00 03 D0 8B 4A 58 89 8D 49 1A 41 00 8B 4A 5C 89 8D 4D 1A 41 00 8B 4A 60 89 8D 55 1A 41 00 8B 4A 64 89 8D 51 1A 41 00 8B 4A 74 89 8D 59 1A 41 00 68 00 20 00 00 E8 D2 00 00 00 50 8D 8D 00 1C 41 00 50 51 E8 1B 00 00 00 83 C4 08 58 8D 78 74 8D B5 49 1A 41 00 B9 18 00 00 00 F3 A4 05 A4 00 00 00 50 C3 60 8B 74 24 24 8B 7C 24 28 FC B2 80 33 DB A4 B3 02 E8 6D 00 00 00 73 F6 33 C9 E8 64 00 00 00 73 1C 33 C0 E8 5B 00 00 00 73 23 B3 02 41 B0 10 E8 4F 00 00 00 12 C0 73 F7 75 3F AA EB D4 E8 4D 00 00 00 2B CB 75 10 E8 42 00 00 00 EB 28 AC D1 E8 74 4D 13 C9 EB 1C 91 48 C1 E0 08 AC E8 2C 00 00 00 3D 00 7D 00 00 73 0A 80 FC 05 73 06 83 F8 7F 77 02 41 41 95 8B C5 B3 01 56 8B F7 2B F0 F3 A4 5E EB 8E 02 D2 75 05 8A 16 46 12 D2 C3 33 C9 41 E8 EE FF FF FF 13 C9 E8 E7 FF FF FF 72 F2 C3 2B 7C 24 28 89 7C 24 1C 61 C3 60 FF 74 24 24 6A 40 FF 95 4D 1A 41 00 89 44 24 1C 61 C2 04}
	condition:
		$0 at entrypoint or $1 at entrypoint
}
rule _Simple_UPX_Cryptor_V3042005__MANtiCORE_
{
	meta:
		description = "Simple UPX Cryptor V30.4.2005 -> MANtiCORE"
	strings:
		$0 = {60 B8 ?? ?? ?? ?? B9 ?? ?? ?? ?? ?? ?? ?? ?? E2 FA 61 68 ?? ?? ?? ?? C3}
	condition:
		$0 at entrypoint
}
rule _TheHypers_protector__TheHyper_
{
	meta:
		description = "TheHyper's protector -> TheHyper"
	strings:
		$0 = {55 8B EC 83 EC 14 8B FC E8 14 00 00 00 ?? ?? 01 01 ?? ?? 01 01 ?? ?? ?? 00 ?? ?? 01 01 ?? ?? 02 01 5E E8 0D 00 00 00 6B 65 72 6E 65 6C 33 32 2E 64 6C 6C 00 8B 46 04 FF 10 8B D8 E8 0D 00 00 00 56 69 72 74 75 61 6C 41 6C 6C 6F 63 00 53 8B 06 FF 10 89 07 E8}
	condition:
		$0 at entrypoint
}
rule _Vx_Hymn1865_
{
	meta:
		description = "Vx: Hymn.1865"
	strings:
		$0 = {E8 ?? ?? 5E 83 EE 4C FC 2E ?? ?? ?? ?? 4D 5A ?? ?? FA 8B E6 81 ?? ?? ?? FB 3B ?? ?? ?? ?? ?? 2E ?? ?? ?? ?? ?? 50 06 56 1E 0E 1F B8 00 C5 CD 21}
	condition:
		$0 at entrypoint
}
rule _PseudoSigner_01_Microsoft_Visual_Cpp_70_DLL__Anorganix_
{
	meta:
		description = "PseudoSigner 0.1 [Microsoft Visual C++ 7.0 DLL] --> Anorganix"
	strings:
		$0 = {55 8D 6C 01 00 81 EC 00 00 00 00 8B 45 90 83 F8 01 56 0F 84 00 00 00 00 85 C0 0F 84 ?? ?? ?? ?? E9}
	condition:
		$0 at entrypoint
}
rule _Armadillo_v190b1_
{
	meta:
		description = "Armadillo v1.90b1"
	strings:
		$0 = {55 8B EC 6A FF 68 E0 C1 40 00 68 04 89 40 00 64 A1 00 00 00 00 50 64 89 25 00 00 00 00 83 EC 58}
	condition:
		$0 at entrypoint
}
rule _Pksmart_10b_
{
	meta:
		description = "Pksmart 1.0b"
	strings:
		$0 = {BA ?? ?? 8C C8 8B C8 03 C2 81 ?? ?? ?? 51 B9 ?? ?? 51 1E 8C D3}
	condition:
		$0 at entrypoint
}
rule _PENinja_modified_
{
	meta:
		description = "PENinja modified"
	strings:
		$0 = {5D 8B C5 81 ED B2 2C 40 00 2B 85 94 3E 40 00 2D 71 02 00 00 89 85 98 3E 40 00 0F B6 B5 9C 3E 40 00 8B FD}
	condition:
		$0 at entrypoint
}
rule _PseudoSigner_01_Neolite_20__Anorganix_
{
	meta:
		description = "PseudoSigner 0.1 [Neolite 2.0] --> Anorganix"
	strings:
		$0 = {E9 A6 00 00 00 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90}
	condition:
		$0 at entrypoint
}
rule _ASProtect_v12x_New_Strain_
{
	meta:
		description = "ASProtect v1.2x (New Strain)"
	strings:
		$0 = {68 01 ?? ?? ?? E8 01 ?? ?? ?? C3 C3}
	condition:
		$0 at entrypoint
}
rule _Vx_SYP_
{
	meta:
		description = "Vx: SYP"
	strings:
		$0 = {47 8B C2 05 1E 00 52 8B D0 B8 02 3D CD 21 8B D8 5A}
	condition:
		$0 at entrypoint
}
rule _WWPACK_v305c4_Extractable_p_Password_checking_
{
	meta:
		description = "WWPACK v3.05c4 (Extractable + Password checking)"
	strings:
		$0 = {03 05 80 1A B8 ?? ?? 8C CA 03 D0 8C C9 81 C1 ?? ?? 51 B9 ?? ?? 51 06 06 B1 ?? 51 8C D3}
	condition:
		$0 at entrypoint
}
rule _nPack_v11_150200_Beta__NEOx_
{
	meta:
		description = "nPack v1.1 150-200 Beta -> NEOx"
	strings:
		$0 = {83 3D 40 ?? ?? ?? 00 75 05 E9 01 00 00 00 C3 E8 41 00 00 00 B8 80 ?? ?? ?? 2B 05 08 ?? ?? ?? A3 3C ?? ?? 00 E8 5E 00 00 00 E8 E0 01 00 00 E8 EC 06 00 00 E8 F7 05 00 00}
	condition:
		$0 at entrypoint
}
rule _Unnamed_Scrambler_21Beta__211__p0ke_
{
	meta:
		description = "Unnamed Scrambler 2.1(Beta) / 2.1.1 -> p0ke"
	strings:
		$0 = {55 8B EC B9 15 00 00 00 6A 00 6A 00 49 75 F9 53 56 57 B8 ?? 3A ?? ?? E8 ?? EE FF FF 33 C0 55 68 ?? 43 ?? ?? 64 FF 30 64 89 20 BA ?? 43 ?? ?? B8 E4 64 ?? ?? E8 0F FD FF FF 8B D8 85 DB 75 07 6A 00 E8 ?? EE FF FF BA E8 64 ?? ?? 8B C3 8B 0D E4 64 ?? ?? E8 ?? D7 FF FF B8 F8 ?? ?? ?? BA 04 00 00 00 E8 ?? EF FF FF 33 C0 A3 F8 ?? ?? ?? BB ?? ?? ?? ?? C7 45 EC E8 64 ?? ?? C7 45 E8 ?? ?? ?? ?? C7 45 E4 ?? ?? ?? ?? BE ?? ?? ?? ?? BF ?? ?? ?? ?? B8 E0 ?? ?? ?? BA 04 00 00 00 E8 ?? EF FF FF 68 F4 01 00 00 E8 ?? EE FF FF 83 7B 04 00 75 0B 83 3B 00 0F 86 ?? 07 00 00 EB 06 0F 8E ?? 07 00 00 8B 03 8B D0 B8 E4 ?? ?? ?? E8 ?? E5 FF FF B8 E4 ?? ?? ?? E8 ?? E3 FF FF 8B D0 8B 45 EC 8B 0B E8}
	condition:
		$0
}
rule _Nullsoft_PiMP_Install_System_v1x_
{
	meta:
		description = "Nullsoft PiMP Install System v1.x"
	strings:
		$0 = {83 EC 0C 53 56 57 FF 15 ?? ?? 40 00 05 E8 03 00 00 BE ?? ?? ?? 00 89 44 24 10 B3 20 FF 15 28 ?? 40 00 68 00 04 00 00 FF 15 ?? ?? 40 00 50 56 FF 15 ?? ?? 40 00 80 3D ?? ?? ?? 00 22 75 08 80 C3 02 BE ?? ?? ?? 00 8A 06 8B 3D ?? ?? 40 00 84 C0 74 ?? 3A C3 74}
	condition:
		$0
}
rule _PseudoSigner_01_PENinja_131__Anorganix_
{
	meta:
		description = "PseudoSigner 0.1 [PENinja 1.31] --> Anorganix"
	strings:
		$0 = {90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 E9}
	condition:
		$0 at entrypoint
}
rule _FreeJoiner_Small_build_035__GlOFF_
{
	meta:
		description = "FreeJoiner Small (build 035) -> GlOFF"
	strings:
		$0 = {51 33 CB 86 C9 59 E8 9E FD FF FF 66 87 DB 6A 00 E8 0C 00 00 00 FF 25 78 10 40 00 FF 25 7C 10 40 00 FF 25 80 10 40 00 FF 25 84 10 40 00 FF 25 88 10 40 00 FF 25 8C 10 40 00 FF 25 90 10 40 00 FF 25 94 10 40 00 FF 25 98 10 40 00 FF 25 9C 10 40 00 FF 25 A0 10 40 00 FF 25 A4 10 40 00 FF 25 AC 10 40 00}
	condition:
		$0 at entrypoint
}
rule _PKLITE_v200b_extra_
{
	meta:
		description = "PKLITE v2.00b [extra]"
	strings:
		$0 = {50 B8 ?? ?? BA ?? ?? 05 ?? ?? 3B 06 02 00 72 ?? B4 09 BA ?? ?? CD 21 B8 01 4C CD 21 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? EA ?? ?? ?? ?? F3 A5 C3 59 2D ?? ?? 8E D0 51 2D ?? ?? 50 80}
	condition:
		$0 at entrypoint
}
rule _Nullsoft_Install_System_v20_RC2_
{
	meta:
		description = "Nullsoft Install System v2.0 RC2"
	strings:
		$0 = {83 EC 10 53 55 56 57 C7 44 24 14 70 92 40 00 33 ED C6 44 24 13 20 FF 15 2C 70 40 00 55 FF 15 84 72 40 00 BE 00 54 43 00 BF 00 04 00 00 56 57 A3 A8 EC 42 00 FF 15 C4 70 40 00 E8 8D FF FF FF 8B 1D 90 70 40 00 85 C0 75 21 68 FB 03 00 00 56 FF 15 5C 71 40 00}
	condition:
		$0
}
rule _PKLITE_v100c_2_
{
	meta:
		description = "PKLITE v1.00c (2)"
	strings:
		$0 = {BA ?? ?? A1 ?? ?? 2D ?? ?? 8C CB 81 C3 ?? ?? 3B C3 77 ?? 05 ?? ?? 3B C3 77 ?? B4 09 BA ?? ?? CD 21 CD 20 90}
	condition:
		$0 at entrypoint
}
rule _FreeCryptor_01_build_002__GlOFF_
{
	meta:
		description = "FreeCryptor 0.1 (build 002) -> GlOFF"
	strings:
		$0 = {8B 04 24 40 90 83 C0 07 80 38 90 90 74 02 EB FF 90 68 27 ?? ?? 00 64 FF 35 00 00 00 00 64 89 25 00 00 00 00 FF E4 90 8B 04 24 64 A3 00 00 00 00 8B 64 24 08 90 83 C4 08}
	condition:
		$0
}
rule _tElock_098__tE_
{
	meta:
		description = "tElock 0.98 -> tE!"
	strings:
		$0 = {E9 25 E4 FF FF 00 00 00 ?? ?? ?? ?? 1E ?? ?? 00 00 00 00 00 00 00 00 00 3E ?? ?? 00 2E ?? ?? 00 26 ?? ?? 00 00 00 00 00 00 00 00 00 4B ?? ?? 00 36 ?? ?? 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 56 ?? ?? 00 00 00 00 00 69 ?? ?? 00 00 00 00 00 56 ?? ?? 00 00 00 00 00 69 ?? ?? 00 00 00 00 00 6B 65 72 6E 65 6C 33 32 2E 64 6C 6C 00 75 73 65}
	condition:
		$0 at entrypoint
}
rule _RLPack_Full_Edition_117_DLL_LZMA__Ap0x_
{
	meta:
		description = "RLPack Full Edition 1.17 DLL [LZMA] -> Ap0x"
	strings:
		$0 = {80 7C 24 08 01 0F 85 ?? ?? ?? ?? 60 E8 00 00 00 00 8B 2C 24 83 C4 04 8D B5 5A 0A 00 00 8D 9D 40 02 00 00 33 FF E8 ?? ?? ?? ?? 6A 40 68 ?? ?? ?? ?? 68 ?? ?? ?? ?? 6A 00 FF 95 EB 09 00 00 89 85}
	condition:
		$0 at entrypoint
}
rule _Armadillo_v182_
{
	meta:
		description = "Armadillo v1.82"
	strings:
		$0 = {55 8B EC 6A FF 68 E0 C1 40 00 68 74 81 40 00 64 A1 00 00 00 00 50 64 89 25 00 00 00 00 83 EC 58}
	condition:
		$0 at entrypoint
}
rule _PocketPC_ARM_
{
	meta:
		description = "PocketPC ARM"
	strings:
		$0 = {F0 40 2D E9 00 40 A0 E1 01 50 A0 E1 02 60 A0 E1 03 70 A0 E1 ?? 00 00 EB 07 30 A0 E1 06 20 A0 E1 05 10 A0 E1 04 00 A0 E1 ?? ?? ?? EB F0 40 BD E8 ?? 00 00 EA ?? 40 2D E9 ?? ?? 9F E5 ?? ?? ?? ?? ?? 00 ?? ?? ?? ?? ?? ?? ?? ?? 9F E5 00 ?? ?? ?? ?? 00}
	condition:
		$0 at entrypoint
}
rule _PLINK86_1984_1985_
{
	meta:
		description = "PLINK86 1984, 1985"
	strings:
		$0 = {FA 8C C7 8C D6 8B CC BA ?? ?? 8E C2 26}
	condition:
		$0 at entrypoint
}
rule _Software_Compress_v12__BG_Software_Protect_Technologies_
{
	meta:
		description = "Software Compress v1.2 -> BG Software Protect Technologies"
	strings:
		$0 = {E9 BE 00 00 00 60 8B 74 24 24 8B 7C 24 28 FC B2 80 33 DB A4 B3 02 E8 6D 00 00 00 73 F6 33 C9 E8 64 00 00 00 73 1C 33 C0 E8 5B 00 00 00 73 23 B3 02 41 B0 10 E8 4F 00 00 00 12 C0 73 F7 75 3F AA EB D4 E8 4D 00 00 00 2B CB 75 10 E8 42 00 00 00 EB 28 AC D1 E8 74 4D 13 C9 EB 1C 91 48 C1 E0 08 AC E8 2C 00 00 00 3D 00 7D 00 00 73 0A 80 FC 05 73 06 83 F8 7F 77 02 41 41 95 8B C5 B3 01 56 8B F7 2B F0 F3 A4 5E EB 8E 02 D2 75 05 8A 16 46 12 D2 C3 33 C9 41 E8 EE FF FF FF 13 C9 E8 E7 FF FF FF 72 F2 C3 2B 7C 24 28 89 7C 24 1C 61 C3 60 FF 74 24 24 6A 40 FF 95 1A 0F 41 00 89 44 24 1C 61 C2 04 00 E8 00 00 00 00 81 2C 24 3A 10 41 00 5D E8 00 00 00 00 81 2C 24 31 01 00 00 8B 85 2A 0F 41 00 29 04 24}
	condition:
		$0 at entrypoint
}
rule _Excalibur_V103__forgot_
{
	meta:
		description = "Excalibur V1.03 -> forgot"
	strings:
		$0 = {E9 00 00 00 00 60 E8 14 00 00 00 5D 81 ED 00 00 00 00 6A 45 E8 A3 00 00 00 68 00 00 00 00 E8 58 61 EB 39}
	condition:
		$0 at entrypoint
}
rule _Petite_14_
{
	meta:
		description = "Petite 1.4"
	strings:
		$0 = {66 9C 60 50 8B D8 03 00 68 54 BC 00 00 6A 00 FF 50 14 8B CC}
	condition:
		$0
}
rule _Password_protector_my_SMT_
{
	meta:
		description = "Password protector my SMT"
	strings:
		$0 = {E8 ?? ?? ?? ?? 5D 8B FD 81 ?? ?? ?? ?? ?? 81 ?? ?? ?? ?? ?? 83 ?? ?? 89 ?? ?? ?? ?? ?? 8D ?? ?? ?? ?? ?? 8D ?? ?? ?? ?? ?? 46 80 ?? ?? 74}
	condition:
		$0 at entrypoint
}
rule _aPack_v098_m_
{
	meta:
		description = "aPack v0.98 -m"
	strings:
		$0 = {1E 06 8C C8 8E D8 05 ?? ?? 8E C0 50 BE ?? ?? 33 FF FC B2 ?? BD ?? ?? 33 C9 50 A4 BB ?? ?? 3B F3 76}
	condition:
		$0
}
rule _Armadillo_v171_
{
	meta:
		description = "Armadillo v1.71"
	strings:
		$0 = {55 8B EC 6A FF 68 ?? ?? ?? ?? 68 ?? ?? ?? ?? 64 A1}
	condition:
		$0 at entrypoint
}
rule _PKLITE32_11__PKWARE_Inc_
{
	meta:
		description = "PKLITE32 1.1 -> PKWARE Inc."
	strings:
		$0 = {68 ?? ?? ?? 00 68 ?? ?? ?? 00 68 00 00 00 00 E8 ?? ?? ?? ?? E9}
	condition:
		$0 at entrypoint
}
rule _ASPack_v100b__Alexey_Solodovnikov_
{
	meta:
		description = "ASPack v1.00b -> Alexey Solodovnikov"
	strings:
		$0 = {60 E8 ?? ?? ?? ?? 5D 81 ED 92 1A 44 ?? B8 8C 1A 44 ?? 03 C5 2B 85 CD 1D 44 ?? 89 85 D9 1D 44 ?? 80 BD C4 1D 44}
	condition:
		$0 at entrypoint
}
rule _ActiveMARK_5x__Trymedia_SystemsInc_
{
	meta:
		description = "ActiveMARK 5.x -> Trymedia Systems,Inc."
	strings:
		$0 = {20 2D 2D 4D 50 52 4D 4D 47 56 41 2D 2D 00 75 73 65 72 33 32 2E 64 6C 6C 00 4D 65 73 73 61 67 65 42 6F 78 41 00 54 68 69 73 20 61 70 70 6C 69 63 61 74 69 6F 6E 20 63 61 6E 6E 6F 74 20 72 75 6E 20 77 69 74 68 20 61 6E 20 61 63 74 69 76 65 20 64 65 62 75 67}
	condition:
		$0
}
rule _yodas_Crypter_13__Ashkbiz_Danehkar_
{
	meta:
		description = "yoda's Crypter 1.3 -> Ashkbiz Danehkar"
	strings:
		$0 = {55 8B EC 53 56 57 60 E8 00 00 00 00 5D 81 ED 6C 28 40 00 B9 5D 34 40 00 81 E9 C6 28 40 00 8B D5 81 C2 C6 28 40 00 8D 3A 8B F7 33 C0 EB 04 90 EB 01 C2 AC}
	condition:
		$0 at entrypoint
}
rule _Vx_TrojanTelefoon_
{
	meta:
		description = "Vx: Trojan.Telefoon"
	strings:
		$0 = {60 1E E8 3B 01 BF CC 01 2E 03 3E CA 01 2E C7 05}
	condition:
		$0 at entrypoint
}
rule _SoftDefender_V11x__Randy_Li_
{
	meta:
		description = "SoftDefender V1.1x -> Randy Li"
	strings:
		$0 = {74 07 75 05 19 32 67 E8 E8 74 1F 75 1D E8 68 39 44}
	condition:
		$0 at entrypoint
}
rule _PECompact_v0978_
{
	meta:
		description = "PECompact v0.978"
	strings:
		$0 = {EB 06 68 ?? ?? ?? ?? C3 9C 60 E8 02 ?? ?? ?? 33 C0 8B C4 83 C0 04 93 8B E3 8B 5B FC 81 EB 24 88 40 ?? 87 DD 8B 85 A9 88}
	condition:
		$0 at entrypoint
}
rule _LY_WGKX__wwwszleyucom_
{
	meta:
		description = "LY_WGKX -> www.szleyu.com"
	strings:
		$0 = {4D 79 46 75 6E 00 62 73}
	condition:
		$0
}
rule _PocketPC_SHA_
{
	meta:
		description = "PocketPC SHA"
	strings:
		$0 = {86 2F 96 2F A6 2F B6 2F 22 4F 43 68 53 6B 63 6A 73 69 F0 7F 0B D0 0B 40 09 00 09 D0 B3 65 A3 66 93 67 0B 40 83 64 03 64 04 D0 0B 40 09 00 10 7F 26 4F F6 6B F6 6A F6 69 0B 00 F6 68 ?? ?? ?? 00 ?? ?? ?? 00 ?? ?? ?? 00 22 4F F0 7F 0A D0 06 D4 06 D5 0B 40 09}
	condition:
		$0 at entrypoint
}
rule _FreeCryptor_02_build_002__GlOFF_
{
	meta:
		description = "FreeCryptor 0.2 (build 002) -> GlOFF"
	strings:
		$0 = {33 D2 90 1E 68 1B ?? ?? ?? 0F A0 1F 8B 02 90 50 54 8F 02 90 90 8E 64 24 08 FF E2 58 50 33 D2 52 83 F8 01 9B 40 8A 10 89 14 24 90 D9 04 24 90 D9 FA D9 5C 24 FC 8B 5C 24 FC 81 F3 C2 FC 1D 1C 75 E3 74 01 62 FF D0 90 5A 33 C0 8B 54 24 08 90 64 8F 00 90 83 C2 08 52 5C 5A}
	condition:
		$0
}
rule _StarForce_V1XV3X__StarForce_Copy_Protection_System_
{
	meta:
		description = "StarForce V1.X-V3.X -> StarForce Copy Protection System"
	strings:
		$0 = {68 ?? ?? ?? ?? FF 25 ?? ?? ?? ?? 00 00 00 00 00}
	condition:
		$0 at entrypoint
}
rule _EXEPACK_LINK_v360_v364_v365_or_50121_
{
	meta:
		description = "EXEPACK (LINK) v3.60, v3.64, v3.65 or 5.01.21"
	strings:
		$0 = {8C C0 05 ?? ?? 0E 1F A3 ?? ?? 03 ?? ?? ?? 8E C0 8B ?? ?? ?? 8B ?? 4F 8B F7 FD F3 A4 50 B8 ?? ?? 50 CB}
	condition:
		$0 at entrypoint
}
rule _RJoiner_12_by_Vaska_25032007_1658_
{
	meta:
		description = "RJoiner 1.2 by Vaska (25.03.2007 16:58)"
	strings:
		$0 = {55 8B EC 81 EC 0C 02 00 00 8D 85 F4 FD FF FF 56 50 68 04 01 00 00 FF 15 14 10 40 00 90 8D 85 F4 FD FF FF 50 FF 15 10 10 40 00 90 BE 00 20 40 00 90 83 3E FF 0F 84 84 00 00 00 53 57 33 FF 8D 46}
	condition:
		$0 at entrypoint
}
rule _CERBERUS_v20_
{
	meta:
		description = "CERBERUS v2.0"
	strings:
		$0 = {9C 2B ED 8C ?? ?? 8C ?? ?? FA E4 ?? 88 ?? ?? 16 07 BF ?? ?? 8E DD 9B F5 B9 ?? ?? FC F3 A5}
	condition:
		$0 at entrypoint
}
rule _PEZip_v10_by_BaGIE_
{
	meta:
		description = "PEZip v1.0 by BaGIE"
	strings:
		$0 = {D9 D0 F8 74 02 23 DB F5 F5 50 51 52 53 8D 44 24 10 50 55 56 57 D9 D0 22 C9 C1 F7 A0 55 66 C1 C8 B0 5D 81 E6 FF FF FF FF F8 77 07 52 76 03 72 01 90 5A C1 E0 60 90 BD 1F 01 00 00 87 E8 E2 07 E3 05 17 5D 47 E4 42 41 7F 06 50 66 83 EE 00 58 25 FF FF FF FF 51}
	condition:
		$0
}
rule _Armadillo_v301_v305_
{
	meta:
		description = "Armadillo v3.01, v3.05"
	strings:
		$0 = {60 E8 00 00 00 00 5D 50 51 EB 0F B9 EB 0F B8 EB 07 B9 EB 0F 90 EB 08 FD EB 0B F2 EB F5 EB F6 F2 EB 08 FD EB E9 F3 EB E4 FC E9 59 58 50 51 EB 0F B9 EB 0F B8 EB 07 B9 EB 0F 90 EB 08 FD EB 0B F2 EB F5 EB F6 F2 EB 08 FD EB E9 F3 EB E4 FC E9 59 58 50 51 EB 0F}
	condition:
		$0 at entrypoint
}
rule _PseudoSigner_01_Borland_Delphi_60__70__Anorganix_
{
	meta:
		description = "PseudoSigner 0.1 [Borland Delphi 6.0 - 7.0] --> Anorganix"
	strings:
		$0 = {90 90 90 90 68 ?? ?? ?? ?? 67 64 FF 36 00 00 67 64 89 26 00 00 F1 90 90 90 90 53 8B D8 33 C0 A3 09 09 09 00 6A 00 E8 09 09 00 FF A3 09 09 09 00 A1 09 09 09 00 A3 09 09 09 00 33 C0 A3 09 09 09 00 33 C0 A3 09 09 09 00 E8}
	condition:
		$0 at entrypoint
}
rule _SoftDefender_1x__Randy_Li_
{
	meta:
		description = "SoftDefender 1.x -> Randy Li"
	strings:
		$0 = {74 07 75 05 19 32 67 E8 E8 74 1F 75 1D E8 68 39 44 CD 00 59 9C 50 74 0A 75 08 E8 59 C2 04 00 55 8B EC E8 F4 FF FF FF 56 57 53 78 0F 79 0D E8 34 99 47 49 34 33 EF 31 34 52 47 23 68 A2 AF 47 01 59 E8 01 00 00 00 FF 58 05 E6 01 00 00 03 C8 74 BD 75 BB E8 00}
	condition:
		$0 at entrypoint
}
rule _FSG_v133_Eng__dulekxt_
{
	meta:
		description = "FSG v1.33 (Eng) -> dulek/xt"
	strings:
		$0 = {BE A4 01 40 00 AD 93 AD 97 AD 56 96 B2 80 A4 B6 80 FF 13 73 F9 33 C9 FF 13 73 16 33 C0 FF}
		$1 = {BE A4 01 40 00 AD 93 AD 97 AD 56 96 B2 80 A4 B6 80 FF 13 73 F9 33 C9 FF 13 73 16 33 C0 FF 13 73 1F B6 80 41 B0 10 FF 13 12 C0 73 FA 75 3C AA EB E0 FF 53 08 02 F6 83 D9 01 75 0E FF 53 04 EB 26 AC D1 E8 74 2F 13 C9 EB 1A 91 48 C1 E0 08 AC FF 53 04 3D 00 7D}
	condition:
		$0 at entrypoint or $1 at entrypoint
}
rule _Thinstall_2628__Jtit_
{
	meta:
		description = "Thinstall 2.628 -> Jtit"
	strings:
		$0 = {E8 00 00 00 00 58 BB 34 1D 00 00 2B C3 50 68 00 00 40 00 68 00 40 00 00 68 BC 00 00 00 E8 C3 FE FF FF E9 99 FF FF FF CC CC CC CC CC CC CC CC CC CC 55 8B EC 83 C4 F4 FC 53 57 56 8B 75 08 8B 7D 0C C7 45 FC 08 00 00 00 33 DB BA 00 00 00 80 43 33 C0 E8 19 01}
		$1 = {E8 00 00 00 00 58 BB 34 1D 00 00 2B C3 50 68 00 00 40 00 68 00 40 00 00 68 BC 00 00 00 E8 C3 FE FF FF E9 99 FF FF FF CC CC CC CC CC CC CC CC CC CC 55 8B EC 83 C4 F4 FC 53 57 56 8B 75 08 8B 7D 0C C7 45 FC 08 00 00 00 33 DB BA 00 00 00 80 43 33 C0 E8 19 01 00 00 73 0E 8B 4D F8 E8 27 01 00 00 02 45 F7 AA EB E9 E8 04 01 00 00 0F 82 96 00 00 00 E8 F9 00 00 00 73 5B B9 04 00 00 00 E8 05 01 00 00 48 74 DE 0F 89 C6 00 00 00 E8 DF 00 00 00 73 1B 55 BD 00 01 00 00 E8 DF 00 00 00 88 07 47 4D 75 F5 E8 C7 00 00 00 72 E9 5D EB A2 B9 01 00 00 00 E8 D0 00 00 00 83 C0 07 89 45 F8 C6 45 F7 00 83 F8 08 74 89 E8 B1 00 00 00 88 45 F7 E9 7C FF FF FF B9 07 00 00 00 E8 AA 00 00 00 50 33 C9 B1 02 E8 A0 00 00 00 8B C8 41 41 58 0B C0 74 04 8B D8 EB 5E 83 F9 02 74 6A 41 E8 88 00 00 00 89 45 FC E9 48 FF FF FF E8 87 00 00 00 49 E2 09 8B C3 E8 7D 00 00 00 EB 3A 49 8B C1 55 8B 4D FC 8B E8 33 C0 D3 E5 E8 5D 00 00 00 0B C5 5D 8B D8 E8 5F 00 00 00 3D 00 00 01 00 73 14 3D FF 37 00 00 73 0E 3D 7F 02 00 00 73 08 83 F8 7F 77 04 41 41 41 41 56 8B F7 2B F0 F3}
	condition:
		$0 at entrypoint or $1 at entrypoint
}
rule _Vx_August_16th_Iron_Maiden_
{
	meta:
		description = "Vx: August 16th (Iron Maiden)"
	strings:
		$0 = {BA 79 02 03 D7 B4 1A CD 21 B8 24 35 CD 21 5F 57 89 9D 4E 02 8C 85 50 02}
	condition:
		$0 at entrypoint
}
rule _EXECryptor_v153_
{
	meta:
		description = "EXECryptor v1.5.3"
	strings:
		$0 = {E8 24 00 00 00 8B 4C 24 0C C7 01 17 00 01 00 C7 81 B8 00 00 00 00 ?? ?? 00 31 C0 89 41 14 89 41 18 80 A1 C1 00 00 00 FE C3 31 C0 64 FF 30 64 89 20 CC C3}
	condition:
		$0
}
rule _SOFTWrapper_for_Win9xNT_Evaluation_Version_
{
	meta:
		description = "SOFTWrapper for Win9x/NT (Evaluation Version)"
	strings:
		$0 = {E8 00 00 00 00 5D 8B C5 2D ?? ?? ?? 00 50 81 ED 05 00 00 00 8B C5 2B 85 03 0F 00 00 89 85 03 0F 00 00 8B F0 03 B5 0B 0F 00 00 8B F8 03 BD 07 0F 00 00 83 7F 0C 00 74 2B 56 57 8B 7F 10 03 F8 8B 76 10 03 F0 83 3F 00 74 0C 8B 1E 89 1F 83 C6 04 83 C7 04 EB EF}
	condition:
		$0 at entrypoint
}
rule _SkD_Undetectabler_3_No_FSG_2_Method__SkD_
{
	meta:
		description = "SkD Undetectabler 3 (No FSG 2 Method) -> SkD"
	strings:
		$0 = {55 8B EC 81 EC 10 02 00 00 68 00 02 00 00 8D 85 F8 FD FF FF 50 6A 00 FF 15 38 10 00 01 50 FF 15 3C 10 00 01 8D 8D F8 FD FF FF 51 E8 4F FB FF FF 83 C4 04 8B 15 ?? 16 00 01 52 A1 ?? 16 00 01 50 E8 50 FF FF FF 83 C4 08 A3 ?? 16 00 01 C7 85 F4 FD FF FF 00 00 00 00 EB 0F 8B 8D F4 FD FF FF 83 C1 01 89 8D F4 FD FF FF 8B 95 F4 FD FF FF 3B 15 ?? 16 00 01 73 1C 8B 85 F4 FD FF FF 8B 0D ?? 16 00 01 8D 54 01 07 81 FA 74 10 00 01 75 02 EB 02 EB C7 8B 85 F4 FD FF FF 50 E8 ?? 00 00 00 83 C4 04 89 85 F0 FD FF FF 8B 8D F0 FD FF FF 89 4D FC C7 45 F8 00 00 00 00 EB 09 8B 55 F8 83 C2 01 89 55 F8 8B 45 F8 3B 85 F4 FD FF FF 73 15 8B 4D FC 03 4D F8 8B 15 ?? 16 00 01 03 55 F8 8A 02 88 01 EB D7 83 3D ?? 16 00 01 00 74}
	condition:
		$0 at entrypoint
}
rule _themida_1005__httpwwworeanscom_
{
	meta:
		description = "themida 1.0.0.5 -> http://www.oreans.com"
	strings:
		$0 = {B8 00 00 00 00 60 0B C0 74 58 E8 00 00 00 00 58 05 43 00 00 00 80 38 E9 75 03 61 EB 35 E8 00 00 00 00 58 25 00 F0 FF FF 33 FF 66 BB 19 5A 66 83 C3 34 66 39 18 75 12 0F B7 50 3C 03 D0 BB E9 44}
	condition:
		$0 at entrypoint
}
rule _ASDPack_v10__asd_
{
	meta:
		description = "ASDPack v1.0 -> asd"
	strings:
		$0 = {55 8B EC 56 53 E8 5C 01 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 10 00 00 ?? ?? ?? 00 00 00 00 00 00 00 40 00 00 ?? ?? 00 00 00 00 00 00 00 00 00 ?? ?? ?? 00 00 00 00 00 00 00 00 00 00 00 00 00 ?? ?? ?? 00 00 00 00 00 00 00 00 00 00 ?? ?? 00 00 10 00 00 00 ?? 00 00 00 ?? ?? 00 00 ?? ?? 00 00 ?? ?? 00 00 ?? 00 00 00 ?? ?? 00 00 ?? 00 00 00 ?? ?? 00 00 ?? 00 00 00 ?? ?? 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 5B 81 EB E6 1D 40 00 83 7D 0C 01 75 11 55 E8 4F 01 00 00 E8 6A 01 00 00 5D E8 2C 00 00 00 8B B3 1A 1E 40 00 03 B3 FA 1D 40 00 8B 76 0C AD 0B C0 74 0D FF 75 10 FF 75 0C FF 75 08 FF D0 EB EE B8 01 00 00 00 5B 5E C9 C2 0C 00 55 6A 00 FF 93 20 21 40 00 89 83 FA 1D 40 00 6A 40 68 00 10 00 00 FF B3 02 1E 40 00 6A 00 FF 93 2C 21 40 00 89 83 06 1E 40 00 8B 83 F2 1D 40 00 03 83 FA 1D 40 00 50 FF B3 06 1E 40 00 50 E8 6D 01 00 00 5F}
	condition:
		$0
}
rule _CrypKey_v5__v6_
{
	meta:
		description = "CrypKey v5 - v6"
	strings:
		$0 = {E8 ?? ?? ?? ?? 58 83 E8 05 50 5F 57 8B F7 81 EF ?? ?? ?? ?? 83 C6 39 BA ?? ?? ?? ?? 8B DF B9 0B ?? ?? ?? 8B 06}
	condition:
		$0 at entrypoint
}
rule _PPCPROTECT_11X__Alexey_Gorchakov_
{
	meta:
		description = "PPC-PROTECT 1.1X -> Alexey Gorchakov"
	strings:
		$0 = {FF 5F 2D E9 20 00 9F E5 00 00 90 E5 18 00 8F E5 18 00 9F E5 00 00 90 E5 10 00 8F E5 01 00 A0 E3 00 00 00 EB 02 00 00 EA 04 F0 1F E5}
	condition:
		$0 at entrypoint
}
rule _PseudoSigner_02_Yodas_Protector_102__Anorganix_
{
	meta:
		description = "PseudoSigner 0.2 [Yoda's Protector 1.02] --> Anorganix"
	strings:
		$0 = {E8 03 00 00 00 EB 01 90 90}
	condition:
		$0 at entrypoint
}
rule _PoPa_001_Packer_on_Pascal__bagie_
{
	meta:
		description = "PoPa 0.01 (Packer on Pascal) -> bagie"
	strings:
		$0 = {55 8B EC 83 C4 EC 53 56 57 33 C0 89 45 EC B8 A4 3E 00 10 E8 30 F6 FF FF 33 C0 55 68 BE 40 00 10 ?? ?? ?? ?? 89 20 6A 00 68 80 00 00 00 6A 03 6A 00 6A 01 68 00 00 00 80 8D 55 EC 33 C0 E8 62 E7 FF FF 8B 45 EC E8 32 F2 FF FF 50 E8 B4 F6 FF FF A3 64 66 00 10 33 D2 55 68 93 40 00 10 64 FF 32 64 89 22 83 3D 64 66 00 10 FF 0F 84 3A 01 00 00 6A 00 6A 00 6A 00 A1 64 66 00 10 50 E8 9B F6 FF FF 83 E8 10 50 A1 64 66 00 10 50 E8 BC F6 FF FF 6A 00 68 80 66 00 10 6A 10 68 68 66 00 10 A1 64 66 00 10 50 E8 8B F6 FF FF}
	condition:
		$0 at entrypoint
}
rule _The_Guard_Library_
{
	meta:
		description = "The Guard Library"
	strings:
		$0 = {50 E8 ?? ?? ?? ?? 58 25 ?? F0 FF FF 8B C8 83 C1 60 51 83 C0 40 83 EA 06 52 FF 20 9D C3}
	condition:
		$0 at entrypoint
}
rule _EXECryptor_v151x_
{
	meta:
		description = "EXECryptor v1.5.1.x"
	strings:
		$0 = {E8 24 ?? ?? ?? 8B 4C 24 0C C7 01 17 ?? 01 ?? C7 81 B8 ?? ?? ?? ?? ?? ?? ?? 31 C0 89 41 14 89 41 18 80 A1 C1 ?? ?? ?? FE C3 31 C0 64 FF 30 64 89 20 CC C3}
	condition:
		$0 at entrypoint
}
rule _PE_Lock_NT_v203_
{
	meta:
		description = "PE Lock NT v2.03"
	strings:
		$0 = {EB 02 C7 85 1E EB 03 CD 20 C7 9C EB 02 69 B1 60 EB 02 EB 01}
	condition:
		$0 at entrypoint
}
rule _Macromedia_Windows_Flash_ProjectorPlayer_v40_
{
	meta:
		description = "Macromedia Windows Flash Projector/Player v4.0"
	strings:
		$0 = {83 EC 44 56 FF 15 24 41 43 00 8B F0 8A 06 3C 22 75 1C 8A 46 01 46 3C 22 74 0C 84 C0 74 08 8A 46 01 46 3C 22 75 F4 80 3E 22 75 0F 46 EB 0C}
	condition:
		$0 at entrypoint
}
rule _PCGuard_v303d_v305d_
{
	meta:
		description = "PC-Guard v3.03d, v3.05d"
	strings:
		$0 = {55 50 E8 ?? ?? ?? ?? 5D EB 01 E3 60 E8 03 ?? ?? ?? D2 EB 0B 58 EB 01 48 40 EB 01}
	condition:
		$0 at entrypoint
}
rule _XJ__XPAL__LiNSoN_
{
	meta:
		description = "XJ / XPAL -> LiNSoN"
	strings:
		$0 = {55 8B EC 6A FF 68 ?? ?? 40 00 68 ?? ?? 40 00 64 A1 00 00 00 00 50 64 89 25 00 00 00 00 83 EC 44 53 56 57 66 9C}
	condition:
		$0 at entrypoint
}
rule _Reg2Exe_222223__by_Jan_Vorel_
{
	meta:
		description = "Reg2Exe 2.22/2.23 - by Jan Vorel"
	strings:
		$0 = {6A 00 E8 2F 1E 00 00 A3 C4 35 40 00 E8 2B 1E 00 00 6A 0A 50 6A 00 FF 35 C4 35 40 00 E8 07 00 00 00 50 E8 1B 1E 00 00 CC 68 48 00 00 00 68 00 00 00 00 68 C8 35 40 00 E8 76 16 00 00 83 C4 0C 8B 44 24 04 A3 CC 35 40 00 68 00 00 00 00 68 A0 0F 00 00 68 00 00 00 00 E8 EC 1D 00 00 A3 C8 35 40 00 E8 62 1D 00 00 E8 92 1A 00 00 E8 80 16 00 00 E8 13 14 00 00 68 01 00 00 00 68 08 36 40 00 68 00 00 00 00 8B 15 08 36 40 00 E8 71 3F 00 00 B8 00 00 10 00 BB 01 00 00 00 E8 82 3F 00 00 FF 35 48 31 40 00 B8 00 01 00 00 E8 0D 13 00 00 8D 0D EC 35 40 00 5A E8 F2 13 00 00 68 00 01 00 00 FF 35 EC 35 40 00 E8 84 1D 00 00 A3 F4 35 40 00 FF 35 48 31 40 00 FF 35 F4 35 40 00 FF 35 EC 35 40 00 E8}
	condition:
		$0 at entrypoint
}
rule _IProtect_10_Fxlibdll_mode__by_FuXdas_
{
	meta:
		description = "IProtect 1.0 (Fxlib.dll mode) - by FuXdas"
	strings:
		$0 = {EB 33 2E 46 55 58 4C 6F 61 64 4C 69 62 72 61 72 79 41 00 46 78 4C 69 62 2E 64 6C 6C 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ?? ?? ?? 00 60 E8 00 00 00 00 5D 81 ED 71 10 40 00 FF 74 24 20 E8 40 00 00 00 0B C0 74 2F 89 85 63 10 40 00 8D 85 3C 10 40 00 50 FF B5 63 10 40 00 E8 92 00 00 00 0B C0 74 13 89 85 5F 10 40 00 8D 85 49 10 40 00 50 FF 95 5F 10 40 00 8B 85 67 10 40 00 89 44 24 1C 61 FF E0 8B 7C 24 04 8D 85 00 10 40 00 50 64 FF 35 00 00 00 00 8D 85 53 10 40 00 89 20 89 68 04 8D 9D 0A 11 40 00 89 58 08 64 89 25 00 00 00 00 81 E7 00 00 FF FF 66 81 3F 4D 5A 75 0F 8B F7 03 76 3C 81 3E 50 45 00 00 75 02 EB 17 81 EF 00 00 01 00 81 FF 00 00 00 70 73 07 BF 00 00 F7 BF EB 02 EB D3 97 64 8F 05 00 00 00 00 83 C4 04 C2 04 00 8D 85 00 10 40 00 50 64 FF 35 00 00 00 00 8D 85 53 10 40 00 89 20 89 68 04 8D 9D 0A 11 40 00 89 58 08 64 89 25 00 00 00 00 8B 74 24 0C 66 81 3E 4D 5A 74 05 E9 8A 00 00 00 03 76 3C 81 3E 50 45 00 00 74 02 EB 7D 8B 7C 24 10 B9 96 00 00 00 32 C0 F2 AE 8B CF 2B 4C 24 10 8B 56 78 03 54 24 0C 8B 5A 20 03 5C 24 0C 33 C0 8B 3B 03 7C 24 0C 8B 74 24 10 51 F3 A6 75 05 83 C4 04 EB 0A 59 83 C3 04 40 3B 42 18 75 E2 3B 42 18 75 02 EB 35 8B 72 24 03 74 24 0C 52 BB 02 00 00 00 33 D2 F7 E3 5A 03 C6 33 C9 66 8B 08 8B 7A 1C 33 D2 BB 04 00 00 00 8B C1 F7 E3 03 44 24 0C 03 C7 8B 00 03 44 24 0C EB 02 33 C0 64 8F 05 00 00 00 00 83 C4 04 C2 08 00 E8 FA FD FF FF}
	condition:
		$0 at entrypoint
}
rule _Microsoft_Visual_Cpp_V80_Debug_
{
	meta:
		description = "Microsoft Visual C++ V8.0 (Debug)"
	strings:
		$0 = {E9 ?? ?? ?? ?? E9 ?? ?? ?? ?? E9 ?? ?? ?? ?? E9 ?? ?? ?? ?? E9 ?? ?? ?? ?? E9 ?? ?? ?? ?? E9 ?? ?? ?? ?? E9 ?? ?? ?? ?? E9 ?? ?? ?? ?? E9 ?? ?? ?? ?? E9 ?? ?? ?? ?? E9 ?? ?? ?? ?? E9 ?? ?? ?? ?? E9 ?? ?? ?? ?? E9 ?? ?? ?? ?? E9 ?? ?? ?? ?? E9 ?? ?? ?? ?? E9 ?? ?? ?? ?? E9 ?? ?? ?? ?? E9 ?? ?? ?? ?? E9}
	condition:
		$0 at entrypoint
}
rule _MS_Visual_Cpp_v8_DLL_hsmall_sig2_
{
	meta:
		description = "MS Visual C++ v.8 DLL (h-small sig2)"
	strings:
		$0 = {8B FF 55 8B EC 53 8B 5D 08 56 8B 75 0C 85 F6 57 8B 7D 10 0F 84 ?? ?? 00 00 83 FE 01}
	condition:
		$0 at entrypoint
}
rule _Armadillo_v172__v173_
{
	meta:
		description = "Armadillo v1.72 - v1.73"
	strings:
		$0 = {55 8B EC 6A FF 68 E8 C1 ?? ?? 68 F4 86 ?? ?? 64 A1 ?? ?? ?? ?? 50 64 89 25 ?? ?? ?? ?? 83 EC 58}
	condition:
		$0 at entrypoint
}
rule _PEX_v099_
{
	meta:
		description = "PEX v0.99"
	strings:
		$0 = {60 E8 01 ?? ?? ?? ?? 83 C4 04 E8 01 ?? ?? ?? ?? 5D 81}
	condition:
		$0 at entrypoint
}
rule _BlindSpot_10__s134k_
{
	meta:
		description = "BlindSpot 1.0 -> s134k"
	strings:
		$0 = {55 8B EC 81 EC 50 02 00 00 8D 85 B0 FE FF FF 53 56 A3 90 12 40 00 57 8D 85 B0 FD FF FF 68 00 01 00 00 33 F6 50 56 FF 15 24 10 40 00 56 68 80 00 00 00 6A 03 56 56 8D 85 B0 FD FF FF 68 00 00 00 80 50 FF 15 20 10 40 00 56 56 68 00 08 00 00 50 89 45 FC FF 15 1C 10 40 00 8D 45 F8 8B 1D 18 10 40 00 56 50 6A 34 FF 35 90 12 40 00 FF 75 FC FF D3 85 C0 0F 84 7F 01 00 00 39 75 F8 0F 84 76 01 00 00 A1 90 12 40 00 66 8B 40 30 66 3D 01 00 75 14 8D 85 E4 FE FF FF 68 04 01 00 00 50 FF 15 14 10 40 00 EB 2C 66 3D 02 00 75 14 8D 85 E4 FE FF FF 50 68 04 01 00 00 FF 15 10 10 40 00 EB 12 8D 85 E4 FE FF FF 68 04 01 00 00 50 FF 15 0C 10 40 00 8B 3D 08 10 40 00 8D 85 E4 FE FF FF 68 54 10 40 00 50}
	condition:
		$0
}
rule _PseudoSigner_01_FSG_10__Anorganix_
{
	meta:
		description = "PseudoSigner 0.1 [FSG 1.0] --> Anorganix"
	strings:
		$0 = {90 90 90 90 68 ?? ?? ?? ?? 67 64 FF 36 00 00 67 64 89 26 00 00 F1 90 90 90 90 BB D0 01 40 00 BF 00 10 40 00 BE 90 90 90 90 53 E8 0A 00 00 00 02 D2 75 05 8A 16 46 12 D2 C3 FC B2 80 A4 6A 02 5B E9}
	condition:
		$0 at entrypoint
}
rule _SDProtector_BasicPro_Edition_112__Randy_Li_
{
	meta:
		description = "SDProtector Basic/Pro Edition 1.12 -> Randy Li"
	strings:
		$0 = {55 8B EC 6A FF 68 1D 32 13 05 68 88 88 88 08 64 A1 00 00 00 00 50 64 89 25 00 00 00 00 58 64 A3 00 00 00 00 58 58 58 58 8B E8 E8 3B 00 00 00 E8 01 00 00 00 FF 58 05 53 00 00 00 51 8B 4C 24 10 89 81 B8 00 00 00 B8 55 01 00 00 89 41 20 33 C0 89 41 04 89 41 08 89 41 0C 89 41 10 59 C3 C3 C3 C3 C3 C3 C3 C3 C3 C3 C3 C3 C3 33 C0 64 FF 30 64 89 20 9C 80 4C 24 01 01 9D 90 90 C3 C3 C3 C3 C3 C3 C3 C3 C3 C3 C3 C3 64 8F 00 58 74 07 75 05 19 32 67 E8 E8 74 27 75 25 EB 00 EB FC 68 39 44 CD 00 59 9C 50 74 0F 75 0D E8 59 C2 04 00 55 8B EC E9 FA FF FF 0E E8 EF FF FF FF 56 57 53 78 03 79 01 E8 68 A2 AF 47 01 59 E8 01 00 00 00 FF 58 05 7B 03 00 00 03 C8 74 C4 75 C2 E8 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 E2}
	condition:
		$0 at entrypoint
}
rule _D1S1G_v11_beta__D1N_
{
	meta:
		description = "D1S1G v1.1 beta --> D1N"
	strings:
		$0 = {00 00 00 00 ?? ?? ?? ?? 00 00 00 00 00 00 01 00 0A 00 00 00 18 00 00 80 00 00 00 00 ?? ?? ?? ?? 00 00 00 00 02 00 00 00 88 00 00 80 38 00 00 80 96 00 00 80 50 00 00 80 00 00 00 00 ?? ?? ?? ?? 00 00 00 00 00 00 01 00 00 00 00 00 68 00 00 00 00 00 00 00 ?? ?? ?? ?? 00 00 00 00 00 00 01 00 00 00 00 00 78 00 00 00 B0 ?? ?? 00 10 00 00 00 00 00 00 00 00 00 00 00 C0 ?? ?? ?? ?? 00 00 00 00 00 00 00 00 00 00 00 06 00 44 00 56 00 43 00 4C 00 41 00 4C 00 0B 00 50 00 41 00 43 00 4B 00 41 00 47 00 45 00 49 00 4E 00 46 00 4F 00 00 00}
	condition:
		$0
}
rule _Obsidium_1338__Obsidium_Software_
{
	meta:
		description = "Obsidium 1.3.3.8 -> Obsidium Software"
	strings:
		$0 = {EB 04 ?? ?? ?? ?? E8 28 00 00 00 EB 01 ?? EB 01 ?? 8B 54 24 0C EB 04 ?? ?? ?? ?? 83 82 B8 00 00 00 ?? EB 04 ?? ?? ?? ?? 33 C0 EB 03 ?? ?? ?? C3 EB 01 ?? EB 01 ?? 64 67 FF 36 00 00 EB 03 ?? ?? ?? 64 67 89 26 00 00 EB 02 ?? ?? EB 01 ?? 50 EB 04 ?? ?? ?? ?? 33 C0 EB 02 ?? ?? 8B 00 EB 03 ?? ?? ?? C3 EB 03 ?? ?? ?? E9 FA 00 00 00 EB 03 ?? ?? ?? E8 D5 FF FF FF EB 02 ?? ?? EB 04 ?? ?? ?? ?? 58 EB 04 ?? ?? ?? ?? EB 02 ?? ?? 64 67 8F 06 00 00 EB 04 ?? ?? ?? ?? 83 C4 04 EB 04 ?? ?? ?? ?? E8 57 27 00 00}
	condition:
		$0 at entrypoint
}
rule _BeRoEXEPacker_v100_DLL_LZBRS__BeRo__Farbrausch_
{
	meta:
		description = "BeRoEXEPacker v1.00 DLL [LZBRS] -> BeRo / Farbrausch"
	strings:
		$0 = {83 7C 24 08 01 0F 85 ?? ?? ?? ?? 60 BE ?? ?? ?? ?? BF ?? ?? ?? ?? FC AD 8D 1C 07 B0 80 3B FB 73 3B E8 ?? ?? ?? ?? 72 03 A4 EB F2 E8 ?? ?? ?? ?? 8D 51 FF E8 ?? ?? ?? ?? 56 8B F7 2B F2 F3 A4 5E EB DB 02 C0 75 03 AC 12 C0 C3 33}
	condition:
		$0 at entrypoint
}
rule _Sexe_Crypter_11__by_santasdad_
{
	meta:
		description = "Sexe Crypter 1.1 - by santasdad"
	strings:
		$0 = {55 8B EC 83 C4 EC 53 56 57 33 C0 89 45 EC B8 D8 39 00 10 E8 30 FA FF FF 33 C0 55 68 D4 3A 00 10 64 FF 30 64 89 ?? ?? ?? ?? E4 3A 00 10 A1 00 57 00 10 50 E8 CC FA FF FF 8B D8 53 A1 00 57 00 10 50 E8 FE FA FF FF 8B F8 53 A1 00 57 00 10 50 E8 C8 FA FF FF 8B D8 53 E8 C8 FA FF FF 8B F0 85 F6 74 26 8B D7 4A B8 14 57 00 10 E8 AD F6 FF FF B8 14 57 00 10 E8 9B F6 FF FF 8B CF 8B D6 E8 DA FA FF FF 53 E8 84 FA FF FF 8D 4D EC BA F8 3A 00 10 A1 14 57 00 10 E8 0A FB FF FF 8B 55 EC B8 14 57 00 10 E8 65 F5 FF FF B8 14 57 00 10 E8 63 F6 FF FF E8 52 FC FF FF 33 C0 5A 59 59 64 89 10 68 DB 3A 00 10 8D 45 EC E8 ED F4 FF FF C3 E9 83 EF FF FF EB F0 5F 5E 5B E8 ED F3 FF FF 00 53 45 54 54 49 4E 47 53 00 00 00 00 FF FF FF FF 12 00 00 00 6B 75 74 68 37 36 67 62 62 67 36 37 34 76 38 38 67 79}
	condition:
		$0 at entrypoint
}
rule _UPXSCRAMBLER_306__OnToL_
{
	meta:
		description = "UPX-SCRAMBLER 3.06 -> ㎡nT畂L"
	strings:
		$0 = {E8 00 00 00 00 59 83 C1 07 51 C3 C3 BE ?? ?? ?? ?? 83 EC 04 89 34 24 B9 80 00 00 00 81 36 ?? ?? ?? ?? 50 B8 04 00 00 00 50 03 34 24 58 58 83 E9 03 E2 E9 EB D6}
	condition:
		$0 at entrypoint
}
rule _PEBundle_v02__v20x_
{
	meta:
		description = "PEBundle v0.2 - v2.0x"
	strings:
		$0 = {9C 60 E8 02 ?? ?? ?? 33 C0 8B C4 83 C0 04 93 8B E3 8B 5B FC 81 EB ?? ?? 40 ?? 87 DD 6A 04 68 ?? 10 ?? ?? 68 ?? 02 ?? ?? 6A ?? FF 95}
	condition:
		$0 at entrypoint
}
rule _Pohernah_101__by_Kas_
{
	meta:
		description = "Pohernah 1.0.1 - by Kas"
	strings:
		$0 = {60 E8 00 00 00 00 5D 81 ED F1 26 40 00 8B BD 18 28 40 00 8B 8D 20 28 40 00 B8 38 28 40 00 01 E8 80 30 05 83 F9 00 74 71 81 7F 1C AB 00 00 00 75 62 8B 57 0C 03 95 1C 28 40 00 31 C0 51 31 C9 66 B9 FA 00 66 83 F9 00 74 49 8B 57 0C 03 95 1C 28 40 00 8B 85 24 28 40 00 83 F8 02 75 06 81 C2 00 02 00 00 51 8B 4F 10 83 F8 02 75 06 81 E9 00 02 00 00 57 BF C8 00 00 00 89 CE E8 27 00 00 00 89 C1 5F B8 38 28 40 00 01 E8 E8 24 00 00 00 59 49 EB B1 59 83 C7 28 49 EB 8A 8B 85 14 28 40 00 89 44 24 1C 61 FF E0 56 57 4F F7 D7 21 FE 89 F0 5F 5E C3 60 83 F0 05 40 90 48 83 F0 05 89 C6 89 D7 60 E8 0B 00 00 00 61 83 C7 08 83 E9 07 E2 F1 61 C3 57 8B 1F 8B 4F 04 68 B9 79 37 9E 5A 42 89 D0 48 C1 E0 05 BF 20 00 00 00 4A 89 DD C1 E5 04 29 E9 8B 6E 08 31 DD 29 E9 89 DD C1 ED 05 31 C5 29 E9 2B 4E 0C 89 CD C1 E5 04 29 EB 8B 2E 31 CD 29 EB 89 CD C1 ED 05 31 C5 29 EB 2B 5E 04 29 D0 4F 75 C8 5F 89 1F 89 4F 04 C3}
	condition:
		$0 at entrypoint
}
rule _StarForce_30__StarForce_Technology_
{
	meta:
		description = "StarForce 3.0 -> StarForce Technology"
	strings:
		$0 = {68 ?? ?? ?? ?? FF 25 ?? ?? 63}
	condition:
		$0 at entrypoint
}
rule _HACKSTOP_v119_
{
	meta:
		description = "HACKSTOP v1.19"
	strings:
		$0 = {52 BA ?? ?? 5A EB ?? 9A ?? ?? ?? ?? 30 CD 21 ?? ?? ?? D6 02 ?? ?? CD 20 0E 1F 52 BA ?? ?? 5A EB}
	condition:
		$0 at entrypoint
}
rule _Armadillo_v260b2_
{
	meta:
		description = "Armadillo v2.60b2"
	strings:
		$0 = {55 8B EC 6A FF 68 90 ?? ?? ?? 68 24 ?? ?? ?? 64 A1 ?? ?? ?? ?? 50 64 89 25 ?? ?? ?? ?? 83 EC 58 53 56 57 89 65 E8 FF 15 60 ?? ?? ?? 33 D2 8A D4 89 15 3C}
	condition:
		$0 at entrypoint
}
rule _JAM_v211_
{
	meta:
		description = "JAM v2.11"
	strings:
		$0 = {50 06 16 07 BE ?? ?? 8B FE B9 ?? ?? FD FA F3 2E A5 FB 06 BD ?? ?? 55 CB}
	condition:
		$0 at entrypoint
}
rule _WWPACK_v305c4_Extr_Passwcheck_Vir_shield_
{
	meta:
		description = "WWPACK v3.05c4 (Extr. Passw.check. Vir. shield)"
	strings:
		$0 = {03 05 C0 1A B8 ?? ?? 8C CA 03 D0 8C C9 81 C1 ?? ?? 51 B9 ?? ?? 51 06 06 B1 ?? 51 8C D3}
	condition:
		$0 at entrypoint
}
rule _yodas_Protector_V1031__Ashkbiz_Danehkar_
{
	meta:
		description = "yoda's Protector V1.03.1 -> Ashkbiz Danehkar"
	strings:
		$0 = {E8 03 00 00 00 EB 01 ?? BB 55 00 00 00 E8 03 00 00 00 EB 01 ?? E8 8F 00 00 00 E8 03 00 00 00 EB 01 ?? E8 82 00 00 00 E8 03 00 00 00 EB 01 ?? E8 B8 00 00 00 E8 03 00 00 00 EB 01 ?? E8 AB 00 00 00 E8 03 00 00 00 EB 01 ?? 83 FB 55 E8 03 00 00 00 EB 01 ?? 75 2E E8 03 00 00 00 EB 01 ?? C3 60 E8 00 00 00 00 5D 81 ED 74 72 42 00 8B D5 81 C2 C3 72 42 00 52 E8 01 00 00 00 C3 C3 E8 03 00 00 00 EB 01 ?? E8 0E 00 00 00 E8 D1 FF FF FF C3 E8 03 00 00 00 EB 01 ?? 33 C0 64 FF 30 64 89 20 CC C3 E8 03 00 00 00 EB 01 ?? 33 C0 64 FF 30 64 89 20 4B CC C3 E8 03 00 00 00 EB 01 ?? 33 DB B9 3F A9 42 00 81 E9 6E 73 42 00 8B D5 81 C2 6E 73 42 00 8D 3A 8B F7 33 C0 E8 03 00 00 00 EB 01 ?? E8 17 00 00 00 90 90 90 E9 98 2E 00 00 33 C0 64 FF 30 64 89 20 43 CC C3}
	condition:
		$0 at entrypoint
}
rule _PECompact_v147__v150_
{
	meta:
		description = "PECompact v1.47 - v1.50"
	strings:
		$0 = {EB 06 68 ?? ?? ?? ?? C3 9C 60 E8 02 ?? ?? ?? 33 C0 8B C4 83 C0 04 93 8B E3 8B 5B FC 81 EB 0F A0 40 ?? 87 DD 8B 85 A6 A0 40 ?? 01 85 03 A0 40 ?? 66 C7 85 ?? A0 40 ?? 90 90 01 85 9E A0 40 ?? BB 5B 12}
	condition:
		$0 at entrypoint
}
rule _CPAV_
{
	meta:
		description = "CPAV"
	strings:
		$0 = {E8 ?? ?? 4D 5A B1 01 93 01 00 00 02}
	condition:
		$0 at entrypoint
}
rule _PC_PE_Encryptor_Alpha_preview_
{
	meta:
		description = "PC PE Encryptor Alpha preview"
	strings:
		$0 = {53 51 52 56 57 55 E8 00 00 00 00 5D 8B CD 81 ED 33 30 40 ?? 2B 8D EE 32 40 00 83 E9 0B 89 8D F2 32 40 ?? 80 BD D1 32 40 ?? 01 0F 84}
	condition:
		$0 at entrypoint
}
rule _EXE_Shield_V05__Smoke_
{
	meta:
		description = "EXE Shield V0.5 -> Smoke"
	strings:
		$0 = {E8 04 00 00 00 83 60 EB 0C 5D EB 05 45 55 EB 04 B8 EB F9 00 C3 E8 00 00 00 00 5D 81 ED BC 1A 40 00 EB 01 00 8D B5 46 1B 40 00 BA B3 0A 00 00 EB 01 00 8D 8D F9 25 40 00 8B 09 E8 14 00 00 00 83 EB 01 00 8B FE E8 00 00 00 00 58 83 C0 07 50 C3 00 EB 04 58 40}
		$1 = {E8 04 00 00 00 83 60 EB 0C 5D EB 05 45 55 EB 04 B8 EB F9 00 C3 E8 00 00 00 00 5D 81 ED BC 1A 40 00 EB 01 00 8D B5 46 1B 40 00 BA B3 0A 00 00 EB 01 00 8D 8D F9 25 40 00 8B 09 E8 14 00 00 00 83 EB 01 00 8B FE E8 00 00 00 00 58 83 C0 07 50 C3 00 EB 04 58 40 50 C3 8A 06 46 EB 01 00 D0 C8 E8 14 00 00 00 83 EB 01 00 2A C2 E8 00 00 00 00 5B 83 C3 07 53 C3 00 EB 04 5B 43 53 C3 EB 01 00 32 C2 E8 0B 00 00 00 00 32 C1 EB 01 00 C0 C0 02 EB 09 2A C2 5B EB 01 00 43 53 C3 88 07 EB 01 00 47 4A 75 B4 90}
	condition:
		$0 at entrypoint or $1 at entrypoint
}
rule _tElock_098_Special_Build__forgot__heXer_
{
	meta:
		description = "tElock 0.98 Special Build -> forgot & heXer"
	strings:
		$0 = {E9 99 D7 FF FF 00 00 00 ?? ?? ?? ?? AA ?? ?? 00 00 00 00 00 00 00 00 00 CA}
	condition:
		$0 at entrypoint
}
rule _Shrinker_33_
{
	meta:
		description = "Shrinker 3.3"
	strings:
		$0 = {00 00 55 8B EC 56 57 75 65 68 00 01 00 00 E8}
	condition:
		$0
}
rule _Ding_Boys_PElock_Phantasm_v10__v11_
{
	meta:
		description = "Ding Boy's PE-lock Phantasm v1.0 / v1.1"
	strings:
		$0 = {55 57 56 52 51 53 66 81 C3 EB 02 EB FC 66 81 C3 EB 02 EB FC}
	condition:
		$0 at entrypoint
}
rule _Armadillo_3X5X__Silicon_Realms_Toolworks_
{
	meta:
		description = "Armadillo 3.X-5.X -> Silicon Realms Toolworks"
	strings:
		$0 = {60 E8 00 00 00 00 5D 50 51 0F CA F7 D2 9C F7 D2 0F CA EB 0F B9 EB 0F B8 EB 07 B9 EB 0F 90 EB 08 FD EB 0B F2 EB F5 EB F6 F2 EB 08 FD EB E9 F3 EB E4 FC E9 9D 0F C9 8B CA F7 D1 59 58 50 51 0F CA F7 D2 9C F7 D2 0F CA EB 0F B9 EB 0F B8 EB 07 B9 EB 0F 90 EB 08 FD EB 0B F2 EB F5 EB F6 F2 EB 08 FD EB E9 F3 EB E4 FC E9 9D 0F C9 8B CA F7 D1 59 58 50 51 0F CA F7 D2 9C F7 D2 0F CA EB 0F B9 EB 0F B8 EB 07 B9 EB 0F 90 EB 08 FD EB 0B F2 EB F5 EB F6 F2 EB 08 FD EB E9 F3 EB E4 FC E9 9D 0F C9 8B CA F7 D1 59 58 60 33 C9 75 02 EB 15 EB 33}
	condition:
		$0 at entrypoint
}
rule _tElock_v070_
{
	meta:
		description = "tElock v0.70"
	strings:
		$0 = {60 E8 BD 10 00 00 C3 83 E2 00 F9 75 FA 70}
	condition:
		$0 at entrypoint
}
rule _WinUpack_v030_beta__By_Dwing_
{
	meta:
		description = "WinUpack v0.30 beta -> By Dwing"
	strings:
		$0 = {E9 ?? ?? ?? ?? 42 79 44 77 69 6E 67 40 00 00 00 50 45 00 00}
		$1 = {E9 ?? ?? ?? ?? 42 79 44 77 69 6E 67 40 00 00 00 50 45 00 00 4C 01 02}
	condition:
		$0 or $1
}
rule _FSG_v110_Eng__dulekxt__Borland_Delphi__Borland_Cpp_
{
	meta:
		description = "FSG v1.10 (Eng) -> dulek/xt -> (Borland Delphi / Borland C++)"
	strings:
		$0 = {2B C2 E8 02 00 00 00 95 4A 59 8D 3D 52 F1 2A E8 C1 C8 1C BE 2E ?? ?? 18 EB 02 AB A0 03 F7}
		$1 = {2B C2 E8 02 00 00 00 95 4A 59 8D 3D 52 F1 2A E8 C1 C8 1C BE 2E ?? ?? 18 EB 02 AB A0 03 F7 EB 02 CD 20 68 F4 00 00 00 0B C7 5B 03 CB 8A 06 8A 16 E8 02 00 00 00 8D 46 59 EB 01 A4 02 D3 EB 02 CD 20 02 D3 E8 02 00 00 00 57 AB 58 81 C2 AA 87 AC B9 0F BE C9 80}
		$2 = {EB 01 2E EB 02 A5 55 BB 80 ?? ?? 00 87 FE 8D 05 AA CE E0 63 EB 01 75 BA 5E CE E0 63 EB 02}
	condition:
		$0 at entrypoint or $1 at entrypoint or $2 at entrypoint
}
rule _Launcher_Generator_v103_
{
	meta:
		description = "Launcher Generator v1.03"
	strings:
		$0 = {68 00 20 40 00 68 10 20 40 00 6A 00 6A 00 6A 20 6A 00 6A 00 6A 00 68 F0 22 40 00 6A 00 E8 93 00 00 00 85 C0 0F 84 7E 00 00 00 B8 00 00 00 00 3B 05 68 20 40 00 74 13 6A ?? 68 60 23 40 00 68 20 23 40 00 6A 00 E8 83 00 00 00 A1 58 20 40 00 3B 05 6C 20 40 00}
	condition:
		$0
}
rule _SDProtector_Pro_Edition_116__Randy_Li_
{
	meta:
		description = "SDProtector Pro Edition 1.16 -> Randy Li"
	strings:
		$0 = {55 8B EC 6A FF 68 1D 32 13 05 68 88 88 88 08 64 A1 00 00 00 00 50 64 89 25 00 00 00 00 58 64 A3 00 00 00 00 58 58 58 58 8B E8 E8 3B 00 00 00 E8 01 00 00 00 FF 58 05 53 00 00 00 51 8B 4C 24 10 89 81 B8 00 00 00 B8 55 01 00 00 89 41 18 33 C0 89 41 04 89 41}
		$1 = {55 8B EC 6A FF 68 1D 32 13 05 68 88 88 88 08 64 A1 00 00 00 00 50 64 89 25 00 00 00 00 58 64 A3 00 00 00 00 58 58 58 58 8B E8 E8 3B 00 00 00 E8 01 00 00 00 FF 58 05 53 00 00 00 51 8B 4C 24 10 89 81 B8 00 00 00 B8 55 01 00 00 89 41 18 33 C0 89 41 04 89 41 08 89 41 0C 89 41 10 59 C3 C3 C3 C3 C3 C3 C3 C3 C3 C3 C3 C3 C3 33 C0 64 FF 30 64 89 20 9C 80 4C 24 01 01 9D 90 90 C3 C3 C3 C3 C3 C3 C3 C3 C3 C3 C3 C3 64 8F 00 58 74 07 75 05 19 32 67 E8 E8 74 27 75 25 EB 00 EB FC 68 39 44 CD 00 59 9C 50 74 0F 75 0D E8 59 C2 04 00 55 8B EC E9 FA FF FF 0E E8 EF FF FF FF 56 57 53 78 03 79 01 E8 68 A2 AF 47 01 59 E8 01 00 00 00 FF 58 05 93 03 00 00 03 C8 74 C4 75 C2 E8}
	condition:
		$0 at entrypoint or $1 at entrypoint
}
rule _Vcasm_Protector_V1X__vcasm_
{
	meta:
		description = "Vcasm Protector V1.X -> vcasm"
	strings:
		$0 = {EB ?? 5B 56 50 72 6F 74 65 63 74 5D}
	condition:
		$0 at entrypoint
}
rule _CExe_v10a_
{
	meta:
		description = "CExe v1.0a"
	strings:
		$0 = {55 8B EC 81 EC 0C 02 ?? ?? 56 BE 04 01 ?? ?? 8D 85 F8 FE FF FF 56 50 6A ?? FF 15 54 10 40 ?? 8A 8D F8 FE FF FF 33 D2 84 C9 8D 85 F8 FE FF FF 74 16}
	condition:
		$0 at entrypoint
}
rule _EYouDiDai_YueHeiFengGao_
{
	meta:
		description = "E.You.Di.Dai-> YueHeiFengGao"
	strings:
		$0 = {55 8B EC B8 ?? ?? ?? ?? E8 ?? ?? ?? ?? 53 56 57 0F 31 8B D8 0F 31 8B D0 2B D3 C1 EA 10 B8 ?? ?? ?? ?? 0F 6E C0 B8 ?? ?? ?? ?? 0F 6E C8 0F F5 C1 0F 7E C0 0F 77 03 C2 ?? ?? ?? ?? ?? FF E0}
	condition:
		$0 at entrypoint
}
rule _UPX_290_LZMA__Markus_Oberhumer_Laszlo_Molnar__John_Reiser_
{
	meta:
		description = "UPX 2.90 [LZMA] -> Markus Oberhumer, Laszlo Molnar & John Reiser"
	strings:
		$0 = {60 BE ?? ?? ?? ?? 8D BE ?? ?? ?? ?? 57 83 CD FF 89 E5 8D 9C 24 ?? ?? ?? ?? 31 C0 50 39 DC 75 FB 46 46 53 68 ?? ?? ?? ?? 57 83 C3 04 53 68 ?? ?? ?? ?? 56 83 C3 04 53 50 C7 03 ?? ?? ?? ?? 90 90}
		$1 = {60 BE ?? ?? ?? ?? 8D BE ?? ?? ?? ?? 57 83 CD FF EB 10 90 90 90 90 90 90 8A 06 46 88 07 47 01 DB 75 07 8B 1E 83 EE FC 11 DB 72 ED B8 01 00 00 00 01 DB 75 07 8B 1E 83 EE FC 11 DB 11 C0 01 DB}
	condition:
		$0 at entrypoint or $1 at entrypoint
}
rule _Armadillo_v183_
{
	meta:
		description = "Armadillo v1.83"
	strings:
		$0 = {55 8B EC 6A FF 68 E0 C1 40 00 68 64 84 40 00 64 A1 00 00 00 00 50 64 89 25 00 00 00 00 83 EC 58}
	condition:
		$0 at entrypoint
}
rule _PKLITE32_v11_
{
	meta:
		description = "PKLITE32 v1.1"
	strings:
		$0 = {55 8B EC A1 ?? ?? ?? ?? 85 C0 74 09 B8 01 00 00 00 5D C2 0C 00 8B 45 0C 57 56 53 8B 5D 10}
		$1 = {55 8B EC A1 ?? ?? ?? ?? 85 C0 74 09 B8 01 ?? ?? ?? 5D C2 0C ?? 8B 45 0C 57 56 53 8B 5D 10}
		$2 = {68 ?? ?? ?? ?? 68 ?? ?? ?? ?? 68 00 00 00 00 E8}
		$3 = {68 ?? ?? ?? ?? 68 ?? ?? ?? ?? B8 ?? ?? ?? ?? 2B 44 24 0C 50}
		$4 = {50 4B 4C 49 54 45 33 32 20 43 6F 70 79 72 69 67 68 74 20 31}
	condition:
		$0 at entrypoint or $1 or $2 at entrypoint or $3 at entrypoint or $4 at entrypoint
}
rule _VcasmProtector_11__12__vcasm_
{
	meta:
		description = "Vcasm-Protector 1.1 - 1.2 -> vcasm"
	strings:
		$0 = {EB 0B 5B 56 50 72 6F 74 65 63 74 5D}
	condition:
		$0 at entrypoint
}
rule _TopSpeed_v301_1989_
{
	meta:
		description = "TopSpeed v3.01 1989"
	strings:
		$0 = {1E BA ?? ?? 8E DA 8B ?? ?? ?? 8B ?? ?? ?? FF ?? ?? ?? 50 53}
	condition:
		$0 at entrypoint
}
rule _Vx_Haryanto_
{
	meta:
		description = "Vx: Haryanto"
	strings:
		$0 = {81 EB 2A 01 8B 0F 1E 5B 03 CB 0E 51 B9 10 01 51 CB}
	condition:
		$0 at entrypoint
}
rule _Pelles_C_2x4x_DLL__Pelle_Orinius_
{
	meta:
		description = "Pelles C 2.x-4.x DLL -> Pelle Orinius"
	strings:
		$0 = {55 89 E5 53 56 57 8B 5D 0C 8B 75 10}
	condition:
		$0 at entrypoint
}
rule _Pelles_C_280_290_EXE_X86_CRTLIB_
{
	meta:
		description = "Pelles C 2.80 -2.90 EXE (X86 CRT-LIB)"
	strings:
		$0 = {55 89 E5 6A FF 68 ?? ?? ?? ?? 68 ?? ?? ?? ?? 64 FF 35 ?? ?? ?? ?? 64 89 25 ?? ?? ?? ?? 83 EC ?? 83 EC ?? 53 56 57 89 65 E8 68 00 00 00 ?? E8 ?? ?? ?? ?? 59 A3}
	condition:
		$0 at entrypoint
}
rule _PESpin_V11__cyberbob_
{
	meta:
		description = "PESpin V1.1 -> cyberbob"
	strings:
		$0 = {EB 01 68 60 E8 00 00 00 00 8B 1C 24 83 C3 12 81 2B E8 B1 06 00 FE 4B FD 82 2C 24 7D DE 46 00 0B E4 74 9E}
	condition:
		$0 at entrypoint
}
rule _CodeLock_vxx_
{
	meta:
		description = "Code-Lock vx.x"
	strings:
		$0 = {43 4F 44 45 2D 4C 4F 43 4B 2E 4F 43 58 00}
	condition:
		$0 at entrypoint
}
rule _RCryptor_v16b__v16c__Vaska_
{
	meta:
		description = "RCryptor v1.6b / v1.6c --> Vaska"
	strings:
		$0 = {8B C7 03 04 24 2B C7 80 38 50 0F 85 1B 8B 1F FF 68}
		$1 = {8B C7 03 04 24 2B C7 80 38 50 0F 85 1B 8B 1F FF 68 ?? ?? ?? ?? B8 ?? ?? ?? ?? 3D ?? ?? ?? ?? 74 06 80 30 ?? 40 EB F3}
	condition:
		$0 at entrypoint or $1 at entrypoint
}
rule _PKLITE32_11_
{
	meta:
		description = "PKLITE32 1.1"
	strings:
		$0 = {50 4B 4C 49 54 45 33 32 20 43 6F 70 79 72 69 67 68 74 20 31}
	condition:
		$0 at entrypoint
}
rule _624_Six_to_Four_v10_
{
	meta:
		description = "624 (Six to Four) v1.0"
	strings:
		$0 = {50 55 4C 50 83 ?? ?? FC BF ?? ?? BE ?? ?? B5 ?? 57 F3 A5 C3 33 ED}
	condition:
		$0 at entrypoint
}
rule _PseudoSigner_01_Macromedia_Flash_Projector_60__Anorganix_
{
	meta:
		description = "PseudoSigner 0.1 [Macromedia Flash Projector 6.0] --> Anorganix"
	strings:
		$0 = {90 90 90 90 68 ?? ?? ?? ?? 67 64 FF 36 00 00 67 64 89 26 00 00 F1 90 90 90 90 83 EC 44 56 FF 15 24 81 49 00 8B F0 8A 06 3C 22 75 1C 8A 46 01 46 3C 22 74 0C 84 C0 74 08 8A 46 01 46 3C 22 75 F4 80 3E 22 75 0F 46 EB 0C E9}
	condition:
		$0 at entrypoint
}
rule _Vx_SK_
{
	meta:
		description = "Vx: SK"
	strings:
		$0 = {CD 20 B8 03 00 CD 10 51 E8 00 00 5E 83 EE 09}
	condition:
		$0 at entrypoint
}
rule _RLPack_120_Basic_Edition_aPLib__Ap0x_
{
	meta:
		description = "RLPack 1.20 Basic Edition [aPLib] -> Ap0x"
	strings:
		$0 = {60 E8 00 00 00 00 8B 2C 24 83 C4 04 83 7C 24 28 01 75 0C 8B 44 24 24 89 85 92 05 00 00 EB 0C 8B 85 8E 05 00 00 89 85 92 05 00 00 8D B5 BA 05 00 00 8D 9D 41 04 00 00 33 FF E8 38 01 00 00 EB 1B 8B 85 92 05 00 00 FF 74 37 04 01 04 24 FF 34 37 01 04 24 FF D3 83 C4 08 83 C7 08 83 3C 37 00 75 DF 83 BD 9E 05 00 00 00 74 0E 83 BD A2 05 00 00 00 74 05 E8 D6 01 00 00}
	condition:
		$0 at entrypoint
}
rule _FSG_v10_
{
	meta:
		description = "FSG v1.0"
	strings:
		$0 = {BB D0 01 40 00 BF 00 10 40 00 BE ?? ?? ?? ?? 53 E8 0A 00 00 00 02 D2 75 05 8A 16 46 12 D2 C3 FC B2 80 A4 6A 02 5B}
	condition:
		$0 at entrypoint
}
rule _EncryptPE_22006710220061025__WFS_
{
	meta:
		description = "EncryptPE 2.2006.7.10-2.2006.10.25 -> WFS"
	strings:
		$0 = {60 9C 64 FF 35 00 00 00 00 E8 73 01 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 00 00 00 00 6B 65 72 6E 65 6C 33 32 2E 64 6C 6C 00 00 00 47 65 74 54 65 6D 70 50 61 74 68 41 00 00 00 43 72 65 61 74 65 46 69 6C 65 41 00 00 00 43 72 65 61 74 65 46 69 6C 65 4D 61 70 70 69 6E 67 41 00 00 00 4D 61 70 56 69 65 77 4F 66 46 69 6C 65 00 00 00 55 6E 6D 61 70 56 69 65 77 4F 66 46 69 6C 65 00 00 00 43 6C 6F 73 65 48 61 6E 64 6C 65 00 00 00 4C 6F 61 64 4C 69 62 72 61 72 79 41 00 00 00 47 65 74 50 72 6F 63 41 64 64 72 65 73 73 00 00 00 45 78 69 74 50 72 6F 63 65 73 73}
	condition:
		$0 at entrypoint
}
rule _AHTeam_EP_Protector_03_fake_ZCode_101__FEUERRADER_
{
	meta:
		description = "AHTeam EP Protector 0.3 (fake ZCode 1.01) -> FEUERRADER"
	strings:
		$0 = {90 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 90 FF E0 E9 12 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 E9 FB FF FF FF C3 68 00 00 00 00 64 FF 35}
	condition:
		$0 at entrypoint
}
rule _CrunchPE_v30xx_
{
	meta:
		description = "Crunch/PE v3.0.x.x"
	strings:
		$0 = {EB 10 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 55 E8 ?? ?? ?? ?? 5D 81 ED 18 ?? ?? ?? 8B C5 55 60 9C 2B 85 ?? ?? ?? ?? 89 85 ?? ?? ?? ?? FF 74}
	condition:
		$0 at entrypoint
}
rule _Virogens_PE_Shrinker_v014_
{
	meta:
		description = "Virogen`s PE Shrinker v0.14"
	strings:
		$0 = {9C 55 E8 ?? ?? ?? ?? 87 D5 5D 60 87 D5 8D ?? ?? ?? ?? ?? 8D ?? ?? ?? ?? ?? 57 56 AD 0B C0 74}
	condition:
		$0 at entrypoint
}
rule _ASProtect_v11_MTEc_
{
	meta:
		description = "ASProtect v1.1 MTEc"
	strings:
		$0 = {90 60 E8 1B ?? ?? ?? E9 FC}
	condition:
		$0 at entrypoint
}
rule _Vx_Eddie2100_
{
	meta:
		description = "Vx: Eddie.2100"
	strings:
		$0 = {E8 ?? ?? 4F 4F 0E E8 ?? ?? 47 47 1E FF ?? ?? CB E8 ?? ?? 84 C0 ?? ?? 50 53 56 57 1E 06 B4 51 CD 21 8E C3 ?? ?? ?? ?? ?? ?? ?? 8B F2 B4 2F CD 21 AC}
	condition:
		$0 at entrypoint
}
rule _Upack_v01x__v02x__Dwing_
{
	meta:
		description = "Upack v0.1x - v0.2x -> Dwing"
	strings:
		$0 = {BE 88 01 ?? ?? AD 8B F8 95}
	condition:
		$0 at entrypoint
}
rule _PseudoSigner_01_ExeSmasher__Anorganix_
{
	meta:
		description = "PseudoSigner 0.1 [ExeSmasher] --> Anorganix"
	strings:
		$0 = {9C FE 03 90 60 BE 90 90 41 90 8D BE 90 10 FF FF 57 83 CD FF EB 10 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 FE 0B E9}
	condition:
		$0 at entrypoint
}
rule _HACKSTOP_v110_v111_
{
	meta:
		description = "HACKSTOP v1.10, v1.11"
	strings:
		$0 = {B4 30 CD 21 86 E0 3D ?? ?? 73 ?? B4 2F CD 21 B0 ?? B4 4C CD 21 50 B8 ?? ?? 58 EB}
	condition:
		$0 at entrypoint
}
rule _DevCpp_v5_
{
	meta:
		description = "Dev-C++ v5"
	strings:
		$0 = {55 89 E5 83 EC 14 6A ?? FF 15 ?? ?? ?? 00 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 00 00 00 00}
	condition:
		$0
}
rule _ANDpakk2_018__by_Dmitry_AND_Andreev_
{
	meta:
		description = "ANDpakk2 0.18 - by Dmitry AND Andreev"
	strings:
		$0 = {FC BE D4 00 40 00 BF 00 ?? ?? 00 57 83 CD FF 33 C9 F9 EB 05 A4 02 DB 75 05 8A 1E 46 12 DB 72 F4 33 C0 40 02 DB 75 05 8A 1E 46 12 DB 13 C0 02 DB 75 05 8A 1E 46 12 DB 72 0E 48 02 DB 75 05 8A 1E 46 12 DB 13 C0 EB DC 83 E8 03 72 0F C1 E0 08 AC 83 F0 FF 74 4D D1 F8 8B E8 EB 09 02 DB 75 05 8A 1E 46 12 DB 13 C9 02 DB 75 05 8A 1E 46 12 DB 13 C9 75 1A 41 02 DB 75 05 8A 1E 46 12 DB 13 C9 02 DB 75 05 8A 1E 46 12 DB 73 EA 83 C1 02 81 FD 00 FB FF FF 83 D1 01 56 8D 34 2F F3 A4 5E E9 73 FF FF FF C3}
	condition:
		$0 at entrypoint
}
rule _Stelth_PE_101__BGCorp_
{
	meta:
		description = "Ste@lth PE 1.01 -> BGCorp"
	strings:
		$0 = {BA ?? ?? ?? 00}
	condition:
		$0 at entrypoint
}
rule _LameCrypt__LaZaRus_
{
	meta:
		description = "LameCrypt -> LaZaRus"
	strings:
		$0 = {60 66 9C BB 00 ?? ?? 00 80 B3 00 10 40 00 90 4B 83 FB FF 75 F3 66 9D 61 B8 ?? ?? 40 00 FF E0}
	condition:
		$0 at entrypoint
}
rule _Thinstall_2736__Jitit_
{
	meta:
		description = "Thinstall 2.736 -> Jitit"
	strings:
		$0 = {9C 60 E8 00 00 00 00 58 BB F3 1C 00 00 2B C3 50 68 00 00 40 00 68 00 26 00 00 68 CC 00 00 00 E8 C1 FE FF FF E9 97 FF FF FF CC CC CC CC CC CC CC CC CC CC CC 55 8B EC 83 C4 F4 FC 53 57 56 8B 75 08 8B 7D 0C C7 45 FC 08 00 00 00 33 DB BA 00 00 00 80 43 33 C0 E8 19 01 00 00 73 0E 8B 4D F8 E8 27 01 00 00 02 45 F7 AA EB E9 E8 04 01 00 00 0F 82 96 00 00 00 E8 F9 00 00 00 73 5B B9 04 00 00 00 E8 05 01 00 00 48 74 DE 0F 89 C6 00 00 00 E8 DF 00 00 00 73 1B 55 BD 00 01 00 00 E8 DF 00 00 00 88 07 47 4D 75 F5 E8 C7 00 00 00 72 E9 5D EB A2 B9 01 00 00 00 E8 D0 00 00 00 83 C0 07 89 45 F8 C6 45 F7 00 83 F8 08 74 89 E8 B1 00 00 00 88 45 F7 E9 7C FF FF FF B9 07 00 00 00 E8 AA 00 00 00 50 33 C9 B1 02 E8 A0 00 00 00 8B C8 41 41 58 0B C0 74 04 8B D8 EB 5E 83 F9 02 74 6A 41 E8 88 00 00 00 89 45 FC E9 48 FF FF FF E8 87 00 00 00 49 E2 09 8B C3 E8 7D 00 00 00 EB 3A 49 8B C1 55 8B 4D FC 8B E8 33 C0 D3 E5 E8 5D 00 00 00 0B C5 5D 8B D8 E8 5F 00 00 00 3D 00 00 01 00 73 14 3D FF 37 00 00 73 0E 3D 7F 02 00 00 73 08 83 F8 7F 77 04 41 41 41 41 56 8B F7 2B F0 F3 A4 5E E9 F0 FE FF FF 33 C0 EB 05 8B C7 2B 45 0C 5E 5F 5B C9 C2 08 00}
	condition:
		$0 at entrypoint
}
rule _CreateInstall_v200335_
{
	meta:
		description = "CreateInstall v2003.3.5"
	strings:
		$0 = {81 EC 0C 04 00 00 53 56 57 55 68 60 50 40 00 6A 01 6A 00 FF 15 D8 80 40 00 8B F0 FF 15 D4 80 40 00 3D B7 00 00 00 75 0F 56 FF 15 B8 80 40 00 6A 02 FF 15 A4 80 40 00 33 DB E8 F2 FE FF FF 68 02 7F 00 00 89 1D 94 74 40 00 53 89 1D 98 74 40 00 FF 15 E4 80 40}
	condition:
		$0
}
rule _MSLRH_v032a_fake_Microsoft_Visual_Cpp__emadicius_
{
	meta:
		description = "[MSLRH] v0.32a (fake Microsoft Visual C++) -> emadicius"
	strings:
		$0 = {55 8B EC 6A FF 68 CA 37 41 00 68 06 38 41 00 64 A1 00 00 00 00 50 64 89 25 00 00 00 00 64 8F 05 00 00 00 00 83 C4 0C 5D EB 05 E8 EB 04 40 00 EB FA E8 0A 00 00 00 E8 EB 0C 00 00 E8 F6 FF FF FF E8 F2 FF FF FF 83 C4 08 74 04 75 02 EB 02 EB 01 81 50 E8 02 00 00 00 29 5A 58 6B C0 03 E8 02 00 00 00 29 5A 83 C4 04 58 74 04 75 02 EB 02 EB 01 81 0F 31 50 0F 31 E8 0A 00 00 00 E8 EB 0C 00 00 E8 F6 FF FF FF E8 F2 FF FF FF 83 C4 08 2B 04 24 74 04 75 02 EB 02 EB 01}
	condition:
		$0 at entrypoint
}
rule _APatch_GUI_v11_
{
	meta:
		description = "APatch GUI v1.1"
	strings:
		$0 = {52 31 C0 E8 FF FF FF FF}
	condition:
		$0 at entrypoint
}
rule _FSG_v110_Eng__dulekxt__Borland_Delphi_20_
{
	meta:
		description = "FSG v1.10 (Eng) -> dulek/xt -> (Borland Delphi 2.0)"
	strings:
		$0 = {EB 01 56 E8 02 00 00 00 B2 D9 59 68 80 ?? 41 00 E8 02 00 00 00 65 32 59 5E EB 02 CD 20 BB}
	condition:
		$0 at entrypoint
}
rule _VProtector_V11__vcasm_
{
	meta:
		description = "VProtector V1.1 -> vcasm"
	strings:
		$0 = {B8 1A ED 41 00 B9 EC EB 41 00 50 51 E8 74 00 00 00 E8 51 6A 00 00 58 83 E8 10 B9 B3 00 00 00}
	condition:
		$0 at entrypoint
}
rule _HACKSTOP_v111c_
{
	meta:
		description = "HACKSTOP v1.11c"
	strings:
		$0 = {B4 30 CD 21 86 E0 3D ?? ?? 73 ?? B4 ?? CD 21 B0 ?? B4 4C CD 21 53 BB ?? ?? 5B EB}
	condition:
		$0 at entrypoint
}
rule _PseudoSigner_02_NorthStar_PE_Shrinker_13__Anorganix_
{
	meta:
		description = "PseudoSigner 0.2 [NorthStar PE Shrinker 1.3] --> Anorganix"
	strings:
		$0 = {9C 60 E8 00 00 00 00 5D B8 B3 85 40 00 2D AC 85 40 00 2B E8 8D B5 00 00 00 00}
	condition:
		$0 at entrypoint
}
rule _RCryptor_15__Vaska_
{
	meta:
		description = "RCryptor 1.5 -> Vaska"
	strings:
		$0 = {83 2C 24 4F 68 ?? ?? ?? ?? FF 54 24 04 83 44 24 04 4F B8 ?? ?? ?? ?? 3D ?? ?? ?? ?? 74 06 80 30 ?? ?? EB F3 B8 ?? ?? ?? ?? 3D ?? ?? ?? ?? 74 06 80 30 ?? 40 EB F3}
	condition:
		$0 at entrypoint
}
rule _Vx_Involuntary1349_
{
	meta:
		description = "Vx: Involuntary.1349"
	strings:
		$0 = {BA ?? ?? B9 ?? ?? 8C DD ?? 8C C8 ?? 8E D8 8E C0 33 F6 8B FE FC ?? ?? AD ?? 33 C2 AB}
	condition:
		$0 at entrypoint
}
rule _AINEXE_v21_
{
	meta:
		description = "AINEXE v2.1"
	strings:
		$0 = {A1 ?? ?? 2D ?? ?? 8E D0 BC ?? ?? 8C D8 36 A3 ?? ?? 05 ?? ?? 36 A3 ?? ?? 2E A1 ?? ?? 8A D4 B1 04 D2 EA FE C9}
	condition:
		$0 at entrypoint
}
rule _MSLRH_V031__emadicius_
{
	meta:
		description = "[MSLRH] V0.31 -> emadicius"
	strings:
		$0 = {60 D1 CB 0F CA C1 CA E0 D1 CA 0F C8 EB 01 F1}
	condition:
		$0 at entrypoint
}
rule _CryptoLock_v202_Eng__Ryan_Thian_
{
	meta:
		description = "Crypto-Lock v2.02 (Eng) -> Ryan Thian"
	strings:
		$0 = {60 BE 15 90 40 00 8D BE EB 7F FF FF 57 83 CD FF EB 10 90 90 90 90 90 90 8A 06 46 88 07 47}
		$1 = {60 BE 15 90 40 00 8D BE EB 7F FF FF 57 83 CD FF EB 10 90 90 90 90 90 90 8A 06 46 88 07 47 01 DB 75 07 8B 1E 83 EE FC 11 DB 72 ED B8 01 00 00 00 01 DB 75 07 8B 1E 83 EE FC 11 DB 11 C0 01 DB 73 EF 75 09 8B 1E 83 EE FC 11 DB 73 E4 31 C9 83 E8 03 72 0D C1 E0}
		$2 = {60 BE ?? 90 40 00 8D BE ?? ?? FF FF 57 83 CD FF EB 10 90 90 90 90 90 90 8A 06 46 88 07 47 01 DB 75 07 8B 1E 83 EE FC 11 DB 72 ED B8 01 00 00 00 01 DB 75 07 8B 1E 83 EE FC 11 DB 11 C0 01 DB 73 EF 75 09 8B 1E 83 EE FC 11 DB 73 E4 31 C9 83 E8 03 72 0D C1 E0}
	condition:
		$0 at entrypoint or $1 at entrypoint or $2 at entrypoint
}
rule _MSLRH_v032a_fake_PEtite_21__emadicius_
{
	meta:
		description = "[MSLRH] v0.32a (fake PEtite 2.1) -> emadicius"
	strings:
		$0 = {B8 00 50 40 00 6A 00 68 BB 21 40 00 64 FF 35 00 00 00 00 64 89 25 00 00 00 00 66 9C 60 50 83 C4 04 61 66 9D 64 8F 05 00 00 00 00 83 C4 08 EB 05 E8 EB 04 40 00 EB FA E8 0A 00 00 00 E8 EB 0C 00 00 E8 F6 FF FF FF E8 F2 FF FF FF 83 C4 08 74 04 75 02 EB 02 EB 01 81 50 E8 02 00 00 00 29 5A 58 6B C0 03 E8 02 00 00 00 29 5A 83 C4 04 58 74 04 75 02 EB 02 EB 01 81 0F 31 50 0F 31 E8 0A 00 00 00 E8 EB 0C 00 00 E8 F6 FF FF FF E8 F2 FF FF FF}
	condition:
		$0 at entrypoint
}
rule _Nullsoft_Install_System_v20a0_
{
	meta:
		description = "Nullsoft Install System v2.0a0"
	strings:
		$0 = {83 EC 0C 53 56 57 FF 15 B4 10 40 00 05 E8 03 00 00 BE E0 E3 41 00 89 44 24 10 B3 20 FF 15 28 10 40 00 68 00 04 00 00 FF 15 14 11 40 00 50 56 FF 15 10 11 40 00 80 3D E0 E3 41 00 22 75 08 80 C3 02 BE E1 E3 41 00 8A 06 8B 3D 14 12 40 00 84 C0 74 19 3A C3 74}
	condition:
		$0
}
rule _PECrc32_088__ZhouJinYu_
{
	meta:
		description = "PECrc32 0.88 -> ZhouJinYu"
	strings:
		$0 = {60 E8 00 00 00 00 5D 81 ED B6 A4 45 00 8D BD B0 A4 45 00 81 EF 82 00 00 00}
	condition:
		$0 at entrypoint
}
rule _WWPACK_v305c4_Modified_
{
	meta:
		description = "WWPACK v3.05c4 (Modified)"
	strings:
		$0 = {B8 ?? ?? 8C CA 03 D0 8C C9 81 C1 ?? ?? 51 B9 ?? ?? 51 06 06 B1 ?? 51 8C D3}
	condition:
		$0 at entrypoint
}
rule _Private_Personal_Packer_PPP_103__ConquestOfTroycom_
{
	meta:
		description = "Private Personal Packer (PPP) 1.0.3 -> ConquestOfTroy.com"
	strings:
		$0 = {E8 19 00 00 00 90 90 E8 68 00 00 00 FF 35 2C 37 00 10 E8 ED 01 00 00 6A 00 E8 2E 04 00 00 E8 41 04 00 00 A3 74 37 00 10 6A 64 E8 5F 04 00 00 E8 30 04 00 00 A3 78 37 00 10 6A 64 E8 4E 04 00 00 E8 1F 04 00 00 A3 7C 37 00 10 A1 74 37 00 10 8B 1D 78 37 00 10 2B D8 8B 0D 7C 37 00 10 2B C8 83 FB 64 73 0F 81 F9 C8 00 00 00 73 07 6A 00 E8 D9 03 00 00 C3 6A 0A 6A 07 6A 00 E8 D3 03 00 00 A3 20 37 00 10 50 6A 00 E8 DE 03 00 00 A3 24 37 00 10 FF 35 20 37 00 10 6A 00 E8 EA 03 00 00 A3 30 37 00 10 FF 35 24 37 00 10 E8 C2 03 00 00 A3 28 37 00 10 8B 0D 30 37 00 10 8B 3D 28 37 00 10 EB 09 49 C0 04 39 55 80 34 39 24 0B C9}
	condition:
		$0 at entrypoint
}
rule _PELOCKnt_204_
{
	meta:
		description = "PELOCKnt 2.04"
	strings:
		$0 = {EB 03 CD 20 C7 1E EB 03 CD 20 EA 9C EB 02 EB 01 EB 01 EB 60}
	condition:
		$0 at entrypoint
}
rule _nMacro_recorder_10_
{
	meta:
		description = "nMacro recorder 1.0"
	strings:
		$0 = {5C 6E 6D 72 5F 74 65 6D 70 2E 6E 6D 72 00 00 00 72 62 00 00 58 C7 41 00 10 F8 41 00 11 01 00 00 00 00 00 00 46 E1 00 00 46 E1 00 00 35 00 00 00 F6 88 41 00}
	condition:
		$0
}
rule _RSCs_Process_Patcher_v151_
{
	meta:
		description = "R!SC's Process Patcher v1.5.1"
	strings:
		$0 = {68 00 20 40 00 E8 C3 01 00 00 80 38 00 74 0D 66 81 78 FE 22 20 75 02 EB 03 40 EB EE 8B F8 B8 04 60 40 00 68 C4 20 40 00 68 D4 20 40 00 6A 00 6A 00 6A 04 6A 00 6A 00 6A 00 57 50 E8 9F 01 00 00 85 C0 0F 84 39 01 00 00 BE 00 60 40 00 8B 06 A3 28 21 40 00 83}
	condition:
		$0
}
rule _PEArmor_V07X__hying_
{
	meta:
		description = "PE-Armor V0.7X -> hying"
	strings:
		$0 = {60 E8 00 00 00 00 5D 81 ED ?? ?? ?? ?? 8D B5 ?? ?? ?? ?? 55 56 81 C5 ?? ?? ?? ?? 55 C3}
	condition:
		$0 at entrypoint
}
rule _iPB_Protect_013__017__forgot_
{
	meta:
		description = "iPB Protect 0.1.3 - 0.1.7 -> forgot"
	strings:
		$0 = {55 8B EC 6A FF 68 4B 43 55 46 68 54 49 48 53 64 A1 00 00 00 00}
	condition:
		$0 at entrypoint
}
rule _y0das_Crypter_v10_
{
	meta:
		description = "y0da's Crypter v1.0"
	strings:
		$0 = {60 E8 00 00 00 00 5D 81 ED E7 1A 40 00 E8 A1 00 00 00 E8 D1 00 00 00 E8 85 01 00 00 F7 85}
	condition:
		$0 at entrypoint
}
rule _Trainer_Creation_Kit_v5_Trainer_
{
	meta:
		description = "Trainer Creation Kit v5 Trainer"
	strings:
		$0 = {6A 00 68 80 00 00 00 6A 02 6A 00 6A 00 68 00 00 00 40 68 25 45 40 00 E8 3C 02 00 00 50 6A 00 68 40 45 40 00 68 00 10 00 00 68 00 30 40 00 50 E8 54 02 00 00 58 50 E8 17 02 00 00 6A 00 E8 2E 02 00 00 A3 70 45 40 00 68 25 45 40 00 E8 2B 02 00 00 A3 30 45 40}
	condition:
		$0
}
rule _SoftSentry_v30_
{
	meta:
		description = "SoftSentry v3.0"
	strings:
		$0 = {55 8B EC 83 EC ?? 53 56 57 E9 B0 06}
	condition:
		$0 at entrypoint
}
rule _WWPACK_v302_v302a_v304_Relocations_pack_
{
	meta:
		description = "WWPACK v3.02, v3.02a, v3.04 (Relocations pack)"
	strings:
		$0 = {BE ?? ?? BF ?? ?? B9 ?? ?? 8C CD 81 ED ?? ?? 8B DD 81 EB ?? ?? 8B D3 FC FA 1E 8E DB 01 15 33 C0 2E AC}
	condition:
		$0 at entrypoint
}
rule _yodas_Protector_v10b__Ashkbiz_Danehkar_
{
	meta:
		description = "yoda's Protector v1.0b -> Ashkbiz Danehkar"
	strings:
		$0 = {55 8B EC 53 56 57 60 E8 00 00 00 00 5D 81 ED 4C 32 40 00 E8 03 00 00 00 EB 01 ?? B9 EA 47 40 00 81 E9 E9 32 40 00 8B D5 81 C2 E9 32 40 00 8D 3A 8B F7 33 C0 E8 04 00 00 00 90 EB 01 ?? E8 03 00 00 00 EB 01}
	condition:
		$0 at entrypoint
}
rule _Exe_Locker_10__IonIce_
{
	meta:
		description = "Exe Locker 1.0 -> IonIce"
	strings:
		$0 = {E8 00 00 00 00 60 8B 6C 24 20 81 ED 05 00 00 00}
	condition:
		$0 at entrypoint
}
rule _Pe123__v200644_
{
	meta:
		description = "Pe123  v2006.4.4"
	strings:
		$0 = {8B C0 EB 01 34 60 EB 01 2A 9C EB 02 EA C8 E8 0F 00 00 00 EB 03 3D 23 23 EB 01 4A EB 01 5B C3 8D 40 00 53 EB 01 6C EB 01 7E EB 01 8F E8 15 01 00 00 50 E8 67 04 00 00 EB 01 9A 8B D8 FF D3 5B C3 8B C0 E8 00 00 00 00 58 83 C0 05 C3 8B C0 55 8B EC 60 8B 4D 10}
	condition:
		$0 at entrypoint
}
rule _EncryptPE_1200331812003518__WFS_
{
	meta:
		description = "EncryptPE 1.2003.3.18-1.2003.5.18 -> WFS"
	strings:
		$0 = {60 9C 64 FF 35 00 00 00 00 E8 79 01 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 00 00 00 00 6B 65 72 6E 65 6C 33 32 2E 64 6C 6C 00 00 00 47 65 74 53 79 73 74 65 6D 44 69 72 65 63 74 6F 72 79 41 00 00 00 43 72 65 61 74 65 46 69 6C 65 41 00 00 00 43 72 65 61 74 65 46 69 6C 65 4D 61 70 70 69 6E 67 41 00 00 00 4D 61 70 56 69 65 77 4F 66 46 69 6C 65 00 00 00 55 6E 6D 61 70 56 69 65 77 4F 66 46 69 6C 65 00 00 00 43 6C 6F 73 65 48 61 6E 64 6C 65 00 00 00 4C 6F 61 64 4C 69 62 72 61 72 79 41 00 00 00 47 65 74 50 72 6F 63 41 64 64 72 65 73 73 00 00 00 45 78 69 74 50 72 6F 63 65 73 73}
	condition:
		$0 at entrypoint
}
rule _Obsidium_1334__Obsidium_Software_
{
	meta:
		description = "Obsidium 1.3.3.4 -> Obsidium Software"
	strings:
		$0 = {EB 02 ?? ?? E8 29 00 00 00 EB 03 ?? ?? ?? EB 02 ?? ?? 8B 54 24 0C EB 03 ?? ?? ?? 83 82 B8 00 00 00 25 EB 02 ?? ?? 33 C0 EB 02 ?? ?? C3 EB 03 ?? ?? ?? EB 01 ?? 64 67 FF 36 00 00 EB 02 ?? ?? 64 67 89 26 00 00 EB 02 ?? ?? EB 04 ?? ?? ?? ?? 50 EB 02 ?? ?? 33}
		$1 = {EB 02 ?? ?? E8 29 00 00 00 EB 03 ?? ?? ?? EB 02 ?? ?? 8B 54 24 0C EB 03 ?? ?? ?? 83 82 B8 00 00 00 25 EB 02 ?? ?? 33 C0 EB 02 ?? ?? C3 EB 03 ?? ?? ?? EB 01 ?? 64 67 FF 36 00 00 EB 02 ?? ?? 64 67 89 26 00 00 EB 02 ?? ?? EB 04 ?? ?? ?? ?? 50 EB 02 ?? ?? 33 C0 EB 01 ?? 8B 00 EB 04 ?? ?? ?? ?? C3 EB 03 ?? ?? ?? E9 FA 00 00 00 EB 02 ?? ?? E8 D5 FF FF FF EB 02 ?? ?? EB 03 ?? ?? ?? 58 EB 02 ?? ?? EB 03 ?? ?? ?? 64 67 8F 06 00 00 EB 03}
	condition:
		$0 at entrypoint or $1 at entrypoint
}
rule _Vx_Igor_
{
	meta:
		description = "Vx: Igor"
	strings:
		$0 = {1E B8 CD 7B CD 21 81 FB CD 7B 75 03 E9 87 00 33 DB 0E 1F 8C}
	condition:
		$0 at entrypoint
}
rule _Pack_Master_v10_
{
	meta:
		description = "Pack Master v1.0"
	strings:
		$0 = {60 E8 01 00 00 00 E8 83 C4 04 E8 01 00 00 00 E9 5D 81 ED D3 22 40 00 E8 04 02 00 00 E8 EB 08 EB 02 CD 20 FF 24 24 9A 66 BE 47 46}
		$1 = {60 E8 01 ?? ?? ?? E8 83 C4 04 E8 01 ?? ?? ?? E9 5D 81 ED D3 22 40 ?? E8 04 02 ?? ?? E8 EB 08 EB 02 CD 20 FF 24 24 9A 66 BE 47 46}
	condition:
		$0 at entrypoint or $1 at entrypoint
}
rule _Crinkler_V01V02__Rune_LHStubbe_and_Aske_Simon_Christensen_
{
	meta:
		description = "Crinkler V0.1-V0.2 -> Rune L.H.Stubbe and Aske Simon Christensen"
	strings:
		$0 = {B9 ?? ?? ?? ?? 01 C0 68 ?? ?? ?? ?? 6A 00 58 50 6A 00 5F 48 5D BB 03 00 00 00 BE ?? ?? ?? ?? E9}
	condition:
		$0 at entrypoint
}
rule _Mew_501__NorthFox__HCC_
{
	meta:
		description = "Mew 5.0.1 -> NorthFox / HCC"
	strings:
		$0 = {BE 5B 00 40 00 AD 91 AD 93 53 AD 96 56 5F AC C0 C0 ?? 04 ?? C0 C8 ?? AA E2 F4 C3 00 ?? ?? 00 ?? ?? ?? 00 00 10 40 00 4D 45 57 20 30 2E 31 20 62 79 20 4E 6F 72 74 68 66 6F 78 00 4D 45 57 20 30 2E 31 20 62 79 20 4E 6F 72 74 68 66 6F 78 00 4D 45 57 20 30 2E 31 20 62 79 20 4E 6F 72 74 68 66 6F 78 00 4D 45 57 20 30 2E 31 20 62 79 20 4E 6F 72 74 68 66 6F 78 00 4D}
	condition:
		$0 at entrypoint
}
rule _Petite_v_after_v14_
{
	meta:
		description = "Petite v?.? (after v1.4)"
	strings:
		$0 = {B8 ?? ?? ?? ?? 66 9C 60 50 8D ?? ?? ?? ?? ?? 68 ?? ?? ?? ?? 83}
	condition:
		$0 at entrypoint
}
rule _SVK_Protector_v13x_Eng__Pavol_Cerven_
{
	meta:
		description = "SVK Protector v1.3x (Eng) -> Pavol Cerven"
	strings:
		$0 = {60 E8 00 00 00 00 5D 81 ED 06 00 00 00 EB 05 B8 ?? ?? 42 00 64 A0 23 00 00 00 EB 03 C7 84 E8 84 C0 EB 03 C7 84 E9 75 67 B9 49 00 00 00 8D B5 C5 02 00 00 56 80 06 44 46 E2 FA 8B 8D C1 02 00 00 5E 55 51 6A 00 56 FF 95 0C 61 00 00 59 5D 40 85 C0 75 3C 80 3E}
	condition:
		$0 at entrypoint
}
rule _Obsidium_V1342__Obsidium_Software_
{
	meta:
		description = "Obsidium V1.3.4.2 -> Obsidium Software"
	strings:
		$0 = {EB 02 ?? ?? E8 26 00 00 00 EB 03 ?? ?? ?? EB 01 ?? 8B 54 24 0C EB 02 ?? ?? 83 82 B8 00 00 00 24 EB 03 ?? ?? ?? 33 C0 EB 01 ?? C3 EB 02 ?? ?? EB 02 ?? ?? 64 67 FF 36 00 00 EB 03 ?? ?? ?? 64 67 89 26 00 00 EB 03 ?? ?? ?? EB 03 ?? ?? ?? 50 EB 04 ?? ?? ?? ?? 33 C0 EB 03 ?? ?? ?? 8B 00 EB 03 ?? ?? ?? C3 EB 03 ?? ?? ?? E9 FA 00 00 00 EB 03 ?? ?? ?? E8 D5 FF FF FF EB 01 ?? EB 03 ?? ?? ?? 58 EB 04 ?? ?? ?? ?? EB 04 ?? ?? ?? ?? 64 67 8F 06 00 00 EB 04 ?? ?? ?? ?? 83 C4 04 EB 01 ?? E8 C3 27 00 00}
	condition:
		$0 at entrypoint
}
rule _AHTeam_EP_Protector_03_fake_PESHiELD_2x__FEUERRADER_
{
	meta:
		description = "AHTeam EP Protector 0.3 (fake PESHiELD 2.x) -> FEUERRADER"
	strings:
		$0 = {90 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 90 FF E0 60 E8 00 00 00 00 41 4E 41 4B 49 4E 5D 83 ED 06 EB 02 EA 04}
	condition:
		$0 at entrypoint
}
rule _PseudoSigner_01_LCC_Win32_1x__Anorganix_
{
	meta:
		description = "PseudoSigner 0.1 [LCC Win32 1.x] --> Anorganix"
	strings:
		$0 = {64 A1 01 00 00 00 55 89 E5 6A FF 68 ?? ?? ?? ?? 68 9A 10 40 90 50 E9}
	condition:
		$0 at entrypoint
}
rule _UPack_Alt_Stub__Dwing_
{
	meta:
		description = "UPack Alt Stub -> Dwing"
	strings:
		$0 = {60 E8 09 00 00 00 C3 F6 00 00 E9 06 02 00 00 33 C9 5E 87 0E E3 F4 2B F1 8B DE AD 2B D8 AD}
	condition:
		$0 at entrypoint
}
rule _PassLock_2000_v10_Eng__MoonlightSoftware_
{
	meta:
		description = "PassLock 2000 v1.0 (Eng) -> Moonlight-Software"
	strings:
		$0 = {55 8B EC 53 56 57 BB 00 50 40 00 66 2E F7 05 34 20 40 00 04 00 0F 85 98 00 00 00 E8 1F 01 00 00 C7 43 60 01 00 00 00 8D 83 E4 01 00 00 50 FF 15 F0 61 40 00 83 EC 44 C7 04 24 44 00 00 00 C7 44 24 2C 00 00 00 00 54 FF 15 E8 61 40 00 B8 0A 00 00 00 F7 44 24}
	condition:
		$0 at entrypoint
}
rule _Crypter_31__SLESH_
{
	meta:
		description = "Crypter 3.1 -> SLESH"
	strings:
		$0 = {68 FF 64 24 F0 68 58 58 58 58 FF D4 50 8B 40 F2 05 B0 95 F6 95 0F 85 01 81 BB FF 68}
	condition:
		$0
}
rule _KGB_SFX_
{
	meta:
		description = "KGB SFX"
	strings:
		$0 = {60 BE 00 A0 46 00 8D BE 00 70 F9 FF 57 83 CD FF EB 10 90 90 90 90 90 90 8A 06 46 88 07 47 01 DB 75 07 8B 1E 83 EE FC 11 DB 72 ED B8 01 00 00 00 01 DB 75 07 8B 1E 83 EE FC 11 DB 11 C0 01 DB 73}
	condition:
		$0 at entrypoint
}
rule _NsPacK_V34V35__LiuXingPing_
{
	meta:
		description = "NsPacK V3.4-V3.5 -> LiuXingPing"
	strings:
		$0 = {9C 60 E8 00 00 00 00 5D 83 ED 07 8D 85 ?? ?? ?? ?? 80 38 01 0F 84}
	condition:
		$0 at entrypoint
}
rule _Excalibur_103__forgot_
{
	meta:
		description = "Excalibur 1.03 -> forgot"
	strings:
		$0 = {E9 00 00 00 00 60 E8 14 00 00 00 5D 81 ED 00 00 00 00}
	condition:
		$0 at entrypoint
}
rule _XCR_v013_
{
	meta:
		description = "XCR v0.13"
	strings:
		$0 = {93 71 08 ?? ?? ?? ?? ?? ?? ?? ?? 8B D8 78 E2 ?? ?? ?? ?? 9C 33 C3 ?? ?? ?? ?? 60 79 CE ?? ?? ?? ?? E8 01 ?? ?? ?? ?? 83 C4 04 E8 AB FF FF FF ?? ?? ?? ?? 2B E8 ?? ?? ?? ?? 03 C5 FF 30 ?? ?? ?? ?? C6 ?? EB}
	condition:
		$0 at entrypoint
}
rule _FSG_v120_Eng__dulekxt__Borland_Cpp_
{
	meta:
		description = "FSG v1.20 (Eng) -> dulek/xt -> (Borland C++)"
	strings:
		$0 = {C1 F0 07 EB 02 CD 20 BE 80 ?? ?? 00 1B C6 8D 1D F4 00 00 00 0F B6 06 EB 02 CD 20 8A 16 0F B6 C3 E8 01 00 00 00 DC 59 80 EA 37 EB 02 CD 20 2A D3 EB 02 CD 20 80 EA 73 1B CF 32 D3 C1 C8 0E 80 EA 23 0F B6 C9 02 D3 EB 01 B5 02 D3 EB 02 DB 5B 81 C2 F6 56 7B F6}
	condition:
		$0 at entrypoint
}
rule _RLPack_V119_aPlib_043__ap0x_
{
	meta:
		description = "RLPack V1.19 (aPlib 0.43) -> ap0x"
	strings:
		$0 = {60 E8 00 00 00 00 8B 2C 24 83 C4 04 83 7C 24 28 01 75 0C 8B 44 24 24 89 85 3C 04 00 00 EB 0C 8B 85 38 04 00 00 89 85 3C 04 00 00 8D B5 60 04 00 00 8D 9D EB 02 00 00 33 FF E8 52 01 00 00 EB 1B 8B 85 3C 04 00 00 FF 74 37 04 01 04 24 FF 34 37 01 04 24 FF D3 83 C4 08 83 C7 08 83 3C 37 00 75 DF 83 BD 48 04 00 00 00 74 0E 83 BD 4C 04 00 00 00 74 05 E8 B8 01 00 00 8D 74 37 04 53 6A 40 68 00 10 00 00 68 ?? ?? ?? ?? 6A 00 FF 95 D1 03 00 00 89 85 5C 04 00 00 5B FF B5 5C 04 00 00 56 FF D3 83 C4 08 8B B5 5C 04 00 00 8B C6 EB 01 40 80 38 01 75 FA 40 8B 38 03 BD 3C 04 00 00 83 C0 04 89 85 58 04 00 00 E9 94 00 00 00 56 FF 95 C9 03 00 00 85 C0 0F 84 B4 00 00 00 89 85 54 04 00 00 8B C6 EB 5B 8B 85 58 04 00 00 8B 00 A9 00 00 00 80 74 14 35 00 00 00 80 50 8B 85 58 04 00 00 C7 00 20 20 20 00 EB 06 FF B5 58 04 00 00 FF B5 54 04 00 00 FF 95 CD 03 00 00 85 C0 74 71 89 07 83 C7 04 8B 85 58 04 00 00 EB 01 40 80 38 00 75 FA 40 89 85 58 04 00 00 66 81 78 02 00 80 74 A5 80 38 00 75 A0 EB 01 46 80 3E 00 75 FA 46 40 8B 38 03 BD 3C 04 00 00 83 C0 04 89 85 58 04 00 00 80 3E 01 0F 85 63 FF FF FF 68 00 40 00 00 68 ?? ?? ?? ?? FF B5 5C 04 00 00 FF 95 D5 03 00 00 E8 3D 00 00 00 E8 24 01 00 00 61 E9 ?? ?? ?? ?? 61 C3}
	condition:
		$0 at entrypoint
}
rule _SVKProtector_v1051_
{
	meta:
		description = "SVK-Protector v1.051"
	strings:
		$0 = {60 EB 03 C7 84 E8 EB 03 C7 84 9A E8 00 00 00 00 5D 81 ED 10 00 00 00 EB 03 C7 84 E9 64 A0 23 00 00 00 EB}
	condition:
		$0 at entrypoint
}
rule _Vx_CIH_Version_12_TTIT__WIN95CIH__
{
	meta:
		description = "Vx: CIH Version 1.2 TTIT (! WIN95CIH !)"
	strings:
		$0 = {55 8D ?? ?? ?? 33 DB 64 87 03 E8 ?? ?? ?? ?? 5B 8D}
	condition:
		$0 at entrypoint
}
rule _PseudoSigner_01_32Lite_003__Anorganix_
{
	meta:
		description = "PseudoSigner 0.1 [32Lite 0.03] --> Anorganix"
	strings:
		$0 = {60 06 FC 1E 07 BE 90 90 90 90 6A 04 68 90 10 90 90 68 ?? ?? ?? ?? E9}
	condition:
		$0 at entrypoint
}
rule _AHPack_01__FEUERRADER_
{
	meta:
		description = "AHPack 0.1 -> FEUERRADER"
	strings:
		$0 = {60 68 54 ?? ?? 00 B8 48 ?? ?? 00 FF 10 68 B3 ?? ?? 00 50 B8 44 ?? ?? 00 FF 10 68 00}
	condition:
		$0 at entrypoint
}
rule _tElock_v071_
{
	meta:
		description = "tElock v0.71"
	strings:
		$0 = {60 E8 ED 10 00 00 C3 83}
	condition:
		$0 at entrypoint
}
rule _RLPack_v118_Basic_LZMA__Ap0x_
{
	meta:
		description = "RLPack v1.18 Basic [LZMA] -> Ap0x"
	strings:
		$0 = {60 E8 00 00 00 00 8B 2C 24 83 C4 04 8D B5 21 0B 00 00 8D 9D FF 02 00 00 33 FF E8 9F 01 00 00 6A 40 68 00 10 00 00 68 00 20 0C 00 6A 00 FF 95 AA 0A 00 00 89 85 F9 0A 00 00 EB 14 60 FF B5 F9 0A}
	condition:
		$0 at entrypoint
}
rule _eXPressor_v12__CGSoftLabs_
{
	meta:
		description = "eXPressor v1.2 -> CGSoftLabs"
	strings:
		$0 = {45 78 50 72 2D 76 2E 31 2E 32 2E}
		$1 = {55 8B EC 81 EC D4 01 00 00 53 56 57 EB 0C 45 78 50 72 2D 76 2E 31 2E 32 2E 2E B8 ?? ?? ?? ?? 2B 05 84 ?? ?? ?? A3 ?? ?? ?? ?? 83 3D ?? ?? ?? ?? 00 74 16 A1 ?? ?? ?? ?? 03 05 80 ?? ?? ?? 89 85 54 FE FF FF E9 ?? 07 00 00 C7 05 ?? ?? ?? ?? 01 00 00 00 68 04}
		$2 = {55 8B EC 81 EC D4 01 00 00 53 56 57 EB 0C 45 78 50 72 2D 76 2E 31 2E 32 2E 2E B8 ?? ?? ?? ?? 2B 05 84 ?? ?? ?? A3 ?? ?? ?? ?? 83 3D ?? ?? ?? ?? 00 74 16 A1 ?? ?? ?? ?? 03 05 80 ?? ?? ?? 89 85 54 FE FF FF E9 ?? 07 00 00 C7 05 ?? ?? ?? ?? 01 00 00 00 68 04 01 00 00 8D 85 F0 FE FF FF 50 6A 00 FF 15}
	condition:
		$0 or $1 at entrypoint or $2 at entrypoint
}
rule _Shrink_Wrap_v14_
{
	meta:
		description = "Shrink Wrap v1.4"
	strings:
		$0 = {58 60 8B E8 55 33 F6 68 48 01 ?? ?? E8 49 01 ?? ?? EB}
	condition:
		$0 at entrypoint
}
rule _ASPack_v2001__Alexey_Solodovnikov_
{
	meta:
		description = "ASPack v2.001 -> Alexey Solodovnikov"
	strings:
		$0 = {60 E8 72 05 00 00 EB 4C}
	condition:
		$0 at entrypoint
}
rule _PseudoSigner_02_CrunchPE_Heuristic__Anorganix_
{
	meta:
		description = "PseudoSigner 0.2 [Crunch/PE Heuristic] --> Anorganix"
	strings:
		$0 = {55 E8 0E 00 00 00 5D 83 ED 06 8B C5 55 60 89 AD ?? ?? ?? ?? 2B 85 00 00 00 00}
	condition:
		$0 at entrypoint
}
rule _kryptor_6_
{
	meta:
		description = "kryptor 6"
	strings:
		$0 = {E8 03 ?? ?? ?? E9 EB 68 58 33 D2 74 02 E9 E9 40 42 75 02}
	condition:
		$0 at entrypoint
}
rule _Vx_GRUNT4Family_
{
	meta:
		description = "Vx: GRUNT.4.Family"
	strings:
		$0 = {E8 1C 00 8D 9E 41 01 40 3E 8B 96 14 03 B9 EA 00 87 DB F7 D0 31 17 83 C3 02 E2 F7 C3}
	condition:
		$0 at entrypoint
}
rule _PcShare__v40___
{
	meta:
		description = "PcShare 文件捆绑器 v4.0 -> 无可非议"
	strings:
		$0 = {55 8B EC 6A FF 68 90 34 40 00 68 B6 28 40 00 64 A1}
	condition:
		$0 at entrypoint
}
rule _PseudoSigner_02_CDCops_II__Anorganix_
{
	meta:
		description = "PseudoSigner 0.2 [CD-Cops II] --> Anorganix"
	strings:
		$0 = {53 60 BD 90 90 90 90 8D 45 90 8D 5D 90 E8 00 00 00 00 8D 01}
	condition:
		$0 at entrypoint
}
rule _FakeNinja_v28__Spirit_
{
	meta:
		description = "FakeNinja v2.8 -> Spirit"
	strings:
		$0 = {BA ?? ?? ?? ?? FF E2 64 11 40 00 FF 35 84 11 40 00 E8 40}
	condition:
		$0
}
rule _ActiveMARKTM_R5311140__Trymedia_
{
	meta:
		description = "ActiveMARK[TM] R5.31.1140 -> Trymedia"
	strings:
		$0 = {79 11 7F AB 9A 4A 83 B5 C9 6B 1A 48 F9 27 B4 25}
	condition:
		$0 at entrypoint
}
rule _Vx_Number_One_
{
	meta:
		description = "Vx: Number One"
	strings:
		$0 = {F9 07 3C 53 6D 69 6C 65 3E E8}
	condition:
		$0 at entrypoint
}
rule _NTPacker_V2X__ErazerZ_
{
	meta:
		description = "NTPacker V2.X -> ErazerZ"
	strings:
		$0 = {4B 57 69 6E 64 6F 77 73 00 10 55 54 79 70 65 73 00 00 3F 75 6E 74 4D 61 69 6E 46 75 6E 63 74 69 6F 6E 73 00 00 47 75 6E 74 42 79 70 61 73 73 00 00 B7 61 50 4C 69 62 75 00 00 00}
	condition:
		$0
}
rule _UPack_v011__Dwing_
{
	meta:
		description = "UPack v0.11 -> Dwing"
	strings:
		$0 = {BE 48 01 40 00 AD 8B F8 95 A5 33 C0 33 C9 AB 48 AB F7 D8 B1 04 F3 AB C1 E0 0A B5 1C F3 AB AD 50 97 51 AD 87 F5 58 8D 54 86 5C FF D5 72 5A 2C 03 73 02 B0 00 3C 07 72 02 2C 03 50 0F B6 5F FF C1 E3 03 B3 00 8D 1C 5B 8D 9C 9E 0C 10 00 00 B0 01 67 E3 29 8B D7}
	condition:
		$0
}
rule _PECompact_v0971__v0976_
{
	meta:
		description = "PECompact v0.971 - v0.976"
	strings:
		$0 = {EB 06 68 C3 9C 60 E8 5D 55 5B 81 ED 8B 85 01 85 66 C7 85}
	condition:
		$0 at entrypoint
}
rule _CodeCrypt_v015b_
{
	meta:
		description = "CodeCrypt v0.15b"
	strings:
		$0 = {E9 31 03 00 00 EB 02 83 3D 58 EB 02 FF 1D 5B EB 02 0F C7 5F}
	condition:
		$0 at entrypoint
}
rule _ocBat2Exe_10__OC_
{
	meta:
		description = "ocBat2Exe 1.0 -> OC"
	strings:
		$0 = {55 8B EC B9 08 00 00 00 6A 00 6A 00 49 75 F9 53 56 57 B8 58 3C 40 00 E8 6C FA FF FF 33 C0 55 68 8A 3F 40 00 64 FF 30 64 89 20 6A 00 6A 00 6A 03 6A 00 6A 01 68 00 00 00 80 8D 55 EC 33 C0 E8 81 E9 FF FF 8B 45 EC E8 41 F6 FF FF 50 E8 F3 FA FF FF 8B F8 83 FF FF 0F 84 83 02 00 00 6A 02 6A 00 6A EE 57 E8 FC FA FF FF 6A 00 68 60 99 4F 00 6A 12 68 18 57 40 00 57 E8 E0 FA FF FF 83 3D 60 99 4F 00 12 0F 85 56 02 00 00 8D 45 E4 50 8D 45 E0 BA 18 57 40 00 B9 40 42 0F 00 E8 61 F4 FF FF 8B 45 E0 B9 12 00 00 00 BA 01 00 00 00 E8 3B F6 FF FF 8B 45 E4 8D 55 E8 E8 04 FB ?? ?? ?? ?? E8 B8 58 99 4F 00 E8 67 F3 FF FF 33 C0 A3 60 99 4F 00 8D 45 DC 50 B9 05 00 00 00 BA 01 00 00 00 A1 58 99 4F 00 E8 04 F6 FF FF 8B 45 DC BA A4 3F 40 00 E8 E3 F4 FF FF}
	condition:
		$0
}
rule _VProtector_10X__vcasm_
{
	meta:
		description = "VProtector 1.0X -> vcasm"
	strings:
		$0 = {55 8B EC 6A FF 68 ?? ?? ?? ?? 68 ?? ?? ?? ?? 64 A1 00 00 00 00 50 64 89 25 00 00 00 00 E8 03 00 00 00 C7 84 00 58 EB 01 E9 83 C0 07 50 C3 FF 35 E8 03 00 00 00 C7 84 00 58 EB 01 E9 83 C0 07 50 C3 FF 35 E8 07 00 00 00 C7 83 83 C0 13 EB 0B 58 EB 02 CD 20 83 C0 02 EB 01 E9 50 C3 E8 B9 04 00 00 00 E8 1F 00 00 00 EB FA E8 16 00 00 00 E9 EB F8 00 00 58 EB 09 0F 25 E8 F2 FF FF FF 0F B9 49 75 F1 EB 05 EB F9 EB F0 D6 EB 01 0F 31 F0 EB 0C 33 C8 EB 03 EB 09 0F 59 74 05 75 F8 51 EB F1 E8 16 00 00 00 8B 5C 24 0C 8B A3 C4 00 00 00 64 8F 05 00 00 00 00 83 C4 04 EB 14 64 FF 35 00 00 00 00 64 89 25 00 00 00 00 33 C9 99 F7 F1 E9 E8 05 00 00}
	condition:
		$0 at entrypoint
}
rule _FixupPak_v120_
{
	meta:
		description = "FixupPak v1.20"
	strings:
		$0 = {55 E8 00 00 00 00 5D 81 ED ?? ?? 00 00 BE 00 ?? 00 00 03 F5 BA 00 00 ?? ?? 2B D5 8B DD 33 C0 AC 3C 00 74 3D 3C 01 74 0E 3C 02 74 0E 3C 03 74 0D 03 D8 29 13 EB E7 66 AD EB F6 AD EB F3 AC 0F B6 C8 3C 00 74 06 3C 01 74 09 EB 0A 66 AD 0F B7 C8 EB 03 AD 8B C8}
	condition:
		$0 at entrypoint
}
rule _RLPack_V112V114_aPlib_043__ap0x_
{
	meta:
		description = "RLPack V1.12-V1.14 (aPlib 0.43) -> ap0x"
	strings:
		$0 = {60 E8 00 00 00 00 8B 2C 24 83 C4 04 8D B5 ?? ?? ?? ?? 8D 9D ?? ?? ?? ?? 33 FF EB 0F FF ?? ?? ?? FF ?? ?? ?? D3 83 C4 ?? 83 C7 ?? 83 3C 37 00 75 EB}
	condition:
		$0
}
rule _AHpack_01__FEUERRADER_
{
	meta:
		description = "AHpack 0.1 -> FEUERRADER"
	strings:
		$0 = {60 68 54 ?? ?? ?? B8 48 ?? ?? ?? FF 10 68 B3 ?? ?? ?? 50 B8 44 ?? ?? ?? FF 10 68 00 ?? ?? ?? 6A 40 FF D0 89 05 CA ?? ?? ?? 89 C7 BE 00 10 ?? ?? 60 FC B2 80 31 DB A4 B3 02 E8 6D 00 00 00 73 F6 31 C9 E8 64 00 00 00 73 1C 31 C0 E8 5B 00 00 00 73 23 B3 02 41}
	condition:
		$0 at entrypoint
}
rule _Pi_Cryptor_10__by_Scofield_
{
	meta:
		description = "Pi Cryptor 1.0 - by Scofield"
	strings:
		$0 = {55 8B EC 83 C4 EC 53 56 57 31 C0 89 45 EC B8 40 1E 06 00 E8 48 FA FF FF 33 C0 55 68 36 1F 06 00 64 FF 30 64 89 20 6A 00 68 80 00 00 00 6A 03 6A 00 6A 01 68 00 00 00 80 8D 55 EC 31 C0 E8 4E F4 FF FF 8B 45 EC E8 F6 F7 FF FF 50 E8 CC FA FF FF 8B D8 83 FB FF 74 4E 6A 00 53 E8 CD FA FF FF 8B F8 81 EF AC 26 00 00 6A 00 6A 00 68 AC 26 00 00 53 E8 DE FA FF FF 89 F8 E8 E3 F1 FF FF 89 C6 6A 00 68 28 31 06 00 57 56 53 E8 AE FA FF FF 53 E8 80 FA FF FF 89 FA 81 EA 72 01 00 00 8B C6 E8 55 FE FF FF 89 C6 89 F0 09 C0 74 05 E8 A8 FB FF FF 31 C0}
		$1 = {55 8B EC 83 C4 EC 53 56 57 31 C0 89 45 EC B8 40 1E 06 00 E8 48 FA FF FF 33 C0 55 68 36 1F 06 00 64 FF 30 64 89 20 6A 00 68 80 00 00 00 6A 03 6A 00 6A 01 68 00 00 00 80 8D 55 EC 31 C0 E8 4E F4 FF FF 8B 45 EC E8 F6 F7 FF FF 50 E8 CC FA FF FF 8B D8 83 FB FF 74 4E 6A 00 53 E8 CD FA FF FF 8B F8 81 EF AC 26 00 00 6A 00 6A 00 68 AC 26 00 00 53 E8 DE FA FF FF 89 F8 E8 E3 F1 FF FF 89 C6 6A 00 68 28 31 06 00 57 56 53 E8 AE FA FF FF 53 E8 80 FA FF FF 89 FA 81 EA 72 01 00 00 8B C6 E8 55 FE FF FF 89 C6 89 F0 09 C0 74 05 E8 A8 FB FF FF 31 C0 5A 59 59 64 89 10 68 3D 1F 06 00 8D 45 EC E8 C3 F6 FF FF C3}
		$2 = {89 55 F8 BB 01 00 00 00 8A 04 1F 24 0F 8B 55 FC 8A 14 32 80 E2 0F 32 C2 8A 14 1F 80 E2 F0 02 D0 88 14 1F 46 8D 45 F4 8B 55 FC E8 ?? ?? ?? ?? 8B 45 F4 E8 ?? ?? ?? ?? 3B F0 7E 05 BE 01 00 00 00 43 FF 4D F8 75 C2 ?? ?? ?? ?? 5A 59 59 64 89 10 68 ?? ?? ?? ?? 8D 45 F4 E8 ?? ?? ?? ?? C3 E9}
	condition:
		$0 or $1 at entrypoint or $2
}
rule _kkrunchy_V02X__Ryd_
{
	meta:
		description = "kkrunchy V0.2X -> Ryd"
	strings:
		$0 = {BD ?? ?? ?? ?? C7 45 ?? ?? ?? ?? ?? FF 4D 08 C6 45 0C 05 8D 7D 14 31 C0 B4 04 89 C1 F3 AB BF ?? ?? ?? ?? 57 BE ?? ?? ?? ?? 31 C9 41 FF 4D 0C 8D 9C 8D A0 00 00 00 FF D6}
	condition:
		$0 at entrypoint
}
rule _PseudoSigner_01_MEW_11_SE_10__Anorganix_
{
	meta:
		description = "PseudoSigner 0.1 [MEW 11 SE 1.0] --> Anorganix"
	strings:
		$0 = {E9 09 00 00 00 00 00 00 02 00 00 00 0C 90 E9}
	condition:
		$0 at entrypoint
}
rule _UPX_p_ECLiPSE_layer_
{
	meta:
		description = "UPX + ECLiPSE layer"
	strings:
		$0 = {B8 ?? ?? ?? ?? B9 ?? ?? ?? ?? 33 D2 EB 01 0F 56 EB 01 0F E8 03 00 00 00 EB 01 0F EB 01 0F 5E EB 01}
	condition:
		$0 at entrypoint
}
rule _ASProtect_v123_RC4_build_0807_exe__Alexey_Solodovnikov_
{
	meta:
		description = "ASProtect v1.23 RC4 build 08.07 (exe) -> Alexey Solodovnikov"
	strings:
		$0 = {90 60 E8 03 00 00 00 E9 EB 04 5D 45 55 C3 E8 01 00 00 00 EB 5D BB ED FF FF FF 03 DD 81 EB ?? ?? ?? ?? 80 7D 4D 01 75 0C 8B 74 24 28 83 FE 01 89 5D 4E 75 31 8D 45 53 50 53 FF B5 D5 09 00 00 8D 45 35 50 E9 82 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00}
	condition:
		$0
}
rule _Vpacker__ttui_
{
	meta:
		description = "Vpacker -> ttui"
	strings:
		$0 = {89 C6 C7 45 E0 01 00 00 00 F7 03 00 00 FF FF 75 18 0F B7 03 50 8B 45 D8 50 FF 55 F8 89 07 8B C3 E8 ?? FE FF FF 8B D8 EB 13 53 8B 45 D8 50 FF 55 F8 89 07 8B C3 E8 ?? FE FF FF 8B D8 83 C7 04 FF 45 E0 4E 75 C4 8B F3 83 3E 00 75 88 8B 45 E4 8B 40 10 03 45 DC 8B 55 14 83 C2 20 89 02 68 00 80 00 00 6A 00 8B 45 D4 50 FF 55 EC 8B 55 DC 8B 42 3C 03 45 DC 83 C0 04 8B D8 83 C3 14 8D 45 E0 50 6A 40 68 00 10 00 00 52 FF 55 E8 8D 43 60}
	condition:
		$0
}
rule _MSLRH_v032a_fake_PEBundle_20x__24x__emadicius_
{
	meta:
		description = "[MSLRH] v0.32a (fake PEBundle 2.0x - 2.4x) -> emadicius"
	strings:
		$0 = {9C 60 E8 02 00 00 00 33 C0 8B C4 83 C0 04 93 8B E3 8B 5B FC 81 EB 07 30 40 00 87 DD 83 BD 9C 38 40 00 01 61 9D EB 05 E8 EB 04 40 00 EB FA E8 0A 00 00 00 E8 EB 0C 00 00 E8 F6 FF FF FF E8 F2 FF FF FF 83 C4 08 74 04 75 02 EB 02 EB 01 81 50 E8 02 00 00 00 29 5A 58 6B C0 03 E8 02 00 00 00 29 5A 83 C4 04 58 74 04 75 02 EB 02 EB 01 81 0F 31 50 0F 31 E8 0A 00 00 00 E8 EB 0C 00 00 E8 F6 FF FF FF E8 F2 FF FF FF}
	condition:
		$0 at entrypoint
}
rule _Packman_v10__Brandon_LaCombe_
{
	meta:
		description = "Packman v1.0 -> Brandon LaCombe"
	strings:
		$0 = {60 E8 00 00 00 00 5B 8D 5B C6 01 1B 8B 13 8D 73 14 6A 08 59 01 16 AD 49 75 FA 8B E8 C6 06 E9 8B 43 0C 89 46 01 6A 04 68 00 10 00 00 FF 73 08 51 FF 55 08 8B}
	condition:
		$0 at entrypoint
}
rule _SimplePack_121build0909_Method2__bagie_
{
	meta:
		description = "SimplePack 1.21.build.09.09 (Method2) -> bagie"
	strings:
		$0 = {4D 5A 90 EB 01 00 52 E9 8A 01 00 00 50 45 00 00 4C 01 02 00 00 00 00 00 00 00 00 00 00 00 00 00 E0 00 0F 03 0B 01 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 0C 00 00 00 00 ?? ?? ?? 00 10 00 00 00 02 00 00 01 00 00 00 00 00 00 00 04 00 00 00 00 00 00 00}
	condition:
		$0
}
rule _Nullsoft_Install_System_v1xx_
{
	meta:
		description = "Nullsoft Install System v1.xx"
	strings:
		$0 = {55 8B EC 83 EC 2C 53 56 33 F6 57 56 89 75 DC 89 75 F4 BB A4 9E 40 00 FF 15 60 70 40 00 BF C0 B2 40 00 68 04 01 00 00 57 50 A3 AC B2 40 00 FF 15 4C 70 40 00 56 56 6A 03 56 6A 01 68 00 00 00 80 57 FF 15 9C 70 40 00 8B F8 83 FF FF 89 7D EC 0F 84 C3 00 00 00}
		$1 = {83 EC 0C 53 56 57 FF 15 20 71 40 00 05 E8 03 00 00 BE 60 FD 41 00 89 44 24 10 B3 20 FF 15 28 70 40 00 68 00 04 00 00 FF 15 28 71 40 00 50 56 FF 15 08 71 40 00 80 3D 60 FD 41 00 22 75 08 80 C3 02 BE 61 FD 41 00 8A 06 8B 3D F0 71 40 00 84 C0 74 0F 3A C3 74}
	condition:
		$0 at entrypoint or $1 at entrypoint
}
rule _DIET_v100d_
{
	meta:
		description = "DIET v1.00d"
	strings:
		$0 = {FC 06 1E 0E 8C C8 01 ?? ?? ?? BA ?? ?? 03 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 00 00 00 00}
	condition:
		$0 at entrypoint
}
rule _PEShit_
{
	meta:
		description = "PEShit"
	strings:
		$0 = {B8 ?? ?? ?? ?? B9 ?? ?? ?? ?? 83 F9 00 7E 06 80 30 ?? 40 E2 F5 E9 ?? ?? ?? FF}
	condition:
		$0 at entrypoint
}
rule _PerlApp_602__ActiveState_
{
	meta:
		description = "PerlApp 6.0.2 -> ActiveState"
	strings:
		$0 = {68 2C EA 40 00 FF D3 83 C4 0C 85 C0 0F 85 CD 00 00 00 6A 09 57 68 20 EA 40 00 FF D3 83 C4 0C 85 C0 75 12 8D 47 09 50 FF 15 1C D1 40 00 59 A3 B8 07 41 00 EB 55 6A 08 57 68 14 EA 40 00 FF D3 83 C4 0C 85 C0 75 11 8D 47 08 50 FF 15 1C D1 40 00 59 89 44 24 10 EB 33 6A 09 57 68 08 EA 40 00 FF D3 83 C4 0C 85 C0 74 22 6A 08 57 68 FC E9 40 00 FF D3 83 C4 0C 85 C0 74 11 6A 0B 57 68 F0 E9 40 00 FF D3 83 C4 0C 85 C0 75 55}
		$1 = {68 9C E1 40 00 FF 15 A4 D0 40 00 85 C0 59 74 0F 50 FF 15 1C D1 40 00 85 C0 59 89 45 FC 75 62 6A 00 8D 45 F8 FF 75 0C F6 45 14 01 50 8D 45 14 50 E8 9B 01 00 00 83 C4 10 85 C0 0F 84 E9 00 00 00 8B 45 F8 83 C0 14 50 FF D6 85 C0 59 89 45 FC 75 0E FF 75 14 FF 15 78 D0 40 00 E9 C9 00 00 00 68 8C E1 40 00 FF 75 14 50}
	condition:
		$0 or $1
}
rule _BeRoEXEPacker_v100_LZMA__BeRo__Farbrausch_
{
	meta:
		description = "BeRoEXEPacker v1.00 [LZMA] -> BeRo / Farbrausch"
	strings:
		$0 = {60 68 ?? ?? ?? ?? 68 ?? ?? ?? ?? 68 ?? ?? ?? ?? E8 ?? ?? ?? ?? BE ?? ?? ?? ?? B9 04 00 00 00 8B F9 81 FE ?? ?? ?? ?? 7F 10 AC 47 04 18 2C 02 73 F0 29 3E 03 F1 03 F9 EB E8}
	condition:
		$0 at entrypoint
}
rule _AcidCrypt_
{
	meta:
		description = "AcidCrypt"
	strings:
		$0 = {60 B9 ?? ?? ?? 00 BA ?? ?? ?? 00 BE ?? ?? ?? 00 02 38 40 4E 75 FA 8B C2 8A 18 32 DF C0 CB}
		$1 = {BE ?? ?? ?? ?? 02 38 40 4E 75 FA 8B C2 8A 18 32 DF C0 CB}
	condition:
		$0 at entrypoint or $1 at entrypoint
}
rule _FSG_v13_
{
	meta:
		description = "FSG v1.3"
	strings:
		$0 = {BB D0 01 40 00 BF 00 10 40 00 BE ?? ?? ?? ?? 53 E8 0A 00 00 00 02 D2 75 05 8A 16 46 12 D2 C3 B2 80 A4 6A 02 5B FF 14 24 73 F7 33 C9 FF 14 24 73 18 33 C0 FF 14 24 73 21 B3 02 41 B0 10 FF 14 24 12 C0 73 F9 75 3F AA EB DC E8 43 00 00 00 2B CB 75 10 E8 38 00}
	condition:
		$0 at entrypoint
}
rule _YZPack_12__UsAr_
{
	meta:
		description = "YZPack 1.2 --> UsAr"
	strings:
		$0 = {4D 5A 52 45 60 83 EC 18 8B EC 8B FC 33 C0 64 8B 40 30 78 0C 8B 40 0C 8B 70 1C AD 8B 40 08 EB 09 8B 40 34 83 C0 7C 8B 40 3C AB E9}
	condition:
		$0 at entrypoint
}
rule _UPX_Modified_stub_
{
	meta:
		description = "UPX Modified stub"
	strings:
		$0 = {79 07 0F B7 07 47 50 47 B9 57 48 F2 AE 55 FF 96 84 ?? 00 00 09 C0 74 07 89 03 83 C3 04 EB D8 FF 96 88 ?? 00 00 61 E9 ?? ?? ?? FF}
	condition:
		$0 at entrypoint
}
rule _HACKSTOP_v118_
{
	meta:
		description = "HACKSTOP v1.18"
	strings:
		$0 = {52 BA ?? ?? 5A EB ?? 9A ?? ?? ?? ?? 30 CD 21 ?? ?? ?? FD 02 ?? ?? CD 20 0E 1F 52 BA ?? ?? 5A EB}
	condition:
		$0 at entrypoint
}
rule _Armadillo_v260b1_
{
	meta:
		description = "Armadillo v2.60b1"
	strings:
		$0 = {55 8B EC 6A FF 68 50 ?? ?? ?? 68 74 ?? ?? ?? 64 A1 ?? ?? ?? ?? 50 64 89 25 ?? ?? ?? ?? 83 EC 58 53 56 57 89 65 E8 FF 15 58 ?? ?? ?? 33 D2 8A D4 89 15 FC}
	condition:
		$0 at entrypoint
}
rule _AdFlt2_
{
	meta:
		description = "AdFlt2"
	strings:
		$0 = {68 00 01 9C 0F A0 0F A8 60 FD 6A 00 0F A1 BE ?? ?? AD}
	condition:
		$0 at entrypoint
}
rule _NET_DLL__Microsoft_
{
	meta:
		description = ".NET DLL -> Microsoft"
	strings:
		$0 = {00 00 00 00 00 00 00 00 5F 43 6F 72 44 6C 6C 4D 61 69 6E 00 6D 73 63 6F 72 65 65 2E 64 6C 6C 00 00 ?? 00 00 FF 25}
	condition:
		$0
}
rule _EXECryptor_vxxxx_
{
	meta:
		description = "EXECryptor vx.x.x.x"
	strings:
		$0 = {E8 24 ?? ?? ?? 8B 4C 24 0C C7 01 17 ?? 01 ?? C7 81 B8 ?? ?? ?? ?? ?? ?? ?? 31 C0 89 41}
	condition:
		$0 at entrypoint
}
rule _SoftSentry_v211_
{
	meta:
		description = "SoftSentry v2.11"
	strings:
		$0 = {55 8B EC 83 EC ?? 53 56 57 E9 50}
	condition:
		$0 at entrypoint
}
rule _RECrypt_v07x__Crudd_RET_h2_
{
	meta:
		description = "RE-Crypt v0.7x -> Crudd [RET] (h2)"
	strings:
		$0 = {60 E8 00 00 00 00 5D 55 81 04 24 0A 00 00 00 C3 8B F5 81 C5 ?? ?? 00 00 89 6D 34 89 75 38 8B 7D 38 81 E7 00 FF FF FF 81 C7 48 00 00 00 47 03 7D 60 8B 4D 5C 83 F9 00 7E 0F 8B 17 33 55 58 89 17 83 C7 04 83 C1 FC EB EC 8B}
	condition:
		$0 at entrypoint
}
rule _PseudoSigner_01_JDPack_1x__JDProtect_09__Anorganix_
{
	meta:
		description = "PseudoSigner 0.1 [JDPack 1.x / JDProtect 0.9] --> Anorganix"
	strings:
		$0 = {60 E8 22 00 00 00 5D 8B D5 81 ED 90 90 90 90 2B 95 90 90 90 90 81 EA 06 90 90 90 89 95 90 90 90 90 83 BD 45 00 01 00 01 E9}
	condition:
		$0 at entrypoint
}
rule _AsCrypt_v01__SToRM__1_
{
	meta:
		description = "AsCrypt v0.1 -> SToRM - #1"
	strings:
		$0 = {81 ?? ?? ?? ?? ?? ?? 83 ?? ?? ?? ?? ?? ?? ?? 83 ?? ?? E2 ?? EB}
	condition:
		$0
}
rule _EmbedPE_V100V124__cyclotron_
{
	meta:
		description = "EmbedPE V1.00-V1.24 -> cyclotron"
	strings:
		$0 = {00 00 00 00 ?? ?? ?? ?? 00 00 00 00 00 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 00 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 00 00 00 00 4B 45 52 4E 45 4C 33 32 2E 64 6C 6C 00 00 00 00 47 65 74 50 72 6F 63 41 64 64 72 65 73 73 00 00 00 47 65 74 4D 6F 64 75 6C 65 48 61 6E 64 6C 65 41 00 00 00 4C 6F 61 64 4C 69 62 72 61 72 79 41 00 00 00 00 00 00 00 00 00}
	condition:
		$0
}
rule _Upack_v033__v034_Beta__Dwing_
{
	meta:
		description = "Upack v0.33 ~ v0.34 Beta -> Dwing"
	strings:
		$0 = {59 F3 A5 83 C8 FF 8B DF AB 40 AB 40}
	condition:
		$0 at entrypoint
}
rule _SEAAXE_
{
	meta:
		description = "SEA-AXE"
	strings:
		$0 = {FC BC ?? ?? 0E 1F E8 ?? ?? 26 A1 ?? ?? 8B 1E ?? ?? 2B C3 8E C0 B1 ?? D3 E3}
	condition:
		$0 at entrypoint
}
rule _Aluwain_v809_
{
	meta:
		description = "Aluwain v8.09"
	strings:
		$0 = {8B EC 1E E8 ?? ?? 9D 5E}
	condition:
		$0 at entrypoint
}
rule _PseudoSigner_01_Lockless_Intro_Pack__Anorganix_
{
	meta:
		description = "PseudoSigner 0.1 [Lockless Intro Pack] --> Anorganix"
	strings:
		$0 = {2C E8 EB 1A 90 90 5D 8B C5 81 ED F6 73 90 90 2B 85 90 90 90 90 83 E8 06 89 85 FF 01 EC AD E9}
	condition:
		$0 at entrypoint
}
rule _PseudoSigner_02_Borland_Delphi_Setup_Module__Anorganix_
{
	meta:
		description = "PseudoSigner 0.2 [Borland Delphi Setup Module] --> Anorganix"
	strings:
		$0 = {55 8B EC 83 C4 90 53 56 57 33 C0 89 45 F0 89 45 D4 89 45 D0 E8 00 00 00 00}
	condition:
		$0 at entrypoint
}
rule _PrivateEXE_v20a_
{
	meta:
		description = "PrivateEXE v2.0a"
	strings:
		$0 = {06 60 C8 ?? ?? ?? 0E 68 ?? ?? 9A ?? ?? ?? ?? 3D ?? ?? 0F ?? ?? ?? 50 50 0E 68 ?? ?? 9A ?? ?? ?? ?? 0E}
		$1 = {53 E8 ?? ?? ?? ?? 5B 8B C3 2D ?? ?? ?? ?? 50 81 ?? ?? ?? ?? ?? 8B}
	condition:
		$0 at entrypoint or $1 at entrypoint
}
rule _Obsiduim_1304__Obsiduim_Software_
{
	meta:
		description = "Obsiduim 1.3.0.4 -> Obsiduim Software"
	strings:
		$0 = {EB 02 ?? ?? E8 25 00 00 00 EB 04 ?? ?? ?? ?? EB 01 ?? 8B 54 24 0C EB 01 ?? 83 82 B8 00 00 00 23 EB 01 ?? 33 C0 EB 02 ?? ?? C3 EB 02 ?? ?? EB 04 ?? ?? ?? ?? 64 67 FF 36 00 00 EB 03 ?? ?? ?? 64}
	condition:
		$0 at entrypoint
}
rule _tElock_v085f_
{
	meta:
		description = "tElock v0.85f"
	strings:
		$0 = {60 E8 02 00 00 00 CD 20 E8 00 00 00 00 5E 2B C9 58 74 02}
	condition:
		$0 at entrypoint
}
rule _UpxLock_10__12__CyberDoom__TeamX__BoB__BobSoft_
{
	meta:
		description = "Upx-Lock 1.0 - 1.2 --> CyberDoom / Team-X & BoB / BobSoft"
	strings:
		$0 = {60 E8 00 00 00 00 5D 81 ED 48 12 40 00 60 E8 2B 03 00 00 61}
	condition:
		$0 at entrypoint
}
rule _Armadillo_v190b3_
{
	meta:
		description = "Armadillo v1.90b3"
	strings:
		$0 = {55 8B EC 6A FF 68 08 E2 40 00 68 94 95 40 00 64 A1 00 00 00 00 50 64 89 25 00 00 00 00 83 EC 58}
	condition:
		$0 at entrypoint
}
rule _Armadillo_430a__Silicon_Realms_Toolworks_
{
	meta:
		description = "Armadillo 4.30a -> Silicon Realms Toolworks"
	strings:
		$0 = {44 64 65 44 61 74 61 20 69 6E 69 74 69 61 6C 69 7A 65 64 20 28 41 4E 53 49 29 2C 20 61 70 70 20 73 74 72 69 6E 67 73 20 61 72 65 20 27 25 73 27 20 61 6E 64 20 27 25 73 27 00 00 00 44 64 65 44 61 74 61 20 69 6E 69 74 69 61 6C 69 7A 65 64 20 28 55 4E 49 43}
	condition:
		$0
}
rule _BamBam_v001__Bedrock_
{
	meta:
		description = "BamBam v0.01 -> Bedrock"
	strings:
		$0 = {6A 14 E8 9A 05 00 00 8B D8 53 68 FB ?? ?? 00 E8 6C FD FF FF B9 05 00 00 00 8B F3 BF FB ?? ?? 00 53 F3 A5 E8 8D 05 00 00 8B 3D 03 ?? ?? 00 A1 2B ?? ?? 00 66 8B 15 2F ?? ?? 00 B9 80 ?? ?? 00 2B CF 89 45 E8 89 0D 6B ?? ?? 00 66 89 55 EC 8B 41 3C 33 D2 03 C1}
	condition:
		$0
}
rule _ORiEN_v211__212__Fisun_Alexander_
{
	meta:
		description = "ORiEN v2.11 - 2.12 -> Fisun Alexander"
	strings:
		$0 = {E9 5D 01 00 00 CE D1 CE ?? 0D 0A 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 0D 0A 2D 20 4F 52 69 45 4E 20 65 78 65 63 75 74 61 62 6C 65 20 66 69 6C 65 73 20 70 72 6F}
	condition:
		$0 at entrypoint
}
rule _ASPack_v10801__Alexey_Solodovnikov_
{
	meta:
		description = "ASPack v1.08.01 -> Alexey Solodovnikov"
	strings:
		$0 = {60 EB 0A 5D EB 02 FF 25 45 FF E5 E8 E9 E8 F1 FF FF FF E9 81 ?? ?? ?? 44 00 BB 10 ?? 44 00 03 DD 2B 9D}
		$1 = {60 EB 0A 5D EB 02 FF 25 45 FF E5 E8 E9 E8 F1 FF FF FF E9 81 ?? ?? ?? 44 ?? BB 10 ?? 44 ?? 03 DD 2B 9D}
		$2 = {60 EB ?? 5D EB ?? FF ?? ?? ?? ?? ?? E9}
	condition:
		$0 at entrypoint or $1 at entrypoint or $2 at entrypoint
}
rule _RLPack_10_beta__ap0x_
{
	meta:
		description = "RLPack 1.0 beta -> ap0x"
	strings:
		$0 = {60 E8 00 00 00 00 8D 64 24 04 8B 6C 24 FC 8D B5 4C 02 00 00 8D 9D 13 01 00 00 33 FF EB 0F FF 74 37 04 FF 34 37 FF D3 83 C4 08 83 C7 08 83 3C 37 00 75 EB 8D 74 37 04 53 6A 40 68 00 10 00 00 68 ?? ?? ?? ?? 6A 00 FF 95 F9 01 00 00 89 85 48 02 00 00 5B FF B5}
		$1 = {60 E8 00 00 00 00 8D 64 24 04 8B 6C 24 FC 8D B5 4C 02 00 00 8D 9D 13 01 00 00 33 FF EB 0F FF 74 37 04 FF 34 37 FF D3 83 C4 08 83 C7 08 83 3C 37 00 75 EB 8D 74 37 04 53 6A 40 68 00 10 00 00 68 ?? ?? ?? ?? 6A 00 FF 95 F9 01 00 00 89 85 48 02 00 00 5B FF B5 48 02 00 00 56 FF D3 83 C4 08 8B B5 48 02 00 00 8B C6 EB 01 40 80 38 01 75 FA 40 8B 38 83 C0 04 89 85 44 02 00 00 EB 7A 56 FF 95 F1 01 00 00 89 85 40 02 00 00 8B C6 EB 4F 8B 85 44 02 00 00 8B 00 A9 00 00 00 80 74 14 35 00 00 00 80 50 8B 85 44 02 00 00 C7 00 20 20 20 00 EB 06 FF B5 44 02 00 00 FF B5 40 02 00 00 FF 95 F5 01 00 00 89 07 83 C7 04 8B 85 44 02 00 00 EB 01 40 80 38 00 75 FA 40 89 85 44 02 00 00 80 38 00 75 AC EB 01 46 80 3E 00 75 FA 46 40 8B 38 83 C0 04 89 85 44 02 00 00 80 3E 01 75 81 68 00 40 00 00 68 ?? ?? ?? ?? FF B5 48 02 00 00 FF 95 FD 01 00 00 61 68 ?? ?? ?? ?? C3 60 8B 74 24 24 8B 7C}
	condition:
		$0 at entrypoint or $1 at entrypoint
}
rule _y0das_Crypter_v11_
{
	meta:
		description = "y0da's Crypter v1.1"
	strings:
		$0 = {60 E8 00 00 00 00 5D 81 ED 8A 1C 40 00 B9 9E 00 00 00 8D BD 4C 23 40 00 8B F7 33}
	condition:
		$0 at entrypoint
}
rule _Adys_Glue_v010_
{
	meta:
		description = "Ady`s Glue v0.10"
	strings:
		$0 = {2E 8C 06 ?? ?? 0E 07 33 C0 8E D8 BE ?? ?? BF ?? ?? FC B9 ?? ?? 56 F3 A5 1E 07 5F}
	condition:
		$0 at entrypoint
}
rule _UPXShit_006_
{
	meta:
		description = "UPXShit 0.06"
	strings:
		$0 = {B8 ?? ?? 43 00 B9 15 00 00 00 80 34 08 ?? E2 FA E9 D6 FF FF FF}
	condition:
		$0 at entrypoint
}
rule _PseudoSigner_01_CrunchPE_Heuristic__Anorganix_
{
	meta:
		description = "PseudoSigner 0.1 [Crunch/PE Heuristic] --> Anorganix"
	strings:
		$0 = {55 E8 0E 00 00 00 5D 83 ED 06 8B C5 55 60 89 AD ?? ?? ?? ?? 2B 85 00 00 00 00 E9}
	condition:
		$0 at entrypoint
}
rule _CRYPT_Version_17_c_Dismember_
{
	meta:
		description = "CRYPT Version 1.7 (c) Dismember"
	strings:
		$0 = {0E 17 9C 58 F6 ?? ?? 74 ?? E9}
	condition:
		$0 at entrypoint
}
rule _W32Jeefo_PE_File_Infector_
{
	meta:
		description = "W32.Jeefo (PE File Infector)"
	strings:
		$0 = {55 89 E5 83 EC 08 83 C4 F4 6A 02 A1 C8 ?? ?? ?? FF D0 E8 ?? ?? ?? ?? C9 C3}
	condition:
		$0 at entrypoint
}
rule _Obsidium_1331__Obsidium_Software_
{
	meta:
		description = "Obsidium 1.3.3.1 -> Obsidium Software"
	strings:
		$0 = {EB 01 ?? E8 29 00 00 00 EB 02 ?? ?? EB 03 ?? ?? ?? 8B 54 24 0C EB 02 ?? ?? 83 82 B8 00 00 00 24 EB 04 ?? ?? ?? ?? 33 C0 EB 02 ?? ?? C3 EB 02 ?? ?? EB 02 ?? ?? 64 67 FF 36 00 00 EB 04 ?? ?? ?? ?? 64 67 89 26 00 00 EB 01 ?? EB 02 ?? ?? 50 EB 01 ?? 33 C0 EB 04 ?? ?? ?? ?? 8B 00 EB 03 ?? ?? ?? C3 EB 03 ?? ?? ?? E9 FA 00 00 00 EB 02 ?? ?? E8 D5 FF FF FF EB 01 ?? EB 04 ?? ?? ?? ?? 58 EB 02 ?? ?? EB 04 ?? ?? ?? ?? 64 67 8F 06 00 00 EB 01 ?? 83 C4 04 EB 02 ?? ?? E8 5F 27 00 00}
	condition:
		$0 at entrypoint
}
rule _PolyBox_C__Anskya_
{
	meta:
		description = "PolyBox C -> Anskya"
	strings:
		$0 = {55 8B EC 83 C4 F0 53 56 B8 E4 41 00 10 E8 3A E1 FF FF 33 C0 55 68 11 44 00 10 64 FF 30 64 89 20 EB 08 FC FC FC FC FC FC 27 54 6A 0A 68 20 44 00 10 A1 1C 71 00 10 50 E8 CC E1 ?? ?? ?? ?? 85 DB 0F 84 77 01 00 00 53 A1 1C 71 00 10 50 E8 1E E2 FF FF 8B F0 85 F6 0F 84 61 01 00 00 53 A1 1C 71 00 10 50 E8 E0 E1 FF FF 85 C0 0F 84 4D 01 00 00 50 E8 DA E1 FF FF 8B D8 85 DB 0F 84 3D 01 00 00 56 B8 70 80 00 10 B9 01 00 00 00 8B 15 98 41 00 10 E8 9E DE FF FF 83 C4 04 A1 70 80 00 10 8B CE 8B D3 E8 E1 E1 FF FF 6A 00 6A 00 A1 70 80 00 10 B9 30 44 00 10 8B D6 E8 F8 FD FF FF}
	condition:
		$0
}
rule _StarForce_Protection_Driver__Protection_Technology_
{
	meta:
		description = "StarForce Protection Driver -> Protection Technology"
	strings:
		$0 = {57 68 ?? 0D 01 00 68 00 ?? ?? 00 E8 50 ?? FF FF 68 ?? ?? ?? 00 68 ?? ?? ?? 00 68 ?? ?? ?? 00 68 ?? ?? ?? 00 68 ?? ?? ?? 00}
	condition:
		$0 at entrypoint
}
rule _PolyEnE_V001p__Lennart_Hedlund_
{
	meta:
		description = "PolyEnE V0.01+ -> Lennart Hedlund"
	strings:
		$0 = {50 6F 6C 79 45 6E 45 00 4D 65 73 73 61 67 65 42 6F 78 41 00 55 53 45 52 33 32 2E 64 6C 6C}
	condition:
		$0
}
rule _PeX_v099_Eng__bartCrackPl_
{
	meta:
		description = "PeX v0.99 (Eng) -> bart/CrackPl"
	strings:
		$0 = {E9 F5 00 00 00 0D 0A C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4}
	condition:
		$0 at entrypoint
}
rule _CDCops_II_
{
	meta:
		description = "CD-Cops II"
	strings:
		$0 = {53 60 BD ?? ?? ?? ?? 8D 45 ?? 8D 5D ?? E8 ?? ?? ?? ?? 8D}
	condition:
		$0 at entrypoint
}
rule _SmartE__Microsoft_
{
	meta:
		description = "SmartE -> Microsoft"
	strings:
		$0 = {EB 15 03 00 00 00 ?? 00 00 00 00 00 00 00 00 00 00 00 68 00 00 00 00 55 E8 00 00 00 00 5D 81 ED 1D 00 00 00 8B C5 55 60 9C 2B 85 8F 07 00 00 89 85 83 07 00 00 FF 74 24 2C E8 BB 01 00 00 0F 82 2F 06 00 00 E8 8E 04 00 00 49 0F 88 23 06}
	condition:
		$0 at entrypoint
}
rule _aPack_v098b_DSES_not_saved_
{
	meta:
		description = "aPack v0.98b (DS&ES not saved)"
	strings:
		$0 = {8C CB BA ?? ?? 03 DA FC 33 F6 33 FF 4B 8E DB 8D ?? ?? ?? 8E C0 B9 ?? ?? F3 A5 4A 75}
	condition:
		$0
}
rule _NsPack_14_by_North_Star_Liu_Xing_Ping_
{
	meta:
		description = "NsPack 1.4 by North Star (Liu Xing Ping)"
	strings:
		$0 = {8B DF 83 3F 00 75 0A 83 C7 04 B9 00 00 00 00 EB 16 B9 01 00 00 00 03 3B 83 C3 04 83 3B 00 74 2D 01 13 8B 33 03 7B 04 57 51 52 53}
	condition:
		$0
}
rule _PEArmor_049__Hying_
{
	meta:
		description = "PE-Armor 0.49 -> Hying"
	strings:
		$0 = {56 52 51 53 55 E8 15 01 00 00 32 ?? ?? 00 00 00 00 00}
	condition:
		$0 at entrypoint
}
rule _Stones_PE_Encryptor_v20_
{
	meta:
		description = "Stone's PE Encryptor v2.0"
	strings:
		$0 = {53 51 52 56 57 55 E8 ?? ?? ?? ?? 5D 81 ED 42 30 40 ?? FF 95 32 35 40 ?? B8 37 30 40 ?? 03 C5 2B 85 1B 34 40 ?? 89 85 27 34 40 ?? 83}
	condition:
		$0 at entrypoint
}
rule _UPX_Alternative_stub_
{
	meta:
		description = "UPX Alternative stub"
	strings:
		$0 = {01 DB 07 8B 1E 83 EE FC 11 DB ED B8 01 00 00 00 01 DB 07 8B 1E 83 EE FC 11 DB 11 C0 01 DB 73 0B}
	condition:
		$0 at entrypoint
}
rule _NJoiner_01_Asm_Version__NEX_
{
	meta:
		description = "N-Joiner 0.1 (Asm Version) -> NEX"
	strings:
		$0 = {6A 00 68 00 14 40 00 68 00 10 40 00 6A 00 E8 14 00 00 00 6A 00 E8 13 00 00 00 CC FF 25 AC 12 40 00 FF 25 B0 12 40 00 FF 25 B4 12 40 00 FF 25 B8 12 40 00 FF 25 BC 12 40 00 FF 25 C0 12 40 00 FF 25 C4 12 40 00 FF 25 C8 12 40 00 FF 25 CC 12 40 00 FF 25 D0 12 40 00 FF 25 D4 12 40 00 FF 25 D8 12 40 00 FF 25 DC 12 40 00 FF 25 E4 12 40 00 FF 25 EC 12 40 00}
	condition:
		$0 at entrypoint
}
rule _Obsidium_1311__Obsidium_Software_
{
	meta:
		description = "Obsidium 1.3.1.1 -> Obsidium Software"
	strings:
		$0 = {EB 02 ?? ?? E8 27 00 00 00 EB 02 ?? ?? EB 03 ?? ?? ?? 8B 54 24 0C EB 01 ?? 83 82 B8 00 00 00 22 EB 04 ?? ?? ?? ?? 33 C0 EB 01 ?? C3 EB 02 ?? ?? EB 02 ?? ?? 64 67 FF 36 00 00 EB 04 ?? ?? ?? ?? 64 67 89 26 00 00 EB 01 ?? EB 03 ?? ?? ?? 50 EB 03 ?? ?? ?? 33 C0 EB 01 ?? 8B 00 EB 03 ?? ?? ?? C3 EB 01 ?? E9 FA 00 00 00 EB 03 ?? ?? ?? E8 D5 FF FF FF EB 01 ?? EB 03 ?? ?? ?? 58 EB 03 ?? ?? ?? EB 01 ?? 64 67 8F 06 00 00 EB 01 ?? 83 C4 04 EB 03}
	condition:
		$0 at entrypoint
}
rule _EXERefactor_V01__random_
{
	meta:
		description = "EXERefactor V0.1 -> random"
	strings:
		$0 = {55 8B EC 81 EC 90 0B 00 00 53 56 57 E9 58 8C 01 00 55 53 43 41 54 49 4F 4E}
	condition:
		$0 at entrypoint
}
rule _WinRAR_32bit_SFX_Module_
{
	meta:
		description = "WinRAR 32-bit SFX Module"
	strings:
		$0 = {E9 ?? ?? 00 00 00 00 00 00 90 90 90 ?? ?? ?? ?? ?? ?? 00 ?? 00 ?? ?? ?? ?? ?? FF}
	condition:
		$0 at entrypoint
}
rule _Enigma_Protector_131_Build_20070615_Dll__Sukhov_Vladimir__Serge_N_Markin_
{
	meta:
		description = "Enigma Protector 1.31 Build 20070615 Dll -> Sukhov Vladimir & Serge N. Markin"
	strings:
		$0 = {60 E8 00 00 00 00 5D 81 ED 06 00 00 00 81 ED ?? ?? ?? ?? E9 49 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 8A 84 24 28 00 00 00 80 F8 01 0F 84 07 00 00 00 B8 ?? ?? ?? ?? FF E0 E9 04 00 00 00 ?? ?? ?? ?? B8 ?? ?? ?? ?? 03 C5 81 C0 ?? ?? ?? ?? B9 ?? ?? ?? ?? BA ?? ?? ?? ?? 30 10 40 49 0F 85 F6 FF FF FF E9 04 00 00 00}
	condition:
		$0 at entrypoint
}
rule _Vx_MTE_nonencrypted_
{
	meta:
		description = "Vx: MTE (non-encrypted)"
	strings:
		$0 = {F7 D9 80 E1 FE 75 02 49 49 97 A3 ?? ?? 03 C1 24 FE 75 02 48}
	condition:
		$0 at entrypoint
}
rule _RCryptor_v15__Vaska_
{
	meta:
		description = "RCryptor v1.5 --> Vaska"
	strings:
		$0 = {83 2C 24 4F 68 ?? ?? ?? ?? FF 54 24 04 83 44 24 04 4F}
	condition:
		$0 at entrypoint
}
rule _Enigma_Protector_v112_LITE_
{
	meta:
		description = "Enigma Protector v1.12 LITE"
	strings:
		$0 = {60 E8 00 00 00 00 5D 83 ED 06 81 ED ?? ?? ?? 00 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? E8 01 00 00 00 9A 83 C4 04 EB 02 FF 35 60 E8 24 00 00 00 00 00 FF EB 02 CD 20 8B 44 24 0C 83 80 B8 00 00 00 03 31}
	condition:
		$0 at entrypoint
}
rule _ASProtect_v123_RC1_
{
	meta:
		description = "ASProtect v1.23 RC1"
	strings:
		$0 = {68 01 ?? ?? 00 E8 01 00 00 00 C3 C3}
	condition:
		$0 at entrypoint
}
rule _PCShrink_v040b_
{
	meta:
		description = "PCShrink v0.40b"
	strings:
		$0 = {9C 60 BD ?? ?? ?? ?? 01 ?? ?? ?? ?? ?? FF ?? ?? ?? ?? ?? 6A ?? FF ?? ?? ?? ?? ?? 50 50 2D}
	condition:
		$0 at entrypoint
}
rule _CopyControl_v303_
{
	meta:
		description = "CopyControl v3.03"
	strings:
		$0 = {CC 90 90 EB 0B 01 50 51 52 53 54 61 33 61 2D 35 CA D1 07 52 D1 A1 3C}
	condition:
		$0 at entrypoint
}
rule _DJoin_v07_public_xor_encryption__drmist_
{
	meta:
		description = "DJoin v0.7 public (xor encryption) -> drmist"
	strings:
		$0 = {C6 05 ?? ?? 40 00 00 ?? ?? ?? ?? ?? ?? ?? ?? 00 ?? ?? ?? ?? 00 ?? ?? ?? ?? ?? 00}
	condition:
		$0 at entrypoint
}
rule _MSLRH_v032a_fake_PE_Lock_NT_204__emadicius_
{
	meta:
		description = "[MSLRH] v0.32a (fake PE Lock NT 2.04) -> emadicius"
	strings:
		$0 = {EB 03 CD 20 C7 1E EB 03 CD 20 EA 9C EB 02 EB 01 EB 01 EB 60 EB 03 CD 20 EB EB 01 EB E8 03 00 00 00 E9 EB 04 58 40 50 C3 EB 03 CD 20 EB EB 03 CD 20 03 61 9D 83 C4 04 EB 05 E8 EB 04 40 00 EB FA E8 0A 00 00 00 E8 EB 0C 00 00 E8 F6 FF FF FF E8 F2 FF FF FF 83 C4 08 74 04 75 02 EB 02 EB 01 81 50 E8 02 00 00 00 29 5A 58 6B C0 03 E8 02 00 00 00 29 5A 83 C4 04 58 74 04 75 02 EB 02 EB 01 81 0F 31 50 0F 31 E8 0A 00 00 00 E8 EB 0C 00 00 E8 F6 FF FF FF E8 F2 FF FF FF}
	condition:
		$0 at entrypoint
}
rule _EXE32Pack_v138_
{
	meta:
		description = "EXE32Pack v1.38"
	strings:
		$0 = {3B C0 74 02 81 83 55 3B C0 74 02 81 83 53 3B C9 74 01 BC ?? ?? ?? ?? 02 81 ?? ?? ?? ?? ?? ?? ?? 3B DB 74 01 BE 5D 8B D5 81 ED DC 8D 40}
	condition:
		$0 at entrypoint
}
rule _Unnamed_Scrambler_12B__p0ke_
{
	meta:
		description = "Unnamed Scrambler 1.2B -> p0ke"
	strings:
		$0 = {55 8B EC 83 C4 D8 53 56 57 33 C0 89 45 D8 89 45 DC 89 45 E0 89 45 E4 89 45 E8 B8 70 3A 40 00 E8 C4 EC FF FF 33 C0 55 68 5C 3F 40 00 64 FF 30 64 89 20 E8 C5 D7 FF FF E8 5C F5 FF FF B8 20 65 40 00 33 C9 BA 04 01 00 00 E8 D3 DB FF FF 68 04 01 00 00 68 20 65 40 00 6A 00 FF 15 10 55 40 00 BA 6C 3F 40 00 B8 14 55 40 00 E8 5A F4 FF FF 85 C0 0F 84 1B 04 00 00 BA 18 55 40 00 8B 0D 14 55 40 00 E8 16 D7 FF FF 8B 05 88 61 40 00 8B D0 B8 54 62 40 00 E8 D4 E3 FF FF B8 54 62 40 00 E8 F2 E2 FF FF 8B D0 B8 18 55 40 00 8B 0D 88 61 40 00 E8 E8 D6 FF FF FF 35 34 62 40 00 FF 35 30 62 40 00 FF 35 3C 62 40 00 FF 35 38 62 40 00 8D 55 E8 A1 88 61 40 00 E8 E3 F0 FF FF 8B 55 E8}
	condition:
		$0
}
rule _RLPack_v118_Basic_DLL_LZMA__Ap0x_
{
	meta:
		description = "RLPack v1.18 Basic DLL [LZMA] -> Ap0x"
	strings:
		$0 = {80 7C 24 08 01 0F 85 ?? ?? ?? ?? 60 E8 00 00 00 00 8B 2C 24 83 C4 04 8D B5 21 0B 00 00 8D 9D FF 02 00 00 33 FF E8 9F 01 00 00 6A 40 68 00 10 00 00 68 00 20 0C 00 6A 00 FF 95 AA 0A 00 00 89 85 F9 0A 00 00 EB 14 60 FF B5 F9 0A}
	condition:
		$0 at entrypoint
}
rule _PEiDBundle_v101__BoB__BobSoft_
{
	meta:
		description = "PEiD-Bundle v1.01 --> BoB / BobSoft"
	strings:
		$0 = {60 E8 23 02 00 00 8B 44 24 04 52 48 66 31 C0 66 81 38 4D 5A 75 F5 8B 50 3C 81 3C 02 50 45 00 00 75 E9 5A C2 04 00 60 89 DD 89 C3 8B 45 3C 8B 54 28 78 01 EA 52 8B 52 20 01 EA 31 C9 41 8B 34 8A}
	condition:
		$0 at entrypoint
}
rule _Krypton_v02_
{
	meta:
		description = "Krypton v0.2"
	strings:
		$0 = {8B 0C 24 E9 0A 7C 01 ?? AD 42 40 BD BE 9D 7A 04}
	condition:
		$0 at entrypoint
}
rule _ExeSplitter_12__Bill_Prisoner__TPOC_
{
	meta:
		description = "ExeSplitter 1.2 -> Bill Prisoner / TPOC"
	strings:
		$0 = {E9 95 02 00 00 64 A1 00 00 00 00 83 38 FF 74 04 8B 00 EB F7 8B 40 04 C3 55 8B EC B8 00 00 00 00 8B 75 08 81 E6 00 00 FF FF B9 06 00 00 00 56 56 E8 B0 00 00 00 5E 83 F8 01 75 06 8B C6 C9 C2 04 00 81 EE 00 00 01 00 E2 E5 C9 C2 04 00 55 8B EC 8B 75 0C 8B DE 03 76 3C 8D 76 18 8D 76 60 8B 36 03 F3 56 8B 76 20 03 F3 33 D2 8B C6 8B 36 03 F3 8B 7D 08 B9 0E 00 00 00 FC F3 A6 0B C9 75 02 EB 08}
	condition:
		$0
}
rule _Unnamed_Scrambler_11C__p0ke_
{
	meta:
		description = "Unnamed Scrambler 1.1C -> p0ke"
	strings:
		$0 = {55 8B EC 83 C4 E4 53 56 33 C0 89 45 E4 89 45 E8 89 45 EC B8 C0 47 00 10 E8 4F F3 FF FF BE 5C 67 00 10 33 C0 55 68 D2 4A 00 10 64 FF 30 64 89 20 E8 EB DE FF FF E8 C6 F8 FF FF BA E0 4A 00 10 B8 CC 67 00 10 E8 5F F8 FF FF 8B D8 8B D6 8B C3 8B 0D CC 67 00 10 E8 3A DD FF FF 8B 46 50 8B D0 B8 D4 67 00 10 E8 5B EF FF FF B8 D4 67 00 10 E8 09 EF FF FF 8B D0 8D 46 14 8B 4E 50 E8 14 DD FF FF 8B 46 48 8B D0 B8 D8 67 00 ?? ?? ?? ?? ?? FF B8 D8 67 00 10 E8 E3 EE FF FF 8B D0 8B C6 8B 4E 48 E8 EF DC FF FF FF 76 5C FF 76 58 FF 76 64 FF 76 60 B9 D4 67 00 10 8B 15 D8 67 00 10 A1 D4 67 00 10 E8 76 F6 FF FF A1 D4 67 00 10 E8 5C EE FF FF 8B D0 B8 CC 67 00 10 E8 CC F7 FF FF 8B D8 B8 DC 67 00 10}
	condition:
		$0
}
rule _FreeJoiner_Small_build_029__GlOFF_
{
	meta:
		description = "FreeJoiner Small (build 029) -> GlOFF"
	strings:
		$0 = {50 32 C4 8A C3 58 E8 DE FD FF FF 6A 00 E8 0D 00 00 00 CC FF 25 78 10 40 00 FF 25 7C 10 40 00 FF 25 80 10 40 00 FF 25 84 10 40 00 FF 25 88 10 40 00 FF 25 8C 10 40 00 FF 25 90 10 40 00 FF 25 94 10 40 00 FF 25 98 10 40 00 FF 25 9C 10 40 00 FF 25 A0 10 40 00 FF 25 A4 10 40 00 FF 25 AC 10 40 00}
	condition:
		$0 at entrypoint
}
rule _FSG_v110_Eng__dulekxt__Microsoft_Visual_Cpp_60_
{
	meta:
		description = "FSG v1.10 (Eng) -> dulek/xt -> (Microsoft Visual C++ 6.0)"
	strings:
		$0 = {03 DE EB 01 F8 B8 80 ?? 42 00 EB 02 CD 20 68 17 A0 B3 AB EB 01 E8 59 0F B6 DB 68 0B A1 B3}
		$1 = {03 DE EB 01 F8 B8 80 ?? 42 00 EB 02 CD 20 68 17 A0 B3 AB EB 01 E8 59 0F B6 DB 68 0B A1 B3 AB EB 02 CD 20 5E 80 CB AA 2B F1 EB 02 CD 20 43 0F BE 38 13 D6 80 C3 47 2B FE EB 01 F4 03 FE EB 02 4F 4E 81 EF 93 53 7C 3C 80 C3 29 81 F7 8A 8F 67 8B 80 C3 C7 2B FE}
		$2 = {91 EB 02 CD 20 BF 50 BC 04 6F 91 BE D0 ?? ?? 6F EB 02 CD 20 2B F7 EB 02 F0 46 8D 1D F4 00}
		$3 = {C1 CE 10 C1 F6 0F 68 00 ?? ?? 00 2B FA 5B 23 F9 8D 15 80 ?? ?? 00 E8 01 00 00 00 B6 5E 0B}
		$4 = {D1 E9 03 C0 68 80 ?? ?? 00 EB 02 CD 20 5E 40 BB F4 00 00 00 33 CA 2B C7 0F B6 16 EB 01 3E}
		$5 = {E8 01 00 00 00 0E 59 E8 01 00 00 00 58 58 BE 80 ?? ?? 00 EB 02 61 E9 68 F4 00 00 00 C1 C8}
		$6 = {EB 01 4D 83 F6 4C 68 80 ?? ?? 00 EB 02 CD 20 5B EB 01 23 68 48 1C 2B 3A E8 02 00 00 00 38}
		$7 = {EB 02 AB 35 EB 02 B5 C6 8D 05 80 ?? ?? 00 C1 C2 11 BE F4 00 00 00 F7 DB F7 DB 0F BE 38 E8}
		$8 = {EB 02 CD 20 ?? CF ?? ?? 80 ?? ?? 00 ?? ?? ?? ?? ?? ?? ?? ?? 00}
		$9 = {F7 DB 80 EA BF B9 2F 40 67 BA EB 01 01 68 AF ?? ?? BA 80 EA 9D 58 C1 C2 09 2B C1 8B D7 68}
	condition:
		$0 at entrypoint or $1 at entrypoint or $2 at entrypoint or $3 at entrypoint or $4 at entrypoint or $5 at entrypoint or $6 at entrypoint or $7 at entrypoint or $8 at entrypoint or $9 at entrypoint
}
rule _kryptor_5_
{
	meta:
		description = "kryptor 5"
	strings:
		$0 = {E8 03 ?? ?? ?? E9 EB 6C 58 40 FF E0}
	condition:
		$0 at entrypoint
}
rule _VProtector__vcasm_
{
	meta:
		description = "VProtector -> vcasm"
	strings:
		$0 = {00 00 00 00 4B 45 52 4E 45 4C 33 32 2E 64 6C 6C 00 00 55 53 45 52 33 32 2E 64 6C 6C 00 00 47 44 49 33 32 2E 64 6C 6C 00 00 00 00 00 00 00 00 47 65 74 50 72 6F 63 41 64 64 72 65 73 73 00 00 00 47 65 74 4D 6F 64 75 6C 65 48 61 6E 64 6C 65 41 00 00 00 4C 6F 61 64 4C 69 62 72 61 72 79 41 00 00 00 53 6C 65 65 70 00 00 00 47 65 74 56 65 72 73 69 6F 6E 00 00 00 47 65 74 43 6F 6D 6D 61 6E 64 4C 69 6E 65 41 00 00 00 47 65 74 53 74 61 72 74 75 70 49 6E 66 6F 41 00 00 00 47 65 74 41 43 50 00 00 00 43 72 65 61 74 65 54 68 72 65 61 64 00 00 00 44 65 66 57 69 6E 64 6F 77 50 72 6F 63 41 00 00 00 52 65 67 69 73 74 65 72 43 6C 61 73 73 45 78 41 00 00 00 43 72 65 61 74 65 57 69 6E 64 6F 77 45 78 41 00 00 00 47 65 74 53 79 73 74 65 6D 4D 65 74 72 69 63 73 00 00 00 53 68 6F 77 57 69 6E 64 6F 77 00 00 00 47 65 74 44 43 00 00 00 52 65 6C 65 61 73 65 44 43 00 00 00 46 69 6E 64 57 69 6E 64 6F 77 41 00 00 00 47 65 74 4D 65 73 73 61 67 65 41 00 00 00 44 65 73 74 72 6F 79 57 69 6E 64 6F 77 00 00 00 53 65 74 50 69 78 65 6C}
		$1 = {00 00 00 00 4B 45 52 4E 45 4C 33 32 2E 64 6C 6C 00 00 55 53 45 52 33 32 2E 64 6C 6C 00 00 47 44 49 33 32 2E 64 6C 6C 00 00 00 00 00 00 00 00 47 65 74 50 72 6F 63 41 64 64 72 65 73 73 00 00 00 47 65 74 4D 6F 64 75 6C 65 48 61 6E 64 6C 65 41 00 00 00 4C 6F 61 64 4C 69 62 72 61 72 79 41 00 00 00 53 6C 65 65 70 00 00 00 47 65 74 56 65 72 73 69 6F 6E 00 00 00 47 65 74 43 6F 6D 6D 61 6E 64 4C 69 6E 65 41 00 00 00 47 65 74 53 74 61 72 74 75 70 49 6E 66 6F 41 00 00 00 47 65 74 41 43 50 00 00 00 43 72 65 61 74 65 54 68 72 65 61 64 00 00 00 44 65 66 57 69 6E 64 6F 77 50 72 6F 63 41 00 00 00 52 65 67 69 73 74 65 72 43 6C 61 73 73 45 78 41 00 00 00 43 72 65 61 74 65 57 69 6E 64 6F 77 45 78 41 00 00 00 47 65 74 53 79 73 74 65 6D 4D 65 74 72 69 63 73 00 00 00 53 68 6F 77 57 69 6E 64 6F 77 00 00 00 47 65 74 44 43 00 00 00 52 65 6C 65 61 73 65 44 43 00 00 00 46 69 6E 64 57 69 6E 64 6F 77 41 00 00 00 47 65 74 4D 65 73 73 61 67 65 41 00 00 00 44 65 73 74 72 6F 79 57 69 6E 64 6F 77 00 00 00 53 65 74 50 69 78 65 6C 00 00 00 00}
		$2 = {00 00 00 00 55 73 65 72 33 32 2E 64 6C 6C 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 47 64 69 33 32 2E 64 6C 6C 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 4B 65 72 6E 65 6C 33 32 2E 64 6C 6C 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 08 00 44 65 66 57 69 6E 64 6F 77 50 72 6F 63 41 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 08 00 52 65 67 69 73 74 65 72 43 6C 61 73 73 45 78 41 00 00 00 00 00 00 00 00 00 00 00 00 00 00 08 00 43 72 65 61 74 65 57 69 6E 64 6F 77 45 78 41 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 08 00 47 65 74 53 79 73 74 65 6D 4D 65 74 72 69 63 73 00 00 00 00 00 00 00 00 00 00 00 00 00 00 08 00 53 68 6F 77 57 69 6E 64 6F 77 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 08 00 47 65 74 44 43 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 08 00 52 65 6C 65 61 73 65 44 43 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 08 00 46 69 6E 64 57 69 6E 64 6F 77 41 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 47 65 74 4D 65 73 73 61 67 65 41 00}
	condition:
		$0 or $1 or $2
}
rule _JDPack_V200__JDPack_
{
	meta:
		description = "JDPack V2.00 -> JDPack"
	strings:
		$0 = {55 8B EC 6A FF 68 ?? ?? ?? ?? 68 ?? ?? ?? ?? 64 A1 00 00 00 00 50 64 89 25 00 00 00 00 ?? ?? ?? E8 01 00 00 00 ?? ?? ?? ?? ?? ?? 05 00 00 00 00 83 C4 0C 5D 60 E8 00 00 00 00 5D 8B D5 64 FF 35 00 00 00 00 EB}
	condition:
		$0 at entrypoint
}
rule _SDProtector_V11x__Randy_Li_
{
	meta:
		description = "SDProtector V1.1x -> Randy Li"
	strings:
		$0 = {55 8B EC 6A FF 68 ?? ?? ?? ?? 68 88 88 88 08 64 A1}
	condition:
		$0 at entrypoint
}
rule _Fish_PE_Shield_112116__HellFish_
{
	meta:
		description = "Fish PE Shield 1.12/1.16 -> HellFish"
	strings:
		$0 = {55 8B EC 83 C4 D0 53 56 57 8B 45 10 83 C0 0C 8B 00 89 45 DC 83 7D DC 00 75 08 E8 BD FE FF FF 89 45 DC E8 E1 FD FF FF 8B 00 03 45 DC 89 45 E4 E8 DC FE FF FF 8B D8 BA 8E 4E 0E EC 8B C3 E8 2E FF FF FF 89 45 F4 BA 04 49 32 D3 8B C3 E8 1F FF FF FF 89 45 F8 BA 54 CA AF 91 8B C3 E8 10 FF FF FF 89 45 F0 BA AC 33 06 03 8B C3 E8 01 FF FF FF 89 45 EC BA 1B C6 46 79 8B C3 E8 F2 FE FF FF 89 45 E8 BA AA FC 0D 7C 8B C3 E8 E3 FE FF FF 89 45 FC 8B 45 E4 8B 58 04 03 5D E4 8B FB 8B 45 E4 8B 30 4E 85 F6 72 2B}
		$1 = {60 E8 EA FD FF FF FF D0 C3 8D 40 00 ?? 00 00 00 2C 00 00 00 ?? ?? ?? 00 ?? ?? 00 00 ?? ?? ?? 00 00 ?? ?? 00 ?? ?? ?? 00 ?? ?? ?? 00 ?? 00 00 00 00 ?? ?? 00 ?? ?? 00 00 ?? 00 00 00 00 ?? ?? 00 00 10 00 00 ?? ?? ?? 00 40 ?? ?? ?? 00 00 ?? ?? 00 00 ?? ?? 00 ?? ?? ?? 00 40 ?? ?? ?? 00 00 ?? 00 00 00 ?? ?? 00 ?? ?? 00 00 40}
	condition:
		$0 or $1 at entrypoint
}
rule _ENIGMA_Protector_V112_Sukhov_Vladimir_
{
	meta:
		description = "ENIGMA Protector V1.12-> Sukhov Vladimir"
	strings:
		$0 = {60 E8 00 00 00 00 5D 83 C5 FA 81 ED ?? ?? ?? 00 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? E8 01 00 00 00 9A 83 C4 04 EB 02 FF 35 60 E8 24 00 00 00 00 00 FF EB 02 CD 20 8B 44 24 0C 83 80 B8 00 00 00 03 31}
	condition:
		$0 at entrypoint
}
rule _Upack_020_beta__Dwing_
{
	meta:
		description = "Upack 0.20 beta -> Dwing"
	strings:
		$0 = {BE 88 01 40 00 AD 8B F8 95 A5 33 C0 33 C9 AB 48 AB F7 D8 B1 04 F3 AB C1 E0 0A B5 ?? F3 AB AD 50 97 51 58 8D 54 85 5C FF 16 72 5A 2C 03 73 02 B0 00 3C 07 72 02 2C 03 50 0F B6 5F FF C1 E3 ?? B3}
	condition:
		$0 at entrypoint
}
rule _PseudoSigner_02_VOB_ProtectCD_5__Anorganix_
{
	meta:
		description = "PseudoSigner 0.2 [VOB ProtectCD 5] --> Anorganix"
	strings:
		$0 = {36 3E 26 8A C0 60 E8 00 00 00 00}
	condition:
		$0 at entrypoint
}
rule _ThemidaWinLicense_V1000V1800_Oreans_Technologies_
{
	meta:
		description = "Themida/WinLicense V1.0.0.0-V1.8.0.0-> Oreans Technologies"
	strings:
		$0 = {B8 00 00 00 00 60 0B C0 74 58 E8 00 00 00 00 58 05 ?? 00 00 00 80 38 E9 75 ?? 61 EB ?? E8 00 00 00 00}
	condition:
		$0 at entrypoint
}
rule _AHTeam_EP_Protector_03_fake_PCGuard_403415__FEUERRADER_
{
	meta:
		description = "AHTeam EP Protector 0.3 (fake PCGuard 4.03-4.15) -> FEUERRADER"
	strings:
		$0 = {90 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 90 FF E0 FC 55 50 E8 00 00 00 00 5D EB 01 E3 60 E8 03 00 00 00 D2 EB 0B 58 EB 01 48 40 EB 01}
	condition:
		$0 at entrypoint
}
rule _EXE_Stealth_v271_
{
	meta:
		description = "EXE Stealth v2.71"
	strings:
		$0 = {EB 00 60 EB 00 E8 00 00 00 00 5D 81 ED B0 27 40}
	condition:
		$0 at entrypoint
}
rule _RLPack_Full_Edition_117_aPLib__Ap0x_
{
	meta:
		description = "RLPack Full Edition 1.17 [aPLib] -> Ap0x"
	strings:
		$0 = {60 E8 00 00 00 00 8B 2C 24 83 C4 04 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 8D B5 74 1F 00 00 8D 9D 1E 03 00 00 33 FF ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? EB 0F FF 74 37 04 FF 34}
	condition:
		$0 at entrypoint
}
rule _FSG_v110_Eng__dulekxt__Microsoft_Visual_Basic__MASM32_
{
	meta:
		description = "FSG v1.10 (Eng) -> dulek/xt -> (Microsoft Visual Basic / MASM32)"
	strings:
		$0 = {EB 02 09 94 0F B7 FF 68 80 ?? ?? 00 81 F6 8E 00 00 00 5B EB 02 11 C2 8D 05 F4 00 00 00 47}
	condition:
		$0 at entrypoint
}
rule _Reflexive_Arcade_Wrapper_
{
	meta:
		description = "Reflexive Arcade Wrapper"
	strings:
		$0 = {55 8B EC 6A FF 68 98 68 42 00 68 14 FA 41 00 64 A1 00 00 00 00 50 64 89 25 00 00 00 00 83 EC 58 53 56 57 89 65 E8 FF 15 F8 50 42 00 33 D2 8A D4 89 15 3C E8 42 00 8B C8 81 E1 FF 00 00 00 89 0D 38 E8 42 00 C1 E1 08 03 CA 89 0D 34 E8 42 00 C1 E8 10 A3 30 E8}
	condition:
		$0 at entrypoint
}
rule _Warning_may_be_SimbyOZ_polycryptor_by_3xpl01t_ver_2xx_25032007_2200_
{
	meta:
		description = "Warning! may be SimbyOZ polycryptor by 3xpl01t ver 2.xx (25.03.2007 22:00)"
	strings:
		$0 = {57 57 8D 7C 24 04 50 B8 00 D0 17 13 AB 58 5F C3 00 00}
	condition:
		$0 at entrypoint
}
rule _PassEXE_v20_
{
	meta:
		description = "PassEXE v2.0"
	strings:
		$0 = {06 1E 0E 0E 07 1F BE ?? ?? B9 ?? ?? 87 14 81 ?? ?? ?? EB ?? C7 ?? ?? ?? 84 00 87 ?? ?? ?? FB 1F 58 4A}
	condition:
		$0 at entrypoint
}
rule _ASPack_v108x__Alexey_Solodovnikov_
{
	meta:
		description = "ASPack v1.08.x -> Alexey Solodovnikov"
	strings:
		$0 = {60 EB 03 5D FF E5 E8 F8 FF FF FF 81 ED 1B 6A 44 00 BB 10 6A 44 00 03 DD 2B 9D 2A}
	condition:
		$0 at entrypoint
}
rule _Crunch_v40_
{
	meta:
		description = "Crunch v4.0"
	strings:
		$0 = {EB 10 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 55 E8 00 00 00 00 5D 81 ED 18 00 00 00 8B C5 55 60 9C 2B 85 E9 06 00 00 89 85 E1 06 00 00 FF 74 24 2C E8 BB 01 00 00 0F 82 92 05 00 00 E8 F1 03 00 00 49 0F 88 86 05 00 00 68 6C D9 B2 96 33 C0 50 E8 24}
	condition:
		$0 at entrypoint
}
rule _Upack_V037__Dwing_
{
	meta:
		description = "Upack V0.37 -> Dwing"
	strings:
		$0 = {0B 01 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 18 10 00 00 10 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? 00 10 00 00 00 02 00 00 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 00 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 00 00 00 00 0A 00 00 00 00 00 00 00 00 00 00 00 ?? ?? ?? ?? 14 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 47 65 74 50 72 6F 63 41 64 64 72 65 73 73 00 00}
		$1 = {60 E8 09 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? ?? 33 C9 5E 87 0E}
		$2 = {BE ?? ?? ?? ?? AD 50 FF ?? ?? EB}
	condition:
		$0 at entrypoint or $1 at entrypoint or $2 at entrypoint
}
rule _Copy_Protector_v20_
{
	meta:
		description = "Copy Protector v2.0"
	strings:
		$0 = {2E A2 ?? ?? 53 51 52 1E 06 B4 ?? 1E 0E 1F BA ?? ?? CD 21 1F}
	condition:
		$0 at entrypoint
}
rule _D1S1G_v11_Beta_pp_Scrambled_EXE__D1N_
{
	meta:
		description = "D1S1G v1.1 Beta ++ Scrambled EXE -> D1N"
	strings:
		$0 = {E8 07 00 00 00 E8 1E 00 00 00 C3 90 58 89 C2 89 C2 25 00 F0 FF FF 50 83 C0 55 8D 00 FF 30 8D 40 04 FF 30 52 C3 8D 40 00 55 8B EC 83 C4 E8 53 56 57 8B 4D 10 8B 45 08 89 45 F8 8B 45 0C 89 45 F4 8D 41 61 8B 38 8D 41 65 8B 00 03 C7 89 45 FC 8D 41 69 8B 00 03 C7 8D 51 6D 8B 12 03 D7 83 C1 71 8B 09 03 CF 2B CA 72 0A 41 87 D1 80 31 FF 41 4A 75 F9 89 45 F0 EB 71 8B}
	condition:
		$0
}
rule _North_Star_PE_Shrinker_13__Liuxingping_
{
	meta:
		description = "North Star PE Shrinker 1.3 -> Liuxingping"
	strings:
		$0 = {9C 60 E8 00 00 00 00 5D B8 B3 85 40 00 2D AC 85 40 00 2B E8 8D B5}
	condition:
		$0 at entrypoint
}
rule _dUP_2x_Patcher__wwwdiablo2oo2cjbnet_
{
	meta:
		description = "dUP 2.x Patcher --> www.diablo2oo2.cjb.net"
	strings:
		$0 = {8B CB 85 C9 74 ?? 80 3A 01 74 08 AC AE 75 0A 42 49 EB EF 47 46 42 49 EB E9}
	condition:
		$0
}
rule _Vx_VCL_encrypted_
{
	meta:
		description = "Vx: VCL (encrypted)"
	strings:
		$0 = {01 B9 ?? ?? 81 34 ?? ?? 46 46 E2 F8 C3}
		$1 = {01 B9 ?? ?? 81 35 ?? ?? 47 47 E2 F8 C3}
	condition:
		$0 at entrypoint or $1 at entrypoint
}
rule _SimplePack_1X_Method2__bagie_
{
	meta:
		description = "SimplePack 1.X (Method2) -> bagie"
	strings:
		$0 = {4D 5A 90 EB 01 00 52 E9 ?? 01 00 00 50 45 00 00 4C 01 02 00 00 00 00 00 00 00 00 00 00 00 00 00 E0 00 0F 03 0B 01 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 0C 00 00 00 00 ?? ?? ?? 00 10 00 00 00 02 00 00 01 00 00 00 00 00 00 00 04 00 00 00 00 00 00 00}
	condition:
		$0
}
rule _WinUpack_v039_final__By_Dwing_c2005_h1_
{
	meta:
		description = "WinUpack v0.39 final -> By Dwing (c)2005 (h1)"
	strings:
		$0 = {BE B0 11 ?? ?? AD 50 FF 76 34 EB 7C 48 01 ?? ?? 0B 01 4C 6F 61 64 4C 69 62 72 61 72 79 41 00 00 18 10 00 00 10 00 00 00 00 ?? ?? ?? 00 00 ?? ?? 00 10 00 00 00 02 00 00 04 00 00 00 00 00 39 00 04 00 00 00 00 00 00 00 00 ?? ?? ?? 00 02 00 00 00 00 00 00}
	condition:
		$0 at entrypoint
}
rule _PseudoSigner_02_DxPack_10__Anorganix_
{
	meta:
		description = "PseudoSigner 0.2 [DxPack 1.0] --> Anorganix"
	strings:
		$0 = {60 E8 00 00 00 00 5D 8B FD 81 ED 90 90 90 90 2B B9 00 00 00 00 81 EF 90 90 90 90 83 BD 90 90 90 90 90 0F 84 00 00 00 00}
	condition:
		$0 at entrypoint
}
rule _CrunchPE_v40_
{
	meta:
		description = "Crunch/PE v4.0"
	strings:
		$0 = {EB 10 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 55 E8 ?? ?? ?? ?? 5D 81 ED 18 ?? ?? ?? 8B C5 55 60 9C 2B 85 E9 06 ?? ?? 89 85 E1 06 ?? ?? FF 74 24 2C E8 BB 01 00 00 0F 82 92 05 00 00 E8 F1 03 00 00 49 0F 88 86 05 00 00 68 6C D9 B2 96 33 C0 50 E8 24}
	condition:
		$0
}
rule _Blade_Joiner_v15_
{
	meta:
		description = "Blade Joiner v1.5"
	strings:
		$0 = {55 8B EC 81 C4 E4 FE FF FF 53 56 57 33 C0 89 45 F0 89 85}
	condition:
		$0 at entrypoint
}
rule _PKTINY_v10_with_TINYPROG_v38_
{
	meta:
		description = "PKTINY v1.0 with TINYPROG v3.8"
	strings:
		$0 = {2E C6 06 ?? ?? ?? 2E C6 06 ?? ?? ?? 2E C6 06 ?? ?? ?? E9 ?? ?? E8 ?? ?? 83}
	condition:
		$0 at entrypoint
}
rule _nBinder_v40_
{
	meta:
		description = "nBinder v4.0"
	strings:
		$0 = {5C 6E 62 34 5F 74 6D 70 5F 30 31 33 32 34 35 34 33 35 30 5C 00 00 00 00 00 00 00 00 00 E9 55 43 4C FF 01 1A 00 00 00 00 96 30 07 77 2C 61 0E EE BA 51 09 99 19 C4 6D 07 8F F4 6A 70 35 A5 63 E9 A3 95 64 9E 32 88 DB 0E A4 B8 DC 79}
	condition:
		$0
}
rule _WARNING__TROJAN__ADinjector_
{
	meta:
		description = "WARNING -> TROJAN -> ADinjector"
	strings:
		$0 = {90 61 BE 00 20 44 00 8D BE 00 F0 FB FF C7 87 9C E0 04 00 6A F0 8A 5E 57 83 CD FF EB 0E}
	condition:
		$0 at entrypoint
}
rule _PESpin_v01__Cyberbob_
{
	meta:
		description = "PESpin v0.1 -> Cyberbob"
	strings:
		$0 = {EB 01 68 60 E8 00 00 00 00 8B 1C 24 83 C3 12 81 2B E8 B1 06 00 FE 4B FD 82 2C 24 5C CB 46 00 0B E4 74 9E 75 01 C7 81 73 04 D7 7A F7 2F 81 73 19 77 00 43 B7 F6 C3 6B B7 00 00 F9 FF E3 C9 C2 08 00 A3 68 72 01 FF 5D 33 C9 41 E2 17 EB 07 EA EB 01 EB EB 0D FF}
		$1 = {EB 01 68 60 E8 00 00 00 00 8B 1C 24 83 C3 12 81 2B E8 B1 06 00 FE 4B FD 82 2C 24 5C CB 46 00 0B E4 74 9E 75 01 C7 81 73 04 D7 7A F7 2F 81 73 19 77 00 43 B7 F6 C3 6B B7 00 00 F9 FF E3 C9 C2 08 00 A3 68 72 01 FF 5D 33 C9 41 E2 17 EB 07 EA EB 01 EB EB 0D FF E8 01 00 00 00 EA 5A 83 EA 0B FF E2 8B 95 B3 28 40 00 8B 42 3C 03 C2 89 85 BD 28 40 00 41 C1 E1 07 8B 0C 01 03 CA 8B 59 10 03 DA 8B 1B 89 9D D1 28 40 00 53 8F 85 C4 27 40 00 BB ?? 00 00 00 B9 A5 08 00 00 8D BD 75 29 40 00 4F 30 1C 39 FE CB E2 F9 68 2D 01 00 00 59 8D BD AA 30 40 00 C0 0C 39 02 E2 FA E8 02 00 00 00 FF 15 5A 8D 85 07 4F 56 00 BB 54 13 0B 00 D1 E3 2B C3 FF E0 E8 01 00 00 00 68 E8 1A 00 00 00 8D 34 28 B8 ?? ?? ?? ?? 2B C9 83 C9 15 0F A3 C8 0F 83 81 00 00 00 8D B4 0D C4 28 40 00 8B D6 B9 10 00 00 00 AC 84 C0 74 06 C0 4E FF 03 E2 F5 E8 00 00 00 00 59 81 C1 1D 00 00 00 52 51 C1 E9 05 23 D1 FF}
	condition:
		$0 at entrypoint or $1 at entrypoint
}
rule _AntiDote_14_SE__SISTeam_
{
	meta:
		description = "AntiDote 1.4 SE -> SIS-Team"
	strings:
		$0 = {68 90 03 00 00 E8 C6 FD FF FF 68 90 03 00 00 E8 BC FD FF FF 68 90 03 00 00 E8 B2 FD FF FF 50 E8 AC FD FF FF 50 E8 A6 FD FF FF 68 69 D6 00 00 E8 9C FD FF FF 50 E8 96 FD FF FF 50 E8 90 FD FF FF 83 C4 20 E8 78 FF FF FF 84 C0 74 4F 68 04 01 00 00 68 10 22 60 00 6A 00 FF 15 08 10 60 00 68 90 03 00 00 E8 68 FD FF FF 68 69 D6 00 00 E8 5E FD FF FF 50 E8 58 FD FF FF 50 E8 52 FD FF FF E8 DD FE FF FF 50 68 A4 10 60 00 68 94 10 60 00 68 10 22 60 00 E8 58 FD FF FF 83 C4 20 33 C0 C2 10 00 8B 4C 24 08 56 8B 74 24 08 33 D2 8B C6 F7 F1 8B C6 85 D2 74 08 33 D2 F7 F1 40 0F AF C1 5E C3}
	condition:
		$0 at entrypoint
}
rule _aPack_v062_
{
	meta:
		description = "aPack v0.62"
	strings:
		$0 = {1E 06 8C C8 8E D8 ?? ?? ?? 8E C0 50 BE ?? ?? 33 FF FC B6}
	condition:
		$0 at entrypoint
}
rule _GameGuard_v20065xx_dll__sign_by_hot_UNP_
{
	meta:
		description = "GameGuard v2006.5.x.x (*.dll) -> sign by hot_UNP"
	strings:
		$0 = {31 FF 74 06 61 E9 4A 4D 50 30 BA 4C 00 00 00 80 7C 24 08 01 0F 85 ?? 01 00 00 60 BE 00}
	condition:
		$0 at entrypoint
}
rule _PKLITE_v114_v115_v120_3_
{
	meta:
		description = "PKLITE v1.14, v1.15, v1.20 (3)"
	strings:
		$0 = {B8 ?? ?? BA ?? ?? 05 ?? ?? 3B ?? ?? ?? 72 ?? B4 09 BA ?? 01 CD 21 CD 20 4E 6F}
	condition:
		$0 at entrypoint
}
rule _PseudoSigner_01_VBOX_43_MTE__Anorganix_
{
	meta:
		description = "PseudoSigner 0.1 [VBOX 4.3 MTE] --> Anorganix"
	strings:
		$0 = {0B C0 0B C0 0B C0 0B C0 0B C0 0B C0 0B C0 0B C0 E9}
	condition:
		$0 at entrypoint
}
rule _Armadillo_v310_
{
	meta:
		description = "Armadillo v3.10"
	strings:
		$0 = {55 8B EC 6A FF 68 E0 97 44 00 68 20 C0 42 00 64 A1 00 00 00 00 50 64 89 25 00 00 00 00 83 EC 58 53 56 57 89 65 E8 FF 15 4C 41 44 00 33 D2 8A D4 89 15 90 A1 44 00 8B C8 81 E1 FF 00 00 00 89 0D 8C A1 44 00 C1 E1 08 03 CA 89 0D 88 A1 44 00 C1 E8 10 A3 84 A1}
	condition:
		$0 at entrypoint
}
rule _RCryptor_v16x__Vaska_
{
	meta:
		description = "RCryptor v1.6x --> Vaska"
	strings:
		$0 = {60 90 61 61 80 7F F0 45 90 60 0F 85 1B 8B 1F FF 68 ?? ?? ?? ?? C3}
	condition:
		$0 at entrypoint
}
rule _Thinstall_Embedded_22X2308__Jitit_
{
	meta:
		description = "Thinstall Embedded 2.2X-2.308 -> Jitit"
	strings:
		$0 = {B8 EF BE AD DE 50 6A 00 FF 15 ?? ?? ?? ?? E9 B9 FF FF FF 8B C1 8B 4C 24 04 89 88 29 04 00 00 C7 40 0C 01 00 00 00 0F B6 49 01 D1 E9 89 48 10 C7 40 14 80 00 00 00 C2 04 00 8B 44 24 04 C7 41 0C 01 00 00 00 89 81 29 04 00 00 0F B6 40 01 D1 E8 89 41 10 C7 41 14 80 00 00 00 C2 04 00 55 8B EC 53 56 57 33 C0 33 FF 39 45 0C 8B F1 76 0C 8B 4D 08 03 3C 81 40 3B 45 0C 72 F4 8B CE E8 43 00 00 00 8B 46 14 33 D2 F7 F7 8B 5E 10 33 D2 8B F8 8B C3 F7 F7 89 7E 18 89 45 0C 33 C0 33 C9 8B 55 08 03 0C 82 40 39 4D 0C 73 F4 48 8B 14 82 2B CA 0F AF CF 2B D9 0F AF FA 89 7E 14 89 5E 10 5F 5E 5B 5D C2 08 00}
	condition:
		$0 at entrypoint
}
rule _Simple_UPX_Cryptor_v3042005_One_layer_encryption__MANtiCORE_
{
	meta:
		description = "Simple UPX Cryptor v30.4.2005 [One layer encryption] --> MANtiCORE"
	strings:
		$0 = {60 B8 ?? ?? ?? 00 B9 ?? 01 00 00 80 34 08 ?? E2 FA 61 68 ?? ?? ?? 00 C3}
	condition:
		$0 at entrypoint
}
rule _VBOX_v43__v46_
{
	meta:
		description = "VBOX v4.3 - v4.6"
	strings:
		$0 = {8B C5 8B C5 8B C5 8B C5 8B C5 8B C5 8B C5 8B C5 8B C5 8B C5 8B C5 8B C5 8B C5 8B C5 8B C5 8B C5}
		$1 = {90 03 C4 33 C4 33 C5 2B C5 33 C5 8B C5 ?? ?? 2B C5 48 ?? ?? 0B C0 86 E0 8C E0 ?? ?? 8C E0 86 E0 03 C4 40}
	condition:
		$0 or $1
}
rule _AHTeam_EP_Protector_03_fake_PECrypt_102__FEUERRADER_
{
	meta:
		description = "AHTeam EP Protector 0.3 (fake PE-Crypt 1.02) -> FEUERRADER"
	strings:
		$0 = {90 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 90 FF E0 E8 00 00 00 00 5B 83 EB 05 EB 04 52 4E 44}
	condition:
		$0 at entrypoint
}
rule _PseudoSigner_01_PECompact_14p__Anorganix_
{
	meta:
		description = "PseudoSigner 0.1 [PECompact 1.4+] --> Anorganix"
	strings:
		$0 = {90 90 90 90 68 ?? ?? ?? ?? 67 64 FF 36 00 00 67 64 89 26 00 00 F1 90 90 90 90 EB 06 68 90 90 90 90 C3 9C 60 E8 02 90 90 90 33 C0 8B C4 83 C0 04 93 8B E3 8B 5B FC 81}
	condition:
		$0 at entrypoint
}
rule _Exe_Locker_v10__IonIce_
{
	meta:
		description = "Exe Locker v1.0 --> IonIce"
	strings:
		$0 = {E8 00 00 00 00 60 8B 6C 24 20 81 ED 05 00 00 00 3E 8F 85 6C 00 00 00 3E 8F 85 68 00 00 00 3E 8F 85 64 00 00 00 3E 8F 85 60 00 00 00 3E 8F 85 5C 00 00 00 3E 8F 85 58 00 00 00 3E 8F 85 54 00 00}
	condition:
		$0 at entrypoint
}
rule _EXE32Pack_v139_
{
	meta:
		description = "EXE32Pack v1.39"
	strings:
		$0 = {3B C0 74 02 81 83 55 3B C0 74 02 81 83 53 3B C9 74 01 BC ?? ?? ?? ?? 02 81 ?? ?? ?? ?? ?? ?? ?? 3B DB 74 01 BE 5D 8B D5 81 ED EC 8D 40}
	condition:
		$0 at entrypoint
}
rule _PseudoSigner_01_Microsoft_Visual_Cpp_620__Anorganix_
{
	meta:
		description = "PseudoSigner 0.1 [Microsoft Visual C++ 6.20] --> Anorganix"
	strings:
		$0 = {90 90 90 90 68 ?? ?? ?? ?? 67 64 FF 36 00 00 67 64 89 26 00 00 F1 90 90 90 90 55 8B EC 83 EC 50 53 56 57 BE 90 90 90 90 8D 7D F4 A5 A5 66 A5 8B}
	condition:
		$0 at entrypoint
}
rule _PECompact_v120__v1201_
{
	meta:
		description = "PECompact v1.20 - v1.20.1"
	strings:
		$0 = {EB 06 68 ?? ?? ?? ?? C3 9C 60 E8 02 ?? ?? ?? 33 C0 8B C4 83 C0 04 93 8B E3 8B 5B FC 81 EB 0F 70 40 ?? 87 DD 8B 85 9A 70 40}
	condition:
		$0 at entrypoint
}
rule _D1NS1G__D1N_
{
	meta:
		description = "D1NS1G -> D1N"
	strings:
		$0 = {18 37 00 00 00 00 00 00 01 00 0A 00 00 00 18 00 00 80 00 00 00 00 ?? ?? 18 37 00 00 00 00 02 00 00 00 88 00 00 80 38 00 00 80 96 00 00 80 50 00 00 80 00 00 00 00 ?? ?? 18 37 00 00 00 00 00 00 01 00 00 00 00 00 68 00 00 00 00 00 00 00 ?? ?? 18 37 00 00 00 00 00 00 01 00 00 00 00 00 78 00 00 00 B0 F0 00 00 10 00 00 00 00 00 00 00 00 00 00 00 C0 F0 00 00 60 00 00 00 00 00 00 00 00 00 00 00 06 00 44 00 56 00 43 00 4C 00 41 00 4C 00 0B 00 50 00 41 00 43 00 4B 00 41 00 47 00 45 00 49 00 4E 00 46 00 4F 00 00 00 00 00 00 00 00 00 00 00 00 00}
	condition:
		$0
}
rule _XPack_167_
{
	meta:
		description = "XPack 1.67"
	strings:
		$0 = {B8 8C D3 15 33 75 81 3E E8 0F 00 9A E8 F9 FF 9A 9C EB 01 9A 59 80 CD 01 51 9D EB}
	condition:
		$0 at entrypoint
}
rule _Native_UD_Packer_11_Modded_Poison_Ivy_Shellcode__okkixot_
{
	meta:
		description = "Native UD Packer 1.1 (Modded Poison Ivy Shellcode) -> okkixot"
	strings:
		$0 = {31 C0 31 DB 31 C9 EB 0E 6A 00 6A 00 6A 00 6A 00 FF 15 28 41 40 00 FF 15 94 40 40 00 89 C7 68 88 13 00 00 FF 15 98 40 40 00 FF 15 94 40 40 00 81 C7 88 13 00 00 39 F8 73 05 E9 84 00 00 00 6A 40 68 00 10 00 00 FF 35 04 30 40 00 6A 00 FF 15 A4 40 40 00 89 C7 FF 35 04 30 40 00 68 CA 10 40 00 50 FF 15 A8 40 40 00 6A 40 68 00 10 00 00 FF 35 08 30 40 00 6A 00 FF 15 A4 40 40 00 89 C6 68 00 30 40 00 FF 35 04 30 40 00 57 FF 35 08 30 40 00 50 6A 02 FF 15 4E 41 40 00 6A 00 6A 00 6A 00 56 6A 00 6A 00 FF 15 9C 40 40 00 50 6A 00 6A 00 6A 11 50 FF 15 4A 41 40 00 58 6A FF 50 FF 15 AC 40 40 00 6A 00 FF 15 A0 40}
	condition:
		$0 at entrypoint
}
rule _PseudoSigner_01_PE_Intro_10__Anorganix_
{
	meta:
		description = "PseudoSigner 0.1 [PE Intro 1.0] --> Anorganix"
	strings:
		$0 = {8B 04 24 9C 60 E8 14 00 00 00 5D 81 ED 0A 45 40 90 80 BD 67 44 40 90 90 0F 85 48 FF ED 0A E9}
	condition:
		$0 at entrypoint
}
rule _HASP_HL_Protection_V1X__Aladdin_
{
	meta:
		description = "HASP HL Protection V1.X -> Aladdin"
	strings:
		$0 = {55 8B EC 53 56 57 60 8B C4 A3 ?? ?? ?? ?? B8 ?? ?? ?? ?? 2B 05 ?? ?? ?? ?? A3 ?? ?? ?? ?? 83 3D ?? ?? ?? ?? 00 74 15 8B 0D ?? ?? ?? ?? 51 FF 15 ?? ?? ?? ?? 83 C4 04 E9 A5 00 00 00 68 ?? ?? ?? ?? FF 15 ?? ?? ?? ?? A3 ?? ?? ?? ?? 68 ?? ?? ?? ?? FF 15}
		$1 = {55 8B EC 53 56 57 60 8B C4 A3 ?? ?? ?? ?? B8 ?? ?? ?? ?? 2B 05 ?? ?? ?? ?? A3 ?? ?? ?? ?? 83 3D ?? ?? ?? ?? 00 74 15 8B 0D ?? ?? ?? ?? 51 FF 15 ?? ?? ?? ?? 83 C4 04 E9 A5 00 00 00 68 ?? ?? ?? ?? FF 15 ?? ?? ?? ?? A3 ?? ?? ?? ?? 68 ?? ?? ?? ?? FF 15 ?? ?? ?? ?? A3 ?? ?? ?? ?? 8B 15}
	condition:
		$0 at entrypoint or $1 at entrypoint
}
rule _PCGuard_v405d_v410d_v415d_
{
	meta:
		description = "PC-Guard v4.05d, v4.10d, v4.15d"
	strings:
		$0 = {FC 55 50 E8 00 00 00 00 5D EB 01}
	condition:
		$0 at entrypoint
}
rule _PseudoSigner_02_FSG_10__Anorganix_
{
	meta:
		description = "PseudoSigner 0.2 [FSG 1.0] --> Anorganix"
	strings:
		$0 = {90 90 90 90 68 ?? ?? ?? ?? 67 64 FF 36 00 00 67 64 89 26 00 00 F1 90 90 90 90 BB D0 01 40 00 BF 00 10 40 00 BE 90 90 90 90 53 E8 0A 00 00 00 02 D2 75 05 8A 16 46 12 D2 C3 FC B2 80 A4 6A 02 5B}
	condition:
		$0 at entrypoint
}
rule _Reg2Exe_220221__by_Jan_Vorel_
{
	meta:
		description = "Reg2Exe 2.20/2.21 - by Jan Vorel"
	strings:
		$0 = {6A 00 E8 7D 12 00 00 A3 A0 44 40 00 E8 79 12 00 00 6A 0A 50 6A 00 FF 35 A0 44 40 00 E8 0F 00 00 00 50 E8 69 12 00 00 CC CC CC CC CC CC CC CC CC 68 2C 02 00 00 68 00 00 00 00 68 B0 44 40 00 E8 3A 12 00 00 83 C4 0C 8B 44 24 04 A3 B8 44 40 00 68 00 00 00 00 68 A0 0F 00 00 68 00 00 00 00 E8 32 12 00 00 A3 B0 44 40 00 68 F4 01 00 00 68 BC 44 40 00 FF 35 B8 44 40 00 E8 1E 12 00 00 B8 BC 44 40 00 89 C1 8A 30 40 80 FE 5C 75 02 89 C1 80 FE 00 75 F1 C6 01 00 E8 EC 18 00 00 E8 28 16 00 00 E8 4A 12 00 00 68 00 FA 00 00 68 08 00 00 00 FF 35 B0 44 40 00 E8 E7 11 00 00 A3 B4 44 40 00 8B 15 D4 46 40 00 E8 65 0A 00 00 BB 00 00 10 00 B8 01 00 00 00 E8 72 0A 00 00 74 09 C7 00 01 00 00 00 83 C0 04 A3 D4 46 40 00 FF 35 B4 44 40 00 E8 26 05 00 00 8D 0D B8 46 40 00 5A E8 CF 0F 00 00 FF 35 B4 44 40 00 FF 35 B8 46 40 00 E8 EE 06 00 00 8D 0D B4 46 40 00 5A E8}
	condition:
		$0 at entrypoint
}
rule _PseudoSigner_01_Yodas_Protector_102__Anorganix_
{
	meta:
		description = "PseudoSigner 0.1 [Yoda's Protector 1.02] --> Anorganix"
	strings:
		$0 = {E8 03 00 00 00 EB 01 90 90 E9}
	condition:
		$0 at entrypoint
}
rule _ASPack_v10802__Alexey_Solodovnikov_
{
	meta:
		description = "ASPack v1.08.02 -> Alexey Solodovnikov"
	strings:
		$0 = {60 EB 0A 5D EB 02 FF 25 45 FF E5 E8 E9 E8 F1 FF FF FF E9 81 ED 23 6A 44 00 BB 10 ?? 44 00 03 DD 2B 9D 72}
	condition:
		$0 at entrypoint
}
rule _ProActivate_V10X__TurboPower_Software_Company_
{
	meta:
		description = "ProActivate V1.0X -> TurboPower Software Company"
	strings:
		$0 = {55 8B EC B9 0E 00 00 00 6A 00 6A 00 49 75 F9 51 53 56 57 B8 ?? ?? ?? ?? 90 90 90 90 90 33 C0 55 68 ?? ?? ?? ?? 64 FF 30 64 89 20 A1 ?? ?? ?? ?? 83 C0 05 A3 ?? ?? ?? ?? C7 05 ?? ?? ?? ?? 0D 00 00 00 E8 85 E2 FF FF 81 3D ?? ?? ?? ?? 21 7E 7E 40 75 7A 81 3D ?? ?? ?? ?? 43 52 43 33 75 6E 81 3D ?? ?? ?? ?? 32 40 7E 7E 75 62 81 3D ?? ?? ?? ?? 21 7E 7E 40 75 56 81 3D ?? ?? ?? ?? 43 52 43 33 75 4A 81 3D ?? ?? ?? ?? 32 40 7E 7E 75 3E 81 3D ?? ?? ?? ?? 21 7E 7E 40 75 32 81 3D ?? ?? ?? ?? 43 52 43 33}
	condition:
		$0 at entrypoint
}
rule _CRYPToCRACks_PE_Protector_V092__Lukas_Fleischer_
{
	meta:
		description = "CRYPToCRACk's PE Protector V0.9.2 -> Lukas Fleischer"
	strings:
		$0 = {E8 01 00 00 00 E8 58 5B 81 E3 00 FF FF FF 66 81 3B 4D 5A 75 37 84 DB 75 33 8B F3 03 ?? ?? 81 3E 50 45 00 00 75 26}
	condition:
		$0 at entrypoint
}
rule _Unnamed_Scrambler_25A__p0ke_
{
	meta:
		description = "Unnamed Scrambler 2.5A -> p0ke"
	strings:
		$0 = {55 8B EC B9 0B 00 00 00 6A 00 6A 00 49 75 F9 51 53 56 57 B8 6C 3E 40 00 E8 F7 EA FF FF 33 C0 55 68 60 44 40 00 64 FF 30 64 89 20 BA 70 44 40 00 B8 B8 6C 40 00 E8 62 F3 FF FF 8B D8 85 DB 75 07 6A 00 E8 A1 EB FF FF BA E8 64 40 00 8B C3 8B 0D B8 6C 40 00 E8 37 D3 FF FF C7 05 BC 6C 40 00 0A 00 00 00 BB 68 6C 40 00 BE 90 6C 40 00 BF E8 64 40 00 B8 C0 6C 40 00 BA 04 00 00 00 E8 07 EC FF FF 83 3B 00 74 04 33 C0 89 03 8B D7 8B C6 E8 09 F3 FF FF 89 03 83 3B 00 0F 84 BB 04 00 00 B8 C0 6C 40 00 8B 16 E8 06 E2 FF FF B8 C0 6C 40 00 E8 24 E1 FF FF 8B D0 8B 03 8B 0E E8 D1 D2 FF FF 8B C7 A3 20 6E 40 00 8D 55 EC 33 C0 E8 0C D4 FF FF 8B 45 EC B9 1C 6E 40 00 BA 18 6E 40 00}
	condition:
		$0
}
rule _BeRoEXEPacker_v100_LZBRS__BeRo__Farbrausch_
{
	meta:
		description = "BeRoEXEPacker v1.00 [LZBRS] -> BeRo / Farbrausch"
	strings:
		$0 = {60 BE ?? ?? ?? ?? BF ?? ?? ?? ?? FC AD 8D 1C 07 B0 80 3B FB 73 3B E8 ?? ?? ?? ?? 72 03 A4 EB F2 E8 ?? ?? ?? ?? 8D 51 FF E8 ?? ?? ?? ?? 56 8B F7 2B F2 F3 A4 5E EB DB 02 C0 75 03 AC 12 C0 C3 33}
	condition:
		$0 at entrypoint
}
rule _Open_Source_Code_Crypter__p0ke_
{
	meta:
		description = "Open Source Code Crypter -> p0ke"
	strings:
		$0 = {55 8B EC B9 09 00 00 00 6A 00 6A 00 49 75 F9 53 56 57 B8 34 44 40 00 E8 28 F8 FF FF 33 C0 55 68 9F 47 40 00 64 FF 30 64 89 20 BA B0 47 40 00 B8 1C 67 40 00 E8 07 FD FF FF 8B D8 85 DB 75 07 6A 00 E8 C2 F8 FF FF BA 28 67 40 00 8B C3 8B 0D 1C 67 40 00 E8 F0 E0 FF FF BE 01 00 00 00 B8 2C 68 40 00 E8 E1 F0 FF FF BF 0A 00 00 00 8D 55 EC 8B C6 E8 92 FC FF FF 8B 4D EC B8 2C 68 40 00 BA BC 47 40 00 E8 54 F2 FF FF A1 2C 68 40 00 E8 52 F3 FF FF 8B D0 B8 20 67 40 00 E8 A2 FC FF FF 8B D8 85 DB 0F 84 52 02 00 00 B8 24 67 40 00 8B 15 20 67 40 00 E8 78 F4 FF FF B8 24 67 40 00 E8 7A F3 FF FF 8B D0 8B C3 8B 0D 20 67 40 00 E8 77 E0 FF FF 8D 55 E8 A1 24 67 40 00 E8 42 FD FF FF 8B 55 E8 B8 24 67 40 00}
	condition:
		$0
}
rule _KGCrypt_vxx_
{
	meta:
		description = "KGCrypt vx.x"
	strings:
		$0 = {E8 ?? ?? ?? ?? 5D 81 ED ?? ?? ?? ?? 64 A1 30 ?? ?? ?? 84 C0 74 ?? 64 A1 20 ?? ?? ?? 0B C0 74}
	condition:
		$0 at entrypoint
}
rule _Apex_c_beta__500mhz_
{
	meta:
		description = "Apex_c beta -> 500mhz"
	strings:
		$0 = {68 ?? ?? ?? ?? B9 FF FF FF 00 01 D0 F7 E2 72 01 48 E2 F7 B9 FF 00 00 00 8B 34 24 80 36 FD 46 E2 FA C3 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00}
	condition:
		$0 at entrypoint
}
rule _FSG_v12_
{
	meta:
		description = "FSG v1.2"
	strings:
		$0 = {4B 45 52 4E 45 4C 33 32 2E 64 6C 6C 00 00 4C 6F 61 64 4C 69 62 72 61 72 79 41 00 00 47 65 74 50 72 6F 63 41 64 64 72 65 73 73 00 ?? 00 00 00 00 00}
	condition:
		$0 at entrypoint
}
rule _ORiEN_v211_DEMO_
{
	meta:
		description = "ORiEN v2.11 (DEMO)"
	strings:
		$0 = {E9 5D 01 00 00 CE D1 CE CE 0D 0A 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 0D 0A 2D 20 4F 52 69 45 4E 20 65 78 65 63 75 74 61 62 6C 65 20 66 69 6C 65 73 20 70 72 6F}
	condition:
		$0 at entrypoint
}
rule _Private_EXE_Protector_20__SetiSoft_
{
	meta:
		description = "Private EXE Protector 2.0 -> SetiSoft"
	strings:
		$0 = {89 ?? ?? 38 00 00 00 8B ?? 00 00 00 00 81 ?? ?? ?? ?? ?? 89 ?? 00 00 00 00 81 ?? 04 00 00 00 81 ?? 04 00 00 00 81 ?? 00 00 00 00 0F 85 D6 FF FF FF}
	condition:
		$0
}
rule _SVKProtector_v132_
{
	meta:
		description = "SVK-Protector v1.32"
	strings:
		$0 = {60 E8 00 00 00 00 5D 81 ED 06 00 00 00 EB 05 B8 06 36 42 00 64 A0 23}
	condition:
		$0 at entrypoint
}
rule _EXE_Stealth_v276__WebToolMaster_
{
	meta:
		description = "EXE Stealth v2.76 -> WebToolMaster"
	strings:
		$0 = {EB 65 45 78 65 53 74 65 61 6C 74 68 20 56 32 20 2D 20 77 77 77 2E 77 65 62 74 6F 6F 6C 6D 61 73 74 65 72 2E 63 6F 6D 20 59 4F 55 52 20 41 44 20 48 45 52 45 21 50 69 52 41 43 59 20 69 53 20 41}
	condition:
		$0 at entrypoint
}
rule _COP_v10_c_1988_
{
	meta:
		description = "COP v1.0 (c) 1988"
	strings:
		$0 = {BF ?? ?? BE ?? ?? B9 ?? ?? AC 32 ?? ?? ?? AA E2 ?? 8B ?? ?? ?? EB ?? 90}
	condition:
		$0 at entrypoint
}
rule _y0das_Crypter_v12_
{
	meta:
		description = "y0da's Crypter v1.2"
	strings:
		$0 = {60 E8 00 00 00 00 5D 81 ED F3 1D 40 00 B9 7B 09 00 00 8D BD 3B 1E 40 00 8B F7 AC ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? AA E2 CC}
	condition:
		$0 at entrypoint
}
rule _Cruncher_v10_
{
	meta:
		description = "Cruncher v1.0"
	strings:
		$0 = {2E ?? ?? ?? ?? 2E ?? ?? ?? B4 30 CD 21 3C 03 73 ?? BB ?? ?? 8E DB 8D ?? ?? ?? B4 09 CD 21 06 33 C0 50 CB}
	condition:
		$0 at entrypoint
}
rule _ExeSplitter_13_Split_Method__Bill_Prisoner__TPOC_
{
	meta:
		description = "ExeSplitter 1.3 (Split Method) -> Bill Prisoner / TPOC"
	strings:
		$0 = {E8 00 00 00 00 5D 81 ED 08 12 40 00 E8 66 FE FF FF 55 50 8D 9D 81 11 40 00 53 8D 9D 21 11 40 00 53 6A 08 E8 76 FF FF FF 6A 40 68 00 30 00 00 68 00 01 00 00 6A 00 FF 95 89 11 40 00 89 85 61 10 40 00 50 68 00 01 00 00 FF 95 85 11 40 00 8D 85 65 10 40 00 50 FF B5 61 10 40 00 FF 95 8D 11 40 00 6A 00 68 80 00 00 00 6A 02 6A 00 ?? ?? ?? ?? 01 1F 00 FF B5 61 10 40 00 FF 95 91 11 40 00 89 85 72 10 40 00 6A 00 8D ?? ?? ?? ?? 00 50 FF B5 09 10 40 00 8D 85 F5 12 40 00 50 FF B5 72 10 40 00 FF 95 95 11 40 00 FF B5 72 10 40 00 FF 95 99 11 40 00 8D 85 0D 10 40 00 50 8D 85 1D 10 40 00 50 B9 07 00 00 00 6A 00 E2 FC}
		$1 = {E9 FE 01 00 00 ?? ?? ?? ?? ?? ?? ?? 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 73 76 63 45 72 30 31 31 2E 74 6D 70 00 00 00 00 00 00 00 00 00 64 A1 30 00 00 00 8B 40 0C 8B 40 0C 8B 00 85 C0 0F 84 5F 02 00 00 8B 48 30 80 39 6B 74 07 80 39 4B 74 02 EB E7 80 79 0C 33 74 02 EB DF 8B 40 18 C3}
	condition:
		$0 or $1 at entrypoint
}
rule _Vx_Doom666_
{
	meta:
		description = "Vx: Doom.666"
	strings:
		$0 = {E8 ?? ?? ?? 5E 83 EE ?? B8 CF 7B CD 21 3D CF 7B ?? ?? 0E 1F 81 C6 ?? ?? BF ?? ?? B9 ?? ?? FC F3 A4 06 1F 06 B8 ?? ?? 50 CB B4 48 BB 2C 00 CD 21}
	condition:
		$0 at entrypoint
}
rule _SDProtector_BasicPro_Edition_110__Randy_Li_
{
	meta:
		description = "SDProtector Basic/Pro Edition 1.10 -> Randy Li"
	strings:
		$0 = {55 8B EC 6A FF 68 1D 32 13 05 68 88 88 88 08 64 A1 00 00 00 00 50 64 89 25 00 00 00 00 58 64 A3 00 00 00 00 58 58 58 58 8B E8 50 83 EC 08 64 A1 00 00 00 00 64 FF 35 00 00 00 00 64 89 25 00 00 00 00 83 C4 08 50 64 FF 35 00 00 00 00 64 89 25 00 00 00 00 64}
	condition:
		$0 at entrypoint
}
rule _PE_Crypt32_v102_
{
	meta:
		description = "PE Crypt32 v1.02"
	strings:
		$0 = {E8 00 00 00 00 5B 83 ?? ?? EB ?? 52 4E 44 21}
	condition:
		$0 at entrypoint
}
rule _AHTeam_EP_Protector_03_fake_VOB_ProtectCD__FEUERRADER_
{
	meta:
		description = "AHTeam EP Protector 0.3 (fake VOB ProtectCD) -> FEUERRADER"
	strings:
		$0 = {90 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 90 FF E0 5F 81 EF 00 00 00 00 BE 00 00 40 00 8B 87 00 00 00 00 03 C6 57 56 8C A7 00 00 00 00 FF 10 89 87 00 00 00 00 5E 5F}
	condition:
		$0 at entrypoint
}
rule _UPX_v103__v104_
{
	meta:
		description = "UPX v1.03 - v1.04"
	strings:
		$0 = {8A 06 46 88 07 47 01 DB 75 07 8B 1E 83 EE FC 11 DB 8A 07 72 EB B8 01 00 00 00 01 DB 75 07 8B 1E 83 EE FC 11 DB 11 C0 01 DB 73 ?? 75 ?? 8B 1E 83 EE FC}
	condition:
		$0 at entrypoint
}
rule _USERNAME_v300_
{
	meta:
		description = "USERNAME v3.00"
	strings:
		$0 = {FB 2E ?? ?? ?? ?? 2E ?? ?? ?? ?? 2E ?? ?? ?? ?? 2E ?? ?? ?? ?? 8C C8 2B C1 8B C8 2E ?? ?? ?? ?? 2E ?? ?? ?? ?? 33 C0 8E D8 06 0E 07 FC 33 F6}
	condition:
		$0 at entrypoint
}
rule _Krypton_v05_
{
	meta:
		description = "Krypton v0.5"
	strings:
		$0 = {54 E8 ?? ?? ?? ?? 5D 8B C5 81 ED 71 44 ?? ?? 2B 85 64 60 ?? ?? EB 43 DF}
	condition:
		$0 at entrypoint
}
rule _PESPin_v13__Cyberbob_
{
	meta:
		description = "PESPin v1.3 -> Cyberbob"
	strings:
		$0 = {EB 01 68 60 E8 00 00 00 00 8B 1C 24 83 C3 12 81 2B E8 B1 06 00 FE 4B FD 82 2C 24 AC DF 46 00 0B E4 74 9E 75 01 C7 81 73 04 D7 7A F7 2F 81 73 19 77 00 43 B7 F6 C3 6B B7 00 00 F9 FF E3 C9 C2 08 00 A3 68 72 01 FF 5D 33 C9 41 E2 17 EB 07 EA EB 01 EB EB 0D FF}
	condition:
		$0 at entrypoint
}
rule _Obsidium_V1304__Obsidium_Software_
{
	meta:
		description = "Obsidium V1.3.0.4 -> Obsidium Software"
	strings:
		$0 = {EB 02 ?? ?? E8 ?? 00 00 00}
	condition:
		$0 at entrypoint
}
rule _PseudoSigner_02_PE_Pack_099__Anorganix_
{
	meta:
		description = "PseudoSigner 0.2 [PE Pack 0.99] --> Anorganix"
	strings:
		$0 = {60 E8 11 00 00 00 5D 83 ED 06 80 BD E0 04 90 90 01 0F 84 F2 FF CC 0A}
	condition:
		$0 at entrypoint
}
rule _Thinstall_Virtualization_Suite_30X__Thinstall_Company_
{
	meta:
		description = "Thinstall Virtualization Suite 3.0X -> Thinstall Company"
	strings:
		$0 = {9C 60 68 ?? ?? ?? ?? 68 ?? ?? ?? ?? E8 00 00 00 00 58 BB ?? ?? ?? ?? 2B C3 50 68 ?? ?? ?? ?? 68 ?? ?? ?? ?? 68 ?? ?? ?? ?? E8 BA FE FF FF E9 ?? ?? ?? ?? CC CC CC CC CC CC CC 55 8B EC 83 C4 F4 FC 53 57 56 8B 75 08 8B 7D 0C C7 45 FC 08 00 00 00 33 DB BA}
		$1 = {9C 60 68 ?? ?? ?? ?? 68 ?? ?? ?? ?? E8 00 00 00 00 58 BB ?? ?? ?? ?? 2B C3 50 68 ?? ?? ?? ?? 68 ?? ?? ?? ?? 68 ?? ?? ?? ?? E8 BA FE FF FF E9 ?? ?? ?? ?? CC CC CC CC CC CC CC 55 8B EC 83 C4 F4 FC 53 57 56 8B 75 08 8B 7D 0C C7 45 FC 08 00 00 00 33 DB BA ?? ?? ?? ?? 43 33 C0 E8 19 01 00 00 73 0E 8B 4D F8 E8 27 01 00 00 02 45 F7 AA EB E9 E8 04 01 00 00 0F 82 96 00 00 00 E8 F9 00 00 00 73 5B B9 04 00 00 00 E8 05 01 00 00 48 74 DE 0F 89 ?? ?? ?? ?? E8 DF 00 00 00 73 1B 55 BD ?? ?? ?? ?? E8 DF 00 00 00 88 07 47 4D 75 F5 E8 C7 00 00 00 72 E9 5D EB}
	condition:
		$0 at entrypoint or $1 at entrypoint
}
rule _Exe_Shield_v27_
{
	meta:
		description = "Exe Shield v2.7"
	strings:
		$0 = {EB 06 68 F4 86 06 00 C3 9C 60 E8 02 00 00}
	condition:
		$0 at entrypoint
}
rule _WWPack32_v1x_
{
	meta:
		description = "WWPack32 v1.x"
	strings:
		$0 = {53 55 8B E8 33 DB EB 60}
	condition:
		$0 at entrypoint
}
rule _Morphine_v33__Silent_Software__Silent_Shield_c2005_
{
	meta:
		description = "Morphine v3.3 -> Silent Software & Silent Shield (c)2005"
	strings:
		$0 = {28 ?? ?? ?? 00 00 00 00 00 00 00 00 40 ?? ?? ?? 34 ?? ?? ?? 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 4C ?? ?? ?? 5C ?? ?? ?? 00 00 00 00 4C ?? ?? ?? 5C ?? ?? ?? 00 00 00 00 4B 65 52 6E 45 6C 33 32 2E 64 4C 6C 00 00 47 65 74 50 72 6F 63}
		$1 = {28 ?? ?? ?? 00 00 00 00 00 00 00 00 40 ?? ?? ?? 34 ?? ?? ?? 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 4C ?? ?? ?? 5C ?? ?? ?? 00 00 00 00 4C ?? ?? ?? 5C ?? ?? ?? 00 00 00 00 4B 65 52 6E 45 6C 33 32 2E 64 4C 6C 00 00 47 65 74 50 72 6F 63 41 64 64 72 65 73 73 00 00 4C 6F 61 64 4C 69 62 72 61 72 79 41}
	condition:
		$0 or $1
}
rule _FSG_v110_Eng__dulekxt__Microsoft_Visual_Cpp_50__60_
{
	meta:
		description = "FSG v1.10 (Eng) -> dulek/xt -> (Microsoft Visual C++ 5.0 / 6.0)"
	strings:
		$0 = {33 D2 0F BE D2 EB 01 C7 EB 01 D8 8D 05 80 ?? ?? ?? EB 02 CD 20 EB 01 F8 BE F4 00 00 00 EB}
	condition:
		$0 at entrypoint
}
rule _Unnamed_Scrambler_20__p0ke_
{
	meta:
		description = "Unnamed Scrambler 2.0 -> p0ke"
	strings:
		$0 = {55 8B EC B9 0A 00 00 00 6A 00 6A 00 49 75 F9 53 56 57 B8 1C 2F 40 00 E8 C8 F1 FF FF 33 C0 55 68 FB 33 40 00 64 FF 30 64 89 20 BA 0C 34 40 00 B8 E4 54 40 00 E8 EF FE FF FF 8B D8 85 DB 75 07 6A 00 E8 5A F2 FF FF BA E8 54 40 00 8B C3 8B 0D E4 54 40 00 E8 74 E2 FF FF C7 05 20 6B 40 00 09 00 00 00 BB 98 69 40 00 C7 45 EC E8 54 40 00 C7 45 E8 31 57 40 00 C7 45 E4 43 60 40 00 BE D3 6A 40 00 BF E0 6A 40 00 83 7B 04 00 75 0B 83 3B 00 0F 86 AA 03 00 00 EB 06 0F 8E A2 03 00 00 8B 03 8B D0 B8 0C 6B 40 00 E8 C1 EE FF FF B8 0C 6B 40 00 E8 6F EE FF FF 8B D0 8B 45 EC 8B 0B E8 0B E2 FF FF 6A 00 6A 1E 6A 00 6A 2C A1 0C 6B 40 00 E8 25 ED FF FF 8D 55 E0 E8 15 FE FF FF 8B 55 E0 B9 10 6B 40 00 A1 0C 6B 40 00}
	condition:
		$0
}
rule _SPLayer_v008_
{
	meta:
		description = "SPLayer v0.08"
	strings:
		$0 = {8D 40 00 B9 ?? ?? ?? ?? 6A ?? 58 C0 0C ?? ?? 48 ?? ?? 66 13 F0 91 3B D9 ?? ?? ?? ?? ?? ?? ?? ?? 00 00 00 00}
	condition:
		$0
}
rule _MSLRH_v032a_fake_UPX_0896__102__105__124__emadicius_
{
	meta:
		description = "[MSLRH] v0.32a (fake UPX 0.89.6 - 1.02 / 1.05 - 1.24) -> emadicius"
	strings:
		$0 = {60 BE 00 90 8B 00 8D BE 00 80 B4 FF 57 83 CD FF EB 3A 90 90 90 90 90 90 8A 06 46 88 07 47 01 DB 75 07 8B 1E 83 EE FC 11 DB 72 ED B8 01 00 00 00 01 DB 75 07 8B 1E 83 EE FC 11 DB 11 C0 01 DB 73 0B 75 19 8B 1E 83 EE FC 11 DB 72 10 58 61 90 EB 05 E8 EB 04 40 00 EB FA E8 0A 00 00 00 E8 EB 0C 00 00 E8 F6 FF FF FF E8 F2 FF FF FF 83 C4 08 74 04 75 02 EB 02 EB 01 81 50 E8 02 00 00 00 29 5A 58 6B C0 03 E8 02 00 00 00 29 5A 83 C4 04 58 74 04 75 02 EB 02 EB 01 81 0F 31 50 0F 31 E8 0A 00 00 00 E8 EB 0C 00 00 E8 F6 FF FF FF E8 F2 FF FF FF}
	condition:
		$0 at entrypoint
}
rule _SimplePack_111_Method_2NT__bagieTMX_
{
	meta:
		description = "SimplePack 1.11 Method 2(NT) -> bagie[TMX]"
	strings:
		$0 = {4D 5A 90 EB 01 00 52 E9 89 01 00 00 50 45 00 00 4C 01 02 00 00 00 00 00 00 00 00 00 00 00 00 00 E0 00 0F 03 0B 01}
	condition:
		$0 at entrypoint
}
rule _FSG_v110_Eng__dulekxt__Microsoft_Visual_Cpp_60__70_
{
	meta:
		description = "FSG v1.10 (Eng) -> dulek/xt -> (Microsoft Visual C++ 6.0 / 7.0)"
	strings:
		$0 = {0B D0 8B DA E8 02 00 00 00 40 A0 5A EB 01 9D B8 80 ?? ?? 00 EB 02 CD 20 03 D3 8D 35 F4 00 00 00 EB 01 35 EB 01 88 80 CA 7C 80 F3 74 8B 38 EB 02 AC BA 03 DB E8 01 00 00 00 A5 5B C1 C2 0B 81 C7 DA 10 0A 4E EB 01 08 2B D1 83 EF 14 EB 02 CD 20 33 D3 83 EF 27}
		$1 = {0B D0 8B DA E8 02 00 00 00 40 A0 5A EB 01 9D B8 80 ?? ?? ?? EB 02 CD 20 03 D3 8D 35 F4 00}
		$2 = {87 FE E8 02 00 00 00 98 CC 5F BB 80 ?? ?? 00 EB 02 CD 20 68 F4 00 00 00 E8 01 00 00 00 E3}
		$3 = {F7 D8 40 49 EB 02 E0 0A 8D 35 80 ?? ?? ?? 0F B6 C2 EB 01 9C 8D 1D F4 00 00 00 EB 01 3C 80}
		$4 = {F7 DB 80 EA BF B9 2F 40 67 BA EB 01 01 68 AF ?? A7 BA 80 EA 9D 58 C1 C2 09 2B C1 8B D7 68}
	condition:
		$0 at entrypoint or $1 at entrypoint or $2 at entrypoint or $3 at entrypoint or $4 at entrypoint
}
rule _NTkrnl_Secure_Suite_01015_DLL__NTkrnl_Software_
{
	meta:
		description = "NTkrnl Secure Suite 0.1-0.15 DLL -> NTkrnl Software"
	strings:
		$0 = {00 00 00 00 00 00 00 00 00 00 00 00 34 10 00 00 28 10 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? 00 00 00 00 4B 65 72 6E 65 6C 33 32 2E 64 6C 6C 00 00 00 4C 6F 61 64 4C 69 62 72 61 72 79 41 00 00 00 47 65 74 50 72 6F 63 41 64 64 72 65 73 73 00 8B 44 24 04 05 ?? ?? ?? ?? 50 E8 01 00 00 00 C3 C3}
	condition:
		$0
}
rule _EXECryptor_224__StrongbitSoftComplete_Development_h3_
{
	meta:
		description = "EXECryptor 2.2.4 -> Strongbit/SoftComplete Development (h3)"
	strings:
		$0 = {6B 65 72 6E 65 6C 33 32 2E 64 6C 6C 00 00 00 00 00 00 47 65 74 4D 6F 64 75 6C 65 48 61 6E 64 6C 65 41 00 00 00 00 4C 6F 61 64 4C 69 62 72 61 72 79 41 00 00 00 00 47 65 74 50 72 6F 63 41 64 64 72 65 73 73 00 00 00 00 00 00 45 78 69 74 50 72 6F 63 65 73 73}
	condition:
		$0
}
rule _WinZip_SelfExtractor_22_personal_edition__WinZip_Computing_
{
	meta:
		description = "WinZip Self-Extractor 2.2 personal edition -> WinZip Computing"
	strings:
		$0 = {53 FF 15 58 70 40 00 B3 22 38 18 74 03 80 C3 FE 40 33 D2 8A 08 3A CA 74 10 3A CB 74 07 40 8A 08 3A CA 75 F5 38 10 74 01 40 52 50 52 52 FF 15 5C 70 40 00 50 E8 15 FB FF FF 50 FF 15 8C 70 40 00 5B}
	condition:
		$0 at entrypoint
}
rule _Armadillo_v190b2_
{
	meta:
		description = "Armadillo v1.90b2"
	strings:
		$0 = {55 8B EC 6A FF 68 F0 C1 40 00 68 A4 89 40 00 64 A1 00 00 00 00 50 64 89 25 00 00 00 00 83 EC 58}
	condition:
		$0 at entrypoint
}
rule _tElock_v099_
{
	meta:
		description = "tElock v0.99"
	strings:
		$0 = {E9 ?? ?? FF FF 00 00 00 ?? ?? ?? ?? ?? ?? ?? 00 ?? ?? ?? ?? ?? ?? ?? 00 ?? ?? ?? 00 ?? ?? ?? 00 ?? ?? 02 00 ?? ?? ?? 00 ?? ?? ?? 00 ?? ?? ?? 00 ?? ?? ?? 00 ?? ?? ?? 00 ?? ?? ?? 00 00 00 00 00 00 00 00 00 00 00 00 00 ?? ?? ?? 00 00 00 00 00 ?? ?? 02 00 00}
	condition:
		$0 at entrypoint
}
rule _EXECrypt_10__ReBirth_
{
	meta:
		description = "EXECrypt 1.0 -> ReBirth"
	strings:
		$0 = {90 90 60 E8 00 00 00 00 5D 81 ED D1 27 40 00 B9 15 00 00 00 83 C1 04 83 C1 01 EB 05 EB FE 83 C7 56 EB 00 EB 00 83 E9 02 81 C1 78 43 27 65 EB 00 81 C1 10 25 94 00 81 E9 63 85 00 00 B9 96 0C 00 00 90 8D BD 4E 28 40 00 8B F7 AC}
	condition:
		$0 at entrypoint
}
rule _InstallAnywhere_61_Zero_G_Software_Inc_
{
	meta:
		description = "InstallAnywhere 6.1 ->Zero G Software Inc"
	strings:
		$0 = {60 BE 00 A0 42 00 8D BE 00 70 FD FF 57 83 CD FF EB 10 90 90 90 90 90 90 8A 06 46 88 07 47 01 DB 75 07 8B 1E 83 EE FC 11 DB 72 ED B8 01 00 00 00 01 DB 75 07}
	condition:
		$0 at entrypoint
}
rule _SimplePack_V11XV12X_Method1__bagie_
{
	meta:
		description = "SimplePack V1.1X-V1.2X (Method1) -> bagie"
	strings:
		$0 = {60 E8 00 00 00 00 5B 8D 5B FA BD ?? ?? ?? ?? 8B 7D 3C 8D 74 3D 00 8D BE F8 00 00 00 0F B7 76 06 4E 8B 47 10 09 C0}
	condition:
		$0 at entrypoint
}
rule _PESHiELD_v01b_MTE_
{
	meta:
		description = "PESHiELD v0.1b MTE"
	strings:
		$0 = {E8 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? B9 1B 01 ?? ?? D1}
	condition:
		$0 at entrypoint
}
rule _eXpressor_v12__CGSoftLabs_
{
	meta:
		description = "eXpressor v1.2 -> CGSoftLabs"
	strings:
		$0 = {55 8B EC 81 EC D4 01 00 00 53 56 57 EB 0C 45 78 50 72 2D 76}
	condition:
		$0 at entrypoint
}
rule _Thinstall_Embedded_27172719__Jitit_
{
	meta:
		description = "Thinstall Embedded 2.717-2.719 -> Jitit"
	strings:
		$0 = {9C 60 E8 00 00 00 00 58 BB ?? ?? ?? ?? 2B C3 50 68 ?? ?? ?? ?? 68 ?? ?? ?? ?? 68 ?? ?? ?? ?? E8 C1 FE FF FF E9 97 FF FF FF CC CC 55 8B EC 83 C4 F4 FC 53 57 56 8B 75 08 8B 7D 0C C7 45 FC 08 00 00 00 33 DB BA 00 00 00 80 43 33 C0 E8 19 01 00 00 73 0E 8B 4D F8 E8 27 01 00 00 02 45 F7 AA EB E9 E8 04 01 00 00 0F 82 96 00 00 00 E8 F9 00 00 00 73 5B B9 04 00 00 00 E8 05 01 00 00 48 74 DE 0F 89 C6 00 00 00 E8 DF 00 00 00 73 1B 55 BD 00 01 00 00 E8 DF 00 00 00 88 07 47 4D 75 F5 E8 C7 00 00 00 72 E9 5D EB A2 B9 01 00 00 00 E8 D0 00 00 00 83 C0 07 89 45 F8 C6 45 F7 00 83 F8 08 74 89 E8 B1 00 00 00 88 45 F7 E9 7C FF FF FF B9 07 00 00 00 E8 AA 00 00 00 50 33 C9 B1 02 E8 A0 00 00 00 8B C8 41 41 58 0B C0 74 04 8B D8 EB 5E 83 F9 02 74 6A 41 E8 88 00 00 00 89 45 FC E9 48 FF FF FF E8 87 00 00 00 49 E2 09 8B C3 E8 7D 00 00 00 EB 3A 49 8B C1 55 8B 4D FC 8B E8 33 C0 D3 E5 E8 5D 00 00 00 0B C5 5D 8B D8 E8 5F 00 00 00 3D 00 00 01 00 73 14 3D FF 37 00 00 73 0E 3D 7F 02 00 00 73 08 83 F8 7F 77 04 41 41 41 41 56 8B F7 2B F0 F3 A4 5E E9 F0 FE FF FF 33 C0 EB 05 8B C7 2B 45 0C 5E 5F 5B C9 C2 08 00}
	condition:
		$0 at entrypoint
}
rule _EPW_v130_
{
	meta:
		description = "EPW v1.30"
	strings:
		$0 = {06 57 1E 56 55 52 51 53 50 2E 8C 06 08 00 8C C0 83 C0 10 2E}
	condition:
		$0 at entrypoint
}
rule _Rpoly_crypt_by_Vaska_200307_1841_
{
	meta:
		description = "Rpoly crypt by Vaska (20.03.07 18:41)"
	strings:
		$0 = {58 ?? ?? ?? ?? ?? ?? ?? E8 00 00 00 58 E8 00 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 00 00 00 ?? ?? 04}
	condition:
		$0
}
rule _ASProtect_SKE_21x_exe__Alexey_Solodovnikov_
{
	meta:
		description = "ASProtect SKE 2.1x (exe) -> Alexey Solodovnikov"
	strings:
		$0 = {90 60 E8 03 00 00 00 E9 EB 04 5D 45 55 C3 E8 01 00 00 00 EB 5D BB ED FF FF FF 03 DD 81 EB 00 ?? ?? ?? 80 7D 4D 01 75 0C 8B 74 24 28 83 FE 01 89 5D 4E 75 31 8D 45 53 50 53 FF B5 ED 09 00 00 8D 45 35 50 E9 82 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00}
	condition:
		$0
}
rule _DEF_v10_
{
	meta:
		description = "DEF v1.0"
	strings:
		$0 = {BE ?? 01 40 00 6A 05 59 80 7E 07 00 74 11 8B 46}
		$1 = {BE ?? 01 40 00 6A ?? 59 80 7E 07 00 74 11 8B 46 0C 05 00 00 40 00 8B 56 10 30 10 40 4A 75 FA 83 C6 28 E2 E4 68 ?? 10 40 00 C3}
	condition:
		$0 at entrypoint or $1
}
rule _MSLRH_v032a__emadicius_
{
	meta:
		description = "[MSLRH] v0.32a -> emadicius"
	strings:
		$0 = {E8 EB 0C 00 00 E8 F6 FF FF FF E8 F2 FF FF FF 83 C4 08 74 04 75 02 EB 02 EB 01 81 74 04 75 02 EB 02 EB 01 81 0F 31 50 0F 31 E8 0A 00 00 00 E8 EB 0C 00 00 E8 F6 FF FF FF E8 F2 FF FF FF 83 C4 08 2B 04 24 74 04 75 02 EB 02 EB 01 81 83 C4 04 E8 0A 00 00 00 E8}
		$1 = {EB 05 E8 EB 04 40 00 EB FA E8 0A 00 00 00 E8 EB 0C 00 00 E8 F6 FF FF FF E8 F2 FF FF FF 83 C4 08 74 04 75 02 EB 02 EB 01 81 E8 0A 00 00 00 E8 EB 0C 00 00 E8 F6 FF FF FF E8 F2 FF FF FF 83 C4 08 74 04 75 02 EB 02 EB 01 81 50 E8 02 00 00 00 29 5A 58 6B C0 03}
		$2 = {E8 EB 0C 00 00 E8 F6 FF FF FF E8 F2 FF FF FF 83 C4 08 74 04 75 02 EB 02 EB 01 81 74 04 75 02 EB 02 EB 01 81 0F 31 50 0F 31 E8 0A 00 00 00 E8 EB 0C 00 00 E8 F6 FF FF FF E8 F2 FF FF FF 83 C4 08 2B 04 24 74 04 75 02 EB 02 EB 01 81 83 C4 04 E8 0A 00 00 00 E8 EB 0C 00 00 E8 F6 FF FF FF E8 F2 FF FF FF 83 C4 08 3D FF FF FF 00 EB 01 68 EB 02 CD 20 EB 01 E8 76 1B EB 01 68 EB 02 CD 20 EB 01 E8 CC 66 B8 FE 00 74 04 75 02 EB 02 EB 01 81 66 E7 64 74 04 75 02 EB 02 EB 01 81 E8 0A 00 00 00 E8 EB 0C}
	condition:
		$0 or $1 or $2 at entrypoint
}
rule _ASProtect_v11_MTE_
{
	meta:
		description = "ASProtect v1.1 MTE"
	strings:
		$0 = {60 E9 ?? ?? ?? ?? 91 78 79 79 79 E9}
	condition:
		$0 at entrypoint
}
rule _mPack_003__DeltaAziz_
{
	meta:
		description = "mPack 0.0.3 -> DeltaAziz"
	strings:
		$0 = {55 8B EC 83 C4 F0 33 C0 89 45 F0 B8 A8 76 00 10 E8 67 C4 FF FF 33 C0 55 68 C2 78 00 10 64 FF 30 64 89 20 8D 55 F0 33 C0 E8 93 C8 FF FF 8B 45 F0 E8 87 CB FF FF A3 08 A5 00 10 33 C0 55 68 A5 78 00 10 64 FF 30 64 89 20 A1 08 A5 00 10 E8 FA C9 FF FF 83 F8 FF 75 0A E8 88 B2 FF FF E9 1B 01 00 00 C7 05 14 A5 00 10 32 00 00 00 A1 08 A5 00 10 8B 15 14 A5 00 10 E8 C9 C9 FF FF BA 14 A5 00 10 A1 08 A5 00 10 B9 04 00 00 00 E8 C5 C9 FF FF 83 3D 14 A5 00 10 32 77 0A E8 47 B2 FF FF E9 DA 00 00 00 A1 08 A5 00 10 8B 15 14 A5 00 10 E8 92 C9 FF FF BA 18 A5}
	condition:
		$0 at entrypoint
}
rule _BlackEnergy_DDoS_Bot_Crypter_
{
	meta:
		description = "BlackEnergy DDoS Bot Crypter"
	strings:
		$0 = {55 ?? ?? 81 EC 1C 01 00 00 53 56 57 6A 04 BE 00 30 00 00 56 FF 35 00 20 11 13 6A 00 E8 ?? 03 00 00 ?? ?? 83 C4 10 ?? FF 89 7D F4 0F}
	condition:
		$0 at entrypoint
}
rule _PKLITE_v112_v115_v120_1_
{
	meta:
		description = "PKLITE v1.12, v1.15, v1.20 (1)"
	strings:
		$0 = {B8 ?? ?? BA ?? ?? 05 ?? ?? 3B 06 ?? ?? 73 ?? 2D ?? ?? FA 8E D0 FB 2D ?? ?? 8E C0 50 B9 ?? ?? 33 FF 57 BE ?? ?? FC F3 A5 CB B4 09 BA ?? ?? CD 21 CD 20}
	condition:
		$0 at entrypoint
}
rule _WWPACK_v302_v302a_Extractable_
{
	meta:
		description = "WWPACK v3.02, v3.02a (Extractable)"
	strings:
		$0 = {B8 ?? ?? 8C CA 03 D0 8C C9 81 C1 ?? ?? 51 33 C9 B1 ?? 51 06 06 BB ?? ?? 53 8C D3}
	condition:
		$0 at entrypoint
}
rule _Pelles_C_300_400_450_EXE_X86_CRTDLL_
{
	meta:
		description = "Pelles C 3.00, 4.00, 4.50 EXE (X86 CRT-DLL)"
	strings:
		$0 = {55 89 E5 6A FF 68 ?? ?? ?? ?? 68 ?? ?? ?? ?? 64 FF 35 ?? ?? ?? ?? 64 89 25 ?? ?? ?? ?? 83 EC ?? 53 56 57 89 65 E8 C7 45 FC ?? ?? ?? ?? 68 ?? ?? ?? ?? E8 ?? ?? ?? ?? 59 BE ?? ?? ?? ?? EB}
	condition:
		$0 at entrypoint
}
rule _FSG_v110_Eng__dulekxt__Borland_Cpp_
{
	meta:
		description = "FSG v1.10 (Eng) -> dulek/xt -> (Borland C++)"
	strings:
		$0 = {23 CA EB 02 5A 0D E8 02 00 00 00 6A 35 58 C1 C9 10 BE 80 ?? ?? 00 0F B6 C9 EB 02 CD 20 BB}
		$1 = {23 CA EB 02 5A 0D E8 02 00 00 00 6A 35 58 C1 C9 10 BE 80 ?? ?? 00 0F B6 C9 EB 02 CD 20 BB F4 00 00 00 EB 02 04 FA EB 01 FA EB 01 5F EB 02 CD 20 8A 16 EB 02 11 31 80 E9 31 EB 02 30 11 C1 E9 11 80 EA 04 EB 02 F0 EA 33 CB 81 EA AB AB 19 08 04 D5 03 C2 80 EA}
	condition:
		$0 at entrypoint or $1 at entrypoint
}
rule _MEGALITE_v120a_
{
	meta:
		description = "MEGALITE v1.20a"
	strings:
		$0 = {B8 ?? ?? BA ?? ?? 05 ?? ?? 3B 2D 73 ?? 72 ?? B4 09 BA ?? ?? CD 21 CD 90}
	condition:
		$0 at entrypoint
}
rule _eXPressor_V13__CGSoftLabs_
{
	meta:
		description = "eXPressor V1.3 -> CGSoftLabs"
	strings:
		$0 = {55 8B EC 83 EC ?? 53 56 57 EB 0C 45}
	condition:
		$0 at entrypoint
}
rule _Vx_Danish_tiny_
{
	meta:
		description = "Vx: Danish tiny"
	strings:
		$0 = {33 C9 B4 4E CD 21 73 02 FF ?? BA ?? 00 B8 ?? 3D CD 21}
	condition:
		$0 at entrypoint
}
rule _Freshbind_v20__gFresh_
{
	meta:
		description = "Freshbind v2.0 -> gFresh"
	strings:
		$0 = {64 A1 00 00 00 00 55 89 E5 6A FF 68 1C A0 41 00}
	condition:
		$0 at entrypoint
}
rule _NoodleCrypt_v200_Eng__NoodleSpa_
{
	meta:
		description = "NoodleCrypt v2.00 (Eng) -> NoodleSpa"
	strings:
		$0 = {EB 01 9A E8 76 00 00 00 EB 01 9A E8 65 00 00 00 EB 01 9A E8 7D 00 00 00 EB 01 9A E8 55 00 00 00 EB 01 9A E8 43 04 00 00 EB 01 9A E8 E1 00 00 00 EB 01 9A E8 3D 00 00 00 EB 01 9A E8 EB 01 00 00 EB 01 9A E8 2C 04 00 00 EB 01 9A E8 25 00 00 00 EB 01 9A E8 02}
	condition:
		$0 at entrypoint
}
rule _Shrinker_34_
{
	meta:
		description = "Shrinker 3.4"
	strings:
		$0 = {55 8B EC 56 57 75 6B 68 00 01 00 00 E8 11 0B 00 00 83 C4 04}
	condition:
		$0
}
rule _DJoin_v07_public_RC4_encryption__drmist_
{
	meta:
		description = "DJoin v0.7 public (RC4 encryption) -> drmist"
	strings:
		$0 = {C6 05 ?? ?? 40 00 00 C6 05 ?? ?? 40 00 00 ?? ?? ?? ?? ?? ?? ?? ?? 00 ?? ?? ?? ?? 00 ?? ?? ?? ?? ?? 00}
	condition:
		$0 at entrypoint
}
rule _EncryptPE_22004810__22005314__WFS_
{
	meta:
		description = "EncryptPE 2.2004.8.10 - 2.2005.3.14 -> WFS"
	strings:
		$0 = {60 9C 64 FF 35 00 00 00 00 E8 7A}
	condition:
		$0 at entrypoint
}
rule _PECompact_v110b2_
{
	meta:
		description = "PECompact v1.10b2"
	strings:
		$0 = {EB 06 68 ?? ?? ?? ?? C3 9C 60 E8 02 ?? ?? ?? 33 C0 8B C4 83 C0 04 93 8B E3 8B 5B FC 81 EB 0F 60 40 ?? 87 DD 8B 85 94 60}
	condition:
		$0 at entrypoint
}
rule _Embed_PE_v113__cyclotron_
{
	meta:
		description = "Embed PE v1.13 -> cyclotron"
	strings:
		$0 = {83 EC 50 60 68 5D B9 52 5A E8 2F 99 00 00 DC 99 F3 57 05 68}
	condition:
		$0 at entrypoint
}
rule _Obsidium_V130X__Obsidium_Software_
{
	meta:
		description = "Obsidium V1.3.0.X -> Obsidium Software"
	strings:
		$0 = {EB 03 ?? ?? ?? E8 2E 00 00 00 EB 04 ?? ?? ?? ?? EB 04 ?? ?? ?? ?? 8B ?? ?? ?? EB 04 ?? ?? ?? ?? 83 ?? ?? ?? ?? ?? ?? EB 01 ?? 33 C0 EB 04 ?? ?? ?? ?? C3}
	condition:
		$0 at entrypoint
}
rule _Pelles_C_28x45x__Pelle_Orinius_
{
	meta:
		description = "Pelles C 2.8.x-4.5.x -> Pelle Orinius"
	strings:
		$0 = {55 89 E5 6A FF 68 ?? ?? ?? ?? 68 ?? ?? ?? ?? 64 FF 35 ?? ?? ?? ?? 64 89 25 ?? ?? ?? ?? 83 EC}
	condition:
		$0 at entrypoint
}
rule _ANDpakk2_006__Dmitry_Andreev_
{
	meta:
		description = "ANDpakk2 0.06 -> Dmitry Andreev"
	strings:
		$0 = {60 FC BE D4 00 40 00 BF 00 10 00 01 57 83 CD FF 33 C9 F9 EB 05 A4 02 DB 75 05 8A 1E 46 12 DB 72 F4 33 C0 40 02 DB 75 05 8A 1E 46 12 DB 13 C0 02 DB 75 05 8A 1E 46 12 DB 72 0E 48 02 DB 75 05 8A 1E 46 12 DB 13 C0 EB DC 83 E8 03 72 0F C1 E0 08 AC 83 F0 FF 74 4D D1 F8 8B E8 EB 09 02 DB 75 05 8A 1E 46 12 DB 13 C9 02 DB 75 05 8A 1E 46 12 DB 13 C9 75 1A 41 02 DB 75 05 8A 1E 46 12 DB 13 C9 02 DB 75 05 8A 1E 46 12 DB 73 EA 83 C1 02 81 FD 00 FB FF FF 83 D1 01 56 8D 34 2F F3 A4 5E E9 73 FF FF FF C3}
	condition:
		$0
}
rule _APEX_C_BLT_Apex_40__500mhz_
{
	meta:
		description = "APEX_C (BLT Apex 4.0) -> 500mhz"
	strings:
		$0 = {68 ?? ?? ?? ?? B9 FF FF FF 00 01 D0 F7 E2 72 01 48 E2 F7 B9 FF 00 00 00 8B 34 24 80 36 FD 46 E2 FA C3}
	condition:
		$0 at entrypoint
}
rule _DEF_10__bartxt_
{
	meta:
		description = "DEF 1.0 -> bart/xt"
	strings:
		$0 = {BE ?? ?? 40 00 6A ?? 59 80 7E 07 00 74 11 8B 46 0C 05 00 00 40 00 8B 56 10 30 10 40 4A 75 FA 83 C6 28 E2 E4 68 ?? ?? 40 00 C3 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00}
	condition:
		$0 at entrypoint
}
rule _VProtector_13X__vcasm_
{
	meta:
		description = "VProtector 1.3X -> vcasm"
	strings:
		$0 = {00 00 00 00 00 ?? ?? ?? ?? 00 00 00 00 00 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 00 00 00 00 6B 65 72 6E 65 6C 33 32 2E 64 6C 6C 00 00 00 00 47 65 74 50 72 6F 63 41 64 64 72 65 73 73 00 00 00 47 65 74 4D 6F 64 75 6C 65 48 61 6E 64 6C 65 41 00 00 00 4C 6F 61 64 4C 69 62 72 61 72 79 41 00 60 8B B4 24 24 00 00 00 8B BC 24 28 00 00 00 FC C6 C2 80 33 DB A4 C6 C3 02 E8 A9 00 00 00 0F 83 F1 FF FF FF 33 C9 E8 9C 00 00 00 0F 83 2D 00 00 00 33 C0 E8 8F 00 00 00 0F 83 37 00 00 00 C6 C3 02 41 C6 C0 10 E8 7D 00 00 00 10 C0 0F 83 F3 FF FF FF}
		$1 = {E9 B9 16 00 00 55 8B EC 81 EC 74 04 00 00 57 68 00 00 00 00 68 00 00 C2 14 68 FF FF 00 00 68 ?? ?? ?? ?? 9C 81 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 9D 54 FF 14 24 68 00 00 00 00 68 00 00 C2 10 68 ?? ?? ?? ?? 9C 81 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 9D 54 FF 14 24 68 00 00 00 00 68 ?? ?? ?? ?? 9C 81 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 9D 54 FF 14 24 68 00 00 00 00 68 FF FF C2 10 68 ?? ?? ?? ?? 9C 81 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 9D 54 FF 14 24 68 00 00 00 00 68 ?? ?? ?? ?? 9C 81 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 9D 54 FF 14 24 68 00 00 00 00 68 00 00 C2 14 68 FF FF 00 00 68 ?? ?? ?? ?? 9C 81 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 9D 54 FF 14 24 68 00 00 00 00 68 ?? ?? ?? ?? 9C 81 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 9D 54 FF 14 24 68 00 00 00 00}
	condition:
		$0 or $1 at entrypoint
}
rule _y0das_Crypter_v1x__Modified_
{
	meta:
		description = "y0da's Crypter v1.x / Modified"
	strings:
		$0 = {60 E8 00 00 00 00 5D 81 ED ?? ?? ?? ?? B9 ?? ?? 00 00 8D BD ?? ?? ?? ?? 8B F7 AC}
	condition:
		$0 at entrypoint
}
rule _NsPack_v23__North_Star_
{
	meta:
		description = "NsPack v2.3 -> North Star"
	strings:
		$0 = {9C 60 E8 00 00 00 00 5D B8 07 00 00 00 2B E8 8D B5 ?? ?? FF FF 8B 06 83 F8 00 74 11 8D B5 ?? ?? FF FF 8B 06 83 F8 01 0F 84 4B 02 00 00 C7 06 01 00 00 00 8B D5 8B 85 ?? ?? FF FF 2B D0 89 95 ?? ?? FF FF 01 95 ?? ?? FF FF 8D B5 ?? ?? FF FF 01 16 8B 36 8B FD}
		$1 = {9C 60 E8 00 00 00 00 5D B8 07 00 00 00 2B E8 8D B5 ?? ?? FF FF 8B 06 83 F8 00 74 11 8D B5 ?? ?? FF FF 8B 06 83 F8 01 0F 84 4B 02 00 00 C7 06 01 00 00 00 8B D5 8B 85 ?? ?? FF FF 2B D0 89 95 ?? ?? FF FF 01 95 ?? ?? FF FF 8D B5 ?? ?? FF FF 01 16 8B 36 8B FD 60 6A 40 68 00 10 00 00 68 00 10 00 00 6A 00 FF 95 ?? ?? FF FF 85 C0 0F 84 56 03 00 00 89 85 ?? ?? FF FF E8 00 00 00 00 5B B9 54 03 00 00 03 D9 50 53 E8 9D 02 00 00 61}
	condition:
		$0 or $1
}
rule _PEncrypt_v30_
{
	meta:
		description = "PEncrypt v3.0"
	strings:
		$0 = {E8 00 00 00 00 5D 81 ED 05 10 40 00 8D B5 24 10 40 00 8B FE B9 0F 00 00 00 BB ?? ?? ?? ?? AD 33 C3 E2 FA}
	condition:
		$0 at entrypoint
}
rule _Silicon_Realms_Install_Stub_
{
	meta:
		description = "Silicon Realms Install Stub"
	strings:
		$0 = {55 8B EC 6A FF 68 ?? 92 40 00 68 ?? ?? 40 00 64 A1 00 00 00 00 50 64 89 25 00 00 00 00 83 EC 58 53 56 57 89 65 E8 FF 15 ?? ?? 40 00 33 D2 8A D4 89 15 ?? ?? 40 00 8B C8 81 E1 FF 00 00 00 89 0D ?? ?? 40 00 C1 E1 08 03 CA 89 0D ?? ?? 40 00 C1 E8 10 A3}
	condition:
		$0
}
rule _MSLRH_v032a_fake_ASPack_212__emadicius_
{
	meta:
		description = "[MSLRH] v0.32a (fake ASPack 2.12) -> emadicius"
	strings:
		$0 = {60 E8 03 00 00 00 E9 EB 04 5D 45 55 C3 E8 01 00 00 00 EB 5D BB ED FF FF FF 03 DD 81 EB 00 A0 02 EB 05 E8 EB 04 40 00 EB FA E8 0A 00 00 00 E8 EB 0C 00 00 E8 F6 FF FF FF E8 F2 FF FF FF 83 C4 08 74 04 75 02 EB 02 EB 01 81 50 E8 02 00 00 00 29 5A 58 6B C0 03 E8 02 00 00 00 29 5A 83 C4 04 58 74 04 75 02 EB 02 EB 01 81 0F 31 50 0F 31 E8 0A 00 00 00 E8 EB 0C 00 00 E8 F6 FF FF FF E8 F2 FF FF FF}
	condition:
		$0 at entrypoint
}
rule _RosAsm_2050a__Betov_
{
	meta:
		description = "RosAsm 2050a -> Betov"
	strings:
		$0 = {55 8B EC 60 8B 5D 08 B9 08 00 00 00 BF ?? ?? ?? ?? 83 C7 07 FD 8A C3 24 0F 04 30 3C 39 76 02 04 07 AA C1 EB 04 E2 EE FC 68 00 10 00 00 68 ?? ?? ?? ?? 68 ?? ?? ?? ?? 6A 00 FF 15 ?? ?? ?? ?? 61 8B E5 5D C2 04 00}
	condition:
		$0
}
rule _MicroJoiner_15__coban2k_
{
	meta:
		description = "MicroJoiner 1.5 -> coban2k"
	strings:
		$0 = {BF 05 10 40 00 83 EC 30 8B EC E8 C8 FF FF FF E8 C3 FF FF FF}
	condition:
		$0 at entrypoint
}
rule _MSLRH_v032a_fake_PCGuard_4xx__emadicius_
{
	meta:
		description = "[MSLRH] v0.32a (fake PC-Guard 4.xx) -> emadicius"
	strings:
		$0 = {FC 55 50 E8 00 00 00 00 5D EB 01 E3 60 E8 03 00 00 00 D2 EB 0B 58 EB 01 48 40 EB 01 35 FF E0 E7 61 58 5D EB 05 E8 EB 04 40 00 EB FA E8 0A 00 00 00 E8 EB 0C 00 00 E8 F6 FF FF FF E8 F2 FF FF FF 83 C4 08 74 04 75 02 EB 02 EB 01 81 50 E8 02 00 00 00 29 5A 58 6B C0 03 E8 02 00 00 00 29 5A 83 C4 04 58 74 04 75 02 EB 02 EB 01 81 0F 31 50 0F 31 E8 0A 00 00 00 E8 EB 0C 00 00 E8 F6 FF FF FF E8 F2 FF FF FF}
	condition:
		$0 at entrypoint
}
rule _tElock_v051_
{
	meta:
		description = "tElock v0.51"
	strings:
		$0 = {C1 EE 00 66 8B C9 EB 01 EB 60 EB 01 EB 9C E8 00 00 00 00 5E 83 C6 5E 8B FE 68 79 01 59 EB 01 EB AC 54 E8 03 5C EB 08}
	condition:
		$0 at entrypoint
}
rule _UPXFreak_v01_Borland_Delphi__HMX0101_
{
	meta:
		description = "UPXFreak v0.1 (Borland Delphi) -> HMX0101"
	strings:
		$0 = {BE ?? ?? ?? ?? 83 C6 01 FF E6 00 00 00 ?? ?? ?? 00 03 00 00 00 ?? ?? ?? ?? 00 10 00 00 00 00 ?? ?? ?? ?? 00 00 ?? F6 ?? 00 B2 4F 45 00 ?? F9 ?? 00 EF 4F 45 00 ?? F6 ?? 00 8C D1 42 00 ?? 56 ?? 00 ?? ?? ?? 00 ?? ?? ?? 00 ?? ?? ?? 00 ?? 24 ?? 00 ?? ?? ?? 00}
		$1 = {BE ?? ?? ?? ?? 83 C6 01 FF E6 00 00 00 ?? ?? ?? 00 03 00 00 00 ?? ?? ?? ?? 00 10 00 00 00 00 ?? ?? ?? ?? 00 00 ?? F6 ?? 00 B2 4F 45 00 ?? F9 ?? 00 EF 4F 45 00 ?? F6 ?? 00 8C D1 42 00 ?? 56 ?? 00 ?? ?? ?? 00 ?? ?? ?? 00 ?? ?? ?? 00 ?? 24 ?? 00 ?? ?? ?? 00 34 50 45 00 ?? ?? ?? 00 FF FF 00 00 ?? 24 ?? 00 ?? 24 ?? 00 ?? ?? ?? 00 40 00 00 C0 00 00 ?? ?? ?? ?? 00 00 ?? 00 00 00 ?? 1E ?? 00 ?? F7 ?? 00 A6 4E 43 00 ?? 56 ?? 00 AD D1 42 00 ?? F7 ?? 00 A1 D2 42 00 ?? 56 ?? 00 0B 4D 43 00 ?? F7 ?? 00 ?? F7 ?? 00 ?? 56 ?? 00 ?? ?? ?? ?? ?? 00 00 00 ?? ?? ?? ?? ?? ?? ?? 77 ?? ?? ?? 00 ?? ?? ?? 00 ?? ?? ?? 77 ?? ?? 00 00 ?? ?? ?? 00 ?? ?? ?? ?? ?? ?? 00 00 ?? ?? ?? 00 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 00 ?? ?? ?? ?? 00 00 00 00 ?? ?? ?? 00}
	condition:
		$0 at entrypoint or $1 at entrypoint
}
rule _Armadillo_440__Silicon_Realms_Toolworks_
{
	meta:
		description = "Armadillo 4.40 -> Silicon Realms Toolworks"
	strings:
		$0 = {31 2E 31 2E 34 00 00 00 C2 E0 94 BE 93 FC DE C6 B6 24 83 F7 D2 A4 92 77 40 27 CF EB D8 6F 50 B4 B5 29 24 FA 45 08 04 52 D5 1B D2 8C 8A 1E 6E FF 8C 5F 42 89 F1 83 B1 27 C5 69 57 FC 55 0A DD 44 BE 2A 02 97 6B 65 15 AA 31 E9 28 7D 49 1B DF B5 5D 08 A8 BA A8}
	condition:
		$0
}
rule _SDProtect__Randy_Li_
{
	meta:
		description = "SDProtect -> Randy Li"
	strings:
		$0 = {55 8B EC 6A FF 68 ?? ?? ?? ?? 68 88 88 88 08 64 A1 00 00 00 00 50 64 89 25 00 00 00 00 58 64 A3 00 00 00 00 58 58 58 58 8B E8 E8 3B 00 00 00 E8 01 00 00 00 FF 58 05}
	condition:
		$0 at entrypoint
}
rule _Setup_Factory_v6003_Setup_Launcher_
{
	meta:
		description = "Setup Factory v6.0.0.3 Setup Launcher"
	strings:
		$0 = {55 8B EC 6A FF 68 90 61 40 00 68 70 3B 40 00 64 A1 00 00 00 00 50 64 89 25 00 00 00 00 83 EC 58 53 56 57 89 65 E8 FF 15 14 61 40 00 33 D2 8A D4 89 15 5C 89 40 00 8B C8 81 E1 FF 00 00 00 89 0D 58 89 40 00 C1 E1 08 03 CA 89 0D 54 89 40 00 C1 E8 10 A3 50 89}
	condition:
		$0
}
rule _Enigma_protector_110_unregistered_
{
	meta:
		description = "Enigma protector 1.10 (unregistered)"
	strings:
		$0 = {60 72 80 72 88 72 8C 72 90 72 94 72 98 72 9C 72 A0 72 A4 59 A8 B0 5C E8 39 D5 39 E4 39 F1 31 F9 5C 3D 58 CA 5F 56 B1 2D 20 7A 2E 30 16 32 72 2B 72 36 1C A5 33 A9 9C AD 9C B1 9C B5 9C B9 9C BD 9C C1 9C C5 9C C9 9C CD 9C D1 9C D5 9C D9 9C DD 9C E1 9C E5 89}
		$1 = {60 72 80 72 88 72 8C 72 90 72 94 72 98 72 9C 72 A0 72 A4 59 A8 B0 5C E8 39 D5 39 E4 39 F1 31 F9 5C 3D 58 CA 5F 56 B1 2D 20 7A 2E 30 16 32 72 2B 72 36 1C A5 33 A9 9C AD 9C B1 9C B5 9C B9 9C BD 9C C1 9C C5 9C C9 9C CD 9C D1 9C D5 9C D9 9C DD 9C E1 9C E5 89 E9 51 0B C4 80 BC 7E 35 09 37 E7 C9 3D C9 45 C9 4D 74 92 BA E4 E9 24 6B DF 3E 0E 38 0C 49 10 27 80 51 A1 8E 3A A3 C8 AE 3B 1C 35}
	condition:
		$0 or $1
}
rule _InstallShield_Custom_
{
	meta:
		description = "InstallShield Custom"
	strings:
		$0 = {55 8B EC 83 EC 44 56 FF 15 ?? ?? 41 00 8B F0 85 F6 75 08 6A FF FF 15 ?? ?? 41 00 8A 06 57 8B 3D ?? ?? 41 00 3C 22 75 1B 56 FF D7 8B F0 8A 06 3C 22 74 04 84 C0 75 F1 80 3E 22 75 15 56 FF D7 8B}
	condition:
		$0 at entrypoint
}
rule _CrunchPE_
{
	meta:
		description = "Crunch/PE"
	strings:
		$0 = {55 E8 ?? ?? ?? ?? 5D 83 ED 06 8B C5 55 60 89 AD ?? ?? ?? ?? 2B 85}
	condition:
		$0 at entrypoint
}
rule _Inno_Setup_Module_v129_
{
	meta:
		description = "Inno Setup Module v1.2.9"
	strings:
		$0 = {55 8B EC 83 C4 C0 53 56 57 33 C0 89 45 F0 89 45 EC 89 45 C0 E8 5B 73 FF FF E8 D6 87 FF FF E8 C5 A9 FF FF E8 E0}
	condition:
		$0 at entrypoint
}
rule _tElock_v071b7_
{
	meta:
		description = "tElock v0.71b7"
	strings:
		$0 = {60 E8 48 11 00 00 C3 83}
	condition:
		$0 at entrypoint
}
rule _Exe_Shield_v27b_
{
	meta:
		description = "Exe Shield v2.7b"
	strings:
		$0 = {EB 06 68 40 85 06 00 C3 9C 60 E8 02 00 00 00 33 C0 8B C4 83 C0 04 93 8B E3 8B 5B FC 81 EB 3F 90 40 00 87 DD 8B 85 E6 90 40 00 01 85 33 90 40 00 66 C7 85 30 90 40 00 90 90 01 85 DA 90 40 00 01 85 DE 90 40 00 01 85 E2 90 40 00 BB 7B 11 00 00 03 9D EA 90 40}
	condition:
		$0 at entrypoint
}
rule _RJoiner_by_Vaska_Sign_from_pinch_25032007_1700_
{
	meta:
		description = "RJoiner by Vaska (Sign from pinch 25.03.2007 17:00)"
	strings:
		$0 = {E8 03 FD FF FF 6A 00 E8 0C 00 00 00 FF 25 6C 10 40 00 FF 25 70 10 40 00 FF 25 74 10 40 00 FF 25 78 10 40 00 FF 25 7C 10 40 00 FF 25 80 10 40 00 FF 25 84 10 40 00 FF 25 88 10 40 00 FF 25 8C 10}
	condition:
		$0 at entrypoint
}
rule _PseudoSigner_01_UPX_06__Anorganix_
{
	meta:
		description = "PseudoSigner 0.1 [UPX 0.6] --> Anorganix"
	strings:
		$0 = {60 E8 00 00 00 00 58 83 E8 3D 50 8D B8 00 00 00 FF 57 8D B0 E8 00 00 00 E9}
	condition:
		$0 at entrypoint
}
rule _Shrinker_v34_
{
	meta:
		description = "Shrinker v3.4"
	strings:
		$0 = {83 3D B4 ?? ?? ?? ?? 55 8B EC 56 57 75 6B 68 00 01 00 00 E8 ?? 0B 00 00 83 C4 04 8B 75 08 A3 B4 ?? ?? ?? 85 F6 74 23 83 7D 0C 03 77 1D 68 FF}
		$1 = {BB ?? ?? BA ?? ?? 81 C3 07 00 B8 40 B4 B1 04 D3 E8 03 C3 8C D9 49 8E C1 26 03 0E 03 00 2B}
	condition:
		$0 at entrypoint or $1 at entrypoint
}
rule _Enigma_protector_110111__Vladimir_Sukhov_
{
	meta:
		description = "Enigma protector 1.10/1.11 -> Vladimir Sukhov"
	strings:
		$0 = {60 E8 00 00 00 00 5D 83 ED 06 81 ED ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? E8 01 00 00 00 9A 83 C4 04 EB 02 FF 35 60 E8 24 00 00 00 00 00 FF EB 02 CD 20 8B 44 24 0C 83 80 B8 00 00 00 03 31}
		$1 = {60 E8 00 00 00 00 5D 83 ED 06 81 ED ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? E8 01 00 00 00 9A 83 C4 04 EB 02 FF 35 60 E8 24 00 00 00 00 00 FF EB 02 CD 20 8B 44 24 0C 83 80 B8 00 00 00 03 31 C0 C3 83 C0 08 EB 02 FF 15 89 C4 61 EB 2E EA EB 2B 83 04 24 03 EB 01 00 31 C0 EB 01 85 64 FF 30 EB 01 83 64 89 20 EB 02 CD 20 89 00 9A 64 8F 05 00 00 00 00 EB 02 C1 90 58 61 EB 01 3E EB ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? E8 01 00 00 00 9A 83 C4 04 01 E8 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? E8 01 00 00 00 9A 83 C4 04 05 F6 01 00 00 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? E8 01 00 00 00 9A 83 C4 04 B9 3D 1A}
	condition:
		$0 or $1
}
rule _FSG_v110_Eng__dulekxt__Microsoft_Visual_Cpp_60__ASM_
{
	meta:
		description = "FSG v1.10 (Eng) -> dulek/xt -> (Microsoft Visual C++ 6.0 / ASM)"
	strings:
		$0 = {F7 D0 EB 02 CD 20 BE BB 74 1C FB EB 02 CD 20 BF 3B ?? ?? FB C1 C1 03 33 F7 EB 02 CD 20 68}
	condition:
		$0 at entrypoint
}
rule _PeStubOEP_v1x_
{
	meta:
		description = "PeStubOEP v1.x"
	strings:
		$0 = {90 33 C9 33 D2 B8 ?? ?? ?? 00 B9 FF}
		$1 = {E8 05 00 00 00 33 C0 40 48 C3 E8 05}
	condition:
		$0 or $1
}
rule _PE_Protector_093__CRYPToCRACk_
{
	meta:
		description = "PE Protector 0.9.3 --> CRYPToCRACk"
	strings:
		$0 = {5B 81 E3 00 FF FF FF 66 81 3B 4D 5A 75 33 8B F3 03 73 3C 81 3E 50 45 00 00 75 26 0F B7 46 18 8B C8 69 C0 AD 0B 00 00 F7 E0 2D AB 5D 41 4B 69 C9 DE C0 00 00 03 C1 75 09 83 EC 04 0F 85 DD 00 00}
	condition:
		$0 at entrypoint
}
rule _SimbiOZ_PolyCryptor_vxx_Extranger_
{
	meta:
		description = "SimbiOZ PolyCryptor v.xx-> Extranger"
	strings:
		$0 = {55 60 E8 00 00 00 00 5D 81 ED ?? ?? ?? ?? 8D 85 ?? ?? ?? ?? 68 ?? ?? ?? ?? 50 E8}
	condition:
		$0 at entrypoint
}
rule _Vx_Phoenix927_
{
	meta:
		description = "Vx: Phoenix.927"
	strings:
		$0 = {E8 00 00 5E 81 C6 ?? ?? BF 00 01 B9 04 00 F3 A4 E8}
	condition:
		$0 at entrypoint
}
rule _LamerStop_v10c_c_Stefan_Esser_
{
	meta:
		description = "LamerStop v1.0c (c) Stefan Esser"
	strings:
		$0 = {E8 ?? ?? 05 ?? ?? CD 21 33 C0 8E C0 26 ?? ?? ?? 2E ?? ?? ?? 26 ?? ?? ?? 2E ?? ?? ?? BA ?? ?? FA}
	condition:
		$0 at entrypoint
}
rule _Pelles_C_450_DLL_X86_CRTLIB_
{
	meta:
		description = "Pelles C 4.50 DLL (X86 CRT-LIB)"
	strings:
		$0 = {55 89 E5 53 56 57 8B 5D 0C 8B 75 10 85 DB 75 0D 83 3D ?? ?? ?? ?? 00 75 04 31 C0 EB 57 83 FB 01 74 05 83 FB 02 75}
	condition:
		$0 at entrypoint
}
rule _tElock_v060_
{
	meta:
		description = "tElock v0.60"
	strings:
		$0 = {E9 00 00 00 00 60 E8 00 00 00 00 58 83 C0 08}
	condition:
		$0 at entrypoint
}
rule _PEPACK_099_
{
	meta:
		description = "PE-PACK 0.99"
	strings:
		$0 = {60 E8 00 00 00 00 5D 83 ED 06 80 BD E0 04 00 00 01 0F 84 F2}
	condition:
		$0 at entrypoint
}
rule _PE_Intro_v10_
{
	meta:
		description = "PE Intro v1.0"
	strings:
		$0 = {8B 04 24 9C 60 E8 ?? ?? ?? ?? 5D 81 ED 0A 45 40 ?? 80 BD 67 44 40 ?? ?? 0F 85 48}
	condition:
		$0 at entrypoint
}
rule _Packanoid_v1__Arkanoid_
{
	meta:
		description = "Packanoid v1 -> Arkanoid"
	strings:
		$0 = {BF ?? ?? ?? ?? BE ?? ?? ?? ?? E8 9D 00 00 00 B8 ?? ?? ?? ?? 8B 30 8B 78 04 BB ?? ?? ?? ?? 8B 43 04 91 E3 1F 51 FF D6 56 96 8B 13 8B 02 91 E3 0D 52 51 56 FF D7 5A 89 02 83 C2 04 EB EE 83 C3 08}
	condition:
		$0 at entrypoint
}
rule _PseudoSigner_01_CodeSafe_20__Anorganix_
{
	meta:
		description = "PseudoSigner 0.1 [CodeSafe 2.0] --> Anorganix"
	strings:
		$0 = {90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 EB 0B 83 EC 10 53 56 57 E8 C4 01 00 85 E9}
	condition:
		$0 at entrypoint
}
rule _VideoLanClient_
{
	meta:
		description = "Video-Lan-Client"
	strings:
		$0 = {55 89 E5 83 EC 08 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? FF FF}
	condition:
		$0 at entrypoint
}
rule _eXPressor_v120b_
{
	meta:
		description = "eXPressor v1.2.0b"
	strings:
		$0 = {55 8B EC 81 EC D4 01 00 00 53 56 57 EB 0C 45 78 50 72 2D 76 2E 31 2E 32 2E 2E B8 ?? ?? ?? 00 2B 05 84 ?? ?? 00 A3 ?? ?? ?? 00 83 3D ?? ?? ?? 00 00 74 16 A1 ?? ?? ?? 00 03 05 80 ?? ?? 00 89 85 54 FE FF FF E9 ?? 07 00 00 C7 05 ?? ?? ?? 00 01 00 00 00 68 04}
	condition:
		$0
}
rule _Packman_V0001__Bubbasoft_
{
	meta:
		description = "Packman V0.0.0.1 -> Bubbasoft"
	strings:
		$0 = {60 E8 00 00 00 00 58 8D ?? ?? ?? ?? ?? 8D ?? ?? ?? ?? ?? 8D ?? ?? ?? ?? ?? 8D ?? ?? 48}
	condition:
		$0 at entrypoint
}
rule _PseudoSigner_02_MEW_11_SE_10__Anorganix_
{
	meta:
		description = "PseudoSigner 0.2 [MEW 11 SE 1.0] --> Anorganix"
	strings:
		$0 = {E9 09 00 00 00 00 00 00 02 00 00 00 0C 90}
	condition:
		$0 at entrypoint
}
rule _PGMPACK_v013_
{
	meta:
		description = "PGMPACK v0.13"
	strings:
		$0 = {FA 1E 17 50 B4 30 CD 21 3C 02 73 ?? B4 4C CD 21 FC BE ?? ?? BF ?? ?? E8 ?? ?? E8 ?? ?? BB ?? ?? BA ?? ?? 8A C3 8B F3}
	condition:
		$0 at entrypoint
}
rule _diPacker_V1X__diProtector_Software_
{
	meta:
		description = "diPacker V1.X -> diProtector Software"
	strings:
		$0 = {0F 00 2D E9 01 00 A0 E3 68 01 00 EB 8C 00 00 EB 2B 00 00 EB 00 00 20 E0 1C 10 8F E2 8E 20 8F E2 00 30 A0 E3 67 01 00 EB 0F 00 BD E8 00 C0 8F E2 00 F0 9C E5}
	condition:
		$0 at entrypoint
}
rule _Vx_Explosion1000_
{
	meta:
		description = "Vx: Explosion.1000"
	strings:
		$0 = {E8 ?? ?? 5E 1E 06 50 81 ?? ?? ?? 56 FC B8 21 35 CD 21 2E ?? ?? ?? ?? 2E ?? ?? ?? ?? 26 ?? ?? ?? ?? ?? ?? 74 ?? 8C D8 48 8E D8}
	condition:
		$0 at entrypoint
}
rule _Protection_Plus_vxx_
{
	meta:
		description = "Protection Plus vx.x"
	strings:
		$0 = {50 60 29 C0 64 FF 30 E8 ?? ?? ?? ?? 5D 83 ED 3C 89 E8 89 A5 14 ?? ?? ?? 2B 85 1C ?? ?? ?? 89 85 1C ?? ?? ?? 8D 85 27 03 ?? ?? 50 8B ?? 85 C0 0F 85 C0 ?? ?? ?? 8D BD 5B 03 ?? ?? 8D B5 43 03 ?? ?? E8 DD ?? ?? ?? 89 85 1F 03 ?? ?? 6A 40 68 ?? 10 ?? ?? 8B 85}
	condition:
		$0 at entrypoint
}
rule _Upack_v010__v012_Beta__Dwing_
{
	meta:
		description = "Upack v0.10 - v0.12 Beta -> Dwing"
	strings:
		$0 = {BE 48 01 ?? ?? ?? ?? ?? 95 A5 33 C0}
	condition:
		$0 at entrypoint
}
rule _CrunchPE_v10xx_
{
	meta:
		description = "Crunch/PE v1.0.x.x"
	strings:
		$0 = {55 E8 ?? ?? ?? ?? 5D 83 ED 06 8B C5 55 60 89 AD ?? ?? ?? ?? 2B 85 ?? ?? ?? ?? 89 85 ?? ?? ?? ?? 80 BD ?? ?? ?? ?? ?? 75 09 C6 85}
	condition:
		$0 at entrypoint
}
rule _PseudoSigner_01_PE_Protect_09__Anorganix_
{
	meta:
		description = "PseudoSigner 0.1 [PE Protect 0.9] --> Anorganix"
	strings:
		$0 = {52 51 55 57 64 67 A1 30 00 85 C0 78 0D E8 07 00 00 00 58 83 C0 07 C6 90 C3 E9}
	condition:
		$0 at entrypoint
}
rule _Exe_Shield_vxx_
{
	meta:
		description = "Exe Shield vx.x"
	strings:
		$0 = {65 78 65 73 68 6C 2E 64 6C 6C C0 5D 00}
	condition:
		$0 at entrypoint
}
rule _UPX_050__070_
{
	meta:
		description = "UPX 0.50 - 0.70"
	strings:
		$0 = {60 E8 00 00 00 00 58 83 E8 3D}
	condition:
		$0 at entrypoint
}
rule _PseudoSigner_01_LTC_13__Anorganix_
{
	meta:
		description = "PseudoSigner 0.1 [LTC 1.3] --> Anorganix"
	strings:
		$0 = {54 E8 00 00 00 00 5D 8B C5 81 ED F6 73 40 00 2B 85 87 75 40 00 83 E8 06 E9}
	condition:
		$0 at entrypoint
}
rule _PAVCryptor_Pawning_AntiVirus_Cryptor__masha_dev_
{
	meta:
		description = "PAV.Cryptor (Pawning AntiVirus Cryptor) -> masha_dev"
	strings:
		$0 = {53 56 57 55 BB 2C ?? ?? 70 BE 00 30 00 70 BF 20 ?? ?? 70 80 7B 28 00 75 16 83 3F 00 74 11 8B 17 89 D0 33 D2 89 17 8B E8 FF D5 83 3F 00 75 EF 83 3D 04 30 00 70 00 74 06 FF 15 54 30 00 70 80 7B 28 02 75 0A 83 3E 00 75 05 33 C0 89 43 0C FF 15 1C 30 00 70 80 7B 28 01 76 05 83 3E 00 74 22 8B 43 10 85 C0 74 1B FF 15 14 30 00 70 8B 53 10 8B 42 10 3B 42 04 74 0A 85 C0 74 06 50 E8 8F FA FF FF FF 15 20 30 00 70 80 7B 28 01 75 03 FF 53 24 80 7B 28 00 74 05 E8 35 FF FF FF 83 3B 00 75 17 83 3D 10 ?? ?? 70 00 74 06 FF 15 10 ?? ?? 70 8B 06 50 E8 A9 FA FF FF 8B 03 56 8B F0 8B FB B9 0B 00 00 00 F3 A5 5E E9 73 FF FF FF 5D 5F 5E 5B C3 A3 00 30 00 70 E8 26 FF FF FF C3 90 8F 05 04 30 00 70 E9 E9 FF FF FF C3}
	condition:
		$0
}
rule _SC_Obfuscator__SuperCRacker_
{
	meta:
		description = "SC Obfuscator -> SuperCRacker"
	strings:
		$0 = {60 33 C9 8B 1D 00 ?? ?? ?? 03 1D 08 ?? ?? ?? 8A 04 19 84 C0 74 09 3C ?? 74 05 34 ?? 88 04 19 41 3B 0D 04 ?? ?? ?? 75 E7 A1 08 ?? ?? ?? 01 05 0C ?? ?? ?? 61 FF 25 0C}
	condition:
		$0
}
rule _Ningishzida_10__CyberDoom_
{
	meta:
		description = "Ningishzida 1.0 -> CyberDoom"
	strings:
		$0 = {9C 60 96 E8 00 00 00 00 5D 81 ED 03 25 40 00 B9 04 1B 00 00 8D BD 4B 25 40 00 8B F7 AC ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? AA E2 CC}
	condition:
		$0 at entrypoint
}
rule _nPack_V112002006Beta__NEOxuinC_
{
	meta:
		description = "nPack V1.1.200.2006.Beta -> NEOx/[uinC]"
	strings:
		$0 = {83 3D 40 ?? ?? ?? 00 75 05 E9 01 00 00 00 C3 E8 41 00 00 00 B8 80 ?? ?? ?? 2B 05 08 ?? ?? ?? A3 3C ?? ?? ?? E8 5E 00 00 00 E8 EC 01 00 00 E8 F8 06 00 00 E8 03 06 00 00 A1 3C ?? ?? ?? C7 05 40 ?? ?? ?? 01 00 00 00 01 05 00 ?? ?? ?? FF 35 00 ?? ?? ?? C3 C3}
	condition:
		$0 at entrypoint
}
rule _Splasher_v10__v30_
{
	meta:
		description = "Splasher v1.0 - v3.0"
	strings:
		$0 = {9C 60 8B 44 24 24 E8 ?? ?? ?? ?? 5D 81 ED ?? ?? ?? ?? 50 E8 ED 02 ?? ?? 8C C0 0F 84}
	condition:
		$0 at entrypoint
}
rule _PKLITE_v100_v103_
{
	meta:
		description = "PKLITE v1.00, v1.03"
	strings:
		$0 = {B8 ?? ?? BA ?? ?? 8C DB 03 D8 3B}
	condition:
		$0 at entrypoint
}
rule _MSLRH_v032a_fake_WWPack32_1x__emadicius_
{
	meta:
		description = "[MSLRH] v0.32a (fake WWPack32 1.x) -> emadicius"
	strings:
		$0 = {53 55 8B E8 33 DB EB 60 0D 0A 0D 0A 57 57 50 61 63 6B 33 32 20 64 65 63 6F 6D 70 72 65 73 73 69 6F 6E 20 72 6F 75 74 69 6E 65 20 76 65 72 73 69 6F 6E 20 31 2E 31 32 0D 0A 28 63 29 20 31 39 39 38 20 50 69 6F 74 72 20 57 61 72 65 7A 61 6B 20 61 6E 64 20 52 61 66 61 6C 20 57 69 65 72 7A 62 69 63 6B 69 0D 0A 0D 0A 5D 5B 90 EB 05 E8 EB 04 40 00 EB FA E8 0A 00 00 00 E8 EB 0C 00 00 E8 F6 FF FF FF E8 F2 FF FF FF 83 C4 08 74 04 75 02 EB 02 EB 01 81 50 E8 02 00 00 00 29 5A 58 6B C0 03 E8 02 00 00 00 29 5A 83 C4 04 58 74 04 75 02 EB 02 EB 01 81 0F 31 50 0F 31 E8 0A 00 00 00 E8 EB 0C 00 00 E8 F6 FF FF FF E8 F2 FF FF FF}
	condition:
		$0 at entrypoint
}
rule _Upack_v039_final__Dwing_
{
	meta:
		description = "Upack v0.39 final -> Dwing"
	strings:
		$0 = {56 10 E2 E3 B1 04 D3 E0 03 E8 8D 53 18 33 C0 55 40 51 D3 E0 8B EA 91}
		$1 = {FF 76 38 AD 50 8B 3E BE F0 ?? ?? ?? 6A 27 59 F3 A5 FF 76 04 83 C8 FF}
	condition:
		$0 or $1
}
rule _EXECryptor_2223_protected_IAT_
{
	meta:
		description = "EXECryptor 2.2/2.3 (protected IAT)"
	strings:
		$0 = {CC ?? ?? ?? 00 00 00 00 FF FF FF FF 3C ?? ?? ?? B4 ?? ?? ?? 08 ?? ?? ?? 00 00 00 00 FF FF FF FF E8 ?? ?? ?? 04 ?? ?? ?? 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 6B 65 72 6E 65 6C 33 32 2E 64 6C 6C 00 00 00 00 00 00 47 65 74 4D 6F 64 75 6C 65 48 61 6E 64 6C 65 41 00 00 00 00 4C 6F 61 64 4C 69 62 72 61 72 79 41 00 00 00 00 47 65 74 50 72 6F 63 41 64 64 72 65 73 73 00 00 00 00 00 00 45 78 69 74 50 72 6F 63 65 73 73 00 00 00 00 00 56 69 72 74 75 61 6C 41 6C 6C 6F 63 00 00 00 00 56 69 72 74 75 61 6C 46 72 65 65 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 4C ?? ?? ?? 60 ?? ?? ?? 70 ?? ?? ?? 84 ?? ?? ?? 94 ?? ?? ?? A4 ?? ?? ?? 00 00 00 00 75 73 65 72 33 32 2E 64 6C 6C 00 00 00 00 4D 65 73 73 61 67 65 42 6F 78}
	condition:
		$0
}
rule _PseudoSigner_02_LCC_Win32_1x__Anorganix_
{
	meta:
		description = "PseudoSigner 0.2 [LCC Win32 1.x] --> Anorganix"
	strings:
		$0 = {64 A1 01 00 00 00 55 89 E5 6A FF 68 ?? ?? ?? ?? 68 9A 10 40 90 50}
	condition:
		$0 at entrypoint
}
rule _PKLITE_v120_
{
	meta:
		description = "PKLITE v1.20"
	strings:
		$0 = {B8 ?? ?? BA ?? ?? 05 ?? ?? 3B 06 ?? ?? 72 ?? B4 09 BA ?? ?? CD 21 B4 4C CD 21}
	condition:
		$0 at entrypoint
}
rule _VBOX_v42_MTE_
{
	meta:
		description = "VBOX v4.2 MTE"
	strings:
		$0 = {8C E0 0B C5 8C E0 0B C4 03 C5 74 00 74 00 8B C5}
	condition:
		$0 at entrypoint
}
rule _STNPEE_113_
{
	meta:
		description = "STNPEE 1.13"
	strings:
		$0 = {55 57 56 52 51 53 E8 00 00 00 00 5D 8B D5 81 ED 97 3B 40 00}
	condition:
		$0 at entrypoint
}
rule _WWPACK_v305c4_Unextr_Passwcheck_Vir_shield_
{
	meta:
		description = "WWPACK v3.05c4 (Unextr. Passw.check. Vir. shield)"
	strings:
		$0 = {03 05 C0 1B B8 ?? ?? 8C CA 03 D0 8C C9 81 C1 ?? ?? 51 B9 ?? ?? 51 06 06 B1 ?? 51 8C D3}
	condition:
		$0 at entrypoint
}
rule _codeCrypter_031_
{
	meta:
		description = "codeCrypter 0.31"
	strings:
		$0 = {50 58 53 5B 90 BB ?? ?? 40 00 FF E3 90 CC CC CC 55 8B EC 5D C3 CC CC CC CC CC CC CC CC CC CC CC}
	condition:
		$0
}
rule _Morphine_V27__Holy_Father__Ratter29A_
{
	meta:
		description = "Morphine V2.7 -> Holy_Father & Ratter/29A"
	strings:
		$0 = {00 00 00 00 00 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? 00 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? 00 00 00 00 4B 65 52 6E 45 6C 33 32 2E 64 4C 6C 00 00 47 65 74 50 72 6F 63 41 64 64 72}
	condition:
		$0
}
rule _ASPack_v103b__Alexey_Solodovnikov_
{
	meta:
		description = "ASPack v1.03b -> Alexey Solodovnikov"
	strings:
		$0 = {60 E8 ?? ?? ?? ?? 5D 81 ED AE 98 43 ?? B8 A8 98 43 ?? 03 C5 2B 85 18 9D 43 ?? 89 85 24 9D 43 ?? 80 BD 0E 9D 43}
	condition:
		$0 at entrypoint
}
rule _EXECryptor_239_compressed_resources_
{
	meta:
		description = "EXECryptor 2.3.9 (compressed resources)"
	strings:
		$0 = {51 68 ?? ?? ?? ?? 59 81 F1 12 3C CB 98 E9 53 2C 00 00 F7 D7 E9 EB 60 00 00 83 45 F8 02 E9 E3 36 00 00 F6 45 F8 20 0F 84 1E 21 00 00 55 E9 80 62 00 00 87 0C 24 8B E9 ?? ?? ?? ?? 00 00 23 C1 81 E9 ?? ?? ?? ?? 57 E9 ED 00 00 00 0F 88 ?? ?? ?? ?? E9 2C 0D 00 00 81 ED BB 43 CB 79 C1 E0 1C E9 9E 14 00 00 0B 15 ?? ?? ?? ?? 81 E2 2A 70 7F 49 81 C2 9D 83 12 3B E8 0C 50 00 00 E9 A0 16 00 00 59 5B C3 64 FF 35 00 00 00 00 64 89 25 00 00 00 00 E8 41 42 00 00 E9 93 33 00 00 31 DB 89 D8 59 5B C3 A1 ?? ?? ?? ?? 8A 00 2C 99 E9 82 30 00 00 0F 8A ?? ?? ?? ?? B8 01 00 00 00 31 D2 0F A2 25 FF 0F 00 00 E9 72 21 00 00 0F 86 57 0B 00 00 E9 ?? ?? ?? ?? C1 C0 03 E8 F0 36 00 00 E9 41 0A 00 00 81 F7 B3 6E 85 EA 81 C7 ?? ?? ?? ?? 87 3C 24 E9 74 52 00 00 0F 8E ?? ?? ?? ?? E8 5E 37 00 00 68 B1 74 96 13 5A E9 A1 04 00 00 81 D1 49 C0 12 27 E9 50 4E 00 00 C1 C8 1B 1B C3 81 E1 96 36 E5}
	condition:
		$0 at entrypoint
}
rule _FSG_v120_Eng__dulekxt__Borland_Delphi__Microsoft_Visual_Cpp_
{
	meta:
		description = "FSG v1.20 (Eng) -> dulek/xt -> (Borland Delphi / Microsoft Visual C++)"
	strings:
		$0 = {0F B6 D0 E8 01 00 00 00 0C 5A B8 80 ?? ?? 00 EB 02 00 DE 8D 35 F4 00 00 00 F7 D2 EB 02 0E EA 8B 38 EB 01 A0 C1 F3 11 81 EF 84 88 F4 4C EB 02 CD 20 83 F7 22 87 D3 33 FE C1 C3 19 83 F7 26 E8 02 00 00 00 BC DE 5A 81 EF F7 EF 6F 18 EB 02 CD 20 83 EF 7F EB 01}
	condition:
		$0 at entrypoint
}
rule _Inbuild_v10_hard_
{
	meta:
		description = "Inbuild v1.0 [hard]"
	strings:
		$0 = {B9 ?? ?? BB ?? ?? 2E ?? ?? 2E ?? ?? 43 E2}
	condition:
		$0 at entrypoint
}
rule _PEBundle_v20b5__v23_
{
	meta:
		description = "PEBundle v2.0b5 - v2.3"
	strings:
		$0 = {9C 60 E8 02 ?? ?? ?? 33 C0 8B C4 83 C0 04 93 8B E3 8B 5B FC 81 EB ?? ?? 40 ?? 87 DD 01 AD ?? ?? ?? ?? 01 AD}
	condition:
		$0 at entrypoint
}
rule _PE_Crypt_v100v101_
{
	meta:
		description = "PE Crypt v1.00/v1.01"
	strings:
		$0 = {E8 ?? ?? ?? ?? 5B 83 EB 05 EB 04 52 4E 44 21 EB 02 CD 20 EB}
	condition:
		$0 at entrypoint
}
rule _PseudoSigner_01_REALBasic__Anorganix_
{
	meta:
		description = "PseudoSigner 0.1 [REALBasic] --> Anorganix"
	strings:
		$0 = {55 89 E5 90 90 90 90 90 90 90 90 90 90 50 90 90 90 90 90 00 01 E9}
	condition:
		$0 at entrypoint
}
rule _PKLITE_v112_v115_v120_2_
{
	meta:
		description = "PKLITE v1.12, v1.15, v1.20 (2)"
	strings:
		$0 = {B8 ?? ?? BA ?? ?? 3B C4 73}
	condition:
		$0 at entrypoint
}
rule _Vx_Trivial25_
{
	meta:
		description = "Vx: Trivial.25"
	strings:
		$0 = {B4 4E FE C6 CD 21 B8 ?? 3D BA ?? 00 CD 21 93 B4 40 CD}
	condition:
		$0 at entrypoint
}
rule _tElock_v099_Special_Build__heXer__forgot_
{
	meta:
		description = "tElock v0.99 Special Build -> heXer & forgot"
	strings:
		$0 = {E9 5E DF FF FF 00 00 00 ?? ?? ?? ?? E5 ?? ?? 00 00 00 00 00 00 00 00 00 05 ?? ?? 00 F5 ?? ?? 00 ED ?? ?? 00 00 00 00 00 00 00 00 00 12 ?? ?? 00 FD ?? ?? 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 1D ?? ?? 00 00 00 00 00 30 ?? ?? 00 00}
		$1 = {E9 5E DF FF FF 00 00 00 ?? ?? ?? ?? E5 ?? ?? 00 00 00 00 00 00 00 00 00 05 ?? ?? 00 F5 ?? ?? 00 ED ?? ?? 00 00 00 00 00 00 00 00 00 12 ?? ?? 00 FD ?? ?? 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 1D ?? ?? 00 00 00 00 00 30 ?? ?? 00 00 00 00 00 1D ?? ?? 00 00 00 00 00 30 ?? ?? 00 00 00 00 00}
	condition:
		$0 at entrypoint or $1 at entrypoint
}
rule _Private_Personal_Packer_PPP_102__ConquestOfTroycom_
{
	meta:
		description = "Private Personal Packer (PPP) 1.0.2 -> ConquestOfTroy.com"
	strings:
		$0 = {E8 17 00 00 00 E8 68 00 00 00 FF 35 2C 37 00 10 E8 ED 01 00 00 6A 00 E8 2E 04 00 00 E8 41 04 00 00 A3 74 37 00 10 6A 64 E8 5F 04 00 00 E8 30 04 00 00 A3 78 37 00 10 6A 64 E8 4E 04 00 00 E8 1F 04 00 00 A3 7C 37 00 10 A1 74 37 00 10 8B 1D 78 37 00 10 2B D8 8B 0D 7C 37 00 10 2B C8 83 FB 64 73 0F 81 F9 C8 00 00 00 73 07 6A 00 E8 D9 03 00 00 C3 6A 0A 6A 07 6A 00 E8 D3 03 00 00 A3 20 37 00 10 50 6A 00 E8 DE 03 00 00 A3 24 37 00 10 FF 35 20 37 00 10 6A 00 E8 EA 03 00 00 A3 30 37 00 10 FF 35 24 37 00 10 E8 C2 03 00 00 A3 28 37 00 10 8B 0D 30 37 00 10 8B 3D 28 37 00 10 EB 09 49 C0 04 39 55 80 34 39 24 0B C9}
	condition:
		$0
}
rule _Inno_Setup_Module_v2018_
{
	meta:
		description = "Inno Setup Module v2.0.18"
	strings:
		$0 = {55 8B EC 83 C4 B8 53 56 57 33 C0 89 45 F0 89 45 BC 89 45 B8 E8 73 71 FF FF E8 DA 85 FF FF E8 81 A7 FF FF E8 C8}
	condition:
		$0
}
rule _Upack_v036_beta__Dwing_
{
	meta:
		description = "Upack v0.36 beta -> Dwing"
	strings:
		$0 = {BE E0 11 ?? ?? FF 36 E9 C3 00 00 00 48 01 ?? ?? 0B 01 4B 45 52 4E 45 4C 33 32 2E 44 4C 4C}
		$1 = {BE E0 11 ?? ?? FF 36 E9 C3 00 00 00 48 01 ?? ?? 0B 01 4B 45 52 4E 45 4C 33 32 2E 44 4C 4C ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 47 65 74 50 72 6F 63 41 64 64 72 65 73 73 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 82 8E FE FF FF 58 8B 4E 40 5F E3}
	condition:
		$0 at entrypoint or $1 at entrypoint
}
rule _eXPressor_12__CGSoftLabs_
{
	meta:
		description = "eXPressor 1.2 -> CGSoftLabs"
	strings:
		$0 = {55 8B EC 81 EC D4 01 00 00 53 56 57 EB 0C 45 78 50 72 2D 76 2E 31 2E 32 2E 2E}
	condition:
		$0 at entrypoint
}
rule _SPEC_b3_
{
	meta:
		description = "SPEC b3"
	strings:
		$0 = {5B 53 50 45 43 5D E8 ?? ?? ?? ?? 5D 8B C5 81 ED 41 24 40 ?? 2B 85 89 26 40 ?? 83 E8 0B 89 85 8D 26 40 ?? 0F B6 B5 91 26 40 ?? 8B FD}
	condition:
		$0 at entrypoint
}
rule _Vx_Compiler_
{
	meta:
		description = "Vx: Compiler"
	strings:
		$0 = {8C C3 83 C3 10 2E 01 1E ?? 02 2E 03 1E ?? 02 53 1E}
	condition:
		$0 at entrypoint
}
rule _dePACK__deNULL_
{
	meta:
		description = "dePACK -> deNULL"
	strings:
		$0 = {EB 01 DD 60 68 00 ?? ?? ?? 68 ?? ?? 00 00 E8 ?? 00 00 00}
		$1 = {EB 01 DD 60 68 00 ?? ?? ?? 68 ?? ?? ?? 00 E8 ?? 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? D2}
	condition:
		$0 at entrypoint or $1 at entrypoint
}
rule _WWPACK_v303_
{
	meta:
		description = "WWPACK v3.03"
	strings:
		$0 = {B8 ?? ?? 8C CA 03 D0 8C C9 81 C1 ?? ?? 51 B9 ?? ?? 51 06 06 BB ?? ?? 53}
	condition:
		$0 at entrypoint
}
rule _BeRo_Tiny_Pascal__BeRo_
{
	meta:
		description = "BeRo Tiny Pascal -> BeRo"
	strings:
		$0 = {E9 ?? ?? ?? ?? 20 43 6F 6D 70 69 6C 65 64 20 62 79 3A 20 42 65 52 6F 54 69 6E 79 50 61 73 63 61 6C 20 2D 20 28 43 29 20 43 6F 70 79 72 69 67 68 74 20 32 30 30 36 2C 20 42 65 6E 6A 61 6D 69 6E 20 27 42 65 52 6F 27 20 52 6F 73 73 65 61 75 78 20}
	condition:
		$0 at entrypoint
}
rule _ASProtect_V2X_DLL__Alexey_Solodovnikov_
{
	meta:
		description = "ASProtect V2.X DLL -> Alexey Solodovnikov"
	strings:
		$0 = {60 E8 03 00 00 00 E9 ?? ?? 5D 45 55 C3 E8 01 00 00 00 EB 5D BB ?? ?? ?? ?? 03 DD}
	condition:
		$0 at entrypoint
}
rule _PC_Shrinker_v071_
{
	meta:
		description = "PC Shrinker v0.71"
	strings:
		$0 = {9C 60 BD ?? ?? ?? ?? 01 AD 54 3A 40 ?? FF B5 50 3A 40 ?? 6A 40 FF 95 88 3A 40 ?? 50 50 2D ?? ?? ?? ?? 89 85}
	condition:
		$0 at entrypoint
}
rule _PseudoSigner_01_CDCops_II__Anorganix_
{
	meta:
		description = "PseudoSigner 0.1 [CD-Cops II] --> Anorganix"
	strings:
		$0 = {53 60 BD 90 90 90 90 8D 45 90 8D 5D 90 E8 00 00 00 00 8D 01 E9}
	condition:
		$0 at entrypoint
}
rule _SafeDisc_v4_
{
	meta:
		description = "SafeDisc v4"
	strings:
		$0 = {00 00 00 00 00 00 00 00 00 00 00 00 42 6F 47 5F}
	condition:
		$0
}
rule _PE_Password_v02_SMTSMF_
{
	meta:
		description = "PE Password v0.2 SMT/SMF"
	strings:
		$0 = {E8 04 ?? ?? ?? 8B EC 5D C3 33 C0 5D 8B FD 81 ED 33 26 40 ?? 81 EF ?? ?? ?? ?? 83 EF 05 89 AD 88 27 40 ?? 8D 9D 07 29 40 ?? 8D B5 62 28 40 ?? 46 80}
	condition:
		$0 at entrypoint
}
rule _EncryptPE_V22006115__WFS_
{
	meta:
		description = "EncryptPE V2.2006.1.15 -> WFS"
	strings:
		$0 = {45 50 45 3A 20 45 6E 63 72 79 70 74 50 45 20 56 32 2E 32 30 30 36 2E 31 2E 31 35}
	condition:
		$0
}
rule _Krypton_v04_
{
	meta:
		description = "Krypton v0.4"
	strings:
		$0 = {54 E8 ?? ?? ?? ?? 5D 8B C5 81 ED 61 34 ?? ?? 2B 85 60 37 ?? ?? 83 E8 06}
	condition:
		$0 at entrypoint
}
rule _PKLITE_v100c_1_
{
	meta:
		description = "PKLITE v1.00c (1)"
	strings:
		$0 = {2E 8C 1E ?? ?? 8B 1E ?? ?? 8C DA 81 C2 ?? ?? 3B DA 72 ?? 81 EB ?? ?? 83 EB ?? FA 8E D3 BC ?? ?? FB FD BE ?? ?? 8B FE}
	condition:
		$0 at entrypoint
}
rule _PECompact_v110b3_
{
	meta:
		description = "PECompact v1.10b3"
	strings:
		$0 = {EB 06 68 ?? ?? ?? ?? C3 9C 60 E8 02 ?? ?? ?? 33 C0 8B C4 83 C0 04 93 8B E3 8B 5B FC 81 EB 0F 60 40 ?? 87 DD 8B 85 95 60 40 ?? 01 85 03 60 40 ?? 66 C7 85 ?? 60 40 ?? 90 90 BB 95}
	condition:
		$0 at entrypoint
}
rule _PseudoSigner_02_Gleam_100__Anorganix_
{
	meta:
		description = "PseudoSigner 0.2 [Gleam 1.00] --> Anorganix"
	strings:
		$0 = {90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 EB 0B 83 EC 0C 53 56 57 E8 24 02 00 FF}
	condition:
		$0 at entrypoint
}
rule _Obsidium_v13037__Obsidium_Software_
{
	meta:
		description = "Obsidium v1.3.0.37 -> Obsidium Software"
	strings:
		$0 = {EB 02 ?? ?? E8 26 00 00 00 EB 03 ?? ?? ?? EB 01 ?? 8B 54 24 0C EB 04 ?? ?? ?? ?? 83 82 B8 00 00 00 26 EB 01 ?? 33 C0 EB 02 ?? ?? C3 EB 01 ?? EB 04 ?? ?? ?? ?? 64 67 FF 36 00 00 EB 01 ?? 64 67 89 26 00 00 EB 01 ?? EB 03 ?? ?? ?? 50 EB 03 ?? ?? ?? 33 C0 EB 03 ?? ?? ?? 8B 00 EB 04 ?? ?? ?? ?? C3 EB 03 ?? ?? ?? E9 FA 00 00 00 EB 03 ?? ?? ?? E8 D5 FF FF FF EB 04 ?? ?? ?? ?? EB 01 ?? 58 EB 02 ?? ?? EB 03 ?? ?? ?? 64 67 8F 06 00 00 EB 01 ?? 83 C4 04 EB 03 ?? ?? ?? E8 23 27}
	condition:
		$0 at entrypoint
}
rule _PEncrypt_v31_
{
	meta:
		description = "PEncrypt v3.1"
	strings:
		$0 = {E9 ?? ?? ?? 00 F0 0F C6}
	condition:
		$0 at entrypoint
}
rule _PeCompact2_253276__BitSum_Technologies_
{
	meta:
		description = "PeCompact2 2.53-2.76 --> BitSum Technologies"
	strings:
		$0 = {B8 ?? ?? ?? ?? 55 53 51 57 56 52 8D 98 C9 11 00 10 8B 53 18 52 8B E8 6A 40 68 00 10 00 00 FF 73 04 6A 00 8B 4B 10 03 CA 8B 01 FF D0 5A 8B F8 50 52 8B 33 8B 43 20 03 C2 8B 08 89 4B 20 8B 43 1C 03 C2 8B 08 89 4B 1C 03 F2 8B 4B 0C 03 CA 8D 43 1C 50 57 56 FF}
	condition:
		$0
}
rule _PseudoSigner_02_Borland_Cpp_DLL_Method_2__Anorganix_
{
	meta:
		description = "PseudoSigner 0.2 [Borland C++ DLL (Method 2)] --> Anorganix"
	strings:
		$0 = {EB 10 66 62 3A 43 2B 2B 48 4F 4F 4B 90 E9 90 90 90 90}
	condition:
		$0 at entrypoint
}
rule _Virogen_Crypt_v075_
{
	meta:
		description = "Virogen Crypt v0.75"
	strings:
		$0 = {9C 55 E8 EC 00 00 00 87 D5 5D 60 87 D5 80 BD 15 27 40 00 01}
	condition:
		$0 at entrypoint
}
rule _PECompact_v200_alpha_38_
{
	meta:
		description = "PECompact v2.00 alpha 38"
	strings:
		$0 = {B8 ?? ?? ?? ?? 80 B8 BF 10 00 10 01 74 7A C6 80 BF 10 00 10 01 9C 55 53 51 57 52 56 8D 98 0F 10 00 10 8B 53 14 8B E8 6A 40 68 00 10 00 00 FF 73 04 6A 00 8B 4B 10 03 CA 8B 01 FF D0 8B F8 50 8B 33 8B 53 14 03 F2 8B 4B 0C 03 CA 8D 85 B7 10 00 10 FF 73 04 8F}
	condition:
		$0
}
rule _JDPack_2x__JDPack_
{
	meta:
		description = "JDPack 2.x -> JDPack"
	strings:
		$0 = {55 8B EC 6A FF 68 68 51 40 00 68 04 25 40 00 64 A1 00 00 00 00}
	condition:
		$0 at entrypoint
}
rule _PseudoSigner_02_PE_Intro_10__Anorganix_
{
	meta:
		description = "PseudoSigner 0.2 [PE Intro 1.0] --> Anorganix"
	strings:
		$0 = {8B 04 24 9C 60 E8 14 00 00 00 5D 81 ED 0A 45 40 90 80 BD 67 44 40 90 90 0F 85 48 FF ED 0A}
	condition:
		$0 at entrypoint
}
rule _SEN_Debug_Protector_
{
	meta:
		description = "SEN Debug Protector???"
	strings:
		$0 = {BB ?? ?? ?? ?? 00 ?? ?? ?? ?? ?? 29 ?? ?? 4E E8}
	condition:
		$0 at entrypoint
}
rule _PECompact_v125_
{
	meta:
		description = "PECompact v1.25"
	strings:
		$0 = {EB 06 68 ?? ?? ?? ?? C3 9C 60 E8 02 ?? ?? ?? 33 C0 8B C4 83 C0 04 93 8B E3 8B 5B FC 81 EB 0F 70 40 ?? 87 DD 8B 85 A6 70 40 ?? 01 85 03 70 40 ?? 66 C7 85 70 40 90 ?? 90 01 85 9E 70 40 BB ?? F3 0D}
	condition:
		$0 at entrypoint
}
rule _RPolyCrypt_v_10_personal_polycryptor_sign_from_pinch_
{
	meta:
		description = "RPolyCrypt v 1.0 (personal polycryptor) sign from pinch"
	strings:
		$0 = {50 58 97 97 60 61 8B 04 24 80 78 F3 6A E8 00 00 00 00 58 E8 00 00 00 00 58 91 91 EB 00 0F 85 6B F4 76 6F E8 00 00 00 00 83 C4 04 E8 00 00 00 00 58 90 E8 00 00 00 00 83 C4 04 8B 04 24 80 78 F1}
	condition:
		$0 at entrypoint
}
rule _Sentinel_SuperPro_Automatic_Protection_v641__Safenet_
{
	meta:
		description = "Sentinel SuperPro (Automatic Protection) v6.4.1 -> Safenet"
	strings:
		$0 = {A1 ?? ?? ?? ?? 55 8B ?? ?? ?? 85 C0 74 ?? 85 ED 75 ?? A1 ?? ?? ?? ?? 50 55 FF 15 ?? ?? ?? ?? 8B 0D ?? ?? ?? ?? 55 51 FF 15 ?? ?? ?? ?? 85 C0 74 ?? 8B 15 ?? ?? ?? ?? 52 FF 15 ?? ?? ?? ?? 6A 00 6A 00 68 ?? ?? ?? ?? E8 ?? ?? ?? ?? B8 01 00 00 00 5D C2 0C 00}
	condition:
		$0 at entrypoint
}
rule _PseudoSigner_02_Lockless_Intro_Pack__Anorganix_
{
	meta:
		description = "PseudoSigner 0.2 [Lockless Intro Pack] --> Anorganix"
	strings:
		$0 = {2C E8 EB 1A 90 90 5D 8B C5 81 ED F6 73 90 90 2B 85 90 90 90 90 83 E8 06 89 85 FF 01 EC AD}
	condition:
		$0 at entrypoint
}
rule _tElock_v098_
{
	meta:
		description = "tElock v0.98"
	strings:
		$0 = {E9 25 E4 FF FF 00 00 00 ?? ?? ?? ?? 1E}
	condition:
		$0 at entrypoint
}
rule _RLPack_V119_Dll_LZMA_430__ap0x_
{
	meta:
		description = "RLPack V1.19 Dll (LZMA 4.30) -> ap0x"
	strings:
		$0 = {80 7C 24 08 01 0F 85 C7 01 00 00 60 E8 00 00 00 00 8B 2C 24 83 C4 04 83 7C 24 28 01 75 0C 8B 44 24 24 89 85 49 0B 00 00 EB 0C 8B 85 45 0B 00 00 89 85 49 0B 00 00 8D B5 6D 0B 00 00 8D 9D 2F 03 00 00 33 FF 6A 40 68 00 10 00 00 68 00 20 0C 00 6A 00 FF 95 DA 0A 00 00 89 85 41 0B 00 00 E8 76 01 00 00 EB 20 60 8B 85 49 0B 00 00 FF B5 41 0B 00 00 FF 34 37 01 04 24 FF 74 37 04 01 04 24 FF D3 61 83 C7 08 83 3C 37 00 75 DA 83 BD 55 0B 00 00 00 74 0E 83 BD 59 0B 00 00 00 74 05 E8 D7 01 00 00 8D 74 37 04 53 6A 40 68 00 10 00 00 68 ?? ?? ?? ?? 6A 00 FF 95 DA 0A 00 00 89 85 69 0B 00 00 5B 60 FF B5 41 0B 00 00 56 FF B5 69 0B 00 00 FF D3 61 8B B5 69 0B 00 00 8B C6 EB 01 40 80 38 01 75 FA 40 8B 38 03 BD 49 0B 00 00 83 C0 04 89 85 65 0B 00 00 E9 98 00 00 00 56 FF 95 D2 0A 00 00 89 85 61 0B 00 00 85 C0 0F 84 C8 00 00 00 8B C6 EB 5F 8B 85 65 0B 00 00 8B 00 A9 00 00 00 80 74 14 35 00 00 00 80 50 8B 85 65 0B 00 00 C7 00 20 20 20 00 EB 06 FF B5 65 0B 00 00 FF B5 61 0B 00 00 FF 95 D6 0A 00 00 85 C0 0F 84 87 00 00 00 89 07 83 C7 04 8B 85 65 0B 00 00 EB 01 40 80 38 00 75 FA 40 89 85 65 0B 00 00 66 81 78 02 00 80 74 A1 80 38 00 75 9C EB 01 46 80 3E 00 75 FA 46 40 8B 38 03 BD 49 0B 00 00 83 C0 04 89 85 65 0B 00 00 80 3E 01 0F 85 5F FF FF FF 68 00 40 00 00 68 ?? ?? ?? ?? FF B5 69 0B 00 00 FF 95 DE 0A 00 00 68 00 40 00 00 68 00 20 0C 00 FF B5 41 0B 00 00 FF 95 DE 0A 00 00 E8 3D 00 00 00 E8 24 01 00 00 61 E9 ?? ?? ?? ?? 61 C3}
	condition:
		$0 at entrypoint
}
rule _NsPacK_V30__LiuXingPing_
{
	meta:
		description = "NsPacK V3.0 -> LiuXingPing"
	strings:
		$0 = {9C 60 E8 00 00 00 00 5D B8 07 00 00 00 2B E8 8D B5 ?? ?? ?? ?? 66 8B 06 66 83 F8 00 74}
	condition:
		$0 at entrypoint
}
rule _PEPACK_v10_by_ANAKiN_1998__
{
	meta:
		description = "PE-PACK v1.0 by ANAKiN 1998 (???)"
	strings:
		$0 = {74 ?? E9 ?? ?? ?? ?? 00 00 00 00}
	condition:
		$0 at entrypoint
}
rule _EXE_Stealth_v273_
{
	meta:
		description = "EXE Stealth v2.73"
	strings:
		$0 = {EB 00 EB 2F 53 68 61 72 65 77 61 72 65 20 2D 20 45 78 65 53 74 65 61 6C 74 68 00 EB 16 77 77 77 2E 77 65 62 74 6F 6F 6C 6D 61 73 74 65 72 2E 63 6F 6D 00 60 90 E8 00 00 00 00 5D 81 ED F0 27 40 00 B9 15 00 00 00 83 C1 05 EB 05 EB FE 83 C7 56 EB 00 83 E9 02}
	condition:
		$0
}
rule _NFO_v10_
{
	meta:
		description = "NFO v1.0"
	strings:
		$0 = {8D 50 12 2B C9 B1 1E 8A 02 34 77 88 02 42 E2 F7 C8 8C}
	condition:
		$0 at entrypoint
}
rule _Safe_20_
{
	meta:
		description = "Safe 2.0"
	strings:
		$0 = {83 EC 10 53 56 57 E8 C4 01 00}
	condition:
		$0
}
rule _Upack_v02_Beta__Dwing_
{
	meta:
		description = "Upack v0.2 Beta -> Dwing"
	strings:
		$0 = {BE 88 01 ?? ?? AD 8B F8 95 A5 33 C0 33}
	condition:
		$0 at entrypoint
}
rule _WWPACK_v305c4_Unextractable_
{
	meta:
		description = "WWPACK v3.05c4 (Unextractable)"
	strings:
		$0 = {03 05 00 1B B8 ?? ?? 8C CA 03 D0 8C C9 81 C1 ?? ?? 51 B9 ?? ?? 51 06 06 B1 ?? 51 8C D3}
	condition:
		$0 at entrypoint
}
rule _MSLRH_v032a_fake_PECompact_14x__emadicius_
{
	meta:
		description = "[MSLRH] v0.32a (fake PECompact 1.4x) -> emadicius"
	strings:
		$0 = {EB 06 68 2E A8 00 00 C3 9C 60 E8 02 00 00 00 33 C0 8B C4 83 C0 04 93 8B E3 8B 5B FC 81 EB 3F 90 40 00 61 9D EB 05 E8 EB 04 40 00 EB FA E8 0A 00 00 00 E8 EB 0C 00 00 E8 F6 FF FF FF E8 F2 FF FF FF 83 C4 08 74 04 75 02 EB 02 EB 01 81 50 E8 02 00 00 00 29 5A 58 6B C0 03 E8 02 00 00 00 29 5A 83 C4 04 58 74 04 75 02 EB 02 EB 01 81 0F 31 50 0F 31 E8 0A 00 00 00 E8 EB 0C 00 00 E8 F6 FF FF FF E8 F2 FF FF FF}
	condition:
		$0 at entrypoint
}
rule _UPX_Protector_v10x_
{
	meta:
		description = "UPX Protector v1.0x"
	strings:
		$0 = {EB EC ?? ?? ?? ?? 8A 06 46 88 07 47 01 DB 75 07}
	condition:
		$0 at entrypoint
}
rule _Obsidium_13017__Obsidium_software_
{
	meta:
		description = "Obsidium 1.3.0.17 -> Obsidium software"
	strings:
		$0 = {EB 02 ?? ?? E8 28 00 00 00 EB 04 ?? ?? ?? ?? EB 01 ?? 8B 54 24 0C EB 01 ?? 83 82 B8 00 00 00 25 EB 02 ?? ?? 33 C0 EB 03 ?? ?? ?? C3 EB 03 ?? ?? ?? EB 02 ?? ?? 64 67 FF 36 00 00 EB 01 ?? 64 67 89 26 00 00 EB 03 ?? ?? ?? EB 04 ?? ?? ?? ?? 50 EB 04}
	condition:
		$0 at entrypoint
}
rule _AHTeam_EP_Protector_03_fake_Stones_PE_Encryptor_20__FEUERRADER_
{
	meta:
		description = "AHTeam EP Protector 0.3 (fake Stone's PE Encryptor 2.0) -> FEUERRADER"
	strings:
		$0 = {90 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 90 FF E0 53 51 52 56 57 55 E8 00 00 00 00 5D 81 ED 42 30 40 00 FF 95 32 35 40 00 B8 37 30 40 00 03 C5 2B 85 1B 34 40 00 89 85 27 34 40 00 83}
	condition:
		$0 at entrypoint
}
rule _ACProtect_109g__Risco_software_Inc_
{
	meta:
		description = "ACProtect 1.09g -> Risco software Inc."
	strings:
		$0 = {60 F9 50 E8 01 00 00 00 7C 58 58 49 50 E8 01 00 00 00 7E 58 58 79 04 66 B9 B8 72 E8 01 00 00 00 7A 83 C4 04 85 C8 EB 01 EB C1 F8 BE 72 03 73 01 74 0F 81 01 00 00 00 F9 EB 01 75 F9 E8 01 00 00}
	condition:
		$0 at entrypoint
}
rule _mkfpack__llydd_
{
	meta:
		description = "mkfpack -> llydd"
	strings:
		$0 = {E8 00 00 00 00 5B 81 EB 05 00 00 00 8B 93 9F 08 00 00 53 6A 40 68 00 10 00 00 52 6A 00 FF 93 32 08 00 00 5B 8B F0 8B BB 9B 08 00 00 03 FB 56 57 E8 86 08 00 00 83 C4 08 8D 93 BB 08 00 00 52 53 FF E6}
	condition:
		$0
}
rule _XPEOR_v099b_
{
	meta:
		description = "X-PEOR v0.99b"
	strings:
		$0 = {E8 00 00 00 00 5D 8B CD 81 ED 7A 29 40 00 89 AD 0F 6D 40 00}
		$1 = {E8 ?? ?? ?? ?? 5D 8B CD 81 ED 7A 29 40 ?? 89 AD 0F 6D 40}
	condition:
		$0 at entrypoint or $1 at entrypoint
}
rule _FlyCrypter_10__ut1lz_
{
	meta:
		description = "Fly-Crypter 1.0 -> ut1lz"
	strings:
		$0 = {53 56 57 55 BB 2C ?? ?? 44 BE 00 30 44 44 BF 20 ?? ?? 44 80 7B 28 00 75 16 83 3F 00 74 11 8B 17 89 D0 33 D2 89 17 8B E8 FF D5 83 3F 00 75 EF 83 3D 04 30 44 44 00 74 06 FF 15 58 30 44 44 80 7B 28 02 75 0A 83 3E 00 75 05 33 C0 89 43 0C FF 15 20 30 44 44 80 7B 28 01 76 05 83 3E 00 74 22 8B 43 10 85 C0 74 1B FF 15 18 30 44 44 8B 53 10 8B 42 10 3B 42 04 74 0A 85 C0 74 06 50 E8 2F FA FF FF FF 15 24 30 44 44 80 7B 28 01 75 03 FF 53 24 80 7B 28 00 74 05 E8 35 FF FF FF 83 3B 00 75 17 83 3D 10 ?? ?? 44 00 74 06 FF 15 10 ?? ?? 44 8B 06 50 E8 51 FA FF FF 8B 03 56 8B F0 8B FB B9 0B 00 00 00 F3 A5 5E E9 73 FF FF FF 5D 5F 5E 5B C3 A3 00 30 44 44 E8 26 FF FF FF C3}
		$1 = {55 8B EC 83 C4 F0 53 B8 18 22 44 44 E8 7F F7 FF FF E8 0A F1 FF FF B8 09 00 00 00 E8 5C F1 FF FF 8B D8 85 DB 75 05 E8 85 FD FF FF 83 FB 01 75 05 E8 7B FD FF FF 83 FB 02 75 05 E8 D1 FD FF FF 83 FB 03 75 05 E8 87 FE FF FF 83 FB 04 75 05 E8 5D FD FF FF 83 FB 05 75 05 E8 B3 FD FF FF 83 FB 06 75 05 E8 69 FE FF FF 83 FB 07 75 05 E8 5F FE FF FF 83 FB 08 75 05 E8 95 FD FF FF 83 FB 09 75 05 E8 4B FE FF FF 5B E8 9D F2 FF FF 90}
	condition:
		$0 or $1 at entrypoint
}
rule _PseudoSigner_01_Microsoft_Visual_Cpp_60_Debug_Version__Anorganix_
{
	meta:
		description = "PseudoSigner 0.1 [Microsoft Visual C++ 6.0 (Debug Version)] --> Anorganix"
	strings:
		$0 = {55 8B EC 51 90 90 90 01 01 90 90 90 90 68 ?? ?? ?? ?? 90 90 90 90 90 90 90 90 90 90 90 90 00 01 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 00 01 90 90 90 90 90}
	condition:
		$0 at entrypoint
}
rule _Themida_10xx__1800_compressed_engine__Oreans_Technologies_
{
	meta:
		description = "Themida 1.0.x.x - 1.8.0.0 (compressed engine) -> Oreans Technologies"
	strings:
		$0 = {B8 ?? ?? ?? ?? 60 0B C0 74 58 E8 00 00 00 00 58 05 43 00 00 00 80 38 E9 75 03 61 EB 35 E8 00 00 00 00 58 25 00 F0 FF FF 33 FF 66 BB 19 5A 66 83 C3 34 66 39 18 75 12 0F B7 50 3C 03 D0 BB E9 44 00 00 83 C3 67 39 1A 74 07 2D 00 10 00 00 EB DA 8B F8 B8}
		$1 = {B8 ?? ?? ?? ?? 60 0B C0 74 58 E8 00 00 00 00 58 05 43 00 00 00 80 38 E9 75 03 61 EB 35 E8 00 00 00 00 58 25 00 F0 FF FF 33 FF 66 BB 19 5A 66 83 C3 34 66 39 18 75 12 0F B7 50 3C 03 D0 BB E9 44 00 00 83 C3 67 39 1A 74 07 2D 00 10 00 00 EB DA 8B F8 B8 ?? ?? ?? ?? 03 C7 B9 5A ?? ?? ?? 03 CF EB 0A B8 ?? ?? ?? ?? B9 5A ?? ?? ?? 50 51 E8 84 00 00 00 E8 00 00 00 00 58 2D 26 00 00 00 B9 EF 01 00 00 C6 00 E9 83 E9 05 89 48 01 61 E9 AF 01}
	condition:
		$0 at entrypoint or $1 at entrypoint
}
rule _PEncrypt_20__junkcode_
{
	meta:
		description = "PEncrypt 2.0 -> junkcode"
	strings:
		$0 = {EB 25 00 00 F7 BF 00 00 00 00 00 00 00 00 00 00 12 00 E8 00 56 69 72 74 75 61 6C 50 72 6F 74 65 63 74 00 00 00 00 00 E8 00 00 00 00 5D 81 ED 2C 10 40 00 8D B5 14 10 40 00 E8 33 00 00 00 89 85 10 10 40 00 BF 00 00 40 00 8B F7 03 7F 3C 8B 4F 54 51 56 8D 85}
	condition:
		$0 at entrypoint
}
rule _AsCrypt_v01__SToRM__4_
{
	meta:
		description = "AsCrypt v0.1 -> SToRM - #4"
	strings:
		$0 = {80 ?? ?? ?? 83 ?? ?? ?? ?? 90 90 90 E2}
	condition:
		$0
}
rule _MSLRH_v032a_fake_EXE32Pack_13x__emadicius_
{
	meta:
		description = "[MSLRH] v0.32a (fake EXE32Pack 1.3x) -> emadicius"
	strings:
		$0 = {3B C0 74 02 81 83 55 3B C0 74 02 81 83 53 3B C9 74 01 BC 56 3B D2 74 02 81 85 57 E8 00 00 00 00 3B DB 74 01 90 83 C4 14 EB 05 E8 EB 04 40 00 EB FA E8 0A 00 00 00 E8 EB 0C 00 00 E8 F6 FF FF FF E8 F2 FF FF FF 83 C4 08 74 04 75 02 EB 02 EB 01 81 50 E8 02 00 00 00 29 5A 58 6B C0 03 E8 02 00 00 00 29 5A 83 C4 04 58 74 04 75 02 EB 02 EB 01 81 0F 31 50 0F 31 E8 0A 00 00 00 E8 EB 0C 00 00 E8 F6 FF FF FF E8 F2 FF FF FF}
	condition:
		$0 at entrypoint
}
rule _FSG_v110_Eng__dulekxt__Microsoft_Visual_Cpp_4x__LCC_Win32_1x_
{
	meta:
		description = "FSG v1.10 (Eng) -> dulek/xt -> (Microsoft Visual C++ 4.x / LCC Win32 1.x)"
	strings:
		$0 = {2C 71 1B CA EB 01 2A EB 01 65 8D 35 80 ?? ?? 00 80 C9 84 80 C9 68 BB F4 00 00 00 EB 01 EB}
	condition:
		$0 at entrypoint
}
rule _Gardian_Angel_10_
{
	meta:
		description = "Gardian Angel 1.0"
	strings:
		$0 = {06 8C C8 8E D8 8E C0 FC BF ?? ?? EB}
	condition:
		$0 at entrypoint
}
rule _nBinder_v361_
{
	meta:
		description = "nBinder v3.6.1"
	strings:
		$0 = {6E 35 36 34 35 36 35 33 32 33 34 35 34 33 5F 6E 62 33 5C 00 5C 6E 35 36 34 35 36 35 33 32 33 34 35 34 33 5F 6E 62 33 5C}
	condition:
		$0
}
rule _ASPack_v2000__Alexey_Solodovnikov_
{
	meta:
		description = "ASPack v2.000 -> Alexey Solodovnikov"
	strings:
		$0 = {60 E8 70 05 00 00 EB 4C}
	condition:
		$0 at entrypoint
}
rule _PECompact_v167_
{
	meta:
		description = "PECompact v1.67"
	strings:
		$0 = {EB 06 68 ?? ?? ?? ?? C3 9C 60 E8 02 ?? ?? ?? 33 C0 8B C4 83 C0 04 93 8B E3 8B 5B FC 81 EB 3F 90 40 87 DD 8B 85 E6 90 40 01 85 33 90 40 66 C7 85 90 40 90 90 01 85 DA 90 40 01 85 DE 90 40 01 85 E2 90 40 BB 8B 11}
	condition:
		$0 at entrypoint
}
rule _PECompact_v123b3__v1241_
{
	meta:
		description = "PECompact v1.23b3 - v1.24.1"
	strings:
		$0 = {EB 06 68 ?? ?? ?? ?? C3 9C 60 E8 02 ?? ?? ?? 33 C0 8B C4 83 C0 04 93 8B E3 8B 5B FC 81 EB 0F 70 40 ?? 87 DD 8B 85 A6 70 40 ?? 01 85 03 70 40 ?? 66 C7 85 70 40 90 ?? 90 01 85 9E 70 40 BB ?? D2 08}
	condition:
		$0 at entrypoint
}
rule _Vx_Einstein_
{
	meta:
		description = "Vx: Einstein"
	strings:
		$0 = {00 42 CD 21 72 31 B9 6E 03 33 D2 B4 40 CD 21 72 19 3B C1 75 15 B8 00 42}
	condition:
		$0 at entrypoint
}
rule _ReversingLabsProtector_074_beta__Ap0x_
{
	meta:
		description = "ReversingLabsProtector 0.7.4 beta -> Ap0x"
	strings:
		$0 = {68 00 00 41 00 E8 01 00 00 00 C3 C3}
	condition:
		$0 at entrypoint
}
rule _PseudoSigner_01_VideoLanClient__Anorganix_
{
	meta:
		description = "PseudoSigner 0.1 [Video-Lan-Client] --> Anorganix"
	strings:
		$0 = {55 89 E5 83 EC 08 90 90 90 90 90 90 90 90 90 90 90 90 90 90 01 FF FF 01 01 01 00 01 90 90 90 90 90 90 90 90 90 90 90 90 90 90 00 01 00 01 00 01 90 90 00 01 E9}
	condition:
		$0 at entrypoint
}
rule _muckis_protector_I__mucki_
{
	meta:
		description = "mucki's protector I -> mucki"
	strings:
		$0 = {BE ?? ?? ?? ?? B9 ?? ?? ?? ?? 8A 06 F6 D0 88 06 46 E2 F7 E9}
	condition:
		$0 at entrypoint
}
rule _PECompact_v20_beta__Jeremy_Collake_
{
	meta:
		description = "PECompact v2.0 beta -> Jeremy Collake"
	strings:
		$0 = {B8 ?? ?? ?? ?? 05 ?? ?? ?? ?? 50 64 FF 35 00 00 00 00 64 89 25 00 00 00 00 CC 90 90 90 90}
	condition:
		$0 at entrypoint
}
rule _kryptor_9_
{
	meta:
		description = "kryptor 9"
	strings:
		$0 = {60 E8 ?? ?? ?? ?? 5E B9 ?? ?? ?? ?? 2B C0 02 04 0E D3 C0 49 79 F8 41 8D 7E 2C 33 46 ?? 66 B9}
	condition:
		$0 at entrypoint
}
rule _FSG_v110_Eng__dulekxt__Borland_Cpp_1999_
{
	meta:
		description = "FSG v1.10 (Eng) -> dulek/xt -> (Borland C++ 1999)"
	strings:
		$0 = {EB 02 CD 20 2B C8 68 80 ?? ?? 00 EB 02 1E BB 5E EB 02 CD 20 68 B1 2B 6E 37 40 5B 0F B6 C9}
	condition:
		$0 at entrypoint
}
rule _ShellModify_01__pll621_
{
	meta:
		description = "ShellModify 0.1 -> pll621"
	strings:
		$0 = {55 8B EC 6A FF 68 98 66 41 00 68 3C 3D 41 00 64 A1 00 00 00 00}
	condition:
		$0 at entrypoint
}
rule _Ding_Boys_PElock_Phantasm_v08_
{
	meta:
		description = "Ding Boy's PE-lock Phantasm v0.8"
	strings:
		$0 = {55 57 56 52 51 53 E8 00 00 00 00 5D 8B D5 81 ED 0D 39 40 00}
	condition:
		$0 at entrypoint
}
rule _SkD_Undetectabler_Pro_20_No_UPX_Method__SkD_
{
	meta:
		description = "SkD Undetectabler Pro 2.0 (No UPX Method) -> SkD"
	strings:
		$0 = {55 8B EC 83 C4 F0 B8 FC 26 00 10 E8 EC F3 FF FF 6A 0F E8 15 F5 FF FF E8 64 FD FF FF E8 BB ED FF FF 8D 40}
	condition:
		$0 at entrypoint
}
rule _ASPack_v1061b__Alexey_Solodovnikov_
{
	meta:
		description = "ASPack v1.061b -> Alexey Solodovnikov"
	strings:
		$0 = {60 E8 ?? ?? ?? ?? 5D 81 ED EA A8 43 ?? B8 E4 A8 43 ?? 03 C5 2B 85 78 AD 43 ?? 89 85 84 AD 43 ?? 80 BD 6E AD 43}
	condition:
		$0 at entrypoint
}
rule _pscrambler_12__by_p0ke_
{
	meta:
		description = "pscrambler 1.2 -> by p0ke"
	strings:
		$0 = {55 8B EC B9 04 00 00 00 6A 00 6A 00 49 75 F9 51 53 ?? ?? ?? ?? 10 E8 2D F3 FF FF 33 C0 55 68 E8 31 00 10 64 FF 30 64 89 20 8D 45 E0 E8 53 F5 FF FF 8B 45 E0 8D 55 E4 E8 30 F6 FF FF 8B 45 E4 8D 55 E8 E8 A9 F4 FF FF 8B 45 E8 8D 55 EC E8 EE F7 FF FF 8B 55 EC B8 C4 54 00 10 E8 D9 EC FF FF 83 3D C4 54 00 10 00 0F 84 05 01 00 00 80 3D A0 40 00 10 00 74 41 A1 C4 54 00 10 E8 D9 ED FF FF E8 48 E0 FF FF 8B D8 A1 C4 54 00 10 E8 C8 ED FF FF 50 B8 C4 54 00 10 E8 65 EF FF FF 8B D3 59 E8 69 E1 FF FF 8B C3 E8 12 FA FF FF 8B C3 E8 33 E0 FF FF E9 AD 00 00 00 B8 05 01 00 00 E8 0C E0 FF FF 8B D8 53 68 05 01 00 00 E8 57 F3 FF FF 8D 45 DC 8B D3 E8 39 ED FF FF 8B 55 DC B8 14 56 00 10 B9 00 32 00 10 E8 BB ED FF FF 8B 15 14 56 00 10 B8 C8 54 00 10 E8 53 E5 FF FF BA 01 00 00 00 B8 C8 54 00 10 E8 8C E8 FF FF E8 DF E0 FF FF 85 C0 75 52 6A 00 A1 C4 54 00 10 E8 3B ED FF FF 50 B8 C4 54 00 10 E8 D8 EE FF FF 8B D0 B8 C8 54 00 10 59 E8 3B E6 FF FF E8 76 E0 FF FF B8 C8 54 00 10 E8 4C E6 FF FF E8 67 E0 FF FF 6A 00 6A 00 6A 00 A1 14 56 00 10 E8 53 EE FF FF 50 6A 00 6A 00 E8 41 F3 FF FF 80 3D 9C 40 00 10 00 74 05 E8 EF FB FF FF 33 C0 5A 59 59 64 89 10 68 EF 31 00 10 8D 45 DC BA 05 00 00 00 E8 7D EB FF FF C3 E9 23 E9 FF FF EB EB 5B E8 63 EA FF FF 00 00 00 FF FF FF FF 08 00 00 00 74 65 6D 70 2E 65 78 65}
	condition:
		$0 at entrypoint
}
rule _PEncrypt_10__JunkCode_
{
	meta:
		description = "PEncrypt 1.0 -> JunkCode"
	strings:
		$0 = {60 9C BE 00 10 40 00 8B FE B9 ?? ?? ?? ?? BB 78 56 34 12 AD 33 C3 AB E2 FA 9D 61 E9 ?? ?? ?? FF}
	condition:
		$0 at entrypoint
}
rule _PluginToExe_v101__BoB__BobSoft_
{
	meta:
		description = "PluginToExe v1.01 -> BoB / BobSoft"
	strings:
		$0 = {E8 00 00 00 00 29 C0 5D 81 ED C6 41 40 00 50 8F 85 71 40 40 00 50 FF 95 A5 41 40 00 89 85 6D 40 40 00 FF 95 A1 41 40 00 50 FF 95 B5 41 40 00 80 38 00 74 16 8A 08 80 F9 22 75 07 50 FF 95 B9 41 40 00 89 85 75 40 40 00 EB 6C 6A 01 8F 85 71 40 40 00 6A 58 6A 40 FF 95 A9 41 40 00 89 85 69 40 40 00 89 C7 68 00 08 00 00 6A 40 FF 95 A9 41 40 00 89 47 1C C7 07 58 00 00 00 C7 47 20 00 08 00 00 C7 47 18 01 00 00 00 C7 47 34 04 10 88 00 8D 8D B9 40 40 00 89 4F 0C 8D 8D DB 40 40 00 89 4F 30 FF B5 69 40 40 00 FF 95 95 41 40 00 FF 77 1C 8F 85 75 40 40 00 8B 9D 6D 40 40 00 60 6A 00 6A 01 53 81 C3 ?? ?? ?? 00 FF D3 61 6A 00 68 44 69 45 50 FF B5 75 40 40 00 6A 00 81 C3 ?? ?? 00 00 FF D3 83 C4 10 83 BD 71 40 40 00 00 74 10 FF 77 1C FF 95 AD 41 40 00 57 FF 95 AD 41 40 00 6A 00 FF 95 9D 41 40 00}
	condition:
		$0 at entrypoint
}
rule _PESpin_V03__cyberbob_
{
	meta:
		description = "PESpin V0.3 -> cyberbob"
	strings:
		$0 = {EB 01 68 60 E8 00 00 00 00 8B 1C 24 83 C3 12 81 2B E8 B1 06 00 FE 4B FD 82 2C 24 B7 CD 46 00 0B E4 74 9E 75 01 C7 81 73 04 D7 7A F7 2F 81 73 19 77 00 43 B7 F6 C3 6B B7 00 00 F9 FF E3 C9 C2 08 00 A3 68 72 01 FF 5D 33 C9 41 E2 17 EB 07 EA EB 01 EB EB 0D FF E8 01 00 00 00 EA 5A 83 EA 0B FF E2 8B 95 CB 2C 40 00 8B 42 3C 03 C2 89 85 D5 2C 40 00 41 C1 E1 07 8B 0C 01 03 CA 8B 59 10 03 DA 8B 1B 89 9D E9 2C 40 00 53 8F 85 B6 2B 40 00 BB ?? 00 00 00 B9 75 0A 00 00 8D BD 7E 2D 40 00 4F 30 1C 39 FE CB E2 F9 68 3C 01 00 00 59 8D BD B6 36 40 00 C0 0C 39 02 E2 FA E8 02 00 00 00 FF 15 5A 8D 85 1F 53 56 00 BB 54 13 0B 00 D1 E3 2B C3 FF E0 E8 01 00 00 00 68 E8 1A 00 00 00 8D 34 28 B9 08 00 00 00 B8 ?? ?? ?? ?? 2B C9 83 C9 15 0F A3 C8 0F 83 81 00 00 00 8D B4 0D DC 2C 40 00}
	condition:
		$0 at entrypoint
}
rule _Unnamed_Scrambler_12C__12D__p0ke_
{
	meta:
		description = "Unnamed Scrambler 1.2C / 1.2D -> p0ke"
	strings:
		$0 = {55 8B EC B9 05 00 00 00 6A 00 6A 00 49 75 F9 51 53 56 57 B8 ?? 3A ?? ?? E8 ?? EC FF FF 33 C0 55 68 ?? ?? ?? ?? 64 FF 30 64 89 20 E8 ?? D7 FF FF E8 ?? ?? FF FF B8 20 ?? ?? ?? 33 C9 BA 04 01 00 00 E8 ?? DB FF FF 68 04 01 00 00 68 20 ?? ?? ?? 6A 00 FF 15 10 ?? ?? ?? BA ?? ?? ?? ?? B8 14 ?? ?? ?? E8 ?? ?? FF FF 85 C0 0F 84 ?? 04 00 00 BA 18 ?? ?? ?? 8B 0D 14 ?? ?? ?? E8 ?? ?? FF FF 8B 05 88 ?? ?? ?? 8B D0 B8 54 ?? ?? ?? E8 ?? E3 FF FF B8 54 ?? ?? ?? E8 ?? E2 FF FF 8B D0 B8 18 ?? ?? ?? 8B 0D 88 ?? ?? ?? E8 ?? D6 FF FF FF 35 34 ?? ?? ?? FF 35 30 ?? ?? ?? FF 35 3C ?? ?? ?? FF 35 38 ?? ?? ?? 8D 55 E8 A1 88 ?? ?? ?? E8 ?? F0 FF FF 8B 55 E8 B9 54}
	condition:
		$0
}
rule _BopCrypt_v10_
{
	meta:
		description = "BopCrypt v1.0"
	strings:
		$0 = {60 BD ?? ?? ?? ?? E8 ?? ?? 00 00}
	condition:
		$0 at entrypoint
}
rule _Obsidium_1336__Obsidium_Software_
{
	meta:
		description = "Obsidium 1.3.3.6 -> Obsidium Software"
	strings:
		$0 = {EB 04 ?? ?? ?? ?? E8 28 00 00 00 EB 01 ?? ?? ?? ?? ?? ?? ?? 8B 54 24 0C EB 01 ?? 83 82 B8 00 00 00 26 EB 04 ?? ?? ?? ?? 33 C0 EB 01 ?? C3 EB 03 ?? ?? ?? EB 04 ?? ?? ?? ?? 64 67 FF 36 00 00 EB 04 ?? ?? ?? ?? 64 67 89 26 00 00 EB 03 ?? ?? ?? EB 04 ?? ?? ?? ?? 50 EB 01 ?? 33 C0 EB 02 ?? ?? 8B 00 EB 04 ?? ?? ?? ?? C3 EB 04 ?? ?? ?? ?? E9 FA 00 00 00 EB 03 ?? ?? ?? E8 D5 FF FF FF EB 01 ?? EB 03 ?? ?? ?? 58 EB 02 ?? ?? EB 04 ?? ?? ?? ?? 64 67 8F 06 00 00 EB 04}
	condition:
		$0
}
rule _PeCompact_253_DLL_Slim_Loader__BitSum_Technologies_
{
	meta:
		description = "PeCompact 2.53 DLL (Slim Loader) --> BitSum Technologies"
	strings:
		$0 = {B8 ?? ?? ?? ?? 50 64 FF 35 00 00 00 00 64 89 25 00 00 00 00 33 C0 89 08 50 45 43 32 00 00 08 0C 00 48 E1 01 56 57 53 55 8B 5C 24 1C 85 DB 0F 84 AB 21 E8 BD 0E E6 60 0D 0B 6B 65 72 6E 6C 33 32}
	condition:
		$0 at entrypoint
}
rule _FSG_v100_Eng__dulekxt_
{
	meta:
		description = "FSG v1.00 (Eng) -> dulek/xt"
	strings:
		$0 = {BB D0 01 40 00 BF 00 10 40 00 BE ?? ?? ?? 00 53 E8 0A 00 00 00 02 D2 75 05 8A 16 46 12 D2 C3 FC B2 80 A4 6A 02 5B FF 14 24 73 F7 33 C9 FF 14 24 73 18 33 C0 FF 14 24 73 21 B3 02 41 B0 10 FF 14 24 12 C0 73 F9 75 3F AA EB DC E8 43 00 00 00 2B CB 75 10 E8 38}
	condition:
		$0 at entrypoint
}
rule _SLVc0deProtector_060__SLV__ICU_
{
	meta:
		description = "SLVc0deProtector 0.60 -> SLV / ICU"
	strings:
		$0 = {EB 02 FA 04 E8 49 00 00 00 69 E8 49 00 00 00 95 E8 4F 00 00 00 68 E8 1F 00 00 00 49 E8 E9 FF FF FF 67 E8 1F 00 00 00 93 E8 31 00 00 00 78 E8 DD}
	condition:
		$0
}
rule _FSG_v110_Eng__bartxt_
{
	meta:
		description = "FSG v1.10 (Eng) -> bart/xt"
	strings:
		$0 = {BB D0 01 40 00 BF 00 10 40 00 BE ?? ?? ?? 00 53 E8 0A 00 00 00 02 D2 75 05 8A 16 46 12 D2 C3 B2 80 A4 6A 02 5B FF 14 24 73 F7 33 C9 FF 14 24 73 18 33 C0 FF 14 24 73 21 B3 02 41 B0 10 FF 14 24 12 C0 73 F9 75 3F AA EB DC E8 43 00 00 00 2B CB 75 10 E8 38 00}
	condition:
		$0 at entrypoint
}
rule _PEcrypt__by_archphase_
{
	meta:
		description = "PEcrypt - by archphase"
	strings:
		$0 = {55 8B EC 83 C4 E0 53 56 33 C0 89 45 E4 89 45 E0 89 45 EC ?? ?? ?? ?? 64 82 40 00 E8 7C C7 FF FF 33 C0 55 68 BE 84 40 00 64 FF 30 64 89 20 68 CC 84 40 00 ?? ?? ?? ?? 00 A1 10 A7 40 00 50 E8 1D C8 FF FF 8B D8 85 DB 75 39 E8 3A C8 FF FF 6A 00 6A 00 68 A0 A9 40 00 68 00 04 00 00 50 6A 00 68 00 13 00 00 E8 FF C7 FF FF 6A 00 68 E0 84 40 00 A1 A0 A9 40 00 50 6A 00 E8 ?? ?? ?? ?? E9 7D 01 00 00 53 A1 10 A7 40 00 50 E8 42 C8 FF FF 8B F0 85 F6 75 18 6A 00 68 E0 84 40 00 68 E4 84 40 00 6A 00 E8 71 C8 FF FF E9 53 01 00 00 53 6A 00 E8 2C C8 FF FF A3 ?? ?? ?? ?? 83 3D 48 A8 40 00 00 75 18 6A 00 68 E0 84 40 00 68 F8 84 40 00 6A 00 E8 43 C8 FF FF E9 25 01 00 00 56 E8 F8 C7 FF FF A3 4C A8 40 00 A1 48 A8 40 00 E8 91 A1 FF FF 8B D8 8B 15 48 A8 40 00 85 D2 7C 16 42 33 C0 8B 0D 4C A8 40 00 03 C8 8A 09 8D 34 18 88 0E 40 4A 75 ED 8B 15 48 A8 40 00 85 D2 7C 32 42 33 C0 8D 34 18 8A 0E 80 F9 01 75 05 C6 06 FF EB 1C 8D 0C 18 8A 09 84 ?? ?? ?? ?? ?? 00 EB 0E 8B 0D 4C A8 40 00 03 C8 0F B6 09 49 88 0E 40 4A 75 D1 8D ?? ?? ?? ?? E8 A5 A3 FF FF 8B 45 E8 8D 55 EC E8 56 D5 FF FF 8D 45 EC BA 18 85 40 00 E8 79 BA FF FF 8B 45 EC E8 39 BB FF FF 8B D0 B8 54 A8 40 00 E8 31 A6 FF FF BA 01 00 00 00 B8 54 A8 40 00 E8 12 A9 FF FF E8 DD A1 FF FF 68 50 A8 40 00 8B D3 8B 0D 48 A8 40 00 B8 54 A8 40 00 E8 56 A7 FF FF E8 C1 A1 FF FF}
	condition:
		$0 at entrypoint
}
rule _WinZip_32bit_SFX_v6x_module_
{
	meta:
		description = "WinZip 32-bit SFX v6.x module"
	strings:
		$0 = {FF 15 ?? ?? ?? 00 B1 22 38 08 74 02 B1 20 40 80 38 00 74 10 38 08 74 06 40 80 38 00 75 F6 80 38 00 74 01 40 33 C9 ?? ?? ?? ?? FF 15}
	condition:
		$0 at entrypoint
}
rule _PENightMare_v13_
{
	meta:
		description = "PENightMare v1.3"
	strings:
		$0 = {60 E8 00 00 00 00 5D B9 ?? ?? ?? ?? 80 31 15 41 81 F9}
	condition:
		$0 at entrypoint
}
rule _Armadillo_v1xx__v2xx_
{
	meta:
		description = "Armadillo v1.xx - v2.xx"
	strings:
		$0 = {55 8B EC 53 8B 5D 08 56 8B 75 0C 57 8B 7D 10 85 F6}
	condition:
		$0 at entrypoint
}
rule _PEncrypt_v10_
{
	meta:
		description = "PEncrypt v1.0"
	strings:
		$0 = {60 9C BE 00 10 40 00 8B FE B9 28 03 00 00 BB 78 56 34 12 AD 33 C3 AB E2 FA 9D 61}
	condition:
		$0 at entrypoint
}
rule _AI1_Creator_1_Beta_2__by_MZ_
{
	meta:
		description = "AI1 Creator 1 Beta 2 - by MZ"
	strings:
		$0 = {E8 FE FD FF FF 6A 00 E8 0D 00 00 00 CC FF 25 78 10 40 00 FF 25 7C 10 40 00 FF 25 80 10 40 00 FF 25 84 10 40 00 FF 25 88 10 40 00 FF 25 8C 10 40 00 FF 25 90 10 40 00 FF 25 94 10 40 00 FF 25 98 10 40 00 FF 25 9C 10 40 00 FF 25 A0 10 40 00 FF 25 A4 10 40 00 FF 25 AC 10 40 00}
	condition:
		$0
}
rule _PEPaCK_v10__C_Copyright_1998_by_ANAKiN_
{
	meta:
		description = "PE-PaCK v1.0 -> (C) Copyright 1998 by ANAKiN"
	strings:
		$0 = {C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 0D 0A 20 2D 3D FE 20 50 45 2D 50 41 43 4B 20 76 31 2E 30 20 2D FE 2D 20 28 43 29 20 43 6F 70}
	condition:
		$0
}
rule _FSG_v110_Eng__dulekxt__MASM32_
{
	meta:
		description = "FSG v1.10 (Eng) -> dulek/xt -> (MASM32)"
	strings:
		$0 = {EB 01 DB E8 02 00 00 00 86 43 5E 8D 1D D0 75 CF 83 C1 EE 1D 68 50 ?? 8F 83 EB 02 3D 0F 5A}
	condition:
		$0 at entrypoint
}
rule _Alloy_4x__PGWare_LLC_
{
	meta:
		description = "Alloy 4.x -> PGWare LLC"
	strings:
		$0 = {9C 60 E8 02 00 00 00 33 C0 8B C4 83 C0 04 93 8B E3 8B 5B FC 81 EB 07 30 40 00 87 DD 6A 04 68 00 10 00 00 68 00 02 00 00 6A 00 FF 95 A8 33 40 00 0B C0 0F 84 F6 01 00 00 89 85 2E 33 40 00 83 BD E8 32 40 00 01 74 0D 83 BD E4 32 40 00 01 74 2A 8B F8 EB 3E 68}
	condition:
		$0 at entrypoint
}
rule _PCrypt_v351_
{
	meta:
		description = "PCrypt v3.51"
	strings:
		$0 = {50 43 52 59 50 54 FF 76 33 2E 35 31 00 E9}
	condition:
		$0 at entrypoint
}
rule _ASPR_Stripper_v2x_unpacked_
{
	meta:
		description = "ASPR Stripper v2.x unpacked"
	strings:
		$0 = {BB ?? ?? ?? ?? E9 ?? ?? ?? ?? 60 9C FC BF ?? ?? ?? ?? B9 ?? ?? ?? ?? F3 AA 9D 61 C3 55 8B EC}
	condition:
		$0 at entrypoint
}
rule _RLPack_120_Basic_Edition_LZMA__Ap0x_
{
	meta:
		description = "RLPack 1.20 Basic Edition [LZMA] -> Ap0x"
	strings:
		$0 = {60 E8 00 00 00 00 8B 2C 24 83 C4 04 83 7C 24 28 01 75 0C 8B 44 24 24 89 85 9C 0C 00 00 EB 0C 8B 85 98 0C 00 00 89 85 9C 0C 00 00 8D B5 C4 0C 00 00 8D 9D 82 04 00 00 33 FF 6A 40 68 00 10 00 00 68 00 20 0C 00 6A 00 FF 95 2D 0C 00 00 89 85 94 0C 00 00 E8 59 01 00 00 EB 20 60 8B 85 9C 0C 00 00 FF B5 94 0C 00 00 FF 34 37 01 04 24 FF 74 37 04 01 04 24 FF D3 61 83}
	condition:
		$0 at entrypoint
}
rule _PolyCrypt_PE__214b215__JLab_Software_Creations_hoep_
{
	meta:
		description = "PolyCrypt PE - 2.1.4b/2.1.5 -> JLab Software Creations (h-oep)"
	strings:
		$0 = {91 8B F4 AD FE C9 80 34 08 ?? E2 FA C3 60 E8 ED FF FF FF EB}
	condition:
		$0
}
rule _MaskPE_V20__yzkzero_
{
	meta:
		description = "MaskPE V2.0 -> yzkzero"
	strings:
		$0 = {B8 18 00 00 00 64 8B 18 83 C3 30 C3 40 3E 0F B6 00 C1 E0 ?? 83 C0 ?? 36 01 04 24 C3}
	condition:
		$0
}
rule _RCryptor_V16d__Vaska_
{
	meta:
		description = "RCryptor V1.6d -> Vaska"
	strings:
		$0 = {60 90 61 61 80 7F F0 45 90 60 0F 85 1B 8B 1F FF 68 ?? ?? ?? ?? B8 ?? ?? ?? ?? 90 3D ?? ?? ?? ?? 74 06 80 30 ?? 40 EB F3 B8 ?? ?? ?? ?? 90 3D ?? ?? ?? ?? 74 06 80 30 ?? 40 EB F3}
	condition:
		$0 at entrypoint
}
rule _Feokt_
{
	meta:
		description = "Feokt"
	strings:
		$0 = {89 25 A8 11 40 00 BF ?? ?? ?? 00 31 C0 B9 ?? ?? ?? 00 29 F9 FC F3 AA ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? E8}
	condition:
		$0 at entrypoint
}
rule _UPXHiT_v001__DJ_Siba_
{
	meta:
		description = "UPX$HiT v0.0.1 -> DJ Siba"
	strings:
		$0 = {94 BC ?? ?? ?? 00 B9 ?? 00 00 00 80 34 0C ?? E2 FA 94 FF E0 61}
	condition:
		$0
}
rule _Gamehouse_Media_Protector_Version_Unknown_
{
	meta:
		description = "Gamehouse Media Protector Version Unknown"
	strings:
		$0 = {68 ?? ?? ?? ?? 6A 00 FF 15 ?? ?? ?? ?? 50 FF 15 ?? ?? ?? 00 00 00 00 00 00 00 00}
	condition:
		$0 at entrypoint
}
rule _Private_EXE_Protector_18__SetiSoft_
{
	meta:
		description = "Private EXE Protector 1.8 -> SetiSoft"
	strings:
		$0 = {A4 B3 02 E8 6D 00 00 00 73 F6 31 C9 E8 64 00 00 00 73 1C 31 C0 E8 5B 00 00 00 73 23 B3 02 41 B0 10 E8 4F 00 00 00 10 C0 73 F7 75 3F AA EB D4 E8 4D 00 00 00 29 D9 75 10 E8 42 00 00 00 EB 28 AC D1 E8 74 4D 11 C9 EB 1C 91 48 C1 E0 08 AC E8 2C 00 00 00 3D 00 7D 00 00 73 0A 80 FC 05 73 06 83 F8 7F 77 02 41 41 95 89 E8 B3 01 56 89 FE 29 C6 F3 A4 5E EB 8E 00 D2 75 05 8A 16 46 10 D2 C3 31 C9 41 E8 EE FF FF FF 11 C9 E8 E7 FF FF FF 72 F2 C3 31 FF 31 F6 C3}
	condition:
		$0
}
rule _Enigma_Protector_11X13X__Sukhov_Vladimir__Serge_N_Markin_
{
	meta:
		description = "Enigma Protector 1.1X-1.3X -> Sukhov Vladimir & Serge N. Markin"
	strings:
		$0 = {55 8B EC 83 C4 F0 B8 00 10 40 00 E8 01 00 00 00 9A 83 C4 10 8B E5 5D E9}
	condition:
		$0
}
rule _SPEC_b2_
{
	meta:
		description = "SPEC b2"
	strings:
		$0 = {55 57 51 53 E8 ?? ?? ?? ?? 5D 8B C5 81 ED ?? ?? ?? ?? 2B 85 ?? ?? ?? ?? 83 E8 09 89 85 ?? ?? ?? ?? 0F B6}
	condition:
		$0 at entrypoint
}
rule _PECompact_v092_
{
	meta:
		description = "PECompact v0.92"
	strings:
		$0 = {EB 06 68 ?? ?? ?? ?? C3 9C 60 BD ?? ?? ?? ?? B9 02 ?? ?? ?? B0 90 8D BD A5 4F 40 ?? F3 AA 01 AD 04 51 40 ?? FF B5}
	condition:
		$0 at entrypoint
}
rule _MZ0oPE_106b__TaskFall_
{
	meta:
		description = "MZ0oPE 1.0.6b --> TaskFall"
	strings:
		$0 = {EB CA 89 03 83 C3 04 87 FE 32 C0 AE 75 FD 87 FE 80 3E FF 75 E2 46 5B 83 C3 04 53 8B 1B 80 3F FF 75 C9 8B E5 61 68 ?? ?? ?? ?? C3}
		$1 = {EB CA 89 03 83 C3 04 87 FE 32 C0 AE 75 FD 87 FE 80 3E FF 75 E2 46 5B 83 C3 04 53 8B 1B 80 3F FF 75 C9 8B E5 61 68 ?? ?? ?? ?? C3 FC B2 80 33 DB A4 B3 02 E8 6D 00 00 00 73 F6 33 C9 E8 64 00 00 00 73 1C 33 C0 E8 5B 00 00 00 73 23 B3 02 41 B0 10 E8 4F 00 00 00 12 C0 73 F7 75 3F AA EB D4 E8 4D 00 00 00 2B CB 75 10 E8 42 00 00 00 EB 28 AC D1 E8 74 4C 13 C9 EB 1C 91 48 C1 E0 08 AC E8 2C 00 00 00 3D 00 7D 00 00 73 0A 80 FC 05 73 06 83 F8 7F 77 02 41 41 95 8B C5 B3 01 56 8B F7 2B F0 F3 A4 5E EB 8E 02 D2 75 05 8A 16 46 12 D2 C3 33 C9 41 E8 EE FF FF FF 13 C9 E8 E7 FF FF FF 72 F2 C3}
	condition:
		$0 at entrypoint or $1 at entrypoint
}
rule _PseudoSigner_01_Pack_Master_10_PEX_Clone__Anorganix_
{
	meta:
		description = "PseudoSigner 0.1 [Pack Master 1.0 (PEX Clone)] --> Anorganix"
	strings:
		$0 = {60 E8 01 01 00 00 E8 83 C4 04 E8 01 90 90 90 E9 5D 81 ED D3 22 40 90 E8 04 02 90 90 E8 EB 08 EB 02 CD 20 FF 24 24 9A 66 BE 47 46 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90}
	condition:
		$0 at entrypoint
}
rule _ExeJoiner_10__Yoda_f2f_
{
	meta:
		description = "ExeJoiner 1.0 -> Yoda f2f"
	strings:
		$0 = {68 00 10 40 00 68 04 01 00 00 E8 39 03 00 00 05 00 10 40 00 C6 00 5C 68 04 01 00 00 68 04 11 40 00 6A 00 E8 1A 03 00 00 6A 00 68 80 00 00 00 6A 03 6A 00 6A 01 68 00 00 00 80 68 04 11 40 00 E8 EC 02 00 00 83 F8 FF 0F 84 83 02 00 00 A3 08 12 40 00 6A 00 50}
	condition:
		$0 at entrypoint
}
rule _Shrink_v20_
{
	meta:
		description = "Shrink v2.0"
	strings:
		$0 = {E9 ?? ?? 50 9C FC BE ?? ?? 8B FE 8C C8 05 ?? ?? 8E C0 06 57 B9}
	condition:
		$0 at entrypoint
}
rule _EPW_v12_
{
	meta:
		description = "EPW v1.2"
	strings:
		$0 = {06 57 1E 56 55 52 51 53 50 2E ?? ?? ?? ?? 8C C0 05 ?? ?? 2E ?? ?? ?? 8E D8 A1 ?? ?? 2E}
	condition:
		$0 at entrypoint
}
rule _CodeCrypt_v0164_
{
	meta:
		description = "CodeCrypt v0.164"
	strings:
		$0 = {E9 2E 03 00 00 EB 02 83 3D 58 EB 02 FF 1D 5B EB 02 0F C7 5F EB 03 FF 1D 34}
	condition:
		$0 at entrypoint
}
rule _ASPack_v107b_DLL__Alexey_Solodovnikov_
{
	meta:
		description = "ASPack v1.07b (DLL) -> Alexey Solodovnikov"
	strings:
		$0 = {60 E8 00 00 00 00 5D ?? ?? ?? ?? ?? ?? B8 ?? ?? ?? ?? 03 C5}
	condition:
		$0 at entrypoint
}
rule _KByS_V022__shoooo_
{
	meta:
		description = "KByS V0.22 -> shoooo"
	strings:
		$0 = {68 ?? ?? ?? ?? E8 01 00 00 00 C3 C3 11 55 07 8B EC B8 ?? ?? ?? ?? E8}
	condition:
		$0 at entrypoint
}
rule _BeRoEXEPacker_v100_DLL_LZMA__BeRo__Farbrausch_
{
	meta:
		description = "BeRoEXEPacker v1.00 DLL [LZMA] -> BeRo / Farbrausch"
	strings:
		$0 = {83 7C 24 08 01 0F 85 ?? ?? ?? ?? 60 68 ?? ?? ?? ?? 68 ?? ?? ?? ?? 68 ?? ?? ?? ?? E8 ?? ?? ?? ?? BE ?? ?? ?? ?? B9 ?? ?? ?? ?? 8B F9 81 FE ?? ?? ?? ?? 7F 10 AC 47 04 18 2C 02 73 F0 29 3E 03 F1 03 F9 EB E8}
	condition:
		$0 at entrypoint
}
rule _Krypton_v03_
{
	meta:
		description = "Krypton v0.3"
	strings:
		$0 = {8B 0C 24 E9 C0 8D 01 ?? C1 3A 6E CA 5D 7E 79 6D B3 64 5A 71 EA}
	condition:
		$0 at entrypoint
}
rule _FSG_v120_Eng__dulekxt__MASM32__TASM32_
{
	meta:
		description = "FSG v1.20 (Eng) -> dulek/xt -> (MASM32 / TASM32)"
	strings:
		$0 = {33 C2 2C FB 8D 3D 7E 45 B4 80 E8 02 00 00 00 8A 45 58 68 02 ?? 8C 7F EB 02 CD 20 5E 80 C9 16 03 F7 EB 02 40 B0 68 F4 00 00 00 80 F1 2C 5B C1 E9 05 0F B6 C9 8A 16 0F B6 C9 0F BF C7 2A D3 E8 02 00 00 00 99 4C 58 80 EA 53 C1 C9 16 2A D3 E8 02 00 00 00 9D CE}
	condition:
		$0 at entrypoint
}
rule _EXECryptor_239_DLL_compressed_resources_
{
	meta:
		description = "EXECryptor 2.3.9 DLL (compressed resources)"
	strings:
		$0 = {50 68 ?? ?? ?? ?? 58 C1 C0 0F E9 ?? ?? ?? 00 87 04 24 58 89 45 FC E9 ?? ?? ?? FF FF 05 ?? ?? ?? ?? E9 ?? ?? ?? 00 C1 C3 18 E9 ?? ?? ?? ?? 8B 55 08 09 42 F8 E9 ?? ?? ?? FF 83 7D F0 01 0F 85 ?? ?? ?? ?? E9 ?? ?? ?? 00 87 34 24 5E 8B 45 FC 33 D2 56 8B F2 E9 ?? ?? ?? 00 BA ?? ?? ?? ?? E8 ?? ?? ?? 00 A3 ?? ?? ?? ?? C3 E9 ?? ?? ?? 00 C3 83 C4 04 C3 E9 ?? ?? ?? FF 64 FF 35 00 00 00 00 64 89 25 00 00 00 00 E8 ?? ?? ?? 00 E9 ?? ?? ?? FF C1 C2 03 81 CA ?? ?? ?? ?? 81 C2 ?? ?? ?? ?? 03 C2 5A E9 ?? ?? ?? FF 81 E7 ?? ?? ?? ?? 81 EF ?? ?? ?? ?? 81 C7 ?? ?? ?? ?? 89 07 E9 ?? ?? ?? ?? 0F 89 ?? ?? ?? ?? 87 14 24 5A 50 C1 C8 10}
	condition:
		$0 at entrypoint
}
rule _Packanoid_10__ackanoid_
{
	meta:
		description = "Packanoid 1.0 -> ackanoid"
	strings:
		$0 = {BF 00 ?? 40 00 BE ?? ?? ?? 00 E8 9D 00 00 00 B8 ?? ?? ?? 00 8B 30 8B 78 04 BB ?? ?? ?? 00 8B 43 04 91 E3 1F 51 FF D6 56 96 8B 13 8B 02 91 E3 0D 52 51 56 FF D7 5A 89 02 83 C2 04 EB EE 83 C3 08 5E EB DB B9 ?? ?? 00 00 BE 00 ?? ?? 00 EB 01 00 BF ?? ?? ?? 00}
	condition:
		$0 at entrypoint
}
rule _Pohernah_100__by_Kas_
{
	meta:
		description = "Pohernah 1.0.0 - by Kas"
	strings:
		$0 = {58 60 E8 00 00 00 00 5D 81 ED 20 25 40 00 8B BD 86 25 40 00 8B 8D 8E 25 40 00 6B C0 05 83 F0 04 89 85 92 25 40 00 83 F9 00 74 2D 81 7F 1C AB 00 00 00 75 1E 8B 77 0C 03 B5 8A 25 40 00 31 C0 3B 47 10 74 0E 50 8B 85 92 25 40 00 30 06 58 40 46 EB ED 83 C7 28 49 EB CE 8B 85 82 25 40 00 89 44 24 1C 61 FF E0}
	condition:
		$0 at entrypoint
}
rule _ThemidaWinLicense_V1X_NoCompression_SecureEngine__Oreans_Technologies_
{
	meta:
		description = "Themida/WinLicense V1.X NoCompression SecureEngine -> Oreans Technologies"
	strings:
		$0 = {8B C5 8B D4 60 E8 00 00 00 00 5D 81 ED ?? ?? ?? ?? 89 95 ?? ?? ?? ?? 89 B5 ?? ?? ?? ?? 89 85 ?? ?? ?? ?? 83 BD ?? ?? ?? ?? ?? 74 0C 8B E8 8B E2 B8 01 00 00 00 C2 0C 00 8B 44 24 24 89 85 ?? ?? ?? ?? 6A 45 E8 A3 00 00 00 68 9A 74 83 07 E8 DF 00 00 00 68 25 4B 89 0A E8 D5 00 00 00 E9 ?? ?? ?? ?? 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00}
	condition:
		$0
}
rule _Hardlock_dongle_Alladin_
{
	meta:
		description = "Hardlock dongle (Alladin)"
	strings:
		$0 = {5C 5C 2E 5C 48 41 52 44 4C 4F 43 4B 2E 56 58 44 00 00 00 00 5C 5C 2E 5C 46 45 6E 74 65 44 65 76}
	condition:
		$0 at entrypoint
}
rule _Goats_Mutilator_V16__Goat_e0f_
{
	meta:
		description = "Goats Mutilator V1.6 -> Goat/_e0f"
	strings:
		$0 = {E8 EA 0B 00 00 ?? ?? ?? 8B 1C 79 F6 63 D8 8D 22 B0 BF F6 49 08 C3 02 BD 3B 6C 29 46 13 28 5D}
	condition:
		$0 at entrypoint
}
rule _PGMPACK_v014_
{
	meta:
		description = "PGMPACK v0.14"
	strings:
		$0 = {1E 17 50 B4 30 CD 21 3C 02 73 ?? B4 4C CD 21 FC BE ?? ?? BF ?? ?? E8 ?? ?? E8 ?? ?? BB ?? ?? BA ?? ?? 8A C3 8B F3}
	condition:
		$0 at entrypoint
}
rule _PluginToExe_v102__BoB__BobSoft_
{
	meta:
		description = "PluginToExe v1.02 -> BoB / BobSoft"
	strings:
		$0 = {E8 00 00 00 00 29 C0 5D 81 ED 32 42 40 00 50 8F 85 DD 40 40 00 50 FF 95 11 42 40 00 89 85 D9 40 40 00 FF 95 0D 42 40 00 50 FF 95 21 42 40 00 80 38 00 74 16 8A 08 80 F9 22 75 07 50 FF 95 25 42 40 00 89 85 E1 40 40 00 EB 6C 6A 01 8F 85 DD 40 40 00 6A 58 6A 40 FF 95 15 42 40 00 89 85 D5 40 40 00 89 C7 68 00 08 00 00 6A 40 FF 95 15 42 40 00 89 47 1C C7 07 58 00}
	condition:
		$0 at entrypoint
}
rule _Obsidium_v1250__Obsidium_Software_
{
	meta:
		description = "Obsidium v1.2.5.0 -> Obsidium Software"
	strings:
		$0 = {E8 0E 00 00 00 8B 54 24 0C 83 82 B8 00 00 00 0D 33 C0 C3 64 67 FF 36 00 00 64 67 89 26 00 00 50 33 C0 8B 00 C3 E9 FA 00 00 00 E8 D5 FF FF FF 58 64 67 8F 06 00 00 83 C4 04 E8 2B 13 00 00}
	condition:
		$0 at entrypoint
}
rule _ID_Application_Protector_12__ID_Security_Suite_
{
	meta:
		description = "ID Application Protector 1.2 -> ID Security Suite"
	strings:
		$0 = {60 E8 00 00 00 00 5D 81 ED F2 0B 47 00 B9 19 22 47 00 81 E9 EA 0E 47 00 89 EA 81 C2 EA 0E 47 00 8D 3A 89 FE 31 C0 E9 D3 02 00 00 CC CC CC CC E9 CA 02 00 00 43 3A 5C 57 69 6E 64 6F 77 73 5C 53 6F 66 74 57 61 72 65 50 72 6F 74 65 63 74 6F 72 5C}
	condition:
		$0 at entrypoint
}
rule _EXECryptor_224__StrongbitSoftComplete_Development_h1_
{
	meta:
		description = "EXECryptor 2.2.4 -> Strongbit/SoftComplete Development (h1)"
	strings:
		$0 = {E8 F7 FE FF FF 05 ?? ?? 00 00 FF E0 E8 EB FE FF FF 05 ?? ?? 00 00 FF E0 E8 04 00 00 00 FF FF FF FF 5E C3}
	condition:
		$0 at entrypoint
}
rule _EXE_Shield_v01b__v03b_v03__SMoKE_
{
	meta:
		description = "EXE Shield v0.1b - v0.3b, v0.3 -> SMoKE"
	strings:
		$0 = {E8 04 00 00 00 83 60 EB 0C 5D EB 05}
	condition:
		$0 at entrypoint
}
rule _ASProtect_v20_
{
	meta:
		description = "ASProtect v2.0"
	strings:
		$0 = {68 01 ?? 40 00 E8 01 00 00 00 C3 C3}
	condition:
		$0
}
rule _EXE_Stealth_v272_
{
	meta:
		description = "EXE Stealth v2.72"
	strings:
		$0 = {EB 00 EB 2F 53 68 61 72 65 77 61 72 65 20 2D 20}
	condition:
		$0 at entrypoint
}
rule _WinKript_v10__Mr_Crimson_
{
	meta:
		description = "WinKript v1.0 -> Mr. Crimson"
	strings:
		$0 = {33 C0 8B B8 00 ?? ?? ?? 8B 90 04 ?? ?? ?? 85 FF 74 1B 33 C9 50 EB 0C 8A 04 39 C0 C8 04 34 1B 88 04 39 41 3B CA 72 F0 58 83 C0 08 EB D5 61 E9 ?? ?? ?? ?? 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00}
	condition:
		$0 at entrypoint
}
rule _SecureEXE_30__ZipWorx_
{
	meta:
		description = "SecureEXE 3.0 -> ZipWorx"
	strings:
		$0 = {E9 B8 00 00 00 ?? ?? ?? 00 ?? ?? ?? 00 ?? ?? ?? 00 00 00 00 00 00}
	condition:
		$0 at entrypoint
}
rule _MSLRH_v032a_fake_PE_Crypt_102__emadicius_
{
	meta:
		description = "[MSLRH] v0.32a (fake PE Crypt 1.02) -> emadicius"
	strings:
		$0 = {E8 00 00 00 00 5B 83 EB 05 EB 04 52 4E 44 21 85 C0 73 02 F7 05 50 E8 08 00 00 00 EA FF 58 EB 18 EB 01 0F EB 02 CD 20 EB 03 EA CD 20 58 58 EB 05 E8 EB 04 40 00 EB FA E8 0A 00 00 00 E8 EB 0C 00 00 E8 F6 FF FF FF E8 F2 FF FF FF 83 C4 08 74 04 75 02 EB 02 EB 01 81 50 E8 02 00 00 00 29 5A 58 6B C0 03 E8 02 00 00 00 29 5A 83 C4 04 58 74 04 75 02 EB 02 EB 01 81 0F 31 50 0F 31 E8 0A 00 00 00 E8 EB 0C 00 00 E8 F6 FF FF FF E8 F2 FF FF FF}
	condition:
		$0 at entrypoint
}
rule _eXPressor_v14__CGSoftLabs_
{
	meta:
		description = "eXPressor v1.4 -> CGSoftLabs"
	strings:
		$0 = {55 8B EC 83 EC ?? 53 56 57 EB 0C 45 78 50 72 2D 76 2E 31 2E 34 2E 2E B8}
		$1 = {65 58 50 72 2D 76 2E 31 2E 34 2E}
	condition:
		$0 at entrypoint or $1
}
rule _Elicense_System_V4000__ViaTech_Inc_
{
	meta:
		description = "Elicense System V4.0.0.0 -> ViaTech Inc"
	strings:
		$0 = {00 00 00 00 63 79 62 00 65 6C 69 63 65 6E 34 30 2E 64 6C 6C 00 00 00 00}
	condition:
		$0
}
rule _VOB_ProtectCD_
{
	meta:
		description = "VOB ProtectCD"
	strings:
		$0 = {5F 81 EF ?? ?? ?? ?? BE ?? ?? 40 ?? 8B 87 ?? ?? ?? ?? 03 C6 57 56 8C A7 ?? ?? ?? ?? FF 10 89 87 ?? ?? ?? ?? 5E 5F}
	condition:
		$0 at entrypoint
}
rule _Upack_v030_beta__Dwing_
{
	meta:
		description = "Upack v0.30 beta -> Dwing"
	strings:
		$0 = {E9 ?? ?? ?? ?? 42 79 44 77 69 6E 67 40 00 00 00 50 45 00 00 4C 01 02 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 30}
	condition:
		$0 at entrypoint
}
rule _NsPack_30__North_Star_
{
	meta:
		description = "NsPack 3.0 -> North Star"
	strings:
		$0 = {9C 60 E8 00 00 00 00 5D B8 07 00 00 00 2B E8 8D B5 ?? ?? FF FF 66 8B 06 66 83 F8 00 74 15 8B F5 8D B5 ?? ?? FF FF 66 8B 06 66 83 F8 01 0F 84 42 02 00 00 C6 06 01 8B D5 2B 95 ?? ?? FF FF 89 95 ?? ?? FF FF 01 95 ?? ?? FF FF 8D B5 ?? ?? FF FF 01 16 60 6A 40 68 00 10 00 00 68 00 10 00 00 6A 00 FF 95 ?? ?? FF FF 85 C0 0F 84 6A 03 00 00 89 85 ?? ?? FF FF E8 00 00 00 00 5B B9 68 03 00 00 03 D9 50 53 E8 B1 02 00 00 61 8B 36 8B FD 03 BD ?? ?? FF FF 8B DF 83 3F 00 75 0A 83 C7 04 B9 00 00 00 00 EB 16 B9 01 00 00 00 03 3B 83 C3 04 83 3B 00 74 36}
	condition:
		$0 at entrypoint
}
rule _MoleBox_v20_
{
	meta:
		description = "MoleBox v2.0"
	strings:
		$0 = {E8 ?? ?? ?? ?? 60 E8 4F}
	condition:
		$0
}
rule _codeCrypter_031__Tibbar_
{
	meta:
		description = "codeCrypter 0.31 -> Tibbar"
	strings:
		$0 = {50 58 53 5B 90 BB ?? ?? ?? 00 FF E3 90 CC CC CC 55 8B EC 5D C3 CC CC CC CC CC CC CC CC CC CC CC}
	condition:
		$0 at entrypoint
}
rule _Anti007_V26__LiuXingPing_
{
	meta:
		description = "Anti007 V2.6 -> LiuXingPing"
	strings:
		$0 = {00 00 00 4C 6F 61 64 4C 69 62 72 61 72 79 41 00 00 00 47 65 74 50 72 6F 63 41 64 64 72 65 73 73 00 00 00 56 69 72 74 75 61 6C 50 72 6F 74 65 63 74 00 00 00 56 69 72 74 75 61 6C 41 6C 6C 6F 63 00 00 00 56 69 72 74 75 61 6C 46 72 65 65 00 00 00 47 65 74 53 79 73 74 65 6D 44 69 72 65 63 74 6F 72 79 41 00 00 00 43 72 65 61 74 65 46 69 6C 65 41 00 00 00 57 72 69 74 65 46 69 6C 65 00 00 00 43 6C 6F 73 65 48 61 6E 64 6C 65 00 00 00 45 78 69 74 50 72 6F 63 65 73 73 00 00}
	condition:
		$0
}
rule _Stealth_PE_v11_
{
	meta:
		description = "Stealth PE v1.1"
	strings:
		$0 = {BA ?? ?? ?? 00 FF E2 BA ?? ?? ?? 00 B8 ?? ?? ?? ?? 89 02 83 C2 03 B8 ?? ?? ?? ?? 89 02 83 C2 FD FF E2}
	condition:
		$0 at entrypoint
}
rule _ST_Protector_V15__Silent_Software_
{
	meta:
		description = "ST Protector V1.5 -> Silent Software"
	strings:
		$0 = {00 00 00 00 4B 65 52 6E 45 6C 33 32 2E 64 4C 6C 00 00 47 65 74 50 72 6F 63 41 64 64 72 65 73 73 00 00 4C 6F 61 64 4C 69 62 72 61 72 79 41 00 00}
	condition:
		$0
}
rule _EXE_Stealth_v25_
{
	meta:
		description = "EXE Stealth v2.5"
	strings:
		$0 = {60 90 EB 22 45 78 65 53 74 65 61 6C 74 68 20 2D 20 77 77 77 2E 77 65 62 74 6F 6F 6C 6D 61 73 74 65 72 2E 63 6F 6D E8 00 00 00 00 5D 81 ED 40 1E 40 00 B9 99 09 00 00 8D BD 88 1E 40 00 8B F7 AC}
	condition:
		$0
}
rule _EXECryptor_226_DLL_minimum_protection_
{
	meta:
		description = "EXECryptor 2.2.6 DLL (minimum protection)"
	strings:
		$0 = {50 8B C6 87 04 24 68 ?? ?? ?? ?? 5E E9 ?? ?? ?? ?? 85 C8 E9 ?? ?? ?? ?? 81 C3 ?? ?? ?? ?? 0F 81 ?? ?? ?? 00 81 FA ?? ?? ?? ?? 33 D0 E9 ?? ?? ?? 00 0F 8D ?? ?? ?? 00 81 D5 ?? ?? ?? ?? F7 D1 0B 15 ?? ?? ?? ?? C1 C2 ?? 81 C2 ?? ?? ?? ?? 9D E9 ?? ?? ?? ?? C1 E2 ?? C1 E8 ?? 81 EA ?? ?? ?? ?? 13 DA 81 E9 ?? ?? ?? ?? 87 04 24 8B C8 E9 ?? ?? ?? ?? 55 8B EC 83 C4 F8 89 45 FC 8B 45 FC 89 45 F8 8B 45 08 E9 ?? ?? ?? ?? 8B 45 E0 C6 00 00 FF 45 E4 E9 ?? ?? ?? ?? FF 45 E4 E9 ?? ?? ?? 00 F7 D3 0F 81 ?? ?? ?? ?? E9 ?? ?? ?? ?? 87 34 24 5E 8B 45 F4 E8 ?? ?? ?? 00 8B 45 F4 8B E5 5D C3 E9}
	condition:
		$0 at entrypoint
}
rule _PseudoSigner_02_ZCode_101__Anorganix_
{
	meta:
		description = "PseudoSigner 0.2 [ZCode 1.01] --> Anorganix"
	strings:
		$0 = {E9 12 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 E9 FB FF FF FF C3 68 00 00 00 00 64 FF 35 00 00 00 00}
	condition:
		$0 at entrypoint
}
rule _RLPack_V115V117_aPlib_043__ap0x_
{
	meta:
		description = "RLPack V1.15-V1.17 (aPlib 0.43) -> ap0x"
	strings:
		$0 = {60 E8 00 00 00 00 8B 2C 24 83 C4 04 8D B5 ?? ?? ?? ?? 8D 9D ?? ?? ?? ?? 33 FF E8 45 01 00 00 EB 0F FF 74 37 04 FF 34 37 FF D3 83 C4 08 83 C7 08 83 3C 37 00 75 EB}
	condition:
		$0 at entrypoint
}
rule _RLPack_v118_Basic_aPLib__Ap0x_
{
	meta:
		description = "RLPack v1.18 Basic [aPLib] -> Ap0x"
	strings:
		$0 = {60 E8 00 00 00 00 8B 2C 24 83 C4 04 8D B5 1A 04 00 00 8D 9D C1 02 00 00 33 FF E8 61 01 00 00 EB 0F FF 74 37 04 FF 34 37 FF D3 83 C4 08 83 C7 08 83 3C 37 00 75 EB 83 BD 06 04 00 00 00 74 0E 83}
	condition:
		$0 at entrypoint
}
rule _UPXShit_v01__500mhz_
{
	meta:
		description = "UPX-Shit v0.1 -> 500mhz"
	strings:
		$0 = {E8 00 00 00 00 5E 83 C6 14 AD 89 C7 AD 89 C1 AD 30 07 47 E2 FB AD FF E0 C3 00 ?? ?? 00 ?? ?? ?? 00 ?? ?? ?? 01 ?? ?? ?? 00 55 50 58 2D 53 68 69 74 20 76 30 2E 31 20 2D 20 77 77 77 2E 62 6C 61 63 6B 6C 6F 67 69 63 2E 6E 65 74 20 2D 20 63 6F 64 65 20 62 79}
		$1 = {E8 00 00 00 00 5E 83 C6 14 AD 89 C7 AD 89 C1 AD 30 07 47 E2 FB AD FF E0 C3 00 ?? ?? 00 ?? ?? ?? 00 ?? ?? ?? ?? ?? ?? ?? 00 55 50 58 2D 53 68 69 74 20 76 30 2E 31 20 2D 20 77 77 77 2E 62 6C 61 63 6B 6C 6F 67 69 63 2E 6E 65 74 20 2D 20 63 6F 64 65 20 62 79}
		$2 = {E8 ?? ?? ?? ?? 5E 83 C6 ?? AD 89 C7 AD 89 C1 AD 30 07 47 E2 ?? AD FF E0 C3}
	condition:
		$0 at entrypoint or $1 at entrypoint or $2 at entrypoint
}
rule _ABC_Cryptor_10__by_ZloY_
{
	meta:
		description = "ABC Cryptor 1.0 - by ZloY"
	strings:
		$0 = {68 FF 64 24 F0 68 58 58 58 58 90 FF D4 50 8B 40 F2 05 B0 95 F6 95 0F 85 01 81 BB FF 68 ?? ?? ?? ?? BF 00 ?? ?? ?? B9 00 ?? ?? ?? 80 37 ?? 47 39 CF 75 F8 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? BF 00 ?? ?? ?? B9 00 ?? ?? ?? 80 37 ?? 47 39 CF 75 F8}
	condition:
		$0
}
rule _PESHiELD_v02__v02b__v02b2_
{
	meta:
		description = "PESHiELD v0.2 / v0.2b / v0.2b2"
	strings:
		$0 = {60 E8 ?? ?? ?? ?? 41 4E 41 4B 49 4E 5D 83 ED 06 EB 02 EA 04}
	condition:
		$0 at entrypoint
}
rule _RLPack_V112V114_LZMA_430__ap0x_
{
	meta:
		description = "RLPack V1.12-V1.14 (LZMA 4.30) -> ap0x"
	strings:
		$0 = {60 E8 00 00 00 00 8B 2C 24 83 C4 04 8D B5 ?? ?? ?? ?? 8D 9D ?? ?? ?? ?? 33 FF 6A ?? 68 ?? ?? ?? ?? 68 ?? ?? ?? ?? 6A ?? FF 95 ?? ?? ?? ?? 89 85 ?? ?? ?? ?? EB ?? 60}
	condition:
		$0
}
rule _Armadillo_v253b3_
{
	meta:
		description = "Armadillo v2.53b3"
	strings:
		$0 = {55 8B EC 6A FF 68 D8 ?? ?? ?? 68 14 ?? ?? ?? 64 A1 ?? ?? ?? ?? 50 64 89 25 ?? ?? ?? ?? 83 EC 58 53 56 57 89 65 E8 FF 15}
	condition:
		$0 at entrypoint
}
rule _RJoiner_12a__Vaska_
{
	meta:
		description = "RJoiner 1.2a -> Vaska"
	strings:
		$0 = {55 8B EC 81 EC 0C 01 00 00 8D 85 F4 FE FF FF 56 50 68 04 01 00 00 FF 15 0C 10 40 00 94 90 94 8D 85 F4 FE FF FF 50 FF 15 08 10 40 00 94 90 94 BE 00 20 40 00 94 90 94 83 3E FF 74 7D 53 57 33 DB 8D 7E 04 94 90 94 53 68 80 00 00 00 6A 02 53 6A 01 68 00 00 00 C0 57 FF 15 04 10 40 00 89 45 F8 94 90 94 8B 06 8D 74 06 04 94 90 94 8D 45 FC 53 50 8D 46 04 FF 36 50 FF 75 F8 FF 15 00 10 40 00 94 90 94 FF 75 F8 FF 15 10 10 40 00 94 90 94 8D 85 F4 FE FF FF 6A 0A 50 53 57 68 20 10 40 00 53 FF 15 18 10 40 00 94 90 94 8B 06 8D 74 06 04 94 90 94 83 3E FF 75 89 5F 5B 33 C0 5E C9 C2 10 00 CC CC 24 11}
	condition:
		$0
}
rule _ASPack_v212__Alexey_Solodovnikov_
{
	meta:
		description = "ASPack v2.12 -> Alexey Solodovnikov"
	strings:
		$0 = {60 E8 03 00 00 00 E9 EB 04 5D 45 55 C3 E8 01}
		$1 = {60 E8 03 00 00 00 E9 EB 04 5D 45 55 C3 E8 01 00 00 00 EB 5D BB ED FF FF FF 03 DD 81 EB}
	condition:
		$0 at entrypoint or $1 at entrypoint
}
rule _PseudoSigner_02_PE_Protect_09__Anorganix_
{
	meta:
		description = "PseudoSigner 0.2 [PE Protect 0.9] --> Anorganix"
	strings:
		$0 = {52 51 55 57 64 67 A1 30 00 85 C0 78 0D E8 07 00 00 00 58 83 C0 07 C6 90 C3}
	condition:
		$0 at entrypoint
}
rule _Anslym_FUD_Crypter_
{
	meta:
		description = "Anslym FUD Crypter"
	strings:
		$0 = {55 8B EC 83 C4 F0 53 56 B8 38 17 05 10 E8 5A 45 FB FF 33 C0 55 68 21 1C 05 10 64 FF 30 64 89 20 EB 08 FC FC FC FC FC FC 27 54 E8 85 4C FB FF 6A 00 E8 0E 47 FB FF 6A 0A E8 27 49 FB FF E8 EA 47 FB FF 6A 0A}
	condition:
		$0 at entrypoint
}
rule _nbuild_v10_soft_
{
	meta:
		description = "nbuild v1.0 [soft]"
	strings:
		$0 = {B9 ?? ?? BB ?? ?? C0 ?? ?? 80 ?? ?? 43 E2}
	condition:
		$0 at entrypoint
}
rule _BeRoEXEPacker_v100_DLL_LZBRR__BeRo__Farbrausch_
{
	meta:
		description = "BeRoEXEPacker v1.00 DLL [LZBRR] -> BeRo / Farbrausch"
	strings:
		$0 = {83 7C 24 08 01 0F 85 ?? ?? ?? ?? 60 BE ?? ?? ?? ?? BF ?? ?? ?? ?? FC B2 80 33 DB A4 B3 02 E8 ?? ?? ?? ?? 73 F6 33 C9 E8 ?? ?? ?? ?? 73 1C 33 C0 E8 ?? ?? ?? ?? 73 23 B3 02 41 B0 10}
	condition:
		$0 at entrypoint
}
rule _hyings_PEArmor_V076__hying_
{
	meta:
		description = "hying's PEArmor V0.76 -> hying"
	strings:
		$0 = {E9 00 00 00 00 60 E8 14 00 00 00 5D 81 ED 00 00 00 00 6A ?? E8 A3 00 00 00}
	condition:
		$0 at entrypoint
}
rule _MEW_5_10__Northfox_
{
	meta:
		description = "MEW 5 1.0 -> Northfox"
	strings:
		$0 = {BE 5B 00 40 00 AD 91 AD 93 53 AD 96 56 5F AC C0 C0}
	condition:
		$0 at entrypoint
}
rule _PseudoSigner_02_PEX_099__Anorganix_
{
	meta:
		description = "PseudoSigner 0.2 [PEX 0.99] --> Anorganix"
	strings:
		$0 = {60 E8 01 00 00 00 55 83 C4 04 E8 01 00 00 00 90 5D 81 FF FF FF 00 01}
	condition:
		$0 at entrypoint
}
rule _North_Star_PE_Shrinker_v13_by_Liuxingping_
{
	meta:
		description = "North Star PE Shrinker v1.3 by Liuxingping"
	strings:
		$0 = {9C 60 E8 00 00 00 00 5D B8 B3 85 40 00 2D AC 85 40 00 2B E8 8D B5 73 ?? FF FF 8B 06 83 F8 00 74 11 8D B5 7F ?? FF FF 8B 06 83 F8 01 0F 84 F1 01 00 00 C7 06 01 00 00 00 8B D5 8B 85 4F ?? FF FF 2B D0 89 95 4F ?? FF FF 01 95 67 ?? FF FF 8D B5 83 ?? FF FF 01}
	condition:
		$0
}
rule _SimbiOZ__Extranger_
{
	meta:
		description = "SimbiOZ -> Extranger"
	strings:
		$0 = {50 60 E8 00 00 00 00 5D 81 ED 07 10 40 00 68 80 0B 00 00 8D 85 1F 10 40 00 50 E8 84 0B 00 00}
	condition:
		$0 at entrypoint
}
rule _SVK_Protector_V13X__Pavol_Cerven_
{
	meta:
		description = "SVK Protector V1.3X -> Pavol Cerven"
	strings:
		$0 = {60 E8 00 00 00 00 5D 81 ED 06 00 00 00 EB 05 B8 ?? ?? 42 00 64 A0 23 00 00 00 EB 03 C7 84 E8 84 C0 EB 03 C7 84 E9 75 67 B9 49 00 00 00 8D B5 C5 02 00 00 56 80 06 44 46 E2 FA 8B 8D C1 02 00 00 5E 55 51 6A 00 56 FF 95 0C 61 00 00 59 5D 40 85 C0 75 3C 80 3E 00 74 03 46 EB F8 46 E2 E3 8B C5 8B 4C 24 20 2B 85 BD 02 00 00 89 85 B9 02 00 00 80 BD B4 02 00 00 01 75 06 8B 8D 0C 61 00 00 89 8D B5 02 00 00 8D 85 0E 03 00 00 8B DD FF E0 55 68 10 10 00 00 8D 85 B4 00 00 00 50 8D 85 B4 01 00 00 50 6A 00 FF 95 18 61 00 00 5D 6A FF FF 95 10 61 00 00 44 65 62 75 67 67 65 72 20 6F 72 20 74 6F 6F 6C 20 66 6F 72 20 6D 6F 6E 69 74 6F 72 69 6E 67 20 64 65 74 65 63 74 65 64 21 21 21 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00}
	condition:
		$0 at entrypoint
}
rule _FreeJoiner_151__GlOFF_
{
	meta:
		description = "FreeJoiner 1.5.1 -> GlOFF"
	strings:
		$0 = {90 87 FF 90 90 B9 2B 00 00 00 BA 07 10 40 00 83 C2 03 90 87 FF 90 90 B9 04 00 00 00 90 87 FF 90 33 C9 C7 05 09 30 40 00 00 00 00 00 68 00 01 00 00 68 21 30 40 00 6A 00 E8 B7 02 00 00 6A 00 68 80 00 00 00 6A 03 6A 00 6A 00 68 00 00 00 80 68 21 30 40 00 E8 8F 02 00 00 A3 19 30 40 00 90 87 FF 90 8B 15 09 30 40 00 81 C2 04 01 00 00 F7 DA 6A 02 6A 00 52}
	condition:
		$0 at entrypoint
}
rule _ARCSFX_Archive_
{
	meta:
		description = "ARC-SFX Archive"
	strings:
		$0 = {8C C8 8C DB 8E D8 8E C0 89 ?? ?? ?? 2B C3 A3 ?? ?? 89 ?? ?? ?? BE ?? ?? B9 ?? ?? BF ?? ?? BA ?? ?? FC AC 32 C2 8A D8}
	condition:
		$0 at entrypoint
}
rule _hmimys_Protect_v10_
{
	meta:
		description = "hmimys Protect v1.0"
	strings:
		$0 = {E8 BA 00 00 00 ?? 00 00 00 00 ?? ?? 00 00 10 40 00 ?? ?? ?? 00 ?? ?? ?? 00 00 ?? ?? 00 ?? ?? ?? 00 ?? ?? ?? 00 ?? ?? ?? 00 ?? ?? ?? 00 ?? ?? ?? 00 ?? 00 00 00 00 00 00 00 ?? ?? ?? 00 00 00 00 00 00 00 00 00 ?? ?? ?? 00 ?? ?? ?? 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ?? ?? ?? 00 ?? ?? ?? 00 ?? ?? ?? 00 ?? ?? ?? 00 00 00 00 00 4B 65 72 6E 65 6C 33 32 2E 64 6C 6C 00 00 00 4C 6F 61 64 4C 69 62 72 61 72 79 41 00 00 00 47 65 74 50 72 6F 63 41 64 64 72 65 73 73 00 00 00 56 69 72 74 75 61 6C 46 72 65 65 00 00 00 56 69 72 74 75 61 6C 41 6C 6C 6F 63 00 5E 83 C6 64 AD 50 AD 50 83 EE 6C AD 50 AD 50 AD 50 AD 50 AD 50 E8 E7 07 00 00 AD 8B DE 8B F0 83 C3 44 AD 85 C0 74 32 8B F8 56 FF 13 8B E8 AC 84 C0 75 FB AC 84 C0 74 EA 4E AD A9}
		$1 = {E8 BA 00 00 00 ?? 00 00 00 00 ?? ?? 00 00 10 40 00 ?? ?? ?? 00 ?? ?? ?? 00 00 ?? ?? 00 ?? ?? ?? 00 ?? ?? ?? 00 ?? ?? ?? 00 ?? ?? ?? 00 ?? ?? ?? 00 ?? 00 00 00 00 00 00 00 ?? ?? ?? 00 00 00 00 00 00 00 00 00 ?? ?? ?? 00 ?? ?? ?? 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ?? ?? ?? 00 ?? ?? ?? 00 ?? ?? ?? 00 ?? ?? ?? 00 00 00 00 00 4B 65 72 6E 65 6C 33 32 2E 64 6C 6C 00 00 00 4C 6F 61 64 4C 69 62 72 61 72 79 41 00 00 00 47 65 74 50 72 6F 63 41 64 64 72 65 73 73 00 00 00 56 69 72 74 75 61 6C 46 72 65 65 00 00 00 56 69 72 74 75 61 6C 41 6C 6C 6F 63 00 5E 83 C6 64 AD 50 AD 50 83 EE 6C AD 50 AD 50 AD 50 AD 50 AD 50 E8 E7 07 00 00 AD 8B DE 8B F0 83 C3 44 AD 85 C0 74 32 8B F8 56 FF 13 8B E8 AC 84 C0 75 FB AC 84 C0 74 EA 4E AD A9 00 00 00}
	condition:
		$0 at entrypoint or $1
}
rule _Private_exe_Protector_20__SetiSoft_Team_
{
	meta:
		description = "Private exe Protector 2.0 -> SetiSoft Team"
	strings:
		$0 = {00 00 00 00 00 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 4B 45 52 4E 45 4C 33 32 2E 44 4C 4C 00 ?? ?? ?? ?? 00 00 00 00 00 00}
	condition:
		$0
}
rule _Software_Compress__BG_Software_
{
	meta:
		description = "Software Compress -> BG Software"
	strings:
		$0 = {E9 BE 00 00 00 60 8B 74 24 24 8B 7C 24 28 FC B2 80 33 DB A4 B3 02 E8 6D 00 00 00 73 F6 33 C9 E8 64 00 00 00 73 1C 33 C0 E8 5B 00 00 00 73 23 B3 02 41 B0 10 E8 4F 00 00 00 12 C0 73 F7 75 3F AA EB D4 E8 4D 00 00 00 2B CB 75 10 E8 42 00 00 00 EB 28 AC D1 E8}
	condition:
		$0 at entrypoint
}
rule _ASPack_v2xx__Alexey_Solodovnikov_
{
	meta:
		description = "ASPack v2.xx -> Alexey Solodovnikov"
	strings:
		$0 = {A8 03 00 00 61 75 08 B8 01 00 00 00 C2 0C 00 68 00 00 00 00 C3 8B 85 26 04 00 00 8D 8D 3B 04 00 00 51 50 FF 95}
		$1 = {A8 03 ?? ?? 61 75 08 B8 01 ?? ?? ?? C2 0C ?? 68 ?? ?? ?? ?? C3 8B 85 26 04 ?? ?? 8D 8D 3B 04 ?? ?? 51 50 FF 95}
	condition:
		$0 at entrypoint or $1 at entrypoint
}
rule _Nakedbind_10__nakedcrew_
{
	meta:
		description = "Nakedbind 1.0 -> nakedcrew"
	strings:
		$0 = {64 8B 38 48 8B C8 F2 AF AF 8B 1F 66 33 DB 66 81 3B 4D 5A 74 08 81 EB 00 00}
	condition:
		$0 at entrypoint
}
rule _Code_Virtualizer_1310__Oreans_Technologies_
{
	meta:
		description = "Code Virtualizer 1.3.1.0 -> Oreans Technologies"
	strings:
		$0 = {60 9C FC E8 00 00 00 00 5F 81 EF ?? ?? ?? ?? 8B C7 81 C7 ?? ?? ?? ?? 3B 47 2C 75 02 EB 2E 89 47 2C B9 A7 00 00 00 EB 05 01 44 8F ?? 49 0B C9 75 F7 83 7F 40 00 74 15 8B 77 40 03 F0 EB 09 8B 1E 03 D8 01 03 83 C6 04 83 3E 00 75 F2 8B 74 24 24 8B DE 03 F0 B9 01 00 00 00 33 C0 F0 0F B1 4F 30 75 F7 AC}
	condition:
		$0
}
rule _ASDPack_20__asd_
{
	meta:
		description = "ASDPack 2.0 -> asd"
	strings:
		$0 = {00 00 00 00 ?? ?? ?? ?? 00 00 00 00 00 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ?? ?? ?? ?? 00 00 00 00 4B 65 72 6E 65 6C 33 32 2E 64 6C 6C 00 8D 49 00 1F 01 47 65 74 4D 6F 64 75 6C 65 48 61 6E 64 6C 65 41 00 90}
		$1 = {5B 43 83 7B 74 00 0F 84 08 00 00 00 89 43 14 E9}
		$2 = {8B 44 24 04 56 57 53 E8 CD 01 00 00 C3 00 00 00 00 00 00 00 00 00 00 00 00 00 10 00 00 00}
	condition:
		$0 or $1 or $2 at entrypoint
}
rule _BeRoEXEPacker_v100_LZBRR__BeRo__Farbrausch_
{
	meta:
		description = "BeRoEXEPacker v1.00 [LZBRR] -> BeRo / Farbrausch"
	strings:
		$0 = {60 BE ?? ?? ?? ?? BF ?? ?? ?? ?? FC B2 80 33 DB A4 B3 02 E8 ?? ?? ?? ?? 73 F6 33 C9 E8 ?? ?? ?? ?? 73 1C 33 C0 E8 ?? ?? ?? ?? 73 23 B3 02 41 B0 10}
	condition:
		$0 at entrypoint
}
rule _DxPack_V086__Dxd_
{
	meta:
		description = "DxPack V0.86 -> Dxd"
	strings:
		$0 = {60 E8 00 00 00 00 5D 8B FD 81 ED 06 10 40 00 2B BD 94 12 40 00 81 EF 06 00 00 00 83 BD 14 13 40 00 01 0F 84 2F 01 00 00}
	condition:
		$0 at entrypoint
}
rule _Armadillo_v251_
{
	meta:
		description = "Armadillo v2.51"
	strings:
		$0 = {55 8B EC 6A FF 68 B8 ?? ?? ?? 68 D0 ?? ?? ?? 64 A1 ?? ?? ?? ?? 50 64 89 25 ?? ?? ?? ?? 83 EC 58 53 56 57 89 65 E8 FF 15 20}
	condition:
		$0 at entrypoint
}
rule _Armadillo_v261_
{
	meta:
		description = "Armadillo v2.61"
	strings:
		$0 = {55 8B EC 6A FF 68 28 ?? ?? ?? 68 E4 ?? ?? ?? 64 A1 ?? ?? ?? ?? 50 64 89 25 ?? ?? ?? ?? 83 EC 58 53 56 57 89 65 E8 FF 15 6C ?? ?? ?? 33 D2 8A D4 89 15 0C}
	condition:
		$0 at entrypoint
}
rule _Reg2Exe_224__by_Jan_Vorel_
{
	meta:
		description = "Reg2Exe 2.24 - by Jan Vorel"
	strings:
		$0 = {6A 00 E8 CF 20 00 00 A3 F4 45 40 00 E8 CB 20 00 00 6A 0A 50 6A 00 FF 35 F4 45 40 00 E8 07 00 00 00 50 E8 BB 20 00 00 CC 68 48 00 00 00 68 00 00 00 00 68 F8 45 40 00 E8 06 19 00 00 83 C4 0C 8B 44 24 04 A3 FC 45 40 00 68 00 00 00 00 68 A0 0F 00 00 68 00 00 00 00 E8 8C 20 00 00 A3 F8 45 40 00 E8 02 20 00 00 E8 32 1D 00 00 E8 20 19 00 00 E8 A3 16 00 00 68 01 00 00 00 68 38 46 40 00 68 00 00 00 00 8B 15 38 46 40 00 E8 71 4F 00 00 B8 00 00 10 00 BB 01 00 00 00 E8 82 4F 00 00 FF 35 48 41 40 00 B8 00 01 00 00 E8 9D 15 00 00 8D 0D 1C 46 40 00 5A E8 82 16 00 00 68 00 01 00 00 FF 35 1C 46 40 00 E8 24 20 00 00 A3 24 46 40 00 FF 35 48 41 40 00 FF 35 24 46 40 00 FF 35 1C 46 40 00 E8 DC 10 00 00 8D 0D 14 46 40 00 5A E8 4A 16}
	condition:
		$0 at entrypoint
}
rule _Vx_Modification_of_Hi924_
{
	meta:
		description = "Vx: Modification of Hi.924"
	strings:
		$0 = {50 53 51 52 1E 06 9C B8 21 35 CD 21 53 BB ?? ?? 26 ?? ?? 49 48 5B}
	condition:
		$0 at entrypoint
}
rule _Inno_Setup_Module_v304betav306v307_
{
	meta:
		description = "Inno Setup Module v3.0.4-beta/v3.0.6/v3.0.7"
	strings:
		$0 = {55 8B EC 83 C4 B8 53 56 57 33 C0 89 45 F0 89 45 BC 89 45 B8 E8 B3 70 FF FF E8 1A 85 FF FF E8 25 A7 FF FF E8 6C}
	condition:
		$0
}
rule _ZCode_Win32PE_Protector_v101_
{
	meta:
		description = "ZCode Win32/PE Protector v1.01"
	strings:
		$0 = {E9 12 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? E9 FB FF FF FF C3 68 ?? ?? ?? ?? 64 FF 35}
	condition:
		$0 at entrypoint
}
rule _ARM_Protector_01__by_SMoKE_
{
	meta:
		description = "ARM Protector 0.1 - by SMoKE"
	strings:
		$0 = {E8 04 00 00 00 83 60 EB 0C 5D EB 05 45 55 EB 04 B8 EB F9 00 C3 E8 00 00 00 00 5D EB 01 00 81 ED 5E 1F 40 00 EB 02 83 09 8D B5 EF 1F 40 00 EB 02 83 09 BA A3 11 00 00 EB 01 00 8D 8D 92 31 40 00 8B 09 E8 14 00 00 00 83 EB 01 00 8B FE E8 00 00 00 00 58 83 C0 07 50 C3 00 EB 04 58 40 50 C3 8A 06 46 EB 01 00 D0 C8 E8 14 00 00 00 83 EB 01 00 2A C2 E8 00 00 00 00 5B 83 C3 07 53 C3 00 EB 04 5B 43 53 C3 EB 01 00 32 C2 E8 0B 00 00 00 00 32 C1 EB 01 00 C0 C0 02 EB 09 2A C2 5B EB 01 00 43 53 C3 88 07 EB 01 00 47 4A 75 B4}
	condition:
		$0 at entrypoint
}
rule _muckis_protector_II__mucki_
{
	meta:
		description = "mucki's protector II -> mucki"
	strings:
		$0 = {E8 24 00 00 00 8B 4C 24 0C C7 01 17 00 01 00 C7 81 B8 00 00 00 00 00 00 00 31 C0 89 41 14 89 41 18 80 6A 00 E8 85 C0 74 12 64 8B 3D 18 00 00 00 8B 7F 30 0F B6 47 02 85 C0 74 01 C3 C7 04 24 ?? ?? ?? ?? BE ?? ?? ?? ?? B9 ?? ?? ?? ?? 8A 06 F6 D0 88 06 46 E2 F7 C3}
	condition:
		$0 at entrypoint
}
rule _hmimyss_PEPack_01__hmimys_
{
	meta:
		description = "hmimys's PE-Pack 0.1 -> hmimys"
	strings:
		$0 = {E8 00 00 00 00 5D 83 ED 05 6A 00 FF 95 E1 0E 00 00 89 85 85 0E 00 00 8B 58 3C 03 D8 81 C3 F8 00 00 00 80 AD 89 0E 00 00 01 89 9D 63 0F 00 00 8B 4B 0C 03 8D 85 0E 00 00 8B 53 08 80 BD 89 0E 00 00 00 75 0C 03 8D 91 0E 00 00 2B 95 91 0E 00 00 89 8D 57 0F 00 00 89 95 5B 0F 00 00 8B 5B 10 89 9D 5F 0F 00 00 8B 9D 5F 0F 00 00 8B 85 57 0F 00 00 53 50 E8 B7 0B 00 00 89 85 73 0F 00 00 6A 04 68 00 10 00 00 50 6A 00 FF 95 E9 0E 00 00 89 85 6B 0F 00 00 6A 04 68 00 10 00 00 68 D8 7C 00 00 6A 00 FF 95 E9 0E 00 00 89 85 6F 0F 00 00 8D 85 67 0F 00 00 8B 9D 73 0F 00 00 8B 8D 6B 0F 00 00 8B 95 5B 0F 00 00 83 EA 0E 8B B5 57 0F 00 00 83 C6 0E 8B BD 6F 0F 00 00 50 53 51 52 56 68 D8 7C 00 00 57 E8 01 01 00 00 8B 9D 57 0F 00 00 8B 03 3C 01 75}
	condition:
		$0 at entrypoint
}
rule _KBys_Packer_028_Beta__Shoooo_
{
	meta:
		description = "KBys Packer 0.28 Beta -> Shoooo"
	strings:
		$0 = {60 E8 00 00 00 00 5E 83 EE 0A 8B 06 03 C2 8B 08 89 4E F3 83 EE 0F 56 52 8B F0 AD AD 03 C2 8B D8 6A 04 BF 00 10 00 00 57 57 6A 00 FF 53 08 5A 59 BD 00 80 00 00 55 6A 00 50 51 52 50 89 06 AD AD 03 C2 50 AD 03 C2 FF D0 6A 04 57 AD 50 6A 00 FF 53}
	condition:
		$0
}
rule _Upack_v032_Beta_Patch__Dwing_
{
	meta:
		description = "Upack v0.32 Beta (Patch) -> Dwing"
	strings:
		$0 = {BE 88 01 ?? ?? AD 50 ?? AD 91 F3 A5}
	condition:
		$0
}
rule _PseudoSigner_01_CodeLock__Anorganix_
{
	meta:
		description = "PseudoSigner 0.1 [Code-Lock] --> Anorganix"
	strings:
		$0 = {43 4F 44 45 2D 4C 4F 43 4B 2E 4F 43 58 00 01 28 01 50 4B 47 05 4C 3F B4 04 4D 4C 47 4B E9}
	condition:
		$0 at entrypoint
}
rule _KByS_V028_DLL__shoooo_
{
	meta:
		description = "KByS V0.28 DLL -> shoooo"
	strings:
		$0 = {B8 ?? ?? ?? ?? BA ?? ?? ?? ?? 03 C2 FF E0 ?? ?? ?? ?? 60 E8 00 00 00 00}
	condition:
		$0 at entrypoint
}
rule _AverCryptor_102_beta__os1r1s_
{
	meta:
		description = "AverCryptor 1.02 beta -> os1r1s"
	strings:
		$0 = {60 E8 00 00 00 00 5D 81 ED 0C 17 40 00 8B BD 33 18 40 00 8B 8D 3B 18 40 00 B8 51 18 40 00 03 C5 80 30 05 83 F9 00 74 71 81 7F 1C AB 00 00 00 75 62 8B 57 0C 03 95 37 18 40 00 33 C0 51 33 C9 66 B9 F7 00 66 83 F9 00 74 49 8B 57 0C 03 95 37 18 40 00 8B 85 3F 18 40 00 83 F8 02 75 06 81 C2 00 02 00 00 51 8B 4F 10 83 F8 02 75 06 81 E9 00 02 00 00 57 BF C8 00 00 00 8B F1 E8 27 00 00 00 8B C8 5F B8 51 18 40 00 03 C5 E8 24 00 00 00 59 49 EB B1 59 83 C7 28 49 EB 8A 8B 85 2F 18 40 00 89 44 24 1C 61 FF E0 56 57 4F F7 D7 23 F7 8B C6 5F 5E C3}
	condition:
		$0 at entrypoint
}
rule _Upack_021_beta__Dwing_
{
	meta:
		description = "Upack 0.21 beta -> Dwing"
	strings:
		$0 = {BE 88 01 40 00 AD 8B F8 6A 04 95 A5 33 C0 AB 48 AB F7 D8 59 F3 AB C1 E0 0A B5 ?? F3 AB AD 50 97 51 58 8D 54 85 5C FF 16 72 5A 2C 03 73 02 B0 00 3C 07 72 02 2C 03 50 0F B6 5F FF C1 E3 ?? B3 00}
	condition:
		$0 at entrypoint
}
rule _Unnamed_Scrambler_10__p0ke_
{
	meta:
		description = "Unnamed Scrambler 1.0 -> p0ke"
	strings:
		$0 = {55 8B EC 83 C4 EC 53 56 33 C0 89 45 ?? ?? ?? ?? 40 00 E8 11 F4 FF FF BE 30 6B 40 00 33 C0 55 68 C9 42 40 00 64 FF 30 64 89 20 E8 C9 FA FF FF BA D8 42 40 00 8B ?? ?? ?? ?? FF FF 8B D8 B8 28 6B 40 00 8B 16 E8 37 F0 FF FF B8 2C 6B 40 00 8B 16 E8 2B F0 FF FF B8 28 6B 40 00 E8 19 F0 FF FF 8B D0 8B C3 8B 0E E8 42 E3 FF FF BA DC 42 40 00 8B C6 E8 2A FA FF FF 8B D8 B8 20 6B 40 00 8B 16 E8 FC EF FF FF B8 24 6B 40 00 8B 16 E8 F0 EF FF FF B8 20 6B 40 00 E8 DE EF FF FF 8B D0 8B C3 8B 0E E8 07 E3 FF FF 6A 00 6A 19 6A 00 6A 32 A1 28 6B 40 00 E8 59 EF FF FF 83 E8 05 03 C0 8D 55 EC E8 94 FE FF FF 8B 55 EC B9 24 6B 40 00 A1 20 6B 40 00 E8 E2 F6 FF FF 6A 00 6A 19 6A 00 6A 32}
	condition:
		$0
}
rule _Obsidium_1339__Obsidium_Software_
{
	meta:
		description = "Obsidium 1.3.3.9 -> Obsidium Software"
	strings:
		$0 = {EB 02 ?? ?? E8 29 00 00 00 EB 03 ?? ?? ?? EB 01 ?? 8B 54 24 0C EB 04 ?? ?? ?? ?? 83 82 B8 00 00 00 28 EB 02 ?? ?? 33 C0 EB 02 ?? ?? C3 EB 03 ?? ?? ?? EB 04 ?? ?? ?? ?? 64 67 FF 36 00 00 EB 03 ?? ?? ?? 64 67 89 26 00 00 EB 01 ?? EB 01 ?? 50 EB 03 ?? ?? ?? 33 C0 EB 03 ?? ?? ?? 8B 00 EB 04 ?? ?? ?? ?? C3 EB 04 ?? ?? ?? ?? E9 FA 00 00 00 EB 03 ?? ?? ?? E8 D5 FF FF FF EB 02 ?? ?? EB 04 ?? ?? ?? ?? 58 EB 03 ?? ?? ?? EB 04 ?? ?? ?? ?? 64 67 8F 06 00 00 EB 03 ?? ?? ?? 83 C4 04 EB 04 ?? ?? ?? ?? E8 CF 27 00 00}
	condition:
		$0 at entrypoint
}
rule _Unknown_by_SMT_
{
	meta:
		description = "Unknown by SMT"
	strings:
		$0 = {60 BE ?? ?? ?? ?? 8D BE ?? ?? ?? ?? 83 ?? ?? 57 EB}
	condition:
		$0 at entrypoint
}
rule _PseudoSigner_01_DxPack_10__Anorganix_
{
	meta:
		description = "PseudoSigner 0.1 [DxPack 1.0] --> Anorganix"
	strings:
		$0 = {60 E8 00 00 00 00 5D 8B FD 81 ED 90 90 90 90 2B B9 00 00 00 00 81 EF 90 90 90 90 83 BD 90 90 90 90 90 0F 84 00 00 00 00 E9}
	condition:
		$0 at entrypoint
}
rule _RLP_v073beta__ap0x_
{
	meta:
		description = "RLP v0.7.3beta -> ap0x"
	strings:
		$0 = {60 8B DD E8 00 00 00 00 5D 95 32 C0 95 89 9D 80 00 00 00 B8 42 31 40 00 BB 41 30 40 00 2B C3 03 C5 33 D2 8A 10 40 B9 ?? ?? 00 00 8B F9 30 10 8A 10 40 49 75 F8 64 EF 86 3D 30 00 00 0F B9 FF 4B 89 52 5C 4C BD 77 C2 0C CE 88 4E 2D E8 00 00 00 5D 0D DB 5E 56}
	condition:
		$0
}
rule _AVPACK_v120_
{
	meta:
		description = "AVPACK v1.20"
	strings:
		$0 = {50 1E 0E 1F 16 07 33 F6 8B FE B9 ?? ?? FC F3 A5 06 BB ?? ?? 53 CB}
	condition:
		$0 at entrypoint
}
rule _SecurePE_1X__wwwdeepzoneorg_
{
	meta:
		description = "SecurePE 1.X -> www.deepzone.org"
	strings:
		$0 = {8B 04 24 E8 00 00 00 00 5D 81 ED 4C 2F 40 00 89 85 61 2F 40 00 8D 9D 65 2F 40 00 53 C3 00 00 00 00 8D B5 BA 2F 40 00 8B FE BB 65 2F 40 00 B9 C6 01 00 00 AD 2B C3 C1 C0 03 33 C3 AB 43 81 FB 8E 2F 40 00 75 05 BB 65 2F 40 00 E2 E7 89 AD 1A 31 40 00 89 AD 55 34 40 00 89 AD 68 34 40 00 8D 85 BA 2F 40 00 50 C3}
	condition:
		$0 at entrypoint
}
rule _yodas_Protector_10x__Ashkbiz_Danehkar_
{
	meta:
		description = "yoda's Protector 1.0x -> Ashkbiz Danehkar"
	strings:
		$0 = {55 8B EC 53 56 57 E8 03 00 00 00 EB 01}
	condition:
		$0 at entrypoint
}
rule _DxPack_10_
{
	meta:
		description = "DxPack 1.0"
	strings:
		$0 = {60 E8 ?? ?? ?? ?? 5D 8B FD 81 ED ?? ?? ?? ?? 2B B9 ?? ?? ?? ?? 81 EF ?? ?? ?? ?? 83 BD ?? ?? ?? ?? ?? 0F 84}
	condition:
		$0 at entrypoint
}
rule _Vx_Hafen1641_
{
	meta:
		description = "Vx: Hafen.1641"
	strings:
		$0 = {E8 ?? ?? 01 ?? ?? ?? CE CC 25 ?? ?? 25 ?? ?? 25 ?? ?? 40 51 D4 ?? ?? ?? CC 47 CA ?? ?? 46 8A CC 44 88 CC}
	condition:
		$0 at entrypoint
}
rule _PocketPC_MIB_
{
	meta:
		description = "PocketPC MIB"
	strings:
		$0 = {E8 FF BD 27 14 00 BF AF 18 00 A4 AF 1C 00 A5 AF 20 00 A6 AF 24 00 A7 AF ?? ?? ?? 0C 00 00 00 00 18 00 A4 8F 1C 00 A5 8F 20 00 A6 8F ?? ?? ?? 0C 24 00 A7 8F ?? ?? ?? 0C 25 20 40 00 14 00 BF 8F 08 00 E0 03 18 00 BD 27 ?? FF BD 27 18 00 ?? AF ?? 00}
	condition:
		$0 at entrypoint
}
rule _theWRAP__by_TronDoc_
{
	meta:
		description = "theWRAP - by TronDoc"
	strings:
		$0 = {55 8B EC 83 C4 F0 53 56 57 33 C0 89 45 F0 B8 48 D2 4B 00 E8 BC 87 F4 FF BB 04 0B 4D 00 33 C0 55 68 E8 D5 4B 00 64 FF 30 64 89 20 E8 9C F4 FF FF E8 F7 FB FF FF 6A 40 8D 55 F0 A1 F0 ED 4B 00 8B 00 E8 42 2E F7 FF 8B 4D F0 B2 01 A1 F4 C2 40 00 E8 F7 20 F5 FF 8B F0 B2 01 A1 B4 C3 40 00 E8 F1 5B F4 FF 89 03 33 D2 8B 03 E8 42 1E F5 FF 66 B9 02 00 BA FC FF FF FF 8B C6 8B 38 FF 57 0C BA B8 A7 4D 00 B9 04 00 00 00 8B C6 8B 38 FF 57 04 83 3D B8 A7 4D 00 00 0F 84 5E 01 00 00 8B 15 B8 A7 4D 00 83 C2 04 F7 DA 66 B9 02 00 8B C6 8B 38 FF 57 0C 8B 0D B8 A7 4D 00 8B D6 8B 03 E8 2B 1F F5 FF 8B C6 E8 B4 5B F4 FF 33 D2 8B 03 E8 DF 1D F5 FF BA F0 44 4E 00 B9 01 00 00 00 8B 03 8B 30 FF 56 04 80 3D F0 44 4E 00 0A 75 3F BA B8 A7 4D 00 B9 04 00 00 00 8B 03 8B 30 FF 56 04 8B 15 B8 A7}
	condition:
		$0 at entrypoint
}
rule _pirit_v15_
{
	meta:
		description = "$pirit v1.5"
	strings:
		$0 = {5B 24 55 50 44 FB 32 2E 31 5D}
	condition:
		$0 at entrypoint
}
rule _SuperDAT_
{
	meta:
		description = "SuperDAT"
	strings:
		$0 = {55 8B EC 6A FF 68 40 F3 42 00 68 A4 BF 42 00 64 A1 00 00 00 00 50 64 89 25 00 00 00 00 83 EC 58 53 56 57 89 65 E8 FF 15 08 F2 42 00 33 D2 8A D4 89 15 60 42 43 00 8B C8 81 E1 FF 00 00 00 89 0D}
	condition:
		$0 at entrypoint
}
rule _Upack_v037_beta__Dwing_
{
	meta:
		description = "Upack v0.37 beta -> Dwing"
	strings:
		$0 = {BE B0 11 ?? ?? AD 50 FF 76 34 EB 7C 48 01 ?? ?? 0B 01 4C 6F 61 64 4C 69 62 72 61 72 79 41 00 00 18 10 00 00 10 00 00 00 00 ?? ?? ?? 00 00 ?? ?? 00 10 00 00 00 02 00 00 04 00 00 00 00 00 37 00 04 00 00 00 00 00 00 00 00 ?? ?? ?? 00 02 00 00 00 00 00 00}
		$1 = {BE B0 11 ?? ?? AD 50 FF 76 34 EB 7C 48 01 ?? ?? 0B 01 4C 6F 61 64 4C 69 62 72 61 72 79 41 00 00 18 10 00 00 10 00 00 00 00 ?? ?? ?? 00 00 ?? ?? 00 10 00 00 00 02 00 00 04 00 00 00 00 00 37 00 04 00 00 00 00 00 00 00 00 ?? ?? ?? 00 02 00 00 00 00 00 00 ?? 00 00 ?? 00 00 ?? 00 00 ?? ?? 00 00 00 10 00 00 10 00 00 00 00 00 00 0A 00 00 00 00 00 00 00 00 00 00 00 EE ?? ?? ?? 14 00 00 00 00 ?? ?? ?? ?? ?? ?? 00 FF 76 38 AD 50 8B 3E BE F0 ?? ?? ?? 6A 27 59 F3 A5 FF 76 04 83 C8 FF 8B DF AB EB 1C 00 00 00 00 47 65 74 50 72 6F 63 41 64 64 72 65 73 73 00 00 ?? ?? ?? ?? ?? 00 00 00 40 AB 40 B1 04 F3 AB C1 E0 0A B5 ?? F3 AB 8B 7E 0C 57 51 E9 ?? ?? ?? ?? E3 B1 04 D3 E0 03 E8 8D 53 18 33 C0 55 40 51 D3 E0 8B EA 91 FF 56 4C 33 D2 59 D1 E8 13 D2 E2 FA 5D 03 EA 45 59 89 6B 08 56 8B F7 2B F5 F3 A4 AC 5E B1 80 AA 3B 7E 34 0F 82 8E FE FF FF 58 5F 59 E3 1B 8A 07 47 04 18 3C 02 73 F7 8B 07 3C ?? 75 F1 B0 00 0F C8 03 46 38 2B C7 AB E2 E5 5E 5D 59 51 59 46 AD 85 C0 74 1F}
	condition:
		$0 at entrypoint or $1 at entrypoint
}
rule _NsPack_V11__LiuXingPing_
{
	meta:
		description = "NsPack V1.1 -> LiuXingPing"
	strings:
		$0 = {9C 60 E8 00 00 00 00 5D B8 57 84 40 00 2D 50 84 40 00}
	condition:
		$0 at entrypoint
}
rule _BobPack_v100__BoB__BobSoft_
{
	meta:
		description = "BobPack v1.00 --> BoB / BobSoft"
	strings:
		$0 = {60 E8 00 00 00 00 8B 0C 24 89 CD 83 E9 06 81 ED ?? ?? ?? ?? E8 3D 00 00 00 89 85 ?? ?? ?? ?? 89 C2 B8 5D 0A 00 00 8D 04 08 E8 E4 00 00 00 8B 70 04 01 D6 E8 76 00 00 00 E8 51 01 00 00 E8 01 01}
	condition:
		$0 at entrypoint
}
rule _Protect_Shareware_V11__eCompserv_CMS_
{
	meta:
		description = "Protect Shareware V1.1 -> eCompserv CMS"
	strings:
		$0 = {53 00 74 00 72 00 69 00 6E 00 67 00 46 00 69 00 6C 00 65 00 49 00 6E 00 66 00 6F 00 00 00 ?? 01 00 00 01 00 30 00 34 00 30 00 39 00 30 00 34 00 42 00 30 00 00 00 34 00 ?? 00 01 00 43 00 6F 00 6D 00 70 00 61 00 6E 00 79 00 4E 00 61 00 6D 00 65 00 00 00 00}
	condition:
		$0
}
rule _AsCrypt_v01__SToRM__5_
{
	meta:
		description = "AsCrypt v0.1 -> SToRM - #5"
	strings:
		$0 = {83 ?? ?? E2 ?? ?? E2 ?? FF}
	condition:
		$0
}
rule _Armadillo_300a__Silicon_Realms_Toolworks_
{
	meta:
		description = "Armadillo 3.00a -> Silicon Realms Toolworks"
	strings:
		$0 = {60 E8 00 00 00 00 5D 50 51 EB 0F ?? EB 0F ?? EB 07 ?? EB 0F ?? EB 08 FD EB 0B F2 EB F5 EB F6 F2 EB 08 FD EB E9 F3 EB E4 FC ?? 59 58 50 51 EB 0F ?? EB 0F ?? EB 07 ?? EB 0F ?? EB 08 FD EB 0B F2 EB F5 EB F6 F2 EB 08 FD EB E9 F3 EB E4 FC ?? 59 58 50 51 EB 0F}
	condition:
		$0 at entrypoint
}
rule _MoleBox_v230__Teggo_
{
	meta:
		description = "MoleBox v2.3.0 -> Teggo"
	strings:
		$0 = {42 04 E8 ?? ?? 00 00 A3 ?? ?? ?? 00 8B 4D F0 8B 11 89 15 ?? ?? ?? 00 ?? 45 FC A3 ?? ?? ?? 00 5F 5E 8B E5 5D C3 CC CC CC CC CC CC CC CC CC CC CC E8 EB FB FF FF 58 E8 ?? 07 00 00 58 89 44 24 20 61 58 FF D0 E8 ?? ?? 00 00 CC CC CC CC CC CC CC}
	condition:
		$0
}
rule _Splice_11__by_Tw1sted_L0gic_
{
	meta:
		description = "Splice 1.1 - by Tw1sted L0gic"
	strings:
		$0 = {68 00 1A 40 00 E8 EE FF FF FF 00 00 00 00 00 00 30 00 00 00 40 00 00 00 00 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 00 00 00 00 00 00 01 00 00 00 ?? ?? ?? ?? ?? ?? 50 72 6F 6A 65 63 74 31 00 ?? ?? ?? ?? ?? ?? ?? 00 00 00 00 06 00 00 00 AC 29 40 00 07 00 00 00 BC 28 40 00 07 00 00 00 74 28 40 00 07 00 00 00 2C 28 40 00 07 00 00 00 08 23 40 00 01 00 00 00 38 21 40 00 00 00 00 00 FF FF FF FF FF FF FF FF 00 00 00 00 8C 21 40 00 08 ?? 40 00 01 00 00 00 AC 19 40 00 00 00 00 00 00 00 00 00 00 00 00 00 AC 19 40 00 4F 00 43 00 50 00 00 00 E7 AF 58 2F 9A 4C 17 4D B7 A9 CA 3E 57 6F F7 76}
	condition:
		$0 at entrypoint
}
rule _PECompact_v166_
{
	meta:
		description = "PECompact v1.66"
	strings:
		$0 = {EB 06 68 ?? ?? ?? ?? C3 9C 60 E8 02 ?? ?? ?? 33 C0 8B C4 83 C0 04 93 8B E3 8B 5B FC 81 EB 3F 90 40 ?? 87 DD 8B 85 E6 90 40 ?? 01 85 33 90 40 ?? 66 C7 85 ?? 90 40 ?? 90 90 01 85 DA 90 40 ?? 01 85 DE 90 40 ?? 01 85 E2 90 40 ?? BB 5B 11}
	condition:
		$0 at entrypoint
}
rule _VideoLanClient__UnknownCompiler_
{
	meta:
		description = "Video-Lan-Client -> (UnknownCompiler)"
	strings:
		$0 = {55 89 E5 83 EC 08 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? FF FF ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 00 ?? ?? ?? ?? ?? ?? ?? 00}
	condition:
		$0 at entrypoint
}
rule _AHTeam_EP_Protector_03_fake_PEtite_22__FEUERRADER_
{
	meta:
		description = "AHTeam EP Protector 0.3 (fake PEtite 2.2) -> FEUERRADER"
	strings:
		$0 = {90 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 90 FF E0 B8 00 00 00 00 68 00 00 00 00 64 FF 35 00 00 00 00 64 89 25 00 00 00 00 66 9C 60 50}
	condition:
		$0 at entrypoint
}
rule _PEnguinCrypt_v10_
{
	meta:
		description = "PEnguinCrypt v1.0"
	strings:
		$0 = {B8 93 ?? ?? 00 55 50 67 64 FF 36 00 00 67 64 89 26 00 00 BD 4B 48 43 42 B8 04 00 00 00 CC 3C 04 75 04 90 90 C3 90 67 64 8F 06 00 00 58 5D BB 00 00 40 00 33 C9 33 C0}
	condition:
		$0 at entrypoint
}
rule _eXPressorPacK_150X__CGSoftLabs_
{
	meta:
		description = "eXPressor.PacK 1.5.0.X -> CGSoftLabs"
	strings:
		$0 = {55 8B EC 81 EC ?? ?? ?? ?? 53 56 57 83 A5 ?? ?? ?? ?? ?? F3 EB 0C 65 58 50 72 2D 76 2E 31 2E 35 2E 00 83 7D 0C ?? 75 23 8B 45 08 A3 ?? ?? ?? ?? 6A 04 68 00 10 00 00 68 20 03 00 00 6A 00 FF 15 ?? ?? ?? ?? A3 ?? ?? ?? ?? EB 04}
	condition:
		$0 at entrypoint
}
rule _Inno_Setup_Module_
{
	meta:
		description = "Inno Setup Module"
	strings:
		$0 = {49 6E 6E 6F 53 65 74 75 70 4C 64 72 57 69 6E 64 6F 77 00 00 53 54 41 54 49 43}
		$1 = {55 8B EC 83 C4 ?? 53 56 57 33 C0 89 45 F0 89 45 ?? 89 45 ?? E8 ?? ?? FF FF E8 ?? ?? FF FF E8 ?? ?? FF FF E8 ?? ?? FF FF E8 ?? ?? FF FF}
	condition:
		$0 at entrypoint or $1
}
rule _VProtector_11A12__vcasm_
{
	meta:
		description = "VProtector 1.1A-1.2 -> vcasm"
	strings:
		$0 = {00 00 56 69 72 74 75 61 6C 41 6C 6C 6F 63 00 00 00 00 00 76 63 61 73 6D 5F 70 72 6F 74 65 63 74 5F 32 30 30 35 5F 33 5F 31 38 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 33 F6 E8 10 00 00 00 8B 64 24 08 64 8F 05 00 00 00 00 58 EB 13 C7 83 64 FF 35 00 00 00 00 64 89 25 00 00 00 00 AD CD 20 EB 01 0F 31 F0 EB 0C 33 C8 EB 03 EB 09 0F 59 74 05 75 F8 51 EB F1 B9 04 00 00 00 E8 1F 00 00 00 EB FA E8 16 00 00 00 E9 EB F8 00 00 58 EB 09 0F 25 E8 F2 FF FF FF 0F B9 49 75 F1 EB 05 EB F9 EB F0 D6 E8 07 00 00 00 C7 83 83 C0 13 EB 0B 58 EB 02 CD 20 83 C0 02 EB 01 E9 50 C3}
	condition:
		$0
}
rule _modified_HACKSTOP_v111f_
{
	meta:
		description = "modified HACKSTOP v1.11f"
	strings:
		$0 = {52 B4 30 CD 21 52 FA ?? FB 3D ?? ?? EB ?? CD 20 0E 1F B4 09 E8}
	condition:
		$0 at entrypoint
}
rule _NTkrnl_Secure_Suite_01015__NTkrnl_Software_
{
	meta:
		description = "NTkrnl Secure Suite 0.1-0.15 -> NTkrnl Software"
	strings:
		$0 = {00 00 00 00 00 00 00 00 00 00 00 00 34 10 00 00 28 10 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? 00 00 00 00 4B 65 72 6E 65 6C 33 32 2E 64 6C 6C 00 00 00 4C 6F 61 64 4C 69 62 72 61 72 79 41 00 00 00 47 65 74 50 72 6F 63 41 64 64 72 65 73 73 00 68 ?? ?? ?? ?? E8 01 00 00 00 C3 C3}
	condition:
		$0
}
rule _Armadillo_v3xx_
{
	meta:
		description = "Armadillo v3.xx"
	strings:
		$0 = {60 E8 ?? ?? ?? ?? 5D 50 51 EB 0F B9 EB 0F B8 EB 07 B9 EB 0F 90 EB 08 FD EB 0B F2 EB F5 EB F6 F2 EB 08 FD EB E9 F3 EB E4 FC E9 59 58}
	condition:
		$0 at entrypoint
}
rule _EXEStealth_275__WebtoolMaster_
{
	meta:
		description = "EXEStealth 2.75 -> WebtoolMaster"
	strings:
		$0 = {90 60 90 E8 00 00 00 00 5D 81 ED D1 27 40 00 B9 15 00 00 00}
	condition:
		$0 at entrypoint
}
rule _CipherWall_SelfExtratorDecryptor_Console_v15_
{
	meta:
		description = "CipherWall Self-Extrator/Decryptor (Console) v1.5"
	strings:
		$0 = {90 61 BE 00 10 42 00 8D BE 00 00 FE FF C7 87 C0 20 02 00 0B 6E 5B 9B 57 83 CD FF EB 0E 90 90 90 90 8A 06 46 88 07 47 01 DB 75 07 8B 1E 83 EE FC 11 DB 72 ED B8 01 00 00 00 01 DB 75 07 8B 1E 83 EE FC 11 DB 11 C0 01 DB 73 EF 75 09 8B 1E 83 EE FC 11 DB 73 E4}
	condition:
		$0 at entrypoint
}
rule _dUP2__diablo2oo2_
{
	meta:
		description = "dUP2 -> diablo2oo2"
	strings:
		$0 = {E8 ?? ?? ?? ?? E8 ?? ?? ?? ?? 8B F0 6A 00 68 ?? ?? ?? ?? 56 E8 ?? ?? ?? ?? A2 ?? ?? ?? ?? 6A 00 68 ?? ?? ?? ?? 56 E8 ?? ?? ?? ?? A2 ?? ?? ?? ?? 6A 00 68 ?? ?? ?? ?? 56 E8 ?? ?? ?? ?? A2 ?? ?? ?? ?? 68 ?? ?? ?? ?? 68 ?? ?? ?? ?? 56 E8 ?? ?? ?? ?? 3C 01 75 19 BE ?? ?? ?? ?? 68 00 02 00 00 56 68}
	condition:
		$0 at entrypoint
}
rule _Ionic_Wind_Software_
{
	meta:
		description = "Ionic Wind Software"
	strings:
		$0 = {9B DB E3 9B DB E2 D9 2D 00 ?? ?? 00 55 89 E5 E8}
	condition:
		$0 at entrypoint
}
rule _PE_Diminisher_V01__Teraphy_
{
	meta:
		description = "PE Diminisher V0.1 -> Teraphy"
	strings:
		$0 = {53 51 52 56 57 55 E8 00 00 00 00}
	condition:
		$0 at entrypoint
}
rule _FSG_v120_Eng__dulekxt__Microsoft_Visual_Cpp_60_
{
	meta:
		description = "FSG v1.20 (Eng) -> dulek/xt -> (Microsoft Visual C++ 6.0)"
	strings:
		$0 = {C1 E0 06 EB 02 CD 20 EB 01 27 EB 01 24 BE 80 ?? 42 00 49 EB 01 99 8D 1D F4 00 00 00 EB 01 5C F7 D8 1B CA EB 01 31 8A 16 80 E9 41 EB 01 C2 C1 E0 0A EB 01 A1 81 EA A8 8C 18 A1 34 46 E8 01 00 00 00 62 59 32 D3 C1 C9 02 EB 01 68 80 F2 1A 0F BE C9 F7 D1 2A D3}
	condition:
		$0 at entrypoint
}
rule _Private_exe_Protector_V18__SetiSoft_Team_
{
	meta:
		description = "Private exe Protector V1.8 -> SetiSoft Team"
	strings:
		$0 = {00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 4B 45 52 4E 45 4C 33 32 2E 44 4C 4C 00 ?? ?? ?? ?? 00 00 00 00 00 00 45 78 69 74 50 72 6F 63 65 73 73}
	condition:
		$0
}
rule _Software_Compress_V12___BG_Software_Protect_Technologies_
{
	meta:
		description = "Software Compress V1.2 ->  BG Software Protect Technologies"
	strings:
		$0 = {E9 BE 00 00 00 60 8B 74 24 24 8B 7C 24 28 FC B2 80 33 DB A4 B3 02 E8 6D 00 00}
	condition:
		$0 at entrypoint
}
rule _Setup2Go_Installer_Stub_
{
	meta:
		description = "Setup2Go Installer Stub"
	strings:
		$0 = {5B 53 45 54 55 50 5F 49 4E 46 4F 5D 0D 0A 56 65 72}
	condition:
		$0
}
rule _PseudoSigner_01_VOB_ProtectCD_5__Anorganix_
{
	meta:
		description = "PseudoSigner 0.1 [VOB ProtectCD 5] --> Anorganix"
	strings:
		$0 = {36 3E 26 8A C0 60 E8 00 00 00 00 E9}
	condition:
		$0 at entrypoint
}
rule _yzpack_V11__UsAr_
{
	meta:
		description = "yzpack V1.1 -> UsAr"
	strings:
		$0 = {60 33 C0 8D 48 07 50 E2 FD 8B EC 64 8B 40 30 78 0C 8B 40 0C 8B 70 1C AD 8B 40 08 EB 09 8B 40 34 8D 40 7C 8B 40 3C 89 45 04 E8 F3 07 00 00 60 8B 5D 04 8B 73 3C 8B 74 33 78 03 F3 56 8B 76 20 03 F3 33 C9 49 92 41 AD 03 C3 52 33 FF 0F B6 10 38 F2}
	condition:
		$0 at entrypoint
}
rule _Armadillo_v430__v440__Silicon_Realms_Toolworks_
{
	meta:
		description = "Armadillo v4.30 - v4.40 -> Silicon Realms Toolworks"
	strings:
		$0 = {55 8B EC 6A FF 68 40 ?? ?? 00 68 80 ?? ?? 00 64 A1 00 00 00 00 50 64 89 25 00 00 00 00 83 EC 58 53 56 57 89 65 E8 FF 15 88 ?? ?? 00 33 D2 8A D4 89 15 30 ?? ?? 00 8B C8 81 E1 FF 00 00 00 89 0D 2C ?? ?? 00 C1 E1 08 03 CA 89 0D 28 ?? ?? 00 C1 E8 10 A3 24}
		$1 = {60 E8 00 00 00 00 5D 50 51 0F CA F7 D2 9C F7 D2 0F CA EB 0F B9 EB 0F B8 EB 07 B9 EB 0F 90 EB 08 FD EB 0B F2 EB F5 EB F6 F2 EB 08 FD EB E9 F3 EB E4 FC E9 9D 0F C9 8B CA F7 D1 59 58 50 51 0F CA F7 D2 9C F7 D2 0F CA EB 0F B9 EB 0F B8 EB 07 B9 EB 0F 90 EB 08}
	condition:
		$0 at entrypoint or $1 at entrypoint
}
rule _PIRIT_v15_
{
	meta:
		description = "$PIRIT v1.5"
	strings:
		$0 = {B4 4D CD 21 E8 ?? ?? FD E8 ?? ?? B4 51 CD 21}
	condition:
		$0 at entrypoint
}
rule _Packman_0001__Bubbasoft_
{
	meta:
		description = "Packman 0.0.0.1 -> Bubbasoft"
	strings:
		$0 = {0F 85 ?? FF FF FF 8D B3 ?? ?? ?? ?? EB 3D 8B 46 0C 03 C3 50 FF 55 00 56 8B 36 0B F6 75 02 8B F7 03 F3 03 FB EB 1B D1 C1 D1 E9 73 05 0F B7 C9 EB 05 03 CB 8D 49 02 50 51 50 FF 55 04 AB 58 83 C6 04 8B 0E 85 C9 75 DF 5E 83 C6 14 8B 7E 10 85 FF 75 BC 8D 8B 00}
	condition:
		$0
}
rule _Armadillo_v177_
{
	meta:
		description = "Armadillo v1.77"
	strings:
		$0 = {55 8B EC 6A FF 68 B0 71 40 00 68 6C 37 40 00 64 A1 00 00 00 00 50 64 89 25 00 00 00 00 83 EC 58}
	condition:
		$0 at entrypoint
}
rule _Thinstall_Embedded_2312__Jitit_
{
	meta:
		description = "Thinstall Embedded 2.312 -> Jitit"
	strings:
		$0 = {6A 00 FF 15 ?? ?? ?? ?? E8 D4 F8 FF FF E9 E9 AD FF FF FF 8B C1 8B 4C 24 04 89 88 29 04 00 00 C7 40 0C 01 00 00 00 0F B6 49 01 D1 E9 89 48 10 C7 40 14 80 00 00 00 C2 04 00 8B 44 24 04 C7 41 0C 01 00 00 00 89 81 29 04 00 00 0F B6 40 01 D1 E8 89 41 10 C7 41 14 80 00 00 00 C2 04 00 55 8B EC 53 56 57 33 C0 33 FF 39 45 0C 8B F1 76 0C 8B 4D 08 03 3C 81 40 3B 45 0C 72 F4 8B CE E8 43 00 00 00 8B 46 14 33 D2 F7 F7 8B 5E 10 33 D2 8B F8 8B C3 F7 F7 89 7E 18 89 45 0C 33 C0 33 C9 8B 55 08 03 0C 82 40 39 4D 0C 73 F4 48 8B 14 82 2B CA 0F AF CF 2B D9 0F AF FA 89 7E 14 89 5E 10 5F 5E 5B 5D C2 08 00}
	condition:
		$0 at entrypoint
}
rule _CrypKey_V61X_DLL__CrypKey_Canada_Inc_
{
	meta:
		description = "CrypKey V6.1X DLL -> CrypKey (Canada) Inc."
	strings:
		$0 = {83 3D ?? ?? ?? ?? 00 75 34 68 ?? ?? ?? ?? E8}
	condition:
		$0 at entrypoint
}
rule _PECompact_v140b5__v140b6_
{
	meta:
		description = "PECompact v1.40b5 - v1.40b6"
	strings:
		$0 = {EB 06 68 ?? ?? ?? ?? C3 9C 60 E8 02 ?? ?? ?? 33 C0 8B C4 83 C0 04 93 8B E3 8B 5B FC 81 EB 0F A0 40 ?? 87 DD 8B 85 A6 A0 40 ?? 01 85 03 A0 40 ?? 66 C7 85 ?? A0 40 ?? 90 90 01 85 9E A0 40 ?? BB 8A 11}
	condition:
		$0 at entrypoint
}
rule _PECompact_v090_
{
	meta:
		description = "PECompact v0.90"
	strings:
		$0 = {EB 06 68 ?? ?? 40 00 C3 9C 60 BD ?? ?? 00 00 B9 02 00 00 00 B0 90 8D BD 7A 42 40 00 F3 AA 01 AD D9 43 40 00 FF B5}
	condition:
		$0 at entrypoint
}
rule _PseudoSigner_01_PENightMare_2_Beta__Anorganix_
{
	meta:
		description = "PseudoSigner 0.1 [PENightMare 2 Beta] --> Anorganix"
	strings:
		$0 = {60 E9 10 00 00 00 EF 40 03 A7 07 8F 07 1C 37 5D 43 A7 04 B9 2C 3A E9}
	condition:
		$0 at entrypoint
}
rule _PseudoSigner_02_CodeSafe_20__Anorganix_
{
	meta:
		description = "PseudoSigner 0.2 [CodeSafe 2.0] --> Anorganix"
	strings:
		$0 = {90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 EB 0B 83 EC 10 53 56 57 E8 C4 01 00 85}
	condition:
		$0 at entrypoint
}
rule _WWPACK_v300_v301_Relocations_pack_
{
	meta:
		description = "WWPACK v3.00, v3.01 (Relocations pack)"
	strings:
		$0 = {BE ?? ?? BA ?? ?? BF ?? ?? B9 ?? ?? 8C CD 8E DD 81 ED ?? ?? 06 06 8B DD 2B DA 8B D3 FC}
	condition:
		$0 at entrypoint
}
rule _FreeJoiner_153_Stub_engine_17__GlOFF_
{
	meta:
		description = "FreeJoiner 1.5.3 (Stub engine 1.7) -> GlOFF"
	strings:
		$0 = {E8 33 FD FF FF 50 E8 0D 00 00 00 CC FF 25 08 20 40 00 FF 25 0C 20 40 00 FF 25 10 20 40 00 FF 25 14 20 40 00 FF 25 18 20 40 00 FF 25 1C 20 40 00 FF 25 20 20 40 00 FF 25 24 20 40 00 FF 25 28 20 40 00 FF 25 00 20 40 00}
	condition:
		$0 at entrypoint
}
rule _MicroJoiner_17__coban2k_
{
	meta:
		description = "MicroJoiner 1.7 -> coban2k"
	strings:
		$0 = {BF 00 10 40 00 8D 5F 21 6A 0A 58 6A 04 59 60 57 E8 8E 00 00 00}
	condition:
		$0 at entrypoint
}
rule _UPX_072_
{
	meta:
		description = "UPX 0.72"
	strings:
		$0 = {60 E8 00 00 00 00 83 CD FF 31 DB 5E}
	condition:
		$0 at entrypoint
}
rule _MZ_Crypt_10__by_BrainSt0rm_
{
	meta:
		description = "MZ_Crypt 1.0 - by BrainSt0rm"
	strings:
		$0 = {60 E8 00 00 00 00 5D 81 ED 25 14 40 00 8B BD 77 14 40 00 8B 8D 7F 14 40 00 EB 28 83 7F 1C 07 75 1E 8B 77 0C 03 B5 7B 14 40 00 33 C0 EB 0C 50 8A A5 83 14 40 00 30 26 58 40 46 3B 47 10 76 EF 83 C7 28 49 0B C9 75 D4 8B 85 73 14 40 00 89 44 24 1C 61 FF E0}
	condition:
		$0
}
rule _Nullsoft_Install_System_v20b4_
{
	meta:
		description = "Nullsoft Install System v2.0b4"
	strings:
		$0 = {83 EC 10 53 55 56 57 C7 44 24 14 F0 91 40 00 33 ED C6 44 24 13 20 FF 15 2C 70 40 00 55 FF 15 88 72 40 00 BE 00 D4 42 00 BF 00 04 00 00 56 57 A3 60 6F 42 00 FF 15 C4 70 40 00 E8 9F FF FF FF 8B 1D 90 70 40 00 85 C0 75 21 68 FB 03 00 00 56 FF 15 60 71 40 00}
		$1 = {83 EC 14 83 64 24 04 00 53 55 56 57 C6 44 24 13 20 FF 15 30 70 40 00 BE 00 20 7A 00 BD 00 04 00 00 56 55 FF 15 C4 70 40 00 56 E8 7D 2B 00 00 8B 1D 8C 70 40 00 6A 00 56 FF D3 BF 80 92 79 00 56 57 E8 15 26 00 00 85 C0 75 38 68 F8 91 40 00 55 56 FF 15 60 71}
	condition:
		$0 or $1
}
rule _ExeBundle_v30_standard_loader_
{
	meta:
		description = "ExeBundle v3.0 (standard loader)"
	strings:
		$0 = {00 00 00 00 60 BE 00 B0 42 00 8D BE 00 60 FD FF C7 87 B0 E4 02 00 31 3C 4B DF 57 83 CD FF EB 0E 90 90 90 90 8A 06 46 88 07 47 01 DB 75 07 8B 1E 83 EE FC 11 DB 72 ED B8 01 00 00 00 01 DB}
	condition:
		$0 at entrypoint
}
rule _FucknJoy_v10c__UsAr_
{
	meta:
		description = "Fuck'n'Joy v1.0c -> UsAr"
	strings:
		$0 = {60 E8 00 00 00 00 5D 81 ED D8 05 40 00 FF 74 24 20 E8 8C 02 00 00 0B C0 0F 84 2C 01 00 00 89 85 6C 08 40 00 8D 85 2F 08 40 00 50 FF B5 6C 08 40 00 E8 EF 02 00 00 0B C0 0F 84 0C 01 00 00 89 85 3B 08 40 00 8D 85 3F 08 40 00 50 FF B5 6C 08 40 00 E8 CF 02 00}
		$1 = {60 E8 00 00 00 00 5D 81 ED D8 05 40 00 FF 74 24 20 E8 8C 02 00 00 0B C0 0F 84 2C 01 00 00 89 85 6C 08 40 00 8D 85 2F 08 40 00 50 FF B5 6C 08 40 00 E8 EF 02 00 00 0B C0 0F 84 0C 01 00 00 89 85 3B 08 40 00 8D 85 3F 08 40 00 50 FF B5 6C 08 40 00 E8 CF 02 00 00 0B C0 0F 84 EC 00 00 00 89 85 4D 08 40 00 8D 85 51 08 40 00 50 FF B5 6C 08 40 00 E8 AF 02 00 00 0B C0 0F 84 CC 00 00 00 89 85 5C 08 40 00 8D 85 67 07 40 00 E8 7B 02 00 00 8D B5 C4 07 40 00 56 6A 64 FF 95 74 07 40 00 46 80 3E 00 75 FA C7 06 74 6D 70 2E 83 C6 04 C7 06 65 78 65 00 8D 85 36 07 40 00 E8 4C 02 00 00 33 DB 53 53 6A 02 53 53 68 00 00 00 40 8D 85 C4 07 40 00 50 FF 95 74 07 40 00 89 85 78 07 40 00 8D 85 51 07 40 00 E8 21 02 00 00 6A 00 8D 85 7C 07 40 00 50 68 00 ?? ?? 00 8D 85 F2 09 40 00 50 FF}
	condition:
		$0 at entrypoint or $1 at entrypoint
}
rule _Upack_012_betaDwing_
{
	meta:
		description = "Upack 0.12 beta-->Dwing"
	strings:
		$0 = {BE 48 01 40 00 AD ?? ?? ?? A5 ?? C0 33 C9 ?? ?? ?? ?? ?? ?? ?? F3 AB ?? ?? 0A ?? ?? ?? ?? AD 50 97 51 ?? 87 F5 58 8D 54 86 5C ?? D5 72 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? B6 5F FF C1}
	condition:
		$0 at entrypoint
}
rule _PseudoSigner_02_BJFNT_12__Anorganix_
{
	meta:
		description = "PseudoSigner 0.2 [.BJFNT 1.2] --> Anorganix"
	strings:
		$0 = {EB 02 69 B1 83 EC 04 EB 03 CD 20 EB EB 01 EB 9C EB 01 EB EB 00}
	condition:
		$0 at entrypoint
}
rule _MEW_10_by_Northfox_
{
	meta:
		description = "MEW 10 by Northfox"
	strings:
		$0 = {33 C0 E9 ?? ?? FF FF ?? 1C ?? ?? 40}
	condition:
		$0
}
rule _Werus_Crypter_10__by_Kas_
{
	meta:
		description = "Werus Crypter 1.0 - by Kas"
	strings:
		$0 = {BB E8 12 40 00 80 33 05 E9 7D FF FF FF}
	condition:
		$0 at entrypoint
}
rule _PEBundle_v244_
{
	meta:
		description = "PEBundle v2.44"
	strings:
		$0 = {9C 60 E8 02 ?? ?? ?? 33 C0 8B C4 83 C0 04 93 8B E3 8B 5B FC 81 EB ?? ?? 40 ?? 87 DD 83 BD}
	condition:
		$0 at entrypoint
}
rule _PseudoSigner_02_Borland_Cpp_1999__Anorganix_
{
	meta:
		description = "PseudoSigner 0.2 [Borland C++ 1999] --> Anorganix"
	strings:
		$0 = {EB 10 66 62 3A 43 2B 2B 48 4F 4F 4B 90 E9 90 90 90 90 A1 ?? ?? ?? ?? A3}
	condition:
		$0 at entrypoint
}
rule _FSG_v133_
{
	meta:
		description = "FSG v1.33"
	strings:
		$0 = {BE A4 01 40 00 AD 93 AD 97 AD 56 96 B2 80 A4 B6 80 FF 13 73}
	condition:
		$0 at entrypoint
}
rule _EXELOCK_666_15_
{
	meta:
		description = "EXELOCK 666 1.5"
	strings:
		$0 = {BA ?? ?? BF ?? ?? EB ?? EA ?? ?? ?? ?? 79 ?? 7F ?? 7E ?? 1C ?? 48 78 ?? E3 ?? 45 14 ?? 5A E9}
	condition:
		$0 at entrypoint
}
rule _RLPack_11_BasicEdition__ap0x_
{
	meta:
		description = "RLPack 1.1 BasicEdition -> ap0x"
	strings:
		$0 = {60 E8 00 00 00 00 8B 2C 24 83 C4 04 8D B5 4A 02 00 00 8D 9D 11 01 00 00 33 FF EB 0F FF 74 37 04 FF 34 37 FF D3 83 C4 08 83 C7 08 83 3C 37 00 75 EB 8D 74 37 04 53 6A 40 68 00 10 00 00 68}
	condition:
		$0 at entrypoint
}
rule _PECompact_v126b1__v126b2_
{
	meta:
		description = "PECompact v1.26b1 - v1.26b2"
	strings:
		$0 = {EB 06 68 ?? ?? ?? ?? C3 9C 60 E8 02 ?? ?? ?? 33 C0 8B C4 83 C0 04 93 8B E3 8B 5B FC 81 EB 0F 70 40 ?? 87 DD 8B 85 A6 70 40 ?? 01 85 03 70 40 ?? 66 C7 85 70 40 90 ?? 90 01 85 9E 70 40 BB ?? 05 0E}
	condition:
		$0 at entrypoint
}
rule _NeoLite_v200_
{
	meta:
		description = "NeoLite v2.00"
	strings:
		$0 = {8B 44 24 04 23 05 ?? ?? ?? ?? 50 E8 ?? ?? ?? ?? 83 C4 04 FE 05 ?? ?? ?? ?? 0B C0 74}
	condition:
		$0 at entrypoint
}
rule _PECompact_v110b1_
{
	meta:
		description = "PECompact v1.10b1"
	strings:
		$0 = {EB 06 68 ?? ?? ?? ?? C3 9C 60 E8 02 ?? ?? ?? 33 C0 8B C4 83 C0 04 93 8B E3 8B 5B FC 81 EB 28 63 40 ?? 87 DD 8B 85 AD 63}
	condition:
		$0 at entrypoint
}
rule _Armadillo_v285_
{
	meta:
		description = "Armadillo v2.85"
	strings:
		$0 = {55 8B EC 6A FF 68 68 ?? ?? ?? 68 ?? ?? ?? ?? 64 A1 ?? ?? ?? ?? 50 64 89 25 ?? ?? ?? ?? 83 EC 58 53 56 57 89 65 E8 FF 15 28 ?? ?? ?? 33 D2 8A D4 89 15 24}
	condition:
		$0 at entrypoint
}
rule _RLPack_V111__ap0x_
{
	meta:
		description = "RLPack V1.11 -> ap0x"
	strings:
		$0 = {60 E8 00 00 00 00 8B 2C 24 83 C4 04 8D B5 4A 02 00 00 8D 9D 11 01 00 00 33 FF EB 0F FF 74 37 04 FF 34 37 FF D3 83 C4 08 83 C7 08 83 3C 37 00 75 EB}
	condition:
		$0 at entrypoint
}
rule _EZIP_v10_
{
	meta:
		description = "EZIP v1.0"
	strings:
		$0 = {E9 19 32 00 00 E9 7C 2A 00 00 E9 19 24 00 00 E9 FF 23 00 00 E9 1E 2E 00 00 E9 88 2E 00 00 E9 2C}
	condition:
		$0 at entrypoint
}
rule _PseudoSigner_01_Armadillo_300__Anorganix_
{
	meta:
		description = "PseudoSigner 0.1 [Armadillo 3.00] --> Anorganix"
	strings:
		$0 = {60 E8 2A 00 00 00 5D 50 51 EB 0F B9 EB 0F B8 EB 07 B9 EB 0F 90 EB 08 FD EB 0B F2 EB F5 EB F6 F2 EB 08 FD EB E9 F3 EB E4 FC E9 59 58 50 51 EB 85 E9}
	condition:
		$0 at entrypoint
}
rule _DBPE_v210_
{
	meta:
		description = "DBPE v2.10"
	strings:
		$0 = {9C 6A 10 73 0B EB 02 C1 51 E8 06 ?? ?? ?? C4 11 73 F7 5B CD 83 C4 04 EB 02 99 EB FF 0C 24 71 01 E8 79 E0 7A 01 75 83 C4 04 9D EB 01 75 68 5F 20 40 ?? E8 B0 EF FF FF 72 03 73 01 75 BE}
	condition:
		$0 at entrypoint
}
rule _Armadillo_v275a_
{
	meta:
		description = "Armadillo v2.75a"
	strings:
		$0 = {55 8B EC 6A FF 68 68 ?? ?? ?? 68 D0 ?? ?? ?? 64 A1 ?? ?? ?? ?? 50 64 89 25 ?? ?? ?? ?? 83 EC 58 53 56 57 89 65 E8 FF 15 28 ?? ?? ?? 33 D2 8A D4 89 15 24}
	condition:
		$0 at entrypoint
}
rule _Armadillo_v252_
{
	meta:
		description = "Armadillo v2.52"
	strings:
		$0 = {55 8B EC 6A FF 68 ?? ?? ?? ?? E0 ?? ?? ?? ?? 68 D4 64 A1 00 00 00 00 50 64 89 25 00 00 00 00 83 EC 58 53 56 57 89 65 E8 FF ?? ?? ?? 15 38}
		$1 = {55 8B EC 6A FF 68 E0 ?? ?? ?? 68 D4 ?? ?? ?? 64 A1 ?? ?? ?? ?? 50 64 89 25 ?? ?? ?? ?? 83 EC 58 53 56 57 89 65 E8 FF 15 38}
	condition:
		$0 at entrypoint or $1 at entrypoint
}
rule _Thinstall_Virtualization_Suite_30493080__Thinstall_Company_
{
	meta:
		description = "Thinstall Virtualization Suite 3.049-3.080 -> Thinstall Company"
	strings:
		$0 = {9C 60 68 53 74 41 6C 68 54 68 49 6E E8 00 00 00 00 58 BB 37 1F 00 00 2B C3 50 68 ?? ?? ?? ?? 68 00 2C 00 00 68 04 01 00 00 E8 BA FE FF FF E9 90 FF FF FF CC CC CC CC CC CC CC 55 8B EC 83 C4 F4 FC 53 57 56 8B 75 08 8B 7D 0C C7 45 FC 08 00 00 00 33 DB BA 00}
		$1 = {9C 60 68 53 74 41 6C 68 54 68 49 6E E8 00 00 00 00 58 BB 37 1F 00 00 2B C3 50 68 ?? ?? ?? ?? 68 00 2C 00 00 68 04 01 00 00 E8 BA FE FF FF E9 90 FF FF FF CC CC CC CC CC CC CC 55 8B EC 83 C4 F4 FC 53 57 56 8B 75 08 8B 7D 0C C7 45 FC 08 00 00 00 33 DB BA 00 00 00 80 43 33 C0 E8 19 01 00 00 73 0E 8B 4D F8 E8 27 01 00 00 02 45 F7 AA EB E9 E8 04 01 00 00 0F 82 96 00 00 00 E8 F9 00 00 00 73 5B B9 04 00 00 00 E8 05 01 00 00 48 74 DE 0F 89 C6 00 00 00 E8 DF 00 00 00 73 1B 55 BD 00 01 00 00 E8 DF 00 00 00 88 07 47 4D 75 F5 E8 C7 00 00 00 72 E9 5D EB}
	condition:
		$0 at entrypoint or $1 at entrypoint
}
rule _Vx_Predator2448_
{
	meta:
		description = "Vx: Predator.2448"
	strings:
		$0 = {0E 1F BF ?? ?? B8 ?? ?? B9 ?? ?? 49 ?? ?? ?? ?? 2A C1 4F 4F ?? ?? F9 CC}
	condition:
		$0 at entrypoint
}
rule _CrypKey_V56X_DLL__Kenonic_Controls_Ltd_
{
	meta:
		description = "CrypKey V5.6.X DLL -> Kenonic Controls Ltd."
	strings:
		$0 = {8B 1D ?? ?? ?? ?? 83 FB 00 75 0A E8 ?? ?? ?? ?? E8}
	condition:
		$0 at entrypoint
}
rule _Escargot_01_final__ppMeat_
{
	meta:
		description = "Escargot 0.1 (final) -> ++Meat"
	strings:
		$0 = {EB 04 40 30 2E 31 60 68 61 ?? ?? ?? 64 FF 35 00 00 00 00 64 89 25 00 00 00 00 B8 92 ?? ?? ?? 8B 00 FF D0 50 B8 CD ?? ?? ?? 81 38 DE C0 37 13 75 2D 68 C9 ?? ?? ?? 6A 40 68 00 ?? 00 00 68 00 00 ?? ?? B8 96 ?? ?? ?? 8B 00 FF D0 8B 44 24 F0 8B 4C 24 F4 EB 05 49 C6 04 01 40 0B C9 75 F7 BE 00 10 ?? ?? B9 00 ?? ?? 00 EB 05 49 80 34 31 40 0B C9 75 F7 58 0B C0 74 08 33 C0 C7 00 DE C0 AD 0B BE ?? ?? ?? ?? E9 AC 00 00 00 8B 46 0C BB 00 00 ?? ?? 03 C3 50 50}
	condition:
		$0 at entrypoint
}
rule _PEtite_v14_
{
	meta:
		description = "PEtite v1.4"
	strings:
		$0 = {66 9C 60 50 8B D8 03 ?? 68 54 BC ?? ?? 6A ?? FF 50 14 8B CC}
		$1 = {66 9C 60 50 8B D8 03 00 68 54 BC 00 00 6A 00 FF 50 14 8B CC}
	condition:
		$0 at entrypoint or $1 at entrypoint
}
rule _ExeBundle_v30_small_loader_
{
	meta:
		description = "ExeBundle v3.0 (small loader)"
	strings:
		$0 = {00 00 00 00 60 BE 00 F0 40 00 8D BE 00 20 FF FF 57 83 CD FF EB 10 90 90 90 90 90 90 8A 06 46 88 07 47 01 DB 75 07 8B 1E 83 EE FC 11 DB 72 ED B8 01 00 00 00 01 DB 75 07 8B 1E 83 EE FC 11}
	condition:
		$0 at entrypoint
}
rule _Themida_18xx__Oreans_Technologies_
{
	meta:
		description = "Themida 1.8.x.x -> Oreans Technologies"
	strings:
		$0 = {B8 ?? ?? ?? ?? 60 0B C0 74 68 E8 00 00 00 00 58 05 53 00 00 00 80 38 E9 75 13 61 EB 45 DB 2D 37 ?? ?? ?? FF FF FF FF FF FF FF FF 3D 40 E8 00 00 00 00 58 25 00 F0 FF FF 33 FF 66 BB 19 5A 66 83 C3 34 66 39 18 75 12 0F B7 50 3C 03 D0 BB E9 44 00 00 83 C3 67}
		$1 = {B8 ?? ?? ?? ?? 60 0B C0 74 68 E8 00 00 00 00 58 05 53 00 00 00 80 38 E9 75 13 61 EB 45 DB 2D 37 ?? ?? ?? FF FF FF FF FF FF FF FF 3D 40 E8 00 00 00 00 58 25 00 F0 FF FF 33 FF 66 BB 19 5A 66 83 C3 34 66 39 18 75 12 0F B7 50 3C 03 D0 BB E9 44 00 00 83 C3 67 39 1A 74 07 2D 00 10 00 00 EB DA 8B F8 B8 ?? ?? ?? ?? 03 C7 B9 ?? ?? ?? ?? 03 CF EB 0A B8 ?? ?? ?? ?? B9 ?? ?? ?? ?? 50 51 E8 84 00 00 00 E8 00 00 00 00 58 2D 26 00 00 00 B9 EF 01 00 00 C6 00 E9 83 E9 05 89 48 01 61 E9}
	condition:
		$0 at entrypoint or $1 at entrypoint
}
rule _Armadillo_v200b2200b3_
{
	meta:
		description = "Armadillo v2.00b2-2.00b3"
	strings:
		$0 = {55 8B EC 6A FF 68 00 F2 40 00 68 C4 A0 40 00 64 A1 00 00 00 00 50 64 89 25 00 00 00 00 83 EC 58}
	condition:
		$0 at entrypoint
}
rule _Obsidium_V12__Obsidium_Software_
{
	meta:
		description = "Obsidium V1.2 -> Obsidium Software"
	strings:
		$0 = {EB 02 ?? ?? E8 77 1E 00 00}
	condition:
		$0 at entrypoint
}
rule _SoftProtect__wwwsoftprotectbyru_
{
	meta:
		description = "SoftProtect -> www.softprotect.by.ru"
	strings:
		$0 = {E8 ?? ?? ?? ?? 8D ?? ?? ?? ?? ?? C7 00 00 00 00 00 E8 ?? ?? ?? ?? E8 ?? ?? ?? ?? 8D ?? ?? ?? ?? ?? 50 E8 ?? ?? ?? ?? 83 ?? ?? ?? ?? ?? 01}
	condition:
		$0 at entrypoint
}
rule _EXECryptor_239_DLL_minimum_protection_
{
	meta:
		description = "EXECryptor 2.3.9 DLL (minimum protection)"
	strings:
		$0 = {51 68 ?? ?? ?? ?? 87 2C 24 8B CD 5D 81 E1 ?? ?? ?? ?? E9 ?? ?? ?? 00 89 45 F8 51 68 ?? ?? ?? ?? 59 81 F1 ?? ?? ?? ?? 0B 0D ?? ?? ?? ?? 81 E9 ?? ?? ?? ?? E9 ?? ?? ?? 00 81 C2 ?? ?? ?? ?? E8 ?? ?? ?? 00 87 0C 24 59 51 64 8B 05 30 00 00 00 8B 40 0C 8B 40 0C E9 ?? ?? ?? 00 F7 D6 2B D5 E9 ?? ?? ?? 00 87 3C 24 8B CF 5F 87 14 24 1B CA E9 ?? ?? ?? 00 83 C4 08 68 ?? ?? ?? ?? E9 ?? ?? ?? 00 C3 E9 ?? ?? ?? 00 E9 ?? ?? ?? 00 50 8B C5 87 04 24 8B EC 51 0F 88 ?? ?? ?? 00 FF 05 ?? ?? ?? ?? E9 ?? ?? ?? 00 87 0C 24 59 99 03 04 24 E9 ?? ?? ?? 00 C3 81 D5 ?? ?? ?? ?? 9C E9 ?? ?? ?? 00 81 FA ?? ?? ?? ?? E9 ?? ?? ?? 00 C1 C3 15 81 CB ?? ?? ?? ?? 81 F3 ?? ?? ?? ?? 81 C3 ?? ?? ?? ?? 87}
	condition:
		$0 at entrypoint
}
rule _PEArmor_046__Hying_
{
	meta:
		description = "PE-Armor 0.46 -> Hying"
	strings:
		$0 = {E8 AA 00 00 00 2D ?? ?? 00 00 00 00 00 00 00 00 00 3D ?? ?? 00 2D ?? ?? 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 4B ?? ?? 00 5C ?? ?? 00 6F ?? ?? 00 00 00 00 00 4B 45 52 4E 45 4C 33 32 2E 64 6C 6C 00 00 00 00 47 65 74 50 72 6F 63 41 64 64 72 65 73 73 00 00 00 47 65 74 4D 6F 64 75 6C 65 48 61 6E 64 6C 65 41 00 00 00 4C 6F 61 64 4C 69 62 72 61 72 79 41}
		$1 = {E8 AA 00 00 00 2D ?? ?? ?? 00 00 00 00 00 00 00 00 3D}
	condition:
		$0 at entrypoint or $1 at entrypoint
}
rule _PESpin_V071__cyberbob_
{
	meta:
		description = "PESpin V0.71 -> cyberbob"
	strings:
		$0 = {EB 01 68 60 E8 00 00 00 00 8B 1C 24 83 C3 12 81 2B E8 B1 06 00 FE 4B FD 82 2C 24 83 D5 46 00 0B E4 74 9E}
	condition:
		$0 at entrypoint
}
rule _Vx_Backfont900_
{
	meta:
		description = "Vx: Backfont.900"
	strings:
		$0 = {E8 ?? ?? B4 30 CD 21 3C 03 ?? ?? B8 ?? ?? BA ?? ?? CD 21 81 FA ?? ?? ?? ?? BA ?? ?? 8C C0 48 8E C0 8E D8 80 ?? ?? ?? 5A ?? ?? 03 ?? ?? ?? 40 8E D8 80 ?? ?? ?? 5A ?? ?? 83}
	condition:
		$0 at entrypoint
}
rule _Metrowerks_CodeWarrior_v20_GUI_
{
	meta:
		description = "Metrowerks CodeWarrior v2.0 (GUI)"
	strings:
		$0 = {55 89 E5 53 56 83 EC 44 55 B8 FF FF FF FF 50 50 68 ?? ?? 40 00 64 FF 35 00 00 00 00 64 89 25 00 00 00 00 68 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? E8 ?? ?? 00 00 E8 ?? ?? 00 00 E8}
	condition:
		$0
}
rule _EP_ExE_Pack_V10__Elite_Coding_Group_
{
	meta:
		description = "!EP (ExE Pack) V1.0 -> Elite Coding Group"
	strings:
		$0 = {60 68 ?? ?? ?? ?? B8 ?? ?? ?? ?? FF 10}
	condition:
		$0 at entrypoint
}
rule _PENightMare_2_Beta_
{
	meta:
		description = "PENightMare 2 Beta"
	strings:
		$0 = {60 E9 ?? ?? ?? ?? EF 40 03 A7 07 8F 07 1C 37 5D 43 A7 04 B9 2C 3A}
	condition:
		$0 at entrypoint
}
rule _PseudoSigner_02_XCR_011__Anorganix_
{
	meta:
		description = "PseudoSigner 0.2 [XCR 0.11] --> Anorganix"
	strings:
		$0 = {60 8B F0 33 DB 83 C3 01 83 C0 01}
	condition:
		$0 at entrypoint
}
rule _PC_Shrinker_v029_
{
	meta:
		description = "PC Shrinker v0.29"
	strings:
		$0 = {BD ?? ?? ?? ?? 01 AD 55 39 40 ?? 8D B5 35 39 40}
	condition:
		$0 at entrypoint
}
rule _AHTeam_EP_Protector_03_fake_Spalsher_1x3x__FEUERRADER_
{
	meta:
		description = "AHTeam EP Protector 0.3 (fake Spalsher 1.x-3.x) -> FEUERRADER"
	strings:
		$0 = {90 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 90 FF E0 9C 60 8B 44 24 24 E8 00 00 00 00 5D 81 ED 00 00 00 00 50 E8 ED 02 00 00 8C C0 0F 84}
	condition:
		$0 at entrypoint
}
rule _PEEncrypt_v40b_JunkCode_
{
	meta:
		description = "PEEncrypt v4.0b (JunkCode)"
	strings:
		$0 = {66 ?? ?? 00 66 83 ?? 00}
	condition:
		$0 at entrypoint
}
rule _RLPack_Full_Edition_V11X__ap0x_
{
	meta:
		description = "RLPack Full Edition V1.1X -> ap0x"
	strings:
		$0 = {00 00 00 00 00 00 00 00 00 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 6B 65 72 6E 65 6C 33 32 2E 64 6C 6C 00 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 00 00 00 00 00 00 4C 6F 61 64 4C 69 62 72 61 72 79 41 00 00 47 65 74 50 72 6F 63 41 64 64 72 65 73 73 00 00 56 69 72 74 75 61 6C 41 6C 6C 6F 63 00 00 56 69 72 74 75 61 6C 46 72 65 65 00 00 56 69 72 74 75 61 6C 50 72 6F 74 65 63 74 00 00 47 65 74 4D 6F 64 75 6C 65 48 61 6E 64 6C 65 41 00 00 00 10}
	condition:
		$0
}
rule _PECompact_v25_Retail__Bitsum_Technologies_
{
	meta:
		description = "PECompact v2.5 Retail -> Bitsum Technologies"
	strings:
		$0 = {B8 ?? ?? ?? 01 50 64 FF 35 00 00 00 00 64 89 25 00 00 00 00 33 C0 89 08 50 45 43 6F 6D 70 61 63 74 32 00}
	condition:
		$0 at entrypoint
}
rule _CrypKey_V56X__Kenonic_Controls_Ltd_
{
	meta:
		description = "CrypKey V5.6.X -> Kenonic Controls Ltd."
	strings:
		$0 = {E8 ?? ?? ?? ?? E8 ?? ?? ?? ?? 83 F8 00 75 07 6A 00 E8}
	condition:
		$0 at entrypoint
}
rule _ARM_Protector_v02_SMoKE_
{
	meta:
		description = "ARM Protector v0.2-> SMoKE"
	strings:
		$0 = {E8 04 00 00 00 83 60 EB 0C 5D EB 05 45 55 EB 04 B8 EB F9 00 C3 E8 00 00 00 00 5D EB 01 00 81 ED 09 20 40 00 EB 02 83 09 8D B5 9A 20 40 00 EB 02 83 09 BA 0B 12 00 00 EB 01 00 8D 8D A5 32 40 00}
	condition:
		$0 at entrypoint
}
rule _Vx_Trivial46_
{
	meta:
		description = "Vx: Trivial.46"
	strings:
		$0 = {B4 4E B1 20 BA ?? ?? CD 21 BA ?? ?? B8 ?? 3D CD 21}
	condition:
		$0 at entrypoint
}
rule _HACKSTOP_v113_
{
	meta:
		description = "HACKSTOP v1.13"
	strings:
		$0 = {52 B8 ?? ?? 1E CD 21 86 E0 3D ?? ?? 73 ?? CD 20 0E 1F B4 09 E8 ?? ?? 24 ?? EA}
	condition:
		$0 at entrypoint
}
rule _ExeShield_Protector_V36__wwwexeshieldcom_
{
	meta:
		description = "ExeShield Protector V3.6 -> www.exeshield.com"
	strings:
		$0 = {B8 ?? ?? ?? 00 50 64 FF 35 00 00 00 00 64 89 25 00 00 00 00 33 C0 89 08 50 45 43 6F 6D 70 61 63 74 32 00 CE 1E 42 AF F8 D6 CC}
	condition:
		$0 at entrypoint
}
rule _FreeJoiner_Small_build_014021024027__GlOFF_
{
	meta:
		description = "FreeJoiner Small (build 014-021/024-027) -> GlOFF"
	strings:
		$0 = {E8 ?? ?? FF FF 6A 00 E8 0D 00 00 00 CC FF 25 78 10 40 00 FF 25 7C 10 40 00 FF 25 80 10 40 00 FF 25 84 10 40 00 FF 25 88 10 40 00 FF 25 8C 10 40 00 FF 25 90 10 40 00 FF 25 94 10 40 00 FF 25 98 10 40 00 FF 25 9C 10 40 00 FF 25 A0 10 40 00 FF 25 A4 10 40 00 FF 25 AC 10 40 00}
	condition:
		$0 at entrypoint
}
rule _Armadillo_v260c_
{
	meta:
		description = "Armadillo v2.60c"
	strings:
		$0 = {55 8B EC 6A FF 68 40 ?? ?? ?? 68 F4 ?? ?? ?? 64 A1 ?? ?? ?? ?? 50 64 89 25 ?? ?? ?? ?? 83 EC 58 53 56 57 89 65 E8 FF 15 6C ?? ?? ?? 33 D2 8A D4 89 15 F4}
	condition:
		$0 at entrypoint
}
rule _PseudoSigner_02_VBOX_43_MTE__Anorganix_
{
	meta:
		description = "PseudoSigner 0.2 [VBOX 4.3 MTE] --> Anorganix"
	strings:
		$0 = {0B C0 0B C0 0B C0 0B C0 0B C0 0B C0 0B C0 0B C0}
	condition:
		$0 at entrypoint
}
rule _Celsius_Crypt_21__Z3r0_
{
	meta:
		description = "Celsius Crypt 2.1 -> Z3r0"
	strings:
		$0 = {55 89 E5 83 EC 08 C7 04 24 01 00 00 00 FF 15 84 92 44 00 E8 C8 FE FF FF 90 8D B4 26 00 00 00 00 55 89 E5 83 EC 08 C7 04 24 02 00 00 00 FF 15 84 92 44 00 E8 A8 FE FF FF 90 8D B4 26 00 00 00 00 55 8B 0D C4 92 44 00 89 E5 5D FF E1 8D 74 26 00 55 8B 0D AC 92 44 00 89 E5 5D FF E1 90 90 90 90 55 89 E5 5D E9 77 C2 00 00 90 90 90 90 90 90 90 55 89 E5 83 EC 28 8B 45 10 89 04 24 E8 3F 14 01 00 48 89 45 FC 8B 45 0C 48 89 45 F4 8D 45 F4 89 44 24 04 8D 45 FC 89 04 24 E8 12 A3 03 00 8B 00 89 45 F8 8B 45 FC 89 45 F0 C6 45 EF 01 C7 45 E8 00 00 00 00 8B 45 E8 3B 45 F8 73 39 80 7D EF 00 74 33 8B 45 F0 89 44 24 04 8B 45 10 89 04 24 E8 1C 1A 01 00 89 C1 8B 45 08 8B 55 E8 01 C2 0F B6 01 3A 02 0F 94 C0 88 45 EF 8D 45 F0 FF 08 8D 45 E8 FF 00 EB BF 83 7D F0 00 74 34 80 7D EF 00 74 2E 8B 45 F0 89 44 24 04 8B 45 10 89 04 24 E8 DD 19 01 00 89 C1 8B 45 08 8B 55 F8 01 C2 0F B6 01 3A 02 0F 94 C0 88 45 EF 8D 45 F0 FF 08 EB C6 C7 44 24 04 00 00 00 00 8B 45 10 89 04 24 E8 AE 19 01 00 89 C1 8B 45 08 8B 55 F8 01 C2 0F B6 01 3A 02 7F 0C 0F B6 45 EF 83 E0 01 88 45 E7 EB 04 C6 45 E7 00 0F B6 45 E7 88 45 EF 0F B6 45 EF C9 C3}
		$1 = {55 89 E5 83 EC 28 8B 45 10 89 04 24 E8 3F 14 01 00 48 89 45 FC 8B 45 0C 48 89 45 F4 8D 45 F4 89 44 24 04 8D 45 FC 89 04 24 E8 12 A3 03 00 8B 00 89 45 F8 8B 45 FC 89 45 F0 C6 45 EF 01 C7 45 E8 00 00 00 00 8B 45 E8 3B 45 F8 73 39 80 7D EF 00 74 33 8B 45 F0 89 44 24 04 8B 45 10 89 04 24 E8 1C 1A 01 00 89 C1 8B 45 08 8B 55 E8 01 C2 0F B6 01 3A 02 0F 94 C0 88 45 EF 8D 45 F0 FF 08 8D 45 E8 FF 00 EB BF 83 7D F0 00 74 34 80 7D EF 00 74 2E 8B 45 F0 89 44 24 04 8B 45 10 89 04 24 E8 DD 19 01 00 89 C1 8B 45 08 8B 55 F8 01 C2 0F B6 01 3A 02 0F 94 C0 88 45 EF 8D 45 F0 FF 08 EB C6 C7 44 24 04 00 00 00 00 8B 45 10 89 04 24 E8 AE 19 01 00 89 C1 8B 45 08 8B 55 F8 01 C2 0F B6 01 3A 02 7F 0C 0F B6 45 EF 83 E0 01 88 45 E7 EB 04 C6 45 E7 00 0F B6 45 E7 88 45 EF 0F B6 45 EF C9 C3}
	condition:
		$0 at entrypoint or $1
}
rule _Upack_010__012_beta__Dwing_
{
	meta:
		description = "Upack 0.10 - 0.12 beta -> Dwing"
	strings:
		$0 = {BE 48 01 40 00 AD 8B F8 95 A5 33 C0 33 C9 AB 48 AB F7 D8 B1 04 F3 AB C1 E0 0A B5 ?? F3 AB AD 50 97 51 AD 87 F5 58 8D 54 86 5C FF D5 72 5A 2C 03 73 02 B0 00 3C 07 72 02 2C 03 50 0F B6 5F FF C1}
	condition:
		$0 at entrypoint
}
rule _ASPack_v211d__Alexey_Solodovnikov_
{
	meta:
		description = "ASPack v2.11d -> Alexey Solodovnikov"
	strings:
		$0 = {60 E8 02 00 00 00 EB 09 5D 55}
	condition:
		$0 at entrypoint
}
rule _DzA_Patcher_v13_Loader_
{
	meta:
		description = "DzA Patcher v1.3 Loader"
	strings:
		$0 = {BF 00 40 40 00 99 68 48 20 40 00 68 00 20 40 00 52 52 52 52 52 52 52 57 E8 15 01 00 00 85 C0 75 1C 99 52 52 57 52 E8 CB 00 00 00 FF 35 4C 20 40 00 E8 D2 00 00 00 6A 00 E8 BF 00 00 00 99 68 58 20 40 00 52 52 68 63 10 40 00 52 52 E8 DB 00 00 00 6A FF FF 35}
	condition:
		$0
}
rule _Vx_Eddie2000_
{
	meta:
		description = "Vx: Eddie.2000"
	strings:
		$0 = {E8 ?? ?? 5E 81 EE ?? ?? FC 2E ?? ?? ?? ?? 2E ?? ?? ?? ?? 4D 5A ?? ?? FA 8B E6 81 C4 ?? ?? FB 3B ?? ?? ?? ?? ?? 50 06 56 1E 8B FE 33 C0 50 8E D8 C5 ?? ?? ?? B4 30 CD 21}
	condition:
		$0 at entrypoint
}
rule _ExeTools_v21_Encruptor_by_DISMEMBER_
{
	meta:
		description = "ExeTools v2.1 Encruptor by DISMEMBER"
	strings:
		$0 = {E8 ?? ?? 5D 83 ?? ?? 1E 8C DA 83 ?? ?? 8E DA 8E C2 BB ?? ?? BA ?? ?? 85 D2 74}
	condition:
		$0 at entrypoint
}
rule _AntiDote_10_Demo__12__SISTeam_
{
	meta:
		description = "AntiDote 1.0 Demo / 1.2 -> SIS-Team"
	strings:
		$0 = {00 00 00 00 09 01 47 65 74 43 6F 6D 6D 61 6E 64 4C 69 6E 65 41 00 DB 01 47 65 74 56 65 72 73 69 6F 6E 45 78 41 00 73 01 47 65 74 4D 6F 64 75 6C 65 46 69 6C 65 4E 61 6D 65 41 00 00 7A 03 57 61 69 74 46 6F 72 53 69 6E 67 6C 65 4F 62 6A 65 63 74 00 BF 02 52 65 73 75 6D 65 54 68 72 65 61 64 00 00 29 03 53 65 74 54 68 72 65 61 64 43 6F 6E 74 65 78 74 00 00 94 03 57 72 69 74 65 50 72 6F 63 65 73 73 4D 65 6D 6F 72 79 00 00 6B 03 56 69 72 74 75 61 6C 41 6C 6C 6F 63 45 78 00 00 A6 02 52 65 61 64 50 72 6F 63 65 73 73 4D 65 6D 6F 72 79 00 CA 01 47 65 74 54 68 72 65 61 64 43 6F 6E 74 65 78 74 00 00 62 00 43 72 65 61 74 65 50 72 6F 63 65 73 73 41 00 00 4B 45 52 4E 45 4C 33 32 2E 64 6C 6C}
	condition:
		$0
}
rule _PseudoSigner_01_Microsoft_Visual_Basic_50__60__Anorganix_
{
	meta:
		description = "PseudoSigner 0.1 [Microsoft Visual Basic 5.0 - 6.0] --> Anorganix"
	strings:
		$0 = {68 ?? ?? ?? ?? E8 0A 00 00 00 00 00 00 00 00 00 30 00 00 00 E9}
	condition:
		$0 at entrypoint
}
rule _DragonArmor__Orient_
{
	meta:
		description = "DragonArmor -> Orient"
	strings:
		$0 = {BF 4C ?? ?? 00 83 C9 FF 33 C0 68 34 ?? ?? 00 F2 AE F7 D1 49 51 68 4C ?? ?? 00 E8 11 0A 00 00 83 C4 0C 68 4C ?? ?? 00 FF 15 00 ?? ?? 00 8B F0 BF 4C ?? ?? 00 83 C9 FF 33 C0 F2 AE F7 D1 49 BF 4C ?? ?? 00 8B D1 68 34 ?? ?? 00 C1 E9 02 F3 AB 8B CA 83 E1 03 F3 AA BF 5C ?? ?? 00 83 C9 FF 33 C0 F2 AE F7 D1 49 51 68 5C ?? ?? 00 E8 C0 09 00 00 8B 1D 04 ?? ?? 00 83 C4 0C 68 5C ?? ?? 00 56 FF D3 A3 D4 ?? ?? 00 BF 5C ?? ?? 00 83 C9 FF 33 C0 F2 AE F7 D1 49 BF 5C ?? ?? 00 8B D1 68 34 ?? ?? 00 C1 E9 02 F3 AB 8B CA 83 E1}
	condition:
		$0
}
rule _ASPack_v10803__Alexey_Solodovnikov_
{
	meta:
		description = "ASPack v1.08.03 -> Alexey Solodovnikov"
	strings:
		$0 = {60 E8 00 00 00 00 5D 81 ED 0A 4A 44 00 BB 04 4A 44 00 03 DD}
		$1 = {60 E8 00 00 00 00 5D 81 ED 0A 4A 44 00 BB 04 4A 44 00 03 DD 2B 9D B1 50 44 00 83 BD AC 50 44 00 00 89 9D BB 4E}
		$2 = {60 E8 00 00 00 00 5D ?? ?? ?? ?? ?? ?? BB ?? ?? ?? ?? 03 DD}
		$3 = {60 E8 00 00 00 00 5D ?? ?? ?? ?? ?? ?? BB ?? ?? ?? ?? 03 DD 2B 9D B1 50 44 00 83 BD AC 50 44 00 00 89 9D BB 4E}
	condition:
		$0 at entrypoint or $1 at entrypoint or $2 at entrypoint or $3 at entrypoint
}
rule _ASPack_v107b__Alexey_Solodovnikov_
{
	meta:
		description = "ASPack v1.07b -> Alexey Solodovnikov"
	strings:
		$0 = {60 E8 ?? ?? ?? ?? 5D 81 ED ?? ?? ?? ?? B8 ?? ?? ?? ?? 03 C5 2B 85 ?? 0B DE ?? 89 85 17 DE ?? ?? 80 BD 01 DE}
	condition:
		$0 at entrypoint
}
rule _DIET_v100_v100d_
{
	meta:
		description = "DIET v1.00, v1.00d"
	strings:
		$0 = {BF ?? ?? 3B FC 72 ?? B4 4C CD 21 BE ?? ?? B9 ?? ?? FD F3 A5 FC}
	condition:
		$0 at entrypoint
}
rule _WWPACK_v305c4_Extractable_
{
	meta:
		description = "WWPACK v3.05c4 (Extractable)"
	strings:
		$0 = {03 05 00 1A B8 ?? ?? 8C CA 03 D0 8C C9 81 C1 ?? ?? 51 B9 ?? ?? 51 06 06 B1 ?? 51 8C D3}
	condition:
		$0 at entrypoint
}
rule _Private_EXE_Protector_197__SetiSoft_
{
	meta:
		description = "Private EXE Protector 1.9.7 -> SetiSoft"
	strings:
		$0 = {55 8B EC 83 C4 F4 FC 53 57 56 8B 74 24 20 8B 7C 24 24 66 81 3E 4A 43 0F 85 A5 02 00 00 83 C6 0A 33 DB BA 00 00 00 80 C7 44 24 14 08 00 00 00 43 8D A4 24 00 00 00 00 8B FF 03 D2 75 08 8B 16 83 C6 04 F9 13 D2 73 2C 8B 4C 24 10 33 C0 8D A4 24 00 00 00 00 05 00 00 00 00 03 D2 75 08 8B 16 83 C6 04 F9 13 D2 13 C0 49 75 EF 02 44 24 0C 88 07 47 EB C6 03 D2 75 08 8B 16 83 C6 04 F9 13 D2 0F 82 6E 01 00 00 03 D2 75 08 8B 16 83 C6 04 F9 13 D2 0F 83 DC 00 00 00 B9 04 00 00 00 33 C0 8D A4 24 00 00 00 00 8D 64 24 00 03 D2 75 08 8B 16 83 C6 04 F9 13 D2 13 C0 49 75 EF 48 74 B1 0F 89 EF 01 00 00 03 D2 75 08 8B 16 83 C6 04 F9 13 D2 73 42 BD 00 01 00 00 B9 08 00 00 00 33 C0 8D A4 24 00 00 00 00 05 00 00 00 00 03 D2 75 08 8B 16 83 C6 04 F9 13 D2 13 C0 49 75 EF 88 07 47 4D 75 D6}
	condition:
		$0
}
rule _SecuPack_v15_
{
	meta:
		description = "SecuPack v1.5"
	strings:
		$0 = {55 8B EC 83 C4 F0 53 56 57 33 C0 89 45 F0 B8 CC 3A 40 ?? E8 E0 FC FF FF 33 C0 55 68 EA 3C 40 ?? 64 FF 30 64 89 20 6A ?? 68 80 ?? ?? ?? 6A 03 6A ?? 6A 01 ?? ?? ?? 80}
	condition:
		$0 at entrypoint
}
rule _ASPack_v101b__Alexey_Solodovnikov_
{
	meta:
		description = "ASPack v1.01b -> Alexey Solodovnikov"
	strings:
		$0 = {60 E8 ?? ?? ?? ?? 5D 81 ED D2 2A 44 ?? B8 CC 2A 44 ?? 03 C5 2B 85 A5 2E 44 ?? 89 85 B1 2E 44 ?? 80 BD 9C 2E 44}
	condition:
		$0 at entrypoint
}
rule _Vx_November_17768_
{
	meta:
		description = "Vx: November 17.768"
	strings:
		$0 = {E8 ?? ?? 5E 81 EE ?? ?? 50 33 C0 8E D8 80 3E ?? ?? ?? 0E 1F ?? ?? FC}
	condition:
		$0 at entrypoint
}
rule _NeoLite_v20_
{
	meta:
		description = "NeoLite v2.0"
	strings:
		$0 = {E9 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 4E 65 6F 4C 69 74 65}
	condition:
		$0 at entrypoint
}
rule _AHTeam_EP_Protector_03_fake_kkryptor_9kryptor_a__FEUERRADER_
{
	meta:
		description = "AHTeam EP Protector 0.3 (fake k.kryptor 9/kryptor a) -> FEUERRADER"
	strings:
		$0 = {90 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 90 FF E0 60 E8 ?? ?? ?? ?? 5E B9 00 00 00 00 2B C0 02 04 0E D3 C0 49 79 F8 41 8D 7E 2C 33 46 ?? 66 B9}
	condition:
		$0 at entrypoint
}
rule _GameGuard__nProtect_
{
	meta:
		description = "GameGuard - nProtect"
	strings:
		$0 = {31 FF 74 06 61 E9 4A 4D 50 30 5A BA 7D 00 00 00 80 7C 24 08 01 E9 00 00 00 00 60 BE ?? ?? ?? ?? 31 FF 74 06 61 E9 4A 4D 50 30 8D BE ?? ?? ?? ?? 31 C9 74 06 61 E9 4A 4D 50 30 B8 7D 00 00 00 39 C2 B8 4C 00 00 00 F7 D0 75 3F 64 A1 30 00 00 00 85 C0 78 23 8B 40 0C 8B 40 0C C7 40 20 00 10 00 00 64 A1 18 00 00 00 8B 40 30 0F B6 40 02 85 C0 75 16 E9 12 00 00 00 31 C0 64 A0 20 00 00 00 85 C0 75 05 E9 01 00 00 00 61 57 83 CD FF EB 0B 90 8A 06 46 88 07 47 01 DB 75 07 8B 1E 83 EE FC 11 DB 72 ED B8 01 00 00 00 01 DB 75 07}
	condition:
		$0 at entrypoint
}
rule _PEArmor_046__China_Cracking_Group_
{
	meta:
		description = "PE-Armor 0.46 -> China Cracking Group"
	strings:
		$0 = {E8 AA 00 00 00 2D ?? ?? 00 00 00 00 00 00 00 00 00 3D ?? ?? 00 2D ?? ?? 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 4B ?? ?? 00 5C ?? ?? 00 6F ?? ?? 00 00 00 00 00 4B 45 52 4E 45 4C 33 32 2E 64 6C 6C 00 00 00 00 47 65 74 50 72 6F 63 41}
	condition:
		$0 at entrypoint
}
rule _PESpin_v07__Cyberbob_
{
	meta:
		description = "PESpin v0.7 -> Cyberbob"
	strings:
		$0 = {EB 01 68 60 E8 00 00 00 00 8B 1C 24 83 C3 12 81 2B E8 B1 06 00 FE 4B FD 82 2C 24 83 D5 46 00 0B E4 74 9E 75 01 C7 81 73 04 D7 7A F7 2F 81 73 19 77 00 43 B7 F6 C3 6B B7 00 00 F9 FF E3 C9 C2 08 00 A3 68 72 01 FF 5D 33 C9 41 E2 17 EB 07 EA EB 01 EB EB 0D FF}
	condition:
		$0 at entrypoint
}
rule _EXECryptor_2021_protected_IAT_
{
	meta:
		description = "EXECryptor 2.0/2.1 (protected IAT)"
	strings:
		$0 = {A4 ?? ?? ?? 00 00 00 00 FF FF FF FF 3C ?? ?? ?? 94 ?? ?? ?? D8 ?? ?? ?? 00 00 00 00 FF FF FF FF B8 ?? ?? ?? D4 ?? ?? ?? 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 6B 65 72 6E 65 6C 33 32 2E 64 6C 6C 00 00 00 00 00 00 47 65 74 4D 6F 64 75 6C 65 48 61 6E 64 6C 65 41 00 00 00 00 4C 6F 61 64 4C 69 62 72 61 72 79 41 00 00 00 00 47 65 74 50 72 6F 63 41 64 64 72 65 73 73 00 00 00 00 00 00 45 78 69 74 50 72 6F 63 65 73 73 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 00 60 ?? ?? ?? 70 ?? ?? ?? 84 ?? ?? ?? 00 00 00 00 75 73 65 72 33 32 2E 64 6C 6C 00 00 00 00 4D 65 73 73 61 67 65 42 6F 78 41}
	condition:
		$0
}
rule _ENIGMA_Protector_V11_Sukhov_Vladimir_
{
	meta:
		description = "ENIGMA Protector V1.1-> Sukhov Vladimir"
	strings:
		$0 = {60 E8 00 00 00 00 5D 83 ?? ?? 81}
	condition:
		$0 at entrypoint
}
rule _tElock_v04x__v05x_
{
	meta:
		description = "tElock v0.4x - v0.5x"
	strings:
		$0 = {C1 EE 00 66 8B C9 EB 01 EB 60 EB 01 EB 9C E8 00 00 00 00 5E 83 C6 ?? 8B FE 68 79 01 ?? ?? 59 EB 01}
	condition:
		$0 at entrypoint
}
rule _yodas_Protector_V1033__Ashkbiz_Danehkar_
{
	meta:
		description = "yoda's Protector V1.03.3 -> Ashkbiz Danehkar"
	strings:
		$0 = {E8 03 00 00 00 EB 01 ?? BB 55 00 00 00 E8 03 00 00 00 EB 01 ?? E8 8E 00 00 00 E8 03 00 00 00 EB 01 ?? E8 81 00 00 00 E8 03 00 00 00 EB 01 ?? E8 B7 00 00 00 E8 03 00 00 00 EB 01 ?? E8 AA 00 00 00 E8 03 00 00 00 EB 01 ?? 83 FB 55 E8 03 00 00 00 EB 01 ?? 75 2D E8 03 00 00 00 EB 01 ?? 60 E8 00 00 00 00 5D 81 ED 07 E2 40 00 8B D5 81 C2 56 E2 40 00 52 E8 01 00 00 00 C3 C3 E8 03 00 00 00 EB 01 ?? E8 0E 00 00 00 E8 D1 FF FF FF C3 E8 03 00 00 00 EB 01 ?? 33 C0 64 FF 30 64 89 20 CC C3 E8 03 00 00 00 EB 01 ?? 33 C0 64 FF 30 64 89 20 4B CC C3}
	condition:
		$0 at entrypoint
}
rule _Vx_Hafen809_
{
	meta:
		description = "Vx: Hafen.809"
	strings:
		$0 = {E8 ?? ?? 1C ?? 81 EE ?? ?? 50 1E 06 8C C8 8E D8 06 33 C0 8E C0 26 ?? ?? ?? 07 3D}
	condition:
		$0 at entrypoint
}
rule _yzpack_112__UsAr_
{
	meta:
		description = "yzpack 1.12 -> UsAr"
	strings:
		$0 = {5A 52 45 60 83 EC 18 8B EC 8B FC 33 C0 64 8B 40 30 78 0C 8B 40 0C 8B 70 1C AD 8B 40 08 EB 09 8B 40 34 83 C0 7C 8B 40 3C AB E9 ?? ?? ?? ?? B4 09 BA 00 00 1F CD 21 B8 01 4C CD 21 40 00 00 00 50 45 00 00 4C 01 02 00 ?? ?? ?? ?? 00 00 00 00 00 00 00 00 E0 00 ?? ?? 0B 01 ?? ?? ?? ?? 00 00}
	condition:
		$0 at entrypoint
}
rule _Themida_1201_compressed__Oreans_Technologies_
{
	meta:
		description = "Themida 1.2.0.1 (compressed) -> Oreans Technologies"
	strings:
		$0 = {B8 00 00 ?? ?? 60 0B C0 74 58 E8 00 00 00 00 58 05 43 00 00 00 80 38 E9 75 03 61 EB 35 E8 00 00 00 00 58 25 00 F0 FF FF 33 FF 66 BB 19 5A 66 83 C3 34 66 39 18 75 12 0F B7 50 3C 03 D0 BB E9 44 00 00 83 C3 67 39 1A 74 07 2D 00 10 00 00 EB DA 8B F8 B8}
	condition:
		$0 at entrypoint
}
rule _Macromedia_Windows_Flash_ProjectorPlayer_v30_
{
	meta:
		description = "Macromedia Windows Flash Projector/Player v3.0"
	strings:
		$0 = {55 8B EC 83 EC 44 56 FF 15 94 13 42 00 8B F0 B1 22 8A 06 3A C1 75 13 8A 46 01 46 3A C1 74 04 84 C0 75 F4 38 0E 75 0D 46 EB 0A 3C 20 7E 06}
	condition:
		$0 at entrypoint
}
rule _PseudoSigner_02_PENightMare_2_Beta__Anorganix_
{
	meta:
		description = "PseudoSigner 0.2 [PENightMare 2 Beta] --> Anorganix"
	strings:
		$0 = {60 E9 10 00 00 00 EF 40 03 A7 07 8F 07 1C 37 5D 43 A7 04 B9 2C 3A}
	condition:
		$0 at entrypoint
}
rule _Pe123__v2006412_
{
	meta:
		description = "Pe123  v2006.4.12"
	strings:
		$0 = {8B C0 60 9C E8 01 00 00 00 C3 53 E8 72 00 00 00 50 E8 1C 03 00 00 8B D8 FF D3 5B C3 8B C0 E8 00 00 00 00 58 83 C0 05 C3 8B C0 55 8B EC 60 8B 4D 10 8B 7D 0C 8B 75 08 F3 A4 61 5D C2 0C 00 E8 00 00 00 00 58 83 E8 05 C3 8B C0 E8 00 00 00 00 58 83 C0 05 C3 8B}
	condition:
		$0 at entrypoint
}
rule _EXEPACK_v405_v406_
{
	meta:
		description = "EXEPACK v4.05, v4.06"
	strings:
		$0 = {8C C0 05 ?? ?? 0E 1F A3 ?? ?? 03 06 ?? ?? 8E C0 8B 0E ?? ?? 8B F9 4F 8B F7 FD F3 A4}
	condition:
		$0 at entrypoint
}
rule _WinZip_32bit_SFX_v8x_module_
{
	meta:
		description = "WinZip 32-bit SFX v8.x module"
	strings:
		$0 = {53 FF 15 ?? ?? ?? 00 B3 22 38 18 74 03 80 C3 FE 8A 48 01 40 33 D2 3A CA 74 0A 3A CB 74 06 8A 48 01 40 EB F2 38 10 74 01 40 ?? ?? ?? ?? FF 15}
	condition:
		$0 at entrypoint
}
rule _WebCops_DLL__LINK_Data_Security_
{
	meta:
		description = "WebCops [DLL] -> LINK Data Security"
	strings:
		$0 = {A8 BE 58 DC D6 CC C4 63 4A 0F E0 02 BB CE F3 5C 50 23 FB 62 E7 3D 2B}
	condition:
		$0 at entrypoint
}
rule _RLPack_118_Dll_LZMA_430__ap0x_
{
	meta:
		description = "RLPack 1.18 Dll (LZMA 4.30) -> ap0x"
	strings:
		$0 = {80 7C 24 08 01 0F 85 ?? 01 00 00 60 E8 00 00 00 00 8B 2C 24 83 C4 04 8D B5 ?? ?? ?? ?? 8D 9D ?? ?? ?? ?? 33 FF E8 9F 01 00 00 6A ?? 68 ?? ?? ?? ?? 68 ?? ?? ?? ?? 6A ?? FF 95 AA 0A 00 00 89 85 F9 0A 00 00 EB 14 60 FF B5 F9 0A 00 00 FF 34 37 FF 74 37 04 FF D3 61 83 C7 08 83 3C 37 00 75 E6 83 BD 0D 0B 00 00 00 74 0E 83 BD 11 0B 00 00 00 74 05 E8 F6 01 00 00 8D 74 37 04 53 6A ?? 68 ?? ?? ?? ?? 68 ?? ?? ?? ?? 6A ?? FF 95 AA 0A 00 00 89 85 1D 0B 00 00 5B 60 FF B5 F9 0A 00 00 56 FF B5 1D 0B 00 00 FF D3 61 8B B5 1D 0B 00 00 8B C6 EB 01}
	condition:
		$0 at entrypoint
}
rule _ass__crypter__by_santasdad_
{
	meta:
		description = "ass - crypter -> by santasdad"
	strings:
		$0 = {55 8B EC 83 C4 EC 53 ?? ?? ?? ?? 89 45 EC B8 98 40 00 10 E8 AC EA FF FF 33 C0 55 68 78 51 00 10 64 ?? ?? ?? ?? 20 6A 0A 68 88 51 00 10 A1 E0 97 00 10 50 E8 D8 EA FF FF 8B D8 53 A1 E0 97 00 10 50 E8 12 EB FF FF 8B F8 53 A1 E0 97 00 10 50 E8 DC EA FF FF 8B D8 53 E8 DC EA FF FF 8B F0 85 F6 74 26 8B D7 4A B8 F0 97 00 10 E8 C9 E7 FF FF B8 F0 97 00 10 E8 B7 E7 FF FF 8B CF 8B D6 E8 EE EA FF FF 53 E8 98 EA FF FF 8D 4D EC BA 9C 51 00 10 A1 F0 97 00 10 E8 22 EB FF FF 8B 55 EC B8 F0 97 00 10 E8 89 E6 FF FF B8 F0 97 00 10 E8 7F E7 FF FF E8 6E EC FF FF 33 C0 5A 59 59 64 89 10 68 7F 51 00 10 8D 45 EC E8 11 E6 FF FF C3 E9 FF DF FF FF EB F0 5F 5E 5B E8 0D E5 FF FF 00 53 45 54 54 49 4E 47 53 00 00 00 00 FF FF FF FF 1C 00 00 00 45 4E 54 45 52 20 59 4F 55 52 20 4F 57 4E 20 50 41 53 53 57 4F 52 44 20 48 45 52 45}
	condition:
		$0 at entrypoint
}
rule _VMProtect_07x__08__PolyTech_
{
	meta:
		description = "VMProtect 0.7x - 0.8 -> PolyTech"
	strings:
		$0 = {5B 20 56 4D 50 72 6F 74 65 63 74 20 76 20 30 2E 38 20 28 43 29 20 50 6F 6C 79 54 65 63 68 20 5D}
	condition:
		$0
}
rule _CICompress_v10_
{
	meta:
		description = "CICompress v1.0"
	strings:
		$0 = {6A 04 68 00 10 00 00 FF 35 9C 14 40 00 6A 00 FF 15 38 10 40 00 A3 FC 10 40 00 97 BE 00 20 40 00 E8 71 00 00 00 3B 05 9C 14 40 00 75 61 6A 00 6A 20 6A 02 6A 00 6A 03 68 00 00 00 C0 68 94 10 40 00 FF 15 2C 10 40 00 A3 F8 10 40 00 6A 00 68 F4 10 40 00 FF 35}
	condition:
		$0 at entrypoint
}
rule _MoleBox_v254__Teggo_
{
	meta:
		description = "MoleBox v2.5.4 -> Teggo"
	strings:
		$0 = {00 8B 4D F0 8B 11 89 15 ?? ?? ?? 00 8B 45 FC A3 ?? ?? ?? 00 5F 5E 8B E5 5D C3 CC CC CC E8 EB FB FF FF 58 E8 ?? 07 00 00 58 89 44 24 24 61 58 58 FF D0 E8 ?? ?? 00 00 6A 00 FF 15 ?? ?? ?? 00 CC CC CC CC CC CC CC CC CC CC CC CC CC CC}
	condition:
		$0
}
rule _ExeShield_36__wwwexeshieldcom_
{
	meta:
		description = "ExeShield 3.6 -> www.exeshield.com"
	strings:
		$0 = {B8 ?? ?? ?? 00 50 64 FF 35 00 00 00 00 64 89 25 00 00 00 00 33 C0 89 08 50 45 43 6F 6D 70 61 63 74 32 00 CE 1E 42 AF F8 D6 CC E9 FB C8 4F 1B 22 7C B4 C8 0D BD 71 A9 C8 1F 5F B1 29 8F 11 73 8F 00 D1 88 87 A9 3F 4D 00 6C 3C BF C0 80 F7 AD 35 23 EB 84 82 6F}
	condition:
		$0 at entrypoint
}
rule _PE_Spin_v04x_
{
	meta:
		description = "PE Spin v0.4x"
	strings:
		$0 = {EB 01 68 60 E8 00 00 00 00 8B}
	condition:
		$0
}
rule _Thinstall_v2460__Jitit_
{
	meta:
		description = "Thinstall v2.460 -> Jitit"
	strings:
		$0 = {55 8B EC 51 53 56 57 6A 00 6A 00 FF 15 F4 18 40 00 50 E8 87 FC FF FF 59 59 A1 94 1A 40 00 8B 40 10 03 05 90 1A 40 00 89 45 FC 8B 45 FC FF E0 5F 5E 5B C9 C3 00 00 00 76 0C 00 00 D4 0C 00 00 1E}
	condition:
		$0 at entrypoint
}
rule _Vx_TravJack883_
{
	meta:
		description = "Vx: TravJack.883"
	strings:
		$0 = {EB ?? 9C 9E 26 ?? ?? 51 04 ?? 7D ?? 00 ?? 2E ?? ?? ?? ?? 8C C8 8E C0 8E D8 80 ?? ?? ?? ?? 74 ?? 8A ?? ?? ?? BB ?? ?? 8A ?? 32 C2 88 ?? FE C2 43 81}
	condition:
		$0 at entrypoint
}
rule _FSG_v20_
{
	meta:
		description = "FSG v2.0"
	strings:
		$0 = {87 25 ?? ?? ?? ?? 61 94 55 A4 B6 80 FF 13 73 F9 33 C9 FF 13 73 16 33 C0 FF 13 73 1F B6 80 41 B0 10 FF 13 12 C0 73 FA 75}
	condition:
		$0
}
rule _Vx_Gotcha879_
{
	meta:
		description = "Vx: Gotcha.879"
	strings:
		$0 = {E8 ?? ?? 5B 81 EB ?? ?? 9C FC 2E ?? ?? ?? ?? ?? ?? ?? 8C D8 05 ?? ?? 2E ?? ?? ?? ?? 50 2E ?? ?? ?? ?? ?? ?? 8B C3 05 ?? ?? 8B F0 BF 00 01 B9 20 00 F3 A4 0E B8 00 01 50 B8 DA DA CD 21}
	condition:
		$0 at entrypoint
}
rule _Exe_Shield_v29_
{
	meta:
		description = "Exe Shield v2.9"
	strings:
		$0 = {60 E8 00 00 00 00 5D 81 ED 0B 20 40 00 B9 EB 08 00 00 8D BD 53 20 40 00 8B F7 AC ?? ?? ?? F8}
	condition:
		$0 at entrypoint
}
rule _Program_Protector_XP_v10_
{
	meta:
		description = "Program Protector XP v1.0"
	strings:
		$0 = {E8 ?? ?? ?? ?? 58 83 D8 05 89 C3 81 C3 ?? ?? ?? ?? 8B 43 64 50}
	condition:
		$0 at entrypoint
}
rule _IProtect_10_FxSubdll_mode__by_FuXdas_
{
	meta:
		description = "IProtect 1.0 (FxSub.dll mode) - by FuXdas"
	strings:
		$0 = {EB 33 2E 46 55 58 4C 6F 61 64 4C 69 62 72 61 72 79 41 00 46 78 53 75 62 2E 64 6C 6C 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ?? ?? ?? 00 60 E8 00 00 00 00 5D 81 ED B6 13 40 00 FF 74 24 20 E8 40 00 00 00 0B C0 74 2F 89 85 A8 13 40 00 8D 85 81 13 40 00 50 FF B5 A8 13 40 00 E8 92 00 00 00 0B C0 74 13 89 85 A4 13 40 00 8D 85 8E 13 40 00 50 FF 95 A4 13 40 00 8B 85 AC 13 40 00 89 44 24 1C 61 FF E0 8B 7C 24 04 8D 85 00 10 40 00 50 64 FF 35 00 00 00 00 8D 85 98 13 40 00 89 20 89 68 04 8D 9D 4F 14 40 00 89 58 08 64 89 25 00 00 00 00 81 E7 00 00 FF FF 66 81 3F 4D 5A 75 0F 8B F7 03 76 3C 81 3E 50 45 00 00 75 02 EB 17 81 EF 00 00 01 00 81 FF 00 00 00 70 73 07 BF 00 00 F7 BF EB 02 EB D3 97 64 8F 05 00 00 00 00 83 C4 04 C2 04 00 8D 85 00 10 40 00 50 64 FF 35 00 00 00 00 8D 85 98 13 40 00 89 20 89 68 04 8D 9D 4F 14 40 00 89 58 08 64 89 25 00 00 00 00 8B 74 24 0C 66 81 3E 4D 5A 74 05 E9 8A 00 00 00 03 76 3C 81 3E 50 45 00 00 74 02 EB 7D 8B 7C 24 10 B9 96 00 00 00 32 C0 F2 AE 8B CF 2B 4C 24 10 8B 56 78 03 54 24 0C 8B 5A 20 03 5C 24 0C 33 C0 8B 3B 03 7C 24 0C 8B 74 24 10 51 F3 A6 75 05 83 C4 04 EB 0A 59 83 C3 04 40 3B 42 18 75 E2 3B 42 18 75 02 EB 35 8B 72 24 03 74 24 0C 52 BB 02 00 00 00 33 D2 F7 E3 5A 03 C6 33 C9 66 8B 08 8B 7A 1C 33 D2 BB 04 00 00 00 8B C1 F7 E3 03 44 24 0C 03 C7 8B 00 03 44 24 0C EB 02 33 C0 64 8F 05 00 00 00 00 83 C4 04 C2 08 00 E8 B5 FA FF FF}
	condition:
		$0 at entrypoint
}
rule _EXE_Packer_v70_by_TurboPower_Software_
{
	meta:
		description = "EXE Packer v7.0 by TurboPower Software"
	strings:
		$0 = {1E 06 8C C3 83 ?? ?? 2E ?? ?? ?? ?? B9 ?? ?? 8C C8 8E D8 8B F1 4E 8B FE}
	condition:
		$0 at entrypoint
}
rule _Trivial173_by_SMTSMF_
{
	meta:
		description = "Trivial173 by SMT/SMF"
	strings:
		$0 = {EB ?? ?? 28 54 72 69 76 69 61 6C 31 37 33 20 62 79 20 53 4D 54 2F 53 4D 46 29}
	condition:
		$0 at entrypoint
}
rule _Lockless_Intro_Pack_
{
	meta:
		description = "Lockless Intro Pack"
	strings:
		$0 = {2C E8 ?? ?? ?? ?? 5D 8B C5 81 ED F6 73 ?? ?? 2B 85 ?? ?? ?? ?? 83 E8 06 89 85}
	condition:
		$0 at entrypoint
}
rule _SLVc0deProtector_11x__SLV__ICU_
{
	meta:
		description = "SLVc0deProtector 1.1x -> SLV / ICU"
	strings:
		$0 = {E8 00 00 00 00 58 C6 00 EB C6 40 01 08 FF E0 E9 4C ?? ?? 00}
	condition:
		$0 at entrypoint
}
rule _Obsidium_13021__Obsidium_Software_
{
	meta:
		description = "Obsidium 1.3.0.21 -> Obsidium Software"
	strings:
		$0 = {EB 03 ?? ?? ?? E8 2E 00 00 00 EB 04 ?? ?? ?? ?? EB 04 ?? ?? ?? ?? 8B 54 24 0C EB 04 ?? ?? ?? ?? 83 82 B8 00 00 00 23 EB 01 ?? 33 C0 EB 04 ?? ?? ?? ?? C3 EB 03 ?? ?? ?? EB 02 ?? ?? 64 67 FF 36 00 00 EB 01 ?? 64 67 89 26 00 00 EB 02 ?? ?? EB 02 ?? ?? 50 EB 01 ?? 33 C0 EB 03 ?? ?? ?? 8B 00 EB 03 ?? ?? ?? C3 EB 03 ?? ?? ?? E9 FA 00 00 00 EB 04 ?? ?? ?? ?? E8 D5 FF FF FF EB 01 ?? EB 01 ?? 58 EB 04 ?? ?? ?? ?? EB 04 ?? ?? ?? ?? 64 67 8F 06 00 00 EB 03 ?? ?? ?? 83 C4 04 EB 04 ?? ?? ?? ?? E8 2B 26 00 00}
	condition:
		$0 at entrypoint
}
rule _CDS_SS_10_beta1__CyberDoom_
{
	meta:
		description = "CDS SS 1.0 beta1 -> CyberDoom"
	strings:
		$0 = {60 E8 00 00 00 00 5D 81 ED CA 47 40 00 FF 74 24 20 E8 D3 03 00 00 0B C0 0F 84 13 03 00 00 89 85 B8 4E 40 00 66 8C D8 A8 04 74 0C C7 85 8C 4E 40 00 01 00 00 00 EB 12 64 A1 30 00 00 00 0F B6 40 02 0A C0 0F 85 E8 02 00 00 8D 85 F6 4C 40 00 50 FF B5 B8 4E 40 00 E8 FC 03 00 00 0B C0 0F 84 CE 02 00 00 E8 1E 03 00 00 89 85 90 4E 40 00 8D 85 03 4D 40 00 50 FF B5 B8 4E 40 00 E8 D7 03 00 00 0B C0 0F 84 A9 02 00 00 E8 F9 02 00 00 89 85 94 4E 40 00 8D 85 12 4D 40 00 50}
	condition:
		$0 at entrypoint
}
rule _Obsidium_1337_20070623__Obsidium_Software_
{
	meta:
		description = "Obsidium 1.3.3.7 (2007.06.23) -> Obsidium Software"
	strings:
		$0 = {EB 02 ?? ?? E8 27 00 00 00 EB 03 ?? ?? ?? EB 01 ?? 8B 54 24 0C EB 03 ?? ?? ?? 83 82 B8 00 00 00 23 EB 03 ?? ?? ?? 33 C0 EB 02 ?? ?? C3 EB 01 ?? EB 03 ?? ?? ?? 64 67 FF 36 00 00 EB 04 ?? ?? ?? ?? 64 67 89 26 00 00 EB 01 ?? EB 01 ?? 50 EB 02 ?? ?? 33 C0 EB 01 ?? 8B 00 EB 04 ?? ?? ?? ?? C3 EB 02 ?? ?? E9 FA 00 00 00 EB 04 ?? ?? ?? ?? E8 D5 FF FF FF EB 01 ?? EB 01 ?? 58 EB 04 ?? ?? ?? ?? EB 01 ?? 64 67 8F 06 00 00 EB 02 ?? ?? 83 C4 04 EB 01 ?? E8 F7 26 00 00}
	condition:
		$0 at entrypoint
}
rule _UPX_293__300_LZMA__Markus_Oberhumer_Laszlo_Molnar__John_Reiser_
{
	meta:
		description = "UPX 2.93 - 3.00 [LZMA] -> Markus Oberhumer, Laszlo Molnar & John Reiser"
	strings:
		$0 = {60 BE ?? ?? ?? ?? 8D BE ?? ?? ?? ?? 57 89 E5 8D 9C 24 ?? ?? ?? ?? 31 C0 50 39 DC 75 FB 46 46 53 68 ?? ?? ?? ?? 57 83 C3 04 53 68 ?? ?? ?? ?? 56 83 C3 04 53 50 C7 03 03 00 02 00 90 90 90 90 90}
	condition:
		$0 at entrypoint
}
rule _EXECryptor_2117__StrongbitSoftComplete_Development_
{
	meta:
		description = "EXECryptor 2.1.17 -> Strongbit/SoftComplete Development"
	strings:
		$0 = {BE ?? ?? ?? ?? B8 00 00 ?? ?? 89 45 FC 89 C2 8B 46 0C 09 C0 0F 84 ?? 00 00 00 01 D0 89 C3 50 FF 15 94 ?? ?? ?? 09 C0 0F 85 0F 00 00 00 53 FF 15 98 ?? ?? ?? 09 C0 0F 84 ?? 00 00 00 89 45 F8 6A 00 8F 45 F4 8B 06 09 C0 8B 55 FC 0F 85 03 00 00 00 8B 46 10 01}
	condition:
		$0
}
rule _NoodleCrypt_v20_
{
	meta:
		description = "NoodleCrypt v2.0"
	strings:
		$0 = {EB 01 9A E8 3D 00 00 00 EB 01 9A E8 EB 01 00 00 EB 01 9A E8 2C 04 00 00 EB 01}
		$1 = {EB 01 9A E8 ?? 00 00 00 EB 01 9A E8 ?? ?? 00 00 EB 01 9A E8 ?? ?? 00 00 EB 01}
	condition:
		$0 at entrypoint or $1
}
rule _Armadillo_v250b3_
{
	meta:
		description = "Armadillo v2.50b3"
	strings:
		$0 = {55 8B EC 6A FF 68 B8 ?? ?? ?? 68 F8 ?? ?? ?? 64 A1 ?? ?? ?? ?? 50 64 89 25 ?? ?? ?? ?? 83 EC 58 53 56 57 89 65 E8 FF 15 20 ?? ?? ?? 33 D2 8A D4 89 15 D0}
	condition:
		$0 at entrypoint
}
rule _PE_Crypt_v102_
{
	meta:
		description = "PE Crypt v1.02"
	strings:
		$0 = {E8 ?? ?? ?? ?? 5B 83 EB 05 EB 04 52 4E 44}
	condition:
		$0 at entrypoint
}
rule _PEPROTECT_09_
{
	meta:
		description = "PE-PROTECT 0.9"
	strings:
		$0 = {E9 CF 00 00 00 0D 0A 0D 0A C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4}
	condition:
		$0 at entrypoint
}
rule _PseudoSigner_02_ASProtect__Anorganix_
{
	meta:
		description = "PseudoSigner 0.2 [ASProtect] --> Anorganix"
	strings:
		$0 = {60 90 90 90 90 90 90 5D 90 90 90 90 90 90 90 90 90 90 90 03 DD}
	condition:
		$0 at entrypoint
}
rule _WIBUKey_V410A__httpwibucomus_
{
	meta:
		description = "WIBU-Key V4.10A -> http://wibu.com/us/"
	strings:
		$0 = {F7 05 ?? ?? ?? ?? FF 00 00 00 75 12}
	condition:
		$0 at entrypoint
}
rule _MSLRH_v032a_fake_nSPack_13__emadicius_
{
	meta:
		description = "[MSLRH] v0.32a (fake nSPack 1.3) -> emadicius"
	strings:
		$0 = {9C 60 E8 00 00 00 00 5D B8 B3 85 40 00 2D AC 85 40 00 2B E8 8D B5 D3 FE FF FF 8B 06 83 F8 00 74 11 8D B5 DF FE FF FF 8B 06 83 F8 01 0F 84 F1 01 00 00 61 9D EB 05 E8 EB 04 40 00 EB FA E8 0A 00 00 00 E8 EB 0C 00 00 E8 F6 FF FF FF E8 F2 FF FF FF 83 C4 08 74 04 75 02 EB 02 EB 01 81 50 E8 02 00 00 00 29 5A 58 6B C0 03 E8 02 00 00 00 29 5A 83 C4 04 58 74 04 75 02 EB 02 EB 01 81 0F 31 50 0F 31 E8 0A 00 00 00 E8 EB 0C 00 00 E8 F6 FF FF FF E8 F2 FF FF FF 83 C4 08 2B 04 24 74 04 75 02 EB 02 EB 01}
	condition:
		$0 at entrypoint
}
rule _yodas_Protector_V102__Ashkbiz_Danehkar_
{
	meta:
		description = "yoda's Protector V1.02 -> Ashkbiz Danehkar"
	strings:
		$0 = {E8 03 00 00 00 EB 01 ?? BB 55 00 00 00 E8 03 00 00 00 EB 01 ?? E8 8F 00 00 00 E8 03 00 00 00 EB 01 ?? E8 82 00 00 00 E8 03 00 00 00 EB 01 ?? E8 B8 00 00 00 E8 03 00 00 00 EB 01 ?? E8 AB 00 00 00 E8 03 00 00 00 EB 01 ?? 83 FB 55 E8 03 00 00 00 EB 01 ?? 75 2E E8 03 00 00 00 EB 01 ?? C3 60 E8 00 00 00 00 5D 81 ED 23 3F 42 00 8B D5 81 C2 72 3F 42 00 52 E8 01 00 00 00 C3 C3 E8 03 00 00 00 EB 01 ?? E8 0E 00 00 00 E8 D1 FF FF FF C3 E8 03 00 00 00 EB 01 ?? 33 C0 64 FF 30 64 89 20 CC C3 E8 03 00 00 00 EB 01 ?? 33 C0 64 FF 30 64 89 20 4B CC C3 E8 03 00 00 00 EB 01 ?? 33 DB B9 3A 66 42 00 81 E9 1D 40 42 00 8B D5 81 C2 1D 40 42 00 8D 3A 8B F7 33 C0 E8 03 00 00 00 EB 01 ?? E8 17 00 00 00 90 90 90 E9 C3 1F 00 00 33 C0 64 FF 30 64 89 20 43 CC C3}
	condition:
		$0 at entrypoint
}
rule _Enigma_protector_112__Vladimir_Sukhov_
{
	meta:
		description = "Enigma protector 1.12 -> Vladimir Sukhov"
	strings:
		$0 = {60 E8 00 00 00 00 5D 83 ED 06 81 ED ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? E8 01 00 00 00 9A 83 C4 04 EB 02 FF 35 60 E8 24 00 00 00 00 00 FF EB 02 CD 20 8B 44 24 0C 83 80 B8 00 00 00 03 31 C0 C3 83 C0 08 EB 02 FF 15 89 C4 61 EB 2E EA EB 2B 83 04 24 03 EB 01 00 31 C0 EB 01 85 64 FF 30 EB 01 83 64 89 20 EB 02 CD 20 89 00 9A 64 8F 05 00 00 00 00 EB 02 C1 90 58 61 EB 01 3E EB 04 ?? ?? ?? ?? B8 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? E8 01 00 00 00 9A 83 C4 04 01 E8 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? E8 01 00 00 00 9A 83 C4 04 05 F6 01 00 00 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? E8 01 00 00 00 9A 83 C4 04 B9 44 1A}
	condition:
		$0
}
rule _Armadillo_v220_
{
	meta:
		description = "Armadillo v2.20"
	strings:
		$0 = {55 8B EC 6A FF 68 10 12 41 00 68 F4 A0 40 00 64 A1 00 00 00 00 50 64 89 25 00 00 00 00 83 EC 58}
	condition:
		$0 at entrypoint
}
rule _Vx_Spanz_
{
	meta:
		description = "Vx: Spanz"
	strings:
		$0 = {E8 00 00 5E 81 EE ?? ?? 8D 94 ?? ?? B4 1A CD 21 C7 84}
	condition:
		$0 at entrypoint
}
rule _StarForce_ProActive_11__StarForce_Technology_
{
	meta:
		description = "StarForce ProActive 1.1 -> StarForce Technology"
	strings:
		$0 = {68 ?? ?? ?? ?? FF 25 ?? ?? 57}
	condition:
		$0 at entrypoint
}
rule _TPPpack__clane_
{
	meta:
		description = "TPPpack -> clane"
	strings:
		$0 = {E8 00 00 00 00 5D 81 ED F5 8F 40 00 60 33 ?? E8}
	condition:
		$0 at entrypoint
}
rule _ZipWorxSecureEXE_v25__ZipWORX_Technologies_LLC_
{
	meta:
		description = "ZipWorxSecureEXE v2.5 -> ZipWORX Technologies LLC"
	strings:
		$0 = {E9 B8 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 00 00 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 00 53 65 63 75 72 65 45 58 45 20 45 78 65 63 75 74 61 62 6C 65 20 46 69 6C 65 20 50 72 6F 74 65 63 74 6F 72 0D 0A 43 6F 70 79 72 69 67 68 74 28 63 29 20 32 30}
	condition:
		$0 at entrypoint
}
rule _AZProtect_0001__by_AlexZ_aka_AZCRC_
{
	meta:
		description = "AZProtect 0001 - by AlexZ aka AZCRC"
	strings:
		$0 = {EB 70 FC 60 8C 80 4D 11 00 70 25 81 00 40 0D 91 BB 60 8C 80 4D 11 00 70 21 81 1D 61 0D 81 00 40 CE 60 8C 80 4D 11 00 70 25 81 25 81 25 81 25 81 29 61 41 81 31 61 1D 61 00 40 B7 30 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 60 BE 00 ?? ?? 00 BF 00 00 40 00 EB 17 4B 45 52 4E 45 4C 33 32 2E 44 4C 4C 00 00 00 00 00 FF 25 ?? ?? ?? 00 8B C6 03 C7 8B F8 57 55 8B EC 05 7F 00 00 00 50 E8 E5 FF FF FF BA 8C ?? ?? 00 89 02 E9 1A 01 00 00 ?? 00 00 00 47 65 74 4D 6F 64 75 6C 65 46 69 6C 65 4E 61 6D 65 41 00 47 65 74 56 6F 6C 75 6D 65 49 6E 66 6F 72 6D 61 74 69 6F 6E 41 00 4D 65 73 73 61 67 65 42 6F 78 41 00 45 78 69 74 50 72 6F 63 65 73 73 00 47 65 74 4D 6F 64 75 6C 65 48 61 6E 64 6C 65 41}
		$1 = {FC 33 C9 49 8B D1 33 C0 33 DB AC 32 C1 8A CD 8A EA 8A D6 B6 08 66 D1 EB 66 D1 D8 73 09 66 35 20 83 66 81 F3 B8 ED FE CE 75 EB 33 C8 33 D3 4F 75 D5 F7 D2 F7 D1 8B C2 C1 C0 10 66 8B C1 C3 F0 DA 55 8B EC 53 56 33 C9 33 DB 8B 4D 0C 8B 55 10 8B 75 08 4E 4A 83 FB 08 72 05 33 DB 43 EB 01 43 33 C0 8A 04 31 8A 24 13 2A C4 88 04 31 E2 E6 5E 5B C9 C2 0C}
	condition:
		$0 at entrypoint or $1
}
rule _FreeJoiner_Small_build_023__GlOFF_
{
	meta:
		description = "FreeJoiner Small (build 023) -> GlOFF"
	strings:
		$0 = {E8 E1 FD FF FF 6A 00 E8 0C 00 00 00 FF 25 78 10 40 00 FF 25 7C 10 40 00 FF 25 80 10 40 00 FF 25 84 10 40 00 FF 25 88 10 40 00 FF 25 8C 10 40 00 FF 25 90 10 40 00 FF 25 94 10 40 00 FF 25 98 10 40 00 FF 25 9C 10 40 00 FF 25 A0 10 40 00 FF 25 A4 10 40 00 FF 25 AC 10 40 00}
	condition:
		$0 at entrypoint
}
rule _Sc_Obfuscator__SuperCRacker_
{
	meta:
		description = "Sc Obfuscator -> SuperCRacker"
	strings:
		$0 = {60 33 C9 8B 1D ?? ?? ?? ?? 03 1D ?? ?? ?? ?? 8A 04 19 84 C0 74 09 3C ?? 74 05 34 ?? 88 04 19 41 3B 0D ?? ?? ?? ?? 75 E7 A1 ?? ?? ?? ?? 01 05 ?? ?? ?? ?? 61 FF 25 ?? ?? ?? ?? 00 00}
	condition:
		$0 at entrypoint
}
rule _RLPack_V119_Dll_aPlib_043__ap0x_
{
	meta:
		description = "RLPack V1.19 Dll (aPlib 0.43) -> ap0x"
	strings:
		$0 = {80 7C 24 08 01 0F 85 89 01 00 00 60 E8 00 00 00 00 8B 2C 24 83 C4 04 83 7C 24 28 01 75 0C 8B 44 24 24 89 85 3C 04 00 00 EB 0C 8B 85 38 04 00 00 89 85 3C 04 00 00 8D B5 60 04 00 00 8D 9D EB 02 00 00 33 FF E8 52 01 00 00 EB 1B 8B 85 3C 04 00 00 FF 74 37 04 01 04 24 FF 34 37 01 04 24 FF D3 83 C4 08 83 C7 08 83 3C 37 00 75 DF 83 BD 48 04 00 00 00 74 0E 83 BD 4C 04 00 00 00 74 05 E8 B8 01 00 00 8D 74 37 04 53 6A 40 68 00 10 00 00 68 ?? ?? ?? ?? 6A 00 FF 95 D1 03 00 00 89 85 5C 04 00 00 5B FF B5 5C 04 00 00 56 FF D3 83 C4 08 8B B5 5C 04 00 00 8B C6 EB 01 40 80 38 01 75 FA 40 8B 38 03 BD 3C 04 00 00 83 C0 04 89 85 58 04 00 00 E9 94 00 00 00 56 FF 95 C9 03 00 00 85 C0 0F 84 B4 00 00 00 89 85 54 04 00 00 8B C6 EB 5B 8B 85 58 04 00 00 8B 00 A9 00 00 00 80 74 14 35 00 00 00 80 50 8B 85 58 04 00 00 C7 00 20 20 20 00 EB 06 FF B5 58 04 00 00 FF B5 54 04 00 00 FF 95 CD 03 00 00 85 C0 74 71 89 07 83 C7 04 8B 85 58 04 00 00 EB 01 40 80 38 00 75 FA 40 89 85 58 04 00 00 66 81 78 02 00 80 74 A5 80 38 00 75 A0 EB 01 46 80 3E 00 75 FA 46 40 8B 38 03 BD 3C 04 00 00 83 C0 04 89 85 58 04 00 00 80 3E 01 0F 85 63 FF FF FF 68 00 40 00 00 68 ?? ?? ?? ?? FF B5 5C 04 00 00 FF 95 D5 03 00 00 E8 3D 00 00 00 E8 24 01 00 00 61 E9 ?? ?? ?? ?? 61 C3}
	condition:
		$0 at entrypoint
}
rule _EXECryptor_2xx_compressed_resources_
{
	meta:
		description = "EXECryptor 2.xx (compressed resources)"
	strings:
		$0 = {56 57 53 31 DB 89 C6 89 D7 0F B6 06 89 C2 83 E0 1F C1 EA 05 74 2D 4A 74 15 8D 5C 13 02 46 C1 E0 08 89 FA 0F B6 0E 46 29 CA 4A 29 C2 EB 32 C1 E3 05 8D 5C 03 04 46 89 FA 0F B7 0E 29 CA 4A 83 C6 02 EB 1D C1 E3 04 46 89 C1 83 E1 0F 01 CB C1 E8 05 73 07 43 89 F2 01 DE EB 06 85 DB 74 0E EB A9 56 89 D6 89 D9 F3 A4 31 DB 5E EB 9D 89 F0 5B 5F 5E C3}
	condition:
		$0
}
rule _Pelles_C_290_300_400_DLL_X86_CRTLIB_
{
	meta:
		description = "Pelles C 2.90, 3.00, 4.00 DLL (X86 CRT-LIB)"
	strings:
		$0 = {55 89 E5 53 56 57 8B 5D 0C 8B 75 10 BF 01 00 00 00 85 DB 75 10 83 3D ?? ?? ?? ?? 00 75 07 31 C0 E9 ?? ?? ?? ?? 83 FB 01 74 05 83 FB 02 75 ?? 85 FF 74}
	condition:
		$0 at entrypoint
}
rule _RLPack_Full_Edition_117_DLL__Ap0x_
{
	meta:
		description = "RLPack Full Edition 1.17 DLL -> Ap0x"
	strings:
		$0 = {80 7C 24 08 01 0F 85 ?? ?? ?? ?? 60 E8 00 00 00 00 8B 2C 24 83 C4 04 8D B5 ?? ?? ?? ?? 8D 9D ?? ?? ?? ?? 33 FF E8}
	condition:
		$0 at entrypoint
}
rule _LameCrypt_v10_
{
	meta:
		description = "LameCrypt v1.0"
	strings:
		$0 = {60 66 9C BB ?? ?? ?? ?? 80 B3 00 10 40 00 90 4B 83 FB FF 75 F3 66 9D 61}
	condition:
		$0 at entrypoint
}
rule _Thinstall_Embedded_26202623__Jitit_
{
	meta:
		description = "Thinstall Embedded 2.620-2.623 -> Jitit"
	strings:
		$0 = {E8 00 00 00 00 58 BB AC 1E 00 00 2B C3 50 68 ?? ?? ?? ?? 68 B0 21 00 00 68 C4 00 00 00 E8 C3 FE FF FF E9 99 FF FF FF 00 00}
	condition:
		$0 at entrypoint
}
rule _iPBProtect_v013_
{
	meta:
		description = "iPBProtect v0.1.3"
	strings:
		$0 = {55 8B EC 6A FF 68 4B 43 55 46 68 54 49 48 53 64 A1 00 00 00 00 50 64 89 25 00 00 00 00 83 EC 68 53 56 57 89 65 FA 33 DB 89 5D F8 6A 02 EB 01 F8 58 5F 5E 5B 64 8B 25 00 00 00 00 64 8F 05 00 00 00 00 58 58 58 5D 68 9F 6F 56 B6 50 E8 5D 00 00 00 EB FF 71 78}
	condition:
		$0
}
rule _eXcalibur_v103__forgotus_
{
	meta:
		description = "eXcalibur v1.03 -> forgot/us"
	strings:
		$0 = {E9 00 00 00 00 60 E8 14 00 00 00 5D 81 ED 00 00 00 00 6A 45 E8 A3 00 00 00 68 00 00 00 00 E8 58 61 EB 39 20 45 78 63 61 6C 69 62 75 72 20 28 63 29 20 62 79 20 66 6F 72 67 6F 74 2F 75 53 2F 44 46 43 47 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20}
	condition:
		$0 at entrypoint
}
rule _Obsidium_13037__Obsidium_Software_
{
	meta:
		description = "Obsidium 1.3.0.37 -> Obsidium Software"
	strings:
		$0 = {EB 02 ?? ?? E8 26 00 00 00 EB 03 ?? ?? ?? EB 01 ?? 8B 54 24 0C EB 04 ?? ?? ?? ?? 83 82 B8 00 00 00 26 EB 01 ?? 33 C0 EB 02 ?? ?? C3 EB 01 ?? EB 04 ?? ?? ?? ?? 64 67 FF 36 00 00 EB 01 ?? 64 67 89 26 00 00 EB 01 ?? EB 03 ?? ?? ?? 50 EB 03 ?? ?? ?? 33 C0 EB 03 ?? ?? ?? 8B 00 EB 04 ?? ?? ?? ?? C3 EB 03 ?? ?? ?? E9 FA 00 00 00 EB 03 ?? ?? ?? E8 D5 FF FF FF EB 04 ?? ?? ?? ?? EB 01 ?? 58 EB 02 ?? ?? EB 03 ?? ?? ?? 64 67 8F 06 00 00 EB 01 ?? 83 C4 04 EB 03 ?? ?? ?? E8 23 27 00 00}
	condition:
		$0 at entrypoint
}
rule _PKLITE_v114_v120_
{
	meta:
		description = "PKLITE v1.14, v1.20"
	strings:
		$0 = {B8 ?? ?? BA ?? ?? 05 ?? ?? 3B 06 ?? ?? 72 ?? B4 09 BA ?? ?? CD 21 CD 20}
	condition:
		$0 at entrypoint
}
rule _DAEMON_Protect_v067_
{
	meta:
		description = "DAEMON Protect v0.6.7"
	strings:
		$0 = {60 60 9C 8C C9 32 C9 E3 0C 52 0F 01 4C 24 FE 5A 83 C2 0C 8B 1A 9D 61}
	condition:
		$0 at entrypoint
}
rule _EmbedPE_V1X__cyclotron_
{
	meta:
		description = "EmbedPE V1.X -> cyclotron"
	strings:
		$0 = {83 EC 50 60 68 ?? ?? ?? ?? E8 ?? ?? 00 00}
	condition:
		$0 at entrypoint
}
rule _EXE_Stealth_v27_
{
	meta:
		description = "EXE Stealth v2.7"
	strings:
		$0 = {EB 00 60 EB 00 E8 00 00 00 00 5D 81 ED D3 26 40}
	condition:
		$0 at entrypoint
}
rule _UnoPiX_103110__BaGiE_
{
	meta:
		description = "UnoPiX 1.03-1.10 -> BaGiE"
	strings:
		$0 = {83 EC 04 C7 04 24 00 ?? ?? ?? C3 00 ?? ?? 00 00 00 00 00 00 00 00 00 00 00 00 ?? ?? 00 10 00 00 00 02 00 00 01 00 00 00 00 00 00 00 04 00 00 00 00 00 00 00 00 ?? ?? 00 00 10 00 00 00 00 00 00 02 00 00 ?? 00 00 ?? 00 00 ?? ?? 00 00 00 10 00 00 10 00 00 00 00 00 00 10}
	condition:
		$0 at entrypoint
}
rule _HPA_
{
	meta:
		description = "HPA"
	strings:
		$0 = {E8 ?? ?? 5E 8B D6 83 ?? ?? 83 ?? ?? 06 0E 1E 0E 1F 33 FF 8C D3}
	condition:
		$0 at entrypoint
}
rule _UPX_v103__v104_Modified_
{
	meta:
		description = "UPX v1.03 - v1.04 Modified"
	strings:
		$0 = {01 DB ?? 07 8B 1E 83 EE FC 11 DB 8A 07 ?? EB B8 01 00 00 00 01 DB ?? 07 8B 1E 83 EE FC 11 DB 11 C0 01 DB 73 EF}
	condition:
		$0 at entrypoint
}
rule _Armadillo_v300_
{
	meta:
		description = "Armadillo v3.00"
	strings:
		$0 = {60 E8 ?? ?? ?? ?? 5D 50 51 EB 0F B9 EB 0F B8 EB 07 B9 EB 0F 90 EB 08 FD EB 0B F2 EB F5 EB F6 F2 EB 08 FD EB E9 F3 EB E4 FC E9 59 58 60 33 C9}
	condition:
		$0 at entrypoint
}
rule _RLPack_118_aPlib_043__ap0x_
{
	meta:
		description = "RLPack 1.18 (aPlib 0.43) -> ap0x"
	strings:
		$0 = {60 E8 00 00 00 00 8B 2C 24 83 C4 ?? 8D B5 1A 04 00 00 8D 9D C1 02 00 00 33 FF E8 61 01 00 00 EB 0F FF 74 37 04 FF 34 37 FF D3 83 C4 ?? 83 C7 ?? 83 3C 37 00 75 EB 83 BD 06 04 00 00 00 74 0E 83 BD 0A 04 00 00 00 74 05 E8 D7 01 00 00 8D 74 37 04 53 6A ?? 68 ?? ?? ?? ?? 68 ?? ?? ?? ?? 6A 00 FF 95 A7 03 00 00 89 85 16 04 00 00 5B FF B5 16 04 00 00 56 FF D3 83 C4 ?? 8B B5 16 04 00 00 8B C6 EB 01}
	condition:
		$0 at entrypoint
}
rule _UPXFreak_V01__HMX0101_
{
	meta:
		description = "UPXFreak V0.1 -> HMX0101"
	strings:
		$0 = {BE ?? ?? ?? ?? 83 C6 01 FF E6 00 00}
	condition:
		$0 at entrypoint
}
rule _Nullsoft_Install_System_v20b2_v20b3_
{
	meta:
		description = "Nullsoft Install System v2.0b2, v2.0b3"
	strings:
		$0 = {83 EC 0C 53 55 56 57 FF 15 ?? 70 40 00 8B 35 ?? 92 40 00 05 E8 03 00 00 89 44 24 14 B3 20 FF 15 2C 70 40 00 BF 00 04 00 00 68 ?? ?? ?? 00 57 FF 15 ?? ?? 40 00 57 FF 15}
	condition:
		$0 at entrypoint
}
rule _Armadillo_v253_
{
	meta:
		description = "Armadillo v2.53"
	strings:
		$0 = {55 8B EC 6A FF 68 40 ?? ?? ?? 68 54 ?? ?? ?? 64 A1 ?? ?? ?? ?? 50 64 89 25 ?? ?? ?? ?? 83 EC 58 53 56 57 89 65 E8 FF 15 58 ?? ?? ?? 33 D2 8A D4 89 15 EC}
		$1 = {55 8B EC 6A FF 68 ?? ?? ?? ?? 40 ?? ?? ?? ?? 68 54 64 A1 00 00 00 00 50 64 89 25 00 00 00 00 83 EC 58 53 56 57 89 65 E8 FF ?? ?? ?? 15 58 33 D2 8A D4 89}
	condition:
		$0 at entrypoint or $1 at entrypoint
}
rule _FSG_v110_Eng__dulekxt_
{
	meta:
		description = "FSG v1.10 (Eng) -> dulek/xt"
	strings:
		$0 = {BB D0 01 40 ?? BF ?? 10 40 ?? BE}
		$1 = {E8 01 00 00 00 ?? ?? E8 ?? 00 00 00}
		$2 = {EB 01 ?? EB 02 ?? ?? ?? 80 ?? ?? 00}
	condition:
		$0 at entrypoint or $1 at entrypoint or $2 at entrypoint
}
rule _PseudoSigner_01_WATCOM_CCpp_EXE__Anorganix_
{
	meta:
		description = "PseudoSigner 0.1 [WATCOM C/C++ EXE] --> Anorganix"
	strings:
		$0 = {E9 00 00 00 00 90 90 90 90 57 41 E9}
	condition:
		$0 at entrypoint
}
rule _Wise_Installer_Stub_v11010291_
{
	meta:
		description = "Wise Installer Stub v1.10.1029.1"
	strings:
		$0 = {55 8B EC 81 EC 40 0F 00 00 53 56 57 6A 04 FF 15 F4 30 40 00 FF 15 74 30 40 00 8A 08 89 45 E8 80 F9 22 75 48 8A 48 01 40 89 45 E8 33 F6 84 C9 74 0E 80 F9 22 74 09 8A 48 01 40 89 45 E8 EB EE 80 38 22 75 04 40 89 45 E8 80 38 20 75 09 40 80 38 20 74 FA 89 45}
	condition:
		$0 at entrypoint
}
rule _MicroJoiner_11__coban2k_
{
	meta:
		description = "MicroJoiner 1.1 -> coban2k"
	strings:
		$0 = {BE 0C 70 40 00 BB F8 11 40 00 33 ED 83 EE 04 39 2E 74 11}
	condition:
		$0 at entrypoint
}
rule _UPX_V194__Markus_Oberhumer__Laszlo_Molnar__John_Reiser_
{
	meta:
		description = "UPX V1.94 -> Markus Oberhumer & Laszlo Molnar & John Reiser"
	strings:
		$0 = {FF D5 80 A7 ?? ?? ?? ?? ?? 58 50 54 50 53 57 FF D5 58 61 8D 44 24 ?? 6A 00 39 C4 75 FA 83 EC 80 E9}
	condition:
		$0
}
rule _Thinstall_Virtualization_Suite_30353043__Thinstall_Company_
{
	meta:
		description = "Thinstall Virtualization Suite 3.035-3.043 -> Thinstall Company"
	strings:
		$0 = {9C 60 68 53 74 41 6C 68 54 68 49 6E E8 00 00 00 00 58 BB 37 1F 00 00 2B C3 50 68 ?? ?? ?? ?? 68 00 28 00 00 68 04 01 00 00 E8 BA FE FF FF E9 90 FF FF FF CC CC CC CC CC CC CC 55 8B EC 83 C4 F4 FC 53 57 56 8B 75 08 8B 7D 0C C7 45 FC 08 00 00 00 33 DB BA 00 00 00 80 43 33 C0 E8 19 01 00 00 73 0E 8B 4D F8 E8 27 01 00 00 02 45 F7 AA EB E9 E8 04 01 00 00 0F 82 96 00 00 00 E8 F9 00 00 00 73 5B B9 04 00 00 00 E8 05 01 00 00 48 74 DE 0F 89 C6 00 00 00 E8 DF 00 00 00 73 1B 55 BD 00 01 00 00 E8 DF 00 00 00 88 07 47 4D 75 F5 E8 C7 00 00 00 72 E9 5D EB}
	condition:
		$0 at entrypoint
}
rule _Vx_Sonik_Youth_
{
	meta:
		description = "Vx: Sonik Youth"
	strings:
		$0 = {8A 16 02 00 8A 07 32 C2 88 07 43 FE C2 81 FB}
	condition:
		$0 at entrypoint
}
rule _PECompact_v146_
{
	meta:
		description = "PECompact v1.46"
	strings:
		$0 = {EB 06 68 ?? ?? ?? ?? C3 9C 60 E8 02 ?? ?? ?? 33 C0 8B C4 83 C0 04 93 8B E3 8B 5B FC 81 EB 0F A0 40 ?? 87 DD 8B 85 A6 A0 40 ?? 01 85 03 A0 40 ?? 66 C7 85 ?? A0 40 ?? 90 90 01 85 9E A0 40 ?? BB 60 12}
	condition:
		$0 at entrypoint
}
rule _TPACK_v05c_m1_
{
	meta:
		description = "T-PACK v0.5c -m1"
	strings:
		$0 = {68 ?? ?? FD 60 BE ?? ?? BF ?? ?? B9 ?? ?? F3 A4 8B F7 BF ?? ?? FC 46 E9 8E FE}
	condition:
		$0 at entrypoint
}
rule _STUD_RC4_10_Jamie_Edition_ScanTime_UnDetectable__by_MarjinZ_
{
	meta:
		description = "STUD RC4 1.0 Jamie Edition (ScanTime UnDetectable) - by MarjinZ"
	strings:
		$0 = {68 2C 11 40 00 E8 F0 FF FF FF 00 00 00 00 00 00 30 00 00 00 38 00 00 00 00 00 00 00 37 BB 71 EC A4 E1 98 4C 9B FE 8F 0F FA 6A 07 F6 00 00 00 00 00 00 01 00 00 00 20 20 46 6F 72 20 73 74 75 64 00 20 54 6F 00 00 00 00 06 00 00 00 CC 1A 40 00 07 00 00 00 D4 18 40 00 07 00 00 00 7C 18 40 00 07 00 00 00 2C 18 40 00 07 00 00 00 E0 17 40 00 56 42 35 21 F0 1F 2A 00 00 00 00 00 00 00 00 00 00 00 00 00 7E 00 00 00 00 00 00 00 00 00 00 00 00 00 0A 00 09 04 00 00 00 00 00 00 E8 13 40 00 F4 13 40 00 00 F0 30 00 00 FF FF FF 08 00 00 00 01 00 00 00 00 00 00 00 E9 00 00 00 04 11 40 00 04 11 40 00 C8 10 40 00 78 00 00 00 7C 00 00 00 81 00 00 00 82 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 61 61 61 00 53 74 75 64 00 00 73 74 75 64 00 00 01 00 01 00 30 16 40 00 00 00 00 00 FF FF FF FF FF FF FF FF 00 00 00 00 B4 16 40 00 10 30 40 00 07 00 00 00 24 12 40 00 0E 00 20 00 00 00 00 00 1C 9E 21 00 EC 11 40 00 5C 10 40 00 E4 1A 40 00 2C 34 40 00 68 17 40 00 58 17 40 00 78 17 40 00 8C 17 40 00 8C 10 40 00 62 10 40 00 92 10 40 00 F8 1A 40 00 24 19 40 00 98 10 40 00 9E 10 40 00 77 04 18 FF 04 1C FF 05 00 00 24 01 00 0D 14 00 78 1C 40 00 48 21 40 00}
	condition:
		$0 at entrypoint
}
rule _Themida__Oreans_Technologies_2004_
{
	meta:
		description = "Themida -> Oreans Technologies 2004"
	strings:
		$0 = {B8 00 00 00 00 60 0B C0 74 58 E8 00 00 00 00 58 05 43 00 00 00 80 38 E9 75 03 61 EB 35 E8}
	condition:
		$0 at entrypoint
}
rule _PEtite_vxx_
{
	meta:
		description = "PEtite vx.x"
	strings:
		$0 = {B8 ?? ?? ?? ?? 66 9C 60 50}
	condition:
		$0 at entrypoint
}
rule _Ding_Boys_PElock_Phantasm_v15b3_
{
	meta:
		description = "Ding Boy's PE-lock Phantasm v1.5b3"
	strings:
		$0 = {9C 55 57 56 52 51 53 9C FA E8 00 00 00 00 5D 81 ED 5B 53 40 00 B0}
	condition:
		$0 at entrypoint
}
rule _Vx_ARCV4_
{
	meta:
		description = "Vx: ARCV.4"
	strings:
		$0 = {E8 00 00 5D 81 ED 06 01 81 FC 4F 50 74 0B 8D B6 86 01 BF 00 01 57 A4 EB 11 1E 06}
	condition:
		$0 at entrypoint
}
rule _PECompact_v110b6_
{
	meta:
		description = "PECompact v1.10b6"
	strings:
		$0 = {EB 06 68 ?? ?? ?? ?? C3 9C 60 E8 02 ?? ?? ?? 33 C0 8B C4 83 C0 04 93 8B E3 8B 5B FC 81 EB 0F 60 ?? 00 87 DD 8B 85 9A 60 40 ?? 01 85 03 60 40 ?? 66 C7 85 ?? 60 40 ?? 90 90 01 85 92 60 40 ?? BB B7}
	condition:
		$0 at entrypoint
}
rule _PECompact_v1242__v1243_
{
	meta:
		description = "PECompact v1.24.2 - v1.24.3"
	strings:
		$0 = {EB 06 68 ?? ?? ?? ?? C3 9C 60 E8 02 ?? ?? ?? 33 C0 8B C4 83 C0 04 93 8B E3 8B 5B FC 81 EB 0F 70 40 ?? 87 DD 8B 85 A6 70 40 ?? 01 85 03 70 40 ?? 66 C7 85 70 40 90 ?? 90 01 85 9E 70 40 BB ?? D2 09}
	condition:
		$0 at entrypoint
}
rule _WARNING__TROJAN__XiaoHui_
{
	meta:
		description = "WARNING -> TROJAN -> XiaoHui"
	strings:
		$0 = {60 9C E8 00 00 00 00 5D B8 ?? 85 40 00 2D ?? 85 40 00}
	condition:
		$0 at entrypoint
}
rule _PROTECT_EXECOM_v60_
{
	meta:
		description = "PROTECT! EXE/COM v6.0"
	strings:
		$0 = {1E B4 30 CD 21 3C 02 73 ?? CD 20 BE ?? ?? E8}
	condition:
		$0 at entrypoint
}
rule _RLPack_Full_Edition_117__Ap0x_
{
	meta:
		description = "RLPack Full Edition 1.17 -> Ap0x"
	strings:
		$0 = {60 E8 00 00 00 00 8B 2C 24 83 C4 04 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 8D B5 ?? ?? ?? ?? 8D 9D ?? ?? ?? ?? 33 FF}
	condition:
		$0 at entrypoint
}
rule _Vx_Eddie1530_
{
	meta:
		description = "Vx: Eddie.1530"
	strings:
		$0 = {E8 ?? ?? 5E 81 EE ?? ?? FC 2E ?? ?? ?? ?? 4D 5A ?? ?? FA 8B E6 81 C4 ?? ?? FB 3B ?? ?? ?? ?? ?? 2E ?? ?? ?? ?? 50 06 56 1E 33 C0 50 1F C4 ?? ?? ?? 2E ?? ?? ?? ?? 2E}
	condition:
		$0 at entrypoint
}
rule _Special_EXE_Pasword_Protector_v101_Eng__Pavol_Cerven_
{
	meta:
		description = "Special EXE Pasword Protector v1.01 (Eng) -> Pavol Cerven"
	strings:
		$0 = {60 E8 00 00 00 00 5D 81 ED 06 00 00 00 89 AD 8C 01 00 00 8B C5 2B 85 FE 75 00 00 89 85 3E 77 00 00 8D 95 C6 77 00 00 8D 8D FF 77 00 00 55 68 00 20 00 00 51 52 6A 00 FF 95 04 7A 00 00 5D 6A 00 FF 95 FC 79 00 00 8D 8D 60 78 00 00 8D 95 85 01 00 00 55 68 00}
	condition:
		$0 at entrypoint
}
rule _UnoPiX_075__BaGiE_
{
	meta:
		description = "UnoPiX 0.75 -> BaGiE"
	strings:
		$0 = {60 E8 07 00 00 00 61 68 ?? ?? 40 00 C3 83 04 24 18 C3 20 83 B8 ED 20 37 EF C6 B9 79 37 9E 61}
	condition:
		$0 at entrypoint
}
rule _Vx_XRCV1015_
{
	meta:
		description = "Vx: XRCV.1015"
	strings:
		$0 = {E8 ?? ?? 5E 83 ?? ?? 53 51 1E 06 B4 99 CD 21 80 FC 21 ?? ?? ?? ?? ?? 33 C0 50 8C D8 48 8E C0 1F A1 ?? ?? 8B}
	condition:
		$0 at entrypoint
}
rule _VProtector_V11A__vcasm_
{
	meta:
		description = "VProtector V1.1A -> vcasm"
	strings:
		$0 = {EB 0B 5B 56 50 72 6F 74 65 63 74 5D 00 E8 24 00 00 00 8B 44 24 04 8B 00 3D 04 00 00 80 75 08 8B 64 24 08 EB 04 58 EB 0C E9 64 8F 05 00 00 00 00}
	condition:
		$0 at entrypoint
}
rule _Packman_v0001_
{
	meta:
		description = "Packman v0.0.0.1"
	strings:
		$0 = {60 E8 00 00 00 00 58 8D A8 ?? ?? FF FF 8D 98 ?? ?? ?? FF 8D ?? ?? 01 00 00 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 00 00}
	condition:
		$0 at entrypoint
}
rule _Macromedia_Windows_Flash_ProjectorPlayer_v50_
{
	meta:
		description = "Macromedia Windows Flash Projector/Player v5.0"
	strings:
		$0 = {83 EC 44 56 FF 15 70 61 44 00 8B F0 8A 06 3C 22 75 1C 8A 46 01 46 3C 22 74 0C 84 C0 74 08 8A 46 01 46 3C 22 75 F4 80 3E 22 75 0F 46 EB 0C 3C 20 7E 08 8A 46 01 46 3C 20 7F F8 8A 06 84 C0 74 0C 3C 20 7F 08 8A 46 01 46 84 C0 75 F4 8D 44 24 04 C7 44 24 30 00}
	condition:
		$0 at entrypoint
}
rule _MEW_11_SE_v12__NorthfoxHCC_
{
	meta:
		description = "MEW 11 SE v1.2 -> Northfox[HCC]"
	strings:
		$0 = {E9 ?? ?? ?? FF 0C ?? ?? 00 00 00 00 00 00 00 00 00 ?? ?? ?? 00 0C ?? ?? 00}
	condition:
		$0 at entrypoint
}
rule _Nullsoft_PIMP_Install_System_v13x_
{
	meta:
		description = "Nullsoft PIMP Install System v1.3x"
	strings:
		$0 = {55 8B EC 81 EC ?? ?? 00 00 56 57 6A ?? BE ?? ?? ?? ?? 59 8D BD}
	condition:
		$0 at entrypoint
}
rule _MSLRH_v032a_fake_MSVCpp_DLL_Method_4__emadicius_
{
	meta:
		description = "[MSLRH] v0.32a (fake MSVC++ DLL Method 4) -> emadicius"
	strings:
		$0 = {55 8B EC 56 57 BF 01 00 00 00 8B 75 0C 85 F6 5F 5E 5D EB 05 E8 EB 04 40 00 EB FA E8 0A 00 00 00 E8 EB 0C 00 00 E8 F6 FF FF FF E8 F2 FF FF FF 83 C4 08 74 04 75 02 EB 02 EB 01 81 50 E8 02 00 00 00 29 5A 58 6B C0 03 E8 02 00 00 00 29 5A 83 C4 04 58 74 04 75 02 EB 02 EB 01 81 0F 31 50 0F 31 E8 0A 00 00 00 E8 EB 0C 00 00 E8 F6 FF FF FF E8 F2 FF FF FF}
	condition:
		$0 at entrypoint
}
rule _Alex_Protector_v10__Alex_
{
	meta:
		description = "Alex Protector v1.0 -> Alex"
	strings:
		$0 = {60 E8 00 00 00 00 5D 81 ED 06 10 40 00 E8 24 00 00 00 EB 01 E9 8B}
	condition:
		$0 at entrypoint
}
rule _Shrinker_32_
{
	meta:
		description = "Shrinker 3.2"
	strings:
		$0 = {55 8B EC 56 57 75 65 68 00 01 00 00 E8 F1 E6 FF FF 83 C4 04}
	condition:
		$0
}
rule _VProtector_0X12X__vcasm_
{
	meta:
		description = "VProtector 0.X-1.2X -> vcasm"
	strings:
		$0 = {00 00 56 69 72 74 75 61 6C 41 6C 6C 6F 63 00 00 00 00 00 76 63 61 73 6D 5F 70 72 6F 74 65 63 74 5F ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 33 F6 E8 10 00 00 00 8B 64 24 08 64 8F 05 00 00 00 00 58 EB 13 C7 83 64 FF 35 00 00 00 00 64 89 25 00 00 00 00 AD CD 20 EB 01 0F 31 F0 EB 0C 33 C8 EB 03 EB 09 0F 59 74 05 75 F8 51 EB F1 B9 04 00 00 00 E8 1F 00 00 00 EB FA E8 16 00 00 00 E9 EB F8 00 00 58 EB 09 0F 25 E8 F2 FF FF FF 0F B9 49 75 F1 EB 05 EB F9 EB F0 D6 E8 07 00 00 00 C7 83 83 C0 13 EB 0B 58 EB 02 CD 20 83 C0 02 EB 01 E9 50 C3}
	condition:
		$0
}
rule _Install_Stub_32bit_
{
	meta:
		description = "Install Stub 32-bit"
	strings:
		$0 = {55 8B EC 81 EC 14 ?? 00 00 53 56 57 6A 00 FF 15 ?? ?? ?? ?? 68 ?? ?? ?? ?? FF 15 ?? ?? ?? ?? 85 C0 74 29}
	condition:
		$0 at entrypoint
}
rule _tElock_v098__tE_
{
	meta:
		description = "tElock v0.98 -> tE!"
	strings:
		$0 = {E9 25 E4 FF FF 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? 00 00 00 00 00 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 00 00 00 00 00 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ?? ?? ?? ?? 00 00 00 00 ?? ?? ?? ?? 00}
	condition:
		$0 at entrypoint
}
rule _PE_Lock_NT_v204_
{
	meta:
		description = "PE Lock NT v2.04"
	strings:
		$0 = {EB ?? CD ?? ?? ?? ?? ?? CD ?? ?? ?? ?? ?? EB ?? EB ?? EB ?? EB ?? CD ?? ?? ?? ?? ?? E8 ?? ?? ?? ?? E9 ?? ?? ?? ?? 50 C3}
	condition:
		$0 at entrypoint
}
rule _Armadillo_v252_beta2_
{
	meta:
		description = "Armadillo v2.52 beta2"
	strings:
		$0 = {55 8B EC 6A FF 68 ?? ?? ?? ?? B0 ?? ?? ?? ?? 68 60 64 A1 00 00 00 00 50 64 89 25 00 00 00 00 83 EC 58 53 56 57 89 65 E8 FF ?? ?? ?? 15 24}
	condition:
		$0 at entrypoint
}
rule _SDC_12_Self_Decrypting_Binary_Generator__by_Claes_M_Nyberg_
{
	meta:
		description = "SDC 1.2 (Self Decrypting Binary Generator) - by Claes M Nyberg"
	strings:
		$0 = {55 89 E5 83 EC 08 C7 04 24 01 00 00 00 FF 15 A0 91 40 00 E8 DB FE FF FF 55 89 E5 53 83 EC 14 8B 45 08 8B 00 8B 00 3D 91 00 00 C0 77 3B 3D 8D 00 00 C0 72 4B BB 01 00 00 00 C7 44 24 04 00 00 00 00 C7 04 24 08 00 00 00 E8 CE 24 00 00 83 F8 01 0F 84 C4 00 00 00 85 C0 0F 85 A9 00 00 00 31 C0 83 C4 14 5B 5D C2 04 00 3D 94 00 00 C0 74 56 3D 96 00 00 C0 74 1E 3D 93 00 00 C0 75 E1 EB B5 3D 05 00 00 C0 8D B4 26 00 00 00 00 74 43 3D 1D 00 00 C0 75 CA C7 44 24 04 00 00 00 00 C7 04 24 04 00 00 00 E8 73 24 00 00 83 F8 01 0F 84 99 00 00 00 85 C0 74 A9 C7 04 24 04 00 00 00 FF D0 B8 FF FF FF FF EB 9B 31 DB 8D 74 26 00 E9 69 FF FF FF C7 44 24 04 00 00 00 00 C7 04 24 0B 00 00 00 E8 37 24 00 00 83 F8 01 74 7F 85 C0 0F 84 6D FF FF FF C7 04 24 0B 00 00 00 8D 76 00 FF D0 B8 FF FF FF FF E9 59 FF FF FF C7 04 24 08 00 00 00 FF D0 B8 FF FF FF FF E9 46 FF FF FF C7 44 24 04 01 00 00 00 C7 04 24 08 00 00 00 E8 ED 23 00 00 B8 FF FF FF FF 85 DB 0F 84 25 FF FF FF E8 DB 15 00 00 B8 FF FF FF FF E9 16 FF FF FF C7 44 24 04 01 00 00 00 C7 04 24 04 00 00 00 E8 BD 23 00 00 B8 FF FF FF FF E9 F8 FE FF FF C7 44 24 04 01 00 00 00 C7 04 24 0B 00 00 00 E8 9F 23 00 00 B8 FF FF FF FF E9 DA FE FF FF}
	condition:
		$0 at entrypoint
}
rule _Armadillo_v265b1_
{
	meta:
		description = "Armadillo v2.65b1"
	strings:
		$0 = {55 8B EC 6A FF 68 38 ?? ?? ?? 68 40 ?? ?? ?? 64 A1 ?? ?? ?? ?? 50 64 89 25 ?? ?? ?? ?? 83 EC 58 53 56 57 89 65 E8 FF 15 28 ?? ?? ?? 33 D2 8A D4 89 15 F4}
	condition:
		$0 at entrypoint
}
rule _EncryptPE_2200461622006630__WFS_
{
	meta:
		description = "EncryptPE 2.2004.6.16-2.2006.6.30 -> WFS"
	strings:
		$0 = {60 9C 64 FF 35 00 00 00 00 E8 7A 01 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 00 00 00 00 6B 65 72 6E 65 6C 33 32 2E 64 6C 6C 00 00 00 47 65 74 53 79 73 74 65 6D 44 69 72 65 63 74 6F 72 79 41 00 00 00 43 72 65 61 74 65 46 69 6C 65 41 00 00 00 43 72 65 61 74 65 46 69 6C 65 4D 61 70 70 69 6E 67 41 00 00 00 4D 61 70 56 69 65 77 4F 66 46 69 6C 65 00 00 00 55 6E 6D 61 70 56 69 65 77 4F 66 46 69 6C 65 00 00 00 43 6C 6F 73 65 48 61 6E 64 6C 65 00 00 00 4C 6F 61 64 4C 69 62 72 61 72 79 41 00 00 00 47 65 74 50 72 6F 63 41 64 64 72 65 73 73 00 00 00 45 78 69 74 50 72 6F 63 65 73 73}
	condition:
		$0 at entrypoint
}
rule _SLVc0deProtector_v061__SLV_
{
	meta:
		description = "SLVc0deProtector v0.61 -> SLV"
	strings:
		$0 = {EB 02 FA 04 E8 49 00 00 00 69 E8 49 00 00 00 95 E8 4F 00 00 00 68 E8 1F 00 00 00 49 E8 E9 FF FF FF 67 E8 1F 00}
		$1 = {EB 02 FA 04 E8 49 00 00 00 69 E8 49 00 00 00 95 E8 4F 00 00 00 68 E8 1F 00 00 00 49 E8 E9 FF FF FF 67 E8 1F 00 00 00 93 E8 31 00 00 00 78 E8 DD FF FF FF 38 E8 E3 FF FF FF 66 E8 0D 00 00 00 04 E8 E3 FF FF FF 70 E8 CB FF FF FF 69 E8 DD FF FF FF 58 E8 DD FF FF FF 69 E8 E3 FF FF FF 79 E8 BF FF FF FF 69 83 C4 40 E8 00 00 00 00 5D 81 ED 9D 11 40 00 8D 95 B4 11 40 00 E8 CB 2E 00 00 33 C0 F7 F0 69 8D B5 05 12 40 00 B9 5D 2E 00 00 8B FE AC}
	condition:
		$0 at entrypoint or $1 at entrypoint
}
rule _Thinstall_Embedded_20X__Jitit_
{
	meta:
		description = "Thinstall Embedded 2.0X -> Jitit"
	strings:
		$0 = {B8 EF BE AD DE 50 6A 00 FF 15 ?? ?? ?? ?? E9 AD FF FF FF 8B C1 8B 4C 24 04 89 88 29 04 00 00 C7 40 0C 01 00 00 00 0F B6 49 01 D1 E9 89 48 10 C7 40 14 80 00 00 00 C2 04 00 8B 44 24 04 C7 41 0C 01 00 00 00 89 81 29 04 00 00 0F B6 40 01 D1 E8 89 41 10 C7 41 14 80 00 00 00 C2 04 00 55 8B EC 53 56 57 33 C0 33 FF 39 45 0C 8B F1 76 0C 8B 4D 08 03 3C 81 40 3B 45 0C 72 F4 8B CE E8 43 00 00 00 8B 46 14 33 D2 F7 F7 8B 5E 10 33 D2 8B F8 8B C3 F7 F7 89 7E 18 89 45 0C 33 C0 33 C9 8B 55 08 03 0C 82 40 39 4D 0C 73 F4 48 8B 14 82 2B CA 0F AF CF 2B D9 0F AF FA 89 7E 14 89 5E 10 5F 5E 5B 5D C2 08 00}
	condition:
		$0 at entrypoint
}
rule _DalKrypt_10__by_DalKiT_
{
	meta:
		description = "DalKrypt 1.0 - by DalKiT"
	strings:
		$0 = {68 00 10 40 00 58 68 ?? ?? ?? 00 5F 33 DB EB 0D 8A 14 03 80 EA 07 80 F2 04 88 14 03 43 81 FB ?? ?? ?? 00 72 EB FF E7}
	condition:
		$0 at entrypoint
}
rule _MEW_11_SE_v11_
{
	meta:
		description = "MEW 11 SE v1.1"
	strings:
		$0 = {E9 ?? ?? ?? FF 0C ?? 00 00 00 00 00 00 00 00 00 00}
	condition:
		$0
}
rule _yodas_Protector_v1033_exescrcom__Ashkbiz_Danehkar_
{
	meta:
		description = "yoda's Protector v1.03.3 (.exe,.scr,.com) -> Ashkbiz Danehkar"
	strings:
		$0 = {E8 03 00 00 00 EB 01 ?? BB 55 00 00 00 E8 03 00 00 00 EB 01 ?? E8 8E 00 00 00 E8 03 00 00 00 EB 01 ?? E8 81 00 00 00 E8 03 00 00 00 EB 01 ?? E8 B7 00 00 00 E8 03 00 00 00 EB 01 ?? E8 AA 00 00 00 E8 03 00 00 00 EB 01 ?? 83 FB 55 E8 03 00 00 00 EB 01 ?? 75}
	condition:
		$0 at entrypoint
}
rule _tElock_v041x_
{
	meta:
		description = "tElock v0.41x"
	strings:
		$0 = {66 8B C0 8D 24 24 EB 01 EB 60 EB 01 EB 9C E8 00 00 00 00 5E 83 C6 50 8B FE 68 78 01 ?? ?? 59 EB 01 EB AC 54 E8 03 ?? ?? ?? 5C EB 08}
	condition:
		$0 at entrypoint
}
rule _XXPack_01__bagie_
{
	meta:
		description = "XXPack 0.1 -> bagie"
	strings:
		$0 = {E8 04 00 00 00 83 60 EB 0C 5D EB 05 45 55 EB 04 B8 EB F9 00 C3 E8 00 00 00 00 5D EB 01 00 81 ED 5E 1F 40 00 EB 02 83 09 8D B5 EF 1F 40 00 EB 02 83 09 BA A3 11 00 00 EB 00 68 00 ?? ?? ?? C3}
	condition:
		$0 at entrypoint
}
rule _EXE_Manager_Version_30_1994_c_Solar_Designer_
{
	meta:
		description = "EXE Manager Version 3.0 1994 (c) Solar Designer"
	strings:
		$0 = {B4 30 1E 06 CD 21 2E ?? ?? ?? BF ?? ?? B9 ?? ?? 33 C0 2E ?? ?? 47 E2}
	condition:
		$0 at entrypoint
}
rule _ExeJoiner_V10__Yoda_f2f_
{
	meta:
		description = "ExeJoiner V1.0 -> Yoda f2f"
	strings:
		$0 = {68 00 10 40 00 68 04 01 00 00 E8 39 03 00 00 05 00 10 40 00 C6 00 5C 68 04 01 00 00}
	condition:
		$0 at entrypoint
}
rule _Private_exe_Protector_21522X__SetiSoft_Team_
{
	meta:
		description = "Private exe Protector 2.15-2.2X -> SetiSoft Team"
	strings:
		$0 = {00 00 00 00 00 00 00 00 00 00 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 4B 45 52 4E 45 4C 33 32 2E 44 4C 4C 00 00 00 00 00}
	condition:
		$0
}
rule _Vx_Horse1776_
{
	meta:
		description = "Vx: Horse.1776"
	strings:
		$0 = {E8 ?? ?? 5D 83 ?? ?? 06 1E 26 ?? ?? ?? ?? BF ?? ?? 1E 0E 1F 8B F7 01 EE B9 ?? ?? FC F3 A6 1F 1E 07}
	condition:
		$0 at entrypoint
}
rule _RLPack_Full_Edition_117_LZMA__Ap0x_
{
	meta:
		description = "RLPack Full Edition 1.17 [LZMA] -> Ap0x"
	strings:
		$0 = {60 E8 00 00 00 00 8B 2C 24 83 C4 04 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 8D B5 73 26 00 00 8D 9D 58 03 00 00 33 FF ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 6A 40 68 ?? ?? ?? ?? 68 ?? ?? ?? ?? 6A}
	condition:
		$0 at entrypoint
}
rule _tElock_099__tE_
{
	meta:
		description = "tElock 0.99 -> tE!"
	strings:
		$0 = {E9 5E DF FF FF 00 00 00 ?? ?? ?? ?? E5 ?? ?? 00 00 00 00 00 00 00 00 00 05}
	condition:
		$0 at entrypoint
}
rule _yodas_Protector_102__103__Ashkbiz_Danehkar_
{
	meta:
		description = "yoda's Protector 1.02 - 1.03 -> Ashkbiz Danehkar"
	strings:
		$0 = {E8 03 00 00 00 EB 01 ?? BB 55 00 00 00 E8 03 00 00 00 EB 01 ?? E8 8F 00 00 00 E8 03 00 00 00 EB 01 ?? E8 82 00 00 00 E8 03 00 00 00 EB 01 ?? E8 B8 00 00 00 E8 03 00 00 00 EB 01 ?? E8 AB 00 00}
	condition:
		$0 at entrypoint
}
rule _Vx_Eddie1028_
{
	meta:
		description = "Vx: Eddie.1028"
	strings:
		$0 = {E8 ?? ?? 5E FC 83 ?? ?? 81 ?? ?? ?? 4D 5A ?? ?? FA 8B E6 81 C4 ?? ?? FB 3B ?? ?? ?? ?? ?? 50 06 56 1E B8 FE 4B CD 21 81 FF BB 55 ?? ?? 07 ?? ?? ?? 07 B4 49 CD 21 BB FF FF B4 48 CD 21}
	condition:
		$0 at entrypoint
}
rule _Escargot_01__by_ueMeat_
{
	meta:
		description = "Escargot 0.1 - by ueMeat"
	strings:
		$0 = {EB 08 28 65 73 63 30 2E 31 29 60 68 2B ?? ?? ?? 64 FF 35 00 00 00 00 64 89 25 00 00 00 00 B8 5C ?? ?? ?? 8B 00 FF D0 50 BE 00 10 ?? ?? B9 00 ?? ?? 00 EB 05 49 80 34 31 40 0B C9 75 F7 58 0B C0 74 08 33 C0 C7 00 DE C0 AD 0B BE ?? ?? ?? ?? E9 AC 00 00 00 8B 46 0C BB 00 00 ?? ?? 03 C3 50 50 B8 54 ?? ?? ?? 8B 00 FF D0 5F 80 3F 00 74 06 C6 07 00 47 EB F5 33 FF 8B 16 0B D2 75 03 8B 56 10 03 D3 03 D7 8B 0A C7 02 00 00 00 00 0B C9 74 4B F7 C1 00 00 00 80 74 14 81 E1 FF FF 00 00 50 51 50 B8 50}
	condition:
		$0
}
rule _PMODEW_v112_116_121_133_DOS_extender_
{
	meta:
		description = "PMODE/W v.1.12, 1.16, 1.21, 1.33 DOS extender"
	strings:
		$0 = {FC 16 07 BF ?? ?? 8B F7 57 B9 ?? ?? F3 A5 06 1E 07 1F 5F BE ?? ?? 06 0E A4}
	condition:
		$0 at entrypoint
}
rule _PseudoSigner_02_UPX_06__Anorganix_
{
	meta:
		description = "PseudoSigner 0.2 [UPX 0.6] --> Anorganix"
	strings:
		$0 = {60 E8 00 00 00 00 58 83 E8 3D 50 8D B8 00 00 00 FF 57 8D B0 E8 00 00 00}
	condition:
		$0 at entrypoint
}
rule _Upack_v032_beta__Dwing_
{
	meta:
		description = "Upack v0.32 beta -> Dwing"
	strings:
		$0 = {E9 ?? ?? ?? ?? 42 79 44 77 69 6E 67 40 00 00 00 50 45 00 00 4C 01 02 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 32}
	condition:
		$0 at entrypoint
}
rule _AHTeam_EP_Protector_03_fake_ASPack_212__FEUERRADER_
{
	meta:
		description = "AHTeam EP Protector 0.3 (fake ASPack 2.12) -> FEUERRADER"
	strings:
		$0 = {90 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 90 FF E0 60 E8 03 00 00 00 E9 EB 04 5D 45 55 C3 E8 01 00 00 00 EB 5D BB ED FF FF FF 03 DD 81 EB}
	condition:
		$0 at entrypoint
}
rule _PseudoSigner_02_BJFNT_11b__Anorganix_
{
	meta:
		description = "PseudoSigner 0.2 [.BJFNT 1.1b] --> Anorganix"
	strings:
		$0 = {EB 01 EA 9C EB 01 EA 53 EB 01 EA 51 EB 01 EA 52 EB 01 EA 56 90}
	condition:
		$0 at entrypoint
}
rule _PseudoSigner_01_ASProtect__Anorganix_
{
	meta:
		description = "PseudoSigner 0.1 [ASProtect] --> Anorganix"
	strings:
		$0 = {60 90 90 90 90 90 90 5D 90 90 90 90 90 90 90 90 90 90 90 03 DD E9}
	condition:
		$0 at entrypoint
}
rule _Petite_12_
{
	meta:
		description = "Petite 1.2"
	strings:
		$0 = {66 9C 60 E8 CA 00 00 00 03 00 04 00 05 00 06 00 07 00 08 00}
	condition:
		$0 at entrypoint
}
rule _Thinstall_Embedded_2609__Jitit_
{
	meta:
		description = "Thinstall Embedded 2.609 -> Jitit"
	strings:
		$0 = {E8 00 00 00 00 58 BB AD 19 00 00 2B C3 50 68 ?? ?? ?? ?? 68 B0 1C 00 00 68 80 00 00 00 E8 35 FF FF FF E9 99 FF FF FF 00}
	condition:
		$0 at entrypoint
}
rule _eXPressor_11__CGSoftLabs_
{
	meta:
		description = "eXPressor 1.1 -> CGSoftLabs"
	strings:
		$0 = {E9 ?? ?? 00 00 E9 ?? ?? 00 00 E9 ?? 12 00 00 E9 ?? 0C 00 00 E9 ?? ?? 00 00 E9 ?? ?? 00 00 E9 ?? ?? 00 00}
	condition:
		$0 at entrypoint
}
rule _yodas_Protector_102__Ashkibiz_Danehlar_
{
	meta:
		description = "yoda's Protector 1.02 -> Ashkibiz Danehlar"
	strings:
		$0 = {E8 03 00 00 00 EB 01 ?? BB 55 00 00 00 E8 03 00 00 00 EB 01 ?? E8 8F 00 00 00 E8 03 00 00 00 EB 01 ?? E8 82 00 00 00 E8 03 00 00 00 EB 01 ?? E8 B8 00 00 00 E8 03 00 00 00 EB 01 ?? E8 AB 00 00 00 E8 03 00 00 00 EB 01 ?? 83 FB 55 E8 03 00 00 00 EB 01 ?? 75}
	condition:
		$0 at entrypoint
}
rule _ORiEN_V1XV2X__Fisun_AV_
{
	meta:
		description = "ORiEN V1.X-V2.X -> Fisun A.V."
	strings:
		$0 = {4F 52 69 45 4E 20 65 78 65 63 75 74 61 62 6C 65 20 66 69 6C 65 73 20 70 72 6F 74 65 63 74 69 6F 6E 20 73 79 73 74 65 6D}
	condition:
		$0
}
rule _NeoLite_v10_
{
	meta:
		description = "NeoLite v1.0"
	strings:
		$0 = {8B 44 24 04 8D 54 24 FC 23 05 ?? ?? ?? ?? E8 ?? ?? ?? ?? FF 35 ?? ?? ?? ?? 50 FF 25}
	condition:
		$0 at entrypoint
}
rule _Armadillo_v184_
{
	meta:
		description = "Armadillo v1.84"
	strings:
		$0 = {55 8B EC 6A FF 68 E8 C1 40 00 68 F4 86 40 00 64 A1 00 00 00 00 50 64 89 25 00 00 00 00 83 EC 58}
	condition:
		$0 at entrypoint
}
rule _Hasp_dongle_Alladin_
{
	meta:
		description = "Hasp dongle (Alladin)"
	strings:
		$0 = {50 53 51 52 57 56 8B 75 1C 8B 3E ?? ?? ?? ?? ?? 8B 5D 08 8A FB ?? ?? 03 5D 10 8B 45 0C 8B 4D 14 8B 55 18 80 FF 32}
	condition:
		$0 at entrypoint
}
rule _RCryptor_v16d__Vaska_
{
	meta:
		description = "RCryptor v1.6d --> Vaska"
	strings:
		$0 = {60 90 61 61 80 7F F0 45 90 60 0F 85 1B 8B 1F FF 68}
		$1 = {60 90 61 61 80 7F F0 45 90 60 0F 85 1B 8B 1F FF 68 ?? ?? ?? ?? B8 ?? ?? ?? ?? 90 3D ?? ?? ?? ?? 74 06 80 30 ?? 40 EB F3}
	condition:
		$0 at entrypoint or $1
}
rule _ACProtect_v141_
{
	meta:
		description = "ACProtect v1.41"
	strings:
		$0 = {60 76 03 77 01 7B 74 03 75 01 78 47 87 EE E8 01 00 00 00 76 83 C4 04 85 EE EB 01 7F 85 F2 EB 01 79 0F 86 01 00 00 00 FC EB 01 78 79 02 87 F2 61 51 8F 05 19 38 01 01 60 EB 01 E9 E9 01 00 00 00}
	condition:
		$0 at entrypoint
}
rule _PECompact_2xx_Slim_Loader__BitSum_Technologies_
{
	meta:
		description = "PECompact 2.xx (Slim Loader) --> BitSum Technologies"
	strings:
		$0 = {B8 ?? ?? ?? ?? 50 64 FF 35 00 00 00 00 64 89 25 00 00 00 00 33 C0 89 08 50 45 43 32 00}
	condition:
		$0 at entrypoint
}
rule _ChSfx_small_v11_
{
	meta:
		description = "ChSfx (small) v1.1"
	strings:
		$0 = {BA ?? ?? E8 ?? ?? 8B EC 83 EC ?? 8C C8 BB ?? ?? B1 ?? D3 EB 03 C3 8E D8 05 ?? ?? 89}
	condition:
		$0 at entrypoint
}
rule _SimplePack_10X__bagie_
{
	meta:
		description = "SimplePack 1.0X -> bagie"
	strings:
		$0 = {60 E8 00 00 00 00 5B 8D 5B FA 6A 00 FF 93 ?? ?? 00 00 89 C5 8B 7D 3C 8D 74 3D 00 8D BE F8 00 00 00 8B 86 88 00 00 00 09 C0}
	condition:
		$0 at entrypoint
}
rule _nSpack_V2x__LiuXingPing_
{
	meta:
		description = "nSpack V2.x -> LiuXingPing"
	strings:
		$0 = {9C 60 E8 00 00 00 00 5D B8 07 00 00 00 2B E8 8D B5}
	condition:
		$0
}
rule _tElock_v042_
{
	meta:
		description = "tElock v0.42"
	strings:
		$0 = {C1 EE 00 66 8B C9 EB 01 EB 60 EB 01 EB 9C E8 00 00 00 00 5E 83 C6 52 8B FE 68 79 01 59 EB 01 EB AC 54 E8 03 5C EB 08}
	condition:
		$0 at entrypoint
}
rule _Exe_Stealth_275a__WebtoolMaster_
{
	meta:
		description = "Exe Stealth 2.75a -> WebtoolMaster"
	strings:
		$0 = {EB 58 53 68 61 72 65 77 61 72 65 2D 56 65 72 73 69 6F 6E 20 45 78 65 53 74 65 61 6C 74 68 2C 20 63 6F 6E 74 61 63 74 20 73 75 70 70 6F 72 74 40 77 65 62 74 6F 6F 6C 6D 61 73 74 65 72 2E 63 6F 6D 20 2D 20 77 77 77 2E 77 65 62 74 6F 6F 6C 6D 61 73 74 65 72}
	condition:
		$0 at entrypoint
}
rule _Armadillo_v252b2_
{
	meta:
		description = "Armadillo v2.52b2"
	strings:
		$0 = {55 8B EC 6A FF 68 B0 ?? ?? ?? 68 60 ?? ?? ?? 64 A1 ?? ?? ?? ?? 50 64 89 25 ?? ?? ?? ?? 83 EC 58 53 56 57 89 65 E8 FF 15 24}
	condition:
		$0 at entrypoint
}
rule _Adys_Glue_110_
{
	meta:
		description = "Ady's Glue 1.10"
	strings:
		$0 = {2E ?? ?? ?? ?? 0E 1F BF ?? ?? 33 DB 33 C0 AC}
	condition:
		$0 at entrypoint
}
rule _PE_Spin_v0b_
{
	meta:
		description = "PE Spin v0.b"
	strings:
		$0 = {EB 01 68 60 E8 00 00 00 00 8B 1C 24 83 C3 12 81 2B E8 B1 06 00 FE 4B FD 82 2C 24 72 C8 46 00 0B E4 74 9E 75 01 C7 81 73 04 D7 7A F7 2F 81 73 19 77 00 43 B7 F6 C3 6B B7 00 00 F9 FF E3 C9 C2 08 00 A3 68 72 01 FF 5D 33 C9 41 E2 26 E8 01 00 00 00 EA 5A 33 C9}
	condition:
		$0 at entrypoint
}
rule _ZealPack_10__Zeal_
{
	meta:
		description = "ZealPack 1.0 -> Zeal"
	strings:
		$0 = {C7 45 F4 00 00 40 00 C7 45 F0 ?? ?? ?? ?? 8B 45 F4 05 ?? ?? ?? ?? 89 45 F4 C7 45 FC 00 00 00 00 EB 09 8B 4D FC 83 C1 01 89 4D FC 8B 55 FC 3B 55 F0 7D 22 8B 45 F4 03 45 FC 8A 08 88 4D F8 0F BE 55 F8 83 F2 0F 88 55 F8 8B 45 F4 03 45 FC 8A 4D F8 88 08 EB CD FF 65 F4}
	condition:
		$0 at entrypoint
}
rule _Obsidium_V1258__Obsidium_Software_
{
	meta:
		description = "Obsidium V1.2.5.8 -> Obsidium Software"
	strings:
		$0 = {EB 01 ?? E8 ?? 00 00 00}
	condition:
		$0 at entrypoint
}
rule _PrincessSandy_v10_eMiNENCE_Process_Patcher_Patch_
{
	meta:
		description = "PrincessSandy v1.0 eMiNENCE Process Patcher Patch"
	strings:
		$0 = {68 27 11 40 00 E8 3C 01 00 00 6A 00 E8 41 01 00 00 A3 00 20 40 00 8B 58 3C 03 D8 0F B7 43 14 0F B7 4B 06 8D 7C 18 18 81 3F 2E 4C 4F 41 74 0B 83 C7 28 49 75 F2 E9 A7 00 00 00 8B 5F 0C 03 1D 00 20 40 00 89 1D 04 20 40 00 8B FB 83 C7 04 68 4C 20 40 00 68 08}
	condition:
		$0
}
rule _Alloy_v1x2000_
{
	meta:
		description = "Alloy v1.x.2000"
	strings:
		$0 = {9C 60 E8 02 ?? ?? ?? 33 C0 8B C4 83 C0 04 93 8B E3 8B 5B FC 81 EB 07 20 40 ?? 87 DD 6A 04 68 ?? 10 ?? ?? 68 ?? 02 ?? ?? 6A ?? FF 95 46 23 40 ?? 0B}
	condition:
		$0 at entrypoint
}
rule _PseudoSigner_01_LCC_Win32_DLL__Anorganix_
{
	meta:
		description = "PseudoSigner 0.1 [LCC Win32 DLL] --> Anorganix"
	strings:
		$0 = {55 89 E5 53 56 57 83 7D 0C 01 75 05 E8 17 90 90 90 FF 75 10 FF 75 0C FF 75 08 A1 ?? ?? ?? ?? E9}
	condition:
		$0 at entrypoint
}
rule _AHTeam_EP_Protector_03_fake_tElock_061__FEUERRADER_
{
	meta:
		description = "AHTeam EP Protector 0.3 (fake tElock 0.61) -> FEUERRADER"
	strings:
		$0 = {90 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 90 FF E0 E9 00 00 00 00 60 E8 00 00 00 00 58 83 C0 08 F3 EB FF E0 83 C0 28 50 E8 00 00 00 00 5E B3 33 8D 46 0E 8D 76 31 28 18 F8 73 00 C3 8B FE B9 3C 02}
	condition:
		$0 at entrypoint
}
rule _nPack_113002006_Beta__NEOx_
{
	meta:
		description = "nPack 1.1.300.2006 Beta -> NEOx"
	strings:
		$0 = {83 3D ?? ?? ?? ?? ?? 75 05 E9 01 00 00 00 C3 E8 46 00 00 00 E8 73 00 00 00 B8 ?? ?? ?? ?? 2B 05 ?? ?? ?? ?? A3 ?? ?? ?? ?? E8 9C 00 00 00 E8 2D 02 00 00 E8 DD 06 00 00 E8 2C 06 00 00 A1 ?? ?? ?? ?? C7 05 ?? ?? ?? ?? ?? ?? ?? ?? 01 05 ?? ?? ?? ?? FF 35 ?? ?? ?? ?? C3 C3 56 57 68 ?? ?? ?? ?? FF 15 ?? ?? ?? ?? 8B 35 ?? ?? ?? ?? 8B F8 68 ?? ?? ?? ?? 57 FF D6 68 ?? ?? ?? ?? 57 A3 ?? ?? ?? ?? FF D6 5F A3 ?? ?? ?? ?? 5E C3}
	condition:
		$0 at entrypoint
}
rule _NakedPacker_10__by_BigBoote_
{
	meta:
		description = "NakedPacker 1.0 - by BigBoote"
	strings:
		$0 = {60 FC 0F B6 05 34 ?? ?? ?? 85 C0 75 31 B8 50 ?? ?? ?? 2B 05 04 ?? ?? ?? A3 30 ?? ?? ?? A1 00 ?? ?? ?? 03 05 30 ?? ?? ?? A3 38 ?? ?? ?? E8 9A 00 00 00 A3 50 ?? ?? ?? C6 05 34 ?? ?? ?? 01 83 3D 50 ?? ?? ?? 00 75 07 61 FF 25 38 ?? ?? ?? 61 FF 74 24 04 6A 00 FF 15 44 ?? ?? ?? 50 FF 15 40 ?? ?? ?? C3 FF 74 24 04 6A 00 FF 15 44 ?? ?? ?? 50 FF 15 48 ?? ?? ?? C3 8B 4C 24 04 56 8B 74 24 10 57 85 F6 8B F9 74 0D 8B 54 24 10 8A 02 88 01}
	condition:
		$0
}
rule _PseudoSigner_02_ExeSmasher__Anorganix_
{
	meta:
		description = "PseudoSigner 0.2 [ExeSmasher] --> Anorganix"
	strings:
		$0 = {9C FE 03 90 60 BE 90 90 41 90 8D BE 90 10 FF FF 57 83 CD FF EB 10 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 FE 0B}
	condition:
		$0 at entrypoint
}
rule _hmimysPacker_V12__hmimys_
{
	meta:
		description = "hmimys-Packer V1.2 -> hmimys"
	strings:
		$0 = {E8 95 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 5E AD 50 AD 50 97 AD 50 AD 50 AD 50 E8 C0 01 00 00 AD 50 AD 93 87 DE B9 ?? ?? ?? ?? E3 1D 8A 07 47 04 ?? 3C ?? 73 F7 8B 07 3C ?? 75 F3 B0 00 0F C8 05 ?? ?? ?? ?? 2B C7 AB E2 E3 AD 85 C0 74 2B 97 56 FF 13 8B E8 AC 84 C0 75 FB 66 AD 66 85 C0 74 E9 AC 83 EE 03 84 C0 74 08 56 55 FF 53 04 AB EB E4 AD 50 55 FF 53 04 AB EB E0 C3 8B 0A 3B 4A 04 75 0A C7 42 10 01 00 00 00 0C FF C3}
	condition:
		$0 at entrypoint
}
rule _Exe_Guarder_v18__Exeiconcom_
{
	meta:
		description = "Exe Guarder v1.8 -> Exeicon.com"
	strings:
		$0 = {55 8B EC 83 C4 D0 53 56 57 8D 75 FC 8B 44 24 30 25 00 00 FF FF 81 38 4D 5A 90 00 74 07 2D 00 10 00 00 EB F1 89 45 FC E8 C8 FF FF FF 2D B2 04 00 00 89 45 F4 8B 06 8B 40 3C 03 06 8B 40 78 03 06 8B C8 8B 51 20 03 16 8B 59 24 03 1E 89 5D F0 8B 59 1C 03 1E 89}
	condition:
		$0 at entrypoint
}
rule _PureBasic_4x__Neil_Hodgson_
{
	meta:
		description = "PureBasic 4.x -> Neil Hodgson"
	strings:
		$0 = {68 ?? ?? 00 00 68 00 00 00 00 68 ?? ?? ?? 00 E8 ?? ?? ?? 00 83 C4 0C 68 00 00 00 00 E8 ?? ?? ?? 00 A3 ?? ?? ?? 00 68 00 00 00 00 68 00 10 00 00 68 00 00 00 00 E8 ?? ?? ?? 00 A3}
	condition:
		$0 at entrypoint
}
rule _Reg2Exe_225__by_Jan_Vorel_
{
	meta:
		description = "Reg2Exe 2.25 - by Jan Vorel"
	strings:
		$0 = {68 68 00 00 00 68 00 00 00 00 68 70 7D 40 00 E8 AE 20 00 00 83 C4 0C 68 00 00 00 00 E8 AF 52 00 00 A3 74 7D 40 00 68 00 00 00 00 68 00 10 00 00 68 00 00 00 00 E8 9C 52 00 00 A3 70 7D 40 00 E8 24 50 00 00 E8 E2 48 00 00 E8 44 34 00 00 E8 54 28 00 00 E8 98 27 00 00 E8 93 20 00 00 68 01 00 00 00 68 D0 7D 40 00 68 00 00 00 00 8B 15 D0 7D 40 00 E8 89 8F 00 00 B8 00 00 10 00 68 01 00 00 00 E8 9A 8F 00 00 FF 35 A4 7F 40 00 68 00 01 00 00 E8 3A 23 00 00 8D 0D A8 7D 40 00 5A E8 5E 1F 00 00 FF 35 A8 7D 40 00 68 00 01 00 00 E8 2A 52 00 00 A3 B4 7D 40 00 FF 35 A4 7F 40 00 FF 35 B4 7D 40 00 FF 35 A8 7D 40 00 E8 5C 0C 00 00 8D 0D A0 7D 40 00 5A E8 26 1F 00 00 FF 35}
	condition:
		$0 at entrypoint
}
rule _Exe_Shield_v17_
{
	meta:
		description = "Exe Shield v1.7"
	strings:
		$0 = {EB 06 68 90 1F 06 00 C3 9C 60 E8 02 00 00 00 33 C0 8B C4 83 C0 04 93 8B E3 8B 5B FC 81 EB 3F 90}
	condition:
		$0 at entrypoint
}
rule _NsPack_29__North_Star_
{
	meta:
		description = "NsPack 2.9 -> North Star"
	strings:
		$0 = {9C 60 E8 00 00 00 00 5D B8 07 00 00 00 2B E8 8D B5 ?? ?? FF FF 8A 06 3C 00 74 12 8B F5 8D B5 ?? ?? FF FF 8A 06 3C 01 0F 84 42 02 00 00 C6 06 01 8B D5 2B 95 ?? ?? FF FF 89 95 ?? ?? FF FF 01 95 ?? ?? FF FF 8D B5 ?? ?? FF FF 01 16 60 6A 40 68 00 10 00 00 68 00 10 00 00 6A 00 FF 95 ?? ?? FF FF 85 C0 0F 84 6A 03 00 00 89 85 ?? ?? FF FF E8 00 00 00 00 5B B9 68 03 00 00 03 D9 50 53 E8 B1 02 00 00 61 8B 36 8B FD 03 BD ?? ?? FF FF 8B DF 83 3F 00 75 0A 83 C7 04 B9 00 00 00 00 EB 16 B9 01 00 00 00 03 3B 83 C3 04 83 3B 00 74 36}
	condition:
		$0 at entrypoint
}
rule _ASProtect_SKE_21x_dll__Alexey_Solodovnikov_
{
	meta:
		description = "ASProtect SKE 2.1x (dll) -> Alexey Solodovnikov"
	strings:
		$0 = {60 E8 03 00 00 00 E9 EB 04 5D 45 55 C3 E8 01 00 00 00 EB 5D BB ED FF FF FF 03 DD 81 EB 00 ?? ?? ?? 80 7D 4D 01 75 0C 8B 74 24 28 83 FE 01 89 5D 4E 75 31 8D 45 53 50 53 FF B5 ED 09 00 00 8D 45 35 50 E9 82 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00}
	condition:
		$0 at entrypoint
}
rule _Upack_v022__v023_Beta__Dwing_
{
	meta:
		description = "Upack v0.22 ~ v0.23 Beta -> Dwing"
	strings:
		$0 = {6A 07 BE 88 01 40 00 AD 8B F8 59 95 F3 A5}
	condition:
		$0 at entrypoint
}
rule _MoleBox_V23X__MoleStudiocom_
{
	meta:
		description = "MoleBox V2.3X -> MoleStudio.com"
	strings:
		$0 = {E8 00 00 00 00 60 E8 4F 00 00 00}
	condition:
		$0 at entrypoint
}
rule _PECompact_2xx__BitSum_Technologies_
{
	meta:
		description = "PECompact 2.xx --> BitSum Technologies"
	strings:
		$0 = {B8 ?? ?? ?? ?? 50 64 FF 35 00 00 00 00 64 89 25 00 00 00 00 33 C0 89 08 50 45 43 6F 6D 70 61 63 74 32 00}
	condition:
		$0 at entrypoint
}
rule _RCryptor_v13__v14__Vaska_
{
	meta:
		description = "RCryptor v1.3 / v1.4 --> Vaska"
	strings:
		$0 = {55 8B EC 8B 44 24 04 83 E8 4F 68 ?? ?? ?? ?? FF D0 58 59 50}
		$1 = {55 8B EC 8B 44 24 04 83 E8 4F 68 ?? ?? ?? ?? FF D0 58 59 50 B8 ?? ?? ?? ?? 3D ?? ?? ?? ?? 74 06 80 30 ?? 40 EB F3}
	condition:
		$0 at entrypoint or $1 at entrypoint
}
rule _FSG_v131_
{
	meta:
		description = "FSG v1.31"
	strings:
		$0 = {BB D0 01 40 00 BF 00 10 40 00 BE ?? ?? ?? ?? 53 BB ?? ?? ?? ?? B2 80 A4 B6 80 FF D3 73 F9 33 C9}
	condition:
		$0 at entrypoint
}
rule _PE_Ninja_v10__pDzA_kRAker_TNT_
{
	meta:
		description = "PE Ninja v1.0 -> +DzA kRAker TNT"
	strings:
		$0 = {BE 5B 2A 40 00 BF 35 12 00 00 E8 40 12 00 00 3D 22 83 A3 C6 0F 85 67 0F 00 00 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90}
	condition:
		$0 at entrypoint
}
rule _NsPacK_V37__LiuXingPing_
{
	meta:
		description = "NsPacK V3.7 -> LiuXingPing"
	strings:
		$0 = {9C 60 E8 00 00 00 00 5D 83 ED 07 8D ?? ?? ?? ?? ?? 80 39 01 0F ?? ?? ?? 00 00}
	condition:
		$0 at entrypoint
}
rule _PseudoSigner_01_Microsoft_Visual_Cpp_50p_MFC__Anorganix_
{
	meta:
		description = "PseudoSigner 0.1 [Microsoft Visual C++ 5.0+ (MFC)] --> Anorganix"
	strings:
		$0 = {55 8B EC 6A FF 68 ?? ?? ?? ?? 68 ?? ?? ?? ?? 64 A1 00 00 00 00 50 E9}
	condition:
		$0 at entrypoint
}
rule _Obsidium_1300__Obsidium_Software_
{
	meta:
		description = "Obsidium 1.3.0.0 -> Obsidium Software"
	strings:
		$0 = {EB 04 ?? ?? ?? ?? E8 29 00 00 00 EB 02 ?? ?? EB 01 ?? 8B 54 24 0C EB 02 ?? ?? 83 82 B8 00 00 00 22 EB 02 ?? ?? 33 C0 EB 04 ?? ?? ?? ?? C3 EB 04 ?? ?? ?? ?? EB 04 ?? ?? ?? ?? 64 67 FF 36 00 00 EB 04 ?? ?? ?? ?? 64 67 89 26 00 00 EB 04 ?? ?? ?? ?? EB 01 ?? 50 EB 03 ?? ?? ?? 33 C0 EB 02 ?? ?? 8B 00 EB 01 ?? C3 EB 04 ?? ?? ?? ?? E9 FA 00 00 00 EB 01 ?? E8 D5 FF FF FF EB 02 ?? ?? EB 03 ?? ?? ?? 58 EB 04 ?? ?? ?? ?? EB 01 ?? 64 67 8F 06 00 00 EB 02 ?? ?? 83 C4 04 EB 02 ?? ?? E8 47 26 00 00}
	condition:
		$0 at entrypoint
}
rule _PseudoSigner_01__Anorganix_
{
	meta:
		description = "PseudoSigner 0.1 --> Anorganix"
	strings:
		$0 = {90 90 90 90 68 ?? ?? ?? ?? 67 64 FF 36 00 00 67 64 89 26 00 00 F1 90 90 90 90}
	condition:
		$0 at entrypoint
}
rule _RCryptor_v11__Vaska_
{
	meta:
		description = "RCryptor v1.1 --> Vaska"
	strings:
		$0 = {8B 04 24 83 E8 4F 68 ?? ?? ?? ?? FF D0}
		$1 = {8B 04 24 83 E8 4F 68 ?? ?? ?? ?? FF D0 B8 ?? ?? ?? ?? 3D ?? ?? ?? ?? 74 06 80 30 ?? 40 EB F3}
	condition:
		$0 or $1
}
rule _WinZip_32bit_6x_
{
	meta:
		description = "WinZip (32-bit) 6.x"
	strings:
		$0 = {FF 15 FC 81 40 00 B1 22 38 08 74 02 B1 20 40 80 38 00 74 10}
	condition:
		$0 at entrypoint
}
rule _vfpexeNc_V500__Wang_JianGuo_
{
	meta:
		description = "vfp&exeNc V5.00 -> Wang JianGuo"
	strings:
		$0 = {60 E8 00 00 00 00 5D ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 50 64 FF 35 00 00 00 00 64 89 25 00 00 00 00 CC}
	condition:
		$0 at entrypoint
}
rule _USSR_031__by_Spirit_
{
	meta:
		description = "USSR 0.31 - by Spirit"
	strings:
		$0 = {E8 00 00 00 00 5D 83 C5 12 55 C3 20 83 B8 ED 20 37 EF C6 B9 79 37 9E 8C C9 30 C9 E3 01 C3 BE 32 ?? ?? ?? B0 ?? 30 06 8A 06 46 81 FE 00 ?? ?? ?? 7C F3}
	condition:
		$0
}
rule _Upack_Patch_or_any_Version__Dwing_
{
	meta:
		description = "Upack_Patch or any Version -> Dwing"
	strings:
		$0 = {60 E8 09 00 00 00 ?? ?? ?? 00 E9 06 02}
	condition:
		$0 at entrypoint
}
rule _PECompact_v110b7_
{
	meta:
		description = "PECompact v1.10b7"
	strings:
		$0 = {EB 06 68 ?? ?? ?? ?? C3 9C 60 E8 02 ?? ?? ?? 33 C0 8B C4 83 C0 04 93 8B E3 8B 5B FC 81 EB 0F 60 40 ?? 87 DD 8B 85 9A 60 40 ?? 01 85 03 60 40 ?? 66 C7 85 ?? 60 40 ?? 90 90 01 85 92 60 40 ?? BB 14}
	condition:
		$0 at entrypoint
}
rule _ExeTools_COM2EXE_
{
	meta:
		description = "ExeTools COM2EXE"
	strings:
		$0 = {E8 ?? ?? 5D 83 ED ?? 8C DA 2E 89 96 ?? ?? 83 C2 ?? 8E DA 8E C2 2E 01 96 ?? ?? 60}
	condition:
		$0 at entrypoint
}
rule _Vterminal_V10X__Lei_Peng_
{
	meta:
		description = "Vterminal V1.0X -> Lei Peng"
	strings:
		$0 = {E8 00 00 00 00 58 05 ?? ?? ?? ?? 9C 50 C2 04 00}
	condition:
		$0 at entrypoint
}
rule _Nullsoft_Install_System_v198_
{
	meta:
		description = "Nullsoft Install System v1.98"
	strings:
		$0 = {83 EC 0C 53 56 57 FF 15 2C 81 40}
	condition:
		$0 at entrypoint
}
rule _PEtite_v12_
{
	meta:
		description = "PEtite v1.2"
	strings:
		$0 = {9C 60 E8 CA ?? ?? ?? 03 ?? 04 ?? 05 ?? 06 ?? 07 ?? 08}
	condition:
		$0 at entrypoint
}
rule _FSG_v110_Eng__dulekxt__Microsoft_Visual_Cpp_60__70__ASM_
{
	meta:
		description = "FSG v1.10 (Eng) -> dulek/xt -> (Microsoft Visual C++ 6.0 / 7.0 / ASM)"
	strings:
		$0 = {E8 01 00 00 00 5A 5E E8 02 00 00 00 BA DD 5E 03 F2 EB 01 64 BB 80 ?? ?? 00 8B FA EB 01 A8}
	condition:
		$0 at entrypoint
}
rule _ASProtect_v__If_you_know_this_version_post_on_PEiD_board_h2_
{
	meta:
		description = "ASProtect v?.? -> If you know this version, post on PEiD board (h2)"
	strings:
		$0 = {90 60 E8 03 00 00 00 E9 EB 04 5D 45 55 C3 E8 01 00 00 00 EB 5D BB ED FF FF FF 03 DD 81 EB 00 ?? ?? 00 80 7D 4D 01 75 0C 8B 74 24 28 83 FE 01 89 5D 4E 75 31 8D 45 53 50 53 FF B5 DD 09 00 00 8D 45 35 50 E9 82 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00}
	condition:
		$0
}
rule _Armadillo_v190_
{
	meta:
		description = "Armadillo v1.90"
	strings:
		$0 = {55 8B EC 6A FF 68 10 F2 40 00 68 64 9A 40 00 64 A1 00 00 00 00 50 64 89 25 00 00 00 00 83 EC 58}
	condition:
		$0 at entrypoint
}
rule _VMProtect_106107__PolyTech_
{
	meta:
		description = "VMProtect 1.06..1.07 -> PolyTech"
	strings:
		$0 = {9C 60 68 00 00 00 00 8B 74 24 28 BF ?? ?? ?? ?? FC 89 F3 03 34 24 AC 00 D8}
	condition:
		$0
}
rule _PseudoSigner_02_FSG_131__Anorganix_
{
	meta:
		description = "PseudoSigner 0.2 [FSG 1.31] --> Anorganix"
	strings:
		$0 = {BE 90 90 90 00 BF 90 90 90 00 BB 90 90 90 00 53 BB 90 90 90 00 B2 80}
	condition:
		$0 at entrypoint
}
rule _XtremeProtector_v105_
{
	meta:
		description = "Xtreme-Protector v1.05"
	strings:
		$0 = {E9 ?? ?? 00 00 00 00 00 00 00 00}
	condition:
		$0 at entrypoint
}
rule _Private_Exe_Protector_1x__setisoft_
{
	meta:
		description = "Private Exe Protector 1.x -> setisoft"
	strings:
		$0 = {B8 ?? ?? ?? ?? B9 ?? 90 01 ?? BE ?? 10 40 ?? 68 50 91 41 ?? 68 01 ?? ?? ?? C3}
	condition:
		$0 at entrypoint
}
rule _Frusion__biff_
{
	meta:
		description = "Frusion -> biff"
	strings:
		$0 = {83 EC 0C 53 55 56 57 68 04 01 00 00 C7 44 24 14}
	condition:
		$0 at entrypoint
}
rule _VProtector_V10B__vcasm_
{
	meta:
		description = "VProtector V1.0B -> vcasm"
	strings:
		$0 = {55 8B EC 6A FF 68 CA 37 41 00 68 06 38 41 00 64 A1 00 00 00 00 50 64 89 25 00 00 00 00 E8 03 00 00 00 C7 84 00 58 EB 01 E9 83 C0 07 50}
	condition:
		$0 at entrypoint
}
rule _MaskPE_16__yzkzero_
{
	meta:
		description = "MaskPE 1.6 -> yzkzero"
	strings:
		$0 = {36 81 2C 24 ?? ?? ?? 00 C3 60}
	condition:
		$0
}
rule _XHider_10__GlobaL_
{
	meta:
		description = "X-Hider 1.0 -> GlobaL"
	strings:
		$0 = {55 8B EC 83 C4 EC 33 C0 89 45 EC B8 54 20 44 44 E8 DF F8 FF FF 33 C0 55 68 08 21 44 44 64 FF 30 64 89 20 8D 55 EC B8 1C 21 44 44 E8 E0 F9 FF FF 8B 55 EC B8 40 ?? ?? 44 E8 8B F5 FF FF 6A 00 6A 00 6A 02 6A 00 6A 01 68 00 00 00 40 A1 40 ?? ?? 44 E8 7E F6 FF FF 50 E8 4C F9 FF FF 6A 00 50 E8 4C F9 FF FF A3 28 ?? ?? 44 E8 CE FE FF FF 33 C0 5A 59 59 64 89 10 68 0F 21 44 44 8D 45 EC E8 F1 F4 FF FF C3 E9 BB F2 FF FF EB F0 E8 FC F3 FF FF FF FF FF FF 0E 00 00 00 63 3A 5C 30 30 30 30 30 30 31 2E 64 61 74 00}
		$1 = {85 D2 74 23 8B 4A F8 41 7F 1A 50 52 8B 42 FC E8 30 00 00 00 89 C2 58 52 8B 48 FC E8 48 FB FF FF 5A 58 EB 03 FF 42 F8 87 10 85 D2 74 13 8B 4A F8 49 7C 0D FF 4A F8 75 08 8D 42 F8 E8 5C FA FF FF C3 8D 40 00 85 C0 7E 24 50 83 C0 0A 83 E0 FE 50 E8 2F FA FF FF 5A 66 C7 44 02 FE 00 00 83 C0 08 5A 89 50 FC C7 40 F8 01 00 00 00 C3 31 C0 C3 90}
	condition:
		$0 at entrypoint or $1
}
rule _ORiEN_V212__Fisun_AV_
{
	meta:
		description = "ORiEN V2.12 -> Fisun A.V."
	strings:
		$0 = {E9 5D 01 00 00 CE D1 CE CD 0D}
	condition:
		$0 at entrypoint
}
rule _beria_v007_public_WIP__symbiont_
{
	meta:
		description = "beria v0.07 public WIP --> symbiont"
	strings:
		$0 = {83 EC 18 53 8B 1D 00 30 ?? ?? 55 56 57 68 30 07 00 00 33 ED 55 FF D3 8B F0 3B F5 74 0D 89 AE 20 07 00 00 E8 88 0F 00 00 EB 02 33 F6 6A 10 55 89 35 30 40 ?? ?? FF D3 8B F0 3B F5 74 09 89 2E E8 3C FE FF FF EB 02 33 F6 6A 18 55 89 35 D8 43 ?? ?? FF D3 8B F0}
	condition:
		$0 at entrypoint
}
rule _MEW_11_SE_v12_
{
	meta:
		description = "MEW 11 SE v1.2"
	strings:
		$0 = {E9 ?? ?? ?? FF 0C ?? 00 00 00 00 00 00 00 00 00 00 ?? ?? ?? 00 0C ?? 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00}
	condition:
		$0
}
rule _Packman_0001__bubba_
{
	meta:
		description = "Packman 0.0.0.1 -> bubba"
	strings:
		$0 = {60 E8 00 00 00 00 58 8D A8 ?? FE FF FF 8D 98 ?? ?? ?? FF 8D ?? ?? 01 00 00}
	condition:
		$0 at entrypoint
}
rule _PseudoSigner_02_Macromedia_Flash_Projector_60__Anorganix_
{
	meta:
		description = "PseudoSigner 0.2 [Macromedia Flash Projector 6.0] --> Anorganix"
	strings:
		$0 = {90 90 90 90 68 ?? ?? ?? ?? 67 64 FF 36 00 00 67 64 89 26 00 00 F1 90 90 90 90 83 EC 44 56 FF 15 24 81 49 00 8B F0 8A 06 3C 22 75 1C 8A 46 01 46 3C 22 74 0C 84 C0 74 08 8A 46 01 46 3C 22 75 F4 80 3E 22 75 0F 46 EB 0C}
	condition:
		$0 at entrypoint
}
rule _Crunch_v5__BitArts_
{
	meta:
		description = "Crunch v5 -> Bit-Arts"
	strings:
		$0 = {EB 15 03 00 00 00 06 00 00 00 00 00 00 00 00 00 00 00 68 00 00 00 00 55 E8 00 00 00 00 5D 81 ED 1D 00 00 00 8B C5 55 60 9C 2B 85 FC 07 00 00 89 85 E8 07 00 00 FF 74 24 2C E8 20 02 00 00 0F 82 94 06 00 00 E8 F3 04 00 00 49 0F 88 88 06 00 00 8B B5 E8 07 00}
	condition:
		$0 at entrypoint
}
rule _PECompact_v0977_
{
	meta:
		description = "PECompact v0.977"
	strings:
		$0 = {EB 06 68 ?? ?? ?? ?? C3 9C 60 E8 02 ?? ?? ?? 33 C0 8B C4 83 C0 04 93 8B E3 8B 5B FC 81 EB A0 86 40 ?? 87 DD 8B 85 2A 87}
	condition:
		$0 at entrypoint
}
rule _Winkript_v10_
{
	meta:
		description = "Winkript v1.0"
	strings:
		$0 = {33 C0 8B B8 00 ?? ?? ?? 8B 90 04 ?? ?? ?? 85 FF 74 1B 33 C9 50 EB 0C 8A 04 39 C0 C8 04 34 1B 88 04 39 41 3B CA 72 F0 58}
	condition:
		$0 at entrypoint
}
rule _RLPack_V115V117_Dll__ap0x_
{
	meta:
		description = "RLPack V1.15-V1.17 Dll -> ap0x"
	strings:
		$0 = {80 7C 24 08 01 0F 85 ?? 01 00 00 60 E8 00 00 00 00 8B 2C 24 83 C4 04 8D B5 ?? ?? ?? ?? 8D 9D ?? ?? ?? ?? 33 FF E8}
	condition:
		$0 at entrypoint
}
rule _NJoy_12__NEX_
{
	meta:
		description = "N-Joy 1.2 -> NEX"
	strings:
		$0 = {55 8B EC 83 C4 F0 B8 A4 32 40 00 E8 E8 F1 FF FF 6A 00 68 54 2A 40 00 6A 0A 6A 00 E8 A8 F2 FF FF E8 C7 EA FF FF 8D 40 00}
	condition:
		$0 at entrypoint
}
rule _Crinkler_V03V04__Rune_LHStubbe_and_Aske_Simon_Christensen_
{
	meta:
		description = "Crinkler V0.3-V0.4 -> Rune L.H.Stubbe and Aske Simon Christensen"
	strings:
		$0 = {B8 00 00 42 00 31 DB 43 EB 58}
	condition:
		$0 at entrypoint
}
rule _FSG_v120_Eng__dulekxt__Borland_Delphi__Borland_Cpp_
{
	meta:
		description = "FSG v1.20 (Eng) -> dulek/xt -> (Borland Delphi / Borland C++)"
	strings:
		$0 = {0F BE C1 EB 01 0E 8D 35 C3 BE B6 22 F7 D1 68 43 ?? ?? 22 EB 02 B5 15 5F C1 F1 15 33 F7 80 E9 F9 BB F4 00 00 00 EB 02 8F D0 EB 02 08 AD 8A 16 2B C7 1B C7 80 C2 7A 41 80 EA 10 EB 01 3C 81 EA CF AE F1 AA EB 01 EC 81 EA BB C6 AB EE 2C E3 32 D3 0B CB 81 EA AB}
	condition:
		$0 at entrypoint
}
rule _UPXcrypter__archphaseNWC_
{
	meta:
		description = "UPXcrypter -> archphase/NWC"
	strings:
		$0 = {BF ?? ?? ?? 00 81 FF ?? ?? ?? 00 74 10 81 2F ?? 00 00 00 83 C7 04 BB 05 ?? ?? 00 FF E3 BE ?? ?? ?? 00 FF E6 00 00 00 00}
	condition:
		$0 at entrypoint
}
rule _Armadillo_v260a_
{
	meta:
		description = "Armadillo v2.60a"
	strings:
		$0 = {55 8B EC 6A FF 68 ?? ?? ?? ?? 68 94 ?? ?? ?? 64 A1 ?? ?? ?? ?? 50 64 89 25 ?? ?? ?? ?? 83 EC 58 53 56 57 89 65 E8 FF 15 6C ?? ?? ?? 33 D2 8A D4 89 15 B4}
	condition:
		$0 at entrypoint
}
rule _yodas_Protector_V1032__Ashkbiz_Danehkar_
{
	meta:
		description = "yoda's Protector V1.03.2 -> Ashkbiz Danehkar"
	strings:
		$0 = {E8 03 00 00 00 EB 01 ?? BB 55 00 00 00 E8 03 00 00 00 EB 01 ?? E8 8F 00 00 00 E8 03 00 00 00 EB 01 ?? E8 82 00 00 00 E8 03 00 00 00 EB 01 ?? E8 B8 00 00 00 E8 03 00 00 00 EB 01 ?? E8 AB 00 00 00 E8 03 00 00 00 EB 01 ?? 83 FB 55 E8 03 00 00 00 EB 01 ?? 75 2E E8 03 00 00 00 EB 01 ?? C3 60 E8 00 00 00 00 5D 81 ED 94 73 42 00 8B D5 81 C2 E3 73 42 00 52 E8 01 00 00 00 C3 C3 E8 03 00 00 00 EB 01 ?? E8 0E 00 00 00 E8 D1 FF FF FF C3 E8 03 00 00 00 EB 01 ?? 33 C0 64 FF 30 64 89 20 CC C3 E8 03 00 00 00 EB 01 ?? 33 C0 64 FF 30 64 89 20 4B CC C3 E8 03 00 00 00 EB 01 ?? 33 DB B9 BF A4 42 00 81 E9 8E 74 42 00 8B D5 81 C2 8E 74 42 00 8D 3A 8B F7 33 C0 E8 03 00 00 00 EB 01 ?? E8 17 00 00 00 90 90 90 E9 63 29 00 00 33 C0 64 FF 30 64 89 20 43 CC C3}
	condition:
		$0 at entrypoint
}
rule _aPack_v082_
{
	meta:
		description = "aPack v0.82"
	strings:
		$0 = {1E 06 8C CB BA ?? ?? 03 DA 8D ?? ?? ?? FC 33 F6 33 FF 48 4B 8E C0 8E DB}
	condition:
		$0 at entrypoint
}
rule _MSLRH_v01__emadicius_
{
	meta:
		description = "[MSLRH] v0.1 -> emadicius"
	strings:
		$0 = {60 EB 05 E8 EB 04 40 00 EB FA E8 0A 00 00 00 E8 EB 0C 00 00 E8 F6 FF FF FF E8 F2 FF FF FF 83 C4 08 74 04 75 02 EB 02 EB 01 81 E8 0A 00 00 00 E8 EB 0C 00 00 E8 F6 FF FF FF E8 F2 FF FF FF 83 C4 08 74 04 75 02 EB 02 EB 01 81 E8 0A 00 00 00 E8 EB 0C 00 00 E8}
		$1 = {60 EB 05 E8 EB 04 40 00 EB FA E8 0A 00 00 00 E8 EB 0C 00 00 E8 F6 FF FF FF E8 F2 FF FF FF 83 C4 08 74 04 75 02 EB 02 EB 01 81 E8 0A 00 00 00 E8 EB 0C 00 00 E8 F6 FF FF FF E8 F2 FF FF FF 83 C4 08 74 04 75 02 EB 02 EB 01 81 E8 0A 00 00 00 E8 EB 0C 00 00 E8 F6 FF FF FF E8 F2 FF FF FF 83 C4 08 74 04 75 02 EB 02 EB 01 81 0F 31 50 0F 31 E8 0A 00 00 00 E8 EB 0C 00 00 E8 F6 FF FF FF E8 F2 FF FF FF 83 C4 08 2B 04 24 74 04 75 02 EB 02 EB 01 81 83 C4 04 E8 0A 00 00 00 E8 EB 0C 00 00 E8 F6 FF FF FF E8 F2 FF FF FF 83 C4 08 3D FF 0F 00 00 EB 01 68 EB 02 CD 20 EB 01 E8 76 1B EB 01 68 EB 02 CD 20 EB 01 E8 CC 66 B8 FE 00 74 04 75 02 EB 02 EB 01 81 66 E7 64 E8 0A 00 00 00 E8 EB 0C 00 00 E8 F6 FF FF FF E8 F2 FF FF FF 83 C4 08 74 04 75 02 EB 02 EB 01 81 0F 31 50 0F 31 E8 0A 00 00 00 E8 EB 0C 00 00 E8 F6 FF FF FF E8 F2 FF FF FF 83 C4 08}
	condition:
		$0 or $1 at entrypoint
}
rule _Armadillo_v201_
{
	meta:
		description = "Armadillo v2.01"
	strings:
		$0 = {55 8B EC 6A FF 68 08 02 41 00 68 04 9A 40 00 64 A1 00 00 00 00 50 64 89 25 00 00 00 00 83 EC 58}
	condition:
		$0 at entrypoint
}
rule _HEALTH_v51_by_Muslim_MPolyak_
{
	meta:
		description = "HEALTH v.5.1 by Muslim M.Polyak"
	strings:
		$0 = {1E E8 ?? ?? 2E 8C 06 ?? ?? 2E 89 3E ?? ?? 8B D7 B8 ?? ?? CD 21 8B D8 0E 1F E8 ?? ?? 06 57 A1 ?? ?? 26}
	condition:
		$0 at entrypoint
}
rule _BeRoEXEPacker_V100__BeRo_
{
	meta:
		description = "BeRoEXEPacker V1.00 -> BeRo"
	strings:
		$0 = {BA ?? ?? ?? ?? 8D B2 ?? ?? ?? ?? 8B 46 ?? 85 C0 74 51 03 C2 8B 7E ?? 8B 1E 85 DB 75 02 8B DF 03 DA 03 FA 52 57 50 FF 15 ?? ?? ?? ?? 5F 5A 85 C0 74 2F 8B C8 8B 03 85 C0 74 22 0F BA F0 1F 72 04 8D 44 ?? ?? 51 52 57 50 51 FF 15 ?? ?? ?? ?? 5F 5A 59 85 C0 74 0B AB 83 C3 04 EB D8 83 C6 14 EB AA 61 C3}
	condition:
		$0
}
rule _AHTeam_EP_Protector_03_fake_SVKP_13x__FEUERRADER_
{
	meta:
		description = "AHTeam EP Protector 0.3 (fake SVKP 1.3x) -> FEUERRADER"
	strings:
		$0 = {90 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 90 FF E0 60 E8 00 00 00 00 5D 81 ED 06 00 00 00 EB 05 B8 00 00 00 00 64 A0 23 00 00 00 EB 03 C7 84 E8 84 C0 EB 03 C7 84 E9 75 67 B9 49 00 00 00 8D B5 C5 02 00 00 56 80 06 44 46 E2 FA 8B 8D C1 02 00 00 5E 55 51 6A 00}
	condition:
		$0 at entrypoint
}
rule _Private_EXE_Protector_18_
{
	meta:
		description = "Private EXE Protector 1.8"
	strings:
		$0 = {BB DC EE 0D 76 D9 D0 8D 16 85 D8 90 D9 D0}
	condition:
		$0
}
rule _NSPack_3x__Liu_Xing_Ping_
{
	meta:
		description = "NSPack 3.x -> Liu Xing Ping"
	strings:
		$0 = {9C 60 E8 00 00 00 00 5D 83 ED 07 8D 85 ?? ?? FF FF ?? 38 01 0F 84 ?? 02 00 00 ?? 00 01}
	condition:
		$0 at entrypoint
}
rule _ASProtect_v10_
{
	meta:
		description = "ASProtect v1.0"
	strings:
		$0 = {60 E8 01 ?? ?? ?? 90 5D 81 ED ?? ?? ?? ?? BB ?? ?? ?? ?? 03 DD 2B 9D}
	condition:
		$0 at entrypoint
}
rule _Pohernah_102__by_Kas_
{
	meta:
		description = "Pohernah 1.0.2 - by Kas"
	strings:
		$0 = {60 E8 00 00 00 00 5D 81 ED DE 26 40 00 8B BD 05 28 40 00 8B 8D 0D 28 40 00 B8 25 28 40 00 01 E8 80 30 05 83 F9 00 74 71 81 7F 1C AB 00 00 00 75 62 8B 57 0C 03 95 09 28 40 00 31 C0 51 31 C9 66 B9 F7 00 66 83 F9 00 74 49 8B 57 0C 03 95 09 28 40 00 8B 85 11 28 40 00 83 F8 02 75 06 81 C2 00 02 00 00 51 8B 4F 10 83 F8 02 75 06 81 E9 00 02 00 00 57 BF C8 00 00 00 89 CE E8 27 00 00 00 89 C1 5F B8 25 28 40 00 01 E8 E8 24 00 00 00 59 49 EB B1 59 83 C7 28 49 EB 8A 8B 85 01 28 40 00 89 44 24 1C 61 FF E0 56 57 4F F7 D7 21 FE 89 F0 5F 5E C3 60 83 F0 05 40 90 48 83 F0 05 89 C6 89 D7 60 E8 0B 00 00 00 61 83 C7 08 83 E9 07 E2 F1 61 C3 57 8B 1F 8B 4F 04 68 B9 79 37 9E 5A 42 89 D0 48 C1 E0 05 BF 20 00 00 00 4A 89 DD C1 E5 04 29 E9 8B 6E 08 31 DD 29 E9 89 DD C1 ED 05 31 C5 29 E9 2B 4E 0C 89 CD C1 E5 04 29 EB 8B 2E 31 CD 29 EB 89 CD C1 ED 05 31 C5 29 EB 2B 5E 04 29 D0 4F 75 C8 5F 89 1F 89 4F 04 C3}
	condition:
		$0 at entrypoint
}
rule _Upack_v024__v028_Alpha__Dwing_
{
	meta:
		description = "Upack v0.24 ~ v0.28 Alpha -> Dwing"
	strings:
		$0 = {BE 88 01 40 00 AD ?? ?? 95 AD 91 F3 A5 AD}
	condition:
		$0 at entrypoint
}
rule _ARM_Protector_03__by_SMoKE_
{
	meta:
		description = "ARM Protector 0.3 - by SMoKE"
	strings:
		$0 = {E8 04 00 00 00 83 60 EB 0C 5D EB 05 45 55 EB 04 B8 EB F9 00 C3 E8 00 00 00 00 5D EB 01 00 81 ED 13 24 40 00 EB 02 83 09 8D B5 A4 24 40 00 EB 02 83 09 BA 4B 15 00 00 EB 01 00 8D 8D EF 39 40 00 8B 09 E8 14 00 00 00 83 EB 01 00 8B FE E8 00 00 00 00 58 83 C0 07 50 C3 00 EB 04 58 40 50 C3 8A 06 46 EB 01 00 D0 C8 E8 14 00 00 00 83 EB 01 00 2A C2 E8 00 00 00 00 5B 83 C3 07 53 C3 00 EB 04 5B 43 53 C3 EB 01 00 32 C2 E8 0B 00 00 00 00 32 C1 EB 01 00 C0 C0 02 EB 09 2A C2 5B EB 01 00 43 53 C3 88 07 EB 01 00 47 4A 75 B4}
	condition:
		$0
}
rule _PE_Diminisher_v01_
{
	meta:
		description = "PE Diminisher v0.1"
	strings:
		$0 = {53 51 52 56 57 55 E8 00 00 00 00 5D 8B D5 81 ED A2 30 40 00 2B 95 91 33 40 00 81 EA 0B 00 00 00 89 95 9A 33 40 00 80 BD 99 33 40 00 00 74}
		$1 = {5D 8B D5 81 ED A2 30 40 ?? 2B 95 91 33 40 ?? 81 EA 0B ?? ?? ?? 89 95 9A 33 40 ?? 80 BD 99}
	condition:
		$0 at entrypoint or $1 at entrypoint
}
rule _ExeLock_v100_
{
	meta:
		description = "ExeLock v1.00"
	strings:
		$0 = {06 8C C8 8E C0 BE ?? ?? 26 ?? ?? 34 ?? 26 ?? ?? 46 81 ?? ?? ?? 75 ?? 40 B3 ?? B3 ?? F3}
	condition:
		$0 at entrypoint
}
rule _Password_Protector_c_MiniSoft_1992_
{
	meta:
		description = "Password Protector (c) MiniSoft 1992"
	strings:
		$0 = {06 0E 0E 07 1F E8 00 00 5B 83 EB 08 BA 27 01 03 D3 E8 3C 02 BA EA}
	condition:
		$0 at entrypoint
}
rule _EXE32Pack_v13x_
{
	meta:
		description = "EXE32Pack v1.3x"
	strings:
		$0 = {3B ?? 74 02 81 83 55 3B ?? 74 02 81 ?? 53 3B ?? 74 01 ?? ?? ?? ?? ?? 02 81 ?? ?? E8 ?? ?? ?? ?? 3B 74 01 ?? 5D 8B D5 81 ED}
	condition:
		$0 at entrypoint
}
rule _Stones_PE_Encryptor_v10_
{
	meta:
		description = "Stone's PE Encryptor v1.0"
	strings:
		$0 = {55 57 56 52 51 53 E8 ?? ?? ?? ?? 5D 8B D5 81 ED 63 3A 40 ?? 2B 95 C2 3A 40 ?? 83 EA 0B 89 95 CB 3A 40 ?? 8D B5 CA 3A 40 ?? 0F B6 36}
	condition:
		$0 at entrypoint
}
rule _PseudoSigner_02_32Lite_003__Anorganix_
{
	meta:
		description = "PseudoSigner 0.2 [32Lite 0.03] --> Anorganix"
	strings:
		$0 = {60 06 FC 1E 07 BE 90 90 90 90 6A 04 68 90 10 90 90 68}
	condition:
		$0 at entrypoint
}
rule _PseudoSigner_02_JDPack_1x__JDProtect_09__Anorganix_
{
	meta:
		description = "PseudoSigner 0.2 [JDPack 1.x / JDProtect 0.9] --> Anorganix"
	strings:
		$0 = {60 E8 22 00 00 00 5D 8B D5 81 ED 90 90 90 90 2B 95 90 90 90 90 81 EA 06 90 90 90 89 95 90 90 90 90 83 BD 45 00 01 00 01}
	condition:
		$0 at entrypoint
}
rule _WWPACK_v305c4_Extractable_p_Virus_Shield_
{
	meta:
		description = "WWPACK v3.05c4 (Extractable + Virus Shield)"
	strings:
		$0 = {03 05 40 1A B8 ?? ?? 8C CA 03 D0 8C C9 81 C1 ?? ?? 51 B9 ?? ?? 51 06 06 B1 ?? 51 8C D3}
	condition:
		$0 at entrypoint
}
rule _Upack_v032_Beta__Dwing_
{
	meta:
		description = "Upack v0.32 Beta -> Dwing"
	strings:
		$0 = {BE 88 01 ?? ?? AD 50 ?? ?? AD 91 F3 A5}
		$1 = {BE 88 01 ?? ?? AD 50 ?? AD 91 ?? F3 A5}
	condition:
		$0 or $1
}
rule _PECompact_v09782_
{
	meta:
		description = "PECompact v0.978.2"
	strings:
		$0 = {EB 06 68 ?? ?? ?? ?? C3 9C 60 E8 02 ?? ?? ?? 33 C0 8B C4 83 C0 04 93 8B E3 8B 5B FC 81 EB D1 84 40 ?? 87 DD 8B 85 56 85}
	condition:
		$0 at entrypoint
}
rule _Unnamed_Scrambler_13B__p0ke_
{
	meta:
		description = "Unnamed Scrambler 1.3B -> p0ke"
	strings:
		$0 = {55 8B EC B9 08 00 00 00 6A 00 6A 00 49 75 F9 53 56 57 B8 98 56 00 10 E8 48 EB FF FF 33 C0 55 68 AC 5D 00 10 64 FF 30 64 89 20 6A 00 68 BC 5D 00 10 68 C4 5D 00 10 6A 00 E8 23 EC FF FF E8 C6 CE FF FF 6A 00 68 BC 5D 00 10 68 ?? ?? ?? ?? 6A 00 E8 0B EC FF FF E8 F2 F4 FF FF B8 08 BC 00 10 33 C9 BA 04 01 00 00 E8 C1 D2 FF FF 6A 00 68 BC 5D 00 10 68 E4 5D 00 10 6A 00 E8 E2 EB FF FF 68 04 01 00 00 68 08 BC 00 10 6A 00 FF 15 68 77 00 10 6A 00 68 BC 5D 00 10 68 FC 5D 00 10 6A 00 E8 BD EB FF FF BA 10 5E 00 10 B8 70 77 00 10 E8 CA F3 FF FF 85 C0 0F 84 F7 05 00 00 BA 74 77 00 10 8B 0D 70 77 00 10 E8 FE CD FF FF 6A 00}
	condition:
		$0 at entrypoint
}
rule _AverCryptor_10__os1r1s_
{
	meta:
		description = "AverCryptor 1.0 -> os1r1s"
	strings:
		$0 = {60 E8 00 00 00 00 5D 81 ED 75 17 40 00 8B BD 9C 18 40 00 8B 8D A4 18 40 00 B8 BC 18 40 00 03 C5 80 30 05 83 F9 00 74 71 81 7F 1C AB 00 00 00 75 62 8B 57 0C 03 95 A0 18 40 00 33 C0 51 33 C9 66 B9 FA 00 66 83 F9 00 74 49 8B 57 0C 03 95 A0 18 40 00 8B 85 A8 18 40 00 83 F8 02 75 06 81 C2 00 02 00 00 51 8B 4F 10 83 F8 02 75 06 81 E9 00 02 00 00 57 BF C8 00 00 00 8B F1 E8 27 00 00 00 8B C8 5F B8 BC 18 40 00 03 C5 E8 24 00 00 00 59 49 EB B1 59 83 C7 28 49 EB 8A 8B 85 98 18 40 00 89 44 24 1C 61 FF E0 56 57 4F F7 D7 23 F7 8B C6 5F 5E C3}
	condition:
		$0 at entrypoint
}
rule _NsPack_V14__LiuXingPing_
{
	meta:
		description = "NsPack V1.4 -> LiuXingPing"
	strings:
		$0 = {9C 60 E8 00 00 00 00 5D B8 B1 85 40 00 2D AA 85 40 00}
	condition:
		$0 at entrypoint
}
rule _PEiDBundle_v102__v103_DLL__BoB__BobSoft_
{
	meta:
		description = "PEiD-Bundle v1.02 - v1.03 DLL --> BoB / BobSoft"
	strings:
		$0 = {83 7C 24 08 01 0F 85 ?? ?? ?? ?? 60 E8 9C 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 41 00 08 00 39 00 08 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 01 00 00 80 00 00 00}
	condition:
		$0 at entrypoint
}
rule _PseudoSigner_01_Stelth_PE_101__Anorganix_
{
	meta:
		description = "PseudoSigner 0.1 [Ste@lth PE 1.01] --> Anorganix"
	strings:
		$0 = {0B C0 0B C0 0B C0 0B C0 0B C0 0B C0 0B C0 0B C0 BA ?? ?? ?? ?? FF E2 BA E0 10 40 00 B8 68 24 1A 40 89 02 83 C2 03 B8 40 00 E8 EE 89 02 83 C2 FD FF E2 2D 3D 5B 20 48 69 64 65 50 45 20 5D 3D 2D 90 00 00 00}
	condition:
		$0 at entrypoint
}
rule _Vx_NcuLi1688_
{
	meta:
		description = "Vx: Ncu-Li.1688"
	strings:
		$0 = {0E 1E B8 55 AA CD 21 3D 49 4C 74 ?? 0E 0E 1F 07 E8}
	condition:
		$0 at entrypoint
}
rule _ExeShield_Cryptor_13RC__Tom_Commander_
{
	meta:
		description = "ExeShield Cryptor 1.3RC -> Tom Commander"
	strings:
		$0 = {55 8B EC 53 56 57 60 E8 00 00 00 00 5D 81 ED 8C 21 40 00 B9 51 2D 40 00 81 E9 E6 21 40 00 8B D5 81 C2 E6 21 40 00 8D 3A 8B F7 33 C0 EB 04 90 EB 01 C2 AC}
	condition:
		$0 at entrypoint
}
rule _PseudoSigner_01_FSG_131__Anorganix_
{
	meta:
		description = "PseudoSigner 0.1 [FSG 1.31] --> Anorganix"
	strings:
		$0 = {BE 90 90 90 00 BF 90 90 90 00 BB 90 90 90 00 53 BB 90 90 90 00 B2 80 E9}
	condition:
		$0 at entrypoint
}
rule _kkrunchy_023_alpha__Ryd_
{
	meta:
		description = "kkrunchy 0.23 alpha -> Ryd"
	strings:
		$0 = {BD 08 ?? ?? 00 C7 45 00 ?? ?? ?? 00 FF 4D 08 C6 45 0C 05 8D 7D 14 31 C0 B4 04 89 C1 F3 AB BF ?? ?? ?? 00 57 BE ?? ?? ?? 00 31 C9 41 FF 4D 0C 8D 9C 8D A0 00 00 00 FF D6 10 C9 73 F3 FF 45 0C 91 AA 83 C9 FF 8D 5C 8D 18 FF D6 74 DD E3 17 8D 5D 1C FF D6 74 10 8D 9D A0 08 00 00 E8 ?? 00 00 00 8B 45 10 EB 42 8D 9D A0 04 00 00 E8 ?? 00 00 00 49 49 78 40 8D 5D 20 74 03 83 C3 40 31 D2 42 E8 ?? 00 00 00 8D 0C 48 F6 C2 10 74 F3 41 91 8D 9D A0 08 00 00 E8 ?? 00 00 00 3D 00 08 00 00 83 D9 FF 83 F8 60 83 D9 FF 89 45 10 56 89 FE 29 C6 F3 A4 5E EB 90 BE ?? ?? ?? 00 BB ?? ?? ?? 00 55 46 AD 85 C0 74 ?? 97 56 FF 13 85 C0 74 16 95 AC 84 C0 75 FB 38 06 74 E8 78 ?? 56 55 FF 53 04 AB 85 C0}
	condition:
		$0 at entrypoint
}
rule _PseudoSigner_01_Morphine_12__Anorganix_
{
	meta:
		description = "PseudoSigner 0.1 [Morphine 1.2] --> Anorganix"
	strings:
		$0 = {90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 EB 06 00 90 90 90 90 90 90 90 90 EB 08 E8 90 00 00 00 66 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 51 66 90 90 90 59 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90}
	condition:
		$0 at entrypoint
}
rule _Stones_PE_Encruptor_v113_
{
	meta:
		description = "Stone`s PE Encruptor v1.13"
	strings:
		$0 = {55 57 56 52 51 53 E8 ?? ?? ?? ?? 5D 8B D5 81}
	condition:
		$0 at entrypoint
}
rule _ASPack_v102b__Alexey_Solodovnikov_
{
	meta:
		description = "ASPack v1.02b -> Alexey Solodovnikov"
	strings:
		$0 = {60 E8 00 00 00 00 5D 81 ED 96 78 43 00 B8 90 78 43 00 03 C5}
		$1 = {60 E8 ?? ?? ?? ?? 5D 81 ED 96 78 43 ?? B8 90 78 43 ?? 03 C5 2B 85 7D 7C 43 ?? 89 85 89 7C 43 ?? 80 BD 74 7C 43}
	condition:
		$0 at entrypoint or $1 at entrypoint
}
rule _PACKWIN_v101p_
{
	meta:
		description = "PACKWIN v1.01p"
	strings:
		$0 = {8C C0 FA 8E D0 BC ?? ?? FB 06 0E 1F 2E ?? ?? ?? ?? 8B F1 4E 8B FE 8C DB 2E ?? ?? ?? ?? 8E C3 FD F3 A4 53 B8 ?? ?? 50 CB}
	condition:
		$0 at entrypoint
}
rule _Upack_v036_alpha__Dwing_
{
	meta:
		description = "Upack v0.36 alpha -> Dwing"
	strings:
		$0 = {AB E2 E5 5D 59 8B 76 68 51 59 46 AD 85 C0}
	condition:
		$0
}
rule _Upx_v12__Marcus__Lazlo_
{
	meta:
		description = "Upx v1.2 -> Marcus & Lazlo"
	strings:
		$0 = {60 BE ?? ?? ?? ?? 8D BE ?? ?? ?? ?? 57 83 CD FF EB 05 A4 01 DB 75 07 8B 1E 83 EE FC 11 DB 72 F2 31 C0 40 01 DB 75 07 8B 1E 83 EE FC 11 DB 11 C0 01 DB 75 07 8B 1E 83 EE FC 11 DB 73 E6 31 C9 83}
	condition:
		$0 at entrypoint
}
rule _UPXHiT_001__DJ_Siba_
{
	meta:
		description = "UPX$HiT 0.0.1 -> DJ Siba"
	strings:
		$0 = {E2 FA 94 FF E0 61 00 00 00 00 00 00 00}
	condition:
		$0
}
rule _Nullsoft_PIMP_Install_System_v1x_
{
	meta:
		description = "Nullsoft PIMP Install System v1.x"
	strings:
		$0 = {83 EC 5C 53 55 56 57 FF 15 ?? ?? ?? 00}
	condition:
		$0 at entrypoint
}
rule _NJoy_13__NEX_
{
	meta:
		description = "N-Joy 1.3 -> NEX"
	strings:
		$0 = {55 8B EC 83 C4 F0 B8 48 36 40 00 E8 54 EE FF FF 6A 00 68 D8 2B 40 00 6A 0A 6A 00 E8 2C EF FF FF E8 23 E7 FF FF 8D 40 00}
	condition:
		$0 at entrypoint
}
rule _VIRUS__IWormHybris_
{
	meta:
		description = "VIRUS - I-Worm.Hybris"
	strings:
		$0 = {EB 16 A8 54 ?? ?? 47 41 42 4C 4B 43 47 43 ?? ?? ?? ?? ?? ?? 52 49 53 ?? FC 68 4C 70 40 ?? FF 15}
	condition:
		$0
}
rule _ASProtect_v123_RC4_build_0807_dll__Alexey_Solodovnikov_
{
	meta:
		description = "ASProtect v1.23 RC4 build 08.07 (dll) -> Alexey Solodovnikov"
	strings:
		$0 = {60 E8 03 00 00 00 E9 EB 04 5D 45 55 C3 E8 01 00 00 00 EB 5D BB ED FF FF FF 03 DD 81 EB 00 ?? ?? ?? 80 7D 4D 01 75 0C 8B 74 24 28 83 FE 01 89 5D 4E 75 31 8D 45 53 50 53 FF B5 D5 09 00 00 8D 45 35 50 E9 82 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00}
	condition:
		$0 at entrypoint
}
rule _Obsidium_13013__Obsidium_Software_
{
	meta:
		description = "Obsidium 1.3.0.13 -> Obsidium Software"
	strings:
		$0 = {EB 01 ?? E8 26 00 00 00 EB 02 ?? ?? EB 02 ?? ?? 8B 54 24 0C EB 01 ?? 83 82 B8 00 00 00 21 EB 04 ?? ?? ?? ?? 33 C0 EB 02 ?? ?? C3 EB 01 ?? EB 04 ?? ?? ?? ?? 64 67 FF 36 00 00 EB 02 ?? ?? 64 67 89 26 00 00 EB 01 ?? EB 03 ?? ?? ?? 50 EB 01 ?? 33 C0 EB 03 ?? ?? ?? 8B 00 EB 02 ?? ?? C3 EB 02 ?? ?? E9 FA 00 00 00 EB 01 ?? E8 D5 FF FF FF EB 03 ?? ?? ?? EB 02 ?? ?? 58 EB 03 ?? ?? ?? EB 04 ?? ?? ?? ?? 64 67 8F 06 00 00 EB 03 ?? ?? ?? 83 C4 04 EB 03 ?? ?? ?? E8 13 26 00 00}
	condition:
		$0 at entrypoint
}
rule _TMTPascal_v040_
{
	meta:
		description = "TMT-Pascal v0.40"
	strings:
		$0 = {0E 1F 06 8C 06 ?? ?? 26 A1 ?? ?? A3 ?? ?? 8E C0 66 33 FF 66 33 C9}
	condition:
		$0 at entrypoint
}
rule _SimbiOZ_Poly_21__Extranger_
{
	meta:
		description = "SimbiOZ Poly 2.1 -> Extranger"
	strings:
		$0 = {55 50 8B C4 83 C0 04 C7 00 ?? ?? ?? ?? 58 C3 90}
	condition:
		$0 at entrypoint
}
rule _PECrypt_102_
{
	meta:
		description = "PE-Crypt 1.02"
	strings:
		$0 = {E8 00 00 00 00 5B 83 EB 05 EB 04 52 4E 44 21 85 C0 73 02 F7}
	condition:
		$0 at entrypoint
}
rule _diProtector_V1X__diProtector_Software_
{
	meta:
		description = "diProtector V1.X -> diProtector Software"
	strings:
		$0 = {01 00 A0 E3 14 00 00 EB 00 00 20 E0 44 10 9F E5 03 2A A0 E3 40 30 A0 E3 AE 00 00 EB 30 00 8F E5 00 20 A0 E1 3A 0E 8F E2 00 00 80 E2 1C 10 9F E5 20 30 8F E2 0E 00 00 EB 14 00 9F E5 14 10 9F E5 7F 20 A0 E3 C5 00 00 EB 04 C0 8F E2 00 F0 9C E5}
	condition:
		$0 at entrypoint
}
rule _Imploder_v104__BoB__BobSoft_
{
	meta:
		description = "Imploder v1.04 --> BoB / BobSoft"
	strings:
		$0 = {60 E8 A0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 36 ?? ?? ?? 2E ?? ?? ?? 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 01 00 00 80 00 00 00 00 4B 65 72 6E 65 6C 33 32 2E 44}
	condition:
		$0 at entrypoint
}
rule _FakeNinja_v28_AntiDebug__Spirit_
{
	meta:
		description = "FakeNinja v2.8 (Anti-Debug) -> Spirit"
	strings:
		$0 = {64 A1 18 00 00 00 EB 02 C3 11 8B 40 30 EB 01 0F 0F B6 40 02 83 F8 01 74 FE EB 01 E8 90 C0 FF FF EB 03 BD F4 B5 64 A1 30 00 00 00 0F B6 40 02 74 01 BA 74 E0 50 00 64 A1 30 00 00 00 83 C0 68 8B 00 EB 00 83 F8 70 74 CF EB 02 EB FE 90 90 90 0F 31 33 C9 03 C8 0F 31 2B C1 3D FF 0F 00 00 73 EA E8 08 00 00 00 C1 3D FF 0F 00 00 74 AA EB 07 E8 8B 40 30 EB 08 EA 64 A1 18 00 00 00 EB F2 90 90 90 BA ?? ?? ?? ?? FF E2 64 11 40 00 FF 35 84 11 40 00 E8 40 11 00 00 6A 00 6A 00 FF 35 70 11 40 00 FF 35 84 11 40 00 E8 25 11 00 00 FF}
	condition:
		$0
}
rule _NX_PE_Packer_v10_
{
	meta:
		description = "NX PE Packer v1.0"
	strings:
		$0 = {FF 60 FF CA FF 00 BA DC 0D E0 40 00 50 00 60 00 70 00 80 00}
	condition:
		$0 at entrypoint
}
rule _EXECryptor_v1401_
{
	meta:
		description = "EXECryptor v1.4.0.1"
	strings:
		$0 = {E8 24 00 00 00 8B 4C 24 0C C7 01 17 00 01 00 C7 81 B8 00 00 00 00 ?? ?? 00 31 C0 89 41 14 89 41 18 80}
	condition:
		$0 at entrypoint
}
rule _NsPack_v31__North_Star_
{
	meta:
		description = "NsPack v3.1 -> North Star"
	strings:
		$0 = {9C 60 E8 00 00 00 00 5D 83 ED 07 8D 9D ?? ?? FF FF 8A 03 3C 00 74 10 8D 9D ?? ?? FF FF 8A 03 3C 01 0F 84 42 02 00 00 C6 03 01 8B D5 2B 95 ?? ?? FF FF 89 95 ?? ?? FF FF 01 95 ?? ?? FF FF 8D B5 ?? ?? FF FF 01 16 60 6A 40 68 00 10 00 00 68 00 10 00 00 6A 00}
		$1 = {9C 60 E8 00 00 00 00 5D 83 ED 07 8D 9D ?? ?? FF FF 8A 03 3C 00 74 10 8D 9D ?? ?? FF FF 8A 03 3C 01 0F 84 42 02 00 00 C6 03 01 8B D5 2B 95 ?? ?? FF FF 89 95 ?? ?? FF FF 01 95 ?? ?? FF FF 8D B5 ?? ?? FF FF 01 16 60 6A 40 68 00 10 00 00 68 00 10 00 00 6A 00 FF 95 ?? ?? FF FF 85 C0 0F 84 6A 03 00 00 89 85 ?? ?? FF FF E8 00 00 00 00 5B B9 68 03 00 00 03 D9 50 53 E8 B1 02 00 00 61 8B 36 8B FD 03 BD ?? ?? FF FF 8B DF 83 3F 00 75 0A 83 C7 04 B9 00 00 00 00 EB 16 B9 01 00 00 00 03 3B 83 C3 04 83 3B 00 74 36 01 13 8B 33 03 7B 04 57 51 52 53 FF B5 ?? ?? FF FF FF B5 ?? ?? FF FF 8B D6 8B CF 8B 85 ?? ?? FF FF 05 AA 05 00 00 FF D0 5B 5A 59 5F 83 F9 00 74 05 83 C3 08 EB C5 68 00 80 00 00 6A 00}
	condition:
		$0 at entrypoint or $1
}
rule _Thinstall_25xx__Jtit_
{
	meta:
		description = "Thinstall 2.5xx -> Jtit"
	strings:
		$0 = {55 8B EC B8 ?? ?? ?? ?? BB ?? ?? ?? ?? 50 E8 00 00 00 00 58 2D ?? 1A 00 00 B9 ?? 1A 00 00 BA ?? 1B 00 00 BE 00 10 00 00 BF ?? 53 00 00 BD ?? 1A 00 00 03 E8 81 75 00 ?? ?? ?? ?? ?? 75 04 ?? ?? ?? ?? 81 75 08 ?? ?? ?? ?? 81 75 0C ?? ?? ?? ?? 81 75 10}
		$1 = {55 8B EC B8 ?? ?? ?? ?? BB ?? ?? ?? ?? 50 E8 00 00 00 00 58 2D ?? 1A 00 00 B9 ?? 1A 00 00 BA ?? 1B 00 00 BE 00 10 00 00 BF ?? 53 00 00 BD ?? 1A 00 00 03 E8 81 75 00 ?? ?? ?? ?? ?? 75 04 ?? ?? ?? ?? 81 75 08 ?? ?? ?? ?? 81 75 0C ?? ?? ?? ?? 81 75 10 ?? ?? ?? ?? 03 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 3B F1 7C 04 3B F2 7C 02 89 2E 83 C6 04 3B F7 7C E3 58 50 68 00 00 40 00 68 80 5A}
	condition:
		$0 at entrypoint or $1 at entrypoint
}
rule _PECompact_v25_Retail_Slim_Loader__Bitsum_Technologies_
{
	meta:
		description = "PECompact v2.5 Retail (Slim Loader) -> Bitsum Technologies"
	strings:
		$0 = {B8 ?? ?? ?? 01 50 64 FF 35 00 00 00 00 64 89 25 00 00 00 00 33 C0 89 08 50 45 43 32 00}
	condition:
		$0 at entrypoint
}
rule _Upack_v035_alpha__Dwing_
{
	meta:
		description = "Upack v0.35 alpha -> Dwing"
	strings:
		$0 = {8B F2 8B CA 03 4C 19 1C 03 54 1A 20}
	condition:
		$0
}
rule _CrackStop_v101_c_Stefan_Esser_1997_
{
	meta:
		description = "CrackStop v1.01 (c) Stefan Esser 1997"
	strings:
		$0 = {B4 48 BB FF FF B9 EB 27 8B EC CD 21 FA FC}
	condition:
		$0 at entrypoint
}
rule _UPX_Modified_Stub_b__Farbrausch_Consumer_Consulting_
{
	meta:
		description = "UPX Modified Stub b -> Farb-rausch Consumer Consulting"
	strings:
		$0 = {60 BE ?? ?? ?? ?? 8D BE ?? ?? ?? ?? 57 83 CD FF FC B2 80 31 DB A4 B3 02 E8 6D 00 00 00 73 F6 31 C9 E8 64 00 00 00 73 1C 31 C0 E8 5B 00 00 00 73 23 B3 02 41 B0 10 E8 4F 00 00 00 10 C0 73 F7 75 3F AA EB D4 E8 4D 00 00 00 29 D9 75 10 E8 42 00 00 00 EB 28 AC}
	condition:
		$0 at entrypoint
}
rule _Simple_UPX_Cryptor_v3042005_multi_layer_encryption__MANtiCORE_
{
	meta:
		description = "Simple UPX Cryptor v30.4.2005 [multi layer encryption] --> MANtiCORE"
	strings:
		$0 = {60 B8 ?? ?? ?? 00 B9 18 00 00 00 80 34 08 ?? E2 FA 61 68 ?? ?? ?? 00 C3}
		$1 = {60 B8 ?? ?? ?? ?? B9 18 00 00 00 80 34 08 ?? E2 FA 61 68 ?? ?? ?? ?? C3}
	condition:
		$0 at entrypoint or $1 at entrypoint
}
rule _PECompact_v184_
{
	meta:
		description = "PECompact v1.84"
	strings:
		$0 = {33 C0 8B C4 83 C0 04 93 8B E3 8B 5B FC 81}
	condition:
		$0 at entrypoint
}
rule _Petite_13_
{
	meta:
		description = "Petite 1.3"
	strings:
		$0 = {66 9C 60 50 8D 88 00 F0 00 00 8D 90 04 16 00 00 8B DC 8B E1}
	condition:
		$0
}
rule _PC_Shrinker_v045_
{
	meta:
		description = "PC Shrinker v0.45"
	strings:
		$0 = {BD ?? ?? ?? ?? 01 AD E3 38 40 ?? FF B5 DF 38 40}
	condition:
		$0 at entrypoint
}
rule _tElock_096__tE_
{
	meta:
		description = "tElock 0.96 -> tE!"
	strings:
		$0 = {E9 59 E4 FF FF 00 00 00 00 00 00 00 ?? ?? ?? ?? EE ?? ?? 00 00 00 00 00 00 00 00 00 0E ?? ?? 00 FE ?? ?? 00 F6 ?? ?? 00 00 00 00 00 00 00 00 00 1B ?? ?? 00 06 ?? ?? 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 26 ?? ?? 00 00 00 00 00 39 ?? ?? 00 00 00 00 00 26 ?? ?? 00 00 00 00 00 39 ?? ?? 00 00 00 00 00 6B 65 72 6E 65 6C 33 32 2E 64 6C 6C}
	condition:
		$0 at entrypoint
}
rule _Obsidium_1258__Obsidium_Software_
{
	meta:
		description = "Obsidium 1.2.5.8 -> Obsidium Software"
	strings:
		$0 = {EB 01 ?? E8 29 00 00 00 EB 02 ?? ?? EB 01 ?? 8B 54 24 0C EB 04 ?? ?? ?? ?? 83 82 B8 00 00 00 24 EB 04 ?? ?? ?? ?? 33 C0 EB 02 ?? ?? C3 EB 02 ?? ?? EB 03 ?? ?? ?? 64 67 FF 36 00 00 EB 01 ?? 64 67 89 26 00 00 EB 03 ?? ?? ?? EB 01 ?? 50 EB 03 ?? ?? ?? 33 C0 EB 04 ?? ?? ?? ?? 8B 00 EB 03 ?? ?? ?? C3 EB 01 ?? E9 FA 00 00 00 EB 02 ?? ?? E8 D5 FF FF FF EB 04 ?? ?? ?? ?? EB 03 ?? ?? ?? EB 01 ?? 58 EB 01 ?? EB 02 ?? ?? 64 67 8F 06 00 00 EB 04 ?? ?? ?? ?? 83 C4 04 EB 01 ?? E8 7B 21 00 00}
	condition:
		$0 at entrypoint
}
rule _UPX_v20__Markus_Laszlo__Reiser_
{
	meta:
		description = "UPX v2.0 -> Markus, Laszlo & Reiser"
	strings:
		$0 = {55 FF 96 ?? ?? ?? ?? 09 C0 74 07 89 03 83 C3 04 EB ?? FF 96 ?? ?? ?? ?? 8B AE ?? ?? ?? ?? 8D BE 00 F0 FF FF BB 00 10 00 00 50 54 6A 04 53 57 FF D5 8D 87 ?? ?? 00 00 80 20 7F 80 60 28 7F 58 50 54 50 53 57 FF D5 58 61 8D 44 24 80 6A 00 39 C4 75 FA 83 EC 80}
	condition:
		$0
}
rule _Obsidium_v1111_
{
	meta:
		description = "Obsidium v1.1.1.1"
	strings:
		$0 = {EB 02 ?? ?? E8 E7 1C 00 00}
	condition:
		$0 at entrypoint
}
rule _Cygwin32_
{
	meta:
		description = "Cygwin32"
	strings:
		$0 = {55 89 E5 83 EC 04 83 3D}
	condition:
		$0 at entrypoint
}
rule _PEQuake_v006_by_fORGAT_
{
	meta:
		description = "PEQuake v0.06 by fORGAT"
	strings:
		$0 = {E8 A5 00 00 00 2D ?? 00 00 00 00 00 00 00 00 00 00 3D ?? 00 00 2D ?? 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 4A ?? 00 00 5B ?? 00 00 6E ?? 00 00 00 00 00 00 6B 45 72 4E 65 4C 33 32 2E 64 4C 6C 00 00 00 47 65 74 50 72 6F 63 41 64}
	condition:
		$0
}
rule _MSLRH_v032a_fake_PEBundle_02__3x__emadicius_
{
	meta:
		description = "[MSLRH] v0.32a (fake PEBundle 0.2 - 3.x) -> emadicius"
	strings:
		$0 = {9C 60 E8 02 00 00 00 33 C0 8B C4 83 C0 04 93 8B E3 8B 5B FC 81 EB 07 30 40 00 87 DD 61 9D EB 05 E8 EB 04 40 00 EB FA E8 0A 00 00 00 E8 EB 0C 00 00 E8 F6 FF FF FF E8 F2 FF FF FF 83 C4 08 74 04 75 02 EB 02 EB 01 81 50 E8 02 00 00 00 29 5A 58 6B C0 03 E8 02 00 00 00 29 5A 83 C4 04 58 74 04 75 02 EB 02 EB 01 81 0F 31 50 0F 31 E8 0A 00 00 00 E8 EB 0C 00 00 E8 F6 FF FF FF E8 F2 FF FF FF}
	condition:
		$0 at entrypoint
}
rule _EP_v10_
{
	meta:
		description = "EP v1.0"
	strings:
		$0 = {50 83 C0 17 8B F0 97 33 C0 33 C9 B1 24 AC 86 C4 AC AA 86 C4 AA E2 F6 00 B8 40 00 03 00 3C 40 D2 33 8B 66 14 50 70 8B 8D 34 02 44 8B 18 10 48 70 03 BA 0C ?? ?? ?? ?? C0 33 FE 8B 30 AC 30 D0 C1 F0 10 C2 D0 30 F0 30 C2 C1 AA 10 42 42 CA C1 E2 04 5F E9 5E B1}
	condition:
		$0 at entrypoint
}
rule _DCrypt_Private_09b__drmist_
{
	meta:
		description = "DCrypt Private 0.9b -> drmist"
	strings:
		$0 = {B9 ?? ?? ?? 00 E8 00 00 00 00 58 68 ?? ?? ?? 00 83 E8 0B 0F 18 00 D0 00 48 E2 FB C3}
	condition:
		$0 at entrypoint
}
rule _AntiVirus_Vaccine_v103_
{
	meta:
		description = "AntiVirus Vaccine v.1.03"
	strings:
		$0 = {FA 33 DB B9 ?? ?? 0E 1F 33 F6 FC AD 35 ?? ?? 03 D8 E2}
	condition:
		$0 at entrypoint
}
rule _XtremeProtector_v106_
{
	meta:
		description = "Xtreme-Protector v1.06"
	strings:
		$0 = {B8 ?? ?? ?? 00 B9 75 ?? ?? 00 50 51 E8 05 00 00 00 E9 4A 01 00 00 60 8B 74 24 24 8B 7C 24 28 FC B2 80 8A 06 46 88 07 47 BB 02 00 00 00 02 D2 75 05 8A 16 46 12 D2 73 EA 02 D2 75 05 8A 16 46 12 D2 73 4F 33 C0 02 D2 75 05 8A 16 46 12 D2 0F 83 DF 00 00 00 02}
	condition:
		$0 at entrypoint
}
rule _Wise_Installer_Stub_
{
	meta:
		description = "Wise Installer Stub"
	strings:
		$0 = {55 8B EC 81 EC 78 05 00 00 53 56 BE 04 01 00 00 57 8D 85 94 FD FF FF 56 33 DB 50 53 FF 15 34 20 40 00 8D 85 94 FD FF FF 56 50 8D 85 94 FD FF FF 50 FF 15 30 20 40 00 8B 3D 2C 20 40 00 53 53 6A 03 53 6A 01 8D 85 94 FD FF FF 68 00 00 00 80 50 FF D7 83 F8 FF}
		$1 = {55 8B EC 81 EC ?? 04 00 00 53 56 57 6A ?? ?? ?? ?? ?? ?? ?? FF 15 ?? ?? 40 00 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 80 ?? 20}
		$2 = {55 8B EC 81 EC ?? ?? 00 00 53 56 57 6A 01 5E 6A 04 89 75 E8 FF 15 ?? 40 40 00 FF 15 ?? 40 40 00 8B F8 89 7D ?? 8A 07 3C 22 0F 85 ?? 00 00 00 8A 47 01 47 89 7D ?? 33 DB 3A C3 74 0D 3C 22 74 09 8A 47 01 47 89 7D ?? EB EF 80 3F 22 75 04 47 89 7D ?? 80 3F 20}
	condition:
		$0 at entrypoint or $1 at entrypoint or $2
}
rule _PEiDBundle_v102__v103__BoB__BobSoft_
{
	meta:
		description = "PEiD-Bundle v1.02 - v1.03 --> BoB / BobSoft"
	strings:
		$0 = {60 E8 9C 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 36 ?? ?? ?? 2E ?? ?? ?? 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 01 00 00 80 00 00 00 00 4B 65 72 6E 65 6C 33 32 2E 44}
	condition:
		$0 at entrypoint
}
rule _EXECryptor_v13045_
{
	meta:
		description = "EXECryptor v1.3.0.45"
	strings:
		$0 = {E8 24 00 00 00 8B 4C 24 0C C7 01 17 00 01 00 C7 81 ?? ?? ?? ?? ?? ?? ?? 31 C0 89 41 14 89 41 18 80 A1}
		$1 = {E8 24 ?? ?? ?? 8B 4C 24 0C C7 01 17 ?? 01 ?? C7 81 ?? ?? ?? ?? ?? ?? ?? 31 C0 89 41 14 89 41 18 80 A1}
	condition:
		$0 at entrypoint or $1 at entrypoint
}
rule _PolyBox_D__Anskya_
{
	meta:
		description = "PolyBox D -> Anskya"
	strings:
		$0 = {55 8B EC 33 C9 51 51 51 51 51 53 33 C0 55 68 84 2C 40 00 64 FF 30 64 89 20 C6 45 FF 00 B8 B8 46 40 00 BA 24 00 00 00 E8 8C F3 FF FF 6A 24 BA B8 46 40 00 8B 0D B0 46 40 00 A1 94 46 40 00 E8 71 FB FF FF 84 C0 0F 84 6E 01 00 00 8B 1D D0 46 40 00 8B C3 83 C0 24 03 05 D8 46 40 00 3B 05 B4 46 40 00 0F 85 51 01 00 00 8D 45 F4 BA B8 46 40 00 B9 10 00 00 00 E8 A2 EC FF FF 8B 45 F4 BA 9C 2C 40 00 E8 F1 ED FF FF}
	condition:
		$0
}
rule _PseudoSigner_01_Gleam_100__Anorganix_
{
	meta:
		description = "PseudoSigner 0.1 [Gleam 1.00] --> Anorganix"
	strings:
		$0 = {90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 EB 0B 83 EC 0C 53 56 57 E8 24 02 00 FF E9}
	condition:
		$0 at entrypoint
}
rule _nPack_111502006Beta__NEOx_
{
	meta:
		description = "nPack 1.1.150.2006.Beta -> NEOx"
	strings:
		$0 = {83 3D ?? ?? ?? ?? ?? 75 05 E9 01 00 00 00 C3 E8 41 00 00 00 B8 ?? ?? ?? ?? 2B 05 ?? ?? ?? ?? A3 ?? ?? ?? ?? E8 5E 00 00 00 E8 E0 01 00 00 E8 EC 06 00 00 E8 F7 05 00 00 A1 ?? ?? ?? ?? C7 05 ?? ?? ?? ?? ?? ?? ?? ?? 01 05 ?? ?? ?? ?? FF 35 ?? ?? ?? ?? C3 C3 56 57 68 ?? ?? ?? ?? FF 15 ?? ?? ?? ?? 8B 35 ?? ?? ?? ?? 8B F8 68 ?? ?? ?? ?? 57 FF D6 68 ?? ?? ?? ?? 57 A3 ?? ?? ?? ?? FF D6 5F A3 ?? ?? ?? ?? 5E C3}
	condition:
		$0 at entrypoint
}
rule _Apex_30_alpha__500mhz_
{
	meta:
		description = "Apex 3.0 alpha -> 500mhz"
	strings:
		$0 = {5F B9 14 00 00 00 51 BE 00 10 40 00 B9 00 ?? ?? 00 8A 07 30 06 46 E2 FB 47 59 E2 EA 68 ?? ?? ?? 00 C3}
	condition:
		$0
}
rule _ASProtect_vxx_
{
	meta:
		description = "ASProtect vx.x"
	strings:
		$0 = {60 ?? ?? ?? ?? ?? 90 5D ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 03 DD}
	condition:
		$0 at entrypoint
}
rule _PECompact_v160__v165_
{
	meta:
		description = "PECompact v1.60 - v1.65"
	strings:
		$0 = {EB 06 68 ?? ?? ?? ?? C3 9C 60 E8 02 ?? ?? ?? 33 C0 8B C4 83 C0 04 93 8B E3 8B 5B FC 81 EB 3F 80 40 ?? 87 DD 8B 85 D2 80 40 ?? 01 85 33 80 40 ?? 66 C7 85 ?? 80 40 ?? 90 90 01 85 CE 80 40 ?? BB BB 12}
	condition:
		$0 at entrypoint
}
rule _Upack_v029_beta__Dwing_
{
	meta:
		description = "Upack v0.29 beta -> Dwing"
	strings:
		$0 = {E9 ?? ?? ?? ?? 42 79 44 77 69 6E 67 40 00 00 00 50 45 00 00 4C 01 02 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 29}
	condition:
		$0 at entrypoint
}
rule _PseudoSigner_02_REALBasic__Anorganix_
{
	meta:
		description = "PseudoSigner 0.2 [REALBasic] --> Anorganix"
	strings:
		$0 = {55 89 E5 90 90 90 90 90 90 90 90 90 90 50 90 90 90 90 90 00 01}
	condition:
		$0 at entrypoint
}
rule _EXECryptor_239_minimum_protection_
{
	meta:
		description = "EXECryptor 2.3.9 (minimum protection)"
	strings:
		$0 = {68 ?? ?? ?? ?? E9 ?? ?? ?? FF 50 C1 C8 18 89 05 ?? ?? ?? ?? C3 C1 C0 18 51 E9 ?? ?? ?? FF 84 C0 0F 84 6A F9 FF FF E9 ?? ?? ?? FF C3 E9 ?? ?? ?? FF E8 CF E9 FF FF B8 01 00 00 00 E9 ?? ?? ?? FF 2B D0 68 A0 36 80 D4 59 81 C9 64 98 FF 99 E9 ?? ?? ?? FF 84 C0 0F 84 8E EC FF FF E9 ?? ?? ?? FF C3 87 3C 24 5F 8B 00 03 45 FC 83 C0 18 E9 ?? ?? ?? FF 87 0C 24 59 B8 01 00 00 00 D3 E0 23 D0 E9 02 18 00 00 0F 8D DB 00 00 00 C1 E8 14 E9 CA 00 00 00 9D 87 0C 24 59 87 1C 24 68 AE 73 B9 96 E9 C5 10 00 00 0F 8A ?? ?? ?? ?? E9 ?? ?? ?? FF 81 FD F5 FF 8F 07 E9 4F 10 00 00 C3 E9 5E 12 00 00 87 3C 24 E9 ?? ?? ?? FF E8 ?? ?? ?? FF 83 3D ?? ?? ?? ?? 00 0F 85 ?? ?? ?? ?? 8D 55 EC B8 ?? ?? ?? ?? E9 ?? ?? ?? FF E8 A7 1A 00 00 E8 2A CB FF FF E9 ?? ?? ?? FF C3 E9 ?? ?? ?? FF 59 89 45 E0}
	condition:
		$0 at entrypoint
}
rule _Soft_Defender_v11x__Randy_Li_
{
	meta:
		description = "Soft Defender v1.1x -> Randy Li"
	strings:
		$0 = {74 07 75 05 ?? ?? ?? ?? ?? 74 1F 75 1D ?? 68 ?? ?? ?? 00 59 9C 50 74 0A 75 08 ?? 59 C2 04 00 ?? ?? ?? E8 F4 FF FF FF ?? ?? ?? 78 0F 79 0D}
	condition:
		$0 at entrypoint
}
rule _Petite_13__c1998_Ian_Luck_
{
	meta:
		description = "Petite 1.3 -> (c)1998 Ian Luck"
	strings:
		$0 = {9C 60 50 8D 88 00 ?? ?? ?? 8D 90 ?? ?? 00 00 8B DC 8B E1 68 00 00 ?? ?? 53 50 80 04 24 08 50 80 04 24 42 50 80 04 24 61 50 80 04 24 9D 50 80 04 24 BB 83 3A 00 0F 84 DA 14 00 00 8B 44 24 18 F6 42 03 80 74 19 FD 80 72 03 80 8B F0 8B F8 03}
	condition:
		$0 at entrypoint
}
rule _MSLRH_
{
	meta:
		description = "[MSLRH]"
	strings:
		$0 = {60 EB 05 E8 EB 04 40 00 EB FA E8 0A 00 00 00 E8 EB 0C 00 00 E8 F6 FF FF FF E8 F2 FF FF FF 83 C4 08 74 04 75 02 EB 02 EB 01 81 E8 0A 00 00 00 E8 EB 0C 00 00 E8 F6 FF FF FF E8 F2 FF FF FF 83 C4 08 74 04 75 02 EB 02 EB 01 81 E8 0A 00 00 00 E8 EB 0C 00 00 E8 F6 FF FF FF E8 F2 FF FF FF 83 C4 08 74 04 75 02 EB 02 EB 01 81 0F 31 50 0F 31 E8 0A 00 00 00 E8 EB 0C 00 00 E8 F6 FF FF FF E8 F2 FF FF FF 83 C4 08 2B 04 24 74 04 75 02 EB 02 EB 01 81 83 C4 04 E8 0A 00 00 00 E8 EB 0C 00 00 E8 F6 FF FF FF E8 F2 FF FF FF 83 C4 08 3D FF 0F 00 00 EB 01 68 EB 02 CD 20 EB 01 E8 76 1B EB 01 68 EB 02 CD 20 EB 01 E8 CC 66 B8 FE 00 74 04 75 02 EB 02 EB 01 81 66 E7 64 E8 0A 00 00 00 E8 EB 0C 00 00 E8 F6 FF FF FF E8 F2 FF FF FF 83 C4 08 74 04 75 02 EB 02 EB 01 81 0F 31 50 0F 31 E8 0A 00 00 00 E8 EB 0C 00 00 E8 F6 FF FF FF E8 F2 FF FF FF 83 C4 08 2B 04 24 74 04 75 02 EB 02 EB 01 81}
	condition:
		$0 at entrypoint
}
rule _SLVc0deProtector_v11__SLV_
{
	meta:
		description = "SLVc0deProtector v1.1 -> SLV"
	strings:
		$0 = {E8 00 00 00 00 58 C6 00 EB C6 40 01 08 FF E0 E9 4C}
		$1 = {E8 01 00 00 00 A0 5D EB 01 69 81 ED 5F 1A 40 00 8D 85 92 1A 40 00 F3 8D 95 83 1A 40 00 8B C0 8B D2 2B C2 83 E8 05 89 42 01 E8 FB FF FF FF 69 83 C4 08 E8 06 00 00 00 69 E8 F2 FF FF FF F3 B9 05 00 00 00 51 8D B5 BF 1A 40 00 8B FE B9 58 15 00 00 AC 32 C1 F6}
	condition:
		$0 at entrypoint or $1
}
rule _Vx_Quake518_
{
	meta:
		description = "Vx: Quake.518"
	strings:
		$0 = {1E 06 8C C8 8E D8 ?? ?? ?? ?? ?? ?? ?? B8 21 35 CD 21 81}
	condition:
		$0 at entrypoint
}
rule _PE_Crypt32_Console_v10_v101_v102_
{
	meta:
		description = "PE Crypt32 (Console v1.0, v1.01, v1.02)"
	strings:
		$0 = {E8 00 00 00 00 5B 83 EB 05 EB 04 52 4E 44 21 EB 02 CD 20 EB}
	condition:
		$0 at entrypoint
}
rule _PseudoSigner_01_PE_Pack_099__Anorganix_
{
	meta:
		description = "PseudoSigner 0.1 [PE Pack 0.99] --> Anorganix"
	strings:
		$0 = {60 E8 11 00 00 00 5D 83 ED 06 80 BD E0 04 90 90 01 0F 84 F2 FF CC 0A E9}
	condition:
		$0 at entrypoint
}
rule _UPX_V200V290__Markus_Oberhumer__Laszlo_Molnar__John_Reiser_
{
	meta:
		description = "UPX V2.00-V2.90 -> Markus Oberhumer & Laszlo Molnar & John Reiser"
	strings:
		$0 = {FF D5 8D 87 ?? ?? ?? ?? 80 20 ?? 80 60 ?? ?? 58 50 54 50 53 57 FF D5 58 61 8D 44 24 ?? 6A 00 39 C4 75 FA 83 EC 80 E9}
	condition:
		$0
}
rule _VX_TibsZhelatin_StormWorm_variant_
{
	meta:
		description = "VX: Tibs/Zhelatin StormWorm variant"
	strings:
		$0 = {FF 74 24 1C 58 8D 80 ?? ?? 77 04 50 68 62 34 35 04 E8}
	condition:
		$0 at entrypoint
}
rule _BJFnt_v13_
{
	meta:
		description = ".BJFnt v1.3"
	strings:
		$0 = {EB ?? 3A ?? ?? 1E EB ?? CD 20 9C EB ?? CD 20 EB ?? CD 20 60 EB}
	condition:
		$0 at entrypoint
}
rule _PECompact_v168__v184_
{
	meta:
		description = "PECompact v1.68 - v1.84"
	strings:
		$0 = {EB 06 68 ?? ?? ?? ?? C3 9C 60 E8 02 ?? ?? ?? 33 C0 8B C4 83 C0 04 93 8B E3 8B 5B FC 81 EB 3F 90 40 87 DD 8B 85 E6 90 40 01 85 33 90 40 66 C7 85 90 40 90 90 01 85 DA 90 40 01 85 DE 90 40 01 85 E2 90 40 BB 7B 11}
	condition:
		$0 at entrypoint
}
rule _PROPACK_v208_
{
	meta:
		description = "PRO-PACK v2.08"
	strings:
		$0 = {8C D3 8E C3 8C CA 8E DA 8B 0E ?? ?? 8B F1 83 ?? ?? 8B FE D1 ?? FD F3 A5 53}
	condition:
		$0 at entrypoint
}
rule _Vx_Heloween1172_
{
	meta:
		description = "Vx: Heloween.1172"
	strings:
		$0 = {E8 ?? ?? 5E 81 EE ?? ?? 56 50 06 0E 1F 8C C0 01 ?? ?? 01 ?? ?? 80 ?? ?? ?? ?? 8B ?? ?? A3 ?? ?? 8A ?? ?? A2 ?? ?? B8 ?? ?? CD 21 3D}
	condition:
		$0 at entrypoint
}
rule _UPXScrambler_RC_v1x_
{
	meta:
		description = "UPX-Scrambler RC v1.x"
	strings:
		$0 = {90 61 BE ?? ?? ?? ?? 8D BE ?? ?? ?? ?? 57 83 CD FF}
	condition:
		$0 at entrypoint
}
rule _SimplePack_V11X_Method2__bagie_
{
	meta:
		description = "SimplePack V1.1X (Method2) -> bagie"
	strings:
		$0 = {4D 5A 90 EB 01 00 52 E9 89 01 00 00 50 45 00 00 4C 01 02 00}
		$1 = {4D 5A 90 EB 01 00 52 E9 89 01 00 00 50 45 00 00 4C 01 02 00 00 00 00 00 00 00 00 00 00 00 00 00 E0 00 0F 03 0B 01 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 0C 00 00 00 00 ?? ?? ?? 00 10 00 00 00 02 00 00 01 00 00 00 00 00 00 00 04 00 00 00 00 00 00 00}
	condition:
		$0 or $1
}
rule _UPX_Modifier_v01x_
{
	meta:
		description = "UPX Modifier v0.1x"
	strings:
		$0 = {50 BE ?? ?? ?? ?? 8D BE ?? ?? ?? ?? 57 83 CD}
	condition:
		$0 at entrypoint
}
rule _Armadillo_500__Silicon_Realms_Toolworks_
{
	meta:
		description = "Armadillo 5.00 -> Silicon Realms Toolworks"
	strings:
		$0 = {E8 E3 40 00 00 E9 16 FE FF FF 6A 0C 68 ?? ?? ?? ?? E8 44 15 00 00 8B 4D 08 33 FF 3B CF 76 2E 6A E0 58 33 D2 F7 F1 3B 45 0C 1B C0 40 75 1F E8 36 13 00 00 C7 00 0C 00 00 00 57 57 57 57 57 E8 C7 12 00 00 83 C4 14 33 C0 E9 D5 00 00 00 0F AF 4D 0C 8B F1 89 75 08 3B F7 75 03 33 F6 46 33 DB 89 5D E4 83 FE E0 77 69 83 3D ?? ?? ?? ?? 03 75 4B 83 C6 0F 83 E6 F0 89 75 0C 8B 45 08 3B 05 ?? ?? ?? ?? 77 37 6A 04 E8 48 11 00 00 59 89 7D FC FF 75 08 E8 01 49 00 00 59 89 45 E4 C7 45 FC FE FF FF FF E8 5F 00 00 00 8B 5D E4 3B DF 74 11 FF 75 08 57 53 E8 66 D3 FF FF 83 C4 0C 3B DF 75 61 56 6A 08 FF 35 ?? ?? ?? ?? FF 15 ?? ?? ?? ?? 8B D8 3B DF 75 4C 39 3D ?? ?? ?? ?? 74 33 56 E8 AF F9 FF FF 59 85 C0 0F 85 72 FF FF FF 8B 45 10 3B C7 0F 84 50 FF FF FF C7 00 0C 00 00 00 E9 45 FF FF FF 33 FF 8B 75 0C 6A 04 E8 EE 0F 00 00 59 C3}
	condition:
		$0 at entrypoint
}
rule _Duals_eXe_Encryptor_10b__Dual_
{
	meta:
		description = "Dual's eXe Encryptor 1.0b -> Dual"
	strings:
		$0 = {55 8B EC 81 EC 00 05 00 00 E8 00 00 00 00 5D 81 ED 0E 00 00 00 8D 85 3A 04 00 00 89 28 33 FF 8D 85 80 03 00 00 8D 8D 3A 04 00 00 2B C8 8B 9D 8A 04 00 00 E8 24 02 00 00 8D 9D 58 03 00 00 8D B5 7F 03 00 00 46 80 3E 00 74 24 56 FF 95 58 05 00 00 46 80 3E 00 75 FA 46 80 3E 00 74 E7 50 56 50 FF 95 5C 05 00 00 89 03 58 83 C3 04 EB E3 8D 85 69 02 00 00 FF D0 8D 85 56 04 00 00 50 68 1F 00 02 00 6A 00 8D 85 7A 04 00 00 50}
	condition:
		$0 at entrypoint
}
rule _FSG_v110_Eng__dulekxt__MASM32__TASM32__Microsoft_Visual_Basic_
{
	meta:
		description = "FSG v1.10 (Eng) -> dulek/xt -> (MASM32 / TASM32 / Microsoft Visual Basic)"
	strings:
		$0 = {F7 D8 0F BE C2 BE 80 ?? ?? 00 0F BE C9 BF 08 3B 65 07 EB 02 D8 29 BB EC C5 9A F8 EB 01 94}
	condition:
		$0 at entrypoint
}
rule _WinUpack_v039_final_relocated_image_base__By_Dwing_c2005_h2_
{
	meta:
		description = "WinUpack v0.39 final (relocated image base) -> By Dwing (c)2005 (h2)"
	strings:
		$0 = {60 E8 09 00 00 00 ?? ?? ?? 00 E9 06 02 00 00 33 C9 5E 87 0E E3 F4 2B F1 8B DE AD 2B D8 AD 03 C3 50 97 AD 91 F3 A5 5E AD 56 91 01 1E AD E2 FB AD 8D 6E 10 01 5D 00 8D 7D 1C B5 ?? F3 AB 5E AD 53 50 51 97 58 8D 54 85 5C FF 16 72 57 2C 03 73 02 B0 00 3C 07 72}
	condition:
		$0 at entrypoint
}
rule _PEMangle_
{
	meta:
		description = "PEMangle"
	strings:
		$0 = {60 9C BE ?? ?? ?? ?? 8B FE B9 ?? ?? ?? ?? BB 44 52 4F 4C AD 33 C3}
	condition:
		$0 at entrypoint
}
rule _GPInstall_v50332_
{
	meta:
		description = "GP-Install v5.0.3.32"
	strings:
		$0 = {55 8B EC 33 C9 51 51 51 51 51 51 51 53 56 57 B8 C4 1C 41 00 E8 6B 3E FF FF 33 C0 55 68 76 20 41 00 64 FF 30 64 89 20 BA A0 47 41 00 33 C0 E8 31 0A FF FF 33 D2 A1 A0}
	condition:
		$0
}
rule _Obsidium_1337__Obsidium_Software_
{
	meta:
		description = "Obsidium 1.3.3.7 -> Obsidium Software"
	strings:
		$0 = {EB 02 ?? ?? E8 2C 00 00 00 EB 04 ?? ?? ?? ?? EB 04 ?? ?? ?? ?? 8B 54 24 0C EB 02 ?? ?? 83 82 B8 00 00 00 27 EB 04 ?? ?? ?? ?? 33 C0 EB 02 ?? ?? C3 EB 02 ?? ?? EB 03 ?? ?? ?? 64 67 FF 36 00 00 EB 04 ?? ?? ?? ?? 64 67 89 26 00 00 EB 03 ?? ?? ?? EB 01 ?? 50 EB 02 ?? ?? 33 C0 EB 02 ?? ?? 8B 00 EB 04 ?? ?? ?? ?? C3 EB 02 ?? ?? E9 FA 00 00 00 EB 04 ?? ?? ?? ?? E8 D5 FF FF FF EB 02 ?? ?? EB 04 ?? ?? ?? ?? 58 EB 04 ?? ?? ?? ?? EB 03 ?? ?? ?? 64 67 8F 06 00 00 EB 01 ?? 83 C4 04 EB 03 ?? ?? ?? E8 23 27 00 00}
	condition:
		$0 at entrypoint
}
rule _Anskya_Binder_v11__Anskya_
{
	meta:
		description = "Anskya Binder v1.1 -> Anskya"
	strings:
		$0 = {BE ?? ?? ?? 00 BB F8 11 40 00 33 ED 83 EE 04 39 2E 74 11}
	condition:
		$0 at entrypoint
}
rule _Armadillo_v160a_
{
	meta:
		description = "Armadillo v1.60a"
	strings:
		$0 = {55 8B EC 6A FF 68 98 71 40 00 68 48 2D 40 00 64 A1 00 00 00 00 50 64 89 25 00 00 00 00 83 EC 58}
	condition:
		$0 at entrypoint
}
rule _DBPE_v210__Ding_Boy_
{
	meta:
		description = "DBPE v2.10 -> Ding Boy"
	strings:
		$0 = {EB 20 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 9C 55 57 56 52 51 53 9C E8 ?? ?? ?? ?? 5D 81 ED ?? ?? ?? ?? EB 58 75 73 65 72 33 32 2E 64 6C 6C ?? 4D 65 73 73 61 67 65 42 6F 78 41 ?? 6B 65 72 6E 65 6C}
	condition:
		$0 at entrypoint
}
rule _PECompact_v133_
{
	meta:
		description = "PECompact v1.33"
	strings:
		$0 = {EB 06 68 ?? ?? ?? ?? C3 9C 60 E8 02 ?? ?? ?? 33 C0 8B C4 83 C0 04 93 8B E3 8B 5B FC 81 EB 0F 80 40 ?? 87 DD 8B 85 A6 80 40 ?? 01 85 03 80 40 ?? 66 C7 85 00 80 40 ?? 90 90 01 85 9E 80 40 ?? BB E8 0E}
	condition:
		$0 at entrypoint
}
rule _NTkrnl_Secure_Suite__NTkrnl_team_
{
	meta:
		description = "NTkrnl Secure Suite -> NTkrnl team"
	strings:
		$0 = {34 10 00 00 28 10 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 41 10 00 00 50 10 00 00 00 00 00 00 4B 65 72 6E 65 6C 33 32 2E 64 6C 6C 00 00 00 4C 6F 61 64 4C 69 62 72 61 72 79 41 00 00 00 47 65 74 50 72 6F 63 41 64 64 72 65 73 73}
	condition:
		$0
}
rule _PEtite_v22_
{
	meta:
		description = "PEtite v2.2"
	strings:
		$0 = {B8 ?? ?? ?? ?? 68 ?? ?? ?? ?? 64 FF 35 ?? ?? ?? ?? 64 89 25 ?? ?? ?? ?? 66 9C 60 50}
	condition:
		$0 at entrypoint
}
rule _PseudoSigner_01_ACProtect_109__Anorganix_
{
	meta:
		description = "PseudoSigner 0.1 [ACProtect 1.09] --> Anorganix"
	strings:
		$0 = {60 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 EB 02 00 00 90 90 90 04 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90}
	condition:
		$0 at entrypoint
}
rule _ASProtect_v11_
{
	meta:
		description = "ASProtect v1.1"
	strings:
		$0 = {60 E9 ?? 04 ?? ?? E9 ?? ?? ?? ?? ?? ?? ?? EE}
	condition:
		$0 at entrypoint
}
rule _CRYPToCRACks_PE_Protector_V093__Lukas_Fleischer_
{
	meta:
		description = "CRYPToCRACk's PE Protector V0.9.3 -> Lukas Fleischer"
	strings:
		$0 = {5B 81 E3 00 FF FF FF 66 81 3B 4D 5A 75 33 8B F3 03 73 3C 81 3E 50 45 00 00 75 26 0F B7 46 18 8B C8 69 C0 AD 0B 00 00 F7 E0 2D AB 5D 41 4B 69 C9 DE C0 00 00 03 C1}
	condition:
		$0 at entrypoint
}
rule _PESpin_v13beta__Cyberbob_
{
	meta:
		description = "PESpin v1.3beta -> Cyberbob"
	strings:
		$0 = {EB 01 68 60 E8 00 00 00 00 8B 1C 24 83 C3 12 81 2B E8 B1 06 00 FE 4B FD 82 2C 24 71 DF 46 00 0B E4 74 9E 75 01 C7 81 73 04 D7 7A F7 2F 81 73 19 77 00 43 B7 F6 C3 6B B7 00 00 F9 FF E3 C9 C2 08 00 A3 68 72 01 FF 5D 33 C9 41 E2 17 EB 07 EA EB 01 EB EB 0D FF}
	condition:
		$0 at entrypoint
}
rule _CHECKPRG_c_1992_
{
	meta:
		description = "CHECKPRG (c) 1992"
	strings:
		$0 = {33 C0 BE ?? ?? 8B D8 B9 ?? ?? BF ?? ?? BA ?? ?? 47 4A 74}
	condition:
		$0 at entrypoint
}
rule _WARNING__TROJAN__RobinPE_
{
	meta:
		description = "WARNING -> TROJAN -> RobinPE"
	strings:
		$0 = {60 6A 00 6A 20 6A 02 6A 00 6A 03 68 00 00 00}
	condition:
		$0 at entrypoint
}
rule _Upack_v029_Beta__v031_Beta__Dwing_
{
	meta:
		description = "Upack v0.29 Beta ~ v0.31 Beta -> Dwing"
	strings:
		$0 = {BE 88 01 ?? ?? AD 8B F8 95 AD 91 F3 A5 AD B5 ?? F3}
	condition:
		$0
}
rule _FSG_v110_Eng__dulekxt__MASM32__TASM32_
{
	meta:
		description = "FSG v1.10 (Eng) -> dulek/xt -> (MASM32 / TASM32)"
	strings:
		$0 = {03 F7 23 FE 33 FB EB 02 CD 20 BB 80 ?? 40 00 EB 01 86 EB 01 90 B8 F4 00 00 00 83 EE 05 2B}
		$1 = {03 F7 23 FE 33 FB EB 02 CD 20 BB 80 ?? 40 00 EB 01 86 EB 01 90 B8 F4 00 00 00 83 EE 05 2B F2 81 F6 EE 00 00 00 EB 02 CD 20 8A 0B E8 02 00 00 00 A9 54 5E C1 EE 07 F7 D7 EB 01 DE 81 E9 B7 96 A0 C4 EB 01 6B EB 02 CD 20 80 E9 4B C1 CF 08 EB 01 71 80 E9 1C EB}
	condition:
		$0 at entrypoint or $1 at entrypoint
}
rule _SimplePack_111_Method_1__bagieTMX_
{
	meta:
		description = "SimplePack 1.11 Method 1 -> bagie[TMX]"
	strings:
		$0 = {60 E8 00 00 00 00 5B 8D 5B FA BD 00 00 ?? ?? 8B 7D 3C 8D 74 3D 00 8D BE F8 00 00 00 0F B7 76 06 4E 8B 47 10 09 C0 74 55 0F B7 47 22 09 C0 74 4D 6A 04 68 00 10 00 00 FF 77 10 6A 00 FF 93 38 03 00 00 50 56 57 89 EE 03 77 0C 8B 4F 10 89 C7 89 C8 C1 E9 02 FC}
		$1 = {60 E8 00 00 00 00 5B 8D 5B FA BD 00 00 ?? ?? 8B 7D 3C 8D 74 3D 00 8D BE F8 00 00 00 0F B7 76 06 4E 8B 47 10 09 C0 74 55 0F B7 47 22 09 C0 74 4D 6A 04 68 00 10 00 00 FF 77 10 6A 00 FF 93 38 03 00 00 50 56 57 89 EE 03 77 0C 8B 4F 10 89 C7 89 C8 C1 E9 02 FC F3 A5 89 C1 83 E1 03 F3 A4 5F 5E 8B 04 24 89 EA 03 57 0C E8 3F 01 00 00 58 68 00 40 00 00 FF 77 10 50 FF 93 3C 03 00 00 83 C7 28 4E 75 9E BE ?? ?? ?? ?? 09 F6 0F 84 0C 01 00 00 01 EE 8B 4E 0C 09 C9 0F 84 FF 00 00 00 01 E9 89 CF 57 FF 93 30 03 00 00 09 C0 75 3D 6A 04 68 00 10 00 00 68 00 10 00 00 6A 00 FF 93 38 03 00 00 89 C6 8D 83 6F 02 00 00 57 50 56 FF 93 44 03 00 00 6A 10 6A 00 56 6A 00 FF 93 48 03 00 00 89 E5}
	condition:
		$0 at entrypoint or $1 at entrypoint
}
rule _ASProtect_v12__Alexey_Solodovnikov_h1_
{
	meta:
		description = "ASProtect v1.2 -> Alexey Solodovnikov (h1)"
	strings:
		$0 = {90 60 E8 1B 00 00 00 E9 FC 8D B5 0F 06 00 00 8B FE B9 97 00 00 00 AD 35 78 56 34 12 AB 49 75 F6 EB 04 5D 45 55 C3 E9 ?? ?? ?? 00}
	condition:
		$0
}
rule _nPack_v11_250_Beta__NEOx_
{
	meta:
		description = "nPack v1.1 250 Beta -> NEOx"
	strings:
		$0 = {83 3D 04 ?? ?? ?? 00 75 05 E9 01 00 00 00 C3 E8 46 00 00 00 E8 73 00 00 00 B8 2E ?? ?? ?? 2B 05 08 ?? ?? ?? A3 00 ?? ?? ?? E8 9C 00 00 00 E8 04 02 00 00 E8 FB 06 00 00 E8 1B 06 00 00 A1 00 ?? ?? ?? C7 05 04 ?? ?? ?? 01 00 00 00 01 05 00 ?? ?? ?? FF 35 00}
	condition:
		$0 at entrypoint
}
rule _EXE_Shield_V06__SMoKE_
{
	meta:
		description = "EXE Shield V0.6 -> SMoKE"
	strings:
		$0 = {E8 04 00 00 00 83 60 EB 0C 5D EB 05 45 55 EB 04 B8 EB F9 00 C3 E8 00 00 00 00 5D 81 ED D4 1A 40 00 EB 01 00 8D B5 5E 1B 40 00 BA A1 0B 00 00 EB 01 00 8D 8D FF 26 40 00 8B 09 E8 14 00 00 00 83 EB 01 00 8B FE E8 00 00 00 00 58 83 C0 07 50 C3 00 EB 04 58 40}
		$1 = {E8 04 00 00 00 83 60 EB 0C 5D EB 05 45 55 EB 04 B8 EB F9 00 C3 E8 00 00 00 00 5D 81 ED D4 1A 40 00 EB 01 00 8D B5 5E 1B 40 00 BA A1 0B 00 00 EB 01 00 8D 8D FF 26 40 00 8B 09 E8 14 00 00 00 83 EB 01 00 8B FE E8 00 00 00 00 58 83 C0 07 50 C3 00 EB 04 58 40 50 C3 8A 06 46 EB 01 00 D0 C8 E8 14 00 00 00 83 EB 01 00 2A C2 E8 00 00 00 00 5B 83 C3 07 53 C3 00 EB 04 5B 43 53 C3 EB 01 00 32 C2 E8 0B 00 00 00 00 32 C1 EB 01 00 C0 C0 02 EB 09 2A C2 5B EB 01 00 43 53 C3 88 07 EB 01 00 47 4A 75 B4 90}
	condition:
		$0 at entrypoint or $1 at entrypoint
}
rule _FSG_v20__bartxt_
{
	meta:
		description = "FSG v2.0 -> bart/xt"
	strings:
		$0 = {87 25 ?? ?? ?? 00 61 94 55 A4 B6 80 FF 13}
	condition:
		$0 at entrypoint
}
rule _AHTeam_EP_Protector_03_fake_PE_Lock_NT_204__FEUERRADER_
{
	meta:
		description = "AHTeam EP Protector 0.3 (fake PE Lock NT 2.04) -> FEUERRADER"
	strings:
		$0 = {90 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 90 FF E0 EB 03 CD 20 C7 1E EB 03 CD 20 EA 9C EB 02 EB 01 EB 01 EB 60 EB 03 CD 20 EB EB 01 EB}
	condition:
		$0 at entrypoint
}
rule _PEtite_v13_
{
	meta:
		description = "PEtite v1.3"
	strings:
		$0 = {66 9C 60 50 8D 88 ?? F0 ?? ?? 8D 90 04 16 ?? ?? 8B DC 8B E1 68 ?? ?? ?? ?? 53 50 80 04 24 08 50 80 04 24 42}
	condition:
		$0 at entrypoint
}
rule _PseudoSigner_01_Microsoft_Visual_Basic_60_DLL__Anorganix_
{
	meta:
		description = "PseudoSigner 0.1 [Microsoft Visual Basic 6.0 DLL] --> Anorganix"
	strings:
		$0 = {90 90 90 90 68 ?? ?? ?? ?? 67 64 FF 36 00 00 67 64 89 26 00 00 F1 90 90 90 90 5A 68 90 90 90 90 68 90 90 90 90 52 E9 90 90 FF}
	condition:
		$0 at entrypoint
}
rule _Vx_Eddie1800_
{
	meta:
		description = "Vx: Eddie.1800"
	strings:
		$0 = {E8 ?? ?? 5E 81 EE ?? ?? FC 2E ?? ?? ?? ?? 4D 5A ?? ?? FA 8B E6 81 C4 ?? ?? FB 3B ?? ?? ?? ?? ?? 50 06 56 1E 8B FE 33 C0 50 8E D8 C4 ?? ?? ?? 2E ?? ?? ?? ?? 2E}
	condition:
		$0 at entrypoint
}
rule _Morphine_v27__Holy_Father__Ratter29A_
{
	meta:
		description = "Morphine v2.7 --> Holy_Father & Ratter/29A"
	strings:
		$0 = {00 00 00 00 6B 65 72 6E 65 6C 33 32 2E 64 6C 6C 00 00 47 65 74 50 72 6F 63 41 64 64 72 65 73 73 00 00 4C 6F 61 64 4C 69 62 72 61 72 79 41 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00}
		$1 = {00 00 00 00 00 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? 00 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? 00 00 00 00 6B 65 72 6E 65 6C 33 32 2E 64 6C 6C 00 00 47 65 74 50 72 6F 63}
	condition:
		$0 or $1
}
rule _VIRUS__IWormKLEZ_
{
	meta:
		description = "VIRUS - I-Worm.KLEZ"
	strings:
		$0 = {55 8B EC 6A FF 68 40 D2 40 ?? 68 04 AC 40 ?? 64 A1 ?? ?? ?? ?? 50 64 89 25 ?? ?? ?? ?? 83 EC 58 53 56 57 89 65 E8 FF 15 BC D0}
	condition:
		$0
}
rule _EncryptPE_V22006710__WFS_
{
	meta:
		description = "EncryptPE V2.2006.7.10 -> WFS"
	strings:
		$0 = {60 9C 64 FF 35 00 00 00 00 E8 73 01 00 00}
		$1 = {60 9C 64 FF 35 00 00 00 00 E8 73 01 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 00 00 00 00 6B 65 72 6E 65 6C 33 32 2E 64 6C 6C 00 00 00 47 65 74 54 65 6D 70 50 61 74 68 41 00 00 00 43 72 65 61 74 65 46 69 6C 65 41 00 00 00 43 72 65 61 74 65 46 69 6C 65 4D 61 70 70 69 6E 67 41 00 00 00 4D 61 70 56 69 65 77 4F 66 46 69 6C 65 00 00 00 55 6E 6D 61 70 56 69 65 77 4F 66 46 69 6C 65 00 00 00 43 6C 6F 73 65 48 61 6E 64 6C 65 00 00 00 4C 6F 61 64 4C 69 62 72 61 72 79 41 00 00 00 47 65 74 50 72 6F 63 41 64 64 72 65 73 73 00 00 00 45 78 69 74 50 72 6F 63 65 73 73 00 00 00 00}
	condition:
		$0 at entrypoint or $1 at entrypoint
}
rule _NsPacK_V33__LiuXingPing_
{
	meta:
		description = "NsPacK V3.3 -> LiuXingPing"
	strings:
		$0 = {9C 60 E8 00 00 00 00 5D 83 ED 07 8D 85 ?? ?? ?? ?? 80 38 00 74}
	condition:
		$0 at entrypoint
}
rule _Thinstall_Embedded_2501__Jitit_
{
	meta:
		description = "Thinstall Embedded 2.501 -> Jitit"
	strings:
		$0 = {55 8B EC B8 ?? ?? ?? ?? BB ?? ?? ?? ?? 50 E8 00 00 00 00 58 2D A8 1A 00 00 B9 6D 1A 00 00 BA 21 1B 00 00 BE 00 10 00 00 BF C0 53 00 00 BD F0 1A 00 00 03 E8 81 75 00 ?? ?? ?? ?? 81 75 04 ?? ?? ?? ?? 81 75 08 ?? ?? ?? ?? 81 75 0C ?? ?? ?? ?? 81 75 10}
	condition:
		$0 at entrypoint
}
rule _Werus_Crypter_10__Kas_
{
	meta:
		description = "Werus Crypter 1.0 -> Kas"
	strings:
		$0 = {68 98 11 40 00 6A 00 E8 50 00 00 00 C9 C3 ED B3 FE FF FF 6A 00 E8 0C 00 00 00 FF 25 80 10 40 00 FF 25 84 10 40 00 FF 25 88 10 40 00 FF 25 8C 10 40 00 FF 25 90 10 40 00 FF 25 94 10 40 00 FF 25 98 10 40 00 FF 25 9C 10 40 00 FF 25 A0 10 40 00 FF 25 A4 10 40 00 FF 25 A8 10 40 00 FF 25 B0 10 40 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 BB E8 12 40 00 80 33 05 E9 7D FF FF FF}
	condition:
		$0
}
rule _ILUCRYPT_v4015_exe_
{
	meta:
		description = "ILUCRYPT v4.015 [exe]"
	strings:
		$0 = {8B EC FA C7 46 F7 ?? ?? 42 81 FA ?? ?? 75 F9 FF 66 F7}
	condition:
		$0 at entrypoint
}
rule _NJoy_11__NEX_
{
	meta:
		description = "N-Joy 1.1 -> NEX"
	strings:
		$0 = {55 8B EC 83 C4 F0 B8 0C 3C 40 00 E8 24 FC FF FF 6A 00 68 28 3A 40 00 6A 0A 6A 00 E8 D8 FC FF FF E8 7F F5 FF FF 8D 40 00}
	condition:
		$0 at entrypoint
}
rule _kkrunchy_v017__F_Giesen_
{
	meta:
		description = "kkrunchy v0.17 -> F. Giesen"
	strings:
		$0 = {FC FF 4D 08 31 D2 8D 7D 30 BE}
	condition:
		$0
}
rule _ASPack_v102a__Alexey_Solodovnikov_
{
	meta:
		description = "ASPack v1.02a -> Alexey Solodovnikov"
	strings:
		$0 = {60 E8 ?? ?? ?? ?? 5D 81 ED 3E D9 43 ?? B8 38 ?? ?? ?? 03 C5 2B 85 0B DE 43 ?? 89 85 17 DE 43 ?? 80 BD 01 DE 43 ?? ?? 75 15 FE 85 01 DE 43 ?? E8 1D ?? ?? ?? E8 79 02 ?? ?? E8 12 03 ?? ?? 8B 85 03 DE 43 ?? 03 85 17 DE 43 ?? 89 44 24 1C 61 FF}
	condition:
		$0 at entrypoint
}
rule _PseudoSigner_02_Watcom_CCpp_DLL__Anorganix_
{
	meta:
		description = "PseudoSigner 0.2 [Watcom C/C++ DLL] --> Anorganix"
	strings:
		$0 = {53 56 57 55 8B 74 24 14 8B 7C 24 18 8B 6C 24 1C 83 FF 03 0F 87 01 00 00 00 F1}
	condition:
		$0 at entrypoint
}
rule _UnderGround_Crypter__by_Booster2000_
{
	meta:
		description = "UnderGround Crypter - by Booster2000"
	strings:
		$0 = {55 8B EC 83 C4 F0 B8 74 3C 00 11 E8 94 F9 FF FF E8 BF FE FF FF E8 0A F3 FF FF 8B C0}
	condition:
		$0
}
rule _ENIGMA_Protector__Sukhov_Vladimir_
{
	meta:
		description = "ENIGMA Protector -> Sukhov Vladimir"
	strings:
		$0 = {45 6E 69 67 6D 61 20 70 72 6F 74 65 63 74 6F 72 20 76 31}
	condition:
		$0
}
rule _PE_Packer_
{
	meta:
		description = "PE Packer"
	strings:
		$0 = {FC 8B 35 70 01 40 ?? 83 EE 40 6A 40 68 ?? 30 10}
	condition:
		$0 at entrypoint
}
rule _VcasmProtector_10_
{
	meta:
		description = "Vcasm-Protector 1.0"
	strings:
		$0 = {55 8B EC 6A FF 68 ?? ?? ?? 00 68 ?? ?? ?? 00 64 A1 00 00 00 00 50 64 89 25 00 00 00 00 E8 03 00 00 00 C7 84 00 58 EB 01 E9 83 C0 07 50 C3 FF 35 E8 03 00 00 00 C7 84 00 58 EB 01 E9 83 C0 07 50 C3 FF 35 E8 07 00 00 00 C7 83 83 C0 13 EB 0B 58 EB 02 CD 20 83}
	condition:
		$0 at entrypoint
}
rule _ASPack_v21__Alexey_Solodovnikov_
{
	meta:
		description = "ASPack v2.1 -> Alexey Solodovnikov"
	strings:
		$0 = {60 E8 72 05 00 00 EB 33 87 DB 90 00}
	condition:
		$0 at entrypoint
}
rule _Escargot_V01__ppMeat_
{
	meta:
		description = "Escargot V0.1 -> ++Meat"
	strings:
		$0 = {EB 04 40 30 2E 31 60 68 61}
	condition:
		$0 at entrypoint
}
rule _DotFix_Nice_Protect_21__GPcH_Soft_
{
	meta:
		description = "DotFix Nice Protect 2.1 -> GPcH Soft"
	strings:
		$0 = {E9 FF 00 00 00 60 8B 74 24 24 8B 7C 24 28 FC B2 80 33 DB A4 B3 02 E8 6D 00 00 00 73 F6 33 C9 E8 64 00 00 00 73 1C 33 C0 E8 5B 00 00 00 73 23 B3 02 41 B0 10 E8 4F 00 00 00 12 C0 73 F7 75 3F AA EB D4 E8 4D 00 00 00 2B CB 75 10 E8 42 00 00 00 EB 28 AC D1 E8 74 4D 13 C9 EB 1C 91 48 C1 E0 08 AC E8 2C 00 00 00 3D 00 7D 00 00 73 0A 80 FC 05 73 06 83 F8 7F 77 02 41 41 95 8B C5 B3 01 56 8B F7 2B F0 F3 A4 5E EB 8E 02 D2 75 05 8A 16 46 12 D2 C3 33 C9 41 E8 EE FF FF FF 13 C9 E8 E7 FF FF FF 72 F2 C3 2B 7C 24 28 89 7C 24 1C 61 C3 60 B8 ?? ?? ?? ?? 03 C5 50 B8 ?? ?? ?? ?? 03 C5 FF 10 BB ?? ?? ?? ?? 03 DD 83 C3 0C 53 50 B8 ?? ?? ?? ?? 03 C5 FF 10 6A 40 68 00 10 00 00 FF 74 24 2C 6A 00 FF D0 89 44 24 1C 61 C3}
	condition:
		$0
}
rule _Obsidium_1200__Obsidium_Software_
{
	meta:
		description = "Obsidium 1.2.0.0 -> Obsidium Software"
	strings:
		$0 = {EB 02 ?? ?? E8 3F 1E 00 00}
	condition:
		$0 at entrypoint
}
rule _MSLRH_v031a_
{
	meta:
		description = "[MSLRH] v0.31a"
	strings:
		$0 = {60 D1 CB 0F CA C1 CA E0 D1 CA 0F C8 EB 01 F1 0F C0 C9 D2 D1 0F C1 C0 D3 DA C0 D6 A8 EB 01 DE D0 EC 0F C1 CB D0 CF 0F C1 D1 D2 DB 0F C8 EB 01 BC C0 E9 C6 C1 D0 91 0F CB EB 01 73 0F CA 87 D9 87 D2 D0 CF 87 D9 0F C8 EB 01 C1 EB 01 A2 86 CA D0 E1 0F C0 CB 0F}
		$1 = {60 D1 CB 0F CA C1 CA E0 D1 CA 0F C8 EB 01 F1 0F C0 C9 D2 D1 0F C1 C0 D3 DA C0 D6 A8 EB 01 DE D0 EC 0F C1 CB D0 CF 0F C1 D1 D2 DB 0F C8 EB 01 BC C0 E9 C6 C1 D0 91 0F CB EB 01 73 0F CA 87 D9 87 D2 D0 CF 87 D9 0F C8 EB 01 C1 EB 01 A2 86 CA D0 E1 0F C0 CB 0F CA C0 C7 91 0F CB C1 D9 0C 86 F9 86 D7 D1 D9 EB 01 A5 EB 01 11 EB 01 1D 0F C1 C2 0F CB 0F C1 C2 EB 01 A1 C0 E9 FD 0F C1 D1 EB 01 E3 0F CA 87 D9 EB 01 F3 0F CB 87 C2 0F C0 F9 D0 F7 EB 01 2F 0F C9 C0 DC C4 EB 01 35 0F CA D3 D1 86 C8 EB 01 01 0F C0 F5 87 C8 D0 DE EB 01 95 EB 01 E1 EB 01 FD EB 01 EC 87 D3 0F CB C1 DB 35 D3 E2 0F C8 86 E2 86 EC C1 FB 12 D2 EE 0F C9 D2 F6 0F CA 87 C3 C1 D3 B3 EB 01 BF D1 CB 87 C9 0F CA 0F C1 DB EB 01 44 C0 CA F2 0F C1 D1 0F CB EB 01 D3 EB 05 E8 EB 04 40 00 EB FA E8 0A 00 00 00}
	condition:
		$0 or $1 at entrypoint
}
rule _ExeSafeguard_v10__simonzh_
{
	meta:
		description = "ExeSafeguard v1.0 -> simonzh"
	strings:
		$0 = {C0 5D EB 4E EB 47 DF 69 4E 58 DF 59 74 F3 EB 01 DF 75 EE 9A 59 9C 81 C1 E2 FF FF FF EB 01 DF 9D FF E1 E8 51 E8 EB FF FF FF DF 22 3F 9A C0 81 ED 19 18 40 00 EB 48 EB 47 DF 69 4E 58 DF 59 79 EE EB 01 DF 78 E9 DF 59 9C 81 C1 E5 FF FF FF 9D FF E1 EB 51 E8 EE}
	condition:
		$0
}
rule _PackItBitch_10__archphase_
{
	meta:
		description = "PackItBitch 1.0 -> archphase"
	strings:
		$0 = {00 00 00 00 00 00 00 00 00 00 00 00 28 ?? ?? ?? 35 ?? ?? ?? 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 4B 45 52 4E 45 4C 33 32 2E 44 4C 4C 00 41 ?? ?? ?? 50 ?? ?? ?? 00 00 00 00 00 00 4C 6F 61 64 4C 69 62 72 61 72 79 41 00 00 00 47 65 74 50 72 6F 63 41 64 64 72 65 73 73 00 00 ?? ?? ?? ?? ?? ?? ?? 79 ?? ?? ?? 7D ?? ?? ?? 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00}
	condition:
		$0
}
rule _MarjinZ_EXEScrambler_SE__by_MarjinZ_
{
	meta:
		description = "MarjinZ EXE-Scrambler SE - by MarjinZ"
	strings:
		$0 = {E8 A3 02 00 00 E9 35 FD FF FF FF 25 C8 20 00 10 6A 14 68 C0 21 00 10 E8 E4 01 00 00 FF 35 7C 33 00 10 8B 35 8C 20 00 10 FF D6 59 89 45 E4 83 F8 FF 75 0C FF 75 08 FF 15 88 20 00 10 59 EB 61 6A 08 E8 02 03 00 00 59 83 65 FC 00 FF 35 7C 33 00 10 FF D6 89 45 E4 FF 35 78 33 00 10 FF D6 89 45 E0 8D 45 E0 50 8D 45 E4 50 FF 75 08 E8 D1 02 00 00 89 45 DC FF 75 E4 8B 35 74 20 00 10 FF D6 A3 7C 33 00 10 FF 75 E0 FF D6 83 C4 1C A3 78 33 00 10 C7 45 FC FE FF FF FF E8 09 00 00 00 8B 45 DC E8 A0 01 00 00 C3}
	condition:
		$0
}
rule _MSLRH_v032a_fake_MSVCpp_70_DLL_Method_3__emadicius_
{
	meta:
		description = "[MSLRH] v0.32a (fake MSVC++ 7.0 DLL Method 3) -> emadicius"
	strings:
		$0 = {55 8B EC 53 8B 5D 08 56 8B 75 0C 5E 5B 5D EB 05 E8 EB 04 40 00 EB FA E8 0A 00 00 00 E8 EB 0C 00 00 E8 F6 FF FF FF E8 F2 FF FF FF 83 C4 08 74 04 75 02 EB 02 EB 01 81 50 E8 02 00 00 00 29 5A 58 6B C0 03 E8 02 00 00 00 29 5A 83 C4 04 58 74 04 75 02 EB 02 EB 01 81 0F 31 50 0F 31 E8 0A 00 00 00 E8 EB 0C 00 00 E8 F6 FF FF FF E8 F2 FF FF FF}
	condition:
		$0 at entrypoint
}
rule _ACProtect_V13X__risco_
{
	meta:
		description = "ACProtect V1.3X -> risco"
	strings:
		$0 = {60 50 E8 01 00 00 00 75 83}
	condition:
		$0 at entrypoint
}
rule _PseudoSigner_01_NorthStar_PE_Shrinker_13__Anorganix_
{
	meta:
		description = "PseudoSigner 0.1 [NorthStar PE Shrinker 1.3] --> Anorganix"
	strings:
		$0 = {9C 60 E8 00 00 00 00 5D B8 B3 85 40 00 2D AC 85 40 00 2B E8 8D B5 00 00 00 00 E9}
	condition:
		$0 at entrypoint
}
rule _PseudoSigner_01_PEtite_2x_level_0__Anorganix_
{
	meta:
		description = "PseudoSigner 0.1 [PEtite 2.x (level 0)] --> Anorganix"
	strings:
		$0 = {90 90 90 90 68 ?? ?? ?? ?? 67 64 FF 36 00 00 67 64 89 26 00 00 F1 90 90 90 90 B8 00 90 90 00 6A 00 68 90 90 90 00 64 FF 35 00 00 00 00 64 89 25 00 00 00 00 66 9C 60 50 8B D8 03 00 68}
	condition:
		$0 at entrypoint
}
rule _kkrunchy_023_alpha_2__Ryd_
{
	meta:
		description = "kkrunchy 0.23 alpha 2 -> Ryd"
	strings:
		$0 = {BD ?? ?? ?? ?? C7 45 00 ?? ?? ?? 00 B8 ?? ?? ?? 00 89 45 04 89 45 54 50 C7 45 10 ?? ?? ?? 00 FF 4D 0C FF 45 14 FF 45 58 C6 45 1C 08 B8 00 08 00 00 8D 7D 30 AB AB AB AB BB 00 00 D8 00 BF}
		$1 = {BD ?? ?? ?? ?? C7 45 00 ?? ?? ?? 00 B8 ?? ?? ?? 00 89 45 04 89 45 54 50 C7 45 10 ?? ?? ?? 00 FF 4D 0C FF 45 14 FF 45 58 C6 45 1C 08 B8 00 08 00 00 8D 7D 30 AB AB AB AB BB 00 00 D8 00 BF ?? ?? ?? 01 31 C9 41 8D 74 09 01 B8 CA 8E 2A 2E 99 F7 F6 01 C3 89 D8 C1 E8 15 AB FE C1 75 E8 BE}
	condition:
		$0 at entrypoint or $1 at entrypoint
}
rule _tElock_v071b2_
{
	meta:
		description = "tElock v0.71b2"
	strings:
		$0 = {60 E8 44 11 00 00 C3 83}
	condition:
		$0 at entrypoint
}
rule _AntiDote_10_Beta__SISTeam_
{
	meta:
		description = "AntiDote 1.0 Beta -> SIS-Team"
	strings:
		$0 = {E8 BB FF FF FF 84 C0 74 2F 68 04 01 00 00 68 C0 23 60 00 6A 00 FF 15 08 10 60 00 E8 40 FF FF FF 50 68 78 11 60 00 68 68 11 60 00 68 C0 23 60 00 E8 AB FD FF FF 83 C4 10 33 C0 C2 10 00 90 90 90 8B 4C 24 08 56 8B 74 24 08 33 D2 8B C6 F7 F1 8B C6 85 D2 74 08 33 D2 F7 F1 40 0F AF C1 5E C3 90 8B 44 24 04 53 55 56 8B 48 3C 57 03 C8 33 D2 8B 79 54 8B 71 38 8B C7 F7 F6 85 D2 74 0C 8B C7 33 D2 F7 F6 8B F8 47 0F AF FE 33 C0 33 DB 66 8B 41 14 8D 54 08 18 33 C0 66 8B 41 06 89 54 24 14 8D 68 FF 85 ED 7C 37 33 C0}
	condition:
		$0 at entrypoint
}
rule _vprotector_12__vcasm_
{
	meta:
		description = "vprotector 1.2 -> vcasm"
	strings:
		$0 = {EB 0B 5B 56 50 72 6F 74 65 63 74 5D 00 E8 24 00 00 00 8B 44 24 04 8B 00 3D 04 00 00 80 75 08 8B 64 24 08 EB 04 58 EB 0C E9 64 8F 05 00 00 00 00 74 F3 75 F1 EB 24 64 FF 35 00 00 00 00 EB 12 FF 9C 74 03 75 01 E9 81 0C 24 00 01 00 00 9D 90 EB F4 64 89 25 00}
		$1 = {EB 0B 5B 56 50 72 6F 74 65 63 74 5D 00 E8 24 00 00 00 8B 44 24 04 8B 00 3D 04 00 00 80 75 08 8B 64 24 08 EB 04 58 EB 0C E9 64 8F 05 00 00 00 00 74 F3 75 F1 EB 24 64 FF 35 00 00 00 00 EB 12 FF 9C 74 03 75 01 E9 81 0C 24 00 01 00 00 9D 90 EB F4 64 89 25 00 00 00 00 EB E6 E8 16 00 00 00 8B 5C 24 0C 8B A3 C4 00 00 00 64 8F 05 00 00 00 00 83 C4 04 EB 14 64 FF 35 00 00 00 00 64 89 25 00 00 00 00 33 C9 99 F7 F1 E9 E8 03 00 00 00 C7 84 00 58 EB 01 E9 83 C0 07 50 C3 FF 35 E8 16 00 00 00 8B 5C 24 0C 8B A3 C4 00 00 00 64 8F 05 00 00 00 00 83 C4 04 EB 14 64 FF 35 00 00 00 00 64 89 25 00 00 00 00 33 C9 99 F7 F1 E9 E8 03 00 00 00 C7 84 00 58 EB 01 E9 83 C0 07 50 C3 FF 35 33 F6 E8 10 00 00 00 8B 64 24 08 64 8F 05 00 00 00 00 58 EB 13 C7 83 64 FF 35 00 00 00 00 64 89 25 00 00 00 00 AD CD 20 E8 05 00 00 00 0F 01 EB 05 E8 EB FB 00 00 83 C4 04 E8 08 00 00 00 0F 01 83 C0}
	condition:
		$0 at entrypoint or $1 at entrypoint
}
rule _PEBundle_v310_
{
	meta:
		description = "PEBundle v3.10"
	strings:
		$0 = {9C 60 E8 02 00 00 00 33 C0 8B C4 83 C0 04 93 8B E3 8B 5B FC 81 EB 07 20 40 00 87 DD ?? ?? ?? ?? 40 00 01}
	condition:
		$0
}
rule _Petite_14__c199899_Ian_Luck_
{
	meta:
		description = "Petite 1.4 -> (c)1998-99 Ian Luck"
	strings:
		$0 = {66 9C 60 50 8B D8 03 00 68 54 BC 00 00 6A 00 FF 50 14 8B CC 8D A0 54 BC 00 00 50 8B C3 8D 90 ?? 16 00 00 68 00 00 ?? ?? 51 50 80 04 24 08 50 80 04 24 42 50 80 04 24 61 50 80 04 24 9D 50 80 04 24 BB 83 3A 00 0F 84 D8 14 00 00 8B 44 24 18 F6}
	condition:
		$0 at entrypoint
}
rule _Cryptic_20__Tughack_
{
	meta:
		description = "Cryptic 2.0 -> Tughack"
	strings:
		$0 = {B8 00 00 40 00 BB ?? ?? ?? 00 B9 00 10 00 00 BA ?? ?? ?? 00 03 D8 03 C8 03 D1 3B CA 74 06 80 31 ?? 41 EB F6 FF E3}
	condition:
		$0 at entrypoint
}
rule _Matrix_Dongle__TDi_GmbH_
{
	meta:
		description = "Matrix Dongle -> TDi GmbH"
	strings:
		$0 = {00 00 00 00 00 00 00 00 00 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? 00 00 00 00 00 00 4C 6F 61 64 4C 69 62 72 61 72 79 41 00 00 00 47 65 74 50 72 6F 63 41 64 64 72 65 73 73 00 4B 45 52 4E 45 4C 33 32 2E 44 4C 4C 00 E8 B6 00 00 00 00 00 00 00 00 00 ?? ?? ?? ?? ?? ?? E8 00 00 00 00 5B 2B D9 8B F8 8B 4C 24 2C 33 C0 2B CF F2 AA 8B 3C 24 8B 0A 2B CF 89 5C 24 20 80 37 A2 47 49 75 F9 8D 64 24 04 FF 64 24 FC 60 C7 42 08 ?? ?? ?? ?? E8 C5 FF FF FF C3 C2 F7 29 4E 29 5A 29 E6 86 8A 89 63 5C A2 65 E2 A3 A2}
		$1 = {E8 00 00 00 00 E8 00 00 00 00 59 5A 2B CA 2B D1 E8 1A FF FF FF}
	condition:
		$0 or $1 at entrypoint
}
rule _MSLRH_v032a_fake_MSVCpp_60_DLL__emadicius_
{
	meta:
		description = "[MSLRH] v0.32a (fake MSVC++ 6.0 DLL) -> emadicius"
	strings:
		$0 = {55 8B EC 53 8B 5D 08 56 8B 75 0C 57 8B 7D 10 85 F6 5F 5E 5B 5D EB 05 E8 EB 04 40 00 EB FA E8 0A 00 00 00 E8 EB 0C 00 00 E8 F6 FF FF FF E8 F2 FF FF FF 83 C4 08 74 04 75 02 EB 02 EB 01 81 50 E8 02 00 00 00 29 5A 58 6B C0 03 E8 02 00 00 00 29 5A 83 C4 04 58 74 04 75 02 EB 02 EB 01 81 0F 31 50 0F 31 E8 0A 00 00 00 E8 EB 0C 00 00 E8 F6 FF FF FF E8 F2 FF FF FF}
	condition:
		$0 at entrypoint
}
rule _PE_Protect_v09_
{
	meta:
		description = "PE Protect v0.9"
	strings:
		$0 = {52 51 55 57 64 67 A1 30 00 85 C0 78 0D E8 ?? ?? ?? ?? 58 83 C0 07 C6 ?? C3}
		$1 = {E9 ?? 00 00 00 0D 0A 0D 0A C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 0D 0A 50 45 2D 50 52 4F 54 45 43 54 20 30 2E 39 20 28 43 29 6F}
	condition:
		$0 at entrypoint or $1
}
rule _FSG_v120_Eng__dulekxt__Microsoft_Visual_Cpp_60__70_
{
	meta:
		description = "FSG v1.20 (Eng) -> dulek/xt -> (Microsoft Visual C++ 6.0 / 7.0)"
	strings:
		$0 = {EB 02 CD 20 EB 01 91 8D 35 80 ?? ?? 00 33 C2 68 83 93 7E 7D 0C A4 5B 23 C3 68 77 93 7E 7D EB 01 FA 5F E8 02 00 00 00 F7 FB 58 33 DF EB 01 3F E8 02 00 00 00 11 88 58 0F B6 16 EB 02 CD 20 EB 02 86 2F 2A D3 EB 02 CD 20 80 EA 2F EB 01 52 32 D3 80 E9 CD 80 EA}
	condition:
		$0 at entrypoint
}
rule _CopyMinder__MicrocosmLtd_
{
	meta:
		description = "CopyMinder -> Microcosm.Ltd"
	strings:
		$0 = {83 25 ?? ?? ?? ?? EF 6A 00 E8 ?? ?? ?? ?? E8 ?? ?? ?? ?? CC FF 25 ?? ?? ?? ?? FF 25 ?? ?? ?? ?? FF 25 ?? ?? ?? ?? FF 25 ?? ?? ?? ?? FF 25 ?? ?? ?? ?? FF 25 ?? ?? ?? ?? FF 25 ?? ?? ?? ?? FF 25 ?? ?? ?? ?? FF 25 ?? ?? ?? ?? FF 25 ?? ?? ?? ?? FF 25 ?? ?? ?? ?? FF 25 ?? ?? ?? ?? FF 25 ?? ?? ?? ?? FF 25 ?? ?? ?? ?? FF 25 ?? ?? ?? ?? FF 25 ?? ?? ?? ?? FF 25 ?? ?? ?? ?? FF 25}
	condition:
		$0 at entrypoint
}
rule _nPack_V111502006Beta__NEOxuinC_
{
	meta:
		description = "nPack V1.1.150.2006.Beta -> NEOx/[uinC]"
	strings:
		$0 = {83 3D 40 ?? ?? ?? 00 75 05 E9 01 00 00 00 C3 E8 41 00 00 00 B8 80 ?? ?? ?? 2B 05 08 ?? ?? ?? A3 3C ?? ?? ?? E8 5E 00 00 00 E8 E0 01 00 00 E8 EC 06 00 00 E8 F7 05 00 00 A1 3C ?? ?? ?? C7 05 40 ?? ?? ?? 01 00 00 00 01 05 00 ?? ?? ?? FF 35 00 ?? ?? ?? C3 C3}
	condition:
		$0 at entrypoint
}
rule _Shegerd_Dongle_V478__MSCo_
{
	meta:
		description = "Shegerd Dongle V4.78 -> MS.Co."
	strings:
		$0 = {E8 32 00 00 00 B8 ?? ?? ?? ?? 8B 18 C1 CB 05 89 DA 36 8B 4C 24 0C}
	condition:
		$0 at entrypoint
}
rule _CDS_SS_v10_Beta_1__CyberDoom__TeamX_
{
	meta:
		description = "CDS SS v1.0 Beta 1 -> CyberDoom / Team-X"
	strings:
		$0 = {60 E8 00 00 00 00 5D 81 ED CA 47 40 00 FF 74 24 20 E8 D3 03 00 00 0B C0 0F 84 13 03 00 00 89 85 B8 4E 40 00 66 8C D8 A8 04 74 0C C7 85 8C 4E 40 00 01 00 00 00 EB 12 64 A1 30 00 00 00 0F B6 40 02 0A C0 0F 85 E8 02 00 00 8D 85 F6 4C 40 00 50 FF B5 B8 4E 40 00 E8 FC 03 00 00 0B C0 0F 84 CE 02 00 00 E8 1E 03 00 00 89 85 90 4E 40 00 8D 85 03 4D 40 00 50 FF B5 B8}
	condition:
		$0 at entrypoint
}
rule _PE_Lock_NT_v202c_
{
	meta:
		description = "PE Lock NT v2.02c"
	strings:
		$0 = {EB 02 C7 85 1E EB 03 CD 20 EB EB 01 EB 9C EB 01 EB EB 02 CD}
	condition:
		$0 at entrypoint
}
rule _JDPack_
{
	meta:
		description = "JDPack"
	strings:
		$0 = {60 E8 ?? ?? ?? ?? 5D 8B D5 81 ED ?? ?? ?? ?? 2B 95 ?? ?? ?? ?? 81 EA 06 ?? ?? ?? 89 95 ?? ?? ?? ?? 83 BD 45}
	condition:
		$0 at entrypoint
}
rule _Obsidium_1341__Obsidium_Software_
{
	meta:
		description = "Obsidium 1.3.4.1 -> Obsidium Software"
	strings:
		$0 = {EB 01 ?? E8 2A 00 00 00 EB 04 ?? ?? ?? ?? EB 02 ?? ?? 8B 54 24 0C EB 03 ?? ?? ?? 83 82 B8 00 00 00 21 EB 02 ?? ?? 33 C0 EB 03 ?? ?? ?? C3 EB 02 ?? ?? EB 01 ?? 64 67 FF 36 00 00 EB 01 ?? 64 67 89 26 00 00 EB 02 ?? ?? EB 03 ?? ?? ?? 50 EB 04 ?? ?? ?? ?? 33 C0 EB 02 ?? ?? 8B 00 EB 04 ?? ?? ?? ?? C3 EB 02 ?? ?? E9 FA 00 00 00 EB 02 ?? ?? E8 D5 FF FF FF EB 01 ?? EB 01 ?? 58 EB 03 ?? ?? ?? EB 04 ?? ?? ?? ?? 64 67 8F 06 00 00 EB 04 ?? ?? ?? ?? 83 C4 04 EB 02 ?? ?? E8 C3 27 00 00}
	condition:
		$0 at entrypoint
}
rule _FSG_v131_Eng__dulekxt_
{
	meta:
		description = "FSG v1.31 (Eng) -> dulek/xt"
	strings:
		$0 = {BB D0 01 40 00 BF 00 10 40 00 BE ?? ?? ?? 00 53 BB ?? ?? ?? 00 B2 80 A4 B6 80 FF D3 73 F9 33 C9 FF D3 73 16 33 C0 FF D3 73 23 B6 80 41 B0 10 FF D3 12 C0 73 FA 75 42 AA EB E0 E8 46 00 00 00 02 F6 83 D9 01 75 10 E8 38 00 00 00 EB 28 AC D1 E8 74 48 13 C9 EB}
	condition:
		$0 at entrypoint
}
rule _DBPE_v153_
{
	meta:
		description = "DBPE v1.53"
	strings:
		$0 = {9C 55 57 56 52 51 53 9C FA E8 ?? ?? ?? ?? 5D 81 ED 5B 53 40 ?? B0 ?? E8 ?? ?? ?? ?? 5E 83 C6 11 B9 27 ?? ?? ?? 30 06 46 49 75 FA}
	condition:
		$0 at entrypoint
}
rule _IMPPacker_10__Mahdi_Hezavehi_IMPOSTER_
{
	meta:
		description = "IMP-Packer 1.0 -> Mahdi Hezavehi [IMPOSTER]"
	strings:
		$0 = {28 ?? ?? ?? 00 00 00 00 00 00 00 00 40 ?? ?? ?? 34 ?? ?? ?? 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 4C ?? ?? ?? 5C ?? ?? ?? 00 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? 00 00 00 00 4B 45 52 4E 45 4C 33 32 2E 64 6C 6C 00 00 47 65 74 50 72 6F 63}
	condition:
		$0
}
rule _Vx_VirusConstructorIVPbased_
{
	meta:
		description = "Vx: VirusConstructor(IVP).based"
	strings:
		$0 = {E9 ?? ?? E8 ?? ?? 5D ?? ?? ?? ?? ?? 81 ED ?? ?? ?? ?? ?? ?? E8 ?? ?? 81 FC ?? ?? ?? ?? 8D ?? ?? ?? BF ?? ?? 57 A4 A5}
	condition:
		$0 at entrypoint
}
rule _Petite_v21_2_
{
	meta:
		description = "Petite v2.1 (2)"
	strings:
		$0 = {B8 ?? ?? ?? ?? 6A 00 68 ?? ?? ?? ?? 64 ?? ?? ?? ?? ?? ?? 64 ?? ?? ?? ?? ?? ?? 66 9C 60 50}
	condition:
		$0 at entrypoint
}
rule _Metrowerks_CodeWarrior_v20_Console_
{
	meta:
		description = "Metrowerks CodeWarrior v2.0 (Console)"
	strings:
		$0 = {55 89 E5 55 B8 FF FF FF FF 50 50 68 ?? ?? ?? ?? 64 FF 35 00 00 00 00 64 89 25 00 00 00 00 68 ?? ?? ?? ?? E8 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? E8 ?? ?? 00 00 E8 ?? ?? 00 00 E8}
	condition:
		$0
}
rule _Anticrack_Software_Protector_v109_ACProtect_
{
	meta:
		description = "Anticrack Software Protector v1.09 (ACProtect)"
	strings:
		$0 = {60 ?? ?? ?? ?? ?? ?? ?? ?? 00 00 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? E8 01 00 00 00 ?? 83 04 24 06 C3 ?? ?? ?? ?? ?? 00}
	condition:
		$0 at entrypoint
}
rule _NsPacK_Net__LiuXingPing_
{
	meta:
		description = "NsPacK .Net -> LiuXingPing"
	strings:
		$0 = {56 69 72 74 75 61 6C 50 72 6F 74 65 63 74 00 00 BB 01 47 65 74 53 79 73 74 65 6D 49 6E 66 6F 00 4B 45 52 4E 45 4C 33 32 2E 64 6C 6C 00 00 5E 00 5F 43 6F 72 ?? ?? ?? 4D 61 69 6E 00 6D 73 63 6F 72 65 65 2E 64 6C 6C}
	condition:
		$0
}
rule _INCrypter_03_INinY__by_z3e_NiFe_
{
	meta:
		description = "INCrypter 0.3 (INinY) - by z3e_NiFe"
	strings:
		$0 = {60 64 A1 30 00 00 00 8B 40 0C 8B 40 0C 8D 58 20 C7 03 00 00 00 00 E8 00 00 00 00 5D 81 ED 4D 16 40 00 8B 9D 0E 17 40 00 64 A1 18 00 00 00 8B 40 30 0F B6 40 02 83 F8 01 75 05 03 DB C1 CB 10 8B 8D 12 17 40 00 8B B5 06 17 40 00 51 81 3E 2E 72 73 72 74 65 8B 85 16 17 40 00 E8 23 00 00 00 8B 85 1A 17 40 00 E8 18 00 00 00 8B 85 1E 17 40 00 E8 0D 00 00 00 8B 85 22 17 40 00 E8 02 00 00 00 EB 18 8B D6 3B 46 0C 72 0A 83 F9 01 74 0B 3B 46 34 72 06 BA 00 00 00 00 C3 58 83 FA 00 75 1A 8B 4E 10 8B 7E 0C 03 BD 02 17 40 00 83 F9 00 74 09 F6 17 31 0F 31 1F 47 E2 F7 59 83 C6 28 49 83 F9 00 75 88 8B 85 0A 17 40 00 89 44 24 1C 61 50 C3}
	condition:
		$0
}
rule _Vx_GRUNT2Family_
{
	meta:
		description = "Vx: GRUNT.2.Family"
	strings:
		$0 = {48 E2 F7 C3 51 53 52 E8 DD FF 5A 5B 59 C3 B9 00 00 E2 FE C3}
	condition:
		$0 at entrypoint
}
rule _SimplePack_12build3009_Method2__bagie_
{
	meta:
		description = "SimplePack 1.2.build.30.09 (Method2) -> bagie"
	strings:
		$0 = {4D 5A 90 EB 01 00 52 E9 86 01 00 00 50 45 00 00 4C 01 02 00 00 00 00 00 00 00 00 00 00 00 00 00 E0 00 0F 03 0B 01 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 0C 00 00 00 00 ?? ?? ?? 00 10 00 00 00 02 00 00 01 00 00 00 00 00 00 00 04 00 00 00 00 00 00 00}
	condition:
		$0
}
rule _PECompact_v094_
{
	meta:
		description = "PECompact v0.94"
	strings:
		$0 = {EB 06 68 ?? ?? ?? ?? C3 9C 60 E8 ?? ?? ?? ?? 5D 55 58 81 ED ?? ?? ?? ?? 2B 85 ?? ?? ?? ?? 01 85 ?? ?? ?? ?? 50 B9 02}
	condition:
		$0 at entrypoint
}
rule _Hide_PE_101__BGCorp_
{
	meta:
		description = "Hide PE 1.01 -> BGCorp"
	strings:
		$0 = {BA ?? ?? ?? 00 B8 ?? ?? ?? ?? 89 02 83 C2 04 B8 ?? ?? ?? ?? 89 02 83 C2 04 B8 ?? ?? ?? ?? 89 02 83 C2 F8 FF E2 0D 0A 2D 3D 5B 20 48 69 64 65 50 45 20 62 79 20 42 47 43 6F 72 70 20 5D 3D 2D}
	condition:
		$0 at entrypoint
}
rule _PolyCrypt_PE__214b215__JLab_Software_Creations_hsigned_
{
	meta:
		description = "PolyCrypt PE - 2.1.4b/2.1.5 -> JLab Software Creations (h-signed)"
	strings:
		$0 = {50 6F 6C 79 43 72 79 70 74 20 50 45 20 28 63 29 20 32 30 30 34 2D 32 30 30 35 2C 20 4A 4C 61 62 53 6F 66 74 77 61 72 65 2E 00 50 00 43 00 50 00 45}
	condition:
		$0
}
rule _EXECryptor_2x__SoftComplete_Developement_
{
	meta:
		description = "EXECryptor 2.x -> SoftComplete Developement"
	strings:
		$0 = {A4 ?? ?? 00 00 00 00 00 FF FF FF FF 3C ?? ?? 00 94 ?? ?? 00 D8 ?? ?? 00 00 00 00 00 FF FF FF FF}
	condition:
		$0
}
rule _DrWeb_VirusFinding_Engine__InSoft_EDVSysteme_
{
	meta:
		description = "Dr.Web Virus-Finding Engine -> InSoft EDV-Systeme"
	strings:
		$0 = {B8 01 00 00 00 C2 0C 00 8D 80 00 00 00 00 8B D2 8B ?? 24 04}
	condition:
		$0 at entrypoint
}
rule _LOCK98_V10028__keenvim_
{
	meta:
		description = "LOCK98 V1.00.28 -> keenvim"
	strings:
		$0 = {55 E8 00 00 00 00 5D 81 ?? ?? ?? ?? ?? EB 05 E9 ?? ?? ?? ?? EB 08}
	condition:
		$0 at entrypoint
}
rule _eXpressor_v145__CGSoftLabs_
{
	meta:
		description = "eXpressor v1.4.5 -> CGSoftLabs"
	strings:
		$0 = {55 8B EC 83 EC 58 53 56 57 83 65 DC 00 F3 EB 0C}
	condition:
		$0 at entrypoint
}
rule _Themida_10xx__18xx_no_compression__Oreans_Technologies_
{
	meta:
		description = "Themida 1.0.x.x - 1.8.x.x (no compression) -> Oreans Technologies"
	strings:
		$0 = {55 8B EC 83 C4 D8 60 E8 00 00 00 00 5A 81 EA ?? ?? ?? ?? 8B DA C7 45 D8 00 00 00 00 8B 45 D8 40 89 45 D8 81 7D D8 80 00 00 00 74 0F 8B 45 08 89 83 ?? ?? ?? ?? FF 45 08 43 EB E1 89 45 DC 61 8B 45 DC C9 C2 04 00 55 8B EC 81 C4 7C FF FF FF 60 E8 00 00 00 00}
		$1 = {55 8B EC 83 C4 D8 60 E8 00 00 00 00 5A 81 EA ?? ?? ?? ?? 8B DA C7 45 D8 00 00 00 00 8B 45 D8 40 89 45 D8 81 7D D8 80 00 00 00 74 0F 8B 45 08 89 83 ?? ?? ?? ?? FF 45 08 43 EB E1 89 45 DC 61 8B 45 DC C9 C2 04 00 55 8B EC 81 C4 7C FF FF FF 60 E8 00 00 00 00 5A 81 EA ?? ?? ?? ?? 8D 45 80 8B 5D 08 C7 85 7C FF FF FF 00 00 00 00 8B 8D 7C FF FF FF D1 C3 88 18 41 89 8D 7C FF FF FF 81 BD 7C FF FF FF 80 00 00 00 75 E3 C7 85 7C FF FF FF 00 00 00 00 8D BA ?? ?? ?? ?? 8D 75 80 8A 0E BB F4 01 00 00 B8 AB 37 54 78 D3 D0 8A 0F D3 D0 4B 75 F7 0F AF C3 47 46 8B 8D 7C FF FF FF 41 89 8D 7C FF FF FF 81 F9 80 00 00 00 75 D1 61 C9 C2 04 00 55 8B EC 83 C4 F0 8B 75 08 C7 45 FC 00 00 00 00 EB 04 FF 45 FC 46 80 3E 00 75 F7 BA 00 00 00 00 8B 75 08 8B 7D 0C EB 7F C7 45 F8 00 00 00 00 EB}
	condition:
		$0 or $1
}
rule _AINEXE_v230_
{
	meta:
		description = "AINEXE v2.30"
	strings:
		$0 = {0E 07 B9 ?? ?? BE ?? ?? 33 FF FC F3 A4 A1 ?? ?? 2D ?? ?? 8E D0 BC ?? ?? 8C D8}
	condition:
		$0 at entrypoint
}
rule _EXEJoiner_v10_
{
	meta:
		description = "EXEJoiner v1.0"
	strings:
		$0 = {68 00 10 40 00 68 04 01 00 00 E8 39 03 00 00 05 00 10 40 C6 00 5C 68 ?? ?? ?? ?? 68 ?? ?? ?? ?? 6A 00 E8}
	condition:
		$0 at entrypoint
}
rule _PKZIPSFX_v11_198990_
{
	meta:
		description = "PKZIP-SFX v1.1 1989-90"
	strings:
		$0 = {FC 2E 8C 0E ?? ?? A1 ?? ?? 8C CB 81 C3 ?? ?? 3B C3 72 ?? 2D ?? ?? 2D ?? ?? FA BC ?? ?? 8E D0 FB}
	condition:
		$0 at entrypoint
}
rule _Thinstall_V2403__Jitit_
{
	meta:
		description = "Thinstall V2.403 -> Jitit"
	strings:
		$0 = {6A 00 FF 15 20 50 40 00 E8 D4 F8 FF FF E9 E9 AD FF FF FF 8B C1 8B 4C 24 04 89 88 29 04 00 00 C7 40 0C 01 00 00 00 0F B6 49 01 D1 E9 89 48 10 C7 40 14 80 00 00 00 C2 04 00 8B 44 24 04 C7 41 0C 01 00 00 00 89 81 29 04 00 00 0F B6 40 01 D1 E8 89 41 10 C7 41}
		$1 = {6A 00 FF 15 20 50 40 00 E8 D4 F8 FF FF E9 E9 AD FF FF FF 8B C1 8B 4C 24 04 89 88 29 04 00 00 C7 40 0C 01 00 00 00 0F B6 49 01 D1 E9 89 48 10 C7 40 14 80 00 00 00 C2 04 00 8B 44 24 04 C7 41 0C 01 00 00 00 89 81 29 04 00 00 0F B6 40 01 D1 E8 89 41 10 C7 41 14 80 00 00 00 C2 04 00 55 8B EC 53 56 57 33 C0 33 FF 39 45 0C 8B F1 76 0C 8B 4D 08 03 3C 81 40 3B 45 0C 72 F4 8B CE E8 43 00 00 00 8B 46 14 33 D2 F7 F7 8B 5E 10 33 D2 8B F8 8B C3 F7 F7 89 7E 18 89 45 0C 33 C0 33 C9 8B 55 08 03 0C 82 40 39 4D 0C 73 F4 48 8B 14 82 2B CA 0F AF CF 2B D9 0F AF FA 89 7E 14 89 5E 10 5F 5E 5B 5D C2 08 00 57 BF 00 00 80 00 39 79 14 77 36 53 56 8B B1 29 04 00 00 8B 41 0C 8B 59 10 03 DB 8A 14 30 83 E2 01 0B D3 C1 E2 07 40 89 51 10 89 41 0C 0F B6 04 30 C1 61 14 08 D1 E8 09 41 10 39}
	condition:
		$0 at entrypoint or $1 at entrypoint
}
rule _Petite_21_
{
	meta:
		description = "Petite 2.1"
	strings:
		$0 = {64 FF 35 00 00 00 00 64 89 25 00 00 00 00 66 9C 60 50 8B D8}
	condition:
		$0
}
rule _AHTeam_EP_Protector_03_fake_ASProtect_10__FEUERRADER_
{
	meta:
		description = "AHTeam EP Protector 0.3 (fake ASProtect 1.0) -> FEUERRADER"
	strings:
		$0 = {90 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 90 FF E0 60 E8 01 00 00 00 90 5D 81 ED 00 00 00 00 BB 00 00 00 00 03 DD 2B 9D}
	condition:
		$0 at entrypoint
}
rule _VProtector_V10D__vcasm_
{
	meta:
		description = "VProtector V1.0D -> vcasm"
	strings:
		$0 = {55 8B EC 6A FF 68 CA 31 41 00 68 06 32 41 00 64 A1 00 00 00 00 50 64 89 25 00 00 00 00 E8 03 00 00 00 C7 84 00 58 EB 01 E9 83 C0 07 50}
	condition:
		$0 at entrypoint
}
rule _VProtector_11X__vcasm_
{
	meta:
		description = "VProtector 1.1X -> vcasm"
	strings:
		$0 = {EB 0B 5B 56 50 72 6F 74 65 63 74 5D 00 E8 24 00 00 00 8B 44 24 04 8B 00 3D 04 00 00 80 75 08 8B 64 24 08 EB 04 58 EB 0C E9 64 8F 05 00 00 00 00 74 F3 75 F1 EB 24 64 FF 35 00 00 00 00 EB 12 FF 9C 74 03 75 01 E9 81 0C 24 00 01 00 00 9D 90 EB F4 64 89 25 00 00 00 00 EB E6 E8 16 00 00 00 8B 5C 24 0C 8B A3 C4 00 00 00 64 8F 05 00 00 00 00 83 C4 04 EB 14 64 FF 35 00 00 00 00 64 89 25 00 00 00 00 33 C9 99 F7 F1 E9 E8 03 00 00 00 C7 84 00 58 EB 01 E9 83 C0 07 50 C3 FF 35 E8 16 00 00 00 8B 5C 24 0C 8B A3 C4 00 00 00 64 8F 05 00 00 00 00 83 C4 04 EB 14 64 FF 35 00 00 00 00 64 89 25 00 00 00 00 33 C9 99 F7 F1 E9 E8 03 00 00 00 C7 84 00 58 EB 01 E9 83 C0 07 50 C3}
	condition:
		$0 at entrypoint
}
rule _Obsidium_V1300__Obsidium_Software_
{
	meta:
		description = "Obsidium V1.3.0.0 -> Obsidium Software"
	strings:
		$0 = {EB 04 ?? ?? ?? ?? E8 29 00 00 00}
		$1 = {EB 04 ?? ?? ?? ?? E8 ?? 00 00 00}
	condition:
		$0 at entrypoint or $1 at entrypoint
}
rule _ACProtectUltraProtect_10X20X__RiSco_
{
	meta:
		description = "ACProtect/UltraProtect 1.0X-2.0X -> RiSco"
	strings:
		$0 = {00 00 00 00 00 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 00 00 00 00 00 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 4B 45 52 4E 45 4C 33 32 2E 44 4C 4C 00 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 00 00 00 00 55 53 45 52 33 32 2E 44 4C 4C 00 ?? ?? ?? ?? 00 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 00 00 00 00 00 00 47 65 74 50 72 6F 63 41 64 64 72 65 73 73 00 00 00 47 65 74 4D 6F 64 75 6C 65 48 61 6E 64 6C 65 41 00 00 00 4C 6F 61 64 4C 69 62 72 61 72 79 41 00 00 00 45 78 69 74 50 72 6F 63 65 73 73 00 00 00 4D 65 73 73 61 67 65 42 6F 78 41 00 90 4D 69 6E 65 49 6D 70 6F 72 74 5F 45 6E 64 73 73 00}
	condition:
		$0
}
rule _EXE_Stealth_v11_
{
	meta:
		description = "EXE Stealth v1.1"
	strings:
		$0 = {60 E8 00 00 00 00 5D 81 ED FB 1D 40 00 B9 7B 09 00 00 8B F7 AC}
	condition:
		$0 at entrypoint
}
rule _iLUCRYPT_v4018_exe_
{
	meta:
		description = "iLUCRYPT v4.018 [exe]"
	strings:
		$0 = {8B EC FA C7 ?? ?? ?? ?? 4C 4C C3 FB BF ?? ?? B8 ?? ?? 2E ?? ?? D1 C8 4F 81}
	condition:
		$0 at entrypoint
}
rule _hmimysPacker_10__hmimys_
{
	meta:
		description = "hmimys-Packer 1.0 -> hmimys"
	strings:
		$0 = {5E 83 C6 64 AD 50 AD 50 83 EE 6C AD 50 AD 50 AD 50 AD 50 AD 50 E8 E7 07}
	condition:
		$0
}
rule _AntiDote_12_Beta_Demo__SISTeam_
{
	meta:
		description = "AntiDote 1.2 Beta (Demo) -> SIS-Team"
	strings:
		$0 = {68 69 D6 00 00 E8 C6 FD FF FF 68 69 D6 00 00 E8 BC FD FF FF 83 C4 08 E8 A4 FF FF FF 84 C0 74 2F 68 04 01 00 00 68 B0 21 60 00 6A 00 FF 15 08 10 60 00 E8 29 FF FF FF 50 68 88 10 60 00 68 78 10 60 00 68 B0 21 60 00 E8 A4 FD FF FF 83 C4 10 33 C0 C2 10 00 90 90 90 90 90 90 90 90 90 90 90 90 8B 4C 24 08 56 8B 74 24 08 33 D2 8B C6 F7 F1 8B C6 85 D2 74 08 33 D2 F7 F1 40 0F AF C1 5E C3 90 8B 44 24 04 53 55 56 8B 48 3C 57 03 C8 33 D2 8B 79 54 8B 71 38 8B C7 F7 F6 85 D2 74 0C 8B C7 33 D2 F7 F6 8B F8 47 0F AF FE 33 C0 33 DB 66 8B 41 14 8D 54 08 18 33 C0}
	condition:
		$0 at entrypoint
}
rule _Anskya_NTPacker_Generator__Anskya_
{
	meta:
		description = "Anskya NTPacker Generator -> Anskya"
	strings:
		$0 = {55 8B EC 83 C4 F0 53 B8 88 1D 00 10 E8 C7 FA FF FF 6A 0A 68 20 1E 00 10 A1 14 31 00 10 50 E8 71 FB FF FF 8B D8 85 DB 74 2F 53 A1 14 31 00 10 50 E8 97 FB FF FF 85 C0 74 1F 53 A1 14 31 00 10 50 E8 5F FB FF FF 85 C0 74 0F 50 E8 5D FB FF FF 85 C0 74 05 E8 70 FC FF FF 5B E8 F2 F6 FF FF 00 00 48 45 41 52 54}
	condition:
		$0
}
rule _TPACK_v05c_m2_
{
	meta:
		description = "T-PACK v0.5c -m2"
	strings:
		$0 = {68 ?? ?? FD 60 BE ?? ?? BF ?? ?? B9 ?? ?? F3 A4 8B F7 BF ?? ?? FC 46 E9 CE FD}
	condition:
		$0 at entrypoint
}
rule _RAZOR_1911_encruptor_
{
	meta:
		description = "RAZOR 1911 encruptor"
	strings:
		$0 = {E8 ?? ?? BF ?? ?? 3B FC 72 ?? B4 4C CD 21 BE ?? ?? B9 ?? ?? FD F3 A5 FC}
	condition:
		$0 at entrypoint
}
rule _PECompact_v110b5_
{
	meta:
		description = "PECompact v1.10b5"
	strings:
		$0 = {EB 06 68 ?? ?? ?? ?? C3 9C 60 E8 02 ?? ?? ?? 33 C0 8B C4 83 C0 04 93 8B E3 8B 5B FC 81 EB 0F 60 40 ?? 87 DD 8B 85 95 60 40 ?? 01 85 03 60 40 ?? 66 C7 85 ?? 60 40 ?? 90 90 BB 49}
	condition:
		$0 at entrypoint
}
rule _EncryptPE_V22007411__WFS_
{
	meta:
		description = "EncryptPE V2.2007.4.11 -> WFS"
	strings:
		$0 = {60 9C 64 FF 35 00 00 00 00 E8 1B 02 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 00 00 00 00 6B 65 72 6E 65 6C 33 32 2E 64 6C 6C 00 00 00 47 65 74 54 65 6D 70 50 61 74 68 41 00 00 00 43 72 65 61 74 65 46 69 6C 65 41 00 00 00 43 72 65 61 74 65 46 69 6C 65 4D 61 70 70 69 6E 67 41 00 00 00 4D 61 70 56 69 65 77 4F 66 46 69 6C 65 00 00 00 55 6E 6D 61 70 56 69 65 77 4F 66 46 69 6C 65 00 00 00 43 6C 6F 73 65 48 61 6E 64 6C 65 00 00 00 4C 6F 61 64 4C 69 62 72 61 72 79 41 00 00 00 47 65 74 50 72 6F 63 41 64 64 72 65 73 73 00 00 00 45 78 69 74 50 72 6F 63 65 73 73 00 00 00 00 00 00}
	condition:
		$0 at entrypoint
}
rule _PE_Lock_v106_
{
	meta:
		description = "PE Lock v1.06"
	strings:
		$0 = {00 00 00 00 00 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? 00 00 00 00 4C 6F 61 64 4C 69 62 72 61 72 79 41 00 00 56 69 72 74 75 61 6C 41 6C 6C 6F 63 00 4B 45}
	condition:
		$0 at entrypoint
}
rule _VProtector_V10A__vcasm_
{
	meta:
		description = "VProtector V1.0A -> vcasm"
	strings:
		$0 = {55 8B EC 6A FF 68 8A 8E 40 00 68 C6 8E 40 00 64 A1 00 00 00 00 50 64 89 25 00 00 00 00 E8 03 00 00 00 C7 84 00 58 EB 01 E9 83 C0 07 50}
	condition:
		$0 at entrypoint
}
rule _PseudoSigner_02_Microsoft_Visual_Cpp_70_DLL__Anorganix_
{
	meta:
		description = "PseudoSigner 0.2 [Microsoft Visual C++ 7.0 DLL] --> Anorganix"
	strings:
		$0 = {55 8D 6C 01 00 81 EC 00 00 00 00 8B 45 90 83 F8 01 56 0F 84 00 00 00 00 85 C0 0F 84}
	condition:
		$0 at entrypoint
}
rule _Unpacked_BSSFX_Archive_v19_
{
	meta:
		description = "Unpacked BS-SFX Archive v1.9"
	strings:
		$0 = {1E 33 C0 50 B8 ?? ?? 8E D8 FA 8E D0 BC ?? ?? FB B8 ?? ?? CD 21 3C 03 73}
	condition:
		$0 at entrypoint
}
rule _UPolyX_v05_
{
	meta:
		description = "UPolyX v0.5"
	strings:
		$0 = {55 8B EC ?? 00 BD 46 00 8B ?? B9 ?? 00 00 00 80 ?? ?? 51 ?? ?? ?? ?? 00 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00}
		$1 = {83 EC 04 89 14 24 59 BA ?? 00 00 00 52 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 00 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 00}
		$2 = {BB 00 BD 46 00 83 EC 04 89 1C 24 ?? B9 ?? 00 00 00 80 33 ?? ?? ?? ?? ?? ?? 00 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 00 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00}
		$3 = {E8 00 00 00 00 59 83 C1 07 51 C3 C3 ?? 00 BD 46 00 83 EC 04 89 ?? 24 B9 ?? 00 00 00 81 ?? ?? ?? ?? 00 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00}
		$4 = {E8 00 00 00 00 59 83 C1 07 51 C3 C3 ?? 00 BD 46 00 ?? B9 ?? 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00}
		$5 = {EB 01 C3 ?? 00 BD 46 00 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00}
	condition:
		$0 or $1 or $2 or $3 or $4 or $5
}
rule _tElock_v090_
{
	meta:
		description = "tElock v0.90"
	strings:
		$0 = {E8 02 00 00 00 E8 00 E8 00 00 00 00 5E 2B}
	condition:
		$0 at entrypoint
}
rule _Yodas_Protector_v1032_Beta2__Ashkbiz_Danehkar_
{
	meta:
		description = "Yoda's Protector v1.03.2 Beta2 -> Ashkbiz Danehkar"
	strings:
		$0 = {E8 03 00 00 00 EB 01 ?? BB 55 00 00 00 E8 03 00 00 00 EB 01 ?? E8 8F 00 00 00 E8 03 00 00 00 EB 01 ?? E8 82 00 00 00 E8 03 00 00 00 EB 01 ?? E8 B8 00 00 00}
	condition:
		$0 at entrypoint
}
rule _PECompact_V2X_Bitsum_Technologies_
{
	meta:
		description = "PECompact V2.X-> Bitsum Technologies"
	strings:
		$0 = {B8 ?? ?? ?? ?? 50 64 FF 35 00 00 00 00 64 89 25 00 00 00 00 33 C0 89 08 50 45 43}
	condition:
		$0 at entrypoint
}
rule _PEiDBundle_v100__BoB__BobSoft_
{
	meta:
		description = "PEiD-Bundle v1.00 --> BoB / BobSoft"
	strings:
		$0 = {60 E8 21 02 00 00 8B 44 24 04 52 48 66 31 C0 66 81 38 4D 5A 75 F5 8B 50 3C 81 3C 02 50 45 00 00 75 E9 5A C2 04 00 60 89 DD 89 C3 8B 45 3C 8B 54 28 78 01 EA 52 8B 52 20 01 EA 31 C9 41 8B 34 8A}
	condition:
		$0 at entrypoint
}
rule _Packman_V10__Brandon_LaCombe_
{
	meta:
		description = "Packman V1.0 -> Brandon LaCombe"
	strings:
		$0 = {60 E8 00 00 00 00 5B 8D 5B C6 01 1B 8B 13 8D 73 14 6A 08 59 01 16 AD 49 75 FA}
	condition:
		$0 at entrypoint
}
rule _Minke_101__by_Codius_
{
	meta:
		description = "Minke 1.0.1 - by Codius"
	strings:
		$0 = {55 8B EC 83 C4 F0 53 ?? ?? ?? ?? ?? 10 E8 7A F6 FF FF BE 68 66 00 10 33 C0 55 68 DB 40 00 10 64 FF 30 64 89 20 E8 FA F8 FF FF BA EC 40 00 10 8B C6 E8 F2 FA FF FF 8B D8 B8 6C 66 00 10 8B 16 E8 88 F2 FF FF B8 6C 66 00 10 E8 76 F2 FF FF 8B D0 8B C3 8B 0E E8 E3 E4 FF FF E8 2A F9 FF FF E8 C1 F8 FF FF B8 6C 66 00 10 8B 16 E8 6D FA FF FF E8 14 F9 FF FF E8 AB F8 FF FF 8B 06 E8 B8 E3 FF FF 8B D8 B8 6C 66 00 10 E8 38 F2 FF FF 8B D3 8B 0E E8 A7 E4 FF ?? ?? ?? ?? C4 FB FF FF E8 E7 F8 FF FF 8B C3 E8 B0 E3 FF FF E8 DB F8 FF FF 33 C0 5A 59 59 64 89 10 68 E2 40 00 10 C3 E9 50 EB FF FF EB F8 5E 5B E8 BB EF FF FF 00 00 00 43 41 31 38}
	condition:
		$0 at entrypoint
}
rule _eXPressor_V10__CGSoftLabs_
{
	meta:
		description = "eXPressor V1.0 -> CGSoftLabs"
	strings:
		$0 = {E9 35 14 00 00 E9 31 13 00 00 E9 98 12 00 00 E9 EF 0C 00 00 E9 42 13 00 00 E9 E9 02 00 00 E9 EF 0B 00 00 E9 1B 0D 00 00}
	condition:
		$0 at entrypoint
}
rule _PseudoSigner_02_DEF_10__Anorganix_
{
	meta:
		description = "PseudoSigner 0.2 [DEF 1.0] --> Anorganix"
	strings:
		$0 = {BE 00 01 40 00 6A 05 59 80 7E 07 00 74 11 8B 46 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 83 C1 01}
	condition:
		$0 at entrypoint
}
rule _Thinstall_24x__25x__Jitit_Software_
{
	meta:
		description = "Thinstall 2.4x - 2.5x -> Jitit Software"
	strings:
		$0 = {55 8B EC B8 ?? ?? ?? ?? BB ?? ?? ?? ?? 50 E8 00 00 00 00 58 2D ?? ?? ?? ?? B9 ?? ?? ?? ?? BA ?? ?? ?? ?? BE ?? ?? ?? ?? BF ?? ?? ?? ?? BD ?? ?? ?? ?? 03 E8}
	condition:
		$0 at entrypoint
}
rule _Stones_PE_Encryptor_v113_
{
	meta:
		description = "Stone's PE Encryptor v1.13"
	strings:
		$0 = {55 57 56 52 51 53 E8 ?? ?? ?? ?? 5D 8B D5 81 ED 97 3B 40 ?? 2B 95 2D 3C 40 ?? 83 EA 0B 89 95 36 3C 40 ?? 01 95 24 3C 40 ?? 01 95 28}
	condition:
		$0 at entrypoint
}
rule _Upack_v038_beta__Dwing_
{
	meta:
		description = "Upack v0.38 beta -> Dwing"
	strings:
		$0 = {BE B0 11 ?? ?? AD 50 FF 76 34 EB 7C 48 01 ?? ?? 0B 01 4C 6F 61 64 4C 69 62 72 61 72 79 41 00 00 18 10 00 00 10 00 00 00 00 ?? ?? ?? 00 00 ?? ?? 00 10 00 00 00 02 00 00 04 00 00 00 00 00 38 00 04 00 00 00 00 00 00 00 00 ?? ?? ?? 00 02 00 00 00 00 00 00}
		$1 = {BE B0 11 ?? ?? AD 50 FF 76 34 EB 7C 48 01 ?? ?? 0B 01 4C 6F 61 64 4C 69 62 72 61 72 79 41 00 00 18 10 00 00 10 00 00 00 00 ?? ?? ?? 00 00 ?? ?? 00 10 00 00 00 02 00 00 04 00 00 00 00 00 38 00 04 00 00 00 00 00 00 00 00 ?? ?? ?? 00 02 00 00 00 00 00 00 ?? 00 00 ?? 00 00 ?? 00 00 ?? ?? 00 00 00 10 00 00 10 00 00 00 00 00 00 0A 00 00 00 00 00 00 00 00 00 00 00 EE ?? ?? ?? 14 00 00 00 00 ?? ?? ?? ?? ?? ?? 00 FF 76 38 AD 50 8B 3E BE F0 ?? ?? ?? 6A 27 59 F3 A5 FF 76 04 83 C8 FF 8B DF AB EB 1C 00 00 00 00 47 65 74 50 72 6F 63 41 64 64 72 65 73 73 00 00 ?? ?? ?? ?? ?? 00 00 00 40 AB 40 B1 04 F3 AB C1 E0 0A B5 ?? F3 AB 8B 7E 0C 57 51 E9 ?? ?? ?? ?? E3 B1 04 D3 E0 03 E8 8D 53 18 33 C0 55 40 51 D3 E0 8B EA 91 FF 56 4C 33 D2 59 D1 E8 13 D2 E2 FA 5D 03 EA 45 59 89 6B 08 56 8B F7 2B F5 F3 A4 AC 5E B1 80 AA 3B 7E 34 0F 82 97 FE FF FF 58 5F 59 E3 1B 8A 07 47 04 18 3C 02 73 F7 8B 07 3C ?? 75 F1 B0 00 0F C8 03 46 38 2B C7 AB E2 E5 5E 5D 59 51 59 46 AD 85 C0 74 1F}
	condition:
		$0 at entrypoint or $1 at entrypoint
}
rule _Themida_1201__Oreans_Technologies_
{
	meta:
		description = "Themida 1.2.0.1 -> Oreans Technologies"
	strings:
		$0 = {8B C5 8B D4 60 E8 00 00 00 00 5D 81 ED ?? ?? 35 09 89 95 ?? ?? 35 09 89 B5 ?? ?? 35 09 89 85 ?? ?? 35 09 83 BD ?? ?? 35 09 00 74 0C 8B E8 8B E2 B8 01 00 00 00 C2 0C 00 8B 44 24 24 89 85 ?? ?? 35 09 6A 45 E8 A3 00 00 00 68 9A 74 83 07 E8 DF 00 00 00 68 25}
	condition:
		$0
}
rule _AHTeam_EP_Protector_03_fake_VIRUSIWorm_Hybris__FEUERRADER_
{
	meta:
		description = "AHTeam EP Protector 0.3 (fake VIRUS/I-Worm Hybris) -> FEUERRADER"
	strings:
		$0 = {90 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 90 FF E0 EB 16 A8 54 00 00 47 41 42 4C 4B 43 47 43 00 00 00 00 00 00 52 49 53 00 FC 68 4C 70 40 00 FF 15}
	condition:
		$0 at entrypoint
}
rule _tElock_099__10_private__tE_
{
	meta:
		description = "tElock 0.99 - 1.0 private -> tE!"
	strings:
		$0 = {E9 ?? ?? FF FF 00 00 00 ?? ?? ?? ?? ?? ?? ?? 00 00 00 00 00 00 00 00 00}
	condition:
		$0 at entrypoint
}
rule _EEXE_Version_112_
{
	meta:
		description = "EEXE Version 1.12"
	strings:
		$0 = {B4 30 CD 21 3C 03 73 ?? BA 1F 00 0E 1F B4 09 CD 21 B8 FF 4C CD 21}
	condition:
		$0 at entrypoint
}
rule _Unknown_Joiner_sign_from_pinch_26032007_0212_
{
	meta:
		description = "Unknown Joiner (sign from pinch 26.03.2007 02:12)"
	strings:
		$0 = {44 90 4C 90 B9 DE 00 00 00 BA 00 10 40 00 83 C2 03 44 90 4C B9 07 00 00 00 44 90 4C 33 C9 C7 05 08 30 40 00 00 00 00 00 90 68 00 01 00 00 68 21 30 40 00 6A 00 E8 C5 02 00 00 90 6A 00 68 80}
	condition:
		$0 at entrypoint
}
rule _RatPacker_Glue_stub_
{
	meta:
		description = "RatPacker (Glue) stub"
	strings:
		$0 = {40 20 FF 00 00 00 00 00 00 00 ?? BE 00 60 40 00 8D BE 00 B0 FF FF}
	condition:
		$0 at entrypoint
}
rule _SVKProtector_v111_
{
	meta:
		description = "SVK-Protector v1.11"
	strings:
		$0 = {60 E8 ?? ?? ?? ?? 5D 81 ED 06 ?? ?? ?? 64 A0 23}
	condition:
		$0 at entrypoint
}
rule _FACRYPT_v10_
{
	meta:
		description = "FACRYPT v1.0"
	strings:
		$0 = {B9 ?? ?? B3 ?? 33 D2 BE ?? ?? 8B FE AC 32 C3 AA 49 43 32 E4 03 D0 E3}
	condition:
		$0 at entrypoint
}
rule _RCryptor_v13b__Vaska_
{
	meta:
		description = "RCryptor v1.3b --> Vaska"
	strings:
		$0 = {61 83 EF 4F 60 68 ?? ?? ?? ?? FF D7}
		$1 = {61 83 EF 4F 60 68 ?? ?? ?? ?? FF D7 B8 ?? ?? ?? ?? 3D ?? ?? ?? ?? 74 06 80 30 ?? 40 EB F3}
	condition:
		$0 at entrypoint or $1 at entrypoint
}
rule _eXPressor_120_Beta_PE_Packer_
{
	meta:
		description = "eXPressor 1.2.0 Beta PE Packer"
	strings:
		$0 = {55 8B EC 81 EC ?? ?? ?? ?? 53 56 57 EB ?? 45 78 50 72 2D 76 2E 31 2E 32 2E 2E}
	condition:
		$0 at entrypoint
}
rule _Obsidium_V125__Obsidium_Software_
{
	meta:
		description = "Obsidium V1.25 -> Obsidium Software"
	strings:
		$0 = {E8 0E 00 00 00 8B 54 24 0C 83 82 B8 00 00 00 0D 33 C0 C3}
	condition:
		$0 at entrypoint
}
rule _Thinstall_Embedded_2545__Jitit_
{
	meta:
		description = "Thinstall Embedded 2.545 -> Jitit"
	strings:
		$0 = {E8 F2 FF FF FF 50 68 ?? ?? ?? ?? 68 40 1B 00 00 E8 42 FF FF FF E9 9D FF FF FF 00 00 00 00 00 00}
	condition:
		$0 at entrypoint
}
rule __Protector_v1111_DDeMPE_Engine_v09_DDeMCI_v092_
{
	meta:
		description = "*** Protector v1.1.11 (DDeM->PE Engine v0.9, DDeM->CI v0.9.2)"
	strings:
		$0 = {53 51 56 E8 00 00 00 00 5B 81 EB 08 10 00 00 8D B3 34 10 00 00 B9 F3 03 00 00 BA 63 17 2A EE 31 16 83 C6 04}
	condition:
		$0 at entrypoint
}
rule _Vx_KBDflags1024_
{
	meta:
		description = "Vx: KBDflags.1024"
	strings:
		$0 = {8B EC 2E 89 2E 24 03 BC 00 04 8C D5 2E 89 2E 22}
	condition:
		$0 at entrypoint
}
rule _RLPack_V115V117_LZMA_430__ap0x_
{
	meta:
		description = "RLPack V1.15-V1.17 (LZMA 4.30) -> ap0x"
	strings:
		$0 = {60 E8 00 00 00 00 8B 2C 24 83 C4 04 8D B5 ?? ?? ?? ?? 8D 9D ?? ?? ?? ?? 33 FF E8 83 01 00 00 6A ?? 68 ?? ?? ?? ?? 68 ?? ?? ?? ?? 6A ?? FF 95 ?? ?? ?? ?? 89 85 ?? ?? ?? ?? EB 14}
	condition:
		$0 at entrypoint
}
rule _Vx_Slowload_
{
	meta:
		description = "Vx: Slowload"
	strings:
		$0 = {03 D6 B4 40 CD 21 B8 02 42 33 D2 33 C9 CD 21 8B D6 B9 78 01}
	condition:
		$0 at entrypoint
}
rule _Upack_022__023_beta__Dwing_
{
	meta:
		description = "Upack 0.22 - 0.23 beta -> Dwing"
	strings:
		$0 = {6A 07 BE 88 01 40 00 AD 8B F8 59 95 F3 A5 AD B5 ?? F3 AB AD 50 97 51 58 8D 54}
		$1 = {6A 07 BE 88 01 40 00 AD 8B F8 59 95 F3 A5 AD B5 ?? F3 AB AD 50 97 51 58 8D 54 85 5C FF 16 72 59 2C 03 73 02 B0 00 3C 07 72 02 2C 03 50 0F B6 5F FF C1 E3 ?? B3 00 8D 1C 5B 8D 9C 9D 0C 10 00 00}
		$2 = {AD 8B F8 59 95 F3 A5 AD B5 ?? F3 AB AD 50 97 51 58 8D 54 85 5C FF 16 72 ?? 2C 03 73 02 B0 00 3C 07 72 02 2C 03 50 0F B6 5F FF C1 E3 ?? B3 00 8D 1C 5B 8D 9C 9D 0C 10 00 00}
	condition:
		$0 or $1 at entrypoint or $2 at entrypoint
}
rule _Vx_Eddiebased1745_
{
	meta:
		description = "Vx: Eddie.based.1745"
	strings:
		$0 = {E8 ?? ?? 5E 81 EE ?? ?? FC ?? 2E ?? ?? ?? ?? 4D 5A ?? ?? FA ?? 8B E6 81 ?? ?? ?? FB ?? 3B ?? ?? ?? ?? ?? 50 06 ?? 56 1E 8B FE 33 C0 ?? 50 8E D8}
	condition:
		$0 at entrypoint
}
rule _UPX_Inliner_v10_by_GPcH_
{
	meta:
		description = "UPX Inliner v1.0 by GPcH"
	strings:
		$0 = {9C 60 E8 00 00 00 00 5D B8 B3 85 40 00 2D AC 85 40 00 2B E8 8D B5 D5 FE FF FF 8B 06 83 F8 00 74 11 8D B5 E1 FE FF FF 8B 06 83 F8 01 0F 84 F1 01 00 00 C7 06 01 00 00 00 8B D5 8B 85 B1 FE FF FF 2B D0 89 95 B1 FE FF FF 01 95 C9 FE FF FF 8D B5 E5 FE FF FF 01}
	condition:
		$0
}
rule _FreeJoiner_153_Stub_engine_171__GlOFF_
{
	meta:
		description = "FreeJoiner 1.5.3 (Stub engine 1.7.1) -> GlOFF"
	strings:
		$0 = {E8 02 FD FF FF 6A 00 E8 0D 00 00 00 CC FF 25 80 10 40 00 FF 25 84 10 40 00 FF 25 88 10 40 00 FF 25 8C 10 40 00 FF 25 90 10 40 00 FF 25 94 10 40 00 FF 25 98 10 40 00 FF 25 9C 10 40 00 FF 25 A0 10 40 00 FF 25 A8 10 40 00}
	condition:
		$0 at entrypoint
}
rule _PESHiELD_v0251_
{
	meta:
		description = "PESHiELD v0.251"
	strings:
		$0 = {5D 83 ED 06 EB 02 EA 04 8D}
	condition:
		$0 at entrypoint
}
rule _Thinstall_Embedded_2547V2600__Jitit_
{
	meta:
		description = "Thinstall Embedded 2.547-V2.600 -> Jitit"
	strings:
		$0 = {E8 00 00 00 00 58 BB BC 18 00 00 2B C3 50 68 ?? ?? ?? ?? 68 60 1B 00 00 68 60 00 00 00 E8 35 FF FF FF E9 99 FF FF FF 00 00}
	condition:
		$0 at entrypoint
}
rule _yC_v13_by_Ashkbiz_Danehkar_
{
	meta:
		description = "yC v1.3 by Ashkbiz Danehkar"
	strings:
		$0 = {55 8B EC 81 EC C0 00 00 00 53 56 57 8D BD 40 FF FF FF B9 30 00 00 00 B8 CC CC CC CC F3 AB 60 E8 00 00 00 00 5D 81 ED 84 52 41 00 B9 75 5E 41 00 81 E9 DE 52 41 00 8B D5 81 C2 DE 52 41 00 8D 3A 8B F7 33 C0 EB 04 90 EB 01 C2 AC}
	condition:
		$0
}
rule _DIET_v102b_v110a_v120_
{
	meta:
		description = "DIET v1.02b, v1.10a, v1.20"
	strings:
		$0 = {BE ?? ?? BF ?? ?? B9 ?? ?? 3B FC 72 ?? B4 4C CD 21 FD F3 A5 FC}
	condition:
		$0 at entrypoint
}
rule _NsPacK_V36__LiuXingPing_
{
	meta:
		description = "NsPacK V3.6 -> LiuXingPing"
	strings:
		$0 = {9C 60 E8 00 00 00 00 5D 83 ED 07 8D ?? ?? ?? ?? ?? 83 38 01 0F 84 47 02 00 00}
	condition:
		$0 at entrypoint
}
rule _RLPack_V119_LZMA_430__ap0x_
{
	meta:
		description = "RLPack V1.19 (LZMA 4.30) -> ap0x"
	strings:
		$0 = {60 E8 00 00 00 00 8B 2C 24 83 C4 04 83 7C 24 28 01 75 0C 8B 44 24 24 89 85 49 0B 00 00 EB 0C 8B 85 45 0B 00 00 89 85 49 0B 00 00 8D B5 6D 0B 00 00 8D 9D 2F 03 00 00 33 FF 6A 40 68 00 10 00 00 68 00 20 0C 00 6A 00 FF 95 DA 0A 00 00 89 85 41 0B 00 00 E8 76 01 00 00 EB 20 60 8B 85 49 0B 00 00 FF B5 41 0B 00 00 FF 34 37 01 04 24 FF 74 37 04 01 04 24 FF D3 61 83 C7 08 83 3C 37 00 75 DA 83 BD 55 0B 00 00 00 74 0E 83 BD 59 0B 00 00 00 74 05 E8 D7 01 00 00 8D 74 37 04 53 6A 40 68 00 10 00 00 68 ?? ?? ?? ?? 6A 00 FF 95 DA 0A 00 00 89 85 69 0B 00 00 5B 60 FF B5 41 0B 00 00 56 FF B5 69 0B 00 00 FF D3 61 8B B5 69 0B 00 00 8B C6 EB 01 40 80 38 01 75 FA 40 8B 38 03 BD 49 0B 00 00 83 C0 04 89 85 65 0B 00 00 E9 98 00 00 00 56 FF 95 D2 0A 00 00 89 85 61 0B 00 00 85 C0 0F 84 C8 00 00 00 8B C6 EB 5F 8B 85 65 0B 00 00 8B 00 A9 00 00 00 80 74 14 35 00 00 00 80 50 8B 85 65 0B 00 00 C7 00 20 20 20 00 EB 06 FF B5 65 0B 00 00 FF B5 61 0B 00 00 FF 95 D6 0A 00 00 85 C0 0F 84 87 00 00 00 89 07 83 C7 04 8B 85 65 0B 00 00 EB 01 40 80 38 00 75 FA 40 89 85 65 0B 00 00 66 81 78 02 00 80 74 A1 80 38 00 75 9C EB 01 46 80 3E 00 75 FA 46 40 8B 38 03 BD 49 0B 00 00 83 C0 04 89 85 65 0B 00 00 80 3E 01 0F 85 5F FF FF FF 68 00 40 00 00 68 ?? ?? ?? ?? FF B5 69 0B 00 00 FF 95 DE 0A 00 00 68 00 40 00 00 68 00 20 0C 00 FF B5 41 0B 00 00 FF 95 DE 0A 00 00 E8 3D 00 00 00 E8 24 01 00 00 61 E9 ?? ?? ?? ?? 61 C3}
	condition:
		$0 at entrypoint
}
rule _Private_Personal_Packer_PPP_v102__ConquestOfTroycom_
{
	meta:
		description = "Private Personal Packer (PPP) v1.0.2 --> ConquestOfTroy.com"
	strings:
		$0 = {E8 17 00 00 00 E8 68 00 00 00 FF 35 2C 37 00 10 E8 ED 01 00 00 6A 00 E8 2E 04 00 00 E8 41 04 00 00 A3 74 37 00 10 6A 64 E8 5F 04 00 00 E8 30 04 00 00 A3 78 37 00 10 6A 64 E8 4E 04 00 00 E8 1F 04 00 00 A3 7C 37 00 10 A1 74 37 00 10 8B 1D 78 37 00 10 2B D8 8B 0D 7C 37 00 10 2B C8 83 FB 64 73 0F 81 F9 C8 00 00 00 73 07 6A 00 E8 D9 03 00 00 C3 6A 0A 6A 07 6A 00}
	condition:
		$0 at entrypoint
}
rule _PEtite_v20_
{
	meta:
		description = "PEtite v2.0"
	strings:
		$0 = {B8 ?? ?? ?? ?? 66 9C 60 50 8B D8 03 ?? 68 54 BC ?? ?? 6A ?? FF 50 18 8B CC 8D A0 54 BC ?? ?? 8B C3 8D 90 E0 15 ?? ?? 68}
	condition:
		$0 at entrypoint
}
rule _PESpin_v03_Eng__cyberbob_
{
	meta:
		description = "PESpin v0.3 (Eng) -> cyberbob"
	strings:
		$0 = {EB 01 68 60 E8 00 00 00 00 8B 1C 24 83 C3 12 81 2B E8 B1 06 00 FE 4B FD 82 2C 24 B7 CD 46}
		$1 = {EB 01 68 60 E8 00 00 00 00 8B 1C 24 83 C3 12 81 2B E8 B1 06 00 FE 4B FD 82 2C 24 B7 CD 46 00 0B E4 74 9E 75 01 C7 81 73 04 D7 7A F7 2F 81 73 19 77 00 43 B7 F6 C3 6B B7 00 00 F9 FF E3 C9 C2 08 00 A3 68 72 01 FF 5D 33 C9 41 E2 17 EB 07 EA EB 01 EB EB 0D FF}
	condition:
		$0 at entrypoint or $1 at entrypoint
}
rule _PseudoSigner_02_CodeLock__Anorganix_
{
	meta:
		description = "PseudoSigner 0.2 [Code-Lock] --> Anorganix"
	strings:
		$0 = {43 4F 44 45 2D 4C 4F 43 4B 2E 4F 43 58 00 01 28 01 50 4B 47 05 4C 3F B4 04 4D 4C 47 4B}
	condition:
		$0 at entrypoint
}
rule _Armadillo_v190a_
{
	meta:
		description = "Armadillo v1.90a"
	strings:
		$0 = {55 8B EC 64 FF 68 10 F2 40 00 68 14 9B 40 00 64 A1 00 00 00 00 50 64 89 25 00 00 00 00 83 EC 58}
	condition:
		$0 at entrypoint
}
rule _PKLITE_v200c_
{
	meta:
		description = "PKLITE v2.00c"
	strings:
		$0 = {50 B8 ?? ?? BA ?? ?? 3B C4 73 ?? 8B C4 2D ?? ?? 25 ?? ?? 8B F8 B9 ?? ?? BE ?? ?? FC}
	condition:
		$0 at entrypoint
}
rule _ICrypt_10__by_BuGGz_
{
	meta:
		description = "ICrypt 1.0 - by BuGGz"
	strings:
		$0 = {55 8B EC 83 C4 EC 53 56 57 33 C0 89 45 EC B8 70 3B 00 10 E8 3C FA FF FF 33 C0 55 68 6C 3C 00 10 64 FF 30 64 89 20 6A 0A 68 7C 3C 00 10 A1 50 56 00 10 50 E8 D8 FA FF FF 8B D8 53 A1 50 56 00 10 50 E8 0A FB FF FF 8B F8 53 A1 50 56 00 10 50 E8 D4 FA FF FF 8B D8 53 E8 D4 FA FF FF 8B F0 85 F6 74 26 8B D7 4A B8 64 56 00 10 E8 25 F6 FF FF B8 64 56 00 10 E8 13 F6 FF FF 8B CF 8B D6 E8 E6 FA FF FF 53 E8 90 FA FF FF 8D 4D EC BA 8C 3C 00 10 A1 64 56 00 10 E8 16 FB FF FF 8B 55 EC B8 64 56 00 10 E8 C5 F4 FF FF B8 64 56 00 10 E8 DB F5 FF FF E8 56 FC FF FF 33 C0 5A 59 59 64 89 10 68 73 3C 00 10 8D 45 EC E8 4D F4 FF FF C3 E9 E3 EE FF FF EB F0 5F 5E 5B E8 4D F3 FF FF 00 53 45 54 ?? ?? ?? ?? 00 FF FF FF FF 08 00 00 00 76 6F 74 72 65 63 6C 65}
	condition:
		$0 at entrypoint
}
rule _Special_EXE_Password_Protector_v10_
{
	meta:
		description = "Special EXE Password Protector v1.0"
	strings:
		$0 = {60 E8 00 00 00 00 5D 81 ED 06 00 00 00 89 AD 8C 01 00 00 8B C5 2B 85 FE 75 00 00 89 85 3E 77}
	condition:
		$0 at entrypoint
}
rule _RCryptor_20__Vaska_
{
	meta:
		description = "RCryptor 2.0 -> Vaska"
	strings:
		$0 = {F7 D1 83 F1 FF 6A 00 F7 D1 83 F1 FF 81 04 24 ?? ?? ?? ?? F7 D1 83 F1 FF}
	condition:
		$0 at entrypoint
}
rule _NsPack_V2X__LiuXingPing_
{
	meta:
		description = "NsPack V2.X -> LiuXingPing"
	strings:
		$0 = {6E 73 70 61 63 6B 24 40}
	condition:
		$0
}
rule _ARM_Protector_v01_by_SMoKE_
{
	meta:
		description = "ARM Protector v0.1 by SMoKE"
	strings:
		$0 = {E8 04 00 00 00 83 60 EB 0C 5D EB 05 45 55 EB 04 B8 EB F9 00 C3 E8 00 00 00 00 5D EB 01 00 81 ED 5E 1F 40 00 EB 02 83 09 8D B5 EF 1F 40 00 EB 02 83 09 BA A3 11 00 00 EB 01 00 8D 8D 92 31 40 00 8B 09 E8 14 00 00 00 83 EB 01 00 8B FE E8 00 00 00 00 58 83 C0}
	condition:
		$0
}
rule _PEtite_v21_
{
	meta:
		description = "PEtite v2.1"
	strings:
		$0 = {B8 ?? ?? ?? ?? 6A ?? 68 ?? ?? ?? ?? 64 FF 35 ?? ?? ?? ?? 64 89 25 ?? ?? ?? ?? 66 9C 60 50}
	condition:
		$0 at entrypoint
}
rule _RCryptor_v15_Private__Vaska_
{
	meta:
		description = "RCryptor v1.5 (Private) --> Vaska"
	strings:
		$0 = {83 2C 24 4F 68 ?? ?? ?? ?? FF 54 24 04 83 44 24 04 4F B8 ?? ?? ?? ?? 3D ?? ?? ?? ?? 74 06 80 30 ?? 40 EB F3}
	condition:
		$0 at entrypoint
}
rule _E_language_
{
	meta:
		description = "E language"
	strings:
		$0 = {E8 06 00 00 00 50 E8 ?? 01 00 00 55 8B EC 81 C4 F0 FE FF FF}
	condition:
		$0 at entrypoint
}
rule _Vx_Caz1204_
{
	meta:
		description = "Vx: Caz.1204"
	strings:
		$0 = {E8 ?? ?? 5E 83 EE 03 1E 06 B8 FF FF CD 2F 3C 10}
	condition:
		$0 at entrypoint
}
rule _PUNiSHER_V15_Demo_FEUERRADER_
{
	meta:
		description = "PUNiSHER V1.5 Demo-> FEUERRADER"
	strings:
		$0 = {EB 04 83 A4 BC CE 60 EB 04 80 BC 04 11 E8 00 00 00 00}
	condition:
		$0 at entrypoint
}
rule _UG2002_Cruncher_v03b3_
{
	meta:
		description = "UG2002 Cruncher v0.3b3"
	strings:
		$0 = {60 E8 ?? ?? ?? ?? 5D 81 ED ?? ?? ?? ?? E8 0D ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 58}
	condition:
		$0 at entrypoint
}
rule _FreeJoiner_Small_build_031032__GlOFF_
{
	meta:
		description = "FreeJoiner Small (build 031/032) -> GlOFF"
	strings:
		$0 = {50 32 ?? 66 8B C3 58 E8 ?? FD FF FF 6A 00 E8 0D 00 00 00 CC FF 25 78 10 40 00 FF 25 7C 10 40 00 FF 25 80 10 40 00 FF 25 84 10 40 00 FF 25 88 10 40 00 FF 25 8C 10 40 00 FF 25 90 10 40 00 FF 25 94 10 40 00 FF 25 98 10 40 00 FF 25 9C 10 40 00 FF 25 A0 10 40 00 FF 25 A4 10 40 00 FF 25 AC 10 40 00}
	condition:
		$0 at entrypoint
}
rule _FSG_v110_Eng__dulekxt__Borland_Delphi__Microsoft_Visual_Cppx_
{
	meta:
		description = "FSG v1.10 (Eng) -> dulek/xt -> (Borland Delphi / Microsoft Visual C++)x"
	strings:
		$0 = {1B DB E8 02 00 00 00 1A 0D 5B 68 80 ?? ?? 00 E8 01 00 00 00 EA 5A 58 EB 02 CD 20 68 F4 00}
	condition:
		$0 at entrypoint
}
rule _Upack_v021_Beta__Dwing_
{
	meta:
		description = "Upack v0.21 Beta -> Dwing"
	strings:
		$0 = {BE 88 01 ?? ?? AD 8B F8 ?? ?? ?? ?? 33}
	condition:
		$0 at entrypoint
}
rule _yodas_Protector_V101__Ashkbiz_Danehkar_
{
	meta:
		description = "yoda's Protector V1.01 -> Ashkbiz Danehkar"
	strings:
		$0 = {55 8B EC 53 56 57 E8 03 00 00 00 EB 01 ?? E8 86 00 00 00 E8 03 00 00 00 EB 01 ?? E8 79 00 00 00 E8 03 00 00 00 EB 01 ?? E8 A4 00 00 00 E8 03 00 00 00 EB 01 ?? E8 97 00 00 00 E8 03 00 00 00 EB 01 ?? E8 2D 00 00 00 E8 03 00 00 00 EB 01 ?? 60 E8 00 00 00 00 5D 81 ED D5 E4 41 00 8B D5 81 C2 23 E5 41 00 52 E8 01 00 00 00 C3 C3 E8 03 00 00 00 EB 01 ?? E8 0E 00 00 00 E8 D1 FF FF FF C3 E8 03 00 00 00 EB 01 ?? 33 C0 64 FF 30 64 89 20 CC C3 E8 03 00 00 00 EB 01 ?? 33 C0 64 FF 30 64 89 20 CC C3}
	condition:
		$0 at entrypoint
}
rule _Vx_Uddy2617_
{
	meta:
		description = "Vx: Uddy.2617"
	strings:
		$0 = {2E ?? ?? ?? ?? ?? 2E ?? ?? ?? ?? ?? 2E ?? ?? ?? 8C C8 8E D8 8C ?? ?? ?? 2B ?? ?? ?? 03 ?? ?? ?? A3 ?? ?? A1 ?? ?? A3 ?? ?? A1 ?? ?? A3 ?? ?? 8C C8 2B ?? ?? ?? 03 ?? ?? ?? A3 ?? ?? B8 AB 9C CD 2F 3D 76 98}
	condition:
		$0 at entrypoint
}
rule _Shrinker_v33_
{
	meta:
		description = "Shrinker v3.3"
	strings:
		$0 = {83 3D ?? ?? ?? 00 00 55 8B EC 56 57 75 65 68 00 01 00 00 E8}
	condition:
		$0 at entrypoint
}
rule _Vx_Noon1163_
{
	meta:
		description = "Vx: Noon.1163"
	strings:
		$0 = {E8 ?? ?? 5B 50 56 B4 CB CD 21 3C 07 ?? ?? 81 ?? ?? ?? 2E ?? ?? 4D 5A ?? ?? BF 00 01 89 DE FC}
	condition:
		$0 at entrypoint
}
rule _PESpin_v1304__Cyberbob_
{
	meta:
		description = "PESpin v1.304 -> Cyberbob"
	strings:
		$0 = {EB 01 68 60 E8 00 00 00 00 8B 1C 24 83 C3 12 81 2B E8 B1 06 00 FE 4B FD 82 2C 24 88 DF 46 00 0B E4 74 9E 75 01 C7 81 73 04 D7 7A F7 2F 81 73 19 77 00 43 B7 F6 C3 6B B7 00 00 F9 FF E3 C9 C2 08 00 A3 68 72 01 FF 5D 33 C9 41 E2 17 EB 07 EA EB 01 EB EB 0D FF}
	condition:
		$0 at entrypoint
}
rule _MinGW_GCC_3x_
{
	meta:
		description = "MinGW GCC 3.x"
	strings:
		$0 = {55 89 E5 83 EC 08 C7 04 24 ?? 00 00 00 FF 15 ?? ?? ?? ?? E8 ?? ?? FF FF ?? ?? ?? ?? ?? ?? ?? ?? 55}
	condition:
		$0 at entrypoint
}
rule _PeX_099__bartCrackPl_
{
	meta:
		description = "PeX 0.99 -> bart^CrackPl"
	strings:
		$0 = {E9 F5 ?? ?? ?? 0D 0A C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4}
	condition:
		$0 at entrypoint
}
rule _Armadillo_v250_
{
	meta:
		description = "Armadillo v2.50"
	strings:
		$0 = {55 8B EC 6A FF 68 B8 ?? ?? ?? 68 F8 ?? ?? ?? 64 A1 00 00 00 00 50 64 89 25 00 00 00 00 83 EC 58 53 56 57 89 65 E8 FF 15 20 ?? ?? ?? 33 D2 8A D4 89 15 D0}
	condition:
		$0 at entrypoint
}
rule _AntiDote_1214_SE_DLL__SISTeam_
{
	meta:
		description = "AntiDote 1.2/1.4 SE DLL -> SIS-Team"
	strings:
		$0 = {EB 10 66 62 3A 43 2B 2B 48 4F 4F 4B 90 E9 08 32 90 90 90 90 90 90 90 90 90 90 80 7C 24 08 01 0F 85 ?? ?? ?? ?? 60 BE ?? ?? ?? ?? 8D BE ?? ?? ?? ?? 57 83 CD FF EB 0B 90 8A 06 46 88 07 47 01 DB 75 07 8B 1E 83 EE FC 11 DB 72 ED B8 01 00 00 00 01 DB 75 07 8B 1E 83 EE FC 11 DB 11 C0 01 DB 73 ?? 75 ?? 8B 1E 83 EE FC 11 DB}
	condition:
		$0 at entrypoint
}
rule _Splash_Bitmap_v100__BoB__Bobsoft_
{
	meta:
		description = "Splash Bitmap v1.00 --> BoB / Bobsoft"
	strings:
		$0 = {E8 00 00 00 00 60 8B 6C 24 20 55 81 ED ?? ?? ?? ?? 8D BD ?? ?? ?? ?? 8D 8D ?? ?? ?? ?? 29 F9 31 C0 FC F3 AA 8B 04 24 48 66 25 00 F0 66 81 38 4D 5A 75 F4 8B 48 3C 81 3C 01 50 45 00 00 75 E8 89 85 ?? ?? ?? ?? 8D BD ?? ?? ?? ?? 6A 00}
	condition:
		$0 at entrypoint
}
rule _ASProtect_133__21_Registered__Alexey_Solodovnikov_
{
	meta:
		description = "ASProtect 1.33 - 2.1 Registered -> Alexey Solodovnikov"
	strings:
		$0 = {68 01 ?? ?? ?? E8 01 00 00 00 C3 C3}
	condition:
		$0 at entrypoint
}
rule _PKLITE_v150_1_
{
	meta:
		description = "PKLITE v1.50 (1)"
	strings:
		$0 = {50 B8 ?? ?? BA ?? ?? 05 ?? ?? 3B 06 ?? ?? 72 ?? B4 ?? BA ?? ?? CD 21 B8 ?? ?? CD 21}
	condition:
		$0 at entrypoint
}
rule _AntiDote_12DLLDemo__SISTeam_
{
	meta:
		description = "AntiDote 1.2.DLL.Demo -> SIS-Team"
	strings:
		$0 = {EB 10 66 62 3A 43 2B 2B 48 4F 4F 4B 90 E9 08 32 90 90 90 90 90 90 90 90 90 90 80 7C 24 08 01 0F 85 ?? ?? ?? ?? 60 BE ?? ?? ?? ?? 8D BE ?? ?? ?? ?? 57 83 CD FF EB 0B 90 8A 06 46 88 07 47 01 DB 75 07 8B 1E 83 EE FC 11 DB 72 ED B8 01 00 00 00 01 DB 75 07 8B 1E 83 EE FC 11 DB 11 C0 01 DB 73 EF 75 09 8B 1E 83 EE FC 11 DB 73 E4 31 C9 83 E8 03 72 0D C1 E0 08 8A 06 46 83 F0 FF 74 74 89 C5 01 DB 75 07 8B 1E 83 EE FC 11 DB 11 C9 01 DB 75 07 8B 1E 83 EE FC 11 DB 11 C9 75 20 41 01 DB 75 07 8B 1E 83 EE FC 11 DB 11 C9 01 DB 73 EF 75 09 8B 1E 83 EE FC 11 DB 73 E4 83 C1 02 81 FD 00 F3 FF FF 83 D1 01 8D 14 2F 83 FD FC 76 0F 8A 02 42 88 07 47 49 75 F7 E9 63 FF FF FF 90 8B 02 83 C2 04 89 07 83 C7 04 83 E9 04 77 F1 01 CF E9 4C FF FF FF}
	condition:
		$0
}
rule _HACKSTOP_v100_
{
	meta:
		description = "HACKSTOP v1.00"
	strings:
		$0 = {FA BD ?? ?? FF E5 6A 49 48 0C ?? E4 ?? 3F 98 3F}
	condition:
		$0 at entrypoint
}
rule _EXECryptor_V22X__softcompletecom_
{
	meta:
		description = "EXECryptor V2.2X -> softcomplete.com"
	strings:
		$0 = {FF E0 E8 04 00 00 00 FF FF FF FF 5E C3 00}
	condition:
		$0
}
rule _QrYPt0r__by_NuTraL_
{
	meta:
		description = "QrYPt0r - by NuTraL"
	strings:
		$0 = {80 F9 00 0F 84 8D 01 00 00 8A C3 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 32 C1 3C F3 75 89 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? BA D9 04 00 00 E8 00 00 00 00 5F 81 C7 16 01 00 00 80 2C 3A 01}
		$1 = {86 18 CC 64 FF 35 00 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 64 89 25 00 00 00 00 BB 00 00 F7 BF ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? B8 78 56 34 12 87 03 E8 CD FE FF FF E8 B3}
		$2 = {EB 00 E8 B5 00 00 00 E9 2E 01 00 00 64 FF 35 00 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 64 89 25 00 00 00 00 8B 44 24 04}
	condition:
		$0 or $1 or $2 at entrypoint
}
rule _FreeJoiner_152_Stub_engine_16__GlOFF_
{
	meta:
		description = "FreeJoiner 1.5.2 (Stub engine 1.6) -> GlOFF"
	strings:
		$0 = {E8 46 FD FF FF 50 E8 0C 00 00 00 FF 25 08 20 40 00 FF 25 0C 20 40 00 FF 25 10 20 40 00 FF 25 14 20 40 00 FF 25 18 20 40 00 FF 25 1C 20 40 00 FF 25 20 20 40 00 FF 25 24 20 40 00 FF 25 28 20 40 00 FF 25 00 20 40 00}
	condition:
		$0 at entrypoint
}
rule _PseudoSigner_01_XCR_011__Anorganix_
{
	meta:
		description = "PseudoSigner 0.1 [XCR 0.11] --> Anorganix"
	strings:
		$0 = {60 8B F0 33 DB 83 C3 01 83 C0 01 E9}
	condition:
		$0 at entrypoint
}
rule _BJFnt_v11b_
{
	meta:
		description = ".BJFnt v1.1b"
	strings:
		$0 = {EB 01 EA 9C EB 01 EA 53 EB 01 EA 51 EB 01 EA 52 EB 01 EA 56}
	condition:
		$0 at entrypoint
}
rule _FreeBASIC_016b_
{
	meta:
		description = "FreeBASIC 0.16b"
	strings:
		$0 = {55 89 E5 83 EC 08 C7 04 24 01 00 00 00 FF 15 ?? ?? ?? 00 E8 88 FF FF FF 89 EC 31 C0 5D C3 89 F6 55 89 E5 83 EC 08 C7 04 24 02 00 00 00 FF 15 ?? ?? ?? 00 E8 68 FF FF FF 89 EC 31 C0 5D C3 89 F6 55 89 E5 83 EC 08 8B 45 08 89 04 24 FF 15 ?? ?? ?? 00 89 EC 5D C3 8D 76 00 8D BC 27 00 00 00 00 55 89 E5 83 EC 08 8B 45 08 89 04 24 FF 15 ?? ?? ?? 00 89 EC 5D C3 90 90 90 90 90 90 90 90 90 90}
	condition:
		$0 at entrypoint
}
rule _PseudoSigner_01_Borland_Delphi_30__Anorganix_
{
	meta:
		description = "PseudoSigner 0.1 [Borland Delphi 3.0] --> Anorganix"
	strings:
		$0 = {55 8B EC 83 C4 90 90 90 90 68 ?? ?? ?? ?? 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90}
	condition:
		$0 at entrypoint
}
rule _DEF_v100_Eng__bartxt_
{
	meta:
		description = "DEF v1.00 (Eng) -> bart/xt"
	strings:
		$0 = {BE ?? 01 40 00 6A ?? 59 80 7E 07 00 74 11 8B 46 0C 05 00 00 40 00 8B 56 10 30 10 40 4A 75 FA 83 C6 28 E2 E4 68 ?? ?? 40 00 C3 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00}
	condition:
		$0 at entrypoint
}
rule _RLPack_v118_Basic_DLL_aPLib__Ap0x_
{
	meta:
		description = "RLPack v1.18 Basic DLL [aPLib] -> Ap0x"
	strings:
		$0 = {80 7C 24 08 01 0F 85 ?? ?? ?? ?? 60 E8 00 00 00 00 8B 2C 24 83 C4 04 8D B5 1A 04 00 00 8D 9D C1 02 00 00 33 FF E8 61 01 00 00 EB 0F FF 74 37 04 FF 34 37 FF D3 83 C4 08 83 C7 08 83 3C 37 00 75 EB 83 BD 06 04 00 00 00 74 0E 83}
	condition:
		$0 at entrypoint
}
rule _Upack_Patch__Dwing_
{
	meta:
		description = "Upack_Patch -> Dwing"
	strings:
		$0 = {81 3A 00 00 00 02 00 00 00 00}
	condition:
		$0 at entrypoint
}
rule _Armadillo_v2xx_CopyMem_II_
{
	meta:
		description = "Armadillo v2.xx (CopyMem II)"
	strings:
		$0 = {6A ?? 8B B5 ?? ?? ?? ?? C1 E6 04 8B 85 ?? ?? ?? ?? 25 07 ?? ?? 80 79 05 48 83 C8 F8 40 33 C9 8A 88 ?? ?? ?? ?? 8B 95 ?? ?? ?? ?? 81 E2 07 ?? ?? 80 79 05 4A 83 CA F8 42 33 C0 8A 82}
	condition:
		$0 at entrypoint
}
rule _EXECryptor_224__StrongbitSoftComplete_Development_h2_
{
	meta:
		description = "EXECryptor 2.2.4 -> Strongbit/SoftComplete Development (h2)"
	strings:
		$0 = {E8 F7 FE FF FF 05 ?? ?? 00 00 FF E0 E8 EB FE FF FF 05 ?? ?? 00 00 FF E0 E8 ?? 00 00 00}
	condition:
		$0 at entrypoint
}
rule _Obsidium_1332__Obsidium_Software_
{
	meta:
		description = "Obsidium 1.3.3.2 -> Obsidium Software"
	strings:
		$0 = {EB 01 ?? E8 2B 00 00 00 EB 02 ?? ?? EB 02 ?? ?? 8B 54 24 0C EB 03 ?? ?? ?? 83 82 B8 00 00 00 24 EB 04 ?? ?? ?? ?? 33 C0 EB 04 ?? ?? ?? ?? C3 EB 02 ?? ?? EB 01 ?? 64 67 FF 36 00 00 EB 03 ?? ?? ?? 64 67 89 26 00 00 EB 01 ?? EB 02 ?? ?? 50 EB 02 ?? ?? 33 C0 EB 02 ?? ?? 8B 00 EB 02 ?? ?? C3 EB 04 ?? ?? ?? ?? E9 FA 00 00 00 EB 03 ?? ?? ?? E8 D5 FF FF FF EB 03 ?? ?? ?? EB 01 ?? 58 EB 01 ?? EB 02 ?? ?? 64 67 8F 06 00 00 EB 02 ?? ?? 83 C4 04 EB 02 ?? ?? E8 3B 27 00 00}
	condition:
		$0 at entrypoint
}
rule _PCPEC_alpha_
{
	meta:
		description = "PCPEC [alpha]"
	strings:
		$0 = {53 51 52 56 57 55 E8 ?? ?? ?? ?? 5D 8B CD 81 ?? ?? ?? ?? ?? 2B ?? ?? ?? ?? ?? 83}
	condition:
		$0 at entrypoint
}
rule _MSLRH_v032a_fake_ASPack_211d__emadicius_
{
	meta:
		description = "[MSLRH] v0.32a (fake ASPack 2.11d) -> emadicius"
	strings:
		$0 = {60 E8 02 00 00 00 EB 09 5D 55 81 ED 39 39 44 00 C3 61 EB 05 E8 EB 04 40 00 EB FA E8 0A 00 00 00 E8 EB 0C 00 00 E8 F6 FF FF FF E8 F2 FF FF FF 83 C4 08 74 04 75 02 EB 02 EB 01 81 50 E8 02 00 00 00 29 5A 58 6B C0 03 E8 02 00 00 00 29 5A 83 C4 04 58 74 04 75 02 EB 02 EB 01 81 0F 31 50 0F 31 E8 0A 00 00 00 E8 EB 0C 00 00 E8 F6 FF FF FF E8 F2 FF FF FF}
	condition:
		$0 at entrypoint
}
rule _nSpack_V23__LiuXingPing_
{
	meta:
		description = "nSpack V2.3 -> LiuXingPing"
	strings:
		$0 = {9C 60 70 61 63 6B 24 40}
	condition:
		$0
}
rule _PEArmor_07600765__hying_
{
	meta:
		description = "PE-Armor 0.760-0.765 -> hying"
	strings:
		$0 = {00 00 00 00 00 00 00 00 ?? ?? ?? ?? 00 00 00 00 00 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 00 00 00 00 4B 45 52 4E 45 4C 33 32 2E 64 6C 6C 00 00 00 00 47 65 74 50 72 6F 63 41 64 64 72 65 73 73 00 00 00 4C 6F 61 64 4C 69 62 72 61 72 79 41 00 00 00 47 65 74 4D 6F 64 75 6C 65 48 61 6E 64 6C 65 41 00 00 00 00 00 08 00 00 00 00 00 00 00 60 E8 00 00 00 00}
	condition:
		$0
}
rule _SoftWrap_
{
	meta:
		description = "SoftWrap"
	strings:
		$0 = {52 53 51 56 57 55 E8 ?? ?? ?? ?? 5D 81 ED 36 ?? ?? ?? E8 ?? 01 ?? ?? 60 BA ?? ?? ?? ?? E8 ?? ?? ?? ?? 5F}
	condition:
		$0 at entrypoint
}
rule _RCryptor_v20__Vaska_
{
	meta:
		description = "RCryptor v2.0 --> Vaska"
	strings:
		$0 = {F7 D1 83 F1 FF 6A 00 F7 D1 83 F1 FF 81 04 24 ?? 02 00 00 F7 D1 83 F1 FF 59 BA 32 21 ?? 00 F7 D1 83 F1 FF F7 D1 83 F1 FF 80 02 E3 F7 D1 83 F1 FF C0 0A 05 F7 D1 83 F1 FF 80 02 6F F7 D1 83 F1 FF 80 32 A4 F7 D1 83 F1 FF 80 02 2D F7 D1 83 F1 FF 42 49 85 C9 75 CD 1C 4F 8D 5B FD 62 1E 1C 4F 8D 5B FD 4D 9D B9 ?? ?? ?? 1E 1C 4F 8D 5B FD 22 1C 4F 8D 5B FD 8E A2 B9 B9 E2 83 DB E2 E5 4D CD 1E BF 60 AB 1F 4D DB 1E 1E 3D 1E 92 1B 8E DC 7D EC A4 E2 4D E5 20 C6 CC B2 8E EC 2D 7D DC 1C 4F 8D 5B FD 83 56 8E E0 3A 7D D0 8E 9D 6E 7D D6 4D 25 06 C2 AB 20 CC 3A 4D 2D 9D 6B 0B 81 45 CC 18 4D 2D 1F A1 A1 6B C2 CC F7 E2 4D 2D 9E 8B 8B CC DE 2E 2D F7 1E AB 7D 45 92 30 8E E6 B9 7D D6 8E 9D 27 DA FD FD 1E 1E 8E DF B8 7D CF 8E A3 4D 7D DC 1C 4F 8D 5B FD 33 D7 1E 1E 1E A6 0B 41 A1 A6 42 61 6B 41 6B 4C 45 1E 21 F6 26 BC E2 62 1E 62 1E 62 1E 23 63 59 ?? 1E 62 1E 62 1E 33 D7 1E 1E 1E 85 6B C2 41 AB C2 9F 23 6B C2 41 A1 1E C0 FD F0 FD 30 20 33 9E 1E 1E 1E 85 A2 0B 8B C2 27 41 EB A1 A2 C2 1E C0 FD F0 FD 30 62 1E 33 7E 1E 1E 1E C6 2D 42 AB 9F 23 6B C2 41 A1 1E C0 FD F0 FD 30 C0 FD F0 8E 1D 1C 4F 8D 5B FD E0 00 33 5E 1E 1E 1E BF 0B EC C2 E6 42 A2 C2 45 1E C0 FD F0 FD 30 CE 36 CC F2 1C 4F 8D 5B FD}
	condition:
		$0 at entrypoint
}
rule _PackItBitch_V10_archphase_
{
	meta:
		description = "PackItBitch V1.0-> archphase"
	strings:
		$0 = {00 00 00 00 00 00 00 00 00 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 4B 45 52 4E 45 4C 33 32 2E 44 4C 4C 00 ?? ?? ?? ?? ?? ?? ?? ?? 00 00 00 00 00 00 4C 6F 61 64 4C 69 62 72 61 72 79 41 00 00 00 47 65 74 50 72 6F 63 41 64 64 72 65 73 73 00 00 ?? 00 00 00 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00}
	condition:
		$0
}
rule _PESHiELD_02_
{
	meta:
		description = "PE-SHiELD 0.2"
	strings:
		$0 = {60 E8 00 00 00 00 41 4E 41 4B 49 4E 5D 83 ED 06 EB 02 EA 04}
	condition:
		$0 at entrypoint
}
rule _DBPE_vxxx__Ding_Boy_
{
	meta:
		description = "DBPE vx.xx -> Ding Boy"
	strings:
		$0 = {EB 20 ?? ?? 40 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 9C 55 57 56 52 51 53 9C E8 ?? ?? ?? ?? 5D 81 ED}
	condition:
		$0 at entrypoint
}
rule _NTKrnlPacker__Ashkbiz_Danehkar_
{
	meta:
		description = "NTKrnlPacker -> Ashkbiz Danehkar"
	strings:
		$0 = {00 00 00 00 00 00 00 00 00 00 00 00 34 10 00 00 28 10 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 41 10 00 00 50 10 00 00 00 00 00 00 4B 65 72 6E 65 6C 33 32 2E 64 6C 6C 00 00 00 4C 6F 61 64 4C 69 62 72 61 72 79 41 00 00 00 47 65 74}
	condition:
		$0
}
rule _FreeCryptor_01_build_001_GlOFF_
{
	meta:
		description = "FreeCryptor 0.1 (build 001)-> GlOFF"
	strings:
		$0 = {8B 04 24 40 90 83 C0 07 80 38 90 90 74 02 EB FF 68 26 ?? ?? 00 64 FF 35 00 00 00 00 64 89 25 00 00 00 00 FF E4 90 8B 04 24 64 A3 00 00 00 00 8B 64 24 08 90 83 C4 08}
	condition:
		$0
}
rule _WARNING__TROJAN__HuiGeZi_
{
	meta:
		description = "WARNING -> TROJAN -> HuiGeZi"
	strings:
		$0 = {55 8B EC 81 C4 ?? FE FF FF 53 56 57 33 C0 89 85 ?? FE FF FF}
	condition:
		$0 at entrypoint
}
rule _Securom7__Sony_DADC_
{
	meta:
		description = "Securom7 -> Sony DADC"
	strings:
		$0 = {B8 ?? ?? ?? ?? 8B ?? ?? ?? ?? 0A ?? ?? ?? ?? ?? ?? E8}
	condition:
		$0 at entrypoint
}
rule _CrunchPE_v20xx_
{
	meta:
		description = "Crunch/PE v2.0.x.x"
	strings:
		$0 = {55 E8 ?? ?? ?? ?? 5D 83 ED 06 8B C5 55 60 89 AD ?? ?? ?? ?? 2B 85 ?? ?? ?? ?? 89 85 ?? ?? ?? ?? 55 BB ?? ?? ?? ?? 03 DD 53 64 67 FF 36 ?? ?? 64 67 89 26}
	condition:
		$0 at entrypoint
}
rule _SLVc0deProtector_v06__SLV_
{
	meta:
		description = "SLVc0deProtector v0.6 -> SLV"
	strings:
		$0 = {E8 49 00 00 00 69 E8 49 00 00 00 95 E8 4F 00 00 00 68 E8 1F 00 00 00 49 E8 E9 FF FF FF 67 E8 1F 00 00 00 93 E8 31 00 00 00 78 E8 DD FF FF FF 38 E8 E3 FF FF FF 66 E8 0D 00 00 00 04 E8 E3 FF FF FF 70 E8 CB FF FF FF 69 E8 DD FF FF FF 58 E8 DD FF FF FF 69 E8 E3 FF FF FF 79 E8 BF FF FF FF 69 83 C4 40 E8 00 00 00 00 5D 81 ED 97 11 40 00 8D B5 EF 11 40 00 B9 FE 2D 00 00 8B FE AC F8 ?? ?? ?? ?? ?? ?? 90}
	condition:
		$0 at entrypoint
}
rule _NsPack_14__Liuxingping_
{
	meta:
		description = "NsPack 1.4 -> Liuxingping"
	strings:
		$0 = {9C 60 E8 00 00 00 00 5D B8 ?? ?? 40 00 2D ?? ?? 40 00}
	condition:
		$0 at entrypoint
}
rule _VIRUS__IWormBagle_
{
	meta:
		description = "VIRUS - I-Worm.Bagle"
	strings:
		$0 = {6A 00 E8 95 01 00 00 E8 9F E6 FF FF 83 3D 03 50 40 00 00 75 14 68 C8 AF 00 00 E8 01 E1 FF FF 05 88 13 00 00 A3 03 50 40 00 68 5C 57 40 00 68 F6 30 40 00 FF 35 03 50 40 00 E8 B0 EA FF FF E8 3A FC FF FF 83 3D 54 57 40 00 00 74 05 E8 F3 FA FF FF 68 E8 03 00}
	condition:
		$0
}
rule _Thinstall_V27X__Jitit_
{
	meta:
		description = "Thinstall V2.7X -> Jitit"
	strings:
		$0 = {9C 60 E8 00 00 00 00 58 BB ?? ?? ?? ?? 2B C3 50 68 ?? ?? ?? ?? 68 ?? ?? ?? ?? 68 ?? ?? ?? ?? E8 ?? ?? ?? ?? E9}
	condition:
		$0 at entrypoint
}
rule _DotFix_NiceProtect_vna_
{
	meta:
		description = "DotFix NiceProtect vna"
	strings:
		$0 = {60 E8 55 00 00 00 8D BD 00 10 40 00 68 ?? ?? ?? 00 03 3C 24 8B F7 90 68 31 10 40 00 9B DB E3 55 DB 04 24 8B C7 DB 44 24 04 DE C1 DB 1C 24 8B 1C 24 66 AD 51 DB 04 24 90 90 DA 8D 77 10 40 00 DB 1C 24 D1 E1 29}
	condition:
		$0 at entrypoint
}
rule _IMPostor_Pack_10__Mahdi_Hezavehi_
{
	meta:
		description = "IMPostor Pack 1.0 -> Mahdi Hezavehi"
	strings:
		$0 = {BE ?? ?? ?? 00 83 C6 01 FF E6 00 00 00 00 ?? ?? 00 00 00 00 00 00 00 00 00 ?? ?? ?? 00 ?? 02 ?? ?? 00 10 00 00 00 02 00}
	condition:
		$0 at entrypoint
}
rule _PKLITE_v150_Device_driver_compression_
{
	meta:
		description = "PKLITE v1.50 (Device driver compression)"
	strings:
		$0 = {B4 09 BA 14 01 CD 21 B8 00 4C CD 21 F8 9C 50 53 51 52 56 57 55 1E 06 BB}
	condition:
		$0 at entrypoint
}
rule _ASPack_v104b__Alexey_Solodovnikov_
{
	meta:
		description = "ASPack v1.04b -> Alexey Solodovnikov"
	strings:
		$0 = {60 E8 ?? ?? ?? ?? 5D 81 ED ?? ?? ?? ?? B8 ?? ?? ?? ?? 03 C5 2B 85 ?? 12 9D ?? 89 85 1E 9D ?? ?? 80 BD 08 9D}
	condition:
		$0 at entrypoint
}
rule _RLPack_V10beta__ap0x_
{
	meta:
		description = "RLPack V1.0.beta -> ap0x"
	strings:
		$0 = {60 E8 00 00 00 00 8D 64 24 04 8B 6C 24 FC 8D B5 4C 02 00 00 8D 9D 13 01 00 00 33 FF EB 0F FF 74 37 04 FF 34 37 FF D3 83 C4 08 83 C7 08 83 3C 37 00 75 EB}
	condition:
		$0 at entrypoint
}
rule _Packed_with_PKLITE_v150_with_CRC_check_1_
{
	meta:
		description = "Packed with: PKLITE v1.50 with CRC check (1)"
	strings:
		$0 = {1F B4 09 BA ?? ?? CD 21 B8 ?? ?? CD 21}
	condition:
		$0 at entrypoint
}
rule _WWPACK_v300_v301_Extractable_
{
	meta:
		description = "WWPACK v3.00, v3.01 (Extractable)"
	strings:
		$0 = {B8 ?? ?? 8C CA 03 D0 8C C9 81 C1 ?? ?? 51 6A ?? 06 06 8C D3 83 ?? ?? 53 6A ?? FC}
	condition:
		$0 at entrypoint
}
rule _Armadillo_v190b4_
{
	meta:
		description = "Armadillo v1.90b4"
	strings:
		$0 = {55 8B EC 6A FF 68 08 E2 40 00 68 B4 96 40 00 64 A1 00 00 00 00 50 64 89 25 00 00 00 00 83 EC 58}
	condition:
		$0 at entrypoint
}
rule _FSG_v110_Eng__bartxt__Watcom_CCpp_EXE_
{
	meta:
		description = "FSG v1.10 (Eng) -> bart/xt -> (Watcom C/C++ EXE)"
	strings:
		$0 = {EB 02 CD 20 03 ?? 8D ?? 80 ?? ?? 00 ?? ?? ?? ?? ?? ?? ?? ?? ?? EB 02}
	condition:
		$0 at entrypoint
}
rule _Petite_v21_1_
{
	meta:
		description = "Petite v2.1 (1)"
	strings:
		$0 = {B8 ?? ?? ?? ?? 68 ?? ?? ?? ?? 64 ?? ?? ?? ?? ?? ?? 64 ?? ?? ?? ?? ?? ?? 66 9C 60 50}
	condition:
		$0 at entrypoint
}
rule _kkrunchy__Ryd_
{
	meta:
		description = "kkrunchy -> Ryd"
	strings:
		$0 = {BD 08 ?? ?? 00 C7 45 00 ?? ?? ?? 00 FF 4D 08 C6 45 0C 05 8D 7D 14 31 C0 B4 04 89 C1 F3 AB BF ?? ?? ?? 00 57 BE ?? ?? ?? 00 31 C9 41 FF 4D 0C 8D 9C 8D A0 00 00 00 FF D6 10 C9 73 F3 FF 45 0C 91 AA 83 C9 FF 8D 5C 8D 18 FF D6 74 DD E3 17 8D 5D 1C FF D6 74 10}
	condition:
		$0 at entrypoint
}
rule _StarForce_V3X_DLL__StarForce_Copy_Protection_System_
{
	meta:
		description = "StarForce V3.X DLL -> StarForce Copy Protection System"
	strings:
		$0 = {E8 ?? ?? ?? ?? 00 00 00 00 00 00}
	condition:
		$0 at entrypoint
}
rule _Unnamed_Scrambler_251Beta_2__252__p0ke_
{
	meta:
		description = "Unnamed Scrambler 2.5.1(Beta 2) / 2.5.2 -> p0ke"
	strings:
		$0 = {55 8B EC B9 ?? 00 00 00 6A 00 6A 00 49 75 F9 53 56 57 B8 ?? ?? 40 00 E8 ?? EA FF FF 33 C0 55 68 ?? ?? 40 00 64 FF 30 64 89 20 BA ?? ?? 40 00 B8 ?? ?? 40 00 E8 63 F3 FF FF 8B D8 85 DB 75 07 6A 00 E8 ?? ?? FF FF BA ?? ?? 40 00 8B C3 8B 0D ?? ?? 40 00 E8 ?? ?? FF FF C7 05 ?? ?? 40 00 0A 00 00 00 BB ?? ?? 40 00 BE ?? ?? 40 00 BF ?? ?? 40 00 B8 ?? ?? 40 00 BA 04 00 00 00 E8 ?? EB FF FF 83 3B 00 74 04 33 C0 89 03 8B D7 8B C6 E8 0A F3 FF FF 89 03 83 3B 00 0F 84 F7 04 00 00 B8 ?? ?? 40 00 8B 16 E8 ?? E1 FF FF B8 ?? ?? 40 00 E8 ?? E0 FF FF 8B D0 8B 03 8B 0E E8 ?? ?? FF FF 8B C7 A3 ?? ?? 40 00 8D 55 EC 33 C0 E8 ?? D3 FF FF 8B 45 EC B9 ?? ?? 40 00 BA ?? ?? 40 00 E8 8B ED FF FF 3C 01 75 2B A1}
	condition:
		$0
}
rule _PECompact_v122_
{
	meta:
		description = "PECompact v1.22"
	strings:
		$0 = {EB 06 68 ?? ?? ?? ?? C3 9C 60 E8 02 ?? ?? ?? 33 C0 8B C4 83 C0 04 93 8B E3 8B 5B FC 81 EB 0F 70 40 ?? 87 DD 8B 85 A6 70 40 ?? 01 85 03 70 40 ?? 66 C7 85 ?? 70 40 ?? 90 90 01 85 9E 70 40 ?? BB F3 08}
	condition:
		$0 at entrypoint
}
rule _Fish_PE_Shield_101__HellFish_
{
	meta:
		description = "Fish PE Shield 1.01 -> HellFish"
	strings:
		$0 = {55 8B EC 83 C4 D0 53 56 57 8B 45 10 83 C0 0C 8B 00 89 45 DC 83 7D DC 00 75 08 E8 AD FF FF FF 89 45 DC E8 C1 FE FF FF 8B 10 03 55 DC 89 55 E4 83 C0 04 8B 10 89 55 FC 83 C0 04 8B 10 89 55 F4 83 C0 04 8B 10 89 55 F8 83 C0 04 8B 10 89 55 F0 83 C0 04 8B 10 89 55 EC 83 C0 04 8B 00 89 45 E8 8B 45 E4 8B 58 04 03 5D E4 8B FB 8B 45 E4 8B 30 4E 85 F6 72 2B 46 C7 45 E0 00 00 00 00 83 7B 04 00 74 14}
		$1 = {60 E8 12 FE FF FF C3 90 09 00 00 00 2C 00 00 00 ?? ?? ?? ?? C4 03 00 00 BC A0 00 00 00 40 01 00 ?? ?? ?? ?? 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 99 00 00 00 00 8A 00 00 00 10 00 00 28 88 00 00 40 ?? 4B 00 00 00 02 00 00 00 A0 00 00 18 01 00 00 40 ?? 4C 00 00 00 0C 00 00 00 B0 00 00 38 0A 00 00 40 ?? 4E 00 00 00 00 00 00 00 C0 00 00 40 39 00 00 40 ?? 4E 00 00 00 08 00 00 00 00 01 00 C8 06 00 00 40}
	condition:
		$0 or $1 at entrypoint
}
rule _Enigma_Protector_10X__Sukhov_Vladimir_
{
	meta:
		description = "Enigma Protector 1.0X -> Sukhov Vladimir"
	strings:
		$0 = {60 E8 00 00 00 00 5D 83 ?? ?? 81 ED ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? E8 01 00 00 00 ?? 83 C4 04 EB 02 ?? ?? 60 E8 24 00 00 00 00 00 ?? EB 02 ?? ?? 8B 44 24 0C 83 80 B8 00 00 00 03 31 C0 C3 83 C0 08 EB 02 ?? ?? 89 C4 61 EB 2E ?? ?? ?? ?? ?? ?? ?? EB 01 ?? 31 C0 EB 01 ?? 64 FF 30 EB 01 ?? 64 89 20 EB 02 ?? ?? 89 00 9A 64 8F 05 00 00 00 00 EB 02 C1 ?? 58 61 EB 01}
	condition:
		$0
}
rule _MSLRH_v032a_fake_BJFNT_13__emadicius_
{
	meta:
		description = "[MSLRH] v0.32a (fake .BJFNT 1.3) -> emadicius"
	strings:
		$0 = {EB 03 3A 4D 3A 1E EB 02 CD 20 9C EB 02 CD 20 EB 02 CD 20 60 EB 02 C7 05 EB 02 CD 20 E8 03 00 00 00 E9 EB 04 58 40 50 C3 61 9D 1F EB 05 E8 EB 04 40 00 EB FA E8 0A 00 00 00 E8 EB 0C 00 00 E8 F6 FF FF FF E8 F2 FF FF FF 83 C4 08 74 04 75 02 EB 02 EB 01 81 50 E8 02 00 00 00 29 5A 58 6B C0 03 E8 02 00 00 00 29 5A 83 C4 04 58 74 04 75 02 EB 02 EB 01 81 0F 31 50 0F 31 E8 0A 00 00 00 E8 EB 0C 00 00 E8 F6 FF FF FF E8 F2 FF FF FF 83 C4 08 2B 04 24 74 04 75 02 EB 02 EB 01}
	condition:
		$0 at entrypoint
}
rule _ASProtect_v12x_
{
	meta:
		description = "ASProtect v1.2x"
	strings:
		$0 = {00 00 68 01 ?? ?? ?? C3 AA}
	condition:
		$0 at entrypoint
}
rule _Thinstall_vxx_
{
	meta:
		description = "Thinstall vx.x"
	strings:
		$0 = {B8 EF BE AD DE 50 6A ?? FF 15 10 19 40 ?? E9 AD FF FF FF}
	condition:
		$0 at entrypoint
}
rule _App_Protector__Silent_Team_
{
	meta:
		description = "App Protector -> Silent Team"
	strings:
		$0 = {E9 97 00 00 00 0D 0A 53 69 6C 65 6E 74 20 54 65 61 6D 20 41 70 70 20 50 72 6F 74 65 63 74 6F 72 0D 0A 43 72 65 61 74 65 64 20 62 79 20 53 69 6C 65 6E 74 20 53 6F 66 74 77 61 72 65 0D 0A 54 68 65 6E 6B 7A 20 74 6F 20 44 6F 63 68 74 6F 72 20 58 0D 0A 0D 0A}
	condition:
		$0 at entrypoint
}
rule _tElock_v080_
{
	meta:
		description = "tElock v0.80"
	strings:
		$0 = {60 E8 F9 11 00 00 C3 83}
	condition:
		$0 at entrypoint
}
rule _PKLITE_v200b_
{
	meta:
		description = "PKLITE v2.00b"
	strings:
		$0 = {50 B8 ?? ?? BA ?? ?? 05 ?? ?? 3B 06 02 00 72 ?? B4 09 BA ?? ?? CD 21 B8 01 4C CD 21 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 59 2D ?? ?? 8E D0 51 2D ?? ?? 8E C0 50 B9}
	condition:
		$0 at entrypoint
}
rule _XPack_152__164_
{
	meta:
		description = "XPack 1.52 - 1.64"
	strings:
		$0 = {8B EC FA 33 C0 8E D0 BC ?? ?? 2E ?? ?? ?? ?? 2E ?? ?? ?? ?? EB}
	condition:
		$0 at entrypoint
}
rule _EXE_Stealth_v274__WebToolMaster_
{
	meta:
		description = "EXE Stealth v2.74 -> WebToolMaster"
	strings:
		$0 = {EB 00 EB 17 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 60 90 E8 00 00 00 00 5D}
	condition:
		$0 at entrypoint
}
rule _Upack_024__027_beta__028_alpha__Dwing_
{
	meta:
		description = "Upack 0.24 - 0.27 beta / 0.28 alpha -> Dwing"
	strings:
		$0 = {BE 88 01 40 00 AD 8B F8 95 AD 91 F3 A5 AD B5 ?? F3 AB AD 50 97 51 58 8D 54 85 5C FF 16 72 57 2C 03 73 02 B0 00 3C 07 72 02 2C 03 50 0F B6 5F FF C1 E3 ?? B3 00 8D 1C 5B 8D 9C 9D 0C 10 00 00 B0}
	condition:
		$0 at entrypoint
}
rule _vfpexeNc_v600__Wang_JianGuo_
{
	meta:
		description = "vfp&exeNc v6.00 -> Wang JianGuo"
	strings:
		$0 = {60 E8 01 00 00 00 63 58 E8 01 00 00 00 7A 58 2D 0D 10 40 00 8D 90 C1 10 40 00 52 50 8D 80 49 10 40 00 5D 50 8D 85 65 10 40 00 50 64 FF 35 00 00 00 00 64 89 25 00 00 00 00 CC}
	condition:
		$0 at entrypoint
}
rule _Joiner_sign_from_pinch_25032007_2010_
{
	meta:
		description = "Joiner (sign from pinch 25.03.2007 20:10)"
	strings:
		$0 = {81 EC 04 01 00 00 8B F4 68 04 01 00 00 56 6A 00 E8 7C 01 00 00 33 C0 6A 00 68 80 00 00 00 6A 03 6A 00 6A 00 68 00 00 00 80 56 E8 50 01 00 00 8B D8 6A 00 6A 00 6A 00 6A 02 6A 00 53 E8 44 01}
	condition:
		$0 at entrypoint
}
rule _PECompact_v099_
{
	meta:
		description = "PECompact v0.99"
	strings:
		$0 = {EB 06 68 ?? ?? ?? ?? C3 9C 60 E8 02 ?? ?? ?? 33 C0 8B C4 83 C0 04 93 8B E3 8B 5B FC 81 EB 2F 85 40 ?? 87 DD 8B 85 B4 85}
	condition:
		$0 at entrypoint
}
rule _Vx_XPEH4768_
{
	meta:
		description = "Vx: XPEH.4768"
	strings:
		$0 = {E8 ?? ?? 5B 81 ?? ?? ?? 50 56 57 2E ?? ?? ?? ?? ?? 2E ?? ?? ?? ?? ?? ?? B8 01 00 50 B8 ?? ?? 50 E8}
	condition:
		$0 at entrypoint
}
rule _Vx_ACME_Clonewar_Mutant_
{
	meta:
		description = "Vx: ACME (Clonewar Mutant)"
	strings:
		$0 = {FC AD 3D FF FF 74 20 E6 42 8A C4 E6 42 E4 61 0C 03 E6 61 AD B9 40 1F E2 FE}
	condition:
		$0 at entrypoint
}
rule _PCGuard_v500d_
{
	meta:
		description = "PC-Guard v5.00d"
	strings:
		$0 = {FC 55 50 E8 00 00 00 00 5D 60 E8 03 00 00 00 83 EB 0E EB 01 0C 58 EB 01 35 40 EB 01 36 FF E0 0B 61 B8 30 D2 40 00 EB 01 E3 60 E8 03 00 00 00 D2 EB 0B 58 EB 01 48 40 EB 01 35 FF E0 E7 61 2B E8 9C EB 01 D5 9D EB 01 0B 58 60 E8 03 00 00 00 83 EB 0E EB 01 0C}
	condition:
		$0 at entrypoint
}
rule _PluginToExe_v100__BoB__BobSoft_
{
	meta:
		description = "PluginToExe v1.00 -> BoB / BobSoft"
	strings:
		$0 = {E8 00 00 00 00 29 C0 5D 81 ED D1 40 40 00 50 FF 95 B8 40 40 00 89 85 09 40 40 00 FF 95 B4 40 40 00 89 85 11 40 40 00 50 FF 95 C0 40 40 00 8A 08 80 F9 22 75 07 50 FF 95 C4 40 40 00 89 85 0D 40 40 00 8B 9D 09 40 40 00 60 6A 00 6A 01 53 81 C3 ?? ?? ?? 00 FF D3 61 6A 00 68 44 69 45 50 FF B5 0D 40 40 00 6A 00 81 C3 ?? ?? ?? 00 FF D3 83 C4 10 FF 95 B0 40 40 00}
	condition:
		$0 at entrypoint
}
rule _bambam_001__bedrock_
{
	meta:
		description = "bambam 0.01 -> bedrock"
	strings:
		$0 = {6A 14 E8 9A 05 00 00 8B D8 53 68 ?? ?? ?? ?? E8 6C FD FF FF B9 05 00 00 00 8B F3 BF ?? ?? ?? ?? 53 F3 A5 E8 8D 05 00 00 8B 3D ?? ?? ?? ?? A1 ?? ?? ?? ?? 66 8B 15 ?? ?? ?? ?? B9 ?? ?? ?? ?? 2B CF 89 45 E8 89 0D ?? ?? ?? ?? 66 89 55 EC 8B 41 3C 33 D2 03 C1 83 C4 10 66 8B 48 06 66 8B 50 14 81 E1 FF FF 00 00 8D 5C 02 18 8D 41 FF 85 C0}
	condition:
		$0 at entrypoint
}
rule _AHTeam_EP_Protector_03_fake_Borland_Delphi_6070__FEUERRADER_
{
	meta:
		description = "AHTeam EP Protector 0.3 (fake Borland Delphi 6.0-7.0) -> FEUERRADER"
	strings:
		$0 = {90 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 90 FF E0 53 8B D8 33 C0 A3 00 00 00 00 6A 00 E8 00 00 00 FF A3 00 00 00 00 A1 00 00 00 00 A3 00 00 00 00 33 C0 A3 00 00 00 00 33 C0 A3 00 00 00 00 E8}
	condition:
		$0 at entrypoint
}
rule _Wind_of_Crypt_10__by_DarkPressure_
{
	meta:
		description = "Wind of Crypt 1.0 - by DarkPressure"
	strings:
		$0 = {55 8B EC 83 C4 EC 53 ?? ?? ?? ?? 89 45 EC B8 64 40 00 10 E8 28 EA FF FF 33 C0 55 68 CE 51 00 10 64 ?? ?? ?? ?? 20 6A 00 68 80 00 00 00 6A 03 6A 00 6A 01 68 00 00 00 80 8D 55 EC 33 C0 E8 F6 DB FF FF 8B 45 EC E8 12 E7 FF FF 50 E8 3C EA FF FF 8B D8 83 FB FF 0F 84 A6 00 00 00 6A 00 53 E8 41 EA FF FF 8B F0 81 EE 00 5E 00 00 6A 00 6A 00 68 00 5E 00 00 53 E8 52 EA FF FF B8 F4 97 00 10 8B D6 E8 2E E7 FF FF B8 F8 97 00 10 8B D6 E8 22 E7 FF FF 8B C6 E8 AB D8 FF FF 8B F8 6A 00 68 F0 97 00 10 56 A1 F4 97 00 10 50 53 E8 05 EA FF FF 53 E8 CF E9 FF FF B8 FC 97 00 10 BA E8 51 00 10 E8 74 EA FF FF A1 F4 97 00 10 85 C0 74 05 83 E8 04 8B 00 50 B9 F8 97 00 10 B8 FC 97 00 10 8B 15 F4 97 00 10 E8 D8 EA FF FF B8 FC 97 00 10 E8 5A EB FF FF 8B CE 8B 15 F8 97 00 10 8B C7 E8 EB E9 FF FF 8B C7 85 C0 74 05 E8 E4 EB FF FF 33 C0 5A 59 59 64 89 10 68 D5 51 00 10 8D 45 EC E8 BB E5 FF FF C3 E9 A9 DF FF FF EB F0 5F 5E 5B E8 B7 E4 FF FF 00 00 00 FF FF FF FF 0A 00 00 00 63 5A 6C 56 30 55 6C 6B 70 4D}
	condition:
		$0 at entrypoint
}
