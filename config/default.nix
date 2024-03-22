{
  # Import all your configuration modules here
  imports = [
    ./coding
    ./core
    ./editor

    ./treesitter.nix
    ./ui.nix
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
