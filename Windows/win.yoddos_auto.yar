rule win_yoddos_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-12-06"
        version = "1"
        description = "Detects win.yoddos."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.yoddos"
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
        $sequence_0 = { ff15???????? 85c0 0f84e0010000 8d8584fcffff 56 50 }
            // n = 6, score = 100
            //   ff15????????         |                     
            //   85c0                 | test                eax, eax
            //   0f84e0010000         | je                  0x1e6
            //   8d8584fcffff         | lea                 eax, [ebp - 0x37c]
            //   56                   | push                esi
            //   50                   | push                eax

        $sequence_1 = { 66895dd8 66895dda 6a0e e8???????? 59 8a8485a4ecffff 8845dc }
            // n = 7, score = 100
            //   66895dd8             | mov                 word ptr [ebp - 0x28], bx
            //   66895dda             | mov                 word ptr [ebp - 0x26], bx
            //   6a0e                 | push                0xe
            //   e8????????           |                     
            //   59                   | pop                 ecx
            //   8a8485a4ecffff       | mov                 al, byte ptr [ebp + eax*4 - 0x135c]
            //   8845dc               | mov                 byte ptr [ebp - 0x24], al

        $sequence_2 = { 740c ffb5c0fcffff ff15???????? b863000000 90 b89dffffff }
            // n = 6, score = 100
            //   740c                 | je                  0xe
            //   ffb5c0fcffff         | push                dword ptr [ebp - 0x340]
            //   ff15????????         |                     
            //   b863000000           | mov                 eax, 0x63
            //   90                   | nop                 
            //   b89dffffff           | mov                 eax, 0xffffff9d

        $sequence_3 = { c6458e65 c6458f6e c6459055 c6459172 c645926c c6459341 }
            // n = 6, score = 100
            //   c6458e65             | mov                 byte ptr [ebp - 0x72], 0x65
            //   c6458f6e             | mov                 byte ptr [ebp - 0x71], 0x6e
            //   c6459055             | mov                 byte ptr [ebp - 0x70], 0x55
            //   c6459172             | mov                 byte ptr [ebp - 0x6f], 0x72
            //   c645926c             | mov                 byte ptr [ebp - 0x6e], 0x6c
            //   c6459341             | mov                 byte ptr [ebp - 0x6d], 0x41

        $sequence_4 = { b89dffffff 90 33db 891d???????? b863000000 90 b89dffffff }
            // n = 7, score = 100
            //   b89dffffff           | mov                 eax, 0xffffff9d
            //   90                   | nop                 
            //   33db                 | xor                 ebx, ebx
            //   891d????????         |                     
            //   b863000000           | mov                 eax, 0x63
            //   90                   | nop                 
            //   b89dffffff           | mov                 eax, 0xffffff9d

        $sequence_5 = { 0c01 c1f905 83e61f 88450b 8d3c8d00764100 c1e603 }
            // n = 6, score = 100
            //   0c01                 | or                  al, 1
            //   c1f905               | sar                 ecx, 5
            //   83e61f               | and                 esi, 0x1f
            //   88450b               | mov                 byte ptr [ebp + 0xb], al
            //   8d3c8d00764100       | lea                 edi, [ecx*4 + 0x417600]
            //   c1e603               | shl                 esi, 3

        $sequence_6 = { 895dfc c78538ffffff62000000 68???????? 50 e8???????? ff7508 8d8524feffff }
            // n = 7, score = 100
            //   895dfc               | mov                 dword ptr [ebp - 4], ebx
            //   c78538ffffff62000000     | mov    dword ptr [ebp - 0xc8], 0x62
            //   68????????           |                     
            //   50                   | push                eax
            //   e8????????           |                     
            //   ff7508               | push                dword ptr [ebp + 8]
            //   8d8524feffff         | lea                 eax, [ebp - 0x1dc]

        $sequence_7 = { 57 ff7508 e8???????? 8bf8 56 037d08 }
            // n = 6, score = 100
            //   57                   | push                edi
            //   ff7508               | push                dword ptr [ebp + 8]
            //   e8????????           |                     
            //   8bf8                 | mov                 edi, eax
            //   56                   | push                esi
            //   037d08               | add                 edi, dword ptr [ebp + 8]

        $sequence_8 = { 0fb7750c 6683f97e 7502 33c9 0fb7d1 8a945504ffffff 3010 }
            // n = 7, score = 100
            //   0fb7750c             | movzx               esi, word ptr [ebp + 0xc]
            //   6683f97e             | cmp                 cx, 0x7e
            //   7502                 | jne                 4
            //   33c9                 | xor                 ecx, ecx
            //   0fb7d1               | movzx               edx, cx
            //   8a945504ffffff       | mov                 dl, byte ptr [ebp + edx*2 - 0xfc]
            //   3010                 | xor                 byte ptr [eax], dl

        $sequence_9 = { eb28 8d4df0 6a10 51 }
            // n = 4, score = 100
            //   eb28                 | jmp                 0x2a
            //   8d4df0               | lea                 ecx, [ebp - 0x10]
            //   6a10                 | push                0x10
            //   51                   | push                ecx

    condition:
        7 of them and filesize < 557056
}