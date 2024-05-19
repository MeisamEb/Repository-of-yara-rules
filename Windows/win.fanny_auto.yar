rule win_fanny_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-12-06"
        version = "1"
        description = "Detects win.fanny."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.fanny"
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
        $sequence_0 = { 8b45c0 85c0 7422 8935???????? 6a00 }
            // n = 5, score = 200
            //   8b45c0               | mov                 eax, dword ptr [ebp - 0x40]
            //   85c0                 | test                eax, eax
            //   7422                 | je                  0x24
            //   8935????????         |                     
            //   6a00                 | push                0

        $sequence_1 = { 8955d0 0fb645cf 3de9000000 7423 0fb64dcf }
            // n = 5, score = 200
            //   8955d0               | mov                 dword ptr [ebp - 0x30], edx
            //   0fb645cf             | movzx               eax, byte ptr [ebp - 0x31]
            //   3de9000000           | cmp                 eax, 0xe9
            //   7423                 | je                  0x25
            //   0fb64dcf             | movzx               ecx, byte ptr [ebp - 0x31]

        $sequence_2 = { 8b4dfc 8b11 52 ff15???????? 85c0 7502 }
            // n = 6, score = 200
            //   8b4dfc               | mov                 ecx, dword ptr [ebp - 4]
            //   8b11                 | mov                 edx, dword ptr [ecx]
            //   52                   | push                edx
            //   ff15????????         |                     
            //   85c0                 | test                eax, eax
            //   7502                 | jne                 4

        $sequence_3 = { 53 ff15???????? 8bf0 83c420 85f6 0f846a010000 }
            // n = 6, score = 200
            //   53                   | push                ebx
            //   ff15????????         |                     
            //   8bf0                 | mov                 esi, eax
            //   83c420               | add                 esp, 0x20
            //   85f6                 | test                esi, esi
            //   0f846a010000         | je                  0x170

        $sequence_4 = { 8b450c 8945d4 c745c400000000 8b4dc4 3b4dd0 7d26 6a00 }
            // n = 7, score = 200
            //   8b450c               | mov                 eax, dword ptr [ebp + 0xc]
            //   8945d4               | mov                 dword ptr [ebp - 0x2c], eax
            //   c745c400000000       | mov                 dword ptr [ebp - 0x3c], 0
            //   8b4dc4               | mov                 ecx, dword ptr [ebp - 0x3c]
            //   3b4dd0               | cmp                 ecx, dword ptr [ebp - 0x30]
            //   7d26                 | jge                 0x28
            //   6a00                 | push                0

        $sequence_5 = { 53 ff15???????? 8bf0 85f6 7420 6a03 }
            // n = 6, score = 200
            //   53                   | push                ebx
            //   ff15????????         |                     
            //   8bf0                 | mov                 esi, eax
            //   85f6                 | test                esi, esi
            //   7420                 | je                  0x22
            //   6a03                 | push                3

        $sequence_6 = { eb05 1bc0 83d8ff 85c0 7517 8b842418010000 }
            // n = 6, score = 200
            //   eb05                 | jmp                 7
            //   1bc0                 | sbb                 eax, eax
            //   83d8ff               | sbb                 eax, -1
            //   85c0                 | test                eax, eax
            //   7517                 | jne                 0x19
            //   8b842418010000       | mov                 eax, dword ptr [esp + 0x118]

        $sequence_7 = { eb57 8b450c 8a4dd0 88481f 8b55d0 52 8b4510 }
            // n = 7, score = 200
            //   eb57                 | jmp                 0x59
            //   8b450c               | mov                 eax, dword ptr [ebp + 0xc]
            //   8a4dd0               | mov                 cl, byte ptr [ebp - 0x30]
            //   88481f               | mov                 byte ptr [eax + 0x1f], cl
            //   8b55d0               | mov                 edx, dword ptr [ebp - 0x30]
            //   52                   | push                edx
            //   8b4510               | mov                 eax, dword ptr [ebp + 0x10]

        $sequence_8 = { 8b4dfc c7410c00000000 ff15???????? 8b55fc }
            // n = 4, score = 200
            //   8b4dfc               | mov                 ecx, dword ptr [ebp - 4]
            //   c7410c00000000       | mov                 dword ptr [ecx + 0xc], 0
            //   ff15????????         |                     
            //   8b55fc               | mov                 edx, dword ptr [ebp - 4]

        $sequence_9 = { 53 ff15???????? be00000200 56 }
            // n = 4, score = 200
            //   53                   | push                ebx
            //   ff15????????         |                     
            //   be00000200           | mov                 esi, 0x20000
            //   56                   | push                esi

        $sequence_10 = { 5b c9 c3 80a5dcfeffff00 }
            // n = 4, score = 200
            //   5b                   | pop                 ebx
            //   c9                   | leave               
            //   c3                   | ret                 
            //   80a5dcfeffff00       | and                 byte ptr [ebp - 0x124], 0

        $sequence_11 = { 50 e8???????? 83c424 eb03 8b7508 }
            // n = 5, score = 200
            //   50                   | push                eax
            //   e8????????           |                     
            //   83c424               | add                 esp, 0x24
            //   eb03                 | jmp                 5
            //   8b7508               | mov                 esi, dword ptr [ebp + 8]

        $sequence_12 = { 53 ff15???????? 8d85e8fdffff 50 ff15???????? }
            // n = 5, score = 200
            //   53                   | push                ebx
            //   ff15????????         |                     
            //   8d85e8fdffff         | lea                 eax, [ebp - 0x218]
            //   50                   | push                eax
            //   ff15????????         |                     

        $sequence_13 = { 6800400000 6a00 ff15???????? 897c2410 56 }
            // n = 5, score = 200
            //   6800400000           | push                0x4000
            //   6a00                 | push                0
            //   ff15????????         |                     
            //   897c2410             | mov                 dword ptr [esp + 0x10], edi
            //   56                   | push                esi

        $sequence_14 = { 53 ff15???????? 8bf0 59 85f6 0f84e9000000 8a4508 }
            // n = 7, score = 200
            //   53                   | push                ebx
            //   ff15????????         |                     
            //   8bf0                 | mov                 esi, eax
            //   59                   | pop                 ecx
            //   85f6                 | test                esi, esi
            //   0f84e9000000         | je                  0xef
            //   8a4508               | mov                 al, byte ptr [ebp + 8]

        $sequence_15 = { 33c0 83e103 f3a4 8b13 8b4d00 85d2 760e }
            // n = 7, score = 200
            //   33c0                 | xor                 eax, eax
            //   83e103               | and                 ecx, 3
            //   f3a4                 | rep movsb           byte ptr es:[edi], byte ptr [esi]
            //   8b13                 | mov                 edx, dword ptr [ebx]
            //   8b4d00               | mov                 ecx, dword ptr [ebp]
            //   85d2                 | test                edx, edx
            //   760e                 | jbe                 0x10

    condition:
        7 of them and filesize < 368640
}