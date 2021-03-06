{ pkgs, ... }:
let
  my-dicts = dicts: with dicts; [ en pl en-computers en-science ];
  my-aspell = pkgs.aspellWithDicts my-dicts;
in {
  environment.systemPackages = with pkgs; [
    libreoffice-fresh
    xkcd-font
    gammastep
    texlive.combined.scheme-full
    gimp
    pandoc
    my-aspell
    ispell
    languagetool
    thunderbird-bin-91
    birdtray
    teams
    tdesktop
    pcmanfm
    pavucontrol
    pamixer
    alsa-utils
    spotify
    brave
    zotero
    slack
    zoom-us
  ];
  fonts.fonts = with pkgs; [ nerdfonts ];
}
