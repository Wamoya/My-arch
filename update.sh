#!/bin/bash

# Nvim config
cp --recursive ~/.config/nvim ~/repos/my-arch/configs/

# Package list
cp ~/packages.txt ~/repos/my-arch/

# .bashrc
cp ~/.bashrc ~/repos/my-arch/dotfiles/bashrc

# .bash_aliases
sed -E 's|(/mnt/c/Users/)[^/]+|\1{{WIN_USER}}|g' ~/.bash_aliases > ~/repos/my-arch/dotfiles/bash_aliases

# .zshrc
cp ~/.zshrc ~/repos/my-arch/dotfiles/zshrc

# .zsh_aliases
sed -E 's|(/mnt/c/Users/)[^/]+|\1{{WIN_USER}}|g' ~/.zsh_aliases > ~/repos/my-arch/dotfiles/zsh_aliases
