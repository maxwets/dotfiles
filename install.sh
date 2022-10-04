#!/bin/bash

# Plugins
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
curl -Ls https://raw.githubusercontent.com/jarun/nnn/master/plugins/getplugs | sh

# Programs
pip install $(cat progs/pip.list) || exit
cp progs/apt-src.list /etc/apt/sources.list && apt update && apt install $(cat progs/apt.list) || exit
git clone https://github.com/maxwets/st.git /tmp/st && make install -C /tmp/st || exit
