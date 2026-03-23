-- Core keymaps
local map = vim.keymap.set

-- Leader key
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Disable space bar as leader in normal/visual mode
map({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

-- Basic operations
map("n", "<leader>q", "<cmd>q<CR>", { desc = "Quit" })
map("n", "<leader>w", "<cmd>w<CR>", { desc = "Write" })
map("n", "<leader>x", "<cmd>x<CR>", { desc = "Write and quit" })

-- Search
map("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Clear search highlight" })
