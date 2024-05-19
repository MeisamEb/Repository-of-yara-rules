rule win_fobber_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-12-06"
        version = "1"
        description = "Detects win.fobber."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.fobber"
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
        $sequence_0 = { 89e5 51 8b4510 8b5508 8b4d0c 3002 c0c803 }
            // n = 7, score = 1100
            //   89e5                 | mov                 ebp, esp
            //   51                   | push                ecx
            //   8b4510               | mov                 eax, dword ptr [ebp + 0x10]
            //   8b5508               | mov                 edx, dword ptr [ebp + 8]
            //   8b4d0c               | mov                 ecx, dword ptr [ebp + 0xc]
            //   3002                 | xor                 byte ptr [edx], al
            //   c0c803               | ror                 al, 3

        $sequence_1 = { 89e5 6a00 ff750c ff7508 e8???????? }
            // n = 5, score = 1100
            //   89e5                 | mov                 ebp, esp
            //   6a00                 | push                0
            //   ff750c               | push                dword ptr [ebp + 0xc]
            //   ff7508               | push                dword ptr [ebp + 8]
            //   e8????????           |                     

        $sequence_2 = { 89e5 31c0 50 50 ff750c ff7508 50 }
            // n = 7, score = 1100
            //   89e5                 | mov                 ebp, esp
            //   31c0                 | xor                 eax, eax
            //   50                   | push                eax
            //   50                   | push                eax
            //   ff750c               | push                dword ptr [ebp + 0xc]
            //   ff7508               | push                dword ptr [ebp + 8]
            //   50                   | push                eax

        $sequence_3 = { 57 51 8b7d08 30c0 31c9 f7d1 fc }
            // n = 7, score = 1100
            //   57                   | push                edi
            //   51                   | push                ecx
            //   8b7d08               | mov                 edi, dword ptr [ebp + 8]
            //   30c0                 | xor                 al, al
            //   31c9                 | xor                 ecx, ecx
            //   f7d1                 | not                 ecx
            //   fc                   | cld                 

        $sequence_4 = { e303 4f 89f8 5f 59 }
            // n = 5, score = 1100
            //   e303                 | jecxz               5
            //   4f                   | dec                 edi
            //   89f8                 | mov                 eax, edi
            //   5f                   | pop                 edi
            //   59                   | pop                 ecx

        $sequence_5 = { 8b750c 8b4d10 39f7 760e 8d0431 39f8 7607 }
            // n = 7, score = 1100
            //   8b750c               | mov                 esi, dword ptr [ebp + 0xc]
            //   8b4d10               | mov                 ecx, dword ptr [ebp + 0x10]
            //   39f7                 | cmp                 edi, esi
            //   760e                 | jbe                 0x10
            //   8d0431               | lea                 eax, [ecx + esi]
            //   39f8                 | cmp                 eax, edi
            //   7607                 | jbe                 9

        $sequence_6 = { 660fc146f9 6685c0 7515 0fb646f8 50 0fb746f6 }
            // n = 6, score = 1100
            //   660fc146f9           | xadd                word ptr [esi - 7], ax
            //   6685c0               | test                ax, ax
            //   7515                 | jne                 0x17
            //   0fb646f8             | movzx               eax, byte ptr [esi - 8]
            //   50                   | push                eax
            //   0fb746f6             | movzx               eax, word ptr [esi - 0xa]

        $sequence_7 = { 55 89e5 6800800000 6a00 }
            // n = 4, score = 1100
            //   55                   | push                ebp
            //   89e5                 | mov                 ebp, esp
            //   6800800000           | push                0x8000
            //   6a00                 | push                0

        $sequence_8 = { 750f 0fb703 83f861 0f8301fe0000 }
            // n = 4, score = 100
            //   750f                 | jne                 0x11
            //   0fb703               | movzx               eax, word ptr [ebx]
            //   83f861               | cmp                 eax, 0x61
            //   0f8301fe0000         | jae                 0xfe07

        $sequence_9 = { 57 33714b 8aa07b74cafc 16 aa 5a }
            // n = 6, score = 100
            //   57                   | push                edi
            //   33714b               | xor                 esi, dword ptr [ecx + 0x4b]
            //   8aa07b74cafc         | mov                 ah, byte ptr [eax - 0x3358b85]
            //   16                   | push                ss
            //   aa                   | stosb               byte ptr es:[edi], al
            //   5a                   | pop                 edx

        $sequence_10 = { 7527 e8???????? 83c020 3bf0 0f8434510100 e8???????? }
            // n = 6, score = 100
            //   7527                 | jne                 0x29
            //   e8????????           |                     
            //   83c020               | add                 eax, 0x20
            //   3bf0                 | cmp                 esi, eax
            //   0f8434510100         | je                  0x1513a
            //   e8????????           |                     

        $sequence_11 = { 000f 843d???????? 328801008bff 55 8bec ff7514 6a00 }
            // n = 7, score = 100
            //   000f                 | add                 byte ptr [edi], cl
            //   843d????????         |                     
            //   328801008bff         | xor                 cl, byte ptr [eax - 0x74ffff]
            //   55                   | push                ebp
            //   8bec                 | mov                 ebp, esp
            //   ff7514               | push                dword ptr [ebp + 0x14]
            //   6a00                 | push                0

        $sequence_12 = { c00f84 40 17 0100 8b4d08 83600400 }
            // n = 6, score = 100
            //   c00f84               | ror                 byte ptr [edi], 0x84
            //   40                   | inc                 eax
            //   17                   | pop                 ss
            //   0100                 | add                 dword ptr [eax], eax
            //   8b4d08               | mov                 ecx, dword ptr [ebp + 8]
            //   83600400             | and                 dword ptr [eax + 4], 0

        $sequence_13 = { 7706 6205???????? 294a75 f2149c 7674 }
            // n = 5, score = 100
            //   7706                 | ja                  8
            //   6205????????         |                     
            //   294a75               | sub                 dword ptr [edx + 0x75], ecx
            //   f2149c               | adc                 al, 0x9c
            //   7674                 | jbe                 0x76

        $sequence_14 = { e8???????? 85f6 0f84fd610100 8b45d4 }
            // n = 4, score = 100
            //   e8????????           |                     
            //   85f6                 | test                esi, esi
            //   0f84fd610100         | je                  0x16203
            //   8b45d4               | mov                 eax, dword ptr [ebp - 0x2c]

        $sequence_15 = { 7508 e8???????? 59 59 5d c3 53 }
            // n = 7, score = 100
            //   7508                 | jne                 0xa
            //   e8????????           |                     
            //   59                   | pop                 ecx
            //   59                   | pop                 ecx
            //   5d                   | pop                 ebp
            //   c3                   | ret                 
            //   53                   | push                ebx

    condition:
        7 of them and filesize < 188416
}