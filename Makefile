BASHRC=~/.bashrc
VIMRC=~/.vimrc
EMACS=~/.emacs
TMUXCONF=~/.tmux.conf
I3CONF=~/.i3/config
PROFILE=~/.profile

all: I3CONF BASHRC VIMRC EMACS PROFILE TMUXCONF 

BASHRC:
	cp .bashrc $(BASHRC)
VIMRC: 
	cp .vimrc $(VIMRC)
I3CONF:
	cp .i3/config $(I3CONF)
TMUXCONF: 
	cp .tmux.conf $(TMUXCONF)
EMACS:
	cp .emacs $(EMACS)
PROFILE:
	cp .profile $(PROFILE)
