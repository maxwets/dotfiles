#!/bin/sh

sort -o progs progs

# install programs
apt update
apt --yes install < progs

# install i3-gaps
add-apt-repository -y ppa:regolith-linux/stable
apt --yes install i3-gaps i3blocks

# install dmenu
if [ ! -d /tmp/dmenu ]
then
	git clone https://github.com/maxwets/dmenu.git /tmp/dmenu
fi
make install -C /tmp/dmenu

# install st
if [ ! -d /tmp/st ]
then
	git clone https://github.com/maxwets/st.git /tmp/st
fi
make install -C /tmp/st

# install fish
curl -L https://get.oh-my.fish > tmp/omf
fish /tmp/omf --path=~/.local/share/omf --config=~/.config/omf
omf install spacefish

# install powerline fonts
apt install fonts-powerline

# install lf
wget https://download.opensuse.org/repositories/home:/Provessor/xUbuntu_19.10/amd64/lf_16+git20200907.61442f8-1_amd64.deb -O /tmp/lf; dpkg -i /tmp/lf

# install vim-plug for neovim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# install evil-mode for emacs
git clone https://github.com/emacs-evil/evil ~/.emacs.d/evil

# install gruvbox for emacs
[ -d ~/.emacs.d/themes ] || mkdir ~/.emacs.d/themes
curl -L https://raw.github.com/Greduan/emacs-theme-gruvbox/master/gruvbox-theme.el > ~/.emacs.d/themes/gruvbox-theme.el
