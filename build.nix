{ pkgs ? import <nixpkgs> {}}:

{
  libstr = pkgs.callPackage ./default.nix {};
}
