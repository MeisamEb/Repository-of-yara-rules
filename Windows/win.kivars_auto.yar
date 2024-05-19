rule win_kivars_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-12-06"
        version = "1"
        description = "Detects win.kivars."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.kivars"
        malpedia_rule_date = "20231130"
        malpedia_hash = "fc8a0e9f343f6d6ded9e7df1a64dac0cc68d7351"
        malpedia_version = "20230808"
        malpedia_license = "CC BY-SA 4.0"
        malpedia_sharing = "TLP:WHITE"

    /* DISCLAIMER
     * The strings used in this rule have been automatically selected from the
     * disassembly of memory dumps and unpacked files, using YARA-Signator.
     * The code and documentation is published here:
     * https://github.com/fxb-cocacoding/yara-signator
     * As Malpedia is used as data source, please note that for a given
     * number of families, only single samples are documented.
     * This likely impacts the degree of generalization these rules will offer.
     * Take the described generation method also into consideration when you
     * apply the rules in your use cases and assign them confidence levels.
     */


    strings:
        $sequence_0 = { c705????????00000000 c644245423 c744245002000000 488d4c2450 e8???????? }
            // n = 5, score = 200
            //   c705????????00000000     |     
            //   c644245423           | add                 eax, 9
            //   c744245002000000     | dec                 eax
            //   488d4c2450           | lea                 edx, [esp + 0x140]
            //   e8????????           |                     

        $sequence_1 = { 8d542440 8944244c 894c243c 6a14 }
            // n = 4, score = 200
            //   8d542440             | lea                 edx, [esp + 0x40]
            //   8944244c             | mov                 dword ptr [esp + 0x4c], eax
            //   894c243c             | mov                 dword ptr [esp + 0x3c], ecx
            //   6a14                 | push                0x14

        $sequence_2 = { 8d8c247c010000 51 e8???????? 83c404 33c0 5f 5e }
            // n = 7, score = 200
            //   8d8c247c010000       | lea                 ecx, [esp + 0x17c]
            //   51                   | push                ecx
            //   e8????????           |                     
            //   83c404               | add                 esp, 4
            //   33c0                 | xor                 eax, eax
            //   5f                   | pop                 edi
            //   5e                   | pop                 esi

        $sequence_3 = { 44894c2420 4c89442418 89542410 48894c2408 4881eca8000000 488b05???????? }
            // n = 6, score = 200
            //   44894c2420           | lea                 edx, [esp + 0x260]
            //   4c89442418           | dec                 eax
            //   89542410             | lea                 ecx, [esp + 0x150]
            //   48894c2408           | inc                 esp
            //   4881eca8000000       | mov                 dword ptr [esp + 0x20], ecx
            //   488b05????????       |                     

        $sequence_4 = { ff15???????? 8bc8 8d7308 83e908 8dbc2492000000 8bd1 }
            // n = 6, score = 200
            //   ff15????????         |                     
            //   8bc8                 | mov                 ecx, eax
            //   8d7308               | lea                 esi, [ebx + 8]
            //   83e908               | sub                 ecx, 8
            //   8dbc2492000000       | lea                 edi, [esp + 0x92]
            //   8bd1                 | mov                 edx, ecx

        $sequence_5 = { 4889842470020000 ff15???????? 89842430020000 c784242002000001000000 c784242c02000002000000 c64424707d }
            // n = 6, score = 200
            //   4889842470020000     | dec                 eax
            //   ff15????????         |                     
            //   89842430020000       | mov                 dword ptr [esp + 0x28], eax
            //   c784242002000001000000     | dec    eax
            //   c784242c02000002000000     | mov    eax, dword ptr [esp + 0x1070]
            //   c64424707d           | dec                 eax

        $sequence_6 = { 755d 4c8b8424e0050000 488d942460020000 488d8c2450010000 e8???????? }
            // n = 5, score = 200
            //   755d                 | jne                 0x5f
            //   4c8b8424e0050000     | dec                 esp
            //   488d942460020000     | mov                 eax, dword ptr [esp + 0x5e0]
            //   488d8c2450010000     | dec                 eax
            //   e8????????           |                     

        $sequence_7 = { 4883c005 4889442428 488b842470100000 4883c009 }
            // n = 4, score = 200
            //   4883c005             | dec                 esp
            //   4889442428           | mov                 dword ptr [esp + 0x18], eax
            //   488b842470100000     | mov                 dword ptr [esp + 0x10], edx
            //   4883c009             | dec                 eax

        $sequence_8 = { 894c2430 89442444 894c2434 89442448 894c2438 8d542440 8944244c }
            // n = 7, score = 200
            //   894c2430             | mov                 dword ptr [esp + 0x30], ecx
            //   89442444             | mov                 dword ptr [esp + 0x44], eax
            //   894c2434             | mov                 dword ptr [esp + 0x34], ecx
            //   89442448             | mov                 dword ptr [esp + 0x48], eax
            //   894c2438             | mov                 dword ptr [esp + 0x38], ecx
            //   8d542440             | lea                 edx, [esp + 0x40]
            //   8944244c             | mov                 dword ptr [esp + 0x4c], eax

        $sequence_9 = { 488d942440010000 488d4c2430 e8???????? 8b442434 83e001 85c0 }
            // n = 6, score = 200
            //   488d942440010000     | mov                 dword ptr [esp + 8], ecx
            //   488d4c2430           | dec                 eax
            //   e8????????           |                     
            //   8b442434             | sub                 esp, 0xa8
            //   83e001               | dec                 eax
            //   85c0                 | add                 eax, 5

        $sequence_10 = { 50 8b4d18 51 8d5514 }
            // n = 4, score = 200
            //   50                   | push                eax
            //   8b4d18               | mov                 ecx, dword ptr [ebp + 0x18]
            //   51                   | push                ecx
            //   8d5514               | lea                 edx, [ebp + 0x14]

        $sequence_11 = { 7476 eb09 80fb3d 0f8489000000 0fbe5c2412 c0e202 8a5c1c14 }
            // n = 7, score = 200
            //   7476                 | je                  0x78
            //   eb09                 | jmp                 0xb
            //   80fb3d               | cmp                 bl, 0x3d
            //   0f8489000000         | je                  0x8f
            //   0fbe5c2412           | movsx               ebx, byte ptr [esp + 0x12]
            //   c0e202               | shl                 dl, 2
            //   8a5c1c14             | mov                 bl, byte ptr [esp + ebx + 0x14]

        $sequence_12 = { 488bc8 ff15???????? 8b842460110000 ffc0 }
            // n = 4, score = 200
            //   488bc8               | dec                 eax
            //   ff15????????         |                     
            //   8b842460110000       | lea                 ecx, [esp + 0x30]
            //   ffc0                 | mov                 eax, dword ptr [esp + 0x34]

        $sequence_13 = { 83fffe 741b 83ffff 0f858c000000 8d8c247c010000 }
            // n = 5, score = 200
            //   83fffe               | cmp                 edi, -2
            //   741b                 | je                  0x1d
            //   83ffff               | cmp                 edi, -1
            //   0f858c000000         | jne                 0x92
            //   8d8c247c010000       | lea                 ecx, [esp + 0x17c]

        $sequence_14 = { 8bf0 83c609 33ff 6a74 897c2414 e8???????? 83c404 }
            // n = 7, score = 200
            //   8bf0                 | mov                 esi, eax
            //   83c609               | add                 esi, 9
            //   33ff                 | xor                 edi, edi
            //   6a74                 | push                0x74
            //   897c2414             | mov                 dword ptr [esp + 0x14], edi
            //   e8????????           |                     
            //   83c404               | add                 esp, 4

        $sequence_15 = { 48894c2408 4881ec68030000 48c7842448030000feffffff 488d8c2430010000 e8???????? }
            // n = 5, score = 200
            //   48894c2408           | and                 eax, 1
            //   4881ec68030000       | test                eax, eax
            //   48c7842448030000feffffff     | dec    eax
            //   488d8c2430010000     | mov                 dword ptr [esp + 0x270], eax
            //   e8????????           |                     

    condition:
        7 of them and filesize < 196608
}