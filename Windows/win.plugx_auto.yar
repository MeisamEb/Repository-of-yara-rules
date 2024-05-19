rule win_plugx_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-12-06"
        version = "1"
        description = "Detects win.plugx."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.plugx"
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
        $sequence_0 = { 51 56 57 6a1c 8bf8 }
            // n = 5, score = 1300
            //   51                   | push                ecx
            //   56                   | push                esi
            //   57                   | push                edi
            //   6a1c                 | push                0x1c
            //   8bf8                 | mov                 edi, eax

        $sequence_1 = { 33d2 f7f3 33d2 8945fc }
            // n = 4, score = 1300
            //   33d2                 | xor                 edx, edx
            //   f7f3                 | div                 ebx
            //   33d2                 | xor                 edx, edx
            //   8945fc               | mov                 dword ptr [ebp - 4], eax

        $sequence_2 = { 55 8bec a1???????? 83ec5c 53 }
            // n = 5, score = 1300
            //   55                   | push                ebp
            //   8bec                 | mov                 ebp, esp
            //   a1????????           |                     
            //   83ec5c               | sub                 esp, 0x5c
            //   53                   | push                ebx

        $sequence_3 = { 55 8bec 51 0fb74612 }
            // n = 4, score = 1300
            //   55                   | push                ebp
            //   8bec                 | mov                 ebp, esp
            //   51                   | push                ecx
            //   0fb74612             | movzx               eax, word ptr [esi + 0x12]

        $sequence_4 = { 51 53 6a00 6a00 6a02 ffd0 85c0 }
            // n = 7, score = 1300
            //   51                   | push                ecx
            //   53                   | push                ebx
            //   6a00                 | push                0
            //   6a00                 | push                0
            //   6a02                 | push                2
            //   ffd0                 | call                eax
            //   85c0                 | test                eax, eax

        $sequence_5 = { 41 3bca 7ce0 3bca }
            // n = 4, score = 1300
            //   41                   | inc                 ecx
            //   3bca                 | cmp                 ecx, edx
            //   7ce0                 | jl                  0xffffffe2
            //   3bca                 | cmp                 ecx, edx

        $sequence_6 = { 56 8b750c 8b4604 050070ffff }
            // n = 4, score = 1300
            //   56                   | push                esi
            //   8b750c               | mov                 esi, dword ptr [ebp + 0xc]
            //   8b4604               | mov                 eax, dword ptr [esi + 4]
            //   050070ffff           | add                 eax, 0xffff7000

        $sequence_7 = { 6a00 6800100000 6800100000 68ff000000 6a00 6803000040 }
            // n = 6, score = 1000
            //   6a00                 | push                0
            //   6800100000           | push                0x1000
            //   6800100000           | push                0x1000
            //   68ff000000           | push                0xff
            //   6a00                 | push                0
            //   6803000040           | push                0x40000003

        $sequence_8 = { e8???????? 3de5030000 7407 e8???????? }
            // n = 4, score = 900
            //   e8????????           |                     
            //   3de5030000           | cmp                 eax, 0x3e5
            //   7407                 | je                  9
            //   e8????????           |                     

        $sequence_9 = { e8???????? 85c0 7508 e8???????? 8945fc }
            // n = 5, score = 900
            //   e8????????           |                     
            //   85c0                 | test                eax, eax
            //   7508                 | jne                 0xa
            //   e8????????           |                     
            //   8945fc               | mov                 dword ptr [ebp - 4], eax

        $sequence_10 = { 50 ff15???????? a3???????? 8b4d18 }
            // n = 4, score = 900
            //   50                   | push                eax
            //   ff15????????         |                     
            //   a3????????           |                     
            //   8b4d18               | mov                 ecx, dword ptr [ebp + 0x18]

        $sequence_11 = { 85c0 7413 e8???????? 3de5030000 }
            // n = 4, score = 900
            //   85c0                 | test                eax, eax
            //   7413                 | je                  0x15
            //   e8????????           |                     
            //   3de5030000           | cmp                 eax, 0x3e5

        $sequence_12 = { e8???????? 85c0 7407 b84f050000 }
            // n = 4, score = 800
            //   e8????????           |                     
            //   85c0                 | test                eax, eax
            //   7407                 | je                  9
            //   b84f050000           | mov                 eax, 0x54f

        $sequence_13 = { e8???????? 85c0 750a e8???????? 8945fc }
            // n = 5, score = 700
            //   e8????????           |                     
            //   85c0                 | test                eax, eax
            //   750a                 | jne                 0xc
            //   e8????????           |                     
            //   8945fc               | mov                 dword ptr [ebp - 4], eax

        $sequence_14 = { 6a00 6a04 6a00 6a01 6800000040 57 }
            // n = 6, score = 700
            //   6a00                 | push                0
            //   6a04                 | push                4
            //   6a00                 | push                0
            //   6a01                 | push                1
            //   6800000040           | push                0x40000000
            //   57                   | push                edi

        $sequence_15 = { 6a00 6819000200 6a00 6a00 6a00 51 }
            // n = 6, score = 600
            //   6a00                 | push                0
            //   6819000200           | push                0x20019
            //   6a00                 | push                0
            //   6a00                 | push                0
            //   6a00                 | push                0
            //   51                   | push                ecx

        $sequence_16 = { 56 56 6a01 56 ffd0 }
            // n = 5, score = 600
            //   56                   | push                esi
            //   56                   | push                esi
            //   6a01                 | push                1
            //   56                   | push                esi
            //   ffd0                 | call                eax

        $sequence_17 = { 85c0 750d e8???????? 8945f4 }
            // n = 4, score = 600
            //   85c0                 | test                eax, eax
            //   750d                 | jne                 0xf
            //   e8????????           |                     
            //   8945f4               | mov                 dword ptr [ebp - 0xc], eax

        $sequence_18 = { 57 e8???????? eb0c e8???????? }
            // n = 4, score = 500
            //   57                   | push                edi
            //   e8????????           |                     
            //   eb0c                 | jmp                 0xe
            //   e8????????           |                     

        $sequence_19 = { 50 ff75e8 6802000080 e8???????? }
            // n = 4, score = 400
            //   50                   | push                eax
            //   ff75e8               | push                dword ptr [ebp - 0x18]
            //   6802000080           | push                0x80000002
            //   e8????????           |                     

        $sequence_20 = { 6a00 ff7028 e8???????? 83c408 85c0 }
            // n = 5, score = 400
            //   6a00                 | push                0
            //   ff7028               | push                dword ptr [eax + 0x28]
            //   e8????????           |                     
            //   83c408               | add                 esp, 8
            //   85c0                 | test                eax, eax

        $sequence_21 = { 6808020000 6a00 ff742450 e8???????? 83c40c }
            // n = 5, score = 400
            //   6808020000           | push                0x208
            //   6a00                 | push                0
            //   ff742450             | push                dword ptr [esp + 0x50]
            //   e8????????           |                     
            //   83c40c               | add                 esp, 0xc

        $sequence_22 = { 6a02 6a00 e8???????? c705????????00000000 }
            // n = 4, score = 400
            //   6a02                 | push                2
            //   6a00                 | push                0
            //   e8????????           |                     
            //   c705????????00000000     |     

        $sequence_23 = { 6800080000 68???????? e8???????? 6800080000 68???????? e8???????? }
            // n = 6, score = 400
            //   6800080000           | push                0x800
            //   68????????           |                     
            //   e8????????           |                     
            //   6800080000           | push                0x800
            //   68????????           |                     
            //   e8????????           |                     

        $sequence_24 = { 5e 5f 5b 5d c3 64a118000000 }
            // n = 6, score = 400
            //   5e                   | pop                 esi
            //   5f                   | pop                 edi
            //   5b                   | pop                 ebx
            //   5d                   | pop                 ebp
            //   c3                   | ret                 
            //   64a118000000         | mov                 eax, dword ptr fs:[0x18]

        $sequence_25 = { 81ec90010000 e8???????? e8???????? e8???????? }
            // n = 4, score = 400
            //   81ec90010000         | sub                 esp, 0x190
            //   e8????????           |                     
            //   e8????????           |                     
            //   e8????????           |                     

        $sequence_26 = { 68???????? 6830750000 68e8030000 ff36 }
            // n = 4, score = 400
            //   68????????           |                     
            //   6830750000           | push                0x7530
            //   68e8030000           | push                0x3e8
            //   ff36                 | push                dword ptr [esi]

        $sequence_27 = { 5f 5b 5d c20400 55 53 57 }
            // n = 7, score = 400
            //   5f                   | pop                 edi
            //   5b                   | pop                 ebx
            //   5d                   | pop                 ebp
            //   c20400               | ret                 4
            //   55                   | push                ebp
            //   53                   | push                ebx
            //   57                   | push                edi

        $sequence_28 = { 50 56 ffb42480000000 ff15???????? }
            // n = 4, score = 400
            //   50                   | push                eax
            //   56                   | push                esi
            //   ffb42480000000       | push                dword ptr [esp + 0x80]
            //   ff15????????         |                     

        $sequence_29 = { 6808020000 6a00 ff74242c e8???????? }
            // n = 4, score = 400
            //   6808020000           | push                0x208
            //   6a00                 | push                0
            //   ff74242c             | push                dword ptr [esp + 0x2c]
            //   e8????????           |                     

        $sequence_30 = { 6a01 6a00 e8???????? a3???????? 6800080000 }
            // n = 5, score = 400
            //   6a01                 | push                1
            //   6a00                 | push                0
            //   e8????????           |                     
            //   a3????????           |                     
            //   6800080000           | push                0x800

    condition:
        7 of them and filesize < 1284096
}