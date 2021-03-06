{ config, lib, pkgs, ... }:

{
  programs.zsh = {
    enable = true;
    autocd = true;
    dotDir = ".config/zsh";
    shellAliases = {
      g = "git";
      ping = "ping -c 3";
      space = "df -h -x tmpfs -x devtmpfs 2>& /dev/null";
      cp = "cp -i";
      mv = "mv -i";
      rm = "rm -I";
      ln = "ln -i";
      sysup =
        "sudo nixos-rebuild switch --flake '/home/pk/Documents/nixos-configurations#'";
    };
    dirHashes = {
      docs = "$HOME/Documents";
      proj = "$HOME/Projects";
      nts = "$HOME/Documents/notes";
      dl = "$HOME/Downloads";
    };
    enableSyntaxHighlighting = true;
    enableAutosuggestions = true;
    defaultKeymap = "viins";
    plugins = [{
      name = "p10k";
      src = pkgs.zsh-powerlevel10k;
    }];
    initExtra =
      "source ${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/powerlevel10k.zsh-theme && source ~/.p10k.zsh";
  };
}
