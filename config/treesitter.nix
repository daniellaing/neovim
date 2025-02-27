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

    # Additional treesitter based things
    treesitter-context.enable = true;
    treesitter-refactor = {
      # Possible coincidence with lsp saga
      enable = true;
      highlightDefinitions.enable = true;
    };
    treesitter-textobjects.enable = true; # Pretty sure this does nothing without keymaps definied
  };
}
