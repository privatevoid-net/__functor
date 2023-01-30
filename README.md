# __functor

Usage example:

```nix
{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-parts.url = "github:hercules-ci/flake-parts";
    __functor.url = "github:privatevoid-net/__functor";
  };

  outputs = call: call {
    perSystem = { pkgs, ... }: {
      packages = { inherit (pkgs) hello; };
    };
  };
}
```
