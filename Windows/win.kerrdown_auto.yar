rule win_kerrdown_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-12-06"
        version = "1"
        description = "Detects win.kerrdown."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.kerrdown"
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
        $sequence_0 = { 5d c20800 85f6 75b2 83ff10 8935???????? b8???????? }
            // n = 7, score = 200
            //   5d                   | pop                 ebp
            //   c20800               | ret                 8
            //   85f6                 | test                esi, esi
            //   75b2                 | jne                 0xffffffb4
            //   83ff10               | cmp                 edi, 0x10
            //   8935????????         |                     
            //   b8????????           |                     

        $sequence_1 = { 8bec 8b0d???????? b8???????? 8b15???????? 57 8b3d???????? 83ff10 }
            // n = 7, score = 200
            //   8bec                 | mov                 ebp, esp
            //   8b0d????????         |                     
            //   b8????????           |                     
            //   8b15????????         |                     
            //   57                   | push                edi
            //   8b3d????????         |                     
            //   83ff10               | cmp                 edi, 0x10

        $sequence_2 = { 8aca c0e206 c0e902 80e10f 02c8 8a45eb 243f }
            // n = 7, score = 200
            //   8aca                 | mov                 cl, dl
            //   c0e206               | shl                 dl, 6
            //   c0e902               | shr                 cl, 2
            //   80e10f               | and                 cl, 0xf
            //   02c8                 | add                 cl, al
            //   8a45eb               | mov                 al, byte ptr [ebp - 0x15]
            //   243f                 | and                 al, 0x3f

        $sequence_3 = { b8???????? 0f43d1 b9???????? 2bc2 50 }
            // n = 5, score = 200
            //   b8????????           |                     
            //   0f43d1               | cmovae              edx, ecx
            //   b9????????           |                     
            //   2bc2                 | sub                 eax, edx
            //   50                   | push                eax

        $sequence_4 = { 0f43c1 3d???????? 773e 83ff10 }
            // n = 4, score = 200
            //   0f43c1               | cmovae              eax, ecx
            //   3d????????           |                     
            //   773e                 | ja                  0x40
            //   83ff10               | cmp                 edi, 0x10

        $sequence_5 = { 83ff10 ba???????? b8???????? 0f43d1 b9???????? 2bc2 }
            // n = 6, score = 200
            //   83ff10               | cmp                 edi, 0x10
            //   ba????????           |                     
            //   b8????????           |                     
            //   0f43d1               | cmovae              edx, ecx
            //   b9????????           |                     
            //   2bc2                 | sub                 eax, edx

        $sequence_6 = { 80e10f 02c8 8a45eb 243f }
            // n = 4, score = 200
            //   80e10f               | and                 cl, 0xf
            //   02c8                 | add                 cl, al
            //   8a45eb               | mov                 al, byte ptr [ebp - 0x15]
            //   243f                 | and                 al, 0x3f

        $sequence_7 = { ff750c 83ff10 ba???????? b8???????? 0f43d1 b9???????? 2bc2 }
            // n = 7, score = 200
            //   ff750c               | push                dword ptr [ebp + 0xc]
            //   83ff10               | cmp                 edi, 0x10
            //   ba????????           |                     
            //   b8????????           |                     
            //   0f43d1               | cmovae              edx, ecx
            //   b9????????           |                     
            //   2bc2                 | sub                 eax, edx

        $sequence_8 = { e8???????? 46 83fe03 7cec 8b4de0 }
            // n = 5, score = 200
            //   e8????????           |                     
            //   46                   | inc                 esi
            //   83fe03               | cmp                 esi, 3
            //   7cec                 | jl                  0xffffffee
            //   8b4de0               | mov                 ecx, dword ptr [ebp - 0x20]

        $sequence_9 = { 0f854d0d0000 eb00 f30f7e442404 660f2815???????? 660f28c8 }
            // n = 5, score = 200
            //   0f854d0d0000         | jne                 0xd53
            //   eb00                 | jmp                 2
            //   f30f7e442404         | movq                xmm0, qword ptr [esp + 4]
            //   660f2815????????     |                     
            //   660f28c8             | movapd              xmm1, xmm0

    condition:
        7 of them and filesize < 278528
}