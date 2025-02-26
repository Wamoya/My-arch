#!/bin/bash

# Nvim config
cp --recursive ~/.config/nvim ~/repos/My-arch/configs/

# Package list
cp ~/packages.txt ~/repos/My-arch/

# .bashrc
cp ~/.bashrc ~/repos/My-arch/dotfiles/bashrc

# .bash_aliases
sed -E 's|(/mnt/c/Users/)[^/]+|\1{{WIN_USER}}|g' ~/.bash_aliases > ~/repos/My-arch/dotfiles/bash_aliases
