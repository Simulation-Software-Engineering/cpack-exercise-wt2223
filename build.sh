#!/bin/bash

#create build folder

mkdir -p build/
cd build/

#run cmake to generate Makefile
cmake -DBUILD_SHARED_LIBS=ON -DCMAKE_BUILD_TYPE=Release ..

#make Debian package and TGZ
make package 

#copy package to output dir with user's permissions


