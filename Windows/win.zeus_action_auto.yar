rule win_zeus_action_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-12-06"
        version = "1"
        description = "Detects win.zeus_action."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.zeus_action"
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
        $sequence_0 = { 668945fa 8d75f4 a5 a5 a5 8383d87500000c 33f6 }
            // n = 7, score = 300
            //   668945fa             | mov                 word ptr [ebp - 6], ax
            //   8d75f4               | lea                 esi, [ebp - 0xc]
            //   a5                   | movsd               dword ptr es:[edi], dword ptr [esi]
            //   a5                   | movsd               dword ptr es:[edi], dword ptr [esi]
            //   a5                   | movsd               dword ptr es:[edi], dword ptr [esi]
            //   8383d87500000c       | add                 dword ptr [ebx + 0x75d8], 0xc
            //   33f6                 | xor                 esi, esi

        $sequence_1 = { 7417 8b01 57 51 ff5034 8b4de8 85c9 }
            // n = 7, score = 300
            //   7417                 | je                  0x19
            //   8b01                 | mov                 eax, dword ptr [ecx]
            //   57                   | push                edi
            //   51                   | push                ecx
            //   ff5034               | call                dword ptr [eax + 0x34]
            //   8b4de8               | mov                 ecx, dword ptr [ebp - 0x18]
            //   85c9                 | test                ecx, ecx

        $sequence_2 = { ff15???????? b800080000 663b05???????? 7510 e8???????? 84c0 7407 }
            // n = 7, score = 300
            //   ff15????????         |                     
            //   b800080000           | mov                 eax, 0x800
            //   663b05????????       |                     
            //   7510                 | jne                 0x12
            //   e8????????           |                     
            //   84c0                 | test                al, al
            //   7407                 | je                  9

        $sequence_3 = { 894508 3bf0 7433 8d7b14 85f6 7504 33c0 }
            // n = 7, score = 300
            //   894508               | mov                 dword ptr [ebp + 8], eax
            //   3bf0                 | cmp                 esi, eax
            //   7433                 | je                  0x35
            //   8d7b14               | lea                 edi, [ebx + 0x14]
            //   85f6                 | test                esi, esi
            //   7504                 | jne                 6
            //   33c0                 | xor                 eax, eax

        $sequence_4 = { 0f84d0020000 395df8 0f84c7020000 395df4 0f84be020000 395dd0 0f84b5020000 }
            // n = 7, score = 300
            //   0f84d0020000         | je                  0x2d6
            //   395df8               | cmp                 dword ptr [ebp - 8], ebx
            //   0f84c7020000         | je                  0x2cd
            //   395df4               | cmp                 dword ptr [ebp - 0xc], ebx
            //   0f84be020000         | je                  0x2c4
            //   395dd0               | cmp                 dword ptr [ebp - 0x30], ebx
            //   0f84b5020000         | je                  0x2bb

        $sequence_5 = { 49 3bc6 7509 8b7dd8 894de8 }
            // n = 5, score = 300
            //   49                   | dec                 ecx
            //   3bc6                 | cmp                 eax, esi
            //   7509                 | jne                 0xb
            //   8b7dd8               | mov                 edi, dword ptr [ebp - 0x28]
            //   894de8               | mov                 dword ptr [ebp - 0x18], ecx

        $sequence_6 = { 59 85c0 0f8479010000 837ddc00 740f 53 e8???????? }
            // n = 7, score = 300
            //   59                   | pop                 ecx
            //   85c0                 | test                eax, eax
            //   0f8479010000         | je                  0x17f
            //   837ddc00             | cmp                 dword ptr [ebp - 0x24], 0
            //   740f                 | je                  0x11
            //   53                   | push                ebx
            //   e8????????           |                     

        $sequence_7 = { 83c0fb 83f803 7740 f745d000080000 7416 03f9 03d9 }
            // n = 7, score = 300
            //   83c0fb               | add                 eax, -5
            //   83f803               | cmp                 eax, 3
            //   7740                 | ja                  0x42
            //   f745d000080000       | test                dword ptr [ebp - 0x30], 0x800
            //   7416                 | je                  0x18
            //   03f9                 | add                 edi, ecx
            //   03d9                 | add                 ebx, ecx

        $sequence_8 = { 50 8b4618 83c004 50 ff15???????? 8b761c 83c40c }
            // n = 7, score = 300
            //   50                   | push                eax
            //   8b4618               | mov                 eax, dword ptr [esi + 0x18]
            //   83c004               | add                 eax, 4
            //   50                   | push                eax
            //   ff15????????         |                     
            //   8b761c               | mov                 esi, dword ptr [esi + 0x1c]
            //   83c40c               | add                 esp, 0xc

        $sequence_9 = { ff15???????? 85c0 7817 56 8d85f8fdffff 50 8d85f0fbffff }
            // n = 7, score = 300
            //   ff15????????         |                     
            //   85c0                 | test                eax, eax
            //   7817                 | js                  0x19
            //   56                   | push                esi
            //   8d85f8fdffff         | lea                 eax, [ebp - 0x208]
            //   50                   | push                eax
            //   8d85f0fbffff         | lea                 eax, [ebp - 0x410]

    condition:
        7 of them and filesize < 827392
}