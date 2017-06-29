{buildPythonPackage, pkgs}: buildPythonPackage rec {
  name = "pyuv-1.3.0";

  src = pkgs.fetchurl {
    url = "https://github.com/saghul/pyuv/archive/${name}.tar.gz";
    sha256 = "0w15w8hlb4354lddbr86jca4vv1nyhsdxqwf6a20ar7l6qhsxlpf";
  };

  patches = [ ./pyuv-external-libuv.patch ];

  buildInputs = [ pkgs.libuv ];
}
