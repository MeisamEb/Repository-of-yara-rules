rule win_peppy_rat_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2020-10-14"
        version = "1"
        description = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.5.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.peppy_rat"
        malpedia_rule_date = "20201014"
        malpedia_hash = "a7e3bd57eaf12bf3ea29a863c041091ba3af9ac9"
        malpedia_version = "20201014"
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
        $sequence_0 = { 7404 3c5a 750d 56 e8???????? 83c404 85c0 }
            // n = 7, score = 200
            //   7404                 | je                  6
            //   3c5a                 | cmp                 al, 0x5a
            //   750d                 | jne                 0xf
            //   56                   | push                esi
            //   e8????????           |                     
            //   83c404               | add                 esp, 4
            //   85c0                 | test                eax, eax

        $sequence_1 = { 6a38 8d4c240c 68???????? 51 89442424 }
            // n = 5, score = 200
            //   6a38                 | push                0x38
            //   8d4c240c             | lea                 ecx, [esp + 0xc]
            //   68????????           |                     
            //   51                   | push                ecx
            //   89442424             | mov                 dword ptr [esp + 0x24], eax

        $sequence_2 = { e8???????? 8b0d???????? 50 51 e8???????? 8b15???????? }
            // n = 6, score = 200
            //   e8????????           |                     
            //   8b0d????????         |                     
            //   50                   | push                eax
            //   51                   | push                ecx
            //   e8????????           |                     
            //   8b15????????         |                     

        $sequence_3 = { 85c0 7431 c745fc00000000 8b0d???????? 51 6a00 }
            // n = 6, score = 200
            //   85c0                 | test                eax, eax
            //   7431                 | je                  0x33
            //   c745fc00000000       | mov                 dword ptr [ebp - 4], 0
            //   8b0d????????         |                     
            //   51                   | push                ecx
            //   6a00                 | push                0

        $sequence_4 = { 2bd3 5b 8a08 880c02 }
            // n = 4, score = 200
            //   2bd3                 | sub                 edx, ebx
            //   5b                   | pop                 ebx
            //   8a08                 | mov                 cl, byte ptr [eax]
            //   880c02               | mov                 byte ptr [edx + eax], cl

        $sequence_5 = { 51 e8???????? 8bf8 033d???????? b8???????? 8d5001 }
            // n = 6, score = 200
            //   51                   | push                ecx
            //   e8????????           |                     
            //   8bf8                 | mov                 edi, eax
            //   033d????????         |                     
            //   b8????????           |                     
            //   8d5001               | lea                 edx, [eax + 1]

        $sequence_6 = { 83c418 85c0 750e 57 68???????? }
            // n = 5, score = 200
            //   83c418               | add                 esp, 0x18
            //   85c0                 | test                eax, eax
            //   750e                 | jne                 0x10
            //   57                   | push                edi
            //   68????????           |                     

    condition:
        7 of them and filesize < 377856
}