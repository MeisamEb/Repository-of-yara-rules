rule win_eternalrocks_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2020-10-14"
        version = "1"
        description = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.5.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.eternalrocks"
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
        $sequence_0 = { 50 1b5a12 6f 8092f913259132 }
            // n = 4, score = 100
            //   50                   | push                eax
            //   1b5a12               | sbb                 ebx, dword ptr [edx + 0x12]
            //   6f                   | outsd               dx, dword ptr [esi]
            //   8092f913259132       | adc                 byte ptr [edx - 0x6edaec07], 0x32

        $sequence_1 = { ab 50 b4d2 67d7 }
            // n = 4, score = 100
            //   ab                   | stosd               dword ptr es:[edi], eax
            //   50                   | push                eax
            //   b4d2                 | mov                 ah, 0xd2
            //   67d7                 | xlatb               

        $sequence_2 = { 808de281afe280 8be2 81ace280aae281abe281ab e281 }
            // n = 4, score = 100
            //   808de281afe280       | or                  byte ptr [ebp - 0x1d507e1e], 0x80
            //   8be2                 | mov                 esp, edx
            //   81ace280aae281abe281ab     | sub    dword ptr [edx - 0x7e1d5580], 0xab81e2ab
            //   e281                 | loop                0xffffff83

        $sequence_3 = { e724 60 4c 17 719b 8a38 }
            // n = 6, score = 100
            //   e724                 | out                 0x24, eax
            //   60                   | pushal              
            //   4c                   | dec                 esp
            //   17                   | pop                 ss
            //   719b                 | jno                 0xffffff9d
            //   8a38                 | mov                 bh, byte ptr [eax]

        $sequence_4 = { ac e281 af e280 ae }
            // n = 5, score = 100
            //   ac                   | lodsb               al, byte ptr [esi]
            //   e281                 | loop                0xffffff83
            //   af                   | scasd               eax, dword ptr es:[edi]
            //   e280                 | loop                0xffffff82
            //   ae                   | scasb               al, byte ptr es:[edi]

        $sequence_5 = { ab e280 ad e281 ac e281 ab }
            // n = 7, score = 100
            //   ab                   | stosd               dword ptr es:[edi], eax
            //   e280                 | loop                0xffffff82
            //   ad                   | lodsd               eax, dword ptr [esi]
            //   e281                 | loop                0xffffff83
            //   ac                   | lodsb               al, byte ptr [esi]
            //   e281                 | loop                0xffffff83
            //   ab                   | stosd               dword ptr es:[edi], eax

        $sequence_6 = { e280 8ce2 808ce2808ce280ac e280 }
            // n = 4, score = 100
            //   e280                 | loop                0xffffff82
            //   8ce2                 | mov                 edx, fs
            //   808ce2808ce280ac     | or                  byte ptr [edx - 0x7f1d7380], 0xac
            //   e280                 | loop                0xffffff82

        $sequence_7 = { e225 7b3d 97 c543e1 73c6 a0???????? 4b }
            // n = 7, score = 100
            //   e225                 | loop                0x27
            //   7b3d                 | jnp                 0x3f
            //   97                   | xchg                eax, edi
            //   c543e1               | lds                 eax, ptr [ebx - 0x1f]
            //   73c6                 | jae                 0xffffffc8
            //   a0????????           |                     
            //   4b                   | dec                 ebx

        $sequence_8 = { 8c6ccbf5 09b22c20e8c0 a9ac9795d1 50 9c }
            // n = 5, score = 100
            //   8c6ccbf5             | mov                 word ptr [ebx + ecx*8 - 0xb], gs
            //   09b22c20e8c0         | or                  dword ptr [edx - 0x3f17dfd4], esi
            //   a9ac9795d1           | test                eax, 0xd19597ac
            //   50                   | push                eax
            //   9c                   | pushfd              

        $sequence_9 = { 2e2505e82506 69bf3b90238918c73221 a5 18ca 1f d579 1a19 }
            // n = 7, score = 100
            //   2e2505e82506         | and                 eax, 0x625e805
            //   69bf3b90238918c73221     | imul    edi, dword ptr [edi - 0x76dc6fc5], 0x2132c718
            //   a5                   | movsd               dword ptr es:[edi], dword ptr [esi]
            //   18ca                 | sbb                 dl, cl
            //   1f                   | pop                 ds
            //   d579                 | aad                 0x79
            //   1a19                 | sbb                 bl, byte ptr [ecx]

    condition:
        7 of them and filesize < 10592256
}