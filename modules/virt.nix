{ pkgs, ... }: {
  virtualisation.virtualbox.host = {
    enable = true;
    enableExtensionPack = true;
    enableHardening = true;
  };
  virtualisation.docker = {
   enable = true;
   enableNvidia = true;
  };
  users.users.pk.extraGroups = [ "docker" ];
  systemd.enableUnifiedCgroupHierarchy = false;
}
