rule win_syscon_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-12-06"
        version = "1"
        description = "Detects win.syscon."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.syscon"
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
        $sequence_0 = { 83e4f8 81ecdc0b0000 a1???????? 33c4 898424d80b0000 53 56 }
            // n = 7, score = 200
            //   83e4f8               | and                 esp, 0xfffffff8
            //   81ecdc0b0000         | sub                 esp, 0xbdc
            //   a1????????           |                     
            //   33c4                 | xor                 eax, esp
            //   898424d80b0000       | mov                 dword ptr [esp + 0xbd8], eax
            //   53                   | push                ebx
            //   56                   | push                esi

        $sequence_1 = { 0f84af000000 53 57 8bc6 e8???????? 83c408 }
            // n = 6, score = 200
            //   0f84af000000         | je                  0xb5
            //   53                   | push                ebx
            //   57                   | push                edi
            //   8bc6                 | mov                 eax, esi
            //   e8????????           |                     
            //   83c408               | add                 esp, 8

        $sequence_2 = { 0f84d8000000 6a00 8d4dfc 51 53 }
            // n = 5, score = 200
            //   0f84d8000000         | je                  0xde
            //   6a00                 | push                0
            //   8d4dfc               | lea                 ecx, [ebp - 4]
            //   51                   | push                ecx
            //   53                   | push                ebx

        $sequence_3 = { ffd7 8d4c2428 51 8d942414040000 68???????? }
            // n = 5, score = 200
            //   ffd7                 | call                edi
            //   8d4c2428             | lea                 ecx, [esp + 0x28]
            //   51                   | push                ecx
            //   8d942414040000       | lea                 edx, [esp + 0x414]
            //   68????????           |                     

        $sequence_4 = { 88040f 47 897df8 8b45f4 03c6 }
            // n = 5, score = 200
            //   88040f               | mov                 byte ptr [edi + ecx], al
            //   47                   | inc                 edi
            //   897df8               | mov                 dword ptr [ebp - 8], edi
            //   8b45f4               | mov                 eax, dword ptr [ebp - 0xc]
            //   03c6                 | add                 eax, esi

        $sequence_5 = { ffd6 68???????? ffd6 5f 5e b801000000 }
            // n = 6, score = 200
            //   ffd6                 | call                esi
            //   68????????           |                     
            //   ffd6                 | call                esi
            //   5f                   | pop                 edi
            //   5e                   | pop                 esi
            //   b801000000           | mov                 eax, 1

        $sequence_6 = { ffd6 68???????? c745fc00000000 ffd6 }
            // n = 4, score = 200
            //   ffd6                 | call                esi
            //   68????????           |                     
            //   c745fc00000000       | mov                 dword ptr [ebp - 4], 0
            //   ffd6                 | call                esi

        $sequence_7 = { 8935???????? ffd7 8d5e01 85c0 7539 a1???????? }
            // n = 6, score = 200
            //   8935????????         |                     
            //   ffd7                 | call                edi
            //   8d5e01               | lea                 ebx, [esi + 1]
            //   85c0                 | test                eax, eax
            //   7539                 | jne                 0x3b
            //   a1????????           |                     

        $sequence_8 = { ff15???????? 488905???????? 4885c0 0f84fbf8ffff }
            // n = 4, score = 100
            //   ff15????????         |                     
            //   488905????????       |                     
            //   4885c0               | mov                 edx, eax
            //   0f84fbf8ffff         | dec                 eax

        $sequence_9 = { 4885c0 7486 488364242000 4c8d8d90030000 448bc3 488bd0 488bcf }
            // n = 7, score = 100
            //   4885c0               | dec                 eax
            //   7486                 | lea                 eax, [ebp + 0x630]
            //   488364242000         | dec                 eax
            //   4c8d8d90030000       | test                eax, eax
            //   448bc3               | je                  0xffffff88
            //   488bd0               | dec                 eax
            //   488bcf               | and                 dword ptr [esp + 0x20], 0

        $sequence_10 = { 80bd3006000020 418bce 7511 488d8530060000 }
            // n = 4, score = 100
            //   80bd3006000020       | cmp                 byte ptr [ebp + 0x630], 0x20
            //   418bce               | inc                 ecx
            //   7511                 | mov                 ecx, esi
            //   488d8530060000       | jne                 0x13

        $sequence_11 = { 33d2 e8???????? 488d0da4320000 ff15???????? 488d9520040000 488d0d90320000 448bc0 }
            // n = 7, score = 100
            //   33d2                 | dec                 esp
            //   e8????????           |                     
            //   488d0da4320000       | lea                 ecx, [ebp + 0x390]
            //   ff15????????         |                     
            //   488d9520040000       | inc                 esp
            //   488d0d90320000       | mov                 eax, ebx
            //   448bc0               | dec                 eax

        $sequence_12 = { 488d8d10020000 ff15???????? 488d4d90 448bc3 }
            // n = 4, score = 100
            //   488d8d10020000       | mov                 ecx, edi
            //   ff15????????         |                     
            //   488d4d90             | xor                 edx, edx
            //   448bc3               | dec                 eax

        $sequence_13 = { 488d5590 488d0daa300000 448bc0 e8???????? }
            // n = 4, score = 100
            //   488d5590             | lea                 ecx, [0x3290]
            //   488d0daa300000       | inc                 esp
            //   448bc0               | mov                 eax, eax
            //   e8????????           |                     

        $sequence_14 = { 488d542450 488d0dad290000 448bc0 e8???????? 488b0d???????? }
            // n = 5, score = 100
            //   488d542450           | dec                 eax
            //   488d0dad290000       | lea                 ecx, [ebp + 0x210]
            //   448bc0               | dec                 eax
            //   e8????????           |                     
            //   488b0d????????       |                     

        $sequence_15 = { 488d4c2420 4c8bc6 33d2 e8???????? 488d0dc5450000 }
            // n = 5, score = 100
            //   488d4c2420           | lea                 ecx, [0x32a4]
            //   4c8bc6               | dec                 eax
            //   33d2                 | lea                 edx, [ebp + 0x420]
            //   e8????????           |                     
            //   488d0dc5450000       | dec                 eax

    condition:
        7 of them and filesize < 120832
}