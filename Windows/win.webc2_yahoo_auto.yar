rule win_webc2_yahoo_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-12-06"
        version = "1"
        description = "Detects win.webc2_yahoo."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.webc2_yahoo"
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
        $sequence_0 = { 59 7513 ff15???????? 8986a0841e00 }
            // n = 4, score = 100
            //   59                   | pop                 ecx
            //   7513                 | jne                 0x15
            //   ff15????????         |                     
            //   8986a0841e00         | mov                 dword ptr [esi + 0x1e84a0], eax

        $sequence_1 = { 56 ff15???????? 802000 56 e8???????? }
            // n = 5, score = 100
            //   56                   | push                esi
            //   ff15????????         |                     
            //   802000               | and                 byte ptr [eax], 0
            //   56                   | push                esi
            //   e8????????           |                     

        $sequence_2 = { 53 50 50 53 ff750c ff15???????? 57 }
            // n = 7, score = 100
            //   53                   | push                ebx
            //   50                   | push                eax
            //   50                   | push                eax
            //   53                   | push                ebx
            //   ff750c               | push                dword ptr [ebp + 0xc]
            //   ff15????????         |                     
            //   57                   | push                edi

        $sequence_3 = { 39be9c841e00 59 7513 ff15???????? 8986a0841e00 33c0 }
            // n = 6, score = 100
            //   39be9c841e00         | cmp                 dword ptr [esi + 0x1e849c], edi
            //   59                   | pop                 ecx
            //   7513                 | jne                 0x15
            //   ff15????????         |                     
            //   8986a0841e00         | mov                 dword ptr [esi + 0x1e84a0], eax
            //   33c0                 | xor                 eax, eax

        $sequence_4 = { c745fc01000000 aa e8???????? 59 8d85f4d7ffff 50 8d45f8 }
            // n = 7, score = 100
            //   c745fc01000000       | mov                 dword ptr [ebp - 4], 1
            //   aa                   | stosb               byte ptr es:[edi], al
            //   e8????????           |                     
            //   59                   | pop                 ecx
            //   8d85f4d7ffff         | lea                 eax, [ebp - 0x280c]
            //   50                   | push                eax
            //   8d45f8               | lea                 eax, [ebp - 8]

        $sequence_5 = { 50 8d45f8 50 8d85f4afffff }
            // n = 4, score = 100
            //   50                   | push                eax
            //   8d45f8               | lea                 eax, [ebp - 8]
            //   50                   | push                eax
            //   8d85f4afffff         | lea                 eax, [ebp - 0x500c]

        $sequence_6 = { 8b7518 83c414 8d85fcd7ffff 8bcb }
            // n = 4, score = 100
            //   8b7518               | mov                 esi, dword ptr [ebp + 0x18]
            //   83c414               | add                 esp, 0x14
            //   8d85fcd7ffff         | lea                 eax, [ebp - 0x2804]
            //   8bcb                 | mov                 ecx, ebx

        $sequence_7 = { 8b4d08 e8???????? 85c0 53 }
            // n = 4, score = 100
            //   8b4d08               | mov                 ecx, dword ptr [ebp + 8]
            //   e8????????           |                     
            //   85c0                 | test                eax, eax
            //   53                   | push                ebx

        $sequence_8 = { 59 50 ff75f8 ff75fc ffb69c841e00 ff15???????? }
            // n = 6, score = 100
            //   59                   | pop                 ecx
            //   50                   | push                eax
            //   ff75f8               | push                dword ptr [ebp - 8]
            //   ff75fc               | push                dword ptr [ebp - 4]
            //   ffb69c841e00         | push                dword ptr [esi + 0x1e849c]
            //   ff15????????         |                     

        $sequence_9 = { 8d85c8fcffff 68???????? 50 e8???????? 83c410 85c0 7466 }
            // n = 7, score = 100
            //   8d85c8fcffff         | lea                 eax, [ebp - 0x338]
            //   68????????           |                     
            //   50                   | push                eax
            //   e8????????           |                     
            //   83c410               | add                 esp, 0x10
            //   85c0                 | test                eax, eax
            //   7466                 | je                  0x68

    condition:
        7 of them and filesize < 8060928
}