{
  description = "Flake utils demo";

  inputs = {
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        overlays = [
        ];

        pkgs = import nixpkgs {
          inherit overlays system;
        };
      in
      {
        templates = {
          python = {
            path = ./templates/python;
            description = "Python template";
          };
          each-system = {
            path = ./templates/each-system;
            description = "Wrapper around numtide/flake-utils#each-system";
          };
          rust = {
            path = ./templates/rust;
            description = "Rust template";
          };
        };
      }
    );
}
