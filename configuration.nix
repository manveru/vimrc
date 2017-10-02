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
        "deoplete-nvim"
        "editorconfig-vim"
        "gruvbox"
        "neoformat"
        "neomake"
        "neoterm"
        "neovim-fuzzy"
        "sourcebeautify-vim"
        "supertab"
        "unite-vim"
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
        "vim-sneak"
        "vim-surround"
        "vim-test"
        "vim-wakatime"
        "vimfiler-vim"
      ];
    }];
  };
}
