{pkgs, inputs, ...}:{
  home.packages = with pkgs; [
    prismlauncher
    wl-clipboard
    wofi
    hyfetch
    pamixer
    pavucontrol
    gimp
    prusa-slicer
    gamescope
    vlc
    playerctl
    firefox
    libreoffice
  ];
}
