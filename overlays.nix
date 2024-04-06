{nixpkgs, ...}: rec {
  default = nixpkgs.lib.composeManyExtensions [
    # FIXME: Remove when mtshiba/pylyzer#78 resolves
    pylyzer-fix
    (import (builtins.fetchTarball {
      url = "https://github.com/oxalica/rust-overlay/archive/master.tar.gz";
      sha256 = "sha256:13xp3bsgwpld8bkh5sjkigxcy5nz336hyc9xssk58glpgf1sxddm";
    }))
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
