{
  imports = [
    ./telescope.nix
  ];

  # ---   Git   ---
  plugins.fugitive = {
    enable = true;
  };

  keymaps = [
    {
      key = "<Leader>g";
      action = "<CMD>G<Enter>";
      options.desc = "Open git dashboard";
    }
  ];

  # ---   Illuminate   ---
  # Highlight word under cursor
  plugins.illuminate = {
    enable = true;
  };

  # ---   Which Key   ---
  plugins.which-key.enable = true;
}
