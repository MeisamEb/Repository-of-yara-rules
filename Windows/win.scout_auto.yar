rule win_scout_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-12-06"
        version = "1"
        description = "Detects win.scout."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.scout"
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
        $sequence_0 = { 488d537c 41b888140000 488d4df0 e8???????? 41b904000000 }
            // n = 5, score = 100
            //   488d537c             | dec                 esp
            //   41b888140000         | lea                 eax, [0x10da0]
            //   488d4df0             | dec                 eax
            //   e8????????           |                     
            //   41b904000000         | mov                 eax, ecx

        $sequence_1 = { 498bf9 8b0a e8???????? 90 488d1d86780100 488d356f630100 }
            // n = 6, score = 100
            //   498bf9               | dec                 ecx
            //   8b0a                 | add                 edx, esp
            //   e8????????           |                     
            //   90                   | nop                 dword ptr [eax + eax]
            //   488d1d86780100       | dec                 eax
            //   488d356f630100       | inc                 eax

        $sequence_2 = { 736b 488bc3 488bf3 48c1fe06 4c8d2d4ef80000 }
            // n = 5, score = 100
            //   736b                 | mov                 esi, eax
            //   488bc3               | mov                 esi, edx
            //   488bf3               | dec                 eax
            //   48c1fe06             | mov                 dword ptr [ebp + 0x1480], eax
            //   4c8d2d4ef80000       | mov                 byte ptr [ebp + 0x1488], al

        $sequence_3 = { 4d8bf8 488bc6 48894df7 488945ef 488d0d36fbfeff 83e03f 458be9 }
            // n = 7, score = 100
            //   4d8bf8               | inc                 ecx
            //   488bc6               | pop                 esp
            //   48894df7             | pop                 edi
            //   488945ef             | pop                 ebp
            //   488d0d36fbfeff       | ret                 
            //   83e03f               | inc                 esp
            //   458be9               | cmp                 dword ptr [esi + 0x1c], esi

        $sequence_4 = { 488d1520d50000 b805000000 894520 894528 }
            // n = 4, score = 100
            //   488d1520d50000       | mov                 eax, 0x5a4d
            //   b805000000           | dec                 esp
            //   894520               | mov                 esp, ecx
            //   894528               | cmp                 word ptr [ecx], ax

        $sequence_5 = { 7566 b804000000 660f1f840000000000 488d8980000000 }
            // n = 4, score = 100
            //   7566                 | mov                 ecx, 0x12
            //   b804000000           | mov                 edx, ebx
            //   660f1f840000000000     | dec    eax
            //   488d8980000000       | lea                 edx, [0xffff14d2]

        $sequence_6 = { e8???????? 33c0 488b8d90140000 4833cc e8???????? }
            // n = 5, score = 100
            //   e8????????           |                     
            //   33c0                 | dec                 eax
            //   488b8d90140000       | add                 ecx, edi
            //   4833cc               | dec                 eax
            //   e8????????           |                     

        $sequence_7 = { c745dca8837182 0f1045d0 c744242801000000 8905???????? }
            // n = 4, score = 100
            //   c745dca8837182       | lea                 edx, [0xe9da]
            //   0f1045d0             | xor                 ecx, ecx
            //   c744242801000000     | dec                 esp
            //   8905????????         |                     

        $sequence_8 = { 4c89742438 4c897c2430 ff15???????? 33d2 }
            // n = 4, score = 100
            //   4c89742438           | dec                 ecx
            //   4c897c2430           | xchg                dword ptr [edi + edi*8 + 0x203c0], ecx
            //   ff15????????         |                     
            //   33d2                 | jmp                 0x287

        $sequence_9 = { 75dd 488d05e31b0100 483bd8 74d1 488bcb }
            // n = 5, score = 100
            //   75dd                 | lea                 eax, [0x87ba]
            //   488d05e31b0100       | dec                 ecx
            //   483bd8               | mov                 ecx, esi
            //   74d1                 | test                eax, eax
            //   488bcb               | dec                 eax

    condition:
        7 of them and filesize < 315392
}