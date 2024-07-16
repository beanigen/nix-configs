{pkgs, inputs, ...}:{
  home.packages = with pkgs; [
    prismlauncher
    wl-clipboard
    wofi
    hyfetch
    pamixer
    pavucontrol
    prusa-slicer
    gamescope
    vlc
    playerctl
    firefox
    libreoffice
  ];
}
