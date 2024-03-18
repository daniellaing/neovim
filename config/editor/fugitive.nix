{
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
}
