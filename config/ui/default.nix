{ pkgs, ... }:

{
  imports = [
    ./notify.nix
    ./lualine.nix
  ];

  extraPackages = with pkgs.vimPlugins; [
    dressing-nvim
  ];
}
