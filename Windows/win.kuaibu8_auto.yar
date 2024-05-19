rule win_kuaibu8_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-12-06"
        version = "1"
        description = "Detects win.kuaibu8."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.kuaibu8"
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
        $sequence_0 = { 53 e8???????? 83c404 58 8945e4 8b5ddc }
            // n = 6, score = 100
            //   53                   | push                ebx
            //   e8????????           |                     
            //   83c404               | add                 esp, 4
            //   58                   | pop                 eax
            //   8945e4               | mov                 dword ptr [ebp - 0x1c], eax
            //   8b5ddc               | mov                 ebx, dword ptr [ebp - 0x24]

        $sequence_1 = { 895dc8 6a00 6a00 6a00 6804000080 }
            // n = 5, score = 100
            //   895dc8               | mov                 dword ptr [ebp - 0x38], ebx
            //   6a00                 | push                0
            //   6a00                 | push                0
            //   6a00                 | push                0
            //   6804000080           | push                0x80000004

        $sequence_2 = { 52 e8???????? 83c404 8d0c2f 8bf0 8b03 }
            // n = 6, score = 100
            //   52                   | push                edx
            //   e8????????           |                     
            //   83c404               | add                 esp, 4
            //   8d0c2f               | lea                 ecx, [edi + ebp]
            //   8bf0                 | mov                 esi, eax
            //   8b03                 | mov                 eax, dword ptr [ebx]

        $sequence_3 = { e9???????? 8b5dec e8???????? 8945d8 837dd803 0f8586010000 }
            // n = 6, score = 100
            //   e9????????           |                     
            //   8b5dec               | mov                 ebx, dword ptr [ebp - 0x14]
            //   e8????????           |                     
            //   8945d8               | mov                 dword ptr [ebp - 0x28], eax
            //   837dd803             | cmp                 dword ptr [ebp - 0x28], 3
            //   0f8586010000         | jne                 0x18c

        $sequence_4 = { ff75f4 e8???????? 83c408 83f800 0f8521000000 8b45fc 85c0 }
            // n = 7, score = 100
            //   ff75f4               | push                dword ptr [ebp - 0xc]
            //   e8????????           |                     
            //   83c408               | add                 esp, 8
            //   83f800               | cmp                 eax, 0
            //   0f8521000000         | jne                 0x27
            //   8b45fc               | mov                 eax, dword ptr [ebp - 4]
            //   85c0                 | test                eax, eax

        $sequence_5 = { 81ec30000000 c745fc00000000 8965f8 8b5d08 ff33 ff15???????? 90 }
            // n = 7, score = 100
            //   81ec30000000         | sub                 esp, 0x30
            //   c745fc00000000       | mov                 dword ptr [ebp - 4], 0
            //   8965f8               | mov                 dword ptr [ebp - 8], esp
            //   8b5d08               | mov                 ebx, dword ptr [ebp + 8]
            //   ff33                 | push                dword ptr [ebx]
            //   ff15????????         |                     
            //   90                   | nop                 

        $sequence_6 = { e8???????? 8945d4 8b5ddc 85db 7409 }
            // n = 5, score = 100
            //   e8????????           |                     
            //   8945d4               | mov                 dword ptr [ebp - 0x2c], eax
            //   8b5ddc               | mov                 ebx, dword ptr [ebp - 0x24]
            //   85db                 | test                ebx, ebx
            //   7409                 | je                  0xb

        $sequence_7 = { 53 e8???????? 83c404 58 8945f4 6805000000 e8???????? }
            // n = 7, score = 100
            //   53                   | push                ebx
            //   e8????????           |                     
            //   83c404               | add                 esp, 4
            //   58                   | pop                 eax
            //   8945f4               | mov                 dword ptr [ebp - 0xc], eax
            //   6805000000           | push                5
            //   e8????????           |                     

        $sequence_8 = { dd5de8 dd45e8 dc25???????? dd5de0 8b5df8 e8???????? b802000000 }
            // n = 7, score = 100
            //   dd5de8               | fstp                qword ptr [ebp - 0x18]
            //   dd45e8               | fld                 qword ptr [ebp - 0x18]
            //   dc25????????         |                     
            //   dd5de0               | fstp                qword ptr [ebp - 0x20]
            //   8b5df8               | mov                 ebx, dword ptr [ebp - 8]
            //   e8????????           |                     
            //   b802000000           | mov                 eax, 2

        $sequence_9 = { 83c404 8803 e9???????? bd02000000 55 e8???????? 668b4e0c }
            // n = 7, score = 100
            //   83c404               | add                 esp, 4
            //   8803                 | mov                 byte ptr [ebx], al
            //   e9????????           |                     
            //   bd02000000           | mov                 ebp, 2
            //   55                   | push                ebp
            //   e8????????           |                     
            //   668b4e0c             | mov                 cx, word ptr [esi + 0xc]

    condition:
        7 of them and filesize < 737280
}