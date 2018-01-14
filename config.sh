#!/bin/bash

# This file just creates a link for all the dotfiles in the /home/$USER/. 
link .bashrc /home/`whoami`/.bashrc
link .vimrc /home/`whoami`/.vimrc
link .tmux.conf /home/`whoami`/.tmux.conf

# After creating all links, we need to exit and launch a new terminal
killall tmux
exit
