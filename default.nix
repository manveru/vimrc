{ config, pkgs, ... }:
let
  myVimPlugins = pkgs.callPackage ./vim/plugins.nix {};
  latestNixpkgs = import (/home/manveru/github/nixos/nixpkgs) {};
  # latestNixpkgs = import (fetchTarball {
  #   url = https://github.com/NixOS/nixpkgs/archive/d9a90a4dfbbb93ded54e9965a69346ffcb51ef5f.tar.gz;
  #   sha256 = "11h1h338harlq4lyhnl8xv4yblfv78pqkxd1wncy85v9h94776iv";
  # }) {};
  neovim = latestNixpkgs.neovim.override {
    vimAlias = true;
    extraPython3Packages = [
      (latestNixpkgs.callPackage ./pyuv.nix {
        buildPythonPackage = latestNixpkgs.python3Packages.buildPythonPackage;
      })
      latestNixpkgs.python3Packages.enum34
    ];
    configure = (import ./configuration.nix {pkgs = latestNixpkgs;});
  };
in {
  environment.systemPackages = [ neovim ];
}
