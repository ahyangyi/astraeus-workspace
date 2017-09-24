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
