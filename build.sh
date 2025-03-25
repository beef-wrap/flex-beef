cmake -S . -B flex/build -DCMAKE_BUILD_TYPE=Debug
cmake --build flex/build --config Debug

cmake -S . -B flex/build -DCMAKE_BUILD_TYPE=Release
cmake --build flex/build --config Release