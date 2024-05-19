rule win_webbytea_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-12-06"
        version = "1"
        description = "Detects win.webbytea."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.webbytea"
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
        $sequence_0 = { e9???????? c744242000000000 4533c9 4533c0 33d2 33c9 }
            // n = 6, score = 300
            //   e9????????           |                     
            //   c744242000000000     | and                 esi, 0x3f
            //   4533c9               | dec                 ebp
            //   4533c0               | mov                 ebp, esp
            //   33d2                 | or                  eax, 0xffffffff
            //   33c9                 | or                  esi, 0xffffffff

        $sequence_1 = { c68424f100000072 c68424f200000065 c68424f300000061 c68424f400000074 }
            // n = 4, score = 300
            //   c68424f100000072     | mov                 word ptr [esp + 0x156], ax
            //   c68424f200000065     | mov                 eax, 0x72
            //   c68424f300000061     | mov                 word ptr [esp + 0x158], ax
            //   c68424f400000074     | mov                 eax, 0x74

        $sequence_2 = { 8b00 ffc0 488b8c2488020000 8901 488d542430 488b4c2420 }
            // n = 6, score = 300
            //   8b00                 | mov                 eax, dword ptr [esp + 0x90]
            //   ffc0                 | dec                 eax
            //   488b8c2488020000     | mov                 edx, dword ptr [esp + 0x4620]
            //   8901                 | dec                 eax
            //   488d542430           | add                 ecx, dword ptr [edx]
            //   488b4c2420           | dec                 eax

        $sequence_3 = { 488b8c2488020000 8901 488d542430 488b4c2420 ff15???????? 85c0 }
            // n = 6, score = 300
            //   488b8c2488020000     | jge                 0x102d
            //   8901                 | dec                 eax
            //   488d542430           | arpl                word ptr [esp + 0x20], ax
            //   488b4c2420           | inc                 eax
            //   ff15????????         |                     
            //   85c0                 | mov                 dword ptr [esp + 0x20], eax

        $sequence_4 = { 488b842488020000 8b00 ffc0 488b8c2488020000 }
            // n = 4, score = 300
            //   488b842488020000     | mov                 eax, dword ptr [esp + 0x30]
            //   8b00                 | dec                 eax
            //   ffc0                 | mov                 eax, dword ptr [esp + 0x30]
            //   488b8c2488020000     | dec                 eax

        $sequence_5 = { eb08 8b0424 ffc0 890424 8b442438 390424 }
            // n = 6, score = 300
            //   eb08                 | sub                 eax, eax
            //   8b0424               | inc                 ecx
            //   ffc0                 | mov                 eax, dword ptr [eax - 4]
            //   890424               | shr                 eax, cl
            //   8b442438             | and                 ecx, 0xf
            //   390424               | dec                 edx

        $sequence_6 = { 488b842488020000 8b00 ffc0 488b8c2488020000 8901 488d542430 488b4c2420 }
            // n = 7, score = 300
            //   488b842488020000     | dec                 eax
            //   8b00                 | mov                 dword ptr [esp + 0x30], eax
            //   ffc0                 | dec                 eax
            //   488b8c2488020000     | mov                 ecx, dword ptr [esp + 0x60]
            //   8901                 | jmp                 0x4d9
            //   488d542430           | dec                 eax
            //   488b4c2420           | mov                 eax, dword ptr [esp + 0x20]

        $sequence_7 = { c7042400000000 eb08 8b0424 ffc0 890424 8b442438 }
            // n = 6, score = 300
            //   c7042400000000       | sar                 eax, 6
            //   eb08                 | dec                 eax
            //   8b0424               | lea                 edx, [0x16922]
            //   ffc0                 | and                 ecx, 0x3f
            //   890424               | je                  0x69b
            //   8b442438             | dec                 eax

        $sequence_8 = { 488b8c2488020000 8901 488d542430 488b4c2420 }
            // n = 4, score = 300
            //   488b8c2488020000     | mov                 ecx, dword ptr [esp + 0x28]
            //   8901                 | mov                 eax, 1
            //   488d542430           | dec                 eax
            //   488b4c2420           | mov                 ecx, dword ptr [esp + 0x28]

        $sequence_9 = { c68424f100000072 c68424f200000065 c68424f300000061 c68424f400000074 c68424f500000065 }
            // n = 5, score = 300
            //   c68424f100000072     | jne                 0x5c8
            //   c68424f200000065     | dec                 eax
            //   c68424f300000061     | lea                 eax, [esp + 0x9e0]
            //   c68424f400000074     | cmp                 eax, 1
            //   c68424f500000065     | jne                 0x644

    condition:
        7 of them and filesize < 552960
}