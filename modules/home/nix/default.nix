{
  lib,
  pkgs,
  namespace,
  ...
}:
{
  nix.extraOptions = ''
    experimental-features = auto-allocate-uids cgroups flakes nix-command
  '';
  
  nix.gc = {
    automatic = true;
    options = "--delete-older-than 3d";
  };
}
