#!/bin/bash

VERSION=0.16.1

[ -e isl-${VERSION}.tar.bz2 ] || wget ftp://gcc.gnu.org/pub/gcc/infrastructure/isl-${VERSION}.tar.bz2
tar xfv isl-${VERSION}.tar.bz2
cd isl-${VERSION}
mkdir -p build
cd build
../configure --with-gnu-ld --prefix=${PWD}/../prefix/ --enable-shared=no CFLAGS="${CFLAGS} -fPIC -DPIC" --with-gmp=system --enable-portable-library --host=x86_64-unknown-linux
make ${MAKEOPTS} && make check && make install
rm ../prefix/lib/libisl.la
rm -r ../prefix/lib/pkgconfig
