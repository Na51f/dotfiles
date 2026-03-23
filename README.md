# Dotfiles

GNU Stow-managed config files for both macOS (Metasepia) and NixOS (Loligo).

## Install

```bash
cd ~/devel/dotfiles
./setup.sh
```

Or manually:
```bash
stow --target="$HOME" nvim git kitty btop cava fuzzel niri kanata keyd gtk-3 gtk-4
```

## Structure

Each package lives in its own directory with the structure that should appear in `~/.config/`:

- `nvim/` — Neovim config
- `git/` — Git config, ignore, and templates
- `kitty/` — Terminal emulator
- `niri/` — NixOS window manager (Loligo-specific)
- `btop/`, `cava/`, `fuzzel/` — Tools and themes
- `kanata/`, `keyd/` — Keyboard configuration
- `gtk-3/`, `gtk-4/` — GTK theming
- (Plus macOS-specific packages: aerospace, karabiner, hammerspoon, etc.)

## Update a package

```bash
# Edit files in ~/.config/nvim (or wherever)
# Changes are automatically reflected in ~/devel/dotfiles/nvim/.config/nvim/
cd ~/devel/dotfiles
git add .
git commit -m "Update nvim"
```
