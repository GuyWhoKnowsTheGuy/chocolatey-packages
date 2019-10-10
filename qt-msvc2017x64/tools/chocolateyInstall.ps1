$installScript = join-path $(split-path -parent $MyInvocation.MyCommand.Path) "qt-installer-noninteractive.qs"

write-output "*************************script path: $installScript"

Install-ChocolateyPackage `
    -packageName 'qt-msvc2017x64' `
    -installerType 'exe' `
    -silentArgs "--script $installScript" `
    -url64bit 'http://qt.mirror.constant.com/archive/online_installers/3.1/qt-unified-windows-x86-3.1.1-online.exe' `
	-checksum64 '37e3731cabc2f3cf837aa9e0a539c78b81a7f97b8e7f61dfbf594e17760e9b6c' `
	-checksumtype 'sha256'
