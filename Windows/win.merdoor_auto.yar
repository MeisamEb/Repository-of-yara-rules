rule win_merdoor_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-12-06"
        version = "1"
        description = "Detects win.merdoor."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.merdoor"
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
        $sequence_0 = { 5e 3bc8 7215 50 8d8398000000 50 6aff }
            // n = 7, score = 100
            //   5e                   | pop                 esi
            //   3bc8                 | cmp                 ecx, eax
            //   7215                 | jb                  0x17
            //   50                   | push                eax
            //   8d8398000000         | lea                 eax, [ebx + 0x98]
            //   50                   | push                eax
            //   6aff                 | push                -1

        $sequence_1 = { 8d85f0fdffff 8bcb 50 e8???????? 8b4dfc f7d8 5f }
            // n = 7, score = 100
            //   8d85f0fdffff         | lea                 eax, [ebp - 0x210]
            //   8bcb                 | mov                 ecx, ebx
            //   50                   | push                eax
            //   e8????????           |                     
            //   8b4dfc               | mov                 ecx, dword ptr [ebp - 4]
            //   f7d8                 | neg                 eax
            //   5f                   | pop                 edi

        $sequence_2 = { 8ac1 eb04 b011 2ac1 f6d0 fec1 }
            // n = 6, score = 100
            //   8ac1                 | mov                 al, cl
            //   eb04                 | jmp                 6
            //   b011                 | mov                 al, 0x11
            //   2ac1                 | sub                 al, cl
            //   f6d0                 | not                 al
            //   fec1                 | inc                 cl

        $sequence_3 = { 0f87af000000 8d8ee4020000 894df4 7443 8b01 8bf0 8bd0 }
            // n = 7, score = 100
            //   0f87af000000         | ja                  0xb5
            //   8d8ee4020000         | lea                 ecx, [esi + 0x2e4]
            //   894df4               | mov                 dword ptr [ebp - 0xc], ecx
            //   7443                 | je                  0x45
            //   8b01                 | mov                 eax, dword ptr [ecx]
            //   8bf0                 | mov                 esi, eax
            //   8bd0                 | mov                 edx, eax

        $sequence_4 = { ffd7 8986c0000000 83bec400000000 750f 8d4588 }
            // n = 5, score = 100
            //   ffd7                 | call                edi
            //   8986c0000000         | mov                 dword ptr [esi + 0xc0], eax
            //   83bec400000000       | cmp                 dword ptr [esi + 0xc4], 0
            //   750f                 | jne                 0x11
            //   8d4588               | lea                 eax, [ebp - 0x78]

        $sequence_5 = { 3044159c 42 80f90f 72da 660f6f05???????? 32c9 f30f7f853cffffff }
            // n = 7, score = 100
            //   3044159c             | xor                 byte ptr [ebp + edx - 0x64], al
            //   42                   | inc                 edx
            //   80f90f               | cmp                 cl, 0xf
            //   72da                 | jb                  0xffffffdc
            //   660f6f05????????     |                     
            //   32c9                 | xor                 cl, cl
            //   f30f7f853cffffff     | movdqu              xmmword ptr [ebp - 0xc4], xmm0

        $sequence_6 = { 85c0 751c 8d85ecfeffff 50 ff15???????? 8b400c 8b00 }
            // n = 7, score = 100
            //   85c0                 | test                eax, eax
            //   751c                 | jne                 0x1e
            //   8d85ecfeffff         | lea                 eax, [ebp - 0x114]
            //   50                   | push                eax
            //   ff15????????         |                     
            //   8b400c               | mov                 eax, dword ptr [eax + 0xc]
            //   8b00                 | mov                 eax, dword ptr [eax]

        $sequence_7 = { 85c0 7403 8d3410 8b440b10 85c0 7438 }
            // n = 6, score = 100
            //   85c0                 | test                eax, eax
            //   7403                 | je                  5
            //   8d3410               | lea                 esi, [eax + edx]
            //   8b440b10             | mov                 eax, dword ptr [ebx + ecx + 0x10]
            //   85c0                 | test                eax, eax
            //   7438                 | je                  0x3a

        $sequence_8 = { 53 56 8bf1 57 83cfff 8d9eec020000 53 }
            // n = 7, score = 100
            //   53                   | push                ebx
            //   56                   | push                esi
            //   8bf1                 | mov                 esi, ecx
            //   57                   | push                edi
            //   83cfff               | or                  edi, 0xffffffff
            //   8d9eec020000         | lea                 ebx, [esi + 0x2ec]
            //   53                   | push                ebx

        $sequence_9 = { 8986c0000000 83bec400000000 750f 8d4588 50 ff7604 ffd7 }
            // n = 7, score = 100
            //   8986c0000000         | mov                 dword ptr [esi + 0xc0], eax
            //   83bec400000000       | cmp                 dword ptr [esi + 0xc4], 0
            //   750f                 | jne                 0x11
            //   8d4588               | lea                 eax, [ebp - 0x78]
            //   50                   | push                eax
            //   ff7604               | push                dword ptr [esi + 4]
            //   ffd7                 | call                edi

    condition:
        7 of them and filesize < 307200
}