#!/bin/bash

mkdir -p build
cmake -G Ninja -S . -B build -DCMAKE_PREFIX_PATH=${QT_ROOT_DIR} -DBUILD_EXAMPLE=ON
cmake --build build/
