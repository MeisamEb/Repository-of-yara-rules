rule win_cardinal_rat_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2018-11-23"
        version = "1"
        description = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator 0.1a"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.cardinal_rat"
        malpedia_version = "20180607"
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
        $sequence_0 = { 22056a00f100 28056a00f900 2e05fb00f900 3b05fb00f900 }
            // n = 4, score = 1000
            //   22056a00f100         | and                 al, byte ptr [0xf1006a]
            //   28056a00f900         | sub                 byte ptr [0xf9006a], al
            //   2e05fb00f900         | add                 eax, 0xf900fb
            //   3b05fb00f900         | cmp                 eax, dword ptr [0xf900fb]

        $sequence_1 = { 53 05fb001901 d6 001f }
            // n = 4, score = 1000
            //   53                   | push                ebx
            //   05fb001901           | add                 eax, 0x11900fb
            //   d6                   | salc                
            //   001f                 | add                 byte ptr [edi], bl

        $sequence_2 = { 01c6 0407 01e9 00d3 }
            // n = 4, score = 1000
            //   01c6                 | add                 esi, eax
            //   0407                 | add                 al, 7
            //   01e9                 | add                 ecx, ebp
            //   00d3                 | add                 bl, dl

        $sequence_3 = { 046a 009900f80412 01e1 0006 }
            // n = 4, score = 1000
            //   046a                 | add                 al, 0x6a
            //   009900f80412         | add                 byte ptr [ecx + 0x1204f800], bl
            //   01e1                 | add                 ecx, esp
            //   0006                 | add                 byte ptr [esi], al

        $sequence_4 = { 00d9 00e0 03c6 00a900ed03cb }
            // n = 4, score = 1000
            //   00d9                 | add                 cl, bl
            //   00e0                 | add                 al, ah
            //   03c6                 | add                 eax, esi
            //   00a900ed03cb         | add                 byte ptr [ecx - 0x34fc1300], ch

        $sequence_5 = { 2504dd0069 0038 04e3 0099004804c2 }
            // n = 4, score = 1000
            //   2504dd0069           | and                 eax, 0x6900dd04
            //   0038                 | add                 byte ptr [eax], bh
            //   04e3                 | add                 al, 0xe3
            //   0099004804c2         | add                 byte ptr [ecx - 0x3dfbb800], bl

        $sequence_6 = { 0010 04d8 00e9 00bc036a00e900 }
            // n = 4, score = 1000
            //   0010                 | add                 byte ptr [eax], dl
            //   04d8                 | add                 al, 0xd8
            //   00e9                 | add                 cl, ch
            //   00bc036a00e900       | add                 byte ptr [ebx + eax + 0xe9006a], bh

        $sequence_7 = { 00bc036a009900 c6036a 00d9 00e0 }
            // n = 4, score = 1000
            //   00bc036a009900       | add                 byte ptr [ebx + eax + 0x99006a], bh
            //   c6036a               | mov                 byte ptr [ebx], 0x6a
            //   00d9                 | add                 cl, bl
            //   00e0                 | add                 al, ah

        $sequence_8 = { 051801e100 1205d800f100 22056a00f100 28056a00f900 }
            // n = 4, score = 1000
            //   051801e100           | add                 eax, 0xe10118
            //   1205d800f100         | adc                 al, byte ptr [0xf100d8]
            //   22056a00f100         | and                 al, byte ptr [0xf1006a]
            //   28056a00f900         | sub                 byte ptr [0xf9006a], al

        $sequence_9 = { c6036a 00d9 00e0 03c6 }
            // n = 4, score = 1000
            //   c6036a               | mov                 byte ptr [ebx], 0x6a
            //   00d9                 | add                 cl, bl
            //   00e0                 | add                 al, ah
            //   03c6                 | add                 eax, esi

    condition:
        7 of them
}