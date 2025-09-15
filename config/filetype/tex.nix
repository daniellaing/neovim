{pkgs, ...}: {
  lsp.servers.texlab.enable = true;
  plugins = {
    conform-nvim.settings.formatters_by_ft = {
      # Disabled because texlab comes with a formatter
      # plaintex = ["latexindent"];
      # tex = ["latexindent"];
    };
    # lint.lintersByFt.python = ["flake8"];
  };
  extraPackages = [pkgs.texlivePackages.latexindent];
}
