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
    treesitter-context = {
      enable = true;
      settings = {
        max_lines = 5;
      };
    };
  };
}
