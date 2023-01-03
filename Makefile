CONFIG=$(HOME)/.config
LOCAL=$(HOME)/.local

all: 

backup:
	zip -r $(HOME)/backup.zip $(HOME)/{.local,.config,.profile}

config: dirs profile x11 term i3 rofi tmux zsh vim shell misc

dirs:
	[ -d $(CONFIG) ] || mkdir -p $(CONFIG)
	[ -d $(LOCAL) ]  || mkdir -p $(LOCAL)/{bin,cache,share}
	cp -r .local/bin/*   $(LOCAL)/bin/.
	cp -r .local/share/* $(LOCAL)/share/.

profile:
	cp .profile $(HOME)
	rm -f $(HOME)/.xprofile
	rm -f $(HOME)/.zprofile
	ln -s $(HOME)/.profile $(HOME)/.xprofile
	ln -s $(HOME)/.profile $(HOME)/.zprofile

x11:
	cp -r .config/X11 $(CONFIG)/.
	cp .xsession $(HOME)/.

term:
	cp -r .config/alacritty $(CONFIG)/.

bspwm:
	cp -r .config/bspwm $(CONFIG)/.

sxhkd:
	cp -r .config/sxhkd $(CONFIG)/.

polybar:
	git clone https://github.com/adi1090x/polybar-themes /tmp/polybar-themes && \
		/tmp/polybar-themes/setup.sh

dunst:
	cp -r .config/dunst $(CONFIG)/.

betterlockscreen:
	cp -r .config/betterlockscreen $(CONFIG)/.

i3:
	cp -r .config/i3 $(CONFIG)/.

rofi:
	cp -r .config/rofi $(CONFIG)/.

tmux:
	cp -r .config/tmux $(CONFIG)/.

zsh:
	cp -r .config/zsh/ $(CONFIG)/.

vim: 
	cp -r .config/nvim $(CONFIG)/.

shell:
	cp -r .config/shell $(CONFIG)/.

misc: wget keepmenu felix

keepmenu:
	cp -r .config/keepmenu $(CONFIG)/.

felix:
	cp -r .config/felix $(CONFIG)/.

powershell:
	cp -r .config/powershell/ $(CONFIG)/.

fish:
	cp -r .config/fish $(CONFIG)/.

wget:
	cp -r .config/wget $(CONFIG)/.

