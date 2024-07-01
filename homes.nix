{ config, pkgs, ... }:
let
  home-manager = builtins.fetchTarball "https://github.com/nix-community/home-manager/archive/master.tar.gz";
in
{
  imports = [
    (import "${home-manager}/nixos")
  ];

  home-manager.users.maya = {
    home.stateVersion = "23.11";
    home.packages = [
      ##blah blah
    ];
  };
}
