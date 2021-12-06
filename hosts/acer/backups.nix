{ config, lib, pkgs, agenix, ... }:

{
  services.duplicati = {
    enable = true;
    user = "root";
  };
  services.restic.backups = {
    b2 = {
      paths = [
        "/home/pk"
      ];
      repository = "rclone:b2:pk-backup-home";
      initialize = true;
      passwordFile = config.age.secrets.restic.path;
      timerConfig = {
        OnCalendar = "00:05";
      };
      pruneOpts = [
        "--keep-daily 7"
        "--keep-weekly 4"
        "--keep-monthly 12"
        "--keep-yearly 12"
      ];

      extraBackupArgs = [
        "--exclude-caches"
        "--exclude=/home/pk/.conda"
        "--exclude=/home/pk/.npm"
        "--exclude=/home/pk/.local"
        "--exclude=/home/pk/bin"
        "--exclude=/home/pk/Desktop"
        "--exclude=/home/pk/Downloads"
        "--exclude=/home/pk/miniconda3"
        "--exclude=/home/pk/Videos"
        "--exclude=/home/pk/VirtualBox VM"
        "--exclude=/home/pk/.jupyter"
      ];

      rcloneConfigFile = config.age.secrets.rclone.path;
    };
  };
}
