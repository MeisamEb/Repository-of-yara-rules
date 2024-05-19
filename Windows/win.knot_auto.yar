rule win_knot_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-12-06"
        version = "1"
        description = "Detects win.knot."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.knot"
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
        $sequence_0 = { 50 8b8ddcfdffff 51 6a00 6a00 6a01 }
            // n = 6, score = 200
            //   50                   | push                eax
            //   8b8ddcfdffff         | mov                 ecx, dword ptr [ebp - 0x224]
            //   51                   | push                ecx
            //   6a00                 | push                0
            //   6a00                 | push                0
            //   6a01                 | push                1

        $sequence_1 = { 55 8bec 81ec34010000 6a00 }
            // n = 4, score = 200
            //   55                   | push                ebp
            //   8bec                 | mov                 ebp, esp
            //   81ec34010000         | sub                 esp, 0x134
            //   6a00                 | push                0

        $sequence_2 = { 6a18 6a00 6a00 68???????? ff15???????? 8d95f0f9ffff }
            // n = 6, score = 200
            //   6a18                 | push                0x18
            //   6a00                 | push                0
            //   6a00                 | push                0
            //   68????????           |                     
            //   ff15????????         |                     
            //   8d95f0f9ffff         | lea                 edx, [ebp - 0x610]

        $sequence_3 = { ff15???????? 83c408 6a01 6a00 }
            // n = 4, score = 200
            //   ff15????????         |                     
            //   83c408               | add                 esp, 8
            //   6a01                 | push                1
            //   6a00                 | push                0

        $sequence_4 = { 83bdd4fdffff00 7443 8b85d8fdffff 50 8b8ddcfdffff 51 }
            // n = 6, score = 200
            //   83bdd4fdffff00       | cmp                 dword ptr [ebp - 0x22c], 0
            //   7443                 | je                  0x45
            //   8b85d8fdffff         | mov                 eax, dword ptr [ebp - 0x228]
            //   50                   | push                eax
            //   8b8ddcfdffff         | mov                 ecx, dword ptr [ebp - 0x224]
            //   51                   | push                ecx

        $sequence_5 = { 6800000040 8d95e0fdffff 52 ff15???????? }
            // n = 4, score = 200
            //   6800000040           | push                0x40000000
            //   8d95e0fdffff         | lea                 edx, [ebp - 0x220]
            //   52                   | push                edx
            //   ff15????????         |                     

        $sequence_6 = { ff15???????? 8b55ec 52 ff15???????? 8b45e8 50 ff15???????? }
            // n = 7, score = 200
            //   ff15????????         |                     
            //   8b55ec               | mov                 edx, dword ptr [ebp - 0x14]
            //   52                   | push                edx
            //   ff15????????         |                     
            //   8b45e8               | mov                 eax, dword ptr [ebp - 0x18]
            //   50                   | push                eax
            //   ff15????????         |                     

        $sequence_7 = { 6a00 6a00 68???????? ff15???????? 8d95f0f9ffff 52 e8???????? }
            // n = 7, score = 200
            //   6a00                 | push                0
            //   6a00                 | push                0
            //   68????????           |                     
            //   ff15????????         |                     
            //   8d95f0f9ffff         | lea                 edx, [ebp - 0x610]
            //   52                   | push                edx
            //   e8????????           |                     

        $sequence_8 = { 52 ff15???????? 85c0 7507 32c0 e9???????? c785d8fdffff00000000 }
            // n = 7, score = 200
            //   52                   | push                edx
            //   ff15????????         |                     
            //   85c0                 | test                eax, eax
            //   7507                 | jne                 9
            //   32c0                 | xor                 al, al
            //   e9????????           |                     
            //   c785d8fdffff00000000     | mov    dword ptr [ebp - 0x228], 0

        $sequence_9 = { 83c408 68???????? 8b8d74f7ffff 51 e8???????? }
            // n = 5, score = 200
            //   83c408               | add                 esp, 8
            //   68????????           |                     
            //   8b8d74f7ffff         | mov                 ecx, dword ptr [ebp - 0x88c]
            //   51                   | push                ecx
            //   e8????????           |                     

    condition:
        7 of them and filesize < 59392
}