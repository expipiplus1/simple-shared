simple-shared
=============

A simple example of calling a function in a shared library from Haskell

Prerequisites
-------------

To build the C library CMake must be installed.

To build the C library on Windows you'll need to have the Visual Studio compiler installed.

You'll need stack installed to build the Haskell side of things. If you'd rather use cabal then replace `stack build` in `build.{bat,sh}` with `cabal sandbox init; cabal install --extra-lib-dirs=. --extra-include-dirs=.`


Building
--------

Run `build.sh` on a Unix system or `build.bat` on a Windows system.

Running
-------

You can run the executable with `stack exec executable`.

You should expect to see '5' printed.

### Cabal installation

If you built the executable with Cabal it will be located at `executable/.cabal-sandbox/bin/executable[.exe]`

### Finding the shared library

In order to find `libadd.so` on Linux it's sufficient to add the directory containing `libadd.so` to `LD_LIBRARY_PATH`. 

In order to find `add.dll` on Windows it's sufficient for it to be in either the current directory or the same directory as the executable.

Gotchas
-------

There are a number of things which can go wrong when building on Windows.

### .lib file

Make sure that that `add.lib` isn't in the GHC's library search directories. GHC will try to link against this instead of `add.dll` which isn't just an interface.

This will lead to a segmentation fault when running `executable.exe`.

The `RUNTIME` modifier in the `install` command in `CMakeLists.txt` ensures that `add.lib` installed installed.

