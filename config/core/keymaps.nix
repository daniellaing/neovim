{helpers, ...}: {
  keymaps = [
    # Buffer navigation
    {
      key = "bl";
      action = "<CMD>bnext<Enter>";
      options.desc = "Next buffer";
    }
    {
      key = "bh";
      action = "<CMD>bprev<Enter>";
      options.desc = "Previous buffer";
    }
    {
      key = "bd";
      action = "<CMD>bdelete<Enter>";
      options.desc = "Delete buffer";
    }
    {
      key = "bx";
      action = helpers.mkRaw "function()
        vim.cmd.write()
        vim.cmd.bdelete()
      end";
      options.desc = "Save and close buffer";
    }

    # Copy and paste with system buffer
    {
      key = "<Leader>y";
      action = "\"+y";
      options.desc = "Yank to system buffer";
    }
    {
      key = "<Leader>p";
      action = "\"+p";
      options.desc = "Paste from system buffer";
    }

    # Better indenting
    {
      mode = ["v"];
      key = "<";
      action = "<gv";
      options.desc = "Re-select after indent";
    }
    {
      mode = ["v"];
      key = ">";
      action = ">gv";
      options.desc = "Re-select after indent";
    }

    # Delete last word
    {
      key = "<C-Backspace>";
      mode = ["i"];
      action = "<C-W>";
      options.desc = "Delete last word";
    }

    # Better capital letters
    {
      mode = ["n"];
      key = "Y";
      action = "y$";
      options.desc = "Yank rest of line with Y";
    }
    {
      mode = ["n"];
      key = "S";
      action = "<CMD>%s//g<Left><Left>";
      options.desc = "Substitute in whole buffer with S";
    }

    # Undo break points
    {
      mode = ["i"];
      key = ",";
      action = ",<C-g>u";
      options.desc = "Set an undo breakpoint at ,";
    }
    {
      mode = ["i"];
      key = ".";
      action = ".<C-g>u";
      options.desc = "Set an undo breakpoint at .";
    }
    {
      mode = ["i"];
      key = ";";
      action = ";<C-g>u";
      options.desc = "Set an undo breakpoint at ;";
    }
    {
      mode = ["i"];
      key = "!";
      action = "!<C-g>u";
      options.desc = "Set an undo breakpoint at !";
    }
    {
      mode = ["i"];
      key = "?";
      action = "?<C-g>u";
      options.desc = "Set an undo breakpoint at ?";
    }

    # Move lines
    # {
    #   mode = ["v"];
    #   key = "J";
    #   action = "<CMD>move +1<Enter>gv=gv";
    #   options.desc = "Move line down";
    # }
    # {
    #   key = "K";
    #   mode = ["v"];
    #   action = "<CMD>move -2<Enter>gv=gv";
    #   options.desc = "Move line up";
    # }

    # Search
    {
      mode = ["n"];
      key = "n";
      action = "nzzzv";
      options.desc = "Move cursor to middle and open folds after search";
    }
    {
      mode = ["n"];
      key = "N";
      action = "Nzzzv";
      options.desc = "Move cursor to middle and open folds after search";
    }
  ];
}
