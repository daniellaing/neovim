{helpers, ...}: {
  autoGroups = {
    dlaing = {
      clear = true;
    };
  };

  autoCmd = [
    {
      event = "FileType";
      group = "dlaing";
      desc = "Set folding method. If a treesitter parser for filetype exists, use that.";
      callback = helpers.mkRaw ''
        function()
            if require("nvim-treesitter.parsers").has_parser() then
                -- Use treesitter folding
                vim.opt.foldmethod = "expr"
                vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
            else
                -- Use syntax folding
                vim.opt.foldmethod = "syntax"
            end
        end
      '';
    }

    {
      event = "BufWritePre";
      command = "%s/\\s\\+$//e";
      group = "dlaing";
      desc = "Strip trailling whitespace on write";
    }
    {
      event = "TextYankPost";
      callback = helpers.mkRaw "function() vim.highlight.on_yank() end";
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
      callback = helpers.mkRaw ''
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
