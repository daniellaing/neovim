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
    settings = {
      background_colour = "#000000";
      on_open = helpers.mkRaw ''
        function(win)
          local buf = vim.api.nvim_win_get_buf(win)
          vim.api.nvim_buf_set_option(buf, "filetype", "markdown")
        end
      '';
    };
    luaConfig.post = ''vim.notify = require("notify")'';
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
