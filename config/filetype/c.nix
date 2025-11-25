{lib, ...}: {
  lsp.servers.clangd = {
    enable = true;
    package = null;
    config.cmd = [
      "clangd"
      "--background-index"
      "--clang-tidy"
      "--completion-style=bundled"
      "--header-insertion=iwyu"
      "--header-insertion-decorators"
    ];
  };

  plugins = {
    conform-nvim.settings.formatters_by_ft.c = ["clang-format"];
  };

  autoCmd = [
    {
      event = "FileType";
      desc = "Set C specifict configuration";
      group = "dlaing";
      pattern = "c";
      callback = lib.nixvim.mkRaw ''
        function()
            vim.opt_local.tabstop = 2
            vim.opt_local.softtabstop = 2

            vim.g.c_syntax_for_h = 1
        end
      '';
    }
  ];
}
