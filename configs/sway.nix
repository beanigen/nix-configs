{
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
