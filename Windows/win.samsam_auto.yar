rule win_samsam_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2020-04-21"
        version = "1"
        description = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.3.1"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.samsam"
        malpedia_version = "20200421"
        malpedia_license = "CC BY-SA 4.0"
        malpedia_sharing = "TLP:WHITE"

    /* DISCLAIMER
     * The strings used in this rule have been automatically selected from the
     * disassembly of memory dumps and unpacked files, using yara-signator.
     * The code and documentation / approach will be published in the near future here:
     * https://github.com/fxb-cocacoding/yara-signator
     * As Malpedia is used as data source, please note that for a given
     * number of families, only single samples are documented.
     * This likely impacts the degree of generalization these rules will offer.
     * Take the described generation method also into consideration when you
     * apply the rules in your use cases and assign them confidence levels.
     */


    strings:
        $sequence_0 = { 082b c883e10f 03c1 1bc9 0bc1 59 e9???????? }
            // n = 7, score = 200
            //   082b                 | or                  byte ptr [ebx], ch
            //   c883e10f             | enter               -0x1e7d, 0xf
            //   03c1                 | add                 eax, ecx
            //   1bc9                 | sbb                 ecx, ecx
            //   0bc1                 | or                  eax, ecx
            //   59                   | pop                 ecx
            //   e9????????           |                     

        $sequence_1 = { ec 8b4508 56 33f6 3bc6 751d e8???????? }
            // n = 7, score = 200
            //   ec                   | in                  al, dx
            //   8b4508               | mov                 eax, dword ptr [ebp + 8]
            //   56                   | push                esi
            //   33f6                 | xor                 esi, esi
            //   3bc6                 | cmp                 eax, esi
            //   751d                 | jne                 0x1f
            //   e8????????           |                     

        $sequence_2 = { ec 83ec10 53 ff7510 8d4df0 e8???????? }
            // n = 6, score = 100
            //   ec                   | in                  al, dx
            //   83ec10               | sub                 esp, 0x10
            //   53                   | push                ebx
            //   ff7510               | push                dword ptr [ebp + 0x10]
            //   8d4df0               | lea                 ecx, [ebp - 0x10]
            //   e8????????           |                     

        $sequence_3 = { ec 83ec10 53 33db 56 57 }
            // n = 6, score = 100
            //   ec                   | in                  al, dx
            //   83ec10               | sub                 esp, 0x10
            //   53                   | push                ebx
            //   33db                 | xor                 ebx, ebx
            //   56                   | push                esi
            //   57                   | push                edi

        $sequence_4 = { ec 6a0a 6a00 ff7508 e8???????? }
            // n = 5, score = 100
            //   ec                   | in                  al, dx
            //   6a0a                 | push                0xa
            //   6a00                 | push                0
            //   ff7508               | push                dword ptr [ebp + 8]
            //   e8????????           |                     

    condition:
        7 of them and filesize < 483328
}