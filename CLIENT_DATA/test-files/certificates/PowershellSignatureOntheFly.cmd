rem powershell.exe -ExecutionPolicy bypass -NoLogo -NonInteractive -NoProfile -Command "Set-AuthenticodeSignature %1 -Certificate (New-Object System.Security.Cryptography.X509Certificates.X509Certificate2("'.\PowershellSignature_with_password.pfx'","'Pass123!'"))"
rem powershell.exe -ExecutionPolicy bypass -NoLogo -NonInteractive -NoProfile -Command "Set-AuthenticodeSignature %1 -Certificate @(Get-ChildItem cert:\CurrentUser\My -codesigning)[0]"
powershell.exe -ExecutionPolicy bypass -NoLogo -NonInteractive -NoProfile -Command "Set-AuthenticodeSignature %1 -Certificate @(dir cert:\LocalMachine\my | ? { $_.Subject -like '*opsi-script-test*' })[0]"