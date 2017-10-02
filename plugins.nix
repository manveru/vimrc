{ pkgs, fetchFromGitHub }:
let buildVimPlugin = pkgs.vimUtils.buildVimPluginFrom2Nix;
in {
  denite-nvim = buildVimPlugin {
    name = "denite-nvim";
    src = fetchFromGitHub {
      owner = "Shougo";
      repo = "denite.nvim";
      rev = "d707fe20c5fe8281e90356f8cf146eef7c189da8";
      sha256 = "1nimr0k3lca4849hz5ilvjn1y3d94nnzdyzkz1sx9i7a705438bk";
    };
  };
  deoplete-nvim = buildVimPlugin {
    name = "deoplete-nvim";
    src = fetchFromGitHub {
      owner = "Shougo";
      repo = "deoplete.nvim";
      rev = "60bed29fb33cf32a3946509c3e983c2f4a239d40";
      sha256 = "1ilinqrga5l279xlf30gzg9y8j8mwl6m80w0wh3vi8lca4k85rk4";
    };
  };
  unite-vim = buildVimPlugin {
    name = "unite-vim";
    src = fetchFromGitHub {
      owner = "Shougo";
      repo = "unite.vim";
      rev = "53d9f345a02976497cc99a4c7f5e4cf6114b6c28";
      sha256 = "06drg0yfbkn126x48yj6j3hfvlln5ysajhpkxfdp06sdn1a478kv";
    };
  };
  vimfiler-vim = buildVimPlugin {
    name = "vimfiler-vim";
    src = fetchFromGitHub {
      owner = "Shougo";
      repo = "vimfiler.vim";
      rev = "abb913ac67d77202e6170951ac627341c30600fe";
      sha256 = "0zc07npvzqcmq557pd7wysz0pmkv693f6281033k0bhwjzrr4jfq";
    };
  };
  vim-gitgutter = buildVimPlugin {
    name = "vim-gitgutter";
    src = fetchFromGitHub {
      owner = "airblade";
      repo = "vim-gitgutter";
      rev = "dc73a81bfe59a9de090b89a1312ded3c6f6a6f89";
      sha256 = "sha256:15jbmbrmfnxi6gjwk0ia160g872jlprclyb8zrxass1cj2xqr0pb";
    };
  };
  neovim-fuzzy = buildVimPlugin {
    name = "neovim-fuzzy";
    src = fetchFromGitHub {
      owner = "cloudhead";
      repo = "neovim-fuzzy";
      rev = "5d563596bb7be161797d79425bcadb0fb30308ce";
      sha256 = "0b9z6xb62ayhkb8f2k3c2d0rklm4qb2s8pnqz5lbdkccrnclhah2";
    };
  };
  editorconfig-vim = buildVimPlugin {
    name = "editorconfig-vim";
    src = fetchFromGitHub {
      owner = "editorconfig";
      repo = "editorconfig-vim";
      rev = "e96ecb8f863d6d1564b876e799eb7bd75e8181bc";
      sha256 = "0421jgqa671vjpiah9zjf1q2k7nxa6zwn7y46h06yj78z9py93k1";
    };
  };
  supertab = buildVimPlugin {
    name = "supertab";
    src = fetchFromGitHub {
      owner = "ervandew";
      repo = "supertab";
      rev = "22aac5c2cb6a8ebe906bf1495eb727717390e62e";
      sha256 = "1m70rx9ba2aqydfr9yxsrff61qyzmnda24qkgn666ypnsai7cfbn";
    };
  };
  vim-go = buildVimPlugin {
    name = "vim-go";
    src = fetchFromGitHub {
      owner = "fatih";
      repo = "vim-go";
      rev = "dcd3e3bfb92a5a292dfe63f75ba08522e936714a";
      sha256 = "1qp2q3zkd252szfdjfyap5i5gf5i7p0qcf2kfd0lfhqrx1f5mvf5";
    };
  };
  vim-test = buildVimPlugin {
    name = "vim-test";
    src = fetchFromGitHub {
      owner = "janko-m";
      repo = "vim-test";
      rev = "c60a0e2679ecde4a929cbabf6573ba67524f1adf";
      sha256 = "1br2c9j6is64d2rf8fybg23krsz1n9fxk3hz9lj5fv98dk579z53";
    };
  };
  vim-graphql = buildVimPlugin {
    name = "vim-graphql";
    src = fetchFromGitHub {
      owner = "jparise";
      repo = "vim-graphql";
      rev = "9025fbe8c52053f1b8d6d164a3622d28fcb7e3ac";
      sha256 = "1hy8x0fy2bri5jx50p30pjzb24pxiqjniaf586byfvinjmxy9w9a";
    };
  };
  vim-sneak = buildVimPlugin {
    name = "vim-sneak";
    src = fetchFromGitHub {
      owner = "justinmk";
      repo = "vim-sneak";
      rev = "a0610b8c9558358086fe993edff277a86f224747";
      sha256 = "024f475hzc9q341qr43r00nvgcv8z533f70csd7sl5jmw4gn6ggs";
    };
  };
  neoterm = buildVimPlugin {
    name = "neoterm";
    src = fetchFromGitHub {
      owner = "kassio";
      repo = "neoterm";
      rev = "701c9fb20ebac1c4d05410f8054fa004bc9ecba4";
      sha256 = "1wblgjn4c6ai7jb46xv3vx4dpwbmxrs5wr1824z2blnb17glas7p";
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
      rev = "030bf04a429204a9ec3e3a19f247ae795048fffa";
      sha256 = "1fb4hbqc2kicy51ppsvmbf0awz2kbjyygiz2cnfnsfvd2s38zqnk";
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
      rev = "16504d394e145e0372d2491e02769d241350399a";
      sha256 = "0yhas9lnsn9lfld37lvm5msmmkj6c7d8ajgarazc5rykbl8bw8rg";
    };
  };
  neomake = buildVimPlugin {
    name = "neomake";
    src = fetchFromGitHub {
      owner = "neomake";
      repo = "neomake";
      rev = "06e26223625ff9b757e8b03b0f1e39b951968376";
      sha256 = "145n69qzqmgdcgx9w6663vgqk9rkl5sqpkbvv2qvjnxj2bjm6307";
    };
  };
  vim-javascript = buildVimPlugin {
    name = "vim-javascript";
    src = fetchFromGitHub {
      owner = "pangloss";
      repo = "vim-javascript";
      rev = "fcef6389a764b20b268b25dc3ce11eddbd484be6";
      sha256 = "00d1hs9ixhsblzbfkdil5zwx2z4c3pni8f9q30kbc7bnbp6x7lbz";
    };
  };
  vim-crystal = buildVimPlugin {
    name = "vim-crystal";
    src = fetchFromGitHub {
      owner = "rhysd";
      repo = "vim-crystal";
      rev = "dd5470e66a2294369c11b53fda0bc15294f09f3b";
      sha256 = "15rk8kz9zpvjcbbxzmj3nd8lifz300q16fyh4975wl48g6prrad5";
    };
  };
  neoformat = buildVimPlugin {
    name = "neoformat";
    src = fetchFromGitHub {
      owner = "sbdchd";
      repo = "neoformat";
      rev = "1aa4e9cb5c5f5b79f3680473ad0c378370d4526b";
      sha256 = "12j2x0wcvrd5xxkb0raq1h230nbdxls9g7igfmv7kqx77xzpz145";
    };
  };
  vim-polyglot = buildVimPlugin {
    name = "vim-polyglot";
    src = fetchFromGitHub {
      owner = "sheerun";
      repo = "vim-polyglot";
      rev = "27903c5b8656c796564ef073c1ebe77a2f0154e1";
      sha256 = "0p29j4jp97ywxl41r6x7gaj39gdd0dkzz9b06w94iwnbpd0xgfzc";
    };
  };
  vim-multiple-cursors = buildVimPlugin {
    name = "vim-multiple-cursors";
    src = fetchFromGitHub {
      owner = "terryma";
      repo = "vim-multiple-cursors";
      rev = "a97dab5bc440bf0a7b62bb2de4479963a888f4ff";
      sha256 = "sha256:1ac5l5h138ns9z9ni4qbcykkg9yfpjjalk0g9wrra4rp0nlakaqk";
    };
  };
  vim-bundler = buildVimPlugin {
    name = "vim-bundler";
    src = fetchFromGitHub {
      owner = "tpope";
      repo = "vim-bundler";
      rev = "97d50771e4c882242f6af0505f8b84ddff6f0684";
      sha256 = "sha256:02m4qjfd41p257kmvf0l09kgcm8k5cngxpq2jvcdpknwjrav105y";
    };
  };
  vim-eunuch = buildVimPlugin {
    name = "vim-eunuch";
    src = fetchFromGitHub {
      owner = "tpope";
      repo = "vim-eunuch";
      rev = "b536b887072ff3cc382842ce9f675ec222302f4f";
      sha256 = "0vp037kb12mawy186cm384m5hl0p051rihhm1jr2qck0vwaps58p";
    };
  };
  vim-fugitive = buildVimPlugin {
    name = "vim-fugitive";
    src = fetchFromGitHub {
      owner = "tpope";
      repo = "vim-fugitive";
      rev = "8f60d1d459362771cb68c0097565efdf52e62ec3";
      sha256 = "107mmdy1j5dnh3f00hwf68459fks2jiqv44awvg7qjdxp7si0r7h";
    };
  };
  vim-rails = buildVimPlugin {
    name = "vim-rails";
    src = fetchFromGitHub {
      owner = "tpope";
      repo = "vim-rails";
      rev = "7206033fc2d7d53a531502ecd5a044ecdacc0354";
      sha256 = "1r92p3j9kmzffxsaqsbnsdy0wnwv4pjzgckgp4sgd5l6c7ikxq10";
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
      rev = "27acd851a780c563cb4807fc0ea3af9caccbb585";
      sha256 = "0z65m3ixcaxiifh3488pgxpkwb55flzs41lzjgr42i6jvf5d824p";
    };
  };
  vim-airline-themes = buildVimPlugin {
    name = "vim-airline-themes";
    src = fetchFromGitHub {
      owner = "vim-airline";
      repo = "vim-airline-themes";
      rev = "af3292dbbb6d8abe35d0ad50bd86b6ac6219abb7";
      sha256 = "144vkwlc2f2y1b7xzgqvwaxv24l4sb13nqjqfn3jk851c3mpgb7y";
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
      rev = "cc46d817ce2c708b989f9ef459cf6e9a8e587c54";
      sha256 = "0arz7is91mvy2ss6zw6irhvkzmilwdizdwm18aw31qiz8bsshi66";
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
