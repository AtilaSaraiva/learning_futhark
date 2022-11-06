# Simple reproducible environment for Futhark programming and my learning journey

To use it simply download and install the [Nix](https://nixos.org/download.html) package manager, and run this:

> $ nix-shell

and you will have access to a subshell with the dependencies detailed in the `shell.nix` file, including furthark.

In the `shell.nix` file I specified the opencl provided for AMD gpus, but you can also add the one for cuda gpus, or maybe another one you might want.
