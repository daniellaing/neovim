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
      key = "<Leader>da";
      action = helpers.mkRaw ''function() require("dap").continue({ before = get_args }) end'';
      options.desc = "Run with args";
    }
    {
      mode = ["n"];
      key = "<Leader>db";
      action = helpers.mkRaw ''function() require("dap").toggle_breakpoint() end'';
      options.desc = "Toggle a breakpoint on the current line";
    }
    {
      mode = ["n"];
      key = "<Leader>dB";
      action = helpers.mkRaw ''function() require("dap").toggle_breakpoint(vim.fn.input("Breakpoint condition: ")) end'';
      options.desc = "Toggle a conditional breakpoint on the current line";
    }
    {
      mode = ["n"];
      key = "<Leader>dc";
      action = helpers.mkRaw ''function() require("dap").run_to_cursor() end'';
      options.desc = "Run/continue execution to the cursor position";
    }
    {
      mode = ["n"];
      key = "<Leader>dC";
      action = helpers.mkRaw ''function() require("dap").continue() end'';
      options.desc = "Run/continue execution";
    }
    {
      mode = ["n" "v"];
      key = "<Leader>de";
      action = helpers.mkRaw ''function() require("dapui").eval() end'';
      options.desc = "Evaluete expression";
    }
    {
      mode = ["n"];
      key = "<Leader>dg";
      action = helpers.mkRaw ''function() require("dap").goto_() end'';
      options.desc = "Goto line (skip execution)";
    }
    {
      mode = ["n"];
      key = "<Leader>di";
      action = helpers.mkRaw ''function() require("dap").step_into() end'';
      options.desc = "Step into";
    }
    {
      mode = ["n"];
      key = "<Leader>dj";
      action = helpers.mkRaw ''function() require("dap").down() end'';
      options.desc = "TODO Down";
    }
    {
      mode = ["n"];
      key = "<Leader>dk";
      action = helpers.mkRaw ''function() require("dap").up() end'';
      options.desc = "TODO Up";
    }
    {
      mode = ["n"];
      key = "<Leader>dl";
      action = helpers.mkRaw ''function() require("dap").run_last() end'';
      options.desc = "Run the last used debugger configuration";
    }
    {
      mode = ["n"];
      key = "<Leader>do";
      action = helpers.mkRaw ''function() require("dap").step_over() end'';
      options.desc = "Step over";
    }
    {
      mode = ["n"];
      key = "<Leader>dO";
      action = helpers.mkRaw ''function() require("dap").step_out() end'';
      options.desc = "Step out";
    }
    {
      mode = ["n"];
      key = "<Leader>dp";
      action = helpers.mkRaw ''function() require("dap").pause() end'';
      options.desc = "Pause execution of a thread";
    }
    {
      mode = ["n"];
      key = "<Leader>dr";
      action = helpers.mkRaw ''function() require("dap").repl.toggle() end'';
      options.desc = "Toggle the DAP REPL";
    }
    {
      mode = ["n"];
      key = "<Leader>ds";
      action = helpers.mkRaw ''function() require("dap").session() end'';
      options.desc = "TODO Session";
    }
    {
      mode = ["n"];
      key = "<Leader>dt";
      action = helpers.mkRaw ''function() require("dap").terminate() end'';
      options.desc = "Terminate debugging session";
    }
    {
      key = "<Leader>du";
      action = helpers.mkRaw ''function() require("dapui").toggle() end'';
      options.desc = "Toggle DAP UI";
    }
    {
      mode = ["n"];
      key = "<Leader>?";
      action = helpers.mkRaw ''function() require("dapui").eval(nil, { enter = true }) end'';
      options.desc = "Evaluete the variable under the cursor";
    }
  ];
}
