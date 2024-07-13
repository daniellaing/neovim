{
  plugins = {
    treesitter = {
      enable = true;
      nixvimInjections = true;
      settings = {
        ensure_installed = "all";
        indent.enable = true;
      };
    };
    treesitter-textobjects.enable = true;
  };
}
