rule win_vermilion_strike_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-12-06"
        version = "1"
        description = "Detects win.vermilion_strike."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.vermilion_strike"
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
        $sequence_0 = { 0f8e3f010000 56 55 8d442444 e8???????? 85ff 751b }
            // n = 7, score = 200
            //   0f8e3f010000         | jle                 0x145
            //   56                   | push                esi
            //   55                   | push                ebp
            //   8d442444             | lea                 eax, [esp + 0x44]
            //   e8????????           |                     
            //   85ff                 | test                edi, edi
            //   751b                 | jne                 0x1d

        $sequence_1 = { ff15???????? 8bf7 e8???????? 8b15???????? 6a00 6a01 }
            // n = 6, score = 200
            //   ff15????????         |                     
            //   8bf7                 | mov                 esi, edi
            //   e8????????           |                     
            //   8b15????????         |                     
            //   6a00                 | push                0
            //   6a01                 | push                1

        $sequence_2 = { 51 8d4601 e8???????? 6a30 53 8bc6 8d7c2444 }
            // n = 7, score = 200
            //   51                   | push                ecx
            //   8d4601               | lea                 eax, [esi + 1]
            //   e8????????           |                     
            //   6a30                 | push                0x30
            //   53                   | push                ebx
            //   8bc6                 | mov                 eax, esi
            //   8d7c2444             | lea                 edi, [esp + 0x44]

        $sequence_3 = { 8bd8 8beb 897c2418 85c0 7517 e8???????? 33c0 }
            // n = 7, score = 200
            //   8bd8                 | mov                 ebx, eax
            //   8beb                 | mov                 ebp, ebx
            //   897c2418             | mov                 dword ptr [esp + 0x18], edi
            //   85c0                 | test                eax, eax
            //   7517                 | jne                 0x19
            //   e8????????           |                     
            //   33c0                 | xor                 eax, eax

        $sequence_4 = { 6a00 6a00 6a03 6a00 6a00 50 53 }
            // n = 7, score = 200
            //   6a00                 | push                0
            //   6a00                 | push                0
            //   6a03                 | push                3
            //   6a00                 | push                0
            //   6a00                 | push                0
            //   50                   | push                eax
            //   53                   | push                ebx

        $sequence_5 = { 83c8ff 8bf7 c744244802000000 e8???????? 885c2440 396c2428 720d }
            // n = 7, score = 200
            //   83c8ff               | or                  eax, 0xffffffff
            //   8bf7                 | mov                 esi, edi
            //   c744244802000000     | mov                 dword ptr [esp + 0x48], 2
            //   e8????????           |                     
            //   885c2440             | mov                 byte ptr [esp + 0x40], bl
            //   396c2428             | cmp                 dword ptr [esp + 0x28], ebp
            //   720d                 | jb                  0xf

        $sequence_6 = { 83c004 395e18 7205 8b7604 eb03 83c604 8b3d???????? }
            // n = 7, score = 200
            //   83c004               | add                 eax, 4
            //   395e18               | cmp                 dword ptr [esi + 0x18], ebx
            //   7205                 | jb                  7
            //   8b7604               | mov                 esi, dword ptr [esi + 4]
            //   eb03                 | jmp                 5
            //   83c604               | add                 esi, 4
            //   8b3d????????         |                     

        $sequence_7 = { 8bc1 57 c746180f000000 c7461400000000 c744240400000000 c6460400 }
            // n = 6, score = 200
            //   8bc1                 | mov                 eax, ecx
            //   57                   | push                edi
            //   c746180f000000       | mov                 dword ptr [esi + 0x18], 0xf
            //   c7461400000000       | mov                 dword ptr [esi + 0x14], 0
            //   c744240400000000     | mov                 dword ptr [esp + 4], 0
            //   c6460400             | mov                 byte ptr [esi + 4], 0

        $sequence_8 = { 6a02 8bc3 7413 68???????? e8???????? 6a02 68???????? }
            // n = 7, score = 200
            //   6a02                 | push                2
            //   8bc3                 | mov                 eax, ebx
            //   7413                 | je                  0x15
            //   68????????           |                     
            //   e8????????           |                     
            //   6a02                 | push                2
            //   68????????           |                     

        $sequence_9 = { 3bc5 7405 e8???????? 2bdf 8b542424 52 }
            // n = 6, score = 200
            //   3bc5                 | cmp                 eax, ebp
            //   7405                 | je                  7
            //   e8????????           |                     
            //   2bdf                 | sub                 ebx, edi
            //   8b542424             | mov                 edx, dword ptr [esp + 0x24]
            //   52                   | push                edx

    condition:
        7 of them and filesize < 540672
}