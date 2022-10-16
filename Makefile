<<<<<<< HEAD
CONFIG=$(HOME)/.config
LOCAL=$(HOME)/.local
CACHE=$(HOME)/.cache

all: 

config: dirs profile x11 i3 rofi tmux zsh vim fonts shell

dirs:
	[ -d $(HOME)/docs ]	|| mkdir $(HOME)/docs
	[ -d $(HOME)/pics ]	|| mkdir $(HOME)/pics
	[ -d $(HOME)/src ] 	|| mkdir $(HOME)/src
	[ -d $(HOME)/dl ]   || mkdir $(HOME)/dl
	[ -d $(LOCAL) ]     || cp -r .local $(LOCAL)
	[ -d $(CONFIG) ]    || mkdir $(CONFIG)
	[ -d $(CACHE) ]	    || mkdir $(CACHE)

profile:
	cp    .profile           $(HOME)
	rm -f $(HOME)/.xprofile
	rm -f $(HOME)/.zprofile
	rm -f $(HOME)/.bash_profile
	ln -s $(HOME)/.profile   $(HOME)/.xprofile
	ln -s $(HOME)/.profile   $(HOME)/.zprofile
	ln -s $(HOME)/.profile   $(HOME)/.bash_profile

x11:
	cp -r .config/X11        $(CONFIG)/.

i3:
	cp -r .config/i3         $(CONFIG)/.

rofi:
	cp -r .config/rofi       $(CONFIG)/.

tmux:
	cp -r .config/tmux       $(CONFIG)/.

zsh:
	cp -r .config/zsh/       $(CONFIG)/.


fish:
	cp -r .config/fish       $(CONFIG)/.

vim: 
	cp -r .config/vim        $(CONFIG)/.

fonts:
	cp -r .config/fontconfig $(CONFIG)/.

shell:
	cp -r .config/shell      $(CONFIG)/.

