rule win_sepsys_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-12-06"
        version = "1"
        description = "Detects win.sepsys."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.sepsys"
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
        $sequence_0 = { eb00 c685b500000000 488b4df8 488b55e8 4c8b45f0 e8???????? 488955e0 }
            // n = 7, score = 400
            //   eb00                 | inc                 esp
            //   c685b500000000       | mov                 eax, dword ptr [esp + 0x24c]
            //   488b4df8             | inc                 esp
            //   488b55e8             | xor                 eax, dword ptr [esp + 0x25c]
            //   4c8b45f0             | dec                 eax
            //   e8????????           |                     
            //   488955e0             | mov                 dword ptr [esp + 0x258], ecx

        $sequence_1 = { eb13 488b442448 4839442450 7407 b837000000 eb0e 488d4c2460 }
            // n = 7, score = 400
            //   eb13                 | dec                 eax
            //   488b442448           | mov                 dword ptr [ebp - 0x48], eax
            //   4839442450           | dec                 eax
            //   7407                 | mov                 eax, dword ptr [ebp + 0x10]
            //   b837000000           | dec                 eax
            //   eb0e                 | mov                 ecx, eax
            //   488d4c2460           | dec                 eax

        $sequence_2 = { e9???????? 0fb74b02 81f9e8030000 7338 41b801000000 6683f90a 723f }
            // n = 7, score = 400
            //   e9????????           |                     
            //   0fb74b02             | dec                 eax
            //   81f9e8030000         | cmp                 dword ptr [esp + 0x60], 0
            //   7338                 | je                  0x1964
            //   41b801000000         | dec                 eax
            //   6683f90a             | lea                 eax, [0x96783]
            //   723f                 | dec                 eax

        $sequence_3 = { c685b604000000 488d8da0000000 e8???????? ebd8 488b4508 488d4d20 48894da8 }
            // n = 7, score = 400
            //   c685b604000000       | mov                 dword ptr [ebp - 0x60], eax
            //   488d8da0000000       | dec                 eax
            //   e8????????           |                     
            //   ebd8                 | mov                 dword ptr [ebp - 0x58], 3
            //   488b4508             | dec                 eax
            //   488d4d20             | mov                 dword ptr [ebp - 0x50], 0
            //   48894da8             | dec                 eax

        $sequence_4 = { e8???????? 41b801000000 488d9424a0000000 488d8c24d8000000 e8???????? 488b442460 488b4008 }
            // n = 7, score = 400
            //   e8????????           |                     
            //   41b801000000         | mov                 dword ptr [ebp - 0x48], eax
            //   488d9424a0000000     | dec                 eax
            //   488d8c24d8000000     | mov                 eax, dword ptr [ebp]
            //   e8????????           |                     
            //   488b442460           | dec                 eax
            //   488b4008             | mov                 dword ptr [ebp - 0x40], ecx

        $sequence_5 = { e8???????? 4889442430 488b442430 4889442450 488b542450 488b4c2438 e8???????? }
            // n = 7, score = 400
            //   e8????????           |                     
            //   4889442430           | xor                 eax, esp
            //   488b442430           | dec                 eax
            //   4889442450           | mov                 dword ptr [esp + 0x2a0], eax
            //   488b542450           | dec                 eax
            //   488b4c2438           | mov                 dword ptr [esp + 0x10], edx
            //   e8????????           |                     

        $sequence_6 = { 488b842400010000 4889842400020000 8b8c24c8010000 338c24f8010000 8b9424cc010000 339424fc010000 448b8424d0010000 }
            // n = 7, score = 400
            //   488b842400010000     | jne                 0x1381
            //   4889842400020000     | jmp                 0x138f
            //   8b8c24c8010000       | dec                 eax
            //   338c24f8010000       | lea                 ecx, [0xcecf9]
            //   8b9424cc010000       | ud2                 
            //   339424fc010000       | test                al, 1
            //   448b8424d0010000     | jne                 0x1390

        $sequence_7 = { e8???????? 488945b0 eb00 488b45b0 48898518010000 eb0b 488b45b8 }
            // n = 7, score = 400
            //   e8????????           |                     
            //   488945b0             | mov                 edx, dword ptr [esp + 0x68]
            //   eb00                 | dec                 eax
            //   488b45b0             | mov                 dword ptr [esp + 0x20], edx
            //   48898518010000       | dec                 eax
            //   eb0b                 | mov                 eax, dword ptr [esp + 0x28]
            //   488b45b8             | dec                 eax

        $sequence_8 = { d3e0 488b4c2430 89411c 4533c0 33d2 33c9 e8???????? }
            // n = 7, score = 400
            //   d3e0                 | dec                 eax
            //   488b4c2430           | mov                 dword ptr [esp + 0x38], ecx
            //   89411c               | dec                 eax
            //   4533c0               | mov                 dword ptr [esp + 0x40], edx
            //   33d2                 | dec                 esp
            //   33c9                 | mov                 dword ptr [esp + 0x48], eax
            //   e8????????           |                     

        $sequence_9 = { e8???????? 488b4c2430 ff15???????? 33d2 488d8c2460010000 e8???????? 4889442430 }
            // n = 7, score = 400
            //   e8????????           |                     
            //   488b4c2430           | mov                 dword ptr [ebp], eax
            //   ff15????????         |                     
            //   33d2                 | jmp                 0x148f
            //   488d8c2460010000     | dec                 eax
            //   e8????????           |                     
            //   4889442430           | mov                 eax, dword ptr [ebp]

    condition:
        7 of them and filesize < 4538368
}