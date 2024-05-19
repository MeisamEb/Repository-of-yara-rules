rule win_mpkbot_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-12-06"
        version = "1"
        description = "Detects win.mpkbot."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.mpkbot"
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
        $sequence_0 = { 68???????? 50 ff15???????? a3???????? 8d45fc 50 683f000f00 }
            // n = 7, score = 400
            //   68????????           |                     
            //   50                   | push                eax
            //   ff15????????         |                     
            //   a3????????           |                     
            //   8d45fc               | lea                 eax, [ebp - 4]
            //   50                   | push                eax
            //   683f000f00           | push                0xf003f

        $sequence_1 = { a3???????? 8d45fc 50 683f000f00 6a00 }
            // n = 5, score = 400
            //   a3????????           |                     
            //   8d45fc               | lea                 eax, [ebp - 4]
            //   50                   | push                eax
            //   683f000f00           | push                0xf003f
            //   6a00                 | push                0

        $sequence_2 = { 38450c 740a eb05 38450c 7503 }
            // n = 5, score = 400
            //   38450c               | cmp                 byte ptr [ebp + 0xc], al
            //   740a                 | je                  0xc
            //   eb05                 | jmp                 7
            //   38450c               | cmp                 byte ptr [ebp + 0xc], al
            //   7503                 | jne                 5

        $sequence_3 = { 8d55f8 52 56 6a20 68???????? }
            // n = 5, score = 400
            //   8d55f8               | lea                 edx, [ebp - 8]
            //   52                   | push                edx
            //   56                   | push                esi
            //   6a20                 | push                0x20
            //   68????????           |                     

        $sequence_4 = { 55 8bec 56 57 6a00 ff15???????? 8bf0 }
            // n = 7, score = 400
            //   55                   | push                ebp
            //   8bec                 | mov                 ebp, esp
            //   56                   | push                esi
            //   57                   | push                edi
            //   6a00                 | push                0
            //   ff15????????         |                     
            //   8bf0                 | mov                 esi, eax

        $sequence_5 = { 0fb630 8975d4 db45d4 d84dc4 }
            // n = 4, score = 400
            //   0fb630               | movzx               esi, byte ptr [eax]
            //   8975d4               | mov                 dword ptr [ebp - 0x2c], esi
            //   db45d4               | fild                dword ptr [ebp - 0x2c]
            //   d84dc4               | fmul                dword ptr [ebp - 0x3c]

        $sequence_6 = { 8bf0 0fb7450c 50 0fb74508 50 56 }
            // n = 6, score = 400
            //   8bf0                 | mov                 esi, eax
            //   0fb7450c             | movzx               eax, word ptr [ebp + 0xc]
            //   50                   | push                eax
            //   0fb74508             | movzx               eax, word ptr [ebp + 8]
            //   50                   | push                eax
            //   56                   | push                esi

        $sequence_7 = { 7507 38450c 740a eb05 }
            // n = 4, score = 400
            //   7507                 | jne                 9
            //   38450c               | cmp                 byte ptr [ebp + 0xc], al
            //   740a                 | je                  0xc
            //   eb05                 | jmp                 7

        $sequence_8 = { ff15???????? ff7508 a3???????? ffd0 5d c3 55 }
            // n = 7, score = 400
            //   ff15????????         |                     
            //   ff7508               | push                dword ptr [ebp + 8]
            //   a3????????           |                     
            //   ffd0                 | call                eax
            //   5d                   | pop                 ebp
            //   c3                   | ret                 
            //   55                   | push                ebp

        $sequence_9 = { ff15???????? ffd6 50 ffd7 }
            // n = 4, score = 400
            //   ff15????????         |                     
            //   ffd6                 | call                esi
            //   50                   | push                eax
            //   ffd7                 | call                edi

    condition:
        7 of them and filesize < 139264
}