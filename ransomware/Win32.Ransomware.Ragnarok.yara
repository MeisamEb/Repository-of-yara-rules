rule Win32_Ransomware_Ragnarok : tc_detection malicious
{
    meta:

        author              = "ReversingLabs"

        source              = "ReversingLabs"
        status              = "RELEASED"
        sharing             = "TLP:WHITE"
        category            = "MALWARE"
        malware             = "RAGNAROK"
        description         = "Yara rule that detects Ragnarok ransomware."

        tc_detection_type   = "Ransomware"
        tc_detection_name   = "Ragnarok"
        tc_detection_factor = 5

    strings:

        $find_files_p1 = {
            8B FF 55 8B EC 51 8B 4D ?? 8D 51 ?? 8A 01 41 84 C0 75 ?? 57 8B 7D ?? 2B CA 8B C7 41 
            F7 D0 89 4D ?? 3B C8 76 ?? 6A ?? 58 5F 8B E5 5D C3 53 56 8D 5F ?? 03 D9 6A ?? 53 E8 
            ?? ?? ?? ?? 8B F0 59 59 85 FF 74 ?? 57 FF 75 ?? 53 56 E8 ?? ?? ?? ?? 83 C4 ?? 85 C0 
            75 ?? FF 75 ?? 2B DF 8D 04 3E FF 75 ?? 53 50 E8 ?? ?? ?? ?? 83 C4 ?? 85 C0 75 ?? 8B 
            5D ?? 8B CB E8 ?? ?? ?? ?? 33 FF 89 45 ?? 85 C0 74 ?? 56 E8 ?? ?? ?? ?? 8B 75 ?? 59 
            EB ?? 8B 43 ?? 89 30 8B F7 83 43 ?? ?? 57 E8 ?? ?? ?? ?? 59 8B C6 5E 5B EB ?? 33 FF 
            57 57 57 57 57 E8 ?? ?? ?? ?? CC 8B FF 55 8B EC 81 EC ?? ?? ?? ?? A1 ?? ?? ?? ?? 33 
            C5 89 45 ?? 8B 4D ?? 8B 55 ?? 53 57 8B 7D ?? 89 95 ?? ?? ?? ?? 3B CF 74 ?? 8A 01 3C 
            ?? 74 ?? 3C ?? 74 ?? 3C ?? 74 ?? 51 57 E8 ?? ?? ?? ?? 59 59 8B C8 3B CF 75 ?? 8B 95 
            ?? ?? ?? ?? 8A 01 88 85 ?? ?? ?? ?? 3C ?? 75 ?? 8D 47 ?? 3B C8 74 ?? 52 33 DB 53 53 
            57 E8 ?? ?? ?? ?? 83 C4 ?? E9 ?? ?? ?? ?? 8A 85 ?? ?? ?? ?? 33 DB 3C ?? 74 ?? 3C ?? 
            74 ?? 3C ?? 8A C3 75 ?? B0 ?? 2B CF 0F B6 C0 41 89 9D ?? ?? ?? ?? F7 D8 89 9D ?? ?? 
            ?? ?? 56 1B C0 89 9D ?? ?? ?? ?? 23 C1 89 9D ?? ?? ?? ?? 89 85 ?? ?? ?? ?? 89 9D ?? 
            ?? ?? ?? 88 9D ?? ?? ?? ?? E8 ?? ?? ?? ?? 50 8D 85 ?? ?? ?? ?? 50 57 E8
        }

        $find_files_p2 = {
            83 C4 ?? 8D 8D ?? ?? ?? ?? F7 D8 1B C0 53 53 53 51 F7 D0 23 85 ?? ?? ?? ?? 53 50 FF 
            15 ?? ?? ?? ?? 8B F0 83 FE ?? 75 ?? FF B5 ?? ?? ?? ?? 53 53 57 E8 ?? ?? ?? ?? 83 C4 
            ?? 8B D8 E9 ?? ?? ?? ?? 8B 85 ?? ?? ?? ?? 8B 48 ?? 2B 08 C1 F9 ?? 89 8D ?? ?? ?? ?? 
            89 9D ?? ?? ?? ?? 89 9D ?? ?? ?? ?? 89 9D ?? ?? ?? ?? 89 9D ?? ?? ?? ?? 89 9D ?? ?? 
            ?? ?? 88 9D ?? ?? ?? ?? E8 ?? ?? ?? ?? 50 8D 85 ?? ?? ?? ?? 50 8D 85 ?? ?? ?? ?? 50 
            8D 85 ?? ?? ?? ?? 50 E8 ?? ?? ?? ?? 83 C4 ?? F7 D8 1B C0 F7 D0 23 85 ?? ?? ?? ?? 80 
            38 ?? 75 ?? 8A 48 ?? 84 C9 74 ?? 80 F9 ?? 75 ?? 38 58 ?? 74 ?? FF B5 ?? ?? ?? ?? FF 
            B5 ?? ?? ?? ?? 57 50 E8 ?? ?? ?? ?? 83 C4 ?? 89 85 ?? ?? ?? ?? 85 C0 75 ?? 38 9D ?? 
            ?? ?? ?? 74 ?? FF B5 ?? ?? ?? ?? E8 ?? ?? ?? ?? 59 8D 85 ?? ?? ?? ?? 50 56 FF 15 ?? 
            ?? ?? ?? 85 C0 0F 85 ?? ?? ?? ?? 8B 85 ?? ?? ?? ?? 8B 8D ?? ?? ?? ?? 8B 10 8B 40 ?? 
            2B C2 C1 F8 ?? 3B C8 74 ?? 68 ?? ?? ?? ?? 2B C1 6A ?? 50 8D 04 8A 50 E8 ?? ?? ?? ?? 
            83 C4 ?? EB ?? 38 9D ?? ?? ?? ?? 74 ?? FF B5 ?? ?? ?? ?? E8 ?? ?? ?? ?? 8B 85 ?? ?? 
            ?? ?? 59 8B D8 56 FF 15 ?? ?? ?? ?? 80 BD ?? ?? ?? ?? ?? 5E 74 ?? FF B5 ?? ?? ?? ?? 
            E8 ?? ?? ?? ?? 59 8B C3 8B 4D ?? 5F 33 CD 5B E8 ?? ?? ?? ?? 8B E5 5D C3 
        }

        $encrypt_files_p1 = {
            55 8B EC 81 EC ?? ?? ?? ?? A1 ?? ?? ?? ?? 33 C5 89 45 ?? 8B 45 ?? 8B 4D ?? 56 57 89 
            85 ?? ?? ?? ?? 33 FF 33 C0 89 8D ?? ?? ?? ?? 6A ?? 51 89 85 ?? ?? ?? ?? E8 ?? ?? ?? 
            ?? 83 C4 ?? 8D 70 ?? 68 ?? ?? ?? ?? FF 35 ?? ?? ?? ?? E8 ?? ?? ?? ?? 8B 40 ?? 8A 0E 
            3A 08 75 ?? 84 C9 74 ?? 8A 4E ?? 3A 48 ?? 75 ?? 83 C6 ?? 83 C0 ?? 84 C9 75 ?? 33 C0 
            EB ?? 1B C0 83 C8 ?? 85 C0 0F 84 ?? ?? ?? ?? 53 6A ?? E8 ?? ?? ?? ?? 83 C4 ?? 8B D8 
            68 ?? ?? ?? ?? FF 35 ?? ?? ?? ?? E8 ?? ?? ?? ?? 33 F6 8B 40 ?? 8B F8 E8 ?? ?? ?? ?? 
            33 D2 B9 ?? ?? ?? ?? F7 F1 8A 04 3A 88 04 1E 46 83 FE ?? 7C ?? FF B5 ?? ?? ?? ?? E8 
            ?? ?? ?? ?? 83 C4 ?? 89 85 ?? ?? ?? ?? 33 C9 23 F9 89 8D ?? ?? ?? ?? 3D ?? ?? ?? ?? 
            0F 87 ?? ?? ?? ?? 48 83 E0 ?? 83 C0 ?? 50 89 85 ?? ?? ?? ?? E8 ?? ?? ?? ?? 68 ?? ?? 
            ?? ?? FF B5 ?? ?? ?? ?? 8B F0 89 B5 ?? ?? ?? ?? E8 ?? ?? ?? ?? 8B F8 83 C4 ?? 85 FF 
        }

        $encrypt_files_p2 = {
            0F 84 ?? ?? ?? ?? 57 FF B5 ?? ?? ?? ?? 6A ?? 56 E8 ?? ?? ?? ?? 57 8B F0 E8 ?? ?? ?? 
            ?? 83 C4 ?? 33 FF 3B B5 ?? ?? ?? ?? 0F 85 ?? ?? ?? ?? 33 C0 3B 85 ?? ?? ?? ?? 0F 85 
            ?? ?? ?? ?? 53 FF B5 ?? ?? ?? ?? 8D 85 ?? ?? ?? ?? 50 E8 ?? ?? ?? ?? FF B5 ?? ?? ?? 
            ?? 8B B5 ?? ?? ?? ?? 8D 85 ?? ?? ?? ?? 56 50 E8 ?? ?? ?? ?? 68 ?? ?? ?? ?? FF B5 ?? 
            ?? ?? ?? E8 ?? ?? ?? ?? 8B F8 83 C4 ?? 85 FF 0F 84 ?? ?? ?? ?? 68 ?? ?? ?? ?? E8 ?? 
            ?? ?? ?? 50 53 89 85 ?? ?? ?? ?? E8 ?? ?? ?? ?? 83 C4 ?? 85 C0 75 ?? 8B 85 ?? ?? ?? 
            ?? 57 68 ?? ?? ?? ?? 6A ?? 50 E8 ?? ?? ?? ?? 83 C4 ?? 3D ?? ?? ?? ?? 75 ?? 57 6A ?? 
            8D 85 ?? ?? ?? ?? 6A ?? 50 E8 ?? ?? ?? ?? 57 FF B5 ?? ?? ?? ?? 6A ?? 56 E8 ?? ?? ?? 
            ?? 83 C4 ?? 3B 85 ?? ?? ?? ?? 75 ?? 57 E8 ?? ?? ?? ?? 8B B5 ?? ?? ?? ?? 33 FF 56 E8 
            ?? ?? ?? ?? 56 E8 ?? ?? ?? ?? 83 C4 ?? 8B 85 ?? ?? ?? ?? 85 C0 74 ?? 50 E8 ?? ?? ?? 
            ?? 83 C4 ?? 85 DB 74 ?? 53 E8 ?? ?? ?? ?? 83 C4 ?? 8B 85 ?? ?? ?? ?? 5B 85 C0 74 ?? 
            50 E8 ?? ?? ?? ?? 83 C4 ?? 85 FF 74 ?? 57 E8 ?? ?? ?? ?? 83 C4 ?? 8B 4D ?? 5F 33 CD 
            5E E8 ?? ?? ?? ?? 8B E5 5D C3 
        }
        
        $disable_fw_and_delete_shadow_volumes = {
            6A ?? 68 ?? ?? ?? ?? FF 35 ?? ?? ?? ?? E8 ?? ?? ?? ?? 8B 40 ?? 50 E8 ?? ?? ?? ?? 83 
            C4 ?? 85 C0 74 ?? 8D 45 ?? 50 8D 85 ?? ?? ?? ?? 50 6A ?? 6A ?? 6A ?? 6A ?? 6A ?? 6A 
            ?? 68 ?? ?? ?? ?? FF 35 ?? ?? ?? ?? E8 ?? ?? ?? ?? 8B 40 ?? 50 6A ?? FF D7 E9 ?? ?? 
            ?? ?? 6A ?? FF 35 ?? ?? ?? ?? C7 85 ?? ?? ?? ?? ?? ?? ?? ?? E8 ?? ?? ?? ?? 8B 40 ?? 
            50 FF 35 ?? ?? ?? ?? FF D3 6A ?? FF 35 ?? ?? ?? ?? 8B F0 E8 ?? ?? ?? ?? 8B 48 ?? 51 
            FF 35 ?? ?? ?? ?? FF D3 8B F8 8D 85 ?? ?? ?? ?? 50 FF D6 8D 45 ?? 50 8D 85 ?? ?? ?? 
            ?? 50 6A ?? 6A ?? 6A ?? 6A ?? 6A ?? 6A ?? 68 ?? ?? ?? ?? FF 35 ?? ?? ?? ?? E8 ?? ?? 
            ?? ?? 8B 40 ?? 50 6A ?? FF 95 ?? ?? ?? ?? 8D 45 ?? 50 8D 85 ?? ?? ?? ?? 50 6A ?? 6A 
            ?? 6A ?? 6A ?? 6A ?? 6A ?? 68 ?? ?? ?? ?? FF 35 ?? ?? ?? ?? E8 ?? ?? ?? ?? 8B 35 ?? 
            ?? ?? ?? 8B 40 ?? 50 6A ?? FF D6 8D 45 ?? 50 8D 85 ?? ?? ?? ?? 50 6A ?? 6A ?? 6A ?? 
            6A ?? 6A ?? 6A ?? 68 ?? ?? ?? ?? FF 35 ?? ?? ?? ?? E8 ?? ?? ?? ?? 8B 40 ?? 50 6A ?? 
            FF D6 8D 45 ?? 50 8D 85 ?? ?? ?? ?? 50 6A ?? 6A ?? 6A ?? 6A ?? 6A ?? 6A ?? 68 ?? ?? 
            ?? ?? FF 35 ?? ?? ?? ?? E8 ?? ?? ?? ?? 8B 40 ?? 50 6A ?? FF D6 
        }
        
    condition:
        uint16(0) == 0x5A4D and
        (
            $disable_fw_and_delete_shadow_volumes
        ) and
        (
            all of ($find_files_p*)
        ) and
        (
            all of ($encrypt_files_p*)
        )
}