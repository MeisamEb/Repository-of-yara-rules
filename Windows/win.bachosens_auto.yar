rule win_bachosens_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-12-06"
        version = "1"
        description = "Detects win.bachosens."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.bachosens"
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
        $sequence_0 = { 7703 80c1e0 3ad1 7513 49ffc0 }
            // n = 5, score = 200
            //   7703                 | dec                 eax
            //   80c1e0               | mov                 dword ptr [esp + 0x40], ebx
            //   3ad1                 | inc                 esp
            //   7513                 | mov                 dword ptr [esp + 0x4c], ebp
            //   49ffc0               | jmp                 0xb9

        $sequence_1 = { 660f1f840000000000 410fb707 418b3e 6603c1 4803f9 0fb7c0 }
            // n = 6, score = 200
            //   660f1f840000000000     | inc    ecx
            //   410fb707             | push                edi
            //   418b3e               | dec                 eax
            //   6603c1               | sub                 esp, 0x50
            //   4803f9               | dec                 esp
            //   0fb7c0               | mov                 edi, ecx

        $sequence_2 = { 66443908 75f4 443bc1 740a b801000000 }
            // n = 5, score = 200
            //   66443908             | lea                 ecx, [ebx + 0x48]
            //   75f4                 | call                eax
            //   443bc1               | dec                 eax
            //   740a                 | test                eax, eax
            //   b801000000           | je                  0xc5e

        $sequence_3 = { 49f7d9 4c8bc5 660f1f840000000000 420fb61407 410fb608 8d429f 3c19 }
            // n = 7, score = 200
            //   49f7d9               | mov                 edx, 8
            //   4c8bc5               | dec                 ecx
            //   660f1f840000000000     | mov    ecx, esi
            //   420fb61407           | call                eax
            //   410fb608             | test                eax, eax
            //   8d429f               | je                  0x1de6
            //   3c19                 | mov                 edx, 0x10

        $sequence_4 = { 488bc7 ffc1 488d4001 803800 75f5 33d2 }
            // n = 6, score = 200
            //   488bc7               | lea                 esi, [edi + 0x7e]
            //   ffc1                 | dec                 eax
            //   488d4001             | mov                 eax, dword ptr [ecx + 0x88]
            //   803800               | dec                 eax
            //   75f5                 | lea                 ecx, [0xef66]
            //   33d2                 | mov                 edi, 2

        $sequence_5 = { 75f3 418bc9 66390a 7417 }
            // n = 4, score = 200
            //   75f3                 | inc                 edx
            //   418bc9               | test                byte ptr [ecx + esi + 0x38], 0x80
            //   66390a               | je                  0x1b7e
            //   7417                 | dec                 eax

        $sequence_6 = { 740e 488bc5 ffc2 488d4001 803800 }
            // n = 5, score = 200
            //   740e                 | je                  0xebd
            //   488bc5               | dec                 eax
            //   ffc2                 | mov                 ecx, esi
            //   488d4001             | dec                 ecx
            //   803800               | mov                 eax, esi

        $sequence_7 = { 4c03d1 458b7220 418b521c 4c03f1 458b7a24 4803d1 }
            // n = 6, score = 200
            //   4c03d1               | inc                 ecx
            //   458b7220             | mov                 eax, 0x400
            //   418b521c             | jne                 0xec8
            //   4c03f1               | inc                 ebp
            //   458b7a24             | xor                 esi, esi
            //   4803d1               | dec                 ecx

        $sequence_8 = { 0fb70a 418d409f 6683f819 7704 }
            // n = 4, score = 200
            //   0fb70a               | dec                 esp
            //   418d409f             | mov                 esp, dword ptr [esp + 0xc0]
            //   6683f819             | dec                 eax
            //   7704                 | mov                 ebx, dword ptr [esp + 0xb0]

        $sequence_9 = { 75f3 418bc9 66390a 7417 488bc2 0f1f840000000000 ffc1 }
            // n = 7, score = 200
            //   75f3                 | mov                 ecx, 0x80000002
            //   418bc9               | call                eax
            //   66390a               | je                  0xf27
            //   7417                 | xor                 eax, eax
            //   488bc2               | dec                 eax
            //   0f1f840000000000     | mov                 dword ptr [esp + 0x128], ebp
            //   ffc1                 | dec                 eax

    condition:
        7 of them and filesize < 643072
}