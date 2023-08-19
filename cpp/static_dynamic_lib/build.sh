#!/bin/bash

#静的ライブラリの作成
g++ -c ./lib/cat.cpp
ar r ./lib/static/libcat.a ./lib/cat.o

#動的ライブラリの作成
g++ -shared ./lib/cat.o -o ./lib/dynamic/libcat.so
#動的ライブラリのパスを通す
export DYLD_LIBRARY_PATH="/Users/mittim/mittim/program/program/cpp/static_dynamic_lib/lib/dynamic"

#静的ライブラリのリンク
g++ main.cpp -L lib/static/ -l cat -o main_static
#動的ライブラリのリンク
g++ main.cpp -L lib/dynamic/ -l cat -o main_dynamic

./main_static
./main_dynamic

