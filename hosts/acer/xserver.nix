{ config, lib, pkgs, ... }:

{
  services.xserver = {
    enable = true;
    
    desktopManager = { 
      xterm.enable = false;
      plasma5.enable = true;
    };
    displayManager = {
      sddm.enable = true;
      defaultSession = "none+qtile";
    };
    windowManager.qtile.enable = true;
    layout = "pl";
    # xkbOptions = "caps:swapescape";
    libinput = {
      enable = true;
      touchpad = {
        naturalScrolling = true;
        disableWhileTyping = true;
      };
      mouse = { accelProfile = "flat"; };
    };
  };
}
