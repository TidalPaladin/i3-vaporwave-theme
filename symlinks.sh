#!/bin/sh
# Generates symlinks from config files in the repo
# to various the appropriate system locations

# Create links locally
ln -sfvL .vim .nvim
ln -sLvf .vimrc .nvimrc
ln -fvsL .profile .xprofile
ln -vfsL .zshrc .bashrc

# Symlinks to home dir, excluding .config
ls -A1 | grep -Ev '.powerline|.git|.config|fstab' | parallel ln -vfLsT $PWD/{} $HOME/{}
ln -vfLsT $PWD/powerlevel9k $HOME/.oh-my-zsh/themes/powerlevel9k

# Symlinks to .config subdirs, except for Code
cd .config
ls -A1 | grep -v 'Code' | parallel ln -vfLsT $PWD/{} $HOME/.config/{}

# VSCode config separately
ln -vfsL $PWD/Code/User/settings.json $HOME/.config/Code/User/settings.json

