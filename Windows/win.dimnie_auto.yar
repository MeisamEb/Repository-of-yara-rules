rule win_dimnie_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-12-06"
        version = "1"
        description = "Detects win.dimnie."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.dimnie"
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
        $sequence_0 = { 7605 8b450c eb54 8b550c 2b5508 83fa01 751c }
            // n = 7, score = 400
            //   7605                 | jbe                 7
            //   8b450c               | mov                 eax, dword ptr [ebp + 0xc]
            //   eb54                 | jmp                 0x56
            //   8b550c               | mov                 edx, dword ptr [ebp + 0xc]
            //   2b5508               | sub                 edx, dword ptr [ebp + 8]
            //   83fa01               | cmp                 edx, 1
            //   751c                 | jne                 0x1e

        $sequence_1 = { 33c0 eb6e 8b4508 3b450c 7505 8b4508 }
            // n = 6, score = 400
            //   33c0                 | xor                 eax, eax
            //   eb6e                 | jmp                 0x70
            //   8b4508               | mov                 eax, dword ptr [ebp + 8]
            //   3b450c               | cmp                 eax, dword ptr [ebp + 0xc]
            //   7505                 | jne                 7
            //   8b4508               | mov                 eax, dword ptr [ebp + 8]

        $sequence_2 = { 8945f4 8b45f4 c1e804 8945f4 8b4df8 83c101 }
            // n = 6, score = 400
            //   8945f4               | mov                 dword ptr [ebp - 0xc], eax
            //   8b45f4               | mov                 eax, dword ptr [ebp - 0xc]
            //   c1e804               | shr                 eax, 4
            //   8945f4               | mov                 dword ptr [ebp - 0xc], eax
            //   8b4df8               | mov                 ecx, dword ptr [ebp - 8]
            //   83c101               | add                 ecx, 1

        $sequence_3 = { 8b550c 2b5508 8955f8 0f31 8945f4 8b45f4 c1e804 }
            // n = 7, score = 400
            //   8b550c               | mov                 edx, dword ptr [ebp + 0xc]
            //   2b5508               | sub                 edx, dword ptr [ebp + 8]
            //   8955f8               | mov                 dword ptr [ebp - 8], edx
            //   0f31                 | rdtsc               
            //   8945f4               | mov                 dword ptr [ebp - 0xc], eax
            //   8b45f4               | mov                 eax, dword ptr [ebp - 0xc]
            //   c1e804               | shr                 eax, 4

        $sequence_4 = { eb6e 8b4508 3b450c 7505 8b4508 eb61 }
            // n = 6, score = 400
            //   eb6e                 | jmp                 0x70
            //   8b4508               | mov                 eax, dword ptr [ebp + 8]
            //   3b450c               | cmp                 eax, dword ptr [ebp + 0xc]
            //   7505                 | jne                 7
            //   8b4508               | mov                 eax, dword ptr [ebp + 8]
            //   eb61                 | jmp                 0x63

        $sequence_5 = { 2b5508 83fa01 751c 0f31 }
            // n = 4, score = 400
            //   2b5508               | sub                 edx, dword ptr [ebp + 8]
            //   83fa01               | cmp                 edx, 1
            //   751c                 | jne                 0x1e
            //   0f31                 | rdtsc               

        $sequence_6 = { 8b4508 eb61 8b4d08 3b4d0c 7605 8b450c }
            // n = 6, score = 400
            //   8b4508               | mov                 eax, dword ptr [ebp + 8]
            //   eb61                 | jmp                 0x63
            //   8b4d08               | mov                 ecx, dword ptr [ebp + 8]
            //   3b4d0c               | cmp                 ecx, dword ptr [ebp + 0xc]
            //   7605                 | jbe                 7
            //   8b450c               | mov                 eax, dword ptr [ebp + 0xc]

        $sequence_7 = { 8b4d0c 8a55af 885102 837d1002 7e13 8b4508 0fb64802 }
            // n = 7, score = 400
            //   8b4d0c               | mov                 ecx, dword ptr [ebp + 0xc]
            //   8a55af               | mov                 dl, byte ptr [ebp - 0x51]
            //   885102               | mov                 byte ptr [ecx + 2], dl
            //   837d1002             | cmp                 dword ptr [ebp + 0x10], 2
            //   7e13                 | jle                 0x15
            //   8b4508               | mov                 eax, dword ptr [ebp + 8]
            //   0fb64802             | movzx               ecx, byte ptr [eax + 2]

        $sequence_8 = { 8b4510 8b08 83e107 8b5510 890a }
            // n = 5, score = 400
            //   8b4510               | mov                 eax, dword ptr [ebp + 0x10]
            //   8b08                 | mov                 ecx, dword ptr [eax]
            //   83e107               | and                 ecx, 7
            //   8b5510               | mov                 edx, dword ptr [ebp + 0x10]
            //   890a                 | mov                 dword ptr [edx], ecx

        $sequence_9 = { c70201000000 8b4508 8b08 83e10f 8b5508 890a 8b450c }
            // n = 7, score = 400
            //   c70201000000         | mov                 dword ptr [edx], 1
            //   8b4508               | mov                 eax, dword ptr [ebp + 8]
            //   8b08                 | mov                 ecx, dword ptr [eax]
            //   83e10f               | and                 ecx, 0xf
            //   8b5508               | mov                 edx, dword ptr [ebp + 8]
            //   890a                 | mov                 dword ptr [edx], ecx
            //   8b450c               | mov                 eax, dword ptr [ebp + 0xc]

    condition:
        7 of them and filesize < 212992
}