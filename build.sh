#! /bin/bash
pushd src

make distclean
./configure \
    --with-features=huge \
    --enable-python3interp=dynamic
    --enable-multibyte \
    --enable-fontset \
    --disable-gui \
    --disable-netbeans \
    --enable-luainterp=yes \
    --with-lua-prefix=/usr/include/lua5.1 \
    --enable-largefile
make
sudo make install

popd
