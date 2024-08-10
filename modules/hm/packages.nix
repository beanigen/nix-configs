{pkgs, ...}:{
  home.packages = with pkgs; [
    prismlauncher
    fluffychat
    wl-clipboard
    brightnessctl
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
