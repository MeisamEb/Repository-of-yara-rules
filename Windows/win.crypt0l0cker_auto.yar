rule win_crypt0l0cker_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-12-06"
        version = "1"
        description = "Detects win.crypt0l0cker."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.crypt0l0cker"
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
        $sequence_0 = { 85c0 0f8486000000 53 8d58ff c1eb02 56 }
            // n = 6, score = 100
            //   85c0                 | test                eax, eax
            //   0f8486000000         | je                  0x8c
            //   53                   | push                ebx
            //   8d58ff               | lea                 ebx, [eax - 1]
            //   c1eb02               | shr                 ebx, 2
            //   56                   | push                esi

        $sequence_1 = { 8b4640 85c0 0f8479000000 83780c00 7473 6800010000 e8???????? }
            // n = 7, score = 100
            //   8b4640               | mov                 eax, dword ptr [esi + 0x40]
            //   85c0                 | test                eax, eax
            //   0f8479000000         | je                  0x7f
            //   83780c00             | cmp                 dword ptr [eax + 0xc], 0
            //   7473                 | je                  0x75
            //   6800010000           | push                0x100
            //   e8????????           |                     

        $sequence_2 = { 85f6 0f8ead000000 8d4108 8d04b8 894508 8b4510 83c008 }
            // n = 7, score = 100
            //   85f6                 | test                esi, esi
            //   0f8ead000000         | jle                 0xb3
            //   8d4108               | lea                 eax, [ecx + 8]
            //   8d04b8               | lea                 eax, [eax + edi*4]
            //   894508               | mov                 dword ptr [ebp + 8], eax
            //   8b4510               | mov                 eax, dword ptr [ebp + 0x10]
            //   83c008               | add                 eax, 8

        $sequence_3 = { 55 56 8d44240f 8bea 50 6a01 ff35???????? }
            // n = 7, score = 100
            //   55                   | push                ebp
            //   56                   | push                esi
            //   8d44240f             | lea                 eax, [esp + 0xf]
            //   8bea                 | mov                 ebp, edx
            //   50                   | push                eax
            //   6a01                 | push                1
            //   ff35????????         |                     

        $sequence_4 = { 83c40c 33c0 6689043b 897e08 85ff 0f84d6000000 }
            // n = 6, score = 100
            //   83c40c               | add                 esp, 0xc
            //   33c0                 | xor                 eax, eax
            //   6689043b             | mov                 word ptr [ebx + edi], ax
            //   897e08               | mov                 dword ptr [esi + 8], edi
            //   85ff                 | test                edi, edi
            //   0f84d6000000         | je                  0xdc

        $sequence_5 = { 8b4c243c 8b442430 8911 894104 eb17 8bcf e8???????? }
            // n = 7, score = 100
            //   8b4c243c             | mov                 ecx, dword ptr [esp + 0x3c]
            //   8b442430             | mov                 eax, dword ptr [esp + 0x30]
            //   8911                 | mov                 dword ptr [ecx], edx
            //   894104               | mov                 dword ptr [ecx + 4], eax
            //   eb17                 | jmp                 0x19
            //   8bcf                 | mov                 ecx, edi
            //   e8????????           |                     

        $sequence_6 = { b9???????? 3d90010000 0f4cce 8bf1 8b7f04 85f6 74c9 }
            // n = 7, score = 100
            //   b9????????           |                     
            //   3d90010000           | cmp                 eax, 0x190
            //   0f4cce               | cmovl               ecx, esi
            //   8bf1                 | mov                 esi, ecx
            //   8b7f04               | mov                 edi, dword ptr [edi + 4]
            //   85f6                 | test                esi, esi
            //   74c9                 | je                  0xffffffcb

        $sequence_7 = { 8bce e8???????? 8bf8 83c408 85ff 7438 83c705 }
            // n = 7, score = 100
            //   8bce                 | mov                 ecx, esi
            //   e8????????           |                     
            //   8bf8                 | mov                 edi, eax
            //   83c408               | add                 esp, 8
            //   85ff                 | test                edi, edi
            //   7438                 | je                  0x3a
            //   83c705               | add                 edi, 5

        $sequence_8 = { 68???????? 6a05 6840b6b9a6 6a1c e8???????? 83c424 }
            // n = 6, score = 100
            //   68????????           |                     
            //   6a05                 | push                5
            //   6840b6b9a6           | push                0xa6b9b640
            //   6a1c                 | push                0x1c
            //   e8????????           |                     
            //   83c424               | add                 esp, 0x24

        $sequence_9 = { 0f8581020000 807dee81 0f8577020000 ff75ef ff15???????? 8b0f 8bd3 }
            // n = 7, score = 100
            //   0f8581020000         | jne                 0x287
            //   807dee81             | cmp                 byte ptr [ebp - 0x12], 0x81
            //   0f8577020000         | jne                 0x27d
            //   ff75ef               | push                dword ptr [ebp - 0x11]
            //   ff15????????         |                     
            //   8b0f                 | mov                 ecx, dword ptr [edi]
            //   8bd3                 | mov                 edx, ebx

    condition:
        7 of them and filesize < 917504
}