Install-ChocolateyPackage `
    -packageName 'boost-msvc12' `
    -installerType 'exe' `
    -silentArgs '/VERYSILENT' `
    -url 'https://downloads.sourceforge.net/project/boost/boost-binaries/1.67.0/boost_1_67_0-msvc-14.1-32.exe' `
    -url64bit 'https://downloads.sourceforge.net/project/boost/boost-binaries/1.67.0/boost_1_67_0-msvc-14.1-64.exe' `
	-checksum 02ee7ba99e73f997daaba2e067a662f1c9a7d804dcf5890faa976fc7bff1a2e1 `
	-checksumType sha256 `
	-checksum64 402d07022fe9671e401efc4e90a1ff25e1bc9e1c23b3d8b1c65e4a2e6799abfc `
	-checksumType64 sha256
