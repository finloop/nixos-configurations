{ config, lib, pkgs, agenix, ... }:

{
  services.duplicati = {
    enable = true;
    user = "root";
  };
  services.restic.backups = {
    b2 = {
      paths = [ "/home/pk/Projects" ];
      repository = "rclone:b2:pk-backup-home";
      initialize = true;
      passwordFile = config.age.secrets.restic.path;
      timerConfig = {
        OnCalendar = "00:05";
      };

      rcloneConfigFile = config.age.secrets.rclone.path;
    };
  };
}
