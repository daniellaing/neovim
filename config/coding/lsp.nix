{
  plugins = {
    lsp.enable = true;
    lsp-format.enable = true;
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
  ];
}
