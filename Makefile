CONFIG   = $(HOME)/.config/
SCRIPTS  = $(HOME)/.local/bin/

all: dirs profile xinit bashrc emacs tmuxconf vim i3 i3blocks scripts fonts

install:
	./install.sh

dirs:
	[ -d $(HOME)/.config ]    || mkdir $(CONFIG)
	[ -d $(HOME)/.local/bin ] || mkdir $(SCRIPTS)

profile: 
	cp    .profile               $(HOME)
	cp    .bash_profile          $(HOME)
	cp    .xprofile              $(HOME)
	cp    .zprofile              $(HOME)

xinit:
	cp    .xinitrc               $(HOME)

bashrc:
	cp    .bashrc                $(HOME)
	cp    .inputrc               $(HOME)

vim: 
	cp    .config/nviminit.vim   $(CONFIG)
	cp    .vimrc                 $(HOME)
	cp -r .config/nvim           $(CONFIG)
	cp -r .vim                   $(HOME)

emacs:
	cp    .emacs                 $(HOME)

tmuxconf: 
	cp    .tmux.conf             $(HOME)

i3: 
	cp -r .config/i3             $(CONFIG)

i3blocks:
	cp -r .config/i3blocks       $(CONFIG)

scripts:
	cp -r .local/bin/*           $(SCRIPTS)

fonts:
	cp -r .config/fontconfig     $(CONFIG)
