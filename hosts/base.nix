{ lib, pkgs, config, ... }: {
  environment.systemPackages = with pkgs; [
    vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
    neovim
    zsh
    cachix
    networkmanager
    networkmanagerapplet
  ];
  programs.mtr.enable = true;
  users.mutableUsers = true;
  users.users.pk = {
    isNormalUser = true;
    extraGroups = [ "wheel" "video" "libvirtd" "podman" "vboxusers"];
    shell = pkgs.zsh;
    description = "Piotr Krawiec";
    initialPassword = "nhy7*UJM";
  };
}
