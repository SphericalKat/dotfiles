{ config, pkgs, lib, ... }:
let 
  initScript = if pkgs.stdenv.hostPlatform.isDarwin then "darwin-init" else "linux-init";
in
{
  programs.zsh = {
    enable = true;
    
    # Oh My Zsh configuration
    oh-my-zsh = {
      enable = true;
      theme = "robbyrussell";
      plugins = [
        "git"
        "history"
      ];
    };
    
    # Source the darwin-init script and other custom configurations
    initExtra = ''
      # Source the custom init script
      if [ -f "$HOME/dotfiles/${initScript}" ]; then
        source "$HOME/dotfiles/${initScript}"
      fi
    '';
  };
}