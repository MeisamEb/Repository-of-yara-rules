rule win_redcurl_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-12-06"
        version = "1"
        description = "Detects win.redcurl."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.redcurl"
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
        $sequence_0 = { c745f000000000 ff15???????? 8bd0 c7461000000000 8bca c746140f000000 }
            // n = 6, score = 400
            //   c745f000000000       | mov                 dword ptr [ebp - 0x10], 0
            //   ff15????????         |                     
            //   8bd0                 | mov                 edx, eax
            //   c7461000000000       | mov                 dword ptr [esi + 0x10], 0
            //   8bca                 | mov                 ecx, edx
            //   c746140f000000       | mov                 dword ptr [esi + 0x14], 0xf

        $sequence_1 = { 8bca c746140f000000 c60600 8d7901 }
            // n = 4, score = 400
            //   8bca                 | mov                 ecx, edx
            //   c746140f000000       | mov                 dword ptr [esi + 0x14], 0xf
            //   c60600               | mov                 byte ptr [esi], 0
            //   8d7901               | lea                 edi, [ecx + 1]

        $sequence_2 = { 99 b91a000000 f7f9 80c261 88143e 47 }
            // n = 6, score = 400
            //   99                   | cdq                 
            //   b91a000000           | mov                 ecx, 0x1a
            //   f7f9                 | idiv                ecx
            //   80c261               | add                 dl, 0x61
            //   88143e               | mov                 byte ptr [esi + edi], dl
            //   47                   | inc                 edi

        $sequence_3 = { 2bc6 48 50 56 }
            // n = 4, score = 400
            //   2bc6                 | sub                 eax, esi
            //   48                   | dec                 eax
            //   50                   | push                eax
            //   56                   | push                esi

        $sequence_4 = { ba???????? 660fd645e0 e8???????? 83c404 }
            // n = 4, score = 300
            //   ba????????           |                     
            //   660fd645e0           | movq                qword ptr [ebp - 0x20], xmm0
            //   e8????????           |                     
            //   83c404               | add                 esp, 4

        $sequence_5 = { 48 3bc2 0f42d0 0fb6041a 03d3 }
            // n = 5, score = 300
            //   48                   | dec                 eax
            //   3bc2                 | cmp                 eax, edx
            //   0f42d0               | cmovb               edx, eax
            //   0fb6041a             | movzx               eax, byte ptr [edx + ebx]
            //   03d3                 | add                 edx, ebx

        $sequence_6 = { ff15???????? 6a00 85c0 744b }
            // n = 4, score = 300
            //   ff15????????         |                     
            //   6a00                 | push                0
            //   85c0                 | test                eax, eax
            //   744b                 | je                  0x4d

        $sequence_7 = { 50 e8???????? 8d0c3e 83c40c 3bf1 7410 0fb606 }
            // n = 7, score = 300
            //   50                   | push                eax
            //   e8????????           |                     
            //   8d0c3e               | lea                 ecx, [esi + edi]
            //   83c40c               | add                 esp, 0xc
            //   3bf1                 | cmp                 esi, ecx
            //   7410                 | je                  0x12
            //   0fb606               | movzx               eax, byte ptr [esi]

        $sequence_8 = { 6a00 0f434d08 8bf0 6a00 }
            // n = 4, score = 300
            //   6a00                 | push                0
            //   0f434d08             | cmovae              ecx, dword ptr [ebp + 8]
            //   8bf0                 | mov                 esi, eax
            //   6a00                 | push                0

        $sequence_9 = { 0f57c0 c745dc00000000 68???????? ba???????? 660fd645d4 }
            // n = 5, score = 300
            //   0f57c0               | xorps               xmm0, xmm0
            //   c745dc00000000       | mov                 dword ptr [ebp - 0x24], 0
            //   68????????           |                     
            //   ba????????           |                     
            //   660fd645d4           | movq                qword ptr [ebp - 0x2c], xmm0

        $sequence_10 = { c745f001000000 e8???????? c745e800000000 c745ec0f000000 c645d800 8d5001 }
            // n = 6, score = 300
            //   c745f001000000       | mov                 dword ptr [ebp - 0x10], 1
            //   e8????????           |                     
            //   c745e800000000       | mov                 dword ptr [ebp - 0x18], 0
            //   c745ec0f000000       | mov                 dword ptr [ebp - 0x14], 0xf
            //   c645d800             | mov                 byte ptr [ebp - 0x28], 0
            //   8d5001               | lea                 edx, [eax + 1]

        $sequence_11 = { c745ec0f000000 c645d800 8d5001 8b4610 3bc2 726f }
            // n = 6, score = 300
            //   c745ec0f000000       | mov                 dword ptr [ebp - 0x14], 0xf
            //   c645d800             | mov                 byte ptr [ebp - 0x28], 0
            //   8d5001               | lea                 edx, [eax + 1]
            //   8b4610               | mov                 eax, dword ptr [esi + 0x10]
            //   3bc2                 | cmp                 eax, edx
            //   726f                 | jb                  0x71

        $sequence_12 = { 0154241c 894104 e9???????? 8b44241c }
            // n = 4, score = 200
            //   0154241c             | add                 dword ptr [esp + 0x1c], edx
            //   894104               | mov                 dword ptr [ecx + 4], eax
            //   e9????????           |                     
            //   8b44241c             | mov                 eax, dword ptr [esp + 0x1c]

        $sequence_13 = { 89542408 f7d0 0385e4fdffff 8995a4fbffff 8944240c }
            // n = 5, score = 200
            //   89542408             | mov                 dword ptr [esp + 8], edx
            //   f7d0                 | not                 eax
            //   0385e4fdffff         | add                 eax, dword ptr [ebp - 0x21c]
            //   8995a4fbffff         | mov                 dword ptr [ebp - 0x45c], edx
            //   8944240c             | mov                 dword ptr [esp + 0xc], eax

        $sequence_14 = { 00c1 83da03 2b54241c 0f8444230000 8b7c241c }
            // n = 5, score = 200
            //   00c1                 | add                 cl, al
            //   83da03               | sbb                 edx, 3
            //   2b54241c             | sub                 edx, dword ptr [esp + 0x1c]
            //   0f8444230000         | je                  0x234a
            //   8b7c241c             | mov                 edi, dword ptr [esp + 0x1c]

        $sequence_15 = { 00c1 83db03 2b9d34fdffff 899d44fdffff }
            // n = 4, score = 200
            //   00c1                 | add                 cl, al
            //   83db03               | sbb                 ebx, 3
            //   2b9d34fdffff         | sub                 ebx, dword ptr [ebp - 0x2cc]
            //   899d44fdffff         | mov                 dword ptr [ebp - 0x2bc], ebx

        $sequence_16 = { 00c2 83de03 2bb500ffffff 89b530ffffff }
            // n = 4, score = 200
            //   00c2                 | add                 dl, al
            //   83de03               | sbb                 esi, 3
            //   2bb500ffffff         | sub                 esi, dword ptr [ebp - 0x100]
            //   89b530ffffff         | mov                 dword ptr [ebp - 0xd0], esi

        $sequence_17 = { 00c1 83de03 29de 89b504feffff }
            // n = 4, score = 200
            //   00c1                 | add                 cl, al
            //   83de03               | sbb                 esi, 3
            //   29de                 | sub                 esi, ebx
            //   89b504feffff         | mov                 dword ptr [ebp - 0x1fc], esi

        $sequence_18 = { 00c1 8d8510feffff 83da03 89442404 }
            // n = 4, score = 200
            //   00c1                 | add                 cl, al
            //   8d8510feffff         | lea                 eax, [ebp - 0x1f0]
            //   83da03               | sbb                 edx, 3
            //   89442404             | mov                 dword ptr [esp + 4], eax

        $sequence_19 = { 00c1 8b8300010000 83da03 29fa 7468 }
            // n = 5, score = 200
            //   00c1                 | add                 cl, al
            //   8b8300010000         | mov                 eax, dword ptr [ebx + 0x100]
            //   83da03               | sbb                 edx, 3
            //   29fa                 | sub                 edx, edi
            //   7468                 | je                  0x6a

    condition:
        7 of them and filesize < 487424
}