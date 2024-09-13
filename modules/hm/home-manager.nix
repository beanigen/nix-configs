{pkgs, lib, inputs, ...}:

{
  home-manager.useGlobalPkgs = true;
  home-manager.useUserPackages = true;
  home-manager.users.maya = {
    imports = [ ./packages.nix ./programs.nix ../../configs/sway
      inputs.catppuccin.homeManagerModules.catppuccin
      inputs.nvf.homeManagerModules.default
      inputs.nix-index-database.hmModules.nix-index
    ];
    home = {
      username = "maya";
      homeDirectory = "/home/maya";
      stateVersion = "23.11";
	#file.".config/sway/config".source = ../../configs/sway;
	#file.".config/foot/foot.ini".source = ../../configs/foot.ini;
	    pointerCursor = {
	      gtk.enable = true;
	      x11.enable = true;
	      package = pkgs.catppuccin-cursors.mochaMauve;
	      name = "catppuccin-mocha-mauve-cursors";
	      size = 40;
	    };
    };
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
          profile.name = "Laptop Docked";
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
          profile.name = "Laptop Undocked";
          profile.outputs = [
            {
              criteria = "eDP-1";
              position = "0,0";
            }
          ];
        }
        {
          profile.name = "Desktop";
          profile.outputs = [
            {
              criteria = "Hewlett Packard HP W2371d 6CM2220CSQ";
              position = "0,0";
            }
            {
              criteria = "Samsung Electric Company SyncMaster HMDQ202016";
              position = "151,1080";
            }
          ];
        }
      ];
    };
      #wayland.windowManager.hyprland = {
      #  enable = true;
      #  systemd.enable = true;
      #  xwayland.enable = true;
      #	 settings = import ../../configs/hyprland.nix;
      #};
  };
}

