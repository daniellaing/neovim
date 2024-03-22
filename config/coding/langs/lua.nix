{pkgs, ...}: {
  plugins = {
    lsp.servers.lua-ls.enable = true;
    conform-nvim.formattersByFt.lua = ["stylua"];
    lint.lintersByFt.lua = ["luacheck"];
  };
  extraPackages = [pkgs.stylua pkgs.luajitPackages.luacheck];
}
