{pkgs, ...}: {
  plugins = {
    lsp.servers.pyright.enable = true;
    conform-nvim.formattersByFt.python = ["black"];
    lint.lintersByFt.python = ["flake8"];
  };
  extraPackages = [pkgs.black pkgs.python312Packages.flake8];
}
