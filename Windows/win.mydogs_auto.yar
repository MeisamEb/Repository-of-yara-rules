rule win_mydogs_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-12-06"
        version = "1"
        description = "Detects win.mydogs."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.mydogs"
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
        $sequence_0 = { 3db7000000 0f8444010000 68???????? 6804010000 68???????? e8???????? }
            // n = 6, score = 200
            //   3db7000000           | cmp                 eax, 0xb7
            //   0f8444010000         | je                  0x14a
            //   68????????           |                     
            //   6804010000           | push                0x104
            //   68????????           |                     
            //   e8????????           |                     

        $sequence_1 = { 884df3 c1fa18 8b5364 8bc2 8bce 0facc108 c1f808 }
            // n = 7, score = 200
            //   884df3               | mov                 byte ptr [ebp - 0xd], cl
            //   c1fa18               | sar                 edx, 0x18
            //   8b5364               | mov                 edx, dword ptr [ebx + 0x64]
            //   8bc2                 | mov                 eax, edx
            //   8bce                 | mov                 ecx, esi
            //   0facc108             | shrd                ecx, eax, 8
            //   c1f808               | sar                 eax, 8

        $sequence_2 = { 5d e9???????? 6a18 68???????? e8???????? 8b4508 8bd8 }
            // n = 7, score = 200
            //   5d                   | pop                 ebp
            //   e9????????           |                     
            //   6a18                 | push                0x18
            //   68????????           |                     
            //   e8????????           |                     
            //   8b4508               | mov                 eax, dword ptr [ebp + 8]
            //   8bd8                 | mov                 ebx, eax

        $sequence_3 = { 894e64 8b4dec 894650 894658 894660 8b45ee 8d49c4 }
            // n = 7, score = 200
            //   894e64               | mov                 dword ptr [esi + 0x64], ecx
            //   8b4dec               | mov                 ecx, dword ptr [ebp - 0x14]
            //   894650               | mov                 dword ptr [esi + 0x50], eax
            //   894658               | mov                 dword ptr [esi + 0x58], eax
            //   894660               | mov                 dword ptr [esi + 0x60], eax
            //   8b45ee               | mov                 eax, dword ptr [ebp - 0x12]
            //   8d49c4               | lea                 ecx, [ecx - 0x3c]

        $sequence_4 = { 50 ffb5e4eeffff ffb5f8eeffff ff15???????? 85c0 7515 5f }
            // n = 7, score = 200
            //   50                   | push                eax
            //   ffb5e4eeffff         | push                dword ptr [ebp - 0x111c]
            //   ffb5f8eeffff         | push                dword ptr [ebp - 0x1108]
            //   ff15????????         |                     
            //   85c0                 | test                eax, eax
            //   7515                 | jne                 0x17
            //   5f                   | pop                 edi

        $sequence_5 = { 8bf9 53 895ddc 897de0 e8???????? }
            // n = 5, score = 200
            //   8bf9                 | mov                 edi, ecx
            //   53                   | push                ebx
            //   895ddc               | mov                 dword ptr [ebp - 0x24], ebx
            //   897de0               | mov                 dword ptr [ebp - 0x20], edi
            //   e8????????           |                     

        $sequence_6 = { 8b4dfc 33cd e8???????? 8be5 5d c3 8d85f4eeffff }
            // n = 7, score = 200
            //   8b4dfc               | mov                 ecx, dword ptr [ebp - 4]
            //   33cd                 | xor                 ecx, ebp
            //   e8????????           |                     
            //   8be5                 | mov                 esp, ebp
            //   5d                   | pop                 ebp
            //   c3                   | ret                 
            //   8d85f4eeffff         | lea                 eax, [ebp - 0x110c]

        $sequence_7 = { 50 8bcf c645ff4b e8???????? 6a01 8d450b 50 }
            // n = 7, score = 200
            //   50                   | push                eax
            //   8bcf                 | mov                 ecx, edi
            //   c645ff4b             | mov                 byte ptr [ebp - 1], 0x4b
            //   e8????????           |                     
            //   6a01                 | push                1
            //   8d450b               | lea                 eax, [ebp + 0xb]
            //   50                   | push                eax

        $sequence_8 = { 1ddeb19d01 50 51 89530c e8???????? 894310 }
            // n = 6, score = 200
            //   1ddeb19d01           | sbb                 eax, 0x19db1de
            //   50                   | push                eax
            //   51                   | push                ecx
            //   89530c               | mov                 dword ptr [ebx + 0xc], edx
            //   e8????????           |                     
            //   894310               | mov                 dword ptr [ebx + 0x10], eax

        $sequence_9 = { e8???????? 50 6800080000 53 89442434 e8???????? 83c414 }
            // n = 7, score = 200
            //   e8????????           |                     
            //   50                   | push                eax
            //   6800080000           | push                0x800
            //   53                   | push                ebx
            //   89442434             | mov                 dword ptr [esp + 0x34], eax
            //   e8????????           |                     
            //   83c414               | add                 esp, 0x14

    condition:
        7 of them and filesize < 313344
}