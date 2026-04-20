-- Neovim configuration
-- Modular structure: lua/core/ and lua/plugins/
-- Uses nvim-cmp for completion, Nix for package management

-- Load core modules
require("core.options")
require("core.keymaps")
require("core.autocmds")

-- Load plugins via nix-wrapper (lze)
local plugins = {
  require("plugins.nvim-cmp"),  -- nvim-cmp completion
  require("plugins.lsp"),          -- LSP configuration
  require("plugins.mini-pick"),   -- Fuzzy finder
  require("plugins.oil"),          -- File manager
  require("plugins.obsidian"),      -- Obsidian integration
}

print("Neovim config loaded!")
