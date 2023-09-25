#!/usr/bin/env bash

if [[ $# -eq 0 ]]; then
	echo -e "Usage: $0 <server|workstation>";
	echo -e "\tserver: will only install the necessary tools for a server";
	echo -e "\tworkstation: will install all the GUI tools as well";
	echo -e "If the script is run as root, it will install the programs and modify the defaults in /etc";
	echo -e "If the script is run as user, it will copy the .config and .local files in the home directory of the user";
fi

if [[ "$EUID" = 0 ]]; then
	echo -e "Copying the default files in /etc";
	cp ./etc/bash.bashrc /etc/bash.bashrc
	cp ./etc/screenrc /etc/screenrc
	cp ./etc/vimrc /etc/vim/vimrc
	echo -e "Installing the default programs...";
	if [[ $1 = "server" ]]; then
		apt install -y \
			bash \
			batcat \
			cowsay \
			curl \
			dunst \
			etckeeper \
			figlet \
			fzf \
			git \
			gzip \
			jq \
			make \
			man-db \
			neovim \
			nmap \
			python3 \
			screen \
			tmux \
			tree \
			wget \
			xxd \
			zsh \
			zsh-autocompletion \
			zsh-common \
			zsh-syntax-highlighting;
	elif [[ $1 = "workstation" ]]; then
		apt install -y \
			alacritty \
			alsa-utils \
			autorandr \
			bash \
			batcat \
			bluetooth \
			brightnessctl \
			cowsay \
			curl \
			dunst \
			dunst \
			etckeeper \
			feh \
			figlet \
			fzf \
			git \
			gzip \
			i3 \
			jq \
			keepasscx \
			maim \
			make \
			man-db \
			neovim \
			nmap \
			numlockx \
			pamixer \
			picom \
			polybar \
			python3 \
			remmina \
			screen \
			sxiv \
			texlive-lualatex \
			texlive-xelatex \
			thunar \
			tmux \
			tmux \
			tree \
			wget \
			xxd \
			zathura \
			zsh \
			zsh-autocompletion \
			zsh-common \
			zsh-syntax-highlighting;
	fi
else
	echo -e "Copying the config files into the home directory";
	cp .profile "$HOME/.profile";
	cp .xsession "$HOME/.xsession";
	cp -r .config/* "$HOME/.config/.";
	cp .local/bin/* "$HOME/local/bin/.";
	cp .local/share/* "$HOME/local/share/.";
fi
