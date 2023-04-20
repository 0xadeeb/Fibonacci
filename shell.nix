{ pkgs ? import <nixpkgs> { } }:
pkgs.mkShell {
  name = "fib-shell";
  packages = [  ];
  shellHook = "";
  buildInputs = [ 
    pkgs.clang-tools
    pkgs.gcc
    pkgs.gnumake
    pkgs.nasm
  ];
}

