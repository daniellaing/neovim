{
  plugins = {
    lsp = {
      enable = true;
      servers = {

        # Nix
        # nixd.enable = true;
        nil_ls.enable = true;

        # Rust
        rust-analyzer = {
          enable = true;
          installCargo = true;
          installRustc = true;
        };

        # Python
        pylyzer.enable = true;

        # Other
        slint-lsp.enable = true; # GUI library
      };
    };

    lsp-format.enable = true;
    lsp-lines.enable = true;
    lspkind.enable = true;
  };
}
