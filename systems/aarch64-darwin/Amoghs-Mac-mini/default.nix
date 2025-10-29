{ pkgs, namespace, lib, inputs, ... }:
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
    zoxide
    ansible
    parallel
    git
    gh
    just
    ctags
    ripgrep
    fd
    bat
    cocoapods
    fnm
    nom
    direnv
    deno
    flyctl
    inputs.nil.packages.aarch64-darwin.default
    nixd
    moon
    localstack
    bun
    jujutsu
    terragrunt
  ];

  # Home Manager configuration
  home-manager = {
    backupFileExtension = "bak";
    useGlobalPkgs = true;
    useUserPackages = true;
  };

  # Enable homebrew
  homebrew = {
    enable = true;
    brews = [
      "pgcli"
      "codex"
      "watchman"
      "hashicorp/tap/terraform"
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
      "figma"
    ];
    taps = [
      "hashicorp/tap"
    ];
  };
}
