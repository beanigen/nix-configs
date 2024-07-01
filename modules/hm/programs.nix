{
  programs = {
    foot.enable = true;

    git = {
      enable = true;
      userName = "beanigen";
      userEmail = "beanigit@protonmail.com";
      extraConfig = {
        commit.gpgsign = true;
        gpg.format = "ssh";
        user.signingkey = "~/.ssh/id_ed25519.pub";
        init.defaultBranch = "master";
      };
    };
  };
}
