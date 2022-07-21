#!/bin/sh

distro=grep DISTRIB_ID /etc/*-release | cut -d '=' f2

if [ "$EUID" -eq 0 ]
then
	# install programs
	case $distro in
		ManjaroLinux)
			pacman -Syu;
			pacman -Sy $(cat progs/pacman.list);
			pacman -Sy $(cat progs/pacman.list);
			yay -Syu $(cat progs/aur.list)
			;;
		*)
			apt update
			apt install $(cat progs/apt.list)
			;;
	esac

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
		git clone https://github.com/maxwets/st.git /tmp/st
	fi
	make install -C /tmp/st
	pacman -R noto-fonts-emoji
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
