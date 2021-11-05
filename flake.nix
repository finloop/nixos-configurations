{
  description = "finloops's config, based on: pgronkievitz's config";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";
    home-manager.url = "github:nix-community/home-manager/master";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    nixos-hardware.url = "github:NixOS/nixos-hardware/master";
    # emacs-overlay.url = "github:nix-community/emacs-overlay/master";
    nixpkgs-stable.url = "nixpkgs/nixos-21.05";
  };

  outputs =
    inputs@{ self, nixpkgs, home-manager, nixos-hardware, nixpkgs-stable, ... }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs {
        inherit system;
        config = {
          allowUnfree = true;
          allowBroken = true;
        };
      };
      lib = nixpkgs.lib;
    in {

      homeManagerConfigurations = {
        pk = home-manager.lib.homeManagerConfiguration {
          inherit system pkgs;
          username = "pk";
          homeDirectory = "/home/pk";
          configuration = { imports = [ ./users/pk/home.nix ]; };
        };
      };

      packages."${system}" = pkgs;
      nixosConfigurations = {
        nixos = lib.nixosSystem {
          inherit system;
          modules = [
            ./hosts/base.nix
            ./hosts/acer/default.nix
            #nixos-hardware.nixosModules.system76
            home-manager.nixosModules.home-manager
            {
              home-manager.useGlobalPkgs = true;
              home-manager.useUserPackages = true;
              home-manager.users.pk = import ./users/pk/home.nix;
            }
            ./modules/dev.nix
            #./modules/games.nix
            ./modules/misc.nix
            ./modules/office.nix
            ./modules/python.nix
            ./modules/boot.nix
            ./modules/locale.nix
            ./modules/nix.nix
            ./modules/security.nix
            #./modules/virt.nix
            ./modules/cache.nix
            #({ nixpkgs.overlays = [ inputs.emacs-overlay.overlay ]; })
          ];
        };
      };
    };
}
