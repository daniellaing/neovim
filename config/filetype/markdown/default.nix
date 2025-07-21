{pkgs, ...}: let
  mdf = pkgs.mdformat.withPlugins (ps: with ps; [mdformat-gfm]);
in {
  lsp.servers.marksman.enable = true;
  plugins = {
    conform-nvim.settings.formatters_by_ft.markdown = ["cbfmt" "mdformat"];
    markdown-preview = {
      enable = true;
    };
  };
  extraPackages = with pkgs; [cbfmt mdf];

  extraFiles."luasnippets/markdown.lua".source = ./snippets.lua;
}
