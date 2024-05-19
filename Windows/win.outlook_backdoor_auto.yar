rule win_outlook_backdoor_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-12-06"
        version = "1"
        description = "Detects win.outlook_backdoor."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.outlook_backdoor"
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
        $sequence_0 = { ff753c 53 68e9fd0000 ffd6 8d4d00 894568 e8???????? }
            // n = 7, score = 600
            //   ff753c               | push                dword ptr [ebp + 0x3c]
            //   53                   | push                ebx
            //   68e9fd0000           | push                0xfde9
            //   ffd6                 | call                esi
            //   8d4d00               | lea                 ecx, [ebp]
            //   894568               | mov                 dword ptr [ebp + 0x68], eax
            //   e8????????           |                     

        $sequence_1 = { ff10 8b4c2408 ff74240c 8d04c8 8b4804 85c9 740b }
            // n = 7, score = 600
            //   ff10                 | call                dword ptr [eax]
            //   8b4c2408             | mov                 ecx, dword ptr [esp + 8]
            //   ff74240c             | push                dword ptr [esp + 0xc]
            //   8d04c8               | lea                 eax, [eax + ecx*8]
            //   8b4804               | mov                 ecx, dword ptr [eax + 4]
            //   85c9                 | test                ecx, ecx
            //   740b                 | je                  0xd

        $sequence_2 = { c9 c20800 56 8bf7 e8???????? 8d771c e8???????? }
            // n = 7, score = 600
            //   c9                   | leave               
            //   c20800               | ret                 8
            //   56                   | push                esi
            //   8bf7                 | mov                 esi, edi
            //   e8????????           |                     
            //   8d771c               | lea                 esi, [edi + 0x1c]
            //   e8????????           |                     

        $sequence_3 = { c745e01f000130 895d0c ff15???????? 8b450c 8945f0 895dfc 33c9 }
            // n = 7, score = 600
            //   c745e01f000130       | mov                 dword ptr [ebp - 0x20], 0x3001001f
            //   895d0c               | mov                 dword ptr [ebp + 0xc], ebx
            //   ff15????????         |                     
            //   8b450c               | mov                 eax, dword ptr [ebp + 0xc]
            //   8945f0               | mov                 dword ptr [ebp - 0x10], eax
            //   895dfc               | mov                 dword ptr [ebp - 4], ebx
            //   33c9                 | xor                 ecx, ecx

        $sequence_4 = { 6898000000 e8???????? 59 8945ec c645fc01 }
            // n = 5, score = 600
            //   6898000000           | push                0x98
            //   e8????????           |                     
            //   59                   | pop                 ecx
            //   8945ec               | mov                 dword ptr [ebp - 0x14], eax
            //   c645fc01             | mov                 byte ptr [ebp - 4], 1

        $sequence_5 = { f6455404 740e 836554fb 57 56 8d4dbc e8???????? }
            // n = 7, score = 600
            //   f6455404             | test                byte ptr [ebp + 0x54], 4
            //   740e                 | je                  0x10
            //   836554fb             | and                 dword ptr [ebp + 0x54], 0xfffffffb
            //   57                   | push                edi
            //   56                   | push                esi
            //   8d4dbc               | lea                 ecx, [ebp - 0x44]
            //   e8????????           |                     

        $sequence_6 = { c3 57 6a2c e8???????? 8bf8 59 85ff }
            // n = 7, score = 600
            //   c3                   | ret                 
            //   57                   | push                edi
            //   6a2c                 | push                0x2c
            //   e8????????           |                     
            //   8bf8                 | mov                 edi, eax
            //   59                   | pop                 ecx
            //   85ff                 | test                edi, edi

        $sequence_7 = { 5f 5e 8d4302 5b c3 53 8bd9 }
            // n = 7, score = 600
            //   5f                   | pop                 edi
            //   5e                   | pop                 esi
            //   8d4302               | lea                 eax, [ebx + 2]
            //   5b                   | pop                 ebx
            //   c3                   | ret                 
            //   53                   | push                ebx
            //   8bd9                 | mov                 ebx, ecx

        $sequence_8 = { 50 e8???????? 834d1004 f6451002 740f 836510fd }
            // n = 6, score = 600
            //   50                   | push                eax
            //   e8????????           |                     
            //   834d1004             | or                  dword ptr [ebp + 0x10], 4
            //   f6451002             | test                byte ptr [ebp + 0x10], 2
            //   740f                 | je                  0x11
            //   836510fd             | and                 dword ptr [ebp + 0x10], 0xfffffffd

        $sequence_9 = { e8???????? 83ec38 56 57 8bf1 8b4604 33ff }
            // n = 7, score = 600
            //   e8????????           |                     
            //   83ec38               | sub                 esp, 0x38
            //   56                   | push                esi
            //   57                   | push                edi
            //   8bf1                 | mov                 esi, ecx
            //   8b4604               | mov                 eax, dword ptr [esi + 4]
            //   33ff                 | xor                 edi, edi

    condition:
        7 of them and filesize < 2912256
}