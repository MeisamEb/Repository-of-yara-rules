rule win_flawedgrace_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-12-06"
        version = "1"
        description = "Detects win.flawedgrace."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.flawedgrace"
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
        $sequence_0 = { 894110 8b450c 89411c 8a03 884124 8b45f4 c7411800000000 }
            // n = 7, score = 200
            //   894110               | mov                 dword ptr [ecx + 0x10], eax
            //   8b450c               | mov                 eax, dword ptr [ebp + 0xc]
            //   89411c               | mov                 dword ptr [ecx + 0x1c], eax
            //   8a03                 | mov                 al, byte ptr [ebx]
            //   884124               | mov                 byte ptr [ecx + 0x24], al
            //   8b45f4               | mov                 eax, dword ptr [ebp - 0xc]
            //   c7411800000000       | mov                 dword ptr [ecx + 0x18], 0

        $sequence_1 = { c1e810 0fb6c0 330c85e0bb4500 0fb6c2 c1ea08 330c85e0b34500 334fb8 }
            // n = 7, score = 200
            //   c1e810               | shr                 eax, 0x10
            //   0fb6c0               | movzx               eax, al
            //   330c85e0bb4500       | xor                 ecx, dword ptr [eax*4 + 0x45bbe0]
            //   0fb6c2               | movzx               eax, dl
            //   c1ea08               | shr                 edx, 8
            //   330c85e0b34500       | xor                 ecx, dword ptr [eax*4 + 0x45b3e0]
            //   334fb8               | xor                 ecx, dword ptr [edi - 0x48]

        $sequence_2 = { ff15???????? 8bf8 85ff 0f8493000000 8bce e8???????? 8d5704 }
            // n = 7, score = 200
            //   ff15????????         |                     
            //   8bf8                 | mov                 edi, eax
            //   85ff                 | test                edi, edi
            //   0f8493000000         | je                  0x99
            //   8bce                 | mov                 ecx, esi
            //   e8????????           |                     
            //   8d5704               | lea                 edx, [edi + 4]

        $sequence_3 = { 50 8b85c0feffff ff7004 50 e8???????? 8b55e8 }
            // n = 6, score = 200
            //   50                   | push                eax
            //   8b85c0feffff         | mov                 eax, dword ptr [ebp - 0x140]
            //   ff7004               | push                dword ptr [eax + 4]
            //   50                   | push                eax
            //   e8????????           |                     
            //   8b55e8               | mov                 edx, dword ptr [ebp - 0x18]

        $sequence_4 = { c68564dcffffda c68565dcffff02 c68566dcffff48 c68567dcffff65 c68568dcffff61 c68569dcffff70 c6856adcffff52 }
            // n = 7, score = 200
            //   c68564dcffffda       | mov                 byte ptr [ebp - 0x239c], 0xda
            //   c68565dcffff02       | mov                 byte ptr [ebp - 0x239b], 2
            //   c68566dcffff48       | mov                 byte ptr [ebp - 0x239a], 0x48
            //   c68567dcffff65       | mov                 byte ptr [ebp - 0x2399], 0x65
            //   c68568dcffff61       | mov                 byte ptr [ebp - 0x2398], 0x61
            //   c68569dcffff70       | mov                 byte ptr [ebp - 0x2397], 0x70
            //   c6856adcffff52       | mov                 byte ptr [ebp - 0x2396], 0x52

        $sequence_5 = { c6857fcfffff48 c68580cfffff83 c68581cfffffec c68582cfffff20 c68583cfffff4c c68584cfffff8b c68585cfffffc8 }
            // n = 7, score = 200
            //   c6857fcfffff48       | mov                 byte ptr [ebp - 0x3081], 0x48
            //   c68580cfffff83       | mov                 byte ptr [ebp - 0x3080], 0x83
            //   c68581cfffffec       | mov                 byte ptr [ebp - 0x307f], 0xec
            //   c68582cfffff20       | mov                 byte ptr [ebp - 0x307e], 0x20
            //   c68583cfffff4c       | mov                 byte ptr [ebp - 0x307d], 0x4c
            //   c68584cfffff8b       | mov                 byte ptr [ebp - 0x307c], 0x8b
            //   c68585cfffffc8       | mov                 byte ptr [ebp - 0x307b], 0xc8

        $sequence_6 = { 3355f0 33da 8955e8 330c85e0d34500 8bc2 898eb0000000 8bca }
            // n = 7, score = 200
            //   3355f0               | xor                 edx, dword ptr [ebp - 0x10]
            //   33da                 | xor                 ebx, edx
            //   8955e8               | mov                 dword ptr [ebp - 0x18], edx
            //   330c85e0d34500       | xor                 ecx, dword ptr [eax*4 + 0x45d3e0]
            //   8bc2                 | mov                 eax, edx
            //   898eb0000000         | mov                 dword ptr [esi + 0xb0], ecx
            //   8bca                 | mov                 ecx, edx

        $sequence_7 = { c6852ee8ffff65 c6852fe8ffff6c c68530e8ffff6f c68531e8ffff63 c68532e8ffff00 c68533e8ffff00 c68534e8ffff50 }
            // n = 7, score = 200
            //   c6852ee8ffff65       | mov                 byte ptr [ebp - 0x17d2], 0x65
            //   c6852fe8ffff6c       | mov                 byte ptr [ebp - 0x17d1], 0x6c
            //   c68530e8ffff6f       | mov                 byte ptr [ebp - 0x17d0], 0x6f
            //   c68531e8ffff63       | mov                 byte ptr [ebp - 0x17cf], 0x63
            //   c68532e8ffff00       | mov                 byte ptr [ebp - 0x17ce], 0
            //   c68533e8ffff00       | mov                 byte ptr [ebp - 0x17cd], 0
            //   c68534e8ffff50       | mov                 byte ptr [ebp - 0x17cc], 0x50

        $sequence_8 = { 8975fc e8???????? 50 83c010 50 51 }
            // n = 6, score = 200
            //   8975fc               | mov                 dword ptr [ebp - 4], esi
            //   e8????????           |                     
            //   50                   | push                eax
            //   83c010               | add                 eax, 0x10
            //   50                   | push                eax
            //   51                   | push                ecx

        $sequence_9 = { c68516e5ffff00 c68517e5ffff00 c68518e5ffff00 c68519e5ffff00 c6851ae5ffff00 c6851be5ffff00 c6851ce5ffff00 }
            // n = 7, score = 200
            //   c68516e5ffff00       | mov                 byte ptr [ebp - 0x1aea], 0
            //   c68517e5ffff00       | mov                 byte ptr [ebp - 0x1ae9], 0
            //   c68518e5ffff00       | mov                 byte ptr [ebp - 0x1ae8], 0
            //   c68519e5ffff00       | mov                 byte ptr [ebp - 0x1ae7], 0
            //   c6851ae5ffff00       | mov                 byte ptr [ebp - 0x1ae6], 0
            //   c6851be5ffff00       | mov                 byte ptr [ebp - 0x1ae5], 0
            //   c6851ce5ffff00       | mov                 byte ptr [ebp - 0x1ae4], 0

    condition:
        7 of them and filesize < 966656
}