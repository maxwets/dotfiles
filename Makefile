CONFIG   = $(HOME)/.config/
SCRIPTS  = $(HOME)/.scripts/

all: dirs profile xinit bashrc emacs tmuxconf vim i3 i3blocks vifm scripts fonts

install:
	sudo ./install.sh

dirs:
	[ -d .config ]  || mkdir $(CONFIG)
	[ -d .scripts ] || mdkir $(SCRIPTS)

profile: 
	cp .profile $(HOME)

xinit:
	cp     .xinitrc            $(HOME)

bashrc:
	cp     .bashrc             $(HOME)
	cp     .inputrc            $(HOME)

vim: 
	cp    .config/nviminit.vim $(CONFIG)
	cp    .vimrc               $(HOME)
	cp -r .config/nvim         $(CONFIG)
	cp -r .vim                 $(HOME)

emacs:
	cp    .emacs               $(HOME)

tmuxconf: 
	cp    .tmux.conf           $(HOME)

i3: 
	cp -r .config/i3           $(CONFIG)

i3blocks:
	cp -r .config/i3blocks     $(CONFIG)

vifm:
	cp -r .config/vifm         $(CONFIG)

scripts:
	cp -r .scripts/*           $(SCRIPTS)

fonts:
	cp -r .config/fontconfig   $(CONFIG).
