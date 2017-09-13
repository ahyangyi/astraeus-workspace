#!/bin/bash

cd -P "$( dirname "$0" )"
source ${PWD}/../../env/env.sh

LIBPREFIX=${PWD}/../../install-lib/
PREFIX=${PWD}/../../install-package/

mkdir -p build
cd build
../binutils-gdb/configure --target=x86_64-astraeus-linux-gnu --disable-multilib --enable-gold --prefix=${PREFIX} --without-python CFLAGS="${CFLAGS} -fPIC -DPIC" LDFLAGS="" --with-gmp=${LIBPREFIX}/gmp --with-mpc=${LIBPREFIX}/mpc --with-mpfr=${LIBPREFIX}/mpfr --with-isl=${LIBPREFIX}/isl
make ${MAKEOPTS} && make install
