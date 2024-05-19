rule win_metastealer_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-12-06"
        version = "1"
        description = "Detects win.metastealer."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.metastealer"
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
        $sequence_0 = { ff7710 50 e8???????? 8b4718 8d4b1c 894318 8d471c }
            // n = 7, score = 200
            //   ff7710               | push                dword ptr [edi + 0x10]
            //   50                   | push                eax
            //   e8????????           |                     
            //   8b4718               | mov                 eax, dword ptr [edi + 0x18]
            //   8d4b1c               | lea                 ecx, [ebx + 0x1c]
            //   894318               | mov                 dword ptr [ebx + 0x18], eax
            //   8d471c               | lea                 eax, [edi + 0x1c]

        $sequence_1 = { 8b4220 894620 8d4228 894224 897a20 c70700000000 8bc6 }
            // n = 7, score = 200
            //   8b4220               | mov                 eax, dword ptr [edx + 0x20]
            //   894620               | mov                 dword ptr [esi + 0x20], eax
            //   8d4228               | lea                 eax, [edx + 0x28]
            //   894224               | mov                 dword ptr [edx + 0x24], eax
            //   897a20               | mov                 dword ptr [edx + 0x20], edi
            //   c70700000000         | mov                 dword ptr [edi], 0
            //   8bc6                 | mov                 eax, esi

        $sequence_2 = { 8d4dd8 e8???????? c745fc00000000 8d45d8 68a3000000 68???????? 68???????? }
            // n = 7, score = 200
            //   8d4dd8               | lea                 ecx, [ebp - 0x28]
            //   e8????????           |                     
            //   c745fc00000000       | mov                 dword ptr [ebp - 4], 0
            //   8d45d8               | lea                 eax, [ebp - 0x28]
            //   68a3000000           | push                0xa3
            //   68????????           |                     
            //   68????????           |                     

        $sequence_3 = { 8b4104 894610 8b4104 8b400c 85c0 740c 89460c }
            // n = 7, score = 200
            //   8b4104               | mov                 eax, dword ptr [ecx + 4]
            //   894610               | mov                 dword ptr [esi + 0x10], eax
            //   8b4104               | mov                 eax, dword ptr [ecx + 4]
            //   8b400c               | mov                 eax, dword ptr [eax + 0xc]
            //   85c0                 | test                eax, eax
            //   740c                 | je                  0xe
            //   89460c               | mov                 dword ptr [esi + 0xc], eax

        $sequence_4 = { eb0a c70600000000 c6460401 8a45ae 8b7d9c 8845af 660f1f440000 }
            // n = 7, score = 200
            //   eb0a                 | jmp                 0xc
            //   c70600000000         | mov                 dword ptr [esi], 0
            //   c6460401             | mov                 byte ptr [esi + 4], 1
            //   8a45ae               | mov                 al, byte ptr [ebp - 0x52]
            //   8b7d9c               | mov                 edi, dword ptr [ebp - 0x64]
            //   8845af               | mov                 byte ptr [ebp - 0x51], al
            //   660f1f440000         | nop                 word ptr [eax + eax]

        $sequence_5 = { eb0e 0f57c0 660f1345d4 8b7dd8 8b75d4 51 8d4dd4 }
            // n = 7, score = 200
            //   eb0e                 | jmp                 0x10
            //   0f57c0               | xorps               xmm0, xmm0
            //   660f1345d4           | movlpd              qword ptr [ebp - 0x2c], xmm0
            //   8b7dd8               | mov                 edi, dword ptr [ebp - 0x28]
            //   8b75d4               | mov                 esi, dword ptr [ebp - 0x2c]
            //   51                   | push                ecx
            //   8d4dd4               | lea                 ecx, [ebp - 0x2c]

        $sequence_6 = { ff7314 68???????? 56 e8???????? 68???????? 56 e8???????? }
            // n = 7, score = 200
            //   ff7314               | push                dword ptr [ebx + 0x14]
            //   68????????           |                     
            //   56                   | push                esi
            //   e8????????           |                     
            //   68????????           |                     
            //   56                   | push                esi
            //   e8????????           |                     

        $sequence_7 = { ffd0 83c40c 85c0 7407 be01000000 eb02 33f6 }
            // n = 7, score = 200
            //   ffd0                 | call                eax
            //   83c40c               | add                 esp, 0xc
            //   85c0                 | test                eax, eax
            //   7407                 | je                  9
            //   be01000000           | mov                 esi, 1
            //   eb02                 | jmp                 4
            //   33f6                 | xor                 esi, esi

        $sequence_8 = { d945fc 5e 8be5 5d c3 8d8100000038 0bc6 }
            // n = 7, score = 200
            //   d945fc               | fld                 dword ptr [ebp - 4]
            //   5e                   | pop                 esi
            //   8be5                 | mov                 esp, ebp
            //   5d                   | pop                 ebp
            //   c3                   | ret                 
            //   8d8100000038         | lea                 eax, [ecx + 0x38000000]
            //   0bc6                 | or                  eax, esi

        $sequence_9 = { c7411000000000 c7411400000000 837e1408 8975d0 7205 8b16 8955d0 }
            // n = 7, score = 200
            //   c7411000000000       | mov                 dword ptr [ecx + 0x10], 0
            //   c7411400000000       | mov                 dword ptr [ecx + 0x14], 0
            //   837e1408             | cmp                 dword ptr [esi + 0x14], 8
            //   8975d0               | mov                 dword ptr [ebp - 0x30], esi
            //   7205                 | jb                  7
            //   8b16                 | mov                 edx, dword ptr [esi]
            //   8955d0               | mov                 dword ptr [ebp - 0x30], edx

    condition:
        7 of them and filesize < 26230784
}