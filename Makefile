PROFILE  = ~/.profile
BASHRC   = ~/.bashrc
VIMRC    = ~/.vimrc
EMACS    = ~/.emacs
TMUXCONF = ~/.tmux.conf
CONFIG   = ~/.config/

all: profile bashrc vimrc emacs tmuxconf i3 mutt ranger

profile: 
	cp .profile $(PROFILE)

bashrc:
	cp .bashrc $(BASHRC)

vimrc: 
	cp .vimrc $(VIMRC)

emacs:
	cp .emacs $(EMACS)

tmuxconf: 
	cp .tmux.conf $(TMUXCONF)

i3: 
	cp -r .config/i3 $(CONFIG).

mutt:
	cp -r .config/mutt $(CONFIG).

ranger:
	cp -r .config/ranger $(CONFIG).
