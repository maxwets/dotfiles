#!/bin/bash

# This file just creates a link for all the dotfiles in the /home/$USER/. 
if [ `whoami` -nq "root" ]; then
	rm /home/`whoami`/.bashrc
	rm /home/`whoami`/.vimrc
	rm /home/`whoami`/.tmux.conf
	link .bashrc /home/`whoami`/.bashrc
	link .vimrc /home/`whoami`/.vimrc
	link .tmux.conf /home/`whoami`/.tmux.conf
else 
	rm /root/.bashrc
	rm /root/.vimrc
	rm /root/.tmux.conf
	link .bashrc /root/.bashrc
	link .vimrc /root/.vimrc
	link .tmux.conf /root/.tmux.conf
fi

# After creating all links, we need to exit and launch a new terminal
killall tmux
exit
