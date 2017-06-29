{ pkgs, fetchFromGitHub }:
let buildVimPlugin = pkgs.vimUtils.buildVimPluginFrom2Nix;
in {
  denite-nvim = buildVimPlugin {
    name = "denite-nvim";
    src = fetchFromGitHub {
      owner = "Shougo";
      repo = "denite.nvim";
      rev = "807c9520619911d9ec6fc1c16e2e9e1588683bb3";
      sha256 = "0gda90rav4y3zbs53xsfdb1xfxkafzs381hij1j91q3i4wl71fvk";
    };
  };
  deoplete-nvim = buildVimPlugin {
    name = "deoplete-nvim";
    src = fetchFromGitHub {
      owner = "Shougo";
      repo = "deoplete.nvim";
      rev = "bda6d16700d8d728ebd5d422d4936a5977c40273";
      sha256 = "12yq8wh5hcriyzfdxip3jn5l820yd0l58h15axg7fxd0r29jfnks";
    };
  };
  unite-vim = buildVimPlugin {
    name = "unite-vim";
    src = fetchFromGitHub {
      owner = "Shougo";
      repo = "unite.vim";
      rev = "97e634117ff05d3c867d625940da5c7947cebf63";
      sha256 = "1qc7k5n7whw5z78czhi363fbllj9znz1gqlps096aiwhapfv3m1z";
    };
  };
  vimfiler-vim = buildVimPlugin {
    name = "vimfiler-vim";
    src = fetchFromGitHub {
      owner = "Shougo";
      repo = "vimfiler.vim";
      rev = "a00df82b4f0cb3ce05b1dc97fa245c08b3930c72";
      sha256 = "1gcb0xdv92n02q2mq3icqi5jsbmp4b0c06yyaz9x5ig7h7zjqjbi";
    };
  };
  vim-gitgutter = buildVimPlugin {
    name = "vim-gitgutter";
    src = fetchFromGitHub {
      owner = "airblade";
      repo = "vim-gitgutter";
      rev = "f16cf539a23fc980af1293bebdae61a595baa90c";
      sha256 = "08dy5va4cz8xiy08klbifxlz4khdqg05v8dvvlr5l774qnqlpaqj";
    };
  };
  neovim-fuzzy = buildVimPlugin {
    name = "neovim-fuzzy";
    src = fetchFromGitHub {
      owner = "cloudhead";
      repo = "neovim-fuzzy";
      rev = "a0862bae58a28dc4492e79969a6b120e04e3d742";
      sha256 = "1px48dzrfp22br9s7lh4718qnllh9c8asdlvw8y3hr4jfpvnwcfs";
    };
  };
  editorconfig-vim = buildVimPlugin {
    name = "editorconfig-vim";
    src = fetchFromGitHub {
      owner = "editorconfig";
      repo = "editorconfig-vim";
      rev = "6bd7d2b3f80c73de66644e203ea10f9197c9f88b";
      sha256 = "11xhbmmaklp74ssnd9nk45g6ci6i7qk93gz715dkpqg18gmfp7m3";
    };
  };
  supertab = buildVimPlugin {
    name = "supertab";
    src = fetchFromGitHub {
      owner = "ervandew";
      repo = "supertab";
      rev = "cdaa5c27c5a7f8b08a43d0b2e65929512299e33a";
      sha256 = "0hym28chljfglqdrxajbh92r35cppxl5wyxdrgqwpa0am9d2xdvg";
    };
  };
  vim-go = buildVimPlugin {
    name = "vim-go";
    src = fetchFromGitHub {
      owner = "fatih";
      repo = "vim-go";
      rev = "b4936d89bd1480a864382108b49ebf5d2d16728a";
      sha256 = "1mfsxdnipfigqmmy9l6md98f1ww9b0663a95xa4l713v66sy60cw";
    };
  };
  vim-sneak = buildVimPlugin {
    name = "vim-sneak";
    src = fetchFromGitHub {
      owner = "justinmk";
      repo = "vim-sneak";
      rev = "9baecebe9c22a76a15b7ddd11c7e901dfd2241e8";
      sha256 = "1qgslq8c9p2xkn7phjas950rnna3pbmvd500zhx39gf00mi6p16p";
    };
  };
  vim-fetch = buildVimPlugin {
    name = "vim-fetch";
    src = fetchFromGitHub {
      owner = "kopischke";
      repo = "vim-fetch";
      rev = "ce1bfadb9120c92794534d995cd44b0ec6f6fb3e";
      sha256 = "00zi1iav2p4pgx21jrknphkbvslnx3r8bsnkg7qq42nw8bhl7d95";
    };
  };
  vim-grepper = buildVimPlugin {
    name = "vim-grepper";
    src = fetchFromGitHub {
      owner = "mhinz";
      repo = "vim-grepper";
      rev = "1ec1b335537005a9ecadf5e31eb3c7c32b2b15ea";
      sha256 = "064w8fx1chidfdnnqass8cpgy0jaymphl38qrfdlssphxxsgxww7";
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
      rev = "127c9d14d4bac1bac31e328b835a8919a255789c";
      sha256 = "19wg9143wvlynblpxm0cnk3ars2hgss3y745hligqgvfy308f7sm";
    };
  };
  neomake = buildVimPlugin {
    name = "neomake";
    src = fetchFromGitHub {
      owner = "neomake";
      repo = "neomake";
      rev = "2077c0d40afbc203ed47b34fd0a767c1ba8c2a4f";
      sha256 = "1bfnlzv3wiwd94nfsligr4djixvg55vprg8lnlr3jgl7bvcr5l07";
    };
  };
  vim-crystal = buildVimPlugin {
    name = "vim-crystal";
    src = fetchFromGitHub {
      owner = "rhysd";
      repo = "vim-crystal";
      rev = "a4426852347336d844b0d24e3941f793506c4f57";
      sha256 = "1x4d7pc4rb5ydkks2x6p6ljl22njxii9c5swxl8sa5ks1if4fbpw";
    };
  };
  neoformat = buildVimPlugin {
    name = "neoformat";
    src = fetchFromGitHub {
      owner = "sbdchd";
      repo = "neoformat";
      rev = "e632529fd27672ff02a1c4fa0ae45b82690112b5";
      sha256 = "1dg2h4fi12mx1izzcfm52djxj205afy0lbzc1wjw9q7l0x1chj04";
    };
  };
  vim-polyglot = buildVimPlugin {
    name = "vim-polyglot";
    src = fetchFromGitHub {
      owner = "sheerun";
      repo = "vim-polyglot";
      rev = "ef369d45a505403587ea0bae30ce6768ba51398c";
      sha256 = "0szllanladbpykr3vcipyrbnyncx2hj2qqn5g3jwxngpf2vbb17a";
    };
  };
  vim-multiple-cursors = buildVimPlugin {
    name = "vim-multiple-cursors";
    src = fetchFromGitHub {
      owner = "terryma";
      repo = "vim-multiple-cursors";
      rev = "51d0717f63cc231f11b4b63ee5b611f589dce1b3";
      sha256 = "1s06wp4cjdmfvljzd9gz0wawkfcpkj8l2scjdx626ml740pnhmx8";
    };
  };
  lessspace-vim = buildVimPlugin {
    name = "lessspace-vim";
    src = fetchFromGitHub {
      owner = "thirtythreeforty";
      repo = "lessspace.vim";
      rev = "50b434a060c21e1a2a18ce4f83a7bceb869f1df3";
      sha256 = "1zsqxqj501kh91dgzf63j23m3r0gwhzxd14aayk9m53j3issydgf";
    };
  };
  vim-bundler = buildVimPlugin {
    name = "vim-bundler";
    src = fetchFromGitHub {
      owner = "tpope";
      repo = "vim-bundler";
      rev = "b42217a20cd4cac5a00096dc4e98d2497c21b3fe";
      sha256 = "1ir1l4qihz5pd47anzbpiwjdvm1s0yxh69zafa03cad0k3bvb3xl";
    };
  };
  vim-eunuch = buildVimPlugin {
    name = "vim-eunuch";
    src = fetchFromGitHub {
      owner = "tpope";
      repo = "vim-eunuch";
      rev = "dcd29a00eb708be211d856afd3fddfbff7bc6208";
      sha256 = "1vq1qwhm27zmnp8xda1z27fhx835kni6ifcyix644shpd8mq8bi4";
    };
  };
  vim-rails = buildVimPlugin {
    name = "vim-rails";
    src = fetchFromGitHub {
      owner = "tpope";
      repo = "vim-rails";
      rev = "6b6b357a5b9e22b59c71572578769842a8470439";
      sha256 = "1d1pmmrv5qsg6z8vnnbp42qkggqb3lgjv4mdapk9qry2r0gv1fmh";
    };
  };
  vim-surround = buildVimPlugin {
    name = "vim-surround";
    src = fetchFromGitHub {
      owner = "tpope";
      repo = "vim-surround";
      rev = "e49d6c2459e0f5569ff2d533b4df995dd7f98313";
      sha256 = "1v0q2f1n8ngbja3wpjvqp2jh89pb5ij731qmm18k41nhgz6hhm46";
    };
  };
  vim-airline = buildVimPlugin {
    name = "vim-airline";
    src = fetchFromGitHub {
      owner = "vim-airline";
      repo = "vim-airline";
      rev = "4a47cd70cd393df7451069e42ee5618753fa685d";
      sha256 = "1c7f148h9vmq7qk0q7x09a4giwcfh8w6l89azrqifqwb31gnrnw9";
    };
  };
  vim-airline-themes = buildVimPlugin {
    name = "vim-airline-themes";
    src = fetchFromGitHub {
      owner = "vim-airline";
      repo = "vim-airline-themes";
      rev = "66c2839bb1126c71a0a2d1da9804161ccd3b78b6";
      sha256 = "01czd1al7ni88q7mwszlayax6d92bkzr5a5pxssn2080xpv7vqbk";
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
      rev = "84e81cb596aadc93c912b486c00ceda8efe80fa0";
      sha256 = "1a298s81b422ph14ys77iv3i3vy527r4xm15c1rsq2bzb28q8z2j";
    };
  };
  vim-codeclimate = buildVimPlugin {
    name = "vim-codeclimate";
    src = fetchFromGitHub {
      owner = "wfleming";
      repo = "vim-codeclimate";
      rev = "049962f484074eb6c307a13241cdc5b4f00494ef";
      sha256 = "1v4yqyz5ddjlk263njrn8l96gf5xik4ksshvqn8ic87pk3kx4k06";
    };
  };
}
