{
  nixpkgs,
  rust-overlay,
  ...
}: rec {
  default = nixpkgs.lib.composeManyExtensions [
    # FIXME: Remove when mtshiba/pylyzer#78 resolves
    pylyzer-fix
    rust-overlay.overlays.default
  ];

  pylyzer-fix = final: prev: {
    pylyzer = prev.pylyzer.override {
      rustPlatform = final.makeRustPlatform {
        rustc = final.pkgs.rust-bin.stable."1.75.0".default;
        cargo = final.pkgs.cargo;
      };
    };
  };
}
