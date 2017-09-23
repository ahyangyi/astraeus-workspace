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
