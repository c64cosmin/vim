#! /bin/bash

make distclean
./configure --with-features=huge --enable-python3interp=dynamic
make
sudo make install
