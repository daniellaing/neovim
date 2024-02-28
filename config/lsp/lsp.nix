{
  plugins = {
    lsp = {
      enable = true;
      servers = {

        # Nix
        nixd.enable = true;
        rnix-lsp.enable = true;
      };
    };

    lsp-format.enable = true;
    lsp-lines.enable = true;
    lspkind.enable = true;
  };
}
