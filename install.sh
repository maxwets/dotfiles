#!/bin/bash

programs=`cat progs | sed -e '/^$/d' -e '/^#/d' -e 's/#.*//g'` 
sudo pacman -S $programs
