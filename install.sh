#!/bin/bash

if [ $EUID == '0' ]
then
	if [ $1 == "apt" ]
	then
		cp progs/apt-src.list /etc/apt/sources.list
		apt update
		apt install $(cat progs/apt.list)
	elif [ $1 == "pacman" ]
	then
		pacman -Syu;
		pacman -R noto-fonts-emoji
		pacman -Sy $(cat progs/pacman.list);
	elif [ $1 == "yay" ]
	then
		yay -Syu $(cat progs/aur.list)
	fi

	if [ ! -d /tmp/dmenu ]
	then
		git clone https://github.com/maxwets/dmenu.git /tmp/dmenu
		make install -C /tmp/dmenu
	fi

	if [ ! -d /tmp/st ]
	then
		git clone https://github.com/maxwets/st.git /tmp/st
		make install -C /tmp/st
	fi
fi

# install vim-plug for vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# install vim-plug for neovim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
