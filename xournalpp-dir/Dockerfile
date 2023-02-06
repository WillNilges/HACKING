FROM docker.io/archlinux

RUN touch /root/.Xauthority

RUN pacman -Syu --noconfirm
RUN pacman -S --noconfirm cmake gtk3 base-devel libxml2 portaudio libsndfile \
poppler-glib texlive-bin texlive-pictures gettext libzip lua53 lua53-lgi \
gtksourceview4
RUN pacman -S --noconfirm wget vim unzip git tmux gdb

