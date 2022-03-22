foreach ($ext in $args) {
    $path = ""
    if ($ext.StartsWith(".")) {
        $path = "HKLM\SOFTWARE\Classes\" + $ext;
    } else {
        $path = "HKLM\SOFTWARE\Classes\." + $ext;
    }
    reg add $path /v PerceivedType /t REG_SZ /d text
    Write-Output ("For " + $ext)
}