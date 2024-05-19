rule win_htbot_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-12-06"
        version = "1"
        description = "Detects win.htbot."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.htbot"
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
        $sequence_0 = { 6a00 68???????? 51 ff15???????? 85c0 7524 }
            // n = 6, score = 100
            //   6a00                 | push                0
            //   68????????           |                     
            //   51                   | push                ecx
            //   ff15????????         |                     
            //   85c0                 | test                eax, eax
            //   7524                 | jne                 0x26

        $sequence_1 = { 56 57 8b7c2440 8b474c 89442414 c7474c00000000 }
            // n = 6, score = 100
            //   56                   | push                esi
            //   57                   | push                edi
            //   8b7c2440             | mov                 edi, dword ptr [esp + 0x40]
            //   8b474c               | mov                 eax, dword ptr [edi + 0x4c]
            //   89442414             | mov                 dword ptr [esp + 0x14], eax
            //   c7474c00000000       | mov                 dword ptr [edi + 0x4c], 0

        $sequence_2 = { 8908 8b15???????? 8d0c52 83c2ff a3???????? 8d4488f8 8b0d???????? }
            // n = 7, score = 100
            //   8908                 | mov                 dword ptr [eax], ecx
            //   8b15????????         |                     
            //   8d0c52               | lea                 ecx, [edx + edx*2]
            //   83c2ff               | add                 edx, -1
            //   a3????????           |                     
            //   8d4488f8             | lea                 eax, [eax + ecx*4 - 8]
            //   8b0d????????         |                     

        $sequence_3 = { 8b11 50 8b4204 ffd0 8bc5 e9???????? 8d77f0 }
            // n = 7, score = 100
            //   8b11                 | mov                 edx, dword ptr [ecx]
            //   50                   | push                eax
            //   8b4204               | mov                 eax, dword ptr [edx + 4]
            //   ffd0                 | call                eax
            //   8bc5                 | mov                 eax, ebp
            //   e9????????           |                     
            //   8d77f0               | lea                 esi, [edi - 0x10]

        $sequence_4 = { 51 8bc8 ffd2 8bf8 85ff 0f84ccfeffff 8b4604 }
            // n = 7, score = 100
            //   51                   | push                ecx
            //   8bc8                 | mov                 ecx, eax
            //   ffd2                 | call                edx
            //   8bf8                 | mov                 edi, eax
            //   85ff                 | test                edi, edi
            //   0f84ccfeffff         | je                  0xfffffed2
            //   8b4604               | mov                 eax, dword ptr [esi + 4]

        $sequence_5 = { 83f801 7e68 8d4d02 6a22 51 }
            // n = 5, score = 100
            //   83f801               | cmp                 eax, 1
            //   7e68                 | jle                 0x6a
            //   8d4d02               | lea                 ecx, [ebp + 2]
            //   6a22                 | push                0x22
            //   51                   | push                ecx

        $sequence_6 = { 83c010 894510 c684244402000003 a1???????? 8b500c b9???????? ffd2 }
            // n = 7, score = 100
            //   83c010               | add                 eax, 0x10
            //   894510               | mov                 dword ptr [ebp + 0x10], eax
            //   c684244402000003     | mov                 byte ptr [esp + 0x244], 3
            //   a1????????           |                     
            //   8b500c               | mov                 edx, dword ptr [eax + 0xc]
            //   b9????????           |                     
            //   ffd2                 | call                edx

        $sequence_7 = { 8903 c744241c00000000 8b7c2424 8b4708 83c708 8378f400 c744241001000000 }
            // n = 7, score = 100
            //   8903                 | mov                 dword ptr [ebx], eax
            //   c744241c00000000     | mov                 dword ptr [esp + 0x1c], 0
            //   8b7c2424             | mov                 edi, dword ptr [esp + 0x24]
            //   8b4708               | mov                 eax, dword ptr [edi + 8]
            //   83c708               | add                 edi, 8
            //   8378f400             | cmp                 dword ptr [eax - 0xc], 0
            //   c744241001000000     | mov                 dword ptr [esp + 0x10], 1

        $sequence_8 = { 83c010 894514 c684244402000004 a1???????? 8b500c }
            // n = 5, score = 100
            //   83c010               | add                 eax, 0x10
            //   894514               | mov                 dword ptr [ebp + 0x14], eax
            //   c684244402000004     | mov                 byte ptr [esp + 0x244], 4
            //   a1????????           |                     
            //   8b500c               | mov                 edx, dword ptr [eax + 0xc]

        $sequence_9 = { 51 ff15???????? 8d46f0 8d500c 83c9ff f00fc10a 49 }
            // n = 7, score = 100
            //   51                   | push                ecx
            //   ff15????????         |                     
            //   8d46f0               | lea                 eax, [esi - 0x10]
            //   8d500c               | lea                 edx, [eax + 0xc]
            //   83c9ff               | or                  ecx, 0xffffffff
            //   f00fc10a             | lock xadd           dword ptr [edx], ecx
            //   49                   | dec                 ecx

    condition:
        7 of them and filesize < 196608
}