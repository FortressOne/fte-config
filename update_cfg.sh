cd ../FortressOne/ || exit
cp fortress/default.cfg fortress/fte.cfg
./fteqw64 +exec update_cfg.cfg +cfg_save +quit
cp fortress/fte.cfg fortress/default.cfg
cp fortress/default.cfg fortress/fte.cfg
./fteqw64 +exec update_cfg.cfg +cfg_save +quit
cp fortress/fte.cfg fortress/default.cfg
cd - || exit
git diff
