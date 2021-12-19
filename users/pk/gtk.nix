{ config, lib, pkgs, ... }:

{
  home.packages = [ pkgs.gnome3.gnome-tweaks
                    pkgs.gnome3.gnome-shell-extensions
                    pkgs.gnome3.gnome-tweak-tool
                    pkgs.gnomeExtensions.appindicator
                    pkgs.gnomeExtensions.disable-unredirect-fullscreen-windows
                    pkgs.gnomeExtensions.bring-out-submenu-of-power-offlogout-button # This one is broken
                  ];
  dconf = {
    enable = true;
  };
}
