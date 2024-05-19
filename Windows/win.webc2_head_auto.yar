rule win_webc2_head_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-12-06"
        version = "1"
        description = "Detects win.webc2_head."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.webc2_head"
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
        $sequence_0 = { 8a8c0cc0000000 eb02 b13d c1e810 83e03f 0fbec9 }
            // n = 6, score = 100
            //   8a8c0cc0000000       | mov                 cl, byte ptr [esp + ecx + 0xc0]
            //   eb02                 | jmp                 4
            //   b13d                 | mov                 cl, 0x3d
            //   c1e810               | shr                 eax, 0x10
            //   83e03f               | and                 eax, 0x3f
            //   0fbec9               | movsx               ecx, cl

        $sequence_1 = { 68???????? 55 55 896c2434 ffd7 }
            // n = 5, score = 100
            //   68????????           |                     
            //   55                   | push                ebp
            //   55                   | push                ebp
            //   896c2434             | mov                 dword ptr [esp + 0x34], ebp
            //   ffd7                 | call                edi

        $sequence_2 = { 8d942444080000 03f0 51 50 52 55 ff15???????? }
            // n = 7, score = 100
            //   8d942444080000       | lea                 edx, [esp + 0x844]
            //   03f0                 | add                 esi, eax
            //   51                   | push                ecx
            //   50                   | push                eax
            //   52                   | push                edx
            //   55                   | push                ebp
            //   ff15????????         |                     

        $sequence_3 = { e8???????? 83c40c 85c0 0f8554020000 b900050000 }
            // n = 5, score = 100
            //   e8????????           |                     
            //   83c40c               | add                 esp, 0xc
            //   85c0                 | test                eax, eax
            //   0f8554020000         | jne                 0x25a
            //   b900050000           | mov                 ecx, 0x500

        $sequence_4 = { 33db 89442418 52 c6450000 }
            // n = 4, score = 100
            //   33db                 | xor                 ebx, ebx
            //   89442418             | mov                 dword ptr [esp + 0x18], eax
            //   52                   | push                edx
            //   c6450000             | mov                 byte ptr [ebp], 0

        $sequence_5 = { 7513 8dbc2444040000 83c9ff f2ae f7d1 49 894c241c }
            // n = 7, score = 100
            //   7513                 | jne                 0x15
            //   8dbc2444040000       | lea                 edi, [esp + 0x444]
            //   83c9ff               | or                  ecx, 0xffffffff
            //   f2ae                 | repne scasb         al, byte ptr es:[edi]
            //   f7d1                 | not                 ecx
            //   49                   | dec                 ecx
            //   894c241c             | mov                 dword ptr [esp + 0x1c], ecx

        $sequence_6 = { 89442410 c1e002 89442418 8b4c2424 }
            // n = 4, score = 100
            //   89442410             | mov                 dword ptr [esp + 0x10], eax
            //   c1e002               | shl                 eax, 2
            //   89442418             | mov                 dword ptr [esp + 0x18], eax
            //   8b4c2424             | mov                 ecx, dword ptr [esp + 0x24]

        $sequence_7 = { eb02 b03d 884303 8b442410 }
            // n = 4, score = 100
            //   eb02                 | jmp                 4
            //   b03d                 | mov                 al, 0x3d
            //   884303               | mov                 byte ptr [ebx + 3], al
            //   8b442410             | mov                 eax, dword ptr [esp + 0x10]

        $sequence_8 = { 83c410 c3 5f c6450000 5e }
            // n = 5, score = 100
            //   83c410               | add                 esp, 0x10
            //   c3                   | ret                 
            //   5f                   | pop                 edi
            //   c6450000             | mov                 byte ptr [ebp], 0
            //   5e                   | pop                 esi

        $sequence_9 = { 2500ff0000 45 3d003d0000 7435 }
            // n = 4, score = 100
            //   2500ff0000           | and                 eax, 0xff00
            //   45                   | inc                 ebp
            //   3d003d0000           | cmp                 eax, 0x3d00
            //   7435                 | je                  0x37

    condition:
        7 of them and filesize < 106496
}