{pkgs, ...}: let
  mdf = pkgs.mdformat.withPlugins (ps: with ps; [mdformat-gfm]);
in {
  plugins = {
    lsp.servers.marksman.enable = true;
    conform-nvim.settings.formatters_by_ft.markdown = ["cbfmt" "mdformat"];
    markdown-preview = {
      enable = true;
    };
  };
  extraPackages = with pkgs; [cbfmt mdf];

  extraFiles."luasnippets/markdown.lua".source = ./snippets.lua;
}
