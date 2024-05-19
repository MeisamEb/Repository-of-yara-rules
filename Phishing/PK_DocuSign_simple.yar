rule PK_DocuSign_simple : DocuSign
{
    meta:
        description = "Phishing Kit impersonating DocuSign"
        licence = "GPL-3.0"
        author = "Thomas Damonneville"
        reference = ""
        date = "2023-07-18"
        comment = "Phishing Kit - DocuSign - '-|Simple|-'"

    strings:
        $zip_file = { 50 4b 03 04 }
        $spec_dir = "css"
        $spec_dir2 = "Office 365_files"
        $spec_file1 = "al.php"
        $spec_file2 = "alphp.php"
        $spec_file3 = "offphp.php"
        $spec_file4 = "othr.php"

    condition:
        uint32(0) == 0x04034b50 and
        $zip_file and
        all of ($spec_dir*) and
        // check for file
        all of ($spec_file*)
}
