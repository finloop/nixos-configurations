{ config, lib, pkgs, ... }:

{
  services.xserver = {
    enable = true;
    desktopManager = { plasma5.enable = false; };
    displayManager = {
      sddm.enable = true;
    };
    layout = "pl";
  };
}
