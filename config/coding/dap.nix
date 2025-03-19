{helpers, ...}: {
  # ---   nvim dap   ---
  plugins.dap = {
    enable = true;
    luaConfig.post = ''
      require("dap").listeners.before.attach.dapui_config = function() require("dapui").open() end
      require("dap").listeners.before.launch.dapui_config = function() require("dapui").open() end
      require("dap").listeners.before.event_terminated.dapui_config = function() require("dapui").close() end
      require("dap").listeners.before.event_exited.dapui_config = function() require("dapui").close() end
    '';
  };

  # ---   Nice UI   ---
  plugins = {
    dap-ui.enable = true;
    dap-virtual-text.enable = true;
  };

  # ---   Keymaps   ---
  keymaps = [
    {
      mode = ["n"];
      key = "<Leader>db";
      action = helpers.mkRaw ''require("dap").toggle_breakpoint'';
      options.desc = "Set a breakpoint on the current line";
    }
    {
      mode = ["n"];
      key = "<Leader>?";
      action = helpers.mkRaw ''function() require("dapui").eval(nil, { enter = true }) end'';
      options.desc = "Set a breakpoint on the current line";
    }
  ];
}
