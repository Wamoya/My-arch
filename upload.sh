#!/bin/bash

# Nvim config
cp --recursive ~/.config/nvim ~/repos/My-arch/configs/

# Package list
cp ~/packages.txt ~/repos/My-arch/

# .bashrc
cp ~/.bashrc ~/repos/My-arch/dotfiles/bashrc

# .bash_aliases
sed -E 's|(/mnt/c/Users/)[^/]+|\1{{WIN_USER}}|g' ~/.bash_aliases > ~/repos/My-arch/dotfiles/bash_aliases

# .zshrc
cp ~/.zshrc ~/repos/My-arch/dotfiles/zshrc

# .zsh_history
sed -E 's|(/mnt/c/Users/)[^/]+|\1{{WIN_USER}}|g' ~/.zsh_aliases > ~/repos/My-arch/dotfiles/zsh_aliases
