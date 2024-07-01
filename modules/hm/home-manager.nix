{pkgs, ...}:{ 
    home-manager.useGlobalPkgs = true;
    home-manager.useUserPackages = true;
    home-manager.users.maya = {
      imports = [ ./packages.nix ./programs.nix];
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
      services.arrpc.enable = true;
      gtk = {
        enable = true;
	theme = {
	  name = "Catppuccin-Mocha-Standard-Mauve-Dark";
	  package = pkgs.catppuccin-gtk.override {
	    accents = ["mauve"];
	    variant = "mocha";
	  };
	};
        cursorTheme = {
	  name = "Catppuccin-Mocha-Mauve-Cursors";
	  package = pkgs.catppuccin-cursors.mochaMauve;
	  size = 40;
	};
      };
      qt = {
        enable = true;
	platformTheme.name = "gtk";
      };
      wayland.windowManager.hyprland = {
        enable = true;
	systemd.enable = true;
	xwayland.enable = true;
	settings = import ../../configs/hyprland.nix;
      };
      services.udiskie.enable = true;
    };
}

