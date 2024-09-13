{config, pkgs, ...}:{
  imports = [
    ./configuration.nix
    ../overrides.nix
    ../syncthing.nix
    ../substituters.nix
    ../fonts.nix
  ];
}
