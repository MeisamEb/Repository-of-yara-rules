rule win_victorygate_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-12-06"
        version = "1"
        description = "Detects win.victorygate."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.victorygate"
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
        $sequence_0 = { 7214 8b49fc 83c223 2bc1 83c0fc 83f81f 0f879a120000 }
            // n = 7, score = 100
            //   7214                 | jb                  0x16
            //   8b49fc               | mov                 ecx, dword ptr [ecx - 4]
            //   83c223               | add                 edx, 0x23
            //   2bc1                 | sub                 eax, ecx
            //   83c0fc               | add                 eax, -4
            //   83f81f               | cmp                 eax, 0x1f
            //   0f879a120000         | ja                  0x12a0

        $sequence_1 = { 8bce c645fc08 e8???????? c645fc01 8b55e8 83fa10 7228 }
            // n = 7, score = 100
            //   8bce                 | mov                 ecx, esi
            //   c645fc08             | mov                 byte ptr [ebp - 4], 8
            //   e8????????           |                     
            //   c645fc01             | mov                 byte ptr [ebp - 4], 1
            //   8b55e8               | mov                 edx, dword ptr [ebp - 0x18]
            //   83fa10               | cmp                 edx, 0x10
            //   7228                 | jb                  0x2a

        $sequence_2 = { 8bf8 893b 897b04 03cf 33c0 894b08 eb03 }
            // n = 7, score = 100
            //   8bf8                 | mov                 edi, eax
            //   893b                 | mov                 dword ptr [ebx], edi
            //   897b04               | mov                 dword ptr [ebx + 4], edi
            //   03cf                 | add                 ecx, edi
            //   33c0                 | xor                 eax, eax
            //   894b08               | mov                 dword ptr [ebx + 8], ecx
            //   eb03                 | jmp                 5

        $sequence_3 = { ff15???????? 85c0 0f8593010000 ff75f8 8d8678020000 6a57 50 }
            // n = 7, score = 100
            //   ff15????????         |                     
            //   85c0                 | test                eax, eax
            //   0f8593010000         | jne                 0x199
            //   ff75f8               | push                dword ptr [ebp - 8]
            //   8d8678020000         | lea                 eax, [esi + 0x278]
            //   6a57                 | push                0x57
            //   50                   | push                eax

        $sequence_4 = { e9???????? 3b0d???????? 7501 c3 e9???????? 55 8bec }
            // n = 7, score = 100
            //   e9????????           |                     
            //   3b0d????????         |                     
            //   7501                 | jne                 3
            //   c3                   | ret                 
            //   e9????????           |                     
            //   55                   | push                ebp
            //   8bec                 | mov                 ebp, esp

        $sequence_5 = { 0f8537050000 ff75f8 8d8630020000 6a32 50 }
            // n = 5, score = 100
            //   0f8537050000         | jne                 0x53d
            //   ff75f8               | push                dword ptr [ebp - 8]
            //   8d8630020000         | lea                 eax, [esi + 0x230]
            //   6a32                 | push                0x32
            //   50                   | push                eax

        $sequence_6 = { 85c0 7537 b901000000 f00fb10f 85c0 7533 817e340c2b0000 }
            // n = 7, score = 100
            //   85c0                 | test                eax, eax
            //   7537                 | jne                 0x39
            //   b901000000           | mov                 ecx, 1
            //   f00fb10f             | lock cmpxchg        dword ptr [edi], ecx
            //   85c0                 | test                eax, eax
            //   7533                 | jne                 0x35
            //   817e340c2b0000       | cmp                 dword ptr [esi + 0x34], 0x2b0c

        $sequence_7 = { 8b4128 8b7124 8945b8 3bf0 7436 660f1f440000 8b06 }
            // n = 7, score = 100
            //   8b4128               | mov                 eax, dword ptr [ecx + 0x28]
            //   8b7124               | mov                 esi, dword ptr [ecx + 0x24]
            //   8945b8               | mov                 dword ptr [ebp - 0x48], eax
            //   3bf0                 | cmp                 esi, eax
            //   7436                 | je                  0x38
            //   660f1f440000         | nop                 word ptr [eax + eax]
            //   8b06                 | mov                 eax, dword ptr [esi]

        $sequence_8 = { 57 8b00 8945c4 663908 0f8548060000 8b703c 03f0 }
            // n = 7, score = 100
            //   57                   | push                edi
            //   8b00                 | mov                 eax, dword ptr [eax]
            //   8945c4               | mov                 dword ptr [ebp - 0x3c], eax
            //   663908               | cmp                 word ptr [eax], cx
            //   0f8548060000         | jne                 0x64e
            //   8b703c               | mov                 esi, dword ptr [eax + 0x3c]
            //   03f0                 | add                 esi, eax

        $sequence_9 = { c745fc19000000 83ec18 8b4de0 8bc4 896584 c70000000000 c7401000000000 }
            // n = 7, score = 100
            //   c745fc19000000       | mov                 dword ptr [ebp - 4], 0x19
            //   83ec18               | sub                 esp, 0x18
            //   8b4de0               | mov                 ecx, dword ptr [ebp - 0x20]
            //   8bc4                 | mov                 eax, esp
            //   896584               | mov                 dword ptr [ebp - 0x7c], esp
            //   c70000000000         | mov                 dword ptr [eax], 0
            //   c7401000000000       | mov                 dword ptr [eax + 0x10], 0

    condition:
        7 of them and filesize < 1209344
}