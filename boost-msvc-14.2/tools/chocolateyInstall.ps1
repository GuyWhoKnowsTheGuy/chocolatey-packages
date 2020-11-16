# Install 32 bit binaries
Install-ChocolateyPackage `
    -packageName 'boost-msvc-14.2' `
    -installerType 'exe' `
    -silentArgs '/VERYSILENT' `
    -url 'https://downloads.sourceforge.net/project/boost/boost-binaries/1.74.0/boost_1_74_0-msvc-14.2-32.exe' `
	-checksum 529579fe4448f63f4e780338e4075c142604e40cd2c5901d5187160660b4ae48 `
	-checksumType sha256 `

# Install 64 bit binaries
Install-ChocolateyPackage `
    -packageName 'boost-msvc-14.2' `
    -installerType 'exe' `
    -silentArgs '/VERYSILENT' `
    -url64bit 'https://downloads.sourceforge.net/project/boost/boost-binaries/1.74.0/boost_1_74_0-msvc-14.2-64.exe' `
	-checksum64 74229a45b1e13f05c5bbdca7a268ac7723d97c33bec209e5f669b6cb3ffaeab6 `
	-checksumType64 sha256
