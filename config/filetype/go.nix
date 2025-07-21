{pkgs, ...}: {
  lsp.servers.gopls = {
    enable = true;
  };
  plugins = {
    conform-nvim.settings.formatters_by_ft.go = ["gofumpt" "goimports"];
    lint.lintersByFt.go = ["golangcilint"];
  };
  extraPackages = with pkgs; [gotools gofumpt golangci-lint];
}
