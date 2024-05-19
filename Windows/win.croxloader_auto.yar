rule win_croxloader_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-12-06"
        version = "1"
        description = "Detects win.croxloader."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.croxloader"
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
        $sequence_0 = { 488d0dd0590100 eb0c 83f901 750d 488d0dda590100 }
            // n = 5, score = 100
            //   488d0dd0590100       | mov                 dl, 1
            //   eb0c                 | cmp                 dword ptr [ebx + 0x10], 0
            //   83f901               | jne                 0x241
            //   750d                 | dec                 eax
            //   488d0dda590100       | lea                 eax, [0x101f7]

        $sequence_1 = { 498b84ff18910100 90 493bc6 0f84eb000000 4885c0 }
            // n = 5, score = 100
            //   498b84ff18910100     | xor                 ebx, ebx
            //   90                   | dec                 eax
            //   493bc6               | lea                 edi, [0x12399]
            //   0f84eb000000         | dec                 eax
            //   4885c0               | mov                 ecx, dword ptr [ebx + edi]

        $sequence_2 = { 4883ec20 488364243800 4c8d442438 8bd9 488d157aa80000 33c9 }
            // n = 6, score = 100
            //   4883ec20             | and                 edx, 0x3f
            //   488364243800         | dec                 eax
            //   4c8d442438           | lea                 edx, [edx + edx*8]
            //   8bd9                 | dec                 ecx
            //   488d157aa80000       | mov                 eax, dword ptr [eax + eax*8]
            //   33c9                 | dec                 eax

        $sequence_3 = { 4b8b84e010970100 42804cf03d04 38558f ebcc ff15???????? }
            // n = 5, score = 100
            //   4b8b84e010970100     | lea                 ecx, [0x7d08]
            //   42804cf03d04         | mov                 ecx, 3
            //   38558f               | inc                 eax
            //   ebcc                 | push                ebx
            //   ff15????????         |                     

        $sequence_4 = { 488d0d09520100 e8???????? 488d0d05520100 e8???????? 488b0d???????? e8???????? 488b0d???????? }
            // n = 7, score = 100
            //   488d0d09520100       | dec                 ecx
            //   e8????????           |                     
            //   488d0d05520100       | mov                 ecx, esi
            //   e8????????           |                     
            //   488b0d????????       |                     
            //   e8????????           |                     
            //   488b0d????????       |                     

        $sequence_5 = { 4883f9ff 7406 ff15???????? 48832300 4883c308 488d05fc240100 }
            // n = 6, score = 100
            //   4883f9ff             | dec                 ecx
            //   7406                 | mov                 eax, edx
            //   ff15????????         |                     
            //   48832300             | inc                 ecx
            //   4883c308             | mov                 ebp, ecx
            //   488d05fc240100       | dec                 eax

        $sequence_6 = { 4c8d0562eb0000 83e23f 488bcb 48c1f906 488d14d2 498b0cc8 8064d138fd }
            // n = 7, score = 100
            //   4c8d0562eb0000       | mov                 edx, 0x5c
            //   83e23f               | inc                 ebp
            //   488bcb               | xor                 ebx, ebx
            //   48c1f906             | dec                 ecx
            //   488d14d2             | mov                 edx, ebx
            //   498b0cc8             | dec                 esp
            //   8064d138fd           | lea                 eax, [0xffff661f]

        $sequence_7 = { 8938 e8???????? 488d1db32f0100 4885c0 }
            // n = 4, score = 100
            //   8938                 | lea                 eax, [ecx + 0x38]
            //   e8????????           |                     
            //   488d1db32f0100       | inc                 ecx
            //   4885c0               | mov                 eax, 6

        $sequence_8 = { 4c8d05c9890100 ba920e0332 b95595db6d e8???????? 4c8d05038a0100 ba436a459e b9edb0da1e }
            // n = 7, score = 100
            //   4c8d05c9890100       | lea                 ecx, [0x15205]
            //   ba920e0332           | dec                 eax
            //   b95595db6d           | lea                 ecx, [0x13206]
            //   e8????????           |                     
            //   4c8d05038a0100       | dec                 eax
            //   ba436a459e           | arpl                ax, bx
            //   b9edb0da1e           | dec                 eax

        $sequence_9 = { 3b1d???????? 736a 488bc3 4c8d35de000100 83e03f 488bf3 48c1fe06 }
            // n = 7, score = 100
            //   3b1d????????         |                     
            //   736a                 | lea                 edx, [ecx + ecx*8]
            //   488bc3               | dec                 eax
            //   4c8d35de000100       | arpl                si, cx
            //   83e03f               | dec                 eax
            //   488bf3               | lea                 edi, [0x124cc]
            //   48c1fe06             | dec                 eax

    condition:
        7 of them and filesize < 241664
}