Install-ChocolateyPackage `
    -packageName 'boost-msvc12' `
    -installerType 'exe' `
    -silentArgs '/VERYSILENT' `
    -url 'https://downloads.sourceforge.net/project/boost/boost-binaries/1.67.0/boost_1_67_0-msvc-14.1-32.exe' `
    -url64bit 'https://downloads.sourceforge.net/project/boost/boost-binaries/1.67.0/boost_1_67_0-msvc-14.1-64.exe'
