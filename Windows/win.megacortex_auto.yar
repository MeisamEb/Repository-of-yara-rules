rule win_megacortex_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-12-06"
        version = "1"
        description = "Detects win.megacortex."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.megacortex"
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
        $sequence_0 = { 50 e8???????? 8b7d0c 8bf0 83c40c 85f6 0f8517010000 }
            // n = 7, score = 400
            //   50                   | push                eax
            //   e8????????           |                     
            //   8b7d0c               | mov                 edi, dword ptr [ebp + 0xc]
            //   8bf0                 | mov                 esi, eax
            //   83c40c               | add                 esp, 0xc
            //   85f6                 | test                esi, esi
            //   0f8517010000         | jne                 0x11d

        $sequence_1 = { 895d84 7202 8b06 6a00 6800000003 6a03 6a00 }
            // n = 7, score = 400
            //   895d84               | mov                 dword ptr [ebp - 0x7c], ebx
            //   7202                 | jb                  4
            //   8b06                 | mov                 eax, dword ptr [esi]
            //   6a00                 | push                0
            //   6800000003           | push                0x3000000
            //   6a03                 | push                3
            //   6a00                 | push                0

        $sequence_2 = { 50 8d85c4fdffff 50 e8???????? 8b95e0fdffff 83c408 c645fc01 }
            // n = 7, score = 400
            //   50                   | push                eax
            //   8d85c4fdffff         | lea                 eax, [ebp - 0x23c]
            //   50                   | push                eax
            //   e8????????           |                     
            //   8b95e0fdffff         | mov                 edx, dword ptr [ebp - 0x220]
            //   83c408               | add                 esp, 8
            //   c645fc01             | mov                 byte ptr [ebp - 4], 1

        $sequence_3 = { 8d4101 2bf0 89450c 8975ec ff7508 83fe03 0f823a020000 }
            // n = 7, score = 400
            //   8d4101               | lea                 eax, [ecx + 1]
            //   2bf0                 | sub                 esi, eax
            //   89450c               | mov                 dword ptr [ebp + 0xc], eax
            //   8975ec               | mov                 dword ptr [ebp - 0x14], esi
            //   ff7508               | push                dword ptr [ebp + 8]
            //   83fe03               | cmp                 esi, 3
            //   0f823a020000         | jb                  0x240

        $sequence_4 = { e8???????? 8b4508 8d4d08 83c404 c645f801 8945fc c7450800000000 }
            // n = 7, score = 400
            //   e8????????           |                     
            //   8b4508               | mov                 eax, dword ptr [ebp + 8]
            //   8d4d08               | lea                 ecx, [ebp + 8]
            //   83c404               | add                 esp, 4
            //   c645f801             | mov                 byte ptr [ebp - 8], 1
            //   8945fc               | mov                 dword ptr [ebp - 4], eax
            //   c7450800000000       | mov                 dword ptr [ebp + 8], 0

        $sequence_5 = { 83f81f 0f87b70e0000 52 51 e8???????? 83c408 33c0 }
            // n = 7, score = 400
            //   83f81f               | cmp                 eax, 0x1f
            //   0f87b70e0000         | ja                  0xebd
            //   52                   | push                edx
            //   51                   | push                ecx
            //   e8????????           |                     
            //   83c408               | add                 esp, 8
            //   33c0                 | xor                 eax, eax

        $sequence_6 = { f7d8 1bc0 23c1 50 8b45ec 51 8bf4 }
            // n = 7, score = 400
            //   f7d8                 | neg                 eax
            //   1bc0                 | sbb                 eax, eax
            //   23c1                 | and                 eax, ecx
            //   50                   | push                eax
            //   8b45ec               | mov                 eax, dword ptr [ebp - 0x14]
            //   51                   | push                ecx
            //   8bf4                 | mov                 esi, esp

        $sequence_7 = { 1bf6 23f1 8bce 2bca 85f6 be01000000 0f44ce }
            // n = 7, score = 400
            //   1bf6                 | sbb                 esi, esi
            //   23f1                 | and                 esi, ecx
            //   8bce                 | mov                 ecx, esi
            //   2bca                 | sub                 ecx, edx
            //   85f6                 | test                esi, esi
            //   be01000000           | mov                 esi, 1
            //   0f44ce               | cmove               ecx, esi

        $sequence_8 = { e8???????? 83c40c 8d8d2cffffff e8???????? 8d8d44ffffff c645fc2e e8???????? }
            // n = 7, score = 400
            //   e8????????           |                     
            //   83c40c               | add                 esp, 0xc
            //   8d8d2cffffff         | lea                 ecx, [ebp - 0xd4]
            //   e8????????           |                     
            //   8d8d44ffffff         | lea                 ecx, [ebp - 0xbc]
            //   c645fc2e             | mov                 byte ptr [ebp - 4], 0x2e
            //   e8????????           |                     

        $sequence_9 = { 6a00 6a00 68000000c0 8d45cc c645fc05 50 8d8d28feffff }
            // n = 7, score = 400
            //   6a00                 | push                0
            //   6a00                 | push                0
            //   68000000c0           | push                0xc0000000
            //   8d45cc               | lea                 eax, [ebp - 0x34]
            //   c645fc05             | mov                 byte ptr [ebp - 4], 5
            //   50                   | push                eax
            //   8d8d28feffff         | lea                 ecx, [ebp - 0x1d8]

    condition:
        7 of them and filesize < 1556480
}