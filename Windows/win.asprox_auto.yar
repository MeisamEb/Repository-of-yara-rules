rule win_asprox_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-12-06"
        version = "1"
        description = "Detects win.asprox."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.asprox"
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
        $sequence_0 = { 85c0 740f 6a00 ff15???????? 50 ff15???????? ff15???????? }
            // n = 7, score = 1200
            //   85c0                 | test                eax, eax
            //   740f                 | je                  0x11
            //   6a00                 | push                0
            //   ff15????????         |                     
            //   50                   | push                eax
            //   ff15????????         |                     
            //   ff15????????         |                     

        $sequence_1 = { ff15???????? 6a00 6a00 8b5518 52 8b45c4 }
            // n = 6, score = 1200
            //   ff15????????         |                     
            //   6a00                 | push                0
            //   6a00                 | push                0
            //   8b5518               | mov                 edx, dword ptr [ebp + 0x18]
            //   52                   | push                edx
            //   8b45c4               | mov                 eax, dword ptr [ebp - 0x3c]

        $sequence_2 = { 898558ffffff 8b8560ffffff 898570ffffff 8b4ddc 898d30ffffff c78534ffffff00000000 }
            // n = 6, score = 1200
            //   898558ffffff         | mov                 dword ptr [ebp - 0xa8], eax
            //   8b8560ffffff         | mov                 eax, dword ptr [ebp - 0xa0]
            //   898570ffffff         | mov                 dword ptr [ebp - 0x90], eax
            //   8b4ddc               | mov                 ecx, dword ptr [ebp - 0x24]
            //   898d30ffffff         | mov                 dword ptr [ebp - 0xd0], ecx
            //   c78534ffffff00000000     | mov    dword ptr [ebp - 0xcc], 0

        $sequence_3 = { 0fb655fd 83fa01 0f8503010000 c6859ffeffff00 68???????? ff15???????? 8985a4feffff }
            // n = 7, score = 1200
            //   0fb655fd             | movzx               edx, byte ptr [ebp - 3]
            //   83fa01               | cmp                 edx, 1
            //   0f8503010000         | jne                 0x109
            //   c6859ffeffff00       | mov                 byte ptr [ebp - 0x161], 0
            //   68????????           |                     
            //   ff15????????         |                     
            //   8985a4feffff         | mov                 dword ptr [ebp - 0x15c], eax

        $sequence_4 = { ff45fc 83c004 817dfcff000000 7ede 83a34404000000 ba00010000 8d8348040000 }
            // n = 7, score = 1200
            //   ff45fc               | inc                 dword ptr [ebp - 4]
            //   83c004               | add                 eax, 4
            //   817dfcff000000       | cmp                 dword ptr [ebp - 4], 0xff
            //   7ede                 | jle                 0xffffffe0
            //   83a34404000000       | and                 dword ptr [ebx + 0x444], 0
            //   ba00010000           | mov                 edx, 0x100
            //   8d8348040000         | lea                 eax, [ebx + 0x448]

        $sequence_5 = { 8d849d20feffff 894dc0 8945b0 8b00 8bcf 2bc8 895dbc }
            // n = 7, score = 1200
            //   8d849d20feffff       | lea                 eax, [ebp + ebx*4 - 0x1e0]
            //   894dc0               | mov                 dword ptr [ebp - 0x40], ecx
            //   8945b0               | mov                 dword ptr [ebp - 0x50], eax
            //   8b00                 | mov                 eax, dword ptr [eax]
            //   8bcf                 | mov                 ecx, edi
            //   2bc8                 | sub                 ecx, eax
            //   895dbc               | mov                 dword ptr [ebp - 0x44], ebx

        $sequence_6 = { 51 8b952cffffff 52 ff15???????? 898558ffffff 8b8560ffffff 898570ffffff }
            // n = 7, score = 1200
            //   51                   | push                ecx
            //   8b952cffffff         | mov                 edx, dword ptr [ebp - 0xd4]
            //   52                   | push                edx
            //   ff15????????         |                     
            //   898558ffffff         | mov                 dword ptr [ebp - 0xa8], eax
            //   8b8560ffffff         | mov                 eax, dword ptr [ebp - 0xa0]
            //   898570ffffff         | mov                 dword ptr [ebp - 0x90], eax

        $sequence_7 = { 57 395d08 0f8498000000 8b750c 3bf3 0f848d000000 8b7d10 }
            // n = 7, score = 1200
            //   57                   | push                edi
            //   395d08               | cmp                 dword ptr [ebp + 8], ebx
            //   0f8498000000         | je                  0x9e
            //   8b750c               | mov                 esi, dword ptr [ebp + 0xc]
            //   3bf3                 | cmp                 esi, ebx
            //   0f848d000000         | je                  0x93
            //   8b7d10               | mov                 edi, dword ptr [ebp + 0x10]

        $sequence_8 = { 50 ff15???????? 898558ffffff 8b4dd8 }
            // n = 4, score = 1200
            //   50                   | push                eax
            //   ff15????????         |                     
            //   898558ffffff         | mov                 dword ptr [ebp - 0xa8], eax
            //   8b4dd8               | mov                 ecx, dword ptr [ebp - 0x28]

        $sequence_9 = { 8d840a00100000 50 6a00 8b0d???????? 51 ff15???????? 8945fc }
            // n = 7, score = 1200
            //   8d840a00100000       | lea                 eax, [edx + ecx + 0x1000]
            //   50                   | push                eax
            //   6a00                 | push                0
            //   8b0d????????         |                     
            //   51                   | push                ecx
            //   ff15????????         |                     
            //   8945fc               | mov                 dword ptr [ebp - 4], eax

    condition:
        7 of them and filesize < 155648
}