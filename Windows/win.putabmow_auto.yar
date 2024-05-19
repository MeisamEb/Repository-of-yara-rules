rule win_putabmow_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-12-06"
        version = "1"
        description = "Detects win.putabmow."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.putabmow"
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
        $sequence_0 = { 016306 07 015100 07 015600 0801 51 }
            // n = 7, score = 100
            //   016306               | add                 dword ptr [ebx + 6], esp
            //   07                   | pop                 es
            //   015100               | add                 dword ptr [ecx], edx
            //   07                   | pop                 es
            //   015600               | add                 dword ptr [esi], edx
            //   0801                 | or                  byte ptr [ecx], al
            //   51                   | push                ecx

        $sequence_1 = { e8???????? 8b55f0 8b4a0c 894d08 894dec 8d4118 89420c }
            // n = 7, score = 100
            //   e8????????           |                     
            //   8b55f0               | mov                 edx, dword ptr [ebp - 0x10]
            //   8b4a0c               | mov                 ecx, dword ptr [edx + 0xc]
            //   894d08               | mov                 dword ptr [ebp + 8], ecx
            //   894dec               | mov                 dword ptr [ebp - 0x14], ecx
            //   8d4118               | lea                 eax, [ecx + 0x18]
            //   89420c               | mov                 dword ptr [edx + 0xc], eax

        $sequence_2 = { 50 51 8d3c01 eb51 ff752c 8b7524 51 }
            // n = 7, score = 100
            //   50                   | push                eax
            //   51                   | push                ecx
            //   8d3c01               | lea                 edi, [ecx + eax]
            //   eb51                 | jmp                 0x53
            //   ff752c               | push                dword ptr [ebp + 0x2c]
            //   8b7524               | mov                 esi, dword ptr [ebp + 0x24]
            //   51                   | push                ecx

        $sequence_3 = { 05eb004805 f0005005 f0005005 f0005005 f0005005 f0005005 f0005005 }
            // n = 7, score = 100
            //   05eb004805           | add                 eax, 0x54800eb
            //   f0005005             | lock add            byte ptr [eax + 5], dl
            //   f0005005             | lock add            byte ptr [eax + 5], dl
            //   f0005005             | lock add            byte ptr [eax + 5], dl
            //   f0005005             | lock add            byte ptr [eax + 5], dl
            //   f0005005             | lock add            byte ptr [eax + 5], dl
            //   f0005005             | lock add            byte ptr [eax + 5], dl

        $sequence_4 = { c74424540f000000 85c0 7c16 7f04 85f6 7410 89442418 }
            // n = 7, score = 100
            //   c74424540f000000     | mov                 dword ptr [esp + 0x54], 0xf
            //   85c0                 | test                eax, eax
            //   7c16                 | jl                  0x18
            //   7f04                 | jg                  6
            //   85f6                 | test                esi, esi
            //   7410                 | je                  0x12
            //   89442418             | mov                 dword ptr [esp + 0x18], eax

        $sequence_5 = { 8d4c241c e8???????? c744247001000000 6a01 51 68???????? 8d4c2424 }
            // n = 7, score = 100
            //   8d4c241c             | lea                 ecx, [esp + 0x1c]
            //   e8????????           |                     
            //   c744247001000000     | mov                 dword ptr [esp + 0x70], 1
            //   6a01                 | push                1
            //   51                   | push                ecx
            //   68????????           |                     
            //   8d4c2424             | lea                 ecx, [esp + 0x24]

        $sequence_6 = { e8???????? 83c404 89442428 c7842480000000ffffffff 8b4c241c 85c9 }
            // n = 6, score = 100
            //   e8????????           |                     
            //   83c404               | add                 esp, 4
            //   89442428             | mov                 dword ptr [esp + 0x28], eax
            //   c7842480000000ffffffff     | mov    dword ptr [esp + 0x80], 0xffffffff
            //   8b4c241c             | mov                 ecx, dword ptr [esp + 0x1c]
            //   85c9                 | test                ecx, ecx

        $sequence_7 = { 85c0 7413 6a00 8d8c24c8070000 51 8bc8 e8???????? }
            // n = 7, score = 100
            //   85c0                 | test                eax, eax
            //   7413                 | je                  0x15
            //   6a00                 | push                0
            //   8d8c24c8070000       | lea                 ecx, [esp + 0x7c8]
            //   51                   | push                ecx
            //   8bc8                 | mov                 ecx, eax
            //   e8????????           |                     

        $sequence_8 = { ff15???????? 85c0 0f8420010000 837e1408 7204 8b06 }
            // n = 6, score = 100
            //   ff15????????         |                     
            //   85c0                 | test                eax, eax
            //   0f8420010000         | je                  0x126
            //   837e1408             | cmp                 dword ptr [esi + 0x14], 8
            //   7204                 | jb                  6
            //   8b06                 | mov                 eax, dword ptr [esi]

        $sequence_9 = { e9???????? 8d8d50f7ffff e9???????? 8b85fcf4ffff 50 e8???????? 59 }
            // n = 7, score = 100
            //   e9????????           |                     
            //   8d8d50f7ffff         | lea                 ecx, [ebp - 0x8b0]
            //   e9????????           |                     
            //   8b85fcf4ffff         | mov                 eax, dword ptr [ebp - 0xb04]
            //   50                   | push                eax
            //   e8????????           |                     
            //   59                   | pop                 ecx

    condition:
        7 of them and filesize < 704512
}