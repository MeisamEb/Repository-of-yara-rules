rule win_isspace_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-12-06"
        version = "1"
        description = "Detects win.isspace."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.isspace"
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
        $sequence_0 = { 57 50 8d45f0 64a300000000 8965e8 c745fc00000000 c785505cffff00a20000 }
            // n = 7, score = 200
            //   57                   | push                edi
            //   50                   | push                eax
            //   8d45f0               | lea                 eax, [ebp - 0x10]
            //   64a300000000         | mov                 dword ptr fs:[0], eax
            //   8965e8               | mov                 dword ptr [ebp - 0x18], esp
            //   c745fc00000000       | mov                 dword ptr [ebp - 4], 0
            //   c785505cffff00a20000     | mov    dword ptr [ebp - 0xa3b0], 0xa200

        $sequence_1 = { 46 8bc6 c1e004 03c6 }
            // n = 4, score = 200
            //   46                   | inc                 esi
            //   8bc6                 | mov                 eax, esi
            //   c1e004               | shl                 eax, 4
            //   03c6                 | add                 eax, esi

        $sequence_2 = { ff15???????? 50 eb05 68???????? 68???????? ff15???????? }
            // n = 6, score = 200
            //   ff15????????         |                     
            //   50                   | push                eax
            //   eb05                 | jmp                 7
            //   68????????           |                     
            //   68????????           |                     
            //   ff15????????         |                     

        $sequence_3 = { 6800010000 8d8600010000 6a00 50 e8???????? 83c418 8bc6 }
            // n = 7, score = 200
            //   6800010000           | push                0x100
            //   8d8600010000         | lea                 eax, [esi + 0x100]
            //   6a00                 | push                0
            //   50                   | push                eax
            //   e8????????           |                     
            //   83c418               | add                 esp, 0x18
            //   8bc6                 | mov                 eax, esi

        $sequence_4 = { e8???????? 83c418 83c60a 56 }
            // n = 4, score = 200
            //   e8????????           |                     
            //   83c418               | add                 esp, 0x18
            //   83c60a               | add                 esi, 0xa
            //   56                   | push                esi

        $sequence_5 = { 85c0 7507 68???????? eb04 83c007 }
            // n = 5, score = 200
            //   85c0                 | test                eax, eax
            //   7507                 | jne                 9
            //   68????????           |                     
            //   eb04                 | jmp                 6
            //   83c007               | add                 eax, 7

        $sequence_6 = { c78548ffffff9c000000 e8???????? 8ad8 c745fc00000000 }
            // n = 4, score = 200
            //   c78548ffffff9c000000     | mov    dword ptr [ebp - 0xb8], 0x9c
            //   e8????????           |                     
            //   8ad8                 | mov                 bl, al
            //   c745fc00000000       | mov                 dword ptr [ebp - 4], 0

        $sequence_7 = { eb0a 6a00 6a23 eb04 6a00 }
            // n = 5, score = 200
            //   eb0a                 | jmp                 0xc
            //   6a00                 | push                0
            //   6a23                 | push                0x23
            //   eb04                 | jmp                 6
            //   6a00                 | push                0

    condition:
        7 of them and filesize < 434176
}