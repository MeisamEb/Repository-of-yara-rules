/*
 * Test the free string placer
 */
rule TestFreeString {
    strings:
        $s1 = "checkcheckcheck" fullword ascii

	condition:
		1 of ($s*)
}
rule TestFreeString2 {
    strings:
        $s1 = "2check2check2check2" wide

	condition:
		all of them
}

/*
 * Test the int function placer
 */
rule TestIntFunction {

	condition:
		uint32(uint32(0xA28)) == 0x4550
}
rule TestIntFunction2 {

	condition:
		0x4550 == uint32(uint32(0xA38))
}

/*
 * Test the offset placer
 */
rule TestOffset {
	strings:
		$str = "someteststring"

	condition:
		$str at 6000
}

/*
 * Tests for the hex placer
 */
rule TestHexWildcard {
    strings:
       $hex_string = { E2 34 ?? C8 A? FB }

    condition:
       $hex_string
}
rule TestHexJump {
        strings:
           $hex_string1 = { F4 23 [4-6] 62 B4 }
           $hex_string2 = { FE 39 45 [6] 89 00 }
           /*$hex_string3 = { FE 39 45 [4-] 89 00 }*/
           /*$hex_string4 = { FE 39 45 [-] 89 00 } */

        condition:
           $hex_string1 and $hex_string2 /* and $hex_string3 and $hex_string4*/
}
rule TestHexAlternation {
        strings:
           $hex_string1 = { F4 23 (39 45 | 66 66 | be ef) 62 B4 }

        condition:
           $hex_string1
}

/*
 * Tests for the base64 placer
 */
rule TestBase64 {
        strings:
           $b64_string1 = "I am base64 ascii" base64

        condition:
           $b64_string1
}
rule TestBase64wide {
        strings:
           $b64w_string1 = "I am base64 wide" base64wide

        condition:
           $b64w_string1
}


/*
 * Tests for the regexp placer
 */
rule TestRegExp
{
    strings:
        $re1 = /wow[0-9a-fA-F]{5}\d\w......./s
        $re2 = /anOTher\s+(One|regEx|tEst)/i

    condition:
        $re1 and $re2
}

/*
 * Tests for the xor string placer
 */
rule TestXorString
{
    strings:
        $x1 = "xor me xor me!!" xor

    condition:
        $x1
}