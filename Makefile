CONFIG   = $(HOME)/.config/
SCRIPTS  = $(HOME)/.scripts/

all: profile xinit bashrc vimrc emacs inputrc tmuxconf config i3 i3blocks vifm mutt scripts fonts

install:
	sudo ./install.sh

config:
	[ -d .config ]  || mkdir $(CONFIG)
	[ -d .scripts ] || mdkir $(SCRIPTS)

profile: 
	cp .profile .bash_profile .zprofile .xprofile $(HOME)

xinit:
	cp .xinitrc $(HOME)

bashrc:
	cp .bashrc $(HOME)

vimrc: 
	cp .vimrc $(HOME)

inputrc:
	cp .inputrc $(HOME)

emacs:
	cp .emacs $(HOME)

tmuxconf: 
	cp .tmux.conf $(HOME)

i3: 
	cp -r .config/i3 $(CONFIG).

i3blocks:
	cp -r .config/i3blocks $(CONFIG)

vifm:
	cp -r .config/vifm $(CONFIG)

mutt:
	cp -r .config/mutt $(CONFIG).

scripts:
	cp -r .scripts/* $(SCRIPTS)

fonts:
	cp -r .config/fontconfig $(CONFIG).
