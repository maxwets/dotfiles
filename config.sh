#!/bin/bash

# This file just creates a link for all the dotfiles in the $HOME directory. 
rm $HOME/.bashrc
rm $HOME/.vimrc
rm $HOME/.tmux.conf
link .bashrc $HOME/.bashrc
link .vimrc $HOME/.vimrc
link .tmux.conf $HOME/.tmux.conf

# After creating all links, we need to exit and launch a new terminal
killall tmux
exit
