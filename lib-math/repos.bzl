load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def repos():
    http_archive(
        name = "fftw",
        url = "http://www.fftw.org/fftw-3.3.8.tar.gz",
        sha256 = "6113262f6e92c5bd474f2875fa1b01054c4ad5040f6b0da7c03c98821d9ae303",
        strip_prefix = "fftw-3.3.8",
        build_file = str(Label("//lib-math:fftw.BUILD")),
        )

    http_archive(
        name = "gmp",
        url = "https://gmplib.org/download/gmp/gmp-6.1.2.tar.xz",
        sha256 = "87b565e89a9a684fe4ebeeddb8399dce2599f9c9049854ca8c0dfbdea0e21912",
        build_file = str(Label("//lib-math:gmp.BUILD")),
        strip_prefix = "gmp-6.1.2",
        )

    http_archive(
        name = "mpfr",
        url = "http://www.mpfr.org/mpfr-current/mpfr-4.0.2.tar.xz",
        sha256 = "1d3be708604eae0e42d578ba93b390c2a145f17743a744d8f3f8c2ad5855a38a",
        build_file = str(Label("//lib-math:mpfr.BUILD")),
        strip_prefix = "mpfr-4.0.2",
        )

    http_archive(
        name = "mpc",
        url = "https://ftp.gnu.org/gnu/mpc/mpc-1.1.0.tar.gz",
        sha256 = "6985c538143c1208dcb1ac42cedad6ff52e267b47e5f970183a3e75125b43c2e",
        build_file = str(Label("//lib-math:mpc.BUILD")),
        strip_prefix = "mpc-1.1.0",
        )
