Install-ChocolateyPackage `
    -packageName 'boost-msvc14.1' `
    -installerType 'exe' `
    -silentArgs '/VERYSILENT' `
    -url 'https://downloads.sourceforge.net/project/boost/boost-binaries/1.74.0/boost_1_74_0-msvc-14.1-32.exe' `
    -url64bit 'https://downloads.sourceforge.net/project/boost/boost-binaries/1.74.0/boost_1_74_0-msvc-14.1-64.exe' `
	-checksum 05b2681b181595e87c939954cf10593853193acb0f500b6af9119dd1615a2f25 `
	-checksumType sha256 `
	-checksum64 81195a09449fb8d2611e4ecaa930acfc0404baae701bb166881ed9f0ad3886ad `
	-checksumType64 sha256
