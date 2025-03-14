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
    luaConfig.pre = ''local slow_format_filetypes = {}'';
    settings = {
      format_on_save =
        # Lua
        ''
          function(bufnr)
            if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
              return
            end

            if slow_format_filetypes[vim.bo[bufnr].filetype] then
              return
            end

            local function on_format(err)
              if err and err:match("timeout$") then
                slow_format_filetypes[vim.bo[bufnr].filetype] = true
              end
            end

            return { timeout_ms = 200, lsp_fallback = false }, on_format
           end
        '';
      format_after_save =
        # Lua
        ''
          function(bufnr)
            if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
              return
            end

            if not slow_format_filetypes[vim.bo[bufnr].filetype] then
              return
            end

            return { lsp_fallback = false }
          end
        '';
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
    settings.enable_autosnippets = true;
  };

  extraPlugins = with pkgs; [
    vimPlugins.friendly-snippets
  ];

  extraFiles."luasnippets/all.lua".source = ../../luasnippets/all.lua;

  # ---   Surround   ---
  plugins.vim-surround = {
    enable = true;
  };

  # ---   CSV   ---
  plugins.csvview = {
    enable = true;
  };
}
