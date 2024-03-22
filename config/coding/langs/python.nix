{pkgs, ...}: {
  plugins.lsp.servers.pylyzer.enable = true;

  plugins.conform-nvim.formattersByFt.python = ["black"];
  extraPackages = [pkgs.black];
}
