{pkgs, ...}:{
  home.packages = with pkgs; [
    prismlauncher
    wl-clipboard
    cinnamon.nemo
    xfce.ristretto
    xfce.tumbler
    wofi
    inkscape
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
