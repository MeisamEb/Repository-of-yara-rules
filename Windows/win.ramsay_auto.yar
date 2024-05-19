rule win_ramsay_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-12-06"
        version = "1"
        description = "Detects win.ramsay."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.ramsay"
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
        $sequence_0 = { 85c0 7514 ff15???????? 83f820 }
            // n = 4, score = 600
            //   85c0                 | test                eax, eax
            //   7514                 | jne                 0x16
            //   ff15????????         |                     
            //   83f820               | cmp                 eax, 0x20

        $sequence_1 = { 83f820 7502 eb07 33c0 e9???????? }
            // n = 5, score = 600
            //   83f820               | cmp                 eax, 0x20
            //   7502                 | jne                 4
            //   eb07                 | jmp                 9
            //   33c0                 | xor                 eax, eax
            //   e9????????           |                     

        $sequence_2 = { ff15???????? 85c0 7502 eb02 ebb1 }
            // n = 5, score = 600
            //   ff15????????         |                     
            //   85c0                 | test                eax, eax
            //   7502                 | jne                 4
            //   eb02                 | jmp                 4
            //   ebb1                 | jmp                 0xffffffb3

        $sequence_3 = { 83c201 8955f8 837df808 731e 8b45f8 }
            // n = 5, score = 500
            //   83c201               | add                 edx, 1
            //   8955f8               | mov                 dword ptr [ebp - 8], edx
            //   837df808             | cmp                 dword ptr [ebp - 8], 8
            //   731e                 | jae                 0x20
            //   8b45f8               | mov                 eax, dword ptr [ebp - 8]

        $sequence_4 = { 894df1 884df5 c745ec00000000 6a06 8d55f0 52 }
            // n = 6, score = 500
            //   894df1               | mov                 dword ptr [ebp - 0xf], ecx
            //   884df5               | mov                 byte ptr [ebp - 0xb], cl
            //   c745ec00000000       | mov                 dword ptr [ebp - 0x14], 0
            //   6a06                 | push                6
            //   8d55f0               | lea                 edx, [ebp - 0x10]
            //   52                   | push                edx

        $sequence_5 = { 83c404 8945f8 8b4d08 83c101 51 6a00 8b55f8 }
            // n = 7, score = 500
            //   83c404               | add                 esp, 4
            //   8945f8               | mov                 dword ptr [ebp - 8], eax
            //   8b4d08               | mov                 ecx, dword ptr [ebp + 8]
            //   83c101               | add                 ecx, 1
            //   51                   | push                ecx
            //   6a00                 | push                0
            //   8b55f8               | mov                 edx, dword ptr [ebp - 8]

        $sequence_6 = { 8b02 ba02000000 f7e2 0f90c1 f7d9 }
            // n = 5, score = 500
            //   8b02                 | mov                 eax, dword ptr [edx]
            //   ba02000000           | mov                 edx, 2
            //   f7e2                 | mul                 edx
            //   0f90c1               | seto                cl
            //   f7d9                 | neg                 ecx

        $sequence_7 = { 8945f8 837df8ff 7507 33c0 e9???????? 6a00 8b4df8 }
            // n = 7, score = 500
            //   8945f8               | mov                 dword ptr [ebp - 8], eax
            //   837df8ff             | cmp                 dword ptr [ebp - 8], -1
            //   7507                 | jne                 9
            //   33c0                 | xor                 eax, eax
            //   e9????????           |                     
            //   6a00                 | push                0
            //   8b4df8               | mov                 ecx, dword ptr [ebp - 8]

        $sequence_8 = { 8a481c 884a15 8b5508 8b4508 }
            // n = 4, score = 500
            //   8a481c               | mov                 cl, byte ptr [eax + 0x1c]
            //   884a15               | mov                 byte ptr [edx + 0x15], cl
            //   8b5508               | mov                 edx, dword ptr [ebp + 8]
            //   8b4508               | mov                 eax, dword ptr [ebp + 8]

        $sequence_9 = { 3b4d08 732c e8???????? 33d2 b93e000000 }
            // n = 5, score = 500
            //   3b4d08               | cmp                 ecx, dword ptr [ebp + 8]
            //   732c                 | jae                 0x2e
            //   e8????????           |                     
            //   33d2                 | xor                 edx, edx
            //   b93e000000           | mov                 ecx, 0x3e

        $sequence_10 = { ff15???????? 85c0 751a 8b4df8 51 }
            // n = 5, score = 500
            //   ff15????????         |                     
            //   85c0                 | test                eax, eax
            //   751a                 | jne                 0x1c
            //   8b4df8               | mov                 ecx, dword ptr [ebp - 8]
            //   51                   | push                ecx

        $sequence_11 = { ff15???????? 33c0 e9???????? e8???????? 85c0 7507 33c0 }
            // n = 7, score = 400
            //   ff15????????         |                     
            //   33c0                 | xor                 eax, eax
            //   e9????????           |                     
            //   e8????????           |                     
            //   85c0                 | test                eax, eax
            //   7507                 | jne                 9
            //   33c0                 | xor                 eax, eax

        $sequence_12 = { e8???????? eb2b 83f8ff 7526 4c8d253b490100 }
            // n = 5, score = 200
            //   e8????????           |                     
            //   eb2b                 | inc                 ebp
            //   83f8ff               | xor                 eax, eax
            //   7526                 | xor                 edx, edx
            //   4c8d253b490100       | jmp                 0x2d

        $sequence_13 = { e8???????? eb20 488d542470 488d0d1afa0100 e8???????? 4533c0 33d2 }
            // n = 7, score = 200
            //   e8????????           |                     
            //   eb20                 | jmp                 0x22
            //   488d542470           | dec                 eax
            //   488d0d1afa0100       | lea                 edx, [esp + 0x70]
            //   e8????????           |                     
            //   4533c0               | dec                 eax
            //   33d2                 | lea                 ecx, [0x1fa1a]

        $sequence_14 = { e8???????? eb2d 4863442468 488b4c2458 }
            // n = 4, score = 200
            //   e8????????           |                     
            //   eb2d                 | jmp                 0x2d
            //   4863442468           | cmp                 eax, -1
            //   488b4c2458           | jne                 0x2b

        $sequence_15 = { e8???????? eb31 488b8c2428110000 e8???????? }
            // n = 4, score = 200
            //   e8????????           |                     
            //   eb31                 | movzx               eax, byte ptr [ecx + eax]
            //   488b8c2428110000     | jmp                 0x2f
            //   e8????????           |                     

    condition:
        7 of them and filesize < 2031616
}