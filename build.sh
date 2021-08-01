#!/usr/bin/env bash

version=$(cat VERSION)

echo Downloading latest binaries
mkdir -p tmp/windows/FortressOne/
mkdir -p tmp/linux/FortressOne/

curl --location \
  --output tmp/windows/FortressOne/fortressone64.exe \
  https://github.com/FortressOne/fteqw-code/releases/latest/download/fortressone64.exe

curl --location \
	--output tmp/windows/FortressOne/fteplug_ezhud_x64.dll \
	https://github.com/FortressOne/fteqw-code/releases/latest/download/fteplug_ezhud_x64.dll

curl --location \
	--output tmp/linux/FortressOne/fortressone64 \
	https://github.com/FortressOne/fteqw-code/releases/latest/download/fortressone64

curl --location \
	--output tmp/linux/FortressOne/fteplug_ezhud_amd64.so \
	https://github.com/FortressOne/fteqw-code/releases/latest/download/fteplug_ezhud_amd64.so

chmod +x tmp/linux/FortressOne/fortressone64


echo Downloading Quake 1.06 shareware and Team Fortress 2.8
mkdir -p tmp/zips
mkdir -p tmp/FortressOne/quake_sw

curl --location \
  --output tmp/zips/quake106_extracted.zip \
  https://fortressone-installer.s3.ap-southeast-2.amazonaws.com/quake106_extracted.zip

curl --location \
  --output tmp/zips/tf28.zip \
  https://fortressone-installer.s3.ap-southeast-2.amazonaws.com/tf28.zip

unzip tmp/zips/quake106_extracted.zip -d tmp/FortressOne/quake_sw
unzip tmp/zips/tf28.zip -d tmp/FortressOne/quake_sw

echo Building archives
mkdir -p output/

git archive \
  --verbose \
  --format zip \
  --output git.zip \
  HEAD \
  FortressOne/

cd tmp/ || exit
tree
zip -ur ../git.zip FortressOne/quake_sw
cd ..

cp git.zip tmp/windows/fortressone-fte-windows-${version}-portable.zip
mv git.zip tmp/linux/fortressone-fte-linux-${version}-portable.zip

cd tmp/windows/ || exit
zip -ur fortressone-fte-windows-${version}-portable.zip FortressOne/
cd ../../

cd tmp/linux/ || exit
zip -ur fortressone-fte-linux-${version}-portable.zip FortressOne/
cd ../../

mv tmp/windows/fortressone-fte-windows-${version}-portable.zip output/
mv tmp/linux/fortressone-fte-linux-${version}-portable.zip output/
rm -rf tmp/
