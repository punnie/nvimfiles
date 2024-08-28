{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  nativeBuildInputs = with pkgs; [
    autoconf
    automake
    clang
    cmake
    gcc
    libtool
    makeWrapper
    pkg-config
  ];

  buildInputs = with pkgs; [
    lua
    lua-language-server

    nodejs

    clang
  ];

  shellHook = ''
    echo "Lua and Lua Language Server are ready to use"
  '';
}
