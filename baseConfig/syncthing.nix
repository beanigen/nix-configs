{
  services.syncthing = {
    enable = true;
    user = "maya";
    dataDir = "/home/maya/sync/";
    configDir = "/home/maya/.config/syncthing";
    overrideDevices = true;
    overrideFolders = true;
    settings = {
      devices = {
      "hypermac" = { id = "id goes here"; };
      "adventurer" = { id = "id goes here"; };
      "callisto" = { id = "id goes here"; };
      };
      folders = {
        "General" = {
          path = "/home/maya/sync/general";
          devices = [ "callisto" "hypermac" "adventurer" ];
        };
        "Music" = {
          path = "/home/maya/Music";
          devices = [ "callisto" "hypermac" "adventurer" ];
        };
        "College" = {
          path = "/home/maya/sync/college";
          devices = [ "callisto" "hypermac" "adventurer" ];
        };
      };
    };
  };
}
