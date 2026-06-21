#! /bin/zsh

# This script copies the contents of $XDG_CONFIG_HOME/zsh/etczshenv
# to /etc/zsh/zshenv

file_path="/etc/zsh/zshenv"

if [[ ! -f "$file_path" || ! -s "$file_path" ]]; then
	sudo cat etczshenv >> /etc/zsh/zshenv
fi

source /etc/zsh/zshenv
