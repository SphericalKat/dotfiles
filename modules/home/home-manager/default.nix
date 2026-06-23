{ pkgs, ... }: {
  programs.home-manager = {
    enable = true;
  };
  
  home.packages = with pkgs; [
    zig
    zls
    maestro
    cargo-dist
    typst
    typst-live
  ];
}
