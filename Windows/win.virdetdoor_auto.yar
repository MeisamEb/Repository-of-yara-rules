rule win_virdetdoor_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-12-06"
        version = "1"
        description = "Detects win.virdetdoor."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.virdetdoor"
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
        $sequence_0 = { 8b93b0020000 2bc2 50 8b83ac020000 03c2 50 }
            // n = 6, score = 100
            //   8b93b0020000         | mov                 edx, dword ptr [ebx + 0x2b0]
            //   2bc2                 | sub                 eax, edx
            //   50                   | push                eax
            //   8b83ac020000         | mov                 eax, dword ptr [ebx + 0x2ac]
            //   03c2                 | add                 eax, edx
            //   50                   | push                eax

        $sequence_1 = { 83ee01 753e 85ff 7524 390b 7720 3903 }
            // n = 7, score = 100
            //   83ee01               | sub                 esi, 1
            //   753e                 | jne                 0x40
            //   85ff                 | test                edi, edi
            //   7524                 | jne                 0x26
            //   390b                 | cmp                 dword ptr [ebx], ecx
            //   7720                 | ja                  0x22
            //   3903                 | cmp                 dword ptr [ebx], eax

        $sequence_2 = { 8d4dc0 e8???????? 85c0 0f84c8000000 }
            // n = 4, score = 100
            //   8d4dc0               | lea                 ecx, [ebp - 0x40]
            //   e8????????           |                     
            //   85c0                 | test                eax, eax
            //   0f84c8000000         | je                  0xce

        $sequence_3 = { 83fe08 0f43c8 83c602 0fb7444dc0 0bd0 0fb7449dd2 0bd0 }
            // n = 7, score = 100
            //   83fe08               | cmp                 esi, 8
            //   0f43c8               | cmovae              ecx, eax
            //   83c602               | add                 esi, 2
            //   0fb7444dc0           | movzx               eax, word ptr [ebp + ecx*2 - 0x40]
            //   0bd0                 | or                  edx, eax
            //   0fb7449dd2           | movzx               eax, word ptr [ebp + ebx*4 - 0x2e]
            //   0bd0                 | or                  edx, eax

        $sequence_4 = { 59 8d44240c 8bce 50 ff7314 57 e8???????? }
            // n = 7, score = 100
            //   59                   | pop                 ecx
            //   8d44240c             | lea                 eax, [esp + 0xc]
            //   8bce                 | mov                 ecx, esi
            //   50                   | push                eax
            //   ff7314               | push                dword ptr [ebx + 0x14]
            //   57                   | push                edi
            //   e8????????           |                     

        $sequence_5 = { 0fbfd0 8d8df8fdffff ff7508 50 }
            // n = 4, score = 100
            //   0fbfd0               | movsx               edx, ax
            //   8d8df8fdffff         | lea                 ecx, [ebp - 0x208]
            //   ff7508               | push                dword ptr [ebp + 8]
            //   50                   | push                eax

        $sequence_6 = { 55 8bec 51 51 53 8bc1 33db }
            // n = 7, score = 100
            //   55                   | push                ebp
            //   8bec                 | mov                 ebp, esp
            //   51                   | push                ecx
            //   51                   | push                ecx
            //   53                   | push                ebx
            //   8bc1                 | mov                 eax, ecx
            //   33db                 | xor                 ebx, ebx

        $sequence_7 = { ff75f0 8d8b50020000 e8???????? 834dfcff }
            // n = 4, score = 100
            //   ff75f0               | push                dword ptr [ebp - 0x10]
            //   8d8b50020000         | lea                 ecx, [ebx + 0x250]
            //   e8????????           |                     
            //   834dfcff             | or                  dword ptr [ebp - 4], 0xffffffff

        $sequence_8 = { 3c2e 7404 3c3a 750e 8a0437 88441dc0 43 }
            // n = 7, score = 100
            //   3c2e                 | cmp                 al, 0x2e
            //   7404                 | je                  6
            //   3c3a                 | cmp                 al, 0x3a
            //   750e                 | jne                 0x10
            //   8a0437               | mov                 al, byte ptr [edi + esi]
            //   88441dc0             | mov                 byte ptr [ebp + ebx - 0x40], al
            //   43                   | inc                 ebx

        $sequence_9 = { 8945f8 8b4508 8bf0 8975f0 8d5808 895df4 }
            // n = 6, score = 100
            //   8945f8               | mov                 dword ptr [ebp - 8], eax
            //   8b4508               | mov                 eax, dword ptr [ebp + 8]
            //   8bf0                 | mov                 esi, eax
            //   8975f0               | mov                 dword ptr [ebp - 0x10], esi
            //   8d5808               | lea                 ebx, [eax + 8]
            //   895df4               | mov                 dword ptr [ebp - 0xc], ebx

    condition:
        7 of them and filesize < 106496
}