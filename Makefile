
arch:
	podman build -f Dockerfile.arch -t hacking-arch

debian:
	podman build -f Dockerfile.debian -t hacking-debian

monogame: debian
	podman build monogame-dir/ --tag=hacking-monogame

rust: debian
	podman build rust-dir/ --tag=hacking-rust

xournalpp:
	podman build xournalpp-dir/ --tag hacking-xournalpp

help:
	@echo debian monogame rust xournalpp
