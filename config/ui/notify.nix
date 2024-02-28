{
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
}
