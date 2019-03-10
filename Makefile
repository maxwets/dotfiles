BASHRC=~/.bashrc
VIMRC=~/.vimrc
EMACS=~/.emacs
TMUXCONF=~/.tmux.conf
I3=~/.i3
PROFILE=~/.profile

all: I3 BASHRC VIMRC EMACS PROFILE TMUXCONF 

BASHRC:
	cp .bashrc $(BASHRC)
VIMRC: 
	cp .vimrc $(VIMRC)
I3:
	cp -r .i3 $(I3)
TMUXCONF: 
	cp .tmux.conf $(TMUXCONF)
EMACS:
	cp .emacs $(EMACS)
PROFILE: 
	cp .profile $(PROFILE)
