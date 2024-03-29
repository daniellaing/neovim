{pkgs, ...}: {
  plugins = {
    lsp.servers.marksman.enable = true;
    conform-nvim.formattersByFt.markdown = ["cbfmt" "mdformat"];
  };
  extraPackages = with pkgs; [cbfmt mdformat];
}
