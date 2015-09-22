{ stdenv
, pkgs ? (import <nixpkgs> {})
}:

let
  env = with pkgs; [
    bundler
    ruby_2_2_0
    nodePackages.bower
    imagemagick
    python
    pythonPackages.pygments
  ];
in

stdenv.mkDerivation rec {
    name = "wiki.template";
    src = ./.;
    version = "0.0.0";

    buildInputs = [ env ];

}

