#!/usr/bin/env bash
set -euo pipefail

# Shared packages (all platforms)
shared="git cava fuzzel gtk-3 gtk-4 zshrc alacritty noctalia qt5ct qt6ct kdeglobals dconf zellij nix atuin"

# Remove broken symlinks in $HOME and ~/.config before stowing
find "$HOME" -maxdepth 3 -xtype l -delete 2>/dev/null || true

# Platform-specific packages
case "$(uname -s)" in
  Darwin)
    stow --target="$HOME" $shared aerospace karabiner kitty niri kanata keyd \
                         hammerspoon skhd sketchybar kindavim
    ;;
  Linux)
    stow --target="$HOME" $shared kitty niri kanata keyd
    ;;
  *)
    echo "Unknown OS: $(uname -s)"
    exit 1
    ;;
esac
