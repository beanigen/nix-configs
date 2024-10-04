{ pkgs ? import <nixpkgs> {} }:
  pkgs.mkShell {
    buildInputs = [
      pkgs.platformio
      pkgs.avrdude
    ];
  }

