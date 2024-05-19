rule win_mirrorkey_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-12-06"
        version = "1"
        description = "Detects win.mirrorkey."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.mirrorkey"
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
        $sequence_0 = { 0f57c0 0f1145d8 ff15???????? c70016000000 ff15???????? 8d45d4 50 }
            // n = 7, score = 100
            //   0f57c0               | xorps               xmm0, xmm0
            //   0f1145d8             | movups              xmmword ptr [ebp - 0x28], xmm0
            //   ff15????????         |                     
            //   c70016000000         | mov                 dword ptr [eax], 0x16
            //   ff15????????         |                     
            //   8d45d4               | lea                 eax, [ebp - 0x2c]
            //   50                   | push                eax

        $sequence_1 = { 895914 0fb77806 85ff 7414 8d4b10 8b4104 0301 }
            // n = 7, score = 100
            //   895914               | mov                 dword ptr [ecx + 0x14], ebx
            //   0fb77806             | movzx               edi, word ptr [eax + 6]
            //   85ff                 | test                edi, edi
            //   7414                 | je                  0x16
            //   8d4b10               | lea                 ecx, [ebx + 0x10]
            //   8b4104               | mov                 eax, dword ptr [ecx + 4]
            //   0301                 | add                 eax, dword ptr [ecx]

        $sequence_2 = { ff15???????? 83c40c c744241000000000 33c0 c644242c00 8944242d 8d742433 }
            // n = 7, score = 100
            //   ff15????????         |                     
            //   83c40c               | add                 esp, 0xc
            //   c744241000000000     | mov                 dword ptr [esp + 0x10], 0
            //   33c0                 | xor                 eax, eax
            //   c644242c00           | mov                 byte ptr [esp + 0x2c], 0
            //   8944242d             | mov                 dword ptr [esp + 0x2d], eax
            //   8d742433             | lea                 esi, [esp + 0x33]

        $sequence_3 = { 8bf9 8b7508 8d45a4 50 }
            // n = 4, score = 100
            //   8bf9                 | mov                 edi, ecx
            //   8b7508               | mov                 esi, dword ptr [ebp + 8]
            //   8d45a4               | lea                 eax, [ebp - 0x5c]
            //   50                   | push                eax

        $sequence_4 = { 83c004 8b7dfc 83ff01 7f87 5f }
            // n = 5, score = 100
            //   83c004               | add                 eax, 4
            //   8b7dfc               | mov                 edi, dword ptr [ebp - 4]
            //   83ff01               | cmp                 edi, 1
            //   7f87                 | jg                  0xffffff89
            //   5f                   | pop                 edi

        $sequence_5 = { 730b 68???????? ff15???????? 894610 837e1410 }
            // n = 5, score = 100
            //   730b                 | jae                 0xd
            //   68????????           |                     
            //   ff15????????         |                     
            //   894610               | mov                 dword ptr [esi + 0x10], eax
            //   837e1410             | cmp                 dword ptr [esi + 0x14], 0x10

        $sequence_6 = { 897508 2bda ebaa 8d5aff 83c704 eba2 }
            // n = 6, score = 100
            //   897508               | mov                 dword ptr [ebp + 8], esi
            //   2bda                 | sub                 ebx, edx
            //   ebaa                 | jmp                 0xffffffac
            //   8d5aff               | lea                 ebx, [edx - 1]
            //   83c704               | add                 edi, 4
            //   eba2                 | jmp                 0xffffffa4

        $sequence_7 = { 8d4dd8 50 e8???????? 8d4d8c e8???????? 837de808 7d15 }
            // n = 7, score = 100
            //   8d4dd8               | lea                 ecx, [ebp - 0x28]
            //   50                   | push                eax
            //   e8????????           |                     
            //   8d4d8c               | lea                 ecx, [ebp - 0x74]
            //   e8????????           |                     
            //   837de808             | cmp                 dword ptr [ebp - 0x18], 8
            //   7d15                 | jge                 0x17

        $sequence_8 = { 6a00 51 89542414 ff15???????? 83c408 83f8ff }
            // n = 6, score = 100
            //   6a00                 | push                0
            //   51                   | push                ecx
            //   89542414             | mov                 dword ptr [esp + 0x14], edx
            //   ff15????????         |                     
            //   83c408               | add                 esp, 8
            //   83f8ff               | cmp                 eax, -1

        $sequence_9 = { 53 8b5d0c 894dfc 8b4d08 56 }
            // n = 5, score = 100
            //   53                   | push                ebx
            //   8b5d0c               | mov                 ebx, dword ptr [ebp + 0xc]
            //   894dfc               | mov                 dword ptr [ebp - 4], ecx
            //   8b4d08               | mov                 ecx, dword ptr [ebp + 8]
            //   56                   | push                esi

    condition:
        7 of them and filesize < 117760
}