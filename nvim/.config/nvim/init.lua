-- Neovim configuration
-- Modular structure: lua/core/ and lua/plugins/
-- Uses lze for plugin management, Nix for package management

-- Load core modules
require("core.options")
require("core.keymaps")
require("core.autocmds")

-- Load plugins via lze
local lze = require("lze")
local plugins = require("plugins")

lze.load(plugins)

print("Neovim config loaded!")
