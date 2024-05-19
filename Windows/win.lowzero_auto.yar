rule win_lowzero_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-12-06"
        version = "1"
        description = "Detects win.lowzero."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.lowzero"
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
        $sequence_0 = { 0fb617 47 83fa20 0f83e2000000 42 8d0432 3bc1 }
            // n = 7, score = 200
            //   0fb617               | movzx               edx, byte ptr [edi]
            //   47                   | inc                 edi
            //   83fa20               | cmp                 edx, 0x20
            //   0f83e2000000         | jae                 0xe8
            //   42                   | inc                 edx
            //   8d0432               | lea                 eax, [edx + esi]
            //   3bc1                 | cmp                 eax, ecx

        $sequence_1 = { 57 8b423c 8b55f4 03c6 }
            // n = 4, score = 200
            //   57                   | push                edi
            //   8b423c               | mov                 eax, dword ptr [edx + 0x3c]
            //   8b55f4               | mov                 edx, dword ptr [ebp - 0xc]
            //   03c6                 | add                 eax, esi

        $sequence_2 = { 2bce 894df0 8d9b00000000 8d1c31 ff7734 85c0 }
            // n = 6, score = 200
            //   2bce                 | sub                 ecx, esi
            //   894df0               | mov                 dword ptr [ebp - 0x10], ecx
            //   8d9b00000000         | lea                 ebx, [ebx]
            //   8d1c31               | lea                 ebx, [ecx + esi]
            //   ff7734               | push                dword ptr [edi + 0x34]
            //   85c0                 | test                eax, eax

        $sequence_3 = { 7439 03c3 837f1400 7425 }
            // n = 4, score = 200
            //   7439                 | je                  0x3b
            //   03c3                 | add                 eax, ebx
            //   837f1400             | cmp                 dword ptr [edi + 0x14], 0
            //   7425                 | je                  0x27

        $sequence_4 = { 47 2bc8 8d4602 03c3 3b450c }
            // n = 5, score = 200
            //   47                   | inc                 edi
            //   2bc8                 | sub                 ecx, eax
            //   8d4602               | lea                 eax, [esi + 2]
            //   03c3                 | add                 eax, ebx
            //   3b450c               | cmp                 eax, dword ptr [ebp + 0xc]

        $sequence_5 = { 8b4d0c 3b7dfc 0f8255feffff 2b7508 5f 8bc6 5e }
            // n = 7, score = 200
            //   8b4d0c               | mov                 ecx, dword ptr [ebp + 0xc]
            //   3b7dfc               | cmp                 edi, dword ptr [ebp - 4]
            //   0f8255feffff         | jb                  0xfffffe5b
            //   2b7508               | sub                 esi, dword ptr [ebp + 8]
            //   5f                   | pop                 edi
            //   8bc6                 | mov                 eax, esi
            //   5e                   | pop                 esi

        $sequence_6 = { 8bce 83e21f c1eb05 c1e208 2bca 49 83fb07 }
            // n = 7, score = 200
            //   8bce                 | mov                 ecx, esi
            //   83e21f               | and                 edx, 0x1f
            //   c1eb05               | shr                 ebx, 5
            //   c1e208               | shl                 edx, 8
            //   2bca                 | sub                 ecx, edx
            //   49                   | dec                 ecx
            //   83fb07               | cmp                 ebx, 7

        $sequence_7 = { 83ec30 53 56 8bd9 8955f4 33f6 895dfc }
            // n = 7, score = 200
            //   83ec30               | sub                 esp, 0x30
            //   53                   | push                ebx
            //   56                   | push                esi
            //   8bd9                 | mov                 ebx, ecx
            //   8955f4               | mov                 dword ptr [ebp - 0xc], edx
            //   33f6                 | xor                 esi, esi
            //   895dfc               | mov                 dword ptr [ebp - 4], ebx

        $sequence_8 = { 46 47 e9???????? 8bda 8bce 83e21f }
            // n = 6, score = 200
            //   46                   | inc                 esi
            //   47                   | inc                 edi
            //   e9????????           |                     
            //   8bda                 | mov                 ebx, edx
            //   8bce                 | mov                 ecx, esi
            //   83e21f               | and                 edx, 0x1f

        $sequence_9 = { e8???????? 5f 5e 5b c70007000000 33c0 8be5 }
            // n = 7, score = 200
            //   e8????????           |                     
            //   5f                   | pop                 edi
            //   5e                   | pop                 esi
            //   5b                   | pop                 ebx
            //   c70007000000         | mov                 dword ptr [eax], 7
            //   33c0                 | xor                 eax, eax
            //   8be5                 | mov                 esp, ebp

    condition:
        7 of them and filesize < 433152
}