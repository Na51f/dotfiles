#!/bin/zsh

# This script copies the contents of $XDG_CONFIG_HOME/zsh/etczshenv
# to /etc/zsh/zshenv

cp -f ./etczshenv /etc/zsh/zshenv
