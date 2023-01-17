
debian:
	podman build -f Dockerfile.debian -t hacking-debian

monogame: debian
	podman build monogame-dir/ --tag=hacking-monogame

help:
	@echo debian monogame
