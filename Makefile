CONFIG	 = $(HOME)/.config/
SCRIPTS  = $(HOME)/.local/bin/

all: 

config: dirs profile xinit i3 tmuxconf bashrc zshrc fish vim gdbinit scripts fonts aliases

dirs:
	[ -d $(HOME)/Documents ]  || mkdir $(HOME)/Documents
	[ -d $(HOME)/Pictures ]   || mkdir $(HOME)/Pictures
	[ -d $(HOME)/Github ]     || mkdir $(HOME)/Github
	[ -d $(HOME)/Downloads ]  || mkdir $(HOME)/Downloads
	[ -d $(HOME)/.config ]    || mkdir $(CONFIG)
	[ -d $(HOME)/.local ]     || mkdir $(HOME).local
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

i3-plasma:
	cp plasma-i3.desktop       /usr/share/xsessions/plasma-i3.desktop

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
	rm -rf                     $(HOME)/.vim
	cp -r .vim                 $(HOME)

gdbinit:
	cp    .gdbinit             $(HOME)

scripts:
	cp -r .local/bin/*         $(SCRIPTS)

fonts:
	cp -r .config/fontconfig   $(CONFIG)

aliases:
	cp -r .config/aliases      $(CONFIG)
