foreach ($ext in $args) {
    if ($ext.startswith(".")) {
        $path = "HKLM\SOFTWARE\Classes\" + $ext;
        reg add $path /v PerceivedType /t REG_SZ /d text
    }
}