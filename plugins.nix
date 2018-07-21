{ pkgs, fetchFromGitHub }:
let buildVimPlugin = pkgs.vimUtils.buildVimPluginFrom2Nix;
in {
  elm-vim = buildVimPlugin {
    name = "elm-vim";
    src = fetchFromGitHub {
      owner = "ElmCast";
      repo = "elm-vim";
      rev = "e51e2e43ad617c26205a84453481d3ac152c8fec";
      sha256 = "09bgfjnpa1s25x5wnxry9lmsly92s0mazn1sl0vg2wfgphf67m6b";
    };
  };
  denite-nvim = buildVimPlugin {
    name = "denite-nvim";
    src = fetchFromGitHub {
      owner = "Shougo";
      repo = "denite.nvim";
      rev = "0cab5543d755be4a6c9d331672b07235f8473f1f";
      sha256 = "1r9a29fjmab7r10f5c39xdmbpq14jc6lwyj7d63b5p2dnlva2wr0";
    };
  };
  deoplete-nvim = buildVimPlugin {
    name = "deoplete-nvim";
    src = fetchFromGitHub {
      owner = "Shougo";
      repo = "deoplete.nvim";
      rev = "0f1921799644cd662cb0a3393ba71096e5e56115";
      sha256 = "0xbi6zac45fr8ipz1vqafl6ljh7bpdhbz7dfdyv8z04aqvn621s2";
    };
  };
  unite-vim = buildVimPlugin {
    name = "unite-vim";
    src = fetchFromGitHub {
      owner = "Shougo";
      repo = "unite.vim";
      rev = "c175ba7df239a5971e4c189ecbc9486b160fbde2";
      sha256 = "16j5vhmqs04y5rps5g86bgpf91w067gyw9rz47hf0y0a52niy436";
    };
  };
  vimfiler-vim = buildVimPlugin {
    name = "vimfiler-vim";
    src = fetchFromGitHub {
      owner = "Shougo";
      repo = "vimfiler.vim";
      rev = "1e6d107611e0a89b760acd73c37bafdf33a61cc4";
      sha256 = "03wm9mp1mnzgiidifg6yg2sn3v0j1c2y2wrfk2d1nglbs03izjv0";
    };
  };
  vim-gitgutter = buildVimPlugin {
    name = "vim-gitgutter";
    src = fetchFromGitHub {
      owner = "airblade";
      repo = "vim-gitgutter";
      rev = "6076c9678643a8b2fc9973f16ec9efcd5dbe1aca";
      sha256 = "1dyrll5rm61qdmzkym67hfyw80qnw10s1qrz9ryw3zvh1s2ad43l";
    };
  };
  neovim-fuzzy = buildVimPlugin {
    name = "neovim-fuzzy";
    src = fetchFromGitHub {
      owner = "cloudhead";
      repo = "neovim-fuzzy";
      rev = "ecb394cc3ca26d120d20ff31b5b2be9ea3f783b6";
      sha256 = "1lwhq3wwj7zw9z50i0vf7yv4jsfh5b3gq8jpjq1i823daxfvj87y";
    };
  };
  editorconfig-vim = buildVimPlugin {
    name = "editorconfig-vim";
    src = fetchFromGitHub {
      owner = "editorconfig";
      repo = "editorconfig-vim";
      rev = "402bf0b6d1699655afb747858a1fa8a523f1bf13";
      sha256 = "0phhhy3x6ghwxhggii0swdx17vc5sz8r3vsxd6lnj3yql4i0yj6q";
    };
  };
  vim-go = buildVimPlugin {
    name = "vim-go";
    src = fetchFromGitHub {
      owner = "fatih";
      repo = "vim-go";
      rev = "522360afe18368c7791aa228c9eebb7f1a99c883";
      sha256 = "10v61nvzb0apgw6zmjz8264blynh2g9bp90flakby72yfyab27zq";
    };
  };
  vim-test = buildVimPlugin {
    name = "vim-test";
    src = fetchFromGitHub {
      owner = "janko-m";
      repo = "vim-test";
      rev = "e24477e81e91fe90c5d914849848027cb09a7c86";
      sha256 = "1kkfzs0bmbg4kjips1jylrsd5rqd39ab2x2z1a64pjkx1fvl703b";
    };
  };
  vim-graphql = buildVimPlugin {
    name = "vim-graphql";
    src = fetchFromGitHub {
      owner = "jparise";
      repo = "vim-graphql";
      rev = "4a46f86f0dbd6ff3bd22db8f48a692075d64f6c2";
      sha256 = "08dxdicslxhmy6qqbwgriry8m8g22qpjbd0v2bz2c2lcig68qwfy";
    };
  };
  vim-sneak = buildVimPlugin {
    name = "vim-sneak";
    src = fetchFromGitHub {
      owner = "justinmk";
      repo = "vim-sneak";
      rev = "5d81dcceee9894f433ab16b766db32dcbffef7af";
      sha256 = "0a8nnqahxbwx8j9ac6yzc0qkk7vmaa0ziyd436667h7bih3gq5zj";
    };
  };
  neoterm = buildVimPlugin {
    name = "neoterm";
    src = fetchFromGitHub {
      owner = "kassio";
      repo = "neoterm";
      rev = "287eb27d0a21d81c92c1183a5527e1ff0fdc95cb";
      sha256 = "06ny9khdyckszxr77w13hsw2jlf92caifr8x382cda2v2vq3jz4n";
    };
  };
  vim-fetch = buildVimPlugin {
    name = "vim-fetch";
    src = fetchFromGitHub {
      owner = "kopischke";
      repo = "vim-fetch";
      rev = "29776bba11762f99f946561e7d5a5965bda347a5";
      sha256 = "1n48njyvff095f3g1p5s23r699jphvq509a6a85w4dknilpasjrx";
    };
  };
  vim-grepper = buildVimPlugin {
    name = "vim-grepper";
    src = fetchFromGitHub {
      owner = "mhinz";
      repo = "vim-grepper";
      rev = "04d659c9e0a57e0c3e989069601d2a98df0386c4";
      sha256 = "16k5ahcn9i4wvlhw16j0gfgxw0clry72l78lk28qmx9p2gh1ka3g";
    };
  };
  sourcebeautify-vim = buildVimPlugin {
    name = "sourcebeautify-vim";
    src = fetchFromGitHub {
      owner = "michalliu";
      repo = "sourcebeautify.vim";
      rev = "6c5867a8322b04a3d2bf72c26ec1c5bc2fa8f676";
      sha256 = "01zcfmc7kp2drarark6m87h4il5qcqdjj16pv22sm3mvc3pshcpj";
    };
  };
  gruvbox = buildVimPlugin {
    name = "gruvbox";
    src = fetchFromGitHub {
      owner = "morhetz";
      repo = "gruvbox";
      rev = "cb4e7a5643f7d2dd40e694bcbd28c4b89b185e86";
      sha256 = "12qkq1x96bm1cmqfg6sb8jxpl2b6gwvhc5qn3gva6vl4nx3ianqi";
    };
  };
  neomake = buildVimPlugin {
    name = "neomake";
    src = fetchFromGitHub {
      owner = "neomake";
      repo = "neomake";
      rev = "2c664e6ac94022e14d7d823cfaccfd97fb6be181";
      sha256 = "09igi2qilnxrpn9bvvm3kzq0bw55najn4f2d70a6w17vyvj5mhdd";
    };
  };
  vim-javascript = buildVimPlugin {
    name = "vim-javascript";
    src = fetchFromGitHub {
      owner = "pangloss";
      repo = "vim-javascript";
      rev = "39e332a3c36c0115e1eab85c34cf121b7585869d";
      sha256 = "04ycwh298i213zw0zvj99igfmxf36swycryapsgp9jrh9jjd9hmw";
    };
  };
  deoplete-elm = buildVimPlugin {
    name = "deoplete-elm";
    src = fetchFromGitHub {
      owner = "pbogut";
      repo = "deoplete-elm";
      rev = "b9226c8d015127e9ed3ce1aaca60f62794d27554";
      sha256 = "0p6mc0b863skmv6hmnpvlwgjxcgymlzw8z30gkkf3axm8d4wd7p2";
    };
  };
  vim-crystal = buildVimPlugin {
    name = "vim-crystal";
    src = fetchFromGitHub {
      owner = "rhysd";
      repo = "vim-crystal";
      rev = "2ba42bd42463a1203d5d377c421afc7f76c61f2d";
      sha256 = "0n8w23ppmn9abg9zy5n01ypzd1g6bjhqgii8ma1p7grn1vq0jixn";
    };
  };
  neoformat = buildVimPlugin {
    name = "neoformat";
    src = fetchFromGitHub {
      owner = "sbdchd";
      repo = "neoformat";
      rev = "f20e73193f2260d4437d160759d6b623a74a5a35";
      sha256 = "0460v5h82zsgslqxkiwf2qbkah15hf3p33ddvcipfqg0rnrbwynp";
    };
  };
  vim-polyglot = buildVimPlugin {
    name = "vim-polyglot";
    src = fetchFromGitHub {
      owner = "sheerun";
      repo = "vim-polyglot";
      rev = "055f7710b65dfa2df52fc0b5be2486ae36ac5751";
      sha256 = "1yyqsy3q1kjvlqffc10zn3kl0k468xj8mycc22xp1hp1zrkxcf5x";
    };
  };
  vim-multiple-cursors = buildVimPlugin {
    name = "vim-multiple-cursors";
    src = fetchFromGitHub {
      owner = "terryma";
      repo = "vim-multiple-cursors";
      rev = "b9e17a51bb2d857f6a5099363232c4fc7715115d";
      sha256 = "0dd9m0a33r4diwykk5nxya199zimn0n4gmp2mi8fnwk6m1f8fwnw";
    };
  };
  vim-abolish = buildVimPlugin {
    name = "vim-abolish";
    src = fetchFromGitHub {
      owner = "tpope";
      repo = "vim-abolish";
      rev = "b6a8b49e2173ba5a1b34d00e68e0ed8addac3ebd";
      sha256 = "sha256:0i9q3l7r5p8mk4in3c1j4x0jbln7ir9lg1cqjxci0chjjzfzc53m";
    };
  };
  vim-bundler = buildVimPlugin {
    name = "vim-bundler";
    src = fetchFromGitHub {
      owner = "tpope";
      repo = "vim-bundler";
      rev = "3835292042d0a265797c3590867af8590e84ef86";
      sha256 = "0cra9p9nnl3agmimb7rb53ls6lmr9ck5wvjk6q0b9ll1waiij9b4";
    };
  };
  vim-eunuch = buildVimPlugin {
    name = "vim-eunuch";
    src = fetchFromGitHub {
      owner = "tpope";
      repo = "vim-eunuch";
      rev = "e5f4f955d53e07192fb330ff272604c1b8290532";
      sha256 = "0cv3j3bkapb45ywlfiz8csxmz7gnsdngwgmkrgfg6sljnsgav2za";
    };
  };
  vim-fugitive = buildVimPlugin {
    name = "vim-fugitive";
    src = fetchFromGitHub {
      owner = "tpope";
      repo = "vim-fugitive";
      rev = "c118dabb89b6e7e42383d4cf6f426e53bb45279c";
      sha256 = "16sw0kc20h2j907b8d541wkm3kjkkn2nwfy8a46wgrw9dx4j1yb4";
    };
  };
  vim-rails = buildVimPlugin {
    name = "vim-rails";
    src = fetchFromGitHub {
      owner = "tpope";
      repo = "vim-rails";
      rev = "7697eb33c4a6621d310ae9b08981761279209f96";
      sha256 = "04z5m7yqzyrh97x93rr5c30ilh0y001k3zxh1l1px9l2n4wl3z3g";
    };
  };
  vim-repeat = buildVimPlugin {
    name = "vim-repeat";
    src = fetchFromGitHub {
      owner = "tpope";
      repo = "vim-repeat";
      rev = "43d2678fa59d068c815d8298331c195e850ff5a7";
      sha256 = "0nb20503ka95qbx0mwhhni15drc86gfcd6kg92nf65llrvyfivk0";
    };
  };
  vim-surround = buildVimPlugin {
    name = "vim-surround";
    src = fetchFromGitHub {
      owner = "tpope";
      repo = "vim-surround";
      rev = "aa1f120ad3a29c27cc41d581cda3751c59343cce";
      sha256 = "1vblmvmbl9k2fzm0fjlbvvbb5izyljaxg187s29cp6p4xm0frcql";
    };
  };
  vim-unimpaired = buildVimPlugin {
    name = "vim-unimpaired";
    src = fetchFromGitHub {
      owner = "tpope";
      repo = "vim-unimpaired";
      rev = "da7921aad2b44b270af5caa223d13ca55173b5b3";
      sha256 = "0hlvrix16bsgqavvymcrva95xlidyb6nzphd1vyhbg5hb2q3b200";
    };
  };
  vim-airline = buildVimPlugin {
    name = "vim-airline";
    src = fetchFromGitHub {
      owner = "vim-airline";
      repo = "vim-airline";
      rev = "4cc255a3849c15484f7da5b5039d73f1a567a7e2";
      sha256 = "124pl87zwfg4fnb3il5jy5dz03bq5vzyk10z60dvkfw4cr57hlfw";
    };
  };
  vim-airline-themes = buildVimPlugin {
    name = "vim-airline-themes";
    src = fetchFromGitHub {
      owner = "vim-airline";
      repo = "vim-airline-themes";
      rev = "b35f952a6ae6768ae2c6a9f4febc7945cc311f74";
      sha256 = "1j9y9irrzsq1bwp3b22ls016byi0yc9ymigzhw0n180rk6nb36c7";
    };
  };
  css-pretty = buildVimPlugin {
    name = "css-pretty";
    src = fetchFromGitHub {
      owner = "vim-scripts";
      repo = "Css-Pretty";
      rev = "0c90d27d38b7cfa2ba636986ab0d0d63865bd633";
      sha256 = "0i08bnsyhar1ynzvkbb79z5fxg22ifcyjnp4f8sbkx3p4lw4hhvq";
    };
  };
  vim-wakatime = buildVimPlugin {
    name = "vim-wakatime";
    src = fetchFromGitHub {
      owner = "wakatime";
      repo = "vim-wakatime";
      rev = "25aa400fd1f1e3d689c721605a65e015024dc4cf";
      sha256 = "11lk5k8wl3kxp6p2i0nnp56f4wcaniy40kzs3anjdwlzya631rg2";
    };
  };
  vim-codeclimate = buildVimPlugin {
    name = "vim-codeclimate";
    src = fetchFromGitHub {
      owner = "wfleming";
      repo = "vim-codeclimate";
      rev = "b9682f4ac14b26293aeac5f5ba1d45837c71e14e";
      sha256 = "1l6i8j1xi00qhqwbcwl5sw17clj061pwzk8bgp8sgdk36671kmzv";
    };
  };
}
