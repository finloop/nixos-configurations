{ lib, config, pkgs, ... }: {
  imports = [ # Include the results of the hardware scan.
    ./hardware-configuration.nix
    ./xserver.nix
    ./audio.nix
    #./backups.nix
  ];
  networking = {
    hostName = "acer";
    interfaces.enp0s3.useDHCP = true;
  };
  hardware.bluetooth = {
    enable = true;
    settings = { General = { Enable = "Source,Sink,Media,Socket"; }; };
  };
}
