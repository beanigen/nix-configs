# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];

  #hardware.thinkpad-dock = {
  #  enable = true;
  #  dockEvent = "${pkgs.wlr-randr}/bin/wlr-randr --output eDP-1 --pos 0,1362";
  #  undockEvent = "${pkgs.wlr-randr}/bin/wlr-randr --output eDP-1 --pos 0,0";
  #};
  programs.gamemode.enable = true;
  virtualisation.kvmgt = {
    enable = true;
    vgpus = {
      "i915-GVTg_V4_8" = {
        uuid = [ "b4c3049a-74a1-11ef-8112-df4a4be644fd" ];
      };
    };
  };
  virtualisation.libvirtd = {
    enable = true;
    qemu = {
      package = pkgs.qemu_kvm;
      runAsRoot = true;
      swtpm.enable = true;
      ovmf = {
        enable = true;
        packages = [(pkgs.OVMF.override {
          secureBoot = true;
          tpmSupport = true;
        }).fd];
      };
    };
  };
  programs.virt-manager.enable = true;
  hardware.bluetooth = {
    enable = true;
    powerOnBoot = true;
  };
  services.blueman.enable = true;
  programs.adb.enable = true;
  services.greetd = {
    enable = true;
    restart = true;
    settings.default_session = {
      command = "${pkgs.greetd.tuigreet}/bin/tuigreet --time --cmd sway";
      user = "greeter";
    };
  };
  services.acpid = {
    enable = true;
    handlers = {
      pauseOnDisconnect = {
        event = "jack/headphone HEADPHONE unplug";
        action = "${pkgs.sudo}/bin/sudo -u maya XDG_RUNTIME_DIR=/run/user/1000/ ${pkgs.playerctl}/bin/playerctl pause";
      };
    };
  };
  programs.kdeconnect.enable = true;
  programs.dconf.enable = true;
  systemd.services.greetd.serviceConfig = {
    Type = "idle";
    StandardInput = "tty";
    StandardOutput = "tty";
    StandardError = "journal";
    TTYReset = "true";
    TTYHangup = "true";
    TTYVTDisallocate = "true";
  };

  systemd.services = {
    NetworkManager.requires = ["ModemManager.service"];
  };

  services.tlp = {
    enable = true;
    settings = {
      CPU_SCALING_GOVERNOR_ON_AC = "performance";
      CPU_SCALING_GOVERNOR_ON_BAT = "powersave";
      CPU_ENERGY_PERF_POLICY_ON_AC = "performance";
      CPU_ENERGY_PERF_POLICY_ON_BAT = "power";
    };
  };
  services.udev.packages = with pkgs; [ platformio-core openocd ];
  hardware.graphics = {
    enable = true;
    extraPackages = with pkgs; [
      mesa
      mesa.drivers
      intel-media-sdk
      intel-vaapi-driver
      libvdpau-va-gl
    ];
    enable32Bit = true;
    extraPackages32 = with pkgs.pkgsi686Linux; [
      intel-vaapi-driver
      mesa
      mesa.drivers
      libvdpau-va-gl
    ];
  };
  environment.sessionVariables = { LIBVA_DRIVER_NAME = "i965"; };
  security.pam.services.gtklock = {};
  services.fprintd.enable = true;
  services.udisks2.enable = true;
  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "callisto"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  xdg.portal = {
    enable = true;
    wlr.enable = true;
    extraPortals = [pkgs.xdg-desktop-portal-gtk];
    config.common.default = "*";
  };

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Enable networking
  networking.networkmanager.enable = true;

  # Set your time zone.
  time.timeZone = "Australia/Perth";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_AU.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_AU.UTF-8";
    LC_IDENTIFICATION = "en_AU.UTF-8";
    LC_MEASUREMENT = "en_AU.UTF-8";
    LC_MONETARY = "en_AU.UTF-8";
    LC_NAME = "en_AU.UTF-8";
    LC_NUMERIC = "en_AU.UTF-8";
    LC_PAPER = "en_AU.UTF-8";
    LC_TELEPHONE = "en_AU.UTF-8";
    LC_TIME = "en_AU.UTF-8";
  };

  # Enable the X11 windowing system.
  services.xserver = {
    enable = true;
  #  desktopManager.cinnamon.enable = true;
    displayManager.startx.enable = true;
  };

  # Enable the GNOME Desktop Environment.
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  # Configure keymap in X11
  services.xserver = {
    xkb.layout = "au";
    xkb.variant = "";
  };

  # Enable CUPS to print documents.
  services.printing.enable = true;

  # Enable sound with pipewire.
  hardware.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    # If you want to use JACK applications, uncomment this
    #jack.enable = true;

    # use the example session manager (no others are packaged yet so this is enabled by default,
    # no need to redefine it in your config for now)
    #media-session.enable = true;
  };

  # Enable touchpad support (enabled default in most desktopManager).
  # services.xserver.libinput.enable = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.maya = {
    isNormalUser = true;
    description = "Maya";
    extraGroups = [ "networkmanager" "wheel" "libvirtd" ];
    packages = with pkgs; [
    #  thunderbird
      git
      tree
    ];
  };

  # Install firefox.
  programs.firefox.enable = true;

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
  #  vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
    lutris
    playerctl
  #  wget
  ];

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "24.05"; # Did you read the comment?

}
