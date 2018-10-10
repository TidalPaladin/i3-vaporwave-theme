#!/bin/zsh
# file: .profile
# Runs on login
export PATH="$PATH:$HOME/.scripts"
export EDITOR="/usr/bin/vim"
export BROWSER="firefox"
export TERMINAL="urxvt"
export SHELL="/usr/bin/zsh"

#[ -f ~/.zshrc ] && source ~/.zshrc

export QT_QPA_PLATFORMTHEME="qt5ct"
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"

# Run pywal to apply color scheme
wal -R

# Run script to remap caps lock
xmodmap "$HOME/.scripts/.xmodmap-caps"
