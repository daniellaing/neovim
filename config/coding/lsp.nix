{helpers, ...}: {
  lsp = {
    inlayHints.enable = true;
    servers."*".settings = {
      root_markers = [".git" ".svn"];
      capabilities.textDocument.semanticTokens.multilineTokenSupport = true;
    };
  };

  plugins = {
    lsp = {
      enable = true;
      inlayHints = true;
    };
    # lsp-format.enable = true;
    lsp-lines.enable = true;
    lspkind.enable = true;
  };

  # ---   Lsp Saga   ---
  plugins.lspsaga = {
    enable = true;
  };

  # ---   Keymaps   ---
  keymaps = [
    {
      key = "<M-d>";
      action = "<CMD>Lspsaga term_toggle<Enter>";
      options.desc = "Toggle a terminal";
    }
    {
      mode = ["n" "s" "o"];
      key = "K";
      action = "<CMD>Lspsaga hover_doc ++keep<Enter>";
      options.desc = "Show documentation";
    }
    {
      key = "gd";
      action = "<CMD>Lspsaga peek_definition<Enter>";
      options.desc = "Peek definition";
    }
    {
      key = "gD";
      action = "<CMD>Lspsaga goto_definition<Enter>";
      options.desc = "Go to definition";
    }
    {
      key = "gy";
      action = "<CMD>Lspsaga peek_type_definition<Enter>";
      options.desc = "Peek type definition";
    }
    {
      key = "gY";
      action = "<CMD>Lspsaga goto_type_definition<Enter>";
      options.desc = "Go to type definition";
    }
    {
      key = "gr";
      action = "<CMD>Lspsaga finder ref<Enter>";
      options.desc = "Find references";
    }
    {
      key = "gI";
      action = "<CMD>Lspsaga finder imp<Enter>";
      options.desc = "Find implementations";
    }

    {
      key = "<Leader>ca";
      action = "<CMD>Lspsaga code_action<Enter>";
      options.desc = "Code action";
    }
    {
      key = "<Leader>cr";
      action = "<CMD>Lspsaga rename auto_save = true ++project<Enter>";
      options.desc = "Rename symbol";
    }
    {
      key = "<Leader>ci";
      action = "<CMD>Lspsaga incoming_calls<Enter>";
      options.desc = "Show incoming calls";
    }
    {
      key = "<Leader>co";
      action = "<CMD>Lspsaga outgoing_calls<Enter>";
      options.desc = "Show outgoing calls";
    }
    {
      key = "<Leader>cl";
      action = "<CMD>Lspsaga outline<Enter>";
      options.desc = "Show code outline";
    }
    {
      key = "<Leader>d";
      action = "<CMD>Lspsaga show_line_diagnostics<Enter>";
      options.desc = "Show diagnostics on current line";
    }
    {
      key = "]d";
      action = "<CMD>Lspsaga diagnostic_jump_next<Enter>";
      options.desc = "Jump to next diagnostic";
    }
    {
      key = "[d";
      action = "<CMD>Lspsaga diagnostic_jump_prev<Enter>";
      options.desc = "Jump to previous diagnostic";
    }
    {
      key = "]w";
      action = helpers.mkRaw ''function() require("lspsaga.diagnostic"):goto_next({ severity = vim.diagnostic.severity.WARNING }) end'';
      options.desc = "Jump to next warning";
    }
    {
      key = "[w";
      action = helpers.mkRaw ''function() require("lspsaga.diagnostic"):goto_prev({ severity = vim.diagnostic.severity.WARNING }) end'';
      options.desc = "Jump to previous warning";
    }
    {
      key = "]e";
      action = helpers.mkRaw ''function() require("lspsaga.diagnostic"):goto_next({ severity = vim.diagnostic.severity.ERROR }) end'';
      options.desc = "Jump to next error";
    }
    {
      key = "[e";
      action = helpers.mkRaw ''function() require("lspsaga.diagnostic"):goto_prev({ severity = vim.diagnostic.severity.ERROR }) end'';
      options.desc = "Jump to previous error";
    }
  ];
}
