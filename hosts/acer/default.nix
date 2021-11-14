{ lib, config, pkgs, ... }: {
  imports = [ # Include the results of the hardware scan.
    ./hardware-configuration.nix
    ./xserver.nix
    ./audio.nix
    ./backups.nix
  ];
  networking = {
    hostName = "acer";
    interfaces.wlp5s0.useDHCP = true;
    interfaces.enp4s0.useDHCP = true;
  };
  hardware.bluetooth = {
    enable = true;
    settings = { General = { Enable = "Source,Sink,Media,Socket"; }; };
  };
}
