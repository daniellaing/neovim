{pkgs, ...}: {
  imports = [
    ./langs

    ./completion.nix
    ./lsp.nix
  ];

  # ---   Linting   ---
  plugins.lint.enable = true;

  # ---   Formatting   ---
  plugins.conform-nvim = {
    enable = true;
    settings.format_on_save = {
      lspFallback = true;
      timeoutMs = 500;
    };
  };

  # ---   Comments   ---
  plugins = {
    ts-context-commentstring.enable = true;

    comment = {
      enable = true;
      settings.pre_hook = "require('ts_context_commentstring.integrations.comment_nvim').create_pre_hook()";
    };
  };

  # ---   Pairs   ---
  plugins.nvim-autopairs = {
    enable = true;
    settings = {
      check_ts = true;
      disable_in_macro = true;
    };
  };

  # ---   Snippets   ---
  plugins.luasnip = {
    enable = true;
    fromLua = [{}];
    fromVscode = [{}];
  };

  extraPlugins = with pkgs; [
    vimPlugins.friendly-snippets
  ];

  # ---   Surround   ---
  plugins.vim-surround = {
    enable = true;
  };
}
