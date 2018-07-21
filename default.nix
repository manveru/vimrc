{ config, pkgs, ... }:
let
  myVimPlugins = pkgs.callPackage ./vim/plugins.nix {};
  latestNixpkgs = import ( fetchTarball {
    url = https://github.com/nixos/nixpkgs-channels/archive/d7d31fea7e7eef8ff4495e75be5dcbb37fb215d0.tar.gz;
    sha256 = "1ghb1nhgfx3r2rl501r8k0akmfjvnl9pis92if35pawsxgp115kv";
  }) {};
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
