rule win_maui_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-12-06"
        version = "1"
        description = "Detects win.maui."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.maui"
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
        $sequence_0 = { 8b1b 895c2410 a810 0f841a010000 57 51 25c0000000 }
            // n = 7, score = 100
            //   8b1b                 | mov                 ebx, dword ptr [ebx]
            //   895c2410             | mov                 dword ptr [esp + 0x10], ebx
            //   a810                 | test                al, 0x10
            //   0f841a010000         | je                  0x120
            //   57                   | push                edi
            //   51                   | push                ecx
            //   25c0000000           | and                 eax, 0xc0

        $sequence_1 = { 83c40c 85c0 7515 53 e8???????? 57 e8???????? }
            // n = 7, score = 100
            //   83c40c               | add                 esp, 0xc
            //   85c0                 | test                eax, eax
            //   7515                 | jne                 0x17
            //   53                   | push                ebx
            //   e8????????           |                     
            //   57                   | push                edi
            //   e8????????           |                     

        $sequence_2 = { 83c404 5f 5b 5e 5d c3 8bce }
            // n = 7, score = 100
            //   83c404               | add                 esp, 4
            //   5f                   | pop                 edi
            //   5b                   | pop                 ebx
            //   5e                   | pop                 esi
            //   5d                   | pop                 ebp
            //   c3                   | ret                 
            //   8bce                 | mov                 ecx, esi

        $sequence_3 = { c1e010 094610 0fb64101 41 99 0fa4c208 095614 }
            // n = 7, score = 100
            //   c1e010               | shl                 eax, 0x10
            //   094610               | or                  dword ptr [esi + 0x10], eax
            //   0fb64101             | movzx               eax, byte ptr [ecx + 1]
            //   41                   | inc                 ecx
            //   99                   | cdq                 
            //   0fa4c208             | shld                edx, eax, 8
            //   095614               | or                  dword ptr [esi + 0x14], edx

        $sequence_4 = { e8???????? 83c408 85c0 0f846b010000 3b5d20 8d4518 7e0a }
            // n = 7, score = 100
            //   e8????????           |                     
            //   83c408               | add                 esp, 8
            //   85c0                 | test                eax, eax
            //   0f846b010000         | je                  0x171
            //   3b5d20               | cmp                 ebx, dword ptr [ebp + 0x20]
            //   8d4518               | lea                 eax, [ebp + 0x18]
            //   7e0a                 | jle                 0xc

        $sequence_5 = { 85c0 750a 68d0010000 e9???????? 8b542438 8b02 56 }
            // n = 7, score = 100
            //   85c0                 | test                eax, eax
            //   750a                 | jne                 0xc
            //   68d0010000           | push                0x1d0
            //   e9????????           |                     
            //   8b542438             | mov                 edx, dword ptr [esp + 0x38]
            //   8b02                 | mov                 eax, dword ptr [edx]
            //   56                   | push                esi

        $sequence_6 = { e8???????? 83c40c 85c0 0f849b010000 8d442428 57 50 }
            // n = 7, score = 100
            //   e8????????           |                     
            //   83c40c               | add                 esp, 0xc
            //   85c0                 | test                eax, eax
            //   0f849b010000         | je                  0x1a1
            //   8d442428             | lea                 eax, [esp + 0x28]
            //   57                   | push                edi
            //   50                   | push                eax

        $sequence_7 = { 8bac24a4000000 f7463c00010000 753a 8b4628 8b10 89542460 8b5004 }
            // n = 7, score = 100
            //   8bac24a4000000       | mov                 ebp, dword ptr [esp + 0xa4]
            //   f7463c00010000       | test                dword ptr [esi + 0x3c], 0x100
            //   753a                 | jne                 0x3c
            //   8b4628               | mov                 eax, dword ptr [esi + 0x28]
            //   8b10                 | mov                 edx, dword ptr [eax]
            //   89542460             | mov                 dword ptr [esp + 0x60], edx
            //   8b5004               | mov                 edx, dword ptr [eax + 4]

        $sequence_8 = { 50 50 50 50 e8???????? 83c414 ff33 }
            // n = 7, score = 100
            //   50                   | push                eax
            //   50                   | push                eax
            //   50                   | push                eax
            //   50                   | push                eax
            //   e8????????           |                     
            //   83c414               | add                 esp, 0x14
            //   ff33                 | push                dword ptr [ebx]

        $sequence_9 = { e8???????? 53 89442438 8907 e8???????? 53 89442460 }
            // n = 7, score = 100
            //   e8????????           |                     
            //   53                   | push                ebx
            //   89442438             | mov                 dword ptr [esp + 0x38], eax
            //   8907                 | mov                 dword ptr [edi], eax
            //   e8????????           |                     
            //   53                   | push                ebx
            //   89442460             | mov                 dword ptr [esp + 0x60], eax

    condition:
        7 of them and filesize < 1616896
}