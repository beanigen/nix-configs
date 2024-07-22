{
  description = "flake for my systems";
  

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    #hyprland.url = "git+https://github.com/hyprwm/Hyprland?submodules=1";
  };

  outputs = inputs@{ nixpkgs, home-manager, ... }: {
    
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
      modules = [
        ./baseConfig/adventurer/configuration.nix
	home-manager.nixosModules.home-manager {imports = [./modules/hm/home-manager.nix];}
      ];
    };
  };

}
