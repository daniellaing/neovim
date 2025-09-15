{
  pkgs,
  lib,
  helpers,
  ...
}: {
  lsp.servers.lemminx.enable = true;
  plugins = {
    conform-nvim.settings.formatters_by_ft = lib.genAttrs ["xml" "xsd"] (_: ["xmllint"]);
  };
  extraPackages = [pkgs.libxml2];

  autoCmd = [
    {
      event = "FileType";
      desc = "Set tab size to 1 for xml files";
      group = "dlaing";
      pattern = ["xml" "xsd"];
      callback = helpers.mkRaw ''
        function()
            vim.opt_local.tabstop = 1
            vim.opt_local.softtabstop = 1
        end
      '';
    }
  ];
}
