#   file: .zshrc
#   Requires powerline, powerlevel9k, dmenu, zsh,
#   neofetch, loadkeys


#
#   PATH
#
#
export PATH=$HOME/.local/bin:$HOME/.platformio/penv/bin:$PATH
export SSH_KEY_PATH="~/.ssh/rsa_id"
export EDITOR='/usr/bin/vim'
bindkey -v # VIM in console
set laststatus=2
export KEYTIMEOUT=1
export TERM="xterm-256color"
export SW="$HOME/Dropbox/Software"
export CS3340="$SW/CS3340"
export CS6360="$SW/CS6360"
export CS6375="$SW/CS6375"
ZSH=/usr/share/oh-my-zsh/

#
#   ALIAS
#
#
alias utd-vpn='sudo openconnect vpn.utdallas.edu'
alias pia="bash ~/.pia.sh"
alias now="date +%Y-%m-%d.%H:%M:%S"
alias tos="/opt/thinkorswim/thinkorswim"
alias SS="sudo systemctl"
alias gac="git add . && git commit -m"
alias gpam="git push origin master"
alias rewal="wal -i '~/Pictures/Wallpapers/bttf.jpg' --saturate 0.75 -s -a 95"
alias ls='ls -hN --color=auto --group-directories-first'
alias ccat="highlight --out-format=ansi"


#
#
# THEME
#
#
(cat ~/.cache/wal/sequences &)
source ~/.cache/wal/colors-tty.sh
POWERLEVEL9K_MODE='awesome-fontconfig'
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_VCS_GIT_ICON=''
POWERLEVEL9K_VCS_STAGED_ICON='\u00b1'
POWERLEVEL9K_VCS_UNTRACKED_ICON='\u25CF'
POWERLEVEL9K_VCS_UNSTAGED_ICON='\u00b1'
POWERLEVEL9K_VCS_INCOMING_CHANGES_ICON='\u2193'
POWERLEVEL9K_VCS_OUTGOING_CHANGES_ICON='\u2191'
POWERLEVEL9K_STATUS_OK='false'
POWERLEVEL9K_VI_COMMAND_MODE_STRING="N"
POWERLEVEL9K_VI_INSERT_MODE_STRING="I"
POWERLEVEL9K_CARRIAGE_RETURN_ICON="\uf467"
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='yellow'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='yellow'
POWERLEVEL9K_ROOT_INDICATOR_BACKGROUND="red"
POWERLEVEL9K_ROOT_INDICATOR_FOREGROUND="white"
POWERLEVEL9K_ROOT_ICON='\u26A1'
POWERLEVEL9K_DIR_BACKGROUND='8a18af'
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(root_indicator context dir vcs vi_mode dir_writable)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status background_jobs virtualenv rbenv rvm time)
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_SHORTEN_DELIMITER=""
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"
POWERLEVEL9K_TIME_FORMAT="%D{%H:%M:%S}"

# Helps to hide username at console prompt?
export DEFAULT_USER="$USER"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"


# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(
  git
  vi-mode
  zsh-syntax-highlighting
)


# ZSH config
ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi
source $ZSH/oh-my-zsh.sh
ZSH_HIGHLIGHT_HILIGHTERS=(main brackets pattern cursor)
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Fix ls colors for sticky bit directories (mounted drives)
#LS_COLORS=$LS_COLORS:'ow=0;36;43:' ; export LS_COLORS

neofetch
