#!/usr/bin/env bash

# create directory
mkdir -p build/


# create windows subdir
mkdir -p build/windows/

# copy required files
cp -r ../FortressOne/* build/windows/

# download fteqw debug windows
curl http://triptohell.info/moodles/win64/debug/fteqw64.exe --output build/windows/fteqw64.exe

# download ezhud plugin linux
curl http://triptohell.info/moodles/win64/fteplug_ezhud_x64.dll --output build/windows/fteplug_ezhud_x64.dll


# zip
mv build/windows/ build/FortressOne/
cd build/FortressOne/ || exit
zip -r ../fortressone-fte-windows-0.1.1-alpha.2-portable.zip .
cd ../../ || exit
rm -rf build/FortressOne/


# create linux subdir
mkdir -p build/linux/

# copy required files
cp -r ../FortressOne/* build/linux/

# download fteqw debug linux
curl http://triptohell.info/moodles/linux_amd64/fteqw64 --output build/linux/fteqw64.exe

# download ezhud plugin linux
curl http://triptohell.info/moodles/linux_amd64/fteplug_ezhud_amd64.so --output build/linux/fteplug_ezhud_amd64.so

# zip
mv build/linux/ build/FortressOne/
cd build/FortressOne/ || exit
zip -r ../fortressone-fte-linux-0.1.1-alpha.2-portable.zip .
cd ../../ || exit
rm -rf build/FortressOne/
