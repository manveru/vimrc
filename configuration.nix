{ pkgs }:
let plugins = pkgs.callPackage ./plugins.nix {};
in {
  customRC = ''${builtins.readFile ./vimrc}'';
  vam = {
    knownPlugins = pkgs.vimPlugins // plugins;
    pluginDictionaries = [{
      names = [
        "css-pretty"
        "denite-nvim"
        "deoplete-elm"
        "deoplete-nvim"
        "editorconfig-vim"
        "elm-vim"
        "gruvbox"
        "neoformat"
        "neomake"
        "neoterm"
        "neovim-fuzzy"
        "sourcebeautify-vim"
        "unite-vim"
        "vim-abolish"
        "vim-airline"
        "vim-airline-themes"
        "vim-bundler"
        "vim-codeclimate"
        "vim-crystal"
        "vim-eunuch"
        "vim-fetch"
        "vim-fugitive"
        "vim-gitgutter"
        "vim-go"
        "vim-graphql"
        "vim-grepper"
        "vim-javascript"
        "vim-multiple-cursors"
        "vim-polyglot"
        "vim-rails"
        "vim-repeat"
        "vim-sneak"
        "vim-surround"
        "vim-test"
        "vim-unimpaired"
        "vim-wakatime"
        "vimfiler-vim"
      ];
    }];
  };
}
