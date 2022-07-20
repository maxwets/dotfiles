#!/bin/sh

if [ "$EUID" -eq 0 ]
then
	# install programs
	sort -o progs progs
	pacman -Syu
	pacman -Sy $(cat progs)

	# enable docker
	sudo systemctl start docker.service
	sudo systemctl enable docker.service
	sudo usermod -aG docker $USER

	# install dmenu
	if [ ! -d /tmp/dmenu ]
	then
		git clone https://github.com/maxwets/dmenu.git /tmp/dmenu
	fi
	make install -C /tmp/dmenu

	# install st
	if [ ! -d /tmp/st ]
	then
		git clone https://github.com/LukeSmithxyz/st.git /tmp/st
	fi
	make install -C /tmp/st
fi

# install pwndbg
if [ -d /.local/bin/pwndbg ]
then
	git clone https://github.com/pwndbg/pwndbg /.local/bin/pwndbg
fi

/.local/bin/pwndbg/setup.sh

# install vim-plug for vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# install vim-plug for neovim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# install evil-mode for emacs
git clone https://github.com/emacs-evil/evil ~/.emacs.d/evil

# install gruvbox for emacs
[ -d ~/.emacs.d/themes ] || mkdir ~/.emacs.d/themes
curl -L https://raw.github.com/Greduan/emacs-theme-gruvbox/master/gruvbox-theme.el > ~/.emacs.d/themes/gruvbox-theme.el
