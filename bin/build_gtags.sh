#!/bin/bash

./configure --enable-static --prefix=${HOME}/.vim
make -j$(nproc) && make install
