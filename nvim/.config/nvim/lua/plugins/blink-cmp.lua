-- blink-cmp plugin configuration
return {
  name = "blink-cmp",
  after = function(_plugin)
    require("blink.cmp").setup({
      keymap = {
        preset = "default",
        ["<C-space>"] = { "show", "show_documentation", "hide_documentation" },
        ["<C-e>"] = { "hide", "fallback" },
        ["<CR>"] = { "accept", "fallback" },
      },
      appearance = {
        use_nvim_cmp_as_default = true,
        nerd_font_variant = "mono",
      },
      completion = {
        documentation = {
          auto_show = true,
          auto_show_delay_ms = 200,
        },
        ghost_text = {
          enabled = true,
        },
      },
      sources = {
        default = { "lsp", "path", "snippets", "buffer" },
        cmdline = {},
      },
      fuzzy = {
        sorts = "score",
        use_frecency = true,
        use_proximity = true,
        max_items = 200,
      },
    })
  end,
}
