#!/bin/bash

VERSION=6.1.2
export AR_FLAGS=cqD

cd -P "$( dirname "$0" )"
source ${PWD}/../../env/env.sh

PREFIX=${PWD}/../../install-lib/gmp
mkdir -p ${PREFIX}

[ -e gmp-${VERSION}.tar.xz ] || wget https://gmplib.org/download/gmp/gmp-${VERSION}.tar.xz
tar xfv gmp-${VERSION}.tar.xz
cd gmp-${VERSION}
mkdir -p build
cd build
../configure --with-gnu-ld --prefix=${PREFIX} --enable-shared=no CFLAGS="${CFLAGS} -fPIC -DPIC" --host=x86_64-unknown-linux
make ${MAKEOPTS} && make check install
rm ${PREFIX}/lib/libgmp.la
