rule win_redpepper_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-12-06"
        version = "1"
        description = "Detects win.redpepper."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.redpepper"
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
        $sequence_0 = { 57 8bf9 8b870c1e0000 85c0 }
            // n = 4, score = 300
            //   57                   | push                edi
            //   8bf9                 | mov                 edi, ecx
            //   8b870c1e0000         | mov                 eax, dword ptr [edi + 0x1e0c]
            //   85c0                 | test                eax, eax

        $sequence_1 = { 8b500c 41 83f904 8b12 8a540aff }
            // n = 5, score = 300
            //   8b500c               | mov                 edx, dword ptr [eax + 0xc]
            //   41                   | inc                 ecx
            //   83f904               | cmp                 ecx, 4
            //   8b12                 | mov                 edx, dword ptr [edx]
            //   8a540aff             | mov                 dl, byte ptr [edx + ecx - 1]

        $sequence_2 = { 8b4d10 881e 50 8901 e8???????? 59 }
            // n = 6, score = 300
            //   8b4d10               | mov                 ecx, dword ptr [ebp + 0x10]
            //   881e                 | mov                 byte ptr [esi], bl
            //   50                   | push                eax
            //   8901                 | mov                 dword ptr [ecx], eax
            //   e8????????           |                     
            //   59                   | pop                 ecx

        $sequence_3 = { 8b4520 3bc7 7439 68a1000000 68???????? 50 e8???????? }
            // n = 7, score = 300
            //   8b4520               | mov                 eax, dword ptr [ebp + 0x20]
            //   3bc7                 | cmp                 eax, edi
            //   7439                 | je                  0x3b
            //   68a1000000           | push                0xa1
            //   68????????           |                     
            //   50                   | push                eax
            //   e8????????           |                     

        $sequence_4 = { 53 55 56 33f6 57 8b7c2428 }
            // n = 6, score = 300
            //   53                   | push                ebx
            //   55                   | push                ebp
            //   56                   | push                esi
            //   33f6                 | xor                 esi, esi
            //   57                   | push                edi
            //   8b7c2428             | mov                 edi, dword ptr [esp + 0x28]

        $sequence_5 = { 752d 689f000000 68???????? 6a26 }
            // n = 4, score = 300
            //   752d                 | jne                 0x2f
            //   689f000000           | push                0x9f
            //   68????????           |                     
            //   6a26                 | push                0x26

        $sequence_6 = { c3 8b7c2418 85ff 7432 e8???????? }
            // n = 5, score = 300
            //   c3                   | ret                 
            //   8b7c2418             | mov                 edi, dword ptr [esp + 0x18]
            //   85ff                 | test                edi, edi
            //   7432                 | je                  0x34
            //   e8????????           |                     

        $sequence_7 = { 8845f3 8845f4 8845f7 8845f8 }
            // n = 4, score = 300
            //   8845f3               | mov                 byte ptr [ebp - 0xd], al
            //   8845f4               | mov                 byte ptr [ebp - 0xc], al
            //   8845f7               | mov                 byte ptr [ebp - 9], al
            //   8845f8               | mov                 byte ptr [ebp - 8], al

        $sequence_8 = { 8b742414 6a0f f7d1 49 56 8be9 e8???????? }
            // n = 7, score = 300
            //   8b742414             | mov                 esi, dword ptr [esp + 0x14]
            //   6a0f                 | push                0xf
            //   f7d1                 | not                 ecx
            //   49                   | dec                 ecx
            //   56                   | push                esi
            //   8be9                 | mov                 ebp, ecx
            //   e8????????           |                     

        $sequence_9 = { e8???????? 8b44241c 8b6c2428 8b4c2418 }
            // n = 4, score = 300
            //   e8????????           |                     
            //   8b44241c             | mov                 eax, dword ptr [esp + 0x1c]
            //   8b6c2428             | mov                 ebp, dword ptr [esp + 0x28]
            //   8b4c2418             | mov                 ecx, dword ptr [esp + 0x18]

    condition:
        7 of them and filesize < 2482176
}