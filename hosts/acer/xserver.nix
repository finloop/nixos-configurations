{ config, lib, pkgs, ... }:
let
  nvidia-offload = pkgs.writeShellScriptBin "nvidia-offload" ''
    export __NV_PRIME_RENDER_OFFLOAD=1
    export __NV_PRIME_RENDER_OFFLOAD_PROVIDER=NVIDIA-G0
    export __GLX_VENDOR_LIBRARY_NAME=nvidia
    export __VK_LAYER_NV_optimus=NVIDIA_only
    exec -a "$0" "$@"
  '';
in
{
  # NVIDIA DRIVERS AND OFFLOAD
  environment.systemPackages = [ nvidia-offload ];
  hardware.nvidia.modesetting.enable = true;
  hardware.nvidia.nvidiaPersistenced = true;

  # XSERVER CONFIG
  services.xserver = {
    enable = true;
    videoDrivers = [ "nvidia" ];

    # GNOME
    displayManager.gdm.enable = true;
    displayManager.gdm.wayland = false;
    desktopManager.gnome.enable = true;

    layout = "pl";
    # xkbOptions = "caps:swapescape";
    libinput = {
      enable = true;
      touchpad = {
        naturalScrolling = true;
        disableWhileTyping = true;
      };
      mouse = { accelProfile = "flat"; };
    };
  };

  # ENABLE NVIDIA PRIME
  hardware.nvidia.prime = {
    offload.enable = true;
    #sync.enable = true;
    amdgpuBusId = "PCI:6:0:0";
    nvidiaBusId = "PCI:1:0:0";
  };

  #hardware.bumblebee.enable = true;

  xdg = {
  portal = {
    enable = true;
    extraPortals = with pkgs; [
      xdg-desktop-portal-wlr
    ];
    gtkUsePortal = true;
  };
  };

  hardware.opengl.enable = true;
  hardware.opengl.driSupport32Bit = true;

}
