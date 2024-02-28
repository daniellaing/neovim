{
  plugins.lualine = {
    enable = true;
    sections = {
      lualine_c = [
        { name = "diagnostics"; }
        { name = "filetype"; }
        { name = "filename"; }
      ];
      lualine_x = [
        { name = "diff"; }
      ];
      lualine_y = [
        { name = "progress"; }
        { name = "location"; }
      ];
      lualine_z = [
        { name.__raw = ''function() return os.date("%H:%M:%S") end''; }
      ];
    };
  };
}

