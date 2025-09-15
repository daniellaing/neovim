{pkgs, ...}: {
  lsp.servers.rust_analyzer = {
    enable = true;
  };
  plugins = {
    conform-nvim.settings.formatters_by_ft.rust = ["rustfmt"];
  };
  extraPackages = [pkgs.rustfmt];
}
