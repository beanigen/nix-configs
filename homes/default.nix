{
  inputs,
  self,
  config,
  lib,
  ...
}; {
  home-manager = {
    useUserPackages = true;
    useGlobalPkgs = true;
    extraSpecialArgs = {
      inherit inputs self;
    };
    users = {
      maya = {
        home = {
	  username = "maya";
	  homeDirectory = "/home/maya";
	};
    };
  };
}
