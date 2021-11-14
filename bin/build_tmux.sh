#!/bin/bash
set -e

#git clone https://github.com/tmux/tmux.git
./configure LDFLAGS=-Bstatic --prefix=${HOME}/.vim
make -j$(nproc) && make install
