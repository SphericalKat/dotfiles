{ inputs, ... }:
final: prev: {
  zls = inputs.zls.packages.${final.stdenv.hostPlatform.system}.zls;
}
