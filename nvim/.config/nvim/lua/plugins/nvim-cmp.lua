# nvim-cmp configuration
local cmp = require("cmp")

cmp.setup({
  snippet = {
    expand = function(args)
      return luasnip.lsp_expand(args.body)
    end,
    jump = 1,
  },
  mapping = {
    ["<C-Space>"] = cmp.mapping.complete(),
    ["<C-e>"] = cmp.mapping.close(),
    ["<CR>"] = cmp.mapping.confirm({ select = true }),
  },
  sources = cmp.config.sources({
    { name = "nvim_lsp" },
    { name = "nvim_lua" },
    { name = "buffer" },
    { name = "path" },
    { name = "luasnip" },
  }),
})
