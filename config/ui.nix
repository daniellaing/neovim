{pkgs, ...}: {
  # ---   Lua Line   ---
  plugins.lualine = {
    enable = true;
    sections = {
      lualine_c = [
        {name = "diagnostics";}
        {name = "filetype";}
        {name = "filename";}
      ];
      lualine_x = [
        {name = "diff";}
      ];
      lualine_y = [
        {name = "progress";}
        {name = "location";}
      ];
      lualine_z = [
        {name.__raw = ''function() return os.date("%H:%M:%S") end'';}
      ];
    };
  };

  # ---   Notify   ---
  plugins.notify = {
    enable = true;
  };

  keymaps = [
    {
      key = "<Leader>dn";
      action = "function() require('notify').dismiss({ silent = true, pending = true }) end";
      lua = true;
      options.desc = "Dismiss all notifications";
    }
  ];

  # ---   Dressing   ---
  extraPackages = with pkgs.vimPlugins; [
    dressing-nvim
  ];
}
