$ErrorActionPreference = 'Stop';

$installDir="C:\local\boost_1_74_0"

write-host "Uninstalling boost will remove $installDir." -ForegroundColor Yellow
if (Test-Path "$installDir") { rm -Recurse -Force "$installDir" }
