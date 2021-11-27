{ pkgs, ... }: {
  virtualisation.virtualbox.host = {
    enable = true;
    enableExtensionPack = true;
    enableHardening = true;
  };
  virtualisation.dokcer.enable = true;
  users.users.pk.extraGroups = [ "dokcer" ];
}
