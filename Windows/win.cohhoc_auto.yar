rule win_cohhoc_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-12-06"
        version = "1"
        description = "Detects win.cohhoc."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.cohhoc"
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
        $sequence_0 = { 1bc0 83d8ff 85c0 0f84fb000000 bf???????? 8db424b4010000 8a0e }
            // n = 7, score = 300
            //   1bc0                 | sbb                 eax, eax
            //   83d8ff               | sbb                 eax, -1
            //   85c0                 | test                eax, eax
            //   0f84fb000000         | je                  0x101
            //   bf????????           |                     
            //   8db424b4010000       | lea                 esi, [esp + 0x1b4]
            //   8a0e                 | mov                 cl, byte ptr [esi]

        $sequence_1 = { 5b 81c49c020000 c3 8b542410 }
            // n = 4, score = 300
            //   5b                   | pop                 ebx
            //   81c49c020000         | add                 esp, 0x29c
            //   c3                   | ret                 
            //   8b542410             | mov                 edx, dword ptr [esp + 0x10]

        $sequence_2 = { e8???????? 50 6801010000 8bcd e8???????? 8bcd }
            // n = 6, score = 300
            //   e8????????           |                     
            //   50                   | push                eax
            //   6801010000           | push                0x101
            //   8bcd                 | mov                 ecx, ebp
            //   e8????????           |                     
            //   8bcd                 | mov                 ecx, ebp

        $sequence_3 = { 33c0 5b 83c444 c3 8b542434 8b442458 6a00 }
            // n = 7, score = 300
            //   33c0                 | xor                 eax, eax
            //   5b                   | pop                 ebx
            //   83c444               | add                 esp, 0x44
            //   c3                   | ret                 
            //   8b542434             | mov                 edx, dword ptr [esp + 0x34]
            //   8b442458             | mov                 eax, dword ptr [esp + 0x58]
            //   6a00                 | push                0

        $sequence_4 = { 817c240c03010000 0f8494010000 8b35???????? 8d442410 53 50 68???????? }
            // n = 7, score = 300
            //   817c240c03010000     | cmp                 dword ptr [esp + 0xc], 0x103
            //   0f8494010000         | je                  0x19a
            //   8b35????????         |                     
            //   8d442410             | lea                 eax, [esp + 0x10]
            //   53                   | push                ebx
            //   50                   | push                eax
            //   68????????           |                     

        $sequence_5 = { 66c74424040010 8974242c 89742430 8b442448 8b4c2444 50 }
            // n = 6, score = 300
            //   66c74424040010       | mov                 word ptr [esp + 4], 0x1000
            //   8974242c             | mov                 dword ptr [esp + 0x2c], esi
            //   89742430             | mov                 dword ptr [esp + 0x30], esi
            //   8b442448             | mov                 eax, dword ptr [esp + 0x48]
            //   8b4c2444             | mov                 ecx, dword ptr [esp + 0x44]
            //   50                   | push                eax

        $sequence_6 = { bf01000000 6a00 68???????? ffd6 85ff }
            // n = 5, score = 300
            //   bf01000000           | mov                 edi, 1
            //   6a00                 | push                0
            //   68????????           |                     
            //   ffd6                 | call                esi
            //   85ff                 | test                edi, edi

        $sequence_7 = { 88442424 894c2430 8b4c2424 57 51 8b4c2428 e8???????? }
            // n = 7, score = 300
            //   88442424             | mov                 byte ptr [esp + 0x24], al
            //   894c2430             | mov                 dword ptr [esp + 0x30], ecx
            //   8b4c2424             | mov                 ecx, dword ptr [esp + 0x24]
            //   57                   | push                edi
            //   51                   | push                ecx
            //   8b4c2428             | mov                 ecx, dword ptr [esp + 0x28]
            //   e8????????           |                     

        $sequence_8 = { 6a07 51 6a00 aa }
            // n = 4, score = 300
            //   6a07                 | push                7
            //   51                   | push                ecx
            //   6a00                 | push                0
            //   aa                   | stosb               byte ptr es:[edi], al

        $sequence_9 = { 8bc8 8d8424b4010000 83e103 f3a4 be???????? 8a10 8aca }
            // n = 7, score = 300
            //   8bc8                 | mov                 ecx, eax
            //   8d8424b4010000       | lea                 eax, [esp + 0x1b4]
            //   83e103               | and                 ecx, 3
            //   f3a4                 | rep movsb           byte ptr es:[edi], byte ptr [esi]
            //   be????????           |                     
            //   8a10                 | mov                 dl, byte ptr [eax]
            //   8aca                 | mov                 cl, dl

    condition:
        7 of them and filesize < 253952
}