rule win_unidentified_074_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-12-06"
        version = "1"
        description = "Detects win.unidentified_074."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.unidentified_074"
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
        $sequence_0 = { 50 ffb578dfffff e8???????? 33c0 c7858cdfffff07000000 c78588dfffff00000000 66898578dfffff }
            // n = 7, score = 200
            //   50                   | push                eax
            //   ffb578dfffff         | push                dword ptr [ebp - 0x2088]
            //   e8????????           |                     
            //   33c0                 | xor                 eax, eax
            //   c7858cdfffff07000000     | mov    dword ptr [ebp - 0x2074], 7
            //   c78588dfffff00000000     | mov    dword ptr [ebp - 0x2078], 0
            //   66898578dfffff       | mov                 word ptr [ebp - 0x2088], ax

        $sequence_1 = { 50 e8???????? 6aff 6a01 83ec08 c745fc00000000 8d4dd8 }
            // n = 7, score = 200
            //   50                   | push                eax
            //   e8????????           |                     
            //   6aff                 | push                -1
            //   6a01                 | push                1
            //   83ec08               | sub                 esp, 8
            //   c745fc00000000       | mov                 dword ptr [ebp - 4], 0
            //   8d4dd8               | lea                 ecx, [ebp - 0x28]

        $sequence_2 = { 3bc1 7432 8b4d08 8d041e 8a0408 3a02 7516 }
            // n = 7, score = 200
            //   3bc1                 | cmp                 eax, ecx
            //   7432                 | je                  0x34
            //   8b4d08               | mov                 ecx, dword ptr [ebp + 8]
            //   8d041e               | lea                 eax, [esi + ebx]
            //   8a0408               | mov                 al, byte ptr [eax + ecx]
            //   3a02                 | cmp                 al, byte ptr [edx]
            //   7516                 | jne                 0x18

        $sequence_3 = { 50 ff15???????? 8bf0 85f6 0f84c4010000 837f1000 }
            // n = 6, score = 200
            //   50                   | push                eax
            //   ff15????????         |                     
            //   8bf0                 | mov                 esi, eax
            //   85f6                 | test                esi, esi
            //   0f84c4010000         | je                  0x1ca
            //   837f1000             | cmp                 dword ptr [edi + 0x10], 0

        $sequence_4 = { 50 899d6cdfffff c78568dfffff00000000 660fd645e4 e8???????? }
            // n = 5, score = 200
            //   50                   | push                eax
            //   899d6cdfffff         | mov                 dword ptr [ebp - 0x2094], ebx
            //   c78568dfffff00000000     | mov    dword ptr [ebp - 0x2098], 0
            //   660fd645e4           | movq                qword ptr [ebp - 0x1c], xmm0
            //   e8????????           |                     

        $sequence_5 = { c78524e7ffff07000000 66898510e7ffff 8d85f8e6ffff 50 8d8540e7ffff c78520e7ffff00000000 50 }
            // n = 7, score = 200
            //   c78524e7ffff07000000     | mov    dword ptr [ebp - 0x18dc], 7
            //   66898510e7ffff       | mov                 word ptr [ebp - 0x18f0], ax
            //   8d85f8e6ffff         | lea                 eax, [ebp - 0x1908]
            //   50                   | push                eax
            //   8d8540e7ffff         | lea                 eax, [ebp - 0x18c0]
            //   c78520e7ffff00000000     | mov    dword ptr [ebp - 0x18e0], 0
            //   50                   | push                eax

        $sequence_6 = { 8d4e01 8a06 46 84c0 75f9 8d4588 }
            // n = 6, score = 200
            //   8d4e01               | lea                 ecx, [esi + 1]
            //   8a06                 | mov                 al, byte ptr [esi]
            //   46                   | inc                 esi
            //   84c0                 | test                al, al
            //   75f9                 | jne                 0xfffffffb
            //   8d4588               | lea                 eax, [ebp - 0x78]

        $sequence_7 = { e8???????? 83c40c 019dc4feffff 8b85c4feffff }
            // n = 4, score = 200
            //   e8????????           |                     
            //   83c40c               | add                 esp, 0xc
            //   019dc4feffff         | add                 dword ptr [ebp - 0x13c], ebx
            //   8b85c4feffff         | mov                 eax, dword ptr [ebp - 0x13c]

        $sequence_8 = { 83ec08 8845f0 8d45f0 50 e8???????? 884435e8 }
            // n = 6, score = 200
            //   83ec08               | sub                 esp, 8
            //   8845f0               | mov                 byte ptr [ebp - 0x10], al
            //   8d45f0               | lea                 eax, [ebp - 0x10]
            //   50                   | push                eax
            //   e8????????           |                     
            //   884435e8             | mov                 byte ptr [ebp + esi - 0x18], al

        $sequence_9 = { 8d8d70e7ffff 6a12 33c0 c78584e7ffff07000000 }
            // n = 4, score = 200
            //   8d8d70e7ffff         | lea                 ecx, [ebp - 0x1890]
            //   6a12                 | push                0x12
            //   33c0                 | xor                 eax, eax
            //   c78584e7ffff07000000     | mov    dword ptr [ebp - 0x187c], 7

    condition:
        7 of them and filesize < 335872
}