-- Core Neovim options
local opt = vim.opt

-- Editor behavior
opt.mouse = "a"
opt.clipboard = "unnamedplus"
opt.showmode = false
opt.breakindent = true
opt.undofile = true
opt.ignorecase = true
opt.smartcase = true
opt.inccommand = "split"

-- UI
opt.signcolumn = "yes"
opt.cursorline = true
opt.termguicolors = true
opt.scrolloff = 10
opt.sidescrolloff = 8

-- Timings
opt.updatetime = 250
opt.timeoutlen = 300

-- Splits
opt.splitright = true
opt.splitbelow = true

-- Numbers
opt.number = true
opt.relativenumber = true

-- Statusline
opt.statusline = "%f %m %r %= %{&filetype?&ft:''} %L:%c"

-- Transparent background (inherit terminal)
vim.cmd([[
  highlight Normal guibg=NONE ctermbg=NONE
  highlight NonText guibg=NONE ctermbg=NONE
  highlight NormalNC guibg=NONE ctermbg=NONE
]])

-- Netrw settings
vim.g.netrw_browse_split = 4
vim.g.netrw_altv = 1
vim.g.netrw_liststyle = 3
vim.g.netrw_list_hide = "^\\..$"
