{
  plugins = {
    treesitter = {
      enable = true;
      folding = true;
      settings = {
        indent.enable = true;
        highlight.enable = true;
        incremental_selection.enable = true;
      };
    };

    # ---   Additional treesitter based things   ---
    treesitter-context.enable = true;

    treesitter-refactor = {
      # Possible coincidence with lsp saga
      enable = true;
      highlightDefinitions.enable = true;
    };

    treesitter-textobjects = {
      enable = true;
      select = {
        enable = true;
        lookahead = true;
        keymaps = {
          "aa" = "@parameter.outer";
          "ia" = "@parameter.inner";
          "af" = "@function.outer";
          "if" = "@function.inner";
          "ac" = "@class.outer";
          "ic" = "@class.inner";
          "ii" = "@conditional.inner";
          "ai" = "@conditional.outer";
          "il" = "@loop.inner";
          "al" = "@loop.outer";
          "at" = "@comment.outer";
        };
      };
    };
  };
}
