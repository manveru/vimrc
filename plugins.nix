{ pkgs, fetchFromGitHub }:
let buildVimPlugin = pkgs.vimUtils.buildVimPluginFrom2Nix;
in {
  denite-nvim = buildVimPlugin {
    name = "denite-nvim";
    src = fetchFromGitHub {
      owner = "Shougo";
      repo = "denite.nvim";
      rev = "56a9f17df749a4fa0825ec6b7fbb266689f00389";
      sha256 = "0snf4hyljm09ryignr4s3yc2w0pcwa75p3la5s9sgk5n7axzaii1";
    };
  };
  deoplete-nvim = buildVimPlugin {
    name = "deoplete-nvim";
    src = fetchFromGitHub {
      owner = "Shougo";
      repo = "deoplete.nvim";
      rev = "376b0c9bbdd30e51a253319ff63762165f30d41a";
      sha256 = "0r6bwwsl9r40nv02hca1h00wgakmrjqzamz3whf7xnb0vx9p29n9";
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
      rev = "c88a634b9575c5e162e79da154beb628374e4542";
      sha256 = "1k687pdf6gf377fmgg7mylpx9k365hygycsspka9wzpybxlwbmmr";
    };
  };
  vim-gitgutter = buildVimPlugin {
    name = "vim-gitgutter";
    src = fetchFromGitHub {
      owner = "airblade";
      repo = "vim-gitgutter";
      rev = "dcac1f74ee5c26125363dca164463bde6657c838";
      sha256 = "0knkdv0sbdwf4p82g438l7pylwzxfbxcj44np3v15wr97w95wmlv";
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
      rev = "a069da8426ec5b9fc4d9f83c783c999e9d20f7d0";
      sha256 = "0rnbsdr2j7ga0f8ly2rvvdn4kf6jmrmf8lmffhbqqqk25yk47drn";
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
      rev = "bcf3f23dd76f39f3c3b840e3f95772ab46312219";
      sha256 = "003nw27hdb6h4kd04hjz9v6blpi6mbbzb3kqfrjgsaxv62v4wl4b";
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
      rev = "a534baf893f6feb96351a37cfa2a8a013c00997e";
      sha256 = "065h4xcj9h4nbbymx8cirzf0scj1hvzfbj6kc4wk9v4x44fnmh0c";
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
      rev = "251e3e172822c7181cd8bc2b57924de322055027";
      sha256 = "1ic2agrgir7acz2ci0nmgkg11jcx6fdqxjc16qkp2g7b0qgr2r8b";
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
      rev = "0a4904771ee0df76f01146bdcbac5dde4f5a61af";
      sha256 = "09i4ngih8cd3613mhsz0bbpwppbwsx723k7xx9ha6ybnfrmhx1ra";
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
      rev = "3afc475cc64479a406ce73d3333df1f67db3c73f";
      sha256 = "04dijb4hgidypppphcy83bacmfrd9ikyjc761hqq6bl4kc49f5kc";
    };
  };
  vim-bundler = buildVimPlugin {
    name = "vim-bundler";
    src = fetchFromGitHub {
      owner = "tpope";
      repo = "vim-bundler";
      rev = "4ccc0e7c1268eaccadf02542c67cfb1e9dc2fd20";
      sha256 = "0c6hdgkclg36p5j8351yibyyrd25zsnlm9l8i92w78zbqv8mrbhk";
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
      rev = "be2ff98db543990d7e59a90189733d7a779788fd";
      sha256 = "1lkdypibsw2p45wrdcc8ambynszdcwiqyh50zhflf2slpd98iz3m";
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
      rev = "afcda0510ee09697c3a84ff45ba2d767c2aa6263";
      sha256 = "1cffj224ks5wsnhinfagl16a3xbymr5i0cy4ffdk0v6xhs72rlfk";
    };
  };
  vim-airline-themes = buildVimPlugin {
    name = "vim-airline-themes";
    src = fetchFromGitHub {
      owner = "vim-airline";
      repo = "vim-airline-themes";
      rev = "7865fd8ba435edd01ff7b59de06a9be73e01950d";
      sha256 = "0fd4s8y6w5flbrikislcvj2a0jb77rd6gwg207qskxfqncxsbswn";
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
      rev = "0c5368cf01f4d452a05eb5e5569e6fe78dca2657";
      sha256 = "025d0gz0fs3jb062jp7js11b8vb20zyxa32llqsjkyy4gr8kv53b";
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
