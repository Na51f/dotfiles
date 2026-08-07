#!/usr/bin/env bash
set -euo pipefail

# Shared packages (all platforms)
shared="git btop cava fuzzel gtk-3 gtk-4 zshrc alacritty noctalia qt5ct qt6ct kdeglobals dconf"

# Platform-specific packages
case "$(uname -s)" in
  Darwin)
    stow --target="$HOME" $shared aerospace karabiner kitty niri kanata keyd
    ;;
  Linux)
    stow --target="$HOME" $shared kitty niri kanata keyd
    ;;
  *)
    echo "Unknown OS: $(uname -s)"
    exit 1
    ;;
esac
