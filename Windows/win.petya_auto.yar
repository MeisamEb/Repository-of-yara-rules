rule win_petya_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-12-06"
        version = "1"
        description = "Detects win.petya."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.petya"
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
        $sequence_0 = { 6a03 6800001080 51 ff15???????? 83f8ff }
            // n = 5, score = 600
            //   6a03                 | push                3
            //   6800001080           | push                0x80100000
            //   51                   | push                ecx
            //   ff15????????         |                     
            //   83f8ff               | cmp                 eax, -1

        $sequence_1 = { 57 33ff 3b750c 0f47d9 85db 7410 8b06 }
            // n = 7, score = 600
            //   57                   | push                edi
            //   33ff                 | xor                 edi, edi
            //   3b750c               | cmp                 esi, dword ptr [ebp + 0xc]
            //   0f47d9               | cmova               ebx, ecx
            //   85db                 | test                ebx, ebx
            //   7410                 | je                  0x12
            //   8b06                 | mov                 eax, dword ptr [esi]

        $sequence_2 = { 0f42f2 6a04 56 e8???????? 8bd8 }
            // n = 5, score = 600
            //   0f42f2               | cmovb               esi, edx
            //   6a04                 | push                4
            //   56                   | push                esi
            //   e8????????           |                     
            //   8bd8                 | mov                 ebx, eax

        $sequence_3 = { 8bc6 8bca c1e303 0facc110 897c2424 c1e810 }
            // n = 6, score = 600
            //   8bc6                 | mov                 eax, esi
            //   8bca                 | mov                 ecx, edx
            //   c1e303               | shl                 ebx, 3
            //   0facc110             | shrd                ecx, eax, 0x10
            //   897c2424             | mov                 dword ptr [esp + 0x24], edi
            //   c1e810               | shr                 eax, 0x10

        $sequence_4 = { 8d4e1c e8???????? 8d4e28 e8???????? 8d4e4c e8???????? 837e7400 }
            // n = 7, score = 600
            //   8d4e1c               | lea                 ecx, [esi + 0x1c]
            //   e8????????           |                     
            //   8d4e28               | lea                 ecx, [esi + 0x28]
            //   e8????????           |                     
            //   8d4e4c               | lea                 ecx, [esi + 0x4c]
            //   e8????????           |                     
            //   837e7400             | cmp                 dword ptr [esi + 0x74], 0

        $sequence_5 = { 83e804 4e 75f5 46 3bf2 53 }
            // n = 6, score = 600
            //   83e804               | sub                 eax, 4
            //   4e                   | dec                 esi
            //   75f5                 | jne                 0xfffffff7
            //   46                   | inc                 esi
            //   3bf2                 | cmp                 esi, edx
            //   53                   | push                ebx

        $sequence_6 = { 8b4e74 03cb e8???????? 47 83c324 3b7e78 72ed }
            // n = 7, score = 600
            //   8b4e74               | mov                 ecx, dword ptr [esi + 0x74]
            //   03cb                 | add                 ecx, ebx
            //   e8????????           |                     
            //   47                   | inc                 edi
            //   83c324               | add                 ebx, 0x24
            //   3b7e78               | cmp                 edi, dword ptr [esi + 0x78]
            //   72ed                 | jb                  0xffffffef

        $sequence_7 = { 85db 7410 8b06 85c0 7402 ffd0 }
            // n = 6, score = 600
            //   85db                 | test                ebx, ebx
            //   7410                 | je                  0x12
            //   8b06                 | mov                 eax, dword ptr [esi]
            //   85c0                 | test                eax, eax
            //   7402                 | je                  4
            //   ffd0                 | call                eax

        $sequence_8 = { 0fa4df03 c1e818 884c242c 8bc6 }
            // n = 4, score = 600
            //   0fa4df03             | shld                edi, ebx, 3
            //   c1e818               | shr                 eax, 0x18
            //   884c242c             | mov                 byte ptr [esp + 0x2c], cl
            //   8bc6                 | mov                 eax, esi

        $sequence_9 = { 8d4e04 e8???????? 8d4e10 e8???????? 8d4e1c }
            // n = 5, score = 600
            //   8d4e04               | lea                 ecx, [esi + 4]
            //   e8????????           |                     
            //   8d4e10               | lea                 ecx, [esi + 0x10]
            //   e8????????           |                     
            //   8d4e1c               | lea                 ecx, [esi + 0x1c]

    condition:
        7 of them and filesize < 229376
}