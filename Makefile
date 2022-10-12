CONFIG	 = $(HOME)/.config

all: 

config: dirs profile xinit i3 rofi tmux bashrc zsh fish vim fonts shell

dirs:
	[ -d $(HOME)/docs ]       || mkdir $(HOME)/docs
	[ -d $(HOME)/pics ]       || mkdir $(HOME)/pics
	[ -d $(HOME)/src ]        || mkdir $(HOME)/src
	[ -d $(HOME)/dl ]         || mkdir $(HOME)/dl
	[ -d $(HOME)/.config ]    || mkdir $(CONFIG)
	[ -d $(HOME)/.local ]     || cp -r .local $(HOME)/.local
	[ -d $(HOME)/.cache ]     || mkdir $(HOME)/.cache

profile:
	cp    .profile             $(HOME)
	rm -f $(HOME)/.zprofile
	ln -s $(HOME)/.profile     $(HOME)/.zprofile
	rm -f $(HOME)/.bash_profile
	ln -s $(HOME)/.profile     $(HOME)/.bash_profile
	rm -f $(HOME)/.xprofile 
	ln -s $(HOME)/.profile     $(HOME)/.xprofile

xinit:
	cp    .xinitrc             $(HOME)

i3:
	cp -r .config/i3           $(CONFIG)

rofi:
	cp -r .config/rofi         $(CONFIG)

tmux:
	rm -f $(HOME)/.tmux.conf
	cp -r .config/tmux         $(CONFIG)
	ln -s $(CONFIG)/tmux/tmux.conf $(HOME)/.tmux.conf  

bashrc:
	cp    .bashrc	           $(HOME)
	cp    .inputrc             $(HOME)

zsh:
	cp -r .config/zsh          $(CONFIG)

fish:
	cp -r .config/fish         $(CONFIG)

vim: 
	rm -rf $(HOME)/.vim
	rm -rf $(HOME)/.vimrc
	cp -r .config/nvim         $(CONFIG)
	cp    .config/nviminit.vim $(CONFIG)
	ln -s $(CONFIG)/nvim/init.vim $(HOME)/.vimrc
	ln -s $(HOME)/.config/nvim $(HOME)/.vim

fonts:
	cp -r .config/fontconfig   $(CONFIG)

shell:
	cp -r .config/shell        $(CONFIG)
