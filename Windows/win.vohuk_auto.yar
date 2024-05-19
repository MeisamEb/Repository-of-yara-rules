rule win_vohuk_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-12-06"
        version = "1"
        description = "Detects win.vohuk."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.vohuk"
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
        $sequence_0 = { ff35???????? 8d45ba 50 e8???????? 83c408 e9???????? c745b48f00a000 }
            // n = 7, score = 100
            //   ff35????????         |                     
            //   8d45ba               | lea                 eax, [ebp - 0x46]
            //   50                   | push                eax
            //   e8????????           |                     
            //   83c408               | add                 esp, 8
            //   e9????????           |                     
            //   c745b48f00a000       | mov                 dword ptr [ebp - 0x4c], 0xa0008f

        $sequence_1 = { e8???????? c7451850000000 837d1800 7e20 33c9 8a840df4f9ffff 8d4901 }
            // n = 7, score = 100
            //   e8????????           |                     
            //   c7451850000000       | mov                 dword ptr [ebp + 0x18], 0x50
            //   837d1800             | cmp                 dword ptr [ebp + 0x18], 0
            //   7e20                 | jle                 0x22
            //   33c9                 | xor                 ecx, ecx
            //   8a840df4f9ffff       | mov                 al, byte ptr [ebp + ecx - 0x60c]
            //   8d4901               | lea                 ecx, [ecx + 1]

        $sequence_2 = { 50 ff15???????? a3???????? 33f6 b818000000 c745b245007d00 c745b666006300 }
            // n = 7, score = 100
            //   50                   | push                eax
            //   ff15????????         |                     
            //   a3????????           |                     
            //   33f6                 | xor                 esi, esi
            //   b818000000           | mov                 eax, 0x18
            //   c745b245007d00       | mov                 dword ptr [ebp - 0x4e], 0x7d0045
            //   c745b666006300       | mov                 dword ptr [ebp - 0x4a], 0x630066

        $sequence_3 = { a3???????? c745b6b700b400 c745bab100fb00 c745be82009e00 c745c2f800f400 c745c6e400fb00 c745caf900b100 }
            // n = 7, score = 100
            //   a3????????           |                     
            //   c745b6b700b400       | mov                 dword ptr [ebp - 0x4a], 0xb400b7
            //   c745bab100fb00       | mov                 dword ptr [ebp - 0x46], 0xfb00b1
            //   c745be82009e00       | mov                 dword ptr [ebp - 0x42], 0x9e0082
            //   c745c2f800f400       | mov                 dword ptr [ebp - 0x3e], 0xf400f8
            //   c745c6e400fb00       | mov                 dword ptr [ebp - 0x3a], 0xfb00e4
            //   c745caf900b100       | mov                 dword ptr [ebp - 0x36], 0xb100f9

        $sequence_4 = { 8b0d???????? bac1655634 8b75f8 6892000000 e8???????? 8d4d94 51 }
            // n = 7, score = 100
            //   8b0d????????         |                     
            //   bac1655634           | mov                 edx, 0x345665c1
            //   8b75f8               | mov                 esi, dword ptr [ebp - 8]
            //   6892000000           | push                0x92
            //   e8????????           |                     
            //   8d4d94               | lea                 ecx, [ebp - 0x6c]
            //   51                   | push                ecx

        $sequence_5 = { 33c9 8d4900 8a840d48e6ffff 8d4901 88840d57ffffff 8b45fc 48 }
            // n = 7, score = 100
            //   33c9                 | xor                 ecx, ecx
            //   8d4900               | lea                 ecx, [ecx]
            //   8a840d48e6ffff       | mov                 al, byte ptr [ebp + ecx - 0x19b8]
            //   8d4901               | lea                 ecx, [ecx + 1]
            //   88840d57ffffff       | mov                 byte ptr [ebp + ecx - 0xa9], al
            //   8b45fc               | mov                 eax, dword ptr [ebp - 4]
            //   48                   | dec                 eax

        $sequence_6 = { 85c0 7413 8b4b14 c6431c00 e8???????? 5f 5e }
            // n = 7, score = 100
            //   85c0                 | test                eax, eax
            //   7413                 | je                  0x15
            //   8b4b14               | mov                 ecx, dword ptr [ebx + 0x14]
            //   c6431c00             | mov                 byte ptr [ebx + 0x1c], 0
            //   e8????????           |                     
            //   5f                   | pop                 edi
            //   5e                   | pop                 esi

        $sequence_7 = { 88840d57ffffff 8b45fc 48 8945fc 837dfc00 7fe2 8d85d8fcffff }
            // n = 7, score = 100
            //   88840d57ffffff       | mov                 byte ptr [ebp + ecx - 0xa9], al
            //   8b45fc               | mov                 eax, dword ptr [ebp - 4]
            //   48                   | dec                 eax
            //   8945fc               | mov                 dword ptr [ebp - 4], eax
            //   837dfc00             | cmp                 dword ptr [ebp - 4], 0
            //   7fe2                 | jg                  0xffffffe4
            //   8d85d8fcffff         | lea                 eax, [ebp - 0x328]

        $sequence_8 = { 8d45f2 803d????????01 8945dc 8d45ea 7403 }
            // n = 5, score = 100
            //   8d45f2               | lea                 eax, [ebp - 0xe]
            //   803d????????01       |                     
            //   8945dc               | mov                 dword ptr [ebp - 0x24], eax
            //   8d45ea               | lea                 eax, [ebp - 0x16]
            //   7403                 | je                  5

        $sequence_9 = { c5fe6f4580 c4e37d4645a031 c5fe7f8080000000 c5fe6f85e0feffff c4e37d468500ffffff31 c5fe7f80a0000000 }
            // n = 6, score = 100
            //   c5fe6f4580           | vmovdqu             ymm0, ymmword ptr [ebp - 0x80]
            //   c4e37d4645a031       | vperm2i128          ymm0, ymm0, ymmword ptr [ebp - 0x60], 0x31
            //   c5fe7f8080000000     | vmovdqu             ymmword ptr [eax + 0x80], ymm0
            //   c5fe6f85e0feffff     | vmovdqu             ymm0, ymmword ptr [ebp - 0x120]
            //   c4e37d468500ffffff31     | vperm2i128    ymm0, ymm0, ymmword ptr [ebp - 0x100], 0x31
            //   c5fe7f80a0000000     | vmovdqu             ymmword ptr [eax + 0xa0], ymm0

    condition:
        7 of them and filesize < 260096
}