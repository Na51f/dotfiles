inputs:
{
  config,
  wlib,
  lib,
  pkgs,
  ...
}:
{
  imports = [ wlib.wrapperModules.neovim ];

  # Core configuration
  settings.config_directory = ./.;
  settings.colorscheme = "moonfly";

  # Completion configuration using nvim-cmp
  specs.completion = {
    data = with pkgs.vimPlugins; [
      nvim-cmp
      cmp-nvim-lsp
      cmp-buffer
      cmp-path
      cmp-cmdline
      cmp-nvim-lua
      luasnip
    ];
    after = [ "lsp" ];
    lazy = true;
  };

  # LSP configuration
  specs.lsp = {
    data = with pkgs.vimPlugins; [
      nvim-lspconfig
    ];
    lazy = true;
  };

  # Extra packages (LSP servers, formatters, etc.)
  extraPackages = with pkgs; [
    nixd
    lua-language-server
    typescript-language-server
    rust-analyzer
    python312Packages.python-lsp-server
    gopls
  ];
}
