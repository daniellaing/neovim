{pkgs, ...}: {
  plugins = {
    # FIXME: Uncomment when mtshiba/pylyzer#78 resolves
    # lsp.servers.pylyzer.enable = true;
    conform-nvim.formattersByFt.python = ["black"];
    lint.lintersByFt.python = ["flake8"];
  };
  extraPackages = [pkgs.black pkgs.python312Packages.flake8];
}
