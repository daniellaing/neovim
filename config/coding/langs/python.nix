{pkgs, ...}: {
  # FIXME: Uncomment when mtshiba/pylyzer#78 resolves
  # plugins.lsp.servers.pylyzer.enable = true;

  plugins.conform-nvim.formattersByFt.python = ["black"];
  extraPackages = [pkgs.black];
}
