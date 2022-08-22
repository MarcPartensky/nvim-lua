FROM archlinux:latest

RUN whoami
LABEL maintainer="Marc Partensky <marc.partensky@gmail.com"
COPY . .config/nvim

RUN pacman -Syyyu --noconfirm \
        git \
        nodejs \
        npm \
        go \
        make \
        python \
        neovim


RUN localedef -i en_US -f UTF-8 en_US.UTF-8

RUN touch .vimrc
RUN nvim \
    +"source /root/.config/nvim/lua/marc/packer.lua" \
    +PackerUpdate \
    +qall

ENTRYPOINT ["nvim"]
