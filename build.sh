#!/usr/bin/env bash

version=$(cat VERSION)

mkdir -p output/
mkdir -p tmp/windows/FortressOne/
mkdir -p tmp/linux/FortressOne/

curl http://triptohell.info/moodles/win64/debug/fteqw64.exe \
  --output tmp/windows/FortressOne/fteqw64.exe

curl http://triptohell.info/moodles/win64/fteplug_ezhud_x64.dll \
  --output tmp/windows/FortressOne/fteplug_ezhud_x64.dll

curl http://triptohell.info/moodles/linux_amd64/fteqw64 \
  --output tmp/linux/FortressOne/fteqw64

curl http://triptohell.info/moodles/linux_amd64/fteplug_ezhud_amd64.so \
  --output tmp/linux/FortressOne/fteplug_ezhud_amd64.so

git archive \
  --verbose \
  --format zip \
  --output git.zip \
  HEAD \
  FortressOne/

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
