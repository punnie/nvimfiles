{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.lua
    pkgs.lua-language-server

    pkgs.nodejs
  ];

  shellHook = ''
    echo "Lua and Lua Language Server are ready to use"
  '';
}
