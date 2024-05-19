rule win_flusihoc_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-12-06"
        version = "1"
        description = "Detects win.flusihoc."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.flusihoc"
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
        $sequence_0 = { 8bec 83e4f8 81ece40b0000 a1???????? }
            // n = 4, score = 400
            //   8bec                 | mov                 ebp, esp
            //   83e4f8               | and                 esp, 0xfffffff8
            //   81ece40b0000         | sub                 esp, 0xbe4
            //   a1????????           |                     

        $sequence_1 = { 53 56 57 6a40 8d442428 6a00 50 }
            // n = 7, score = 400
            //   53                   | push                ebx
            //   56                   | push                esi
            //   57                   | push                edi
            //   6a40                 | push                0x40
            //   8d442428             | lea                 eax, [esp + 0x28]
            //   6a00                 | push                0
            //   50                   | push                eax

        $sequence_2 = { 50 f3a5 c684246402000000 e8???????? }
            // n = 4, score = 400
            //   50                   | push                eax
            //   f3a5                 | rep movsd           dword ptr es:[edi], dword ptr [esi]
            //   c684246402000000     | mov                 byte ptr [esp + 0x264], 0
            //   e8????????           |                     

        $sequence_3 = { a1???????? 33c4 89842450160000 53 56 8b7508 57 }
            // n = 7, score = 400
            //   a1????????           |                     
            //   33c4                 | xor                 eax, esp
            //   89842450160000       | mov                 dword ptr [esp + 0x1650], eax
            //   53                   | push                ebx
            //   56                   | push                esi
            //   8b7508               | mov                 esi, dword ptr [ebp + 8]
            //   57                   | push                edi

        $sequence_4 = { 52 ffd6 6a0a ff15???????? }
            // n = 4, score = 400
            //   52                   | push                edx
            //   ffd6                 | call                esi
            //   6a0a                 | push                0xa
            //   ff15????????         |                     

        $sequence_5 = { 7507 80864d01000004 83f822 7506 }
            // n = 4, score = 400
            //   7507                 | jne                 9
            //   80864d01000004       | add                 byte ptr [esi + 0x14d], 4
            //   83f822               | cmp                 eax, 0x22
            //   7506                 | jne                 8

        $sequence_6 = { ffd3 8b442410 6aff 50 ff15???????? }
            // n = 5, score = 400
            //   ffd3                 | call                ebx
            //   8b442410             | mov                 eax, dword ptr [esp + 0x10]
            //   6aff                 | push                -1
            //   50                   | push                eax
            //   ff15????????         |                     

        $sequence_7 = { 50 f3a5 c684246401000000 e8???????? 83c40c }
            // n = 5, score = 400
            //   50                   | push                eax
            //   f3a5                 | rep movsd           dword ptr es:[edi], dword ptr [esi]
            //   c684246401000000     | mov                 byte ptr [esp + 0x164], 0
            //   e8????????           |                     
            //   83c40c               | add                 esp, 0xc

        $sequence_8 = { 6a00 50 c744242c44000000 e8???????? }
            // n = 4, score = 400
            //   6a00                 | push                0
            //   50                   | push                eax
            //   c744242c44000000     | mov                 dword ptr [esp + 0x2c], 0x44
            //   e8????????           |                     

        $sequence_9 = { 83f822 7506 fe8e42010000 3d14010000 7506 }
            // n = 5, score = 400
            //   83f822               | cmp                 eax, 0x22
            //   7506                 | jne                 8
            //   fe8e42010000         | dec                 byte ptr [esi + 0x142]
            //   3d14010000           | cmp                 eax, 0x114
            //   7506                 | jne                 8

        $sequence_10 = { 8b8c245c160000 5f 5e 5b 33cc 33c0 e8???????? }
            // n = 7, score = 400
            //   8b8c245c160000       | mov                 ecx, dword ptr [esp + 0x165c]
            //   5f                   | pop                 edi
            //   5e                   | pop                 esi
            //   5b                   | pop                 ebx
            //   33cc                 | xor                 ecx, esp
            //   33c0                 | xor                 eax, eax
            //   e8????????           |                     

        $sequence_11 = { ff15???????? 8b4c2410 51 ffd6 8b542414 52 ffd6 }
            // n = 7, score = 400
            //   ff15????????         |                     
            //   8b4c2410             | mov                 ecx, dword ptr [esp + 0x10]
            //   51                   | push                ecx
            //   ffd6                 | call                esi
            //   8b542414             | mov                 edx, dword ptr [esp + 0x14]
            //   52                   | push                edx
            //   ffd6                 | call                esi

        $sequence_12 = { 3d68010000 7505 fe06 fe4e17 83f834 7503 fe4e18 }
            // n = 7, score = 400
            //   3d68010000           | cmp                 eax, 0x168
            //   7505                 | jne                 7
            //   fe06                 | inc                 byte ptr [esi]
            //   fe4e17               | dec                 byte ptr [esi + 0x17]
            //   83f834               | cmp                 eax, 0x34
            //   7503                 | jne                 5
            //   fe4e18               | dec                 byte ptr [esi + 0x18]

        $sequence_13 = { 51 6a00 ff15???????? 8d95f4feffff 52 6806000200 }
            // n = 6, score = 200
            //   51                   | push                ecx
            //   6a00                 | push                0
            //   ff15????????         |                     
            //   8d95f4feffff         | lea                 edx, [ebp - 0x10c]
            //   52                   | push                edx
            //   6806000200           | push                0x20006

        $sequence_14 = { 6804010000 8d85f8feffff 50 6a01 }
            // n = 4, score = 200
            //   6804010000           | push                0x104
            //   8d85f8feffff         | lea                 eax, [ebp - 0x108]
            //   50                   | push                eax
            //   6a01                 | push                1

        $sequence_15 = { 68???????? 6802000080 ff15???????? 85c0 752f 8b8df4feffff }
            // n = 6, score = 200
            //   68????????           |                     
            //   6802000080           | push                0x80000002
            //   ff15????????         |                     
            //   85c0                 | test                eax, eax
            //   752f                 | jne                 0x31
            //   8b8df4feffff         | mov                 ecx, dword ptr [ebp - 0x10c]

    condition:
        7 of them and filesize < 319488
}