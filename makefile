all: site
	./site build

watch:
	gnome-terminal -e "./site watch" &

site: site.hs
	ghc -package-conf ${HAKYLL_SANDBOX} --make site.hs 

HAKYLL_SANDBOX=~/apps/hakyll/.cabal-sandbox/x86_64-linux-ghc-7.4.1-packages.conf.d
