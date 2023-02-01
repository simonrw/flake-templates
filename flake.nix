{
  description = "Flake utils demo";

  outputs = { self, nixpkgs }:
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
    };
}
