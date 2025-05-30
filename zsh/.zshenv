# RUN THE FOLLOWING TO MAKE ZSH FILES OBTAINABLE BY ZSH
# sudo ./zshsetup.sh

# XDG Directories
if [[ -z "$XDG_DATA_HOME" ]]
then
        export XDG_DATA_HOME="$HOME/.local/share"
fi
if [[ -z "$XDG_CACHE_HOME" ]]
then
        export XDG_CACHE_HOME="$HOME/.cache"
fi
if [[ -z "$XDG_STATE_HOME" ]]
then
        export XDG_STATE_HOME="$HOME/.local/state"
fi


# Default editor for CLI applications (sometimes applications open nano or something similar by default)
export EDITOR="nvim"
export VISUAL="nvim"
export SUDO_EDITOR="nvim"

# zsh history file
export HISTFILE="$ZDOTDIR/zhistory"
export HISTSIZE=9999999999
export SAVEHIST=$HISTSIZE


