{pkgs, ...}:{
  home.packages = with pkgs; [
    prismlauncher
    fluffychat
    gtklock
    swaybg
    gzdoom
    fzf
    openrct2
    wl-clipboard
    brightnessctl
    cinnamon.nemo
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
