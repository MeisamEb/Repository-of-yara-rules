rule win_polyvice_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-12-06"
        version = "1"
        description = "Detects win.polyvice."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.polyvice"
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
        $sequence_0 = { 4589cf 4131ed 41c1cf06 4501e5 4589fc 4589cf 41c1cf0b }
            // n = 7, score = 200
            //   4589cf               | ror                 ebx, 0xd
            //   4131ed               | inc                 ebp
            //   41c1cf06             | add                 esi, eax
            //   4501e5               | inc                 esp
            //   4589fc               | xor                 ebx, ecx
            //   4589cf               | inc                 ebp
            //   41c1cf0b             | mov                 ecx, edx

        $sequence_1 = { c1c207 31d1 4489c2 c1ca02 01f1 89d6 }
            // n = 6, score = 200
            //   c1c207               | mov                 eax, esi
            //   31d1                 | dec                 eax
            //   4489c2               | add                 esp, 0x50
            //   c1ca02               | dec                 eax
            //   01f1                 | mov                 ecx, ebx
            //   89d6                 | dec                 eax

        $sequence_2 = { 448b442438 01d1 01c1 4489c2 4489c0 c1c807 }
            // n = 6, score = 200
            //   448b442438           | dec                 eax
            //   01d1                 | mov                 dword ptr [ebx + 0x202f8], 0
            //   01c1                 | dec                 eax
            //   4489c2               | mov                 ecx, esi
            //   4489c0               | dec                 eax
            //   c1c807               | lea                 ecx, [ebx + 0x20058]

        $sequence_3 = { 4409f6 89f5 89c6 4421f6 4421e5 09f5 4489de }
            // n = 7, score = 200
            //   4409f6               | inc                 ecx
            //   89f5                 | ror                 ebp, 7
            //   89c6                 | inc                 esp
            //   4421f6               | or                  ebx, edx
            //   4421e5               | mov                 esi, ebx
            //   09f5                 | inc                 esp
            //   4489de               | mov                 ebx, esi

        $sequence_4 = { 4c8d150fc20000 4801de 4c8d0d05ca0000 4c8d05fec50000 4883c310 8b3b 89f9 }
            // n = 7, score = 200
            //   4c8d150fc20000       | inc                 esp
            //   4801de               | movzx               ecx, word ptr [ebp - 0x30]
            //   4c8d0d05ca0000       | dec                 eax
            //   4c8d05fec50000       | sub                 esp, eax
            //   4883c310             | dec                 esp
            //   8b3b                 | mov                 ecx, edi
            //   89f9                 | dec                 eax

        $sequence_5 = { 66418949fe 89e9 d3e8 4d39cb 75e2 4889d8 4829f0 }
            // n = 7, score = 200
            //   66418949fe           | dec                 eax
            //   89e9                 | mov                 edx, dword ptr [eax + 0x28]
            //   d3e8                 | dec                 eax
            //   4d39cb               | mov                 dword ptr [esp + 0x120], edx
            //   75e2                 | dec                 eax
            //   4889d8               | mov                 edx, dword ptr [eax + 0x30]
            //   4829f0               | dec                 eax

        $sequence_6 = { e9???????? 488d4dcc 31f6 e8???????? 4c8d3531650000 4989c5 eb2d }
            // n = 7, score = 200
            //   e9????????           |                     
            //   488d4dcc             | mov                 ecx, edi
            //   31f6                 | mov                 eax, 1
            //   e8????????           |                     
            //   4c8d3531650000       | jmp                 0x2cf
            //   4989c5               | dec                 esp
            //   eb2d                 | mov                 eax, dword ptr [ebp - 0x50]

        $sequence_7 = { 53 4881ec38030000 488dac2480000000 410fb7400c 410fb77840 450fb77822 668945bc }
            // n = 7, score = 200
            //   53                   | lea                 ebp, [esp + 0x20]
            //   4881ec38030000       | dec                 eax
            //   488dac2480000000     | shl                 edi, 4
            //   410fb7400c           | dec                 ecx
            //   410fb77840           | lea                 ebp, [esp + 4]
            //   450fb77822           | dec                 eax
            //   668945bc             | add                 edi, ecx

        $sequence_8 = { 450fb6ec bf20000000 c744242800000000 0fb7db 4531ff }
            // n = 5, score = 200
            //   450fb6ec             | dec                 esp
            //   bf20000000           | mov                 eax, dword ptr [ebp + 0x30]
            //   c744242800000000     | add                 esi, dword ptr [esp + 0xa8]
            //   0fb7db               | inc                 ecx
            //   4531ff               | cmp                 ebp, ebx

        $sequence_9 = { 0fb7c9 0fb74c4b02 664183f802 7508 6683f902 410f44c3 450fb7ed }
            // n = 7, score = 200
            //   0fb7c9               | mov                 ecx, eax
            //   0fb74c4b02           | inc                 esp
            //   664183f802           | xor                 ecx, esi
            //   7508                 | add                 ebx, edx
            //   6683f902             | inc                 ebp
            //   410f44c3             | lea                 ebx, [ebx + ebx - 0x1b64963f]
            //   450fb7ed             | mov                 edx, ecx

    condition:
        7 of them and filesize < 369664
}