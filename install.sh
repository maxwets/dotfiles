#!/usr/bin/env bash

RED=`tput bold && tput setaf 1`
BLUE=`tput bold && tput setaf 4`

function RED() {
	echo -e "\n${RED}${1}${NC}"
}
function BLUE() {
	echo -e "\n${BLUE}${1}${NC}"
}

if [[ `id -u` = "0" ]]; then
	RED "Updating packages..."
	apt update --yes

	RED "Upgrading packages..."
	apt upgrade --yes
	apt dist-upgrade --yes;

	RED "Installing programs via apt..."
	apt install --yes $(cat progs/apt.list)

	RED "Installing python modules..."
	pip install $(cat progs/pip.list)

	RED "Installing zeek"
	echo 'deb http://download.opensuse.org/repositories/security:/zeek/Debian_11/ /' | sudo tee /etc/apt/sources.list.d/security:zeek.list
	curl -fsSL https://download.opensuse.org/repositories/security:zeek/Debian_11/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/security_zeek.gpg
	apt update && apt install zeek

	RED "Installing st..."
	git clone https://github.com/maxwets/st.git /tmp/st && make install -C /tmp/st

	RED "Setting up WM..."
	cp .local/share/plasma-i3.desktop /usr/share/xsessions/plasma-i3.desktop
fi


BLUE "Installing vim-plug..."
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

BLUE "Making config..."
make config
