{
  pkgs,
  helpers,
  ...
}: {
  # ---   Lua Line   ---
  plugins.lualine = {
    enable = true;
    settings.sections = {
      lualine_c = [
        "diagnostics"
        "filetype"
        "filename"
      ];
      lualine_x = [
        "diff"
      ];
      lualine_y = [
        "progress"
        "location"
      ];
      lualine_z = [{__unkeyed-1 = helpers.mkRaw ''function() return os.date("%H:%M:%S") end'';}];
    };
  };

  # ---   Notify   ---
  plugins.notify = {
    enable = true;
  };

  keymaps = [
    {
      key = "<Leader>dn";
      action = helpers.mkRaw "function() require('notify').dismiss({ silent = true, pending = true }) end";
      options.desc = "Dismiss all notifications";
    }
  ];

  # ---   Dressing   ---
  extraPackages = with pkgs.vimPlugins; [
    dressing-nvim
  ];
}
