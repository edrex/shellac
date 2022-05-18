{
  description = "Nix Flake Interactive Shell Utilities";
  outputs = { ... }@inputs: {
    lib = import ./.;
  };
}
