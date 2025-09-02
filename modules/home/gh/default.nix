{ config, pkgs, namespace, ... }:
{
  programs.gh = {
    enable = true;
    gitCredentialHelper.enable = true;
    settings = {
      version = 1;
      git_protocol = "ssh";
      prompt = "enabled";
      editor = "vi";
    };
    extensions = with pkgs; [
      gh-markdown-preview
      gh-poi
    ];
  };
}
