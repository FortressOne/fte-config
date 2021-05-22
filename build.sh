#!/usr/bin/env bash

version=$(cat VERSION)

mkdir -p output/
mkdir -p tmp/FortressOne/id1/
mkdir -p tmp/windows/FortressOne/
mkdir -p tmp/linux/FortressOne/

curl --location \
  --output tmp/FortressOne/id1/pak0.pak \
  https://www.mirafiori.com/ftp/pub/gaming/pak0.pak

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

git archive \
  --verbose \
  --format zip \
  --output git.zip \
  HEAD \
  FortressOne/

cd tmp/ || exit
zip -ur ../git.zip FortressOne/
cd ../

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
