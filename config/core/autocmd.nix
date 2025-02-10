{helpers, ...}: {
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
  ];
}
