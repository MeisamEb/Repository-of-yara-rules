rule win_hermeticwiper_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-12-06"
        version = "1"
        description = "Detects win.hermeticwiper."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.hermeticwiper"
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
        $sequence_0 = { b9???????? 8bc7 6690 668b10 663b11 751e 6685d2 }
            // n = 7, score = 200
            //   b9????????           |                     
            //   8bc7                 | mov                 eax, edi
            //   6690                 | nop                 
            //   668b10               | mov                 dx, word ptr [eax]
            //   663b11               | cmp                 dx, word ptr [ecx]
            //   751e                 | jne                 0x20
            //   6685d2               | test                dx, dx

        $sequence_1 = { 8bf8 85ff 7404 3bfe 750b 33c0 }
            // n = 6, score = 200
            //   8bf8                 | mov                 edi, eax
            //   85ff                 | test                edi, edi
            //   7404                 | je                  6
            //   3bfe                 | cmp                 edi, esi
            //   750b                 | jne                 0xd
            //   33c0                 | xor                 eax, eax

        $sequence_2 = { 55 8bec 8b4508 ff30 ff15???????? 6803000280 }
            // n = 6, score = 200
            //   55                   | push                ebp
            //   8bec                 | mov                 ebp, esp
            //   8b4508               | mov                 eax, dword ptr [ebp + 8]
            //   ff30                 | push                dword ptr [eax]
            //   ff15????????         |                     
            //   6803000280           | push                0x80020003

        $sequence_3 = { 8b0d???????? 83e802 7408 83e801 751b 8b7e08 }
            // n = 6, score = 200
            //   8b0d????????         |                     
            //   83e802               | sub                 eax, 2
            //   7408                 | je                  0xa
            //   83e801               | sub                 eax, 1
            //   751b                 | jne                 0x1d
            //   8b7e08               | mov                 edi, dword ptr [esi + 8]

        $sequence_4 = { 8b75f8 13550c 6a00 6a00 52 50 56 }
            // n = 7, score = 200
            //   8b75f8               | mov                 esi, dword ptr [ebp - 8]
            //   13550c               | adc                 edx, dword ptr [ebp + 0xc]
            //   6a00                 | push                0
            //   6a00                 | push                0
            //   52                   | push                edx
            //   50                   | push                eax
            //   56                   | push                esi

        $sequence_5 = { 33f6 660fd645dc 33ff 8975f4 50 0f1145bc }
            // n = 6, score = 200
            //   33f6                 | xor                 esi, esi
            //   660fd645dc           | movq                qword ptr [ebp - 0x24], xmm0
            //   33ff                 | xor                 edi, edi
            //   8975f4               | mov                 dword ptr [ebp - 0xc], esi
            //   50                   | push                eax
            //   0f1145bc             | movups              xmmword ptr [ebp - 0x44], xmm0

        $sequence_6 = { d3e0 8b4dfc 0facd605 c1ea05 8504b1 754e 8b4d14 }
            // n = 7, score = 200
            //   d3e0                 | shl                 eax, cl
            //   8b4dfc               | mov                 ecx, dword ptr [ebp - 4]
            //   0facd605             | shrd                esi, edx, 5
            //   c1ea05               | shr                 edx, 5
            //   8504b1               | test                dword ptr [ecx + esi*4], eax
            //   754e                 | jne                 0x50
            //   8b4d14               | mov                 ecx, dword ptr [ebp + 0x14]

        $sequence_7 = { 7509 3b75d8 7504 8bc2 eb0f 3bcb }
            // n = 6, score = 200
            //   7509                 | jne                 0xb
            //   3b75d8               | cmp                 esi, dword ptr [ebp - 0x28]
            //   7504                 | jne                 6
            //   8bc2                 | mov                 eax, edx
            //   eb0f                 | jmp                 0x11
            //   3bcb                 | cmp                 ecx, ebx

        $sequence_8 = { c20c00 813f46494c45 75d4 f6471601 74ce 0fb77714 }
            // n = 6, score = 200
            //   c20c00               | ret                 0xc
            //   813f46494c45         | cmp                 dword ptr [edi], 0x454c4946
            //   75d4                 | jne                 0xffffffd6
            //   f6471601             | test                byte ptr [edi + 0x16], 1
            //   74ce                 | je                  0xffffffd0
            //   0fb77714             | movzx               esi, word ptr [edi + 0x14]

        $sequence_9 = { ebba f7d0 23c6 8b75e0 89048e 41 }
            // n = 6, score = 200
            //   ebba                 | jmp                 0xffffffbc
            //   f7d0                 | not                 eax
            //   23c6                 | and                 eax, esi
            //   8b75e0               | mov                 esi, dword ptr [ebp - 0x20]
            //   89048e               | mov                 dword ptr [esi + ecx*4], eax
            //   41                   | inc                 ecx

    condition:
        7 of them and filesize < 247808
}