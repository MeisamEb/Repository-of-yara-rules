rule win_icedid_downloader_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-12-06"
        version = "1"
        description = "Detects win.icedid_downloader."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.icedid_downloader"
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
        $sequence_0 = { eb1c 83f803 7519 8b06 }
            // n = 4, score = 400
            //   eb1c                 | jmp                 0x1e
            //   83f803               | cmp                 eax, 3
            //   7519                 | jne                 0x1b
            //   8b06                 | mov                 eax, dword ptr [esi]

        $sequence_1 = { e8???????? 8365f400 8d45b0 8945f8 64a118000000 59 59 }
            // n = 7, score = 400
            //   e8????????           |                     
            //   8365f400             | and                 dword ptr [ebp - 0xc], 0
            //   8d45b0               | lea                 eax, [ebp - 0x50]
            //   8945f8               | mov                 dword ptr [ebp - 8], eax
            //   64a118000000         | mov                 eax, dword ptr fs:[0x18]
            //   59                   | pop                 ecx
            //   59                   | pop                 ecx

        $sequence_2 = { 8d4568 50 8d4558 50 8d45c8 6a04 }
            // n = 6, score = 400
            //   8d4568               | lea                 eax, [ebp + 0x68]
            //   50                   | push                eax
            //   8d4558               | lea                 eax, [ebp + 0x58]
            //   50                   | push                eax
            //   8d45c8               | lea                 eax, [ebp - 0x38]
            //   6a04                 | push                4

        $sequence_3 = { 8d75d4 33c0 c745dc00330000 6a16 }
            // n = 4, score = 400
            //   8d75d4               | lea                 esi, [ebp - 0x2c]
            //   33c0                 | xor                 eax, eax
            //   c745dc00330000       | mov                 dword ptr [ebp - 0x24], 0x3300
            //   6a16                 | push                0x16

        $sequence_4 = { ff7508 895dfc 895df4 895df8 895dec 895de4 }
            // n = 6, score = 400
            //   ff7508               | push                dword ptr [ebp + 8]
            //   895dfc               | mov                 dword ptr [ebp - 4], ebx
            //   895df4               | mov                 dword ptr [ebp - 0xc], ebx
            //   895df8               | mov                 dword ptr [ebp - 8], ebx
            //   895dec               | mov                 dword ptr [ebp - 0x14], ebx
            //   895de4               | mov                 dword ptr [ebp - 0x1c], ebx

        $sequence_5 = { ffd7 ff15???????? 83f87a 0f85e9000000 8b442410 85c0 0f84dd000000 }
            // n = 7, score = 400
            //   ffd7                 | call                edi
            //   ff15????????         |                     
            //   83f87a               | cmp                 eax, 0x7a
            //   0f85e9000000         | jne                 0xef
            //   8b442410             | mov                 eax, dword ptr [esp + 0x10]
            //   85c0                 | test                eax, eax
            //   0f84dd000000         | je                  0xe3

        $sequence_6 = { 894528 8d4518 50 ff15???????? }
            // n = 4, score = 400
            //   894528               | mov                 dword ptr [ebp + 0x28], eax
            //   8d4518               | lea                 eax, [ebp + 0x18]
            //   50                   | push                eax
            //   ff15????????         |                     

        $sequence_7 = { 89442408 8944240c 8bf0 8944241c 8d442408 }
            // n = 5, score = 400
            //   89442408             | mov                 dword ptr [esp + 8], eax
            //   8944240c             | mov                 dword ptr [esp + 0xc], eax
            //   8bf0                 | mov                 esi, eax
            //   8944241c             | mov                 dword ptr [esp + 0x1c], eax
            //   8d442408             | lea                 eax, [esp + 8]

        $sequence_8 = { 50 53 53 53 6a04 ff75fc e8???????? }
            // n = 7, score = 400
            //   50                   | push                eax
            //   53                   | push                ebx
            //   53                   | push                ebx
            //   53                   | push                ebx
            //   6a04                 | push                4
            //   ff75fc               | push                dword ptr [ebp - 4]
            //   e8????????           |                     

        $sequence_9 = { 6689442434 8d54242c 8b442414 52 57 }
            // n = 5, score = 400
            //   6689442434           | mov                 word ptr [esp + 0x34], ax
            //   8d54242c             | lea                 edx, [esp + 0x2c]
            //   8b442414             | mov                 eax, dword ptr [esp + 0x14]
            //   52                   | push                edx
            //   57                   | push                edi

    condition:
        7 of them and filesize < 40960
}