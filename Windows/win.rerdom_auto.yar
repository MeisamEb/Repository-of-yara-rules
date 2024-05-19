rule win_rerdom_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-12-06"
        version = "1"
        description = "Detects win.rerdom."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.rerdom"
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
        $sequence_0 = { 85f6 7425 8b550c b8???????? e8???????? 3bc7 }
            // n = 6, score = 200
            //   85f6                 | test                esi, esi
            //   7425                 | je                  0x27
            //   8b550c               | mov                 edx, dword ptr [ebp + 0xc]
            //   b8????????           |                     
            //   e8????????           |                     
            //   3bc7                 | cmp                 eax, edi

        $sequence_1 = { 89470c 8b4508 894708 eb1c 33db 53 }
            // n = 6, score = 200
            //   89470c               | mov                 dword ptr [edi + 0xc], eax
            //   8b4508               | mov                 eax, dword ptr [ebp + 8]
            //   894708               | mov                 dword ptr [edi + 8], eax
            //   eb1c                 | jmp                 0x1e
            //   33db                 | xor                 ebx, ebx
            //   53                   | push                ebx

        $sequence_2 = { 8b44240c 21b0cc000000 21b0d0000000 8bd8 8d842412060000 50 83ceff }
            // n = 7, score = 200
            //   8b44240c             | mov                 eax, dword ptr [esp + 0xc]
            //   21b0cc000000         | and                 dword ptr [eax + 0xcc], esi
            //   21b0d0000000         | and                 dword ptr [eax + 0xd0], esi
            //   8bd8                 | mov                 ebx, eax
            //   8d842412060000       | lea                 eax, [esp + 0x612]
            //   50                   | push                eax
            //   83ceff               | or                  esi, 0xffffffff

        $sequence_3 = { e9???????? 83f801 7533 8b4e04 8b97d0000000 8b4608 }
            // n = 6, score = 200
            //   e9????????           |                     
            //   83f801               | cmp                 eax, 1
            //   7533                 | jne                 0x35
            //   8b4e04               | mov                 ecx, dword ptr [esi + 4]
            //   8b97d0000000         | mov                 edx, dword ptr [edi + 0xd0]
            //   8b4608               | mov                 eax, dword ptr [esi + 8]

        $sequence_4 = { e8???????? 53 a3???????? 57 8bc6 e8???????? 5f }
            // n = 7, score = 200
            //   e8????????           |                     
            //   53                   | push                ebx
            //   a3????????           |                     
            //   57                   | push                edi
            //   8bc6                 | mov                 eax, esi
            //   e8????????           |                     
            //   5f                   | pop                 edi

        $sequence_5 = { 8b742430 8d4618 50 8d4c2428 e8???????? 84c0 741e }
            // n = 7, score = 200
            //   8b742430             | mov                 esi, dword ptr [esp + 0x30]
            //   8d4618               | lea                 eax, [esi + 0x18]
            //   50                   | push                eax
            //   8d4c2428             | lea                 ecx, [esp + 0x28]
            //   e8????????           |                     
            //   84c0                 | test                al, al
            //   741e                 | je                  0x20

        $sequence_6 = { 7527 8b4510 85c0 7405 }
            // n = 4, score = 200
            //   7527                 | jne                 0x29
            //   8b4510               | mov                 eax, dword ptr [ebp + 0x10]
            //   85c0                 | test                eax, eax
            //   7405                 | je                  7

        $sequence_7 = { 3bde 0f84c5000000 8b430c 3bc6 0f84ba000000 897510 8b00 }
            // n = 7, score = 200
            //   3bde                 | cmp                 ebx, esi
            //   0f84c5000000         | je                  0xcb
            //   8b430c               | mov                 eax, dword ptr [ebx + 0xc]
            //   3bc6                 | cmp                 eax, esi
            //   0f84ba000000         | je                  0xc0
            //   897510               | mov                 dword ptr [ebp + 0x10], esi
            //   8b00                 | mov                 eax, dword ptr [eax]

        $sequence_8 = { 8b450c e8???????? 8945e4 85c0 7427 8365fc00 ff750c }
            // n = 7, score = 200
            //   8b450c               | mov                 eax, dword ptr [ebp + 0xc]
            //   e8????????           |                     
            //   8945e4               | mov                 dword ptr [ebp - 0x1c], eax
            //   85c0                 | test                eax, eax
            //   7427                 | je                  0x29
            //   8365fc00             | and                 dword ptr [ebp - 4], 0
            //   ff750c               | push                dword ptr [ebp + 0xc]

        $sequence_9 = { 41 66890456 0fb7044b 6685c0 75ec 8bc3 }
            // n = 6, score = 200
            //   41                   | inc                 ecx
            //   66890456             | mov                 word ptr [esi + edx*2], ax
            //   0fb7044b             | movzx               eax, word ptr [ebx + ecx*2]
            //   6685c0               | test                ax, ax
            //   75ec                 | jne                 0xffffffee
            //   8bc3                 | mov                 eax, ebx

    condition:
        7 of them and filesize < 352256
}