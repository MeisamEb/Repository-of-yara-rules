rule win_rdasrv_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2020-10-14"
        version = "1"
        description = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.5.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.rdasrv"
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
        $sequence_0 = { 8b45f4 8d0498 b901000000 8b15???????? e8???????? 83c404 8b45f0 }
            // n = 7, score = 100
            //   8b45f4               | mov                 eax, dword ptr [ebp - 0xc]
            //   8d0498               | lea                 eax, [eax + ebx*4]
            //   b901000000           | mov                 ecx, 1
            //   8b15????????         |                     
            //   e8????????           |                     
            //   83c404               | add                 esp, 4
            //   8b45f0               | mov                 eax, dword ptr [ebp - 0x10]

        $sequence_1 = { 33c0 8945f8 e9???????? 8b45f4 8b0498 e8???????? }
            // n = 6, score = 100
            //   33c0                 | xor                 eax, eax
            //   8945f8               | mov                 dword ptr [ebp - 8], eax
            //   e9????????           |                     
            //   8b45f4               | mov                 eax, dword ptr [ebp - 0xc]
            //   8b0498               | mov                 eax, dword ptr [eax + ebx*4]
            //   e8????????           |                     

        $sequence_2 = { ba1c000000 e8???????? c705????????10010000 c705????????02000000 c705????????03000000 b802000000 }
            // n = 6, score = 100
            //   ba1c000000           | mov                 edx, 0x1c
            //   e8????????           |                     
            //   c705????????10010000     |     
            //   c705????????02000000     |     
            //   c705????????03000000     |     
            //   b802000000           | mov                 eax, 2

        $sequence_3 = { 8bd0 8b45f0 59 e8???????? 8b95e0feffff 8d85e4feffff }
            // n = 6, score = 100
            //   8bd0                 | mov                 edx, eax
            //   8b45f0               | mov                 eax, dword ptr [ebp - 0x10]
            //   59                   | pop                 ecx
            //   e8????????           |                     
            //   8b95e0feffff         | mov                 edx, dword ptr [ebp - 0x120]
            //   8d85e4feffff         | lea                 eax, [ebp - 0x11c]

        $sequence_4 = { 8a85fffeffff 3c0f 7307 33db e9???????? 8bd8 }
            // n = 6, score = 100
            //   8a85fffeffff         | mov                 al, byte ptr [ebp - 0x101]
            //   3c0f                 | cmp                 al, 0xf
            //   7307                 | jae                 9
            //   33db                 | xor                 ebx, ebx
            //   e9????????           |                     
            //   8bd8                 | mov                 ebx, eax

        $sequence_5 = { 8945fc 837dfc00 7502 f7db 8bc3 b90a000000 99 }
            // n = 7, score = 100
            //   8945fc               | mov                 dword ptr [ebp - 4], eax
            //   837dfc00             | cmp                 dword ptr [ebp - 4], 0
            //   7502                 | jne                 4
            //   f7db                 | neg                 ebx
            //   8bc3                 | mov                 eax, ebx
            //   b90a000000           | mov                 ecx, 0xa
            //   99                   | cdq                 

        $sequence_6 = { 8b55fc 8b4330 e8???????? 8bd8 eb0c 8bd6 8b4330 }
            // n = 7, score = 100
            //   8b55fc               | mov                 edx, dword ptr [ebp - 4]
            //   8b4330               | mov                 eax, dword ptr [ebx + 0x30]
            //   e8????????           |                     
            //   8bd8                 | mov                 ebx, eax
            //   eb0c                 | jmp                 0xe
            //   8bd6                 | mov                 edx, esi
            //   8b4330               | mov                 eax, dword ptr [ebx + 0x30]

        $sequence_7 = { e8???????? 8d95b8fbffff 8d85b0fbffff e8???????? 8d85b4fbffff 8a55ec 885001 }
            // n = 7, score = 100
            //   e8????????           |                     
            //   8d95b8fbffff         | lea                 edx, [ebp - 0x448]
            //   8d85b0fbffff         | lea                 eax, [ebp - 0x450]
            //   e8????????           |                     
            //   8d85b4fbffff         | lea                 eax, [ebp - 0x44c]
            //   8a55ec               | mov                 dl, byte ptr [ebp - 0x14]
            //   885001               | mov                 byte ptr [eax + 1], dl

        $sequence_8 = { 8b00 e8???????? 50 8d45f0 b901000000 8b15???????? e8???????? }
            // n = 7, score = 100
            //   8b00                 | mov                 eax, dword ptr [eax]
            //   e8????????           |                     
            //   50                   | push                eax
            //   8d45f0               | lea                 eax, [ebp - 0x10]
            //   b901000000           | mov                 ecx, 1
            //   8b15????????         |                     
            //   e8????????           |                     

        $sequence_9 = { 807c240330 7504 33c0 eb16 8a442402 3a442401 750a }
            // n = 7, score = 100
            //   807c240330           | cmp                 byte ptr [esp + 3], 0x30
            //   7504                 | jne                 6
            //   33c0                 | xor                 eax, eax
            //   eb16                 | jmp                 0x18
            //   8a442402             | mov                 al, byte ptr [esp + 2]
            //   3a442401             | cmp                 al, byte ptr [esp + 1]
            //   750a                 | jne                 0xc

    condition:
        7 of them and filesize < 311296
}