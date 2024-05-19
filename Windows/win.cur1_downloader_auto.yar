rule win_cur1_downloader_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-12-06"
        version = "1"
        description = "Detects win.cur1_downloader."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.cur1_downloader"
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
        $sequence_0 = { e8???????? ebd1 488d542440 488b4c2470 e8???????? 8b442438 83c801 }
            // n = 7, score = 100
            //   e8????????           |                     
            //   ebd1                 | dec                 ebp
            //   488d542440           | mov                 dword ptr [edi + 8], eax
            //   488b4c2470           | inc                 ecx
            //   e8????????           |                     
            //   8b442438             | mov                 dword ptr [edi + 0x1c], eax
            //   83c801               | inc                 ecx

        $sequence_1 = { 8b442440 ffc0 89442440 8b05???????? 39442440 0f83e4000000 8b442440 }
            // n = 7, score = 100
            //   8b442440             | dec                 eax
            //   ffc0                 | mov                 eax, dword ptr [esp + 0x38]
            //   89442440             | dec                 eax
            //   8b05????????         |                     
            //   39442440             | mov                 ecx, dword ptr [eax]
            //   0f83e4000000         | jmp                 0x210
            //   8b442440             | dec                 esp

        $sequence_2 = { c68424e70200006f c68424e80200006e c68424e902000057 c68424ea02000000 }
            // n = 4, score = 100
            //   c68424e70200006f     | mov                 word ptr [esp + 0x60], ax
            //   c68424e80200006e     | mov                 eax, 0x78
            //   c68424e902000057     | mov                 word ptr [esp + 0x62], ax
            //   c68424ea02000000     | mov                 eax, 0x65

        $sequence_3 = { 7578 48630d847affff 488d15417affff 4803ca 813950450000 755f b80b020000 }
            // n = 7, score = 100
            //   7578                 | mov                 eax, dword ptr [esp + 0x58]
            //   48630d847affff       | dec                 eax
            //   488d15417affff       | mov                 dword ptr [esp + 0x98], eax
            //   4803ca               | dec                 eax
            //   813950450000         | mov                 eax, dword ptr [esp + 0x98]
            //   755f                 | dec                 eax
            //   b80b020000           | mov                 dword ptr [esp + 0x70], eax

        $sequence_4 = { c68424b803000069 c68424b90300006e c68424ba03000067 c68424bb0300006c c68424bc03000065 c68424bd0300004f }
            // n = 6, score = 100
            //   c68424b803000069     | mov                 ecx, dword ptr [esp + 0x68]
            //   c68424b90300006e     | mov                 dword ptr [esp], eax
            //   c68424ba03000067     | dec                 eax
            //   c68424bb0300006c     | arpl                word ptr [esp], ax
            //   c68424bc03000065     | dec                 eax
            //   c68424bd0300004f     | mov                 ecx, dword ptr [esp + 0x30]

        $sequence_5 = { c684248803000065 c684248903000049 c684248a0300006e c684248b03000066 c684248c0300006f c684248d03000072 c684248e0300006d }
            // n = 7, score = 100
            //   c684248803000065     | dec                 eax
            //   c684248903000049     | add                 eax, 0x40
            //   c684248a0300006e     | dec                 eax
            //   c684248b03000066     | lea                 ecx, [esp + 0x98]
            //   c684248c0300006f     | dec                 eax
            //   c684248d03000072     | lea                 ecx, [esp + 0x1d0]
            //   c684248e0300006d     | nop                 

        $sequence_6 = { 48c744247000000000 41b918000000 4c8d8424a0000000 488b942488000000 488b8c2490000000 ff15???????? 85c0 }
            // n = 7, score = 100
            //   48c744247000000000     | inc    ebp
            //   41b918000000         | xor                 ecx, ecx
            //   4c8d8424a0000000     | inc                 ebp
            //   488b942488000000     | xor                 eax, eax
            //   488b8c2490000000     | dec                 eax
            //   ff15????????         |                     
            //   85c0                 | lea                 edx, [esp + 0x1720]

        $sequence_7 = { 4863442450 0fb78444d0000000 83f85c 750d 8b442450 898424a4000000 eb02 }
            // n = 7, score = 100
            //   4863442450           | mov                 byte ptr [esp + 0x1d3], 0x43
            //   0fb78444d0000000     | mov                 byte ptr [esp + 0x1d4], 0x72
            //   83f85c               | mov                 byte ptr [esp + 0x1d5], 0x65
            //   750d                 | mov                 byte ptr [esp + 0x1d6], 0x61
            //   8b442450             | mov                 byte ptr [esp + 0x2d1], 0
            //   898424a4000000       | mov                 byte ptr [esp + 0x120], 0x49
            //   eb02                 | mov                 byte ptr [esp + 0x121], 0x6e

        $sequence_8 = { 7d0c 4863442428 c644042400 ebe3 c744242800000000 eb0a 8b442428 }
            // n = 7, score = 100
            //   7d0c                 | sub                 esp, 0x28
            //   4863442428           | dec                 eax
            //   c644042400           | mov                 eax, dword ptr [esp + 0x30]
            //   ebe3                 | dec                 eax
            //   c744242800000000     | lea                 ecx, [0x1cf63]
            //   eb0a                 | dec                 eax
            //   8b442428             | mov                 dword ptr [eax], ecx

        $sequence_9 = { c644244933 c644244a37 c644244b62 c644244c34 c644244d37 c644244e39 c644244f32 }
            // n = 7, score = 100
            //   c644244933           | dec                 eax
            //   c644244a37           | lea                 eax, [0x12bc0]
            //   c644244b62           | dec                 eax
            //   c644244c34           | mov                 dword ptr [ecx + 8], eax
            //   c644244d37           | dec                 eax
            //   c644244e39           | mov                 eax, ebx
            //   c644244f32           | dec                 eax

    condition:
        7 of them and filesize < 402432
}