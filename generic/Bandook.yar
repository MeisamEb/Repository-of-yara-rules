rule Bandook
{

	meta:
		author = " Kevin Breen <kevin@techanarchy.net>"
		date = "2014/04"
		ref = "http://malwareconfig.com/stats/bandook"
		maltype = "Remote Access Trojan"
		filetype = "exe"
        
    strings:
    		$a = "aaaaaa1|"
            $b = "aaaaaa2|"
            $c = "aaaaaa3|"
            $d = "aaaaaa4|"
			$e = "aaaaaa5|"
			$f = "%s%d.exe"
			$g = "astalavista"
			$h = "givemecache"
			$i = "%s\\system32\\drivers\\blogs\\*"
			$j = "bndk13me"
			

        
    condition:
    		all of them
}