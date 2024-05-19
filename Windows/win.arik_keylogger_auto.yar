rule win_arik_keylogger_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-12-06"
        version = "1"
        description = "Detects win.arik_keylogger."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.arik_keylogger"
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
        $sequence_0 = { 8b45fc f7402801000000 755a 8b45fc 8b55fc 8b12 ff927c040000 }
            // n = 7, score = 100
            //   8b45fc               | mov                 eax, dword ptr [ebp - 4]
            //   f7402801000000       | test                dword ptr [eax + 0x28], 1
            //   755a                 | jne                 0x5c
            //   8b45fc               | mov                 eax, dword ptr [ebp - 4]
            //   8b55fc               | mov                 edx, dword ptr [ebp - 4]
            //   8b12                 | mov                 edx, dword ptr [edx]
            //   ff927c040000         | call                dword ptr [edx + 0x47c]

        $sequence_1 = { dd5df8 e8???????? ba???????? 8d45c0 e8???????? 58 85c0 }
            // n = 7, score = 100
            //   dd5df8               | fstp                qword ptr [ebp - 8]
            //   e8????????           |                     
            //   ba????????           |                     
            //   8d45c0               | lea                 eax, [ebp - 0x40]
            //   e8????????           |                     
            //   58                   | pop                 eax
            //   85c0                 | test                eax, eax

        $sequence_2 = { 8b804c010000 e8???????? e8???????? 84c0 7424 8b45f8 8b804c010000 }
            // n = 7, score = 100
            //   8b804c010000         | mov                 eax, dword ptr [eax + 0x14c]
            //   e8????????           |                     
            //   e8????????           |                     
            //   84c0                 | test                al, al
            //   7424                 | je                  0x26
            //   8b45f8               | mov                 eax, dword ptr [ebp - 8]
            //   8b804c010000         | mov                 eax, dword ptr [eax + 0x14c]

        $sequence_3 = { b003 e9???????? b004 e9???????? b005 e9???????? b006 }
            // n = 7, score = 100
            //   b003                 | mov                 al, 3
            //   e9????????           |                     
            //   b004                 | mov                 al, 4
            //   e9????????           |                     
            //   b005                 | mov                 al, 5
            //   e9????????           |                     
            //   b006                 | mov                 al, 6

        $sequence_4 = { e8???????? 8b45ec 8908 8b45f0 8b08 034df4 7105 }
            // n = 7, score = 100
            //   e8????????           |                     
            //   8b45ec               | mov                 eax, dword ptr [ebp - 0x14]
            //   8908                 | mov                 dword ptr [eax], ecx
            //   8b45f0               | mov                 eax, dword ptr [ebp - 0x10]
            //   8b08                 | mov                 ecx, dword ptr [eax]
            //   034df4               | add                 ecx, dword ptr [ebp - 0xc]
            //   7105                 | jno                 7

        $sequence_5 = { e8???????? 50 85c0 0f8528010000 8b45b8 e8???????? c745b400000000 }
            // n = 7, score = 100
            //   e8????????           |                     
            //   50                   | push                eax
            //   85c0                 | test                eax, eax
            //   0f8528010000         | jne                 0x12e
            //   8b45b8               | mov                 eax, dword ptr [ebp - 0x48]
            //   e8????????           |                     
            //   c745b400000000       | mov                 dword ptr [ebp - 0x4c], 0

        $sequence_6 = { eb16 8b45fc 8b4004 0d00001000 0d00002000 8b55fc 894204 }
            // n = 7, score = 100
            //   eb16                 | jmp                 0x18
            //   8b45fc               | mov                 eax, dword ptr [ebp - 4]
            //   8b4004               | mov                 eax, dword ptr [eax + 4]
            //   0d00001000           | or                  eax, 0x100000
            //   0d00002000           | or                  eax, 0x200000
            //   8b55fc               | mov                 edx, dword ptr [ebp - 4]
            //   894204               | mov                 dword ptr [edx + 4], eax

        $sequence_7 = { f3a5 8b45f4 83b8d002000000 7432 8b45f8 50 8b4518 }
            // n = 7, score = 100
            //   f3a5                 | rep movsd           dword ptr es:[edi], dword ptr [esi]
            //   8b45f4               | mov                 eax, dword ptr [ebp - 0xc]
            //   83b8d002000000       | cmp                 dword ptr [eax + 0x2d0], 0
            //   7432                 | je                  0x34
            //   8b45f8               | mov                 eax, dword ptr [ebp - 8]
            //   50                   | push                eax
            //   8b4518               | mov                 eax, dword ptr [ebp + 0x18]

        $sequence_8 = { 8b45f4 e8???????? 8b45f4 83c024 8a4d08 8d55ec e8???????? }
            // n = 7, score = 100
            //   8b45f4               | mov                 eax, dword ptr [ebp - 0xc]
            //   e8????????           |                     
            //   8b45f4               | mov                 eax, dword ptr [ebp - 0xc]
            //   83c024               | add                 eax, 0x24
            //   8a4d08               | mov                 cl, byte ptr [ebp + 8]
            //   8d55ec               | lea                 edx, [ebp - 0x14]
            //   e8????????           |                     

        $sequence_9 = { 8d45d4 e8???????? c745d400000000 8d45d0 e8???????? c745d000000000 8b4614 }
            // n = 7, score = 100
            //   8d45d4               | lea                 eax, [ebp - 0x2c]
            //   e8????????           |                     
            //   c745d400000000       | mov                 dword ptr [ebp - 0x2c], 0
            //   8d45d0               | lea                 eax, [ebp - 0x30]
            //   e8????????           |                     
            //   c745d000000000       | mov                 dword ptr [ebp - 0x30], 0
            //   8b4614               | mov                 eax, dword ptr [esi + 0x14]

    condition:
        7 of them and filesize < 4947968
}