{lib, ...}: {
  autoGroups = {
    dlaing = {
      clear = true;
    };
  };

  autoCmd = [
    {
      event = "BufWritePre";
      command = "%s/\\s\\+$//e";
      group = "dlaing";
      desc = "Strip trailling whitespace on write";
    }
    {
      event = "TextYankPost";
      callback = lib.nixvim.mkRaw "function() vim.highlight.on_yank() end";
      group = "dlaing";
      desc = "Highlight text on yank";
    }
    {
      event = "VimEnter";
      command = "cd %:p:h";
      group = "dlaing";
      desc = "Automatically change cwd to the one vim was opened in";
    }

    {
      event = "TermOpen";
      group = "dlaing";
      desc = "Clean up built in terminal";
      callback = lib.nixvim.mkRaw ''
        function()
          vim.wo.spell = false
          vim.wo.cursorline = false
          vim.wo.cursorcolumn = false
          vim.wo.number = false
          vim.wo.relativenumber = false
          vim.wo.signcolumn = "no"
          vim.bo.bufhidden = "wipe"
          vim.cmd.startinsert()
        end
      '';
    }
  ];
}
