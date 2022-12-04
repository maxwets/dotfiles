CONFIG=$(HOME)/.config
LOCAL=$(HOME)/.local
CACHE=$(HOME)/.cache

all: 

config: dirs profile x11 term i3 rofi tmux zsh vim shell misc

dirs:
	[ -d $(LOCAL) ]  || cp -r .local $(LOCAL)
	[ -d $(CONFIG) ] || mkdir -p $(CONFIG)
	[ -d $(CACHE) ]  || mkdir -p $(CACHE)

profile:
	cp .profile $(HOME)
	rm -f $(HOME)/.xprofile
	rm -f $(HOME)/.zprofile
	rm -f $(HOME)/.bash_profile
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

misc: powershell fish shell wget

powershell:
	cp -r .config/powershell/ $(CONFIG)/.

fish:
	cp -r .config/fish $(CONFIG)/.

wget:
	cp -r .config/wget $(CONFIG)/.

