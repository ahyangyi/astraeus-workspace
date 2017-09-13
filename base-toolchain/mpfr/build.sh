#!/bin/bash

VERSION=3.1.6

[ -e mpfr-${VERSION}.tar.xz ] || wget http://www.mpfr.org/mpfr-current/mpfr-${VERSION}.tar.xz
tar xfv mpfr-${VERSION}.tar.xz
cd mpfr-${VERSION}
mkdir -p build
cd build
../configure --with-gnu-ld --prefix=${PWD}/../prefix/ --enable-shared=no CFLAGS="${CFLAGS} -fPIC -DPIC" --host=x86_64-unknown-linux
make ${MAKEOPTS} && make check && make install
rm ../prefix/lib/libmpfr.la
