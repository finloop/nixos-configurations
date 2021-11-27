{ pkgs, ... }: {
  virtualisation.virtualbox.host = {
    enable = true;
    enableExtensionPack = true;
    enableHardening = true;
  };
  virtualisation.docker.enable = true;
  users.users.pk.extraGroups = [ "dokcer" ];
}
