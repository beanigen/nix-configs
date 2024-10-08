''
  * {
      border: none;
      font-family: "JetbrainsMono Nerd Font", "Font Awesome 5" ;
      font-size: 12px;
      border-radius: 12px; /* Controls Rounding */
  }

  #window {
      /*font-weight: bold;*/
      margin-top: 2px;
      padding-left: 10px;
      padding-right: 10px;
      padding-bottom: 2px;
      border-radius: 8px;
      transition: none;
    }

  window#waybar {
      background: #000000;
      padding: 2px 2px 2px 0px;
      margin: 7;
      /* background: transparent; */
  }

  window#waybar.empty {
      animation: fadeIn 5s;
  }

  # tray {
      padding: 0 10px;
  }

  window#waybar.hidden {
      opacity: 0.2;
    }

  /*-----module groups----*/
  .modules-right {
      /* margin: 0 -12px 0 0; */
      padding-right:7px;
      margin: 4px;
  }

  .mnodules-center {
      /* background: transparent; */
      margin: 0 0 0 0;

  }

  .modules-left {
      /* margin: 0 -12px 0 0; */
      padding-left:7px;
  }

  tooltip {
    background: #060606;
    color: #ffffff;
    border-radius: 10;
  }

  #workspaces {
      padding: 0 10px;
  }

  /*-----modules indv----*/
  #workspaces button {
      font-weight: bold;
      padding-right: 0px;
      /* padding-right: 7px */
  }
  #workspaces button:hover {
      font-weight: bold;
      padding-right: 0px;
      /* padding-right: 7px */
  }

  #workspaces button.focused {
      font-weight: bold;
      padding-right: 0px;
      /* padding-right: 7px */
  }

  #workspaces button.active {
      font-weight: bold;
      /* background-color: #ffffff; */
      /* padding-right: 7px */
  }

  #custom-sep_l {
  	color: #ffffff;
          margin: 0px 10px 0px 10px;
  }

  #custom-sep_r {
      color: #ffffff;
      padding-left: 4px;
      padding-right: 4px;
  }

  #custom-sep {
      color: #ffffff;
  }

  #custom-empty {
      color: #ffffff;
  }

  #clock {
  	font-weight: bold;
      padding: 0px 4px
  }

  #battery, #cpu, #memory, #temperature, #network, #pulseaudio, #custom-media, #backlight {
      padding: 0 10px;
  }

  #custom-updates {
      padding: 0px 0px
  }

  #keyboard-state {
    padding-left: 0px;
    padding-right: 0px;
   }

  #mode,
  #custom-power {
      padding: 0 10px;
  }

  #custom-launcher {
      font-weight: bold;
      /* padding-right: 7px */
  }
  #custom-menu {
      font-weight: bold;
      /* padding-right: 7px; */
  }
  #idle_inhibitor {
      padding: 0 5px;
  }

  #mode {
      color: #cc3436;
      font-weight: bold;
  }

  /*-----Indicators----*/
  #network.disconnected {
  	color: #ff5454;
  }
  #network.disabled {
  	color: #e3c78a;
  }
  #idle_inhibitor.activated {
      color: #2dcc36;
  }
  #pulseaudio.muted {
      color: #aaaaaa;
  }
  #battery.charging {
      color: #8cc85f;
  }
  #battery.warning:not(.charging) {
  	color: #e3c78a;
  }
  #battery.critical:not(.charging) {
      color: #ff5454;
  }
  #temperature.critical {
      color: #ff5454;
  }
''
