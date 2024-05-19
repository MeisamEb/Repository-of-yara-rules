rule win_hikit_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-12-06"
        version = "1"
        description = "Detects win.hikit."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.hikit"
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
        $sequence_0 = { 33c0 e9???????? 48 8d44244e 48 898424b8000000 48 }
            // n = 7, score = 100
            //   33c0                 | xor                 eax, eax
            //   e9????????           |                     
            //   48                   | dec                 eax
            //   8d44244e             | lea                 eax, [esp + 0x4e]
            //   48                   | dec                 eax
            //   898424b8000000       | mov                 dword ptr [esp + 0xb8], eax
            //   48                   | dec                 eax

        $sequence_1 = { 89442428 48 837c242800 747e 33c0 83f801 7444 }
            // n = 7, score = 100
            //   89442428             | mov                 dword ptr [esp + 0x28], eax
            //   48                   | dec                 eax
            //   837c242800           | cmp                 dword ptr [esp + 0x28], 0
            //   747e                 | je                  0x80
            //   33c0                 | xor                 eax, eax
            //   83f801               | cmp                 eax, 1
            //   7444                 | je                  0x46

        $sequence_2 = { c7432000000000 48 8b442430 48 83781800 741c 48 }
            // n = 7, score = 100
            //   c7432000000000       | mov                 dword ptr [ebx + 0x20], 0
            //   48                   | dec                 eax
            //   8b442430             | mov                 eax, dword ptr [esp + 0x30]
            //   48                   | dec                 eax
            //   83781800             | cmp                 dword ptr [eax + 0x18], 0
            //   741c                 | je                  0x1e
            //   48                   | dec                 eax

        $sequence_3 = { e8???????? 8bf8 85ff 7408 81ff20a00400 7508 8b06 }
            // n = 7, score = 100
            //   e8????????           |                     
            //   8bf8                 | mov                 edi, eax
            //   85ff                 | test                edi, edi
            //   7408                 | je                  0xa
            //   81ff20a00400         | cmp                 edi, 0x4a020
            //   7508                 | jne                 0xa
            //   8b06                 | mov                 eax, dword ptr [esi]

        $sequence_4 = { 6a00 50 ff15???????? 85c0 0f84a3000000 33ff }
            // n = 6, score = 100
            //   6a00                 | push                0
            //   50                   | push                eax
            //   ff15????????         |                     
            //   85c0                 | test                eax, eax
            //   0f84a3000000         | je                  0xa9
            //   33ff                 | xor                 edi, edi

        $sequence_5 = { 8bd5 8bce e8???????? f7d8 1bc0 40 894608 }
            // n = 7, score = 100
            //   8bd5                 | mov                 edx, ebp
            //   8bce                 | mov                 ecx, esi
            //   e8????????           |                     
            //   f7d8                 | neg                 eax
            //   1bc0                 | sbb                 eax, eax
            //   40                   | inc                 eax
            //   894608               | mov                 dword ptr [esi + 8], eax

        $sequence_6 = { 6689046e 8b2d???????? 53 ffd5 56 68???????? 8d4c2410 }
            // n = 7, score = 100
            //   6689046e             | mov                 word ptr [esi + ebp*2], ax
            //   8b2d????????         |                     
            //   53                   | push                ebx
            //   ffd5                 | call                ebp
            //   56                   | push                esi
            //   68????????           |                     
            //   8d4c2410             | lea                 ecx, [esp + 0x10]

        $sequence_7 = { 8d05b2210000 48 89442428 eb0d 48 8b442428 }
            // n = 6, score = 100
            //   8d05b2210000         | lea                 eax, [0x21b2]
            //   48                   | dec                 eax
            //   89442428             | mov                 dword ptr [esp + 0x28], eax
            //   eb0d                 | jmp                 0xf
            //   48                   | dec                 eax
            //   8b442428             | mov                 eax, dword ptr [esp + 0x28]

        $sequence_8 = { 894120 48 8b4c2460 8b44240c 894104 48 8b4c2460 }
            // n = 7, score = 100
            //   894120               | mov                 dword ptr [ecx + 0x20], eax
            //   48                   | dec                 eax
            //   8b4c2460             | mov                 ecx, dword ptr [esp + 0x60]
            //   8b44240c             | mov                 eax, dword ptr [esp + 0xc]
            //   894104               | mov                 dword ptr [ecx + 4], eax
            //   48                   | dec                 eax
            //   8b4c2460             | mov                 ecx, dword ptr [esp + 0x60]

        $sequence_9 = { 4c 8d442478 baffff1f00 ff15???????? 898424b0000000 83bc24b000000000 7444 }
            // n = 7, score = 100
            //   4c                   | dec                 esp
            //   8d442478             | lea                 eax, [esp + 0x78]
            //   baffff1f00           | mov                 edx, 0x1fffff
            //   ff15????????         |                     
            //   898424b0000000       | mov                 dword ptr [esp + 0xb0], eax
            //   83bc24b000000000     | cmp                 dword ptr [esp + 0xb0], 0
            //   7444                 | je                  0x46

    condition:
        7 of them and filesize < 573440
}