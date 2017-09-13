#!/bin/bash

VERSION=0.16.1
export AR_FLAGS=cqD

cd -P "$( dirname "$0" )"
source ${PWD}/../../env/env.sh

LIBPREFIX=${PWD}/../../install-lib
PREFIX=${LIBPREFIX}/isl
mkdir -p ${PREFIX}

[ -e isl-${VERSION}.tar.bz2 ] || wget ftp://gcc.gnu.org/pub/gcc/infrastructure/isl-${VERSION}.tar.bz2
tar xfv isl-${VERSION}.tar.bz2
cd isl-${VERSION}
mkdir -p build
cd build
../configure --with-gnu-ld --prefix=${PREFIX} --enable-shared=no CFLAGS="${CFLAGS} -fPIC -DPIC" --with-gmp=system --enable-portable-library --host=x86_64-unknown-linux --with-gmp-prefix=${LIBPREFIX}/gmp
make ${MAKEOPTS} && make check install
rm -r ${PREFIX}/lib/{libisl.la,pkgconfig}
