rule win_backbend_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-12-06"
        version = "1"
        description = "Detects win.backbend."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.backbend"
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
        $sequence_0 = { ff15???????? 80a40500ffffff00 8d8500ffffff 56 50 ff15???????? }
            // n = 6, score = 100
            //   ff15????????         |                     
            //   80a40500ffffff00     | and                 byte ptr [ebp + eax - 0x100], 0
            //   8d8500ffffff         | lea                 eax, [ebp - 0x100]
            //   56                   | push                esi
            //   50                   | push                eax
            //   ff15????????         |                     

        $sequence_1 = { 58 5f 5e c3 ff25???????? ff25???????? }
            // n = 6, score = 100
            //   58                   | pop                 eax
            //   5f                   | pop                 edi
            //   5e                   | pop                 esi
            //   c3                   | ret                 
            //   ff25????????         |                     
            //   ff25????????         |                     

        $sequence_2 = { ffd6 ff7510 ffd3 8d8500feffff }
            // n = 4, score = 100
            //   ffd6                 | call                esi
            //   ff7510               | push                dword ptr [ebp + 0x10]
            //   ffd3                 | call                ebx
            //   8d8500feffff         | lea                 eax, [ebp - 0x200]

        $sequence_3 = { ff15???????? 85c0 7416 8d8500fbffff }
            // n = 4, score = 100
            //   ff15????????         |                     
            //   85c0                 | test                eax, eax
            //   7416                 | je                  0x18
            //   8d8500fbffff         | lea                 eax, [ebp - 0x500]

        $sequence_4 = { 56 e8???????? 8d8500fdffff 56 50 e8???????? 68???????? }
            // n = 7, score = 100
            //   56                   | push                esi
            //   e8????????           |                     
            //   8d8500fdffff         | lea                 eax, [ebp - 0x300]
            //   56                   | push                esi
            //   50                   | push                eax
            //   e8????????           |                     
            //   68????????           |                     

        $sequence_5 = { 90 90 90 bf???????? 57 e8???????? c70424???????? }
            // n = 7, score = 100
            //   90                   | nop                 
            //   90                   | nop                 
            //   90                   | nop                 
            //   bf????????           |                     
            //   57                   | push                edi
            //   e8????????           |                     
            //   c70424????????       |                     

        $sequence_6 = { 8d8500f9ffff 50 e8???????? 8d8500f9ffff 50 e8???????? 83c424 }
            // n = 7, score = 100
            //   8d8500f9ffff         | lea                 eax, [ebp - 0x700]
            //   50                   | push                eax
            //   e8????????           |                     
            //   8d8500f9ffff         | lea                 eax, [ebp - 0x700]
            //   50                   | push                eax
            //   e8????????           |                     
            //   83c424               | add                 esp, 0x24

        $sequence_7 = { ffd3 8d8500feffff 6800010000 50 ff15???????? 8d8500feffff 68???????? }
            // n = 7, score = 100
            //   ffd3                 | call                ebx
            //   8d8500feffff         | lea                 eax, [ebp - 0x200]
            //   6800010000           | push                0x100
            //   50                   | push                eax
            //   ff15????????         |                     
            //   8d8500feffff         | lea                 eax, [ebp - 0x200]
            //   68????????           |                     

        $sequence_8 = { 56 ffd3 6a00 8d8500ffffff 56 50 ff15???????? }
            // n = 7, score = 100
            //   56                   | push                esi
            //   ffd3                 | call                ebx
            //   6a00                 | push                0
            //   8d8500ffffff         | lea                 eax, [ebp - 0x100]
            //   56                   | push                esi
            //   50                   | push                eax
            //   ff15????????         |                     

        $sequence_9 = { 7416 8d8500fbffff 6a00 50 }
            // n = 4, score = 100
            //   7416                 | je                  0x18
            //   8d8500fbffff         | lea                 eax, [ebp - 0x500]
            //   6a00                 | push                0
            //   50                   | push                eax

    condition:
        7 of them and filesize < 49152
}