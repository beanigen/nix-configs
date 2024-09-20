{pkgs, ...}:{
  home.packages = with pkgs; [
    comma
    hyfetch
  ];
}
