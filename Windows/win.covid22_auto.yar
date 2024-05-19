rule win_covid22_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-12-06"
        version = "1"
        description = "Detects win.covid22."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.covid22"
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
        $sequence_0 = { 8b35???????? 7507 6af6 ffd6 894514 395d18 7507 }
            // n = 7, score = 100
            //   8b35????????         |                     
            //   7507                 | jne                 9
            //   6af6                 | push                -0xa
            //   ffd6                 | call                esi
            //   894514               | mov                 dword ptr [ebp + 0x14], eax
            //   395d18               | cmp                 dword ptr [ebp + 0x18], ebx
            //   7507                 | jne                 9

        $sequence_1 = { 50 8b4508 ff30 ff15???????? 8b45fc c9 }
            // n = 6, score = 100
            //   50                   | push                eax
            //   8b4508               | mov                 eax, dword ptr [ebp + 8]
            //   ff30                 | push                dword ptr [eax]
            //   ff15????????         |                     
            //   8b45fc               | mov                 eax, dword ptr [ebp - 4]
            //   c9                   | leave               

        $sequence_2 = { 5a e8???????? ff35???????? 6801000000 e8???????? 21c0 }
            // n = 6, score = 100
            //   5a                   | pop                 edx
            //   e8????????           |                     
            //   ff35????????         |                     
            //   6801000000           | push                1
            //   e8????????           |                     
            //   21c0                 | and                 eax, eax

        $sequence_3 = { e8???????? ba???????? 8d0d30b24000 e8???????? ba???????? 8d0d34b24000 e8???????? }
            // n = 7, score = 100
            //   e8????????           |                     
            //   ba????????           |                     
            //   8d0d30b24000         | lea                 ecx, [0x40b230]
            //   e8????????           |                     
            //   ba????????           |                     
            //   8d0d34b24000         | lea                 ecx, [0x40b234]
            //   e8????????           |                     

        $sequence_4 = { 0fb6540c02 83e20f 0fb692e0904000 885005 0fb6540c03 c1ea04 0fb692e0904000 }
            // n = 7, score = 100
            //   0fb6540c02           | movzx               edx, byte ptr [esp + ecx + 2]
            //   83e20f               | and                 edx, 0xf
            //   0fb692e0904000       | movzx               edx, byte ptr [edx + 0x4090e0]
            //   885005               | mov                 byte ptr [eax + 5], dl
            //   0fb6540c03           | movzx               edx, byte ptr [esp + ecx + 3]
            //   c1ea04               | shr                 edx, 4
            //   0fb692e0904000       | movzx               edx, byte ptr [edx + 0x4090e0]

        $sequence_5 = { ff35???????? e8???????? 21c0 0f846f020000 a1???????? }
            // n = 5, score = 100
            //   ff35????????         |                     
            //   e8????????           |                     
            //   21c0                 | and                 eax, eax
            //   0f846f020000         | je                  0x275
            //   a1????????           |                     

        $sequence_6 = { 50 a1???????? 50 50 e8???????? ff05???????? ff35???????? }
            // n = 7, score = 100
            //   50                   | push                eax
            //   a1????????           |                     
            //   50                   | push                eax
            //   50                   | push                eax
            //   e8????????           |                     
            //   ff05????????         |                     
            //   ff35????????         |                     

        $sequence_7 = { b801000000 eb02 31c0 21c0 0f8409020000 a1???????? }
            // n = 6, score = 100
            //   b801000000           | mov                 eax, 1
            //   eb02                 | jmp                 4
            //   31c0                 | xor                 eax, eax
            //   21c0                 | and                 eax, eax
            //   0f8409020000         | je                  0x20f
            //   a1????????           |                     

        $sequence_8 = { e8???????? c21000 8b442404 85c0 7413 ff742408 ff30 }
            // n = 7, score = 100
            //   e8????????           |                     
            //   c21000               | ret                 0x10
            //   8b442404             | mov                 eax, dword ptr [esp + 4]
            //   85c0                 | test                eax, eax
            //   7413                 | je                  0x15
            //   ff742408             | push                dword ptr [esp + 8]
            //   ff30                 | push                dword ptr [eax]

        $sequence_9 = { 83c404 6801000000 e9???????? 8b15???????? 31c9 e8???????? 750b }
            // n = 7, score = 100
            //   83c404               | add                 esp, 4
            //   6801000000           | push                1
            //   e9????????           |                     
            //   8b15????????         |                     
            //   31c9                 | xor                 ecx, ecx
            //   e8????????           |                     
            //   750b                 | jne                 0xd

    condition:
        7 of them and filesize < 1955840
}