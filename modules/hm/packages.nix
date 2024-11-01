{pkgs, ...}:{
  home.packages = with pkgs; [
    prismlauncher
    libgpod
    libimobiledevice
    strawberry
    element-desktop-wayland
    nixgl.auto.nixGLDefault
    nixgl.auto.nixGLNvidia
    lmms
    kanshi
    emacs
    comma
    openscad
    wlr-randr
    grim
    slurp
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
