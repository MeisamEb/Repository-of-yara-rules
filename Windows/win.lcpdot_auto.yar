rule win_lcpdot_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-12-06"
        version = "1"
        description = "Detects win.lcpdot."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.lcpdot"
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
        $sequence_0 = { e9???????? c705????????01000000 e8???????? 83f801 }
            // n = 4, score = 200
            //   e9????????           |                     
            //   c705????????01000000     |     
            //   e8????????           |                     
            //   83f801               | cmp                 eax, 1

        $sequence_1 = { 85c9 0f848c000000 53 56 8b7208 }
            // n = 5, score = 100
            //   85c9                 | test                ecx, ecx
            //   0f848c000000         | je                  0x92
            //   53                   | push                ebx
            //   56                   | push                esi
            //   8b7208               | mov                 esi, dword ptr [edx + 8]

        $sequence_2 = { 6a01 52 56 8d8508feffff }
            // n = 4, score = 100
            //   6a01                 | push                1
            //   52                   | push                edx
            //   56                   | push                esi
            //   8d8508feffff         | lea                 eax, [ebp - 0x1f8]

        $sequence_3 = { e8???????? 85c0 752a 56 ff15???????? }
            // n = 5, score = 100
            //   e8????????           |                     
            //   85c0                 | test                eax, eax
            //   752a                 | jne                 0x2c
            //   56                   | push                esi
            //   ff15????????         |                     

        $sequence_4 = { ff24851e884000 838de8fdffffff 89b588fdffff 89b5bcfdffff }
            // n = 4, score = 100
            //   ff24851e884000       | jmp                 dword ptr [eax*4 + 0x40881e]
            //   838de8fdffffff       | or                  dword ptr [ebp - 0x218], 0xffffffff
            //   89b588fdffff         | mov                 dword ptr [ebp - 0x278], esi
            //   89b5bcfdffff         | mov                 dword ptr [ebp - 0x244], esi

        $sequence_5 = { 90 488b4308 4885c0 743f 488b0d???????? 488d15ad4f0100 }
            // n = 6, score = 100
            //   90                   | dec                 eax
            //   488b4308             | mov                 dword ptr [esp + 8], ecx
            //   4885c0               | dec                 eax
            //   743f                 | sub                 esp, 0x88
            //   488b0d????????       |                     
            //   488d15ad4f0100       | dec                 eax

        $sequence_6 = { ffd7 5f 5e c3 55 8bec 81ec400c0000 }
            // n = 7, score = 100
            //   ffd7                 | call                edi
            //   5f                   | pop                 edi
            //   5e                   | pop                 esi
            //   c3                   | ret                 
            //   55                   | push                ebp
            //   8bec                 | mov                 ebp, esp
            //   81ec400c0000         | sub                 esp, 0xc40

        $sequence_7 = { 8d8d14f4ffff 51 ebd8 83c320 53 8bce e8???????? }
            // n = 7, score = 100
            //   8d8d14f4ffff         | lea                 ecx, [ebp - 0xbec]
            //   51                   | push                ecx
            //   ebd8                 | jmp                 0xffffffda
            //   83c320               | add                 ebx, 0x20
            //   53                   | push                ebx
            //   8bce                 | mov                 ecx, esi
            //   e8????????           |                     

        $sequence_8 = { 8b11 8b4228 53 ffd0 33c0 8d55e0 }
            // n = 6, score = 100
            //   8b11                 | mov                 edx, dword ptr [ecx]
            //   8b4228               | mov                 eax, dword ptr [edx + 0x28]
            //   53                   | push                ebx
            //   ffd0                 | call                eax
            //   33c0                 | xor                 eax, eax
            //   8d55e0               | lea                 edx, [ebp - 0x20]

        $sequence_9 = { 85c0 0f8514010000 4c8d2d0a2f0100 41b804010000 }
            // n = 4, score = 100
            //   85c0                 | jne                 0x1b
            //   0f8514010000         | test                eax, eax
            //   4c8d2d0a2f0100       | jne                 0x11a
            //   41b804010000         | dec                 esp

        $sequence_10 = { 488d4c2430 e8???????? b920080000 e8???????? }
            // n = 4, score = 100
            //   488d4c2430           | jmp                 0x17
            //   e8????????           |                     
            //   b920080000           | dec                 eax
            //   e8????????           |                     

        $sequence_11 = { 48894c2408 4881ec88000000 488d0df54d0100 ff15???????? }
            // n = 4, score = 100
            //   48894c2408           | lea                 ebp, [0x12f0a]
            //   4881ec88000000       | inc                 ecx
            //   488d0df54d0100       | mov                 eax, 0x104
            //   ff15????????         |                     

        $sequence_12 = { 488bd9 894110 bf04000000 3daa55aa55 7519 }
            // n = 5, score = 100
            //   488bd9               | dec                 eax
            //   894110               | mov                 ebx, ecx
            //   bf04000000           | mov                 dword ptr [ecx + 0x10], eax
            //   3daa55aa55           | mov                 edi, 4
            //   7519                 | cmp                 eax, 0x55aa55aa

        $sequence_13 = { 7409 488bcf ff15???????? 33c0 488b9c2470040000 488b8c2440040000 4833cc }
            // n = 7, score = 100
            //   7409                 | dec                 eax
            //   488bcf               | lea                 edx, [0x14fad]
            //   ff15????????         |                     
            //   33c0                 | dec                 eax
            //   488b9c2470040000     | lea                 ebx, [0xde23]
            //   488b8c2440040000     | dec                 eax
            //   4833cc               | lea                 edi, [0xde24]

        $sequence_14 = { 488d1d23de0000 488d3d24de0000 eb0e 488b03 4885c0 7402 ffd0 }
            // n = 7, score = 100
            //   488d1d23de0000       | lea                 ecx, [0x14df5]
            //   488d3d24de0000       | nop                 
            //   eb0e                 | dec                 eax
            //   488b03               | mov                 eax, dword ptr [ebx + 8]
            //   4885c0               | dec                 eax
            //   7402                 | test                eax, eax
            //   ffd0                 | je                  0x48

    condition:
        7 of them and filesize < 257024
}