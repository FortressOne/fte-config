#!/usr/bin/env bash

version=$(cat VERSION)

mkdir -p output/
mkdir -p tmp/FortressOne/id1/
mkdir -p tmp/windows/FortressOne/
mkdir -p tmp/linux/FortressOne/

curl https://www.mirafiori.com/ftp/pub/gaming/pak0.pak \
  --output tmp/FortressOne/id1/pak0.pak

curl https://github.com/FortressOne/fteqw-code/releases/latest/download/fortressone64.exe \
  --output tmp/windows/FortressOne/fteqw64.exe

curl https://github.com/FortressOne/fteqw-code/releases/latest/download/fteplug_ezhud_x64.dll \
  --output tmp/windows/FortressOne/fteplug_ezhud_x64.dll

curl https://github.com/FortressOne/fteqw-code/releases/latest/download/fortressone64 \
  --output tmp/linux/FortressOne/fteqw64

curl https://github.com/FortressOne/fteqw-code/releases/latest/download/fteplug_ezhud_amd64.so \
  --output tmp/linux/FortressOne/fteplug_ezhud_amd64.so

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
# rm -rf tmp/
