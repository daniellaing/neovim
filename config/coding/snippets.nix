{ pkgs, ... }:

{
  plugins.luasnip = {
    enable = true;
    fromLua = [{ }];
    fromVscode = [{ }];
  };

  extraPlugins = with pkgs;[
    vimPlugins.friendly-snippets
  ];
}
