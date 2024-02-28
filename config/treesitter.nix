{
  plugins = {
    treesitter = {
      enable = true;
      ensureInstalled = "all";
      indent = true;
      nixvimInjections = true;
    };
    treesitter-textobjects.enable = true;
  };
}
