{
  helpers,
  pkgs,
  ...
}: {
  plugins = {
    lsp.servers.jdtls.enable = true;
    conform-nvim.settings.formatters_by_ft.java = ["google-java-format"];
    lint.lintersByFt.java = ["checkstyle"];
  };
  extraPackages = [pkgs.google-java-format pkgs.checkstyle];

  autoCmd = [
    {
      event = "FileType";
      desc = "Set tab size to 2 for java files";
      group = "dlaing";
      pattern = "java";
      callback = helpers.mkRaw ''
        function()
            vim.opt_local.tabstop = 2
            vim.opt_local.softtabstop = 2
        end
      '';
    }
  ];
}
