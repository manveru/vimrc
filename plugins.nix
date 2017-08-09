{ pkgs, fetchFromGitHub }:
let buildVimPlugin = pkgs.vimUtils.buildVimPluginFrom2Nix;
in {
  denite-nvim = buildVimPlugin {
    name = "denite-nvim";
    src = fetchFromGitHub {
      owner = "Shougo";
      repo = "denite.nvim";
      rev = "244b940b911ade6eef82c7f5b0a6c50dd6b23560";
      sha256 = "sha256:03ccsng4w6wcm07q8kl3ghmidyv6bkykc04j0xacl61k9jmbijfh";
    };
  };
  deoplete-nvim = buildVimPlugin {
    name = "deoplete-nvim";
    src = fetchFromGitHub {
      owner = "Shougo";
      repo = "deoplete.nvim";
      rev = "f6352d155cba56dcfe154be1da378e5cfc745191";
      sha256 = "sha256:0k7ff44i6cm6dc753f873waad6gh2zn0znrb9fzvqx33r3yaqhgn";
    };
  };
  unite-vim = buildVimPlugin {
    name = "unite-vim";
    src = fetchFromGitHub {
      owner = "Shougo";
      repo = "unite.vim";
      rev = "ad15f96365b5cb43a45d0ca779df6a497f954f15";
      sha256 = "0pigwfwyas4zdzrazk08p9bnbmi51np4gb0mf5dy434glw9rrvjz";
    };
  };
  vimfiler-vim = buildVimPlugin {
    name = "vimfiler-vim";
    src = fetchFromGitHub {
      owner = "Shougo";
      repo = "vimfiler.vim";
      rev = "91479d7b6b355f2fd2b66c7a2683ddc7023c773c";
      sha256 = "sha256:0jghz9dqybq9rqvkcqza4qyqvcbnvbxbdx4x9izg6ipd3nsa6swa";
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
      rev = "e6c1086c1882015f8475377e30a9c02eb018552a";
      sha256 = "0zhbhc1pxi47w79b1wdqjs050xvmzwgysimh1df6vvnmiwajm4qa";
    };
  };
  editorconfig-vim = buildVimPlugin {
    name = "editorconfig-vim";
    src = fetchFromGitHub {
      owner = "editorconfig";
      repo = "editorconfig-vim";
      rev = "14376e0e7f8118af7297daa8d4f5f261ca4efacb";
      sha256 = "sha256:10ac0p06rb02078rr3idz5d7fn92w6721jl5l92bkjcx68di9hh4";
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
      rev = "dfd860471f777ec15779c33ab4917e27b21217e2";
      sha256 = "sha256:1p4d7rjl68j2xzldsy1im8wxl943bpfbslqn2590fc8hr0hc55cn";
    };
  };
  vim-graphql = buildVimPlugin {
    name = "vim-graphql";
    src = fetchFromGitHub {
      owner = "jparise";
      repo = "vim-graphql";
      rev = "2f80582e1a0fe7d0a066299bfcc2261e55ef3a4b";
      sha256 = "sha256:1p2brhbhxcvmd0x9vf0v6i04fqvpzx849kbg5da0yl960krfmz80";
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
      rev = "c12ea4d2234d561e0588061e710ef60faf9b5795";
      sha256 = "sha256:10qwaywcffspbr2l9sx5010s6szcixwylicf4lncwg60v7n6ikhz";
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
      rev = "71da3008b3453251c124517441a9180f85256922";
      sha256 = "sha256:12nvpka5n7dkf0nrk33wh65lqfqn5fcjg6fcs24nvzd5dqmx1dr6";
    };
  };
  vim-javascript = buildVimPlugin {
    name = "vim-javascript";
    src = fetchFromGitHub {
      owner = "pangloss";
      repo = "vim-javascript";
      rev = "dcb4e4762bed1942200391cb50cde2993178c9a6";
      sha256 = "sha256:12s9gsm36vra5a4bwh0lp4h1b0ld6nmzcj36v6rh21cjv8yaqj82";
    };
  };
  vim-crystal = buildVimPlugin {
    name = "vim-crystal";
    src = fetchFromGitHub {
      owner = "rhysd";
      repo = "vim-crystal";
      rev = "8e113d73708f8132e81e789598846c27ce734c13";
      sha256 = "1wxz8xdpb1mxc9pnnaaxw3z2dp2sn273953s3p5yr52wm7c3zr1g";
    };
  };
  neoformat = buildVimPlugin {
    name = "neoformat";
    src = fetchFromGitHub {
      owner = "sbdchd";
      repo = "neoformat";
      rev = "255239e217ae124b1438c35967597b63db328820";
      sha256 = "sha256:003zibii3bwdqb64qbv08pxhfmj2nmnvqm5hkdasbjjwmzp5kknk";
    };
  };
  vim-polyglot = buildVimPlugin {
    name = "vim-polyglot";
    src = fetchFromGitHub {
      owner = "sheerun";
      repo = "vim-polyglot";
      rev = "8eab5f5403afc1c33a7593459a27f7ff625fa60b";
      sha256 = "1k79wz10kx32nz2g97v297d703gvs7jhml7pvvww5l30zfj3jfai";
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
      rev = "913fff1cea3aa1a08a360a494fa05555e59147f5";
      sha256 = "1qxzxk5szm25r7wi39n5s91fjnjgz5xib67risjcwhk6jdv0vzyd";
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
      rev = "96352f9b537c86507974e48e404380810bd35a36";
      sha256 = "sha256:0m2y2irb7b6kzg5m1j2ps1rxj0hab4a363s164chiy97m27jl8cd";
    };
  };
  vim-airline-themes = buildVimPlugin {
    name = "vim-airline-themes";
    src = fetchFromGitHub {
      owner = "vim-airline";
      repo = "vim-airline-themes";
      rev = "08c76e4cd0cdaa12c476ed03b920912173e31339";
      sha256 = "sha256:0l3agy3vzldm0v4vwlrvj0q60bzhg813ip5dah9cplw2jvkhqr4b";
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
      rev = "a8e99ff8dc910d6bdf37a823f43afc9413dfad5a";
      sha256 = "sha256:09rq7sffvizdvfw5aj6z0ib7nzhlqv1fcfc0pq6w9if00y4fvpfq";
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
