rule win_tellyouthepass_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-12-06"
        version = "1"
        description = "Detects win.tellyouthepass."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.tellyouthepass"
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
        $sequence_0 = { 4c895c2438 48895c2430 e8???????? 488d05e4021a00 bb1d000000 e8???????? 488b442450 }
            // n = 7, score = 100
            //   4c895c2438           | dec                 eax
            //   48895c2430           | lea                 eax, [0x7ddaa]
            //   e8????????           |                     
            //   488d05e4021a00       | dec                 eax
            //   bb1d000000           | mov                 ebp, dword ptr [ebp]
            //   e8????????           |                     
            //   488b442450           | jmp                 0x716

        $sequence_1 = { 488d05a4bf1700 bb13000000 0f1f440000 e8???????? 8b442414 89c0 e8???????? }
            // n = 7, score = 100
            //   488d05a4bf1700       | mov                 dword ptr [esp + 0x30], esi
            //   bb13000000           | mov                 byte ptr [esp + 0x2e], bl
            //   0f1f440000           | dec                 eax
            //   e8????????           |                     
            //   8b442414             | mov                 dword ptr [esp + 0x58], edx
            //   89c0                 | dec                 eax
            //   e8????????           |                     

        $sequence_2 = { e8???????? 488b442428 e8???????? 488d0509dd1700 bb07000000 e8???????? 488b442420 }
            // n = 7, score = 100
            //   e8????????           |                     
            //   488b442428           | mov                 ebx, dword ptr [eax + 0x178]
            //   e8????????           |                     
            //   488d0509dd1700       | dec                 eax
            //   bb07000000           | mov                 dword ptr [esp + 0x310], edx
            //   e8????????           |                     
            //   488b442420           | dec                 esp

        $sequence_3 = { e9???????? 488d05231a3400 31db 488b6c2458 4883c460 c3 48895c2470 }
            // n = 7, score = 100
            //   e9????????           |                     
            //   488d05231a3400       | jne                 0x83e
            //   31db                 | inc                 ecx
            //   488b6c2458           | cmp                 dword ptr [eax], 0x776f6c66
            //   4883c460             | jne                 0x897
            //   c3                   | mov                 byte ptr [esp + 0x251], 1
            //   48895c2470           | jmp                 0x886

        $sequence_4 = { 7506 48894208 eb09 488d7a08 e8???????? 488bac24f8000000 4881c400010000 }
            // n = 7, score = 100
            //   7506                 | jne                 0x341
            //   48894208             | dec                 eax
            //   eb09                 | lea                 eax, [0xae98f]
            //   488d7a08             | mov                 ebx, 1
            //   e8????????           |                     
            //   488bac24f8000000     | dec                 eax
            //   4881c400010000       | mov                 ecx, ebx

        $sequence_5 = { c3 440fb6ac24080a0000 4584ed 0f8471030000 4983fc07 0f85aa010000 4c8b4828 }
            // n = 7, score = 100
            //   c3                   | mov                 edi, 0x24
            //   440fb6ac24080a0000     | dec    eax
            //   4584ed               | lea                 eax, [0x1d210]
            //   0f8471030000         | dec                 eax
            //   4983fc07             | lea                 ecx, [0x85a6c]
            //   0f85aa010000         | dec                 eax
            //   4c8b4828             | mov                 dword ptr [eax + 0x10], 5

        $sequence_6 = { e8???????? e8???????? 488b4818 488b5820 488b5028 4889c8 4889d1 }
            // n = 7, score = 100
            //   e8????????           |                     
            //   e8????????           |                     
            //   488b4818             | mov                 eax, esp
            //   488b5820             | dec                 esp
            //   488b5028             | mov                 ecx, edx
            //   4889c8               | dec                 eax
            //   4889d1               | mov                 esi, dword ptr [esp + 0x210]

        $sequence_7 = { 498d7a78 e8???????? 498b9050010000 498b9858010000 498bb060010000 49899a98000000 4989b2a0000000 }
            // n = 7, score = 100
            //   498d7a78             | dec                 esp
            //   e8????????           |                     
            //   498b9050010000       | mov                 ebx, dword ptr [esp + 0x118]
            //   498b9858010000       | dec                 esp
            //   498bb060010000       | mov                 esp, dword ptr [esp + 0x108]
            //   49899a98000000       | dec                 esp
            //   4989b2a0000000       | mov                 ebp, dword ptr [esp + 0x100]

        $sequence_8 = { 84c0 0f8566feffff 31c0 488b6c2418 4883c420 c3 31c0 }
            // n = 7, score = 100
            //   84c0                 | jmp                 0x468
            //   0f8566feffff         | dec                 eax
            //   31c0                 | lea                 edx, [0x8db9c]
            //   488b6c2418           | dec                 eax
            //   4883c420             | mov                 dword ptr [esp + 0x200], edx
            //   c3                   | dec                 eax
            //   31c0                 | mov                 dword ptr [esp + 0x208], eax

        $sequence_9 = { 0f1f00 e8???????? 31db 31c9 488d3d501c0c00 4889c6 31c0 }
            // n = 7, score = 100
            //   0f1f00               | dec                 ebp
            //   e8????????           |                     
            //   31db                 | lea                 eax, [ebp + 1]
            //   31c9                 | dec                 ebp
            //   488d3d501c0c00       | cmp                 ebx, eax
            //   4889c6               | jbe                 0x1866
            //   31c0                 | inc                 ebx

    condition:
        7 of them and filesize < 7152640
}