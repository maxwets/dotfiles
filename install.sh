#!/bin/bash

# Plugins
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
curl -Ls https://raw.githubusercontent.com/jarun/nnn/master/plugins/getplugs | sh

# Programs
apt install $(cat progs/apt.list) || exit
pip install $(cat progs/pip.list) || exit
git clone https://github.com/maxwets/st.git /tmp/st && make install -C /tmp/st || exit
git clone https://github.com/i3-gnome/i3-gnome.git /tmp/i3-gnome && make install -C /tmp/i3-gnome || exit
