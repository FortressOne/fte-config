cd FortressOne/ || exit
cp fortress/default.cfg fortress/fte.cfg
FortressOne/fteqw64 -basedir Fortressone/ +exec update_cfg.cfg +cfg_save +quit
cp fortress/fte.cfg fortress/default.cfg
FortressOne/fteqw64 -basedir Fortressone/ +exec update_cfg.cfg +cfg_save +quit
cp fortress/fte.cfg fortress/default.cfg
cd - || exit
git diff
