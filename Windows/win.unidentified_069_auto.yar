rule win_unidentified_069_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-12-06"
        version = "1"
        description = "Detects win.unidentified_069."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.unidentified_069"
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
        $sequence_0 = { ffd3 33c0 5f 5b c9 c20400 55 }
            // n = 7, score = 100
            //   ffd3                 | call                ebx
            //   33c0                 | xor                 eax, eax
            //   5f                   | pop                 edi
            //   5b                   | pop                 ebx
            //   c9                   | leave               
            //   c20400               | ret                 4
            //   55                   | push                ebp

        $sequence_1 = { 8bc6 c1e710 e8???????? 0fb7c0 0bc7 8945cc }
            // n = 6, score = 100
            //   8bc6                 | mov                 eax, esi
            //   c1e710               | shl                 edi, 0x10
            //   e8????????           |                     
            //   0fb7c0               | movzx               eax, ax
            //   0bc7                 | or                  eax, edi
            //   8945cc               | mov                 dword ptr [ebp - 0x34], eax

        $sequence_2 = { ff15???????? 8b3d???????? 8945f0 3bc6 7460 53 }
            // n = 6, score = 100
            //   ff15????????         |                     
            //   8b3d????????         |                     
            //   8945f0               | mov                 dword ptr [ebp - 0x10], eax
            //   3bc6                 | cmp                 eax, esi
            //   7460                 | je                  0x62
            //   53                   | push                ebx

        $sequence_3 = { 85c0 7520 ff7508 e8???????? 85c0 7414 ff7508 }
            // n = 7, score = 100
            //   85c0                 | test                eax, eax
            //   7520                 | jne                 0x22
            //   ff7508               | push                dword ptr [ebp + 8]
            //   e8????????           |                     
            //   85c0                 | test                eax, eax
            //   7414                 | je                  0x16
            //   ff7508               | push                dword ptr [ebp + 8]

        $sequence_4 = { 68???????? 891d???????? 891d???????? ffd6 8b35???????? 68???????? ffd6 }
            // n = 7, score = 100
            //   68????????           |                     
            //   891d????????         |                     
            //   891d????????         |                     
            //   ffd6                 | call                esi
            //   8b35????????         |                     
            //   68????????           |                     
            //   ffd6                 | call                esi

        $sequence_5 = { 84c0 7504 c645fa01 807dfbff 6a08 5b 0f8581000000 }
            // n = 7, score = 100
            //   84c0                 | test                al, al
            //   7504                 | jne                 6
            //   c645fa01             | mov                 byte ptr [ebp - 6], 1
            //   807dfbff             | cmp                 byte ptr [ebp - 5], 0xff
            //   6a08                 | push                8
            //   5b                   | pop                 ebx
            //   0f8581000000         | jne                 0x87

        $sequence_6 = { 52 51 50 e8???????? 015608 837de000 8b4608 }
            // n = 7, score = 100
            //   52                   | push                edx
            //   51                   | push                ecx
            //   50                   | push                eax
            //   e8????????           |                     
            //   015608               | add                 dword ptr [esi + 8], edx
            //   837de000             | cmp                 dword ptr [ebp - 0x20], 0
            //   8b4608               | mov                 eax, dword ptr [esi + 8]

        $sequence_7 = { 7447 8d85c8fdffff 50 e8???????? 6811270000 56 }
            // n = 6, score = 100
            //   7447                 | je                  0x49
            //   8d85c8fdffff         | lea                 eax, [ebp - 0x238]
            //   50                   | push                eax
            //   e8????????           |                     
            //   6811270000           | push                0x2711
            //   56                   | push                esi

        $sequence_8 = { 83e924 85ff 77f3 3bf8 7427 85ff 750e }
            // n = 7, score = 100
            //   83e924               | sub                 ecx, 0x24
            //   85ff                 | test                edi, edi
            //   77f3                 | ja                  0xfffffff5
            //   3bf8                 | cmp                 edi, eax
            //   7427                 | je                  0x29
            //   85ff                 | test                edi, edi
            //   750e                 | jne                 0x10

        $sequence_9 = { 837d0800 0f85a0000000 e8???????? 8bf0 85f6 0f8491000000 }
            // n = 6, score = 100
            //   837d0800             | cmp                 dword ptr [ebp + 8], 0
            //   0f85a0000000         | jne                 0xa6
            //   e8????????           |                     
            //   8bf0                 | mov                 esi, eax
            //   85f6                 | test                esi, esi
            //   0f8491000000         | je                  0x97

    condition:
        7 of them and filesize < 434176
}