# fte-config

This repo contains all the bits of the client that arent the binaries. It is used to build the release packages.


## Build releases

- Update VERSION file
- Run build script
		```
		./build.sh
		```
- Upload output/*.zip to GitHub
- Update links on website and stores
	- Website
	- itch.io
	- moddb
	- igdb
	- Lutris
- Post announcements:
	- Discord
	- Twitter
	- ModDB
	- Reddit
	- Hacker news


## Neatly change default.cfg

- Add commands to FortressOne/fortress/update_cfg.cfg
- Run
		```
		./update_cfg.sh
		```
- This will open the game, execute update_cfg.cfg, save the config as default.cfg.
- Also keeps default.cfg up to date with binary defaults when they change upstream.


## Todo

- Convert build.sh to Dockerfile to benefit from caching
