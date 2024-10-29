{pkgs, lib, inputs, ...}:

{
  home-manager.useGlobalPkgs = true;
  home-manager.useUserPackages = true;
  home-manager.users.maya = {
    imports = lib.mkForce [ ./home.nix ];
    programs.home-manager.enable = lib.mkForce false;
  };
}
