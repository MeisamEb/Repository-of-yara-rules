rule win_sphijacker_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-12-06"
        version = "1"
        description = "Detects win.sphijacker."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.sphijacker"
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
        $sequence_0 = { 488b0d???????? 488d1d19080200 483bcb 740c }
            // n = 4, score = 100
            //   488b0d????????       |                     
            //   488d1d19080200       | inc                 ebp
            //   483bcb               | xor                 esi, esi
            //   740c                 | dec                 eax

        $sequence_1 = { 8b7808 e9???????? 488b55c8 4c8d05cbb10100 }
            // n = 4, score = 100
            //   8b7808               | dec                 eax
            //   e9????????           |                     
            //   488b55c8             | lea                 eax, [ebp + 0x10]
            //   4c8d05cbb10100       | dec                 eax

        $sequence_2 = { 4c8d056b740100 83e23f 488bcf 48c1f906 488d14d2 498b0cc8 8064d138fd }
            // n = 7, score = 100
            //   4c8d056b740100       | jne                 0xbab
            //   83e23f               | dec                 eax
            //   488bcf               | lea                 ecx, [0x21d90]
            //   48c1f906             | nop                 
            //   488d14d2             | jmp                 0xbb8
            //   498b0cc8             | dec                 eax
            //   8064d138fd           | lea                 edi, [0x1c951]

        $sequence_3 = { 7c68 488b4718 488b08 420fb70451 2500800000 7455 488b8360040000 }
            // n = 7, score = 100
            //   7c68                 | mov                 ebx, ecx
            //   488b4718             | dec                 eax
            //   488b08               | mov                 eax, edx
            //   420fb70451           | dec                 eax
            //   2500800000           | lea                 ecx, [0x122e9]
            //   7455                 | xorps               xmm0, xmm0
            //   488b8360040000       | dec                 eax

        $sequence_4 = { 488bd1 488bc1 48c1f806 4c8d05e4bd0100 83e23f 488d14d2 498b04c0 }
            // n = 7, score = 100
            //   488bd1               | mov                 dword ptr [ebx + 0x48], ebp
            //   488bc1               | inc                 eax
            //   48c1f806             | mov                 byte ptr [ebx + 0x24], ch
            //   4c8d05e4bd0100       | inc                 esp
            //   83e23f               | mov                 al, byte ptr [eax]
            //   488d14d2             | dec                 eax
            //   498b04c0             | inc                 eax

        $sequence_5 = { 33d2 f20f100d???????? 41b8ee010000 66898dc8070000 }
            // n = 4, score = 100
            //   33d2                 | add                 dword ptr cs:[eax], eax
            //   f20f100d????????     |                     
            //   41b8ee010000         | cdq                 
            //   66898dc8070000       | add                 dword ptr cs:[eax], eax

        $sequence_6 = { e8???????? 448ba560010000 8b4c2440 488d15d9e8feff 2b4c2444 41b826000000 894c2440 }
            // n = 7, score = 100
            //   e8????????           |                     
            //   448ba560010000       | movsx               esp, byte ptr [ecx + ebx + 0x2a920]
            //   8b4c2440             | inc                 ecx
            //   488d15d9e8feff       | inc                 esp
            //   2b4c2444             | inc                 ecx
            //   41b826000000         | mov                 eax, esp
            //   894c2440             | sub                 eax, edx

        $sequence_7 = { c744242804000000 488d1585e10100 41b904000000 4889442420 4533c0 c7451088888888 ff15???????? }
            // n = 7, score = 100
            //   c744242804000000     | mov                 dword ptr [esp + 0x20], eax
            //   488d1585e10100       | dec                 eax
            //   41b904000000         | lea                 edx, [0x1dcbf]
            //   4889442420           | dec                 eax
            //   4533c0               | mov                 ecx, 0x80000002
            //   c7451088888888       | dec                 eax
            //   ff15????????         |                     

        $sequence_8 = { ff15???????? 488b4d18 4c8d4520 488d159ee00100 ff15???????? 488b4d20 }
            // n = 6, score = 100
            //   ff15????????         |                     
            //   488b4d18             | mov                 al, 1
            //   4c8d4520             | dec                 eax
            //   488d159ee00100       | add                 esp, 0x20
            //   ff15????????         |                     
            //   488b4d20             | dec                 eax

        $sequence_9 = { 8b4814 c1e90c 4184cd 740e 488b8360040000 4883780800 7419 }
            // n = 7, score = 100
            //   8b4814               | movsd               qword ptr [ebp + 0x24a0], xmm1
            //   c1e90c               | dec                 eax
            //   4184cd               | lea                 ecx, [ebp + 0x26b8]
            //   740e                 | xor                 edx, edx
            //   488b8360040000       | inc                 ecx
            //   4883780800           | mov                 eax, 0x1f0
            //   7419                 | movaps              xmmword ptr [ebp + 0x26a0], xmm0

    condition:
        7 of them and filesize < 808960
}