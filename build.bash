#!/bin/bash

# Compiler and flags
CXX=g++
CXXFLAGS="-std=c++17 -Wall"

# Output and source files
OUTPUT="snake"
SRC_FILES="main.cpp "

# Raylib library path
RAYLIB_FLAGS="-lraylib -lGL -lm -lpthread -ldl -lrt -lX11"

# Compile
echo "Compiling $OUTPUT..."
$CXX $CXXFLAGS $SRC_FILES -o $OUTPUT $RAYLIB_FLAGS

# Run
if [ $? -eq 0 ]; then
    echo "Compiled successfully! Running the game..."
    ./$OUTPUT
else
    echo "Compilation failed!"
fi
