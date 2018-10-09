#!/bin/sh
# file: .profile
# Runs on login

export QT_QPA_PLATFORMTHEME="qt5ct"
export EDITOR="/usr/bin/vim"
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
export BROWSER=firefox

sudo -n loadkeys ~/.scripts.ttymaps.kmap 2>/dev/null
