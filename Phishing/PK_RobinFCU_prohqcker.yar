rule PK_RobinFCU_prohqcker : RobinFCU
{
    meta:
        description = "Phishing Kit impersonating Robins Federal Credit Union"
        licence = "GPL-3.0"
        author = "Thomas 'tAd' Damonneville"
        reference = ""
        date = "2023-02-15"
        comment = "Phishing Kit - Robins Federal Credit Union - '*@Prohqcker_Bot**Robins Financial*'"

    strings:
        // the zipfile working on
        $zip_file = { 50 4b 03 04 }
        // specific directory found in PhishingKit
        $spec_dir = "css"
        $spec_dir2 = "js"
        // specific file found in PhishingKit
        $spec_file = "personal.html"
        $spec_file2 = "prohqcker5.php"
        $spec_file3 = "c.html"
        $spec_file4 = "me.php"
        $spec_file5 = "desktop-background-31261c4b72eb487c279e9a1b57d9f095.jpg"

    condition:
        // look for the ZIP header
        uint32(0) == 0x04034b50 and
        // make sure we have a local file header
        $zip_file and
        all of ($spec_dir*) and 
        // check for file
        all of ($spec_file*)
}
