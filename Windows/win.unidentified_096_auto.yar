rule win_unidentified_096_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-12-06"
        version = "1"
        description = "Detects win.unidentified_096."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.unidentified_096"
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
        $sequence_0 = { 896c2444 c744244806000000 896c244c c744245010304000 }
            // n = 4, score = 100
            //   896c2444             | mov                 dword ptr [esp + 0x44], ebp
            //   c744244806000000     | mov                 dword ptr [esp + 0x48], 6
            //   896c244c             | mov                 dword ptr [esp + 0x4c], ebp
            //   c744245010304000     | mov                 dword ptr [esp + 0x50], 0x403010

        $sequence_1 = { ff15???????? 8bf0 a1???????? 3bf0 }
            // n = 4, score = 100
            //   ff15????????         |                     
            //   8bf0                 | mov                 esi, eax
            //   a1????????           |                     
            //   3bf0                 | cmp                 esi, eax

        $sequence_2 = { b021 a2???????? eb56 b040 a2???????? eb4d }
            // n = 6, score = 100
            //   b021                 | mov                 al, 0x21
            //   a2????????           |                     
            //   eb56                 | jmp                 0x58
            //   b040                 | mov                 al, 0x40
            //   a2????????           |                     
            //   eb4d                 | jmp                 0x4f

        $sequence_3 = { b02b eb11 b02d eb0d f644240c01 740b b02e }
            // n = 7, score = 100
            //   b02b                 | mov                 al, 0x2b
            //   eb11                 | jmp                 0x13
            //   b02d                 | mov                 al, 0x2d
            //   eb0d                 | jmp                 0xf
            //   f644240c01           | test                byte ptr [esp + 0xc], 1
            //   740b                 | je                  0xd
            //   b02e                 | mov                 al, 0x2e

        $sequence_4 = { 68???????? 52 e8???????? 83c424 8b4c242a 6683f930 0f8283000000 }
            // n = 7, score = 100
            //   68????????           |                     
            //   52                   | push                edx
            //   e8????????           |                     
            //   83c424               | add                 esp, 0x24
            //   8b4c242a             | mov                 ecx, dword ptr [esp + 0x2a]
            //   6683f930             | cmp                 cx, 0x30
            //   0f8283000000         | jb                  0x89

        $sequence_5 = { 90 6aff 68???????? 68???????? 64a100000000 }
            // n = 5, score = 100
            //   90                   | nop                 
            //   6aff                 | push                -1
            //   68????????           |                     
            //   68????????           |                     
            //   64a100000000         | mov                 eax, dword ptr fs:[0]

        $sequence_6 = { 8b4c2420 8b54241c 8b442414 51 52 68ff000000 }
            // n = 6, score = 100
            //   8b4c2420             | mov                 ecx, dword ptr [esp + 0x20]
            //   8b54241c             | mov                 edx, dword ptr [esp + 0x1c]
            //   8b442414             | mov                 eax, dword ptr [esp + 0x14]
            //   51                   | push                ecx
            //   52                   | push                edx
            //   68ff000000           | push                0xff

        $sequence_7 = { 3dff000000 741d 8b4c2420 8b54241c 51 52 }
            // n = 6, score = 100
            //   3dff000000           | cmp                 eax, 0xff
            //   741d                 | je                  0x1f
            //   8b4c2420             | mov                 ecx, dword ptr [esp + 0x20]
            //   8b54241c             | mov                 edx, dword ptr [esp + 0x1c]
            //   51                   | push                ecx
            //   52                   | push                edx

        $sequence_8 = { b029 a2???????? eb5f b021 }
            // n = 4, score = 100
            //   b029                 | mov                 al, 0x29
            //   a2????????           |                     
            //   eb5f                 | jmp                 0x61
            //   b021                 | mov                 al, 0x21

        $sequence_9 = { 56 8b35???????? 57 6a14 ffd6 6a10 0fbfd8 }
            // n = 7, score = 100
            //   56                   | push                esi
            //   8b35????????         |                     
            //   57                   | push                edi
            //   6a14                 | push                0x14
            //   ffd6                 | call                esi
            //   6a10                 | push                0x10
            //   0fbfd8               | movsx               ebx, ax

    condition:
        7 of them and filesize < 25648
}