BASHRC=~/.bashrc
VIMRC=~/.vimrc
TMUXCONF=~/.tmux.conf
BACKUP_DIR=~/dotfiles_backup

all: backup BASHRC VIMRC TMUXCONF 

BASHRC:
	cp .bashrc $(BASHRC)
VIMRC: 
	cp .vimrc $(VIMRC)
TMUXCONF: 
	cp .tmux.conf $(TMUXCONF)

backup: $(BACKUP_DIR)
	cp $(BASHRC) $(BACKUP_DIR)
	cp $(VIMRC) $(BACKUP_DIR)
	cp $(TMUXCONF) $(BACKUP_DIR)

BACKUP_DIR:
	mkdir ~/dotfiles_backup


