{ sources ? import ./nix/sources.nix }:
with import sources.nixpkgs {
  overlays = [
    (import sources.myNixPythonPackages)
  ];
};

let
  my-python-packages = python-packages: with python-packages; [
    matplotlib
    numpy
    pyopencl
    # other python packages you want
  ];
  python-with-my-packages = python3.withPackages my-python-packages;
in
mkShell {
  buildInputs = [
    python-with-my-packages
    futhark
    opencl-headers
    ocl-icd
    rocm-opencl-runtime
  ];

  shellHooks = ''
    export PYOPENCL_COMPILER_OUTPUT=1
  '';
}
