rule win_graphdrop_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-12-06"
        version = "1"
        description = "Detects win.graphdrop."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.graphdrop"
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
        $sequence_0 = { 4154 90 415c 90 }
            // n = 4, score = 300
            //   4154                 | je                  0x1f84
            //   90                   | mov                 dword ptr [esp + 0x84], 0xfffffffe
            //   415c                 | cmp                 edx, dword ptr [ecx + 0x12]
            //   90                   | dec                 eax

        $sequence_1 = { 4155 49c7c501000000 4150 4152 415a }
            // n = 5, score = 300
            //   4155                 | dec                 eax
            //   49c7c501000000       | mov                 eax, dword ptr [ebx + 0x10]
            //   4150                 | jne                 0x6f4
            //   4152                 | dec                 eax
            //   415a                 | and                 dword ptr [esp + 0x70], 0

        $sequence_2 = { 52 0f77 90 5a }
            // n = 4, score = 300
            //   52                   | inc                 ecx
            //   0f77                 | mov                 ecx, 4
            //   90                   | inc                 ecx
            //   5a                   | mov                 eax, 0x3000

        $sequence_3 = { 0f77 0f77 5b 0f77 }
            // n = 4, score = 300
            //   0f77                 | pslld               mm5, 0x50
            //   0f77                 | inc                 ecx
            //   5b                   | pop                 ecx
            //   0f77                 | inc                 ecx

        $sequence_4 = { 49c7c501000000 4150 4152 415a 4158 }
            // n = 5, score = 300
            //   49c7c501000000       | jmp                 0x1106
            //   4150                 | inc                 esp
            //   4152                 | mov                 ah, byte ptr [ebp + 0x50]
            //   415a                 | inc                 esp
            //   4158                 | mov                 dword ptr [ebp - 0x20], ebx

        $sequence_5 = { 52 50 58 5a 49ffc9 }
            // n = 5, score = 300
            //   52                   | inc                 esp
            //   50                   | mov                 dh, byte ptr [esp + 0x30]
            //   58                   | dec                 esp
            //   5a                   | mov                 ebx, dword ptr [esp + 0x68]
            //   49ffc9               | je                  0x39c

        $sequence_6 = { 49c7c501000000 4150 4152 415a 4158 49ffcd }
            // n = 6, score = 300
            //   49c7c501000000       | dec                 eax
            //   4150                 | mov                 ecx, dword ptr [ebp + 0x188]
            //   4152                 | dec                 eax
            //   415a                 | lea                 eax, [ebp + 0x128]
            //   4158                 | dec                 eax
            //   49ffcd               | mov                 dword ptr [ebp - 0x40], ecx

        $sequence_7 = { 4150 4152 415a 4158 }
            // n = 4, score = 300
            //   4150                 | dec                 esp
            //   4152                 | mov                 dword ptr [esp + 0x18], eax
            //   415a                 | psadbw              mm2, mm4
            //   4158                 | inc                 ecx

        $sequence_8 = { 4155 49c7c501000000 4150 4152 415a 4158 49ffcd }
            // n = 7, score = 300
            //   4155                 | dec                 eax
            //   49c7c501000000       | mov                 eax, dword ptr [ebp - 0x30]
            //   4150                 | dec                 eax
            //   4152                 | add                 eax, 0x98
            //   415a                 | dec                 eax
            //   4158                 | mov                 dword ptr [esp + 0x10], edx
            //   49ffcd               | push                ebp

        $sequence_9 = { 4152 415a 4158 49ffcd }
            // n = 4, score = 300
            //   4152                 | sub                 byte ptr [edx], dh
            //   415a                 | rol                 byte ptr [ebx + 0x47cb9], 0
            //   4158                 | add                 dh, byte ptr [ebp + 0xd]
            //   49ffcd               | xor                 al, al

    condition:
        7 of them and filesize < 4186112
}