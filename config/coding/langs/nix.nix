{
  pkgs,
  helpers,
  ...
}: {
  plugins = {
    lsp.servers = {
      nixd.enable = true;
      nil_ls.enable = true;
    };
    conform-nvim.settings.formatters_by_ft.nix = ["alejandra"];
  };
  extraPackages = [pkgs.alejandra];

  autoCmd = [
    {
      event = "FileType";
      desc = "Set tab size to 2 for nix files";
      group = "dlaing";
      pattern = "nix";
      callback = helpers.mkRaw ''
        function()
            vim.opt_local.tabstop = 2
            vim.opt_local.softtabstop = 2
        end
      '';
    }
  ];
}
