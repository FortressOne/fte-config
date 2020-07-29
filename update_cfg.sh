cp FortressOne/fortress/default.cfg FortressOne/fortress/fte.cfg
FortressOne/fteqw64 -basedir FortressOne/ +exec update_cfg.cfg +cfg_save +quit
cp FortressOne/fortress/fte.cfg FortressOne/fortress/default.cfg
FortressOne/fteqw64 -basedir FortressOne/ +exec update_cfg.cfg +cfg_save +quit
cp FortressOne/fortress/fte.cfg FortressOne/fortress/default.cfg
git diff
