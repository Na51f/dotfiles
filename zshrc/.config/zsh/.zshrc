# Options
setopt HIST_SAVE_NO_DUPS        # No duplicates in zsh history
setopt prompt_subst              # Reevaluate prompt string each time

# Auto-attach to tmux on terminal launch
if [ -z "$TMUX" ]; then
  exec tmux new-session -A -s main
fi

# Completions
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
autoload bashcompinit && bashcompinit
autoload -Uz compinit
compinit

# Keyd keybinds on Linux
# cp /etc/keyd/default.conf $XDG_CONFIG_HOME/keyd/default.conf # save local keyd config to dotfiles repo

# ZSH setup
source $ZDOTDIR/.zshenv
source $ZDOTDIR/aliases
source $ZDOTDIR/functions

# bun completions
[ -s "/Users/sqibo/.bun/_bun" ] && source "/Users/sqibo/.bun/_bun"

# NVM completions
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# kubectl completions
command -v kubectl &>/dev/null && source <(kubectl completion zsh)
[ -f /usr/local/bin/aws_completer ] && complete -C '/usr/local/bin/aws_completer' aws

# ZSH autosuggestions
if command -v brew &>/dev/null; then
  source "$(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh"
fi
bindkey '^w' autosuggest-execute
bindkey '^e' autosuggest-accept
bindkey '^u' autosuggest-toggle
bindkey '^L' vi-forward-word
bindkey '^k' up-line-or-search
bindkey '^j' down-line-or-search

# Host-specific sourcing
if [[ $(uname -n) == "Mac" ]]; then
	source $ZDOTDIR/mac.zsh 2>/dev/null
elif [[ $(uname -n) == "nixos" ]]; then
	source $ZDOTDIR/nixos.zsh 2>/dev/null
fi

# Starship prompt
eval "$(starship init zsh)"
export STARSHIP_CONFIG=~/.config/starship/starship.toml

# Language
export LANG=en_US.UTF-8

# FZF
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow'
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Zoxide - smarter cd command
eval "$(zoxide init zsh)"

# Atuin - shell history
eval "$(atuin init zsh)"

# Direnv
command -v direnv &>/dev/null && eval "$(direnv hook zsh)"

# Start
uwufetch -wr  # display and reads cached info add -i to use images

# Prompt
PROMPT='%f%K{cyan}%F{black} %~ %f%k%F{cyan}%f '
RPROMPT=' %F{blue}%K{blue}%F{black} %n@%m %f%k%F{blue}'

[ -f "$HOME/.local/share/../bin/env" ] && . "$HOME/.local/share/../bin/env"

# Turso
export PATH="$PATH:/Users/sqibo/.turso"

export PATH="$HOME/bin:$PATH"
