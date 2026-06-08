{pkgs, ...}: let
  mdf = pkgs.mdformat.withPlugins (ps: with ps; [mdformat-gfm mdformat-footnote]);
in {
  lsp.servers.marksman.enable = true;
  plugins = {
    conform-nvim.settings.formatters_by_ft.markdown = ["mdformat"];
    markdown-preview = {
      enable = true;
    };
  };
  extraPackages = [mdf];

  extraFiles."luasnippets/markdown.lua".source = ./snippets.lua;
}
