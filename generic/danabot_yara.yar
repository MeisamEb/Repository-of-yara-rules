rule DanaBot {

	meta:
		author = "RussianPanda"
		decription = "Detects DanaBot"
		date = "12-1-2023"

	strings:
		$s1 = {55 8b ec 8a 45 08 34 4a 5d c2 04 00}
		$s2 = {4D 00 6F 00 7A 00 69 00 6C 00 6C 00 61 00 5C 00 53 00 65 00 61 00 4D 00 6F 00 6E 00 6B 00 65 00 79}
		$s3 = {4D 00 6F 00 7A 00 69 00 6C 00 6C 00 61 00 20 00 54 00 68 00 75 00 6E 00 64 00 65 00 72 00 62 00 69 00 72 00 64 00}
		$s4 = {53 00 6F 00 66 00 74 00 77 00 61 00 72 00 65 00 5C 00 4F 00 52 00 4C 00 5C 00 57 00 69 00 6E 00 56 00 4E 00 43 00 33 00 5C 00 50 00 61 00 73 00 73 00 77 00 6F 00 72 00 64}
		$s5 = {53 00 6F 00 66 00 74 00 77 00 61 00 72 00 65 00 5C 00 45 00 78 00 63 00 69 00 74 00 65 00 5C 00 50 00 72 00 69 00 76 00 61 00 74 00 65 00 4D 00 65 00 73 00 73 00 65 00 6E 00 67 00 65 00 72 00 5C 00 50 00 61 00 73 00 73 00 77 00 6F 00 72 00 64}
		$a = {44 45 4C 50 48 49 43 4C 41 53 53}
	condition:
		3 of ($s*) and $a
}
