{pkgs, lib, ...}:{ 
    home-manager.useGlobalPkgs = true;
    home-manager.useUserPackages = true;
    home-manager.users.maya = {
      imports = [ ./packages.nix ./programs.nix ];
      home = {
	username = "maya";
        homeDirectory = "/home/maya";
        stateVersion = "23.11";
	#file.".config/sway/config".source = ../../configs/sway;
	pointerCursor = {
	  gtk.enable = true;
	  x11.enable = true;
	  package = pkgs.catppuccin-cursors.mochaMauve;
	  name = "catppuccin-mocha-mauve-cursors";
	  size = 40;
	};
      };

#      services.arrpc.enable = true;

      gtk = {
        enable = true;
	theme = {
	  name = "catppuccin-mocha-mauve-standard";
	  package = pkgs.catppuccin-gtk.override {
	    accents = ["mauve"];
            size = "standard";
	    variant = "mocha";
	  };
        };
        
	cursorTheme = {
	  name = "catppuccin-mocha-mauve-cursors";
	  package = pkgs.catppuccin-cursors.mochaMauve;
	  size = 40;
	};
      };

      qt = {
        enable = true;
	platformTheme.name = "gtk";
      };

      wayland.windowManager.sway = {
        package = pkgs.swayfx;
        enable = true;
	checkConfig = false; #temp fix for the unable to create gles2 renderer error
	config = import ../../configs/sway.nix;
	extraConfig = import ../../configs/swayfx;
      };

      xsession.windowManager.i3 = {
        enable = true;
	package = pkgs.i3-gaps;
	config = import ../../configs/i3.nix;
      };

      #wayland.windowManager.hyprland = {
      #  enable = true;
      #  systemd.enable = true;
      #  xwayland.enable = true;
      #	 settings = import ../../configs/hyprland.nix;
      #};

      services.udiskie.enable = true;
    };
}

