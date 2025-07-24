{pkgs, ...}: {
  plugins = {
    lsp.servers.jsonls.enable = true;
    conform-nvim.settings.formatters_by_ft.json = ["prettierd"];
  };
  extraPackages = [pkgs.prettierd];
}
