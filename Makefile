CONFIG	 = $(HOME)/.config/
SCRIPTS  = $(HOME)/.local/bin/

all: dirs profile xinit i3 tmuxconf bashrc zshrc fish emacs vim gdbinit scripts fonts

install:
	./install.sh

dirs:
	[ -d $(HOME)/.config ]    || mkdir $(CONFIG)
	[ -d $(HOME)/.local/bin ] || mkdir $(SCRIPTS)

profile:
	cp    .profile             $(HOME)
	cp    .bash_profile        $(HOME)
	cp    .xprofile            $(HOME)
	cp    .zprofile            $(HOME)

xinit:
	cp    .xinitrc             $(HOME)

i3:
	cp -r .config/i3           $(CONFIG)
	cp plasma-i3.desktop       /usr/share/xsessions/plasma-i3.desktop
	cp -r .config/i3blocks     $(CONFIG)

tmuxconf:
	cp    .tmux.conf           $(HOME)

bashrc:
	cp    .bashrc	           $(HOME)
	cp    .inputrc             $(HOME)

zshrc:
	cp    .zshrc               $(HOME)

fish:
	cp -r .config/fish         $(CONFIG)

vim: 
	cp    .config/nviminit.vim $(CONFIG)
	cp    .vimrc               $(HOME)
	cp -r .config/nvim         $(CONFIG)
	cp -r .vim                 $(HOME)

emacs:
	cp    .emacs               $(HOME)

gdbinit:
	cp    .gdbinit             $(HOME)

scripts:
	cp -r .local/bin/*         $(SCRIPTS)

fonts:
	cp -r .config/fontconfig   $(CONFIG)
