rule win_zupdax_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-12-06"
        version = "1"
        description = "Detects win.zupdax."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.zupdax"
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
        $sequence_0 = { 895e2c e8???????? 8b460c 83c404 3bc3 7419 }
            // n = 6, score = 300
            //   895e2c               | mov                 dword ptr [esi + 0x2c], ebx
            //   e8????????           |                     
            //   8b460c               | mov                 eax, dword ptr [esi + 0xc]
            //   83c404               | add                 esp, 4
            //   3bc3                 | cmp                 eax, ebx
            //   7419                 | je                  0x1b

        $sequence_1 = { 8b4c2408 8b7e10 51 e8???????? 8b560c 52 e8???????? }
            // n = 7, score = 300
            //   8b4c2408             | mov                 ecx, dword ptr [esp + 8]
            //   8b7e10               | mov                 edi, dword ptr [esi + 0x10]
            //   51                   | push                ecx
            //   e8????????           |                     
            //   8b560c               | mov                 edx, dword ptr [esi + 0xc]
            //   52                   | push                edx
            //   e8????????           |                     

        $sequence_2 = { 52 68???????? ff15???????? 8d442444 }
            // n = 4, score = 300
            //   52                   | push                edx
            //   68????????           |                     
            //   ff15????????         |                     
            //   8d442444             | lea                 eax, [esp + 0x44]

        $sequence_3 = { e8???????? 83c408 8b4618 50 895e24 895e28 895e2c }
            // n = 7, score = 300
            //   e8????????           |                     
            //   83c408               | add                 esp, 8
            //   8b4618               | mov                 eax, dword ptr [esi + 0x18]
            //   50                   | push                eax
            //   895e24               | mov                 dword ptr [esi + 0x24], ebx
            //   895e28               | mov                 dword ptr [esi + 0x28], ebx
            //   895e2c               | mov                 dword ptr [esi + 0x2c], ebx

        $sequence_4 = { 394c2414 765b 53 41 81e1ff000080 }
            // n = 5, score = 300
            //   394c2414             | cmp                 dword ptr [esp + 0x14], ecx
            //   765b                 | jbe                 0x5d
            //   53                   | push                ebx
            //   41                   | inc                 ecx
            //   81e1ff000080         | and                 ecx, 0x800000ff

        $sequence_5 = { 4b 81cb00ffffff 43 0fb61403 30142f 47 }
            // n = 6, score = 300
            //   4b                   | dec                 ebx
            //   81cb00ffffff         | or                  ebx, 0xffffff00
            //   43                   | inc                 ebx
            //   0fb61403             | movzx               edx, byte ptr [ebx + eax]
            //   30142f               | xor                 byte ptr [edi + ebp], dl
            //   47                   | inc                 edi

        $sequence_6 = { 895710 8b4614 894e14 8b5718 894714 8b4618 895618 }
            // n = 7, score = 300
            //   895710               | mov                 dword ptr [edi + 0x10], edx
            //   8b4614               | mov                 eax, dword ptr [esi + 0x14]
            //   894e14               | mov                 dword ptr [esi + 0x14], ecx
            //   8b5718               | mov                 edx, dword ptr [edi + 0x18]
            //   894714               | mov                 dword ptr [edi + 0x14], eax
            //   8b4618               | mov                 eax, dword ptr [esi + 0x18]
            //   895618               | mov                 dword ptr [esi + 0x18], edx

        $sequence_7 = { 2bc2 50 8d54241c 52 }
            // n = 4, score = 300
            //   2bc2                 | sub                 eax, edx
            //   50                   | push                eax
            //   8d54241c             | lea                 edx, [esp + 0x1c]
            //   52                   | push                edx

        $sequence_8 = { 46 8a1c06 881c01 881406 }
            // n = 4, score = 300
            //   46                   | inc                 esi
            //   8a1c06               | mov                 bl, byte ptr [esi + eax]
            //   881c01               | mov                 byte ptr [ecx + eax], bl
            //   881406               | mov                 byte ptr [esi + eax], dl

        $sequence_9 = { 8b4c2408 8b7e10 51 e8???????? }
            // n = 4, score = 300
            //   8b4c2408             | mov                 ecx, dword ptr [esp + 8]
            //   8b7e10               | mov                 edi, dword ptr [esi + 0x10]
            //   51                   | push                ecx
            //   e8????????           |                     

    condition:
        7 of them and filesize < 1032192
}