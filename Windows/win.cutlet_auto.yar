rule win_cutlet_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2020-10-14"
        version = "1"
        description = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.5.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.cutlet"
        malpedia_rule_date = "20201014"
        malpedia_hash = "a7e3bd57eaf12bf3ea29a863c041091ba3af9ac9"
        malpedia_version = "20201014"
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
        $sequence_0 = { 6e 75d0 de72ec 7d56 3e0e 8a615c 630f }
            // n = 7, score = 100
            //   6e                   | outsb               dx, byte ptr [esi]
            //   75d0                 | jne                 0xffffffd2
            //   de72ec               | fidiv               word ptr [edx - 0x14]
            //   7d56                 | jge                 0x58
            //   3e0e                 | push                cs
            //   8a615c               | mov                 ah, byte ptr [ecx + 0x5c]
            //   630f                 | arpl                word ptr [edi], cx

        $sequence_1 = { f9 f8 51 895c2404 f9 e8???????? e9???????? }
            // n = 7, score = 100
            //   f9                   | stc                 
            //   f8                   | clc                 
            //   51                   | push                ecx
            //   895c2404             | mov                 dword ptr [esp + 4], ebx
            //   f9                   | stc                 
            //   e8????????           |                     
            //   e9????????           |                     

        $sequence_2 = { 0f89c3e00000 871c24 e8???????? 60 90 9c 5d }
            // n = 7, score = 100
            //   0f89c3e00000         | jns                 0xe0c9
            //   871c24               | xchg                dword ptr [esp], ebx
            //   e8????????           |                     
            //   60                   | pushal              
            //   90                   | nop                 
            //   9c                   | pushfd              
            //   5d                   | pop                 ebp

        $sequence_3 = { e8???????? 660fbae408 f8 35ffdd5c09 f5 3d37d29028 83c6fc }
            // n = 7, score = 100
            //   e8????????           |                     
            //   660fbae408           | bt                  sp, 8
            //   f8                   | clc                 
            //   35ffdd5c09           | xor                 eax, 0x95cddff
            //   f5                   | cmc                 
            //   3d37d29028           | cmp                 eax, 0x2890d237
            //   83c6fc               | add                 esi, -4

        $sequence_4 = { 8b45fc e8???????? e8???????? e8???????? 84c0 7424 a1???????? }
            // n = 7, score = 100
            //   8b45fc               | mov                 eax, dword ptr [ebp - 4]
            //   e8????????           |                     
            //   e8????????           |                     
            //   e8????????           |                     
            //   84c0                 | test                al, al
            //   7424                 | je                  0x26
            //   a1????????           |                     

        $sequence_5 = { 8d45cc e8???????? eb0e 8d45cc 8b55e0 8b5234 e8???????? }
            // n = 7, score = 100
            //   8d45cc               | lea                 eax, [ebp - 0x34]
            //   e8????????           |                     
            //   eb0e                 | jmp                 0x10
            //   8d45cc               | lea                 eax, [ebp - 0x34]
            //   8b55e0               | mov                 edx, dword ptr [ebp - 0x20]
            //   8b5234               | mov                 edx, dword ptr [edx + 0x34]
            //   e8????????           |                     

        $sequence_6 = { e8???????? 8b45fc 83781800 7408 8b45fc e8???????? 8b45fc }
            // n = 7, score = 100
            //   e8????????           |                     
            //   8b45fc               | mov                 eax, dword ptr [ebp - 4]
            //   83781800             | cmp                 dword ptr [eax + 0x18], 0
            //   7408                 | je                  0xa
            //   8b45fc               | mov                 eax, dword ptr [ebp - 4]
            //   e8????????           |                     
            //   8b45fc               | mov                 eax, dword ptr [ebp - 4]

        $sequence_7 = { a1???????? 894350 ba4b000000 8bc3 e8???????? ba19000000 8bc3 }
            // n = 7, score = 100
            //   a1????????           |                     
            //   894350               | mov                 dword ptr [ebx + 0x50], eax
            //   ba4b000000           | mov                 edx, 0x4b
            //   8bc3                 | mov                 eax, ebx
            //   e8????????           |                     
            //   ba19000000           | mov                 edx, 0x19
            //   8bc3                 | mov                 eax, ebx

        $sequence_8 = { 9c 88642404 68eecc2563 89742424 5e 66f7d6 be???????? }
            // n = 7, score = 100
            //   9c                   | pushfd              
            //   88642404             | mov                 byte ptr [esp + 4], ah
            //   68eecc2563           | push                0x6325ccee
            //   89742424             | mov                 dword ptr [esp + 0x24], esi
            //   5e                   | pop                 esi
            //   66f7d6               | not                 si
            //   be????????           |                     

        $sequence_9 = { 8b45fc 8b80a8010000 8b55f8 e8???????? 8b45fc 0fb680c5010000 0fb70c452cd94c00 }
            // n = 7, score = 100
            //   8b45fc               | mov                 eax, dword ptr [ebp - 4]
            //   8b80a8010000         | mov                 eax, dword ptr [eax + 0x1a8]
            //   8b55f8               | mov                 edx, dword ptr [ebp - 8]
            //   e8????????           |                     
            //   8b45fc               | mov                 eax, dword ptr [ebp - 4]
            //   0fb680c5010000       | movzx               eax, byte ptr [eax + 0x1c5]
            //   0fb70c452cd94c00     | movzx               ecx, word ptr [eax*2 + 0x4cd92c]

    condition:
        7 of them and filesize < 8388608
}