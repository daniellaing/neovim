{ pkgs, ... }:
let
  lua = pkgs.stylua;
  all = pkgs.codespell;
in
{
  plugins.conform-nvim = {
    enable = true;
    formattersByFt = {
      lua = [ "${lua.pname}" ];
      "*" = [ "${all.pname}" ];
    };
    formatOnSave = {
      lspFallback = true;
      timeoutMs = 500;
    };
  };

  extraPackages = [
    lua
    all
  ];
}
