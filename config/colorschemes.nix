{lib, ...}: let
  colorSchemes = ["ayu" "catppuccin" "kanagawa" "melange" "onedark" "tokyonight"];
in {
  # The colour scheme to use by default
  colorscheme = "gruvbox";

  colorschemes =
    lib.mergeAttrs {
      gruvbox = {
        enable = true;
        settings = {
          contrast = "hard";
        };
      };
    }
    (lib.genAttrs
      colorSchemes (_: {
        enable = true;
      }));
}
