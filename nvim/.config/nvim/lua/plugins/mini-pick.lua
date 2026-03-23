-- mini.pick plugin configuration
return {
  name = "mini.pick",
  after = function(_plugin)
    require("mini.pick").setup()

    -- Keymaps
    local map = vim.keymap.set
    map("n", "<leader>p", function()
      MiniPick.start()
    end, { desc = "Pick files" })
    map("n", "<leader>b", function()
      MiniPick.builtin.cli({ pattern = "^:" })
    end, { desc = "Pick buffers" })
  end,
}
