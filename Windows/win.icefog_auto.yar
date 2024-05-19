rule win_icefog_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-12-06"
        version = "1"
        description = "Detects win.icefog."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.icefog"
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
        $sequence_0 = { 80e3fb 899588feffff 33d2 80c327 85ff 0f94c2 85d2 }
            // n = 7, score = 200
            //   80e3fb               | and                 bl, 0xfb
            //   899588feffff         | mov                 dword ptr [ebp - 0x178], edx
            //   33d2                 | xor                 edx, edx
            //   80c327               | add                 bl, 0x27
            //   85ff                 | test                edi, edi
            //   0f94c2               | sete                dl
            //   85d2                 | test                edx, edx

        $sequence_1 = { c78530ffffff05000000 eb0f 83f803 750a c78530ffffff02000000 8b4604 50 }
            // n = 7, score = 200
            //   c78530ffffff05000000     | mov    dword ptr [ebp - 0xd0], 5
            //   eb0f                 | jmp                 0x11
            //   83f803               | cmp                 eax, 3
            //   750a                 | jne                 0xc
            //   c78530ffffff02000000     | mov    dword ptr [ebp - 0xd0], 2
            //   8b4604               | mov                 eax, dword ptr [esi + 4]
            //   50                   | push                eax

        $sequence_2 = { 751e 8b4d0c 8d450c 50 57 51 e8???????? }
            // n = 7, score = 200
            //   751e                 | jne                 0x20
            //   8b4d0c               | mov                 ecx, dword ptr [ebp + 0xc]
            //   8d450c               | lea                 eax, [ebp + 0xc]
            //   50                   | push                eax
            //   57                   | push                edi
            //   51                   | push                ecx
            //   e8????????           |                     

        $sequence_3 = { 8bec 53 56 33f6 39770c 7e24 33db }
            // n = 7, score = 200
            //   8bec                 | mov                 ebp, esp
            //   53                   | push                ebx
            //   56                   | push                esi
            //   33f6                 | xor                 esi, esi
            //   39770c               | cmp                 dword ptr [edi + 0xc], esi
            //   7e24                 | jle                 0x26
            //   33db                 | xor                 ebx, ebx

        $sequence_4 = { 8b5108 8b45f4 03d3 52 53 50 6a03 }
            // n = 7, score = 200
            //   8b5108               | mov                 edx, dword ptr [ecx + 8]
            //   8b45f4               | mov                 eax, dword ptr [ebp - 0xc]
            //   03d3                 | add                 edx, ebx
            //   52                   | push                edx
            //   53                   | push                ebx
            //   50                   | push                eax
            //   6a03                 | push                3

        $sequence_5 = { 50 e8???????? 8b0e 8d55d4 68ffffff7f 52 894de8 }
            // n = 7, score = 200
            //   50                   | push                eax
            //   e8????????           |                     
            //   8b0e                 | mov                 ecx, dword ptr [esi]
            //   8d55d4               | lea                 edx, [ebp - 0x2c]
            //   68ffffff7f           | push                0x7fffffff
            //   52                   | push                edx
            //   894de8               | mov                 dword ptr [ebp - 0x18], ecx

        $sequence_6 = { 8b5610 0bf8 8b4508 52 50 e8???????? 8b4e18 }
            // n = 7, score = 200
            //   8b5610               | mov                 edx, dword ptr [esi + 0x10]
            //   0bf8                 | or                  edi, eax
            //   8b4508               | mov                 eax, dword ptr [ebp + 8]
            //   52                   | push                edx
            //   50                   | push                eax
            //   e8????????           |                     
            //   8b4e18               | mov                 ecx, dword ptr [esi + 0x18]

        $sequence_7 = { 50 51 e8???????? 8bd8 83c408 85db 0f841b010000 }
            // n = 7, score = 200
            //   50                   | push                eax
            //   51                   | push                ecx
            //   e8????????           |                     
            //   8bd8                 | mov                 ebx, eax
            //   83c408               | add                 esp, 8
            //   85db                 | test                ebx, ebx
            //   0f841b010000         | je                  0x121

        $sequence_8 = { e8???????? 53 e8???????? 53 57 e8???????? 83c42c }
            // n = 7, score = 200
            //   e8????????           |                     
            //   53                   | push                ebx
            //   e8????????           |                     
            //   53                   | push                ebx
            //   57                   | push                edi
            //   e8????????           |                     
            //   83c42c               | add                 esp, 0x2c

        $sequence_9 = { dfe0 ddd9 f6c441 0f8572010000 dd05???????? d8d1 dfe0 }
            // n = 7, score = 200
            //   dfe0                 | fnstsw              ax
            //   ddd9                 | fstp                st(1)
            //   f6c441               | test                ah, 0x41
            //   0f8572010000         | jne                 0x178
            //   dd05????????         |                     
            //   d8d1                 | fcom                st(1)
            //   dfe0                 | fnstsw              ax

    condition:
        7 of them and filesize < 1187840
}