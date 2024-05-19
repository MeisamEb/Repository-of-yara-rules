rule win_grillmark_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-12-06"
        version = "1"
        description = "Detects win.grillmark."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.grillmark"
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
        $sequence_0 = { 83bd44ffffff04 7705 bb???????? 83bd44ffffff05 8b8548ffffff 7528 85c0 }
            // n = 7, score = 300
            //   83bd44ffffff04       | cmp                 dword ptr [ebp - 0xbc], 4
            //   7705                 | ja                  7
            //   bb????????           |                     
            //   83bd44ffffff05       | cmp                 dword ptr [ebp - 0xbc], 5
            //   8b8548ffffff         | mov                 eax, dword ptr [ebp - 0xb8]
            //   7528                 | jne                 0x2a
            //   85c0                 | test                eax, eax

        $sequence_1 = { 5e 5d c21400 55 8bec 56 68???????? }
            // n = 7, score = 300
            //   5e                   | pop                 esi
            //   5d                   | pop                 ebp
            //   c21400               | ret                 0x14
            //   55                   | push                ebp
            //   8bec                 | mov                 ebp, esp
            //   56                   | push                esi
            //   68????????           |                     

        $sequence_2 = { 59 7e13 50 57 6800000002 ff15???????? 8bd8 }
            // n = 7, score = 300
            //   59                   | pop                 ecx
            //   7e13                 | jle                 0x15
            //   50                   | push                eax
            //   57                   | push                edi
            //   6800000002           | push                0x2000000
            //   ff15????????         |                     
            //   8bd8                 | mov                 ebx, eax

        $sequence_3 = { 7409 ff75fc ff15???????? 56 56 56 }
            // n = 6, score = 300
            //   7409                 | je                  0xb
            //   ff75fc               | push                dword ptr [ebp - 4]
            //   ff15????????         |                     
            //   56                   | push                esi
            //   56                   | push                esi
            //   56                   | push                esi

        $sequence_4 = { 66895dc4 50 c745c001010000 e8???????? ff7508 8d8590feffff 50 }
            // n = 7, score = 300
            //   66895dc4             | mov                 word ptr [ebp - 0x3c], bx
            //   50                   | push                eax
            //   c745c001010000       | mov                 dword ptr [ebp - 0x40], 0x101
            //   e8????????           |                     
            //   ff7508               | push                dword ptr [ebp + 8]
            //   8d8590feffff         | lea                 eax, [ebp - 0x170]
            //   50                   | push                eax

        $sequence_5 = { 6a09 ab 59 8d7dc0 8975bc 8975f8 }
            // n = 6, score = 300
            //   6a09                 | push                9
            //   ab                   | stosd               dword ptr es:[edi], eax
            //   59                   | pop                 ecx
            //   8d7dc0               | lea                 edi, [ebp - 0x40]
            //   8975bc               | mov                 dword ptr [ebp - 0x44], esi
            //   8975f8               | mov                 dword ptr [ebp - 8], esi

        $sequence_6 = { 8dbdfdfeffff 889dfcfeffff 53 f3ab 66ab aa 8d85fcfeffff }
            // n = 7, score = 300
            //   8dbdfdfeffff         | lea                 edi, [ebp - 0x103]
            //   889dfcfeffff         | mov                 byte ptr [ebp - 0x104], bl
            //   53                   | push                ebx
            //   f3ab                 | rep stosd           dword ptr es:[edi], eax
            //   66ab                 | stosw               word ptr es:[edi], ax
            //   aa                   | stosb               byte ptr es:[edi], al
            //   8d85fcfeffff         | lea                 eax, [ebp - 0x104]

        $sequence_7 = { 8d85f8fdffff 50 750d ffd7 8d85f4fcffff 50 }
            // n = 6, score = 300
            //   8d85f8fdffff         | lea                 eax, [ebp - 0x208]
            //   50                   | push                eax
            //   750d                 | jne                 0xf
            //   ffd7                 | call                edi
            //   8d85f4fcffff         | lea                 eax, [ebp - 0x30c]
            //   50                   | push                eax

        $sequence_8 = { ff75f8 56 ff7508 ff75fc e8???????? 83c418 }
            // n = 6, score = 300
            //   ff75f8               | push                dword ptr [ebp - 8]
            //   56                   | push                esi
            //   ff7508               | push                dword ptr [ebp + 8]
            //   ff75fc               | push                dword ptr [ebp - 4]
            //   e8????????           |                     
            //   83c418               | add                 esp, 0x18

        $sequence_9 = { ffd6 85c0 7473 8d45c8 }
            // n = 4, score = 300
            //   ffd6                 | call                esi
            //   85c0                 | test                eax, eax
            //   7473                 | je                  0x75
            //   8d45c8               | lea                 eax, [ebp - 0x38]

    condition:
        7 of them and filesize < 212992
}