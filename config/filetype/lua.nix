{pkgs, ...}: {
  plugins = {
    lsp.servers.lua_ls.enable = true;
    conform-nvim.settings.formatters_by_ft.lua = ["stylua"];
    lint.lintersByFt.lua = ["luacheck"];
  };
  extraPackages = [pkgs.stylua pkgs.luajitPackages.luacheck];
}
