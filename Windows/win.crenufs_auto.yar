rule win_crenufs_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-12-06"
        version = "1"
        description = "Detects win.crenufs."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.crenufs"
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
        $sequence_0 = { 8b0c8de0934000 25ff000000 c1ea18 33cb 8b1c95e08f4000 8b56f8 }
            // n = 6, score = 200
            //   8b0c8de0934000       | mov                 ecx, dword ptr [ecx*4 + 0x4093e0]
            //   25ff000000           | and                 eax, 0xff
            //   c1ea18               | shr                 edx, 0x18
            //   33cb                 | xor                 ecx, ebx
            //   8b1c95e08f4000       | mov                 ebx, dword ptr [edx*4 + 0x408fe0]
            //   8b56f8               | mov                 edx, dword ptr [esi - 8]

        $sequence_1 = { 55 56 57 8bf9 8a4c2444 33ed 884c2425 }
            // n = 7, score = 200
            //   55                   | push                ebp
            //   56                   | push                esi
            //   57                   | push                edi
            //   8bf9                 | mov                 edi, ecx
            //   8a4c2444             | mov                 cl, byte ptr [esp + 0x44]
            //   33ed                 | xor                 ebp, ebp
            //   884c2425             | mov                 byte ptr [esp + 0x25], cl

        $sequence_2 = { ff15???????? 56 8d4d90 c645fc05 ff15???????? 56 8d4de0 }
            // n = 7, score = 200
            //   ff15????????         |                     
            //   56                   | push                esi
            //   8d4d90               | lea                 ecx, [ebp - 0x70]
            //   c645fc05             | mov                 byte ptr [ebp - 4], 5
            //   ff15????????         |                     
            //   56                   | push                esi
            //   8d4de0               | lea                 ecx, [ebp - 0x20]

        $sequence_3 = { ffd0 83c408 53 ff15???????? 8b44243c 8b4e08 3bc5 }
            // n = 7, score = 200
            //   ffd0                 | call                eax
            //   83c408               | add                 esp, 8
            //   53                   | push                ebx
            //   ff15????????         |                     
            //   8b44243c             | mov                 eax, dword ptr [esp + 0x3c]
            //   8b4e08               | mov                 ecx, dword ptr [esi + 8]
            //   3bc5                 | cmp                 eax, ebp

        $sequence_4 = { 59 50 57 8d4de0 ff15???????? bf???????? 57 }
            // n = 7, score = 200
            //   59                   | pop                 ecx
            //   50                   | push                eax
            //   57                   | push                edi
            //   8d4de0               | lea                 ecx, [ebp - 0x20]
            //   ff15????????         |                     
            //   bf????????           |                     
            //   57                   | push                edi

        $sequence_5 = { 750c 8b3d???????? 891d???????? 8d4c2444 ff15???????? 3bfb 7409 }
            // n = 7, score = 200
            //   750c                 | jne                 0xe
            //   8b3d????????         |                     
            //   891d????????         |                     
            //   8d4c2444             | lea                 ecx, [esp + 0x44]
            //   ff15????????         |                     
            //   3bfb                 | cmp                 edi, ebx
            //   7409                 | je                  0xb

        $sequence_6 = { ff15???????? 8d8d3cf2ffff c645fc03 e8???????? c645fc02 56 }
            // n = 6, score = 200
            //   ff15????????         |                     
            //   8d8d3cf2ffff         | lea                 ecx, [ebp - 0xdc4]
            //   c645fc03             | mov                 byte ptr [ebp - 4], 3
            //   e8????????           |                     
            //   c645fc02             | mov                 byte ptr [ebp - 4], 2
            //   56                   | push                esi

        $sequence_7 = { 84c0 89542410 743e 3b31 752d 53 56 }
            // n = 7, score = 200
            //   84c0                 | test                al, al
            //   89542410             | mov                 dword ptr [esp + 0x10], edx
            //   743e                 | je                  0x40
            //   3b31                 | cmp                 esi, dword ptr [ecx]
            //   752d                 | jne                 0x2f
            //   53                   | push                ebx
            //   56                   | push                esi

        $sequence_8 = { 8d4c2444 895c2428 895c2430 33ff ff15???????? a1???????? 48 }
            // n = 7, score = 200
            //   8d4c2444             | lea                 ecx, [esp + 0x44]
            //   895c2428             | mov                 dword ptr [esp + 0x28], ebx
            //   895c2430             | mov                 dword ptr [esp + 0x30], ebx
            //   33ff                 | xor                 edi, edi
            //   ff15????????         |                     
            //   a1????????           |                     
            //   48                   | dec                 eax

        $sequence_9 = { 895dfc e8???????? 8b10 8bc8 ff5210 }
            // n = 5, score = 200
            //   895dfc               | mov                 dword ptr [ebp - 4], ebx
            //   e8????????           |                     
            //   8b10                 | mov                 edx, dword ptr [eax]
            //   8bc8                 | mov                 ecx, eax
            //   ff5210               | call                dword ptr [edx + 0x10]

    condition:
        7 of them and filesize < 106496
}