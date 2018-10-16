#!/bin/sh
# Generates symlinks from config files in the repo
# to various the appropriate system locations

ln -vfsL .vim .nvim
ln -vfsL .vimrc .nvimrc
ln -vfsL .zshrc .bashrc
ln -vfsL .profile .xprofile

ls -A1 | grep -Ev 'symlinks.sh' | parallel --tty ln -visLT $PWD/{} $HOME/{}
