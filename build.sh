#!/usr/bin/env bash

set -x # Echo commands
set -e # Abort on error

# Build the library and install to the executable directory
cd library
mkdir -p build
cd build
cmake ../ -DCMAKE_INSTALL_PREFIX=../../executable -Wno-dev
cmake --build . --target install

# Build the executable
cd ../../executable
stack build

