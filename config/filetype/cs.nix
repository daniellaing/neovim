{pkgs, ...}: {
  lsp.servers = {
    csharp_ls.enable = true;
  };

  plugins = {
    conform-nvim.settings.formatters_by_ft.cs = ["clang-format"];
  };

  extraPackages = [pkgs.dotnet-sdk pkgs.clang-tools];
}
