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
    formatOnSave = {
      lspFallback = true;
      timeoutMs = 500;
    };
  };

  # ---   Comments   ---
  plugins = {
    ts-context-commentstring.enable = true;

    comment-nvim = {
      enable = true;
      preHook = "require('ts_context_commentstring.integrations.comment_nvim').create_pre_hook()";
    };
  };

  # ---   Pairs   ---
  plugins.nvim-autopairs = {
    enable = true;
    checkTs = true;
    disableInMacro = true;
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
  plugins.surround = {
    enable = true;
  };
}
