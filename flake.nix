{
  description = "flake for my systems";
  

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    catppuccin.url = "github:catppuccin/nix";
    nvf.url = "github:notashelf/nvf";
    nix-index-database.url = "github:nix-community/nix-index-database";
    nix-index-database.inputs.nixpkgs.follows = "nixpkgs";
    #hyprland.url = "git+https://github.com/hyprwm/Hyprland?submodules=1";
  };
  
  outputs = inputs@{ self, nixpkgs, home-manager, ... }:{
    nixosConfigurations."hypermac" = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        ./baseConfig/hypermac
	      home-manager.nixosModules.home-manager {imports = [./modules/hm/home-manager.nix];}	
      ];
      specialArgs = { inherit inputs; };
    };

    nixosConfigurations."callisto" = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        ./baseConfig/callisto
	      home-manager.nixosModules.home-manager {imports = [./modules/hm/home-manager.nix];}
      ];
      specialArgs = { inherit inputs; };
    };

    nixosConfigurations."adventurer" = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        ./baseConfig/adventurer
	      home-manager.nixosModules.home-manager {imports = [./modules/hm/home-manager.nix];}
      ];
      specialArgs = { inherit inputs; };
    };
    nixosConfigurations."nugget" = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        ./baseConfig/nugget
	home-manager.nixosModules.home-manager {imports = [./modules/hm/home-manager.nix];}
      ];
      specialArgs = { inherit inputs; };
    };
  };
}

