rule win_snatchcrypto_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-12-06"
        version = "1"
        description = "Detects win.snatchcrypto."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.snatchcrypto"
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
        $sequence_0 = { 7528 488bd3 488bcf e8???????? 448b87a8020000 488d15d43f0200 448906 }
            // n = 7, score = 200
            //   7528                 | mov                 dword ptr [eax], 0x16
            //   488bd3               | jmp                 0x648
            //   488bcf               | dec                 esp
            //   e8????????           |                     
            //   448b87a8020000       | lea                 esp, [0x608a1]
            //   488d15d43f0200       | mov                 dword ptr [ebx], 0x80
            //   448906               | dec                 esp

        $sequence_1 = { 4c8d442430 e8???????? 85c0 0f8533010000 8d7058 8d6814 eb36 }
            // n = 7, score = 200
            //   4c8d442430           | test                al, al
            //   e8????????           |                     
            //   85c0                 | jns                 0x42f
            //   0f8533010000         | mov                 eax, 0xfffffe8b
            //   8d7058               | ret                 
            //   8d6814               | test                al, 0x40
            //   eb36                 | jne                 0x159

        $sequence_2 = { ff15???????? 488bf8 4885c0 750f ff15???????? 488d15f7730200 eb27 }
            // n = 7, score = 200
            //   ff15????????         |                     
            //   488bf8               | xor                 ecx, ecx
            //   4885c0               | inc                 esp
            //   750f                 | xor                 ebx, dword ptr [esi + 4]
            //   ff15????????         |                     
            //   488d15f7730200       | movzx               ecx, al
            //   eb27                 | mov                 eax, ebp

        $sequence_3 = { 0fb74348 ff4320 448b4b20 ffc0 488d1586a70200 440fb7c0 e8???????? }
            // n = 7, score = 200
            //   0fb74348             | test                ecx, ecx
            //   ff4320               | je                  0x1060
            //   448b4b20             | dec                 esp
            //   ffc0                 | mov                 dword ptr [ebx + 0x130], esp
            //   488d1586a70200       | dec                 eax
            //   440fb7c0             | mov                 ecx, dword ptr [ebx + 0x130]
            //   e8????????           |                     

        $sequence_4 = { 48894598 4889442458 4889442460 0fb6474d 41c1e608 440bf0 0fb6474e }
            // n = 7, score = 200
            //   48894598             | inc                 eax
            //   4889442458           | dec                 ecx
            //   4889442460           | jne                 0x69
            //   0fb6474d             | dec                 esp
            //   41c1e608             | lea                 eax, [0x64ea4]
            //   440bf0               | dec                 eax
            //   0fb6474e             | mov                 ecx, edi

        $sequence_5 = { 440fb64c3580 4c8d05a73f0100 ba03000000 488bcf e8???????? 48ffc6 4883c702 }
            // n = 7, score = 200
            //   440fb64c3580         | dec                 eax
            //   4c8d05a73f0100       | add                 ecx, 0x528
            //   ba03000000           | mov                 esi, eax
            //   488bcf               | test                eax, eax
            //   e8????????           |                     
            //   48ffc6               | jne                 0x1e51
            //   4883c702             | dec                 eax

        $sequence_6 = { 4883ec38 ffca 744c 81faff1f0000 754b 33c0 4c8905???????? }
            // n = 7, score = 200
            //   4883ec38             | cmp                 edx, 0x3c
            //   ffca                 | dec                 eax
            //   744c                 | lea                 eax, [0x284aa]
            //   81faff1f0000         | dec                 esp
            //   754b                 | mov                 dword ptr [esp + 0x50], esi
            //   33c0                 | dec                 esp
            //   4c8905????????       |                     

        $sequence_7 = { e8???????? 8bf8 85c0 7907 b8c0feffff eb3f 0fb78394030000 }
            // n = 7, score = 200
            //   e8????????           |                     
            //   8bf8                 | inc                 ecx
            //   85c0                 | mov                 ecx, esi
            //   7907                 | inc                 esp
            //   b8c0feffff           | add                 ecx, dword ptr [esp + edi + 0x30]
            //   eb3f                 | inc                 ecx
            //   0fb78394030000       | or                  ecx, edi

        $sequence_8 = { 83c702 3ac1 760a b8bafeffff e9???????? 7368 0fb78b94030000 }
            // n = 7, score = 200
            //   83c702               | je                  0x10a6
            //   3ac1                 | test                eax, eax
            //   760a                 | mov                 ebx, eax
            //   b8bafeffff           | mov                 edx, ebx
            //   e9????????           |                     
            //   7368                 | dec                 eax
            //   0fb78b94030000       | mov                 ecx, ebp

        $sequence_9 = { 488d15e98d0200 498bce 4c8bc0 e8???????? 8d7e3e 448be3 e9???????? }
            // n = 7, score = 200
            //   488d15e98d0200       | dec                 esp
            //   498bce               | lea                 ecx, [ebp - 0x50]
            //   4c8bc0               | dec                 eax
            //   e8????????           |                     
            //   8d7e3e               | lea                 ecx, [ebp - 0x50]
            //   448be3               | jbe                 0x1d8
            //   e9????????           |                     

    condition:
        7 of them and filesize < 1400832
}