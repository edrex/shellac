{
  description = "Nix Flake Interactive Shell Utilities";
  inputs = {
    flake-utils.url = "github:numtide/flake-utils";
  };
  outputs = { self, nixpkgs, flake-utils, ... }@inputs:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
        shellPkgs = [ pkgs.tydra ];
      in rec {
        lib = (import ./. {inherit pkgs;});
        devShell = pkgs.mkShell { packages = shellPkgs; };
    });
}
