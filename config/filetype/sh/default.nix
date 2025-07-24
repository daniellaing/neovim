{pkgs, ...}: {
  plugins = {
    lsp.servers.bashls.enable = true;
    conform-nvim.settings.formatters_by_ft.sh = ["shfmt"];
    lint.lintersByFt.sh = ["shellcheck"];
  };

  extraPackages = [pkgs.shellcheck pkgs.shfmt];

  extraFiles."luasnippets/sh.lua".source = ./snippets.lua;
}
