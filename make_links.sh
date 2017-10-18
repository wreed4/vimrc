#!/bin/bash

mkdir -p ~/.config  # check for existence of .config and create if it doesn't exist
[[ -f ~/.config/nvim ]] && mv ~/.config/nvim ~/.config/nvim.old
ln -s ~/.vim ~/.config/nvim 
