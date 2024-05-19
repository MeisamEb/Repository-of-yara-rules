rule win_glooxmail_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-12-06"
        version = "1"
        description = "Detects win.glooxmail."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.glooxmail"
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
        $sequence_0 = { 834dfcff 6a00 53 8d4d38 }
            // n = 4, score = 100
            //   834dfcff             | or                  dword ptr [ebp - 4], 0xffffffff
            //   6a00                 | push                0
            //   53                   | push                ebx
            //   8d4d38               | lea                 ecx, [ebp + 0x38]

        $sequence_1 = { e8???????? 899c2460800000 895c240c 895c2410 68ff7f0000 8d442451 53 }
            // n = 7, score = 100
            //   e8????????           |                     
            //   899c2460800000       | mov                 dword ptr [esp + 0x8060], ebx
            //   895c240c             | mov                 dword ptr [esp + 0xc], ebx
            //   895c2410             | mov                 dword ptr [esp + 0x10], ebx
            //   68ff7f0000           | push                0x7fff
            //   8d442451             | lea                 eax, [esp + 0x51]
            //   53                   | push                ebx

        $sequence_2 = { 57 8d8c24f4030000 e8???????? 8d8c2418080000 51 8d8c24f4030000 c684246408000030 }
            // n = 7, score = 100
            //   57                   | push                edi
            //   8d8c24f4030000       | lea                 ecx, [esp + 0x3f4]
            //   e8????????           |                     
            //   8d8c2418080000       | lea                 ecx, [esp + 0x818]
            //   51                   | push                ecx
            //   8d8c24f4030000       | lea                 ecx, [esp + 0x3f4]
            //   c684246408000030     | mov                 byte ptr [esp + 0x864], 0x30

        $sequence_3 = { 0f840c000000 8365f0fe 8d4dc4 e9???????? c3 8b542408 8d420c }
            // n = 7, score = 100
            //   0f840c000000         | je                  0x12
            //   8365f0fe             | and                 dword ptr [ebp - 0x10], 0xfffffffe
            //   8d4dc4               | lea                 ecx, [ebp - 0x3c]
            //   e9????????           |                     
            //   c3                   | ret                 
            //   8b542408             | mov                 edx, dword ptr [esp + 8]
            //   8d420c               | lea                 eax, [edx + 0xc]

        $sequence_4 = { b8???????? e9???????? 8d4d00 e9???????? 8d4dd4 e9???????? 8d4dd4 }
            // n = 7, score = 100
            //   b8????????           |                     
            //   e9????????           |                     
            //   8d4d00               | lea                 ecx, [ebp]
            //   e9????????           |                     
            //   8d4dd4               | lea                 ecx, [ebp - 0x2c]
            //   e9????????           |                     
            //   8d4dd4               | lea                 ecx, [ebp - 0x2c]

        $sequence_5 = { 59 c3 8b85acf7ffff 2500000400 0f8415000000 81a5acf7fffffffffbff }
            // n = 6, score = 100
            //   59                   | pop                 ecx
            //   c3                   | ret                 
            //   8b85acf7ffff         | mov                 eax, dword ptr [ebp - 0x854]
            //   2500000400           | and                 eax, 0x40000
            //   0f8415000000         | je                  0x1b
            //   81a5acf7fffffffffbff     | and    dword ptr [ebp - 0x854], 0xfffbffff

        $sequence_6 = { e8???????? 8bd9 895de8 8d7b04 8d7308 c703???????? c707???????? }
            // n = 7, score = 100
            //   e8????????           |                     
            //   8bd9                 | mov                 ebx, ecx
            //   895de8               | mov                 dword ptr [ebp - 0x18], ebx
            //   8d7b04               | lea                 edi, [ebx + 4]
            //   8d7308               | lea                 esi, [ebx + 8]
            //   c703????????         |                     
            //   c707????????         |                     

        $sequence_7 = { c700???????? c74004???????? c74008???????? c7400cb04a4400 c74010bc4a4400 c74014c84a4400 c74018d44a4400 }
            // n = 7, score = 100
            //   c700????????         |                     
            //   c74004????????       |                     
            //   c74008????????       |                     
            //   c7400cb04a4400       | mov                 dword ptr [eax + 0xc], 0x444ab0
            //   c74010bc4a4400       | mov                 dword ptr [eax + 0x10], 0x444abc
            //   c74014c84a4400       | mov                 dword ptr [eax + 0x14], 0x444ac8
            //   c74018d44a4400       | mov                 dword ptr [eax + 0x18], 0x444ad4

        $sequence_8 = { 8d8d2cffffff e9???????? c3 8b542408 8d82acfbffff 8b8aa8fbffff 33c8 }
            // n = 7, score = 100
            //   8d8d2cffffff         | lea                 ecx, [ebp - 0xd4]
            //   e9????????           |                     
            //   c3                   | ret                 
            //   8b542408             | mov                 edx, dword ptr [esp + 8]
            //   8d82acfbffff         | lea                 eax, [edx - 0x454]
            //   8b8aa8fbffff         | mov                 ecx, dword ptr [edx - 0x458]
            //   33c8                 | xor                 ecx, eax

        $sequence_9 = { ff750c 8b01 ff5044 84c0 7504 b301 eb02 }
            // n = 7, score = 100
            //   ff750c               | push                dword ptr [ebp + 0xc]
            //   8b01                 | mov                 eax, dword ptr [ecx]
            //   ff5044               | call                dword ptr [eax + 0x44]
            //   84c0                 | test                al, al
            //   7504                 | jne                 6
            //   b301                 | mov                 bl, 1
            //   eb02                 | jmp                 4

    condition:
        7 of them and filesize < 761856
}