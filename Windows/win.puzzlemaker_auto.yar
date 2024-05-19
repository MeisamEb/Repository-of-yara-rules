rule win_puzzlemaker_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-12-06"
        version = "1"
        description = "Detects win.puzzlemaker."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.puzzlemaker"
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
        $sequence_0 = { 48890b 488d5308 488d4808 0f1102 e8???????? 488d053c0e0100 488903 }
            // n = 7, score = 100
            //   48890b               | mov                 dword ptr [ebp - 0x2c], eax
            //   488d5308             | dec                 eax
            //   488d4808             | lea                 eax, [0x181f9]
            //   0f1102               | dec                 eax
            //   e8????????           |                     
            //   488d053c0e0100       | lea                 eax, [ebp - 0x18]
            //   488903               | dec                 eax

        $sequence_1 = { f20f5cca f2410f590cc1 660f28d1 660f28c1 4c8d0dbb980000 f20f101d???????? }
            // n = 6, score = 100
            //   f20f5cca             | sub                 ecx, eax
            //   f2410f590cc1         | inc                 ebp
            //   660f28d1             | xor                 eax, eax
            //   660f28c1             | inc                 ecx
            //   4c8d0dbb980000       | lea                 ecx, [eax + 1]
            //   f20f101d????????     |                     

        $sequence_2 = { 0fb705???????? 66d1e8 6683e07f f30f6f05???????? }
            // n = 4, score = 100
            //   0fb705????????       |                     
            //   66d1e8               | dec                 eax
            //   6683e07f             | lea                 edx, [ebp + 0x1f8]
            //   f30f6f05????????     |                     

        $sequence_3 = { e8???????? 488bd8 488945a7 4885c0 7432 }
            // n = 5, score = 100
            //   e8????????           |                     
            //   488bd8               | dec                 eax
            //   488945a7             | lea                 eax, [0x181f9]
            //   4885c0               | dec                 eax
            //   7432                 | mov                 dword ptr [ebp - 0x18], ecx

        $sequence_4 = { 48895db7 4885db 0f84ca000000 4c896c2428 4c896c2420 4c8d4d07 4533c0 }
            // n = 7, score = 100
            //   48895db7             | movzx               eax, word ptr [ecx + edi*4 + 0x19740]
            //   4885db               | dec                 eax
            //   0f84ca000000         | lea                 edx, [ecx + 0x18e30]
            //   4c896c2428           | dec                 eax
            //   4c896c2420           | lea                 ecx, [ebp + 0x324]
            //   4c8d4d07             | dec                 esp
            //   4533c0               | mov                 eax, esi

        $sequence_5 = { 4489542444 81fae9fd0000 0f857e010000 4c8d3deddafeff }
            // n = 4, score = 100
            //   4489542444           | mov                 dword ptr [esi], eax
            //   81fae9fd0000         | dec                 eax
            //   0f857e010000         | lea                 ecx, [ebp - 0x11]
            //   4c8d3deddafeff       | dec                 eax

        $sequence_6 = { 488910 48895008 c3 4883ec28 4885c9 7411 488d0590e30100 }
            // n = 7, score = 100
            //   488910               | mov                 dword ptr [ebx], eax
            //   48895008             | dec                 eax
            //   c3                   | mov                 eax, ebx
            //   4883ec28             | dec                 eax
            //   4885c9               | lea                 ecx, [eax + 8]
            //   7411                 | movups              xmmword ptr [edx], xmm0
            //   488d0590e30100       | dec                 eax

        $sequence_7 = { c705????????090400c0 c705????????01000000 c705????????01000000 b808000000 486bc000 488d0da6f80100 8b542430 }
            // n = 7, score = 100
            //   c705????????090400c0     |     
            //   c705????????01000000     |     
            //   c705????????01000000     |     
            //   b808000000           | mov                 eax, dword ptr [eax - 4]
            //   486bc000             | shr                 eax, cl
            //   488d0da6f80100       | inc                 ecx
            //   8b542430             | movzx               ecx, byte ptr [eax]

        $sequence_8 = { 48898520050000 488b05???????? 488d154a1b0200 488b0d???????? 4533ed 488985f8010000 }
            // n = 6, score = 100
            //   48898520050000       | dec                 eax
            //   488b05????????       |                     
            //   488d154a1b0200       | mov                 esi, ecx
            //   488b0d????????       |                     
            //   4533ed               | dec                 eax
            //   488985f8010000       | test                edx, edx

        $sequence_9 = { 488d0db4270100 e8???????? 85c0 740e ba01000000 488bcd ff15???????? }
            // n = 7, score = 100
            //   488d0db4270100       | dec                 esp
            //   e8????????           |                     
            //   85c0                 | mov                 dword ptr [ebp + 0x200], ebp
            //   740e                 | lea                 ecx, [edx + 2]
            //   ba01000000           | dec                 eax
            //   488bcd               | mov                 ebx, eax
            //   ff15????????         |                     

    condition:
        7 of them and filesize < 331776
}