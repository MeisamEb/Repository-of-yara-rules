rule win_rustock_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-12-06"
        version = "1"
        description = "Detects win.rustock."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.rustock"
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
        $sequence_0 = { 8d6424fc 892c24 31ed 01e5 8d6424e4 50 }
            // n = 6, score = 100
            //   8d6424fc             | lea                 esp, [esp - 4]
            //   892c24               | mov                 dword ptr [esp], ebp
            //   31ed                 | xor                 ebp, ebp
            //   01e5                 | add                 ebp, esp
            //   8d6424e4             | lea                 esp, [esp - 0x1c]
            //   50                   | push                eax

        $sequence_1 = { 031d???????? 21db 5e 5a }
            // n = 4, score = 100
            //   031d????????         |                     
            //   21db                 | and                 ebx, ebx
            //   5e                   | pop                 esi
            //   5a                   | pop                 edx

        $sequence_2 = { 8bd8 85db 7439 8b4dc0 33c0 8bfb 8bd1 }
            // n = 7, score = 100
            //   8bd8                 | mov                 ebx, eax
            //   85db                 | test                ebx, ebx
            //   7439                 | je                  0x3b
            //   8b4dc0               | mov                 ecx, dword ptr [ebp - 0x40]
            //   33c0                 | xor                 eax, eax
            //   8bfb                 | mov                 edi, ebx
            //   8bd1                 | mov                 edx, ecx

        $sequence_3 = { 83c604 56 53 ff15???????? 53 }
            // n = 5, score = 100
            //   83c604               | add                 esi, 4
            //   56                   | push                esi
            //   53                   | push                ebx
            //   ff15????????         |                     
            //   53                   | push                ebx

        $sequence_4 = { 833d????????00 7421 56 e8???????? 85c0 59 75ac }
            // n = 7, score = 100
            //   833d????????00       |                     
            //   7421                 | je                  0x23
            //   56                   | push                esi
            //   e8????????           |                     
            //   85c0                 | test                eax, eax
            //   59                   | pop                 ecx
            //   75ac                 | jne                 0xffffffae

        $sequence_5 = { 50 ff7520 e8???????? 83c418 8945cc 3bc7 74d4 }
            // n = 7, score = 100
            //   50                   | push                eax
            //   ff7520               | push                dword ptr [ebp + 0x20]
            //   e8????????           |                     
            //   83c418               | add                 esp, 0x18
            //   8945cc               | mov                 dword ptr [ebp - 0x34], eax
            //   3bc7                 | cmp                 eax, edi
            //   74d4                 | je                  0xffffffd6

        $sequence_6 = { ff750c e8???????? 68e8030000 ff15???????? e8???????? 8bf8 }
            // n = 6, score = 100
            //   ff750c               | push                dword ptr [ebp + 0xc]
            //   e8????????           |                     
            //   68e8030000           | push                0x3e8
            //   ff15????????         |                     
            //   e8????????           |                     
            //   8bf8                 | mov                 edi, eax

        $sequence_7 = { 59 8945c4 83f8ff 7507 33c0 e9???????? 3b4520 }
            // n = 7, score = 100
            //   59                   | pop                 ecx
            //   8945c4               | mov                 dword ptr [ebp - 0x3c], eax
            //   83f8ff               | cmp                 eax, -1
            //   7507                 | jne                 9
            //   33c0                 | xor                 eax, eax
            //   e9????????           |                     
            //   3b4520               | cmp                 eax, dword ptr [ebp + 0x20]

        $sequence_8 = { ebb5 7402 ebd3 8b1c24 68???????? }
            // n = 5, score = 100
            //   ebb5                 | jmp                 0xffffffb7
            //   7402                 | je                  4
            //   ebd3                 | jmp                 0xffffffd5
            //   8b1c24               | mov                 ebx, dword ptr [esp]
            //   68????????           |                     

        $sequence_9 = { 014514 a1???????? 83f802 0f84de010000 3bc7 }
            // n = 5, score = 100
            //   014514               | add                 dword ptr [ebp + 0x14], eax
            //   a1????????           |                     
            //   83f802               | cmp                 eax, 2
            //   0f84de010000         | je                  0x1e4
            //   3bc7                 | cmp                 eax, edi

    condition:
        7 of them and filesize < 565248
}