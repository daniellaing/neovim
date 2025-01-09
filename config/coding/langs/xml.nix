{pkgs, ...}: {
  plugins = {
    lsp.servers.lemminx.enable = true;
    conform-nvim.settings.formatters_by_ft.xml = ["xmlformat"];
    #lint.lintersByFt.xml = [];
  };
  extraPackages = [pkgs.xmlformat];
}
