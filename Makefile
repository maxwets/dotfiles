CONFIG   = $(HOME)/.config/
SCRIPTS  = $(HOME)/.scripts/

all: profile xinit bashrc vimrc emacs tmuxconf i3 i3blocks mutt ranger scripts misc

profile: 
	cp .profile .bash_profile .zprofile .xprofile $(HOME)

xinit:
	cp .xinitrc $(HOME)

bashrc:
	cp .bashrc $(HOME)

vimrc: 
	cp .vimrc $(HOME)

emacs:
	cp .emacs $(HOME)

tmuxconf: 
	cp .tmux.conf $(HOME)

i3: 
	cp -r .config/i3 $(CONFIG).

i3blocks:
	cp -r .config/i3blocks $(CONFIG)

mutt:
	cp -r .config/mutt $(CONFIG).

ranger:
	cp -r .config/ranger $(CONFIG).

scripts:
	cp -r .scripts/* $(SCRIPTS)

misc:
	cp .config/.dirs .config/.files $(CONFIG)
