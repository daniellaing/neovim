{
  # Import all your configuration modules here
  imports = [
    ./coding
    ./core
    ./editor
    ./lsp
    ./ui

    ./treesitter.nix
    ./formatting.nix
  ];

  colorschemes.gruvbox = {
    enable = true;
    settings = {
      bold = true;
      improved_strings = true;
      improved_warnings = true;
      italicize_strings = true;
      italics = true;
      true_color = true;
    };
  };
}
