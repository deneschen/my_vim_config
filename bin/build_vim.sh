#!/bin/sh
set -e

num_processor=$(getconf _NPROCESSORS_ONLN)

sudo apt install libncurses5-dev libgnome2-dev libgnomeui-dev \
libgtk2.0-dev libatk1.0-dev libbonoboui2-dev \
libcairo2-dev libx11-dev libxpm-dev libxt-dev python-dev \
python3-dev ruby-dev lua5.1 liblua5.1-dev libperl-dev git -y

make clean

./configure \
--with-features=huge \
--enable-multibyte \
--enable-rubyinterp=yes \
--enable-python3interp=yes \
--with-python3-config-dir=$(python3-config --configdir) \
--enable-perlinterp=yes \
--enable-luainterp=yes \
--enable-cscope \
--with-compiledby="$(whoami)" \
--prefix="${HOME}/.vim/" \
--enable-fontset \
--enable-fail-if-missing \
--enable-mzschemeinterp \
--enable-tclinterp \
--enable-pythoninterp \
--with-python-config-dir=/usr/lib/python2.7/config-x86_64-linux-gnu/ \
--disable-gui \
--without-x

make VIMRUNTIMEDIR=${HOME}/.vim/share/vim/vim82 -j${num_processor}
make install
