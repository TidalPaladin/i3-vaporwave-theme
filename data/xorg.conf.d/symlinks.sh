#!/bin/sh
# Generates symlinks from config files in the repo
# to various the appropriate system locations

# Symlinks to /etc/X11/xorg.conf.d/*
# Requires sudo
ls -A1 | grep -Ev 'symlinks.sh' | sudo parallel --tty ln -vLsiT $PWD/{} /etc/X11/xorg.conf.d/{}

