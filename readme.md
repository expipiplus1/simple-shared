simple-shared
=============

A simple example of calling a function in a shared library from Haskell

Building
--------

Run `build.sh` on a Unix system or `build.bat` on a Windows system.

Running
-------

The executable is located at executable/.cabal-sandbox/bin/executable[.exe]

It should be run from executable/ or wherever you installed the shared library to.

In order to find `libadd.so` on Linux it's necessary to add the directory containing libadd.so to LD_LIBRARY_PATH

You should expect to see '5' printed
