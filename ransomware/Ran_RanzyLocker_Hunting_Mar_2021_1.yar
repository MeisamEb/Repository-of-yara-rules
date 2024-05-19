rule Ran_RanzyLocker_Hunting_Mar_2021_1 {
   meta:
        description = "Detect RanzyLocker ransomware"
        author = "Arkbird_SOLG"
        reference = "Internal Research"
        date = "2021-03-16"
        hash1 = "5d0af3bf0dc7d99fc87d844a0fcd99796b9257ba02d78510422c498d445f0d0d"
   strings:
        $s1 = "-nolan" fullword wide
        $s2 = { 34 33 33 41 35 43 35 30 37 32 36 46 36 37 37 32 36 31 36 44 32 30 34 36 36 39 36 43 36 35 37 33 32 30 32 38 37 38 33 38 33 36 32 39 35 43 34 44 36 39 36 33 37 32 36 46 37 33 36 46 36 36 37 34 32 30 35 33 35 31 34 43 32 30 35 33 36 35 37 32 37 36 36 35 37 32 } // 433A5C50726F6772616D2046696C65732028783836295C4D6963726F736F66742053514C20536572766572 ->  C:\Program Files (x86)\Microsoft SQL Server
        $s3 = { 34 33 33 41 35 43 35 30 37 32 36 46 36 37 37 32 36 31 36 44 32 30 34 36 36 39 36 43 36 35 37 33 35 43 34 44 36 39 36 33 37 32 36 46 37 33 36 46 36 36 37 34 32 30 35 33 35 31 34 43 32 30 35 33 36 35 37 32 37 36 36 35 37 32 } // 433A5C50726F6772616D2046696C65735C4D6963726F736F66742053514C20536572766572 -> C:\Program Files\Microsoft SQL Server
        $s4 = { 32 32 37 33 37 35 36 32 36 39 36 34 32 32 33 41 32 32 00 00 32 32 36 43 36 31 36 45 36 37 32 32 33 41 32 32 } // 227375626964223A22  -> "subid":" 
        $s5 = { 32 32 36 43 36 31 36 45 36 37 32 32 33 41 32 32 } // 226C616E67223A22  -> "lang":"
        $s6 = { 32 32 36 35 37 38 37 34 32 32 33 41 32 32 } // 22657874223A22  -> "ext":"
        $s7 = { 32 32 36 42 36 35 37 39 32 32 33 41 32 32 } // 226B6579223A22  -> "key":"
        $s8 = { 32 32 36 45 36 35 37 34 37 37 36 46 37 32 36 42 32 32 33 41 32 32 } // 226E6574776F726B223A22  -> "network":"
        $s9 = { 36 32 36 33 36 34 36 35 36 34 36 39 37 34 32 45 36 35 37 38 36 35 32 30 32 46 37 33 36 35 37 34 32 30 37 42 36 34 36 35 36 36 36 31 37 35 36 43 37 34 37 44 32 30 36 32 36 46 36 46 37 34 37 33 37 34 36 31 37 34 37 35 37 33 37 30 36 46 36 43 36 39 36 33 37 39 32 30 36 39 36 37 36 45 36 46 37 32 36 35 36 31 36 43 36 43 36 36 36 31 36 39 36 43 37 35 37 32 36 35 37 33 } // 626364656469742E657865202F736574207B64656661756C747D20626F6F74737461747573706F6C6963792069676E6F7265616C6C6661696C75726573  -> bcdedit.exe /set {default} bootstatuspolicy ignoreallfailures
        $s10 = { 36 32 36 33 36 34 36 35 36 34 36 39 37 34 32 45 36 35 37 38 36 35 32 30 32 46 37 33 36 35 37 34 32 30 37 42 36 34 36 35 36 36 36 31 37 35 36 43 37 34 37 44 32 30 37 32 36 35 36 33 36 46 37 36 36 35 37 32 37 39 36 35 36 45 36 31 36 32 36 43 36 35 36 34 32 30 34 45 36 46 } // 626364656469742E657865202F736574207B64656661756C747D207265636F76657279656E61626C6564204E6F  -> bcdedit.exe /set {default} recoveryenabled No
        $s11 = { 37 37 36 44 36 39 36 33 32 45 36 35 37 38 36 35 32 30 35 33 34 38 34 31 34 34 34 46 35 37 34 33 34 46 35 30 35 39 32 30 32 46 36 45 36 46 36 39 36 45 37 34 36 35 37 32 36 31 36 33 37 34 36 39 37 36 36 35 } // 776D69632E65786520534841444F57434F5059202F6E6F696E746572616374697665  -> wmic.exe SHADOWCOPY /nointeractive
        $s12 = { 35 33 34 46 34 36 35 34 35 37 34 31 35 32 34 35 35 43 34 44 36 39 36 33 37 32 36 46 37 33 36 46 36 36 37 34 35 43 34 35 35 32 34 39 34 34 } // 534F4654574152455C4D6963726F736F66745C45524944 -> SOFTWARE\Microsoft\ERID
        $s13 = { 37 32 36 35 36 31 36 34 36 44 36 35 32 45 37 34 37 38 37 34 } // 726561646D652E747874  -> readme.txt
   condition:
        uint16(0) == 0x5a4d and filesize > 100KB and 10 of ($s*)
}
