# Options
setopt HIST_SAVE_NO_DUPS # No duplicates in zsh history

cp /etc/keyd/default.conf $XDG_CONFIG_HOME/keyd/default.conf # save local keyd config to dotfiles repo

# Alias files
source $ZDOTDIR/aliases

# ZSH text completion
autoload -U compinit; compinit
_comp_options+=(globdots) # With hidden files
source $ZDOTDIR/zsh-completion # ZSH completion configuration

# The written text on your terminal line before you start typing
fpath=(./zshprompt $fpath)
autoload -Uz zsh-prompt; zsh-prompt

# Misc
uwufetch -iwr   # display and reads cached info

