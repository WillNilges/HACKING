#FROM docker.io/nvidia/cuda:11.4.1-cudnn8-devel-ubuntu20.04 # neovim is too old >:[
FROM hacking-debian

RUN apt-get -y install curl;
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs >> rustup.sh; bash rustup.sh -y
RUN nvim --headless -c 'MasonInstall rust-analyzer' -c 'quitall'
