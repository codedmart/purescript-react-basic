let
  pkgs = import <nixpkgs> {};
  stdenv = pkgs.stdenv;
  inputs = [
    pkgs.nodejs-6_x
    pkgs.gmp
    pkgs.zlib.dev
    pkgs.zlib.out
    pkgs.pkgconfig
    pkgs.purescript
    pkgs.psc-package
  ];
in rec {
  reactEnv = stdenv.mkDerivation rec {
    name = "react-ps-basic-env";
    buildInputs = inputs;
    NIX_MYENV_NAME = "react-ps-basic";
    # STACK_YAML="/home/bmartin/Work/lumi/react-ps-basic/stack-nix.yaml";
    shellHook = ''
      source ~/.bash_prompt
    '';
  };
}
