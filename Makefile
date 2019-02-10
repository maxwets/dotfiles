BASHRC=~/.bashrc
VIMRC=~/.vimrc
EMACS=~/.emacs
TMUXCONF=~/.tmux.conf
PROFILE=~/.profile
BACKUP_DIR=~/dotfiles_backup

all: backup BASHRC VIMRC EMACS PROFILE TMUXCONF 

BASHRC:
	cp .bashrc $(BASHRC)
VIMRC: 
	cp .vimrc $(VIMRC)
TMUXCONF: 
	cp .tmux.conf $(TMUXCONF)
EMACS:
	cp .emacs $(EMACS)
PROFILE:
	cp .profile $(PROFILE)

backup: $(BACKUP_DIR)
	cp $(BASHRC) $(BACKUP_DIR)
	cp $(VIMRC) $(BACKUP_DIR)
	cp $(EMACS) $(BACKUP_DIR)
	cp $(TMUXCONF) $(BACKUP_DIR)
	cp $(PROFILE) $(BACKUP_DIR)

BACKUP_DIR:
	mkdir ~/dotfiles_backup

