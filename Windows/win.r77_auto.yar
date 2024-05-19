rule win_r77_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-12-06"
        version = "1"
        description = "Detects win.r77."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.r77"
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
        $sequence_0 = { 740c 8b4f0c e8???????? 85c0 }
            // n = 4, score = 200
            //   740c                 | je                  0xe
            //   8b4f0c               | mov                 ecx, dword ptr [edi + 0xc]
            //   e8????????           |                     
            //   85c0                 | test                eax, eax

        $sequence_1 = { 740b 8b0f e8???????? 85c0 }
            // n = 4, score = 200
            //   740b                 | je                  0xd
            //   8b0f                 | mov                 ecx, dword ptr [edi]
            //   e8????????           |                     
            //   85c0                 | test                eax, eax

        $sequence_2 = { 33c9 4c8d05e3d40000 488d15e4d40000 e8???????? 4885c0 740f }
            // n = 6, score = 100
            //   33c9                 | dec                 eax
            //   4c8d05e3d40000       | mov                 eax, dword ptr [ebp - 0x20]
            //   488d15e4d40000       | dec                 eax
            //   e8????????           |                     
            //   4885c0               | shr                 eax, 0x20
            //   740f                 | test                eax, eax

        $sequence_3 = { 0f8517030000 488d0d58ad0100 ff15???????? 4885c0 7412 }
            // n = 5, score = 100
            //   0f8517030000         | jne                 0x61
            //   488d0d58ad0100       | mov                 eax, dword ptr [ebp - 0x20]
            //   ff15????????         |                     
            //   4885c0               | xor                 ecx, ecx
            //   7412                 | dec                 esp

        $sequence_4 = { 4c8d058bfb0000 488b45e0 48c1e820 85c0 755d 8b45e0 }
            // n = 6, score = 100
            //   4c8d058bfb0000       | dec                 eax
            //   488b45e0             | lea                 edx, [0xa7e3]
            //   48c1e820             | dec                 eax
            //   85c0                 | lea                 ecx, [0xa7bc]
            //   755d                 | dec                 esp
            //   8b45e0               | lea                 eax, [0xfb8b]

        $sequence_5 = { 33d2 660f1344243c 33c9 e8???????? 59 }
            // n = 5, score = 100
            //   33d2                 | mov                 ebx, dword ptr [esp + 0x50]
            //   660f1344243c         | dec                 eax
            //   33c9                 | mov                 ebp, dword ptr [esp + 0x58]
            //   e8????????           |                     
            //   59                   | dec                 eax

        $sequence_6 = { f7d8 1bc0 40 85c0 750b 46 3b37 }
            // n = 7, score = 100
            //   f7d8                 | test                byte ptr [eax + ecx + 0x28], 1
            //   1bc0                 | je                  0x30
            //   40                   | lea                 eax, [ebp + 8]
            //   85c0                 | mov                 dword ptr [ebp - 8], esi
            //   750b                 | xor                 edx, edx
            //   46                   | movlpd              qword ptr [esp + 0x3c], xmm0
            //   3b37                 | xor                 ecx, ecx

        $sequence_7 = { c1fa06 6bc838 8b0495f8a00110 f644082801 7422 8d4508 8975f8 }
            // n = 7, score = 100
            //   c1fa06               | dec                 eax
            //   6bc838               | test                edi, edi
            //   8b0495f8a00110       | jmp                 0xc
            //   f644082801           | dec                 ebp
            //   7422                 | xchg                dword ptr [edi + edi*8 + 0x22228], esi
            //   8d4508               | xor                 eax, eax
            //   8975f8               | dec                 eax

        $sequence_8 = { 745c ffc1 413bc8 72f1 4885ff }
            // n = 5, score = 100
            //   745c                 | lea                 eax, [0xd4e3]
            //   ffc1                 | dec                 eax
            //   413bc8               | lea                 edx, [0xd4e4]
            //   72f1                 | dec                 eax
            //   4885ff               | test                eax, eax

        $sequence_9 = { 660f58e0 660fc5c400 25f0070000 660f28a050680110 660f28b840640110 660f54f0 660f5cc6 }
            // n = 7, score = 100
            //   660f58e0             | test                eax, eax
            //   660fc5c400           | je                  0xd
            //   25f0070000           | mov                 ecx, dword ptr [edi]
            //   660f28a050680110     | test                eax, eax
            //   660f28b840640110     | sar                 edx, 6
            //   660f54f0             | imul                ecx, eax, 0x38
            //   660f5cc6             | mov                 eax, dword ptr [edx*4 + 0x1001a0f8]

        $sequence_10 = { 7408 8b442430 8bc8 cd29 488d0df6980100 }
            // n = 5, score = 100
            //   7408                 | je                  0xa
            //   8b442430             | mov                 eax, dword ptr [esp + 0x30]
            //   8bc8                 | mov                 ecx, eax
            //   cd29                 | int                 0x29
            //   488d0df6980100       | dec                 eax

        $sequence_11 = { 03f3 03c3 894508 833e00 7447 8b7df0 8b08 }
            // n = 7, score = 100
            //   03f3                 | pop                 ecx
            //   03c3                 | xor                 eax, eax
            //   894508               | ret                 
            //   833e00               | push                esi
            //   7447                 | addpd               xmm4, xmm0
            //   8b7df0               | pextrw              eax, xmm4, 0
            //   8b08                 | and                 eax, 0x7f0

        $sequence_12 = { 488b03 833800 7513 488d15e3a70000 488d0dbca70000 }
            // n = 5, score = 100
            //   488b03               | lea                 ecx, [0x198f6]
            //   833800               | dec                 eax
            //   7513                 | mov                 eax, dword ptr [ebx]
            //   488d15e3a70000       | cmp                 dword ptr [eax], 0
            //   488d0dbca70000       | jne                 0x15

        $sequence_13 = { 33c0 c3 56 e8???????? ff15???????? }
            // n = 5, score = 100
            //   33c0                 | mov                 esi, dword ptr [esp + 0x60]
            //   c3                   | je                  0xe
            //   56                   | mov                 ecx, dword ptr [edi + 0xc]
            //   e8????????           |                     
            //   ff15????????         |                     

    condition:
        7 of them and filesize < 350208
}