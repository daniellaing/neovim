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
    bold = true;
    improvedStrings = true;
    improvedWarnings = true;
    italicizeStrings = true;
    italics = true;
    trueColor = true;

  };
}
