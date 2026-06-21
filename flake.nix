{
  description = "osdev";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };
  outputs = { self, nixpkgs, ... }:
  let
    system = "x86_64-linux";
  in
  {
    devShells."${system}".default =
    let
      pkgs = import nixpkgs { inherit system; };
    in
    pkgs.mkShell {
      packages = with pkgs; [
        hello
      ];
    };
  };
}
