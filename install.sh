#!/bin/sh

programs=`cat progs | sed -e '/^$/d' -e 's/#.*//g'`
sudo pacman -S $programs
