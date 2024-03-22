{pkgs, ...}: {
  plugins.lsp.servers.lua-ls.enable = true;

  plugins.conform-nvim.formattersByFt.lua = ["stylua"];
  extraPackages = [pkgs.stylua];
}
