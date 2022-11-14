#!/usr/bin/env bash

if [[ `id -u` = "0" ]]; then
	echo 'deb http://download.opensuse.org/repositories/security:/zeek/Debian_11/ /' | sudo tee /etc/apt/sources.list.d/security:zeek.list

	apt update --yes
	apt upgrade --yes
	apt dist-upgrade --yes;
	apt install --yes $(cat progs/apt.list)
	curl -fsSL https://download.opensuse.org/repositories/security:zeek/Debian_11/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/security_zeek.gpg
	apt update && apt install --yes zeek
	git clone https://github.com/maxwets/st.git /tmp/st && make install -C /tmp/st

	cp root/usr/share/xsessions/plasma-i3.desktop /usr/share/xsessions/plasma-i3.desktop
	cp root/etc/cron.hourly/* /etc/cron.hourly/.
	cp root/etc/cron.daily/* /etc/cron.daily/.
	cp root/etc/cron.weekly/* /etc/cron.weekly/.
	cp root/etc/cron.monthly/* /etc/cron.monthly/.
fi


pip install $(cat progs/pip.list)
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

[[ `id -u` != "0" ]] && make config;
