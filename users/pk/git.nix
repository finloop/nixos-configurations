{ config, lib, pkgs, ... }:

{
  programs.git = {
    enable = true;
    userName = "Piotr Krawiec";
    userEmail = "piotr.krawiec23@gmail.com";
    aliases = {
      uncommit = "reset --soft HEAD";
      unstage = "reset";
      s = "status";
      c = "commit";
      ai = "add -i";
      cm = "commit -m";
      co = "checkout";
      cob = "checkout -b";
      del = "branch -D";
      br =
        "branch --format='%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(contents:subject) %(color:green)(%(committerdate:relative)) [%(authorname)]' --sort=-committerdate";
      save = "!git add -A && git commit -m 'chore: commit save point";
      lg = ''
        !git log --pretty=format:"%C(magenta)%h%Creset -%C(red)%d%Creset %s %C(dim green)(%cr) [%an]" --abbrev-commit -30'';
    };
    ignores = [ "*~" "*.swp" ];
    lfs.enable = true;
    delta.enable = true;
    signing = {
      key = "CE421BEF89DC7227";
      signByDefault = true;
    };
    extraConfig = {
      github.user = "finloop";
      gitlab.user = "finloop";
      init.defaultBranch = "main";
    };
  };
  programs.gh = {
    enable = true;
    settings = {
      editor = "nvim";
      git_protocol = "ssh";
    };
  };
}
