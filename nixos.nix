{ config, pkgs, ... }:
let
  myVimPlugins = pkgs.callPackage ./vim/plugins.nix {};
in {
  nixpkgs = {
    config = {
      packageOverrides = pkgs: rec {
        vimPlugins = pkgs.vimPlugins // myVimPlugins;
        nvim = pkgs.neovim.override {
          vimAlias = true;
          extraPython3Packages = [
            (pkgs.callPackage ./pyuv.nix {
              buildPythonPackage = pkgs.python3Packages.buildPythonPackage;
            })
            pkgs.python3Packages.enum34
          ];
          configure = (import ./configuration.nix {inherit pkgs;});
        };
      };
    };
  };

  environment.systemPackages = with pkgs; [ nvim ];
}
