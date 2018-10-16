#!/bin/sh
# Generates symlinks from config files in the repo
# to various the appropriate system locations

echo "Need password to edit /etc/fstab"
sudo cp /etc/fstab /etc/fstab.bak && sudo ln -viLsT $PWD/fstab /etc/fstab

