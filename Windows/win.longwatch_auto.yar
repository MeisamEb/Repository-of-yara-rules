rule win_longwatch_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-12-06"
        version = "1"
        description = "Detects win.longwatch."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.longwatch"
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
        $sequence_0 = { 68???????? e8???????? 83c404 833d????????ff 7546 6a00 }
            // n = 6, score = 200
            //   68????????           |                     
            //   e8????????           |                     
            //   83c404               | add                 esp, 4
            //   833d????????ff       |                     
            //   7546                 | jne                 0x48
            //   6a00                 | push                0

        $sequence_1 = { 8bec 53 8b5d08 33c9 57 33c0 8d3c9d2c074300 }
            // n = 7, score = 200
            //   8bec                 | mov                 ebp, esp
            //   53                   | push                ebx
            //   8b5d08               | mov                 ebx, dword ptr [ebp + 8]
            //   33c9                 | xor                 ecx, ecx
            //   57                   | push                edi
            //   33c0                 | xor                 eax, eax
            //   8d3c9d2c074300       | lea                 edi, [ebx*4 + 0x43072c]

        $sequence_2 = { 0f8cf8030000 68a1000000 ff15???????? 6683f888 0f8ce3030000 8d46fe }
            // n = 6, score = 200
            //   0f8cf8030000         | jl                  0x3fe
            //   68a1000000           | push                0xa1
            //   ff15????????         |                     
            //   6683f888             | cmp                 ax, -0x78
            //   0f8ce3030000         | jl                  0x3e9
            //   8d46fe               | lea                 eax, [esi - 2]

        $sequence_3 = { eb29 8b55d4 8a07 8b0c95a00b4300 }
            // n = 4, score = 200
            //   eb29                 | jmp                 0x2b
            //   8b55d4               | mov                 edx, dword ptr [ebp - 0x2c]
            //   8a07                 | mov                 al, byte ptr [edi]
            //   8b0c95a00b4300       | mov                 ecx, dword ptr [edx*4 + 0x430ba0]

        $sequence_4 = { 53 8b5d08 33c9 57 33c0 8d3c9d2c074300 f00fb10f }
            // n = 7, score = 200
            //   53                   | push                ebx
            //   8b5d08               | mov                 ebx, dword ptr [ebp + 8]
            //   33c9                 | xor                 ecx, ecx
            //   57                   | push                edi
            //   33c0                 | xor                 eax, eax
            //   8d3c9d2c074300       | lea                 edi, [ebx*4 + 0x43072c]
            //   f00fb10f             | lock cmpxchg        dword ptr [edi], ecx

        $sequence_5 = { 6bc618 57 8db874074300 57 }
            // n = 4, score = 200
            //   6bc618               | imul                eax, esi, 0x18
            //   57                   | push                edi
            //   8db874074300         | lea                 edi, [eax + 0x430774]
            //   57                   | push                edi

        $sequence_6 = { 8ad3 b9???????? e8???????? 837d9400 8db548ffffff }
            // n = 5, score = 200
            //   8ad3                 | mov                 dl, bl
            //   b9????????           |                     
            //   e8????????           |                     
            //   837d9400             | cmp                 dword ptr [ebp - 0x6c], 0
            //   8db548ffffff         | lea                 esi, [ebp - 0xb8]

        $sequence_7 = { e8???????? ff7364 33c9 8d7b18 84c0 0f44f9 }
            // n = 6, score = 200
            //   e8????????           |                     
            //   ff7364               | push                dword ptr [ebx + 0x64]
            //   33c9                 | xor                 ecx, ecx
            //   8d7b18               | lea                 edi, [ebx + 0x18]
            //   84c0                 | test                al, al
            //   0f44f9               | cmove               edi, ecx

        $sequence_8 = { 56 68a0000000 8bf1 ff15???????? }
            // n = 4, score = 200
            //   56                   | push                esi
            //   68a0000000           | push                0xa0
            //   8bf1                 | mov                 esi, ecx
            //   ff15????????         |                     

        $sequence_9 = { c74634d46e4200 6a00 57 8bce e8???????? }
            // n = 5, score = 200
            //   c74634d46e4200       | mov                 dword ptr [esi + 0x34], 0x426ed4
            //   6a00                 | push                0
            //   57                   | push                edi
            //   8bce                 | mov                 ecx, esi
            //   e8????????           |                     

    condition:
        7 of them and filesize < 647168
}