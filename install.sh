#!/bin/bash

apt install $(cat progs/apt.list) || echo "root privileges required."
git clone https://github.com/maxwets/st.git /tmp/st && make install -C /tmp/st || echo "root privileges required."
cp .local/share/plasma-i3.desktop /usr/share/xsessions/plasma-i3.desktop || echo "root privileges required."
pip install $(cat progs/pip.list)
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
curl -Ls https://raw.githubusercontent.com/jarun/nnn/master/plugins/getplugs | sh
