{config, pkgs, ...}:{
  imports = [
    ./configuration.nix
    ../overrides.nix
    ../syncthing.nix
    ../ssh.nix
    ../substituters.nix
  ];
}
