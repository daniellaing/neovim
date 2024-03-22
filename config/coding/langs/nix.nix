{pkgs, ...}: {
  plugins.lsp.servers = {
    nixd.enable = true;
    nil_ls.enable = true;
  };

  plugins.conform-nvim.formattersByFt.nix = ["alejandra"];
  extraPackages = [pkgs.alejandra];
}
