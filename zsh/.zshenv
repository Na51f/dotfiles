# XDG
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_STATE_HOME="$HME/.local/state"

# Default editor for CLI applications (sometimes applications open nano or something similar by default
export EDITOR="nvim"
export VISUAL="nvim"

# Home of all zsh files
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

# zsh history file
export HISTFILE="$ZDOTDIR/.zhistory"
export HISTSIZE=9999999999
export SAVEHIST=$HISTSIZE
