#!/bin/bash

# If build directory does not exist, create it
#
if [ ! -d "build" ]; then
  mkdir build
fi

# Build the project for x86_64
#
nasm -f elf64 -o build/main.o src/main.asm

# Link the object file to an executable
#
ld build/main.o -o build/main