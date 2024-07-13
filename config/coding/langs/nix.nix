{pkgs, ...}: {
  plugins = {
    lsp.servers = {
      nixd.enable = true;
      nil-ls.enable = true;
    };
    conform-nvim.formattersByFt.nix = ["alejandra"];
  };
  extraPackages = [pkgs.alejandra];
}
