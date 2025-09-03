{
  programs.home-manager = {
    enable = true;
  };

  home.sessionVariables = {
    EDITOR = "vi";
    HOTEL = "trivago";
  };

  home.shellAliases = {
    nvm = "fnm";
  };
}
