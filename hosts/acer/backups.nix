{ config, lib, pkgs, ... }:

{
  services.duplicati = {
    enable = true;
    user = "root";
  };
#  services.restic.backups = {
#    b2 = {
#      paths = [ "/home/pk" ];
#      repository = "rclone:b2:pk-home-backup";
#      initialize = true;
#      passwordFile = "/home/pk/.config/rclone_pass";
#      timerConfig = {
#        OnCalendar = "00:05";
#      };
#
#      rcloneConfig = {
#        type = "b2";
#        account = "xxx";
#        key = "xxx";
#        hard_delete = true;
#      };
#    };
#  };
}
