{lib, ...}: {
  # Import all your configuration modules here
  imports =
    [
      ./coding
      ./core
      ./editor

      ./colorschemes.nix
      ./treesitter.nix
      ./ui.nix
    ]
    ++ lib.filter (n: lib.strings.hasSuffix ".nix" n) (lib.filesystem.listFilesRecursive ./filetype);
}
