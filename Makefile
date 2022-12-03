CONFIG=$(HOME)/.config
LOCAL=$(HOME)/.local
CACHE=$(HOME)/.cache

all: 

config: dirs profile x11 wm rofi tmux zsh vim misc

dirs:
	[ -d $(LOCAL) ]  || cp -r .local $(LOCAL)
	[ -d $(CONFIG) ] || mkdir -p $(CONFIG)
	[ -d $(CACHE) ]  || mkdir -p $(CACHE)

profile:
	cp .profile $(HOME)
	rm -f $(HOME)/.xprofile
	rm -f $(HOME)/.zprofile
	rm -f $(HOME)/.bash_profile

x11:
	cp -r .config/X11 $(CONFIG)/.

wm: bspwm sxhkd polybar dunst

desktop:
	cp bspwm.desktop /usr/share/xsessions/bspwm.desktop

bspwm:
	cp -r .config/bspwm $(CONFIG)/.

sxhkd:
	cp -r .config/sxhkd $(CONFIG)/.

polybar:
	git clone https://github.com/adi1090x/polybar-themes /tmp/polybar-themes && \
		/tmp/polybar-themes/setup.sh

dunst:
	cp -r .config/dunst $(CONFIG)/.

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

misc: powershell fish shell wget

powershell:
	cp -r .config/powershell/ $(CONFIG)/.

fish:
	cp -r .config/fish $(CONFIG)/.

shell:
	cp -r .config/shell $(CONFIG)/.

wget:
	cp -r .config/wget $(CONFIG)/.

