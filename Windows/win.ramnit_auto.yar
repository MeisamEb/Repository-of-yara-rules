rule win_ramnit_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-12-06"
        version = "1"
        description = "Detects win.ramnit."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.ramnit"
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
        $sequence_0 = { 3a06 7512 47 46 e2f6 b801000000 59 }
            // n = 7, score = 4000
            //   3a06                 | cmp                 al, byte ptr [esi]
            //   7512                 | jne                 0x14
            //   47                   | inc                 edi
            //   46                   | inc                 esi
            //   e2f6                 | loop                0xfffffff8
            //   b801000000           | mov                 eax, 1
            //   59                   | pop                 ecx

        $sequence_1 = { 750b 4f 3b7d08 73e7 bf00000000 }
            // n = 5, score = 4000
            //   750b                 | jne                 0xd
            //   4f                   | dec                 edi
            //   3b7d08               | cmp                 edi, dword ptr [ebp + 8]
            //   73e7                 | jae                 0xffffffe9
            //   bf00000000           | mov                 edi, 0

        $sequence_2 = { 57 56 fc 807d1401 }
            // n = 4, score = 4000
            //   57                   | push                edi
            //   56                   | push                esi
            //   fc                   | cld                 
            //   807d1401             | cmp                 byte ptr [ebp + 0x14], 1

        $sequence_3 = { 5f 59 5a 5b c9 c20800 55 }
            // n = 7, score = 4000
            //   5f                   | pop                 edi
            //   59                   | pop                 ecx
            //   5a                   | pop                 edx
            //   5b                   | pop                 ebx
            //   c9                   | leave               
            //   c20800               | ret                 8
            //   55                   | push                ebp

        $sequence_4 = { ff750c ff75fc e8???????? 0bc0 7429 }
            // n = 5, score = 4000
            //   ff750c               | push                dword ptr [ebp + 0xc]
            //   ff75fc               | push                dword ptr [ebp - 4]
            //   e8????????           |                     
            //   0bc0                 | or                  eax, eax
            //   7429                 | je                  0x2b

        $sequence_5 = { 8bc7 5a 5b 59 5f }
            // n = 5, score = 4000
            //   8bc7                 | mov                 eax, edi
            //   5a                   | pop                 edx
            //   5b                   | pop                 ebx
            //   59                   | pop                 ecx
            //   5f                   | pop                 edi

        $sequence_6 = { 8bc1 f7d0 48 59 5f 5e }
            // n = 6, score = 4000
            //   8bc1                 | mov                 eax, ecx
            //   f7d0                 | not                 eax
            //   48                   | dec                 eax
            //   59                   | pop                 ecx
            //   5f                   | pop                 edi
            //   5e                   | pop                 esi

        $sequence_7 = { f3a4 fc 5e 5f 59 5a }
            // n = 6, score = 4000
            //   f3a4                 | rep movsb           byte ptr es:[edi], byte ptr [esi]
            //   fc                   | cld                 
            //   5e                   | pop                 esi
            //   5f                   | pop                 edi
            //   59                   | pop                 ecx
            //   5a                   | pop                 edx

        $sequence_8 = { 8bd7 2b5508 59 5f 5e }
            // n = 5, score = 4000
            //   8bd7                 | mov                 edx, edi
            //   2b5508               | sub                 edx, dword ptr [ebp + 8]
            //   59                   | pop                 ecx
            //   5f                   | pop                 edi
            //   5e                   | pop                 esi

        $sequence_9 = { 8b5d0c 4b f7d3 23c3 }
            // n = 4, score = 4000
            //   8b5d0c               | mov                 ebx, dword ptr [ebp + 0xc]
            //   4b                   | dec                 ebx
            //   f7d3                 | not                 ebx
            //   23c3                 | and                 eax, ebx

    condition:
        7 of them and filesize < 470016
}