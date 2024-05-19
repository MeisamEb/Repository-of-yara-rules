rule win_rokrat_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-12-06"
        version = "1"
        description = "Detects win.rokrat."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.rokrat"
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
        $sequence_0 = { 50 e8???????? 6a04 33c0 }
            // n = 4, score = 700
            //   50                   | push                eax
            //   e8????????           |                     
            //   6a04                 | push                4
            //   33c0                 | xor                 eax, eax

        $sequence_1 = { 50 8bcf e8???????? 8d4538 3bd8 }
            // n = 5, score = 700
            //   50                   | push                eax
            //   8bcf                 | mov                 ecx, edi
            //   e8????????           |                     
            //   8d4538               | lea                 eax, [ebp + 0x38]
            //   3bd8                 | cmp                 ebx, eax

        $sequence_2 = { 50 0fb74208 c1e910 51 50 }
            // n = 5, score = 700
            //   50                   | push                eax
            //   0fb74208             | movzx               eax, word ptr [edx + 8]
            //   c1e910               | shr                 ecx, 0x10
            //   51                   | push                ecx
            //   50                   | push                eax

        $sequence_3 = { 50 8bcb e8???????? 8d4550 }
            // n = 4, score = 700
            //   50                   | push                eax
            //   8bcb                 | mov                 ecx, ebx
            //   e8????????           |                     
            //   8d4550               | lea                 eax, [ebp + 0x50]

        $sequence_4 = { 50 e8???????? 8d8edc000000 8d4520 }
            // n = 4, score = 700
            //   50                   | push                eax
            //   e8????????           |                     
            //   8d8edc000000         | lea                 ecx, [esi + 0xdc]
            //   8d4520               | lea                 eax, [ebp + 0x20]

        $sequence_5 = { 56 8d4dc0 c745d000000000 668945c0 e8???????? c645fc03 8b45bc }
            // n = 7, score = 700
            //   56                   | push                esi
            //   8d4dc0               | lea                 ecx, [ebp - 0x40]
            //   c745d000000000       | mov                 dword ptr [ebp - 0x30], 0
            //   668945c0             | mov                 word ptr [ebp - 0x40], ax
            //   e8????????           |                     
            //   c645fc03             | mov                 byte ptr [ebp - 4], 3
            //   8b45bc               | mov                 eax, dword ptr [ebp - 0x44]

        $sequence_6 = { 50 ff15???????? e8???????? 40 }
            // n = 4, score = 700
            //   50                   | push                eax
            //   ff15????????         |                     
            //   e8????????           |                     
            //   40                   | inc                 eax

        $sequence_7 = { 51 50 0fb74212 50 }
            // n = 4, score = 700
            //   51                   | push                ecx
            //   50                   | push                eax
            //   0fb74212             | movzx               eax, word ptr [edx + 0x12]
            //   50                   | push                eax

        $sequence_8 = { 770a 68???????? e8???????? 837e1408 }
            // n = 4, score = 700
            //   770a                 | ja                  0xc
            //   68????????           |                     
            //   e8????????           |                     
            //   837e1408             | cmp                 dword ptr [esi + 0x14], 8

        $sequence_9 = { ff15???????? 50 e8???????? 59 6a64 }
            // n = 5, score = 200
            //   ff15????????         |                     
            //   50                   | push                eax
            //   e8????????           |                     
            //   59                   | pop                 ecx
            //   6a64                 | push                0x64

        $sequence_10 = { 897dfc e8???????? 68???????? 8d4dd8 }
            // n = 4, score = 200
            //   897dfc               | mov                 dword ptr [ebp - 4], edi
            //   e8????????           |                     
            //   68????????           |                     
            //   8d4dd8               | lea                 ecx, [ebp - 0x28]

        $sequence_11 = { c145f41e 8b5dfc 8db4339979825a 8975fc }
            // n = 4, score = 100
            //   c145f41e             | rol                 dword ptr [ebp - 0xc], 0x1e
            //   8b5dfc               | mov                 ebx, dword ptr [ebp - 4]
            //   8db4339979825a       | lea                 esi, [ebx + esi + 0x5a827999]
            //   8975fc               | mov                 dword ptr [ebp - 4], esi

        $sequence_12 = { c145f01e 8db4339979825a 8975f4 8b772c }
            // n = 4, score = 100
            //   c145f01e             | rol                 dword ptr [ebp - 0x10], 0x1e
            //   8db4339979825a       | lea                 esi, [ebx + esi + 0x5a827999]
            //   8975f4               | mov                 dword ptr [ebp - 0xc], esi
            //   8b772c               | mov                 esi, dword ptr [edi + 0x2c]

        $sequence_13 = { c145f41e 8d9c3bd6c162ca 8b792c 337924 }
            // n = 4, score = 100
            //   c145f41e             | rol                 dword ptr [ebp - 0xc], 0x1e
            //   8d9c3bd6c162ca       | lea                 ebx, [ebx + edi - 0x359d3e2a]
            //   8b792c               | mov                 edi, dword ptr [ecx + 0x2c]
            //   337924               | xor                 edi, dword ptr [ecx + 0x24]

        $sequence_14 = { c145f41e 8d8c0bdcbc1b8f 894dfc 8bca }
            // n = 4, score = 100
            //   c145f41e             | rol                 dword ptr [ebp - 0xc], 0x1e
            //   8d8c0bdcbc1b8f       | lea                 ecx, [ebx + ecx - 0x70e44324]
            //   894dfc               | mov                 dword ptr [ebp - 4], ecx
            //   8bca                 | mov                 ecx, edx

        $sequence_15 = { c145f41e 8d9c1fd6c162ca 8b793c 337930 }
            // n = 4, score = 100
            //   c145f41e             | rol                 dword ptr [ebp - 0xc], 0x1e
            //   8d9c1fd6c162ca       | lea                 ebx, [edi + ebx - 0x359d3e2a]
            //   8b793c               | mov                 edi, dword ptr [ecx + 0x3c]
            //   337930               | xor                 edi, dword ptr [ecx + 0x30]

    condition:
        7 of them and filesize < 2932736
}