rule win_ruckguv_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-12-06"
        version = "1"
        description = "Detects win.ruckguv."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.ruckguv"
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
        $sequence_0 = { 7403 51 eb04 0fb7c0 50 ff7508 }
            // n = 6, score = 200
            //   7403                 | je                  5
            //   51                   | push                ecx
            //   eb04                 | jmp                 6
            //   0fb7c0               | movzx               eax, ax
            //   50                   | push                eax
            //   ff7508               | push                dword ptr [ebp + 8]

        $sequence_1 = { 56 53 e8???????? 8b463c 68f8000000 }
            // n = 5, score = 200
            //   56                   | push                esi
            //   53                   | push                ebx
            //   e8????????           |                     
            //   8b463c               | mov                 eax, dword ptr [esi + 0x3c]
            //   68f8000000           | push                0xf8

        $sequence_2 = { ff75fc 8d85b0f7ffff 50 ff75f4 }
            // n = 4, score = 200
            //   ff75fc               | push                dword ptr [ebp - 4]
            //   8d85b0f7ffff         | lea                 eax, [ebp - 0x850]
            //   50                   | push                eax
            //   ff75f4               | push                dword ptr [ebp - 0xc]

        $sequence_3 = { 59 894508 85c0 750f 8b470c }
            // n = 5, score = 200
            //   59                   | pop                 ecx
            //   894508               | mov                 dword ptr [ebp + 8], eax
            //   85c0                 | test                eax, eax
            //   750f                 | jne                 0x11
            //   8b470c               | mov                 eax, dword ptr [edi + 0xc]

        $sequence_4 = { 85c0 0f848b000000 57 8d3c18 8b470c 85c0 }
            // n = 6, score = 200
            //   85c0                 | test                eax, eax
            //   0f848b000000         | je                  0x91
            //   57                   | push                edi
            //   8d3c18               | lea                 edi, [eax + ebx]
            //   8b470c               | mov                 eax, dword ptr [edi + 0xc]
            //   85c0                 | test                eax, eax

        $sequence_5 = { 8a0a 84c9 75f1 c3 682680acc8 }
            // n = 5, score = 200
            //   8a0a                 | mov                 cl, byte ptr [edx]
            //   84c9                 | test                cl, cl
            //   75f1                 | jne                 0xfffffff3
            //   c3                   | ret                 
            //   682680acc8           | push                0xc8ac8026

        $sequence_6 = { 83c0c0 50 8d4640 50 8d4340 }
            // n = 5, score = 200
            //   83c0c0               | add                 eax, -0x40
            //   50                   | push                eax
            //   8d4640               | lea                 eax, [esi + 0x40]
            //   50                   | push                eax
            //   8d4340               | lea                 eax, [ebx + 0x40]

        $sequence_7 = { 68dff0f081 6a01 e8???????? 83c40c 8d8d9cfdffff 51 ffd0 }
            // n = 7, score = 200
            //   68dff0f081           | push                0x81f0f0df
            //   6a01                 | push                1
            //   e8????????           |                     
            //   83c40c               | add                 esp, 0xc
            //   8d8d9cfdffff         | lea                 ecx, [ebp - 0x264]
            //   51                   | push                ecx
            //   ffd0                 | call                eax

        $sequence_8 = { 6880000000 6a03 56 56 53 }
            // n = 5, score = 200
            //   6880000000           | push                0x80
            //   6a03                 | push                3
            //   56                   | push                esi
            //   56                   | push                esi
            //   53                   | push                ebx

        $sequence_9 = { 59 59 ff742404 ffd0 c3 6831f478b7 }
            // n = 6, score = 200
            //   59                   | pop                 ecx
            //   59                   | pop                 ecx
            //   ff742404             | push                dword ptr [esp + 4]
            //   ffd0                 | call                eax
            //   c3                   | ret                 
            //   6831f478b7           | push                0xb778f431

    condition:
        7 of them and filesize < 41024
}