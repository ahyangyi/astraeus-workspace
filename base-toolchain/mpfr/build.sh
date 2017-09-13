#!/bin/bash

VERSION=3.1.6
export AR_FLAGS=cqD

cd -P "$( dirname "$0" )"
source ${PWD}/../../env/env.sh

LIBPREFIX=${PWD}/../../install-lib
PREFIX=${LIBPREFIX}/mpfr
mkdir -p ${PREFIX}

[ -e mpfr-${VERSION}.tar.xz ] || wget http://www.mpfr.org/mpfr-current/mpfr-${VERSION}.tar.xz
tar xfv mpfr-${VERSION}.tar.xz
cd mpfr-${VERSION}
mkdir -p build
cd build
../configure --with-gnu-ld --prefix=${PREFIX} --enable-shared=no CFLAGS="${CFLAGS} -fPIC -DPIC" --host=x86_64-unknown-linux --with-gmp=${LIBPREFIX}/gmp

make ${MAKEOPTS} && make check install
rm ${PREFIX}/lib/libmpfr.la
