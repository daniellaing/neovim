{pkgs, ...}: {
  plugins.lsp.servers.rust-analyzer = {
    enable = true;
    installCargo = true;
    installRustc = true;
  };

  plugins.conform-nvim.formattersByFt.rust = ["rustfmt"];
  extraPackages = [pkgs.rustfmt];
}
