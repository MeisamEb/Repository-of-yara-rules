rule win_latentbot_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-12-06"
        version = "1"
        description = "Detects win.latentbot."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.latentbot"
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
        $sequence_0 = { 48 89742430 4c 892424 4c 8b6118 44 }
            // n = 7, score = 100
            //   48                   | dec                 eax
            //   89742430             | mov                 dword ptr [esp + 0x30], esi
            //   4c                   | dec                 esp
            //   892424               | mov                 dword ptr [esp], esp
            //   4c                   | dec                 esp
            //   8b6118               | mov                 esp, dword ptr [ecx + 0x18]
            //   44                   | inc                 esp

        $sequence_1 = { 833a00 7410 49 8b0a }
            // n = 4, score = 100
            //   833a00               | cmp                 dword ptr [edx], 0
            //   7410                 | je                  0x12
            //   49                   | dec                 ecx
            //   8b0a                 | mov                 ecx, dword ptr [edx]

        $sequence_2 = { 90 0fb7c0 8d68bf 6683fd19 7703 83c020 0fb7c0 }
            // n = 7, score = 100
            //   90                   | nop                 
            //   0fb7c0               | movzx               eax, ax
            //   8d68bf               | lea                 ebp, [eax - 0x41]
            //   6683fd19             | cmp                 bp, 0x19
            //   7703                 | ja                  5
            //   83c020               | add                 eax, 0x20
            //   0fb7c0               | movzx               eax, ax

        $sequence_3 = { c16d5008 836d5808 888c3020290000 eb12 8b4554 8a00 8b4d4c }
            // n = 7, score = 100
            //   c16d5008             | shr                 dword ptr [ebp + 0x50], 8
            //   836d5808             | sub                 dword ptr [ebp + 0x58], 8
            //   888c3020290000       | mov                 byte ptr [eax + esi + 0x2920], cl
            //   eb12                 | jmp                 0x14
            //   8b4554               | mov                 eax, dword ptr [ebp + 0x54]
            //   8a00                 | mov                 al, byte ptr [eax]
            //   8b4d4c               | mov                 ecx, dword ptr [ebp + 0x4c]

        $sequence_4 = { 59 6a46 eb05 6a30 59 6a39 58 }
            // n = 7, score = 100
            //   59                   | pop                 ecx
            //   6a46                 | push                0x46
            //   eb05                 | jmp                 7
            //   6a30                 | push                0x30
            //   59                   | pop                 ecx
            //   6a39                 | push                0x39
            //   58                   | pop                 eax

        $sequence_5 = { 33c9 03f0 13ca 33c0 0375f8 }
            // n = 5, score = 100
            //   33c9                 | xor                 ecx, ecx
            //   03f0                 | add                 esi, eax
            //   13ca                 | adc                 ecx, edx
            //   33c0                 | xor                 eax, eax
            //   0375f8               | add                 esi, dword ptr [ebp - 8]

        $sequence_6 = { 56 0fb730 6683fe41 720c 6683fe5a 7706 83c620 }
            // n = 7, score = 100
            //   56                   | push                esi
            //   0fb730               | movzx               esi, word ptr [eax]
            //   6683fe41             | cmp                 si, 0x41
            //   720c                 | jb                  0xe
            //   6683fe5a             | cmp                 si, 0x5a
            //   7706                 | ja                  8
            //   83c620               | add                 esi, 0x20

        $sequence_7 = { 837d4c00 8b5d68 0f8408030000 c70624000000 e9???????? }
            // n = 5, score = 100
            //   837d4c00             | cmp                 dword ptr [ebp + 0x4c], 0
            //   8b5d68               | mov                 ebx, dword ptr [ebp + 0x68]
            //   0f8408030000         | je                  0x30e
            //   c70624000000         | mov                 dword ptr [esi], 0x24
            //   e9????????           |                     

        $sequence_8 = { 33c9 51 890e 8bdc 52 6a40 }
            // n = 6, score = 100
            //   33c9                 | xor                 ecx, ecx
            //   51                   | push                ecx
            //   890e                 | mov                 dword ptr [esi], ecx
            //   8bdc                 | mov                 ebx, esp
            //   52                   | push                edx
            //   6a40                 | push                0x40

        $sequence_9 = { 8d45cf 897e04 8bd1 2bc1 881c10 4a 75fa }
            // n = 7, score = 100
            //   8d45cf               | lea                 eax, [ebp - 0x31]
            //   897e04               | mov                 dword ptr [esi + 4], edi
            //   8bd1                 | mov                 edx, ecx
            //   2bc1                 | sub                 eax, ecx
            //   881c10               | mov                 byte ptr [eax + edx], bl
            //   4a                   | dec                 edx
            //   75fa                 | jne                 0xfffffffc

    condition:
        7 of them and filesize < 401408
}