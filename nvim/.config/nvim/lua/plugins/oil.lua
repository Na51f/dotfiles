-- oil.nvim plugin configuration
return {
  name = "oil.nvim",
  after = function(_plugin)
    require("oil").setup()

    -- Keymaps
    local map = vim.keymap.set
    map("n", "<leader>e", function()
      require("oil").toggle_float()
    end, { desc = "Toggle oil" })
    map("n", "-", function()
      require("oil").open()
    end, { desc = "Open parent directory" })
  end,
}
