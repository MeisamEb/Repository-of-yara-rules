rule win_carrotball_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-12-06"
        version = "1"
        description = "Detects win.carrotball."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.carrotball"
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
        $sequence_0 = { ff15???????? eb36 68???????? 56 ff15???????? }
            // n = 5, score = 200
            //   ff15????????         |                     
            //   eb36                 | jmp                 0x38
            //   68????????           |                     
            //   56                   | push                esi
            //   ff15????????         |                     

        $sequence_1 = { 6a04 58 6bc000 c7807430001002000000 6a04 }
            // n = 5, score = 200
            //   6a04                 | push                4
            //   58                   | pop                 eax
            //   6bc000               | imul                eax, eax, 0
            //   c7807430001002000000     | mov    dword ptr [eax + 0x10003074], 2
            //   6a04                 | push                4

        $sequence_2 = { 5f 8b4dfc 33cd 33c0 e8???????? 8be5 5d }
            // n = 7, score = 200
            //   5f                   | pop                 edi
            //   8b4dfc               | mov                 ecx, dword ptr [ebp - 4]
            //   33cd                 | xor                 ecx, ebp
            //   33c0                 | xor                 eax, eax
            //   e8????????           |                     
            //   8be5                 | mov                 esp, ebp
            //   5d                   | pop                 ebp

        $sequence_3 = { ffd6 5e 5f 8b4dfc 33cd 33c0 }
            // n = 6, score = 200
            //   ffd6                 | call                esi
            //   5e                   | pop                 esi
            //   5f                   | pop                 edi
            //   8b4dfc               | mov                 ecx, dword ptr [ebp - 4]
            //   33cd                 | xor                 ecx, ebp
            //   33c0                 | xor                 eax, eax

        $sequence_4 = { 68???????? ff15???????? eb36 68???????? 56 }
            // n = 5, score = 200
            //   68????????           |                     
            //   ff15????????         |                     
            //   eb36                 | jmp                 0x38
            //   68????????           |                     
            //   56                   | push                esi

        $sequence_5 = { 8bf0 85f6 0f84ac000000 68???????? }
            // n = 4, score = 200
            //   8bf0                 | mov                 esi, eax
            //   85f6                 | test                esi, esi
            //   0f84ac000000         | je                  0xb2
            //   68????????           |                     

        $sequence_6 = { 56 ff15???????? 85c0 7432 8d85ecfdffff }
            // n = 5, score = 200
            //   56                   | push                esi
            //   ff15????????         |                     
            //   85c0                 | test                eax, eax
            //   7432                 | je                  0x34
            //   8d85ecfdffff         | lea                 eax, [ebp - 0x214]

        $sequence_7 = { ff15???????? 8bf8 85ff 0f84d9000000 56 }
            // n = 5, score = 200
            //   ff15????????         |                     
            //   8bf8                 | mov                 edi, eax
            //   85ff                 | test                edi, edi
            //   0f84d9000000         | je                  0xdf
            //   56                   | push                esi

        $sequence_8 = { ff15???????? 8bf0 85f6 0f84ac000000 68???????? 56 ff15???????? }
            // n = 7, score = 200
            //   ff15????????         |                     
            //   8bf0                 | mov                 esi, eax
            //   85f6                 | test                esi, esi
            //   0f84ac000000         | je                  0xb2
            //   68????????           |                     
            //   56                   | push                esi
            //   ff15????????         |                     

        $sequence_9 = { 6bc000 c7807430001002000000 6a04 58 6bc000 }
            // n = 5, score = 200
            //   6bc000               | imul                eax, eax, 0
            //   c7807430001002000000     | mov    dword ptr [eax + 0x10003074], 2
            //   6a04                 | push                4
            //   58                   | pop                 eax
            //   6bc000               | imul                eax, eax, 0

    condition:
        7 of them and filesize < 40960
}