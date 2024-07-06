{pkgs, ...}: {
  plugins = {
    lsp.servers.texlab.enable = true;
    conform-nvim.formattersByFt = {
      # Disabled because texlab comes with a formatter
      # plaintex = ["latexindent"];
      # tex = ["latexindent"];
    };
    # lint.lintersByFt.python = ["flake8"];
  };
  extraPackages = [pkgs.texlivePackages.latexindent];
}
