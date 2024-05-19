rule win_classfon_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-12-06"
        version = "1"
        description = "Detects win.classfon."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.classfon"
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
        $sequence_0 = { 85c0 7462 8b542408 8b8e00020000 8b44240c }
            // n = 5, score = 200
            //   85c0                 | test                eax, eax
            //   7462                 | je                  0x64
            //   8b542408             | mov                 edx, dword ptr [esp + 8]
            //   8b8e00020000         | mov                 ecx, dword ptr [esi + 0x200]
            //   8b44240c             | mov                 eax, dword ptr [esp + 0xc]

        $sequence_1 = { 8b742418 83f8ff 898600020000 7508 5f 33c0 }
            // n = 6, score = 200
            //   8b742418             | mov                 esi, dword ptr [esp + 0x18]
            //   83f8ff               | cmp                 eax, -1
            //   898600020000         | mov                 dword ptr [esi + 0x200], eax
            //   7508                 | jne                 0xa
            //   5f                   | pop                 edi
            //   33c0                 | xor                 eax, eax

        $sequence_2 = { 50 ffd3 89be04020000 8b8600020000 3bc7 740e }
            // n = 6, score = 200
            //   50                   | push                eax
            //   ffd3                 | call                ebx
            //   89be04020000         | mov                 dword ptr [esi + 0x204], edi
            //   8b8600020000         | mov                 eax, dword ptr [esi + 0x200]
            //   3bc7                 | cmp                 eax, edi
            //   740e                 | je                  0x10

        $sequence_3 = { 8b1d???????? a1???????? 50 57 ff15???????? }
            // n = 5, score = 200
            //   8b1d????????         |                     
            //   a1????????           |                     
            //   50                   | push                eax
            //   57                   | push                edi
            //   ff15????????         |                     

        $sequence_4 = { 8d4c241c 8d542424 51 8b4c2414 8d442424 52 }
            // n = 6, score = 200
            //   8d4c241c             | lea                 ecx, [esp + 0x1c]
            //   8d542424             | lea                 edx, [esp + 0x24]
            //   51                   | push                ecx
            //   8b4c2414             | mov                 ecx, dword ptr [esp + 0x14]
            //   8d442424             | lea                 eax, [esp + 0x24]
            //   52                   | push                edx

        $sequence_5 = { 8d842430020000 50 ffd7 8d8c2430010000 51 ffd7 8b542424 }
            // n = 7, score = 200
            //   8d842430020000       | lea                 eax, [esp + 0x230]
            //   50                   | push                eax
            //   ffd7                 | call                edi
            //   8d8c2430010000       | lea                 ecx, [esp + 0x130]
            //   51                   | push                ecx
            //   ffd7                 | call                edi
            //   8b542424             | mov                 edx, dword ptr [esp + 0x24]

        $sequence_6 = { 6a00 6a00 6a00 6802000004 6a00 899610020000 }
            // n = 6, score = 200
            //   6a00                 | push                0
            //   6a00                 | push                0
            //   6a00                 | push                0
            //   6802000004           | push                0x4000002
            //   6a00                 | push                0
            //   899610020000         | mov                 dword ptr [esi + 0x210], edx

        $sequence_7 = { 68???????? 51 c744242802000000 c744242c2c010000 ff15???????? }
            // n = 5, score = 200
            //   68????????           |                     
            //   51                   | push                ecx
            //   c744242802000000     | mov                 dword ptr [esp + 0x28], 2
            //   c744242c2c010000     | mov                 dword ptr [esp + 0x2c], 0x12c
            //   ff15????????         |                     

        $sequence_8 = { 50 ff15???????? 8bd8 83fbff 0f849c000000 8b470c 8b5708 }
            // n = 7, score = 200
            //   50                   | push                eax
            //   ff15????????         |                     
            //   8bd8                 | mov                 ebx, eax
            //   83fbff               | cmp                 ebx, -1
            //   0f849c000000         | je                  0xa2
            //   8b470c               | mov                 eax, dword ptr [edi + 0xc]
            //   8b5708               | mov                 edx, dword ptr [edi + 8]

        $sequence_9 = { 0f85c3000000 8b460c 85c0 0f84c0000000 03c5 }
            // n = 5, score = 200
            //   0f85c3000000         | jne                 0xc9
            //   8b460c               | mov                 eax, dword ptr [esi + 0xc]
            //   85c0                 | test                eax, eax
            //   0f84c0000000         | je                  0xc6
            //   03c5                 | add                 eax, ebp

    condition:
        7 of them and filesize < 73728
}