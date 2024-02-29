{
  plugins = {
    lsp = {
      enable = true;
      servers = {

        # Nix
        nixd.enable = true;
        rnix-lsp.enable = true;

        # Rust
        rust-analyzer = {
          enable = true;
          installCargo = true;
          installRustc = true;
        };
      };
    };

    lsp-format.enable = true;
    lsp-lines.enable = true;
    lspkind.enable = true;
  };
}
