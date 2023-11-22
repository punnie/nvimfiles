{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.lua
    pkgs.lua-language-server
  ];

  shellHook = ''
    echo "Lua and Lua Language Server are ready to use"
  '';
}
