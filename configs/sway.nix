{lib, ...}:{
  modifier = "Mod4";
  terminal = "foot";
  gaps = {
    inner = 5;
    outer = 7;
  };
  input = {
    "type:touchpad" = {
      accel_profile = "flat";
      dwt = "disabled";
      scroll_factor = "0.3";
    };
    "2:10:TPPS/2_IBM_TrackPoint" = {
      scroll_factor = "0.3";
    };
    "type:mouse" = {
      accel_profile = "flat";
    };
  };
  workspaceLayout = "default";
  keybindings = lib.mkOptionDefault {
    "XF86AudioRaiseVolume" = "exec wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+";
    "XF86AudioLowerVolume" = "exec wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-";
    "XF86AudioMute" = "exec wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle";
    "XF86AudioPlay" = "exec playerctl play-pause";
    "XF86AudioNext" = "exec playerctl next";
    "XF86AudioPrev" = "exec playerctl previous";
    "XF86AudioStop" = "exec playerctl stop";
    "XF86AudioMicMute" = "exec wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle";
    "XF86MonBrightnessDown" = "exec brightnessctl s 10%-";
    "XF86MonBrightnessUp" = "exec brightnessctl s +10%";
    "XF86AudioMedia" = "exec vlc";
    "XF86Launch1" = "exec nmcli device wifi rescan";
    "Shift_L+Control_L+B" = "exec playerctl position 10-";
    "Shift_L+Control_L+F" = "exec playerctl position 10+";
  };
#  colors = {
#    focused = import ./swaycolors.nix;
#    focused = {
#      border = "#cba6f7";
#    };
#    focusedInactive = import ./swaycolors.nix; 
#    focusedInactive = {
#      background = "#440c88"; 
#      indicator = "#440c88";
#    };
#    unfocused = import ./swaycolors.nix; 
#    unfocused = {
#      background = "#440c88";
#      indicator = "#440c88";
#    };
#  };
  window = {
    titlebar = false;
  };
}
