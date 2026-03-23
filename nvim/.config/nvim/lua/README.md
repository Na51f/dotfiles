# Lua Configuration Structure

```
lua/
├── core/
│   ├── options.lua      -- Neovim options and settings
│   ├── keymaps.lua      -- Keybindings and leader key
│   └── autocmds.lua     -- Autocommands
├── plugins/
│   ├── init.lua         -- Loads all plugin configs
│   ├── mini-pick.lua    -- mini.pick plugin config
│   └── oil.lua          -- oil.nvim plugin config
└── README.md            -- This file
```

## Core Modules

- **options.lua**: Editor settings, UI, behavior
- **keymaps.lua**: Keybindings and leader configuration
- **autocmds.lua**: Auto-commands for events like BufWritePre

## Plugins

Each plugin file returns a table compatible with lze:

```lua
return {
  name = "plugin-name",
  after = function(_plugin)
    -- Setup and keymaps
  end,
}
```

All plugins are aggregated in `plugins/init.lua` and loaded via `require("lze").load()`.

## Adding New Plugins

1. Create a new file in `lua/plugins/` (e.g., `new-plugin.lua`)
2. Return a lze-compatible table
3. Add `require("plugins.new-plugin")` to `lua/plugins/init.lua`

## Architecture

- **Plugin manager**: lze (loaded from Nix wrapper)
- **Package manager**: Nix (nix-wrapper-modules)
- Plugins are declared in `module.nix` (specs)
- Plugin configuration in `lua/plugins/`
- Core config in `lua/core/`
