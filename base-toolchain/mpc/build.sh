#!/bin/bash

VERSION=1.0.3
export AR_FLAGS=cqD

cd -P "$( dirname "$0" )"
source ${PWD}/../../env/env.sh

LIBPREFIX=${PWD}/../../install-lib
PREFIX=${LIBPREFIX}/mpc
mkdir -p ${PREFIX}

[ -e mpc-${VERSION}.tar.gz ] || wget ftp://ftp.gnu.org/gnu/mpc/mpc-${VERSION}.tar.gz
tar xfv mpc-${VERSION}.tar.gz
cd mpc-${VERSION}
mkdir -p build
cd build
../configure --with-gnu-ld --prefix=${PREFIX} --enable-shared=no CFLAGS="${CFLAGS} -fPIC -DPIC" --host=x86_64-unknown-linux --with-mpfr=${LIBPREFIX}/mpfr --with-gmp=${LIBPREFIX}/gmp
make ${MAKEOPTS} && make check install
rm ${PREFIX}/lib/libmpc.la
