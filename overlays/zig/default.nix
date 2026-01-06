{ inputs, ... }:
final: prev: {
  zig = inputs.zig.packages.${final.stdenv.hostPlatform.system}.master;
}
