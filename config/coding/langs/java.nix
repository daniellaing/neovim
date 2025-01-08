{pkgs, ...}: {
  plugins = {
    lsp.servers.jdtls.enable = true;
    conform-nvim.settings.formatters_by_ft.java = ["google-java-format"];
    lint.lintersByFt.java = ["checkstyle"];
  };
  extraPackages = [pkgs.google-java-format pkgs.checkstyle];
}
