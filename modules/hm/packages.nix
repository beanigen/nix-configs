{pkgs, ...}:{
  home.packages = with pkgs; [
    prismlauncher
    swaynotificationcenter
    udiskie
    gtklock
    swaybg
    gzdoom
    fzf
    openrct2
    wl-clipboard
    brightnessctl
    nemo
    xfce.ristretto
    xfce.tumbler
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
