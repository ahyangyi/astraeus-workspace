#!/bin/bash

VERSION=6.1.2

[ -e gmp-${VERSION}.tar.xz ] || wget https://gmplib.org/download/gmp/gmp-${VERSION}.tar.xz
tar xfv gmp-${VERSION}.tar.xz
cd gmp-${VERSION}
mkdir -p build
cd build
../configure --with-gnu-ld --prefix=${PWD}/../prefix/ --enable-shared=no CFLAGS="${CFLAGS} -fPIC -DPIC" --host=x86_64-unknown-linux
make ${MAKEOPTS} && make check install
rm ../prefix/lib/libgmp.la
