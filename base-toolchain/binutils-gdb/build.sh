#!/bin/bash

VERSION=2.28.1
export AR_FLAGS=cqD

cd -P "$( dirname "$0" )"
source ${PWD}/../../env/env.sh

LIBPREFIX=${PWD}/../../install-lib/
PREFIX=${PWD}/../../install-package/binutils

[ -e binutils-${VERSION}.tar.xz ] || wget https://ftp.gnu.org/gnu/binutils/binutils-${VERSION}.tar.xz
tar xfv binutils-${VERSION}.tar.xz

mkdir -p build
cd build
../binutils-${VERSION}/configure --target=x86_64-astraeus-linux-gnu --disable-multilib --enable-gold --prefix=${PREFIX} --without-python CFLAGS="${CFLAGS} -fPIC -DPIC" LDFLAGS="" --with-gmp=${LIBPREFIX}/gmp --with-mpc=${LIBPREFIX}/mpc --with-mpfr=${LIBPREFIX}/mpfr --with-isl=${LIBPREFIX}/isl
make ${MAKEOPTS} && make install
