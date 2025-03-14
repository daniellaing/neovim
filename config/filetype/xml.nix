{
  pkgs,
  helpers,
  ...
}: {
  plugins = {
    lsp.servers.lemminx.enable = true;
    conform-nvim.settings.formatters_by_ft.xml = ["xmlformat"];
    #lint.lintersByFt.xml = [];
  };
  extraPackages = [pkgs.xmlformat];

  autoCmd = [
    {
      event = "FileType";
      desc = "Set tab size to 1 for xml files";
      group = "dlaing";
      pattern = "xml";
      callback = helpers.mkRaw ''
        function()
            vim.opt_local.tabstop = 1
            vim.opt_local.softtabstop = 1
        end
      '';
    }
  ];
}
