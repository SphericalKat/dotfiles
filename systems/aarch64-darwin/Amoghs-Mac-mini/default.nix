{ pkgs, namespace, lib, ... }:
{
  # Nix configuration
  nix.settings = {
    experimental-features = [ "nix-command" "flakes" ];
    trusted-users = [ "root" "sphericalkat" ];
  };

  # System configuration
  system.stateVersion = 4;
  system.primaryUser = "sphericalkat";
  
  # Fix nixbld group GID mismatch
  ids.gids.nixbld = 350;
  
  users.users.sphericalkat = {
    name = "sphericalkat";
    home = "/Users/sphericalkat";
  };
  
  environment.variables = {
    LANG = "en_US.UTF-8";
  };
  
  environment.systemPackages = with pkgs; [
    nh
  ];

  # Enable homebrew
  homebrew = {
    enable = true;
    brews = [
      "ansible"
      "cocoapods"
      "fnm"
      "gh"
      "just"
      "parallel"
    ];
    casks = [
      "alt-tab"
      "obsidian"
      "orbstack"
      "prismlauncher"
      "raycast"
      "rectangle"
      "spotify"
      "stolendata-mpv"
      "zed"
      "ghostty"
      "claude-code"
    ];
    taps = [ ];
  };
}