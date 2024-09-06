{...}:{
  programs = {

    starship = {
      enable = true;
    };
    nvf = {
      enable = true;
      settings.vim = {
        statusline.lualine = {
          enable = true;
          theme = "dracula";
        };
        autocomplete.enable = true;
        languages = {
	        enableFormat = true;
	        enableLSP = true;
          #enableTreesitter = true; disabled until it fixes itself
	        nix.enable = true;
	        clang.enable = true;
	        html.enable = true;
          css.enable = true;
	        python.enable = true;
	      };
      };
    };

    foot = {
      enable = true;
      settings = {
        main.font = "monospace:size=10";
	colors.alpha = "0.8";
      };
    };
  
    waybar = {
      enable = true;
      settings = import ../../configs/waybar.nix;
      style = import ../../configs/waybar-style.nix;
    };

#    ags = {
#      enable = true;
#      configDir = ../../configs/ags;
#      extraPackages = with pkgs; [
#        gtksourceview
#	webkitgtk
#	accountsservice
#      ];
#    };

    git = {
      enable = true;
      userName = "beanigen";
      userEmail = "beanigit@protonmail.com";
      extraConfig = {
        commit.gpgsign = true;
        gpg.format = "ssh";
        user.signingkey = "~/.ssh/id_ed25519.pub";
        init.defaultBranch = "main";
      };
    };
  };
}
