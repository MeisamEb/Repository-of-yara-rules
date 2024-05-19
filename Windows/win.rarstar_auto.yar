rule win_rarstar_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-12-06"
        version = "1"
        description = "Detects win.rarstar."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.rarstar"
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
        $sequence_0 = { 8a5e01 83e203 c1fb04 c1e204 }
            // n = 4, score = 100
            //   8a5e01               | mov                 bl, byte ptr [esi + 1]
            //   83e203               | and                 edx, 3
            //   c1fb04               | sar                 ebx, 4
            //   c1e204               | shl                 edx, 4

        $sequence_1 = { 33d2 b903000000 f7f1 83c408 8bc6 }
            // n = 5, score = 100
            //   33d2                 | xor                 edx, edx
            //   b903000000           | mov                 ecx, 3
            //   f7f1                 | div                 ecx
            //   83c408               | add                 esp, 8
            //   8bc6                 | mov                 eax, esi

        $sequence_2 = { 85ed 7e6f 8a143e 83c703 c1fa02 83e23f 41 }
            // n = 7, score = 100
            //   85ed                 | test                ebp, ebp
            //   7e6f                 | jle                 0x71
            //   8a143e               | mov                 dl, byte ptr [esi + edi]
            //   83c703               | add                 edi, 3
            //   c1fa02               | sar                 edx, 2
            //   83e23f               | and                 edx, 0x3f
            //   41                   | inc                 ecx

        $sequence_3 = { 0f84c1010000 8b2d???????? 8b4c2434 8b54241c 6a00 }
            // n = 5, score = 100
            //   0f84c1010000         | je                  0x1c7
            //   8b2d????????         |                     
            //   8b4c2434             | mov                 ecx, dword ptr [esp + 0x34]
            //   8b54241c             | mov                 edx, dword ptr [esp + 0x1c]
            //   6a00                 | push                0

        $sequence_4 = { 33db 8a940c24010000 8a5c0c24 03c2 03c3 25ff000080 }
            // n = 6, score = 100
            //   33db                 | xor                 ebx, ebx
            //   8a940c24010000       | mov                 dl, byte ptr [esp + ecx + 0x124]
            //   8a5c0c24             | mov                 bl, byte ptr [esp + ecx + 0x24]
            //   03c2                 | add                 eax, edx
            //   03c3                 | add                 eax, ebx
            //   25ff000080           | and                 eax, 0x800000ff

        $sequence_5 = { ffd6 8d84241c020000 68???????? 50 ffd6 8d8c2424040000 68???????? }
            // n = 7, score = 100
            //   ffd6                 | call                esi
            //   8d84241c020000       | lea                 eax, [esp + 0x21c]
            //   68????????           |                     
            //   50                   | push                eax
            //   ffd6                 | call                esi
            //   8d8c2424040000       | lea                 ecx, [esp + 0x424]
            //   68????????           |                     

        $sequence_6 = { 8d8c2420030000 51 52 ffd5 8d842418010000 68???????? }
            // n = 6, score = 100
            //   8d8c2420030000       | lea                 ecx, [esp + 0x320]
            //   51                   | push                ecx
            //   52                   | push                edx
            //   ffd5                 | call                ebp
            //   8d842418010000       | lea                 eax, [esp + 0x118]
            //   68????????           |                     

        $sequence_7 = { 899c242c030000 899c2428030000 899c2424030000 899c2420030000 bf???????? 83c9ff }
            // n = 6, score = 100
            //   899c242c030000       | mov                 dword ptr [esp + 0x32c], ebx
            //   899c2428030000       | mov                 dword ptr [esp + 0x328], ebx
            //   899c2424030000       | mov                 dword ptr [esp + 0x324], ebx
            //   899c2420030000       | mov                 dword ptr [esp + 0x320], ebx
            //   bf????????           |                     
            //   83c9ff               | or                  ecx, 0xffffffff

        $sequence_8 = { f7d1 2bf9 899c2430030000 8bc1 8bf7 8bfa }
            // n = 6, score = 100
            //   f7d1                 | not                 ecx
            //   2bf9                 | sub                 edi, ecx
            //   899c2430030000       | mov                 dword ptr [esp + 0x330], ebx
            //   8bc1                 | mov                 eax, ecx
            //   8bf7                 | mov                 esi, edi
            //   8bfa                 | mov                 edi, edx

        $sequence_9 = { 8a9405ecfdffff 8890a0d74000 eb1c f6c202 7410 8088????????20 8a9405ecfcffff }
            // n = 7, score = 100
            //   8a9405ecfdffff       | mov                 dl, byte ptr [ebp + eax - 0x214]
            //   8890a0d74000         | mov                 byte ptr [eax + 0x40d7a0], dl
            //   eb1c                 | jmp                 0x1e
            //   f6c202               | test                dl, 2
            //   7410                 | je                  0x12
            //   8088????????20       |                     
            //   8a9405ecfcffff       | mov                 dl, byte ptr [ebp + eax - 0x314]

    condition:
        7 of them and filesize < 122880
}