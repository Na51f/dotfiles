-- LSP configuration with nvim-lspconfig
return {
  name = "nvim-lspconfig",
  after = function(_plugin)
    local lspconfig = require("lspconfig")
    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    -- Common LSP setup function
    local function setup_lsp(server, opts)
      opts = opts or {}
      opts.capabilities = capabilities
      lspconfig[server].setup(opts)
    end

    -- Set up language servers
    setup_lsp("nixd") -- Nix
    setup_lsp("lua_ls") -- Lua
    setup_lsp("ts_ls") -- TypeScript/JavaScript
    setup_lsp("rust_analyzer") -- Rust
    setup_lsp("pylsp") -- Python
    setup_lsp("gopls") -- Go

    -- Keymaps for LSP
    local map = vim.keymap.set
    map("n", "gd", function()
      vim.lsp.buf.definition()
    end, { desc = "Go to definition" })
    map("n", "gD", function()
      vim.lsp.buf.declaration()
    end, { desc = "Go to declaration" })
    map("n", "gr", function()
      vim.lsp.buf.references()
    end, { desc = "Go to references" })
    map("n", "K", function()
      vim.lsp.buf.hover()
    end, { desc = "Hover documentation" })
    map("n", "<leader>ca", function()
      vim.lsp.buf.code_action()
    end, { desc = "Code actions" })
    map("n", "<leader>rn", function()
      vim.lsp.buf.rename()
    end, { desc = "Rename" })
    map("n", "[d", function()
      vim.diagnostic.goto_prev()
    end, { desc = "Previous diagnostic" })
    map("n", "]d", function()
      vim.diagnostic.goto_next()
    end, { desc = "Next diagnostic" })
  end,
}
