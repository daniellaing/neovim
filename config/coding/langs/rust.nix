{pkgs, ...}: {
  plugins = {
      lsp.servers.rust-analyzer = {
    enable = true;
    installCargo = true;
    installRustc = true;
  };

  conform-nvim.formattersByFt.rust = ["rustfmt"];};
  extraPackages = [pkgs.rustfmt];
}
