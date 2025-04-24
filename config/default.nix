{lib, ...}: {
  # Import all your configuration modules here
  imports =
    [
      ./coding
      ./core
      ./editor

      ./colorschemes.nix
      ./dependencies.nix
      ./treesitter.nix
      ./ui.nix
    ]
    ++ lib.filter (n: lib.strings.hasSuffix ".nix" n) (lib.filesystem.listFilesRecursive ./filetype);

  performance = {
    byteCompileLua = {
      enable = true;
      nvimRuntime = true;
      plugins = true;
    };

    # combinePlugins = {
    #   enable = true;
    #   standalonePlugins = [ ];
    # };
  };
}
