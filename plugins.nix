{ pkgs, fetchFromGitHub }:
let buildVimPlugin = pkgs.vimUtils.buildVimPluginFrom2Nix;
in {
  elm-vim = buildVimPlugin {
    name = "elm-vim";
    src = fetchFromGitHub {
      owner = "ElmCast";
      repo = "elm-vim";
      rev = "ae5315396cd0f3958750f10a5f3ad9d34d33f40d";
      sha256 = "0a85l0mcxgha4s5c9lzdv9y2c1ff942y9a5sfjihz6sph21c77xp";
    };
  };
  denite-nvim = buildVimPlugin {
    name = "denite-nvim";
    src = fetchFromGitHub {
      owner = "Shougo";
      repo = "denite.nvim";
      rev = "57118402ea4e0d23ae8990fc5424428e165515e1";
      sha256 = "09ay3hg6rv14ld0wszlrhvixw9ga5x0zh4f74zxm544ykqr0w5h7";
    };
  };
  deoplete-nvim = buildVimPlugin {
    name = "deoplete-nvim";
    src = fetchFromGitHub {
      owner = "Shougo";
      repo = "deoplete.nvim";
      rev = "3c38321017ae888f7807ff61ae98e0f21239bbd2";
      sha256 = "1a4kqraidd74cj5qafdzlw3d1f58392kpd68lzbynsxdrygiya31";
    };
  };
  unite-vim = buildVimPlugin {
    name = "unite-vim";
    src = fetchFromGitHub {
      owner = "Shougo";
      repo = "unite.vim";
      rev = "c5c69d5d94e61a67d61730d04c82763196f63b10";
      sha256 = "1zn23x1bx40z0anl42v8ac8dv0c7f29rd1vwdqsmwdrkyxlyi1n1";
    };
  };
  vimfiler-vim = buildVimPlugin {
    name = "vimfiler-vim";
    src = fetchFromGitHub {
      owner = "Shougo";
      repo = "vimfiler.vim";
      rev = "ae3bccb493e5ca2816e4070b0c541206b7a9cf93";
      sha256 = "058m86pmc9snvs0vpdb2ai275k3vkl2cq5gy9icvn65h52rpc2lj";
    };
  };
  vim-gitgutter = buildVimPlugin {
    name = "vim-gitgutter";
    src = fetchFromGitHub {
      owner = "airblade";
      repo = "vim-gitgutter";
      rev = "1e60667322b7cd1bfcba98762fbba746a888d21a";
      sha256 = "1g9giir7gmkp6n6w4z20qm2dyq00w2a8f573c0b8b27cj36ri0wq";
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
      rev = "0abb0634a8bf3c760a283e9e7475594b83869a46";
      sha256 = "1vpxmn51w5ly1divmajm7njlp42ks2s1ii18c7np6bdca7zj1j2n";
    };
  };
  vim-go = buildVimPlugin {
    name = "vim-go";
    src = fetchFromGitHub {
      owner = "fatih";
      repo = "vim-go";
      rev = "c0d209cce7f0eb0af250d2471ae9495a8bf1f19e";
      sha256 = "1ci8nhsnda4wrpqi0knara1dqjjba6bccbqiw6va8d9mzsr12ivn";
    };
  };
  vim-test = buildVimPlugin {
    name = "vim-test";
    src = fetchFromGitHub {
      owner = "janko-m";
      repo = "vim-test";
      rev = "87bdafb81736ecd0d89323e8e0d73d3ae10337de";
      sha256 = "05zj908cicr0qfsrpnb7dj43a012dz6v9n3wrdd4a6d63aygqp3d";
    };
  };
  vim-graphql = buildVimPlugin {
    name = "vim-graphql";
    src = fetchFromGitHub {
      owner = "jparise";
      repo = "vim-graphql";
      rev = "123230760fe915bedc6bc26c38ad673085163a7e";
      sha256 = "079gl2yw7nr80hpd2kxrzj0qm2706p41g0plv6la1dxafavrpnrb";
    };
  };
  vim-sneak = buildVimPlugin {
    name = "vim-sneak";
    src = fetchFromGitHub {
      owner = "justinmk";
      repo = "vim-sneak";
      rev = "f31640f81ee2f3861dad76500477c4edbf2ad069";
      sha256 = "0sxwk0w28d97dnqc08zixzpq28091b793d06fi74az7602q1xbz0";
    };
  };
  neoterm = buildVimPlugin {
    name = "neoterm";
    src = fetchFromGitHub {
      owner = "kassio";
      repo = "neoterm";
      rev = "20a305be447bd1c9b6d4d540bbb3e5dffd238033";
      sha256 = "0byfc7jx5qz5x81fjj0r25l46im0hld98r96j1yqpyyb7mqvax2k";
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
      rev = "4b75063e09944a542246779da449fcf358d82c2b";
      sha256 = "1zpgq08gzv6grwx5lnaa8qyh55cnh5x76kl9f29zypmawxg4p5ka";
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
      rev = "0d4c7ad2357482ee2e399b6143edd266365ef389";
      sha256 = "05s64is7idndkmqzdpgzdbqkag3d5hxa6f1hxl1q0cqxfl53dykz";
    };
  };
  vim-javascript = buildVimPlugin {
    name = "vim-javascript";
    src = fetchFromGitHub {
      owner = "pangloss";
      repo = "vim-javascript";
      rev = "cea724c0e1a330fff1d38018667a748c26559a57";
      sha256 = "0ib355gc7aa40zqzjk6afixmayggvyyv9mc5win2hc31n6dg6wa5";
    };
  };
  deoplete-elm = buildVimPlugin {
    name = "deoplete-elm";
    src = fetchFromGitHub {
      owner = "pbogut";
      repo = "deoplete-elm";
      rev = "60b619ae7c310d304b420b168fdf9d6a2a21eb2e";
      sha256 = "1qvbwqcykd5cbwc80933qs7b5advyw1irq815szxh7nhxhiwmz1d";
    };
  };
  vim-crystal = buildVimPlugin {
    name = "vim-crystal";
    src = fetchFromGitHub {
      owner = "rhysd";
      repo = "vim-crystal";
      rev = "22255e10e669299030e9a8694a0b2bdd9c11abbd";
      sha256 = "1dz3wp1srw0jyxfygwk4dj2fpmysd962ws0362vv1axh6cfdnqij";
    };
  };
  neoformat = buildVimPlugin {
    name = "neoformat";
    src = fetchFromGitHub {
      owner = "sbdchd";
      repo = "neoformat";
      rev = "abfbd96924539de56ffe0c10622e3cc57c19a380";
      sha256 = "0ars3hd9fl7xf0q7dgxw0vdv3xar1l86l7cq8xm6aqkgiw4jc8v9";
    };
  };
  vim-polyglot = buildVimPlugin {
    name = "vim-polyglot";
    src = fetchFromGitHub {
      owner = "sheerun";
      repo = "vim-polyglot";
      rev = "a61ab44810a0cb78223a179d78eff16d2e0b8bf6";
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
      rev = "d16cd9ced1feffb53b8457357aab17be72addeae";
      sha256 = "0sxmpn2d2l2dxf9x6wm6arx5mhf11ffxfcw9b8i7cn0d8c3hkjy7";
    };
  };
  vim-rails = buildVimPlugin {
    name = "vim-rails";
    src = fetchFromGitHub {
      owner = "tpope";
      repo = "vim-rails";
      rev = "f7fc6fcb67203a49ec4db43e05642c2cad1f929d";
      sha256 = "0dsrrw58kg2nj2lv05j96l126vlgs3mmrvsvy2b683ix7f9h0cwc";
    };
  };
  vim-repeat = buildVimPlugin {
    name = "vim-repeat";
    src = fetchFromGitHub {
      owner = "tpope";
      repo = "vim-repeat";
      rev = "070ee903245999b2b79f7386631ffd29ce9b8e9f";
      sha256 = "sha256:1grsaaar2ng1049gc3r8wbbp5imp31z1lcg399vhh3k36y34q213";
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
  vim-unimpaired = buildVimPlugin {
    name = "vim-unimpaired";
    src = fetchFromGitHub {
      owner = "tpope";
      repo = "vim-unimpaired";
      rev = "3a7759075cca5b0dc29ce81f2747489b6c8e36a7";
      sha256 = "1qfa0xv8ya8d1564zbak4b1dlyasap6d7lmp5zjqxwmdzihm9iw9";
    };
  };
  vim-airline = buildVimPlugin {
    name = "vim-airline";
    src = fetchFromGitHub {
      owner = "vim-airline";
      repo = "vim-airline";
      rev = "396cc9226171f8dbf1069800a0ae56700bbf3913";
      sha256 = "1km9cvvrip5z8xzaa1r83n7w0kdw21zrxax27qmvnhlnq74s24zb";
    };
  };
  vim-airline-themes = buildVimPlugin {
    name = "vim-airline-themes";
    src = fetchFromGitHub {
      owner = "vim-airline";
      repo = "vim-airline-themes";
      rev = "b218f99b17626fb67eab31dd58b7d1c68917910a";
      sha256 = "1gvkprsiw0mabv3z0dv9i6jpc2l0rwwfawn2davd9y8ngz4d6m94";
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
      rev = "c3d97d070bf9906dda14e9dc78af7ef9c954fac2";
      sha256 = "1qlmigizkh4wfpab8rgm2pji8v2d682nf8a5ykgir30qif2q1nb8";
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
