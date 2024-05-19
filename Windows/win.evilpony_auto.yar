rule win_evilpony_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-12-06"
        version = "1"
        description = "Detects win.evilpony."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.evilpony"
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
        $sequence_0 = { 746e 33c0 6a2d 40 668945f0 58 6a04 }
            // n = 7, score = 200
            //   746e                 | je                  0x70
            //   33c0                 | xor                 eax, eax
            //   6a2d                 | push                0x2d
            //   40                   | inc                 eax
            //   668945f0             | mov                 word ptr [ebp - 0x10], ax
            //   58                   | pop                 eax
            //   6a04                 | push                4

        $sequence_1 = { e8???????? 50 53 e8???????? 83c410 6a23 }
            // n = 6, score = 200
            //   e8????????           |                     
            //   50                   | push                eax
            //   53                   | push                ebx
            //   e8????????           |                     
            //   83c410               | add                 esp, 0x10
            //   6a23                 | push                0x23

        $sequence_2 = { ff15???????? 83f8ff 74d6 8bc7 8b4df8 33cd }
            // n = 6, score = 200
            //   ff15????????         |                     
            //   83f8ff               | cmp                 eax, -1
            //   74d6                 | je                  0xffffffd8
            //   8bc7                 | mov                 eax, edi
            //   8b4df8               | mov                 ecx, dword ptr [ebp - 8]
            //   33cd                 | xor                 ecx, ebp

        $sequence_3 = { 034df0 03c1 8b4db8 c14da802 8d8401a1ebd96e 8b4dac }
            // n = 6, score = 200
            //   034df0               | add                 ecx, dword ptr [ebp - 0x10]
            //   03c1                 | add                 eax, ecx
            //   8b4db8               | mov                 ecx, dword ptr [ebp - 0x48]
            //   c14da802             | ror                 dword ptr [ebp - 0x58], 2
            //   8d8401a1ebd96e       | lea                 eax, [ecx + eax + 0x6ed9eba1]
            //   8b4dac               | mov                 ecx, dword ptr [ebp - 0x54]

        $sequence_4 = { 33f6 ff15???????? 85c0 782c 53 8bc7 e8???????? }
            // n = 7, score = 200
            //   33f6                 | xor                 esi, esi
            //   ff15????????         |                     
            //   85c0                 | test                eax, eax
            //   782c                 | js                  0x2e
            //   53                   | push                ebx
            //   8bc7                 | mov                 eax, edi
            //   e8????????           |                     

        $sequence_5 = { e8???????? c9 c3 55 8bec 83ec18 8b4d08 }
            // n = 7, score = 200
            //   e8????????           |                     
            //   c9                   | leave               
            //   c3                   | ret                 
            //   55                   | push                ebp
            //   8bec                 | mov                 ebp, esp
            //   83ec18               | sub                 esp, 0x18
            //   8b4d08               | mov                 ecx, dword ptr [ebp + 8]

        $sequence_6 = { e8???????? 8d855cffffff 50 c7855cffffff94000000 ff15???????? 83bd6cffffff02 7509 }
            // n = 7, score = 200
            //   e8????????           |                     
            //   8d855cffffff         | lea                 eax, [ebp - 0xa4]
            //   50                   | push                eax
            //   c7855cffffff94000000     | mov    dword ptr [ebp - 0xa4], 0x94
            //   ff15????????         |                     
            //   83bd6cffffff02       | cmp                 dword ptr [ebp - 0x94], 2
            //   7509                 | jne                 0xb

        $sequence_7 = { 56 e8???????? 83c40c 43 5f 5e 8bc3 }
            // n = 7, score = 200
            //   56                   | push                esi
            //   e8????????           |                     
            //   83c40c               | add                 esp, 0xc
            //   43                   | inc                 ebx
            //   5f                   | pop                 edi
            //   5e                   | pop                 esi
            //   8bc3                 | mov                 eax, ebx

        $sequence_8 = { c3 85f6 7436 85ff 7432 53 6a00 }
            // n = 7, score = 200
            //   c3                   | ret                 
            //   85f6                 | test                esi, esi
            //   7436                 | je                  0x38
            //   85ff                 | test                edi, edi
            //   7432                 | je                  0x34
            //   53                   | push                ebx
            //   6a00                 | push                0

        $sequence_9 = { 39b5f0f7ffff 0f8495000000 39b5e4f7ffff 0f8489000000 6a04 8d9ddcf7ffff c785dcf7ffff1000efbe }
            // n = 7, score = 200
            //   39b5f0f7ffff         | cmp                 dword ptr [ebp - 0x810], esi
            //   0f8495000000         | je                  0x9b
            //   39b5e4f7ffff         | cmp                 dword ptr [ebp - 0x81c], esi
            //   0f8489000000         | je                  0x8f
            //   6a04                 | push                4
            //   8d9ddcf7ffff         | lea                 ebx, [ebp - 0x824]
            //   c785dcf7ffff1000efbe     | mov    dword ptr [ebp - 0x824], 0xbeef0010

    condition:
        7 of them and filesize < 147456
}