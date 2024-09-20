{pkgs, lib, inputs, ...}:

{
  home-manager.useGlobalPkgs = true;
  home-manager.useUserPackages = true;
  home-manager.users.maya = {
    imports = [ ./packages.nix ./programs.nix
      inputs.nvf.homeManagerModules.default
      inputs.nix-index-database.hmModules.nix-index
    ];
    home = {
      username = "maya";
      homeDirectory = "/home/maya";
      stateVersion = "23.11";
    };
  };
}

