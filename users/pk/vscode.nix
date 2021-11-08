{ config, pkgs, ... }:
{
programs = {
    vscode = {
      enable = true;
      extensions = with pkgs.vscode-extensions; [
        dracula-theme.theme-dracula
        vscodevim.vim
        yzhang.markdown-all-in-one
	ms-python.python
	ms-python.vscode-pylance
      ];
    };
  };
}
