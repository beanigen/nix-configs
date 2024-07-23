{
  description = "flake for my systems";
  

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    #hyprland.url = "git+https://github.com/hyprwm/Hyprland?submodules=1";
    ags.url = "github:Aylur/ags";
  };

  outputs = inputs@{ nixpkgs, home-manager, ags, ... }:{
    homes = ../homes;

    nixosConfigurations."hypermac" = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        ./baseConfig/hypermac/configuration.nix
	home-manager.nixosModules.home-manager {imports = [./modules/hm/home-manager.nix];}	
      ];
    };

    nixosConfigurations."adventurer" = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      specialArgs = { inherit ags; };
      modules = [
        ./baseConfig/adventurer/configuration.nix
	home-manager.nixosModules.home-manager {imports = [./modules/hm/home-manager.nix];}
      ];
    };
  };
}

