{ pkgs, namespace, ... }: {
  snowfallorg.user = {
    enable = true;
    name = "sphericalkat";
  };

  home.stateVersion = "24.05";
  
  home.packages = with pkgs; [
    fnm
    pkgs.zigpkgs.master
  ];
  
  # profiles.${namespace} = {
  #   ghostty = {
  #     enable = true;
  #     settings = {
  #       bold-is-bright = true;
  #       font-family = "JetBrainsMono Nerd Font Mono";
  #       shell-integration = "zsh";
  #       window-width = 244;
  #       window-height = 58;
  #     };
  #   };
  # };
}
