#!/bin/bash

VERSION=1.0.3

[ -e mpc-${VERSION}.tar.gz ] || wget ftp://ftp.gnu.org/gnu/mpc/mpc-${VERSION}.tar.gz
tar xfv mpc-${VERSION}.tar.gz
cd mpc-${VERSION}
mkdir -p build
cd build
../configure --with-gnu-ld --prefix=${PWD}/../prefix/ --enable-shared=no CFLAGS="${CFLAGS} -fPIC -DPIC" --host=x86_64-unknown-linux
make ${MAKEOPTS} && make check && make install
rm ../prefix/lib/libmpc.la
