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

# Homebrew (ARM64 macOS)
if [[ -d /opt/homebrew ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Default editor
export EDITOR="nvim"
export VISUAL="nvim"
export SUDO_EDITOR="nvim"
export OBSIDIAN_MAIN_DIR="$HOME"/notes/main
export OBSIDIAN_WORK_DIR="$HOME"/notes/work

# zsh history file
export HISTFILE="$XDG_STATE_HOME"/zsh/history
export HISTSIZE=9999999999
export SAVEHIST=$HISTSIZE
export ZSH_COMPDUMP="$XDG_CACHE_HOME/zsh/zcompdump-$ZSH_VERSION"

# Programming
export NPM_CONFIG_INIT_MODULE="$XDG_CONFIG_HOME"/npm/config/npm-init.js
export NPM_CONFIG_CACHE="$XDG_CACHE_HOME"/npm
export NPM_CONFIG_TMP="$XDG_RUNTIME_DIR"/npm
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
export DOCKER_CONFIG="$XDG_CONFIG_HOME/docker"
export NVM_DIR="$XDG_DATA_HOME"/nvm
export NODE_REPL_HISTORY="$XDG_STATE_HOME"/node_repl_history
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export PYTHONSTARTUP="$XDG_CONFIG_HOME"/python/pythonrc
export MPLCONFIGDIR="$XDG_CACHE_HOME"/matplotlib
export ANDROID_USER_HOME="$XDG_DATA_HOME"/android

# macOS-only PATH additions
if [[ "$(uname -s)" == "Darwin" ]]; then
  export PATH="$(brew --prefix openjdk)/bin:$PATH"
  export PATH="/Library/TeX/texbin:$PATH"
fi

# Go
export GOPATH="$XDG_DATA_HOME/go"
export PATH="$GOPATH/bin:$PATH"

# Nix
export NIX_CONF_DIR=$HOME/.config/nix
if [[ "$(uname -s)" == "Darwin" ]]; then
  export PATH=/run/current-system/sw/bin:$PATH
fi
if [ -e '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh' ]; then
    . '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh'
fi

# PATH additions
export PATH="/opt/homebrew/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export PATH="$CARGO_HOME/bin:$PATH"

# Scripts
export GLOBAL_SCRIPTS_DIR="$XDG_CONFIG_HOME"/scripts

# BW_SESSION: set via bw unlock, e.g. export BW_SESSION="$(bw unlock --raw)"
