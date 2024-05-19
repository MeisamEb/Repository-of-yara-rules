rule win_stealc_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-12-06"
        version = "1"
        description = "Detects win.stealc."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.stealc"
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
        $sequence_0 = { ff15???????? 85c0 7507 c685e0feffff43 }
            // n = 4, score = 600
            //   ff15????????         |                     
            //   85c0                 | test                eax, eax
            //   7507                 | jne                 9
            //   c685e0feffff43       | mov                 byte ptr [ebp - 0x120], 0x43

        $sequence_1 = { 68???????? e8???????? e8???????? 83c474 }
            // n = 4, score = 600
            //   68????????           |                     
            //   e8????????           |                     
            //   e8????????           |                     
            //   83c474               | add                 esp, 0x74

        $sequence_2 = { 50 e8???????? e8???????? 83c474 }
            // n = 4, score = 600
            //   50                   | push                eax
            //   e8????????           |                     
            //   e8????????           |                     
            //   83c474               | add                 esp, 0x74

        $sequence_3 = { e8???????? e8???????? 81c480000000 e9???????? }
            // n = 4, score = 600
            //   e8????????           |                     
            //   e8????????           |                     
            //   81c480000000         | add                 esp, 0x80
            //   e9????????           |                     

        $sequence_4 = { 50 e8???????? e8???????? 81c484000000 }
            // n = 4, score = 600
            //   50                   | push                eax
            //   e8????????           |                     
            //   e8????????           |                     
            //   81c484000000         | add                 esp, 0x84

        $sequence_5 = { e8???????? 83c460 e8???????? 83c40c }
            // n = 4, score = 600
            //   e8????????           |                     
            //   83c460               | add                 esp, 0x60
            //   e8????????           |                     
            //   83c40c               | add                 esp, 0xc

        $sequence_6 = { e8???????? e8???????? 83c418 6a3c }
            // n = 4, score = 600
            //   e8????????           |                     
            //   e8????????           |                     
            //   83c418               | add                 esp, 0x18
            //   6a3c                 | push                0x3c

        $sequence_7 = { ff15???????? 50 ff15???????? 8b5508 8902 }
            // n = 5, score = 600
            //   ff15????????         |                     
            //   50                   | push                eax
            //   ff15????????         |                     
            //   8b5508               | mov                 edx, dword ptr [ebp + 8]
            //   8902                 | mov                 dword ptr [edx], eax

        $sequence_8 = { 50 ff15???????? 8b5508 8902 }
            // n = 4, score = 600
            //   50                   | push                eax
            //   ff15????????         |                     
            //   8b5508               | mov                 edx, dword ptr [ebp + 8]
            //   8902                 | mov                 dword ptr [edx], eax

        $sequence_9 = { 7405 394104 7d07 8b4908 3bca 75f0 8bf9 }
            // n = 7, score = 400
            //   7405                 | je                  7
            //   394104               | cmp                 dword ptr [ecx + 4], eax
            //   7d07                 | jge                 9
            //   8b4908               | mov                 ecx, dword ptr [ecx + 8]
            //   3bca                 | cmp                 ecx, edx
            //   75f0                 | jne                 0xfffffff2
            //   8bf9                 | mov                 edi, ecx

    condition:
        7 of them and filesize < 4891648
}