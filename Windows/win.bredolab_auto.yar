rule win_bredolab_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-12-06"
        version = "1"
        description = "Detects win.bredolab."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.bredolab"
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
        $sequence_0 = { 8b4518 89442410 8b4514 8944240c c744240800000000 }
            // n = 5, score = 200
            //   8b4518               | mov                 eax, dword ptr [ebp + 0x18]
            //   89442410             | mov                 dword ptr [esp + 0x10], eax
            //   8b4514               | mov                 eax, dword ptr [ebp + 0x14]
            //   8944240c             | mov                 dword ptr [esp + 0xc], eax
            //   c744240800000000     | mov                 dword ptr [esp + 8], 0

        $sequence_1 = { baffe8a435 89d1 31d2 f7f1 81c200e1f505 89542408 c7442404???????? }
            // n = 7, score = 200
            //   baffe8a435           | mov                 edx, 0x35a4e8ff
            //   89d1                 | mov                 ecx, edx
            //   31d2                 | xor                 edx, edx
            //   f7f1                 | div                 ecx
            //   81c200e1f505         | add                 edx, 0x5f5e100
            //   89542408             | mov                 dword ptr [esp + 8], edx
            //   c7442404????????     |                     

        $sequence_2 = { 0f85e8000000 ba???????? 90 31c0 6690 8a8800500010 300c02 }
            // n = 7, score = 200
            //   0f85e8000000         | jne                 0xee
            //   ba????????           |                     
            //   90                   | nop                 
            //   31c0                 | xor                 eax, eax
            //   6690                 | nop                 
            //   8a8800500010         | mov                 cl, byte ptr [eax + 0x10005000]
            //   300c02               | xor                 byte ptr [edx + eax], cl

        $sequence_3 = { 57 56 53 b86c140000 }
            // n = 4, score = 200
            //   57                   | push                edi
            //   56                   | push                esi
            //   53                   | push                ebx
            //   b86c140000           | mov                 eax, 0x146c

        $sequence_4 = { f2ae f7d1 8d41ff 81c40c090000 }
            // n = 4, score = 200
            //   f2ae                 | repne scasb         al, byte ptr es:[edi]
            //   f7d1                 | not                 ecx
            //   8d41ff               | lea                 eax, [ecx - 1]
            //   81c40c090000         | add                 esp, 0x90c

        $sequence_5 = { 8b8318120000 85c0 0f8e88000000 c783381200000c000000 }
            // n = 4, score = 200
            //   8b8318120000         | mov                 eax, dword ptr [ebx + 0x1218]
            //   85c0                 | test                eax, eax
            //   0f8e88000000         | jle                 0x8e
            //   c783381200000c000000     | mov    dword ptr [ebx + 0x1238], 0xc

        $sequence_6 = { 0f85c5000000 8b9560feffff 8b02 3b45dc 7437 }
            // n = 5, score = 200
            //   0f85c5000000         | jne                 0xcb
            //   8b9560feffff         | mov                 edx, dword ptr [ebp - 0x1a0]
            //   8b02                 | mov                 eax, dword ptr [edx]
            //   3b45dc               | cmp                 eax, dword ptr [ebp - 0x24]
            //   7437                 | je                  0x39

        $sequence_7 = { 5e 5f c9 c3 8db526ffffff b910000000 }
            // n = 6, score = 200
            //   5e                   | pop                 esi
            //   5f                   | pop                 edi
            //   c9                   | leave               
            //   c3                   | ret                 
            //   8db526ffffff         | lea                 esi, [ebp - 0xda]
            //   b910000000           | mov                 ecx, 0x10

        $sequence_8 = { 8b8a1c120000 85c9 0f8ee7000000 31ff 31c0 8d9d20f7ffff 89b514f7ffff }
            // n = 7, score = 200
            //   8b8a1c120000         | mov                 ecx, dword ptr [edx + 0x121c]
            //   85c9                 | test                ecx, ecx
            //   0f8ee7000000         | jle                 0xed
            //   31ff                 | xor                 edi, edi
            //   31c0                 | xor                 eax, eax
            //   8d9d20f7ffff         | lea                 ebx, [ebp - 0x8e0]
            //   89b514f7ffff         | mov                 dword ptr [ebp - 0x8ec], esi

        $sequence_9 = { 85c0 753b 0fb78394010000 338396010000 0d00000080 baffe8a435 89d1 }
            // n = 7, score = 200
            //   85c0                 | test                eax, eax
            //   753b                 | jne                 0x3d
            //   0fb78394010000       | movzx               eax, word ptr [ebx + 0x194]
            //   338396010000         | xor                 eax, dword ptr [ebx + 0x196]
            //   0d00000080           | or                  eax, 0x80000000
            //   baffe8a435           | mov                 edx, 0x35a4e8ff
            //   89d1                 | mov                 ecx, edx

    condition:
        7 of them and filesize < 90112
}