def repos():
    native.new_http_archive(
        name = "fftw",
        urls = [
                "http://www.fftw.org/fftw-3.3.6-pl2.tar.gz",
                ],
        sha256 = "a5de35c5c824a78a058ca54278c706cdf3d4abba1c56b63531c2cb05f5d57da2",
        strip_prefix = "fftw-3.3.6-pl2",
        build_file = str(Label("//lib-math:fftw.BUILD")),
        )

    native.new_http_archive(
        name = "gmp",
        url = "https://gmplib.org/download/gmp/gmp-6.1.2.tar.xz",
        sha256 = "87b565e89a9a684fe4ebeeddb8399dce2599f9c9049854ca8c0dfbdea0e21912",
        build_file = str(Label("//lib-math:gmp.BUILD")),
        strip_prefix = "gmp-6.1.2",
        )

    native.new_http_archive(
        name = "mpfr",
        url = "http://www.mpfr.org/mpfr-current/mpfr-3.1.6.tar.xz",
        sha256 = "7a62ac1a04408614fccdc506e4844b10cf0ad2c2b1677097f8f35d3a1344a950",
        build_file = str(Label("//lib-math:mpfr.BUILD")),
        strip_prefix = "mpfr-3.1.6",
        )

    native.new_http_archive(
        name = "mpc",
        url = "https://ftp.gnu.org/gnu/mpc/mpc-1.0.3.tar.gz",
        sha256 = "617decc6ea09889fb08ede330917a00b16809b8db88c29c31bfbb49cbf88ecc3",
        build_file = str(Label("//lib-math:mpc.BUILD")),
        strip_prefix = "mpc-1.0.3",
        )
