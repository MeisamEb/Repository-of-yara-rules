rule win_brambul_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-12-06"
        version = "1"
        description = "Detects win.brambul."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.brambul"
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
        $sequence_0 = { 66390a 750c 663908 8dbc5dc4000000 }
            // n = 4, score = 100
            //   66390a               | cmp                 word ptr [edx], cx
            //   750c                 | jne                 0xe
            //   663908               | cmp                 word ptr [eax], cx
            //   8dbc5dc4000000       | lea                 edi, [ebp + ebx*2 + 0xc4]

        $sequence_1 = { d3e0 48 234508 8d0440 }
            // n = 4, score = 100
            //   d3e0                 | shl                 eax, cl
            //   48                   | dec                 eax
            //   234508               | and                 eax, dword ptr [ebp + 8]
            //   8d0440               | lea                 eax, [eax + eax*2]

        $sequence_2 = { 83f801 7269 6a08 6a40 ff15???????? 8b542414 }
            // n = 6, score = 100
            //   83f801               | cmp                 eax, 1
            //   7269                 | jb                  0x6b
            //   6a08                 | push                8
            //   6a40                 | push                0x40
            //   ff15????????         |                     
            //   8b542414             | mov                 edx, dword ptr [esp + 0x14]

        $sequence_3 = { 8bd9 33ee c1eb14 c1e10c }
            // n = 4, score = 100
            //   8bd9                 | mov                 ebx, ecx
            //   33ee                 | xor                 ebp, esi
            //   c1eb14               | shr                 ebx, 0x14
            //   c1e10c               | shl                 ecx, 0xc

        $sequence_4 = { c1e311 0bf3 8b5824 03f2 23ee 33e9 }
            // n = 6, score = 100
            //   c1e311               | shl                 ebx, 0x11
            //   0bf3                 | or                  esi, ebx
            //   8b5824               | mov                 ebx, dword ptr [eax + 0x24]
            //   03f2                 | add                 esi, edx
            //   23ee                 | and                 ebp, esi
            //   33e9                 | xor                 ebp, ecx

        $sequence_5 = { 6800400000 6a00 ff15???????? 50 ff15???????? 8bd8 }
            // n = 6, score = 100
            //   6800400000           | push                0x4000
            //   6a00                 | push                0
            //   ff15????????         |                     
            //   50                   | push                eax
            //   ff15????????         |                     
            //   8bd8                 | mov                 ebx, eax

        $sequence_6 = { 6a05 89b5b049ffff 58 8985a849ffff }
            // n = 4, score = 100
            //   6a05                 | push                5
            //   89b5b049ffff         | mov                 dword ptr [ebp - 0xb650], esi
            //   58                   | pop                 eax
            //   8985a849ffff         | mov                 dword ptr [ebp - 0xb658], eax

        $sequence_7 = { 25ffff0000 3bf8 7cc9 8bc6 5f 5e 5d }
            // n = 7, score = 100
            //   25ffff0000           | and                 eax, 0xffff
            //   3bf8                 | cmp                 edi, eax
            //   7cc9                 | jl                  0xffffffcb
            //   8bc6                 | mov                 eax, esi
            //   5f                   | pop                 edi
            //   5e                   | pop                 esi
            //   5d                   | pop                 ebp

        $sequence_8 = { 8d54242c c1e902 f3a5 8bc8 8d442470 }
            // n = 5, score = 100
            //   8d54242c             | lea                 edx, [esp + 0x2c]
            //   c1e902               | shr                 ecx, 2
            //   f3a5                 | rep movsd           dword ptr es:[edi], dword ptr [esi]
            //   8bc8                 | mov                 ecx, eax
            //   8d442470             | lea                 eax, [esp + 0x70]

        $sequence_9 = { 68???????? ff15???????? 83c408 b804000000 5f 5e 5d }
            // n = 7, score = 100
            //   68????????           |                     
            //   ff15????????         |                     
            //   83c408               | add                 esp, 8
            //   b804000000           | mov                 eax, 4
            //   5f                   | pop                 edi
            //   5e                   | pop                 esi
            //   5d                   | pop                 ebp

        $sequence_10 = { 8b8c2480010000 89942418010000 8984241c010000 8d942418010000 51 8d84245c010000 }
            // n = 6, score = 100
            //   8b8c2480010000       | mov                 ecx, dword ptr [esp + 0x180]
            //   89942418010000       | mov                 dword ptr [esp + 0x118], edx
            //   8984241c010000       | mov                 dword ptr [esp + 0x11c], eax
            //   8d942418010000       | lea                 edx, [esp + 0x118]
            //   51                   | push                ecx
            //   8d84245c010000       | lea                 eax, [esp + 0x15c]

        $sequence_11 = { 8d45e8 50 8bf3 8d85be49ffff 83e31f 83a5b85dffff00 }
            // n = 6, score = 100
            //   8d45e8               | lea                 eax, [ebp - 0x18]
            //   50                   | push                eax
            //   8bf3                 | mov                 esi, ebx
            //   8d85be49ffff         | lea                 eax, [ebp - 0xb642]
            //   83e31f               | and                 ebx, 0x1f
            //   83a5b85dffff00       | and                 dword ptr [ebp - 0xa248], 0

        $sequence_12 = { 89b404bc000000 83c004 83f840 7cd0 b910000000 }
            // n = 5, score = 100
            //   89b404bc000000       | mov                 dword ptr [esp + eax + 0xbc], esi
            //   83c004               | add                 eax, 4
            //   83f840               | cmp                 eax, 0x40
            //   7cd0                 | jl                  0xffffffd2
            //   b910000000           | mov                 ecx, 0x10

        $sequence_13 = { 8d7c2420 f3ab 8d442424 50 56 53 }
            // n = 6, score = 100
            //   8d7c2420             | lea                 edi, [esp + 0x20]
            //   f3ab                 | rep stosd           dword ptr es:[edi], eax
            //   8d442424             | lea                 eax, [esp + 0x24]
            //   50                   | push                eax
            //   56                   | push                esi
            //   53                   | push                ebx

        $sequence_14 = { 50 e8???????? 83f8ff 7517 8d4c2410 }
            // n = 5, score = 100
            //   50                   | push                eax
            //   e8????????           |                     
            //   83f8ff               | cmp                 eax, -1
            //   7517                 | jne                 0x19
            //   8d4c2410             | lea                 ecx, [esp + 0x10]

        $sequence_15 = { c3 8b442404 c74050f0864000 c7401401000000 }
            // n = 4, score = 100
            //   c3                   | ret                 
            //   8b442404             | mov                 eax, dword ptr [esp + 4]
            //   c74050f0864000       | mov                 dword ptr [eax + 0x50], 0x4086f0
            //   c7401401000000       | mov                 dword ptr [eax + 0x14], 1

    condition:
        7 of them and filesize < 188416
}