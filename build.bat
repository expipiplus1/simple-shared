:: Build the library and install to the executable directory
cd library
mkdir build
cd build
cmake ..\ -DCMAKE_INSTALL_PREFIX=..\..\executable -A"x64" -Wno-dev
cmake --build . --target install

:: Build the executable
cd ..\..\executable
stack build
