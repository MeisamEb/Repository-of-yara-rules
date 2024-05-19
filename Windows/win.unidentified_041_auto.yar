rule win_unidentified_041_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-12-06"
        version = "1"
        description = "Detects win.unidentified_041."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.unidentified_041"
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
        $sequence_0 = { ff761c ff7618 ff7304 e8???????? 8d45bf c645bf0d 50 }
            // n = 7, score = 200
            //   ff761c               | push                dword ptr [esi + 0x1c]
            //   ff7618               | push                dword ptr [esi + 0x18]
            //   ff7304               | push                dword ptr [ebx + 4]
            //   e8????????           |                     
            //   8d45bf               | lea                 eax, [ebp - 0x41]
            //   c645bf0d             | mov                 byte ptr [ebp - 0x41], 0xd
            //   50                   | push                eax

        $sequence_1 = { 885d9b e9???????? 391f 75c7 385e04 752e }
            // n = 6, score = 200
            //   885d9b               | mov                 byte ptr [ebp - 0x65], bl
            //   e9????????           |                     
            //   391f                 | cmp                 dword ptr [edi], ebx
            //   75c7                 | jne                 0xffffffc9
            //   385e04               | cmp                 byte ptr [esi + 4], bl
            //   752e                 | jne                 0x30

        $sequence_2 = { 8b3f 8d44242c 50 53 68???????? 57 6a02 }
            // n = 7, score = 200
            //   8b3f                 | mov                 edi, dword ptr [edi]
            //   8d44242c             | lea                 eax, [esp + 0x2c]
            //   50                   | push                eax
            //   53                   | push                ebx
            //   68????????           |                     
            //   57                   | push                edi
            //   6a02                 | push                2

        $sequence_3 = { c645fc02 8b08 52 53 50 ff5118 85c0 }
            // n = 7, score = 200
            //   c645fc02             | mov                 byte ptr [ebp - 4], 2
            //   8b08                 | mov                 ecx, dword ptr [eax]
            //   52                   | push                edx
            //   53                   | push                ebx
            //   50                   | push                eax
            //   ff5118               | call                dword ptr [ecx + 0x18]
            //   85c0                 | test                eax, eax

        $sequence_4 = { eb05 be57000780 5f 8bc6 5e 5b c20400 }
            // n = 7, score = 200
            //   eb05                 | jmp                 7
            //   be57000780           | mov                 esi, 0x80070057
            //   5f                   | pop                 edi
            //   8bc6                 | mov                 eax, esi
            //   5e                   | pop                 esi
            //   5b                   | pop                 ebx
            //   c20400               | ret                 4

        $sequence_5 = { 85c0 7509 56 e8???????? 59 eba7 8d47ff }
            // n = 7, score = 200
            //   85c0                 | test                eax, eax
            //   7509                 | jne                 0xb
            //   56                   | push                esi
            //   e8????????           |                     
            //   59                   | pop                 ecx
            //   eba7                 | jmp                 0xffffffa9
            //   8d47ff               | lea                 eax, [edi - 1]

        $sequence_6 = { ff75e0 e8???????? 8b45f0 83c418 2b06 8bce c1f802 }
            // n = 7, score = 200
            //   ff75e0               | push                dword ptr [ebp - 0x20]
            //   e8????????           |                     
            //   8b45f0               | mov                 eax, dword ptr [ebp - 0x10]
            //   83c418               | add                 esp, 0x18
            //   2b06                 | sub                 eax, dword ptr [esi]
            //   8bce                 | mov                 ecx, esi
            //   c1f802               | sar                 eax, 2

        $sequence_7 = { 7430 ff7508 8bfe 33c0 ab ab ab }
            // n = 7, score = 200
            //   7430                 | je                  0x32
            //   ff7508               | push                dword ptr [ebp + 8]
            //   8bfe                 | mov                 edi, esi
            //   33c0                 | xor                 eax, eax
            //   ab                   | stosd               dword ptr es:[edi], eax
            //   ab                   | stosd               dword ptr es:[edi], eax
            //   ab                   | stosd               dword ptr es:[edi], eax

        $sequence_8 = { ff5024 85c0 0f8889040000 33c0 8dbd22fdffff 66898520fdffff ab }
            // n = 7, score = 200
            //   ff5024               | call                dword ptr [eax + 0x24]
            //   85c0                 | test                eax, eax
            //   0f8889040000         | js                  0x48f
            //   33c0                 | xor                 eax, eax
            //   8dbd22fdffff         | lea                 edi, [ebp - 0x2de]
            //   66898520fdffff       | mov                 word ptr [ebp - 0x2e0], ax
            //   ab                   | stosd               dword ptr es:[edi], eax

        $sequence_9 = { 8d8d54ffffff e8???????? 8bc6 e9???????? ff15???????? 50 8d8d28ffffff }
            // n = 7, score = 200
            //   8d8d54ffffff         | lea                 ecx, [ebp - 0xac]
            //   e8????????           |                     
            //   8bc6                 | mov                 eax, esi
            //   e9????????           |                     
            //   ff15????????         |                     
            //   50                   | push                eax
            //   8d8d28ffffff         | lea                 ecx, [ebp - 0xd8]

    condition:
        7 of them and filesize < 1097728
}