{pkgs, ...}: {
  plugins = {
    lsp.servers = {
      gopls.enable = true;
    };
    conform-nvim.settings.formatters_by_ft.go = ["gofumpt" "goimports"];
    lint.lintersByFt.go = ["golangcilint"];
  };
  extraPackages = with pkgs; [gotools gofumpt golangci-lint];
}
