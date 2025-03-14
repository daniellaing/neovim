{pkgs, ...}: {
  plugins = {
    lsp.servers.pylsp.enable = true;
    conform-nvim.settings.formatters_by_ft.python = ["black"];
    lint.lintersByFt.python = ["flake8"];
  };
  extraPackages = [pkgs.black pkgs.python312Packages.flake8];
}
