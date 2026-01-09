{
  plugins = {
    treesitter = {
      enable = true;
      folding.enable = true;
      indent.enable = true;
      highlight.enable = true;
      settings = {
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
