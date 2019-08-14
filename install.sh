#!/bin/bash

# install basic programs
sudo pacman -S - < progs

# install vim-plug for neovim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# install evil-mode for emacs
git clone https://github.com/emacs-evil/evil ~/.emacs.d/evil

# install gruvbox for emacs
[ -d ~/.emacs.d/themes ] || mkdir ~/.emacs.d/themes
curl -L https://raw.github.com/Greduan/emacs-theme-gruvbox/master/gruvbox-theme.el > ~/.emacs.d/themes/gruvbox-theme.el

# install st
git clone https://github.com/maxwets/st
cd st && make all
sudo make install
cd;

# install dmenu
git clone https://github.com/maxwets/dmenu
cd dmenu && make all
sudo make install
cd;

