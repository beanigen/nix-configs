{pkgs, lib, inputs, ...}:{
  imports = [ ./packages.nix ./programs.nix ../../configs/sway/standalone.nix
    inputs.catppuccin.homeManagerModules.catppuccin
    inputs.nvf.homeManagerModules.default
    inputs.nix-index-database.hmModules.nix-index
  ];
  home = {
    username = "maya";
    homeDirectory = "/home/maya";
    stateVersion = "23.11";
    pointerCursor = {
      gtk.enable = true;
      x11.enable = true;
      package = pkgs.catppuccin-cursors.mochaMauve;
      name = "catppuccin-mocha-mauve-cursors";
      size = 40;
    };
  };
  programs.home-manager.enable = true;
  catppuccin.enable = true;
#      services.arrpc.enable = true;

  gtk = {
    catppuccin.enable = false;
    enable = true;
    theme = {
      name = "catppuccin-mocha-mauve-standard";
      package = pkgs.catppuccin-gtk.override {
        accents = ["mauve"];
        size = "standard";
        variant = "mocha";
      };
    };
    iconTheme.package = pkgs.adwaita-icon-theme;
    iconTheme.name = "Adwaita";
  };
  qt = {
    enable = true;
    style.name = "kvantum";
    style.catppuccin.enable = true;
    platformTheme.name = "kvantum";
  };

    #wayland.windowManager.sway = { 
    #  package = pkgs.swayfx;
    #  enable = true;
    #  checkConfig = false; #temp fix for the unable to create gles2 renderer error
    #  config = import ../../configs/sway;
	  #  extraConfig = import ../../configs/sway/swayfx;
    #};

  xsession.windowManager.i3 = {
    enable = true;
    package = pkgs.i3-gaps;
    config = import ../../configs/i3.nix;
  };
  services.kanshi = {
    enable = true;
    settings = [
      {
        profile.name = "docked";
        profile.outputs = [
          {
            criteria = "eDP-1";
            position = "0,1362";
          }
          {
            criteria = "Hewlett Packard HP W2371d 6CM2220CSQ";
            position = "1366,1050";
          }
        ];
      }
      {
        profile.name = "undocked";
        profile.outputs = [
          {
            criteria = "eDP-1";
            position = "0,0";
          }
        ];
      }
      {
        profile.name = "desktop";
        profile.outputs = [
          {
            criteria = "Hewlett Packard HP W2371d 6CM2220CSQ";
            position = "0,1050";
          }
          {
            criteria = "Samsung Electric Company SyncMaster HMDQ202016";
            position = "151,0";
          }
        ];
      }
    ];
  };
}

