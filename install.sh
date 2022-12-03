#!/usr/bin/env bash


if [[ `id -u` = "0" ]]; then
	apt update --yes && apt upgrade --yes && apt dist-upgrade --yes;
	apt install --yes $(cat progs/apt.list)

	LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep '"tag_name":' |  sed -E 's/.*"v*([^"]+)".*/\1/') && \
	curl -Lo /tmp/lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz" && \
	tar xf /tmp/lazygit.tar.gz -C /usr/local/bin lazygit
	
	curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

	git clone https://github.com/kyoheiu/felix.git /tmp/felix && \
	cd /tmp/felix && cargo install --path .

fi


pip install $(cat progs/pip.list)
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

[[ `id -u` != "0" ]] && make config;

