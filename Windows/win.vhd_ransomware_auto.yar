rule win_vhd_ransomware_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-12-06"
        version = "1"
        description = "Detects win.vhd_ransomware."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.vhd_ransomware"
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
        $sequence_0 = { 8b450c 4a 3bd0 7d10 8bc8 }
            // n = 5, score = 100
            //   8b450c               | mov                 eax, dword ptr [ebp + 0xc]
            //   4a                   | dec                 edx
            //   3bd0                 | cmp                 edx, eax
            //   7d10                 | jge                 0x12
            //   8bc8                 | mov                 ecx, eax

        $sequence_1 = { 68???????? 8d45f4 50 c745f4d8514100 e8???????? cc 8bff }
            // n = 7, score = 100
            //   68????????           |                     
            //   8d45f4               | lea                 eax, [ebp - 0xc]
            //   50                   | push                eax
            //   c745f4d8514100       | mov                 dword ptr [ebp - 0xc], 0x4151d8
            //   e8????????           |                     
            //   cc                   | int3                
            //   8bff                 | mov                 edi, edi

        $sequence_2 = { e8???????? 8b8514e6ffff 48 83c404 4b 898514e6ffff 85c0 }
            // n = 7, score = 100
            //   e8????????           |                     
            //   8b8514e6ffff         | mov                 eax, dword ptr [ebp - 0x19ec]
            //   48                   | dec                 eax
            //   83c404               | add                 esp, 4
            //   4b                   | dec                 ebx
            //   898514e6ffff         | mov                 dword ptr [ebp - 0x19ec], eax
            //   85c0                 | test                eax, eax

        $sequence_3 = { f3ab 8b8dccfcffff 890a 85c9 7e98 8d4a04 }
            // n = 6, score = 100
            //   f3ab                 | rep stosd           dword ptr es:[edi], eax
            //   8b8dccfcffff         | mov                 ecx, dword ptr [ebp - 0x334]
            //   890a                 | mov                 dword ptr [edx], ecx
            //   85c9                 | test                ecx, ecx
            //   7e98                 | jle                 0xffffff9a
            //   8d4a04               | lea                 ecx, [edx + 4]

        $sequence_4 = { c1eb18 0fb69b98744100 c1e308 0bda 8b55cc c1ea08 0fb6d2 }
            // n = 7, score = 100
            //   c1eb18               | shr                 ebx, 0x18
            //   0fb69b98744100       | movzx               ebx, byte ptr [ebx + 0x417498]
            //   c1e308               | shl                 ebx, 8
            //   0bda                 | or                  ebx, edx
            //   8b55cc               | mov                 edx, dword ptr [ebp - 0x34]
            //   c1ea08               | shr                 edx, 8
            //   0fb6d2               | movzx               edx, dl

        $sequence_5 = { 66895c2460 897c241c c7442420c05d4000 897c2424 897c2428 }
            // n = 5, score = 100
            //   66895c2460           | mov                 word ptr [esp + 0x60], bx
            //   897c241c             | mov                 dword ptr [esp + 0x1c], edi
            //   c7442420c05d4000     | mov                 dword ptr [esp + 0x20], 0x405dc0
            //   897c2424             | mov                 dword ptr [esp + 0x24], edi
            //   897c2428             | mov                 dword ptr [esp + 0x28], edi

        $sequence_6 = { 7d10 895c8204 ff02 8bde 33f6 8bcb 0bce }
            // n = 7, score = 100
            //   7d10                 | jge                 0x12
            //   895c8204             | mov                 dword ptr [edx + eax*4 + 4], ebx
            //   ff02                 | inc                 dword ptr [edx]
            //   8bde                 | mov                 ebx, esi
            //   33f6                 | xor                 esi, esi
            //   8bcb                 | mov                 ecx, ebx
            //   0bce                 | or                  ecx, esi

        $sequence_7 = { e8???????? b9c9000000 8bf0 8dbd7cf6ffff }
            // n = 4, score = 100
            //   e8????????           |                     
            //   b9c9000000           | mov                 ecx, 0xc9
            //   8bf0                 | mov                 esi, eax
            //   8dbd7cf6ffff         | lea                 edi, [ebp - 0x984]

        $sequence_8 = { 46 83fe40 7cee 8d4d9c 51 8d8d84baffff e8???????? }
            // n = 7, score = 100
            //   46                   | inc                 esi
            //   83fe40               | cmp                 esi, 0x40
            //   7cee                 | jl                  0xfffffff0
            //   8d4d9c               | lea                 ecx, [ebp - 0x64]
            //   51                   | push                ecx
            //   8d8d84baffff         | lea                 ecx, [ebp - 0x457c]
            //   e8????????           |                     

        $sequence_9 = { ff15???????? 32c0 e9???????? 6a00 8d8588b4ffff 50 6800200000 }
            // n = 7, score = 100
            //   ff15????????         |                     
            //   32c0                 | xor                 al, al
            //   e9????????           |                     
            //   6a00                 | push                0
            //   8d8588b4ffff         | lea                 eax, [ebp - 0x4b78]
            //   50                   | push                eax
            //   6800200000           | push                0x2000

    condition:
        7 of them and filesize < 275456
}