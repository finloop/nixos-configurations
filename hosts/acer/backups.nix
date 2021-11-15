{ config, lib, pkgs, ... }:

{
  services.duplicati = {
    enable = true;
    user = "root";
  };
}
