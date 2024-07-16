{
  exec-once = [
    #"swaybg --image ~/.config/nixos/wallpapers/front.png --mode fill"
    #"dbus-update-activation-environment --systemd DISPLAY WAYLAND-DISPLAY"
    #"bash ~/.config/lockonsleep/config.sh"
    "waybar"
  ];

   monitor = [
    #"HDMI-A-1,1920x1080,0x0,1,transform,1"
    #"HDMI-A-3,1920x1080,1080x0,1"
  ];

  "env" = "XCURSOR_SIZE,24";
  "$mod" = "SUPER";
  input = {
    kb_layout = "us";
    follow_mouse = 1;
    sensitivity = 0;
    accel_profile = "flat";
    touchpad = {
      natural_scroll = "no";
      disable_while_typing = "no";
      tap-to-click = "no";
    };
  };

  general = {
    gaps_in = 5;
    gaps_out = 20;
    border_size = 2;
    "col.active_border" = "rgba(cba6f7ff)";
    "col.inactive_border" = "rgba(440c88ff)";
    layout = "dwindle";
  };

  decoration = {
    rounding = 10;
    blur = {
      enabled = false;
      size = 7;
      passes = 1;
    };
    drop_shadow = "no";
    shadow_range = 4;
    shadow_render_power = 3;
    "col.shadow" = "rgba(1a1a1aee)";
  };

  windowrulev2 = [
    "float, title:^(Picture-in-Picture)$"
    "pin, title:^(Picture-in-Picture)$"
    "move 67% 72%, title:^(Picture-in-Picture)$"
    "size 33% 28%, title:^(Picture-in-Picture)$"
  ];

  animations = {
    enabled = true;
    bezier = "myBezier, 0.05, 0.9, 0.1, 1.05";
    animation = [
      "windows, 1, 7, myBezier"
      "windowsOut, 1, 7, default, popin 80%"
      "border, 1, 10, default"
      "borderangle, 1, 8, default"
      "fade, 1, 7, default"
      "workspaces, 1, 6, default"
    ];
  };

  dwindle = {
    pseudotile = true;
    preserve_split = "yes";
  };

  master = {
#    new_is_master = true;
  };

  gestures = {
    workspace_swipe = false;
  };

  misc = {
    disable_hyprland_logo = true;
  };

  binde = [
    # Volume stuffs
  ];
  bind = [
    # basic binds
    "$mod, Return, exec, foot"
    ", XF86AudioRaiseVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+"
    ", XF86AudioLowerVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"
    ", XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
    ", XF86AudioPlay, exec, playerctl play-pause"
    ", XF86AudioNext, exec, playerctl next"
    ", XF86AudioPrev, exec, playerctl previous"
    ", XF86AudioStop, exec, playerctl stop"
    ", XF86AudioMedia, exec, vlc"
    ", XF86Launch1, exec, nmcli device wifi rescan"
    "SHIFT_L CONTROL_L, F, exec, playerctl position 10+"
    "SHIFT_L CONTROL_L, B, exec, playerctl position 10-"
    "$mod SHIFT, Q, killactive, "
    "$mod, M, exit, "
    "$mod SHIFT, space, togglefloating, "
    "$mod, S, exec, wofi --show drun"
    "$mod, E, exec, nemo"
    "$mod, P, pseudo,"
    "$mod, T, fullscreen,"
    "$mod, J, togglesplit,"
    "$mod SHIFT, F, exec, hyprctl dispatch exit"
    "$mod SHIFT, S, exec, grim -g \"$(slurp)\" - | wl-copy"
    "$mod, left, movewindow, l"
    "$mod, right, movewindow, r"
    "$mod, up, movewindow, up"
    "$mod, down, movewindow, down"
    # Switch workspaces
    "$mod, 1, workspace, 1"
    "$mod, 2, workspace, 2"
    "$mod, 3, workspace, 3"
    "$mod, 4, workspace, 4"
    "$mod, 5, workspace, 5"
    "$mod, 6, workspace, 6"
    "$mod, 7, workspace, 7"
    "$mod, 8, workspace, 8"
    "$mod, 9, workspace, 9"
    # Move a window to a given workspace
    "$mod SHIFT, 1, movetoworkspace, 1"
    "$mod SHIFT, 2, movetoworkspace, 2"
    "$mod SHIFT, 3, movetoworkspace, 3"
    "$mod SHIFT, 4, movetoworkspace, 4"
    "$mod SHIFT, 5, movetoworkspace, 5"
    "$mod SHIFT, 6, movetoworkspace, 6"
    "$mod SHIFT, 7, movetoworkspace, 7"
    "$mod SHIFT, 8, movetoworkspace, 8"
    "$mod SHIFT, 9, movetoworkspace, 9"
    # Use mouse to scroll through existing workspaces
    "$mod, mouse_down, workspace, e+1"
    "$mod, mouse_up, workspace, e-1"
  ];
  bindm = [
    "$mod, mouse:272, movewindow"
    "$mod, mouse:273, resizewindow"
  ];
}

