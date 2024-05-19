rule win_darktequila_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-12-06"
        version = "1"
        description = "Detects win.darktequila."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.darktequila"
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
        $sequence_0 = { c3 85c9 7414 8b5b10 85c0 }
            // n = 5, score = 200
            //   c3                   | ret                 
            //   85c9                 | test                ecx, ecx
            //   7414                 | je                  0x16
            //   8b5b10               | mov                 ebx, dword ptr [ebx + 0x10]
            //   85c0                 | test                eax, eax

        $sequence_1 = { 85c0 740d 894610 b801000000 897e04 }
            // n = 5, score = 200
            //   85c0                 | test                eax, eax
            //   740d                 | je                  0xf
            //   894610               | mov                 dword ptr [esi + 0x10], eax
            //   b801000000           | mov                 eax, 1
            //   897e04               | mov                 dword ptr [esi + 4], edi

        $sequence_2 = { 8b45fc 50 ff15???????? 8b0d???????? 8b5508 }
            // n = 5, score = 200
            //   8b45fc               | mov                 eax, dword ptr [ebp - 4]
            //   50                   | push                eax
            //   ff15????????         |                     
            //   8b0d????????         |                     
            //   8b5508               | mov                 edx, dword ptr [ebp + 8]

        $sequence_3 = { e8???????? 83c410 897b08 5f }
            // n = 4, score = 200
            //   e8????????           |                     
            //   83c410               | add                 esp, 0x10
            //   897b08               | mov                 dword ptr [ebx + 8], edi
            //   5f                   | pop                 edi

        $sequence_4 = { 8bd3 e8???????? 8b4310 56 }
            // n = 4, score = 200
            //   8bd3                 | mov                 edx, ebx
            //   e8????????           |                     
            //   8b4310               | mov                 eax, dword ptr [ebx + 0x10]
            //   56                   | push                esi

        $sequence_5 = { 740d 894610 b801000000 897e04 5b }
            // n = 5, score = 200
            //   740d                 | je                  0xf
            //   894610               | mov                 dword ptr [esi + 0x10], eax
            //   b801000000           | mov                 eax, 1
            //   897e04               | mov                 dword ptr [esi + 4], edi
            //   5b                   | pop                 ebx

        $sequence_6 = { 72dc b8???????? c3 33d2 3915???????? 0f857c000000 }
            // n = 6, score = 200
            //   72dc                 | jb                  0xffffffde
            //   b8????????           |                     
            //   c3                   | ret                 
            //   33d2                 | xor                 edx, edx
            //   3915????????         |                     
            //   0f857c000000         | jne                 0x82

        $sequence_7 = { 8945f8 85c0 7467 8b4b0c 8b5310 894df4 }
            // n = 6, score = 200
            //   8945f8               | mov                 dword ptr [ebp - 8], eax
            //   85c0                 | test                eax, eax
            //   7467                 | je                  0x69
            //   8b4b0c               | mov                 ecx, dword ptr [ebx + 0xc]
            //   8b5310               | mov                 edx, dword ptr [ebx + 0x10]
            //   894df4               | mov                 dword ptr [ebp - 0xc], ecx

        $sequence_8 = { 83c410 897b08 5f b801000000 5e }
            // n = 5, score = 200
            //   83c410               | add                 esp, 0x10
            //   897b08               | mov                 dword ptr [ebx + 8], edi
            //   5f                   | pop                 edi
            //   b801000000           | mov                 eax, 1
            //   5e                   | pop                 esi

        $sequence_9 = { c705????????02000000 8b45fc 50 ff15???????? 8b0d???????? 8b5508 a1???????? }
            // n = 7, score = 200
            //   c705????????02000000     |     
            //   8b45fc               | mov                 eax, dword ptr [ebp - 4]
            //   50                   | push                eax
            //   ff15????????         |                     
            //   8b0d????????         |                     
            //   8b5508               | mov                 edx, dword ptr [ebp + 8]
            //   a1????????           |                     

    condition:
        7 of them and filesize < 1827840
}