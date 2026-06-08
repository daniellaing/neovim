{
  description = "A nixvim configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    flake-parts = {
      url = "github:hercules-ci/flake-parts";
      inputs.nixpkgs-lib.follows = "nixpkgs";
    };

    nixvim = {
      url = "github:nix-community/nixvim";
      inputs = {
        flake-parts.follows = "flake-parts";
        nixpkgs.follows = "nixpkgs";
      };
    };
  };

  outputs = {
    self,
    nixvim,
    flake-parts,
    ...
  } @ inputs:
    flake-parts.lib.mkFlake {inherit inputs;} {
      systems = [
        "x86_64-linux"
        "aarch64-linux"
        "x86_64-darwin"
        "aarch64-darwin"
      ];

      perSystem = {
        pkgs,
        system,
        ...
      }: let
        nvim = nixvim.lib.evalNixvim {
          inherit system;
          modules = [{nixpkgs.source = inputs.nixpkgs;} ./config];
          # You can use `extraSpecialArgs` to pass additional arguments to your module files
          extraSpecialArgs = {
            root = ./.;
            # inherit (inputs) foo;
          };
        };
      in {
        _module.args.pkgs = import self.inputs.nixpkgs {
          inherit system;
          overlays = [self.overlays.default];
          config.allowUnfree = true;
        };

        checks = {
          # Run `nix flake check .` to verify that your config is not broken
          default = nvim.config.build.test;
        };

        packages = {
          # Lets you run `nix run .` to start nixvim
          default = nvim.config.build.package;
        };

        formatter = pkgs.alejandra;
      };
    }
    // {
      overlays = import ./overlays.nix inputs;
    };
}
