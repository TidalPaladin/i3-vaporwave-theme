#!/bin/sh
# Generates symlinks from config files in the repo
# to various the appropriate system locations

ln -viLsT $PWD/icons $HOME/.icons
ln -viLsT $PWD/powerlevel9k $HOME/.oh-my-zsh/themes/powerlevel9k
ln -viLsT $PWD/ipython_config.py $HOME/.ipython/profile_default/ipython_config.py

sudo cp /etc/fstab /etc/fstab.bak
sudo ln -viLsT $PWD/fstab /etc/fstab

