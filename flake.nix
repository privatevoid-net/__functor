{
  outputs = _: {
    __functor = _: inputs: inputs.flake-parts.lib.mkFlake { inherit inputs; };
  };
}
