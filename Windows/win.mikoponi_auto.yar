rule win_mikoponi_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-12-06"
        version = "1"
        description = "Detects win.mikoponi."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.mikoponi"
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
        $sequence_0 = { 8b0f 51 e8???????? 83c404 5d 5f 83c408 }
            // n = 7, score = 100
            //   8b0f                 | mov                 ecx, dword ptr [edi]
            //   51                   | push                ecx
            //   e8????????           |                     
            //   83c404               | add                 esp, 4
            //   5d                   | pop                 ebp
            //   5f                   | pop                 edi
            //   83c408               | add                 esp, 8

        $sequence_1 = { e8???????? 83c404 eb15 8d942464020000 52 8d442418 }
            // n = 6, score = 100
            //   e8????????           |                     
            //   83c404               | add                 esp, 4
            //   eb15                 | jmp                 0x17
            //   8d942464020000       | lea                 edx, [esp + 0x264]
            //   52                   | push                edx
            //   8d442418             | lea                 eax, [esp + 0x18]

        $sequence_2 = { 33ed 391d???????? 743d bf???????? }
            // n = 4, score = 100
            //   33ed                 | xor                 ebp, ebp
            //   391d????????         |                     
            //   743d                 | je                  0x3f
            //   bf????????           |                     

        $sequence_3 = { b9???????? 66895010 c7004418a150 e8???????? 8d3c47 }
            // n = 5, score = 100
            //   b9????????           |                     
            //   66895010             | mov                 word ptr [eax + 0x10], dx
            //   c7004418a150         | mov                 dword ptr [eax], 0x50a11844
            //   e8????????           |                     
            //   8d3c47               | lea                 edi, [edi + eax*2]

        $sequence_4 = { 53 55 e8???????? 83c40c 84c0 7506 83c3ff }
            // n = 7, score = 100
            //   53                   | push                ebx
            //   55                   | push                ebp
            //   e8????????           |                     
            //   83c40c               | add                 esp, 0xc
            //   84c0                 | test                al, al
            //   7506                 | jne                 8
            //   83c3ff               | add                 ebx, -1

        $sequence_5 = { 803d????????01 56 7527 8b742408 56 ff15???????? }
            // n = 6, score = 100
            //   803d????????01       |                     
            //   56                   | push                esi
            //   7527                 | jne                 0x29
            //   8b742408             | mov                 esi, dword ptr [esp + 8]
            //   56                   | push                esi
            //   ff15????????         |                     

        $sequence_6 = { e8???????? 81c470040000 c3 8b542430 3b542420 750e }
            // n = 6, score = 100
            //   e8????????           |                     
            //   81c470040000         | add                 esp, 0x470
            //   c3                   | ret                 
            //   8b542430             | mov                 edx, dword ptr [esp + 0x30]
            //   3b542420             | cmp                 edx, dword ptr [esp + 0x20]
            //   750e                 | jne                 0x10

        $sequence_7 = { 7543 3805???????? 753b 8d8c2464020000 51 68???????? }
            // n = 6, score = 100
            //   7543                 | jne                 0x45
            //   3805????????         |                     
            //   753b                 | jne                 0x3d
            //   8d8c2464020000       | lea                 ecx, [esp + 0x264]
            //   51                   | push                ecx
            //   68????????           |                     

    condition:
        7 of them and filesize < 330752
}