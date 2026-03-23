-- Core autocommands
local augroup = vim.api.nvim_create_augroup("user_config", { clear = true })

-- Highlight yanked text
vim.api.nvim_create_autocmd("TextYankPost", {
  group = augroup,
  callback = function()
    vim.highlight.on_yank({ higroup = "Visual", timeout = 200 })
  end,
  desc = "Highlight yanked text",
})

-- Trim trailing whitespace on save
vim.api.nvim_create_autocmd("BufWritePre", {
  group = augroup,
  callback = function()
    local lnum = vim.api.nvim_buf_line_count(0)
    if lnum > 5000 then
      return
    end
    vim.cmd("silent! undojoin")
    vim.cmd("silent! %s/\\s\\+$//e")
  end,
  desc = "Trim trailing whitespace on save",
})
