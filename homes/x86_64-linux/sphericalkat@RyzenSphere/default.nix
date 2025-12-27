{ pkgs, ... }: {
  snowfallorg.user = {
    enable = true;
    name = "sphericalkat";
  };

  home.stateVersion = "24.05";
  
  home.packages = with pkgs; [
    fnm
  ];
}
