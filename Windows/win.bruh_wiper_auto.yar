rule win_bruh_wiper_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-12-06"
        version = "1"
        description = "Detects win.bruh_wiper."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.bruh_wiper"
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
        $sequence_0 = { e8???????? 83c40c be01080000 0f1f8000000000 }
            // n = 4, score = 100
            //   e8????????           |                     
            //   83c40c               | add                 esp, 0xc
            //   be01080000           | mov                 esi, 0x801
            //   0f1f8000000000       | nop                 dword ptr [eax]

        $sequence_1 = { 83ee01 75e3 8b4dfc 5f 5e }
            // n = 5, score = 100
            //   83ee01               | sub                 esi, 1
            //   75e3                 | jne                 0xffffffe5
            //   8b4dfc               | mov                 ecx, dword ptr [ebp - 4]
            //   5f                   | pop                 edi
            //   5e                   | pop                 esi

        $sequence_2 = { 8d45f4 57 50 ff15???????? ff15???????? }
            // n = 5, score = 100
            //   8d45f4               | lea                 eax, [ebp - 0xc]
            //   57                   | push                edi
            //   50                   | push                eax
            //   ff15????????         |                     
            //   ff15????????         |                     

        $sequence_3 = { 68b40200c0 ffd6 8b4dfc 5f 33cd 5e }
            // n = 6, score = 100
            //   68b40200c0           | push                0xc00002b4
            //   ffd6                 | call                esi
            //   8b4dfc               | mov                 ecx, dword ptr [ebp - 4]
            //   5f                   | pop                 edi
            //   33cd                 | xor                 ecx, ebp
            //   5e                   | pop                 esi

        $sequence_4 = { 6a00 8d85f8fdffff 50 6800020000 8d85fcfdffff 50 }
            // n = 6, score = 100
            //   6a00                 | push                0
            //   8d85f8fdffff         | lea                 eax, [ebp - 0x208]
            //   50                   | push                eax
            //   6800020000           | push                0x200
            //   8d85fcfdffff         | lea                 eax, [ebp - 0x204]
            //   50                   | push                eax

        $sequence_5 = { 68???????? 57 ffd3 6800020000 8d85fcfdffff 6a00 }
            // n = 6, score = 100
            //   68????????           |                     
            //   57                   | push                edi
            //   ffd3                 | call                ebx
            //   6800020000           | push                0x200
            //   8d85fcfdffff         | lea                 eax, [ebp - 0x204]
            //   6a00                 | push                0

        $sequence_6 = { 50 ffd6 8bf0 8d45fb 50 6a00 6a01 }
            // n = 7, score = 100
            //   50                   | push                eax
            //   ffd6                 | call                esi
            //   8bf0                 | mov                 esi, eax
            //   8d45fb               | lea                 eax, [ebp - 5]
            //   50                   | push                eax
            //   6a00                 | push                0
            //   6a01                 | push                1

        $sequence_7 = { 6800200000 68???????? 57 ffd3 6800020000 8d85fcfdffff }
            // n = 6, score = 100
            //   6800200000           | push                0x2000
            //   68????????           |                     
            //   57                   | push                edi
            //   ffd3                 | call                ebx
            //   6800020000           | push                0x200
            //   8d85fcfdffff         | lea                 eax, [ebp - 0x204]

        $sequence_8 = { e8???????? 83c40c be01080000 0f1f8000000000 6a00 }
            // n = 5, score = 100
            //   e8????????           |                     
            //   83c40c               | add                 esp, 0xc
            //   be01080000           | mov                 esi, 0x801
            //   0f1f8000000000       | nop                 dword ptr [eax]
            //   6a00                 | push                0

        $sequence_9 = { 50 ffd6 68???????? 68???????? 8bf8 }
            // n = 5, score = 100
            //   50                   | push                eax
            //   ffd6                 | call                esi
            //   68????????           |                     
            //   68????????           |                     
            //   8bf8                 | mov                 edi, eax

    condition:
        7 of them and filesize < 65536
}