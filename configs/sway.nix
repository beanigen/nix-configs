{lib, ...}:{
  modifier = "Mod4";
  terminal = "foot";
  gaps = {
    inner = 5;
    outer = 7;
  };
  input = {
    "2:7:SynPS/2_Synaptics_TouchPad" = {
      accel_profile = "flat";
      dwt = "disabled";
      scroll_factor = "0.3";
    };
  };
  keybindings = lib.mkOptionDefault {
    "XF86AudioRaiseVolume" = "exec wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+";
    "XF86AudioLowerVolume" = "exec wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-";
    "XF86AudioMute" = "exec wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle";
    "XF86AudioPlay" = "exec playerctl play-pause";
    "XF86AudioNext" = "exec playerctl next";
    "XF86AudioPrev" = "exec playerctl previous";
    "XF86AudioStop" = "exec playerctl stop";
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
