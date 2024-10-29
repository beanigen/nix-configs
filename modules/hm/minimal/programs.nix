{...}:{
  programs = {

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