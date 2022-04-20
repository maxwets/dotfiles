#!/bin/sh

sort -o progs progs

# add ppa's
add-apt-repository -y ppa:xorg-edgers/ppa
add-apt-repository -y ppa:regolith-linux/stable

# install programs
apt update
apt -y install < progs

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

# install darktile
curl -s "https://raw.githubusercontent.com/liamg/darktile/main/scripts/install.sh" | sudo bash

# install darktile themes
[ -d ~/.config/darktile ]        || mkdir ~/.config/darktile
[ -d ~/.config/darktile-themes ] || git clone git@github.com:liamg/darktile-themes.git ~/.config/darktile-themes.git
touch ~/.config/darktile/theme.yaml
ln -sf ~/.config/darktile/darktile-themes/themes/Afterglow.yaml ~/.config/darktile/theme.yaml

# install radare2
if [ ! -d /tmp/radare2 ]
then
	git clone https://github.com/radareorg/radare2 /tmp/radare2
fi
/tmp/radare2/sys/install.sh

# install pwndbg
if [ -d /.local/bin/pwndbg ]
then
	git clone https://github.com/pwndbg/pwndbg /.local/bin/pwndbg
fi
/.local/bin/pwndbg/setup.sh

# install fish
curl -L https://get.oh-my.fish > tmp/omf
fish /tmp/omf --path=~/.local/share/omf --config=~/.config/omf
omf install spacefish

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
