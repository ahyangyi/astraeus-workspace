load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def repos():
    http_archive(
        name = "fftw",
        urls = [
                "http://www.fftw.org/fftw-3.3.6-pl2.tar.gz",
                ],
        sha256 = "a5de35c5c824a78a058ca54278c706cdf3d4abba1c56b63531c2cb05f5d57da2",
        strip_prefix = "fftw-3.3.6-pl2",
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
        url = "http://www.mpfr.org/mpfr-current/mpfr-4.0.1.tar.xz",
        sha256 = "67874a60826303ee2fb6affc6dc0ddd3e749e9bfcb4c8655e3953d0458a6e16e",
        build_file = str(Label("//lib-math:mpfr.BUILD")),
        strip_prefix = "mpfr-4.0.1",
        )

    http_archive(
        name = "mpc",
        url = "https://ftp.gnu.org/gnu/mpc/mpc-1.1.0.tar.gz",
        sha256 = "6985c538143c1208dcb1ac42cedad6ff52e267b47e5f970183a3e75125b43c2e",
        build_file = str(Label("//lib-math:mpc.BUILD")),
        strip_prefix = "mpc-1.1.0",
        )
