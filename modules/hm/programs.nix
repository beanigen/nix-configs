{...}:{
  programs = {

    foot.enable = true;
  
    waybar = {
      enable = true;
      settings = import ../../configs/waybar.nix;
      style = import ../../configs/waybar-style.nix;
    };


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
