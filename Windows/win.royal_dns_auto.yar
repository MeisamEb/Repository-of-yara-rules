rule win_royal_dns_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-12-06"
        version = "1"
        description = "Detects win.royal_dns."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.royal_dns"
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
        $sequence_0 = { 50 e8???????? 8b4dfc 8b85b4fcffff 83c404 }
            // n = 5, score = 100
            //   50                   | push                eax
            //   e8????????           |                     
            //   8b4dfc               | mov                 ecx, dword ptr [ebp - 4]
            //   8b85b4fcffff         | mov                 eax, dword ptr [ebp - 0x34c]
            //   83c404               | add                 esp, 4

        $sequence_1 = { e8???????? 83c40c 8bc6 eb15 8d8da1f1ffff }
            // n = 5, score = 100
            //   e8????????           |                     
            //   83c40c               | add                 esp, 0xc
            //   8bc6                 | mov                 eax, esi
            //   eb15                 | jmp                 0x17
            //   8d8da1f1ffff         | lea                 ecx, [ebp - 0xe5f]

        $sequence_2 = { ff15???????? 3d02010000 8b85e0fdffff 7533 6a00 50 }
            // n = 6, score = 100
            //   ff15????????         |                     
            //   3d02010000           | cmp                 eax, 0x102
            //   8b85e0fdffff         | mov                 eax, dword ptr [ebp - 0x220]
            //   7533                 | jne                 0x35
            //   6a00                 | push                0
            //   50                   | push                eax

        $sequence_3 = { 4a 759a 8b55fc 85ff 7468 0fb606 c1e802 }
            // n = 7, score = 100
            //   4a                   | dec                 edx
            //   759a                 | jne                 0xffffff9c
            //   8b55fc               | mov                 edx, dword ptr [ebp - 4]
            //   85ff                 | test                edi, edi
            //   7468                 | je                  0x6a
            //   0fb606               | movzx               eax, byte ptr [esi]
            //   c1e802               | shr                 eax, 2

        $sequence_4 = { 0fb61406 c1ea03 0fb69248132500 8811 0fb61c06 0fb6540601 c1ea06 }
            // n = 7, score = 100
            //   0fb61406             | movzx               edx, byte ptr [esi + eax]
            //   c1ea03               | shr                 edx, 3
            //   0fb69248132500       | movzx               edx, byte ptr [edx + 0x251348]
            //   8811                 | mov                 byte ptr [ecx], dl
            //   0fb61c06             | movzx               ebx, byte ptr [esi + eax]
            //   0fb6540601           | movzx               edx, byte ptr [esi + eax + 1]
            //   c1ea06               | shr                 edx, 6

        $sequence_5 = { 80e301 0ac3 8845ed 8a45f8 8ad8 8345e805 }
            // n = 6, score = 100
            //   80e301               | and                 bl, 1
            //   0ac3                 | or                  al, bl
            //   8845ed               | mov                 byte ptr [ebp - 0x13], al
            //   8a45f8               | mov                 al, byte ptr [ebp - 8]
            //   8ad8                 | mov                 bl, al
            //   8345e805             | add                 dword ptr [ebp - 0x18], 5

        $sequence_6 = { 8d8dfcfeffff 83c40c 33c0 2bd1 }
            // n = 4, score = 100
            //   8d8dfcfeffff         | lea                 ecx, [ebp - 0x104]
            //   83c40c               | add                 esp, 0xc
            //   33c0                 | xor                 eax, eax
            //   2bd1                 | sub                 edx, ecx

        $sequence_7 = { 7504 33c0 eb0a 0fb6c8 }
            // n = 4, score = 100
            //   7504                 | jne                 6
            //   33c0                 | xor                 eax, eax
            //   eb0a                 | jmp                 0xc
            //   0fb6c8               | movzx               ecx, al

        $sequence_8 = { 0fb61c30 0fb6543001 03db 03db c1ea06 0bd3 }
            // n = 6, score = 100
            //   0fb61c30             | movzx               ebx, byte ptr [eax + esi]
            //   0fb6543001           | movzx               edx, byte ptr [eax + esi + 1]
            //   03db                 | add                 ebx, ebx
            //   03db                 | add                 ebx, ebx
            //   c1ea06               | shr                 edx, 6
            //   0bd3                 | or                  edx, ebx

        $sequence_9 = { 8a17 8816 47 46 48 }
            // n = 5, score = 100
            //   8a17                 | mov                 dl, byte ptr [edi]
            //   8816                 | mov                 byte ptr [esi], dl
            //   47                   | inc                 edi
            //   46                   | inc                 esi
            //   48                   | dec                 eax

    condition:
        7 of them and filesize < 204800
}