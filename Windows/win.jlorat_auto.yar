rule win_jlorat_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-12-06"
        version = "1"
        description = "Detects win.jlorat."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.jlorat"
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
        $sequence_0 = { e8???????? 83ec10 89c1 83c101 83d200 89542450 31c0 }
            // n = 7, score = 200
            //   e8????????           |                     
            //   83ec10               | sub                 esp, 0x10
            //   89c1                 | mov                 ecx, eax
            //   83c101               | add                 ecx, 1
            //   83d200               | adc                 edx, 0
            //   89542450             | mov                 dword ptr [esp + 0x50], edx
            //   31c0                 | xor                 eax, eax

        $sequence_1 = { f20f114620 c7464001000000 89e0 8d5620 895004 8908 e8???????? }
            // n = 7, score = 200
            //   f20f114620           | movsd               qword ptr [esi + 0x20], xmm0
            //   c7464001000000       | mov                 dword ptr [esi + 0x40], 1
            //   89e0                 | mov                 eax, esp
            //   8d5620               | lea                 edx, [esi + 0x20]
            //   895004               | mov                 dword ptr [eax + 4], edx
            //   8908                 | mov                 dword ptr [eax], ecx
            //   e8????????           |                     

        $sequence_2 = { f20f1086d8020000 f20f108ee0020000 f20f118e28030000 f20f118620030000 f20f108630030000 f20f118648030000 f20f108620030000 }
            // n = 7, score = 200
            //   f20f1086d8020000     | movsd               xmm0, qword ptr [esi + 0x2d8]
            //   f20f108ee0020000     | movsd               xmm1, qword ptr [esi + 0x2e0]
            //   f20f118e28030000     | movsd               qword ptr [esi + 0x328], xmm1
            //   f20f118620030000     | movsd               qword ptr [esi + 0x320], xmm0
            //   f20f108630030000     | movsd               xmm0, qword ptr [esi + 0x330]
            //   f20f118648030000     | movsd               qword ptr [esi + 0x348], xmm0
            //   f20f108620030000     | movsd               xmm0, qword ptr [esi + 0x320]

        $sequence_3 = { f6861618000001 0f85c0160000 e9???????? 8b4510 8b08 89e0 894804 }
            // n = 7, score = 200
            //   f6861618000001       | test                byte ptr [esi + 0x1816], 1
            //   0f85c0160000         | jne                 0x16c6
            //   e9????????           |                     
            //   8b4510               | mov                 eax, dword ptr [ebp + 0x10]
            //   8b08                 | mov                 ecx, dword ptr [eax]
            //   89e0                 | mov                 eax, esp
            //   894804               | mov                 dword ptr [eax + 4], ecx

        $sequence_4 = { eb00 e9???????? 8b559c 8b7580 8b7d84 8b5da4 8b4d88 }
            // n = 7, score = 200
            //   eb00                 | jmp                 2
            //   e9????????           |                     
            //   8b559c               | mov                 edx, dword ptr [ebp - 0x64]
            //   8b7580               | mov                 esi, dword ptr [ebp - 0x80]
            //   8b7d84               | mov                 edi, dword ptr [ebp - 0x7c]
            //   8b5da4               | mov                 ebx, dword ptr [ebp - 0x5c]
            //   8b4d88               | mov                 ecx, dword ptr [ebp - 0x78]

        $sequence_5 = { e8???????? 8945c8 eb00 8b4dc4 8b45c8 c645e300 8945cc }
            // n = 7, score = 200
            //   e8????????           |                     
            //   8945c8               | mov                 dword ptr [ebp - 0x38], eax
            //   eb00                 | jmp                 2
            //   8b4dc4               | mov                 ecx, dword ptr [ebp - 0x3c]
            //   8b45c8               | mov                 eax, dword ptr [ebp - 0x38]
            //   c645e300             | mov                 byte ptr [ebp - 0x1d], 0
            //   8945cc               | mov                 dword ptr [ebp - 0x34], eax

        $sequence_6 = { c745f0ffffffff 89e0 8d4dd8 8908 e8???????? 8b45c8 8b4de8 }
            // n = 7, score = 200
            //   c745f0ffffffff       | mov                 dword ptr [ebp - 0x10], 0xffffffff
            //   89e0                 | mov                 eax, esp
            //   8d4dd8               | lea                 ecx, [ebp - 0x28]
            //   8908                 | mov                 dword ptr [eax], ecx
            //   e8????????           |                     
            //   8b45c8               | mov                 eax, dword ptr [ebp - 0x38]
            //   8b4de8               | mov                 ecx, dword ptr [ebp - 0x18]

        $sequence_7 = { f30f118424d8000000 eb43 8b4c2448 8b54244c 89e0 895004 8908 }
            // n = 7, score = 200
            //   f30f118424d8000000     | movss    dword ptr [esp + 0xd8], xmm0
            //   eb43                 | jmp                 0x45
            //   8b4c2448             | mov                 ecx, dword ptr [esp + 0x48]
            //   8b54244c             | mov                 edx, dword ptr [esp + 0x4c]
            //   89e0                 | mov                 eax, esp
            //   895004               | mov                 dword ptr [eax + 4], edx
            //   8908                 | mov                 dword ptr [eax], ecx

        $sequence_8 = { e8???????? 894644 eb00 8b4e44 c601ff c64101ff c64102ff }
            // n = 7, score = 200
            //   e8????????           |                     
            //   894644               | mov                 dword ptr [esi + 0x44], eax
            //   eb00                 | jmp                 2
            //   8b4e44               | mov                 ecx, dword ptr [esi + 0x44]
            //   c601ff               | mov                 byte ptr [ecx], 0xff
            //   c64101ff             | mov                 byte ptr [ecx + 1], 0xff
            //   c64102ff             | mov                 byte ptr [ecx + 2], 0xff

        $sequence_9 = { eb09 8b4df4 83c101 894df4 837df40a 7302 ebef }
            // n = 7, score = 200
            //   eb09                 | jmp                 0xb
            //   8b4df4               | mov                 ecx, dword ptr [ebp - 0xc]
            //   83c101               | add                 ecx, 1
            //   894df4               | mov                 dword ptr [ebp - 0xc], ecx
            //   837df40a             | cmp                 dword ptr [ebp - 0xc], 0xa
            //   7302                 | jae                 4
            //   ebef                 | jmp                 0xfffffff1

    condition:
        7 of them and filesize < 10952704
}